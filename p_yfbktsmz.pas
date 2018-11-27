unit p_yfbktsmz;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, OleCtrls, SHDocVw,p_mzblinput, StdCtrls,StrUtils;

type
  Tfrm_yfbktsmz = class(TForm)
    WebBrowser1: TWebBrowser;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_yfbktsmz: Tfrm_yfbktsmz;

implementation
var yfbkts : string;
{$R *.dfm}

procedure Tfrm_yfbktsmz.Button1Click(Sender: TObject);
begin
      close;
end;

procedure Tfrm_yfbktsmz.FormCreate(Sender: TObject);
begin
      yfbkts := LeftStr( frm_mzblinput.yfbktsmz,70);
      WebBrowser1.Navigate(yfbkts);
end;

end.
