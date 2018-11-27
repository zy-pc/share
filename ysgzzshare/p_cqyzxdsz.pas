unit p_cqyzxdsz;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, StdCtrls, Buttons;

type
  Tfrm_cqyzxdsz = class(TForm)
    Label1: TLabel;
    Memo1: TMemo;
    cxMaskEdit1: TcxMaskEdit;
    cxMaskEdit2: TcxMaskEdit;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_cqyzxdsz: Tfrm_cqyzxdsz;

implementation
  uses p_dm,p_func,p_cqyzxd;
{$R *.dfm}

procedure Tfrm_cqyzxdsz.BitBtn1Click(Sender: TObject);
begin
if strtoint(cxmaskedit1.Text)<=1 then
begin
application.messagebox('开始行号小于2时，请选择临时医嘱打印而不是临时医嘱续打！','提示',mb_ok);
cxmaskedit1.SetFocus;
end
else
if (strtoint(cxmaskedit1.Text)<strtoint(cxmaskedit2.Text)) or (strtoint(cxmaskedit2.Text)=0)then
begin
  kshs:=strtoint(cxmaskedit1.Text);
  jshs:=strtoint(cxmaskedit2.Text);
  sfdy:=true;
  self.close;
end
else
begin
application.messagebox('结束行号必须大于开始行号，请重新输入确认！','提示',mb_ok);
cxmaskedit1.SetFocus;
end

end;

procedure Tfrm_cqyzxdsz.BitBtn2Click(Sender: TObject);
begin
sfdy:=false;
self.close;
end;

end.
