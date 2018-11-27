unit P_LCLJJD;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, cxControls, cxContainer, cxEdit, cxTextEdit,
  cxMaskEdit, cxSpinEdit, Buttons, ADODB, DB;

type
  TFrm_LCLJJD = class(TForm)
    pnlSM: TPanel;
    pnlFL: TPanel;
    pnl3: TPanel;
    bvl1: TBevel;
    img1: TImage;
    lbl1: TLabel;
    lbl2: TLabel;
    pnl4: TPanel;
    lbl3: TLabel;
    lbl4: TLabel;
    cxspndtMIN: TcxSpinEdit;
    lbl5: TLabel;
    cxspndtMAX: TcxSpinEdit;
    lbl6: TLabel;
    lbl7: TLabel;
    chkZYR: TCheckBox;
    chkSSR: TCheckBox;
    chkFMR: TCheckBox;
    chkCYR: TCheckBox;
    lbl8: TLabel;
    mmoMC: TMemo;
    lbl9: TLabel;
    cbbFL: TComboBox;
    lbl10: TLabel;
    mmoSM: TMemo;
    bvl2: TBevel;
    btnOK: TBitBtn;
    btnCancel: TBitBtn;
    procedure chkSSRClick(Sender: TObject);
    procedure chkFMRClick(Sender: TObject);
    procedure cxspndtMINPropertiesChange(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    vJDID, vFJDID: string;
    vXH, vMinTS, vMAXTs: Integer;
    vBZZYR: Integer; //·����׼סԺ��
    vLJJDQuy: TADOQuery;
    vFirst, vLast: Boolean;
    vShowFL: Boolean;
    procedure GetTs;
    procedure SaveData(BZ: string);
    procedure SetMC;
    procedure ShowData;
    procedure ShowFl;
    procedure SetBZChk(JDID: string);
  public
    { Public declarations }
  end;
function SetJD(JDID, FJDID: string; LJJDQuy: TADOQuery; XH, BZZYR: Integer): Boolean;
implementation

{$R *.dfm}

function SetJD(JDID, FJDID: string; LJJDQuy: TADOQuery; XH, BZZYR: Integer): Boolean;
var
  Frm_LCLJJD: TFrm_LCLJJD;
begin
  Frm_LCLJJD := TFrm_LCLJJD.Create(Application);
  with Frm_LCLJJD do
  begin
    Result := False;
    vJDID := JDID;
    vFJDID := FJDID;
    vLJJDQuy := LJJDQuy;
    vBZZYR := BZZYR;
    vXH := XH;
    GetTs;
    ShowData;
    if ShowModal = mrOk then
      Result := True;
    Free;
  end;
end;

procedure TFrm_LCLJJD.GetTs;
begin
  vMinTS := 1;
  vMAXTs := 999;
  vFirst := False;
  vLast := False;
  vLJJDQuy.Filtered := False;
  vLJJDQuy.Sort := 'FID DESC,XH ';
  vLJJDQuy.Last;
  if vLJJDQuy.FieldByName('JDID').AsString = vJDID then
    vLast := True;
  if vLJJDQuy.Locate('JDID', vJDID, []) then
  begin
    if (vLJJDQuy.FieldByName('XH').AsInteger = 1) and (vLJJDQuy.FieldByName('FID').IsNull) then
      vFirst := True;
    vLJJDQuy.Prior;
    if (vLJJDQuy.FieldByName('JDID').AsString <> vJDID) and
      (vLJJDQuy.FieldByName('FID').IsNull)
      then
      if (not vLJJDQuy.FieldByName('JSTS').IsNull) and (vLJJDQuy.FieldByName('JSTS').AsInteger <> 0) then
        vMinTS := vLJJDQuy.FieldByName('JSTS').AsInteger + 1
      else
        if not vLJJDQuy.FieldByName('KSTS').IsNull then
          vMinTS := vLJJDQuy.FieldByName('KSTS').AsInteger + 1;
  end;
  if vLJJDQuy.Locate('JDID', vJDID, []) then
  begin
    vLJJDQuy.Next;
    if (vLJJDQuy.FieldByName('JDID').AsString <> vJDID) and
      (vLJJDQuy.FieldByName('FID').IsNull)
      then
      if not vLJJDQuy.FieldByName('KSTS').IsNull then
        vMAXTs := vLJJDQuy.FieldByName('KSTS').AsInteger;

  end;
  vLJJDQuy.Filtered := True;
end;

procedure TFrm_LCLJJD.ShowData;
begin
  if not vLJJDQuy.FieldByName('FID').IsNull then
    vShowFL := True
  else
    vShowFL := False;

  if vShowFL then
  begin
    cxspndtMIN.Enabled := False;
    cxspndtMAX.Enabled := False;
    chkZYR.Enabled := False;
    chkSSR.Enabled := False;
    chkFMR.Enabled := False;
    chkCYR.Enabled := False;
    mmoMC.Enabled := False;
    mmoMC.Color := clGrayText;
    pnlSM.Enabled := False;
    pnlFL.Visible := True;
    cbbFL.Text := vLJJDQuy.FieldByName('FL').AsString;
    ShowFl;
    Height := 434;
  end else
    Height := 396;
  if vLJJDQuy.FieldByName('KSTS').IsNull then
    cxspndtMIN.Text := IntToStr(vMinTS)
  else
    cxspndtMIN.Text := vLJJDQuy.FieldByName('KSTS').AsString;
  cxspndtMAX.Text := vLJJDQuy.FieldByName('JSTS').AsString;
  mmoSM.Lines.Text := vLJJDQuy.FieldByName('SM').AsString;
  SetBZChk(vLJJDQuy.FieldByName('JDID').AsString);
end;

procedure TFrm_LCLJJD.btnOKClick(Sender: TObject);
var
  vBZ: string;
  function ChkBZStr(vBZNum: Integer): Boolean;
  var
    vBZStr: string;
  begin
    vLJJDQuy.Filtered := False;
    vLJJDQuy.First;
    Result := False;
    while not vLJJDQuy.Eof do
    begin
      if not vLJJDQuy.FieldByName('BZ').IsNull then
      begin
        vBZStr := vLJJDQuy.FieldByName('BZ').AsString;
        if Copy(vBZStr, vBZNum, 1) = '1' then
          if vLJJDQuy.FieldByName('JDID').AsString <> vJDID then
          begin
            Result := True;
            vLJJDQuy.Filtered := True;
            Break;
          end;
      end;
      vLJJDQuy.Next;
    end;
    vLJJDQuy.Filtered := True;
  end;
begin
  if not vShowFL then
  begin
    if (StrToInt(cxspndtMIN.Text) < (vMinTS - 1)) then
    begin
      Application.MessageBox('��ʼ��������С����һ���׶ο�ʼ������', '��ʾ',
        MB_OK + MB_ICONINFORMATION);
      cxspndtMIN.SetFocus;
      Exit;
    end;

    if (cxspndtMAX.Text <> '0') and (cxspndtMAX.Text <> '') then
    begin
      if StrToInt(cxspndtMAX.Text) <= StrToInt(cxspndtMIN.Text) then
      begin
        Application.MessageBox('��������Ӧ���ڿ�ʼ������', '��ʾ', MB_OK +
          MB_ICONINFORMATION);
        cxspndtMAX.SetFocus;
        Exit;
      end;
      if (StrToInt(cxspndtMAX.Text) > vMaxTS) then
      begin
        Application.MessageBox('�����������ܴ�����һ���׶εĿ���������', '��ʾ',
          MB_OK + MB_ICONINFORMATION);
        cxspndtMAX.SetFocus;
        Exit;
      end;
      if (StrToInt(cxspndtMAX.Text) > vBZZYR) then
      begin
        Application.MessageBox(PChar('��ǰʱ��׶εĽ�������' + cxspndtMAX.Text +
          '����ڱ�׼סԺ��ָ�����������' + intTostr(vBZZYR) + '��'), '��ʾ',
          MB_OK + MB_ICONINFORMATION);
        cxspndtMAX.SetFocus;
        Exit;
      end;
    end else
      if (StrToInt(cxspndtMIN.Text) > (vMaxTS)) then
      begin
        Application.MessageBox('�����������ܴ�����һ���׶εĿ���������', '��ʾ',
          MB_OK + MB_ICONINFORMATION);
        cxspndtMIN.SetFocus;
        Exit;
      end else
        if (StrToInt(cxspndtMIN.Text) > vBZZYR) then
        begin
          Application.MessageBox(PChar('��ǰʱ��׶εĽ�������' + cxspndtMIN.Text +
            '����ڱ�׼סԺ��ָ�����������' + intTostr(vBZZYR) + '��'), '��ʾ',
            MB_OK + MB_ICONINFORMATION);
          cxspndtMIN.SetFocus;
          Exit;
        end;


    vBZ := '';

    if chkZYR.Checked then
    begin
      if not vFirst then
      begin
        Application.MessageBox('ֻ�е�һ��ʱ��׶β�������ΪסԺ�գ�', '��ʾ',
          MB_OK + MB_ICONINFORMATION);
        chkZYR.SetFocus;
        Exit;
      end;
      if ChkBZStr(1) then
      begin
        Application.MessageBox('�Ѿ�������ʱ��׶�����ΪסԺ�գ�', '��ʾ',
          MB_OK + MB_ICONINFORMATION);
        chkZYR.SetFocus;
        Exit;
      end;
      vBZ := '1';
    end else
      vBZ := '0';
    if chkSSR.Checked then
    begin
      if ChkBZStr(2) then
      begin
        Application.MessageBox('�Ѿ�������ʱ��׶�����Ϊ�����գ�', '��ʾ',
          MB_OK + MB_ICONINFORMATION);
        chkSSR.SetFocus;
        Exit;
      end;
      vBZ := vBZ + '1';
    end else
      vBZ := vBZ + '0';
    if chkFMR.Checked then
    begin
      if ChkBZStr(3) then
      begin
        Application.MessageBox('�Ѿ�������ʱ��׶�����Ϊ�����գ�', '��ʾ',
          MB_OK + MB_ICONINFORMATION);
        chkFMR.SetFocus;
        Exit;
      end;
      vBZ := vBZ + '1';
    end else
      vBZ := vBZ + '0';
    if chkCYR.Checked then
    begin
      if not vLast then
      begin
        Application.MessageBox('ֻ�����ʱ��׶β�����Ϊ��Ժ�գ�', '��ʾ', MB_OK
          + MB_ICONINFORMATION);
        chkCYR.SetFocus;
        Exit;
      end;
      if ChkBZStr(4) then
      begin
        Application.MessageBox('�Ѿ�������ʱ��׶�����Ϊ��Ժ�գ�', '��ʾ',
          MB_OK + MB_ICONINFORMATION);
        chkCYR.SetFocus;
        Exit;
      end;
      vBZ := vBZ + '1';
    end else
      vBZ := vBZ + '0';

    if vBZ <> '0000' then
      SaveData(vBZ)
    else
      SaveData('');
  end else
    SaveData('');
  ModalResult := mrOk;
end;

procedure TFrm_LCLJJD.chkFMRClick(Sender: TObject);
begin
  if chkSSR.Checked then
    chkFMR.Checked := False;
  SetMC;
end;

procedure TFrm_LCLJJD.chkSSRClick(Sender: TObject);
begin
  if chkFMR.Checked then
    chkSSR.Checked := False;
  SetMC;
end;

procedure TFrm_LCLJJD.cxspndtMINPropertiesChange(Sender: TObject);
begin
  SetMC;
end;

procedure TFrm_LCLJJD.FormShow(Sender: TObject);
begin
  if not vLJJDQuy.FieldByName('MC').IsNull then
    mmoMC.Lines.Text := vLJJDQuy.FieldByName('MC').AsString
  else
    SetMC;
end;

procedure TFrm_LCLJJD.SetMC;
var
  vMC, vBZ: string;
begin
  vMC := 'סԺ��' + cxspndtMIN.Text;
  if (cxspndtMAX.Text <> '0') and (cxspndtMAX.Text <> '') then
    vMC := vMC + '-' + cxspndtMAX.Text + '��' + #13
  else
    vMC := vMC + '��' + #13;
  vBZ := '';
  if chkZYR.Checked then
    if vBZ = '' then
      vBZ := 'סԺ��'
    else
      vBZ := vBZ + ',' + 'סԺ��';
  if chkSSR.Checked then
    if vBZ = '' then
      vBZ := '������'
    else
      vBZ := vBZ + ',' + '������';
  if chkFMR.Checked then
    if vBZ = '' then
      vBZ := '������'
    else
      vBZ := vBZ + ',' + '������';
  if chkCYR.Checked then
    if vBZ = '' then
      vBZ := '��Ժ��'
    else
      vBZ := vBZ + ',' + '��Ժ��';
  if vBZ <> '' then
    vMC := vMC + '(' + vBZ + ')';
  mmoMC.Lines.Text := vMC;
end;

procedure TFrm_LCLJJD.SetBZChk(JDID: string);
var
  OldFilter: string;
  vBZ, vFID: string;
begin
  if vLJJDQuy.Filtered then
  begin
    vLJJDQuy.Filtered := False;
    OldFilter := vLJJDQuy.Filter;
  end;
  vLJJDQuy.Filter := 'JDID=' + #39 + JDID + #39;
  vLJJDQuy.Filtered := True;
  vBZ := '';
  if not vLJJDQuy.FieldByName('FID').IsNull then
  begin
    vFID := vLJJDQuy.FieldByName('FID').AsString;
    vLJJDQuy.Filtered := False;
    vLJJDQuy.Filter := 'JDID=' + #39 + vFID + #39;
    vLJJDQuy.Filtered := True;
  end;
  if not vLJJDQuy.FieldByName('BZ').IsNull then
    vBZ := vLJJDQuy.FieldByName('BZ').AsString;
  if vBZ <> '' then
  begin
    vBZ := vLJJDQuy.FieldByName('BZ').AsString;
    if Copy(vBZ, 1, 1) = '1' then
      chkZYR.Checked := True;
    if Copy(vBZ, 2, 1) = '1' then
      chkSSR.Checked := True;
    if Copy(vBZ, 3, 1) = '1' then
      chkFMR.Checked := True;
    if Copy(vBZ, 4, 1) = '1' then
      chkCYR.Checked := True;
  end;
  vLJJDQuy.Filtered := False;
  vLJJDQuy.Filter := OldFilter;
  vLJJDQuy.Filtered := True;
end;

procedure TFrm_LCLJJD.ShowFl;
begin
  if vLJJDQuy.Filtered then
    vLJJDQuy.Filtered := False;
  vLJJDQuy.First;
  cbbFL.Items.Clear;
  while not vLJJDQuy.Eof do
  begin
    if not vLJJDQuy.FieldByName('FL').IsNull then
      cbbFL.Items.Add(vLJJDQuy.FieldByName('FL').AsString);
    vLJJDQuy.Next;
  end;
  vLJJDQuy.Filtered := True;
end;

procedure TFrm_LCLJJD.SaveData(BZ: string);
begin
  vLJJDQuy.Edit;
  vLJJDQuy.FieldByName('KSTS').AsInteger := StrToInt(cxspndtMIN.Text);
  if cxspndtMAX.Text <> '' then
    vLJJDQuy.FieldByName('JSTS').AsInteger := StrToInt(cxspndtMAX.Text);
  vLJJDQuy.FieldByName('MC').AsString := mmoMC.Lines.Text;
  if vFJDID <> '' then
    vLJJDQuy.FieldByName('FID').AsString := vFJDID;
  if BZ <> '' then
    vLJJDQuy.FieldByName('BZ').AsString := BZ;
  if Length(mmoSM.Lines.Text) > 0 then
    vLJJDQuy.FieldByName('SM').AsString := mmoSM.Lines.Text;
  if vShowFL then
    if cbbFL.Text <> '' then
      vLJJDQuy.FieldByName('FL').AsString := cbbFL.Text;
  vLJJDQuy.Post;
end;
end.

