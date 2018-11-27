unit p_rpt_czyjzmxhz;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  QuickRpt, ExtCtrls, Db, DBTables, StdCtrls, Qrctrls;

type
  Tfrm_rtp_czyjzmxhz = class(TForm)
    QuickRep1: TQuickRep;
    TitleBand1: TQRBand;
    ksrq: TQRLabel;
    zbrq: TQRLabel;
    czydm: TQRLabel;
    bt: TQRLabel;
    ColumnHeaderBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel9: TQRLabel;
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRShape1: TQRShape;
    QRLabel8: TQRLabel;
    QRDBText9: TQRDBText;
    QRLabel10: TQRLabel;
    QRLabel12: TQRLabel;
    QRDBText10: TQRDBText;
    QRLabel13: TQRLabel;
    QRDBText11: TQRDBText;
    QRLabel14: TQRLabel;
    QRDBText12: TQRDBText;
    QRLabel15: TQRLabel;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    procedure QRDBText2Print(sender: TObject; var Value: string);
    procedure QRDBText4Print(sender: TObject; var Value: string);
    procedure QRDBText6Print(sender: TObject; var Value: string);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_rtp_czyjzmxhz: Tfrm_rtp_czyjzmxhz;

implementation
uses p_mzczysf_all;
{$R *.DFM}

procedure Tfrm_rtp_czyjzmxhz.QRDBText2Print(sender: TObject; var Value: string);
begin
  if value <> '' then
  begin
    if strtofloat(value) = 0 then value := '';
  end;
end;

procedure Tfrm_rtp_czyjzmxhz.QRDBText4Print(sender: TObject; var Value: string);
begin
 if value <> '' then
  begin
    if strtofloat(value) = 0 then value := '';
  end;
end;

procedure Tfrm_rtp_czyjzmxhz.QRDBText6Print(sender: TObject; var Value: string);
begin
  if value <> '' then
  begin
    if strtofloat(value) = 0 then value := '';
  end;
end;
initialization
  RegisterClass(Tfrm_rtp_czyjzmxhz);
end.
