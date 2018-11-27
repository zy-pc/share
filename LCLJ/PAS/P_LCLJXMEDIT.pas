unit P_LCLJXMEDIT;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, cxButtonEdit, cxCheckBox,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxClasses, cxControls,
  cxGridCustomView, cxGridDBTableView, cxGrid, Buttons, ADODB, p_yzinput,
  cxDropDownEdit, cxDBLookupComboBox;

type
  TFrm_LCLJXMEDIT = class(TForm)
    pnl1: TPanel;
    pnl2: TPanel;
    pnlZXJG: TPanel;
    img1: TImage;
    lbl1: TLabel;
    lbl2: TLabel;
    img2: TImage;
    lbl3: TLabel;
    grp1: TGroupBox;
    rbDoctor: TRadioButton;
    rbnurse: TRadioButton;
    lbl4: TLabel;
    cxgrd1: TcxGrid;
    cxgrdbtblvwGrid1DBTableView1: TcxGridDBTableView;
    cxgrdtblvwJG: TcxGridTableView;
    cxgrdclmnJG: TcxGridColumn;
    cxgrdclmnJGDefault: TcxGridColumn;
    cxgrdlvlGrid1Level1: TcxGridLevel;
    cxgrdclmnXZ: TcxGridColumn;
    pnl4: TPanel;
    lbl5: TLabel;
    edtXMNR: TEdit;
    lbl6: TLabel;
    rbXMLB1: TRadioButton;
    rbXMLB2: TRadioButton;
    rbXMLB3: TRadioButton;
    lbl7: TLabel;
    rbSZFS1: TRadioButton;
    rbSZFS2: TRadioButton;
    rbSZFS3: TRadioButton;
    rbSZFS4: TRadioButton;
    rbSZFS5: TRadioButton;
    pnl5: TPanel;
    pnl6: TPanel;
    btnSAVE: TBitBtn;
    btn2: TBitBtn;
    pnlXM: TPanel;
    pnl3: TPanel;
    btn3: TButton;
    lbl8: TLabel;
    rbALL: TRadioButton;
    rbSelect: TRadioButton;
    cxgrdbtblvwXMYZ: TcxGridDBTableView;
    cxgrdlvlGrid1Level2: TcxGridLevel;
    cxgrd2: TcxGrid;
    qryJGXZ: TADOQuery;
    dsJGXZ: TDataSource;
    dsYZMX: TDataSource;
    cxgrdbclmnXMYZyzsx: TcxGridDBColumn;
    cxgrdbclmnXMYZlb: TcxGridDBColumn;
    cxgrdbclmnXMYZxmmc: TcxGridDBColumn;
    cxgrdbclmnXMYZypyf: TcxGridDBColumn;
    cxgrdbclmnXMYZypyl: TcxGridDBColumn;
    cxgrdbclmnXMYZdw: TcxGridDBColumn;
    cxgrdbclmnXMYZsl: TcxGridDBColumn;
    cxgrdbclmnXMYZyplb: TcxGridDBColumn;
    cxgrdbclmnXMYZgg: TcxGridDBColumn;
    qryYZTMP: TADOQuery;
    procedure rbSZFS1Click(Sender: TObject);
    procedure rbXMLB1Click(Sender: TObject);
    procedure btnSAVEClick(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxgrdclmnJGPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxgrdtblvwJGEditValueChanged(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem);
    procedure cxgrdclmnJGDefaultPropertiesChange(Sender: TObject);
    procedure cxgrdtblvwJGDataControllerAfterDelete(
      ADataController: TcxCustomDataController);
  private
    { Private declarations }
    vCurrDefault: Integer; //当前所选的缺省值
    vLJID, vXMID: string;
    vQryXM, vQryYZZB, vQryYZMX: TADOQuery;
    vBBH, vZXFS: Integer;
    function GetResult: string;
    procedure ChkLastRecord;
    procedure ShowData;
    procedure ShowResult(ResultText: string);
    procedure SaveData;
    procedure SaveYZData;
  public
    { Public declarations }
  end;
function LJXMEDIT(LJID, XMID: string; BBH: Integer; QryXM, QryYZZB, QryYZMX: TADOQuery): Boolean;
implementation
uses P_Public, p_dm, P_BMSelect;
{$R *.dfm}

function LJXMEDIT(LJID, XMID: string; BBH: Integer; QryXM, QryYZZB, QryYZMX: TADOQuery): Boolean;
var
  Frm_LCLJXMEDIT: TFrm_LCLJXMEDIT;
begin
  Frm_LCLJXMEDIT := TFrm_LCLJXMEDIT.Create(Application);
  with Frm_LCLJXMEDIT do
  begin
    vLJID := LJID;
    vBBH := BBH;
    vXMID := XMID;
    vQryXM := QryXM;
    vQryYZZB := QryYZZB;
    vQryYZMX := QryYZMX;
    ShowData;
    if ShowModal = mrOk then
      Result := True;
    Free;
  end;
end;

procedure TFrm_LCLJXMEDIT.ShowData;
begin
  dsYZMX.DataSet := vQryYZMX;
  vQryXM.Filtered := False;
  vQryXM.Filter := 'XMID=' + #39 + vXMID + #39;
  vQryXM.Filtered := True;
  if not vQryXM.FieldByName('XMNR').IsNull then
    edtXMNR.Text := vQryXM.FieldByName('XMNR').AsString;
// if not vQryXM.FieldByName('XMJG').IsNull then
  vCurrDefault := -1;
  ShowResult(vQryXM.FieldByName('XMJG').AsString);
  if vQryYZMX.RecordCount > 0 then
  begin
    rbXMLB1.Checked := True;
    if vQryXM.FieldByName('NRYQ').AsInteger = 0 then
      rbALL.Checked := True
    else
      rbSelect.Checked := True;
  end;
  if not vQryXM.FieldByName('ZXZ').IsNull then
    if vQryXM.FieldByName('ZXZ').AsInteger=1 then
        rbDoctor.Checked:=True
       else
        rbnurse.Checked:=True; 
    
  if not vQryXM.FieldByName('ZXFS').IsNull then
  begin
    case vQryXM.FieldByName('ZXFS').AsInteger of
      0: rbSZFS5.Checked := True;
      1: rbSZFS1.Checked := True;
      2: rbSZFS3.Checked := True;
      3: rbSZFS2.Checked := True;
      4: rbSZFS4.Checked := True;
    end;
  end;
end;

procedure TFrm_LCLJXMEDIT.FormShow(Sender: TObject);
begin
  qryJGXZ.Open;
end;

procedure TFrm_LCLJXMEDIT.ChkLastRecord;
begin
  if cxgrdtblvwJG.DataController.RecordCount = 0 then
  begin
    cxgrdtblvwJG.DataController.AppendRecord;

  end else
  begin
    if not VarIsNull(cxgrdtblvwJG.DataController.Values[cxgrdtblvwJG.DataController.RecordCount - 1, 0]) then
    begin
      cxgrdtblvwJG.DataController.AppendRecord;
    end;
  end;
end;

procedure TFrm_LCLJXMEDIT.ShowResult(ResultText: string);
var
  i, vNum, vResultIndex: Integer;
  vDefaultStr, vTempStr, sSql: string;
begin
  for I := 0 to cxgrdtblvwJG.ViewData.RecordCount - 1 do
    cxgrdtblvwJG.DataController.DeleteRecord(0); //清除数据
  if ResultText = '' then
  begin
    sSql := 'select MC,XZ FROM LCLJ_LJCJJG WHERE MJ=1 and JB=1';
    with dm_data.Qry_pub do
    begin
      Close;
      SQL.Clear;
      SQL.Add(sSql);
      Open;
      while not Eof do
      begin
        cxgrdtblvwJG.DataController.AppendRecord;
        cxgrdtblvwJG.DataController.Values[cxgrdtblvwJG.DataController.RecordCount - 1, 0] := FieldByName('MC').AsString;
        cxgrdtblvwJG.DataController.Values[cxgrdtblvwJG.DataController.RecordCount - 1, 1] := FieldByName('XZ').AsInteger;
        Next;
      end;
      Close;
      if cxgrdtblvwJG.DataController.RecordCount > 0 then
      begin
        vCurrDefault := 0;
        cxgrdtblvwJG.DataController.Values[0, 2] := True;
      end;

    end;
  end else
  begin
    vNum := GetCommaStrCount(ResultText);
    vDefaultStr := GetCommaStr(ResultText, vNum);
    for i := 1 to vNum - 1 do
    begin
      vTempStr := GetCommaStr(ResultText, i);
      vResultIndex := StrToIntDef(Copy(vTempStr, pos('|', vTempStr) + 1, Length(vTempStr)), 1);
      vTempStr := Copy(vTempStr, 1, pos('|', vTempStr) - 1);

      cxgrdtblvwJG.DataController.AppendRecord;
      cxgrdtblvwJG.DataController.Values[cxgrdtblvwJG.DataController.RecordCount - 1, 0] := vTempStr;
      cxgrdtblvwJG.DataController.Values[cxgrdtblvwJG.DataController.RecordCount - 1, 1] := vResultIndex;
      if vTempStr = vDefaultStr then
      begin
        cxgrdtblvwJG.DataController.Values[cxgrdtblvwJG.DataController.RecordCount - 1, 2] := True;
        vCurrDefault := cxgrdtblvwJG.DataController.RecordCount - 1;
      end
      else
        cxgrdtblvwJG.DataController.Values[cxgrdtblvwJG.DataController.RecordCount - 1, 2] := False;
    end;
  end;
 // if cxgrdtblvwJG.DataController.RecordCount = 0 then
  cxgrdtblvwJG.DataController.AppendRecord;
end;

procedure TFrm_LCLJXMEDIT.SaveData;
var
  vResult: string;
begin
  vQryXM.Edit;
  vQryXM.FieldByName('XMNR').AsString := edtXMNR.Text;
  vQryXM.FieldByName('ZXFS').AsInteger := vZXFS;
  if pnlZXJG.Visible then
  begin
    if rbDoctor.Checked then
      vQryXM.FieldByName('ZXZ').AsInteger := 1;
    if rbnurse.Checked then
      vQryXM.FieldByName('ZXZ').AsInteger := 2;
  end else
    vQryXM.FieldByName('ZXZ').AsInteger := 0;
  if pnlZXJG.Visible then
  begin
    vResult := GetResult;
    if vResult <> '' then
      vQryXM.FieldByName('XMJG').AsString := vResult;
  end;
  if rbXMLB1.Checked then
  begin
    if rbALL.Checked then
      vQryXM.FieldByName('NRYQ').AsInteger := 0;
    if rbSelect.Checked then
      vQryXM.FieldByName('NRYQ').AsInteger := 1;

  end else
   begin
    if not vQryYZMX.IsEmpty then
    begin
     vQryYZMX.First;
     while not vQryYZMX.Eof do
      vQryYZMX.DeleteRecords(arCurrent);
    end;
     if not vQryYZZB.IsEmpty then
      vQryYZZB.Delete;
   end;
  vQryXM.Post;
end;

procedure TFrm_LCLJXMEDIT.SaveYZData;
begin
  qryYZTMP.Close;
  qryYZTMP.Open;
  if qryYZTMP.RecordCount = 0 then exit;
  if vQryYZZB.RecordCount = 0 then
  begin
    vQryYZZB.Append;
    vQryYZZB.FieldByName('KSDM').AsString := pub_ksdm;
    vQryYZZB.FieldByName('ysdm').AsString := pub_czydm;
    vQryYZZB.FieldByName('ztmc').AsString := vLJID;
    vQryYZZB.FieldByName('czy').AsString := pub_czydm;
    vQryYZZB.FieldByName('mblb').AsString := vXMID;
    vQryYZZB.FieldByName('mzbz').AsBoolean := False;
    vQryYZZB.FieldByName('zybz').AsBoolean := False;
  end;
  vQryYZMX.First;
  while not vQryYZMX.Eof do
  begin
    vQryYZMX.DeleteRecords(arCurrent);
  end;
  qryYZTMP.First;
  while not qryYZTMP.Eof do
  begin
    vQryYZMX.Append;
    vQryYZMX.FieldByName('ztid').AsString := vLJID;
    vQryYZMX.FieldByName('XMID').AsString := vXMID;
    vQryYZMX.FieldByName('yzsx').AsString := qryYZTMP.FieldByName('yzsx').AsString;
    vQryYZMX.FieldByName('lb').AsString := qryYZTMP.FieldByName('lb').AsString;
    vQryYZMX.FieldByName('xmdm').AsString := qryYZTMP.FieldByName('xmdm').AsString;
    vQryYZMX.FieldByName('xmmc').AsString := qryYZTMP.FieldByName('xmmc').AsString;
    vQryYZMX.FieldByName('ypyf').AsString := qryYZTMP.FieldByName('ypyf').AsString;
    vQryYZMX.FieldByName('ypyl').AsString := qryYZTMP.FieldByName('ypyl').AsString;
    vQryYZMX.FieldByName('yldw').AsString := qryYZTMP.FieldByName('yldw').AsString;
    vQryYZMX.FieldByName('dw').AsString := qryYZTMP.FieldByName('dw').AsString;
    vQryYZMX.FieldByName('sl').AsInteger := qryYZTMP.FieldByName('sl').AsInteger;
    vQryYZMX.FieldByName('yytj').AsString := qryYZTMP.FieldByName('yytj').AsString;
    vQryYZMX.FieldByName('czks').AsString := qryYZTMP.FieldByName('czks').AsString;
    vQryYZMX.FieldByName('kdks').AsString := qryYZTMP.FieldByName('kdks').AsString;
    vQryYZMX.FieldByName('yplb').AsString := qryYZTMP.FieldByName('yplb').AsString;
    vQryYZMX.FieldByName('gg').AsString := qryYZTMP.FieldByName('gg').AsString;
    vQryYZMX.FieldByName('yplsj').AsString := qryYZTMP.FieldByName('yplsj').AsString;
    vQryYZMX.FieldByName('ypbzbl').AsInteger := qryYZTMP.FieldByName('ypbzbl').AsInteger;
    vQryYZMX.FieldByName('bz').AsString := qryYZTMP.FieldByName('bz').AsString;
    vQryYZMX.FieldByName('jyyb').AsString := qryYZTMP.FieldByName('jyyb').AsString;
    vQryYZMX.FieldByName('jyflbh').AsString := qryYZTMP.FieldByName('jyflbh').AsString;
    vQryYZMX.FieldByName('ypdwid').AsString := qryYZTMP.FieldByName('ypdwid').AsString;
    vQryYZMX.FieldByName('fzbz').AsString := qryYZTMP.FieldByName('fzbz').AsString;
  // qryYZTMP.FieldByName('fzbh').AsString := vQryYZMX.FieldByName('syfzph').AsString;
   // vQryYZMX.Post;
    qryYZTMP.Next;
  end;
end;

procedure TFrm_LCLJXMEDIT.btn3Click(Sender: TObject);
var
  sSql: string;
begin
  try
    //转存医嘱内容至编辑表
    sSql := 'Delete from lclj_tmp_yzmb';
    ExecSql(sSql);
    vQryYZMX.First;
    qryYZTMP.Open;
    while not vQryYZMX.Eof do
    begin
      qryYZTMP.Append;
      qryYZTMP.FieldByName('yzsx').AsString := vQryYZMX.FieldByName('yzsx').AsString;
      qryYZTMP.FieldByName('lb').AsString := vQryYZMX.FieldByName('lb').AsString;
      qryYZTMP.FieldByName('xmdm').AsString := vQryYZMX.FieldByName('xmdm').AsString;
      qryYZTMP.FieldByName('xmmc').AsString := vQryYZMX.FieldByName('xmmc').AsString;
      qryYZTMP.FieldByName('ypyf').AsString := vQryYZMX.FieldByName('ypyf').AsString;
      qryYZTMP.FieldByName('ypyl').AsString := vQryYZMX.FieldByName('ypyl').AsString;
      qryYZTMP.FieldByName('yldw').AsString := vQryYZMX.FieldByName('yldw').AsString;
      qryYZTMP.FieldByName('dw').AsString := vQryYZMX.FieldByName('dw').AsString;
      qryYZTMP.FieldByName('sl').AsInteger := vQryYZMX.FieldByName('sl').AsInteger;
      qryYZTMP.FieldByName('yytj').AsString := vQryYZMX.FieldByName('yytj').AsString;
      qryYZTMP.FieldByName('czks').AsString := vQryYZMX.FieldByName('czks').AsString;
      qryYZTMP.FieldByName('kdks').AsString := vQryYZMX.FieldByName('kdks').AsString;
      qryYZTMP.FieldByName('yplb').AsString := vQryYZMX.FieldByName('yplb').AsString;
      qryYZTMP.FieldByName('gg').AsString := vQryYZMX.FieldByName('gg').AsString;
      qryYZTMP.FieldByName('yplsj').AsString := vQryYZMX.FieldByName('yplsj').AsString;
      qryYZTMP.FieldByName('ypbzbl').AsInteger := vQryYZMX.FieldByName('ypbzbl').AsInteger;
      qryYZTMP.FieldByName('bz').AsString := vQryYZMX.FieldByName('bz').AsString;
      qryYZTMP.FieldByName('jyyb').AsString := vQryYZMX.FieldByName('jyyb').AsString;
      qryYZTMP.FieldByName('jyflbh').AsString := vQryYZMX.FieldByName('jyflbh').AsString;
      qryYZTMP.FieldByName('ypdwid').AsString := vQryYZMX.FieldByName('ypdwid').AsString;
      qryYZTMP.FieldByName('fzbz').AsString := vQryYZMX.FieldByName('fzbz').AsString;
      qryYZTMP.FieldByName('zyh').AsString := pub_czydm;
     // qryYZTMP.FieldByName('fzbh').AsString := vQryYZMX.FieldByName('syfzph').AsString;
      qryYZTMP.Post;
      vQryYZMX.Next;
    end;
    //------
    Application.CreateForm(Tfrm_yzinput, frm_yzinput);
    frm_yzinput.tmh := '';
    frm_yzinput.zyh := '';
    frm_yzinput.lclj_mbmc := vLJID;
    frm_yzinput.lclj_mblb := vXMID;
    frm_yzinput.lcljms := True;
    frm_yzinput.ShowModal;
    SaveYZData;
    sSql := 'Delete from lclj_tmp_yzmb';
    ExecSql(sSql);
  finally
    frm_yzinput.Free;
  end;

end;

function TFrm_LCLJXMEDIT.GetResult: string;
var
  i, vXZNUM: Integer;
  vDefaultStr: string;
begin
  Result := '';
  vDefaultStr := '';
  for I := 0 to cxgrdtblvwJG.DataController.RecordCount - 1 do
  begin
    vXZNUM := cxgrdtblvwJG.DataController.Values[I, 1];
    if (not VarIsNull(cxgrdtblvwJG.DataController.Values[I, 2])) then
      if cxgrdtblvwJG.DataController.Values[I, 2] then
        vDefaultStr := cxgrdtblvwJG.DataController.Values[I, 0];
    if Result = '' then
      Result := cxgrdtblvwJG.DataController.Values[I, 0] + '|' + intTostr(vXZNUM)
    else
      Result := Result + ',' + cxgrdtblvwJG.DataController.Values[I, 0] + '|' + intTostr(vXZNUM);
  end;
  if vDefaultStr <> '' then
    Result := Result + ',' + vDefaultStr;
end;

procedure TFrm_LCLJXMEDIT.btnSAVEClick(Sender: TObject);
var
  i: Integer;
  vDefault: Boolean;
  function ChkDoubleRecord(vRecordStr: string; vRecordIndex: Integer): Boolean;
  var
    K: Integer;
  begin
    Result := False;
    for K := vRecordIndex + 1 to cxgrdtblvwJG.DataController.RecordCount - 1 do
      if vRecordStr = cxgrdtblvwJG.DataController.Values[k, 0] then
      begin
        Result := True;
        Break;
      end;
  end;
begin
  if Trim(edtXMNR.Text) = '' then
  begin
    Application.MessageBox('请输入路径项目的内容。', '提示', MB_OK +
      MB_ICONINFORMATION);
    edtXMNR.SetFocus;

    Exit;
  end;

  if pnlZXJG.Visible then
  begin

    for I := 0 to cxgrdtblvwJG.DataController.RecordCount - 1 do
    begin
      if (VarIsNull(cxgrdtblvwJG.DataController.Values[i, 0])) or
        (cxgrdtblvwJG.DataController.Values[i, 0] = '') or
        (VarIsNull(cxgrdtblvwJG.DataController.Values[i, 1])) then
        cxgrdtblvwJG.DataController.DeleteRecord(i)
      else
      begin
        if ChkDoubleRecord(cxgrdtblvwJG.DataController.Values[i, 0], i) then
        begin
          Application.MessageBox(Pchar('输入了重复结果'), '提示', mb_OK + MB_ICONINFORMATION);
        //cxgrdtblvwJG.Controller.SelectedRecords[i].Selected;
          cxgrd1.SetFocus;
          Exit;
        end;
      end;
    end;
    vDefault := False;
    for I := 0 to cxgrdtblvwJG.DataController.RecordCount - 1 do
    begin
      if not VarIsNull(cxgrdtblvwJG.DataController.Values[i, 2]) then
        if cxgrdtblvwJG.DataController.Values[i, 2] then
          vDefault := True;
    end;
    if not vDefault then
    begin
      Application.MessageBox(Pchar('没有指定缺省结果'), '提示', mb_OK + MB_ICONINFORMATION);
      cxgrd1.SetFocus;
      Exit;
    end;
    if cxgrdtblvwJG.DataController.RecordCount = 0 then
    begin
      Application.MessageBox(Pchar('没有指定结果值'), '提示', mb_OK + MB_ICONINFORMATION);
      ChkLastRecord;
      cxgrd1.SetFocus;
      Exit;
    end;
  end;

  SaveData;
  ModalResult := mrOk;
end;

procedure TFrm_LCLJXMEDIT.cxgrdclmnJGDefaultPropertiesChange(Sender: TObject);
begin
  if (cxgrdtblvwJG.DataController.Values[cxgrdtblvwJG.DataController.FocusedRecordIndex, 2] = False) or
    (cxgrdtblvwJG.DataController.Values[cxgrdtblvwJG.DataController.FocusedRecordIndex, 2] = null)
    then
  begin
    cxgrdtblvwJG.DataController.Values[cxgrdtblvwJG.DataController.FocusedRecordIndex, 2] := True;
    if (vCurrDefault <> -1) and (vCurrDefault <> cxgrdtblvwJG.DataController.FocusedRecordIndex) then
    begin
      cxgrdtblvwJG.DataController.Values[vCurrDefault, 2] := False;
      vCurrDefault := cxgrdtblvwJG.DataController.FocusedRecordIndex;
    end else
      vCurrDefault := cxgrdtblvwJG.DataController.FocusedRecordIndex;
  end;

end;

procedure TFrm_LCLJXMEDIT.cxgrdclmnJGPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  vQuySql, vShowSql, sSql, vReturn, s1, s2: string;
  vSelCount, vPosTop, vPosLeft, lCol: Integer;
  PosRect: TRect;
begin
//
  GetWindowRect(cxgrd1.Handle, PosRect);
  vPosTop := PosRect.Top + cxgrdtblvwJG.Controller.FocusedRecord.ViewInfo.FocusRectBounds.Top;
  vPosLeft := PosRect.Left;
  vQuySql := 'Select * From LCLJ_LJCJJG Where  MJ=0  ';
  sSql := 'IF OBJECT_ID(' + #39 + 'tempdb..#MyTemp' + #39') IS  NULL ' +
    'Select  BM,MC,pym,isnull(SJ,0)as sj,XZ,isnull(MJ,0) as MJ,convert(bit,1) as Sele into #MyTemp From LCLJ_LJCJJG Where mj=1 and isnull(sj,0)<>0 ';
  with dm_data.Qry_pub do
  begin
    close;
    SQL.Text := sSql;
    ExecSQL;
  end;
  vShowSql := 'Select BM,MC,pym,Sj,XZ,MJ ,Sele from tempdb..#MyTemp';

  vReturn := GetBmSelect(vQuySql, vShowSql, True, True, True, True, vPosLeft, vPosTop, vSelCount);
  if vSelCount = 1 then
  begin
    cxgrdtblvwJG.DataController.Values[cxgrdtblvwJG.DataController.FocusedRowIndex, 1] :=
      StrToIntDef(Copy(vReturn, pos('|', vReturn) + 1, Length(vReturn)), 1);
    cxgrdtblvwJG.DataController.Values[cxgrdtblvwJG.DataController.FocusedRowIndex, 0] :=
      Copy(vReturn, 1, pos('|', vReturn) - 1);

   // cxgrdtblvwJG.DataController.AppendRecord;

  end else
  begin
    if vReturn <> '' then
    begin
      s1 := vReturn + ',';
      lCol := cxgrdtblvwJG.DataController.RecordCount - 1;
      while Pos(',', s1) <> 0 do
      begin
        s2 := Copy(s1, 0, pos(',', s1) - 1);
        s1 := Copy(s1, Pos(',', s1) + 1, Length(s1));

        if Trim(s2) <> '' then
        begin
          cxgrdtblvwJG.DataController.Values[lCol, 0] := Copy(s2, 1, pos('|', s2) - 1);
          cxgrdtblvwJG.DataController.Values[lCol, 1] := StrToIntDef(Copy(s2, pos('|', s2) + 1, Length(s2)), 1);

          cxgrdtblvwJG.DataController.AppendRecord;
          Inc(lCol);
        end;
        cxgrdtblvwJG.DataController.FocusedRowIndex := cxgrdtblvwJG.DataController.RecordCount - 1;
      end;
    end;

  end;
  ChkLastRecord;
end;

procedure TFrm_LCLJXMEDIT.cxgrdtblvwJGDataControllerAfterDelete(
  ADataController: TcxCustomDataController);
begin
  ChkLastRecord;
end;

procedure TFrm_LCLJXMEDIT.cxgrdtblvwJGEditValueChanged(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem);
var
  sSql, vBM, vReturn: string;
  PosRect: TRect;
  vPosTop, vPosLeft, vSelCount: Integer;
begin
  if cxgrdtblvwJG.Controller.FocusedColumnIndex = 0 then
  begin
    vBM := cxgrdtblvwJG.Controller.EditingController.Edit.EditValue;
    sSql := 'Select BM ,MC,pym,sj,mj,xz From LCLJ_LJCJJG Where MJ=1 And (BM Like ' + #39 + vBM + '%' + #39 +
      ' Or MC Like ' + #39 + '%' + vBM + '%' + #39 + ' Or pym Like ' + #39 + '%' + vBM + '%' + #39 + ') Order by BM';
    GetWindowRect(cxgrd1.Handle, PosRect);
    vPosTop := PosRect.Top + cxgrdtblvwJG.Controller.FocusedRecord.ViewInfo.FocusRectBounds.Bottom;
    vPosLeft := PosRect.Left;
    vReturn := GetBmSelect(sSql, sSql, False, False, True, True, vPosLeft, vPosTop, vSelCount);
    cxgrdtblvwJG.OnEditValueChanged := nil;
    if vSelCount = 0 then
    begin
      cxgrdtblvwJG.Controller.FocusedItem.EditValue := vBM;
    end;

    if vSelCount = 1 then
    begin
      cxgrdtblvwJG.Controller.EditingController.Edit.EditValue := Copy(vReturn, 1, pos('|', vReturn) - 1);
      cxgrdtblvwJG.Controller.EditingController.Edit.EditValue := Copy(vReturn, 1, pos('|', vReturn) - 1);
      cxgrdtblvwJG.Controller.FocusedItem.EditValue := Copy(vReturn, 1, pos('|', vReturn) - 1);
      cxgrdtblvwJG.DataController.Values[cxgrdtblvwJG.DataController.FocusedRowIndex, 1] :=
        StrToIntDef(Copy(vReturn, pos('|', vReturn) + 1, Length(vReturn)), 1);
    end;
    cxgrdtblvwJG.OnEditValueChanged := cxgrdtblvwJGEditValueChanged;

  end;

end;

procedure TFrm_LCLJXMEDIT.rbSZFS1Click(Sender: TObject);
begin
  if rbSZFS5.Checked then
    pnlZXJG.Visible := False
  else
    pnlZXJG.Visible := True;
  vZXFS := TRadioButton(Sender).Tag;
end;

procedure TFrm_LCLJXMEDIT.rbXMLB1Click(Sender: TObject);
begin
  if rbXMLB1.Checked then
    pnlXM.Visible := True
  else
    pnlXM.Visible := False;
end;

end.

