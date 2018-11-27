unit p_ycsjprint;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls;

type
  Tycsjprint = class(TForm)
    QuickRep1: TQuickRep;
    TitleBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRBand1: TQRBand;
    QRLabel37: TQRLabel;
    QRSubDetail4: TQRSubDetail;
    QRLabel10: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel19: TQRLabel;
    QRShape2: TQRShape;
    QRLabel3: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel44: TQRLabel;
    PageFooterBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRSubDetail1: TQRSubDetail;
    hlcs: TQRLabel;
    GroupHeaderBand3: TQRBand;
    QRLabel24: TQRLabel;
    QRSubDetail3: TQRSubDetail;
    bz: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel8: TQRLabel;
    QRShape1: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape7: TQRShape;
    QRLabel11: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel54: TQRLabel;
    QRLabel55: TQRLabel;
    QRShape3: TQRShape;
    QRShape8: TQRShape;
    QRLabel56: TQRLabel;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRLabel57: TQRLabel;
    QRLabel58: TQRLabel;
    QRLabel59: TQRLabel;
    QRLabel60: TQRLabel;
    QRShape13: TQRShape;
    QRLabel61: TQRLabel;
    QRLabel62: TQRLabel;
    QRShape14: TQRShape;
    QRLabel63: TQRLabel;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    QRLabel64: TQRLabel;
    QRLabel65: TQRLabel;
    QRLabel66: TQRLabel;
    QRLabel67: TQRLabel;
    QRLabel68: TQRLabel;
    GroupFooterBand3: TQRBand;
    QRLabel42: TQRLabel;
    QRLabel48: TQRLabel;
    QRLabel49: TQRLabel;
    QRLabel50: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel69: TQRLabel;
    QRLabel70: TQRLabel;
    QRLabel71: TQRLabel;
    QRLabel72: TQRLabel;
    QRLabel73: TQRLabel;
    QRLabel74: TQRLabel;
    QRLabel99: TQRLabel;
    QRLabel100: TQRLabel;
    QRLabel101: TQRLabel;
    QRLabel102: TQRLabel;
    QRLabel103: TQRLabel;
    QRLabel104: TQRLabel;
    QRLabel105: TQRLabel;
    QRLabel106: TQRLabel;
    QRLabel107: TQRLabel;
    QRLabel108: TQRLabel;
    QRLabel109: TQRLabel;
    QRLabel110: TQRLabel;
    QRLabel111: TQRLabel;
    QRLabel112: TQRLabel;
    QRLabel113: TQRLabel;
    QRLabel114: TQRLabel;
    QRLabel115: TQRLabel;
    QRLabel116: TQRLabel;
    QRLabel117: TQRLabel;
    QRLabel118: TQRLabel;
    QRLabel119: TQRLabel;
    QRLabel120: TQRLabel;
    QRLabel121: TQRLabel;
    QRLabel122: TQRLabel;
    QRLabel123: TQRLabel;
    QRLabel124: TQRLabel;
    QRLabel125: TQRLabel;
    QRLabel126: TQRLabel;
    QRLabel127: TQRLabel;
    QRLabel128: TQRLabel;
    QRLabel75: TQRLabel;
    QRLabel76: TQRLabel;
    QRLabel77: TQRLabel;
    QRLabel78: TQRLabel;
    QRLabel79: TQRLabel;
    QRLabel80: TQRLabel;
    QRLabel81: TQRLabel;
    QRLabel82: TQRLabel;
    QRLabel129: TQRLabel;
    QRLabel130: TQRLabel;
    QRLabel131: TQRLabel;
    QRLabel132: TQRLabel;
    QRLabel133: TQRLabel;
    QRLabel134: TQRLabel;
    QRLabel135: TQRLabel;
    QRLabel136: TQRLabel;
    QRLabel137: TQRLabel;
    QRLabel138: TQRLabel;
    QRLabel139: TQRLabel;
    QRLabel140: TQRLabel;
    QRLabel141: TQRLabel;
    QRLabel142: TQRLabel;
    QRLabel146: TQRLabel;
    QRLabel148: TQRLabel;
    QRShape23: TQRShape;
    QRShape24: TQRShape;
    QRLabel147: TQRLabel;
    QRLabel149: TQRLabel;
    QRLabel85: TQRLabel;
    QRLabel86: TQRLabel;
    QRLabel87: TQRLabel;
    QRLabel88: TQRLabel;
    QRLabel89: TQRLabel;
    QRLabel90: TQRLabel;
    QRLabel91: TQRLabel;
    QRLabel94: TQRLabel;
    QRLabel144: TQRLabel;
    QRLabel93: TQRLabel;
    QRLabel95: TQRLabel;
    QRLabel97: TQRLabel;
    QRLabel98: TQRLabel;
    QRLabel145: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel43: TQRLabel;
    QRLabel45: TQRLabel;
    QRLabel46: TQRLabel;
    QRLabel47: TQRLabel;
    QRLabel51: TQRLabel;
    QRLabel52: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel53: TQRLabel;
    QRShape6: TQRShape;
    QRLabel83: TQRLabel;
    QRLabel84: TQRLabel;
    QRLabel92: TQRLabel;
    QRLabel143: TQRLabel;
    QRLabel150: TQRLabel;
    QRLabel151: TQRLabel;
    QRLabel152: TQRLabel;
    QRLabel153: TQRLabel;
    QRLabel154: TQRLabel;
    QRLabel155: TQRLabel;
    QRLabel156: TQRLabel;
    QRLabel157: TQRLabel;
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ycsjprint: Tycsjprint;

implementation

{$R *.dfm}

uses p_blsj_ycsj;

procedure Tycsjprint.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
hlcs.Caption:=frm_ycsj.value1;
bz.Caption:=frm_ycsj.value2;
end;

end.
