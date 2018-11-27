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
    Hjje: Real; //ǰ̨�ϼƷ��ý��
    Hjbs: Integer; //ǰ̨�ϼƷ��ñ���
  end;
  TInfor_fy = record //�շѽ�����
    fyje: Double; //���ý��
    ssje: Double; //ʵ�ս��
    sjsl: Integer; //�վ�����
    hykxkje: Double; //��Ա���¿����
    tczf, xjzf, zhzf, zhye: Double; //�籣��ͳ��֧�����ֽ�֧�����˻�֧�����˻����
  end;
  //������������������
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
    //����ˢ�� �����ݻ���

    Prv_ypmc_zjm: string;
    Prv_cfhj_fs: Integer; // 1 ���� 2 �޸�
    Prv_tmh_fs: Integer; //1���￨�û���2��ʱ���û���3���������ţ�4�󶨿��û�
    Prv_bz_ypkc: Real;
    Prv_zfhj: Real; //���β����Ը��ϼƽ��
    Prv_kyh_syje: Real; //��ȡ���û���ʣ����
    Prv_kyh_je: Real; //��ȡ���û���ʣ����(�����ڳ����н����޸�)
    Prv_LookL: string;
    Prv_Exists_dzcf: Boolean; //�����շ��Ƿ�������Ӵ�������
    prv_dzcfbs: Integer; //���Ӵ�������
    prv_dzcfje: Real; //���Ӵ������
    Prv_Exists_Wsfcf: Boolean;
    //�����շ���ϸ�����Ƿ���δ�շѵĴ���
    Prv_IsUseXDCF: Boolean; //��ʹ��Э������
    Prv_SL_XDCF: Real; //Э������ҩƷ��ϸ����
    Prv_cflb: string; //��ǰ�շѴ������(01:��ҩ;02�в�;03�г�)
    Prv_Ljzje_fy, Prv_Ljzje_zf: Double; //�ۼƷ����ܽ����ۼ�Ӧ���ֽ���
    Prv_brxm_Up: string; //�ϴα��没������
    Prv_hjsybzbz_mz, Prv_hjsybzbz_mc: Boolean; //����ʹ��ת��ҩƷ��װ
    Prv_ShowCaption_kyh: Boolean; //��ʾ���û����Ѽ��Ż���Ϣ
    Prv_yy_cmd: Pchar; //��������
    Prv_sjfzfs_field: string; //�վݷ��鷽ʽ�ֶ���(czks,kdks)
    v_tchj, v_zfhj, v_pczje: Real;
    prv_mzhlength: Boolean; //�ж�����ŵ� ����λ��
    prv_dzcfkdysmc: string; //���Ӵ�������ҽ������

    v_fpdy_ls, v_psjgyx: Boolean;
    pro_yylx: Integer;
    v_jkje1, v_zhje1: Real;
    { Private declarations }
    procedure Proc_mzsj_sc; //�����վ�(�Ĵ�)
    procedure Proc_mzsj_sc_kb; //����հ��Զ��屨���վݣ��Ĵ���
    procedure Proc_mzsj_dxjs; //�����վݴ�����㹦��
    procedure Proc_mzsj_sc_js; //�Ĵ������վ�(��������,�ִ��ÿ��ҽ���)
    procedure Proc_mzsj_sx_js; //���������վ�(��������,�ִ��ÿ��ҽ���)
    procedure Proc_mzsj_999999; //�Զ����ʽ
    procedure Proc_mzsj_sx; //�����վ�(����)
    procedure Proc_mzsj_sx3d; //�����վ�(��������)
    procedure Proc_mzsj_sx_htqfybjy; //�����վ�(������̨�����ױ���Ժ)
    procedure Proc_mzsj_xj; //�����վ�(�½�)
    procedure Proc_mzsj_jx; //�����վ�(����)
    procedure Proc_mzsj_hb1; //�����վ�(������ʽһ)
    procedure Proc_mzsj_hb2(const v_ph: string); //�����վ�(������ʽ��)
    procedure Proc_mzsj_hb3(const v_ph: string); //�����վ�(������ʽ��)
    procedure Proc_mzsj_xz; //�����վ�(����)
    procedure Proc_mzsj_gs1; //�����վ�(����)
    procedure Proc_AddMB(bh: Integer); //ͨ��bh,���봦��ģ��
    procedure Proc_fydm_select; //ѡ��һ������
    procedure Proc_mzsj_sc_b; //�����վ�(�Ĵ�:��Ʊ)
    procedure Proc_mzsj_hb_b; //�����վ�(����:��Ʊ)
    procedure proc_upsjbh_dx; //�����վݺ�(����)
    procedure proc_keydown_F4;
    procedure proc_Replicate_fymx(const v_cs: Integer); //ĳ��Ŀ�ظ����������ϸ
    procedure proc_UpdateName(const v_brxm: string); //��������
    function proc_dzcfsh: Boolean; //���Ӵ������
    function Func_IsExists_cfbh(v_cfbh: string): Boolean; //��鴦���Ƿ��Ѿ��ڵ�ǰ������ϸ��
    function func_get_fyje(v_FieldName: string): TRecHjje_hjbs; //���ظ���qry_fymx���ݼ�sfbz=1��ָ���ֶ�ֵ�ϼ�
    procedure proc_tj_jylfyhj(lb, v_cfbh: string); //������Ӵ������ֹ�������ͳ����Ը�����
    procedure proc_ts_gstc(v_tmh: string); //��ʾ�����Ƿ�������������ͳ��
    function func_save_zhsb(mz_tmh: string; aRecHjje_hjbs: TRecHjje_hjbs): Boolean; //�����籣����
    function proc_up_sjzf(_tmh, _ph: string): Boolean; //�Զ��վ�����
  public
    //Getje,GetDuocf, Getcfbh, msstr: String;
    mz_zje: Real; //�����շѲ��˷����ܶ�
    mz_fysl: Real; //��������
    mz_fydj: Real; //���õ���
    mz_ph: string; //����
    mz_tmh: string; //�����
    mz_brxm: string; //��������
    mz_brxm_List: string; //δ�տ��
    //    mz_brlb: string; //�������
    mz_fylb: string; //���˷������
    mz_fylbmc: string; //���˷����������
    mz_fyzfbl: Real; //���˷����ܶ��Ը�����
    mz_dxdm: string; //�����շ���Ŀ�������
    mz_sjbh: string; //�����վݱ��
    mz_sfcs: integer; //�շѴ���
    mz_fydm: string; //������ô���
    mz_fymc: string; //�����������
    mz_dymc: string; //������Ŀ��ӡ����
    mz_jkje: Real; //�����շѲ��˽�����
    mz_zhje: Real; //�����շѲ����һؽ��
    mz_cfje: Real; //�������
    mz_sfbz: Real; //�����շ���Ŀ����*����
    mz_sfbz1: Real; //�����շ���Ŀ�շѵ���
    mz_ssje: Real; //�����շ���Ŀʵ�ս��
    mz_cfbh: string; //�����շѴ������
    mz_jzdw: integer; //�����շѼ��ʵ�λ
    mz_jzdwpym: string; //�����շѼ��ʵ�λƴ����
    mz_jzdwmc: string; //�����շѼ��ʵ�λ����
    mz_sffs: integer;
    //1 ��ʾ�����շ� 2 ��ʾ��Ŀ�շ� 3 ��ʾ��ҩ�շ�  4�շѴ������շ�;
    mz_kdks: string; //��������
    mz_kdksmc: string; //������������
    mz_kdkspym: string; //��������ƴ����
    mz_kdys: string; //����ҽ��
    mz_kdysmc: string; //����ҽ������
    mz_kdyspym: string; //����ҽ��ƴ����
    mz_czks: string; //��ұ����
    mz_czksmc: string; //��ұ��������
    mz_czkspym: string; //��ұ����ƴ����
    mz_czys: string; //��ұҽ��
    mz_czysmc: string; //��ұҽ������
    mz_czyspym: string; //��ұҽ��ƴ����
    mz_srzt: string; //����״̬
    yxje20: boolean; //��Ч���Ϊ0��
    Pub_xjbz: boolean; //�ֽ��˱�־
    jy_ynzgkbz: Boolean; //����Ժ��ְ������־
    //���û�Ԥ�����ܷ��á�ʣ����  ,Ӧ�տ����
    yjje, zfy, syje, yskje: Real;

    mscfid: string; //���Դ���ID��
    sjbhqh, sjbhzh, sjbhzh_real {ʵ�ʵ��վ�ֹ��}: integer;
    //������ӡ�׺�, ֹ��
    mz_cfjl: Real; //��ҩ�Ĵ�������
    mz_fylbsfbz: boolean;
    //���������ȡ�շѱ�׼��־ Ture  ybbz ,false sfbz

//    save_sb: Boolean; //�籣����ɹ�
    Pub_Is_sbsf: Boolean; //�Ƿ�Ϊ�籣�շ�
    pub_is_zhsb: boolean; //�ۺ��籣�շ�
    Pub_IsIni: Boolean; //�ӿڷ�������ʼ����־
    Pub_brxm_sb: string; //�籣��������
    posh: string; //����POSѡ���
    { Public declarations }

    procedure Proc_YYbj_zl(jkje, zhje: real);
    procedure jkkd_hd;
    procedure WriteJkkData;
  end;
var
  frm_mzsf: Tfrm_mzsf;
  tfrc, zfrc: Integer;
  tfje, zfje, fybl: Real; // ���￨�û��շ���Ŀ�Żݱ���fybl
  mzfybl: string; // �Żݱ�����¼�ֶ�����
  ypmcxg: Boolean = False; //�޸�ҩƷ���Ƶ�����Ӧ��ҩƷ
  sfyksgs: Boolean = False; //�շ���Ŀ�Ƿ��п��ҹ���
  pub_mzsf_bl: Boolean = False; //���ڲ�¼״̬(True: ��;False: ��)

  pub_czwz, pub_qywz: string; //����λ�� ,ȡҩλ��

  yybjUnit: TYybj; //�������۵�Ԫ

function func_fyje_Calc(ado: TCustomADODataSet): TInfor_fy; //�����ܽ�ʵ���ܽ��վ�����
implementation

uses p_dm, p_repo_hjsf, p_main, p_func, p_brjk, p_hymaxg, p_masrck, p_srfsz, p_fylb,
  p_mzjsbb, P_cfjl, P_xdcf_xt, p_wait, p_repo_mzsj, p_help_html, p_mzsb,
  p_cx_kyhjbxx, p_pos, p_posxz, softpos, superobject, PosService, BASE64, bsjk,
  p_mzsf_print_service;  //P_sb_dl

{$R *.DFM}
const
  con_hjsybz_begin_mz = 1; //����(��ҩ�ͳ�ҩ)ʹ�ð�װ��־λλ��
  con_hjsybz_begin_mc = 2; //����(��ҩ)ʹ�ð�װ��־λλ��

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
  //�籣����
  _jsxx := true;
  try
    //����ɹ�����ʾ�籣�Ľ��������������Ա�鿴�Ƿ���Ҫ��ȡ�ֽ�
    if func_pub_sbjs('�������', mz_ph) then
    begin
      func_pub_sbjs('����ȷ��', mz_ph);
    end
    else
      _jsxx := false;
  except
    _jsxx := false;
  end;
  try
    //�籣������ʾ�Ƿ���ȷ��Ӱ������Ƿ�ɹ�
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
      begin //�����������뵽��
        qry_fymx.FieldByName(v_FieldName).AsFloat := realtomoney1(qry_fymx.FieldByName(v_FieldName).AsFloat);
      end
      else
        if pub_sf5or1 then
        begin //�����շ��������뵽Ԫ����5��
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
    if (qry_dzbl_cfmx['yytj'] = '��ע') or (qry_dzbl_cfmx['yytj'] = '��ע')
      or (qry_dzbl_cfmx['yytj'] = '����') then
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
  proc_get_sjbh; //ȡ�����վݱ��
end;

procedure Tfrm_mzsf.proc_fpdy;
var
  lists: TStringList;
  ZrTxt: string;
  vStr: string;
begin
  //  �䵱ɽ,���ԷѲ���,����ӡ��Ʊ
  if (pub_yydm = '0175') and (pos('�Է�', brlb.Text) = 0) then
  begin
    if Application.MessageBox('���ԷѲ����Ƿ��ӡ��Ʊ��', '��ʾ', MB_YESNO + MB_ICONQUESTION) = IDNO then
    begin
      proc_get_sjbh;
      exit; //����籣���˲���Ʊ
    end;
  end;
  if (pub_yydm = '0244') or (pub_yydm = '0250') then //��˼��Ʊ�ӿ�
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
        ZrTxt := '<&Ʊ��><&Ʊ��ͷ>�����=' + qry_pub.FieldByName('tmh').AsString + char(VK_TAB)
          + '��Ա���=' + qry_pub.FieldByName('fylb').AsString + char(VK_TAB)
          + '�����=' + dm_data.qry_pub.FieldByName('tmh').AsString + char(VK_TAB)
          + '����=' + dm_data.qry_pub.FieldByName('brxm').AsString + char(VK_TAB)
          + '����=' + qry_pub.FieldByName('ksmc').AsString + Char(VK_TAB)
          + '</&Ʊ��ͷ><&�շ���Ŀ>';
        while not DM_data.qry_pub.Eof do
        begin
          ZrTxt := ZrTxt + '�շ���Ŀ=' + dm_data.qry_pub.FieldByName('kmdm').AsString + char(VK_TAB)
            //          + '�Ʒ�����=' + dm_data.qry_pub.FieldByName( 'fysl' ).AsString + char( VK_TAB )
//          + '�շѱ�׼=' + dm_data.qry_pub.FieldByName( 'fydj' ).AsString + char( VK_TAB )
          + '���=' + dm_data.qry_pub.FieldByName('sszje').AsString + char(VK_TAB);
          DM_data.qry_pub.Next;
        end;
        ZrTxt := ZrTxt + '</&�շ���Ŀ></&Ʊ��>';
        PZrPj_dy(PChar(ZrTxt), 1, '14004003', '�ޱ�ע', PChar(vStr));
        if Pos('�ɹ�', vStr) > 0 then
        begin
          lists := TStringList.Create;
          ExtractStrings([','], [], Pchar(vStr), lists);
          DM_data.qry_pub.Close;
          DM_data.qry_pub.SQL.Text := 'insert into sys_bsjk(pjmc,pjlbh,pjh,je,zch) values (:pjmc,:pjlbh,:pjh,:je,:zch)';
          DM_data.qry_pub.Parameters.ParamByName('pjmc').Value := '���﷢Ʊ';
          DM_data.qry_pub.Parameters.ParamByName('pjlbh').Value := lists.Strings[0];
          DM_data.qry_pub.Parameters.ParamByName('pjh').Value := lists.Strings[1];
          DM_data.qry_pub.Parameters.ParamByName('je').Value := StrToFloat(lists.Strings[2]);
          DM_data.qry_pub.Parameters.ParamByName('zch').Value := lists.Strings[3];
          DM_data.qry_pub.ExecSQL;
        end
        else
        begin
          Application.MessageBox(PChar('����:' + vStr), '��Ʊ��ӡ����', MB_ICONHAND);
        end;
      end
      else
      begin
        Application.MessageBox('δ�ܲ�ѯ���ɷ���Ϣ��', '��ʾ��Ϣ', MB_ICONHAND);
      end;
      qry_pub.Next;
    end;
  end
  else
    if pub_yydm = '0061' then //��������һƱ����
      proc_mzjsdy
    else
      if (pub_mzsfsfypdd >= 1) then
      begin
        if pub_mzsfsfqyjs then //��������ִ��ÿ��ҽ���
          Proc_mzsj_dxjs
        else //һƱ���
          fpdy
      end
      else
        Application.MessageBox('��ʾ:�����վ�Ʊ�ݴ�ӡ��Ŀ�����ô���,���޸ĺ�����!', '��ʾ', MB_OK + MB_ICONINFORMATION);
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
        if Trim(qry_fymx.FieldByName('fymc').AsString) = '������' then
        begin
          case Application.MessageBox('�Ƿ���ȡ�������ã�', '��ʾ', MB_YESNO
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
        if Trim(qry_fymx.FieldByName('fymc').AsString) = '������' then
        begin
          case Application.MessageBox('�Ƿ���ȡ�������ã�', '��ʾ', MB_YESNO
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
      qry_fymx.FieldByName('sffs').AsInteger := 0; //������Ӳ����շ�0
      qry_fymx.FieldByName('brlb').AsString := mz_fylb;
      qry_fymx.FieldByName('fylb').AsString := mz_fylb;
      //������Ӵ�������ҽ��Ϊ�յ����Ĭ�ϴ���ҽ��Ϊ����ҽ��
      if Trim(qry_fymx.FieldByName('czys').AsString) = '' then
        qry_fymx.FieldByName('czys').AsString := '0000';
      qry_fymx.FieldByName('ph').AsString := mz_ph;
      qry_fymx.Post;
      qry_fymx.Next;
    end;
    //��ƺ������ҽԺ
    if pub_yydm <> '0137' then
      proc_get_dzcfmx;
    proc_kyhjs; //�����Ż�
    aRecHjje_hjbs := func_get_fyje('sszje');
    qry_fymx.Locate('mscf', '1', []);
//    zje1.Caption := FloatToStr(aRecHjje_hjbs.Hjje);
    zje.Caption := zje1.Caption;
    if checkbox2.Checked and mzsfsfsyyy then
    begin
      if StrToFloat(Trim(zje1.Caption)) > 0 then
      begin
        try
          //������ҽԺ������20130709...�޽�������ҽԺ�˴������� 20131205
          if (pub_yydm <> '0091') and (pub_yydm <> '0046') then
            yybjUnit.yybj(zje1.Caption, p_func_yybj.AllInCost);
        except
        end;
      end;
    end;
    //��ѯƤ�Խ��
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
          if Trim(qry_psjg.FieldByName('psjg').AsString) = '����' then
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
   mz_brlb:String; ���˼�¼��ʽ�� ���ϼ��ʼǷѣ������ֽ�Ƿ�
   mz_fylb:String  ���˷�������籣�����ѣ����ʣ���غ�ͬ��
   mz_fyzfbl:Real  ���˷����ܶ��Ը�����
   mz_dxdm:String  �����շ���Ŀ�������
   mzfybl:String   �Żݱ�����¼�ֶ�����
   fybl:Real       ���￨�û��շ���Ŀ�Żݱ���
   yjje,zfy,syje,ysk:Real���û�Ԥ�����ܷ��á�ʣ����
   Pub_xjbz:Boolean          ���û���־  False ʱΪ���û�
   Prv_zfhj:Real;   //���β��˺ϼƽ��
   Prv_kyh_syje:Real;    //��ȡ���û���ʣ����
   ��mzsf_mzfymx_ls �м�����brlb  �ֶ� ������� ����¼�������õĲ������
   �ڽ�mzsf_mzfymx_ls �е�����ת����ʽ����mxsf_mzfymxʱ ��brlb,�����ݸ���fylb��
   ����Ҫע�����:
   a.һ����ʣ���վ�С�������շ���ĿҪʹ�õ��վݡ�
   b.���û�����֧����¼��ķ�����ϸ��
   c.���ǵ���������ϸ�����ۿ��ֶ�ʱ�������Ȱ���ϸ�ۿۣ����ܶ��ۿۣ�
   d.ҽԺ�����ð������������ܶ��ۿۣ��������: ֻ�ڳ����Ͽ���,������[�����������]����
   e. �����Ƿ��������뿪�ؽ���ʵ�ս���
  }
  if Trim(mz_fylb) = '' then
  begin
    Application.MessageBox('û��ѡ��������������ѡ��!!', '��ʾ', 0 + 48);
    Exit;
  end
  else
  begin
     //����������ҽԺ���37ΪԺ��ְ�����������:��ҩ�����Է�
    if (pub_yydm = '0015') and (mz_fylb = '37') then
    begin
      jy_ynzgkbz := True;
    end;
  end;
  sjsysl := 1;
  Prv_zfhj := 0.00; //���β����Ը��ϼƽ��
  Prv_kyh_syje := syje; //��ȡ���û���ʣ����
  mz_zje := 0.00; //���β��˷����ܶ�
  qry_fymx.DisableControls;
  qry_fymx.First;
  v_ksdm := qry_fymx.FieldByName(Prv_sjfzfs_field).AsString;
  while not qry_fymx.Eof do
  begin
    qry_fymx.Edit;
    qry_fymx.FieldByName('fylb').AsString := mz_fylb;
    if trim(mzfybl) <> '' then //����ϸ���ʵİ���ϸ�ۿ� �� ���ܶ��ۿ�
      qry_fymx.FieldByName('sszje').AsFloat :=
        realtomoney2(qry_fymx.FieldByName('fyzje').AsFloat *
        (100 - qry_fymx.FieldByName(mzfybl).AsFloat) / 100) * (mz_fyzfbl / 100)
    else
      qry_fymx.FieldByName('sszje').AsFloat :=
        realtomoney2(qry_fymx.FieldByName('fyzje').AsFloat) * (mz_fyzfbl / 100);
    //    if mzsfsfsswr then //�Ƿ���������
    //      qry_fymx['sszje'] := FloatToStr(realtomoney1(qry_fymx['sszje']))
    //    else
    //      if pub_sf5or1 then //�յ�1Ԫ��5��
    //        qry_fymx['sszje'] := FloatToStr(func_CastMoneyTo5(realtomoney1(qry_fymx['sszje'])))
    //      else
    //        qry_fymx['sszje'] := formatfloat('0.00', qry_fymx['sszje']);
        //���㿨�Ͻ���Ƿ�����֧�����η���
    if qry_fymx.FieldByName('sfbz').AsBoolean then
    begin
      Prv_zfhj := Prv_zfhj + qry_fymx.FieldByName('sszje').AsFloat;
      mz_zje := mz_zje + qry_fymx.FieldByName('fyzje').AsFloat;
    end;
    yskje := 0;
    if not Pub_xjbz then //��Ա
    begin
      if (Prv_kyh_je - Prv_zfhj >= 0) then //���Ͻ���㹻֧��
      begin
        yskje := qry_fymx.FieldByName('sszje').AsFloat;
      end
      else // ������,�¿�����
        if (qry_fymx.FieldByName('sszje').AsFloat >= (Prv_zfhj - Prv_kyh_je)) then
        begin
          //��ӿ����ж��Ƿ������ֽ���
//          if prv_hyk_bfxz then
//          begin
//            yskje := qry_fymx.FieldByName('sszje').AsFloat - (Prv_zfhj - Prv_kyh_je);
//          end
//          else
          begin
            Application.MessageBox('��Ա�����㣬���ȳ�ֵ��', 'ϵͳ��ʾ',
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
      //�����վ��Ƿ񳬳���ʣ���վ�
      v_ksdm := v_ksdm + ',' + Trim(qry_fymx.FieldByName(Prv_sjfzfs_field).AsString);
    end;
  end;
  qry_fymx.EnableControls;
  qry_fymx.Edit;
  qry_fymx.Post;
  aRecHjje_hjbs := func_get_fyje('sszje'); //��ȡ�ϼƽ��
  mz_ssje := aRecHjje_hjbs.Hjje;
  //���㱾�η����ܽ��
  zje.caption := FormatFloat('0.00', Prv_zfhj); //����Ӧ����
  zje1.caption := FormatFloat('0.00', mz_zje); //�����ܽ��
//  if checkbox2.Checked and mzsfsfsyyy then
//  begin
//    yybjUnit.yybj(zje.caption, p_func_yybj.AllInCost);
//  end;
  if Prv_ShowCaption_kyh then //��Ա��
  begin
    if Prv_kyh_je >= mz_ssje then
    begin
      LB_khy.Caption := Trim(sp_cx_kyh.FieldByName('brxm').Asstring)
        + ',Ԥ���ܶ�:' + FormatFloat('0.00', yjje)
        + ',ʣ����:' + FormatFloat('0.00', Prv_kyh_je); // - mz_ssje
    end
    else
    begin
      LB_khy.Caption := Trim(sp_cx_kyh.FieldByName('brxm').Asstring)
        + ',Ԥ���ܶ�:' + FormatFloat('0.00', yjje)
        + ',ʣ����:' + FormatFloat('0.00', 0)
        + ',�ۿ�:' + FormatFloat('0.00', Prv_kyh_je)
        + ',�ֽ�:' + FormatFloat('0.00', mz_ssje - Prv_kyh_je)
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
    Application.MessageBox('�վ�ʣ����������!�뱣����������վ��ټ��������շ�!', 'ϵͳ��ʾ', MB_OK + MB_ICONSTOP);
    qry_fymx.Last;
    qry_fymx.Delete;
    qry_fymx.First;
    aRecHjje_hjbs := func_get_fyje('sszje');
    mz_ssje := aRecHjje_hjbs.Hjje;
    syje := syje - mz_ssje;

//    if Pub_Is_sbsf then //ҽ��
//      LB_khy.Caption := Pub_brxm_sb + ',ʣ���' + FormatFloat('0.00', Prv_kyh_syje)
//    else
    if Prv_ShowCaption_kyh then //���û�
      LB_khy.Caption := Trim(sp_cx_kyh.FieldByName('brxm').AsString)
        + ',Ԥ���ܶ' + FormatFloat('0.00', yjje)
        + ',ʣ���' + FormatFloat('0.00', syje)
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
  // �η��ô���Ϊ�����Ŀ���룬���˴����ڷ��ô�����еķ��ñ���Ϊ0
  // ��Ҫ���˴����Ŀ�������ķ�����Ŀ�Ƿ��з��ñ�����>0�������
  // �з��ñ�������0�ķ�����Ŀ���򰴴˽����Żݼ��㣬Ϊ0����ԭ�ۼ���
  // ���˴�����ô����� ���ô�����еķ��ñ�������0�����Դ����Ŀ���ñ���
  // ���㣬���ڰ��˴����Ŀ�����ķ�����Ŀ���ñ�������
  if Trim(mzfybl) <> '' then
    //�л�Ա��
  begin
    if mz_dxdm = '50' then //�������
    begin
      if Trim(mzfybl) <> '' then
      begin
        if qry_fymx.FieldByName(mzfybl).AsFloat > 0 then
          qry_fymx['ssje'] := realtomoney2(qry_fymx.FieldByName('FYzje').AsFloat
            * (100 - qry_fymx.FieldByName(mzfybl).AsFloat) / 100)
        else //�����Ŀ�ķ��ñ���Ϊ0 ���������Ŀ�µķ�����Ŀ���ñ�����Ϊ0�ļ���
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
              if FieldByName(mzfybl).AsFloat > 0 then //�������Żݱ���
                qry_fymx['ssje'] := qry_fymx['ssje'] +
                  FieldByName('sfbz').AsFloat * (100 - FieldByName(mzfybl).AsFloat)
                  / 100 * qry_fymx['fysl']
              else //û�������Żݱ���
                qry_fymx['ssje'] := qry_fymx['ssje'] +
                  FieldByName('sfbz').AsFloat * qry_fymx['fysl'];
              next;
            end;
          end;
        end;
      end;
    end
    else
      //���ô��벻�Ǵ����Ŀ����
    begin
      if qry_fymx.FieldByName('FYzje').AsString <> '' then
      begin
        qry_fymx['ssje'] := realtomoney2(qry_fymx.FieldByName('FYzje').AsFloat *
          (100 - qry_fymx.FieldByName(mzfybl).AsFloat) / 100);
      end;
    end;
  end
  else //�޻�Ա��
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
    Application.MessageBox('��ʾ:����ϵͳά��������ѡ�������վݴ�ӡ����!', '��ʾ', MB_OK + MB_ICONINFORMATION);
    Abort;
  end;
  //�ж��Ƿ�ʹ�ô�ӡ������ʽ��ȡ�ô�ӡ�����
  v_PrinterIndex_old := Printer.PrinterIndex;
  v_PrinterIndex_new := func_GetPrinterIndex(2, v_IsPrinterJoin);
  if v_IsPrinterJoin then
    Proc_ChangePrinter(v_PrinterIndex_new, true);
  if (pub_mzsjlx = '010101') or (pub_mzsjlx = '010102') then //��ӡ�Ĵ��վ�
    Proc_mzsj_sc
      //-------------------------20100827�����޸�----------------------
  else
    if pub_mzsjlx = '010103' then //��ӡ�Ĵ��վ�(��Ʊ)
      Proc_mzsj_sc_b
    else
      if pub_mzsjlx = '020101' then //��ӡ�����վ�
        Proc_mzsj_sx
      else
        if pub_mzsjlx = '020102' then //��ӡ�����վ�(����)
          Proc_mzsj_sx3d
        else
          if pub_mzsjlx = '020103' then //��ӡ�����վ�(��̨�����ױ���Ժ)
            Proc_mzsj_sx_htqfybjy
          else
            if pub_mzsjlx = '030101' then //��ӡ�½��վ�
              Proc_mzsj_xj
            else
              if pub_mzsjlx = '040101' then //��ӡ�����վ�
                Proc_mzsj_jx
              else
                if pub_mzsjlx = '050101' then //��ӡ�����վݸ�ʽһ
                  Proc_mzsj_hb1
                else
                  if pub_mzsjlx = '050102' then //��ӡ�����վݸ�ʽ��(������ҽԺ0124)
                    Proc_mzsj_hb2(mz_ph)
                  else
                    if pub_mzsjlx = '050103' then //��ӡ����������������Ʊ��
                      Proc_mzsj_hb3(mz_ph)
                    else
                      if pub_mzsjlx = '050104' then //��ӡ�����վݸ�ʽ(��Ʊ)
                        Proc_mzsj_hb_b
                      else
                        if pub_mzsjlx = '060101' then //��ӡ�����վ�
                          Proc_mzsj_xz
                        else
                          if pub_mzsjlx = '070101' then //��ӡ�����վݸ�ʽ��
                            Proc_mzsj_gs1
                          else
                            if pub_mzsjlx = '999999' then //��ӡ�Զ��屨���ʽ
                              Proc_mzsj_sc_kb;

  //��ԭԭ��Ĭ�ϴ�ӡ��
  if v_IsPrinterJoin then
    Proc_ChangePrinter(v_PrinterIndex_old, true);
  //--------------------------------------------------------------
  qry_fymx.Filter := '';
  qry_fymx.Filtered := False;
  proc_get_sjbh; //ȡ�����վݱ��
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
      Application.MessageBox(Pchar('������ʾ:ҩƷ[' +
        Trim(qry_xdcf_mx.FieldByName('ypmc').AsString) + '],�ڹ����ⷿû�п��������ȷ!'),
        '������ʾ', 16)
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
  //    if Trim( dm_data.qry_pub.FieldByName( 'dldm' ).asstring ) = '1101' then //�����շѲ������չҺŷ�
  //    begin
  //      Application.MessageBox( Pchar( '������ʾ:�����շѲ������չҺŷ�,�뵽�ҺŴ�����ȡ(��ݼ�:F2)' ),
  //        '������ʾ', 16 );
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
  v_Infor_fy := func_fyje_Calc(qry_fymx); //�����ܽ�ʵ���ܽ��վ�����
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
    kyhsfbz.Caption := '����֧�����:' + format('��%3.2f', [mz_sfbz])
  else
    kyhsfbz.caption := '';
end;

procedure Tfrm_mzsf.Proc_mzsj_sc_kb;
var
  v_Infor_fy: TInfor_fy;
begin
  qry_fymx.Sort := 'sjbh ASC';
  v_Infor_fy := func_fyje_Calc(qry_fymx); //�����ܽ�ʵ���ܽ��վ�����
  Print_mzsj_sc_kb(qry_fymx, Prv_ShowCaption_kyh, pub_is_zhsb, v_Infor_fy.ssje, Prv_kyh_je - v_Infor_fy.ssje,
    v_Infor_fy.sjsl, v_Infor_fy.tczf, v_Infor_fy.xjzf, v_Infor_fy.zhzf, v_Infor_fy.zhye);
  if Prv_ShowCaption_kyh then
    kyhsfbz.Caption := '����֧�����:' + format('��%3.2f', [mz_sfbz])
  else
    kyhsfbz.caption := '';
end;

procedure Tfrm_mzsf.Proc_mzsj_sc_b; //20100827�������----------------------
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
      sbjk_je := '�籣�ϼ�' +
        ' �˻�֧��' + format('%0.2f', [qry_pub.FieldByName('zhzf').AsFloat]) +
      ' ͳ��֧��' + format('%0.2f', [qry_pub.FieldByName('tczf').AsFloat]) +
      ' �ֽ�֧��' + format('%0.2f', [qry_pub.FieldByName('xjzf').AsFloat]);
    end;
  end
  else
  begin
    sbjk_je := '';
  end;
  qry_fymx.Sort := 'sjbh ASC';
  v_Infor_fy := func_fyje_Calc(qry_fymx); //�����ܽ�ʵ���ܽ��վ�����
  if pub_yydm = '0046' then //�޽���ҽԺ
  begin
    Print_mzsj_sc_b(qry_fymx, mz_brxm, Prv_ShowCaption_kyh, pub_is_zhsb, v_Infor_fy.fyje,
      v_Infor_fy.ssje, Prv_kyh_je - v_Infor_fy.ssje, v_Infor_fy.sjsl);
  end
  else
    if pub_yydm = '0015' then //��������ҽԺ
    begin
      Print_mzsj_sc_jy_b(qry_fymx, mz_brxm, Prv_ShowCaption_kyh, pub_is_zhsb, v_Infor_fy.fyje,
        v_Infor_fy.ssje, Prv_kyh_je - v_Infor_fy.ssje, v_Infor_fy.sjsl);
    end
    else //������ҽԺ,����\��Ԫ���ۿ�ҽԺ
      if (pub_yydm = '0003') or (pub_yydm = '0051') or (pub_yydm = '0196') or (pub_yydm = '0223') then
      begin
        Print_mzsj_sc_syy_b(qry_fymx, mz_brxm, Prv_ShowCaption_kyh, pub_is_zhsb, v_Infor_fy.fyje,
          v_Infor_fy.ssje, Prv_kyh_je - v_Infor_fy.ssje, v_Infor_fy.sjsl);
      end
      else
      begin //����ҽԺʹ����̨������ҽԺ��ʽ,��:ͨ��������ҽԺ��
        Print_mzsj_sc_st_b(qry_fymx, mz_brxm, Prv_ShowCaption_kyh, pub_is_zhsb, v_Infor_fy.fyje,
          v_Infor_fy.ssje, Prv_kyh_je - v_Infor_fy.ssje, v_Infor_fy.sjsl);
      end;
  if Prv_ShowCaption_kyh then
    kyhsfbz.Caption := '����֧�����:' + format('��%3.2f', [mz_sfbz])
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
  proc_get_sjbh; //ȡ�����վݱ��
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
  proc_get_sjbh; //ȡ�����վݱ��
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
  proc_get_sjbh; //ȡ�����վݱ��
end;

procedure Tfrm_mzsf.Proc_mzsj_sx;
var
  ssje_hj, ssje, fpje: Real; //ʵ�ʽ���ܶ�,Ҫ��ӡ�ķ�Ʊ�ϵ��ܽ��
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

    frm_repo_hjsf.QRL_dxje_sx.Caption := 'ʵ��:��' + NumberToMoney(ssje);
    frm_repo_hjsf.QRL_xxje_sx.Caption := format('��%3.2f', [ssje]);
    frm_repo_hjsf.QRL_czy_sx.Caption := pub_czydm + '#' + Copy(pub_czyxm, 1, 2);
    frm_repo_hjsf.QRL_yymc_sx.caption := pub_yymc;
    frm_repo_hjsf.QRDB_sjbh_sx.DataSet := qry_fymx;
    frm_repo_hjsf.QRDB_brxm_sx.DataSet := qry_fymx;
    frm_repo_hjsf.QRDB_ksmc_sx.DataSet := qry_fymx;
    frm_repo_hjsf.QRDB_fydymc_sx.DataSet := qry_fymx;
    frm_repo_hjsf.QRDB_sfrq_sx.DataSet := qry_fymx;
    frm_repo_hjsf.QRDB_cfbh_sx.DataSet := qry_fymx;
    if pub_yydm = '0137' then //��ƺ��ҽԺ��Ԥ����ʽ
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
  ssje, fpje: Real; //ʵ�ʽ���ܶ�,Ҫ��ӡ�ķ�Ʊ�ϵ��ܽ��
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
    frm_repo_hjsf.QRL_kyhsfbz_sx3d.Caption := '�����:' + format('��%3.2f', [Prv_kyh_je - ssje]);
  frm_repo_hjsf.QRDB_cfbh_sx3d.DataSet := qry_fymx;
  frm_repo_hjsf.QRDB_sjbh_sx3d.DataSet := qry_fymx;
  frm_repo_hjsf.QRDB_brxm_sx3d.DataSet := qry_fymx;
  frm_repo_hjsf.QRDB_ksmc_sx3d.DataSet := qry_fymx;
  frm_repo_hjsf.QRDBText3.DataSet := qry_fymx;
  frm_repo_hjsf.QRDBText4.DataSet := qry_fymx;
  frm_repo_hjsf.QRDB_sfrq_sx3d.DataSet := qry_fymx;
  frm_repo_hjsf.QuickRep_sx3d.DataSet := qry_fymx;
  if pub_yydm = '0137' then //��ƺ��ҽԺ��Ԥ����ʽ
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
  ssje, fpje: Real; //Ҫ��ӡ�ķ�Ʊ�ϵ��ܽ��
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
    frm_repo_hjsf.QRL_dxje_xj.Caption := '��' + NumberToMoney(fpje);
    frm_repo_hjsf.QRL_czy_xj.Caption := pub_czydm + '#' + copy(pub_czyxm, 1, 2);
    frm_repo_hjsf.QRL_yymc_xj.caption := pub_yymc;
    if mz_fylb <> '01' then
    begin
      kyhsfbz.Caption := '��֧��:' + format('��%3.2f', [mz_sfbz]);
      frm_repo_hjsf.QRL_kyhsfbz_xj.Caption := 'Ӧ��:' +
        format('��%3.2f', [fpje]) + 'ʵ��:' + format('��%3.2f', [ssje]);
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
    //xp ����a.ph��ѯ����ֶ�
    SQL.Text := 'select a.tmh,a.brxm,a.brxb,a.brnl,a.fydj,a.sszje,a.czks,a.sjbh,a.sfrq,a.kdks,a.ph,' +
      ' b.mc czksmc,c.mc kdksmc,d.fydm,d.dymc,convert(varchar(30),' + #39 + #39 + ') as gg,' +
      ' a.fysl,a.fydj,convert(varchar(50),' + #39 + #39 + ') ypmc,cast(1 as bit) lb,a.cfbh,g.mc sfczymc,d.dw' +
      ' from mzsf_mzfymx_ls a left join sys_ksdm b on a.czks=b.dm ' +
      ' left join sys_ksdm c on a.kdks=c.dm ' +
      ' inner join sys_kjsfxm d on a.fydm=d.fydm ' +
      ' inner join sys_czy g on a.sfczy=g.dm ' +
      ' where a.sfbz=1 and a.ph=' + #39 + v_ph + #39 + ' and d.cflb<>' + #39 + '��ҩ��' + #39 +
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
      ' where a.sfbz=1 and a.ph=' + #39 + v_ph + #39 + ' and d.cflb<>' + #39 + '��ҩ��' + #39 +
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
  v_Infor_fy := func_fyje_Calc(qry_fymx); //�����ܽ�ʵ���ܽ��վ�����
  Print_mzsj_sc_jy_b(qry_fymx, mz_brxm, Prv_ShowCaption_kyh, pub_is_zhsb, v_Infor_fy.fyje,
    v_Infor_fy.ssje, Prv_kyh_je - v_Infor_fy.ssje, v_Infor_fy.sjsl);
  if Prv_ShowCaption_kyh then
    kyhsfbz.Caption := '����֧�����:' + format('��%3.2f', [mz_sfbz])
  else
    kyhsfbz.caption := '';
end;

procedure Tfrm_mzsf.Proc_mzsj_jx;
var
  ssje, fpje: Real; //Ҫ��ӡ�ķ�Ʊ�ϵ��ܽ��
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
  //�����վݺ�
  proc_save_fymx_ls;
  aRecHjje_hjbs := func_get_fyje('sszje');
  qthjbs := aRecHjje_hjbs.Hjbs;
  qthjje := aRecHjje_hjbs.Hjje;
  //1.HIS����
//  if pub_xyfckkqbz and (pub_xyfppm <> '') and (pub_xyfckppm <> '') then
//  begin
//    mz_brxm := pub_xyfppm + '|' + pub_xyfckppm;
//  end;
  save_cg := mzsf_up_brfymx(mz_tmh, mz_ph, pub_czydm, mz_brxm, qthjbs, qthjje);
  if save_cg = '1' then
  begin
    //��Ʊ������Դ�ĳ���ʽ��(2010-08-27����)
    qry_fymx.Close;
    qry_fymx.SQL.Text := 'select id,rtrim(tmh) tmh,rtrim(brxm) brxm,brxb,brnl,fylb,sjbh,rtrim(cfbh) cfbh,' +
      'fydm,fysl,fydj,fyzje,sszje,zkje,ghks,kdks,czks,kdys,czys,sfbz,tfbz,zfbz,sfczy,tfczy,zfczy,sfrq,tfrq,zfrq,jzbz,ph,' +
      'mscf,sffs,ybjzbh,isnull(yb_grzh,''0'') yb_grzh,brlb,zlid,czwz,isnull(hykxkje,0) hykxkje ' +
      'from mzsf_mzfymx where sfbz=1 and ph=:ph order by sjbh';
    qry_fymx.Parameters.ParamByName('ph').value := mz_ph;
    qry_fymx.Open;
    if qry_fymx.RecordCount <= 0 then
      save_cg := '���ؽ����쳣';
  end;
  if save_cg <> '1' then //his����ʧ��
  begin
    save_cg := '���ݴ洢ʧ��! ������!' + save_cg;
    MessageBox(Handle, PAnsiChar(save_cg), '��ʾ', MB_OK + MB_ICONERROR);
    if Prv_Exists_dzcf then
    begin
      //����շѹ���ʧ��,���ֶ��ع���ϸ������(2010-10-25����)
      DM_data.qry_pub.Close;
      DM_data.qry_pub.SQL.Text := 'update mzsf_mzfymx_ls set sfbz=0,ph=' + #39 + '' + #39 + ' where tmh=:tmh and ph=:ph';
      DM_data.qry_pub.Parameters.ParamByName('tmh').value := mz_tmh;
      DM_data.qry_pub.Parameters.ParamByName('ph').value := mz_ph;
      DM_data.qry_pub.ExecSQL;
    end;
    Abort;
  end
  else //his����ɹ�
  begin
    if pub_is_zhsb then
    begin
      try
        pub_is_zhsb := func_save_zhsb(mz_ph, aRecHjje_hjbs);
      except
        pub_is_zhsb := False;
      end;
      //�籣����ʧ�� (��ʱhis�ѳɹ����վݺ���ռ��)
      if not pub_is_zhsb then
      begin
        case Application.MessageBox('�籣����ʧ�ܣ��Ƿ�������㣿' + #13
          + 'ѡ���ǡ����������ֽ�ʽ���㣻' + #13
          + 'ѡ�񡾷񡿣�ֹͣ���������Զ������վ�', '��ʾ', MB_YESNO + MB_ICONQUESTION) of
          IDYES:
            begin
              pub_is_zhsb := False;
            end;
          IDNO:
            begin //���ϳɹ����������Ʊ��ӡ
              if proc_up_sjzf(mz_tmh, mz_ph) then
                Exit
              else //�Զ�����ʧ�ܣ����ԷѴ�ӡ��Ʊ
                pub_is_zhsb := False;
            end;
        end;
      end;
    end;
    //ȷ�ϴ����Զ���ӡ
    DM_data.qry_pub.Close;
    DM_data.qry_pub.SQL.Text := 'update xyf_yfckzdfy_zb set qrdybz=1 where tmh=' + #39 + mz_tmh + #39 + ' and dybz=0 and qrdybz=0';
    DM_data.qry_pub.ExecSQL;
    //�����������ܽ��
    v_pczje := 0.0;
    qry_fymx.First;
    while not qry_fymx.Eof do
    begin
      v_pczje := v_pczje + qry_fymx.FieldByName('sszje').AsFloat;
      qry_fymx.Next;
    end;
    qry_fymx.First;
    //��ӡ��Ʊ
    if not pub_mzsf_bl then //���ǲ���ģʽ
      proc_fpdy;
    //������д��
    if (Prv_tmh_fs = 5) and (pub_bdkh <> '') then
    begin
      Zddqjjk_Stop;
      sleep(1000);
      if MessageBox(Handle, '�˲����ǽ����������ߣ�����д���뽫����������д�����Ϸ���' +
        #13#10#13#10 + 'Ȼ������ȷ������ť', '��ʾ', MB_OKCANCEL +
        MB_ICONINFORMATION) = IDOK then
      begin
        WriteJkkData;
        MessageBox(Handle, 'д����ɣ�', '��ʾ', MB_OK +
          MB_ICONINFORMATION);
      end
      else
      begin
        MessageBox(Handle, 'д�������Ѿ�ȡ����', '��ʾ', MB_OK +
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
    MessageBox(Handle, '��ȡ������Ϣʧ�ܣ�', '����', MB_OK + MB_ICONSTOP);
    exit;
  end;
  SetLength(Exam, DM_data.qry_pub.RecordCount);
  for I := 0 to DM_data.qry_pub.RecordCount - 1 do
  begin
    New(Exam[i]);
    Exam[i].mz_HospName := Trim(DM_data.qry_pub.FieldByName('HospName').AsString); //�����������
    Exam[i].mz_HospOrgCode := Trim(DM_data.qry_pub.FieldByName('HospOrgCode').AsString); //���������֯��������
    Exam[i].mz_ConfirmDT := Trim(DM_data.qry_pub.FieldByName('ConfirmDT').AsString); //��������ʱ��
    Exam[i].mz_ExamNO := Trim(DM_data.qry_pub.FieldByName('ExamNO').AsString); //�����
    Exam[i].mz_ExamOffice := Trim(DM_data.qry_pub.FieldByName('ExamOffice').AsString); //�����������
    Exam[i].mz_PayType := Trim(DM_data.qry_pub.FieldByName('PayType').AsString); //ҽ�Ƹ��ʽ
    Exam[i].mz_SymptomName1 := Trim(DM_data.qry_pub.FieldByName('SymptomName1').AsString); //֢״����1
    Exam[i].mz_SymptomCode1 := Trim(DM_data.qry_pub.FieldByName('SymptomCode1').AsString); //֢״����1
    Exam[i].mz_ConfirmDT1 := Trim(DM_data.qry_pub.FieldByName('ConfirmDT1').AsString); //�������1
    Exam[i].mz_DiseaseName1 := Trim(DM_data.qry_pub.FieldByName('DiseaseName1').AsString); //�����������1
    Exam[i].mz_DiseaseCode1 := Trim(DM_data.qry_pub.FieldByName('DiseaseCode1').AsString); //������ϴ���1
    Exam[i].mz_MorbiDT1 := Trim(DM_data.qry_pub.FieldByName('MorbiDT1').AsString); //��������ʱ��1
    Exam[i].mz_SymptomDT1 := Trim(DM_data.qry_pub.FieldByName('SymptomDT1').AsString); //֢״����ʱ��1
    Exam[i].mz_SymptomName2 := Trim(DM_data.qry_pub.FieldByName('SymptomName2').AsString); //֢״����2
    Exam[i].mz_SymptomCode2 := Trim(DM_data.qry_pub.FieldByName('SymptomCode2').AsString); //֢״����2
    Exam[i].mz_ConfirmDT2 := Trim(DM_data.qry_pub.FieldByName('ConfirmDT2').AsString); //�������2
    Exam[i].mz_DiseaseName2 := Trim(DM_data.qry_pub.FieldByName('DiseaseName2').AsString); //�����������2
    Exam[i].mz_DiseaseCode2 := Trim(DM_data.qry_pub.FieldByName('DiseaseCode2').AsString); //������ϴ���2
    Exam[i].mz_MorbiDT2 := Trim(DM_data.qry_pub.FieldByName('MorbiDT2').AsString); //��������ʱ��2
    Exam[i].mz_SymptomDT2 := Trim(DM_data.qry_pub.FieldByName('SymptomDT2').AsString); //֢״����ʱ��2
    Exam[i].mz_SymptomName3 := Trim(DM_data.qry_pub.FieldByName('SymptomName3').AsString); //֢״����3
    Exam[i].mz_SymptomCode3 := Trim(DM_data.qry_pub.FieldByName('SymptomCode3').AsString); //֢״����3
    Exam[i].mz_ConfirmDT3 := Trim(DM_data.qry_pub.FieldByName('ConfirmDT3').AsString); //�������3
    Exam[i].mz_DiseaseName3 := Trim(DM_data.qry_pub.FieldByName('DiseaseName3').AsString); //�����������3
    Exam[i].mz_DiseaseCode3 := Trim(DM_data.qry_pub.FieldByName('DiseaseCode3').AsString); //������ϴ���3
    Exam[i].mz_MorbiDT3 := Trim(DM_data.qry_pub.FieldByName('MorbiDT3').AsString); //��������ʱ��3
    Exam[i].mz_SymptomDT3 := Trim(DM_data.qry_pub.FieldByName('SymptomDT3').AsString); //֢״����ʱ��3
    Exam[i].mz_SymptomName4 := Trim(DM_data.qry_pub.FieldByName('SymptomName4').AsString); //֢״����4
    Exam[i].mz_SymptomCode4 := Trim(DM_data.qry_pub.FieldByName('SymptomCode4').AsString); //֢״����4
    Exam[i].mz_ConfirmDT4 := Trim(DM_data.qry_pub.FieldByName('ConfirmDT4').AsString); //�������4
    Exam[i].mz_DiseaseName4 := Trim(DM_data.qry_pub.FieldByName('DiseaseName4').AsString); //�����������4
    Exam[i].mz_DiseaseCode4 := Trim(DM_data.qry_pub.FieldByName('DiseaseCode4').AsString); //������ϴ���4
    Exam[i].mz_MorbiDT4 := Trim(DM_data.qry_pub.FieldByName('MorbiDT4').AsString); //��������ʱ��4
    Exam[i].mz_SymptomDT4 := Trim(DM_data.qry_pub.FieldByName('SymptomDT4').AsString); //֢״����ʱ��4
    Exam[i].mz_SymptomName5 := Trim(DM_data.qry_pub.FieldByName('SymptomName5').AsString); //֢״����5
    Exam[i].mz_SymptomCode5 := Trim(DM_data.qry_pub.FieldByName('SymptomCode5').AsString); //֢״����5
    Exam[i].mz_ConfirmDT5 := Trim(DM_data.qry_pub.FieldByName('ConfirmDT5').AsString); //�������5
    Exam[i].mz_DiseaseName5 := Trim(DM_data.qry_pub.FieldByName('DiseaseName5').AsString); //�����������5
    Exam[i].mz_DiseaseCode5 := Trim(DM_data.qry_pub.FieldByName('DiseaseCode5').AsString); //������ϴ���5
    Exam[i].mz_MorbiDT5 := Trim(DM_data.qry_pub.FieldByName('MorbiDT5').AsString); //��������ʱ��5
    Exam[i].mz_SymptomDT5 := Trim(DM_data.qry_pub.FieldByName('SymptomDT5').AsString); //֢״����ʱ��5
    Exam[i].mz_CheckoutName1 := Trim(DM_data.qry_pub.FieldByName('CheckoutName1').AsString); //���/������Ŀ����1
    Exam[i].mz_CheckoutResultCode1 := Trim(DM_data.qry_pub.FieldByName('CheckoutResultCode1').AsString); //���/����������1
    Exam[i].mz_CheckoutResultName1 := Trim(DM_data.qry_pub.FieldByName('CheckoutResultName1').AsString); //���/���鶨�����1
    Exam[i].mz_CheckoutUnit1 := Trim(DM_data.qry_pub.FieldByName('CheckoutUnit1').AsString); //���/���������λ1
    Exam[i].mz_CheckoutCode1 := Trim(DM_data.qry_pub.FieldByName('CheckoutCode1').AsString); //���/������Ŀ����1
    Exam[i].mz_CheckoutName2 := Trim(DM_data.qry_pub.FieldByName('CheckoutName2').AsString); //���/������Ŀ����2
    Exam[i].mz_CheckoutResultCode2 := Trim(DM_data.qry_pub.FieldByName('CheckoutResultCode2').AsString); //���/����������2
    Exam[i].mz_CheckoutResultName2 := Trim(DM_data.qry_pub.FieldByName('CheckoutResultName2').AsString); //���/���鶨�����2
    Exam[i].mz_CheckoutUnit2 := Trim(DM_data.qry_pub.FieldByName('CheckoutUnit2').AsString); //���/���������λ2
    Exam[i].mz_CheckoutCode2 := Trim(DM_data.qry_pub.FieldByName('CheckoutCode2').AsString); //���/������Ŀ����2
    Exam[i].mz_CheckoutName3 := Trim(DM_data.qry_pub.FieldByName('CheckoutName3').AsString); //���/������Ŀ����3
    Exam[i].mz_CheckoutResultCode3 := Trim(DM_data.qry_pub.FieldByName('CheckoutResultCode3').AsString); //���/����������3
    Exam[i].mz_CheckoutResultName3 := Trim(DM_data.qry_pub.FieldByName('CheckoutResultName3').AsString); //���/���鶨�����3
    Exam[i].mz_CheckoutUnit3 := Trim(DM_data.qry_pub.FieldByName('CheckoutUnit3').AsString); //���/���������λ3
    Exam[i].mz_CheckoutCode3 := Trim(DM_data.qry_pub.FieldByName('CheckoutCode3').AsString); //���/������Ŀ����3
    Exam[i].mz_CheckoutName4 := Trim(DM_data.qry_pub.FieldByName('CheckoutName4').AsString); //���/������Ŀ����4
    Exam[i].mz_CheckoutResultCode4 := Trim(DM_data.qry_pub.FieldByName('CheckoutResultCode4').AsString); //���/����������4
    Exam[i].mz_CheckoutResultName4 := Trim(DM_data.qry_pub.FieldByName('CheckoutResultName4').AsString); //���/���鶨�����4
    Exam[i].mz_CheckoutUnit4 := Trim(DM_data.qry_pub.FieldByName('CheckoutUnit4').AsString); //���/���������λ4
    Exam[i].mz_CheckoutCode4 := Trim(DM_data.qry_pub.FieldByName('CheckoutCode4').AsString); //���/������Ŀ����4
    Exam[i].mz_CheckoutName5 := Trim(DM_data.qry_pub.FieldByName('CheckoutName5').AsString); //���/������Ŀ����5
    Exam[i].mz_CheckoutResultCode5 := Trim(DM_data.qry_pub.FieldByName('CheckoutResultCode5').AsString); //���/����������5
    Exam[i].mz_CheckoutResultName5 := Trim(DM_data.qry_pub.FieldByName('CheckoutResultName5').AsString); //���/���鶨�����5
    Exam[i].mz_CheckoutUnit5 := Trim(DM_data.qry_pub.FieldByName('CheckoutUnit5').AsString); //���/���������λ5
    Exam[i].mz_CheckoutCode5 := Trim(DM_data.qry_pub.FieldByName('CheckoutCode5').AsString); //���/������Ŀ����5
    Exam[i].mz_CheckoutName6 := Trim(DM_data.qry_pub.FieldByName('CheckoutName6').AsString); //���/������Ŀ����6
    Exam[i].mz_CheckoutResultCode6 := Trim(DM_data.qry_pub.FieldByName('CheckoutResultCode6').AsString); //���/����������6
    Exam[i].mz_CheckoutResultName6 := Trim(DM_data.qry_pub.FieldByName('CheckoutResultName6').AsString); //���/���鶨�����6
    Exam[i].mz_CheckoutUnit6 := Trim(DM_data.qry_pub.FieldByName('CheckoutUnit6').AsString); //���/���������λ6
    Exam[i].mz_CheckoutCode6 := Trim(DM_data.qry_pub.FieldByName('CheckoutCode6').AsString); //���/������Ŀ����6
    Exam[i].mz_CheckoutName7 := Trim(DM_data.qry_pub.FieldByName('CheckoutName7').AsString); //���/������Ŀ����7
    Exam[i].mz_CheckoutResultCode7 := Trim(DM_data.qry_pub.FieldByName('CheckoutResultCode7').AsString); //���/����������7
    Exam[i].mz_CheckoutResultName7 := Trim(DM_data.qry_pub.FieldByName('CheckoutResultName7').AsString); //���/���鶨�����7
    Exam[i].mz_CheckoutUnit7 := Trim(DM_data.qry_pub.FieldByName('CheckoutUnit7').AsString); //���/���������λ7
    Exam[i].mz_CheckoutCode7 := Trim(DM_data.qry_pub.FieldByName('CheckoutCode7').AsString); //���/������Ŀ����7
    Exam[i].mz_CheckoutName8 := Trim(DM_data.qry_pub.FieldByName('CheckoutName8').AsString); //���/������Ŀ����8
    Exam[i].mz_CheckoutResultCode8 := Trim(DM_data.qry_pub.FieldByName('CheckoutResultCode8').AsString); //���/����������8
    Exam[i].mz_CheckoutResultName8 := Trim(DM_data.qry_pub.FieldByName('CheckoutResultName8').AsString); //���/���鶨�����8
    Exam[i].mz_CheckoutUnit8 := Trim(DM_data.qry_pub.FieldByName('CheckoutUnit8').AsString); //���/���������λ8
    Exam[i].mz_CheckoutCode8 := Trim(DM_data.qry_pub.FieldByName('CheckoutCode8').AsString); //���/������Ŀ����8
    Exam[i].mz_CheckoutName9 := Trim(DM_data.qry_pub.FieldByName('CheckoutName9').AsString); //���/������Ŀ����9
    Exam[i].mz_CheckoutResultCode9 := Trim(DM_data.qry_pub.FieldByName('CheckoutResultCode9').AsString); //���/����������9
    Exam[i].mz_CheckoutResultName9 := Trim(DM_data.qry_pub.FieldByName('CheckoutResultName9').AsString); //���/���鶨�����9
    Exam[i].mz_CheckoutUnit9 := Trim(DM_data.qry_pub.FieldByName('CheckoutUnit9').AsString); //���/���������λ9
    Exam[i].mz_CheckoutCode9 := Trim(DM_data.qry_pub.FieldByName('CheckoutCode9').AsString); //���/������Ŀ����9
    Exam[i].mz_CheckoutName10 := Trim(DM_data.qry_pub.FieldByName('CheckoutName10').AsString); //���/������Ŀ����10
    Exam[i].mz_CheckoutResultCode10 := Trim(DM_data.qry_pub.FieldByName('CheckoutResultCode10').AsString); //���/����������10
    Exam[i].mz_CheckoutResultName10 := Trim(DM_data.qry_pub.FieldByName('CheckoutResultName10').AsString); //���/���鶨�����10
    Exam[i].mz_CheckoutUnit10 := Trim(DM_data.qry_pub.FieldByName('CheckoutUnit10').AsString); //���/���������λ10
    Exam[i].mz_CheckoutCode10 := Trim(DM_data.qry_pub.FieldByName('CheckoutCode10').AsString); //���/������Ŀ����10
    Exam[i].mz_DrugName1 := Trim(DM_data.qry_pub.FieldByName('DrugName1').AsString); //ҩ������1
    Exam[i].mz_DrugCode1 := Trim(DM_data.qry_pub.FieldByName('DrugCode1').AsString); //ҩ����ʹ���1
    Exam[i].mz_DrugDay1 := Trim(DM_data.qry_pub.FieldByName('DrugDay1').AsString); //��ҩ����1
    Exam[i].mz_DrugFreq1 := Trim(DM_data.qry_pub.FieldByName('DrugFreq1').AsString); //ҩ��ʹ��Ƶ��1
    Exam[i].mz_DrugUnit1 := Trim(DM_data.qry_pub.FieldByName('DrugUnit1').AsString); //ҩ��ʹ�ü�����λ1
    Exam[i].mz_DrugDosa1 := Trim(DM_data.qry_pub.FieldByName('DrugDosa1').AsString); //ҩ��ʹ�ôμ���1
    Exam[i].mz_DrugSumDosa1 := Trim(DM_data.qry_pub.FieldByName('DrugSumDosa1').AsString); //ҩ��ʹ���ܼ���1
    Exam[i].mz_DrugUseCode1 := Trim(DM_data.qry_pub.FieldByName('DrugUseCode1').AsString); //ҩ��ʹ��;������1
    Exam[i].mz_DrugName2 := Trim(DM_data.qry_pub.FieldByName('DrugName2').AsString); //ҩ������2
    Exam[i].mz_DrugCode2 := Trim(DM_data.qry_pub.FieldByName('DrugCode2').AsString); //ҩ����ʹ���2
    Exam[i].mz_DrugDay2 := Trim(DM_data.qry_pub.FieldByName('DrugDay2').AsString); //��ҩ����2
    Exam[i].mz_DrugFreq2 := Trim(DM_data.qry_pub.FieldByName('DrugFreq2').AsString); //ҩ��ʹ��Ƶ��2
    Exam[i].mz_DrugUnit2 := Trim(DM_data.qry_pub.FieldByName('DrugUnit2').AsString); //ҩ��ʹ�ü�����λ2
    Exam[i].mz_DrugDosa2 := Trim(DM_data.qry_pub.FieldByName('DrugDosa2').AsString); //ҩ��ʹ�ôμ���2
    Exam[i].mz_DrugSumDosa2 := Trim(DM_data.qry_pub.FieldByName('DrugSumDosa2').AsString); //ҩ��ʹ���ܼ���2
    Exam[i].mz_DrugUseCode2 := Trim(DM_data.qry_pub.FieldByName('DrugUseCode2').AsString); //ҩ��ʹ��;������2
    Exam[i].mz_DrugName3 := Trim(DM_data.qry_pub.FieldByName('DrugName3').AsString); //ҩ������3
    Exam[i].mz_DrugCode3 := Trim(DM_data.qry_pub.FieldByName('DrugCode3').AsString); //ҩ����ʹ���3
    Exam[i].mz_DrugDay3 := Trim(DM_data.qry_pub.FieldByName('DrugDay3').AsString); //��ҩ����3
    Exam[i].mz_DrugFreq3 := Trim(DM_data.qry_pub.FieldByName('DrugFreq3').AsString); //ҩ��ʹ��Ƶ��3
    Exam[i].mz_DrugUnit3 := Trim(DM_data.qry_pub.FieldByName('DrugUnit3').AsString); //ҩ��ʹ�ü�����λ3
    Exam[i].mz_DrugDosa3 := Trim(DM_data.qry_pub.FieldByName('DrugDosa3').AsString); //ҩ��ʹ�ôμ���3
    Exam[i].mz_DrugSumDosa3 := Trim(DM_data.qry_pub.FieldByName('DrugSumDosa3').AsString); //ҩ��ʹ���ܼ���3
    Exam[i].mz_DrugUseCode3 := Trim(DM_data.qry_pub.FieldByName('DrugUseCode3').AsString); //ҩ��ʹ��;������3
    Exam[i].mz_DrugName4 := Trim(DM_data.qry_pub.FieldByName('DrugName4').AsString); //ҩ������4
    Exam[i].mz_DrugCode4 := Trim(DM_data.qry_pub.FieldByName('DrugCode4').AsString); //ҩ����ʹ���4
    Exam[i].mz_DrugDay4 := Trim(DM_data.qry_pub.FieldByName('DrugDay4').AsString); //��ҩ����4
    Exam[i].mz_DrugFreq4 := Trim(DM_data.qry_pub.FieldByName('DrugFreq4').AsString); //ҩ��ʹ��Ƶ��4
    Exam[i].mz_DrugUnit4 := Trim(DM_data.qry_pub.FieldByName('DrugUnit4').AsString); //ҩ��ʹ�ü�����λ4
    Exam[i].mz_DrugDosa4 := Trim(DM_data.qry_pub.FieldByName('DrugDosa4').AsString); //ҩ��ʹ�ôμ���4
    Exam[i].mz_DrugSumDosa4 := Trim(DM_data.qry_pub.FieldByName('DrugSumDosa4').AsString); //ҩ��ʹ���ܼ���4
    Exam[i].mz_DrugUseCode4 := Trim(DM_data.qry_pub.FieldByName('DrugUseCode4').AsString); //ҩ��ʹ��;������4
    Exam[i].mz_DrugName5 := Trim(DM_data.qry_pub.FieldByName('DrugName5').AsString); //ҩ������5
    Exam[i].mz_DrugCode5 := Trim(DM_data.qry_pub.FieldByName('DrugCode5').AsString); //ҩ����ʹ���5
    Exam[i].mz_DrugDay5 := Trim(DM_data.qry_pub.FieldByName('DrugDay5').AsString); //��ҩ����5
    Exam[i].mz_DrugFreq5 := Trim(DM_data.qry_pub.FieldByName('DrugFreq5').AsString); //ҩ��ʹ��Ƶ��5
    Exam[i].mz_DrugUnit5 := Trim(DM_data.qry_pub.FieldByName('DrugUnit5').AsString); //ҩ��ʹ�ü�����λ5
    Exam[i].mz_DrugDosa5 := Trim(DM_data.qry_pub.FieldByName('DrugDosa5').AsString); //ҩ��ʹ�ôμ���5
    Exam[i].mz_DrugSumDosa5 := Trim(DM_data.qry_pub.FieldByName('DrugSumDosa5').AsString); //ҩ��ʹ���ܼ���5
    Exam[i].mz_DrugUseCode5 := Trim(DM_data.qry_pub.FieldByName('DrugUseCode5').AsString); //ҩ��ʹ��;������5
    Exam[i].mz_SurgeryName1 := Trim(DM_data.qry_pub.FieldByName('SurgeryName1').AsString); //����/��������1
    Exam[i].mz_SurgeryCode1 := Trim(DM_data.qry_pub.FieldByName('SurgeryCode1').AsString); //����/��������1
    Exam[i].mz_SurgeryDT1 := Trim(DM_data.qry_pub.FieldByName('SurgeryDT1').AsString); //����/��������1
    Exam[i].mz_SurgeryName2 := Trim(DM_data.qry_pub.FieldByName('SurgeryName2').AsString); //����/��������2
    Exam[i].mz_SurgeryCode2 := Trim(DM_data.qry_pub.FieldByName('SurgeryCode2').AsString); //����/��������2
    Exam[i].mz_SurgeryDT2 := Trim(DM_data.qry_pub.FieldByName('SurgeryDT2').AsString); //����/��������2
    Exam[i].mz_SurgeryName3 := Trim(DM_data.qry_pub.FieldByName('SurgeryName3').AsString); //����/��������3
    Exam[i].mz_SurgeryCode3 := Trim(DM_data.qry_pub.FieldByName('SurgeryCode3').AsString); //����/��������3
    Exam[i].mz_SurgeryDT3 := Trim(DM_data.qry_pub.FieldByName('SurgeryDT3').AsString); //����/��������3
    Exam[i].mz_ExamClasName1 := Trim(DM_data.qry_pub.FieldByName('ExamClasName1').AsString); //������÷�������1
    Exam[i].mz_ExamClasCode1 := Trim(DM_data.qry_pub.FieldByName('ExamClasCode1').AsString); //������÷������1
    Exam[i].mz_ExamClasAmt1 := Trim(DM_data.qry_pub.FieldByName('ExamClasAmt1').AsString); //������ý��1
    Exam[i].mz_ExamClasName2 := Trim(DM_data.qry_pub.FieldByName('ExamClasName2').AsString); //������÷�������2
    Exam[i].mz_ExamClasCode2 := Trim(DM_data.qry_pub.FieldByName('ExamClasCode2').AsString); //������÷������2
    Exam[i].mz_ExamClasAmt2 := Trim(DM_data.qry_pub.FieldByName('ExamClasAmt2').AsString); //������ý��2
    Exam[i].mz_ExamClasName3 := Trim(DM_data.qry_pub.FieldByName('ExamClasName3').AsString); //������÷�������3
    Exam[i].mz_ExamClasCode3 := Trim(DM_data.qry_pub.FieldByName('ExamClasCode3').AsString); //������÷������3
    Exam[i].mz_ExamClasAmt3 := Trim(DM_data.qry_pub.FieldByName('ExamClasAmt3').AsString); //������ý��3
    Exam[i].mz_ExamClasName4 := Trim(DM_data.qry_pub.FieldByName('ExamClasName4').AsString); //������÷�������4
    Exam[i].mz_ExamClasCode4 := Trim(DM_data.qry_pub.FieldByName('ExamClasCode4').AsString); //������÷������4
    Exam[i].mz_ExamClasAmt4 := Trim(DM_data.qry_pub.FieldByName('ExamClasAmt4').AsString); //������ý��4
    Exam[i].mz_ExamClasName5 := Trim(DM_data.qry_pub.FieldByName('ExamClasName5').AsString); //������÷�������5
    Exam[i].mz_ExamClasCode5 := Trim(DM_data.qry_pub.FieldByName('ExamClasCode5').AsString); //������÷������5
    Exam[i].mz_ExamClasAmt5 := Trim(DM_data.qry_pub.FieldByName('ExamClasAmt5').AsString); //������ý��5
    Exam[i].mz_ExamClasName6 := Trim(DM_data.qry_pub.FieldByName('ExamClasName6').AsString); //������÷�������6
    Exam[i].mz_ExamClasCode6 := Trim(DM_data.qry_pub.FieldByName('ExamClasCode6').AsString); //������÷������6
    Exam[i].mz_ExamClasAmt6 := Trim(DM_data.qry_pub.FieldByName('ExamClasAmt6').AsString); //������ý��6
    Exam[i].mz_ExamClasName7 := Trim(DM_data.qry_pub.FieldByName('ExamClasName7').AsString); //������÷�������7
    Exam[i].mz_ExamClasCode7 := Trim(DM_data.qry_pub.FieldByName('ExamClasCode7').AsString); //������÷������7
    Exam[i].mz_ExamClasAmt7 := Trim(DM_data.qry_pub.FieldByName('ExamClasAmt7').AsString); //������ý��7
    Exam[i].mz_ExamClasName8 := Trim(DM_data.qry_pub.FieldByName('ExamClasName8').AsString); //������÷�������8
    Exam[i].mz_ExamClasCode8 := Trim(DM_data.qry_pub.FieldByName('ExamClasCode8').AsString); //������÷������8
    Exam[i].mz_ExamClasAmt8 := Trim(DM_data.qry_pub.FieldByName('ExamClasAmt8').AsString); //������ý��8
    Exam[i].mz_ExamClasName9 := Trim(DM_data.qry_pub.FieldByName('ExamClasName9').AsString); //������÷�������9
    Exam[i].mz_ExamClasCode9 := Trim(DM_data.qry_pub.FieldByName('ExamClasCode9').AsString); //������÷������9
    Exam[i].mz_ExamClasAmt9 := Trim(DM_data.qry_pub.FieldByName('ExamClasAmt9').AsString); //������ý��9
    Exam[i].mz_ExamClasName10 := Trim(DM_data.qry_pub.FieldByName('ExamClasName10').AsString); //������÷�������10
    Exam[i].mz_ExamClasCode10 := Trim(DM_data.qry_pub.FieldByName('ExamClasCode10').AsString); //������÷������10
    Exam[i].mz_ExamClasAmt10 := Trim(DM_data.qry_pub.FieldByName('ExamClasAmt10').AsString); //������ý��10
    Exam[i].mz_ExamInfoStr := Trim(DM_data.qry_pub.FieldByName('ExamInfoStr').AsString); //������ʵ��ִ�
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
  //  if ( pub_mzsfsfypdd > 1 ) and ( mzsfsfqyjs ) then //�����շ�¼��,�����ÿ��Ҵ�ӡ����}
  if pub_mzsfsfqyjs then //�����շ�¼��,�����ÿ��Ҵ�ӡ����}
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
  //������籣�� �����籣������д����
end;

procedure Tfrm_mzsf.proc_upsjbh;
var
  v_oldksdm, v_ksdm, fydm: string;
  i: Integer;
begin
  if (pub_mzsfsfypdd > 1) and (not pub_mzsfsfqyjs) then // �����շ�¼��,�ִ��ÿ��Ҵ�ϸ��
  begin
    qry_fymx.First;
    i := 0;
    //iΪ���ŷ�Ʊ����Ŀ�ĵ�ǰ��¼�ţ���һ�ν���ѭ��ʱi��ʼֵ��0,ѭ���н�i��ʼֵ��1
    v_oldksdm := Trim(qry_fymx.FieldByName(Prv_sjfzfs_field).asstring);
    proc_get_sjbh; //ȡ���վݱ�ŵ� mz_sjbh������
    sjbhzh := strtoint(mz_sjbh);
    sjbhqh := strtoint(mz_sjbh); //ȡ���վ���Ŵ�ӡʱ����
    while not qry_fymx.Eof do
    begin
      qry_fymx.edit;
      v_ksdm := Trim(qry_fymx.FieldByName(Prv_sjfzfs_field).asstring);
      fydm := Trim(qry_fymx.FieldByName('fydm').asstring);
      //      if (v_oldksdm = v_ksdm) and (i < pub_mzsfsfypdd) and (fydm <> pub_xyfdm) and
      //        (fydm <> pub_mzxyfdm) and (fydm <> pub_chenydm) and (fydm <> pub_chaoydm) then
      if pub_yydm = '0227' then //��������ҽԺ20130424
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
      if pub_is_zhsb then //ҽ���շ�
        qry_fymx.FieldByName('fylb').AsString := '03';
      qry_fymx.FieldByName('sjbh').asinteger := sjbhzh;
      qry_fymx.Next;
    end;
  end
  else
    if (pub_yydm = '0061') then //�侯�½��߷�ҽԺ�����շ�¼�� һƱ����
    begin
      proc_get_sjbh; //ȡ���վݱ�ŵ� mz_sjbh������
      sjbhzh := strtoint(mz_sjbh);
      sjbhqh := strtoint(mz_sjbh); //ȡ���վ���Ŵ�ӡʱ����
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
        proc_get_sjbh; //ȡ���վݱ�ŵ� mz_sjbh������
        sjbhzh := strtoint(mz_sjbh);
        sjbhqh := strtoint(mz_sjbh); //ȡ���վ���Ŵ�ӡʱ����
        while not qry_fymx.Eof do
        begin
          qry_fymx.edit;
          qry_fymx.FieldByName('sjbh').asinteger := sjbhzh;
          qry_fymx.Next;
          if not qry_fymx.Eof then
            sjbhzh := sjbhzh + 1;
        end;
      end;

  if sjbhzh_real < sjbhzh then //ʵ���վ�ֹ��(sjbhzh_real)С�ڼ����ֹ��(sjbhzh)
  begin
    Application.MessageBox('��ʾ:�վݱ�Ų�������ȡ��ǰ����!', '��ʾ', MB_ICONINFORMATION);
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
    Application.MessageBox(PChar('��ʾ:�վݺŵ�������,����δ����!����ԭ��:' + v_error), '��ʾ', 16);
    b_cancel.Click;
    Exit;
  end;
end;

function Tfrm_mzsf.proc_up_sjzf(_tmh, _ph: string): Boolean;
var
  save_zf: string;
begin
  try
    //�Զ������ѽ����վ�
    SP_SJZF.Close;
    SP_SJZF.Parameters.ParamByName('@tmh').Value := _tmh;
    SP_SJZF.Parameters.ParamByName('@ph').Value := _ph;
    SP_SJZF.Parameters.ParamByName('@czydm').Value := pub_czydm;
    SP_SJZF.Parameters.ParamByName('@sjth').Value := 1;
    SP_SJZF.Parameters.ParamByName('@sczt').Value := '';
    SP_SJZF.ExecProc;
    save_zf := SP_SJZF.Parameters.ParamByName('@sczt').Value;
    if save_zf = '�ɹ�' then
    begin
      Result := True;
      Application.MessageBox('�Զ����ϳɹ������Զ��������շ�ǰ״̬��',
        'ϵͳ��ʾ', MB_OK + MB_ICONINFORMATION);
    end
    else
    begin
      Result := False;
      application.MessageBox(pchar('����ʧ��! �����µ������Ϲ���!ʧ��ԭ��' + save_zf), 'ϵͳ��ʾ', 0 + 16);
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
  //20100827�����ſ�----------------------
  if checkbox2.Checked and mzsfsfsyyy then
  begin
    try
      yybjUnit.Yybj(formatfloat('0.00', Prv_Ljzje_zf), p_func_yybj.pay); //AllInCost
      //      pro_yylx := 5;
      //      timer1.Enabled := true;
    except
    end;
  end;
  //ShowMessage('������'+ (mz_brxm_List)+'   '+'�����ܶ'+FloatToStr(Prv_Ljzje_fy)+'  '+'Ӧ�գ�'+FloatToStr(Prv_Ljzje_zf));
  Application.CreateForm(Tfrm_brjk, frm_brjk);
  try
    frm_brjk.mz_brxm := mz_brxm_list; //��������
    frm_brjk.mz_fyze := Prv_Ljzje_fy; //�����ܶ�
    frm_brjk.mz_ysk := Prv_Ljzje_zf; //Ӧ�տ�
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
    //    if mzsfsfsswr then //�����������뵽��
    //      qry_fymx.FieldByName('sszje').AsFloat := realtomoney1(mz_sfbz)
    //    else
    //      if pub_sf5or1 then //�����շ��������뵽Ԫ����5��
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
    if not (pub_yydm = '0108') then //��Ϫ��ҽԺ�����շ�,ͬһ���˱���ǰ�δ���ҽ��
      czys.text := '';
    kdks.text := '';
    mz_fydm := '';

    proc_kyhjs; //���ݲ���������ۿۼ���

    //    aRecHjje_hjbs := func_get_fyje('sszje');
    //    mz_ssje := aRecHjje_hjbs.Hjje;
    //    if not Pub_xjbz then
    //    begin
    //      if (Prv_kyh_je - mz_ssje < 0) then //��һ����Ϊ����ҽԺ�����޸�
    //      begin
    //        Application.MessageBox('��ʾ:��������,�����մ������!', '��ʾ', 16);
    //        qry_fymx.Delete;
    //        Exit;
    //      end
    //    end;
    //    if Pub_Is_sbsf then //ҽ��
    //      LB_khy.Caption := Pub_brxm_sb + ',ʣ���' + FormatFloat('0.00', Prv_kyh_syje)
    //    else
    //      if Prv_ShowCaption_kyh then //���ֽ��ҽ��
    //        LB_khy.Caption := Trim(sp_cx_kyh.FieldByName('brxm').Asstring) +
    //          ',Ԥ���ܶ' + FormatFloat('0.00', yjje)
    //          + ',ʣ���' + FormatFloat('0.00', Prv_kyh_je - mz_ssje)
    //      else
    //        LB_khy.Caption := LB_khy.Caption;
  end;
end;

procedure Tfrm_mzsf.proc_fymx;
begin
  if (mz_sffs = 1) then //ҩ�����۴���
  begin
    if pub_yydm <> '0009' then
      mz_czys := mz_kdys;
    save_cf_yz;
  end
  else
    if mz_sffs = 2 then //��Ŀ�շ�
    begin
      save_xm_yz;
    end
    else
      if (mz_sffs = 4) or (mz_sffs = 3) then //�շѴ����۴����շ�
      begin
        proc_savecf;
        mz_czys := '0000';
      end;

  if (mz_sfbz >= 100) and (pub_yydm <> '0246') then //��������ʾ100��
    if Application.MessageBox('�ñʽ��>=100Ԫ!ȷ���շ���!', '��ʾ', 4 + 0 + 32) <> 6 then
      Exit;

  if Trim(mz_dxdm) = pub_ghfdldm then //�Һŷ�
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
    //    if mzsfsfsswr then //�����������뵽��
    //      qry_fymx.FieldByName('sszje').AsFloat := realtomoney1(mz_sfbz)
    //    else
    //      if pub_sf5or1 then //�����շ��������뵽Ԫ����5��
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
    if not (pub_yydm = '0108') then //��Ϫ��ҽԺ�����շ�,ͬһ���˱���ǰ�δ���ҽ��
      czys.text := '';
    kdks.text := '';
    mz_fydm := '';
    proc_kyhjs; //���ݲ���������ۿۼ���
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
    Application.MessageBox('ҩƷ�����д���', '����', 0 + 16);
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
    Application.MessageBox(pchar('�˲��˽���������[ ' + qry_cx_mzzcfts.FieldByName('zcf_tc').AsString + 'Ԫ ]����ͳ���Ż�!'),
      'ϵͳ��ʾ', MB_OK + MB_ICONINFORMATION);
  end;
end;

procedure Tfrm_mzsf.proc_UpdateName(const v_brxm: string);
begin
  if Prv_Exists_dzcf then //����ǵ��Ӵ����շѷ�ʽ��������������ȫ������
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
    Application.MessageBox('��ҩƷ���޿�� !', 'ע��', 16);
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
      Application.MessageBox(pchar('ҽ��[' + prv_dzcfkdysmc + ']���޸Ĵ˵���ҽ�������Ե�!!'), '��ʾ', 0 + 48);
      Exit;
    end;
    //Ƥ�Խ������
    if v_psjgyx then
    begin
      Application.MessageBox(pchar('������Ƥ�Խ��Ϊ���Խ��,���ܼ����շ�,����ϵ����ҽ��'), '��ʾ', 0 + 48);
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
//�ֶ�����,���ô���,�������
begin
  if v_cflb = '��ҩ��' then
    Prv_cflb := 'MZ'
  else
    if v_cflb = '�в�ҩ' then
      Prv_cflb := 'MC'
    else
      if v_cflb = '�г�ҩ' then
        Prv_cflb := 'MN'
      else
        Prv_cflb := 'MO';

  if v_yfzdmc = '' then
  begin
    mz_sffs := 2; //���������շѰ�������Ŀ�շ�
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
    if pub_mzxyfqybz and pub_mzsfhjbz then //�շ�����ҩ��ͬʱ����
    begin
      if (v_fydm = pub_mzxyfdm) or (v_fydm = pub_chenydm) or (v_fydm = pub_chaoydm) or
        (v_fydm = pub_mzwsclfydm) then
      begin
        mz_sffs := 1; //ҩ������۵Ĵ����շ�;
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
            Application.MessageBox('������ʾ:�ÿ���δ���û���ҩ��,���ܽ��л���!', '������ʾ', 16);
            Abort;
          end;
          if v_yfzdmc = 'chyf' then
            mz_sffs := 3 //�շѴ���ҩ���۴����շ�;
          else
            mz_sffs := 4; //�շѴ��������۴����շ�;
          dbgrid_fymx.Visible := False;
          mz_czks := pub_hjyfksdm;
          mz_czksmc := pub_hjyfksmc;
          czks.Text := mz_czksmc;
          proc_set_cfhj(Prv_cflb); //���������վݴ���������Ϣ
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
      if pub_mzxyfqybz and (not pub_mzsfhjbz) then //�շ��Ҳ�����,ҩ������
      begin
        mz_sffs := 1; //ҩ������۴����շ�;
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
        Application.MessageBox('ѡ����Ӧ���շ���Ŀ!', '��ʾ', 0 + 48);
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
    Application.MessageBox('����ְ����Ȩʹ�ô�ҩƷ!', 'ע��', MB_OK + MB_ICONEXCLAMATION);
    dbgridypmx.Visible := False;
    Exit;
  end;
  if (sp_yp['kcsl'] = 0) and (not pub_zyhjbz) then
  begin
    Application.MessageBox('��ҩƷ���޿�棬���ܻ���!', 'ע��', 16);
    dbgrid1.SetFocus;
    dbgridypmx.Visible := False;
    Exit;
  end;
  if sp_yp.FieldByName('lsj').AsFloat = 0 then
  begin
    Application.MessageBox('ҩƷ�۸����󣬲��ܻ���!', 'ע��', 16);
    dbgridypmx.Visible := False;
    Exit;
  end;
  ypdm := sp_yp['ypdm'];
  if qry_mx.Locate('ypdm', ypdm, []) then
  begin
    Application.MessageBox('���и�ҩƷ�������ظ�����!', 'ע��', 16);
    dbgridypmx.Visible := False;
    qry_mx.Append;
    DBGrid1.SelectedIndex := 0;
    Exit;
  end;
  if Trim(sp_yp.FieldByName('bdxm').asstring) <> '' then //������ý����ǩ�ȵİ���ʾ
  begin
    messagedlg('     ע�⣺' + #13 + #13 + #13 + '��ҩƷ��ע�����' +
      Trim(sp_yp.FieldByName('bdxm').asstring), mtwarning, [mbok], 0);
  end;
  sp_yp.Filtered := False;
  sp_yp.Filter := 'ypdm=' + '''' + ypdm + '''';
  sp_yp.Filtered := true;
  qry_mx.Append;
  qry_mx['ypmc'] := sp_yp['ypmc'];
  qry_mx['cfbh'] := mz_cfbh;
  qry_mx['ypdm'] := ypdm;
  if Prv_IsUseXDCF then //ʹ��Э����������ʹ��Э����������
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
    yplb := yplb + ',����';
  if sp_yp['sfdmyp'] then
    yplb := yplb + ',����';
  if sp_yp['sfgzyp'] then
    yplb := yplb + ',����';
  if sp_yp['sfzfyp'] then
    yplb := yplb + ',�Է�';
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
    Application.MessageBox('�������������!', 'ע��', 16);
    panel2.Enabled := true;
    mzh.SetFocus;
    abort;
  end;
  if mz_kdks = '' then
  begin
    Application.MessageBox('�������봦������!', 'ע��', 16);
    panel1.Enabled := true;
    kdks.Enabled := true;
    kdks.SetFocus;
    abort;
  end;
  if mz_kdys = '' then
  begin
    Application.MessageBox('�������봦��ҽ��!', 'ע��', 16);
    panel1.Enabled := true;
    kdys.Enabled := true;
    kdys.SetFocus;
    abort;
  end;
  if mz_sffs = 3 then //��ҩ���봦��������
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
  proc_sumcfje; //���㴦����� ,��У�鴦����
  mz_cfjl := 1; //������ɺ�ԭ����������
  dm_data.ado_mydata.BeginTrans;
  try
    qry_zb.UpdateBatch;
    qry_mx.UpdateBatch;
    dm_data.ado_mydata.CommitTrans;
  except
    Application.MessageBox('���ݱ���ʧ�ܣ�', '��ʾ', 16);
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
  if pub_mzsf_bl then //�Ƿ�¼�վ�
    S := frm_func.func_get_sjbh(pub_czydm, pub_mzsjlb, '2')
  else
    S := frm_func.func_get_sjbh(pub_czydm, pub_mzsjlb, '1');

  if S = '' then
  begin
    MessageDlg('�վ������꣬���������վݣ�', mtWarning, [mbOK], 0);
    abort;
  end;
  v_sysl := Copy(S, Pos('S', S) + 1, Pos('Q', S) - Pos('S', S) - 2);
  v_sjbh := Copy(S, Pos('C', S) + 1, Pos('S', S) - Pos('C', S) - 2);
  v_sjzh := Copy(S, Pos('Z', S) + 1, Length(S));
  if v_sysl = '0' then
  begin
    edt_sjsysl.Text := 'ʣ��:0��';
    MessageDlg('�վ������꣬���������վݣ�', mtWarning, [mbOK], 0);
    abort;
  end
  else
  begin
    edt_sjsysl.Text := 'ʣ��:' + v_sysl + '��';
    mz_sjbh := formatex(StrToInt(v_sjbh), 9);
    sjbhzh_real := StrToInt(v_sjzh); //���ʵ�ʵ��վ�ֹ��
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
          Application.MessageBox('�����Ŀ���Ӧ��Ϊҽ��!', '��ʾ', 0 + 16);
          kdys.SelectAll;
          kdys.SetFocus;
          abort;
        end;
      end
      else
      begin
        if ((mz_sffs = 4) or (mz_sffs = 3)) and (dm_data.qry_pub['ysbz'] = False) then
        begin
          Application.MessageBox('�����Ŀ���Ӧ��Ϊҽ��!', '��ʾ', 0 + 16);
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
    Application.MessageBox('�������Ŷ�ȡʧ�ܣ������²�����', 'ϵͳ��ʾ',
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
    Application.MessageBox('���ڴ�ӡƱ��,���Ե�...', 'ϵͳ��ʾ', MB_OK + MB_ICONEXCLAMATION);
    Exit;
  end;
  if Key = VK_ESCAPE then //ESC������
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
        if Application.MessageBox('Ҫ�˳�������?', '��ʾ', 4 + 256 + 48) = 6 then
          Close
      end
      else
        if (b_cancel.Enabled) and (not g_empt.Visible) and (mz_zje = 0) then
          b_cancel.Click
        else
          if (qry_mx.Active) and (dbgrid1.Visible) and (not DBGridypmx.Visible) and (not dbgrid5.Visible) then
          begin
            if Application.MessageBox('������ǰ������?', '��ʾ', 4 + 0 + 48) = 6 then
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
                if Application.MessageBox('��ʾ:�Ƿ�����������շ���Ŀ!', '��ʾ', MB_YESNO + MB_ICONQUESTION) = IDYES then
                  b_cancel.Click;
              end;
  end;
  //  if key = VK_F1 then
  //    Frm_func.showHelpHtml('MZSFA01');

  if key = VK_F5 then
    Get_frm_calc; //F5����

  //F6����
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

  //F7����
  if key = VK_F7 then // f7
    if mzsfsffylb then
      proc_fylb(1);

  //F3����
  if (key = VK_F3) and (qry_mx.Active) and (dbgrid1.Visible) then //f3
  begin
    dbgrid_fymx.Visible := true;
    if qry_mx.RecordCount = 0 then
    begin
      Application.MessageBox('�ô���û�����ݽ�����!', '��ʾ', 0 + 48);
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
      proc_fymx; //���洦��
      editsflb.SetFocus;
    end;
  end;

  if (key = VK_F2) and (panel2.Enabled = true) then //F2����
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

  if (key = VK_F4) then //F4����
  begin
    if Prv_Ljzje_zf <= 0 then
      Application.MessageBox('��ʾ:�ۼƽ��Ϊ��,���ý���!', '��ʾ', MB_ICONINFORMATION + MB_OK)
    else
      proc_keydown_F4;
  end;

  if ((key = 38) or (key = 40)) and (qry_mx.State = dsedit) then //�����ƶ�����
    qry_mx.Cancel;

  if (key = VK_F8) and (qry_mx.Active) and (mz_cfbh <> '') then //F8Э������
  begin
    v_mbbh := Func_XDCF_Xz(pub_czydm, mz_czks, 0);
    if v_mbbh > 0 then
      Proc_AddMB(v_mbbh);
  end;

  if (key = VK_F10) and b_save.Enabled then //F10����
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
      Application.MessageBox('���Ҵ����������', '', 16);
      czks.SelectAll;
      czks.SetFocus;
    end;
    if dm_data.qry_pub.RecordCount > 1 then
    begin
      g_empt.Left := 400;
      g_empt.Top := 115;
      g_empt.Columns[0].fieldname := 'mc';
      g_empt.Columns[0].title.Caption := '����';
      g_empt.Columns[1].fieldname := 'pym';
      g_empt.Columns[1].title.Caption := 'ƴ����';
      g_empt.Tag := 4; // 2��ʾGRID��ʾ������
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
      Application.MessageBox('�����봦��ҽ��!', 'ϵͳ��ʾ', MB_OK + MB_ICONSTOP);
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
      Application.MessageBox('ҽʦ�����������', '', 16);
      czys.SelectAll;
      czys.SetFocus;
    end;
    if dm_data.qry_pub.RecordCount > 1 then
    begin
      g_empt.Left := czys.Left;
      g_empt.Top := czys.Parent.Top + czys.Top + czys.Height + 2;
      g_empt.Columns[0].fieldname := 'mc';
      g_empt.Columns[0].title.Caption := '����';
      g_empt.Columns[1].fieldname := 'ksmc';
      g_empt.width := czys.Width + 20;
      g_empt.Columns[0].Width := 60;
      g_empt.Columns[1].Width := 120;
      g_empt.Columns[1].title.Caption := '����/רҵ';
      g_empt.Tag := 3; // 3��ʾGRID��ʾҽʦ
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
      Application.MessageBox('���Ҵ����������', '', 16);
      kdks.SelectAll;
      kdks.SetFocus;
    end;
    if dm_data.qry_pub.RecordCount > 1 then
    begin
      g_empt.Left := 124;
      g_empt.Top := 140;
      g_empt.Columns[0].fieldname := 'mc';
      g_empt.Columns[0].title.Caption := '����';
      g_empt.Columns[1].fieldname := 'pym';
      g_empt.Columns[1].title.Caption := 'ƴ����';
      g_empt.Tag := 5; // 4��ʾGRID��ʾ��������
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
      //��鴦���Ƿ��Ѿ��ڷ����б�
      if Func_IsExists_cfbh(Trim(mz_cfbh)) then
      begin
        Application.MessageBox('������ʾ:�ô����Ѿ��ڷ����б�!', '������ʾ', 16);
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

        //        if mzsfsfsswr then //�����շ��Ƿ���������
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
        proc_fymx; //д�������ϸ��ʱ
        if checkbox2.Checked and mzsfsfsyyy then
        begin
          if StrToFloat(Trim(zje1.Caption)) > 0 then
          begin
            try
              if pub_yydm <> '0046' then //�޽�������ҽԺ�˴�������
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
          Application.MessageBox('�������ͬ���ö�Ӧ�������ƥ��!', '��ʾ', 0 + 16);
          cfh.text := '';
          cfh.SelectAll;
          cfh.SetFocus;
        end
        else
        begin
          Application.MessageBox('�޴˴������ߴ������շ�!', '��ʾ', 0 + 16);
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
    Application.MessageBox('����������!', '��ʾ', 48);
    brxm.Enabled := true;
    brxm.SetFocus;
    abort;
  end;
  if mz_fydm = '' then
  begin
    Application.MessageBox('�����������Ŀ!', '��ʾ', 48);
    editsflb.SetFocus;
    abort;
  end;
  if (Trim(czks.text) = '') or (mz_czks = '') then
  begin
    Application.MessageBox('�����봦�ο���!', '��ʾ', 48);
    czks.SetFocus;
    abort;
  end;
  if (Trim(czys.text) = '') or (mz_czys = '') then
  begin
    Application.MessageBox('�����봦��ҽ��!', '��ʾ', 48);
    czys.SetFocus;
    abort;
  end;
  if (Trim(kdys.text) = '') or (mz_kdys = '') then
  begin
    Application.MessageBox('�����뿪��ҽ��!', '��ʾ', 48);
    kdys.SetFocus;
    abort;
  end;
  if (Trim(kdks.text) = '') or (mz_kdks = '') then
  begin
    Application.MessageBox('�����뿪������!', '��ʾ', 48);
    kdks.SetFocus;
    abort;
  end;
  if mz_sfbz <= 0 then
  begin
    Application.MessageBox('�շѽ���ȷ!', '��ʾ', 48);
    e_je.SetFocus;
    abort;
  end;
end;

procedure Tfrm_mzsf.save_cf_yz;
begin
  if mz_sfbz <= 0 then
  begin
    Application.MessageBox('�����봦����!', '��ʾ', 48);
    cfn.Enabled := true;
    cfy.Enabled := true;
    cfh.Enabled := true;
    cfh.SetFocus;
    abort;
  end;
  if mz_fydm = '' then
  begin
    Application.MessageBox('�����������Ŀ!', '��ʾ', 48);
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
  cache_pos := '0'; //����pos״̬
  Prv_Ljzje_fy := 0; //�ۼƷ��ý��
  Prv_Ljzje_zf := 0; //�ۼ�δ���ֽ���
  mz_brxm_List := '';
  try
//    proc_get_xtkg_new;
  except
  end;

  lab_bdxx.Caption := '˫�������ɽ��н������Զ�ˢ������';
  lab_bdxx.Visible := false;
  Prv_hjsybzbz_mz := Copy(pub_hjsybz, con_hjsybz_begin_mz, 1) = '1'; //����ʹ�ð�װ��־(��ҩ���ҩ)
  Prv_hjsybzbz_mc := Copy(pub_hjsybz, con_hjsybz_begin_mc, 1) = '1'; //����ʹ�ð�װ��־(��ҩ)
  if not Pub_sjczksfzbz then //�����վ��վݿ������ҷ��鷽ʽ
    Prv_sjfzfs_field := 'kdks'
  else //�����վ��վݴ��ÿ��ҷ��鷽ʽ
    Prv_sjfzfs_field := 'czks';
  Lab_bl.Visible := pub_mzsf_bl; //��ʾ�Ƿ�Ϊ��¼
  //ҽ���ж�
  pub_is_zhsb := False;
  Pub_IsIni := False;
  b_sbhk.Visible := Pub_IsIni; //ҽ����Ť
  pnl_sb.Visible := false;
  if not Pub_IsIni then
  begin
    b_sbhk.Visible := frm_mzsb.pub_jcsb_init; //���Ｏ���籣��ʼ��
  end;
  //������������������
  v_IsOk := False;
  if mzsfsfsyyy then //�����Ƿ�ʹ������
  begin
    v_error := '';
    try
      v_IsOk := yybjUnit.func_ini_func_yy(v_error);
    except
      v_IsOk := False;
    end;
  end;
  CheckBox2.Visible := v_IsOk; //�������۰�Ť
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
//    frm_mzsf.Caption := frm_mzsf.Caption + '����ҩ���Ѱ�' + pub_xyfckppm + '�Ŵ��ڡ�';
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
      Application.MessageBox('�����뿪��ҽ��!', 'ϵͳ��ʾ', MB_OK + MB_ICONSTOP);
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
      Application.MessageBox('ҽʦ�����������', '', 16);
      kdys.SelectAll;
      kdys.SetFocus;
    end;

    if dm_data.qry_pub.RecordCount > 1 then
    begin
      g_empt.Left := kdys.Left;
      g_empt.Top := kdys.Parent.Top + kdys.Top + kdys.Height + 3;
      g_empt.Columns[0].fieldname := 'mc';
      g_empt.Columns[0].title.Caption := '����';
      g_empt.Columns[1].fieldname := 'ksmc';
      g_empt.Columns[1].title.Caption := '����/רҵ';
      g_empt.width := kdys.Width + 20;
      g_empt.Columns[0].Width := 60;
      g_empt.Columns[1].Width := 120;
      g_empt.Tag := 2; // 2��ʾGRID��ʾ����ҽʦ
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
            Application.MessageBox('�����Ŀ���Ӧ��Ϊҽ��!', '��ʾ', 0 + 16);
            kdys.SelectAll;
            kdys.SetFocus;
            abort;
          end;
        end
        else
        begin
          if ((mz_sffs = 4) or (mz_sffs = 3)) and (dm_data.qry_pub['ysbz'] = False) then
          begin
            Application.MessageBox('�����Ŀ���Ӧ��Ϊҽ��!', '��ʾ', 0 + 16);
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
  B_save.Enabled := False; //�����һ��
  v_fpdy_ls := True;
  try
    if not proc_dzcfsh then
      Exit; //���Ӵ������
    //����������ҽԺ���Ժ��ְ����
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
          if Application.MessageBox('�˾��￨ΪԺ��ְ������ҩƷ�������Էѣ�' +
            #13#10 + 'ѡ��ȷ�ϡ���ȫ�����õ��ԷѴ���' + #13#10 +
            'ѡ��ȡ������ȡ���˴��շѴ���', 'ϵͳ��ʾ', MB_OKCANCEL +
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
      Application.MessageBox('������ʾ:������������ź����շ�!', '������ʾ', 16);
      Exit;
    end;

    dm_data.qry_pub.Close;
    dm_data.qry_pub.SQL.clear;
    dm_data.qry_pub.SQL.text := 'select * from sys_jzzt';
    dm_data.qry_pub.open;
    if dm_data.qry_pub.FieldByName('jzzt').AsBoolean then
    begin
      Application.MessageBox('ϵͳ���ڽ�ת�������Ժ�!', '��ʾ', 0 + 48);
      Exit;
    end;

    if not qry_fymx.Active then
    begin
      Application.MessageBox('��ʾ:������ȡ����!', '��ʾ', MB_OK + MB_ICONINFORMATION);
      Exit;
    end;
    if (qry_fymx.RecordCount < 1) or (v_qthjfyje <= 0) then
    begin
      Application.MessageBox('��ʾ:������ȡ����!', '��ʾ', MB_OK + MB_ICONINFORMATION);
      Exit;
    end;
//    proc_pub_check_yfdm;
//    if pub_xyfckkqbz then
//    begin
//      frm_mzsf.Caption := frm_mzsf.Caption + '����ҩ���Ѱ�' + pub_xyfckppm + '�Ŵ��ڡ�';
//    end;

    proc_save_fymx; //��������Ҵ�ӡƱ��

    if Pub_xjbz then //�ۼ��ֽ�δ�ս���������
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
      Prv_brxm_Up := mz_brxm; //�����ϴα��没������
    end
    else //���ֽ�����ֽ𲿷�
    begin
      //Prv_Ljzje_fy := Prv_Ljzje_fy;
      /////////////20140922 ZT ���//////////////
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
  //2013-11-13ȡ����Ϫ���Ƕ���籣
  {
  if (pub_yydm = '0108') or (pub_yydm = '0022') then
  begin
    frm_sb_dl := Tfrm_sb_dl.Create(Self);
    try
      frm_sb_dl.pub_ybclfs := 0; //�շѷ�ʽ
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
  if func_pub_sbjs('����', mz_ph) then
  begin
    Pub_Is_zhsb := true;
    Pub_brxm_sb := pub_re.ybkxm;
    if pub_yydm <> '0028' then
      if (trim(brxm.text) <> '') and (pub_brxm_sb <> trim(brxm.text)) then
      begin
        Application.MessageBox('ҽ���������벡��ʵ��������һ�£�', 'ע��', 16);
      end;
    if Pub_brxm_sb <> '' then
      brxm.Text := Pub_brxm_sb;
    if (pub_yydm = '0019') or (pub_yydm = '0050') then //0050��Ϫ����վ
    begin
      mz_fylb := '03';
      mz_fylbmc := '�籣����';
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
  mz_fylbmc := ''; //��յ�ǰ�Ѵ�����ɵķ������
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
  lab_bdxx.Caption := '˫�������ɽ��н������Զ�ˢ������';
  Prv_Exists_dzcf := False;
//  Pub_Is_sbsf := False; //���籣�շѱ�־
  Pub_xjbz := True; //�ֽ��־
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
  //��̬����֤
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
    //ũ�ж�̬��
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
          Application.MessageBox(pchar('ȱ������POS�ӿڶ�̬��!' + #13 + v_str), 'ϵͳ��ʾ', MB_OK + MB_ICONEXCLAMATION);
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
            DM_data.qry_pub.FieldByName('fylb').Value := '�����շ�';
            DM_data.qry_pub.FieldByName('zdbh').Value := 'ũ��';
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
          //д����ҽͨ�ɷѼ�¼��
          DM_data.sp_pub.Close;
          DM_data.sp_pub.ProcedureName := 'yyt_in_zjjfjl';
          DM_data.sp_pub.Parameters.Refresh;
          DM_data.sp_pub.Parameters.ParamByName('@zzjfid').Value := 0;
          DM_data.sp_pub.Parameters.ParamByName('@jyxx').Value := sout.AsString;
          DM_data.sp_pub.Parameters.ParamByName('@jylb').Value := '�շ�';
          DM_data.sp_pub.ExecProc;
        end
        else
        begin
          Application.MessageBox(pchar('ˢ��ʧ��,' + sout.zt), '����', MB_OK + MB_ICONSTOP);
        end;
      end
      else
        if posh = '1' then
        begin
          //���ж�̬��
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
            Application.MessageBox(pchar('ȱ������POS�ӿڶ�̬��!' + #13 + v_str), 'ϵͳ��ʾ', MB_OK + MB_ICONEXCLAMATION);
            Exit;
          end;
          //  if Prv_Ljzje_zf <= 0 then
          //  begin
          //    Application.MessageBox( '��Ҫ֧���Ľ��Ϊ0,��ȷ��!', 'ϵͳ��ʾ', MB_OK + MB_ICONEXCLAMATION );
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
                  try //���н��׽��
//                    DM_data.qry_pub.FieldByName('zfy').Value := res.jyje;
                    DM_data.qry_pub.FieldByName('zfy').Value := FloatToStr(frm_pos.pos_je);
                  except
                  end;
//                  DM_data.qry_pub.FieldByName('zfy').Value := FloatToStr(frm_pos.pos_je);
                  DM_data.qry_pub.FieldByName('sfczy').Value := pub_czydm;
                  try //���н���ʱ��
                    DM_data.qry_pub.FieldByName('sfsj').Value := FormatDateTime('yyyy-MM-dd hh:mm:ss',
                      StrToDateTime(Copy(res.yhzjjyrq, 1, 4) + '-' + copy(res.yhzjjyrq, 5, 2) + '-' + copy(res.yhzjjyrq, 7, 2) + ' ' +
                      Copy(res.yhzjjysj, 1, 2) + ':' + copy(res.yhzjjysj, 3, 2) + ':' + copy(res.yhzjjysj, 5, 2)));
                  except
                  end;
                  try //�̻���
                    DM_data.qry_pub.FieldByName('sjbh').Value := res.shh;
                  except
                  end;
                  DM_data.qry_pub.FieldByName('kh').Value := res.kh;
                  DM_data.qry_pub.FieldByName('lsh').Value := res.poslsh;
                  DM_data.qry_pub.FieldByName('jyckh').Value := res.jsckh;
                  DM_data.qry_pub.FieldByName('zdbh').Value := res.zdh;
                  DM_data.qry_pub.FieldByName('sjh').Value := '';
                  DM_data.qry_pub.FieldByName('fylb').Value := '�����շ�';
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
                Application.MessageBox(pchar('ˢ��ʧ��,' + res.fhmhy), '����', MB_OK + MB_ICONSTOP);
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
              //�˴�����WEB�����͡�
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
                DM_data.qry_pub.FieldByName('sjbh').Value := cache_ph; //������������ �����˷Ѳ���
                DM_data.qry_pub.FieldByName('sjh').Value := '';
                DM_data.qry_pub.FieldByName('fylb').Value := '�����շ�';
                DM_data.qry_pub.FieldByName('zdbh').Value := '����';
                DM_data.qry_pub.FieldByName('jyckh').Value := jo['RefNo'].AsString;
                DM_data.qry_pub.FieldByName('yhfylb').Value := '03';
                DM_data.qry_pub.Post;
                DM_data.qry_pub.UpdateBatch(arAll);
                cache_pos := '0';
                application.MessageBox('POSˢ���ɹ���', '��ʾ', mb_ok);
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
    proc_fylb(0); //���ǿ��û���ѡ�������

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
        Application.MessageBox('����������������䣡', 'ע��', 16);
        mzh.SetFocus;
        Abort;
      end
      else
        if Application.MessageBox('�Ƿ��޸���Ļ�Ա������?',
          '��Ϣ��ʾ��', MB_OKCANCEL + MB_DEFBUTTON2 + 32) = IDOK then
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
    //��ѯ����
    if proc_cx_jzklx(trim(mzh.Text)) or (Prv_tmh_fs = 5) then
    begin
      lab_bdxx.Caption := '�󶨾��񽡿����ţ�' + trim(mzh.Text);
      lab_bdxx.Visible := true;
      mzh.Text := pub_bdktmh;
      mz_tmh := pub_bdktmh;
      Prv_tmh_fs := 5;
    end
    else
    begin
      if length(mzhstr) = 9 then //���û�
      begin
        mzh.text := mzhstr;
        mz_tmh := mzhstr;
        Prv_tmh_fs := 1;
      end
      else
        if length(mzhstr) = 12 then //��ʱ���û�
        begin
          mz_tmh := mzhstr;
          Prv_tmh_fs := 2;
        end
        else
          if Length(mzhstr) = 18 then //����������
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
      Application.MessageBox('û�и����ﲡ���û���Ϣ!', 'ע��', 0 + 48);
      mzh.SelectAll;
      abort;
    end
    else
    begin
      yjje := sp_cx_kyh.FieldByName('yjze').AsFloat;
      syje := sp_cx_kyh.FieldByName('syje').AsFloat;

      Prv_kyh_je := syje; //����ʱ��ʣ��������ڳ����и���;
      zfy := sp_cx_kyh.FieldByName('zfy').AsFloat;

      mz_fylbmc := sp_cx_kyh.FieldByName('lbmc').AsString;
      //���˷����������
      mz_fyzfbl := sp_cx_kyh.FieldByName('zezfbl').AsFloat;
      //���˷����ܶ��Ը�����
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
      mz_fylb := Trim(sp_cx_kyh.FieldByName('fylb').AsString); //���˷������

      Pub_xjbz := not sp_cx_kyh.FieldByName('yjbz').AsBoolean;
//      if pub_xjbz then //���Ϊ�ֽ��־����ֱ�����÷������Ϊ'01'
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
          + ',Ԥ���ܶ' + FormatFloat('0.00', yjje)
          + ',ʣ���' + FormatFloat('0.00', syje);
        maxg; //�����޸�
      end
      else
        LB_khy.Caption := LB_khy.Caption;
      //����������ҽԺ��ʾ�����Ƿ��Ѿ��ڹҺŴ�����ͳ��
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
        //------������ѹ�س�,��� -------����ѡ�� "��ҩ�������Ƿ�ʹ�ð�װ"ʱ���������
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
            Application.MessageBox('��������ȷ�Ĵ�������!', 'ע��', 0 + 48);
            qry_mx.Edit;
            qry_mx['ypsl'] := 0;
          end
          else
          begin
            if Prv_cfhj_fs = 2 then
              proc_cxypkc; //�޸�ʱȡ��ʵ�ʿ������
            if sp_yp.Active then
            begin
              if (qry_mx['ypsl'] > Prv_bz_ypkc) and (not pub_zyhjbz) then
              begin
                Application.MessageBox('ҩƷ�������ܴ��ڿ������!', 'ע��', 16);
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
                  Application.MessageBox('û������������ҩƷ����!', 'ע��', 16)
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
  //���������񽡿�����
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
    Application.MessageBox('û��ҩƷ��ϸ����!', 'ע��', 16);
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
  //  if mzsfsfsswr then //�����շ��յ���ϵͳ����
  //    qry_zb['sszje'] := formatFloat('0.00', realtomoney1(cfzje)) //С��λ�������뵽��
  //  else
  //    if pub_sf5or1 then //�շѵ���ǻ�1Ԫ����
  //      qry_zb['sszje'] := formatFloat('0.00', func_CastMoneyTo5(realtomoney1(cfzje)))
  //    else
  //    begin
  //      qry_zb['sszje'] := formatFloat('0.00', realtomoney2(cfzje)); //С��λ�������뵽��
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
      if pub_mzsf_bl then //��¼�վ�
        S := frm_func.func_get_sjbh(pub_czydm, '01', '2')
      else
        S := frm_func.func_get_sjbh(pub_czydm, '01', '1');
      if S = '' then
      begin
        MessageDlg('�վ������꣬���������վݣ�', mtWarning, [mbOK], 0);
        Exit;
      end;
      dm_data.qry_pub.Close;
      dm_data.qry_pub.SQL.Clear;
      dm_data.qry_pub.SQL.Add('Exec mzsf_cx_sfxm ' + #39 + Trim(editsflb.text) + #39);
      dm_data.qry_pub.Open;
      if dm_data.qry_pub.RecordCount = 0 then
      begin
        Application.MessageBox('�շ�������������', '��ʾ', 48);
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
          g_empt.Columns[0].title.Caption := '��׼��';
          g_empt.Columns[0].width := 100;
          g_empt.Columns[3].visible := true;
          g_empt.Columns[1].fieldname := 'fymc';
          g_empt.Columns[1].title.Caption := '����';
          g_empt.width := 600;
          g_empt.Columns[1].Width := 200;
          g_empt.Columns[2].fieldname := 'pym';
          g_empt.Columns[2].title.Caption := 'ƴ����';
          g_empt.Columns[3].Visible := true;
          g_empt.Columns[3].fieldname := 'fydm';
          g_empt.Columns[3].title.Caption := '���ô���';
          g_empt.Columns[4].Visible := true;
          g_empt.Columns[4].fieldname := 'sfbz';
          g_empt.Columns[4].title.Caption := '�շѱ�׼';
          g_empt.Tag := 1; // 1��ʾGRID��ʾ�շ����
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
      Application.messagebox('�������շ���Ŀ���룡', '����', mb_ok + mb_iconerror);
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
  //  if mzsfsfsswr then // ������������
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
    Application.MessageBox('��ʾ:�����ҩƷ������ȡ��ʽ!', '��ʾ', MB_OK + MB_ICONINFORMATION);
    Abort;
  end;
  proc_fymx;
  if (trim(lb_khy.Caption) <> '') and (trim(pub_re.zhye) <> '') then
  begin
    lb_khy.Caption := pub_re.zhye + 'Ԥ��:' + zje1.Caption;
  end;
end;

procedure Tfrm_mzsf.E_sfcsExit(Sender: TObject);
var
  _sfcs: Double;
begin
  frm_func.restorecolor(Sender);
  //����������ҽԺҪ���������ΪС��
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
        Application.MessageBox('��������С�������������룡', 'ϵͳ��ʾ', MB_OK +
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
          Application.MessageBox('��ʾ:Ϊ�˷�ֹ�����,�˴���һ������������ܴ���10��!', '��ʾ', MB_OK + MB_ICONINFORMATION);
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
      Application.messagebox('�����벡������,���û������"*"���棡', '����', mb_ok + mb_iconerror);
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
//      //������ҽԺ��������������20130709�޽�������ҽԺ�˴�������20131205
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
  //20100827�����ſ�----------------------
  if checkbox2.Checked and mzsfsfsyyy then
  begin
    try
      if (pub_yydm <> '0046') then //�޽�������ҽԺ�˴�������
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
  //�����ѡ���˷������ȫ�ԷѴ���
  if not mzsfsffylb then
  begin
    brlb.Text := '�Է�ҽ��';
    mz_fylb := '01';
    mz_fyzfbl := 100;
  end;
  qry_fymx.Close;
  Pub_Is_zhsb := false;
//  Pub_Is_sbsf := Pub_Is_zhsb;
  //���������񽡿�����
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
    Pub_xjbz := True; //�ֽ��־
    if length(Trim(mzh.text)) = 0 then
    begin
      sp_sqkh.Active := False;
      sp_sqkh.Parameters.ParamByName('@lstmh').value := '';
      sp_sqkh.ExecProc;
      if mzsfsffylb then
        proc_fylb(0); //���ǿ��û���ѡ���������
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
      else //���벡�� [����] �յ��Ӵ������õ����
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
        brlb.Text := '�Է�ҽ��';
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
    proc_fylb(0); //���ǿ��û���ѡ���������
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
  //----2011-03-30 �˲�
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
    Application.MessageBox('��ɾ�������еĿռ�¼', '��ʾ ', 0 + 48);
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
    CheckBox1.Caption := '����'
  else
    CheckBox1.Caption := '��ʷ';
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
  //      application.MessageBox( '��Ч�Ŀ���,��ȷ�ϣ�', '����', mb_ok + mb_iconerror );
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
  if edt_sjsysl.Text = 'ʣ��:0��' then
  begin
    Application.MessageBox('�վ�������,���������վ�!', 'ϵͳ��ʾ', MB_OK + MB_ICONSTOP);
    Close;
  end;
  if (length(Trim(mzh.text)) = 0) and pub_mzsfbrsfgh and (not bt_tc.Focused) then
  begin
    Application.MessageBox('��������ȷ�ĹҺ�ID', '��ʾ', 0 + 48);
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
    pub_is_zhsb := False; //���籣�շ�
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
  //20100827�����ſ�----------------------
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
    if (pub_yydm <> '0013') then //������ҽԺ������20130709  (pub_yydm <> '0091') and
    begin
      yybjUnit.Yybj(FormatFloat('0.00', jkje), p_func_yybj.got);
      yybjUnit.yybj(FormatFloat('0.00', zhje), p_func_yybj.sett);
      yybjUnit.yybj('', p_func_yybj.CheckMoney);
    end;
  end;
end;

end.

