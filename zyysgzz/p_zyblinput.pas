unit p_zyblinput;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Buttons, DBCtrls, Mask, ExtCtrls, cxPC,
  cxControls, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxDropDownEdit, cxCalendar, cxContainer, cxTextEdit, cxMaskEdit,
  cxLookAndFeelPainters, cxButtons, ADODB, Grids, DBGridEh, cxDBEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxSplitter, Menus, GridsEh,
  QRCtrls, QuickRpt, OleCtrls, EMRPAD30Lib_TLB, cxRadioGroup, DBGrids, ImgList,
  cxGridBandedTableView, cxGridDBBandedTableView, cxLabel, cxSpinEdit,
  cxCheckBox;

type
  Tfrm_zyblinput = class(TForm)
    qry_yz: TADOQuery;
    ds_yz: TDataSource;
    ds_cx_yp_yz: TDataSource;
    qry_ks: TADOQuery;
    ds_ks: TDataSource;
    ds_cx_yzxm: TDataSource;
    qry_yfdm: TADOQuery;
    qry_yzlist: TADOQuery;
    qry_ypyz: TADOQuery;
    sp_cx_yp_yz: TADOStoredProc;
    qry_yzph: TStringField;
    qry_yztmh: TStringField;
    qry_yzzyh: TStringField;
    qry_yzxmdm: TStringField;
    qry_yzxmmc: TStringField;
    qry_yzlb: TStringField;
    qry_yzdw: TStringField;
    qry_yzypdwid: TIntegerField;
    qry_yzypbzbl: TIntegerField;
    qry_yzsl: TIntegerField;
    qry_yzyplsj: TBCDField;
    qry_yzypcgj: TBCDField;
    qry_yzypyf: TStringField;
    qry_yzypyl: TStringField;
    qry_yzyldw: TStringField;
    qry_yzyytj: TStringField;
    qry_yzyplb: TStringField;
    qry_yzjcmd: TStringField;
    qry_yzzxbz: TBooleanField;
    qry_yzfzbz: TIntegerField;
    qry_yztzrq: TDateTimeField;
    qry_yztzry: TStringField;
    qry_yzzfrq: TDateTimeField;
    qry_yzzfry: TStringField;
    qry_yzzxrq: TDateTimeField;
    qry_yzzxry: TStringField;
    qry_yzxgrq: TDateTimeField;
    qry_yzxgry: TStringField;
    qry_yzczks: TStringField;
    qry_yzkdks: TStringField;
    qry_yzkdrq: TDateTimeField;
    qry_yzkdys: TStringField;
    qry_yzyzrq: TDateTimeField;
    qry_yzyzsx: TStringField;
    qry_yzshbz: TBooleanField;
    qry_yzshry: TStringField;
    qry_yzjcbw: TStringField;
    qry_yzjcff: TStringField;
    qry_yzypkcbz: TBooleanField;
    qry_yzczys: TStringField;
    qry_yzgg: TStringField;
    qry_yzczksmc: TStringField;
    qry_xmyz: TADOQuery;
    qru_yzxg: TADOQuery;
    sp_cx_yzyljssl: TADOStoredProc;
    pan_brxx: TPanel;
    Panel5: TPanel;
    bt_refresh: TSpeedButton;
    Panel2: TPanel;
    wczbrgrid: TDBGridEh;
    Panel18: TPanel;
    Label17: TLabel;
    edit_tmh: TEdit;
    Main_Menu: TMainMenu;
    N164: TMenuItem;
    N165: TMenuItem;
    filebl: TMenuItem;
    N13: TMenuItem;
    N14: TMenuItem;
    N15: TMenuItem;
    f_dele_cg: TMenuItem;
    N51: TMenuItem;
    N46: TMenuItem;
    N49: TMenuItem;
    N50: TMenuItem;
    N47: TMenuItem;
    N17: TMenuItem;
    N18: TMenuItem;
    N19: TMenuItem;
    N48: TMenuItem;
    N22: TMenuItem;
    N20: TMenuItem;
    N21: TMenuItem;
    editbl: TMenuItem;
    N25: TMenuItem;
    N26: TMenuItem;
    N171: TMenuItem;
    N28: TMenuItem;
    N29: TMenuItem;
    N30: TMenuItem;
    Nbj_del: TMenuItem;
    N32: TMenuItem;
    N33: TMenuItem;
    N34: TMenuItem;
    N35: TMenuItem;
    N36: TMenuItem;
    N27: TMenuItem;
    N37: TMenuItem;
    viewbl: TMenuItem;
    N42: TMenuItem;
    N43: TMenuItem;
    N16: TMenuItem;
    N44: TMenuItem;
    N23: TMenuItem;
    N24: TMenuItem;
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
    N4: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N9: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    fzbl: TMenuItem;
    MenuItem2: TMenuItem;
    N3: TMenuItem;
    bl_zsk: TMenuItem;
    N54: TMenuItem;
    ICD101: TMenuItem;
    qry_tree: TADOQuery;
    N10: TMenuItem;
    ds_mbmx: TDataSource;
    qry_mbmx: TADOQuery;
    qry_blzsk: TADOQuery;
    ds_blzsk: TDataSource;
    PopupMenuedit: TPopupMenu;
    savebl: TMenuItem;
    N140: TMenuItem;
    del_bl: TMenuItem;
    N173: TMenuItem;
    N144: TMenuItem;
    N146: TMenuItem;
    N147: TMenuItem;
    N148: TMenuItem;
    N149: TMenuItem;
    N150: TMenuItem;
    N152: TMenuItem;
    N155: TMenuItem;
    N31: TMenuItem;
    qry_up_dlbl: TADOQuery;
    qry_pub: TADOQuery;
    ds_pub: TDataSource;
    Popupnull: TPopupMenu;
    ImageList2: TImageList;
    SaveDialog1: TSaveDialog;
    pan_cz: TPanel;
    panel_brxx: TPanel;
    sp_cx_micro: TADOStoredProc;
    qry_yzbz: TStringField;
    PopupMenubrxz: TPopupMenu;
    N1: TMenuItem;
    qry_yzfzph: TStringField;
    qry_yzxh: TIntegerField;
    qry_yzid: TIntegerField;
    qry_yzjyflbh: TStringField;
    cxStyleRepository1: TcxStyleRepository;
    GridBandedTableViewStyleSheetDevExpress: TcxGridBandedTableViewStyleSheet;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxStyle5: TcxStyle;
    cxStyle6: TcxStyle;
    cxStyle7: TcxStyle;
    cxStyle8: TcxStyle;
    cxStyle9: TcxStyle;
    cxStyle10: TcxStyle;
    cxStyle11: TcxStyle;
    cxStyle12: TcxStyle;
    cxStyle13: TcxStyle;
    cxStyle14: TcxStyle;
    cxStyle15: TcxStyle;
    cxStyle16: TcxStyle;
    cxStyle17: TcxStyle;
    cxStyle18: TcxStyle;
    cxStyle19: TcxStyle;
    cxStyle20: TcxStyle;
    cxStyle21: TcxStyle;
    cxStyle22: TcxStyle;
    cxStyle23: TcxStyle;
    cxStyle24: TcxStyle;
    cxStyle25: TcxStyle;
    cxStyle26: TcxStyle;
    cxStyle27: TcxStyle;
    GridBandedTableViewStyleSheetMarinehighcolor: TcxGridBandedTableViewStyleSheet;
    cxStyle28: TcxStyle;
    cxStyle29: TcxStyle;
    cxStyle30: TcxStyle;
    cxStyle31: TcxStyle;
    cxStyle32: TcxStyle;
    cxStyle33: TcxStyle;
    cxStyle34: TcxStyle;
    cxStyle35: TcxStyle;
    cxStyle36: TcxStyle;
    cxStyle37: TcxStyle;
    cxStyle38: TcxStyle;
    cxStyle39: TcxStyle;
    qry_yzjyyb: TStringField;
    sp_up_jbsypl: TADOStoredProc;
    DBGrid_Jb: TDBGrid;
    ad_jbcx: TADODataSet;
    ds_jbbm: TDataSource;
    ad_jbxx: TADODataSet;
    sp_yzincfsf: TADOStoredProc;
    dbgrd_zxqh: TDBGrid;
    ad_xzqh: TADODataSet;
    ds_xzqh: TDataSource;
    sp_del_fyls: TADOStoredProc;
    rb_qk: TRadioButton;
    rb_qy: TRadioButton;
    rb_br: TRadioButton;
    qry_lsyz: TADOQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    BCDField1: TBCDField;
    BCDField2: TBCDField;
    StringField8: TStringField;
    StringField9: TStringField;
    StringField10: TStringField;
    StringField11: TStringField;
    StringField12: TStringField;
    StringField13: TStringField;
    BooleanField1: TBooleanField;
    IntegerField4: TIntegerField;
    DateTimeField1: TDateTimeField;
    StringField14: TStringField;
    DateTimeField2: TDateTimeField;
    StringField15: TStringField;
    DateTimeField3: TDateTimeField;
    StringField16: TStringField;
    DateTimeField4: TDateTimeField;
    StringField17: TStringField;
    StringField18: TStringField;
    StringField19: TStringField;
    DateTimeField5: TDateTimeField;
    StringField20: TStringField;
    DateTimeField6: TDateTimeField;
    StringField21: TStringField;
    BooleanField2: TBooleanField;
    StringField22: TStringField;
    StringField23: TStringField;
    StringField24: TStringField;
    BooleanField3: TBooleanField;
    StringField25: TStringField;
    StringField26: TStringField;
    StringField27: TStringField;
    BooleanField4: TBooleanField;
    BooleanField5: TBooleanField;
    StringField28: TStringField;
    StringField29: TStringField;
    IntegerField5: TIntegerField;
    IntegerField6: TIntegerField;
    StringField30: TStringField;
    ds_lsyz: TDataSource;
    zz: TcxPageControl;
    Tab_bl: TcxTabSheet;
    Panel3: TPanel;
    treeviewzp: TTreeView;
    Panel6: TPanel;
    bt_add: TBitBtn;
    bt_savebl: TBitBtn;
    EMRPad301: TEMRPad30;
    tab_yz: TcxTabSheet;
    cxgrid_mzyz: TcxGrid;
    cxgrid_yz: TcxGridDBBandedTableView;
    cxgrid_yzlb: TcxGridDBBandedColumn;
    cxgrid_yzxmmc: TcxGridDBBandedColumn;
    cxgrid_yzypyl: TcxGridDBBandedColumn;
    cxgrid_yzyldw: TcxGridDBBandedColumn;
    cxgrid_yzypyf: TcxGridDBBandedColumn;
    cxgrid_yzyytj: TcxGridDBBandedColumn;
    cxgrid_yzsl: TcxGridDBBandedColumn;
    cxgrid_yzdw: TcxGridDBBandedColumn;
    cxgrid_yzjyyb: TcxGridDBBandedColumn;
    cxgrid_yzczks: TcxGridDBBandedColumn;
    cxgrid_yzczksmc: TcxGridDBBandedColumn;
    cxgrid_yzyplb: TcxGridDBBandedColumn;
    cxgrid_yzyplsj: TcxGridDBBandedColumn;
    cxgrid_yzgg: TcxGridDBBandedColumn;
    cxgrid_yzbz: TcxGridDBBandedColumn;
    cxgrid_yzfzph: TcxGridDBBandedColumn;
    cxgrid_yzfz: TcxGridDBBandedColumn;
    cxgrid_yzsx: TcxGridDBBandedColumn;
    cxgrd_yzlbpx: TcxGridDBBandedColumn;
    cxgrd_yzypcgj: TcxGridDBBandedColumn;
    cxgrid_mzyzLevel1: TcxGridLevel;
    grid_yp: TDBGridEh;
    grid_yz: TDBGridEh;
    Panel12: TPanel;
    bt_zt: TcxButton;
    bt_saveyz: TcxButton;
    bt_ztsave: TcxButton;
    bt_yz_add: TcxButton;
    btnxzyf: TcxButton;
    btn_zxyz: TcxButton;
    btn_jymb: TcxButton;
    btn_cancel: TcxButton;
    btn_excel: TcxButton;
    grid_ks: TDBGridEh;
    dbg_yytj: TDBGridEh;
    tab_zsk: TcxTabSheet;
    Panel7: TPanel;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    rbgjc: TRadioButton;
    rbgjcnr: TRadioButton;
    edt_zsk: TEdit;
    TreeViewgjc: TTreeView;
    DBGridmbmx: TDBGrid;
    tab_mb: TcxTabSheet;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    rbgr: TcxRadioButton;
    rbks: TcxRadioButton;
    rbgg: TcxRadioButton;
    rbqb: TcxRadioButton;
    b_retu: TBitBtn;
    edt_mbdm: TEdit;
    cxGrid2: TcxGrid;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2DBTableView1dm: TcxGridDBColumn;
    cxGrid2DBTableView1mbdm: TcxGridDBColumn;
    cxGrid2DBTableView1mbmc: TcxGridDBColumn;
    cxGrid2DBTableView1pym: TcxGridDBColumn;
    cxGrid2DBTableView1ksmc: TcxGridDBColumn;
    cxGrid2DBTableView1mbczy: TcxGridDBColumn;
    cxGrid2Level1: TcxGridLevel;
    cab_lsyz: TcxTabSheet;
    cxGrid1: TcxGrid;
    cxgrdbndtblvw_lsyz: TcxGridDBBandedTableView;
    cxGridDBBandedColumn1: TcxGridDBBandedColumn;
    cxGridDBBandedColumn2: TcxGridDBBandedColumn;
    cxGridDBBandedColumn3: TcxGridDBBandedColumn;
    cxGridDBBandedColumn4: TcxGridDBBandedColumn;
    cxGridDBBandedColumn5: TcxGridDBBandedColumn;
    cxGridDBBandedColumn6: TcxGridDBBandedColumn;
    cxGridDBBandedColumn7: TcxGridDBBandedColumn;
    cxGridDBBandedColumn8: TcxGridDBBandedColumn;
    cxGridDBBandedColumn9: TcxGridDBBandedColumn;
    cxGridDBBandedColumn10: TcxGridDBBandedColumn;
    cxGridDBBandedColumn11: TcxGridDBBandedColumn;
    cxGridDBBandedColumn12: TcxGridDBBandedColumn;
    cxGridDBBandedColumn13: TcxGridDBBandedColumn;
    cxGridDBBandedColumn14: TcxGridDBBandedColumn;
    cxGridDBBandedColumn15: TcxGridDBBandedColumn;
    cxGridDBBandedColumn16: TcxGridDBBandedColumn;
    cxGridDBBandedColumn17: TcxGridDBBandedColumn;
    cxGridDBBandedColumn18: TcxGridDBBandedColumn;
    cxGridDBBandedColumn20: TcxGridDBBandedColumn;
    cxGridLevel1: TcxGridLevel;
    pnl_lsyz: TPanel;
    cab_lsbl: TcxTabSheet;
    pnl_lsbl: TPanel;
    tv_lsbl: TTreeView;
    EMRPad302: TEMRPad30;
    cab_jy: TcxTabSheet;
    cab_pacs: TcxTabSheet;
    cxdtdt_ksrq: TcxDateEdit;
    cxlb_ksrq: TcxLabel;
    cxdtdt_jsrq: TcxDateEdit;
    cxlb_jsrq: TcxLabel;
    btn_cxlsyz: TcxButton;
    qry_kdys: TADOQuery;
    ds_kdys: TDataSource;
    qry_lsyzkdysmc: TStringField;
    ds_brxx: TDataSource;
    sp_brxx: TADOStoredProc;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label3: TLabel;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit20: TDBEdit;
    e_yzys: TEdit;
    dbedt_tmh: TDBEdit;
    procedure DBEdit7Exit(Sender: TObject);
    procedure bt_lsyzClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure bt_ztClick(Sender: TObject);
    procedure cxGridDBTableView5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxGridDBTableView4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxGridDBTableView3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxGridDBTableView2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxGridDBTableView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure HIDBTableView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit_clKeyPress(Sender: TObject; var Key: Char);
    procedure grid_ypKeyPress(Sender: TObject; var Key: Char);
    procedure grid_ypExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure refresh_yz; //ˢ��ҽ����¼
    procedure ypinyz;
    procedure xminyz;
    procedure delete_yz(key: word);
    procedure xzsm(Sender: TDbmemo);
    procedure bt_saveyzClick(Sender: TObject);
    procedure qry_yzAfterScroll(DataSet: TDataSet);
    procedure qry_yzBeforeInsert(DataSet: TDataSet);
    procedure grid_ksExit(Sender: TObject);
    procedure grid_ksDblClick(Sender: TObject);
    procedure grid_ksKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grid_ypDblClick(Sender: TObject);
    procedure grid_ypDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure qry_ysAfterScroll(DataSet: TDataSet);
    procedure bt_refreshClick(Sender: TObject);
    procedure edit_tmhKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure wczbrgridDblClick(Sender: TObject);
    procedure wczbrgridDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure wczbrgridKeyPress(Sender: TObject; var Key: Char);
    procedure N10Click(Sender: TObject);
    procedure N163Click(Sender: TObject);
    procedure treeviewzpChange(Sender: TObject; Node: TTreeNode);
    procedure rbqbClick(Sender: TObject);
    procedure rbggClick(Sender: TObject);
    procedure rbksClick(Sender: TObject);
    procedure rbgrClick(Sender: TObject);
    procedure TreeViewgjcChange(Sender: TObject; Node: TTreeNode);
    procedure DBGridmbmxDblClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure bt_saveblClick(Sender: TObject);
    procedure N140Click(Sender: TObject);
    procedure saveblClick(Sender: TObject);
    procedure bt_addClick(Sender: TObject);
    procedure b_retuClick(Sender: TObject);
    procedure cxGrid2DBTableView1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure treeviewzpDblClick(Sender: TObject);
    procedure ad_wczbrBeforeScroll(DataSet: TDataSet);
    procedure N13Click(Sender: TObject);
    procedure N14Click(Sender: TObject);
    procedure del_blClick(Sender: TObject);
    procedure f_dele_cgClick(Sender: TObject);
    procedure N46Click(Sender: TObject);
    procedure N49Click(Sender: TObject);
    procedure N50Click(Sender: TObject);
    procedure N47Click(Sender: TObject);
    procedure N17Click(Sender: TObject);
    procedure N18Click(Sender: TObject);
    procedure N19Click(Sender: TObject);
    procedure N48Click(Sender: TObject);
    procedure N20Click(Sender: TObject);
    procedure N21Click(Sender: TObject);
    procedure N25Click(Sender: TObject);
    procedure N26Click(Sender: TObject);
    procedure N28Click(Sender: TObject);
    procedure N29Click(Sender: TObject);
    procedure N30Click(Sender: TObject);
    procedure Nbj_delClick(Sender: TObject);
    procedure N33Click(Sender: TObject);
    procedure N35Click(Sender: TObject);
    procedure N36Click(Sender: TObject);
    procedure N37Click(Sender: TObject);
    procedure N42Click(Sender: TObject);
    procedure N43Click(Sender: TObject);
    procedure N44Click(Sender: TObject);
    procedure N24Click(Sender: TObject);
    procedure N63Click(Sender: TObject);
    procedure N64Click(Sender: TObject);
    procedure N65Click(Sender: TObject);
    procedure N68Click(Sender: TObject);
    procedure N69Click(Sender: TObject);
    procedure N70Click(Sender: TObject);
    procedure N71Click(Sender: TObject);
    procedure N72Click(Sender: TObject);
    procedure N74Click(Sender: TObject);
    procedure N75Click(Sender: TObject);
    procedure N76Click(Sender: TObject);
    procedure N77Click(Sender: TObject);
    procedure N78Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure N12Click(Sender: TObject);
    procedure bl_zskClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure tab_zskExit(Sender: TObject);
    procedure N150Click(Sender: TObject);
    procedure grid_yzKeyPress(Sender: TObject; var Key: Char);
    procedure chk_qyClick(Sender: TObject);
    procedure cxgrid_yzypylPropertiesEditValueChanged(Sender: TObject);
    procedure cxgrid_yzEditKeyDown(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit; var Key: Word;
      Shift: TShiftState);
    procedure grid_yzExit(Sender: TObject);
    procedure grid_yzDblClick(Sender: TObject);
    procedure cxgrid_yzjyybPropertiesEditValueChanged(Sender: TObject);
    procedure cxgrid_yzColumn1PropertiesCloseUp(Sender: TObject);
    procedure cxgrid_yzCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxgrid_yzCustomDrawColumnHeader(Sender: TcxGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridColumnHeaderViewInfo;
      var ADone: Boolean);
    procedure cxgrid_yzCustomDrawIndicatorCell(Sender: TcxGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxCustomGridIndicatorItemViewInfo;
      var ADone: Boolean);
    procedure cxgrid_yzyytjPropertiesCloseUp(Sender: TObject);
    procedure dbg_yytjKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbg_yytjExit(Sender: TObject);
    procedure dbg_yytjDblClick(Sender: TObject);
    procedure bt_yz_addClick(Sender: TObject);
    procedure cxgrid_yzypyfPropertiesCloseUp(Sender: TObject);
    procedure ad_wczbrAfterScroll(DataSet: TDataSet);
    procedure DBGrid_JbKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid_JbExit(Sender: TObject);
    procedure DBGrid_JbDblClick(Sender: TObject);
    procedure btnxzyfClick(Sender: TObject);
    procedure edt_zskKeyPress(Sender: TObject; var Key: Char);
    procedure btn_jymbClick(Sender: TObject);
    procedure qry_yzAfterPost(DataSet: TDataSet);
    procedure cxgrid_yzCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure cxgrid_yzslPropertiesEditValueChanged(Sender: TObject);
    procedure btn_zxyzClick(Sender: TObject);
    procedure dbgrd_zxqhExit(Sender: TObject);
    procedure bt_ztsaveClick(Sender: TObject);
    procedure edit_tmhEnter(Sender: TObject);
    procedure btn_cancelClick(Sender: TObject);
    procedure chk_qkClick(Sender: TObject);
    procedure rb_brClick(Sender: TObject);
    procedure rb_qkClick(Sender: TObject);
    procedure rb_qyClick(Sender: TObject);
    procedure edit_tmhExit(Sender: TObject);
    procedure btn_excelClick(Sender: TObject);
    procedure btn_cxlsyzClick(Sender: TObject);
    procedure cxgrdbndtblvw_lsyzCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cab_lsyzExit(Sender: TObject);
    procedure cxgrid_yzlbPropertiesCloseUp(Sender: TObject);
    procedure cxgrid_yzlbPropertiesEditValueChanged(Sender: TObject);
    procedure cxgrid_yzsxPropertiesEditValueChanged(Sender: TObject);
    procedure sp_brxxBeforeScroll(DataSet: TDataSet);
    procedure sp_brxxAfterScroll(DataSet: TDataSet);
  private
    procedure yzNew(fs: integer);
    procedure yzXmsr(fs: integer);
    procedure yzlbsr(fs: integer);
    procedure ypjjxx;
    procedure ypjs;
    procedure qtjs;
    procedure setcoledit;
    procedure tjyzfcqyz;
    procedure sljc(fs: integer);
    procedure yz_lr_yz;
    procedure yz_cx_cqph(yzsx: string);
    function yz_cx_yfjsypsl: real;
    procedure getmaxid;
    procedure seteditright;
    procedure blxb_check;
    procedure locatedzbl;
    procedure treecreate;
    procedure selectmb;
    procedure setmicro;
    procedure grid_yzlr_edit;
    procedure yzlrzt;
    procedure grid_yzlr_nextcol;
    procedure grid_yzlr_next;
    function grid_yzlr_ypsl: boolean;
    procedure icd10_sypl;
    procedure proc_xzyf;
    procedure proc_zysave;
    procedure proc_add_zyyddm(v_yddm: string);
    function func_jsyear(ystr: string): Integer;
    procedure proc_btenable(bt_enable: string);
    procedure proc_yzbj;
    procedure proc_getyztobl;
    function func_kcjd(yfdm, xmdm: string; zxdwsl: Real): Boolean;
    procedure proc_kcjc(clfs: Boolean);
 { Private declarations }
  public
    scbz, ztid: integer;
    clph, xmph, ypph, jcph, jyph, qtph: string; //��ҩ�����ƣ���ҩ����飬����,����
    prv_zyfdm, prv_xyfdm, zyyz_mbmc: string; //ҽ��ģ������
    //���ﲡ�˵�ǰ���� ,�����༭��ʽ��tmh,zyh,�Ա�������ƣ�ҽ����ǰ�����ֶ�
    zy_kdys, se_value, locatename, editmode, pub_key, zy_tmh, zy_zyh, zy_brxb, zy_zdmc: string;
    mbdy, tree_crbz, bledit, yzedit: boolean; //���ν���ʱ
    P_zycfje: Real;
    function find_current_yzxm(xmdm: string): integer;
        { Public declarations }
  end;

var
  frm_zyblinput: Tfrm_zyblinput;
  yzsx, yzlb: string; //ҽ�����
  clfs: string; //������ʽ ҩƷ,ҽ��
  zdbz, kzbz, tzbz, wz: integer; //���Ʊ�־
  iscrb: boolean;
  zyjs, zyff: string; //��ҩ��������ҩ����

implementation

{$R *.dfm}
uses p_dm, p_func, p_treeview_ctxz, p_treeview_ctwh, p_yzfz, p_yzzt,
  p_zyyzmbmc, p_xz_fyyf, p_jyxmwrite, p_zyjs,
  P_TreeView_address;

procedure Tfrm_zyblinput.proc_kcjc(clfs: Boolean);
begin
  if yzlb = '��ҩ' then
  begin
    if func_kcjd(prv_xyfdm, Trim(qry_yz.FieldByName('xmdm').AsString), qry_yz.FieldByName('ypbzbl').AsInteger * qry_yz.FieldByName('sl').AsFloat) then
    begin
      Application.MessageBox(PChar(Trim(qry_yz.FieldByName('xmmc').AsString) + #13 + 'ҩƷ��治�㣬��ע��!!'), '��ʾ', 0 + 48);
      qry_yz.Edit;
      qry_yz.FieldByName('sl').AsFloat := 0;
      qry_yz.Post;
      if clfs then
      begin
        cxgrid_mzyz.SetFocus;
        cxgrid_yz.Controller.FocusedColumnIndex := 7;
        keybd_event(13, 0, 0, 0);
        Abort;
      end;
    end;
  end
  else
    if yzlb = '��ҩ' then
    begin
      if func_kcjd(prv_zyfdm, Trim(qry_yz.FieldByName('xmdm').AsString), qry_yz.FieldByName('ypyl').AsFloat * qry_yz.FieldByName('ypbzbl').AsInteger * qry_yz.FieldByName('sl').AsFloat) then
      begin
        Application.MessageBox(PChar(Trim(qry_yz.FieldByName('xmmc').AsString) + #13 + 'ҩƷ��治�㣬��ע��!!'), '��ʾ', 0 + 48);
        qry_yz.Edit;
        qry_yz.FieldByName('sl').AsFloat := 0;
        qry_yz.FieldByName('ypyl').AsFloat := 1;
        qry_yz.Post;
        if clfs then
        begin
          cxgrid_mzyz.SetFocus;
          cxgrid_yz.Controller.FocusedColumnIndex := 7;
          keybd_event(13, 0, 0, 0);
          Abort;
        end;
      end;
    end;
end;

function Tfrm_zyblinput.func_kcjd(yfdm, xmdm: string; zxdwsl: Real): Boolean;
begin
  with DM_data.qry_pub do
  begin
    Close;
    SQL.Text := 'select * from xyf_ypkc where ypdm=' + #39 + xmdm + #39 + ' and ksdm=' + #39 + yfdm + #39 + ' and zxdwsl>=' + floattostr(zxdwsl);
    Open;
  end;
  if DM_data.qry_pub.IsEmpty then
    Result := True
  else
    Result := False;
end;

procedure Tfrm_zyblinput.proc_getyztobl;
begin
//    TEMRPad30(Pub_CallControl).UniversalBoolFunction(v_Str,'',2,0);
end;



procedure Tfrm_zyblinput.proc_btenable(bt_enable: string);
begin
  if bt_enable = 'edit' then
  begin
    bt_yz_add.Enabled := False;
    bt_saveyz.Enabled := True;
    bt_zt.Enabled := True;
    btn_jymb.Enabled := True;
    btn_zxyz.Enabled := False;
    btnxzyf.Enabled := True;
    btn_cancel.Enabled := True;
    yzedit := True;
  end
  else
    if bt_enable = 'save' then
    begin
      bt_yz_add.Enabled := True;
      bt_saveyz.Enabled := False;
      bt_zt.Enabled := False;
      btn_jymb.Enabled := False;
      btn_zxyz.Enabled := True;
      btnxzyf.Enabled := False;
      btn_cancel.Enabled := False;
      pan_brxx.Enabled := True;
      yzedit := False;
      edit_tmh.SetFocus;
    end
    else
      if bt_enable = 'zxyz' then
      begin
        bt_yz_add.Enabled := True;
        bt_saveyz.Enabled := False;
        bt_zt.Enabled := False;
        btn_jymb.Enabled := False;
        btn_zxyz.Enabled := False;
        btnxzyf.Enabled := False;
        yzedit := False;
        edit_tmh.SetFocus;
      end
      else
        if bt_enable = 'cancel' then
        begin
          bt_yz_add.Enabled := True;
          bt_saveyz.Enabled := False;
          bt_zt.Enabled := False;
          btn_jymb.Enabled := False;
          btn_zxyz.Enabled := True;
          btn_cancel.Enabled := False;
          btnxzyf.Enabled := False;
          pan_brxx.Enabled := True;
          yzedit := False;
          edit_tmh.SetFocus;
        end;

end;

function Tfrm_zyblinput.func_jsyear(ystr: string): Integer;
begin
  if Pos('��', ystr) > 0 then
    Result := StrToInt(Copy(ystr, 1, Pos('��', ystr) - 1))
  else
    Result := 0;
end;

procedure Tfrm_zyblinput.proc_add_zyyddm(v_yddm: string); //������ҩҩ��
begin
  dm_data.qry_pub.Close;
  dm_data.qry_pub.SQL.Text := 'select * from sys_ypdm where ypdm=' + #39 + Trim(v_yddm) + #39;
  dm_data.qry_pub.Open;
  qry_yz.Append;
  qry_yz.FieldByName('lb').AsString := '��ҩ';
  qry_yz.FieldByName('ph').AsString := clph;
  qry_yz.FieldByName('xmdm').AsString := Trim(v_yddm);
  qry_yz.FieldByName('dw').AsString := Trim(dm_data.qry_pub.FieldByName('mzyfdw').AsString);
  qry_yz.FieldByName('ypdwid').AsInteger := dm_data.qry_pub.FieldByName('mzdwid').AsInteger;
  qry_yz.FieldByName('ypbzbl').AsInteger := dm_data.qry_pub.FieldByName('mzyfzhl').AsInteger;
  qry_yz.FieldByName('sl').AsInteger := 1;
  qry_yz.FieldByName('yplsj').AsFloat := dm_data.qry_pub.FieldByName('mzlsj').AsFloat;
  qry_yz.FieldByName('ypcgj').AsFloat := dm_data.qry_pub.FieldByName('mzpfj').AsFloat;
  qry_yz.FieldByName('xmmc').AsString := Trim(dm_data.qry_pub.FieldByName('ypmc').AsString);
  qry_yz.FieldByName('xh').AsInteger := 0;
  qry_yz.FieldByName('bz').AsString := 'ҩ��';
  qry_yz.Post;
end;

procedure Tfrm_zyblinput.proc_zysave;
var
  v_is_addyd: Boolean; //����ҩ��
begin
  try
    application.CreateForm(Tfrm_zyjs, frm_zyjs);
    frm_zyjs.pub_cfje := P_zycfje;
    frm_zyjs.ShowModal;
    v_is_addyd := frm_zyjs.CheckBox1.Checked;
  finally
    frm_zyjs.free;
  end;
  if v_is_addyd then //����ҩ��
    if pub_ydypdm = '' then
      application.MessageBox('ϵͳ����Աû�����üӵ���ҩҩ�����룬����ϵͳ����Ա��ϵ!', '��ʾ', 0 + 48)
    else
      proc_add_zyyddm(pub_ydypdm);
  qry_yz.First;
  while not qry_yz.Eof do
  begin
    if (not qry_yz.FieldByName('zxbz').AsBoolean) and
      (qry_yz.FieldByName('lb').AsString = '��ҩ') then
    begin
      qry_yz.Edit;
      qry_yz.FieldByName('bz').AsString := zyff; //��ҩ�÷�
      qry_yz.FieldByName('ypyl').AsFloat := StrToFloat(zyjs); //��������
      qry_yz.FieldByName('ypcgj').AsFloat := qry_yz.FieldByName('sl').AsInteger * qry_yz.FieldByName('yplsj').AsFloat * qry_yz.FieldByName('ypyl').AsFloat;
      qry_yz.Post;
      if not qry_yz.IsEmpty then
        proc_kcjc(True); //�����
    end;
    qry_yz.Next;
  end;
end;

procedure Tfrm_zyblinput.proc_xzyf;
begin
  if pub_xyxzyf then //��ҩѡ��ҩ��
  begin
    if yzlb = '��ҩ' then
    begin
      Prv_xyfdm := func_Show_yfxz('02'); //02 ��ҩ��
      if prv_xyfdm = '' then
      begin
        Application.MessageBox('��ʾ:��ѡ����ҩ��!', '��ʾ', 16);
        Exit;
      end;
    end
    else
      if yzlb = '��ҩ' then
      begin
        prv_zyfdm := func_Show_yfxz('04'); //04 ��ҩ��
        if prv_zyfdm = '' then
        begin
          Application.MessageBox('��ʾ:��ѡ����ҩ��!', '��ʾ', 16);
          Exit;
        end;
      end;
  end
  else
  begin
    with DM_data.qry_pub do
    begin
      Close;
      SQL.Text := 'select * from sys_ksdm where dm =' + #39 + pub_ksdm + #39;
      Open;
    end;
    prv_xyfdm := DM_data.qry_pub.FieldByName('xgks').AsString;
    prv_zyfdm := DM_data.qry_pub.FieldByName('chyf').AsString;
    if (prv_zyfdm = '') or (prv_xyfdm = '') then
      Application.MessageBox('���ڱ�רҵ�ϰ���Ӧ����ҩ������ҩ��!', '��ʾ', 0 + 48);
  end;
end;

procedure Tfrm_zyblinput.proc_yzbj;
begin
  refresh_yz;
  proc_btenable('edit');
  cxgrd_yzlbpx.GroupIndex := -1;
  cxgrid_yzfzph.GroupIndex := -1;
  qry_yz.Last;
  cxgrid_mzyz.SetFocus;
  cxgrid_yz.OptionsData.Editing := True;
  yzNew(kzbz);
end;


procedure Tfrm_zyblinput.icd10_sypl;
begin
  sp_up_jbsypl.close;
  sp_up_jbsypl.Parameters.ParamByName('@ysdm').value := pub_czydm;
  sp_up_jbsypl.Parameters.ParamByName('@jbdm').value := trim(ad_jbcx.fieldbyname('mbm').asstring);
  sp_up_jbsypl.ExecProc;
end;

function Tfrm_zyblinput.grid_yzlr_ypsl: boolean;
var
  ypdmold, ypdm, ypphxy: string;
  ypsl: integer;
begin
  qry_yz.First;
  yzlb := qry_yz.FieldByName('lb').AsString;
  yzsx := qry_yz.FieldByName('yzsx').AsString;
  ypdm := qry_yz.FieldByName('xmdm').AsString;
  ypphxy := qry_yz.FieldByName('ph').AsString;
  ypsl := 0;
  ypdmold := '';
  ypdm := '1';
  while not qry_yz.Eof do
  begin
    if (yzlb = '��ҩ') and (ypdm <> ypdmold) and (ypphxy = '') then
      ypsl := ypsl + 1;
    ypdmold := qry_yz.FieldByName('xmdm').AsString;
    qry_yz.Next;
    yzlb := qry_yz.FieldByName('lb').AsString;
    ypdm := qry_yz.FieldByName('xmdm').AsString;
    ypphxy := qry_yz.FieldByName('ph').AsString;
  end;
  if ypsl > 5 then
    Result := True
  else
    Result := False;
end;

procedure Tfrm_zyblinput.grid_yzlr_next;
begin
  //�ҵ�������ת����Ӧ�����ֶΣ�û�ҵ�������ת
  if tzbz = 1 then
    grid_yzlr_nextcol;
end;

procedure Tfrm_zyblinput.grid_yzlr_nextcol;
begin
  if cxgrid_yz.Controller.FocusedColumnIndex = 0 then
    cxgrid_yz.Controller.FocusedColumnIndex := 1 //yzsx
  else
    if cxgrid_yz.Controller.FocusedColumnIndex = 1 then
      cxgrid_yz.Controller.FocusedColumnIndex := 2 //xmmc
    else
      if yzlb = '��ҩ' then
      begin
        if cxgrid_yz.Controller.FocusedColumnIndex = 2 then
          cxgrid_yz.Controller.FocusedColumnIndex := 3 //ypyl
        else
          if cxgrid_yz.Controller.FocusedColumnIndex = 3 then
            cxgrid_yz.Controller.FocusedColumnIndex := 5 //ypyf
          else
            if cxgrid_yz.Controller.FocusedColumnIndex = 5 then
            begin
              cxgrid_yz.Controller.FocusedColumnIndex := 6; //yytj
              qry_yz.Edit;
              qry_yz.FieldByName('sl').AsFloat := yz_cx_yfjsypsl;
              qry_yz.Post;
              if qry_yz.FieldByName('sl').AsFloat > 0 then
                proc_kcjc(False); //ҩƷ�����
            end
            else
              if cxgrid_yz.Controller.FocusedColumnIndex = 6 then
                cxgrid_yz.Controller.FocusedColumnIndex := 7; //ypsl
      end
      else
        if yzlb = '��ҩ' then
        begin
          if cxgrid_yz.Controller.FocusedColumnIndex = 2 then
            cxgrid_yz.Controller.FocusedColumnIndex := 7 //ypsl

        end
        else
          if (yzlb = '���') or (yzlb = '����') then
          begin
            if cxgrid_yz.Controller.FocusedColumnIndex = 2 then
              cxgrid_yz.Controller.FocusedColumnIndex := 7 //ypsl
            else
              if cxgrid_yz.Controller.FocusedColumnIndex = 7 then
                cxgrid_yz.Controller.FocusedColumnIndex := 10; //czks
          end
          else
            if yzlb = '����' then
            begin
              if cxgrid_yz.Controller.FocusedColumnIndex = 2 then
                cxgrid_yz.Controller.FocusedColumnIndex := 7 //ypsl
              else
                if cxgrid_yz.Controller.FocusedColumnIndex = 7 then
                  cxgrid_yz.Controller.FocusedColumnIndex := 9 //jyyb
                else
                  if cxgrid_yz.Controller.FocusedColumnIndex = 9 then
                    cxgrid_yz.Controller.FocusedColumnIndex := 10; //czks
            end;
  keybd_event(13, 0, 0, 0);
end;

procedure Tfrm_zyblinput.yzlrzt;
begin
  if bledit then
  begin
    zz.ActivePage := tab_bl;
    application.MessageBox('���в���������д�����ȴ���!', '��ʾ', 0 + 48);
    abort;
  end else
    if yzedit then
    begin
      zz.ActivePage := tab_yz;
      application.MessageBox('����ҽ������¼�룬���ȴ���!', '��ʾ', 0 + 48);
      abort;
    end;
end;

procedure Tfrm_zyblinput.setmicro;
var
  fd, fdvalue: string;
begin
  sp_cx_micro.Active := false;
  sp_cx_micro.Parameters.ParamByName('@tmh').Value := zy_tmh;
  sp_cx_micro.Open;
  qry_pub.Close;
  qry_pub.SQL.Text := 'EXEC sp_columns @table_name =zydzbl_micro';
  qry_pub.Open;
  qry_pub.First;
  while not qry_pub.Eof do
  begin
    fd := qry_pub.FieldByName('Column_Name').AsString;
    if fd = '�Ա�' then
      zy_brxb := trim(sp_cx_micro.FieldByName(fd).AsString);
    if fd = 'סԺ��' then
      fdvalue := copy(trim(sp_cx_micro.FieldByName('����').AsString), 2, 8)
    else
      fdvalue := trim(sp_cx_micro.FieldByName(fd).AsString);
    EMRPad301.SetMicroFiled(fd, fdvalue);
    qry_pub.Next;
  end;
  EMRPad301.SetMicroFiled('����', pub_czyxm);
  EMRPad301.UpdateMicroField(true);
end;


procedure Tfrm_zyblinput.selectmb;
begin
  if rbqb.Checked then
    rbqbClick(self)
  else if rbks.Checked then
    rbksClick(self)
  else if rbgr.Checked then
    rbgrClick(self)
  else if rbgg.Checked then
    rbggClick(self);
  qry_mbmx.close;
  qry_mbmx.Parameters.ParamByName('dldm').value := copy(pub_key, 1, 2) + '%';
  qry_mbmx.open;
end;

procedure Tfrm_zyblinput.treecreate;
var
  sqlstr: string;
const
  zp = '2332';
  zplbdm = 'dm';
  zplbmc = 'mc';
  zptable = 'zptable';
  zptableorder = 'dm';
begin
  sqlstr := ' select * from (select dm,mc, space(16) zyh from sys_dzbl_mbfl where mzbz=1 and substring(dm,1,2)<>12 ' +
    '   union all   ' +
    ' select rtrim(fldm)+blid dm ,blmc,zyh  from mzdzbl_dzblmx ' +
    '  where zyh=' + #39 + zy_zyh + #39 + '  )bl  order by dm ';
  tree_crbz := true;
  frm_func.Tree_db_create(treeviewzp, zptable, zptableorder, zplbdm, zplbmc, zp, sqlstr);
  treeviewzp.FullExpand;
  treeviewzp.SetFocus;
  tree_crbz := false;
  sqlstr := 'select * from sys_dzbl_mbfl where substring(dm,1,2)=12 order by dm ';
  frm_func.Tree_db_create(TreeViewgjc, '', zptableorder, zplbdm, zplbmc, zp, sqlstr);
end;

procedure Tfrm_zyblinput.locatedzbl;
var
  txt: string;
  i: integer;
begin
  i := 0;
  for i := 0 to treeviewzp.Items.Count - 1 do
    if treeviewzp.Items[i].Level > 0 then
    begin
      txt := trim(treeviewzp.Items[i].text);
      if txt = locatename then
      begin
        treeviewzp.Items[i].Selected := true;
        exit;
      end;
    end;
end;

procedure Tfrm_zyblinput.blxb_check;
begin
  if zy_brxb = '��' then
  begin
    if EMRPad301.FindField('�¾�ʷ%', -1, 1, true) then
      EMRPad301.UniversalBoolFunction('', '', 36, 0);
    if EMRPad301.FindField('����ʷ%', -1, 1, true) then
      EMRPad301.UniversalBoolFunction('', '', 36, 0);
  end;
end;

procedure Tfrm_zyblinput.seteditright;
var
  xdxx: string;
  ComputerBuf: array[0..127] of Char;
  ComputerBufLen: DWord;
begin
  ComputerBufLen := 128;
  GetComputerName(ComputerBuf, ComputerBufLen);
  xdxx := formatdatetime('yymmdd hh:mm AM/PM ', frm_func.curr_date) + ';' + string(ComputerBuf);
  editbl.Visible := true;
  viewbl.Visible := true;
  tablebl.Visible := true;
  fzbl.Visible := true;
  filebl.Visible := true;
  Nbj_del.Enabled := true;
  tab_bl.PopupMenu := PopupMenuedit;
  blxb_check; //�Ա���
  EMRPad301.UniversalBoolFunction('סԺ��', pub_tmh, 35, 2);
  EMRPad301.SetDocumentMode(1);
  bledit := true;
end;

procedure Tfrm_zyblinput.getmaxid;
begin
  qry_pub.Close;
  qry_pub.SQL.Text := 'select max(blid) maxid from zydzbl_zydzblmx where zyh=' + '''' + zy_zyh + '''';
  qry_pub.Open;
  if qry_pub.FieldByName('maxid').AsString = '' then
    pub_blid := '001'
  else
    pub_blid := formatex(strtoint(qry_pub.FieldByName('maxid').AsString) + 1, 3);
end;

function Tfrm_zyblinput.yz_cx_yfjsypsl: real;
begin
  with sp_cx_yzyljssl do
  begin
    close;
    Parameters.ParamByName('@ypdm').Value := qry_yz.FieldByName('xmdm').AsString;
    Parameters.ParamByName('@ypyf').Value := qry_yz.FieldByName('ypyf').AsString;
    Parameters.ParamByName('@ypyl').Value := qry_yz.FieldByName('ypyl').AsFloat;
    open;
  end;
  Result := realtomoney1(sp_cx_yzyljssl.fieldbyname('ypsl').AsFloat / 10) * 10;
end;

procedure Tfrm_zyblinput.yz_cx_cqph(yzsx: string);
begin
  ypph := '';
  jcph := '';
  jyph := '';
  clph := '';
  xmph := '';
  qry_yz.first;
  while not qry_yz.Eof do
  begin
    if trim(qry_yz.FieldByName('lb').AsString) = '��ҩ' then
    begin
      if trim(qry_yz.FieldByName('ph').AsString) <> '' then
        ypph := trim(qry_yz.FieldByName('ph').Value);
    end
    else
      if trim(qry_yz.FieldByName('lb').AsString) = '��ҩ' then
      begin
        if trim(qry_yz.FieldByName('ph').AsString) <> '' then
          clph := trim(qry_yz.FieldByName('ph').Value);
      end
      else
        if trim(qry_yz.FieldByName('lb').AsString) = '����' then
        begin
          if trim(qry_yz.FieldByName('ph').AsString) <> '' then
            xmph := trim(qry_yz.FieldByName('ph').Value);
        end
        else
          if trim(qry_yz.FieldByName('lb').AsString) = '����' then
          begin
            if trim(qry_yz.FieldByName('ph').AsString) <> '' then
              jyph := trim(qry_yz.FieldByName('ph').Value);
          end
          else
            if trim(qry_yz.FieldByName('lb').AsString) = '���' then
            begin
              if trim(qry_yz.FieldByName('ph').AsString) <> '' then
                jcph := trim(qry_yz.FieldByName('ph').Value);
            end
            else
              if trim(qry_yz.FieldByName('lb').AsString) = '����' then
              begin
                if trim(qry_yz.FieldByName('ph').AsString) <> '' then
                  qtph := trim(qry_yz.FieldByName('ph').Value);
              end;
    qry_yz.Next;
  end;

end;

procedure Tfrm_zyblinput.yz_lr_yz;
var
  xh: integer;
begin
  qry_yz.First;
  xh := 1;
  while not qry_yz.Eof do
  begin
    qry_yz.edit;
    qry_yz.FieldByName('kdys').Value := pub_czydm;
    qry_yz.FieldByName('kdrq').Value := frm_func.curr_date;
    qry_yz.FieldByName('xh').Value := xh;
    qry_yz.post;
    if (trim(qry_yz.FieldByName('xmmc').AsString) = '') or (qry_yz.FieldByName('sl').AsInteger = 0) then
      qry_yz.Delete
    else
      xh := xh + 1;
    if not qry_yz.IsEmpty then
      proc_kcjc(True); //�����
    qry_yz.Next;
  end;
  qry_yz.First;
  while not qry_yz.Eof do
  begin
    if (trim(qry_yz.FieldByName('lb').AsString) = '') then
    begin
      showMessage('������ҽ�����!');
      cxgrid_mzyz.SetFocus;
      cxgrid_yz.Controller.FocusedColumnIndex := 1;
      abort;
    end
    else
      if (trim(qry_yz.FieldByName('lb').AsString) <> '��ҩ') and
        (trim(qry_yz.FieldByName('lb').AsString) <> '��ҩ') and
        (trim(qry_yz.FieldByName('lb').AsString) <> '����') and
        (trim(qry_yz.FieldByName('lb').AsString) <> '����') and
        (trim(qry_yz.FieldByName('lb').AsString) <> '���') then
      begin
        showMessage('ҽ������������!����������!');
        cxgrid_mzyz.SetFocus;
        cxgrid_yz.Controller.FocusedColumnIndex := 1;
        abort;
      end;
    //---------------ҩƷ��ҩ;��-----------------------------
    if (trim(qry_yz.FieldByName('lb').AsString) = '��ҩ') then
    begin
      if not dm_data.qry_gytj.Locate('mc', qry_yz.FieldByName('yytj').AsString, []) then
      begin
        showMessage('��ҩ;�������������������!');
        cxgrid_mzyz.SetFocus;
        cxgrid_yz.Controller.FocusedColumnIndex := 6;
        abort;
      end;
    end;
            //----------------ҩƷ�÷�-----------------------------------
    if (trim(qry_yz.FieldByName('lb').AsString) = 'ҩƷ') then
    begin
      if not dm_data.qry_ypyf.Locate('mc', qry_yz.FieldByName('ypyf').AsString, []) then
      begin
        showMessage('ҩƷ�÷������������������!');
        cxgrid_mzyz.SetFocus;
        cxgrid_yz.Controller.FocusedColumnIndex := 5;
        abort;
      end;
    end;
            //----------------ҩƷ����-----------------------------------
    if (trim(qry_yz.FieldByName('lb').AsString) = 'ҩƷ') then
    begin
      try
        if qry_yz.FieldByName('ypyl').AsFloat = 0 then
        begin
          showMessage('ҩƷ���������������������������!');
          cxgrid_mzyz.SetFocus;
          cxgrid_yz.Controller.FocusedColumnIndex := 3;
          abort;
        end;
      except
        showMessage('ҩƷ���������������������������!');
        cxgrid_mzyz.SetFocus;
        cxgrid_yz.Controller.FocusedColumnIndex := 3;
        abort;
      end;
    end;
        //------------------ ���ÿ���-------------------------
    qry_ks.Filtered := false;
    if (trim(qry_yz.FieldByName('lb').AsString) <> '��ҩ') or
      (trim(qry_yz.FieldByName('lb').AsString) <> '��ҩ') then
    begin
      if (trim(qry_yz.FieldByName('czks').AsString) = '') then
      begin
        showMessage('������ҽ�����ÿ���!');
        cxgrid_mzyz.SetFocus;
        cxgrid_yz.Controller.FocusedColumnIndex := 10;
        abort;
      end
      else
      begin
        if not qry_ks.Locate('dm', trim(qry_yz.FieldByName('czks').AsString), []) then
        begin
          showMessage('���ÿ����������!����������!');
          cxgrid_mzyz.SetFocus;
          cxgrid_yz.Controller.FocusedColumnIndex := 10;
          abort;
        end;
      end;
    end;
        //------------------��Ŀ���������һ����У��-------------------
    if not qry_xmyz.Locate('xmmc', trim(qry_yz.FieldByName('xmmc').AsString), []) then
    begin
      showMessage('ҽ����Ŀ�����������!����������!');
      cxgrid_mzyz.SetFocus;
      cxgrid_yz.Controller.FocusedColumnIndex := 2;
      abort;
    end;
        //------------------��Ŀ�����һ����У��-------------------
    qry_xmyz.Locate('xmdm', trim(qry_yz.FieldByName('xmdm').AsString), []);
    if qry_xmyz.FieldByName('lb').AsString <> qry_yz.FieldByName('lb').AsString then
    begin
      showMessage('��Ŀ��ҽ�����һ�´���!����������!' + #13 + '��ǰ��Ŀ���Ϊ "' + qry_xmyz.FieldByName('lb').AsString + '"');
      cxgrid_mzyz.SetFocus;
      cxgrid_yz.Controller.FocusedColumnIndex := 1;
      abort;
    end;
    qry_yz.next;
  end;
end;


procedure Tfrm_zyblinput.saveblClick(Sender: TObject);
begin
  bt_savebl.click;
end;

procedure Tfrm_zyblinput.sljc(fs: integer);
var
  lr_sl_text: string;
  lr_sl: real;
begin
  lr_sl_text := cxgrid_yz.Controller.EditingController.Edit.EditValue;
  try
    lr_sl := strtofloat(lr_sl_text);
  except
    tzbz := 0;
    showMessage('�����������������������!');
  end;
  if lr_sl <= 0 then
  begin
    tzbz := 0;
    showMessage('ҩƷ���������������������������!');
  end
  else
    if (lr_sl > 1000) and (cxgrid_yz.Controller.FocusedColumnIndex = 7) then
    begin
      tzbz := 0;
      application.MessageBox('��������̫����ע�⣡', '��ʾ', 0 + 48);
    end
    else
      if (lr_sl > 1000) and (cxgrid_yz.Controller.FocusedColumnIndex = 3) then
      begin
        tzbz := 0;
        application.MessageBox('��������̫����ע�⣡', '��ʾ', 0 + 48);
      end;
  grid_yzlr_next;
end;

procedure Tfrm_zyblinput.sp_brxxAfterScroll(DataSet: TDataSet);
begin
  edit_tmh.Text := sp_brxx.FieldByName('tmh').AsString;
end;

procedure Tfrm_zyblinput.sp_brxxBeforeScroll(DataSet: TDataSet);
begin
  if bledit or yzedit then
    yzlrzt
  else
    if sp_brxx.fieldbyname('clbz').asboolean then
    begin
      sp_brxx.Edit;
      sp_brxx.fieldbyname('clbz').asboolean := false;
      sp_brxx.Post;
      zz.Enabled := false;
    end;
end;

procedure Tfrm_zyblinput.bt_refreshClick(Sender: TObject);
var
  s_tmh: string;
begin
  s_tmh := '';
  if sp_brxx.Active then
  begin
    s_tmh := sp_brxx.fieldbyname('tmh').asstring;
    sp_brxx.close;
  end;
  if rb_qk.Checked then
  begin
    sp_brxx.Parameters.ParamByName('@bqdm').Value := pub_bqdm;
    sp_brxx.Parameters.ParamByName('@ysdm').Value := '';
  end
  else
    if rb_qy.Checked then
    begin
      sp_brxx.Parameters.ParamByName('@bqdm').Value := '';
      sp_brxx.Parameters.ParamByName('@ysdm').Value := '';
    end
    else
    begin
      sp_brxx.Parameters.ParamByName('ysdm').Value := pub_czydm;
      sp_brxx.Parameters.ParamByName('ksdm').Value := pub_ksdm;
    end;
  sp_brxx.open;
  if not sp_brxx.IsEmpty then
    sp_brxx.Locate('tmh', s_tmh, []);
end;


function Tfrm_zyblinput.find_current_yzxm(xmdm: string): integer;
var
  prv_r, temp: integer;
  P_zxbz: Boolean;
begin
  P_zxbz := False;
  temp := qry_yz.recno;
  if qry_yz.Locate('xmdm;zxbz', vararrayof([xmdm, P_zxbz]), []) then
    prv_r := 1
  else
    prv_r := 0;
  if (prv_r = 1) and (qry_yz.fieldbyname('yytj').AsString = '����') then
    prv_r := 0;
  if temp = -1 then
    qry_yz.recno := qry_yz.RecordCount
  else
    qry_yz.recno := temp;
  result := prv_r;
  qry_yz.Edit;
  qry_yz.Post;
end;


procedure Tfrm_zyblinput.tjyzfcqyz;
begin
  qry_yz.Edit;
  if trim(qry_yz.FieldByName('lb').AsString) = '��ҩ' then
  begin
    if ypph = '' then
    begin
      ypph := get_sjh(pub_czydm);
    end;
    qry_yz.FieldByName('ph').Value := ypph;
  end
  else
    if trim(qry_yz.FieldByName('lb').AsString) = '��ҩ' then
    begin
      if clph = '' then
      begin
        clph := get_sjh(pub_czydm);
      end;
      qry_yz.FieldByName('ph').Value := clph;
    end
    else
      if trim(qry_yz.FieldByName('lb').AsString) = '����' then
      begin
        if xmph = '' then
        begin
          xmph := get_sjh(pub_czydm);
        end;
        qry_yz.FieldByName('ph').Value := xmph;
      end
      else
        if trim(qry_yz.FieldByName('lb').AsString) = '����' then
        begin
          if jyph = '' then
          begin
            jyph := get_sjh(pub_czydm);
          end;
          qry_yz.FieldByName('ph').Value := jyph;
        end
        else
          if trim(qry_yz.FieldByName('lb').AsString) = '���' then
          begin
            if jcph = '' then
            begin
              jcph := get_sjh(pub_czydm);
            end;
            qry_yz.FieldByName('ph').Value := jcph;
          end
          else
            if trim(qry_yz.FieldByName('lb').AsString) = '����' then
            begin
              if qtph = '' then
              begin
                qtph := get_sjh(pub_czydm);
              end;
              qry_yz.FieldByName('ph').Value := qtph;
            end;
  qry_yz.Post;
end;

procedure Tfrm_zyblinput.TreeViewgjcChange(Sender: TObject; Node: TTreeNode);
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

procedure Tfrm_zyblinput.treeviewzpChange(Sender: TObject; Node: TTreeNode);
begin
  if treeviewzp.selected <> nil then
    if (treeviewzp.selected.text <> '') and (not tree_crbz) then
    begin
      pub_name := trim(treeviewzp.selected.text);
      locatename := pub_name;
      qry_pub.Close;
      qry_pub.SQL.Text := 'select fldm,mbdm,blmc from zydzbl_zydzblmx where zyh=' + #39 + zy_zyh + #39 + ' and blmc =' + '''' + locatename + '''';
      qry_pub.Open;
      if trim(qry_pub.FieldByName('fldm').AsString) <> '' then
        pub_key := trim(qry_pub.FieldByName('fldm').AsString)
      else
      begin
        qry_pub.Close;
        qry_pub.SQL.Text := 'select * from sys_dzbl_mbfl where mzbz=1 and mc =' + '''' + pub_name + '''';
        qry_pub.Open;
        if trim(qry_pub.FieldByName('dm').AsString) <> '' then
          pub_key := trim(qry_pub.FieldByName('dm').AsString);
        pub_frm_name := trim(qry_pub.FieldByName('frm_name').AsString);
      end;
    end;
end;

procedure Tfrm_zyblinput.treeviewzpDblClick(Sender: TObject);
var
  stream: TADOBlobStream;
  stream1: TFileStream;
  filename, bcid: string;
  id: integer;
begin
  if (not treeviewzp.Selected.HasChildren) then
  begin
    pub_name := trim(treeviewzp.selected.text);
    treeviewzp.Enabled := false;
    if pub_frm_name <> '' then
    begin
      ExecExistingForm(pub_frm_name);
      treeviewzp.Enabled := true;
    end
    else
    begin
      filename := GetCurrentDir + '\' + 'etemp';
      qry_pub.Close;
      qry_pub.SQL.Text := 'select * from zydzbl_zydzblmx where blmc=' + '''' + pub_name + '''' +
        ' and zyh=' + '''' + zy_zyh + '''';
      qry_pub.Open;
      if not qry_pub.IsEmpty then
      begin
        editmode := 'edit';
        pub_mbdldm := qry_pub.FieldByName('fldm').AsString;
        pub_mbid := qry_pub.FieldByName('mbdm').Asinteger;
        pub_filename := qry_pub.FieldByName('blmc').AsString;
        EMRPad301.universalboolfunction('', '', 46, 1);
        pub_blid := qry_pub.fieldbyname('blid').asstring;
        try
          stream := TADOBlobStream.Create(qry_pub.FieldByName('blwj') as TBlobField, bmRead);
          stream.Position := 0;
          stream1 := TFileStream.Create(filename, fmCreate);
          stream1.Position := 0;
          stream1.CopyFrom(stream, stream.Size);
        finally
          stream1.Free;
          stream.Free;
        end;
        EMRPad301.FileOpen(filename, 0);
        seteditright; //�����ĵ�����Ȩ��
        zz.ActivePage := tab_bl;
        bt_add.Enabled := false;
        bt_savebl.Enabled := true;
      end
      else
        treeviewzp.Enabled := true;
    end;
  end;
end;

procedure Tfrm_zyblinput.wczbrgridDblClick(Sender: TObject);
begin
  if (sp_brxx.Active) and not (bledit or yzedit) then
  begin
    if sp_brxx.RecordCount > 0 then
    begin
      yzlb := '';
      yzsx := '';
      zy_tmh := sp_brxx.fieldbyname('tmh').asstring;
      zy_zyh := sp_brxx.fieldbyname('zyh').asstring;
      sp_brxx.Edit;
      sp_brxx.fieldbyname('clbz').asboolean := true;
      sp_brxx.Post;
      refresh_yz;
      zz.Enabled := true;
      if zz.ActivePage = tab_bl then
      begin
        treecreate;
        setmicro; //���ú�
        emrpad301.FileNew;
      end;
      if pub_mzdzbl then
        zz.ActivePage := tab_bl
      else
        zz.ActivePage := tab_yz;
      if (prv_xyfdm = '') or (prv_zyfdm = '') then
      begin
        yzsx := '����';
        yzlb := '��ҩ';
        proc_xzyf;
        yzlb := '��ҩ';
        proc_xzyf;
      end;
    end;
  end
  else
    application.MessageBox('��ǰ�������ڴ���״̬', '��ʾ', 0 + 48);
end;

procedure Tfrm_zyblinput.wczbrgridDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if sp_brxx.fieldbyname('clbz').asboolean then
  begin
    wczbrgrid.Canvas.Brush.Color := cllime;
    wczbrgrid.Canvas.Font.Color := clblue;
  end;
  if sp_brxx.fieldbyname('jsbz').asboolean then
  begin
    wczbrgrid.Canvas.Brush.Color := cllime;
    wczbrgrid.Canvas.Font.Color := clRed;
  end;

  wczbrgrid.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure Tfrm_zyblinput.wczbrgridKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then wczbrgrid.OnDblClick(Sender);
end;

procedure Tfrm_zyblinput.setcoledit;
begin
  cxgrid_yzypyl.Options.Editing := false;
  cxgrid_yzyldw.Options.Editing := false;
  cxgrid_yzypyf.Options.Editing := false;
  cxgrid_yzyytj.Options.Editing := false;
  cxgrid_yzsl.Options.Editing := false;
  cxgrid_yzjyyb.Options.Editing := false;
  cxgrid_yzczks.Options.Editing := false;
  cxgrid_yzfz.Options.Editing := false;
  if (yzlb = '��ҩ') then
  begin
    cxgrid_yzypyl.Options.Editing := true;
    cxgrid_yzypyf.Options.Editing := true;
    cxgrid_yzyytj.Options.Editing := true;
    cxgrid_yzsl.Options.Editing := true;
    cxgrid_yzfz.Options.Editing := true;
  end
  else
    if (yzlb = '��ҩ') then
    begin
      cxgrid_yzsl.Options.Editing := true;
    end
    else
      if ((yzlb = '����') and isbqkf) then
      begin
        cxgrid_yzsl.Options.Editing := true;
      end
      else
        if (yzlb = '����') then
        begin
          cxgrid_yzsl.Options.Editing := true;
          cxgrid_yzjyyb.Options.Editing := true;
          cxgrid_yzczks.Options.Editing := true;
          cxgrid_yzbz.Options.Editing := true;
          cxgrid_yzfz.Options.Editing := false;
        end
        else
          if (yzlb = '���') or (yzlb = '����') then
          begin
            cxgrid_yzsl.Options.Editing := true;
            cxgrid_yzczks.Options.Editing := true;
            cxgrid_yzbz.Options.Editing := true;
          end;
end;

procedure Tfrm_zyblinput.qtjs;
begin
  qry_yz.Edit;
  qry_yz.fieldbyname('xmdm').value := '';
  qry_yz.Post;
  if find_current_yzxm(sp_cx_yp_yz.FieldByName('xmdm').AsString) = 0 then
  begin
    if (yzlb = '����') and isbqkf then
    begin
      ypinyz;
    end
    else
    begin
      xminyz;
    end;
  end
  else
  begin
    tzbz := 0;
    application.MessageBox('��ǰҽ�������и���Ŀ,�����ٴ����!', '��ʾ��Ϣ', 0 + 16);
  end;
  grid_yz.Visible := false;
end;

procedure Tfrm_zyblinput.ypjs;
var
  P_ypmc: string;
begin
  qry_yz.Edit;
  qry_yz.fieldbyname('xmdm').value := '';
  qry_yz.Post;
  if Pos(Trim(sp_cx_yp_yz.FieldByName('ypdm').AsString), pub_kssypdm) = 0 then
  begin
    if find_current_yzxm(sp_cx_yp_yz.FieldByName('ypdm').AsString) = 0 then
      ypinyz
    else
    begin
      tzbz := 0;
      application.MessageBox('��ǰҽ�������и�ҩƷ,�����ٴ����!', '��ʾ��Ϣ', 0 + 48);
    end;
  end
  else
  begin
    tzbz := 0;
    p_ypmc := '����ϵͳ�е�ְ���޷�ʹ�ã�' + Trim(sp_cx_yp_yz.FieldByName('ypmc').AsString);
    application.MessageBox(PChar(p_ypmc), '��ʾ��Ϣ', 0 + 48);
  end;
end;

procedure Tfrm_zyblinput.ypjjxx;
var
  jjgx: string;
  hisypdm: string;
begin
  hisypdm := '';
  jjgx := '';
  if qry_yz.Active and (zz.ActivePage = tab_bl) then
  begin
    qry_yz.First;
    while not qry_yz.Eof do
    begin
      hisypdm := hisypdm + qry_yz.fieldbyname('xmdm').asstring + ',';
      qry_yz.Next;
    end;
    try
      jjgx := xyyd_jj_js(hisypdm);
    except
      showMessage('��ҩ�����ݿ�,���ɳ�ͻ��ʾ����ִ��!');
      jjgx := '';
    end;
  end;
  if jjgx <> '' then
  begin
    if application.MessageBox(pchar('����ҽ����ϸ�н��ɳ�ͻ' + ''#13'' + jjgx + ''#13'' + '�Ƿ����ִ��?'), '��ʾ��Ϣ', mb_iconquestion + mb_okcancel + mb_defbutton1) = idcancel then
      abort;
  end;
end;

procedure Tfrm_zyblinput.yzlbsr(fs: integer);
var
  lbvalue: string;
begin
  lbvalue := se_value;
  qry_yz.Edit;
  if (lbvalue = '1') or (lbvalue = 'xy') or (lbvalue = '��ҩ') then
    qry_yz.FieldByName('lb').value := '��ҩ'
  else
    if (lbvalue = '2') or (lbvalue = 'zy') or (lbvalue = '��ҩ') then
      qry_yz.FieldByName('lb').value := '��ҩ'
    else
      if (lbvalue = '3') or (lbvalue = 'zl') or (lbvalue = '����') then
        qry_yz.FieldByName('lb').value := '����'
      else
        if (lbvalue = '4') or (lbvalue = 'jy') or (lbvalue = '����') then
          qry_yz.FieldByName('lb').value := '����'
        else
          if (lbvalue = '5') or (lbvalue = 'jc') or (lbvalue = '���') then
            qry_yz.FieldByName('lb').value := '���'
          else
            qry_yz.FieldByName('lb').value := '��ҩ';
//�޸�ҽ���������ԭ�����ϸ
  if yzlb <> lbvalue then
  begin
    qry_yz.FieldByName('xmdm').Value := '';
    qry_yz.FieldByName('xmmc').Value := '';
    qry_yz.FieldByName('sl').Value := 1;
    qry_yz.FieldByName('dw').Value := '';
    qry_yz.FieldByName('ypyf').Value := '';
    qry_yz.FieldByName('ypyl').Value := '';
    qry_yz.FieldByName('yldw').Value := '';
    qry_yz.FieldByName('yytj').Value := '';
    qry_yz.FieldByName('czks').Value := '';
    qry_yz.FieldByName('jyyb').Value := '';
    qry_yz.FieldByName('yplb').Value := '';
    qry_yz.FieldByName('yplsj').Value := 0;
    qry_yz.FieldByName('gg').Value := '';
    qry_yz.FieldByName('bz').Value := '';
  end;
  qry_yz.Post;
  yzlb := qry_yz.FieldByName('lb').Value;
  if (yzlb = '��ҩ') then
  begin
    if prv_xyfdm = '' then
      proc_xzyf;
  end
  else
    if (yzlb = '��ҩ') then
    begin
      if prv_zyfdm = '' then
        proc_xzyf;
    end;
  grid_yzlr_next;
end;


procedure Tfrm_zyblinput.yzXmsr(fs: integer);
var
  ls_cxpym: string;
begin
  ls_cxpym := se_value;
  if (ls_cxpym = '') then
  begin
    tzbz := 0;
    exit;
  end;
  if (yzlb = '��ҩ') then
  begin
    sp_cx_yp_yz.Close;
    sp_cx_yp_yz.Parameters.ParamValues['@pym'] := ls_cxpym;
    sp_cx_yp_yz.Parameters.ParamValues['@ksdm'] := Prv_xyfdm;
    sp_cx_yp_yz.Parameters.ParamValues['@jsfs'] := '0';
    sp_cx_yp_yz.Open;
    if sp_cx_yp_yz.RecordCount > 1 then
    begin
      grid_yp.Visible := true;
      grid_yp.SetFocus;
    end
    else
      if sp_cx_yp_yz.RecordCount = 1 then
      begin
        ypjs;
        grid_yzlr_next;
      end
      else
      begin
        tzbz := 0;
        application.MessageBox('ҩƷδ�ҵ�!', '��ʾ', 0 + 48);
      end;
  end
  else
    if (yzlb = '��ҩ') then
    begin
      sp_cx_yp_yz.Close;
      sp_cx_yp_yz.Parameters.ParamValues['@pym'] := ls_cxpym;
      sp_cx_yp_yz.Parameters.ParamValues['@ksdm'] := prv_zyfdm;
      sp_cx_yp_yz.Parameters.ParamValues['@jsfs'] := '0';
      sp_cx_yp_yz.Open;
      if sp_cx_yp_yz.RecordCount > 1 then
      begin
        grid_yp.Visible := true;
        grid_yp.SetFocus;
      end
      else
        if sp_cx_yp_yz.RecordCount = 1 then
        begin
          ypjs;
          grid_yzlr_next;
        end
        else
        begin
          tzbz := 0;
          application.MessageBox('ҩƷδ�ҵ�!', '��ʾ', 0 + 48);
        end;
    end
    else
    begin
      sp_cx_yp_yz.Close;
      sp_cx_yp_yz.Parameters.ParamValues['@pym'] := ls_cxpym;
      if isbqkf then //ҩƷʹ�ò����ⷿ
        sp_cx_yp_yz.Parameters.ParamValues['@ksdm'] := pub_ksdm
      else
        sp_cx_yp_yz.Parameters.ParamValues['@ksdm'] := '';
      sp_cx_yp_yz.Parameters.ParamValues['@jsfs'] := '1';
      sp_cx_yp_yz.Parameters.ParamValues['@lb'] := yzlb;
      sp_cx_yp_yz.Open;
      if sp_cx_yp_yz.RecordCount > 1 then
      begin
        grid_yz.Visible := true;
        grid_yz.SetFocus;
      end
      else
        if sp_cx_yp_yz.RecordCount = 1 then
        begin
          qtjs;
          grid_yzlr_next;
        end
        else
          if sp_cx_yp_yz.RecordCount < 1 then
          begin
            tzbz := 0;
            application.MessageBox('ҽ����Ŀδ�ҵ�!', '��ʾ', 0 + 48);
          end;
    end;
end;

procedure Tfrm_zyblinput.yzNew(fs: integer);
begin
  if grid_yzlr_ypsl then
  begin
    application.MessageBox('����ҩƷ�������ܳ���5��!!!', '��ʾ', 0 + 48);
  end;
  if (qry_yz.State = dsEdit) or (qry_yz.State = dsInsert) then
  begin
    qry_yz.Post;
  end;
  if fs <> 0 then
  begin
    qry_yz.Next;
    if not qry_yz.Eof then //�����ǰ��¼���м�¼���޸�
    begin
      qry_yz.Edit;
      cxgrid_yz.Controller.FocusedColumnIndex := 2 //xmmc
    end
    else
    begin //��ǰ��¼����û�м�¼�����
      qry_yz.append;
      qry_yz.FieldByName('lb').AsString := yzlb;
      qry_yz.FieldByName('yzsx').AsString := yzsx;
      qry_yz.FieldByName('fzph').AsString := '';
      qry_yz.FieldByName('kdys').AsString := pub_czydm;
      qry_yz.Post;
      if Trim(yzsx) = '' then
        cxgrid_yz.Controller.FocusedColumnIndex := 0 //lb
      else
        if trim(yzlb) = '' then
          cxgrid_yz.Controller.FocusedColumnIndex := 1 //lb
        else
          cxgrid_yz.Controller.FocusedColumnIndex := 2; //lb
      keybd_event(13, 0, 0, 0);
    end;
  end;
end;


procedure Tfrm_zyblinput.xzsm(Sender: TDbmemo);
begin
  if qry_yz.RecordCount > 0 then
  begin
    application.CreateForm(Tfrm_treeview_ctxz, frm_treeview_ctxz);
    try
      frm_treeview_ctxz.ShowModal;
    except
      frm_treeview_ctxz.Free;
    end;
    if qry_yz.DataSource.DataSet.State <> dsedit then
      qry_yz.Edit;
    sender.Text := frm_treeview_ctxz.pub_selectword;
  end;
end;

procedure Tfrm_zyblinput.dbg_yytjDblClick(Sender: TObject);
begin
  cxgrid_mzyz.SetFocus;
end;

procedure Tfrm_zyblinput.dbg_yytjExit(Sender: TObject);
begin
  dbg_yytj.Visible := false;
  qry_yz.Edit;
  qry_yz.FieldByName('yytj').Value := dm_data.qry_gytj.FieldByName('mc').AsString;
  if dm_data.qry_gytj.FieldByName('mc').AsString = '����' then
    qry_yz.FieldByName('bz').AsString := 'ÿ���� ��';
  qry_yz.Post;
  grid_yzlr_nextcol;
end;

procedure Tfrm_zyblinput.dbg_yytjKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 13 then
  begin
    cxgrid_mzyz.SetFocus;
  end;
end;

procedure Tfrm_zyblinput.delete_yz(key: word);
begin
  if (key = vk_delete) and (qry_yz.RecordCount > 0) then
  begin
    if application.MessageBox('�Ƿ�ɾ����ҽ��?', '��ʾ��Ϣ', mb_iconquestion + mb_okcancel + mb_defbutton1) = idok then
    begin
      qry_yz.Edit;
      qry_yz.Delete;
    end;
  end;
end;

procedure Tfrm_zyblinput.xminyz;
begin
  qry_yz.Edit;
  qry_yz.FieldByName('fzph').AsString := '';
  qry_yz.FieldByName('tmh').AsString := zy_tmh;
  qry_yz.FieldByName('zyh').AsString := zy_zyh;
  qry_yz.FieldByName('xmdm').AsString := sp_cx_yp_yz.FieldByName('xmdm').AsString;
  qry_yz.FieldByName('xmmc').AsString := sp_cx_yp_yz.FieldByName('xmmc').AsString;
  qry_yz.FieldByName('jyyb').AsString := sp_cx_yp_yz.FieldByName('yb').AsString;
  qry_yz.FieldByName('dw').AsString := sp_cx_yp_yz.FieldByName('dw').AsString;
  qry_yz.FieldByName('kdks').AsString := pub_ksdm;
  qry_yz.FieldByName('kdrq').AsDateTime := frm_func.curr_date;
  qry_yz.FieldByName('kdys').AsString := pub_czydm;
  qry_yz.FieldByName('yplsj').AsFloat := sp_cx_yp_yz.FieldByName('zylsj').AsFloat;
  qry_yz.FieldByName('ypcgj').AsFloat := (sp_cx_yp_yz.FieldByName('zylsj').AsFloat);
  qry_yz.FieldByName('czks').AsString := sp_cx_yp_yz.FieldByName('mzks').AsString;
  qry_xmyz.insert;
  qry_xmyz.FieldByName('xmdm').AsString := sp_cx_yp_yz.FieldByName('xmdm').AsString;
  qry_xmyz.FieldByName('xmmc').AsString := sp_cx_yp_yz.FieldByName('xmmc').AsString;
  qry_xmyz.FieldByName('lb').AsString := qry_yz.FieldByName('lb').AsString;
  qry_yz.FieldByName('zxbz').AsBoolean := false;
  qry_yz.FieldByName('fzbz').AsInteger := 0;
  qry_xmyz.post;
end;

procedure Tfrm_zyblinput.ypinyz;
begin
  qry_yz.edit;
  qry_yz.FieldByName('fzph').AsString := '';
  qry_yz.FieldByName('tmh').AsString := zy_tmh;
  qry_yz.FieldByName('zyh').AsString := zy_zyh;
  qry_yz.FieldByName('xmdm').AsString := sp_cx_yp_yz.FieldByName('ypdm').AsString;
  qry_yz.FieldByName('xmmc').AsString := trim(sp_cx_yp_yz.FieldByName('ypmc').AsString);
  qry_yz.FieldByName('dw').AsString := trim(sp_cx_yp_yz.FieldByName('mzyfdw').AsString);
  qry_yz.FieldByName('sl').value := 1;
  qry_yz.FieldByName('ypdwid').AsInteger := sp_cx_yp_yz.FieldByName('mzdwid').AsInteger;
  qry_yz.FieldByName('ypbzbl').AsInteger := sp_cx_yp_yz.FieldByName('mzyfzhl').AsInteger;
  qry_yz.FieldByName('yplsj').AsFloat := sp_cx_yp_yz.FieldByName('mzlsj').AsFloat;
  qry_yz.FieldByName('ypcgj').AsFloat := (sp_cx_yp_yz.FieldByName('mzlsj').AsFloat) * (qry_yz.FieldByName('sl').value);
  qry_yz.FieldByName('yldw').AsString := trim(sp_cx_yp_yz.FieldByName('yzyldw').AsString);
  qry_yz.FieldByName('kdks').AsString := pub_ksdm;
  qry_yz.FieldByName('kdrq').AsDateTime := frm_func.curr_date;
  qry_yz.FieldByName('kdys').AsString := pub_czydm;
  qry_yz.FieldByName('zxbz').AsBoolean := false;
  qry_yz.FieldByName('fzbz').AsInteger := 0;
  if yzlb = '��ҩ' then
    qry_yz.FieldByName('czks').AsString := Prv_xyfdm
  else
    if yzlb = '��ҩ' then
    begin
      qry_yz.FieldByName('czks').AsString := Prv_zyfdm;
      qry_yz.FieldByName('ypyl').AsFloat := 1;
    end;
  qry_yz.FieldByName('gg').AsString := sp_cx_yp_yz.FieldByName('ypgg').AsString;
  if sp_cx_yp_yz.FieldByName('sfjlyp').AsBoolean then
    qry_yz.FieldByName('yplb').AsString := '��'
  else
    if sp_cx_yp_yz.FieldByName('sfylyp').AsBoolean then
      qry_yz.FieldByName('yplb').AsString := '��';
  if sp_cx_yp_yz.FieldByName('ncybzfyp').AsBoolean then
    qry_yz.FieldByName('yplb').AsString := Trim(qry_yz.FieldByName('yplb').AsString) + 'ũ';
  if sp_cx_yp_yz.fieldbyname('sfdmyp').asboolean then
    qry_yz.FieldByName('yplb').AsString := Trim(qry_yz.FieldByName('yplb').AsString) + ':' + '����'
  else
    if sp_cx_yp_yz.FieldByName('sfjsyp').AsBoolean then
      qry_yz.FieldByName('yplb').AsString := Trim(qry_yz.FieldByName('yplb').AsString) + ':' + '����'
    else
      if sp_cx_yp_yz.FieldByName('sfms').AsBoolean then
        qry_yz.FieldByName('yplb').AsString := Trim(qry_yz.FieldByName('yplb').AsString) + ':' + '����';
  qry_yz.Post;
  qry_xmyz.insert;
  qry_xmyz.FieldByName('xmdm').AsString := sp_cx_yp_yz.FieldByName('ypdm').AsString;
  qry_xmyz.FieldByName('xmmc').AsString := trim(sp_cx_yp_yz.FieldByName('ypmc').AsString);
  qry_xmyz.FieldByName('lb').AsString := qry_yz.FieldByName('lb').AsString;
  qry_xmyz.post;
end;

procedure Tfrm_zyblinput.rbggClick(Sender: TObject);
begin
  qry_mbmx.Filtered := false;
  qry_mbmx.Filter := 'zyksgs=' + #39 + #39;
  qry_mbmx.Filtered := true;
end;

procedure Tfrm_zyblinput.rbgrClick(Sender: TObject);
begin
  qry_mbmx.Filtered := false;
  qry_mbmx.Filter := 'mbczy=' + #39 + pub_czyxm + #39;
  qry_mbmx.Filtered := true;
end;

procedure Tfrm_zyblinput.rbksClick(Sender: TObject);
begin
  qry_mbmx.Filtered := false;
  qry_mbmx.Filter := 'zyksgs=' + #39 + pub_ksdm + #39;
  qry_mbmx.Filtered := true;
end;

procedure Tfrm_zyblinput.rbqbClick(Sender: TObject);
begin
  qry_mbmx.Filter := '';
  qry_mbmx.Filtered := false;
end;

procedure Tfrm_zyblinput.rb_brClick(Sender: TObject);
begin
  bt_refresh.Click;
end;

procedure Tfrm_zyblinput.rb_qkClick(Sender: TObject);
begin
  bt_refresh.Click;
end;

procedure Tfrm_zyblinput.rb_qyClick(Sender: TObject);
begin
  bt_refresh.Click;
end;

procedure Tfrm_zyblinput.refresh_yz;
var
  sql: string;
begin
  cxgrid_yz.Controller.FocusedColumnIndex := 0;
  sql := 'select * from zybl_zyyz where zyh=:cxzyh and kdys=:kdys  order by lb,fzph';
  qry_yz.Close;
  qry_yz.SQL.Clear;
  qry_yz.SQL.Text := sql;
  qry_yz.Parameters.ParamValues['cxzyh'] := zy_zyh;
  qry_yz.Parameters.ParamValues['kdys'] := pub_czydm;
  qry_yz.Open;
  qry_xmyz.Close;
  qry_xmyz.Open;
  qry_yz.First;
  while not qry_yz.Eof do
  begin
    qry_xmyz.Insert;
    qry_xmyz.FieldByName('xmdm').Value := qry_yz.FieldByName('xmdm').AsString;
    qry_xmyz.FieldByName('xmmc').Value := qry_yz.FieldByName('xmmc').AsString;
    qry_xmyz.FieldByName('lb').AsString := qry_yz.FieldByName('lb').AsString;
    qry_xmyz.Post;
    qry_yz.Edit;
    if trim(qry_yz.FieldByName('yzsx').AsString) = '��ͯ' then
    begin
      if Pos('����', pub_ksmc) > 0 then
        qry_yz.FieldByName('yzsx').AsString := '����'
    end;
    qry_yz.Post;
    qry_yz.Next;
  end;
  cxgrd_yzlbpx.GroupIndex := 0;
  cxgrid_yzfzph.GroupIndex := 0;
  cxgrid_yz.DataController.Groups.FullExpand;
  cxgrid_yz.OptionsData.Editing := False;
end;

procedure Tfrm_zyblinput.BitBtn1Click(Sender: TObject);
begin
  tab_zsk.TabVisible := false;
  zz.ActivePage := tab_bl;
end;

procedure Tfrm_zyblinput.bt_addClick(Sender: TObject);
begin
  tab_mb.TabVisible := true;
  zz.ActivePage := tab_mb;
  selectmb;
end;

procedure Tfrm_zyblinput.bt_saveblClick(Sender: TObject);
var
  stream, streamxml: TADOBlobStream;
  filename: string;
begin
  if (pub_blid <> '') or (editmode = 'add') then
  begin
    filename := GetCurrentDir + '\' + 'stemp';
    EMRPad301.FileSaveAs(FileName, 0, 0);
    EMRPad301.FileSaveAs(FileName + 'xml', 4, 0);
    qry_up_dlbl.Close;
    qry_up_dlbl.Parameters.ParamByName('zy_blid').Value := pub_blid;
    qry_up_dlbl.Parameters.ParamByName('zy_zyh').Value := zy_zyh;
    qry_up_dlbl.Open;
    if editmode = 'add' then
    begin
      qry_up_dlbl.Append;
      qry_up_dlbl['fldm'] := pub_mbdldm;
      qry_up_dlbl['mbdm'] := pub_mbid;
      getmaxid;
      qry_up_dlbl['blmc'] := pub_filename + '.' + pub_blid;
      locatename := pub_filename + '.' + pub_blid;
      qry_up_dlbl['zyh'] := zy_zyh;
      qry_up_dlbl['blid'] := pub_blid;
      qry_up_dlbl['tmh'] := zy_tmh;
      qry_up_dlbl['brxm'] := pub_brxm;
    end
    else if editmode = 'edit' then
      qry_up_dlbl.edit;
    qry_up_dlbl['blys'] := pub_czydm;
    qry_up_dlbl['zzys'] := pub_czydm;
    qry_up_dlbl['zgys'] := pub_czydm;
    try
      stream := TADOBlobStream.Create(qry_up_dlbl.FieldByName('blwj') as TBlobField, bmWrite);
      stream.LoadFromFile(filename);
      streamxml := TADOBlobStream.Create(qry_up_dlbl.FieldByName('xmlwj') as TBlobField, bmWrite);
      streamxml.LoadFromFile(filename + 'xml');
    finally
      stream.Free;
      streamxml.Free;
    end;
    qry_up_dlbl.Post;
    EMRPad301.SetDocumentMode(3);
    treeviewzp.Enabled := true;
    if editmode = 'add' then
    begin
      treecreate; //�ؽ����νṹ
      locatedzbl; //��λ�༭
    end;
    editbl.Visible := false;
    viewbl.Visible := false;
    tablebl.Visible := false;
    fzbl.Visible := false;
    filebl.Visible := false;
    tab_bl.PopupMenu := Popupnull;
    bledit := false;
    bt_add.Enabled := true;
    bt_savebl.Enabled := false;
  end
  else
    application.messagebox('���Ƚ��봦��״̬', '��ʾ', mb_ok);
end;

procedure Tfrm_zyblinput.btnxzyfClick(Sender: TObject);
begin
  if qry_yz.FieldByName('zxbz').AsBoolean then
  begin
    proc_xzyf;
    qry_yz.Edit;
    if yzlb = '��ҩ' then
      qry_yz.FieldByName('czks').AsString := prv_zyfdm
    else
      if yzlb = '��ҩ' then
        qry_yz.FieldByName('czks').AsString := prv_xyfdm;
    qry_yz.Post;
  end;

end;

procedure Tfrm_zyblinput.btn_cancelClick(Sender: TObject);
begin
  proc_btenable('cancel');
  refresh_yz;
end;

procedure Tfrm_zyblinput.btn_cxlsyzClick(Sender: TObject);
var
  sql: string;
begin
  cxgrid_yz.Controller.FocusedColumnIndex := 0;
  sql := 'select * from zybl_zyyz where zyh=:cxzyh and kdrq>=:ksrq and kdrq<=:jsrq order by kdrq';
  qry_lsyz.Close;
  qry_lsyz.SQL.Clear;
  qry_lsyz.SQL.Text := sql;
  qry_lsyz.Parameters.ParamValues['cxzyh'] := zy_zyh;
  qry_lsyz.Parameters.ParamValues['ksrq'] := cxdtdt_ksrq.Date;
  qry_lsyz.Parameters.ParamValues['jsrq'] := cxdtdt_jsrq.Date;
  qry_lsyz.Open;
  cxgrdbndtblvw_lsyz.DataController.Groups.FullExpand;
end;

procedure Tfrm_zyblinput.btn_excelClick(Sender: TObject);
begin
  frm_func.cxgridtoexcel(cxgrid_mzyz, 3, '', '', '', TADOStoredProc.Create(self));
end;

procedure Tfrm_zyblinput.btn_jymbClick(Sender: TObject);
var
  frm: Tfrm_jyxmwrite;
  p_yzlb: string;
begin
  p_yzlb := qry_yz.FieldByName('lb').AsString;
  if (p_yzlb = '����') or (p_yzlb = '���') or (p_yzlb = '����') then
  begin
    mbdy := True;
    bt_saveyz.Click;
    mbdy := False;
    frm := Tfrm_jyxmwrite.Create(nil);
    try
      frm.tmh := zy_tmh;
      frm.zyh := zy_zyh;
      frm.dymk := 'zy';
      frm.yzsx := '';
      frm.yzlb := p_yzlb;
      frm.ShowModal;
    finally
      frm.free;
    end;
    if frm.ModalResult = mrOK then
    begin
      refresh_yz;
      bt_yz_add.Click;
    end;
  end
  else
    application.messagebox('ֻ�м�顢���顢���Ʋ��ܽ���ѡ��������Ŀ������ƴ����д!!', '��ʾ', mb_ok);
end;

procedure Tfrm_zyblinput.btn_zxyzClick(Sender: TObject);
var
  P_sctext: string;
begin
  proc_btenable('zxyz');
 //ִ��ҽ��ǰ�����ѱ༭ҽ��
  mbdy := True;
  bt_saveyz.Click;
  mbdy := False;
  sp_yzincfsf.Close;
  sp_yzincfsf.Parameters.ParamByName('@tmh').Value := zy_zyh;
  sp_yzincfsf.Parameters.ParamByName('@kdys').Value := pub_czydm;
  sp_yzincfsf.Parameters.ParamByName('@sczt').Value := '';
  sp_yzincfsf.ExecProc;
  P_sctext := sp_yzincfsf.Parameters.ParamByName('@sczt').Value;
  Application.MessageBox(PChar(P_sctext), '', 0 + 48);
  refresh_yz;
end;

procedure Tfrm_zyblinput.FormShow(Sender: TObject);
begin
  pub_blid := '';
  pub_key := '00';
  cxdtdt_ksrq.Date := StrToDate(formatdatetime('yyyy-mm-dd', Frm_func.curr_date));
  cxdtdt_jsrq.Date := StrToDate(formatdatetime('yyyy-mm-dd', Frm_func.curr_date)) + 1;
  if pub_xyxzyf then
  begin
    btnxzyf.Visible := true;
    btnxzyf.Enabled := True;
  end
  else
    proc_xzyf;
  cxgrid_yz.OptionsView.GroupByBox := false;
  bt_refresh.Click;
  qry_kdys.Open;
  qry_ks.Open;
  dm_data.qry_gytj.Open;
  dm_data.qry_ypyf.Open;
  dm_data.qry_jyyb.Open;
  dm_data.qry_yzsx.Close;
  dm_data.qry_yzsx.Parameters.ParamByName('yzlb').Value := '02';
  dm_data.qry_yzsx.Open;
  zz.ActivePageIndex := 0;

  scbz := 0;
  qry_yfdm.Close;
  qry_yfdm.Parameters.ParamByName('ksdm').Value := pub_ksdm;
  qry_yfdm.Open;
  edit_tmh.SetFocus;
end;

procedure Tfrm_zyblinput.f_dele_cgClick(Sender: TObject);
begin
  del_bl.Click;
end;

procedure Tfrm_zyblinput.grid_ksDblClick(Sender: TObject);
begin
  cxgrid_mzyz.SetFocus;
end;

procedure Tfrm_zyblinput.grid_ksExit(Sender: TObject);
begin
  grid_ks.Visible := false;
  qry_yz.Edit;
  qry_yz.FieldByName('czks').Value := qry_ks.FieldByName('dm').AsString;
  yzNew(1);
end;

procedure Tfrm_zyblinput.grid_ksKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 13 then
  begin
    cxgrid_mzyz.SetFocus;
  end;
end;

procedure Tfrm_zyblinput.grid_ypDblClick(Sender: TObject);
begin
  cxgrid_mzyz.SetFocus;
end;

procedure Tfrm_zyblinput.grid_ypDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
begin
  if sp_cx_yp_yz['zxdwsl'] = true then
  begin
    grid_yp.Canvas.Brush.Color := cllime;
    grid_yp.Canvas.Font.color := clblue;
  end;
  grid_yp.DefaultDrawColumnCell(rect, datacol, Column, state);
end;

procedure Tfrm_zyblinput.grid_ypExit(Sender: TObject);
begin
  grid_yp.Visible := false;
  ypjs;
  grid_yzlr_next;
end;

procedure Tfrm_zyblinput.grid_ypKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    cxgrid_mzyz.SetFocus;
  end;
  if key = #27 then
    grid_yp.Visible := false;
end;

procedure Tfrm_zyblinput.Edit_clKeyPress(Sender: TObject; var Key: Char);
var
  ls_cxyz: string;
begin
  if key = #13 then
  begin
    sp_cx_yp_yz.Close;
    sp_cx_yp_yz.Parameters.ParamValues['@pym'] := ls_cxyz;
    sp_cx_yp_yz.Parameters.ParamValues['@ksdm'] := pub_ksdm;
    if isbqkf then //�Ƿ������˲����ⷿ
      sp_cx_yp_yz.Parameters.ParamValues['@jsfs'] := '2'
    else
      sp_cx_yp_yz.Parameters.ParamValues['@jsfs'] := '1';
    sp_cx_yp_yz.Open;
    if sp_cx_yp_yz.RecordCount >= 1 then
    begin
      grid_yz.Visible := true;
      grid_yz.SetFocus;
    end;
  end;
end;

procedure Tfrm_zyblinput.HIDBTableView1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  delete_yz(key);
end;

procedure Tfrm_zyblinput.N10Click(Sender: TObject);
begin
  close;
end;

procedure Tfrm_zyblinput.N11Click(Sender: TObject);
begin
  EMRPad301.TableColProp;
end;

procedure Tfrm_zyblinput.N12Click(Sender: TObject);
begin
  EMRPad301.TableCellProp;
end;

procedure Tfrm_zyblinput.N13Click(Sender: TObject);
begin
  bt_savebl.click;
end;

procedure Tfrm_zyblinput.N140Click(Sender: TObject);
begin
  EMRPad301.EditUnDo;
  treeviewzp.Enabled := true;
  tab_bl.PopupMenu := Popupnull;
  EMRPad301.SetDocumentMode(3);
  editbl.Visible := false;
  viewbl.Visible := false;
  tablebl.Visible := false;
  fzbl.Visible := false;
  filebl.Visible := false;
end;

procedure Tfrm_zyblinput.N14Click(Sender: TObject);
var
  FileName: string;
begin
  if SaveDialog1.Execute then
  begin
    FileName := SaveDialog1.FileName;
    EMRPad301.FileSaveAs(FileName, 0, 0);
  end;
end;

procedure Tfrm_zyblinput.N150Click(Sender: TObject);
begin
  EMRPad301.EditReplace;
end;

procedure Tfrm_zyblinput.N163Click(Sender: TObject);
begin
  close;
end;

procedure Tfrm_zyblinput.N17Click(Sender: TObject);
begin
  EMRPad301.SetDocumentMode(3);
  EMRPad301.Print(0);
end;

procedure Tfrm_zyblinput.N18Click(Sender: TObject);
begin
  EMRPad301.SetDocumentMode(3);
  EMRPad301.universalboolfunction('', '', 58, 0)
end;

procedure Tfrm_zyblinput.N19Click(Sender: TObject);
begin
  EMRPad301.SetDocumentMode(3);
  EMRPad301.Print(2);
end;

procedure Tfrm_zyblinput.N20Click(Sender: TObject);
begin
  EMRPad301.PageSetup;
end;

procedure Tfrm_zyblinput.N21Click(Sender: TObject);
begin
  EMRPad301.FileSetPageNumber();
end;

procedure Tfrm_zyblinput.N24Click(Sender: TObject);
begin
  EMRPad301.ShowRevisionHistory;
end;

procedure Tfrm_zyblinput.N25Click(Sender: TObject);
begin
  EMRPad301.EditUnDo;
end;

procedure Tfrm_zyblinput.N26Click(Sender: TObject);
begin
  EMRPad301.EditReDo;
end;

procedure Tfrm_zyblinput.N28Click(Sender: TObject);
begin
  EMRPad301.EditCopy;
end;

procedure Tfrm_zyblinput.N29Click(Sender: TObject);
begin
  EMRPad301.EditPaste;
end;

procedure Tfrm_zyblinput.N30Click(Sender: TObject);
begin
  EMRPad301.EditCut;
end;

procedure Tfrm_zyblinput.N33Click(Sender: TObject);
begin
  EMRPad301.EditSelectAll;
end;

procedure Tfrm_zyblinput.N35Click(Sender: TObject);
begin
  EMRPad301.EditFind;
end;

procedure Tfrm_zyblinput.N36Click(Sender: TObject);
begin
  EMRPad301.EditReplace;
end;

procedure Tfrm_zyblinput.N37Click(Sender: TObject);
begin
  EMRPad301.insertfield('aa', 'ggg', 1, 2, 0);
end;

procedure Tfrm_zyblinput.N42Click(Sender: TObject);
begin
  EMRPad301.ViewToolbar;
end;

procedure Tfrm_zyblinput.N43Click(Sender: TObject);
begin
  EMRPad301.ViewStatusbar;
end;

procedure Tfrm_zyblinput.N44Click(Sender: TObject);
begin
  EMRPad301.ViewLineIndex;
end;

procedure Tfrm_zyblinput.N46Click(Sender: TObject);
begin
  EMRPad301.SetDocumentMode(3);
end;

procedure Tfrm_zyblinput.N47Click(Sender: TObject);
begin
  EMRPad301.ViewLineIndex;
end;

procedure Tfrm_zyblinput.N48Click(Sender: TObject);
begin
  EMRPad301.SetDocumentMode(3);
  EMRPad301.Print(1);
end;

procedure Tfrm_zyblinput.N49Click(Sender: TObject);
begin
  EMRPad301.EditAutoRange;
end;

procedure Tfrm_zyblinput.N50Click(Sender: TObject);
begin
  EMRPad301.editclearunusefield();
end;

procedure Tfrm_zyblinput.N63Click(Sender: TObject);
begin
  EMRPad301.TableInsert;
end;

procedure Tfrm_zyblinput.N64Click(Sender: TObject);
begin
  EMRPad301.TableInsertColLeft;
end;

procedure Tfrm_zyblinput.N65Click(Sender: TObject);
begin
  EMRPad301.TableInsertColRight;
end;

procedure Tfrm_zyblinput.N68Click(Sender: TObject);
begin
  EMRPad301.TableInsertRowTop;
end;

procedure Tfrm_zyblinput.N69Click(Sender: TObject);
begin
  EMRPad301.TableInsertRowBottom;
end;

procedure Tfrm_zyblinput.N6Click(Sender: TObject);
begin
  EMRPad301.TableHideBorder;
end;

procedure Tfrm_zyblinput.N70Click(Sender: TObject);
begin
  EMRPad301.TableDelete;
end;

procedure Tfrm_zyblinput.N71Click(Sender: TObject);
begin
  EMRPad301.TableDeleteRow;
end;

procedure Tfrm_zyblinput.N72Click(Sender: TObject);
begin
  EMRPad301.TableDeleteCol;
end;

procedure Tfrm_zyblinput.N74Click(Sender: TObject);
begin
  EMRPad301.TableSelect;
end;

procedure Tfrm_zyblinput.N75Click(Sender: TObject);
begin
  EMRPad301.TableSelectRow;
end;

procedure Tfrm_zyblinput.N76Click(Sender: TObject);
begin
  EMRPad301.TableSelectCol;
end;

procedure Tfrm_zyblinput.N77Click(Sender: TObject);
begin
  EMRPad301.TableMergeCell;
end;

procedure Tfrm_zyblinput.N78Click(Sender: TObject);
begin
  EMRPad301.TableSplitCell;
end;

procedure Tfrm_zyblinput.bl_zskClick(Sender: TObject);
begin
  if (zz.ActivePage = tab_bl) then
  begin
    tab_zsk.TabVisible := true;
    zz.ActivePage := tab_zsk;
  end
  else
    application.MessageBox('ֻ��¼�벡��ʱ���ܴ�֪ʶ��!', '��ʾ', 0 + 48);
end;

procedure Tfrm_zyblinput.N9Click(Sender: TObject);
begin
  EMRPad301.TableProp;
end;

procedure Tfrm_zyblinput.Nbj_delClick(Sender: TObject);
begin
  if not EMRPad301.UniversalBoolFunction('', '', 3, 0) then
    EMRPad301.UniversalBoolFunction('', '', 36, 0);
end;

procedure Tfrm_zyblinput.del_blClick(Sender: TObject);
begin
  if application.MessageBox('ɾ���Ĳ����ݸ岻�ָܻ�,�Ƿ����!', '��ʾ', 4 + 256 + 32) = 6 then
  begin
    treeviewzp.Enabled := true;
    treeviewzp.SetFocus;
    pub_name := trim(treeviewzp.selected.text);
    qry_pub.Close;
    qry_pub.SQL.Text := 'select * from zydzbl_zydzblmx where blmc=' + '''' + pub_name + '''' +
      ' and zyh=' + '''' + zy_zyh + '''';
    qry_pub.Open;
    if not qry_pub.IsEmpty then
    begin
      pub_blid := qry_pub.fieldbyname('blid').asstring;
    end
    else
    begin
      application.MessageBox('û��ѡ��Ҫɾ���Ĳ���!', '��ʾ', 0 + 48);
      abort;
    end;
    qry_pub.Close;
    qry_pub.SQL.Clear;
    qry_pub.SQL.Text := 'delete zydzbl_zydzblmx where blid= ' + pub_blid + ' and zyh=' + #39 + zy_zyh + #39;
    qry_pub.ExecSQL;
    EMRPad301.CleanUndoBuffer; //��ձ༭������
    EMRPad301.CleanClipboard; //��ռ�����
    EMRPad301.FileNew; //�¿��ļ�
    EMRPad301.SetDocumentMode(3);
    treecreate;
    editbl.Visible := false;
    viewbl.Visible := false;
    tablebl.Visible := false;
    fzbl.Visible := false;
    filebl.Visible := false;
    tab_bl.PopupMenu := Popupnull;
    bledit := false;
    bt_add.Enabled := true;
    bt_savebl.Enabled := false;
    application.MessageBox(pchar(pub_name + '-��ɾ��'), 'ɾ����ʾ', 0 + 48);
  end;
end;

procedure Tfrm_zyblinput.ad_wczbrAfterScroll(DataSet: TDataSet);
begin
  edit_tmh.Text := sp_brxx.FieldByName('bybh').AsString;
end;

procedure Tfrm_zyblinput.ad_wczbrBeforeScroll(DataSet: TDataSet);
begin
  if bledit or yzedit then
    yzlrzt
  else
    if sp_brxx.fieldbyname('clbz').asboolean then
    begin
      sp_brxx.Edit;
      sp_brxx.fieldbyname('clbz').asboolean := false;
      sp_brxx.Post;
      zz.Enabled := false;
    end;
end;

procedure Tfrm_zyblinput.qry_ysAfterScroll(DataSet: TDataSet);
begin
  if (yzlb <> 'ҩƷ') and (qry_yz.Active) then
  begin
    if qry_yz.RecordCount > 0 then
    begin
      qry_yz.FieldByName('yplb').Value := '';
      qry_yz.FieldByName('yplsj').Value := 0;
      qry_yz.FieldByName('gg').Value := '';
    end;
  end;
end;

procedure Tfrm_zyblinput.qry_yzAfterPost(DataSet: TDataSet);
begin
  qry_yz.Edit;
  if (Trim(qry_yz.FieldByName('lb').AsString) <> '��ҩ') then
    qry_yz.FieldByName('ypcgj').AsFloat := qry_yz.FieldByName('yplsj').AsFloat * qry_yz.FieldByName('sl').AsInteger
  else
    if Trim(qry_yz.FieldByName('ypyl').AsString) = '' then
      qry_yz.FieldByName('ypcgj').AsFloat := qry_yz.FieldByName('yplsj').AsFloat * qry_yz.FieldByName('sl').AsInteger;
end;

procedure Tfrm_zyblinput.qry_yzAfterScroll(DataSet: TDataSet);
begin
  tzbz := 1;
  kzbz := 1;
  cxgrid_yzxmmc.Options.Editing := True;
  cxgrid_yzlb.Options.Editing := True;
  cxgrid_yzbz.Options.Editing := True;
  cxgrid_yzsx.Options.Editing := True;
  cxgrid_yz.OptionsData.DeletingConfirmation := True;
  cxgrid_yz.OptionsData.Deleting := True;
  bt_ztsave.Enabled := not qry_yz.IsEmpty;
  if qry_yz.IsEmpty then
  begin
    btn_zxyz.Enabled := False;
    btnxzyf.Enabled := False;
  end;
  if Trim(qry_yz.FieldByName('lb').AsString) <> '' then
    yzlb := qry_yz.FieldByName('lb').AsString;
  setcoledit;
  if (qry_yz.FieldByName('zxbz').AsBoolean) then
  begin
    btnxzyf.Enabled := False;
    cxgrid_yz.OptionsData.DeletingConfirmation := False;
    cxgrid_yz.OptionsData.Deleting := False;
    cxgrid_yzxmmc.Options.Editing := false;
    cxgrid_yzlb.Options.Editing := false;
    cxgrid_yzsx.Options.Editing := false;
    cxgrid_yzypyl.Options.Editing := false;
    cxgrid_yzyldw.Options.Editing := false;
    cxgrid_yzypyf.Options.Editing := false;
    cxgrid_yzyytj.Options.Editing := false;
    cxgrid_yzsl.Options.Editing := false;
    cxgrid_yzjyyb.Options.Editing := false;
    cxgrid_yzczks.Options.Editing := false;
    cxgrid_yzfz.Options.Editing := false;
    cxgrid_yzbz.Options.Editing := False;
  end;
end;

procedure Tfrm_zyblinput.qry_yzBeforeInsert(DataSet: TDataSet);
begin
  if qry_yz.RecordCount > 0 then
    if trim(qry_yz.FieldByName('xmmc').AsString) = '' then
    begin
      qry_yz.Delete;
    end;
end;

procedure Tfrm_zyblinput.cxgrdbndtblvw_lsyzCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if AViewInfo.RecordViewInfo.GridRecord.Values[16] <> null then
    if AViewInfo.RecordViewInfo.GridRecord.Values[16] then
      ACanvas.Font.Color := $004F1DD3;
end;

procedure Tfrm_zyblinput.cxGridDBTableView1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  delete_yz(key);
end;

procedure Tfrm_zyblinput.cxGridDBTableView2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  delete_yz(key);
end;

procedure Tfrm_zyblinput.cxGridDBTableView3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  delete_yz(key);
end;

procedure Tfrm_zyblinput.cxGridDBTableView4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  delete_yz(key);
end;

procedure Tfrm_zyblinput.cxGridDBTableView5KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  delete_yz(key);
end;

procedure Tfrm_zyblinput.cxgrid_yzCellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
//   showmessage(inttostr(cxgrid_yz.Controller.FocusedColumnIndex));
end;

procedure Tfrm_zyblinput.cxgrid_yzColumn1PropertiesCloseUp(Sender: TObject);
var
  xz_fzh, ypyf, yytj: string;
  xz_id: integer;
begin
  xz_fzh := trim(cxgrid_yz.Controller.EditingController.Edit.EditValue);
  ypyf := qry_yz.FieldByName('ypyf').AsString;
  yytj := qry_yz.FieldByName('yytj').AsString;
  xz_id := qry_yz.FieldByName('id').AsInteger;
  if yytj = '����' then
  begin
    if qry_yz.Locate('fzph', xz_fzh, []) then
    begin
      if (ypyf <> qry_yz.FieldByName('ypyf').AsString) or
        (yytj <> qry_yz.FieldByName('yytj').AsString) then
      begin
        application.messagebox('ҩƷ�÷�����ҩ;����һ�£����ܷ���һ�飡��', '����', mb_ok + mb_iconerror);
        qry_yz.Locate('id', xz_id, []);
        qry_yz.Edit;
        qry_yz.FieldByName('fzph').AsString := '';
        qry_yz.Post;
        cxgrid_yz.DataController.Groups.FullExpand;
      end
      else
      begin
        qry_yz.edit;
        qry_yz.Post;
        cxgrid_yz.DataController.Groups.FullExpand;
      end;
    end;
  end
  else
  begin
    qry_yz.FieldByName('fzph').AsString := '';
    application.messagebox('ҩƷ��ҩ;��Ϊ���β��ܷ���!!', '����', mb_ok + mb_iconerror);
  end;

end;

procedure Tfrm_zyblinput.cxgrid_yzCustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
  if AViewInfo.RecordViewInfo.GridRecord.Values[15] <> null then
    if AViewInfo.RecordViewInfo.GridRecord.Values[15] then
      ACanvas.Font.Color := $004F1DD3;
end;

procedure Tfrm_zyblinput.cxgrid_yzCustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
var
  AButtonState: TcxButtonState;
  ARect: TRect;
begin
  if AViewInfo.Column.Selected then begin
    AButtonState := cxbsHot;
    ARect := AViewInfo.Bounds;
    Sender.LookAndFeelPainter.DrawHeader(ACanvas, ARect, AViewInfo.TextAreaBounds
      , [], cxBordersAll, AButtonState, AViewInfo.Column.HeaderAlignmentHorz
      , AViewInfo.Column.HeaderAlignmentVert, False, False
      , AViewInfo.Column.Caption, ACanvas.Font, Sender.Styles.Selection.TextColor
      , Sender.Styles.Selection.Color);
    ARect.Left := ARect.Right - 19;
    ARect.Right := ARect.Right - 1;
    InflateRect(ARect, -1, -3);
    if AViewInfo.Column.Options.Filtering then begin
      Sender.LookAndFeelPainter.DrawFilterDropDownButton(ACanvas, ARect
        , cxbsNormal, AViewInfo.Column.Filtered);
      OffsetRect(ARect, -16, 0);
    end;
    if AViewInfo.Column.SortIndex <> -1 then
      Sender.LookAndFeelPainter.DrawSortingMark(ACanvas, ARect
        , AViewInfo.Column.SortOrder = soAscending);
    ADone := true;
  end;
end;

procedure Tfrm_zyblinput.cxgrid_yzCustomDrawIndicatorCell(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxCustomGridIndicatorItemViewInfo; var ADone: Boolean);
var
  AButtonState: TcxButtonState;
  clFont, clBrush: TColor;
begin
  if not (AViewInfo is TcxGridIndicatorRowItemViewInfo) then Exit;

  if TcxGridIndicatorRowItemViewInfo(AViewInfo).GridRecord.Selected then begin
    AButtonState := cxbsHot;
    if Sender.LookAndFeelPainter.LookAndFeelStyle = lfsOffice11 then begin
      clFont := ACanvas.Font.Color;
      clBrush := ACanvas.Brush.Color;
    end else begin
      clFont := Sender.Styles.Selection.TextColor;
      clBrush := Sender.Styles.Selection.Color;
    end;
  end else begin
    AButtonState := cxbsNormal;
    clFont := ACanvas.Font.Color;
    clBrush := ACanvas.Brush.Color;
  end;
  Sender.LookAndFeelPainter.DrawHeader(ACanvas, AViewInfo.ContentBounds,
    AViewInfo.ContentBounds, [], [bLeft, bRight, bBottom], AButtonState, taCenter
    , vaCenter, False, False, IntToStr(TcxGridIndicatorRowItemViewInfo(AViewInfo).GridRecord.Index + 1)
    , ACanvas.Font, clFont, clBrush);
  ADone := True;
end;

procedure Tfrm_zyblinput.cxgrid_yzEditKeyDown(Sender: TcxCustomGridTableView;
  AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit; var Key: Word;
  Shift: TShiftState);
var
  selectindex: integer;
begin
  selectindex := cxgrid_yz.Controller.FocusedColumnIndex;
  if (key = 13) then
  begin
    qry_yz.Edit;
    if selectindex = 1 then
    begin
      qry_yz.Edit;
      qry_yz.Post;
      se_value := trim(qry_yz.FieldByName('lb').AsString);
      grid_yzlr_edit;
      setcoledit; //�����пɱ༭�ֶ�
    end
    else
      if selectindex = 2 then
      begin
        qry_yz.Edit;
        qry_yz.Post;
        se_value := trim(qry_yz.FieldByName('xmmc').AsString);
        grid_yzlr_edit;
      end
      else
        if ((yzlb = '��ҩ') or (yzlb = '��ҩ')) and (selectindex = 7) then
          yzNew(kzbz)
        else
          if selectindex = 10 then //czks
          begin
            qry_yz.Edit;
            qry_yz.Post;
            se_value := trim(qry_yz.FieldByName('czks').AsString);
            if se_value = '' then
              qry_ks.Filtered := false
            else
            begin
              qry_ks.Filtered := false;
              qry_ks.Filter := 'dm = ' + #39 + se_value + #39;
              qry_ks.Filter := qry_ks.Filter + ' or pym like ' + #39 + '%' + se_value + '%' + #39;
              qry_ks.Filter := qry_ks.Filter + ' or mc like ' + #39 + '%' + se_value + '%' + #39;
              qry_ks.Filtered := true;
            end;
            if qry_ks.RecordCount > 1 then
            begin
              grid_ks.Visible := true;
              grid_ks.SetFocus;
              abort;
            end
            else
              if qry_ks.RecordCount = 1 then
              begin
                qry_yz.Edit;
                qry_yz.FieldByName('czks').Value := qry_ks.FieldByName('dm').AsString;
                yzNew(kzbz);
              end
              else
              begin
                tzbz := 0;
                showMessage('���ÿ���δ�ҵ�!');
              end;
          end
          else
            if selectindex = 6 then
            begin
              qry_yz.Edit;
              qry_yz.Post;
              se_value := trim(qry_yz.FieldByName('yytj').AsString);
              if se_value = '' then
                dm_data.qry_gytj.Filtered := false
              else
              begin
                dm_data.qry_gytj.Filtered := false;
                dm_data.qry_gytj.Filter := 'dm = ' + #39 + se_value + #39;
                dm_data.qry_gytj.Filter := ' pym like ' + #39 + '%' + se_value + '%' + #39;
                dm_data.qry_gytj.Filter := dm_data.qry_gytj.Filter + ' or mc like ' + #39 + '%' + se_value + '%' + #39;
                dm_data.qry_gytj.Filtered := true;
              end;
              if dm_data.qry_gytj.RecordCount > 1 then
              begin
                dbg_yytj.Visible := true;
                dbg_yytj.SetFocus;
                abort;
              end
              else
                if dm_data.qry_gytj.RecordCount = 1 then
                begin
                  qry_yz.Edit;
                  qry_yz.FieldByName('yytj').Value := dm_data.qry_gytj.FieldByName('mc').AsString;
                  if dm_data.qry_gytj.FieldByName('mc').AsString = '����' then
                    qry_yz.FieldByName('bz').AsString := 'ÿ���� ��';
                  qry_yz.Post;
                  grid_yzlr_nextcol;
                end
                else
                begin
                  tzbz := 0;
                  showMessage('��ҩ;��δ�ҵ�!');
                end;
            end
            else
              if (selectindex = 10) or (selectindex = 16) then
                yzNew(kzbz)
              else
                if (selectindex = 7) then
                  grid_yzlr_nextcol
                else
                  if (selectindex = 9) then
                    grid_yzlr_nextcol
                  else
                    if (selectindex = 1) then
                      grid_yzlr_nextcol;

  end;

end;

procedure Tfrm_zyblinput.cxgrid_yzjyybPropertiesEditValueChanged(
  Sender: TObject);
begin
  grid_yzlr_nextcol;
end;

procedure Tfrm_zyblinput.cxgrid_yzlbPropertiesCloseUp(Sender: TObject);
begin
  qry_yz.Edit;
  qry_yz.Post;
  se_value := qry_yz.FieldByName('lb').AsString;
  grid_yzlr_edit; //��ǰ�ֶδ���ʽ
  setcoledit; //�����пɱ༭�ֶ�
end;

procedure Tfrm_zyblinput.cxgrid_yzlbPropertiesEditValueChanged(Sender: TObject);
begin
  se_value := qry_yz.FieldByName('lb').AsString;
end;


procedure Tfrm_zyblinput.cxgrid_yzslPropertiesEditValueChanged(Sender: TObject);
begin
  if yzlb = '��ҩ' then
  begin
    if func_kcjd(prv_xyfdm, Trim(qry_yz.FieldByName('xmdm').AsString), qry_yz.FieldByName('ypbzbl').AsInteger * StrToInt(cxgrid_yz.Controller.EditingController.Edit.EditValue)) then
    begin
      Application.MessageBox(PChar(Trim(qry_yz.FieldByName('xmmc').AsString) + 'ҩƷ��治�㣬��ע��!!'), '��ʾ', 0 + 48);
      Abort;
    end;
  end
  else
    if yzlb = '��ҩ' then
    begin
      if func_kcjd(prv_zyfdm, Trim(qry_yz.FieldByName('xmdm').AsString), qry_yz.FieldByName('ypyl').AsFloat * qry_yz.FieldByName('ypbzbl').AsInteger * StrToInt(cxgrid_yz.Controller.EditingController.Edit.EditValue)) then
      begin
        Application.MessageBox(PChar(Trim(qry_yz.FieldByName('xmmc').AsString) + 'ҩƷ��治�㣬��ע��!!'), '��ʾ', 0 + 48);
        Abort;
      end;
    end;
  grid_yzlr_nextcol;
end;

procedure Tfrm_zyblinput.cxgrid_yzsxPropertiesEditValueChanged(Sender: TObject);
begin
 grid_yzlr_nextcol;
end;

procedure Tfrm_zyblinput.cxgrid_yzypyfPropertiesCloseUp(Sender: TObject);
begin
  grid_yzlr_nextcol;
end;

procedure Tfrm_zyblinput.cxgrid_yzypylPropertiesEditValueChanged(
  Sender: TObject);
begin
  grid_yzlr_nextcol;
end;

procedure Tfrm_zyblinput.cxgrid_yzyytjPropertiesCloseUp(Sender: TObject);

begin
  qry_yz.Edit;
  qry_yz.FieldByName('yytj').AsString := dm_data.qry_ypyf.FieldByName('mc').AsString;
  qry_yz.Post;
  grid_yzlr_nextcol;
end;

procedure Tfrm_zyblinput.grid_yzDblClick(Sender: TObject);
begin
  cxgrid_mzyz.SetFocus;
end;

procedure Tfrm_zyblinput.grid_yzExit(Sender: TObject);
begin
  grid_yz.Visible := false;
  qtjs;
  grid_yzlr_next;
end;

procedure Tfrm_zyblinput.grid_yzKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    cxgrid_mzyz.SetFocus;
  end;
  if key = #27 then
  begin
    grid_yz.Visible := false;
  end;
end;

procedure Tfrm_zyblinput.grid_yzlr_edit;
var
  yz_lr_id: integer;
begin
  yz_lr_id := cxgrid_yz.Controller.FocusedColumnIndex;
  case yz_lr_id of
    1: yzlbsr(kzbz); //���
    2: yzXmsr(kzbz); //��Ŀ����
    3: grid_yzlr_nextcol; //����
    5: grid_yzlr_nextcol; //�÷�
    6: grid_yzlr_nextcol; //��ҩ;��
    7: grid_yzlr_nextcol; //����
    15: grid_yzlr_nextcol; //����
    13: yzNew(kzbz); //���ÿ���
    10: yzNew(kzbz); //��������
    11: yzNew(kzbz); //������
    12: yzNew(kzbz); //���
    16: yzNew(kzbz); //˵��
  end;
end;

procedure Tfrm_zyblinput.bt_ztClick(Sender: TObject);
begin
 //����ģ��ǰ�����ѱ༭ҽ��
  mbdy := True;
  bt_saveyz.Click;
  mbdy := False;
  application.CreateForm(TFrm_yzzt, Frm_yzzt);
  try
    frm_yzzt.dymk := 'zy';
    frm_yzzt.tmh := zy_tmh;
    frm_yzzt.zyh := zy_zyh;
    frm_yzzt.xyfdm := prv_xyfdm;
    frm_yzzt.zyfdm := prv_zyfdm;
    Frm_yzzt.ShowModal;
  finally
    Frm_yzzt.free;
  end;
  refresh_yz;
  bt_yz_add.Click;
end;

procedure Tfrm_zyblinput.bt_ztsaveClick(Sender: TObject);
begin
 //��Ϊģ��ǰ�����ѱ༭ҽ��
  mbdy := True;
  bt_saveyz.Click;
  mbdy := False;
  if Trim(DBEdit10.Text) = '' then
    Application.MessageBox('û����ϲ��ܴ�Ϊģ��!!', '��ʾ', 0 + 48)
  else
    frm_yzmbsave(qry_yz, Trim(DBEdit10.Text), 'mz');
end;

procedure Tfrm_zyblinput.bt_saveyzClick(Sender: TObject);
var
  p_savezybz: Boolean;
begin
  if qry_yz.IsEmpty then
  begin
    btn_cancel.Click;
    Application.MessageBox('û�м�¼����ʹ�ñ���!!', '��ʾ', 0 + 48);
  end;
  P_zycfje := 0;
  dm_data.qry_gytj.filtered := false;
  yz_lr_yz;
  yz_cx_cqph('');
  qry_yz.First;
  p_savezybz := False;
  while not qry_yz.Eof do
  begin
    if (Trim(qry_yz.FieldByName('lb').AsString) = '��ҩ') and (qry_yz.FieldByName('zxbz').AsBoolean = False) then
    begin
      p_savezybz := True;
      P_zycfje := P_zycfje + qry_yz.FieldByName('sl').AsInteger * qry_yz.FieldByName('yplsj').AsFloat;
    end;
    if trim(qry_yz.FieldByName('ph').AsString) = '' then
      tjyzfcqyz; //û�����ŵļ�¼����������
    qry_yz.Next;
  end;
  try
    if p_savezybz and not mbdy then //������ҩ
      proc_zysave;
    qry_yz.UpdateBatch(arall);
    refresh_yz;
    yzlb := '';
    yzsx := '';
    if not mbdy then
    begin
      proc_btenable('save');
      application.MessageBox('����ɹ�!', '��ʾ', 0 + 48);
    end;
  except
    application.MessageBox('����ʧ��!', '��ʾ', 0 + 48);
  end;
end;

procedure Tfrm_zyblinput.b_retuClick(Sender: TObject);
begin
  tab_mb.TabVisible := false;
  zz.ActivePage := tab_bl;
end;

procedure Tfrm_zyblinput.cab_lsyzExit(Sender: TObject);
begin
  qry_lsyz.Close;
end;

procedure Tfrm_zyblinput.chk_qkClick(Sender: TObject);
begin
  bt_refresh.Click;
end;

procedure Tfrm_zyblinput.chk_qyClick(Sender: TObject);
begin
  bt_refresh.Click;
end;

procedure Tfrm_zyblinput.FormActivate(Sender: TObject);
begin
  EMRPad301.UniversalBoolFunction('46772A-PCT6LE-2T002G-E0ZIJP', '', 98, 2006102911);
end;

procedure Tfrm_zyblinput.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f2 then
    ZZ.ActivePage := tab_bl;
  if key = vk_f3 then
    ZZ.ActivePage := tab_yz;

end;

procedure Tfrm_zyblinput.bt_lsyzClick(Sender: TObject);
begin
    //������ʷҽ��ǰ�����ѱ༭ҽ��
  if ds_yz.State in [dsedit, dsinsert] then
  begin
    dm_data.ado_mydata.BeginTrans;
    try
      qry_yz.UpdateBatch();
      dm_data.ado_mydata.CommitTrans;
      scbz := 0;
    except
      dm_data.ado_mydata.RollbackTrans;
    end;
  end;
end;

procedure Tfrm_zyblinput.edit_tmhEnter(Sender: TObject);
begin
  edit_tmh.Text := '';
  frm_func.changecolor(Sender);
end;

procedure Tfrm_zyblinput.edit_tmhExit(Sender: TObject);
begin
  frm_func.restorecolor(Sender);
end;

procedure Tfrm_zyblinput.edit_tmhKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  v_tmh: string;
begin
  if key = 13 then
  begin
    v_tmh := Trim(edit_tmh.Text);
    bt_refresh.Click;
    if sp_brxx.Active then
      if sp_brxx.RecordCount > 0 then
      begin
        sp_brxx.First;
        if not sp_brxx.Locate('bybh', v_tmh, []) then
        begin
          Application.MessageBox('��ʾ:δ�ҵ�ָ�����Ų�Ա��Ϣ,��ȷ���Ƿ�������ȷ!', '��ʾ', 16);
          Exit;
        end
        else
          wczbrgrid.OnDblClick(Sender);
      end;
  end;
end;

procedure Tfrm_zyblinput.edt_zskKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    qry_blzsk.close;
    qry_blzsk.Parameters.ParamByName('mbmc').value := '%' + trim(edt_zsk.text) + '%';
    qry_blzsk.Parameters.ParamByName('pym').value := trim(edt_zsk.text) + '%';
    qry_blzsk.Parameters.ParamByName('dldm').value := '%';
    edt_zsk.TEXT := '';
    qry_blzsk.open;
    if qry_blzsk.RecordCount <> 0 then
    begin
      DBGridmbmx.Enabled := true;
      DBGridmbmx.SetFocus;
    end
    else
    begin
      qry_blzsk.close;
      application.MessageBox('û������������֪ʶ��ģ�壡', '��ʾ', 16);
      DBGridmbmx.Enabled := false;
      edt_zsk.Clear;
      edt_zsk.SetFocus;
    end;
  end;
end;

procedure Tfrm_zyblinput.DBEdit7Exit(Sender: TObject);
begin
  if qry_yz.State in [dsedit, dsinsert] then
    if qry_yz.FieldByName('sl').AsInteger <= 0 then
    begin
      application.MessageBox('���������������0!', '��ʾ��Ϣ', 0 + 16);
    end;
end;

procedure Tfrm_zyblinput.dbgrd_zxqhExit(Sender: TObject);
begin
  dbgrd_zxqh.Visible := false;
end;

procedure Tfrm_zyblinput.DBGridmbmxDblClick(Sender: TObject);
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
      EMRPad301.setfieldtext(-1, -1, -1, -1, qry_blzsk.FieldByName('mbmc').AsString);
      zz.ActivePage := Tab_bl;
    end
    else
      if rbgjcnr.Checked then
      begin
        filename := GetCurrentDir + '\' + 'zlktemp';
        EMRPad301.CleanUndoBuffer; //��ձ༭������
        EMRPad301.CleanClipboard; //��ռ�����
        try
          stream := TADOBlobStream.Create(qry_blzsk.FieldByName('mbwj') as TBlobField, bmRead);
          stream.Position := 0;
          stream1 := TFileStream.Create(filename, fmCreate);
          stream1.Position := 0;
          stream1.CopyFrom(stream, stream.Size);
        finally
          stream1.Free;
          stream.Free;
        end;
        EMRPad301.FileInsert(filename, 0);
        zz.ActivePage := Tab_bl;
        tab_zsk.TabVisible := false;
      end;
  end
  else
    application.messagebox('û��ѡ����Ӧ�Ĺؼ��ʲ��ܻ���', '��ʾ', mb_ok);
end;

procedure Tfrm_zyblinput.DBGrid_JbDblClick(Sender: TObject);
begin
  iscrb := ad_jbcx.FieldByName('crbsb').Asboolean;
  icd10_sypl;
end;

procedure Tfrm_zyblinput.DBGrid_JbExit(Sender: TObject);
begin
  dbgrid_Jb.visible := false;
end;

procedure Tfrm_zyblinput.DBGrid_JbKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    iscrb := ad_jbcx.FieldByName('crbsb').Asboolean;
    icd10_sypl;
  end;
end;


procedure Tfrm_zyblinput.bt_yz_addClick(Sender: TObject);
var
  p_sctext: string;
begin
  with DM_data.qry_pub do
  begin
    Close;
    SQL.Text := 'select * from zysf_zyfymx_ls where  tmh=' + #39 + zy_zyh + #39 + ' and kdys=' + #39 + pub_czydm + #39;
    Open;
  end;
  if not DM_data.qry_pub.IsEmpty then
  begin
    if Application.MessageBox('�༭ҽ����ɾ���ղ�����ҽ���Ƿѣ����˽��޷����շ��ҽɷ�,�Ƿ����!!', '��ʾ', 4 + 256 + 32) = 6 then
    begin
      sp_del_fyls.Close;
      sp_del_fyls.Parameters.ParamByName('@tmh').Value := zy_zyh;
      sp_del_fyls.Parameters.ParamByName('@kdys').Value := pub_czydm;
      sp_del_fyls.Parameters.ParamByName('@sczt').Value := '';
      sp_del_fyls.ExecProc;
      P_sctext := sp_del_fyls.Parameters.ParamByName('@sczt').Value;
      if P_sctext <> '1' then
        Application.MessageBox(PChar(P_sctext), '', 0 + 48)
      else
        proc_yzbj;
    end
    else
      Abort;
  end
  else
  begin
    proc_yzbj;
  end;
end;

procedure Tfrm_zyblinput.cxGrid2DBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
var
  stream: TADOBlobStream;
  stream1: TFileStream;
  filename: string;
begin
  if qry_mbmx.RecordCount <> 0 then
  begin
    editmode := 'add'; //������¼��Ϊ����״̬
    filename := GetCurrentDir + '\' + 'otemp';
    EMRPad301.CleanUndoBuffer; //��ձ༭������
    EMRPad301.CleanClipboard; //��ռ�����
    EMRPad301.FileNew;
    pub_mbdldm := qry_mbmx.FieldByName('dm').AsString;
    pub_mbid := qry_mbmx.FieldByName('mbdm').Asinteger;
    pub_filename := qry_mbmx.FieldByName('mbmc').AsString;
    try
      stream := TADOBlobStream.Create(qry_mbmx.FieldByName('mbwj') as TBlobField, bmRead);
      stream.Position := 0;
      stream1 := TFileStream.Create(filename, fmCreate);
      stream1.Position := 0;
      stream1.CopyFrom(stream, stream.Size);
    finally
      stream1.Free;
      stream.Free;
    end;
    EMRPad301.FileOpen(filename, 0);
    zz.ActivePage := Tab_bl;
    bt_savebl.click;
    treeviewzpDblClick(self); //�¼�ģ��ֱ�ӽ��б༭״̬
    tab_mb.TabVisible := false;
  end
  else
    application.MessageBox('û��ģ�岻�����ɲ���!', '��ʾ', 0 + 48);
end;

procedure Tfrm_zyblinput.tab_zskExit(Sender: TObject);
begin
  tab_zsk.TabVisible := false;
end;

initialization
  RegisterClass(Tfrm_zyblinput);
end.

