unit p_blsj_checkError;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons;

type
  Tfrm_blsj_checkError = class(TForm)
    Memo1: TMemo;
    BitBtn5: TBitBtn;
    procedure BitBtn5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_blsj_checkError: Tfrm_blsj_checkError;

implementation

{$R *.DFM}

procedure Tfrm_blsj_checkError.BitBtn5Click(Sender: TObject);
begin
self.Close;
end;

end.
