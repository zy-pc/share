unit p_syj;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, StdCtrls;

type
  Tfrm_syj = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    zyj: TEdit;
    zfy: TEdit;
    zzf: TEdit;
    zdjf: TEdit;
    yjze: TEdit;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Label6: TLabel;
    bcfy: TEdit;
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_syj: Tfrm_syj;

implementation
uses p_dm,p_zysf_yjjf;

{$R *.DFM}

procedure Tfrm_syj.FormShow(Sender: TObject);
begin
zy_syj:=false;
end;

procedure Tfrm_syj.SpeedButton1Click(Sender: TObject);
begin
if strtofloat(floattostr(zy_yjje))<=strtofloat(yjze.text) then
 begin
  zy_syj:=true;
  zy_yjje:=strtofloat(yjze.text);
  self.close;
 end
 else
  begin
   application.MessageBox('所交金额不足支付本次费用，请确认！','提示',0+16);
   yjze.setfocus;
  end;

end;

procedure Tfrm_syj.SpeedButton2Click(Sender: TObject);
begin
 zy_syj:=false;
 self.close;
end;
initialization
  RegisterClass(Tfrm_syj);
end.
