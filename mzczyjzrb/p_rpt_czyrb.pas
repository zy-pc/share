unit p_rpt_czyrb;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  QuickRpt, ExtCtrls, Db, DBTables, StdCtrls, Qrctrls;

type
  Tfrm_rtp_czyrb = class( TForm )
    QuickRep1: TQuickRep;
    TitleBand1: TQRBand;
    star_date: TQRLabel;
    end_date: TQRLabel;
    czydm: TQRLabel;
    bt: TQRLabel;
    ColumnHeaderBand1: TQRBand;
    QRShape4: TQRShape;
    QRShape3: TQRShape;
    QRShape2: TQRShape;
    QRShape1: TQRShape;
    QRLabel2: TQRLabel;
    QRLabel1: TQRLabel;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRLabel7: TQRLabel;
    QRLabel9: TQRLabel;
    DetailBand1: TQRBand;
    QRShape12: TQRShape;
    QRShape11: TQRShape;
    QRShape10: TQRShape;
    QRShape9: TQRShape;
    QRShape8: TQRShape;
    QRShape7: TQRShape;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    SummaryBand1: TQRBand;
    zbdate: TQRLabel;
    zbr: TQRLabel;
    QRLabel8: TQRLabel;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    QRShape19: TQRShape;
    QRShape20: TQRShape;
    QRShape21: TQRShape;
    QRShape22: TQRShape;
    QRShape23: TQRShape;
    QRShape24: TQRShape;
    QRShape25: TQRShape;
    QRShape26: TQRShape;
    QRShape27: TQRShape;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRShape28: TQRShape;
    QRShape29: TQRShape;
    QRLabel19: TQRLabel;
    QRDBText18: TQRDBText;
    QRShape30: TQRShape;
    QRLabel20: TQRLabel;
    QRDBText19: TQRDBText;
    QRLabel21: TQRLabel;
    QRShape32: TQRShape;
    QRShape31: TQRShape;
    QRShape33: TQRShape;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    dxje: TQRLabel;
    QRLabel24: TQRLabel;
    QRShape34: TQRShape;
    QRShape35: TQRShape;
    QRShape36: TQRShape;
    QRDBText20: TQRDBText;
    QRDBText21: TQRDBText;
    QRDBText22: TQRDBText;
    qrl_sbje: TQRLabel;
    QRShape37: TQRShape;
    QRShape38: TQRShape;
    QRLabel25: TQRLabel;
    QRDBText23: TQRDBText;
    QRShape39: TQRShape;
    QRShape40: TQRShape;
    QRShape41: TQRShape;
    QRShape42: TQRShape;
    QRShape43: TQRShape;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRShape44: TQRShape;
    QRShape45: TQRShape;
    QRDBText24: TQRDBText;
    QRDBText25: TQRDBText;
    QRDBText26: TQRDBText;
    QRDBText27: TQRDBText;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRDBText28: TQRDBText;
    QRDBText29: TQRDBText;
    QRDBText30: TQRDBText;
    QRDBText31: TQRDBText;
    QRDBText32: TQRDBText;
    z: TQRShape;
    QRShape46: TQRShape;
    QRShape47: TQRShape;
    QRShape48: TQRShape;
    QRDBText33: TQRDBText;
    QRDBText34: TQRDBText;
    QRDBText35: TQRDBText;
    QRDBText36: TQRDBText;
    QRDBText37: TQRDBText;
    QRDBText38: TQRDBText;
    QRDBText39: TQRDBText;
    QRDBText40: TQRDBText;
    QRDBText41: TQRDBText;
    QRDBText42: TQRDBText;
    QRDBText43: TQRDBText;
    QRDBText44: TQRDBText;
    QRDBText45: TQRDBText;
    QRDBText46: TQRDBText;
    QRDBText47: TQRDBText;
    QRDBText48: TQRDBText;
    QRDBText49: TQRDBText;
    QRDBText50: TQRDBText;
    QRDBText51: TQRDBText;
    QRDBText52: TQRDBText;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRDBText53: TQRDBText;
    QRDBText54: TQRDBText;
    QRDBText55: TQRDBText;
    QRDBText56: TQRDBText;
    QRDBText57: TQRDBText;
    procedure QRDBText2Print( sender: TObject; var Value: string );
    procedure QRDBText4Print( sender: TObject; var Value: string );
    procedure QRDBText6Print( sender: TObject; var Value: string );
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_rtp_czyrb: Tfrm_rtp_czyrb;

implementation
uses p_dm, p_czyrbjkb;
{$R *.DFM}

procedure Tfrm_rtp_czyrb.FormCreate(Sender: TObject);
begin
   if (pub_yydm<>'0261' )and  (pub_yydm<>'0269') then
  begin
    qrlabel30.top:=10000;
    qrlabel31.top:=10000;
    qrlabel32.top:=10000;
    qrlabel33.top:=10000;
    QRLabel34.top:=10000;
    QRDBText28.top:=10000;
    QRDBText29.top:=10000;
    QRDBText30.top:=10000;
    QRDBText31.top:=10000;
    QRDBText32.top:=10000;
  end;
end;

procedure Tfrm_rtp_czyrb.QRDBText2Print( sender: TObject; var Value: string );
begin
  if trim( value ) = '' then
    value := ''
  else
    if strtofloat( value ) = 0 then
      value := '';
end;

procedure Tfrm_rtp_czyrb.QRDBText4Print( sender: TObject; var Value: string );
begin
  if trim( value ) = '' then
    value := ''
  else
    if strtofloat( value ) = 0 then
      value := '';
end;

procedure Tfrm_rtp_czyrb.QRDBText6Print( sender: TObject; var Value: string );
begin
  if trim( value ) = '' then
    value := ''
  else
    if strtofloat( value ) = 0 then
      value := '';
end;
initialization
  RegisterClass( Tfrm_rtp_czyrb );
end.

