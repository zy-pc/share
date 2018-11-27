unit p_print_jybq;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, DB, ADODB, uHSBarCodeImage;

type
  Tfrm_print_jybq = class(TForm)
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    QRSubDetail1: TQRSubDetail;
    xmmc: TQRLabel;
    sp_jyxm: TADOStoredProc;
    p_xm: TQRLabel;
    p_xb: TQRLabel;
    p_nl: TQRLabel;
    p_bch: TQRLabel;
    p_ks: TQRLabel;
    p_ryzd: TQRLabel;
    p_zyh: TQRLabel;
    BARCODE: THSBarCodeImage;
    p_jyh: TQRImage;
    procedure QRSubDetail1NeedData(Sender: TObject; var MoreData: Boolean);
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure PageHeaderBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRSubDetail1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure p_zyhPrint(sender: TObject; var Value: string);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_print_jybq: Tfrm_print_jybq;
  jyfzbh:string;

implementation
    uses p_dm,p_func,p_yzzx,p_jyspqdy;
{$R *.dfm}



procedure Tfrm_print_jybq.PageHeaderBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
//p_zyh.Visible:=true;
p_zyh.Caption:=trim(sp_jyxm.FieldByName('jyyb').asstring);
//p_zyh.Caption:='';
p_xm.Caption:=trim(sp_jyxm.FieldByName('brxm').asstring)+';';
p_xb.Caption:=trim(sp_jyxm.FieldByName('brxb').asstring)+';';
p_nl.Caption:=copy(trim(sp_jyxm.FieldByName('brnl').asstring),1,2)+'ÀÍ;';
p_bch.Caption:=trim(sp_jyxm.FieldByName('bch').asstring)+';';
p_ks.Caption:=trim(sp_jyxm.FieldByName('ksmc').asstring)+';';
p_ryzd.Caption:=trim(sp_jyxm.FieldByName('ryzd').asstring);
barcode.barcode:=jyfzbh;
p_jyh.Width:=barcode.width;
p_jyh.Height:=barcode.Height;
p_jyh.Picture:=barcode.Picture;
{p_xm.Caption:='–’√˚:'+sp_jyxm.FieldByName('brxm').asstring;
p_xb.Caption:='–‘±:'+sp_jyxm.FieldByName('brxb').asstring;
p_nl.Caption:='ƒÍ¡‰:'+sp_jyxm.FieldByName('brnl').asstring;
p_bch.Caption:='≤°¥≤:'+sp_jyxm.FieldByName('bch').asstring;
p_ks.Caption:='ø∆ “:'+sp_jyxm.FieldByName('ksmc').asstring;
p_ryzd.Caption:='’Ô∂œ:'+sp_jyxm.FieldByName('ryzd').asstring;  }

end;

procedure Tfrm_print_jybq.p_zyhPrint(sender: TObject; var Value: string);
begin
if sp_jyxm.FieldByName('jybqdy').asboolean then
 value:='°Ô'+value
 else
 value:=value;
end;

procedure Tfrm_print_jybq.QRSubDetail1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  if jyfzbh<>trim(sp_jyxm.fieldbyname('jyfzbh').asstring) then
  begin
  jyfzbh:=trim(sp_jyxm.fieldbyname('jyfzbh').asstring);
  if not sp_jyxm.eof then
  quickrep1.NewPage;
  end;
end;

procedure Tfrm_print_jybq.QRSubDetail1NeedData(Sender: TObject;
  var MoreData: Boolean);
var
 I: integer;
begin
MoreData := True;
i:=1;
 if sp_jyxm.Eof then
  MoreData := False;
  xmmc.Caption:='';
 if not sp_jyxm.eof then
 begin
   xmmc.caption := sp_jyxm.FieldByName('xmmc').Asstring;
 end;
   sp_jyxm.Next;
end;

procedure Tfrm_print_jybq.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
sp_jyxm.First;
jyfzbh:=trim(sp_jyxm.FieldByName('jyfzbh').asstring);

end;


end.
