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
application.messagebox('��ʼ�к�С��2ʱ����ѡ����ʱҽ����ӡ��������ʱҽ������','��ʾ',mb_ok);
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
application.messagebox('�����кű�����ڿ�ʼ�кţ�����������ȷ�ϣ�','��ʾ',mb_ok);
cxmaskedit1.SetFocus;
end

end;

procedure Tfrm_cqyzxdsz.BitBtn2Click(Sender: TObject);
begin
sfdy:=false;
self.close;
end;

end.
