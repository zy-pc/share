unit P_LCLJXBJ;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, ADODB, cxButtonEdit, GridsEh, DBGridEh,
  cxDBLookupComboBox, SXSearchBox;

type
  PKSInfo = ^TKSInfo;
  TKSInfo = record
    KSID: string;
    KSMC: string;
  end;
  Tfrm_LCLJBJ = class(TForm)
    lbl1: TLabel;
    cbbType: TComboBox;
    lbl2: TLabel;
    edtcode: TEdit;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    lbl11: TLabel;
    edtname: TEdit;
    cbbProper: TComboBox;
    cbbApplyCondit: TComboBox;
    edtForAgeF: TEdit;
    lbl12: TLabel;
    edtForAgeB: TEdit;
    cbbAge: TComboBox;
    cbbSex: TComboBox;
    lblDRC: TLabel;
    cbbDRC: TComboBox;
    bvl1: TBevel;
    bvl2: TBevel;
    bvl3: TBevel;
    lbl13: TLabel;
    moinfo: TMemo;
    edtday: TEdit;
    pnl1: TPanel;
    chkcontine: TCheckBox;
    btnADD: TButton;
    btnCancel: TButton;
    sxsrchbx_zdbz: TSXSearchBox;
    btnKSADD: TButton;
    sxsrchbxjb: TSXSearchBox;
    btnBZADD: TButton;
    lbl9: TLabel;
    lstKS: TListBox;
    lstBZ: TListBox;
    grp1: TGroupBox;
    grp2: TGroupBox;
    lbl10: TLabel;
    lbl14: TLabel;
    img1: TImage;
    bvl4: TBevel;
    spLCLJ_Insert: TADOStoredProc;
    spLJML_Update: TADOStoredProc;
    spLJML_Delete: TADOStoredProc;
    procedure edtForAgeFKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnKSADDClick(Sender: TObject);
    procedure btnBZADDClick(Sender: TObject);
    procedure btnADDClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
  private
    { Private declarations }
    vEditType: Integer; //1:增加2：编辑
    vFLValue: string;
    vLJID: string;
    vTY, vSYXB, vQZTS, vZDXGFL: Integer;
    vKsID, vJBID, vMC, vFL, vBM, vBLFX: string;
    vSYBQ, vSYNL, vSM: string;
    LJQuy: TADOQuery;
    function GetksID(vList: TListBox): string;
    function GetBMID(vFileValue: string): string;
    function GetValue: Boolean;
    procedure CleareEdit;
    procedure SetKSMC(vList: TListBox; LJID: string; vType: Integer);
    procedure InistialValue;
    procedure SaveRecord;
    procedure EditRecord;
  public
    { Public declarations }
  end;
function fun_LCLJBJ(vType: Integer; vFL: string; LJSource: TADOQuery = nil): Boolean;
implementation
uses p_dm, P_Public;
{$R *.dfm}

function fun_LCLJBJ(vType: Integer; vFL: string; LJSource: TADOQuery = nil): Boolean;
var
  frm_LCLJBJ: Tfrm_LCLJBJ;
begin
  frm_LCLJBJ := Tfrm_LCLJBJ.Create(Application);
  frm_LCLJBJ.vEditType := vType;
  frm_LCLJBJ.vFLValue := vFL;
  frm_LCLJBJ.LJQuy := LJSource;
  frm_LCLJBJ.InistialValue;
  if frm_LCLJBJ.ShowModal = mrOk then
    Result := True;

  frm_LCLJBJ.Free;
end;

function Tfrm_LCLJBJ.GetBMID(vFileValue: string): string;
var
  i, vID: Integer;
  sID: string;
begin
  if vFileValue = '' then
    vID := GetMaxValue('BM', 'LCLJ_LCLJML', 'where FL like ' + #39 + '%' + #39)
  else
    vID := GetMaxValue('BM', 'LCLJ_LCLJML', 'where FL=' + #39 + vFileValue + #39);

  if Length(IntToStr(vID)) = 1 then
    sID := '0' + IntToStr(vID)
  else
    sID := IntToStr(vID);
  Result := sID;
end;

procedure Tfrm_LCLJBJ.SetKSMC(vList: TListBox; LJID: string; vType: Integer);
var
  sSql: string;
  p: PKSInfo;
begin
  if vType = 1 then
    sSql := 'select L.KSID,k.mc from LCLJ_LCLJKS L,sys_ksdm K where L.KSID=K.dm and L.LJID=' + #39 + LJID + #39
  else
    sSql := 'select I.JBBM,I.JBMC from LCLJ_LCLJBZ L,ICD10 I where L.JBID=I.JBBM and L.LJID=' + #39 + LJID + #39;
  with dm_data.Qry_pub do
  begin
    close;
    SQL.Text := sSql;
    Open;
    while not eof do
    begin
      New(p);
      p.KSID := Fields[0].AsString;
      p.KSMC := Fields[1].AsString;
      vList.Items.AddObject(p.KSMC, TObject(p));
      Next;
    end;
    Close;
  end;
end;

procedure Tfrm_LCLJBJ.CleareEdit;
begin
  edtcode.Text := GetBMID(edtname.Text);
  edtname.Text := '';
  moinfo.Lines.Clear;
  cbbProper.ItemIndex := 0;
  cbbApplyCondit.ItemIndex := 0;
  cbbDRC.ItemIndex := -1;
  edtForAgeF.Text := '';
  edtForAgeB.Text := '';
  cbbAge.ItemIndex := 0;
  cbbSex.ItemIndex := 0;
  lstKS.Items.Clear;
  sxsrchbx_zdbz.Text := '';
  sxsrchbxjb.Text := '';
  lstBZ.Items.Clear;
  edtday.Text := '';
end;

procedure Tfrm_LCLJBJ.InistialValue;
var
  sSql, nlStr: string;
  i: Integer;
  procedure SetCombox(DstCom: TComboBox; comVal: string);
  var
    vListIndex: Integer;
  begin
    vListIndex := DstCom.Items.IndexOf(comVal);
    DstCom.ItemIndex := vListIndex;
  end;
begin

  if vEditType = 1 then
    edtcode.Text := GetBMID(vFLValue)
  else
  begin
    vLJID := LJQuy.FieldByName('LJID').AsString;
    edtcode.Text := LJQuy.FieldByName('BM').AsString;
  end;


  with dm_data.Qry_pub do
  begin
   //取得分类列表
    close;
    SQL.Text := 'select FL from LCLJ_LCLJML group by FL';
    Open;
    while not Eof do
    begin
      cbbType.Items.Add(Fields[0].Value);
      Next;
    end;
    Close;
    SetCombox(cbbType, vFLValue);

 //取得诊断分类
    SQL.Text := 'select BM,MC from LCLJ_ZDXGFL order by BM';
    Open;
    while not Eof do
    begin
      cbbDRC.Items.AddObject(Fields[1].Value, Tobject(Fields[0].AsInteger));
      Next;
    end;
    Close;
  end;

  if vEditType = 2 then
  begin
    edtname.Text := LJQuy.FieldByName('MC').AsString;
    moinfo.Lines.Add(LJQuy.FieldByName('SM').AsString);
    if LJQuy.FieldByName('BLFX').AsString = '' then
      cbbProper.ItemIndex := 0
    else
      SetCombox(cbbProper, LJQuy.FieldByName('BLFX').AsString);
    SetCombox(cbbApplyCondit, LJQuy.FieldByName('SYBQ').AsString);
    cbbSex.ItemIndex := LJQuy.FieldByName('SYXB').AsInteger;
    for I := 0 to cbbDRC.Items.Count - 1 do
    begin
      if LJQuy.FieldByName('ZDXGFL').AsInteger = Integer(cbbDRC.Items.Objects[i]) then
      begin
        cbbDRC.ItemIndex := i;
        Break;
      end;
    end;
    edtday.Text := LJQuy.FieldByName('QZTS').AsString;
    SetKSMC(lstKS, LJQuy.FieldByName('LJID').AsString, 1);
    SetKSMC(lstBZ, LJQuy.FieldByName('LJID').AsString, 2);
    nlStr := LJQuy.FieldByName('SYNL').AsString;
    if nlStr <> '' then
    begin
      edtForAgeF.Text := Copy(nlStr, 1, Pos('-', nlStr) - 1);
      nlstr := Copy(nlStr, Pos('-', nlStr) + 1, length(nlStr));
      edtForAgeB.Text := Copy(nlStr, 1, length(nlStr) - 2);
      nlstr := Copy(nlStr, length(nlStr) - 1, Length(nlStr));
      SetCombox(cbbAge, nlstr);
    end;
  end;
end;

function Tfrm_LCLJBJ.GetksID(vList: TListBox): string;
var
  p: PKSInfo;
  i: Integer;
begin
  Result := '';
  try
    for i := 0 to vList.Items.Count - 1 do
    begin
      p := PKSInfo(vList.Items.Objects[i]);
      if Length(p.KSID) > 0 then
        if Result = '' then
          Result := Result + P.KSID
        else
          Result := Result + ',' + P.KSID;
    end;
  except on E: Exception do
    begin
      Application.MessageBox(Pchar('系统错误,错误信息为' + E.Message), '提示', mb_OK);
      Result := '';
    end;
  end;
end;

procedure Tfrm_LCLJBJ.EditRecord;
var
  vError: string;
begin
  if not GetValue then Exit;
  try
    with spLJML_Update do
    begin
      Close;
      Parameters.ParamByName('@LJID').Value := vLJID;
      Parameters.ParamByName('@FL').Value := vFL;
      Parameters.ParamByName('@BM').Value := vBM;
      Parameters.ParamByName('@MC').Value := vMC;
      Parameters.ParamByName('@TY').Value := vTY;
      Parameters.ParamByName('@BLFX').Value := vBLFX;
      Parameters.ParamByName('@SYBQ').Value := vSYBQ;
      Parameters.ParamByName('@SYXB').Value := vSYXB;
      Parameters.ParamByName('@SYNL').Value := vSYNL;
      Parameters.ParamByName('@SM').Value := vSM;
      Parameters.ParamByName('@QZTS').Value := vQZTS;
      Parameters.ParamByName('@ZDXGFL').Value := vZDXGFL;
      Parameters.ParamByName('@KSID').Value := vKsID;
      Parameters.ParamByName('@JBID').Value := vJBID;
      ExecProc;
     { vError := spLJML_Update.Parameters.ParamByName('@SCZT').Value;
      if vError<>'0' then
       Application.MessageBox('数据保存出错！', '警告', MB_OK + MB_ICONWARNING 
         + MB_DEFBUTTON2); }
         
    end;
  except on E: Exception do
    begin
      vError := spLJML_Update.Parameters.ParamByName('@SCZT').Value;
      Application.MessageBox(Pchar('数据保存出错，错误信息为:' + #13 + E.Message), '提示', mb_OK);
    end;
  end;
end;

function Tfrm_LCLJBJ.GetValue: Boolean;
var
  i: Integer;
begin
  try
    vJBID := GetksID(lstBZ);
    vKsID := GetksID(lstKS);
    if vKsID = '' then
      vTY := 1
    else
      vTY := 2;
     //诊断相关分类代码
    if cbbDRC.ItemIndex = -1 then
      vZDXGFL := 0
    else
      vZDXGFL := Integer(cbbDRC.Items.Objects[cbbDRC.ItemIndex]);
    if vEditType = 1 then //如果是增加记录
      vLJID := GetColumnID('LCLJ_LCLJML', 'LJID');
    vMC := Trim(edtname.Text);
    vFL := Trim(cbbType.Text);
    vBM := GetBMID(vFL); //edtcode.Text;
    vBLFX := cbbProper.Text;
    vSYBQ := cbbApplyCondit.Text;
    vSYXB := cbbSex.ItemIndex;
    if (Length(edtForAgeF.Text) > 0) then
      vSYNL := Trim(edtForAgeF.Text) + '-' + trim(edtForAgeB.Text) + cbbAge.Text
    else
      vSYNL := '';
    for I := 0 to moinfo.Lines.Count - 1 do
      vSM := vSm + moinfo.Lines[i];
    if Length(edtday.Text) > 0 then
      vQZTS := StrToIntDef(edtday.Text, 0)
    else
      vQZTS := 0;
    Result := True;
  except on E: Exception do
    begin
      Application.MessageBox(Pchar('数据出错，错误信息为:' + #13 + E.Message), '提示', mb_OK);
      Result := False;
    end;

  end;
end;

procedure Tfrm_LCLJBJ.SaveRecord;
var
  vError: string;
begin
  if not GetValue then Exit;
  try
    with spLCLJ_Insert do
    begin
      Close;
      Parameters.ParamByName('@LJID').Value := vLJID;
      Parameters.ParamByName('@FL').Value := vFL;
      Parameters.ParamByName('@BM').Value := vBM;
      Parameters.ParamByName('@MC').Value := vMC;
      Parameters.ParamByName('@TY').Value := vTY;
      Parameters.ParamByName('@BLFX').Value := vBLFX;
      Parameters.ParamByName('@SYBQ').Value := vSYBQ;
      Parameters.ParamByName('@SYXB').Value := vSYXB;
      Parameters.ParamByName('@SYNL').Value := vSYNL;
      Parameters.ParamByName('@SM').Value := vSM;
      Parameters.ParamByName('@QZTS').Value := vQZTS;
      Parameters.ParamByName('@ZDXGFL').Value := vZDXGFL;
      Parameters.ParamByName('@KSID').Value := vKsID;
      Parameters.ParamByName('@JBID').Value := vJBID;
      ExecProc;
    end;
  except on E: Exception do
    begin
      vError := spLCLJ_Insert.Parameters.ParamByName('@SCZT').Value;
      Application.MessageBox(Pchar('数据保存出错，错误信息为:' + #13 + vError), '提示', mb_OK);
    end;
  end;
end;

procedure Tfrm_LCLJBJ.btnADDClick(Sender: TObject);
begin
  if Length(Trim(cbbType.Text)) = 0 then
  begin
    Application.MessageBox(Pchar('分类没有输入不能增加。'), '提示', mb_OK);
    cbbType.SetFocus;
    Exit;
  end;
  if Length(Trim(edtcode.Text)) = 0 then
  begin
    Application.MessageBox(Pchar('没有编码不能增加。'), '提示', mb_OK);
    edtcode.SetFocus;
    Exit;
  end;
  if Length(Trim(edtname.Text)) = 0 then
  begin
    Application.MessageBox(Pchar('名称没有输入不能增加。'), '提示', mb_OK);
    edtname.SetFocus;
    Exit;
  end;
  if (Length(edtForAgeF.Text) > 0) or (Length(edtForAgeB.Text) > 0) then
  begin
    if not ((Length(edtForAgeF.Text) > 0) and (Length(edtForAgeB.Text) > 0)) then
    begin
      Application.MessageBox(Pchar('年龄必须是一个范围。'), '提示', mb_OK);
      edtForAgeF.SetFocus;
      Exit;
    end else
    begin
      if StrToInt(Trim(edtForAgeB.Text)) < StrToInt(Trim(edtForAgeF.Text)) then
      begin
        Application.MessageBox(Pchar('年龄范围错误。'), '提示', mb_OK);
        edtForAgeF.SetFocus;
        Exit;
      end;

    end;

  end;
  if lstBZ.Items.Count = 0 then
  begin
    Application.MessageBox(Pchar('必须指定对应病种。'), '提示', mb_OK);
    sxsrchbxjb.SetFocus;
    Exit;
  end;

  case vEditType of
    1: SaveRecord;
    2: EditRecord;
  end;
  if not chkcontine.Checked then
    ModalResult := mrOk
  else
  begin
    vEditType := 1;
    CleareEdit;
    cbbType.SetFocus;
  end;
end;

procedure Tfrm_LCLJBJ.btnBZADDClick(Sender: TObject);
var
  p: PKSInfo;
begin
  if sxsrchbxjb.Value = '' then
  begin
    sxsrchbxjb.SetFocus;
    Exit;
  end;

  if lstBZ.Items.IndexOf(sxsrchbxjb.Text) <> -1 then
  begin
    Application.MessageBox(Pchar('不能重复增加。'), '提示', mb_OK);
    sxsrchbxjb.SetFocus;
    Exit;
  end;
  New(P);
  P.KSID := sxsrchbxjb.Value;
  p.KSMC := sxsrchbxjb.Text;
  lstBZ.Items.AddObject(p.KSMC, TObject(p));
  sxsrchbxjb.SetFocus;
end;

procedure Tfrm_LCLJBJ.btnCancelClick(Sender: TObject);
begin
//  ShowMessage(GetColumnID('LCLJ_LCLJML', 'LJID'));
  GetksID(lstKS);
end;

procedure Tfrm_LCLJBJ.btnKSADDClick(Sender: TObject);
var
  p: PKSInfo;
begin
  if sxsrchbx_zdbz.Value = '' then
  begin
    sxsrchbx_zdbz.SetFocus;
    Exit;
  end;
  if lstKS.Items.IndexOf(sxsrchbx_zdbz.Text) <> -1 then
  begin
    Application.MessageBox(Pchar('不能重复增加。'), '提示', mb_OK);
    sxsrchbx_zdbz.SetFocus;
    Exit;
  end;

  New(P);
  P.KSID := sxsrchbx_zdbz.Value;
  p.KSMC := sxsrchbx_zdbz.Text;
  lstKS.Items.AddObject(p.KSMC, TObject(p));
  sxsrchbx_zdbz.SetFocus;
end;

procedure Tfrm_LCLJBJ.edtForAgeFKeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in ['0'..'9']) then
    if Key <> #8 then
      key := #0;
end;

procedure Tfrm_LCLJBJ.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_DELETE then
  begin
    if activecontrol is TListBox then
      if TListBox(activecontrol).Items.Count > 0 then
        TListBox(activecontrol).Items.Delete(TListBox(activecontrol).ItemIndex);
  end;
  if key = VK_RETURN then
    selectnext(activecontrol as Twincontrol, true, true);
end;

end.

