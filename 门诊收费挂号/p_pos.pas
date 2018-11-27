unit p_pos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Menus, cxLookAndFeelPainters, StdCtrls, cxButtons,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxLabel, sldll;

type
  Tfrm_pos = class( TForm )
    Panel1: TPanel;
    t_je: TcxTextEdit;
    b_sk: TcxButton;
    b_tc: TcxButton;
    cxLabel1: TcxLabel;
    cxButton1: TcxButton;
    procedure cxButton1Click( Sender: TObject );
    procedure FormShow(Sender: TObject);
    procedure b_skClick(Sender: TObject);
  private
    { Private declarations }
  public
    pos_je: Double;
    { Public declarations }
  end;

var
  frm_pos: Tfrm_pos;


implementation
uses p_dm, p_func;
{$R *.dfm}

procedure Tfrm_pos.b_skClick(Sender: TObject);
begin
  if tryStrToFloat(t_je.text,pos_je) then begin
    self.ModalResult := mrOk;
  end else begin
    self.ModalResult := mrNone;
  end;
end;

procedure Tfrm_pos.cxButton1Click( Sender: TObject );
begin
  t_je.Text := '0';
  t_je.SetFocus;
end;

procedure Tfrm_pos.FormShow(Sender: TObject);
begin
  t_je.text := FloatToStr(pos_je);
end;


end.

