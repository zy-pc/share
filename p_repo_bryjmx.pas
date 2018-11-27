unit p_repo_bryjmx;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  QuickRpt, Qrctrls, ExtCtrls;

type
  Tfrm_repo_bryjmx = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    PageHeaderBand1: TQRBand;
    SummaryBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    yk: TQRLabel;
    QRSysData1: TQRSysData;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
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
    yymc: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRLabel9: TQRLabel;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    QRLabel14: TQRLabel;
    QRDBText5: TQRDBText;
    brxm: TQRLabel;
    zyj: TQRLabel;
    tmh: TQRLabel;
    zfy: TQRLabel;
    ksmc: TQRLabel;
    syyj: TQRLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_repo_bryjmx: Tfrm_repo_bryjmx;

implementation
uses p_dm;
{$R *.DFM}
initialization
  RegisterClass(Tfrm_repo_bryjmx);
end.
