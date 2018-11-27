unit p_postkfs;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, StdCtrls, cxButtons, ExtCtrls;

type
  Tfrm_postkfs = class( TForm )
    pnl1: TPanel;
    rb1: TRadioButton;
    rb2: TRadioButton;
    cxbut_1: TcxButton;
    procedure cxbut_1Click( Sender: TObject );
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_postkfs: Tfrm_postkfs;

implementation
uses
  P_mztf;
{$R *.dfm}

procedure Tfrm_postkfs.cxbut_1Click( Sender: TObject );
begin
  if rb1.Checked then
  begin
    frm_mztf.pos_tkfs := '1';
  end
  else
  begin
    frm_mztf.pos_tkfs := '2';
  end;
  Close;
end;

end.

