unit P_LCLJBZSZ;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls, ComCtrls, cxControls, cxContainer, cxEdit,
  cxTextEdit, cxMaskEdit, cxSpinEdit, Buttons, ADODB;

type
  TFrm_LCLJBZSZ = class(TForm)
    bvl1: TBevel;
    img1: TImage;
    lbl1: TLabel;
    lbl2: TLabel;
    grpZYR: TGroupBox;
    rbZYR: TRadioButton;
    rbZYRRange: TRadioButton;
    cxspndtZYRMIN: TcxSpinEdit;
    cxspndtZYR: TcxSpinEdit;
    cxspndtZYRMAX: TcxSpinEdit;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    grpFy: TGroupBox;
    rbFY: TRadioButton;
    cxspndtFY: TcxSpinEdit;
    lbl6: TLabel;
    rbFYRange: TRadioButton;
    cxspndtFYMIN: TcxSpinEdit;
    lbl7: TLabel;
    cxspndtFYMAX: TcxSpinEdit;
    lbl8: TLabel;
    mmoSM: TMemo;
    lbl9: TLabel;
    bvl2: TBevel;
    btnsave: TBitBtn;
    btn2: TBitBtn;
    lbl10: TLabel;
    procedure rbZYRClick(Sender: TObject);
    procedure rbFYClick(Sender: TObject);
    procedure btnsaveClick(Sender: TObject);
  private
    { Private declarations }
    vMaxZYR: Integer; //最大的住院日
    vLJID, vBZZYR, vBZFY: string;
    vBBH: Integer;
    vBBHQuy: TADOQuery;
    procedure ShowData;
    procedure ChangeData;
  public
    { Public declarations }
  end;


function LCLJBZSZ(LJID: string; BBHQuy: TADOQuery; var BBH: Integer): Integer;
implementation
uses p_dm, p_func,P_Public;
{$R *.dfm}

function LCLJBZSZ(LJID: string; BBHQuy: TADOQuery; var BBH: Integer): Integer;
var
  Frm_LCLJBZSZ: TFrm_LCLJBZSZ;
begin
  Frm_LCLJBZSZ := TFrm_LCLJBZSZ.Create(Application);
  with Frm_LCLJBZSZ do
  begin
    vBBHQuy := BBHQuy;
    vLJID := LJID;
    vBBH := BBH;
    ShowData;
    if ShowModal = mrOK then
    begin
      BBH := vBBH;
      Result := vMaxZYR;
    end
    else
      Result := -1;
    Free;
  end;
end;



procedure TFrm_LCLJBZSZ.btnsaveClick(Sender: TObject);
begin
  if rbZYR.Checked then
    if cxspndtZYR.Text = '0' then
    begin
      Application.MessageBox('请输入有效的日期！', '提示', MB_OK +
        MB_ICONINFORMATION);
      cxspndtZYR.SetFocus;
      Exit;
    end;
  if rbZYRRange.Checked then
  begin
    if cxspndtZYRMAX.Text = '0' then
    begin
      Application.MessageBox('请输入有效的日期！', '提示', MB_OK +
        MB_ICONINFORMATION);
      cxspndtZYRMAX.SetFocus;
      Exit;
    end;

    if cxspndtZYRMIN.Text = '0' then
    begin
      Application.MessageBox('请输入有效的日期！', '提示', MB_OK +
        MB_ICONINFORMATION);
      cxspndtZYRMIN.SetFocus;
      Exit;
    end;
  end;
  if rbFY.Checked then
    if cxspndtFY.Text = '0' then
    begin
      Application.MessageBox('请输入有效的费用！', '提示', MB_OK +
        MB_ICONINFORMATION);
      cxspndtFY.SetFocus;
      Exit;
    end;
  if rbFYRange.Checked then
  begin
    if cxspndtFYMIN.Text = '0' then
    begin
      Application.MessageBox('请输入有效的费用！', '提示', MB_OK +
        MB_ICONINFORMATION);
      cxspndtFYMIN.SetFocus;
      Exit;
    end;
    if cxspndtFYMAX.Text = '0' then
    begin
      Application.MessageBox('请输入有效的费用！', '提示', MB_OK +
        MB_ICONINFORMATION);
      cxspndtFYMAX.SetFocus;
      Exit;
    end;
  end;

  if rbZYR.Checked then
  begin
    vBZZYR := cxspndtZYR.Text;
    vMaxZYR := StrToIntDef(vBZZYR, 0);
  end;

  if rbZYRRange.Checked then
    if StrToInt(cxspndtZYRMAX.Text) <= StrToInt(cxspndtZYRMIN.Text) then
    begin
      Application.MessageBox('日期范围有误请重输！', '提示', MB_OK +
        MB_ICONINFORMATION);
      cxspndtZYRMIN.SetFocus;
      Exit;
    end else
    begin
      vBZZYR := cxspndtZYRMIN.Text + '-' + cxspndtZYRMAX.Text;
      vMaxZYR := StrToIntDef(cxspndtZYRMAX.Text, 0);
    end;

  if rbFY.Checked then
    vBZFY := cxspndtFY.Text;
  if rbFYRange.Checked then
    if StrToFloat(cxspndtFYMAX.Text) <= StrToFloat(cxspndtFYMIN.Text) then
    begin
      Application.MessageBox('费用范围有误请重输！', '提示', MB_OK +
        MB_ICONINFORMATION);
      cxspndtFYMIN.SetFocus;
      Exit;
    end else
      vBZFY := cxspndtFYMIN.Text + '-' + cxspndtFYMAX.Text;
  ChangeData;
  ModalResult := mrOk;
end;

procedure TFrm_LCLJBZSZ.ChangeData;
begin
  if vBBHQuy.RecordCount = 0 then
  begin
    vBBHQuy.Append;
    vBBHQuy.FieldByName('LJID').AsString := vLJID;
    vBBH := GetBBH(vLJID);
    vBBHQuy.FieldByName('BBH').AsInteger := vBBH;
    vBBHQuy.FieldByName('CJR').AsString := pub_czyxm;
    vBBHQuy.FieldByName('CJSJ').AsString := frm_func.func_getServerDateTime;
    vBBHQuy.FieldByName('BZZYR').AsString := vBZZYR;
    vBBHQuy.FieldByName('BZFY').AsString := vBZFY;
    vBBHQuy.FieldByName('BBSM').AsString := mmoSM.Lines.Text;
    vBBHQuy.Post;
  end else
  begin
    vBBHQuy.Edit;
    vBBHQuy.FieldByName('BZZYR').AsString := vBZZYR;
    vBBHQuy.FieldByName('BZFY').AsString := vBZFY;
    vBBHQuy.FieldByName('BBSM').AsString := mmoSM.Lines.Text;
    vBBHQuy.Post;
  end;

end;

procedure TFrm_LCLJBZSZ.ShowData;
var
  vZYR, vFY: string;
  vPos: Integer;
begin
  if vBBHQuy.RecordCount > 0 then
  begin
    vZYR := vBBHQuy.FieldByName('BZZYR').AsString;
    vFY := vBBHQuy.FieldByName('BZFY').AsString;
    vPos := Pos('-', vZYR);
    if vPos <> 0 then
    begin
      cxspndtZYRMIN.Text := Copy(vZYR, 1, vPos - 1);
      cxspndtZYRMAX.Text := Copy(vZYR, vPos + 1, length(vZYR));
      rbZYRRange.Checked := True;
    end else
    begin
      cxspndtZYR.Text := vZYR;
      rbZYR.Checked := True;
    end;
    vPos := Pos('-', vFY);
    if vPos <> 0 then
    begin
      cxspndtFYMIN.Text := Copy(vFY, 1, vPos - 1);
      cxspndtFYMAX.Text := Copy(vFY, vPos + 1, length(vFY));
      rbFYRange.Checked := True;
    end else
    begin
      cxspndtFY.Text := vFY;
      rbFY.Checked := True;
    end;
    mmoSM.Lines.Add(vBBHQuy.FieldByName('BBSM').AsString);
  end;
end;

procedure TFrm_LCLJBZSZ.rbFYClick(Sender: TObject);
begin
  if rbFY.Checked then
    cxspndtFY.Enabled := True
  else
    cxspndtFY.Enabled := False;
  if rbFYRange.Checked then
  begin
    cxspndtFYMIN.Enabled := True;
    cxspndtFYMAX.Enabled := True;
  end else
  begin
    cxspndtFYMIN.Enabled := False;
    cxspndtFYMAX.Enabled := False;
  end;
end;

procedure TFrm_LCLJBZSZ.rbZYRClick(Sender: TObject);
begin
  if rbZYR.Checked then
    cxspndtZYR.Enabled := True
  else
    cxspndtZYR.Enabled := False;
  if rbZYRRange.Checked then
  begin
    cxspndtZYRMIN.Enabled := True;
    cxspndtZYRMAX.Enabled := True;
  end else
  begin
    cxspndtZYRMIN.Enabled := False;
    cxspndtZYRMAX.Enabled := False;
  end;
end;

end.

