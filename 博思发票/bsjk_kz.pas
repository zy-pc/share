unit bsjk_kz;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs;

type
  TForm1 = class(TForm)
  private
    { Private declarations }
  public
    { Public declarations }
  end;
Function PAdvConnectKp(aUser,aMm,aTzh:string):integer;StdCall;external 'KpJk.dll' name 'PAdvConnect';
Function PZrPj(ZrTxt:PChar;IsPrn:integer;PjLx,Bz:PChar;Res:PChar):integer;StdCall;external 'KpJk.dll';
var
  Form1: TForm1;

implementation


{$R *.dfm}

end.
