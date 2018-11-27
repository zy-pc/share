unit p_repo_brfymx;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  QuickRpt, Qrctrls, ExtCtrls;

type
  Tfrm_repo_brfymx = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    PageHeaderBand1: TQRBand;
    QRLabel4: TQRLabel;
    QRLabel2: TQRLabel;
    yymc: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRSysData1: TQRSysData;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    SummaryBand1: TQRBand;
    QRLabel14: TQRLabel;
    brxm: TQRLabel;
    tmh: TQRLabel;
    ksmc: TQRLabel;
    zyj: TQRLabel;
    zfy: TQRLabel;
    syyj: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel15: TQRLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_repo_brfymx: Tfrm_repo_brfymx;

implementation
uses p_dm;
{$R *.DFM}
initialization
  RegisterClass(Tfrm_repo_brfymx);
end.
