unit p_ynycjprint;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls;

type
  Tynycprint = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRLabel37: TQRLabel;
    QRSubDetail4: TQRSubDetail;
    QRLabel10: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel25: TQRLabel;
    QRShape2: TQRShape;
    QRLabel3: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel44: TQRLabel;
    PageFooterBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRSubDetail1: TQRSubDetail;
    hzqsqk: TQRLabel;
    GroupHeaderBand3: TQRBand;
    QRLabel24: TQRLabel;
    QRSubDetail3: TQRSubDetail;
    yczk: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel8: TQRLabel;
    QRShape1: TQRShape;
    QRLabel11: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel15: TQRLabel;
    GroupFooterBand3: TQRBand;
    QRLabel146: TQRLabel;
    QRLabel148: TQRLabel;
    QRLabel147: TQRLabel;
    QRLabel149: TQRLabel;
    QRLabel153: TQRLabel;
    QRLabel154: TQRLabel;
    QRLabel155: TQRLabel;
    QRLabel156: TQRLabel;
    QRShape19: TQRShape;
    QRShape20: TQRShape;
    QRShape21: TQRShape;
    QRShape22: TQRShape;
    QRShape25: TQRShape;
    QRLabel12: TQRLabel;
    QRShape26: TQRShape;
    QRShape27: TQRShape;
    QRShape28: TQRShape;
    QRShape29: TQRShape;
    QRShape30: TQRShape;
    QRShape31: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape7: TQRShape;
    QRLabel4: TQRLabel;
    QRLabel96: TQRLabel;
    QRLabel158: TQRLabel;
    QRLabel159: TQRLabel;
    QRLabel160: TQRLabel;
    QRLabel161: TQRLabel;
    QRLabel162: TQRLabel;
    QRShape23: TQRShape;
    QRShape24: TQRShape;
    QRShape32: TQRShape;
    QRLabel9: TQRLabel;
    QRLabel163: TQRLabel;
    QRSubDetail2: TQRSubDetail;
    hlcs: TQRLabel;
    GroupFooterBand1: TQRBand;
    QRLabel42: TQRLabel;
    QRLabel48: TQRLabel;
    QRLabel43: TQRLabel;
    QRLabel45: TQRLabel;
    QRLabel47: TQRLabel;
    QRLabel46: TQRLabel;
    QRLabel51: TQRLabel;
    QRLabel52: TQRLabel;
    QRLabel49: TQRLabel;
    QRLabel50: TQRLabel;
    QRLabel36: TQRLabel;
    QRShape6: TQRShape;
    QRLabel90: TQRLabel;
    QRLabel89: TQRLabel;
    QRLabel150: TQRLabel;
    QRLabel151: TQRLabel;
    QRLabel91: TQRLabel;
    QRLabel93: TQRLabel;
    QRLabel144: TQRLabel;
    QRLabel94: TQRLabel;
    QRLabel97: TQRLabel;
    QRLabel98: TQRLabel;
    QRLabel145: TQRLabel;
    QRLabel53: TQRLabel;
    QRLabel95: TQRLabel;
    QRLabel152: TQRLabel;
    QRLabel16: TQRLabel;
    PageHeaderBand1: TQRBand;
    GroupHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel157: TQRLabel;
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ynycprint: Tynycprint;

implementation

{$R *.dfm}

uses p_blsj_ynyc;

procedure Tynycprint.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
hzqsqk.Caption:=frm_ynyc.value1;
yczk.Caption:=frm_ynyc.value2;
hlcs.Caption:=frm_ynyc.value3;
end;

end.
