unit P_mzsf;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, Grids, DBGrids, Buttons, Menus, DBTables, Db,
  ExtCtrls, ComCtrls, DBCGrids, ImgList, ActnList, ADODB, printers,
  DBGridEh, QuickRpt, Qrctrls, OleServer, Variants, GridsEh, sldll, cxControls,
  cxSplitter, cxContainer, cxEdit, cxCheckBox, p_func_yybj, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxLookAndFeelPainters, cxButtons,
  jkk_func, p_jkk_re, IdBaseComponent, IdComponent, IdTCPConnection,
  IdTCPClient, IdHTTP, XMLIntf, XMLDoc, cxTextEdit
{$IFDEF sys_hygl}
  , P_sjcd, p_mzcfcx
{$ENDIF}
  ;
type

  TRecHjje_hjbs = record
    Hjje: Real; //前台合计费用金额
    Hjbs: Integer; //前台合计费用笔数
  end;
  TInfor_fy = record //收费金额情况
    fyje: Double; //费用金额
    ssje: Double; //实收金额
    sjsl: Integer; //收据数量
    hykxkje: Double; //会员卡下卡金额
    tczf, xjzf, zhzf, zhye: Double; //社保：统筹支付；现金支付；账户支付；账户余额
  end;
  //语音报价器函数申明
const
  WM_YYBJ_Message = WM_User + 1;
type
  Tfrm_mzsf = class(TForm)
    menu1: TPopupMenu;
    N1: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    N14: TMenuItem;
    Panel1: TPanel;
    Label2: TLabel;
    cfh: TEdit;
    cfy: TEdit;
    cfn: TEdit;
    editsflb: TEdit;
    Label15: TLabel;
    Label3: TLabel;
    brxm: TEdit;
    Label11: TLabel;
    czks: TEdit;
    Label6: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    czys: TEdit;
    kdks: TEdit;
    E_je: TEdit;
    Editbrjkje: TEdit;
    Label5: TLabel;
    kdys: TEdit;
    Panel2: TPanel;
    Label1: TLabel;
    mzh: TEdit;
    b_cancel: TBitBtn;
    b_save: TBitBtn;
    Panel3: TPanel;
    Label9: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    ds_cx: TDataSource;
    N3: TMenuItem;
    N6: TMenuItem;
    DBGrid1: TDBGrideh;
    DBGridypmx: TDBGridEh;
    DBGrid5: TDBGrid;
    sp_srzk: TADOStoredProc;
    sp_se_cfje: TADOStoredProc;
    Qry_zb: TADOQuery;
    DS_zb: TDataSource;
    e_bh2: TEdit;
    e_bh1: TEdit;
    sp_cx_kyh: TADOStoredProc;
    Label21: TLabel;
    e_dw: TEdit;
    SP_cfbh: TADOStoredProc;
    Qry_mx: TADOQuery;
    Qry_mxcfbh: TStringField;
    Qry_mxxh: TIntegerField;
    Qry_mxypdm: TStringField;
    Qry_mxypdwid: TIntegerField;
    Qry_mxypdw: TStringField;
    Qry_mxypbzbl: TIntegerField;
    Qry_mxypsl: TBCDField;
    Qry_mxypdj: TBCDField;
    Qry_mxypgg: TStringField;
    Qry_mxhj: TFloatField;
    Qry_mxyplb: TStringField;
    DS_mx: TDataSource;
    Qry_ypdm: TADOQuery;
    DS_yp: TDataSource;
    SP_yp: TADOStoredProc;
    Qry_ypbz: TADOQuery;
    DS_ypbz: TDataSource;
    sp_xgkc: TADOStoredProc;
    Bevel1: TBevel;
    Qry_mxypmc: TStringField;
    Panel4: TPanel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    sp_sqkh: TADOStoredProc;
    Shape1: TShape;
    zje: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    N2: TMenuItem;
    Qry_mxbdbz: TStringField;
    sp_sfNew: TADOStoredProc;
    GetNewEdit: TADODataSet;
    qry_dzbl_cfmx: TADODataSet;
    ds_dzbl_cfmx: TDataSource;
    Qry_sfinfo: TADOQuery;
    DSsfinfo: TDataSource;
    DBGrid2: TDBGrid;
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    zlsj: TQRLabel;
    fylb: TQRLabel;
    xxje: TQRLabel;
    dxje: TQRLabel;
    czy: TQRLabel;
    fymc: TQRLabel;
    ysxm: TQRLabel;
    yymc: TQRLabel;
    fph: TQRLabel;
    drxh: TQRLabel;
    brxmc: TQRLabel;
    cfbh: TQRLabel;
    tmh: TQRLabel;
    ad_jlrecord: TADOCommand;
    qry_fydm: TADODataSet;
    LB_khy: TLabel;
    hjje: TQRLabel;
    e_sfcs: TEdit;
    kyhsfbz: TQRLabel;
    dbgrid_fymx: TDBGridEh;
    qry_fymx: TADOQuery;
    ds_fymx: TDataSource;
    qry_fymxcfbh: TStringField;
    qry_fymxfydm: TStringField;
    qry_fymxfydj: TBCDField;
    qry_fymxfyzje: TBCDField;
    qry_fymxsszje: TBCDField;
    qry_fymxghks: TStringField;
    qry_fymxkdks: TStringField;
    qry_fymxczks: TStringField;
    qry_fymxkdys: TStringField;
    qry_fymxczys: TStringField;
    qry_fymxph: TStringField;
    qry_fymxsfrq: TDateTimeField;
    qry_fymxfymc: TStringField;
    qry_fymxtmh: TStringField;
    qry_fymxbrxm: TStringField;
    qry_fymxfylb: TStringField;
    qry_fymxsfczy: TStringField;
    qry_fymxsffs: TStringField;
    qry_ksdm: TADOQuery;
    qry_fymxksmc: TStringField;
    qry_ysdm: TADOQuery;
    qry_fymxysmc: TStringField;
    qry_fymxmscf: TStringField;
    qry_fymxjkyhfybl: TFloatField;
    qry_fymxykyhfybl: TFloatField;
    qry_fymxptkyhfybl: TFloatField;
    qry_fymxid: TAutoIncField;
    qry_fymxsfbz: TBooleanField;
    qry_dbxm_xmmx: TADOQuery;
    qry_srf: TADOQuery;
    Timer1: TTimer;
    qry_sfxm: TADOQuery;
    qry_fymxfydymc: TStringField;
    qry_fymxqqkyhfybl: TStringField;
    Panel6: TPanel;
    Label16: TLabel;
    sjbh: TEdit;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    edt_sjsysl: TEdit;
    Label27: TLabel;
    czyxm: TEdit;
    Label28: TLabel;
    czydm: TEdit;
    brlb: TEdit;
    fyf: TLabel;
    Label29: TLabel;
    qry_fymxbrlb: TStringField;
    Label30: TLabel;
    zje1: TLabel;
    Label31: TLabel;
    Shape3: TShape;
    Qry_mxcfjl: TIntegerField;
    Label32: TLabel;
    qry_xdcf_mx: TADOQuery;
    Lab_bl: TLabel;
    g_empt: TDBGrid;
    sp_up_sjbh: TADOStoredProc;
    Label33: TLabel;
    edt_ljje: TEdit;
    Editbrzhje: TEdit;
    Bevel2: TBevel;
    qry_fymxdldm: TStringField;
    Lab_last_xfje: TLabel;
    cxSplitter1: TcxSplitter;
    Panel_dzcfmx: TPanel;
    dzcfmxgrid: TDBGridEh;
    Panel5: TPanel;
    Qry_mxypjylbz: TStringField;
    qry_fymxkdksmc: TStringField;
    qry_fymxsfczymc: TStringField;
    qry_fymxsbfybl01: TFloatField;
    qry_fymxsbfybl02: TFloatField;
    qry_fymxsbfybl03: TFloatField;
    qry_fymxsbfybl04: TFloatField;
    qry_fymxsbfybl05: TFloatField;
    qry_fymxsbfybl06: TFloatField;
    qry_fymxsbfybl07: TFloatField;
    qry_fymxsbfybl08: TFloatField;
    qry_fymxsbfybl09: TFloatField;
    qry_fymxsbfybl10: TFloatField;
    qry_fymxsbfybl11: TFloatField;
    qry_fymxsbfybl12: TFloatField;
    qry_fymxsbfybl13: TFloatField;
    qry_fymxczwz: TStringField;
    Label34: TLabel;
    cb_fylj: TcxCheckBox;
    qry_dzbl_cfmxypdm: TStringField;
    qry_dzbl_cfmxypmc: TStringField;
    qry_dzbl_cfmxypdw: TStringField;
    qry_dzbl_cfmxypsl: TBCDField;
    qry_dzbl_cfmxypdj: TStringField;
    qry_dzbl_cfmxyytj: TStringField;
    qry_dzbl_cfmxyf: TStringField;
    qry_dzbl_cfmxyl: TStringField;
    qry_dzbl_cfmxyldw: TStringField;
    qry_dzbl_cfmxfzph: TStringField;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    qry_jylhj: TADOQuery;
    b_sbhk: TBitBtn;
    pnl_sb: TPanel;
    pnl1: TPanel;
    pnl2: TPanel;
    pnl3: TPanel;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    edt_tczf: TEdit;
    edt_zhzf: TEdit;
    edt_xjzf: TEdit;
    qry_sbjshz: TADOQuery;
    qry_fymxzkje: TFloatField;
    bt_tc: TBitBtn;
    pan_psjg: TPanel;
    Panel8: TPanel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    qry_psjg: TADOQuery;
    ds_psjg: TDataSource;
    qry_psjgypmc: TStringField;
    qry_psjgpsjg: TStringField;
    cxGrid1DBTableView1ypmc: TcxGridDBColumn;
    cxGrid1DBTableView1psjg: TcxGridDBColumn;
    cxButton1: TcxButton;
    qry_sbjsxx: TADOQuery;
    qry_kyh_xzmx: TADOQuery;
    ds_kyh_xzmx: TDataSource;
    qry_cx_mzzcfts: TADOQuery;
    ds_cx_mzzcfts: TDataSource;
    qry_fymxhykxkje: TBCDField;
    qry_fymxbrxb: TStringField;
    qry_fymxbrnl: TStringField;
    qry_kdys: TADOQuery;
    qry_fymxkdysmc: TStringField;
    b_pos: TBitBtn;
    lab_bdxx: TLabel;
    IdHTTP1: TIdHTTP;
    qry_pubsbjs: TADOQuery;
    qry1: TADOQuery;
    qry_sbjs: TADOQuery;
    qry_fymxsjbh: TIntegerField;
    qry_pub: TADOQuery;
    qry_fymxfysl: TIntegerField;
    Edit1: TcxTextEdit;
    Edit2: TcxTextEdit;
    Edit3: TcxTextEdit;
    Edit4: TcxTextEdit;
    Edit6: TcxTextEdit;
    Edit5: TcxTextEdit;
    Edit7: TcxTextEdit;
    e_tchj: TcxTextEdit;
    e_zfhj: TcxTextEdit;
    SP_SJZF: TADOStoredProc;
    procedure dbgrid_fymxColEnter(Sender: TObject);
    procedure dbgrid_fymxExit(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure g_emptKeyPress(Sender: TObject; var Key: Char);
    procedure g_emptExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tj_sfzk(zt: char);
    procedure czksKeyPress(Sender: TObject; var Key: Char);
    procedure czysKeyPress(Sender: TObject; var Key: Char);
    procedure kdksKeyPress(Sender: TObject; var Key: Char);
    procedure save_cf_yz;
    procedure save_xm_yz;
    procedure cfhKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure kdysKeyPress(Sender: TObject; var Key: Char);
    procedure b_saveClick(Sender: TObject);
    procedure b_cancelClick(Sender: TObject);
    procedure editsflbEnter(Sender: TObject);
    procedure czysEnter(Sender: TObject);
    procedure kdysEnter(Sender: TObject);
    procedure kdksEnter(Sender: TObject);
    procedure cfhEnter(Sender: TObject);
    procedure bt_tcClick(Sender: TObject);
    procedure czksEnter(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N10Click(Sender: TObject);
    procedure proc_get_sjbh;
    procedure cfyKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGridypmxKeyPress(Sender: TObject; var Key: Char);
    procedure DBGridypmxExit(Sender: TObject);
    procedure DBGrid5KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid5Exit(Sender: TObject);
    procedure mzhChange(Sender: TObject);
    procedure e_bh2KeyPress(Sender: TObject; var Key: Char);
    procedure proc_set_cfhj(v_cflb: string);
    procedure editsflbKeyPress(Sender: TObject; var Key: Char);
    procedure Qry_mxCalcFields(DataSet: TDataSet);
    procedure proc_sumcfje;
    procedure proc_savecf;
    procedure E_jeExit(Sender: TObject);
    procedure E_sfcsExit(Sender: TObject);
    procedure E_jeKeyPress(Sender: TObject; var Key: Char);
    procedure proc_xcyptomx;
    procedure proc_xcxmtosf(v_yfzdmc, v_fydm, v_cflb: string);
    procedure E_sfcsKeyPress(Sender: TObject; var Key: Char);
    procedure proc_cxypkc;
    procedure proc_sum_cfje;
    procedure brxmExit(Sender: TObject);
    procedure mzhEnter(Sender: TObject);
    procedure brxmEnter(Sender: TObject);
    procedure editsflbExit(Sender: TObject);
    procedure czysExit(Sender: TObject);
    procedure kdysExit(Sender: TObject);
    procedure czksExit(Sender: TObject);
    procedure kdksExit(Sender: TObject);
    procedure E_sfcsEnter(Sender: TObject);
    procedure E_jeEnter(Sender: TObject);
    procedure cfhExit(Sender: TObject);
    procedure Qry_mxBeforePost(DataSet: TDataSet);
    procedure CheckBox1Click(Sender: TObject);
    procedure DBGrid2KeyPress(Sender: TObject; var Key: Char);
    procedure Getbrxx(mzhstr: string);
    procedure mzhKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid2Exit(Sender: TObject);
    procedure Qry_mxAfterDelete(DataSet: TDataSet);
    procedure maxg;
    procedure cxkyh;
    procedure mzhExit(Sender: TObject);
    procedure proc_fymx;
    procedure proc_upsjbh;
    procedure proc_save_fymx_ls;
    procedure proc_save_fymx;
    procedure fpdy;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure proc_fylb(fs: integer);
    procedure proc_cssjbh(sjbh: integer);
    procedure proc_get_dzcfmx;
    procedure proc_kyhjs;
    procedure proc_cshsfzt;
    procedure proc_fpdy;
    procedure proc_mzjsdy;
    procedure cac_yh;
    procedure b_sbhkClick(Sender: TObject);
    procedure brxmKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure dzcfmxgridDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure dbgrid_fymxCellClick(Column: TColumnEh);
    procedure dbgrid_fymxDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure dbgrid_fymxColumns1UpdateData(Sender: TObject; var Text: string;
      var Value: Variant; var UseText, Handled: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure cb_fyljClick(Sender: TObject);
    procedure Proc_YYbj_Message(var message: TMessage); message WM_YYBJ_Message;
    procedure b_posClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure mzhDblClick(Sender: TObject);
  private
    cache_tmh: string;
    cache_xm: string;
    cache_zfy: Double;
    cache_ph: string;
    cache_pos: string;
    //银行刷卡 ，数据缓存

    Prv_ypmc_zjm: string;
    Prv_cfhj_fs: Integer; // 1 增加 2 修改
    Prv_tmh_fs: Integer; //1门诊卡用户，2临时卡用户，3社区档案号，4绑定卡用户
    Prv_bz_ypkc: Real;
    Prv_zfhj: Real; //本次病人自付合计金额
    Prv_kyh_syje: Real; //获取卡用户的剩余金额
    Prv_kyh_je: Real; //获取卡用户的剩余金额(不会在程序中进行修改)
    Prv_LookL: string;
    Prv_Exists_dzcf: Boolean; //门诊收费是否包含电子处方费用
    prv_dzcfbs: Integer; //电子处方笔数
    prv_dzcfje: Real; //电子处方金额
    Prv_Exists_Wsfcf: Boolean;
    //门诊收费明细表中是否有未收费的处方
    Prv_IsUseXDCF: Boolean; //是使用协定处方
    Prv_SL_XDCF: Real; //协定处方药品明细数量
    Prv_cflb: string; //当前收费处方类别(01:西药;02中草;03中成)
    Prv_Ljzje_fy, Prv_Ljzje_zf: Double; //累计费用总金额和累计应收现金金额
    Prv_brxm_Up: string; //上次保存病人姓名
    Prv_hjsybzbz_mz, Prv_hjsybzbz_mc: Boolean; //划价使用转换药品包装
    Prv_ShowCaption_kyh: Boolean; //显示卡用户消费及优惠信息
    Prv_yy_cmd: Pchar; //语音命令
    Prv_sjfzfs_field: string; //收据分组方式字段名(czks,kdks)
    v_tchj, v_zfhj, v_pczje: Real;
    prv_mzhlength: Boolean; //判断门诊号的 处的位数
    prv_dzcfkdysmc: string; //电子处方开单医生名称

    v_fpdy_ls, v_psjgyx: Boolean;
    pro_yylx: Integer;
    v_jkje1, v_zhje1: Real;
    { Private declarations }
    procedure Proc_mzsj_sc; //门诊收据(四川)
    procedure Proc_mzsj_sc_kb; //门诊空白自定义报表收据（四川）
    procedure Proc_mzsj_dxjs; //门诊收据大项结算功能
    procedure Proc_mzsj_sc_js; //四川门诊收据(多项输入,分处置科室结算)
    procedure Proc_mzsj_sx_js; //陕西门诊收据(多项输入,分处置科室结算)
    procedure Proc_mzsj_999999; //自定义格式
    procedure Proc_mzsj_sx; //门诊收据(陕西)
    procedure Proc_mzsj_sx3d; //门诊收据(陕西三项)
    procedure Proc_mzsj_sx_htqfybjy; //门诊收据(陕西汉台区妇幼保健院)
    procedure Proc_mzsj_xj; //门诊收据(新疆)
    procedure Proc_mzsj_jx; //门诊收据(江西)
    procedure Proc_mzsj_hb1; //门诊收据(湖北格式一)
    procedure Proc_mzsj_hb2(const v_ph: string); //门诊收据(湖北格式二)
    procedure Proc_mzsj_hb3(const v_ph: string); //门诊收据(湖北格式二)
    procedure Proc_mzsj_xz; //门诊收据(西藏)
    procedure Proc_mzsj_gs1; //门诊收据(甘肃)
    procedure Proc_AddMB(bh: Integer); //通过bh,加入处方模板
    procedure Proc_fydm_select; //选择一个费用
    procedure Proc_mzsj_sc_b; //门诊收据(四川:白票)
    procedure Proc_mzsj_hb_b; //门诊收据(湖北:白票)
    procedure proc_upsjbh_dx; //更新收据号(大项)
    procedure proc_keydown_F4;
    procedure proc_Replicate_fymx(const v_cs: Integer); //某项目重复加入费用明细
    procedure proc_UpdateName(const v_brxm: string); //更新姓名
    function proc_dzcfsh: Boolean; //电子处方审核
    function Func_IsExists_cfbh(v_cfbh: string): Boolean; //检查处方是否已经在当前费用明细中
    function func_get_fyje(v_FieldName: string): TRecHjje_hjbs; //返回给定qry_fymx数据集sfbz=1的指定字段值合计
    procedure proc_tj_jylfyhj(lb, v_cfbh: string); //计算电子处方和手工处方的统筹和自付部分
    procedure proc_ts_gstc(v_tmh: string); //提示病人是否享受门诊诊查费统筹
    function func_save_zhsb(mz_tmh: string; aRecHjje_hjbs: TRecHjje_hjbs): Boolean; //门诊社保结算
    function proc_up_sjzf(_tmh, _ph: string): Boolean; //自动收据作废
  public
    //Getje,GetDuocf, Getcfbh, msstr: String;
    mz_zje: Real; //门诊收费病人费用总额
    mz_fysl: Real; //费用数量
    mz_fydj: Real; //费用单价
    mz_ph: string; //批号
    mz_tmh: string; //条码号
    mz_brxm: string; //病人姓名
    mz_brxm_List: string; //未收款病人
    //    mz_brlb: string; //病人类别
    mz_fylb: string; //病人费用类别
    mz_fylbmc: string; //病人费用类别名称
    mz_fyzfbl: Real; //病人费用总额自付比率
    mz_dxdm: string; //门诊收费项目大项代码
    mz_sjbh: string; //门诊收据编号
    mz_sfcs: integer; //收费次数
    mz_fydm: string; //门诊费用代码
    mz_fymc: string; //门诊费用名称
    mz_dymc: string; //费用项目打印名称
    mz_jkje: Real; //门诊收费病人交款金额
    mz_zhje: Real; //门诊收费病人找回金额
    mz_cfje: Real; //处方金额
    mz_sfbz: Real; //门诊收费项目单价*数量
    mz_sfbz1: Real; //门诊收费项目收费单价
    mz_ssje: Real; //门诊收费项目实收金额
    mz_cfbh: string; //门诊收费处方编号
    mz_jzdw: integer; //门诊收费记帐单位
    mz_jzdwpym: string; //门诊收费记帐单位拼音码
    mz_jzdwmc: string; //门诊收费记帐单位名称
    mz_sffs: integer;
    //1 表示处方收费 2 表示项目收费 3 表示中药收费  4收费处划价收费;
    mz_kdks: string; //开单科室
    mz_kdksmc: string; //开单科室名称
    mz_kdkspym: string; //开单科室拼音码
    mz_kdys: string; //开单医生
    mz_kdysmc: string; //开单医生名称
    mz_kdyspym: string; //开单医生拼音码
    mz_czks: string; //处冶科室
    mz_czksmc: string; //处冶科室名称
    mz_czkspym: string; //处冶科室拼音码
    mz_czys: string; //处冶医生
    mz_czysmc: string; //处冶医生名称
    mz_czyspym: string; //处冶医生拼音码
    mz_srzt: string; //输入状态
    yxje20: boolean; //有效金额为0或负
    Pub_xjbz: boolean; //现金病人标志
    jy_ynzgkbz: Boolean; //江油院内职工卡标志
    //卡用户预交金额、总费用、剩余金额  ,应收卡金额
    yjje, zfy, syje, yskje: Real;

    mscfid: string; //敏试处方ID号
    sjbhqh, sjbhzh, sjbhzh_real {实际的收据止号}: integer;
    //批量打印首号, 止号
    mz_cfjl: Real; //中药的处方付数
    mz_fylbsfbz: boolean;
    //按费用类别取收费标准标志 Ture  ybbz ,false sfbz

//    save_sb: Boolean; //社保保存成功
    Pub_Is_sbsf: Boolean; //是否为社保收费
    pub_is_zhsb: boolean; //综合社保收费
    Pub_IsIni: Boolean; //接口方法被初始化标志
    Pub_brxm_sb: string; //社保病人姓名
    posh: string; //银行POS选择号
    { Public declarations }

    procedure Proc_YYbj_zl(jkje, zhje: real);
    procedure jkkd_hd;
    procedure WriteJkkData;
  end;
var
  frm_mzsf: Tfrm_mzsf;
  tfrc, zfrc: Integer;
  tfje, zfje, fybl: Real; // 门诊卡用户收费项目优惠比例fybl
  mzfybl: string; // 优惠比例记录字段名称
  ypmcxg: Boolean = False; //修改药品名称调用相应的药品
  sfyksgs: Boolean = False; //收费项目是否有科室归属
  pub_mzsf_bl: Boolean = False; //窗口补录状态(True: 是;False: 否)

  pub_czwz, pub_qywz: string; //处置位置 ,取药位置

  yybjUnit: TYybj; //语音报价单元

function func_fyje_Calc(ado: TCustomADODataSet): TInfor_fy; //计算总金额、实收总金额、收据数量
implementation

uses p_dm, p_repo_hjsf, p_main, p_func, p_brjk, p_hymaxg, p_masrck, p_srfsz, p_fylb,
  p_mzjsbb, P_cfjl, P_xdcf_xt, p_wait, p_repo_mzsj, p_help_html, p_mzsb,
  p_cx_kyhjbxx, p_pos, p_posxz, softpos, superobject, PosService, BASE64, bsjk,
  p_mzsf_print_service;  //P_sb_dl

{$R *.DFM}
const
  con_hjsybz_begin_mz = 1; //划价(西药和成药)使用包装标志位位置
  con_hjsybz_begin_mc = 2; //划价(草药)使用包装标志位位置

procedure proc_move(v_D: TQRExpr; v_S: TQRLabel);
begin
  v_D.Left := v_S.Left;
  v_D.Top := v_S.Top;
  v_D.Width := v_S.Width;
  v_D.Height := v_S.Height;
end;

function Tfrm_mzsf.Func_IsExists_cfbh(v_cfbh: string): Boolean;
begin
  Result := qry_fymx.Locate('cfbh', v_cfbh, []);
end;

function Tfrm_mzsf.func_save_zhsb(mz_tmh: string; aRecHjje_hjbs: TRecHjje_hjbs): Boolean;
var
  _jsxx: Boolean;
begin
  //社保结算
  _jsxx := true;
  try
    //结算成功，显示社保的结算结果，方便操作员查看是否需要收取现金
    if func_pub_sbjs('门诊结算', mz_ph) then
    begin
      func_pub_sbjs('结算确认', mz_ph);
    end
    else
      _jsxx := false;
  except
    _jsxx := false;
  end;
  try
    //社保面板的显示是否正确不影响结算是否成功
    qry_sbjshz.Close;
    qry_sbjshz.Parameters.ParamByName('ph').Value := mz_ph;
    qry_sbjshz.Open;
    edt_tczf.Text := qry_sbjshz.FieldByName('tczf').AsString;
    edt_zhzf.Text := qry_sbjshz.FieldByName('zhzf').AsString;
    edt_xjzf.Text := Format('%0.2f', [aRecHjje_hjbs.Hjje - qry_sbjshz.FieldByName('tczf').AsFloat - qry_sbjshz.FieldByName('zhzf').AsFloat]);
    pnl_sb.Visible := True;
  except
    pnl_sb.Visible := False;
  end;
  Result := _jsxx;
end;

function Tfrm_mzsf.func_get_fyje(v_FieldName: string): TRecHjje_hjbs;
var
  v_RecNo: Integer;
begin
  Result.Hjje := 0;
  Result.Hjbs := 0;
  v_RecNo := qry_fymx.RecNo;
  qry_fymx.DisableControls;
  qry_fymx.First;
  while not qry_fymx.Eof do
  begin
    qry_fymx.Edit;
    qry_fymx.FieldByName('brlb').AsString := mz_fylb;
    qry_fymx.FieldByName('fylb').AsString := mz_fylb;
    if mz_fylb = '01' then
    begin
      if mzsfsfsswr then
      begin //门诊四舍五入到角
        qry_fymx.FieldByName(v_FieldName).AsFloat := realtomoney1(qry_fymx.FieldByName(v_FieldName).AsFloat);
      end
      else
        if pub_sf5or1 then
        begin //门诊收费四舍五入到元或者5角
          qry_fymx.FieldByName(v_FieldName).AsFloat :=
            func_CastMoneyTo5(realtomoney1(qry_fymx.FieldByName(v_FieldName).AsFloat));
        end;
    end;
    qry_fymx.Post;
    if qry_fymx.FieldByName('sfbz').AsBoolean then
    begin
      Result.Hjje := Result.Hjje + qry_fymx.FieldByName(v_fieldName).AsFloat;
      Inc(Result.Hjbs, 1);
    end;

    qry_fymx.Next;
  end;
  qry_fymx.RecNo := v_RecNo;
  qry_fymx.EnableControls;
end;

procedure Tfrm_mzsf.dzcfmxgridDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
begin
  if (qry_dzbl_cfmx.Active) and (qry_dzbl_cfmx.RecordCount <> 0) then
  begin
    if (qry_dzbl_cfmx['yytj'] = '肌注') or (qry_dzbl_cfmx['yytj'] = '静注')
      or (qry_dzbl_cfmx['yytj'] = '静滴') then
    begin
      dzcfmxgrid.Canvas.brush.Color := clolive;
      dzcfmxgrid.Canvas.Font.Color := clWindowText;
    end;
    dzcfmxgrid.DefaultDrawColumnCell(rect, datacol, column, state);
  end;
end;

procedure Tfrm_mzsf.proc_mzjsdy;
var
  nian, yue, ri: Word;
begin
  Application.CreateForm(Tfrm_mzbb, frm_mzbb);
  decodedate(frm_func.curr_date, nian, yue, ri);
  frm_mzbb.N.Caption := inttostr(nian);
  frm_mzbb.m.Caption := inttostr(yue);
  frm_mzbb.r.Caption := inttostr(ri);
  frm_mzbb.brxm.Caption := mz_brxm;
  frm_mzbb.sfy.Caption := pub_czyxm;
  frm_mzbb.mzh.Caption := mz_sjbh;
  frm_mzbb.PrintViewjs;
  try
    frm_mzbb.Free
  except
  end;
  proc_get_sjbh; //取得新收据编号
end;

procedure Tfrm_mzsf.proc_fpdy;
var
  lists: TStringList;
  ZrTxt: string;
  vStr: string;
begin
  //  武当山,非自费病人,不打印发票
  if (pub_yydm = '0175') and (pos('自费', brlb.Text) = 0) then
  begin
    if Application.MessageBox('非自费病人是否打印发票？', '提示', MB_YESNO + MB_ICONQUESTION) = IDNO then
    begin
      proc_get_sjbh;
      exit; //如果社保病人不打发票
    end;
  end;
  if (pub_yydm = '0244') or (pub_yydm = '0250') then //博思发票接口
  begin
    qry_pub.Close;
    qry_pub.SQL.Text := 'select distinct a.tmh,a.sjbh,b.mc ksmc,c.mc fylb ' +
      'from mzsf_mzfymx a join sys_ksdm b on a.czks=b.dm ' +
      'join sys_fylb c on a.fylb=c.dm where a.ph=' + #39 + mz_ph + #39;
    qry_pub.Open;
    qry_pub.First;
    while not qry_pub.Eof do
    begin
      SetLength(vStr, 1800);
      DM_data.qry_pub.Close;
      DM_data.qry_pub.SQL.Text := 'select a.sfczy,a.tmh,a.brxm,c.kmdm,c.kmmc,SUM(a.sszje) sszje ' +
        'from mzsf_mzfymx a join mzsf_kjkmmx b on a.fydm=b.fydm ' +
        'join mzsf_kjkmzb c on b.kmdm = c.kmdm and left(c.kmdm,2)=' + #39 + '01' + #39 + ' ' +
        'where a.sjbh=:sjbh ' +
//      'where a.ph = :mz_ph ' +
      'group by a.sfczy,a.tmh,a.brxm,c.kmdm,c.kmmc';
//      DM_data.qry_pub.Parameters.ParamByName( 'mz_ph' ).Value := mz_ph;
      DM_data.qry_pub.Parameters.ParamByName('sjbh').Value := qry_pub.FieldByName('sjbh').AsString;
      DM_data.qry_pub.Open;
      if DM_data.qry_pub.RecordCount > 0 then
      begin
        DM_data.qry_pub.First;
        ZrTxt := '<&票据><&票据头>门诊号=' + qry_pub.FieldByName('tmh').AsString + char(VK_TAB)
          + '人员类别=' + qry_pub.FieldByName('fylb').AsString + char(VK_TAB)
          + '就诊号=' + dm_data.qry_pub.FieldByName('tmh').AsString + char(VK_TAB)
          + '姓名=' + dm_data.qry_pub.FieldByName('brxm').AsString + char(VK_TAB)
          + '科室=' + qry_pub.FieldByName('ksmc').AsString + Char(VK_TAB)
          + '</&票据头><&收费项目>';
        while not DM_data.qry_pub.Eof do
        begin
          ZrTxt := ZrTxt + '收费项目=' + dm_data.qry_pub.FieldByName('kmdm').AsString + char(VK_TAB)
            //          + '计费数量=' + dm_data.qry_pub.FieldByName( 'fysl' ).AsString + char( VK_TAB )
//          + '收费标准=' + dm_data.qry_pub.FieldByName( 'fydj' ).AsString + char( VK_TAB )
          + '金额=' + dm_data.qry_pub.FieldByName('sszje').AsString + char(VK_TAB);
          DM_data.qry_pub.Next;
        end;
        ZrTxt := ZrTxt + '</&收费项目></&票据>';
        PZrPj_dy(PChar(ZrTxt), 1, '14004003', '无备注', PChar(vStr));
        if Pos('成功', vStr) > 0 then
        begin
          lists := TStringList.Create;
          ExtractStrings([','], [], Pchar(vStr), lists);
          DM_data.qry_pub.Close;
          DM_data.qry_pub.SQL.Text := 'insert into sys_bsjk(pjmc,pjlbh,pjh,je,zch) values (:pjmc,:pjlbh,:pjh,:je,:zch)';
          DM_data.qry_pub.Parameters.ParamByName('pjmc').Value := '门诊发票';
          DM_data.qry_pub.Parameters.ParamByName('pjlbh').Value := lists.Strings[0];
          DM_data.qry_pub.Parameters.ParamByName('pjh').Value := lists.Strings[1];
          DM_data.qry_pub.Parameters.ParamByName('je').Value := StrToFloat(lists.Strings[2]);
          DM_data.qry_pub.Parameters.ParamByName('zch').Value := lists.Strings[3];
          DM_data.qry_pub.ExecSQL;
        end
        else
        begin
          Application.MessageBox(PChar('错误:' + vStr), '发票打印错误', MB_ICONHAND);
        end;
      end
      else
      begin
        Application.MessageBox('未能查询到缴费信息！', '提示信息', MB_ICONHAND);
      end;
      qry_pub.Next;
    end;
  end
  else
    if pub_yydm = '0061' then //多项输入一票结算
      proc_mzjsdy
    else
      if (pub_mzsfsfypdd >= 1) then
      begin
        if pub_mzsfsfqyjs then //多项输入分处置科室结算
          Proc_mzsj_dxjs
        else //一票多打
          fpdy
      end
      else
        Application.MessageBox('提示:门诊收据票据打印项目数设置错误,请修改后重试!', '提示', MB_OK + MB_ICONINFORMATION);
end;

procedure Tfrm_mzsf.proc_cshsfzt;
var
  aRecHjje_hjbs: TRecHjje_hjbs;
  P_mscfbz: Boolean;
begin
  qry_fymx.Close;
  qry_fymx.SQL.Text := ' Select * from mzsf_mzfymx_ls Where tmh=' + #39 + mz_tmh + #39 + ' And sfbz=0 order by ' + Prv_sjfzfs_field;
  qry_fymx.Open;
  prv_dzcfbs := 0;
  prv_dzcfje := 0;
  DM_data.qry_pub.Close;
  DM_data.qry_pub.SQL.Text := 'select mc from sys_czy where dm=' + #39 + trim(qry_fymx.FieldByName('kdys').AsString) + #39;
  DM_data.qry_pub.Open;
  prv_dzcfkdysmc := trim(DM_data.qry_pub.FieldByName('mc').AsString);
  while not qry_fymx.Eof do
  begin
    prv_dzcfje := prv_dzcfje + qry_fymx.FieldByName('fyzje').AsFloat;
    Inc(prv_dzcfbs, 1);
    qry_fymx.Next;
  end;
  mz_ph := get_sjh(pub_czydm);
  if qry_fymx.Locate('mscf', '1', []) then
    P_mscfbz := True
  else
    P_mscfbz := False;

  if qry_fymx.RecordCount > 0 then
  begin
    Prv_Exists_dzcf := true;

    dbgrid_fymx.SetFocus;
    B_save.Enabled := True;
    qry_fymx.First;
    while not qry_fymx.Eof do
    begin
      qry_fymx.Edit;
      qry_fymx.FieldByName('sfczy').AsString := pub_czydm;
      if P_mscfbz then
        qry_fymx.FieldByName('sfbz').AsBoolean := False
      else
      begin
        if Trim(qry_fymx.FieldByName('fymc').AsString) = '雾化吸入' then
        begin
          case Application.MessageBox('是否收取雾化器费用？', '提示', MB_YESNO
            + MB_ICONQUESTION) of
            IDYES:
              begin
                qry_fymx.FieldByName('sfbz').AsBoolean := True;
              end;
            IDNO:
              begin
                qry_fymx.FieldByName('sfbz').AsBoolean := false;
              end;
          end;
        end
        else
        begin
          qry_fymx.FieldByName('sfbz').AsBoolean := True;
        end;
      end;
      if qry_fymx.FieldByName('mscf').AsString = '1' then
      begin
        if Trim(qry_fymx.FieldByName('fymc').AsString) = '雾化吸入' then
        begin
          case Application.MessageBox('是否收取雾化器费用？', '提示', MB_YESNO
            + MB_ICONQUESTION) of
            IDYES:
              begin
                qry_fymx.FieldByName('sfbz').AsBoolean := True;
              end;
            IDNO:
              begin
                qry_fymx.FieldByName('sfbz').AsBoolean := false;
              end;
          end;
        end
        else
        begin
          qry_fymx.FieldByName('sfbz').AsBoolean := True;
        end;
      end;
      qry_fymx.FieldByName('sffs').AsInteger := 0; //门诊电子病历收费0
      qry_fymx.FieldByName('brlb').AsString := mz_fylb;
      qry_fymx.FieldByName('fylb').AsString := mz_fylb;
      //门诊电子处方处置医生为空的情况默认处置医生为开单医生
      if Trim(qry_fymx.FieldByName('czys').AsString) = '' then
        qry_fymx.FieldByName('czys').AsString := '0000';
      qry_fymx.FieldByName('ph').AsString := mz_ph;
      qry_fymx.Post;
      qry_fymx.Next;
    end;
    //佛坪县人民医院
    if pub_yydm <> '0137' then
      proc_get_dzcfmx;
    proc_kyhjs; //计算优惠
    aRecHjje_hjbs := func_get_fyje('sszje');
    qry_fymx.Locate('mscf', '1', []);
//    zje1.Caption := FloatToStr(aRecHjje_hjbs.Hjje);
    zje.Caption := zje1.Caption;
    if checkbox2.Checked and mzsfsfsyyy then
    begin
      if StrToFloat(Trim(zje1.Caption)) > 0 then
      begin
        try
          //梓潼中医院不呼叫20130709...罗江县人民医院此处不呼叫 20131205
          if (pub_yydm <> '0091') and (pub_yydm <> '0046') then
            yybjUnit.yybj(zje1.Caption, p_func_yybj.AllInCost);
        except
        end;
      end;
    end;
    //查询皮试结果
    try
      qry_psjg.Close;
      qry_psjg.SQL.Text := 'select distinct c.ypmc,a.psjg from mzsy_psjg a'
        + ' join mzdzbl_mzyz b on a.tmh=b.zyh and a.xmdm=b.xmdm and b.zxbz=1'
        + ' join sys_ypdm c on b.xmdm=c.ypdm'
        + ' where a.tmh=' + #39 + mz_tmh + #39;
      qry_psjg.Open;
      if qry_psjg.RecordCount > 0 then
      begin
        pan_psjg.Visible := True;
        qry_psjg.First;
        while not qry_psjg.Eof do
        begin
          if Trim(qry_psjg.FieldByName('psjg').AsString) = '阳性' then
            v_psjgyx := True;
          qry_psjg.Next;
        end;
      end
      else
      begin
        pan_psjg.Visible := False;
      end;
    except
    end;
  end
  else
  begin
    Prv_Exists_dzcf := False;
    qry_fymx.Close;
    qry_fymx.SQL.Clear;
    qry_fymx.SQL.Add('select * from mzsf_mzfymx_ls where 1<>1 order by ' + Prv_sjfzfs_field);
    qry_fymx.open;
  end;
end;

procedure Tfrm_mzsf.proc_kyhjs;
var
  sjsysl: Integer;
  v_ksdm: string;
  aRecHjje_hjbs: TRecHjje_hjbs;
begin
  {
   mz_brlb:String; 病人记录形式， 卡上减帐记费，还是现金记费
   mz_fylb:String  病人费用类别（社保，公费，记帐，相关合同）
   mz_fyzfbl:Real  病人费用总额自付比率
   mz_dxdm:String  门诊收费项目大项代码
   mzfybl:String   优惠比例记录字段名称
   fybl:Real       门诊卡用户收费项目优惠比例
   yjje,zfy,syje,ysk:Real卡用户预交金额、总费用、剩余金额
   Pub_xjbz:Boolean          卡用户标志  False 时为卡用户
   Prv_zfhj:Real;   //本次病人合计金额
   Prv_kyh_syje:Real;    //获取卡用户的剩余金额
   在mzsf_mzfymx_ls 中加入了brlb  字段 费用类别 来记录发生费用的病人类别
   在将mzsf_mzfymx_ls 中的数据转成正式数据mxsf_mzfymx时 将brlb,的内容改入fylb中
   其中要注意的是:
   a.一个是剩余收据小于现在收费项目要使用的收据。
   b.卡用户金额不够支付已录入的费用明细。
   c.就是当病人有明细费用折扣字段时，可以先按明细折扣，再总额折扣，
   d.医院不启用按病人类别进行总额折扣（处理意见: 只在程序上控制,不调用[调整病人类别]）。
   e. 根据是否四舍五入开关进行实收金额处理
  }
  if Trim(mz_fylb) = '' then
  begin
    Application.MessageBox('没有选择门诊费用类别，请选择!!', '提示', 0 + 48);
    Exit;
  end
  else
  begin
     //江油市人民医院类别37为院内职工，特殊控制:遇药费需自费
    if (pub_yydm = '0015') and (mz_fylb = '37') then
    begin
      jy_ynzgkbz := True;
    end;
  end;
  sjsysl := 1;
  Prv_zfhj := 0.00; //本次病人自付合计金额
  Prv_kyh_syje := syje; //获取卡用户的剩余金额
  mz_zje := 0.00; //本次病人费用总额
  qry_fymx.DisableControls;
  qry_fymx.First;
  v_ksdm := qry_fymx.FieldByName(Prv_sjfzfs_field).AsString;
  while not qry_fymx.Eof do
  begin
    qry_fymx.Edit;
    qry_fymx.FieldByName('fylb').AsString := mz_fylb;
    if trim(mzfybl) <> '' then //有明细比率的按明细折扣 后 再总额折扣
      qry_fymx.FieldByName('sszje').AsFloat :=
        realtomoney2(qry_fymx.FieldByName('fyzje').AsFloat *
        (100 - qry_fymx.FieldByName(mzfybl).AsFloat) / 100) * (mz_fyzfbl / 100)
    else
      qry_fymx.FieldByName('sszje').AsFloat :=
        realtomoney2(qry_fymx.FieldByName('fyzje').AsFloat) * (mz_fyzfbl / 100);
    //    if mzsfsfsswr then //是否四舍五入
    //      qry_fymx['sszje'] := FloatToStr(realtomoney1(qry_fymx['sszje']))
    //    else
    //      if pub_sf5or1 then //收到1元或5角
    //        qry_fymx['sszje'] := FloatToStr(func_CastMoneyTo5(realtomoney1(qry_fymx['sszje'])))
    //      else
    //        qry_fymx['sszje'] := formatfloat('0.00', qry_fymx['sszje']);
        //计算卡上金额是否足以支付本次费用
    if qry_fymx.FieldByName('sfbz').AsBoolean then
    begin
      Prv_zfhj := Prv_zfhj + qry_fymx.FieldByName('sszje').AsFloat;
      mz_zje := mz_zje + qry_fymx.FieldByName('fyzje').AsFloat;
    end;
    yskje := 0;
    if not Pub_xjbz then //会员
    begin
      if (Prv_kyh_je - Prv_zfhj >= 0) then //卡上金额足够支付
      begin
        yskje := qry_fymx.FieldByName('sszje').AsFloat;
      end
      else // 卡余额不够,下卡部分
        if (qry_fymx.FieldByName('sszje').AsFloat >= (Prv_zfhj - Prv_kyh_je)) then
        begin
          //添加开关判断是否允许部分结账
//          if prv_hyk_bfxz then
//          begin
//            yskje := qry_fymx.FieldByName('sszje').AsFloat - (Prv_zfhj - Prv_kyh_je);
//          end
//          else
          begin
            Application.MessageBox('会员卡余额不足，请先充值！', '系统提示',
              MB_OK + MB_ICONWARNING);
            b_cancel.Click;
            Abort;
          end;
        end;
    end;
    if jy_ynzgkbz and (qry_fymx.FieldByName('sfbz').AsBoolean)
      and ((qry_fymx.FieldByName('fydm').AsString = pub_xyfdm)
      or (qry_fymx.FieldByName('fydm').AsString = pub_mzxyfdm)
      or (qry_fymx.FieldByName('fydm').AsString = pub_chaoydm)
      or (qry_fymx.FieldByName('fydm').AsString = pub_chenydm)
      or (qry_fymx.FieldByName('fydm').AsString = pub_zychaoydm)
      or (qry_fymx.FieldByName('fydm').AsString = pub_zychenydm)
      or (qry_fymx.FieldByName('fydm').AsString = pub_mzwsclfydm)
      or (qry_fymx.FieldByName('fydm').AsString = pub_zywsclfydm)) then
    begin
      qry_fymx['hykxkje'] := 0;
    end
    else
      qry_fymx['hykxkje'] := yskje;
    qry_fymx.Next;
    if Pos(Trim(qry_fymx.FieldByName(Prv_sjfzfs_field).AsString), v_ksdm) = 0 then
    begin
      sjsysl := sjsysl + 1;
      proc_cssjbh(strtoint(mz_sjbh) + sjsysl);
      //测试收据是否超出已剩余收据
      v_ksdm := v_ksdm + ',' + Trim(qry_fymx.FieldByName(Prv_sjfzfs_field).AsString);
    end;
  end;
  qry_fymx.EnableControls;
  qry_fymx.Edit;
  qry_fymx.Post;
  aRecHjje_hjbs := func_get_fyje('sszje'); //获取合计金额
  mz_ssje := aRecHjje_hjbs.Hjje;
  //计算本次费用总金额
  zje.caption := FormatFloat('0.00', Prv_zfhj); //界面应付款
  zje1.caption := FormatFloat('0.00', mz_zje); //界面总金额
//  if checkbox2.Checked and mzsfsfsyyy then
//  begin
//    yybjUnit.yybj(zje.caption, p_func_yybj.AllInCost);
//  end;
  if Prv_ShowCaption_kyh then //会员卡
  begin
    if Prv_kyh_je >= mz_ssje then
    begin
      LB_khy.Caption := Trim(sp_cx_kyh.FieldByName('brxm').Asstring)
        + ',预交总额:' + FormatFloat('0.00', yjje)
        + ',剩余金额:' + FormatFloat('0.00', Prv_kyh_je); // - mz_ssje
    end
    else
    begin
      LB_khy.Caption := Trim(sp_cx_kyh.FieldByName('brxm').Asstring)
        + ',预交总额:' + FormatFloat('0.00', yjje)
        + ',剩余金额:' + FormatFloat('0.00', 0)
        + ',扣款:' + FormatFloat('0.00', Prv_kyh_je)
        + ',现金:' + FormatFloat('0.00', mz_ssje - Prv_kyh_je)
    end;
  end
  else
    LB_khy.Caption := LB_khy.Caption;
end;

procedure Tfrm_mzsf.proc_cssjbh(sjbh: Integer);
var
  aRecHjje_hjbs: TRecHjje_hjbs;
begin
  if sjbh > sjbhzh_real then
  begin
    Application.MessageBox('收据剩余数量不够!请保存后启用新收据再继续进行收费!', '系统提示', MB_OK + MB_ICONSTOP);
    qry_fymx.Last;
    qry_fymx.Delete;
    qry_fymx.First;
    aRecHjje_hjbs := func_get_fyje('sszje');
    mz_ssje := aRecHjje_hjbs.Hjje;
    syje := syje - mz_ssje;

//    if Pub_Is_sbsf then //医保
//      LB_khy.Caption := Pub_brxm_sb + ',剩余金额：' + FormatFloat('0.00', Prv_kyh_syje)
//    else
    if Prv_ShowCaption_kyh then //卡用户
      LB_khy.Caption := Trim(sp_cx_kyh.FieldByName('brxm').AsString)
        + ',预交总额：' + FormatFloat('0.00', yjje)
        + ',剩余金额：' + FormatFloat('0.00', syje)
    else
      LB_khy.Caption := LB_khy.Caption;
  end;
end;

procedure Tfrm_mzsf.proc_get_dzcfmx;
var
  v_Getcfbh, v_fydm: string;
begin
  v_fydm := Trim(qry_fymx.FieldByName('fydm').AsString);
  if (v_fydm = pub_xyfdm) or (v_fydm = pub_chaoydm) or (v_fydm = pub_chenydm) then
  begin
    v_Getcfbh := Trim(qry_fymx.FieldByName('cfbh').AsString);
    Qry_sfinfo.Close;
    Qry_sfinfo.SQL.Clear;
    Qry_sfinfo.SQL.Add('Select top 1 cfbh from dzbl_cfmx_ls Where cfbh=''' + v_Getcfbh + '''');
    Qry_sfinfo.Open;
    if Qry_sfinfo.RecordCount > 0 then
    begin
      qry_dzbl_cfmx.Close;
      qry_dzbl_cfmx.Parameters.ParamByName('Varcfbh1').Value := v_Getcfbh;
      qry_dzbl_cfmx.Open;
    end
    else
      qry_dzbl_cfmx.Close;
    proc_tj_jylfyhj('dzcf', v_Getcfbh);
  end;
end;

procedure Tfrm_mzsf.proc_fylb(fs: Integer);
begin
  if (Trim(mz_fylbmc) = '') or (fs = 1) then
  begin
    Application.CreateForm(Tfrm_fylb, frm_fylb);
    try
      frm_fylb.ShowModal;
    finally
      frm_fylb.Free;
    end;
    if qry_fymx.Active then
      if qry_fymx.RecordCount > 0 then
        proc_kyhjs;
  end;
end;

procedure Tfrm_mzsf.cac_yh;
begin
  // 次费用代码为打包项目代码，若此代码在费用代码表中的费用比例为0
  // 则要检测此打包项目的所属的费用项目是否有费用比例（>0），如果
  // 有费用比例大于0的费用项目，则按此进行优惠计算，为0的则按原价计算
  // 若此打包费用代码在 费用代码表中的费用比例大于0，则以打包项目费用比例
  // 计算，不在按此打包项目包括的费用项目费用比例计算
  if Trim(mzfybl) <> '' then
    //有会员卡
  begin
    if mz_dxdm = '50' then //打包费用
    begin
      if Trim(mzfybl) <> '' then
      begin
        if qry_fymx.FieldByName(mzfybl).AsFloat > 0 then
          qry_fymx['ssje'] := realtomoney2(qry_fymx.FieldByName('FYzje').AsFloat
            * (100 - qry_fymx.FieldByName(mzfybl).AsFloat) / 100)
        else //打包项目的费用比例为0 、按打包项目下的费用项目费用比例不为0的计算
        begin
          qry_fymx['ssje'] := 0;
          with qry_dbxm_xmmx do
          begin
            Close;
            SQL.Clear;
            SQL.Add('select sys_kjsfxm.sfbz,sys_kjsfxm.' + mzfybl +
              ' from sys_kjsfxm,sys_kjsfxm_db where sys_kjsfxm_db.dxdm=''' +
              Trim(qry_fymxfydm.AsString) +
              ''' and sys_kjsfxm_db.fydm=sys_kjsfxm.fydm');
            Open;
            while not eof do
            begin
              if FieldByName(mzfybl).AsFloat > 0 then //设置了优惠比例
                qry_fymx['ssje'] := qry_fymx['ssje'] +
                  FieldByName('sfbz').AsFloat * (100 - FieldByName(mzfybl).AsFloat)
                  / 100 * qry_fymx['fysl']
              else //没有设置优惠比例
                qry_fymx['ssje'] := qry_fymx['ssje'] +
                  FieldByName('sfbz').AsFloat * qry_fymx['fysl'];
              next;
            end;
          end;
        end;
      end;
    end
    else
      //费用代码不是打包项目代码
    begin
      if qry_fymx.FieldByName('FYzje').AsString <> '' then
      begin
        qry_fymx['ssje'] := realtomoney2(qry_fymx.FieldByName('FYzje').AsFloat *
          (100 - qry_fymx.FieldByName(mzfybl).AsFloat) / 100);
      end;
    end;
  end
  else //无会员卡
    qry_fymx['ssje'] := realtomoney2(qry_fymx.FieldByName('FYzje').AsFloat);
end;

procedure Tfrm_mzsf.cb_fyljClick(Sender: TObject);
begin
  if cb_fylj.Checked then
  begin
    pub_mzsfzjsk := False;
  end
  else
  begin
    pub_mzsfzjsk := True;
  end;
  brxm.SetFocus;
end;

procedure Tfrm_mzsf.fpdy;
var
  v_IsPrinterJoin: Boolean;
  v_PrinterIndex_new: Integer;
  v_PrinterIndex_old: Integer;
begin
  if pub_mzsjlx = '' then
  begin
    Application.MessageBox('提示:请在系统维护程序中选择门诊收据打印类型!', '提示', MB_OK + MB_ICONINFORMATION);
    Abort;
  end;
  //判断是否使用打印关联方式及取得打印机序号
  v_PrinterIndex_old := Printer.PrinterIndex;
  v_PrinterIndex_new := func_GetPrinterIndex(2, v_IsPrinterJoin);
  if v_IsPrinterJoin then
    Proc_ChangePrinter(v_PrinterIndex_new, true);
  if (pub_mzsjlx = '010101') or (pub_mzsjlx = '010102') then //打印四川收据
    Proc_mzsj_sc
      //-------------------------20100827姜超修改----------------------
  else
    if pub_mzsjlx = '010103' then //打印四川收据(白票)
      Proc_mzsj_sc_b
    else
      if pub_mzsjlx = '020101' then //打印陕西收据
        Proc_mzsj_sx
      else
        if pub_mzsjlx = '020102' then //打印陕西收据(三打)
          Proc_mzsj_sx3d
        else
          if pub_mzsjlx = '020103' then //打印陕西收据(汉台区妇幼保健院)
            Proc_mzsj_sx_htqfybjy
          else
            if pub_mzsjlx = '030101' then //打印新疆收据
              Proc_mzsj_xj
            else
              if pub_mzsjlx = '040101' then //打印江西收据
                Proc_mzsj_jx
              else
                if pub_mzsjlx = '050101' then //打印湖北收据格式一
                  Proc_mzsj_hb1
                else
                  if pub_mzsjlx = '050102' then //打印湖北收据格式二(郧西中医院0124)
                    Proc_mzsj_hb2(mz_ph)
                  else
                    if pub_mzsjlx = '050103' then //打印湖北陨西疾控中心票据
                      Proc_mzsj_hb3(mz_ph)
                    else
                      if pub_mzsjlx = '050104' then //打印湖北收据格式(白票)
                        Proc_mzsj_hb_b
                      else
                        if pub_mzsjlx = '060101' then //打印西藏收据
                          Proc_mzsj_xz
                        else
                          if pub_mzsjlx = '070101' then //打印甘肃收据格式二
                            Proc_mzsj_gs1
                          else
                            if pub_mzsjlx = '999999' then //打印自定义报表格式
                              Proc_mzsj_sc_kb;

  //还原原来默认打印机
  if v_IsPrinterJoin then
    Proc_ChangePrinter(v_PrinterIndex_old, true);
  //--------------------------------------------------------------
  qry_fymx.Filter := '';
  qry_fymx.Filtered := False;
  proc_get_sjbh; //取得新收据编号
end;

procedure Tfrm_mzsf.Proc_AddMB(bh: Integer);
begin
  Prv_IsUseXDCF := True;
  qry_xdcf_mx.Close;
  qry_xdcf_mx.Parameters.ParamByName('mbbh').Value := bh;
  qry_xdcf_mx.Parameters.ParamByName('mbbh1').Value := bh;
  qry_xdcf_mx.Open;

  while not qry_xdcf_mx.Eof do
  begin
    sp_yp.Close;
    sp_yp.Filtered := False;
    sp_yp.Parameters.ParamByName('@pym').value := Trim(qry_xdcf_mx.FieldByName('ypmc').AsString);
    sp_yp.Parameters.ParamByName('@ksdm').value := mz_czks;
    sp_yp.Parameters.ParamByName('@ysdm').value := mz_kdys;
    sp_yp.Parameters.ParamByName('@yflb').value := 0;
    sp_yp.Open;
    if sp_yp.RecordCount <= 0 then
      Application.MessageBox(Pchar('错误提示:药品[' +
        Trim(qry_xdcf_mx.FieldByName('ypmc').AsString) + '],在关联库房没有库存或类别不正确!'),
        '错误提示', 16)
    else
    begin
      Prv_SL_XDCF := qry_xdcf_mx.FieldByName('ypsl').AsFloat;
      proc_xcyptomx;
    end;
    qry_xdcf_mx.Next;
  end;
  Prv_IsUseXDCF := False;
end;

procedure Tfrm_mzsf.Proc_fydm_select;
begin
  //  if pub_mzsfbrsfgh then
  //    if Trim( dm_data.qry_pub.FieldByName( 'dldm' ).asstring ) = '1101' then //门诊收费不允许收挂号费
  //    begin
  //      Application.MessageBox( Pchar( '错误提示:门诊收费不允许收挂号费,请到挂号窗口收取(快捷键:F2)' ),
  //        '错误提示', 16 );
  //      editsflb.SetFocus;
  //      Abort;
  //    end;
  editsflb.text := dm_data.qry_pub.FieldByName('fymc').asstring;
  e_dw.Text := dm_data.qry_pub.FieldByName('dw').asstring;
  mz_fymc := dm_data.qry_pub.FieldByName('fymc').asstring;
  mz_dymc := dm_data.qry_pub.FieldByName('dymc').asstring;
  mz_fydm := dm_data.qry_pub.FieldByName('fydm').asstring;
  mz_dxdm := dm_data.qry_pub.FieldByName('dldm').asstring;
  if mz_fylbsfbz then
    mz_sfbz1 := dm_data.qry_pub.FieldByName('ybbz').AsFloat
  else
    mz_sfbz1 := dm_data.qry_pub.FieldByName('sfbz').AsFloat;
  if mz_sfbz1 = 0 then
    mz_sfbz1 := dm_data.qry_pub.FieldByName('sfbz').AsFloat;
  if trim(mzfybl) <> '' then
    fybl := dm_data.qry_pub.FieldByName(mzfybl).AsFloat
  else
    fybl := 0;
  sfyksgs := True;
  if Trim(dm_data.qry_pub.FieldByName('ksgs').asstring) = '' then
  begin
    sfyksgs := False;
  end
  else
  begin
    czys.Text := '0000';
    mz_czks := dm_data.qry_pub.FieldByName('ksgs').asstring;
    mz_czksmc := dm_data.qry_pub.FieldByName('mc').asstring;
  end;
  czks.Text := mz_czksmc;
  e_sfcs.Text := '1';
  e_je.Text := floattostr(mz_sfbz1);
  if (strtofloat(e_je.text) > 0) and pub_sfsdsfbz then
    e_je.ReadOnly := True
  else
    e_je.ReadOnly := False;
  proc_xcxmtosf(Trim(dm_data.qry_pub.FieldByName('yfzdmc').AsString),
    Trim(dm_data.qry_pub.FieldByName('fydm').AsString),
    Trim(dm_data.qry_pub.FieldByName('cflb').AsString));
end;

function func_fyje_Calc(ado: TCustomADODataSet): TInfor_fy;
var
  i, j, v_sjbh: Integer;
begin
  Result.fyje := 0;
  Result.ssje := 0;
  Result.sjsl := 0;
  Result.hykxkje := 0;
  result.tczf := 0;
  result.xjzf := 0;
  result.zhzf := 0;
  result.zhye := 0;

  ado.First;
  ado.DisableControls;
  for i := 1 to ado.RecordCount do
  begin
    if ado.FieldByName('sfbz').AsBoolean then
    begin
      Result.fyje := Result.fyje + ado.FieldByName('fyzje').AsCurrency;
      Result.ssje := Result.ssje + ado.FieldByName('sszje').AsCurrency;
      Result.hykxkje := Result.hykxkje + ado.FieldByName('hykxkje').AsCurrency;
    end;
    if v_sjbh <> ado.FieldByName('sjbh').AsInteger then
    begin
      v_sjbh := ado.FieldByName('sjbh').AsInteger;
      Result.sjsl := Result.sjsl + 1;
    end;
    ado.next;
  end;
  ado.EnableControls;
end;

procedure Tfrm_mzsf.Proc_mzsj_sc;
var
  v_Infor_fy: TInfor_fy;
  v_sbbz: Boolean;
begin
  qry_fymx.Sort := 'sjbh ASC';
  v_Infor_fy := func_fyje_Calc(qry_fymx); //计算总金额、实收总金额、收据数量
//  if pub_is_zhsb then
//  begin
//    v_Infor_fy.ssje := StrToFloat(Trim(edt_xjzf.Text));
//  end;
  //  qry1.Close;
  //  qry1.Parameters.ParamByName('ph').value:=mz_ph;
  //  qry1.Open;
  //  qry_sbjs.close;
  //  qry_sbjs.Parameters.parambyname('tmh').value:= qry1.FieldByName('tmh').AsString;
  //  qry_sbjs.Open;
  Print_mzsj_sc(qry_fymx, mz_brxm, Prv_ShowCaption_kyh, pub_is_zhsb,
    v_Infor_fy.fyje, v_Infor_fy.ssje, v_Infor_fy.hykxkje, v_Infor_fy.sjsl);
  if Prv_ShowCaption_kyh then
    kyhsfbz.Caption := '卡上支付金额:' + format('￥%3.2f', [mz_sfbz])
  else
    kyhsfbz.caption := '';
end;

procedure Tfrm_mzsf.Proc_mzsj_sc_kb;
var
  v_Infor_fy: TInfor_fy;
begin
  qry_fymx.Sort := 'sjbh ASC';
  v_Infor_fy := func_fyje_Calc(qry_fymx); //计算总金额、实收总金额、收据数量
  Print_mzsj_sc_kb(qry_fymx, Prv_ShowCaption_kyh, pub_is_zhsb, v_Infor_fy.ssje, Prv_kyh_je - v_Infor_fy.ssje,
    v_Infor_fy.sjsl, v_Infor_fy.tczf, v_Infor_fy.xjzf, v_Infor_fy.zhzf, v_Infor_fy.zhye);
  if Prv_ShowCaption_kyh then
    kyhsfbz.Caption := '卡上支付金额:' + format('￥%3.2f', [mz_sfbz])
  else
    kyhsfbz.caption := '';
end;

procedure Tfrm_mzsf.Proc_mzsj_sc_b; //20100827姜超添加----------------------
var
  v_Infor_fy: TInfor_fy;
  sbjk_je: string;
begin
  if pub_is_zhsb then
  begin
//    Pub_Is_sbsf := pub_is_zhsb;
    with DM_data do
    begin
      qry_pub.Close;
      qry_pub.SQL.Text := 'declare @ph varchar(20)' +
        ' set @ph = :ph' +
        ' select a.zhzf,a.tczf,b.zfy-a.zhzf-a.tczf xjzf from sbjk_sbjs a,(select SUM(sszje) zfy,ph from mzsf_mzfymx where ph=@ph group by ph) b' +
        ' where a.zyh = @ph and a.fylb = 2 and a.zyh = b.ph and a.yxbz = 1';
      qry_pub.Parameters.ParamByName('ph').Value := mz_ph;
      qry_pub.Open;
      sbjk_je := '社保合计' +
        ' 账户支付' + format('%0.2f', [qry_pub.FieldByName('zhzf').AsFloat]) +
      ' 统筹支付' + format('%0.2f', [qry_pub.FieldByName('tczf').AsFloat]) +
      ' 现金支付' + format('%0.2f', [qry_pub.FieldByName('xjzf').AsFloat]);
    end;
  end
  else
  begin
    sbjk_je := '';
  end;
  qry_fymx.Sort := 'sjbh ASC';
  v_Infor_fy := func_fyje_Calc(qry_fymx); //计算总金额、实收总金额、收据数量
  if pub_yydm = '0046' then //罗江县医院
  begin
    Print_mzsj_sc_b(qry_fymx, mz_brxm, Prv_ShowCaption_kyh, pub_is_zhsb, v_Infor_fy.fyje,
      v_Infor_fy.ssje, Prv_kyh_je - v_Infor_fy.ssje, v_Infor_fy.sjsl);
  end
  else
    if pub_yydm = '0015' then //江油人民医院
    begin
      Print_mzsj_sc_jy_b(qry_fymx, mz_brxm, Prv_ShowCaption_kyh, pub_is_zhsb, v_Infor_fy.fyje,
        v_Infor_fy.ssje, Prv_kyh_je - v_Infor_fy.ssje, v_Infor_fy.sjsl);
    end
    else //绵阳三医院,绵阳\广元万江眼科医院
      if (pub_yydm = '0003') or (pub_yydm = '0051') or (pub_yydm = '0196') or (pub_yydm = '0223') then
      begin
        Print_mzsj_sc_syy_b(qry_fymx, mz_brxm, Prv_ShowCaption_kyh, pub_is_zhsb, v_Infor_fy.fyje,
          v_Infor_fy.ssje, Prv_kyh_je - v_Infor_fy.ssje, v_Infor_fy.sjsl);
      end
      else
      begin //其他医院使用三台县人民医院格式,如:通江县人民医院等
        Print_mzsj_sc_st_b(qry_fymx, mz_brxm, Prv_ShowCaption_kyh, pub_is_zhsb, v_Infor_fy.fyje,
          v_Infor_fy.ssje, Prv_kyh_je - v_Infor_fy.ssje, v_Infor_fy.sjsl);
      end;
  if Prv_ShowCaption_kyh then
    kyhsfbz.Caption := '卡上支付金额:' + format('￥%3.2f', [mz_sfbz])
  else
    kyhsfbz.caption := '';
end;

procedure Tfrm_mzsf.Proc_mzsj_sc_js;
begin
  Application.CreateForm(Tfrm_mzbb, frm_mzbb);
  with frm_mzbb do
  begin
    sp_dy_czks.Close;
    sp_dy_czks.Parameters.ParamByName('@ph').Value := mz_ph;
    sp_dy_czks.Open;
    QRL_czy_sc.Caption := pub_czydm + '#' + copy(pub_czyxm, 1, 2);
    QRL_yymc_sc.caption := pub_yymc;
    QuickRep_sc.Print;
    try
      Free
    except
    end;
  end;
  proc_get_sjbh; //取得新收据编号
end;

procedure Tfrm_mzsf.Proc_mzsj_sx_js;
begin
  Application.CreateForm(Tfrm_mzbb, frm_mzbb);
  with frm_mzbb do
  begin
    sp_dy_czks.Close;
    sp_dy_czks.Parameters.ParamByName('@ph').Value := mz_ph;
    sp_dy_czks.Open;
    QRL_czy_sx.Caption := pub_czydm + '#' + copy(pub_czyxm, 1, 2);
    QRL_yymc_sx.caption := pub_yymc;
    QuickRep_sx.Print;
    try
      Free
    except
    end;
  end;
  proc_get_sjbh; //取得新收据编号
end;

procedure Tfrm_mzsf.Proc_mzsj_999999;
var
  ado_sjj: TADOQuery;
begin
  ado_sjj := TADOQuery.Create(nil);
  try
    ado_sjj.Connection := DM_data.ado_mydata;
    ado_sjj.Close;
    ado_sjj.SQL.Text := 'exec mzsf_mzsj_js_dx ''' + mz_ph + '''';
    ado_sjj.Open;
    frm_mzsf_print_service.printmzsj_js_999999(mz_tmh, mz_brxm, pub_czydm, pub_czyxm, ado_sjj);
  finally
    ado_sjj.free;
  end;
  proc_get_sjbh; //取得新收据编号
end;

procedure Tfrm_mzsf.Proc_mzsj_sx;
var
  ssje_hj, ssje, fpje: Real; //实际金额总额,要打印的发票上的总金额
  i, j: Integer;
begin
  ssje_hj := 0;
  while sjbhzh - sjbhqh >= 0 do
  begin
    qry_fymx.Filtered := False;
    qry_fymx.Filter := 'sjbh=' + inttostr(sjbhqh);
    qry_fymx.Filtered := true;
    ssje := 0.00;
    fpje := 0.00;
    qry_fymx.first;
    for i := 1 to qry_fymx.recordcount do
    begin
      if qry_fymx.FieldByName('sfbz').AsBoolean then
      begin
        fpje := fpje + qry_fymx.FieldByName('fyzje').AsCurrency;
        ssje := ssje + qry_fymx.FieldByName('sszje').AsCurrency;
      end;
      qry_fymx.next;
    end;
    ssje_hj := ssje_hj + ssje;

    Application.CreateForm(Tfrm_repo_hjsf, frm_repo_hjsf);
    frm_repo_hjsf.QRL_kyhsfbz_sx3d.Enabled := (mz_fylb <> '01');

    frm_repo_hjsf.QRL_dxje_sx.Caption := '实收:币' + NumberToMoney(ssje);
    frm_repo_hjsf.QRL_xxje_sx.Caption := format('￥%3.2f', [ssje]);
    frm_repo_hjsf.QRL_czy_sx.Caption := pub_czydm + '#' + Copy(pub_czyxm, 1, 2);
    frm_repo_hjsf.QRL_yymc_sx.caption := pub_yymc;
    frm_repo_hjsf.QRDB_sjbh_sx.DataSet := qry_fymx;
    frm_repo_hjsf.QRDB_brxm_sx.DataSet := qry_fymx;
    frm_repo_hjsf.QRDB_ksmc_sx.DataSet := qry_fymx;
    frm_repo_hjsf.QRDB_fydymc_sx.DataSet := qry_fymx;
    frm_repo_hjsf.QRDB_sfrq_sx.DataSet := qry_fymx;
    frm_repo_hjsf.QRDB_cfbh_sx.DataSet := qry_fymx;
    if pub_yydm = '0137' then //佛坪县医院用预览方式
      frm_repo_hjsf.QuickRep_sx.Preview
    else
      frm_repo_hjsf.QuickRep_sx.Print;
    try
      frm_repo_hjsf.Free
    except
    end;
    sjbhqh := sjbhqh + 1;
  end;
end;

procedure Tfrm_mzsf.Proc_mzsj_sx3d;
var
  ssje, fpje: Real; //实际金额总额,要打印的发票上的总金额
  i, j: Integer;
begin
  qry_fymx.first;
  for i := 1 to qry_fymx.recordcount do
  begin
    if qry_fymx.FieldByName('sfbz').AsBoolean then
    begin
      fpje := fpje + qry_fymx.FieldByName('fyzje').AsCurrency;
      ssje := ssje + qry_fymx.FieldByName('sszje').AsCurrency;
    end;
    qry_fymx.next;
  end;

  Application.CreateForm(Tfrm_repo_hjsf, frm_repo_hjsf);
  frm_repo_hjsf.QRL_kyhsfbz_sx3d.Enabled := (mz_fylb <> '01');
  frm_repo_hjsf.QRL_czy_sx3d.Caption := pub_czydm + '#' + Copy(pub_czyxm, 1, 2);
  frm_repo_hjsf.QRL_yymc_sx3d.caption := pub_yymc;
  if mz_fylb <> '01' then
    frm_repo_hjsf.QRL_kyhsfbz_sx3d.Caption := '卡余额:' + format('￥%3.2f', [Prv_kyh_je - ssje]);
  frm_repo_hjsf.QRDB_cfbh_sx3d.DataSet := qry_fymx;
  frm_repo_hjsf.QRDB_sjbh_sx3d.DataSet := qry_fymx;
  frm_repo_hjsf.QRDB_brxm_sx3d.DataSet := qry_fymx;
  frm_repo_hjsf.QRDB_ksmc_sx3d.DataSet := qry_fymx;
  frm_repo_hjsf.QRDBText3.DataSet := qry_fymx;
  frm_repo_hjsf.QRDBText4.DataSet := qry_fymx;
  frm_repo_hjsf.QRDB_sfrq_sx3d.DataSet := qry_fymx;
  frm_repo_hjsf.QuickRep_sx3d.DataSet := qry_fymx;
  if pub_yydm = '0137' then //佛坪县医院用预览方式
    frm_repo_hjsf.QuickRep_sx3d.Preview
  else
    frm_repo_hjsf.QuickRep_sx3d.Print;

  try
    frm_repo_hjsf.Free
  except
  end;
end;

procedure Tfrm_mzsf.Proc_mzsj_sx_htqfybjy;
begin
  Application.CreateForm(Tfrm_mzbb, frm_mzbb);
  with frm_mzbb do
  begin
    try
      QRL_czy_sx_ht.Caption := pub_czydm + '#' + copy(pub_czyxm, 1, 2);
      QuickRep_sx_htfybjy.Print;
    finally
      frm_mzbb.Free;
    end;
  end;
end;

procedure Tfrm_mzsf.Proc_mzsj_xj;
var
  ssje, fpje: Real; //要打印的发票上的总金额
  i: Integer;
begin
  while sjbhzh - sjbhqh >= 0 do
  begin
    qry_fymx.Filtered := False;
    qry_fymx.Filter := 'sjbh=' + inttostr(sjbhqh);
    qry_fymx.Filtered := true;
    ssje := 0.00;
    fpje := 0.00;
    qry_fymx.first;
    for i := 1 to qry_fymx.recordcount do
    begin
      if qry_fymx.FieldByName('sfbz').AsBoolean then
      begin
        fpje := fpje + qry_fymx.FieldByName('fyzje').AsCurrency;
        ssje := ssje + qry_fymx.FieldByName('sszje').AsCurrency;
      end;
      qry_fymx.next;
    end;
    Application.CreateForm(Tfrm_repo_hjsf, frm_repo_hjsf);
    frm_repo_hjsf.QRL_dxje_xj.Caption := '币' + NumberToMoney(fpje);
    frm_repo_hjsf.QRL_czy_xj.Caption := pub_czydm + '#' + copy(pub_czyxm, 1, 2);
    frm_repo_hjsf.QRL_yymc_xj.caption := pub_yymc;
    if mz_fylb <> '01' then
    begin
      kyhsfbz.Caption := '卡支付:' + format('￥%3.2f', [mz_sfbz]);
      frm_repo_hjsf.QRL_kyhsfbz_xj.Caption := '应收:' +
        format('￥%3.2f', [fpje]) + '实收:' + format('￥%3.2f', [ssje]);
    end
    else
    begin
      kyhsfbz.caption := '';
      frm_repo_hjsf.QRL_kyhsfbz_xj.caption := '';
    end;
    frm_repo_hjsf.QuickRep_xj.print;
    try
      frm_repo_hjsf.Free
    except
    end;
    sjbhqh := sjbhqh + 1;
  end;
end;

procedure Tfrm_mzsf.Proc_mzsj_xz;
var
  v_IsPrinterJoin: Boolean;
  v_PrinterIndex_new: Integer;
  v_PrinterIndex_old: Integer;
begin
  Application.CreateForm(Tfrm_mzbb, frm_mzbb);
  frm_mzbb.QRL_czy1_xz.Caption := pub_czydm + '#' + copy(pub_czyxm, 1, 2);
  frm_mzbb.QRL_czy2_xz.Caption := pub_czydm + '#' + copy(pub_czyxm, 1, 2);
  frm_mzbb.QRL_czy3_xz.Caption := pub_czydm + '#' + copy(pub_czyxm, 1, 2);

  frm_mzbb.QuickRep_xz.Print;
  try
    frm_mzbb.Free
  except
  end;
end;

procedure Tfrm_mzsf.Proc_mzsj_gs1;
begin
  Proc_Print_gssj1(qry_fymx, pub_yymc);
end;

procedure Tfrm_mzsf.Proc_mzsj_hb1;
var
  v_IsPrinterJoin: Boolean;
  v_PrinterIndex_new: Integer;
  v_PrinterIndex_old: Integer;
begin
  Application.CreateForm(Tfrm_repo_hjsf, frm_repo_hjsf);
  frm_repo_hjsf.QRL_czy_hb.Caption := ' ';

  qry_fymx.Sort := 'sjbh ASC';
  frm_repo_hjsf.QRL_czy_hb.Caption := pub_czydm + '#' + copy(pub_czyxm, 1, 2);
  frm_repo_hjsf.QRDB_yymc_hb.Caption := pub_yymc;
  frm_repo_hjsf.QRDB_cfbhc_hb.DataSet := qry_fymx;
  frm_repo_hjsf.QRDB_sfrq_hb.DataSet := qry_fymx;
  frm_repo_hjsf.QRDB_sjbh_hb.DataSet := qry_fymx;
  frm_repo_hjsf.QRDB_brxm_hb.DataSet := qry_fymx;
  frm_repo_hjsf.QRDB_ysmc_hb.DataSet := qry_fymx;
  frm_repo_hjsf.QRDB_fydymc_hb.DataSet := qry_fymx;
  frm_repo_hjsf.QRDB_sszje_hb.DataSet := qry_fymx;
  frm_repo_hjsf.QuickRep_hb.DataSet := qry_fymx;
  frm_repo_hjsf.QuickRep_hb.Print;
  try
    frm_repo_hjsf.Free
  except
  end;
end;

procedure Tfrm_mzsf.Proc_mzsj_hb2(const v_ph: string);
begin
  with DM_data.Qry_pub do
  begin
    Close;
    SQL.Clear;
    //xp 增加a.ph查询结果字段
    SQL.Text := 'select a.tmh,a.brxm,a.brxb,a.brnl,a.fydj,a.sszje,a.czks,a.sjbh,a.sfrq,a.kdks,a.ph,' +
      ' b.mc czksmc,c.mc kdksmc,d.fydm,d.dymc,convert(varchar(30),' + #39 + #39 + ') as gg,' +
      ' a.fysl,a.fydj,convert(varchar(50),' + #39 + #39 + ') ypmc,cast(1 as bit) lb,a.cfbh,g.mc sfczymc,d.dw' +
      ' from mzsf_mzfymx_ls a left join sys_ksdm b on a.czks=b.dm ' +
      ' left join sys_ksdm c on a.kdks=c.dm ' +
      ' inner join sys_kjsfxm d on a.fydm=d.fydm ' +
      ' inner join sys_czy g on a.sfczy=g.dm ' +
      ' where a.sfbz=1 and a.ph=' + #39 + v_ph + #39 + ' and d.cflb<>' + #39 + '西药费' + #39 +
      ' union all ' +
      ' select a.tmh,a.brxm,a.brxb,a.brnl,a.fydj,e.ypsl*d.cfjl*e.ypdj sszje,a.czks,a.sjbh,a.sfrq,a.kdks,a.ph,' +
      ' b.mc czksmc,c.mc kdksmc,a.fydm,g.dymc,f.ypgg gg,' +
      ' e.ypsl*d.cfjl ypsl,e.ypdj,f.ypmc,cast(0 as bit) lb,a.cfbh,h.mc sfczymc,e.ypdw' +
      ' from mzsf_mzfymx_ls a left join sys_ksdm b on a.czks=b.dm ' +
      ' left join sys_ksdm c on a.kdks=c.dm ' +
      ' inner join mzxyf_cfzb d ' +
      ' inner join mzxyf_cfmx e ' +
      '   inner join sys_ypdm f ' +
      '   on e.ypdm=f.ypdm ' +
      '   on d.cfbh=e.cfbh ' +
      ' on a.cfbh=d.cfbh ' +
      ' inner join sys_kjsfxm g on a.fydm=g.fydm ' +
      ' inner join sys_czy h on a.sfczy=h.dm ' +
      ' where a.sfbz=1 and a.ph=' + #39 + v_ph + #39 + ' and d.cflb=' + #39 + 'MZ' + #39;
    Open;
//    if (pub_yydm = '0175') or (pub_yydm = '0228') or (pub_yydm = '0124') then
//      Proc_Print_hbsj5d3(DM_data.Qry_pub, pub_yymc)
//    else
      Proc_Print_hbsj2(DM_data.Qry_pub, pub_yymc);
  end;
end;

procedure Tfrm_mzsf.Proc_mzsj_hb3(const v_ph: string);
begin
  with DM_data.Qry_pub do
  begin
    Close;
    SQL.Clear;
    SQL.Text := 'select a.tmh,a.brxm,a.fydj,a.sszje,a.czks,a.sjbh,a.sfrq,a.kdks,' +
      ' b.mc ksmc,c.mc kdksmc,d.fydm,d.dymc fydymc,convert(varchar(30),' + #39 + #39 + ') as gg,' +
      ' a.fysl,a.fydj,convert(varchar(50),' + #39 + #39 + ') ypmc,cast(1 as bit) lb,a.cfbh,g.mc sfczymc,d.dw' +
      ' from mzsf_mzfymx_ls a left join sys_ksdm b on a.czks=b.dm ' +
      ' left join sys_ksdm c on a.kdks=c.dm ' +
      ' inner join sys_kjsfxm d on a.fydm=d.fydm ' +
      ' inner join sys_czy g on a.sfczy=g.dm ' +
      ' where a.sfbz=1 and a.ph=' + #39 + v_ph + #39 + ' and d.cflb<>' + #39 + '西药费' + #39 +
      ' union all ' +
      ' select a.tmh,a.brxm,a.fydj,e.ypsl*d.cfjl*e.ypdj sszje,a.czks,a.sjbh,a.sfrq,a.kdks,' +
      ' b.mc ksmc,c.mc kdksmc,a.fydm,substring(f.ypmc,1,12) + Cast(e.ypsl*d.cfjl as char(4)) fydymc,f.ypgg gg,' +
      ' e.ypsl*d.cfjl ypsl,e.ypdj,f.ypmc,cast(0 as bit) lb,a.cfbh,h.mc sfczymc,e.ypdw' +
      ' from mzsf_mzfymx_ls a left join sys_ksdm b on a.czks=b.dm ' +
      ' left join sys_ksdm c on a.kdks=c.dm ' +
      ' inner join mzxyf_cfzb d ' +
      ' inner join mzxyf_cfmx e ' +
      '   inner join sys_ypdm f ' +
      '   on e.ypdm=f.ypdm ' +
      '   on d.cfbh=e.cfbh ' +
      ' on a.cfbh=d.cfbh ' +
      ' inner join sys_kjsfxm g on a.fydm=g.fydm ' +
      ' inner join sys_czy h on a.sfczy=h.dm ' +
      ' where a.sfbz=1 and a.ph=' + #39 + v_ph + #39 + ' and d.cflb=' + #39 + 'MZ' + #39;
    Open;
    Proc_Print_hbsj3(DM_data.Qry_pub, pub_yymc);
  end;
end;

procedure Tfrm_mzsf.Proc_mzsj_hb_b;
var
  v_Infor_fy: TInfor_fy;
begin
  qry_fymx.Sort := 'sjbh ASC';
  v_Infor_fy := func_fyje_Calc(qry_fymx); //计算总金额、实收总金额、收据数量
  Print_mzsj_sc_jy_b(qry_fymx, mz_brxm, Prv_ShowCaption_kyh, pub_is_zhsb, v_Infor_fy.fyje,
    v_Infor_fy.ssje, Prv_kyh_je - v_Infor_fy.ssje, v_Infor_fy.sjsl);
  if Prv_ShowCaption_kyh then
    kyhsfbz.Caption := '卡上支付金额:' + format('￥%3.2f', [mz_sfbz])
  else
    kyhsfbz.caption := '';
end;

procedure Tfrm_mzsf.Proc_mzsj_jx;
var
  ssje, fpje: Real; //要打印的发票上的总金额
  i: Integer;
begin
  while sjbhzh - sjbhqh >= 0 do
  begin
    qry_fymx.Filtered := False;
    qry_fymx.Filter := 'sjbh=' + inttostr(sjbhqh);
    qry_fymx.Filtered := true;
    ssje := 0.00;
    fpje := 0.00;
    qry_fymx.first;
    for i := 1 to qry_fymx.recordcount do
    begin
      if qry_fymx.FieldByName('sfbz').AsBoolean then
      begin
        fpje := fpje + qry_fymx.FieldByName('fyzje').AsCurrency;
        ssje := ssje + qry_fymx.FieldByName('sszje').AsCurrency;
      end;
      qry_fymx.next;
    end;
    Application.CreateForm(Tfrm_repo_hjsf, frm_repo_hjsf);
    with frm_repo_hjsf do
    begin
      QRL_hjje1_jx.Caption := NumberToMoney(fpje);
      QRL_hjje2_jx.Caption := NumberToMoney(fpje);
      QRL_hjje3_jx.Caption := NumberToMoney(fpje);
      QRL_hjje4_jx.Caption := NumberToMoney(fpje);
      QRL_sfy1_jx.Caption := pub_czyxm;
      QRL_sfy2_jx.Caption := pub_czyxm;
      QRL_sfy3_jx.Caption := pub_czyxm;
      QRL_sfy4_jx.Caption := pub_czyxm;
      QRL_brxm1_jx.Caption := Trim(qry_fymx.FieldByName('brxm').AsString);
      QRL_brxm2_jx.Caption := Trim(qry_fymx.FieldByName('brxm').AsString);
      QRL_brxm3_jx.Caption := Trim(qry_fymx.FieldByName('brxm').AsString);
      QRL_brxm4_jx.Caption := Trim(qry_fymx.FieldByName('brxm').AsString);
      QRL_sfrq1_jx.Caption := FormatDatetime('yyyy-mm-dd',
        Qry_fymx.FieldByName('sfrq').AsDateTime);
      QRL_sfrq2_jx.Caption := FormatDatetime('yyyy-mm-dd',
        Qry_fymx.FieldByName('sfrq').AsDateTime);
      QRL_sfrq3_jx.Caption := FormatDatetime('yyyy-mm-dd',
        Qry_fymx.FieldByName('sfrq').AsDateTime);
      QRL_sfrq4_jx.Caption := FormatDatetime('yyyy-mm-dd',
        Qry_fymx.FieldByName('sfrq').AsDateTime);
      QuickRep_jx.Preview;
      try QuickRep_jx.Free except
      end;
    end;
    sjbhqh := sjbhqh + 1;
  end;
end;

procedure Tfrm_mzsf.proc_save_fymx;
var
  save_cg, _sjh: string;
  qthjje: Real;
  qthjbs: Integer;
  aRecHjje_hjbs: TRecHjje_hjbs;
  i: Integer;
  a, b, c: string;
begin
  SetLength(save_cg, 255);
  //分配收据号
  proc_save_fymx_ls;
  aRecHjje_hjbs := func_get_fyje('sszje');
  qthjbs := aRecHjje_hjbs.Hjbs;
  qthjje := aRecHjje_hjbs.Hjje;
  //1.HIS结算
//  if pub_xyfckkqbz and (pub_xyfppm <> '') and (pub_xyfckppm <> '') then
//  begin
//    mz_brxm := pub_xyfppm + '|' + pub_xyfckppm;
//  end;
  save_cg := mzsf_up_brfymx(mz_tmh, mz_ph, pub_czydm, mz_brxm, qthjbs, qthjje);
  if save_cg = '1' then
  begin
    //将票据数据源改成正式表(2010-08-27姜超)
    qry_fymx.Close;
    qry_fymx.SQL.Text := 'select id,rtrim(tmh) tmh,rtrim(brxm) brxm,brxb,brnl,fylb,sjbh,rtrim(cfbh) cfbh,' +
      'fydm,fysl,fydj,fyzje,sszje,zkje,ghks,kdks,czks,kdys,czys,sfbz,tfbz,zfbz,sfczy,tfczy,zfczy,sfrq,tfrq,zfrq,jzbz,ph,' +
      'mscf,sffs,ybjzbh,isnull(yb_grzh,''0'') yb_grzh,brlb,zlid,czwz,isnull(hykxkje,0) hykxkje ' +
      'from mzsf_mzfymx where sfbz=1 and ph=:ph order by sjbh';
    qry_fymx.Parameters.ParamByName('ph').value := mz_ph;
    qry_fymx.Open;
    if qry_fymx.RecordCount <= 0 then
      save_cg := '本地结算异常';
  end;
  if save_cg <> '1' then //his结算失败
  begin
    save_cg := '数据存储失败! 请重试!' + save_cg;
    MessageBox(Handle, PAnsiChar(save_cg), '提示', MB_OK + MB_ICONERROR);
    if Prv_Exists_dzcf then
    begin
      //如果收费过程失败,则手动回滚明细表数据(2010-10-25姜超)
      DM_data.qry_pub.Close;
      DM_data.qry_pub.SQL.Text := 'update mzsf_mzfymx_ls set sfbz=0,ph=' + #39 + '' + #39 + ' where tmh=:tmh and ph=:ph';
      DM_data.qry_pub.Parameters.ParamByName('tmh').value := mz_tmh;
      DM_data.qry_pub.Parameters.ParamByName('ph').value := mz_ph;
      DM_data.qry_pub.ExecSQL;
    end;
    Abort;
  end
  else //his结算成功
  begin
    if pub_is_zhsb then
    begin
      try
        pub_is_zhsb := func_save_zhsb(mz_ph, aRecHjje_hjbs);
      except
        pub_is_zhsb := False;
      end;
      //社保结算失败 (此时his已成功，收据号已占用)
      if not pub_is_zhsb then
      begin
        case Application.MessageBox('社保结算失败，是否继续结算？' + #13
          + '选择【是】：继续以现金方式结算；' + #13
          + '选择【否】：停止操作，并自动作废收据', '提示', MB_YESNO + MB_ICONQUESTION) of
          IDYES:
            begin
              pub_is_zhsb := False;
            end;
          IDNO:
            begin //作废成功：则放弃发票打印
              if proc_up_sjzf(mz_tmh, mz_ph) then
                Exit
              else //自动作废失败：则按自费打印发票
                pub_is_zhsb := False;
            end;
        end;
      end;
    end;
    //确认处方自动打印
    DM_data.qry_pub.Close;
    DM_data.qry_pub.SQL.Text := 'update xyf_yfckzdfy_zb set qrdybz=1 where tmh=' + #39 + mz_tmh + #39 + ' and dybz=0 and qrdybz=0';
    DM_data.qry_pub.ExecSQL;
    //计算批号内总金额
    v_pczje := 0.0;
    qry_fymx.First;
    while not qry_fymx.Eof do
    begin
      v_pczje := v_pczje + qry_fymx.FieldByName('sszje').AsFloat;
      qry_fymx.Next;
    end;
    qry_fymx.First;
    //打印发票
    if not pub_mzsf_bl then //不是补打模式
      proc_fpdy;
    //健康卡写卡
    if (Prv_tmh_fs = 5) and (pub_bdkh <> '') then
    begin
      Zddqjjk_Stop;
      sleep(1000);
      if MessageBox(Handle, '此病人是健康卡持有者，如需写卡请将健康卡置于写卡器上方。' +
        #13#10#13#10 + '然后点击“确定”按钮', '提示', MB_OKCANCEL +
        MB_ICONINFORMATION) = IDOK then
      begin
        WriteJkkData;
        MessageBox(Handle, '写卡完成！', '提示', MB_OK +
          MB_ICONINFORMATION);
      end
      else
      begin
        MessageBox(Handle, '写卡操作已经取消！', '提示', MB_OK +
          MB_ICONINFORMATION);
      end;
    end;
  end;
end;

procedure Tfrm_mzsf.WriteJkkData;
var
  Exam: Tjkk_ExamInfoarr;
  I: Integer;
begin
  if not Assigned(ExamInfo) then Exit;
  ExamInfo(Exam);
  DM_data.qry_pub.Close;
  DM_data.qry_pub.SQL.Text := 'exec jkk_zbsj_mz ''' + mz_tmh + '''';
  DM_data.qry_pub.ExecSQL;
  DM_data.qry_pub.Close;
  DM_data.qry_pub.SQL.Text := 'select * from sys_mzjkkxrb where tmh=:tmh and confirmdt=:rq';
  DM_data.qry_pub.Parameters.ParamByName('tmh').Value := mz_tmh;
  DM_data.qry_pub.Parameters.ParamByName('rq').Value := FormatDateTime('yyyyMMdd', Now);
  DM_data.qry_pub.Open;
  if DM_data.qry_pub.RecordCount = 0 then
  begin
    MessageBox(Handle, '获取就诊信息失败！', '错误', MB_OK + MB_ICONSTOP);
    exit;
  end;
  SetLength(Exam, DM_data.qry_pub.RecordCount);
  for I := 0 to DM_data.qry_pub.RecordCount - 1 do
  begin
    New(Exam[i]);
    Exam[i].mz_HospName := Trim(DM_data.qry_pub.FieldByName('HospName').AsString); //就诊机构名称
    Exam[i].mz_HospOrgCode := Trim(DM_data.qry_pub.FieldByName('HospOrgCode').AsString); //就诊机构组织机构代码
    Exam[i].mz_ConfirmDT := Trim(DM_data.qry_pub.FieldByName('ConfirmDT').AsString); //就诊日期时间
    Exam[i].mz_ExamNO := Trim(DM_data.qry_pub.FieldByName('ExamNO').AsString); //门诊号
    Exam[i].mz_ExamOffice := Trim(DM_data.qry_pub.FieldByName('ExamOffice').AsString); //就诊科室名称
    Exam[i].mz_PayType := Trim(DM_data.qry_pub.FieldByName('PayType').AsString); //医疗付款方式
    Exam[i].mz_SymptomName1 := Trim(DM_data.qry_pub.FieldByName('SymptomName1').AsString); //症状名称1
    Exam[i].mz_SymptomCode1 := Trim(DM_data.qry_pub.FieldByName('SymptomCode1').AsString); //症状代码1
    Exam[i].mz_ConfirmDT1 := Trim(DM_data.qry_pub.FieldByName('ConfirmDT1').AsString); //诊断日期1
    Exam[i].mz_DiseaseName1 := Trim(DM_data.qry_pub.FieldByName('DiseaseName1').AsString); //门诊诊断名称1
    Exam[i].mz_DiseaseCode1 := Trim(DM_data.qry_pub.FieldByName('DiseaseCode1').AsString); //门诊诊断代码1
    Exam[i].mz_MorbiDT1 := Trim(DM_data.qry_pub.FieldByName('MorbiDT1').AsString); //发病日期时间1
    Exam[i].mz_SymptomDT1 := Trim(DM_data.qry_pub.FieldByName('SymptomDT1').AsString); //症状持续时间1
    Exam[i].mz_SymptomName2 := Trim(DM_data.qry_pub.FieldByName('SymptomName2').AsString); //症状名称2
    Exam[i].mz_SymptomCode2 := Trim(DM_data.qry_pub.FieldByName('SymptomCode2').AsString); //症状代码2
    Exam[i].mz_ConfirmDT2 := Trim(DM_data.qry_pub.FieldByName('ConfirmDT2').AsString); //诊断日期2
    Exam[i].mz_DiseaseName2 := Trim(DM_data.qry_pub.FieldByName('DiseaseName2').AsString); //门诊诊断名称2
    Exam[i].mz_DiseaseCode2 := Trim(DM_data.qry_pub.FieldByName('DiseaseCode2').AsString); //门诊诊断代码2
    Exam[i].mz_MorbiDT2 := Trim(DM_data.qry_pub.FieldByName('MorbiDT2').AsString); //发病日期时间2
    Exam[i].mz_SymptomDT2 := Trim(DM_data.qry_pub.FieldByName('SymptomDT2').AsString); //症状持续时间2
    Exam[i].mz_SymptomName3 := Trim(DM_data.qry_pub.FieldByName('SymptomName3').AsString); //症状名称3
    Exam[i].mz_SymptomCode3 := Trim(DM_data.qry_pub.FieldByName('SymptomCode3').AsString); //症状代码3
    Exam[i].mz_ConfirmDT3 := Trim(DM_data.qry_pub.FieldByName('ConfirmDT3').AsString); //诊断日期3
    Exam[i].mz_DiseaseName3 := Trim(DM_data.qry_pub.FieldByName('DiseaseName3').AsString); //门诊诊断名称3
    Exam[i].mz_DiseaseCode3 := Trim(DM_data.qry_pub.FieldByName('DiseaseCode3').AsString); //门诊诊断代码3
    Exam[i].mz_MorbiDT3 := Trim(DM_data.qry_pub.FieldByName('MorbiDT3').AsString); //发病日期时间3
    Exam[i].mz_SymptomDT3 := Trim(DM_data.qry_pub.FieldByName('SymptomDT3').AsString); //症状持续时间3
    Exam[i].mz_SymptomName4 := Trim(DM_data.qry_pub.FieldByName('SymptomName4').AsString); //症状名称4
    Exam[i].mz_SymptomCode4 := Trim(DM_data.qry_pub.FieldByName('SymptomCode4').AsString); //症状代码4
    Exam[i].mz_ConfirmDT4 := Trim(DM_data.qry_pub.FieldByName('ConfirmDT4').AsString); //诊断日期4
    Exam[i].mz_DiseaseName4 := Trim(DM_data.qry_pub.FieldByName('DiseaseName4').AsString); //门诊诊断名称4
    Exam[i].mz_DiseaseCode4 := Trim(DM_data.qry_pub.FieldByName('DiseaseCode4').AsString); //门诊诊断代码4
    Exam[i].mz_MorbiDT4 := Trim(DM_data.qry_pub.FieldByName('MorbiDT4').AsString); //发病日期时间4
    Exam[i].mz_SymptomDT4 := Trim(DM_data.qry_pub.FieldByName('SymptomDT4').AsString); //症状持续时间4
    Exam[i].mz_SymptomName5 := Trim(DM_data.qry_pub.FieldByName('SymptomName5').AsString); //症状名称5
    Exam[i].mz_SymptomCode5 := Trim(DM_data.qry_pub.FieldByName('SymptomCode5').AsString); //症状代码5
    Exam[i].mz_ConfirmDT5 := Trim(DM_data.qry_pub.FieldByName('ConfirmDT5').AsString); //诊断日期5
    Exam[i].mz_DiseaseName5 := Trim(DM_data.qry_pub.FieldByName('DiseaseName5').AsString); //门诊诊断名称5
    Exam[i].mz_DiseaseCode5 := Trim(DM_data.qry_pub.FieldByName('DiseaseCode5').AsString); //门诊诊断代码5
    Exam[i].mz_MorbiDT5 := Trim(DM_data.qry_pub.FieldByName('MorbiDT5').AsString); //发病日期时间5
    Exam[i].mz_SymptomDT5 := Trim(DM_data.qry_pub.FieldByName('SymptomDT5').AsString); //症状持续时间5
    Exam[i].mz_CheckoutName1 := Trim(DM_data.qry_pub.FieldByName('CheckoutName1').AsString); //检查/检验项目名称1
    Exam[i].mz_CheckoutResultCode1 := Trim(DM_data.qry_pub.FieldByName('CheckoutResultCode1').AsString); //检查/检验结果代码1
    Exam[i].mz_CheckoutResultName1 := Trim(DM_data.qry_pub.FieldByName('CheckoutResultName1').AsString); //检查/检验定量结果1
    Exam[i].mz_CheckoutUnit1 := Trim(DM_data.qry_pub.FieldByName('CheckoutUnit1').AsString); //检查/检验计量单位1
    Exam[i].mz_CheckoutCode1 := Trim(DM_data.qry_pub.FieldByName('CheckoutCode1').AsString); //检查/检验项目代码1
    Exam[i].mz_CheckoutName2 := Trim(DM_data.qry_pub.FieldByName('CheckoutName2').AsString); //检查/检验项目名称2
    Exam[i].mz_CheckoutResultCode2 := Trim(DM_data.qry_pub.FieldByName('CheckoutResultCode2').AsString); //检查/检验结果代码2
    Exam[i].mz_CheckoutResultName2 := Trim(DM_data.qry_pub.FieldByName('CheckoutResultName2').AsString); //检查/检验定量结果2
    Exam[i].mz_CheckoutUnit2 := Trim(DM_data.qry_pub.FieldByName('CheckoutUnit2').AsString); //检查/检验计量单位2
    Exam[i].mz_CheckoutCode2 := Trim(DM_data.qry_pub.FieldByName('CheckoutCode2').AsString); //检查/检验项目代码2
    Exam[i].mz_CheckoutName3 := Trim(DM_data.qry_pub.FieldByName('CheckoutName3').AsString); //检查/检验项目名称3
    Exam[i].mz_CheckoutResultCode3 := Trim(DM_data.qry_pub.FieldByName('CheckoutResultCode3').AsString); //检查/检验结果代码3
    Exam[i].mz_CheckoutResultName3 := Trim(DM_data.qry_pub.FieldByName('CheckoutResultName3').AsString); //检查/检验定量结果3
    Exam[i].mz_CheckoutUnit3 := Trim(DM_data.qry_pub.FieldByName('CheckoutUnit3').AsString); //检查/检验计量单位3
    Exam[i].mz_CheckoutCode3 := Trim(DM_data.qry_pub.FieldByName('CheckoutCode3').AsString); //检查/检验项目代码3
    Exam[i].mz_CheckoutName4 := Trim(DM_data.qry_pub.FieldByName('CheckoutName4').AsString); //检查/检验项目名称4
    Exam[i].mz_CheckoutResultCode4 := Trim(DM_data.qry_pub.FieldByName('CheckoutResultCode4').AsString); //检查/检验结果代码4
    Exam[i].mz_CheckoutResultName4 := Trim(DM_data.qry_pub.FieldByName('CheckoutResultName4').AsString); //检查/检验定量结果4
    Exam[i].mz_CheckoutUnit4 := Trim(DM_data.qry_pub.FieldByName('CheckoutUnit4').AsString); //检查/检验计量单位4
    Exam[i].mz_CheckoutCode4 := Trim(DM_data.qry_pub.FieldByName('CheckoutCode4').AsString); //检查/检验项目代码4
    Exam[i].mz_CheckoutName5 := Trim(DM_data.qry_pub.FieldByName('CheckoutName5').AsString); //检查/检验项目名称5
    Exam[i].mz_CheckoutResultCode5 := Trim(DM_data.qry_pub.FieldByName('CheckoutResultCode5').AsString); //检查/检验结果代码5
    Exam[i].mz_CheckoutResultName5 := Trim(DM_data.qry_pub.FieldByName('CheckoutResultName5').AsString); //检查/检验定量结果5
    Exam[i].mz_CheckoutUnit5 := Trim(DM_data.qry_pub.FieldByName('CheckoutUnit5').AsString); //检查/检验计量单位5
    Exam[i].mz_CheckoutCode5 := Trim(DM_data.qry_pub.FieldByName('CheckoutCode5').AsString); //检查/检验项目代码5
    Exam[i].mz_CheckoutName6 := Trim(DM_data.qry_pub.FieldByName('CheckoutName6').AsString); //检查/检验项目名称6
    Exam[i].mz_CheckoutResultCode6 := Trim(DM_data.qry_pub.FieldByName('CheckoutResultCode6').AsString); //检查/检验结果代码6
    Exam[i].mz_CheckoutResultName6 := Trim(DM_data.qry_pub.FieldByName('CheckoutResultName6').AsString); //检查/检验定量结果6
    Exam[i].mz_CheckoutUnit6 := Trim(DM_data.qry_pub.FieldByName('CheckoutUnit6').AsString); //检查/检验计量单位6
    Exam[i].mz_CheckoutCode6 := Trim(DM_data.qry_pub.FieldByName('CheckoutCode6').AsString); //检查/检验项目代码6
    Exam[i].mz_CheckoutName7 := Trim(DM_data.qry_pub.FieldByName('CheckoutName7').AsString); //检查/检验项目名称7
    Exam[i].mz_CheckoutResultCode7 := Trim(DM_data.qry_pub.FieldByName('CheckoutResultCode7').AsString); //检查/检验结果代码7
    Exam[i].mz_CheckoutResultName7 := Trim(DM_data.qry_pub.FieldByName('CheckoutResultName7').AsString); //检查/检验定量结果7
    Exam[i].mz_CheckoutUnit7 := Trim(DM_data.qry_pub.FieldByName('CheckoutUnit7').AsString); //检查/检验计量单位7
    Exam[i].mz_CheckoutCode7 := Trim(DM_data.qry_pub.FieldByName('CheckoutCode7').AsString); //检查/检验项目代码7
    Exam[i].mz_CheckoutName8 := Trim(DM_data.qry_pub.FieldByName('CheckoutName8').AsString); //检查/检验项目名称8
    Exam[i].mz_CheckoutResultCode8 := Trim(DM_data.qry_pub.FieldByName('CheckoutResultCode8').AsString); //检查/检验结果代码8
    Exam[i].mz_CheckoutResultName8 := Trim(DM_data.qry_pub.FieldByName('CheckoutResultName8').AsString); //检查/检验定量结果8
    Exam[i].mz_CheckoutUnit8 := Trim(DM_data.qry_pub.FieldByName('CheckoutUnit8').AsString); //检查/检验计量单位8
    Exam[i].mz_CheckoutCode8 := Trim(DM_data.qry_pub.FieldByName('CheckoutCode8').AsString); //检查/检验项目代码8
    Exam[i].mz_CheckoutName9 := Trim(DM_data.qry_pub.FieldByName('CheckoutName9').AsString); //检查/检验项目名称9
    Exam[i].mz_CheckoutResultCode9 := Trim(DM_data.qry_pub.FieldByName('CheckoutResultCode9').AsString); //检查/检验结果代码9
    Exam[i].mz_CheckoutResultName9 := Trim(DM_data.qry_pub.FieldByName('CheckoutResultName9').AsString); //检查/检验定量结果9
    Exam[i].mz_CheckoutUnit9 := Trim(DM_data.qry_pub.FieldByName('CheckoutUnit9').AsString); //检查/检验计量单位9
    Exam[i].mz_CheckoutCode9 := Trim(DM_data.qry_pub.FieldByName('CheckoutCode9').AsString); //检查/检验项目代码9
    Exam[i].mz_CheckoutName10 := Trim(DM_data.qry_pub.FieldByName('CheckoutName10').AsString); //检查/检验项目名称10
    Exam[i].mz_CheckoutResultCode10 := Trim(DM_data.qry_pub.FieldByName('CheckoutResultCode10').AsString); //检查/检验结果代码10
    Exam[i].mz_CheckoutResultName10 := Trim(DM_data.qry_pub.FieldByName('CheckoutResultName10').AsString); //检查/检验定量结果10
    Exam[i].mz_CheckoutUnit10 := Trim(DM_data.qry_pub.FieldByName('CheckoutUnit10').AsString); //检查/检验计量单位10
    Exam[i].mz_CheckoutCode10 := Trim(DM_data.qry_pub.FieldByName('CheckoutCode10').AsString); //检查/检验项目代码10
    Exam[i].mz_DrugName1 := Trim(DM_data.qry_pub.FieldByName('DrugName1').AsString); //药物名称1
    Exam[i].mz_DrugCode1 := Trim(DM_data.qry_pub.FieldByName('DrugCode1').AsString); //药物剂型代码1
    Exam[i].mz_DrugDay1 := Trim(DM_data.qry_pub.FieldByName('DrugDay1').AsString); //用药天数1
    Exam[i].mz_DrugFreq1 := Trim(DM_data.qry_pub.FieldByName('DrugFreq1').AsString); //药物使用频率1
    Exam[i].mz_DrugUnit1 := Trim(DM_data.qry_pub.FieldByName('DrugUnit1').AsString); //药物使用剂量单位1
    Exam[i].mz_DrugDosa1 := Trim(DM_data.qry_pub.FieldByName('DrugDosa1').AsString); //药物使用次剂量1
    Exam[i].mz_DrugSumDosa1 := Trim(DM_data.qry_pub.FieldByName('DrugSumDosa1').AsString); //药物使用总剂量1
    Exam[i].mz_DrugUseCode1 := Trim(DM_data.qry_pub.FieldByName('DrugUseCode1').AsString); //药物使用途径代码1
    Exam[i].mz_DrugName2 := Trim(DM_data.qry_pub.FieldByName('DrugName2').AsString); //药物名称2
    Exam[i].mz_DrugCode2 := Trim(DM_data.qry_pub.FieldByName('DrugCode2').AsString); //药物剂型代码2
    Exam[i].mz_DrugDay2 := Trim(DM_data.qry_pub.FieldByName('DrugDay2').AsString); //用药天数2
    Exam[i].mz_DrugFreq2 := Trim(DM_data.qry_pub.FieldByName('DrugFreq2').AsString); //药物使用频率2
    Exam[i].mz_DrugUnit2 := Trim(DM_data.qry_pub.FieldByName('DrugUnit2').AsString); //药物使用剂量单位2
    Exam[i].mz_DrugDosa2 := Trim(DM_data.qry_pub.FieldByName('DrugDosa2').AsString); //药物使用次剂量2
    Exam[i].mz_DrugSumDosa2 := Trim(DM_data.qry_pub.FieldByName('DrugSumDosa2').AsString); //药物使用总剂量2
    Exam[i].mz_DrugUseCode2 := Trim(DM_data.qry_pub.FieldByName('DrugUseCode2').AsString); //药物使用途径代码2
    Exam[i].mz_DrugName3 := Trim(DM_data.qry_pub.FieldByName('DrugName3').AsString); //药物名称3
    Exam[i].mz_DrugCode3 := Trim(DM_data.qry_pub.FieldByName('DrugCode3').AsString); //药物剂型代码3
    Exam[i].mz_DrugDay3 := Trim(DM_data.qry_pub.FieldByName('DrugDay3').AsString); //用药天数3
    Exam[i].mz_DrugFreq3 := Trim(DM_data.qry_pub.FieldByName('DrugFreq3').AsString); //药物使用频率3
    Exam[i].mz_DrugUnit3 := Trim(DM_data.qry_pub.FieldByName('DrugUnit3').AsString); //药物使用剂量单位3
    Exam[i].mz_DrugDosa3 := Trim(DM_data.qry_pub.FieldByName('DrugDosa3').AsString); //药物使用次剂量3
    Exam[i].mz_DrugSumDosa3 := Trim(DM_data.qry_pub.FieldByName('DrugSumDosa3').AsString); //药物使用总剂量3
    Exam[i].mz_DrugUseCode3 := Trim(DM_data.qry_pub.FieldByName('DrugUseCode3').AsString); //药物使用途径代码3
    Exam[i].mz_DrugName4 := Trim(DM_data.qry_pub.FieldByName('DrugName4').AsString); //药物名称4
    Exam[i].mz_DrugCode4 := Trim(DM_data.qry_pub.FieldByName('DrugCode4').AsString); //药物剂型代码4
    Exam[i].mz_DrugDay4 := Trim(DM_data.qry_pub.FieldByName('DrugDay4').AsString); //用药天数4
    Exam[i].mz_DrugFreq4 := Trim(DM_data.qry_pub.FieldByName('DrugFreq4').AsString); //药物使用频率4
    Exam[i].mz_DrugUnit4 := Trim(DM_data.qry_pub.FieldByName('DrugUnit4').AsString); //药物使用剂量单位4
    Exam[i].mz_DrugDosa4 := Trim(DM_data.qry_pub.FieldByName('DrugDosa4').AsString); //药物使用次剂量4
    Exam[i].mz_DrugSumDosa4 := Trim(DM_data.qry_pub.FieldByName('DrugSumDosa4').AsString); //药物使用总剂量4
    Exam[i].mz_DrugUseCode4 := Trim(DM_data.qry_pub.FieldByName('DrugUseCode4').AsString); //药物使用途径代码4
    Exam[i].mz_DrugName5 := Trim(DM_data.qry_pub.FieldByName('DrugName5').AsString); //药物名称5
    Exam[i].mz_DrugCode5 := Trim(DM_data.qry_pub.FieldByName('DrugCode5').AsString); //药物剂型代码5
    Exam[i].mz_DrugDay5 := Trim(DM_data.qry_pub.FieldByName('DrugDay5').AsString); //用药天数5
    Exam[i].mz_DrugFreq5 := Trim(DM_data.qry_pub.FieldByName('DrugFreq5').AsString); //药物使用频率5
    Exam[i].mz_DrugUnit5 := Trim(DM_data.qry_pub.FieldByName('DrugUnit5').AsString); //药物使用剂量单位5
    Exam[i].mz_DrugDosa5 := Trim(DM_data.qry_pub.FieldByName('DrugDosa5').AsString); //药物使用次剂量5
    Exam[i].mz_DrugSumDosa5 := Trim(DM_data.qry_pub.FieldByName('DrugSumDosa5').AsString); //药物使用总剂量5
    Exam[i].mz_DrugUseCode5 := Trim(DM_data.qry_pub.FieldByName('DrugUseCode5').AsString); //药物使用途径代码5
    Exam[i].mz_SurgeryName1 := Trim(DM_data.qry_pub.FieldByName('SurgeryName1').AsString); //手术/操作名称1
    Exam[i].mz_SurgeryCode1 := Trim(DM_data.qry_pub.FieldByName('SurgeryCode1').AsString); //手术/操作代码1
    Exam[i].mz_SurgeryDT1 := Trim(DM_data.qry_pub.FieldByName('SurgeryDT1').AsString); //手术/操作日期1
    Exam[i].mz_SurgeryName2 := Trim(DM_data.qry_pub.FieldByName('SurgeryName2').AsString); //手术/操作名称2
    Exam[i].mz_SurgeryCode2 := Trim(DM_data.qry_pub.FieldByName('SurgeryCode2').AsString); //手术/操作代码2
    Exam[i].mz_SurgeryDT2 := Trim(DM_data.qry_pub.FieldByName('SurgeryDT2').AsString); //手术/操作日期2
    Exam[i].mz_SurgeryName3 := Trim(DM_data.qry_pub.FieldByName('SurgeryName3').AsString); //手术/操作名称3
    Exam[i].mz_SurgeryCode3 := Trim(DM_data.qry_pub.FieldByName('SurgeryCode3').AsString); //手术/操作代码3
    Exam[i].mz_SurgeryDT3 := Trim(DM_data.qry_pub.FieldByName('SurgeryDT3').AsString); //手术/操作日期3
    Exam[i].mz_ExamClasName1 := Trim(DM_data.qry_pub.FieldByName('ExamClasName1').AsString); //门诊费用分类名称1
    Exam[i].mz_ExamClasCode1 := Trim(DM_data.qry_pub.FieldByName('ExamClasCode1').AsString); //门诊费用分类代码1
    Exam[i].mz_ExamClasAmt1 := Trim(DM_data.qry_pub.FieldByName('ExamClasAmt1').AsString); //门诊费用金额1
    Exam[i].mz_ExamClasName2 := Trim(DM_data.qry_pub.FieldByName('ExamClasName2').AsString); //门诊费用分类名称2
    Exam[i].mz_ExamClasCode2 := Trim(DM_data.qry_pub.FieldByName('ExamClasCode2').AsString); //门诊费用分类代码2
    Exam[i].mz_ExamClasAmt2 := Trim(DM_data.qry_pub.FieldByName('ExamClasAmt2').AsString); //门诊费用金额2
    Exam[i].mz_ExamClasName3 := Trim(DM_data.qry_pub.FieldByName('ExamClasName3').AsString); //门诊费用分类名称3
    Exam[i].mz_ExamClasCode3 := Trim(DM_data.qry_pub.FieldByName('ExamClasCode3').AsString); //门诊费用分类代码3
    Exam[i].mz_ExamClasAmt3 := Trim(DM_data.qry_pub.FieldByName('ExamClasAmt3').AsString); //门诊费用金额3
    Exam[i].mz_ExamClasName4 := Trim(DM_data.qry_pub.FieldByName('ExamClasName4').AsString); //门诊费用分类名称4
    Exam[i].mz_ExamClasCode4 := Trim(DM_data.qry_pub.FieldByName('ExamClasCode4').AsString); //门诊费用分类代码4
    Exam[i].mz_ExamClasAmt4 := Trim(DM_data.qry_pub.FieldByName('ExamClasAmt4').AsString); //门诊费用金额4
    Exam[i].mz_ExamClasName5 := Trim(DM_data.qry_pub.FieldByName('ExamClasName5').AsString); //门诊费用分类名称5
    Exam[i].mz_ExamClasCode5 := Trim(DM_data.qry_pub.FieldByName('ExamClasCode5').AsString); //门诊费用分类代码5
    Exam[i].mz_ExamClasAmt5 := Trim(DM_data.qry_pub.FieldByName('ExamClasAmt5').AsString); //门诊费用金额5
    Exam[i].mz_ExamClasName6 := Trim(DM_data.qry_pub.FieldByName('ExamClasName6').AsString); //门诊费用分类名称6
    Exam[i].mz_ExamClasCode6 := Trim(DM_data.qry_pub.FieldByName('ExamClasCode6').AsString); //门诊费用分类代码6
    Exam[i].mz_ExamClasAmt6 := Trim(DM_data.qry_pub.FieldByName('ExamClasAmt6').AsString); //门诊费用金额6
    Exam[i].mz_ExamClasName7 := Trim(DM_data.qry_pub.FieldByName('ExamClasName7').AsString); //门诊费用分类名称7
    Exam[i].mz_ExamClasCode7 := Trim(DM_data.qry_pub.FieldByName('ExamClasCode7').AsString); //门诊费用分类代码7
    Exam[i].mz_ExamClasAmt7 := Trim(DM_data.qry_pub.FieldByName('ExamClasAmt7').AsString); //门诊费用金额7
    Exam[i].mz_ExamClasName8 := Trim(DM_data.qry_pub.FieldByName('ExamClasName8').AsString); //门诊费用分类名称8
    Exam[i].mz_ExamClasCode8 := Trim(DM_data.qry_pub.FieldByName('ExamClasCode8').AsString); //门诊费用分类代码8
    Exam[i].mz_ExamClasAmt8 := Trim(DM_data.qry_pub.FieldByName('ExamClasAmt8').AsString); //门诊费用金额8
    Exam[i].mz_ExamClasName9 := Trim(DM_data.qry_pub.FieldByName('ExamClasName9').AsString); //门诊费用分类名称9
    Exam[i].mz_ExamClasCode9 := Trim(DM_data.qry_pub.FieldByName('ExamClasCode9').AsString); //门诊费用分类代码9
    Exam[i].mz_ExamClasAmt9 := Trim(DM_data.qry_pub.FieldByName('ExamClasAmt9').AsString); //门诊费用金额9
    Exam[i].mz_ExamClasName10 := Trim(DM_data.qry_pub.FieldByName('ExamClasName10').AsString); //门诊费用分类名称10
    Exam[i].mz_ExamClasCode10 := Trim(DM_data.qry_pub.FieldByName('ExamClasCode10').AsString); //门诊费用分类代码10
    Exam[i].mz_ExamClasAmt10 := Trim(DM_data.qry_pub.FieldByName('ExamClasAmt10').AsString); //门诊费用金额10
    Exam[i].mz_ExamInfoStr := Trim(DM_data.qry_pub.FieldByName('ExamInfoStr').AsString); //门诊结帐单字串
  end;
  set_ExamInfo(Exam[0]^);
end;

procedure Tfrm_mzsf.proc_save_fymx_ls;
begin
  //  qry_fymx.First;
  //  while not qry_fymx.Eof do
  //  begin
  //    qry_fymx.Edit;
  //
  //    qry_fymx.Post;
  //    qry_fymx.Next;
  //  end;

  qry_fymx.UpdateBatch;
  //  if ( pub_mzsfsfypdd > 1 ) and ( mzsfsfqyjs ) then //多项收费录入,按处置科室打印大项}
  if pub_mzsfsfqyjs then //多项收费录入,按处置科室打印大项}
    proc_upsjbh_dx
  else
  begin
    qry_fymx.Close;
    qry_fymx.SQL.Clear;
    qry_fymx.SQL.Text := 'select * from mzsf_mzfymx_ls where sfbz=1 and ph=:ph order by ' + Prv_sjfzfs_field;
    qry_fymx.Parameters.ParamByName('ph').value := mz_ph;
    qry_fymx.open;
    proc_upsjbh;
    qry_fymx.UpdateBatch;
  end;
  //如果是社保卡 则向社保服务器写数据
end;

procedure Tfrm_mzsf.proc_upsjbh;
var
  v_oldksdm, v_ksdm, fydm: string;
  i: Integer;
begin
  if (pub_mzsfsfypdd > 1) and (not pub_mzsfsfqyjs) then // 多项收费录入,分处置科室打细项
  begin
    qry_fymx.First;
    i := 0;
    //i为单张发票上项目的当前记录号，第一次进入循环时i初始值置0,循环中将i初始值置1
    v_oldksdm := Trim(qry_fymx.FieldByName(Prv_sjfzfs_field).asstring);
    proc_get_sjbh; //取得收据编号到 mz_sjbh变量中
    sjbhzh := strtoint(mz_sjbh);
    sjbhqh := strtoint(mz_sjbh); //取得收据起号打印时可用
    while not qry_fymx.Eof do
    begin
      qry_fymx.edit;
      v_ksdm := Trim(qry_fymx.FieldByName(Prv_sjfzfs_field).asstring);
      fydm := Trim(qry_fymx.FieldByName('fydm').asstring);
      //      if (v_oldksdm = v_ksdm) and (i < pub_mzsfsfypdd) and (fydm <> pub_xyfdm) and
      //        (fydm <> pub_mzxyfdm) and (fydm <> pub_chenydm) and (fydm <> pub_chaoydm) then
      if pub_yydm = '0227' then //湖北堰桥医院20130424
      begin
        if I >= pub_mzsfsfypdd then
        begin
          Inc(sjbhzh, 1);
          I := 1;
        end
        else
          Inc(i, 1);
      end
      else
      begin
        if (v_oldksdm = v_ksdm) and (Trim(qry_fymx.FieldByName('cfbh').AsString) = '') and
          (Trim(qry_fymx.FieldByName('dldm').AsString) <> pub_ghfdldm) then
        begin
          if I >= pub_mzsfsfypdd then
          begin
            Inc(sjbhzh, 1);
            I := 1;
          end
          else
            Inc(i, 1);
        end
        else
        begin
          if i <> 0 then
            Inc(sjbhzh, 1);
          i := 1;
          //        Inc( sjbhzh, 1 );
          //        I := 1;
        end;
      end;
      v_oldksdm := Trim(qry_fymx.FieldByName(Prv_sjfzfs_field).asstring);
      if pub_is_zhsb then //医保收费
        qry_fymx.FieldByName('fylb').AsString := '03';
      qry_fymx.FieldByName('sjbh').asinteger := sjbhzh;
      qry_fymx.Next;
    end;
  end
  else
    if (pub_yydm = '0061') then //武警新疆边防医院多项收费录入 一票结算
    begin
      proc_get_sjbh; //取得收据编号到 mz_sjbh变量中
      sjbhzh := strtoint(mz_sjbh);
      sjbhqh := strtoint(mz_sjbh); //取得收据起号打印时可用
      qry_fymx.First;
      while not qry_fymx.Eof do
      begin
        qry_fymx.edit;
        qry_fymx.FieldByName('sjbh').asinteger := sjbhzh;
        qry_fymx.Next;
      end;
    end
    else
      if (pub_mzsfsfypdd = 1) then
      begin
        qry_fymx.First;
        proc_get_sjbh; //取得收据编号到 mz_sjbh变量中
        sjbhzh := strtoint(mz_sjbh);
        sjbhqh := strtoint(mz_sjbh); //取得收据起号打印时可用
        while not qry_fymx.Eof do
        begin
          qry_fymx.edit;
          qry_fymx.FieldByName('sjbh').asinteger := sjbhzh;
          qry_fymx.Next;
          if not qry_fymx.Eof then
            sjbhzh := sjbhzh + 1;
        end;
      end;

  if sjbhzh_real < sjbhzh then //实际收据止号(sjbhzh_real)小于计算出止号(sjbhzh)
  begin
    Application.MessageBox('提示:收据编号不足以收取当前费用!', '提示', MB_ICONINFORMATION);
    Abort;
  end;
end;

procedure Tfrm_mzsf.proc_upsjbh_dx;
var
  v_error: string;
begin
  proc_get_sjbh;
  sp_up_sjbh.Close;
  sp_up_sjbh.Parameters.ParamByName('@ph').Value := mz_ph;
  sp_up_sjbh.Parameters.ParamByName('@czydm').Value := pub_czydm;
  sp_up_sjbh.Parameters.ParamByName('@sjqh').Value := StrToInt(mz_sjbh);
  sp_up_sjbh.Parameters.ParamByName('@sjzh').Value := sjbhzh_real;
  sp_up_sjbh.Parameters.ParamByName('@sczt').Value := '0';
  sp_up_sjbh.ExecProc;
  v_error := sp_up_sjbh.Parameters.ParamByName('@sczt').Value;
  if v_error <> '0' then
  begin
    Application.MessageBox(PChar('提示:收据号调整错误,数据未保存!错误原因:' + v_error), '提示', 16);
    b_cancel.Click;
    Exit;
  end;
end;

function Tfrm_mzsf.proc_up_sjzf(_tmh, _ph: string): Boolean;
var
  save_zf: string;
begin
  try
    //自动作废已结算收据
    SP_SJZF.Close;
    SP_SJZF.Parameters.ParamByName('@tmh').Value := _tmh;
    SP_SJZF.Parameters.ParamByName('@ph').Value := _ph;
    SP_SJZF.Parameters.ParamByName('@czydm').Value := pub_czydm;
    SP_SJZF.Parameters.ParamByName('@sjth').Value := 1;
    SP_SJZF.Parameters.ParamByName('@sczt').Value := '';
    SP_SJZF.ExecProc;
    save_zf := SP_SJZF.Parameters.ParamByName('@sczt').Value;
    if save_zf = '成功' then
    begin
      Result := True;
      Application.MessageBox('自动作废成功，并自动调号至收费前状态！',
        '系统提示', MB_OK + MB_ICONINFORMATION);
    end
    else
    begin
      Result := False;
      application.MessageBox(pchar('作废失败! 请重新调用作废功能!失败原因：' + save_zf), '系统提示', 0 + 16);
    end;
  except
    Result := False;
  end;
end;

procedure Tfrm_mzsf.proc_keydown_F4;
var
  v_jkje: Double;
  v_zhje: Double;
begin
  //20100827姜超放开----------------------
  if checkbox2.Checked and mzsfsfsyyy then
  begin
    try
      yybjUnit.Yybj(formatfloat('0.00', Prv_Ljzje_zf), p_func_yybj.pay); //AllInCost
      //      pro_yylx := 5;
      //      timer1.Enabled := true;
    except
    end;
  end;
  //ShowMessage('姓名：'+ (mz_brxm_List)+'   '+'费用总额：'+FloatToStr(Prv_Ljzje_fy)+'  '+'应收：'+FloatToStr(Prv_Ljzje_zf));
  Application.CreateForm(Tfrm_brjk, frm_brjk);
  try
    frm_brjk.mz_brxm := mz_brxm_list; //病人姓名
    frm_brjk.mz_fyze := Prv_Ljzje_fy; //费用总额
    frm_brjk.mz_ysk := Prv_Ljzje_zf; //应收款
    frm_brjk.mz_mainfrm := Self;
    frm_brjk.ShowModal;
    v_jkje := frm_brjk.mz_jkje;
    v_zhje := frm_brjk.mz_zhje;
  finally
    frm_brjk.free;
  end;

  Prv_Ljzje_fy := 0;
  Prv_Ljzje_zf := 0;
  mz_brxm_list := '';
  edt_ljje.Text := FormatFloat('0.00', Prv_Ljzje_zf);
  Editbrjkje.Text := FormatFloat('0.00', v_jkje);
  Editbrzhje.Text := FormatFloat('0.00', v_zhje);

end;

procedure Tfrm_mzsf.proc_Replicate_fymx(const v_cs: Integer);
var
  i, v_fysl: Integer;
  v_fydm: string;
  aRecHjje_hjbs: TRecHjje_hjbs;
begin
  TryStrToInt(Trim(e_sfcs.Text), v_fysl);

  v_fydm := mz_fydm;
  if not qry_fymx.Active then
    qry_fymx.Open;

  for I := 0 to v_cs - 1 do
  begin
    if qry_fymx.FieldByName('fyzje').AsFloat = 0 then
      qry_fymx.Edit
    else
      qry_fymx.Append;
    qry_fymx.FieldByName('tmh').asstring := mz_tmh;
    qry_fymx.FieldByName('brxm').asstring := mz_brxm;
    qry_fymx.FieldByName('fylb').asstring := mz_fylb;
    qry_fymx.FieldByName('fysl').AsFloat := 1;
    qry_fymx.FieldByName('fydj').AsFloat := mz_sfbz / v_fysl;
    qry_fymx.FieldByName('fydm').asstring := v_fydm;
    qry_fymx.FieldByName('kdks').asstring := mz_kdks;
    qry_fymx.FieldByName('czks').asstring := mz_czks;
    qry_fymx.FieldByName('kdys').asstring := mz_kdys;
    qry_fymx.FieldByName('czys').asstring := mz_czys;
    qry_fymx.FieldByName('sjbh').asinteger := strtoint(frm_mzsf.mz_sjbh);
    qry_fymx.FieldByName('sfczy').asstring := pub_czydm;
    qry_fymx.FieldByName('cfbh').asstring := mz_cfbh;
    qry_fymx.FieldByName('sffs').asinteger := mz_sffs;
    qry_fymx.FieldByName('sfrq').asdatetime := frm_func.curr_date;
    qry_fymx.FieldByName('ph').asstring := mz_ph;
    qry_fymx.FieldByName('fyzje').AsFloat := mz_sfbz / v_fysl;
    //    if mzsfsfsswr then //门诊四舍五入到角
    //      qry_fymx.FieldByName('sszje').AsFloat := realtomoney1(mz_sfbz)
    //    else
    //      if pub_sf5or1 then //门诊收费四舍五入到元或者5角
    //        qry_fymx.FieldByName('sszje').AsFloat := func_CastMoneyTo5(realtomoney1(mz_sfbz))
    //      else
    //        qry_fymx.FieldByName('sszje').AsFloat := realtomoney2(mz_sfbz);
    qry_fymx.FieldByName('sszje').AsFloat := realtomoney2(mz_sfbz);
    qry_fymx.FieldByName('brlb').asstring := mz_fylb;
    qry_fymx.FieldByName('sfbz').asboolean := true;
    qry_fymx.Post;
    mz_cfbh := '';
    editsflb.text := '';
    czks.text := '';
    if not (pub_yydm = '0108') then //蓬溪县医院门诊收费,同一病人保留前次处置医生
      czys.text := '';
    kdks.text := '';
    mz_fydm := '';

    proc_kyhjs; //根据病人类别金额折扣计算

    //    aRecHjje_hjbs := func_get_fyje('sszje');
    //    mz_ssje := aRecHjje_hjbs.Hjje;
    //    if not Pub_xjbz then
    //    begin
    //      if (Prv_kyh_je - mz_ssje < 0) then //后一条件为人民医院特殊修改
    //      begin
    //        Application.MessageBox('提示:卡上余额不足,不能收此项费用!', '提示', 16);
    //        qry_fymx.Delete;
    //        Exit;
    //      end
    //    end;
    //    if Pub_Is_sbsf then //医保
    //      LB_khy.Caption := Pub_brxm_sb + ',剩余金额：' + FormatFloat('0.00', Prv_kyh_syje)
    //    else
    //      if Prv_ShowCaption_kyh then //非现金非医保
    //        LB_khy.Caption := Trim(sp_cx_kyh.FieldByName('brxm').Asstring) +
    //          ',预交总额：' + FormatFloat('0.00', yjje)
    //          + ',剩余金额：' + FormatFloat('0.00', Prv_kyh_je - mz_ssje)
    //      else
    //        LB_khy.Caption := LB_khy.Caption;
  end;
end;

procedure Tfrm_mzsf.proc_fymx;
begin
  if (mz_sffs = 1) then //药房划价处方
  begin
    if pub_yydm <> '0009' then
      mz_czys := mz_kdys;
    save_cf_yz;
  end
  else
    if mz_sffs = 2 then //项目收费
    begin
      save_xm_yz;
    end
    else
      if (mz_sffs = 4) or (mz_sffs = 3) then //收费处划价处方收费
      begin
        proc_savecf;
        mz_czys := '0000';
      end;

  if (mz_sfbz >= 100) and (pub_yydm <> '0246') then //兴宁不提示100块
    if Application.MessageBox('该笔金额>=100元!确定收费吗!', '提示', 4 + 0 + 32) <> 6 then
      Exit;

  if Trim(mz_dxdm) = pub_ghfdldm then //挂号费
    proc_Replicate_fymx(StrToInt(FloatToStr(mz_fysl)))
  else
  begin
    if not qry_fymx.Active then
      qry_fymx.Open;
    if qry_fymx.FieldByName('fyzje').AsFloat = 0 then
      qry_fymx.Edit
    else
      qry_fymx.Append;
    qry_fymx.FieldByName('tmh').asstring := mz_tmh;
    qry_fymx.FieldByName('brxm').asstring := mz_brxm;
    qry_fymx.FieldByName('fylb').asstring := mz_fylb;
    qry_fymx.FieldByName('fysl').asfloat := mz_fysl;
    qry_fymx.FieldByName('fydj').asfloat := mz_sfbz1;
    qry_fymx.FieldByName('fydm').asstring := mz_fydm;
    qry_fymx.FieldByName('kdks').asstring := mz_kdks;
    qry_fymx.FieldByName('czks').asstring := mz_czks;
    qry_fymx.FieldByName('kdys').asstring := mz_kdys;
    qry_fymx.FieldByName('czys').asstring := mz_czys;
    qry_fymx.FieldByName('sjbh').asinteger := strtoint(frm_mzsf.mz_sjbh);
    qry_fymx.FieldByName('sfczy').asstring := pub_czydm;
    qry_fymx.FieldByName('cfbh').asstring := mz_cfbh;
    qry_fymx.FieldByName('sffs').asinteger := mz_sffs;
    qry_fymx.FieldByName('sfrq').asdatetime := frm_func.curr_date;
    qry_fymx.FieldByName('ph').asstring := mz_ph;
    qry_fymx.FieldByName('fyzje').asfloat := mz_sfbz;
    //    if mzsfsfsswr then //门诊四舍五入到角
    //      qry_fymx.FieldByName('sszje').AsFloat := realtomoney1(mz_sfbz)
    //    else
    //      if pub_sf5or1 then //门诊收费四舍五入到元或者5角
    //        qry_fymx.FieldByName('sszje').AsFloat := func_CastMoneyTo5(realtomoney1(mz_sfbz))
    //      else
    //        qry_fymx.FieldByName('sszje').AsFloat := realtomoney2(mz_sfbz);
    qry_fymx.FieldByName('sszje').AsFloat := mz_sfbz;
    qry_fymx.FieldByName('brlb').asstring := mz_fylb;
    qry_fymx.FieldByName('sfbz').asboolean := true;
    qry_fymx.Post;
    proc_tj_jylfyhj('sgcf', mz_cfbh);
    mz_cfbh := '';
    editsflb.text := '';
    czks.text := '';
    if not (pub_yydm = '0108') then //蓬溪县医院门诊收费,同一病人保留前次处置医生
      czys.text := '';
    kdks.text := '';
    mz_fydm := '';
    proc_kyhjs; //根据病人类别金额折扣计算
  end;
end;

procedure Tfrm_mzsf.proc_sum_cfje;
begin
  try
    mz_cfje := 0;
    qry_mx.DisableControls;
    qry_mx.First;
    while not qry_mx.Eof do
    begin
      mz_cfje := mz_cfje + qry_mx.FieldByName('ypsl').AsFloat *
        qry_mx.FieldByName('ypdj').AsFloat;
      qry_mx.MoveBy(1);
    end;
    qry_mx.EnableControls;
    mz_cfje := realtomoney2(mz_cfje);
    e_je.text := floattostr(mz_cfje);
  except
    Application.MessageBox('药品单价有错误！', '警告', 0 + 16);
    dbgrid1.SetFocus;
  end;
end;

procedure Tfrm_mzsf.proc_tj_jylfyhj(lb, v_cfbh: string);
begin
  if lb = 'dzcf' then
  begin
    qry_jylhj.close;
    qry_jylhj.sql.text := 'select *,sbfybl/100.00 as sbfybl1,case cfjl when 0 then 1 else cfjl end cfjl1 ' +
      'from dzbl_cfmx_ls a join sys_ypdm b on a.ypdm=b.ypdm where a.cfbh=' + #39 + v_cfbh + #39;
    qry_jylhj.open;
  end
  else
    if lb = 'sgcf' then
    begin
      qry_jylhj.close;
      qry_jylhj.sql.text := 'select *,sbfybl/100.00 as sbfybl1,case cfjl when 0 then 1 else cfjl end cfjl1 ' +
        'from mzxyf_cfmx a join sys_ypdm b on a.ypdm=b.ypdm where a.cfbh=' + #39 + v_cfbh + #39;
      qry_jylhj.open;
    end;
  if qry_jylhj.Active then
  begin
    if qry_jylhj.RecordCount > 0 then
    begin
      while not qry_jylhj.Eof do
      begin
        v_tchj := v_tchj + qry_jylhj.FieldByName('ypsl').AsFloat *
          qry_jylhj.FieldByName('ypdj').AsFloat *
          qry_jylhj.FieldByName('cfjl1').AsFloat *
          (1 - qry_jylhj.FieldByName('sbfybl1').AsFloat);

        v_zfhj := v_zfhj + qry_jylhj.FieldByName('ypsl').AsFloat *
          qry_jylhj.FieldByName('ypdj').AsFloat *
          qry_jylhj.FieldByName('cfjl1').AsFloat *
          qry_jylhj.FieldByName('sbfybl1').AsFloat;
        qry_jylhj.Next;
      end;
    end;
  end;
  e_tchj.Text := FormatFloat('0.00', v_tchj);
  e_zfhj.Text := FormatFloat('0.00', v_zfhj);
end;

procedure Tfrm_mzsf.proc_ts_gstc(v_tmh: string);
begin
  qry_cx_mzzcfts.Close;
  qry_cx_mzzcfts.Parameters.ParamByName('tmh').Value := v_tmh;
  qry_cx_mzzcfts.Open;
  if qry_cx_mzzcfts.RecordCount > 0 then
  begin
    Application.MessageBox(pchar('此病人今天已享受[ ' + qry_cx_mzzcfts.FieldByName('zcf_tc').AsString + '元 ]诊查费统筹优惠!'),
      '系统提示', MB_OK + MB_ICONINFORMATION);
  end;
end;

procedure Tfrm_mzsf.proc_UpdateName(const v_brxm: string);
begin
  if Prv_Exists_dzcf then //如果是电子处方收费方式，更改姓名，则全部更新
  begin
    if qry_fymx.RecordCount > 0 then
    begin
      qry_fymx.DisableControls;
      qry_fymx.First;
      while not qry_fymx.Eof do
      begin
        qry_fymx.Edit;
        qry_fymx.FieldByName('brxm').AsString := v_brxm;
        qry_fymx.Post;
        qry_fymx.Next;
      end;
      qry_fymx.EnableControls;
    end;
  end;
end;

procedure Tfrm_mzsf.proc_cxypkc;
begin
  sp_xgkc.Close;
  sp_xgkc.Parameters.ParamByName('@ypdm').value := qry_mx.FieldByName('ypdm').asstring;
  sp_xgkc.Parameters.ParamByName('@ksdm').value := pub_hjyfksdm;
  sp_xgkc.open;
  if (sp_xgkc['kcsl'] = 0) and (not pub_zyhjbz) then
  begin
    Application.MessageBox('该药品已无库存 !', '注意', 16);
    dbgrid1.SetFocus;
    abort;
  end;
  Prv_bz_ypkc := sp_xgkc['zxdwsl'] / qry_mx['ypbzbl'];
end;

function Tfrm_mzsf.proc_dzcfsh: Boolean;
var
  _dzcfbs: Integer;
  _dzcfje: Real;
begin
  Result := False;
  if Prv_Exists_dzcf then
  begin
    DM_data.qry_pub.Close;
    DM_data.qry_pub.SQL.Text := 'select * from mzsf_mzfymx_ls where sfbz=0 and tmh=' + #39 + mz_tmh + #39;
    DM_data.qry_pub.Open;
    _dzcfbs := 0;
    _dzcfje := 0;
    while not DM_data.qry_pub.Eof do
    begin
      _dzcfje := _dzcfje + DM_data.qry_pub.FieldByName('fyzje').AsFloat;
      Inc(_dzcfbs, 1);
      DM_data.qry_pub.Next;
    end;
    _dzcfje := StrToFloat(FormatFloat('0.0000', _dzcfje));
    prv_dzcfje := StrToFloat(FormatFloat('0.0000', prv_dzcfje));
    if (_dzcfbs <> prv_dzcfbs) or (_dzcfje <> prv_dzcfje) then
    begin
      Application.MessageBox(pchar('医生[' + prv_dzcfkdysmc + ']已修改此电子医嘱，请稍等!!'), '提示', 0 + 48);
      Exit;
    end;
    //皮试结果控制
    if v_psjgyx then
    begin
      Application.MessageBox(pchar('发现有皮试结果为阳性结果,不能继续收费,请联系开单医生'), '提示', 0 + 48);
      Exit;
    end;
  end;
  qry_fymx.First;
  while not qry_fymx.Eof do
  begin
    if not qry_fymx.FieldByName('sfbz').AsBoolean then
    begin
      qry_fymx.Edit;
      qry_fymx.FieldByName('ph').AsString := '';
      qry_fymx.Post;
    end;
    qry_fymx.Next;
  end;
  Result := True;
end;

procedure Tfrm_mzsf.proc_xcxmtosf(v_yfzdmc, v_fydm, v_cflb: string);
//字段名称,费用代码,处方类别
begin
  if v_cflb = '西药费' then
    Prv_cflb := 'MZ'
  else
    if v_cflb = '中草药' then
      Prv_cflb := 'MC'
    else
      if v_cflb = '中成药' then
        Prv_cflb := 'MN'
      else
        Prv_cflb := 'MO';

  if v_yfzdmc = '' then
  begin
    mz_sffs := 2; //门诊所有收费按费用项目收费
    cfn.Enabled := False;
    cfy.Enabled := False;
    cfh.Enabled := False;
    czks.Enabled := true;
    kdks.Enabled := true;
    czys.Enabled := true;
    kdys.Enabled := true;
    e_sfcs.Enabled := true;
    czys.SetFocus;
  end
  else
  begin
    frm_func.get_czyf(v_yfzdmc);
    if pub_mzxyfqybz and pub_mzsfhjbz then //收费室与药房同时划价
    begin
      if (v_fydm = pub_mzxyfdm) or (v_fydm = pub_chenydm) or (v_fydm = pub_chaoydm) or
        (v_fydm = pub_mzwsclfydm) then
      begin
        mz_sffs := 1; //药房划完价的处方收费;
        cfn.Enabled := true;
        cfy.Enabled := true;
        cfh.Enabled := true;
        czks.Enabled := False;
        kdks.Enabled := False;
        czys.Enabled := False;
        e_sfcs.Enabled := False;
        cfh.SetFocus;
      end
      else
      begin
        if (pub_hjyfksdm <> '') then
        begin
          if (Trim(pub_hjyfksdm) = '') then
          begin
            Application.MessageBox('错误提示:该科室未设置划价药房,不能进行划价!', '错误提示', 16);
            Abort;
          end;
          if v_yfzdmc = 'chyf' then
            mz_sffs := 3 //收费处中药划价处方收费;
          else
            mz_sffs := 4; //收费处其它划价处方收费;
          dbgrid_fymx.Visible := False;
          mz_czks := pub_hjyfksdm;
          mz_czksmc := pub_hjyfksmc;
          czks.Text := mz_czksmc;
          proc_set_cfhj(Prv_cflb); //设置门诊收据处划处方信息
          cfn.Enabled := False;
          cfy.Enabled := False;
          cfh.Enabled := False;
          kdks.Enabled := true;
          kdys.Enabled := true;
          kdys.SetFocus;
        end;
      end;
    end
    else
    begin
      if pub_mzxyfqybz and (not pub_mzsfhjbz) then //收费室不划价,药房划价
      begin
        mz_sffs := 1; //药房划完价处方收费;
        cfn.Enabled := true;
        cfy.Enabled := true;
        cfh.Enabled := true;
        czks.Enabled := False;
        kdks.Enabled := False;
        czys.Enabled := False;
        e_sfcs.Enabled := False;
        cfh.SetFocus;
      end
      else
      begin
        Application.MessageBox('选择相应的收费项目!', '提示', 0 + 48);
        editsflb.SelectAll;
        editsflb.SetFocus;
      end;
    end;
  end;
end;

procedure Tfrm_mzsf.proc_xcyptomx;
var
  ypdm: string;
  yplb: string;
begin
  if (qry_mx.State = dsedit) or (qry_mx.State = dsinsert) then
    qry_mx.Cancel;
  if sp_yp.FieldByName('xzpz').asstring = '1' then
  begin
    Application.MessageBox('您的职称无权使用此药品!', '注意', MB_OK + MB_ICONEXCLAMATION);
    dbgridypmx.Visible := False;
    Exit;
  end;
  if (sp_yp['kcsl'] = 0) and (not pub_zyhjbz) then
  begin
    Application.MessageBox('该药品已无库存，不能划价!', '注意', 16);
    dbgrid1.SetFocus;
    dbgridypmx.Visible := False;
    Exit;
  end;
  if sp_yp.FieldByName('lsj').AsFloat = 0 then
  begin
    Application.MessageBox('药品价格有误，不能划价!', '注意', 16);
    dbgridypmx.Visible := False;
    Exit;
  end;
  ypdm := sp_yp['ypdm'];
  if qry_mx.Locate('ypdm', ypdm, []) then
  begin
    Application.MessageBox('已有该药品，不能重复输入!', '注意', 16);
    dbgridypmx.Visible := False;
    qry_mx.Append;
    DBGrid1.SelectedIndex := 0;
    Exit;
  end;
  if Trim(sp_yp.FieldByName('bdxm').asstring) <> '' then //处理溶媒、棉签等的绑定提示
  begin
    messagedlg('     注意：' + #13 + #13 + #13 + '该药品请注意加收' +
      Trim(sp_yp.FieldByName('bdxm').asstring), mtwarning, [mbok], 0);
  end;
  sp_yp.Filtered := False;
  sp_yp.Filter := 'ypdm=' + '''' + ypdm + '''';
  sp_yp.Filtered := true;
  qry_mx.Append;
  qry_mx['ypmc'] := sp_yp['ypmc'];
  qry_mx['cfbh'] := mz_cfbh;
  qry_mx['ypdm'] := ypdm;
  if Prv_IsUseXDCF then //使用协定处方，则使用协定处方数量
    qry_mx['ypsl'] := Prv_SL_XDCF
  else
    qry_mx['ypsl'] := 0;
  qry_mx['ypdw'] := sp_yp['ypdw'];
  qry_mx['ypdwid'] := sp_yp['dwid'];
  qry_mx['ypbzbl'] := sp_yp['zhl'];
  qry_mx['ypdj'] := sp_yp['lsj'];
  qry_mx['cfjl'] := 1;
  yplb := '';
  if sp_yp['sfjsyp'] then
    yplb := yplb + ',精神';
  if sp_yp['sfdmyp'] then
    yplb := yplb + ',麻醉';
  if sp_yp['sfgzyp'] then
    yplb := yplb + ',贵重';
  if sp_yp['sfzfyp'] then
    yplb := yplb + ',自费';
  delete(yplb, 1, 1);
  qry_mx['yplb'] := yplb;
  qry_mx.Post;

  dbgridypmx.Visible := False;
  dbgrid1.SetFocus;
  DBGrid1.SelectedIndex := 3;
end;

procedure TFrm_mzsf.proc_savecf;
begin
  if Trim(mz_tmh) = '' then
  begin
    Application.MessageBox('必须输入门诊号!', '注意', 16);
    panel2.Enabled := true;
    mzh.SetFocus;
    abort;
  end;
  if mz_kdks = '' then
  begin
    Application.MessageBox('必须输入处方科室!', '注意', 16);
    panel1.Enabled := true;
    kdks.Enabled := true;
    kdks.SetFocus;
    abort;
  end;
  if mz_kdys = '' then
  begin
    Application.MessageBox('必须输入处方医生!', '注意', 16);
    panel1.Enabled := true;
    kdys.Enabled := true;
    kdys.SetFocus;
    abort;
  end;
  if mz_sffs = 3 then //中药输入处方付数。
  begin
    Application.CreateForm(Tfrm_cfjl, frm_cfjl);
    try
      frm_cfjl.ShowModal;
    finally
      frm_cfjl.free;
    end;
  end;
  qry_zb.Edit;
  qry_zb['tmh'] := mz_tmh;
  qry_zb['kdks'] := mz_kdks;
  qry_zb['ysdm'] := mz_kdys;
  qry_zb['brxm'] := mz_brxm;
  qry_zb['cfjl'] := mz_cfjl;
  qry_zb.Post;
  proc_sumcfje; //计算处方金额 ,并校验处方。
  mz_cfjl := 1; //计算完成后还原处方数量。
  dm_data.ado_mydata.BeginTrans;
  try
    qry_zb.UpdateBatch;
    qry_mx.UpdateBatch;
    dm_data.ado_mydata.CommitTrans;
  except
    Application.MessageBox('数据保存失败！', '提示', 16);
    dm_data.ado_mydata.RollbackTrans;
    abort;
  end;
  qry_zb.Close;
  qry_mx.Close;
end;

procedure Tfrm_mzsf.proc_set_cfhj(v_cflb: string);
begin
  sp_cfbh.Close;
  sp_cfbh.ExecProc;
  mz_cfbh := sp_cfbh.Parameters.parambyname('@cfbh').value;
  qry_zb.Close;
  //  qry_zb.Parameters.ParamByName('cfbh').value := mz_cfbh;
  qry_zb.open;
  qry_mx.Close;
  //  qry_mx.Parameters.ParamByName('cfbh').value := mz_cfbh;
  qry_mx.open;
  qry_zb.Append;
  qry_zb['cfbh'] := mz_cfbh;
  qry_zb['hjrq'] := frm_func.curr_date();
  qry_zb['hjczy'] := pub_czydm;
  qry_zb['hjks'] := pub_ksdm;
  qry_zb['czks'] := pub_hjyfksdm;
  qry_zb['cybz'] := False;
  qry_zb['hybz'] := False;
  qry_zb['sfbz'] := False;
  qry_zb['fybz'] := False;
  qry_zb['tybz'] := False;
  qry_zb['cfzje'] := 0.00;
  qry_zb['sszje'] := 0.00;
  qry_zb['cflb'] := v_cflb;
  qry_zb['cfjl'] := 1;
  qry_zb.Post;
  cfn.Text := copy(mz_cfbh, 1, 4);
  cfy.Text := copy(mz_cfbh, 5, 2);
  cfh.Text := copy(mz_cfbh, 7, 6);
end;

procedure Tfrm_mzsf.proc_get_sjbh;
var
  v_sysl, v_sjbh, v_sjzh: string;
  S: string;
begin
  if pub_mzsf_bl then //是否补录收据
    S := frm_func.func_get_sjbh(pub_czydm, pub_mzsjlb, '2')
  else
    S := frm_func.func_get_sjbh(pub_czydm, pub_mzsjlb, '1');

  if S = '' then
  begin
    MessageDlg('收据已用完，请启用新收据！', mtWarning, [mbOK], 0);
    abort;
  end;
  v_sysl := Copy(S, Pos('S', S) + 1, Pos('Q', S) - Pos('S', S) - 2);
  v_sjbh := Copy(S, Pos('C', S) + 1, Pos('S', S) - Pos('C', S) - 2);
  v_sjzh := Copy(S, Pos('Z', S) + 1, Length(S));
  if v_sysl = '0' then
  begin
    edt_sjsysl.Text := '剩余:0张';
    MessageDlg('收据已用完，请启用新收据！', mtWarning, [mbOK], 0);
    abort;
  end
  else
  begin
    edt_sjsysl.Text := '剩余:' + v_sysl + '张';
    mz_sjbh := formatex(StrToInt(v_sjbh), 9);
    sjbhzh_real := StrToInt(v_sjzh); //获得实际的收据止号
    sjbh.Text := mz_sjbh;
  end;
end;

procedure Tfrm_mzsf.tj_sfzk(zt: char);
begin
  if zt = '0' then
  begin
    sp_srzk.Close;
    sp_srzk.parameters.ParamByName('@czydm').value := pub_czydm;
    sp_srzk.open;
    tfje := sp_srzk['tfje'];
    tfrc := sp_srzk['tfrc'];
    zfje := sp_srzk['zfje'];
    zfrc := sp_srzk['zfrc'];
    sjje := sp_srzk['sjje'];
    sfje := sp_srzk['srje'];
    sfrc := sp_srzk['srrc'];
  end
  else
  begin
    sfje := sfje + mz_ssje;
    sjje := sjje + mz_ssje;
    sfrc := sfrc + 1;
  end;
  edit1.Text := floattostr(sfje);
  edit2.Text := inttostr(sfrc);
  edit3.Text := floattostr(tfje);
  edit4.Text := inttostr(tfrc);
  edit5.Text := inttostr(zfrc);
  edit6.Text := floattostr(zfje);
  edit7.Text := floattostr(sjje);
end;

procedure Tfrm_mzsf.g_emptKeyPress(Sender: TObject; var Key: Char);
begin
  if ((key = #27) and (g_empt.Tag = 1)) then
  begin
    g_empt.Visible := False;
    editsflb.SelectAll;
    editsflb.SetFocus;
  end;
  if ((key = #27) and (g_empt.Tag = 2)) then
  begin
    g_empt.Visible := False;
    kdys.SelectAll;
    kdys.SetFocus;
  end;
  if ((key = #27) and (g_empt.Tag = 3)) then
  begin
    g_empt.Visible := False;
    czys.SelectAll;
    czys.SetFocus;
  end;
  if ((key = #27) and (g_empt.Tag = 4)) then
  begin
    g_empt.Visible := False;
    czks.SelectAll;
    czks.SetFocus;
  end;
  if ((key = #27) and (g_empt.Tag = 5)) then
  begin
    g_empt.Visible := False;
    kdks.SelectAll;
    kdks.SetFocus;
  end;

  if ((key = #13) and (g_empt.Tag = 1)) then
  begin
    Proc_fydm_select;
  end;
  if ((key = #13) and (g_empt.Tag = 2)) then
  begin
    kdys.text := dm_data.qry_pub['mc'];
    mz_kdys := dm_data.qry_pub['dm'];
    mz_kdysmc := dm_data.qry_pub['mc'];
    mz_kdyspym := dm_data.qry_pub['pym'];
    mz_kdks := dm_data.qry_pub['ksdm'];
    mz_kdksmc := dm_data.qry_pub['ksmc'];
    kdks.Text := mz_kdksmc;
    if g_empt.Tag = 2 then
    begin
      if pub_yydm = '0015' then
      begin
        if dm_data.qry_pub['ysbz'] = False then
        begin
          Application.MessageBox('处方的开单应该为医生!', '提示', 0 + 16);
          kdys.SelectAll;
          kdys.SetFocus;
          abort;
        end;
      end
      else
      begin
        if ((mz_sffs = 4) or (mz_sffs = 3)) and (dm_data.qry_pub['ysbz'] = False) then
        begin
          Application.MessageBox('处方的开单应该为医生!', '提示', 0 + 16);
          kdys.SelectAll;
          kdys.SetFocus;
          abort;
        end;
      end;
    end;
    if (mz_sffs = 4) or (mz_sffs = 3) then
    begin
      dbgrid1.Enabled := true;
      dbgrid1.Visible := true;
      panel1.Enabled := False;
      B_save.Enabled := False;
      b_cancel.Enabled := False;
      dbgrid1.SetFocus;
      dbgrid1.SelectedIndex := 0;
    end
    else
      if mz_cfbh = '' then
      begin
        if not e_sfcs.Enabled then
          e_sfcs.Enabled := true;
        e_sfcs.SetFocus
      end;
  end;
  if ((key = #13) and (g_empt.Tag = 3)) then
  begin
    czys.text := dm_data.qry_pub['mc'];
    frm_mzsf.mz_czys := dm_data.qry_pub['dm'];
    frm_mzsf.mz_czysmc := dm_data.qry_pub['mc'];
    frm_mzsf.mz_czyspym := dm_data.qry_pub['pym'];
    if sfyksgs = False then
    begin
      mz_czks := dm_data.qry_pub['ksdm'];
      mz_czksmc := dm_data.qry_pub['ksmc'];
      czks.Text := mz_czksmc;
    end;
    kdys.SetFocus;
  end;
  if ((key = #13) and (g_empt.Tag = 4)) then
  begin
    czks.Text := dm_data.qry_pub['mc'];
    frm_mzsf.mz_czks := dm_data.qry_pub['dm'];
    frm_mzsf.mz_czksmc := dm_data.qry_pub['mc'];
    frm_mzsf.mz_czkspym := dm_data.qry_pub['pym'];
    kdks.SetFocus;
  end;
  if ((key = #13) and (g_empt.Tag = 5)) then
  begin
    kdks.Text := dm_data.qry_pub['mc'];
    frm_mzsf.mz_kdks := dm_data.qry_pub['dm'];
    frm_mzsf.mz_kdksmc := dm_data.qry_pub['mc'];
    frm_mzsf.mz_kdkspym := dm_data.qry_pub['pym'];
    if (mz_sffs = 4) or (mz_sffs = 3) then
    begin
      dbgrid1.Enabled := true;
      dbgrid1.Visible := true;
      panel1.Enabled := False;
      B_save.Enabled := False;
      b_cancel.Enabled := False;
      dbgrid1.SetFocus;
    end
    else
      e_sfcs.SetFocus;
  end;
end;

procedure Tfrm_mzsf.jkkd_hd;
begin
  try
    mzh.Text := Trim(Auto_CardInfo.CardNo);
    pub_bdkh := Auto_CardInfo.CardNo;
    panel1.enabled := true;
    brxm.SetFocus;
    //    mzhExit(Self);
  except
    Application.MessageBox('健康卡号读取失败，请重新操作！', '系统提示',
      MB_OK + MB_ICONWARNING);
    mzh.Enabled := True;
    mzh.SetFocus;
  end;
end;

procedure Tfrm_mzsf.g_emptExit(Sender: TObject);
begin
  g_empt.Columns[2].Visible := False;
  g_empt.Visible := False;
end;

procedure Tfrm_mzsf.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  v_mbbh: Integer;
begin
  if v_fpdy_ls then
  begin
    Application.MessageBox('正在打印票据,请稍等...', '系统提示', MB_OK + MB_ICONEXCLAMATION);
    Exit;
  end;
  if Key = VK_ESCAPE then //ESC键处理
  begin
    if (dbgrid_fymx.Focused) and (qry_fymx.Active) then
    begin
      if qry_fymx.RecordCount >= 1 then
      begin
        qry_fymx.Delete;
        proc_kyhjs;
      end;
      if panel1.Enabled then
        editsflb.SetFocus;
    end
    else
      if (bt_tc.Enabled) then
      begin
        if Application.MessageBox('要退出程序吗?', '提示', 4 + 256 + 48) = 6 then
          Close
      end
      else
        if (b_cancel.Enabled) and (not g_empt.Visible) and (mz_zje = 0) then
          b_cancel.Click
        else
          if (qry_mx.Active) and (dbgrid1.Visible) and (not DBGridypmx.Visible) and (not dbgrid5.Visible) then
          begin
            if Application.MessageBox('放弃当前处方吗?', '提示', 4 + 0 + 48) = 6 then
            begin
              qry_zb.Close;
              qry_mx.Close;
              dbgrid1.Visible := False;
              dbgrid1.Enabled := False;
              panel1.Enabled := true;
              B_save.Enabled := False;
              b_cancel.Enabled := true;
              editsflb.SetFocus;
            end;
          end
          else
            if (dbgrid5.Visible) then
            begin
              dbgrid1.SelectedIndex := 0;
              dbgrid5.Visible := False;
            end
            else
              if (panel1.Enabled) and (mz_zje > 0) then
              begin
                if Application.MessageBox('提示:是否放弃已输入收费项目!', '提示', MB_YESNO + MB_ICONQUESTION) = IDYES then
                  b_cancel.Click;
              end;
  end;
  //  if key = VK_F1 then
  //    Frm_func.showHelpHtml('MZSFA01');

  if key = VK_F5 then
    Get_frm_calc; //F5处理

  //F6处理
  if key = VK_F6 then
  begin
    if (Trim(zje.caption) > '0') and (checkbox2.Checked) and mzsfsfsyyy then //f6
    begin
      yybjUnit.Yybj(Trim(formatfloat('0.00', strtofloat(zje.caption) + strtofloat(e_je.Text))), p_func_yybj.pay);
    end
    else
      if (Trim(zje.caption) = '0') and (checkbox2.Checked) and mzsfsfsyyy then
      begin
        yybjUnit.Yybj(Trim(formatfloat('0.00', strtofloat(e_je.Text))), p_func_yybj.pay);
      end;
  end;

  //F7处理
  if key = VK_F7 then // f7
    if mzsfsffylb then
      proc_fylb(1);

  //F3处理
  if (key = VK_F3) and (qry_mx.Active) and (dbgrid1.Visible) then //f3
  begin
    dbgrid_fymx.Visible := true;
    if qry_mx.RecordCount = 0 then
    begin
      Application.MessageBox('该处方没有数据将放弃!', '提示', 0 + 48);
      qry_zb.Close;
      qry_mx.Close;
      dbgrid1.Visible := False;
      dbgrid1.Enabled := False;
      panel1.Enabled := true;
      editsflb.SelectAll;
      editsflb.SetFocus;
      b_cancel.Enabled := true;
      mz_cfbh := '';
    end
    else
    begin
      panel1.Enabled := true;
      dbgrid1.Visible := False;
      dbgrid1.Enabled := False;
      B_save.Enabled := true;
      b_cancel.Enabled := true;
      proc_fymx; //保存处方
      editsflb.SetFocus;
    end;
  end;

  if (key = VK_F2) and (panel2.Enabled = true) then //F2处理
  begin
    try
{$IFDEF sys_hygl}
      frm_main.fwzxb07.Click;
{$ELSE}
//      frm_main.MZSFB01.Click;
{$ENDIF}
    finally
      mz_ssje := 0;
      sfrc := sfrc - 1;
      frm_mzsf.tj_sfzk('1');
      frm_mzsf.proc_get_sjbh;
    end;
  end;

  if (key = VK_F4) then //F4处理
  begin
    if Prv_Ljzje_zf <= 0 then
      Application.MessageBox('提示:累计金额为零,不用交款!', '提示', MB_ICONINFORMATION + MB_OK)
    else
      proc_keydown_F4;
  end;

  if ((key = 38) or (key = 40)) and (qry_mx.State = dsedit) then //上下移动光标键
    qry_mx.Cancel;

  if (key = VK_F8) and (qry_mx.Active) and (mz_cfbh <> '') then //F8协定处方
  begin
    v_mbbh := Func_XDCF_Xz(pub_czydm, mz_czks, 0);
    if v_mbbh > 0 then
      Proc_AddMB(v_mbbh);
  end;

  if (key = VK_F10) and b_save.Enabled then //F10保存
    b_save.Click;
end;

procedure Tfrm_mzsf.czksKeyPress(Sender: TObject; var Key: Char);
var
  s: string;
begin
  if key = #13 then
  begin
    s := '%' + Trim(czks.text) + '%';
    with dm_data.qry_pub do
    begin
      Close;
      SQL.Clear;
      SQL.add(' select dm,mc,pym from sys_ksdm ');
      SQL.Add(' where pym like ' + '''' + S + '''');
      SQL.Add(' or  dm like ' + '''' + S + '''');
      SQL.Add(' or  mc like ' + '''' + S + '''');
      open;
    end;
    if dm_data.qry_pub.RecordCount = 0 then
    begin
      Application.MessageBox('科室代码输入错误！', '', 16);
      czks.SelectAll;
      czks.SetFocus;
    end;
    if dm_data.qry_pub.RecordCount > 1 then
    begin
      g_empt.Left := 400;
      g_empt.Top := 115;
      g_empt.Columns[0].fieldname := 'mc';
      g_empt.Columns[0].title.Caption := '科室';
      g_empt.Columns[1].fieldname := 'pym';
      g_empt.Columns[1].title.Caption := '拼音码';
      g_empt.Tag := 4; // 2表示GRID显示检查科室
      g_empt.Show;
      g_empt.SetFocus;
    end;
    if dm_data.qry_pub.RecordCount = 1 then
    begin
      czks.Text := dm_data.qry_pub['mc'];
      frm_mzsf.mz_czks := dm_data.qry_pub['dm'];
      frm_mzsf.mz_czksmc := dm_data.qry_pub['mc'];
      frm_mzsf.mz_czkspym := dm_data.qry_pub['pym'];
      kdks.SetFocus;
    end;

  end;
  if ((key = ' ') and (frm_mzsf.mz_czksmc <> '')) then
  begin
    key := #0;
    czks.Text := frm_mzsf.mz_czksmc;
    kdks.SetFocus;
  end;
end;

procedure Tfrm_mzsf.czysKeyPress(Sender: TObject; var Key: Char);
var
  s: string;
begin
  if key = #13 then
  begin
    if Trim(czys.text) = '' then
    begin
      Application.MessageBox('请输入处置医生!', '系统提示', MB_OK + MB_ICONSTOP);
      czys.SetFocus;
      abort;
    end;
    s := '%' + uppercase(Trim(czys.text)) + '%';
    dm_data.qry_pub.Close;
    dm_data.qry_pub.SQL.Clear;
    dm_data.qry_pub.SQL.Add('exec mzsf_cx_yslist ' + #39 + S + #39 + ',' + #39 + 'czys' + #39);
    dm_data.qry_pub.open;
    if dm_data.qry_pub.RecordCount = 0 then
    begin
      Application.MessageBox('医师代码输入错误！', '', 16);
      czys.SelectAll;
      czys.SetFocus;
    end;
    if dm_data.qry_pub.RecordCount > 1 then
    begin
      g_empt.Left := czys.Left;
      g_empt.Top := czys.Parent.Top + czys.Top + czys.Height + 2;
      g_empt.Columns[0].fieldname := 'mc';
      g_empt.Columns[0].title.Caption := '姓名';
      g_empt.Columns[1].fieldname := 'ksmc';
      g_empt.width := czys.Width + 20;
      g_empt.Columns[0].Width := 60;
      g_empt.Columns[1].Width := 120;
      g_empt.Columns[1].title.Caption := '科室/专业';
      g_empt.Tag := 3; // 3表示GRID显示医师
      g_empt.BringToFront;
      g_empt.Show;
      g_empt.SetFocus;
    end;
    if dm_data.qry_pub.RecordCount = 1 then
    begin
      czys.text := dm_data.qry_pub['mc'];
      frm_mzsf.mz_czys := dm_data.qry_pub['dm'];
      frm_mzsf.mz_czysmc := dm_data.qry_pub['mc'];
      frm_mzsf.mz_czyspym := dm_data.qry_pub['pym'];
      if sfyksgs = False then
      begin
        mz_czks := dm_data.qry_pub['ksdm'];
        mz_czksmc := dm_data.qry_pub['ksmc'];
        czks.Text := mz_czksmc;
      end;
      kdys.SetFocus;
    end;
  end;
  if ((key = ' ') and (frm_mzsf.mz_czysmc <> '')) then
  begin
    key := #0;
    czys.Text := mz_czysmc;
    kdys.SetFocus;
  end;
end;

procedure Tfrm_mzsf.kdksKeyPress(Sender: TObject; var Key: Char);
var
  s: string;
begin
  if key = #13 then
  begin
    s := '%' + Trim(kdks.text) + '%';
    with dm_data.qry_pub do
    begin
      Close;
      SQL.Clear;
      SQL.add(' select dm,mc,pym from sys_ksdm ');
      SQL.Add(' where pym like ' + '''' + S + '''');
      SQL.Add(' or  dm like ' + '''' + S + '''');
      SQL.Add(' or  mc like ' + '''' + S + '''');
      open;
    end;
    if dm_data.qry_pub.RecordCount = 0 then
    begin
      Application.MessageBox('科室代码输入错误！', '', 16);
      kdks.SelectAll;
      kdks.SetFocus;
    end;
    if dm_data.qry_pub.RecordCount > 1 then
    begin
      g_empt.Left := 124;
      g_empt.Top := 140;
      g_empt.Columns[0].fieldname := 'mc';
      g_empt.Columns[0].title.Caption := '科室';
      g_empt.Columns[1].fieldname := 'pym';
      g_empt.Columns[1].title.Caption := '拼音码';
      g_empt.Tag := 5; // 4表示GRID显示开单科室
      g_empt.Show;
      g_empt.SetFocus;
    end;
    if dm_data.qry_pub.RecordCount = 1 then
    begin
      kdks.Text := dm_data.qry_pub['mc'];
      frm_mzsf.mz_kdks := dm_data.qry_pub['dm'];
      frm_mzsf.mz_kdksmc := dm_data.qry_pub['mc'];
      frm_mzsf.mz_kdkspym := dm_data.qry_pub['pym'];
      if (mz_sffs = 4) or (mz_sffs = 3) then
      begin
        dbgrid1.Enabled := true;
        dbgrid1.Visible := true;
        panel1.Enabled := False;
        B_save.Enabled := False;
        b_cancel.Enabled := False;
        dbgrid1.SetFocus;
      end
      else
        e_sfcs.SetFocus;
    end;

  end;
  if ((key = ' ') and (frm_mzsf.mz_czksmc <> '')) then
  begin
    key := #0;
    kdks.Text := mz_kdksmc;
    if mz_sffs = 4 then
    begin
      dbgrid1.Enabled := true;
      dbgrid1.Visible := true;
      panel1.Enabled := False;
      B_save.Enabled := False;
      b_cancel.Enabled := False;
      dbgrid1.SetFocus;
    end
    else
      e_sfcs.SetFocus;
  end;
end;

procedure Tfrm_mzsf.cfhKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  s: string;
begin
  if key = 13 then
  begin
    if Trim(cfh.text) <> '' then
    begin
      try
        s := formatex(strtoint(cfh.text), 6);
        cfh.Text := s;
      except
        cfh.text := '';
        cfh.SelectAll;
        cfh.SetFocus;
        abort;
      end;
      mz_cfbh := Trim(cfn.text) + Trim(cfy.Text) + s;
      //检查处方是否已经在费用列表
      if Func_IsExists_cfbh(Trim(mz_cfbh)) then
      begin
        Application.MessageBox('错误提示:该处方已经在费用列表!', '错误提示', 16);
        abort;
      end;
      with sp_se_cfje do
      begin
        active := False;
        parameters.ParamByName('@mz_cfbh').value := mz_cfbh;
        parameters.ParamByName('@mz_sffs').value := mz_sffs;
        parameters.ParamByName('@cflb').value := Prv_cflb;
        open;
      end;
      if sp_se_cfje['zt'] = '1' then
      begin
        mz_cfje := sp_se_cfje['cfje'];

        //        if mzsfsfsswr then //门诊收费是否四舍五入
        //          mz_sfbz := realtomoney1(mz_cfje)
        //        else
        //          if pub_sf5or1 then
        //            mz_sfbz := func_CastMoneyTo5(realtomoney1(mz_cfje))
        //          else
        //          begin
        //            mz_sfbz := realtomoney2(mz_cfje);
        //          end;
        mz_sfbz := realtomoney2(mz_cfje);
        mz_kdys := sp_se_cfje['kdys'];
        mz_kdysmc := sp_se_cfje['kdysmc'];
        mz_kdks := sp_se_cfje['kdks'];
        mz_kdksmc := sp_se_cfje['kdksmc'];
        mz_czks := sp_se_cfje['czks'];
        mz_czksmc := sp_se_cfje['czksmc'];
        e_sfcs.text := '1';
        mz_fysl := 1;
        e_je.Text := floattostr(mz_cfje);
        kdys.Text := mz_kdysmc;
        kdks.Text := mz_kdksmc;
        czks.Text := mz_czksmc;
        B_save.Enabled := true;
        proc_fymx; //写入费用明细临时
        if checkbox2.Checked and mzsfsfsyyy then
        begin
          if StrToFloat(Trim(zje1.Caption)) > 0 then
          begin
            try
              if pub_yydm <> '0046' then //罗江县人民医院此处不呼叫
              begin
                yybjUnit.yybj(zje1.Caption, p_func_yybj.AllInCost);
              end;
            except
            end;
          end;
        end;
        editsflb.SetFocus;
      end
      else
        if sp_se_cfje['zt'] = '2' then
        begin
          Application.MessageBox('处方类别同费用对应处方类别不匹配!', '提示', 0 + 16);
          cfh.text := '';
          cfh.SelectAll;
          cfh.SetFocus;
        end
        else
        begin
          Application.MessageBox('无此处方或者处方已收费!', '提示', 0 + 16);
          cfh.text := '';
          cfh.SelectAll;
          cfh.SetFocus;
        end;
    end;
  end;
end;

procedure Tfrm_mzsf.save_xm_yz;
begin
  if (Trim(brxm.text) = '') or (mz_brxm = '') then
  begin
    Application.MessageBox('请输入姓名!', '提示', 48);
    brxm.Enabled := true;
    brxm.SetFocus;
    abort;
  end;
  if mz_fydm = '' then
  begin
    Application.MessageBox('请输入费用项目!', '提示', 48);
    editsflb.SetFocus;
    abort;
  end;
  if (Trim(czks.text) = '') or (mz_czks = '') then
  begin
    Application.MessageBox('请输入处治科室!', '提示', 48);
    czks.SetFocus;
    abort;
  end;
  if (Trim(czys.text) = '') or (mz_czys = '') then
  begin
    Application.MessageBox('请输入处治医生!', '提示', 48);
    czys.SetFocus;
    abort;
  end;
  if (Trim(kdys.text) = '') or (mz_kdys = '') then
  begin
    Application.MessageBox('请输入开单医生!', '提示', 48);
    kdys.SetFocus;
    abort;
  end;
  if (Trim(kdks.text) = '') or (mz_kdks = '') then
  begin
    Application.MessageBox('请输入开单科室!', '提示', 48);
    kdks.SetFocus;
    abort;
  end;
  if mz_sfbz <= 0 then
  begin
    Application.MessageBox('收费金额不正确!', '提示', 48);
    e_je.SetFocus;
    abort;
  end;
end;

procedure Tfrm_mzsf.save_cf_yz;
begin
  if mz_sfbz <= 0 then
  begin
    Application.MessageBox('请输入处方号!', '提示', 48);
    cfn.Enabled := true;
    cfy.Enabled := true;
    cfh.Enabled := true;
    cfh.SetFocus;
    abort;
  end;
  if mz_fydm = '' then
  begin
    Application.MessageBox('请输入费用项目!', '提示', 48);
    editsflb.SetFocus;
    abort;
  end;
end;

procedure Tfrm_mzsf.FormShow(Sender: TObject);
var
  v_nian, v_yue, v_ri: Word;
  v_error: string;
  v_IsOk: Boolean;
begin
  cache_pos := '0'; //商行pos状态
  Prv_Ljzje_fy := 0; //累计费用金额
  Prv_Ljzje_zf := 0; //累计未收现金金额
  mz_brxm_List := '';
  try
//    proc_get_xtkg_new;
  except
  end;

  lab_bdxx.Caption := '双击输入框可进行健康卡自动刷卡操作';
  lab_bdxx.Visible := false;
  Prv_hjsybzbz_mz := Copy(pub_hjsybz, con_hjsybz_begin_mz, 1) = '1'; //划价使用包装标志(西药与成药)
  Prv_hjsybzbz_mc := Copy(pub_hjsybz, con_hjsybz_begin_mc, 1) = '1'; //划价使用包装标志(草药)
  if not Pub_sjczksfzbz then //门诊收据收据开单科室分组方式
    Prv_sjfzfs_field := 'kdks'
  else //门诊收据收据处置科室分组方式
    Prv_sjfzfs_field := 'czks';
  Lab_bl.Visible := pub_mzsf_bl; //显示是否为补录
  //医保判断
  pub_is_zhsb := False;
  Pub_IsIni := False;
  b_sbhk.Visible := Pub_IsIni; //医保按扭
  pnl_sb.Visible := false;
  if not Pub_IsIni then
  begin
    b_sbhk.Visible := frm_mzsb.pub_jcsb_init; //门诊集成社保初始化
  end;
  //语音报价器函数处理
  v_IsOk := False;
  if mzsfsfsyyy then //门诊是否使用语音
  begin
    v_error := '';
    try
      v_IsOk := yybjUnit.func_ini_func_yy(v_error);
    except
      v_IsOk := False;
    end;
  end;
  CheckBox2.Visible := v_IsOk; //语音报价按扭
  CheckBox2.Checked := v_IsOk;
  qry_fydm.Open;
  qry_ksdm.Open;
  czyxm.Text := pub_czyxm;
  czydm.text := pub_czydm;
  mz_cfjl := 1;
  Prv_Exists_dzcf := False;
  mz_fylbsfbz := False;
  jy_ynzgkbz := False;
  if pub_tmhxsbz = False then
    mzh.PasswordChar := '*';
  decodedate(frm_func.curr_date, v_nian, v_yue, v_ri);
  cfn.Text := inttostr(v_nian);
  cfy.Text := formatex(v_yue, 2);
  e_bh1.Text := inttostr(v_nian);
  e_bh2.Text := formatex(v_yue, 2);
  lb_khy.caption := '';
  Prv_ShowCaption_kyh := False;
  with qry_srf do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select srf from sys_czy where dm=' + '''' + pub_czydm + '''');
    open;
    if RecordCount > 0 then
    begin
      brxm.ImeName := Trim(FieldByName('srf').AsString);
    end;
    Close;
  end;
  mzh.SetFocus;
  frm_mzsf.proc_get_sjbh;
  frm_mzsf.tj_sfzk('0');
  cb_fylj.Visible := pub_mzsfzjsk;
//  proc_pub_check_yfdm;
//  if pub_xyfckkqbz then
//  begin
//    frm_mzsf.Caption := frm_mzsf.Caption + '【西药房已绑定' + pub_xyfckppm + '号窗口】';
//  end;
  if (pub_yydm = '0244') or (pub_yydm = '0250') then
  begin
    if LoadbsjkDll then
    begin
      PAdvConnect_dy('001', '', '');
    end;
  end;
end;

procedure Tfrm_mzsf.kdysKeyPress(Sender: TObject; var Key: Char);
var
  s: string;
begin
  if key = #13 then
  begin
    if Trim(kdys.text) = '' then
    begin
      Application.MessageBox('请输入开单医生!', '系统提示', MB_OK + MB_ICONSTOP);
      kdys.SetFocus;
      abort;
    end;
    s := '%' + uppercase(Trim(kdys.text)) + '%';
    dm_data.qry_pub.Close;
    dm_data.qry_pub.SQL.Clear;
    dm_data.qry_pub.SQL.Add('exec mzsf_cx_yslist ' + #39 + S + #39 + ',' + #39 + 'kdys' + #39);
    dm_data.qry_pub.open;
    if dm_data.qry_pub.RecordCount = 0 then
    begin
      Application.MessageBox('医师代码输入错误！', '', 16);
      kdys.SelectAll;
      kdys.SetFocus;
    end;

    if dm_data.qry_pub.RecordCount > 1 then
    begin
      g_empt.Left := kdys.Left;
      g_empt.Top := kdys.Parent.Top + kdys.Top + kdys.Height + 3;
      g_empt.Columns[0].fieldname := 'mc';
      g_empt.Columns[0].title.Caption := '姓名';
      g_empt.Columns[1].fieldname := 'ksmc';
      g_empt.Columns[1].title.Caption := '科室/专业';
      g_empt.width := kdys.Width + 20;
      g_empt.Columns[0].Width := 60;
      g_empt.Columns[1].Width := 120;
      g_empt.Tag := 2; // 2表示GRID显示开单医师
      g_empt.BringToFront;
      g_empt.Show;
      g_empt.SetFocus;
    end
    else
      if dm_data.qry_pub.RecordCount = 1 then
      begin
        kdys.text := dm_data.qry_pub['mc'];
        mz_kdys := dm_data.qry_pub['dm'];
        mz_kdysmc := dm_data.qry_pub['mc'];
        mz_kdyspym := dm_data.qry_pub['pym'];
        mz_kdks := dm_data.qry_pub['ksdm'];
        mz_kdksmc := dm_data.qry_pub['ksmc'];
        kdks.Text := mz_kdksmc;
        if pub_yydm = '0015' then
        begin
          if dm_data.qry_pub['ysbz'] = False then
          begin
            Application.MessageBox('处方的开单应该为医生!', '提示', 0 + 16);
            kdys.SelectAll;
            kdys.SetFocus;
            abort;
          end;
        end
        else
        begin
          if ((mz_sffs = 4) or (mz_sffs = 3)) and (dm_data.qry_pub['ysbz'] = False) then
          begin
            Application.MessageBox('处方的开单应该为医生!', '提示', 0 + 16);
            kdys.SelectAll;
            kdys.SetFocus;
            abort;
          end;
        end;
        if (mz_sffs = 4) or (mz_sffs = 3) then
        begin
          dbgrid1.Enabled := true;
          dbgrid1.Visible := true;
          panel1.Enabled := False;
          B_save.Enabled := False;
          b_cancel.Enabled := False;
          dbgrid1.SetFocus;
          dbgrid1.SelectedIndex := 0;
        end
        else
          if mz_cfbh = '' then
          begin
            if not e_sfcs.Enabled then
              e_sfcs.Enabled := true;
            e_sfcs.SetFocus
          end;
      end;
    if ((key = ' ') and (frm_mzsf.mz_czysmc <> '')) then
    begin
      key := #0;
      kdys.Text := mz_kdysmc;
      if (mz_sffs = 4) or (mz_sffs = 3) then
      begin
        dbgrid1.Enabled := true;
        dbgrid1.Visible := true;
        panel1.Enabled := False;
        B_save.Enabled := False;
        b_cancel.Enabled := False;
        dbgrid1.SetFocus;
        dbgrid1.SelectedIndex := 0;
      end
      else
        if not e_sfcs.Enabled then
          e_sfcs.Enabled := true;
      e_sfcs.SetFocus;
    end;
  end;
end;

procedure Tfrm_mzsf.b_saveClick(Sender: TObject);
var
  v_qthjfyje, v_qthjssje: Double;
  aRecHjje_hjbs: TRecHjje_hjbs;
begin
  B_save.Enabled := False; //必须第一步
  v_fpdy_ls := True;
  try
    if not proc_dzcfsh then
      Exit; //电子处方审核
    //江油市人民医院检查院内职工卡
    if jy_ynzgkbz then
    begin
      qry_fymx.DisableControls;
      qry_fymx.First;
      while not qry_fymx.Eof do
      begin
        if (qry_fymx.FieldByName('sfbz').AsBoolean)
          and ((qry_fymx.FieldByName('fydm').AsString = pub_xyfdm)
          or (qry_fymx.FieldByName('fydm').AsString = pub_mzxyfdm)
          or (qry_fymx.FieldByName('fydm').AsString = pub_chaoydm)
          or (qry_fymx.FieldByName('fydm').AsString = pub_chenydm)
          or (qry_fymx.FieldByName('fydm').AsString = pub_zychaoydm)
          or (qry_fymx.FieldByName('fydm').AsString = pub_zychenydm)
          or (qry_fymx.FieldByName('fydm').AsString = pub_mzwsclfydm)
          or (qry_fymx.FieldByName('fydm').AsString = pub_zywsclfydm)) then
        begin
          if Application.MessageBox('此就诊卡为院内职工卡，药品费用需自费！' +
            #13#10 + '选择【确认】：全部费用当自费处理；' + #13#10 +
            '选择【取消】：取消此次收费处理。', '系统提示', MB_OKCANCEL +
            MB_ICONQUESTION + MB_DEFBUTTON2) = IDOK then
          begin
            Pub_xjbz := True;
            mz_fylb := '01';
            break;
          end
          else
          begin
            B_save.Enabled := true;
            Exit;
          end;
        end;
        qry_fymx.Next;
      end;
      qry_fymx.EnableControls;
    end;
    aRecHjje_hjbs := func_get_fyje('fyzje');
    v_qthjfyje := aRecHjje_hjbs.Hjje;
    aRecHjje_hjbs := func_get_fyje('sszje');
    v_qthjssje := aRecHjje_hjbs.Hjje;

    if mz_tmh = '' then
    begin
      Application.MessageBox('错误提示:请先申请条码号后再收费!', '错误提示', 16);
      Exit;
    end;

    dm_data.qry_pub.Close;
    dm_data.qry_pub.SQL.clear;
    dm_data.qry_pub.SQL.text := 'select * from sys_jzzt';
    dm_data.qry_pub.open;
    if dm_data.qry_pub.FieldByName('jzzt').AsBoolean then
    begin
      Application.MessageBox('系统正在结转数据请稍候!', '提示', 0 + 48);
      Exit;
    end;

    if not qry_fymx.Active then
    begin
      Application.MessageBox('提示:请先收取费用!', '提示', MB_OK + MB_ICONINFORMATION);
      Exit;
    end;
    if (qry_fymx.RecordCount < 1) or (v_qthjfyje <= 0) then
    begin
      Application.MessageBox('提示:请先收取费用!', '提示', MB_OK + MB_ICONINFORMATION);
      Exit;
    end;
//    proc_pub_check_yfdm;
//    if pub_xyfckkqbz then
//    begin
//      frm_mzsf.Caption := frm_mzsf.Caption + '【西药房已绑定' + pub_xyfckppm + '号窗口】';
//    end;

    proc_save_fymx; //保存费用且打印票据

    if Pub_xjbz then //累计现金未收金额及病人姓名
    begin
      Prv_Ljzje_fy := Prv_Ljzje_fy + v_qthjfyje;
      if pub_is_zhsb and (Trim(edt_xjzf.Text) = '') then
        Prv_Ljzje_zf := Prv_Ljzje_zf + StrToFloat(Trim(edt_xjzf.Text))
      else
        Prv_Ljzje_zf := Prv_Ljzje_zf + v_qthjssje;
      if Pos(mz_brxm, mz_brxm_list) <= 0 then
      begin
        if mz_brxm_list = '' then
          mz_brxm_list := mz_brxm
        else
          mz_brxm_list := mz_brxm_list + ',' + mz_brxm;
      end;
      Prv_brxm_Up := mz_brxm; //保存上次保存病人姓名
    end
    else //非现金加上现金部分
    begin
      //Prv_Ljzje_fy := Prv_Ljzje_fy;
      /////////////20140922 ZT 添加//////////////
      if pub_is_zhsb and (Trim(edt_xjzf.Text) = '') then
        Prv_Ljzje_zf := mz_ssje - yskje + StrToFloat(Trim(edt_xjzf.Text))
      else
        Prv_Ljzje_zf := mz_ssje - yskje;
      if Pos(mz_brxm, mz_brxm_list) <= 0 then
      begin
        if mz_brxm_list = '' then
          mz_brxm_list := mz_brxm
        else
          mz_brxm_list := mz_brxm_list + ',' + mz_brxm;
      end;
    end;
    edt_ljje.Text := FormatFloat('0.00', Prv_Ljzje_zf);

    cache_pos := '1';
    cache_tmh := mz_tmh;
    cache_zfy := v_qthjssje;
    cache_xm := mz_brxm;
    cache_ph := mz_ph;

    if pub_mzsfzjsk then
      proc_keydown_F4;

    b_cancel.Click;
    frm_mzsf.tj_sfzk('1');
  finally
    v_fpdy_ls := False;
  end;
end;

procedure Tfrm_mzsf.b_sbhkClick(Sender: TObject);
begin
  //2013-11-13取消蓬溪射洪嵌入社保
  {
  if (pub_yydm = '0108') or (pub_yydm = '0022') then
  begin
    frm_sb_dl := Tfrm_sb_dl.Create(Self);
    try
      frm_sb_dl.pub_ybclfs := 0; //收费方式
      b_sbhk.Enabled := False;
      frm_sb_dl.Show;
    except
      frm_sb_dl.Free;
    end;
  end
  else
  begin

  end;
  }
  if func_pub_sbjs('读卡', mz_ph) then
  begin
    Pub_Is_zhsb := true;
    Pub_brxm_sb := pub_re.ybkxm;
    if pub_yydm <> '0028' then
      if (trim(brxm.text) <> '') and (pub_brxm_sb <> trim(brxm.text)) then
      begin
        Application.MessageBox('医保卡姓名与病人实际姓名不一致！', '注意', 16);
      end;
    if Pub_brxm_sb <> '' then
      brxm.Text := Pub_brxm_sb;
    if (pub_yydm = '0019') or (pub_yydm = '0050') then //0050苍溪卫生站
    begin
      mz_fylb := '03';
      mz_fylbmc := '社保病人';
    end;
    lb_khy.Caption := pub_re.zhye;
    brxm.SetFocus;
  end;
end;

procedure Tfrm_mzsf.b_cancelClick(Sender: TObject);
begin
  Prv_lookl := '';
  mz_cfbh := '';
  editsflb.text := '';
  LB_khy.Caption := '';
  Lab_last_xfje.Caption := '';
  zje.caption := '0.00';
  zje1.caption := '0.00';
  e_je.Text := '0.00';
  e_sfcs.Text := '1';
  mz_fylbmc := ''; //清空当前已处理完成的费用类别
  brlb.Text := '';
  czks.text := '';
  czys.text := '';
  kdks.text := '';
  kdYs.text := '';
  mz_tmh := '';
  mz_fydm := '';
  mz_czys := '';
  mz_kdys := '';
  mz_czks := '';
  mz_kdks := '';
  mz_zje := 0;
  yskje := 0;
  jy_ynzgkbz := False;
  lab_bdxx.Caption := '双击输入框可进行健康卡自动刷卡操作';
  Prv_Exists_dzcf := False;
//  Pub_Is_sbsf := False; //非社保收费标志
  Pub_xjbz := True; //现金标志
  Prv_ShowCaption_kyh := False;
  if b_sbhk.Visible then
    b_sbhk.Enabled := True;

//  if Assigned(frm_sb_dl) then
//    frm_sb_dl.Close;

  B_save.Enabled := False;
  editsflb.ReadOnly := Prv_Exists_dzcf;
  b_cancel.Enabled := False;
  bt_tc.Enabled := true;
  panel2.Enabled := true;
  mzh.SelectAll;
  mzh.SetFocus;
  panel1.Enabled := False;
  dbgrid_fymx.Visible := True;

  if (mz_sffs = 4) or (mz_sffs = 3) then
  begin
    qry_zb.Close;
    qry_mx.Close;
    dbgrid1.Visible := False;
    dbgrid1.Enabled := False;
  end;
end;

procedure Tfrm_mzsf.b_posClick(Sender: TObject);
var
  v_str, pos_zfy: string;
  t: Tstringlist;
  jo: ISuperObject;
  xmlstr: string;
  srMDoc: TXMLDocument;
  scMDoc: TXMLDocument;
  aNode, aNode1, aNode2: IXMLNode;
  res: ToutStr;
  sout: jyRes;
begin
  //动态库验证
  v_str := '';
  posh := '';
  //if cache_pos = '1' then
  begin
    Application.CreateForm(Tfrm_posxz, frm_posxz);
    try
      frm_posxz.ShowModal;
      posh := frm_posxz.posh;
    finally
      frm_posxz.Free;
    end;
    //农行动态库
    if posh <> '' then
    begin
      if posh = '2' then
      begin
        if not FileExists('softpos.dll') then
        begin
          v_str := v_str + '[softpos.dll]';
        end;
        if not FileExists('softpos2.dll') then
        begin
          v_str := v_str + '[softpos2.dll]';
        end;
        if not FileExists('softpos3.dll') then
        begin
          v_str := v_str + '[softpos3.dll]';
        end;
        if v_str <> '' then
        begin
          Application.MessageBox(pchar('缺少银行POS接口动态库!' + #13 + v_str), '系统提示', MB_OK + MB_ICONEXCLAMATION);
          Exit;
        end;
        sout := nh_hkxf(cache_zfy);
        if sout.zt = '00' then
        begin
          try
            DM_data.qry_pub.Close;
            DM_data.qry_pub.SQL.Text := 'select * from bkjk_fymx where 1=2';
            DM_data.qry_pub.Open;
            DM_data.qry_pub.Append;
            DM_data.qry_pub.FieldByName('zyh').Value := cache_tmh;
            DM_data.qry_pub.FieldByName('tmh').Value := '';
            DM_data.qry_pub.FieldByName('xm').Value := cache_xm;
            DM_data.qry_pub.FieldByName('zfy').Value := FloatToStr(sout.je);
            DM_data.qry_pub.FieldByName('sfczy').Value := pub_czydm;
            DM_data.qry_pub.FieldByName('kh').Value := sout.kh;
            DM_data.qry_pub.FieldByName('lsh').Value := sout.lsh;
            DM_data.qry_pub.FieldByName('sjbh').Value := '';
            DM_data.qry_pub.FieldByName('sjh').Value := '';
            DM_data.qry_pub.FieldByName('fylb').Value := '门诊收费';
            DM_data.qry_pub.FieldByName('zdbh').Value := '农行';
            DM_data.qry_pub.FieldByName('jyckh').Value := sout.yhzdh;
            DM_data.qry_pub.FieldByName('yhfylb').Value := '01';
            DM_data.qry_pub.Post;
            cache_pos := '0';
            DM_data.qry_pub.UpdateBatch(arAll);
          except
            on e: Exception do
            begin
//              addTransLog(e.message);
              try
                DM_data.qry_pub.Connection.Connected := True;
                DM_data.qry_pub.Post;
              except on e1: Exception do
                begin
//                  addTransLog(e1.message);
                end;
              end;
            end;
          end;
          //写入银医通缴费记录表
          DM_data.sp_pub.Close;
          DM_data.sp_pub.ProcedureName := 'yyt_in_zjjfjl';
          DM_data.sp_pub.Parameters.Refresh;
          DM_data.sp_pub.Parameters.ParamByName('@zzjfid').Value := 0;
          DM_data.sp_pub.Parameters.ParamByName('@jyxx').Value := sout.AsString;
          DM_data.sp_pub.Parameters.ParamByName('@jylb').Value := '收费';
          DM_data.sp_pub.ExecProc;
        end
        else
        begin
          Application.MessageBox(pchar('刷卡失败,' + sout.zt), '错误', MB_OK + MB_ICONSTOP);
        end;
      end
      else
        if posh = '1' then
        begin
          //建行动态库
          if not FileExists('LD_Reader.dll') then
          begin
            v_str := v_str + '[LD_Reader.dll]';
          end;
          if not FileExists('sldll.dll') then
          begin
            v_str := v_str + '[sldll.dll]';
          end;
          if not FileExists('Device.dll') then
          begin
            v_str := v_str + '[Device.dll]';
          end;
          if not FileExists('file.dll') then
          begin
            v_str := v_str + '[file.dll]';
          end;
          if not FileExists('safe.dll') then
          begin
            v_str := v_str + '[safe.dll]';
          end;
          if not FileExists('HookLib.dll') then
          begin
            v_str := v_str + '[HookLib.dll]';
          end;
          if v_str <> '' then
          begin
            Application.MessageBox(pchar('缺少银行POS接口动态库!' + #13 + v_str), '系统提示', MB_OK + MB_ICONEXCLAMATION);
            Exit;
          end;
          //  if Prv_Ljzje_zf <= 0 then
          //  begin
          //    Application.MessageBox( '需要支付的金额为0,请确认!', '系统提示', MB_OK + MB_ICONEXCLAMATION );
          //    Exit;
          //  end;
          application.CreateForm(Tfrm_pos, frm_pos);
          try
            frm_pos.pos_je := cache_zfy;
            frm_pos.ShowModal;
            if frm_pos.ModalResult = mrOk then
            begin
//              res := hkxf(frm_pos.pos_je);
              if res.fhm = '000000' then
              begin
                try
                  DM_data.qry_pub.Close;
                  DM_data.qry_pub.SQL.Text := 'select * from bkjk_fymx where 1=2';
                  DM_data.qry_pub.Open;
                  DM_data.qry_pub.Append;
                  DM_data.qry_pub.FieldByName('zyh').Value := cache_tmh;
                  DM_data.qry_pub.FieldByName('tmh').Value := '';
                  DM_data.qry_pub.FieldByName('xm').Value := cache_xm;
                  try //银行交易金额
//                    DM_data.qry_pub.FieldByName('zfy').Value := res.jyje;
                    DM_data.qry_pub.FieldByName('zfy').Value := FloatToStr(frm_pos.pos_je);
                  except
                  end;
//                  DM_data.qry_pub.FieldByName('zfy').Value := FloatToStr(frm_pos.pos_je);
                  DM_data.qry_pub.FieldByName('sfczy').Value := pub_czydm;
                  try //银行交易时间
                    DM_data.qry_pub.FieldByName('sfsj').Value := FormatDateTime('yyyy-MM-dd hh:mm:ss',
                      StrToDateTime(Copy(res.yhzjjyrq, 1, 4) + '-' + copy(res.yhzjjyrq, 5, 2) + '-' + copy(res.yhzjjyrq, 7, 2) + ' ' +
                      Copy(res.yhzjjysj, 1, 2) + ':' + copy(res.yhzjjysj, 3, 2) + ':' + copy(res.yhzjjysj, 5, 2)));
                  except
                  end;
                  try //商户号
                    DM_data.qry_pub.FieldByName('sjbh').Value := res.shh;
                  except
                  end;
                  DM_data.qry_pub.FieldByName('kh').Value := res.kh;
                  DM_data.qry_pub.FieldByName('lsh').Value := res.poslsh;
                  DM_data.qry_pub.FieldByName('jyckh').Value := res.jsckh;
                  DM_data.qry_pub.FieldByName('zdbh').Value := res.zdh;
                  DM_data.qry_pub.FieldByName('sjh').Value := '';
                  DM_data.qry_pub.FieldByName('fylb').Value := '门诊收费';
                  DM_data.qry_pub.FieldByName('yhfylb').Value := '02';
                  DM_data.qry_pub.Post;
                  DM_data.qry_pub.UpdateBatch(arAll);
                  cache_pos := '0';
                except
                  on e: Exception do
                  begin
//                    addTransLog(e.message);
                    try
                      DM_data.qry_pub.Connection.Connected := True;
                      DM_data.qry_pub.Post;
                    except on e1: Exception do
                      begin
//                        addTransLog(e1.message);
                      end;
                    end;
                  end;
                end;
              end
              else
              begin
                Application.MessageBox(pchar('刷卡失败,' + res.fhmhy), '错误', MB_OK + MB_ICONSTOP);
              end;
            end;
          finally
            frm_pos.Free;
          end;
        end
        else
          if posh = '3' then
          begin
            IdHTTP1.Request.ContentType := 'application/json;charset=utf-8';
            IdHTTP1.Request.Method := 'POST';
            t := TStringList.Create;
            t.Clear;
            pos_zfy := StringReplace(FormatFloat('0.00', cache_zfy), '.', '', [rfReplaceAll]);
            pos_zfy := FormatEx(StrToInt(pos_zfy), 12);
            t.Add('{"TransType":"PURCHASE","TokenID":"START_PAY","SerialNumber":"000001","PackageType":"0","Amount":"' + pos_zfy + '"}');
            jo := SO(IdHTTP1.Post('http://localhost:44665/api/trade', t));
            while jo['PackageType'].AsString = '0' do
            begin
              srMDoc := TXMLDocument.Create(nil);
              srMDoc.Active := True;
              srMDoc.Version := '1.0';
              srMDoc.Encoding := 'GBK';
              srMDoc.standalone := 'yes';
              aNode := srMDoc.AddChild('ROOT');
              aNode1 := aNode.AddChild('HEAD');
              aNode1.AddChild('TradeName').Text := 'GetBankdata';
              aNode2 := aNode.AddChild('Data');
              aNode2.AddChild('SETIOS8583').Text := jo['ISO8583'].AsString;
              scMDoc := TXMLDocument.Create(nil);
              scMDoc.Active := True;
              //此处进行WEB服务传送。
              xmlstr := GetIPosService.HisToBank(srMDoc.XML.Text);
              xmlstr := '<?xml version="1.0" encoding="GBK" standalone="yes"?>' + xmlstr;
              scMDoc.loadfromxml(xmlstr);
              t.Clear;
              t.Add('{"TransType":"PURCHASE","TokenID":"START_PAY","SerialNumber":"000001","PackageType":"0","Amount":"' + pos_zfy + '","ISO8583":"' +
                scMDoc.DOMDocument.getElementsByTagName('AREA8583')[0].childNodes[0].nodeValue + '"}');
              jo := SO(IdHTTP1.Post('http://localhost:44665/api/trade', t));
            end;
            if (jo['PackageType'].AsString = '1') and (jo['ErrorCode'].AsString = '00') then
            begin
              try
                DM_data.qry_pub.Close;
                DM_data.qry_pub.SQL.Text := 'select * from bkjk_fymx where 1=2';
                DM_data.qry_pub.Open;
                DM_data.qry_pub.Append;
                DM_data.qry_pub.FieldByName('zyh').Value := cache_tmh;
                DM_data.qry_pub.FieldByName('tmh').Value := '';
                DM_data.qry_pub.FieldByName('xm').Value := cache_xm;
                DM_data.qry_pub.FieldByName('zfy').Value := FloatToStr(cache_zfy);
                DM_data.qry_pub.FieldByName('sfczy').Value := pub_czydm;
                DM_data.qry_pub.FieldByName('kh').Value := jo['CardNo'].AsString;
                DM_data.qry_pub.FieldByName('lsh').Value := jo['TraceNo'].AsString;
                DM_data.qry_pub.FieldByName('sjbh').Value := cache_ph; //保存门诊批号 进行退费操作
                DM_data.qry_pub.FieldByName('sjh').Value := '';
                DM_data.qry_pub.FieldByName('fylb').Value := '门诊收费';
                DM_data.qry_pub.FieldByName('zdbh').Value := '商行';
                DM_data.qry_pub.FieldByName('jyckh').Value := jo['RefNo'].AsString;
                DM_data.qry_pub.FieldByName('yhfylb').Value := '03';
                DM_data.qry_pub.Post;
                DM_data.qry_pub.UpdateBatch(arAll);
                cache_pos := '0';
                application.MessageBox('POS刷卡成功！', '提示', mb_ok);
              except
                on e: Exception do
                begin
//                  addTransLog(e.message);
                  try
                    DM_data.qry_pub.Connection.Connected := True;
                    DM_data.qry_pub.Post;
                  except on e1: Exception do
                    begin
//                      addTransLog(e1.message);
                    end;
                  end;
                end;
              end;
            end;
            IdHTTP1.Disconnect;
          end;

    end;
  end;
end;

procedure Tfrm_mzsf.editsflbEnter(Sender: TObject);
begin
  if mzsfsffylb then
    proc_fylb(0); //不是卡用户，选择病人类别

  if Prv_Exists_dzcf then
    cxSplitter1.CloseSplitter;

  editsflb.text := '';
  e_je.text := '0.00';
  cfn.Enabled := False;
  cfy.Enabled := False;
  cfh.Enabled := False;
  if qry_fymx.RecordCount > 0 then
    B_save.enabled := True
  else
    B_save.Enabled := False;
  b_cancel.Enabled := true;
  frm_func.changecolor(Sender);
end;

procedure Tfrm_mzsf.czysEnter(Sender: TObject);
begin
  frm_func.changecolor(Sender);
end;

procedure Tfrm_mzsf.kdysEnter(Sender: TObject);
begin
  frm_func.changecolor(Sender);
  kdys.SetFocus;
  kdys.SelectAll;
end;

procedure Tfrm_mzsf.kdksEnter(Sender: TObject);
begin
  frm_func.changecolor(Sender);
end;

procedure Tfrm_mzsf.cfhEnter(Sender: TObject);
begin
  frm_func.changecolor(Sender);
  e_je.Enabled := false;
end;

procedure Tfrm_mzsf.bt_tcClick(Sender: TObject);
begin
  Close;
end;

procedure Tfrm_mzsf.czksEnter(Sender: TObject);
begin
  frm_func.changecolor(Sender);
end;

procedure Tfrm_mzsf.N4Click(Sender: TObject);
begin
  frm_mzsf.tj_sfzk('0');
end;

procedure Tfrm_mzsf.N1Click(Sender: TObject);
begin
{$IFDEF sys_hygl}
  application.CreateForm(Tfrm_sjcd, frm_sjcd);
  try
    frm_sjcd.ShowModal;
  finally
    frm_sjcd.free;
  end;
{$ELSE}
//  frm_main.MZSFA06.Click;
{$ENDIF}
  frm_mzsf.tj_sfzk('0');
  frm_mzsf.proc_get_sjbh;
end;

procedure Tfrm_mzsf.N9Click(Sender: TObject);
begin
{$IFDEF sys_hygl}
  application.CreateForm(Tfrm_mzcfcx, frm_mzcfcx);
  try
    frm_mzcfcx.ShowModal;
  finally
    frm_mzcfcx.free;
  end;
{$ELSE}
//  Frm_main.MZSFD03.Click;
{$ENDIF}
end;

procedure Tfrm_mzsf.N6Click(Sender: TObject);
begin
{$IFDEF sys_hygl}
  frm_main.fwzxb02.Click;
{$ELSE}
//  frm_main.MZSFB01.Click;
{$ENDIF}
  frm_mzsf.tj_sfzk('0');
  frm_mzsf.proc_get_sjbh;
end;

procedure Tfrm_mzsf.maxg;
var
  Getma: string;
begin
  if Prv_ShowCaption_kyh then
  begin
    Application.CreateForm(TFrm_masrck, Frm_masrck);
    try
      Frm_masrck.ShowModal;
    finally
      Getma := Trim(Frm_masrck.Edit1.Text);
      Frm_masrck.free;
    end;
    Getma := Trim(getmm(Trim(Getma)));
    with dm_data do
    begin
      qry_czy.Close;
      qry_czy.SQL.Clear;
      qry_czy.SQL.Add('select * from sys_kyh where tmh=''' + Trim(mz_tmh) + '''');
      qry_czy.open;
      if Trim(qry_czy.FieldByName('ma').AsString) <> Getma then
      begin
        Application.MessageBox('密码输入错误，请重输！', '注意', 16);
        mzh.SetFocus;
        Abort;
      end
      else
        if Application.MessageBox('是否修改你的会员卡密码?',
          '信息提示框', MB_OKCANCEL + MB_DEFBUTTON2 + 32) = IDOK then
        begin
          Application.CreateForm(TFrm_hymaxg, Frm_hymaxg);
          try
            Frm_hymaxg.mz_brxm := brxm.Text;
            Frm_hymaxg.mz_tmh := mz_tmh;
            Frm_hymaxg.ShowModal;
          finally
            Frm_hymaxg.free;
          end;
        end;
    end;
  end;
end;

procedure Tfrm_mzsf.Getbrxx(mzhstr: string);
begin
  try
    //查询卡绑定
    if proc_cx_jzklx(trim(mzh.Text)) or (Prv_tmh_fs = 5) then
    begin
      lab_bdxx.Caption := '绑定居民健康卡号：' + trim(mzh.Text);
      lab_bdxx.Visible := true;
      mzh.Text := pub_bdktmh;
      mz_tmh := pub_bdktmh;
      Prv_tmh_fs := 5;
    end
    else
    begin
      if length(mzhstr) = 9 then //卡用户
      begin
        mzh.text := mzhstr;
        mz_tmh := mzhstr;
        Prv_tmh_fs := 1;
      end
      else
        if length(mzhstr) = 12 then //临时卡用户
        begin
          mz_tmh := mzhstr;
          Prv_tmh_fs := 2;
        end
        else
          if Length(mzhstr) = 18 then //社区档案号
          begin
            mz_tmh := mzhstr;
            Prv_tmh_fs := 3;
          end
          else
          begin
            try
              mzh.text := formatex(strtoint(mzhstr), 6);
            except
            end;
            mz_tmh := e_bh1.Text + e_bh2.Text + mzh.text;
            Prv_tmh_fs := 2;
          end;
    end;
    sp_cx_kyh.Close;
    sp_cx_kyh.Parameters.ParamByName('@tmh').value := mz_tmh;
    sp_cx_kyh.Parameters.ParamByName('@cxfs').value := Prv_tmh_fs;
    sp_cx_kyh.open;
    if sp_cx_kyh.RecordCount = 0 then
    begin
      Application.MessageBox('没有该门诊病人用户信息!', '注意', 0 + 48);
      mzh.SelectAll;
      abort;
    end
    else
    begin
      yjje := sp_cx_kyh.FieldByName('yjze').AsFloat;
      syje := sp_cx_kyh.FieldByName('syje').AsFloat;

      Prv_kyh_je := syje; //读卡时卡剩余金额，不会在程序中更改;
      zfy := sp_cx_kyh.FieldByName('zfy').AsFloat;

      mz_fylbmc := sp_cx_kyh.FieldByName('lbmc').AsString;
      //病人费用类别名称
      mz_fyzfbl := sp_cx_kyh.FieldByName('zezfbl').AsFloat;
      //病人费用总额自付比率
      brlb.Text := mz_fylbmc;
      mz_brxm := Trim(sp_cx_kyh.FieldByName('brxm').Asstring);
      brxm.Text := mz_brxm;
      brxm.ReadOnly := True;
      if Trim(brxm.text) <> '' then
      begin
        if checkbox2.Checked and mzsfsfsyyy then
        begin
          yybjUnit.Yybj(mz_brxm, p_func_yybj.CheckInfo);
        end;
      end;
      mz_tmh := sp_cx_kyh.FieldByName('tmh').AsString;
      mzfybl := Trim(sp_cx_kyh.FieldByName('mzfyblmc').Asstring);
      mz_fylb := Trim(sp_cx_kyh.FieldByName('fylb').AsString); //病人费用类别

      Pub_xjbz := not sp_cx_kyh.FieldByName('yjbz').AsBoolean;
//      if pub_xjbz then //如果为现金标志，则直接设置费用类别为'01'
//        mz_fylb := '01';
//      if Pub_Is_sbsf then
//        Prv_ShowCaption_kyh := True
//      else
      Prv_ShowCaption_kyh := sp_cx_kyh.FieldByName('tsxxbz').AsBoolean;
      panel1.Enabled := true;
      b_cancel.Enabled := true;
      editbrjkje.Clear;
      editbrzhje.Text := '0';
      if Prv_ShowCaption_kyh then
      begin
        LB_khy.Caption := Trim(sp_cx_kyh.FieldByName('brxm').Asstring)
          + ',预交总额：' + FormatFloat('0.00', yjje)
          + ',剩余金额：' + FormatFloat('0.00', syje);
        maxg; //密码修改
      end
      else
        LB_khy.Caption := LB_khy.Caption;
      //江油市人民医院提示病人是否已经在挂号处享受统筹
      proc_ts_gstc(mz_tmh);
      panel2.Enabled := False;
      bt_tc.Enabled := False;
    end;
  except
    panel2.Enabled := true;
    bt_tc.Enabled := true;
    mzh.SetFocus;
    Exit;
  end;
end;

procedure Tfrm_mzsf.N10Click(Sender: TObject);
begin
{$IFDEF sys_hygl}
  frm_main.fwzxb02.Click;
{$ELSE}
//  frm_main.MZSFD01.Click;
{$ENDIF}
end;

procedure Tfrm_mzsf.cfyKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    cfh.SetFocus;
end;

procedure Tfrm_mzsf.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
begin
  if qry_mx.RecordCount <> 0 then
    if qry_mx.FieldByName('bdbz').asstring <> '' then
    begin
      dbgrid1.Canvas.Brush.Color := $00E4B647;
      dbgrid1.Canvas.Font.Color := clwhite;
    end;
  dbgrid1.DefaultDrawColumnCell(rect, datacol, column, state);
end;

procedure Tfrm_mzsf.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if ((key in ['A'..'z', '0'..'9']) or (ord(key) > 127)) then //and ( ypmcxg = False ) and ( dbgrid1.SelectedIndex = 0 )
    ypmcxg := true;
  try
    if qry_mx.RecNo = qry_mx.RecordCount then
      Prv_cfhj_fs := 1
    else
      Prv_cfhj_fs := 2;
    if Key = ' ' then
    begin
      if dbgrid1.SelectedIndex = 3 then
      begin
        //-------------------------calmhawk--2010-03-12-----
        //------数量处压回车,查库 -------处理选择 "西药房划价是否使用包装"时库存检查问题
        qry_ypbz.Close;
        qry_ypbz.Parameters.ParamByName('ypdm').value := qry_mx['ypdm'];
        qry_ypbz.open;
        if qry_ypbz.RecordCount > 1 then
        begin
          qry_ypbz.First;
          dbgrid5.Visible := true;
          dbgrid5.SetFocus;
        end
        else
        begin
          if qry_ypbz.RecordCount > 0 then
          begin
            proc_cxypkc;
            dbgrid1.SelectedIndex := 4;
          end;
        end;
      end;
    end;
    if key = #13 then
    begin
      if dbgrid1.SelectedIndex = 4 then
      begin
        if not qry_ypbz.Active then
        begin
          qry_ypbz.Parameters.ParamByName('ypdm').value := qry_mx['ypdm'];
          qry_ypbz.open;
        end;
        if qry_ypbz.RecordCount > 0 then
        begin
          proc_cxypkc;
        end;
        if qry_mx.Active then
        begin
          if qry_mx.FieldByName('ypdm').asstring = '' then
          begin
            dbgrid1.SelectedIndex := 0;
            qry_mx.Delete;
          end;
          if (qry_mx.FieldByName('ypsl').AsFloat <= 0) or
            (qry_mx.FieldByName('ypsl').AsFloat -
            round(qry_mx.FieldByName('ypsl').AsFloat) <> 0) then
          begin
            Application.MessageBox('请输入正确的处方数量!', '注意', 0 + 48);
            qry_mx.Edit;
            qry_mx['ypsl'] := 0;
          end
          else
          begin
            if Prv_cfhj_fs = 2 then
              proc_cxypkc; //修改时取出实际库存数量
            if sp_yp.Active then
            begin
              if (qry_mx['ypsl'] > Prv_bz_ypkc) and (not pub_zyhjbz) then
              begin
                Application.MessageBox('药品数量不能大于库存数量!', '注意', 16);
                qry_mx.Edit;
                qry_mx['ypsl'] := 0;
              end;
            end;
          end;
        end;
        proc_sumcfje;
        qry_mx.Append;
        dbgrid1.SelectedIndex := 0;
        dbgrid5.Visible := False;
      end
      else
        if dbgrid1.SelectedIndex = 3 then
        begin
          proc_cxypkc;
          dbgrid1.SelectedIndex := 4;
        end
        else
          if dbgrid1.SelectedIndex = 0 then
          begin
            Prv_cfhj_fs := 1;
            qry_mx.Edit;
            Prv_ypmc_zjm := Trim(Qry_mx.Fields[0].text);
            if ypmcxg then
            begin
              ypmcxg := False;
              sp_yp.Close;
              sp_yp.Filtered := False;
              sp_yp.Parameters.ParamByName('@pym').value := Prv_ypmc_zjm;
              sp_yp.Parameters.ParamByName('@ksdm').value := pub_hjyfksdm;
              sp_yp.Parameters.ParamByName('@ysdm').value := mz_kdys;
              if Prv_cflb = 'MN' then
                sp_yp.Parameters.ParamByName('@lb').value := 'C'
              else
                if Prv_cflb = 'MC' then
                  sp_yp.Parameters.ParamByName('@lb').value := 'Z'
                else
                  sp_yp.Parameters.ParamByName('@lb').value := 'X';
              sp_yp.Parameters.ParamByName('@yflb').value := 0;
              sp_yp.Open;
              if sp_yp.RecordCount = 1 then
                proc_xcyptomx
              else
                if sp_yp.RecordCount = 0 then
                  Application.MessageBox('没有满足条件的药品资料!', '注意', 16)
                else
                begin
                  sp_yp.First;
                  dbgridypmx.Visible := true;
                  dbgridypmx.SetFocus;
                end;
            end
            else
            begin
              if pub_yfsfsybz then
                DBGrid1.SelectedIndex := 3
              else
                DBGrid1.SelectedIndex := 4;
            end;
          end;
    end;
  except
    dbgrid1.SelectedIndex := 0;
  end;
end;

procedure Tfrm_mzsf.DBGridypmxKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    dbgrid1.SetFocus;
  end;
  if key = #27 then
  begin
    dbgrid1.SetFocus;
    DBGrid1.SelectedIndex := 0;
    abort;
  end;
end;

procedure Tfrm_mzsf.DBGridypmxExit(Sender: TObject);
begin
  proc_xcyptomx;
end;

procedure Tfrm_mzsf.DBGrid5KeyPress(Sender: TObject; var Key: Char);
var
  ypdj, bzbl: Real;
begin
  if key = #13 then
  begin
    ypdj := qry_mx['ypdj'];
    bzbl := qry_mx['ypbzbl'];
    qry_mx.Edit;
    qry_mx['ypdw'] := qry_ypbz['ypdw'];
    qry_mx['ypdwid'] := qry_ypbz['id'];
    qry_mx['ypbzbl'] := qry_ypbz['bzbl'];
    qry_mx['ypdj'] := (ypdj / bzbl) * qry_ypbz['bzbl'];
    qry_mx.Post;
    Prv_bz_ypkc := sp_yp['zxdwsl'] / qry_ypbz['bzbl'];
    dbgrid5.Visible := False;
    dbgrid1.SetFocus;
    proc_sum_cfje;
    DBGrid1.SelectedIndex := 4;
  end;
  if key = #27 then
  begin
    dbgrid5.Visible := False;
    dbgrid1.SetFocus;
    DBGrid1.SelectedIndex := 3;
    abort;
  end;
end;

procedure Tfrm_mzsf.DBGrid5Exit(Sender: TObject);
begin
  dbgrid5.Visible := False;
  dbgrid1.SetFocus;
  DBGrid1.SelectedIndex := 4;
end;

procedure Tfrm_mzsf.mzhChange(Sender: TObject);
begin
  brxm.Clear;
end;

procedure Tfrm_mzsf.mzhDblClick(Sender: TObject);
begin
  //读卡（居民健康卡）
  if Assigned(cwxx) then
    Zddqjjk_Start(100, jkkd_hd);
end;

procedure Tfrm_mzsf.e_bh2KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    mzh.SetFocus;
end;

procedure Tfrm_mzsf.proc_sumcfje;
var
  cfzje: Real;
  lsxh: Integer;
begin
  if (qry_mx.State = dsinsert) or (qry_mx.State = dsedit) then
    qry_mx.Post;
  if qry_mx.RecordCount = 0 then
  begin
    Application.MessageBox('没有药品明细数据!', '注意', 16);
    abort;
  end;
  qry_mx.DisableControls;
  qry_mx.First;
  while not qry_mx.Eof do
  begin
    if (qry_mx.FieldByName('ypsl').AsFloat = 0) or
      (qry_mx.FieldByName('ypdm').asstring = '') then
      qry_mx.Delete;
    qry_mx.next;
  end;
  lsxh := 0;
  cfzje := 0;
  qry_mx.First;
  while not qry_mx.Eof do
  begin
    cfzje := cfzje + qry_mx['ypsl'] * qry_mx['ypdj'] * mz_cfjl;
    lsxh := lsxh + 1;
    qry_mx.Edit;
    qry_mx['xh'] := lsxh;
    qry_mx['cfjl'] := mz_cfjl;
    qry_mx.next;
  end;
  if (qry_mx.State = dsinsert) or (qry_mx.State = dsedit) then
    qry_mx.Post;
  mz_sfbz := cfzje;
  qry_zb.Edit;
  qry_zb['cfzje'] := cfzje;
  //  if mzsfsfsswr then //门诊收费收到角系统开关
  //    qry_zb['sszje'] := formatFloat('0.00', realtomoney1(cfzje)) //小数位四舍五入到角
  //  else
  //    if pub_sf5or1 then //收费到五角或1元开关
  //      qry_zb['sszje'] := formatFloat('0.00', func_CastMoneyTo5(realtomoney1(cfzje)))
  //    else
  //    begin
  //      qry_zb['sszje'] := formatFloat('0.00', realtomoney2(cfzje)); //小数位四舍五入到分
  //    end;
  qry_zb['sszje'] := realtomoney2(cfzje);
  qry_zb.post;
  e_je.Text := formatFloat('0.00', qry_zb['sszje']); //floattostr(
  qry_mx.enableControls;
end;

procedure Tfrm_mzsf.editsflbKeyPress(Sender: TObject; var Key: Char);
var
  S: string;
begin
  if key = #13 then
  begin
    if Trim(editsflb.Text) <> '' then
    begin
      if pub_mzsf_bl then //补录收据
        S := frm_func.func_get_sjbh(pub_czydm, '01', '2')
      else
        S := frm_func.func_get_sjbh(pub_czydm, '01', '1');
      if S = '' then
      begin
        MessageDlg('收据已用完，请启用新收据！', mtWarning, [mbOK], 0);
        Exit;
      end;
      dm_data.qry_pub.Close;
      dm_data.qry_pub.SQL.Clear;
      dm_data.qry_pub.SQL.Add('Exec mzsf_cx_sfxm ' + #39 + Trim(editsflb.text) + #39);
      dm_data.qry_pub.Open;
      if dm_data.qry_pub.RecordCount = 0 then
      begin
        Application.MessageBox('收费类别码输入错误！', '提示', 48);
        editsflb.SelectAll;
        editsflb.SetFocus;
        abort;
      end
      else
        if dm_data.qry_pub.RecordCount > 1 then
        begin
          g_empt.Left := editsflb.Left;
          g_empt.Top := editsflb.Parent.Top + editsflb.Top + editsflb.Height + 3;
          g_empt.Columns[0].fieldname := 'szdm';
          g_empt.Columns[0].title.Caption := '标准码';
          g_empt.Columns[0].width := 100;
          g_empt.Columns[3].visible := true;
          g_empt.Columns[1].fieldname := 'fymc';
          g_empt.Columns[1].title.Caption := '名称';
          g_empt.width := 600;
          g_empt.Columns[1].Width := 200;
          g_empt.Columns[2].fieldname := 'pym';
          g_empt.Columns[2].title.Caption := '拼音码';
          g_empt.Columns[3].Visible := true;
          g_empt.Columns[3].fieldname := 'fydm';
          g_empt.Columns[3].title.Caption := '费用代码';
          g_empt.Columns[4].Visible := true;
          g_empt.Columns[4].fieldname := 'sfbz';
          g_empt.Columns[4].title.Caption := '收费标准';
          g_empt.Tag := 1; // 1表示GRID显示收费类别
          g_empt.BringToFront;
          G_empt.visible := true;
          g_empt.SetFocus; //kdys.SetFocus
        end
        else
          if dm_data.qry_pub.RecordCount = 1 then
          begin
            Proc_fydm_select;
          end;
    end
    else
    begin
      Application.messagebox('请输入收费项目代码！', '错误', mb_ok + mb_iconerror);
      editsflb.setfocus;
    end;
  end;
end;

procedure Tfrm_mzsf.Qry_mxCalcFields(DataSet: TDataSet);
begin
  if qry_mx.FieldByName('ypdj').AsFloat > 0 then
    qry_mx['hj'] := qry_mx.FieldByName('ypsl').AsFloat *
      qry_mx.FieldByName('ypdj').AsFloat;
end;

procedure Tfrm_mzsf.E_jeExit(Sender: TObject);
begin
  frm_func.restorecolor(Sender);
  //  if yjbz=1 then
  //  begin
  //    e_je.text := formatfloat('0.00', strtofloat(e_je.Text));
  //  end else
  //  if mzsfsfsswr then // 门诊四舍五入
  //    e_je.text := FloatToStr(realtomoney1(strtofloat(e_je.Text)))
  //  else
  //    if pub_sf5or1 then
  //      e_je.text := FloatToStr(func_CastMoneyTo5(realtomoney1(strtofloat(e_je.Text))))
  //    else
  //      e_je.text := formatfloat('0.00', strtofloat(e_je.Text));

  if not (mzh.Focused) then
  try
    mz_sfbz := strtofloat(e_je.text);
    if mz_sfbz <= 0 then
    begin
      e_je.SelectAll;
      e_je.SetFocus;
    end;
  except
    e_je.SelectAll;
    e_je.SetFocus;
  end;
  if mz_cfbh <> '' then
  begin
    Application.MessageBox('提示:错误的药品处方收取方式!', '提示', MB_OK + MB_ICONINFORMATION);
    Abort;
  end;
  proc_fymx;
  if (trim(lb_khy.Caption) <> '') and (trim(pub_re.zhye) <> '') then
  begin
    lb_khy.Caption := pub_re.zhye + '预付:' + zje1.Caption;
  end;
end;

procedure Tfrm_mzsf.E_sfcsExit(Sender: TObject);
var
  _sfcs: Double;
begin
  frm_func.restorecolor(Sender);
  //江油市人民医院要求次数可以为小数
  if pub_yydm = '0015' then
  begin
    _sfcs := strtofloat(Trim(e_sfcs.Text));
  end
  else
  begin
    try
      _sfcs := StrToInt(e_sfcs.text);
      _sfcs := StrToInt(e_sfcs.text);
    except
      on e: Exception do
      begin
        Application.MessageBox('不能输入小数，请重新输入！', '系统提示', MB_OK +
          MB_ICONWARNING);
        E_sfcs.SetFocus;
        Exit;
      end;
    end;
  end;
  try
    mz_sfbz := mz_sfbz1 * _sfcs;
    //    if mzsfsfsswr then
    //      e_je.text := FloatToStr(realtomoney1(mz_sfbz))
    //    else
    //      if pub_sf5or1 then
    //        e_je.text := FloatToStr(func_CastMoneyTo5(realtomoney1(mz_sfbz)))
    //      else
    //      begin
    //        e_je.text := formatfloat('0.00', mz_sfbz);
    //      end;
    e_je.text := formatfloat('0.00', mz_sfbz);
    e_je.SetFocus;
    e_je.SelectAll;
    mz_fysl := _sfcs;
  except
    if (e_sfcs.Enabled) and (panel1.Enabled) then
    begin
      e_sfcs.SelectAll;
      e_sfcs.SetFocus;
    end;
  end;
end;

procedure Tfrm_mzsf.E_jeKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    editsflb.SetFocus
end;

procedure Tfrm_mzsf.E_sfcsKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    try
      if strtofloat(e_sfcs.text) <= 0 then
        e_sfcs.Text := '1';
      e_sfcs.SelectAll;
      if Trim(mz_dxdm) = pub_ghfdldm then
      begin
        if strtofloat(e_sfcs.text) > 10 then
        begin
          Application.MessageBox('提示:为了防止误操作,此大类一次输入次数不能大于10次!', '提示', MB_OK + MB_ICONINFORMATION);
          Abort;
        end;
      end;
    except
      e_sfcs.Clear;
      e_sfcs.Text := '1';
      e_sfcs.SelectAll;
    end;
    e_je.SetFocus;
  end;
end;

procedure Tfrm_mzsf.brxmKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 13 then
  begin
    if Trim(brxm.text) <> '' then
    begin
      editsflb.SetFocus;
      if checkbox2.Checked and mzsfsfsyyy then
      begin
        yybjUnit.Yybj(mz_brxm, p_func_yybj.CheckInfo);
      end;
    end
    else
    begin
      Application.messagebox('请输入病人姓名,如果没有请用"*"代替！', '错误', mb_ok + mb_iconerror);
      brxm.setfocus;
    end;
  end
  else
    if (key = VK_SPACE) and prv_mzhlength then
      brxm.Text := Prv_brxm_up;
end;

procedure Tfrm_mzsf.brxmExit(Sender: TObject);
begin
  mz_brxm := Trim(brxm.Text);
  proc_UpdateName(mz_brxm);
  frm_func.restorecolor(Sender);
//  if mz_brxm <> '' then
//    if checkbox2.Checked and mzsfsfsyyy then
//    try
//      //梓潼中医院病人姓名不呼叫20130709罗江县人民医院此处不呼叫20131205
//      if (pub_yydm <> '0091') and (pub_yydm <> '0046') then
//        yybjUnit.Yybj(mz_brxm + '$', p_func_yybj.CheckInfo);
//      yybjUnit.yybj('', p_func_yybj.ClearSc);
//      yybjUnit.yybj('', p_func_yybj.wait);
//      //      pro_yylx := 6;
//      //      timer1.Enabled := true;
//    except
//    end;
end;

procedure Tfrm_mzsf.mzhEnter(Sender: TObject);
begin
  //20100827姜超放开----------------------
  if checkbox2.Checked and mzsfsfsyyy then
  begin
    try
      if (pub_yydm <> '0046') then //罗江县人民医院此处不呼叫
      begin
        yybjUnit.yybj('', p_func_yybj.ClearSc);
      end;
    except
    end;
  end;
  v_tchj := 0;
  v_zfhj := 0;
  if Prv_lookl = '' then
    mzh.Clear;
  Prv_zfhj := 0.00;
  Prv_tmh_fs := 0;
  mz_zje := 0.00;
  yskje := 0;
  mz_fylbmc := '';
  brlb.Text := '';
  jy_ynzgkbz := False;
  lab_bdxx.Caption := '';
  lab_bdxx.Visible := false;
  //如果不选择病人费用类别全自费处理
  if not mzsfsffylb then
  begin
    brlb.Text := '自费医疗';
    mz_fylb := '01';
    mz_fyzfbl := 100;
  end;
  qry_fymx.Close;
  Pub_Is_zhsb := false;
//  Pub_Is_sbsf := Pub_Is_zhsb;
  //读卡（居民健康卡）
  if Assigned(cwxx) and (mzh.Text = '') then
    Zddqjjk_Start(100, jkkd_hd);
  mzh.SelectAll;
  frm_func.changecolor(Sender);
end;

procedure Tfrm_mzsf.cxButton1Click(Sender: TObject);
begin
  pan_psjg.Visible := False;
end;

procedure Tfrm_mzsf.cxkyh;
var
  Mystr: string;
begin
  if not (bt_tc.focused or checkbox1.Focused or checkbox2.Focused) then
  begin
    fybl := 0;
    mzfybl := '';
    Pub_xjbz := True; //现金标志
    if length(Trim(mzh.text)) = 0 then
    begin
      sp_sqkh.Active := False;
      sp_sqkh.Parameters.ParamByName('@lstmh').value := '';
      sp_sqkh.ExecProc;
      if mzsfsffylb then
        proc_fylb(0); //不是卡用户，选择门诊类别
      mz_tmh := sp_sqkh.Parameters.ParamByName('@lstmh').value;
      mzh.Text := copy(sp_sqkh.Parameters.ParamByName('@lstmh').value, 7, 6);
      panel1.Enabled := true;
      b_cancel.Enabled := true;
      editbrjkje.Clear;
      editbrzhje.Text := '0';
      brxm.Enabled := true;
      if not b_sbhk.Focused then
      begin
        brxm.SetFocus;
        panel2.Enabled := False;
      end;
      panel1.enabled := true;
      bt_tc.Enabled := False;
    end
    else
    begin
      Mystr := Trim(mzh.Text);
      if mystr[1] in ['0'..'9', 'n', 'N', 'b', 'B', 'j', 'J'] then
      begin
        if pub_mzfkbz then
        begin
          if Length(Mystr) < 9 then
            Mystr := FormatEx(StrToInt(MyStr), 9);
        end
        else
        begin
          if Length(Mystr) < 6 then
          begin
            mzh.text := FormatEx(StrToInt(MyStr), 6);
            Mystr := e_bh1.Text + e_bh2.Text + mzh.text
          end;
        end;
        Getbrxx(Mystr);
      end
      else //输入病人 [姓名] 收电子处方费用的情况
      begin
        Qry_sfinfo.Close;
        Qry_sfinfo.SQL.Clear;
        Qry_sfinfo.SQL.Add('Select distinct tmh,brxm,brxb from mzsf_mzfymx_ls');
        Qry_sfinfo.SQL.Add(' Where sfbz=0 And brxm Like ''' + Mystr + '%' + '''');
        if CheckBox1.Checked then
          Qry_sfinfo.SQL.Add(' And Convert(Char(10),sfrq,121)=Convert(Char(10),Getdate(),121)')
        else
          Qry_sfinfo.SQL.Add(' And Convert(Char(10),sfrq,121)<Convert(Char(10),Getdate(),121)');
        Qry_sfinfo.Open;
        if Qry_sfinfo.RecordCount > 1 then
        begin
          Prv_lookl := 'Look';
          DBGrid2.top := 61;
          DBGrid2.left := 127;
          DBGrid2.Visible := True;
          DBGrid2.SetFocus;
        end
        else
          if Qry_sfinfo.RecordCount = 1 then
          begin
            Getbrxx(Trim(Qry_sfinfo.FieldByName('tmh').AsString));
            Qry_sfinfo.Close;
          end
          else
          begin
            mzh.text := '';
            mzh.SetFocus;
          end;
      end;
      if sp_cx_kyh.FieldByName('fylb').AsString = '' then
      begin
        brlb.Text := '自费医疗';
        mz_fylb := '01';
        mz_fylbmc := brlb.Text;
        mz_fyzfbl := 100;
        mzfybl := '';
      end;
    end;
  end;
end;

procedure Tfrm_mzsf.brxmEnter(Sender: TObject);
begin
  frm_func.changecolor(Sender);
  if mzsfsffylb then
    proc_fylb(0); //不是卡用户，选择门诊类别
end;

procedure Tfrm_mzsf.editsflbExit(Sender: TObject);
begin
  frm_func.restorecolor(Sender);
end;

procedure Tfrm_mzsf.czysExit(Sender: TObject);
begin
  frm_func.restorecolor(Sender);
end;

procedure Tfrm_mzsf.kdysExit(Sender: TObject);
begin
  //----2011-03-30 邓波
  frm_func.restorecolor(Sender);
end;

procedure Tfrm_mzsf.czksExit(Sender: TObject);
begin
  frm_func.restorecolor(Sender);
end;

procedure Tfrm_mzsf.kdksExit(Sender: TObject);
begin
  frm_func.restorecolor(Sender);
end;

procedure Tfrm_mzsf.E_sfcsEnter(Sender: TObject);
begin
  frm_func.changecolor(Sender);
end;

procedure Tfrm_mzsf.E_jeEnter(Sender: TObject);
begin
  frm_func.changecolor(Sender);
end;

procedure Tfrm_mzsf.cfhExit(Sender: TObject);
begin
  frm_func.restorecolor(Sender);
  mz_cfbh := '';
  e_je.Enabled := true;
end;

procedure Tfrm_mzsf.Qry_mxBeforePost(DataSet: TDataSet);
begin
  if qry_mx.FieldByName('ypdm').asstring = '' then
  begin
    Application.MessageBox('请删除划价中的空记录', '提示 ', 0 + 48);
    dbgrid1.Enabled := true;
    dbgrid1.Visible := true;
    panel1.Enabled := False;
    B_save.Enabled := False;
    b_cancel.Enabled := False;
    dbgrid1.SetFocus;
    abort;
  end;
end;

procedure Tfrm_mzsf.CheckBox1Click(Sender: TObject);
begin
  if CheckBox1.Checked then
    CheckBox1.Caption := '当天'
  else
    CheckBox1.Caption := '历史';
end;

procedure Tfrm_mzsf.DBGrid2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Getbrxx(Trim(Qry_sfinfo.FieldByName('tmh').AsString));
  end;
end;

procedure Tfrm_mzsf.mzhKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    panel1.enabled := true;
    brxm.setfocus;
    if IntToStr(Length(mzh.text)) = '6' then
      prv_mzhlength := True
    else
      prv_mzhlength := False;
  end;
end;

procedure Tfrm_mzsf.DBGrid2Exit(Sender: TObject);
begin
  DBGrid2.Visible := False;
end;

procedure Tfrm_mzsf.Qry_mxAfterDelete(DataSet: TDataSet);
begin
  if not qry_mx.IsEmpty then
    proc_sumcfje;
end;

procedure Tfrm_mzsf.mzhExit(Sender: TObject);
begin
  //  if ( trim( mzh.text ) <> '' ) and ( Length( trim( mzh.text ) ) <> 12 ) then
  //    if Copy( trim( mzh.text ), 1, 2 ) <> '99' then
  //    begin
  //      application.MessageBox( '无效的卡号,请确认！', '错误', mb_ok + mb_iconerror );
  //      mzh.setfocus;
  //      Exit;
  //    end;
  brxm.ReadOnly := False;
  pnl_sb.Visible := false;
  v_psjgyx := False;
  edt_tczf.Text := '';
  edt_zhzf.Text := '';
  edt_xjzf.text := '';
  frm_func.restorecolor(Sender);
  if edt_sjsysl.Text = '剩余:0张' then
  begin
    Application.MessageBox('收据已用完,请启用新收据!', '系统提示', MB_OK + MB_ICONSTOP);
    Close;
  end;
  if (length(Trim(mzh.text)) = 0) and pub_mzsfbrsfgh and (not bt_tc.Focused) then
  begin
    Application.MessageBox('请输入正确的挂号ID', '提示', 0 + 48);
    mzh.SetFocus;
  end
  else
  begin
    cxkyh;
    if (not (bt_tc.focused or checkbox1.Focused or checkbox2.Focused)) and checkbox2.Checked then
    begin
      pro_yylx := 1;
      timer1.Enabled := true;
    end;
    proc_cshsfzt;
    Panel_dzcfmx.Visible := Prv_Exists_dzcf;
    cxSplitter1.Visible := Prv_Exists_dzcf;
    if Prv_Exists_dzcf then
      cxSplitter1.OpenSplitter;
    pub_is_zhsb := False; //非社保收费
  end;
end;

procedure Tfrm_mzsf.FormClose(Sender: TObject; var Action: TCloseAction);
begin
//  if Assigned(frm_sb_dl) then
//    frm_sb_dl.Close;
  qry_fymx.Close;
  Zddqjjk_Stop;
end;

procedure Tfrm_mzsf.FormCreate(Sender: TObject);
begin
  try
    yybjUnit := TYybj.Create;
  except
  end;
end;

procedure Tfrm_mzsf.Timer1Timer(Sender: TObject);
begin
  //20100827姜超放开----------------------
  try
    if pro_yylx = 1 then
    begin
      Prv_yy_cmd := 'W';
      SendMessage(Handle, WM_YYBJ_Message, 1, Integer(Prv_yy_cmd));
    end;
    if pro_yylx = 2 then
    begin
      Prv_yy_cmd := Pchar(FormatFloat('0.00', v_jkje1));
      Sendmessage(Handle, WM_YYBJ_Message, 1, Integer(Prv_yy_cmd + 'J'));
    end;
    if pro_yylx = 3 then
    begin
      Prv_yy_cmd := Pchar(FormatFloat('0.00', v_zhje1));
      Sendmessage(Handle, WM_YYBJ_Message, 1, Integer(Prv_yy_cmd + 'Z'));
    end;
    if pro_yylx = 4 then
    begin
      Prv_yy_cmd := 'D';
      Sendmessage(Handle, WM_YYBJ_Message, 1, Integer(Prv_yy_cmd));
    end;
    if pro_yylx = 5 then
    begin
      Prv_yy_cmd := Pchar(formatfloat('0.00', Prv_Ljzje_zf) + 'J');
      SendMessage(Handle, WM_YYBJ_Message, 1, Integer(Prv_yy_cmd));
    end;
    if pro_yylx = 6 then
    begin
      Prv_yy_cmd := pchar(mz_brxm + '$');
      SendMessage(Handle, WM_YYBJ_Message, 1, Integer(Prv_yy_cmd));
    end;

  except
  end;
  timer1.Enabled := False;
  pro_yylx := 0;
  //  showmessage(Prv_yy_cmd);
end;

procedure Tfrm_mzsf.dbgrid_fymxExit(Sender: TObject);
begin
  proc_kyhjs;
end;

procedure Tfrm_mzsf.dbgrid_fymxCellClick(Column: TColumnEh);
begin
  if Prv_Exists_dzcf then
    proc_get_dzcfmx;
end;

procedure Tfrm_mzsf.dbgrid_fymxColEnter(Sender: TObject);
begin
  Prv_Exists_Wsfcf := False;
end;

procedure Tfrm_mzsf.dbgrid_fymxColumns1UpdateData(Sender: TObject;
  var Text: string; var Value: Variant; var UseText, Handled: Boolean);
begin
  if qry_fymx.FieldByName('sfbz').AsBoolean then
  begin
    Prv_zfhj := Prv_zfhj - qry_fymx.FieldByName('sszje').AsFloat;
    mz_zje := mz_zje - qry_fymx.FieldByName('fyzje').AsFloat;
  end
  else
  begin
    Prv_zfhj := Prv_zfhj + qry_fymx.FieldByName('sszje').AsFloat;
    mz_zje := mz_zje + qry_fymx.FieldByName('fyzje').AsFloat;
  end;
  zje.caption := FormatFloat('0.00', Prv_zfhj);
  zje1.caption := FormatFloat('0.00', mz_zje);
end;

procedure Tfrm_mzsf.dbgrid_fymxDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if (qry_fymx.Active) and (qry_fymx.RecordCount <> 0) then
  begin
    if Trim(qry_fymx.FieldByName('mscf').AsString) = '1' then
    begin
      dbgrid_fymx.Canvas.brush.Color := clRed;
      dbgrid_fymx.Canvas.Font.Color := clWindowText;
    end;
    dbgrid_fymx.DefaultDrawColumnCell(rect, datacol, column, state);
  end;
end;

procedure Tfrm_mzsf.Proc_mzsj_dxjs;
begin
  if Copy(pub_mzsjlx, 1, 4) = '0101' then
    Proc_mzsj_sc_js
  else
    if Copy(pub_mzsjlx, 1, 4) = '0201' then
      Proc_mzsj_sx_js
    else
      if pub_mzsjlx = '999999' then
        Proc_mzsj_999999
end;

procedure Tfrm_mzsf.Proc_YYbj_Message(var message: TMessage);
begin
  //  if checkbox2.Checked and mzsfsfsyyy then
  //    p_func_yybj.dsbdll_yy(message.WParam, PChar(message.LParam));
end;

procedure Tfrm_mzsf.Proc_YYbj_zl(jkje, zhje: real);
begin
  if checkbox2.Checked and mzsfsfsyyy then
  begin
    if (not (bt_tc.focused or checkbox1.Focused or checkbox2.Focused)) and checkbox2.Checked then
    begin
      //      pro_yylx := 2;
      //      v_jkje1 := jkje;
      //      timer1.Enabled := true;
      //      pro_yylx := 3;
      //      v_zhje1 := zhje;
      //      timer1.Enabled := true;
      //      pro_yylx := 4;
      //      timer1.Enabled := true;
    end;
    if (pub_yydm <> '0013') then //梓潼中医院不呼叫20130709  (pub_yydm <> '0091') and
    begin
      yybjUnit.Yybj(FormatFloat('0.00', jkje), p_func_yybj.got);
      yybjUnit.yybj(FormatFloat('0.00', zhje), p_func_yybj.sett);
      yybjUnit.yybj('', p_func_yybj.CheckMoney);
    end;
  end;
end;

end.

