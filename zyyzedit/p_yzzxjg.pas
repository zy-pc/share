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
        procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
            DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
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

procedure Tfrm_yzzxjg.DBGridEh1DrawColumnCell(Sender: TObject;
    const Rect: TRect; DataCol: Integer; Column: TColumnEh;
    State: TGridDrawState);
begin
//    with Sender as TDbGridEh do
//    begin
//        if trim(frm_zxypyz.sp_yz_plzx.Fieldbyname('jg').asstring) = 'Ê§°Ü' then
//        begin
//            Canvas.Brush.Color := clMoneyGreen;
//        end else
//        begin
//            Canvas.Brush.Color := clwhite;
//            Canvas.Font.Color := clblack;
//        end;
//    end;
//    (Sender as TDbGridEh).DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

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

