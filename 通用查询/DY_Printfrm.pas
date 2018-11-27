unit DY_Printfrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, OleServer, grproLib_TLB, cxGridDBTableView, cxCustomData, ADODB, DB,
  OleCtrls, grdesLib_TLB;
type
  TPrint_frm = class(TForm)
    grdprprtResult: TGridppReport;
    grdsgnrResult: TGRDesigner;
    procedure grdsgnrResultSaveReport(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    fCaption: string;
    fTableName: string;
    fModel: Integer;
    fTableIndex: Integer; //打印报表的INDEX
    fGrid: TcxGridDBTableView;
    function LoadReportFromDataField(fIndex: Integer): Boolean;
    function SaveReportToDataField: Boolean;
    procedure PrepareReportData;
    procedure ReportPrepare; //准备打印
    procedure loadTitle;
    procedure LoadGridData; //
  public
    { Public declarations }
  end;

procedure PrintGrid(vCaption, sTable: string; Grid1: TcxGridDBTableView; lTableIndex, lMode1: Integer);
//lMode1是打印类型1:是打印预览 2:是打印设置 3:直接打印报表
implementation
uses DY_PublicUnit;
{$R *.dfm}

procedure PrintGrid(vCaption, sTable: string; Grid1: TcxGridDBTableView; lTableIndex, lMode1: Integer);
var
  Print_frm: TPrint_frm;
begin
  Print_frm := TPrint_frm.Create(Application);
  with Print_frm do
  begin
    fCaption := vCaption;
    fGrid := Grid1;
    fTableName := sTable;
    fModel := lMode1;
    fTableIndex := lTableIndex;
    PrepareReportData;
    Free;
  end;
end;

function TPrint_frm.SaveReportToDataField: Boolean;
var
  sSql: string;
  ADOSetTmp: TADODataSet;
begin
  ADOSetTmp := TADODataSet.Create(self);
  ADOSetTmp.LockType := ltOptimistic;
  sSql := 'select * from sys_tycx_sql where [ID]=' + intTostr(fTableIndex);
  openDataSet(ADOSetTmp, sSql);
  Result := False;
  if not ADOSetTmp.IsEmpty then
  begin
    ADOSetTmp.Edit;
    grdprprtResult.SaveToBlobField(TBlobField(ADOSetTmp.FieldByName('bblr')));
    Result := True;
    SaveDataSet(ADOSetTmp, False);
  end;
  ADOSetTmp.Close;
  ADOSetTmp.Free;
end;

function TPrint_frm.LoadReportFromDataField(fIndex: Integer): Boolean;
var
  sSql: string;
  ADOSetTmp: TADODataSet;
begin
  ADOSetTmp := TADODataSet.Create(self);
  ADOSetTmp.LockType := ltReadOnly;
  sSql := 'select bblr from sys_tycx_sql where [ID]=' + intTostr(fTableIndex);
  openDataSet(ADOSetTmp, sSql);
  Result := False;
  if not ADOSetTmp.IsEmpty then
  begin
    if not ADOSetTmp.FieldByName('bblr').IsNull then
    begin
      grdprprtResult.LoadFromBlobField(TBlobField(ADOSetTmp.FieldByName('bblr')));
      Result := True;
    end else
      Result := False;
  end;
  ADOSetTmp.Close;
  ADOSetTmp.Free;
end;

procedure TPrint_frm.PrepareReportData;
begin
  ReportPrepare;
  case fModel of
    1: begin
        if not LoadReportFromDataField(fTableIndex) then
        begin
          loadTitle;
          LoadGridData;
          grdprprtResult.PrintPreview(True);
        end else
          grdprprtResult.PrintPreview(True);
      end;
    2: begin
        if not LoadReportFromDataField(fTableIndex) then
        begin
          loadTitle;
          LoadGridData;
          if SaveReportToDataField then
          begin
            grdsgnrResult.DefaultInterface.Report := grdprprtResult.DefaultInterface;
            grdsgnrResult.Show;
            Self.Caption := fCaption + '_设计窗口';
            Self.ShowModal;
          end;
        end else
        begin
          grdsgnrResult.DefaultInterface.Report := grdprprtResult.DefaultInterface;
          grdsgnrResult.Show;
          Self.Caption := fCaption + '_设计窗口';
          Self.ShowModal;
        end;
      end;
    3: begin
        if not LoadReportFromDataField(fTableIndex) then
        begin
          loadTitle;
          LoadGridData;
          if SaveReportToDataField then
            grdprprtResult.Print(True);
        end else
          grdprprtResult.Print(True);
      end;
  end;
end;

procedure TPrint_frm.ReportPrepare;
begin
  grdprprtResult.Font.Point := 9;
  grdprprtResult.Title := fCaption;
  grdprprtResult.DataSet := fGrid.DataController.DataSet;
end;

procedure TPrint_frm.loadTitle;
var
  page: IGRReportHeader;
  vText: IGRStaticBox;
begin
  page := grdprprtResult.InsertReportHeader;
  page.Height := 0.8;
  page.Name := 'MainTitle';
  vText := page.Controls.Add(grctStaticBox).AsStaticBox;
  vText.Text := fCaption;
  vText.Height := 0.7;
  vText.Width := Length(fCaption) * 0.25;
  vText.Font.Bold := True;
  vText.Font.Point := 12;
  vText.Font.Name := '楷体_GB2312';
  vText.Center := grcsHorizontal;
end;

procedure TPrint_frm.LoadGridData;
var
  sCaption, sFiledName, sFiledType: string;
  i: Integer;
  RecordSet: IGRRecordset;
  vWidth: Real;
  cColumn: IGRColumn;
  vPageFoot: IGRReportFooter;
  SummaryBox: IGRSummaryBox;
  vCheckFoot: Boolean;
  vText: IGRStaticBox;
  vGRDetailGrid:IGRDetailGrid;
begin
  vGRDetailGrid :=grdprprtResult.InsertDetailGrid;
  vGRDetailGrid.PrintAdaptMethod :=$00000006;
  vPageFoot := grdprprtResult.InsertReportFooter;
  RecordSet := grdprprtResult.DetailGrid.Recordset;
  vCheckFoot := False;
  for I := 0 to fGrid.ColumnCount - 1 do
  begin
    sCaption := fGrid.Columns[i].Caption;
    sFiledName := fGrid.Columns[i].DataBinding.FieldName;
    sFiledType := GetFieldType(fTableName, sFiledName);
    vWidth := fGrid.Columns[i].Width * 0.1;
    if sFiledType='Money' then
       RecordSet.AddField(sFiledName, grftCurrency).Format := '$#,##0.00';
    if sFiledType='Float' then
       RecordSet.AddField(sFiledName, grftFloat).Format := '#,##0.##';

    if sFiledType = 'Int' then
      RecordSet.AddField(sFiledName, grftInteger);
    if sFiledType = 'Str' then
      RecordSet.AddField(sFiledName, grftString);
    if sFiledType = 'Date' then
      RecordSet.AddField(sFiledName, grftDateTime).Format := 'yyyy年MM月dd日';
    if sFiledType = 'Bool' then
      RecordSet.AddField(sFiledName, grftBoolean);
    if sFiledType = 'Unk' then
      RecordSet.AddField(sFiledName, grftString);
    if sFiledType = 'Text' then
      RecordSet.AddField(sFiledName, grftString);
    cColumn := grdprprtResult.DetailGrid.AddColumn(sFiledName, sCaption, sFiledName, 2);
    if sFiledType = 'Str' then
    begin
      cColumn.ContentCell.WordWrap := True;
      cColumn.ContentCell.CanGrow := True;
    end;
    if fGrid.Columns[i].Summary.FooterKind = skSum then
    begin
      vCheckFoot := True;
      SummaryBox := vPageFoot.Controls.Add(grctSummaryBox).AsSummaryBox;
      SummaryBox.SummaryFun := grsfSum;
      SummaryBox.DataField := sFiledName;
      SummaryBox.Format := '#,##0.00';
      SummaryBox.AlignColumn := sFiledName;
    end;
  end;
  if vCheckFoot then
  begin
    vText := vPageFoot.Controls.Add(grctStaticBox).AsStaticBox;
    vText.Text := '合计';
    vText.Left := 1;
  end;
end;

procedure TPrint_frm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if grdsgnrResult.Dirty then
    if Application.MessageBox(Pchar('报表已更改是否保存？'), '提示', mb_OKCancel) = IDOk then
    begin
      grdsgnrResult.DefaultAction := False;
      grdsgnrResult.Post;
      if SaveReportToDataField then
        ShowMessage('保存成功。');
    end;
end;

procedure TPrint_frm.grdsgnrResultSaveReport(Sender: TObject);
begin
  grdsgnrResult.DefaultAction := False;
  grdsgnrResult.Post;
  if SaveReportToDataField then
    ShowMessage('保存成功。');
end;

end.

