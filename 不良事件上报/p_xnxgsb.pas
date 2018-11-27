unit p_xnxgsb;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
    Dialogs, StdCtrls, cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
    cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxStyles,
    cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, DB, cxDBData,
    cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
    cxGridTableView, cxGridDBTableView, cxGrid, cxCalendar, ADODB, ExtCtrls,
    QuickRpt, QRCtrls, ComCtrls, DBCtrls,cxGridExportLink, cxDBEdit, Mask,
    cxCheckListBox, Grids, DBGrids, Menus, ActnList, DBGridEhGrouping, Buttons,
  GridsEh, DBGridEh, cxCheckBox, PrnDbgeh;

type
  Tfrm_xnxgsb = class(TForm)
    Panel3: TPanel;
    AdoInsert: TADODataSet;
    DSinsert: TDataSource;
    qry_temp: TADOQuery;
    ado_cydj: TADODataSet;
    qry_pub: TADOQuery;
    ad_jbbm: TADODataSet;
    ADODataSet10: TADODataSet;
    ADODataSet8: TADODataSet;
    DataSource8: TDataSource;
    pc1: TPageControl;
    TabSheet1: TTabSheet;
    Panel4: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Panel5: TPanel;
    Label25: TLabel;
    DBEdit13: TDBEdit;
    Panel9: TPanel;
    Label37: TLabel;
    jbmc1: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label33: TLabel;
    DBEdit24: TDBEdit;
    DBEdit30: TDBEdit;
    DBEdit31: TDBEdit;
    dtpswrq: TcxDBDateEdit;
    dtpbgrq: TcxDBDateEdit;
    GroupBox1: TGroupBox;
    cxCheckBox2: TcxCheckBox;
    cxCheckBox3: TcxCheckBox;
    cxCheckBox4: TcxCheckBox;
    cxCheckBox5: TcxCheckBox;
    cxCheckBox6: TcxCheckBox;
    cxCheckBox7: TcxCheckBox;
    cxCheckBox1: TcxCheckBox;
    cxCheckBox8: TcxCheckBox;
    cxCheckBox9: TcxCheckBox;
    DBGrid3: TDBGridEh;
    Panel7: TPanel;
    B_save: TBitBtn;
    BitBtn6: TBitBtn;
    Button1: TButton;
    BitBtn2: TBitBtn;
    Panel1: TPanel;
    DBGridEh1: TDBGridEh;
    ckqk: TPopupMenu;
    N1: TMenuItem;
    TabSheet2: TTabSheet;
    Panel6: TPanel;
    Label13: TLabel;
    Label23: TLabel;
    gr: TRadioButton;
    ks: TRadioButton;
    Button9: TButton;
    dtpksrq: TDateTimePicker;
    dtpjsrq: TDateTimePicker;
    Button7: TButton;
    Button12: TButton;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1zytmh: TcxGridDBColumn;
    cxGrid1DBTableView1brxm: TcxGridDBColumn;
    cxGrid1DBTableView1brnl: TcxGridDBColumn;
    cxGrid1DBTableView1brxb: TcxGridDBColumn;
    cxGrid1DBTableView1sbrq: TcxGridDBColumn;
    cxGrid1DBTableView1sbr: TcxGridDBColumn;
    cxGrid1DBTableView1sbks: TcxGridDBColumn;
    cxGrid1DBTableView1sfwc: TcxGridDBColumn;
    cxGrid1DBTableView1brlymc: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1DBTableView1mztmh: TcxGridDBColumn;
    ds_sjcx: TDataSource;
    cxGrid1DBTableView1brks: TcxGridDBColumn;
    SaveDialog1: TSaveDialog;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    zytmh: TcxGridDBColumn;
    brks: TcxGridDBColumn;
    brxm: TcxGridDBColumn;
    brnl: TcxGridDBColumn;
    brxb: TcxGridDBColumn;
    rysj: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    sp_sjcx1: TADOStoredProc;
    ds_sjcx1: TDataSource;
    sp_sjcx1tmh: TStringField;
    sp_sjcx1brxm: TStringField;
    sp_sjcx1brxb: TStringField;
    sp_sjcx1rysj: TDateTimeField;
    sp_sjcx1CYSJ: TDateTimeField;
    sp_sjcx1cyks: TStringField;
    cysj: TcxGridDBColumn;
    sp_sjcx1brnl: TStringField;
    zzys: TcxGridDBColumn;
    zyys: TcxGridDBColumn;
    sp_sjcx1zzys: TStringField;
    sp_sjcx1zyys: TStringField;
    Panel11: TPanel;
    Label54: TLabel;
    Label55: TLabel;
    Button5: TButton;
    dtpsbksrq: TDateTimePicker;
    dtpsbjsrq: TDateTimePicker;
    Button6: TButton;
    Button8: TButton;
    cxGrid3: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    brly: TcxGridDBColumn;
    sp_sjcx1brly: TStringField;
    sp_sjcx2: TADOStoredProc;
    ds_sjcx2: TDataSource;
    QuickRep2: TQuickRep;
    QRBand2: TQRBand;
    QRLabel157: TQRLabel;
    QRLabel158: TQRLabel;
    QRLabel159: TQRLabel;
    QRSubDetail1: TQRSubDetail;
    s_brbh: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    xzsb: TRadioButton;
    blsb: TRadioButton;
    DBGridEh5: TDBGridEh;
    ds_cydj: TDataSource;
    ado_cydjKH: TStringField;
    ado_cydjXM: TStringField;
    ado_cydjXB: TStringField;
    ado_cydjBRNL: TStringField;
    ado_cydjRYSJ: TDateTimeField;
    ado_cydjZYH: TStringField;
    sp_sjcx1zyh: TStringField;
    csdmc: TcxGridDBColumn;
    sp_sjcx1CSDMC: TStringField;
    hzks: TRadioButton;
    hzgr: TRadioButton;
    PopupMenu1: TPopupMenu;
    MenuItem1: TMenuItem;
    PopupMenu2: TPopupMenu;
    MenuItem2: TMenuItem;
    Label58: TLabel;
    cxComboBox9: TcxComboBox;
    N2: TMenuItem;
    N3: TMenuItem;
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel59: TQRLabel;
    QRLabel62: TQRLabel;
    QRLabel64: TQRLabel;
    QRLabel65: TQRLabel;
    QRLabel66: TQRLabel;
    QRLabel67: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel68: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel69: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRLabel43: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRLabel46: TQRLabel;
    QRLabel47: TQRLabel;
    QRLabel48: TQRLabel;
    QRLabel49: TQRLabel;
    QRLabel50: TQRLabel;
    QRLabel71: TQRLabel;
    QRLabel72: TQRLabel;
    QRLabel73: TQRLabel;
    QRLabel74: TQRLabel;
    QRLabel75: TQRLabel;
    QRLabel76: TQRLabel;
    QRLabel77: TQRLabel;
    QRLabel78: TQRLabel;
    QRLabel79: TQRLabel;
    QRLabel80: TQRLabel;
    QRLabel81: TQRLabel;
    QRLabel82: TQRLabel;
    QRLabel83: TQRLabel;
    QRLabel84: TQRLabel;
    QRLabel85: TQRLabel;
    QRLabel86: TQRLabel;
    QRLabel87: TQRLabel;
    QRLabel88: TQRLabel;
    QRLabel89: TQRLabel;
    QRLabel90: TQRLabel;
    QRLabel91: TQRLabel;
    QRLabel51: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel52: TQRLabel;
    QRLabel53: TQRLabel;
    QRLabel54: TQRLabel;
    QRLabel102: TQRLabel;
    QRLabel103: TQRLabel;
    QRLabel105: TQRLabel;
    QRLabel107: TQRLabel;
    QRLabel109: TQRLabel;
    QRLabel111: TQRLabel;
    QRLabel113: TQRLabel;
    QRLabel116: TQRLabel;
    QRLabel117: TQRLabel;
    QRLabel119: TQRLabel;
    QRLabel121: TQRLabel;
    QRLabel123: TQRLabel;
    QRLabel125: TQRLabel;
    QRLabel126: TQRLabel;
    QRShape2: TQRShape;
    QRShape1: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRLabel115: TQRLabel;
    QRLabel128: TQRLabel;
    QRLabel129: TQRLabel;
    QRLabel131: TQRLabel;
    QRLabel132: TQRLabel;
    QRLabel135: TQRLabel;
    QRLabel136: TQRLabel;
    QRLabel70: TQRLabel;
    QRLabel139: TQRLabel;
    QRLabel140: TQRLabel;
    QRLabel92: TQRLabel;
    QRLabel93: TQRLabel;
    QRLabel94: TQRLabel;
    QRLabel95: TQRLabel;
    QRLabel96: TQRLabel;
    QRLabel97: TQRLabel;
    QRLabel98: TQRLabel;
    QRLabel99: TQRLabel;
    QRLabel100: TQRLabel;
    QRLabel101: TQRLabel;
    QRLabel138: TQRLabel;
    QRLabel106: TQRLabel;
    QRLabel104: TQRLabel;
    QRLabel108: TQRLabel;
    QRLabel110: TQRLabel;
    QRLabel112: TQRLabel;
    QRLabel114: TQRLabel;
    QRLabel118: TQRLabel;
    QRLabel120: TQRLabel;
    QRLabel122: TQRLabel;
    QRLabel124: TQRLabel;
    QRLabel127: TQRLabel;
    QRLabel130: TQRLabel;
    QRLabel133: TQRLabel;
    QRLabel134: TQRLabel;
    QRLabel137: TQRLabel;
    QRLabel141: TQRLabel;
    QRLabel142: TQRLabel;
    QRLabel143: TQRLabel;
    QRLabel144: TQRLabel;
    QRLabel145: TQRLabel;
    QRLabel146: TQRLabel;
    QRLabel147: TQRLabel;
    QRLabel148: TQRLabel;
    QRLabel149: TQRLabel;
    QRLabel150: TQRLabel;
    QRLabel151: TQRLabel;
    QRLabel152: TQRLabel;
    QRLabel153: TQRLabel;
    QRLabel154: TQRLabel;
    QRLabel155: TQRLabel;
    QRLabel160: TQRLabel;
    QRLabel161: TQRLabel;
    QRLabel61: TQRLabel;
    QRLabel63: TQRLabel;
    QRLabel60: TQRLabel;
    PageHeaderBand1: TQRBand;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel55: TQRLabel;
    QRLabel56: TQRLabel;
    QRLabel57: TQRLabel;
    QRLabel58: TQRLabel;
    QRLabel156: TQRLabel;
    QRLabel162: TQRLabel;
    Label2: TLabel;
    DBEdit3: TDBEdit;
    Label15: TLabel;
    fbrq: TcxDBDateEdit;
    Label24: TLabel;
    Label35: TLabel;
    qzrq: TcxDBDateEdit;
    Label36: TLabel;
    Label38: TLabel;
    cxComboBox10: TcxComboBox;
    cxCheckBox10: TcxCheckBox;
    Label5: TLabel;
    Label6: TLabel;
    DBEdit2: TDBEdit;
    AdoInsertid: TAutoIncField;
    AdoInsertmztmh: TStringField;
    AdoInsertzytmh: TStringField;
    AdoInsertzyh: TStringField;
    AdoInsertksdm: TStringField;
    AdoInsertsbczy: TStringField;
    AdoInsertysmzzy: TStringField;
    AdoInsertbrxm: TStringField;
    AdoInsertbrxb: TStringField;
    AdoInsertbrnl: TStringField;
    AdoInsertcsrq: TDateTimeField;
    AdoInsertsfzhm: TStringField;
    AdoInsertjbzdxh: TStringField;
    AdoInsertbrzd: TStringField;
    AdoInsertbrmz: TStringField;
    AdoInserthyzk: TStringField;
    AdoInsertbrzy: TStringField;
    AdoInsertgzdw: TStringField;
    AdoInsertjtdh: TStringField;
    AdoInserthkdz: TStringField;
    AdoInserthkdzsq: TStringField;
    AdoInserthkdzxq: TStringField;
    AdoInserthkdzxz: TStringField;
    AdoInsertjzdz: TStringField;
    AdoInsertbrks: TStringField;
    AdoInsertsjbh: TStringField;
    AdoInsertxzqhdm: TStringField;
    AdoInsertxzqhxq: TStringField;
    AdoInsertxzqhjd: TStringField;
    AdoInsertyxq: TDateTimeField;
    AdoInsertqzfq: TStringField;
    AdoInsertbgdw: TStringField;
    AdoInsertbgys: TStringField;
    AdoInsertbgrq: TDateTimeField;
    AdoInsertswrq: TDateTimeField;
    AdoInsertgbsy: TStringField;
    AdoInsertswdd: TStringField;
    AdoInsertyzd: TStringField;
    AdoInsertyzdrq: TDateTimeField;
    AdoInsertblyf: TStringField;
    AdoInsertsjybl: TStringField;
    AdoInsertbfb: TStringField;
    AdoInsertsjsbrq: TDateTimeField;
    AdoInsertzdyj: TStringField;
    AdoInsertzdyjmc: TStringField;
    AdoInsertscfb: TStringField;
    AdoInsertfbrq: TDateTimeField;
    AdoInsertqzrq: TDateTimeField;
    AdoInsertzgqk: TStringField;
    AdoInsertzgqzdw: TStringField;
    AdoInsertbrly: TStringField;
    AdoInsertsfwc: TStringField;
    AdoInsertsfdy: TStringField;
    AdoInsertlxr: TStringField;
    AdoInsertqzdw: TStringField;
    AdoInsertzgzdyj: TStringField;
    AdoInsertzgzdyjmc: TStringField;
    cxComboBox4: TcxComboBox;
    cxComboBox7: TcxComboBox;
    sp_sjcx: TADOStoredProc;
    sp_sjcxid: TAutoIncField;
    sp_sjcxsbksmc: TStringField;
    sp_sjcxlcsfwc: TStringField;
    sp_sjcxbrlymc: TStringField;
    sp_sjcxysmzzy: TStringField;
    sp_sjcxmztmh: TStringField;
    sp_sjcxzytmh: TStringField;
    sp_sjcxzyh: TStringField;
    sp_sjcxksdm: TStringField;
    sp_sjcxsbczy: TStringField;
    sp_sjcxbrxm: TStringField;
    sp_sjcxbrxb: TStringField;
    sp_sjcxbrnl: TStringField;
    sp_sjcxcsrq: TDateTimeField;
    sp_sjcxsfzhm: TStringField;
    sp_sjcxjbzdxh: TStringField;
    sp_sjcxbrzd: TStringField;
    sp_sjcxbrmz: TStringField;
    sp_sjcxhyzk: TStringField;
    sp_sjcxbrzy: TStringField;
    sp_sjcxgzdw: TStringField;
    sp_sjcxjtdh: TStringField;
    sp_sjcxlxr: TStringField;
    sp_sjcxhkdz: TStringField;
    sp_sjcxhkdzsq: TStringField;
    sp_sjcxhkdzxq: TStringField;
    sp_sjcxhkdzxz: TStringField;
    sp_sjcxjzdz: TStringField;
    sp_sjcxbrks: TStringField;
    sp_sjcxsjbh: TStringField;
    sp_sjcxxzqhdm: TStringField;
    sp_sjcxxzqhxq: TStringField;
    sp_sjcxxzqhjd: TStringField;
    sp_sjcxyxq: TDateTimeField;
    sp_sjcxqzfq: TStringField;
    sp_sjcxbgdw: TStringField;
    sp_sjcxbgys: TStringField;
    sp_sjcxbgrq: TDateTimeField;
    sp_sjcxswrq: TDateTimeField;
    sp_sjcxgbsy: TStringField;
    sp_sjcxswdd: TStringField;
    sp_sjcxyzd: TStringField;
    sp_sjcxyzdrq: TDateTimeField;
    sp_sjcxblyf: TStringField;
    sp_sjcxsjybl: TStringField;
    sp_sjcxbfb: TStringField;
    sp_sjcxsjsbrq: TDateTimeField;
    sp_sjcxzdyj: TStringField;
    sp_sjcxzdyjmc: TStringField;
    sp_sjcxzgzdyj: TStringField;
    sp_sjcxzgzdyjmc: TStringField;
    sp_sjcxscfb: TStringField;
    sp_sjcxfbrq: TDateTimeField;
    sp_sjcxqzrq: TDateTimeField;
    sp_sjcxzgqk: TStringField;
    sp_sjcxzgqzdw: TStringField;
    sp_sjcxqzdw: TStringField;
    sp_sjcxbrly: TStringField;
    sp_sjcxsfwc: TStringField;
    sp_sjcxsfdy: TStringField;
    AdoInserthkdzbm: TStringField;
    AdoInsertjzdzbm: TStringField;
    Panel8: TPanel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label14: TLabel;
    Label10: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label34: TLabel;
    Label50: TLabel;
    Label1: TLabel;
    DBEdit6: TDBEdit;
    DBEdit4: TDBEdit;
    cxComboBox3: TcxComboBox;
    DBEdit7: TDBEdit;
    dtpcsrq: TcxDBDateEdit;
    cxComboBox5: TcxComboBox;
    DBEdit9: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit12: TDBEdit;
    cxComboBox6: TcxComboBox;
    DBEdit17: TDBEdit;
    Edit1: TEdit;
    Edit2: TEdit;
    DBEdit1: TDBEdit;
    jbmc3: TLabel;
    Label27: TLabel;
    AdoInsertbrzdxh: TStringField;
    GroupBox2: TGroupBox;
    cxCheckBox12: TcxCheckBox;
    cxCheckBox13: TcxCheckBox;
    cxCheckBox14: TcxCheckBox;
    cxCheckBox15: TcxCheckBox;
    cxCheckBox16: TcxCheckBox;
    cxCheckBox17: TcxCheckBox;
    cxCheckBox11: TcxCheckBox;
    cxCheckBox18: TcxCheckBox;
    cxCheckBox19: TcxCheckBox;
    cxCheckBox20: TcxCheckBox;
    Button10: TButton;
    AdoInsertjbzdxhmc: TStringField;
    cxGrid1DBTableView1sfsh: TcxGridDBColumn;
    sp_sjcxlcsfsh: TStringField;
    AdoInsertsfsh: TBooleanField;
    Label26: TLabel;
    sp_sjcxsfsh: TBooleanField;
    Panel2: TPanel;
    Label52: TLabel;
    Label53: TLabel;
    Label59: TLabel;
    lbgr: TRadioButton;
    lbks: TRadioButton;
    Button2: TButton;
    dtplbksrq: TDateTimePicker;
    dtplbjsrq: TDateTimePicker;
    Button3: TButton;
    Button4: TButton;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Add_xsz(bmc,cxz:string;Cbox:TcxComboBox;fjtj:string);
    procedure DBEdit24DblClick(Sender: TObject);
    procedure DBEdit24KeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure B_saveClick(Sender: TObject);
    procedure DBEdit23DblClick(Sender: TObject);
    procedure DBEdit25DblClick(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure cxComboBox6Exit(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure DBEdit12Exit(Sender: TObject);
    procedure DBGrid3DblClick(Sender: TObject);
    procedure DBGrid3KeyPress(Sender: TObject; var Key: Char);
    procedure Button1Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure sp_sjcxCalcFields(DataSet: TDataSet);
    procedure Button9Click(Sender: TObject);
    procedure cxGrid1DBTableView1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure Button7Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure cxComboBox2PropertiesEditValueChanged(Sender: TObject);
    procedure xzsbClick(Sender: TObject);
    procedure blsbClick(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGridEh5DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxGridDBTableView2CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure Button5Click(Sender: TObject);
    procedure cxGridDBTableView1DblClick(Sender: TObject);
    procedure DBGridEh1CellClick(Column: TColumnEh);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBGridEh5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Button8Click(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure QRLabel151Print(sender: TObject; var Value: string);
    procedure QRLabel138Print(sender: TObject; var Value: string);
    procedure QRLabel104Print(sender: TObject; var Value: string);
    procedure QRLabel106Print(sender: TObject; var Value: string);
    procedure QRLabel108Print(sender: TObject; var Value: string);
    procedure QRLabel110Print(sender: TObject; var Value: string);
    procedure QRLabel112Print(sender: TObject; var Value: string);
    procedure QRLabel114Print(sender: TObject; var Value: string);
    procedure QRLabel118Print(sender: TObject; var Value: string);
    procedure QRLabel120Print(sender: TObject; var Value: string);
    procedure QRLabel88Print(sender: TObject; var Value: string);
    procedure QRLabel161Print(sender: TObject; var Value: string);
    procedure DBEdit3DblClick(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure cxGrid1DBTableView1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
  private
    { Private declarations }
    procedure zdyjbc;//诊断依据,病理分期保存
    procedure zdyjzk;//诊断依据,病理分期展开
    procedure xzqhzk;//行政区划诊根据县区展开乡镇
    procedure qkxx;//清空选项
    function  get_zdmc(bmc,cxz,bmid:string):string;//获取诊断名称
    function get_xsz_ba(bmc,cxz:string):string;
    function ljjc:boolean;//逻辑检查
    procedure zycsh;//住院初始化
    procedure mzcsh;//门诊初始化
    procedure tbjc(lstmh:string);//填报填是否有已存在记录检查
    procedure sxlb;//刷新待处理病人列表
    procedure sfzhjc(sfzh:string);
    procedure pro_print(i:Integer);
    procedure auto_print;//自动打印初始化
  public
    { Public declarations }
  v_brly:string;//病人来源标志
  kj1:TObject;
  v_tmh,v_zyh:string;
  end;

var
  frm_xnxgsb: Tfrm_xnxgsb;

implementation

{$R *.dfm}
uses p_main,p_dm,p_func, p_zlbljbcx,P_zlblmbm,p_blsj_checkError, p_zlblbwxz,p_zlblbrzy;
procedure Tfrm_xnxgsb.BitBtn2Click(Sender: TObject);
var
id:string;
begin
   id:=trim(adoinsert.FieldByName('id').AsString);
   if id<>'' then//已经保存过,ID已生成
   begin
     ADOInsert.Edit;
     zdyjbc;
     ADOInsert['mztmh']:=trim(edit2.Text);
     ADOInsert['brxb']:=trim(cxcombobox3.Text);
     ADOInsert['brzy']:=trim(cxcombobox5.Text);
     ADOInsert['brmz']:=trim(cxcombobox6.Text);
     ADOInsert['swdd']:=trim(cxcombobox9.Text);
     ADOInsert['scfb']:=trim(cxcombobox4.Text); //首次发病
     ADOInsert['qzdw']:=trim(cxcombobox7.Text); //确诊单位
     ADOInsert['zgqk']:=trim(cxcombobox10.Text); //转归情况//转归情况
     ADOInsert.Post;
     ADOInsert.UpdateBatch(Arall);
    // qkxx;
     sxlb;
     adoinsert.Locate('id',id,[loCaseInsensitive]) ;
     DBGridEh1DblClick(self);
     ADOInsert.Edit;
     if not ljjc then
     begin
       if (application.MessageBox('完成后不能再进行任何修改，是否继续？', '请注意', MB_YESNO + MB_ICONQUESTION) = IDYES) then
       begin
        tbjc(v_tmh);
        qry_temp.Close;
        qry_temp.SQL.Clear;
        qry_temp.SQL.Add('update zybl_xnxgsb set sfwc=1 where id='+id);
        qry_temp.ExecSQL;
        adoinsert.Close;
        qkxx;
        sxlb;
       end
     end
     else
     begin
      adoinsert.Locate('id',id,[loCaseInsensitive]) ;
      adoinsert.Edit;
     end;
   end
   else //id为空(一次都未保存)
   begin
     ADOInsert.Edit;
     zdyjbc;
     ADOInsert['mztmh']:=trim(edit2.Text);
     ADOInsert['brxb']:=trim(cxcombobox3.Text);
     ADOInsert['brzy']:=trim(cxcombobox5.Text);
     ADOInsert['brmz']:=trim(cxcombobox6.Text);
     ADOInsert['swdd']:=trim(cxcombobox9.Text);
     ADOInsert['scfb']:=trim(cxcombobox4.Text); //首次发病
     ADOInsert['qzdw']:=trim(cxcombobox7.Text); //确诊单位
     ADOInsert['zgqk']:=trim(cxcombobox10.Text); //转归情况
     ADOInsert.Post;
     ADOInsert.UpdateBatch(Arall);
     id:=trim(adoinsert.FieldByName('id').AsString);
    // qkxx;
     sxlb;
     adoinsert.Locate('id',id,[loCaseInsensitive]) ;
     DBGridEh1DblClick(self);
     ADOInsert.Edit;
     B_save.Enabled :=False;
     bitbtn2.Enabled:=false;
     Button1.Enabled :=True;
     DBGridEh1DblClick(self);
     if (not ljjc) and (id<>'') then
     begin
       if (application.MessageBox('完成后不能再进行任何修改，是否继续？', '请注意', MB_YESNO + MB_ICONQUESTION) = IDYES) then
       begin
        tbjc(v_tmh);
        qry_temp.Close;
        qry_temp.SQL.Clear;
        qry_temp.SQL.Add('update zybl_xnxgsb set sfwc=1 where id='+id);
        qry_temp.ExecSQL;
        adoinsert.Close;
        qkxx;
        sxlb;
       end
     end
     else
     begin
      adoinsert.Locate('id',id,[loCaseInsensitive]) ;
      adoinsert.Edit;
     end;
   end
end;

procedure Tfrm_xnxgsb.blsbClick(Sender: TObject);
begin
 if v_brly='ZY' then
 begin
 edit1.ReadOnly:=false;
 edit2.ReadOnly:=true
 end
 else if v_brly='MZ' then
 begin
 edit1.ReadOnly:=true;
 edit2.ReadOnly:=false
 end ;
 adoinsert.Close;
 edit1.Text:='';
 qkxx;
end;

procedure Tfrm_xnxgsb.Button10Click(Sender: TObject);
var
id:string;
begin
  id:=sp_sjcx.FieldByName('id').AsString;
  if Trim(sp_sjcx.FieldByName('sfwc').AsString)='1' then
  begin
  qry_temp.Close;
  qry_temp.SQL.Clear;
  qry_temp.SQL.Add('update zybl_xnxgsb set sfsh=1,shry='+#39+pub_czydm+#39+' where id='+trim(sp_sjcx.FieldByName('id').AsString));
  qry_temp.ExecSQL;
  Button9.Click;
  sp_sjcx.Locate('id',id,[loCaseInsensitive]) ;
  end
  else
  MessageBox(0, '只能审核已完成的上报记录!', '系统提示', MB_OK + MB_ICONINFORMATION);
end;

procedure Tfrm_xnxgsb.Button12Click(Sender: TObject);
begin
 if SaveDialog1.Execute then
  begin
    exportgridtoexcel(SaveDialog1.FileName, cxGrid2, true, true);
    MessageBox(0, '数据导出完毕!', '系统提示', MB_OK + MB_ICONINFORMATION);
  end;
end;
procedure Tfrm_xnxgsb.pro_print(i:Integer);
var
sfzhm:string;
lssql:string;
begin
try
 qrlabel142.Caption:=trim(dbedit17.Text);
 qrlabel60.Caption:=trim(dbedit24.Text)+' '+trim(jbmc1.Caption);//ICD10诊断
 qrlabel65.Caption:=trim(Edit2.Text);//门诊号
 qrlabel156.Caption:=trim(dbedit13.Text);//编号
 sfzhm:=trim(dbedit10.Text);
 if (sfzhm<>'') and (sfzhm<>'无')  then
 begin
  qrlabel6.Caption:=copy(sfzhm,1,1);
  qrlabel7.Caption:=copy(sfzhm,2,1);
  qrlabel8.Caption:=copy(sfzhm,3,1);
  qrlabel9.Caption:=copy(sfzhm,4,1);
  qrlabel17.Caption:=copy(sfzhm,5,1);
  qrlabel18.Caption:=copy(sfzhm,6,1);
  qrlabel19.Caption:=copy(sfzhm,7,1);
  qrlabel20.Caption:=copy(sfzhm,8,1);
  qrlabel21.Caption:=copy(sfzhm,9,1);
  qrlabel22.Caption:=copy(sfzhm,10,1);
  qrlabel23.Caption:=copy(sfzhm,11,1);
  qrlabel24.Caption:=copy(sfzhm,12,1);
  qrlabel25.Caption:=copy(sfzhm,13,1);
  qrlabel26.Caption:=copy(sfzhm,14,1);
  qrlabel27.Caption:=copy(sfzhm,15,1);
  qrlabel28.Caption:=copy(sfzhm,16,1);
  qrlabel29.Caption:=copy(sfzhm,17,1);
  qrlabel30.Caption:=copy(sfzhm,18,1);
 end;
 qrlabel67.Caption:=trim(edit1.Text);//住院号
 qrlabel51.Caption:=trim(dbedit4.Text);//家庭电话
 qrlabel140.Caption:=trim(dbedit6.Text); //姓名
 qrlabel70.Caption:=trim(cxcombobox3.Text);//性别
 qrlabel139.Caption:=trim(dbedit7.Text);//患者年龄
 if FormatDateTime('yyyy-mm-dd hh:mm:ss', dtpcsrq.Date) > '1900-00-00 00:00:00' then
 qrlabel33.Caption:=FormatDateTime('yyyy年mm月dd日', dtpcsrq.Date);;//出生年月
 qrlabel34.Caption:=trim(cxcombobox6.Text);//民族
 qrlabel37.Caption:=trim(cxcombobox5.Text);//职业工种
 qrlabel91.Caption:=trim(dbedit9.Text); //工作单位
 qrlabel43.Caption:=trim(dbedit12.Text); //居住地址
 qrlabel82.Caption:=trim(dbedit30.Text);//报告单位
 qrlabel84.Caption:=trim(dbedit31.Text);//报告医师
 if FormatDateTime('yyyy-mm-dd hh:mm:ss', dtpbgrq.Date) > '2000-00-00 00:00:00' then
  qrlabel86.Caption:=FormatDateTime('yyyy年mm月dd日', dtpbgrq.Date);;//报告日期
 if FormatDateTime('yyyy-mm-dd hh:mm:ss', dtpswrq.Date) > '2000-00-00 00:00:00' then
  qrlabel88.Caption:=FormatDateTime('yyyy年mm月dd日', dtpswrq.Date);;//死亡日期
  //qrlabel90.Caption:=trim(cxcombobox1.Text);//根本死因
  qrlabel161.Caption:=trim(cxcombobox9.Text);//死亡地点
 if cxcheckbox11.Checked then //临床
  qrlabel138.Caption:='√'
  else
  qrlabel138.Caption:='';
 if cxcheckbox12.Checked then //X线
  qrlabel104.Caption:='√'
  else
 qrlabel104.Caption:='';
 if cxcheckbox13.Checked then //超声波
  qrlabel106.Caption:='√'
  else
 qrlabel106.Caption:='';
 if cxcheckbox14.Checked then //内窥镜
  qrlabel108.Caption:='√'
 else
 qrlabel108.Caption:='√';
  if cxcheckbox15.Checked then //CT
  qrlabel110.Caption:='√'
  else
   qrlabel110.Caption:='';
 if cxcheckbox16.Checked then //手术
  qrlabel112.Caption:='√'
  else
  qrlabel112.Caption:='';
 if cxcheckbox17.Checked then //尸检(无病理)
  qrlabel114.Caption:='√'
  else
  qrlabel114.Caption:='';
 if cxcheckbox18.Checked then //生化
  qrlabel118.Caption:='√'
  else
  qrlabel118.Caption:='';
 if cxcheckbox19.Checked then //免疫
  qrlabel120.Caption:='√'
  else
  qrlabel120.Caption:='';
 if i=0 then
   begin
    QuickRep1.Preview;
    lssql:='update zybl_xnxgsb set sfdy=1  where  id='+adoinsertid.AsString;
   end
 else
   begin
     QuickRep1.Print;
    // lssql:='update zybl_xnxgsb set sfdy=1  where  id='+sp_sjcx2id.AsString;
   end;
 DM_data.qry_pub.Close;
 DM_data.qry_pub.SQL.Clear;
 DM_data.qry_pub.SQL.Add(lssql);
 DM_data.qry_pub.ExecSQL;
except
   application.messagebox('打印错误!','提示',mb_ok);
end;
end;
procedure Tfrm_xnxgsb.Button1Click(Sender: TObject);
begin
pro_print(0);
end;

procedure Tfrm_xnxgsb.Button2Click(Sender: TObject);
var
ls,ksrq,jsrq:string;
begin
  if v_brly='ZY' then
  begin
   ksrq:=FormatDateTime('yyyy-mm-dd',dtplbksrq.Date);
   jsrq:=FormatDateTime('yyyy-mm-dd',dtplbjsrq.Date);
   sp_sjcx1.Close;
   if lbgr.Checked then
   sp_sjcx1.parameters.ParamByName('@cxlx').value:='0'//0-按照个人查询 1-按照科室查询
   else
   sp_sjcx1.parameters.ParamByName('@cxlx').value:='1';
   sp_sjcx1.parameters.ParamByName('@sjlx').value:='11';
   sp_sjcx1.parameters.ParamByName('@czy').value:=pub_czydm;
   sp_sjcx1.parameters.ParamByName('@ksdm').value:=pub_ksdm;
   sp_sjcx1.parameters.ParamByName('@ksrq').value:=ksrq;
   sp_sjcx1.parameters.ParamByName('@jsrq').value:=jsrq;
   sp_sjcx1.Open;
  end;
end;

procedure Tfrm_xnxgsb.Button5Click(Sender: TObject);
var
ls,ksrq,jsrq:string;
i:Integer;
begin
  ksrq:=FormatDateTime('yyyy-mm-dd',dtpsbksrq.Date);
  jsrq:=FormatDateTime('yyyy-mm-dd',dtpsbjsrq.Date);
  cxGridDBTableView2.ClearItems;
  sp_sjcx2.Close;
  if hzgr.Checked then
    sp_sjcx2.parameters.ParamByName('@cxlx').value:='0'
  else
  sp_sjcx2.parameters.ParamByName('@cxlx').value:='1';
  sp_sjcx2.parameters.ParamByName('@sjlx').value:='12';
  sp_sjcx2.parameters.ParamByName('@czy').value:=pub_czydm;
  sp_sjcx2.parameters.ParamByName('@ksdm').value:=pub_ksdm;
  sp_sjcx2.parameters.ParamByName('@ksrq').value:=ksrq;
  sp_sjcx2.parameters.ParamByName('@jsrq').value:=jsrq;
  sp_sjcx2.Open;
  for i:=0 to sp_sjcx2.fieldcount-1 do
    begin
      cxGridDBTableView2.CreateColumn;
      cxGridDBTableView2.Columns[i].DataBinding.fieldname:=sp_sjcx2.Fields[i].DisplayName;
      cxGridDBTableView2.Columns[i].caption:=sp_sjcx2.Fields[i].fieldname;
      if i=1 then
        cxGridDBTableView2.Columns[i].width:=50
      else
        cxGridDBTableView2.Columns[i].width:=100;
    end;
  sp_sjcx2.ExecProc;
  sp_sjcx2.active:=True;
end;

procedure Tfrm_xnxgsb.Button7Click(Sender: TObject);
begin
close;
end;

procedure Tfrm_xnxgsb.Button8Click(Sender: TObject);
begin
 if SaveDialog1.Execute then
  begin
    exportgridtoexcel(SaveDialog1.FileName, cxGrid3, true, true);
    MessageBox(0, '数据导出完毕!', '系统提示', MB_OK + MB_ICONINFORMATION);
  end;
end;

procedure Tfrm_xnxgsb.Button9Click(Sender: TObject);
var
ls,ksrq,jsrq:string;
begin
ksrq:=FormatDateTime('yyyy-mm-dd',dtpksrq.Date);
jsrq:=FormatDateTime('yyyy-mm-dd',dtpjsrq.Date);
sp_sjcx.Close;
if gr.Checked=true then
begin
 sp_sjcx.parameters.ParamByName('@cxlx').value:='0';//0-按照个人查询 1-按照科室查询
 sp_sjcx.parameters.ParamByName('@sjlx').value:='10';
 sp_sjcx.parameters.ParamByName('@czy').value:=pub_czydm;
 sp_sjcx.parameters.ParamByName('@ksdm').value:=pub_ksdm;
 sp_sjcx.parameters.ParamByName('@ksrq').value:=ksrq;
 sp_sjcx.parameters.ParamByName('@jsrq').value:=jsrq;
 sp_sjcx.Open;
end
else
begin
 sp_sjcx.parameters.ParamByName('@cxlx').value:='1';//0-按照个人查询 1-按照科室查询
 sp_sjcx.parameters.ParamByName('@sjlx').value:='10';
 sp_sjcx.parameters.ParamByName('@czy').value:=pub_czydm;
 sp_sjcx.parameters.ParamByName('@ksdm').value:=pub_ksdm;
 sp_sjcx.parameters.ParamByName('@ksrq').value:=ksrq;
 sp_sjcx.parameters.ParamByName('@jsrq').value:=jsrq;
 sp_sjcx.Open;
end;
end;

procedure Tfrm_xnxgsb.B_saveClick(Sender: TObject);
var
id:string;
begin
 AdoInsert.Edit;
 zdyjbc;
 ADOInsert['mztmh']:=trim(edit2.Text);
 ADOInsert['brxb']:=trim(cxcombobox3.Text);
 ADOInsert['brzy']:=trim(cxcombobox5.Text);
 ADOInsert['brmz']:=trim(cxcombobox6.Text);
 ADOInsert['swdd']:=trim(cxcombobox9.Text);
 ADOInsert['scfb']:=trim(cxcombobox4.Text); //首次发病
 ADOInsert['qzdw']:=trim(cxcombobox7.Text); //确诊单位
 ADOInsert['zgqk']:=trim(cxcombobox10.Text); //转归情况
 ADOInsert.Post;
 ADOInsert.UpdateBatch(Arall);
 id:=trim(adoinsert.FieldByName('id').AsString);
 qkxx;
 if pc1.ActivePageIndex=0 then
 application.messagebox('保存成功！', '提示', mb_ok + mb_iconinformation);
 B_save.Enabled :=False;
 bitbtn2.Enabled:=false;
 Button1.Enabled :=True;
 sxlb;
 if id<>'' then
 adoinsert.Locate('id',id,[loCaseInsensitive]) ;
 DBGridEh1DblClick(self);
end;

procedure Tfrm_xnxgsb.cxComboBox2PropertiesEditValueChanged(Sender: TObject);
begin
xzqhzk;
end;

procedure Tfrm_xnxgsb.cxComboBox6Exit(Sender: TObject);
var
s:string;
i:integer;
begin
  s:=trim(cxcombobox6.Text);
  i:=pos('-',s);
  if i>0 then
  begin
   cxcombobox6.Text:=trim(copy(s,i+1,20));
   adoinsert['brmz']:=cxcombobox6.Text;
  end;
end;

procedure Tfrm_xnxgsb.cxGrid1DBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
  var
  sjid:string;
  cx_brly:string;
begin
 qkxx;
 if (trim(sp_sjcx.FieldByName('brly').AsString)<>v_brly) and (trim(sp_sjcx.FieldByName('sfwc').AsString)='0')  then
 begin
    Application.MessageBox('门诊只能处理门诊病人，住院只能处理住院病人', '错误提示', 16);
 end
 else
 begin
   pc1.ActivePage:=TabSheet1;
   qkxx;
   sjid:=trim(sp_sjcx.FieldByName('id').AsString);
 if V_brly='ZY' then
 begin
  edit1.Text:=trim(sp_sjcx.FieldByName('zytmh').AsString);
  edit2.Text:=trim(sp_sjcx.FieldByName('mztmh').AsString);
  v_tmh:=trim(sp_sjcx.FieldByName('zytmh').AsString);
  v_zyh:=trim(sp_sjcx.FieldByName('zyh').AsString);
 end
 else
 begin
   v_tmh:=trim(sp_sjcx.FieldByName('mztmh').AsString);
   edit2.Text:=trim(sp_sjcx.FieldByName('mztmh').AsString);
 end;
 ADOInsert.close;
 ADOInsert.commandtext:='Select * from zybl_xnxgsb where id='+#39+sjid+#39;
 ADOInsert.Open;
  cxcombobox3.Text:= ADOInsert.FieldByName('brxb').AsString;
  cxcombobox6.Text:= ADOInsert.FieldByName('brmz').AsString;
  cxcombobox5.Text:= ADOInsert.FieldByName('brzy').AsString;
  cxcombobox9.Text:= ADOInsert.FieldByName('swdd').AsString;
  cxcombobox10.Text:= ADOInsert.FieldByName('zgqk').AsString;
  cxcombobox4.Text:= ADOInsert.FieldByName('scfb').AsString;
  cxcombobox7.Text:= ADOInsert.FieldByName('qzdw').AsString;
  jbmc1.Caption:=get_zdmc('icd10',ADOInsert.fieldbyname('brzd').asstring,'');
  jbmc3.Caption:= ADOInsert.FieldByName('jbzdxhmc').AsString;
  zdyjzk;
  ADOInsert.Edit;
  if ADOInsert.FieldByName('sfwc').AsString='1' then
  begin
     b_save.Enabled:=false ;
     BitBtn2.Enabled:=false;
     button1.Enabled:=true;
  end
  else
  begin
     b_save.Enabled:=true;
     BitBtn2.Enabled:=true;
     button1.Enabled:=false;
  end;
  if not ADOInsert.FieldByName('sfsh').AsBoolean then
  begin
     b_save.Enabled:=true ;
  end
 end;
end;

procedure Tfrm_xnxgsb.cxGrid1DBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
  var
  vstr:string;
begin
    vStr:=AViewInfo.RecordViewInfo.GridRecord.Values[11];
   if vStr='已审核' then
  begin
    ACanvas.Font.Color := clred;
  end;
end;

procedure Tfrm_xnxgsb.cxGridDBTableView1DblClick(Sender: TObject);
var s:string;
begin
   qkxx;
   v_zyh:= sp_sjcx1.FieldByName('zyh').AsString;
   v_tmh:= sp_sjcx1.FieldByName('tmh').AsString;
   if (v_brly='ZY') and (v_zyh<>'') then
    begin
     qkxx;
     if not AdoInsert.Active then
     begin
       AdoInsert.Open;
     end;
     AdoInsert.Edit;
     zycsh;
     Button2.Click;
     pc1.ActivePageIndex:=0;
     //DBGridEh1CellClick(self);
     //DBGridEh1.OnCellClick(DBGridEh1.Columns[0]);
    end;
end;

procedure Tfrm_xnxgsb.cxGridDBTableView2CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
var
  sjid:string;
begin
pc1.ActivePage:=TabSheet1;
qkxx;
sjid:=trim(sp_sjcx2.FieldByName('编号').AsString);
if V_brly='ZY' then
begin
edit1.Text:=trim(sp_sjcx2.FieldByName('住院号').AsString);
edit2.Text:=trim(sp_sjcx2.FieldByName('门诊号').AsString);
v_tmh:=trim(sp_sjcx2.FieldByName('住院号').AsString);
end
else
begin
v_tmh:=trim(sp_sjcx2.FieldByName('门诊号').AsString);
edit2.Text:=trim(sp_sjcx2.FieldByName('门诊号').AsString);
end;
ADOInsert.close;
ADOInsert.commandtext:='Select * from zybl_xnxgsb where id='+#39+sjid+#39;
ADOInsert.Open;
 cxcombobox3.Text:= ADOInsert.FieldByName('brxb').AsString;
 cxcombobox6.Text:= ADOInsert.FieldByName('brmz').AsString;
 cxcombobox5.Text:= ADOInsert.FieldByName('brzy').AsString;
 cxcombobox9.Text:= ADOInsert.FieldByName('swdd').AsString;
 cxcombobox10.Text:= ADOInsert.FieldByName('zgqk').AsString;
 cxcombobox4.Text:= ADOInsert.FieldByName('scfb').AsString;
 cxcombobox7.Text:= ADOInsert.FieldByName('qzdw').AsString;
 zdyjzk;
 ADOInsert.Edit;
 if ADOInsert.FieldByName('sfwc').AsString='1' then
  begin
   b_save.Enabled:=false ;
   BitBtn2.Enabled:=false;
   button1.Enabled:=true;
  end
  else
  begin
   b_save.Enabled:=true;
   BitBtn2.Enabled:=true;
   button1.Enabled:=false;
  end;
end;

procedure Tfrm_xnxgsb.DBEdit12Exit(Sender: TObject);
var ls:string;
begin
 kj1:=Sender;
 ls:=Uppercase(trim((Sender as TDBEdit).text));
  if length(ls)=0 then
 (Sender as TDBEdit).text:=' '
 else
 begin
 if (length(ls)<4) and (length(ls)>0) then
 begin
 Application.MessageBox('地址拼音码输入格式错误', '错误提示', 16);
 (Sender as TDBEdit).SetFocus;
 end
 else
 begin
 if ls[1]<#126 then
 begin
 try
   ADODataSet8.Close;
   ADODataSet8.CommandText:='sys_cx_xzqh '+#39+ls+#39;
   ADODataSet8.Open;
 except
  Application.MessageBox('地址拼音码输入格式错误”', '错误提示', 16)
 end;
   if ADODataSet8.IsEmpty then
      begin
        Application.MessageBox('未找到相应的“地址信息”', '错误提示', 16);
        (Sender as TDBEdit).SetFocus;
      end
      else
      begin
      if ADODataSet8.RecordCount=1 then
      begin
      (Sender as TDBEdit).text:=adodataset8.FieldByName('mc').asstring;
      (Sender as tdbedit).DataSource.DataSet[(Sender as tdbedit).DataField]:= adodataset8.FieldByName('mc').asstring;
      end
      else
      begin
         DBGrid3.left:=(kj1 as Tdbedit).left;
         DBGrid3.top:=(kj1 as Tdbedit).top+(kj1 as Tdbedit).Height+1;
         DBGrid3.Visible:=true;
         DBGrid3.SetFocus;
       end;
      end;
      end;
 end;
 end;
end;

procedure Tfrm_xnxgsb.DBEdit23DblClick(Sender: TObject);
begin
try
Application.CreateForm(Tfrm_zlblmbm, frm_zlblmbm);
frm_zlblmbm.ShowModal;
finally
 frm_zlblmbm.Free;
end;
end;

procedure Tfrm_xnxgsb.DBEdit24DblClick(Sender: TObject);
begin
 try
   Application.CreateForm(Tfrm_zlbljbcx, frm_zlbljbcx);
   frm_zlbljbcx.ysdm := pub_czydm;
   frm_zlbljbcx.lybz:='X';
   frm_zlbljbcx.ShowModal;
   finally
    frm_zlbljbcx.free;
  end;
end;

procedure Tfrm_xnxgsb.DBEdit24KeyPress(Sender: TObject; var Key: Char);
begin
  if (key=#13) and (trim(dbedit24.text)<>'') and (pos('.',trim(dbedit24.text))<=0) then
  begin
  try
   Application.CreateForm(Tfrm_zlbljbcx, frm_zlbljbcx);
   frm_zlbljbcx.ysdm := pub_czydm;
   frm_zlbljbcx.ShowModal;
   finally
   frm_zlbljbcx.free;
   end;
  end;
end;

procedure Tfrm_xnxgsb.DBEdit25DblClick(Sender: TObject);
begin
 try
   application.CreateForm(Tfrm_zlblbwxz, frm_zlblbwxz);
   frm_zlblbwxz.ShowModal;
 finally
   frm_zlblbwxz.free;
 end;
end;

procedure Tfrm_xnxgsb.DBEdit3DblClick(Sender: TObject);
begin
 try
   application.CreateForm(Tfrm_zlblbrzy, frm_zlblbrzy);
   frm_zlblbrzy.lybz:='X';
   frm_zlblbrzy.ShowModal;
 finally
   frm_zlblbrzy.free;
 end;
end;

procedure Tfrm_xnxgsb.DBGrid3DblClick(Sender: TObject);
begin
 if kj1=dbedit16 then
 begin
  dbedit16.text:=adodataset8.FieldByName('mc').asstring;
  ADOInsert['hkdz']:=adodataset8.FieldByName('mc').asstring;
  dbedit12.SetFocus;
 end
 else if kj1=dbedit12 then
 begin
  dbedit12.text:=adodataset8.FieldByName('mc').asstring;
  ADOInsert['jzdz']:=adodataset8.FieldByName('mc').asstring;
  dbedit24.SetFocus;
 end;
 dbgrid3.Visible:=false;
end;

procedure Tfrm_xnxgsb.DBGrid3KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
  begin
    if kj1=dbedit16 then
    begin
     dbedit16.text:=adodataset8.FieldByName('mc').asstring;
     ADOInsert['hkdz']:=adodataset8.FieldByName('mc').asstring;
     dbedit12.SetFocus;
    end
    else if kj1=dbedit12 then
    begin
     dbedit12.text:=adodataset8.FieldByName('mc').asstring;
     ADOInsert['jzdz']:=adodataset8.FieldByName('mc').asstring;
     dbedit24.SetFocus;
    end;
    dbgrid3.Visible:=false;
  end
  else if key=#27 then
  begin
   dbgrid3.Visible:=false;
  end;
end;

procedure Tfrm_xnxgsb.DBGridEh1CellClick(Column: TColumnEh);
var
sjid:string;
begin
 qkxx;
 sjid:=trim(ADOInsert.FieldByName('id').AsString);
 if v_brly='ZY' then
 v_tmh:=ADOInsert.FieldByName('zytmh').AsString
 else
 v_tmh:=ADOInsert.FieldByName('mztmh').AsString;
 if sjid<>'' then
 begin
  cxcombobox3.Text:= ADOInsert.FieldByName('brxb').AsString;
  cxcombobox6.Text:= ADOInsert.FieldByName('brmz').AsString;
  cxcombobox5.Text:= ADOInsert.FieldByName('brzy').AsString;
  cxcombobox9.Text:= ADOInsert.FieldByName('swdd').AsString;
  cxcombobox10.Text:= ADOInsert.FieldByName('zgqk').AsString;
  cxcombobox4.Text:= ADOInsert.FieldByName('scfb').AsString;
  cxcombobox7.Text:= ADOInsert.FieldByName('qzdw').AsString;
  edit1.Text:=ADOInsert.FieldByName('zytmh').AsString;
  edit2.Text:=ADOInsert.FieldByName('mztmh').AsString;
  jbmc1.Caption:=get_zdmc('icd10',ADOInsert.fieldbyname('brzd').asstring,'');
  zdyjzk;
  xzqhzk;//行政区划展开
  ADOInsert.Edit;
  if ADOInsert.FieldByName('sfwc').AsBoolean then
  begin
   b_save.Enabled:=false ;
   BitBtn2.Enabled:=false;
   button1.Enabled:=true;
  end
  else
  begin
   b_save.Enabled:=true;
   BitBtn2.Enabled:=true;
   button1.Enabled:=false;
  end;
 end;
 adoinsert.Edit;
end;

procedure Tfrm_xnxgsb.DBGridEh1DblClick(Sender: TObject);
var
sjid:string;
begin
 qkxx;
 sjid:=trim(ADOInsert.FieldByName('id').AsString);
 if v_brly='ZY' then
 v_tmh:=ADOInsert.FieldByName('zytmh').AsString
 else
 v_tmh:=ADOInsert.FieldByName('mztmh').AsString;
 if sjid<>'' then
 begin
  cxcombobox3.Text:= ADOInsert.FieldByName('brxb').AsString;
  cxcombobox6.Text:= ADOInsert.FieldByName('brmz').AsString;
  cxcombobox5.Text:= ADOInsert.FieldByName('brzy').AsString;
 // cxcombobox2.Text:= ADOInsert.FieldByName('hkdzxq').AsString;
  //cxcombobox8.Text:= ADOInsert.FieldByName('hkdzxz').AsString;
  cxcombobox9.Text:= ADOInsert.FieldByName('swdd').AsString;
  cxcombobox10.Text:= ADOInsert.FieldByName('zgqk').AsString;
  cxcombobox4.Text:= ADOInsert.FieldByName('scfb').AsString;
  cxcombobox7.Text:= ADOInsert.FieldByName('qzdw').AsString;
  edit1.Text:=ADOInsert.FieldByName('zytmh').AsString;
  edit2.Text:=ADOInsert.FieldByName('mztmh').AsString;
  jbmc1.Caption:=get_zdmc('icd10',ADOInsert.fieldbyname('brzd').asstring,'');
  zdyjzk;
  xzqhzk;//行政区划展开
  ADOInsert.Edit;
  if ADOInsert.FieldByName('sfwc').AsBoolean then
  begin
   b_save.Enabled:=false ;
   BitBtn2.Enabled:=false;
   button1.Enabled:=true;
  end
  else
  begin
   b_save.Enabled:=true;
   BitBtn2.Enabled:=true;
   button1.Enabled:=false;
  end;
 end;
 adoinsert.Edit;
end;

procedure Tfrm_xnxgsb.DBGridEh5DblClick(Sender: TObject);
begin
   v_tmh:=ado_cydj.FieldByName('kh').AsString;
   v_zyh:=ado_cydj.FieldByName('zyh').AsString;
   dbgrideh5.Visible:=false;
   zycsh;
end;

procedure Tfrm_xnxgsb.DBGridEh5KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if key=13 then
   begin
     v_tmh:=ado_cydj.FieldByName('kh').AsString;
     v_zyh:=ado_cydj.FieldByName('zyh').AsString;
     dbgrideh5.Visible:=false;
     zycsh;
   end;
end;

procedure Tfrm_xnxgsb.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
  begin
     if(v_brly='ZY') and blsb.Checked then
     begin
     if not AdoInsert.Active then
     begin
       AdoInsert.Open;
       AdoInsert.Edit;
     end;
       tbjc(trim(edit1.Text));
       ado_cydj.Close;
       ado_cydj.Parameters.ParamByName('v_tmh').Value:=trim(edit1.Text);
       ado_cydj.Open;
       if  ado_cydj.RecordCount>1 then
       begin
          dbgrideh5.Top:=90;
          dbgrideh5.left:=483;
          dbgrideh5.Visible:=true;
          dbgrideh5.SetFocus;
       end
       else if ado_cydj.RecordCount=1  then
       begin
         v_tmh:=ado_cydj.FieldByName('kh').AsString;
         v_zyh:=ado_cydj.FieldByName('zyh').AsString;
         zycsh;
       end
       else
       application.messagebox('未找到该病人住院记录！', '提示', mb_ok + mb_iconinformation);
     end;
  end;
end;

procedure Tfrm_xnxgsb.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
  begin
     if(v_brly='MZ') and blsb.Checked then
     begin
     if not AdoInsert.Active then
     begin
       AdoInsert.Open;
       AdoInsert.Edit;
     end;
       v_tmh:=Trim(Edit2.Text);
       mzcsh;
     end;
  end;
end;

procedure Tfrm_xnxgsb.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 v_tmh:='';
 v_zyh:='';
end;

procedure Tfrm_xnxgsb.FormCreate(Sender: TObject);
begin
Add_xsz('sys_mz','dm',cxComboBox6,'');
//Add_xsz('zybl_zlblsbk_xzqh','qhdm',cxComboBox2,'');
dtpksrq.Date:=Now;
dtpjsrq.Date:=Now;
dtplbksrq.Date:=Now;
dtplbjsrq.Date:=Now;
dtpbgrq.Date:=now;
dtpsbksrq.Date:=Now;
dtpsbjsrq.Date:=now;
end;

procedure Tfrm_xnxgsb.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if key=#13 then
 begin
  SelectNext(activeControl, true, true);
 end;
end;

procedure Tfrm_xnxgsb.FormShow(Sender: TObject);
begin
{sxlb;
 if  v_brly='ZY'  then
 begin
   if v_tmh<>''then
   zycsh; //住院数据初始化
   DBGridEh1.Columns.Grid.FieldColumns['mztmh'].Visible:=false;
 end
 else if v_brly='MZ'   then
 begin
   if v_tmh<>'' then
   mzcsh; //门诊数据初始化
   DBGridEh1.Columns.Grid.FieldColumns['zytmh'].Visible:=false;
 end;
 xzsb.Checked:=true;
 blsb.Checked:=false;}
end;
procedure Tfrm_xnxgsb.Add_xsz(bmc,cxz:string;Cbox:TcxComboBox;fjtj:string);
var sj:string;
begin
  Qry_pub.close;
  Qry_pub.SQL.clear;
  if (bmc='zybl_zlblsbk_xzqh') then
    Qry_pub.sql.add('select * from '+bmc+' where jb=3  order by '+cxz)
  else
  Qry_pub.sql.add('select * from '+bmc+' order by '+cxz);
  Qry_pub.open;
  Cbox.Properties.Items.Clear;
  if (bmc='sys_xzqh')then
  begin
    while not Qry_pub.eof do
    begin
      Cbox.Properties.Items.add(trim(Qry_pub.FieldByName('qhdm').asstring)+'-'+trim(Qry_pub.FieldByName('qhmc').asstring));
      Qry_pub.next;
    end;
  end
  else if (bmc='zybl_zlblsbk_xzqh')then
  begin
    while not Qry_pub.eof do
    begin
      Cbox.Properties.Items.add(trim(Qry_pub.FieldByName('qhmc').asstring));
      Qry_pub.next;
    end;
  end
  else
    begin
      while not Qry_pub.eof do
      begin
       Cbox.Properties.Items.add(trim(Qry_pub.FieldByName('dm').asstring)+'-'+trim(Qry_pub.FieldByName('mc').asstring));
       Qry_pub.next;
      end;
    end
end;
procedure Tfrm_xnxgsb.zdyjbc;//诊断依据保存
var
  v_zdyj,v_qzfq,v_zdyjmc: string;
  i:integer;
begin
 v_zdyj:='';
 v_qzfq:='';
  for i := 1 to 10 do
  begin
   if TcxCheckBox(FindComponent('cxcheckBox'+inttostr(i))).Checked  then
     begin
       v_zdyj:=v_zdyj+'1';
       v_zdyjmc:=v_zdyjmc+trim(TcxCheckBox(FindComponent('cxcheckBox'+inttostr(i))).Caption)+'+';
     end
     else
       v_zdyj:=v_zdyj+'0';
  end;
  adoinsert['zdyj'] := v_zdyj; //诊断依据赋值
  adoinsert['zdyjmc'] := v_zdyjmc; //诊断依据赋值

 v_zdyj:='';
 v_qzfq:='';
  for i := 11 to 20 do
  begin
   if TcxCheckBox(FindComponent('cxcheckBox'+inttostr(i))).Checked  then
     begin
       v_zdyj:=v_zdyj+'1';
       v_zdyjmc:=v_zdyjmc+trim(TcxCheckBox(FindComponent('cxcheckBox'+inttostr(i))).Caption)+'+';
     end
     else
       v_zdyj:=v_zdyj+'0';
  end;
  adoinsert['zgzdyj'] := v_zdyj; //最高诊断依据赋值
  adoinsert['zgzdyjmc'] := v_zdyjmc; //最高诊断依据赋值
end;

 procedure Tfrm_xnxgsb.zdyjzk;//诊断依据展开
 var
 v_zdyj,v_qzfq:string;
 i:integer;
 begin
   v_zdyj:=AdoInsert.fieldbyname('zdyj').asstring;//诊断依据展开
   for I := 1 to 10 do
   begin
     if copy(v_zdyj,i,1)='1' then
        TcxCheckBox(FindComponent('cxcheckBox'+inttostr(i))).Checked :=true
     else
        TcxCheckBox(FindComponent('cxcheckBox'+inttostr(i))).Checked :=false;
   end;
    v_zdyj:=AdoInsert.fieldbyname('zgzdyj').asstring;//最高诊断依据展开
   for I := 11 to 20 do
   begin
     if copy(v_zdyj,i-10,1)='1' then
        TcxCheckBox(FindComponent('cxcheckBox'+inttostr(i))).Checked :=true
     else
        TcxCheckBox(FindComponent('cxcheckBox'+inttostr(i))).Checked :=false;
   end;
 end;
 procedure Tfrm_xnxgsb.qkxx;//清空选项
 var
  i:integer;
  begin
  for I := 1 to 10 do
  begin
   TcxCheckBox(FindComponent('cxcheckBox'+inttostr(i))).Checked :=false;
  end;
  for I := 11 to 20 do
  begin
   TcxCheckBox(FindComponent('cxcheckBox'+inttostr(i))).Checked :=false;
  end;
  // cxComboBox2.Text:='';
   //cxComboBox8.Text:='';
   cxComboBox3.Text:='';
   cxComboBox5.Text:='';
   cxComboBox6.Text:='';
   cxComboBox4.Text:='';
   cxComboBox10.Text:='';
   cxComboBox7.Text:='';
   cxComboBox9.Text:='';
   edit1.Text:='';
   edit2.Text:='';
  end;
 procedure Tfrm_xnxgsb.QRLabel104Print(sender: TObject; var Value: string);
begin
if cxcheckbox12.Checked then
   value:='√'
   else
   value:='';
end;

procedure Tfrm_xnxgsb.QRLabel106Print(sender: TObject; var Value: string);
begin
if cxcheckbox13.Checked then
   value:='√'
   else
   value:='';
end;

procedure Tfrm_xnxgsb.QRLabel108Print(sender: TObject; var Value: string);
begin
if cxcheckbox14.Checked then
   value:='√'
   else
   value:='';
end;

procedure Tfrm_xnxgsb.QRLabel110Print(sender: TObject; var Value: string);
begin
if cxcheckbox15.Checked then
   value:='√'
   else
   value:='';
end;

procedure Tfrm_xnxgsb.QRLabel112Print(sender: TObject; var Value: string);
begin
if cxcheckbox16.Checked then
   value:='√'
   else
   value:='';
end;

procedure Tfrm_xnxgsb.QRLabel114Print(sender: TObject; var Value: string);
begin
if cxcheckbox17.Checked then
   value:='√'
   else
   value:='';
end;

procedure Tfrm_xnxgsb.QRLabel118Print(sender: TObject; var Value: string);
begin
if cxcheckbox18.Checked then
   value:='√'
   else
   value:='';
end;

procedure Tfrm_xnxgsb.QRLabel120Print(sender: TObject; var Value: string);
begin
if cxcheckbox19.Checked then
   value:='√'
   else
   value:='';
end;

procedure Tfrm_xnxgsb.QRLabel138Print(sender: TObject; var Value: string);
begin
if cxcheckbox11.Checked then
   value:='√'
   else
   value:='';
end;

procedure Tfrm_xnxgsb.QRLabel151Print(sender: TObject; var Value: string);
begin

   value:='';
end;

procedure Tfrm_xnxgsb.QRLabel161Print(sender: TObject; var Value: string);
begin
if trim(cxcombobox9.Text)<>'' then
 value:=trim(cxcombobox9.Text)//死亡地点
 else
 value:='';
end;

procedure Tfrm_xnxgsb.QRLabel88Print(sender: TObject; var Value: string);
begin
if FormatDateTime('yyyy-mm-dd hh:mm:ss', dtpswrq.Date) > '2000-00-00 00:00:00' then
   value:=FormatDateTime('yyyy年mm月dd日', dtpswrq.Date)//死亡日期
   else
   value:='';
end;

procedure Tfrm_xnxgsb.sp_sjcxCalcFields(DataSet: TDataSet);
var
s:string;
begin
 s:=Trim(sp_sjcx.fieldbyname('sfwc').asstring);
 if s='1' then
 sp_sjcx['lcsfwc']:='已完成'
 else if s='0' then
 sp_sjcx['lcsfwc']:='未完成';
// s:=Trim(sp_sjcx.fieldbyname('sfsh').asstring);
 if sp_sjcx.fieldbyname('sfsh').AsBoolean then
 sp_sjcx['lcsfsh']:='已审核'
 else
 sp_sjcx['lcsfsh']:='未审核';
 s:=Trim(sp_sjcx.fieldbyname('ksdm').asstring);
 s:=get_xsz_ba('sys_ksdm',s);
 sp_sjcx['sbksmc']:=s;
 s:=Trim(sp_sjcx.fieldbyname('brly').asstring);
 if s='MZ' then
 sp_sjcx['brlymc']:='门诊'
 else
 if s='ZY' then
 sp_sjcx['brlymc']:='住院'
end;

function Tfrm_xnxgsb.get_zdmc(bmc,cxz,bmid:string):string;//获取诊断名称//获取诊断名称
 var sj:string;
 begin
  qry_pub.close;
  qry_pub.SQL.Clear;
  if bmc='ba_bambm' then
  begin
    if bmid='' then
    qry_pub.SQL.Add('select top 1 * from '+bmc+' where jbbm='+#39+cxz+#39 )
    else
    qry_pub.SQL.Add('select  * from '+bmc+' where jbbm='+#39+cxz+#39+' and id='+bmid );
  end
  else
  qry_pub.SQL.Add('select * from '+bmc+' where jbbm='+#39+cxz+#39);
  qry_pub.open;
  if qry_pub.RecordCount=1 then
  begin
   if(bmc='sys_bassk') then
   result:=trim(qry_pub.fieldbyname('ssmc').asstring)
   else
   result:=trim(qry_pub.fieldbyname('jbmc').asstring)
  end
   else
   result:='';
  end;
function Tfrm_xnxgsb.ljjc:boolean;
var
i,iii:integer;
zdyjbz,zgzdyjbz:string;//诊断依据至少选择一项判断标志
begin
  if frm_blsj_checkerror = nil then
    Application.CreateForm(Tfrm_blsj_checkerror, frm_blsj_checkerror);
  frm_blsj_checkerror.Memo1.Clear;
  iii := 0;
  if (v_brly='ZY') and (Trim(edit1.Text) = '') then
  begin
    iii := iii + 1;
    frm_blsj_checkerror.Memo1.Lines.Add(trim(inttostr(iii)) + '：住院号不能为空!');
  end;
  if (v_brly='MZ') and (Trim(Edit2.Text) = '') then
  begin
    iii := iii + 1;
    frm_blsj_checkerror.Memo1.Lines.Add(trim(inttostr(iii)) + '：门诊号不能为空!');
  end;
  if Trim(dbedit17.Text)  = '' then
  begin
    iii := iii + 1;
    frm_blsj_checkerror.Memo1.Lines.Add(trim(inttostr(iii)) + '：病人科室不能为空!');
  end;
  if Trim(dbedit4.Text)  = '' then
  begin
    iii := iii + 1;
    frm_blsj_checkerror.Memo1.Lines.Add(trim(inttostr(iii)) + '：家庭电话不能为空!');
  end;
  if Trim(dbedit1.Text)  = '' then
  begin
    iii := iii + 1;
    frm_blsj_checkerror.Memo1.Lines.Add(trim(inttostr(iii)) + '：联系人不能为空!');
  end;
  if Trim(dbedit6.Text)  = '' then
  begin
    iii := iii + 1;
    frm_blsj_checkerror.Memo1.Lines.Add(trim(inttostr(iii)) + '：患者姓名不能为空!');
  end;
  if Trim(cxcombobox3.Text)  = '' then
  begin
    iii := iii + 1;
    frm_blsj_checkerror.Memo1.Lines.Add(trim(inttostr(iii)) + '：患者性别不能为空!');
  end;
  if Trim(dbedit7.Text)  = '' then
  begin
    iii := iii + 1;
    frm_blsj_checkerror.Memo1.Lines.Add(trim(inttostr(iii)) + '：患者年龄不能为空!');
  end;
  if FormatDateTime('yyyy-mm-dd hh:mm:ss', dtpcsrq.Date) <= '1900-00-00 00:00:00' then
  begin
    iii := iii + 1;
    frm_blsj_checkerror.Memo1.Lines.Add(trim(inttostr(iii)) + '：出生日期不能为空!');
  end;
  if Trim(cxcombobox6.Text)  = '' then
  begin
    iii := iii + 1;
    frm_blsj_checkerror.Memo1.Lines.Add(trim(inttostr(iii)) + '：民族不能为空!');
  end;
  if Trim(cxcombobox5.Text)  = '' then
  begin
    iii := iii + 1;
    frm_blsj_checkerror.Memo1.Lines.Add(trim(inttostr(iii)) + '：职业工种不能为空!');
  end;
  if Trim(dbedit9.Text)  = '' then
  begin
    iii := iii + 1;
    frm_blsj_checkerror.Memo1.Lines.Add(trim(inttostr(iii)) + '：工作单位不能为空!');
  end;
  if Trim(dbedit1.Text)  = '' then
  begin
    iii := iii + 1;
    frm_blsj_checkerror.Memo1.Lines.Add(trim(inttostr(iii)) + '：联系人不能为空!');
  end;
  if Trim(dbedit10.Text)  = '' then
  begin
    iii := iii + 1;
    frm_blsj_checkerror.Memo1.Lines.Add(trim(inttostr(iii)) + '：身份证号不能为空!');
  end;
  if Trim(dbedit16.Text)  = '' then
  begin
    iii := iii + 1;
    frm_blsj_checkerror.Memo1.Lines.Add(trim(inttostr(iii)) + '：户口地址不能为空!');
  end;
  if Trim(dbedit3.Text)  = '' then
  begin
    iii := iii + 1;
    frm_blsj_checkerror.Memo1.Lines.Add(trim(inttostr(iii)) + '：疾病诊断序号能为空!');
  end;
  if Trim(dbedit24.Text)  = '' then
  begin
    iii := iii + 1;
    frm_blsj_checkerror.Memo1.Lines.Add(trim(inttostr(iii)) + '：ICD10编码不能为空!');
  end;
  if Trim(cxComboBox4.Text)  = '' then
  begin
    iii := iii + 1;
    frm_blsj_checkerror.Memo1.Lines.Add(trim(inttostr(iii)) + '：是否首次发病不能为空!');
  end;
  if FormatDateTime('yyyy-mm-dd', fbrq.Date) <= '2000-00-00' then
  begin
    iii := iii + 1;
    frm_blsj_checkerror.Memo1.Lines.Add(trim(inttostr(iii)) + '：发病日期错误!');
  end;
  if FormatDateTime('yyyy-mm-dd', qzrq.Date) <= '2000-00-00' then
  begin
    iii := iii + 1;
    frm_blsj_checkerror.Memo1.Lines.Add(trim(inttostr(iii)) + '：确诊日期错误!');
  end;
 if Trim(dbedit30.Text)  = '' then
  begin
    iii := iii + 1;
    frm_blsj_checkerror.Memo1.Lines.Add(trim(inttostr(iii)) + '：报告单位不能为空!');
  end;
  if Trim(cxComboBox7.Text)  = '' then
  begin
    iii := iii + 1;
    frm_blsj_checkerror.Memo1.Lines.Add(trim(inttostr(iii)) + '：最高确诊单位不能为空!');
  end;
  if Trim(cxComboBox10.Text)  = '' then
  begin
    iii := iii + 1;
    frm_blsj_checkerror.Memo1.Lines.Add(trim(inttostr(iii)) + '：转归情况能为空!');
  end;
  if Trim(dbedit31.Text)  = '' then
  begin
    iii := iii + 1;
    frm_blsj_checkerror.Memo1.Lines.Add(trim(inttostr(iii)) + '：报告医师不能为空!');
  end;
  if FormatDateTime('yyyy-mm-dd', dtpbgrq.Date) <= '2000-00-00' then
  begin
    iii := iii + 1;
    frm_blsj_checkerror.Memo1.Lines.Add(trim(inttostr(iii)) + '：报告日期错误!');
  end;
  if (FormatDateTime('yyyy-mm-dd hh:mm:ss', dtpswrq.Date) >= '2015-01-01 00:00:00') and ((Trim(DBEdit2.Text)='') or (trim(cxComboBox9.Text)='')) then
  begin
    iii := iii + 1;
    frm_blsj_checkerror.Memo1.Lines.Add(trim(inttostr(iii)) + '：有死亡日期则应填死亡原因和死亡地点!');
  end;
  { zdyjbz:='0';
  for I := 1 to 10 do
  begin
    if TcxCheckBox(FindComponent('cxcheckBox'+inttostr(i))).Checked =true then
    begin
      zdyjbz:='1';
      break;;
    end;
  end;
  if zdyjbz='0' then
  begin
    iii := iii + 1;
    frm_blsj_checkerror.Memo1.Lines.Add(trim(inttostr(iii)) + '：诊断依据应至少填写一项!');
  end; }
  zgzdyjbz:='0';
  for I := 11 to 20 do
  begin
    if TcxCheckBox(FindComponent('cxcheckBox'+inttostr(i))).Checked =true then
    begin
      zgzdyjbz:='1';
      break;
    end;
  end;
  if zgzdyjbz='0' then
  begin
    iii := iii + 1;
    frm_blsj_checkerror.Memo1.Lines.Add(trim(inttostr(iii)) + '：诊最高断依据应至少填写一项!');
  end;
  if iii > 0 then
  begin
    result:=true;
    if frm_blsj_checkerror = nil then
    Application.CreateForm(Tfrm_blsj_checkerror, frm_blsj_checkerror);
    frm_blsj_checkerror.ShowModal;
  end
  else
  result:=false;
end;
procedure Tfrm_xnxgsb.MenuItem1Click(Sender: TObject);
 var
  sjid:string;
begin
  qkxx;
  sjid:=trim(sp_sjcx2.FieldByName('id').AsString);
  if V_brly='ZY' then
  begin
   edit1.Text:=trim(sp_sjcx2.FieldByName('zytmh').AsString);
   edit2.Text:=trim(sp_sjcx2.FieldByName('mztmh').AsString);
   v_tmh:=trim(sp_sjcx2.FieldByName('zytmh').AsString);
  end
  else
  begin
   v_tmh:=trim(sp_sjcx2.FieldByName('mztmh').AsString);
   edit2.Text:=trim(sp_sjcx2.FieldByName('mztmh').AsString);
  end;
  ADOInsert.close;
  ADOInsert.commandtext:='Select * from zybl_xnxgsb where id='+#39+sjid+#39;
  ADOInsert.Open;
  cxcombobox3.Text:= ADOInsert.FieldByName('brxb').AsString;
  cxcombobox6.Text:= ADOInsert.FieldByName('brmz').AsString;
  cxcombobox5.Text:= ADOInsert.FieldByName('brzy').AsString;
  //cxcombobox2.Text:= ADOInsert.FieldByName('hkdzxq').AsString;
  //cxcombobox8.Text:= ADOInsert.FieldByName('hkdzxz').AsString;
  jbmc1.Caption:=get_zdmc('icd10',ADOInsert.fieldbyname('brzd').asstring,'');
  zdyjzk;
  ADOInsert.Edit;
 // if trim(dbedit18.Text)='' then
 // adoinsert['hkdzsq']:='四川省绵阳市';
  if ADOInsert.FieldByName('sfwc').AsString='1' then
  begin
    b_save.Enabled:=false ;
    BitBtn2.Enabled:=false;
    button1.Enabled:=true;
  end
  else
  begin
    b_save.Enabled:=true;
    BitBtn2.Enabled:=true;
    button1.Enabled:=false;
  end;
  pro_print(1);
 end;
procedure Tfrm_xnxgsb.auto_print;
var
sjid:string;
begin
  qkxx;
  sjid:=trim(sp_sjcx2.FieldByName('id').AsString);
  if V_brly='ZY' then
  begin
   edit1.Text:=trim(sp_sjcx2.FieldByName('zytmh').AsString);
   edit2.Text:=trim(sp_sjcx2.FieldByName('mztmh').AsString);
   v_tmh:=trim(sp_sjcx2.FieldByName('zytmh').AsString);
  end
  else
  begin
   v_tmh:=trim(sp_sjcx2.FieldByName('mztmh').AsString);
   edit2.Text:=trim(sp_sjcx2.FieldByName('mztmh').AsString);
  end;
  ADOInsert.close;
  ADOInsert.commandtext:='Select * from zybl_xnxgsb where id='+#39+sjid+#39;
  ADOInsert.Open;
  cxcombobox3.Text:= ADOInsert.FieldByName('brxb').AsString;
  cxcombobox6.Text:= ADOInsert.FieldByName('brmz').AsString;
  cxcombobox5.Text:= ADOInsert.FieldByName('brzy').AsString;
 // cxcombobox2.Text:= ADOInsert.FieldByName('hkdzxq').AsString;
 // cxcombobox8.Text:= ADOInsert.FieldByName('hkdzxz').AsString;
  jbmc1.Caption:=get_zdmc('icd10',ADOInsert.fieldbyname('brzd').asstring,'');
  zdyjzk;
  ADOInsert.Edit;
//  if trim(dbedit18.Text)='' then
  adoinsert['hkdzsq']:='四川省绵阳市';
  if ADOInsert.FieldByName('sfwc').AsString='1' then
  begin
    b_save.Enabled:=false ;
    BitBtn2.Enabled:=false;
    button1.Enabled:=true;
  end
  else
  begin
    b_save.Enabled:=true;
    BitBtn2.Enabled:=true;
    button1.Enabled:=false;
  end;
  pro_print(1);
end;

procedure Tfrm_xnxgsb.MenuItem2Click(Sender: TObject);
var
v_zyh:string;
begin
   if sp_sjcx1.Active then
     v_zyh:=Trim(sp_sjcx1.FieldByName('zyh').AsString);
   if v_zyh<>'' then
   begin
     DM_data.qry_pub.Close;
     DM_data.qry_pub.SQL.Clear;
     DM_data.qry_pub.SQL.Add('insert into zybl_xnxgsb_lbpc select '+#39+v_zyh+#39);
     DM_data.qry_pub.ExecSQL;
     Button2.Click;
   end;
end;

procedure Tfrm_xnxgsb.zycsh;//住院初始化
var
s,v_dzbm:string;
i:integer;
begin
  tbjc(v_tmh);
  qry_temp.Close;
  qry_temp.SQL.Clear;
  qry_temp.SQL.Add('select * from zybl_xnxgsb where zyh= '+#39+v_zyh+#39 +' and  brly='+#39+v_brly+#39+' and  sfwc=0' ) ;
  qry_temp.Open;
  if qry_temp.RecordCount=0 then
  begin
     qry_temp.Close;
     qry_temp.SQL.Clear;
     qry_temp.SQL.Add('exec zybl_zlblsbk_zycsh '''+v_zyh+'''');
     qry_temp.Open;
     ADOInsert.Edit;
     if Trim(qry_temp.fieldbyname('sfzhm').asstring)<>'' then
     sfzhjc(qry_temp.fieldbyname('sfzhm').asstring);
     ADOInsert.Append;
     ADOInsert['bgrq']:=now;
     ADOInsert['xzqhdm']:='510703';
     ADOInsert['xzqhxq']:='涪城区';
     ADOInsert['xzqhjd']:='警钟街';
     ADOInsert['hkdzsq']:='四川省绵阳市';
     ADOInsert['sjbh']:=v_tmh;
     ADOInsert['zytmh']:=v_tmh;
     edit1.Text:=v_tmh;
     ADOInsert['zyh']:=v_zyh;
     ADOInsert['ksdm']:=pub_ksdm;
     ADOInsert['brks']:=get_xsz_ba('sys_ksdm',pub_ksdm);
     ADOInsert['brxm']:=qry_temp.fieldbyname('brxm').asstring;
     ADOInsert['jtdh']:=Trim(qry_temp.fieldbyname('dwdh').asstring);
     ADOInsert['brxb']:=qry_temp.fieldbyname('brxb').asstring;
     cxComboBox3.Text:=qry_temp.fieldbyname('brxb').asstring;
     ADOInsert['brnl']:=qry_temp.fieldbyname('c_brnl').asstring;
     ADOInsert['csrq']:=qry_temp.fieldbyname('csrq').AsDateTime;
     ADOInsert['lxr']:=qry_temp.fieldbyname('lxr').asstring;
     ADOInsert['brmz']:=get_xsz_ba('sys_mz',qry_temp.fieldbyname('brmz').asstring);
     cxcombobox6.Text:=get_xsz_ba('sys_mz',qry_temp.fieldbyname('brmz').asstring);
    // ADOInsert['brzy']:=qry_temp.fieldbyname('brzy').asstring;
    // cxcombobox5.Text:=qry_temp.fieldbyname('brzy').asstring;
     if trim(qry_temp.fieldbyname('sfzhm').asstring)<>'' then
       ADOInsert['sfzhm']:=qry_temp.fieldbyname('sfzhm').asstring
     else
     ADOInsert['sfzhm']:=qry_temp.fieldbyname('basfzh').asstring;
     ADOInsert['brzd']:=qry_temp.fieldbyname('baryzd').asstring;
     jbmc1.Caption:=get_zdmc('icd10',ADOInsert.fieldbyname('brzd').asstring,'');
     ADOInsert['gzdw']:=qry_temp.fieldbyname('gzdw').asstring;
     ADOInsert['brmz']:=qry_temp.fieldbyname('mz').asstring;
     ADOInsert['hkdzbm']:=qry_temp.fieldbyname('hkdzbm').asstring;
     ADOInsert['jzdzbm']:=qry_temp.fieldbyname('brdzbm').asstring;
     ADOInsert['jzdz']:=qry_temp.fieldbyname('brdz').asstring;
     s:=qry_temp.fieldbyname('hkdz').asstring;
    // dzjc(s,qry_temp.fieldbyname('hkdzbm').asstring);
     //s:=StringReplace(s,Trim(DBEdit18.Text), '', [rfReplaceAll]);
     //s:=StringReplace(s,Trim(cxComboBox2.Text),'', [rfReplaceAll]);
    // s:=StringReplace(s,Trim(cxComboBox8.text),'', [rfReplaceAll]);
     ADOInsert['hkdz']:=s;
     ADOInsert['bgdw']:='绵阳市中心医院';
     ADOInsert['bgys']:=pub_czyxm;
     ADOInsert['sbczy']:=pub_czydm;
     ADOInsert['brly']:='ZY';
     ADOInsert['sfwc']:='0';
     b_save.Enabled:=true;
     button1.Enabled:=false;
     qry_temp.close;
  end
  else
  ADOInsert.Locate('zyh',v_zyh,[loCaseInsensitive]);
  ADOInsert.Edit;
end;
procedure Tfrm_xnxgsb.mzcsh;//门诊初始化
var
s,lssql:string;
i:integer;
begin
  tbjc(v_tmh);//已存在记录检查
  qry_temp.Close;
  qry_temp.SQL.Clear;
  qry_temp.SQL.Add('select * from zybl_xnxgsb where mztmh= '+#39+v_tmh+#39 +' and brly='+#39+v_brly+#39+' and sfwc=0 and sbczy='+#39+pub_czydm+#39) ;
  qry_temp.Open;
  if qry_temp.RecordCount=0 then
  begin
    qry_temp.Close;
    qry_temp.SQL.Clear;
    lssql:='select  top 1 a.*,b.ghkb,b.brnl as c_brnl from (';
    lssql:=lssql+' select tmh,brxm,brxb,brmz,brnl,csrq,brzy,brdz,sfzhm from sys_kyh where tmh='+#39+v_tmh+#39+'  union all ';
    lssql:=lssql+' select tmh,brxm,brxb,brmz,brnl,csrq,brzy,brdz,sfzhm from sys_kyh_ls where tmh='+#39+v_tmh+#39;
    lssql:=lssql+') a  LEFT join mzgh_ghmx b on a.tmh=b.bybh where CONVERT(VARCHAR(10),zlrq,120)=CONVERT(VARCHAR(10),GETDATE(),120)';
    qry_temp.SQL.Add(lssql);
    qry_temp.Open;
    if Trim(qry_temp.fieldbyname('sfzhm').asstring)<>'' then
    sfzhjc(qry_temp.fieldbyname('sfzhm').asstring);
    ADOInsert.Edit;
    ADOInsert.Append;
     edit2.Text:=v_tmh;
     ADOInsert['bgrq']:=now;
     ADOInsert['xzqhdm']:='510703';
     ADOInsert['xzqhxq']:='涪城区';
     ADOInsert['xzqhjd']:='警钟街';
     ADOInsert['hkdzsq']:='四川省绵阳市';
     ADOInsert['sjbh']:=v_tmh;
     ADOInsert['mztmh']:=v_tmh;
     ADOInsert['ksdm']:=pub_ksdm;
     ADOInsert['ysmzzy']:=pub_kbdm;
     ADOInsert['brks']:=pub_zymc;
     ADOInsert['brxm']:=qry_temp.fieldbyname('brxm').asstring;
     ADOInsert['brxb']:=qry_temp.fieldbyname('brxb').asstring;
     cxComboBox3.Text:=qry_temp.fieldbyname('brxb').asstring;
     ADOInsert['brnl']:=qry_temp.fieldbyname('c_brnl').asstring;
     ADOInsert['csrq']:=qry_temp.fieldbyname('csrq').AsDateTime;
     ADOInsert['brmz']:=get_xsz_ba('sys_mz',qry_temp.fieldbyname('brmz').asstring);
     cxcombobox6.Text:=get_xsz_ba('sys_mz',qry_temp.fieldbyname('brmz').asstring);
     ADOInsert['brzy']:=qry_temp.fieldbyname('brzy').asstring;
     cxcombobox5.Text:=qry_temp.fieldbyname('brzy').asstring;
     ADOInsert['sfzhm']:=qry_temp.fieldbyname('sfzhm').asstring;
     s:=StringReplace(qry_temp.fieldbyname('brdz').asstring,'四川省', '', [rfReplaceAll]);
     s:=StringReplace(s,'四川', '', [rfReplaceAll]);
     s:=StringReplace(s,'绵阳市', '', [rfReplaceAll]);
     s:=StringReplace(s,'绵阳', '', [rfReplaceAll]);
     ADOInsert['hkdz']:=s;
     ADOInsert['bgdw']:='绵阳市中心医院';
     ADOInsert['bgys']:=pub_czyxm;
     ADOInsert['sbczy']:=pub_czydm;
     ADOInsert['brly']:='MZ';
     ADOInsert['sfwc']:='0';
     b_save.Enabled:=true;
     button1.Enabled:=false;
     qry_temp.close;
   end
   else
   ADOInsert.Locate('mztmh',v_tmh,[loCaseInsensitive]);
end;

procedure Tfrm_xnxgsb.N1Click(Sender: TObject);
var
id:string;
sfwc:string;
begin
  id:=trim(adoinsert.FieldByName('id').AsString);
  sfwc:=trim(adoinsert.FieldByName('sfwc').AsString);
  if pc1.ActivePageIndex=1 then
  begin
    id:=trim(sp_sjcx.FieldByName('id').AsString);
    sfwc:=trim(sp_sjcx.FieldByName('sfwc').AsString);
  end;
  if id='' then
  begin
  application.messagebox('删除成功！', '提示', mb_ok + mb_iconinformation);
  adoinsert.Close;
  end
  else if (id<>'') and (sfwc<>'1') then
  begin
    qry_temp.Close;
    qry_temp.SQL.Clear;
    qry_temp.SQL.Add('delete  from  zybl_xnxgsb  where  id='+id);
    qry_temp.ExecSQL;
    application.messagebox('删除成功！', '提示', mb_ok + mb_iconinformation);
    adoinsert.Close;
    sxlb;
    if pc1.ActivePageIndex=1 then
    button9.Click;
  end
  else  if sfwc='1' then
  application.messagebox('事件已上报完成，不能删除！', '提示', mb_ok + mb_iconinformation);
end;

procedure Tfrm_xnxgsb.N2Click(Sender: TObject);
begin
 if sp_sjcx2.Active then
 begin
    sp_sjcx2.First;
    while not sp_sjcx2.Eof do
    begin
       auto_print;
       Sleep(500);
       sp_sjcx2.Next;
    end;
 end;
end;

procedure Tfrm_xnxgsb.N3Click(Sender: TObject);
begin
   if sp_sjcx2.Active then
 begin
    sp_sjcx2.First;
    while not sp_sjcx2.Eof do
    begin
       if Trim(sp_sjcx2.FieldByName('sfdy').AsString)='未打印' then
       auto_print;
       Sleep(500);
       sp_sjcx2.Next;
    end;
 end;
end;

procedure Tfrm_xnxgsb.tbjc(lstmh:string);//填报时检查
begin
 qry_pub.Close;
 qry_pub.SQL.Clear;
 qry_pub.SQL.Text:='Select * from zybl_xnxgsb where  (zytmh='+#39+lstmh+#39+' or mztmh='+#39+lstmh+#39 +') and sfwc=1';
 qry_pub.Open;
 if not  qry_pub.IsEmpty then
 begin
  if (application.MessageBox('已存在该卡号的上报信息，是否继续？', '请注意', MB_YESNO + MB_ICONQUESTION) = IDNO) then
   abort;
 end;
end;
procedure Tfrm_xnxgsb.sfzhjc(sfzh:string);//填报时检查
begin
 qry_pub.Close;
 qry_pub.SQL.Clear;
 qry_pub.SQL.Text:='Select * from zybl_xnxgsb where  sfzhm='+#39+sfzh+#39+' and sfwc=1';
 qry_pub.Open;
 if not  qry_pub.IsEmpty then
 begin
  if (application.MessageBox('已存在该身份证号的上报信息，是否继续？', '请注意', MB_YESNO + MB_ICONQUESTION) = IDNO) then
   abort;
 end;
end;
function Tfrm_xnxgsb.get_xsz_ba(bmc,cxz:string):string;
var sj:string;
begin
  Qry_pub.close;
  Qry_pub.SQL.clear;
  Qry_pub.sql.add('select * from '+bmc+' where dm='+#39+cxz+#39+'order by dm');
  Qry_pub.open;
  if Qry_pub.RecordCount=1 then
  begin
    if (bmc='zysf_rytj') or (bmc='zysf_rybq')
    then
     result:=trim(Qry_pub.fieldbyname('sm').asstring)
     else
     result:=trim(Qry_pub.fieldbyname('mc').asstring)
  end
  else
    result:='';
end;
procedure Tfrm_xnxgsb.xzqhzk;
begin
 { qry_temp.Close;
  qry_temp.SQL.Clear;
  qry_temp.SQL.Add('select * from dbo.zybl_zlblsbk_xzqh where  parentid = (select id from zybl_zlblsbk_xzqh where jb=3 and qhmc='+#39+trim(cxcombobox2.Text)+#39+')');
  qry_temp.Open;
  cxcombobox8.Properties.Items.Clear;
  while not qry_temp.eof do
  begin
   cxcombobox8.Properties.Items.add(trim(qry_temp.FieldByName('qhmc').asstring));
   qry_temp.next;
  end;  }
end ;
procedure Tfrm_xnxgsb.xzsbClick(Sender: TObject);
begin
 if v_brly='ZY' then
 edit1.ReadOnly:=true
 else if v_brly='MZ' then
 Edit2.ReadOnly:=true
 end;
procedure Tfrm_xnxgsb.sxlb;
begin
  ADOInsert.Close;
  if v_brly='ZY' then
    ADOInsert.commandtext:='Select * from zybl_xnxgsb where sfwc=0 and  '+
   ' zyh='+#39+v_zyh+#39+' and brly='+#39+v_brly+#39 +' order by bgrq'
  else if  v_brly='MZ' then
    ADOInsert.commandtext:='Select * from zybl_xnxgsb where sfwc=0  and sbczy='+#39+pub_czydm+#39+
   ' and brly='+#39+v_brly+#39+' order by bgrq';
  ADOInsert.Open;
end;
end.
