unit p_ylaqprint;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, ExtCtrls, DB, ADODB, HTTPApp, DBWeb, DBBdeWeb,
  StdCtrls;

type
  Tylaqprint = class(TForm)
    QuickRep1: TQuickRep;
    TitleBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRBand1: TQRBand;
    QRSubDetail4: TQRSubDetail;
    QRLabel37: TQRLabel;
    QRSubDetail1: TQRSubDetail;
    sjzy: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel19: TQRLabel;
    sfzf: TQRLabel;
    sfsf: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel34: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRLabel3: TQRLabel;
    QRLabel16: TQRLabel;
    QRShape3: TQRShape;
    QRLabel18: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel9: TQRLabel;
    QRShape9: TQRShape;
    QRShape4: TQRShape;
    QRSubDetail2: TQRSubDetail;
    kscs: TQRLabel;
    QRSubDetail3: TQRSubDetail;
    zrbmdc: TQRLabel;
    GroupHeaderBand1: TQRBand;
    QRLabel5: TQRLabel;
    GroupHeaderBand2: TQRBand;
    QRLabel23: TQRLabel;
    GroupHeaderBand3: TQRBand;
    QRLabel24: TQRLabel;
    PageFooterBand1: TQRBand;
    QRLabel36: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    GroupFooterBand1: TQRBand;
    QRLabel40: TQRLabel;
    QRLabel42: TQRLabel;
    GroupFooterBand2: TQRBand;
    QRLabel43: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRLabel46: TQRLabel;
    QRLabel47: TQRLabel;
    QRLabel48: TQRLabel;
    QRLabel49: TQRLabel;
    QRLabel50: TQRLabel;
    QRLabel51: TQRLabel;
    QRLabel52: TQRLabel;
    QRLabel53: TQRLabel;
    QRSysData1: TQRSysData;
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  ylaqprint: Tylaqprint;
  i:integer;

implementation
uses p_blsj_ylaq;

{$R *.dfm}

procedure Tylaqprint.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
sjzy.Caption:=frm_ylaq.value1;
kscs.Caption:=frm_ylaq.value2;
zrbmdc.Caption:= frm_ylaq.value3;
end;

end.
