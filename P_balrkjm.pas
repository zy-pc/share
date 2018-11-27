unit P_balrkjm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs;

type
  Tfunc_balr = class(TForm)
  private
    { Private declarations }
  public
    { Public declarations }
//  balr : function(strin, strout:PChar):integer; stdcall;
  procedure balr(dm:string) ;
  procedure balr_bfrb(dm:string);
  end;

var
  func_balr: Tfunc_balr;

implementation
uses P_dm;


{$R *.dfm}

procedure Tfunc_balr.balr(dm:string);
var
  fs:String;
  bl:function(a:string;b:string):boolean;stdcall;
begin
  if username = 'sys_zybl' then
    fs:='1'
  else
    fs:='2';
  bl:=GetProcAddress(LoadLibrary('scsx_balr.dll'),'bagla');
  bl(dm,fs);
end;

procedure Tfunc_balr.balr_bfrb(dm:string);
var
  fs:String;
  bl:function(a:string;b:string):boolean;stdcall;
begin
  if username = 'sys_zybl' then
    fs:='1'
  else
    fs:='2';
  bl:=GetProcAddress(LoadLibrary('scsx_balr.dll'),'baglb');
  bl(dm,fs);
end;

end.
