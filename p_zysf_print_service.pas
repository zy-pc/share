unit p_zysf_print_service;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, Printers, p_obj, DateUtils,
  OleServer, grproLib_TLB, Menus, ComCtrls, p_ICF
{$IFDEF Maks}, p_Dyjgl, p_Makvar_zysf{$ENDIF}
  //, debugHandler
  ;

type
  TGridppReport = class(grproLib_TLB.TGridppReport)
    function LoadFromStr(const Data: TCusBb): WordBool; overload;
    procedure setParamVal(key, val: Variant);
  public
    Fc_bbdm: string;
  end;

{腕带类型}
type SpireLamellaType = (slChildren, slNormal);

type
  Tfrm_zysf_print_service = class(TForm)
    qry_bl_yjsj: TADOQuery;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    sp_fymx_dy1: TADOStoredProc;
    qry_bl_jfsj: TADOQuery;
    qry_bl_jssj: TADOQuery;
    lbl8: TLabel;
    frxrprt_yjsj: TGridppReport;
    GridppReport_jssj: TGridppReport;
    qry_kmdm: TADOQuery;
    GridppReport_jfsj: TGridppReport;
    GridppReportFymx: TGridppReport;
    GridppReportYymx: TGridppReport;
    GridppReportZymx: TGridppReport;
    GridppReportFyhz: TGridppReport;
    lbl9: TLabel;
    GridppReportYrqd: TGridppReport;
    GridppReportyyhz: TGridppReport;
    gp_zyxycfd: TGridppReport;
    lbl10: TLabel;
    frxrprt_fprk: TGridppReport;
    frxrprt_fpck: TGridppReport;
    frxrprt_fpsyqk: TGridppReport;
    Label3: TLabel;
    Label4: TLabel;
    gp_tcqxnh: TGridppReport;
    Label2: TLabel;
    Label5: TLabel;
    gp_jlfyjstzd: TGridppReport;
    gp_lxdbb: TGridppReport;
    Label6: TLabel;
    Label7: TLabel;
    gp_zyzyfyd: TGridppReport;
    gp_syjhd: TGridppReport;
    gp_zyzycfmxdy: TGridppReport;
    frxrprt_zyzyjyd: TGridppReport;
    lbllabel12: TLabel;
    frxrprt_zyzycfd: TGridppReport;
    gp_tyjbb: TGridppReport;
    Label8: TLabel;
    lblPathRep: TLabel;
    gpPathRep: TGridppReport;
    lbl11: TLabel;
    gpSpireLamella: TGridppReport;
    gpSpireLamellaCHild: TGridppReport;
    lbl12: TLabel;
    gp_xyfplfy: TGridppReport;
    gpTransportRep: TGridppReport;
    Label9: TLabel;
    gr_commonprint: TGridppReport;
    Label12: TLabel;
    Label13: TLabel;
    gp_jysqd: TGridppReport;
    lbl_jysq: TLabel;
    gp_jcsqd: TGridppReport;
    lbl_jcsqd: TLabel;
    sp_jysqddy: TADOStoredProc;
    sp_jcsqddy: TADOStoredProc;
    gpSYXSK: TGridppReport;
    lbl13: TLabel;
    gpPub: TGridppReport;
    Label14: TLabel;
    gr_sypq: TGridppReport;
    lbl14: TLabel;
    gp_yktkksj: TGridppReport;
    gpjysqd_dy: TGridppReport;
    gp_yjjmxdy: TGridppReport;
    lbl15: TLabel;
    lbl16: TLabel;
    gp_syddy: TGridppReport;
    Label15: TLabel;
    gp_zybrsjfjdy: TGridppReport;
    Label16: TLabel;
    gpczyyjmx_dy: TGridppReport;
    Label17: TLabel;
    gp_shzypldy: TGridppReport;
    grp_cybrjsmx: TGridppReport;
    Label18: TLabel;
    pl_cfmxdy: TGridppReport;
    lbl17: TLabel;
    kfyzxddy: TGridppReport; //井研人民医院 护士工作站 口服药执行单选择打印
    Label19: TLabel;
    nayptjtjdy: TGridppReport;
    Label20: TLabel;
    lbl18: TLabel;
    lbl19: TLabel;
    cqzsddy: TGridppReport;
    lszsddy: TGridppReport;
    Qry_tc1: TADOQuery;
    Qry_tc2: TADOQuery;
    lbl20: TLabel;
    gp_jcsqdtmdy: TGridppReport;
    jyxmdy: TGridppReport;
    Label21: TLabel;
    lbl21: TLabel;
    grdprprt_yzzxd: TGridppReport;
    gp_zysfjsd: TGridppReport;
    grid_ywsrsj: TGridppReport;
    Label22: TLabel;
    GridppReport_jssqd: TGridppReport;
    lbl22: TLabel;
    txt25: TStaticText;
    gp_ddzycnjsbbdy: TGridppReport;
    Label23: TLabel;
    GridppReportddyyYrqd: TGridppReport;
    Label24: TLabel;
    GridppReportddyyFyhz: TGridppReport;
    sp_zysj_sj: TADOStoredProc;
    grd_clsqdbb: TGridppReport;
    grd_blsjbgb: TGridppReport;
    lbl23: TLabel;
    Label25: TLabel;
    grd_jytmzdy: TGridppReport;

    procedure frxrprt_yjsjGetValue(const VarName: string; var Value: Variant);
    procedure frxrprt_jffpGetValue(const VarName: string; var Value: Variant);
    procedure frxrprt_jssjGetValue(const VarName: string; var Value: Variant);
    procedure FormCreate(Sender: TObject);
    function Printsyjhd2(sp_synr: TADOStoredProc; rq: string): string;
  private
    Fv_PrinterIndex_new: Integer;
    Fv_PrinterIndex_old: Integer;
    procedure ChangePrinter(_index: integer);
    procedure RevertPrinter;
    procedure fldxjeSw(zy_zfy: real);
    function CalcZyts(ryrq: string; var cyrq: string): string;
    procedure CalcFy(sp_fymx: TADOStoredProc);
    procedure CalcYp(SP_yymx: TADOStoredProc; lb: string);
    procedure Gen_SN(qry: TADOQuery;synr: TADOStoredProc); //生成输液单的序号

    { Private declarations }
  public
        v_PrinterIndex_new:Integer;
        v_IsPrinterJoin:Boolean;
   //property v_PrinterIndex_new: Integer read Fv_PrinterIndex_new write Fv_PrinterIndex_new;
   // property v_PrinterIndex_old: Integer read Fv_PrinterIndex_old write Fv_PrinterIndex_old;
    /// <summary>
    /// 公共打印函数，用于鸡肋功能自定义报表打印
    /// </summary>
    /// <param name="sjj">报表数据集</param>
    /// <param name="cs">报表参数</param>
    /// <param name="bbdm">报表代码</param>
    /// <returns></returns>
    function Commonprint(sjj,cs: TCustomADODataSet;bbdm:string): string;
    procedure printjssj(zy_zyh, zy_sjbh, zy_brxm,
      zy_brxb, zy_brnl, zy_ksmc, zy_bch, zy_fylb, zy_tmh, zy_tchz: string; zy_zfy, zy_ytjejs, zy_ybjejs, zy_ytje, zy_ybje,
      zy_sbzfje, zy_sbtcje, sjyjze, yjze, zy_kzfje, yhje: real; zy_ryrq, zy_cyrq: Tdatetime;
      zy_csrq: string = '2007-12-12'; zy_brdz: string = ''; sp_tj_fydl1: TADOStoredProc = nil;
      qry_sbjsb: TADOQuery = nil; sp_sebrqk: TADOStoredProc = nil;zy_bah:string='';
      zy_nhfmbz:Real=0.00;zy_mzjzzh:string = '';azy_dbzfyje:real=0.00;azy_dbzmc:string='';azy_tcjesr:real=0.00;ts_jsfs:string='';azy_yhjesr:string='';a_zhzf:string='';a_jmjesr:real=0.00;a_dbjesr:real=0.00);
   //打印申请单
    procedure printcyjssqd(zy_zyh, zy_sjbh, zy_brxm,
      zy_brxb, zy_brnl, zy_ksmc, zy_bch, zy_fylb, zy_tmh, zy_tchz: string; zy_zfy, zy_ytjejs, zy_ybjejs, zy_ytje, zy_ybje,
      zy_sbzfje, zy_sbtcje, sjyjze, yjze, zy_kzfje, yhje: real; zy_ryrq, zy_cyrq: Tdatetime;
      zy_csrq: string = '2007-12-12'; zy_brdz: string = ''; sp_tj_fydl1: TADOStoredProc = nil;
      qry_sbjsb: TADOQuery = nil; sp_sebrqk: TADOStoredProc = nil;zy_bah:string='';
      zy_nhfmbz:Real=0.00;zy_mzjzzh:string = '';azy_dbzfyje:real=0.00;azy_dbzmc:string='';azy_tcjesr:real=0.00;ts_jsfs:string='';azy_yhjesr:string='');


    procedure proc_printyjsj(zy_tmh, zy_brxm, zy_brxb, zy_ksmc, zy_sjh, zy_bch,
      yjfs, brdz,zy_brnl: string; zy_yjje: real);
    function PrintZyjz(ph, czks, brxm, brxb, brnl, kdys, tmh,
      bch: string): string;

    function PrintFymx(sp_brjbxx, sp_fymx, sp_fydl, sp_yjmx: TADOStoredProc): string;
    function PrintYymx(sp_brjbxx, sp_yymx: TADOStoredProc; qfjyl: boolean): string;
    function PrintZymx(sp_brjbxx, sp_zymx: TADOStoredProc): string;
    function PrintSjfj(brxm, brnl, brxb, ryrq, cyrq, tmh, zyks, tbje, bch,
      fylb, zgys: string; zfy,
      zyj, jszj, zzhj: Real; sp_fydl, sp_fymx, sp_yymx: TADOStoredProc): string;
    function PrintFyhz(sp_brjbxx, sp_fyhz, sp_fydl, sp_yjmx: TADOStoredProc): string;
    function PrintddyyFyhz(sp_fyhz, sp_yjmx: TADOStoredProc): string;  //掇刀医院费用汇总
    function PrintYyhz(sp_brjbxx, sp_yyhz: TADOStoredProc): string;
    function PrintYrqd(brxm, bch, rq, tmh, zy_bqmc: string; zfy, zyj, ye: Real; sp_yrqd, sp_yymx, sp_clmx: TADOStoredProc): string;
    function Print_ddyy_CountYrqd(sp_yrqd_PrintData: TADOStoredProc): string;//掇刀医院一日清单
    function PrintLxd(sp_jbxx: TADOStoredProc; qry_lxd: TADOQuery): string;
    procedure printzycfd(Qry_zb: TADOQuery; sp_mx : TADOStoredProc);//打印中药处方单
        procedure printzyzyfyd(sp_zb: TCustomADODataSet; sp_mx: TCustomADODataSet; _ylbz: boolean); //住院中药调配单
    function Printsyjhd(sp_jbxx: TADOStoredProc; sp_synr: TADOStoredProc; rq: string): string;
    procedure proc_pring_zyxycf(sp_zb, sp_mx: TCustomADODataSet);

    procedure proc_printfprk(qry_rk: Tadoquery);
    procedure proc_printfprk_preview(qry_rk: Tadoquery);
    procedure proc_printfpck(qry_ck: Tadoquery);
    procedure proc_printfpsyqk(qry_sy: Tadoquery);
    procedure proc_pring_zyzyjyd(sp_cx: TADOStoredProc);
    procedure proc_printtcqxnh(_tmh, _lb: string);
    procedure proc_printtcqczjm(_tmh, _lb: string);
    procedure printzyzycfdymxd(qry_zb:TADOQuery;sp_mx: TADOStoredProc);
    procedure printtyjp(zy_ksmc:string;zy_brxm:string;zy_brxb:string;zy_brnl:string;zy_zyh:string;zy_tfxm:string; zy_tyjje:real) ;
    procedure printPathway(zyh: string);
    procedure proc_printyjsj_bd(zy_tmh, zy_brxm, zy_brxb, zy_ksmc, zy_sjh, zy_bch, yjfs, brdz,dyczy: string; zy_yjje: real;dyrq:TDateTime;zy_brnl:string);

    {腕带打印}
    procedure PrintSpireLamella(Name, Gender, Age, OfcName, CardNo, BedNo: string;
      PrtType: SpireLamellaType=slNormal);

    procedure printXyfplfy(adosp: TADOStoredProc);

    procedure dysyddy(sp_zxjl_cq_dy,sp_jbxx:TADOStoredProc; qry_pub:TADOQuery;asyjhTitle:string );
    {病人检查运输申请单打印}
    procedure PrtPatsTransSheet(Diagnosis, Way, Date, DiagType, DoctorName: string;
      QryCheckDetials: TADOQuery);

    { 打印检验申请单 }
    procedure PrintJYSQD(
        zyh,
        yzid:string; {所有需要打印的检验医嘱的医嘱id由','隔开拼接而成}
        kdrq: TDateTime; {开单日期}
        isJC:Boolean {为true 表示急查}
    ); overload;
    procedure PrintJYSQD(sp_jysq: TADOStoredProc); overload;
    procedure printjysqd_dy(sp_jysq: TADOStoredProc);

    //四会中医院在线病人收据附件打印
    procedure Printzxbrsjfj_dy(qry_sjfj:TADOQuery);

    //四会中医院操作员预交明细打印
    procedure Printczyyjmx_dy(sp_czyyjmx:TADOStoredProc);

    //四会中药批量打印
    procedure sh_zycfpldy(Qry_zb: TADOQuery; sp_mx : TADOStoredProc);

    //四会中医院病人结算明细
    procedure Printcybrjsmx_dy(sp_cyjsrb:TADOStoredProc;sbgltj,tjrq:string);

    { 打印检查申请单 }
    procedure PrintJCSQD(zyh,yzid:string;kdrq: TDateTime; isJC:Boolean);  overload;
    procedure PrintJCSQD(sp_jcsq: TADOStoredProc); overload;
    { Public declarations }
    {打印预交金明细记录}
    procedure printYJJMX(Inadoquer:TADOQuery;czy:string;startrq,endrq:string);
    {---------------------}
        {井研人民医院护士工作站口服药执行单选择打印}
    procedure print_kfyzxddy(sp_dryz:TADOStoredProc;yymc,brxm,bch,brxb,brnl,nf:string);
    {井研人民医院护士工作站长期注射单打印}
    procedure print_cqzsddy(sp_dryz:TADOStoredProc;yymc,brxm,bch,brxb,brnl,nf:string);
    {井研人民医院护士工作站临时注射单打印}
    procedure print_lszsddy(sp_dryz:TADOStoredProc;yymc,brxm,bch,brxb,brnl,nf:string);
    {-------------------------------------}
    procedure PrintCQLSSYXSK(adoquery1: TADOQuery; rq: string; lqls:TCQLS);
    {----------}
    {全州检验结果打印}
    procedure printjyjgdy(sp_jyjg:TADOQuery;dy:Boolean);
    {检查单 单独条码打印}
    procedure printjcdtm(dyjxh:Integer;sp_jcsq: TADOStoredProc);
    procedure proc_print_tjtj(sp_cktj:TADOStoredProc;sjstr:string);
    procedure Printsypq(sp_syfz:TADOStoredProc;bch:string;brxm:string;zyh:string;tmh:string;brxb:string;brnl:string;zxrq:string);
    procedure print_zysf_yktkf(qry_fymx:TCustomADODataSet;tmh,brxm,sfrq,czy,sjbh:string); //住院收费一卡通扣费
    procedure print_hsgzz_plcfmxdy(qry_cfmx:TADOStoredProc;tmh,brxm,brnl,brxb,bch,ksmc,zgysmc,cfbh,pldh:string);//白河  护士工作站 批量处方明细打印
    procedure print_yzzxddy(sp_jbxx: TADOStoredProc; sp_synr: TADOStoredProc; zxrq: string);// 荆门市掇刀人民医院 医嘱执行单打印
    procedure print_jssjdy(v_tmh,v_zyh,v_zyks,v_zyts,v_brxm,v_brxb,v_sjbh,v_brnl,v_fylb,v_ryrq:string;v_cyrq:TDateTime;v_xyf,v_zyf,v_cyf,v_zcf,v_jcf,v_ssf,v_sxf,v_zlf,v_clf,v_hlf,v_cwf,v_qt,v_zje:real);//台山住院收费直接结算
    procedure print_ywsrsjdy(v_mc,v_sjqzh,v_jzrq,v_dyrq,v_tfsjh,v_cwsj,v_sfydm,v_ssje,v_dxje,v_cd:string);
     //出纳结算报表打印
    procedure printddzycnjsbbdy(ajzrq:TDateTime;sp_maindata, sp_mxdata: TADOStoredProc;ylbz:Boolean);
    procedure print_ylaqsjbgb(tmh :string); //医疗安全事件报告表
    procedure print_jytmzdy(fzh: string);  //检验条码自定义报表
  end;

var
  frm_zysf_print_service: Tfrm_zysf_print_service;

  sl: Tstringlist;
  ts: TMemoryStream;

  v_PrinterIndex_new: Integer;
  v_PrinterIndex_old: Integer;
  sbzfdybz: Boolean;
  sw, w, q, b, s, y, j, f: string;
  zfy_fy, zfhj_fy: real; //不含药品总费用 ,不含药品总自费
  jlhj, ylhj, zfhj_yp: real; //甲、乙、自费合计

  res: string;

  yjsjBb: TCusBb; //预交收据报表对象
  jfsjBb: TCusBb; //记费收据报表对象
  jssjBb: TCusBb; //结算收据报表对象
  fymxBb: TCusBb; //费用明细报表对象
  yymxBb: TCusBb; //用药明细报表对象
  zymxBb: TCusBb; //中药明细报表对象
  sjfjBb: TCusBb; //收据附件报表对象
  fyhzBb: TCusBb; //费用汇总报表对象
  fydddyyhzBb: TCusBb; //掇刀医院费用汇总报表对象
  yyhzBb: TCusBb; //用药汇总报表对象
  yrqdBb: TCusBb; //住院病人一日清单
  ddyy_yrqdBb: TCusBb; //掇刀医院住院病人一日清单
  lxdBb: TCusBb; //领血单报表
  syjhdbb: TCusBb; //输液计划单报表
  zyxycfBb: TCusBb; //住院西药处方对象
  fprkBb: TCusBb; //发票入库对象
  fpckbb: TCusBb; //发票出库对象
  zyzyfydBb: Tcusbb; //住院中药调配单
  fpsyqkbb: Tcusbb; //发票使用情况对象
  zyzycfdybb : TCusBb;//住院中药处方打印报表
  zyzycfmxdy: TCusBb;//住院中药处方明细打印
  zyzyjydbb: TCusBb; //住院中药煎药单报表
  tcqxnhbb: TCusBb; //统筹区县农合对象
  tcqczjmbb: TCusBb; //居民住院病人医疗费用结算通知单
  tyjbb: TCusBb;//退预交报表
  PathRep: TCusBb; //临床路径表单
  ChildSpireLamellaRep: TCusBb;//儿童腕带报表
  SpireLamellaRep: TCusBb;//普通腕带报表
  TransportRep: TCusBb; //运输申请单
  jysqdBb: TCusBb; //检验申请报表
  jcsqdBb: TCusBb; //检查申请单报表
  cqsyxskBb: TCusBb;//长期输液巡视卡
  lssyxskBb: TCusBb;//临时输液巡视卡
  sypq:TCusBb;
  zysfyktkf: TCusBb;//门诊收费一卡通扣费
  jysqdbb_dy: TCusBb; // 大雁检验申请单
  yjjmxbb:TCusBb;//预交金明细报表打印
  dysydBb:TCusBb; //德阳肿瘤医院报表打印
  zxbrsjfjBb:TCusBb;//四会中医院在线病人收据附件打印
  czyyjmxBb : TCusBb;//四会中医院操作员预交明细
  cybxjsmxBb: TCusBb;//四会中医院病人结算费用明细
  pltzcfmxBb:TCusBb;//白河医院批量通知处方明细打印
  kfyzxddyBb:TCusBb;//井研人民医院护士工作站口服药执行单打印
  nayyyptjtjbb:TCusBb;//宁安医院药品调价统计报表打印
  cqzsddyBb:TCusBb;//井研人民医院护士工作站长期注射单打印
  lszsddyBb:TCusBb;//井研人民医院护士工作站临时注射单打印
  jcsqdtmdyBb:TCusBb;//沙雅县检验条码打印
  jyxmdyBb:TCusBb;//全州检验项目打印
  yzzxddyBb:TCusBb;// 荆门市掇刀人民医院 医嘱执行单打印
  zysfjsdBb:TCusBb;//台山住院收费结算单
  tsywsrsjBb :TCusBb;//台山中医院收入收据打印
  jssqdBb: TCusBb; //掇刀结算申请单报表
  zycnjsBb: TCusBb; //掇刀住院出纳结算报表
  ylaqsjbgb : TCusBb;//医疗安全事件报告表
  jytmzdy : TCusBb;//检验条码自定义报表
const
  ylaqsjbgbdm ='089858'; //医疗安全事件报告表
  cybxjsmxdm ='040104' ; //四会中医院病人结算费用明细代码
  czyyjmxdm ='040103';//四会中医院操作员预交明细代码
  zxbrsjfjdm ='010427';//四会中医院在线病人收据代码
  yjsjdm = '010103'; //预交收据代码
  jfsjdm = '010102'; //记费收据代码
  jssjdm = '010101'; //结算收据代码
  fymxdm = '010104'; //费用明细清单代码
  yymxdm = '010105'; //用药明细清单代码
  zymxdm = '010106'; //中药明细清单代码
  sjfjdm = '010109'; //收据附件代码
  fyhzdm = '010107'; //费用明细汇总代码
  fyddyyhzdm = '030102'; //掇刀医院费用明细汇总代码
  yyhzdm = '010108'; //用药明细汇总代码
  yrqddm = '010110'; //一日清单代码
  ddyyyrqddm = '031002'; //掇刀医院一日清单代码
  czyjdm = '010111'; //操作员缴款表
  jsqkdm = '010112'; //结算情况
  lxddm = '089802'; //领血单代码
  zyxycfdm = '010412'; //住院西药处方代码
  fprkdm = '040307'; //发票入库代码
  fpckdm = '040308'; //发票出库代码
  fpckdm_dd = '089899'; //发票出库代码（掇刀医院）
  fpsyqkdm = '040309'; //发票使用情况代码
  zyzyfyddm = '010419'; //住院中药调配单代码
  tcqxnhdm = '010901'; //统筹区县农合
  zyzycfddm ='010419';// '040505';//住院中药处方打印单代码
  tcqczjmdm = '010902'; //居民住院病人医疗费用结算通知单
  syjhddm = '039801'; //输液计划单代码
  zyzyjyddm = '040403'; //住院中药煎药单代码
  zyzycfmx = '041001';//住院中药处方明细打印代码
  tyjpj = '080101';//退预交票据
  PathRepCode = '089807'; //临床路径表单代码
  ChildSpireLamellaCode = '089809'; //儿童腕带报表代码
  SpireLamellaCode = '089810'; //普通腕带报表代码
  TransportCode  = '089811'; //运输申请单代码
  jysqddm = '021902'; //检验申请单代码
  jcsqddm = '021901'; //检查申请单代码
  cqsyxskdm = '089804';//长期输液巡视卡
  lssyxskdm = '089803';//临时输液巡视卡
  jcsqddm_sy = '089808'; //检查申请单代码 沙雅县人民医院
  jysqddm_sy = '089809'; //检验申请单代码 沙雅县人民医院
  sypq_na = '041008'; //输液瓶签 宁安
  yktkksjdm ='010705'; //通用记费一卡通扣款收据代码
  jysqdbbdm_dy = '081002'; // 大雁检验申请单
  yjjmxdydm ='040109'; //预交金报表打印
  dysydBbdm ='041901'; //德阳输液单打印
  pltzcfmxdm='041107';//白河批量处方明细打印
  kfyzxddydm='041007';//井研人民医院口服药执行单打印
  nayyyptjtjdm='041701';//宁安医院药剂科药品调价报表day
  cqzsddydm='041008';//井研人民医院护士工作站长期注射单打印
  lszsddydm='041009';//井研人民医院护士工作站临时注射单打印
  jcsqdtmdydm='081001';   //沙雅县检验条码打印
  jyxmdydm='041908'; //全州检验项目结果打印
  yzzxddydm='089871';// 荆门市掇刀人民医院 医嘱执行单打印
  zysfjsdm='010102'; //台山住院收费结算单
  tsywsrsjdm ='040319';//台山业务收入收据打印
  jssqddm = '089897'; //结算申请单代码
  zycnjsdm = '089883'; //住院出纳结算报表
  jytmzdydm = '089804';//检验条码自定义报表
implementation

uses p_func, p_dm;

procedure Tfrm_zysf_print_service.print_ylaqsjbgb(tmh: string);
var

   cxsj : TADOStoredProc;
begin
  if ylaqsjbgb=nil then
  begin
    ylaqsjbgb := TCusBb.Create;
    ylaqsjbgb.GetBbByDM(ylaqsjbgb,ylaqsjbgbdm);
    grd_blsjbgb.LoadFromStr(ylaqsjbgb.nr);
  end;
//  tmh :=  sp_jbxx.FieldByName('tmh').AsString;
  cxsj := TADOStoredProc.Create(Self);
  cxsj.Connection := p_dm.DM_data.ado_mydata;
  cxsj.ProcedureName :='ylaq_cx_blsjbgb';
  cxsj.Parameters.CreateParameter('@tmh',ftString,pdInput,9,fgUnassigned);
  cxsj.Open;
  cxsj.Parameters.ParamByName('@tmh').Value := tmh;
  grd_blsjbgb.DataSet := cxsj;
  cxsj.close;
  grd_blsjbgb.PrintPreview(true);
end;
 //武当山检验条码自定义报表
procedure Tfrm_zysf_print_service.print_jytmzdy(fzh: string);
var
   cxsj : TADOStoredProc;
begin
  if jytmzdy=nil then
  begin
    jytmzdy := TCusBb.Create;
    jytmzdy.GetBbByDM(jytmzdy,jytmzdydm);
    grd_jytmzdy.LoadFromStr(jytmzdy.nr);
  end;
//  tmh :=  sp_jbxx.FieldByName('tmh').AsString;
  cxsj := TADOStoredProc.Create(Self);
  cxsj.Connection := p_dm.DM_data.ado_mydata;
  cxsj.ProcedureName :='jyzx_tmdy_zy_jytm';
  cxsj.Parameters.CreateParameter('@fzh',ftString,pdInput,12,fgUnassigned);
  cxsj.Parameters.ParamByName('@fzh').Value := fzh;
  cxsj.Open;
  grd_jytmzdy.DataSet := cxsj;
  cxsj.close;
  grd_jytmzdy.print(False);
end;



//台山中医院业务收入收据发票打印

procedure Tfrm_zysf_print_service.print_ywsrsjdy(v_mc,v_sjqzh,v_jzrq,v_dyrq,v_tfsjh,v_cwsj,v_sfydm,v_ssje,v_dxje,v_cd:string);
begin
   if tsywsrsjBb=nil then
   begin
     tsywsrsjBb:=TCusBb.Create;
     tsywsrsjBb.GetBbByDM(tsywsrsjBb,tsywsrsjdm);
     grid_ywsrsj.LoadFromStr(tsywsrsjBb.nr);
   end ;
   try
     if Assigned(grid_ywsrsj.ParameterByName('科室'))  then
     grid_ywsrsj.ParameterByName('科室').Value:=v_mc;
     if Assigned(grid_ywsrsj.ParameterByName('全部收据'))  then
     grid_ywsrsj.ParameterByName('全部收据').Value:=v_sjqzh;
     if Assigned(grid_ywsrsj.ParameterByName('退费收据'))  then
     grid_ywsrsj.ParameterByName('退费收据').Value:=v_tfsjh;
     if Assigned(grid_ywsrsj.ParameterByName('打印日期'))  then
     grid_ywsrsj.ParameterByName('打印日期').Value:=v_dyrq;
     if Assigned(grid_ywsrsj.ParameterByName('结账日期'))  then
     grid_ywsrsj.ParameterByName('结账日期').Value:=v_jzrq;
     if Assigned(grid_ywsrsj.ParameterByName('实收金额'))  then
     grid_ywsrsj.ParameterByName('实收金额').Value:=v_ssje;
     if Assigned(grid_ywsrsj.ParameterByName('收费员'))  then
     grid_ywsrsj.ParameterByName('收费员').Value:=v_sfydm;
     if Assigned(grid_ywsrsj.ParameterByName('财务收据'))  then
     grid_ywsrsj.ParameterByName('财务收据').Value:=v_cwsj;
      if Assigned(grid_ywsrsj.ParameterByName('大写金额'))  then
     grid_ywsrsj.ParameterByName('大写金额').Value:=v_dxje;
     if Assigned(grid_ywsrsj.ParameterByName('重打'))  then
     grid_ywsrsj.ParameterByName('重打').Value:=v_cd;
   except
     Exit;
   end;
     grid_ywsrsj.PrintPreview(True);
end;


 // 荆门市掇刀人民医院 医嘱执行单打印
procedure Tfrm_zysf_print_service.print_yzzxddy(sp_jbxx: TADOStoredProc; sp_synr: TADOStoredProc; zxrq: string);
var
  i: integer;
begin
  yzzxddyBb := nil;
  if yzzxddyBb = nil then
  begin
    yzzxddyBb := TCusBb.Create;
    yzzxddyBb.GetBbByDM(yzzxddyBb, yzzxddydm);
    grdprprt_yzzxd.LoadFromStr(yzzxddyBb);
  end;
 if Assigned(grdprprt_yzzxd.ParameterByName('姓名'))  then
   grdprprt_yzzxd.ParameterByName('姓名').Value := '姓名:' + trim(sp_jbxx.FieldByName('brxm').AsString);
 if Assigned(grdprprt_yzzxd.ParameterByName('年龄'))  then
   grdprprt_yzzxd.ParameterByName('年龄').Value := '年龄:' + trim(sp_jbxx.FieldByName('brnl').AsString);
 if Assigned(grdprprt_yzzxd.ParameterByName('住院号'))  then
   grdprprt_yzzxd.ParameterByName('住院号').Value := '住院号:' + trim(sp_jbxx.FieldByName('tmh').AsString);
 if Assigned(grdprprt_yzzxd.ParameterByName('床号'))  then
   grdprprt_yzzxd.ParameterByName('床号').Value := '床号:' + trim(sp_jbxx.FieldByName('bch').AsString);
 if Assigned(grdprprt_yzzxd.ParameterByName('系统时间'))  then
   grdprprt_yzzxd.ParameterByName('系统时间').Value :=  zxrq;
 if Assigned(grdprprt_yzzxd.ParameterByName('科室名称'))  then
  grdprprt_yzzxd.ParameterByName('科室名称').Value :=  pub_ksmc;
  grdprprt_yzzxd.DataSet := sp_synr ;
  grdprprt_yzzxd.Print(False);
end;


 {全州检验结果打印}
procedure Tfrm_zysf_print_service.printjyjgdy(sp_jyjg:TADOQuery;dy:Boolean);
var  yjxmyy, jyxm:string;
begin
  if jyxmdyBb=nil then
  begin
    jyxmdyBb:=TCusBb.Create;
    jyxmdyBb.GetBbByDM(jyxmdyBb,jyxmdydm);
    jyxmdy.LoadFromStr(jyxmdyBb.nr);
  end ;
  try
    yjxmyy:=sp_jyjg.FieldByName('jyfzbh').Value;
    jyxm:=copy(yjxmyy,Pos('[',yjxmyy),Length(yjxmyy));
    jyxm:=StringReplace (jyxm, '[', '', [rfReplaceAll, rfIgnoreCase]);
    jyxm:=StringReplace (jyxm, ']', '  ', [rfReplaceAll, rfIgnoreCase]);
    if Assigned(jyxmdy.ParameterByName('jyjgxm'))  then
     jyxmdy.ParameterByName('jyjgxm').Value:=jyxm;
     if Assigned(jyxmdy.ParameterByName('brxm'))  then
     jyxmdy.ParameterByName('brxm').Value:=sp_jyjg.FieldByName('brxm').Value;
     if Assigned(jyxmdy.ParameterByName('yb'))  then
     jyxmdy.ParameterByName('yb').Value:=sp_jyjg.FieldByName('yb').Value;
     if Assigned(jyxmdy.ParameterByName('sj'))  then
     jyxmdy.ParameterByName('sj').Value:=sp_jyjg.FieldByName('cysj').Value;
     if Assigned(jyxmdy.ParameterByName('tmh'))  then
     jyxmdy.ParameterByName('tmh').Value:=sp_jyjg.FieldByName('tmh').Value;
     if Assigned(jyxmdy.ParameterByName('nl'))  then
     jyxmdy.ParameterByName('nl').Value:=sp_jyjg.FieldByName('brnl').Value;
     if Assigned(jyxmdy.ParameterByName('xb'))  then
     jyxmdy.ParameterByName('xb').Value:=sp_jyjg.FieldByName('brxb').Value;
  except
   exit;
  end;
  jyxmdy.DataSet:=sp_jyjg;
  if dy then
  begin
    jyxmdy.PrintPreview(false);
  end else
  begin
     jyxmdy.Print(false);
  end;

end;

{井研人民医院护士工作站长期注射单打印}
procedure Tfrm_zysf_print_service.print_cqzsddy(sp_dryz:TADOStoredProc;yymc,brxm,bch,brxb,brnl,nf:string);
begin
   if cqzsddyBb=nil then
   begin
     cqzsddyBb:=TCusBb.Create;
     cqzsddyBb.GetBbByDM(cqzsddyBb,cqzsddydm);
     cqzsddy.LoadFromStr(cqzsddyBb.nr);

   end ;
     try
     if Assigned(cqzsddy.ParameterByName('yymc'))  then
     cqzsddy.ParameterByName('yymc').Value:=yymc;
     if Assigned(cqzsddy.ParameterByName('brxm'))  then
     cqzsddy.ParameterByName('brxm').Value:=brxm;
     if Assigned(cqzsddy.ParameterByName('brnl'))  then
     cqzsddy.ParameterByName('brnl').Value:=brnl;
     if Assigned(cqzsddy.ParameterByName('brxb'))  then
     cqzsddy.ParameterByName('brxb').Value:=brxb;
     if Assigned(cqzsddy.ParameterByName('bch'))  then
     cqzsddy.ParameterByName('bch').Value:=bch;
     if Assigned(cqzsddy.ParameterByName('nf'))  then
     cqzsddy.ParameterByName('nf').Value:=nf;
     cqzsddy.DataSet:=sp_dryz;
   except
     Exit;
   end;
     cqzsddy.PrintPreview(True);
end;
{井研人民医院护士工作站临时注射单打印  }
procedure Tfrm_zysf_print_service.print_lszsddy(sp_dryz:TADOStoredProc;yymc,brxm,bch,brxb,brnl,nf:string);
begin
   if lszsddyBb=nil then
   begin
     lszsddyBb:=TCusBb.Create;
     lszsddyBb.GetBbByDM(lszsddyBb,lszsddydm);
     lszsddy.LoadFromStr(lszsddyBb.nr);
   end;
     try
     if Assigned(lszsddy.ParameterByName('yymc'))  then
     lszsddy.ParameterByName('yymc').Value:=yymc;
     if Assigned(lszsddy.ParameterByName('brxm'))  then
     lszsddy.ParameterByName('brxm').Value:=brxm;
     if Assigned(lszsddy.ParameterByName('brnl'))  then
     lszsddy.ParameterByName('brnl').Value:=brnl;
     if Assigned(lszsddy.ParameterByName('brxb'))  then
     lszsddy.ParameterByName('brxb').Value:=brxb;
     if Assigned(lszsddy.ParameterByName('bch'))  then
     lszsddy.ParameterByName('bch').Value:=bch;
     if Assigned(lszsddy.ParameterByName('nf'))  then
     lszsddy.ParameterByName('nf').Value:=nf;
     lszsddy.DataSet:=sp_dryz;
   except
     Exit;
   end;
     lszsddy.PrintPreview(True);
end;

{----宁安 药剂科管理}
procedure Tfrm_zysf_print_service.proc_print_tjtj(sp_cktj:TADOStoredProc;sjstr:string);
begin
  if nayyyptjtjbb=nil then
  begin
    nayyyptjtjbb:=TCusBb.Create;
    nayyyptjtjbb.GetBbByDM(nayyyptjtjbb,nayyyptjtjdm);
    nayptjtjdy.LoadFromStr(nayyyptjtjbb.nr);

  end;
    nayptjtjdy.dataset:= sp_cktj;
    if Assigned(nayptjtjdy.ParameterByName('sjstr'))  then
      nayptjtjdy.ParameterByName('sjstr').Value:=sjstr;
    nayptjtjdy.PrintPreview(true);
end;
{----------------井研人民医院护士工作站口服药执行单选择打印---------------}
procedure Tfrm_zysf_print_service.print_kfyzxddy(sp_dryz:TADOStoredProc;yymc,brxm,bch,brxb,brnl,nf:string);
begin
 if kfyzxddyBb=nil then
 begin
   kfyzxddyBb:=TCusBb.Create;
   kfyzxddyBb.GetBbByDM(kfyzxddyBb,kfyzxddydm);
   kfyzxddy.LoadFromStr(kfyzxddyBb.nr);
 end;
     try
     if Assigned(kfyzxddy.ParameterByName('yymc'))  then
     kfyzxddy.ParameterByName('yymc').Value:=yymc;
     if Assigned(kfyzxddy.ParameterByName('brxm'))  then
     kfyzxddy.ParameterByName('brxm').Value:=brxm;
     if Assigned(kfyzxddy.ParameterByName('brnl'))  then
     kfyzxddy.ParameterByName('brnl').Value:=brnl;
     if Assigned(kfyzxddy.ParameterByName('brxb'))  then
     kfyzxddy.ParameterByName('brxb').Value:=brxb;
     if Assigned(kfyzxddy.ParameterByName('bch'))  then
     kfyzxddy.ParameterByName('bch').Value:=bch;
     if Assigned(kfyzxddy.ParameterByName('nf'))  then
     kfyzxddy.ParameterByName('nf').Value:=nf;
     kfyzxddy.DataSet:=sp_dryz;
   except
     Exit;
   end;
     kfyzxddy.PrintPreview(True);
end;




 //白河  护士工作站 批量处方明细打印
 procedure Tfrm_zysf_print_service.print_hsgzz_plcfmxdy(qry_cfmx:TADOStoredProc;tmh,brxm,brnl,brxb,bch,ksmc,zgysmc,cfbh,pldh:string);
 begin
   if pltzcfmxBb=nil then
   begin
      pltzcfmxBb:=TCusBb.Create;
      pltzcfmxBb.GetBbByDM(pltzcfmxBb,pltzcfmxdm);
      pl_cfmxdy.LoadFromStr(pltzcfmxBb.nr);
   end;
   try
     if Assigned(pl_cfmxdy.ParameterByName('tmh'))  then
     pl_cfmxdy.ParameterByName('tmh').Value:=tmh;
     if Assigned(pl_cfmxdy.ParameterByName('brxm'))  then
     pl_cfmxdy.ParameterByName('brxm').Value:=brxm;
     if Assigned(pl_cfmxdy.ParameterByName('brnl'))  then
     pl_cfmxdy.ParameterByName('brnl').Value:=brnl;
     if Assigned(pl_cfmxdy.ParameterByName('brxb'))  then
     pl_cfmxdy.ParameterByName('brxb').Value:=brxb;
     if Assigned(pl_cfmxdy.ParameterByName('bch'))  then
     pl_cfmxdy.ParameterByName('bch').Value:=bch;
     if Assigned(pl_cfmxdy.ParameterByName('ksmc'))  then
     pl_cfmxdy.ParameterByName('ksmc').Value:=ksmc;
     if Assigned(pl_cfmxdy.ParameterByName('zgysmc'))  then
     pl_cfmxdy.ParameterByName('zgysmc').Value:=zgysmc;
     if Assigned(pl_cfmxdy.ParameterByName('cfbh'))  then
     pl_cfmxdy.ParameterByName('cfbh').Value:=cfbh;
     if Assigned(pl_cfmxdy.ParameterByName('dyrq'))  then
     pl_cfmxdy.ParameterByName('dyrq').Value:=formatdatetime('yyyy-MM-dd',frm_func.curr_date);
     if Assigned(pl_cfmxdy.ParameterByName('pldh'))  then
     pl_cfmxdy.ParameterByName('pldh').Value:=pldh;
     pl_cfmxdy.DataSet:=qry_cfmx;
   except
     Exit;
   end;
     pl_cfmxdy.PrintPreview(True);



 end;
{$R *.dfm}
//四会中医院出院结算费用明细打印
 procedure Tfrm_zysf_print_service.Printcybrjsmx_dy(sp_cyjsrb:TADOStoredProc;sbgltj,tjrq:string);
 begin
    if cybxjsmxBb = nil then
  begin
    cybxjsmxBb := TCusBb.Create;
    cybxjsmxBb.GetBbByDM(cybxjsmxBb, cybxjsmxdm);
    grp_cybrjsmx.LoadFromStr(cybxjsmxBb.nr);
  end;
  
  if Assigned(grp_cybrjsmx.ParameterByName('sbgltj')) then
    grp_cybrjsmx.ParameterByName('sbgltj').Value :=sbgltj ;
  if Assigned(grp_cybrjsmx.ParameterByName('tjrq'))  then
    grp_cybrjsmx.ParameterByName('tjrq').Value :=tjrq;

  grp_cybrjsmx.DataSet:= sp_cyjsrb;
  res := frm_func.SetCReportXtcs(grp_cybrjsmx);

  if res <> '1' then
  begin
    ShowMessage(res);
  end
  else
  begin
    grp_cybrjsmx.PrintPreview(True);
  end;
 end;

 //四会中医院在院病人收据附件打印
procedure Tfrm_zysf_print_service.Printzxbrsjfj_dy(qry_sjfj:TADOQuery);
begin
  if zxbrsjfjBb = nil then
  begin
    zxbrsjfjBb := TCusBb.Create;
    zxbrsjfjBb.GetBbByDM(zxbrsjfjBb, zxbrsjfjdm);
    gp_zybrsjfjdy.LoadFromStr(zxbrsjfjBb.nr);
  end;

  gp_zybrsjfjdy.DataSet:= qry_sjfj;
  res := frm_func.SetCReportXtcs(gp_zybrsjfjdy);
  
  if res <> '1' then
  begin
    ShowMessage(res);
  end
  else
  begin
    gp_zybrsjfjdy.PrintPreview(True);
  end;
end;

//四会中医院操作员预交明细打印
 procedure Tfrm_zysf_print_service.Printczyyjmx_dy(sp_czyyjmx:TADOStoredProc);
begin
  if czyyjmxBb = nil then
  begin
    czyyjmxBb := TCusBb.Create;
    czyyjmxBb.GetBbByDM(czyyjmxBb, czyyjmxdm);
    gpczyyjmx_dy.LoadFromStr(czyyjmxBb.nr);
  end;

  gpczyyjmx_dy.DataSet:= sp_czyyjmx;
  res := frm_func.SetCReportXtcs(gpczyyjmx_dy);

  if res <> '1' then
  begin
    ShowMessage(res);
  end
  else
  begin
    gpczyyjmx_dy.PrintPreview(True);
  end;
end;

{$REGION 'TGridppReport'}

function TGridppReport.LoadFromStr(const Data: TCusBb): WordBool;
begin
  Fc_bbdm := data.lbdm;
  result := inherited LoadFromStr(Data.nr);
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

//德阳输液单报表
procedure Tfrm_zysf_print_service.dysyddy(sp_zxjl_cq_dy,sp_jbxx : TADOStoredProc; qry_pub:TADOQuery;asyjhTitle:string);
  begin
    if  dysydBb  = nil then
  begin
    dysydBb := TCusBb.Create;
    dysydBb.GetBbByDM(dysydBb, dysydBbdm);
    gp_syddy.LoadFromStr(dysydBb.nr);
  end;
  try

   if Assigned(gp_syddy.ParameterByName('sy_mc')) then
    gp_syddy.ParameterByName('sy_mc').Value :=  pub_yymc + asyjhTitle;
   if Assigned(gp_syddy.ParameterByName('sy_bch'))  then
    gp_syddy.ParameterByName('sy_bch').Value :=Trim(DM_data.qry_pub.FieldByName('yybch').asstring);
   if Assigned(gp_syddy.ParameterByName('sy_brxm'))  then
    gp_syddy.ParameterByName('sy_brxm').Value :=sp_jbxx.fieldbyname('brxm').asstring;
   if Assigned(gp_syddy.ParameterByName('sy_brxb'))  then
    gp_syddy.ParameterByName('sy_brxb').Value :=sp_jbxx.fieldbyname('brxb').asstring;
   if Assigned(gp_syddy.ParameterByName('sy_brnl'))  then
    gp_syddy.ParameterByName('sy_brnl').Value :=sp_jbxx.fieldbyname('brnl').asstring;
   if Assigned(gp_syddy.ParameterByName('sy_year'))  then
    gp_syddy.ParameterByName('sy_year').Value :=FormatDateTime('yyyy', frm_func.curr_date) + '年';
   if Assigned(gp_syddy.ParameterByName('sy_ksrq'))  then
    gp_syddy.ParameterByName('sy_ksrq').Value :=sp_zxjl_cq_dy.fieldbyname('ksrq').asstring;
   if Assigned(gp_syddy.ParameterByName('sy_ysmc'))  then
    gp_syddy.ParameterByName('sy_ysmc').Value :=sp_zxjl_cq_dy.FieldByName('kdysmc').asstring;
   if Assigned(gp_syddy.ParameterByName('sy_ypyf'))  then
    gp_syddy.ParameterByName('sy_ypyf').Value :=trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring);
   if Assigned(gp_syddy.ParameterByName('sy_xmmc'))  then
    gp_syddy.ParameterByName('sy_xmmc').Value :=sp_zxjl_cq_dy.FieldByName('xmmc').asstring;
   if Assigned(gp_syddy.ParameterByName('sy_tmh'))  then
    gp_syddy.ParameterByName('sy_tmh').Value :=sp_jbxx.fieldbyname('tmh').asstring;

  except on e: Exception do
      ShowMessage(e.Message);
  end;

  try
    gp_syddy.DataSet := sp_jbxx;
    gp_syddy.DataSet := sp_zxjl_cq_dy;
  except on e: Exception do
      ShowMessage(e.Message);
  end;
  res := frm_func.SetCReportXtcs(gp_syddy);
  if res <> '1' then
  begin
    ShowMessage(res);
  end
  else
  begin
      gp_syddy.PrintPreview(true)
  end;


  end;


procedure Tfrm_zysf_print_service.proc_printfpck(qry_ck: Tadoquery);
begin
  if fpckBb = nil then
  begin
    fpckBb := TCusBb.Create;
     if pub_yydm = '0271' then
      fpckBb.GetBbByDM(fpckBb, fpckdm_dd) //掇刀医院 报表使用 089899
    else
    fpckBb.GetBbByDM(fpckBb, fpckdm);
    frxrprt_fpck.LoadFromStr(fpckBb);
  end;
  frxrprt_fpck.DataSet:= qry_ck;
  res := frm_func.SetCReportXtcs(frxrprt_fpck);
  if res <> '1' then
  begin
    ShowMessage(res);
  end
  else
  begin
    frxrprt_fpck.Print(False);
  end;
end;

procedure Tfrm_zysf_print_service.proc_printfprk(qry_rk: Tadoquery);
begin
  if fprkBb = nil then
  begin
    fprkBb := TCusBb.Create;
    fprkBb.GetBbByDM(fprkBb, fprkdm);
    frxrprt_fprk.LoadFromStr(fprkBb);
  end;
  frxrprt_fprk.DataSet := qry_rk;
  res := frm_func.SetCReportXtcs(frxrprt_fprk);
  if res <> '1' then
  begin
    ShowMessage(res);
  end
  else
  begin
    frxrprt_fprk.Print(False);
  end;
end;

procedure Tfrm_zysf_print_service.proc_printfprk_preview(qry_rk: Tadoquery);
begin
  if fprkBb = nil then
  begin
    fprkBb := TCusBb.Create;
    fprkBb.GetBbByDM(fprkBb, fprkdm);
    frxrprt_fprk.LoadFromStr(fprkBb);
  end;
  frxrprt_fprk.DataSet := qry_rk;
  res := frm_func.SetCReportXtcs(frxrprt_fprk);
  if res <> '1' then
  begin
    ShowMessage(res);
  end
  else
  begin
    frxrprt_fprk.PrintPreview(True);
  end;
end;

procedure Tfrm_zysf_print_service.proc_printfpsyqk(qry_sy: Tadoquery);
begin
  if fpsyqkbb = nil then
  begin
    fpsyqkbb := TCusBb.Create;
    fpsyqkbb.GetBbByDM(fpsyqkbb, fpsyqkdm);
    frxrprt_fpsyqk.LoadFromStr(fpsyqkbb);
  end;
  frxrprt_fpsyqk.DataSet := qry_sy;
  res := frm_func.SetCReportXtcs(frxrprt_fpsyqk);
  if res <> '1' then
  begin
    ShowMessage(res);
  end
  else
  begin
    frxrprt_fpsyqk.Print(False);
  end;
end;

function Tfrm_zysf_print_service.Printsyjhd2(sp_synr: TADOStoredProc; rq: string): string;
var
  i: integer;
  cData :TCustomADODataSet;
begin
//  if syjhdbb = nil then
  begin
    cData := TCustomADODataSet.Create(nil);
    cData.Recordset := sp_synr.NextRecordset(I);
    syjhdbb := TCusBb.Create;
    syjhdbb.GetBbByDM(syjhdbb, cData.FieldByName('zdybbdm').AsString);
    gp_syjhd.LoadFromStr(syjhdbb);
    cData.Free;
  end;
  res := frm_func.SetCReportXtcs(gp_syjhd);
  gp_syjhd.DataSet := sp_synr;
  if res <> '1' then
  begin
    ShowMessage(res);
  end
  else
  begin
    if (gp_syjhd.Printer.PrinterName <> Printer.Printers[v_PrinterIndex_new]) and (v_IsPrinterJoin) then
    begin
      gp_syjhd.Printer.PrinterName := Printer.Printers[v_PrinterIndex_new];
    end;
    gp_syjhd.Print(False);

    //GridppReportYymx.Print( false );
  end;
  if (gp_syjhd.Printer.PrinterName <> Printer.Printers[v_PrinterIndex_old]) and (v_IsPrinterJoin) then
  begin
    gp_syjhd.Printer.PrinterName := Printer.Printers[v_PrinterIndex_old];
  end;

end;

procedure Tfrm_zysf_print_service.proc_printtcqczjm(_tmh, _lb: string);
var
  i: Integer;
begin
  //创建报表对象
  if tcqczjmbb = nil then
  begin
    tcqczjmbb := TCusBb.Create;
    tcqczjmbb.GetBbByDM(tcqczjmbb, tcqczjmdm);
    gp_jlfyjstzd.LoadFromStr(tcqczjmbb);
  end;

  gp_jlfyjstzd.ParameterByName('类别').Value := _lb;
  DM_data.qry_pub.Close;
  DM_data.qry_pub.SQL.Text := 'select * from sbjk_nh_ylfyjstzd where TMH=' + #39 + _tmh + #39;
  DM_data.qry_pub.Open;
  gp_jlfyjstzd.DataSet := DM_data.qry_pub;
  res := frm_func.SetCReportXtcs(gp_jlfyjstzd);
  if res <> '1' then
  begin
    ShowMessage(res);
  end
  else
  begin
    gp_jlfyjstzd.Print(False);
  end;
end;

procedure Tfrm_zysf_print_service.proc_printtcqxnh(_tmh, _lb: string);
var
  i: Integer;
begin
  //创建报表对象
  if tcqxnhBb = nil then
  begin
    tcqxnhBb := TCusBb.Create;
    tcqxnhBb.GetBbByDM(tcqxnhBb, tcqxnhdm);
    gp_tcqxnh.LoadFromStr(tcqxnhBb);
  end;

  gp_tcqxnh.ParameterByName('类别').Value := _lb;
  DM_data.qry_pub.Close;
  DM_data.qry_pub.SQL.Text := 'select * from sbjk_nh_zybclr where TMH=' + #39 + _tmh + #39;
  DM_data.qry_pub.Open;
  gp_tcqxnh.DataSet := DM_data.qry_pub;
  res := frm_func.SetCReportXtcs(gp_tcqxnh);
  if res <> '1' then
  begin
    ShowMessage(res);
  end
  else
  begin
    gp_tcqxnh.Print(False);
  end;
end;

procedure Tfrm_zysf_print_service.printzyzyfyd(sp_zb, sp_mx: TCustomADODataSet; _ylbz: boolean);
begin
  //创建报表对象
  if zyzyfydBb = nil then
  begin
    zyzyfydBb := TCusBb.Create;
    zyzyfydBb.GetBbByDM(zyzyfydBb, zyzyfyddm);
    gp_zyzyfyd.LoadFromStr(zyzyfydBb.nr);
  end;
  try
    gp_zyzyfyd.ParameterByName('lyxh').Value := 0;
    gp_zyzyfyd.ParameterByName('tmh').Value := Trim(sp_zb.FieldByName('tmh').AsString);
    gp_zyzyfyd.ParameterByName('cfbh').Value := Trim(sp_zb.FieldByName('cfbh').AsString);
    gp_zyzyfyd.ParameterByName('brxm').Value := Trim(sp_zb.FieldByName('brxm').AsString);
    gp_zyzyfyd.ParameterByName('brxb').Value := Trim(sp_zb.FieldByName('brxb').AsString);
    gp_zyzyfyd.ParameterByName('brnl').Value := Trim(sp_zb.FieldByName('brnl').AsString);
    gp_zyzyfyd.ParameterByName('brdz').Value := '';
    gp_zyzyfyd.ParameterByName('ksmc').Value := Trim(sp_zb.FieldByName('ksmc').AsString);
    gp_zyzyfyd.ParameterByName('ysmc').Value := Trim(sp_zb.FieldByName('ysmc').AsString);
    gp_zyzyfyd.ParameterByName('yszd').Value := Trim(sp_zb.FieldByName('yszd').AsString);
    gp_zyzyfyd.ParameterByName('cflx').Value := Trim(sp_zb.FieldByName('cflx').AsString);
    gp_zyzyfyd.ParameterByName('bz').Value := Trim(sp_zb.FieldByName('bz').AsString);
    gp_zyzyfyd.ParameterByName('cfzje').Value := sp_zb.FieldByName('cfzje').AsFloat;
    gp_zyzyfyd.ParameterByName('sszje').Value := sp_zb.FieldByName('sszje').AsFloat;
    gp_zyzyfyd.ParameterByName('cfjl').Value := sp_zb.FieldByName('cfjl').AsInteger;
    gp_zyzyfyd.ParameterByName('ckdm').Value := 0;
    gp_zyzyfyd.ParameterByName('hjrq').Value := sp_zb.FieldByName('hjrq').AsDateTime;
    gp_zyzyfyd.ParameterByName('cwh').Value := Trim(sp_zb.FieldByName('cwh').AsString);
  except on e: Exception do
      ShowMessage(e.Message);
  end;

  try
    gp_zyzyfyd.DataSet := sp_mx;
  except on e: Exception do
      ShowMessage(e.Message);
  end;
  res := frm_func.SetCReportXtcs(gp_zyzyfyd);
  if res <> '1' then
  begin
    ShowMessage(res);
  end
  else
  begin
    if _ylbz then
      gp_zyzyfyd.PrintPreview(true)
    else
      gp_zyzyfyd.Print(False);
  end;
end;
//住院西药发药单
procedure Tfrm_zysf_print_service.printXyfplfy(adosp: TADOStoredProc);
var
  I:integer;
  Tmpbb : TCusBb;
  cData :TCustomADODataSet;
begin
  //创建报表对象
  cData := TCustomADODataSet.Create(nil);
  cData.Recordset := adosp.NextRecordset(I);
  Tmpbb := TCusBb.Create;
  Tmpbb.GetBbByDM(Tmpbb, cData.FieldByName('自定义报表代码').AsString);
  gp_xyfplfy.LoadFromStr(Tmpbb.nr);
  for I := 0 to cData.FieldCount - 1 do
  begin
      gp_xyfplfy.setParamVal(cData.Fields[i].FieldName,
        cData.FieldByName(cData.Fields[i].FieldName).Value);
  end;
  cData.Free;
  
  gp_xyfplfy.DataSet := adosp;
  res := frm_func.SetCReportXtcs(gp_xyfplfy);
  if res <> '1' then
  begin
    ShowMessage(res);
  end
  else
  begin
    gp_xyfplfy.PrintPreview(True);
  end;
end;

{-------------------------------------------------------------------------------
  过程名:    Tfrm_zysf_print_service.printddzycnjsbbdy
  作者:      yangshuai
  日期:      2017.09.06
  参数:      ajzrq:TDateTime;sp_maindata, sp_mxdata: TADOStoredProc;ylbz:Boolean
  返回值:    无
-------------------------------------------------------------------------------}
procedure Tfrm_zysf_print_service.printddzycnjsbbdy(ajzrq:TDateTime;sp_maindata, sp_mxdata: TADOStoredProc;ylbz:Boolean);
var
  _SubRep4: TGridppReport;
  reportHeader:IGRReportHeader;
  v_jzrq:string;
begin
  if zycnjsBb = nil then
  begin
    zycnjsBb := TCusBb.Create;
    zycnjsBb.GetBbByDM(zycnjsBb, zycnjsdm);
    gp_ddzycnjsbbdy.LoadFromStr(zycnjsBb.nr);
  end;
  try
//     gp_ddmzsfmxfpdy.setParamVal('结账日期1', ajzrq);
     gp_ddzycnjsbbdy.DataSet:=sp_maindata;
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
    _SubRep4 := TGridppReport.Create(nil);
    gp_ddzycnjsbbdy.ControlByName('zdybb_cx_zyjscnsfmx').AsSubReport.Report := _SubRep4.DefaultInterface;
    v_jzrq:=FormatDateTime('yyyy-mm-dd',ajzrq);
    _SubRep4.setParamVal('结账日期1', v_jzrq);
    _SubRep4.dataset := sp_mxdata;
    if (sp_mxdata=nil) or (sp_mxdata.RecordCount = 0)   then
    begin
//      reportHeader:=gp_ddzycnjsbbdy.ReportHeader[1];
//      reportHeader.Height:=0;
//      reportHeader.Visible:=false;
//      reportHeader:=gp_ddzycnjsbbdy.ReportHeader[2];
//      reportHeader.Height:=0;
//      reportHeader.Visible:=false;
      gp_ddzycnjsbbdy.ControlByName('zdybb_cx_zyjscnsfmx').AsSubReport.Visible := false;
    end
    else
    begin
//      reportHeader:=gp_ddzycnjsbbdy.ReportHeader[1];
//      reportHeader.Height:=1.6;
//      reportHeader:=gp_ddzycnjsbbdy.ReportHeader[2];
//      reportHeader.Height:=3;
//      reportHeader.Visible:=True;
      gp_ddzycnjsbbdy.ControlByName('zdybb_cx_zyjscnsfmx').AsSubReport.Visible := true;
    end;
  except
  end;

  res := frm_func.SetCReportXtcs(gp_ddzycnjsbbdy);
  if res <> '1' then
  begin
    ShowMessage(res);
  end
  else
  begin
    if ylbz then
    begin
      gp_ddzycnjsbbdy.PrintPreview(False);
    end
    else
    begin
      gp_ddzycnjsbbdy.Print(False);
    end;
  end;

end;


procedure Tfrm_zysf_print_service.printYJJMX(Inadoquer:TADOQuery;czy: string; startrq,
  endrq: string);
begin
  if yjjmxbb = nil then
  begin
    try
      yjjmxbb := TCusBb.Create;
      yjjmxbb.GetBbByDM(yjjmxbb,yjjmxdydm);
      gp_yjjmxdy.LoadFromStr(yjjmxbb.nr);
      gp_yjjmxdy.setParamVal('操作员',czy);
      gp_yjjmxdy.setParamVal('开始时间',startrq);
      gp_yjjmxdy.setParamVal('结束时间',endrq);
    except
      on e:Exception do
        ShowMessage(e.Message);
    end;
  end;
  gp_yjjmxdy.DataSet := Inadoquer;
  res := frm_func.SetCReportXtcs(gp_yjjmxdy);
  if res <> '1' then
  begin
    ShowMessage(res);
  end
  else
  begin
    gp_yjjmxdy.PrintPreview(true);
  end;
end;

//打印住院中药处方单
procedure Tfrm_zysf_print_service.printzycfd(Qry_zb: TADOQuery; sp_mx : TADOStoredProc);
begin
  //创建报表对象
  if zyzycfdybb = nil then
  begin
    zyzycfdybb := TCusBb.Create;
    zyzycfdybb.GetBbByDM(zyzycfdybb, zyzycfddm);
    frxrprt_zyzycfd.LoadFromStr(zyzycfdybb.nr);
  end;
  try
    frxrprt_zyzycfd.ParameterByName('ksmc').Value := Qry_zb.FieldByName('ksmc').AsString;
    frxrprt_zyzycfd.ParameterByName('tmh').Value:=Qry_zb.FieldByName('tmh').AsString;
    frxrprt_zyzycfd.ParameterByName('brxm').Value:=Qry_zb.FieldByName('brxm').AsString;
    frxrprt_zyzycfd.ParameterByName('brxb').Value:=Qry_zb.FieldByName('brxb').AsString;
    frxrprt_zyzycfd.ParameterByName('brnl').Value:=Qry_zb.FieldByName('brnl').AsString;
    frxrprt_zyzycfd.ParameterByName('hjrq').Value:=Qry_zb.FieldByName('hjrq').AsString;
    frxrprt_zyzycfd.ParameterByName('ysmc').Value:=Qry_zb.FieldByName('mc').AsString;
    frxrprt_zyzycfd.ParameterByName('bz').Value:=Qry_zb.FieldByName('bz').AsString;
    frxrprt_zyzycfd.ParameterByName('yszd').Value:=Qry_zb.FieldByName('ryzd').AsString;
    frxrprt_zyzycfd.ParameterByName('sszje').Value:=Qry_zb.FieldByName('cfzje').AsString;

  except on e: Exception do
    ShowMessage(e.Message);
  end;
  try
    sp_mx.RecordCount;
    frxrprt_zyzycfd.DataSet := sp_mx;
  except on e: Exception do
    ShowMessage(e.Message);
  end;
  res := frm_func.SetCReportXtcs(frxrprt_zyzycfd);
  if res <> '1' then
  begin
    ShowMessage(res);
  end
  else
  begin
    frxrprt_zyzycfd.Print(False);
  end;
end;

//四会中医院中药批量打印
procedure Tfrm_zysf_print_service.sh_zycfpldy(Qry_zb: TADOQuery; sp_mx : TADOStoredProc);
begin
  //创建报表对象
  if zyzycfdybb = nil then
  begin
    zyzyfydBb := TCusBb.Create;         //zyzyfydBb, zyzyfyddm
    zyzyfydBb.GetBbByDM(zyzyfydBb, zyzyfyddm);
    gp_shzypldy.LoadFromStr(zyzyfydBb.nr);
  end;
  try
    gp_shzypldy.ParameterByName('ksmc').Value := Qry_zb.FieldByName('ksmc').AsString;
    gp_shzypldy.ParameterByName('tmh').Value:=Qry_zb.FieldByName('tmh').AsString;
    gp_shzypldy.ParameterByName('brxm').Value:=Qry_zb.FieldByName('brxm').AsString;
    gp_shzypldy.ParameterByName('brxb').Value:=Qry_zb.FieldByName('brxb').AsString;
    gp_shzypldy.ParameterByName('brnl').Value:=Qry_zb.FieldByName('brnl').AsString;
    gp_shzypldy.ParameterByName('hjrq').Value:=Qry_zb.FieldByName('hjrq').AsString;
    gp_shzypldy.ParameterByName('ysmc').Value:=Qry_zb.FieldByName('mc').AsString;
    gp_shzypldy.ParameterByName('bz').Value:=Qry_zb.FieldByName('bz').AsString;
    gp_shzypldy.ParameterByName('yszd').Value:=Qry_zb.FieldByName('ryzd').AsString;
    gp_shzypldy.ParameterByName('sszje').Value:=Qry_zb.FieldByName('cfzje').AsString;

  except on e: Exception do
    ShowMessage(e.Message);
  end;
  try
    sp_mx.RecordCount;
    gp_shzypldy.DataSet := sp_mx;
  except on e: Exception do
    ShowMessage(e.Message);
  end;
  res := frm_func.SetCReportXtcs(gp_shzypldy);
  if res <> '1' then
  begin
    ShowMessage(res);
  end
  else
  begin
    gp_shzypldy.Print(False);
  end;
end;


procedure Tfrm_zysf_print_service.proc_pring_zyxycf(sp_zb, sp_mx: TCustomADODataSet);
var
  i: Integer;
begin
  //创建报表对象
  if zyxycfBb = nil then
  begin
    zyxycfBb := TCusBb.Create;
    zyxycfBb.GetBbByDM(zyxycfBb, zyxycfdm);
    gp_zyxycfd.LoadFromStr(zyxycfBb);
  end;

//  for I := 0 to sp_zb.FieldCount - 1 do
//  begin
//    try
//      gp_zyxycfd.ParameterByName(sp_zb.Fields[i].FieldName).Value :=
//        sp_zb.FieldByName(sp_zb.Fields[i].FieldName).Value;
//    except on e: Exception do
//        ShowMessage(e.Message);
//    end;
//  end;
  try
    gp_zyxycfd.ParameterByName('tmh').Value := sp_zb.FieldByName('tmh').Value;
    gp_zyxycfd.ParameterByName('brxm').Value := sp_zb.FieldByName('brxm').Value;
    gp_zyxycfd.ParameterByName('cfbh').Value := sp_zb.FieldByName('cfbh').Value;
    gp_zyxycfd.ParameterByName('brxb').Value := sp_zb.FieldByName('brxb').Value;
    gp_zyxycfd.ParameterByName('brnl').Value := sp_zb.FieldByName('brnl').Value;
    gp_zyxycfd.ParameterByName('fylbmc').Value := sp_zb.FieldByName('fylbmc').Value;
    gp_zyxycfd.ParameterByName('ksmc').Value := sp_zb.FieldByName('ksmc').Value;
    gp_zyxycfd.ParameterByName('cfzje').Value := sp_zb.FieldByName('cfzje').Value;
    gp_zyxycfd.ParameterByName('ryzd').Value := sp_zb.FieldByName('ryzd').Value;
    gp_zyxycfd.ParameterByName('ysmc').Value := sp_zb.FieldByName('ysmc').Value;
    gp_zyxycfd.ParameterByName('当前操作员姓名').Value := pub_czyxm;
    gp_zyxycfd.ParameterByName('系统时间').Value := DateTimeToStr(Now);
  except on e:Exception do
    ShowMessage(e.Message);
  end;

  try
    gp_zyxycfd.DataSet := sp_mx;
  except on e: Exception do
      ShowMessage(e.Message);
  end;
  res := frm_func.SetCReportXtcs(gp_zyxycfd);
  if res <> '1' then
  begin
    ShowMessage(res);
  end
  else
  begin
    if pub_yydm='0239' then  //此医院需要预览
    begin
      gp_zyxycfd.PrintPreview(False);
    end
    else
    begin
      gp_zyxycfd.Print(False);
    end;
  end;
end;


procedure Tfrm_zysf_print_service.printzyzycfdymxd(qry_zb:TADOQuery;sp_mx: TADOStoredProc);
begin    //发药明细打印
 if zyzycfmxdy = nil then
 begin
   zyzycfmxdy :=TCusBb.Create;
   zyzycfmxdy.GetBbByDM(zyzycfmxdy,zyzycfmx);
   gp_zyzycfmxdy.LoadFromStr(zyzycfmxdy.nr);
 end;
 try
    gp_zyzycfmxdy.ParameterByName('brxm').Value := Qry_zb.FieldByName('brxm').AsString;
    gp_zyzycfmxdy.ParameterByName('brnl').Value:=Qry_zb.FieldByName('brnl').AsString;
    gp_zyzycfmxdy.ParameterByName('bch').Value:=Qry_zb.FieldByName('bch').AsString;
    gp_zyzycfmxdy.ParameterByName('brxb').Value:=Qry_zb.FieldByName('brxb').AsString;
    gp_zyzycfmxdy.ParameterByName('ksmc').Value:=Qry_zb.FieldByName('ksmc').AsString;
    gp_zyzycfmxdy.ParameterByName('cfbh').Value:=Qry_zb.FieldByName('cfbh').AsString;
    gp_zyzycfmxdy.ParameterByName('dyrq').Value:=formatdatetime('yyyy-MM-dd',frm_func.curr_date);
    gp_zyzycfmxdy.ParameterByName('pldh').Value:=Qry_zb.FieldByName('pldh').AsString;
    gp_zyzycfmxdy.ParameterByName('cfjl').Value:=Qry_zb.FieldByName('cfjl').AsString;

 except on e: Exception do
      ShowMessage(e.Message);

 end;
 try
    gp_zyzycfmxdy.DataSet := sp_mx;
  except on e: Exception do
      ShowMessage(e.Message);
  end;
  res := frm_func.SetCReportXtcs(gp_zyzycfmxdy);
  if res <> '1' then
  begin
    ShowMessage(res);
  end
  else
  begin
    gp_zyzycfmxdy.Print(False);
  end;

end;

procedure Tfrm_zysf_print_service.proc_pring_zyzyjyd(sp_cx: TADOStoredProc);
begin
  //创建报表对象
  if zyzyjydbb = nil then
  begin
    zyzyjydbb := TCusBb.Create;
    zyzyjydbb.GetBbByDM(zyzyjydbb, zyzyjyddm);
    frxrprt_zyzyjyd.LoadFromStr(zyzyjydbb.nr);
  end;

  try
    frxrprt_zyzyjyd.DataSet := sp_cx;
  except on e: Exception do
    ShowMessage(e.Message);
  end;
  res := frm_func.SetCReportXtcs(frxrprt_zyzyjyd);
  if res <> '1' then
  begin
    ShowMessage(res);
  end
  else
  begin
    if pub_yydm='0239' then  //此医院需要预览
    begin
      frxrprt_zyzyjyd.PrintPreview(False);
    end
    else
    begin
      frxrprt_zyzyjyd.Print(False);
    end;
  end;
end;






//预交收据打印方法

procedure Tfrm_zysf_print_service.proc_printyjsj(zy_tmh, zy_brxm, zy_brxb,
zy_ksmc, zy_sjh, zy_bch, yjfs, brdz,zy_brnl: string; zy_yjje: real);
var
  i: Integer;
begin
{$IFNDEF DEBUG}
  if yjsjBb = nil then
{$ENDIF}
  begin
    yjsjBb := TCusBb.Create;
    yjsjBb.GetBbByDM(yjsjBb, yjsjdm);
    frxrprt_yjsj.LoadFromStr(yjsjBb);
  end;    
{$IFDEF Maks}
  frxrprt_yjsj.Printer.PrinterName := Frm_Dyjgl.ChangeDefaultPrinter(预交收据);
{$ELSE}
  ChangePrinter(0);
{$ENDIF}

  frxrprt_yjsj.setParamVal('收费日期', frm_func.curr_date);
  frxrprt_yjsj.setParamVal('收费员', trim(pub_czydm) + trim(pub_czyxm));
  frxrprt_yjsj.setParamVal('病人姓名', zy_brxm);
  frxrprt_yjsj.setParamVal('条码号', zy_tmh);
  frxrprt_yjsj.setParamVal('住院科室', zy_ksmc);
  frxrprt_yjsj.setParamVal('预交形式', yjfs);
  frxrprt_yjsj.setParamVal('预交金额', zy_yjje);
  frxrprt_yjsj.setParamVal('金额大写', NumberToMoney(zy_yjje));
  frxrprt_yjsj.setParamVal('收据编号', zy_sjh);
  frxrprt_yjsj.setParamVal('病床号', zy_bch);
  frxrprt_yjsj.setParamVal('性别', zy_brxb);
  frxrprt_yjsj.setParamVal('年龄',zy_brnl );
  frxrprt_yjsj.setParamVal('病人地址', brdz);

  res := frm_func.SetCReportXtcs(frxrprt_yjsj);
  if res <> '1' then
  begin
    ShowMessage(res);
  end
  else
  begin
{$IFDEF Maks}
{$ELSE}
    if (frxrprt_yjsj.Printer.PrinterName <> Printer.Printers[v_PrinterIndex_new]) and (v_IsPrinterJoin) then
    begin
      frxrprt_yjsj.Printer.PrinterName := Printer.Printers[v_PrinterIndex_new];
    end;
{$ENDIF}
    frxrprt_yjsj.Print(false);
  end;

{$IFDEF Maks}
  Frm_Dyjgl.RevertDefaultPrinter;
{$ELSE}
  if (frxrprt_yjsj.Printer.PrinterName <> Printer.Printers[v_PrinterIndex_old]) and (v_IsPrinterJoin) then
  begin
    frxrprt_yjsj.Printer.PrinterName := Printer.Printers[v_PrinterIndex_old];
  end;
  RevertPrinter;
{$ENDIF}
end;


procedure Tfrm_zysf_print_service.proc_printyjsj_bd(zy_tmh, zy_brxm, zy_brxb, zy_ksmc, zy_sjh, zy_bch, yjfs, brdz,dyczy: string; zy_yjje: real;dyrq:TDateTime;zy_brnl:string);
var
  i: Integer;
begin
{$IFNDEF DEBUG}
  if yjsjBb = nil then
{$ENDIF}
  begin
    yjsjBb := TCusBb.Create;
    yjsjBb.GetBbByDM(yjsjBb, yjsjdm);
    frxrprt_yjsj.LoadFromStr(yjsjBb);
  end;    
{$IFDEF Maks}
  frxrprt_yjsj.Printer.PrinterName := Frm_Dyjgl.ChangeDefaultPrinter(预交收据);
{$ELSE}
  ChangePrinter(0);
{$ENDIF}

  frxrprt_yjsj.setParamVal('收费日期', dyrq);
  frxrprt_yjsj.setParamVal('收费员', dyczy );
  frxrprt_yjsj.setParamVal('病人姓名', zy_brxm);
  frxrprt_yjsj.setParamVal('条码号', zy_tmh);
  frxrprt_yjsj.setParamVal('住院科室', zy_ksmc);
  frxrprt_yjsj.setParamVal('预交形式', yjfs);
  frxrprt_yjsj.setParamVal('预交金额', zy_yjje);
  frxrprt_yjsj.setParamVal('金额大写', NumberToMoney(zy_yjje));
  frxrprt_yjsj.setParamVal('收据编号', zy_sjh);
  frxrprt_yjsj.setParamVal('病床号', zy_bch);
  frxrprt_yjsj.setParamVal('性别', zy_brxb);
  frxrprt_yjsj.setParamVal('年龄', zy_brnl);
  frxrprt_yjsj.setParamVal('病床号', zy_bch);
  frxrprt_yjsj.setParamVal('病人地址', brdz);

  res := frm_func.SetCReportXtcs(frxrprt_yjsj);
  if res <> '1' then
  begin
    ShowMessage(res);
  end
  else
  begin
{$IFDEF Maks}
{$ELSE}
    if (frxrprt_yjsj.Printer.PrinterName <> Printer.Printers[v_PrinterIndex_new]) and (v_IsPrinterJoin) then
    begin
      frxrprt_yjsj.Printer.PrinterName := Printer.Printers[v_PrinterIndex_new];
    end;
{$ENDIF}
    frxrprt_yjsj.Print(False);
  end;

{$IFDEF Maks}
  Frm_Dyjgl.RevertDefaultPrinter;
{$ELSE}
  if (frxrprt_yjsj.Printer.PrinterName <> Printer.Printers[v_PrinterIndex_old]) and (v_IsPrinterJoin) then
  begin
    frxrprt_yjsj.Printer.PrinterName := Printer.Printers[v_PrinterIndex_old];
  end;
  RevertPrinter;
{$ENDIF}
end;

procedure Tfrm_zysf_print_service.RevertPrinter;
begin
  //还原原来默认打印机
  try
    if v_IsPrinterJoin then
      Proc_ChangePrinter(v_PrinterIndex_old, True);
  except
  end;
end;

procedure Tfrm_zysf_print_service.ChangePrinter(_index: integer);
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

//记费发票打印方法

function Tfrm_zysf_print_service.PrintZyjz(ph, czks, brxm, brxb, brnl, kdys, tmh, bch: string): string;
begin

  if jfsjBb = nil then
  begin
    jfsjBb := TCusBb.Create;
    jfsjBb.GetBbByDM(jfsjBb, jfsjdm);
    GridppReport_jfsj.LoadFromStr(jfsjBb);
  end;
{$IFDEF Maks}
  GridppReport_jfsj.Printer.PrinterName := Frm_Dyjgl.ChangeDefaultPrinter(记费明细);
{$ELSE}
  ChangePrinter(0);
{$ENDIF}
  sp_fymx_dy1.Close;
  sp_fymx_dy1.Parameters.ParamByName('@ph').value := ph;
  sp_fymx_dy1.Open;
  try
    GridppReport_jfsj.setParamVal('处置科室', czks);
    GridppReport_jfsj.setParamVal('病人姓名', brxm);
    GridppReport_jfsj.setParamVal('病人性别', brxb);
    GridppReport_jfsj.setParamVal('病人年龄', brnl);
    GridppReport_jfsj.setParamVal('开单医生', kdys);
    GridppReport_jfsj.setParamVal('收费员代码', pub_czydm);
    GridppReport_jfsj.setParamVal('收费员姓名', pub_czyxm);
    GridppReport_jfsj.setParamVal('收费日期', Frm_func.curr_date);
    GridppReport_jfsj.setParamVal('住院号', tmh);
    GridppReport_jfsj.setParamVal('病床号', bch);
  except on e: Exception do
      ShowMessage(e.Message);
  end;
  GridppReport_jfsj.DataSet := sp_fymx_dy1;
  res := frm_func.SetCReportXtcs(GridppReport_jfsj);
  if res <> '1' then
  begin
    ShowMessage(res);
  end
  else
  begin
{$IFDEF Maks}
{$ELSE}
    if GridppReport_jfsj.Printer.PrinterName <> Printer.Printers[v_PrinterIndex_new] then
    begin
      GridppReport_jfsj.Printer.PrinterName := Printer.Printers[v_PrinterIndex_new];
    end;
{$ENDIF}
    GridppReport_jfsj.Print(False);

  end;

{$IFDEF Maks}
  Frm_Dyjgl.RevertDefaultPrinter;
{$ELSE}
  if GridppReport_jfsj.Printer.PrinterName <> Printer.Printers[v_PrinterIndex_old] then
  begin
    GridppReport_jfsj.Printer.PrinterName := Printer.Printers[v_PrinterIndex_old];
  end;
  RevertPrinter;
{$ENDIF}
end;

//结算收据打印方法

procedure Tfrm_zysf_print_service.printjssj(zy_zyh, zy_sjbh, zy_brxm,
  zy_brxb, zy_brnl, zy_ksmc, zy_bch, zy_fylb, zy_tmh, zy_tchz: string; zy_zfy, zy_ytjejs, zy_ybjejs, zy_ytje, zy_ybje,
  zy_sbzfje, zy_sbtcje, sjyjze, yjze, zy_kzfje, yhje: real; zy_ryrq, zy_cyrq: Tdatetime;
  zy_csrq: string = '2007-12-12'; zy_brdz: string = ''; sp_tj_fydl1: TADOStoredProc = nil;
  qry_sbjsb: TADOQuery = nil; sp_sebrqk: TADOStoredProc = nil;zy_bah:string='';zy_nhfmbz:Real=0.00;zy_mzjzzh:string = '';azy_dbzfyje:real=0.00;azy_dbzmc:string='';azy_tcjesr:real=0.00;ts_jsfs:string='';azy_yhjesr:string='';a_zhzf:string='';a_jmjesr:real=0.00;a_dbjesr:Real=0.00);
var
  sl: Tstringlist;
  ts: TMemoryStream;
  cyrq, zyts: string;
  i: Integer;
var bgzf: Real;
  sbylzfy: Real;
   tc1,tc2 :string;
begin
 //台山中医院优惠项目查询
  if pub_yydm='0269' then
  begin
    qry_tc1.Close;
    qry_tc1.SQL.Text :='SELECT rtrim(stuff((select '',''+ rtrim(a.fylbmc)+cast(a.sbzf as varchar(18)) '+
                       'from zysf_sbjsb a ,zysf_cyjs b where a.zyh='''+trim(zy_zyh)+''' and a.sjbh=b.sjbh  '+
                       'AND a.yxbz=1 AND (a.fylb=''21'' OR a.fylb=''22'' OR a.fylb=''23'' )  '+
                       'for xml path('''')),1,1,'''')) yflb';
     qry_tc1.Open;
     if not qry_tc1.isEmpty then
     begin
       tc1 := qry_tc1.FieldByName('yflb').Value;
     end;

     qry_tc2.Close;
     qry_tc2.SQL.Text :='SELECT (''公务员报销''+cast(isnull(gwybxje,0.00)as varchar(18))+'',  ''+''补充医疗报销''+cast(isnull(bcylbxje,0.00)as  '+
                        'varchar(18))+'',  ''+''基金支付''+cast(isnull(jbylbxje,0.00)as varchar(18)) )yflb2  '+
                        'from sbjk_sbjs where  zyh='''+trim(zy_zyh)+'''  AND yxbz=1 ';
     qry_tc2.Open;
     if not qry_tc2.isEmpty then
     begin
       tc2 := qry_tc2.FieldByName('yflb2').Value;
     end;
   end;
  if not qry_kmdm.Active then
  begin
    qry_kmdm.Open;
  end;
  DM_data.qry_pub.close;
  DM_data.qry_pub.SQL.Text := 'select * from sbjk_sbjs where yxbz=1 and zyh=' + '''' +
    zy_zyh + '''';
  DM_data.qry_pub.Open;
  if not DM_data.qry_pub.IsEmpty then
    sbylzfy := DM_data.qry_pub.FieldByName('ylzfy').AsFloat
  else
    sbylzfy := 0;
//  if zy_zfy<sbylzfy then
//  begin
//    DM_data.qry_pub.close;
//    DM_data.qry_pub.SQL.Text:='select * from sbjk_sbjs where yxbz=1 and zyh='+''''+
//    zy_zyh+'''';
//    DM_data.qry_pub.Open;
//    if DM_data.qry_pub.IsEmpty then
//      bgzf:=zy_sbzfje
//    else
//    bgzf:=DM_data.qry_pub.FieldByName('ylzfy').AsFloat-
//          DM_data.qry_pub.FieldByName('tczf').AsFloat;
//    zy_ytjejs:=zy_ytjejs+zy_sbzfje-bgzf+DM_data.qry_pub.FieldByName('bcylbxje').AsFloat;
//    zy_ytje:=zy_ytje+zy_sbzfje-bgzf;
//    zy_sbtcje:= zy_zfy-bgzf;
//    zy_sbzfje:=bgzf;
//  end;
  fldxjeSw(zy_zfy);
  //  dm_data.sp_dysj.Active := false;
  //  dm_data.sp_dysj.parameters.ParamByName( '@zyh' ).value := zy_zyh;
  //  dm_data.sp_dysj.parameters.ParamByName( '@sjbh' ).value := zy_sjbh;
  //  dm_data.sp_dysj.open;

  if zy_cyrq < zy_ryrq then
  begin
    cyrq := '';
  end
  else
  begin
    cyrq := FormatDateTime('yyyy-mm-dd hh:mm:ss', zy_cyrq);
  end;
  //--------------------------------------------------------------
  FreeAndNil(jssjBb);
  //--------------------------------------------------------------
  if jssjBb = nil then
  begin
    jssjBb := TCusBb.Create;
    jssjBb.GetBbByDM(jssjBb, jssjdm);
    GridppReport_jssj.LoadFromStr(jssjBb);
  end;

{$IFDEF Maks}
  GridppReport_jssj.Printer.PrinterName := Frm_Dyjgl.ChangeDefaultPrinter(结算收据);
{$ELSE}
  ChangePrinter(1);
{$ENDIF}
  try
    GridppReport_jssj.ParameterByName('住院号').Value := trim(zy_tmh);
    if Assigned(GridppReport_jssj.ParameterByName('zyh')) then
    GridppReport_jssj.ParameterByName('zyh').Value := trim(zy_zyh);
    GridppReport_jssj.ParameterByName('病人姓名').Value := trim(zy_brxm);
    GridppReport_jssj.ParameterByName('收据号').Value := zy_sjbh;
    GridppReport_jssj.ParameterByName('病人性别').Value := zy_brxb;
    GridppReport_jssj.ParameterByName('病人年龄').Value := zy_brnl;
    GridppReport_jssj.ParameterByName('住院科室').Value := Trim(zy_ksmc);
    GridppReport_jssj.ParameterByName('病床号').Value := Trim(zy_bch);
    GridppReport_jssj.ParameterByName('费用类别').Value := zy_fylb;
    if (azy_dbzmc <> '') and  ((pub_yydm = '0263') or (pub_yydm ='0264')) then   //德阳医院包干费
    begin
      GridppReport_jssj.ParameterByName('总费用').Value := FormatFloat('0.00', azy_dbzfyje);
    end else
    begin
      GridppReport_jssj.ParameterByName('总费用').Value := FormatFloat('0.00', zy_zfy);
    end;

    if Assigned(GridppReport_jssj.ParameterByName('费用类别')) and Assigned(sp_sebrqk) then
      GridppReport_jssj.ParameterByName('费用类别').Value := Trim(sp_sebrqk.FieldByName('lbmc').AsString);
    if Assigned(GridppReport_jssj.ParameterByName('社保单位')) and Assigned(sp_sebrqk) then
      GridppReport_jssj.ParameterByName('社保单位').Value := Trim(sp_sebrqk.FieldByName('sbdw').AsString);
    if Assigned(GridppReport_jssj.ParameterByName('病案号')) then
    GridppReport_jssj.ParameterByName('病案号').Value := Trim(zy_bah);

      //

//     if qry_sbjsb.Locate( 'fylbmc', '民政求助', [] ) then
//      begin
//        GridppReport_jssj.ParameterByName('民政求助').Value := qry_sbjsb.FieldByName( 'sbzf' ).AsFloat;
//      end;

     //台山中医院要求将年月日分开显示 wangwei  170303
    if Assigned(GridppReport_jssj.ParameterByName('年')) then         //年
    GridppReport_jssj.ParameterByName('年').Value := FormatDateTime('yyyy',frm_func.curr_date());
    if Assigned(GridppReport_jssj.ParameterByName('月')) then         //月
    GridppReport_jssj.ParameterByName('月').Value := FormatDateTime('MM',frm_func.curr_date());
    if Assigned(GridppReport_jssj.ParameterByName('日')) then         //日
    GridppReport_jssj.ParameterByName('日').Value := FormatDateTime('dd',frm_func.curr_date());

    if Assigned(GridppReport_jssj.ParameterByName('统筹1')) then
    GridppReport_jssj.ParameterByName('统筹1').Value := tc1;
    if Assigned(GridppReport_jssj.ParameterByName('统筹2')) then         
    GridppReport_jssj.ParameterByName('统筹2').Value := tc2;
    if pub_yydm='0240' then  //   沙雅县0240
    begin
      if Assigned(GridppReport_jssj.ParameterByName('民政救助')) and Assigned(qry_sbjsb) then
      begin
        if qry_sbjsb.Locate( 'fylbmc', '民政救助', [] ) then
        begin
          GridppReport_jssj.ParameterByName('民政救助').Value := qry_sbjsb.FieldByName( 'sbzf' ).AsFloat;
        end;
      end;
      //计生补助
      if Assigned(GridppReport_jssj.ParameterByName('计生补助')) and Assigned(qry_sbjsb) then
      begin
        if qry_sbjsb.Locate( 'fylbmc', '计生补助', [] ) then
        begin
          GridppReport_jssj.ParameterByName('计生补助').Value := qry_sbjsb.FieldByName( 'sbzf' ).AsFloat;
        end;
      end;

        //民政救助证号
      if Assigned(GridppReport_jssj.ParameterByName('民政救助证号')) and Assigned(qry_sbjsb) then
      begin
          GridppReport_jssj.ParameterByName('民政救助证号').Value :=  Trim(zy_mzjzzh);
      end;

    end;



    // GridppReport_jssj.ParameterByName('社保单位').Value := 'test12121212121';
//    if Assigned(GridppReport_jssj.ParameterByName('病人单位')) then
//    GridppReport_jssj.ParameterByName('病人单位').Value := Trim(sp_sebrqk.FieldByName('dwdh').asstring);
    try
      if zy_ytje > 0 then
      begin
        if Assigned(GridppReport_jssj.ParameterByName('实退金额')) then
        GridppReport_jssj.ParameterByName('实退金额').Value := FormatFloat('0.00', zy_ytje);
      end
      else
      begin
        if Assigned(GridppReport_jssj.ParameterByName('实退金额')) then
        GridppReport_jssj.ParameterByName('实退金额').Value := '';
      end;

      if zy_ybje > 0 then
      begin
        if Assigned(GridppReport_jssj.ParameterByName('实补金额')) then
        GridppReport_jssj.ParameterByName('实补金额').Value := FormatFloat('0.00', zy_ybje);
      end
      else
      begin
        if Assigned(GridppReport_jssj.ParameterByName('实补金额')) then
        GridppReport_jssj.ParameterByName('实补金额').Value := '';
      end;
    except
    end;

    if zy_ytjejs > 0 then
    begin
      if Pub_yydm<>'0269' then
      begin
        GridppReport_jssj.ParameterByName('应退金额').Value := '退:' + FormatFloat('0.00', zy_ytjejs);
      end else
      begin   //台山中医院不要 ‘退 ’字
        GridppReport_jssj.ParameterByName('应退金额').Value :=  FormatFloat('0.00', zy_ytjejs);
      end;
    end
    else
    begin
      GridppReport_jssj.ParameterByName('应退金额').Value := '';
    end;
    if zy_ybjejs > 0 then
    begin
     if pub_yydm<>'0269' then
      begin
        GridppReport_jssj.ParameterByName('应补金额').Value := '补:' + FormatFloat('0.00', zy_ybjejs);
      end else  //台山中医院不要 ‘补 ’字
      begin
        GridppReport_jssj.ParameterByName('应补金额').Value := FormatFloat('0.00', zy_ybjejs);
      end;
    //  GridppReport_jssj.ParameterByName('应补金额').Value := '补:' + FormatFloat('0.00', zy_ybjejs);
    end
    else
    begin
      GridppReport_jssj.ParameterByName('应补金额').Value := '';
    end;

      if pub_yydm='0269' then //台山结算收据添加结算收据20170317
    begin
      if Assigned(GridppReport_jssj.ParameterByName('结算方式')) then
        GridppReport_jssj.ParameterByName('结算方式').Value :=ts_jsfs;
    end;


    if zy_sbtcje > 0 then
    begin
      if (pub_yydm=HN_SYRMYY)  and (Abs(zy_nhfmbz) > 1e-6) then
      begin
        GridppReport_jssj.ParameterByName('农合妇幼补助').Value := '农合妇幼补助:'+FormatFloat('0.00', zy_nhfmbz);
      end;
      if pub_yydm = '0015' then
      begin
        if pos('农合', zy_fylb) <= 0 then
        begin
          GridppReport_jssj.ParameterByName('社保自付').Value := Copy('　　　　　　　　　　', 1, Length(zy_fylb + '补偿') - length('社保自付')) +
            '比例自付:' + FormatFloat('0.00', zy_sbzfje);
          GridppReport_jssj.ParameterByName('社保统筹').Value := Copy('　　　　　　　　　　', 1, Length(zy_fylb + '补偿') - length('社保统筹'))
            + '统筹支付:' + FormatFloat('0.00', zy_sbtcje);
        end
        else
        begin
          GridppReport_jssj.ParameterByName('社保自付').Value := zy_fylb + '自付:' + FormatFloat('0.00', zy_sbzfje);
          GridppReport_jssj.ParameterByName('社保统筹').Value := zy_fylb + '补偿:' + FormatFloat('0.00', zy_sbtcje);
        end;
      end
      else
      begin
        GridppReport_jssj.ParameterByName('社保自付').Value := '自付:' + FormatFloat('0.00', zy_sbzfje);
        if pub_yydm<>'0269' then
        begin
          GridppReport_jssj.ParameterByName('社保自付').Value := '自付:' + FormatFloat('0.00', zy_sbzfje);
        end else
        begin
          GridppReport_jssj.ParameterByName('社保自付').Value :=FormatFloat('0.00', zy_sbzfje);
        end;
        GridppReport_jssj.ParameterByName('社保统筹').Value := zy_fylb + '统筹:' + FormatFloat('0.00', zy_sbtcje);
      end;
    end
    else
    begin
      GridppReport_jssj.ParameterByName('社保自付').Value := '';
      GridppReport_jssj.ParameterByName('社保统筹').Value := '';
    end;


    //社保
    try
      with DM_data do
      begin

        if pub_yydm = '0175' then
        begin
          qry_pub.close;
          qry_pub.SQL.Text := 'select isnull(ylzfy,0) yzlfy,' +
            ' isnull(zhzf,0) zhzf,isnull(tczf,0) tczf,isnull(qfx,0) qfx,isnull(blzf,0) blzf,isnull(jshye,0) jshye,isnull(qtzf,0) qtzf,' +
            ' isnull(qzf,0) qzf,isnull(bfzf,0) bfzf,isnull(grzf,0) grzf,isnull(bcylbxje,0) bcylbxje,isnull(xjzf,0) xjzf,' +
            ' isnull(dbbz,0) dbbz,  isnull(gwybxje,0) gwybxje, isnull(jbylbxje, 0) jbylbxje,isnull(mzbz,0) mzbz,' +
            ' isnull(bbzf,0) bbzf,isnull(lxzf,0) lxzf,isnull(scjrbz,0) scjrbz,'  +
            ' isnull(czjmtczf,0) czjmtczf,isnull(qslb,0) qslb'  +
            ' from sbjk_sbjs where zyh =' + #39 + zy_zyh + #39 + ' and yxbz = 1 and fylb = 1';
          qry_pub.Open;
        end else
        begin
          qry_pub.close;
          qry_pub.SQL.Text := 'select isnull(ylzfy,0) yzlfy,' +
            ' isnull(zhzf,0) zhzf,isnull(tczf,0) tczf,isnull(qfx,0) qfx,isnull(blzf,0) blzf,isnull(jshye,0) jshye,isnull(qtzf,0) qtzf,' +
            ' isnull(qzf,0) qzf,isnull(bfzf,0) bfzf,isnull(grzf,0) grzf,isnull(bcylbxje,0) bcylbxje,isnull(xjzf,0) xjzf,' +
            ' isnull(dbbz,0) dbbz,  isnull(gwybxje,0) gwybxje, isnull(jbylbxje, 0) jbylbxje,isnull(mzbz,0) mzbz,isnull(kcbf,0) kcbf,' +
            ' isnull(dejzzc,0) dejzzc,isnull(bbzf,0) bbzf,isnull(lxzf,0) lxzf,isnull(scjrbz,0) scjrbz,isnull(ylgs,0) ylgs,'  +
            ' isnull(syjj,0) syjj,isnull(syejj,0) syejj,isnull(qtdy,0) qtdy,isnull(czjmtczf,0) czjmtczf,isnull(qslb,0) qslb,isnull(je2,0) je2'  +
            ' from sbjk_sbjs where zyh =' + #39 + zy_zyh + #39 + ' and yxbz = 1 and fylb = 1';
          qry_pub.Open;
        end;

        if qry_pub.RecordCount > 0 then
        begin
          GridppReport_jssj.setParamVal('打印社保', '1');
          GridppReport_jssj.setParamVal('起付线', FormatFloat('0.00', qry_pub.FieldByName('qfx').AsFloat));
          GridppReport_jssj.setParamVal('帐户支付', FormatFloat('0.00', qry_pub.FieldByName('zhzf').AsFloat));
          GridppReport_jssj.setParamVal('社保总费用', FormatFloat('0.00', qry_pub.FieldByName('yzlfy').AsFloat));
          GridppReport_jssj.setParamVal('统筹支付', FormatFloat('0.00', qry_pub.FieldByName('tczf').AsFloat));
          GridppReport_jssj.setParamVal('比例自付', FormatFloat('0.00', qry_pub.FieldByName('blzf').AsFloat));
          GridppReport_jssj.setParamVal('账户余额', FormatFloat('0.00', qry_pub.FieldByName('jshye').AsFloat));
          GridppReport_jssj.setParamVal('其他支付', FormatFloat('0.00', qry_pub.FieldByName('qtzf').AsFloat));
          GridppReport_jssj.setParamVal('全自付', FormatFloat('0.00', qry_pub.FieldByName('qzf').AsFloat));
          GridppReport_jssj.setParamVal('部分自付', FormatFloat('0.00', qry_pub.FieldByName('bfzf').AsFloat));
          GridppReport_jssj.setParamVal('个人支付', FormatFloat('0.00', qry_pub.FieldByName('grzf').AsFloat));
          GridppReport_jssj.setParamVal('补充医疗报销金额', FormatFloat('0.00', qry_pub.FieldByName('bcylbxje').AsFloat));
          GridppReport_jssj.setParamVal('民政补助', FormatFloat('0.00', qry_pub.FieldByName('mzbz').AsFloat));
          GridppReport_jssj.setParamVal('社保现金支付', FormatFloat('0.00', qry_pub.FieldByName('xjzf').AsFloat));
          GridppReport_jssj.setParamVal('清算标志', qry_pub.FieldByName('qslb').AsString);//清算类别
          if (pub_yydm = '0240') or (pub_yydm = '0175') then
          begin
            GridppReport_jssj.setParamVal('基本医疗报销金额', FormatFloat('0.00', qry_pub.FieldByName('jbylbxje').AsFloat));
            GridppReport_jssj.setParamVal('大病补助', FormatFloat('0.00', qry_pub.FieldByName('dbbz').AsFloat));
            GridppReport_jssj.setParamVal('公务员补助', FormatFloat('0.00', qry_pub.FieldByName('gwybxje').AsFloat));
            GridppReport_jssj.setParamVal('商保金额', FormatFloat('0.00', qry_pub.FieldByName('je2').AsFloat));
          end;
          if pub_yydm = '0260' then
          begin
            GridppReport_jssj.setParamVal('基本医疗报销金额', FormatFloat('0.00', qry_pub.FieldByName('jbylbxje').AsFloat));
            GridppReport_jssj.setParamVal('大病补助', FormatFloat('0.00', qry_pub.FieldByName('dbbz').AsFloat));
            GridppReport_jssj.setParamVal('公务员补助', FormatFloat('0.00', qry_pub.FieldByName('gwybxje').AsFloat));
            GridppReport_jssj.setParamVal('城镇居民统筹支付', FormatFloat('0.00', qry_pub.FieldByName('czjmtczf').AsFloat));
            GridppReport_jssj.setParamVal('农孕妇补助', FormatFloat('0.00', qry_pub.FieldByName('kcbf').AsFloat));
            GridppReport_jssj.setParamVal('高额赔付', FormatFloat('0.00', qry_pub.FieldByName('dejzzc').AsFloat));
            GridppReport_jssj.setParamVal('补充医疗补助', FormatFloat('0.00', qry_pub.FieldByName('bbzf').AsFloat));
            GridppReport_jssj.setParamVal('离休干部补助', FormatFloat('0.00', qry_pub.FieldByName('lxzf').AsFloat));
            GridppReport_jssj.setParamVal('老红军补助', FormatFloat('0.00', qry_pub.FieldByName('scjrbz').AsFloat));
            GridppReport_jssj.setParamVal('医疗工伤报销', FormatFloat('0.00', qry_pub.FieldByName('ylgs').AsFloat));
            GridppReport_jssj.setParamVal('生育基金补助', FormatFloat('0.00', qry_pub.FieldByName('syjj').AsFloat));
            GridppReport_jssj.setParamVal('失业基金补助', FormatFloat('0.00', qry_pub.FieldByName('syejj').AsFloat));
            GridppReport_jssj.setParamVal('其他补助', FormatFloat('0.00', qry_pub.FieldByName('qtdy').AsFloat));
          end;
        end
        else
        begin
          GridppReport_jssj.setParamVal('打印社保', '0');
          GridppReport_jssj.setParamVal('起付线', '');
          GridppReport_jssj.setParamVal('帐户支付', '');
          GridppReport_jssj.setParamVal('社保总费用', '');
          GridppReport_jssj.setParamVal('统筹支付', '');
          GridppReport_jssj.setParamVal('比例自付', '');
          GridppReport_jssj.setParamVal('账户余额', '');
          GridppReport_jssj.setParamVal('其他支付', '');
          GridppReport_jssj.setParamVal('全自付', '');
          GridppReport_jssj.setParamVal('部分自付', '');
          GridppReport_jssj.setParamVal('个人支付', '');
          GridppReport_jssj.setParamVal('补充医疗报销金额', '');
          GridppReport_jssj.setParamVal('民政补助', '');
          GridppReport_jssj.setParamVal('社保现金支付','');
          if pub_yydm = '0240' then
          begin
            GridppReport_jssj.setParamVal('基本医疗报销金额','');
            GridppReport_jssj.setParamVal('大病补助', ''); 
            GridppReport_jssj.setParamVal('公务员报销金额','');
          end;
          if pub_yydm = '0260' then
          begin
            GridppReport_jssj.setParamVal('基本医疗报销金额', '');

            GridppReport_jssj.setParamVal('大病补助', '');
            GridppReport_jssj.setParamVal('公务员补助', '');
            GridppReport_jssj.setParamVal('农孕妇补助', '');
            GridppReport_jssj.setParamVal('城镇居民统筹支付', '');
            GridppReport_jssj.setParamVal('高额赔付', '');
            GridppReport_jssj.setParamVal('补充医疗补助', '');
            GridppReport_jssj.setParamVal('离休干部补助', '');
            GridppReport_jssj.setParamVal('老红军补助', '');
            GridppReport_jssj.setParamVal('医疗工伤报销', '');
            GridppReport_jssj.setParamVal('生育基金补助', '');
            GridppReport_jssj.setParamVal('失业基金补助', '');
            GridppReport_jssj.setParamVal('其他补助', '');
          end;
        end;
      end;
    except
    end;
    GridppReport_jssj.ParameterByName('实际预交总额').Value := FormatFloat('0.00', sjyjze);
    GridppReport_jssj.ParameterByName('预交总额').Value := FormatFloat('0.00', yjze);
    GridppReport_jssj.ParameterByName('卡支付金额').Value := FormatFloat('0.00', zy_kzfje);
    GridppReport_jssj.ParameterByName('优惠金额').Value := FormatFloat('0.00', yhje);
    GridppReport_jssj.ParameterByName('入院日期').Value := zy_ryrq;
    GridppReport_jssj.ParameterByName('出院日期').Value := StrToDateTime(cyrq);
    GridppReport_jssj.ParameterByName('出生日期').Value := zy_csrq;
    GridppReport_jssj.ParameterByName('病人地址').Value := zy_brdz;
    GridppReport_jssj.ParameterByName('结算操作员').Value := pub_czyxm;
     if Assigned(GridppReport_jssj.ParameterByName('结算日期')) then
    GridppReport_jssj.ParameterByName('结算日期').Value := Frm_func.curr_date;
    GridppReport_jssj.ParameterByName('十万').Value := sw;
    GridppReport_jssj.ParameterByName('万').Value := w;
    GridppReport_jssj.ParameterByName('千').Value := q;
    GridppReport_jssj.ParameterByName('百').Value := b;
    GridppReport_jssj.ParameterByName('拾').Value := s;
    GridppReport_jssj.ParameterByName('元').Value := y;
    GridppReport_jssj.ParameterByName('角').Value := j;
    GridppReport_jssj.ParameterByName('分').Value := f;
    GridppReport_jssj.setParamVal('统筹汇总', zy_tchz);
    if Assigned(GridppReport_jssj.ParameterByName('统筹支付')) and (pub_yydm='0271') then
    begin
      if GridppReport_jssj.ParameterByName('统筹支付').Value <> '' then
      begin
        GridppReport_jssj.setParamVal('统筹汇总金额', '0');
      end else
      begin
        GridppReport_jssj.setParamVal('统筹汇总金额', zy_sbtcje);
      end;
    end else
    begin
      GridppReport_jssj.setParamVal('统筹汇总金额', zy_sbtcje);
    end;

    //单病种费用
    if Assigned(GridppReport_jssj.ParameterByName('单病种费用金额')) then
      GridppReport_jssj.ParameterByName('单病种费用金额').Value := FormatFloat('0.00', azy_dbzfyje);
    //单病种名称
    if Assigned(GridppReport_jssj.ParameterByName('单病种名称')) then
      GridppReport_jssj.ParameterByName('单病种名称').Value := azy_dbzmc;
    //统筹金额输入
    if Assigned(GridppReport_jssj.ParameterByName('统筹金额输入')) then
      GridppReport_jssj.ParameterByName('统筹金额输入').Value := azy_tcjesr;
      
    //优惠金额输入
    if Assigned(GridppReport_jssj.ParameterByName('优惠金额输入')) then
      GridppReport_jssj.ParameterByName('优惠金额输入').Value := azy_yhjesr;
    //账户支付输入
    if Assigned(GridppReport_jssj.ParameterByName('账户支付输入')) then
      GridppReport_jssj.ParameterByName('账户支付输入').Value := a_zhzf;
    //减免金额输入
    if Assigned(GridppReport_jssj.ParameterByName('减免金额输入')) then
      GridppReport_jssj.ParameterByName('减免金额输入').Value := a_jmjesr;
    //低保金额输入
    if Assigned(GridppReport_jssj.ParameterByName('低保金额输入')) then
      GridppReport_jssj.ParameterByName('低保金额输入').Value := a_dbjesr;
    if (azy_dbzmc <> '') and ((pub_yydm = '0263') or (pub_yydm ='0264')) then  //德阳医院包干费用
    begin
      GridppReport_jssj.ParameterByName('应退金额').Value := '';
      GridppReport_jssj.ParameterByName('应补金额').Value :='';

      if (azy_dbzfyje - sjyjze -  zy_sbtcje > 0) then
      begin
        if pub_yydm<>'0269' then
        begin
          GridppReport_jssj.ParameterByName('应补金额').Value := '补:' + FormatFloat('0.00', azy_dbzfyje - sjyjze -  zy_sbtcje );
        end else
        begin
          GridppReport_jssj.ParameterByName('应补金额').Value := FormatFloat('0.00', azy_dbzfyje - sjyjze -  zy_sbtcje );
        end;
      // GridppReport_jssj.ParameterByName('应补金额').Value := '补:' + FormatFloat('0.00', azy_dbzfyje - sjyjze -  zy_sbtcje );
      end else if (azy_dbzfyje - sjyjze -  zy_sbtcje < 0) then
      begin
        if pub_yydm<>'0269' then
        begin
          GridppReport_jssj.ParameterByName('应退金额').Value := '退:' + FormatFloat('0.00', abs(azy_dbzfyje - sjyjze -  zy_sbtcje) );
        end else
        begin
          GridppReport_jssj.ParameterByName('应退金额').Value := FormatFloat('0.00', abs(azy_dbzfyje - sjyjze -  zy_sbtcje) );
        end;
      //GridppReport_jssj.ParameterByName('应退金额').Value := '退:' + FormatFloat('0.00', abs(azy_dbzfyje - sjyjze -  zy_sbtcje) );
      end;
    end ;
//
//    if azy_dbzfyje > 0 then
//    begin
//      if Assigned(GridppReport_jssj.ParameterByName('zy_dbzfyje')) then
//      GridppReport_jssj.ParameterByName('zy_dbzfyje').Value := FormatFloat('0.00', azy_dbzfyje);
//    end
//    else
//    begin
//      if Assigned(GridppReport_jssj.ParameterByName('zy_dbzfyje')) then
//      GridppReport_jssj.ParameterByName('zy_dbzfyje').Value := '';
//    end;

    if pub_yydm='0240' then
    begin
      fldxjeSw(sjyjze);
      GridppReport_jssj.ParameterByName('预交十万').Value := sw;
      GridppReport_jssj.ParameterByName('预交万').Value := w;
      GridppReport_jssj.ParameterByName('预交千').Value := q;
      GridppReport_jssj.ParameterByName('预交百').Value := b;
      GridppReport_jssj.ParameterByName('预交拾').Value := s;
      GridppReport_jssj.ParameterByName('预交元').Value := y;
      GridppReport_jssj.ParameterByName('预交角').Value := j;
      GridppReport_jssj.ParameterByName('预交分').Value := f;
    end;

    if pub_yydm='0246' then  //兴宁 查询住院导入数据
    begin
      DM_data.Qry_pub1.Close;
      DM_data.Qry_pub1.SQL.Text :=
        Format('select sum(sszje) je from zysf_mzsf_mzfymx where zyh=''%s''',[zy_zyh]);
      DM_data.Qry_pub1.Open;
      GridppReport_jssj.setParamVal('门诊费用金额',DM_data.Qry_pub1.FieldByName('je').AsFloat);
    end;

    zyts := CalcZyts(formatdatetime('yyyy-mm-dd hh:mm:ss', zy_ryrq), cyrq);
    GridppReport_jssj.ParameterByName('住院天数').Value := zyts;

    if (azy_dbzmc <> '') and ((pub_yydm = '0263') or (pub_yydm ='0264')) then  //德阳医院包干费用
    begin
      qry_kmdm.First;
      i := 1;
      if jssjBb.ord then
      begin
        while (not qry_kmdm.Eof) or (i <= 40) do
        begin
          try
            if (pub_yydm = '0263') or (pub_yydm= '0264') then  //德阳医院需要全部显示出大类
            begin
//              GridppReport_jssj.ParameterByName('大类名称' + IntToStr(i)).Value := Trim(qry_kmdm.FieldByName('kmmc').AsString);
//              if  Trim(qry_kmdm.FieldByName('kmmc').AsString) ='治疗费' then
//              begin
//                 GridppReport_jssj.ParameterByName('金额' + IntToStr(i)).Value := FormatFloat('0.00', azy_dbzfyje);
//              end else
//              begin
//                GridppReport_jssj.ParameterByName('金额' + IntToStr(i)).Value := '';
//              end;
              if sp_tj_fydl1.Locate('kmdm', qry_kmdm.FieldByName('kmdm').AsString, []) and
              not qry_kmdm.Eof then
              begin
                GridppReport_jssj.ParameterByName('大类名称' + IntToStr(i)).Value := Trim(sp_tj_fydl1.FieldByName('kmmc').AsString);
                GridppReport_jssj.ParameterByName('金额' + IntToStr(i)).Value := FormatFloat('0.00', sp_tj_fydl1.FieldByName('fyje').AsFloat);
                end else
              begin
                GridppReport_jssj.ParameterByName('大类名称' + IntToStr(i)).Value := Trim(qry_kmdm.FieldByName('kmmc').AsString);
                GridppReport_jssj.ParameterByName('金额' + IntToStr(i)).Value := '';
              end;
            end else
            begin
              GridppReport_jssj.ParameterByName('大类名称' + IntToStr(i)).Value := '';
              GridppReport_jssj.ParameterByName('金额' + IntToStr(i)).Value := '';
            end;
          except
            //ShowMessage( inttostr( i ) );
          end;
          qry_kmdm.Next;
          i := i + 1;
        end;
      end else
      begin
        i := 1;
        sp_tj_fydl1.First;
        while (not sp_tj_fydl1.Eof) or (i <= 40) do
        begin
          try
            if not sp_tj_fydl1.eof then
            begin
              GridppReport_jssj.ParameterByName('大类名称' + IntToStr(i)).Value := Trim(sp_tj_fydl1.FieldByName('kmmc').AsString);
              GridppReport_jssj.ParameterByName('金额' + IntToStr(i)).Value
                := FormatFloat('0.00', sp_tj_fydl1.FieldByName('fyje').AsFloat);
            end
            else
            begin
              GridppReport_jssj.ParameterByName('大类名称' + IntToStr(i)).Value := '';
              GridppReport_jssj.ParameterByName('金额' + IntToStr(i)).Value := '';
            end;
          except
            //ShowMessage( inttostr( i ) );
          end;
          sp_tj_fydl1.Next;
          i := i + 1;
        end;
      end;
    end else   //没有单病种费用，切不是德阳医院
    begin
      qry_kmdm.First;
      i := 1;
      if jssjBb.ord then
      begin
        while (not qry_kmdm.Eof) or (i <= 40) do
        begin
          try
            if (pub_yydm = '0263') or  (pub_yydm = '0264')  then  //德阳医院需要全部显示出大类
            begin
//              GridppReport_jssj.ParameterByName('大类名称' + IntToStr(i)).Value := Trim(qry_kmdm.FieldByName('kmmc').AsString);
//              GridppReport_jssj.ParameterByName('金额' + IntToStr(i)).Value := '';
              if sp_tj_fydl1.Locate('kmdm', qry_kmdm.FieldByName('kmdm').AsString, []) and
              not qry_kmdm.Eof then
              begin
                GridppReport_jssj.ParameterByName('大类名称' + IntToStr(i)).Value := Trim(sp_tj_fydl1.FieldByName('kmmc').AsString);
                GridppReport_jssj.ParameterByName('金额' + IntToStr(i)).Value := FormatFloat('0.00', sp_tj_fydl1.FieldByName('fyje').AsFloat);
                end else
              begin
                GridppReport_jssj.ParameterByName('大类名称' + IntToStr(i)).Value := Trim(qry_kmdm.FieldByName('kmmc').AsString);
                GridppReport_jssj.ParameterByName('金额' + IntToStr(i)).Value := '';
              end;
            end else
            begin
              if sp_tj_fydl1.Locate('kmdm', qry_kmdm.FieldByName('kmdm').AsString, []) and
              not qry_kmdm.Eof then
              begin
                GridppReport_jssj.ParameterByName('大类名称' + IntToStr(i)).Value := Trim(sp_tj_fydl1.FieldByName('kmmc').AsString);
                GridppReport_jssj.ParameterByName('金额' + IntToStr(i)).Value := FormatFloat('0.00', sp_tj_fydl1.FieldByName('fyje').AsFloat);
                end else
              begin
                GridppReport_jssj.ParameterByName('大类名称' + IntToStr(i)).Value := '';
                GridppReport_jssj.ParameterByName('金额' + IntToStr(i)).Value := '';
              end;
            end;
          except
            //ShowMessage( inttostr( i ) );
          end;
          qry_kmdm.Next;
          i := i + 1;
        end;
      end else
      begin
        i := 1;
        sp_tj_fydl1.First;
        while (not sp_tj_fydl1.Eof) or (i <= 40) do
        begin
          try
            if not sp_tj_fydl1.eof then
            begin
              GridppReport_jssj.ParameterByName('大类名称' + IntToStr(i)).Value := Trim(sp_tj_fydl1.FieldByName('kmmc').AsString);
              GridppReport_jssj.ParameterByName('金额' + IntToStr(i)).Value
                := FormatFloat('0.00', sp_tj_fydl1.FieldByName('fyje').AsFloat);
            end else
            begin
              GridppReport_jssj.ParameterByName('大类名称' + IntToStr(i)).Value := '';
              GridppReport_jssj.ParameterByName('金额' + IntToStr(i)).Value := '';
            end;
          except
            //ShowMessage( inttostr( i ) );
          end;
          sp_tj_fydl1.Next;
          i := i + 1;
        end;
      end;
    end;
  except on e: Exception do
      ShowMessage(e.Message);
  end;

  //
  try

    dm_data.qry_pub.close;
    dm_data.qry_pub.SQL.Text := 'exec zysf_zysj_sj ' + quotedstr(zy_zyh);
    dm_data.qry_pub.ExecSQL;

    GridppReport_jssj.DataSet := sp_zysj_sj;
  except on e: Exception do

  end;

  res := frm_func.SetCReportXtcs(GridppReport_jssj);
  if res <> '1' then
  begin
    ShowMessage(res);
  end
  else
  begin
{$IFDEF Maks}
{$ELSE}
    if v_IsPrinterJoin then
    begin
      if GridppReport_jssj.Printer.PrinterName <> Printer.Printers[v_PrinterIndex_new] then
      begin

        GridppReport_jssj.Printer.PrinterName := Printer.Printers[v_PrinterIndex_new];
      end;
    end;
{$ENDIF}

    GridppReport_jssj.Print(False);

  end;

{$IFDEF Maks}
  Frm_Dyjgl.RevertDefaultPrinter;
{$ELSE}
  if v_IsPrinterJoin then
  begin
    if GridppReport_jssj.Printer.PrinterName <> Printer.Printers[v_PrinterIndex_old] then
    begin
      GridppReport_jssj.Printer.PrinterName := Printer.Printers[v_PrinterIndex_old];
    end;
  end;
  RevertPrinter;
{$ENDIF}
end;


//出院结算打印申请单

{-------------------------------------------------------------------------------
  过程名:    Tfrm_zysf_print_service.printcyjssqd
  作者:      yangshuai
  日期:      2017.09.04
  参数:      zy_zyh, zy_sjbh, zy_brxm, zy_brxb, zy_brnl, zy_ksmc, zy_bch, zy_fylb, zy_tmh, zy_tchz: string; zy_zfy, zy_ytjejs, zy_ybjejs, zy_ytje, zy_ybje, zy_sbzfje, zy_sbtcje, sjyjze, yjze, zy_kzfje, yhje: real; zy_ryrq, zy_cyrq: Tdatetime; zy_csrq: string = '2007-12-12'; zy_brdz: string = ''; sp_tj_fydl1: TADOStoredProc = nil; qry_sbjsb: TADOQuery = nil; sp_sebrqk: TADOStoredProc = nil;zy_bah:string='';zy_nhfmbz:Real=0.00;zy_mzjzzh:string = '';azy_dbzfyje:real=0.00;azy_dbzmc:string='';azy_tcjesr:real=0.00;ts_jsfs:string=''
  返回值:    无
-------------------------------------------------------------------------------}
procedure Tfrm_zysf_print_service.printcyjssqd(zy_zyh, zy_sjbh, zy_brxm,
  zy_brxb, zy_brnl, zy_ksmc, zy_bch, zy_fylb, zy_tmh, zy_tchz: string; zy_zfy, zy_ytjejs, zy_ybjejs, zy_ytje, zy_ybje,
  zy_sbzfje, zy_sbtcje, sjyjze, yjze, zy_kzfje, yhje: real; zy_ryrq, zy_cyrq: Tdatetime;
  zy_csrq: string = '2007-12-12'; zy_brdz: string = ''; sp_tj_fydl1: TADOStoredProc = nil;
  qry_sbjsb: TADOQuery = nil; sp_sebrqk: TADOStoredProc = nil;zy_bah:string='';zy_nhfmbz:Real=0.00;zy_mzjzzh:string = '';azy_dbzfyje:real=0.00;azy_dbzmc:string='';azy_tcjesr:real=0.00;ts_jsfs:string='';azy_yhjesr:string='');
var
  sl: Tstringlist;
  ts: TMemoryStream;
  cyrq, zyts: string;
  i: Integer;
var bgzf: Real;
  sbylzfy: Real;
   tc1,tc2 :string;
begin
  if not qry_kmdm.Active then
  begin
    qry_kmdm.Open;
  end;
  DM_data.qry_pub.close;
  DM_data.qry_pub.SQL.Text := 'select * from sbjk_sbjs where yxbz=1 and zyh=' + '''' +
    zy_zyh + '''';
  DM_data.qry_pub.Open;
  if not DM_data.qry_pub.IsEmpty then
    sbylzfy := DM_data.qry_pub.FieldByName('ylzfy').AsFloat
  else
    sbylzfy := 0;
    fldxjeSw(zy_zfy);
  if zy_cyrq < zy_ryrq then
  begin
    cyrq := '';
  end
  else
  begin
    cyrq := FormatDateTime('yyyy-mm-dd hh:mm:ss', zy_cyrq);
  end;
  //--------------------------------------------------------------
  FreeAndNil(jssqdBb);
  //--------------------------------------------------------------
  if jssqdBb = nil then
  begin
    jssqdBb := TCusBb.Create;
    jssqdBb.GetBbByDM(jssqdBb, jssqddm);
    GridppReport_jssqd.LoadFromStr(jssqdBb);
  end;

{$IFDEF Maks}
  GridppReport_jssqd.Printer.PrinterName := Frm_Dyjgl.ChangeDefaultPrinter(结算收据);
{$ELSE}
  ChangePrinter(1);
{$ENDIF}
  try
    GridppReport_jssqd.ParameterByName('住院号').Value := trim(zy_tmh);
    if Assigned(GridppReport_jssqd.ParameterByName('zyh')) then
    GridppReport_jssqd.ParameterByName('zyh').Value := trim(zy_zyh);
    GridppReport_jssqd.ParameterByName('病人姓名').Value := trim(zy_brxm);
    GridppReport_jssqd.ParameterByName('收据号').Value := zy_sjbh;
    GridppReport_jssqd.ParameterByName('病人性别').Value := zy_brxb;
    GridppReport_jssqd.ParameterByName('病人年龄').Value := zy_brnl;
    GridppReport_jssqd.ParameterByName('住院科室').Value := Trim(zy_ksmc);
    GridppReport_jssqd.ParameterByName('病床号').Value := Trim(zy_bch);
    GridppReport_jssqd.ParameterByName('费用类别').Value := zy_fylb;
    if (azy_dbzmc <> '') and  ((pub_yydm = '0263') or (pub_yydm ='0264')) then   //德阳医院包干费
    begin
      GridppReport_jssqd.ParameterByName('总费用').Value := FormatFloat('0.00', azy_dbzfyje);
    end else
    begin
      GridppReport_jssqd.ParameterByName('总费用').Value := FormatFloat('0.00', zy_zfy);
    end;

    if Assigned(GridppReport_jssqd.ParameterByName('费用类别')) and Assigned(sp_sebrqk) then
      GridppReport_jssqd.ParameterByName('费用类别').Value := Trim(sp_sebrqk.FieldByName('lbmc').AsString);
    if Assigned(GridppReport_jssqd.ParameterByName('社保单位')) and Assigned(sp_sebrqk) then
      GridppReport_jssqd.ParameterByName('社保单位').Value := Trim(sp_sebrqk.FieldByName('sbdw').AsString);
    if Assigned(GridppReport_jssqd.ParameterByName('病案号')) then
    GridppReport_jssqd.ParameterByName('病案号').Value := Trim(zy_bah);

      //

//     if qry_sbjsb.Locate( 'fylbmc', '民政求助', [] ) then
//      begin
//        GridppReport_jssj.ParameterByName('民政求助').Value := qry_sbjsb.FieldByName( 'sbzf' ).AsFloat;
//      end;

     //台山中医院要求将年月日分开显示 wangwei  170303
    if Assigned(GridppReport_jssqd.ParameterByName('年')) then         //年
    GridppReport_jssqd.ParameterByName('年').Value := FormatDateTime('yyyy',frm_func.curr_date());
    if Assigned(GridppReport_jssqd.ParameterByName('月')) then         //月
    GridppReport_jssqd.ParameterByName('月').Value := FormatDateTime('MM',frm_func.curr_date());
    if Assigned(GridppReport_jssqd.ParameterByName('日')) then         //日
    GridppReport_jssqd.ParameterByName('日').Value := FormatDateTime('dd',frm_func.curr_date());

    if Assigned(GridppReport_jssqd.ParameterByName('统筹1')) then
    GridppReport_jssqd.ParameterByName('统筹1').Value := tc1;
    if Assigned(GridppReport_jssqd.ParameterByName('统筹2')) then
    GridppReport_jssqd.ParameterByName('统筹2').Value := tc2;
    if pub_yydm='0240' then  //   沙雅县0240
    begin
      if Assigned(GridppReport_jssqd.ParameterByName('民政救助')) and Assigned(qry_sbjsb) then
      begin
        if qry_sbjsb.Locate( 'fylbmc', '民政救助', [] ) then
        begin
          GridppReport_jssqd.ParameterByName('民政救助').Value := qry_sbjsb.FieldByName( 'sbzf' ).AsFloat;
        end;
      end;
      //计生补助
      if Assigned(GridppReport_jssqd.ParameterByName('计生补助')) and Assigned(qry_sbjsb) then
      begin
        if qry_sbjsb.Locate( 'fylbmc', '计生补助', [] ) then
        begin
          GridppReport_jssqd.ParameterByName('计生补助').Value := qry_sbjsb.FieldByName( 'sbzf' ).AsFloat;
        end;
      end;

        //民政救助证号
      if Assigned(GridppReport_jssqd.ParameterByName('民政救助证号')) and Assigned(qry_sbjsb) then
      begin
          GridppReport_jssqd.ParameterByName('民政救助证号').Value :=  Trim(zy_mzjzzh);
      end;

    end;



    // GridppReport_jssj.ParameterByName('社保单位').Value := 'test12121212121';
//    if Assigned(GridppReport_jssj.ParameterByName('病人单位')) then
//    GridppReport_jssj.ParameterByName('病人单位').Value := Trim(sp_sebrqk.FieldByName('dwdh').asstring);
    try
      if zy_ytje > 0 then
      begin
        if Assigned(GridppReport_jssqd.ParameterByName('实退金额')) then
        GridppReport_jssqd.ParameterByName('实退金额').Value := FormatFloat('0.00', zy_ytje);
      end
      else
      begin
        if Assigned(GridppReport_jssqd.ParameterByName('实退金额')) then
        GridppReport_jssqd.ParameterByName('实退金额').Value := '';
      end;

      if zy_ybje > 0 then
      begin
        if Assigned(GridppReport_jssqd.ParameterByName('实补金额')) then
        GridppReport_jssqd.ParameterByName('实补金额').Value := FormatFloat('0.00', zy_ybje);
      end
      else
      begin
        if Assigned(GridppReport_jssqd.ParameterByName('实补金额')) then
        GridppReport_jssqd.ParameterByName('实补金额').Value := '';
      end;
    except
    end;

    if zy_ytjejs > 0 then
    begin
      if Pub_yydm<>'0269' then
      begin
        GridppReport_jssqd.ParameterByName('应退金额').Value := '退:' + FormatFloat('0.00', zy_ytjejs);
      end else
      begin   //台山中医院不要 ‘退 ’字
        GridppReport_jssqd.ParameterByName('应退金额').Value :=  FormatFloat('0.00', zy_ytjejs);
      end;
    end
    else
    begin
      GridppReport_jssqd.ParameterByName('应退金额').Value := '';
    end;
    if zy_ybjejs > 0 then
    begin
     if pub_yydm<>'0269' then
      begin
        GridppReport_jssqd.ParameterByName('应补金额').Value := '补:' + FormatFloat('0.00', zy_ybjejs);
      end else  //台山中医院不要 ‘补 ’字
      begin
        GridppReport_jssqd.ParameterByName('应补金额').Value := FormatFloat('0.00', zy_ybjejs);
      end;
    //  GridppReport_jssj.ParameterByName('应补金额').Value := '补:' + FormatFloat('0.00', zy_ybjejs);
    end
    else
    begin
      GridppReport_jssqd.ParameterByName('应补金额').Value := '';
    end;

      if pub_yydm='0269' then //台山结算收据添加结算收据20170317
    begin
      if Assigned(GridppReport_jssqd.ParameterByName('结算方式')) then
        GridppReport_jssqd.ParameterByName('结算方式').Value :=ts_jsfs;
    end;


    if zy_sbtcje > 0 then
    begin
      if (pub_yydm=HN_SYRMYY)  and (Abs(zy_nhfmbz) > 1e-6) then
      begin
        GridppReport_jssqd.ParameterByName('农合妇幼补助').Value := '农合妇幼补助:'+FormatFloat('0.00', zy_nhfmbz);
      end;
      if pub_yydm = '0015' then
      begin
        if pos('农合', zy_fylb) <= 0 then
        begin
          GridppReport_jssqd.ParameterByName('社保自付').Value := Copy('　　　　　　　　　　', 1, Length(zy_fylb + '补偿') - length('社保自付')) +
            '比例自付:' + FormatFloat('0.00', zy_sbzfje);
          GridppReport_jssqd.ParameterByName('社保统筹').Value := Copy('　　　　　　　　　　', 1, Length(zy_fylb + '补偿') - length('社保统筹'))
            + '统筹支付:' + FormatFloat('0.00', zy_sbtcje);
        end
        else
        begin
          GridppReport_jssqd.ParameterByName('社保自付').Value := zy_fylb + '自付:' + FormatFloat('0.00', zy_sbzfje);
          GridppReport_jssqd.ParameterByName('社保统筹').Value := zy_fylb + '补偿:' + FormatFloat('0.00', zy_sbtcje);
        end;
      end
      else
      begin
        GridppReport_jssqd.ParameterByName('社保自付').Value := '自付:' + FormatFloat('0.00', zy_sbzfje);
        if pub_yydm<>'0269' then
        begin
          GridppReport_jssqd.ParameterByName('社保自付').Value := '自付:' + FormatFloat('0.00', zy_sbzfje);
        end else
        begin
          GridppReport_jssqd.ParameterByName('社保自付').Value :=FormatFloat('0.00', zy_sbzfje);
        end;
        GridppReport_jssqd.ParameterByName('社保统筹').Value := zy_fylb + '统筹:' + FormatFloat('0.00', zy_sbtcje);
      end;
    end
    else
    begin
      GridppReport_jssqd.ParameterByName('社保自付').Value := '';
      GridppReport_jssqd.ParameterByName('社保统筹').Value := '';
    end;


    //社保
    try
      with DM_data do
      begin

        if pub_yydm = '0175' then
        begin
          qry_pub.close;
          qry_pub.SQL.Text := 'select isnull(ylzfy,0) yzlfy,' +
            ' isnull(zhzf,0) zhzf,isnull(tczf,0) tczf,isnull(qfx,0) qfx,isnull(blzf,0) blzf,isnull(jshye,0) jshye,isnull(qtzf,0) qtzf,' +
            ' isnull(qzf,0) qzf,isnull(bfzf,0) bfzf,isnull(grzf,0) grzf,isnull(bcylbxje,0) bcylbxje,isnull(xjzf,0) xjzf,' +
            ' isnull(dbbz,0) dbbz,  isnull(gwybxje,0) gwybxje, isnull(jbylbxje, 0) jbylbxje,isnull(mzbz,0) mzbz,' +
            ' isnull(bbzf,0) bbzf,isnull(lxzf,0) lxzf,isnull(scjrbz,0) scjrbz,'  +
            ' isnull(czjmtczf,0) czjmtczf,isnull(qslb,0) qslb'  +
            ' from sbjk_sbjs where zyh =' + #39 + zy_zyh + #39 + ' and yxbz = 1 and fylb = 1';
          qry_pub.Open;
        end else
        begin
          qry_pub.close;
          qry_pub.SQL.Text := 'select isnull(ylzfy,0) yzlfy,' +
            ' isnull(zhzf,0) zhzf,isnull(tczf,0) tczf,isnull(qfx,0) qfx,isnull(blzf,0) blzf,isnull(jshye,0) jshye,isnull(qtzf,0) qtzf,' +
            ' isnull(qzf,0) qzf,isnull(bfzf,0) bfzf,isnull(grzf,0) grzf,isnull(bcylbxje,0) bcylbxje,isnull(xjzf,0) xjzf,' +
            ' isnull(dbbz,0) dbbz,  isnull(gwybxje,0) gwybxje, isnull(jbylbxje, 0) jbylbxje,isnull(mzbz,0) mzbz,isnull(kcbf,0) kcbf,' +
            ' isnull(dejzzc,0) dejzzc,isnull(bbzf,0) bbzf,isnull(lxzf,0) lxzf,isnull(scjrbz,0) scjrbz,isnull(ylgs,0) ylgs,'  +
            ' isnull(syjj,0) syjj,isnull(syejj,0) syejj,isnull(qtdy,0) qtdy,isnull(czjmtczf,0) czjmtczf,isnull(qslb,0) qslb'  +
            ' from sbjk_sbjs where zyh =' + #39 + zy_zyh + #39 + ' and yxbz = 1 and fylb = 1';
          qry_pub.Open;
        end;

        if qry_pub.RecordCount > 0 then
        begin
          GridppReport_jssqd.setParamVal('打印社保', '1');
          GridppReport_jssqd.setParamVal('起付线', FormatFloat('0.00', qry_pub.FieldByName('qfx').AsFloat));
          GridppReport_jssqd.setParamVal('帐户支付', FormatFloat('0.00', qry_pub.FieldByName('zhzf').AsFloat));
          GridppReport_jssqd.setParamVal('社保总费用', FormatFloat('0.00', qry_pub.FieldByName('yzlfy').AsFloat));
          GridppReport_jssqd.setParamVal('统筹支付', FormatFloat('0.00', qry_pub.FieldByName('tczf').AsFloat));
          GridppReport_jssqd.setParamVal('比例自付', FormatFloat('0.00', qry_pub.FieldByName('blzf').AsFloat));
          GridppReport_jssqd.setParamVal('账户余额', FormatFloat('0.00', qry_pub.FieldByName('jshye').AsFloat));
          GridppReport_jssqd.setParamVal('其他支付', FormatFloat('0.00', qry_pub.FieldByName('qtzf').AsFloat));
          GridppReport_jssqd.setParamVal('全自付', FormatFloat('0.00', qry_pub.FieldByName('qzf').AsFloat));
          GridppReport_jssqd.setParamVal('部分自付', FormatFloat('0.00', qry_pub.FieldByName('bfzf').AsFloat));
          GridppReport_jssqd.setParamVal('个人支付', FormatFloat('0.00', qry_pub.FieldByName('grzf').AsFloat));
          GridppReport_jssqd.setParamVal('补充医疗报销金额', FormatFloat('0.00', qry_pub.FieldByName('bcylbxje').AsFloat));
          GridppReport_jssqd.setParamVal('民政补助', FormatFloat('0.00', qry_pub.FieldByName('mzbz').AsFloat));
          GridppReport_jssqd.setParamVal('社保现金支付', FormatFloat('0.00', qry_pub.FieldByName('xjzf').AsFloat));
          GridppReport_jssqd.setParamVal('清算标志', qry_pub.FieldByName('qslb').AsString);//清算类别
          if (pub_yydm = '0240') or (pub_yydm = '0175') then
          begin
            GridppReport_jssqd.setParamVal('基本医疗报销金额', FormatFloat('0.00', qry_pub.FieldByName('jbylbxje').AsFloat));
            GridppReport_jssqd.setParamVal('大病补助', FormatFloat('0.00', qry_pub.FieldByName('dbbz').AsFloat));
            GridppReport_jssqd.setParamVal('公务员补助', FormatFloat('0.00', qry_pub.FieldByName('gwybxje').AsFloat));
          end;
          if pub_yydm = '0260' then
          begin
            GridppReport_jssqd.setParamVal('基本医疗报销金额', FormatFloat('0.00', qry_pub.FieldByName('jbylbxje').AsFloat));
            GridppReport_jssqd.setParamVal('大病补助', FormatFloat('0.00', qry_pub.FieldByName('dbbz').AsFloat));
            GridppReport_jssqd.setParamVal('公务员补助', FormatFloat('0.00', qry_pub.FieldByName('gwybxje').AsFloat));
            GridppReport_jssqd.setParamVal('城镇居民统筹支付', FormatFloat('0.00', qry_pub.FieldByName('czjmtczf').AsFloat));
            GridppReport_jssqd.setParamVal('农孕妇补助', FormatFloat('0.00', qry_pub.FieldByName('kcbf').AsFloat));
            GridppReport_jssqd.setParamVal('高额赔付', FormatFloat('0.00', qry_pub.FieldByName('dejzzc').AsFloat));
            GridppReport_jssqd.setParamVal('补充医疗补助', FormatFloat('0.00', qry_pub.FieldByName('bbzf').AsFloat));
            GridppReport_jssqd.setParamVal('离休干部补助', FormatFloat('0.00', qry_pub.FieldByName('lxzf').AsFloat));
            GridppReport_jssqd.setParamVal('老红军补助', FormatFloat('0.00', qry_pub.FieldByName('scjrbz').AsFloat));
            GridppReport_jssqd.setParamVal('医疗工伤报销', FormatFloat('0.00', qry_pub.FieldByName('ylgs').AsFloat));
            GridppReport_jssqd.setParamVal('生育基金补助', FormatFloat('0.00', qry_pub.FieldByName('syjj').AsFloat));
            GridppReport_jssqd.setParamVal('失业基金补助', FormatFloat('0.00', qry_pub.FieldByName('syejj').AsFloat));
            GridppReport_jssqd.setParamVal('其他补助', FormatFloat('0.00', qry_pub.FieldByName('qtdy').AsFloat));
          end;
        end
        else
        begin
          GridppReport_jssqd.setParamVal('打印社保', '0');
          GridppReport_jssqd.setParamVal('起付线', '');
          GridppReport_jssqd.setParamVal('帐户支付', '0');
          GridppReport_jssqd.setParamVal('社保总费用', '');
          GridppReport_jssqd.setParamVal('统筹支付', '0');
          GridppReport_jssqd.setParamVal('比例自付', '');
          GridppReport_jssqd.setParamVal('账户余额', '');
          GridppReport_jssqd.setParamVal('其他支付', '');
          GridppReport_jssqd.setParamVal('全自付', '');
          GridppReport_jssqd.setParamVal('部分自付', '');
          GridppReport_jssqd.setParamVal('个人支付', '');
          GridppReport_jssqd.setParamVal('补充医疗报销金额', '');
          GridppReport_jssqd.setParamVal('民政补助', '');
          GridppReport_jssqd.setParamVal('社保现金支付','');
          if pub_yydm = '0240' then
          begin
            GridppReport_jssqd.setParamVal('基本医疗报销金额','');
            GridppReport_jssqd.setParamVal('大病补助', '');
            GridppReport_jssqd.setParamVal('公务员报销金额','');
            GridppReport_jssqd.setParamVal('清算标志', '');//清算类别
          end;
          if pub_yydm = '0260' then
          begin
            GridppReport_jssqd.setParamVal('基本医疗报销金额', '');

            GridppReport_jssqd.setParamVal('大病补助', '');
            GridppReport_jssqd.setParamVal('公务员补助', '');
            GridppReport_jssqd.setParamVal('农孕妇补助', '');
            GridppReport_jssqd.setParamVal('城镇居民统筹支付', '');
            GridppReport_jssqd.setParamVal('高额赔付', '');
            GridppReport_jssqd.setParamVal('补充医疗补助', '');
            GridppReport_jssqd.setParamVal('离休干部补助', '');
            GridppReport_jssqd.setParamVal('老红军补助', '');
            GridppReport_jssqd.setParamVal('医疗工伤报销', '');
            GridppReport_jssqd.setParamVal('生育基金补助', '');
            GridppReport_jssqd.setParamVal('失业基金补助', '');
            GridppReport_jssqd.setParamVal('其他补助', '');
          end;
        end;
      end;
    except
    end;
    GridppReport_jssqd.ParameterByName('实际预交总额').Value := FormatFloat('0.00', sjyjze);
    GridppReport_jssqd.ParameterByName('预交总额').Value := FormatFloat('0.00', yjze);
    GridppReport_jssqd.ParameterByName('卡支付金额').Value := FormatFloat('0.00', zy_kzfje);
    GridppReport_jssqd.ParameterByName('优惠金额').Value := FormatFloat('0.00', yhje);
    GridppReport_jssqd.ParameterByName('入院日期').Value := zy_ryrq;
    GridppReport_jssqd.ParameterByName('出院日期').Value := StrToDateTime(cyrq);
    GridppReport_jssqd.ParameterByName('出生日期').Value := zy_csrq;
    GridppReport_jssqd.ParameterByName('病人地址').Value := zy_brdz;
    GridppReport_jssqd.ParameterByName('结算操作员').Value := pub_czyxm;
     if Assigned(GridppReport_jssqd.ParameterByName('结算日期')) then
    GridppReport_jssqd.ParameterByName('结算日期').Value := Frm_func.curr_date;
    GridppReport_jssqd.ParameterByName('十万').Value := sw;
    GridppReport_jssqd.ParameterByName('万').Value := w;
    GridppReport_jssqd.ParameterByName('千').Value := q;
    GridppReport_jssqd.ParameterByName('百').Value := b;
    GridppReport_jssqd.ParameterByName('拾').Value := s;
    GridppReport_jssqd.ParameterByName('元').Value := y;
    GridppReport_jssqd.ParameterByName('角').Value := j;
    GridppReport_jssqd.ParameterByName('分').Value := f;
    GridppReport_jssqd.setParamVal('统筹汇总', zy_tchz);
    GridppReport_jssqd.setParamVal('统筹汇总金额', zy_sbtcje);
    //单病种费用
    if Assigned(GridppReport_jssqd.ParameterByName('单病种费用金额')) then
      GridppReport_jssqd.ParameterByName('单病种费用金额').Value := FormatFloat('0.00', azy_dbzfyje);
    //单病种名称
    if Assigned(GridppReport_jssqd.ParameterByName('单病种名称')) then
      GridppReport_jssqd.ParameterByName('单病种名称').Value := azy_dbzmc;
    //统筹金额输入
    if Assigned(GridppReport_jssqd.ParameterByName('统筹金额输入')) then
      GridppReport_jssqd.ParameterByName('统筹金额输入').Value := azy_tcjesr;

       //优惠金额输入
    if Assigned(GridppReport_jssqd.ParameterByName('优惠金额输入')) then
      GridppReport_jssqd.ParameterByName('优惠金额输入').Value := azy_yhjesr;


    if (azy_dbzmc <> '') and ((pub_yydm = '0263') or (pub_yydm ='0264')) then  //德阳医院包干费用
    begin
      GridppReport_jssqd.ParameterByName('应退金额').Value := '';
      GridppReport_jssqd.ParameterByName('应补金额').Value :='';

      if (azy_dbzfyje - sjyjze -  zy_sbtcje > 0) then
      begin
        if pub_yydm<>'0269' then
        begin
          GridppReport_jssqd.ParameterByName('应补金额').Value := '补:' + FormatFloat('0.00', azy_dbzfyje - sjyjze -  zy_sbtcje );
        end else
        begin
          GridppReport_jssqd.ParameterByName('应补金额').Value := FormatFloat('0.00', azy_dbzfyje - sjyjze -  zy_sbtcje );
        end;
      // GridppReport_jssj.ParameterByName('应补金额').Value := '补:' + FormatFloat('0.00', azy_dbzfyje - sjyjze -  zy_sbtcje );
      end else if (azy_dbzfyje - sjyjze -  zy_sbtcje < 0) then
      begin
        if pub_yydm<>'0269' then
        begin
          GridppReport_jssqd.ParameterByName('应退金额').Value := '退:' + FormatFloat('0.00', abs(azy_dbzfyje - sjyjze -  zy_sbtcje) );
        end else
        begin
          GridppReport_jssqd.ParameterByName('应退金额').Value := FormatFloat('0.00', abs(azy_dbzfyje - sjyjze -  zy_sbtcje) );
        end;
      //GridppReport_jssj.ParameterByName('应退金额').Value := '退:' + FormatFloat('0.00', abs(azy_dbzfyje - sjyjze -  zy_sbtcje) );
      end;
    end ;
//
//    if azy_dbzfyje > 0 then
//    begin
//      if Assigned(GridppReport_jssj.ParameterByName('zy_dbzfyje')) then
//      GridppReport_jssj.ParameterByName('zy_dbzfyje').Value := FormatFloat('0.00', azy_dbzfyje);
//    end
//    else
//    begin
//      if Assigned(GridppReport_jssj.ParameterByName('zy_dbzfyje')) then
//      GridppReport_jssj.ParameterByName('zy_dbzfyje').Value := '';
//    end;

    if pub_yydm='0240' then
    begin
      fldxjeSw(sjyjze);
      GridppReport_jssqd.ParameterByName('预交十万').Value := sw;
      GridppReport_jssqd.ParameterByName('预交万').Value := w;
      GridppReport_jssqd.ParameterByName('预交千').Value := q;
      GridppReport_jssqd.ParameterByName('预交百').Value := b;
      GridppReport_jssqd.ParameterByName('预交拾').Value := s;
      GridppReport_jssqd.ParameterByName('预交元').Value := y;
      GridppReport_jssqd.ParameterByName('预交角').Value := j;
      GridppReport_jssqd.ParameterByName('预交分').Value := f;
    end;

    if pub_yydm='0246' then  //兴宁 查询住院导入数据
    begin
      DM_data.Qry_pub1.Close;
      DM_data.Qry_pub1.SQL.Text :=
        Format('select sum(sszje) je from zysf_mzsf_mzfymx where zyh=''%s''',[zy_zyh]);
      DM_data.Qry_pub1.Open;
      GridppReport_jssqd.setParamVal('门诊费用金额',DM_data.Qry_pub1.FieldByName('je').AsFloat);
    end;

    zyts := CalcZyts(formatdatetime('yyyy-mm-dd hh:mm:ss', zy_ryrq), cyrq);
    GridppReport_jssqd.ParameterByName('住院天数').Value := zyts;

    if (azy_dbzmc <> '') and ((pub_yydm = '0263') or (pub_yydm ='0264')) then  //德阳医院包干费用
    begin
      qry_kmdm.First;
      i := 1;
      if jssjBb.ord then
      begin
        while (not qry_kmdm.Eof) or (i <= 40) do
        begin
          try
            if (pub_yydm = '0263') or (pub_yydm= '0264') then  //德阳医院需要全部显示出大类
            begin
//              GridppReport_jssj.ParameterByName('大类名称' + IntToStr(i)).Value := Trim(qry_kmdm.FieldByName('kmmc').AsString);
//              if  Trim(qry_kmdm.FieldByName('kmmc').AsString) ='治疗费' then
//              begin
//                 GridppReport_jssj.ParameterByName('金额' + IntToStr(i)).Value := FormatFloat('0.00', azy_dbzfyje);
//              end else
//              begin
//                GridppReport_jssj.ParameterByName('金额' + IntToStr(i)).Value := '';
//              end;
              if sp_tj_fydl1.Locate('kmdm', qry_kmdm.FieldByName('kmdm').AsString, []) and
              not qry_kmdm.Eof then
              begin
                GridppReport_jssqd.ParameterByName('大类名称' + IntToStr(i)).Value := Trim(sp_tj_fydl1.FieldByName('kmmc').AsString);
                GridppReport_jssqd.ParameterByName('金额' + IntToStr(i)).Value := FormatFloat('0.00', sp_tj_fydl1.FieldByName('fyje').AsFloat);
                end else
              begin
                GridppReport_jssqd.ParameterByName('大类名称' + IntToStr(i)).Value := Trim(qry_kmdm.FieldByName('kmmc').AsString);
                GridppReport_jssqd.ParameterByName('金额' + IntToStr(i)).Value := '';
              end;
            end else
            begin
              GridppReport_jssqd.ParameterByName('大类名称' + IntToStr(i)).Value := '';
              GridppReport_jssqd.ParameterByName('金额' + IntToStr(i)).Value := '';
            end;
          except
            //ShowMessage( inttostr( i ) );
          end;
          qry_kmdm.Next;
          i := i + 1;
        end;
      end else
      begin
        i := 1;
        sp_tj_fydl1.First;
        while (not sp_tj_fydl1.Eof) or (i <= 40) do
        begin
          try
            if not sp_tj_fydl1.eof then
            begin
              GridppReport_jssqd.ParameterByName('大类名称' + IntToStr(i)).Value := Trim(sp_tj_fydl1.FieldByName('kmmc').AsString);
              GridppReport_jssqd.ParameterByName('金额' + IntToStr(i)).Value
                := FormatFloat('0.00', sp_tj_fydl1.FieldByName('fyje').AsFloat);
            end
            else
            begin
              GridppReport_jssqd.ParameterByName('大类名称' + IntToStr(i)).Value := '';
              GridppReport_jssqd.ParameterByName('金额' + IntToStr(i)).Value := '';
            end;
          except
            //ShowMessage( inttostr( i ) );
          end;
          sp_tj_fydl1.Next;
          i := i + 1;
        end;
      end;
    end else   //没有单病种费用，切不是德阳医院
    begin
      qry_kmdm.First;
      i := 1;
      if jssqdBb.ord then
      begin
        while (not qry_kmdm.Eof) or (i <= 40) do
        begin
          try
            if (pub_yydm = '0263') or  (pub_yydm = '0264')  then  //德阳医院需要全部显示出大类
            begin
//              GridppReport_jssj.ParameterByName('大类名称' + IntToStr(i)).Value := Trim(qry_kmdm.FieldByName('kmmc').AsString);
//              GridppReport_jssj.ParameterByName('金额' + IntToStr(i)).Value := '';
              if sp_tj_fydl1.Locate('kmdm', qry_kmdm.FieldByName('kmdm').AsString, []) and
              not qry_kmdm.Eof then
              begin
                GridppReport_jssqd.ParameterByName('大类名称' + IntToStr(i)).Value := Trim(sp_tj_fydl1.FieldByName('kmmc').AsString);
                GridppReport_jssqd.ParameterByName('金额' + IntToStr(i)).Value := FormatFloat('0.00', sp_tj_fydl1.FieldByName('fyje').AsFloat);
                end else
              begin
                GridppReport_jssqd.ParameterByName('大类名称' + IntToStr(i)).Value := Trim(qry_kmdm.FieldByName('kmmc').AsString);
                GridppReport_jssqd.ParameterByName('金额' + IntToStr(i)).Value := '';
              end;
            end else
            begin
              if sp_tj_fydl1.Locate('kmdm', qry_kmdm.FieldByName('kmdm').AsString, []) and
              not qry_kmdm.Eof then
              begin
                GridppReport_jssqd.ParameterByName('大类名称' + IntToStr(i)).Value := Trim(sp_tj_fydl1.FieldByName('kmmc').AsString);
                GridppReport_jssqd.ParameterByName('金额' + IntToStr(i)).Value := FormatFloat('0.00', sp_tj_fydl1.FieldByName('fyje').AsFloat);
                end else
              begin
                GridppReport_jssqd.ParameterByName('大类名称' + IntToStr(i)).Value := '';
                GridppReport_jssqd.ParameterByName('金额' + IntToStr(i)).Value := '';
              end;
            end;
          except
            //ShowMessage( inttostr( i ) );
          end;
          qry_kmdm.Next;
          i := i + 1;
        end;
      end else
      begin
        i := 1;
        sp_tj_fydl1.First;
        while (not sp_tj_fydl1.Eof) or (i <= 40) do
        begin
          try
            if not sp_tj_fydl1.eof then
            begin
              GridppReport_jssqd.ParameterByName('大类名称' + IntToStr(i)).Value := Trim(sp_tj_fydl1.FieldByName('kmmc').AsString);
              GridppReport_jssqd.ParameterByName('金额' + IntToStr(i)).Value
                := FormatFloat('0.00', sp_tj_fydl1.FieldByName('fyje').AsFloat);
            end else
            begin
              GridppReport_jssqd.ParameterByName('大类名称' + IntToStr(i)).Value := '';
              GridppReport_jssqd.ParameterByName('金额' + IntToStr(i)).Value := '';
            end;
          except
            //ShowMessage( inttostr( i ) );
          end;
          sp_tj_fydl1.Next;
          i := i + 1;
        end;
      end;
    end;
  except on e: Exception do
      ShowMessage(e.Message);
  end;
  res := frm_func.SetCReportXtcs(GridppReport_jssqd);
  if res <> '1' then
  begin
    ShowMessage(res);
  end
  else
  begin
{$IFDEF Maks}
{$ELSE}
    if v_IsPrinterJoin then
    begin
      if GridppReport_jssqd.Printer.PrinterName <> Printer.Printers[v_PrinterIndex_new] then
      begin

        GridppReport_jssqd.Printer.PrinterName := Printer.Printers[v_PrinterIndex_new];
      end;
    end;
{$ENDIF}

    GridppReport_jssqd.PrintPreview(False);

  end;

{$IFDEF Maks}
  Frm_Dyjgl.RevertDefaultPrinter;
{$ELSE}
  if v_IsPrinterJoin then
  begin
    if GridppReport_jssqd.Printer.PrinterName <> Printer.Printers[v_PrinterIndex_old] then
    begin
      GridppReport_jssqd.Printer.PrinterName := Printer.Printers[v_PrinterIndex_old];
    end;
  end;
  RevertPrinter;
{$ENDIF}
end;

//费用明细清单打印

function Tfrm_zysf_print_service.PrintFymx(sp_brjbxx, sp_fymx, sp_fydl, sp_yjmx: TADOStoredProc): string;
var
  Y: Integer;
  Local_I: Integer;
  k: Integer;
  _SubRep1: TGridppReport;
  _SubRep2: TGridppReport;
  _SubRep3: TGridppReport;
  prv_subrep4: TGridppReport;
  I: integer;
  prv_ryrq: TDateTime;
  prv_cyrq: Tdatetime;
  prv_cybz: boolean;
  prv_zyts: string;
begin
  prv_ryrq := sp_brjbxx.FieldByName('ryrq').AsDateTime;
  prv_cyrq := sp_brjbxx.FieldByName('cyrq').AsDateTime;
  //添加try避免没有打补丁的医院清单出错
  try
    prv_cybz := sp_brjbxx.FieldByName('cybz').AsBoolean;
    if prv_cybz then
    begin
      prv_zyts := '住院天数:' + Frm_func.func_jsts(FormatDateTime('yyyy-MM-dd HH:nn:ss', prv_ryrq),
        FormatDateTime('yyyy-MM-dd HH:nn:ss', prv_cyrq)) + '天';
    end
    else
    begin
      prv_zyts := '';
    end;
  except
  end;
  sp_brjbxx.First;
  sp_fymx.First;
  sp_fydl.First;
  sp_yjmx.First;
//  for I := 0 to GridppReportfymx.Parameters.Count - 1 do
//  begin
//    try
//      GridppReportfymx.Parameters[i].Value := '';
//    except
//
//    end;
//  end;

  //--------------------------------------------------------------
  if fymxBb = nil then
  begin
    fymxBb := TCusBb.Create;
    fymxBb.GetBbByDM(fymxBb, fymxdm);
    GridppReportfymx.LoadFromStr(fymxBb);
  end;

  try
    {$ifdef Maks}
    if username='sys_zysf' then
    begin
      GridppReportfymx.Printer.PrinterName := Frm_Dyjgl.ChangeDefaultPrinter(费用清单);
    end
    else
    begin

    end;

    {$ENDIF}
    for I := 0 to sp_brjbxx.FieldCount - 1 do
    begin

      GridppReportfymx.setParamVal(sp_brjbxx.Fields[i].FieldName,
        sp_brjbxx.Fields[i].Value);
//      try
//        GridppReportfymx.ParameterByName( sp_brjbxx.Fields[i].FieldName ).Value :=
//          sp_brjbxx.FieldByName( sp_brjbxx.Fields[i].FieldName ).Value;
//      except
//
//      end;
    end;
    try
      _SubRep1 := TGridppReport.Create(nil);
      GridppReportfymx.ControlByName('zysf_cx_yjmx').AsSubReport.Report := _SubRep1.DefaultInterface;

      _SubRep1.dataset := sp_yjmx;

    except

    end;
    try
      _SubRep2 := TGridppReport.Create(nil);
      GridppReportfymx.ControlByName('zysf_cx_cyjsdl_zdybb').AsSubReport.Report := _SubRep2.DefaultInterface;
      _SubRep2.dataset := sp_fydl;
    except

    end;
    try
      _SubRep3 := TGridppReport.Create(nil);
      GridppReportfymx.ControlByName('zysf_cx_cyjsdl_zdybb1').AsSubReport.Report := _SubRep3.DefaultInterface;
      _SubRep3.dataset := sp_fydl;
    except

    end;
    try
      prv_subrep4 := TGridppReport.Create(nil);
      GridppReportfymx.ControlByName('zysf_cx_fymx').AsSubReport.Report := prv_subrep4.DefaultInterface;
      prv_subrep4.dataset := sp_fymx;

    except

    end;
    GridppReportfymx.DataSet := sp_fymx;
    GridppReportFymx.setParamVal('zyts', prv_zyts);
//    try
//      GridppReportFymx.ParameterByName( 'zyts' ).Value := prv_zyts;
//    except
//    end;
  finally

  end;
  res := frm_func.SetCReportXtcs(GridppReportfymx);
  if res <> '1' then
  begin
    ShowMessage(res);
  end
  else
  begin
    GridppReportfymx.PrintPreview(true);
    {$ifdef Maks}
    if username='sys_zysf' then
    begin
      Frm_Dyjgl.RevertDefaultPrinter;
    end
    else
    begin

    end;
    {$ENDIF}
  end;

end;

//打印用药明细清单

function Tfrm_zysf_print_service.PrintYymx(sp_brjbxx, sp_yymx: TADOStoredProc; qfjyl: boolean): string;
var
  i: integer;
begin
  sp_brjbxx.first;
  sp_yymx.first;
  if yymxBb = nil then
  begin
    yymxBb := TCusBb.Create;
    yymxBb.GetBbByDM(yymxBb, yymxdm);
    GridppReportYymx.LoadFromStr(yymxBb);
  end;
  {$ifdef Maks}
    if username='sys_zysf' then
    begin
      GridppReportYymx.Printer.PrinterName := Frm_Dyjgl.ChangeDefaultPrinter(费用清单);
    end
    else
    begin

    end;
  {$ENDIF}
  for I := 0 to sp_brjbxx.FieldCount - 1 do
  begin
    try
      GridppReportYymx.setParamVal(sp_brjbxx.Fields[i].FieldName, sp_brjbxx.Fields[i].Value);
//      if Assigned(GridppReportYymx.ParameterByName( sp_brjbxx.Fields[i].FieldName )) then
//      GridppReportYymx.ParameterByName( sp_brjbxx.Fields[i].FieldName ).Value :=
//        sp_brjbxx.FieldByName( sp_brjbxx.Fields[i].FieldName ).Value;
    except

    end;
  end;
  try
    if qfjyl then
    begin
      GridppReportYymx.setParamVal('区分甲乙类', '是');
      //GridppReportYymx.ParameterByName( '区分甲乙类' ).Value := '是';
    end
    else
    begin
      GridppReportYymx.setParamVal('区分甲乙类', '否');
      //GridppReportYymx.ParameterByName( '区分甲乙类' ).Value := '否';
    end;
  except
  end;
  GridppReportYymx.DataSet := sp_yymx;

  res := frm_func.SetCReportXtcs(GridppReportYymx);
  if res <> '1' then
  begin
    ShowMessage(res);
  end
  else
  begin
    GridppReportYymx.PrintPreview(true);
    {$ifdef Maks}
    if username='sys_zysf' then
    begin
      Frm_Dyjgl.RevertDefaultPrinter;
    end
    else
    begin

    end;
    {$ENDIF}
    //GridppReportYymx.Print( false );
  end;
end;


function Tfrm_zysf_print_service.PrintLxd(sp_jbxx: TADOStoredProc; qry_lxd: TADOQuery): string;
var
  i: integer;
begin
  lxdBb := nil;
  if lxdBb = nil then
  begin
    lxdBb := TCusBb.Create;
    lxdBb.GetBbByDM(lxdBb, lxddm);
    gp_lxdbb.LoadFromStr(lxdBb);
  end;
  res := frm_func.SetCReportXtcs(gp_lxdbb);
  gp_lxdbb.ParameterByName('姓名').Value := '姓名:' + trim(sp_jbxx.FieldByName('brxm').AsString);
  gp_lxdbb.ParameterByName('住院号').Value := '住院号:' + trim(sp_jbxx.FieldByName('tmh').AsString);
  gp_lxdbb.ParameterByName('性别').Value := '性别:' + trim(sp_jbxx.FieldByName('brxb').AsString);
  gp_lxdbb.ParameterByName('科室名称').Value := '科室名称:' + trim(sp_jbxx.FieldByName('ksmc').AsString);
  gp_lxdbb.ParameterByName('床号').Value := '床号:' + trim(sp_jbxx.FieldByName('bch').AsString);
  gp_lxdbb.ParameterByName('申请成分血').Value := '申请成分血:' + trim(qry_lxd.FieldByName('BLOOD_TYPE_NAME').AsString);
  gp_lxdbb.ParameterByName('RH血型').Value := 'RH血型:' + trim(qry_lxd.FieldByName('Rh_Rh').AsString);
  gp_lxdbb.ParameterByName('输血总量').Value := '输血总量:' + trim(qry_lxd.FieldByName('BLOOD_SUM').AsString);
  gp_lxdbb.ParameterByName('单位').Value := trim(qry_lxd.FieldByName('BLOOD_UNIT').AsString);
  gp_lxdbb.ParameterByName('输血者血型').Value := '血型:' + trim(qry_lxd.FieldByName('PAT_BLOOD_GROUP').AsString);
  gp_lxdbb.ParameterByName('输血时间').Value := '输血时间:' + qry_lxd.FieldByName('TRANS_DATE').AsString;

  if res <> '1' then
  begin
    ShowMessage(res);
  end
  else
  begin
    gp_lxdbb.PrintPreview(true);
    //GridppReportYymx.Print( false );
  end;
end;

procedure Tfrm_zysf_print_service.Gen_SN(qry:TADOQuery; synr: TADOStoredProc);
var
  i: Integer;
begin
  // 未提交该补丁 空表不用 Create Table synr (ksrq int null,xmmc varchar(8000) null, yf varchar(20) null)
  qry.Close;
  qry.SQL.Text := 'select * from synr where 1<>1';
  try
    qry.Open;
  except
  end;
  i := 1;
  synr.First;
  while not synr.Eof do
  begin
    qry.Append;
    qry.FieldByName('ksrq').Value := i;
    qry.FieldByName('xmmc').Value := Trim(synr.FieldByName('xmmc').AsString);
    qry.FieldByName('yf').Value     := Trim(synr.FieldByName('yf').AsString);
    qry.Post;
    synr.Next;
    Inc(i);
  end;
end;


function Tfrm_zysf_print_service.Printsyjhd(sp_jbxx: TADOStoredProc; sp_synr: TADOStoredProc; rq: string): string;
var
  i: integer;
begin
  syjhdbb := nil;
  if syjhdbb = nil then
  begin
    syjhdbb := TCusBb.Create;
    syjhdbb.GetBbByDM(syjhdbb, syjhddm);
    gp_syjhd.LoadFromStr(syjhdbb);
  end;
  res := frm_func.SetCReportXtcs(gp_syjhd);

  if Assigned( gp_syjhd.ParameterByName('性别'))then
  gp_syjhd.ParameterByName('性别').value := '性别:'+trim(sp_jbxx.FieldByName('brxb').AsString);

  if Assigned( gp_syjhd.ParameterByName('年龄'))then
  gp_syjhd.ParameterByName('年龄').value := '年龄:'+trim(sp_jbxx.FieldByName('brnl').AsString);

  gp_syjhd.ParameterByName('姓名').Value := '姓名:' + trim(sp_jbxx.FieldByName('brxm').AsString);
  gp_syjhd.ParameterByName('住院号').Value := '住院号:' + trim(sp_jbxx.FieldByName('tmh').AsString);
  gp_syjhd.ParameterByName('科室名称').Value := '科室:' + pub_ksmc;
  gp_syjhd.ParameterByName('床号').Value := '床号:' + trim(sp_jbxx.FieldByName('bch').AsString);
   //   广元昭华医院护士工作站 输液单要求打印 病人诊断和滴速
  if Assigned( gp_syjhd.ParameterByName('入院诊断'))then
  gp_syjhd.ParameterByName('入院诊断').value := '入院诊断:'+trim(sp_jbxx.FieldByName('ryzd').AsString);
  if Assigned(gp_syjhd.ParameterByName('bz'))then
  gp_syjhd.ParameterByName('bz').Value :=  trim(sp_synr.FieldByName('bz').AsString);

  if pub_yydm = '0240' then
    gp_syjhd.ParameterByName('输液日期').Value := '打印日期:' + rq
  else
    gp_syjhd.ParameterByName('输液日期').Value := '输液日期:' + rq;

  if pub_yydm <> '0240' then
    gp_syjhd.DataSet := sp_synr
  else
  begin
    Gen_SN(DM_data.qry_pub, sp_synr);
    gp_syjhd.DataSet := DM_data.qry_pub;
  end;
  if res <> '1' then
  begin
    ShowMessage(res);
  end
  else
  begin
    if (gp_syjhd.Printer.PrinterName <> Printer.Printers[v_PrinterIndex_new]) and (v_IsPrinterJoin) then
    begin
      gp_syjhd.Printer.PrinterName := Printer.Printers[v_PrinterIndex_new];
    end;
    if pub_yydm='0271' then //掇刀医院预览
    begin
      gp_syjhd.PrintPreview(true);
    end else
    begin
      gp_syjhd.Print(False);
    end;
    //GridppReportYymx.Print( false );
  end;
  if (gp_syjhd.Printer.PrinterName <> Printer.Printers[v_PrinterIndex_old]) and (v_IsPrinterJoin) then
  begin
    gp_syjhd.Printer.PrinterName := Printer.Printers[v_PrinterIndex_old];
  end;

end;

//打印用药明细清单

function Tfrm_zysf_print_service.PrintZymx(sp_brjbxx, sp_zymx: TADOStoredProc): string;
var
  i: integer;
begin
  if sp_zymx.RecordCount > 0 then
  begin
    if zymxBb = nil then
    begin
      zymxBb := TCusBb.Create;
      zymxBb.GetBbByDM(zymxBb, zymxdm);
      GridppReportZymx.LoadFromStr(zymxBb);
    end;
    {$ifdef Maks}
    if username='sys_zysf' then
    begin
      GridppReportZymx.Printer.PrinterName := Frm_Dyjgl.ChangeDefaultPrinter(费用清单);
    end
    else
    begin

    end;

    {$ENDIF}
    for I := 0 to sp_brjbxx.FieldCount - 1 do
    begin
      try
        GridppReportZymx.setParamVal(sp_brjbxx.Fields[i].FieldName, sp_brjbxx.Fields[i].Value);
//        if Assigned(GridppReportZymx.ParameterByName( sp_brjbxx.Fields[i].FieldName )) then
//        GridppReportZymx.ParameterByName( sp_brjbxx.Fields[i].FieldName ).Value :=
//          sp_brjbxx.FieldByName( sp_brjbxx.Fields[i].FieldName ).Value;
      except

      end;
    end;

    GridppReportZymx.DataSet := sp_zymx;

    res := frm_func.SetCReportXtcs(GridppReportZymx);
    if res <> '1' then
    begin
      ShowMessage(res);
    end
    else
    begin
      GridppReportZymx.PrintPreview(true);
      {$ifdef Maks}
      Frm_Dyjgl.RevertDefaultPrinter;
      if username='sys_zysf' then
      begin
        Frm_Dyjgl.RevertDefaultPrinter;
      end
      else
      begin

      end;
      {$endif}
    end;
  end;
end;
//打印清单收据附件

function Tfrm_zysf_print_service.PrintSjfj(brxm, brnl, brxb, ryrq, cyrq, tmh,
  zyks, tbje, bch, fylb, zgys: string;
  zfy, zyj, jszj, zzhj: Real;
  sp_fydl, sp_fymx, sp_yymx: TADOStoredProc): string;
begin

end;

//打印费用明细汇总

function Tfrm_zysf_print_service.PrintFyhz(sp_brjbxx, sp_fyhz, sp_fydl, sp_yjmx: TADOStoredProc): string;
var
  Y: Integer;
  Local_I: Integer;
  k: Integer;
  _SubRep1: TGridppReport;
  _SubRep2: TGridppReport;
  _SubRep3: TGridppReport;
  I: integer;
  prv_ryrq: TDateTime;
  prv_cyrq: Tdatetime;
  prv_cybz: boolean;
  prv_zyts: string;
begin
  prv_ryrq := sp_brjbxx.FieldByName('ryrq').AsDateTime;
  prv_cyrq := sp_brjbxx.FieldByName('cyrq').AsDateTime;
  //添加try避免没有打补丁的医院清单出错
  try
    prv_cybz := sp_brjbxx.FieldByName('cybz').AsBoolean;
    if prv_cybz then
    begin
      prv_zyts := '住院天数:' + Frm_func.func_jsts(FormatDateTime('yyyy-MM-dd HH:nn:ss', prv_ryrq),
        FormatDateTime('yyyy-MM-dd HH:nn:ss', prv_cyrq)) + '天';
    end
    else
    begin
      prv_zyts := '';
    end;
  except
  end;
  //--------------------------------------------------------------
  if fyhzBb = nil then
  begin
    fyhzBb := TCusBb.Create;
    fyhzBb.GetBbByDM(fyhzBb, fyhzdm);
    GridppReportfyhz.LoadFromStr(fyhzBb);
  end;

  try

    for I := 0 to sp_brjbxx.FieldCount - 1 do
    begin
      try
        if Assigned(GridppReportfyhz.ParameterByName(sp_brjbxx.Fields[i].FieldName)) then
          GridppReportfyhz.ParameterByName(sp_brjbxx.Fields[i].FieldName).Value :=
            sp_brjbxx.FieldByName(sp_brjbxx.Fields[i].FieldName).Value;
      except
      end;
    end;

    try
      _SubRep1 := TGridppReport.Create(nil);
      if Assigned(GridppReportfyhz.ControlByName('zysf_cx_yjmx')) and
        Assigned(GridppReportfyhz.ControlByName('zysf_cx_yjmx').AsSubReport) then
        GridppReportfyhz.ControlByName('zysf_cx_yjmx').AsSubReport.Report := _SubRep1.DefaultInterface;

      _SubRep1.dataset := sp_yjmx;
    except
    end;
    try
      _SubRep2 := TGridppReport.Create(nil);
      if Assigned(GridppReportfyhz.ControlByName('zysf_cx_cyjsdl')) and
        Assigned(GridppReportfyhz.ControlByName('zysf_cx_cyjsdl').AsSubReport) then
        GridppReportfyhz.ControlByName('zysf_cx_cyjsdl').AsSubReport.Report := _SubRep2.DefaultInterface;
      _SubRep2.dataset := sp_fydl;
    except
    end;
    try
      _SubRep3 := TGridppReport.Create(nil);
      if Assigned(GridppReportfyhz.ControlByName('zysf_cx_cyjsdl1')) and
        Assigned(GridppReportfyhz.ControlByName('zysf_cx_cyjsdl1').AsSubReport) then
        GridppReportfyhz.ControlByName('zysf_cx_cyjsdl1').AsSubReport.Report := _SubRep3.DefaultInterface;
      _SubRep3.dataset := sp_fydl;
    except

    end;
    GridppReportfyhz.DataSet := sp_fyhz;

  finally

  end;
  try
    if Assigned(GridppReportfyhz.ParameterByName('zyts')) then
      GridppReportfyhz.ParameterByName('zyts').Value := prv_zyts;
  except
  end;
  res := frm_func.SetCReportXtcs(GridppReportfyhz);
  if res <> '1' then
  begin
    ShowMessage(res);
  end
  else
  begin
    GridppReportfyhz.PrintPreview(true);
  end;

end;


{-------------------------------------------------------------------------------
  过程名:    Tfrm_zysf_print_service.PrintddyyFyhz
  作者:      yangshuai
  日期:      2017.09.27
  参数:      sp_fyhz, sp_yjmx: TADOStoredProc
  返回值:    string
-------------------------------------------------------------------------------}
function Tfrm_zysf_print_service.PrintddyyFyhz(sp_fyhz, sp_yjmx: TADOStoredProc): string;
var
  _SubRep1: TGridppReport;
begin

  //--------------------------------------------------------------
  if fydddyyhzBb = nil then
  begin
    fydddyyhzBb := TCusBb.Create;
    fydddyyhzBb.GetBbByDM(fydddyyhzBb, fyddyyhzdm);
    GridppReportddyyFyhz.LoadFromStr(fydddyyhzBb);
  end;

  try

//    for I := 0 to sp_brjbxx.FieldCount - 1 do
//    begin
//      try
//        if Assigned(GridppReportfyhz.ParameterByName(sp_brjbxx.Fields[i].FieldName)) then
//          GridppReportfyhz.ParameterByName(sp_brjbxx.Fields[i].FieldName).Value :=
//            sp_brjbxx.FieldByName(sp_brjbxx.Fields[i].FieldName).Value;
//      except
//      end;
//    end;

    try
      _SubRep1 := TGridppReport.Create(nil);
      if Assigned(GridppReportddyyFyhz.ControlByName('zdybb_cx_brfyqdyp')) and
        Assigned(GridppReportddyyFyhz.ControlByName('zdybb_cx_brfyqdyp').AsSubReport) then
        GridppReportddyyFyhz.ControlByName('zdybb_cx_brfyqdyp').AsSubReport.Report := _SubRep1.DefaultInterface;

      _SubRep1.dataset := sp_yjmx;
    except
    end;
    GridppReportddyyFyhz.DataSet := sp_fyhz;
  finally

  end;

  res := frm_func.SetCReportXtcs(GridppReportddyyFyhz);
  if res <> '1' then
  begin
    ShowMessage(res);
  end
  else
  begin
    GridppReportddyyFyhz.PrintPreview(true);
  end;

end;

//打印用药明细汇总

function Tfrm_zysf_print_service.PrintYyhz(sp_brjbxx, sp_yyhz: TADOStoredProc): string;
var
  Y: Integer;
  Local_I: Integer;
  k: Integer;
  _SubRep1: TGridppReport;
  _SubRep2: TGridppReport;
  I: integer;
  prv_ryrq: TDateTime;
  prv_cyrq: Tdatetime;
  prv_cybz: boolean;
  prv_zyts: string;
begin
  prv_ryrq := sp_brjbxx.FieldByName('ryrq').AsDateTime;
  prv_cyrq := sp_brjbxx.FieldByName('cyrq').AsDateTime;
  //添加try避免没有打补丁的医院清单出错
  try
    prv_cybz := sp_brjbxx.FieldByName('cybz').AsBoolean;
    if prv_cybz then
    begin
      prv_zyts := '住院天数:' + Frm_func.func_jsts(FormatDateTime('yyyy-MM-dd HH:nn:ss', prv_ryrq),
        FormatDateTime('yyyy-MM-dd HH:nn:ss', prv_cyrq)) + '天';
    end
    else
    begin
      prv_zyts := '';
    end;
  except
  end;
//  for I := 0 to GridppReportyyhz.Parameters.Count - 1 do
//  begin
//    try
//      GridppReportyyhz.Parameters[i].Value := '';
//    except
//
//    end;
//  end;
  //--------------------------------------------------------------
  if yyhzBb = nil then
  begin
    yyhzBb := TCusBb.Create;
    yyhzBb.GetBbByDM(yyhzBb, yyhzdm);
    GridppReportyyhz.LoadFromStr(yyhzBb);
  end;

  for I := 0 to sp_brjbxx.FieldCount - 1 do
  begin
    try
      if Assigned(GridppReportyyhz.ParameterByName(sp_brjbxx.Fields[i].FieldName)) then
        GridppReportyyhz.ParameterByName(sp_brjbxx.Fields[i].FieldName).Value :=
          sp_brjbxx.FieldByName(sp_brjbxx.Fields[i].FieldName).Value;
    except

    end;
  end;
  try
    if Assigned(GridppReportyyhz.ParameterByName('zyts')) then
      GridppReportyyhz.ParameterByName('zyts').Value := prv_zyts;
  except
  end;
  try
    GridppReportyyhz.DataSet := sp_yyhz;
  except

  end;

  res := frm_func.SetCReportXtcs(GridppReportyyhz);
  if res <> '1' then
  begin
    ShowMessage(res);
  end
  else
  begin
    GridppReportyyhz.PrintPreview(true);
  end;

end;


function Tfrm_zysf_print_service.Commonprint(sjj,cs: TCustomADODataSet;bbdm:string): string;
var
  i:Integer;
  TmpCusBB: TCusBb; //运输申请单
begin
  TmpCusBB := TCusBb.Create;
  TmpCusBB.GetBbByDM(TmpCusBB, bbdm);
  gr_commonprint.LoadFromStr(TmpCusBB);
  TmpCusBB.Free;
  if Assigned(cs) and cs.Active and (not cs.Eof) then
  begin
    for I := 0 to cs.FieldCount - 1 do
    begin
      gr_commonprint.setParamVal(cs.Fields[i].FieldName,cs.Fields[i].Value);
    end;
  end;
  gr_commonprint.DataSet := sjj;
  res := frm_func.SetCReportXtcs(gr_commonprint);
  if res <> '1' then
  begin
    ShowMessage(res);
  end
  else
  begin
    gr_commonprint.PrintPreview(true);
  end;
end;




//一日清单

function Tfrm_zysf_print_service.PrintYrqd(brxm, bch, rq, tmh, zy_bqmc: string;
  zfy, zyj, ye: Real; sp_yrqd, sp_yymx, sp_clmx: TADOStoredProc): string;
var
  Y: Integer;
  Local_I: Integer;
  k: Integer;
  _SubRep1: TGridppReport;
  _SubRep2: TGridppReport;
  _SubRep3: TGridppReport;
  I: integer;
  reportHeader:IGRReportHeader;
begin
  //--------------------------------------------------------------
  if yrqdBb = nil then
  begin
    yrqdBb := TCusBb.Create;
    yrqdBb.GetBbByDM(yrqdBb, yrqddm);
    GridppReportYrqd.LoadFromStr(yrqdBb);
  end;

  try
    GridppReportYrqd.ParameterByName('病人姓名').Value := brxm;
    GridppReportYrqd.ParameterByName('床号').Value := bch;
    GridppReportYrqd.ParameterByName('日期').Value := rq;
    GridppReportYrqd.ParameterByName('清单截止日期总费用').Value := zfy;
    GridppReportYrqd.ParameterByName('预交').Value := zyj;
    GridppReportYrqd.ParameterByName('住院号').Value := tmh;
    GridppReportYrqd.ParameterByName('余额').Value := ye;
//    GridppReportYrqd.ParameterByName('住院病区').Value := zy_bqmc;
    GridppReportYrqd.ParameterByName('当前病区名称').Value := zy_bqmc;
    GridppReportYrqd.DataSet := sp_clmx;
  except

  end;
  try
    if sp_yrqd=nil then
    begin
      reportHeader:=GridppReportYrqd.ReportHeader[1];
      reportHeader.Height:=0;
      reportHeader.Visible:=false;
      reportHeader:=GridppReportYrqd.ReportHeader[2];
      reportHeader.Height:=0;
      reportHeader.Visible:=false;
    end
    else
    begin
      reportHeader:=GridppReportYrqd.ReportHeader[1];
      reportHeader.Height:=1.8;
      reportHeader.Visible:=True;
      reportHeader:=GridppReportYrqd.ReportHeader[2];
      reportHeader.Height:=1.2;
      reportHeader.Visible:=True;
      _SubRep1 := TGridppReport.Create(nil);
      GridppReportYrqd.ControlByName('zysf_cx_brrsqd').AsSubReport.Report := _SubRep1.DefaultInterface;
      _SubRep1.dataset := sp_yrqd;
    end;

  except

  end;
  try
    _SubRep2 := TGridppReport.Create(nil);
    GridppReportYrqd.ControlByName('zysf_cx_brrsqd_yymx').AsSubReport.Report := _SubRep2.DefaultInterface;
    _SubRep2.dataset := sp_yymx;
    if (sp_yymx=nil) or (sp_yymx.RecordCount = 0)   then
    begin
      if pub_yydm = '0271' then  //掇刀医院加材料子报表需要显示出来报表头
      begin
        reportHeader:=GridppReportYrqd.ReportHeader[3];
        reportHeader.Height:=1.6;
        if pub_yydm = '0240' then
        reportHeader.Visible:=False
        else
        reportHeader.Visible:=True;
        reportHeader:=GridppReportYrqd.ReportHeader[4];
        reportHeader.Height:=3;
        reportHeader.Visible:=True;
        GridppReportYrqd.ControlByName('zysf_cx_brrsqd_yymx').AsSubReport.Visible := true;
      end else
      begin
        reportHeader:=GridppReportYrqd.ReportHeader[3];
        reportHeader.Height:=0;
        reportHeader.Visible:=false;
        reportHeader:=GridppReportYrqd.ReportHeader[4];
        reportHeader.Height:=0;
        reportHeader.Visible:=false;
        GridppReportYrqd.ControlByName('zysf_cx_brrsqd_yymx').AsSubReport.Visible := false;
      end;
    end
    else
    begin
      reportHeader:=GridppReportYrqd.ReportHeader[3];
      reportHeader.Height:=1.6;
      if pub_yydm = '0240' then
        reportHeader.Visible:=False
      else
        reportHeader.Visible:=True;
      reportHeader:=GridppReportYrqd.ReportHeader[4];
      reportHeader.Height:=3;
      reportHeader.Visible:=True;
      GridppReportYrqd.ControlByName('zysf_cx_brrsqd_yymx').AsSubReport.Visible := true;
    end;
  except
  end;

  if pub_yydm = '0271' then         //掇刀医院 打印材料
  begin
    try
      _SubRep3 := TGridppReport.Create(nil);
      if Assigned( GridppReportYrqd.ControlByName('zysf_cx_brrsqd_clmx')) then
      begin
        GridppReportYrqd.ControlByName('zysf_cx_brrsqd_clmx').AsSubReport.Report := _SubRep3.DefaultInterface;
        _SubRep3.dataset := sp_clmx;
      end;

      if (sp_clmx=nil) or (sp_clmx.RecordCount = 0)   then
      begin
        reportHeader:=GridppReportYrqd.ReportHeader[5];
        reportHeader.Height:=0;
        reportHeader.Visible:=false;
//        reportHeader:=GridppReportYrqd.ReportHeader[6];
//        reportHeader.Height:=0;
//        reportHeader.Visible:=false;
        GridppReportYrqd.ControlByName('zysf_cx_brrsqd_clmx').AsSubReport.Visible := false;
      end
      else
      begin
      //  reportHeader:=GridppReportYrqd.ReportHeader[5];
        reportHeader:=GridppReportYrqd.ReportHeader[6];
        reportHeader.Height:=3;
        reportHeader.Visible:=True;
        GridppReportYrqd.ControlByName('zysf_cx_brrsqd_clmx').AsSubReport.Visible := true;
      end;
    except
    end;
//    ShowMessage('设置自适应');
//    GridppReportYrqd.Set_PrintAsDesignPaper(true);
//    GridppReportYrqd.set_p
//    GridppReportYrqd.Set_PrintToStretch(True);
  end;

  try
    reportHeader:=GridppReportYrqd.ReportHeader[5];   //隐藏
    reportHeader.Height:=0;
    reportHeader.Visible:=false;
  except

  end;

  res := frm_func.SetCReportXtcs(GridppReportYrqd);
  if res <> '1' then
  begin
    ShowMessage(res);
  end
  else
  begin
   if pub_yydm = '0271' then         //掇刀医院 打印材料
   begin
     GridppReportYrqd.Print(false);
//     GridppReportYrqd.PrintPreview( true );
   end else
   begin
     GridppReportYrqd.Print(false);
   end;
    //GridppReportYrqd.PrintPreview( true );

  end;
end;


{-------------------------------------------------------------------------------
  过程名:    Tfrm_zysf_print_service.Print_ddyy_CountYrqd
  作者:      yangshuai
  日期:      2017.09.26
  参数:      sp_yrqd_PrintData: TADOStoredProc
  返回值:    string
-------------------------------------------------------------------------------}
function Tfrm_zysf_print_service.Print_ddyy_CountYrqd(sp_yrqd_PrintData: TADOStoredProc): string;
var
  Y: Integer;
  Local_I: Integer;
  k: Integer;
  I: integer;

begin
  //--------------------------------------------------------------
  if yrqdBb = nil then
  begin
    ddyy_yrqdBb := TCusBb.Create;
    ddyy_yrqdBb.GetBbByDM(ddyy_yrqdBb, ddyyyrqddm);
    GridppReportddyyYrqd.LoadFromStr(ddyy_yrqdBb);
  end;

  try
//    GridppReportYrqd.ParameterByName('病人姓名').Value := brxm;
//    GridppReportYrqd.ParameterByName('床号').Value := bch;
//    GridppReportYrqd.ParameterByName('日期').Value := rq;
//    GridppReportYrqd.ParameterByName('清单截止日期总费用').Value := zfy;
//    GridppReportYrqd.ParameterByName('预交').Value := zyj;
//    GridppReportYrqd.ParameterByName('住院号').Value := tmh;
//    GridppReportYrqd.ParameterByName('余额').Value := ye;
////    GridppReportYrqd.ParameterByName('住院病区').Value := zy_bqmc;
//    GridppReportYrqd.ParameterByName('当前病区名称').Value := zy_bqmc;
    GridppReportddyyYrqd.DataSet := sp_yrqd_PrintData;
  except

  end;
  res := frm_func.SetCReportXtcs(GridppReportddyyYrqd);
  if res <> '1' then
  begin
    ShowMessage(res);
  end
  else
  begin
   GridppReportddyyYrqd.PrintPreview( true );
  end;
end;

function Tfrm_zysf_print_service.CalcZyts(ryrq: string; var cyrq: string): string;
var
  zyts: string;
  v_ryrq: string;
  v_cyrq: string;
begin
  zyts := '';
  if (cyrq < ryrq) or (cyrq = '') then
  begin
    cyrq := '';
    zyts := floattostr(trunc(Frm_func.curr_date - StrToDateTime(ryrq)));
  end
  else
  begin
    v_ryrq := Copy(ryrq, 1, 10) + ' 00:00:00';
    v_cyrq := Copy(cyrq, 1, 10) + ' 00:00:00';
    zyts := floattostr(trunc(StrToDateTime(v_cyrq) - StrToDateTime(v_ryrq)));
  end;
  Result := zyts;
end;

//金额 小写转为大写 方法

procedure Tfrm_zysf_print_service.fldxjeSw(zy_zfy: real);
var
  zje: string;
  s1, s2, sw1: string;
  i: integer;
begin
  zje := NumberToMoney(zy_zfy);
  sW := '';
  W := '';
  Q := '';
  B := '';
  S := '';
  Y := '';
  j := '';
  F := '';
  s2 := floattostr(zy_zfy);
  if pos('.', s2) = 0 then
    s2 := s2 + '.00'
  else
    if length(copy(s2, pos('.', s2) + 1, 2)) < 2 then
      s2 := s2 + stringofchar('0', 2 - length(copy(s2, pos('.', s2) + 1, 2)));
  s2 := stringofchar('0', 7 - pos('.', s2)) + s2;
  for i := 0 to 8 do
    if s2[I + 1] <> '.' then
      s1 := s1 + dxsz[strtoint(s2[i + 1])];

  if pos('万', zje) <> 0 then
  begin
    sw1 := copy(zje, 1, pos('万', zje) + 1);
    if pos('拾', sw1) <> 0 then
    begin
      sw := copy(sw1, 1, pos('拾', sw1) - 1);
      delete(sw1, 1, pos('拾', sw1) + 1);
    end
    else
      sw := '零';
    if copy(sw1, 1, pos('万', sw1) - 1)='' then
    begin
      w := s1[3] + s1[4];
    end else
    begin
      w := copy(sw1, 1, pos('万', sw1) - 1);
    end;
    delete(zje, 1, pos('万', zje) + 1);
  end
  else
  begin
    sw := '零';
    w := '零';
  end;
  q := s1[5] + s1[6];
  b := s1[7] + s1[8];
  s := s1[9] + s1[10];
  y := s1[11] + s1[12];
  j := s1[13] + s1[14];
  f := s1[15] + s1[16]
end;

procedure Tfrm_zysf_print_service.FormCreate(Sender: TObject);
begin
  frxrprt_yjsj.Register('QFAKG4JZVX24');
end;

procedure Tfrm_zysf_print_service.frxrprt_jffpGetValue(const VarName: string;
  var Value: Variant);
begin
  try
    if Pos('.', VarName) = 0 then
    begin
      value := trim(qry_bl_jfsj.FieldByName(VarName).AsString);
    end;
  except

  end;
end;

procedure Tfrm_zysf_print_service.frxrprt_jssjGetValue(const VarName: string;
  var Value: Variant);
begin
  try
    if Pos('.', VarName) = 0 then
    begin
      value := trim(qry_bl_jssj.FieldByName(VarName).AsString);
    end;
  except

  end;
end;

procedure Tfrm_zysf_print_service.frxrprt_yjsjGetValue(const VarName: string;
  var Value: Variant);
begin
  try
    if Pos('.', VarName) = 0 then
    begin
      value := trim(qry_bl_yjsj.FieldByName(VarName).AsString);
    end;
  except

  end;
end;


procedure Tfrm_zysf_print_service.CalcFy(sp_fymx: TADOStoredProc);
begin
  //------------------calmhawk---计算----------
  sp_fymx.DisableControls;
  try
    sp_fymx.First;
    zfy_fy := 0;
    zfhj_fy := 0;
    while not sp_fymx.Eof do
    begin
      if Trim(sp_fymx.FieldByName('cfbh').AsString) = '' then
      begin
        zfy_fy := zfy_fy + sp_fymx.FieldByName('fyje').AsFloat;
        zfhj_fy := zfhj_fy + sp_fymx.FieldByName('zfje').AsFloat;
      end;
      sp_fymx.Next;
    end;
  finally
    sp_fymx.EnableControls;
  end;

  //---------------------------------------
end;

procedure Tfrm_zysf_print_service.CalcYp(SP_yymx: TADOStoredProc; lb: string);
begin
  //------------------calmhawk---计算----------
  try
    SP_yymx.DisableControls;
    SP_yymx.First;
    jlhj := 0;
    ylhj := 0;
    zfhj_yp := 0;
    while not SP_yymx.Eof do
    begin
      if lb = 'z' then
      begin
        zfhj_yp := 0;
        sp_yymx.First;
        while not sp_yymx.Eof do
        begin
          zfhj_yp := zfhj_yp + sp_yymx.FieldByName('cfje').AsFloat;
          sp_yymx.Next;
        end;
      end
      else
      begin
        if Trim(SP_yymx.FieldByName('yplb').AsString) = '甲类' then
        begin
          jlhj := jlhj + SP_yymx.FieldByName('cfje').AsFloat;
        end
        else
          if Trim(SP_yymx.FieldByName('yplb').AsString) = '乙类' then
          begin
            ylhj := ylhj + SP_yymx.FieldByName('cfje').AsFloat;
          end
          else
            if SP_yymx.FieldByName('ypdj').AsFloat <> 0.00 then
            begin
              zfhj_yp := zfhj_yp + SP_yymx.FieldByName('cfje').AsFloat;
            end;
      end;
      SP_yymx.Next;
    end;

  finally
    SP_yymx.EnableControls;
  end;
  //---------------------------------------
end;

procedure Tfrm_zysf_print_service.printtyjp(zy_ksmc,zy_brxm,zy_brxb,zy_brnl,zy_zyh,zy_tfxm:string; zy_tyjje:real) ;
///打印作废预交退费单
var
  wan,qian,bai,shi,yuan,jiao,fen:string;
  moneys: array[0..1] of string;
  temp_tyjje:Integer;
  Present: TDateTime;
  Year, Month, Day:Word;
begin
  FreeAndNil(tyjbb);
  //--------------------------------------------------------------
  if tyjbb = nil then
  begin
    tyjbb := TCusBb.Create;
    tyjbb.GetBbByDM(tyjbb, tyjpj);
    gp_tyjbb.LoadFromStr(tyjbb);
  end;
   gp_tyjbb.ParameterByName('科室').Value := trim(zy_ksmc);
   gp_tyjbb.ParameterByName('姓名').Value := trim(zy_brxm);
   gp_tyjbb.ParameterByName('性别').Value := trim(zy_brxb);
   gp_tyjbb.ParameterByName('年龄').Value := zy_brnl;
   gp_tyjbb.ParameterByName('住院号').Value := trim(zy_zyh);
   gp_tyjbb.ParameterByName('退费项目').Value := trim(zy_tfxm);
   gp_tyjbb.ParameterByName('退费金额').Value := zy_tyjje;
   //年、月、日
   Present:= frm_func.curr_date;
   DecodeDate(Present, Year, Month, Day);
   gp_tyjbb.ParameterByName('年').Value := inttostr(Year);
   gp_tyjbb.ParameterByName('月').Value := inttostr(Month);
   gp_tyjbb.ParameterByName('日').Value := inttostr(Day);

   ///获取，'万、千、百、拾、元、角、分'
   temp_tyjje := strToInt(FloatToStr(zy_tyjje * 100));
   wan := IntToStr(temp_tyjje div 1000000);
   temp_tyjje := temp_tyjje mod 1000000;
   qian := IntTostr(temp_tyjje div 100000);
   temp_tyjje := temp_tyjje mod 100000;
   bai := IntToStr(temp_tyjje div 10000);
   temp_tyjje := temp_tyjje mod 10000;
   shi := IntToStr(temp_tyjje div 1000);
   temp_tyjje := temp_tyjje mod 1000;
   yuan :=  IntToStr(temp_tyjje div 100);  
   temp_tyjje := temp_tyjje mod 100;
   jiao := IntToStr(temp_tyjje div 10);
   fen := IntToStr(temp_tyjje mod 10);

   gp_tyjbb.ParameterByName('万').Value := wan;
   gp_tyjbb.ParameterByName('仟').Value := qian;
   gp_tyjbb.ParameterByName('佰').Value := bai;
   gp_tyjbb.ParameterByName('拾').Value := shi;
   gp_tyjbb.ParameterByName('元').Value := yuan;
   gp_tyjbb.ParameterByName('角').Value := jiao;
   gp_tyjbb.ParameterByName('分').Value := fen;


   //当前操作员
   gp_tyjbb.ParameterByName('操作员').Value := pub_czyxm;

   gp_tyjbb.Print(False);

end;

procedure Tfrm_zysf_print_service.printPathway(zyh: string);
begin
  FreeAndNil(PathRep);
  //--------------------------------------------------------------
  if PathRep = nil then
  begin
    PathRep := TCusBb.Create;
    PathRep.GetBbByDM(PathRep, PathRepCode);
    gpPathRep.LoadFromStr(PathRep);
  end;

  with DM_data.qry_pub do
  begin
    Close;
    SQL.Clear;
    SQL.Text := 'EXEC dbo.GetPathwaySummary @zyh = ' + #39 + zyh + #39;
    Open;
    if RecordCount < 1 then
    begin
      Exit;
    end;
  end;

 if Assigned(gpPathRep.ParameterByName('住院号')) then
 begin
    gpPathRep.ParameterByName('住院号').Value := trim(zyh);
 end;


  if Assigned(gpPathRep.ParameterByName('路径名称')) then
  begin
      gpPathRep.ParameterByName('路径名称').Value :=
              trim(DM_data.qry_pub.FieldByName('路径名称').AsString);
  end;


  if Assigned(gpPathRep.ParameterByName('条码号')) then
  begin
      gpPathRep.ParameterByName('条码号').Value :=
              trim(DM_data.qry_pub.FieldByName('条码号').AsString);
  end;


  if Assigned(gpPathRep.ParameterByName('适用对象')) then
  begin
    gpPathRep.ParameterByName('适用对象').Value :=
              trim(DM_data.qry_pub.FieldByName('适用对象').AsString);
  end;


  if Assigned(gpPathRep.ParameterByName('标准住院天数')) then
  begin
      gpPathRep.ParameterByName('标准住院天数').Value :=
              trim(DM_data.qry_pub.FieldByName('标准住院天数').AsString);
  end;


  if Assigned(gpPathRep.ParameterByName('姓名')) then
  begin
      gpPathRep.ParameterByName('姓名').Value :=
              trim(DM_data.qry_pub.FieldByName('姓名').AsString);
  end;


  if Assigned(gpPathRep.ParameterByName('性别')) then
  begin
       gpPathRep.ParameterByName('性别').Value :=
              trim(DM_data.qry_pub.FieldByName('性别').AsString);
  end;


  if Assigned(gpPathRep.ParameterByName('年龄')) then
  begin
    gpPathRep.ParameterByName('年龄').Value :=
              trim(DM_data.qry_pub.FieldByName('年龄').AsString);
  end;


  if Assigned(gpPathRep.ParameterByName('入院日期')) then
  begin
      gpPathRep.ParameterByName('入院日期').Value :=
              trim(DM_data.qry_pub.FieldByName('入院日期').AsString);
  end;


  if Assigned(gpPathRep.ParameterByName('出院日期')) then
  begin
      gpPathRep.ParameterByName('出院日期').Value :=
              trim(DM_data.qry_pub.FieldByName('出院日期').AsString);
  end;


  with DM_data.qry_pub do
  begin
    Close;
    SQL.Clear;
    SQL.Text := 'EXEC dbo.GetPathwayDetials @zyh = ' + #39 + zyh + #39;
    Open;
  end;
  gpPathRep.ConnectionString:=GlbConnectionStr;
  gpPathRep.DataSet := DM_data.qry_pub;
  gpPathRep.Print(False);
end;

procedure Tfrm_zysf_print_service.PrintSpireLamella(Name, Gender, Age, OfcName,
  CardNo, BedNo: string; PrtType: SpireLamellaType=slNormal);
begin
  case PrtType of
    slChildren:
    begin
      FreeAndNil(ChildSpireLamellaRep);
      if ChildSpireLamellaRep = nil then
      begin
        ChildSpireLamellaRep := TCusBb.Create;
        ChildSpireLamellaRep.GetBbByDM(ChildSpireLamellaRep, ChildSpireLamellaCode);
        gpSpireLamellaCHild.LoadFromStr(ChildSpireLamellaRep);
      end;
      DM_data.qry_pub.close;
      DM_data.qry_pub.SQL.text:='select * from sys_ksdm where rtrim(mc)='+''''+ pub_ksmc + '''';
      DM_data.qry_pub.Open;
      if DM_data.qry_pub.FieldByName('kssx').AsString='06' then
      begin
        {$ifdef Maks}
        gpSpireLamellaCHild.Printer.PrinterName := Frm_Dyjgl.ChangeDefaultPrinter(腕带);
        {$ENDIF}
      end
      else
      begin
        v_PrinterIndex_old := Printer.PrinterIndex;
        v_PrinterIndex_new := func_GetPrinterIndex( 6, v_IsPrinterJoin );
        if (gpSpireLamellaCHild.Printer.PrinterName <> Printer.Printers[v_PrinterIndex_new]) and (v_IsPrinterJoin) then
        begin
          gpSpireLamellaCHild.Printer.PrinterName := Printer.Printers[v_PrinterIndex_new];
        end;
      end;
      gpSpireLamellaCHild.ParameterByName('姓名').Value := Name;
      gpSpireLamellaCHild.ParameterByName('性别').Value := Gender;
      gpSpireLamellaCHild.ParameterByName('年龄').Value := Age;
      gpSpireLamellaCHild.ParameterByName('科室').Value := OfcName;
      gpSpireLamellaCHild.ParameterByName('住院号').Value := CardNo;
      gpSpireLamellaCHild.ParameterByName('传入医院名称').Value := pub_yymc;
      gpSpireLamellaCHild.ParameterByName('病床号').Value := BedNo;
      gpSpireLamellaCHild.Print(False);
    end;
    slNormal:
    begin
      FreeAndNil(SpireLamellaRep);
      if SpireLamellaRep = nil then
      begin
        SpireLamellaRep := TCusBb.Create;
        SpireLamellaRep.GetBbByDM(SpireLamellaRep, SpireLamellaCode);
        gpSpireLamella.LoadFromStr(SpireLamellaRep);
      end;
      DM_data.qry_pub.close;
      DM_data.qry_pub.SQL.text:='select * from sys_ksdm where rtrim(mc)='+''''+ pub_ksmc + '''';
      DM_data.qry_pub.Open;
      if DM_data.qry_pub.FieldByName('kssx').AsString='06' then
      begin
        {$ifdef Maks}
        gpSpireLamella.Printer.PrinterName := Frm_Dyjgl.ChangeDefaultPrinter(腕带);
        {$ENDIF}
      end
      else
      begin
        v_PrinterIndex_old := Printer.PrinterIndex;
        v_PrinterIndex_new := func_GetPrinterIndex( 6, v_IsPrinterJoin );
        if (gpSpireLamella.Printer.PrinterName <> Printer.Printers[v_PrinterIndex_new]) and (v_IsPrinterJoin) then
        begin
          gpSpireLamella.Printer.PrinterName := Printer.Printers[v_PrinterIndex_new];
        end;
      end;
      gpSpireLamella.ParameterByName('姓名').Value := Name;
      gpSpireLamella.ParameterByName('性别').Value := Gender;
      gpSpireLamella.ParameterByName('年龄').Value := Age;
      gpSpireLamella.ParameterByName('科室').Value := OfcName;
      gpSpireLamella.ParameterByName('住院号').Value := CardNo;
      gpSpireLamella.ParameterByName('传入医院名称').Value := pub_yymc;
      gpSpireLamella.ParameterByName('病床号').Value := BedNo;
      gpSpireLamella.Print(False);
    end;
  end;
end;

procedure Tfrm_zysf_print_service.PrtPatsTransSheet(Diagnosis, Way, Date,
DiagType, DoctorName: string; QryCheckDetials: TADOQuery);
begin
  FreeAndNil(TransportRep);
  //--------------------------------------------------------------
  if TransportRep = nil then
  begin
    TransportRep := TCusBb.Create;
    TransportRep.GetBbByDM(TransportRep, TransportCode);
    gpTransportRep.LoadFromStr(TransportRep);
  end;

  gpTransportRep.ParameterByName('入院诊断').Value := Diagnosis;
  gpTransportRep.ParameterByName('运输方式').Value := Way;
  gpTransportRep.ParameterByName('医嘱日期').Value := Date;
  gpTransportRep.ParameterByName('类别').Value := DiagType;
  gpTransportRep.ParameterByName('开单医生').Value := DoctorName;
  gpTransportRep.ConnectionString:=GlbConnectionStr;
  gpTransportRep.DataSet := QryCheckDetials;
  gpTransportRep.Print(False);
end;

procedure Tfrm_zysf_print_service.PrintJYSQD(zyh,yzid :string;
    kdrq: TDateTime; isJC:Boolean);
begin
  sp_jysqddy.Close;
  sp_jysqddy.Parameters.Refresh;
  sp_jysqddy.Parameters.ParamByName('@zyh').value := zyh;
  sp_jysqddy.Parameters.ParamByName('@kssqrq').value := kdrq;
  sp_jysqddy.Parameters.ParamByName('@bqdm').value := pub_bqdm;
  sp_jysqddy.Parameters.ParamByName('@czydm').value := pub_czydm;
  sp_jysqddy.Parameters.ParamByName('@yzid').value := yzid;
  sp_jysqddy.Open;
  if username = 'sys_bqgl' then
  begin
    v_PrinterIndex_old := Printer.PrinterIndex;
    v_PrinterIndex_new := func_GetPrinterIndex(5, v_IsPrinterJoin);
  end;
  if not sp_jysqddy.isempty then
  begin
    if jysqdBb = nil then
    begin
      jysqdBb := TCusBb.Create;
      jysqdBb.GetBbByDM(jysqdBb, jysqddm);
      gp_jysqd.LoadFromStr(jysqdBb);
    end;
    gp_jysqd.DataSet := nil;
    gp_jysqd.DataSet := sp_jysqddy;
    if isJC then
      gp_jysqd.ParameterByName('是否急查').Value := '急查'
    else
      gp_jysqd.ParameterByName('是否急查').Value := '';
    res := frm_func.SetCReportXtcs(gp_jysqd);
    if res <> '1' then
    begin
      ShowMessage(res);
    end
    else
    begin
      if username = 'sys_bqgl' then
      begin
        if (gp_jysqd.Printer.PrinterName <> Printer.Printers[v_PrinterIndex_new]) then
        begin
          gp_jysqd.Printer.PrinterName := Printer.Printers[v_PrinterIndex_new];
        end;
      end;
      gp_jysqd.PrintPreview(false);
    end;
  end;
end;

procedure Tfrm_zysf_print_service.PrintJCSQD(zyh,yzid: string;
    kdrq: TDateTime; isJC:Boolean);
begin
  sp_jcsqddy.ProcedureName := 'zdybb_dzbl_jcsqd';
  sp_jcsqddy.Close;
  sp_jcsqddy.Parameters.Refresh;
  if nil <> sp_jcsqddy.Parameters.FindParam('@szyh') then
  begin
    sp_jcsqddy.Parameters.ParamByName('@szyh').value := zyh;
  end;
  if nil <> sp_jcsqddy.Parameters.FindParam('@dsqsj') then
  begin
    sp_jcsqddy.Parameters.ParamByName('@dsqsj').value := kdrq;
  end;
  if nil <> sp_jcsqddy.Parameters.FindParam('@sczydm') then
  begin
    sp_jcsqddy.Parameters.ParamByName('@sczydm').value := pub_czydm;
  end;
  if nil <> sp_jcsqddy.Parameters.FindParam('@syzid') then
  begin
    sp_jcsqddy.Parameters.ParamByName('@syzid').value := yzid;
  end;
  if nil <> sp_jcsqddy.Parameters.FindParam('@zyh') then
  begin
    sp_jcsqddy.Parameters.ParamByName('@zyh').value := zyh;
  end;
  if nil <> sp_jcsqddy.Parameters.FindParam('@kdrq') then
  begin
    sp_jcsqddy.Parameters.ParamByName('@kdrq').value := kdrq;
  end;
  if nil <> sp_jcsqddy.Parameters.FindParam('@czks') then
  begin
    sp_jcsqddy.Parameters.ParamByName('@czks').value := pub_ksdm;
  end;

  sp_jcsqddy.Open;
  if username = 'sys_bqgl' then
  begin
    v_PrinterIndex_old := Printer.PrinterIndex;
    v_PrinterIndex_new := func_GetPrinterIndex(5, v_IsPrinterJoin);
  end;
  if not sp_jcsqddy.isempty then
  begin
    jcsqdBb := TCusBb.Create;
    if jcsqdBb.GetBbByDM(jcsqdBb, jcsqddm) = '' then
    begin
      Application.MessageBox('找不到检查申请单报表！' + #13#10 +
        '请制作检查申请单自定义报表，并导入系统。', '警告', MB_OK +
        MB_ICONINFORMATION);
      exit;
    end;
    gp_jcsqd.LoadFromStr(jcsqdBb);
    gp_jcsqd.DataSet := nil;
    gp_jcsqd.DataSet := sp_jcsqddy;
    if Assigned(gp_jcsqd.ParameterByName('是否急查')) then
    begin
      if isJC then
        gp_jcsqd.ParameterByName('是否急查').Value := '急查'
      else
        gp_jcsqd.ParameterByName('是否急查').Value := '';
    end;
    res := frm_func.SetCReportXtcs(gp_jcsqd);
    if res <> '1' then
      ShowMessage(res)
    else
    begin
      if username = 'sys_bqgl' then
      begin
        if (gp_jcsqd.Printer.PrinterName <>
          Printer.Printers[v_PrinterIndex_new]) then
        begin
          //Proc_ChangePrinter( v_PrinterIndex_new, True );
          gp_jcsqd.Printer.PrinterName :=
            Printer.Printers[v_PrinterIndex_new];
        end;
      end;
      gp_jcsqd.PrintPreview(false);
    end;
  end;
end;

 {检查单 单独条码打印}
procedure Tfrm_zysf_print_service.printjcdtm(dyjxh:Integer;sp_jcsq: TADOStoredProc);
var olddyj:Integer;
begin
  //先打印条码

      if Assigned(sp_jcsq) and (sp_jcsq.RecordCount>0) then
    begin
      if jcsqdtmdyBb = nil then
      begin
        jcsqdtmdyBb := TCusBb.Create;
        jcsqdtmdyBb.GetBbByDM(jcsqdtmdyBb, jcsqdtmdydm);
        gp_jcsqdtmdy.LoadFromStr(jcsqdtmdyBb);
      end;
      gp_jcsqdtmdy.DataSet := sp_jcsq;
      olddyj:=Printer.PrinterIndex;
      gp_jcsqdtmdy.Printer.PrinterName := Printer.Printers[dyjxh];
      gp_jcsqdtmdy.Print(False);
      gp_jcsqdtmdy.Printer.PrinterName := Printer.Printers[olddyj];
    end;
end;



//过程zybl_zyyz_cx_jcsqd
procedure Tfrm_zysf_print_service.PrintJCSQD(sp_jcsq: TADOStoredProc);
begin

  if Assigned(sp_jcsq) and (sp_jcsq.RecordCount>0) then
  begin
    FreeAndNil(cqsyxskBb);
    if cqsyxskBb = nil then
    begin
      cqsyxskBb := TCusBb.Create;
      cqsyxskBb.GetBbByDM(cqsyxskBb, jcsqddm_sy);
      gpPub.LoadFromStr(cqsyxskBb);
    end;
    gpPub.DataSet := sp_jcsq;
    if (gpPub.Printer.PrinterName <> Printer.Printers[v_PrinterIndex_new]) and (v_IsPrinterJoin) then
    begin
      gpPub.Printer.PrinterName := Printer.Printers[v_PrinterIndex_new];
    end;
    gpPub.Print(False);

    if (gpPub.Printer.PrinterName <> Printer.Printers[v_PrinterIndex_old]) and (v_IsPrinterJoin) then
    begin
      gpPub.Printer.PrinterName := Printer.Printers[v_PrinterIndex_old];
    end;
  end;
end;

procedure Tfrm_zysf_print_service.PrintJYSQD(sp_jysq: TADOStoredProc);
begin
   if Assigned(sp_jysq) and (sp_jysq.RecordCount>0) then
  begin
    FreeAndNil(cqsyxskBb);
    if cqsyxskBb = nil then
    begin
      cqsyxskBb := TCusBb.Create;
      cqsyxskBb.GetBbByDM(cqsyxskBb, jysqddm_sy);
      gpPub.LoadFromStr(cqsyxskBb);
    end;
    gpPub.DataSet := sp_jysq;
    if (gpPub.Printer.PrinterName <> Printer.Printers[v_PrinterIndex_new]) and (v_IsPrinterJoin) then
    begin
      gpPub.Printer.PrinterName := Printer.Printers[v_PrinterIndex_new];
    end;
    gpPub.Print(False);

    if (gpPub.Printer.PrinterName <> Printer.Printers[v_PrinterIndex_old]) and (v_IsPrinterJoin) then
    begin
      gpPub.Printer.PrinterName := Printer.Printers[v_PrinterIndex_old];
    end;
  end;
end;

procedure Tfrm_zysf_print_service.PrintCQLSSYXSK(adoquery1: TADOQuery; rq: string; lqls:TCQLS);
begin
  {$REGION '加载报表'}
  FreeAndNil(cqsyxskBb);
  if cqsyxskBb = nil then
  begin
    cqsyxskBb := TCusBb.Create;
    if lqls = clLongTerm then
      cqsyxskBb.GetBbByDM(cqsyxskBb, cqsyxskdm)
    else
      cqsyxskBb.GetBbByDM(cqsyxskBb, lssyxskdm);
    gpSYXSK.LoadFromStr(cqsyxskBb);
  end;
  gpSYXSK.DataSet := adoquery1;
  if (gpSYXSK.Printer.PrinterName <> Printer.Printers[v_PrinterIndex_new]) and (v_IsPrinterJoin) then
  begin
    gpSYXSK.Printer.PrinterName := Printer.Printers[v_PrinterIndex_new];
  end;
  gpSYXSK.Print(False);

  if (gpSYXSK.Printer.PrinterName <> Printer.Printers[v_PrinterIndex_old]) and (v_IsPrinterJoin) then
  begin
    gpSYXSK.Printer.PrinterName := Printer.Printers[v_PrinterIndex_old];
  end;
end;

procedure Tfrm_zysf_print_service.Printsypq(sp_syfz: TADOStoredProc; bch: string; brxm: string; zyh: string; tmh: string; brxb: string; brnl: string;zxrq:string);
begin
//  if pub_yydm='0271' then
//  begin
//    ChangePrinter(7);
//  end;
 FreeAndNil(sypq);
  if sypq = nil then
  begin
    sypq := TCusBb.Create;
    sypq.GetBbByDM(sypq, sypq_na);
    gr_sypq.LoadFromStr(sypq);
  end;
  if Assigned( gr_sypq.ParameterByName('bch')) then
    gr_sypq.ParameterByName('bch').value:=bch;
  if Assigned( gr_sypq.ParameterByName('brxm')) then
    gr_sypq.ParameterByName('brxm').value:=brxm;
  if Assigned( gr_sypq.ParameterByName('zyh')) then
    gr_sypq.ParameterByName('zyh').value:=zyh;
  if Assigned( gr_sypq.ParameterByName('tmh')) then
    gr_sypq.ParameterByName('tmh').value:=tmh;
  if Assigned( gr_sypq.ParameterByName('brxb')) then
    gr_sypq.ParameterByName('brxb').value:=brxb;
  if Assigned( gr_sypq.ParameterByName('brnl')) then
   gr_sypq.ParameterByName('brnl').value:=brnl;
  if Assigned( gr_sypq.ParameterByName('zxrq')) then
   gr_sypq.ParameterByName('zxrq').value:=zxrq;
   
  gr_sypq.DataSet := sp_syfz;
    res := frm_func.SetCReportXtcs(gr_sypq);
    if res <> '1' then
    begin
      ShowMessage(res);
    end
    else
    begin
      if pub_yydm='0271' then
      begin
        if (gr_sypq.Printer.PrinterName <> Printer.Printers[v_PrinterIndex_new]) then
        begin
           gr_sypq.Printer.PrinterName := Printer.Printers[v_PrinterIndex_new];
        end;
      end else
      begin
        if username = 'sys_bqgl' then
        begin
        if (gr_sypq.Printer.PrinterName <> Printer.Printers[v_PrinterIndex_new]) then
        begin
        gr_sypq.Printer.PrinterName := Printer.Printers[v_PrinterIndex_new];
        end;
        end;
      end;
      gr_sypq.print(false);
//      if pub_yydm='0271' then
//      begin
//         Proc_ChangePrinter(v_PrinterIndex_old, True);  //打印机还原
//      end;
    end;

end;

//一卡通扣费收据打印


{-------------------------------------------------------------------------------
  过程名:    Tfrm_zysf_print_service.print_zysf_yktkf
  作者:      yangshuai
  日期:      2016.04.23
  参数:      qry_fymx:TCustomADODataSet;tmh,brxm,sfrq,czy,sjbh:string
  返回值:    无
-------------------------------------------------------------------------------}
procedure Tfrm_zysf_print_service.print_zysf_yktkf(qry_fymx:TCustomADODataSet;tmh,brxm,sfrq,czy,sjbh:string);
begin
  if zysfyktkf = nil then
  begin
    try
      zysfyktkf := TCusBb.Create;
      zysfyktkf.GetBbByDM(zysfyktkf, yktkksjdm);
      gp_yktkksj.LoadFromStr(zysfyktkf.nr);
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

procedure Tfrm_zysf_print_service.printjysqd_dy(sp_jysq: TADOStoredProc);
begin
  if Assigned(sp_jysq) and (sp_jysq.RecordCount>0) then
  begin
    FreeAndNil(jysqdbb_dy);
    if jysqdbb_dy = nil then
    begin
      jysqdbb_dy := TCusBb.Create;
      jysqdbb_dy.GetBbByDM(jysqdbb_dy, jysqdbbdm_dy);
      gpjysqd_dy.LoadFromStr(jysqdbb_dy);
    end;
    gpjysqd_dy.DataSet := sp_jysq;
    gpjysqd_dy.PrintPreview(False);
  end;

end;

procedure Tfrm_zysf_print_service.print_jssjdy(v_tmh,v_zyh,v_zyks,v_zyts,v_brxm,v_brxb,v_sjbh,v_brnl,v_fylb,v_ryrq:string;v_cyrq:TDateTime;v_xyf,v_zyf,v_cyf,v_zcf,v_jcf,v_ssf,v_sxf,v_zlf,v_clf,v_hlf,v_cwf,v_qt,v_zje:real);
begin

    FreeAndNil(zysfjsdBb);
    if zysfjsdBb = nil then
    begin
      zysfjsdBb := TCusBb.Create;
      zysfjsdBb.GetBbByDM(zysfjsdBb, zysfjsdm);
      gp_zysfjsd.LoadFromStr(zysfjsdBb);
    end;
      try
        if Assigned(gp_zysfjsd.ParameterByName('条码号')) then
          gp_zysfjsd.ParameterByName('条码号').Value := v_tmh;
        if Assigned(gp_zysfjsd.ParameterByName('住院号')) then
          gp_zysfjsd.ParameterByName('住院号').Value := v_zyh;
        if Assigned(gp_zysfjsd.ParameterByName('科室名称')) then
          gp_zysfjsd.ParameterByName('科室名称').Value := v_zyks;
        if Assigned(gp_zysfjsd.ParameterByName('入院日期')) then
          gp_zysfjsd.ParameterByName('入院日期').Value := v_ryrq;
        if Assigned(gp_zysfjsd.ParameterByName('出院日期')) then
          gp_zysfjsd.ParameterByName('出院日期').Value := v_cyrq;
        if Assigned(gp_zysfjsd.ParameterByName('住院天数')) then
          gp_zysfjsd.ParameterByName('住院天数').Value := v_zyts;
        if Assigned(gp_zysfjsd.ParameterByName('病人姓名')) then
          gp_zysfjsd.ParameterByName('病人姓名').Value := v_brxm;
        if Assigned(gp_zysfjsd.ParameterByName('费用类别')) then
          gp_zysfjsd.ParameterByName('费用类别').Value := v_fylb;
        if Assigned(gp_zysfjsd.ParameterByName('病人性别')) then
          gp_zysfjsd.ParameterByName('病人性别').Value := v_brxb;
        if Assigned(gp_zysfjsd.ParameterByName('收据编号')) then
          gp_zysfjsd.ParameterByName('收据编号').Value := v_sjbh;
        if Assigned(gp_zysfjsd.ParameterByName('病人年龄')) then
          gp_zysfjsd.ParameterByName('病人年龄').Value := v_brnl;
        if Assigned(gp_zysfjsd.ParameterByName('西药费')) then
          gp_zysfjsd.ParameterByName('西药费').Value := v_xyf;
        if Assigned(gp_zysfjsd.ParameterByName('中药费')) then
          gp_zysfjsd.ParameterByName('中药费').Value := v_zyf;
        if Assigned(gp_zysfjsd.ParameterByName('成药费')) then
          gp_zysfjsd.ParameterByName('成药费').Value := v_cyf;
        if Assigned(gp_zysfjsd.ParameterByName('诊查费')) then
          gp_zysfjsd.ParameterByName('诊查费').Value := v_zcf;
        if Assigned(gp_zysfjsd.ParameterByName('检查费')) then
          gp_zysfjsd.ParameterByName('检查费').Value := v_jcf;
        if Assigned(gp_zysfjsd.ParameterByName('手术费')) then
          gp_zysfjsd.ParameterByName('手术费').Value := v_ssf;
        if Assigned(gp_zysfjsd.ParameterByName('输血费')) then
          gp_zysfjsd.ParameterByName('输血费').Value := v_sxf;
        if Assigned(gp_zysfjsd.ParameterByName('治疗费')) then
          gp_zysfjsd.ParameterByName('治疗费').Value := v_zlf;
        if Assigned(gp_zysfjsd.ParameterByName('材料费')) then
          gp_zysfjsd.ParameterByName('材料费').Value := v_clf;
        if Assigned(gp_zysfjsd.ParameterByName('护理费')) then
          gp_zysfjsd.ParameterByName('护理费').Value := v_hlf;
        if Assigned(gp_zysfjsd.ParameterByName('床位费')) then
          gp_zysfjsd.ParameterByName('床位费').Value := v_cwf;
        if Assigned(gp_zysfjsd.ParameterByName('其它')) then
          gp_zysfjsd.ParameterByName('其它').Value := v_qt;
        if Assigned(gp_zysfjsd.ParameterByName('总费用')) then
          gp_zysfjsd.ParameterByName('总费用').Value := v_zje;
      except on e: Exception do
        ShowMessage(e.Message);
      end;
      res := frm_func.SetCReportXtcs(gp_zysfjsd);
      if res <> '1' then
      begin
        ShowMessage(res);
      end
      else
      begin
        gp_zysfjsd.Print(False);
      end;
end;

end.

