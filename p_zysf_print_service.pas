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

{�������}
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
    kfyzxddy: TGridppReport; //��������ҽԺ ��ʿ����վ �ڷ�ҩִ�е�ѡ���ӡ
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
    procedure Gen_SN(qry: TADOQuery;synr: TADOStoredProc); //������Һ�������

    { Private declarations }
  public
        v_PrinterIndex_new:Integer;
        v_IsPrinterJoin:Boolean;
   //property v_PrinterIndex_new: Integer read Fv_PrinterIndex_new write Fv_PrinterIndex_new;
   // property v_PrinterIndex_old: Integer read Fv_PrinterIndex_old write Fv_PrinterIndex_old;
    /// <summary>
    /// ������ӡ���������ڼ��߹����Զ��屨����ӡ
    /// </summary>
    /// <param name="sjj">�������ݼ�</param>
    /// <param name="cs">��������</param>
    /// <param name="bbdm">��������</param>
    /// <returns></returns>
    function Commonprint(sjj,cs: TCustomADODataSet;bbdm:string): string;
    procedure printjssj(zy_zyh, zy_sjbh, zy_brxm,
      zy_brxb, zy_brnl, zy_ksmc, zy_bch, zy_fylb, zy_tmh, zy_tchz: string; zy_zfy, zy_ytjejs, zy_ybjejs, zy_ytje, zy_ybje,
      zy_sbzfje, zy_sbtcje, sjyjze, yjze, zy_kzfje, yhje: real; zy_ryrq, zy_cyrq: Tdatetime;
      zy_csrq: string = '2007-12-12'; zy_brdz: string = ''; sp_tj_fydl1: TADOStoredProc = nil;
      qry_sbjsb: TADOQuery = nil; sp_sebrqk: TADOStoredProc = nil;zy_bah:string='';
      zy_nhfmbz:Real=0.00;zy_mzjzzh:string = '';azy_dbzfyje:real=0.00;azy_dbzmc:string='';azy_tcjesr:real=0.00;ts_jsfs:string='';azy_yhjesr:string='';a_zhzf:string='';a_jmjesr:real=0.00;a_dbjesr:real=0.00);
   //��ӡ���뵥
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
    function PrintddyyFyhz(sp_fyhz, sp_yjmx: TADOStoredProc): string;  //�޵�ҽԺ���û���
    function PrintYyhz(sp_brjbxx, sp_yyhz: TADOStoredProc): string;
    function PrintYrqd(brxm, bch, rq, tmh, zy_bqmc: string; zfy, zyj, ye: Real; sp_yrqd, sp_yymx, sp_clmx: TADOStoredProc): string;
    function Print_ddyy_CountYrqd(sp_yrqd_PrintData: TADOStoredProc): string;//�޵�ҽԺһ���嵥
    function PrintLxd(sp_jbxx: TADOStoredProc; qry_lxd: TADOQuery): string;
    procedure printzycfd(Qry_zb: TADOQuery; sp_mx : TADOStoredProc);//��ӡ��ҩ������
        procedure printzyzyfyd(sp_zb: TCustomADODataSet; sp_mx: TCustomADODataSet; _ylbz: boolean); //סԺ��ҩ���䵥
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

    {�����ӡ}
    procedure PrintSpireLamella(Name, Gender, Age, OfcName, CardNo, BedNo: string;
      PrtType: SpireLamellaType=slNormal);

    procedure printXyfplfy(adosp: TADOStoredProc);

    procedure dysyddy(sp_zxjl_cq_dy,sp_jbxx:TADOStoredProc; qry_pub:TADOQuery;asyjhTitle:string );
    {���˼���������뵥��ӡ}
    procedure PrtPatsTransSheet(Diagnosis, Way, Date, DiagType, DoctorName: string;
      QryCheckDetials: TADOQuery);

    { ��ӡ�������뵥 }
    procedure PrintJYSQD(
        zyh,
        yzid:string; {������Ҫ��ӡ�ļ���ҽ����ҽ��id��','����ƴ�Ӷ���}
        kdrq: TDateTime; {��������}
        isJC:Boolean {Ϊtrue ��ʾ����}
    ); overload;
    procedure PrintJYSQD(sp_jysq: TADOStoredProc); overload;
    procedure printjysqd_dy(sp_jysq: TADOStoredProc);

    //�Ļ���ҽԺ���߲����վݸ�����ӡ
    procedure Printzxbrsjfj_dy(qry_sjfj:TADOQuery);

    //�Ļ���ҽԺ����ԱԤ����ϸ��ӡ
    procedure Printczyyjmx_dy(sp_czyyjmx:TADOStoredProc);

    //�Ļ���ҩ������ӡ
    procedure sh_zycfpldy(Qry_zb: TADOQuery; sp_mx : TADOStoredProc);

    //�Ļ���ҽԺ���˽�����ϸ
    procedure Printcybrjsmx_dy(sp_cyjsrb:TADOStoredProc;sbgltj,tjrq:string);

    { ��ӡ������뵥 }
    procedure PrintJCSQD(zyh,yzid:string;kdrq: TDateTime; isJC:Boolean);  overload;
    procedure PrintJCSQD(sp_jcsq: TADOStoredProc); overload;
    { Public declarations }
    {��ӡԤ������ϸ��¼}
    procedure printYJJMX(Inadoquer:TADOQuery;czy:string;startrq,endrq:string);
    {---------------------}
        {��������ҽԺ��ʿ����վ�ڷ�ҩִ�е�ѡ���ӡ}
    procedure print_kfyzxddy(sp_dryz:TADOStoredProc;yymc,brxm,bch,brxb,brnl,nf:string);
    {��������ҽԺ��ʿ����վ����ע�䵥��ӡ}
    procedure print_cqzsddy(sp_dryz:TADOStoredProc;yymc,brxm,bch,brxb,brnl,nf:string);
    {��������ҽԺ��ʿ����վ��ʱע�䵥��ӡ}
    procedure print_lszsddy(sp_dryz:TADOStoredProc;yymc,brxm,bch,brxb,brnl,nf:string);
    {-------------------------------------}
    procedure PrintCQLSSYXSK(adoquery1: TADOQuery; rq: string; lqls:TCQLS);
    {----------}
    {ȫ�ݼ�������ӡ}
    procedure printjyjgdy(sp_jyjg:TADOQuery;dy:Boolean);
    {��鵥 ���������ӡ}
    procedure printjcdtm(dyjxh:Integer;sp_jcsq: TADOStoredProc);
    procedure proc_print_tjtj(sp_cktj:TADOStoredProc;sjstr:string);
    procedure Printsypq(sp_syfz:TADOStoredProc;bch:string;brxm:string;zyh:string;tmh:string;brxb:string;brnl:string;zxrq:string);
    procedure print_zysf_yktkf(qry_fymx:TCustomADODataSet;tmh,brxm,sfrq,czy,sjbh:string); //סԺ�շ�һ��ͨ�۷�
    procedure print_hsgzz_plcfmxdy(qry_cfmx:TADOStoredProc;tmh,brxm,brnl,brxb,bch,ksmc,zgysmc,cfbh,pldh:string);//�׺�  ��ʿ����վ ����������ϸ��ӡ
    procedure print_yzzxddy(sp_jbxx: TADOStoredProc; sp_synr: TADOStoredProc; zxrq: string);// �����ж޵�����ҽԺ ҽ��ִ�е���ӡ
    procedure print_jssjdy(v_tmh,v_zyh,v_zyks,v_zyts,v_brxm,v_brxb,v_sjbh,v_brnl,v_fylb,v_ryrq:string;v_cyrq:TDateTime;v_xyf,v_zyf,v_cyf,v_zcf,v_jcf,v_ssf,v_sxf,v_zlf,v_clf,v_hlf,v_cwf,v_qt,v_zje:real);//̨ɽסԺ�շ�ֱ�ӽ���
    procedure print_ywsrsjdy(v_mc,v_sjqzh,v_jzrq,v_dyrq,v_tfsjh,v_cwsj,v_sfydm,v_ssje,v_dxje,v_cd:string);
     //���ɽ��㱨����ӡ
    procedure printddzycnjsbbdy(ajzrq:TDateTime;sp_maindata, sp_mxdata: TADOStoredProc;ylbz:Boolean);
    procedure print_ylaqsjbgb(tmh :string); //ҽ�ư�ȫ�¼������
    procedure print_jytmzdy(fzh: string);  //���������Զ��屨��
  end;

var
  frm_zysf_print_service: Tfrm_zysf_print_service;

  sl: Tstringlist;
  ts: TMemoryStream;

  v_PrinterIndex_new: Integer;
  v_PrinterIndex_old: Integer;
  sbzfdybz: Boolean;
  sw, w, q, b, s, y, j, f: string;
  zfy_fy, zfhj_fy: real; //����ҩƷ�ܷ��� ,����ҩƷ���Է�
  jlhj, ylhj, zfhj_yp: real; //�ס��ҡ��ԷѺϼ�

  res: string;

  yjsjBb: TCusBb; //Ԥ���վݱ�������
  jfsjBb: TCusBb; //�Ƿ��վݱ�������
  jssjBb: TCusBb; //�����վݱ�������
  fymxBb: TCusBb; //������ϸ��������
  yymxBb: TCusBb; //��ҩ��ϸ��������
  zymxBb: TCusBb; //��ҩ��ϸ��������
  sjfjBb: TCusBb; //�վݸ�����������
  fyhzBb: TCusBb; //���û��ܱ�������
  fydddyyhzBb: TCusBb; //�޵�ҽԺ���û��ܱ�������
  yyhzBb: TCusBb; //��ҩ���ܱ�������
  yrqdBb: TCusBb; //סԺ����һ���嵥
  ddyy_yrqdBb: TCusBb; //�޵�ҽԺסԺ����һ���嵥
  lxdBb: TCusBb; //��Ѫ������
  syjhdbb: TCusBb; //��Һ�ƻ�������
  zyxycfBb: TCusBb; //סԺ��ҩ��������
  fprkBb: TCusBb; //��Ʊ������
  fpckbb: TCusBb; //��Ʊ�������
  zyzyfydBb: Tcusbb; //סԺ��ҩ���䵥
  fpsyqkbb: Tcusbb; //��Ʊʹ���������
  zyzycfdybb : TCusBb;//סԺ��ҩ������ӡ����
  zyzycfmxdy: TCusBb;//סԺ��ҩ������ϸ��ӡ
  zyzyjydbb: TCusBb; //סԺ��ҩ��ҩ������
  tcqxnhbb: TCusBb; //ͳ������ũ�϶���
  tcqczjmbb: TCusBb; //����סԺ����ҽ�Ʒ��ý���֪ͨ��
  tyjbb: TCusBb;//��Ԥ������
  PathRep: TCusBb; //�ٴ�·������
  ChildSpireLamellaRep: TCusBb;//��ͯ�������
  SpireLamellaRep: TCusBb;//��ͨ�������
  TransportRep: TCusBb; //�������뵥
  jysqdBb: TCusBb; //�������뱨��
  jcsqdBb: TCusBb; //������뵥����
  cqsyxskBb: TCusBb;//������ҺѲ�ӿ�
  lssyxskBb: TCusBb;//��ʱ��ҺѲ�ӿ�
  sypq:TCusBb;
  zysfyktkf: TCusBb;//�����շ�һ��ͨ�۷�
  jysqdbb_dy: TCusBb; // ����������뵥
  yjjmxbb:TCusBb;//Ԥ������ϸ������ӡ
  dysydBb:TCusBb; //��������ҽԺ������ӡ
  zxbrsjfjBb:TCusBb;//�Ļ���ҽԺ���߲����վݸ�����ӡ
  czyyjmxBb : TCusBb;//�Ļ���ҽԺ����ԱԤ����ϸ
  cybxjsmxBb: TCusBb;//�Ļ���ҽԺ���˽��������ϸ
  pltzcfmxBb:TCusBb;//�׺�ҽԺ����֪ͨ������ϸ��ӡ
  kfyzxddyBb:TCusBb;//��������ҽԺ��ʿ����վ�ڷ�ҩִ�е���ӡ
  nayyyptjtjbb:TCusBb;//����ҽԺҩƷ����ͳ�Ʊ�����ӡ
  cqzsddyBb:TCusBb;//��������ҽԺ��ʿ����վ����ע�䵥��ӡ
  lszsddyBb:TCusBb;//��������ҽԺ��ʿ����վ��ʱע�䵥��ӡ
  jcsqdtmdyBb:TCusBb;//ɳ���ؼ��������ӡ
  jyxmdyBb:TCusBb;//ȫ�ݼ�����Ŀ��ӡ
  yzzxddyBb:TCusBb;// �����ж޵�����ҽԺ ҽ��ִ�е���ӡ
  zysfjsdBb:TCusBb;//̨ɽסԺ�շѽ��㵥
  tsywsrsjBb :TCusBb;//̨ɽ��ҽԺ�����վݴ�ӡ
  jssqdBb: TCusBb; //�޵��������뵥����
  zycnjsBb: TCusBb; //�޵�סԺ���ɽ��㱨��
  ylaqsjbgb : TCusBb;//ҽ�ư�ȫ�¼������
  jytmzdy : TCusBb;//���������Զ��屨��
const
  ylaqsjbgbdm ='089858'; //ҽ�ư�ȫ�¼������
  cybxjsmxdm ='040104' ; //�Ļ���ҽԺ���˽��������ϸ����
  czyyjmxdm ='040103';//�Ļ���ҽԺ����ԱԤ����ϸ����
  zxbrsjfjdm ='010427';//�Ļ���ҽԺ���߲����վݴ���
  yjsjdm = '010103'; //Ԥ���վݴ���
  jfsjdm = '010102'; //�Ƿ��վݴ���
  jssjdm = '010101'; //�����վݴ���
  fymxdm = '010104'; //������ϸ�嵥����
  yymxdm = '010105'; //��ҩ��ϸ�嵥����
  zymxdm = '010106'; //��ҩ��ϸ�嵥����
  sjfjdm = '010109'; //�վݸ�������
  fyhzdm = '010107'; //������ϸ���ܴ���
  fyddyyhzdm = '030102'; //�޵�ҽԺ������ϸ���ܴ���
  yyhzdm = '010108'; //��ҩ��ϸ���ܴ���
  yrqddm = '010110'; //һ���嵥����
  ddyyyrqddm = '031002'; //�޵�ҽԺһ���嵥����
  czyjdm = '010111'; //����Ա�ɿ��
  jsqkdm = '010112'; //�������
  lxddm = '089802'; //��Ѫ������
  zyxycfdm = '010412'; //סԺ��ҩ��������
  fprkdm = '040307'; //��Ʊ������
  fpckdm = '040308'; //��Ʊ�������
  fpckdm_dd = '089899'; //��Ʊ������루�޵�ҽԺ��
  fpsyqkdm = '040309'; //��Ʊʹ���������
  zyzyfyddm = '010419'; //סԺ��ҩ���䵥����
  tcqxnhdm = '010901'; //ͳ������ũ��
  zyzycfddm ='010419';// '040505';//סԺ��ҩ������ӡ������
  tcqczjmdm = '010902'; //����סԺ����ҽ�Ʒ��ý���֪ͨ��
  syjhddm = '039801'; //��Һ�ƻ�������
  zyzyjyddm = '040403'; //סԺ��ҩ��ҩ������
  zyzycfmx = '041001';//סԺ��ҩ������ϸ��ӡ����
  tyjpj = '080101';//��Ԥ��Ʊ��
  PathRepCode = '089807'; //�ٴ�·����������
  ChildSpireLamellaCode = '089809'; //��ͯ�����������
  SpireLamellaCode = '089810'; //��ͨ�����������
  TransportCode  = '089811'; //�������뵥����
  jysqddm = '021902'; //�������뵥����
  jcsqddm = '021901'; //������뵥����
  cqsyxskdm = '089804';//������ҺѲ�ӿ�
  lssyxskdm = '089803';//��ʱ��ҺѲ�ӿ�
  jcsqddm_sy = '089808'; //������뵥���� ɳ��������ҽԺ
  jysqddm_sy = '089809'; //�������뵥���� ɳ��������ҽԺ
  sypq_na = '041008'; //��Һƿǩ ����
  yktkksjdm ='010705'; //ͨ�üǷ�һ��ͨ�ۿ��վݴ���
  jysqdbbdm_dy = '081002'; // ����������뵥
  yjjmxdydm ='040109'; //Ԥ���𱨱���ӡ
  dysydBbdm ='041901'; //������Һ����ӡ
  pltzcfmxdm='041107';//�׺�����������ϸ��ӡ
  kfyzxddydm='041007';//��������ҽԺ�ڷ�ҩִ�е���ӡ
  nayyyptjtjdm='041701';//����ҽԺҩ����ҩƷ���۱���day
  cqzsddydm='041008';//��������ҽԺ��ʿ����վ����ע�䵥��ӡ
  lszsddydm='041009';//��������ҽԺ��ʿ����վ��ʱע�䵥��ӡ
  jcsqdtmdydm='081001';   //ɳ���ؼ��������ӡ
  jyxmdydm='041908'; //ȫ�ݼ�����Ŀ�����ӡ
  yzzxddydm='089871';// �����ж޵�����ҽԺ ҽ��ִ�е���ӡ
  zysfjsdm='010102'; //̨ɽסԺ�շѽ��㵥
  tsywsrsjdm ='040319';//̨ɽҵ�������վݴ�ӡ
  jssqddm = '089897'; //�������뵥����
  zycnjsdm = '089883'; //סԺ���ɽ��㱨��
  jytmzdydm = '089804';//���������Զ��屨��
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
 //�䵱ɽ���������Զ��屨��
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



//̨ɽ��ҽԺҵ�������վݷ�Ʊ��ӡ

procedure Tfrm_zysf_print_service.print_ywsrsjdy(v_mc,v_sjqzh,v_jzrq,v_dyrq,v_tfsjh,v_cwsj,v_sfydm,v_ssje,v_dxje,v_cd:string);
begin
   if tsywsrsjBb=nil then
   begin
     tsywsrsjBb:=TCusBb.Create;
     tsywsrsjBb.GetBbByDM(tsywsrsjBb,tsywsrsjdm);
     grid_ywsrsj.LoadFromStr(tsywsrsjBb.nr);
   end ;
   try
     if Assigned(grid_ywsrsj.ParameterByName('����'))  then
     grid_ywsrsj.ParameterByName('����').Value:=v_mc;
     if Assigned(grid_ywsrsj.ParameterByName('ȫ���վ�'))  then
     grid_ywsrsj.ParameterByName('ȫ���վ�').Value:=v_sjqzh;
     if Assigned(grid_ywsrsj.ParameterByName('�˷��վ�'))  then
     grid_ywsrsj.ParameterByName('�˷��վ�').Value:=v_tfsjh;
     if Assigned(grid_ywsrsj.ParameterByName('��ӡ����'))  then
     grid_ywsrsj.ParameterByName('��ӡ����').Value:=v_dyrq;
     if Assigned(grid_ywsrsj.ParameterByName('��������'))  then
     grid_ywsrsj.ParameterByName('��������').Value:=v_jzrq;
     if Assigned(grid_ywsrsj.ParameterByName('ʵ�ս��'))  then
     grid_ywsrsj.ParameterByName('ʵ�ս��').Value:=v_ssje;
     if Assigned(grid_ywsrsj.ParameterByName('�շ�Ա'))  then
     grid_ywsrsj.ParameterByName('�շ�Ա').Value:=v_sfydm;
     if Assigned(grid_ywsrsj.ParameterByName('�����վ�'))  then
     grid_ywsrsj.ParameterByName('�����վ�').Value:=v_cwsj;
      if Assigned(grid_ywsrsj.ParameterByName('��д���'))  then
     grid_ywsrsj.ParameterByName('��д���').Value:=v_dxje;
     if Assigned(grid_ywsrsj.ParameterByName('�ش�'))  then
     grid_ywsrsj.ParameterByName('�ش�').Value:=v_cd;
   except
     Exit;
   end;
     grid_ywsrsj.PrintPreview(True);
end;


 // �����ж޵�����ҽԺ ҽ��ִ�е���ӡ
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
 if Assigned(grdprprt_yzzxd.ParameterByName('����'))  then
   grdprprt_yzzxd.ParameterByName('����').Value := '����:' + trim(sp_jbxx.FieldByName('brxm').AsString);
 if Assigned(grdprprt_yzzxd.ParameterByName('����'))  then
   grdprprt_yzzxd.ParameterByName('����').Value := '����:' + trim(sp_jbxx.FieldByName('brnl').AsString);
 if Assigned(grdprprt_yzzxd.ParameterByName('סԺ��'))  then
   grdprprt_yzzxd.ParameterByName('סԺ��').Value := 'סԺ��:' + trim(sp_jbxx.FieldByName('tmh').AsString);
 if Assigned(grdprprt_yzzxd.ParameterByName('����'))  then
   grdprprt_yzzxd.ParameterByName('����').Value := '����:' + trim(sp_jbxx.FieldByName('bch').AsString);
 if Assigned(grdprprt_yzzxd.ParameterByName('ϵͳʱ��'))  then
   grdprprt_yzzxd.ParameterByName('ϵͳʱ��').Value :=  zxrq;
 if Assigned(grdprprt_yzzxd.ParameterByName('��������'))  then
  grdprprt_yzzxd.ParameterByName('��������').Value :=  pub_ksmc;
  grdprprt_yzzxd.DataSet := sp_synr ;
  grdprprt_yzzxd.Print(False);
end;


 {ȫ�ݼ�������ӡ}
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

{��������ҽԺ��ʿ����վ����ע�䵥��ӡ}
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
{��������ҽԺ��ʿ����վ��ʱע�䵥��ӡ  }
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

{----���� ҩ���ƹ���}
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
{----------------��������ҽԺ��ʿ����վ�ڷ�ҩִ�е�ѡ���ӡ---------------}
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




 //�׺�  ��ʿ����վ ����������ϸ��ӡ
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
//�Ļ���ҽԺ��Ժ���������ϸ��ӡ
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

 //�Ļ���ҽԺ��Ժ�����վݸ�����ӡ
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

//�Ļ���ҽԺ����ԱԤ����ϸ��ӡ
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
//    ShowMessageFmt('���� %s ���� "%s" �����ڣ�', [Self.Fc_bbdm, key]);
//    addlog('���� %s ���� "%s" �����ڣ�', [Self.Fc_bbdm, key]);
//  end
    ;
end;
{$ENDREGION 'TGridppReport'}

//������Һ������
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
    gp_syddy.ParameterByName('sy_year').Value :=FormatDateTime('yyyy', frm_func.curr_date) + '��';
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
      fpckBb.GetBbByDM(fpckBb, fpckdm_dd) //�޵�ҽԺ ����ʹ�� 089899
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
  //������������
  if tcqczjmbb = nil then
  begin
    tcqczjmbb := TCusBb.Create;
    tcqczjmbb.GetBbByDM(tcqczjmbb, tcqczjmdm);
    gp_jlfyjstzd.LoadFromStr(tcqczjmbb);
  end;

  gp_jlfyjstzd.ParameterByName('���').Value := _lb;
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
  //������������
  if tcqxnhBb = nil then
  begin
    tcqxnhBb := TCusBb.Create;
    tcqxnhBb.GetBbByDM(tcqxnhBb, tcqxnhdm);
    gp_tcqxnh.LoadFromStr(tcqxnhBb);
  end;

  gp_tcqxnh.ParameterByName('���').Value := _lb;
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
  //������������
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
//סԺ��ҩ��ҩ��
procedure Tfrm_zysf_print_service.printXyfplfy(adosp: TADOStoredProc);
var
  I:integer;
  Tmpbb : TCusBb;
  cData :TCustomADODataSet;
begin
  //������������
  cData := TCustomADODataSet.Create(nil);
  cData.Recordset := adosp.NextRecordset(I);
  Tmpbb := TCusBb.Create;
  Tmpbb.GetBbByDM(Tmpbb, cData.FieldByName('�Զ��屨������').AsString);
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
  ������:    Tfrm_zysf_print_service.printddzycnjsbbdy
  ����:      yangshuai
  ����:      2017.09.06
  ����:      ajzrq:TDateTime;sp_maindata, sp_mxdata: TADOStoredProc;ylbz:Boolean
  ����ֵ:    ��
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
//     gp_ddmzsfmxfpdy.setParamVal('��������1', ajzrq);
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
    _SubRep4.setParamVal('��������1', v_jzrq);
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
      gp_yjjmxdy.setParamVal('����Ա',czy);
      gp_yjjmxdy.setParamVal('��ʼʱ��',startrq);
      gp_yjjmxdy.setParamVal('����ʱ��',endrq);
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

//��ӡסԺ��ҩ������
procedure Tfrm_zysf_print_service.printzycfd(Qry_zb: TADOQuery; sp_mx : TADOStoredProc);
begin
  //������������
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

//�Ļ���ҽԺ��ҩ������ӡ
procedure Tfrm_zysf_print_service.sh_zycfpldy(Qry_zb: TADOQuery; sp_mx : TADOStoredProc);
begin
  //������������
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
  //������������
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
    gp_zyxycfd.ParameterByName('��ǰ����Ա����').Value := pub_czyxm;
    gp_zyxycfd.ParameterByName('ϵͳʱ��').Value := DateTimeToStr(Now);
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
    if pub_yydm='0239' then  //��ҽԺ��ҪԤ��
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
begin    //��ҩ��ϸ��ӡ
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
  //������������
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
    if pub_yydm='0239' then  //��ҽԺ��ҪԤ��
    begin
      frxrprt_zyzyjyd.PrintPreview(False);
    end
    else
    begin
      frxrprt_zyzyjyd.Print(False);
    end;
  end;
end;






//Ԥ���վݴ�ӡ����

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
  frxrprt_yjsj.Printer.PrinterName := Frm_Dyjgl.ChangeDefaultPrinter(Ԥ���վ�);
{$ELSE}
  ChangePrinter(0);
{$ENDIF}

  frxrprt_yjsj.setParamVal('�շ�����', frm_func.curr_date);
  frxrprt_yjsj.setParamVal('�շ�Ա', trim(pub_czydm) + trim(pub_czyxm));
  frxrprt_yjsj.setParamVal('��������', zy_brxm);
  frxrprt_yjsj.setParamVal('�����', zy_tmh);
  frxrprt_yjsj.setParamVal('סԺ����', zy_ksmc);
  frxrprt_yjsj.setParamVal('Ԥ����ʽ', yjfs);
  frxrprt_yjsj.setParamVal('Ԥ�����', zy_yjje);
  frxrprt_yjsj.setParamVal('����д', NumberToMoney(zy_yjje));
  frxrprt_yjsj.setParamVal('�վݱ��', zy_sjh);
  frxrprt_yjsj.setParamVal('������', zy_bch);
  frxrprt_yjsj.setParamVal('�Ա�', zy_brxb);
  frxrprt_yjsj.setParamVal('����',zy_brnl );
  frxrprt_yjsj.setParamVal('���˵�ַ', brdz);

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
  frxrprt_yjsj.Printer.PrinterName := Frm_Dyjgl.ChangeDefaultPrinter(Ԥ���վ�);
{$ELSE}
  ChangePrinter(0);
{$ENDIF}

  frxrprt_yjsj.setParamVal('�շ�����', dyrq);
  frxrprt_yjsj.setParamVal('�շ�Ա', dyczy );
  frxrprt_yjsj.setParamVal('��������', zy_brxm);
  frxrprt_yjsj.setParamVal('�����', zy_tmh);
  frxrprt_yjsj.setParamVal('סԺ����', zy_ksmc);
  frxrprt_yjsj.setParamVal('Ԥ����ʽ', yjfs);
  frxrprt_yjsj.setParamVal('Ԥ�����', zy_yjje);
  frxrprt_yjsj.setParamVal('����д', NumberToMoney(zy_yjje));
  frxrprt_yjsj.setParamVal('�վݱ��', zy_sjh);
  frxrprt_yjsj.setParamVal('������', zy_bch);
  frxrprt_yjsj.setParamVal('�Ա�', zy_brxb);
  frxrprt_yjsj.setParamVal('����', zy_brnl);
  frxrprt_yjsj.setParamVal('������', zy_bch);
  frxrprt_yjsj.setParamVal('���˵�ַ', brdz);

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
  //��ԭԭ��Ĭ�ϴ�ӡ��
  try
    if v_IsPrinterJoin then
      Proc_ChangePrinter(v_PrinterIndex_old, True);
  except
  end;
end;

procedure Tfrm_zysf_print_service.ChangePrinter(_index: integer);
begin
  //�ж��Ƿ�ʹ�ô�ӡ������ʽ��ȡ�ô�ӡ�����
  try
    v_PrinterIndex_old := Printer.PrinterIndex;
    v_PrinterIndex_new := func_GetPrinterIndex(_index, v_IsPrinterJoin);
    if v_IsPrinterJoin then
      Proc_ChangePrinter(v_PrinterIndex_new, True);
  except
  end;
end;

//�Ƿѷ�Ʊ��ӡ����

function Tfrm_zysf_print_service.PrintZyjz(ph, czks, brxm, brxb, brnl, kdys, tmh, bch: string): string;
begin

  if jfsjBb = nil then
  begin
    jfsjBb := TCusBb.Create;
    jfsjBb.GetBbByDM(jfsjBb, jfsjdm);
    GridppReport_jfsj.LoadFromStr(jfsjBb);
  end;
{$IFDEF Maks}
  GridppReport_jfsj.Printer.PrinterName := Frm_Dyjgl.ChangeDefaultPrinter(�Ƿ���ϸ);
{$ELSE}
  ChangePrinter(0);
{$ENDIF}
  sp_fymx_dy1.Close;
  sp_fymx_dy1.Parameters.ParamByName('@ph').value := ph;
  sp_fymx_dy1.Open;
  try
    GridppReport_jfsj.setParamVal('���ÿ���', czks);
    GridppReport_jfsj.setParamVal('��������', brxm);
    GridppReport_jfsj.setParamVal('�����Ա�', brxb);
    GridppReport_jfsj.setParamVal('��������', brnl);
    GridppReport_jfsj.setParamVal('����ҽ��', kdys);
    GridppReport_jfsj.setParamVal('�շ�Ա����', pub_czydm);
    GridppReport_jfsj.setParamVal('�շ�Ա����', pub_czyxm);
    GridppReport_jfsj.setParamVal('�շ�����', Frm_func.curr_date);
    GridppReport_jfsj.setParamVal('סԺ��', tmh);
    GridppReport_jfsj.setParamVal('������', bch);
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

//�����վݴ�ӡ����

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
 //̨ɽ��ҽԺ�Ż���Ŀ��ѯ
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
     qry_tc2.SQL.Text :='SELECT (''����Ա����''+cast(isnull(gwybxje,0.00)as varchar(18))+'',  ''+''����ҽ�Ʊ���''+cast(isnull(bcylbxje,0.00)as  '+
                        'varchar(18))+'',  ''+''����֧��''+cast(isnull(jbylbxje,0.00)as varchar(18)) )yflb2  '+
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
  GridppReport_jssj.Printer.PrinterName := Frm_Dyjgl.ChangeDefaultPrinter(�����վ�);
{$ELSE}
  ChangePrinter(1);
{$ENDIF}
  try
    GridppReport_jssj.ParameterByName('סԺ��').Value := trim(zy_tmh);
    if Assigned(GridppReport_jssj.ParameterByName('zyh')) then
    GridppReport_jssj.ParameterByName('zyh').Value := trim(zy_zyh);
    GridppReport_jssj.ParameterByName('��������').Value := trim(zy_brxm);
    GridppReport_jssj.ParameterByName('�վݺ�').Value := zy_sjbh;
    GridppReport_jssj.ParameterByName('�����Ա�').Value := zy_brxb;
    GridppReport_jssj.ParameterByName('��������').Value := zy_brnl;
    GridppReport_jssj.ParameterByName('סԺ����').Value := Trim(zy_ksmc);
    GridppReport_jssj.ParameterByName('������').Value := Trim(zy_bch);
    GridppReport_jssj.ParameterByName('�������').Value := zy_fylb;
    if (azy_dbzmc <> '') and  ((pub_yydm = '0263') or (pub_yydm ='0264')) then   //����ҽԺ���ɷ�
    begin
      GridppReport_jssj.ParameterByName('�ܷ���').Value := FormatFloat('0.00', azy_dbzfyje);
    end else
    begin
      GridppReport_jssj.ParameterByName('�ܷ���').Value := FormatFloat('0.00', zy_zfy);
    end;

    if Assigned(GridppReport_jssj.ParameterByName('�������')) and Assigned(sp_sebrqk) then
      GridppReport_jssj.ParameterByName('�������').Value := Trim(sp_sebrqk.FieldByName('lbmc').AsString);
    if Assigned(GridppReport_jssj.ParameterByName('�籣��λ')) and Assigned(sp_sebrqk) then
      GridppReport_jssj.ParameterByName('�籣��λ').Value := Trim(sp_sebrqk.FieldByName('sbdw').AsString);
    if Assigned(GridppReport_jssj.ParameterByName('������')) then
    GridppReport_jssj.ParameterByName('������').Value := Trim(zy_bah);

      //

//     if qry_sbjsb.Locate( 'fylbmc', '��������', [] ) then
//      begin
//        GridppReport_jssj.ParameterByName('��������').Value := qry_sbjsb.FieldByName( 'sbzf' ).AsFloat;
//      end;

     //̨ɽ��ҽԺҪ�������շֿ���ʾ wangwei  170303
    if Assigned(GridppReport_jssj.ParameterByName('��')) then         //��
    GridppReport_jssj.ParameterByName('��').Value := FormatDateTime('yyyy',frm_func.curr_date());
    if Assigned(GridppReport_jssj.ParameterByName('��')) then         //��
    GridppReport_jssj.ParameterByName('��').Value := FormatDateTime('MM',frm_func.curr_date());
    if Assigned(GridppReport_jssj.ParameterByName('��')) then         //��
    GridppReport_jssj.ParameterByName('��').Value := FormatDateTime('dd',frm_func.curr_date());

    if Assigned(GridppReport_jssj.ParameterByName('ͳ��1')) then
    GridppReport_jssj.ParameterByName('ͳ��1').Value := tc1;
    if Assigned(GridppReport_jssj.ParameterByName('ͳ��2')) then         
    GridppReport_jssj.ParameterByName('ͳ��2').Value := tc2;
    if pub_yydm='0240' then  //   ɳ����0240
    begin
      if Assigned(GridppReport_jssj.ParameterByName('��������')) and Assigned(qry_sbjsb) then
      begin
        if qry_sbjsb.Locate( 'fylbmc', '��������', [] ) then
        begin
          GridppReport_jssj.ParameterByName('��������').Value := qry_sbjsb.FieldByName( 'sbzf' ).AsFloat;
        end;
      end;
      //��������
      if Assigned(GridppReport_jssj.ParameterByName('��������')) and Assigned(qry_sbjsb) then
      begin
        if qry_sbjsb.Locate( 'fylbmc', '��������', [] ) then
        begin
          GridppReport_jssj.ParameterByName('��������').Value := qry_sbjsb.FieldByName( 'sbzf' ).AsFloat;
        end;
      end;

        //��������֤��
      if Assigned(GridppReport_jssj.ParameterByName('��������֤��')) and Assigned(qry_sbjsb) then
      begin
          GridppReport_jssj.ParameterByName('��������֤��').Value :=  Trim(zy_mzjzzh);
      end;

    end;



    // GridppReport_jssj.ParameterByName('�籣��λ').Value := 'test12121212121';
//    if Assigned(GridppReport_jssj.ParameterByName('���˵�λ')) then
//    GridppReport_jssj.ParameterByName('���˵�λ').Value := Trim(sp_sebrqk.FieldByName('dwdh').asstring);
    try
      if zy_ytje > 0 then
      begin
        if Assigned(GridppReport_jssj.ParameterByName('ʵ�˽��')) then
        GridppReport_jssj.ParameterByName('ʵ�˽��').Value := FormatFloat('0.00', zy_ytje);
      end
      else
      begin
        if Assigned(GridppReport_jssj.ParameterByName('ʵ�˽��')) then
        GridppReport_jssj.ParameterByName('ʵ�˽��').Value := '';
      end;

      if zy_ybje > 0 then
      begin
        if Assigned(GridppReport_jssj.ParameterByName('ʵ�����')) then
        GridppReport_jssj.ParameterByName('ʵ�����').Value := FormatFloat('0.00', zy_ybje);
      end
      else
      begin
        if Assigned(GridppReport_jssj.ParameterByName('ʵ�����')) then
        GridppReport_jssj.ParameterByName('ʵ�����').Value := '';
      end;
    except
    end;

    if zy_ytjejs > 0 then
    begin
      if Pub_yydm<>'0269' then
      begin
        GridppReport_jssj.ParameterByName('Ӧ�˽��').Value := '��:' + FormatFloat('0.00', zy_ytjejs);
      end else
      begin   //̨ɽ��ҽԺ��Ҫ ���� ����
        GridppReport_jssj.ParameterByName('Ӧ�˽��').Value :=  FormatFloat('0.00', zy_ytjejs);
      end;
    end
    else
    begin
      GridppReport_jssj.ParameterByName('Ӧ�˽��').Value := '';
    end;
    if zy_ybjejs > 0 then
    begin
     if pub_yydm<>'0269' then
      begin
        GridppReport_jssj.ParameterByName('Ӧ�����').Value := '��:' + FormatFloat('0.00', zy_ybjejs);
      end else  //̨ɽ��ҽԺ��Ҫ ���� ����
      begin
        GridppReport_jssj.ParameterByName('Ӧ�����').Value := FormatFloat('0.00', zy_ybjejs);
      end;
    //  GridppReport_jssj.ParameterByName('Ӧ�����').Value := '��:' + FormatFloat('0.00', zy_ybjejs);
    end
    else
    begin
      GridppReport_jssj.ParameterByName('Ӧ�����').Value := '';
    end;

      if pub_yydm='0269' then //̨ɽ�����վ����ӽ����վ�20170317
    begin
      if Assigned(GridppReport_jssj.ParameterByName('���㷽ʽ')) then
        GridppReport_jssj.ParameterByName('���㷽ʽ').Value :=ts_jsfs;
    end;


    if zy_sbtcje > 0 then
    begin
      if (pub_yydm=HN_SYRMYY)  and (Abs(zy_nhfmbz) > 1e-6) then
      begin
        GridppReport_jssj.ParameterByName('ũ�ϸ��ײ���').Value := 'ũ�ϸ��ײ���:'+FormatFloat('0.00', zy_nhfmbz);
      end;
      if pub_yydm = '0015' then
      begin
        if pos('ũ��', zy_fylb) <= 0 then
        begin
          GridppReport_jssj.ParameterByName('�籣�Ը�').Value := Copy('��������������������', 1, Length(zy_fylb + '����') - length('�籣�Ը�')) +
            '�����Ը�:' + FormatFloat('0.00', zy_sbzfje);
          GridppReport_jssj.ParameterByName('�籣ͳ��').Value := Copy('��������������������', 1, Length(zy_fylb + '����') - length('�籣ͳ��'))
            + 'ͳ��֧��:' + FormatFloat('0.00', zy_sbtcje);
        end
        else
        begin
          GridppReport_jssj.ParameterByName('�籣�Ը�').Value := zy_fylb + '�Ը�:' + FormatFloat('0.00', zy_sbzfje);
          GridppReport_jssj.ParameterByName('�籣ͳ��').Value := zy_fylb + '����:' + FormatFloat('0.00', zy_sbtcje);
        end;
      end
      else
      begin
        GridppReport_jssj.ParameterByName('�籣�Ը�').Value := '�Ը�:' + FormatFloat('0.00', zy_sbzfje);
        if pub_yydm<>'0269' then
        begin
          GridppReport_jssj.ParameterByName('�籣�Ը�').Value := '�Ը�:' + FormatFloat('0.00', zy_sbzfje);
        end else
        begin
          GridppReport_jssj.ParameterByName('�籣�Ը�').Value :=FormatFloat('0.00', zy_sbzfje);
        end;
        GridppReport_jssj.ParameterByName('�籣ͳ��').Value := zy_fylb + 'ͳ��:' + FormatFloat('0.00', zy_sbtcje);
      end;
    end
    else
    begin
      GridppReport_jssj.ParameterByName('�籣�Ը�').Value := '';
      GridppReport_jssj.ParameterByName('�籣ͳ��').Value := '';
    end;


    //�籣
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
          GridppReport_jssj.setParamVal('��ӡ�籣', '1');
          GridppReport_jssj.setParamVal('����', FormatFloat('0.00', qry_pub.FieldByName('qfx').AsFloat));
          GridppReport_jssj.setParamVal('�ʻ�֧��', FormatFloat('0.00', qry_pub.FieldByName('zhzf').AsFloat));
          GridppReport_jssj.setParamVal('�籣�ܷ���', FormatFloat('0.00', qry_pub.FieldByName('yzlfy').AsFloat));
          GridppReport_jssj.setParamVal('ͳ��֧��', FormatFloat('0.00', qry_pub.FieldByName('tczf').AsFloat));
          GridppReport_jssj.setParamVal('�����Ը�', FormatFloat('0.00', qry_pub.FieldByName('blzf').AsFloat));
          GridppReport_jssj.setParamVal('�˻����', FormatFloat('0.00', qry_pub.FieldByName('jshye').AsFloat));
          GridppReport_jssj.setParamVal('����֧��', FormatFloat('0.00', qry_pub.FieldByName('qtzf').AsFloat));
          GridppReport_jssj.setParamVal('ȫ�Ը�', FormatFloat('0.00', qry_pub.FieldByName('qzf').AsFloat));
          GridppReport_jssj.setParamVal('�����Ը�', FormatFloat('0.00', qry_pub.FieldByName('bfzf').AsFloat));
          GridppReport_jssj.setParamVal('����֧��', FormatFloat('0.00', qry_pub.FieldByName('grzf').AsFloat));
          GridppReport_jssj.setParamVal('����ҽ�Ʊ������', FormatFloat('0.00', qry_pub.FieldByName('bcylbxje').AsFloat));
          GridppReport_jssj.setParamVal('��������', FormatFloat('0.00', qry_pub.FieldByName('mzbz').AsFloat));
          GridppReport_jssj.setParamVal('�籣�ֽ�֧��', FormatFloat('0.00', qry_pub.FieldByName('xjzf').AsFloat));
          GridppReport_jssj.setParamVal('�����־', qry_pub.FieldByName('qslb').AsString);//�������
          if (pub_yydm = '0240') or (pub_yydm = '0175') then
          begin
            GridppReport_jssj.setParamVal('����ҽ�Ʊ������', FormatFloat('0.00', qry_pub.FieldByName('jbylbxje').AsFloat));
            GridppReport_jssj.setParamVal('�󲡲���', FormatFloat('0.00', qry_pub.FieldByName('dbbz').AsFloat));
            GridppReport_jssj.setParamVal('����Ա����', FormatFloat('0.00', qry_pub.FieldByName('gwybxje').AsFloat));
            GridppReport_jssj.setParamVal('�̱����', FormatFloat('0.00', qry_pub.FieldByName('je2').AsFloat));
          end;
          if pub_yydm = '0260' then
          begin
            GridppReport_jssj.setParamVal('����ҽ�Ʊ������', FormatFloat('0.00', qry_pub.FieldByName('jbylbxje').AsFloat));
            GridppReport_jssj.setParamVal('�󲡲���', FormatFloat('0.00', qry_pub.FieldByName('dbbz').AsFloat));
            GridppReport_jssj.setParamVal('����Ա����', FormatFloat('0.00', qry_pub.FieldByName('gwybxje').AsFloat));
            GridppReport_jssj.setParamVal('�������ͳ��֧��', FormatFloat('0.00', qry_pub.FieldByName('czjmtczf').AsFloat));
            GridppReport_jssj.setParamVal('ũ�и�����', FormatFloat('0.00', qry_pub.FieldByName('kcbf').AsFloat));
            GridppReport_jssj.setParamVal('�߶��⸶', FormatFloat('0.00', qry_pub.FieldByName('dejzzc').AsFloat));
            GridppReport_jssj.setParamVal('����ҽ�Ʋ���', FormatFloat('0.00', qry_pub.FieldByName('bbzf').AsFloat));
            GridppReport_jssj.setParamVal('���ݸɲ�����', FormatFloat('0.00', qry_pub.FieldByName('lxzf').AsFloat));
            GridppReport_jssj.setParamVal('�Ϻ������', FormatFloat('0.00', qry_pub.FieldByName('scjrbz').AsFloat));
            GridppReport_jssj.setParamVal('ҽ�ƹ��˱���', FormatFloat('0.00', qry_pub.FieldByName('ylgs').AsFloat));
            GridppReport_jssj.setParamVal('����������', FormatFloat('0.00', qry_pub.FieldByName('syjj').AsFloat));
            GridppReport_jssj.setParamVal('ʧҵ������', FormatFloat('0.00', qry_pub.FieldByName('syejj').AsFloat));
            GridppReport_jssj.setParamVal('��������', FormatFloat('0.00', qry_pub.FieldByName('qtdy').AsFloat));
          end;
        end
        else
        begin
          GridppReport_jssj.setParamVal('��ӡ�籣', '0');
          GridppReport_jssj.setParamVal('����', '');
          GridppReport_jssj.setParamVal('�ʻ�֧��', '');
          GridppReport_jssj.setParamVal('�籣�ܷ���', '');
          GridppReport_jssj.setParamVal('ͳ��֧��', '');
          GridppReport_jssj.setParamVal('�����Ը�', '');
          GridppReport_jssj.setParamVal('�˻����', '');
          GridppReport_jssj.setParamVal('����֧��', '');
          GridppReport_jssj.setParamVal('ȫ�Ը�', '');
          GridppReport_jssj.setParamVal('�����Ը�', '');
          GridppReport_jssj.setParamVal('����֧��', '');
          GridppReport_jssj.setParamVal('����ҽ�Ʊ������', '');
          GridppReport_jssj.setParamVal('��������', '');
          GridppReport_jssj.setParamVal('�籣�ֽ�֧��','');
          if pub_yydm = '0240' then
          begin
            GridppReport_jssj.setParamVal('����ҽ�Ʊ������','');
            GridppReport_jssj.setParamVal('�󲡲���', ''); 
            GridppReport_jssj.setParamVal('����Ա�������','');
          end;
          if pub_yydm = '0260' then
          begin
            GridppReport_jssj.setParamVal('����ҽ�Ʊ������', '');

            GridppReport_jssj.setParamVal('�󲡲���', '');
            GridppReport_jssj.setParamVal('����Ա����', '');
            GridppReport_jssj.setParamVal('ũ�и�����', '');
            GridppReport_jssj.setParamVal('�������ͳ��֧��', '');
            GridppReport_jssj.setParamVal('�߶��⸶', '');
            GridppReport_jssj.setParamVal('����ҽ�Ʋ���', '');
            GridppReport_jssj.setParamVal('���ݸɲ�����', '');
            GridppReport_jssj.setParamVal('�Ϻ������', '');
            GridppReport_jssj.setParamVal('ҽ�ƹ��˱���', '');
            GridppReport_jssj.setParamVal('����������', '');
            GridppReport_jssj.setParamVal('ʧҵ������', '');
            GridppReport_jssj.setParamVal('��������', '');
          end;
        end;
      end;
    except
    end;
    GridppReport_jssj.ParameterByName('ʵ��Ԥ���ܶ�').Value := FormatFloat('0.00', sjyjze);
    GridppReport_jssj.ParameterByName('Ԥ���ܶ�').Value := FormatFloat('0.00', yjze);
    GridppReport_jssj.ParameterByName('��֧�����').Value := FormatFloat('0.00', zy_kzfje);
    GridppReport_jssj.ParameterByName('�Żݽ��').Value := FormatFloat('0.00', yhje);
    GridppReport_jssj.ParameterByName('��Ժ����').Value := zy_ryrq;
    GridppReport_jssj.ParameterByName('��Ժ����').Value := StrToDateTime(cyrq);
    GridppReport_jssj.ParameterByName('��������').Value := zy_csrq;
    GridppReport_jssj.ParameterByName('���˵�ַ').Value := zy_brdz;
    GridppReport_jssj.ParameterByName('�������Ա').Value := pub_czyxm;
     if Assigned(GridppReport_jssj.ParameterByName('��������')) then
    GridppReport_jssj.ParameterByName('��������').Value := Frm_func.curr_date;
    GridppReport_jssj.ParameterByName('ʮ��').Value := sw;
    GridppReport_jssj.ParameterByName('��').Value := w;
    GridppReport_jssj.ParameterByName('ǧ').Value := q;
    GridppReport_jssj.ParameterByName('��').Value := b;
    GridppReport_jssj.ParameterByName('ʰ').Value := s;
    GridppReport_jssj.ParameterByName('Ԫ').Value := y;
    GridppReport_jssj.ParameterByName('��').Value := j;
    GridppReport_jssj.ParameterByName('��').Value := f;
    GridppReport_jssj.setParamVal('ͳ�����', zy_tchz);
    if Assigned(GridppReport_jssj.ParameterByName('ͳ��֧��')) and (pub_yydm='0271') then
    begin
      if GridppReport_jssj.ParameterByName('ͳ��֧��').Value <> '' then
      begin
        GridppReport_jssj.setParamVal('ͳ����ܽ��', '0');
      end else
      begin
        GridppReport_jssj.setParamVal('ͳ����ܽ��', zy_sbtcje);
      end;
    end else
    begin
      GridppReport_jssj.setParamVal('ͳ����ܽ��', zy_sbtcje);
    end;

    //�����ַ���
    if Assigned(GridppReport_jssj.ParameterByName('�����ַ��ý��')) then
      GridppReport_jssj.ParameterByName('�����ַ��ý��').Value := FormatFloat('0.00', azy_dbzfyje);
    //����������
    if Assigned(GridppReport_jssj.ParameterByName('����������')) then
      GridppReport_jssj.ParameterByName('����������').Value := azy_dbzmc;
    //ͳ��������
    if Assigned(GridppReport_jssj.ParameterByName('ͳ��������')) then
      GridppReport_jssj.ParameterByName('ͳ��������').Value := azy_tcjesr;
      
    //�Żݽ������
    if Assigned(GridppReport_jssj.ParameterByName('�Żݽ������')) then
      GridppReport_jssj.ParameterByName('�Żݽ������').Value := azy_yhjesr;
    //�˻�֧������
    if Assigned(GridppReport_jssj.ParameterByName('�˻�֧������')) then
      GridppReport_jssj.ParameterByName('�˻�֧������').Value := a_zhzf;
    //����������
    if Assigned(GridppReport_jssj.ParameterByName('����������')) then
      GridppReport_jssj.ParameterByName('����������').Value := a_jmjesr;
    //�ͱ��������
    if Assigned(GridppReport_jssj.ParameterByName('�ͱ��������')) then
      GridppReport_jssj.ParameterByName('�ͱ��������').Value := a_dbjesr;
    if (azy_dbzmc <> '') and ((pub_yydm = '0263') or (pub_yydm ='0264')) then  //����ҽԺ���ɷ���
    begin
      GridppReport_jssj.ParameterByName('Ӧ�˽��').Value := '';
      GridppReport_jssj.ParameterByName('Ӧ�����').Value :='';

      if (azy_dbzfyje - sjyjze -  zy_sbtcje > 0) then
      begin
        if pub_yydm<>'0269' then
        begin
          GridppReport_jssj.ParameterByName('Ӧ�����').Value := '��:' + FormatFloat('0.00', azy_dbzfyje - sjyjze -  zy_sbtcje );
        end else
        begin
          GridppReport_jssj.ParameterByName('Ӧ�����').Value := FormatFloat('0.00', azy_dbzfyje - sjyjze -  zy_sbtcje );
        end;
      // GridppReport_jssj.ParameterByName('Ӧ�����').Value := '��:' + FormatFloat('0.00', azy_dbzfyje - sjyjze -  zy_sbtcje );
      end else if (azy_dbzfyje - sjyjze -  zy_sbtcje < 0) then
      begin
        if pub_yydm<>'0269' then
        begin
          GridppReport_jssj.ParameterByName('Ӧ�˽��').Value := '��:' + FormatFloat('0.00', abs(azy_dbzfyje - sjyjze -  zy_sbtcje) );
        end else
        begin
          GridppReport_jssj.ParameterByName('Ӧ�˽��').Value := FormatFloat('0.00', abs(azy_dbzfyje - sjyjze -  zy_sbtcje) );
        end;
      //GridppReport_jssj.ParameterByName('Ӧ�˽��').Value := '��:' + FormatFloat('0.00', abs(azy_dbzfyje - sjyjze -  zy_sbtcje) );
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
      GridppReport_jssj.ParameterByName('Ԥ��ʮ��').Value := sw;
      GridppReport_jssj.ParameterByName('Ԥ����').Value := w;
      GridppReport_jssj.ParameterByName('Ԥ��ǧ').Value := q;
      GridppReport_jssj.ParameterByName('Ԥ����').Value := b;
      GridppReport_jssj.ParameterByName('Ԥ��ʰ').Value := s;
      GridppReport_jssj.ParameterByName('Ԥ��Ԫ').Value := y;
      GridppReport_jssj.ParameterByName('Ԥ����').Value := j;
      GridppReport_jssj.ParameterByName('Ԥ����').Value := f;
    end;

    if pub_yydm='0246' then  //���� ��ѯסԺ��������
    begin
      DM_data.Qry_pub1.Close;
      DM_data.Qry_pub1.SQL.Text :=
        Format('select sum(sszje) je from zysf_mzsf_mzfymx where zyh=''%s''',[zy_zyh]);
      DM_data.Qry_pub1.Open;
      GridppReport_jssj.setParamVal('������ý��',DM_data.Qry_pub1.FieldByName('je').AsFloat);
    end;

    zyts := CalcZyts(formatdatetime('yyyy-mm-dd hh:mm:ss', zy_ryrq), cyrq);
    GridppReport_jssj.ParameterByName('סԺ����').Value := zyts;

    if (azy_dbzmc <> '') and ((pub_yydm = '0263') or (pub_yydm ='0264')) then  //����ҽԺ���ɷ���
    begin
      qry_kmdm.First;
      i := 1;
      if jssjBb.ord then
      begin
        while (not qry_kmdm.Eof) or (i <= 40) do
        begin
          try
            if (pub_yydm = '0263') or (pub_yydm= '0264') then  //����ҽԺ��Ҫȫ����ʾ������
            begin
//              GridppReport_jssj.ParameterByName('��������' + IntToStr(i)).Value := Trim(qry_kmdm.FieldByName('kmmc').AsString);
//              if  Trim(qry_kmdm.FieldByName('kmmc').AsString) ='���Ʒ�' then
//              begin
//                 GridppReport_jssj.ParameterByName('���' + IntToStr(i)).Value := FormatFloat('0.00', azy_dbzfyje);
//              end else
//              begin
//                GridppReport_jssj.ParameterByName('���' + IntToStr(i)).Value := '';
//              end;
              if sp_tj_fydl1.Locate('kmdm', qry_kmdm.FieldByName('kmdm').AsString, []) and
              not qry_kmdm.Eof then
              begin
                GridppReport_jssj.ParameterByName('��������' + IntToStr(i)).Value := Trim(sp_tj_fydl1.FieldByName('kmmc').AsString);
                GridppReport_jssj.ParameterByName('���' + IntToStr(i)).Value := FormatFloat('0.00', sp_tj_fydl1.FieldByName('fyje').AsFloat);
                end else
              begin
                GridppReport_jssj.ParameterByName('��������' + IntToStr(i)).Value := Trim(qry_kmdm.FieldByName('kmmc').AsString);
                GridppReport_jssj.ParameterByName('���' + IntToStr(i)).Value := '';
              end;
            end else
            begin
              GridppReport_jssj.ParameterByName('��������' + IntToStr(i)).Value := '';
              GridppReport_jssj.ParameterByName('���' + IntToStr(i)).Value := '';
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
              GridppReport_jssj.ParameterByName('��������' + IntToStr(i)).Value := Trim(sp_tj_fydl1.FieldByName('kmmc').AsString);
              GridppReport_jssj.ParameterByName('���' + IntToStr(i)).Value
                := FormatFloat('0.00', sp_tj_fydl1.FieldByName('fyje').AsFloat);
            end
            else
            begin
              GridppReport_jssj.ParameterByName('��������' + IntToStr(i)).Value := '';
              GridppReport_jssj.ParameterByName('���' + IntToStr(i)).Value := '';
            end;
          except
            //ShowMessage( inttostr( i ) );
          end;
          sp_tj_fydl1.Next;
          i := i + 1;
        end;
      end;
    end else   //û�е����ַ��ã��в��ǵ���ҽԺ
    begin
      qry_kmdm.First;
      i := 1;
      if jssjBb.ord then
      begin
        while (not qry_kmdm.Eof) or (i <= 40) do
        begin
          try
            if (pub_yydm = '0263') or  (pub_yydm = '0264')  then  //����ҽԺ��Ҫȫ����ʾ������
            begin
//              GridppReport_jssj.ParameterByName('��������' + IntToStr(i)).Value := Trim(qry_kmdm.FieldByName('kmmc').AsString);
//              GridppReport_jssj.ParameterByName('���' + IntToStr(i)).Value := '';
              if sp_tj_fydl1.Locate('kmdm', qry_kmdm.FieldByName('kmdm').AsString, []) and
              not qry_kmdm.Eof then
              begin
                GridppReport_jssj.ParameterByName('��������' + IntToStr(i)).Value := Trim(sp_tj_fydl1.FieldByName('kmmc').AsString);
                GridppReport_jssj.ParameterByName('���' + IntToStr(i)).Value := FormatFloat('0.00', sp_tj_fydl1.FieldByName('fyje').AsFloat);
                end else
              begin
                GridppReport_jssj.ParameterByName('��������' + IntToStr(i)).Value := Trim(qry_kmdm.FieldByName('kmmc').AsString);
                GridppReport_jssj.ParameterByName('���' + IntToStr(i)).Value := '';
              end;
            end else
            begin
              if sp_tj_fydl1.Locate('kmdm', qry_kmdm.FieldByName('kmdm').AsString, []) and
              not qry_kmdm.Eof then
              begin
                GridppReport_jssj.ParameterByName('��������' + IntToStr(i)).Value := Trim(sp_tj_fydl1.FieldByName('kmmc').AsString);
                GridppReport_jssj.ParameterByName('���' + IntToStr(i)).Value := FormatFloat('0.00', sp_tj_fydl1.FieldByName('fyje').AsFloat);
                end else
              begin
                GridppReport_jssj.ParameterByName('��������' + IntToStr(i)).Value := '';
                GridppReport_jssj.ParameterByName('���' + IntToStr(i)).Value := '';
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
              GridppReport_jssj.ParameterByName('��������' + IntToStr(i)).Value := Trim(sp_tj_fydl1.FieldByName('kmmc').AsString);
              GridppReport_jssj.ParameterByName('���' + IntToStr(i)).Value
                := FormatFloat('0.00', sp_tj_fydl1.FieldByName('fyje').AsFloat);
            end else
            begin
              GridppReport_jssj.ParameterByName('��������' + IntToStr(i)).Value := '';
              GridppReport_jssj.ParameterByName('���' + IntToStr(i)).Value := '';
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


//��Ժ�����ӡ���뵥

{-------------------------------------------------------------------------------
  ������:    Tfrm_zysf_print_service.printcyjssqd
  ����:      yangshuai
  ����:      2017.09.04
  ����:      zy_zyh, zy_sjbh, zy_brxm, zy_brxb, zy_brnl, zy_ksmc, zy_bch, zy_fylb, zy_tmh, zy_tchz: string; zy_zfy, zy_ytjejs, zy_ybjejs, zy_ytje, zy_ybje, zy_sbzfje, zy_sbtcje, sjyjze, yjze, zy_kzfje, yhje: real; zy_ryrq, zy_cyrq: Tdatetime; zy_csrq: string = '2007-12-12'; zy_brdz: string = ''; sp_tj_fydl1: TADOStoredProc = nil; qry_sbjsb: TADOQuery = nil; sp_sebrqk: TADOStoredProc = nil;zy_bah:string='';zy_nhfmbz:Real=0.00;zy_mzjzzh:string = '';azy_dbzfyje:real=0.00;azy_dbzmc:string='';azy_tcjesr:real=0.00;ts_jsfs:string=''
  ����ֵ:    ��
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
  GridppReport_jssqd.Printer.PrinterName := Frm_Dyjgl.ChangeDefaultPrinter(�����վ�);
{$ELSE}
  ChangePrinter(1);
{$ENDIF}
  try
    GridppReport_jssqd.ParameterByName('סԺ��').Value := trim(zy_tmh);
    if Assigned(GridppReport_jssqd.ParameterByName('zyh')) then
    GridppReport_jssqd.ParameterByName('zyh').Value := trim(zy_zyh);
    GridppReport_jssqd.ParameterByName('��������').Value := trim(zy_brxm);
    GridppReport_jssqd.ParameterByName('�վݺ�').Value := zy_sjbh;
    GridppReport_jssqd.ParameterByName('�����Ա�').Value := zy_brxb;
    GridppReport_jssqd.ParameterByName('��������').Value := zy_brnl;
    GridppReport_jssqd.ParameterByName('סԺ����').Value := Trim(zy_ksmc);
    GridppReport_jssqd.ParameterByName('������').Value := Trim(zy_bch);
    GridppReport_jssqd.ParameterByName('�������').Value := zy_fylb;
    if (azy_dbzmc <> '') and  ((pub_yydm = '0263') or (pub_yydm ='0264')) then   //����ҽԺ���ɷ�
    begin
      GridppReport_jssqd.ParameterByName('�ܷ���').Value := FormatFloat('0.00', azy_dbzfyje);
    end else
    begin
      GridppReport_jssqd.ParameterByName('�ܷ���').Value := FormatFloat('0.00', zy_zfy);
    end;

    if Assigned(GridppReport_jssqd.ParameterByName('�������')) and Assigned(sp_sebrqk) then
      GridppReport_jssqd.ParameterByName('�������').Value := Trim(sp_sebrqk.FieldByName('lbmc').AsString);
    if Assigned(GridppReport_jssqd.ParameterByName('�籣��λ')) and Assigned(sp_sebrqk) then
      GridppReport_jssqd.ParameterByName('�籣��λ').Value := Trim(sp_sebrqk.FieldByName('sbdw').AsString);
    if Assigned(GridppReport_jssqd.ParameterByName('������')) then
    GridppReport_jssqd.ParameterByName('������').Value := Trim(zy_bah);

      //

//     if qry_sbjsb.Locate( 'fylbmc', '��������', [] ) then
//      begin
//        GridppReport_jssj.ParameterByName('��������').Value := qry_sbjsb.FieldByName( 'sbzf' ).AsFloat;
//      end;

     //̨ɽ��ҽԺҪ�������շֿ���ʾ wangwei  170303
    if Assigned(GridppReport_jssqd.ParameterByName('��')) then         //��
    GridppReport_jssqd.ParameterByName('��').Value := FormatDateTime('yyyy',frm_func.curr_date());
    if Assigned(GridppReport_jssqd.ParameterByName('��')) then         //��
    GridppReport_jssqd.ParameterByName('��').Value := FormatDateTime('MM',frm_func.curr_date());
    if Assigned(GridppReport_jssqd.ParameterByName('��')) then         //��
    GridppReport_jssqd.ParameterByName('��').Value := FormatDateTime('dd',frm_func.curr_date());

    if Assigned(GridppReport_jssqd.ParameterByName('ͳ��1')) then
    GridppReport_jssqd.ParameterByName('ͳ��1').Value := tc1;
    if Assigned(GridppReport_jssqd.ParameterByName('ͳ��2')) then
    GridppReport_jssqd.ParameterByName('ͳ��2').Value := tc2;
    if pub_yydm='0240' then  //   ɳ����0240
    begin
      if Assigned(GridppReport_jssqd.ParameterByName('��������')) and Assigned(qry_sbjsb) then
      begin
        if qry_sbjsb.Locate( 'fylbmc', '��������', [] ) then
        begin
          GridppReport_jssqd.ParameterByName('��������').Value := qry_sbjsb.FieldByName( 'sbzf' ).AsFloat;
        end;
      end;
      //��������
      if Assigned(GridppReport_jssqd.ParameterByName('��������')) and Assigned(qry_sbjsb) then
      begin
        if qry_sbjsb.Locate( 'fylbmc', '��������', [] ) then
        begin
          GridppReport_jssqd.ParameterByName('��������').Value := qry_sbjsb.FieldByName( 'sbzf' ).AsFloat;
        end;
      end;

        //��������֤��
      if Assigned(GridppReport_jssqd.ParameterByName('��������֤��')) and Assigned(qry_sbjsb) then
      begin
          GridppReport_jssqd.ParameterByName('��������֤��').Value :=  Trim(zy_mzjzzh);
      end;

    end;



    // GridppReport_jssj.ParameterByName('�籣��λ').Value := 'test12121212121';
//    if Assigned(GridppReport_jssj.ParameterByName('���˵�λ')) then
//    GridppReport_jssj.ParameterByName('���˵�λ').Value := Trim(sp_sebrqk.FieldByName('dwdh').asstring);
    try
      if zy_ytje > 0 then
      begin
        if Assigned(GridppReport_jssqd.ParameterByName('ʵ�˽��')) then
        GridppReport_jssqd.ParameterByName('ʵ�˽��').Value := FormatFloat('0.00', zy_ytje);
      end
      else
      begin
        if Assigned(GridppReport_jssqd.ParameterByName('ʵ�˽��')) then
        GridppReport_jssqd.ParameterByName('ʵ�˽��').Value := '';
      end;

      if zy_ybje > 0 then
      begin
        if Assigned(GridppReport_jssqd.ParameterByName('ʵ�����')) then
        GridppReport_jssqd.ParameterByName('ʵ�����').Value := FormatFloat('0.00', zy_ybje);
      end
      else
      begin
        if Assigned(GridppReport_jssqd.ParameterByName('ʵ�����')) then
        GridppReport_jssqd.ParameterByName('ʵ�����').Value := '';
      end;
    except
    end;

    if zy_ytjejs > 0 then
    begin
      if Pub_yydm<>'0269' then
      begin
        GridppReport_jssqd.ParameterByName('Ӧ�˽��').Value := '��:' + FormatFloat('0.00', zy_ytjejs);
      end else
      begin   //̨ɽ��ҽԺ��Ҫ ���� ����
        GridppReport_jssqd.ParameterByName('Ӧ�˽��').Value :=  FormatFloat('0.00', zy_ytjejs);
      end;
    end
    else
    begin
      GridppReport_jssqd.ParameterByName('Ӧ�˽��').Value := '';
    end;
    if zy_ybjejs > 0 then
    begin
     if pub_yydm<>'0269' then
      begin
        GridppReport_jssqd.ParameterByName('Ӧ�����').Value := '��:' + FormatFloat('0.00', zy_ybjejs);
      end else  //̨ɽ��ҽԺ��Ҫ ���� ����
      begin
        GridppReport_jssqd.ParameterByName('Ӧ�����').Value := FormatFloat('0.00', zy_ybjejs);
      end;
    //  GridppReport_jssj.ParameterByName('Ӧ�����').Value := '��:' + FormatFloat('0.00', zy_ybjejs);
    end
    else
    begin
      GridppReport_jssqd.ParameterByName('Ӧ�����').Value := '';
    end;

      if pub_yydm='0269' then //̨ɽ�����վ����ӽ����վ�20170317
    begin
      if Assigned(GridppReport_jssqd.ParameterByName('���㷽ʽ')) then
        GridppReport_jssqd.ParameterByName('���㷽ʽ').Value :=ts_jsfs;
    end;


    if zy_sbtcje > 0 then
    begin
      if (pub_yydm=HN_SYRMYY)  and (Abs(zy_nhfmbz) > 1e-6) then
      begin
        GridppReport_jssqd.ParameterByName('ũ�ϸ��ײ���').Value := 'ũ�ϸ��ײ���:'+FormatFloat('0.00', zy_nhfmbz);
      end;
      if pub_yydm = '0015' then
      begin
        if pos('ũ��', zy_fylb) <= 0 then
        begin
          GridppReport_jssqd.ParameterByName('�籣�Ը�').Value := Copy('��������������������', 1, Length(zy_fylb + '����') - length('�籣�Ը�')) +
            '�����Ը�:' + FormatFloat('0.00', zy_sbzfje);
          GridppReport_jssqd.ParameterByName('�籣ͳ��').Value := Copy('��������������������', 1, Length(zy_fylb + '����') - length('�籣ͳ��'))
            + 'ͳ��֧��:' + FormatFloat('0.00', zy_sbtcje);
        end
        else
        begin
          GridppReport_jssqd.ParameterByName('�籣�Ը�').Value := zy_fylb + '�Ը�:' + FormatFloat('0.00', zy_sbzfje);
          GridppReport_jssqd.ParameterByName('�籣ͳ��').Value := zy_fylb + '����:' + FormatFloat('0.00', zy_sbtcje);
        end;
      end
      else
      begin
        GridppReport_jssqd.ParameterByName('�籣�Ը�').Value := '�Ը�:' + FormatFloat('0.00', zy_sbzfje);
        if pub_yydm<>'0269' then
        begin
          GridppReport_jssqd.ParameterByName('�籣�Ը�').Value := '�Ը�:' + FormatFloat('0.00', zy_sbzfje);
        end else
        begin
          GridppReport_jssqd.ParameterByName('�籣�Ը�').Value :=FormatFloat('0.00', zy_sbzfje);
        end;
        GridppReport_jssqd.ParameterByName('�籣ͳ��').Value := zy_fylb + 'ͳ��:' + FormatFloat('0.00', zy_sbtcje);
      end;
    end
    else
    begin
      GridppReport_jssqd.ParameterByName('�籣�Ը�').Value := '';
      GridppReport_jssqd.ParameterByName('�籣ͳ��').Value := '';
    end;


    //�籣
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
          GridppReport_jssqd.setParamVal('��ӡ�籣', '1');
          GridppReport_jssqd.setParamVal('����', FormatFloat('0.00', qry_pub.FieldByName('qfx').AsFloat));
          GridppReport_jssqd.setParamVal('�ʻ�֧��', FormatFloat('0.00', qry_pub.FieldByName('zhzf').AsFloat));
          GridppReport_jssqd.setParamVal('�籣�ܷ���', FormatFloat('0.00', qry_pub.FieldByName('yzlfy').AsFloat));
          GridppReport_jssqd.setParamVal('ͳ��֧��', FormatFloat('0.00', qry_pub.FieldByName('tczf').AsFloat));
          GridppReport_jssqd.setParamVal('�����Ը�', FormatFloat('0.00', qry_pub.FieldByName('blzf').AsFloat));
          GridppReport_jssqd.setParamVal('�˻����', FormatFloat('0.00', qry_pub.FieldByName('jshye').AsFloat));
          GridppReport_jssqd.setParamVal('����֧��', FormatFloat('0.00', qry_pub.FieldByName('qtzf').AsFloat));
          GridppReport_jssqd.setParamVal('ȫ�Ը�', FormatFloat('0.00', qry_pub.FieldByName('qzf').AsFloat));
          GridppReport_jssqd.setParamVal('�����Ը�', FormatFloat('0.00', qry_pub.FieldByName('bfzf').AsFloat));
          GridppReport_jssqd.setParamVal('����֧��', FormatFloat('0.00', qry_pub.FieldByName('grzf').AsFloat));
          GridppReport_jssqd.setParamVal('����ҽ�Ʊ������', FormatFloat('0.00', qry_pub.FieldByName('bcylbxje').AsFloat));
          GridppReport_jssqd.setParamVal('��������', FormatFloat('0.00', qry_pub.FieldByName('mzbz').AsFloat));
          GridppReport_jssqd.setParamVal('�籣�ֽ�֧��', FormatFloat('0.00', qry_pub.FieldByName('xjzf').AsFloat));
          GridppReport_jssqd.setParamVal('�����־', qry_pub.FieldByName('qslb').AsString);//�������
          if (pub_yydm = '0240') or (pub_yydm = '0175') then
          begin
            GridppReport_jssqd.setParamVal('����ҽ�Ʊ������', FormatFloat('0.00', qry_pub.FieldByName('jbylbxje').AsFloat));
            GridppReport_jssqd.setParamVal('�󲡲���', FormatFloat('0.00', qry_pub.FieldByName('dbbz').AsFloat));
            GridppReport_jssqd.setParamVal('����Ա����', FormatFloat('0.00', qry_pub.FieldByName('gwybxje').AsFloat));
          end;
          if pub_yydm = '0260' then
          begin
            GridppReport_jssqd.setParamVal('����ҽ�Ʊ������', FormatFloat('0.00', qry_pub.FieldByName('jbylbxje').AsFloat));
            GridppReport_jssqd.setParamVal('�󲡲���', FormatFloat('0.00', qry_pub.FieldByName('dbbz').AsFloat));
            GridppReport_jssqd.setParamVal('����Ա����', FormatFloat('0.00', qry_pub.FieldByName('gwybxje').AsFloat));
            GridppReport_jssqd.setParamVal('�������ͳ��֧��', FormatFloat('0.00', qry_pub.FieldByName('czjmtczf').AsFloat));
            GridppReport_jssqd.setParamVal('ũ�и�����', FormatFloat('0.00', qry_pub.FieldByName('kcbf').AsFloat));
            GridppReport_jssqd.setParamVal('�߶��⸶', FormatFloat('0.00', qry_pub.FieldByName('dejzzc').AsFloat));
            GridppReport_jssqd.setParamVal('����ҽ�Ʋ���', FormatFloat('0.00', qry_pub.FieldByName('bbzf').AsFloat));
            GridppReport_jssqd.setParamVal('���ݸɲ�����', FormatFloat('0.00', qry_pub.FieldByName('lxzf').AsFloat));
            GridppReport_jssqd.setParamVal('�Ϻ������', FormatFloat('0.00', qry_pub.FieldByName('scjrbz').AsFloat));
            GridppReport_jssqd.setParamVal('ҽ�ƹ��˱���', FormatFloat('0.00', qry_pub.FieldByName('ylgs').AsFloat));
            GridppReport_jssqd.setParamVal('����������', FormatFloat('0.00', qry_pub.FieldByName('syjj').AsFloat));
            GridppReport_jssqd.setParamVal('ʧҵ������', FormatFloat('0.00', qry_pub.FieldByName('syejj').AsFloat));
            GridppReport_jssqd.setParamVal('��������', FormatFloat('0.00', qry_pub.FieldByName('qtdy').AsFloat));
          end;
        end
        else
        begin
          GridppReport_jssqd.setParamVal('��ӡ�籣', '0');
          GridppReport_jssqd.setParamVal('����', '');
          GridppReport_jssqd.setParamVal('�ʻ�֧��', '0');
          GridppReport_jssqd.setParamVal('�籣�ܷ���', '');
          GridppReport_jssqd.setParamVal('ͳ��֧��', '0');
          GridppReport_jssqd.setParamVal('�����Ը�', '');
          GridppReport_jssqd.setParamVal('�˻����', '');
          GridppReport_jssqd.setParamVal('����֧��', '');
          GridppReport_jssqd.setParamVal('ȫ�Ը�', '');
          GridppReport_jssqd.setParamVal('�����Ը�', '');
          GridppReport_jssqd.setParamVal('����֧��', '');
          GridppReport_jssqd.setParamVal('����ҽ�Ʊ������', '');
          GridppReport_jssqd.setParamVal('��������', '');
          GridppReport_jssqd.setParamVal('�籣�ֽ�֧��','');
          if pub_yydm = '0240' then
          begin
            GridppReport_jssqd.setParamVal('����ҽ�Ʊ������','');
            GridppReport_jssqd.setParamVal('�󲡲���', '');
            GridppReport_jssqd.setParamVal('����Ա�������','');
            GridppReport_jssqd.setParamVal('�����־', '');//�������
          end;
          if pub_yydm = '0260' then
          begin
            GridppReport_jssqd.setParamVal('����ҽ�Ʊ������', '');

            GridppReport_jssqd.setParamVal('�󲡲���', '');
            GridppReport_jssqd.setParamVal('����Ա����', '');
            GridppReport_jssqd.setParamVal('ũ�и�����', '');
            GridppReport_jssqd.setParamVal('�������ͳ��֧��', '');
            GridppReport_jssqd.setParamVal('�߶��⸶', '');
            GridppReport_jssqd.setParamVal('����ҽ�Ʋ���', '');
            GridppReport_jssqd.setParamVal('���ݸɲ�����', '');
            GridppReport_jssqd.setParamVal('�Ϻ������', '');
            GridppReport_jssqd.setParamVal('ҽ�ƹ��˱���', '');
            GridppReport_jssqd.setParamVal('����������', '');
            GridppReport_jssqd.setParamVal('ʧҵ������', '');
            GridppReport_jssqd.setParamVal('��������', '');
          end;
        end;
      end;
    except
    end;
    GridppReport_jssqd.ParameterByName('ʵ��Ԥ���ܶ�').Value := FormatFloat('0.00', sjyjze);
    GridppReport_jssqd.ParameterByName('Ԥ���ܶ�').Value := FormatFloat('0.00', yjze);
    GridppReport_jssqd.ParameterByName('��֧�����').Value := FormatFloat('0.00', zy_kzfje);
    GridppReport_jssqd.ParameterByName('�Żݽ��').Value := FormatFloat('0.00', yhje);
    GridppReport_jssqd.ParameterByName('��Ժ����').Value := zy_ryrq;
    GridppReport_jssqd.ParameterByName('��Ժ����').Value := StrToDateTime(cyrq);
    GridppReport_jssqd.ParameterByName('��������').Value := zy_csrq;
    GridppReport_jssqd.ParameterByName('���˵�ַ').Value := zy_brdz;
    GridppReport_jssqd.ParameterByName('�������Ա').Value := pub_czyxm;
     if Assigned(GridppReport_jssqd.ParameterByName('��������')) then
    GridppReport_jssqd.ParameterByName('��������').Value := Frm_func.curr_date;
    GridppReport_jssqd.ParameterByName('ʮ��').Value := sw;
    GridppReport_jssqd.ParameterByName('��').Value := w;
    GridppReport_jssqd.ParameterByName('ǧ').Value := q;
    GridppReport_jssqd.ParameterByName('��').Value := b;
    GridppReport_jssqd.ParameterByName('ʰ').Value := s;
    GridppReport_jssqd.ParameterByName('Ԫ').Value := y;
    GridppReport_jssqd.ParameterByName('��').Value := j;
    GridppReport_jssqd.ParameterByName('��').Value := f;
    GridppReport_jssqd.setParamVal('ͳ�����', zy_tchz);
    GridppReport_jssqd.setParamVal('ͳ����ܽ��', zy_sbtcje);
    //�����ַ���
    if Assigned(GridppReport_jssqd.ParameterByName('�����ַ��ý��')) then
      GridppReport_jssqd.ParameterByName('�����ַ��ý��').Value := FormatFloat('0.00', azy_dbzfyje);
    //����������
    if Assigned(GridppReport_jssqd.ParameterByName('����������')) then
      GridppReport_jssqd.ParameterByName('����������').Value := azy_dbzmc;
    //ͳ��������
    if Assigned(GridppReport_jssqd.ParameterByName('ͳ��������')) then
      GridppReport_jssqd.ParameterByName('ͳ��������').Value := azy_tcjesr;

       //�Żݽ������
    if Assigned(GridppReport_jssqd.ParameterByName('�Żݽ������')) then
      GridppReport_jssqd.ParameterByName('�Żݽ������').Value := azy_yhjesr;


    if (azy_dbzmc <> '') and ((pub_yydm = '0263') or (pub_yydm ='0264')) then  //����ҽԺ���ɷ���
    begin
      GridppReport_jssqd.ParameterByName('Ӧ�˽��').Value := '';
      GridppReport_jssqd.ParameterByName('Ӧ�����').Value :='';

      if (azy_dbzfyje - sjyjze -  zy_sbtcje > 0) then
      begin
        if pub_yydm<>'0269' then
        begin
          GridppReport_jssqd.ParameterByName('Ӧ�����').Value := '��:' + FormatFloat('0.00', azy_dbzfyje - sjyjze -  zy_sbtcje );
        end else
        begin
          GridppReport_jssqd.ParameterByName('Ӧ�����').Value := FormatFloat('0.00', azy_dbzfyje - sjyjze -  zy_sbtcje );
        end;
      // GridppReport_jssj.ParameterByName('Ӧ�����').Value := '��:' + FormatFloat('0.00', azy_dbzfyje - sjyjze -  zy_sbtcje );
      end else if (azy_dbzfyje - sjyjze -  zy_sbtcje < 0) then
      begin
        if pub_yydm<>'0269' then
        begin
          GridppReport_jssqd.ParameterByName('Ӧ�˽��').Value := '��:' + FormatFloat('0.00', abs(azy_dbzfyje - sjyjze -  zy_sbtcje) );
        end else
        begin
          GridppReport_jssqd.ParameterByName('Ӧ�˽��').Value := FormatFloat('0.00', abs(azy_dbzfyje - sjyjze -  zy_sbtcje) );
        end;
      //GridppReport_jssj.ParameterByName('Ӧ�˽��').Value := '��:' + FormatFloat('0.00', abs(azy_dbzfyje - sjyjze -  zy_sbtcje) );
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
      GridppReport_jssqd.ParameterByName('Ԥ��ʮ��').Value := sw;
      GridppReport_jssqd.ParameterByName('Ԥ����').Value := w;
      GridppReport_jssqd.ParameterByName('Ԥ��ǧ').Value := q;
      GridppReport_jssqd.ParameterByName('Ԥ����').Value := b;
      GridppReport_jssqd.ParameterByName('Ԥ��ʰ').Value := s;
      GridppReport_jssqd.ParameterByName('Ԥ��Ԫ').Value := y;
      GridppReport_jssqd.ParameterByName('Ԥ����').Value := j;
      GridppReport_jssqd.ParameterByName('Ԥ����').Value := f;
    end;

    if pub_yydm='0246' then  //���� ��ѯסԺ��������
    begin
      DM_data.Qry_pub1.Close;
      DM_data.Qry_pub1.SQL.Text :=
        Format('select sum(sszje) je from zysf_mzsf_mzfymx where zyh=''%s''',[zy_zyh]);
      DM_data.Qry_pub1.Open;
      GridppReport_jssqd.setParamVal('������ý��',DM_data.Qry_pub1.FieldByName('je').AsFloat);
    end;

    zyts := CalcZyts(formatdatetime('yyyy-mm-dd hh:mm:ss', zy_ryrq), cyrq);
    GridppReport_jssqd.ParameterByName('סԺ����').Value := zyts;

    if (azy_dbzmc <> '') and ((pub_yydm = '0263') or (pub_yydm ='0264')) then  //����ҽԺ���ɷ���
    begin
      qry_kmdm.First;
      i := 1;
      if jssjBb.ord then
      begin
        while (not qry_kmdm.Eof) or (i <= 40) do
        begin
          try
            if (pub_yydm = '0263') or (pub_yydm= '0264') then  //����ҽԺ��Ҫȫ����ʾ������
            begin
//              GridppReport_jssj.ParameterByName('��������' + IntToStr(i)).Value := Trim(qry_kmdm.FieldByName('kmmc').AsString);
//              if  Trim(qry_kmdm.FieldByName('kmmc').AsString) ='���Ʒ�' then
//              begin
//                 GridppReport_jssj.ParameterByName('���' + IntToStr(i)).Value := FormatFloat('0.00', azy_dbzfyje);
//              end else
//              begin
//                GridppReport_jssj.ParameterByName('���' + IntToStr(i)).Value := '';
//              end;
              if sp_tj_fydl1.Locate('kmdm', qry_kmdm.FieldByName('kmdm').AsString, []) and
              not qry_kmdm.Eof then
              begin
                GridppReport_jssqd.ParameterByName('��������' + IntToStr(i)).Value := Trim(sp_tj_fydl1.FieldByName('kmmc').AsString);
                GridppReport_jssqd.ParameterByName('���' + IntToStr(i)).Value := FormatFloat('0.00', sp_tj_fydl1.FieldByName('fyje').AsFloat);
                end else
              begin
                GridppReport_jssqd.ParameterByName('��������' + IntToStr(i)).Value := Trim(qry_kmdm.FieldByName('kmmc').AsString);
                GridppReport_jssqd.ParameterByName('���' + IntToStr(i)).Value := '';
              end;
            end else
            begin
              GridppReport_jssqd.ParameterByName('��������' + IntToStr(i)).Value := '';
              GridppReport_jssqd.ParameterByName('���' + IntToStr(i)).Value := '';
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
              GridppReport_jssqd.ParameterByName('��������' + IntToStr(i)).Value := Trim(sp_tj_fydl1.FieldByName('kmmc').AsString);
              GridppReport_jssqd.ParameterByName('���' + IntToStr(i)).Value
                := FormatFloat('0.00', sp_tj_fydl1.FieldByName('fyje').AsFloat);
            end
            else
            begin
              GridppReport_jssqd.ParameterByName('��������' + IntToStr(i)).Value := '';
              GridppReport_jssqd.ParameterByName('���' + IntToStr(i)).Value := '';
            end;
          except
            //ShowMessage( inttostr( i ) );
          end;
          sp_tj_fydl1.Next;
          i := i + 1;
        end;
      end;
    end else   //û�е����ַ��ã��в��ǵ���ҽԺ
    begin
      qry_kmdm.First;
      i := 1;
      if jssqdBb.ord then
      begin
        while (not qry_kmdm.Eof) or (i <= 40) do
        begin
          try
            if (pub_yydm = '0263') or  (pub_yydm = '0264')  then  //����ҽԺ��Ҫȫ����ʾ������
            begin
//              GridppReport_jssj.ParameterByName('��������' + IntToStr(i)).Value := Trim(qry_kmdm.FieldByName('kmmc').AsString);
//              GridppReport_jssj.ParameterByName('���' + IntToStr(i)).Value := '';
              if sp_tj_fydl1.Locate('kmdm', qry_kmdm.FieldByName('kmdm').AsString, []) and
              not qry_kmdm.Eof then
              begin
                GridppReport_jssqd.ParameterByName('��������' + IntToStr(i)).Value := Trim(sp_tj_fydl1.FieldByName('kmmc').AsString);
                GridppReport_jssqd.ParameterByName('���' + IntToStr(i)).Value := FormatFloat('0.00', sp_tj_fydl1.FieldByName('fyje').AsFloat);
                end else
              begin
                GridppReport_jssqd.ParameterByName('��������' + IntToStr(i)).Value := Trim(qry_kmdm.FieldByName('kmmc').AsString);
                GridppReport_jssqd.ParameterByName('���' + IntToStr(i)).Value := '';
              end;
            end else
            begin
              if sp_tj_fydl1.Locate('kmdm', qry_kmdm.FieldByName('kmdm').AsString, []) and
              not qry_kmdm.Eof then
              begin
                GridppReport_jssqd.ParameterByName('��������' + IntToStr(i)).Value := Trim(sp_tj_fydl1.FieldByName('kmmc').AsString);
                GridppReport_jssqd.ParameterByName('���' + IntToStr(i)).Value := FormatFloat('0.00', sp_tj_fydl1.FieldByName('fyje').AsFloat);
                end else
              begin
                GridppReport_jssqd.ParameterByName('��������' + IntToStr(i)).Value := '';
                GridppReport_jssqd.ParameterByName('���' + IntToStr(i)).Value := '';
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
              GridppReport_jssqd.ParameterByName('��������' + IntToStr(i)).Value := Trim(sp_tj_fydl1.FieldByName('kmmc').AsString);
              GridppReport_jssqd.ParameterByName('���' + IntToStr(i)).Value
                := FormatFloat('0.00', sp_tj_fydl1.FieldByName('fyje').AsFloat);
            end else
            begin
              GridppReport_jssqd.ParameterByName('��������' + IntToStr(i)).Value := '';
              GridppReport_jssqd.ParameterByName('���' + IntToStr(i)).Value := '';
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

//������ϸ�嵥��ӡ

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
  //����try����û�д򲹶���ҽԺ�嵥����
  try
    prv_cybz := sp_brjbxx.FieldByName('cybz').AsBoolean;
    if prv_cybz then
    begin
      prv_zyts := 'סԺ����:' + Frm_func.func_jsts(FormatDateTime('yyyy-MM-dd HH:nn:ss', prv_ryrq),
        FormatDateTime('yyyy-MM-dd HH:nn:ss', prv_cyrq)) + '��';
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
      GridppReportfymx.Printer.PrinterName := Frm_Dyjgl.ChangeDefaultPrinter(�����嵥);
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

//��ӡ��ҩ��ϸ�嵥

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
      GridppReportYymx.Printer.PrinterName := Frm_Dyjgl.ChangeDefaultPrinter(�����嵥);
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
      GridppReportYymx.setParamVal('���ּ�����', '��');
      //GridppReportYymx.ParameterByName( '���ּ�����' ).Value := '��';
    end
    else
    begin
      GridppReportYymx.setParamVal('���ּ�����', '��');
      //GridppReportYymx.ParameterByName( '���ּ�����' ).Value := '��';
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
  gp_lxdbb.ParameterByName('����').Value := '����:' + trim(sp_jbxx.FieldByName('brxm').AsString);
  gp_lxdbb.ParameterByName('סԺ��').Value := 'סԺ��:' + trim(sp_jbxx.FieldByName('tmh').AsString);
  gp_lxdbb.ParameterByName('�Ա�').Value := '�Ա�:' + trim(sp_jbxx.FieldByName('brxb').AsString);
  gp_lxdbb.ParameterByName('��������').Value := '��������:' + trim(sp_jbxx.FieldByName('ksmc').AsString);
  gp_lxdbb.ParameterByName('����').Value := '����:' + trim(sp_jbxx.FieldByName('bch').AsString);
  gp_lxdbb.ParameterByName('����ɷ�Ѫ').Value := '����ɷ�Ѫ:' + trim(qry_lxd.FieldByName('BLOOD_TYPE_NAME').AsString);
  gp_lxdbb.ParameterByName('RHѪ��').Value := 'RHѪ��:' + trim(qry_lxd.FieldByName('Rh_Rh').AsString);
  gp_lxdbb.ParameterByName('��Ѫ����').Value := '��Ѫ����:' + trim(qry_lxd.FieldByName('BLOOD_SUM').AsString);
  gp_lxdbb.ParameterByName('��λ').Value := trim(qry_lxd.FieldByName('BLOOD_UNIT').AsString);
  gp_lxdbb.ParameterByName('��Ѫ��Ѫ��').Value := 'Ѫ��:' + trim(qry_lxd.FieldByName('PAT_BLOOD_GROUP').AsString);
  gp_lxdbb.ParameterByName('��Ѫʱ��').Value := '��Ѫʱ��:' + qry_lxd.FieldByName('TRANS_DATE').AsString;

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
  // δ�ύ�ò��� �ձ����� Create Table synr (ksrq int null,xmmc varchar(8000) null, yf varchar(20) null)
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

  if Assigned( gp_syjhd.ParameterByName('�Ա�'))then
  gp_syjhd.ParameterByName('�Ա�').value := '�Ա�:'+trim(sp_jbxx.FieldByName('brxb').AsString);

  if Assigned( gp_syjhd.ParameterByName('����'))then
  gp_syjhd.ParameterByName('����').value := '����:'+trim(sp_jbxx.FieldByName('brnl').AsString);

  gp_syjhd.ParameterByName('����').Value := '����:' + trim(sp_jbxx.FieldByName('brxm').AsString);
  gp_syjhd.ParameterByName('סԺ��').Value := 'סԺ��:' + trim(sp_jbxx.FieldByName('tmh').AsString);
  gp_syjhd.ParameterByName('��������').Value := '����:' + pub_ksmc;
  gp_syjhd.ParameterByName('����').Value := '����:' + trim(sp_jbxx.FieldByName('bch').AsString);
   //   ��Ԫ�ѻ�ҽԺ��ʿ����վ ��Һ��Ҫ���ӡ ������Ϻ͵���
  if Assigned( gp_syjhd.ParameterByName('��Ժ���'))then
  gp_syjhd.ParameterByName('��Ժ���').value := '��Ժ���:'+trim(sp_jbxx.FieldByName('ryzd').AsString);
  if Assigned(gp_syjhd.ParameterByName('bz'))then
  gp_syjhd.ParameterByName('bz').Value :=  trim(sp_synr.FieldByName('bz').AsString);

  if pub_yydm = '0240' then
    gp_syjhd.ParameterByName('��Һ����').Value := '��ӡ����:' + rq
  else
    gp_syjhd.ParameterByName('��Һ����').Value := '��Һ����:' + rq;

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
    if pub_yydm='0271' then //�޵�ҽԺԤ��
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

//��ӡ��ҩ��ϸ�嵥

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
      GridppReportZymx.Printer.PrinterName := Frm_Dyjgl.ChangeDefaultPrinter(�����嵥);
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
//��ӡ�嵥�վݸ���

function Tfrm_zysf_print_service.PrintSjfj(brxm, brnl, brxb, ryrq, cyrq, tmh,
  zyks, tbje, bch, fylb, zgys: string;
  zfy, zyj, jszj, zzhj: Real;
  sp_fydl, sp_fymx, sp_yymx: TADOStoredProc): string;
begin

end;

//��ӡ������ϸ����

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
  //����try����û�д򲹶���ҽԺ�嵥����
  try
    prv_cybz := sp_brjbxx.FieldByName('cybz').AsBoolean;
    if prv_cybz then
    begin
      prv_zyts := 'סԺ����:' + Frm_func.func_jsts(FormatDateTime('yyyy-MM-dd HH:nn:ss', prv_ryrq),
        FormatDateTime('yyyy-MM-dd HH:nn:ss', prv_cyrq)) + '��';
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
  ������:    Tfrm_zysf_print_service.PrintddyyFyhz
  ����:      yangshuai
  ����:      2017.09.27
  ����:      sp_fyhz, sp_yjmx: TADOStoredProc
  ����ֵ:    string
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

//��ӡ��ҩ��ϸ����

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
  //����try����û�д򲹶���ҽԺ�嵥����
  try
    prv_cybz := sp_brjbxx.FieldByName('cybz').AsBoolean;
    if prv_cybz then
    begin
      prv_zyts := 'סԺ����:' + Frm_func.func_jsts(FormatDateTime('yyyy-MM-dd HH:nn:ss', prv_ryrq),
        FormatDateTime('yyyy-MM-dd HH:nn:ss', prv_cyrq)) + '��';
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
  TmpCusBB: TCusBb; //�������뵥
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




//һ���嵥

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
    GridppReportYrqd.ParameterByName('��������').Value := brxm;
    GridppReportYrqd.ParameterByName('����').Value := bch;
    GridppReportYrqd.ParameterByName('����').Value := rq;
    GridppReportYrqd.ParameterByName('�嵥��ֹ�����ܷ���').Value := zfy;
    GridppReportYrqd.ParameterByName('Ԥ��').Value := zyj;
    GridppReportYrqd.ParameterByName('סԺ��').Value := tmh;
    GridppReportYrqd.ParameterByName('���').Value := ye;
//    GridppReportYrqd.ParameterByName('סԺ����').Value := zy_bqmc;
    GridppReportYrqd.ParameterByName('��ǰ��������').Value := zy_bqmc;
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
      if pub_yydm = '0271' then  //�޵�ҽԺ�Ӳ����ӱ�����Ҫ��ʾ��������ͷ
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

  if pub_yydm = '0271' then         //�޵�ҽԺ ��ӡ����
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
//    ShowMessage('��������Ӧ');
//    GridppReportYrqd.Set_PrintAsDesignPaper(true);
//    GridppReportYrqd.set_p
//    GridppReportYrqd.Set_PrintToStretch(True);
  end;

  try
    reportHeader:=GridppReportYrqd.ReportHeader[5];   //����
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
   if pub_yydm = '0271' then         //�޵�ҽԺ ��ӡ����
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
  ������:    Tfrm_zysf_print_service.Print_ddyy_CountYrqd
  ����:      yangshuai
  ����:      2017.09.26
  ����:      sp_yrqd_PrintData: TADOStoredProc
  ����ֵ:    string
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
//    GridppReportYrqd.ParameterByName('��������').Value := brxm;
//    GridppReportYrqd.ParameterByName('����').Value := bch;
//    GridppReportYrqd.ParameterByName('����').Value := rq;
//    GridppReportYrqd.ParameterByName('�嵥��ֹ�����ܷ���').Value := zfy;
//    GridppReportYrqd.ParameterByName('Ԥ��').Value := zyj;
//    GridppReportYrqd.ParameterByName('סԺ��').Value := tmh;
//    GridppReportYrqd.ParameterByName('���').Value := ye;
////    GridppReportYrqd.ParameterByName('סԺ����').Value := zy_bqmc;
//    GridppReportYrqd.ParameterByName('��ǰ��������').Value := zy_bqmc;
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

//��� СдתΪ��д ����

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

  if pos('��', zje) <> 0 then
  begin
    sw1 := copy(zje, 1, pos('��', zje) + 1);
    if pos('ʰ', sw1) <> 0 then
    begin
      sw := copy(sw1, 1, pos('ʰ', sw1) - 1);
      delete(sw1, 1, pos('ʰ', sw1) + 1);
    end
    else
      sw := '��';
    if copy(sw1, 1, pos('��', sw1) - 1)='' then
    begin
      w := s1[3] + s1[4];
    end else
    begin
      w := copy(sw1, 1, pos('��', sw1) - 1);
    end;
    delete(zje, 1, pos('��', zje) + 1);
  end
  else
  begin
    sw := '��';
    w := '��';
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
  //------------------calmhawk---����----------
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
  //------------------calmhawk---����----------
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
        if Trim(SP_yymx.FieldByName('yplb').AsString) = '����' then
        begin
          jlhj := jlhj + SP_yymx.FieldByName('cfje').AsFloat;
        end
        else
          if Trim(SP_yymx.FieldByName('yplb').AsString) = '����' then
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
///��ӡ����Ԥ���˷ѵ�
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
   gp_tyjbb.ParameterByName('����').Value := trim(zy_ksmc);
   gp_tyjbb.ParameterByName('����').Value := trim(zy_brxm);
   gp_tyjbb.ParameterByName('�Ա�').Value := trim(zy_brxb);
   gp_tyjbb.ParameterByName('����').Value := zy_brnl;
   gp_tyjbb.ParameterByName('סԺ��').Value := trim(zy_zyh);
   gp_tyjbb.ParameterByName('�˷���Ŀ').Value := trim(zy_tfxm);
   gp_tyjbb.ParameterByName('�˷ѽ��').Value := zy_tyjje;
   //�ꡢ�¡���
   Present:= frm_func.curr_date;
   DecodeDate(Present, Year, Month, Day);
   gp_tyjbb.ParameterByName('��').Value := inttostr(Year);
   gp_tyjbb.ParameterByName('��').Value := inttostr(Month);
   gp_tyjbb.ParameterByName('��').Value := inttostr(Day);

   ///��ȡ��'��ǧ���١�ʰ��Ԫ���ǡ���'
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

   gp_tyjbb.ParameterByName('��').Value := wan;
   gp_tyjbb.ParameterByName('Ǫ').Value := qian;
   gp_tyjbb.ParameterByName('��').Value := bai;
   gp_tyjbb.ParameterByName('ʰ').Value := shi;
   gp_tyjbb.ParameterByName('Ԫ').Value := yuan;
   gp_tyjbb.ParameterByName('��').Value := jiao;
   gp_tyjbb.ParameterByName('��').Value := fen;


   //��ǰ����Ա
   gp_tyjbb.ParameterByName('����Ա').Value := pub_czyxm;

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

 if Assigned(gpPathRep.ParameterByName('סԺ��')) then
 begin
    gpPathRep.ParameterByName('סԺ��').Value := trim(zyh);
 end;


  if Assigned(gpPathRep.ParameterByName('·������')) then
  begin
      gpPathRep.ParameterByName('·������').Value :=
              trim(DM_data.qry_pub.FieldByName('·������').AsString);
  end;


  if Assigned(gpPathRep.ParameterByName('�����')) then
  begin
      gpPathRep.ParameterByName('�����').Value :=
              trim(DM_data.qry_pub.FieldByName('�����').AsString);
  end;


  if Assigned(gpPathRep.ParameterByName('���ö���')) then
  begin
    gpPathRep.ParameterByName('���ö���').Value :=
              trim(DM_data.qry_pub.FieldByName('���ö���').AsString);
  end;


  if Assigned(gpPathRep.ParameterByName('��׼סԺ����')) then
  begin
      gpPathRep.ParameterByName('��׼סԺ����').Value :=
              trim(DM_data.qry_pub.FieldByName('��׼סԺ����').AsString);
  end;


  if Assigned(gpPathRep.ParameterByName('����')) then
  begin
      gpPathRep.ParameterByName('����').Value :=
              trim(DM_data.qry_pub.FieldByName('����').AsString);
  end;


  if Assigned(gpPathRep.ParameterByName('�Ա�')) then
  begin
       gpPathRep.ParameterByName('�Ա�').Value :=
              trim(DM_data.qry_pub.FieldByName('�Ա�').AsString);
  end;


  if Assigned(gpPathRep.ParameterByName('����')) then
  begin
    gpPathRep.ParameterByName('����').Value :=
              trim(DM_data.qry_pub.FieldByName('����').AsString);
  end;


  if Assigned(gpPathRep.ParameterByName('��Ժ����')) then
  begin
      gpPathRep.ParameterByName('��Ժ����').Value :=
              trim(DM_data.qry_pub.FieldByName('��Ժ����').AsString);
  end;


  if Assigned(gpPathRep.ParameterByName('��Ժ����')) then
  begin
      gpPathRep.ParameterByName('��Ժ����').Value :=
              trim(DM_data.qry_pub.FieldByName('��Ժ����').AsString);
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
        gpSpireLamellaCHild.Printer.PrinterName := Frm_Dyjgl.ChangeDefaultPrinter(���);
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
      gpSpireLamellaCHild.ParameterByName('����').Value := Name;
      gpSpireLamellaCHild.ParameterByName('�Ա�').Value := Gender;
      gpSpireLamellaCHild.ParameterByName('����').Value := Age;
      gpSpireLamellaCHild.ParameterByName('����').Value := OfcName;
      gpSpireLamellaCHild.ParameterByName('סԺ��').Value := CardNo;
      gpSpireLamellaCHild.ParameterByName('����ҽԺ����').Value := pub_yymc;
      gpSpireLamellaCHild.ParameterByName('������').Value := BedNo;
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
        gpSpireLamella.Printer.PrinterName := Frm_Dyjgl.ChangeDefaultPrinter(���);
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
      gpSpireLamella.ParameterByName('����').Value := Name;
      gpSpireLamella.ParameterByName('�Ա�').Value := Gender;
      gpSpireLamella.ParameterByName('����').Value := Age;
      gpSpireLamella.ParameterByName('����').Value := OfcName;
      gpSpireLamella.ParameterByName('סԺ��').Value := CardNo;
      gpSpireLamella.ParameterByName('����ҽԺ����').Value := pub_yymc;
      gpSpireLamella.ParameterByName('������').Value := BedNo;
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

  gpTransportRep.ParameterByName('��Ժ���').Value := Diagnosis;
  gpTransportRep.ParameterByName('���䷽ʽ').Value := Way;
  gpTransportRep.ParameterByName('ҽ������').Value := Date;
  gpTransportRep.ParameterByName('���').Value := DiagType;
  gpTransportRep.ParameterByName('����ҽ��').Value := DoctorName;
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
      gp_jysqd.ParameterByName('�Ƿ񼱲�').Value := '����'
    else
      gp_jysqd.ParameterByName('�Ƿ񼱲�').Value := '';
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
      Application.MessageBox('�Ҳ���������뵥������' + #13#10 +
        '������������뵥�Զ��屨����������ϵͳ��', '����', MB_OK +
        MB_ICONINFORMATION);
      exit;
    end;
    gp_jcsqd.LoadFromStr(jcsqdBb);
    gp_jcsqd.DataSet := nil;
    gp_jcsqd.DataSet := sp_jcsqddy;
    if Assigned(gp_jcsqd.ParameterByName('�Ƿ񼱲�')) then
    begin
      if isJC then
        gp_jcsqd.ParameterByName('�Ƿ񼱲�').Value := '����'
      else
        gp_jcsqd.ParameterByName('�Ƿ񼱲�').Value := '';
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

 {��鵥 ���������ӡ}
procedure Tfrm_zysf_print_service.printjcdtm(dyjxh:Integer;sp_jcsq: TADOStoredProc);
var olddyj:Integer;
begin
  //�ȴ�ӡ����

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



//����zybl_zyyz_cx_jcsqd
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
  {$REGION '���ر���'}
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
//         Proc_ChangePrinter(v_PrinterIndex_old, True);  //��ӡ����ԭ
//      end;
    end;

end;

//һ��ͨ�۷��վݴ�ӡ


{-------------------------------------------------------------------------------
  ������:    Tfrm_zysf_print_service.print_zysf_yktkf
  ����:      yangshuai
  ����:      2016.04.23
  ����:      qry_fymx:TCustomADODataSet;tmh,brxm,sfrq,czy,sjbh:string
  ����ֵ:    ��
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
      ShowMessage('���������ڣ����ȼ��뱨����');
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
        if Assigned(gp_zysfjsd.ParameterByName('�����')) then
          gp_zysfjsd.ParameterByName('�����').Value := v_tmh;
        if Assigned(gp_zysfjsd.ParameterByName('סԺ��')) then
          gp_zysfjsd.ParameterByName('סԺ��').Value := v_zyh;
        if Assigned(gp_zysfjsd.ParameterByName('��������')) then
          gp_zysfjsd.ParameterByName('��������').Value := v_zyks;
        if Assigned(gp_zysfjsd.ParameterByName('��Ժ����')) then
          gp_zysfjsd.ParameterByName('��Ժ����').Value := v_ryrq;
        if Assigned(gp_zysfjsd.ParameterByName('��Ժ����')) then
          gp_zysfjsd.ParameterByName('��Ժ����').Value := v_cyrq;
        if Assigned(gp_zysfjsd.ParameterByName('סԺ����')) then
          gp_zysfjsd.ParameterByName('סԺ����').Value := v_zyts;
        if Assigned(gp_zysfjsd.ParameterByName('��������')) then
          gp_zysfjsd.ParameterByName('��������').Value := v_brxm;
        if Assigned(gp_zysfjsd.ParameterByName('�������')) then
          gp_zysfjsd.ParameterByName('�������').Value := v_fylb;
        if Assigned(gp_zysfjsd.ParameterByName('�����Ա�')) then
          gp_zysfjsd.ParameterByName('�����Ա�').Value := v_brxb;
        if Assigned(gp_zysfjsd.ParameterByName('�վݱ��')) then
          gp_zysfjsd.ParameterByName('�վݱ��').Value := v_sjbh;
        if Assigned(gp_zysfjsd.ParameterByName('��������')) then
          gp_zysfjsd.ParameterByName('��������').Value := v_brnl;
        if Assigned(gp_zysfjsd.ParameterByName('��ҩ��')) then
          gp_zysfjsd.ParameterByName('��ҩ��').Value := v_xyf;
        if Assigned(gp_zysfjsd.ParameterByName('��ҩ��')) then
          gp_zysfjsd.ParameterByName('��ҩ��').Value := v_zyf;
        if Assigned(gp_zysfjsd.ParameterByName('��ҩ��')) then
          gp_zysfjsd.ParameterByName('��ҩ��').Value := v_cyf;
        if Assigned(gp_zysfjsd.ParameterByName('����')) then
          gp_zysfjsd.ParameterByName('����').Value := v_zcf;
        if Assigned(gp_zysfjsd.ParameterByName('����')) then
          gp_zysfjsd.ParameterByName('����').Value := v_jcf;
        if Assigned(gp_zysfjsd.ParameterByName('������')) then
          gp_zysfjsd.ParameterByName('������').Value := v_ssf;
        if Assigned(gp_zysfjsd.ParameterByName('��Ѫ��')) then
          gp_zysfjsd.ParameterByName('��Ѫ��').Value := v_sxf;
        if Assigned(gp_zysfjsd.ParameterByName('���Ʒ�')) then
          gp_zysfjsd.ParameterByName('���Ʒ�').Value := v_zlf;
        if Assigned(gp_zysfjsd.ParameterByName('���Ϸ�')) then
          gp_zysfjsd.ParameterByName('���Ϸ�').Value := v_clf;
        if Assigned(gp_zysfjsd.ParameterByName('������')) then
          gp_zysfjsd.ParameterByName('������').Value := v_hlf;
        if Assigned(gp_zysfjsd.ParameterByName('��λ��')) then
          gp_zysfjsd.ParameterByName('��λ��').Value := v_cwf;
        if Assigned(gp_zysfjsd.ParameterByName('����')) then
          gp_zysfjsd.ParameterByName('����').Value := v_qt;
        if Assigned(gp_zysfjsd.ParameterByName('�ܷ���')) then
          gp_zysfjsd.ParameterByName('�ܷ���').Value := v_zje;
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
