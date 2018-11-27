unit p_rqlr;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar;

type
  Tfrm_rqlr = class(TForm)
    cxdtdt1: TcxDateEdit;
    procedure cxdtdt1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_rqlr: Tfrm_rqlr;
  xg:Boolean = false;
implementation

{$R *.dfm}

procedure Tfrm_rqlr.cxdtdt1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key = 13 then
   begin
     xg := true;
     close;
   end;
end;

procedure Tfrm_rqlr.FormShow(Sender: TObject);
begin
//cxdtdt1.Date := now;
cxdtdt1.SetFocus;
end;

end.
