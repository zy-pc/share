unit p_xgyzzxsj;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask;

type
  Tfrm_xgyzzxsj = class(TForm)
    MaskEdit1: TMaskEdit;
    labe1: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    MaskEdit2: TMaskEdit;
    Label1: TLabel;
    Label2: TLabel;
    CheckBox1: TCheckBox;
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_xgyzzxsj: Tfrm_xgyzzxsj;
  sfxse:string;

implementation
uses p_dm,p_func,p_yzinput,p_yzinput_xse;
{$R *.dfm}

procedure Tfrm_xgyzzxsj.BitBtn1Click(Sender: TObject);
begin
if sfxse='新生儿' then
begin
p_yzinput_xse.bz:=false;
if CheckBox1.Checked then
p_yzinput_xse.sgtzbz:=false
else
p_yzinput_xse.sgtzbz:=true;
p_yzinput_xse.tzyzsj:=maskedit1.Text;
p_yzinput_xse.kdyzsj:=maskedit2.Text;
self.Close;
end
else
begin
p_yzinput.bz:=false;
if CheckBox1.Checked then
p_yzinput.sgtzbz:=false
else
p_yzinput.sgtzbz:=true;
p_yzinput.tzyzsj:=maskedit1.Text;
p_yzinput.kdyzsj:=maskedit2.Text;
self.Close;
end;
end;

procedure Tfrm_xgyzzxsj.BitBtn2Click(Sender: TObject);
begin
if sfxse='新生儿' then
begin
p_yzinput_xse.bz:=true;
p_yzinput_xse.tzyzsj:=maskedit1.Text;
p_yzinput_xse.kdyzsj:=maskedit2.Text;
self.Close;
end
else
begin
p_yzinput.bz:=true;
p_yzinput.tzyzsj:=maskedit1.Text;
p_yzinput.kdyzsj:=maskedit2.Text;
self.Close;
end;
end;

procedure Tfrm_xgyzzxsj.FormShow(Sender: TObject);
begin
//maskedit1.text:=formatdatetime('yyyy-mm-dd hh:mm:ss',frm_func.curr_date());
CheckBox1.Checked:=true;

end;

end.
