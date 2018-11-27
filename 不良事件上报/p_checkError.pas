unit p_checkError;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons;

type
  Tfrm_checkError = class(TForm)
    Memo1: TMemo;
    BitBtn5: TBitBtn;
    procedure BitBtn5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_checkError: Tfrm_checkError;

implementation



{$R *.DFM}

procedure Tfrm_checkError.BitBtn5Click(Sender: TObject);
begin
// frm_balr.pc1.ActivePage:=frm_balr.ts1;
// frm_balr.ComboBox32.setfocus;
 frm_checkerror.Close;
end;

end.
