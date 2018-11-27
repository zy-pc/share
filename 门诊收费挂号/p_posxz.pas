unit p_posxz;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, StdCtrls, cxButtons, ExtCtrls;

type
  Tfrm_posxz = class(TForm)
    Panel1: TPanel;
    cxButton2: TcxButton;
    cxButton1: TcxButton;
    Label1: TLabel;
    cbb_pos: TComboBox;
    procedure cxButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cbb_posKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    posh : string;
    { Public declarations }
  end;

var
  frm_posxz: Tfrm_posxz;

implementation

{$R *.dfm}

procedure Tfrm_posxz.cbb_posKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 13 then
  begin
    cxButton1.SetFocus;
  end;
end;

procedure Tfrm_posxz.cxButton1Click(Sender: TObject);
begin
  posh := Copy(cbb_pos.Text,1,Pos('-',cbb_pos.Text)-1);
  Close;
end;

procedure Tfrm_posxz.cxButton2Click(Sender: TObject);
begin
  Close;
end;

procedure Tfrm_posxz.FormShow(Sender: TObject);
begin
  posh := '';
  cbb_pos.SetFocus;
end;

end.
