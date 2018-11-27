unit p_repo_hjsf;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, quickrpt, StdCtrls, Qrctrls, ADODB, Printers;

type
  Tfrm_repo_hjsf = class(TForm)
    QuickRep_sc: TQuickRep;
    DetailBand1: TQRBand;
    QRDB_fydymc_sc: TQRDBText;
    QRDB_sszje_sc: TQRDBText;
    QRLabel1: TQRLabel;
    QuickRep_xj: TQuickRep;
    QRBand1: TQRBand;
    QRDB_fydymc_xj: TQRDBText;
    QRDB_fyzje_xj: TQRDBText;
    QRBand2: TQRBand;
    QRDB_ksmc_xj: TQRDBText;
    QRDB_brxm_xj: TQRDBText;
    QRDB_sjbh_xj: TQRDBText;
    QRDB_tmh_xj: TQRDBText;
    QRL_yymc_xj: TQRLabel;
    QRBand3: TQRBand;
    QRL_kyhsfbz_xj: TQRLabel;
    QRL_dxje_xj: TQRLabel;
    QRL_czy_xj: TQRLabel;
    QRE_hj1_xj: TQRExpr;
    QRDB_cfbh_xj: TQRDBText;
    QRDB_sfrq_xj: TQRDBText;
    QRE_hj2_xj: TQRExpr;
    QRLabel2: TQRLabel;
    QuickRep_jx: TQuickRep;
    PageHeaderBand2: TQRBand;
    QRL_brxm1_jx: TQRLabel;
    QRL_sfrq1_jx: TQRLabel;
    QRL_brxm2_jx: TQRLabel;
    QRL_sfrq2_jx: TQRLabel;
    QRL_brxm3_jx: TQRLabel;
    QRL_sfrq3_jx: TQRLabel;
    QRL_brxm4_jx: TQRLabel;
    QRL_sfrq4_jx: TQRLabel;
    DetailBand2: TQRBand;
    QRDB_fydymc1_jx: TQRDBText;
    QRDB_fyzje1_jx: TQRDBText;
    QRDB_fydymc2_jx: TQRDBText;
    QRDB_fyzje2_jx: TQRDBText;
    QRDB_fydymc3_jx: TQRDBText;
    QRDB_fyzje3_jx: TQRDBText;
    QRDB_fydymc4_jx: TQRDBText;
    QRDB_fyzje4_jx: TQRDBText;
    PageFooterBand2: TQRBand;
    QRL_hjje1_jx: TQRLabel;
    QRL_hjje2_jx: TQRLabel;
    QRL_sfy1_jx: TQRLabel;
    QRL_sfy2_jx: TQRLabel;
    QRL_hjje3_jx: TQRLabel;
    QRL_sfy3_jx: TQRLabel;
    QRL_hjje4_jx: TQRLabel;
    QRL_sfy4_jx: TQRLabel;
    QRLabel3: TQRLabel;
    QuickRep_sx: TQuickRep;
    QRBand4: TQRBand;
    QRL_yymc_sx: TQRLabel;
    QRLabel4: TQRLabel;
    QRDB_brxm_sx: TQRDBText;
    QRDB_fydymc_sx: TQRDBText;
    QRDB_ksmc_sx: TQRDBText;
    QRDB_sjbh_sx: TQRDBText;
    QRL_xxje_sx: TQRLabel;
    QRL_dxje_sx: TQRLabel;
    QRL_czy_sx: TQRLabel;
    QRDB_sfrq_sx: TQRDBText;
    QRDB_cfbh_sx: TQRDBText;
    QRGroup1: TQRGroup;
    QRBand5: TQRBand;
    QRDB_ksmc_sc: TQRDBText;
    QRDB_ysmc_sc: TQRDBText;
    QRDB_sjbh_sc: TQRDBText;
    QRDB_tmh_sc: TQRDBText;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    PageFooterBand1: TQRBand;
    QRL_kyhsfbz_sc: TQRLabel;
    QRL_dxje_sc: TQRLabel;
    QRL_czy_sc: TQRLabel;
    QRL_yymc_sc: TQRLabel;
    QRE_hj1_sc: TQRExpr;
    QRDB_sfrq_sc: TQRDBText;
    QRL_xxje_sc: TQRLabel;
    QRE_hj2_sc: TQRExpr;
    QRL_sjsl_sc: TQRLabel;
    QRE_yhj_xx: TQRExpr;
    QRE_yhj_dx: TQRExpr;
    QRDB_cfbh_sc: TQRDBText;
    QuickRep_hb: TQuickRep;
    DetailBand3: TQRBand;
    QRGroup3: TQRGroup;
    QRBand9: TQRBand;
    QRDB_sfrq_hb: TQRDBText;
    QRDB_sjbh_hb: TQRDBText;
    QRDB_brxm_hb: TQRDBText;
    QRDB_ysmc_hb: TQRDBText;
    QRShape9: TQRShape;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRDB_fydymc_hb: TQRDBText;
    QRDB_sszje_hb: TQRDBText;
    QRLabel13: TQRLabel;
    PageFooterBand3: TQRBand;
    QRL_czy_hb: TQRLabel;
    QRLabel14: TQRLabel;
    QRE_yhjxx_dx: TQRExpr;
    QRE_yhjxx_hb: TQRExpr;
    QuickRep_sx3d: TQuickRep;
    QRBand10: TQRBand;
    QRLabel31: TQRLabel;
    QRL_hint1_sc: TQRLabel;
    QRDB_kdks_sc: TQRDBText;
    QRDB_kdys_sc: TQRDBText;
    QRL_hint2_sc: TQRLabel;
    QRGroup4: TQRGroup;
    QRL_yymc_sx3d: TQRLabel;
    QRDB_brxm_sx3d: TQRDBText;
    QRDB_ksmc_sx3d: TQRDBText;
    QRDB_sjbh_sx3d: TQRDBText;
    QRBand11: TQRBand;
    QRL_czy_sx3d: TQRLabel;
    QRDB_sfrq_sx3d: TQRDBText;
    QRL_kyhsfbz_sx3d: TQRLabel;
    QRDB_cfbh_sx3d: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRExpr_hj_xx_sx3d: TQRExpr;
    QRExpr_hj_dx_sx3d: TQRExpr;
    QRDB_cfbhc_hb: TQRDBText;
    QRDBText5: TQRDBText;
    QuickRep_sc_b: TQuickRep;
    QRBand6: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRLabel5: TQRLabel;
    QRGroup2: TQRGroup;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRDB_ksmc_sc_b: TQRDBText;
    QRDB_ysmc_sc_b: TQRDBText;
    QRDB_brxm_sc_b: TQRDBText;
    QRDB_sjbh_sc_b: TQRDBText;
    QRDB_tmh_sc_b: TQRDBText;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRShape1: TQRShape;
    QRLabel19: TQRLabel;
    QRShape2: TQRShape;
    QRLabel25: TQRLabel;
    QRBand7: TQRBand;
    QRBand8: TQRBand;
    QRL_dxje_sc_b: TQRLabel;
    QRL_czy_sc_b: TQRLabel;
    QRL_yymc_sc_b: TQRLabel;
    QRE_hj1_sc_b: TQRExpr;
    QRDB_sfrq_sc_b: TQRDBText;
    QRL_xxje_sc_b: TQRLabel;
    QRE_hj2_sc_b: TQRExpr;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel15: TQRLabel;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRLabel10: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRE_yhj_xx_b: TQRExpr;
    QRE_yhj_dx_b: TQRExpr;
    QRDB_cfbh_sc_b: TQRDBText;
    QRLabel26: TQRLabel;
    QuickRep_sc_jy_b: TQuickRep;
    QRBand12: TQRBand;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDB_cfbh_sc_jy_b: TQRDBText;
    QRLabel27: TQRLabel;
    QRGroup5: TQRGroup;
    QRDB_ksmc_sc_jy_b: TQRDBText;
    QRDB_ysmc_sc_jy_b: TQRDBText;
    QRDB_brxm_sc_jy_b: TQRDBText;
    QRDB_sjbh_sc_jy_b: TQRDBText;
    QRDB_tmh_sc_jy_b: TQRDBText;
    QRLabel30: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRShape3: TQRShape;
    QRLabel34: TQRLabel;
    QRShape4: TQRShape;
    QRBand13: TQRBand;
    QRBand14: TQRBand;
    QRL_dxje_sc_jy_b: TQRLabel;
    QRL_czy_sc_jy_b: TQRLabel;
    QRE_hj1_sc_jy_b: TQRExpr;
    QRDB_sfrq_sc_jy_b: TQRDBText;
    QRL_xxje_sc_jy_b: TQRLabel;
    QRE_hj2_sc_jy_b: TQRExpr;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRLabel43: TQRLabel;
    QRShape8: TQRShape;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRLabel47: TQRLabel;
    QRE_yhj_xx_jy_b: TQRExpr;
    QRE_yhj_dx_jy_b: TQRExpr;
    QRL_yymc_sc_jy_b: TQRLabel;
    QRLabel29: TQRLabel;
    QRShape7: TQRShape;
    czwz1_jy: TQRDBText;
    QuickRep_sc_syy_b: TQuickRep;
    QRBand15: TQRBand;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDB_cfbh_sc_syy_b: TQRDBText;
    QRLabel28: TQRLabel;
    QRGroup6: TQRGroup;
    QRDB_ksmc_sc_syy_b: TQRDBText;
    QRDB_ysmc_sc_syy_b: TQRDBText;
    QRDB_brxm_sc_syy_b: TQRDBText;
    QRDB_sjbh_sc_syy_b: TQRDBText;
    QRDB_tmh_sc_syy_b: TQRDBText;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    QRShape10: TQRShape;
    QRLabel39: TQRLabel;
    QRShape11: TQRShape;
    QRL_yymc_sc_syy_b: TQRLabel;
    czwz1_syy: TQRDBText;
    QRBand16: TQRBand;
    QRBand17: TQRBand;
    QRL_dxje_sc_syy_b: TQRLabel;
    QRL_czy_sc_syy_b: TQRLabel;
    QRE_hj1_sc_syy_b: TQRExpr;
    QRDB_sfrq_sc_syy_b: TQRDBText;
    QRL_xxje_sc_syy_b: TQRLabel;
    QRE_hj2_sc_syy_b: TQRExpr;
    QRLabel50: TQRLabel;
    QRLabel51: TQRLabel;
    QRLabel52: TQRLabel;
    QRShape12: TQRShape;
    QRLabel53: TQRLabel;
    QRLabel54: TQRLabel;
    QRLabel55: TQRLabel;
    QRE_yhj_xx_syy_b: TQRExpr;
    QRE_yhj_dx_syy_b: TQRExpr;
    QRLabel56: TQRLabel;
    QRLabel57: TQRLabel;
    QRShape13: TQRShape;
    czwz2_jy: TQRDBText;
    czwz2_syy: TQRDBText;
    QuickRep_sc_st_b: TQuickRep;
    QRBand18: TQRBand;
    QRDBText8: TQRDBText;
    QRDBText10: TQRDBText;
    QRDB_cfbh_sc_st_b: TQRDBText;
    czwz2_st: TQRDBText;
    QRLabel40: TQRLabel;
    QRGroup7: TQRGroup;
    QRDB_ksmc_sc_st_b: TQRDBText;
    QRDB_ysmc_sc_st_b: TQRDBText;
    QRDB_brxm_sc_st_b: TQRDBText;
    QRDB_sjbh_sc_st_b: TQRDBText;
    QRDB_tmh_sc_st_b: TQRDBText;
    QRLabel46: TQRLabel;
    QRLabel48: TQRLabel;
    QRLabel49: TQRLabel;
    QRLabel58: TQRLabel;
    czwz1_st: TQRDBText;
    QRBand19: TQRBand;
    QRBand20: TQRBand;
    QRL_czy_sc_st_b: TQRLabel;
    QRE_hj1_sc_st_b: TQRExpr;
    QRDB_sfrq_sc_st_b: TQRDBText;
    QRE_hj2_sc_st_b: TQRExpr;
    QRLabel63: TQRLabel;
    QRLabel64: TQRLabel;
    QRLabel65: TQRLabel;
    QRLabel66: TQRLabel;
    QRLabel67: TQRLabel;
    QRLabel68: TQRLabel;
    QRE_yhj_xx_st_b: TQRExpr;
    QRE_yhj_dx_st_b: TQRExpr;
    QRShape17: TQRShape;
    QRShape14: TQRShape;
    qrl_st_sbye_b: TQRLabel;
    QRDB_yymc_hb: TQRLabel;
    qrl_sbxj: TQRLabel;
    qrl_sbzf: TQRLabel;
    QRExpr1: TQRExpr;
    qrlbl_sbsm: TQRLabel;
    qrlbl_sbzf: TQRLabel;
    czwz2_lj: TQRDBText;
    QRLabel59: TQRLabel;
    yhje_st: TQRLabel;
    czwz2_sc: TQRDBText;
    QRL_kyhsfbz_sc1: TQRLabel;
    qrlb_sbzf: TQRLabel;
    qrlb_kye: TQRLabel;
    QRLabel60: TQRLabel;
    QRLabel61: TQRLabel;
    QRLabel62: TQRLabel;
    QRDBText9: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    lab_dzyzxs: TQRLabel;
    jy_sbzf: TQRLabel;
    jy_xjzf: TQRLabel;
    jy_ye: TQRLabel;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    procedure QRE_yhj_dxPrint(sender: TObject; var Value: string);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRL_fydymc_sx1Print(sender: TObject; var Value: string);
    procedure QRExpr_hj_dx_sx3dPrint(sender: TObject; var Value: string);
    procedure QRE_yhj_dx_bPrint(sender: TObject; var Value: string);
    procedure QRE_yhj_dx_jy_bPrint(sender: TObject; var Value: string);
    procedure QRDB_ksmc_sc_jy_bPrint(sender: TObject; var Value: string);
    procedure QRDBText7Print(sender: TObject; var Value: string);
    procedure QRBand15BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRDBText12Print(sender: TObject; var Value: string);
    procedure QRBand12BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRE_yhj_dx_st_bPrint(sender: TObject; var Value: string);
    procedure QRDB_sjbh_sc_jy_bPrint(sender: TObject; var Value: string);
    procedure QRGroup5BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand18BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRDB_sjbh_scPrint(sender: TObject; var Value: string);
    procedure QRBand6BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QRDB_sjbh_sc_st_bPrint(sender: TObject; var Value: string);
    procedure QRDBText10Print(sender: TObject; var Value: string);
    procedure QRLabel59Print(sender: TObject; var Value: string);
    procedure czwz2_ljPrint(sender: TObject; var Value: string);
    procedure QRDB_sjbh_sc_syy_bPrint(sender: TObject; var Value: string);
    procedure QRDB_sjbh_sc_bPrint(sender: TObject; var Value: string);
  private
    v_czwz_print: Boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

procedure proc_move(v_D: TQRExpr; v_S: TQRLabel);
procedure Print_mzsj_sc(ado: TCustomADODataSet; v_brxm: string; v_ShowKYe: Boolean; v_IsSbsf: Boolean;
  v_fyzje, v_sszje, v_kyhxkje: Double; const v_sjsl: Integer;a_PosSunces:Boolean=False); //打印四川门诊收据
//20100827姜超添加----------------------
//打印四川门诊自定义报表空白收据
procedure Print_mzsj_sc_kb(ado: TCustomADODataSet; v_ShowYe: Boolean; v_IsSbsf: Boolean;
  const v_sszje, v_kyhye: Double; const v_sjsl: Integer; tczf, xjzf, zhzf, zhye: Double);

procedure Print_mzsj_sc_b(ado: TCustomADODataSet; v_brxm: string; v_ShowYe: Boolean; v_IsSbsf: Boolean;
  const v_fyzje, v_sszje, v_kyhye: Double; const v_sjsl: Integer); //打印四川-罗江门诊收据-白
//20100907姜超添加----------------------
procedure Print_mzsj_sc_jy_b(ado: TCustomADODataSet; v_brxm: string; v_ShowYe: Boolean; v_IsSbsf: Boolean;
  const v_fyzje, v_sszje, v_kyhye: Double; const v_sjsl: Integer); //打印四川-江油门诊收据-白
//20100929姜超添加----------------------
procedure Print_mzsj_sc_syy_b(ado: TCustomADODataSet; v_brxm: string; v_ShowYe: Boolean; v_IsSbsf: Boolean;
  const v_fyzje, v_sszje, v_kyhye: Double; const v_sjsl: Integer); //打印四川-绵阳三医院门诊收据-白
//20110405姜超添加----------------------
procedure Print_mzsj_sc_st_b(ado: TCustomADODataSet; v_brxm: string; v_ShowYe: Boolean; v_IsSbsf: Boolean;
  const v_fyzje, v_sszje, v_kyhye: Double; const v_sjsl: Integer); //打印四川-三台门诊收据-白
var
  frm_repo_hjsf: Tfrm_repo_hjsf;
  prv_ph: string;
implementation
uses p_dm, p_func, p_mzsf_print_service; //, P_mzsf
{$R *.DFM}

procedure Tfrm_repo_hjsf.czwz2_ljPrint(sender: TObject; var Value: string);
begin
  if not v_czwz_print then
    Value := '';
  v_czwz_print := False;
end;

procedure Tfrm_repo_hjsf.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var
  ssje, fpje, _kye: real; //要打印的发票上的总金额
begin
  QRDB_cfbh_sc.Enabled := (Trim(QuickRep_sc.DataSet.FieldByName('cfbh').AsString) <> '');
  czwz2_sc.Enabled := QRDB_cfbh_sc.Enabled;
//  if (pub_yydm = '0028') then
//  begin
//    if frm_mzsf.pub_is_zhsb then
//    begin
//      frm_mzsf.qry_sbjsxx.Close;
//      frm_mzsf.qry_sbjsxx.Parameters.ParamByName('sjbh').Value := QuickRep_sc.DataSet.FieldByName('sjbh').AsString;
//      frm_mzsf.qry_sbjsxx.Open;
//      fpje := StrToFloat(frm_mzsf.qry_sbjsxx.FieldByName('zhzf').AsString);
//      ssje := StrToFloat(frm_mzsf.qry_sbjsxx.FieldByName('xjzf').AsString);
//      _kye := StrToFloat(frm_mzsf.qry_sbjsxx.FieldByName('jshye1').AsString);
//      frm_mzsf.kyhsfbz.Caption := '卡支付:' + format('￥%3.2f', [fpje]);
//      frm_repo_hjsf.QRL_kyhsfbz_sc1.Enabled := True;
//      frm_repo_hjsf.QRL_kyhsfbz_sc1.Caption := '卡支付' + format('￥%3.2f', [fpje])
//        + '余额' + format('￥%3.2f', [_kye])
//        + '现金' + format('￥%3.2f', [ssje]);
//      frm_repo_hjsf.QRDB_sszje_sc.DataField := 'fyzje';
//    end
//    else
//    begin
//      frm_repo_hjsf.QRL_kyhsfbz_sc1.Enabled := false;
//      frm_repo_hjsf.QRDB_sszje_sc.DataField := 'sszje';
//    end;
//    frm_repo_hjsf.QRL_kyhsfbz_sc.Enabled := false;
//  end;
end;

procedure Tfrm_repo_hjsf.QRBand12BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRDB_cfbh_sc_jy_b.Enabled := (Trim(QuickRep_sc_jy_b.DataSet.FieldByName('cfbh').AsString) <> '');
  czwz2_jy.Enabled := (Trim(QuickRep_sc_jy_b.DataSet.FieldByName('cfbh').AsString) <> '');
end;

procedure Tfrm_repo_hjsf.QRBand15BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRDB_cfbh_sc_syy_b.Enabled := (Trim(QuickRep_sc_syy_b.DataSet.FieldByName('cfbh').AsString) <> '');
end;

procedure Tfrm_repo_hjsf.QRBand18BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRDB_cfbh_sc_st_b.Enabled := (Trim(QuickRep_sc_st_b.DataSet.FieldByName('cfbh').AsString) <> '');
  czwz2_st.Enabled := (Trim(QuickRep_sc_st_b.DataSet.FieldByName('cfbh').AsString) <> '');
end;

procedure Tfrm_repo_hjsf.QRBand6BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRDB_cfbh_sc_b.Enabled := (Trim(QuickRep_sc_b.DataSet.FieldByName('cfbh').AsString) <> '');
end;

procedure Tfrm_repo_hjsf.QRDBText10Print(sender: TObject; var Value: string);
begin
  Value := FormatFloat('0.00', StrToFloat(Value));
  yhje_st.Caption := FormatFloat('0.00', QuickRep_sc_st_b.DataSet.FieldByName('fyzje').AsFloat -
    QuickRep_sc_st_b.DataSet.FieldByName('sszje').AsFloat);
  yhje_st.Enabled := (pub_yydm = '');
end;

procedure Tfrm_repo_hjsf.QRDBText12Print(sender: TObject; var Value: string);
begin
  //  Value := FormatFloat('0.00', StrToFloat(Value));
end;

procedure Tfrm_repo_hjsf.QRDBText7Print(sender: TObject; var Value: string);
begin
  //  Value := FormatFloat('0.00', StrToFloat(Value));
end;

procedure Tfrm_repo_hjsf.QRDB_ksmc_sc_jy_bPrint(sender: TObject;
  var Value: string);
begin
  //  Value := Copy(Value, 1, 10);
end;

procedure Tfrm_repo_hjsf.QRDB_sjbh_scPrint(sender: TObject; var Value: string);
var
  qry_sbjssj, qry_sbpz: TADOQuery;
  sblb, tcdymc, zhdymc, xjdymc, jsfs, zhye: string;
  yedy: boolean;
begin
  qrlbl_sbsm.Caption := '';
  qrlbl_sbzf.Caption := '';
  qry_sbjssj := TADOQuery.Create(nil);
  qry_sbpz := TADOQuery.Create(nil);
  try
    qry_sbjssj.Connection := DM_data.ado_mydata;
    qry_sbpz.Connection := DM_data.ado_mydata;
    qry_sbjssj.SQL.Text := 'select * from sbjk_sbjs where ph =' + #39 + prv_ph +
      #39 + ' and yxbz = 1 and fylb = 2';
    qry_sbjssj.Open;
    if qry_sbjssj.RecordCount > 0 then
    begin
      sblb := qry_sbjssj.FieldByName('sblb').AsString;
      qry_sbpz.SQL.Text := 'select * from sbjk_sbpz where sbxh =' + #39 + sblb + #39;
      qry_sbpz.Open;
      yedy := qry_sbpz.FieldByName('mzyedy').AsBoolean;
      if (qry_sbpz.RecordCount > 0) and qry_sbpz.FieldByName('mzdy').AsBoolean then
      begin
        tcdymc := trim(qry_sbpz.FieldByName('mztcdymc').AsString);
        zhdymc := trim(qry_sbpz.FieldByName('mzzhdymc').AsString);
        xjdymc := trim(qry_sbpz.FieldByName('mzxjdymc').AsString);
        if tcdymc = '' then
        begin
          tcdymc := '统筹:';
        end
        else
        begin
          tcdymc := tcdymc + ':';
        end;
        if zhdymc = '' then
        begin
          zhdymc := '账户:';
        end
        else
        begin
          zhdymc := zhdymc + ':';
        end;
        if xjdymc = '' then
        begin
          xjdymc := '现金:';
        end
        else
        begin
          xjdymc := xjdymc + ':';
        end;
        jsfs := qry_sbjssj.FieldByName('jsfs').AsString;
        if jsfs = 'PH' then
        begin
          qrlbl_sbsm.Caption := '社保合计为同批次收据报销合计';
          jsfs := '社保合计 ' + tcdymc + Format('%0.2f', [qry_sbjssj.FieldByName('tczf').AsFloat]) +
          zhdymc + Format('%0.2f', [qry_sbjssj.FieldByName('zhzf').AsFloat]) +
          xjdymc + Format('%0.2f', [qry_sbjssj.FieldByName('xjzf').AsFloat]);
        end
        else
        begin
          qry_sbjssj.Locate('zyh', Value, []);
          jsfs := tcdymc + Format('%0.2f', [qry_sbjssj.FieldByName('tczf').AsFloat]) +
          zhdymc + Format('%0.2f', [qry_sbjssj.FieldByName('zhzf').AsFloat]) +
          xjdymc + Format('%0.2f', [qry_sbjssj.FieldByName('xjzf').AsFloat]);
        end;
        if yedy then
        begin
          qrlbl_sbsm.Caption := '余额:' + format('%0.2f', [qry_sbjssj.FieldByName('jsqye').AsFloat - qry_sbjssj.FieldByName('zhzf').AsFloat]);
        end;
        qrlbl_sbzf.Caption := jsfs;
        if pub_yydm = '0015' then
        begin
          qrlbl_sbsm.enabled := false;
          qrlbl_sbzf.enabled := false;
          QRE_hj1_sc.Enabled := false;
          jy_ye.Enabled := true;
          jy_xjzf.Enabled := true;
          jy_sbzf.Enabled := true;
          jy_ye.caption := '余额：' + Format('%0.2f', [qry_sbjssj.FieldByName('jshye').AsFloat]);
          jy_xjzf.caption := Format('%0.2f', [qry_sbjssj.FieldByName('xjzf').AsFloat]);
          jy_sbzf.caption := Format('%0.2f', [qry_sbjssj.FieldByName('zhzf').AsFloat]);
        end;
      end;
    end;
  except
  end;
  qry_sbjssj.Free;
  qry_sbpz.Free;
end;

procedure Tfrm_repo_hjsf.QRDB_sjbh_sc_bPrint(sender: TObject;
  var Value: string);
var
  qry_sbjssj, qry_sbpz: TADOQuery;
  sblb, tcdymc, zhdymc, xjdymc, jsfs, zhye: string;
  yedy: boolean;
begin
  qry_sbjssj := TADOQuery.Create(nil);
  qry_sbpz := TADOQuery.Create(nil);
  try
    qry_sbjssj.Connection := DM_data.ado_mydata;
    qry_sbpz.Connection := DM_data.ado_mydata;
    qry_sbjssj.SQL.Text := 'select * from sbjk_sbjs where ph =' + #39 + prv_ph +
      #39 + ' and yxbz = 1 and fylb = 2';
    qry_sbjssj.Open;
    if qry_sbjssj.RecordCount > 0 then
    begin
      sblb := qry_sbjssj.FieldByName('sblb').AsString;
      qry_sbpz.SQL.Text := 'select * from sbjk_sbpz where sbxh =' + #39 + sblb + #39;
      qry_sbpz.Open;
      yedy := qry_sbpz.FieldByName('mzyedy').AsBoolean;
      if (qry_sbpz.RecordCount > 0) and qry_sbpz.FieldByName('mzdy').AsBoolean then
      begin
        tcdymc := trim(qry_sbpz.FieldByName('mztcdymc').AsString);
        zhdymc := trim(qry_sbpz.FieldByName('mzzhdymc').AsString);
        xjdymc := trim(qry_sbpz.FieldByName('mzxjdymc').AsString);
        if tcdymc = '' then
        begin
          tcdymc := '统筹:';
        end
        else
        begin
          tcdymc := tcdymc + ':';
        end;
        if zhdymc = '' then
        begin
          zhdymc := '账户:';
        end
        else
        begin
          zhdymc := zhdymc + ':';
        end;
        if xjdymc = '' then
        begin
          xjdymc := '现金:';
        end
        else
        begin
          xjdymc := xjdymc + ':';
        end;
        jsfs := qry_sbjssj.FieldByName('jsfs').AsString;
        if jsfs = 'PH' then
        begin
          qrlbl_sbsm.Caption := '社保合计为同批次收据报销合计';
          jsfs := '社保合计 ' + tcdymc + Format('%0.2f', [qry_sbjssj.FieldByName('tczf').AsFloat]) +
          zhdymc + Format('%0.2f', [qry_sbjssj.FieldByName('zhzf').AsFloat]) +
          xjdymc + Format('%0.2f', [qry_sbjssj.FieldByName('xjzf').AsFloat]);
        end
        else
        begin
          qry_sbjssj.Locate('sjbh', Value, []);
          jsfs := tcdymc + Format('%0.2f', [qry_sbjssj.FieldByName('tczf').AsFloat]) +
          zhdymc + Format('%0.2f', [qry_sbjssj.FieldByName('zhzf').AsFloat]) +
          xjdymc + Format('%0.2f', [qry_sbjssj.FieldByName('xjzf').AsFloat]);
        end;
        if yedy then
        begin
          qrlb_kye.Caption := '余额:' + format('%0.2f', [qry_sbjssj.FieldByName('jshye').AsFloat]);
        end;
        qrlb_sbzf.Caption := jsfs;
      end;
    end;
  except
  end;
  qry_sbjssj.Free;
  qry_sbpz.Free;
end;

procedure Tfrm_repo_hjsf.QRDB_sjbh_sc_jy_bPrint(sender: TObject;
  var Value: string);
var
  qry_sbjs: Tadoquery;
  jsbh: string;
  zhzf, tczf, jshye: real;
begin
  qrl_sbxj.caption := '';
  qrl_sbzf.Caption := '';
  qry_sbjs := Tadoquery.Create(nil);
  qry_sbjs.Connection := dm_data.ado_mydata;
  qry_sbjs.Close;
  qry_sbjs.sql.Text := 'select * from sbjk_sbjs_mzjsmx where ph =' + #39 + value + #39 + ' and yxbz = 1';
  qry_sbjs.Open;
  if qry_sbjs.RecordCount > 0 then
  begin
    jsbh := qry_sbjs.FieldByName('jsbh').AsString;
    qry_sbjs.Close;
    qry_sbjs.SQL.Text := 'select * from sbjk_sbjs where zyh =' + #39 + jsbh + #39 + ' and yxbz= 1 and fylb =2';
    qry_sbjs.Open;
    if qry_sbjs.RecordCount > 0 then
    begin
      zhzf := qry_sbjs.FieldByName('zhzf').AsFloat;
      tczf := qry_sbjs.FieldByName('tczf').AsFloat;
      jshye := qry_sbjs.FieldByName('jshye').AsFloat;
      qrl_sbzf.Caption := '社保账户:￥' + format('%0.2f', [qry_sbjs.FieldByName('zhzf').AsFloat]) +
      ' 社保统筹:￥' + format('%0.2f', [qry_sbjs.FieldByName('tczf').AsFloat]);
    end;
    qry_sbjs.Close;
    qry_sbjs.SQL.Text := 'select sum(sszje) zje from mzsf_mzfymx where sjbh =' + #39 + value + #39;
    qry_sbjs.Open;
    qrl_sbxj.Caption := '现金支付:￥' + format('%0.2f', [qry_sbjs.FieldByName('zje').AsFloat - zhzf - tczf]) +
    '账户余额:￥' + format('%0.2f', [jshye]);
    QRE_hj1_sc_jy_b.Enabled := False;
  end;
end;

procedure Tfrm_repo_hjsf.QRDB_sjbh_sc_st_bPrint(sender: TObject;
  var Value: string);
var
  qry_sbjs: Tadoquery;
  jsbh: string;
  zhzf, tczf, jshye: real;
begin
  qry_sbjs := Tadoquery.Create(nil);
  qry_sbjs.Connection := dm_data.ado_mydata;
  qry_sbjs.sql.Text := 'select * from sbjk_sbjs_mzjsmx where ph =' + #39 + value + #39 + ' and yxbz = 1';
  qry_sbjs.Open;
  if qry_sbjs.RecordCount > 0 then
  begin
    jsbh := qry_sbjs.FieldByName('jsbh').AsString;
    qry_sbjs.Close;
    qry_sbjs.SQL.Text := 'select *,jsqye-zhzf jshye1 from sbjk_sbjs' +
      ' where zyh=' + #39 + jsbh + #39 + // 'and sjbh=' + #39 + value + #39 +
      ' and yxbz= 1 and fylb =2';
    qry_sbjs.Open;
    if qry_sbjs.RecordCount > 0 then
    begin
      zhzf := qry_sbjs.FieldByName('zhzf').AsFloat;
      tczf := qry_sbjs.FieldByName('tczf').AsFloat;
      jshye := qry_sbjs.FieldByName('jshye1').AsFloat;
      QRLabel63.Caption := '社保账户:￥' + format('%0.2f', [qry_sbjs.FieldByName('zhzf').AsFloat]) +
      '账户余额:￥' + format('%0.2f', [jshye]);
    end;
    QRE_hj1_sc_st_b.Enabled := false;
    QRE_hj2_sc_st_b.Enabled := false;
    qry_sbjs.Close;
    qry_sbjs.SQL.Text := 'select sum(sszje) zje from mzsf_mzfymx where sjbh =' + #39 + value + #39;
    qry_sbjs.Open;
    QRLabel64.Caption := '现金支付:￥' + format('%0.2f', [qry_sbjs.FieldByName('zje').AsFloat - zhzf - tczf]);
    //    QRLabel59.Caption := '';
    //    QRExpr2.Enabled := false;
  end
  else
  begin
    qrl_sbxj.caption := '';
    qrl_sbzf.Caption := '';
  end;
  QRE_hj1_sc_jy_b.Enabled := not (qry_sbjs.RecordCount > 0);
end;

procedure Tfrm_repo_hjsf.QRDB_sjbh_sc_syy_bPrint(sender: TObject;
  var Value: string);
var
  qry_sbjs: Tadoquery;
  jsbh: string;
  zhzf, tczf, jshye: real;
begin
  qry_sbjs := Tadoquery.Create(nil);
  qry_sbjs.Connection := dm_data.ado_mydata;
  qry_sbjs.sql.Text := 'select * from sbjk_sbjs_mzjsmx where ph =' + #39 + value + #39 + ' and yxbz = 1';
  qry_sbjs.Open;
  if qry_sbjs.RecordCount > 0 then
  begin
    jsbh := qry_sbjs.FieldByName('jsbh').AsString;
    qry_sbjs.Close;
    qry_sbjs.SQL.Text := 'select *,jsqye-zhzf jshye1 from sbjk_sbjs' +
      ' where zyh=' + #39 + jsbh + #39 + // 'and sjbh=' + #39 + value + #39 +
      ' and yxbz= 1 and fylb =2';
    qry_sbjs.Open;
    if qry_sbjs.RecordCount > 0 then
    begin
      zhzf := qry_sbjs.FieldByName('zhzf').AsFloat;
      tczf := qry_sbjs.FieldByName('tczf').AsFloat;
      jshye := qry_sbjs.FieldByName('jshye1').AsFloat;
      QRLabel50.Caption := '社保账户:￥' + format('%0.2f', [qry_sbjs.FieldByName('zhzf').AsFloat]) +
      '账户余额:￥' + format('%0.2f', [jshye]);
    end;
    QRE_hj1_sc_syy_b.Enabled := false;
    QRE_hj2_sc_syy_b.Enabled := false;
    qry_sbjs.Close;
    qry_sbjs.SQL.Text := 'select sum(sszje) zje from mzsf_mzfymx where sjbh =' + #39 + value + #39;
    qry_sbjs.Open;
    QRLabel51.Caption := '现金支付:￥' + format('%0.2f', [qry_sbjs.FieldByName('zje').AsFloat - zhzf - tczf]);
    //    QRLabel59.Caption := '';
    //    QRExpr2.Enabled := false;
  end;
  QRE_hj1_sc_syy_b.Enabled := not (qry_sbjs.RecordCount > 0);
  QRE_hj2_sc_syy_b.Enabled := not (qry_sbjs.RecordCount > 0);
end;

procedure Tfrm_repo_hjsf.QRExpr_hj_dx_sx3dPrint(sender: TObject;
  var Value: string);
begin
  Value := '实收:币' + NumberToMoney(StrToFloat(Value));
end;

procedure Tfrm_repo_hjsf.QRE_yhj_dxPrint(sender: TObject; var Value: string);
begin
  Value := '实收:币' + NumberToMoney(StrToFloat(Value));
end;

procedure Tfrm_repo_hjsf.QRE_yhj_dx_bPrint(sender: TObject; var Value: string);
begin
  Value := '实收:币' + NumberToMoney(StrToFloat(Value));
end;

procedure Tfrm_repo_hjsf.QRE_yhj_dx_jy_bPrint(sender: TObject;
  var Value: string);
begin
  Value := NumberToMoney(StrToFloat(Value));
end;

procedure Tfrm_repo_hjsf.QRE_yhj_dx_st_bPrint(sender: TObject;
  var Value: string);
begin
  Value := NumberToMoney(StrToFloat(Value));
end;

procedure Tfrm_repo_hjsf.QRGroup5BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  czwz1_jy.Enabled := (Trim(QuickRep_sc_jy_b.DataSet.FieldByName('cfbh').AsString) = '');
end;

procedure Tfrm_repo_hjsf.QRLabel59Print(sender: TObject; var Value: string);
begin
  QRLabel59.Enabled := (pub_yydm = '');
end;

procedure Tfrm_repo_hjsf.QRL_fydymc_sx1Print(sender: TObject;
  var Value: string);
begin
  if Sender is TQRLabel then
    if Value = TQRLabel(Sender).Name then
      Value := ' ';
end;

procedure proc_move(v_D: TQRExpr; v_S: TQRLabel);
begin
  v_D.Left := v_S.Left;
  v_D.Top := v_S.Top;
  v_D.Width := v_S.Width;
  v_D.Height := v_S.Height;
end;

procedure Print_mzsj_sc(ado: TCustomADODataSet; v_brxm: string; v_ShowKYe: Boolean; v_IsSbsf: Boolean;
  v_fyzje, v_sszje, v_kyhxkje: Double; const v_sjsl: Integer;a_PosSunces:Boolean=False);
  procedure ChangeDataSet(aControl: TWinControl);
  var
    i: Integer;
  begin
    for I := 0 to aControl.ControlCount - 1 do
      if aControl.Controls[i] is TQRDBText then
        TQRDBText(aControl.Controls[i]).DataSet := ado;
  end;
begin
  prv_ph := ado.FieldByName('ph').AsString;
  Application.CreateForm(Tfrm_repo_hjsf, frm_repo_hjsf);
  try
    with frm_repo_hjsf do
    begin
      QuickRep_sc.DataSet := ado;
      ChangeDataSet(QRBand5);
      ChangeDataSet(QRGroup1);
      ChangeDataSet(DetailBand1);
      ChangeDataSet(PageFooterBand1);

      QRL_dxje_sc.Caption := ' ';
      QRL_xxje_sc.Caption := ' ';
      QRL_kyhsfbz_sc.Caption := ' ';

      ado.Sort := 'sjbh ASC';
      QRL_sjsl_sc.Caption := '收据共:' + IntToStr(v_sjsl) + '张';

      //---------------------------------------------
      if a_PosSunces then  //如果是刷卡添加银联
      begin
         QRL_czy_sc.Caption := '(银)'+ado.FieldByName('sfczy').AsString + '#' + copy(ado.FieldByName('sfczymc').AsString, 1, 2);
      end else
      begin
        QRL_czy_sc.Caption := ado.FieldByName('sfczy').AsString + '#' + copy(ado.FieldByName('sfczymc').AsString, 1, 2);
      end;

      QRL_yymc_sc.caption := pub_yymc;

      begin
        QRE_hj1_sc.Enabled := True; //现金
        QRE_hj2_sc.Enabled := True; //账户
        QRL_dxje_sc.Caption := '实收:币' + NumberToMoney(v_sszje-v_kyhxkje);
        QRL_xxje_sc.Caption := Format('￥%3.2f', [v_sszje-v_kyhxkje]);
      end;
      QRLabel7.Enabled := (pub_yydm <> '0009'); //三台骨科医院不打科室
      QRDB_ksmc_sc.Enabled := (pub_yydm <> '0009'); //三台骨科医院不打科室
      QRL_sjsl_sc.Enabled := (pub_mzsjlx = '010101') or (pub_mzsjlx = '010102'); //页打印总合计
      QRL_xxje_sc.Enabled := (pub_mzsjlx = '010101'); //页打印总合计
      QRL_dxje_sc.Enabled := (pub_mzsjlx = '010101'); //页打印总合计
      QRE_yhj_xx.Enabled := ((pub_mzsjlx = '010102') or (pub_mzsjlx = '010103')); //页打印页合计
      QRE_yhj_dx.Enabled := ((pub_mzsjlx = '010102') or (pub_mzsjlx = '010103')); //页打印页合计

      if ((pub_mzsjlx = '010102') or (pub_mzsjlx = '010103')) then
      begin
        Proc_move(QRE_yhj_xx, QRL_xxje_sc);
        Proc_move(QRE_yhj_dx, QRL_dxje_sc);
      end;

      if v_ShowKYe then
      begin
        if v_IsSbsf then
//          QRL_kyhsfbz_sc.Caption := '医保卡余额:' + Trim(format('￥%3.2f', [v_kyhye]))
        else
        begin
          if pub_yydm = '0005' then //长虹医院特殊地方处理
//            QRL_kyhsfbz_sc.Caption := '卡支付:' + format('￥%3.2f', [v_kyhxkje]) + '  ' + '卡余额:' + format('￥%3.2f', [v_kyhxkje])
          else
            QRL_kyhsfbz_sc.Caption := '应收:' + format('￥%3.2f', [v_fyzje]) + '实收:' + format('￥%3.2f',
              [v_sszje]) + '优惠:' + format('￥%3.2f', [v_fyzje-v_sszje]);
        end;
      end
      else
      begin
        frm_repo_hjsf.QRL_kyhsfbz_sc.caption := '';
      end;
      if pub_yydm = '0015' then
      begin
        QuickRep_sc.Top := 7; //调报表大小
        QRGroup1.Top := 26;
        QRGroup1.Height := 100;
        PageFooterBand1.Top := 149;
        DetailBand1.Top := 126;
        QRL_hint1_sc.Enabled := false;
        QRDB_kdks_sc.Enabled := false;
        QRL_hint2_sc.Enabled := false;
        QRDB_kdys_sc.Enabled := false;
        QRDB_ysmc_sc.enabled := false;
        czwz2_sc.Enabled := false;
        QRDBText15.Enabled := True; //医生名称
        QRDBText16.Enabled := True; //处置位置
        QRDBText5.Top := 51; //病人姓名
        QRDB_tmh_sc.Top := 32; //条码号
        QRLabel6.Top := 20; //医生：
        QRLabel6.Left := 59;
        QRLabel7.Top := 20; //位置：
        QRLabel7.Left := 135;
        QRDB_ksmc_sc.Top := 20; //科室名称
        QRDB_ksmc_sc.Left := 170;
        QRDB_sjbh_sc.Top := 73; //收据编号
        QRDB_sjbh_sc.Left := 155;
        QRDB_sszje_sc.Left := 156; //费用金额
        QRL_czy_sc.Top := 122; //收费操作员
        QRL_czy_sc.Left := 31;
        QRDB_sfrq_sc.Top := 122; //收费时间
        QRDB_sfrq_sc.Left := 96;
        QRL_yymc_sc.Top := 140; //医院名称
        QRL_yymc_sc.Left := 31;
        QRE_yhj_xx.Top := 88; //小写金额
        QRE_yhj_xx.Left := 145;
        QRE_yhj_dx.Top := 108; //大写金额
        QRE_yhj_dx.Left := 147;
        QRE_hj1_sc.Top := 15;
      end;
      if pub_yydm = '0243' then
      begin
        QuickRep_sc.Page.Length := 102.36;
      end;
      QuickRep_sc.Print;
    end;
  finally
    frm_repo_hjsf.Free;
  end;
end;

procedure Print_mzsj_sc_kb(ado: TCustomADODataSet; v_ShowYe: Boolean; v_IsSbsf: Boolean;
  const v_sszje, v_kyhye: Double; const v_sjsl: Integer; tczf, xjzf, zhzf, zhye: Double);
begin
  DM_data.qry_pub.close;
  DM_data.qry_pub.SQL.text := 'select * from sys_ksdm where dm=' + #39 + ado.fieldbyname('czks').asstring + #39;
  DM_data.qry_pub.Open;
  frm_mzsf_print_service.printmzsj(ado, FloatToStr(v_sszje), IntToStr(v_sjsl),
    DM_data.qry_pub.fieldbyname('mc').asstring, FloatToStr(tczf),
    FloatToStr(xjzf), FloatToStr(zhzf), FloatToStr(zhye));
end;

procedure Print_mzsj_sc_b(ado: TCustomADODataSet; v_brxm: string; v_ShowYe: Boolean; v_IsSbsf: Boolean;
  const v_fyzje, v_sszje, v_kyhye: Double; const v_sjsl: Integer);
var
  qry_sbjs: Tadoquery;
  procedure ChangeDataSet(aControl: TWinControl);
  var
    i: Integer;
  begin
    for I := 0 to aControl.ControlCount - 1 do
      if aControl.Controls[i] is TQRDBText then
        TQRDBText(aControl.Controls[i]).DataSet := ado;
  end;
begin
  //20100827姜超添加----------------------
  Application.CreateForm(Tfrm_repo_hjsf, frm_repo_hjsf);
  try
    with frm_repo_hjsf do
    begin
      v_czwz_print := True;
      if v_IsSbsf then
      begin
        QRE_hj1_sc_b.Enabled := False;
        QRE_hj2_sc_b.Enabled := False;
        QRLabel20.Enabled := False;
        QRLabel21.Enabled := False;
      end
      else
      begin
        qrlb_sbzf.Enabled := False;
        qrlb_kye.Enabled := False;
      end;
      QRL_dxje_sc_b.Caption := '￥ ';
      QRL_xxje_sc_b.Caption := '￥ ';
      ado.Sort := 'sjbh ASC';
      QRE_hj1_sc_b.Enabled := not v_ShowYe;
      QRE_hj2_sc_b.Enabled := v_ShowYe;
      QRL_dxje_sc_b.Caption := '实收:币' + NumberToMoney(v_sszje);
      QRL_xxje_sc_b.Caption := Format('￥%3.2f', [v_sszje]);
      QRL_czy_sc_b.Caption := ado.FieldByName('sfczy').AsString + '#' + copy(ado.FieldByName('sfczymc').AsString, 1, 2);
      prv_ph := ado.FieldByName('ph').AsString;
      QRL_yymc_sc_b.caption := pub_yymc;
      QRLabel7.Enabled := (pub_yydm <> '0009'); //三台骨科医院不打科室
      QRDB_ksmc_sc_b.Enabled := (pub_yydm <> '0009'); //三台骨科医院不打科室
      QRL_xxje_sc_b.Enabled := (pub_mzsjlx = '010101'); //页打印总合计
      QRL_dxje_sc_b.Enabled := (pub_mzsjlx = '010101'); //页打印总合计
      QRE_yhj_xx_b.Enabled := (pub_mzsjlx = '010103'); //页打印页合计
      QRE_yhj_dx_b.Enabled := (pub_mzsjlx = '010103'); //页打印页合计
      Proc_move(QRE_yhj_xx_b, QRL_xxje_sc_b);
      Proc_move(QRE_yhj_dx_b, QRL_dxje_sc_b);
      QuickRep_sc_b.DataSet := ado;
      ChangeDataSet(QRGroup2);
      ChangeDataSet(QRBand6);
      ChangeDataSet(QRBand8);
      QuickRep_sc_b.Print;
    end;
  finally
    frm_repo_hjsf.Free;
  end;
end;

procedure Print_mzsj_sc_jy_b(ado: TCustomADODataSet; v_brxm: string; v_ShowYe: Boolean; v_IsSbsf: Boolean;
  const v_fyzje, v_sszje, v_kyhye: Double; const v_sjsl: Integer);
  procedure ChangeDataSet(aControl: TWinControl);
  var
    i: Integer;
  begin
    for I := 0 to aControl.ControlCount - 1 do
      if aControl.Controls[i] is TQRDBText then
        TQRDBText(aControl.Controls[i]).DataSet := ado;
  end;
begin
  Application.CreateForm(Tfrm_repo_hjsf, frm_repo_hjsf);
  try
    with frm_repo_hjsf do
    begin
      QRL_dxje_sc_jy_b.Caption := '￥ ';
      QRL_xxje_sc_jy_b.Caption := '￥ ';

      ado.Sort := 'sjbh ASC';
      ado.First;
      QRE_hj1_sc_jy_b.Enabled := not v_ShowYe; //现金
      QRE_hj2_sc_jy_b.Enabled := v_ShowYe; //账户
      QRL_dxje_sc_jy_b.Caption := '实收:币' + NumberToMoney(v_sszje);
      QRL_xxje_sc_jy_b.Caption := Format('￥%3.2f', [v_sszje]);
      QRL_czy_sc_jy_b.Caption := ado.FieldByName('sfczy').AsString + '#' + copy(ado.FieldByName('sfczymc').AsString, 1, 2);
      QRL_yymc_sc_jy_b.caption := pub_yymc;
      QRLabel7.Enabled := true;
      QRDB_ksmc_sc_jy_b.Enabled := true;

      QRL_xxje_sc_jy_b.Enabled := ((pub_mzsjlx = '010101') or (pub_mzsjlx = '050101')); //页打印总合计
      QRL_dxje_sc_jy_b.Enabled := ((pub_mzsjlx = '010101') or (pub_mzsjlx = '050101')); //页打印总合计
      QRE_yhj_xx_jy_b.Enabled := ((pub_mzsjlx = '010103') or (pub_mzsjlx = '050104')); //页打印页合计
      QRE_yhj_dx_jy_b.Enabled := ((pub_mzsjlx = '010103') or (pub_mzsjlx = '050104')); //页打印页合计
      Proc_move(QRE_yhj_xx_jy_b, QRL_xxje_sc_jy_b);
      Proc_move(QRE_yhj_dx_jy_b, QRL_dxje_sc_jy_b);

      QRDB_cfbh_sc_jy_b.Enabled := True;
      QuickRep_sc_jy_b.DataSet := ado;
      ChangeDataSet(QRGroup5);
      ChangeDataSet(QRBand12);
      ChangeDataSet(QRBand14);
      QuickRep_sc_jy_b.Print;
    end;
  finally
    frm_repo_hjsf.Free;
  end;
end;

procedure Print_mzsj_sc_syy_b(ado: TCustomADODataSet; v_brxm: string; v_ShowYe: Boolean; v_IsSbsf: Boolean;
  const v_fyzje, v_sszje, v_kyhye: Double; const v_sjsl: Integer);
  procedure ChangeDataSet(aControl: TWinControl);
  var
    i: Integer;
  begin
    for I := 0 to aControl.ControlCount - 1 do
      if aControl.Controls[i] is TQRDBText then
        TQRDBText(aControl.Controls[i]).DataSet := ado;
  end;
begin
  //20100929姜超添加----------------------
  Application.CreateForm(Tfrm_repo_hjsf, frm_repo_hjsf);
  try
    with frm_repo_hjsf do
    begin
      if pub_yydm = '0051' then
      begin
        QuickRep_sc_syy_b.Page.Length := 101.6;
        QuickRep_sc_syy_b.Page.Width := 85;
        QuickRep_sc_syy_b.Page.TopMargin := 10;
        QuickRep_sc_syy_b.Page.LeftMargin := 10;
        QuickRep_sc_syy_b.Page.RightMargin := 10;
      end;
      QuickRep_sc_syy_b.Page.Length := 101.6;
      QRL_dxje_sc_syy_b.Caption := '￥ ';
      QRL_xxje_sc_syy_b.Caption := '￥ ';
      ado.Sort := 'sjbh ASC';
      QRE_hj1_sc_syy_b.Enabled := v_ShowYe; // not v_ShowYe;
      QRE_hj2_sc_syy_b.Enabled := v_ShowYe;
      QRE_hj2_sc_syy_b.Caption := '￥ 0.00';
      QRL_dxje_sc_syy_b.Caption := '实收:币' + NumberToMoney(v_sszje);
      QRL_xxje_sc_syy_b.Caption := Format('￥%3.2f', [v_sszje]);
      QRL_czy_sc_syy_b.Caption := ado.FieldByName('sfczy').AsString + '#' + copy(ado.FieldByName('sfczymc').AsString, 1, 2);
      QRL_yymc_sc_syy_b.caption := pub_yymc;
      QRLabel7.Enabled := (pub_yydm <> '0009'); //三台骨科医院不打科室
      QRDB_ksmc_sc_syy_b.Enabled := (pub_yydm <> '0009'); //三台骨科医院不打科室
      QRL_xxje_sc_syy_b.Enabled := (pub_mzsjlx = '010101'); //页打印总合计
      QRL_dxje_sc_syy_b.Enabled := (pub_mzsjlx = '010101'); //页打印总合计
      QRE_yhj_xx_syy_b.Enabled := (pub_mzsjlx = '010103'); //页打印页合计
      QRE_yhj_dx_syy_b.Enabled := (pub_mzsjlx = '010103'); //页打印页合计
      Proc_move(QRE_yhj_xx_syy_b, QRL_xxje_sc_syy_b);
      Proc_move(QRE_yhj_dx_syy_b, QRL_dxje_sc_syy_b);
      czwz1_syy.Enabled := (ado.FieldByName('cfbh').AsString = '');
      czwz2_syy.Enabled := (ado.FieldByName('cfbh').AsString <> '');
      if ado.FieldByName('sffs').AsInteger = 0 then
        lab_dzyzxs.Caption := '电子医嘱'
      else
        lab_dzyzxs.Caption := '手工医嘱';
      QRL_yymc_sc_syy_b.Enabled := (pub_yydm = '0003');
      QRLabel56.Enabled := (pub_yydm = '0003');
      QRLabel57.Enabled := (pub_yydm = '0003');
      QuickRep_sc_syy_b.DataSet := ado;
      ChangeDataSet(QRGroup6);
      ChangeDataSet(QRBand15);
      ChangeDataSet(QRBand17);
      QuickRep_sc_syy_b.Print;
    end;
  finally
    frm_repo_hjsf.Free;
  end;
end;

procedure Print_mzsj_sc_st_b(ado: TCustomADODataSet; v_brxm: string; v_ShowYe: Boolean; v_IsSbsf: Boolean;
  const v_fyzje, v_sszje, v_kyhye: Double; const v_sjsl: Integer);
  procedure ChangeDataSet(aControl: TWinControl);
  var
    i: Integer;
  begin
    for I := 0 to aControl.ControlCount - 1 do
      if aControl.Controls[i] is TQRDBText then
        TQRDBText(aControl.Controls[i]).DataSet := ado;
  end;
begin
  //20110405姜超添加----------------------
  Application.CreateForm(Tfrm_repo_hjsf, frm_repo_hjsf);
  try
    with frm_repo_hjsf do
    begin
      QRL_dxje_sc_jy_b.Caption := '￥ ';
      QRL_xxje_sc_jy_b.Caption := '￥ ';

      ado.Sort := 'sjbh ASC';
      ado.First;
      QRE_hj1_sc_st_b.Enabled := not v_ShowYe;
      QRE_hj2_sc_st_b.Enabled := v_ShowYe;
      QRL_czy_sc_st_b.Caption := ado.FieldByName('sfczy').AsString + '#' +
        copy(ado.FieldByName('sfczymc').AsString, 1, 2);
      QRDB_ksmc_sc_st_b.Enabled := (pub_yydm <> '0009'); //三台骨科医院不打科室
      QRE_yhj_xx_st_b.Enabled := (pub_mzsjlx = '010103'); //页打印页合计
      QRE_yhj_dx_st_b.Enabled := (pub_mzsjlx = '010103'); //页打印页合计
      QRDB_cfbh_sc_st_b.Enabled := True;
      czwz1_st.Enabled := (ado.FieldByName('cfbh').AsString = '');
      czwz2_st.Enabled := (ado.FieldByName('cfbh').AsString <> '');

      QuickRep_sc_st_b.DataSet := ado;
      ChangeDataSet(QRGroup7);
      ChangeDataSet(QRBand18);
      ChangeDataSet(QRBand20);

      QuickRep_sc_st_b.Print;
    end;
  finally
    frm_repo_hjsf.Free;
  end;
end;

end.

