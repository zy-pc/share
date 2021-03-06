unit p_mzsf_print_service;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, Printers, p_obj, DateUtils,TypInfo, jpeg,
  OleServer, grproLib_TLB, Menus, ComCtrls,Registry;

type
  TGridppReport = class(grproLib_TLB.TGridppReport)
    function LoadFromStr(const Data: TCusBb): WordBool; overload;
    procedure setParamVal(key, val: Variant);
  public
    Fc_bbdm: string;
  end;

type
  Tfrm_mzsf_print_service = class(TForm)
    lbl3: TLabel;
    gp_mzsyfzd: TGridppReport;
    qry_dysyfz: TADOQuery;
    Label1: TLabel;
    gp_syyytj: TGridppReport;
    Label2: TLabel;
    gp_mzzyfyd: TGridppReport;
    Label3: TLabel;
    gp_mzsjbb: TGridppReport;
    gp_yfsfwfy: TGridppReport;
    Label4: TLabel;
    Label5: TLabel;
    gp_mzghsjbb: TGridppReport;
    Label6: TLabel;
    gp_mzxyfyd: TGridppReport;
    Label7: TLabel;
    gp_mzsypqdy: TGridppReport;
    Label8: TLabel;
    gp_mzysgzz_dzd: TGridppReport;
    Label9: TLabel;
    Label10: TLabel;
    gp_mzzyzdfyd: TGridppReport;
    gp_mzxyzdfyd: TGridppReport;
    Label11: TLabel;
    Label12: TLabel;
    gp_mzzysgfyd: TGridppReport;
    gp_mzxysgfyd: TGridppReport;
    Label13: TLabel;
    Label14: TLabel;
    gp_mzysgzz_xycfdy: TGridppReport;
    gp_mzysgzz_zycfdy: TGridppReport;
    Label15: TLabel;
    gp_mzfpbb: TGridppReport;
    gp_mzysgzz_mzbl: TGridppReport;
    Label16: TLabel;
    Label17: TLabel;
    gp_tyyf_qtcksqd: TGridppReport;
    sp_tyyf_qtck_sqd_dy: TADOStoredProc;
    gp_mzxyzdfyd_new: TGridppReport;
    Label18: TLabel;
    gp_mzsj_999999: TGridppReport;
    Label19: TLabel;
    gp_mzbrfyqd: TGridppReport;
    Label20: TLabel;
    Label21: TLabel;
    gp_tykf_qtcksqd: TGridppReport;
    sp_tykf_qtck_sqd_dy: TADOStoredProc;
    sp_sydyfz: TADOStoredProc;
    gp_mzsydjb: TGridppReport;
    lbl1: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Gr_szrysqd: TGridppReport;
    gp_mzsf_czyjz: TGridppReport;
    Label24: TLabel;
    gp_yktkksj: TGridppReport;
    Label25: TLabel;
    Label26: TLabel;
    gp_yktsyjk: TGridppReport;
    gp_ykttyjk: TGridppReport;
    lbl2: TLabel;
    gp_tykf_ysrkbb: TGridppReport;
    Label27: TLabel;
    gp_nmybfp: TGridppReport;
    gp_mzysgzz_kfpz: TGridppReport;
    lbl4: TLabel;
    txt2: TStaticText;
    gp_tykf_ksth: TGridppReport;
    txt3: TStaticText;
    gp_tykf_ksly: TGridppReport;
    txt4: TStaticText;
    gp_tykf_thgf: TGridppReport;
    txt5: TStaticText;
    gp_tykf_ypbs: TGridppReport;
    txt8: TStaticText;
    gp_tykf_aksff: TGridppReport;
    txt6: TStaticText;
    txt7: TStaticText;
    gp_tykf_cgrkcx: TGridppReport;
    txt1: TStaticText;
    grdprprt_tykf_aksslffbb: TGridppReport;
    gp_tykf_kslycx: TGridppReport;
    txt9: TStaticText;
    gp_tykf_thgfcx: TGridppReport;
    txt11: TStaticText;
    gp_tykf_kstycx: TGridppReport;
    txt10: TStaticText;
    gp_tykf_bsdcx: TGridppReport;
    txt12: TStaticText;
    gp_tyyf_ypbs: TGridppReport;
    txt13: TStaticText;
    gp_yf_cx_ypbs: TGridppReport;
    txttext14: TStaticText;
    gp_tyyf_ypdp: TGridppReport;
    gp_zybrdtcx_na: TGridppReport;
    txt14: TStaticText;
    conn_ba: TADOConnection;
    gp_rkapzcx: TGridppReport;
    txt15: TStaticText;
    gp_apcxrk_zb: TGridppReport;
    txt16: TStaticText;
    gp_apzcxrk_mx: TGridppReport;
    txt17: TStaticText;
    gp_apzcxck: TGridppReport;
    txt18: TStaticText;
    gp_apzcxck_zb: TGridppReport;
    txt19: TStaticText;
    gp_apzcxck_mx: TGridppReport;
    txt20: TStaticText;
    gp_sbgl_rkmx: TGridppReport;
    txt21: TStaticText;
    txt22: TStaticText;
    gp_printmzfybq: TGridppReport;
    txt23: TStaticText;
    gp_tyyf_plbqdy1: TGridppReport;
    gp_tsmztfdy: TGridppReport;
    StaticText1: TStaticText;
    gp_mzbldy: TGridppReport;
    StaticText2: TStaticText;
    txt24: TStaticText;
    grdprprt_ddyy: TGridppReport;
    lbl5: TLabel;
    gp_mzszryzm: TGridppReport;
    gp_ddmzsfmxfpdy: TGridppReport;
    txt25: TStaticText;
    txt26: TStaticText;
    gp_tykf_tjfx_rkbb: TGridppReport;
    txt27: TStaticText;
    gp_tykf_tjfx_ckbb: TGridppReport;
    grid_mzjysqd: TGridppReport;
    lbl6: TLabel;
    Label28: TLabel;
    grd_mzryz: TGridppReport;
  private
  var
    v_dybz: Boolean;
    { Private declarations }
    public
  procedure ChangePrinter(_index: integer);
procedure RevertPrinter;
procedure printmzfp(sp_cs, sp_sjj: TADOStoredProc);
procedure printddmzsfmxdy(ajzrq:TDateTime;sp_maindata, sp_mxdata: TADOStoredProc;ylbz:Boolean);//门诊收费明细打印掇刀医院
procedure printmzsyfzd(aqry_psxx:TADOQuery;_tmh, _ph, _fzbh, _fs: string; lb: Integer);
procedure printmzsyd(_tmh, kdys: string);
procedure printmzxyfyd(sp_zb: TCustomADODataSet; sp_mx: TCustomADODataSet; ylbz: Boolean);
procedure printmzzyfyd(sp_zb: TCustomADODataSet; sp_mx: TCustomADODataSet; ylbz: Boolean);
/// <summary>
/// 打印门诊处方
/// </summary>
/// <param name="cfbh">处方编号</param>
/// <param name="bf">是否备份数据处方</param>
/// <param name="ylbz">是否需要浏览</param>
procedure printmzxyfyd_Ex(cfbh: string; bf: Boolean = false; ylbz: Boolean = true);

procedure printmzyszzycf(sp_zb: TCustomADODataSet; print_xh, print_tmh, print_cfbh, print_brxm, print_brxb,
  print_brnl, print_brdz, print_ksmc, print_ysmc, print_yszd, print_cflx, print_cflb, print_bz: string;
  print_cfzje, print_sszje: Double; print_cfjl: Integer; print_hjrq: TDateTime; ylbz: Boolean); //门诊医生中药处方打印

procedure printmzyszxycf(sp_zb: TCustomADODataSet; print_xh, print_tmh, print_cfbh, print_brxm, print_brxb,
  print_brnl, print_brdz, print_ksmc, print_ysmc, print_yszd, print_cflx, print_cflb, print_bz, v_bdcflb: string;
  print_cfzje, print_sszje: Double; print_cfjl: Integer; print_hjrq: TDateTime; ylbz: Boolean); //门诊医生中药处方打印西药处方打印

//门诊处方发药单自动打印
//西药
procedure print_fyd_mzxy(sp_zb: TCustomADODataSet; print_xh, print_tmh, print_cfbh, print_brxm, print_brxb,
  print_brnl, print_brdz, print_ksmc, print_ysmc, print_yszd, print_cflx, print_bz: string;
  print_cfzje, print_sszje: Double; print_cfjl, fyckh: Integer; print_hjrq: TDateTime; ylbz: Boolean);
//西药单药品打印
procedure print_fyd_mzxy_dd(sp_zb: TCustomADODataSet; print_xh, print_tmh, print_cfbh, print_brxm, print_brxb,
  print_brnl, print_brdz, print_ksmc, print_ysmc, print_yszd, print_cflx, print_bz: string;
  print_cfzje, print_sszje: Double; print_cfjl, fyckh, ypsl, cfzsl: Integer; print_hjrq: TDateTime; ylbz: Boolean);

//中药
procedure print_fyd_mzzy(sp_zb: TCustomADODataSet; print_xh, print_tmh, print_cfbh, print_brxm, print_brxb,
  print_brnl, print_brdz, print_ksmc, print_ysmc, print_yszd, print_cflx, print_bz: string;
  print_cfzje, print_sszje: Double; print_cfjl, fyckh: Integer; print_hjrq: TDateTime; ylbz: Boolean);

//门诊处方发药单手工打印
//西药
procedure print_fyd_mzxy_sg(sp_zb: TCustomADODataSet; print_xh, print_tmh, print_cfbh, print_brxm, print_brxb,
  print_brnl, print_brdz, print_ksmc, print_ysmc, print_yszd, print_cflx, print_bz: string;
  print_cfzje, print_sszje: Double; print_cfjl, fyckh: Integer; print_hjrq: TDateTime; ylbz: Boolean);
//西药单药品打印
procedure print_fyd_mzxy_sg_dd(sp_zb: TCustomADODataSet; print_xh, print_tmh, print_cfbh, print_brxm, print_brxb,
  print_brnl, print_brdz, print_ksmc, print_ysmc, print_yszd, print_cflx, print_bz: string;
  print_cfzje, print_sszje: Double; print_cfjl, fyckh, ypsl, cfzsl: Integer; print_hjrq: TDateTime; ylbz: Boolean);


//中药
procedure print_fyd_mzzy_sg(sp_zb: TCustomADODataSet; print_xh, print_tmh, print_cfbh, print_brxm, print_brxb,
  print_brnl, print_brdz, print_ksmc, print_ysmc, print_yszd, print_cflx, print_bz: string;
  print_cfzje, print_sszje: Double; print_cfjl, fyckh: Integer; print_hjrq: TDateTime; ylbz: Boolean);

procedure printmzsj_js_999999(tmh, brxm, sfczy, sfczymc,tczf,xjzf,zhzf,zhye: string; qry_mzsj: TCustomADODataSet = nil);

procedure printmzsj(qry_mzsj: TCustomADODataSet; v_sszje, v_sjzs, v_czksmc, tczf, xjzf, zhzf, zhye: string);

procedure printyfsfwfyyp(sp_sfwfycx: TCustomADODataSet);

procedure Mzbrfyqddy(sp_sjj: TCustomADODataSet; sp_cs: TCustomADODataSet);
procedure printghsjzdy(const v_ghrs: Integer; const v_blf: Real;
  kh, xm, xb, nl, ksmc, ysdm, ysmc, fpdqh, ghf, v_zcf, ssf, ksdm, fymc1, fymc2: string;
  blfbz: Boolean; kgl_fymc: string; kgl_sfbz: Real; prv_is_kyh, _yybz: Boolean; czwz: string; v_ghrs1: Integer; khzl: string);
procedure print_mzysgzz_dzd(sp_dzd: TCustomADODataSet; v_dyyl: Boolean);

procedure print_mzysgzz_zjkfpz(sp_dzd: TCustomADODataSet; v_dyyl: Boolean);
//门诊病历打印
procedure print_mzysgzz_mzbl(sp_mzbl: TCustomADODataSet);

//通用药房其他出库申请单打印
procedure print_tyyf_qtck_sqd(v_ckdh: string);

//通用库房其他出库申请单打印
procedure print_tykf_qtck_sqd(v_ckdh: string);

//门诊西药自动发药单（新）
procedure print_fyd_mzxy_new(sp_zb, sp_mx: TCustomADODataSet);

//门诊输液登记薄
procedure printsydjb(sp_sydjb: TADOStoredProc);
//打印收治入院证明
procedure printRYZM(ADO_RYZM: TADOQuery);
//打印镇坪入院证明
procedure printryz(tmh: string);

procedure printmzszrysqd(tmh, xm, xb, mz, nl, csrq, hyzk, lxdh, zjhm, brdz, ryzd,
  ksmc, ysmc, ysdm, szryrq, hzzk, yymc: string);

  //门诊检验申请单打印
procedure print_mzysgzz_jysqd(sp_jysqd: TCustomADODataSet; tmh, brxm,brxb, brnl, kdysmc,kdrq: string);

//门诊检查申请单打印
procedure print_mzysgzz_jcsqd(sp_jcsqd: TCustomADODataSet; tmh, brxm,brxb, brnl, kdysmc,kdrq: string);

 //门诊收费操作员结账
procedure print_mzsf_czyjz(qry_cxjz_mx:TCustomADODataSet;jzdh: string);

//沙雅一卡通扣费凭证打印
procedure print_mzsf_yktkf(qry_fymx:TCustomADODataSet;tmh,brxm,sfrq,czy,sjbh:string);

//门诊收费一卡通收预交
procedure print_mzsf_yktsyj(tmh,brxm,brxb,yjje,syje,sfrq,czy,sjbh:string);

//门诊收费一卡通退预交
procedure print_mzsf_ykttyj(tmh,brxm,brxb,yjje,tyjje,syje,zfy,sfrq,czy:string);
 //通用库房验收入库
procedure print_tykf_ysrk(qry_rkmx:TADOQuery;aReportTitle,agsmc,arkdh,arkrq,aczy,yymc:string;isclbb:Boolean);

//通用库房发放到科室
procedure grdprprt_tykf_aksslff(sp_ksff:TADOQuery);
{ Public declarations }

 //通用库房大雁验收入库
//procedure print_tykf_ysrk_dy_p(qry_rkmx_dy:TADOQuery;aReportTitle,agsmc,arkdh,arkrq,aczy:string);

//通用库房-科室退回
procedure print_tykf_ksth_p(qry_rkmx_ksth:TADOQuery;crkdh,ctitle,cthks,ctwrq:string);

//通用库房-科室领用
procedure print_tykf_ksly_p (qry_tykf_ksly:TADOQuery;ckdtitle_p,lyks_p,ffks_p,ckdh_p,ffrq_p,sqrmc_p:string;ylbz:Boolean);


//通用库房-退还供方
procedure print_tykf_thgf_p(qry_tykf_thgf:TADOQuery;cktitle_p,ghgs_p,thrq_p,ckdh_p:string);

//通用库房-报损单
procedure print_tykf_bsd_p(qry_tykf_bsd:TADOQuery;bstitle_p,bsdh_p,ksmc_p,bssqsj_p,czyxm_p,bbdysj:string);

//通用库房- 按科室申领发放
procedure print_tykf_aksff_p(qry_aksff:TADOQuery;yymc_p,lyks_p,fyksmc_p,sqdh_p,ffrq_p,sqrmc_p:string);

 //通用库房-科室领用查询
procedure  print_tykf_kslycx_p(qry_kslycx:TADOQuery;yymc_p,lyksmc_p,ffks_p,djh_p,ffrq_p,sqrmc_p:string;ylbz:Boolean);
//通用库房-单据查询-采购入库
procedure print_tykf_cgrkcx_p (qry_cgrkcx:TADOQuery;yymc_p,kfmc_p,lbmc_p,rkdh_p,gsmc_p,ysrq_p:string;ylbz:Boolean);

//通用库房-单据查询-科室退还
procedure  print_tykf_kstycx(qry_kstycx:TADOQuery;yymc_p,tyks_p,djh_p,thrq_p:string;ylbz:Boolean);

//通用库房-单据查询-退回供方
procedure  print_tykf_thgfcx(qry_thgfcx:TADOQuery;yymc_p,gsmc_p,djh_p,tkrq_p:string;ylbz:Boolean);


//通用库房-单据查询-报损查询
procedure  print_tykf_bsdcx(qry_bsdcx:TADOQuery;yymc_p,djh_p,bsks_p,sqsj_p,zxsj_p,bsrmc_p,zxrmc_p,dysj_p:string;ylbz:Boolean);

// 内蒙医保发票打印
procedure printmzfp_nmyb(ado_fymx: TADOQuery;v_xm: string;v_grbh: string;v_tmh: string;
  v_xb: string;v_rylb: string;v_jsqye: string;v_jshye: string;v_zfy: string;v_xjzf: string;v_zhzf: string;
  v_tczf: string;v_zhzflj: string;v_tczflj: string; v_dbzf: string;v_mxbje: string;v_sjbh: string;v_dxje: string);
function FindComponentName(AClass: TObject;aComponentName:string):Boolean;
//通用药房报损打印
procedure print_tyyf_ypbs(ado_yf_ypbsmx: TADOQuery;pub_yymc,bsdh,pub_ksmc,bsrq,bsr: string);

//通用药房-单据查询-报损查询
procedure print_tyyf_bscx(qry_bscxmx:TADOQuery;djh_p,bsks_p,bsrq_p,bsczy_p,yymc_p:string);

//门诊中药发药打印
procedure printmzzcycf_print(bf: Boolean;ylbz: Boolean;cfbh,brdz2,brxb2,brzd2,ysxm2,ysks2:string);

  //通用药房-药品点评
procedure printcxypdp_print(cxypdp:TADOStoredProc);
{ Public declarations }

//通用库房-住院病人动态查询
procedure printzybrdtcx_na_print(dtcx:TADOStoredProc);

 //通用库房-按品种查询入库
procedure print_tykf_apzcxrk(cxrk1:TADOStoredProc);

//通用库房-按品种查询入库主表
procedure print_tykf_apzcxrkzb(cxrk2:TADOStoredProc);

//通用库房-按品种查询入库明细
procedure print_tykf_apzcxrkmx(cxrk3:TADOStoredProc);

//通用库房-按品种查询出库
procedure print_tykf_apzcxck(cxck1:TADOStoredProc);

//通用库房-按品种查询出库主表
procedure print_tykf_apzcxck_zb(cxck2:TADOStoredProc);

//通用库房-按品种查询明细
procedure print_tykf_apzcxck_mx(cxck3:TADOStoredProc);


//设备管理-入库明细
procedure print_sbgl_rkmx(adork:TADOQuery);

 //通用药房-门诊西药房发药标签打印
procedure print_mzfybq(sp_dy:TADOStoredProc;i:Integer;a_dyyl: Boolean);

//通用药房-口服药标签打印
procedure print_kfybqdy(brxm,brnl,ypmc,ypyf,ypyl,brxb:string;bz:Integer);
//台山门诊退费重新生成收据打印
procedure print_mztfsj(sp_mzsj: TADOStoredProc;lbmc,czydm: string);
//壤塘 门诊医生工作站 病人病例打印
procedure print_mzysz_brbldy(sp_brxx:TADOStoredProc;zdcs:Integer;crb:Boolean;yymc:string);
//病历质控 病历打印
procedure print_blzk_brbldy(sp_brxx:TADOQuery;zdcs:Integer;crb:Boolean;yymc:String);
//掇刀 门诊分cflx 打印
procedure print_mzfy_cfdy(sp_zb: TCustomADODataSet; sp_mx: TCustomADODataSet; ylbz: Boolean;cflx:string);

//通用库房-统计分析-入库报表
procedure print_tykf_tjfx_rkbb(sp_zb:TADOStoredProc;atitle,a_zbr,a_tjrq,a_dyrq:string;ylbz:Boolean);

//通用库房-统计分析-出库报表
procedure print_tykf_tjfx_ckbb(sp_zb:TADOStoredProc;atitle,a_zbr,a_tjrq,a_dyrq:string;ylbz:Boolean);

//台山 门诊检验申请单打印
procedure print_mz_jysqddy(sp_jysqddy:TADOStoredProc );
  end;

var
  frm_mzsf_print_service: Tfrm_mzsf_print_service;
  v_IsPrinterJoin : Boolean;
  v_PrinterIndex_new: Integer;
  v_PrinterIndex_old: Integer;
  res: string;

  mzsyfzdBb: TCusBb; //门诊输液分组单对象
  mzsyfzpqdy: TCusBb; //门诊输液分组瓶签对象
  mzsyyytjBb: TCusBb; //门诊输液用药统计对象

  mzsjbb: TCusBb; //门诊收据报表
  mzfpbb: TCusBb; //门诊发票报表---calmhawk----
  mzddmzfymxbb: TCusBb; //掇刀门诊收费明细报表---calmhawk----
  yfsfwfyypBb: TCusBb; //药房下库存未发药药品对象
  mzghsjBb: TCusBb; //挂号收据报表
  mzysgzzdzdBb: TCusBb; //门诊医生工作站导诊单对象
  mzysgzzxycfdyBb: TCusBb; // 门诊医生站西药处方对象
  mzyszzjkfpzBb: TCusBb; //门诊医生工作站扣费凭证对象
  mzysgzzzycfdyBb: TCusBb; // 门诊医生站中药处方对象

  mzxyfydBb: TCusBb; //门诊中药发药单对象
  mzzyfydBb: TCusBb; //门诊西药发药单对象

  mzxyzdfydBb: TCusBb; //门诊中药发药单对象_自动
  mzzyzdfydBb: TCusBb; //门诊西药发药单对象_自动
  mzxysgfydBb: TCusBb; //门诊中药发药单对象_手工
  mzzysgfydBb: TCusBb; //门诊西药发药单对象_手工

  mzblBb: TCusBb; //门诊病历对象

  mzxyzdfyd_new: TCusBb; //门诊西药自动发药单（新）对象

  tyyf_qtcksqd_Bb: TCusBb; //通用药房其他出库申请单打印
  tykf_qtcksqd_Bb: TCusBb; //通用库房其他出库申请单打印

  mzbrfyqd_Bb: TCusBb; //门诊费用清单

  mzsydjbBb: TCusBb; //门诊输液登记薄

  mzSzryzmBb: TCusBb; //门诊收治入院证明

  mzsjryryd: TCusBb; //门诊收治入院入院申请单

  mzsfczyjz: TCusBb;//门诊收费操作员结账

  mzsfyktkf: TCusBb;//门诊收费一卡通扣费

  yktsyjk: TCusBb;//门诊收费一卡通收预交

  ykttyjk: TCusBb;//门诊收费一卡通退预交

  tykf_ysrk_Bb: TCusBb;//通用库房——验收入库


  tykf_aksslff_Bb:TCusBb;//通用库房——按科室申领发放
  tykf_ysrk_dy_Bb:TCusBb;//通用库房-验收入库大雁
  tykf_ksth_Bb:TCusBb;//通用库房-科室退回
  tykf_ksly_Bb:TCusBb;//通用库房-科室领用
  tykf_thgf_Bb:TCusBb;//通用库房-退还供方
  tykf_bsd_Bb:TCusBb;//通用库房-报损单
  tykf_akslff:TCusBb;//通用库房-按科室申领发放
  tykf_kslycx_bb:TCusBb;//通用库房-科室领用查询
  tykf_cgrkcx_Bb:TCusBb;//通用库房-采购入库查询

  tykf_kstycx_Bb:TCusBb;//通用库房-科室退还查询
  tykf_thgfcx_Bb:TCusBb;//通用库房-单据查询-退回供方
  tykf_bsdcx_Bb:TCusBb;//通用库房-单据查询-报损查询

  tyyf_bsyq_Bb:TCusBb; //通用药房报损药品
  mzsjbb_nm: TCusBb; //内蒙医保发票
  tyyf_cx_ypbs_Bb:TCusBb;//通用药房-单据查询-报损查询

  tyyf_cx_ypdp:TCusBb;//通用药房-药品点评
  sfgl_zybrdtcx_na_Bb:TCusBb;//收费管理-住院病人动态查询-宁安

  tykf_apzcxrk:TCusBb;//通用库房-按品种查询入库
  tykf_apzcxrkzb:TCusBb;//通用库房-按品种查询入库主表
  tykf_apzcxrkmx:TCusBb;//通用库房-按品种查询入库明细
  tykf_apzcxck:TCusBb; //通用库房-按品种查询出库
  tykf_apzcxckzb:TCusBb;//通用库房-按品种查询出库主表
  tykf_apzcxckmx:TCusBb; //通用库房-按品种查询出库明细
  sbgl_rkmx_Bb:TCusBb;//设备管理-入库明细
  tyyf_fybqdy_Bb:TCusBb; //通用药房-发药标签打印
  tyyf_kfybqdy_Bb:TCusBb;//通用药房-口服药标签打印
  tzmztffp:TCusBb;//台州门诊退费发票打印
  mzysz_mzbldy_Bb:TCusBb;//门诊医生站 病例打印 壤塘医院
  mzfy_mzfydy_Bb:TCusBb; //荆门市掇刀人民医院门诊发药分cflx打印
  tykf_tjfx_rkBb:TCusBb;//通用库房-统计分析-入库报表
  tykf_tjfx_ckBb:TCusBb;//通用库房-统计分析-出库报表
  mz_jysqd_Bb :TCusBb; //台山中医院门诊检验申请单打印
  mzysryz   :TCusBb; //镇坪打印入院证
const
  mzjysqddm ='049816'; //台山检验申请单代码
  mzsyfzddm = '010211'; //门诊输液分组单代码
  mzsyfzpqddm = '010212'; //门诊输液分组瓶签代码
  mzsyyytjdm = '010214'; //门诊输液用药统计代码

  mzsydjb = '010213'; //门诊输液用药统计代码

  mzszRyzm = '010512'; //收治入院证明

  mzsjdm = '040201'; //门诊收据代码
  mzfpdm = '010209'; //门诊发票代码

  mzddmzsfmxdm = '089882'; //掇刀门诊收费明细打印
  yfsfwfyypdm = '010413'; //药房下库存未发药药品代码
  mzghsjdm = '040202'; //门诊挂号收据代码
  mzysgzzdzddm = '010501'; //门诊医生工作站导诊单代码
  mzyszxycfdm = '010510'; //门诊医生站西药处方代码
  mzyszzycfdm = '010511'; //门诊医生站中药处方代码
  mzyszzjkfpz = '031202'; //门诊医生站诊间扣费凭证代码

  mzxyfyddm = '010414'; //门诊西药发药单代码_查询
  mzzyfyddm = '010411'; //门诊中药发药单代码_查询

  mzxyzdfyddm = '010415'; //门诊西药发药单代码_自动
  mzzyzdfyddm = '010416'; //门诊中药发药单代码_自动
  mzxysgfyddm = '010417'; //门诊西药发药单代码_手工
  mzzysgfyddm = '010418'; //门诊中药发药单代码_手工

  mzdzbldm = '010601'; //门诊病历
  tyyf_qtcksqd_dm = '010420'; //通用药房其他出库申请单打印

  tykf_qtcksqd_dm = '010421'; //通用库房其他出库申请单打印

  mzxyzdfyd_new_dm = '089805'; //门诊西药自动发药单代码（新）

  mzbrfyqd = '030201'; //门诊费用清单

  mzsjryryddm = '030301'; //门诊收治入院入院申请单代码

  mzsfczyjzdm = '010701';//门诊收费操作员结账

  yktkksjdm ='010702'; //一卡通扣款收据代码

  yktsyjdm ='010703'; //一卡通收预交款代码

  ykttyjdm ='010704'; //一卡通退预交款代码

  tykf_ysrk_dm = '010423'; ////通用库房——验收入库代码

  tykf_ysrk_dm_dd = '089860'; //040507通用库房——验收入库代码--掇刀人民医院

  tykf_aksslff_dm = '010524'; //通用库房-按科室申领发放

  tykf_ysrk_dy_dm = '0104230'; //通用库房-验收入库大雁代码

  tykf_ksth_dm = '010520';//通用库房-科室退回

  tykf_ksly_dm = '010521';//通用库房-科室领用

  tykf_thgf_dm='010522';//通用库房-退还供方

  tykf_bsd_dm='010523'; //通用库房-报损单

  tykf_aksslff= ' 010524';

  tykf_kslycx_dm='010621';//通用库房-科室领用查询


  tykf_cgrkcx_dm='010721';//通用库房-采购入库查询
  
  tykf_kstycx_dm='010821';//通用库房-单据查询-科室退回

  tykf_thgfcx_dm='010822';//通用库房-单据查询-退回供方
  tykf_bsdcx_dm='010921';//通用库房-单据查询-报损查询

  mzsjbb_nmdm = '040204';  // 内蒙医保发票

  tyyf_bsyp_dm = '050001';//通用药房报损代码
  
  tyyf_cx_ypbs_dm='010921'; //通用药房-单据查询-报损查询

  tyyf_cx_ypdp_dm='089844';  //通用药房-药品点评
  sfgl_zybrdtcx_dm='089847';//收费管理-住院病人动态查询-宁安
  tykf_apzcxrk_dm='020501';  //通用库房-按品种查询入库
  tykf_apzcxzb_dm='020502';//通用库房-按品种查询入库主表
  tykf_apzcxmx_dm='020503';//通用库房-按品种查询入库明细
  tykf_apzcxck_dm='020504';//通用库房-按品种查询出库
  tykf_apzcxckzb_dm='020505';//通用库房-按品种查询出库主表
  tykf_apzcxckmx_dm='020506';//通用库房-按品种查询出库明细

  sbgl_rkmx_dm='089850';//设备管理-入库明细

  tyyf_fybqdy_dm = '080407';  //通用药房-发药标签打印
  
  tyyf_kfybqdy_dm = '089851'; //通用药房-口服药标签打印
  mzysz_mzbldy_dm='041206';//门诊医生站--病例打印  壤塘医院
  tykf_tjfxrkbb_dm = '089817';//通用库房-统计分析-入库报表
  tykf_tjfxckbb_dm = '089818';//通用库房-统计分析-出库报表
  mzryz_dm ='041201';
implementation

uses p_func, p_dm ;

{$R *.dfm}

{$REGION 'TGridppReport'}

function TGridppReport.LoadFromStr(const Data: TCusBb): WordBool;
begin
  Fc_bbdm := data.lbdm;
  inherited LoadFromStr(Data.nr);
end;

procedure TGridppReport.setParamVal(key, val: Variant);
begin
  if Assigned(Self.ParameterByName(key)) then
  begin
    Self.ParameterByName(key).Value := val;
  end
//  else if isCusDebug then begin
//    ShowMessageFmt('报表 %s 参数 "%s" 不存在！', [Self.Fc_bbdm, key]);
//    addlog('报表 %s 参数 "%s" 不存在！', [Self.Fc_bbdm, key]);
//  end
    ;
end;
{$ENDREGION 'TGridppReport'}
//台山 门诊检验申请单打印
procedure Tfrm_mzsf_print_service.print_mz_jysqddy(sp_jysqddy:TADOStoredProc);
var
  PrinterIdx: integer;
begin
  mz_jysqd_Bb :=nil;
  mz_jysqd_Bb :=TCusBb.Create;
  mzfy_mzfydy_Bb.GetBbByDM(mz_jysqd_Bb, mzjysqddm);
  grid_mzjysqd.LoadFromStr(mz_jysqd_Bb.nr);
  showmessage(sp_jysqddy.FieldByName('xmmc').AsString);
  try
    grid_mzjysqd.DataSet := sp_jysqddy;
  except on e: Exception do
    ShowMessage(e.Message);
  end;
  res := frm_func.SetCReportXtcs(grid_mzjysqd);
  if res <> '1' then
  begin
    ShowMessage(res);
  end
  else
  begin
    PrinterIdx := func_GetPrinterIndex(1, v_IsPrinterJoin);
    if v_IsPrinterJoin then
      grid_mzjysqd.Printer.PrinterName := Printer.Printers[PrinterIdx];
    grid_mzjysqd.PrintPreview(true);;
  end;
end;


//荆门市掇刀人民医院
procedure Tfrm_mzsf_print_service.print_mzfy_cfdy(sp_zb: TCustomADODataSet; sp_mx: TCustomADODataSet; ylbz: Boolean;cflx:string);
var
  mzfydm:string;
  vMemStream: TMemoryStream;
  vbmp:TBitmap;
  vjpg: TJPEGImage;
  vFileName:string;
begin
  //创建报表对象  根据 cflx 设置 对应的处方编码

    mzfy_mzfydy_Bb := nil;
    mzfy_mzfydy_Bb := TCusBb.Create; //创建一个主体
    if cflx='麻醉处方' then
      mzfydm:='010414'
    else if cflx='儿童处方' then
      mzfydm:='089862'
    else if cflx='精二处方' then
      mzfydm:='089863'
    else
      mzfydm:='089861';
    mzfy_mzfydy_Bb.GetBbByDM(mzfy_mzfydy_Bb, mzfydm); //获取报表对象 格式
    grdprprt_ddyy.LoadFromStr(mzfy_mzfydy_Bb.nr);    //写入 grid

  try
    grdprprt_ddyy.ParameterByName('tmh').Value := sp_zb.FieldByName('tmh').Value;
    grdprprt_ddyy.ParameterByName('cfbh').Value := sp_zb.FieldByName('cfbh').Value;
    grdprprt_ddyy.ParameterByName('brxm').Value := sp_zb.FieldByName('brxm').Value;
    grdprprt_ddyy.ParameterByName('brxb').Value := sp_zb.FieldByName('brxb').Value;
    grdprprt_ddyy.ParameterByName('brnl').Value := sp_zb.FieldByName('brnl').Value;
    grdprprt_ddyy.ParameterByName('brxm1').Value := sp_zb.FieldByName('brxm1').Value;
    grdprprt_ddyy.ParameterByName('brxb1').Value := sp_zb.FieldByName('brxb1').Value;
    grdprprt_ddyy.ParameterByName('brnl1').Value := sp_zb.FieldByName('brnl1').Value;
    grdprprt_ddyy.ParameterByName('sjbh').Value := sp_zb.FieldByName('sjbh').Value;
    grdprprt_ddyy.ParameterByName('cfzje').Value := sp_zb.FieldByName('cfzje').Value;
    grdprprt_ddyy.ParameterByName('sszje').Value := sp_zb.FieldByName('sszje').Value;
    grdprprt_ddyy.ParameterByName('ksmc').Value := sp_zb.FieldByName('ksmc').Value;
    grdprprt_ddyy.ParameterByName('ysmc').Value := sp_zb.FieldByName('ysmc').Value;
    grdprprt_ddyy.ParameterByName('czy').Value := sp_zb.FieldByName('czy').Value;
    grdprprt_ddyy.ParameterByName('hjks').Value := sp_zb.FieldByName('hjks').Value;
    grdprprt_ddyy.ParameterByName('czks').Value := sp_zb.FieldByName('czks').Value;
    grdprprt_ddyy.ParameterByName('yszd').Value := sp_zb.FieldByName('yszd').Value;
    if Assigned(grdprprt_ddyy.ParameterByName('cyzd')) then
    grdprprt_ddyy.ParameterByName('cyzd').Value := Trim(sp_zb.FieldByName('cyzd').AsString);
    grdprprt_ddyy.ParameterByName('cflx').Value := sp_zb.FieldByName('cflx').Value;
    grdprprt_ddyy.ParameterByName('cfjl').Value := sp_zb.FieldByName('cfjl').Value;
    grdprprt_ddyy.ParameterByName('bz').Value := sp_zb.FieldByName('bz').Value;
    grdprprt_ddyy.ParameterByName('hjrq').Value := sp_zb.FieldByName('hjrq').Value;
    grdprprt_ddyy.ParameterByName('brdz').Value := sp_zb.FieldByName('brdz').Value;
    grdprprt_ddyy.ParameterByName('cfjl1').Value := sp_zb.FieldByName('cfjl1').Value;
  except on e: Exception do
      ShowMessage(e.Message);
  end;
  try
    grdprprt_ddyy.DataSet := sp_mx;
  except on e: Exception do
      ShowMessage(e.Message);
  end;
  res := frm_func.SetCReportXtcs(grdprprt_ddyy);
  if res <> '1' then
  begin
    ShowMessage(res);
  end
  else
  begin
    //如果存在电子签名图片控件,荆门掇刀医院
    DM_data.qry_pub.SQL.Text := 'select qmtp from sys_czy where mc=:mc and sybz=1' ;
    DM_data.qry_pub.Parameters.ParamByName('mc').Value := sp_zb.FieldByName('ysmc').Value;
    DM_data.qry_pub.Open;
    if DM_data.qry_pub.RecordCount > 0 then //存在数据记录
    begin
      vjpg := TJPEGImage.Create;
      vMemStream := TMemoryStream.Create();
      try
        //图片数据
        TBlobField(DM_data.qry_pub.FieldByName('qmtp')).SaveToStream(vMemStream);
        vMemStream.Position := 0;
        vjpg.LoadFromStream(vMemStream);
        if not DirectoryExists('c:\temp\') then
        begin
          ForceDirectories('c:\temp\');
        end;
        vFileName :='c:\temp\'+ sp_zb.FieldByName('ysmc').Value+'.jpg';
        vjpg.SaveToFile(vFileName);
        //判断图片控件是否存在
        if Assigned( grdprprt_ddyy.ControlByName('qmtpPictureBox')) then
        begin
           grdprprt_ddyy.ControlByName('qmtpPictureBox').AsPictureBox.LoadFromFile(vFileName);
        end;
      finally
        vMemStream.Free;
        vjpg.Free;
      end;
    end;

    if ylbz then
    begin
      grdprprt_ddyy.PrintPreview(True);
    end
    else
    begin
      grdprprt_ddyy.Print(False);
    end;
  end;
 //如果存在则删除
  if FileExists(vFileName) then
  begin
     DeleteFile(vFileName);
  end;
  mzfy_mzfydy_Bb.Free;
end;



 //壤塘 门诊医生工作站 病人病例打印
procedure Tfrm_mzsf_print_service.print_mzysz_brbldy(sp_brxx:TADOStoredProc;zdcs:Integer;crb:Boolean;yymc:String);
begin
  if mzysz_mzbldy_Bb = nil then
  begin
    mzysz_mzbldy_Bb := TCusBb.Create;
    mzysz_mzbldy_Bb.GetBbByDM(mzysz_mzbldy_Bb, mzysz_mzbldy_dm);
    gp_mzbldy.LoadFromStr(mzysz_mzbldy_Bb.nr);
  end;
  try
    gp_mzbldy.DataSet := nil;
    gp_mzbldy.DataSet := sp_brxx;
    if Assigned(gp_mzbldy.ParameterByName('zdzt')) then
    begin
      if zdcs=1 then
      begin
          gp_mzbldy.ParameterByName('zdzt').Value:='初诊';
      end else
      if zdcs=2 then
       begin
          gp_mzbldy.ParameterByName('zdzt').Value:='复诊';
       end;
    end;

    if Assigned(gp_mzbldy.ParameterByName('crb')) then
    begin
      if crb then
      begin
         gp_mzbldy.ParameterByName('crb').Value:='是';
      end else
         gp_mzbldy.ParameterByName('crb').Value:='否';
    end;
    if Assigned(gp_mzbldy.ParameterByName('yymc')) then
      gp_mzbldy.ParameterByName('yymc').Value:=yymc;
  except

  end;
  gp_mzbldy.Print(False);  
end;



 //壤塘 病历质控 病人病例打印
procedure Tfrm_mzsf_print_service.print_blzk_brbldy(sp_brxx:TADOQuery;zdcs:Integer;crb:Boolean;yymc:String);
begin
  if mzysz_mzbldy_Bb = nil then
  begin
    mzysz_mzbldy_Bb := TCusBb.Create;
    mzysz_mzbldy_Bb.GetBbByDM(mzysz_mzbldy_Bb, mzysz_mzbldy_dm);
    gp_mzbldy.LoadFromStr(mzysz_mzbldy_Bb.nr);
  end;
  try
    gp_mzbldy.DataSet := nil;
    gp_mzbldy.DataSet := sp_brxx;
    if Assigned(gp_mzbldy.ParameterByName('zdzt')) then
    begin
      if zdcs=1 then
      begin
          gp_mzbldy.ParameterByName('zdzt').Value:='初诊';
      end else
      if zdcs=2 then
       begin
          gp_mzbldy.ParameterByName('zdzt').Value:='复诊';
       end;
    end;

    if Assigned(gp_mzbldy.ParameterByName('crb')) then
    begin
      if crb then
      begin
         gp_mzbldy.ParameterByName('crb').Value:='是';
      end else
         gp_mzbldy.ParameterByName('crb').Value:='否';
    end;
    if Assigned(gp_mzbldy.ParameterByName('yymc')) then
      gp_mzbldy.ParameterByName('yymc').Value:=yymc;
  except

  end;
  gp_mzbldy.Print(False);  
end;


{ Tfrm_mzsf_print_service }
//台山门诊退费 生成新的收据打印
procedure Tfrm_mzsf_print_service.print_mztfsj(sp_mzsj: TADOStoredProc;lbmc,czydm: string);
var
  PrinterIdx: integer;
begin
  if tzmztffp = nil then
  begin
    tzmztffp := TCusBb.Create;
    tzmztffp.GetBbByDM(tzmztffp, mzsjdm);
    gp_tsmztfdy.LoadFromStr(tzmztffp.nr);
  end;
  try
    gp_tsmztfdy.DataSet := nil;
    gp_tsmztfdy.DataSet := sp_mzsj;
    if Assigned(gp_tsmztfdy.ParameterByName('sfczy')) then
      gp_tsmztfdy.ParameterByName('sfczy').Value:=czydm;
    if Assigned(gp_tsmztfdy.ParameterByName('tffylbmc')) then
      gp_tsmztfdy.ParameterByName('tffylbmc').Value:=lbmc;
    DM_data.qry_pub.Close;
     DM_data.qry_pub.SQL.Text := 'select isnull(jsqye,0) as jsqye ,isnull(jshye,0) jshye from sbjk_sbjs where sjbh='+ QuotedStr(sp_mzsj.FieldByName('sjbh').AsString) +
    ' and ph ='+ QuotedStr(sp_mzsj.FieldByName('ph').AsString )+ ' and fylb=2' ;
    DM_data.qry_pub.Open;
    gp_tsmztfdy.setParamVal('刷卡前余额', DM_data.qry_pub.FieldByName('jsqye').AsString);
    gp_tsmztfdy.setParamVal('刷卡后余额', DM_data.qry_pub.FieldByName('jshye').AsString);
  except
    on e: Exception do
      ShowMessage(e.Message);
  end;
  res := frm_func.SetCReportXtcs(gp_tsmztfdy);
  if res <> '1' then
  begin
    ShowMessage(res);
  end
  else
  begin
    PrinterIdx := func_GetPrinterIndex(2, v_IsPrinterJoin); //2 门诊收据
    if v_IsPrinterJoin then
      gp_tsmztfdy.Printer.PrinterName := Printer.Printers[PrinterIdx];
    gp_tsmztfdy.Print(False);

  end;
  RevertPrinter;
end;



procedure Tfrm_mzsf_print_service.ChangePrinter(_index: integer);
begin
  //判断是否使用打印关联方式及取得打印机序号
  try
    v_PrinterIndex_old := Printer.PrinterIndex;
    v_PrinterIndex_new := func_GetPrinterIndex(_index, v_IsPrinterJoin);
    if v_IsPrinterJoin then
      Proc_ChangePrinter(v_PrinterIndex_new, True);
  except
  end;
end;

procedure Tfrm_mzsf_print_service.printsydjb(sp_sydjb: TADOStoredProc);
begin
  if mzsydjbBb = nil then
  begin
    mzsydjbBb := TCusBb.Create;
    mzsydjbBb.GetBbByDM(mzsydjbBb, mzsydjb);
    gp_mzsydjb.LoadFromStr(mzsydjbBb.nr);
  end;
  try
    gp_mzsydjb.DataSet := sp_sydjb;
  except on e: Exception do
      ShowMessage(e.Message);
  end;
  res := frm_func.SetCReportXtcs(gp_mzsydjb);
  if res <> '1' then
  begin
    ShowMessage(res);
  end
  else
  begin
    gp_mzsydjb.Print(False);
  end;
end;


{-------------------------------------------------------------------------------
  过程名:    Tfrm_mzsf_print_service.printRYZM
  作者:      yangshuai
  日期:      2017.08.14
  参数:      sp_sydjb: TADOQUERY
  返回值:    无
-------------------------------------------------------------------------------}
procedure Tfrm_mzsf_print_service.printRYZM(ADO_RYZM: TADOQuery);
begin
  if mzSzryzmBb = nil then
  begin
    mzSzryzmBb := TCusBb.Create;
    mzSzryzmBb.GetBbByDM(mzSzryzmBb, mzszRyzm);
    gp_mzszryzm.LoadFromStr(mzSzryzmBb.nr);
  end;
  try
    gp_mzszryzm.DataSet := ADO_RYZM;
  except on e: Exception do
      ShowMessage(e.Message);
  end;
  res := frm_func.SetCReportXtcs(gp_mzszryzm);
  if res <> '1' then
  begin
    ShowMessage(res);
  end
  else
  begin
    gp_mzszryzm.Print(False);
  end;
end;

procedure Tfrm_mzsf_print_service.printryz(tmh: string);
var
   cxsj : TADOStoredProc;
begin
  if mzysryz=nil then
  begin
    mzysryz := TCusBb.Create;
    mzysryz.GetBbByDM(mzysryz,mzryz_dm);
    //ShowMessage('开始打印报表代码'+mzryz_dm);
    grd_mzryz.LoadFromStr(mzysryz.nr);
  end;
  cxsj := TADOStoredProc.Create(nil);
  cxsj.Connection := DM_data.ado_mydata;
  cxsj.ProcedureName :='zdybb_cx_ryz';
  //ShowMessage('调用过程'+cxsj.ProcedureName);
  cxsj.close;
  cxsj.Parameters.Clear;
  cxsj.Parameters.CreateParameter('@tmh',ftString,pdInput,9,fgUnassigned);
  cxsj.Parameters.ParamByName('@tmh').Value := tmh;
  //ShowMessage('传入参数'+tmh);
  cxsj.Open;
  grd_mzryz.DataSet := cxsj;
  //grd_mzryz.PrintPreview(False);
  grd_mzryz.Print(False);
end;
{-------------------------------------------------------------------------------
  过程名:    Tfrm_mzsf_print_service.printghsjzdy
  作者:      yangshuai
  日期:      2017.08.14
  参数:      const v_ghrs: Integer; const v_blf: Real; kh, xm, xb, nl, ksmc, ysdm, ysmc, fpdqh, ghf, v_zcf, ssf, ksdm, fymc1, fymc2: string; blfbz: Boolean; kgl_fymc: string; kgl_sfbz: Real; prv_is_kyh, _yybz: Boolean; czwz: string; v_ghrs1: Integer; khzl: string
  返回值:    无
-------------------------------------------------------------------------------}
procedure Tfrm_mzsf_print_service.printghsjzdy(const v_ghrs: Integer; const v_blf: Real;
  kh, xm, xb, nl, ksmc, ysdm, ysmc, fpdqh, ghf, v_zcf, ssf, ksdm, fymc1, fymc2: string;
  blfbz: Boolean; kgl_fymc: string; kgl_sfbz: Real; prv_is_kyh, _yybz: Boolean;
  czwz: string; v_ghrs1: Integer; khzl: string);
var
  v_IsPrinterJoin: boolean;
  PrinterIdx: Integer;
  tczf,zhzf,jshye:string;
begin
  if mzghsjBb = nil then
  begin
    mzghsjBb := TCusBb.Create;
    mzghsjBb.GetBbByDM(mzghsjBb, mzghsjdm);
    gp_mzghsjbb.LoadFromStr(mzghsjBb.nr);
  end;
  try
    gp_mzghsjbb.setParamVal('卡号', kh);
    gp_mzghsjbb.setParamVal('姓名', xm);
    gp_mzghsjbb.setParamVal('病人性别', xb);
    gp_mzghsjbb.setParamVal('病人年龄', nl);
    gp_mzghsjbb.setParamVal('收据号', fpdqh);
    gp_mzghsjbb.setParamVal('挂号专业代码', ksdm);
    gp_mzghsjbb.setParamVal('挂号专业名称', ksmc);
    gp_mzghsjbb.setParamVal('挂号医生代码', ysdm);
    gp_mzghsjbb.setParamVal('挂号医生名称', ysmc);
    gp_mzghsjbb.setParamVal('挂号费名称', fymc1);
    gp_mzghsjbb.setParamVal('挂号费', ghf);
    gp_mzghsjbb.setParamVal('诊查费名称', fymc2);
    gp_mzghsjbb.setParamVal('诊查费', v_zcf);
    gp_mzghsjbb.setParamVal('实收费', ssf);
    gp_mzghsjbb.setParamVal('打印病历费标志', blfbz);
    gp_mzghsjbb.setParamVal('病历费', format('￥%3.2f', [v_blf]));
    gp_mzghsjbb.setParamVal('挂号人数', IntToStr(v_ghrs));
    gp_mzghsjbb.setParamVal('就诊卡费用名称', kgl_fymc);
    gp_mzghsjbb.setParamVal('就诊卡收费标准', kgl_sfbz);
    gp_mzghsjbb.setParamVal('卡支付标志', prv_is_kyh);
    gp_mzghsjbb.setParamVal('预约挂号标志', _yybz);
    gp_mzghsjbb.setParamVal('处置位置', czwz);
    gp_mzghsjbb.setParamVal('医生序号', v_ghrs1);
    gp_mzghsjbb.setParamVal('卡号种类', khzl);
    if pub_yydm='0266' then //广元昭化医院要求门诊挂号发票上显示统筹金额，账户支付，卡余额    wangwei     20170329
    begin

      DM_data.qry_pub.close;
      DM_data.qry_pub.SQL.Clear;
      DM_data.qry_pub.SQL.text := 'select isnull(tczf,0)as tczf,isnull(zhzf,0)as zhzf,  '+
                                  'isnull(xjzf,0)as xjzf,isnull(jshye,0)as jshye  '+
                                  'from sbjk_sbjs where fylb=2 and tmh='+''''+kh+''''+' and sjbh=' + #39 + fpdqh + #39;
      DM_data.qry_pub.Open;

      if DM_data.qry_pub.RecordCount >0 then
      begin
        tczf := DM_data.qry_pub.FieldByName('tczf').Value;
        zhzf := DM_data.qry_pub.FieldByName('zhzf').Value;
        jshye:= DM_data.qry_pub.FieldByName('jshye').Value;

        gp_mzghsjbb.setParamVal('统筹', tczf);
        gp_mzghsjbb.setParamVal('账户支付', zhzf);
        gp_mzghsjbb.setParamVal('卡余额', jshye);
      end else
      begin
        gp_mzghsjbb.setParamVal('统筹', '0.00');
        gp_mzghsjbb.setParamVal('账户支付', '0.00');
        gp_mzghsjbb.setParamVal('卡余额', '0.00');
      end;
      

    end;
  except
  end;
  res := frm_func.SetCReportXtcs(gp_mzghsjbb);
  if res <> '1' then
  begin
    ShowMessage(res);
  end
  else
  begin
    PrinterIdx := func_GetPrinterIndex(4, v_IsPrinterJoin);
    if v_IsPrinterJoin then
      gp_mzghsjbb.Printer.PrinterName := Printer.Printers[PrinterIdx];
    gp_mzghsjbb.Print(False);
  end;
end;

procedure Tfrm_mzsf_print_service.printmzsj_js_999999(
  tmh, brxm, sfczy, sfczymc,tczf,xjzf,zhzf,zhye: string;
  qry_mzsj: TCustomADODataSet = nil);
var
  PrinterIdx: integer;
begin
  if mzsjBb = nil then
  begin
    mzsjBb := TCusBb.Create;
    mzsjBb.GetBbByDM(mzsjBb, mzsjdm);
    gp_mzsj_999999.LoadFromStr(mzsjbb);
  end;

  try
    gp_mzsj_999999.DataSet := qry_mzsj;
    gp_mzsj_999999.setParamVal('tmh', tmh);
    gp_mzsj_999999.setParamVal('brxm', brxm);
    gp_mzsj_999999.setParamVal('sfczy', sfczy);
    gp_mzsj_999999.setParamVal('sfczymc', sfczymc);

    gp_mzsj_999999.setParamVal('统筹支付', tczf);
    gp_mzsj_999999.setParamVal('现金支付', xjzf);
    gp_mzsj_999999.setParamVal('账户支付', zhzf);
   


    DM_data.qry_pub.Close;
     if pub_yydm ='0182' then    //镇巴医院
     begin
        DM_data.qry_pub.SQL.Text := 'select isnull(jsqye,0) as jsqye ,isnull(jshye,0) jshye from sbjk_sbjs where' +
      ' ph ='+ QuotedStr(qry_mzsj.FieldByName('ph').AsString )+ ' and fylb=2' ;
     end
     else begin
         DM_data.qry_pub.SQL.Text := 'select isnull(jsqye,0) as jsqye ,isnull(jshye,0) jshye from sbjk_sbjs where sjbh='+ QuotedStr(qry_mzsj.FieldByName('sjbh').AsString) +
        ' and ph ='+ QuotedStr(qry_mzsj.FieldByName('ph').AsString )+ ' and fylb=2' ;
     end;
    DM_data.qry_pub.Open;
    gp_mzsj_999999.setParamVal('刷卡前余额', DM_data.qry_pub.FieldByName('jsqye').AsString);
    gp_mzsj_999999.setParamVal('刷卡后余额', DM_data.qry_pub.FieldByName('jshye').AsString);
  except
    //ShowMessage( e.Message );
  end;
  res := frm_func.SetCReportXtcs(gp_mzsj_999999);
  if res <> '1' then
  begin
    ShowMessage(res);
  end
  else
  begin
    PrinterIdx := func_GetPrinterIndex(2, v_IsPrinterJoin); //2 门诊收据
    if v_IsPrinterJoin then
      gp_mzsj_999999.Printer.PrinterName := Printer.Printers[PrinterIdx];

    gp_mzsj_999999.Print(False);
  end;

end;

procedure Tfrm_mzsf_print_service.print_mzysgzz_zjkfpz(sp_dzd: TCustomADODataSet; v_dyyl: Boolean);
var
  I: Integer;
begin
  //创建报表对象
  if mzyszzjkfpzBb = nil then
  begin
    mzyszzjkfpzBb := TCusBb.Create;
    mzyszzjkfpzBb.GetBbByDM(mzyszzjkfpzBb, mzyszzjkfpz);
    gp_mzysgzz_kfpz.LoadFromStr(mzyszzjkfpzBb.nr);
  end;
  try
    gp_mzysgzz_kfpz.DataSet := sp_dzd;
  except on e: Exception do
      ShowMessage(e.Message);
  end;
  res := frm_func.SetCReportXtcs(gp_mzysgzz_kfpz);
  if res <> '1' then
  begin
    ShowMessage(res);
  end
  else
  begin
    if v_dyyl then
      gp_mzysgzz_kfpz.PrintPreview(False)
    else
      gp_mzysgzz_kfpz.Print(False);
  end;
end;


procedure Tfrm_mzsf_print_service.printmzsj(qry_mzsj: TCustomADODataSet; v_sszje, v_sjzs, v_czksmc, tczf, xjzf, zhzf, zhye: string);
var
  PrinterIdx: integer;
begin
  if mzsjBb = nil then
  begin
    mzsjBb := TCusBb.Create;
    mzsjBb.GetBbByDM(mzsjBb, mzsjdm);
    gp_mzsjbb.LoadFromStr(mzsjbb.nr);
  end;
  try
    gp_mzsjbb.DataSet := nil;
    gp_mzsjbb.DataSet := qry_mzsj;
    gp_mzsjbb.setParamVal('总费用', v_sszje);
    gp_mzsjbb.setParamVal('收据总数', v_sjzs);
    gp_mzsjbb.setParamVal('统筹支付', tczf);
    gp_mzsjbb.setParamVal('现金支付', xjzf);
    gp_mzsjbb.setParamVal('账户支付', zhzf);
    gp_mzsjbb.setParamVal('账户余额', zhye);
    gp_mzsjbb.setParamVal('处置科室', v_czksmc);
    DM_data.qry_pub.Close;
     if (pub_yydm ='0182')or(pub_yydm='0266') then    //镇巴医院和广元昭化医院（新增）用PH判断

     begin
        DM_data.qry_pub.SQL.Text := 'select isnull(jsqye,0) as jsqye ,isnull(jshye,0) jshye from sbjk_sbjs where' +
      ' ph ='+ QuotedStr(qry_mzsj.FieldByName('ph').AsString )+ ' and fylb=2' ;
     end else
     begin
         DM_data.qry_pub.SQL.Text := 'select isnull(jsqye,0) as jsqye ,isnull(jshye,0) jshye from sbjk_sbjs where sjbh='+ QuotedStr(qry_mzsj.FieldByName('sjbh').AsString) +
        ' and ph ='+ QuotedStr(qry_mzsj.FieldByName('ph').AsString )+ ' and fylb=2' ;
     end;
    DM_data.qry_pub.Open;
    gp_mzsjbb.setParamVal('刷卡前余额', DM_data.qry_pub.FieldByName('jsqye').AsString);
    gp_mzsjbb.setParamVal('刷卡后余额', DM_data.qry_pub.FieldByName('jshye').AsString);

//    if Assigned(gp_mzsjbb.ParameterByName('刷卡前余额')) then
//    begin
//
//    end;
//    if Assigned(gp_mzsjbb.ParameterByName('刷卡后余额')) then
//    begin
//
//    end;

  except
    on e: Exception do
      ShowMessage(e.Message);
  end;
  res := frm_func.SetCReportXtcs(gp_mzsjbb);
  if res <> '1' then
  begin
    ShowMessage(res);
  end
  else
  begin
    PrinterIdx := func_GetPrinterIndex(2, v_IsPrinterJoin); //2 门诊收据
    if v_IsPrinterJoin then
      gp_mzsjbb.Printer.PrinterName := Printer.Printers[PrinterIdx];
    gp_mzsjbb.Print(False);

  end;
  RevertPrinter;
end;

//calmhawk----2012-12-06----门诊发票打印过程-----
//sp_cs : 参数数据集
//sp_sjj:数据明细数据集

procedure Tfrm_mzsf_print_service.printmzfp(sp_cs, sp_sjj: TADOStoredProc);
var i: integer;
begin
  //if mzfpBb = nil then
  //begin
  mzfpBb := TCusBb.Create;
  mzfpBb.GetBbByDM(mzfpBb, mzfpdm);
  gp_mzfpbb.LoadFromStr(mzfpBb.nr);
  //end;
  for I := 0 to sp_cs.FieldCount - 1 do
  begin
    try
      gp_mzfpbb.ParameterByName(sp_cs.Fields[i].FieldName).Value :=
        sp_cs.FieldByName(sp_cs.Fields[i].FieldName).Value;
    except

    end;
  end;
  gp_mzfpbb.DataSet := sp_sjj;

  res := frm_func.SetCReportXtcs(gp_mzfpbb);
  if res <> '1' then
  begin
    ShowMessage(res);
  end
  else
  begin
    gp_mzfpbb.Print(false);
      //gp_mzfpbb.PrintPreview(false);
  end;

end;

{-------------------------------------------------------------------------------
  过程名:    Tfrm_mzsf_print_service.printddmzsfmxdy
  作者:      yangshuai
  日期:      2017.09.04
  参数:      ajzrq:TDateTime;ajzdh:string
  返回值:    无
-------------------------------------------------------------------------------}
procedure Tfrm_mzsf_print_service.printddmzsfmxdy(ajzrq:TDateTime;sp_maindata, sp_mxdata: TADOStoredProc;ylbz:Boolean);
var
  _SubRep4,_SubRep5: TGridppReport;
  reportHeader:IGRReportHeader;
  v_jzrq:string;
begin
  if mzddmzfymxbb = nil then
  begin
    mzddmzfymxbb := TCusBb.Create;
    mzddmzfymxbb.GetBbByDM(mzddmzfymxbb, mzddmzsfmxdm);
    gp_ddmzsfmxfpdy.LoadFromStr(mzddmzfymxbb.nr);
  end;
  try
//     gp_ddmzsfmxfpdy.setParamVal('结账日期1', ajzrq);
     gp_ddmzsfmxfpdy.DataSet:=sp_mxdata;
  except
  end;


//  try
//    _SubRep4 := TGridppReport.Create(nil);
//    if Assigned( gp_ddmzsfmxfpdy.ControlByName('zdybb_cx_mzsrrbb')) then
//    begin
//       gp_ddmzsfmxfpdy.ControlByName('zdybb_cx_mzsrrbb').AsSubReport.Report := _SubRep4.DefaultInterface;
//        _SubRep4.dataset := sp_mxdata;
//    end;
//
//
//    if sp_mxdata=nil then
//    begin
//      reportHeader:=gp_ddmzsfmxfpdy.ReportHeader[1];
//      reportHeader.Height:=0;
//      reportHeader.Visible:=false;
//      if Assigned( gp_ddmzsfmxfpdy.ControlByName('zdybb_cx_mzsrrbb')) then
//      begin
//         gp_ddmzsfmxfpdy.ControlByName('zdybb_cx_mzsrrbb').AsSubReport.Visible := False;
//      end;
//      reportHeader:=gp_ddmzsfmxfpdy.ReportHeader[2];
//      reportHeader.Height:=0;
//      reportHeader.Visible:=false;
//    end
//    else
//    begin
//      reportHeader:=gp_ddmzsfmxfpdy.ReportHeader[1];
//      reportHeader.Height:=1.8;
//      reportHeader.Visible:=True;
//      reportHeader:=gp_ddmzsfmxfpdy.ReportHeader[2];
//      reportHeader.Height:=1.2;
//      reportHeader.Visible:=True;
//      if Assigned( gp_ddmzsfmxfpdy.ControlByName('zdybb_cx_mzsrrbb')) then
//      begin
//        gp_ddmzsfmxfpdy.ControlByName('zdybb_cx_mzsrrbb').AsSubReport.Visible := True;
//      end;
//
//    end;
//  except
//  end;

  try
    _SubRep5 := TGridppReport.Create(nil);
    gp_ddmzsfmxfpdy.ControlByName('zdybb_cx_mzsrrbb').AsSubReport.Report := _SubRep5.DefaultInterface;
    v_jzrq:=FormatDateTime('yyyy-mm-dd',ajzrq);
    _SubRep5.setParamVal('结账日期1', v_jzrq);
    _SubRep5.dataset := sp_maindata;
    if (sp_maindata=nil) or (sp_maindata.RecordCount = 0)   then
    begin
      reportHeader:=gp_ddmzsfmxfpdy.ReportHeader[1];
      reportHeader.Height:=0;
      reportHeader.Visible:=false;
      reportHeader:=gp_ddmzsfmxfpdy.ReportHeader[2];
      reportHeader.Height:=0;
      reportHeader.Visible:=false;
      gp_ddmzsfmxfpdy.ControlByName('zdybb_cx_mzsrrbb').AsSubReport.Visible := false;
    end
    else 
    begin
      reportHeader:=gp_ddmzsfmxfpdy.ReportHeader[1];
      reportHeader.Height:=1.6;
      reportHeader:=gp_ddmzsfmxfpdy.ReportHeader[2];
      reportHeader.Height:=3;
      reportHeader.Visible:=True;
      gp_ddmzsfmxfpdy.ControlByName('zdybb_cx_mzsrrbb').AsSubReport.Visible := true;
    end;
  except
  end;

  res := frm_func.SetCReportXtcs(gp_ddmzsfmxfpdy);
  if res <> '1' then
  begin
    ShowMessage(res);
  end
  else
  begin
    if ylbz then
    begin
      gp_ddmzsfmxfpdy.PrintPreview(False);
    end
    else
    begin
      gp_ddmzsfmxfpdy.Print(False);
    end;
  end;

end;

{-------------------------------------------------------------------------------
  过程名:    Tfrm_mzsf_print_service.printmzsyfzd
  作者:      yangshuai
  日期:      2017.02.17
  参数:      _tmh, _ph, _fzbh, _fs: string; lb: Integer
  返回值:    无
-------------------------------------------------------------------------------}
procedure Tfrm_mzsf_print_service.printmzsyfzd(aqry_psxx:TADOQuery;_tmh, _ph, _fzbh, _fs: string; lb: Integer);
var
  ypmc_1,psjg_1,zxrq_1:string;
begin
  if lb = 1 then
  begin
    if pub_yydm='0269' then
    begin
      ChangePrinter(4);  //7  . --5改为4
    end
    else
    begin
      ChangePrinter(5);  //7  . --5改为4
    end;
    
    //创建报表对象
    if mzsyfzdBb = nil then
    begin
      mzsyfzdBb := TCusBb.Create;
      mzsyfzdBb.GetBbByDM(mzsyfzdBb, mzsyfzddm);
      gp_mzsyfzd.LoadFromStr(mzsyfzdBb.nr);
    end;


    try
      sp_sydyfz.Close;
      sp_sydyfz.ProcedureName := 'mzsy_dysyfz';
      sp_sydyfz.Parameters.Refresh;
      sp_sydyfz.Parameters.ParamByName('@tmh').Value := _tmh;
      sp_sydyfz.Parameters.ParamByName('@ph').Value := _ph;
      sp_sydyfz.Parameters.ParamByName('@fzbh').Value := _fzbh;
      sp_sydyfz.Parameters.ParamByName('@fs').Value := _fs;
      sp_sydyfz.Open;
//      DM_data.qry_pub.Close;
//      DM_data.qry_pub.SQL.Text:='';
//      DM_data.qry_pub.Open;
//      gp_mzsyfzd.FieldByName('皮试药品').Value:='';
//      gp_mzsyfzd.FieldByName('皮试结果').Value:='';
//      gp_mzsyfzd.FieldByName('皮试批号').Value:='';
      gp_mzsyfzd.DataSet := sp_sydyfz;
        if (pub_yydm='0266') and ( aqry_psxx.RecordCount > 0 ) then   //广元昭化
        begin
          aqry_psxx.First;
          psjg_1:='';
          ypmc_1:='';
          zxrq_1:='';
          while not aqry_psxx.Eof do
          begin
            ypmc_1:=ypmc_1+trim(aqry_psxx.FieldByName('ypmc').Value);
            psjg_1:=psjg_1+trim(aqry_psxx.FieldByName('psjg').Value);
            zxrq_1:=zxrq_1+trim(datetimetostr(aqry_psxx.FieldByName('zxrq').AsDateTime));
            aqry_psxx.next;
            ypmc_1:=ypmc_1+char(13);
            psjg_1:=psjg_1+char(13);
            zxrq_1:=zxrq_1+char(13);
          end;
          if Assigned(gp_mzsyfzd.ParameterByName('ypmc')) then
            gp_mzsyfzd.ParameterByName('ypmc').Value:=ypmc_1;
          if Assigned(gp_mzsyfzd.ParameterByName('psjg')) then
            gp_mzsyfzd.ParameterByName('psjg').Value:=psjg_1;
          if Assigned(gp_mzsyfzd.ParameterByName('zxrq')) then
            gp_mzsyfzd.ParameterByName('zxrq').Value:=zxrq_1;
        end else
        begin
          if Assigned(gp_mzsyfzd.ParameterByName('zxrq')) then
            gp_mzsyfzd.ParameterByName('ypmc').Value:='无皮试项目';
        end;
    except on e: Exception do
        ShowMessage(e.Message);
    end;
    res := frm_func.SetCReportXtcs(gp_mzsyfzd);
    if res <> '1' then
    begin
      ShowMessage(res);
    end
    else
    begin
      if (gp_mzsyfzd.Printer.PrinterName <> Printer.Printers[v_PrinterIndex_new]) and (v_IsPrinterJoin) then
      begin
        gp_mzsyfzd.Printer.PrinterName := Printer.Printers[v_PrinterIndex_new];
      end;
      gp_mzsyfzd.Print(False);
    end;
    if (gp_mzsyfzd.Printer.PrinterName <> Printer.Printers[v_PrinterIndex_old]) and (v_IsPrinterJoin) then
    begin
      gp_mzsyfzd.Printer.PrinterName := Printer.Printers[v_PrinterIndex_old];
    end;
  end
  else
  begin
    if pub_yydm='0269' then
    begin
      ChangePrinter(6);  //7  . --5改为4
    end else
    begin
      ChangePrinter(3);  ///8    --3 改为6
    end;
//    ChangePrinter(3);  ///8
    if mzsyfzpqdy = nil then
    begin
      mzsyfzpqdy := TCusBb.Create;
      mzsyfzpqdy.GetBbByDM(mzsyfzpqdy, mzsyfzpqddm);
      gp_mzsypqdy.LoadFromStr(mzsyfzpqdy.nr);
    end;
    try
      qry_dysyfz.Close;
      if pub_yydm = '0266' then
      begin
      if _fs = '批' then
        qry_dysyfz.SQL.Text := 'SELECT distinct a.tmh 卡号,d.brxm 姓名,d.brxb 性别,d.brnl 年龄,rtrim(isnull(f.ypbm2,f.ypmc)) 药品名,' +
          'c.ypyf 用法,c.ypyl 用量,c.yldw 用量单位,f.ypgg 规格,c.fzbh 分组号,c.yytj 用药途径,e.mc 开单医生,' +
          'a.kdrq 开单日期,c.bz 备注' +
          ' FROM mzsy_syjl a ' +
          ' join mzsy_syjlmx b ON a.syph=b.syph' +
          ' join mzsy_syjlyymx c ON b.syph=c.syph and b.fzbh=c.fzbh' +
          ' join (select tmh,brxm,brnl,brxb from sys_kyh union all select tmh,brxm,brnl,brxb from sys_kyh_ls) d on a.tmh=d.tmh' +
          ' join sys_czy e on a.kdys=e.dm ' +
          ' join sys_ypdm f on c.ypdm=f.ypdm ' +
          ' WHERE ' +
          ' a.tmh=' + #39 + _tmh + #39 +
          ' and a.syph=' + #39 + _ph + #39 +
          ' order by c.fzbh'
      else
        qry_dysyfz.SQL.Text := 'SELECT distinct a.tmh 卡号,d.brxm 姓名,d.brxb 性别,d.brnl 年龄,rtrim(isnull(f.ypbm2,f.ypmc)) 药品名,' +
          'c.ypyf 用法,c.ypyl 用量,c.yldw 用量单位,f.ypgg 规格,c.fzbh 分组号,c.yytj 用药途径,e.mc 开单医生,' +
          'a.kdrq 开单日期,c.bz 备注' +
          ' FROM mzsy_syjl a ' +
          ' join mzsy_syjlmx b ON a.syph=b.syph' +
          ' join mzsy_syjlyymx c ON b.syph=c.syph and b.fzbh=c.fzbh' +
          ' join (select tmh,brxm,brnl,brxb from sys_kyh union all select tmh,brxm,brnl,brxb from sys_kyh_ls) d on a.tmh=d.tmh' +
          ' join sys_czy e on a.kdys=e.dm ' +
          ' join sys_ypdm f on c.ypdm=f.ypdm ' +
          ' WHERE a.tmh=' + #39 + _tmh + #39 +
          ' and a.syph=' + #39 + _ph + #39 +
          ' and b.fzbh=' + #39 + _fzbh + #39 +
          ' order by c.fzbh';
      end else
      begin
      if _fs = '批' then
        qry_dysyfz.SQL.Text := 'SELECT distinct a.tmh 卡号,d.brxm 姓名,d.brxb 性别,d.brnl 年龄,rtrim(isnull(f.ypmc,f.ypbm2)) 药品名,' +
          'c.ypyf 用法,c.ypyl 用量,c.yldw 用量单位,f.ypgg 规格,c.fzbh 分组号,c.yytj 用药途径,e.mc 开单医生,' +
          'a.kdrq 开单日期,c.bz 备注' +
          ' FROM mzsy_syjl a ' +
          ' join mzsy_syjlmx b ON a.ph=b.ph' +
          ' join mzsy_syjlyymx c ON b.ph=c.ph and b.fzbh=c.fzbh' +
          ' join (select tmh,brxm,brnl,brxb from sys_kyh union all select tmh,brxm,brnl,brxb from sys_kyh_ls) d on a.tmh=d.tmh' +
          ' join sys_czy e on a.kdys=e.dm ' +
          ' join sys_ypdm f on c.ypdm=f.ypdm ' +
          ' WHERE b.tzbz=0' +
          ' and a.tmh=' + #39 + _tmh + #39 +
          ' and a.ph=' + #39 + _ph + #39 +
          ' order by c.fzbh'
      else
        qry_dysyfz.SQL.Text := 'SELECT distinct a.tmh 卡号,d.brxm 姓名,d.brxb 性别,d.brnl 年龄,rtrim(isnull(f.ypmc,f.ypbm2)) 药品名,' +
          'c.ypyf 用法,c.ypyl 用量,c.yldw 用量单位,f.ypgg 规格,c.fzbh 分组号,c.yytj 用药途径,e.mc 开单医生,' +
          'a.kdrq 开单日期,c.bz 备注' +
          ' FROM mzsy_syjl a ' +
          ' join mzsy_syjlmx b ON a.ph=b.ph' +
          ' join mzsy_syjlyymx c ON b.ph=c.ph and b.fzbh=c.fzbh' +
          ' join (select tmh,brxm,brnl,brxb from sys_kyh union all select tmh,brxm,brnl,brxb from sys_kyh_ls) d on a.tmh=d.tmh' +
          ' join sys_czy e on a.kdys=e.dm ' +
          ' join sys_ypdm f on c.ypdm=f.ypdm ' +
          ' WHERE b.zxbz=1 and b.tzbz=0 and a.tmh=' + #39 + _tmh + #39 +
          ' and a.ph=' + #39 + _ph + #39 +
          ' and b.fzbh=' + #39 + _fzbh + #39 +
          ' order by c.fzbh';
      end;
      qry_dysyfz.Open;
      gp_mzsypqdy.DataSet := qry_dysyfz;
    except on e: Exception do
        ShowMessage(e.Message);
    end;
    res := frm_func.SetCReportXtcs(gp_mzsypqdy);
    if res <> '1' then
    begin
      ShowMessage(res);
    end
    else
    begin
      if (gp_mzsypqdy.Printer.PrinterName <> Printer.Printers[v_PrinterIndex_new]) and (v_IsPrinterJoin) then
      begin
        gp_mzsypqdy.Printer.PrinterName := Printer.Printers[v_PrinterIndex_new];
      end;
      gp_mzsypqdy.Print(False);
      if (gp_mzsypqdy.Printer.PrinterName <> Printer.Printers[v_PrinterIndex_old]) and (v_IsPrinterJoin) then
      begin
        gp_mzsypqdy.Printer.PrinterName := Printer.Printers[v_PrinterIndex_old];
      end;
    end;
  end;

  RevertPrinter;
end;

 {-------------------------------------------------------------------------------
  过程名:    Tfrm_mzsf_print_service.FindComponentName
  作者:      yangshuai
  日期:      2016.06.25
  参数:      AClass: TCusBb;aComponentName:string
  返回值:    Boolean
-------------------------------------------------------------------------------}
function Tfrm_mzsf_print_service.FindComponentName(AClass: TObject;aComponentName:string):Boolean;
var
  proplist: PpropList;
  ClassTypeInfo: PTypeInfo;
  ClassTypeData: PTypeData;
  i: integer;
  NumProps: Integer;
  res: string;
  PropValue: Variant;
  temp: string;
begin
  result :=False;
  ClassTypeInfo := AClass.ClassInfo;
  AClass.ClassName;
  ClassTypeData := GetTypeData(ClassTypeInfo);
  if ClassTypeData.PropCount <> 0 then
  begin
    GetMem(proplist, Sizeof(PpropList) * ClassTypeData.PropCount);
    try
      GetPropInfos(AClass.ClassInfo, proplist);
      for i := 1 to ClassTypeData.PropCount - 1 do
      begin    
        if (proplist[i]^.PropType^.Kind<> tkMethod ) and
        (UpperCase(PropList[i]^.Name)=UpperCase(aComponentName)) then
        begin
          result :=True;
          Break;
        end;
      end;
    finally
      FreeMem(proplist, sizeof(Pproplist) * ClassTypeData.PropCount);
    end;
  end;
end;

procedure Tfrm_mzsf_print_service.printmzxyfyd(sp_zb: TCustomADODataSet; sp_mx: TCustomADODataSet; ylbz: Boolean);
 var
  vMemStream: TMemoryStream;
  vbmp:TBitmap;
  vFileName:string;
begin
  //创建报表对象
  if mzxyfydBb = nil then
  begin
    mzxyfydBb := TCusBb.Create;
    mzxyfydBb.GetBbByDM(mzxyfydBb, mzxyfyddm);
    gp_mzxyfyd.LoadFromStr(mzxyfydBb.nr);
  end;
  try
   if Assigned(gp_mzxyfyd.ParameterByName('tmh')) then
    gp_mzxyfyd.ParameterByName('tmh').Value := sp_zb.FieldByName('tmh').Value;
     if Assigned(gp_mzxyfyd.ParameterByName('cfbh')) then
    gp_mzxyfyd.ParameterByName('cfbh').Value := sp_zb.FieldByName('cfbh').Value;
//    gp_mzxyfyd.ParameterByName('ckdm').Value := sp_zb.FieldByName('ckdm').Value;
//    gp_mzxyfyd.ParameterByName('dybz').Value := sp_zb.FieldByName('dybz').Value;
//    gp_mzxyfyd.ParameterByName('lyxh').Value := sp_zb.FieldByName('lyxh').Value;
     if Assigned(gp_mzxyfyd.ParameterByName('brxm')) then
    gp_mzxyfyd.ParameterByName('brxm').Value := sp_zb.FieldByName('brxm').Value;
     if Assigned(gp_mzxyfyd.ParameterByName('brxb')) then
    gp_mzxyfyd.ParameterByName('brxb').Value := sp_zb.FieldByName('brxb').Value;
     if Assigned(gp_mzxyfyd.ParameterByName('brnl')) then
    gp_mzxyfyd.ParameterByName('brnl').Value := sp_zb.FieldByName('brnl').Value;
     if Assigned(gp_mzxyfyd.ParameterByName('brxm1')) then
    gp_mzxyfyd.ParameterByName('brxm1').Value := sp_zb.FieldByName('brxm1').Value;
     if Assigned(gp_mzxyfyd.ParameterByName('brxb1')) then
    gp_mzxyfyd.ParameterByName('brxb1').Value := sp_zb.FieldByName('brxb1').Value;
     if Assigned(gp_mzxyfyd.ParameterByName('brnl1')) then
    gp_mzxyfyd.ParameterByName('brnl1').Value := sp_zb.FieldByName('brnl1').Value;
     if Assigned(gp_mzxyfyd.ParameterByName('sjbh')) then
    gp_mzxyfyd.ParameterByName('sjbh').Value := sp_zb.FieldByName('sjbh').Value;
     if Assigned(gp_mzxyfyd.ParameterByName('cfzje')) then
    gp_mzxyfyd.ParameterByName('cfzje').Value := sp_zb.FieldByName('cfzje').Value;
     if Assigned(gp_mzxyfyd.ParameterByName('sszje')) then
    gp_mzxyfyd.ParameterByName('sszje').Value := sp_zb.FieldByName('sszje').Value;
     if Assigned(gp_mzxyfyd.ParameterByName('ksmc')) then
    gp_mzxyfyd.ParameterByName('ksmc').Value := sp_zb.FieldByName('ksmc').Value;
     if Assigned(gp_mzxyfyd.ParameterByName('ysmc')) then
    gp_mzxyfyd.ParameterByName('ysmc').Value := sp_zb.FieldByName('ysmc').Value;
     if Assigned(gp_mzxyfyd.ParameterByName('cyz')) then
    gp_mzxyfyd.ParameterByName('czy').Value := sp_zb.FieldByName('czy').Value;
     if Assigned(gp_mzxyfyd.ParameterByName('hjks')) then
    gp_mzxyfyd.ParameterByName('hjks').Value := sp_zb.FieldByName('hjks').Value;
     if Assigned(gp_mzxyfyd.ParameterByName('czks')) then
    gp_mzxyfyd.ParameterByName('czks').Value := sp_zb.FieldByName('czks').Value;
     if Assigned(gp_mzxyfyd.ParameterByName('yszd')) then
    gp_mzxyfyd.ParameterByName('yszd').Value := sp_zb.FieldByName('yszd').Value;
    if Assigned(gp_mzxyfyd.ParameterByName('cyzd')) then
    gp_mzxyfyd.ParameterByName('cyzd').Value := Trim(sp_zb.FieldByName('cyzd').AsString);
     if Assigned(gp_mzxyfyd.ParameterByName('cflx')) then
    gp_mzxyfyd.ParameterByName('cflx').Value := sp_zb.FieldByName('cflx').Value;
     if Assigned(gp_mzxyfyd.ParameterByName('cfjl')) then
    gp_mzxyfyd.ParameterByName('cfjl').Value := sp_zb.FieldByName('cfjl').Value;
     if Assigned(gp_mzxyfyd.ParameterByName('bz')) then
    gp_mzxyfyd.ParameterByName('bz').Value := sp_zb.FieldByName('bz').Value;
    if Assigned(gp_mzxyfyd.ParameterByName('hjrq')) then
      gp_mzxyfyd.ParameterByName('hjrq').Value := sp_zb.FieldByName('hjrq').Value;
//    gp_mzxyfyd.ParameterByName('cfsl').Value := sp_zb.FieldByName('cfsl').Value;
    if Assigned(gp_mzxyfyd.ParameterByName('brdz')) then
      gp_mzxyfyd.ParameterByName('brdz').Value := sp_zb.FieldByName('brdz').Value;
//    gp_mzxyfyd.ParameterByName('lyxh').Value := sp_zb.FieldByName('lyxh').Value;
    if Assigned(gp_mzxyfyd.ParameterByName('cfjl1')) then
      gp_mzxyfyd.ParameterByName('cfjl1').Value := sp_zb.FieldByName('cfjl1').Value;
    if pub_yydm = '0198' then //勉县医院添加
    begin
      gp_mzxyfyd.ParameterByName('tpczy').Value := sp_zb.FieldByName('tpry').Value;
      gp_mzxyfyd.ParameterByName('fyczy').Value := sp_zb.FieldByName('fyczy').Value;
    end;

  except on e: Exception do
      ShowMessage(e.Message);
  end;
  try
    gp_mzxyfyd.DataSet := sp_mx;
  except on e: Exception do
      ShowMessage(e.Message);
  end;
  res := frm_func.SetCReportXtcs(gp_mzxyfyd);
  if res <> '1' then
  begin
    ShowMessage(res);
  end
  else
  begin
   //如果存在电子签名图片控件,德阳眼科医院，德阳肿瘤医院
    if (pub_yydm= '0263') or (pub_yydm= '0264') then
    begin
      DM_data.qry_pub.SQL.Text := 'select qmtp from sys_czy where mc=:mc and sybz=1' ;
      DM_data.qry_pub.Parameters.ParamByName('mc').Value := sp_zb.FieldByName('ysmc').Value;
      DM_data.qry_pub.Open;
      if DM_data.qry_pub.RecordCount > 0 then //存在数据记录
      begin
        vbmp := TBitmap.Create;
        vMemStream := TMemoryStream.Create();
        try
          //图片数据
          TBlobField(DM_data.qry_pub.FieldByName('qmtp')).SaveToStream(vMemStream);
          vMemStream.Position := 0;
          vbmp.LoadFromStream(vMemStream);
          if not DirectoryExists('c:\temp\') then
          begin
            ForceDirectories('c:\temp\');
          end;
          vFileName :='c:\temp\'+ sp_zb.FieldByName('ysmc').Value+'.bmp';
          vbmp.SaveToFile(vFileName);
          //判断图片控件是否存在
          if Assigned( gp_mzxyfyd.ControlByName('qmtpPictureBox')) then
          begin
             gp_mzxyfyd.ControlByName('qmtpPictureBox').AsPictureBox.LoadFromFile(vFileName);
          end;
        finally
          vMemStream.Free;
          vbmp.Free;
        end;
      end;
    end;
    if ylbz then
    begin
      gp_mzxyfyd.PrintPreview(True);
    end
    else
    begin
      gp_mzxyfyd.Print(False);
    end;
    //如果存在则删除
    if FileExists(vFileName) then
    begin
       DeleteFile(vFileName);
    end;
  end;
end;

  //门诊检验申请单打印
procedure Tfrm_mzsf_print_service.print_mzysgzz_jysqd(sp_jysqd: TCustomADODataSet; tmh, brxm,brxb, brnl, kdysmc,kdrq: string);

begin
  //
end;
//门诊检查申请单打印
procedure Tfrm_mzsf_print_service.print_mzysgzz_jcsqd(sp_jcsqd: TCustomADODataSet; tmh, brxm,brxb, brnl, kdysmc,kdrq: string);
begin
  //
end;

procedure Tfrm_mzsf_print_service.printmzszrysqd(tmh, xm, xb, mz, nl, csrq, hyzk, lxdh, zjhm, brdz, ryzd,
  ksmc, ysmc, ysdm, szryrq, hzzk, yymc: string);
begin
   //创建报表对象
  if mzsjryryd = nil then
  begin
    mzsjryryd := TCusBb.Create;
    mzsjryryd.GetBbByDM(mzsjryryd, mzsjryryddm);
    Gr_szrysqd.LoadFromStr(mzsjryryd.nr);
  end;
  try
    Gr_szrysqd.ParameterByName('tmh').Value := tmh;
    Gr_szrysqd.ParameterByName('xm').Value := xm;
    Gr_szrysqd.ParameterByName('xb').Value := xb;
    Gr_szrysqd.ParameterByName('mz').Value := mz;
    Gr_szrysqd.ParameterByName('nl').Value := nl;
    Gr_szrysqd.ParameterByName('csrq').Value := csrq;
    Gr_szrysqd.ParameterByName('hyzk').Value := hyzk;
    Gr_szrysqd.ParameterByName('lxdh').Value := lxdh;
    Gr_szrysqd.ParameterByName('zjhm').Value := zjhm;
    Gr_szrysqd.ParameterByName('brdz').Value := brdz;
    Gr_szrysqd.ParameterByName('ryzd').Value := ryzd;
    Gr_szrysqd.ParameterByName('hzzk').Value := hzzk;
    Gr_szrysqd.ParameterByName('ksmc').Value := ksmc;
    Gr_szrysqd.ParameterByName('ysmc').Value := ysmc;
    Gr_szrysqd.ParameterByName('ysdm').Value := ysdm;
    Gr_szrysqd.ParameterByName('szryrq').Value := szryrq;
    Gr_szrysqd.ParameterByName('yymc').Value := yymc;
  except on e: Exception do
      ShowMessage(e.Message);
  end;
  Gr_szrysqd.PrintPreview(True);
end;

procedure Tfrm_mzsf_print_service.printmzxyfyd_Ex(cfbh: string; bf: Boolean = false; ylbz: Boolean = true);
var
  sp_zb: TADOStoredProc;
  sp_mx: TADOStoredProc;
begin
  DM_data.Qry_pub1.Close;
  if bf then
    DM_data.Qry_pub1.SQL.Text := 'select czks from mzxyf_cfzb_bf where cfbh=''' + cfbh + ''''
  else
    DM_data.Qry_pub1.SQL.Text := 'select czks from mzxyf_cfzb where cfbh=''' + cfbh + '''';
  DM_data.Qry_pub1.Open;
  if DM_data.Qry_pub1.IsEmpty then
  begin
    raise Exception.Create('没有找到处方信息！');
  end;

  sp_mx := TADOStoredProc.Create(nil);
  sp_mx.Connection := DM_data.ado_mydata;
  sp_mx.ProcedureName := 'mzxyf_cx_cfmx';
  sp_mx.Parameters.Refresh;
  sp_mx.Parameters.ParamByName('@cfbh').Value := cfbh;
  if bf then
    sp_mx.Parameters.ParamByName('@cflb').Value := 1
  else
    sp_mx.Parameters.ParamByName('@cflb').Value := 0;
  sp_mx.Open;

  sp_zb := TADOStoredProc.Create(nil);
  sp_zb.Connection := DM_data.ado_mydata;
  sp_zb.ProcedureName := 'zyxyf_cx_mzcfcx';
  sp_zb.Parameters.Refresh;
  sp_zb.Parameters.ParamByName('@ksdm').Value := DM_data.Qry_pub1.FieldByName('czks').AsString;
  sp_zb.Parameters.ParamByName('@cxtj').Value := ' and cfbh = ''' + cfbh + ''' ';
  if bf then
    sp_zb.Parameters.ParamByName('@cxbf').Value := 1
  else
    sp_zb.Parameters.ParamByName('@cxbf').Value := 0;
  sp_zb.Open;

  printmzxyfyd(sp_zb, sp_mx, ylbz);
  sp_zb.free;
  sp_mx.free;
end;


procedure Tfrm_mzsf_print_service.printmzzyfyd(sp_zb: TCustomADODataSet; sp_mx: TCustomADODataSet; ylbz: Boolean);
begin
  //创建报表对象
  if mzzyfydBb = nil then
  begin
    mzzyfydBb := TCusBb.Create;
    mzzyfydBb.GetBbByDM(mzzyfydBb, mzzyfyddm);
    gp_mzzyfyd.LoadFromStr(mzzyfydBb.nr);
  end;
  try
    if Assigned(gp_mzzyfyd.ParameterByName('lyxh')) then
      gp_mzzyfyd.ParameterByName('lyxh').Value := 0;
      if Assigned(gp_mzzyfyd.ParameterByName('tmh')) then
      gp_mzzyfyd.ParameterByName('tmh').Value := Trim(sp_zb.FieldByName('tmh').AsString);
      if Assigned(gp_mzzyfyd.ParameterByName('cfbh')) then
      gp_mzzyfyd.ParameterByName('cfbh').Value := Trim(sp_zb.FieldByName('cfbh').AsString);
      if Assigned( gp_mzzyfyd.ParameterByName('brxm')) then
      gp_mzzyfyd.ParameterByName('brxm').Value := Trim(sp_zb.FieldByName('brxm').AsString);
      if Assigned(gp_mzzyfyd.ParameterByName('brxb')) then
      gp_mzzyfyd.ParameterByName('brxb').Value := Trim(sp_zb.FieldByName('brxb').AsString);
      if Assigned(gp_mzzyfyd.ParameterByName('brnl')) then
      gp_mzzyfyd.ParameterByName('brnl').Value := Trim(sp_zb.FieldByName('brnl').AsString);
      if Assigned(gp_mzzyfyd.ParameterByName('brdz')) then
      gp_mzzyfyd.ParameterByName('brdz').Value := Trim(sp_zb.FieldByName('brdz').AsString);
      if Assigned(gp_mzzyfyd.ParameterByName('ksmc')) then
      gp_mzzyfyd.ParameterByName('ksmc').Value := Trim(sp_zb.FieldByName('ksmc').AsString);
      if Assigned(gp_mzzyfyd.ParameterByName('ysmc')) then
      gp_mzzyfyd.ParameterByName('ysmc').Value := Trim(sp_zb.FieldByName('ysmc').AsString);
      if Assigned(gp_mzzyfyd.ParameterByName('yszd')) then
      gp_mzzyfyd.ParameterByName('yszd').Value := Trim(sp_zb.FieldByName('yszd').AsString);
      if Assigned(gp_mzzyfyd.ParameterByName('cyzd')) then
      gp_mzzyfyd.ParameterByName('cyzd').Value := Trim(sp_zb.FieldByName('cyzd').AsString);
      if Assigned(gp_mzzyfyd.ParameterByName('cflx')) then
      gp_mzzyfyd.ParameterByName('cflx').Value := Trim(sp_zb.FieldByName('cflx').AsString);
      if Assigned(gp_mzzyfyd.ParameterByName('bz')) then
      gp_mzzyfyd.ParameterByName('bz').Value := Trim(sp_zb.FieldByName('bz').AsString);
      if Assigned(gp_mzzyfyd.ParameterByName('cfzje')) then
      gp_mzzyfyd.ParameterByName('cfzje').Value := sp_zb.FieldByName('cfzje').AsFloat;
      if Assigned(gp_mzzyfyd.ParameterByName('sszje')) then
      gp_mzzyfyd.ParameterByName('sszje').Value := sp_zb.FieldByName('sszje').AsFloat;
      if Assigned(gp_mzzyfyd.ParameterByName('cfjl')) then
      gp_mzzyfyd.ParameterByName('cfjl').Value := sp_zb.FieldByName('cfjl').AsInteger;
       if Assigned(gp_mzzyfyd.ParameterByName('cfjl1')) then
      gp_mzzyfyd.ParameterByName('cfjl1').Value := sp_zb.FieldByName('cfjl1').AsInteger;
      if Assigned(gp_mzzyfyd.ParameterByName('ckdm')) then
      gp_mzzyfyd.ParameterByName('ckdm').Value := 0;
      if Assigned(gp_mzzyfyd.ParameterByName('hjrq')) then
      gp_mzzyfyd.ParameterByName('hjrq').Value := sp_zb.FieldByName('hjrq').AsDateTime;
      if Assigned(gp_mzzyfyd.ParameterByName('tz')) then
      gp_mzzyfyd.setParamVal('tz', sp_zb.FieldByName('tz').asstring);

      if Assigned(gp_mzzyfyd.ParameterByName('合计')) then
      gp_mzzyfyd.setParamVal('合计', 0);
      if pub_yydm = '0198' then //勉县医院
        gp_mzzyfyd.ParameterByName('tpczy').Value := sp_zb.FieldByName('tpry').asstring;
         //showmessage( gp_mzzyfyd.ParameterByName('hjrq').Value);
         //showmessage( gp_mzzyfyd.ParameterByName('bz').Value);
         gp_mzzyfyd.DataSet := sp_mx;
  except on e: Exception do
      ShowMessage(e.Message);
  end;

  try
    gp_mzzyfyd.DataSet := sp_mx;
  except on e: Exception do
      ShowMessage(e.Message);
  end;
  res := frm_func.SetCReportXtcs(gp_mzzyfyd);
  if res <> '1' then
  begin
    ShowMessage(res);
  end
  else
  begin
    if ylbz then
    begin
      gp_mzzyfyd.PrintPreview(True);
    end
    else
    begin
      gp_mzzyfyd.Print(False);
    end;
  end;
end;

procedure Tfrm_mzsf_print_service.printmzyszzycf(sp_zb: TCustomADODataSet;
  print_xh, print_tmh, print_cfbh, print_brxm, print_brxb, print_brnl, print_brdz,
  print_ksmc, print_ysmc, print_yszd, print_cflx, print_cflb, print_bz: string; print_cfzje,
  print_sszje: Double; print_cfjl: Integer; print_hjrq: TDateTime; ylbz: Boolean); //门诊医生站中药处方打印
var
  I: Integer;
begin
  //创建报表对象
  if mzysgzzzycfdyBb = nil then
  begin
    mzysgzzzycfdyBb := TCusBb.Create;
    mzysgzzzycfdyBb.GetBbByDM(mzysgzzzycfdyBb, mzyszzycfdm);
    gp_mzysgzz_zycfdy.LoadFromStr(mzysgzzzycfdyBb.nr);
  end;
  try
    gp_mzysgzz_zycfdy.ParameterByName('lyxh').Value := print_xh;
    gp_mzysgzz_zycfdy.ParameterByName('tmh').Value := print_tmh;
    gp_mzysgzz_zycfdy.ParameterByName('cfbh').Value := print_cfbh;
    gp_mzysgzz_zycfdy.ParameterByName('brxm').Value := print_brxm;
    gp_mzysgzz_zycfdy.ParameterByName('brxb').Value := print_brxb;
    gp_mzysgzz_zycfdy.ParameterByName('brnl').Value := print_brnl;
    gp_mzysgzz_zycfdy.ParameterByName('brdz').Value := print_brdz;
    gp_mzysgzz_zycfdy.ParameterByName('ksmc').Value := print_ksmc;
    gp_mzysgzz_zycfdy.ParameterByName('ysmc').Value := print_ysmc;
    gp_mzysgzz_zycfdy.ParameterByName('yszd').Value := print_yszd;
    gp_mzysgzz_zycfdy.ParameterByName('cflx').Value := print_cflx;
    gp_mzysgzz_zycfdy.ParameterByName('bz').Value := print_bz;
    gp_mzysgzz_zycfdy.ParameterByName('cfzje').Value := print_cfzje;
    gp_mzysgzz_zycfdy.ParameterByName('sszje').Value := print_sszje;
    gp_mzysgzz_zycfdy.ParameterByName('cfjl').Value := print_cfjl;
    gp_mzysgzz_zycfdy.ParameterByName('hjrq').Value := print_hjrq;
  except on e: Exception do
      ShowMessage(e.Message);
  end;
  try
    gp_mzysgzz_zycfdy.DataSet := sp_zb;
  except on e: Exception do
      ShowMessage(e.Message);
  end;
  res := frm_func.SetCReportXtcs(gp_mzysgzz_zycfdy);
  if res <> '1' then
  begin
    ShowMessage(res);
  end
  else
  begin
    if ylbz then
    begin
      gp_mzysgzz_zycfdy.PrintPreview(False);
    end
    else
    begin
      gp_mzysgzz_zycfdy.Print(False);
    end;
  end;
end;

procedure Tfrm_mzsf_print_service.printmzyszxycf(sp_zb: TCustomADODataSet;
  print_xh, print_tmh, print_cfbh, print_brxm, print_brxb, print_brnl, print_brdz,
  print_ksmc, print_ysmc, print_yszd, print_cflx, print_cflb, print_bz, v_bdcflb: string; print_cfzje,
  print_sszje: Double; print_cfjl: Integer; print_hjrq: TDateTime;
  ylbz: Boolean); //门诊医生站西药处方打印
var
  I: Integer;
begin
  //创建报表对象
  //创建报表对象
  if mzysgzzxycfdyBb = nil then
  begin
    mzysgzzxycfdyBb := TCusBb.Create;
    mzysgzzxycfdyBb.GetBbByDM(mzysgzzxycfdyBb, mzyszxycfdm);
    gp_mzysgzz_xycfdy.LoadFromStr(mzysgzzxycfdyBb.nr);
  end;
  try
    gp_mzysgzz_xycfdy.ParameterByName('lyxh').Value := print_xh;
    gp_mzysgzz_xycfdy.ParameterByName('tmh').Value := print_tmh;
    gp_mzysgzz_xycfdy.ParameterByName('cfbh').Value := print_cfbh;
    gp_mzysgzz_xycfdy.ParameterByName('brxm').Value := print_brxm;
    gp_mzysgzz_xycfdy.ParameterByName('brxb').Value := print_brxb;
    gp_mzysgzz_xycfdy.ParameterByName('brnl').Value := print_brnl;
    gp_mzysgzz_xycfdy.ParameterByName('brdz').Value := print_brdz;
    gp_mzysgzz_xycfdy.ParameterByName('ksmc').Value := print_ksmc;
    gp_mzysgzz_xycfdy.ParameterByName('ysmc').Value := print_ysmc;
    gp_mzysgzz_xycfdy.ParameterByName('yszd').Value := print_yszd;
    gp_mzysgzz_xycfdy.ParameterByName('cflx').Value := print_cflx;
    gp_mzysgzz_xycfdy.ParameterByName('bz').Value := print_bz;
    gp_mzysgzz_xycfdy.ParameterByName('cfzje').Value := print_cfzje;
    gp_mzysgzz_xycfdy.ParameterByName('sszje').Value := print_sszje;
    gp_mzysgzz_xycfdy.ParameterByName('cfjl').Value := print_cfjl;
    gp_mzysgzz_xycfdy.ParameterByName('hjrq').Value := print_hjrq;
//    gp_mzysgzz_xycfdy.ParameterByName( 'bdcf' ).Value := v_bdcflb;
  except on e: Exception do
      ShowMessage(e.Message);
  end;
  try
    gp_mzysgzz_xycfdy.DataSet := sp_zb;
  except on e: Exception do
      ShowMessage(e.Message);
  end;
  res := frm_func.SetCReportXtcs(gp_mzysgzz_xycfdy);
  if res <> '1' then
  begin
    ShowMessage(res);
  end
  else
  begin
    if ylbz then
    begin
      gp_mzysgzz_xycfdy.PrintPreview(False);
    end
    else
    begin
      gp_mzysgzz_xycfdy.Print(False);
    end;
  end;
end;

procedure Tfrm_mzsf_print_service.printyfsfwfyyp(sp_sfwfycx: TCustomADODataSet);
var
  I: Integer;
begin
  //创建报表对象
  if yfsfwfyypBb = nil then
  begin
    yfsfwfyypBb := TCusBb.Create;
    yfsfwfyypBb.GetBbByDM(yfsfwfyypBb, yfsfwfyypdm);
    gp_yfsfwfy.LoadFromStr(yfsfwfyypBb.nr);
  end;

  try
    gp_yfsfwfy.DataSet := sp_sfwfycx;
  except on e: Exception do
      ShowMessage(e.Message);
  end;
  res := frm_func.SetCReportXtcs(gp_yfsfwfy);
  if res <> '1' then
  begin
    ShowMessage(res);
  end
  else
  begin
    gp_yfsfwfy.Print(False);
  end;
end;

procedure Tfrm_mzsf_print_service.Mzbrfyqddy(sp_sjj: TCustomADODataSet; sp_cs: TCustomADODataSet);
var
  I: Integer;
begin
  //创建报表对象
  if mzbrfyqd_Bb = nil then
  begin
    mzbrfyqd_Bb := TCusBb.Create;
    mzbrfyqd_Bb.GetBbByDM(mzbrfyqd_Bb, mzbrfyqd);
    gp_mzbrfyqd.LoadFromStr(mzbrfyqd_Bb);
  end;

  if Assigned(sp_cs) then
  begin
    try
      for I := 0 to sp_cs.Fields.Count - 1 do
      begin
        gp_mzbrfyqd.setParamVal(sp_cs.Fields[i].FieldName, sp_cs.Fields[i].Value);
      end;
    except on e: Exception do
        ShowMessage(e.Message);
    end;
  end;
  gp_mzbrfyqd.DataSet := sp_sjj;
  res := frm_func.SetCReportXtcs(gp_mzbrfyqd);
  if res <> '1' then
  begin
    ShowMessage(res);
  end
  else
  begin
    gp_mzbrfyqd.PrintPreview(True);
  end;
end;

procedure Tfrm_mzsf_print_service.print_fyd_mzxy(sp_zb: TCustomADODataSet;
  print_xh, print_tmh, print_cfbh, print_brxm, print_brxb, print_brnl, print_brdz,
  print_ksmc, print_ysmc, print_yszd, print_cflx, print_bz: string; print_cfzje,
  print_sszje: Double; print_cfjl, fyckh: Integer; print_hjrq: TDateTime;
  ylbz: Boolean);
var
  I: Integer;
  vMemStream: TMemoryStream;
  vbmp: TBitmap;
  vFileName:string ;
begin
  //创建报表对象
  if mzxyzdfydBb = nil then
  begin
    mzxyzdfydBb := TCusBb.Create;
    mzxyzdfydBb.GetBbByDM(mzxyzdfydBb, mzxyzdfyddm);
    gp_mzxyzdfyd.LoadFromStr(mzxyzdfydBb.nr);
  end;
  try
    gp_mzxyzdfyd.ParameterByName('lyxh').Value := print_xh;
    gp_mzxyzdfyd.ParameterByName('tmh').Value := print_tmh;
    gp_mzxyzdfyd.ParameterByName('cfbh').Value := print_cfbh;
    gp_mzxyzdfyd.ParameterByName('brxm').Value := print_brxm;
    gp_mzxyzdfyd.ParameterByName('brxb').Value := print_brxb;
    gp_mzxyzdfyd.ParameterByName('brnl').Value := print_brnl;
    gp_mzxyzdfyd.ParameterByName('brdz').Value := print_brdz;
    gp_mzxyzdfyd.ParameterByName('ksmc').Value := print_ksmc;
    gp_mzxyzdfyd.ParameterByName('ysmc').Value := print_ysmc;
    gp_mzxyzdfyd.ParameterByName('yszd').Value := print_yszd;
    gp_mzxyzdfyd.ParameterByName('cflx').Value := print_cflx;
    gp_mzxyzdfyd.ParameterByName('bz').Value := print_bz;
    gp_mzxyzdfyd.ParameterByName('cfzje').Value := print_cfzje;
    gp_mzxyzdfyd.ParameterByName('sszje').Value := print_sszje;
    gp_mzxyzdfyd.ParameterByName('cfjl').Value := print_cfjl;
    gp_mzxyzdfyd.ParameterByName('ckdm').Value := fyckh;
    gp_mzxyzdfyd.ParameterByName('hjrq').Value := print_hjrq;

    //如果存在电子签名图片控件
//    if Assigned(gp_mzxyzdfyd.ControlByName('qmtpPictureBox')) then
//    begin
//      DM_data.qry_pub.Close;
//      DM_data.qry_pub.SQL.Text := 'select qmtp from sys_czy where mc=:mc' ;
//      DM_data.qry_pub.Parameters.ParamByName('mc').Value := print_ysmc;
//      DM_data.qry_pub.Open;
//      vMemStream := TMemoryStream.Create();
//      try
//        //图片数据
//        TBlobField(DM_data.qry_pub.FieldByName('qmtp')).SaveToStream(vMemStream);
//        vMemStream.Position := 0;
//        vMemSize := vMemStream.Size;
//        vBuffer := AllocMem(vMemSize);
//        try
//          vMemStream.Read(vBuffer^, vMemSize);
//          gp_mzxyzdfyd.ControlByName('qmtpPictureBox').AsPictureBox.LoadFromMemory(Byte(vBuffer[0]), vMemSize);
//        finally
//          FreeMem(vBuffer, vMemSize);
//        end;
//      finally
//        vMemStream.Free;
//      end;
//    end;
  except on e: Exception do
      ShowMessage(e.Message);
  end;
  try
    gp_mzxyzdfyd.DataSet := sp_zb;
  except on e: Exception do
      ShowMessage(e.Message);
  end;
  res := frm_func.SetCReportXtcs(gp_mzxyzdfyd);
  if res <> '1' then
  begin
    ShowMessage(res);
  end
  else
  begin
     //如果存在电子签名图片控件,德阳眼科医院，德阳肿瘤医院
     if (pub_yydm= '0263') or (pub_yydm= '0264') then
      begin
        DM_data.qry_pub.SQL.Text := 'select qmtp from sys_czy where mc=:mc and sybz=1' ;
        DM_data.qry_pub.Parameters.ParamByName('mc').Value := print_ysmc;
        DM_data.qry_pub.Open;
        if DM_data.qry_pub.RecordCount > 0 then //存在数据记录
        begin
          vbmp := TBitmap.Create;
          vMemStream := TMemoryStream.Create();
          try
            //图片数据
            TBlobField(DM_data.qry_pub.FieldByName('qmtp')).SaveToStream(vMemStream);
            vMemStream.Position := 0;
            vbmp.LoadFromStream(vMemStream);
            if not DirectoryExists('c:\zdtemp\') then
            begin
               ForceDirectories('c:\zdtemp\');
            end;
            vFileName :='c:\zdtemp\'+ print_ysmc+'.bmp';
            vbmp.SaveToFile(vFileName);
             //判断图片控件是否存在
            if Assigned( gp_mzxyzdfyd.ControlByName('qmtpPictureBox')) then
            begin
               gp_mzxyzdfyd.ControlByName('qmtpPictureBox').AsPictureBox.LoadFromFile(vFileName);
            end;
          //  gp_mzxyzdfyd.ControlByName('qmtpPictureBox').AsPictureBox.LoadFromFile(vFileName);
          finally
            vMemStream.Free;
            vbmp.Free;
          end;
        end;
      end;
    if ylbz then
    begin
      gp_mzxyzdfyd.PrintPreview(False);
    end
    else
    begin
      gp_mzxyzdfyd.Print(False);
    end;
    //如果存在则删除
    if FileExists(vFileName) then
    begin
       DeleteFile(vFileName);
    end;
  end;
end;

procedure Tfrm_mzsf_print_service.print_fyd_mzxy_dd(sp_zb: TCustomADODataSet;
  print_xh, print_tmh, print_cfbh, print_brxm, print_brxb, print_brnl,
  print_brdz, print_ksmc, print_ysmc, print_yszd, print_cflx, print_bz: string;
  print_cfzje, print_sszje: Double; print_cfjl, fyckh, ypsl, cfzsl: Integer;
  print_hjrq: TDateTime; ylbz: Boolean);
var
  vMemStream: TMemoryStream;
  vbmp: TBitmap;
  vFileName:string ;
begin
  //创建报表对象
  if mzxyzdfydBb = nil then
  begin
    mzxyzdfydBb := TCusBb.Create;
    mzxyzdfydBb.GetBbByDM(mzxyzdfydBb, mzxyzdfyddm);
    gp_mzxyzdfyd.LoadFromStr(mzxyzdfydBb.nr);
  end;
  try
    gp_mzxyzdfyd.ParameterByName('lyxh').Value := print_xh;
    gp_mzxyzdfyd.ParameterByName('tmh').Value := print_tmh;
    gp_mzxyzdfyd.ParameterByName('cfbh').Value := print_cfbh;
    gp_mzxyzdfyd.ParameterByName('brxm').Value := print_brxm;
    gp_mzxyzdfyd.ParameterByName('brxb').Value := print_brxb;
    gp_mzxyzdfyd.ParameterByName('brnl').Value := print_brnl;
    gp_mzxyzdfyd.ParameterByName('brdz').Value := print_brdz;
    gp_mzxyzdfyd.ParameterByName('ksmc').Value := print_ksmc;
    gp_mzxyzdfyd.ParameterByName('ysmc').Value := print_ysmc;
    gp_mzxyzdfyd.ParameterByName('yszd').Value := print_yszd;
    gp_mzxyzdfyd.ParameterByName('cflx').Value := print_cflx;
    gp_mzxyzdfyd.ParameterByName('bz').Value := print_bz;
    gp_mzxyzdfyd.ParameterByName('cfzje').Value := print_cfzje;
    gp_mzxyzdfyd.ParameterByName('sszje').Value := print_sszje;
    gp_mzxyzdfyd.ParameterByName('cfjl').Value := print_cfjl;
    gp_mzxyzdfyd.ParameterByName('ckdm').Value := fyckh;
    gp_mzxyzdfyd.ParameterByName('hjrq').Value := print_hjrq;
    gp_mzxyzdfyd.ParameterByName('cfzys').Value := ypsl;
    gp_mzxyzdfyd.ParameterByName('cfzsl').Value := cfzsl;
  except on e: Exception do
      ShowMessage(e.Message);
  end;
  try
    gp_mzxyzdfyd.DataSet := sp_zb;
  except on e: Exception do
      ShowMessage(e.Message);
  end;
  res := frm_func.SetCReportXtcs(gp_mzxyzdfyd);
  if res <> '1' then
  begin
    ShowMessage(res);
  end
  else
  begin
   //如果存在电子签名图片控件,德阳眼科医院，德阳肿瘤医院
   if (pub_yydm= '0263') or (pub_yydm= '0264') then
    begin
      DM_data.qry_pub.SQL.Text := 'select qmtp from sys_czy where mc=:mc and sybz=1' ;
      DM_data.qry_pub.Parameters.ParamByName('mc').Value := print_ysmc;
      DM_data.qry_pub.Open;
      if DM_data.qry_pub.RecordCount > 0 then //存在数据记录
      begin
        vbmp := TBitmap.Create;
        vMemStream := TMemoryStream.Create();
        try
          //图片数据
          TBlobField(DM_data.qry_pub.FieldByName('qmtp')).SaveToStream(vMemStream);
          vMemStream.Position := 0;
          vbmp.LoadFromStream(vMemStream);
          if not DirectoryExists('c:\zdtemp\') then
          begin
             ForceDirectories('c:\zdtemp\');
          end;
          vFileName :='c:\zdtemp\'+ print_ysmc+'.bmp';
          vbmp.SaveToFile(vFileName);
          //判断图片控件是否存在
          if Assigned(gp_mzxyzdfyd.ControlByName('qmtpPictureBox')) then
          begin
             gp_mzxyzdfyd.ControlByName('qmtpPictureBox').AsPictureBox.LoadFromFile(vFileName);
            
          end;
         // gp_mzxyzdfyd.ControlByName('qmtpPictureBox').AsPictureBox.LoadFromFile(vFileName);
        finally
          vMemStream.Free;
          vbmp.Free;
        end;
      end;
    end;
    if ylbz then
    begin
      gp_mzxyzdfyd.PrintPreview(False);
    end
    else
    begin
      gp_mzxyzdfyd.Print(False);
    end;
    //如果存在则删除
    if FileExists(vFileName) then
    begin
       DeleteFile(vFileName);
    end;
  end;
end;

procedure Tfrm_mzsf_print_service.print_fyd_mzxy_new(sp_zb,
  sp_mx: TCustomADODataSet);
begin
  if mzxyzdfyd_new = nil then
  begin
    mzxyzdfyd_new := TCusBb.Create;
    if pub_yydm='0240' then
      mzxyzdfyd_new.GetBbByDM(mzxyzdfyd_new, '010422')
    else
      mzxyzdfyd_new.GetBbByDM(mzxyzdfyd_new, mzxyzdfyd_new_dm);
    gp_mzxyzdfyd_new.LoadFromStr(mzxyzdfyd_new);
  end;
  try
    gp_mzxyzdfyd_new.setParamVal('brxm', sp_zb.FieldByName('brxm').AsString);
    gp_mzxyzdfyd_new.setParamVal('brxb', sp_zb.FieldByName('brxb').AsString);
    gp_mzxyzdfyd_new.setParamVal('brnl', sp_zb.FieldByName('brnl').AsString);
    gp_mzxyzdfyd_new.setParamVal('cfbh', sp_zb.FieldByName('cfbh').AsString);
    gp_mzxyzdfyd_new.setParamVal('sszje', sp_zb.FieldByName('sszje').AsString);
    gp_mzxyzdfyd_new.setParamVal('yszd', sp_zb.FieldByName('yszd').AsString);
    gp_mzxyzdfyd_new.setParamVal('ksmc', sp_zb.FieldByName('ksmc').AsString);
    gp_mzxyzdfyd_new.setParamVal('brdz', sp_zb.FieldByName('brdz').AsString);
    gp_mzxyzdfyd_new.setParamVal('cflx', sp_zb.FieldByName('cflx').AsString);
    gp_mzxyzdfyd_new.setParamVal('ysmc', sp_zb.FieldByName('ysmc').AsString);
    gp_mzxyzdfyd_new.setParamVal('fyr', pub_czyxm);

  except on e: Exception do
      ShowMessage(e.Message);
  end;
  try
    gp_mzxyzdfyd_new.DataSet := sp_mx;
  except on e: Exception do
      ShowMessage(e.Message);
  end;
  res := Frm_func.SetCReportXtcs(gp_mzxyzdfyd_new);
  if res <> '1' then
  begin
    ShowMessage(res);
  end
  else
  begin
    gp_mzxyzdfyd_new.Print(False);
  end;
end;

procedure Tfrm_mzsf_print_service.print_fyd_mzxy_sg(sp_zb: TCustomADODataSet;
  print_xh, print_tmh, print_cfbh, print_brxm, print_brxb, print_brnl,
  print_brdz, print_ksmc, print_ysmc, print_yszd, print_cflx, print_bz: string;
  print_cfzje, print_sszje: Double; print_cfjl, fyckh: Integer;
  print_hjrq: TDateTime; ylbz: Boolean);
var
  I: Integer;
begin
  //创建报表对象
  if mzxysgfydBb = nil then
  begin
    mzxysgfydBb := TCusBb.Create;
    mzxysgfydBb.GetBbByDM(mzxysgfydBb, mzxysgfyddm);
    gp_mzxysgfyd.LoadFromStr(mzxysgfydBb.nr);
  end;
  try
    gp_mzxysgfyd.ParameterByName('lyxh').Value := print_xh;
    gp_mzxysgfyd.ParameterByName('tmh').Value := print_tmh;
    gp_mzxysgfyd.ParameterByName('cfbh').Value := print_cfbh;
    gp_mzxysgfyd.ParameterByName('brxm').Value := print_brxm;
    gp_mzxysgfyd.ParameterByName('brxb').Value := print_brxb;
    gp_mzxysgfyd.ParameterByName('brnl').Value := print_brnl;
    gp_mzxysgfyd.ParameterByName('brdz').Value := print_brdz;
    gp_mzxysgfyd.ParameterByName('ksmc').Value := print_ksmc;
    gp_mzxysgfyd.ParameterByName('ysmc').Value := print_ysmc;
    gp_mzxysgfyd.ParameterByName('yszd').Value := print_yszd;
    gp_mzxysgfyd.ParameterByName('cflx').Value := print_cflx;
    gp_mzxysgfyd.ParameterByName('bz').Value := print_bz;
    gp_mzxysgfyd.ParameterByName('cfzje').Value := print_cfzje;
    gp_mzxysgfyd.ParameterByName('sszje').Value := print_sszje;
    gp_mzxysgfyd.ParameterByName('cfjl').Value := print_cfjl;
    gp_mzxysgfyd.ParameterByName('ckdm').Value := fyckh;
    gp_mzxysgfyd.ParameterByName('hjrq').Value := print_hjrq;
  except on e: Exception do
      ShowMessage(e.Message);
  end;
  try
    gp_mzxysgfyd.DataSet := sp_zb;
  except on e: Exception do
      ShowMessage(e.Message);
  end;
  res := frm_func.SetCReportXtcs(gp_mzxysgfyd);
  if res <> '1' then
  begin
    ShowMessage(res);
  end
  else
  begin
    if ylbz then
    begin
      gp_mzxysgfyd.PrintPreview(False);
    end
    else
    begin
      gp_mzxysgfyd.Print(False);
    end;
  end;
end;

procedure Tfrm_mzsf_print_service.print_fyd_mzzy(sp_zb: TCustomADODataSet;
  print_xh, print_tmh, print_cfbh, print_brxm, print_brxb, print_brnl, print_brdz,
  print_ksmc, print_ysmc, print_yszd, print_cflx, print_bz: string; print_cfzje,
  print_sszje: Double; print_cfjl, fyckh: Integer; print_hjrq: TDateTime;
  ylbz: Boolean);
var
  I: Integer;
begin
  //创建报表对象
  if mzzyzdfydBb = nil then
  begin
    mzzyzdfydBb := TCusBb.Create;
    mzzyzdfydBb.GetBbByDM(mzzyzdfydBb, mzzyzdfyddm);
    gp_mzzyzdfyd.LoadFromStr(mzzyzdfydBb.nr);
  end;
  try
    gp_mzzyzdfyd.ParameterByName('lyxh').Value := print_xh;
    gp_mzzyzdfyd.ParameterByName('tmh').Value := print_tmh;
    gp_mzzyzdfyd.ParameterByName('cfbh').Value := print_cfbh;
    gp_mzzyzdfyd.ParameterByName('brxm').Value := print_brxm;
    gp_mzzyzdfyd.ParameterByName('brxb').Value := print_brxb;
    gp_mzzyzdfyd.ParameterByName('brnl').Value := print_brnl;
    gp_mzzyzdfyd.ParameterByName('brdz').Value := print_brdz;
    gp_mzzyzdfyd.ParameterByName('ksmc').Value := print_ksmc;
    gp_mzzyzdfyd.ParameterByName('ysmc').Value := print_ysmc;
    gp_mzzyzdfyd.ParameterByName('yszd').Value := print_yszd;
    gp_mzzyzdfyd.ParameterByName('cflx').Value := print_cflx;
    gp_mzzyzdfyd.ParameterByName('bz').Value := print_bz;
    gp_mzzyzdfyd.ParameterByName('cfzje').Value := print_cfzje;
    gp_mzzyzdfyd.ParameterByName('sszje').Value := print_sszje;
    gp_mzzyzdfyd.ParameterByName('cfjl').Value := print_cfjl;
    gp_mzzyzdfyd.ParameterByName('ckdm').Value := fyckh;
    gp_mzzyzdfyd.ParameterByName('hjrq').Value := print_hjrq;
  except on e: Exception do
      ShowMessage(e.Message);
  end;
  try
    gp_mzzyzdfyd.DataSet := sp_zb;
  except on e: Exception do
      ShowMessage(e.Message);
  end;
  res := frm_func.SetCReportXtcs(gp_mzzyzdfyd);
  if res <> '1' then
  begin
    ShowMessage(res);
  end
  else
  begin
    if ylbz then
    begin
      gp_mzzyzdfyd.PrintPreview(False);
    end
    else
    begin
      gp_mzzyzdfyd.Print(False);
    end;
  end;
end;

procedure Tfrm_mzsf_print_service.print_fyd_mzzy_sg(sp_zb: TCustomADODataSet;
  print_xh, print_tmh, print_cfbh, print_brxm, print_brxb, print_brnl,
  print_brdz, print_ksmc, print_ysmc, print_yszd, print_cflx, print_bz: string;
  print_cfzje, print_sszje: Double; print_cfjl, fyckh: Integer;
  print_hjrq: TDateTime; ylbz: Boolean);
var
  I: Integer;
begin
  //创建报表对象
  if mzzysgfydBb = nil then
  begin
    mzzysgfydBb := TCusBb.Create;
    mzzysgfydBb.GetBbByDM(mzzysgfydBb, mzzysgfyddm);
    gp_mzzysgfyd.LoadFromStr(mzzysgfydBb.nr);
  end;
  try
    gp_mzzysgfyd.ParameterByName('lyxh').Value := print_xh;
    gp_mzzysgfyd.ParameterByName('tmh').Value := print_tmh;
    gp_mzzysgfyd.ParameterByName('cfbh').Value := print_cfbh;
    gp_mzzysgfyd.ParameterByName('brxm').Value := print_brxm;
    gp_mzzysgfyd.ParameterByName('brxb').Value := print_brxb;
    gp_mzzysgfyd.ParameterByName('brnl').Value := print_brnl;
    gp_mzzysgfyd.ParameterByName('brdz').Value := print_brdz;
    gp_mzzysgfyd.ParameterByName('ksmc').Value := print_ksmc;
    gp_mzzysgfyd.ParameterByName('ysmc').Value := print_ysmc;
    gp_mzzysgfyd.ParameterByName('yszd').Value := print_yszd;
    gp_mzzysgfyd.ParameterByName('cflx').Value := print_cflx;
    gp_mzzysgfyd.ParameterByName('bz').Value := print_bz;
    gp_mzzysgfyd.ParameterByName('cfzje').Value := print_cfzje;
    gp_mzzysgfyd.ParameterByName('sszje').Value := print_sszje;
    gp_mzzysgfyd.ParameterByName('cfjl').Value := print_cfjl;
    gp_mzzysgfyd.ParameterByName('ckdm').Value := fyckh;
    gp_mzzysgfyd.ParameterByName('hjrq').Value := print_hjrq;
  except on e: Exception do
      ShowMessage(e.Message);
  end;
  try
    gp_mzzysgfyd.DataSet := sp_zb;
  except on e: Exception do
      ShowMessage(e.Message);
  end;
  res := frm_func.SetCReportXtcs(gp_mzzysgfyd);
  if res <> '1' then
  begin
    ShowMessage(res);
  end
  else
  begin
    if ylbz then
    begin
      gp_mzzysgfyd.PrintPreview(False);
    end
    else
    begin
      gp_mzzysgfyd.Print(False);
    end;
  end;
end;

procedure Tfrm_mzsf_print_service.print_fyd_mzxy_sg_dd(sp_zb: TCustomADODataSet;
  print_xh, print_tmh, print_cfbh, print_brxm, print_brxb, print_brnl,
  print_brdz, print_ksmc, print_ysmc, print_yszd, print_cflx, print_bz: string;
  print_cfzje, print_sszje: Double; print_cfjl, fyckh, ypsl, cfzsl: Integer;
  print_hjrq: TDateTime; ylbz: Boolean);
begin
  //创建报表对象
  if mzxysgfydBb = nil then
  begin
    mzxysgfydBb := TCusBb.Create;
    mzxysgfydBb.GetBbByDM(mzxysgfydBb, mzxysgfyddm);
    gp_mzxysgfyd.LoadFromStr(mzxysgfydBb.nr);
  end;
  try
    gp_mzxysgfyd.ParameterByName('lyxh').Value := print_xh;
    gp_mzxysgfyd.ParameterByName('tmh').Value := print_tmh;
    gp_mzxysgfyd.ParameterByName('cfbh').Value := print_cfbh;
    gp_mzxysgfyd.ParameterByName('brxm').Value := print_brxm;
    gp_mzxysgfyd.ParameterByName('brxb').Value := print_brxb;
    gp_mzxysgfyd.ParameterByName('brnl').Value := print_brnl;
    gp_mzxysgfyd.ParameterByName('brdz').Value := print_brdz;
    gp_mzxysgfyd.ParameterByName('ksmc').Value := print_ksmc;
    gp_mzxysgfyd.ParameterByName('ysmc').Value := print_ysmc;
    gp_mzxysgfyd.ParameterByName('yszd').Value := print_yszd;
    gp_mzxysgfyd.ParameterByName('cflx').Value := print_cflx;
    gp_mzxysgfyd.ParameterByName('bz').Value := print_bz;
    gp_mzxysgfyd.ParameterByName('cfzje').Value := print_cfzje;
    gp_mzxysgfyd.ParameterByName('sszje').Value := print_sszje;
    gp_mzxysgfyd.ParameterByName('cfjl').Value := print_cfjl;
    gp_mzxysgfyd.ParameterByName('ckdm').Value := fyckh;
    gp_mzxysgfyd.ParameterByName('hjrq').Value := print_hjrq;
    gp_mzxysgfyd.ParameterByName('cfzys').Value := ypsl;
    gp_mzxysgfyd.ParameterByName('cfzsl').Value := cfzsl;
  except on e: Exception do
      ShowMessage(e.Message);
  end;
  try
    gp_mzxysgfyd.DataSet := sp_zb;
  except on e: Exception do
      ShowMessage(e.Message);
  end;
  res := frm_func.SetCReportXtcs(gp_mzxysgfyd);
  if res <> '1' then
  begin
    ShowMessage(res);
  end
  else
  begin
    if ylbz then
    begin
      gp_mzxysgfyd.PrintPreview(False);
    end
    else
    begin
      gp_mzxysgfyd.Print(False);
    end;
  end;
end;

procedure Tfrm_mzsf_print_service.print_mzysgzz_dzd(sp_dzd: TCustomADODataSet; v_dyyl: Boolean);
var
  I: Integer;
  PrinterIdx: integer;
begin
  //创建报表对象
  if mzysgzzdzdBb = nil then
  begin
    mzysgzzdzdBb := TCusBb.Create;
    mzysgzzdzdBb.GetBbByDM(mzysgzzdzdBb, mzysgzzdzddm);
    gp_mzysgzz_dzd.LoadFromStr(mzysgzzdzdBb.nr);
  end;
  try
    gp_mzysgzz_dzd.DataSet := sp_dzd;
  except on e: Exception do
      ShowMessage(e.Message);
  end;
  res := frm_func.SetCReportXtcs(gp_mzysgzz_dzd);
//  if res <> '1' then
//  begin
//    ShowMessage(res);
//  end
//  else
//  begin
//    if v_dyyl then
//      gp_mzysgzz_dzd.PrintPreview(False)
//    else
//      gp_mzysgzz_dzd.Print(False);
//  end;
  if res <> '1' then
  begin
    ShowMessage(res);
  end
  else
  begin
    PrinterIdx := func_GetPrinterIndex(5, v_IsPrinterJoin); //2 导诊单
    if v_IsPrinterJoin then
      gp_mzysgzz_dzd.Printer.PrinterName := Printer.Printers[PrinterIdx];
    if v_dyyl then
      gp_mzysgzz_dzd.PrintPreview(False)
    else
      gp_mzysgzz_dzd.Print(False);
  end;
  RevertPrinter; //还原之前的打印机
end;

procedure Tfrm_mzsf_print_service.print_mzysgzz_mzbl(
  sp_mzbl: TCustomADODataSet);
begin
  if mzblBb = nil then
  begin
    try
      mzblBb := TCusBb.Create;
      mzblBb.GetBbByDM(mzblBb, mzdzbldm);
      gp_mzysgzz_mzbl.LoadFromStr(mzblBb.nr);
    except
      ShowMessage('报表不存在！请先加入报表！');
      exit;
    end;
  end;
  try
    gp_mzysgzz_mzbl.DataSet := sp_mzbl;
  except on e: Exception do
      ShowMessage(e.Message);
  end;
  res := frm_func.SetCReportXtcs(gp_mzysgzz_mzbl);
  if res <> '1' then
  begin
    ShowMessage(res);
  end
  else
  begin
    gp_mzysgzz_mzbl.PrintPreview(False);
  end;
end;

procedure Tfrm_mzsf_print_service.print_tykf_qtck_sqd(v_ckdh: string);
begin
  sp_tykf_qtck_sqd_dy.Close;
  sp_tykf_qtck_sqd_dy.Parameters.ParamByName('@ckdh').Value := v_ckdh;
  sp_tykf_qtck_sqd_dy.Open;
  if sp_tykf_qtck_sqd_dy.RecordCount > 0 then
  begin
    if tykf_qtcksqd_Bb = nil then
    begin
      tykf_qtcksqd_Bb := TCusBb.Create;
      tykf_qtcksqd_Bb.GetBbByDM(tykf_qtcksqd_Bb, tykf_qtcksqd_dm);
      gp_tykf_qtcksqd.LoadFromStr(tykf_qtcksqd_Bb.nr);
    end;
    try
      gp_tykf_qtcksqd.DataSet := sp_tykf_qtck_sqd_dy;
    except on e: Exception do
        ShowMessage(e.Message);
    end;
    res := frm_func.SetCReportXtcs(gp_tykf_qtcksqd);
    if res <> '1' then
    begin
      ShowMessage(res);
    end
    else
    begin
      gp_tykf_qtcksqd.PrintPreview(False);
    end;
  end;
end;

procedure Tfrm_mzsf_print_service.print_tyyf_qtck_sqd(v_ckdh: string);
begin
  sp_tyyf_qtck_sqd_dy.Close;
  sp_tyyf_qtck_sqd_dy.Parameters.ParamByName('@ckdh').Value := v_ckdh;
  sp_tyyf_qtck_sqd_dy.Open;
  if sp_tyyf_qtck_sqd_dy.RecordCount > 0 then
  begin
    if tyyf_qtcksqd_Bb = nil then
    begin
      tyyf_qtcksqd_Bb := TCusBb.Create;
      tyyf_qtcksqd_Bb.GetBbByDM(tyyf_qtcksqd_Bb, tyyf_qtcksqd_dm);
      gp_tyyf_qtcksqd.LoadFromStr(tyyf_qtcksqd_Bb.nr);
    end;
    try
      gp_tyyf_qtcksqd.DataSet := sp_tyyf_qtck_sqd_dy;
    except on e: Exception do
        ShowMessage(e.Message);
    end;
    res := frm_func.SetCReportXtcs(gp_tyyf_qtcksqd);
    if res <> '1' then
    begin
      ShowMessage(res);
    end
    else
    begin
      gp_tyyf_qtcksqd.PrintPreview(False);
    end;
  end;
end;
procedure Tfrm_mzsf_print_service.print_mzsf_czyjz(qry_cxjz_mx:TCustomADODataSet;jzdh: string);
begin
    if mzsfczyjz = nil then
  begin
    try
      mzsfczyjz := TCusBb.Create;
      mzsfczyjz.GetBbByDM(mzsfczyjz, mzsfczyjzdm);
      gp_mzsf_czyjz.LoadFromStr(mzsfczyjz.nr);
    except
      ShowMessage('报表不存在！请先加入报表！');
      exit;
    end;
  end;
  try
    if Assigned(gp_mzsf_czyjz.ParameterByName('jzdh')) then
    gp_mzsf_czyjz.ParameterByName('jzdh').Value :=jzdh;
    gp_mzsf_czyjz.DataSet := qry_cxjz_mx;
  except on e: Exception do
    ShowMessage(e.Message);
  end;
  res := frm_func.SetCReportXtcs(gp_mzsf_czyjz);
  if res <> '1' then
  begin
    ShowMessage(res);
  end
  else
  begin
    gp_mzsf_czyjz.PrintPreview(False);
  end;
end;
//一卡通扣费收据打印
 procedure Tfrm_mzsf_print_service.print_mzsf_yktkf(qry_fymx:TCustomADODataSet;tmh,brxm,sfrq,czy,sjbh:string);
begin
  if mzsfyktkf = nil then
  begin
    try
      mzsfyktkf := TCusBb.Create;
      mzsfyktkf.GetBbByDM(mzsfyktkf, yktkksjdm);
      gp_yktkksj.LoadFromStr(mzsfyktkf.nr);
    except
      ShowMessage('报表不存在！请先加入报表！');
      exit;
    end;
  end;
  try
    if Assigned(gp_yktkksj.ParameterByName('tmh')) then
      gp_yktkksj.ParameterByName('tmh').Value :=tmh;
    if Assigned(gp_yktkksj.ParameterByName('brxm')) then
      gp_yktkksj.ParameterByName('brxm').Value :=brxm;
    if Assigned(gp_yktkksj.ParameterByName('sfrq')) then
      gp_yktkksj.ParameterByName('sfrq').Value :=sfrq;
    if Assigned(gp_yktkksj.ParameterByName('czy')) then
      gp_yktkksj.ParameterByName('czy').Value :=czy;
    if Assigned(gp_yktkksj.ParameterByName('sjbh')) then
      gp_yktkksj.ParameterByName('sjbh').Value :=sjbh;
      gp_yktkksj.DataSet := qry_fymx;
  except on e: Exception do
    ShowMessage(e.Message);
  end;
  res := frm_func.SetCReportXtcs(gp_yktkksj);
  if res <> '1' then
  begin
    ShowMessage(res);
  end
  else
  begin
    gp_yktkksj.Print(False);
  end;
end;

//门诊收费一卡通收预交
procedure Tfrm_mzsf_print_service.print_mzsf_yktsyj(tmh,brxm,brxb,yjje,syje,sfrq,czy,sjbh:string);
begin
  if yktsyjk = nil then
  begin
    try
      yktsyjk := TCusBb.Create;
      yktsyjk.GetBbByDM(yktsyjk, yktsyjdm);
      gp_yktsyjk.LoadFromStr(yktsyjk.nr);
    except
      ShowMessage('报表不存在！请先加入报表！');
      exit;
    end;
  end;
  try
    if Assigned(gp_yktsyjk.ParameterByName('tmh')) then
      gp_yktsyjk.ParameterByName('tmh').Value :=tmh;
    if Assigned(gp_yktsyjk.ParameterByName('brxm')) then
      gp_yktsyjk.ParameterByName('brxm').Value :=brxm;
    if Assigned(gp_yktsyjk.ParameterByName('brxb')) then
      gp_yktsyjk.ParameterByName('brxb').Value :=brxb;
    if Assigned(gp_yktsyjk.ParameterByName('yjje')) then
      gp_yktsyjk.ParameterByName('yjje').Value :=yjje;
    if Assigned(gp_yktsyjk.ParameterByName('syje')) then
      gp_yktsyjk.ParameterByName('syje').Value :=syje;
    if Assigned(gp_yktsyjk.ParameterByName('sfrq')) then
      gp_yktsyjk.ParameterByName('sfrq').Value :=sfrq;
    if Assigned(gp_yktsyjk.ParameterByName('czy')) then
      gp_yktsyjk.ParameterByName('czy').Value :=czy;
    if Assigned(gp_yktsyjk.ParameterByName('sjbh')) then
      gp_yktsyjk.ParameterByName('sjbh').Value :=sjbh;
  except on e: Exception do
    ShowMessage(e.Message);
  end;
  res := frm_func.SetCReportXtcs(gp_yktsyjk);
  if res <> '1' then
  begin
    ShowMessage(res);
  end
  else
  begin
    gp_yktsyjk.Print(False);
  end;
end;

//门诊收费一卡通退预交
procedure Tfrm_mzsf_print_service.print_mzsf_ykttyj(tmh,brxm,brxb,yjje,tyjje,syje,zfy,sfrq,czy:string);
begin
  if ykttyjk = nil then
  begin
    try
      ykttyjk := TCusBb.Create;
      ykttyjk.GetBbByDM(ykttyjk, ykttyjdm);
      gp_ykttyjk.LoadFromStr(ykttyjk.nr);
    except
      ShowMessage('报表不存在！请先加入报表！');
      exit;
    end;
  end;
  try
    if Assigned(gp_ykttyjk.ParameterByName('tmh')) then
      gp_ykttyjk.ParameterByName('tmh').Value :=tmh;
    if Assigned(gp_ykttyjk.ParameterByName('brxm')) then
      gp_ykttyjk.ParameterByName('brxm').Value :=brxm;
    if Assigned(gp_ykttyjk.ParameterByName('brxb')) then
      gp_ykttyjk.ParameterByName('brxb').Value :=brxb;
    if Assigned(gp_ykttyjk.ParameterByName('yjje')) then
      gp_ykttyjk.ParameterByName('yjje').Value :=yjje;
    if Assigned(gp_ykttyjk.ParameterByName('tjyje')) then
      gp_ykttyjk.ParameterByName('tyjje').Value :=tyjje;
    if Assigned(gp_ykttyjk.ParameterByName('syje')) then
      gp_ykttyjk.ParameterByName('syje').Value :=syje;
    if Assigned(gp_ykttyjk.ParameterByName('zfy')) then
      gp_ykttyjk.ParameterByName('zfy').Value :=zfy;
    if Assigned(gp_ykttyjk.ParameterByName('sfrq')) then
      gp_ykttyjk.ParameterByName('sfrq').Value :=sfrq;
    if Assigned(gp_ykttyjk.ParameterByName('czy')) then
      gp_ykttyjk.ParameterByName('czy').Value :=czy;
  except on e: Exception do
    ShowMessage(e.Message);
  end;
  res := frm_func.SetCReportXtcs(gp_ykttyjk);
  if res <> '1' then
  begin
    ShowMessage(res);
  end
  else
  begin
    gp_ykttyjk.Print(False);
  end;
end;

procedure Tfrm_mzsf_print_service.printmzfp_nmyb(ado_fymx: TADOQuery;v_xm: string;v_grbh: string;v_tmh: string;
  v_xb: string;v_rylb: string;v_jsqye: string;v_jshye: string;v_zfy: string;v_xjzf: string;v_zhzf: string;
  v_tczf: string;v_zhzflj: string;v_tczflj: string; v_dbzf: string;v_mxbje: string;v_sjbh: string;v_dxje: string);
var
  PrinterIdx: integer;
begin
  if mzsjbb_nm = nil then
  begin
    mzsjbb_nm := TCusBb.Create;
    mzsjbb_nm.GetBbByDM(mzsjbb_nm,mzsjbb_nmdm);
    gp_nmybfp.LoadFromStr(mzsjbb_nm.nr);
  end;
  try
    gp_nmybfp.DataSet := nil;
    gp_nmybfp.DataSet := ado_fymx;
    gp_nmybfp.setParamVal('brxm', v_xm);
    gp_nmybfp.setParamVal('ylzh', v_grbh);
    gp_nmybfp.setParamVal('tmh', v_tmh);
    gp_nmybfp.setParamVal('xb', v_xb);
    gp_nmybfp.setParamVal('rylb', v_rylb);
    gp_nmybfp.setParamVal('jsqye', v_jsqye);
    gp_nmybfp.setParamVal('jshye', v_jshye);
    gp_nmybfp.setParamVal('xjzf', v_xjzf);
    gp_nmybfp.setParamVal('grzhzf', v_zhzf);
    gp_nmybfp.setParamVal('tczf', v_tczf);
    gp_nmybfp.setParamVal('bnzhzflj', v_zhzflj);
    gp_nmybfp.setParamVal('fyze', v_zfy);
    gp_nmybfp.setParamVal('dxje', v_dxje);
    gp_nmybfp.setParamVal('dbje', v_dbzf);
    gp_nmybfp.setParamVal('mxbtcje', v_mxbje);
    gp_nmybfp.setParamVal('sjbh', v_sjbh);
    gp_nmybfp.setParamVal('jbyltc', v_tczflj);
  except
    on e: Exception do
      ShowMessage(e.Message);
  end;

  res := frm_func.SetCReportXtcs(gp_nmybfp);
  if res <> '1' then
  begin
    ShowMessage(res);
  end
  else
  begin
    PrinterIdx := func_GetPrinterIndex(2, v_IsPrinterJoin); //2 门诊收据
    if v_IsPrinterJoin then
      gp_nmybfp.Printer.PrinterName := Printer.Printers[PrinterIdx];
    gp_nmybfp.Print(False);

  end;
  RevertPrinter;

end;



{-------------------------------------------------------------------------------
  过程名:    Tfrm_mzsf_print_service.print_tykf_ysrk
  作者:      yangshuai
  日期:      2016.06.22
  参数:      qry_rkmx:TADOQuery;aReportTitle,agsmc,arkdh,arkrq,aczy,yymc:string
  返回值:    无
-------------------------------------------------------------------------------}
procedure Tfrm_mzsf_print_service.print_tykf_ysrk(qry_rkmx:TADOQuery;aReportTitle,agsmc,arkdh,arkrq,aczy,yymc:string;isclbb:Boolean);
begin
  if tykf_ysrk_Bb = nil then
  begin
    try
      tykf_ysrk_Bb := TCusBb.Create;
      if isclbb then
      begin
        tykf_ysrk_Bb.GetBbByDM(tykf_ysrk_Bb, tykf_ysrk_dm_dd);
      end else
      begin
        tykf_ysrk_Bb.GetBbByDM(tykf_ysrk_Bb, tykf_ysrk_dm);
      end;

      gp_tykf_ysrkbb.LoadFromStr(tykf_ysrk_Bb.nr);
    except
      ShowMessage('报表不存在！请先加入报表！');
      exit;
    end;
  end;
  try
    if Assigned(gp_tykf_ysrkbb.ParameterByName('标题名称')) then
      gp_tykf_ysrkbb.ParameterByName('标题名称').Value := aReportTitle;
    if Assigned(gp_tykf_ysrkbb.ParameterByName('公司名称')) then
      gp_tykf_ysrkbb.ParameterByName('公司名称').Value :=agsmc;
    if Assigned(gp_tykf_ysrkbb.ParameterByName('入库单号')) then
      gp_tykf_ysrkbb.ParameterByName('入库单号').Value :=arkdh;
    if Assigned(gp_tykf_ysrkbb.ParameterByName('入库日期')) then
      gp_tykf_ysrkbb.ParameterByName('入库日期').Value :=arkrq;
    if Assigned(gp_tykf_ysrkbb.ParameterByName('操作员')) then
      gp_tykf_ysrkbb.ParameterByName('操作员').Value :=aczy;
    if Assigned(gp_tykf_ysrkbb.ParameterByName('医院名称')) then
      gp_tykf_ysrkbb.ParameterByName('医院名称').Value:=yymc;
    
//    if Assigned(gp_yktkksj.ParameterByName('sjbh')) then
//      gp_yktkksj.ParameterByName('sjbh').Value :=sjbh;
      gp_tykf_ysrkbb.DataSet := qry_rkmx;
  except on e: Exception do
    ShowMessage(e.Message);
  end;
  res := frm_func.SetCReportXtcs(gp_yktkksj);
  if res <> '1' then
  begin
    ShowMessage(res);
  end
  else
  begin
    if (pub_yydm='0264') or (pub_yydm='0266') or (pub_yydm='0271') then
    begin
      gp_tykf_ysrkbb.PrintPreview(True);
    end else
    begin
      gp_tykf_ysrkbb.Print(False);
    end;
  end;
end;


{-------------------------------------------------------------------------------
  过程名:    Tfrm_mzsf_print_service.gp_mzxyfydInitialize
  作者:      yangshuai
  日期:      2016.06.24
  参数:      Sender: TObject
  返回值:    无
-------------------------------------------------------------------------------}
procedure Tfrm_mzsf_print_service.grdprprt_tykf_aksslff(sp_ksff:TADOQuery);
begin
  if grdprprt_tykf_aksslffbb = nil then
  try
    tykf_aksslff_Bb := TCusBb.Create;
    tykf_aksslff_Bb.GetBbByDM(tykf_aksslff_Bb,tykf_aksslff_dm);
    grdprprt_tykf_aksslffbb.LoadFromStr(tykf_aksslff_Bb);
  except
    ShowMessage('报表不存在');
  end;
  try
    grdprprt_tykf_aksslffbb.DataSet:=sp_ksff;
  except on e: Exception do
    ShowMessage(e.Message);
  end;
  res := frm_func.SetCReportXtcs(grdprprt_tykf_aksslffbb);
  if res <> '1' then
  begin
    ShowMessage('报表不存在');
  end;
  grdprprt_tykf_aksslffbb.Print(True);

end;

//procedure Tfrm_mzsf_print_service.print_tykf_ysrk_dy_p(qry_rkmx_dy:TADOQuery;aReportTitle,agsmc,arkdh,arkrq,aczy:string);
//begin
//  if tykf_ysrk_dy_Bb = nil then
//  begin
//    try
//      tykf_ysrk_dy_Bb := TCusBb.Create;
//      tykf_ysrk_dy_Bb.GetBbByDM(tykf_ysrk_dy_Bb, tykf_ysrk_dy_dm);
//      qp_tykf_ysrk_dy.LoadFromStr(tykf_ysrk_dy_Bb);
//    except
//      ShowMessage('报表不存在！请先加入报表！');
//      exit;
//    end;
//  end;
//  try
//    if Assigned(gp_tykf_ysrkbb.ParameterByName('ReportTitle')) then
//      gp_tykf_ysrkbb.ParameterByName('ReportTitle').Value := aReportTitle;
//    if Assigned(gp_tykf_ysrkbb.ParameterByName('gsmc')) then
//      gp_tykf_ysrkbb.ParameterByName('gsmc').Value :=agsmc;
//    if Assigned(gp_tykf_ysrkbb.ParameterByName('rkdh')) then
//      gp_tykf_ysrkbb.ParameterByName('rkdh').Value :=arkdh;
//    if Assigned(gp_tykf_ysrkbb.ParameterByName('rkrq')) then
//      gp_tykf_ysrkbb.ParameterByName('rkrq').Value :=arkrq;
//    if Assigned(gp_tykf_ysrkbb.ParameterByName('czy')) then
//      gp_tykf_ysrkbb.ParameterByName('czy').Value :=aczy;
////    if Assigned(gp_yktkksj.ParameterByName('sjbh')) then
////      gp_yktkksj.ParameterByName('sjbh').Value :=sjbh;
//      qp_tykf_ysrk_dy.DataSet := qry_rkmx_dy;
//  except on e: Exception do
//    ShowMessage(e.Message);
//  end;
//  res := frm_func.SetCReportXtcs(qp_tykf_ysrk_dy);
//  if res <> '1' then
//  begin
//    ShowMessage(res);
//  end
//  else
//  begin
//    qp_tykf_ysrk_dy.Print(True);
//  end;
//end;


{-------------------------------------------------------------------------------
  过程名:    Tfrm_mzsf_print_service.print_tykf_ksth_p
  作者:      yangshuai
  日期:      2016.06.22
  参数:      qry_rkmx_ksth:TADOQuery;crkdh,ctitle,cthks,ctwrq:string
  返回值:    无
-------------------------------------------------------------------------------}
////通用库房-科室退回
procedure Tfrm_mzsf_print_service.print_tykf_ksth_p(qry_rkmx_ksth:TADOQuery;crkdh,ctitle,cthks,ctwrq:string);
begin
  if tykf_ksth_Bb=nil then
  begin
    try
      tykf_ksth_Bb:=TCusBb.Create;
      tykf_ksth_Bb.GetBbByDM(tykf_ksth_Bb,tykf_ksth_dm);
      gp_tykf_ksth.LoadFromStr(tykf_ksth_Bb);
    except
      ShowMessage('报表不存在！请先加入报表！');
      Exit;
    end;
  end;
  try
  if Assigned(gp_tykf_ksth.ParameterByName('入库单号')) then
    gp_tykf_ksth.ParameterByName('入库单号').value:=crkdh;
  if Assigned(gp_tykf_ksth.ParameterByName('标题名称')) then
    gp_tykf_ksth.ParameterByName('标题名称').value:=ctitle;
  if Assigned(gp_tykf_ksth.ParameterByName('退回科室')) then
    gp_tykf_ksth.ParameterByName('退回科室').Value:=cthks;
  if Assigned(gp_tykf_ksth.ParameterByName('退回日期')) then
    gp_tykf_ksth.ParameterByName('退回日期').Value:=ctwrq;
  gp_tykf_ksth.DataSet:=qry_rkmx_ksth;
  except on e: Exception do
    ShowMessage(e.Message);
  end;
  res := frm_func.SetCReportXtcs(gp_tykf_ksth);
  if res <> '1' then
  begin
    ShowMessage(res);
  end
  else
  begin
    gp_tykf_ksth.Print(True);
  end;
end;

{-------------------------------------------------------------------------------
  过程名:    Tfrm_mzsf_print_service.print_tykf_ksly_p
  作者:      yangshuai
  日期:      2016.06.22
  参数:      qry_tykf_ksly:TADOQuery; ckdtitle_p,lyks_p,ffks_p,ckdh_p,ffrq_p,sqrmc_p:string
  返回值:    无
-------------------------------------------------------------------------------}
////通用库房-科室领用
procedure Tfrm_mzsf_print_service.print_tykf_ksly_p (qry_tykf_ksly:TADOQuery;
ckdtitle_p,lyks_p,ffks_p,ckdh_p,ffrq_p,sqrmc_p:string;ylbz:Boolean);
begin
  if tykf_ksly_Bb=nil then
  begin
    try
      tykf_ksly_Bb:=TCusBb.Create;
      tykf_ksth_Bb.GetBbByDM(tykf_ksly_Bb,tykf_ksly_dm);    //tykf_ksly_dm
      gp_tykf_ksly.LoadFromStr(tykf_ksly_Bb);
    except
      ShowMessage('报表不存在！请先加入报表！');
      Exit;
    end;
  end;
  try
    if Assigned(gp_tykf_ksly.ParameterByName('标题名称')) then
      gp_tykf_ksly.ParameterByName('标题名称').Value:=ckdtitle_p;
    if Assigned(gp_tykf_ksly.ParameterByName('领用科室')) then
      gp_tykf_ksly.ParameterByName('领用科室').Value:=lyks_p;
    if Assigned(gp_tykf_ksly.ParameterByName('费用科室')) then
      gp_tykf_ksly.ParameterByName('费用科室').Value:=ffks_p;
    if Assigned(gp_tykf_ksly.ParameterByName('出库单号')) then
      gp_tykf_ksly.ParameterByName('出库单号').Value:=ckdh_p;
    if Assigned(gp_tykf_ksly.ParameterByName('费用日期')) then
      gp_tykf_ksly.ParameterByName('费用日期').Value:=ffrq_p;
    if Assigned(gp_tykf_ksly.ParameterByName('申请人名称')) then
      gp_tykf_ksly.ParameterByName('申请人名称').Value:=sqrmc_p;
    gp_tykf_ksly.DataSet:= qry_tykf_ksly;
  except on e: Exception do
    ShowMessage(e.Message);
  end;
  res := frm_func.SetCReportXtcs(gp_tykf_ksly);
  if res <> '1' then
  begin
    ShowMessage(res);
  end
  else
  begin
    if ylbz then
    begin
      gp_tykf_ksly.PrintPreview(true);
    end
    else
    begin
      gp_tykf_ksly.Print(False);
    end;
//    if pub_yydm='0264' then
//    begin
//    gp_tykf_ksly.PrintPreview(True);
//    end else
//    begin
//    gp_tykf_ksly.Print(True);
//    end;
  end;
end;

{-------------------------------------------------------------------------------
  过程名:    Tfrm_mzsf_print_service.print_tykf_tjfx_rkbb
  作者:      yangshuai
  日期:      2017.09.06
  参数:      sp_zb:TADOQuery; atitle,a_zbr,a_tjrq,a_dyrq:string
  返回值:    无
-------------------------------------------------------------------------------}
procedure Tfrm_mzsf_print_service.print_tykf_tjfx_rkbb(sp_zb:TADOStoredProc;
atitle,a_zbr,a_tjrq,a_dyrq:string;ylbz:Boolean);
begin
  if tykf_tjfx_rkBb=nil then
  begin
    try
      tykf_tjfx_rkBb:=TCusBb.Create;
      tykf_tjfx_rkBb.GetBbByDM(tykf_tjfx_rkBb,tykf_tjfxrkbb_dm);    //tykf_ksly_dm
      gp_tykf_tjfx_rkbb.LoadFromStr(tykf_tjfx_rkBb);
    except
      ShowMessage('报表不存在！请先加入报表！');
      Exit;
    end;
  end;
  try
    if Assigned(gp_tykf_tjfx_rkbb.ParameterByName('标题名称')) then
      gp_tykf_tjfx_rkbb.ParameterByName('标题名称').Value:=atitle;
    if Assigned(gp_tykf_tjfx_rkbb.ParameterByName('制表人')) then
      gp_tykf_tjfx_rkbb.ParameterByName('制表人').Value:=a_zbr;
    if Assigned(gp_tykf_tjfx_rkbb.ParameterByName('统计日期')) then
      gp_tykf_tjfx_rkbb.ParameterByName('统计日期').Value:=a_tjrq;
    if Assigned(gp_tykf_tjfx_rkbb.ParameterByName('打印日期')) then
      gp_tykf_tjfx_rkbb.ParameterByName('打印日期').Value:=a_dyrq;
    gp_tykf_tjfx_rkbb.DataSet:= sp_zb;
  except on e: Exception do
    ShowMessage(e.Message);
  end;
  res := frm_func.SetCReportXtcs(gp_tykf_tjfx_rkbb);
  if res <> '1' then
  begin
    ShowMessage(res);
  end
  else
  begin
    if ylbz then
    begin
      gp_tykf_tjfx_rkbb.PrintPreview(true);
    end
    else
    begin
      gp_tykf_tjfx_rkbb.Print(False);
    end;

  end;
end;



{-------------------------------------------------------------------------------
  过程名:    Tfrm_mzsf_print_service.print_tykf_tjfx_ckbb
  作者:      yangshuai
  日期:      2017.09.06
  参数:      sp_zb:TADOQuery; atitle,a_zbr,a_tjrq,a_dyrq:string;ylbz:Boolean
  返回值:    无
-------------------------------------------------------------------------------}
procedure Tfrm_mzsf_print_service.print_tykf_tjfx_ckbb(sp_zb:TADOStoredProc;
atitle,a_zbr,a_tjrq,a_dyrq:string;ylbz:Boolean);
begin
  if tykf_tjfx_ckbb=nil then
  begin
    try
      tykf_tjfx_ckbb:=TCusBb.Create;
      tykf_tjfx_ckbb.GetBbByDM(tykf_tjfx_ckbb,tykf_tjfxckbb_dm);    //tykf_tjfxckbb_dm
      gp_tykf_tjfx_ckbb.LoadFromStr(tykf_tjfx_ckbb);
    except
      ShowMessage('报表不存在！请先加入报表！');
      Exit;
    end;
  end;
  try
   if Assigned(gp_tykf_tjfx_ckbb.ParameterByName('标题名称')) then
      gp_tykf_tjfx_ckbb.ParameterByName('标题名称').Value:=atitle;
    if Assigned(gp_tykf_tjfx_ckbb.ParameterByName('制表人')) then
      gp_tykf_tjfx_ckbb.ParameterByName('制表人').Value:=a_zbr;
    if Assigned(gp_tykf_tjfx_ckbb.ParameterByName('统计日期')) then
      gp_tykf_tjfx_ckbb.ParameterByName('统计日期').Value:=a_tjrq;
    if Assigned(gp_tykf_tjfx_ckbb.ParameterByName('打印日期')) then
      gp_tykf_tjfx_ckbb.ParameterByName('打印日期').Value:=a_dyrq;
      
    gp_tykf_tjfx_ckbb.DataSet:= sp_zb;
  except on e: Exception do
    ShowMessage(e.Message);
  end;
  res := frm_func.SetCReportXtcs(gp_tykf_tjfx_ckbb);
  if res <> '1' then
  begin
    ShowMessage(res);
  end
  else
  begin
    if ylbz then
    begin
      gp_tykf_tjfx_ckbb.PrintPreview(true);
    end
    else
    begin
      gp_tykf_tjfx_ckbb.Print(False);
    end;

  end;
end;
{-------------------------------------------------------------------------------
  过程名:    Tfrm_mzsf_print_service.print_tykf_thgf_p
  作者:      yangshuai
  日期:      2016.06.22
  参数:      qry_tykf_thgf:TADOQuery;cktitle_p,ghgs_p,thrq_p:string
  返回值:    无
-------------------------------------------------------------------------------}
//通用库房-退还供方
procedure Tfrm_mzsf_print_service.print_tykf_thgf_p(qry_tykf_thgf:TADOQuery;cktitle_p,ghgs_p,thrq_p,ckdh_p:string);
begin
  if tykf_thgf_Bb=nil then
  begin
    try
      tykf_thgf_Bb:=TCusBb.Create;
      tykf_thgf_Bb.GetBbByDM(tykf_thgf_Bb,tykf_thgf_dm);
      gp_tykf_thgf.LoadFromStr(tykf_thgf_Bb);
    except
      ShowMessage('报表不存在！请先加入报表！');
      Exit;
    end;
  end;
  try
    if Assigned(gp_tykf_thgf.ParameterByName('标题名称')) then
      gp_tykf_thgf.ParameterByName('标题名称').Value:=cktitle_p;
    if Assigned(gp_tykf_thgf.ParameterByName('供货公司')) then
      gp_tykf_thgf.ParameterByName('供货公司').Value:=ghgs_p;
    if Assigned(gp_tykf_thgf.ParameterByName('退回日期')) then
      gp_tykf_thgf.ParameterByName('退回日期').Value:=thrq_p;
    if Assigned(gp_tykf_thgf.ParameterByName('出库单号')) then
      gp_tykf_thgf.ParameterByName('出库单号').Value:=ckdh_p;
    gp_tykf_thgf.DataSet:=qry_tykf_thgf;
  except on e: Exception do
    ShowMessage(e.Message);
  end;
  res := frm_func.SetCReportXtcs(gp_tykf_thgf);
  if res <> '1' then
  begin
    ShowMessage(res);
  end
  else
  begin
    gp_tykf_thgf.Print(True);
  end;
end;

{-------------------------------------------------------------------------------
  过程名:    Tfrm_mzsf_print_service.print_tykf_bsd_p
  作者:      yangshuai
  日期:      2016.06.22
  参数:      qry_tykf_bsd:TADOQuery; bstitle_p,bsdh_p,ksmc_p,bssqsj_p,czyxm_p,bbdysj:string
  返回值:    无
-------------------------------------------------------------------------------}
////通用库房-报损单
procedure Tfrm_mzsf_print_service.print_tykf_bsd_p(qry_tykf_bsd:TADOQuery;
bstitle_p,bsdh_p,ksmc_p,bssqsj_p,czyxm_p,bbdysj:string);
begin
  if tykf_bsd_Bb=nil then
  begin
  try
     tykf_bsd_Bb:=TCusBb.Create;
     tykf_bsd_Bb.GetBbByDM(tykf_bsd_Bb,tykf_bsd_dm);
     gp_tykf_ypbs.LoadFromStr(tykf_bsd_Bb);
  except
     ShowMessage('报表不存在！请先加入报表！');
     Exit;
  end;
  end;
  try
  if Assigned(gp_tykf_ypbs.ParameterByName('标题名称')) then
    gp_tykf_ypbs.ParameterByName('标题名称').Value:=bstitle_p;
  if Assigned(gp_tykf_ypbs.ParameterByName('报损单号')) then
    gp_tykf_ypbs.ParameterByName('报损单号').Value:=bsdh_p;
  if Assigned(gp_tykf_ypbs.ParameterByName('科室名称')) then
    gp_tykf_ypbs.ParameterByName('科室名称').Value:=ksmc_p;
  if Assigned(gp_tykf_ypbs.ParameterByName('报损申请时间')) then
    gp_tykf_ypbs.ParameterByName('报损申请时间').Value:=bssqsj_p;
  if Assigned(gp_tykf_ypbs.ParameterByName('操作员姓名')) then
    gp_tykf_ypbs.ParameterByName('操作员姓名').Value:=czyxm_p;
  if Assigned(gp_tykf_ypbs.ParameterByName('打印时间')) then
     gp_tykf_ypbs.ParameterByName('打印时间').Value:=bbdysj;
  gp_tykf_ypbs.DataSet:=qry_tykf_bsd;
  except on e: Exception do
    ShowMessage(e.Message);
  end;
  res := frm_func.SetCReportXtcs(gp_tykf_ypbs);
  if res <> '1' then
  begin
    ShowMessage(res);
  end
  else
  begin
    gp_tykf_ypbs.Print(True);
  end;
end;


{-------------------------------------------------------------------------------
  过程名:    Tfrm_mzsf_print_service.print_tykf_aksff_p
  作者:      yangshuai
  日期:      2016.06.22
  参数:      qry_aksff:TADOQuery;yymc_p,lyks_p,fyksmc_p,sqdh_p,ffrq_p,sqrmc_p:string
  返回值:    无
-------------------------------------------------------------------------------}
////通用库房-科室申领发放
procedure Tfrm_mzsf_print_service.print_tykf_aksff_p(qry_aksff:TADOQuery;yymc_p,lyks_p,fyksmc_p,sqdh_p,ffrq_p,sqrmc_p:string);
begin
  if tykf_aksslff_Bb=nil then
  begin
    try
      tykf_aksslff_Bb:=TCusBb.Create;
      tykf_aksslff_Bb.GetBbByDM(tykf_aksslff_Bb,tykf_aksslff_dm);
      gp_tykf_aksff.LoadFromStr(tykf_aksslff_Bb);
    except
      ShowMessage('报表不存在！请先加入报表！');
      Exit;
    end;
  end;
  try
    if Assigned(gp_tykf_aksff.ParameterByName('医院名称')) then
      gp_tykf_aksff.ParameterByName('医院名称').Value:=yymc_p;
    if Assigned(gp_tykf_aksff.ParameterByName('领用科室')) then
      gp_tykf_aksff.ParameterByName('领用科室').Value:=lyks_p;
    if Assigned(gp_tykf_aksff.ParameterByName('发放科室名称')) then
      gp_tykf_aksff.ParameterByName('发放科室名称').Value:=fyksmc_p;
    if Assigned(gp_tykf_aksff.ParameterByName('申请单号')) then
      gp_tykf_aksff.ParameterByName('申请单号').Value:=sqdh_p;
    if Assigned(gp_tykf_aksff.ParameterByName('发放日期')) then
      gp_tykf_aksff.ParameterByName('发放日期').Value:=ffrq_p;
    if Assigned(gp_tykf_aksff.ParameterByName('申请人名称')) then
      gp_tykf_aksff.ParameterByName('申请人名称').Value:=sqrmc_p;
    gp_tykf_aksff.DataSet:=qry_aksff;
  except on e: Exception do
    ShowMessage(e.Message);
  end;
  res := frm_func.SetCReportXtcs(gp_tykf_aksff);
  if res <> '1' then
  begin
    ShowMessage(res);
  end
  else
  begin
    gp_tykf_aksff.Print(True);
  end;
end;

{-------------------------------------------------------------------------------
  过程名:    Tfrm_mzsf_print_service.print_tykf_kslycx_p
  作者:      yangshuai
  日期:      2016.06.22
  参数:      qry_kslycx:TADOQuery; yymc_p,lyksmc_p,ffks_p,djh_p,ffrq_p,sqrmc_p:string
  返回值:    无
-------------------------------------------------------------------------------}
//通用库房-科室领用查询
procedure  Tfrm_mzsf_print_service.print_tykf_kslycx_p(qry_kslycx:TADOQuery;
yymc_p,lyksmc_p,ffks_p,djh_p,ffrq_p,sqrmc_p:string;ylbz:Boolean);
begin
  if tykf_kslycx_bb=nil then
  begin
    try
      tykf_kslycx_bb:=TCusBb.Create;
      tykf_kslycx_bb.GetBbByDM(tykf_kslycx_bb,tykf_kslycx_dm);
      gp_tykf_kslycx.LoadFromStr(tykf_kslycx_bb);
    except
      ShowMessage('报表不存在！请先加入报表！');
      Exit;
    end;
  end;
  try
  if Assigned(gp_tykf_kslycx.ParameterByName('医院名称')) then
    gp_tykf_kslycx.ParameterByName('医院名称').Value:=yymc_p;
  if Assigned(gp_tykf_kslycx.ParameterByName('领用科室名称')) then
    gp_tykf_kslycx.ParameterByName('领用科室名称').Value:=lyksmc_p;
  if Assigned(gp_tykf_kslycx.ParameterByName('发放科室')) then
    gp_tykf_kslycx.ParameterByName('发放科室').Value:=ffks_p;
  if Assigned(gp_tykf_kslycx.ParameterByName('单据号')) then
    gp_tykf_kslycx.ParameterByName('单据号').Value:=djh_p;
  if Assigned(gp_tykf_kslycx.ParameterByName('发放日期')) then
    gp_tykf_kslycx.ParameterByName('发放日期').Value:=ffrq_p;
  if Assigned(gp_tykf_kslycx.ParameterByName('申请人名称')) then
    gp_tykf_kslycx.ParameterByName('申请人名称').Value:=sqrmc_p;
  gp_tykf_kslycx.DataSet:=qry_kslycx;
  except on e: Exception do
    ShowMessage(e.Message);
  end;
  res := frm_func.SetCReportXtcs(gp_tykf_kslycx);
  if res <> '1' then
  begin
    ShowMessage(res);
  end
  else
  begin
    if ylbz then
    begin
      gp_tykf_kslycx.PrintPreview(true);
    end
    else
    begin
      gp_tykf_kslycx.Print(False);
    end;
  end;
end;


 //通用库房-采购入库查询
{-------------------------------------------------------------------------------
  过程名:    Tfrm_mzsf_print_service.print_tykf_cgrkcx_p
  作者:      yangshuai
  日期:      2016.06.22
  参数:      qry_cgrkcx:TADOQuery; yymc_p,kfmc_p,lbmc_p,rkdh_p,gsmc_p,ysrq_p:string
  返回值:    无
-------------------------------------------------------------------------------}
procedure Tfrm_mzsf_print_service.print_tykf_cgrkcx_p (qry_cgrkcx:TADOQuery;
yymc_p,kfmc_p,lbmc_p,rkdh_p,gsmc_p,ysrq_p:string;ylbz:Boolean);
begin
if tykf_cgrkcx_Bb=nil then
begin
  try
    tykf_cgrkcx_Bb:=TCusBb.Create;
    tykf_cgrkcx_Bb.GetBbByDM(tykf_cgrkcx_Bb,tykf_cgrkcx_dm);
    gp_tykf_cgrkcx.LoadFromStr(tykf_cgrkcx_Bb);
  except
    ShowMessage('报表不存在！请先加入报表！');
    Exit;
  end;
end;
  try
    if Assigned(gp_tykf_cgrkcx.ParameterByName('医院名称')) then
      gp_tykf_cgrkcx.ParameterByName('医院名称').Value:=yymc_p;
    if Assigned(gp_tykf_cgrkcx.ParameterByName('库房名称')) then
      gp_tykf_cgrkcx.ParameterByName('库房名称').Value:=kfmc_p;
    if Assigned(gp_tykf_cgrkcx.ParameterByName('类别名称')) then
      gp_tykf_cgrkcx.ParameterByName('类别名称').Value:=lbmc_p;
    if Assigned(gp_tykf_cgrkcx.ParameterByName('入库单号')) then
      gp_tykf_cgrkcx.ParameterByName('入库单号').Value:=rkdh_p;
    if Assigned(gp_tykf_cgrkcx.ParameterByName('公司名称')) then
      gp_tykf_cgrkcx.ParameterByName('公司名称').Value:=gsmc_p;
    if Assigned(gp_tykf_cgrkcx.ParameterByName('验收日期')) then
      gp_tykf_cgrkcx.ParameterByName('验收日期').Value:=ysrq_p;
  gp_tykf_cgrkcx.DataSet:=qry_cgrkcx;
    
  except on e: Exception do
    ShowMessage(e.Message);
  end;
  res := frm_func.SetCReportXtcs(gp_tykf_cgrkcx);
  if res <> '1' then
  begin
    ShowMessage(res);
  end
  else
  begin
    if ylbz then
    begin
      gp_tykf_cgrkcx.PrintPreview(true);
    end
    else
    begin
      gp_tykf_cgrkcx.Print(False);
    end;
//   if pub_yydm = '0266' then
//    begin
//       gp_tykf_cgrkcx.PrintPreview(True);
//    end
//    else begin
//      gp_tykf_cgrkcx.Print(True);
//    end;
  end;
end;

{-------------------------------------------------------------------------------
  过程名:    Tfrm_mzsf_print_service.print_tykf_kstycx
  作者:      yangshuai
  日期:      2016.06.23
  参数:      qry_kstycx:TADOQuery;yymc_p,tyks_p,djh_p,thrq_p:string
  返回值:    无
-------------------------------------------------------------------------------}
procedure  Tfrm_mzsf_print_service.print_tykf_kstycx(qry_kstycx:TADOQuery;yymc_p,tyks_p,djh_p,thrq_p:string;ylbz:Boolean);
begin
  if tykf_kstycx_Bb=nil then
  begin
    try
      tykf_kstycx_Bb:=TCusBb.Create;
      tykf_kstycx_Bb.GetBbByDM(tykf_kstycx_Bb,tykf_kstycx_dm);
      gp_tykf_kstycx.LoadFromStr(tykf_kstycx_Bb);
    except
      ShowMessage('报表不存在！请先加入报表！');
      Exit;
    end;
  end;
  try
  if Assigned(gp_tykf_kstycx.ParameterByName('医院名称')) then
    gp_tykf_kstycx.ParameterByName('医院名称').Value:=yymc_p;
  if Assigned(gp_tykf_kstycx.ParameterByName('退药科室')) then
    gp_tykf_kstycx.ParameterByName('退药科室').Value:=tyks_p;
  if Assigned(gp_tykf_kstycx.ParameterByName('单据号')) then
    gp_tykf_kstycx.ParameterByName('单据号').Value:=djh_p;
  if Assigned(gp_tykf_kstycx.ParameterByName('退回日期')) then
    gp_tykf_kstycx.ParameterByName('退回日期').Value:=thrq_p;
  gp_tykf_kstycx.DataSet:=qry_kstycx;
  except on e: Exception do
    ShowMessage(e.Message);
  end;
  res := frm_func.SetCReportXtcs(gp_tykf_kstycx);
  if res <> '1' then
  begin
    ShowMessage(res);
  end
  else
  begin
    if ylbz then
    begin
      gp_tykf_kstycx.PrintPreview(True);
    end
    else
    begin
      gp_tykf_kstycx.Print(True);
    end;

  end;
end;
//通用库房-单据查询-退回供方
procedure  Tfrm_mzsf_print_service.print_tykf_thgfcx(qry_thgfcx:TADOQuery;yymc_p,gsmc_p,djh_p,tkrq_p:string;ylbz:Boolean);
begin
  if tykf_thgfcx_Bb=nil then
  begin
    try
      tykf_thgfcx_Bb:=TCusBb.Create;
      tykf_thgfcx_Bb.GetBbByDM(tykf_thgfcx_Bb,tykf_thgfcx_dm);
      gp_tykf_thgfcx.LoadFromStr(tykf_thgfcx_Bb);
    except
      ShowMessage('报表不存在！请先加入报表！');
      Exit;
    end;
  end;
  try
    if Assigned(gp_tykf_thgfcx.ParameterByName('医院名称')) then
      gp_tykf_thgfcx.ParameterByName('医院名称').Value:=yymc_p;
    if Assigned(gp_tykf_thgfcx.ParameterByName('公司名称')) then
      gp_tykf_thgfcx.ParameterByName('公司名称').Value:=gsmc_p;
    if Assigned(gp_tykf_thgfcx.ParameterByName('单据号')) then
      gp_tykf_thgfcx.ParameterByName('单据号').Value:=djh_p;
    if Assigned(gp_tykf_thgfcx.ParameterByName('退库日期')) then
      gp_tykf_thgfcx.ParameterByName('退库日期').Value:=tkrq_p;
    gp_tykf_thgfcx.DataSet:=qry_thgfcx;
  except on e: Exception do
    ShowMessage(e.Message);
  end;

  res := frm_func.SetCReportXtcs(gp_tykf_thgfcx);
  if res <> '1' then
  begin
    ShowMessage(res);
  end
  else
  begin
    if ylbz then
    begin
      gp_tykf_thgfcx.PrintPreview(true);
    end
    else
    begin
      gp_tykf_thgfcx.Print(False);
    end;
  end;
end;
//通用库房-单据查询-报损查询
procedure  Tfrm_mzsf_print_service.print_tykf_bsdcx(
qry_bsdcx:TADOQuery;yymc_p,djh_p,bsks_p,sqsj_p,zxsj_p,bsrmc_p,zxrmc_p,dysj_p:string;ylbz:Boolean);
begin
  if tykf_bsdcx_Bb=nil then
  begin
    try
      tykf_bsdcx_Bb:=TCusBb.Create;
      tykf_bsdcx_Bb.GetBbByDM(tykf_bsdcx_Bb,tykf_bsdcx_dm);
      gp_tykf_bsdcx.LoadFromStr(tykf_bsdcx_Bb);
    except
      ShowMessage('报表不存在！请先加入报表！');
      if tykf_bsdcx_Bb <> nil then tykf_bsdcx_Bb := nil;
      Exit;
    end;
  end;
  try
    if Assigned(gp_tykf_bsdcx.ParameterByName('医院名称')) then
      gp_tykf_bsdcx.ParameterByName('医院名称').Value:=yymc_p;
    if Assigned(gp_tykf_bsdcx.ParameterByName('单据号')) then
      gp_tykf_bsdcx.ParameterByName('单据号').Value:=djh_p;
    if Assigned(gp_tykf_bsdcx.ParameterByName('报损科室')) then
      gp_tykf_bsdcx.ParameterByName('报损科室').Value:=bsks_p;
    if Assigned(gp_tykf_bsdcx.ParameterByName('申请时间')) then
      gp_tykf_bsdcx.ParameterByName('申请时间').Value:=sqsj_p;
    if Assigned(gp_tykf_bsdcx.ParameterByName('执行时间')) then
      gp_tykf_bsdcx.ParameterByName('执行时间').Value:=zxsj_p;
    if Assigned(gp_tykf_bsdcx.ParameterByName('报损人')) then
      gp_tykf_bsdcx.ParameterByName('报损人').Value:=bsrmc_p;
    if Assigned(gp_tykf_bsdcx.ParameterByName('执行人')) then
      gp_tykf_bsdcx.ParameterByName('执行人').Value:=zxrmc_p;
    if Assigned(gp_tykf_bsdcx.ParameterByName('打印时间')) then
      gp_tykf_bsdcx.ParameterByName('打印时间').Value:=dysj_p;
    gp_tykf_bsdcx.DataSet:=qry_bsdcx;
  except on e: Exception do
    ShowMessage(e.Message);
  end;
  res := frm_func.SetCReportXtcs(gp_tykf_bsdcx);
  if res <> '1' then
  begin
    ShowMessage(res);
  end
  else
  begin
    if ylbz then
    begin
      gp_tykf_bsdcx.PrintPreview(true);
    end
    else
    begin
      gp_tykf_bsdcx.Print(False);
    end;
  end;
end;

{-------------------------------------------------------------------------------
  过程名:    Tfrm_mzsf_print_service.printmzsyd
  作者:      yangshuai
  日期:      2016.06.29
  参数:      _tmh, kdys: string
  返回值:    无
-------------------------------------------------------------------------------}
procedure Tfrm_mzsf_print_service.printmzsyd(_tmh, kdys: string);
begin
    //创建报表对象
  if mzsyfzdBb = nil then
  begin
    mzsyfzdBb := TCusBb.Create;
    mzsyfzdBb.GetBbByDM(mzsyfzdBb, mzsyfzddm);
    gp_mzsyfzd.LoadFromStr(mzsyfzdBb.nr);
  end;
  try
    sp_sydyfz.Close;
    sp_sydyfz.ProcedureName := 'mzdzbl_dysyd';
    sp_sydyfz.Parameters.Refresh;
    sp_sydyfz.Parameters.ParamByName('@tmh').Value := _tmh;
    sp_sydyfz.Parameters.ParamByName('@kdys').Value := kdys;
    sp_sydyfz.Open;
    gp_mzsyfzd.DataSet := sp_sydyfz;
  except
    on e: Exception do
      ShowMessage(e.Message);
  end;
  res := frm_func.SetCReportXtcs(gp_mzsyfzd);
  if res <> '1' then
  begin
    ShowMessage(res);
  end;
  gp_mzsyfzd.Print(False);
end;

{-------------------------------------------------------------------------------
  过程名:    Tfrm_mzsf_print_service.print_tyyf_ypbs
  作者:      yangshuai
  日期:      2016.07.11
  参数:      ado_yf_ypbsmx: TADOQuery; pub_yymc, bsdh, pub_ksmc, bsrq, bsr: string
  返回值:    无
-------------------------------------------------------------------------------}
procedure Tfrm_mzsf_print_service.print_tyyf_ypbs(ado_yf_ypbsmx: TADOQuery;
  pub_yymc, bsdh, pub_ksmc, bsrq, bsr: string);
begin
  if tyyf_bsyq_Bb=nil then
  begin
    try
      tyyf_bsyq_Bb:=TCusBb.Create;
      tyyf_bsyq_Bb.GetBbByDM(tyyf_bsyq_Bb,tyyf_bsyp_dm);
      gp_tyyf_ypbs.LoadFromStr(tyyf_bsyq_Bb);
    except
      ShowMessage('报表不存在！请先加入报表！');
      Exit;
    end;
  end;
  try
    if Assigned(gp_tyyf_ypbs.ParameterByName('医院名称')) then
      gp_tyyf_ypbs.ParameterByName('医院名称').Value:=pub_yymc;
    if Assigned(gp_tyyf_ypbs.ParameterByName('报损科室')) then
      gp_tyyf_ypbs.ParameterByName('报损科室').Value:=pub_ksmc;
    if Assigned(gp_tyyf_ypbs.ParameterByName('单据号')) then
      gp_tyyf_ypbs.ParameterByName('单据号').Value:=bsdh;
    if Assigned(gp_tyyf_ypbs.ParameterByName('报损日期')) then
      gp_tyyf_ypbs.ParameterByName('报损日期').Value:=bsrq;
    if Assigned(gp_tyyf_ypbs.ParameterByName('报损人')) then
      gp_tyyf_ypbs.ParameterByName('报损人').Value:=bsr;
    gp_tyyf_ypbs.DataSet:=ado_yf_ypbsmx;
  except on e: Exception do
    ShowMessage(e.Message);
  end;
  res := frm_func.SetCReportXtcs(gp_tyyf_ypbs);
  if res <> '1' then
  begin
    ShowMessage(res);
  end
  else
  begin
    gp_tyyf_ypbs.Print(True);
  end;
end;

//通用药房-单据查询-报损查询
procedure  Tfrm_mzsf_print_service.print_tyyf_bscx(qry_bscxmx:TADOQuery;djh_p,bsks_p,bsrq_p,bsczy_p,yymc_p:string);
begin
  if tyyf_cx_ypbs_Bb=nil then
  begin
    try
      tyyf_cx_ypbs_Bb:=TCusBb.Create;
      tyyf_cx_ypbs_Bb.GetBbByDM(tyyf_cx_ypbs_Bb,tyyf_cx_ypbs_dm);
      gp_yf_cx_ypbs.LoadFromStr(tyyf_cx_ypbs_Bb);
    except
      ShowMessage('报表不存在！请先加入报表！');
      Exit;
    end;
  end;
  try
    if Assigned(gp_yf_cx_ypbs.ParameterByName('单据号')) then
      gp_yf_cx_ypbs.ParameterByName('单据号').value:=djh_p;
    if Assigned(gp_yf_cx_ypbs.ParameterByName('报损科室')) then
      gp_yf_cx_ypbs.ParameterByName('报损科室').value:=bsks_p;
    if Assigned(gp_yf_cx_ypbs.ParameterByName('申请时间')) then
      gp_yf_cx_ypbs.ParameterByName('申请时间').value:=bsrq_p;
    if Assigned(gp_yf_cx_ypbs.ParameterByName('报损操作员')) then
      gp_yf_cx_ypbs.ParameterByName('报损操作员').value:=bsczy_p;
    if Assigned(gp_yf_cx_ypbs.ParameterByName('医院名称')) then
      gp_yf_cx_ypbs.ParameterByName('医院名称').value:=yymc_p;
    gp_yf_cx_ypbs.DataSet:= qry_bscxmx;
  except on e: Exception do
    ShowMessage(e.Message);
  end;
  res := frm_func.SetCReportXtcs(gp_yf_cx_ypbs);
  if res <> '1' then
  begin
    ShowMessage(res);
  end
  else
  begin
    gp_yf_cx_ypbs.Print(True);
  end;
end;
//----------------------------------------------------------------------------------------------------------------------
//门诊中药发药
procedure Tfrm_mzsf_print_service.printmzzcycf_print( bf: Boolean; ylbz: Boolean;cfbh,brdz2,brxb2,brzd2,ysxm2,ysks2:string);
var
  sp_zb: TADOStoredProc;
  sp_mx: TADOStoredProc;
begin
  DM_data.Qry_pub1.Close;
  if bf then
    DM_data.Qry_pub1.SQL.Text := 'select czks from mzxyf_cfzb_bf where cfbh=''' + cfbh + ''''
  else
    DM_data.Qry_pub1.SQL.Text := 'select czks from mzxyf_cfzb where cfbh=''' + cfbh + '''';
  DM_data.Qry_pub1.Open;
  if DM_data.Qry_pub1.IsEmpty then
  begin
    raise Exception.Create('没有找到处方信息！');
  end;

  sp_mx := TADOStoredProc.Create(nil);
  sp_mx.Connection := DM_data.ado_mydata;
  sp_mx.ProcedureName := 'mzxyf_cx_cfmx';
  sp_mx.Parameters.Refresh;
  sp_mx.Parameters.ParamByName('@cfbh').Value := cfbh;
  if bf then
    sp_mx.Parameters.ParamByName('@cflb').Value := 1
  else
    sp_mx.Parameters.ParamByName('@cflb').Value := 0;
  sp_mx.Open;

  sp_zb := TADOStoredProc.Create(nil);
  sp_zb.Connection := DM_data.ado_mydata;
  sp_zb.ProcedureName := 'zyxyf_cx_mzcfcx';
  sp_zb.Parameters.Refresh;
  sp_zb.Parameters.ParamByName('@ksdm').Value := DM_data.Qry_pub1.FieldByName('czks').AsString;
  sp_zb.Parameters.ParamByName('@cxtj').Value := ' and cfbh = ''' + cfbh + ''' ';
  if bf then
    sp_zb.Parameters.ParamByName('@cxbf').Value := 1
  else
    sp_zb.Parameters.ParamByName('@cxbf').Value := 0;
  sp_zb.Open;

   //创建报表对象
  if mzzyfydBb = nil then
  begin
    mzzyfydBb := TCusBb.Create;
    mzzyfydBb.GetBbByDM(mzzyfydBb, mzzyfyddm);
    gp_mzzyfyd.LoadFromStr(mzzyfydBb.nr);
  end;
  try
   if Assigned(gp_mzzyfyd.ParameterByName('lyxh')) then
    gp_mzzyfyd.ParameterByName('lyxh').Value := 0;
    if ysks2='' then
      gp_mzzyfyd.ParameterByName('ksmc').Value := Trim(sp_zb.FieldByName('ksmc').AsString)   //科室名称
    else
      gp_mzzyfyd.ParameterByName('ksmc').Value := ysks2;
    if ysxm2='' then
      gp_mzzyfyd.ParameterByName('ysmc').Value := Trim(sp_zb.FieldByName('ysmc').AsString)   //医生名称
    else
    gp_mzzyfyd.ParameterByName('ysmc').Value := ysxm2;
    
    if Assigned(gp_mzzyfyd.ParameterByName('yszd')) then
    gp_mzzyfyd.ParameterByName('yszd').Value := Trim(sp_zb.FieldByName('yszd').AsString);
    if Assigned(gp_mzzyfyd.ParameterByName('cflx')) then
    gp_mzzyfyd.ParameterByName('cflx').Value := Trim(sp_zb.FieldByName('cflx').AsString);
    if Assigned(gp_mzzyfyd.ParameterByName('ypyf')) then
    gp_mzzyfyd.ParameterByName('ypyf').Value :=Trim(sp_zb.FieldByName('bz').AsString);    //药品用法
    gp_mzzyfyd.setParamVal('tz', sp_zb.FieldByName('tz').asstring);

    if Assigned(gp_mzzyfyd.ParameterByName('cflb')) then
    gp_mzzyfyd.ParameterByName('cflb').Value := Trim(sp_zb.FieldByName('cflb').AsString);   //处方类别名称

     if Assigned(gp_mzzyfyd.ParameterByName('cfzje')) then
    gp_mzzyfyd.ParameterByName('cfzje').Value := sp_zb.FieldByName('cfzje').AsFloat;
      if Assigned(gp_mzzyfyd.ParameterByName('sszje')) then
    gp_mzzyfyd.ParameterByName('sszje').Value := sp_zb.FieldByName('sszje').AsFloat;
     if Assigned(gp_mzzyfyd.ParameterByName('cfjl')) then
    gp_mzzyfyd.ParameterByName('cfjl').Value := sp_zb.FieldByName('cfjl').Value;  //2
     if Assigned(gp_mzzyfyd.ParameterByName('ckdm')) then
    gp_mzzyfyd.ParameterByName('ckdm').Value := 0;
     if Assigned(gp_mzzyfyd.ParameterByName('hjrq')) then
    gp_mzzyfyd.ParameterByName('hjrq').Value := sp_zb.FieldByName('hjrq').AsDateTime;     //时间
     if Assigned(gp_mzzyfyd.ParameterByName('tmh')) then
    gp_mzzyfyd.ParameterByName('tmh').Value := sp_zb.FieldByName('tmh').Value;
     if Assigned(gp_mzzyfyd.ParameterByName('cfbh')) then
    gp_mzzyfyd.ParameterByName('cfbh').Value := sp_zb.FieldByName('cfbh').Value;
     if Assigned(gp_mzzyfyd.ParameterByName('brxm')) then
    gp_mzzyfyd.ParameterByName('brxm').Value := sp_zb.FieldByName('brxm').Value;
     if Assigned(gp_mzzyfyd.ParameterByName('brxb')) then
    gp_mzzyfyd.ParameterByName('brxb').Value := brxb2;
     if Assigned(gp_mzzyfyd.ParameterByName('brnl')) then
    gp_mzzyfyd.ParameterByName('brnl').Value := sp_zb.FieldByName('brnl').Value;
     if Assigned(gp_mzzyfyd.ParameterByName('brxm1')) then
    gp_mzzyfyd.ParameterByName('brxm1').Value := sp_zb.FieldByName('brxm1').Value;
     if Assigned(gp_mzzyfyd.ParameterByName('brxb1')) then
    gp_mzzyfyd.ParameterByName('brxb1').Value := brxb2;
     if Assigned(gp_mzzyfyd.ParameterByName('brnl1')) then
    gp_mzzyfyd.ParameterByName('brnl1').Value := sp_zb.FieldByName('brnl1').Value;
     if Assigned(gp_mzzyfyd.ParameterByName('sjbh')) then
    gp_mzzyfyd.ParameterByName('sjbh').Value := sp_zb.FieldByName('sjbh').Value; //null
     if Assigned(gp_mzzyfyd.ParameterByName('cfzje')) then
    gp_mzzyfyd.ParameterByName('cfzje').Value := sp_zb.FieldByName('cfzje').Value;
     if Assigned(gp_mzzyfyd.ParameterByName('sszje')) then
    gp_mzzyfyd.ParameterByName('sszje').Value := sp_zb.FieldByName('sszje').Value;
     if Assigned(gp_mzzyfyd.ParameterByName('czy')) then
    gp_mzzyfyd.ParameterByName('czy').Value := sp_zb.FieldByName('czy').Value;  //null
     if Assigned(gp_mzzyfyd.ParameterByName('hjks')) then
    gp_mzzyfyd.ParameterByName('hjks').Value := sp_zb.FieldByName('hjks').Value;
     if Assigned(gp_mzzyfyd.ParameterByName('czks')) then
    gp_mzzyfyd.ParameterByName('czks').Value := sp_zb.FieldByName('czks').Value; //null
     if Assigned(gp_mzzyfyd.ParameterByName('brdz')) then
    gp_mzzyfyd.ParameterByName('brdz').Value := brdz2;
     if Assigned(gp_mzzyfyd.ParameterByName('yszd')) then
    gp_mzzyfyd.ParameterByName('yszd').Value := brzd2;

  except on e: Exception do
      ShowMessage(e.Message);
  end;

  try
    gp_mzzyfyd.DataSet := sp_mx;
  except on e: Exception do
      ShowMessage(e.Message);
  end;
  res := frm_func.SetCReportXtcs(gp_mzzyfyd);
  if res <> '1' then
  begin
    ShowMessage(res);
  end
  else
  begin
    if ylbz then
    begin
      gp_mzzyfyd.PrintPreview(true);
    end
    else
    begin
      gp_mzzyfyd.Print(False);
    end;
  end;
  //printmzzyfyd1(sp_zb, sp_mx, ylbz,brdz2,brxb2,brzd2,ysxm2,ysks2);
  sp_zb.free;
  sp_mx.free;
end;

{-------------------------------------------------------------------------------
  过程名:    Tfrm_mzsf_print_service.printcxypdp_print
  作者:      yangshuai
  日期:      2016.08.19
  参数:      cxypdp:TADOStoredProc
  返回值:    无
-------------------------------------------------------------------------------}
procedure Tfrm_mzsf_print_service.printcxypdp_print(cxypdp:TADOStoredProc);
begin
  if tyyf_cx_ypdp=nil then
  begin
    tyyf_cx_ypdp:=TCusBb.Create;
    tyyf_cx_ypdp.GetBbByDM(tyyf_cx_ypdp,tyyf_cx_ypdp_dm);
    gp_tyyf_ypdp.LoadFromStr(tyyf_cx_ypdp);
  end;


  try
      gp_tyyf_ypdp.DataSet:= cxypdp;
  except on e: Exception do
        ShowMessage(e.Message);
  end;


  res := frm_func.SetCReportXtcs(gp_tyyf_ypdp);
  if res <> '1' then
  begin
    ShowMessage(res);
  end
  else
  begin
     gp_tyyf_ypdp.PrintPreview(True);
  end;
end;


procedure   Tfrm_mzsf_print_service.printzybrdtcx_na_print(dtcx: TADOStoredProc);
var
  Reg: Tregistry;
  servernameba, datanameba: string;
begin
  Reg := Tregistry.Create;
  try
    Reg.RootKey := HKEY_LOCAL_MACHINE;
    if Reg.OpenKey( 'Software\myserver', true ) then
    begin
      servernameba := Reg.ReadString( 'servernameba' );
      datanameba := Reg.ReadString( 'datanameba' );
    end;
    reg.CloseKey;
  finally
    Reg.Free;
  end;
  try
    if ( servernameba <> servername ) and ( not conn_ba.Connected ) then
    begin
      conn_ba.ConnectionString :=
          'Provider=SQLOLEDB.1;Password=baglxt;User ID=sys_bagl;' +
          'Persist Security Info=True;Initial Catalog=' +
          datanameba + ';Data Source=' + servernameba;
      conn_ba.Connected := True;
      dtcx.Connection := conn_ba;
    end else
    begin
      dtcx.Connection := DM_data.ado_mydata;
    end;
  if sfgl_zybrdtcx_na_Bb=nil then
  begin
    sfgl_zybrdtcx_na_Bb:=TCusBb.Create;
    sfgl_zybrdtcx_na_Bb.GetBbByDM(sfgl_zybrdtcx_na_Bb,sfgl_zybrdtcx_dm);
    gp_zybrdtcx_na.LoadFromStr(sfgl_zybrdtcx_na_Bb);
  end;
  try
    gp_zybrdtcx_na.DataSet:= dtcx;
  except on e: Exception do
        ShowMessage(e.Message);
  end;
  res := frm_func.SetCReportXtcs(gp_zybrdtcx_na);
  if res <> '1' then
  begin
    ShowMessage(res);
  end
  else
  begin
    gp_zybrdtcx_na.Print(True);
  end;
  finally
    conn_ba.Connected := False;
  end;

end;
//通用库房-按品种查询入库
procedure Tfrm_mzsf_print_service.print_tykf_apzcxrk(cxrk1:TADOStoredProc);
begin
  try
     if tykf_apzcxrk=nil then
     begin
    tykf_apzcxrk:=TCusBb.Create;
     end;
    tykf_apzcxrk.GetBbByDM(tykf_apzcxrk,tykf_apzcxrk_dm);
    gp_rkapzcx.LoadFromStr(tykf_apzcxrk);
  except
    ShowMessage('报表不存在，请先加入报表');
    Exit;
  end;
  try
    gp_rkapzcx.DataSet:=cxrk1;
  except on e: Exception do
    ShowMessage(e.Message);
  end;
  res := frm_func.SetCReportXtcs(gp_rkapzcx);
  if res <> '1' then
  begin
    ShowMessage(res);
  end
  else
  begin
    gp_rkapzcx.Print(True);
  end;
end;
//通用库房-按品种查询主表
procedure Tfrm_mzsf_print_service.print_tykf_apzcxrkzb(cxrk2:TADOStoredProc);
begin
  try
    if tykf_apzcxrkzb=nil then
    begin
      tykf_apzcxrkzb:=TCusBb.Create;
    end;
    tykf_apzcxrkzb.GetBbByDM(tykf_apzcxrkzb,tykf_apzcxzb_dm);
    gp_apcxrk_zb.LoadFromStr(tykf_apzcxrkzb);
  except
    ShowMessage('报表不存在，请先加入报表');
    Exit;
  end;
  try
    gp_apcxrk_zb.DataSet:=cxrk2;
  except on e: Exception do
    ShowMessage(e.Message);
  end;
  res := frm_func.SetCReportXtcs(gp_apcxrk_zb);
  if res <> '1' then
  begin
    ShowMessage(res);
  end
  else
  begin
    gp_apcxrk_zb.Print(True);
  end;
end;
//通用库房-按品种查询明细
procedure Tfrm_mzsf_print_service.print_tykf_apzcxrkmx(cxrk3: TADOStoredProc);
begin
  try
    if tykf_apzcxrkmx=nil then
    begin
      tykf_apzcxrkmx:=TCusBb.Create;
    end;
    tykf_apzcxrkmx.GetBbByDM(tykf_apzcxrkmx,tykf_apzcxmx_dm);
    gp_apzcxrk_mx.LoadFromStr(tykf_apzcxrkmx);
  except
    ShowMessage('报表不存在，请先加入报表');
    Exit;
  end;

  try
    gp_apzcxrk_mx.DataSet:=cxrk3;
  except on e:Exception do
    ShowMessage(e.Message);
  end;
  res:=Frm_func.SetCReportXtcs(gp_apzcxrk_mx);
  if res<>'1' then
  begin
    ShowMessage(res);
  end else
  begin
    gp_apzcxrk_mx.Print(true);
  end;
end;
//通用库房-按品种查询出库
procedure Tfrm_mzsf_print_service.print_tykf_apzcxck(cxck1: TADOStoredProc);
begin
  try
    if tykf_apzcxck=nil then
    begin
    tykf_apzcxck:=TCusBb.Create;
    end;
    tykf_apzcxck.GetBbByDM(tykf_apzcxck,tykf_apzcxck_dm);
    gp_apzcxck.LoadFromStr(tykf_apzcxck);
  except
    ShowMessage('报表不存在，请先加入报表');
    Exit;
  end;

  try
    gp_apzcxck.DataSet:=cxck1;
  except on e:Exception do
    ShowMessage(e.Message);
  end;
  res:=Frm_func.SetCReportXtcs(gp_apzcxck);
  if res<>'1' then
  begin
    ShowMessage(res);
  end else
  begin
    gp_apzcxck.Print(true);
  end;
end;
//通用库房-按品种查询出库主表
procedure Tfrm_mzsf_print_service.print_tykf_apzcxck_zb(cxck2: TADOStoredProc);
begin
  try
    if tykf_apzcxckzb=nil then
    begin
    tykf_apzcxckzb:=TCusBb.Create;
    end;
  tykf_apzcxckzb.GetBbByDM(tykf_apzcxckzb,tykf_apzcxckzb_dm);
  gp_apzcxck_zb.LoadFromStr(tykf_apzcxckzb);
  except
    ShowMessage('报表不存在，请先加入报表');
    Exit;
  end;

  try
    gp_apzcxck_zb.DataSet:=cxck2;
  except on e:Exception do
    ShowMessage(e.Message);
  end;
  res:=Frm_func.SetCReportXtcs(gp_apzcxck_zb);
  if res<>'1' then
  begin
    ShowMessage(res);
  end else
  begin
    gp_apzcxck_zb.Print(true);
  end;
end;
//通用库房-按品种查询出库明细
procedure Tfrm_mzsf_print_service.print_tykf_apzcxck_mx(cxck3: TADOStoredProc);
begin
  try
  if tykf_apzcxckmx=nil then
  begin
    tykf_apzcxckmx:=TCusBb.Create;
  end;
  tykf_apzcxckmx.GetBbByDM(tykf_apzcxckmx,tykf_apzcxckmx_dm);
  gp_apzcxck_mx.LoadFromStr(tykf_apzcxckmx);
  except
    ShowMessage('报表不存在，请先加入报表');
    Exit;
  end;
  try
    gp_apzcxck_mx.DataSet:=cxck3;
  except on e:Exception do
    ShowMessage(e.Message);
  end;
  res:=Frm_func.SetCReportXtcs(gp_apzcxck_mx);
  if res<>'1' then
  begin
    ShowMessage(res);
  end else
  begin
    gp_apzcxck_mx.Print(true);
  end;
end;
procedure Tfrm_mzsf_print_service.print_sbgl_rkmx(adork:TADOQuery);
begin
  try
    if sbgl_rkmx_Bb=nil then
    begin
      sbgl_rkmx_Bb:=TCusBb.Create;
    end;
    sbgl_rkmx_Bb.GetBbByDM(sbgl_rkmx_Bb,sbgl_rkmx_dm);
    gp_sbgl_rkmx.LoadFromStr(sbgl_rkmx_Bb);
  except
    ShowMessage('报表不存在，请先加入报表');
    Exit;
  end;
  try
    gp_sbgl_rkmx.DataSet:=adork;
  except on e:Exception do
    ShowMessage(e.Message);
  end;
  res:=Frm_func.SetCReportXtcs(gp_sbgl_rkmx);
  if res<>'1' then
  begin
    ShowMessage(res);
  end else
  begin
    gp_sbgl_rkmx.PrintPreview(True);
  end;
end;



{-------------------------------------------------------------------------------
  过程名:    Tfrm_mzsf_print_service.print_mzfybq
  作者:      yangshuai
  日期:      2016.09.30
  参数:      sp_dy:TADOStoredProc;i:Integer
  返回值:    无
-------------------------------------------------------------------------------}
procedure Tfrm_mzsf_print_service.print_mzfybq(sp_dy:TADOStoredProc;i:Integer;a_dyyl: Boolean);
begin
  if tyyf_fybqdy_Bb=nil then
  begin
    try
      tyyf_fybqdy_Bb:=TCusBb.Create;
      tyyf_fybqdy_Bb.GetBbByDM(tyyf_fybqdy_Bb,tyyf_fybqdy_dm);

      gp_printmzfybq.LoadFromStr(tyyf_fybqdy_Bb);
    except
      ShowMessage('报表不存在！请先加入报表！');
      Exit;
    end;
  end;

//  try
//    if Assigned(gp_printmzfybq.ParameterByName('xh')) then
//      gp_printmzfybq.ParameterByName('xh').Value := i;
//  except on e: Exception do
//    ShowMessage(e.Message);
//  end;

  try
    gp_printmzfybq.DataSet:=sp_dy;
  except on e:Exception do
    ShowMessage(e.Message);
  end;
  res:=Frm_func.SetCReportXtcs(gp_printmzfybq);
  if res<>'1' then
  begin
    ShowMessage(res);
  end else
  begin
  ////打印第一个药品的时候选择打印机，后面的药品不需选择
    if pub_yydm<>'0257' then    //全州医院要求不弹出打印框 直接打印
    begin
      if a_dyyl = True then
        gp_printmzfybq.PrintPreview(true)
      else
        gp_printmzfybq.Print(False);
    end else
     gp_printmzfybq.Print(False);
  end;

end;

{-------------------------------------------------------------------------------
  过程名:    Tfrm_mzsf_print_service.print_kfybqdy
  作者:      yangshuai
  日期:      2016.10.18
  参数:      brxm,brnl,ypmc,ypyf,ypyl,brxb:string;bz:Integer
  返回值:    无
-------------------------------------------------------------------------------}
procedure Tfrm_mzsf_print_service.print_kfybqdy(brxm,brnl,ypmc,ypyf,ypyl,brxb:string;bz:Integer);
var
  yfm:string;
begin
  try
    if tyyf_kfybqdy_Bb=nil then
    begin
      tyyf_kfybqdy_Bb:=TCusBb.Create;
    end;
    tyyf_kfybqdy_Bb.GetBbByDM(tyyf_kfybqdy_Bb,tyyf_kfybqdy_dm);
    gp_tyyf_plbqdy1.LoadFromStr(tyyf_kfybqdy_Bb);
  except
    ShowMessage('报表不存在，请先加入报表');
    Exit;
  end;
  try
    if Assigned(gp_tyyf_plbqdy1.ParameterByName('用法')) then
    gp_tyyf_plbqdy1.ParameterByName('用法').Value:=ypyf;
    if Assigned(gp_tyyf_plbqdy1.ParameterByName('病人姓名')) then
    gp_tyyf_plbqdy1.ParameterByName('病人姓名').Value:=brxm;
    if Assigned(gp_tyyf_plbqdy1.ParameterByName('病人年龄')) then
    gp_tyyf_plbqdy1.ParameterByName('病人年龄').Value:=brnl;
    if Assigned(gp_tyyf_plbqdy1.ParameterByName('药品名称')) then
    gp_tyyf_plbqdy1.ParameterByName('药品名称').Value:=ypmc;
    if Assigned(gp_tyyf_plbqdy1.ParameterByName('药品用法')) then
    gp_tyyf_plbqdy1.ParameterByName('药品用法').Value:=ypyf;
    if Assigned(gp_tyyf_plbqdy1.ParameterByName('药品用量')) then
    gp_tyyf_plbqdy1.ParameterByName('药品用量').Value:=ypyl;
    if Assigned(gp_tyyf_plbqdy1.ParameterByName('病人性别')) then
    gp_tyyf_plbqdy1.ParameterByName('病人性别').Value:=brxb;
  except on e:Exception do
    ShowMessage(e.Message);
  end;
  res:=Frm_func.SetCReportXtcs(gp_tyyf_plbqdy1);
  if res<>'1' then
  begin
    ShowMessage(res);
  end else
  begin
    if bz=1 then
    begin
      gp_tyyf_plbqdy1.Print(True);
    end else
    begin
      gp_tyyf_plbqdy1.Print(False);
    end;
  end;
end;

{-------------------------------------------------------------------------------
  过程名:    Tfrm_mzsf_print_service.RevertPrinter
  作者:      yangshuai
  日期:      2016.06.23
  参数:      无
  返回值:    无
-------------------------------------------------------------------------------}
procedure Tfrm_mzsf_print_service.RevertPrinter;
begin
  //还原原来默认打印机
  try
    if v_IsPrinterJoin then
      Proc_ChangePrinter(v_PrinterIndex_old, True);
  except
  end;
end;

end.

