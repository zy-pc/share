unit p_printerset;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,printers, StdCtrls, Buttons;

type
  Tfrm_printerset = class(TForm)
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
  frm_printerset: Tfrm_printerset;

implementation
 uses p_dm,p_func;
{$R *.dfm}

procedure Tfrm_printerset.BitBtn1Click(Sender: TObject);
begin
printername:=combobox1.Text;
printerstate:=true;
self.close;
end;

procedure Tfrm_printerset.BitBtn2Click(Sender: TObject);
begin
printername:='';
printerstate:=false;
self.close;
end;

procedure Tfrm_printerset.FormShow(Sender: TObject);
begin
combobox1.Items:=printer.Printers;

end;

end.
