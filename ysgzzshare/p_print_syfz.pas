unit p_print_syfz;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, DB, ADODB;

type
  Tfrm_print_syfz = class(TForm)
    QuickRep1: TQuickRep;
    PageFooterBand1: TQRBand;
    PageHeaderBand1: TQRBand;
    QRSubDetail1: TQRSubDetail;
    xmmc: TQRLabel;
    QRgrImage1: TQRImage;
    yymc: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel35: TQRLabel;
    bqmc: TQRLabel;
    dyrq: TQRLabel;
    QRLabel5: TQRLabel;
    ypyf: TQRLabel;
    sp_syfz: TADOStoredProc;
    bz: TQRLabel;
    brxm: TQRLabel;
    bch: TQRLabel;
    zyh: TQRLabel;
    zxsj: TQRLabel;
    yymc1: TQRLabel;
    QRLabel2: TQRLabel;
    zyh1: TQRLabel;
    zxsj1: TQRLabel;
    bch1: TQRLabel;
    QRLabel7: TQRLabel;
    brxm1: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    bqmc1: TQRLabel;
    dyrq1: TQRLabel;
    xmmc1: TQRLabel;
    QRgrImage2: TQRImage;
    ypyf1: TQRLabel;
    bz1: TQRLabel;
    procedure QRSubDetail1NeedData(Sender: TObject; var MoreData: Boolean);
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_print_syfz: Tfrm_print_syfz;

implementation
    uses p_dm,p_func,p_yzzx;
{$R *.dfm}

procedure Tfrm_print_syfz.QRSubDetail1NeedData(Sender: TObject;
  var MoreData: Boolean);
var
 I: integer;
 yf:string;
begin
MoreData := True;
i:=1;
 if sp_syfz.Eof then
  MoreData := False;
  ypyf.caption:='';
  xmmc.Caption:='';
  bz.caption:='';
 if not sp_syfz.eof then
  begin
   I:=sp_syfz.FieldByName('hs').Asinteger;

   qrgrimage1.enabled:=true;
   qrgrimage1.Top:=1;
   qrgrimage1.left:=ypyf.left-20;
   qrgrimage1.height:=i*ypyf.height;

   QRgrImage2.enabled:=true;
   QRgrImage2.Top:=1;
   QRgrImage2.left:=ypyf1.left-20;
   QRgrImage2.height:=i*ypyf1.height;


   ypyf.Caption:=trim(sp_syfz.FieldByName('yytj').asstring)+'  '+
   trim(sp_syfz.FieldByName('ypyf').asstring);
   bz.caption:=trim(sp_syfz.FieldByName('bz').asstring);
   ypyf.top:= i*ypyf.height div 2;
   xmmc.Width:=150;
   xmmc.caption := sp_syfz.FieldByName('xmmc').Asstring;

   ypyf1.Caption:=trim(sp_syfz.FieldByName('yytj').asstring)+'  '+
   trim(sp_syfz.FieldByName('ypyf').asstring);
   bz1.caption:=trim(sp_syfz.FieldByName('bz').asstring);
   ypyf1.top:= i*ypyf1.height div 2;
   xmmc1.Width:=150;
   xmmc1.caption := sp_syfz.FieldByName('xmmc').Asstring;
  end;
  sp_syfz.Next;
end;

procedure Tfrm_print_syfz.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
sp_syfz.First;
end;

end.
