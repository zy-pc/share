unit p_repo_czysyj_all;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  QuickRpt, ExtCtrls, Qrctrls, StdCtrls;

type
  Tfrm_repo_czysyj_all = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    PageHeaderBand1: TQRBand;
    PageFooterBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel11: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText10: TQRDBText;
    QRShape3: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRShape18: TQRShape;
    QRShape21: TQRShape;
    QRShape22: TQRShape;
    QRShape23: TQRShape;
    QRShape24: TQRShape;
    QRShape25: TQRShape;
    QRShape26: TQRShape;
    QRShape27: TQRShape;
    QRShape30: TQRShape;
    SummaryBand1: TQRBand;
    QRShape4: TQRShape;
    QRShape41: TQRShape;
    QRExpr9: TQRExpr;
    QRExpr6: TQRExpr;
    QRExpr5: TQRExpr;
    QRExpr4: TQRExpr;
    QRShape37: TQRShape;
    QRExpr3: TQRExpr;
    QRExpr2: TQRExpr;
    QRLabel14: TQRLabel;
    QRExpr1: TQRExpr;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRShape33: TQRShape;
    QRShape34: TQRShape;
    QRShape35: TQRShape;
    QRShape36: TQRShape;
    QRShape38: TQRShape;
    yymc: TQRLabel;
    zbr: TQRLabel;
    jsrq: TQRLabel;
    ksrq: TQRLabel;
    QRExpr7: TQRExpr;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRShape19: TQRShape;
    QRLabel9: TQRLabel;
    QRDBText7: TQRDBText;
    QRExpr8: TQRExpr;
    procedure QRDBText2Print(sender: TObject; var Value: string);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_repo_czysyj_all: Tfrm_repo_czysyj_all;

implementation
uses P_czysyj_all;
{$R *.DFM}
procedure Tfrm_repo_czysyj_all.QRDBText2Print(sender: TObject;
  var Value: string);
begin
    if trim(value)<>'' then
    begin
        value := formatfloat('#0.00',strtofloat(value));
    end;
end;

initialization
  RegisterClass(Tfrm_repo_czysyj_all);
end.
