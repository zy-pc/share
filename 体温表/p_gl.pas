unit p_gl;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  Tfrm_gl = class(TForm)
    edt_1: TEdit;
    procedure edt_1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_gl: Tfrm_gl;
  function gl(var nr:string):Boolean;
implementation
 {$R *.dfm}
function gl(var nr:string):Boolean;
begin
   Application.CreateForm(Tfrm_gl,frm_gl);
   frm_gl.ShowModal;
   nr:=trim(frm_gl.edt_1.Text);
   result := true;
   frm_gl.free;
end;


procedure Tfrm_gl.edt_1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if key = 13 then
    begin
      close;
    end;
end;

end.
