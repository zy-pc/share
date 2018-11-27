unit p_dzbl_main;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Menus, ComCtrls, ToolWin, ExtCtrls, AppEvnts, ImgList, Buttons, StdCtrls,
  Grids, DBGrids, cxControls, cxSplitter, DB, ADODB, DBCtrls, OleCtrls,
  EMRPAD30Lib_TLB, cxContainer, cxEdit, cxTextEdit, cxMemo,
  cxLookAndFeelPainters, cxRadioGroup, cxCustomData,
  cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxGridBandedTableView, cxGridDBBandedTableView, Printers, cdr,
  GridsEh, DBGridEh, Variants, Clipbrd, p_FrmAdoReconBase, cxStyles, cxGraphics,
  cxFilter, cxData, cxDataStorage, SHDocVw, jpeg, MSHTML, DBGridEhGrouping;
type

  THtml2ImgResult = record
    BSucc: Boolean;
    IStatus: Integer;
    CInfo: string;       
  end;

  type
  zksj = record
    wz: string;
    gjc: string;
    jg: string;
  end;

type
  TFrm_dzbl_main = class(TfrmAdoReconBase)
    StatusBar1: TStatusBar;
    Panel1: TPanel;
    treeviewzp: TTreeView;
    Panel2: TPanel;
    qry_mbmx: TADOQuery;
    ds_mbmx: TDataSource;
    pgc1: TPageControl;
    ts1: TTabSheet;
    ts2: TTabSheet;
    ImageList2: TImageList;
    Qry_pub: TADOQuery;
    ds_pub: TDataSource;
    ts3: TTabSheet;
    Main_Menu: TMainMenu;
    N1: TMenuItem;
    N13: TMenuItem;
    N14: TMenuItem;
    N15: TMenuItem;
    N17: TMenuItem;
    N18: TMenuItem;
    N19: TMenuItem;
    N22: TMenuItem;
    N20: TMenuItem;
    N21: TMenuItem;
    editbl: TMenuItem;
    N25: TMenuItem;
    N26: TMenuItem;
    N28: TMenuItem;
    N29: TMenuItem;
    N30: TMenuItem;
    Nbj_del: TMenuItem;
    N32: TMenuItem;
    N33: TMenuItem;
    N34: TMenuItem;
    N35: TMenuItem;
    N36: TMenuItem;
    viewbl: TMenuItem;
    N42: TMenuItem;
    N43: TMenuItem;
    N44: TMenuItem;
    N5: TMenuItem;
    N59: TMenuItem;
    tablebl: TMenuItem;
    N61: TMenuItem;
    N63: TMenuItem;
    N66: TMenuItem;
    N64: TMenuItem;
    N65: TMenuItem;
    N67: TMenuItem;
    N68: TMenuItem;
    N69: TMenuItem;
    N62: TMenuItem;
    N70: TMenuItem;
    N71: TMenuItem;
    N72: TMenuItem;
    N73: TMenuItem;
    N74: TMenuItem;
    N75: TMenuItem;
    N76: TMenuItem;
    N77: TMenuItem;
    N78: TMenuItem;
    fzbl: TMenuItem;
    N87: TMenuItem;
    N88: TMenuItem;
    N89: TMenuItem;
    N8: TMenuItem;
    N92: TMenuItem;
    N93: TMenuItem;
    N96: TMenuItem;
    N94: TMenuItem;
    N95: TMenuItem;
    N10: TMenuItem;
    PopupMenuedit: TPopupMenu;
    savebl: TMenuItem;
    N140: TMenuItem;
    menuItemYSSign: TMenuItem;
    N143: TMenuItem;
    N144: TMenuItem;
    N145: TMenuItem;
    N146: TMenuItem;
    N147: TMenuItem;
    N148: TMenuItem;
    N149: TMenuItem;
    N150: TMenuItem;
    N152: TMenuItem;
    N154: TMenuItem;
    N155: TMenuItem;
    N157: TMenuItem;
    N158: TMenuItem;
    N159: TMenuItem;
    N160: TMenuItem;
    N161: TMenuItem;
    N162: TMenuItem;
    N163: TMenuItem;
    N164: TMenuItem;
    N165: TMenuItem;
    N166: TMenuItem;
    N167: TMenuItem;
    qry_tree: TADOQuery;
    PopupMenumode: TPopupMenu;
    blmb: TMenuItem;
    bljk: TMenuItem;
    ImageList1: TImageList;
    CoolBar1: TCoolBar;
    ToolBar1: TToolBar;
    b_add: TToolButton;
    undoButton: TToolButton;
    ToolButton4: TToolButton;
    saveButton: TToolButton;
    deleteButton: TToolButton;
    ToolButton7: TToolButton;
    findButton: TToolButton;
    replButton: TToolButton;
    ToolButton10: TToolButton;
    qry_up_dlbl: TADOQuery;
    qry_keyword: TADOQuery;
    ds_blmx: TDataSource;
    N171: TMenuItem;
    cxSplitter2: TcxSplitter;
    qry_brbl: TADOQuery;
    EMRPad301: TEMRPad30;
    N173: TMenuItem;
    SaveDialog1: TSaveDialog;
    redoButton: TToolButton;
    b_yzlr: TToolButton;
    ToolButton14: TToolButton;
    ToolButton15: TToolButton;
    sp_cx_micro: TADOStoredProc;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N9: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    N16: TMenuItem;
    N23: TMenuItem;
    N24: TMenuItem;
    N27: TMenuItem;
    N37: TMenuItem;
    PACS1: TMenuItem;
    N38: TMenuItem;
    N39: TMenuItem;
    N40: TMenuItem;
    N41: TMenuItem;
    N45: TMenuItem;
    N46: TMenuItem;
    N47: TMenuItem;
    N48: TMenuItem;
    DBGridmbmx: TDBGrid;
    Panel3: TPanel;
    editpym: TEdit;
    Label1: TLabel;
    qry_blzsk: TADOQuery;
    ds_blzsk: TDataSource;
    N49: TMenuItem;
    N50: TMenuItem;
    N51: TMenuItem;
    f_dele_cg: TMenuItem;
    ts4: TTabSheet;
    cxMemoxml: TcxMemo;
    sp_up_bcjlmx: TADOStoredProc;
    Popupnull: TPopupMenu;
    b_ICD10: TToolButton;
    b_mbmx: TToolButton;
    ToolButton3: TToolButton;
    b_sszs: TToolButton;
    N54: TMenuItem;
    ICD101: TMenuItem;
    b_return: TBitBtn;
    sp_del_bcjl: TADOStoredProc;
    N53: TMenuItem;
    qry_up_bcjl: TADOQuery;
    TreeViewgjc: TTreeView;
    rbgjc: TRadioButton;
    rbgjcnr: TRadioButton;
    ts5: TTabSheet;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    qry_blmxjl: TADOQuery;
    ds_blmxjl: TDataSource;
    cxGrid1DBTableView1tmh: TcxGridDBColumn;
    cxGrid1DBTableView1bcid: TcxGridDBColumn;
    cxGrid1DBTableView1blmc: TcxGridDBColumn;
    cxGrid1DBTableView1blrq: TcxGridDBColumn;
    cxGrid1DBTableView1blys: TcxGridDBColumn;
    cxGrid1DBTableView1blysqmbz: TcxGridDBColumn;
    cxGrid1DBTableView1zzrq: TcxGridDBColumn;
    cxGrid1DBTableView1zzys: TcxGridDBColumn;
    cxGrid1DBTableView1zzysqmbz: TcxGridDBColumn;
    cxGrid1DBTableView1zgrq: TcxGridDBColumn;
    cxGrid1DBTableView1zgys: TcxGridDBColumn;
    cxGrid1DBTableView1zgysqmbz: TcxGridDBColumn;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1DBBandedTableView1tmh: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1blmc: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1blrq: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1blys: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1blysqmbz: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1zzrq: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1zzys: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1zzysqmbz: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1zgrq: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1zgys: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1zgysqmbz: TcxGridDBBandedColumn;
    GroupBox1: TGroupBox;
    rbgr: TcxRadioButton;
    rbks: TcxRadioButton;
    rbgg: TcxRadioButton;
    rbqb: TcxRadioButton;
    b_retu: TBitBtn;
    Label2: TLabel;
    edt_mbdm: TEdit;
    cancel: TToolButton;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    cxGrid2DBTableView1dm: TcxGridDBColumn;
    cxGrid2DBTableView1mbdm: TcxGridDBColumn;
    cxGrid2DBTableView1mbmc: TcxGridDBColumn;
    cxGrid2DBTableView1mbczy: TcxGridDBColumn;
    cxGrid2DBTableView1pym: TcxGridDBColumn;
    cxGrid2DBTableView1ksmc: TcxGridDBColumn;
    N31: TMenuItem;
    PrintDialog1: TPrintDialog;
    Memo1: TMemo;
    N52: TMenuItem;
    N55: TMenuItem;
    Panel4: TPanel;
    Panel5: TPanel;
    Button1: TButton;
    DBGridEh1: TDBGridEh;
    DataSource1: TDataSource;
    ADODataSet1: TADODataSet;
    ADODataSet1tmh: TStringField;
    ADODataSet1zyh: TStringField;
    ADODataSet1bcid: TIntegerField;
    ADODataSet1blbcpdid: TIntegerField;
    ADODataSet1zzbcpdid: TIntegerField;
    ADODataSet1zgbcpdid: TIntegerField;
    ADODataSet1blmc: TStringField;
    ADODataSet1blys: TStringField;
    ADODataSet2: TADODataSet;
    StringField1: TStringField;
    StringField2: TStringField;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    IntegerField4: TIntegerField;
    StringField3: TStringField;
    StringField4: TStringField;
    DataSource2: TDataSource;
    N57: TMenuItem;
    lclj: TTabSheet;
    Panel6: TPanel;
    cxGrid3: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGrid1BandedTableView1: TcxGridBandedTableView;
    cxGridLevel1: TcxGridLevel;
    qry_ljcx: TADOQuery;
    qry_zkcx: TADOQuery;
    N56: TMenuItem;
    EMRPad302: TEMRPad30;
    N58: TMenuItem;
    N60: TMenuItem;
    N79: TMenuItem;
    N80: TMenuItem;
    qry_copy_bl: TADOQuery;
    qry_insert_bl: TADOQuery;
    qry_mbmx_copy: TADOQuery;
    PopupMenuedit_1: TPopupMenu;
    MenuItem17: TMenuItem;
    qry_cxbqdm: TADOQuery;
    Label3: TLabel;
    cxSplitter1: TcxSplitter;
    tree: TPanel;
    Panel7: TPanel;
    Label21: TLabel;
    Edit1: TEdit;
    Panel8: TPanel;
    cxGrid4: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGrid1DBTableView1bch: TcxGridDBColumn;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGrid1DBTableView1brxm: TcxGridDBColumn;
    cxGrid1DBTableView1brxb: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1ksmc: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    sp_ycybr: TADOStoredProc;
    ds_cybr: TDataSource;
    PopupMenu2: TPopupMenu;
    MenuItem1: TMenuItem;
    qry_dzblbf: TADOQuery;
    DataSource3: TDataSource;
    N81: TMenuItem;
    N82: TMenuItem;
    N84: TMenuItem;
    sp_cx_dzbljyjg: TADOStoredProc;
    menuItemCancelYSSign: TMenuItem;
    qry_cx_dqys: TADOQuery;
    N102: TMenuItem;
    query1: TADOQuery;
    edtAddress: TEdit;
    wbEditor: TWebBrowser;
    N83: TMenuItem;
    N85: TMenuItem;
    sp_jbxx: TADOStoredProc;
    N86: TMenuItem;
    TabSheetyzlr: TTabSheet;
    N90: TMenuItem;
    N91: TMenuItem;
    sp_save_mblcw: TADOStoredProc;
    N97: TMenuItem;
    qry_tjbl: TADOQuery;
    qry_tjzt: TADOQuery;
    procedure N149Click(Sender: TObject);
    procedure N158Click(Sender: TObject);
    procedure N157Click(Sender: TObject);
    procedure replButtonClick(Sender: TObject);
    procedure findButtonClick(Sender: TObject);
    procedure N13Click(Sender: TObject);
    procedure N21Click(Sender: TObject);
    procedure N20Click(Sender: TObject);
    procedure N17Click(Sender: TObject);
    procedure N19Click(Sender: TObject);
    procedure N12Click(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N78Click(Sender: TObject);
    procedure N77Click(Sender: TObject);
    procedure N76Click(Sender: TObject);
    procedure N75Click(Sender: TObject);
    procedure N74Click(Sender: TObject);
    procedure N72Click(Sender: TObject);
    procedure N71Click(Sender: TObject);
    procedure N70Click(Sender: TObject);
    procedure N69Click(Sender: TObject);
    procedure N68Click(Sender: TObject);
    procedure N65Click(Sender: TObject);
    procedure N64Click(Sender: TObject);
    procedure N63Click(Sender: TObject);
    procedure N24Click(Sender: TObject);
    procedure N44Click(Sender: TObject);
    procedure N43Click(Sender: TObject);
    procedure N42Click(Sender: TObject);
    procedure N37Click(Sender: TObject);
    procedure N48Click(Sender: TObject);
    procedure N47Click(Sender: TObject);
    procedure N46Click(Sender: TObject);
    procedure N152Click(Sender: TObject);
    procedure N18Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure menuItemYSSignClick(Sender: TObject);
    procedure saveButtonClick(Sender: TObject);
    procedure b_addClick(Sender: TObject);
    procedure redoButtonClick(Sender: TObject);
    procedure undoButtonClick(Sender: TObject);
    procedure ToolButton14Click(Sender: TObject);
    procedure N140Click(Sender: TObject);
    procedure N91Click(Sender: TObject);
    procedure N36Click(Sender: TObject);
    procedure N35Click(Sender: TObject);
    procedure N33Click(Sender: TObject);
    procedure Nbj_delClick(Sender: TObject);
    procedure N30Click(Sender: TObject);
    procedure N29Click(Sender: TObject);
    procedure N28Click(Sender: TObject);
    procedure N26Click(Sender: TObject);
    procedure N25Click(Sender: TObject);
    procedure N14Click(Sender: TObject);
    procedure treeviewzpDblClick(Sender: TObject);
    procedure EMRPad301SelectKeyword(Sender: TObject);
    procedure saveblClick(Sender: TObject);
    procedure bljkClick(Sender: TObject);
    procedure blmbClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure treeviewzpChange(Sender: TObject; Node: TTreeNode);
    procedure FormShow(Sender: TObject);
    procedure ApplicationEvents1Hint(Sender: TObject);
    procedure _zxjfx01Click(Sender: TObject);
    procedure _zxjfs01Click(Sender: TObject);
    procedure ApplicationEvents1Exception(Sender: TObject; E: Exception);
    procedure _N_closeClick(Sender: TObject);
    procedure StatusBar1DrawPanel(StatusBar: TStatusBar;
      Panel: TStatusPanel; const Rect: TRect);
    procedure _zxjfx02Click(Sender: TObject);
    function Tree_db_create(dbtree: TTreeView; zptable, zptableorder, zplbdm,
      zplbmc, zp, sqlstr: string): TTreeView;
    function TreeFindItem(Sender: TTreeView; Name: string; parent_n: integer):
      TTreeNode;
    function Treeleavelleng(zpkeyleng: integer; zp: string): integer;
    procedure getmaxid;
    procedure getmaxid_bcjl;
    procedure setmicro;
    procedure getblys;
    procedure seteditright;
    procedure SetCancelSignRight;
    procedure ExecExistingForm(FFormName: string);
    procedure editpymKeyPress(Sender: TObject; var Key: Char);
    procedure DBGridmbmxDblClick(Sender: TObject);
    procedure pgc1Change(Sender: TObject);
    procedure editpymEnter(Sender: TObject);
    procedure N144Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure N50Click(Sender: TObject);
    procedure N49Click(Sender: TObject);
    procedure N146Click(Sender: TObject);
    procedure N89Click(Sender: TObject);
    procedure f_dele_cgClick(Sender: TObject);
    procedure deleteButtonClick(Sender: TObject);
    procedure N150Click(Sender: TObject);
    procedure N154Click(Sender: TObject);
    procedure savedzblbcjl;
    function  locatedzbl:Boolean;
    procedure locatebcpd;
    procedure FormActivate(Sender: TObject);
    procedure rbqbClick(Sender: TObject);
    procedure rbggClick(Sender: TObject);
    procedure rbksClick(Sender: TObject);
    procedure rbgrClick(Sender: TObject);
    procedure b_gjcClick(Sender: TObject);
    procedure b_mbmxClick(Sender: TObject);
    procedure b_ICD10Click(Sender: TObject);
    procedure b_sszsClick(Sender: TObject);
    procedure ICD101Click(Sender: TObject);
    procedure b_returnClick(Sender: TObject);
    procedure deletebcpd;
    procedure deletebcml;
    procedure openbcjl;
    procedure yzblys;
    procedure getpub_blys;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure N53Click(Sender: TObject);
    procedure TreeViewgjcChange(Sender: TObject; Node: TTreeNode);
    procedure N165Click(Sender: TObject);
    procedure N41Click(Sender: TObject);
    procedure N95Click(Sender: TObject);
    procedure N92Click(Sender: TObject);
    procedure edt_mbdmKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure blxb_check;
    procedure cancelClick(Sender: TObject);
    procedure cxGrid2DBTableView1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure blwqxkz;
    procedure N148Click(Sender: TObject);
    procedure N31Click(Sender: TObject);
    procedure N93Click(Sender: TObject);
    procedure dydyj;
    procedure N52Click(Sender: TObject);
    procedure N55Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure N57Click(Sender: TObject);
    procedure N56Click(Sender: TObject);
    procedure jkjc(xh: real; lb, brxb: string);
    procedure DBGridEh1Enter(Sender: TObject);
    procedure DBGridEh1Exit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure N58Click(Sender: TObject);
    procedure N60Click(Sender: TObject);
    procedure PopupMenumodeChange(Sender: TObject; Source: TMenuItem;
      Rebuild: Boolean);
    procedure N79Click(Sender: TObject);
    procedure N80Click(Sender: TObject);
    procedure savenew;
    procedure MenuItem17Click(Sender: TObject);
    procedure lcljShow(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure EMRPad301KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure N81Click(Sender: TObject);
    procedure N82Click(Sender: TObject);
    procedure N101Click(Sender: TObject);
    procedure N84Click(Sender: TObject);
    procedure menuItemCancelYSSignClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure N102Click(Sender: TObject);
    procedure N85Click(Sender: TObject);
    procedure N86Click(Sender: TObject);
    procedure TabSheetyzlrShow(Sender: TObject);
    procedure FormMouseWheel(Sender: TObject; Shift: TShiftState;
      WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
    procedure N90Click(Sender: TObject);
    procedure cxSplitter2Moved(Sender: TObject);
    procedure N97Click(Sender: TObject);
  private
    { Private declarations }
    zkjs, bljs, byjs: integer;
    blwj: array[0..40] of string;
    blbd: array[0..400] of zksj; //用于病历内容比对结果存放
    v_zksm: string;
    F_bcid:string;
    FloginIP:string; //登陆ip地址
    FOldWndProc: TWndMethod; //保存特定控件原来的方法地址
    procedure setmode(mode: string);
    procedure CancelYSSign;
    procedure WMAdoReStore(var message: TMessage); message WM_ADOReCon;
    procedure Nav(AURl: WideString);
    // 此方法废弃
    function HTML2BmpDrawTo(ABrowser: TWebBrowser;
      ADestFilename: string): THtml2ImgResult;
    function HTML2JpgDraw(Awb: TWebBrowser; ADestFilename: string):
      THtml2ImgResult;
    procedure BitmapToJPeg(const FileName: string; SaveFileName: string);
    function GetSaveImgFileName(aDefaultFileName: string): string;
    procedure yzlr_TabFormShow; //医嘱录入窗体Table显示
    procedure DeleteLonginLogData(BLLX :string);//删除登陆日志数据
    procedure DeleteReadOnlyLogData(BLLX :string); //删除非编辑状态数据
     procedure  insertLonginLogData(BLLX :string='01');     //插入登陆日志数据
  public
    { Public declarations }

    pub_name1  :string;
    pub_key1  :string;
    locatename1     :string;

    qy_hzsqym :string;
    jyxmdrnr: string;
    pub_key_old,Pub_bL_dy  :string      ;    //20170825
    pub_name, pub_key, pub_blys, pub_zzys, pub_zgys, addbcjl, locatename,
      formcaption: string;
    bl_blys, bl_zzys, bl_zgys, bl_ssys, bl_jfys, bl_hzys, bl_bllb, bl_mzys,
      pub_brxb: string;
    bl_blysbz, bl_zzysbz, bl_zgysbz, onshowbz, pub_blysbz, pub_zzysbz,
      pub_zgysbz: boolean;
    bl_bcid, bl_qxjb, blbcpdid, zzbcpdid, zgbcpdid, bc_count, bc_hh, bc_zh:
    integer;
    pub_jlrq, pub_ssys, pub_jfys, pub_hzys, xzdrys, drbz: string; //书写日期
    zyys_addqx : Boolean; //宁安市不算合理的需求 同病区科室除入院病历外其他病历都可以新加标志
    procedure WndProc(var Msg: TMessage); //override;
    function AdoRefresh: Boolean;
    function findallnodevaluebyname(filename, fieldname, wz: string): integer;
    procedure openandsaveblwj(wz1: string);
    function fun_blgjcbd: string; //病历关键词比对
    function fun_displayarray: string;


  end;

var
  Frm_dzbl_main: TFrm_dzbl_main;

implementation

uses p_func, p_dm, p_zdxz, p_jbcx, //p_crbbgk,
  p_bqgl_ssapcx, P_luying,
  p_yzinput, P_mbbj, p_xsedj, p_dtkdy, p_dck_dzbl, p_LCLJSJ,
  P_dzbl_bcys, p_dzbl_dybcys, p_in_jyxmjg, p_main, thermometer_TLB,
  StrUtils, ActiveX,p_cqyzxzdy,p_lsyzxzdy,p_tsfh, p_crbbgk, p_in_jcxmjg, p_hzsq,
  P_savedzblmb,p_in_jcxmjg_x;

const JpegCompressRate=30;

{$R *.DFM}

procedure Tfrm_dzbl_main.blwqxkz;
begin
  //ts1.PopupMenu := Popupnull;
  if (copy(pub_key, 1, 2) = '04') and (( pub_yydm='0266') or ( pub_yydm='0271'))  then //广元昭化人民
  begin
    //会诊医生代码判断
    DM_data.qry_pub.close;
    DM_data.qry_pub.SQL.text :=
    'select isnull(hzysdm,'''') hzysdm from zydzbl_blys where zyh=' + '''' +
    pub_zyh + '''';
    try
      DM_data.qry_pub.Open;
    except

    end;
    //判断操作员代码是否是会诊医生代码中包含的代码
    if Pos(pub_czydm, Trim(DM_data.qry_pub.FieldByName('hzysdm').asstring)) < 1 then
    begin
      ts1.PopupMenu := PopupMenuedit_1;
      EMRPad301.SetDocumentMode(3);
      Nbj_del.Enabled := false;
      editbl.Visible := false;
      editbl.Enabled := false;
      viewbl.Visible := false;
      tablebl.Visible := false;
      fzbl.Visible := false;
      treeviewzp.Enabled := true;
      if (pub_czyxm <> bl_blys) and (not bl_blysbz) and (not pub_zzysbz) then
      begin
      application.MessageBox(pchar('此病历为 ' + bl_blys +
        ' 未签名草稿，修改权限还未转给您，进入只读状态！'), '提示', 0 + 48)
      end
      else if (pub_czyxm = bl_blys) and (bl_blysbz) then
      application.MessageBox(pchar('本级病历您已经签名完成，病历修改权限已经提交给上级' + '进入只读状态！'), '提示', 0 + 48)
      else if (pub_czyxm <> pub_zzys) and (pub_blysbz) and (not pub_zzysbz) then
      application.MessageBox(pchar('此病历修改权限已转到主管医生 ' + bl_zzys +
        ' ，您不能进行修改，进入只读状态！'), '提示', 0 + 48)
      else if (pub_czyxm = pub_zzys) and (pub_blysbz) and (pub_zzysbz) then
      application.MessageBox(pchar('本级病程您已经签名完成，病历修改权限已经提交给上级' + '进入只读状态！'), '提示', 0 + 48)
      else if (pub_czyxm <> pub_zgys) and (pub_blysbz) and (pub_zzysbz) then
      application.MessageBox(pchar('此病历修改权限已转到科室主管 ' + bl_zgys +
        ' ，您不能进行修改，进入只读状态！'), '提示', 0 + 48)
      else if (pub_czyxm = pub_zgys) and (pub_blysbz) and (pub_zzysbz) and
      (pub_zgysbz) then
      application.MessageBox(pchar('此病历您已经签名完成 ，不能进行修改，进入只读状态！'), '提示', 0 + 48)
      else if (pub_czyxm = pub_blys) and (bl_blys <> pub_blys) then
      application.MessageBox(pchar('此病历 ' + bl_blys + ' 已签名，病历医生 ' +
        pub_blys + ' 还未对病历完成进行签名确认,不能进行修改，进入只读状态！'),
        '提示', 0 + 48)
      else if (pub_czyxm = pub_zgys) and (not pub_zzysbz) then
      application.MessageBox(pchar('主管医生' + pub_zzys +
        '还未签名认可,修改权限还未转给您！'), '提示', 0 + 48)
      else if (pub_czyxm = pub_zzys) and (not pub_blysbz) then
      application.MessageBox(pchar('病历医生' + pub_blys + ',登陆IP地址：'+ FloginIP +
        ' 还未签名认可,修改权限还未转给您或者其他人正在编辑！'), '提示', 0 + 48)
      else if (pub_zzys <> bl_zzys)  then //四会市医院
      application.MessageBox(pchar('病历主管医生' + bl_zzys +',登陆IP地址：'+ FloginIP +
        ' 与当前主管医生'+ pub_zzys+ '在编辑，没有修改权限！'), '提示', 0 + 48)

        else

       application.MessageBox(pchar('病历主管医生' + bl_zzys +',登陆IP地址：'+ FloginIP +
        ' 与当前主管医生'+ pub_zzys+ '在编辑，没有修改权限！'), '提示', 0 + 48);        ////
    end else
    begin
      if (pub_czyxm = bl_blys) and (bl_blysbz) then
      application.MessageBox(pchar('本级病历您已经签名完成，病历修改权限已经提交给上级' + '进入只读状态！'), '提示', 0 + 48)
      else if (pub_czyxm <> pub_zzys) and (pub_blysbz) and (not pub_zzysbz) then
      application.MessageBox(pchar('此病历修改权限已转到主管医生 ' + bl_zzys +
        ' ，您不能进行修改，进入只读状态！'), '提示', 0 + 48)
      else if (pub_czyxm = pub_zzys) and (pub_blysbz) and (pub_zzysbz) then
      application.MessageBox(pchar('本级病程您已经签名完成，病历修改权限已经提交给上级' + '进入只读状态！'), '提示', 0 + 48)
      else if (pub_czyxm <> pub_zgys) and (pub_blysbz) and (pub_zzysbz) then
      application.MessageBox(pchar('此病历修改权限已转到科室主管 ' + bl_zgys +
        ' ，您不能进行修改，进入只读状态！'), '提示', 0 + 48)
      else if (pub_czyxm = pub_zgys) and (pub_blysbz) and (pub_zzysbz) and
      (pub_zgysbz) then
      application.MessageBox(pchar('此病历您已经签名完成 ，不能进行修改，进入只读状态！'), '提示', 0 + 48)
      else if (pub_czyxm = pub_blys) and (bl_blys <> pub_blys) then
      application.MessageBox(pchar('此病历 ' + bl_blys + ' 已签名，病历医生 ' +
        pub_blys + ' 还未对病历完成进行签名确认,不能进行修改，进入只读状态！'),
        '提示', 0 + 48)
      else if (pub_czyxm = pub_zgys) and (not pub_zzysbz) then
      application.MessageBox(pchar('主管医生' + pub_zzys +
        '还未签名认可,修改权限还未转给您！'), '提示', 0 + 48)
      else if (pub_czyxm = pub_zzys) and (not pub_blysbz) then
      application.MessageBox(pchar('病历医生' + pub_blys + ',登陆IP地址：'+ FloginIP +
        ' 还未签名认可,修改权限还未转给您或者其他人正在编辑！'), '提示', 0 + 48)
      else if (pub_zzys <> bl_zzys)  then //四会市医院
      application.MessageBox(pchar('病历主管医生' + bl_zzys +',登陆IP地址：'+ FloginIP +
        ' 与当前主管医生'+ pub_zzys+ '在编辑，没有修改权限！'), '提示', 0 + 48)

        else

       application.MessageBox(pchar('病历主管医生' + bl_zzys +',登陆IP地址：'+ FloginIP +
        ' 与当前主管医生'+ pub_zzys+ '在编辑，没有修改权限！'), '提示', 0 + 48);        ////
    end;
  end else
  begin
    ts1.PopupMenu := PopupMenuedit_1;
    EMRPad301.SetDocumentMode(3);
    Nbj_del.Enabled := false;
    editbl.Visible := false;
    editbl.Enabled := false;
    viewbl.Visible := false;
    tablebl.Visible := false;
    fzbl.Visible := false;
    treeviewzp.Enabled := true;
    qry_tjzt.Close;
    qry_tjzt.open;
    qry_tjzt.Filtered := false;
    qry_tjzt.Filter := ' zyh ='+#39+pub_zyh+#39;
    qry_tjzt.Filtered := True;
    if qry_tjzt.FieldByName('blgdbz').AsInteger=1  then
    begin
     application.MessageBox(pchar('此病历已提交，不允许再进行编辑！'), '提示', 0 + 48)
    end
    else if (pub_czyxm <> bl_blys) and (not bl_blysbz) and (not pub_zzysbz) then
    begin
      application.MessageBox(pchar('此病历为 ' + bl_blys +
        ' 未签名草稿，修改权限还未转给您，进入只读状态！'), '提示', 0 + 48)
    end
    else if (pub_czyxm = bl_blys) and (bl_blysbz) then
      application.MessageBox(pchar('本级病历您已经签名完成，病历修改权限已经提交给上级' + '进入只读状态！'), '提示', 0 + 48)
    else if (pub_czyxm <> pub_zzys) and (pub_blysbz) and (not pub_zzysbz) then
      application.MessageBox(pchar('此病历修改权限已转到主管医生 ' + bl_zzys +
        ' ，您不能进行修改，进入只读状态！'), '提示', 0 + 48)
    else if (pub_czyxm = pub_zzys) and (pub_blysbz) and (pub_zzysbz) then
      application.MessageBox(pchar('本级病程您已经签名完成，病历修改权限已经提交给上级' + '进入只读状态！'), '提示', 0 + 48)
    else if (pub_czyxm <> pub_zgys) and (pub_blysbz) and (pub_zzysbz) then
      application.MessageBox(pchar('此病历修改权限已转到科室主管 ' + bl_zgys +
        ' ，您不能进行修改，进入只读状态！'), '提示', 0 + 48)
    else if (pub_czyxm = pub_zgys) and (pub_blysbz) and (pub_zzysbz) and
      (pub_zgysbz) then
      application.MessageBox(pchar('此病历您已经签名完成 ，不能进行修改，进入只读状态！'), '提示', 0 + 48)
    else if (pub_czyxm = pub_blys) and (bl_blys <> pub_blys) then
      application.MessageBox(pchar('此病历 ' + bl_blys + ' 已签名，病历医生 ' +
        pub_blys + ' 还未对病历完成进行签名确认,不能进行修改，进入只读状态！'),
        '提示', 0 + 48)
    else if (pub_czyxm = pub_zgys) and (not pub_zzysbz) then
      application.MessageBox(pchar('主管医生' + pub_zzys +
        '还未签名认可,修改权限还未转给您！'), '提示', 0 + 48)
    else if (pub_czyxm = pub_zzys) and (not pub_blysbz) then
      application.MessageBox(pchar('病历医生' + pub_blys + ',登陆IP地址：'+ FloginIP +
        ' 还未签名认可,修改权限还未转给您或其他人正在编辑！'), '提示', 0 + 48)
    else if (pub_zzys <> bl_zzys)  then //四会市医院
      application.MessageBox(pchar('病历主管医生' + bl_zzys +',登陆IP地址：'+ FloginIP +
        ' 与当前主管医生'+ pub_zzys+ '在编辑，没有修改权限！'), '提示', 0 + 48)
    else

       application.MessageBox(pchar('病历主管医生' + bl_zzys +',登陆IP地址：'+ FloginIP +
        ' 与当前主管医生'+ pub_zzys+ '在编辑，没有修改权限！'), '提示', 0 + 48);        ////

  end;
end;

procedure Tfrm_dzbl_main.blxb_check;
begin
  if pub_brxb = '男' then
  begin
    if EMRPad301.FindField('月经史%', -1, 1, true) then
      EMRPad301.UniversalBoolFunction('', '', 36, 0);
    if EMRPad301.FindField('生育史%', -1, 1, true) then
      EMRPad301.UniversalBoolFunction('', '', 36, 0);
  end;

end;

procedure TFrm_dzbl_main.Button1Click(Sender: TObject);
begin
  Panel4.Visible := False;
end;

procedure Tfrm_dzbl_main.getpub_blys;
begin
  // 病程记录
  if (copy(pub_key, 1, 2) = '02') then
  begin
    qry_pub.Close;
    qry_pub.SQL.Text := 'select * from zydzbl_blys where zyh=' + '''' + pub_zyh
      +
      '''';
    qry_pub.Open;
    if Qry_pub.IsEmpty then
    begin
      Application.MessageBox('没有设置医生授权!请先进入病历医生进行医生授权!',
        '提示', 0 + 48);
      Exit;
    end;
    pub_blys := trim(qry_pub.FieldByName('blys').AsString);
    pub_zzys := trim(qry_pub.FieldByName('zzys').AsString);
    pub_zgys := trim(qry_pub.FieldByName('zgys').AsString);
    pub_ssys := trim(qry_pub.FieldByName('ssysdm').AsString);
    pub_jfys := trim(qry_pub.FieldByName('jfysdm').AsString);
    pub_hzys := trim(qry_pub.FieldByName('hzysdm').AsString);
    qry_pub.Close;
    qry_pub.SQL.Text := 'select * from zydzbl_zydzblmx where fldm=' + '''' +
      pub_key + '''' +
      ' and zyh=' + '''' + pub_zyh + '''';
    qry_pub.Open;
    pub_blysbz := qry_pub.FieldByName('blysqmbz').AsBoolean;
    pub_zzysbz := qry_pub.FieldByName('zzysqmbz').AsBoolean;
    pub_zgysbz := qry_pub.FieldByName('zgysqmbz').AsBoolean;
  end
  else
  begin
    { bl_blysbz来源于：
    ①如果是病程记录，则取自 zydzbl_zybcjlmx中的 blysqmbz
    ②如果不是病程记录，则取自 zydzbl_zydzblmx 中的 blysqmbz}
    pub_blys := bl_blys;
    pub_zzys := bl_zzys;
    pub_zgys := bl_zgys;
    pub_blysbz := bl_blysbz;
    pub_zzysbz := bl_zzysbz;
    pub_zgysbz := bl_zgysbz;
  end;
end;

procedure Tfrm_dzbl_main.yzblys;
var
  blysdm, zzysdm, zgysdm, ksdm, bqdm, v_bqdm,lgbr: string;
label
  StepOverGranted;
begin
  qry_pub.Close;
  qry_pub.SQL.Text := 'select a.*,b.lgbr from zydzbl_blys a,(select zyh,lgbr from zysf_zydj union all select zyh,lgbr from zysf_cydj union all select zyh,lgbr from zyzc_zysf_cydj) b  where a.zyh=' + '''' + pub_zyh +
    ''''+'and a.zyh=b.zyh';
  qry_pub.Open;
  bl_blys := trim(qry_pub.FieldByName('blys').AsString);
  bl_zzys := trim(qry_pub.FieldByName('zzys').AsString);
  blysdm := trim(qry_pub.FieldByName('blysdm').AsString);
  zzysdm := trim(qry_pub.FieldByName('zzysdm').AsString);
  zgysdm := trim(qry_pub.FieldByName('zgysdm').AsString);
  bl_ssys := trim(qry_pub.FieldByName('ssysdm').AsString);
  bl_jfys := trim(qry_pub.FieldByName('jfysdm').AsString);
  bl_hzys := trim(qry_pub.FieldByName('hzysdm').AsString);
  bl_mzys := trim(qry_pub.FieldByName('mzysdm').AsString);
  lgbr    := Trim(Qry_pub.FieldByName('lgbr').AsString);
  qry_pub.close;
 if lgbr ='0' then
  begin
    qry_pub.SQL.Text := 'select * from sys_czy where dm in (' + #39 + zzysdm + #39 + ',' + #39 + zgysdm + #39 + ',' + #39 + blysdm + #39 + ',' + #39 + pub_czydm + #39 + ',' + #39 + bl_mzys + #39 + ')';
  end
  else
  begin
   qry_pub.SQL.Text := 'select * from sys_czy';   //镇坪留观病人病历修改
  end;
  qry_pub.Open;
  {绵阳市骨科医院ICU 特殊修改 病人转入到ICU可以采用不转科的方式。因此 其ICU护士
  写护理记录时，不判断当前操作员是不是病人麻醉,手术、icu医生,会诊医生}
  if (HN_MYSGKYY = pub_yydm) and (ICU = pub_ksmc) then
    goto StepOverGranted;

  if not ((pos(pub_czydm, bl_mzys) > 0) or (pos(pub_czydm, bl_ssys) > 0) or
    (pos(pub_czydm, bl_jfys) > 0)
    or (pos(pub_czydm, bl_hzys) > 0)) then
    //当前操作员不是病人麻醉,手术、icu医生,会诊医生
  begin
    if (copy(pub_key, 1, 2) = '03') and (pub_yydm = '0198') then
    begin

    end  else if (copy(pub_key, 1, 2) = '10') and (pub_yydm = '0257') then
    begin

    end else
    begin
      qry_pub.Locate('dm', blysdm, []);
      qry_cxbqdm.close;
      qry_cxbqdm.sql.text := 'select * from sys_bqzyfl where bqzydm=' + '''' +
        trim(qry_pub.FieldByName('ksdm').AsString) + '''';
      qry_cxbqdm.Open;
      v_bqdm := Trim(qry_cxbqdm.FieldByName('bqdm').asstring);
      if pub_bqdm <> v_bqdm then
      begin
        application.MessageBox('病历医生不是你科室的人,病人是其它科室转入病人,请先调整病历医生', '提示', 0 + 48);
        abort;
      end;
      qry_pub.Locate('dm', zzysdm, []);
      qry_cxbqdm.close;
      qry_cxbqdm.sql.text := 'select * from sys_bqzyfl where bqzydm=' + '''' +
        trim(qry_pub.FieldByName('ksdm').AsString) + '''';
      qry_cxbqdm.Open;
      v_bqdm := Trim(qry_cxbqdm.FieldByName('bqdm').asstring);
      if pub_bqdm <> v_bqdm then
      begin
        application.MessageBox('主管医生不是你科室的人,病人是其它科室转入病人,请先调整主管医生', '提示', 0 + 48);
        abort;
      end;
      qry_pub.Locate('dm', zgysdm, []);
      qry_cxbqdm.close;
      qry_cxbqdm.sql.text := 'select * from sys_bqzyfl where bqzydm=' + '''' +
        trim(qry_pub.FieldByName('ksdm').AsString) + '''';
      qry_cxbqdm.Open;
      v_bqdm := Trim(qry_cxbqdm.FieldByName('bqdm').asstring);
      if pub_bqdm <> v_bqdm then
      begin
        application.MessageBox('科室主管不是你科室的人,病人是其它科室转入病人,请先调整科室主管', '提示', 0 + 48);
        abort;
      end;
    end;
  end;

  StepOverGranted:

  qry_pub.Locate('dm', pub_czydm, []);
  ksdm := trim(qry_pub.FieldByName('ksdm').AsString); //操作员当前科室代码
  qry_pub.Close;
  qry_pub.SQL.Text := 'select * from sys_bqzyfl where bqzydm=' + #39 + ksdm +
    #39;
  qry_pub.Open;
  bqdm := trim(qry_pub.FieldByName('bqdm').AsString);
  bl_bllb := '';
  if (pub_czydm = zzysdm) or (pub_czydm = blysdm) or (pub_czyxm = bl_blys) or
    (pub_czyxm = bl_zzys) then
  else
  begin
    if (pub_bqdm = bqdm) and (pub_zyys_bladdqx <>'') then
    begin
      if Pos(copy(pub_key, 1, 2),pub_zyys_bladdqx) >0 then
      begin
        application.MessageBox('该病人的主管医生没有授予您处理该病人病历的权力,您无权录入病历!', '提示', 0 + 48);
        abort;
      end
      else
      begin
        zyys_addqx := True;
      end;
    end
    else if pub_yydm = '0116' then
    begin

    end
    else if (copy(pub_key, 1, 2) = '03') and (pub_yydm = '0198') then
    begin
      bl_bllb := '03';
    end  else if (copy(pub_key, 1, 2) = '10') and (pub_yydm = '0257') and (pub_bqdm = bqdm) then
    begin

    end
    else
    begin
      if ((pub_bqdm = bqdm) and (pub_czydm <> bl_mzys)) and ((copy(pub_key, 1, 2)
        = '02') or (copy(pub_key, 1, 2) = '11')) then
      begin
        bl_bllb := ',02,11';
      end
      else if ((pos(pub_czydm, bl_ssys) > 0) or (pub_czydm = bl_mzys)) and
        ((copy(pub_key, 1, 2) = '03') or (copy(pub_key, 1, 2) = '07')) then
        //是病人手术医生或是麻醉医生，使用03类别下模板
        bl_bllb := ',03,07,02'
      else if (pos(pub_czydm, bl_jfys) > 0) then
        //and  ((copy(pub_key, 1, 2) = '05') or (copy(pub_key, 1, 2) = '06') ) then
        bl_bllb := ',05,06,02'
      else if (pos(pub_czydm, bl_hzys) > 0) and (copy(pub_key, 1, 2) = '04') then
        bl_bllb := '04,02'
      else if (copy(pub_key, 1, 2) = '05') then
      begin
        bl_bllb := '05';
        if (pub_yydm = '0263') or (pub_yydm = '0264') then        //    or (pub_yydm = '0269')
        begin
          application.MessageBox('该病人的主管医生没有授予您处理该病人病历的权力,您无权录入病历!', '提示', 0 + 48);
          abort;
        end;
      end else if (pub_yydm = '0263') or (pub_yydm = '0264') or (pub_yydm = '0269') or (pub_yydm='0266') or (pub_yydm='0271')then

      else
      begin
        application.MessageBox('该病人的主管医生没有授予您处理该病人病历的权力,您无权录入病历!', '提示', 0 + 48);
        abort;
      end;
    end;
  end;
end;

procedure Tfrm_dzbl_main.openbcjl;
var
  stream: TADOBlobStream;
  stream1: TFileStream;
  filename: string;
begin
  filename := GetCurrentDir + '\' + 'etemp'; //+get_sjh( pub_czydm );
  EMRPad301.CleanUndoBuffer; //清空编辑缓冲区
  EMRPad301.CleanClipboard; //清空剪贴版
  qry_pub.Close;
  qry_pub.SQL.Text := 'select * from zydzbl_zydzblmx where fldm=' + '''' +
    pub_key + '''' +
    ' and zyh=' + '''' + pub_zyh + '''';
  qry_pub.Open;
  try
    stream := TADOBlobStream.Create(qry_pub.FieldByName('blwj') as TBlobField,
      bmRead);
    stream.Position := 0;
    stream1 := TFileStream.Create(filename, fmCreate);
    stream1.Position := 0;
    stream1.CopyFrom(stream, stream.Size);
  finally
    stream1.Free;
    stream.Free;
  end;
  EMRPad301.FileOpen(filename, 0);
end;

procedure Tfrm_dzbl_main.deletebcml;
var
  scxx: string;
begin
  if
    application.MessageBox(pchar('删除病程只能删除了最后一级没签名病程的目录及内容! 删除目录过程中会删掉加最后一级目录后修改以前病程的内容!,是否继续?'), '提示', 4 + 256 + 32) = 6 then
  begin
    sp_del_bcjl.Close;
    sp_del_bcjl.Parameters.ParamByName('@zyh').Value := pub_zyh;
    sp_del_bcjl.Parameters.ParamByName('@czyxm').Value := pub_czyxm;
    sp_del_bcjl.Parameters.ParamByName('@sctext').Value := '';
    sp_del_bcjl.ExecProc;
    scxx := sp_del_bcjl.Parameters.ParamByName('@sctext').Value;
    if scxx <> '' then
      application.MessageBox(pchar(scxx), '提示', 0 + 48);
  end;
end;

procedure Tfrm_dzbl_main.deletebcpd;
begin
  if EMRPad301.GetDocumentMode = 1 then
  begin
    deletebcml //删除最后一级目录
  end
  else
    application.MessageBox('病程记录只能在处理状态下删除!', '提示', 0 + 48);
end;

procedure TFrm_dzbl_main.lcljShow(Sender: TObject);
var
  sqlstr: string;
  ls_sql, ljid, dqrq, mrrq: string;
  BBH: Integer;
  Frm_LCLJSJ: Tfrm_LCLJSJ;
begin
  DM_data.qry_pub.Close;
  DM_data.qry_pub.sql.text := 'select * from LCLJ_brlclj where zt=1 and zyh=' +
    '''' + pub_zyh + '''';
  DM_data.qry_pub.Open;
  if not DM_data.qry_pub.IsEmpty then
  begin
    dqrq := FormatDateTime('yyyyMMdd', Frm_func.curr_date);
    mrrq := FormatDateTime('yyyyMMdd', Frm_func.curr_date + 1);
    ljid := DM_data.qry_pub.FieldByName('ljid').asstring;
    bbh := DM_data.qry_pub.FieldByName('bbh').AsInteger;
    Frm_LCLJSJ := TFrm_LCLJSJ.Create(Application);
    Frm_LCLJSJ.ShowMXData_rq(ljid, BBH, frm_dzbl_main.cxGrid1BandedTableView1,
      mrrq, pub_zyh, frm_dzbl_main);
  end;
end;

procedure Tfrm_dzbl_main.locatebcpd;
var
  bcid: string;
  qshh: integer;
begin

 if treeviewzp.Selected.Selected  then
 begin
   pub_name := trim(treeviewzp.selected.text);
 end else
 begin
   pub_name:=locatename;
 end;
  bcid := copy(pub_name, pos('.', pub_name) + 1, length(pub_name) - pos('.',
    pub_name) + 1);
  bl_bcid := strtoint(bcid);
  bc_count := EMRPad301.GetBaseLineCount;
  EMRPad301.SetSel(0, -1, 0, 0, 0, bc_count - 1, -1, bc_count - 1, 0, 0);
  //选中全部文档
  EMRPad301.EditLineEditMode; //将全部文档变成可编辑状态
  qry_pub.Close;
  qry_pub.SQL.Clear;
  qry_pub.SQL.Text :=
    'select tmh,zyh,bcid,blid,fldm,mbdm,blmc,blrq,blys,blysqmbz,blbcpdid,zzrq,zzys,zzysqmbz,zzbcpdid,zgrq,zgys,zgysqmbz,zgbcpdid ' +
    ' from zydzbl_zybcjlmx where zyh=' + #39 + pub_zyh + #39 + ' order by bcid ';
  qry_pub.Open;
  qry_pub.Locate('bcid', bcid, []);
  bc_hh := qry_pub.fieldbyname('blbcpdid').asinteger;
  blbcpdid := qry_pub.fieldbyname('blbcpdid').asinteger;
  qry_pub.next;
  qshh := qry_pub.fieldbyname('blbcpdid').asinteger;
  if bc_hh > bc_count then
    bc_hh := bc_count;
  if qshh > bc_count then
    qshh := 0;
  {
    EMRPad301.SelectBaseLineRange(0, qshh-1); //选中病程以前的病程所有片段
    EMRPad301.EditLineReadOnly;
    if bc_hh<bc_count then
    begin
    EMRPad301.SelectBaseLineRange(bc_hh, bc_count-1); //选中病程以前的病程所有片段
    EMRPad301.EditLineReadOnly;
    end;
               }
  if bc_hh < bc_count then
  begin
    if qry_pub.RecordCount <> 1 then
    begin
      if qshh <> bc_hh then
      begin
        if bc_hh > 1 then
        begin
          EMRPad301.SelectBaseLineRange(0, bc_hh - 1);
          //选中病程以前的病程所有片段
          EMRPad301.EditLineReadOnly;
        end;
        EMRPad301.SelectBaseLineRange(qshh, bc_count - 1);
        //选中病程以前的病程所有片段
        EMRPad301.EditLineReadOnly;
      end
      else
      begin
        EMRPad301.SelectBaseLineRange(0, bc_hh - 1); //选中病程以前的病程所有片段
        EMRPad301.EditLineReadOnly;
      end;

    end;
  end
  else if bc_hh >= bc_count then
  begin
    if (qry_pub.RecordCount <> 1) and (qshh < bc_count) then
    begin
      EMRPad301.SelectBaseLineRange(0, qshh - 1); //选中病程以后的病程所有片段
      EMRPad301.EditLineReadOnly;
    end;
  end;
  qry_pub.Close;
  if qshh = bc_hh then
//    EMRPad301.SetSel(0, -1, 0, 0, 0, bc_hh - 1, -1, bc_hh - 1, 0, 0)
    EMRPad301.SetSel(bc_hh, -1, bc_hh, 0, 0, bc_count-1 , -1, bc_count-1 , 0, 0)    //20171106
      //定位到相应病程片段
  else
  if qshh < bc_hh then
    EMRPad301.SetSel(qshh, -1, qshh, 0, 0, bc_hh - 1, -1, bc_hh - 1, 0, 0)
  //定位到相应病程片段
  else
    EMRPad301.SetSel(bc_hh, -1, bc_hh, 0, 0, qshh - 1, -1, qshh - 1, 0, 0);     //20171106

  EMRPad301.UniversalStringFunction('', '', '', '', '', '14');
  //得到当前修定片段号
  EMRPad301.UniversalStringFunction('', '', '', '', '', '15');
  //得到当前修定片段权限
end;

function  Tfrm_dzbl_main.locatedzbl:Boolean;
var
  txt: string;
  i: integer;
begin
  i := 0;
  Result:=False;
  for i := 0 to treeviewzp.Items.Count - 1 do
  begin
//    txt := trim(treeviewzp.Items[i].text);
//    if txt = locatename then
//    begin
//      treeviewzp.Items[i].Selected := true;
//      exit;
//    end;

    if treeviewzp.Items[i].Level > 0 then
    begin
      txt := trim(treeviewzp.Items[i].text);
      if txt = locatename then
      begin
        treeviewzp.Items[i].Selected := true;
         Result:=True;
        exit;
      end;
    end;
  end;

end;

procedure TFrm_dzbl_main.MenuItem17Click(Sender: TObject);

begin
  EMRPad301.EditCopy;
end;

procedure TFrm_dzbl_main.MenuItem1Click(Sender: TObject);
begin
  try
    cxGrid4.Visible := False;
    application.createform(Tfrm_dck_dzbl, frm_dck_dzbl);
    frm_dck_dzbl.dzbl_zyh := sp_ycybr.FieldByName('zyh').AsString;
    tree.Width := Self.Width div 2;
      // 显示窗体
    frm_dck_dzbl.BorderStyle := Forms.bsNone;
    frm_dck_dzbl.Parent := Panel8;
    frm_dck_dzbl.Width := Panel8.Width;
    frm_dck_dzbl.Height := Panel8.Height;
    frm_dck_dzbl.Align := alClient;
    // 设置标签名字
    Panel8.Caption := frm_dck_dzbl.Caption;
    // 这样可以给窗体相关的权限修改页面名称
    frm_dck_dzbl.Show;
    if Assigned(frm_dck_dzbl.OnActivate) then
    begin
      frm_yzinput.OnActivate(frm_dck_dzbl);
    end;
   // frm_dck_dzbl.ShowModal;
  finally
   // frm_dck_dzbl.free;
  end;
  //    application.createform(Tfrm_dck_dzbl, frm_dck_dzbl);
  //    frm_dck_dzbl.dzbl_zyh:=sp_ycybr.FieldByName('zyh').AsString;
  //    frm_dck_dzbl.show;
end;

procedure Tfrm_dzbl_main.savedzblbcjl;
var
  sctext: string;
  qh: integer;
begin
  qh := EMRPad301.GetBaseLineCount - bc_count;
  sp_up_bcjlmx.Close;
  sp_up_bcjlmx.Parameters.ParamByName('@zyh').Value := pub_zyh;
  sp_up_bcjlmx.Parameters.ParamByName('@blid').Value := pub_blid;
  sp_up_bcjlmx.Parameters.ParamByName('@blbcpdid').Value := abs(blbcpdid);
  sp_up_bcjlmx.Parameters.ParamByName('@blbcmc').Value := pub_filename + '.' +
    inttostr(bl_bcid);
  sp_up_bcjlmx.Parameters.ParamByName('@blczy').Value := pub_czyxm;
  if addbcjl = 'add' then
  begin
    sp_up_bcjlmx.Parameters.ParamByName('@clfs').Value := '11';
    locatename := pub_filename + '.' + inttostr(bl_bcid);
  end
  else
  begin
    sp_up_bcjlmx.Parameters.ParamByName('@clfs').Value := '22';
    sp_up_bcjlmx.Parameters.ParamByName('@blbcpdid').Value := qh;
  end;
  sp_up_bcjlmx.Parameters.ParamByName('@bcid').Value := bl_bcid;
  sp_up_bcjlmx.Parameters.ParamByName('@sctext').Value := '';
  sp_up_bcjlmx.ExecProc;
  sctext := sp_up_bcjlmx.Parameters.ParamByName('@sctext').Value;
  if sctext <> '' then
    application.MessageBox(pchar(sctext), '提示', 0 + 16);
end;

procedure Tfrm_dzbl_main.ExecExistingForm(FFormName: string);
var
  i: integer;
  AForm: TForm;
begin
  try
    if FFormName = '' then
      raise Exception.Create('需要类名！');
    with TFormClass(FindClass(FFormName)).Create(self) do
    begin
      try
        ShowModal;
      finally
        free;
      end;
    end;
  except
    on E: Exception do
      ShowMessage(E.Message)
  else
    raise;
  end;
end;

procedure Tfrm_dzbl_main.seteditright;
var
  xdxx: string;
  ComputerBuf: array[0..127] of Char;
  ComputerBufLen: DWord;
  kszg: string;
begin
  ComputerBufLen := 128;
  GetComputerName(ComputerBuf, ComputerBufLen);
  xdxx := formatdatetime('yymmdd hh:mm AM/PM ', frm_func.curr_date) + ';' +
    string(ComputerBuf);
  editbl.Visible := true;
  editbl.Enabled := true;
  viewbl.Visible := true;
  tablebl.Visible := true;
  fzbl.Visible := true;
  Nbj_del.Enabled := true;
  ts1.PopupMenu := PopupMenuedit;
  blxb_check; //性别检查
  EMRPad301.UniversalBoolFunction('住院号', pub_tmh, 35, 2);
  EMRPad301.SetMicroFiled('记录日期', pub_jlrq);
  EMRPad301.SetDocumentMode(1);
  if pub_yydm <> '0046' then
  begin
    if (copy(pub_key, 1, 2) = '02') and (addbcjl = 'edit') then
      locatebcpd; //定位病程
  end;
  {设置取消签名的权限}
  // 注意：不能把此过程放在getpub_blys语句之后，因为getpub_blys是错的，病程记录分支错误。
  // 若当前选中是病程记录，则医生和标志都应该从 zybcjlmx 中读取
  // 若当前选中是普通病历，则医生和标志都应该从 zydzblmx 中读取
  SetCancelSignRight;
  getpub_blys; //取科病历医生,及病历医生签名标志
  Frm_dzbl_main.Caption := '';
  Frm_dzbl_main.Caption := formcaption + ' 病历医生:【' + bl_blys +
    '】 主管医生:【' + bl_zzys + '】';
  //记录电子病例操作员权限
  DM_data.qry_pub.close;
  DM_data.qry_pub.sql.Text := 'select * from sys_dzbl_LoginLog where left(bllx,2)=left('''+pub_key+''',2) and  zyh='+ ''''
        + pub_zyh + ''''+ ' and tmh='+ '''' + pub_tmh +'''';
  DM_data.qry_pub.Open;
  FloginIP:='';
  if DM_data.qry_pub.RecordCount > 0 then
  begin
      FloginIP :=  Trim(DM_data.qry_pub.FieldByName('ClientIP').AsString); //服务器登陆ip
      //application.MessageBox(pchar('病历医生' + pub_blys + ',登陆IP地址：'+ FloginIP +
       // ' 还未签名认可,修改权限还未转给您或者其他人正在编辑！'), '提示', 0 + 48)   ;
      blwqxkz; //禁止无权书写
      exit;
  end else
  begin
    if (pub_czyxm <> bl_blys) and (not bl_blysbz) and (not pub_zzysbz) and  (pub_yydm ='0249') then //0249电子签名
    begin
      blwqxkz; //禁止无权书写
      exit;
    end else
    begin
//      if (EMRPad301.GetDocumentMode = 1) then  //如果是编辑文档状态权，则插入数据
//      begin
//        DM_data.qry_pub.Close;
//        DM_data.qry_pub.SQL.Text := 'insert into sys_dzbl_LoginLog(ClientIp,ksdm,czydm,Opersate,LoginTime,zyh,tmh) values(' +
//        #39 + GetLocalIP + #39 + ',' + #39 + pub_ksdm + #39 + ',' + #39 + pub_czydm + #39 +
//        ',' + #39 + '1' + #39 + ',' + #39 + formatdatetime('yyyy-mm-dd hh:mm:ss', frm_func.curr_date)+ #39 +','+
//        #39 + pub_zyh + #39 + ','+ #39 + pub_tmh + #39+')';
//        DM_data.qry_pub.ExecSQL;
//      end;
    end;
  end;

  DM_data.qry_pub.close;
  DM_data.qry_pub.sql.Text := 'select * from sys_ksdm where rtrim(kszg)<>''''';
  DM_data.qry_pub.Open;
  DM_data.qry_pub.First;
  kszg := '';
  if pub_yydm = '0147' then
  begin
    while not DM_data.qry_pub.eof do
    begin
      kszg := kszg + ',' + Trim(DM_data.qry_pub.FieldByName('kszg').AsString);
      DM_data.qry_pub.Next;
    end;
    if Pos(pub_czydm, kszg) > 0 then
    begin
      bl_qxjb := 1;
      EMRPad301.SetRevisalInfo(bl_qxjb, 0, pub_czyxm, pub_czydm, xdxx);
      Exit;
    end
    else
    begin

    end;
  end;
  if (copy(pub_key, 1, 2) = '02') or (copy(pub_key, 1, 2) = '11') then
  begin
    if not bl_blysbz and (pub_czyxm = bl_blys) then
    begin
      bl_qxjb := 1;
      EMRPad301.SetRevisalInfo(bl_qxjb, 0, pub_czyxm, pub_czydm, xdxx);

      insertLonginLogData(pub_key);   //插入数据
    end
    else if not bl_zzysbz and (pub_czyxm = pub_zzys) and pub_blysbz then
    begin
      if (pub_yydm='0261') and  (pub_zzys <> bl_zzys)  then
      begin
         blwqxkz; //禁止无权书写
//         yzblys;
         exit;
      end;
      bl_qxjb := 2;
      EMRPad301.SetRevisalInfo(bl_qxjb, 0, pub_czyxm, pub_czydm, xdxx);
      insertLonginLogData(pub_key);   //插入数据
    end
    else if not bl_zgysbz and (pub_czyxm = pub_zgys) and bl_zzysbz then
    begin
      bl_qxjb := 3;
      EMRPad301.SetRevisalInfo(bl_qxjb, 1, pub_czyxm, pub_czydm, xdxx);
      insertLonginLogData(pub_key);   //插入数据
    end
    else if (pub_jfys = pub_czydm) or (pub_czyxm = pub_zgys) or (pub_czyxm =
      pub_zzys)
      or (pub_czyxm = bl_blys) or (pub_czydm = pub_ssys) or (pub_czydm =
      pub_hzys) then
    begin
      if pub_yydm <> '0003' then
      begin
        bl_qxjb := 1;
        EMRPad301.SetRevisalInfo(bl_qxjb, 0, pub_czyxm, pub_czydm, xdxx);
        insertLonginLogData(pub_key);   //插入数据
      end
      else
      begin
        if pub_czyxm = bl_blys then
          EMRPad301.SetRevisalInfo(1, 0, pub_czyxm, pub_czydm, xdxx);
          insertLonginLogData(pub_key);   //插入数据
      end;
    end
    else if ( pub_yydm='0266') or ( pub_yydm='0271') then    //广元昭化人民医院本科室所有医生都可以写病程记录
    begin
      DM_data.qry_pub.Close;
      DM_data.qry_pub.SQL.Text := 'select a.ksdm from sys_czy as a ,sys_czy as b where   a.ysbz=1 and  a.ksdm=b.ksdm and a.dm='+#39+
      trim(pub_czydm)+#39+ 'and b.mc='+#39+trim(bl_blys)+#39;
      DM_data.qry_pub.Open;
      if  DM_data.qry_pub.IsEmpty then
      begin
         blwqxkz; //禁止无权书写
      end
      else
       insertLonginLogData(pub_key);   //插入数据;
    end else
      blwqxkz; //禁止无权书写
  end
  else
  begin
    if (pub_yydm = '0198') and (copy(pub_key, 1, 2) = '03') then
    begin
      if (pub_czyxm = bl_blys) then
      begin
        bl_qxjb := 1;
        EMRPad301.SetRevisalInfo(bl_qxjb, 0, pub_czyxm, pub_czydm, xdxx);
        insertLonginLogData(pub_key);   //插入数据
      end
      else
        blwqxkz; //禁止无权书写
    end
    else if ((pub_yydm = '0015') or (pub_yydm = '0013')) and (copy(pub_key, 1, 2)= '04') then
    begin
      DM_data.qry_pub.close;
      DM_data.qry_pub.sql.text := 'select * from zydzbl_blys where zyh=' + ''''
        + pub_zyh + '''';
      DM_data.qry_pub.Open;
      bl_hzys := DM_data.qry_pub.FieldByName('hzysdm').asstring;
      if (Pos(pub_czydm, bl_hzys) > 0) or (pub_czyxm = pub_zzys) then
      begin
        bl_qxjb := 1;
        EMRPad301.SetRevisalInfo(bl_qxjb, 0, pub_czyxm, pub_czydm, xdxx);
        insertLonginLogData(pub_key);   //插入数据
      end
      else
        blwqxkz; //禁止无权书写
    end
    else
    begin
      if (qy_hzsqym='1') and (copy(pub_key, 1, 2)= '04') and (hzsqdh<>'') then
      begin
        DM_data.qry_pub.close;
        DM_data.qry_pub.sql.text := 'SELECT * FROM dbo.zybl_hzsqd_hzks where sqdh=' + ''''
          + hzsqdh + '''';
        DM_data.qry_pub.Open;

        if (pub_ksdm) =(Trim(DM_data.qry_pub.FieldByName('yqks').asstring)) then
        begin
          bl_qxjb := 1;
          EMRPad301.SetRevisalInfo(bl_qxjb, 0, pub_czyxm, pub_czydm, xdxx);
          insertLonginLogData(pub_key);   //插入数据
          exit;
        end
      end ;
      if (pub_yydm='0261') and  (pub_zzys <> bl_zzys)  then
      begin
         blwqxkz; //禁止无权书写
         Exit;
      end;
      qry_pub.Close;
      qry_pub.SQL.Text := 'select * from zydzbl_blys where zyh=' + '''' + pub_zyh
        + '''';
      qry_pub.Open;
      //      bl_blys := trim(qry_pub.FieldByName('blys').AsString);
      bl_zzys := trim(qry_pub.FieldByName('zzys').AsString);
      bl_zgys := trim(qry_pub.FieldByName('zgys').AsString);

      if ((pub_czyxm = bl_blys) or (pub_czyxm = bl_zzys)) and (not (bl_blysbz or
        pub_blysbz)) and (not pub_blysbz) then
      begin
        bl_qxjb := 1;
        EMRPad301.SetRevisalInfo(bl_qxjb, 0, pub_czyxm, pub_czydm, xdxx);
        insertLonginLogData(pub_key);   //插入数据
      end
      else if (pub_czyxm = bl_zzys) and (bl_blysbz or pub_blysbz) and (not
        pub_zzysbz) then
      begin
        bl_qxjb := 2;
        EMRPad301.SetRevisalInfo(bl_qxjb, 1, pub_czyxm, pub_czydm, xdxx);
        insertLonginLogData(pub_key);   //插入数据
      end
      else if (pub_czyxm = bl_zgys) and (bl_blysbz or pub_blysbz) and (bl_zzysbz)
        and (not pub_zgysbz) then
      begin
        bl_qxjb := 3;
        EMRPad301.SetRevisalInfo(bl_qxjb, 2, pub_czyxm, pub_czydm, xdxx);
        insertLonginLogData(pub_key);   //插入数据
      end
      else if (copy(pub_key, 1, 2) = '05') then
      begin
          insertLonginLogData(pub_key);   //插入数据
      end
//      else if (copy(pub_key, 1, 2) = '04') and ( pub_yydm='0266')  then //广元昭化人民
//      begin
//        //会诊医生代码判断
//        DM_data.qry_pub.close;
//        DM_data.qry_pub.SQL.text :=
//        'select isnull(hzysdm,'''') hzysdm from zydzbl_blys where zyh=' + '''' +
//        pub_zyh + '''';
//        try
//          DM_data.qry_pub.Open;
//        except
//
//        end;
//        //判断操作员代码是否是会诊医生代码中包含的代码
//        if Pos(pub_czydm, Trim(DM_data.qry_pub.FieldByName('hzysdm').asstring)) > 1 then
//        begin
//          Exit;
//        end ;
//        blwqxkz; //禁止无权书写
//      end
      else
        blwqxkz; //禁止无权书写
    end;
  end;
end;

procedure Tfrm_dzbl_main.getblys;
begin
  qry_pub.Close;
  qry_pub.SQL.Text := 'select * from zydzbl_blys where zyh=' + '''' + pub_zyh +
    '''';
  qry_pub.Open;
  if copy(pub_key, 1, 2) >= '02' then
    bl_blys := pub_czyxm
  else
    bl_blys := trim(qry_pub.FieldByName('blys').AsString);
  bl_zzys := trim(qry_pub.FieldByName('zzys').AsString);
  bl_zgys := trim(qry_pub.FieldByName('zgys').AsString);
end;

procedure Tfrm_dzbl_main.setmicro;
var
  fd, fdvalue: string;
begin
  sp_cx_micro.Active := false;
  sp_cx_micro.Parameters.ParamByName('@zyh').Value := pub_zyh;
  sp_cx_micro.Open;
  qry_pub.Close;
  qry_pub.SQL.Text := 'EXEC sp_columns @table_name =zydzbl_micro';
  qry_pub.Open;
  qry_pub.First;
  while not qry_pub.Eof do
  begin
    fd := qry_pub.FieldByName('Column_Name').AsString;
    if fd = '记录日期' then
    else if fd = '性别' then
      pub_brxb := trim(sp_cx_micro.FieldByName(fd).AsString);
    if fd = '住院号' then
      fdvalue := copy(trim(sp_cx_micro.FieldByName('卡号').AsString), 1, 9) //住院号
    else
      fdvalue := trim(sp_cx_micro.FieldByName(fd).AsString);

    EMRPad301.SetMicroFiled(fd, fdvalue);
    qry_pub.Next;
  end;
  EMRPad301.SetMicroFiled('住院科室', pub_ksmc);
  EMRPad301.SetMicroFiled('病区', pub_bqmc);
  EMRPad301.SetMicroFiled('本人', pub_czyxm);
  EMRPad301.UpdateMicroField(true);
end;

procedure Tfrm_dzbl_main.getmaxid;
begin
  qry_pub.Close;
  qry_pub.SQL.Text := 'select max(blid) maxid from zydzbl_zydzblmx where zyh=' +
    '''' + pub_zyh + '''';
  qry_pub.Open;
  if qry_pub.FieldByName('maxid').AsString = '' then
    pub_blid := '001'
  else
    pub_blid := formatex(strtoint(qry_pub.FieldByName('maxid').AsString) + 1,
      3);
end;

procedure Tfrm_dzbl_main.getmaxid_bcjl;
begin
  qry_pub.Close;
  qry_pub.SQL.Text := 'select max(bcid) maxid from zydzbl_zybcjlmx where zyh=' +
    '''' + pub_zyh + '''';
  qry_pub.Open;
  if qry_pub.FieldByName('maxid').asstring = '' then
    bl_bcid := 1
  else
    bl_bcid := qry_pub.FieldByName('maxid').asinteger + 1;
end;

procedure TFrm_dzbl_main.ICD101Click(Sender: TObject);
begin
  application.CreateForm(Tfrm_jbcx, frm_jbcx);
  try
    frm_jbcx.ShowModal;
  finally
    frm_jbcx.free;
  end;
end;

function TFrm_dzbl_main.Tree_db_create(dbtree: TTreeView; zptable, zptableorder,
  zplbdm, zplbmc, zp, sqlstr: string): TTreeView;
var
  n, parent_n: integer;
  zpkey: string;
  zptext: string;
  Node: TTreeNode;
begin
  dbtree.Items.Clear;
  Node := nil;
  Qry_tree.close;
  Qry_tree.sql.Clear;
  if sqlstr = '' then
    Qry_tree.sql.text := 'select * ' + ' from  ' + zptable + ' order by ' +
      zptableorder
  else
  begin
    Qry_tree.sql.text := sqlstr;
    qry_tree.Parameters.ParamByName('zyh').Value := pub_zyh;
    qry_tree.Parameters.ParamByName('bczyh').Value := pub_zyh;
  end;
  Qry_tree.open;

  if (pos(uppercase('zyysgzzi02'), uppercase(pub_czyqx)) < 1) and (pub_isadmin =
    false) then
  begin
    Qry_tree.Filtered := False;
    Qry_tree.Filter := ' mc<>' + '''医嘱''';
    Qry_tree.Filtered := true;
  end
  else
  begin
  //   如果是0004医院的代码，则，的“医嘱”不显示 2015-03-20
    if pub_yydm = '0004' then
    begin
      Qry_tree.Filtered := False;
      Qry_tree.Filter := ' mc<>' + '''医嘱''';
      Qry_tree.Filtered := true;
    end
    else
    begin
      Qry_tree.Filtered := False;
      Qry_tree.Filter := ' mc<>' + '''长期医嘱''' + ' and mc<>'+'''临时医嘱''';
      Qry_tree.Filtered := true;
    end;
  end;

  
  if Qry_tree.RecordCount <> 0 then
  begin
    dbtree.items.BeginUpdate;
    Qry_tree.first;
    ZPKEY := trim(Qry_tree[zplbdm]);
    N := LENGTH(ZPKEY);
    while not Qry_tree.Eof do
    begin
      ZPKEY := trim(Qry_tree[zplbdm]);
      ZPTEXT := trim(Qry_tree[zplbmc]);
      if LENGTH(ZPKEY) = N then
      begin
        Node := dbtree.items.Add(Node, ZPTEXT)
      end
      else if LENGTH(ZPKEY) > N then
      begin
        Node := dbtree.items.AddChild(Node, ZPTEXT);
      end
      else
      begin
        parent_n := Treeleavelleng(length(zpkey), zp);
        node := TreeFindItem(dbtree, copy(zpkey, 1, parent_n), parent_n);
        if parent_n <> 0 then
        begin
          node := dbtree.ITEMS.ADDchild(node, ZPTEXT);
        end
        else
        begin
          Node := dbtree.items.Add(Node, ZPTEXT)
        end;
      end;
      N := LENGTH(ZPKEY);
      Qry_tree.Next;
      if node <> nil then
          node.ImageIndex := 1;
    end;
    dbtree.items.EndUpdate;
    result := dbtree;
  end
  else
    result := nil;
end;

function TFrm_dzbl_main.Treeleavelleng(zpkeyleng: integer; zp: string): integer;
var
  i, levellength: integer;
begin
  levellength := 0;
  for i := 1 to length(trim(zp)) do
  begin
    levellength := levellength + strtoint(copy(zp, i, 1));
    if levellength = zpkeyleng then
    begin
      levellength := levellength - strtoint(copy(zp, i, 1));
      break;
    end;
  end;
  result := levellength;
end;

procedure TFrm_dzbl_main.TreeViewgjcChange(Sender: TObject; Node: TTreeNode);
var
  key, dldm: string;
begin
  if treeviewgjc.selected <> nil then
  begin
    if treeviewgjc.selected.text <> '' then
    begin
      key := trim(treeviewgjc.selected.text);
      key := copy(key, 1, pos('_', key) - 1);
      dldm := key;
      key := copy(key, 1, 2);
      qry_blzsk.close;
      qry_blzsk.Parameters.ParamByName('dldm').value := dldm + '%';
      qry_blzsk.Parameters.ParamByName('mbmc').value := '%';
      qry_blzsk.Parameters.ParamByName('pym').value := '%';
      qry_blzsk.open;
    end;
  end;
end;

function TFrm_dzbl_main.TreeFindItem(Sender: TTreeView; Name: string; parent_n:
  integer): TTreeNode;
var
  Nodeitem: TTreeNode;
begin
  NodeItem := Sender.items.getfirstnode;
  if parent_n > 0 then
  begin
    repeat
      if copy(trim(NodeItem.text), 1, parent_n) <> Name then
      begin
        NodeItem := NodeItem.getnext;
      end;
    until copy(trim(NodeItem.text), 1, parent_n) = Name;
  end;
  if parent_n = 0 then
  begin
    result := sender.Items.GetFirstNode;
  end
  else
  begin
    Result := NodeItem;
  end
end;

procedure TFrm_dzbl_main.setmode(mode: string);
begin
  if mode = 'add' then
  begin
    if qry_mbmx.IsEmpty then
    begin
      application.MessageBox('没有可选择的模板写入电子病历!', '提示', 0 + 48);
      abort;
    end;
    editmode := 'add';
    EMRPad301.FileNew;
    pub_mbdldm := qry_mbmx.FieldByName('dm').AsString;
    pub_mbid := qry_mbmx.FieldByName('mbdm').Asinteger;
    pub_filename := qry_mbmx.FieldByName('mbmc').AsString;
  end;
  if mode = 'edit' then
  begin
    editmode := 'edit';
    pub_mbdldm := qry_brbl.FieldByName('fldm').AsString;
    pub_mbid := qry_brbl.FieldByName('mbdm').Asinteger;
    //    qry_brbl.SQL.Text;
    //    qry_mbmx.sql.Text;
    if copy(pub_key, 1, 2) = '02' then
      pub_filename := qry_mbmx.FieldByName('mbmc').AsString
    else
      pub_filename := qry_brbl.FieldByName('blmc').AsString;
    if (pub_yydm = '0262') and (copy(pub_key, 1, 2) = '11') then
      pub_filename := qry_mbmx.FieldByName('mbmc').AsString;
  end;
  EMRPad301.universalboolfunction('', '', 46, 1);
end;

procedure TFrm_dzbl_main.FormShow(Sender: TObject);
var
  sqlstr: string;
  ls_sql, ljid, dqrq, mrrq: string;
  BBH: Integer;
  Frm_LCLJSJ: Tfrm_LCLJSJ;
const
  zp = '2332';
  zplbdm = 'dm';
  zplbmc = 'mc';
  zptable = 'sys_dzbl_mbfl';
  zptableorder = 'dm';
begin
  DM_data.qry_pub.Close;
  DM_data.qry_pub.SQL.text :='select * from zysf_zydj';
  DM_data.qry_pub.Open;
  if DM_data.qry_pub.findfield('lgbr')=nil then
  begin
  DM_data.qry_pub.Close;
  DM_data.qry_pub.SQL.Text :='alter table zysf_zydj add lgbr int' +#13+'alter table zysf_cydj add lgbr int'+#13+' alter table zyzc_zysf_cydj add lgbr int';
  DM_data.qry_pub.ExecSQL;
  end;
  DM_data.qry_pub.Close;
  DM_data.qry_pub.SQL.Text :='select value from sys_xt_xkg where name =''zydzbl_xs_hzjlym''';
  DM_data.qry_pub.Open;

  qy_hzsqym := DM_data.qry_pub.FieldByName('value').asstring;

  zyys_addqx :=False;
  FloginIP:=''; //初始化登陆IP
  if pub_yydm = '0240' then //沙雅县医院不允许病历复制。
  begin
    N28.Visible := false;
    N79.Visible := false;
    N80.Visible := false;
    N157.Visible := false;
    N158.Visible := false;
    MenuItem17.Visible := false;
    N81.Visible := True;
  end;

  sp_jbxx.Close;
  sp_jbxx.Parameters.ParamValues['@tmh'] := pub_tmh;
  sp_jbxx.Parameters.ParamValues['@xm'] := pub_tmh;
  sp_jbxx.Parameters.ParamValues['@bch'] := pub_tmh;
  sp_jbxx.Parameters.ParamValues['@ksdm'] := pub_tmh;
  sp_jbxx.Open;

  sp_ycybr.Close;
  sp_ycybr.Parameters.ParamByName('@bqdm').Value := pub_bqdm;
  sp_ycybr.Parameters.ParamByName('@ysdm').Value := pub_czydm;
  sp_ycybr.open;
  cxGrid1DBTableView1.DataController.Groups.FullExpand;
  cxSplitter2.CloseSplitter;
  pub_blid := '';
  addbcjl := 'edit';
  sqlstr := qry_tree.SQL.Text;
  Tree_db_create(treeviewzp, zptable, zptableorder, zplbdm, zplbmc, zp, sqlstr);
  if (pub_yydm='0266') or  (pub_yydm='0271')  then //广元昭化医院全部展开
  begin
    treeviewzp.FullExpand;
  end;
  treeviewzp.AutoExpand:=True;
  sqlstr :=
    'select * from sys_dzbl_mbfl where substring(dm,1,2)=12 order by dm ';
  frm_func.Tree_db_create(TreeViewgjc, zptable, zptableorder, zplbdm, zplbmc,
    zp, sqlstr);
  qry_blmxjl.Close;
  qry_blmxjl.Parameters.ParamByName('zyh').Value := pub_zyh;
  qry_blmxjl.Open;
  if pub_yydm='0257' then //全州医院增加医嘱录入tab页显示
  begin
     yzlr_TabFormShow;
     Application.ProcessMessages;
  end ;
 // pgc1.ActivePage := ts1;//ts1;
  pgc1.ActivePage := TabSheetyzlr;
  pgc1.ActivePage := ts1;

  locatedzbl; // 定位编辑相应电子病历
end;

procedure TFrm_dzbl_main.ApplicationEvents1Hint(Sender: TObject);
begin
  StatusBar1.Panels[0].Text := '当前选择:【' +
    trim(GetLongHint(Application.Hint)) + '】';
end;

procedure TFrm_dzbl_main.b_returnClick(Sender: TObject);
begin
  pgc1.ActivePage := ts1;
end;

procedure TFrm_dzbl_main._zxjfx01Click(Sender: TObject);
begin
  Get_frm_about;
end;

procedure TFrm_dzbl_main._zxjfs01Click(Sender: TObject);
begin
  Get_frm_mmxg;
end;

function TFrm_dzbl_main.AdoRefresh: Boolean;
begin
  FormShow(Self);
  FormActivate(Self);
end;

procedure TFrm_dzbl_main.ApplicationEvents1Exception(Sender: TObject;
  E: Exception);
begin
  application.MessageBox(pchar('发现错误!' + #13 + '错误信息:' + e.Message),
    '注意', 16);
  exit;
end;

procedure TFrm_dzbl_main._N_closeClick(Sender: TObject);
begin
  close;
end;

procedure TFrm_dzbl_main.StatusBar1DrawPanel(StatusBar: TStatusBar;
  Panel: TStatusPanel; const Rect: TRect);
begin
  with statusbar1.Canvas do
  begin
    brush.Color := clSilver;
    font.Size := 12;
    font.Name := '宋体';
    fillrect(rect);
    if panel.Index = 0 then
      textout(rect.Left, rect.Top + 2, '当前选择:【' +
        trim(GetLongHint(Application.Hint)) + '】');
    if panel.Index = 1 then
      textout(rect.Left, rect.Top + 2, '当前操作员:' + pub_czydm + '【' +
        pub_czyxm + '】');
    if panel.Index = 2 then
      textout(rect.Left + 2, rect.Top + 2, '本机时间:' +
        formatdatetime('yyyy-mm-dd hh:mm:ss', now));
  end;
end;

procedure TFrm_dzbl_main._zxjfx02Click(Sender: TObject);
begin
  close;
end;

procedure TFrm_dzbl_main.FormActivate(Sender: TObject);
begin
  frm_dzbl_main.Caption := '【医嘱、病历书写系统】' + '病人:【' + trim(pub_brxm)
    + '】';
  formcaption := Frm_dzbl_main.Caption;

  EMRPad301.UniversalBoolFunction(pub_dzblzcm, '', 98, pub_dzblzch);
  setmicro; //设置宏
  getblys; //取出该病人的病历医生
  EMRPad301.Width := panel2.Width;
  EMRPad301.height := panel2.Height;
  EMRPad301.Align := alClient;
  EMRPad301.SetDocumentMode(2);
end;

procedure TFrm_dzbl_main.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if ADODataSet1.State = dsEdit then
    ADODataSet1.post;
end;

procedure TFrm_dzbl_main.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if treeviewzp.Enabled = true then
  begin
   //删除电子病例登陆人员状态
    if pub_yydm ='0271' then  //不做限制
    begin
      DeleteReadOnlyLogData(pub_key_old);
    end else
    begin
      DeleteLonginLogData(pub_key_old);//删除病人登陆日志数据
    end;
    canclose := true;
  end
  else
  begin
    case Application.MessageBox('是否保存对该份电子病历的修改？', '询问',
      MB_YESNOCANCEL + MB_ICONQUESTION) of
      IDYES:
        begin
          if treeviewzp.Enabled <> true then
          begin
            saveblClick(self);
          end;
          //删除电子病例登陆人员状态
          if pub_yydm ='0271' then  //不做限制
          begin
             DeleteReadOnlyLogData(pub_key_old);
          end else
          begin
            DeleteLonginLogData(pub_key_old);//删除病人登陆日志数据
          end;
           canclose := true;
        end;
        IDno:
        begin
          //删除电子病例登陆人员状态
           //删除电子病例登陆人员状态
          if pub_yydm ='0271' then  //不做限制
          begin
            DeleteReadOnlyLogData(pub_key_old);
          end else
          begin
            DeleteLonginLogData(pub_key_old);//删除病人登陆日志数据
          end;
          canclose := true;
        end;
        idCANCEL:
        canclose := false;
    end;

  end;

  //  if application.MessageBox('是否退出病历编辑？,请确认已保存才退出!', '退出系统', 4 + 256 + 32) = 6 then
  //  begin
  //      if treeviewzp.Enabled<> true then
  //      begin
  //        saveblClick(self);
  //      end;
  //    canclose := true;
  //  end
  //  else
  //    canclose := false;
end;

procedure TFrm_dzbl_main.FormCreate(
  Sender: TObject);
begin
  //FOldWndProc := EMRPad301.WindowProc;
  //  EMRPad301.WindowProc := WndProc;
    Pub_bL_dy:='' ; //20170904
end;

procedure TFrm_dzbl_main.FormDestroy(
  Sender: TObject);
begin
  //EMRPad301.WindowProc := FOldWndProc
end;

procedure TFrm_dzbl_main.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 119 then
    N144.Click;
end;

{-------------------------------------------------------------------------------
  过程名:    TFrm_dzbl_main.FormMouseWheel
  作者:      yangshuai
  日期:      2017.03.24
  参数:      Sender: TObject; Shift: TShiftState; WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean
  返回值:    无
-------------------------------------------------------------------------------}
procedure TFrm_dzbl_main.FormMouseWheel(Sender: TObject; Shift: TShiftState;
  WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  Handled:=True;
end;

procedure TFrm_dzbl_main.treeviewzpChange(Sender: TObject; Node: TTreeNode);
begin
  if treeviewzp.selected <> nil then
    if (treeviewzp.selected.text <> '') and (onshowbz = false) then
    begin
      if treeviewzp.Selected.HasChildren then
      begin
        pub_name1 := trim(treeviewzp.selected.text);
      end else
      begin
        if  treeviewzp.Selected.Parent<>nil then
          pub_name1 := trim(treeviewzp.Selected.Parent.Text)       //20171106
        else
          pub_name1 := trim(treeviewzp.selected.text);             //20171106
      end;
      locatename1 := treeviewzp.selected.text;//pub_name;         //20171106
      qry_pub.Close;
      qry_pub.SQL.add(qry_tree.SQL.Text);
      qry_pub.SQL.Text := 'select * from sys_dzbl_mbfl where qybz=1 and mc =' +
        '''' + pub_name1 + '''';                                  //20171106
      qry_pub.Open;
      if rbqb.Checked then
        rbqbClick(self)
      else if rbks.Checked then
        rbksClick(self)
      else if rbgr.Checked then
        rbgrClick(self)
      else if rbgg.Checked then
        rbggClick(self);
      if trim(qry_pub.FieldByName('dm').AsString) <> '' then
         pub_key1 := trim(qry_pub.FieldByName('dm').AsString);         //20171106
      pub_frm_name := trim(qry_pub.FieldByName('frm_name').AsString);
      qry_mbmx.close;
      qry_mbmx.Parameters.ParamByName('dldm').value := copy(pub_key1, 1, 2) +
        '%';
      qry_mbmx.open;
      bl_blys := '';
    end;
end;

procedure TFrm_dzbl_main.DBGrid1DblClick(Sender: TObject);
var
  stream: TADOBlobStream;
  stream1: TFileStream;
  filename: string;
  dqxdpd: string;
begin
  if qry_mbmx.RecordCount <> 0 then
  begin
    yzblys; //验证病人是不是其它科室转入,病历医生是否已做调整,并取出手术医生,及监护医生
    if (copy(pub_key, 1, 2) = '02') or (copy(pub_key, 1, 2) = '11') then
    begin
      getpub_blys; //病程记录取病历医生,及主管医生
      if not pub_zgysbz then
      begin
        qry_brbl.Close;
        qry_brbl.SQL.Text := 'select * from zydzbl_zydzblmx where fldm=' + ''''
          + pub_key + '''' +
          ' and zyh=' + '''' + pub_zyh + '''';
        qry_brbl.Open;
        pub_blid := qry_brbl.FieldByName('blid').AsString;
        if qry_brbl.IsEmpty then
          setmode('add')
        else
        begin
          setmode('edit');
          openbcjl; //如果已存在病程记录,先打开病程记录在后面插入新模板
        end;
        addbcjl := 'add'; //病程记录设为增加状态
        qry_brbl.Close;
      end
      else
      begin
        application.MessageBox('科室主管已签名确认完成病程，不能在通过模板方式增加病历,只能通过上级医生修改病历!', '提示', 0 + 48);
        abort;
      end;
    end
    else
      setmode('add'); //病历记录设为增加状态
    if (pub_czyxm = bl_blys) or (pos(copy(pub_key, 1, 2), bl_bllb) > 0) then
    begin
      filename := GetCurrentDir + '\' + 'otemp'; //+get_sjh( pub_czydm );
      EMRPad301.CleanUndoBuffer; //清空编辑缓冲区
      EMRPad301.CleanClipboard; //清空剪贴版
      try
        stream := TADOBlobStream.Create(qry_mbmx.FieldByName('mbwj') as
          TBlobField, bmRead);
        stream.Position := 0;
        stream1 := TFileStream.Create(filename, fmCreate);
        stream1.Position := 0;
        stream1.CopyFrom(stream, stream.Size);
      finally
        stream1.Free;
        stream.Free;
      end;
      if (copy(pub_key, 1, 2) = '02') or (copy(pub_key, 1, 2) = '11') then
      begin
        EMRPad301.SetDocumentMode(1); //进入编辑状态
        EMRPad301.SetSel(-1, -1, 0, 0, 0, -1, -1, 0, 0, 0); //到文件尾
        blbcpdid := EMRPad301.GetBaseLineCount;
        //缓回当前文档的行数记录病程片段ID
        if editmode = 'add' then
          EMRPad301.FileOpen(filename, 0)
        else
          EMRPad301.FileInsert(filename, 0);
      end
      else
        EMRPad301.FileOpen(filename, 0);
      pgc1.ActivePage := ts1;
      saveblClick(self);
      frm_func.func_in_zyblmx_blsjzkmx(pub_tmh, pub_zyh,
        qry_mbmx.FieldByName('mbsx').AsString);
      treeviewzpDblClick(self); //新加模板直接进行编辑状态
    end
    else
    begin
      if (bl_bllb = '02') then
        application.MessageBox(pchar('你是：[' + trim(pub_brxm) +
          ']本科执班医生,您只能在病程类别中加入病程!'), '提示', 0 + 48)
      else if bl_bllb = '03' then
        application.MessageBox(pchar('你是：[' + trim(pub_brxm) +
          ']的麻醉医生,您只能在手术病历类别中加入病历!'), '提示', 0 + 48)
      else if bl_bllb = '04' then
        application.MessageBox(pchar('你是：[' + trim(pub_brxm) +
          ']的会诊医生,您只能在会诊病历类别中加入病历!'), '提示', 0 + 48)
      else if bl_bllb = ',05,06' then
        application.MessageBox(pchar('你是：[' + trim(pub_brxm) +
          ']的ICU医生,您只能在护理病历类别中加入病历!'), '提示', 0 + 48)
      else
        application.MessageBox(pchar('你不是：[' + trim(pub_brxm) +
          ']的病历医生!'), '提示', 0 + 48);
    end;
  end
  else
    application.MessageBox('没有模板不能生成病历!', '提示', 0 + 48);
end;

procedure TFrm_dzbl_main.DBGridEh1Enter(Sender: TObject);
begin
  ADODataSet1.Edit;
end;

procedure TFrm_dzbl_main.DBGridEh1Exit(Sender: TObject);
begin
  if ADODataSet1.State = dsEdit then
    ADODataSet1.post;
end;

procedure TFrm_dzbl_main.DBGridmbmxDblClick(Sender: TObject);
var
  stream: TADOBlobStream;
  stream1: TFileStream;
  filename: string;
begin
  if not qry_blzsk.IsEmpty then
  begin
    if rbgjc.Checked then
    begin
      EMRPad301.UniversalBoolFunction('', '', 1012, 0);
      EMRPad301.setfieldtext(-1, -1, -1, -1,
        qry_blzsk.FieldByName('mbmc').AsString);
      pgc1.ActivePage := ts1;
    end
    else if rbgjcnr.Checked then
    begin
      filename := GetCurrentDir + '\' + 'zlktemp'; //+get_sjh( pub_czydm );
      EMRPad301.CleanUndoBuffer; //清空编辑缓冲区
      EMRPad301.CleanClipboard; //清空剪贴版
      try
        stream := TADOBlobStream.Create(qry_blzsk.FieldByName('mbwj') as
          TBlobField, bmRead);
        stream.Position := 0;
        stream1 := TFileStream.Create(filename, fmCreate);
        stream1.Position := 0;
        stream1.CopyFrom(stream, stream.Size);
      finally
        stream1.Free;
        stream.Free;
      end;
      EMRPad301.FileInsert(filename, 0);
      pgc1.ActivePage := ts1;
    end;
  end
  else
    application.messagebox('没有选择相应的关键词不能回入', '提示', mb_ok);
end;

procedure TFrm_dzbl_main.deleteButtonClick(Sender: TObject);
begin

  if (EMRPad301.GetDocumentMode <>  1) and  (pub_yydm<>'0271') then  //如果是编辑文档状态权，则插入数据
  begin
    exit;
  end;
  f_dele_cg.Click;
  FormShow(self);                 //20171106
end;

procedure TFrm_dzbl_main.blmbClick(Sender: TObject);
begin
  b_add.Click;
end;

procedure TFrm_dzbl_main.bljkClick(Sender: TObject);
begin
  pgc1.ActivePage := ts3;
end;

procedure TFrm_dzbl_main.saveblClick(Sender: TObject);
var
  stream, streamxml, streamhtml: TADOBlobStream;
  streamhtmlhzsq: TADOBlobStream;
  filename: string;
  linecount: integer;
  tsxx, mbdm, zklb, lbdm, kszg: string;
  xh: Real;
  vISdwbcjl:boolean;
const
  hc = Chr(13) + chr(10);
begin
 //删除电子病例登陆人员状态
  DeleteLonginLogData(pub_key_old);//删除病人登陆日志数据
  
  v_zksm := '';
  DM_data.qry_pub.close;
  DM_data.qry_pub.SQL.text := 'select * from zydzbl_zydzblmx where zyh=' + ''''
    + pub_zyh +
    '''' + ' and blid=' + '''' + pub_blid + '''';
  DM_data.qry_pub.Open;
  mbdm := DM_data.qry_pub.FieldByName('mbdm').AsString;
  DM_data.qry_pub.close;
  DM_data.qry_pub.SQL.text := 'select * from sys_dzbl_mbmx where mbdm=' + '''' +
    mbdm + '''';
  DM_data.qry_pub.Open;
  zklb := DM_data.qry_pub.FieldByName('psdm').AsString;
  if zklb = '' then
  begin
    zklb := '00';
    xh := 0;
    jkjc(0, '00', pub_brxb);
  end
  else
  begin
    jkjc(0, '00', pub_brxb);
    DM_data.qry_pub.close;
    DM_data.qry_pub.SQL.text := 'select * from zydzbl_psbz_xx where lb=' + ''''
      + zklb + ''' order by xh';
    DM_data.qry_pub.Open;
    DM_data.qry_pub.First;
    while not DM_data.qry_pub.eof do
    begin
      jkjc(DM_data.qry_pub.FieldByName('xh').AsFloat, zklb, pub_brxb);
      DM_data.qry_pub.Next;
    end;
  end;
  tsxx := Trim(v_zksm);
  if tsxx = '' then
  begin
  end
  else
  begin
    application.messagebox(PChar(tsxx), '提示', mb_ok);
  end;
  //  qry_dzblbf.close;
  //  qry_dzblbf.SQL.Text := 'select * from zydzbl_zydzblmx_hy where 1<>1';
  //  qry_dzblbf.Open;

  if (pub_blid <> '') or (editmode = 'add') then
  begin
    filename := GetCurrentDir + '\' + 'stemp'; //+get_sjh( pub_czydm );
    if (copy(pub_key, 1, 2) = '02') and (addbcjl = 'add') then
      //病程记录启用片段机制
    begin
      getmaxid_bcjl;
      EMRPad301.universalboolfunction('', '', 15, 1); //启用修定机制
      EMRPad301.universalboolfunction('', '', 47, bl_bcid); //设置病历片段号
    end;
    linecount := EMRPad301.GetBaseLineCount;
    EMRPad301.SetSel(0, -1, 0, 0, 0, linecount - 1, -1, linecount - 1, 0, 0);
    //选中全部文档
    EMRPad301.EditLineEditMode; //将全部文档变成可编辑状态
    if EMRPad301.FileSaveAs(FileName, 0, 0) = False then
    begin
      Application.MessageBox('本地文件保存失败！请重新保存！', '错误提示',
        MB_OK + MB_ICONSTOP);
      Exit;
    end;
    if EMRPad301.FileSaveAs(FileName + 'xml', 4, 0) = False then     //4
    begin
      Application.MessageBox('本地文件保存失败！请重新保存！', '错误提示',
        MB_OK + MB_ICONSTOP);
      Exit;
    end;
    if (pub_yydm <> '0151') and (pub_yydm <> '0124') and (pub_yydm <> '0013')
      and (pub_yydm <> '0139') then
    begin
      if EMRPad301.FileSaveAs(FileName + 'html', 7, 0) = false then
      begin
        Application.MessageBox('本地文件保存失败！请重新保存！', '错误提示',
          MB_OK + MB_ICONSTOP);
        Exit;
      end;
    end
    else
    begin
      if pub_yydm<>'0139' then
      begin
        EMRPad301.FileSaveAs(FileName + 'html', 5, 0);
      end;

    end;
    DeleteLonginLogData(pub_key_old);//删除病人登陆日志数据  20170904
    qry_up_dlbl.Close;
    qry_up_dlbl.Parameters.ParamByName('zy_blid').Value := pub_blid;
    qry_up_dlbl.Parameters.ParamByName('zy_zyh').Value := pub_zyh;
    qry_up_dlbl.Open;
    if editmode = 'add' then
    begin
      qry_up_dlbl.Append;
      qry_up_dlbl['fldm'] := pub_mbdldm;
      qry_up_dlbl['mbdm'] := pub_mbid;
      qry_up_dlbl['blys'] := pub_czyxm;
      getmaxid;
      if (copy(pub_key, 1, 2) = '02') then
        qry_up_dlbl['blmc'] := '病程记录' + '.' + pub_blid
      else if (copy(pub_key, 1, 2) = '11') then
        qry_up_dlbl['blmc'] := '新生儿病程'
      else
        qry_up_dlbl['blmc'] := pub_filename + '.' + pub_blid;
      if pub_yydm = '0262' then
      qry_up_dlbl['blmc'] := pub_filename + '.' + pub_blid;
      locatename := pub_filename + '.' + pub_blid;
      qry_up_dlbl['zyh'] := pub_zyh;
      qry_up_dlbl['blid'] := pub_blid;
      qry_up_dlbl['tmh'] := pub_tmh;
      qry_up_dlbl['brxm'] := pub_brxm;
      qry_up_dlbl['blrq'] := Frm_func.curr_date;
      qry_up_dlbl['hzsqdh'] := hzsqdh;
    end
    else if editmode = 'edit' then
      qry_up_dlbl.edit;
    getblys; //取得授权医生
    if (copy(pub_key, 1, 2) <> '02') then
    begin
      if ((pub_yydm = '0015') or (pub_yydm = '0013')) and (copy(pub_key, 1, 2) =
        '04') then
      begin

      end
      else
      begin
        //        if (qry_up_dlbl.FieldByName('blys').asstring<>pub_czyxm) and (editmode <>'add') then
        //        begin
        //          if pub_yydm='0147' then
        //          begin
        //            DM_data.qry_pub.close;
        //            DM_data.qry_pub.sql.Text:='select * from sys_ksdm where rtrim(kszg)<>''''';
        //            DM_data.qry_pub.Open;
        //            while not DM_data.qry_pub.eof do
        //            begin
        //              kszg:=kszg+','+ Trim(DM_data.qry_pub.FieldByName('kszg').AsString);
        //              DM_data.qry_pub.Next;
        //            end;
        //            if Pos(pub_czydm,kszg)>0 then
        //            begin
        //
        //            end
        //            else
        //            begin
        //              Exit;
        //            end;
        //          end
        //          else
        //            Exit;
        //        end;

      end;
    end;
    //    if ((pub_yydm='0015') or (pub_yydm='0013')) and (copy(pub_key, 1, 2) = '04') then
    //    begin
    //
    //    end
    //    else
    //      qry_up_dlbl['blys'] := bl_blys;
    if (copy(pub_key, 1, 2) = '02') or (copy(pub_key, 1, 2) = '11') then
      qry_up_dlbl['blys'] := bl_blys;
    qry_up_dlbl['zzys'] := bl_zzys;
    qry_up_dlbl['zgys'] := bl_zgys;

    //    qry_dzblbf.Append;
    //    qry_dzblbf['zyh'] := pub_zyh;
    //    qry_dzblbf['blid'] := pub_blid;
    //    qry_dzblbf['bcsj'] := Frm_func.curr_date;
    try
      stream := TADOBlobStream.Create(qry_up_dlbl.FieldByName('blwj') as
        TBlobField, bmWrite);
      stream.LoadFromFile(filename);
      streamxml := TADOBlobStream.Create(qry_up_dlbl.FieldByName('xmlwj') as
        TBlobField, bmWrite);
      streamxml.LoadFromFile(filename + 'xml');
      if pub_yydm<>'0139' then
      begin
        streamhtml := TADOBlobStream.Create(qry_up_dlbl.FieldByName('html') as
        TBlobField, bmWrite);
        streamhtml.LoadFromFile(filename + 'html');
      end;
      if hzsqdh <> '' then
      begin
        dm_data.qry_pub.close;
        dm_data.qry_pub.SQL.Text := 'select * from zybl_hzsqd where sqdh=' + #39 + hzsqdh + #39;
        dm_data.qry_pub.open;
        dm_data.qry_pub.edit;
        dm_data.qry_pub.fieldbyname('qrfc').asboolean := true;
        streamhtmlhzsq := TADOBlobStream.Create(dm_data.qry_pub.FieldByName('hzsqd') as TBlobField, bmWrite);
        streamhtmlhzsq.LoadFromFile(filename + 'html');
      end;
    finally
      stream.Free;
      streamxml.Free;
      streamhtml.Free;
      if hzsqdh <> '' then
      begin
        streamhtmlhzsq.free;
        dm_data.qry_pub.post;
      end;
    end;
    //    try
    //      stream := TADOBlobStream.Create(qry_dzblbf.FieldByName('blwj') as
    //        TBlobField, bmWrite);
    //      stream.LoadFromFile(filename);
    //      streamxml := TADOBlobStream.Create(qry_dzblbf.FieldByName('xmlwj') as
    //        TBlobField, bmWrite);
    //      streamxml.LoadFromFile(filename + 'xml');
    //      streamhtml := TADOBlobStream.Create(qry_dzblbf.FieldByName('html') as
    //        TBlobField, bmWrite);
    //      streamhtml.LoadFromFile(filename + 'html');
    //    finally
    //      stream.Free;
    //      streamxml.Free;
    //      streamhtml.Free;
    //    end;
    qry_up_dlbl.Post;
    //    qry_dzblbf.Post;
    //    qry_dzblbf.UpdateBatch(arall);
    EMRPad301.SetDocumentMode(3);
    if copy(pub_key, 1, 2) = '02' then
      savedzblbcjl; //写入病程记录
    treeviewzp.Enabled := true;
    onshowbz := true;
//    if pub_yydm<>'0266'  then    //不设置刷新广元昭化医院修改
//    begin
//      FormShow(self);  //不设置刷新广元昭化医院修改
//    end;
    //FormShow(self);  //不设置刷新广元昭化医院修改                      //20171106
    if (copy(pub_key, 1, 2) = '11') and (pub_yydm <> '0262') then
    begin
      locatename := '新生儿病程';
    end;
    vISdwbcjl:=locatedzbl; // 定位编辑相应电子病历
    onshowbz := false;
    if (copy(pub_key, 1, 2) = '02')  then
    begin
      if vISdwbcjl then
      begin
        locatebcpd; //定位病程记录
      end;
    end;

    addbcjl := 'edit';
    editbl.Visible := false;
    editbl.Enabled := false;
    viewbl.Visible := false;
    tablebl.Visible := false;
    fzbl.Visible := false;
    //ts1.PopupMenu := Popupnull;
    ts1.PopupMenu := PopupMenuedit_1;
    if  (cxGrid2DBTableView1.Tag <> 1) and ( pub_yydm<>'0266' ) and ( pub_yydm<>'0271' ) then   //新增或者广元昭化医院不增加保存提示
    begin
        Application.MessageBox('电子病历保存成功！', '提示', MB_OK +
     MB_ICONINFORMATION);

     editmode := ''      //20170825
    end else
    begin
      cxGrid2DBTableView1.Tag := 0;
      editmode := ''      //20170825
    end;

  end
  else
    application.messagebox('请先进入处理状态', '提示', mb_ok);
end;

//调入模板的时候保存开始

procedure TFrm_dzbl_main.savenew;
var
  stream, streamxml, streamhtml: TADOBlobStream;
  filename: string;
  linecount: integer;
  tsxx, mbdm, zklb, lbdm, kszg: string;
  xh: Real;
const
  hc = Chr(13) + chr(10);
begin
  v_zksm := '';
  DM_data.qry_pub.close;
  DM_data.qry_pub.SQL.text := 'select * from zydzbl_zydzblmx where zyh=' + ''''
    + pub_zyh +
    '''' + ' and blid=' + '''' + pub_blid + '''';
  DM_data.qry_pub.Open;
  mbdm := DM_data.qry_pub.FieldByName('mbdm').AsString;
  DM_data.qry_pub.close;
  DM_data.qry_pub.SQL.text := 'select * from sys_dzbl_mbmx where mbdm=' + '''' +
    mbdm + '''';
  DM_data.qry_pub.Open;
  zklb := DM_data.qry_pub.FieldByName('psdm').AsString;
  if zklb = '' then
  begin
    zklb := '00';
    xh := 0;
    jkjc(0, '00', pub_brxb);
  end
  else
  begin
    jkjc(0, '00', pub_brxb);
    DM_data.qry_pub.close;
    DM_data.qry_pub.SQL.text := 'select * from zydzbl_psbz_xx where lb=' + ''''
      + zklb + ''' order by xh';
    DM_data.qry_pub.Open;
    DM_data.qry_pub.First;
    while not DM_data.qry_pub.eof do
    begin
      jkjc(DM_data.qry_pub.FieldByName('xh').AsFloat, zklb, pub_brxb);
      DM_data.qry_pub.Next;
    end;
  end;
  tsxx := Trim(v_zksm);
  if tsxx = '' then
  begin
  end
  else
  begin
    application.messagebox(PChar(tsxx), '提示', mb_ok);
  end;
  if (pub_blid <> '') or (editmode = 'add') then
  begin
    filename := GetCurrentDir + '\' + 'stemp'; //+get_sjh( pub_czydm );
    if (copy(pub_key, 1, 2) = '02') and (addbcjl = 'add') then
      //病程记录启用片段机制
    begin
      getmaxid_bcjl;
      EMRPad301.universalboolfunction('', '', 15, 1); //启用修定机制
      EMRPad301.universalboolfunction('', '', 47, bl_bcid); //设置病历片段号
    end;
    linecount := EMRPad301.GetBaseLineCount;
    EMRPad301.SetSel(0, -1, 0, 0, 0, linecount - 1, -1, linecount - 1, 0, 0);
    //选中全部文档
    EMRPad301.EditLineEditMode; //将全部文档变成可编辑状态

    if EMRPad301.FileSaveAs(FileName, 0, 0) = False then
    begin
      Application.MessageBox('本地文件保存失败！请重新保存！', '错误提示',
        MB_OK + MB_ICONSTOP);
      Exit;
    end;
    if EMRPad301.FileSaveAs(FileName + 'xml', 4, 0) = False then
    begin
      Application.MessageBox('本地文件保存失败！请重新保存！', '错误提示',
        MB_OK + MB_ICONSTOP);
      Exit;
    end;
    if (pub_yydm <> '0151') and (pub_yydm <> '0124') and (pub_yydm <> '0013')
      and (pub_yydm <> '0139') then
    begin
      if EMRPad301.FileSaveAs(FileName + 'html', 7, 0) = false then
      begin
        Application.MessageBox('本地文件保存失败！请重新保存！', '错误提示',
          MB_OK + MB_ICONSTOP);
        Exit;
      end;
    end
    else
    begin
      if pub_yydm<>'0139' then
      begin
        EMRPad301.FileSaveAs(FileName + 'html', 5, 0);
      end;
    end;
    qry_up_dlbl.Close;
    qry_up_dlbl.Parameters.ParamByName('zy_blid').Value := pub_blid;
    qry_up_dlbl.Parameters.ParamByName('zy_zyh').Value := pub_zyh;
    qry_up_dlbl.Open;
    if editmode = 'add' then
    begin
      qry_up_dlbl.Append;
      qry_up_dlbl['fldm'] := pub_mbdldm;
      qry_up_dlbl['mbdm'] := pub_mbid;
      qry_up_dlbl['blys'] := pub_czyxm;
      getmaxid;
      if (copy(pub_key, 1, 2) = '02') then
        qry_up_dlbl['blmc'] := '病程记录' + '.' + pub_blid
      else if (copy(pub_key, 1, 2) = '11') then
        qry_up_dlbl['blmc'] := '新生儿病程'
      else
        qry_up_dlbl['blmc'] := pub_filename + '.' + pub_blid;
      locatename := pub_filename + '.' + pub_blid;
      qry_up_dlbl['zyh'] := pub_zyh;
      qry_up_dlbl['blid'] := pub_blid;
      qry_up_dlbl['tmh'] := pub_tmh;
      qry_up_dlbl['brxm'] := pub_brxm;
      qry_up_dlbl['blrq'] := Frm_func.curr_date;
    end
    else if editmode = 'edit' then
      qry_up_dlbl.edit;
    getblys; //取得授权医生
    if (copy(pub_key, 1, 2) <> '02') then
    begin
      if ((pub_yydm = '0015') or (pub_yydm = '0013')) and (copy(pub_key, 1, 2) =
        '04') then
      begin

      end
      else
      begin
        if (qry_up_dlbl.FieldByName('blys').asstring <> pub_czyxm) and (editmode
          <> 'add') then
        begin
          if pub_yydm = '0147' then
          begin
            DM_data.qry_pub.close;
            DM_data.qry_pub.sql.Text :=
              'select * from sys_ksdm where rtrim(kszg)<>''''';
            DM_data.qry_pub.Open;
            while not DM_data.qry_pub.eof do
            begin
              kszg := kszg + ',' +
                Trim(DM_data.qry_pub.FieldByName('kszg').AsString);
              DM_data.qry_pub.Next;
            end;
            if Pos(pub_czydm, kszg) > 0 then
            begin

            end
            else
            begin
              Exit;
            end;
          end
          else
            Exit;
        end;

      end;
    end;
    //    if ((pub_yydm='0015') or (pub_yydm='0013')) and (copy(pub_key, 1, 2) = '04') then
    //    begin
    //
    //    end
    //    else
    //      qry_up_dlbl['blys'] := bl_blys;
    if (copy(pub_key, 1, 2) = '02') or (copy(pub_key, 1, 2) = '11') then
      qry_up_dlbl['blys'] := bl_blys;
    qry_up_dlbl['zzys'] := bl_zzys;
    qry_up_dlbl['zgys'] := bl_zgys;
    try
      stream := TADOBlobStream.Create(qry_up_dlbl.FieldByName('blwj') as
        TBlobField, bmWrite);
      stream.LoadFromFile(filename);
      streamxml := TADOBlobStream.Create(qry_up_dlbl.FieldByName('xmlwj') as
        TBlobField, bmWrite);
      streamxml.LoadFromFile(filename + 'xml');
      if pub_yydm<>'0139' then
      begin
        streamhtml := TADOBlobStream.Create(qry_up_dlbl.FieldByName('html') as
          TBlobField, bmWrite);
        streamhtml.LoadFromFile(filename + 'html');
      end;

    finally
      stream.Free;
      streamxml.Free;
    end;
    qry_up_dlbl.Post;
    EMRPad301.SetDocumentMode(3);
    if copy(pub_key, 1, 2) = '02' then
      savedzblbcjl; //写入病程记录
    treeviewzp.Enabled := true;
    onshowbz := true;
    FormShow(self);
    if copy(pub_key, 1, 2) = '11' then
      locatename := '新生儿病程';
    locatedzbl; // 定位编辑相应电子病历
    onshowbz := false;
    if copy(pub_key, 1, 2) = '02' then
      locatebcpd; //定位病程记录
    addbcjl := 'edit';
    editbl.Visible := false;
    editbl.Enabled := false;
    viewbl.Visible := false;
    tablebl.Visible := false;
    fzbl.Visible := false;
    //ts1.PopupMenu := Popupnull;
    ts1.PopupMenu := PopupMenuedit_1;
  end
  else
    application.messagebox('请先进入处理状态', '提示', mb_ok);
end;

procedure TFrm_dzbl_main.SetCancelSignRight;
begin
  // 从pub_zgys 改为 bl_zgys ，就是要求只有明细表中签署人的真正上级才能取消。
  // 而不是当前操作员 = 当前医生表 zydzbl_blys 中的医生名称
  if (pub_czyxm = bl_zgys) and bl_zzysbz then
  begin
    menuItemCancelYSSign.caption := '取消主治医生签名';
    menuItemCancelYSSign.Visible := True;
    exit;
  end;
  if (pub_czyxm = bl_zzys) and bl_blysbz then
  begin
    menuItemCancelYSSign.caption := '取消病历医生签名';
    menuItemCancelYSSign.Visible := True;
    Exit;
  end;
  if pub_czyxm = bl_blys then
  begin
    menuItemCancelYSSign.Visible := false;
  end;
end;

//调入模板的时候保存结束

procedure TFrm_dzbl_main.editpymEnter(Sender: TObject);
begin
  editpym.SelectAll;
end;

procedure TFrm_dzbl_main.editpymKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    qry_blzsk.close;
    qry_blzsk.Parameters.ParamByName('mbmc').value := '%' + trim(editpym.text) +
      '%';
    qry_blzsk.Parameters.ParamByName('pym').value := trim(editpym.text) + '%';
    qry_blzsk.Parameters.ParamByName('dldm').value := '%';
    editpym.TEXT := '';
    qry_blzsk.open;
    if qry_blzsk.RecordCount <> 0 then
    begin
      DBGridmbmx.Enabled := true;
      DBGridmbmx.SetFocus;
    end
    else
    begin
      qry_blzsk.close;
      application.MessageBox('没有满足条件的知识库模板！', '提示', 16);
      DBGridmbmx.Enabled := false;
      editpym.Clear;
      editpym.SetFocus;
    end;
  end;
end;

procedure TFrm_dzbl_main.edt_mbdmKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  v_mbdm: string;
begin
  if key = 13 then
  begin
    v_mbdm := Trim(edt_mbdm.Text);
    if qry_mbmx.Active then
      if not qry_mbmx.Locate('mbdm', v_mbdm, []) then
      begin
        qry_mbmx.Filtered := false;
        qry_mbmx.Filter := 'pym like ' + #39 + v_mbdm + '%' + #39;
        qry_mbmx.Filtered := true;
        if qry_mbmx.RecordCount = 0 then
          Application.MessageBox('提示:模板代码在该类别中不存在!', '提示',
            MB_ICONINFORMATION);
      end;
  end;
end;

procedure TFrm_dzbl_main.EMRPad301KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if pub_yydm = '0240' then
  begin
    EMRPad301.CleanClipboard;
  end;

end;

procedure TFrm_dzbl_main.EMRPad301SelectKeyword(Sender: TObject);
var
  ls_keyword: string;
  stream: TADOBlobStream;
  stream1: TFileStream;
  filename: string;
begin
  if pub_yydm <> '0003' then
  begin
    filename := GetCurrentDir + '\ktemp'; //+get_sjh( pub_czydm );
    ls_keyword := EMRPad301.GetFieldText(-1, -1, -1, -1, True);
    qry_keyword.Close;
    qry_keyword.Parameters.ParamByName('mbmc').Value := trim(ls_keyword);
    qry_keyword.Open;
    if not qry_keyword.IsEmpty then
    begin
      try
        stream := TADOBlobStream.Create(qry_keyword.FieldByName('mbwj') as
          TBlobField, bmRead);
        stream.Position := 0;
        stream1 := TFileStream.Create(filename, fmCreate);
        stream1.Position := 0;
        stream1.CopyFrom(stream, stream.Size);
      finally
        stream1.Free;
        stream.Free;
      end;
      EMRPad301.FileInsert(filename, 0);
    end;
  end;
end;

procedure TFrm_dzbl_main.treeviewzpDblClick(Sender: TObject);
var
  stream: TADOBlobStream;
  stream1: TFileStream;
  filename, bcid: string;
  id, i: integer;
  ls_keyword: string;
  ysnr: string;
 
  ssss: TClass1;
  prv_dllname: string;
  prv_dllhd: Thandle;
  vISdwbcjl:boolean;
begin

    //pub_name := trim(treeviewzp.selected.text);
  pub_name1  := trim(treeviewzp.selected.text);    //20171106
  if (pub_yydm='0266') or ( pub_yydm='0271')  then //广元昭化人民医院
  begin
    if (pub_blid <> '') and (editmode = 'edit')  then
    begin
      saveblClick(self);
    end;
//    treeviewzp.Enabled := false;           //20170825
  end else
  begin
    treeviewzp.Enabled := false;
  end;
                                                 //20171106
  pub_name := pub_name1 ;
  pub_key :=pub_key1;
  locatename :=locatename1;
  vISdwbcjl:=locatedzbl; // 定位编辑相应电子病历

  if (treeviewzp.selected.HasChildren) or (not(vISdwbcjl)) then
    Exit;

  //ShowMessage(IntToStr(EMRPad301.GetDocumentMode));
  if pub_frm_name <> '' then
  begin
    if trim(pub_name) = '医嘱' then
    begin
      N92.Click;
    end
    else if trim(pub_name) = '新生儿医嘱' then
    begin
      N52.Click;
    end
    else if trim(pub_name) = '临时医嘱' then
    begin
      try
        Application.CreateForm(Tfrm_lsyzxzdy, frm_lsyzxzdy);
        p_lsyzxzdy.v_zyh := sp_jbxx.FieldByName('zyh').asstring;
        p_lsyzxzdy.v_brxm := sp_jbxx.FieldByName('brxm').asstring;
        p_lsyzxzdy.v_bch := sp_jbxx.FieldByName('bch').asstring;
        p_lsyzxzdy.v_brxb := sp_jbxx.FieldByName('brxb').asstring;
        p_lsyzxzdy.v_brnl := sp_jbxx.FieldByName('brnl').asstring;
        p_lsyzxzdy.v_ryzd := sp_jbxx.FieldByName('ryzd').asstring;
        p_lsyzxzdy.v_tmh := sp_jbxx.FieldByName('tmh').asstring;
        p_lsyzxzdy.v_bah := sp_jbxx.FieldByName('bah').asstring;
        p_lsyzxzdy.sfxse := '';
        frm_lsyzxzdy.showmodal;
      finally
        frm_lsyzxzdy.free;
      end;
    end
    else if trim(pub_name) = '长期医嘱' then
    begin
      try
        Application.CreateForm(Tfrm_cqyzxzdy, frm_cqyzxzdy);
        p_cqyzxzdy.v_zyh := sp_jbxx.FieldByName('zyh').asstring;
        p_cqyzxzdy.v_brxm := sp_jbxx.FieldByName('brxm').asstring;
        p_cqyzxzdy.v_bch := sp_jbxx.FieldByName('bch').asstring;
        p_cqyzxzdy.v_brxb := sp_jbxx.FieldByName('brxb').asstring;
        p_cqyzxzdy.v_brnl := sp_jbxx.FieldByName('brnl').asstring;
        p_cqyzxzdy.v_ryzd := sp_jbxx.FieldByName('ryzd').asstring;
        p_cqyzxzdy.v_tmh := sp_jbxx.FieldByName('tmh').asstring;
        p_cqyzxzdy.v_bah := sp_jbxx.FieldByName('bah').asstring;
        p_cqyzxzdy.sfxse := '';
        frm_cqyzxzdy.showmodal;
      finally
        frm_cqyzxzdy.free;
      end;
    end
    else if trim(pub_name) = '查看体温表' then
    begin
      DM_data.qry_pub.close;
      DM_data.qry_pub.sql.text := 'select * from sys_xt_kg';
      try
        DM_data.qry_pub.Open;
      except

      end;
      if DM_data.qry_pub.FieldByName('twbxbb').AsBoolean = true then
      begin
        prv_dllname := ExtractFilePath(application.ExeName) + 'Thermometer.dll';
        //prv_dllname := 'F:\scsx2012\体温表\sys_twb.dll';
        if not fileexists(prv_dllname) then
        begin
          //prv_dllname := getxtlj + '\system32\scsx_tmdy.dll';
          proc_down1(prv_dllname);
        end;
        proc_down1(prv_dllname);
        if not fileexists(prv_dllname) then
        begin
          Application.MessageBox('[Thermometer.dll]动态库不存在!', '提示', MB_OK +
            MB_ICONINFORMATION);
          Exit;
        end;
        Windows.Winexec(pchar('regasm.exe ' + prv_dllname + ' /s'), 1);
        prv_dllname := ExtractFilePath(application.ExeName) +
          'ThermometerControl.dll';
        //prv_dllname := 'F:\scsx2012\体温表\sys_twb.dll';
        if not fileexists(prv_dllname) then
        begin
          //prv_dllname := getxtlj + '\system32\scsx_tmdy.dll';
          proc_down1(prv_dllname);
        end;
        proc_down1(prv_dllname);
        if not fileexists(prv_dllname) then
        begin
          Application.MessageBox('[ThermometerControl.dll]动态库不存在!', '提示',
            MB_OK +
            MB_ICONINFORMATION);
          Exit;
        end;
        ssss := TClass1.Create(nil);
        if (pub_yydm='0263') or (pub_yydm='0264')or (pub_yydm = '0269') then          //or (pub_yydm = '0266')
        begin
         ssss.dk_2(pub_bqdm, '2', '01', trim(pub_zyh));  //修改了控件，加了zyh参数，0是代表全部查询
        end else
        begin
          ssss.dk(pub_bqdm, '2', '01');  //修改了控件，加了zyh参数，0是代表全部查询
        end;
        //ssss.dk(pub_bqdm, '2', '01');  //zyh为0，代表不传zyh查询
      end
      else
      begin
        proc_jrtwb(1);
        Exit;
      end;
    end
    else
    begin
      ExecExistingForm(pub_frm_name);
      treeviewzp.Enabled := true;
    end;
  end
  else
  begin
    filename := GetCurrentDir + '\' + 'etemp'; //+get_sjh( pub_czydm );
    qry_brbl.Close;
    if copy(pub_key, 1, 2) = '02' then
    begin
      //      pub_name := trim(treeviewzp.selected.text);
      //      bcid := copy(pub_name, pos('.', pub_name) + 1, length(pub_name) -
      //        pos('.', pub_name) + 1);
      qry_brbl.SQL.Text := 'select * from zydzbl_zydzblmx where fldm=' + ''''
        + pub_key + '''' +
        ' and zyh=' + '''' + pub_zyh + '''';
    end
    else
      qry_brbl.SQL.Text := 'select * from zydzbl_zydzblmx where blmc=' + ''''
        + pub_name + '''' +
        ' and zyh=' + '''' + pub_zyh + '''';
    qry_brbl.Open;
    if qry_brbl.IsEmpty then
    begin
      treeviewzp.Enabled := true;
    //  Exit;
    end;
    hzsqdh := Trim(qry_brbl.FieldByName('hzsqdh').AsString);
    //病程记录
    if (copy(pub_key, 1, 2) = '02') and (addbcjl = 'edit') then
    begin
      //      pub_name := trim(treeviewzp.selected.text);
      bcid := copy(pub_name, pos('.', pub_name) + 1, length(pub_name) -
        pos('.', pub_name) + 1);
      try
        id := strtoint(bcid);
        F_bcid :=  bcid;
        qry_pub.SQL.Text := 'select * from zydzbl_zybcjlmx where bcid=' +
          '''' + bcid + '''' +
          ' and zyh=' + '''' + pub_zyh + '''';
        qry_pub.Open;
        bl_blys := trim(qry_pub.fieldbyname('blys').asstring);
        bl_zzys := trim(qry_pub.fieldbyname('zzys').asstring);
        bl_zgys := trim(qry_pub.fieldbyname('zgys').asstring);
        bl_blysbz := qry_pub.fieldbyname('blysqmbz').AsBoolean;
        bl_zzysbz := qry_pub.fieldbyname('zzysqmbz').AsBoolean;
        bl_zgysbz := qry_pub.fieldbyname('zgysqmbz').AsBoolean;
        pub_jlrq := Trim(FormatDateTime('yyyy-mm-dd :hh:nn',
          qry_pub.fieldbyname('blrq').AsDateTime));
      except
        application.messagebox('请选择相应病程目录', '提示', mb_ok);
      end;
    end
    else
    begin
      bl_blys := trim(qry_brbl.fieldbyname('blys').asstring);
      bl_zzys := trim(qry_brbl.fieldbyname('zzys').asstring);
      bl_zgys := trim(qry_brbl.fieldbyname('zgys').asstring);
      bl_blysbz := qry_brbl.fieldbyname('blysqmbz').AsBoolean;
      bl_zzysbz := qry_brbl.fieldbyname('zzysqmbz').AsBoolean;
      bl_zgysbz := qry_brbl.fieldbyname('zgysqmbz').AsBoolean;
      pub_jlrq := Trim(FormatDateTime('yyyy-mm-dd :hh:nn',
        qry_brbl.fieldbyname('blrq').AsDateTime));
    end;
    setmode('edit');
    pub_blid := qry_brbl.fieldbyname('blid').asstring;
    try
      stream := TADOBlobStream.Create(qry_brbl.FieldByName('blwj') as
        TBlobField, bmRead);
      stream.Position := 0;
      stream1 := TFileStream.Create(filename, fmCreate);
      stream1.Position := 0;
      stream1.CopyFrom(stream, stream.Size);
    finally
      stream1.Free;
      stream.Free;
    end;
    try
      cxmemoxml.Lines.LoadFromStream(TADOBlobStream.Create(qry_brbl.FieldByName('xmlwj') as TBlobField, bmRead));
      cxmemoxml.Text := utf8decode(cxmemoxml.Text);
    except
    end;
    if (editmode = 'edit') and ((pub_filename <> '') or (copy(pub_key, 1, 2)= '02')) then
    begin
      try
        EMRPad301.FileOpen(filename, 0);
        //        DM_data.qry_pub.close;
        //        DM_data.qry_pub.SQL.text := 'select * from sys_xt_kg';
        //        DM_data.qry_pub.Open;
        //        if DM_data.qry_pub.FieldByName('dzbllrys').AsBoolean = true then
        //        begin
        //          EMRPad301.SetDocumentMode(1);
        //          DM_data.qry_pub.close;
        //          DM_data.qry_pub.SQL.text := 'select * from sys_dzbl_ysb where zyh='
        //            + '''' +
        //            pub_zyh + '''';
        //          DM_data.qry_pub.Open;
        //          if not DM_data.qry_pub.IsEmpty then
        //          begin
        //            DM_data.qry_pub.First;
        //            while not DM_data.qry_pub.eof do
        //            begin
        //              while
        //                (EMRPad301.FindField(trim(DM_data.qry_pub.FieldByName('ysmc').AsString) + '%', -1, 1, true)) = True do
        //              begin
        //                //EMRPad301.FindField(trim(DM_data.qry_pub.FieldByName('ysmc').AsString)+'%', -1, 1, true);
        //                EMRPad301.UniversalBoolFunction('', '', 36, 0);
        //
        //                filename := GetCurrentDir + '\ktemp';
        //                //+get_sjh( pub_czydm );
        //                if trim(DM_data.qry_pub.FieldByName('ysnr').AsString) <> '' then
        //                begin
        //                  try
        //                    stream :=
        //                      TADOBlobStream.Create(DM_data.qry_pub.FieldByName('ysnr')
        //                      as TBlobField, bmRead);
        //                    stream.Position := 0;
        //                    stream1 := TFileStream.Create(filename, fmCreate);
        //                    stream1.Position := 0;
        //                    stream1.CopyFrom(stream, stream.Size);
        //                  finally
        //                    stream1.Free;
        //                    stream.Free;
        //                  end;
        //                  EMRPad301.FileInsert(filename, 0);
        //                end;
        //              end;
        //              DM_data.qry_pub.Next;
        //            end;
        //          end;
        //          EMRPad301.SetDocumentMode(2);
        //        end;
        DM_data.qry_pub.close;
        DM_data.qry_pub.SQL.Text := 'select dzbllrys from sys_xt_kg';
        DM_data.qry_pub.Open;
        if DM_data.qry_pub.FieldByName('dzbllrys').AsBoolean = true then
        begin
          DM_data.qry_pub.close;
          DM_data.qry_pub.SQL.Text := 'select * from sys_dzbl_dyys';
          DM_data.qry_pub.Open;
          DM_data.qry_pub.First;

          while not DM_data.qry_pub.eof do
          begin
            i := 1;
            qry_cx_dqys.close;
            qry_cx_dqys.sql.text := 'select * from sys_dzbl_ysb where zyh=' +
              '''' + pub_zyh + '''' +
              ' and ysmc=' + '''' + DM_data.qry_pub.FieldByName('ysmc').asstring
              + '''';
            qry_cx_dqys.Open;
            if qry_cx_dqys.IsEmpty then
              ysnr := DM_data.qry_pub.FieldByName('ysmc').asstring
            else
              //ysnr:=StringReplace(qry_cx_dqys.FieldByName('nrtext').AsString,#$D#$A,#13+#10, [rfReplaceAll]);
              ysnr := qry_cx_dqys.FieldByName('nrtext').AsString;

            if EMRPad301.FindField(DM_data.qry_pub.FieldByName('ysmc').asstring,
              -1, 1, true) = true then
              EMRPad301.SetFieldText(-1, -1, -1, -1, ysnr);
            EMRPad301.LineSpaceOnehalf;
            //EMRPad301.UniversalBoolFunction('','',38,1);
            while i < 50 do
            begin
              if
                EMRPad301.FindField(DM_data.qry_pub.FieldByName('ysmc').asstring,
                -1, 1, false) = true then
              begin
                EMRPad301.SetFieldText(-1, -1, -1, -1, ysnr);
                EMRPad301.LineSpaceOnehalf;
                //EMRPad301.UniversalBoolFunction('','',38,1);
              end;
              i := i + 1;
            end;
            DM_data.qry_pub.Next;
          end;
          EMRPad301.SetDocumentMode(2);
        end;
        seteditright; //设置文档处理权限
      except
      end;
    end;
    pgc1.ActivePage := ts1;
    //showmessage(copy(pub_key, 1, 2));
  end;
end;

procedure TFrm_dzbl_main.N14Click(Sender: TObject);
var
  FileName: string;
begin
  if SaveDialog1.Execute then
  begin
    FileName := SaveDialog1.FileName;
    EMRPad301.FileSaveAs(FileName, 0, 0);
  end;
end;

procedure TFrm_dzbl_main.N25Click(Sender: TObject);
begin
  EMRPad301.EditUnDo;
end;

procedure TFrm_dzbl_main.N26Click(Sender: TObject);
begin
  EMRPad301.EditReDo;
end;

procedure TFrm_dzbl_main.N28Click(Sender: TObject);
var
  strCo: string;
begin
  EMRPad301.EditCopy;
  {****
  *   对粘贴板内容处理
  ****}
  if pub_yydm = '0031' then
  begin
    strCo := Clipboard.AsText;
    if Length(strCo) > 100 * 2 then
      strCo := LeftStr(strCo, 100 * 2);
    Clipboard.AsText := strCo;
  end;
end;

procedure TFrm_dzbl_main.N29Click(Sender: TObject);
begin
  //  if Application.MessageBox('您当前正在进行粘贴病历操作，是否继续？', '询问',
  //    MB_OKCANCEL + MB_ICONQUESTION + MB_DEFBUTTON1) = IDOK then
  //  begin
  EMRPad301.EditPaste;
  //  end;

end;

procedure TFrm_dzbl_main.N30Click(Sender: TObject);
begin
  EMRPad301.EditCut;
end;

procedure TFrm_dzbl_main.N31Click(Sender: TObject);
begin
  EMRPad301.EditCopy;
  pub_mbmc := '';
  pub_mbsx := '';
  pub_mbks := '';
  pub_mbid := -1;
  if editmode = 'add' then
    editmode := 'azz'
  else
    editmode := 'ezz';

  pub_mbdldm := '12005';
  application.CreateForm(Tfrm_mbbj, frm_mbbj);
  try
    frm_mbbj.ShowModal;
  finally
    frm_mbbj.free;
  end;
end;

procedure TFrm_dzbl_main.Nbj_delClick(Sender: TObject);
begin

  if not EMRPad301.UniversalBoolFunction('', '', 3, 0) then
    EMRPad301.UniversalBoolFunction('', '', 36, 0);

end;

procedure TFrm_dzbl_main.N33Click(Sender: TObject);
begin
  EMRPad301.EditSelectAll;
end;

procedure TFrm_dzbl_main.N35Click(Sender: TObject);
begin
  EMRPad301.EditFind;
end;

procedure TFrm_dzbl_main.N36Click(Sender: TObject);
begin
  EMRPad301.EditReplace;
end;

{-------------------------------------------------------------------------------
  过程名:    TFrm_dzbl_main.N90Click
  作者:      yangshuai
  日期:      2017.05.15
  参数:      Sender: TObject
  返回值:    无
-------------------------------------------------------------------------------}
procedure TFrm_dzbl_main.N90Click(Sender: TObject);
var
  s1: string;
  hmem: HGLOBAL;
  pstr: PChar;
begin
  jyxmdrnr := '';

  DM_data.qry_pub.Close;
  DM_data.qry_pub.SQL.text := 'SELECT * FROM sys_xt_xkg WHERE  name=''zydzbl_dr_dgjcjg'' ';
  DM_data.qry_pub.open;


  if Trim(DM_data.qry_pub.FieldByName('value').AsString)='1' then
  begin
    try
      application.createform(Tfrm_in_jcxmjg_x, frm_in_jcxmjg_x);
      frm_in_jcxmjg_x.v_zyh := pub_zyh;
      frm_in_jcxmjg_x.v_lb := '1';
      frm_in_jcxmjg_x.showmodal;
    finally
      frm_in_jcxmjg_x.free;
    end;
  end else
  begin
    try
      application.createform(Tfrm_in_jcxmjg, frm_in_jcxmjg);
      frm_in_jcxmjg.v_zyh := pub_zyh;
      frm_in_jcxmjg.v_lb := '2';
      frm_in_jcxmjg.showmodal;
    finally
      frm_in_jcxmjg.free;
    end;
  end;
  if jyxmdrnr <> '' then
  begin
    s1 := jyxmdrnr;
    if OpenClipboard(0) then
    begin
      EmptyClipboard;  //清空剪贴板
      hmem := GlobalAlloc(GMEM_MOVEABLE or GMEM_DDESHARE, Length(s1) + 4);
      pstr := GlobalLock(hmem);
      StrCopy(pstr, PChar(s1));
      SetClipboardData(CF_TEXT, hmem);
      GlobalUnlock(hmem);
      GlobalFree(hmem);
      CloseClipboard;
    end;
    EMRPad301.EditPaste;

//    EMRPad301.CleanUndoBuffer; //清空编辑缓冲区
//    EMRPad301.CleanClipboard; //清空剪贴版
  end;
end;


procedure TFrm_dzbl_main.N91Click(Sender: TObject);
var
  vmbmc,vmbflvalue,dm,s:string;
begin
 // EMRPad301.ShowRevisionHistory;
  application.CreateForm(Tfrm_savedzblmb, frm_savedzblmb);
  try
   //病人科室名称
    frm_savedzblmb.editmbmc.Text:=  copy(locatename,1, pos('.', locatename) - 1)+'_'+pub_czyxm; //摸板名称
    frm_savedzblmb.Editzyks.Text:= sp_jbxx.FieldByName('ksmc').asstring;
    frm_savedzblmb.ksdm:= sp_jbxx.FieldByName('ksdm').asstring;
    if frm_savedzblmb.ShowModal=mrOk then
    begin
      vmbmc := frm_savedzblmb.mbmc;
      if frm_savedzblmb.zyksgs = 0 then  //公共模板
      begin
        vmbflvalue:='';
      end else if frm_savedzblmb.zyksgs = 1 then     //科室模板
      begin
         vmbflvalue:= frm_savedzblmb.ksdm;
      end else if frm_savedzblmb.zyksgs = 2 then    //个人模板
      begin
         vmbflvalue:= frm_savedzblmb.ksdm;
      end;


     // dm := qry_mbmx.FieldByName('mbdm').Asinteger;
      sp_save_mblcw.Close;
      sp_save_mblcw.Parameters.ParamByName('@mbmc').Value := vmbmc;
      sp_save_mblcw.Parameters.ParamByName('@mblx').Value := frm_savedzblmb.zyksgs;
      sp_save_mblcw.Parameters.ParamByName('@mblxvalue').Value := vmbflvalue;
      sp_save_mblcw.Parameters.ParamByName('@zyh').Value := pub_zyh;
      sp_save_mblcw.Parameters.ParamByName('@pym').Value := get_hz_pywb(vmbmc, 3);
      if copy(pub_key, 1, 2) = '02' then   //病程
      begin
        F_bcid := copy(locatename, pos('.', locatename) + 1, length(locatename) -
         pos('.', locatename) + 1);
         sp_save_mblcw.Parameters.ParamByName('@blsx').Value := 1;
         sp_save_mblcw.Parameters.ParamByName('@blmc').Value := F_bcid;
      end else
      begin
         sp_save_mblcw.Parameters.ParamByName('@blsx').Value := 0;
         sp_save_mblcw.Parameters.ParamByName('@blmc').Value := locatename;
      end;
      sp_save_mblcw.Parameters.ParamByName('@czymc').Value := pub_czyxm;
      sp_save_mblcw.Parameters.ParamByName('@sc_zt').Value := '';
      sp_save_mblcw.ExecProc;
      s := sp_save_mblcw.Parameters.ParamByName('@sc_zt').Value;
      application.MessageBox(pchar(s), '提示', 0 + 48);
      qry_mbmx.close;
      qry_mbmx.Parameters.ParamByName('dldm').value := copy(pub_key, 1, 2) +
        '%';
      qry_mbmx.open;
    end;
  finally
    frm_savedzblmb.free;
  end;
end;

procedure TFrm_dzbl_main.N92Click(Sender: TObject);
var
  yz_zyh: string;
  yz_bqdm: string;
  yz_ksdm: string;
  yz_bqmc: string;
  yz_ksmc: string;
begin
  application.CreateForm(Tfrm_yzinput, frm_yzinput);
  frm_yzinput.yz_kdks := '';
  if trim(pub_zyh) <> '' then
  begin
    dm_data.qry_pub.close;
    dm_data.qry_pub.sql.text := 'select * from zysf_zydj where cybz=0 and zyh='
      +
      '''' +
      pub_zyh + '''';
    dm_data.qry_pub.open;
    if not dm_data.qry_pub.isempty then
    begin
      yz_zyh := dm_data.qry_pub.fieldbyname('zyh').asstring;
      dm_data.qry_pub.close;
      dm_data.qry_pub.sql.text := 'select * from sys_kscwsz where zyh=' + '''' +
        yz_zyh + '''';
      dm_data.qry_pub.open;
      if not dm_data.qry_pub.isempty then
      begin
        yz_bqdm := dm_data.qry_pub.fieldbyname('bqdm').asstring;
        yz_ksdm := trim(dm_data.qry_pub.fieldbyname('ksdm').asstring);
        dm_data.qry_pub.close;
        dm_data.qry_pub.sql.text := 'select * from sys_bqdm where bqdm=' + ''''
          +
          yz_bqdm + '''';
        dm_data.qry_pub.open;
        yz_bqmc := trim(dm_data.qry_pub.fieldbyname('bqmc').asstring);
        dm_data.qry_pub.close;
        dm_data.qry_pub.sql.text := 'select * from sys_ksdm where dm=' + '''' +
          yz_ksdm + '''';
        dm_data.qry_pub.open;
        yz_ksmc := trim(dm_data.qry_pub.fieldbyname('mc').asstring);
      end;
    end;
    if yz_bqdm <> pub_bqdm then
    begin
      if application.MessageBox(pchar('当前病人所属病区[' + yz_bqmc +
        ']与操作员登陆病区[' +
        Trim(pub_bqmc) + ']不同，如果按操作员登陆科室[' + trim(pub_ksmc) +
        ']作为医嘱开单科室请选[是]，如果按病人' +
        '所属科室[' + yz_ksmc + ']作为医嘱开单科室请选[否]'), '提示信息',
        mb_iconquestion + MB_YESNO + mb_defbutton1) = IDNO then
      begin
        frm_yzinput.yz_kdks := yz_ksdm;
      end
      else
      begin
        frm_yzinput.yz_kdks := pub_ksdm;
      end;
    end;
  end;
  if frm_yzinput.yz_kdks = '' then
    frm_yzinput.yz_kdks := pub_ksdm;
  try
    frm_yzinput.ShowModal;
  finally
    frm_yzinput.free;
  end;
end;

procedure TFrm_dzbl_main.N93Click(Sender: TObject);
var
  ssss: TClass1;
  prv_dllname: string;
  prv_dllhd: Thandle;
begin
  DM_data.qry_pub.close;
  DM_data.qry_pub.sql.text := 'select * from sys_xt_kg';
  DM_data.qry_pub.Open;
  if DM_data.qry_pub.FieldByName('twbxbb').AsBoolean = true then
  begin
    prv_dllname := ExtractFilePath(application.ExeName) + 'Thermometer.dll';
    //prv_dllname := 'F:\scsx2012\体温表\sys_twb.dll';
    if not fileexists(prv_dllname) then
    begin
      //prv_dllname := getxtlj + '\system32\scsx_tmdy.dll';
      proc_down1(prv_dllname);
    end;
    proc_down1(prv_dllname);
    if not fileexists(prv_dllname) then
    begin
      Application.MessageBox('[Thermometer.dll]动态库不存在!', '提示', MB_OK +
        MB_ICONINFORMATION);
      Exit;
    end;
    Windows.Winexec(pchar('regasm.exe ' + prv_dllname + ' /s'), 1);
    prv_dllname := ExtractFilePath(application.ExeName) +
      'ThermometerControl.dll';
    //prv_dllname := 'F:\scsx2012\体温表\sys_twb.dll';
    if not fileexists(prv_dllname) then
    begin
      //prv_dllname := getxtlj + '\system32\scsx_tmdy.dll';
      proc_down1(prv_dllname);
    end;
    proc_down1(prv_dllname);
    if not fileexists(prv_dllname) then
    begin
      Application.MessageBox('[ThermometerControl.dll]动态库不存在!', '提示',
        MB_OK +
        MB_ICONINFORMATION);
      Exit;
    end;
    ssss := TClass1.Create(nil);
   // ssss.dk(pub_bqdm, '2', '01');  //zyh为0，代表不传zyh查询
    if (pub_yydm='0263') or (pub_yydm='0264') or (pub_yydm = '0269')then                     // or (pub_yydm = '0266')
    begin
     ssss.dk_2(pub_bqdm, '2', '01', trim(pub_zyh));  //修改了控件，加了zyh参数，0是代表全部查询
    end else
    begin
      ssss.dk(pub_bqdm, '2', '01');  //修改了控件，加了zyh参数，0是代表全部查询
    end;
  end
  else
  begin
    proc_jrtwb(0);
    Exit;
  end;
  //  try
  //    application.createform( Tfrm_bqgl_twjl, frm_bqgl_twjl );
  //    p_bqgl_twjl.bjqx := 0;
  //    frm_bqgl_twjl.showmodal;
  //  finally
  //    frm_bqgl_twjl.free;
  //  end;
end;

procedure TFrm_dzbl_main.N95Click(Sender: TObject);
begin
  application.CreateForm(Tfrm_luying, frm_luying);
  try
    frm_luying.ShowModal;
  finally
    frm_luying.free;
  end;
end;

procedure TFrm_dzbl_main.N97Click(Sender: TObject);
begin
  qry_tjzt.Close;
  qry_tjzt.open;
  qry_tjzt.Filtered := false;
  qry_tjzt.Filter := ' zyh ='+#39+pub_zyh+#39;
  qry_tjzt.Filtered := True;
  if qry_tjzt.FieldByName('blgdbz').AsInteger=1  then
  begin
     ShowMessage('该病历已提交，不需要重复提交');
  end
  else
  begin
    case Application.MessageBox('提交病历过后将不能修改此病人病历，是否继续？', '提示',
      MB_OKCANCEL + MB_ICONQUESTION) of
      IDOK:
      begin
        try
          qry_tjbl.Close;
          qry_tjbl.SQL.Text := 'update zysf_zydj set blgdbz=1,tjbz=isnull(tjbz,'+#39+#39+')+'+#39+'提交'+#39+
          ' where zyh='+#39+trim(pub_zyh)+#39 +'update zysf_cydj set blgdbz=1,tjbz=isnull(tjbz,'+#39+#39+')+'+#39+'提交'+#39+
          ' where zyh='+#39+trim(pub_zyh)+#39 +'update zyzc_zysf_cydj set blgdbz=1,tjbz=isnull(tjbz,'+#39+#39+')+'+#39+'提交'+#39+
          ' where zyh='+#39+trim(pub_zyh)+#39;
          qry_tjbl.ExecSQL;
          ShowMessage('提交成功！');
        except on e:Exception do
          ShowMessage('提交失败！'+e.Message);
        end;
      end;
    end;
  end;
end;

procedure TFrm_dzbl_main.N140Click(Sender: TObject);
begin
  DeleteLonginLogData(pub_key_old);//删除病人登陆日志数据
  EMRPad301.EditUnDo;
  treeviewzp.Enabled := true;
  //ts1.PopupMenu := Popupnull;
  ts1.PopupMenu := PopupMenuedit_1;
  EMRPad301.SetDocumentMode(3);
  if copy(pub_key, 1, 2) = '02' then
    locatebcpd; //定位病程片段
  editbl.Visible := false;
  editbl.Enabled := false;
  viewbl.Visible := false;
  tablebl.Visible := false;
  fzbl.Visible := false;

  editmode := ''      //20170825
end;

procedure TFrm_dzbl_main.ToolButton14Click(Sender: TObject);
begin
  //删除电子病例登陆人员状态
  if pub_yydm ='0271' then  //不做限制
  begin
    DeleteReadOnlyLogData(pub_key_old);
  end else
  begin
    DeleteLonginLogData(pub_key_old);//删除病人登陆日志数据
  end;
//  DeleteLonginLogData(pub_key_old);//删除病人登陆日志数据
  close;
end;

procedure TFrm_dzbl_main.cancelClick(Sender: TObject);
begin
  N140.Click;
//  DeleteLonginLogData(pub_key_old);//删除病人登陆日志数据
end;

procedure TFrm_dzbl_main.CancelYSSign;
var
  strSql, strFDtoChange: string;
begin
  // 增加对当前选中病历种类的判断，从而决定写哪张表
  if copy(pub_key, 1, 2) = '02' then
  begin
    strSql := 'update zydzbl_zybcjlmx ';
    if (pub_czyxm = bl_zzys) and bl_blysbz then
      strFDtoChange := ' set blysqmbz=0 ';
    if (pub_czyxm = bl_zgys) and bl_zzysbz then
      strFDtoChange := ' set zzysqmbz=0 ';
    strSql := strSql + strFDtoChange
      + ' where fldm=' + QuotedStr(pub_key)
      + ' and zyh=' + QuotedStr(pub_zyh)
      + ' and blmc=' + QuotedStr(pub_name);
  end
  else
  begin
    strSql := 'update zydzbl_zydzblmx ';
    if (pub_czyxm = bl_zzys) and bl_blysbz then
      strFDtoChange := ' set blysqmbz=0 ';
    if (pub_czyxm = bl_zgys) and bl_zzysbz then
      strFDtoChange := ' set zzysqmbz=0 ';
    strSql := strSql + strFDtoChange
      + ' where fldm=' + QuotedStr(pub_key)
      + ' and zyh=' + QuotedStr(pub_zyh)
      + ' and blmc=' + QuotedStr(pub_name);
  end;
  if ExecSqlbyQuery(strSql) then
  begin
    menuItemCancelYSSign.Visible := false;
    Application.MessageBox('取消下级医生签名成功！', '提示', MB_OK +
      MB_ICONINFORMATION);
  end
  else
    Application.MessageBox('取消下级医生签名失败！', '错误', MB_OK +
      MB_ICONSTOP);
end;

procedure TFrm_dzbl_main.cxGrid2DBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
var
  stream: TADOBlobStream;
  stream1: TFileStream;
  filename: string;
  dqxdpd: string;
  kszg: string;
  begin
  pub_name := pub_name1 ;                       //20171106
  pub_key :=pub_key1;
  locatename :=locatename1;

  if qry_mbmx.RecordCount <> 0 then
  begin
    if (pub_yydm <> '0271' ) and (qy_hzsqym='1')then
    begin
      if Pos('会诊', locatename) > 0 then
      begin
        Application.CreateForm(Tfrm_hzsq, frm_hzsq);
        try
          frm_hzsq.ShowModal;
        finally
          frm_hzsq.Free;
        end;
        if hzsqdh='' then
        begin
          hzsqdh := '';
          ksdm := '';
          czydm := '';
          Exit;
        end ;
      end;
    end;
    kszg := '';
    cxGrid2DBTableView1.Tag :=1;
    if (pub_yydm = '0147') or (pub_yydm = '0257') then
    begin
      DM_data.qry_pub.close;
      DM_data.qry_pub.sql.Text :=
        'select * from sys_ksdm where rtrim(kszg)<>''''';
      DM_data.qry_pub.Open;
      while not DM_data.qry_pub.eof do
      begin
        kszg := kszg + ',' + Trim(DM_data.qry_pub.FieldByName('kszg').AsString);
        DM_data.qry_pub.Next;
      end;
      if Pos(pub_czydm, kszg) > 0 then
      begin

      end else
      begin
        yzblys;
        DM_data.qry_pub.close;
        DM_data.qry_pub.sql.Text := 'select * from sys_dzbl_LoginLog where  left(bllx,2)=left('''+pub_key+''',2) and  zyh='+ ''''
        + pub_zyh + ''''+ ' and tmh='+ '''' + pub_tmh +'''';
        DM_data.qry_pub.Open;
        FloginIP:='';
        if DM_data.qry_pub.RecordCount > 0 then
        begin
          FloginIP :=  Trim(DM_data.qry_pub.FieldByName('ClientIP').AsString); //服务器登陆ip
          //  blwqxkz; //禁止无权书写
          application.MessageBox(pchar('病历主管医生' + bl_zzys +',登陆IP地址：'+ FloginIP +
          ' 与当前主管医生'+ pub_zzys+ '在编辑，您无权新增病历！'), '提示', 0 + 48);
          exit;
        end ;
      end;

    end
    else
    begin
      yzblys; //验证病人是不是其它科室转入,病历医生是否已做调整,并取出手术医生,及监护医生
      DM_data.qry_pub.close;
      DM_data.qry_pub.sql.Text := 'select * from sys_dzbl_LoginLog where  left(bllx,2)=left('''+pub_key+''',2) and  zyh='+ ''''
      + pub_zyh + ''''+ ' and tmh='+ '''' + pub_tmh +'''';
      DM_data.qry_pub.Open;
      FloginIP:='';
      if DM_data.qry_pub.RecordCount > 0 then
      begin
        FloginIP :=  Trim(DM_data.qry_pub.FieldByName('ClientIP').AsString); //服务器登陆ip
       //  blwqxkz; //禁止无权书写
        application.MessageBox(pchar('病历主管医生' + bl_zzys +',登陆IP地址：'+ FloginIP +
        ' 与当前主管医生'+ pub_zzys+ '在编辑，您无权新增病历！'), '提示', 0 + 48);
        exit;
      end ;
    end;
    if (copy(pub_key, 1, 2) = '02') or (copy(pub_key, 1, 2) = '11') then
    begin
      getpub_blys; //病程记录取病历医生,及主管医生
      if not pub_zgysbz then
      begin
//        if  (pub_yydm='0271')  then
//        begin
//          setmode('add');
//        end else
//        begin
          qry_brbl.Close;
          qry_brbl.SQL.Text := 'select * from zydzbl_zydzblmx where fldm=' + ''''
            + pub_key + '''' +
            ' and zyh=' + '''' + pub_zyh + '''';
          qry_brbl.Open;
          pub_blid := qry_brbl.FieldByName('blid').AsString;
          if (qry_brbl.IsEmpty) then
            setmode('add')
          else
          begin
            setmode('edit');
            openbcjl; //如果已存在病程记录,先打开病程记录在后面插入新模板
          end;
//        end;
        addbcjl := 'add'; //病程记录设为增加状态
        qry_brbl.Close;
      end
      else
      begin
        application.MessageBox('科室主管已签名确认完成病程，不能在通过模板方式增加病历,只能通过上级医生修改病历!', '提示', 0 + 48);
        abort;
      end;
    end
    else
      setmode('add'); //病历记录设为增加状态
    if (pub_czyxm = bl_blys) or (pos(copy(pub_key, 1, 2), bl_bllb) > 0) or
      ((pub_yydm = '0147') and (Pos(pub_czydm, kszg) > 0)) or
      (pub_czyxm = bl_zzys) or ((pub_yydm = '0198') and (copy(pub_key, 1, 2) =
      '03')) then
    begin
      filename := GetCurrentDir + '\' + 'otemp'; //+get_sjh( pub_czydm );
      EMRPad301.CleanUndoBuffer; //清空编辑缓冲区
      EMRPad301.CleanClipboard; //清空剪贴版
      try
        stream := TADOBlobStream.Create(qry_mbmx.FieldByName('mbwj') as
          TBlobField, bmRead);
        stream.Position := 0;
        stream1 := TFileStream.Create(filename, fmCreate);
        stream1.Position := 0;
        stream1.CopyFrom(stream, stream.Size);
      finally
        stream1.Free;
        stream.Free;
      end;
      if ((copy(pub_key, 1, 2) = '02') or (copy(pub_key, 1, 2) = '11'))   then
      begin
        EMRPad301.SetDocumentMode(1); //进入编辑状态
        EMRPad301.SetSel(-1, -1, 0, 0, 0, -1, -1, 0, 0, 0); //到文件尾
        blbcpdid := EMRPad301.GetBaseLineCount;
        //缓回当前文档的行数记录病程片段ID
        if editmode = 'add' then
          EMRPad301.FileOpen(filename, 0)
        else
          EMRPad301.FileInsert(filename, 0);
      end
      else
        EMRPad301.FileOpen(filename, 0);
      pgc1.ActivePage := ts1;
      saveblClick(self);

      FormShow(self);

      frm_func.func_in_zyblmx_blsjzkmx(pub_tmh, pub_zyh,
        qry_mbmx.FieldByName('mbsx').AsString);
      cxGrid2DBTableView1.Tag :=1;
      treeviewzpDblClick(self); //新加模板直接进行编辑状态
    end
    else if  (pub_yydm = '0116') or (pub_yydm = '0257')  or
    (pub_yydm = '0263') or (pub_yydm = '0264') or (pub_yydm = '0269')then                     //or (pub_yydm = '0266')
    begin
      filename := GetCurrentDir + '\' + 'otemp'; //+get_sjh( pub_czydm );
      EMRPad301.CleanUndoBuffer; //清空编辑缓冲区
      EMRPad301.CleanClipboard; //清空剪贴版
      try
        stream := TADOBlobStream.Create(qry_mbmx.FieldByName('mbwj') as
          TBlobField, bmRead);
        stream.Position := 0;
        stream1 := TFileStream.Create(filename, fmCreate);
        stream1.Position := 0;
        stream1.CopyFrom(stream, stream.Size);
      finally
        stream1.Free;
        stream.Free;
      end;
      if (copy(pub_key, 1, 2) = '02') or (copy(pub_key, 1, 2) = '11') then
      begin
        EMRPad301.SetDocumentMode(1); //进入编辑状态
        EMRPad301.SetSel(-1, -1, 0, 0, 0, -1, -1, 0, 0, 0); //到文件尾
        blbcpdid := EMRPad301.GetBaseLineCount;
        //缓回当前文档的行数记录病程片段ID
        if editmode = 'add' then
          EMRPad301.FileOpen(filename, 0)
        else
          EMRPad301.FileInsert(filename, 0);
      end
      else
        EMRPad301.FileOpen(filename, 0);
      pgc1.ActivePage := ts1;
      saveblClick(self);
      frm_func.func_in_zyblmx_blsjzkmx(pub_tmh, pub_zyh,
        qry_mbmx.FieldByName('mbsx').AsString);
      cxGrid2DBTableView1.Tag :=1;
      treeviewzpDblClick(self); //新加模板直接进行编辑状态
    end
    else
    begin
      if zyys_addqx then
      begin
        filename := GetCurrentDir + '\' + 'otemp'; //+get_sjh( pub_czydm );
        EMRPad301.CleanUndoBuffer; //清空编辑缓冲区
        EMRPad301.CleanClipboard; //清空剪贴版
        try
          stream := TADOBlobStream.Create(qry_mbmx.FieldByName('mbwj') as
            TBlobField, bmRead);
          stream.Position := 0;
          stream1 := TFileStream.Create(filename, fmCreate);
          stream1.Position := 0;
          stream1.CopyFrom(stream, stream.Size);
        finally
          stream1.Free;
          stream.Free;
        end;
        if (copy(pub_key, 1, 2) = '02') or (copy(pub_key, 1, 2) = '11') then
        begin
          EMRPad301.SetDocumentMode(1); //进入编辑状态
          EMRPad301.SetSel(-1, -1, 0, 0, 0, -1, -1, 0, 0, 0); //到文件尾
          blbcpdid := EMRPad301.GetBaseLineCount;
          //缓回当前文档的行数记录病程片段ID
          if editmode = 'add' then
            EMRPad301.FileOpen(filename, 0)
          else
            EMRPad301.FileInsert(filename, 0);
        end
        else
          EMRPad301.FileOpen(filename, 0);
        pgc1.ActivePage := ts1;
        saveblClick(self);
        FormShow(self);
        frm_func.func_in_zyblmx_blsjzkmx(pub_tmh, pub_zyh,
          qry_mbmx.FieldByName('mbsx').AsString);
        cxGrid2DBTableView1.Tag :=1;
        treeviewzpDblClick(self); //新加模板直接进行编辑状态
      end
      else
      begin
        if (bl_bllb = '02') then
          application.MessageBox(pchar('你是：[' + trim(pub_brxm) +
            ']本科执班医生,您只能在病程类别中加入病程!'), '提示', 0 + 48)
        else if bl_bllb = ',03,07' then
          application.MessageBox(pchar('你是：[' + trim(pub_brxm) +
            ']的麻醉医生,您只能在手术,知情同意书中类别中加入病历!'), '提示', 0 +
            48)
        else if bl_bllb = '04' then
          application.MessageBox(pchar('你是：[' + trim(pub_brxm) +
            ']的会诊医生,您只能在会诊病历类别中加入病历!'), '提示', 0 + 48)
        else if bl_bllb = ',05,06' then
          application.MessageBox(pchar('你是：[' + trim(pub_brxm) +
            ']的ICU医生,您只能在护理病历类别中加入病历!'), '提示', 0 + 48)
        else
          application.MessageBox(pchar('你不是：[' + trim(pub_brxm) +
            ']的病历医生!'), '提示', 0 + 48);
      end;
    end;
  end
  else
    application.MessageBox('没有模板不能生成病历!', '提示', 0 + 48);
end;

{-------------------------------------------------------------------------------
  过程名:    TFrm_dzbl_main.cxSplitter2Moved
  作者:      yangshuai
  日期:      2017.05.22
  参数:      Sender: TObject
  返回值:    无
-------------------------------------------------------------------------------}
procedure TFrm_dzbl_main.cxSplitter2Moved(Sender: TObject);
begin
  inherited;
  if cxSplitter2.State = ssOpened then
  begin
    tree.Width :=319;
    cxGrid4.Visible := True;
    if Assigned(frm_dck_dzbl) then
    begin
      FreeAndNil(frm_dck_dzbl);
    end;
  end
end;

procedure TFrm_dzbl_main.undoButtonClick(Sender: TObject);
begin
  N25.Click;
end;

procedure TFrm_dzbl_main.rbggClick(Sender: TObject);
begin
  qry_mbmx.Filtered := false;
  qry_mbmx.Filter := 'zyksgs=' + #39 + #39;
  qry_mbmx.Filtered := true;
end;

procedure TFrm_dzbl_main.rbgrClick(Sender: TObject);
begin
  qry_mbmx.Filtered := false;
  qry_mbmx.Filter := 'mbczy=' + #39 + pub_czyxm + #39;
  qry_mbmx.Filtered := true;
end;

procedure TFrm_dzbl_main.rbksClick(Sender: TObject);
begin
  qry_mbmx.Filtered := false;
  qry_mbmx.Filter := 'zyksgs=' + #39 + pub_ksdm + #39;
  qry_mbmx.Filtered := true;
end;

procedure TFrm_dzbl_main.rbqbClick(Sender: TObject);
begin
  qry_mbmx.Filter := '';
  qry_mbmx.Filtered := false;
end;

procedure TFrm_dzbl_main.redoButtonClick(Sender: TObject);
begin
  N26.Click;
end;

procedure TFrm_dzbl_main.b_addClick(Sender: TObject);
begin
 // ShowMessage(IntToStr(EMRPad301.GetDocumentMode));
  if (EMRPad301.GetDocumentMode = 1) and (pgc1.ActivePage <> ts3)
    and (pgc1.ActivePage <> ts4) and (pgc1.ActivePage <> lclj)and (pgc1.ActivePage <> TabSheetyzlr) then
  begin
    pgc1.ActivePage := ts1;
 //   if pgc1.ActivePage <> ts1 then
      application.MessageBox('还有正在编辑的病历未存盘请先保存!', '提示', 0 +
        48);
    Exit;
  end
  else if pgc1.ActivePage = ts3 then
    pgc1.ActivePage := ts3
  else if pgc1.ActivePage = ts4 then
    pgc1.ActivePage := ts4
  else if pgc1.ActivePage = ts5 then
    pgc1.ActivePage := ts5
  else if pgc1.ActivePage = lclj then
    pgc1.ActivePage := lclj
  else if pgc1.ActivePage = TabSheetyzlr then
    pgc1.ActivePage := TabSheetyzlr
//  else  if pgc1.ActivePage = ts1 then
//    pgc1.ActivePage := ts1
  else
    pgc1.ActivePage := ts2;
 //  记录电子病例操作员权限
   if (EMRPad301.GetDocumentMode <> 1) then  //不是编辑权限
   begin
    DM_data.qry_pub.close;
    DM_data.qry_pub.sql.Text := 'select * from sys_dzbl_LoginLog where  left(bllx,2)=left('''+pub_key+''',2) and  zyh='+ ''''
          + pub_zyh + ''''+ ' and tmh='+ '''' + pub_tmh +'''';
    DM_data.qry_pub.Open;
    FloginIP:='';
    if DM_data.qry_pub.RecordCount > 0 then
    begin
      FloginIP :=  Trim(DM_data.qry_pub.FieldByName('ClientIP').AsString); //服务器登陆ip
      blwqxkz; //禁止无权书写
      exit;
    end ;
   end;
end;

procedure TFrm_dzbl_main.b_gjcClick(Sender: TObject);
begin
  N146.Click;
end;

procedure TFrm_dzbl_main.b_ICD10Click(Sender: TObject);
begin
  ICD101.Click;
end;

procedure TFrm_dzbl_main.b_mbmxClick(Sender: TObject);
begin
  pgc1.ActivePage := ts3;
end;

procedure TFrm_dzbl_main.b_sszsClick(Sender: TObject);
begin
  N2.Click;
end;

procedure TFrm_dzbl_main.saveButtonClick(Sender: TObject);
begin
  //  if not EMRPad301.UniversalBoolFunction('', '', 3, 0) then
//  if (treeviewzp.Enabled = true) and (pub_yydm<>'0266') then
//  begin
//    //    addbcjl := 'edit';
//    //    editbl.Visible := false;
//    //    editbl.Enabled := false;
//    //    viewbl.Visible := false;
//    //    tablebl.Visible := false;
//    //    fzbl.Visible := false;
//    //      //ts1.PopupMenu := Popupnull;
//    //    ts1.PopupMenu := PopupMenuedit_1;
//    //    EMRPad301.SetDocumentMode(3);
//     Application.MessageBox('无修改编辑权限,本地文件保存失败！', '错误提示',
//        MB_OK + MB_ICONSTOP);
//    Exit;
//  end;

  if (EMRPad301.GetDocumentMode <>  1) then  //如果是编辑文档状态权，则插入数据
  begin
    exit;
  end;
  if Application.MessageBox('是否确认保存该份病历的修改内容？', '询问',
    MB_OKCANCEL + MB_ICONQUESTION + MB_DEFBUTTON2) = IDOK then
  begin
    saveblClick(self);
  end else
  begin
      //删除电子病例登陆人员状态
    DeleteLonginLogData(pub_key_old);//删除病人登陆日志数据
  end;

end;

procedure TFrm_dzbl_main.menuItemCancelYSSignClick(Sender: TObject);
begin
  CancelYSSign;
end;

procedure TFrm_dzbl_main.menuItemYSSignClick(Sender: TObject);
var
  bcid: string;
begin
  getpub_blys; //取得设置的病历医生,及病历医生签名标志
  if
    Application.MessageBox('电子签名是对病人病历完成后对病历签名认可，签名后修改权限转给上级医生，是否继续?',
    '询问', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDNO then
    exit;
  if ((copy(pub_key, 1, 2) = '02') or (copy(pub_key, 1, 2) = '11')) and
    (bl_blys <> pub_blys) and (bl_blys = pub_czyxm) then
  begin
    if (not treeviewzp.Selected.HasChildren) then
    begin
      pub_name := trim(treeviewzp.selected.text);
      bcid := copy(pub_name, pos('.', pub_name) + 1, length(pub_name) -
        pos('.', pub_name) + 1);
      qry_up_bcjl.close;
      qry_up_bcjl.Parameters.ParamByName('zy_zyh').Value := pub_zyh;
      qry_up_bcjl.Parameters.ParamByName('zy_bcid').Value := strtoint(bcid);
      qry_up_bcjl.Open;
      qry_up_bcjl.Edit;
      if bl_qxjb = 1 then
      begin
        qry_up_bcjl.FieldByName('blysqmbz').AsBoolean := true;
        qry_up_bcjl.FieldByName('blrq').AsDateTime := frm_func.curr_date;
      end
      else if bl_qxjb = 2 then
      begin
        qry_up_bcjl.FieldByName('zzysqmbz').AsBoolean := true;
        qry_up_bcjl.FieldByName('zzrq').AsDateTime := frm_func.curr_date;
      end
      else if bl_qxjb = 3 then
      begin
        qry_up_bcjl.FieldByName('zgysqmbz').AsBoolean := true;
        qry_up_bcjl.FieldByName('zgrq').AsDateTime := frm_func.curr_date;
      end;
      qry_up_bcjl.post;
    end;
  end
  else
  begin
    qry_up_dlbl.Close;
    qry_up_dlbl.Parameters.ParamByName('zy_blid').Value := pub_blid;
    qry_up_dlbl.Parameters.ParamByName('zy_zyh').Value := pub_zyh;
    qry_up_dlbl.Open;
    qry_up_dlbl.edit;
    if bl_qxjb = 1 then
    begin
      qry_up_dlbl['blysqmbz'] := true;
      qry_up_dlbl['blrq'] := frm_func.curr_date;
    end
    else if bl_qxjb = 2 then
    begin
      qry_up_dlbl['zzysqmbz'] := true;
      qry_up_dlbl['zzrq'] := frm_func.curr_date;
    end
    else if bl_qxjb = 3 then
    begin
      qry_up_dlbl['zgysqmbz'] := true;
      qry_up_dlbl['zgrq'] := frm_func.curr_date;
    end;
    qry_up_dlbl.post;
  end;
  saveblClick(self);
end;

procedure TFrm_dzbl_main.N144Click(Sender: TObject);
begin
  N2.Click;
end;

procedure TFrm_dzbl_main.N146Click(Sender: TObject);
begin
  pgc1.ActivePage := ts3;
end;

procedure TFrm_dzbl_main.N148Click(Sender: TObject);
begin
  ICD101.Click;
end;

procedure TFrm_dzbl_main.N2Click(Sender: TObject);
begin
  Application.CreateForm(Tfrm_zdxz, frm_zdxz);
  try
    frm_zdxz.Pub_CallControl := EMRPad301;
    frm_zdxz.ShowModal;
  finally
    frm_zdxz.Free;
  end;
end;

procedure TFrm_dzbl_main.N18Click(Sender: TObject);
begin
  qry_tjzt.Close;
  qry_tjzt.open;
  qry_tjzt.Filtered := false;
  qry_tjzt.Filter := ' zyh ='+#39+pub_zyh+#39;
  qry_tjzt.Filtered := True;
  if qry_tjzt.FieldByName('blgdbz').AsInteger=0  then
  begin
     ShowMessage('病历还未提交，请提交后再进行预览打印！');
  end
  else
  begin
  if (EMRPad301.GetDocumentMode =  1) then  //如果是编辑文档状态权，则插入数据  //20170904
  begin                                                //20170904
     Pub_bL_dy:='DY' ;                                 //20170904
     saveblClick(self);                          //20170904
     Pub_bL_dy:='' ;                           //20170904
  end
  else                               //20170904
  EMRPad301.SetDocumentMode(3);
  EMRPad301.universalboolfunction('', '', 58, 0)
  end;
end;

procedure TFrm_dzbl_main.N150Click(Sender: TObject);
begin
  EMRPad301.EditReplace;
end;

procedure TFrm_dzbl_main.N152Click(Sender: TObject);
begin
  if EMRPad301.universalboolfunction('', '', 45, 0) then
    EMRPad301.universalboolfunction('', '', 46, 0)
  else
    EMRPad301.universalboolfunction('', '', 46, 1);

end;

procedure TFrm_dzbl_main.N154Click(Sender: TObject);
begin
  EMRPad301.ShowRevisionHistory;
end;

procedure TFrm_dzbl_main.N46Click(Sender: TObject);
begin
  if (EMRPad301.GetDocumentMode =  1) then  //如果是编辑文档状态权，则插入数据  //20170904
  begin                                                //20170904
     Pub_bL_dy:='DY' ;                                 //20170904
     saveblClick(self);                          //20170904
     Pub_bL_dy:='' ;                           //20170904
  end
  else                               //20170904
  EMRPad301.SetDocumentMode(3);
end;

procedure TFrm_dzbl_main.N47Click(Sender: TObject);
begin
  EMRPad301.ViewLineIndex;
end;

procedure TFrm_dzbl_main.N48Click(Sender: TObject);
begin
  if (EMRPad301.GetDocumentMode =  1) then  //如果是编辑文档状态权，则插入数据  //20170904
  begin                                                //20170904
     Pub_bL_dy:='DY' ;                                 //20170904
     saveblClick(self);                          //20170904
     Pub_bL_dy:='' ;                           //20170904
  end
  else                               //20170904
  EMRPad301.SetDocumentMode(3);
  EMRPad301.Print(1);
end;

procedure TFrm_dzbl_main.N49Click(Sender: TObject);
begin
  EMRPad301.EditAutoRange;
end;

procedure TFrm_dzbl_main.N50Click(Sender: TObject);
begin
  EMRPad301.editclearunusefield();
end;

procedure TFrm_dzbl_main.N52Click(Sender: TObject);
begin
  DM_data.qry_pub.Close;
  DM_data.qry_pub.SQL.text := 'select * from zysf_zydj_xse where zyh=' + '''' +
    pub_zyh + '''';
  DM_data.qry_pub.Open;
  if DM_data.qry_pub.IsEmpty then
  begin
    ShowMessage('该病床新生儿还未登记，请先进行登记！');
    application.CreateForm(TFrm_xsedj, Frm_xsedj);
    try
      p_xsedj.v_zyh := pub_zyh;
      p_xsedj.v_tmh := pub_tmh;
      Frm_xsedj.ShowModal;
    finally
      Frm_xsedj.free;
    end;
  end
  else
  begin
    application.CreateForm(TFrm_xsedj, Frm_xsedj);
    try
      p_xsedj.v_zyh := pub_zyh;
      p_xsedj.v_tmh := pub_tmh;
      Frm_xsedj.ShowModal;
    finally
      Frm_xsedj.free;
    end;
  end;
end;

 procedure TFrm_dzbl_main.insertLonginLogData(BLLX :string);
begin
  //插入电子病例登陆人员状态
  if (EMRPad301.GetDocumentMode = 1) then  //如果是编辑文档状态权，则插入数据
  begin
    DM_data.qry_pub.Close;
    DM_data.qry_pub.SQL.Text := 'insert into sys_dzbl_LoginLog(ClientIp,ksdm,czydm,Opersate,LoginTime,zyh,tmh,bllx) values(' +
    #39 + GetLocalIP + #39 + ',' + #39 + pub_ksdm + #39 + ',' + #39 + pub_czydm + #39 +
    ',' + #39 + '1' + #39 + ',' + #39 + formatdatetime('yyyy-mm-dd hh:mm:ss', frm_func.curr_date)+ #39 +','+
    #39 + pub_zyh + #39 + ','+ #39 + pub_tmh + #39+ ','+ #39 +  BLLX + #39 +')';
    DM_data.qry_pub.ExecSQL;

    pub_key_old:=   BLLX;
  end;
end;

{-------------------------------------------------------------------------------
  过程名:    TFrm_dzbl_main.DeleteLonginLogData
  作者:      yangshuai
  日期:      2017.02.23
  参数:      无
  返回值:    无
-------------------------------------------------------------------------------}
procedure TFrm_dzbl_main.DeleteLonginLogData(BLLX :string);
begin
  //删除电子病例登陆人员状态                // or ((pub_yydm='0266')and (copy(pub_key, 1, 2) = '05'))
  if (EMRPad301.GetDocumentMode = 1)then  //如果是编辑文档状态权，则插入数据
  begin
    DM_data.qry_pub.close;
    DM_data.qry_pub.SQL.Text :=
    'delete from sys_dzbl_LoginLog where  left(bllx,2)=left('''+BLLX+''',2) and  zyh=' + '''' +pub_zyh + ''''+
    ' and tmh='+ '''' + pub_tmh +'''';
    DM_data.qry_pub.ExecSQL;
  end;
end;

{-------------------------------------------------------------------------------
  过程名:    TFrm_dzbl_main.DeleteReadOnlyLogData
  作者:      yangshuai
  日期:      2017.09.27
  参数:      BLLX :string
  返回值:    无
-------------------------------------------------------------------------------}
procedure TFrm_dzbl_main.DeleteReadOnlyLogData(BLLX :string);
begin
  //删除电子病例登陆人员状态                // or ((pub_yydm='0266')and (copy(pub_key, 1, 2) = '05'))
  DM_data.qry_pub.close;
  DM_data.qry_pub.SQL.Text :=
  'delete from sys_dzbl_LoginLog where  left(bllx,2)=left('''+BLLX+''',2) and  zyh=' + '''' +pub_zyh + ''''+
  ' and tmh='+ '''' + pub_tmh +'''';
  DM_data.qry_pub.ExecSQL;
end;


{-------------------------------------------------------------------------------
  过程名:    TFrm_dzbl_main.f_dele_cgClick
  作者:      yangshuai
  日期:      2017.09.27
  参数:      Sender: TObject
  返回值:    无
-------------------------------------------------------------------------------}
procedure TFrm_dzbl_main.f_dele_cgClick(Sender: TObject);
begin
  if pub_yydm='0271' then //掇刀医院
  begin
    DeleteReadOnlyLogData(pub_key_old);
  end else
  begin
    DeleteLonginLogData(pub_key_old);//删除病人登陆日志数据
  end;

  if (copy(pub_key, 1, 2) = '02') then
  begin
    deletebcpd; //删除最后病程片段
    openbcjl; //重新打开病程记录
    FormShow(self);
    treeviewzp.Enabled := true;
    treeviewzp.Selected;
    //ts1.PopupMenu := Popupnull;
    ts1.PopupMenu := PopupMenuedit_1;
     DeleteLonginLogData(pub_key_old);//删除病人登陆日志数据  20170904
    EMRPad301.SetDocumentMode(3);
    editbl.Visible := false;
    editbl.Enabled := false;
    viewbl.Visible := false;
    tablebl.Visible := false;
    fzbl.Visible := false;
    editmode := ''      //20170825
  end
  else
  begin
    if application.MessageBox('删除的病历草稿不能恢复,是否继续!', '提示', 4 + 256
      + 32) = 6 then
    begin
      treeviewzp.Enabled := true;
      treeviewzp.SetFocus;
      pub_name := trim(treeviewzp.selected.text);
      qry_pub.Close;
      qry_pub.SQL.Text := 'select * from zydzbl_zydzblmx where ltrim(blmc)=' + '''' +
        pub_name + '''' +
        ' and zyh=' + '''' + pub_zyh + '''';
      qry_pub.Open;
      if not qry_pub.IsEmpty then
      begin
        bl_blys := trim(qry_pub.fieldbyname('blys').asstring);
        bl_blysbz := qry_pub.fieldbyname('blysqmbz').AsBoolean;
        pub_blid := qry_pub.fieldbyname('blid').asstring;
      end
      else
      begin
        application.MessageBox('没有选择要删除的病历!', '提示', 0 + 48);
        abort;
      end;
      if pub_czyxm <> bl_blys then
      begin
        application.MessageBox('该病历不是由你起草，你没权限删除！', '提示', 0 +
          48);
        abort;
      end;
      if (not bl_blysbz) then
      begin
        qry_pub.Close;
        qry_pub.SQL.Clear;
        qry_pub.SQL.Text := 'delete zydzbl_zydzblmx where blid= ' + pub_blid +
          ' and zyh=' + #39 + pub_zyh + #39;
        qry_pub.ExecSQL;
        EMRPad301.CleanUndoBuffer; //清空编辑缓冲区
        EMRPad301.CleanClipboard; //清空剪贴版
        EMRPad301.FileNew; //新开文件
        application.MessageBox(pchar(pub_name + '-已删除'), '删除提示', 0 + 48);
        FormShow(self);
        editmode := ''      //20170825
      end
      else
        application.MessageBox('该病历已签名认可，不能删除', '提示', 0 + 48);
      DeleteLonginLogData(pub_key_old);//删除病人登陆日志数据  20170904
      EMRPad301.SetDocumentMode(3);
    end;
  end;
end;

procedure TFrm_dzbl_main.N53Click(Sender: TObject);
begin
  f_dele_cg.Click;
end;

procedure TFrm_dzbl_main.N55Click(Sender: TObject);
begin
  Panel4.Left := Frm_dzbl_main.Width - Panel4.Width - 10;
  Panel4.Visible := True;
  adodataset1.Close;
  adodataset1.Parameters.ParamByName('zyh').value := pub_zyh;
  adodataset1.Open;
  EMRPad301.ViewLineIndex;

end;

procedure TFrm_dzbl_main.N56Click(Sender: TObject);
var
  tsxx, mbdm, zklb, lbdm: string;
  xh: Real;
const
  hc = Chr(13) + chr(10);
begin
  v_zksm := '';
  DM_data.qry_pub.close;
  DM_data.qry_pub.SQL.text := 'select * from zydzbl_zydzblmx where zyh=' + ''''
    + pub_zyh +
    '''' + ' and blid=' + '''' + pub_blid + '''';
  DM_data.qry_pub.Open;
  mbdm := DM_data.qry_pub.FieldByName('mbdm').AsString;
  DM_data.qry_pub.close;
  DM_data.qry_pub.SQL.text := 'select * from sys_dzbl_mbmx where mbdm=' + '''' +
    mbdm + '''';
  DM_data.qry_pub.Open;
  zklb := DM_data.qry_pub.FieldByName('psdm').AsString;
  if zklb = '' then
  begin
    zklb := '00';
    xh := 0;
    jkjc(0, '00', pub_brxb);
  end
  else
  begin
    jkjc(0, '00', pub_brxb);
    DM_data.qry_pub.close;
    DM_data.qry_pub.SQL.text := 'select * from zydzbl_psbz_xx where lb=' + ''''
      + zklb + ''' order by xh';
    DM_data.qry_pub.Open;
    DM_data.qry_pub.First;
    while not DM_data.qry_pub.eof do
    begin
      jkjc(DM_data.qry_pub.FieldByName('xh').AsFloat, zklb, pub_brxb);
      DM_data.qry_pub.Next;
    end;
  end;
  tsxx := Trim(v_zksm);
  if tsxx = '' then
  begin
    application.messagebox('无逻辑错误！', '提示', mb_ok);
  end
  else
  begin
    application.messagebox(PChar(tsxx), '提示', mb_ok);
  end;
end;

procedure TFrm_dzbl_main.jkjc(xh: real; lb, brxb: string);
const
  hc = Chr(13) + chr(10);
begin
  qry_zkcx.Close;
  qry_zkcx.SQL.text := 'select * from sys_blljkzzb where lb=' + '''' + lb + ''''
    + ' and xh='
    + floattostr(xh);
  qry_zkcx.open;
  if not qry_zkcx.isempty then
  begin
    qry_zkcx.First;
    while not qry_zkcx.eof do
    begin
      if (qry_zkcx.FieldByName('fldm').AsString = '01')
        and (qry_zkcx.FieldByName('ljgx').AsString = '存在A则不能存在B') then
      begin
        if (qry_zkcx.FieldByName('Ays').AsString = brxb) and
          (EMRPad301.FindField(trim(qry_zkcx.FieldByName('Bys').AsString) + '%',
          -1, 1, true)) then
        begin
          v_zksm := v_zksm + '性别 ' + qry_zkcx.FieldByName('Ays').AsString +
            ' 则不能存在病历元素 ' + trim(qry_zkcx.FieldByName('Bys').AsString);
          v_zksm := v_zksm + hc;
        end;
      end;

      if (qry_zkcx.FieldByName('fldm').AsString = '02')
        and (qry_zkcx.FieldByName('ljgx').AsString = '存在A则不能存在B') then
      begin
        if (EMRPad301.FindField(trim(qry_zkcx.FieldByName('Ays').AsString) +
          '%',
          -1, 1, true)) and
          (EMRPad301.FindField(trim(qry_zkcx.FieldByName('Bys').AsString) + '%',
          -1, 1, true)) then
        begin
          v_zksm := v_zksm + '如果存在病历元素 ' +
            qry_zkcx.FieldByName('Ays').AsString + ' 则不能存在病历元素 ' +
            trim(qry_zkcx.FieldByName('Bys').AsString);
          v_zksm := v_zksm + hc;
        end;
      end;

      if (qry_zkcx.FieldByName('fldm').AsString = '01')
        and (qry_zkcx.FieldByName('ljgx').AsString = '存在A必须也存在B') then
      begin
        if (qry_zkcx.FieldByName('Ays').AsString = brxb) and
          (not EMRPad301.FindField(trim(qry_zkcx.FieldByName('Bys').AsString) +
          '%', -1, 1, true)) then
        begin
          v_zksm := v_zksm + '性别' + qry_zkcx.FieldByName('Ays').AsString +
            ' 则必须存在病历元素 ' + trim(qry_zkcx.FieldByName('Bys').AsString);
          v_zksm := v_zksm + hc;
        end;
      end;

      if (qry_zkcx.FieldByName('fldm').AsString = '02')
        and (qry_zkcx.FieldByName('ljgx').AsString = '存在A必须也存在B') then
      begin
        if (EMRPad301.FindField(trim(qry_zkcx.FieldByName('Ays').AsString) +
          '%',
          -1, 1, true)) and
          (not EMRPad301.FindField(trim(qry_zkcx.FieldByName('Bys').AsString) +
          '%', -1, 1, true)) then
        begin
          v_zksm := v_zksm + '存在病历元素' +
            qry_zkcx.FieldByName('Ays').AsString + ' 则必须存在病历元素 ' +
            trim(qry_zkcx.FieldByName('Bys').AsString);
          v_zksm := v_zksm + hc;
        end;
      end;

      if (qry_zkcx.FieldByName('fldm').AsString = '01')
        and (qry_zkcx.FieldByName('ljgx').AsString = 'A必须存在') then
      begin
        if qry_zkcx.FieldByName('Ays').AsString <> brxb then
        begin
          v_zksm := v_zksm + '该病历性别必须为' +
            qry_zkcx.FieldByName('Ays').AsString;
          v_zksm := v_zksm + hc;
        end;
      end;

      if (qry_zkcx.FieldByName('fldm').AsString = '02')
        and (qry_zkcx.FieldByName('ljgx').AsString = 'A必须存在') then
      begin
        if not EMRPad301.FindField(trim(qry_zkcx.FieldByName('Ays').AsString) +
          '%', -1, 1, true) then
        begin
          v_zksm := v_zksm + '该病历必须存在病历元素 ' +
            qry_zkcx.FieldByName('Ays').AsString;
          v_zksm := v_zksm + hc;
        end;
      end;

      if (qry_zkcx.FieldByName('fldm').AsString = '01')
        and (qry_zkcx.FieldByName('ljgx').AsString = 'A不能存在') then
      begin
        if qry_zkcx.FieldByName('Ays').AsString = brxb then
        begin
          v_zksm := v_zksm + '该病历性别不能为' +
            qry_zkcx.FieldByName('Ays').AsString;
          v_zksm := v_zksm + hc;
        end;
      end;

      if (qry_zkcx.FieldByName('fldm').AsString = '02')
        and (qry_zkcx.FieldByName('ljgx').AsString = 'A不能存在') then
      begin
        if EMRPad301.FindField(trim(qry_zkcx.FieldByName('Ays').AsString) + '%',
          -1, 1, true) then
        begin
          v_zksm := v_zksm + '该病历不能存在病历元素 ' +
            qry_zkcx.FieldByName('Ays').AsString;
          v_zksm := v_zksm + hc;
        end;
      end;
      qry_zkcx.Next;
    end;

  end;

end;

procedure TFrm_dzbl_main.N57Click(Sender: TObject);
begin
  try
    application.createform(Tfrm_dck_dzbl, frm_dck_dzbl);
    frm_dck_dzbl.dzbl_zyh := pub_zyh;
    frm_dck_dzbl.showmodal;
  finally
    frm_dck_dzbl.free;
  end;
end;

procedure TFrm_dzbl_main.N58Click(Sender: TObject);
begin
  EMRPad301.EditCopy;
  try
    application.createform(Tfrm_dzbl_bcys, frm_dzbl_bcys);
    frm_dzbl_bcys.pb_zyh := pub_zyh;
    frm_dzbl_bcys.showmodal;
  finally
    frm_dzbl_bcys.free;
  end;
end;

procedure TFrm_dzbl_main.N37Click(Sender: TObject);
begin
//  EMRPad301.insertfield('aa', 'ggg', 1, 2, 0);
  EMRPad301.InsertPageBreaker;//插入分页符
end;

procedure TFrm_dzbl_main.N41Click(Sender: TObject);
begin
  try
    application.createform(Tfrm_ssapcx, frm_ssapcx);
    frm_ssapcx.showmodal;
  finally
    frm_ssapcx.free;
  end;
end;

procedure TFrm_dzbl_main.N42Click(Sender: TObject);
begin
  EMRPad301.ViewToolbar;
end;

procedure TFrm_dzbl_main.N43Click(Sender: TObject);
begin
  EMRPad301.ViewStatusbar;
end;

procedure TFrm_dzbl_main.N44Click(Sender: TObject);
begin
  EMRPad301.ViewLineIndex;
end;

procedure TFrm_dzbl_main.N24Click(Sender: TObject);
begin
  EMRPad301.ShowRevisionHistory;
end;

procedure TFrm_dzbl_main.N60Click(Sender: TObject);
var
  filename: string;
  bc_count: Integer;
  stream: TADOBlobStream;
  stream1: TFileStream;
begin
  EMRPad302.UniversalBoolFunction(pub_dzblzcm, '', 98, pub_dzblzch);
  xzdrys := '';
  DM_data.qry_pub.Close;
  DM_data.qry_pub.sql.text := 'select * from zydzbl_ysbc where zyh=' + '''' +
    pub_zyh + '''';
  DM_data.qry_pub.Open;
  if DM_data.qry_pub.IsEmpty then
  begin
    Application.MessageBox('该病人未保存元素！', '错误', MB_OK +
      MB_ICONSTOP);
    Exit;
  end;
  try
    application.createform(Tfrm_dzbl_dybcys, frm_dzbl_dybcys);
    frm_dzbl_dybcys.pb_zyh := pub_zyh;
    frm_dzbl_dybcys.showmodal;
  finally
    frm_dzbl_dybcys.free;
  end;
  if xzdrys <> '' then
  begin
    DM_data.qry_pub.Close;
    DM_data.qry_pub.sql.text := 'select * from zydzbl_ysbc where zyh=' + '''' +
      pub_zyh + '''' + ' and ' +
      ' blmc=' + '''' + xzdrys + '''';
    DM_data.qry_pub.Open;
    filename := GetCurrentDir + '\' + 'etemp'; //+get_sjh( pub_czydm );
    try
      stream := TADOBlobStream.Create(DM_data.qry_pub.FieldByName('blwj') as
        TBlobField, bmRead);
      stream.Position := 0;
      stream1 := TFileStream.Create(filename, fmCreate);
      stream1.Position := 0;
      stream1.CopyFrom(stream, stream.Size);
    finally
      stream1.Free;
      stream.Free;
    end;
    EMRPad302.FileOpen(filename, 0);
    bc_count := EMRPad302.GetBaseLineCount;
    EMRPad302.EditSelectAll;
    //    EMRPad302.SetSel(0, -1, 0, 0, 0, bc_count - 1, -1, bc_count - 1, 0, 0); //选中全部文档
    //    EMRPad302.EditLineEditMode; //将全部文档变成可编辑状态
    EMRPad302.EditCopy;
    EMRPad301.EditPaste;
  end;
end;

procedure TFrm_dzbl_main.N63Click(Sender: TObject);
begin
  EMRPad301.TableInsert;
end;

procedure TFrm_dzbl_main.N64Click(Sender: TObject);
begin
  EMRPad301.TableInsertColLeft;
end;

procedure TFrm_dzbl_main.N65Click(Sender: TObject);
begin
  EMRPad301.TableInsertColRight;
end;

procedure TFrm_dzbl_main.N68Click(Sender: TObject);
begin
  EMRPad301.TableInsertRowTop;
end;

procedure TFrm_dzbl_main.N69Click(Sender: TObject);
begin
  EMRPad301.TableInsertRowBottom;
end;

procedure TFrm_dzbl_main.N70Click(Sender: TObject);
begin
  EMRPad301.TableDelete;
end;

procedure TFrm_dzbl_main.N71Click(Sender: TObject);
begin
  EMRPad301.TableDeleteRow;
end;

procedure TFrm_dzbl_main.N72Click(Sender: TObject);
begin
  EMRPad301.TableDeleteCol;
end;

procedure TFrm_dzbl_main.N74Click(Sender: TObject);
begin
  EMRPad301.TableSelect;
end;

procedure TFrm_dzbl_main.N75Click(Sender: TObject);
begin
  EMRPad301.TableSelectRow;
end;

procedure TFrm_dzbl_main.N76Click(Sender: TObject);
begin
  EMRPad301.TableSelectCol;
end;

procedure TFrm_dzbl_main.N77Click(Sender: TObject);
begin
  EMRPad301.TableMergeCell;
end;

procedure TFrm_dzbl_main.N78Click(Sender: TObject);
begin
  EMRPad301.TableSplitCell;
end;

procedure TFrm_dzbl_main.N79Click(Sender: TObject);
var
  v_name: string;
  v_blid: string;
begin
  if treeviewzp.Selected.HasChildren then
    Exit;
  v_name := trim(treeviewzp.selected.text);
  if (v_name = '医嘱') or (v_name = '新生儿医嘱') then
  begin
    Exit;
  end;
  if copy(pub_key, 1, 2) = '02' then
  begin
    try
      qry_copy_bl.Close;
      qry_copy_bl.SQL.Text := 'select * from zydzbl_zybcjlmx where blmc=' + ''''
        + v_name + '''' +
        ' and zyh=' + '''' + pub_zyh + '''';
      qry_copy_bl.Open;
      if not qry_copy_bl.IsEmpty then
      begin
        DM_data.qry_pub.close;
        DM_data.qry_pub.SQL.Text :=
          'delete from [zydzbl_zydzblmx_save] where czydm=' + '''' +
          pub_czydm + '''';
        DM_data.qry_pub.ExecSQL;
        qry_insert_bl.Close;
        qry_insert_bl.SQL.Text :=
          'select * from zydzbl_zydzblmx_save where 1<>1';
        qry_insert_bl.Open;
        qry_insert_bl.Append;
        qry_insert_bl.FieldByName('tmh').asstring := pub_tmh;
        qry_insert_bl.FieldByName('zyh').asstring := pub_zyh;
        qry_insert_bl.FieldByName('brxm').asstring := pub_brxm;
        qry_insert_bl.FieldByName('fldm').asstring := copy(pub_key, 1, 2);
        qry_insert_bl.FieldByName('mbdm').asstring :=
          qry_copy_bl.FieldByName('mbdm').asstring;
        qry_insert_bl.FieldByName('blmc').asstring :=
          qry_copy_bl.FieldByName('blmc').asstring;
        qry_insert_bl.FieldByName('blid').asstring :=
          qry_copy_bl.FieldByName('blid').asstring;
        qry_insert_bl.FieldByName('blwj').Value :=
          qry_copy_bl.FieldByName('blwj').Value;
        //qry_insert_bl.FieldByName('xmlwj').Value:= qry_copy_bl.FieldByName('xmlwj').Value;
        //qry_insert_bl.FieldByName('blwj').Value:= qry_copy_bl.FieldByName('blwj').Value;
        qry_insert_bl.FieldByName('czydm').Value := pub_czydm;
        qry_insert_bl.post;
        qry_insert_bl.UpdateBatch(arall);
        Application.MessageBox('复制成功！', '提示', MB_OK +
          MB_ICONINFORMATION + MB_DEFBUTTON2);
      end;

    except
      Application.MessageBox('复制失败！', '错误', MB_OK + MB_ICONSTOP +
        MB_DEFBUTTON2);

    end;
  end
  else
  begin
    try
      qry_copy_bl.Close;
      qry_copy_bl.SQL.Text := 'select * from zydzbl_zydzblmx where blmc=' + ''''
        + v_name + '''' +
        ' and zyh=' + '''' + pub_zyh + '''';
      qry_copy_bl.Open;
      if not qry_copy_bl.IsEmpty then
      begin
        DM_data.qry_pub.close;
        DM_data.qry_pub.SQL.Text :=
          'delete from [zydzbl_zydzblmx_save] where czydm=' + '''' +
          pub_czydm + '''';
        DM_data.qry_pub.ExecSQL;
        qry_insert_bl.Close;
        qry_insert_bl.SQL.Text :=
          'select * from zydzbl_zydzblmx_save where 1<>1';
        qry_insert_bl.Open;
        qry_insert_bl.Append;
        qry_insert_bl.FieldByName('tmh').asstring := pub_tmh;
        qry_insert_bl.FieldByName('zyh').asstring := pub_zyh;
        qry_insert_bl.FieldByName('brxm').asstring := pub_brxm;
        qry_insert_bl.FieldByName('fldm').asstring := copy(pub_key, 1, 2);
        qry_insert_bl.FieldByName('mbdm').asstring :=
          qry_copy_bl.FieldByName('mbdm').asstring;
        qry_insert_bl.FieldByName('blmc').asstring :=
          qry_copy_bl.FieldByName('blmc').asstring;
        qry_insert_bl.FieldByName('blid').asstring :=
          qry_copy_bl.FieldByName('blid').asstring;
        qry_insert_bl.FieldByName('blwj').Value :=
          qry_copy_bl.FieldByName('blwj').Value;
        qry_insert_bl.FieldByName('xmlwj').Value :=
          qry_copy_bl.FieldByName('xmlwj').Value;
        //qry_insert_bl.FieldByName('blwj').Value:= qry_copy_bl.FieldByName('blwj').Value;
        qry_insert_bl.FieldByName('czydm').Value := pub_czydm;
        qry_insert_bl.post;
        qry_insert_bl.UpdateBatch(arall);
        Application.MessageBox('复制成功！', '提示', MB_OK +
          MB_ICONINFORMATION + MB_DEFBUTTON2);
      end;

    except
      Application.MessageBox('复制失败！', '错误', MB_OK + MB_ICONSTOP +
        MB_DEFBUTTON2);

    end;

  end;

end;

procedure TFrm_dzbl_main.N80Click(Sender: TObject);
var
  stream: TADOBlobStream;
  stream1: TFileStream;
  filename: string;
  dqxdpd: string;
  kszg: string;
begin
  if Application.MessageBox('是否确认将复制的病历粘贴出来?', '询问',
    MB_OKCANCEL + MB_ICONQUESTION) = IDCANCEL then
  begin
    Exit;
  end;
  qry_mbmx_copy.close;
  qry_mbmx_copy.sql.Text := 'select * from zydzbl_zydzblmx_save where czydm=' +
    '''' +
    pub_czydm + '''';
  qry_mbmx_copy.Open;
  if (copy(pub_key, 1, 2) = '02') and
    (Trim(qry_mbmx_copy.FieldByName('fldm').asstring) <> '02') then
  begin
    Application.MessageBox('不能在病程记录粘贴非病程记录明细！', '错误', MB_OK +
      MB_ICONSTOP +
      MB_DEFBUTTON2);
    Exit;
  end;
  if (copy(pub_key, 1, 2) <> '02') and
    (Trim(qry_mbmx_copy.FieldByName('fldm').asstring) = '02') then
  begin
    Application.MessageBox('不能在非病程记录粘贴病程记录内容！', '错误', MB_OK +
      MB_ICONSTOP +
      MB_DEFBUTTON2);
    Exit;
  end;
  if qry_mbmx_copy.RecordCount <> 0 then
  begin
    kszg := '';
    if pub_yydm = '0147' then
    begin
      DM_data.qry_pub.close;
      DM_data.qry_pub.sql.Text :=
        'select * from sys_ksdm where rtrim(kszg)<>''''';
      DM_data.qry_pub.Open;
      while not DM_data.qry_pub.eof do
      begin
        kszg := kszg + ',' + Trim(DM_data.qry_pub.FieldByName('kszg').AsString);
        DM_data.qry_pub.Next;
      end;
      if Pos(pub_czydm, kszg) > 0 then
      begin

      end
      else
      begin
        yzblys;
      end;
    end
    else
      yzblys; //验证病人是不是其它科室转入,病历医生是否已做调整,并取出手术医生,及监护医生
    if (copy(pub_key, 1, 2) = '02') or (copy(pub_key, 1, 2) = '11') then
    begin
      getpub_blys; //病程记录取病历医生,及主管医生
      if not pub_zgysbz then
      begin
        qry_brbl.Close;
        qry_brbl.SQL.Text := 'select * from zydzbl_zydzblmx where fldm=' + ''''
          + pub_key + '''' +
          ' and zyh=' + '''' + pub_zyh + '''';
        qry_brbl.Open;
        pub_blid := qry_brbl.FieldByName('blid').AsString;
        if qry_brbl.IsEmpty then
          setmode('add')
        else
        begin
          setmode('edit');
          openbcjl; //如果已存在病程记录,先打开病程记录在后面插入新模板
        end;
        addbcjl := 'add'; //病程记录设为增加状态
        qry_brbl.Close;
      end
      else
      begin
        application.MessageBox('科室主管已签名确认完成病程，不能在通过模板方式增加病历,只能通过上级医生修改病历!', '提示', 0 + 48);
        abort;
      end;
    end
    else
      setmode('add'); //病历记录设为增加状态
    if (pub_czyxm = bl_blys) or (pos(copy(pub_key, 1, 2), bl_bllb) > 0) or
      ((pub_yydm = '0147') and (Pos(pub_czydm, kszg) > 0)) or
      (pub_czyxm = bl_zzys) or ((pub_yydm = '0198') and (copy(pub_key, 1, 2) =
      '03')) then
    begin
      filename := GetCurrentDir + '\' + 'otemp'; //+get_sjh( pub_czydm );
      EMRPad301.CleanUndoBuffer; //清空编辑缓冲区
      EMRPad301.CleanClipboard; //清空剪贴版
      try
        stream := TADOBlobStream.Create(qry_mbmx_copy.FieldByName('blwj') as
          TBlobField, bmRead);
        stream.Position := 0;
        stream1 := TFileStream.Create(filename, fmCreate);
        stream1.Position := 0;
        stream1.CopyFrom(stream, stream.Size);
      finally
        stream1.Free;
        stream.Free;
      end;
      if (copy(pub_key, 1, 2) = '02') or (copy(pub_key, 1, 2) = '11') then
      begin
        EMRPad301.SetDocumentMode(1); //进入编辑状态
        EMRPad301.SetSel(-1, -1, 0, 0, 0, -1, -1, 0, 0, 0); //到文件尾
        blbcpdid := EMRPad301.GetBaseLineCount;
        //缓回当前文档的行数记录病程片段ID
        if editmode = 'add' then
          EMRPad301.FileOpen(filename, 0)
        else
          EMRPad301.FileInsert(filename, 0);
      end
      else
        EMRPad301.FileOpen(filename, 0);
      pgc1.ActivePage := ts1;
      saveblClick(self);
      DM_data.qry_pub.close;
      DM_data.qry_pub.sql.text := 'select * from sys_dzbl_mbmx where mbdm=' +
        qry_mbmx_copy.FieldByName('mbdm').asstring;
      DM_data.qry_pub.Open;
      frm_func.func_in_zyblmx_blsjzkmx(pub_tmh, pub_zyh,
        DM_data.qry_pub.FieldByName('mbsx').AsString);
      treeviewzpDblClick(self); //新加模板直接进行编辑状态
    end
    else
    begin
      if (bl_bllb = '02') then
        application.MessageBox(pchar('你是：[' + trim(pub_brxm) +
          ']本科执班医生,您只能在病程类别中加入病程!'), '提示', 0 + 48)
      else if bl_bllb = ',03,07' then
        application.MessageBox(pchar('你是：[' + trim(pub_brxm) +
          ']的麻醉医生,您只能在手术,知情同意书中类别中加入病历!'), '提示', 0 +
          48)
      else if bl_bllb = '04' then
        application.MessageBox(pchar('你是：[' + trim(pub_brxm) +
          ']的会诊医生,您只能在会诊病历类别中加入病历!'), '提示', 0 + 48)
      else if bl_bllb = ',05,06' then
        application.MessageBox(pchar('你是：[' + trim(pub_brxm) +
          ']的ICU医生,您只能在护理病历类别中加入病历!'), '提示', 0 + 48)
      else
        application.MessageBox(pchar('你不是：[' + trim(pub_brxm) +
          ']的病历医生!'), '提示', 0 + 48);
    end;
  end
  else
    application.MessageBox('没有模板不能生成病历!', '提示', 0 + 48);

end;

procedure TFrm_dzbl_main.N81Click(Sender: TObject);
begin
  try
    application.createform(Tfrm_dck_dzbl, frm_dck_dzbl);
    frm_dck_dzbl.dzbl_zyh := pub_zyh;
    frm_dck_dzbl.showmodal;
  finally
    EMRPad301.EditPaste;
    frm_dck_dzbl.free;
  end;
end;

procedure TFrm_dzbl_main.N82Click(Sender: TObject);
var
  s1: string;
  hmem: HGLOBAL;
  pstr: PChar;
begin
  jyxmdrnr := '';

  try
    application.createform(Tfrm_in_jyxmjg, frm_in_jyxmjg);
    frm_in_jyxmjg.v_zyh := pub_zyh;
    frm_in_jyxmjg.v_lb := '1';
    frm_in_jyxmjg.showmodal;
  finally
    frm_in_jyxmjg.free;
  end;

  if jyxmdrnr <> '' then
  begin
    s1 := jyxmdrnr;
    if OpenClipboard(0) then
    begin
      EmptyClipboard;  //清空剪贴板
      hmem := GlobalAlloc(GMEM_MOVEABLE or GMEM_DDESHARE, Length(s1) + 4);
      pstr := GlobalLock(hmem);
      StrCopy(pstr, PChar(s1));
      SetClipboardData(CF_TEXT, hmem);
      GlobalUnlock(hmem);
      GlobalFree(hmem);
      CloseClipboard;
    end;
    EMRPad301.EditPaste;
  end;

  //  if not sp_cx_dzbljyjg.IsEmpty then
  //  begin
  //    sp_cx_dzbljyjg.First;
  //    while not sp_cx_dzbljyjg.eof do
  //    begin
  //      s1:= '检验条码号'+ sp_cx_dzbljyjg.FieldByName('barcode').asstring+
  //      '的检验项目：'+sp_cx_dzbljyjg.FieldByName('jyxmmc').asstring+'结果如下：'+
  //      #13+#10+sp_cx_dzbljyjg.FieldByName('jyjgms').asstring+#13+#10;
  //      hmem:=GlobalAlloc(GMEM_MOVEABLE or GMEM_DDESHARE,Length(s1)+4);
  //      pstr:=GlobalLock(hmem);
  //      StrCopy(pstr,PChar(s1));
  //      if OpenClipboard(0)then
  //      begin
  //         SetClipboardData(CF_TEXT,hmem);
  //         CloseClipboard;
  //         GlobalUnlock(hmem);
  //         GlobalFree(hmem);
  //      end;
  //      EMRPad301.EditPaste;
  //      sp_cx_dzbljyjg.Next;
  //    end;
  //  end;
end;

procedure TFrm_dzbl_main.N101Click(Sender: TObject);
var
  s1: string;
  hmem: HGLOBAL;
  pstr: PChar;
begin
  sp_cx_dzbljyjg.close;
  sp_cx_dzbljyjg.Parameters.Refresh;
  sp_cx_dzbljyjg.Parameters.ParamByName('@zyh').Value := pub_zyh;
  sp_cx_dzbljyjg.Parameters.ParamByName('@fs').Value := '1';
  sp_cx_dzbljyjg.Open;
  if not sp_cx_dzbljyjg.IsEmpty then
  begin
    sp_cx_dzbljyjg.First;
    while not sp_cx_dzbljyjg.eof do
    begin
      if trim(sp_cx_dzbljyjg.FieldByName('fzcjgms').asstring) <> '' then
      begin
        s1 := '检验条码号' + sp_cx_dzbljyjg.FieldByName('barcode').asstring +
          '的检验项目：' + sp_cx_dzbljyjg.FieldByName('jyxmmc').asstring +
          '结果如下：' +
          #13 + #10 + sp_cx_dzbljyjg.FieldByName('fzcjgms').asstring + #13 +
          #10;
        hmem := GlobalAlloc(GMEM_MOVEABLE or GMEM_DDESHARE, Length(s1) + 4);
        pstr := GlobalLock(hmem);
        StrCopy(pstr, PChar(s1));
        if OpenClipboard(0) then
        begin
          SetClipboardData(CF_TEXT, hmem);
          CloseClipboard;
          GlobalUnlock(hmem);
          GlobalFree(hmem);
        end;
        EMRPad301.EditPaste;
      end;
      sp_cx_dzbljyjg.Next;
    end;
  end;
end;

procedure TFrm_dzbl_main.N102Click(Sender: TObject);
var
  zybh, blbh: string;
  sHtmlFileName, sImgFileName: WideString;  
begin
  zybh := pub_zyh;
  if pub_blid <> '' then
    blbh := pub_blid
  else
    blbh := qry_brbl.FieldByName('blid').AsString;
  query1.SQL.Text := 'SELECT html FROM zydzbl_zydzblmx WHERE zyh = ' + '''' +
    zybh + '''' + ' AND blid = ' + '''' + blbh + '''';
  sHtmlFileName := ExtractFileDir(ParamStr(0)) + zybh + pub_blid + '.html';
  sImgFileName := ChangeFileExt(sHtmlFileName, '');
  query1.Open;
  try
    query1.SaveToFile(sHtmlFileName);
    query1.Close;
    query1.Active := True;
    Nav(sHtmlFileName);
    sImgFileName := GetSaveImgFileName(sImgFileName);
    //  HTML2BmpDrawTo(wbEditor, sImgFileName);
    HTML2JpgDraw(wbEditor, sImgFileName);
  finally
    DeleteFile(sHtmlFileName);
  end;
end;

procedure TFrm_dzbl_main.Nav(AURl: WideString);
begin
  wbEditor.Navigate(AURL);
  while wbEditor.busy do
    Application.ProcessMessages;
end;

procedure TFrm_dzbl_main.BitmapToJPeg(const FileName: string; SaveFileName:
  string);
var
  Bitmap: TBitmap; //定义变量
  JPeg: TJPegImage; //所属unit是:Jpeg,需要在项目的uses 中 加入Jpeg
begin
  try
    Bitmap := TBitmap.Create; //创建位图资源
    Bitmap.LoadFromFile(FileName); //根据传入的参数载入位图资源
    JPeg := TJPegImage.Create; //创建jpeg资源
    JPeg.Assign(Bitmap); //把bitmap中的图像资源拷贝到jpeg对象中
    if Trim(SaveFileName) = '' then
      //如果传入的目的地址为空,按原名保存(扩展名改变)
      JPeg.SaveToFile(ChangeFileExt(FileName, '.jpg'))
    else //按参数指定的名称保存jpg图片
      JPeg.SaveToFile(SaveFileName);
  finally
    FreeAndNil(Bitmap); //释放资源
    FreeAndNil(JPeg); //释放资源
  end;
end;

function TFrm_dzbl_main.HTML2JpgDraw(Awb: TWebBrowser; ADestFilename: string):
  THtml2ImgResult;
var
  myDoc: IHTMLDocument2;
  myView: IViewObject;
  myElem: IHTMLElement2;
  sourceDrawRect: TRect;
  ABmp: TBitMap;
  DocHeight, DocWidth: Integer;
  HSrcCanvas: HBITMAP;
  AJpg: tjpegimage;
  HDrawResult: HRESULT;
begin
  Result.BSucc := False;
  if AWb.Document = nil then
  begin
    Result.IStatus := 0;
    Result.Cinfo := 'Document is nil';
    Exit;
  end;
  myDoc := AWb.Document as IHTMLDocument2;
  if myDoc = nil then
  begin
    Result.IStatus := -1;
    Result.Cinfo := 'myDoc not imp IHTMLDocument2, is nil.';
    Exit;
  end;
  myElem := myDoc.body as IHTMLElement2;
  if myElem = nil then
  begin
    Result.IStatus := -2;
    Result.Cinfo := 'myElem not imp IHTMLElement2, is nil.';
    Exit;
  end;
  myView := myDoc as IViewObject;
  if myView = nil then
  begin
    Result.IStatus := -3;
    Result.Cinfo := 'myView not imp IViewObject, is nil.';
    Exit;
  end;
  DocHeight := myElem.scrollHeight;
  DocWidth := myElem.scrollWidth;

  AWb.ClientHeight := DocHeight;
  AWb.ClientWidth := DocWidth;

  try
    ABmp := TBitMap.Create();
    ABmp.Height := DocHeight;
    ABmp.Width := DocWidth;
    HSrcCanvas := ABmp.Canvas.handle;

    sourceDrawRect := Rect(0, 0, ABmp.Width, ABmp.Height);

    HDrawResult := myView.Draw(DVASPECT_CONTENT, 1, nil, nil, Self.Handle,
      HSrcCanvas, @sourceDrawRect, nil, nil, 0);
    case HDrawResult of
      VIEW_E_DRAW:
        begin
          Result.IStatus := -10;
          Result.Cinfo := 'VIEW_E_DRAW,Error in drawing.';
          Exit;
        end;
      DV_E_LINDEX:
        begin
          Result.IStatus := -11;
          Result.Cinfo :=
            'Invalid value for lindex; currently only -1 is supported.';
          Exit;
        end;
      DV_E_DVASPECT:
        begin
          Result.IStatus := -12;
          Result.Cinfo := 'Invalid value for dwAspect.';
          Exit;
        end;
      OLE_E_INVALIDRECT:
        begin
          Result.IStatus := -13;
          Result.Cinfo := 'Invalid rectangle.';
          Exit;
        end;
      s_ok: ;
    end;
    AJpg := TJPegImage.Create;
    AJpg.Assign(ABmp);
    AJpg.CompressionQuality:=JpegCompressRate;
    AJpg.Compress;
    AJPg.SaveToFile(ADestFilename);
  finally
    FreeAndNil(ABmp); //释放资源
    FreeAndNil(AJpg); //释放资源
  end;
  Result.BSucc := True;
  Result.IStatus := 1;
  Result.CInfo := 'All Ok.';
end;

function TFrm_dzbl_main.HTML2BmpDrawTo(ABrowser: TWebBrowser;
  ADestFilename: string): THtml2ImgResult;
var
  pDoc: IHTMLDocument2;
  pElement: IHTMLElement2;
  pBodyElement: IHTMLBodyElement;
  pRender: IHTMLElementRender;
  bmp: TBitmap;
  x, y: Integer;
  lastX, LastY: Integer;
  bDoneX, bDoneY: Boolean;
  HDrawResult: HRESULT;
begin
  Result.BSucc := False;
  Result.IStatus := -100;
  Result.Cinfo := 'norun';
  screen.Cursor := crHourglass;
  // IHTMLDocument2继承自IDispatch，是一个双重接口
  // 接口类型的表达式不能引用实现后裔接口的类的对象，除非该类或其祖先类也实现了祖先接口。
  pDoc := ABrowser.Document as IHTMLDocument2;
  if pDoc = nil then
  begin
    Result.BSucc := False;
    Result.IStatus := -1;
    Result.Cinfo := 'pDoc is nil';
    Exit;
  end;
  pElement := pDoc.body as IHTMLElement2;
  if pElement = nil then
  begin
    Result.BSucc := False;
    Result.IStatus := -2;
    Result.Cinfo := 'pElement is nil';
    Exit;
  end;
  LockWindowUpdate(0);
  // 网页内容的实际宽度x= pdoc.body的scrollwidth
  x := pElement.scrollWidth;
  //ShowMessage(IntToStr(pElement.scrollWidth));
  //ShowMessage(IntToStr(pElement.scrollHeight));
  lastX := -1;
  bDoneX := False;
  pBodyElement := pElement as IHTMLBodyElement;
  if pBodyElement = nil then
  begin
    Result.BSucc := False;
    Result.IStatus := -3;
    Result.Cinfo := 'pBodyElement is nil';
    Exit;
  end;
  // Turns off scrollbars
  pBodyElement.scroll := 'no';
  pElement.QueryInterface(IID_IHTMLElementRender, pRender);
  if pRender = nil then
  begin
    Result.BSucc := False;
    Result.IStatus := -4;
    Result.Cinfo := 'pRender is nil';
    Exit;
  end;
  // Create Rect and two bitmaps the same size as full document
  bmp := TBitmap.Create;
  bmp.Width := pElement.scrollWidth;
  bmp.Height := pElement.scrollHeight;
  wbEditor.Height := pElement.scrollHeight;
  wbEditor.Width := pElement.scrollWidth;
  try
    while not bDoneX do
    begin
      // ??
      pElement.scrollLeft := x;
      x := pElement.scrollLeft;

      if (lastX = -1) then
        lastX := x + pElement.scrollWidth;

      y := pElement.scrollHeight;
      lastY := -1;
      bDoneY := False;
      while not bDoneY do
      begin
        pElement.scrollTop := y;
        y := pElement.scrollTop;

        if (lastY = -1) then
          lastY := y + pElement.scrollHeight;
        HDrawResult := pRender.DrawToDC(bmp.Canvas.Handle);
        case HDrawResult of
          E_FAIL:
            begin
              Result.BSucc := False;
              Result.IStatus := -5;
              Result.Cinfo := 'DrawToDc has fatal error';
              Exit;
            end;
          S_FALSE:
            begin
              Result.BSucc := False;
              Result.IStatus := -6;
              Result.Cinfo := 'DrawToDc got S_FALSE';
              Exit;
            end;
          s_ok:
            begin
              bDoneY := (y = 0);
              lastY := y;
              y := pElement.scrollHeight - LastY;
            end;
        end;
        bDoneX := (x = 0);
        lastX := x;
        x := pElement.scrollWidth - LastX;
      end;
    end;
    //LockWindowUpdate(ABrowser.Handle);
    bmp.SaveToFile(ADestFilename);
  finally
    bmp.Free;
  end;
  LockWindowUpdate(0);
  Screen.Cursor := crDefault;
end;

function TFrm_dzbl_main.GetSaveImgFileName(aDefaultFileName: string): string;
var
  picSaveDialog: TSaveDialog;
begin
  try
    picSaveDialog := Tsavedialog.Create(Self);
    picSaveDialog.DefaultExt:='jpg';
    picSaveDialog.Filter := 'JPEG file (*.jpg)|*.JPG';
    picSaveDialog.Title := '保存为图片';
    picSaveDialog.InitialDir := ExtractFilePath(Application.ExeName);
    picSaveDialog.FileName := aDefaultFileName;
    if picSaveDialog.Execute then
      Result := picSaveDialog.Filename;
  finally
    FreeAndNil(picSaveDialog);
  end;
end;

procedure TFrm_dzbl_main.N84Click(Sender: TObject);
var
  s1: string;
  hmem: HGLOBAL;
  pstr: PChar;
begin
  jyxmdrnr := '';
  try
    application.createform(Tfrm_in_jyxmjg, frm_in_jyxmjg);
    frm_in_jyxmjg.v_zyh := pub_zyh;
    frm_in_jyxmjg.v_lb := '2';
    frm_in_jyxmjg.showmodal;
  finally
    frm_in_jyxmjg.free;
  end;
//  if jyxmdrnr <> '' then
//  begin
//    s1 := jyxmdrnr;
//    hmem := GlobalAlloc(GMEM_MOVEABLE or GMEM_DDESHARE, Length(s1) + 4);
//    pstr := GlobalLock(hmem);
//    StrCopy(pstr, PChar(s1));
//    if OpenClipboard(0) then
//    begin
//      SetClipboardData(CF_TEXT, hmem);
//      CloseClipboard;
//      GlobalUnlock(hmem);
//      GlobalFree(hmem);
//    end;
//    EMRPad301.EditPaste;
//  end;

  if jyxmdrnr <> '' then
  begin
    s1 := jyxmdrnr;
    if OpenClipboard(0) then
    begin
      EmptyClipboard;  //清空剪贴板
      hmem := GlobalAlloc(GMEM_MOVEABLE or GMEM_DDESHARE, Length(s1) + 4);
      pstr := GlobalLock(hmem);
      StrCopy(pstr, PChar(s1));
      SetClipboardData(CF_TEXT, hmem);
      GlobalUnlock(hmem);
      GlobalFree(hmem);
      CloseClipboard;
    end;
    EMRPad301.EditPaste;
  end;
  //  if not sp_cx_dzbljyjg.IsEmpty then
  //  begin
  //    sp_cx_dzbljyjg.First;
  //    while not sp_cx_dzbljyjg.eof do
  //    begin
  //      s1:= '检验条码号'+ sp_cx_dzbljyjg.FieldByName('barcode').asstring+
  //      '的检验项目：'+sp_cx_dzbljyjg.FieldByName('jyxmmc').asstring+'结果如下：'+
  //      #13+#10+sp_cx_dzbljyjg.FieldByName('jyjgms').asstring+#13+#10;
  //      hmem:=GlobalAlloc(GMEM_MOVEABLE or GMEM_DDESHARE,Length(s1)+4);
  //      pstr:=GlobalLock(hmem);
  //      StrCopy(pstr,PChar(s1));
  //      if OpenClipboard(0)then
  //      begin
  //         SetClipboardData(CF_TEXT,hmem);
  //         CloseClipboard;
  //         GlobalUnlock(hmem);
  //         GlobalFree(hmem);
  //      end;
  //      EMRPad301.EditPaste;
  //      sp_cx_dzbljyjg.Next;
  //    end;
  //  end;
end;

procedure TFrm_dzbl_main.N85Click(Sender: TObject);
begin
  OpenHealthArchiceIE(Handle, pub_czydm, pub_tmh, INPATIENT);
end;

procedure TFrm_dzbl_main.N86Click(Sender: TObject);
begin
  inherited;
    try
    Application.CreateForm(Tfrm_tsfh, frm_tsfh);
    frm_tsfh.ShowModal;
  finally
    frm_tsfh.Free;
    Emrpad301.UniversalBoolFunction(tszf,'',2,0);
  end;
end;

procedure TFrm_dzbl_main.N89Click(Sender: TObject);
begin
  pgc1.ActivePage := ts3;
end;

procedure TFrm_dzbl_main.N6Click(Sender: TObject);
begin
  EMRPad301.TableHideBorder;
end;

procedure TFrm_dzbl_main.N9Click(Sender: TObject);
begin
  EMRPad301.TableProp;
end;

procedure TFrm_dzbl_main.pgc1Change(Sender: TObject);
begin
  b_add.Click;
end;

procedure TFrm_dzbl_main.PopupMenumodeChange(Sender: TObject; Source: TMenuItem;
  Rebuild: Boolean);
begin
  DM_data.qry_pub.close;
  DM_data.qry_pub.SQL.text := 'select * from zydzbl_zydzblmx_save where czydm='
    +
    '''' +
    pub_czydm + '''';
  DM_data.qry_pub.Open;
  if not DM_data.qry_pub.IsEmpty then
  begin
    N80.Enabled := True;
  end
  else
  begin
    N80.Enabled := false;
  end;

end;

procedure TFrm_dzbl_main.N11Click(Sender: TObject);
begin
  EMRPad301.TableColProp;
end;

procedure TFrm_dzbl_main.N12Click(Sender: TObject);
begin
  EMRPad301.TableCellProp;
end;

procedure TFrm_dzbl_main.N19Click(Sender: TObject);
begin
  Frm_dzbl_main.dydyj;
  if (EMRPad301.GetDocumentMode =  1) then  //如果是编辑文档状态权，则插入数据  //20170904
  begin                                                //20170904
     Pub_bL_dy:='DY' ;                                 //20170904
     saveblClick(self);                          //20170904
     Pub_bL_dy:='' ;                           //20170904
  end
  else
  EMRPad301.SetDocumentMode(3);
  EMRpad301.ViewLineIndex;
  EMRPad301.Print(2);
  EMRpad301.viewLIneIndex;
end;

{-------------------------------------------------------------------------------
  过程名:    TFrm_dzbl_main.openandsaveblwj
  作者:      yangshuai
  日期:      2017.10.11
  参数:      wz1: string
  返回值:    无
-------------------------------------------------------------------------------}
procedure TFrm_dzbl_main.openandsaveblwj(wz1: string);
var
  stream, stream1: TADOBlobStream;
  filename_ls: string;
begin
  dm_data.qry_pub.Close;
  if wz1 <> '' then
  begin
    dm_data.qry_pub.SQL.Text := 'select * from zydzbl_zydzblmx where fldm=' + #39 + '05' + #39 + ' and zyh=' + #39 + pub_zyh + #39 + ' and charindex(' + #39 + wz1 + #39 + ',blmc)>0';
    dm_data.qry_pub.open;
    if not dm_data.qry_pub.isempty then
    begin
      filename_ls := GetCurrentDir + '\' + 'dzbl' + wz1;
      try
        stream := TADOBlobStream.Create(dm_data.qry_pub.FieldByName('xmlwj') as TBlobField, bmRead);
        stream.Position := 0;
        stream.SaveToFile(filename_ls);
      finally
        stream.Free;
      end;
    end;
  end
  else
  begin
    dm_data.qry_pub.SQL.Text := 'select * from zydzbl_zydzblmx where zyh=' + #39 + pub_zyh + #39;
    dm_data.qry_pub.open;
    bljs := 0;
    while not dm_data.qry_pub.eof do
    begin
      filename_ls := GetCurrentDir + '\' + 'dzbl' + StringReplace((dm_data.qry_pub.FieldByName('blmc').asstring) + '-' + inttostr(bljs), '/', '', [rfReplaceAll]);
      blwj[bljs] := filename_ls;
      try
        stream := TADOBlobStream.Create(dm_data.qry_pub.FieldByName('xmlwj') as TBlobField, bmRead);
        stream.Position := 0;
        stream.SaveToFile(filename_ls);
        bljs := bljs + 1;
      finally
        stream.Free;
      end;
      dm_data.qry_pub.next;
    end;
  end;
end;


{-------------------------------------------------------------------------------
  过程名:    TFrm_dzbl_main.findallnodevaluebyname
  作者:      yangshuai
  日期:      2017.10.11
  参数:      filename, fieldname, wz: string
  返回值:    integer
-------------------------------------------------------------------------------}
function TFrm_dzbl_main.findallnodevaluebyname(filename, fieldname, wz: string): integer;
var
  xml11: IXMLCDRType;
  xml12: IXMLFieldelemType;
  s, s1, s2: widestring;
  s3: string;
  i, bjsl: integer;
begin
  xml11 := LoadCDR(filename);
  s1 := '';
  bjsl := 0;
  for I := 0 to xml11.Get_Fieldelem.Count - 1 do
  begin
    s := xml11.Fieldelem.Items[i].Get_Name;
    s1 := xml11.Fieldelem.Items[i].NodeValue;
    if s = fieldname then
    begin
      if byjs = 0 then
      begin
        s2 := s1;
        s3 := wz;
        byjs := byjs + 1;
      end;
      if s2 <> s1 then
      begin
        try
          if byjs = 1 then
          begin
            blbd[zkjs].wz := s3;
            blbd[zkjs].gjc := fieldname;
            blbd[zkjs].jg := s2;
            blbd[zkjs + 1].wz := wz;
            blbd[zkjs + 1].gjc := fieldname;
            blbd[zkjs + 1].jg := s1;
            zkjs := zkjs + 2;
          end
          else
          begin
            blbd[zkjs].wz := wz;
            blbd[zkjs].gjc := fieldname;
            blbd[zkjs].jg := s1;
            zkjs := zkjs + 1;
          end
        except
          s1 := '';
        end;
        byjs := byjs + 1;
      end;

    end;
  end;
  Result := zkjs;
end;

{-------------------------------------------------------------------------------
  过程名:    findnodevaluebyname
  作者:      yangshuai
  日期:      2017.10.11
  参数:      filename, fieldname: string
  返回值:    string
-------------------------------------------------------------------------------}
function findnodevaluebyname(filename, fieldname: string): string;
var
  xml11: IXMLCDRType;
  xml12: IXMLFieldelemType;
  s, s1: widestring;
  i: integer;
begin
  xml11 := LoadCDR(filename);
  s1 := '';
  for I := 0 to xml11.Get_Fieldelem.Count - 1 do
  begin
    s := xml11.Fieldelem.Items[i].Get_Name;
    if s = fieldname then
    begin
      try
        s1 := xml11.Fieldelem.Items[i].NodeValue;
      except
        s1 := '';
      end;
    end;
  end;
  Result := s1;
end;

{-------------------------------------------------------------------------------
  过程名:    TFrm_dzbl_main.fun_displayarray
  作者:      yangshuai
  日期:      2017.10.11
  参数:      无
  返回值:    string
-------------------------------------------------------------------------------}
function TFrm_dzbl_main.fun_displayarray: string;
var
  s, s1, s2, s3, s4, s5, s6: string;
  I: Integer;
begin
  i := 0;
  s3 := blbd[i].gjc;
  s4 := s3;
  if blbd[i].gjc <> '' then
    s2 := '以下位置对"' + blbd[i].gjc + '"的描述不一致，请予以修改确认！！' + char(13);
  while i <= zkjs do
  begin
    if s3 = s4 then
    begin
      if blbd[i].jg <> '' then
        s2 := s2 + blbd[i].wz + '描述为:' + blbd[i].jg + char(13);
    end
    else
    begin
      if blbd[i].gjc <> '' then
      begin
        s2 := s2 + '以下位置对"' + blbd[i].gjc + '"的描述不一致，请予以修改确认！！' + char(13);
        s2 := s2 + blbd[i].wz + '描述为:' + blbd[i].jg + char(13);
      end;
    end;
    s4 := s3;
    i := i + 1;
    s3 := blbd[i].gjc
  end;
  result := s2
     // application.MessageBox(pchar(s2),'提示',mb_ok);
end;
{-------------------------------------------------------------------------------
  过程名:    TFrm_dzbl_main.fun_blgjcbd
  作者:      yangshuai
  日期:      2017.10.11
  参数:      无
  返回值:    string
-------------------------------------------------------------------------------}
function TFrm_dzbl_main.fun_blgjcbd: string;
var
  s, s1, s2, s3, s4, s5, s6: string;
  I, ii: Integer;
begin
  zkjs := 0;
  dm_data.qry_pub1.Close;
  dm_data.qry_pub1.SQL.Text := 'select * from zydzbl_gjcytzxsx where isnull(ksdm,' + #39 + #39 + ')=' + #39 + #39 + ' or ksdm=' + #39 + pub_ksdm + #39;
  dm_data.qry_pub1.Open;
  while not dm_data.qry_pub1.Eof do
  begin
    if not dm_data.qry_pub1.fieldbyname('sflxbj').asboolean then
    begin
      try
        I := 1;
        s := '';
        s1 := '';
        openandsaveblwj(dm_data.qry_pub1.FieldByName('gjcwz1').asstring);
        s := findnodevaluebyname('dzbl' + dm_data.qry_pub1.FieldByName('gjcwz1').asstring, dm_data.qry_pub1.FieldByName('bzgjc1').asstring);
        openandsaveblwj(dm_data.qry_pub1.FieldByName('gjcwz2').asstring);
        s1 := findnodevaluebyname('dzbl' + dm_data.qry_pub1.FieldByName('gjcwz2').asstring, dm_data.qry_pub1.FieldByName('bzgjc2').asstring);
      except
        I := 1;
      end;
      if (I = 0) and (s <> s1) then
      begin
        blbd[zkjs].wz := dm_data.qry_pub1.FieldByName('gjcwz1').asstring;
        blbd[zkjs].gjc := dm_data.qry_pub1.FieldByName('bzgjc1').asstring;
        blbd[zkjs].jg := s;
        blbd[zkjs + 1].wz := dm_data.qry_pub1.FieldByName('gjcwz2').asstring;
        blbd[zkjs + 1].gjc := dm_data.qry_pub1.FieldByName('bzgjc2').asstring;
        blbd[zkjs + 1].jg := s1;
        zkjs := zkjs + 2;
      end;
    end
    else
    begin
      openandsaveblwj('');
      byjs := 0;
      for I := 0 to bljs do
      begin
        try
          findallnodevaluebyname(blwj[I], dm_data.qry_pub1.FieldByName('bzgjc1').asstring, copy(blwj[I], pos('dzbl', blwj[I]) + 4, pos('-', blwj[I]) - 7));
        except


        end;
      end;
      zkjs := zkjs + 1;
    end;
    dm_data.qry_pub1.Next;
  end;
  s2 := '';
  if zkjs > 0 then
  begin
    try
      s2 := fun_displayarray;
    except
      s2 := '';
    end;
  end;
  Result := s2;
end;

procedure TFrm_dzbl_main.N17Click(Sender: TObject);
var
  s: string;
begin
  qry_tjzt.Close;
  qry_tjzt.open;
  qry_tjzt.Filtered := false;
  qry_tjzt.Filter := ' zyh ='+#39+pub_zyh+#39;
  qry_tjzt.Filtered := True;
  if qry_tjzt.FieldByName('blgdbz').AsInteger=0  then
  begin
     ShowMessage('病历还未提交，请提交后再进行打印！');
  end
  else
  begin
  try
    s := fun_blgjcbd;
  except
    s := '';
  end;
  if s <> '' then
    if application.MessageBox(pchar('病历出现以下错误:' + char(13) + char(13) + s + char(13) + ' 是否继续打印？'), '提示', MB_ICONQUESTION + mb_yesno + mb_defbutton2) = idno then
      exit;
  if (EMRPad301.GetDocumentMode =  1) then  //如果是编辑文档状态权，则插入数据  //20170904
  begin                                                //20170904
     Pub_bL_dy:='DY';                                 //20170904
     saveblClick(self);                          //20170904
     Pub_bL_dy:='';                           //20170904
  end
  else                               //20170904
  EMRPad301.SetDocumentMode(3);
  EMRPad301.Print(0);
  end;
end;

procedure TFrm_dzbl_main.N20Click(Sender: TObject);
begin
  EMRPad301.PageSetup;
end;

procedure TFrm_dzbl_main.N21Click(Sender: TObject);
begin
  EMRPad301.FileSetPageNumber();
end;

procedure TFrm_dzbl_main.N13Click(Sender: TObject);
begin
  saveblClick(self);
end;

procedure TFrm_dzbl_main.findButtonClick(Sender: TObject);
begin
  EMRPad301.EditFind;
end;

procedure TFrm_dzbl_main.replButtonClick(Sender: TObject);
begin
  EMRPad301.EditReplace;
end;

procedure TFrm_dzbl_main.N157Click(Sender: TObject);
var
  strCo: string;
begin
  EMRPad301.EditCopy;
  {****
  *   对粘贴板内容处理
  ****}
  if pub_yydm = '0031' then
  begin
    strCo := Clipboard.AsText;
    if Length(strCo) > 100 * 2 then
      strCo := LeftStr(strCo, 100 * 2);
    Clipboard.AsText := strCo;
  end;
end;

procedure TFrm_dzbl_main.N158Click(Sender: TObject);
begin
  //  if Application.MessageBox('您当前正在进行粘贴病历操作，是否继续？', '询问',
  //  MB_OKCANCEL + MB_ICONQUESTION + MB_DEFBUTTON1) = IDOK then
  //  begin
  EMRPad301.EditPaste;
  //  end;
end;

procedure TFrm_dzbl_main.N165Click(Sender: TObject);
begin
  application.CreateForm(TFrm_crbbgk, Frm_crbbgk);
  try
    Frm_crbbgk.ShowModal;
  finally
    Frm_crbbgk.free;
  end;
end;

procedure TFrm_dzbl_main.N149Click(Sender: TObject);
begin
  EMRPad301.EditAutoRange;
end;

procedure TFrm_dzbl_main.dydyj;
var
  pDevice: pChar;
  pDriver: pChar;
  pPort: pChar;
  hDMode: THandle;
const
  MAX_PATH = 144;
begin
  if PrintDialog1.Execute then
  begin
    GetMem(pDevice, cchDeviceName);
    GetMem(pDriver, MAX_PATH);
    GetMem(pPort, MAX_PATH);
    Printer.GetPrinter(pDevice, pDriver, pPort, hDMode);
    if lStrLen(pDriver) = 0 then
    begin
      GetProfileString('Devices', pDevice, '', pDriver, MAX_PATH);
      pDriver[pos(',', pDriver) - 1] := #0;
    end;
    if lStrLen(pPort) = 0 then
    begin
      GetProfileString('Devices', pDevice, '', pPort, MAX_PATH);
      lStrCpy(pPort, @pPort[lStrLen(pPort) + 2]);
    end;
    Memo1.Lines.Add('Device := ' + StrPas(pDevice));
    Memo1.Lines.Add('Driver := ' + StrPas(pDriver));
    Memo1.Lines.Add('Port := ' + StrPas(pPort));
    FreeMem(pDevice, cchDeviceName);
    FreeMem(pDriver, MAX_PATH);
    FreeMem(pPort, MAX_PATH);
  end;
end;

procedure TFrm_dzbl_main.Edit1Change(Sender: TObject);
begin
  if (edit1.Text <> '') then
  begin
    sp_ycybr.Filtered := False;
    sp_ycybr.Filter := ' bch like ''%' + trim(edit1.text) +
      '%'' or brxm like ''%' + trim(edit1.text) + '%''' +
      ' or tmh like ''%' + trim(edit1.text) + '%'' or pym like ''%' +
      trim(edit1.text) + '%''';
    sp_ycybr.Filtered := True;
  end
  else
    sp_ycybr.Filtered := False;
end;

procedure TFrm_dzbl_main.WMAdoReStore(var message: TMessage);
begin
  AdoRefresh;
end;

procedure TFrm_dzbl_main.WndProc(var Msg: TMessage);
var
  strCo: string;
begin
  if (Msg.Msg = WM_COPY) then
  begin
    ShowMessage(IntToStr(Msg.WParam));
    //      EMRPad301.EditCopy;
    //      {****
    //      *   对粘贴板内容处理
    //      ****}
    //      strCo := Clipboard.AsText;
    //      if Length(strCo)>100 then
    //          strCo := LeftStr(strCo,100);
    //      Clipboard.AsText :=  strCo;
  end;
  FOldWndProc(Msg); //inherited
end;

{-------------------------------------------------------------------------------
  过程名:    TFrm_dzbl_main.yzlrShow
  作者:      yangshuai
  日期:      2016.12.23
  参数:      Sender: TObject
  返回值:    无
-------------------------------------------------------------------------------}
procedure TFrm_dzbl_main.TabSheetyzlrShow(Sender: TObject);
begin
end;



{-------------------------------------------------------------------------------
  过程名:    TFrm_dzbl_main.yzlr_TabFormShow
  作者:      yangshuai
  日期:      2016.12.23
  参数:      无
  返回值:    无
-------------------------------------------------------------------------------}
procedure TFrm_dzbl_main.yzlr_TabFormShow;
var
  yz_zyh: string;
  yz_bqdm: string;
  yz_ksdm: string;
  yz_bqmc: string;
  yz_ksmc: string;
  vPageOfForm: TTabSheet;
begin
  application.CreateForm(Tfrm_yzinput, frm_yzinput);
  frm_yzinput.yz_kdks := '';
  if trim(pub_zyh) <> '' then
  begin
    dm_data.qry_pub.close;
    dm_data.qry_pub.sql.text := 'select * from zysf_zydj where cybz=0 and zyh='
      +
      '''' +
      pub_zyh + '''';
    dm_data.qry_pub.open;
    if not dm_data.qry_pub.isempty then
    begin
      yz_zyh := dm_data.qry_pub.fieldbyname('zyh').asstring;
      dm_data.qry_pub.close;
      dm_data.qry_pub.sql.text := 'select * from sys_kscwsz where zyh=' + '''' +
        yz_zyh + '''';
      dm_data.qry_pub.open;
      if not dm_data.qry_pub.isempty then
      begin
        yz_bqdm := dm_data.qry_pub.fieldbyname('bqdm').asstring;
        yz_ksdm := trim(dm_data.qry_pub.fieldbyname('ksdm').asstring);
        dm_data.qry_pub.close;
        dm_data.qry_pub.sql.text := 'select * from sys_bqdm where bqdm=' + ''''
          +
          yz_bqdm + '''';
        dm_data.qry_pub.open;
        yz_bqmc := trim(dm_data.qry_pub.fieldbyname('bqmc').asstring);
        dm_data.qry_pub.close;
        dm_data.qry_pub.sql.text := 'select * from sys_ksdm where dm=' + '''' +
          yz_ksdm + '''';
        dm_data.qry_pub.open;
        yz_ksmc := trim(dm_data.qry_pub.fieldbyname('mc').asstring);
      end;
    end;
    if yz_bqdm <> pub_bqdm then
    begin
      if application.MessageBox(pchar('当前病人所属病区[' + yz_bqmc +
        ']与操作员登陆病区[' +
        Trim(pub_bqmc) + ']不同，如果按操作员登陆科室[' + trim(pub_ksmc) +
        ']作为医嘱开单科室请选[是]，如果按病人' +
        '所属科室[' + yz_ksmc + ']作为医嘱开单科室请选[否]'), '提示信息',
        mb_iconquestion + MB_YESNO + mb_defbutton1) = IDNO then
      begin
        frm_yzinput.yz_kdks := yz_ksdm;
      end
      else
      begin
        frm_yzinput.yz_kdks := pub_ksdm;
      end;
    end;
  end;
  if frm_yzinput.yz_kdks = '' then
    frm_yzinput.yz_kdks := pub_ksdm;
     // 获取窗体容器
//  vPageOfForm := TTabSheet.Create(frm_yzinput);
//  vPageOfForm.PageControl := pgc1;

  // 显示窗体
  frm_yzinput.BorderStyle := Forms.bsNone;
  frm_yzinput.Parent := TabSheetyzlr;
  frm_yzinput.Width := TabSheetyzlr.Width;
  frm_yzinput.Height := TabSheetyzlr.Height;
  frm_yzinput.Align := alClient;
  // 设置标签名字
  TabSheetyzlr.Caption := frm_yzinput.Caption;
  // 这样可以给窗体相关的权限修改页面名称
  frm_yzinput.Show;
  if Assigned(frm_yzinput.OnActivate) then
  begin
    frm_yzinput.OnActivate(frm_yzinput);
  end;
  TabSheetyzlr.Refresh;
end;


end.

