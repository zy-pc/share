unit p_tzyzsj;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask;

type
  Tfrm_tzyzsj = class(TForm)
    MaskEdit1: TMaskEdit;
    labe1: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_tzyzsj: Tfrm_tzyzsj;
  sfxse:string;

implementation
uses p_dm,p_func,p_yzinput,p_yzinput_xse;
{$R *.dfm}

procedure Tfrm_tzyzsj.BitBtn1Click(Sender: TObject);
begin
if sfxse='' then
begin
p_yzinput.tzyzqr:=1;
p_yzinput.tzyzsj:=maskedit1.Text;
self.Close;
end
else
begin
p_yzinput_xse.tzyzqr:=1;
p_yzinput_xse.tzyzsj:=maskedit1.Text;
self.Close;
end;
end;

procedure Tfrm_tzyzsj.BitBtn2Click(Sender: TObject);
begin
if sfxse='' then
begin
p_yzinput.tzyzqr:=0;
p_yzinput.tzyzsj:=maskedit1.Text;
self.Close;
end
else
begin
p_yzinput_xse.tzyzqr:=0;
p_yzinput_xse.tzyzsj:=maskedit1.Text;
self.Close;
end;
end;

procedure Tfrm_tzyzsj.FormShow(Sender: TObject);
begin
maskedit1.text:=formatdatetime('yyyy-mm-dd hh:mm:ss',frm_func.curr_date());
end;

end.
