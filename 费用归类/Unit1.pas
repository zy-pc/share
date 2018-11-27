unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls;

type
  Tfrm_main = class(TForm)
    Button1: TButton;
    StatusBar1: TStatusBar;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
      procedure MyIdleHandler( Sender: TObject; var Done: Boolean );
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_main: Tfrm_main;

implementation
 uses Unit2,p_dm;
{$R *.dfm}

procedure Tfrm_main.Button1Click(Sender: TObject);
begin
  application.CreateForm( TForm2, Form2 );
  try
    Form2.ShowModal;
  finally
    Form2.free;
  end;
end;
 procedure Tfrm_main.MyIdleHandler( Sender: TObject; var Done: Boolean );
begin
  StatusBar1.Panels[2].Text := '本机时间:' + formatdatetime( 'yyyy-mm-dd hh:mm:ss', now );
end;
procedure Tfrm_main.FormCreate(Sender: TObject);
begin
  Application.OnIdle := MyIdleHandler;
  username := 'sys_zxjf';
  pub_cxlb := '';
end;

end.
