unit p_printerset_mobi_his;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,printers, StdCtrls, Buttons;

type
  Tfrm_printerset_mobi_his = class(TForm)
    ComboBox1: TComboBox;
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
  frm_printerset_mobi_his: Tfrm_printerset_mobi_his;

implementation
 uses p_mobi_twb_display_his;
{$R *.dfm}

procedure Tfrm_printerset_mobi_his.BitBtn1Click(Sender: TObject);
begin
printername:=combobox1.Text;
printerstate:=true;
self.close;
end;

procedure Tfrm_printerset_mobi_his.BitBtn2Click(Sender: TObject);
begin
printername:='';
printerstate:=false;
self.close;
end;

procedure Tfrm_printerset_mobi_his.FormShow(Sender: TObject);
begin
combobox1.Items:=printer.Printers;

end;

end.
