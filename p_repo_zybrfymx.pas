unit p_repo_zybrfymx;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  QuickRpt, Qrctrls, ExtCtrls;

type
  Tfrm_repo_zybrfymx = class(TForm)
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
    QRLabel13: TQRLabel;
    QRSysData1: TQRSysData;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText4: TQRDBText;
    SummaryBand1: TQRBand;
    QRLabel14: TQRLabel;
    brxm: TQRLabel;
    tmh: TQRLabel;
    ksmc: TQRLabel;
    zyj: TQRLabel;
    zfy: TQRLabel;
    yk: TQRLabel;
    QRLabel1: TQRLabel;
    QRShape1: TQRShape;
    QRDBText3: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    ColumnHeaderBand1: TQRBand;
    QRLabel9: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel11: TQRLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_repo_zybrfymx: Tfrm_repo_zybrfymx;

implementation
uses p_cyjs;
{$R *.DFM}
initialization
  RegisterClass(Tfrm_repo_zybrfymx);
end.
