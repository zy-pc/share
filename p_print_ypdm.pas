unit p_print_ypdm;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls;

type
  Tfrm_print_ypdm = class(TQuickRep)
    PageHeaderBand1: TQRBand;
    DetailBand1: TQRBand;
    QRLabel1: TQRLabel;
    lb_yplb: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRSysData1: TQRSysData;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRShape1: TQRShape;
    QRBand1: TQRBand;
    QRSysData2: TQRSysData;
    QRLabel9: TQRLabel;
  private

  public

  end;

var
  frm_print_ypdm: Tfrm_print_ypdm;

implementation
uses p_ypxxcx;
{$R *.DFM}

end.
