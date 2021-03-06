unit P_repo_zyjz;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, QuickRpt, ExtCtrls, Db, ADODB;

type
  Tfrm_repo_zyjz = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRBand3: TQRBand;
    QRShape1: TQRShape;
    brks: TQRLabel;
    dybrxm: TQRLabel;
    brl: TQRLabel;
    yymc: TQRLabel;
    brxb: TQRLabel;
    brnl: TQRLabel;
    QRBand2: TQRBand;
    xmmc: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QuickRep2: TQuickRep;
    PageHeaderBand1: TQRBand;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRShape3: TQRShape;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    a_yymc: TQRLabel;
    a_brxm: TQRLabel;
    a_sfrq: TQRLabel;
    PageFooterBand2: TQRBand;
    QRLabel16: TQRLabel;
    a_sfy: TQRLabel;
    QRLabel14: TQRLabel;
    QRExpr4: TQRExpr;
    QRLabel15: TQRLabel;
    QRShape5: TQRShape;
    QRExpr3: TQRExpr;
    DetailBand1: TQRBand;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRLabel5: TQRLabel;
    QuickRep_px: TQuickRep;
    QRBand4: TQRBand;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRBand5: TQRBand;
    QRShape4: TQRShape;
    QRL_ksmc_px: TQRLabel;
    QRL_brxm_px: TQRLabel;
    QRL_brl_px: TQRLabel;
    QRL_yymc_px: TQRLabel;
    QRL_brxb_px: TQRLabel;
    QRL_brnl_px: TQRLabel;
    QRBand6: TQRBand;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRBand7: TQRBand;
    QRL_sfrq_px: TQRLabel;
    QRL_ysxm_px: TQRLabel;
    QRL_sfydm_px: TQRLabel;
    QRExpr5: TQRExpr;
    QRLabel30: TQRLabel;
    QRExpr6: TQRExpr;
    QRShape6: TQRShape;
    QRLabel17: TQRLabel;
    QuickRep_xc: TQuickRep;
    QRBand8: TQRBand;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRBand9: TQRBand;
    QRL_ksmc_xc: TQRLabel;
    QRL_brxm_xc: TQRLabel;
    QRL_brl_xc: TQRLabel;
    QRL_yymc_xc: TQRLabel;
    QRBand10: TQRBand;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRBand11: TQRBand;
    QRL_sfrq_xc: TQRLabel;
    QRL_sfydm_xc: TQRLabel;
    QRExpr7: TQRExpr;
    QRLabel36: TQRLabel;
    QRExpr8: TQRExpr;
    QRShape8: TQRShape;
    QRLabel37: TQRLabel;
    qr_lj: TQuickRep;
    QRBand12: TQRBand;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRBand13: TQRBand;
    lj_brxm: TQRLabel;
    lj_tmh: TQRLabel;
    lj_ksdm: TQRLabel;
    QRLabel42: TQRLabel;
    ColumnHeaderBand1: TQRBand;
    QRLabel20: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel33: TQRLabel;
    PageFooterBand3: TQRBand;
    lj_sfrq: TQRLabel;
    QRExpr10: TQRExpr;
    lj_sfydm: TQRLabel;
    sp_fymx_dy: TADOStoredProc;
    PageFooterBand1: TQRBand;
    sfrq: TQRLabel;
    kdysxm: TQRLabel;
    sfydm: TQRLabel;
    QRExpr2: TQRExpr;
    QRLabel2: TQRLabel;
    QRExpr1: TQRExpr;
    QRShape2: TQRShape;
    procedure QRExpr1Print(sender: TObject; var Value: String);
    procedure QRDBText2Print(sender: TObject; var Value: String);
    procedure QRExpr2Print(sender: TObject; var Value: String);
    procedure QRExpr4Print(sender: TObject; var Value: String);
    procedure QRDBText6Print(sender: TObject; var Value: String);
    procedure QRExpr3Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_repo_zyjz: Tfrm_repo_zyjz;
  total,total1 : real;

implementation
uses p_func,p_dm;
{$R *.DFM}

procedure Tfrm_repo_zyjz.QRExpr1Print(sender: TObject; var Value: String);
begin
 value:=format('%8.2f',[strtofloat(value)]);
end;

procedure Tfrm_repo_zyjz.QRDBText2Print(sender: TObject;
  var Value: String);
begin
 //value:=format('%8.2f',[frm_zysf_yjjf.sp_fymx_dy.FieldByName('fyje').Asfloat])
 
end;

procedure Tfrm_repo_zyjz.QRExpr2Print(sender: TObject; var Value: String);
begin
 if pub_yydm='0132' then
 begin
      value:='   '+NumberToMoney(strtofloat(Value));
 end else
 begin
  value:='大写:'+NumberToMoney(strtofloat(Value));
 end;

end;

procedure Tfrm_repo_zyjz.QRExpr4Print(sender: TObject; var Value: String);
begin
 value:=NumberToMoney(total1);
 total1:=0.00;
end;

procedure Tfrm_repo_zyjz.QRDBText6Print(sender: TObject;
  var Value: String);
begin
value:=format('%8.2f',[sp_fymx_dy.FieldByName('fyje').Asfloat]);
total:=total+strtofloat(value);
total1:=total;
end;

procedure Tfrm_repo_zyjz.QRExpr3Print(sender: TObject; var Value: String);
begin
  value:=floattostr(total);
  total:=0.00;
end;
initialization
  RegisterClass(Tfrm_repo_zyjz);
end.
