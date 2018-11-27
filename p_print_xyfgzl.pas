unit p_print_xyfgzl;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Qrctrls, QuickRpt, ExtCtrls;

type
  Tfrm_print_xyfgzl = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    TitleBand1: TQRBand;
    ColumnHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    lb_tjks: TQRLabel;
    lb_tjrq: TQRLabel;
    QRShape1: TQRShape;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel8: TQRLabel;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText7: TQRDBText;
    SummaryBand1: TQRBand;
    lb_rq: TQRLabel;
    lb_czy: TQRLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_print_xyfgzl: Tfrm_print_xyfgzl;

implementation
uses p_cxxyfgzl;
{$R *.DFM}

end.
