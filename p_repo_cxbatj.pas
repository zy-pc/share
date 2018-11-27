unit p_repo_cxbatj;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, QuickRpt, ExtCtrls;

type
  Tfrm_repo_cxbatj = class(TForm)
    QuickRep1: TQuickRep;
    ColumnHeaderBand1: TQRBand;
    DetailBand1: TQRBand;
    SummaryBand1: TQRBand;
    QRDBText1: TQRDBText;
    TitleBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel13: TQRLabel;
    QRSysData1: TQRSysData;
    yymc: TQRLabel;
    QRLabel5: TQRLabel;
    brxm: TQRLabel;
    QRLabel6: TQRLabel;
    tmh: TQRLabel;
    QRLabel9: TQRLabel;
    ksmc: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    zfy: TQRLabel;
    QRLabel7: TQRLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_repo_cxbatj: Tfrm_repo_cxbatj;

implementation
uses p_cybrzhcx;
{$R *.DFM}
 initialization
  RegisterClass(Tfrm_repo_cxbatj);
end.
