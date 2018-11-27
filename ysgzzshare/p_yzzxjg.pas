unit p_yzzxjg;

interface

uses
    Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
    Dialogs, ExtCtrls, GridsEh, DBGridEh;

type
    Tfrm_yzzxjg = class(TForm)
        Panel1: TPanel;
        DBGridEh1: TDBGridEh;
        procedure DBGridEh1KeyDown(Sender: TObject; var Key: Word;
            Shift: TShiftState);
        procedure DBGridEh1MouseDown(Sender: TObject; Button: TMouseButton;
            Shift: TShiftState; X, Y: Integer);
    private
    { Private declarations }
    public
    { Public declarations }
    end;

var
    frm_yzzxjg: Tfrm_yzzxjg;

implementation

{$R *.dfm}
uses p_bqgl_zxypyz;

procedure Tfrm_yzzxjg.DBGridEh1KeyDown(Sender: TObject; var Key: Word;
    Shift: TShiftState);
begin
    if key = 27 then
    begin
        close;
    end;
end;

procedure Tfrm_yzzxjg.DBGridEh1MouseDown(Sender: TObject; Button: TMouseButton;
    Shift: TShiftState; X, Y: Integer);
begin
    if button = mbRight then
    begin
        close;
    end;
end;

end.

