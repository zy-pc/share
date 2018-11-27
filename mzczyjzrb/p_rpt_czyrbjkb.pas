unit p_rpt_czyrbjkb;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  QuickRpt, ExtCtrls, Db, DBTables, StdCtrls, Qrctrls, Grids, DBGrids;

type
  Tfrm_rtp_czyrbjkb = class(TForm)
    QuickRep1: TQuickRep;
    TitleBand1: TQRBand;
    QRShape3: TQRShape;
    star_date: TQRLabel;
    end_date: TQRLabel;
    czydm: TQRLabel;
    bt: TQRLabel;
    QRShape17: TQRShape;
    QRDBText9: TQRDBText;
    QRShape28: TQRShape;
    QRShape19: TQRShape;
    QRShape18: TQRShape;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRShape20: TQRShape;
    QRShape21: TQRShape;
    QRShape22: TQRShape;
    QRShape23: TQRShape;
    QRShape24: TQRShape;
    QRShape25: TQRShape;
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
    QRLabel19: TQRLabel;
    QRDBText18: TQRDBText;
    QRLabel2: TQRLabel;
    QRShape27: TQRShape;
    QRShape1: TQRShape;
    dxje: TQRLabel;
    QRLabel3: TQRLabel;
    QRShape26: TQRShape;
    QRShape4: TQRShape;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRShape5: TQRShape;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRShape6: TQRShape;
    QRLabel7: TQRLabel;
    QRShape9: TQRShape;
    SummaryBand1: TQRBand;
    zbdate: TQRLabel;
    zbr: TQRLabel;
    QRLabel8: TQRLabel;
    qrl_sjje: TQRLabel;
    QRDBText8: TQRDBText;
    QRShape7: TQRShape;
    QRLabel6: TQRLabel;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText22: TQRDBText;
    QRDBText23: TQRDBText;
    QRDBText24: TQRDBText;
    QRDBText7: TQRDBText;
    QRLabel1: TQRLabel;
    QRShape2: TQRShape;
    QRLabel9: TQRLabel;
    QRShape8: TQRShape;
    QRDBText21: TQRDBText;
    QRLabel20: TQRLabel;
    QRDBText25: TQRDBText;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRDBText26: TQRDBText;
    QRDBText27: TQRDBText;
    QRLabel23: TQRLabel;
    QRDBText28: TQRDBText;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRDBText30: TQRDBText;
    QRDBText31: TQRDBText;
    QRDBText32: TQRDBText;
    QRLabel28: TQRLabel;
    QRDBText33: TQRDBText;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRDBText34: TQRDBText;
    QRDBText35: TQRDBText;
    QRDBText36: TQRDBText;
    QRDBText37: TQRDBText;
    QRLabel33: TQRLabel;
    QRDBText38: TQRDBText;
    QRDBText39: TQRDBText;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    QRDBText29: TQRDBText;
    QRDBText40: TQRDBText;
    QRDBText41: TQRDBText;
    QRDBText42: TQRDBText;
    QRLabel38: TQRLabel;
    QRDBText43: TQRDBText;
    procedure QRDBText2Print(sender: TObject; var Value: string);
    procedure QRDBText4Print(sender: TObject; var Value: string);
    procedure QRDBText6Print(sender: TObject; var Value: string);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_rtp_czyrbjkb: Tfrm_rtp_czyrbjkb;

implementation
uses p_dm,p_czyrbjkb;
{$R *.DFM}

procedure Tfrm_rtp_czyrbjkb.FormCreate(Sender: TObject);
begin
//宁安医院显示就诊卡办卡金额
  if pub_yydm<>'0262' then
  begin
    qrlabel23.top:=10000;
    qrlabel25.top:=10000;
    qrlabel26.top:=10000;
    qrlabel27.top:=10000;
    QRDBText28.top:=10000;
    QRDBText30.top:=10000;
    QRDBText31.top:=10000;
    QRDBText32.top:=10000;
  end;
  //四会中医院显示四舍五入金额
  if (pub_yydm<>'0261')and (pub_yydm<>'0269') then
  begin
    qrlabel24.top:=10000;
    qrlabel29.top:=10000;
    qrlabel30.top:=10000;
    qrlabel31.top:=10000;
    QRLabel32.top:=10000;
    QRDBText29.top:=10000;
    QRDBText34.top:=10000;
    QRDBText35.top:=10000;
    QRDBText36.top:=10000;
    QRDBText37.top:=10000;
  end;

end;

procedure Tfrm_rtp_czyrbjkb.QRDBText2Print(sender: TObject; var Value: string);
begin
  if strtofloat(value) = 0 then value := '';
end;

procedure Tfrm_rtp_czyrbjkb.QRDBText4Print(sender: TObject; var Value: string);
begin
  if strtofloat(value) = 0 then value := '';
end;

procedure Tfrm_rtp_czyrbjkb.QRDBText6Print(sender: TObject; var Value: string);
begin
  if strtofloat(value) = 0 then value := '';
end;
initialization
  RegisterClass(Tfrm_rtp_czyrbjkb);
end.
