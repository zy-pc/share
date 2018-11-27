unit p_repo_mzczysf_all;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  QuickRpt, ExtCtrls, Qrctrls, StdCtrls;

type
  Tfrm_repo_mzczysf_all = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    PageHeaderBand1: TQRBand;
    PageFooterBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText7: TQRDBText;
    QRShape3: TQRShape;
    SummaryBand1: TQRBand;
    QRShape4: TQRShape;
    QRExpr6: TQRExpr;
    QRExpr3: TQRExpr;
    QRExpr2: TQRExpr;
    QRLabel14: TQRLabel;
    QRExpr1: TQRExpr;
    yymc: TQRLabel;
    QRLabel9: TQRLabel;
    QRDBText8: TQRDBText;
    QRExpr7: TQRExpr;
    ksrq: TQRLabel;
    zbr: TQRLabel;
    zbrq: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRDBText5: TQRDBText;
    QRExpr4: TQRExpr;
    QRExpr5: TQRExpr;
    QRDBText6: TQRDBText;
    QRLabel1: TQRLabel;
    QRDBText9: TQRDBText;
    QuickRep2: TQuickRep;
    QRBand1: TQRBand;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRShape5: TQRShape;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRBand2: TQRBand;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRL_yymc_fxj: TQRLabel;
    QRLabel19: TQRLabel;
    QRL_ksrq_fxj: TQRLabel;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRLabel21: TQRLabel;
    QRBand3: TQRBand;
    QRBand4: TQRBand;
    QRShape8: TQRShape;
    QRExpr8: TQRExpr;
    QRExpr9: TQRExpr;
    QRExpr10: TQRExpr;
    QRLabel22: TQRLabel;
    QRExpr11: TQRExpr;
    QRExpr12: TQRExpr;
    QRL_zbr_fxj: TQRLabel;
    QRL_zbrq_fxj: TQRLabel;
    QRExpr13: TQRExpr;
    QRExpr14: TQRExpr;
    QRDBText14: TQRDBText;
    QuickRep3: TQuickRep;
    QRBand5: TQRBand;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText21: TQRDBText;
    QRDBText24: TQRDBText;
    QRDBText25: TQRDBText;
    QRDBText27: TQRDBText;
    QRBand6: TQRBand;
    QRLabel18: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    jkyymc: TQRLabel;
    QRLabel29: TQRLabel;
    jkksrq: TQRLabel;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRBand7: TQRBand;
    QRBand8: TQRBand;
    QRShape12: TQRShape;           
    QRExpr15: TQRExpr;
    QRExpr16: TQRExpr;
    QRExpr17: TQRExpr;
    QRLabel32: TQRLabel;
    QRExpr18: TQRExpr;
    QRExpr19: TQRExpr;
    jkzbr: TQRLabel;
    jkzbrq: TQRLabel;
    QRExpr20: TQRExpr;
    QRExpr21: TQRExpr;
    QRDBText28: TQRDBText;
    QRLabel36: TQRLabel;
    QRDBText29: TQRDBText;
    QRExpr22: TQRExpr;
    QRExpr23: TQRExpr;
    QRShape9: TQRShape;
    QRExpr24: TQRExpr;
    QRLabel28: TQRLabel;
    QRExpr25: TQRExpr;
    QRExpr26: TQRExpr;
    QRLabel30: TQRLabel;
    QRDBText22: TQRDBText;
    QRExpr27: TQRExpr;
    QRLabel31: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRDBText23: TQRDBText;
    QRExpr28: TQRExpr;
    Ib1: TQRLabel;
    QRDBText26: TQRDBText;
    QRExpr29: TQRExpr;
    qrshp1: TQRShape;
    qrshp2: TQRShape;
    QRLabel35: TQRLabel;
    qrdbtxtmzyjje: TQRDBText;
    QRLabel37: TQRLabel;
    qrxpr1: TQRExpr;
    qrxpr2: TQRExpr;
    qrdbtxtmztyjje: TQRDBText;
    procedure QRDBText4Print(sender: TObject; var Value: string);
    procedure QRDBText8Print(sender: TObject; var Value: string);
    procedure QRExpr2Print(sender: TObject; var Value: string);
    procedure QRExpr7Print(sender: TObject; var Value: string);
    procedure QRDBText3Print(sender: TObject; var Value: string);
    procedure QRDBText7Print(sender: TObject; var Value: string);
    procedure QRExpr3Print(sender: TObject; var Value: string);
    procedure QRDBText6Print(sender: TObject; var Value: string);
    procedure QRDBText26Print(sender: TObject; var Value: string);
    procedure QRDBText25Print(sender: TObject; var Value: string);
    procedure QRDBText27Print(sender: TObject; var Value: string);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_repo_mzczysf_all: Tfrm_repo_mzczysf_all;

implementation
uses P_mzczysf_all;
{$R *.DFM}

procedure Tfrm_repo_mzczysf_all.QRDBText4Print(sender: TObject;
  var Value: string);
begin
  if frm_mzczysf_all.sp_gzl_all.FieldByName('tfje').asfloat = 0 then
    value := ''
  else
    value := format('%8.2f', [frm_mzczysf_all.sp_gzl_all.FieldByName('tfje').asfloat]);
end;

procedure Tfrm_repo_mzczysf_all.QRDBText8Print(sender: TObject;
  var Value: string);
begin
  if frm_mzczysf_all.sp_gzl_all.FieldByName('zfrc').asinteger = 0 then value := '';
end;

procedure Tfrm_repo_mzczysf_all.QRExpr2Print(sender: TObject;
  var Value: string);
begin
  if value = '0' then value := '';
end;

procedure Tfrm_repo_mzczysf_all.QRExpr7Print(sender: TObject;
  var Value: string);
begin
  if value = '0' then value := '';
end;


{-------------------------------------------------------------------------------
  过程名:    Tfrm_repo_mzczysf_all.QRDBText25Print
  作者:      yangshuai
  日期:      2016.06.02
  参数:      sender: TObject; var Value: string
  返回值:    无
-------------------------------------------------------------------------------}
procedure Tfrm_repo_mzczysf_all.QRDBText25Print(sender: TObject;
  var Value: string);
begin
  if (frm_mzczysf_all.sp_gzl_all.FieldByName('czydm').AsString = '9980') or
  (frm_mzczysf_all.sp_gzl_all.FieldByName('czydm').AsString = '9981') then
  begin
   value := '0';
  end ;
end;

{-------------------------------------------------------------------------------
  过程名:    Tfrm_repo_mzczysf_all.QRDBText26Print
  作者:      yangshuai
  日期:      2016.06.02
  参数:      sender: TObject; var Value: string
  返回值:    无
-------------------------------------------------------------------------------}
procedure Tfrm_repo_mzczysf_all.QRDBText26Print(sender: TObject;
  var Value: string);
begin
  if (frm_mzczysf_all.sp_gzl_all.FieldByName('czydm').AsString = '9980') or
  (frm_mzczysf_all.sp_gzl_all.FieldByName('czydm').AsString = '9981') then
  begin
   value := format('%8.2f', [frm_mzczysf_all.sp_gzl_all.FieldByName('fxjsfje').asfloat+
   frm_mzczysf_all.sp_gzl_all.FieldByName('yhkhkje').asfloat]);
  end ;
end;

{-------------------------------------------------------------------------------
  过程名:    Tfrm_repo_mzczysf_all.QRDBText27Print
  作者:      yangshuai
  日期:      2016.06.02
  参数:      sender: TObject; var Value: string
  返回值:    无
-------------------------------------------------------------------------------}
procedure Tfrm_repo_mzczysf_all.QRDBText27Print(sender: TObject;
  var Value: string);
begin
  if (frm_mzczysf_all.sp_gzl_all.FieldByName('czydm').AsString = '9980') or
  (frm_mzczysf_all.sp_gzl_all.FieldByName('czydm').AsString = '9981') then
  begin
    value := '0';
  end ;
end;

procedure Tfrm_repo_mzczysf_all.QRDBText3Print(sender: TObject;
  var Value: string);
begin
  value := format('%8.2f', [frm_mzczysf_all.sp_gzl_all.FieldByName('sfje').asfloat]);
end;

procedure Tfrm_repo_mzczysf_all.QRDBText7Print(sender: TObject;
  var Value: string);
begin
  value := format('%8.2f', [frm_mzczysf_all.sp_gzl_all.FieldByName('ssje').asfloat]);
end;

procedure Tfrm_repo_mzczysf_all.QRExpr3Print(sender: TObject;
  var Value: string);
begin
  if value = '0' then value := '';
end;

procedure Tfrm_repo_mzczysf_all.QRDBText6Print(sender: TObject;
  var Value: string);
begin
  if frm_mzczysf_all.sp_gzl_all.FieldByName('zfje').asfloat = 0 then
    value := ''
  else
    value := format('%8.2f', [frm_mzczysf_all.sp_gzl_all.FieldByName('zfje').asfloat]);
end;
initialization
  RegisterClass(Tfrm_repo_mzczysf_all);
end.
