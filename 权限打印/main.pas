unit main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TForm2 = class(TForm)
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
  Form2: TForm2;

implementation

uses p_print_qxlist;

{$R *.dfm}

procedure TForm2.BitBtn1Click(Sender: TObject);
begin

  application.CreateForm(Tfrm_print_qxlist,frm_print_qxlist);
  try
  frm_print_qxlist.cx_qxdm := '';
  frm_print_qxlist.Tag := 11;
  frm_print_qxlist.cx_czydm := '0110';
  frm_print_qxlist.QRLabel14.Caption := 'ÅúÁ¿ÊÚÈ¨';
  frm_print_qxlist.QuickRep1.Preview;
  finally
  frm_print_qxlist.Free;
  end;

end;

procedure TForm2.BitBtn2Click(Sender: TObject);
begin
  application.CreateForm(Tfrm_print_qxlist,frm_print_qxlist);
  try
  frm_print_qxlist.cx_qxdm := 'YPKJ';
  frm_print_qxlist.cx_czydm := '0110';
  frm_print_qxlist.QuickRep1.Preview;
  finally
  frm_print_qxlist.Free;
  end;
end;

end.
