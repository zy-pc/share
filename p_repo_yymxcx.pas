unit p_repo_yymxcx;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, QuickRpt, Qrctrls;

type
  Tfrm_repo_yymxcx = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    ColumnHeaderBand1: TQRBand;
    PageHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    yymc: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel13: TQRLabel;
    QRLabel9: TQRLabel;
    ksmc: TQRLabel;
    tmh: TQRLabel;
    QRLabel10: TQRLabel;
    brxm: TQRLabel;
    QRLabel11: TQRLabel;
    SummaryBand1: TQRBand;
    QRLabel14: TQRLabel;
    QRLabel12: TQRLabel;
    QRShape1: TQRShape;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_repo_yymxcx: Tfrm_repo_yymxcx;

implementation
uses p_zybrzhcx;
{$R *.DFM}
initialization
  RegisterClass(Tfrm_repo_yymxcx);
end.
