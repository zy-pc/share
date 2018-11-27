unit p_hlsjprint;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, ExtCtrls, DB, ADODB, HTTPApp, DBWeb, DBBdeWeb,
  StdCtrls;

type
  Thlsjprint = class(TForm)
    QuickRep1: TQuickRep;
    TitleBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRBand1: TQRBand;
    QRSubDetail4: TQRSubDetail;
    QRLabel37: TQRLabel;
    QRSubDetail1: TQRSubDetail;
    ssqk: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel17: TQRLabel;
    QRSubDetail2: TQRSubDetail;
    hssh: TQRLabel;
    QRSubDetail3: TQRSubDetail;
    jfqk: TQRLabel;
    GroupHeaderBand2: TQRBand;
    QRLabel5: TQRLabel;
    GroupHeaderBand1: TQRBand;
    QRLabel24: TQRLabel;
    PageFooterBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRLabel7: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel85: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel86: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel87: TQRLabel;
    QRLabel88: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel89: TQRLabel;
    QRLabel90: TQRLabel;
    QRLabel91: TQRLabel;
    QRLabel92: TQRLabel;
    QRLabel93: TQRLabel;
    QRLabel94: TQRLabel;
    QRLabel95: TQRLabel;
    QRLabel96: TQRLabel;
    QRLabel97: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel54: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel56: TQRLabel;
    QRLabel55: TQRLabel;
    QRLabel58: TQRLabel;
    QRLabel57: TQRLabel;
    QRLabel60: TQRLabel;
    QRLabel59: TQRLabel;
    QRLabel62: TQRLabel;
    QRLabel61: TQRLabel;
    QRLabel63: TQRLabel;
    QRLabel64: TQRLabel;
    QRLabel66: TQRLabel;
    QRLabel65: TQRLabel;
    QRLabel68: TQRLabel;
    QRLabel67: TQRLabel;
    QRLabel70: TQRLabel;
    QRLabel69: TQRLabel;
    QRLabel72: TQRLabel;
    QRLabel71: TQRLabel;
    QRLabel74: TQRLabel;
    QRLabel73: TQRLabel;
    QRLabel76: TQRLabel;
    QRLabel75: TQRLabel;
    QRLabel78: TQRLabel;
    QRLabel77: TQRLabel;
    QRLabel80: TQRLabel;
    QRLabel79: TQRLabel;
    QRLabel81: TQRLabel;
    QRLabel82: TQRLabel;
    QRLabel83: TQRLabel;
    QRLabel84: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel98: TQRLabel;
    QRLabel99: TQRLabel;
    QRLabel100: TQRLabel;
    QRLabel101: TQRLabel;
    QRLabel102: TQRLabel;
    QRLabel103: TQRLabel;
    QRLabel104: TQRLabel;
    QRLabel105: TQRLabel;
    QRSubDetail5: TQRSubDetail;
    sjzy: TQRLabel;
    QRSubDetail6: TQRSubDetail;
    yyfx: TQRLabel;
    GroupHeaderBand5: TQRBand;
    GroupHeaderBand3: TQRBand;
    QRLabel23: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel42: TQRLabel;
    QRLabel43: TQRLabel;
    QRLabel45: TQRLabel;
    QRLabel46: TQRLabel;
    GroupFooterBand1: TQRBand;
    QRLabel47: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel38: TQRLabel;
    GroupHeaderBand6: TQRBand;
    QRLabel48: TQRLabel;
    QRSubDetail7: TQRSubDetail;
    zwhyj: TQRLabel;
    GroupFooterBand2: TQRBand;
    QRLabel39: TQRLabel;
    QRLabel141: TQRLabel;
    QRLabel142: TQRLabel;
    QRLabel140: TQRLabel;
    GroupHeaderBand7: TQRBand;
    QRLabel49: TQRLabel;
    QRSubDetail8: TQRSubDetail;
    dkbyj: TQRLabel;
    QRBand2: TQRBand;
    QRLabel50: TQRLabel;
    QRLabel51: TQRLabel;
    QRLabel52: TQRLabel;
    QRLabel53: TQRLabel;
    QRLabel106: TQRLabel;
    QRLabel107: TQRLabel;
    QRLabel108: TQRLabel;
    QRLabel109: TQRLabel;
    QRLabel110: TQRLabel;
    QRLabel111: TQRLabel;
    QRLabel112: TQRLabel;
    QRSubDetail9: TQRSubDetail;
    hlbyj: TQRLabel;
    GroupFooterBand3: TQRBand;
    GroupHeaderBand4: TQRBand;
    QRLabel113: TQRLabel;
    QRLabel115: TQRLabel;
    QRLabel117: TQRLabel;
    QRLabel118: TQRLabel;
    QRLabel119: TQRLabel;
    QRLabel120: TQRLabel;
    QRLabel121: TQRLabel;
    QRLabel122: TQRLabel;
    QRLabel114: TQRLabel;
    QRLabel116: TQRLabel;
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  hlsjprint: Thlsjprint;
  i:integer;

implementation
uses p_dm,p_func,p_blsj_hlsj;

{$R *.dfm}

procedure Thlsjprint.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
ssqk.Caption:=frm_hlsj.value1;
hssh.Caption:=frm_hlsj.value2;
jfqk.Caption:=frm_hlsj.value3;
sjzy.Caption:=frm_hlsj.value4;
zwhyj.Caption:=frm_hlsj.value5;
hlbyj.Caption:=frm_hlsj.value6;
dkbyj.Caption:=frm_hlsj.value7;
yyfx.Caption:=frm_hlsj.value8;
end;

end.
