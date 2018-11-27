unit P_LCLJSJ;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxClasses,
  cxControls, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, ADODB, StdCtrls, cxContainer, cxLabel, ToolWin,
  ImgList, ActnList, cxGridBandedTableView;

type
  TFrm_LCLJSJ = class(TForm)
    statLJSJ: TStatusBar;
    pnl2: TPanel;
    spl1: TSplitter;
    pnl3: TPanel;
    cxgrdbtblvwLCLJ: TcxGridDBTableView;
    cxgrdlvlGrid1Level1: TcxGridLevel;
    cxgrd1: TcxGrid;
    qryLJ: TADOQuery;
    dsLJ: TDataSource;
    cxgrdbclmnGrid1DBTableView1BM: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1MC: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1BLFX: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1SYBQ: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1SYXB: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1SYNL: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1FL: TcxGridDBColumn;
    cxstylrpstryLJ: TcxStyleRepository;
    GridTableViewStyleSheetDevExpress: TcxGridTableViewStyleSheet;
    cxstyl5: TcxStyle;
    cxstyl7: TcxStyle;
    pnl4: TPanel;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    cxLabelKS: TcxLabel;
    cxLabelBZ: TcxLabel;
    pnlLCBB: TPanel;
    img1: TImage;
    pnl6: TPanel;
    img2: TImage;
    lbl5: TLabel;
    cbbLCBB: TComboBox;
    imgLCBB: TImage;
    lbl4: TLabel;
    lbl6: TLabel;
    clbr1: TCoolBar;
    tlb1: TToolBar;
    btnADD: TToolButton;
    il1: TImageList;
    actlst1: TActionList;
    actADD: TAction;
    actEdit: TAction;
    actDel: TAction;
    actDesign: TAction;
    actCheck: TAction;
    actCancelCheck: TAction;
    actStop: TAction;
    actCancelStop: TAction;
    actDicit: TAction;
    actExit: TAction;
    btnEdit: TToolButton;
    btnDel: TToolButton;
    btn5: TToolButton;
    btnDesign: TToolButton;
    btnDicit: TToolButton;
    btn6: TToolButton;
    btnCheck: TToolButton;
    btnCancelCheck: TToolButton;
    btn7: TToolButton;
    btnStop: TToolButton;
    btnCancelStop: TToolButton;
    btn8: TToolButton;
    btnExit: TToolButton;
    cxgrdLCLJMX: TcxGrid;
    cxgrdbndtblvwLCLJMX: TcxGridBandedTableView;
    cxGridLevel1: TcxGridLevel;
    cxstylrpstry1: TcxStyleRepository;
    cxstyl1: TcxStyle;
    cxstyl2: TcxStyle;
    cxstyl3: TcxStyle;
    cxstyl4: TcxStyle;
    cxstyl43: TcxStyle;
    cxstyl6: TcxStyle;
    cxstyl44: TcxStyle;
    cxstyl8: TcxStyle;
    cxstyl9: TcxStyle;
    cxstyl10: TcxStyle;
    cxstyl11: TcxStyle;
    cxstyl12: TcxStyle;
    cxstyl13: TcxStyle;
    cxstyl14: TcxStyle;
    cxstyl15: TcxStyle;
    cxstyl16: TcxStyle;
    cxstyl17: TcxStyle;
    cxstyl18: TcxStyle;
    cxstyl19: TcxStyle;
    cxstyl20: TcxStyle;
    cxstyl21: TcxStyle;
    cxstyl22: TcxStyle;
    cxstyl23: TcxStyle;
    cxstyl24: TcxStyle;
    cxstyl25: TcxStyle;
    cxstyl26: TcxStyle;
    cxstyl27: TcxStyle;
    cxstyl28: TcxStyle;
    cxstyl29: TcxStyle;
    cxstyl30: TcxStyle;
    cxstyl31: TcxStyle;
    cxstyl32: TcxStyle;
    cxstyl33: TcxStyle;
    cxstyl34: TcxStyle;
    cxstyl35: TcxStyle;
    cxstyl36: TcxStyle;
    cxstyl37: TcxStyle;
    cxstyl38: TcxStyle;
    cxstyl39: TcxStyle;
    cxstyl40: TcxStyle;
    cxstyl41: TcxStyle;
    cxstyl42: TcxStyle;
    cxgrdbndtblvwstylshtDefault: TcxGridBandedTableViewStyleSheet;
    cxstyl45: TcxStyle;
    cxstyl46: TcxStyle;
    cxstyl47: TcxStyle;
    cxstyl48: TcxStyle;
    cxstyl49: TcxStyle;
    cxstyl50: TcxStyle;
    cxstyl51: TcxStyle;
    cxstyl52: TcxStyle;
    cxstyl53: TcxStyle;
    cxstyl54: TcxStyle;
    cxstyl55: TcxStyle;
    cxgrdbndtblvwstylshtAudit: TcxGridBandedTableViewStyleSheet;
    cxstyl56: TcxStyle;
    cxstyl57: TcxStyle;
    cxstyl58: TcxStyle;
    cxstyl59: TcxStyle;
    cxstyl60: TcxStyle;
    cxstyl61: TcxStyle;
    cxstyl62: TcxStyle;
    cxstyl63: TcxStyle;
    cxstyl64: TcxStyle;
    cxstyl65: TcxStyle;
    cxstyl66: TcxStyle;
    cxstyl67: TcxStyle;
    spCheck: TADOStoredProc;
    spStop: TADOStoredProc;
    cxgrdbndtblvwstylshtStop: TcxGridBandedTableViewStyleSheet;
    cxstyl68: TcxStyle;
    cxstyl69: TcxStyle;
    cxstyl70: TcxStyle;
    cxstyl71: TcxStyle;
    cxstyl72: TcxStyle;
    cxstyl73: TcxStyle;
    cxstyl74: TcxStyle;
    cxstyl75: TcxStyle;
    cxstyl76: TcxStyle;
    cxstyl77: TcxStyle;
    cxstyl78: TcxStyle;
    cxstyl79: TcxStyle;
    spdelete: TADOStoredProc;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    qry_jczx: TADOQuery;
    qry_bycx: TADOQuery;
    procedure FormShow(Sender: TObject);
    procedure cxgrdbclmnGrid1DBTableView1SYXBGetDataText(
      Sender: TcxCustomGridTableItem; ARecordIndex: Integer; var AText: string);
    procedure qryLJAfterScroll(DataSet: TDataSet);
    procedure cxgrdbtblvwLCLJFocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure FormResize(Sender: TObject);
    procedure spl1Moved(Sender: TObject);
    procedure actADDExecute(Sender: TObject);
    procedure actEditExecute(Sender: TObject);
    procedure actDelExecute(Sender: TObject);
    procedure actDesignExecute(Sender: TObject);
    procedure actDicitExecute(Sender: TObject);
    procedure actExitExecute(Sender: TObject);
    procedure actCheckExecute(Sender: TObject);
    procedure actCancelCheckExecute(Sender: TObject);
    procedure actStopExecute(Sender: TObject);
    procedure actCancelStopExecute(Sender: TObject);
    procedure qryLJAfterOpen(DataSet: TDataSet);
    procedure cbbLCBBChange(Sender: TObject);
    procedure ShowMXData(LJID: string; BBH: Integer;vwl:TcxGridBandedTableView);
    procedure ShowMXData_rq(LJID: string; BBH: Integer;vwl:TcxGridBandedTableView;
                            rq,zyh:string;tfrm:TForm);
    procedure ShowPathDetails(PathID: string; PathVersion: Integer;
                            vwl:TcxGridBandedTableView;
                            Date,zyh:string;tfrm:TForm);
  private
    { Private declarations }
    function GetKSMC(LJID: string): string;
    function GetBZMC(LJID: string): string;
    function ChkLock(LJID: string): Boolean;
    procedure SetBBH(LJID: string);
    procedure ShowData;
    procedure SetAuditStyle;
    procedure SetDefaultStyle;
    procedure SetStopStyle;
    procedure SetShowStyle;
  public
    { Public declarations }
  end;

procedure LCLJGL;
var
  arrFL: array[0..2] of string = ('诊疗','医嘱','护理');
implementation
uses p_dm, P_LCLJXBJ, P_LCLJSJMX, P_LCLJZDGL, P_Public;
{$R *.dfm}

procedure LCLJGL;
var
  Frm_LCLJSJ: TFrm_LCLJSJ;
begin
  Frm_LCLJSJ := TFrm_LCLJSJ.Create(Application);
  with Frm_LCLJSJ do
  begin
    ShowData;
    ShowModal;
    Free;
  end;
end;

procedure TFrm_LCLJSJ.SetStopStyle;
begin
  with cxgrdbndtblvwLCLJMX.Styles do
  begin
    Background := cxgrdbndtblvwstylshtStop.Styles.Background;
    Content := cxgrdbndtblvwstylshtStop.Styles.Content;
    ContentEven := cxgrdbndtblvwstylshtStop.Styles.ContentEven;
    ContentOdd := cxgrdbndtblvwstylshtStop.Styles.ContentOdd;
    Footer := cxgrdbndtblvwstylshtStop.Styles.Footer;
    FilterBox := cxgrdbndtblvwstylshtStop.Styles.FilterBox;
    Group := cxgrdbndtblvwstylshtStop.Styles.Group;
    GroupByBox := cxgrdbndtblvwstylshtStop.Styles.GroupByBox;
    Header := cxgrdbndtblvwstylshtStop.Styles.Header;
    Indicator := cxgrdbndtblvwstylshtStop.Styles.Indicator;
    Inactive := cxgrdbndtblvwstylshtStop.Styles.Inactive;
    IncSearch := cxgrdbndtblvwstylshtStop.Styles.IncSearch;
    Selection := cxgrdbndtblvwstylshtStop.Styles.Selection;
    Preview := cxgrdbndtblvwstylshtStop.Styles.Preview;
    StyleSheet := cxgrdbndtblvwstylshtStop;
    BandHeader := cxgrdbndtblvwstylshtStop.Styles.BandHeader;
  end;

end;

procedure TFrm_LCLJSJ.SetAuditStyle;
begin
  with cxgrdbndtblvwLCLJMX.Styles do
  begin
    Background := cxgrdbndtblvwstylshtAudit.Styles.Background;
    Content := cxgrdbndtblvwstylshtAudit.Styles.Content;
    ContentEven := cxgrdbndtblvwstylshtAudit.Styles.ContentEven;
    ContentOdd := cxgrdbndtblvwstylshtAudit.Styles.ContentOdd;
    Footer := cxgrdbndtblvwstylshtAudit.Styles.Footer;
    FilterBox := cxgrdbndtblvwstylshtAudit.Styles.FilterBox;
    Group := cxgrdbndtblvwstylshtAudit.Styles.Group;
    GroupByBox := cxgrdbndtblvwstylshtAudit.Styles.GroupByBox;
    Header := cxgrdbndtblvwstylshtAudit.Styles.Header;
    Indicator := cxgrdbndtblvwstylshtAudit.Styles.Indicator;
    Inactive := cxgrdbndtblvwstylshtAudit.Styles.Inactive;
    IncSearch := cxgrdbndtblvwstylshtAudit.Styles.IncSearch;
    Selection := cxgrdbndtblvwstylshtAudit.Styles.Selection;
    Preview := cxgrdbndtblvwstylshtAudit.Styles.Preview;
    StyleSheet := cxgrdbndtblvwstylshtAudit;
    BandHeader := cxgrdbndtblvwstylshtAudit.Styles.BandHeader;
  end;

end;

procedure TFrm_LCLJSJ.SetDefaultStyle;
begin
  with cxgrdbndtblvwLCLJMX.Styles do
  begin
    Background := cxgrdbndtblvwstylshtDefault.Styles.Background;
    Content := cxgrdbndtblvwstylshtDefault.Styles.Content;
    ContentEven := cxgrdbndtblvwstylshtDefault.Styles.ContentEven;
    ContentOdd := cxgrdbndtblvwstylshtDefault.Styles.ContentOdd;
    Footer := cxgrdbndtblvwstylshtDefault.Styles.Footer;
    FilterBox := cxgrdbndtblvwstylshtDefault.Styles.FilterBox;
    Group := cxgrdbndtblvwstylshtDefault.Styles.Group;
    GroupByBox := cxgrdbndtblvwstylshtDefault.Styles.GroupByBox;
    Header := cxgrdbndtblvwstylshtDefault.Styles.Header;
    Indicator := cxgrdbndtblvwstylshtDefault.Styles.Indicator;
    Inactive := cxgrdbndtblvwstylshtDefault.Styles.Inactive;
    IncSearch := cxgrdbndtblvwstylshtDefault.Styles.IncSearch;
    Selection := cxgrdbndtblvwstylshtDefault.Styles.Selection;
    Preview := cxgrdbndtblvwstylshtDefault.Styles.Preview;
    StyleSheet := cxgrdbndtblvwstylshtDefault;
    BandHeader := cxgrdbndtblvwstylshtDefault.Styles.BandHeader;
  end;
end;

procedure TFrm_LCLJSJ.SetShowStyle;
var
  sSql, vLJID: string;
  vCheck: Boolean;
  vBBH: Integer;
begin
  if qryLJ.FieldByName('LJID').IsNull then Exit;
  vLJID := qryLJ.FieldByName('LJID').AsString;
  if cbbLCBB.ItemIndex = -1 then Exit;
  vBBH := Integer(cbbLCBB.Items.Objects[cbbLCBB.ItemIndex]);
  sSql := 'Select * from LCLJ_LCLJBB where  ISNULL(SHSJ,0)<>0 and LJID=' + #39 + vLJID + #39 + ' and BBH=' + intTostr(vBBH);
  with dm_data.Qry_pub do
  begin
    vCheck := False;
    close;
    SQL.Clear;
    SQL.Add(sSql);
    Open;
    if IsEmpty then
    begin
      SetDefaultStyle;
      actCancelCheck.Enabled := False;
      actCheck.Enabled := True;
    end
    else
    begin
      SetAuditStyle;
      actCancelCheck.Enabled := True;
      actCheck.Enabled := False;
      vCheck := True;
    end;

    close;
    sSql := 'Select * from LCLJ_LCLJBB where  ISNULL(TYSJ,0)<>0 and LJID=' + #39 + vLJID + #39 + ' and BBH=' + intTostr(vBBH);
    SQL.Clear;
    SQL.Add(sSql);
    Open;
    actStop.Enabled := False;
    actCancelStop.Enabled := False;
    if IsEmpty then
    begin
      if vCheck then
        actStop.Enabled := True;
    end else
    begin
      SetStopStyle;
      actCancelStop.Enabled := True;
    end;
    Close;
  end;
end;

procedure TFrm_LCLJSJ.actCancelCheckExecute(Sender: TObject);
var
  vError: string;
  vBBH: Integer;
begin
  try
    if cbbLCBB.ItemIndex = -1 then Exit;
    if not qryLJ.FieldByName('LJID').IsNull then
    begin
      vBBH := Integer(cbbLCBB.Items.Objects[cbbLCBB.ItemIndex]);
      spCheck.Parameters.ParamByName('@LJID').Value := qryLJ.FieldByName('LJID').AsString;
      spCheck.Parameters.ParamByName('@BBH').Value := vBBH;
      spCheck.Parameters.ParamByName('@SHR').Value := pub_czyxm;
      spCheck.Parameters.ParamByName('@SH').Value := -1;
      spCheck.ExecProc;
      vError := spCheck.Parameters.ParamByName('@SCZT').Value;
      if vError <> '0' then
        raise Exception.Create('')
      else
        SetShowStyle;
    end;
  except on E: Exception do
    begin
      if (vError <> '0') and (vError <> '') then
        Application.MessageBox(Pchar('系统错误,错误信息为' + vError), '提示', mb_OK)
      else
        Application.MessageBox(Pchar('系统错误,错误信息为' + E.Message), '提示', mb_OK);
    end;
  end;
end;

procedure TFrm_LCLJSJ.actCancelStopExecute(Sender: TObject);
var
  vError: string;
  vBBH: Integer;
begin
  try
    if cbbLCBB.ItemIndex = -1 then Exit;
    if not qryLJ.FieldByName('LJID').IsNull then
    begin
      vBBH := Integer(cbbLCBB.Items.Objects[cbbLCBB.ItemIndex]);
      spStop.Parameters.ParamByName('@LJID').Value := qryLJ.FieldByName('LJID').AsString;
      spStop.Parameters.ParamByName('@BBH').Value := vBBH;
      spStop.Parameters.ParamByName('@TYR').Value := pub_czyxm;
      spStop.Parameters.ParamByName('@TY').Value := -1;
      spStop.ExecProc;
      vError := spStop.Parameters.ParamByName('@SCZT').Value;
      if vError <> '0' then
        raise Exception.Create('')
      else
        SetShowStyle;
    end;
  except on E: Exception do
    begin
      Application.MessageBox(Pchar('系统错误,错误信息为' + vError), '提示', mb_OK);
    end;
  end;
end;

procedure TFrm_LCLJSJ.actCheckExecute(Sender: TObject);
var
  vError: string;
  vBBH: Integer;
begin
  try
    if cbbLCBB.ItemIndex = -1 then Exit;
    if not qryLJ.FieldByName('LJID').IsNull then
    begin
      vBBH := Integer(cbbLCBB.Items.Objects[cbbLCBB.ItemIndex]);
      spCheck.Parameters.ParamByName('@LJID').Value := qryLJ.FieldByName('LJID').AsString;
      spCheck.Parameters.ParamByName('@BBH').Value := vBBH;
      spCheck.Parameters.ParamByName('@SHR').Value := pub_czyxm;
      spCheck.Parameters.ParamByName('@SH').Value := 1;
      spCheck.ExecProc;
      vError := spCheck.Parameters.ParamByName('@SCZT').Value;
      if vError <> '0' then
        raise Exception.Create('')
      else
        SetShowStyle;
    end;
  except on E: Exception do
    begin
      Application.MessageBox(Pchar('系统错误,错误信息为' + vError), '提示', mb_OK);
    end;
  end;
end;

procedure TFrm_LCLJSJ.actDelExecute(Sender: TObject);
var
  vError: string;
begin
  if Application.MessageBox('确定删除当前路径的所有版本吗？', '提示', MB_YESNO
    + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES then
  begin
    try
      spdelete.Parameters.ParamByName('@LJID').Value := qryLJ.FieldByName('LJID').AsString;
      spdelete.ExecProc;
      vError := spdelete.Parameters.ParamByName('@SCZT').Value;
      if vError <> '0' then
        raise Exception.Create('')
      else
      begin
        ShowData;
      end;
    except on E: Exception do
      begin
        Application.MessageBox(Pchar('系统错误,错误信息为"' + vError + '"'), '提示', mb_OK);
      end;
    end;

  end;

end;

procedure TFrm_LCLJSJ.actDesignExecute(Sender: TObject);
var
  vBBH, I: Integer;
begin
  if not qryLJ.FieldByName('MC').IsNull then
  begin
    if ChkLock(qryLJ.FieldByName('LJID').AsString) then
    begin
      Application.MessageBox('当前路径正在设计状态不能进入！', '提示', MB_OK +
        MB_ICONINFORMATION);
      Exit;
    end;
    vBBH := GetZXBBH(qryLJ.FieldByName('LJID').AsString);
    LCLJSJMX(qryLJ.FieldByName('LJID').AsString, qryLJ.FieldByName('MC').AsString, vBBH);
    SetBBH(qryLJ.FieldByName('LJID').AsString);
    if vBBH<>-1 then
    if SetZXBBH(qryLJ.FieldByName('LJID').AsString, vBBH) then
    begin
      cbbLCBB.OnChange := nil;
      for I := 0 to cbbLCBB.Items.Count - 1 do
      begin
        if Integer(cbbLCBB.Items.Objects[i]) = vBBH then
        begin
          cbbLCBB.ItemIndex := i;
          Break;
        end;
      end;
      cbbLCBB.OnChange := cbbLCBBChange;
    end;
    cbbLCBBChange(Self);
  end;
end;

procedure TFrm_LCLJSJ.actDicitExecute(Sender: TObject);
begin
  ZDGL;
end;

procedure TFrm_LCLJSJ.actEditExecute(Sender: TObject);
begin
  if not qryLJ.FieldByName('LJID').IsNull then
    if qryLJ.FieldByName('FL').IsNull then
      fun_LCLJBJ(2, '', qryLJ)
    else
      fun_LCLJBJ(2, qryLJ.FieldByName('FL').AsString, qryLJ);
  ShowData;
end;

procedure TFrm_LCLJSJ.actExitExecute(Sender: TObject);
begin
  Close;
end;

procedure TFrm_LCLJSJ.actStopExecute(Sender: TObject);
var
  vError: string;
  vBBH: Integer;
begin
  try
    if cbbLCBB.ItemIndex = -1 then Exit;
    if not qryLJ.FieldByName('LJID').IsNull then
    begin
      vBBH := Integer(cbbLCBB.Items.Objects[cbbLCBB.ItemIndex]);
      spStop.Parameters.ParamByName('@LJID').Value := qryLJ.FieldByName('LJID').AsString;
      spStop.Parameters.ParamByName('@BBH').Value := vBBH;
      spStop.Parameters.ParamByName('@TYR').Value := pub_czyxm;
      spStop.Parameters.ParamByName('@TY').Value := 1;
      spStop.ExecProc;
      vError := spStop.Parameters.ParamByName('@SCZT').Value;
      if vError <> '0' then
        raise Exception.Create('')
      else
        SetShowStyle;
    end;
  except on E: Exception do
    begin
      Application.MessageBox(Pchar('系统错误,错误信息为' + vError), '提示', mb_OK);
    end;
  end;
end;

procedure TFrm_LCLJSJ.cbbLCBBChange(Sender: TObject);
var
  vBBH: integer;
begin
  if cbbLCBB.ItemIndex = -1 then
    vBBH := -1
  else
    vBBH := Integer(cbbLCBB.Items.Objects[cbbLCBB.ItemIndex]);
  ShowMXData(qryLJ.FieldByName('LJID').AsString, vBBH,cxgrdbndtblvwLCLJMX);
  SetShowStyle;
end;

function TFrm_LCLJSJ.ChkLock(LJID: string): Boolean;
begin
  with dm_data.Qry_pub do
  begin
    close;
    SQL.Text := 'select * from LCLJ_LCLJML where BJBZ=1 and LJID=' + #39 + LJID + #39;
    Open;
    if RecordCount > 0 then
      Result := True
    else
      Result := False;
    Close;
  end;
end;

procedure TFrm_LCLJSJ.cxgrdbclmnGrid1DBTableView1SYXBGetDataText(
  Sender: TcxCustomGridTableItem; ARecordIndex: Integer; var AText: string);
begin
  if cxgrdbtblvwLCLJ.DataController.Values[ARecordIndex, 5] = 0 then
    AText := '不区分性别';
  if cxgrdbtblvwLCLJ.DataController.Values[ARecordIndex, 5] = 1 then
    AText := '男性';
  if cxgrdbtblvwLCLJ.DataController.Values[ARecordIndex, 5] = 2 then
    AText := '女性';

end;

procedure TFrm_LCLJSJ.ShowMXData(LJID: string; BBH: Integer;vwl:TcxGridBandedTableView);
var
  sSql, FLName, vJDID, vJDName, vCaption: string;
  i, k, vXH: Integer;
  RecordIndex: Integer;
  qryLCLJJD: TADOQuery;
begin
  try
   //清除数据
    for I := 0 to vwl.ViewData.RecordCount - 1 do
      vwl.DataController.DeleteRecord(0);
    vwl.Bands.Clear;
    vwl.ClearItems;
    if BBH = -1 then Exit;

   //----
    AddHiddenColum(vwl); //增加一不可见列用于保存项目序号
    AddCustomerBand(vwl, '时间阶段', '', '', -1, True, False);
     //增加分类信息
    sSql := 'select A.XH,A.MC as FL,isnull(num,1)as num  from LCLJ_LCLJFL A,' +
      '(select MAX(xmxh) num,FL from LCLJ_LCLJXM where LJID=' + #39 + LJID + #39 +
      ' and BBH=' + intTostr(BBH) + ' group by FL) B ' +
      ' where A.MC*=B.FL and A.LJID=' + #39 + LJID + #39 + ' and A.BBH=' + intTostr(BBH) +
      ' order by A.XH';
    with dm_data.Qry_pub do
    begin
      Filtered := False;
      close;
      SQL.Clear;
      SQL.Add(sSql);
      Open;
      First;
      while not Eof do
      begin
        k := FieldByName('Num').AsInteger;
        for I := 1 to k do
        begin
          RecordIndex := vwl.DataController.AppendRecord;
          vwl.ViewData.Records[RecordIndex].Values[1] := FieldByName('FL').AsString;
          vwl.ViewData.Records[RecordIndex].Values[0] := I;
        end;
        Next;
      end;
    end;
      //----------
     //增加阶段信息
   // for I := 0 to qryLCLJJD.RecordCount - 1 do
      // AddCustomerBand('', '', '', -1);

    qryLCLJJD := TADOQuery.Create(nil);
    qryLCLJJD.Connection := DM_data.ado_mydata;
    qryLCLJJD.SQL.Clear;
    qryLCLJJD.SQL.Text := 'Select A.JDID,A.FID,A.XH,A.MC,A.KSTS,A.JSTS,A.BZ,A.FL,A.SM From LCLJ_LCLJJD A' +
      ' Where A.LJID=' + #39 + LJID + #39 + ' And A.BBH=' + intTostr(BBH) + ' Order by FID Desc,A.XH';
    qryLCLJJD.Open;
    qryLCLJJD.First;
    qryLCLJJD.Sort := 'FID DESC,XH ';
    K := 2;
    while not qryLCLJJD.Eof do
    begin
      if not qryLCLJJD.FieldByName('JDID').IsNull then
      begin
        vJDID := qryLCLJJD.FieldByName('JDID').AsString;
        vJDName := qryLCLJJD.FieldByName('MC').AsString;
        vXH := qryLCLJJD.FieldByName('XH').AsInteger;
        AddCustomerBand(vwl, vJDName, vJDID, '阶段评估', vXH);
       //设置显示名细
        if vwl.ViewData.RecordCount > 0 then
        begin
          sSql := 'select * from LCLJ_LCLJXM where LJID=' + #39 + LJID + #39 + ' and BBH=' + intTostr(BBH) + ' order by FL,JDID';
          with dm_data.Qry_pub do
          begin
            close;
            SQL.Clear;
            SQL.Add(sSql);
            Open;
            Filtered := False;
            Filter := 'JDID=' + #39 + vJDID + #39;
            Filtered := True;
            First;
            while not Eof do
            begin
              for I := 0 to vwl.ViewData.RecordCount - 1 do
              begin
                if (vwl.ViewData.Records[I].Values[1] = FieldByName('FL').AsString)
                  and (vwl.ViewData.Records[I].Values[0] = FieldByName('XMXH').AsString)
                  then
                begin
                  if GetXMYZ(FieldByName('XMID').AsString) then
                    vwl.ViewData.Records[I].Values[K] := FieldByName('XMNR').AsString + '...'
                  else
                    vwl.ViewData.Records[I].Values[K] := FieldByName('XMNR').AsString;
                  Break;
                end;
              end;
              Next;
            end;
            Filtered := False;
          end;
        end;
        Inc(k);
      end;
      qryLCLJJD.Next;
    end;
     //----------------
      //处理双重表头

    qryLCLJJD.First;
    while not qryLCLJJD.Eof do
    begin
      if not qryLCLJJD.FieldByName('FID').IsNull then
      begin
        vCaption := '';
        if (not qryLCLJJD.FieldByName('FL').IsNull) and (not qryLCLJJD.FieldByName('SM').IsNull) then
          vCaption := qryLCLJJD.FieldByName('SM').AsString + ',' + qryLCLJJD.FieldByName('FL').AsString
        else
          if (not qryLCLJJD.FieldByName('FL').IsNull) then
            vCaption := '备用分支' + qryLCLJJD.FieldByName('XH').AsString + ',' + qryLCLJJD.FieldByName('FL').AsString;
        AddparentBand(vwl, 'JD_' + qryLCLJJD.FieldByName('FID').AsString, 'JD_' + qryLCLJJD.FieldByName('JDID').AsString, qryLCLJJD.FieldByName('XH').AsString, vCaption);
      end;

      qryLCLJJD.Next;
    end;
    //-------------
    qryLCLJJD.Close;
    qryLCLJJD.Free;
//    SetColumStyle; //设置有评估的显示风格
    //如没有数据则初始化表格
    if vwl.ViewData.RecordCount = 0 then
    begin
      RecordIndex := vwl.DataController.AppendRecord;
      vwl.ViewData.Records[RecordIndex].Values[1] := '';
    end;
    if vwl.ColumnCount = 2 then
      AddCustomerBand(vwl, '', '', '', -1, True, True);
   //------------
  except on E: Exception do
    begin
      Application.MessageBox(Pchar('数据初始化错误。错误信息为：' + #13 + E.Message), '提示', mb_OK);

    end;
  end;

end;


procedure TFrm_LCLJSJ.ShowMXData_rq(LJID: string; BBH: Integer;vwl:TcxGridBandedTableView;rq,zyh:string;TFrm:Tform);
var
  sSql, FLName, vJDID, vJDName, vCaption: string;
  i, k, vXH: Integer;
  RecordIndex: Integer;
  qryLCLJJD: TADOQuery;
  qryLCLJJD_sbt: TADOQuery;
  rqxh,zxbz:string;
begin
  try
   //清除数据
    for I := 0 to vwl.ViewData.RecordCount - 1 do
      vwl.DataController.DeleteRecord(0);
    vwl.Bands.Clear;
    vwl.ClearItems;
    if BBH = -1 then Exit;

   //----
    AddHiddenColum(vwl); //增加一不可见列用于保存项目序号
    AddCustomerBand(vwl, '时间阶段', '', '', -1, True, False);
     //增加分类信息
    sSql := 'select A.XH,A.MC as FL,isnull(num,1)as num  from LCLJ_LCLJFL A,' +
      '(select MAX(xmxh) num,FL from LCLJ_LCLJXM where LJID=' + #39 + LJID + #39 +
      ' and BBH=' + intTostr(BBH) + ' group by FL) B ' +
      ' where A.MC*=B.FL and A.LJID=' + #39 + LJID + #39 + ' and A.BBH=' + intTostr(BBH) +
      ' order by A.XH';
    with dm_data.Qry_pub do
    begin
      Filtered := False;
      close;
      SQL.Clear;
      SQL.Add(sSql);
      Open;
      First;
      while not Eof do
      begin
        k := FieldByName('Num').AsInteger;
        for I := 1 to k do
        begin
          RecordIndex := vwl.DataController.AppendRecord;
          vwl.ViewData.Records[RecordIndex].Values[1] := FieldByName('FL').AsString;
          vwl.ViewData.Records[RecordIndex].Values[0] := I;
        end;
        Next;
      end;
    end;
      //----------
     //增加阶段信息
   // for I := 0 to qryLCLJJD.RecordCount - 1 do
      // AddCustomerBand('', '', '', -1);


//    qryLCLJJD := TADOQuery.Create(nil);
//    qryLCLJJD.Connection := DM_data.ado_mydata;
//    qryLCLJJD.SQL.Clear;
//    qryLCLJJD.SQL.Text := 'Select A.JDID,A.FID,A.XH,A.MC,A.KSTS,A.JSTS,A.BZ,A.FL,A.SM From LCLJ_LCLJJD A' +
//      ' Where A.LJID=' + #39 + LJID + #39 + ' And A.BBH=' + intTostr(BBH) + ' Order by FID Desc,A.XH';
//    qryLCLJJD.Open;
//    qryLCLJJD.First;

    qryLCLJJD := TADOQuery.Create(nil);
    qryLCLJJD.Connection := DM_data.ado_mydata;
    qryLCLJJD.SQL.Clear;
    qryLCLJJD.SQL.Text := 'Select b.zyh,b.ljid,A.JDID,b.rq,A.XH,A.MC,A.KSTS,A.JSTS,A.BZ,A.FL,A.SM From LCLJ_LCLJJD A,lclj_brljzx b ' +
      ' Where '+
      'b.rq<='+''''+rq+''' and '+
      ' a.ljid=b.ljid and a.jdid=b.jdid and b.zyh=' + #39 + zyh + #39 + ' And A.BBH=' + intTostr(BBH) + ' order by a.xh,b.rq';
    qryLCLJJD.Open;
    qryLCLJJD.First;
    rqxh:=qryLCLJJD.FieldByName('rq').asstring;
    K := 2;
    zxbz:='';
    while not qryLCLJJD.Eof do
    begin
      if not qryLCLJJD.FieldByName('JDID').IsNull then
      begin
        vJDID := qryLCLJJD.FieldByName('JDID').AsString;
        vJDName := qryLCLJJD.FieldByName('MC').AsString;
        vXH := qryLCLJJD.FieldByName('XH').AsInteger;
        DM_data.qry_pub.Close;
        DM_data.qry_pub.sql.text:='select datediff(day,'''+rqxh+''','+''''+qryLCLJJD.FieldByName('rq').asstring+''') rqxh';
        DM_data.qry_pub.Open;
        AddCustomerBand(vwl, vJDName, vJDID+qryLCLJJD.FieldByName('rq').asstring, '阶段评估', DM_data.qry_pub.FieldByName('rqxh').AsInteger+1);

       //设置显示名细
        if vwl.ViewData.RecordCount > 0 then
        begin
          sSql := 'select * from LCLJ_LCLJXM where LJID=' + #39 + LJID + #39 + ' and BBH=' + intTostr(BBH) + ' order by FL,JDID';
          with dm_data.Qry_pub do
          begin
            close;
            SQL.Clear;
            SQL.Add(sSql);
            Open;
            Filtered := False;
            Filter := 'JDID=' + #39 + vJDID + #39;
            Filtered := True;
            First;
            while not Eof do
            begin
              for I := 0 to vwl.ViewData.RecordCount-1  do
              begin
                if (vwl.ViewData.Records[I].Values[1] = FieldByName('FL').AsString)
                  and (vwl.ViewData.Records[I].Values[0] = FieldByName('XMXH').AsString)
                  then
                begin
                  qry_jczx.close;
                  qry_jczx.SQL.Text:='select * from lclj_brljzx_mx where zyh='+''''+zyh+''''+
                  ' and ljid='+''''+LJID+''''+' and jdid='+''''+vJDID+''''+' and rq='+
                  ''''+qryLCLJJD.FieldByName('rq').asstring+''''+' and xmid='+
                  ''''+FieldByName('xmid').AsString+'''';
                  qry_jczx.Open;
                  if qry_jczx.FieldByName('zxjg').asstring='1' then
                  begin
                    zxbz:='√';
                  end
                  else
                  begin
                    zxbz:='';
                  end;
                  if GetXMYZ(FieldByName('XMID').AsString) then
                    vwl.ViewData.Records[I].Values[K] :=zxbz+FieldByName('XMNR').AsString + '...'
                  else
                    vwl.ViewData.Records[I].Values[K] :=zxbz+FieldByName('XMNR').AsString;
                  Break;
                end;

              end;

                  qry_bycx.close;
                  qry_bycx.SQL.text:='select * from lclj_brljby where zyh='+''''+zyh+''''+
                  ' and rq='+''''+qryLCLJJD.FieldByName('rq').asstring+'''';
                  qry_bycx.Open;
                  if not qry_bycx.IsEmpty then
                  begin
                vwl.ViewData.Records[vwl.ViewData.RecordCount-1].Values[K]:=
                  Trim(qry_bycx.FieldByName('byqk').asstring) + #13 + #10 +
                  '●' + Trim(qry_bycx.FieldByName('bycl').asstring) + '●''';
                  end;
                  vwl.Columns[K].Width:=160;    
              Next;
            end;
            Filtered := False;
          end;
        end;
        Inc(k);
      end;
      qryLCLJJD.Next;
    end;
     //----------------

      //处理双重表头


    qryLCLJJD.First;
    while not qryLCLJJD.Eof do
    begin
      if not qryLCLJJD.FieldByName('JDID').IsNull then
      begin
        vCaption := qryLCLJJD.FieldByName('rq').asstring;
        //vCaption := '备用分支' + qryLCLJJD.FieldByName('XH').AsString + ',' + qryLCLJJD.FieldByName('FL').AsString;
        dm_data.qry_pub.close;
        dm_data.qry_pub.SQL.text:='Select b.ljid,A.JDID,min(b.rq) rq From LCLJ_LCLJJD A,lclj_brljzx b ' +
        ' Where '+'b.rq<='+''''+rq+''' and '+
        ' a.ljid=b.ljid and a.jdid=b.jdid and b.zyh=' + #39 + zyh + #39 + ' And A.BBH=' + intTostr(BBH)
        + ' and a.jdid='+''''+qryLCLJJD.FieldByName('JDID').asstring+''' group by b.ljid,A.JDID';
        dm_data.qry_pub.Open;
        if not dm_data.qry_pub.IsEmpty then
        AddparentBand_dbt(vwl, 'JD_' + dm_data.qry_pub.FieldByName('JDID').AsString+dm_data.qry_pub.FieldByName('rq').AsString, 'JD_' + qryLCLJJD.FieldByName('JDID').AsString+qryLCLJJD.FieldByName('rq').AsString, qryLCLJJD.FieldByName('XH').AsString, vCaption,qryLCLJJD.FieldByName('rq').AsString);
      end;

      qryLCLJJD.Next;
    end;
    //-------------
    qryLCLJJD.Close;
    qryLCLJJD.Free;
//    SetColumStyle; //设置有评估的显示风格
    //如没有数据则初始化表格
    if vwl.ViewData.RecordCount = 0 then
    begin
      RecordIndex := vwl.DataController.AppendRecord;
      vwl.ViewData.Records[RecordIndex].Values[1] := '';
    end;
    if vwl.ColumnCount = 2 then
      AddCustomerBand(vwl, '', '', '', -1, True, True);
   //------------
  except on E: Exception do
    begin
      Application.MessageBox(Pchar('数据初始化错误。错误信息为：' + #13 + E.Message), '提示', mb_OK);

    end;
  end;

end;
procedure TFrm_LCLJSJ.ShowPathDetails(PathID: string;PathVersion: Integer;
                          vwl:TcxGridBandedTableView;Date,zyh:string;tfrm:TForm);
var
  sSql, FLName, vJDID, vJDName, vCaption: string;
  i, k, vXH: Integer;
  RecordIndex: Integer;
  qryLCLJJD: TADOQuery;
  qryLCLJJD_sbt: TADOQuery;
  rqxh,zxbz:string;
  zyzlgz,zyyz,zyhlgz: string;
begin
  try
   //清除数据
    for I := 0 to vwl.ViewData.RecordCount - 1 do
      vwl.DataController.DeleteRecord(0);
    vwl.Bands.Clear;
    vwl.ClearItems;
    if PathVersion = -1 then Exit;

   //----
    AddHiddenColum(vwl); //增加一不可见列用于保存项目序号
    AddCustomerBand(vwl, '时间阶段', '', '', -1, True, False);
    vwl.Columns[1].Width := 45;
     //增加分类信息
    sSql := 'select A.XH,A.MC as FL,isnull(num,1)as num  from LCLJ_LCLJFL A,' +
      '(select MAX(xmxh) num,FL from LCLJ_LCLJXM where LJID=' + #39 + PathID + #39 +
      ' and BBH=' + intTostr(PathVersion) + ' group by FL) B ' +
      ' where A.MC*=B.FL and A.LJID=' + #39 + PathID + #39 +
      ' and A.BBH=' + intTostr(PathVersion) +
      ' order by A.XH';
    with dm_data.Qry_pub do
    begin
      Filtered := False;
      close;
      SQL.Clear;
      SQL.Add(sSql);
      Open;
      First;
      while not Eof do
      begin
        RecordIndex := vwl.DataController.AppendRecord;
        vwl.ViewData.Records[RecordIndex].Values[1] := FieldByName('FL').AsString;
        vwl.ViewData.Records[RecordIndex].Values[0] := I;
        Next;
      end;
    end;
      //----------

    qryLCLJJD := TADOQuery.Create(nil);
    qryLCLJJD.Connection := DM_data.ado_mydata;
    qryLCLJJD.SQL.Clear;
    qryLCLJJD.SQL.Text :=
      'SELECT b.zyh ,' +
             'b.ljid ,' +
             'A.JDID ,' +
             'b.rq ,'  +
             'A.XH ,' +
             'A.MC ,' +
             'A.KSTS ,' +
             'A.JSTS ,' +
             'A.BZ ,' +
             'A.FL ,' +
             'A.SM ' +
      'FROM   LCLJ_LCLJJD A ,' +
             'lclj_brljzx b ' +
      'WHERE  b.rq <= '+ #39 + Date + #39 + ' ' +
             'AND a.ljid = b.ljid ' +
             'AND a.jdid = b.jdid '  +
             'AND b.zyh = ' + #39 + zyh + #39 + ' ' +
             'AND A.BBH = ' + intTostr(PathVersion) + ' '+
      'ORDER BY a.xh ,' +
             'b.rq';
    qryLCLJJD.Open;
    qryLCLJJD.First;
    rqxh:=qryLCLJJD.FieldByName('rq').asstring;
    K := 2;
    zxbz:='';
    while not qryLCLJJD.Eof do
    begin
      if not qryLCLJJD.FieldByName('JDID').IsNull then
      begin
        vJDID := qryLCLJJD.FieldByName('JDID').AsString;
        //vJDName := qryLCLJJD.FieldByName('MC').AsString;
        vJDName := '住院第' + IntToStr(K - 1) + '天';
        vXH := qryLCLJJD.FieldByName('XH').AsInteger;
        DM_data.qry_pub.Close;
        DM_data.qry_pub.sql.text:='select datediff(day,'''+rqxh+''','+''''+qryLCLJJD.FieldByName('rq').asstring+''') rqxh';
        DM_data.qry_pub.Open;
        AddCustomerBand(vwl, vJDName, vJDID+qryLCLJJD.FieldByName('rq').asstring, '阶段评估', DM_data.qry_pub.FieldByName('rqxh').AsInteger+1);

       //设置显示名细
        if vwl.ViewData.RecordCount > 0 then
        begin
          sSql := 'SELECT * ' +
                  'FROM   LCLJ_LCLJXM ' +
                  'WHERE  LJID = ' + #39 + PathID + #39 + ' ' +
                         'AND BBH = ' + intTostr(PathVersion) + ' ' +
                  'ORDER BY FL ,' +
                         'JDID';
          with dm_data.Qry_pub do
          begin
            close;
            SQL.Clear;
            SQL.Add(sSql);
            Open;

            for I := 0 to vwl.ViewData.RecordCount-2  do
            begin
              Filtered := False;
              Filter := 'JDID=' + #39 + vJDID + #39 + ' AND FL like '+#39+'%'+ arrFL[I] +'%'+#39;
              Filtered := True;
              First;
              zyzlgz := '';
              while not Eof do
              begin
                qry_jczx.close;
                qry_jczx.SQL.Text:=
                  'SELECT * ' +
                  'FROM   lclj_brljzx_mx ' +
                  'WHERE  zyh = ' + #39 + zyh + #39 + ' ' +
                        'AND ljid = ' + #39 + vJDID + #39 + ' ' +
                        'AND jdid = ' + #39 + PathID + #39 + ' ' +
                        'AND rq   = ' + #39 + qryLCLJJD.FieldByName('rq').asstring + #39 + ' ' +
                        'AND xmid = ' + #39 + FieldByName('xmid').AsString + #39;
                qry_jczx.Open;
                if qry_jczx.FieldByName('zxjg').asstring='1' then
                begin
                  zxbz:='√';
                end
                else
                begin
                  zxbz:='□';
                end;
                zyzlgz := zyzlgz + zxbz + Trim(FieldByName('XMNR').AsString) + #13#10;
                next;
              end;
              vwl.ViewData.Records[I].Values[K] := zyzlgz;

              qry_bycx.close;
              qry_bycx.SQL.text:='select * from lclj_brljby where zyh='+''''+zyh+''''+
              ' and rq='+''''+qryLCLJJD.FieldByName('rq').asstring+'''';
              qry_bycx.Open;
              if not qry_bycx.IsEmpty then
              begin
                vwl.ViewData.Records[vwl.ViewData.RecordCount-1].Values[K]:=qry_bycx.FieldByName('byqk').asstring+
                #13+#10+'●'+qry_bycx.FieldByName('bycl').asstring+'●''';
              end;
              vwl.Columns[K].Width:=190;
              Next;
            end;

            Filtered := False;
          end;
        end;
        Inc(k);
      end;
      qryLCLJJD.Next;
    end;
     //----------------

      //处理双重表头
    (*qryLCLJJD.First;
    while not qryLCLJJD.Eof do
    begin
      if not qryLCLJJD.FieldByName('JDID').IsNull then
      begin
        vCaption := qryLCLJJD.FieldByName('rq').asstring;
        dm_data.qry_pub.close;
        dm_data.qry_pub.SQL.text:='Select b.ljid,A.JDID,min(b.rq) rq From LCLJ_LCLJJD A,lclj_brljzx b ' +
        ' Where '+'b.rq<='+''''+Date+''' and '+
        ' a.ljid=b.ljid and a.jdid=b.jdid and b.zyh=' + #39 + zyh + #39 + ' And A.BBH=' + intTostr(PathVersion)
        + ' and a.jdid='+''''+qryLCLJJD.FieldByName('JDID').asstring+''' group by b.ljid,A.JDID';
        dm_data.qry_pub.Open;
        if not dm_data.qry_pub.IsEmpty then
        AddparentBand_dbt(vwl, 'JD_' + dm_data.qry_pub.FieldByName('JDID').AsString+dm_data.qry_pub.FieldByName('rq').AsString, 'JD_' + qryLCLJJD.FieldByName('JDID').AsString+qryLCLJJD.FieldByName('rq').AsString, qryLCLJJD.FieldByName('XH').AsString, vCaption,qryLCLJJD.FieldByName('rq').AsString);
      end;

      qryLCLJJD.Next;
    end;     *)
    //-------------
    qryLCLJJD.Close;
    qryLCLJJD.Free;
//    SetColumStyle; //设置有评估的显示风格
    //如没有数据则初始化表格
    if vwl.ViewData.RecordCount = 0 then
    begin
      RecordIndex := vwl.DataController.AppendRecord;
      vwl.ViewData.Records[RecordIndex].Values[1] := '';
    end;
    if vwl.ColumnCount = 2 then
      AddCustomerBand(vwl, '', '', '', -1, True, True);
  except on E: Exception do
    begin
      Application.MessageBox(Pchar('数据初始化错误。错误信息为：' + #13 + E.Message), '提示', mb_OK);
    end; 
  end;
end;

procedure TFrm_LCLJSJ.cxgrdbtblvwLCLJFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
var
  vBBH: Integer;
begin
  if cxgrdbtblvwLCLJ.Controller.FocusedRow is TcxGridGroupRow then
  begin
    cxLabelKS.Caption := '';
    cxLabelBZ.Caption := '';

  end;
  if cbbLCBB.ItemIndex = -1 then
    vBBH := -1
  else
    vBBH := Integer(cbbLCBB.Items.Objects[cbbLCBB.ItemIndex]);
  ShowMXData(qryLJ.FieldByName('LJID').AsString, vBBH,cxgrdbndtblvwLCLJMX);
  SetShowStyle;
end;

procedure TFrm_LCLJSJ.FormResize(Sender: TObject);
begin
  cbbLCBB.Width := pnlLCBB.Width - imgLCBB.Width - 8;
end;

procedure TFrm_LCLJSJ.FormShow(Sender: TObject);
begin
  cxgrd1.SetFocus;
  cxgrd1.Refresh;
end;

function TFrm_LCLJSJ.GetBZMC(LJID: string): string;
begin
  with dm_data.Qry_pub do
  begin
    close;
    SQL.Text := 'select I.JBBM,I.JBMC from LCLJ_LCLJBZ L,ICD10 I where L.JBID=I.JBBM and L.LJID=' + #39 + LJID + #39;
    Open;
    while not Eof do
    begin
      if Result = '' then
        Result := '[' + Fields[0].AsString + ']' + Fields[1].AsString
      else
        Result := Result + ',' + '[' + Fields[0].AsString + ']' + Fields[1].AsString;
      Next;
    end;
    Close;
  end;

end;

function TFrm_LCLJSJ.GetKSMC(LJID: string): string;
begin
  with dm_data.Qry_pub do
  begin
    close;
    SQL.Text := 'select L.LJID ,k.mc from LCLJ_LCLJKS L,sys_ksdm K where L.KSID=K.dm and L.LJID=' + #39 + LJID + #39;
    Open;
    while not Eof do
    begin
      if Result = '' then
        Result := Fields[1].AsString
      else
        Result := Result + ',' + Fields[1].AsString;
      Next;
    end;
    Close;
  end;
end;

procedure TFrm_LCLJSJ.SetBBH(LJID: string);
var
  sSql: string;
  vCJR, vCJSJ, vShow: string;
  vBBH: Integer;
begin
  with dm_data.Qry_pub do
  begin
    close;
    sSql := 'select * from LCLJ_LCLJBB where LJID=' + #39 + LJID + #39;
    SQL.Text := sSql;
    Open;
    cbbLCBB.Items.Clear;
    while not Eof do
    begin
      vBBH := FieldByName('BBH').AsInteger;
      vCJR := FieldByName('CJR').AsString;
      vCJSJ := FieldByName('CJSJ').AsString;
      vShow := '第 ' + IntTostr(vBBH) + ' 版,创建：' + vCJR + '/' + vCJSJ;
      cbbLCBB.Items.AddObject(vShow, TObject(vBBH));
      Next;
    end;
    if cbbLCBB.Items.Count > 0 then
      cbbLCBB.ItemIndex := 0;
    Close;
  end;
end;

procedure TFrm_LCLJSJ.qryLJAfterOpen(DataSet: TDataSet);
begin
  if qryLJ.RecordCount > 0 then
    actDel.Enabled := True
  else
    actDel.Enabled := False;
end;

procedure TFrm_LCLJSJ.qryLJAfterScroll(DataSet: TDataSet);
var
  ksmc: string;
begin
  ksmc := GetKSMC(qryLJ.FieldByName('LJID').AsString);
  if ksmc = '' then
    cxLabelKS.Caption := '全院通用'
  else
    cxLabelKS.Caption := ksmc;
  cxLabelBZ.Caption := GetBZMC(qryLJ.FieldByName('LJID').AsString);
  SetBBH(qryLJ.FieldByName('LJID').AsString);
end;

procedure TFrm_LCLJSJ.ShowData;
begin
  qryLJ.Close;
  qryLJ.Open;
  cxgrdbtblvwLCLJ.DataController.Groups.FullExpand;
end;

procedure TFrm_LCLJSJ.spl1Moved(Sender: TObject);
begin
  cbbLCBB.Width := pnlLCBB.Width - imgLCBB.Width - 8;
end;

procedure TFrm_LCLJSJ.actADDExecute(Sender: TObject);
begin
  if qryLJ.FieldByName('FL').IsNull then
    fun_LCLJBJ(1, '')
  else
    fun_LCLJBJ(1, qryLJ.FieldByName('FL').AsString);
  ShowData;
end;

end.

