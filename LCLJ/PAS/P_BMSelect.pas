unit P_BMSelect;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, ADODB, ExtCtrls, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, ComCtrls, cxLookAndFeelPainters, cxCheckBox, cxDBLookupComboBox;

type
  TFrm_BMSelect = class(TForm)
    tvBM: TTreeView;
    cxgrdbtblvwBM: TcxGridDBTableView;
    cxgrdlvlGrid1Level1: TcxGridLevel;
    cxgrd1: TcxGrid;
    spl1: TSplitter;
    qryBM: TADOQuery;
    dsBm: TDataSource;
    dsJGXZ: TDataSource;
    qryJGXZ: TADOQuery;
    procedure cxgrdbtblvwBMCustomDrawIndicatorCell(Sender: TcxGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxCustomGridIndicatorItemViewInfo;
      var ADone: Boolean);
    procedure tvBMChange(Sender: TObject; Node: TTreeNode);
    procedure cxgrdbtblvwBMDblClick(Sender: TObject);
    procedure cxgrdbtblvwBMKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    vSelectMC: string;
    vShowSql, vQuySql: string;
    vChkTree: Boolean;
    vMultiSelect: Boolean;
    vChkXZ: Boolean; //是否返回性质字段
    vChkBottom: Boolean; //是否在底面显示
    vBmCount: Integer;
    vItemXZ: Integer; // 返回性质
    vPosLeft, vPosTop: Integer;
    function ChkDataCount: Boolean;
    procedure GetResult;
    procedure InitSelData;
    procedure ShowData;
  public
    { Public declarations }
  end;
function GetBmSelect(QuySql, ShowSql: string; CHKTree, MultiSelect, ChkXZ, ChkBottom: Boolean;
  PosLeft, PosTop: Integer; var ItemCount: Integer): string;
implementation
uses p_dm, P_Public;
{$R *.dfm}

function GetBmSelect(QuySql, ShowSql: string; CHKTree, MultiSelect, ChkXZ, ChkBottom: Boolean;
  PosLeft, PosTop: Integer; var ItemCount: Integer): string;
var
  Frm_BMSelect: TFrm_BMSelect;
begin
  try
    Frm_BMSelect := TFrm_BMSelect.Create(Application);
    with Frm_BMSelect do
    begin
      vShowSql := ShowSql;
      vQuySql := QuySql;
      vMultiSelect := MultiSelect;
      vChkTree := CHKTree;
      vPosLeft := PosLeft;
      vPosTop := PosTop;
      vChkBottom := ChkBottom;
      vChkXZ := ChkXZ;
      if ChkDataCount then
      begin
        ItemCount := vBmCount;
        Result := vSelectMC;
      end else
      begin
        ShowData;
        if ShowModal = mrOk then
        begin
          ItemCount := vBmCount;
          Result := vSelectMC;
        end
        else
        begin
          ItemCount := -1;
          Result := '';
        end;
        Free;
      end;
    end;
  except on E: Exception do
    begin
      Application.MessageBox(Pchar('系统错误,错误信息为' + E.Message), '警告', mb_OK + MB_ICONWARNING);
      Result := '';
    end;
  end;
end;

function TFrm_BMSelect.ChkDataCount: Boolean;
begin
  Result := False;
  if not vChkTree then
  begin
    qryBM.SQL.Text := vQuySql;
    qryBM.Open;
    if not qryBM.IsEmpty then
    begin
      if (qryBM.RecordCount = 1) then
      begin
        vSelectMC := qryBM.FieldByName('MC').AsString;
        vBmCount := 1;
        Result := True;
      end;
    end else
    begin
      vSelectMC := '';
      vBmCount := 0;
      Result := True;
    end;
    qryBM.Close;
  end;
end;

procedure TFrm_BMSelect.InitSelData;
begin
  if not qryBM.Active then Exit;
  qryBM.First;
  while not qryBM.Eof do
  begin
    qryBM.Edit;
    qryBM.FieldByName('Sele').AsBoolean := False;
    qryBM.Next;
  end;

end;

procedure TFrm_BMSelect.cxgrdbtblvwBMCustomDrawIndicatorCell(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxCustomGridIndicatorItemViewInfo; var ADone: Boolean);
var
  FValue: string;
  FBounds: TRect;
begin
  FBounds := AViewInfo.Bounds;
  if (AViewInfo is TcxGridIndicatorRowItemViewInfo) then
  begin
    ACanvas.FillRect(FBounds);
    ACanvas.DrawComplexFrame(FBounds, clBtnHighlight, clBtnShadow, [bBottom, bLeft, bRight], 1);
          //ACanvas.DrawComplexFrame(FBounds,   clBlack,   clBlack,   [bBottom,   bLeft,   bRight],   1);
    FValue := IntToStr(TcxGridIndicatorRowItemViewInfo(AViewInfo).GridRecord.Index + 1);
    InflateRect(FBounds, -1, -1); //Platform   specific.   May   not   work   on   Linux.
    ACanvas.Font.Color := clBlack;
    ACanvas.Brush.Style := bsClear;
    ACanvas.DrawText(FValue, FBounds, cxAlignCenter or cxAlignTop);
    ADone := True;
  end;
end;

procedure TFrm_BMSelect.cxgrdbtblvwBMDblClick(Sender: TObject);
begin
  GetResult;
  ModalResult := mrOk;
end;

procedure TFrm_BMSelect.cxgrdbtblvwBMKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    GetResult;
    ModalResult := mrOk;
  end;
  if Key = #27 then
    ModalResult := mrCancel;
end;

procedure TFrm_BMSelect.ShowData;
var
  sFields, sCaption, sWidth, sSql: string;
  cl: TcxGridDBColumn;
  i: Integer;
begin
  if vChkTree then
    tvBM.Visible := True
  else
  begin
    Width := 380;
    Height := 150
  end;
  Left := vPosLeft;
  if vChkBottom then
    Top := vPosTop - Height
  else
    Top := vPosTop;

  if vChkXZ then
  begin
    if vMultiSelect then
    begin
      sFields := 'Sele,BM,MC,pym,XZ';
      sCaption := '选中,编码,名称,简码,性质';
      sWidth := '40,50,120,100,100';
    end else
    begin
      sFields := 'BM,MC,pym,XZ';
      sCaption := '编码,名称,简码,性质';
      sWidth := '50,120,100,100';
    end;
  end else
  begin
    if vMultiSelect then
    begin
      sFields := 'Sele,BM,MC,pym';
      sCaption := '选中,编码,名称,简码';
      sWidth := '40,50,120,100';
    end else
    begin
      sFields := 'BM,MC,pym';
      sCaption := '编码,名称,简码';
      sWidth := '50,120,100';
    end;
  end;

  StrToGridField(cxgrdbtblvwBM, sFields, sCaption, sWidth, '', False);

  if vMultiSelect then
  begin
    cl := cxgrdbtblvwBM.Columns[0];
    cl.PropertiesClass := TcxCheckBoxProperties;
    cl.Options.Editing := True;
    cl.Properties.ReadOnly := False;
    with TcxCheckBoxProperties(cl.Properties) do
    begin
      AllowGrayed := False;
      ValueChecked := True;
      ValueUnchecked := False;
      DisplayChecked := 'True';
      DisplayUnchecked := 'False';
      NullStyle := nssUnchecked;

     // TcxCheckBoxProperties(cl.Properties).OnChange;
    end;
  end;
  if vChkXZ then
  begin
    if vMultiSelect then
      cl := cxgrdbtblvwBM.Columns[4]
    else
      cl := cxgrdbtblvwBM.Columns[3];
    cl.PropertiesClass := TcxLookupComboBoxProperties;
    cl.Properties.ReadOnly := True;
    with TcxLookupComboBoxProperties(cl.Properties) do
    begin
      ListSource := dsJGXZ;
      ListFieldNames := 'MC';
      KeyFieldNames := 'BM';
      ListOptions.ShowHeader := False;
    end;
    qryJGXZ.Open;
  end;

  if vMultiSelect then
  begin
    qryBM.SQL.Text := vShowSql;
    qryBM.Open;
  end;
  if vChkTree then
    LoadTreeInfo(tvBM, vQuySql)
  else
  begin
    qryBM.SQL.Text := vQuySql;
    qryBM.Open;
  end;
end;

procedure TFrm_BMSelect.tvBMChange(Sender: TObject; Node: TTreeNode);
var
  FilterStr: string;
begin
  if not vChkTree then Exit;
  if Node = nil then Exit;
  if Node.Level = 0 then
    FilterStr := 'sj=0'
  else
    FilterStr := 'sj=' + #39 + TInfo(TreeArrInfo[Node.SelectedIndex]).ID + #39;
  if (qryBM.State = dsEdit) or (qryBM.State = dsInsert) then
    qryBM.Cancel;
  qryBM.Close;
  qryBM.Filter := FilterStr;
  qryBM.Filtered := True;
  qryBM.Open;
  if vMultiSelect then
    InitSelData;
end;

procedure TFrm_BMSelect.GetResult;
var
  CurrMC: string;
begin
  vSelectMC := '';
  if not qryBM.Active then Exit;
  if qryBM.RecordCount = 0 then Exit;

  if vMultiSelect then
  begin

    vBmCount := 0;
    if (qryBM.RecordCount > 0) then
    begin
      if vChkXZ then
        CurrMC := qryBM.FieldByName('MC').AsString+ '|' + qryBM.FieldByName('XZ').AsString
      else
        CurrMC := qryBM.FieldByName('MC').AsString;

    end
    else
      CurrMC := '';
     qryBM.First;
    while not qryBM.Eof do
    begin
      if qryBM.FieldByName('Sele').AsBoolean then
      begin
        if vChkXZ then
        begin
          if vSelectMC = '' then
            vSelectMC := vSelectMC + qryBM.FieldByName('MC').AsString + '|' + qryBM.FieldByName('XZ').AsString
          else
            vSelectMC := vSelectMC + ',' + qryBM.FieldByName('MC').AsString + '|' + qryBM.FieldByName('XZ').AsString;
        end else
        begin
          if vSelectMC = '' then
            vSelectMC := vSelectMC + qryBM.FieldByName('MC').AsString
          else
            vSelectMC := vSelectMC + ',' + qryBM.FieldByName('MC').AsString;
        end;
        Inc(vBmCount);
      end;
      qryBM.Next;
    end;
    if (qryBM.RecordCount > 0) and (vBmCount = 0) then
    begin
      vSelectMC := CurrMC;
      vBmCount := 1;
    end;
  end else
  begin
    if vChkXZ then
      vSelectMC := qryBM.FieldByName('MC').AsString + '|' + qryBM.FieldByName('XZ').AsString
    else
      vSelectMC := qryBM.FieldByName('MC').AsString;
    vBmCount := 1;
  end;

end;

end.

