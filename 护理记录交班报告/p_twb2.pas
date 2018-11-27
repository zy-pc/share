
unit p_twb2;

interface

uses
    SysUtils, Windows, Messages, Classes, Graphics, Controls, Forms, Dialogs,
    Buttons, ExtCtrls, StdCtrls, ComCtrls, Menus, DB, ADODB, ToolWin, ImgList,
    Grids, DBGrids,GridsEh, DBGridEh, cxControls, cxContainer, cxEdit,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,printers, variants,
  QuickRpt, QRCtrls, cxGraphics,DateUtils, ActnList, cxSplitter, QRWebFilt, QRExport,Jpeg,
  cxLookAndFeels, cxLookAndFeelPainters,  DBGridEhGrouping,math, frxClass, PrnDbgeh,
  PrViewEh, MemTableDataEh, DataDriverEh, MemTableEh,EhLibMTE,StrUtils, frxDBSet,
  cxStyles,  cxCustomData, cxFilter, cxData, cxDataStorage,
  cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridLevel, cxClasses, cxGridCustomView, cxGrid, EhLibADO,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdHTTP;
type
  sssrq=array[0..10] of tdatetime;
type
    TDrawingTool = (dtLine, dtRectangle, dtEllipse, dtRoundRect);
    Tfrm_twb2 = class(TForm)
        StatusBar1: TStatusBar;
        ad_tw: TADODataSet;
        ImageList1: TImageList;
        ad_dele: TADOCommand;
        ad_tb: TADODataSet;
        ad_maxrq: TADODataSet;
        sp_cx_zybrjbqk: TADOStoredProc;
        ds_zybrjbqk: TDataSource;
        ds_tw: TDataSource;
        ad_cgjl: TADODataSet;
        ad_cg: TADODataSet;
    ad_save_cgjl: TADOCommand;
    ActionList1: TActionList;
    Action1: TAction;
    Action2: TAction;
    ad_yll: TADODataSet;
    ds_cg: TDataSource;
    DBGridEh3: TDBGridEh;
    sp_twbr: TADOStoredProc;
    ds_twbr: TDataSource;
    Panel4: TPanel;
    zyxz: TComboBox;
    Label31: TLabel;
    ad_bqks: TADODataSet;
    cxSplitter1: TcxSplitter;
    ad_twjlhtml: TADODataSet;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel1: TPanel;
    Label10: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label16: TLabel;
    Label29: TLabel;
    lbmc: TEdit;
    brxm: TEdit;
    bch: TEdit;
    ksmc: TEdit;
    ryrq: TDateTimePicker;
    brzd: TEdit;
    Panel2: TPanel;
    Label17: TLabel;
    Bevel1: TBevel;
    Bevel2: TBevel;
    b_first: TSpeedButton;
    b_prior: TSpeedButton;
    b_next: TSpeedButton;
    b_last: TSpeedButton;
    b_save: TSpeedButton;
    b_delete: TSpeedButton;
    b_cancel: TSpeedButton;
    SpeedButton1: TSpeedButton;
    Label1: TLabel;
    Label7: TLabel;
    b_add: TSpeedButton;
    Label11: TLabel;
    Label12: TLabel;
    Label22: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label27: TLabel;
    Label30: TLabel;
    lrrq: TcxDateEdit;
    sd: TDateTimePicker;
    wljw: TCheckBox;
    wcyy: TComboBox;
    ssrq1: TcxDateEdit;
    ryrq1: TcxDateEdit;
    cwfs: TComboBox;
    tz: TcxComboBox;
    cyrq1: TcxDateEdit;
    zcrq1: TcxDateEdit;
    swsj1: TcxDateEdit;
    fmsj1: TcxDateEdit;
    crxx: TcxComboBox;
    bgdyl: TEdit;
    hxj: TCheckBox;
    Panel3: TPanel;
    PageControl2: TPageControl;
    TabSheet3: TTabSheet;
    DBGridEh1: TDBGridEh;
    TabSheet4: TTabSheet;
    DBGridEh2: TDBGridEh;
    BitBtn1: TBitBtn;
    tmpgrid: TDBGrid;
    TabSheet2: TTabSheet;
    ScrollBox1: TScrollBox;
    Image: TImage;
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRImage1: TQRImage;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton12: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    ToolButton14: TToolButton;
    ToolButton9: TToolButton;
    Button4: TButton;
    qry_hljldnr: TADOQuery;
    ds_hljld: TDataSource;
    ADOQuery3: TADOQuery;
    ad_hljld_xmdz: TADODataSet;
    qry_rclsc: TADOQuery;
    qry_hljld_xmdz: TADOQuery;
    ad_hljld: TADODataSet;
    ScrollBox3: TScrollBox;
    TabSheet9: TTabSheet;
    DBGridEh4: TDBGridEh;
    ScrollBox2: TScrollBox;
    qry_hljld_pf: TADOQuery;
    PrintDBGridEh1: TPrintDBGridEh;
    ad_rcl: TADODataSet;
    qry_rcl: TADOQuery;
    ds_rcl: TDataSource;
    ScrollBox4: TScrollBox;
    Label34: TLabel;
    Label35: TLabel;
    mb0: TEdit;
    Label36: TLabel;
    xl0: TEdit;
    Label37: TLabel;
    hx0: TEdit;
    Label38: TLabel;
    tt0: TEdit;
    Label39: TLabel;
    xy: TEdit;
    Label3: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label9: TLabel;
    Memo3: TMemo;
    TabSheet5: TTabSheet;
    DBGridEh5: TDBGridEh;
    ds_qbxm: TDataSource;
    Panel10: TPanel;
    Label18: TLabel;
    ComboBox1: TComboBox;
    Memo1: TMemo;
    Button6: TButton;
    Label19: TLabel;
    Label20: TLabel;
    Edit1: TEdit;
    Label21: TLabel;
    Edit2: TEdit;
    Label23: TLabel;
    Memo2: TMemo;
    Button8: TButton;
    Panel11: TPanel;
    ADOQuery1: TADOQuery;
    TabSheet6: TTabSheet;
    DBGridEh6: TDBGridEh;
    GroupBox1: TGroupBox;
    Panel5: TPanel;
    Button2: TButton;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    Button3: TButton;
    DBGridEh7: TDBGridEh;
    ds_qbxmcrl: TDataSource;
    Label6: TLabel;
    ADOQuery4: TADOQuery;
    tw0: TEdit;
    ad_gdyl: TADODataSet;
    qry_gdylsc: TADOQuery;
    Button7: TButton;
    cxSplitter2: TcxSplitter;
    Label8: TLabel;
    htw: TEdit;
    Label15: TLabel;
    hmb: TEdit;
    Label26: TLabel;
    hxl: TEdit;
    Label28: TLabel;
    hhx: TEdit;
    Label32: TLabel;
    hxy: TEdit;
    Label33: TLabel;
    httpf: TEdit;
    PopupMenu2: TPopupMenu;
    N1: TMenuItem;
    Panel6: TPanel;
    Label40: TLabel;
    cxDateEdit1: TcxDateEdit;
    Label41: TLabel;
    cxDateEdit2: TcxDateEdit;
    Label43: TLabel;
    Button1: TButton;
    N2: TMenuItem;
    qry_gsbc: TADOQuery;
    Button5: TButton;
    sp_zj: TADOStoredProc;
    sp_rclzj: TADOStoredProc;
    Button9: TButton;
    PrintDBGridEh2: TPrintDBGridEh;
    PopupMenu1: TPopupMenu;
    N3: TMenuItem;
    sp_hljldqbxm: TADOStoredProc;
    sp_rclqbxm: TADOStoredProc;
    DBGridEh8: TDBGridEh;
    sp_symcxs: TADOStoredProc;
    ds_ypqd: TDataSource;
    sp_syl: TADOStoredProc;
    qry_zjdr: TADOQuery;
    Label42: TLabel;
    pssm: TEdit;
    qry_cxzj: TADOQuery;
    qry_zjsj: TADOQuery;
    qry_hljldcc: TADOQuery;
    Label44: TLabel;
    qry_sczj: TADOQuery;
    sp_zjdr: TADOStoredProc;
    qry_yz: TADOQuery;
    Label45: TLabel;
    sp_ljxjc: TADOStoredProc;
    sp_pdwz: TADOStoredProc;
    zjy: TComboBox;
    Label46: TLabel;
    Label47: TLabel;
    ADOQuery2: TADOQuery;
    ad_czy: TADODataSet;
    ad_twid: TAutoIncField;
    ad_twzyh: TStringField;
    ad_twjlrq: TDateTimeField;
    ad_twsd: TStringField;
    ad_twmb: TIntegerField;
    ad_twtw: TBCDField;
    ad_twhx: TIntegerField;
    ad_twxl: TIntegerField;
    ad_twjcyy: TStringField;
    ad_twtwfs: TStringField;
    ad_twsm: TStringField;
    ad_twjlrq_s: TStringField;
    ad_twtt: TIntegerField;
    ad_twsyhxj: TBooleanField;
    ad_twczy: TStringField;
    ad_twmc: TStringField;
    sp_zjcx: TADOStoredProc;
    Panel7: TPanel;
    ad_cgjlid: TAutoIncField;
    ad_cgjlzyh: TStringField;
    ad_cgjljlrq: TDateTimeField;
    ad_cgjlxbl: TStringField;
    ad_cgjldbcs: TStringField;
    ad_cgjlsyl: TStringField;
    ad_cgjlyrl: TStringField;
    ad_cgjlxy: TStringField;
    ad_cgjltz: TStringField;
    ad_cgjlryrq: TDateTimeField;
    ad_cgjlssrq: TDateTimeField;
    ad_cgjlryts: TStringField;
    ad_cgjlssts: TStringField;
    ad_cgjlcyrq: TDateTimeField;
    ad_cgjljlrq_s: TStringField;
    ad_cgjlzcrq: TDateTimeField;
    ad_cgjlzrks: TStringField;
    ad_cgjlzcks: TStringField;
    ad_cgjlbrxm: TStringField;
    ad_cgjlbrxb: TStringField;
    ad_cgjlbrnl: TStringField;
    ad_cgjlbch: TStringField;
    ad_cgjlbrks: TStringField;
    ad_cgjlswsj: TDateTimeField;
    ad_cgjlqt: TStringField;
    ad_cgjlfmsj: TDateTimeField;
    ad_cgjlcl: TStringField;
    ad_cgjlczy: TStringField;
    Panel8: TPanel;
    DBGridEh9: TDBGridEh;
    qry_bqgc: TADOQuery;
    ds_bqgc: TDataSource;
    Button10: TButton;
    qry_rclcx: TADOQuery;
    DBGridEh10: TDBGridEh;
    qry_yr: TADOQuery;
    ds_yr: TDataSource;
    GroupBox5: TGroupBox;
    Button11: TButton;
    ad_cgjlpssm: TStringField;
    memo4: TMemo;
    Button12: TButton;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxGrid1DBTableView1Column3: TcxGridDBColumn;
    cxGrid1DBTableView1Column4: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    TabSheet7: TTabSheet;
    ds_sxtx: TDataSource;
    sp_sxtx: TADOStoredProc;
    Label49: TLabel;
    nl: TEdit;
    zrks: TComboBox;
    zcks: TComboBox;
    ds_temp: TDataSource;
    qry_checksj: TADOQuery;
    PopupMenu3: TPopupMenu;
    N6: TMenuItem;
    sp_tsjbbr: TADOStoredProc;
    qry_tsjbbr: TADOQuery;
    SpeedButton2: TSpeedButton;
    IdHTTP1: TIdHTTP;
        procedure lrrqPropertiesChange(Sender: TObject);
        procedure SpeedButton1Click(Sender: TObject);
        procedure ToolButton14Click(Sender: TObject);
        procedure tmpgridDblClick(Sender: TObject);
        procedure tmpgridKeyDown(Sender: TObject; var Key: Word;
            Shift: TShiftState);
        procedure tmpgridExit(Sender: TObject);
        procedure TabSheet2Show(Sender: TObject);
        procedure FormShow(Sender: TObject);
        procedure ToolButton8Click(Sender: TObject);
        procedure ToolButton7Click(Sender: TObject);
        procedure ToolButton6Click(Sender: TObject);
        procedure ToolButton5Click(Sender: TObject);
        procedure xyKeyPress(Sender: TObject; var Key: Char);
        procedure tw0Exit(Sender: TObject);
        procedure mb0KeyPress(Sender: TObject; var Key: Char);
        procedure brxmKeyPress(Sender: TObject; var Key: Char);
        procedure b_cancelClick(Sender: TObject);
        procedure b_saveClick(Sender: TObject);
        procedure b_deleteClick(Sender: TObject);
        procedure b_addClick(Sender: TObject);
        procedure b_lastClick(Sender: TObject);
        procedure b_nextClick(Sender: TObject);
        procedure b_priorClick(Sender: TObject);
        procedure b_firstClick(Sender: TObject);
        procedure ToolButton12Click(Sender: TObject);
        procedure ToolButton1Click(Sender: TObject);
        procedure ToolButton3Click(Sender: TObject);
        procedure ToolButton2Click(Sender: TObject);
        procedure BitBtn2Click(Sender: TObject);
        procedure BitBtn3Click(Sender: TObject);
        procedure BitBtn4Click(Sender: TObject);
        procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
        procedure FormMouseDown(Sender: TObject; Button: TMouseButton;
            Shift: TShiftState; X, Y: Integer);
        procedure displayvalue;
        procedure displaynull;
        procedure display_hljl;
        procedure display_hljl_cgjl;
        procedure display_hljl_null;
        function checkerror: boolean;
        function strTOre(xx: Tedit; ss: string): boolean;
        function checkzero: boolean;
        procedure DBGridEh1CellClick(Column: TColumnEh);
    procedure ryrq1KeyPress(Sender: TObject; var Key: Char);
    procedure ssrq1KeyPress(Sender: TObject; var Key: Char);
    procedure ad_cgjlAfterOpen(DataSet: TDataSet);
    procedure sdKeyPress(Sender: TObject; var Key: Char);
    procedure ryrq1Enter(Sender: TObject);
    procedure sdExit(Sender: TObject);
    procedure ToolButton9Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure Action2Execute(Sender: TObject);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure cyrq1KeyPress(Sender: TObject; var Key: Char);
    procedure lrrqKeyPress(Sender: TObject; var Key: Char);
    procedure tzKeyPress(Sender: TObject; var Key: Char);
    procedure crxxKeyPress(Sender: TObject; var Key: Char);
    procedure ad_twAfterDelete(DataSet: TDataSet);
    procedure ad_twBeforeDelete(DataSet: TDataSet);
    procedure ad_cgjlAfterDelete(DataSet: TDataSet);
    procedure ad_cgjlBeforeDelete(DataSet: TDataSet);
    procedure xblKeyPress(Sender: TObject; var Key: Char);
    procedure zyxzChange(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure DBGridEh2CellClick(Column: TColumnEh);
    procedure sp_cx_zybrjbqkAfterOpen(DataSet: TDataSet);
    procedure Button4Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Memo3DblClick(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure DBGridEh4CellClick(Column: TColumnEh);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure DBGridEh6CellClick(Column: TColumnEh);
    procedure DBGridEh6DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure Button7Click(Sender: TObject);
    procedure tt0Exit(Sender: TObject);
    procedure cxSplitter2AfterClose(Sender: TObject);
    procedure cxSplitter2AfterOpen(Sender: TObject);
    procedure mb0Exit(Sender: TObject);
    procedure xl0Exit(Sender: TObject);
    procedure hx0Exit(Sender: TObject);
    procedure xyExit(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure httpfExit(Sender: TObject);
    procedure htwKeyPress(Sender: TObject; var Key: Char);
    procedure N2Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure DBGridEh5DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure DBGridEh7DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure ScrollBox3Click(Sender: TObject);
    procedure ScrollBox3MouseWheelDown(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure ScrollBox3MouseWheelUp(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure ScrollBox2MouseWheelDown(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure ScrollBox2MouseWheelUp(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure ScrollBox2Click(Sender: TObject);
    procedure DBGridEh8DblClick(Sender: TObject);
    procedure DBGridEh8Exit(Sender: TObject);
    procedure DBGridEh8DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure DBGridEh3DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure hmbExit(Sender: TObject);
    procedure htwExit(Sender: TObject);
    procedure hxlExit(Sender: TObject);
    procedure hhxExit(Sender: TObject);
    procedure qry_rclBeforeDelete(DataSet: TDataSet);
    procedure qry_rclAfterDelete(DataSet: TDataSet);
    procedure bgdylKeyPress(Sender: TObject; var Key: Char);
    procedure DBGridEh9CellClick(Column: TColumnEh);
    procedure Button10Click(Sender: TObject);
    procedure b_saveMouseEnter(Sender: TObject);
    procedure Memo3KeyPress(Sender: TObject; var Key: Char);
    procedure lrrqExit(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure qry_rclAfterOpen(DataSet: TDataSet);
    procedure ryrq1Exit(Sender: TObject);
    procedure cyrq1Exit(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure PopupMenu3Popup(Sender: TObject);
    procedure DBGridEh4DblClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure DBGridEh3CellClick(Column: TColumnEh);
    private
   //   OldScrollBoxWindowProc:   TWndMethod;
        procedure jbxx;
        procedure imagePrint;
        Procedure OnMouseWheel(Var Msg :TMsg;var Handled:Boolean);
   //     procedure   NewScrollBoxWindowProc(var   Message:   TMessage);
   //     procedure   OnMessageOwn(var   Msg:   TMsg;   var   Handled:   Boolean);

    { Private declarations }
    public
    { Public declarations }
        BrushStyle: TBrushStyle;
        PenStyle: TPenStyle;
        PenWide: Integer;
        Drawing: Boolean;
        Origin, MovePt: TPoint;
        DrawingTool: TDrawingTool;
        CurrentFile,str_bqgc: string;
        valuechange: boolean; //判定是否有值改变
         yczf,ywsjzf:Integer;
         hljlddyfs:Boolean;
         scrollbox3height,scrollbox2height:integer;
        procedure drawline(hz, fieldname: string; hzx, hzy: integer; step: real; begva, color: integer);
        procedure drawxy(width, height: integer);
        procedure drawcgjl;
        procedure initssrq;
        procedure createhtml;
        procedure scyygf;
        procedure kjsc;
        procedure hljld;
        procedure rcl;
        procedure dkhljldrcl;
        procedure zilinenglionclick(sender:TObject);
        procedure yachuangonclick(sender:TObject);
        procedure diedaoonclick(sender:TObject);
        procedure dgtlfxonclick(sender:TObject);
        procedure hljldrclbc;
        procedure gdylbc;
        procedure rclzj;
        procedure xgrclzj;
        procedure xgrclzj1;
        procedure dkqbxm;
        procedure guanluonclick(sender:TObject);
        procedure guanluonexit(sender:TObject);
        procedure guanluonenter(sender:TObject);
        procedure xmenter(sender:tobject);
        procedure xmexit(sender:tobject);
        procedure rclexit(sender:tobject);
        procedure rclexit1(sender:tobject);
        procedure rclenter(sender:tobject);
        procedure rclenter1(sender:tobject);
      //  procedure bylenter(sender:TObject);
        procedure hljldkjpress(Sender: TObject; var Key: Char);
        procedure rclkjpress(Sender: TObject; var Key: Char);
        procedure rclchange(Sender: TObject);
        procedure rclchange1(Sender: TObject);
        procedure rclkjpress1(Sender: TObject; var Key: Char);
       


    end;
    function GetStrCounts(ASubStr, AStr: string): Integer;
    function locatenum(s: string): integer;
    function locatechar(s: string): integer;
    function locatefh(s: string): integer;
    function calcssts(rq:tdatetime):string;
    function convert0tob(a:string):string;

  var
    frm_twb2: Tfrm_twb2;
    zfcl1: array[1..11] of string = ('日        期', '患病日数', '术后日数', '每日时间', '小 便 量(ml)', '大 便 次 数',
        '输入量(ml)', '饮 入 量(ml)', '血压(mmhg)', '身高(cm)/体重(kg)','其它');
    clsd: array[0..5] of integer;
    m_height, m_width,sscs: integer;
    da1, maxrq, minrq, nextrq, ksrq: Tdatetime;
    zy_zyh,da2: string;
    ssrq:sssrq;
    buffer: array[0..255] of char;
    pageno:integer;//页数
     sbookmark:Tbookmark;
     sfksc,sfkxg,jldsfkxg,rclsfkxg:boolean;
     scry:string;
     firstshow,tjbz,jxgcgjl:boolean;
     jpeg: TJPEGImage;
     sfsc:Boolean;
     cgjlid:integer;
     hljlsxzd,hljlsxzdmc:string;//护理记录所选字段
C:Array[200..300] of TLabel ;
D:Array[200..300] of TEdit;
E:Array[0..5] of TcxDateEdit;
F:Array[300..400] of TLabel ;
N:Array[300..400] of TEdit;
H:Array[200..300] of TComboBox;
o:Array[300..400] of TComboBox;
guanlutext: string;         //管路护理text
djcs:Integer;                //管路护理点击次数
rclxgrq:TDateTime;
syfzbh:string;
sfwz:Boolean;
scrclbz:Integer;
xxnr,lxdh,xxjsrdm,xxsj,xxbr,xxtmh,xxzyh,xxfsr,xxjsr,xxlx,memoid:string;              //发送短信


 ///   ssts:array[0..5] of integer;

implementation

uses p_dm, p_func, p_printerset,p_gwyspf,p_bqgcyy,p_Select,p_hljlddyrq,superobject,
  P_main,p_gdtlfx,p_hljlqsfx;

{$R *.dfm}
function calcssts(rq:tdatetime):string;
var
ssrqstr:string;
i:integer;
n:real;
begin
if strtodatetime(formatdatetime('yyyy-mm-dd',rq))-strtodatetime(formatdatetime('yyyy-mm-dd',ssrq[0]))>14 then
ssrqstr :=''
else
 ssrqstr:=floattostr(strtodatetime(formatdatetime('yyyy-mm-dd',rq))-strtodatetime(formatdatetime('yyyy-mm-dd',ssrq[0])));
 if ssrqstr<>'' then
 if strtofloat(ssrqstr)<=0 then
 ssrqstr:='';

 for i:=1 to sscs-1 do
  begin
//    n:=strtodatetime(formatdatetime('yyyy-mm-dd',rq))-strtodatetime(formatdatetime('yyyy-mm-dd',ssrq[i]));
    if strtodatetime(formatdatetime('yyyy-mm-dd',rq))-strtodatetime(formatdatetime('yyyy-mm-dd',ssrq[i]))>0 then
    begin
    if strtodatetime(formatdatetime('yyyy-mm-dd',rq))-strtodatetime(formatdatetime('yyyy-mm-dd',ssrq[i]))>14 then
    begin
    if ssrqstr<>'' then
    ssrqstr:=''
    end
    else
    begin
    if ssrqstr<>'' then
    ssrqstr:= floattostr(strtodatetime(formatdatetime('yyyy-mm-dd',rq))-strtodatetime(formatdatetime('yyyy-mm-dd',ssrq[i])))+'/'+ssrqstr
    else
    ssrqstr:= floattostr(strtodatetime(formatdatetime('yyyy-mm-dd',rq))-strtodatetime(formatdatetime('yyyy-mm-dd',ssrq[i])));
    end;

    end;
  end;
 result:=ssrqstr;
end;

procedure Tfrm_twb2.displaynull;
begin
    brxm.Text := '';
    ksmc.Text := '';
    ryrq.datetime := date;
    bch.Text := '';
    nl.text:='';
    lbmc.Text := '';
    brzd.Text := '';
end;
function convert0tob(a:string):string;
begin
  if a='0' then
   result:=''
   else
   result:=a;
end;

procedure Tfrm_twb2.drawcgjl;
var i,i1,i2,i3,i4,wzhz,lxyw: integer;
x,y,x1:integer;
sd:real;
d1,d2,d3:tdatetime;
s1,s2:widestring;
jqwc:boolean;
wid,wid1:integer;//20个汉字宽度
s,s3:string;
sfss:boolean;
qsx:integer;
begin
 if pub_sfhtt then
  qsx:=150
 else
  qsx:=120;
//    ad_cg.First;
    wid :=image.Canvas.TextWidth('四川省绵阳市中心医院信息科');
    wid1:=image.Canvas.TextWidth('四川省绵阳市中心医院');
    ad_cg.DisableControls;

    ad_cg.Locate('jlrq_s', formatdatetime('yyyymmdd', ksrq), [loCaseInsensitive]);
    image.Canvas.Font.Size := 12;
    image.Canvas.Brush.Style:=bsclear;
    image.canvas.brush.Color:=clwhite;
    image.Canvas.Font.Color:=clblack;
    image.Canvas.TextOut(30, 55, '姓名:' + ad_cg.FieldByName('brxm').AsString);
    image.Canvas.TextOut(130, 55, '性别:' + ad_cg.FieldByName('brxb').AsString);
    image.Canvas.TextOut(230, 55, '年龄:' + ad_cg.FieldByName('brnl').AsString);//sp_twbr.FieldByName('brnl').AsString);
    image.Canvas.TextOut(330, 55, '科别:' + ad_cg.FieldByName('brks').AsString);
    image.Canvas.TextOut(510, 55, '病床:' + ad_cg.FieldByName('bch').AsString);
    image.Canvas.TextOut(610, 55, '住院号:' + sp_cx_zybrjbqk.FieldByName('tmh').AsString);     //以上画页头
    i := 1;
    d1 := strtodatetime(formatdatetime('yyyy-mm-dd',ad_cg.FieldByName('ryrq').AsDateTime));
    d2:=ad_cg.FieldByName('jlrq').asdatetime;
    while (not ad_cg.Eof) and (formatdatetime('yyyymmdd',ad_cg.FieldByName('jlrq').asdatetime)<=formatdatetime('yyyymmdd',nextrq)) do
    begin

        image.Canvas.Font := b_first.Font;
        image.Canvas.Brush.Style:=bsclear;
        image.canvas.brush.Color:=clwhite;
        image.Canvas.Font.Color:=clblack;
        image.Canvas.Font.Size:=12;
        image.Canvas.TextOut(qsx+5 + (i - 1) * 6 * m_width, 78, formatdatetime('yy"年"mm"月"dd"日"', ad_cg.FieldByName('jlrq').asdatetime));
        image.Canvas.TextOut(qsx+5 + (i - 1) * 6 * m_width, 98,  ad_cg.FieldByName('ryts').asstring);//显示住院日期
        if ad_cg.FieldByName('ssts').asstring<>'0' then
        image.Canvas.TextOut(qsx+5 + (i - 1) * 6 * m_width, 118, ad_cg.FieldByName('ssts').asstring);//显示手术日期
        image.Canvas.TextOut(qsx+5 + (i - 1) * 6 * m_width, 106 * m_height + 157, ad_cg.FieldByName('xbl').asstring);
        image.Canvas.TextOut(qsx+5 + (i - 1) * 6 * m_width, 106 * m_height + 157 + 20, ad_cg.FieldByName('dbcs').asstring);
        image.Canvas.TextOut(qsx+5 + (i - 1) * 6 * m_width, 106 * m_height + 157 + 40, ad_cg.FieldByName('syl').asstring);
        image.Canvas.TextOut(qsx+5 + (i - 1) * 6 * m_width, 106 * m_height + 157 + 60, ad_cg.FieldByName('yrl').asstring);
        image.Canvas.TextOut(qsx+5 + (i - 1) * 6 * m_width, 106 * m_height + 157 + 80, ad_cg.FieldByName('xy').Asstring);
        image.Canvas.TextOut(qsx+5 + (i - 1) * 6 * m_width, 106 * m_height + 157 + 100, ad_cg.FieldByName('tz').asstring);

        s1:=trim(ad_cg.FieldByName('qt').asstring)+'  '+trim(ad_cg.FieldByName('pssm').asstring);

        if (image.Canvas.TextWidth(s1)<=wid) and (image.Canvas.TextWidth(s1)>wid1) then
        begin
          image.canvas.font.size :=9;
          image.Canvas.TextOut(qsx+5 + (i - 1) * 6 * m_width, 106 * m_height + 157 + 120, s1);
        end
        else
        if (image.Canvas.TextWidth(s1)>wid) then
        begin
//         s1:=ad_cg.FieldByName('qt').asstring;
         image.canvas.font.size :=9;
         s2:=s1;
         i4:=0;
         i3:=20;
         while image.Canvas.TextWidth(s1)>wid-15 do
         begin
         i3:=1;
         jqwc:=false;
         wzhz:=0;
         lxyw:=0;
{         while ord(s1[i3])<128 do
          i3:=i3+1;}
         while  (not jqwc) do
         begin
         if ord(s1[i3])>128  then
         begin
         wzhz:=wzhz+1;
         lxyw:=0;
         end
         else
         lxyw:=lxyw+1;
         s3:=copy(s1,1,i3);
         if image.Canvas.TextWidth(s3)> wid-15 then
         begin
          jqwc:=true;
         end;
         if not jqwc then
         i3:=i3+1;
         if jqwc then
         if not wzhz div 2=0 then
         i3:=i3-1;
         end;
{         if wzhz=0 then
         i3:=lxyw
         else
         if lxyw>0 then
         i3:=i3-lxyw; }
         image.Canvas.TextOut(qsx+5 + (i - 1) * 6 * m_width, 106 * m_height + 157 + 120+i4*13,convert0tob(copy(s1,1,i3)));
         delete(s1,1,i3);
//         image.Canvas.TextOut(155 + (i - 1) * 6 * m_width, 106 * m_height + 157 + 133,convert0tob(copy(s1,i3+1,50)));
         i4:=i4+1;
         end;
         image.Canvas.TextOut(qsx+5 + (i - 1) * 6 * m_width, 106 * m_height + 157 + 120+i4*13,convert0tob(s1));
        end
        else
         begin
         image.canvas.font.size := 12;
         image.Canvas.TextOut(qsx+5 + (i - 1) * 6 * m_width, 106 * m_height + 157 + 120, s1);
         end;
        //写入院日期
        image.Canvas.Font.Size:=10;
        x1:=0;
        if (ad_cg.FieldByName('ryrq').asdatetime<>0) and
             (formatdatetime('yyyymmdd',ad_cg.FieldByName('ryrq').asdatetime)>=formatdatetime('yyyymmdd',ksrq)) then
        begin
        if strtoint(copy(formatdatetime('hh:mm:ss',ad_cg.fieldbyname('ryrq').asdatetime),1,2))>2 then
         sd:=strtoint(copy(formatdatetime('hh:mm:ss',ad_cg.fieldbyname('ryrq').asdatetime),1,2))-2
       else
         sd:=0;
         x := qsx + trunc(sd * m_width / 4) +
         DaysBetween( strtodate(formatdatetime('yyyy-mm-dd',ad_cg.FieldByName('ryrq').asdatetime)),strtodate(formatdatetime('yyyy-mm-dd',ksrq)))* m_width * 6+trunc(m_width / 2);
            image.Canvas.Font.Color:=clred;
        with image.canvas do
        begin
          textout(x,157,'入');
          textout(x,175,'院');
          textout(x,193,'于');
          textout(x,211,copy(formatdatetime('hh:mm',ad_cg.fieldbyname('ryrq').asdatetime),1,2));
          textout(x,229,'时');
          if copy(formatdatetime('hh:mm:ss',ad_cg.fieldbyname('ryrq').asdatetime),4,2)<>'00' then
          begin
          textout(x,247,copy(formatdatetime('hh:mm:ss',ad_cg.fieldbyname('ryrq').asdatetime),4,2));
          textout(x,265,'分');
          end;
        end;
        x1:=x;
        end;
        //写手术日期

        sfss:=false;
        if ad_cg.FieldByName('ssrq').asdatetime<>0 then
        begin
        if strtoint(copy(formatdatetime('hh:mm:ss',ad_cg.fieldbyname('ssrq').asdatetime),1,2))>2 then
         sd:=strtoint(copy(formatdatetime('hh:mm:ss',ad_cg.fieldbyname('ssrq').asdatetime),1,2))-2
       else
         sd:=0;
         x := qsx + trunc(sd * m_width / 4) +
         DaysBetween( strtodate(formatdatetime('yyyy-mm-dd',ad_cg.FieldByName('ssrq').asdatetime)),strtodate(formatdatetime('yyyy-mm-dd',ksrq)))* m_width * 6+trunc(m_width / 2);
            image.Canvas.Font.Color:=clred;
            sfss:=true;
         if (x1<>0) and (abs(x-x1)<15) then
           x:=x+16;
         x1:=x;
        with image.canvas do
        begin
          textout(x,157,'手');
          textout(x,175,'术');
          textout(x,193,'于');
          textout(x,211,copy(formatdatetime('hh:mm',ad_cg.fieldbyname('ssrq').asdatetime),1,2));
          textout(x,229,'时');
          if copy(formatdatetime('hh:mm:ss',ad_cg.fieldbyname('ssrq').asdatetime),4,2)<>'00' then
          begin
          textout(x,247,copy(formatdatetime('hh:mm:ss',ad_cg.fieldbyname('ssrq').asdatetime),4,2));
          textout(x,265,'分');
          end;
        end;
        end;
        //写分娩日期
        if ad_cg.FieldByName('fmsj').asdatetime<>0 then
        begin
        if strtoint(copy(formatdatetime('hh:mm:ss',ad_cg.fieldbyname('fmsj').asdatetime),1,2))>2 then
         sd:=strtoint(copy(formatdatetime('hh:mm:ss',ad_cg.fieldbyname('fmsj').asdatetime),1,2))-2
       else
         sd:=0;
         x := qsx + trunc(sd * m_width / 4) +
         DaysBetween( strtodate(formatdatetime('yyyy-mm-dd',ad_cg.FieldByName('fmsj').asdatetime)),strtodate(formatdatetime('yyyy-mm-dd',ksrq)))* m_width * 6+trunc(m_width / 2);
         if (x1<>0) and (abs(x-x1)<15) then
           x:=x+16;
         x1:=x;
            image.Canvas.Font.Color:=clblue;
        with image.canvas do
        begin
          textout(x,157,'分');
          textout(x,175,'娩');
          textout(x,193,'于');
          textout(x,211,copy(formatdatetime('hh:mm',ad_cg.fieldbyname('fmsj').asdatetime),1,2));
          textout(x,229,'时');
          if copy(formatdatetime('hh:mm:ss',ad_cg.fieldbyname('fmsj').asdatetime),4,2)<>'00' then
          begin
          textout(x,247,copy(formatdatetime('hh:mm:ss',ad_cg.fieldbyname('fmsj').asdatetime),4,2));
          textout(x,265,'分');
          end;
        end;
        end;
        //写出院日期
        if ad_cg.FieldByName('cyrq').asdatetime<>0 then
        begin
        if strtoint(copy(formatdatetime('hh:mm:ss',ad_cg.fieldbyname('cyrq').asdatetime),1,2))>2 then
         sd:=strtoint(copy(formatdatetime('hh:mm:ss',ad_cg.fieldbyname('cyrq').asdatetime),1,2))-2
       else
         sd:=0;
         x := qsx + trunc(sd * m_width / 4) +
         DaysBetween( strtodate(formatdatetime('yyyy-mm-dd',ad_cg.FieldByName('cyrq').asdatetime)),strtodate(formatdatetime('yyyy-mm-dd',ksrq)))* m_width * 6+trunc(m_width / 2);
            image.Canvas.Font.Color:=clred;
         if (x1<>0) and (abs(x-x1)<15) then
           x:=x+16;
         x1:=x;
        with image.canvas do
        begin
          textout(x,157,'出');
          textout(x,175,'院');
          textout(x,193,'于');
          textout(x,211,copy(formatdatetime('hh:mm',ad_cg.fieldbyname('cyrq').asdatetime),1,2));
          textout(x,229,'时');
          if copy(formatdatetime('hh:mm:ss',ad_cg.fieldbyname('cyrq').asdatetime),4,2)<>'00' then
          begin
          textout(x,247,copy(formatdatetime('hh:mm:ss',ad_cg.fieldbyname('cyrq').asdatetime),4,2));
          textout(x,265,'分');
          end;
        end;
        end;
        //写死亡日期
        if ad_cg.FieldByName('swsj').asdatetime<>0 then
        begin
        if strtoint(copy(formatdatetime('hh:mm:ss',ad_cg.fieldbyname('swsj').asdatetime),1,2))>2 then
         sd:=strtoint(copy(formatdatetime('hh:mm:ss',ad_cg.fieldbyname('swsj').asdatetime),1,2))-2
       else
         sd:=0;
         x := qsx + trunc(sd * m_width / 4) +
         DaysBetween( strtodate(formatdatetime('yyyy-mm-dd',ad_cg.FieldByName('swsj').asdatetime)),strtodate(formatdatetime('yyyy-mm-dd',ksrq)))* m_width * 6+trunc(m_width / 2);
            image.Canvas.Font.Color:=clred;
         if (x1<>0) and (abs(x-x1)<15) then
           x:=x+16;
         x1:=x;
        with image.canvas do
        begin
          textout(x,157,'死');
          textout(x,175,'亡');
          textout(x,193,'于');
          textout(x,211,copy(formatdatetime('hh:mm',ad_cg.fieldbyname('swsj').asdatetime),1,2));
          textout(x,229,'时');
          if copy(formatdatetime('hh:mm:ss',ad_cg.fieldbyname('swsj').asdatetime),4,2)<>'00' then
          begin
          textout(x,247,copy(formatdatetime('hh:mm:ss',ad_cg.fieldbyname('swsj').asdatetime),4,2));
          textout(x,265,'分');
          end;
        end;
        end;
        //写转出日期
        if ad_cg.FieldByName('zcrq').asdatetime<>0 then
        begin
        if strtoint(copy(formatdatetime('hh:mm:ss',ad_cg.fieldbyname('zcrq').asdatetime),1,2))>2 then
         sd:=strtoint(copy(formatdatetime('hh:mm:ss',ad_cg.fieldbyname('zcrq').asdatetime),1,2))-2
       else
         sd:=0;
         x := qsx + trunc(sd * m_width / 4) +
         DaysBetween( strtodate(formatdatetime('yyyy-mm-dd',ad_cg.FieldByName('zcrq').asdatetime)),strtodate(formatdatetime('yyyy-mm-dd',ksrq)))* m_width * 6+trunc(m_width / 2);
            image.Canvas.Font.Color:=clred;
         if (x1<>0) and (abs(x-x1)<15) then
           x:=x+16;
         x1:=x;
        with image.canvas do
        begin
          textout(x,157,'转');
          textout(x,175,'科');
          i1:=0;i2:=0;
          s:=trim(ad_cg.fieldbyname('zcks').asstring)+'-->'+trim(ad_cg.fieldbyname('zrks').asstring);
          if x+length(s)*17>image.Width then
          textout(x-((length(s)*17) div 4),193,s)
          else
          textout(x,193,s);


  {        while i1<=length(s) do
          begin
            textout(x,157+(i2+1)*20,copy(s,i1+1,2));
            i1:=i1+2;
            i2:=i2+1;
          end; }
          i2:=3;
          textout(x,157+(i2+0)*18,'于');
          textout(x,157+(i2+1)*18,copy(formatdatetime('hh:mm',ad_cg.fieldbyname('zcrq').asdatetime),1,2));
          textout(x,157+(i2+2)*18,'时');
          if copy(formatdatetime('hh:mm:ss',ad_cg.fieldbyname('zcrq').asdatetime),4,2)<>'00' then
          begin
          textout(x,157+(i2+3)*18,copy(formatdatetime('hh:mm:ss',ad_cg.fieldbyname('zcrq').asdatetime),4,2));
          textout(x,157+(i2+4)*18,'分');
          end;
        end;
        end;
        image.Canvas.Pen.Width:=2;
        ad_cg.Next;
        i := DaysBetween(ad_cg.FieldByName('jlrq').asdatetime,d2)+1;

    end;
  image.Canvas.Font.Color:=clblack;
//  image.Canvas.textout(10,300+106 * m_height,'请注意：表头所标每一个时点位置，是紧邻该时点前竖线。');
  image.Canvas.TextOut(image.Width div 2,145 + 155 + 108 * m_height+30,'第'+inttostr((DaysBetween(minrq,ksrq) div 7)+1)+'页');
  ad_cg.EnableControls;
end;

procedure Tfrm_twb2.imagePrint;
var
    rect: TRect;
begin

    rect.Left := 0;
    rect.Top := 0;

    rect.Right := printer.PageWidth;
    rect.Bottom :=printer.PageHeight;
    printer.PrinterIndex:=printer.Printers.IndexOf(printername);
    Printer.BeginDoc;
    Printer.Canvas.StretchDraw(rect, Image.Picture.Graphic);
    Printer.EndDoc;
end;

procedure Tfrm_twb2.jbxx;
begin

    sp_cx_zybrjbqk.Close;
    sp_cx_zybrjbqk.Parameters.ParamByName('@tmh').value := trim(brxm.text);
    sp_cx_zybrjbqk.Parameters.ParamByName('@bqdm').value := pub_bqdm;
    Frm_func.open_dataset(sp_cx_zybrjbqk);


    if sp_cx_zybrjbqk.IsEmpty then
    begin
        application.MessageBox('病人信息输入错误，' + ''#13'' + ''#13'' + '请确认输入的是病人的姓名或卡号或病床号', '错误', mb_ok + mb_iconerror);
        brxm.SetFocus;
    end
    else if sp_cx_zybrjbqk.RecordCount > 1 then
    begin
        tmpgrid.Visible := true;
        tmpgrid.top := brxm.top + brxm.Height;
        tmpgrid.left := brxm.left;
        tmpgrid.Visible := true;
        tmpgrid.setfocus;
    end
    else
        displayvalue;
end;
procedure Tfrm_twb2.dkhljldrcl;
begin
    qry_hljldnr.Close;
    qry_hljldnr.sql.clear;
    qry_hljldnr.sql.Add('select  CONVERT(varchar(100), jlrq, 20) jlrq1,*  from zybl_hljld where zyh=:zyh  order by jlrq');
    qry_hljldnr.Parameters.ParamByName('zyh').Value:=zy_zyh;
    Frm_func.open_dataset(qry_hljldnr);
    qry_rcl.Close;
    qry_rcl.SQL.Clear;
    qry_rcl.SQL.Add('select CONVERT(varchar(100), jlrq, 20) jlrq1,* from zybl_hljld_rcl where zyh=:zyh order by jlrq');
    qry_rcl.Parameters.ParamByName('zyh').value:=zy_zyh;
    Frm_func.open_dataset(qry_rcl);

end;

procedure Tfrm_twb2.drawline(hz, fieldname: string; hzx, hzy: integer; step: real; begva, color: integer);
var
    d1: Tdatetime;
    x, y,x1,y1,x2,y2,x3,y3,x4,y4,x_ls,y_ls,size,ry: integer;
    r,r1: real;
    sd:real;
    mbxl:integer;
    sfjc:boolean;
    qsx:integer;
begin
//处理体温
 if pub_sfhtt then
  qsx:=150
 else
  qsx:=120;
if not ad_tw.isempty then
 begin
   ad_tw.DisableControls;
   if ad_tw.Locate('jlrq_s',  formatdatetime('yyyymmdd',ksrq), [loPartialKey]) then
   begin
//     ad_tw.first;
    image.Canvas.Brush.Color := color;
    image.Canvas.Brush.Style := bssolid;
    image.Canvas.Pen.Width:=2;
    image.Canvas.Font.Color:=clwhite;
    image.Canvas.textout(hzx, hzy, hz);
//  ad_tw.first;
    r1:=0;
    d1 := strtodatetime(formatdatetime('yyyy-mm-dd',ad_tw.FieldByName('jlrq').AsDateTime));
    mbxl:=0;
    if fieldname='mb' then
    r1:= ad_tw.FieldByName('xl').Asfloat;
    r := ad_tw.FieldByName(fieldname).Asfloat;
    y := round(155 + 105 * m_height - (r - begva) * step);
    if fieldname='mb' then
    y1:= round(155 + 105 * m_height - (r1 - begva) * step);
//    if strtoint(copy(ad_tw.fieldbyname('sd').asstring,1,2))>4 then
    sd:=strtoint(copy(ad_tw.fieldbyname('sd').asstring,1,2))+strtoint(copy(ad_tw.fieldbyname('sd').asstring,4,2))/60-2 ;
//    else
//    sd:=0+strtoint(copy(ad_tw.fieldbyname('sd').asstring,4,2))/60;
 //   x := 120 + trunc( sd* m_width / 4)+trunc(m_width / 2);
    x := qsx + trunc( sd* m_width / 4)+trunc(m_width / 2);
    image.Canvas.Pen.Color := color;
    image.Canvas.BRUSH.Style := bssolid;
    image.Canvas.Brush.Color := color;
//    image.Canvas.Brush.Style := bssolid;
    if trim(ad_tw.fieldbyname('jcyy').asstring)<>''  then
     begin
      image.Canvas.Font.Color:=clblack;
      image.canvas.Brush.Style:=bsclear;
      image.canvas.TextOut(x-7,104 * m_height + 135,copy(ad_tw.fieldbyname('jcyy').asstring,1,2));
      image.canvas.TextOut(x-7,104 * m_height + 150,copy(ad_tw.fieldbyname('jcyy').asstring,3,2));
      sfjc:=true;
     end
    else
    begin
    if (fieldname='tw') and (ad_tw.FieldByName('twfs').asstring='腋温') then
     begin
       image.Canvas.moveto(x-4,y-4);
       image.canvas.LineTo(x+4,y+4);
       image.Canvas.moveto(x-4,y+4);
       image.canvas.LineTo(x+4,y-4);
     end
     else
    if (fieldname='tw') and (ad_tw.FieldByName('twfs').asstring='肛温') then
     begin
          image.Canvas.brush.Style := bsclear;
          image.Canvas.Ellipse(x - 3, y1 - 3, x + 3, y1 + 3);
      end
     else
    if  (fieldname='tw') and(ad_tw.fieldbyname('tw').asfloat<=35) then
     begin
      ry:= 155 + 105 * m_height - round((35 - begva) * step);
      image.Canvas.MoveTo(x, ry);
      image.Canvas.Font.Color:=clblack;
      image.canvas.Brush.Style:=bsclear;
      image.canvas.TextOut(x-7,ry,'不');
      image.canvas.TextOut(x-7,ry+15,'升');
      sfjc:=true;
     end
     else
      image.Canvas.Ellipse(x - 3, y - 3, x + 3, y + 3);
      image.Canvas.MoveTo(x, y);

    if fieldname='mb' then
    begin
    if y<>y1 then
     begin
     image.Canvas.brush.Style := bsclear;
     image.Canvas.Ellipse(x - 3, y1 - 3, x + 3, y1 + 3);
     image.Canvas.brush.Style := bssolid;
     image.Canvas.Ellipse(x - 3, y - 3, x + 3, y + 3);
     image.Canvas.Brush.Color := color;
     x2:=x;y2:=y1 ;
     x4:=x;y4:=y;
     mbxl:=1;
     end
     else
     begin
     image.Canvas.brush.Style := bssolid;
     image.Canvas.Ellipse(x - 3, y1 - 3, x + 3, y1 + 3);
     end;
    end;
    x4:=x;y4:=y;
    end;
    ad_tw.Next;

    while (not ad_tw.Eof) and (formatdatetime('yyyymmdd',ad_tw.FieldByName('jlrq').asdatetime)<=formatdatetime('yyyymmdd',nextrq)) do
    begin
      if not ((trim(ad_tw.fieldbyname('sm').asstring)='物理降温') and (fieldname<>'tw')) then
      begin
        if fieldname='mb' then
        r1:= ad_tw.FieldByName('xl').Asfloat;
        r := ad_tw.FieldByName(fieldname).Asfloat;
        x_ls:=x;
        y_ls:=y;
        y := round(155 + 105 * m_height - (r - begva) * step);
        if fieldname='mb' then
        y1:= round(155 + 105 * m_height - (r1 - begva) * step);
//       if strtoint(copy(ad_tw.fieldbyname('sd').asstring,1,2))>4 then
//        sd:=strtoint(copy(ad_tw.fieldbyname('sd').asstring,1,2))+strtoint(copy(ad_tw.fieldbyname('sd').asstring,4,2))/60-2
//       else
        sd:=strtoint(copy(ad_tw.fieldbyname('sd').asstring,1,2))+strtoint(copy(ad_tw.fieldbyname('sd').asstring,4,2))/60-2;
        x := qsx + trunc(sd * m_width / 4) +
            trunc(strtodatetime(formatdatetime('yyyy-mm-dd',ad_tw.FieldByName('jlrq').asdatetime)) - d1) * m_width * 6+m_width div 2;
        x1:=x;

        if fieldname<>'mb' then
        if trim(ad_tw.fieldbyname('sm').asstring)<>'物理降温' then
        if trim(ad_tw.fieldbyname('jcyy').asstring)<>''  then
        begin
        image.Canvas.Font.Color:=clblack;
        image.canvas.Brush.Style:=bsclear;
        image.canvas.TextOut(x-7,104 * m_height + 135,copy(ad_tw.fieldbyname('jcyy').asstring,1,2));
        image.canvas.TextOut(x-7,104 * m_height + 150,copy(ad_tw.fieldbyname('jcyy').asstring,3,2));
        sfjc:=true;
        end
        else
    if  (fieldname='tw') and(ad_tw.fieldbyname('tw').asfloat<=35) then
     begin
      ry:= 155 + 105 * m_height - round((35 - begva) * step);
      image.Canvas.MoveTo(x, ry);
      image.Canvas.Font.Color:=clblack;
      image.canvas.Brush.Style:=bsclear;
      image.canvas.TextOut(x-7,ry,'不');
      image.canvas.TextOut(x-7,ry+15,'升');
      sfjc:=true;
     end
     else
        if y_ls=0 then
        image.canvas.MoveTo(x,y)
        else
        begin
        if not sfjc then
        image.Canvas.LineTo(x,y)
        else
        image.Canvas.moveTo(x,y);
        sfjc:=false;
        end
        else
        begin
        if not sfjc then
        begin
        image.Canvas.pen.Color:=clred;
        image.Canvas.Pen.Style:=psdashdotdot;
        image.canvas.Pen.Width:=1;
        image.canvas.lineto(x_ls,y);
        end
        end;
        image.Canvas.Pen.Style:=pssolid;
        image.Canvas.pen.Color:=color;
        image.canvas.Pen.Width:=2;
//        sfjc:=false;
        x3:=x;y3:=y;
        if fieldname='mb' then
        begin
        if y<>y1 then
        begin
        if mbxl<>0 then
         begin
          image.Canvas.LineTo(x3,y3);
          image.Canvas.moveto(x2,y2);
          image.Canvas.LineTo(x,y1);
          image.Canvas.brush.Style := bsclear;
          image.Canvas.Ellipse(x - 3, y1 - 3, x + 3, y1 + 3);
          image.Canvas.Brush.Color := color;
          image.Canvas.brush.Style := bssolid;
//          image.canvas.lineto(x,y);
          image.Canvas.MoveTo(x3,y3);
          image.Canvas.Brush.Color := color;
          image.Canvas.brush.Style := bsBDiagonal;
          image.Canvas.Polygon([Point(x4, y4), Point(x, y),
          Point(x, y1), Point(x2, y2),Point(x4, y4)]);

          x2:=x;y2:=y1;
          x4:=x;y4:=y;
         end
         else
         begin
          if not sfjc then
           image.Canvas.LineTo(x,y)
          else
           image.Canvas.moveTo(x,y);

//          image.Canvas.LineTo(x, y);//**
          image.Canvas.moveto(x3,y3);
          image.Canvas.LineTo(x, y1);
          image.Canvas.brush.Style := bsclear;
          image.Canvas.Ellipse(x - 3, y1 - 3, x + 3, y1 + 3);
          image.Canvas.Brush.Color := color;
          image.Canvas.brush.Style := bssolid;
          x2:=x;y2:=y1 ;
          x4:=x;y4:=y;
         end;
         mbxl:=mbxl+1;
        end
        else
        begin
        if mbxl>0 then
        begin
         if trim(ad_tw.fieldbyname('jcyy').asstring)='' then
         begin
          image.Canvas.LineTo(x, y);//**  划脉搏
          image.Canvas.LineTo(x2, y2);//**划心率
          image.Canvas.Brush.Color := color;
          image.Canvas.brush.Style := bsBDiagonal;
          image.Canvas.Polygon([Point(x4, y4), Point(x, y),
          Point(x2, y2),Point(x4, y4)]);
          image.Canvas.moveto(x, y);//**
        end
        else
        begin
          image.Canvas.Brush.Color := color;
          image.Canvas.brush.Style := bsBDiagonal;
          image.Canvas.Polygon([Point(x4, y4), Point(x4, y4),
          Point(x4, y4),Point(x4, y4)]);
          sfjc:=true;
        end;
        end
        else
        if trim(ad_tw.fieldbyname('jcyy').asstring)<>''  then
        begin
        image.Canvas.Font.Color:=clblack;
        image.canvas.Brush.Style:=bsclear;
        image.canvas.TextOut(x-7,104 * m_height + 135,copy(ad_tw.fieldbyname('jcyy').asstring,1,2));
        image.canvas.TextOut(x-7,104 * m_height + 150,copy(ad_tw.fieldbyname('jcyy').asstring,3,2));
        sfjc:=true;
        end
        else
        if y_ls=0 then
        image.canvas.MoveTo(x,y)
        else
        begin
        if not sfjc then
        image.Canvas.LineTo(x,y)
        else
        image.Canvas.moveTo(x,y);
        sfjc:=false;
        end;
        mbxl:=0;
        end;
        end;
    if trim(ad_tw.fieldbyname('jcyy').asstring)=''  then
    begin

    if trim(ad_tw.fieldbyname('sm').asstring)<>'物理降温' then
    begin
    if  (fieldname='tw') and(ad_tw.fieldbyname('tw').asfloat<=35) then
     begin

      ry:= 155 + 105 * m_height - round((35 - begva) * step);
      image.Canvas.MoveTo(x, ry);
      image.Canvas.Font.Color:=clblack;
      image.canvas.Brush.Style:=bsclear;
      image.canvas.TextOut(x-7,ry,'不');
      image.canvas.TextOut(x-7,ry+15,'升');
      sfjc:=true;

{       image.Canvas.Brush.Color := color;
       image.Canvas.brush.Style := bssolid;
       image.Canvas.Ellipse(x - 4, y - 4, x + 4, y + 4);
       image.Canvas.brush.Style := bsclear;
       image.Canvas.Font.Color:=color;
       size:=image.Canvas.Font.Size;
       image.Canvas.Font.Size:=20;
       image.canvas.TextOut(x-13,y,'↓');
       image.Canvas.MoveTo(x, y);
       image.Canvas.Font.Size:=size;     }
     end
    else
    if (fieldname='tw') and (ad_tw.FieldByName('twfs').asstring='腋温') then
     begin
       image.Canvas.moveto(x-4,y-4);
       image.canvas.LineTo(x+4,y+4);
       image.Canvas.moveto(x-4,y+4);
       image.canvas.LineTo(x+4,y-4);
       image.Canvas.MoveTo(x, y);
     end
     else
    if (fieldname='tw') and (ad_tw.FieldByName('twfs').asstring='肛温') then
     begin
          image.Canvas.Brush.Color := color;
          image.Canvas.brush.Style := bsclear;
          image.Canvas.Ellipse(x - 3, y - 3, x + 3, y + 3);
      end
      else
      begin
        image.Canvas.Brush.Color := color;
        image.Canvas.brush.Style := bssolid;
        image.Canvas.Ellipse(x - 3, y - 3, x + 3, y + 3);
        if (ad_tw.FieldByName('syhxj').asboolean) and (fieldname='hx') then
        begin
        ry := round(155 + 105 * m_height - 20 * step);
        image.Canvas.brush.Style := bsclear;
        image.Canvas.Ellipse(x-8,ry-8,x+8,ry+8);
        image.Canvas.Font.Color:=clblack;
        image.canvas.TextOut(x-4,ry-8,'R');
        image.Canvas.MoveTo(x,y);
        end;
      end;
    end
    else
    begin
        image.Canvas.Brush.Color := clred;
        image.Canvas.brush.Style := bsclear;
        image.Canvas.Pen.Color := clred;
        image.Canvas.Pen.width := 1;
        image.Canvas.Ellipse(x_ls- 3, y - 3, x_ls + 3, y + 3);
        if y<=y_ls then
        begin
        image.canvas.Font.Color:=color;
        image.Canvas.TextOut(x_ls-4,y-14,'V');
        end;
        image.Canvas.MoveTo(x_ls,y_ls);

    end;
    end;
     image.Canvas.Pen.width := 1;
     image.Canvas.Pen.Color := color;
  end;/////
     ad_tw.Next;
    end;
 end;
 end;
 ad_tw.EnableControls;

end;

procedure Tfrm_twb2.initssrq;
var i:integer;
begin
ad_cgjl.DisableControls;
ad_cgjl.First;
i:=0;
while not ad_cgjl.Eof do
begin
 if ad_cgjl.FieldByName('ssrq').asdatetime<>0 then
  begin
   ssrq[i]:=ad_cgjl.FieldByName('ssrq').asdatetime;
   i:=i+1;
  end;
 ad_cgjl.Next;
end;
sscs:=i;
ad_cgjl.EnableControls;
end;

procedure Tfrm_twb2.Action1Execute(Sender: TObject);
begin
b_save.click;
end;

procedure Tfrm_twb2.Action2Execute(Sender: TObject);
begin
b_cancel.Click;
end;

procedure Tfrm_twb2.ad_cgjlAfterDelete(DataSet: TDataSet);
var
i:char;
begin
if sfsc then
 begin
try
ad_cgjl.UpdateBatch();
if not ad_cg.IsEmpty then
display_hljl;
except
application.MessageBox('删除出错或删除的是最后行数据请重新删除','提示',mb_ok);
end;
try
ad_tw.GotoBookmark(sbookmark);
ad_tw.FreeBookmark(sbookmark);
except

end;
 end
 else
 begin
    ad_cgjl.Close;
    ad_cgjl.Parameters.ParamByName('zyh').value:=zy_zyh;
    Frm_func.open_dataset(ad_cgjl);
     ad_cgjl.Locate('id',cgjlid,[]);
 end;


end;

procedure Tfrm_twb2.ad_cgjlAfterOpen(DataSet: TDataSet);
begin
if not ad_cgjl.isempty then

initssrq;
end;

procedure Tfrm_twb2.ad_cgjlBeforeDelete(DataSet: TDataSet);
var
s:string;
begin
 sbookmark:=ad_cg.GetBookmark;
 sfsc:=true;
 if ad_cgjl.FieldByName('ryrq').AsDateTime<>0 then
    begin
     s:='此条记录包含入院时间，删除可能导致入院时间延迟录入，是否确定删除？' ;
     if application.MessageBox(PChar(s),'注意*提示信息', mb_iconquestion + mb_okcancel + mb_defbutton2) = idcancel then
      begin
         cgjlid:=ad_cgjl.FieldByName('id').AsInteger;
         sfsc:=False;
         end
         else
       begin
         sfsc:=true;
        end;
    end;


end;



procedure Tfrm_twb2.ad_twAfterDelete(DataSet: TDataSet);
begin
 if sfksc then
begin
 try
ad_tw.UpdateBatch();
if ad_tw.IsEmpty then
  begin
   da1 := sp_cx_zybrjbqk.fieldbyname('ryrq').asdatetime;
   lrrq.Date :=  da1;
   sd.Time:=strtodatetime(pub_twbqssj);
   display_hljl_null;
   tw0.setfocus;
  end
else
display_hljl;
except
application.MessageBox('删除出错或删除的是最后行数据请重新删除','提示',mb_ok);
end;
try
ad_tw.GotoBookmark(sbookmark);
ad_tw.FreeBookmark(sbookmark);
except

end;
end
else
  begin
   ad_tw.CancelBatch();
   dm_data.qry_pub.Close;
   dm_data.qry_pub.SQL.Text:='select * from sys_czy where dm='+#39+scry+#39;
   frm_func.open_dataset(dm_data.qry_pub);
   application.MessageBox(pchar('本次体温记录由工号'+scry+':'+dm_data.qry_pub.fieldbyname('mc').asstring+'录入，只能由录入者本人删除！！'),'提示',mb_ok);
   dm_data.qry_pub.Close;
   try
   ad_tw.GotoBookmark(sbookmark);
   ad_tw.FreeBookmark(sbookmark);
   except

   end;
 end
end;

procedure Tfrm_twb2.ad_twBeforeDelete(DataSet: TDataSet);
begin
 sbookmark:=ad_tw.GetBookmark;
 if (ad_tw.FieldByName('czy').asstring=pub_czydm) or (ad_tw.FieldByName('czy').asstring='') or (pub_czyzw='04') then
 begin
 sfksc:=true;
 scry:=ad_tw.FieldByName('czy').asstring;
 end
 else
 begin
 sfksc:=false;
 scry:=ad_tw.FieldByName('czy').asstring;
 end;


end;

procedure Tfrm_twb2.bgdylKeyPress(Sender: TObject; var Key: Char);
begin
   if qry_rcl.Locate('jlrq', strtodatetime(formatdatetime('yyyy-mm-dd ', lrrq.date) + formatdatetime('hh:mm:ss',sd.time)), [loCaseInsensitive]) then
   begin
     if (qry_rcl.FieldByName('czy').AsString<>pub_czyxm) and (pub_czyzw<>'04') then
       begin
          key:=char(0);
   dm_data.qry_pub.Close;
   dm_data.qry_pub.SQL.Text:='select * from sys_czy where dm='+#39+qry_rcl.fieldbyname('czy').asstring+#39;
   Frm_func.open_dataset(dm_data.qry_pub);
   application.MessageBox(pchar('本次入出量记录由'+qry_rcl.fieldbyname('czy').asstring+'录入，只能由录入者本人修改！！'),'提示',mb_ok);
   dm_data.qry_pub.Close;
       end;
   end;
end;

procedure Tfrm_twb2.FormCreate(Sender: TObject);
var
  P:String;
begin
//  OldScrollBoxWindowProc   :=   ScrollBox3.WindowProc;
//    ScrollBox3.WindowProc   :=   NewScrollBoxWindowProc;
//    Application.OnMessage   :=   OnMessageOwn;
 Application.OnMessage:=OnMouseWheel;
 GetTempPath(sizeof(buffer),buffer);
  buffer:='d:\temp';
  P:='d:\temp';//要写完整路径。

//  if DirectoryExists(p) then
//  DeleteDir(p);
if not DirectoryExists(p) then
    if not CreateDir(p) then
    raise Exception.Create('Cannot create .\temp');




end;
{procedure   Tfrm_twb2.OnMessageOwn(var   Msg:   TMsg;   var   Handled:   Boolean);
begin 
    if   Msg.message   =   WM_MOUSEWHEEL   then
    begin 
        SendMessage(ScrollBox3.Handle,   WM_MouseWheel,   HiWord(Msg.wParam),   Msg.lParam);
        Handled   :=   False; 
    end; 
end;    }

procedure Tfrm_twb2.N1Click(Sender: TObject);
begin
panel6.Visible:=True;
end;

procedure Tfrm_twb2.N2Click(Sender: TObject);
var
i:integer ;
begin
if pub_czyzw='04' then
begin
     for I := 1 to DBGridEh6.Columns.Count-1 do
         begin
           qry_gsbc.close;
         //  ADOQuery2.SQL.Clear;
         //  ADOQuery2.SQL.Add('update zybl_hljld_xmdz set kd=:kd,xh=:xh where ksdm=:ksdm and hljld_name=:hljld_name');
           qry_gsbc.Parameters.ParamByName('kd').Value:=DBGridEh6.Columns[i].Width;
           qry_gsbc.Parameters.ParamByName('xh').Value:=i+1;
           qry_gsbc.Parameters.ParamByName('ksdm').Value:=pub_ksdm;
           qry_gsbc.Parameters.ParamByName('hljld_name').Value:=DBGridEh6.Columns[i].FieldName;
           Frm_func.exec_dataset_qry(qry_gsbc);
         end;
end
else
begin
   application.MessageBox('只能由护士长修改格式！', '提示', 0 + 48);
end;


end;

procedure Tfrm_twb2.N3Click(Sender: TObject);
var
i:integer ;
begin
if pub_czyzw='04' then
begin
     for I := 7 to DBGridEh4.Columns.Count-1 do
         begin
           qry_gsbc.close;
         //  ADOQuery2.SQL.Clear;
         //  ADOQuery2.SQL.Add('update zybl_hljld_xmdz set kd=:kd,xh=:xh where ksdm=:ksdm and hljld_name=:hljld_name');
           qry_gsbc.Parameters.ParamByName('kd').Value:=DBGridEh4.Columns[i].Width;
           qry_gsbc.Parameters.ParamByName('xh').Value:=i-5;
           qry_gsbc.Parameters.ParamByName('ksdm').Value:=pub_ksdm;
           qry_gsbc.Parameters.ParamByName('hljld_name').Value:=DBGridEh4.Columns[i].FieldName;
           Frm_func.exec_dataset_qry(qry_gsbc);
         end;
end
else
begin
   application.MessageBox('只能由护士长修改格式！', '提示', 0 + 48);
end;

end;

procedure Tfrm_twb2.N6Click(Sender: TObject);
var
bookmark:TBookmark;
begin
bookmark:=sp_twbr.GetBookmark;
if Pos ('取消',N6.caption)<=0 then
begin
sp_tsjbbr.close;
sp_tsjbbr.Parameters.ParamByName('@zyh').Value:=sp_twbr.FieldByName('zyh').AsString;
sp_tsjbbr.ExecProc;
zyxzChange(sender);
end
else
begin
qry_tsjbbr.Close;
qry_tsjbbr.SQL.clear;
qry_tsjbbr.SQL.Add('delete zybl_jbbg_rshd where zyh=:zyh and bz=:bz');
qry_tsjbbr.Parameters.ParamByName('zyh').Value:=sp_twbr.FieldByName('zyh').AsString;
qry_tsjbbr.Parameters.ParamByName('bz').Value:='交班';
qry_tsjbbr.ExecSQL;
zyxzChange(sender);
end;
try
 sp_twbr.GotoBookmark(bookmark);
finally
 sp_twbr.FreeBookmark(bookmark);
end;
end;

procedure Tfrm_twb2.PopupMenu3Popup(Sender: TObject);
begin
  if pos('↓',sp_twbr.fieldbyname('bz').asstring)>0 then
  N6.Caption:='取消特殊交班'
  else
  N6.Caption:='特殊交班';

end;

procedure Tfrm_twb2.qry_rclAfterDelete(DataSet: TDataSet);
var
i:char;
begin
 if scrclbz<>1 then
  begin
  if  (formatdatetime('hh:mm:ss',Frm_func.curr_date)<='07:30:00') and (rclxgrq<=strtodatetime(formatdatetime('yyyy-mm-dd ', Frm_func.curr_date-1) +'07:00:00')) then
      begin
       xgrclzj1;
      end;
  if (formatdatetime('hh:mm:ss',Frm_func.curr_date)>'07:30:00') and (rclxgrq<=strtodatetime(formatdatetime('yyyy-mm-dd ', Frm_func.curr_date) +'07:00:00')) then
      begin
       xgrclzj1;
      end;
  end;



end;

procedure Tfrm_twb2.qry_rclAfterOpen(DataSet: TDataSet);
begin
DBGridEh6.STFilter.InstantApply:=True;
DBGridEh6.STFilter.Local:=True;
DBGridEh6.STFilter.Visible:=True;
dbgrideh6.Columns[1].STFilter.listsource:=ds_rcl;
dbgrideh6.Columns[1].STFilter.datafield:='xm';
dbgrideh6.Columns[1].STFilter.keyfield:='xm';
dbgrideh6.Columns[1].STFilter.listfield:='xm';

end;

procedure Tfrm_twb2.qry_rclBeforeDelete(DataSet: TDataSet);
begin
scrclbz:=qry_rcl.FieldByName('zjbz').asinteger;
if scrclbz<>1 then
begin
rclxgrq:=qry_rcl.FieldByName('jlrq').AsDateTime;
end;
end;

{procedure   Tfrm_twb2.NewScrollBoxWindowProc(var   Message:   TMessage);
var
    Pace:   Integer;
begin
    if   Message.Msg   =   WM_MouseWheel   then
    begin
        Pace   :=   Message.wParam   ;
        if   Pace   >   120   then
            ScrollBox3.VertScrollBar.Position   :=   ScrollBox3.VertScrollBar.Position   +   10
        else
            ScrollBox3.VertScrollBar.Position   :=   ScrollBox3.VertScrollBar.Position   -   10;
    end; 
    OldScrollBoxWindowProc(Message);
end;   }

procedure Tfrm_twb2.FormMouseDown(Sender: TObject; Button: TMouseButton;
    Shift: TShiftState; X, Y: Integer);
begin
    if image.Canvas.Pixels[x, y] = clblue then
        StatusBar1.Panels[1].Text := Format('体温:%f,', [(105 * m_height + 155 - Y) / (m_height * 10) + 32]);
    if image.Canvas.Pixels[x, y] = clred then
        StatusBar1.Panels[1].Text := Format('脉搏:%F,', [(105 * m_height + 155 - Y) / (m_height / 2) + 30]);
    if image.Canvas.Pixels[x, y] = clnavy then
        StatusBar1.Panels[1].Text := Format('呼吸:%f,', [(105 * m_height + 155 - Y) / m_height + 10]);
end;


procedure Tfrm_twb2.FormMouseMove(Sender: TObject; Shift: TShiftState; X,
    Y: Integer);
begin
    if image.Canvas.Pixels[x, y] = clblue then
        StatusBar1.Panels[1].Text := Format('体温:%f,', [(105 * m_height + 155 - Y) / (m_height * 10) + 32]);
    if image.Canvas.Pixels[x, y] = clred then
        StatusBar1.Panels[1].Text := Format('脉搏:%F,', [(105 * m_height + 155 - Y) / (m_height / 2) + 30]);
    if image.Canvas.Pixels[x, y] = clnavy then
        StatusBar1.Panels[1].Text := Format('呼吸:%f,', [(105 * m_height + 155 - Y) / m_height + 10]);

end;

procedure Tfrm_twb2.BitBtn4Click(Sender: TObject);
begin
    drawxy( frm_twb2.tabsheet2.width, frm_twb2.tabsheet2.height);
    image.Width := 941;
    image.height := 612;
end;

procedure Tfrm_twb2.BitBtn3Click(Sender: TObject);
begin
    drawxy(941, 661);
    image.Width := 941;
    image.height := 661;
end;

procedure Tfrm_twb2.BitBtn1Click(Sender: TObject);
begin
   { xbl.Text := '0';
    dbcs.Text := '0';
    sryl.Text := '0';
    yrl.Text := '0'; }
    xy.Text := '';
    tz.Text := '';
    pssm.text:='';
    ryrq1.Date:=0;
    ssrq1.Date:=0;
    cyrq1.Date:=0;
    zcrq1.date:=0;
    swsj1.date:=0;
    fmsj1.date:=0;
    zrks.text:='';
    zcks.Text:='';
    bgdyl.Text:='';
    tjbz:=true;
    jxgcgjl:=false;
end;

procedure Tfrm_twb2.BitBtn2Click(Sender: TObject);
begin
    drawxy( frm_twb2.tabsheet2.width, frm_twb2.tabsheet2.height);
    image.Width := 941;
    image.height :=661;
end;

procedure Tfrm_twb2.drawxy(width, height: integer);
var
    i, x, y,qsx: integer;
    s: string;
    Bitmap: TBitmap;

begin
if pub_sfhtt then
 qsx:=150
else
qsx:=120;
    Bitmap := nil;
    try
        Bitmap := TBitmap.Create;
        Bitmap.Width := width;
        Bitmap.Height := height;
        Image.Picture.Graphic := Bitmap;
    finally
        Bitmap.Free;
    end;
    image.Canvas.Font.Size := 24;
    image.Canvas.TextOut((width - image.canvas.TextWidth('体   温   表')) div 2, 10, '体   温   表');
    i := 2;
    image.Canvas.Font.Size := 12;
    m_height := (height - 155 - 120) div 106;
    m_width := (width - qsx - 20) div 42;
    with image.canvas do
    begin
        MoveTo(30, 75);
        Rectangle(30, 75, qsx + 42 * m_width, 140 + 155 + 108 * m_height+30);
        for x := 1 to 4 do
        begin
            moveto(30, 75 + x * 20);
            lineto(qsx + 42 * m_width, 75 + x * 20);
            textout(40, 76 + (x - 1) * 20, zfcl1[x])
        end;
        for x := 1 to 3 do
        begin
            moveto(30 + x * 30, 155);
            lineto(30 + x * 30, 155 + 106 * m_height);
        end;
        moveto(30, 106 * m_height + 155);
        lineto(qsx + 42 * m_width, 106 * m_height + 155);

        for x := 1 to 7 do
        begin
            moveto(30, 106 * m_height + 155 + x * 20);
            if x<7 then
              lineto(qsx + 42 * m_width, 106 * m_height + 155 + x * 20);
            if length(zfcl1[x+4])<=14 then
            textout(32, 106 * m_height + 154 + 2 + (x - 1) * 20, zfcl1[x + 4])
            else
            begin
             image.Canvas.Font.Size := 8;
             textout(32, 106 * m_height + 154 + 2 + (x - 1) * 20, zfcl1[x + 4]);
             image.Canvas.Font.Size := 12;
            end;
        end;
        moveto(qsx, 75);
        lineto(qsx, 120 + 155 + 106 * m_height);

    end;           //以上画左边表列


    for x := 0 to 42 do   //写2，6，8，10等坐标数
    begin
        with image do
        begin
            if x mod 6 = 0 then
            begin
                canvas.pen.width := 1;
                canvas.Pen.Color := $001607D1;
                Canvas.MoveTo(qsx + X * m_width, 75);
                canvas.LineTo(qsx + x * m_width, 108 * m_height + 155 + 140+30);
            end
            else
            begin
                canvas.pen.width := 1;
                canvas.Pen.Color := clblack;
                Canvas.MoveTo(qsx + X * m_width, 135);
                canvas.LineTo(qsx + x * m_width, 106 * m_height + 155);
            end;
            canvas.Font.Size := 7;
            if (i < 24) then
                s := ' ' + inttostr(i)
            else
                s := '2';
            if x < 42 then
                canvas.TextOut(qsx + x * m_width + 3, 140, s);
            i := i + 4;
            if i > 24 then i := 2
        end
    end;
    canvas.Font.Size := 9;
    for y := 105 downto 0 do
    begin
      if y mod 2=0 then
      begin
        with image do
        begin
            Canvas.MoveTo(qsx, y * m_height + 155);
           if y  = 50 then                  //每隔5个画一红色横线
            begin
                canvas.pen.width := 1;
                canvas.Pen.Color := $001607D1;;
            end
            else
           if y  = 34 then                  //每隔5个画一红色横线
            begin
                canvas.pen.width := 2;
                canvas.Pen.Color := $001607D1;;
            end
            else
            begin
                canvas.pen.width := 1;
                canvas.Pen.Color := clblack;
            end;
            canvas.LineTo(42 * m_width + qsx, y * m_height + 155);
        end
      end;
    end;
    for y := 105 downto 1 do
    begin
        if y mod 5 = 0 then
        begin
            if 40 + (105 - y + 1) * 2 <= 160 then
                image.canvas.textout(40, (y - 1) * m_height + 130, inttostr(40 + (105 - y) * 2));   //画脉搏
            if 15 + (105 - y + 1) * 1 <= 60 then
                image.canvas.textout(70, (y - 1) * m_height + 130, inttostr(15 + (105 - y) * 1));  //画呼吸
            if (y <= 80) and (y mod 10 = 0) then
                if ((80 - y) div 10 + 35 >= 35) and ((80 - y) div 10 + 35 <= 42) then
                    image.canvas.textout(100, (y - 1) * m_height + 130, inttostr((80 - y) div 10 + 35));  //画体温
            if pub_sfhtt then
            if ((105 - y+1) <= 10) then
                image.canvas.textout(130, (y+3) * m_height+130 , inttostr( (105-y)*2));  //画疼痛

        end
    end;
    image.Canvas.Brush.Style:=bsclear;
    image.canvas.brush.Color:=clwhite;
    image.Canvas.Font.Size := 11;
    image.canvas.textout(40, 300, '脉');
    image.canvas.textout(40, 340, '搏');
    image.canvas.textout(70, 370, '呼');
    image.canvas.textout(70, 400, '吸');
    image.Canvas.Font.Size := 9;
    image.canvas.textout(93, 190, '体摄');
    image.canvas.textout(93, 210, '温氏');
    if pub_sfhtt then
    image.canvas.textout(123, 210, '疼痛');



end;

procedure Tfrm_twb2.ToolButton2Click(Sender: TObject);
begin    if (ad_tw.Active) and (ad_cg.Active) then
    begin
        if (ad_tw.RecordCount > 0) or (ad_cg.RecordCount>0) then
        begin
            drawxy(screen.Width, screen.Height);
            image.Width := 941;
            image.height := 661;
            ToolButton12.Click;
        end;
    end;
end;

procedure Tfrm_twb2.ToolButton3Click(Sender: TObject);
begin
    if (ad_tw.Active) and (ad_cg.Active) then
    begin
        if (ad_tw.RecordCount > 0) or (ad_cg.RecordCount>0) then
        begin
            drawxy(941, 661);
            image.Width := 941;
            image.height := 661;
            ToolButton12.Click;
        end;
    end;
end;

procedure Tfrm_twb2.ToolButton1Click(Sender: TObject);
begin
    if (ad_tw.Active) and (ad_cg.Active) then
    begin
        if (ad_tw.RecordCount > 0) or (ad_cg.RecordCount>0) then
        begin
            drawxy(frm_twb2.tabsheet2.Width, frm_twb2.tabsheet2.Height);
            image.Width := 941;
            image.height := 661;
            ToolButton12.Click;
        end;
    end;
end;

procedure Tfrm_twb2.ToolButton12Click(Sender: TObject);

begin
    if (ad_tw.Active) and (ad_cg.Active) then
    begin
        if (ad_tw.RecordCount > 0) or (ad_cg.RecordCount>0) then
        begin
         ksrq:=minrq;
         nextrq := minrq + 6;
         drawline('体温', 'tw', 40, 200, m_height * 10, 32, clblue);
        if pub_sfhtt then
         drawline('疼痛', 'tt', 40, 170, m_height ,-1, clblack);
        if sp_cx_zybrjbqk.fieldbyname('brnl').asfloat>=6 then
        begin
         drawline('脉搏', 'mb', 40, 230, m_height / 2, 30, clred);
         drawline('呼吸', 'hx', 40, 260, m_height, 10, clnavy);
        end;
//         drawline('心率', 'xl', 40, 230, m_height / 2, 30, cllime);
         pageno:=1;
         drawcgjl;
        end;

    end;
end;

procedure Tfrm_twb2.b_firstClick(Sender: TObject);
begin
    if valuechange then
        if application.messagebox(pchar(lrrq.text + '的值已经改变，是否放弃改变？'), '提示', mb_yesno + mb_iconquestion) = idno then
            b_save.click;
    ad_tw.first;
    ad_cgjl.Locate('jlrq',strtodatetime(formatdatetime('yyyy-mm-dd',ad_tw.FieldByName('jlrq').asdatetime)),[]);
    valuechange := false;
    display_hljl_null;
    display_hljl
end;

procedure Tfrm_twb2.b_priorClick(Sender: TObject);
begin
    if valuechange then
        if application.messagebox(pchar(lrrq.text + '的值已经改变，是否放弃改变？'), '提示', mb_yesno + mb_iconquestion) = idno then
            b_save.click;
    da1 := da1 - 1;
    if not ad_tw.bof then
    ad_tw.Prior;
    ad_cgjl.Locate('jlrq',strtodatetime(formatdatetime('yyyy-mm-dd',da1)),[]);
    display_hljl_null;
    valuechange := false;
    display_hljl
end;

procedure Tfrm_twb2.b_nextClick(Sender: TObject);
begin
    if valuechange then
        if application.messagebox(pchar(lrrq.text + '的值已经改变，是否放弃改变？'), '提示', mb_yesno + mb_iconquestion) = idno then
            b_save.click;
    if Not ad_tw.eof then
     ad_tw.next;
    ad_cgjl.Locate('jlrq',strtodatetime(formatdatetime('yyyy-mm-dd',ad_tw.FieldByName('jlrq').asdatetime)),[]);
    valuechange := false;
    display_hljl_null;
    display_hljl
end;

procedure Tfrm_twb2.b_lastClick(Sender: TObject);
begin
    if valuechange then
        if application.messagebox(pchar(lrrq.text + '的值已经改变，是否放弃改变？'), '提示', mb_yesno + mb_iconquestion) = idno then
            b_save.click;
    ad_tw.Last;
    ad_cgjl.Locate('jlrq',strtodatetime(formatdatetime('yyyy-mm-dd',ad_tw.FieldByName('jlrq').asdatetime)),[]);
    valuechange := false;
    display_hljl_null;
    display_hljl
end;

procedure Tfrm_twb2.b_addClick(Sender: TObject);
begin
{    if valuechange then
        if application.messagebox(pchar(dateTostr(lrrq.Date) + '的值已经改变，是否放弃改变？'), '提示', mb_yesno + mb_iconquestion) = idno then
            b_save.click;
    valuechange := false;
    if not checkzero then
    begin
        if formatdatetime('yyyymmdd', da1) < formatdatetime('yyyymmdd', frm_func.curr_date) then
        begin
            da1 := maxrq;
            da1 := da1 + 1;
            maxrq := da1;
            display_hljl_null;
            mb0.SetFocus;
        end
        else
            application.MessageBox(pchar(formatdatetime('yy"年"mm"月"dd"日"', da1) + '已是最后一天，不能增加！'), '提示', mb_ok + mb_iconwarning);
    end
    else
        application.MessageBox(pchar(formatdatetime('yy"年"mm"月"dd"日"', da1) + '输入未完成，不能增加！'), '提示', mb_ok + mb_iconwarning);    }

end;

procedure Tfrm_twb2.b_deleteClick(Sender: TObject);
begin
    if formatdatetime('yyyymmdd', da1) = formatdatetime('yyyymmdd', maxrq) then
    begin
        if application.messagebox(pchar('是否删除'+formatdatetime('yyyy-mm-dd',da1)+'的数据？'), '提示', mb_yesno + mb_iconquestion) = idyes then
        begin
            ad_dele.CommandText := 'delete zybl_rcjl where zyh=' + #39 + zy_zyh + #39 +
                ' and convert(char,jlrq,112)=' + #39 + formatdatetime('yyyymmdd', da1) + #39;
            ad_dele.Execute;
            da1 := da1 - 1;
            maxrq := maxrq - 1;
            ad_tb.close;
            ad_tb.parameters.ParamByName('zyh').value := zy_zyh;
            Frm_func.open_dataset(ad_tb);
        end
    end
    else
    begin
        application.MessageBox('只能删除最后一天的数据！', '提示', mb_ok + mb_iconwarning);
    end

end;
procedure tfrm_twb2.hljldrclbc;
var
i:Integer;
a,b:string;
sfbchljld:Boolean;   //是否保存护理记录单
sfbccrl:Boolean;     //是否保存出入量
begin
       sfkxg:=True;
       //判断是否保存护理记录单
    if qry_hljld_xmdz.RecordCount>0 then
    begin
       for I := 201 to qry_hljld_xmdz.RecordCount+200  do
        begin
           if D[I].Text='' then
             begin
             sfbchljld:=False;
             end
             else
             begin
             sfbchljld:=True;
             Break;
             end;
        end;
        if (htw.Text<>'') or (hmb.Text<>'') or (hxl.Text<>'') or (hhx.Text<>'') or (hxy.Text<>'') or (httpf.Text<>'') or (Memo3.Text<>'') then
        sfbchljld:=True;

        if sfbchljld=false then
        begin
               for I := 201 to qry_hljld_xmdz.RecordCount+200  do
        begin
           if H[I].Text='' then
             begin
             sfbchljld:=False;
             end
             else
             begin
             sfbchljld:=True;
             Break;
             end;
        end;
        end;
    end;
        //判断是否保存出入量
    if qry_rclsc.RecordCount>0 then
     begin
        for I := 321 to qry_rclsc.RecordCount+320  do
        begin
           if N[I].Text='' then
             begin
             sfbccrl:=False;
             end
             else
             begin
             sfbccrl:=True;
             Break;
             end;
        end;
        if sfbccrl=false then
        begin
                  for I := 321 to qry_rclsc.RecordCount+320  do
        begin
           if o[I].Text='' then
             begin
             sfbccrl:=False;
             end
             else
             begin
             sfbccrl:=True;
             Break;
             end;
        end;
        end;
     end;
     if bgdyl.Text<>'' then
         sfbccrl:=True;


//护理记录单保存
     if sfbchljld=true then
   begin
   if Trim(Memo3.text)<>'' then
      begin
   qry_hljldcc.close;
   qry_hljldcc.SQL.Clear;
   qry_hljldcc.sql.Add('select * from zybl_hljld where zyh=:zyh and jlrq<>:jlrq order by jlrq');
   qry_hljldcc.Parameters.ParamByName('jlrq').value:=strtodatetime(formatdatetime('yyyy-mm-dd ', lrrq.date) + formatdatetime('hh:mm:ss',sd.time));
   qry_hljldcc.Parameters.ParamByName('zyh').Value:=zy_zyh;
   qry_hljldcc.Open;
   qry_hljldcc.first;
          while not qry_hljldcc.eof do
    begin
      if qry_hljldcc.FieldByName('bqgc').AsString=Trim(memo3.text) then
      begin
          Application.MessageBox(pchar('当前护理措施和'+datetimetostr(qry_hljldcc.FieldByName('jlrq').AsDatetime)+'完全一致,请注意检查'),'提示',MB_OK) ;
      end;
        qry_hljldcc.Next;

    end;
      end;
   ad_hljld.close;
   ad_hljld.CommandText:='select * from zybl_hljld where zyh=:zyh order by jlrq';
   ad_hljld.Parameters.ParamByName('zyh').Value:=zy_zyh;
   Frm_func.open_dataset(ad_hljld);
if ad_hljld.Locate('jlrq', strtodatetime(formatdatetime('yyyy-mm-dd ', lrrq.date) + formatdatetime('hh:mm:ss',sd.time)), [loCaseInsensitive]) then
begin
             if sfkxg then
            begin
           ad_hljld.Edit;


    for i := 1 to frm_twb2.ScrollBox3.ControlCount-1 do
      begin
      if (frm_twb2.ScrollBox3.controls[i] is tedit) then
      begin
       a:=(frm_twb2.ScrollBox3.Controls[i] as tedit).name;
       a:=Copy(a,2,10);
       b:=(frm_twb2.ScrollBox3.Controls[i] as tedit).text;
      if b<>'' then
        begin
       ad_hljld[a]:=b;
        end;
      end;
         if (frm_twb2.ScrollBox3.controls[i] is TComboBox) then
      begin
       a:=(frm_twb2.ScrollBox3.Controls[i] as TComboBox).name;
       a:=Copy(a,2,10);
       b:=(frm_twb2.ScrollBox3.Controls[i] as TComboBox).text;
       ad_hljld[a]:=b;
      end;

      end;
 ad_hljld['bqgc']:=Trim(Memo3.Lines.text);
            end;

         end
         else
        begin
           ad_hljld.Insert;
 ad_hljld['tmh']:=sp_cx_zybrjbqk.FieldByName('tmh').AsString;
 ad_hljld['brxm']:=Trim(brxm.text);
 ad_hljld['zyh']:=zy_zyh;
 ad_hljld['sd']:=formatdatetime('hh:mm:ss',sd.time);
 ad_hljld['czy']:=pub_czyxm;
 ad_hljld['czydm']:=pub_czydm;
 ad_hljld['lrrq']:=Frm_func.curr_date;
 ad_hljld['jlrq']:=strtodatetime(formatdatetime('yyyy-mm-dd ', lrrq.date) + formatdatetime('hh:mm:ss',sd.time));

    for i := 1 to frm_twb2.ScrollBox3.ControlCount-1 do
      begin
      if (frm_twb2.ScrollBox3.controls[i] is tedit) then
      begin
       a:=(frm_twb2.ScrollBox3.Controls[i] as tedit).name;
       a:=Copy(a,2,10);
       b:=(frm_twb2.ScrollBox3.Controls[i] as tedit).text;
       if b<>'' then
        begin
       ad_hljld[a]:=b;
        end;
      end;
         if (frm_twb2.ScrollBox3.controls[i] is TComboBox) then
      begin
       a:=(frm_twb2.ScrollBox3.Controls[i] as TComboBox).name;
       a:=Copy(a,2,10);
       b:=(frm_twb2.ScrollBox3.Controls[i] as TComboBox).text;
       if b<>'' then
        begin
       ad_hljld[a]:=b;
        end;
      end;

      end;
 ad_hljld['bqgc']:=Trim(Memo3.Lines.text);
     end;

 Frm_func.post_dataset(ad_hljld);
 ad_hljld.close;

    qry_hljldnr.Close;
    qry_hljldnr.sql.clear;
    qry_hljldnr.sql.Add('select CONVERT(varchar(100), jlrq, 20) jlrq1,* from zybl_hljld where zyh=:zyh order by jlrq');
    qry_hljldnr.Parameters.ParamByName('zyh').Value:=zy_zyh;
    Frm_func.open_dataset(qry_hljldnr);
    qry_hljldnr.Locate('jlrq',strtodatetime(formatdatetime('yyyy-mm-dd ', lrrq.date) + formatdatetime('hh:mm:ss',sd.time)), [loCaseInsensitive]);
   end;

 //入出量保存
      if sfbccrl=true then
   begin

             ad_rcl.close;
             ad_rcl.Parameters.ParamByName('zyh').Value:=zy_zyh;
             Frm_func.open_dataset(ad_rcl);
   if ad_rcl.Locate('jlrq', strtodatetime(formatdatetime('yyyy-mm-dd ', lrrq.date) + formatdatetime('hh:mm:ss',sd.time)), [loCaseInsensitive]) then
    begin
       if sfkxg then
         begin
           ad_rcl.Edit;
       //    ad_rcl['jlrq']:=strtodatetime(formatdatetime('yyyy-mm-dd ', da1) + formatdatetime('hh:mm',sd.time) + ':00');
       //   ad_rcl['sd']:=formatdatetime('hh:mm',sd.time);
       ad_rcl['lrrq']:=Frm_func.curr_date;
       if syfzbh<>'' then
           ad_rcl['syfzbh']:=syfzbh;
       //ad_rcl['czy']:=pub_czyxm;
         for i := 1 to frm_twb2.ScrollBox2.ControlCount-1 do
                begin
                  if (frm_twb2.ScrollBox2.controls[i] is tedit) then
                   begin
                    a:=(frm_twb2.ScrollBox2.Controls[i] as tedit).name;
                    a:=Copy(a,2,10);
                    b:=(frm_twb2.ScrollBox2.Controls[i] as tedit).text;
                    if b<>'' then
                     begin
                    ad_rcl[a]:=b;
                     end;
                   end;
                  if (frm_twb2.ScrollBox2.controls[i] is TComboBox) then
                   begin
                    a:=(frm_twb2.ScrollBox2.Controls[i] as TComboBox).name;
                    a:=Copy(a,2,10);
                    b:=(frm_twb2.ScrollBox2.Controls[i] as TComboBox).text;
                    if b<>'' then
                     begin
                    ad_rcl[a]:=b;
                     end;
                   end;

                 end;
         qry_gdylsc.close;
         qry_gdylsc.SQL.Clear;
         qry_gdylsc.SQL.Add('delete from zybl_hljld_gdyl where jlrq=:jlrq and zyh=:zyh');
         qry_gdylsc.Parameters.ParamByName('zyh').Value:=zy_zyh;
         qry_gdylsc.Parameters.ParamByName('jlrq').Value:=strtodatetime(formatdatetime('yyyy-mm-dd ', lrrq.date) + formatdatetime('hh:mm:ss',sd.time));
         Frm_func.exec_dataset_qry(qry_gdylsc);
         gdylbc;
            end;
    end
            else
   begin
           ad_rcl.append;
           ad_rcl['tmh']:=sp_cx_zybrjbqk.FieldByName('tmh').AsString;
           ad_rcl['brxm']:=Trim(brxm.text);
           ad_rcl['zyh']:=zy_zyh;
           ad_rcl['sd']:=formatdatetime('hh:mm:ss',sd.time);
           ad_rcl['czy']:=pub_czyxm;
           ad_rcl['czydm']:=pub_czydm;
           ad_rcl['lrrq']:=Frm_func.curr_date;
           ad_rcl['zjbz']:=0;
           ad_rcl['ksdm']:=pub_ksdm;
           ad_rcl['syfzbh']:=syfzbh;
           ad_rcl['jlrq']:=strtodatetime(formatdatetime('yyyy-mm-dd ', lrrq.date) + formatdatetime('hh:mm:ss',sd.time));
               for i := 1 to frm_twb2.ScrollBox2.ControlCount-1 do
                begin
                  if (frm_twb2.ScrollBox2.controls[i] is tedit) then
                   begin
                    a:=(frm_twb2.ScrollBox2.Controls[i] as tedit).name;
                    a:=Copy(a,2,10);
                    b:=(frm_twb2.ScrollBox2.Controls[i] as tedit).text;
                    if b<>'' then
                     begin
                    ad_rcl[a]:=b;
                     end;
                   end;
                  if (frm_twb2.ScrollBox2.controls[i] is TComboBox) then
                   begin
                    a:=(frm_twb2.ScrollBox2.Controls[i] as TComboBox).name;
                    a:=Copy(a,2,10);
                    b:=(frm_twb2.ScrollBox2.Controls[i] as TComboBox).text;
                    if b<>'' then
                     begin
                    ad_rcl[a]:=b;
                     end;
                   end;

                 end;
           gdylbc;

   end;
  Frm_func.post_dataset(ad_rcl) ;
  ad_rcl.close;
  rclxgrq:=strtodatetime(formatdatetime('yyyy-mm-dd ', da1) + formatdatetime('hh:mm:ss',sd.time));

  xgrclzj;
   end;
end;

procedure Tfrm_twb2.xgrclzj;
var
i:integer;
sj:string;

begin
sp_zjcx.Close;
sp_zjcx.Parameters.ParamByName('@zyh').Value:=zy_zyh;
sp_zjcx.Parameters.ParamByName('@jlrq').Value:=rclxgrq;
sp_zjcx.Open;
     if sp_zjcx.RecordCount>0 then
     begin
       sp_zjcx.First;
      for I := 0 to sp_zjcx.RecordCount - 1 do
          begin
    qry_cxzj.Close;
    qry_cxzj.SQL.Clear;
    qry_cxzj.SQL.Add('update zybl_hljld_rcl set zjbz=0 where zyh=:zyh and zjbz=2 and jlrq>:ksrq and jlrq<=:jsrq ');
    qry_cxzj.Parameters.ParamByName('zyh').Value:=zy_zyh;
    qry_cxzj.Parameters.ParamByName('ksrq').Value:=sp_zjcx.FieldByName('ksrq').AsDateTime;
    qry_cxzj.Parameters.ParamByName('jsrq').Value:=sp_zjcx.FieldByName('jsrq').AsDateTime;
    qry_cxzj.ExecSQL;

sj:=Trim(sp_zjcx.FieldByName('xm').AsString);
sj:=Copy(sj,1,Length(sj)-4);
sj:=StringReplace (sj, '小时', 'h', [rfReplaceAll]);
sj:=StringReplace (sj, '分钟', 'min', [rfReplaceAll]);
sj:=StringReplace (sj, '分', 'min', [rfReplaceAll]);
sj:=StringReplace (sj, '秒', 's', [rfReplaceAll]);

  qry_sczj.close;
  qry_sczj.SQL.Clear;
  qry_sczj.sql.Add('delete from zybl_hljld_rcl where id=:id');
  qry_sczj.Parameters.ParamByName('id').Value:=sp_zjcx.FieldByName('id').AsInteger;
  qry_sczj.ExecSQL;

  sp_rclzj.close;
  sp_rclzj.Parameters.ParamByName('@zyh').Value:=zy_zyh;
  sp_rclzj.Parameters.ParamByName('@ksrq').Value:=sp_zjcx.FieldByName('ksrq').AsDateTime;
  sp_rclzj.Parameters.ParamByName('@jsrq').Value:=sp_zjcx.FieldByName('jsrq').AsDateTime;
  sp_rclzj.Parameters.ParamByName('@lx').Value:=sj;
  sp_rclzj.Parameters.ParamByName('@zjy').Value:=sp_zjcx.FieldByName('xm').AsString;
  sp_rclzj.Parameters.ParamByName('@czyxm').Value:='';
  Frm_func.exec_datasetproc(sp_rclzj);


           sp_zjcx.Next;
          end;
     end
     else
     begin
       if  ((formatdatetime('hh:mm:ss',Frm_func.curr_date)<='07:30:00') and (rclxgrq<=strtodatetime(formatdatetime('yyyy-mm-dd ', Frm_func.curr_date-1) +'07:00:00')))
       or  ((formatdatetime('hh:mm:ss',Frm_func.curr_date)>'07:30:00') and (rclxgrq<=strtodatetime(formatdatetime('yyyy-mm-dd ', Frm_func.curr_date) +'07:00:00')))
        then
      begin
         if ( formatdatetime('hh:mm:ss',rclxgrq)>='00:00:00') and ( formatdatetime('hh:mm:ss',rclxgrq)<='07:00:00')  then
           begin
  sp_rclzj.close;
  sp_rclzj.Parameters.ParamByName('@zyh').Value:=zy_zyh;
  sp_rclzj.Parameters.ParamByName('@ksrq').Value:=strtodatetime(formatdatetime('yyyy-mm-dd ', rclxgrq-1) +'07:00:00');
  sp_rclzj.Parameters.ParamByName('@jsrq').Value:=strtodatetime(formatdatetime('yyyy-mm-dd ', rclxgrq) +'07:00:00');
  sp_rclzj.Parameters.ParamByName('@lx').Value:='24h';
  sp_rclzj.Parameters.ParamByName('@zjy').Value:='24小时总结';
  sp_rclzj.Parameters.ParamByName('@czyxm').Value:='';
  Frm_func.exec_datasetproc(sp_rclzj);
           end
           else
           begin
  sp_rclzj.close;
  sp_rclzj.Parameters.ParamByName('@zyh').Value:=zy_zyh;
  sp_rclzj.Parameters.ParamByName('@ksrq').Value:=strtodatetime(formatdatetime('yyyy-mm-dd ', rclxgrq) +'07:00:00');
  sp_rclzj.Parameters.ParamByName('@jsrq').Value:=strtodatetime(formatdatetime('yyyy-mm-dd ', rclxgrq+1) +'07:00:00');
  sp_rclzj.Parameters.ParamByName('@lx').Value:='24h';
  sp_rclzj.Parameters.ParamByName('@zjy').Value:='24小时总结';
  sp_rclzj.Parameters.ParamByName('@czyxm').Value:='';
  Frm_func.exec_datasetproc(sp_rclzj);
           end;

      end;
     end;

end;

procedure Tfrm_twb2.xgrclzj1;
var
i:integer;
sj:string;

begin
sp_zjcx.Close;
sp_zjcx.Parameters.ParamByName('@zyh').Value:=zy_zyh;
sp_zjcx.Parameters.ParamByName('@jlrq').Value:=rclxgrq;
sp_zjcx.Open;
     if sp_zjcx.RecordCount>0 then
     begin
       sp_zjcx.First;
      for I := 0 to sp_zjcx.RecordCount - 1 do
          begin
    qry_cxzj.Close;
    qry_cxzj.SQL.Clear;
    qry_cxzj.SQL.Add('update zybl_hljld_rcl set zjbz=0 where zyh=:zyh and zjbz=2 and jlrq>:ksrq and jlrq<=:jsrq ');
    qry_cxzj.Parameters.ParamByName('zyh').Value:=zy_zyh;
    qry_cxzj.Parameters.ParamByName('ksrq').Value:=sp_zjcx.FieldByName('ksrq').AsDateTime;
    qry_cxzj.Parameters.ParamByName('jsrq').Value:=sp_zjcx.FieldByName('jsrq').AsDateTime;
    qry_cxzj.ExecSQL;

sj:=Trim(sp_zjcx.FieldByName('xm').AsString);
sj:=Copy(sj,1,Length(sj)-4);
sj:=StringReplace (sj, '小时', 'h', [rfReplaceAll]);
sj:=StringReplace (sj, '分钟', 'min', [rfReplaceAll]);
sj:=StringReplace (sj, '分', 'min', [rfReplaceAll]);
sj:=StringReplace (sj, '秒', 's', [rfReplaceAll]);

  qry_sczj.close;
  qry_sczj.SQL.Clear;
  qry_sczj.sql.Add('delete from zybl_hljld_rcl where id=:id');
  qry_sczj.Parameters.ParamByName('id').Value:=sp_zjcx.FieldByName('id').AsInteger;
  qry_sczj.ExecSQL;

  sp_rclzj.close;
  sp_rclzj.Parameters.ParamByName('@zyh').Value:=zy_zyh;
  sp_rclzj.Parameters.ParamByName('@ksrq').Value:=sp_zjcx.FieldByName('ksrq').AsDateTime;
  sp_rclzj.Parameters.ParamByName('@jsrq').Value:=sp_zjcx.FieldByName('jsrq').AsDateTime;
  sp_rclzj.Parameters.ParamByName('@lx').Value:=sj;
  sp_rclzj.Parameters.ParamByName('@zjy').Value:=sp_zjcx.FieldByName('xm').AsString;
  sp_rclzj.Parameters.ParamByName('@czyxm').Value:='';
  Frm_func.exec_datasetproc(sp_rclzj);


           sp_zjcx.Next;
          end;
     end;

           qry_rcl.Close;
           qry_rcl.SQL.Clear;
           qry_rcl.SQL.Add('select CONVERT(varchar(100), jlrq, 20) jlrq1,* from zybl_hljld_rcl where zyh=:zyh order by jlrq');
           qry_rcl.Parameters.ParamByName('zyh').value:=zy_zyh;
           Frm_func.open_dataset(qry_rcl);
    ad_cgjl.Close;
    ad_cgjl.Parameters.ParamByName('zyh').value:=zy_zyh;
    Frm_func.open_dataset(ad_cgjl);
end;


procedure Tfrm_twb2.httpfExit(Sender: TObject);
begin
if httpf.Text<>'' then
  begin
if (StrToInt(tt0.text)>=4) and (StrToInt(tt0.text)<=6)  then
  Application.MessageBox('中度疼痛患者;每日筛查4次(10点、14点、18点、22点)','提示',MB_OK);
  if (StrToInt(tt0.text)>=1) and (StrToInt(tt0.text)<=3) then
  Application.MessageBox('轻度疼痛;每日常规疼痛筛查评估2次(10点、14点)','提示',MB_OK);
  if (StrToInt(tt0.text)>=7) and (StrToInt(tt0.text)<=10)  then
  Application.MessageBox('重度疼痛患者;立即报告医生进行处理和记录,并按要求复评和连续进行疼痛评估直至评分≤3分，再转为常规评估每日2次','提示',MB_OK);

  end;
end;

procedure Tfrm_twb2.htwExit(Sender: TObject);
var
i:Double;
begin
 htw.Font.color:=clWindowText;
if  TryStrTofloat(htw.Text,i)  then
 begin
if (htw.Text<>'') and (htw.Text<>'0') then
   begin
    if (strtofloat(htw.text) >= 39) or (strtofloat(htw.text) <= 35) then
    begin
       htw.Font.color:=clred;
    end
   end;
 end;
end;

procedure Tfrm_twb2.htwKeyPress(Sender: TObject; var Key: Char);
begin
 {   if sfkxg then
     begin
    if key = #13 then
    begin
         if (sender as Tedit).Name='hmb' then
          if (hxl.Text='0') or (hxl.text='') then
           hxl.text:=hmb.text;
     selectnext(activecontrol, true, true)
    end;
     end
     else
     begin
    key:=char(0);
   dm_data.qry_pub.Close;
   dm_data.qry_pub.SQL.Text:='select * from sys_czy where dm='+#39+qry_hljldnr.fieldbyname('czy').asstring+#39;
   Frm_func.open_dataset(dm_data.qry_pub);
   application.MessageBox(pchar('本次护理记录单记录由'+qry_hljldnr.fieldbyname('czy').asstring+'录入，只能由录入者本人修改！！'),'提示',mb_ok);
   dm_data.qry_pub.Close;
     end;  }

  if qry_hljldnr.Locate('jlrq', strtodatetime(formatdatetime('yyyy-mm-dd ', lrrq.date) + formatdatetime('hh:mm:ss',sd.time)), [loCaseInsensitive]) then
   begin
     if (qry_hljldnr.FieldByName('czy').AsString<>pub_czyxm) and (pub_czyzw<>'04') then
       begin
   key:=char(0);
   dm_data.qry_pub.Close;
   dm_data.qry_pub.SQL.Text:='select * from sys_czy where dm='+#39+qry_hljldnr.fieldbyname('czy').asstring+#39;
   Frm_func.open_dataset(dm_data.qry_pub);
   application.MessageBox(pchar('本次护理记录单记录由'+qry_hljldnr.fieldbyname('czy').asstring+'录入，只能由录入者本人修改！！'),'提示',mb_ok);
   dm_data.qry_pub.Close;
       end
       else
       begin
       if key = #13 then
         begin
         if (sender as Tedit).Name='hmb' then
          if (hxl.Text='0') or (hxl.text='') then
           hxl.text:=hmb.text;
         selectnext(activecontrol, true, true)
         end;
       end;
   end
   else
   begin
      if key = #13 then
         begin
         if (sender as Tedit).Name='hmb' then
          if (hxl.Text='0') or (hxl.text='') then
           hxl.text:=hmb.text;
           selectnext(activecontrol, true, true)
         end;
   end;
end;

procedure Tfrm_twb2.hmbExit(Sender: TObject);
var
i:Double;
begin
 hmb.Font.color:=clWindowText;
if  TryStrTofloat(hmb.Text,i)  then
 begin
if (hmb.Text<>'') and (hmb.Text<>'0') then
   begin
    if (strtofloat(hmb.text) >150) or (strtofloat(hmb.text) <50) then
    begin
       hmb.Font.color:=clred;
    end
   end;
 end;
end;

procedure Tfrm_twb2.hx0Exit(Sender: TObject);
begin
hx0.Font.color:=clWindowText;
if (hx0.Text<>'') and (hx0.Text<>'0') then
   begin
    if (strtofloat(hx0.text) >=30) or (strtofloat(hx0.text) <=8) then
    begin
       hx0.Font.color:=clred;
    end

   end;
   if ((hhx.Text='0') or (hhx.text=''))  and sfwz=True then
       hhx.text:=hx0.text;
end;

procedure Tfrm_twb2.hxlExit(Sender: TObject);
var
i:Double;
begin
 hxl.Font.color:=clWindowText;
if  TryStrTofloat(hxl.Text,i)  then
 begin
if (hxl.Text<>'') and (hxl.Text<>'0') then
   begin
    if (strtofloat(hxl.text) >150) or (strtofloat(hxl.text) <50) then
    begin
       hxl.Font.color:=clred;
    end
   end;
 end;
end;

procedure Tfrm_twb2.gdylbc;
var
gdyl:string;
gdxm:Array[0..10] of string;
gddw:Array[0..10] of string;
gdsl:Array[0..10] of string;
i,n,m:Integer;
begin
    if trim(bgdyl.text)<>'' then
    begin
    gdyl:=Trim(bgdyl.Text);
    gdyl:=StringReplace(gdyl, ' ', '', [rfReplaceAll]);
    m:=GetStrCounts(';',gdyl);

    for I := 0 to m-1 do
    begin
    n:=locatenum(gdyl);
    gdxm[i]:=leftstr(gdyl,n-1);
    gdyl:=Copy(gdyl,n,100);
    n:=locatechar(gdyl);
    gdsl[i]:=leftstr(gdyl,n-1);
    gdyl:=Copy(gdyl,n,100);
    n:=locatefh(gdyl);
    gddw[i]:=leftstr(gdyl,n-1);
    gdyl:=Copy(gdyl,n+1,100);

    ad_gdyl.close;
    ad_gdyl.Parameters.ParamByName('zyh').Value:=zy_zyh;
    Frm_func.open_dataset(ad_gdyl)  ;

    ad_gdyl.Insert;
    ad_gdyl['zyh']:=zy_zyh;
    ad_gdyl['jlrq']:=strtodatetime(formatdatetime('yyyy-mm-dd ', lrrq.date) + formatdatetime('hh:mm:ss',sd.time));;
    ad_gdyl['sd']:=formatdatetime('hh:mm:ss',sd.time);
    ad_gdyl['xm']:=gdxm[i];
    ad_gdyl['sl']:=gdsl[i];
    ad_gdyl['dw']:=gddw[i];
    ad_gdyl['lrrq']:=Frm_func.curr_date;
   Frm_func.post_dataset(ad_gdyl) ;
    end;
    n:=locatenum(gdyl);
    gdxm[m]:=leftstr(gdyl,n-1);
    gdyl:=Copy(gdyl,n,100);
    n:=locatechar(gdyl);
    gdsl[m]:=leftstr(gdyl,n-1);
    gdyl:=Copy(gdyl,n,100);
    n:=locatefh(gdyl);
    gddw[m]:=leftstr(gdyl,n);
    gdyl:=Copy(gdyl,n+1,100);

    ad_gdyl.close;
    ad_gdyl.Parameters.ParamByName('zyh').Value:=zy_zyh;
    Frm_func.open_dataset(ad_gdyl)  ;

    ad_gdyl.Insert;
    ad_gdyl['zyh']:=zy_zyh;
    ad_gdyl['jlrq']:=strtodatetime(formatdatetime('yyyy-mm-dd ', lrrq.date) + formatdatetime('hh:mm:ss',sd.time));;
    ad_gdyl['sd']:=formatdatetime('hh:mm:ss',sd.time);
    ad_gdyl['xm']:=gdxm[i];
    ad_gdyl['sl']:=gdsl[i];
    ad_gdyl['dw']:=gddw[i];
    ad_gdyl['lrrq']:=Frm_func.curr_date;
    Frm_func.post_dataset(ad_gdyl);


end;
end;


function locatenum(s: string): integer;
var i: integer;
  bz: boolean;
begin
  i := 1;
  bz := true;
  while (i < length(s)) and bz do
  begin
    if s[i] in ['0'..'9'] then
      bz := false
    else
      i := i + 1;
  end;
  result := i;
end;

function locatechar(s: string): integer;
var i: integer;
  bz: boolean;
begin
  i := 1;
  bz := true;
  while (i < length(s)) and bz do
  begin
    if not (s[i] in ['0'..'9','X']) then
      bz := false
    else
      i := i + 1;
  end;
  result := i;
end;
function locatefh(s: string): integer;
var i: integer;
  bz: boolean;
begin
  i := 1;
  bz := true;
  while (i < length(s)) and bz do
  begin
    if  s[i] =';' then
      bz := false
    else
      i := i + 1;
  end;
  result := i;
end;

function GetStrCounts(ASubStr, AStr: string): Integer;
var
  i: Integer;
begin
  Result := 0;
  i := 1;
  while PosEx(ASubStr, AStr, i) <> 0 do
  begin
    Inc(Result);
    i := PosEx(ASubStr, AStr, i) + 1;
  end;
end;

procedure Tfrm_twb2.rclzj;
begin

  if zcrq1.Text<>'1899-12-30' then
  begin
     qry_rclcx.Close;
     qry_rclcx.SQL.Clear;
     qry_rclcx.sql.Add('select * from zybl_hljld_rcl where zyh=:zyh and zjbz=1 and jlrq=:jlrq');
     qry_rclcx.Parameters.ParamByName('zyh').value:=zy_zyh;
     qry_rclcx.Parameters.ParamByName('jlrq').value:=zcrq1.date;
     qry_rclcx.Open;
     if qry_rclcx.recordcount=0 then
        begin
         sp_zj.Close;
         sp_zj.Parameters.ParamByName('@zyh').value:=zy_zyh;
         sp_zj.Parameters.ParamByName('@fssj').value:=zcrq1.Date;
         sp_zj.Parameters.ParamByName('@lx').Value:=4;
         sp_zj.Parameters.ParamByName('@czyxm').Value:=pub_czyxm;
         sp_zj.Parameters.ParamByName('@yzid').Value:=0;
         Frm_func.exec_datasetproc(sp_zj);
        end;
  end;
  if swsj1.Text<>'1899-12-30' then
  begin
     qry_rclcx.Close;
     qry_rclcx.SQL.Clear;
     qry_rclcx.sql.Add('select * from zybl_hljld_rcl where zyh=:zyh and zjbz=1 and jlrq=:jlrq');
     qry_rclcx.Parameters.ParamByName('zyh').value:=zy_zyh;
     qry_rclcx.Parameters.ParamByName('jlrq').value:=swsj1.date;
     qry_rclcx.Open;
     if qry_rclcx.recordcount=0 then
        begin
         sp_zj.Close;
         sp_zj.Parameters.ParamByName('@zyh').value:=zy_zyh;
         sp_zj.Parameters.ParamByName('@fssj').value:=swsj1.Date;
         sp_zj.Parameters.ParamByName('@lx').Value:=5;
         sp_zj.Parameters.ParamByName('@czyxm').Value:=pub_czyxm;
         sp_zj.Parameters.ParamByName('@yzid').Value:=0;
         Frm_func.exec_datasetproc(sp_zj);
        end;
  end;
  if cyrq1.Text<>'1899-12-30' then
  begin
     qry_rclcx.Close;
     qry_rclcx.SQL.Clear;
     qry_rclcx.sql.Add('select * from zybl_hljld_rcl where zyh=:zyh and zjbz=1 and jlrq=:jlrq');
     qry_rclcx.Parameters.ParamByName('zyh').value:=zy_zyh;
     qry_rclcx.Parameters.ParamByName('jlrq').value:=cyrq1.date;
     qry_rclcx.Open;
     if qry_rclcx.recordcount=0 then
        begin
       sp_zj.Close;
       sp_zj.Parameters.ParamByName('@zyh').value:=zy_zyh;
       sp_zj.Parameters.ParamByName('@fssj').value:=cyrq1.Date;
       sp_zj.Parameters.ParamByName('@lx').Value:=5;
       sp_zj.Parameters.ParamByName('@czyxm').Value:=pub_czyxm;
       sp_zj.Parameters.ParamByName('@yzid').Value:=0;
       Frm_func.exec_datasetproc(sp_zj);
        end;
  end;


end;


procedure Tfrm_twb2.b_saveClick(Sender: TObject);
var i: integer;
    change,zjbz: boolean;
//    sbookmark:Tbookmark;
    sd_ls:string;
    jlrq:tdatetime;
    s,s1:string;
begin
  if jxgcgjl then
  begin
        ad_cgjl.edit;
        ad_cgjl['zyh'] := zy_zyh;
       { ad_cgjl['xbl'] := xbl.Text;
        ad_cgjl['dbcs'] := dbcs.Text;
        ad_cgjl['syl'] := sryl.Text;
        ad_cgjl['yrl'] := yrl.Text; }
        ad_cgjl['xy'] := xy.Text;
        ad_cgjl['tz'] := tz.Text;
        ad_cgjl['pssm']:=pssm.Text;
       { if Trim(qt.text)<>'' then
         begin
        ad_cgjl['qt'] := qt.Text;
         end;       }
        ad_cgjl['zrks'] := zrks.Text;
        if (trim(zrks.Text)<>'')  then
        ad_cgjl['zcks'] :=zcks.text;
        ad_cgjl['ryts']:=strtodatetime(formatdatetime('yyyy-mm-dd',lrrq.date))-strtodatetime(formatdatetime('yyyy-mm-dd',minrq))+1 ;
        if sscs>0 then
         ad_cgjl['ssts']:=calcssts(strtodatetime(formatdatetime('yyyy-mm-dd',da1)));
        ad_cgjl['ryrq'] := ryrq1.date;
        ad_cgjl['cyrq'] := cyrq1.date;
        ad_cgjl['ssrq'] := ssrq1.date;
        ad_cgjl['zcrq'] := zcrq1.date;
        ad_cgjl['swsj'] := swsj1.date;
        ad_cgjl['fmsj'] := fmsj1.Date;
        ad_cgjl['czy']  := pub_czydm;
        if zjbz then
        begin
        ad_cgjl['brxm']:=trim(sp_cx_zybrjbqk.FieldByName('brxm').AsString);
        ad_cgjl['brxb']:=trim(sp_cx_zybrjbqk.FieldByName('brxb').AsString);
        ad_cgjl['brnl']:=trim(sp_cx_zybrjbqk.FieldByName('brnl').AsString);
        ad_cgjl['bch']:= trim(sp_cx_zybrjbqk.FieldByName('bch').AsString);
        ad_cgjl['brks']:=trim(sp_cx_zybrjbqk.FieldByName('ksmc').AsString);
        end;
       jxgcgjl:=false;
       change:=true;
   jlrq:=strtodatetime(formatdatetime('yyyy-mm-dd ', da1) + formatdatetime('hh:mm:ss',sd.time));
   sd_ls:=formatdatetime('hh:mm:ss',sd.time);
  end
  else
  begin
  if (ad_cgjl.IsEmpty) and (ryrq1.Date=0) then
  begin
    application.MessageBox('请确定准确的入院时间！！！','提示',mb_ok);
    ryrq1.setfocus;
  end
  else
  begin
   jlrq:=strtodatetime(formatdatetime('yyyy-mm-dd ', da1) + formatdatetime('hh:mm:ss',sd.time));
   sd_ls:=formatdatetime('hh:mm:ss',sd.time);
    if not checkerror then
    begin
//        sbookmark:=ad_tb.GetBookmark;
        change := false;

        if ad_tw.Locate('jlrq', strtodatetime(formatdatetime('yyyy-mm-dd ', da1) + formatdatetime('hh:mm:ss',sd.time)), [loCaseInsensitive]) then
         begin
           if sfkxg   then
            begin
           ad_tw.Edit;
         //  ad_tw['czy'] :=pub_czydm;
           if wljw.Checked then
           begin
            ad_tw['mb'] := '0';
            ad_tw['tw'] := tw0.text;
            ad_tw['hx'] :='0';
            ad_tw['xl'] :='0';
            ad_tw['tt'] :='0';
            ad_tw['sm'] :='物理降温';
            ad_tw['jcyy']:=wcyy.text;
            ad_tw['twfs'] :='';
          end
           else
           if wcyy.text<>'' then
           begin
            ad_tw['mb'] := '0';
            ad_tw['tw'] := '0';
            ad_tw['hx'] :='0';
            ad_tw['xl'] := '0';
            ad_tw['tt'] := '0';
            ad_tw['jcyy']:=wcyy.text;
            ad_tw['sm'] :='';
            ad_tw['twfs'] :='';
           end
           else
           begin
           ad_tw['mb'] := mb0.text;
           ad_tw['tw'] := tw0.text;
           ad_tw['hx'] := hx0.text;
           ad_tw['xl'] := xl0.text;
           ad_tw['tt'] := tt0.text;
           ad_tw['jcyy']:='';
           ad_tw['sm'] :='';
           ad_tw['twfs'] :=cwfs.text;
           if hxj.Checked then
           ad_tw['syhxj']:=true
           else
           ad_tw['syhxj']:=false;
           end;
          end
        end
        else
        if not ((not wljw.checked) and (wcyy.text='') and ((mb0.text='0') and (tw0.Text='0') and
         (hx0.Text='0') and (xl0.Text='0') and (tt0.Text='0'))) then
         begin
          begin
           ad_tw.Append;
           ad_tw['czy'] :=pub_czydm;
           ad_tw['jlrq'] := strtodatetime(formatdatetime('yyyy-mm-dd ', da1) + formatdatetime('hh:mm:ss',sd.time));
           ad_tw['jlrq_s'] :=formatdatetime('yyyymmdd', da1);
           ad_tw['sd'] := formatdatetime('hh:mm:ss',sd.time);
           ad_tw['zyh'] := zy_zyh;
           if wljw.Checked then
           begin
            ad_tw['mb'] := '0';
            ad_tw['tw'] := tw0.text;
            ad_tw['hx'] :='0';
            ad_tw['xl'] :='0';
            ad_tw['tt'] :='0';
            ad_tw['sm'] :='物理降温';
            ad_tw['jcyy']:=wcyy.text;
            ad_tw['twfs'] :='';
           end
           else
           if wcyy.text<>'' then
           begin
            ad_tw['mb'] := '0';
            ad_tw['tw'] := '0';
            ad_tw['hx'] :='0';
            ad_tw['xl'] := '0';
            ad_tw['tt'] :='0';
            ad_tw['jcyy']:=wcyy.text;
            ad_tw['sm'] :='';
            ad_tw['twfs'] :='';
           end
           else
           begin
           ad_tw['mb'] := mb0.text;
           ad_tw['tw'] := tw0.text;
           ad_tw['hx'] := hx0.text;
           ad_tw['xl'] := xl0.text;
           ad_tw['tt'] := tt0.text;
           ad_tw['jcyy']:='';
           ad_tw['sm'] :='';
           ad_tw['twfs'] :=cwfs.text;
           if hxj.Checked then
           ad_tw['syhxj']:=true
           else
           ad_tw['syhxj']:=false;
           end;
          end;

          end;
        if minrq=0 then
        begin
         minrq := ryrq1.date;
         nextrq := minrq + 6;
        end;
        if ad_cgjl.isempty then
        begin
        s:='insert into zybl_cgjl(jlrq_s,jlrq,zyh';
        s1:='values('+#39+formatdatetime('yyyymmdd', da1)+#39+','+#39+formatdatetime('yyyy-mm-dd ', da1)+#39+','+#39+zy_zyh+#39;

           s:=s+',xbl';
           s1:=s1+','+#39+#39;
           s:=s+',syl';
           s1:=s1+','+#39+#39;
           s:=s+',yrl';
           s1:=s1+','+#39+#39;
        if (xy.text<>'') then
         begin
           s:=s+',xy';
           s1:=s1+','+#39+xy.text+#39;
         end;
             if (pssm.text<>'') then
         begin
           s:=s+',pssm';
           s1:=s1+','+#39+pssm.text+#39;
         end;
        if (tz.text<>'') then
         begin
           s:=s+',tz';
           s1:=s1+','+#39+tz.text+#39;
         end
         else
         begin
          s:=s+',tz';
          s1:=s1+','+#39+#39;
         end;
        s:=s+',ryts';
        s1:=s1+','+floattostr(strtodatetime(formatdatetime('yyyy-mm-dd',lrrq.date))-strtodatetime(formatdatetime('yyyy-mm-dd',minrq))+1 );
       if sscs>0 then
       begin
         s:=s+',ssts';
         s1:=s1+','+#39+calcssts(strtodatetime(formatdatetime('yyyy-mm-dd',da1)))+#39
       end;
        if ryrq1.date<>0 then
         begin
           s:=s+',ryrq';
           s1:=s1+','+#39+formatdatetime('yyyy-mm-dd hh:mm:ss',ryrq1.Date)+#39;
         end;
        if ssrq1.date<>0 then
         begin
           s:=s+',ssrq';
           s1:=s1+','+#39+formatdatetime('yyyy-mm-dd hh:mm:ss',ssrq1.Date)+#39;
         end;
        if cyrq1.date<>0 then
         begin
           s:=s+',cyrq';
           s1:=s1+','+#39+formatdatetime('yyyy-mm-dd hh:mm:ss',cyrq1.Date)+#39;
         end;
        if swsj1.date<>0 then
         begin
           s:=s+',swsj';
           s1:=s1+','+#39+formatdatetime('yyyy-mm-dd hh:mm:ss',swsj1.Date)+#39;
         end;
        if fmsj1.date<>0 then
         begin
           s:=s+',fmsj';
           s1:=s1+','+#39+formatdatetime('yyyy-mm-dd hh:mm:ss',fmsj1.Date)+#39;
         end;
        if zcrq1.date<>0 then
         begin
           s:=s+',zcrq';
           s1:=s1+','+#39+formatdatetime('yyyy-mm-dd hh:mm:ss',zcrq1.Date)+#39;
         end;
        if (zrks.text<>'') then
         begin
           s:=s+',zrks';
           s1:=s1+','+#39+zrks.text+#39;
           s:=s+',zcks';
           s1:=s1+','+#39+zcks.Text+#39;
         end;
         //写病人基本信息
         s:=s+',brxm';
         s1:=s1+','+#39+trim(sp_cx_zybrjbqk.FieldByName('brxm').AsString)+#39;
         s:=s+',brxb';
         s1:=s1+','+#39+trim(sp_cx_zybrjbqk.FieldByName('brxb').AsString)+#39;
         s:=s+',brnl';
         s1:=s1+','+#39+trim(sp_cx_zybrjbqk.FieldByName('brnl').AsString)+#39;
         s:=s+',bch';
         s1:=s1+','+#39+trim(sp_cx_zybrjbqk.FieldByName('bch').AsString)+#39;
         s:=s+',brks';
         s1:=s1+','+#39+trim(sp_cx_zybrjbqk.FieldByName('ksmc').AsString)+#39;
       {  s:=s+',qt';
         s1:=s1+','+#39+bgdyl.Text+#39;  }
         s:=s+',czy';
         s1:=s1+','+#39+pub_czydm+#39;
         ad_save_cgjl.commandtext:=s+') '+s1+')';
         ad_save_cgjl.execute;
         tjbz:=false;
        end

        else
        begin
        zjbz:=false;
        if tjbz then
        begin
          ad_cgjl.Append;
          zjbz:=true;
        ad_cgjl['xbl'] := '';
        ad_cgjl['dbcs'] := '';
        ad_cgjl['syl'] := '';
        ad_cgjl['yrl'] := '';
        end
        else
        if ad_cgjl.Locate('jlrq', strtodatetime(formatdatetime('yyyy-mm-dd ', da1)), [loCaseInsensitive]) then
           ad_cgjl.Edit
        else
         begin
          ad_cgjl.Append;
          zjbz:=true;
        ad_cgjl['xbl'] := '';
        ad_cgjl['dbcs'] := '';
        ad_cgjl['syl'] := '';
        ad_cgjl['yrl'] := '';
         end;
         ad_cgjl['jlrq'] := strtodatetime(formatdatetime('yyyy-mm-dd ', da1));
        ad_cgjl['jlrq_s'] := formatdatetime('yyyymmdd', da1);
        ad_cgjl['zyh'] := zy_zyh;
       { ad_cgjl['xbl'] := xbl.Text;
        ad_cgjl['dbcs'] := dbcs.Text;
        ad_cgjl['syl'] := sryl.Text;
        ad_cgjl['yrl'] := yrl.Text; }
        ad_cgjl['xy'] := xy.Text;
        ad_cgjl['tz'] := tz.Text;
        ad_cgjl['pssm'] := pssm.Text;
       // ad_cgjl['qt'] := qt.Text;
        ad_cgjl['zrks'] := zrks.Text;
        if (trim(zrks.Text)<>'')  then
        ad_cgjl['zcks'] :=zcks.text;
        ad_cgjl['ryts']:=strtodatetime(formatdatetime('yyyy-mm-dd',lrrq.date))-strtodatetime(formatdatetime('yyyy-mm-dd',minrq))+1 ;
        if sscs>0 then
         ad_cgjl['ssts']:=calcssts(strtodatetime(formatdatetime('yyyy-mm-dd',da1)));
        ad_cgjl['ryrq'] := ryrq1.date;
        ad_cgjl['cyrq'] := cyrq1.date;
        ad_cgjl['ssrq'] := ssrq1.date;
        ad_cgjl['zcrq'] := zcrq1.date;
        ad_cgjl['swsj'] := swsj1.date;
        ad_cgjl['fmsj'] := fmsj1.Date;
        ad_cgjl['czy']  := pub_czydm;
        if zjbz then
        begin
        ad_cgjl['brxm']:=trim(sp_cx_zybrjbqk.FieldByName('brxm').AsString);
        ad_cgjl['brxb']:=trim(sp_cx_zybrjbqk.FieldByName('brxb').AsString);
        ad_cgjl['brnl']:=trim(sp_cx_zybrjbqk.FieldByName('brnl').AsString);
        ad_cgjl['bch']:= trim(sp_cx_zybrjbqk.FieldByName('bch').AsString);
        ad_cgjl['brks']:=trim(sp_cx_zybrjbqk.FieldByName('ksmc').AsString);
        end;
        tjbz:=false;
        end;
       end;
      end;     
  end;
        change := true;

        if change then
        begin
            valuechange := false;
            if ad_cgjl.state in [dsinsert,dsedit] then
            begin
            Frm_func.post_dataset(ad_cgjl)   ;
            Frm_func.update_dataset(ad_cgjl) ;
            end;
            if ad_tw.state in [dsinsert,dsedit] then
            begin
            Frm_func.post_dataset(ad_tw) ;
            Frm_func.update_dataset(ad_tw) ;
            end;
              initssrq;
              
           hljldrclbc;
           rclzj;
           qry_rcl.Close;
           qry_rcl.SQL.Clear;
           qry_rcl.SQL.Add('select CONVERT(varchar(100), jlrq, 20) jlrq1,* from zybl_hljld_rcl where zyh=:zyh order by jlrq');
           qry_rcl.Parameters.ParamByName('zyh').value:=zy_zyh;
           Frm_func.open_dataset(qry_rcl);
           qry_rcl.Locate('jlrq', strtodatetime(formatdatetime('yyyy-mm-dd ', lrrq.date) + formatdatetime('hh:mm:ss',sd.time)), [loCaseInsensitive]) ;


            ad_cg.Close;
            ad_cg.Parameters.ParamByName('zyh').Value := zy_zyh;
            ad_cg.Parameters.ParamByName('ksrq').Value := formatdatetime('yyyymmdd', minrq);
            if maxrq<da1 then
             maxrq:=da1;
            if maxrq=0 then
             ad_cg.Parameters.ParamByName('jsrq').Value := formatdatetime('yyyymmdd',minrq+6)
            else
             ad_cg.Parameters.ParamByName('jsrq').Value := formatdatetime('yyyymmdd',maxrq+1)    ;
           Frm_func.open_dataset(ad_cg);
            if maxrq<da1 then
             maxrq:=da1;
            ad_tb.close;
            ad_tb.parameters.ParamByName('zyh').value := zy_zyh;
            Frm_func.open_dataset(ad_tb) ;
            ad_tw.Locate('jlrq',jlrq,[]);
            ad_cgjl.Locate('jlrq_s',formatdatetime('yyyymmdd',ad_tw.FieldByName('jlrq').asdatetime),[]);
            ad_tw.next;
            ad_cgjl.Locate('jlrq',strtodatetime(formatdatetime('yyyy-mm-dd',ad_tw.FieldByName('jlrq').asdatetime)),[]);
            if ad_tw.eof then
             begin
              if strtoint(copy(sd_ls,1,2))+4>=24 then
               begin
                 jlrq:=jlrq+1 ;
                 sd.time:=strtodatetime(copy(pub_twbqssj,1,5));
                 display_hljl_null;
               end
              else
               begin
                if strtoint(copy(sd_ls,1,2))+4>10  then
                 sd.time:=strtodatetime(inttostr(strtoint(copy(sd_ls,1,2))+4))
                else
                 sd.time:=strtodatetime('0'+inttostr(strtoint(copy(sd_ls,1,2))+4));
                 display_hljl_null;
                end
               end
               else
               display_hljl;
        end;
      sd.setfocus;
//      pagecontrol2.ActivePageIndex:=0;
      tjbz:=false;
      jxgcgjl:=false;

      ad_cgjl.Close;
      ad_cgjl.Parameters.ParamByName('zyh').value:=zy_zyh;
      Frm_func.open_dataset(ad_cgjl)   ;
      ad_cgjl.Locate('jlrq', strtodatetime(formatdatetime('yyyy-mm-dd ', da1)), [loCaseInsensitive]);



end;





procedure Tfrm_twb2.b_saveMouseEnter(Sender: TObject);
begin
Button11.Setfocus;
end;

procedure Tfrm_twb2.b_cancelClick(Sender: TObject);
begin
    if valuechange then
        if application.messagebox(pchar(dateTimeToStr(lrrq.date) + '的值已经改变，是否放弃改变？'), '提示', mb_yesno + mb_iconquestion) = idno then
            b_save.click;
    panel1.enabled := true;
    sp_cx_zybrjbqk.Close;
    ad_tb.close;
    qry_hljldnr.close;
    qry_rcl.close;
    brxm.setfocus;

end;

function Tfrm_twb2.checkerror: boolean;
begin
    result := true;
    if not strtore(mb0, '０时脉搏') then
        mb0.setfocus
    else
     if not strtore(tw0, '０时体温') then
       tw0.setfocus
     else
     if not strtore(hx0, '０时呼吸') then
      hx0.SetFocus
     else
    if (formatdatetime('yyyymmdd',lrrq.Date)<> formatdatetime('yyyymmdd',ssrq1.Date)) and (ssrq1.Date<>0) then
     begin
       application.MessageBox('手术日期输入错误，请确认正确后输入！！','提示',mb_ok);
       ssrq1.date:=0;
       ssrq1.SetFocus;
     end
     else
    if (formatdatetime('yyyymmdd',lrrq.Date)<> formatdatetime('yyyymmdd',ryrq1.Date)) and (ryrq1.date<>0) then
     begin
       application.MessageBox('入院日期错误，请确认正确后输入！！','提示',mb_ok);
       ryrq1.date:=0;
       ryrq1.SetFocus;
     end
{     else
    if (formatdatetime('yyyymmdd',lrrq.Date)<> formatdatetime('yyyymmdd',cyrq1.Date)) and (cyrq1.Date<>0) then
     begin
       application.MessageBox('出院日期输入错误，请确认正确后输入！！','提示',mb_ok);
       cyrq1.Date:=0;
       cyrq1.SetFocus
     end
     else
    if (formatdatetime('yyyymmdd',lrrq.Date)<> formatdatetime('yyyymmdd',swsj1.Date)) and (swsj1.Date<>0) then
     begin
       application.MessageBox('死亡日期输入错误，请确认正确后输入！！','提示',mb_ok);
       swsj1.Date:=0;
       swsj1.SetFocus;
     end }
    else
      result := false;
end;

procedure Tfrm_twb2.sp_cx_zybrjbqkAfterOpen(DataSet: TDataSet);
begin
pub_sfhtt:=sp_cx_zybrjbqk.FieldByName('sfhtt').asboolean;
end;

procedure Tfrm_twb2.ssrq1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
    selectnext(activecontrol, true, true)

end;

function Tfrm_twb2.strTOre(xx: Tedit; ss: string): boolean;
var i: real;
begin
    try
        i := strtofloat(trim(xx.text));
        result := true;
    except
        application.MessageBox(pchar(ss + '输入错误！'), '提示', mb_ok + mb_iconwarning);
        result := false;
    end
end;

function Tfrm_twb2.checkzero: boolean;
begin
    result := false;
   if not ad_tw.Eof then
    begin
        if ad_tw.fieldbyname('mb').asfloat = 0 then
          result := true
        else
            if ad_tw.fieldbyname('tw').asfloat = 0 then
                result := true
            else
                if ad_tw.fieldbyname('hx').asfloat = 0 then
                     result := true
      end;
end;


procedure Tfrm_twb2.crxxKeyPress(Sender: TObject; var Key: Char);
var
sss:String;
begin
if key=#13 then
 begin
if trim(bgdyl.Text)='' then
begin
bgdyl.text:=crxx.Text;
end
else
begin
bgdyl.text:=bgdyl.Text+';'+crxx.Text;
end;
sss:=Trim(bgdyl.text);
bgdyl.setfocus;
bgdyl.SelStart:=length(sss)-2;
//bgdyl.SelLength:=2;
end;
end;


procedure Tfrm_twb2.guanluonclick(sender: TObject);
begin
  djcs:=djcs+1;
  if guanlutext='' then
  begin
  if djcs=1 then
  begin
    guanlutext:=(sender as TComboBox).Text;
  end;
  if djcs>=2 then
  begin
    guanlutext:=guanlutext+';'+(sender as TComboBox).Text;
  end;
  end
  else
  begin
    guanlutext:=guanlutext+';'+(sender as TComboBox).Text;
  end;
end;

procedure Tfrm_twb2.guanluonenter(sender: TObject);
begin
  guanlutext:=(sender as TComboBox).text;
end;

procedure Tfrm_twb2.guanluonexit(sender: TObject);
begin
   (sender as tcombobox).text:=guanlutext;
   guanlutext:='';
   djcs:=0;
end;

procedure Tfrm_twb2.cxSplitter2AfterClose(Sender: TObject);
begin
ScrollBox3.Height:=0;

DBGridEh4.RowHeight:=50;
end;

procedure Tfrm_twb2.cxSplitter2AfterOpen(Sender: TObject);
begin
ScrollBox3.Height:=scrollbox3height;
ScrollBox2.Height:=scrollbox2height;
DBGridEh4.RowHeight:=20;
end;

procedure Tfrm_twb2.cyrq1Exit(Sender: TObject);
begin
{if cyrq1.Text<>'1899-12-30' then
begin
qry_checksj.close;
qry_checksj.sql.clear;
qry_checksj.sql.Add('select * from zybl_cgjl where zyh=:zyh1 and convert(varchar(10),cyrq,120)<>:cyrq2');
qry_checksj.Parameters.ParamByName('zyh1').Value:=zy_zyh;
qry_checksj.Parameters.ParamByName('cyrq2').Value:='1899-12-30';
qry_checksj.Open;
if qry_checksj.RecordCount>0 then
begin
   if FormatDateTime('yyyy-mm-dd',lrrq.Date)<>formatdatetime('yyyy-mm-dd',qry_checksj.FieldByName('cyrq').AsDateTime) then
   begin
     Application.MessageBox('该病人已经有出院时间！！', '提示', 0 + 16);
     cyrq1.Date:=0;
   end;
   
end;
end;  }

end;

procedure Tfrm_twb2.cyrq1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
begin
if trim(zrks.Text)<>'' then
 begin
   if trim(zcks.text)='' then
    zcks.Text:=sp_cx_zybrjbqk.fieldbyname('ksmc').asstring;
 end;
   selectnext(activecontrol, true, true)
end;

end;

procedure Tfrm_twb2.DBGridEh1CellClick(Column: TColumnEh);
var
i:Integer;
name1:string;
begin

 jxgcgjl:=false;
 display_hljl;
 if (ad_tw.FieldByName('czy').asstring=pub_czydm) or (ad_tw.FieldByName('czy').asstring='')  or (pub_czyzw='04')  then
 begin
  sfkxg:=true;
  DBGridEh1.ReadOnly:=False;
 end
 else
 begin
  sfkxg:=false;
  DBGridEh1.ReadOnly:=true;
 end;

  if qry_rcl.Active then
  begin
 if qry_rcl.Locate('jlrq',strtodatetime(formatdatetime('yyyy-mm-dd hh:mm:ss',ad_tw.FieldByName('jlrq').asdatetime)),[]) then
  begin
   qry_rclsc.first;
 for i := 321 to qry_rclsc.RecordCount + 320 do
 begin
     name1:=Copy(f[i].Name,2,10) ;
     n[i].text:=qry_rcl.FieldByName(name1).AsString;
     o[i].text:=qry_rcl.FieldByName(name1).AsString;
 end;
 bgdyl.text:=qry_rcl.FieldByName('gdyl').AsString;
  end
  else
  begin
         qry_rclsc.first;
 for i := 321 to qry_rclsc.RecordCount + 320 do
 begin
     name1:=Copy(f[i].Name,2,10) ;
     n[i].text:='';
     o[i].text:='';
 end;
 bgdyl.text:='';
  end;
  end;

   if qry_hljldnr.Active then
  begin
 if qry_hljldnr.Locate('jlrq',strtodatetime(formatdatetime('yyyy-mm-dd hh:mm:ss',ad_tw.FieldByName('jlrq').asdatetime)),[]) then
 begin
   if qry_hljldnr.RecordCount>0 then
 begin
 qry_hljld_xmdz.first;
 for i := 201 to qry_hljld_xmdz.RecordCount + 200 do
 begin
     name1:=Copy(c[i].Name,2,10) ;
     d[i].text:=qry_hljldnr.FieldByName(name1).AsString;
     H[I].text:=qry_hljldnr.FieldByName(name1).AsString;
 end;
 lrrq.Date:=qry_hljldnr.FieldByName('jlrq').AsDateTime;
 sd.Time:=strtotime(qry_hljldnr.FieldByName('sd').asstring);
htw.text := qry_hljldnr.FieldByName('tw').AsString;
hmb.text := qry_hljldnr.FieldByName('mb').AsString;
hhx.text := qry_hljldnr.FieldByName('hx').AsString;
hxl.text := qry_hljldnr.FieldByName('xl').AsString;
hxy.Text :=qry_hljldnr.FieldByName('xy').AsString;
httpf.text := qry_hljldnr.FieldByName('ttpf').AsString;
Memo3.text:=qry_hljldnr.FieldByName('bqgc').AsString;
 end;
 end
  else
 begin
     qry_hljld_xmdz.first;
 for i := 201 to qry_hljld_xmdz.RecordCount + 200 do
 begin
     name1:=Copy(c[i].Name,2,10) ;
     d[i].text:='';
     H[I].text:='';
 end;
htw.text := '';
hmb.text := '';
hhx.text := '';
hxl.text := '';
hxy.Text := '';
httpf.text := '';
Memo3.text:='';
 end;
  end;

end;

procedure Tfrm_twb2.DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
begin
  if ad_tw.FieldByName('tw').Asfloat>=37.5 then
  begin
    dbgrideh1.Canvas.Brush.Color := clred;
    dbgrideh1.Canvas.Font.Color := clwhite;
  end;
   (Sender as TDbGridEh).DefaultDrawColumnCell(Rect, DataCol, Column, State);

end;

procedure Tfrm_twb2.DBGridEh2CellClick(Column: TColumnEh);
var
i:Integer;
name1:string;
begin
 jxgcgjl:=true;
 display_hljl_cgjl;


{ if (ad_cgjl.FieldByName('czy').asstring=pub_czydm) or (ad_cgjl.FieldByName('czy').asstring='')  or (pub_czyzw='04')  then
 begin
  DBGridEh2.ReadOnly:=false;
 end
 else
 begin
  DBGridEh2.ReadOnly:=true;
 end;     }


   DBGridEh2.ReadOnly:=false;

 if qry_rcl.Active then
  begin
   if qry_rcl.Locate('jlrq', strtodatetime(formatdatetime('yyyy-mm-dd ', lrrq.date) + formatdatetime('hh:mm:ss',sd.time)), [loCaseInsensitive]) then
  begin
   qry_rclsc.first;
 for i := 321 to qry_rclsc.RecordCount + 320 do
 begin
     name1:=Copy(f[i].Name,2,10) ;
     n[i].text:=qry_rcl.FieldByName(name1).AsString;
     o[i].text:=qry_rcl.FieldByName(name1).AsString;
 end;
 bgdyl.text:=qry_rcl.FieldByName('gdyl').AsString;
  end
  else
  begin
         qry_rclsc.first;
 for i := 321 to qry_rclsc.RecordCount + 320 do
 begin
     name1:=Copy(f[i].Name,2,10) ;
     n[i].text:='';
     o[i].text:='';
 end;
 bgdyl.text:='';
  end;
  end;

   if qry_hljldnr.Active then
  begin
    if qry_hljldnr.Locate('jlrq', strtodatetime(formatdatetime('yyyy-mm-dd ', lrrq.date) + formatdatetime('hh:mm:ss',sd.time)), [loCaseInsensitive]) then
 begin
   if qry_hljldnr.RecordCount>0 then
 begin
 qry_hljld_xmdz.first;
 for i := 201 to qry_hljld_xmdz.RecordCount + 200 do
 begin
     name1:=Copy(c[i].Name,2,10) ;
     d[i].text:=qry_hljldnr.FieldByName(name1).AsString;
     H[I].text:=qry_hljldnr.FieldByName(name1).AsString;
 end;
 lrrq.Date:=qry_hljldnr.FieldByName('jlrq').AsDateTime;
 sd.Time:=strtotime(qry_hljldnr.FieldByName('sd').asstring);
htw.text := qry_hljldnr.FieldByName('tw').AsString;
hmb.text := qry_hljldnr.FieldByName('mb').AsString;
hhx.text := qry_hljldnr.FieldByName('hx').AsString;
hxl.text := qry_hljldnr.FieldByName('xl').AsString;
hxy.Text :=qry_hljldnr.FieldByName('xy').AsString;
httpf.text := qry_hljldnr.FieldByName('ttpf').AsString;
Memo3.text:=qry_hljldnr.FieldByName('bqgc').AsString;
 end;
 end
  else
 begin
     qry_hljld_xmdz.first;
 for i := 201 to qry_hljld_xmdz.RecordCount + 200 do
 begin
     name1:=Copy(c[i].Name,2,10) ;
     d[i].text:='';
     H[I].text:='';
 end;
htw.text := '';
hmb.text := '';
hhx.text := '';
hxl.text := '';
hxy.Text := '';
httpf.text := '';
Memo3.text:='';
 end;
  end;



end;


procedure Tfrm_twb2.DBGridEh3CellClick(Column: TColumnEh);
var
i:Integer;
name1:string;
begin
  if qry_hljld_xmdz.Active then
 begin
     qry_hljld_xmdz.first;
 for i := 201 to qry_hljld_xmdz.RecordCount + 200 do
 begin
     name1:=Copy(c[i].Name,2,10) ;
     d[i].text:='';
     H[I].text:='';
 end;
htw.text := '';
hmb.text := '';
hhx.text := '';
hxl.text := '';
hxy.Text := '';
httpf.text := '';
Memo3.text:='';
 end;
 if qry_rclsc.Active then
  begin
 qry_rclsc.first;
 for i := 321 to qry_rclsc.RecordCount + 320 do
 begin
     name1:=Copy(F[i].Name,2,10) ;
     n[i].text:='';
     o[i].text:='';
 end;
 bgdyl.text:='';
  end;

 if valuechange then
  if application.messagebox(pchar(dateTimeToStr(lrrq.date) + '的值已经改变，是否放弃改变？'), '提示', mb_yesno + MB_DEFBUTTON2+mb_iconquestion) = idno then
    b_save.click
    else
    jxgcgjl:=false;
if brxm.Text<>sp_twbr.FieldByName('brxm').asstring  then
begin
pagecontrol1.ActivePageIndex:=0;
brxm.Text:=sp_twbr.FieldByName('bch').asstring;
jbxx;
dkhljldrcl;
if sp_twbr.FieldByName('yz').AsString<>'' then
begin
    Label45.Visible:=True;
    Label45.Caption:='医嘱：'+sp_twbr.FieldByName('yz').AsString;
end
else
begin
    Label45.Visible:=False;
end;


if not ad_tw.Locate('jlrq', strtodatetime(formatdatetime('yyyy-mm-dd ', da1) + formatdatetime('hh:mm:ss',sd.time)), [loCaseInsensitive]) then
begin
Display_hljl_null;
end
else
begin
tw0.text := floattostr(ad_tw.FieldByName('tw').asfloat);
mb0.text := floattostr(ad_tw.FieldByName('mb').asfloat);
hx0.text := floattostr(ad_tw.FieldByName('hx').asfloat);
xl0.text := floattostr(ad_tw.FieldByName('xl').asfloat);
tt0.text := floattostr(ad_tw.FieldByName('tt').asfloat);
    if ad_tw.FieldByName('sm').asstring='物理降温' then
    wljw.Checked:=true
    else
    wljw.checked:=false;
    hxj.Checked:=ad_tw.FieldByName('syhxj').asboolean;
    cwfs.text:=ad_tw.FieldByName('twfs').asstring;
    wcyy.text:=ad_tw.FieldByName('jcyy').asstring;
end;
if qry_hljldnr.Active then
begin
if qry_hljldnr.locate('jlrq', strtodatetime(formatdatetime('yyyy-mm-dd ', da1) + formatdatetime('hh:mm:ss',sd.time)), [loCaseInsensitive]) then
begin
  qry_hljld_xmdz.first;
 for i := 201 to qry_hljld_xmdz.RecordCount + 200 do
 begin
     name1:=Copy(c[i].Name,2,10) ;
     d[i].text:=qry_hljldnr.FieldByName(name1).AsString;
     H[I].text:=qry_hljldnr.FieldByName(name1).AsString;
 end;
htw.text := qry_hljldnr.FieldByName('tw').AsString;
hmb.text := qry_hljldnr.FieldByName('mb').AsString;
hhx.text := qry_hljldnr.FieldByName('hx').AsString;
hxl.text := qry_hljldnr.FieldByName('xl').AsString;
hxy.Text :=qry_hljldnr.FieldByName('xy').AsString;
httpf.text := qry_hljldnr.FieldByName('ttpf').AsString;
Memo3.text:=qry_hljldnr.FieldByName('bqgc').AsString;


end
else
begin
    qry_hljld_xmdz.first;
 for i := 201 to qry_hljld_xmdz.RecordCount + 200 do
 begin
     name1:=Copy(c[i].Name,2,10) ;
     d[i].text:='';
     H[I].text:='';
 end;
htw.text := '';
hmb.text := '';
hhx.text := '';
hxl.text := '';
hxy.Text := '';
httpf.text := '';
Memo3.text:='';
end;
end;
if qry_rcl.Active then
begin
if qry_rcl.locate('jlrq', strtodatetime(formatdatetime('yyyy-mm-dd ', da1) + formatdatetime('hh:mm:ss',sd.time)), [loCaseInsensitive]) then
begin
   qry_rclsc.first;
 for i := 321 to qry_rclsc.RecordCount + 320 do
 begin
     name1:=Copy(F[i].Name,2,10) ;
     n[i].text:=qry_rcl.FieldByName(name1).AsString;
     o[i].text:=qry_rcl.FieldByName(name1).AsString;
 end;
 bgdyl.text:=qry_rcl.FieldByName('gdyl').AsString;
end
else
begin
      qry_rclsc.first;
 for i := 321 to qry_rclsc.RecordCount + 320 do
 begin
     name1:=Copy(F[i].Name,2,10) ;
     n[i].text:='';
     o[i].text:='';
 end;
 bgdyl.text:='';
end;
end;


if ad_tw.IsEmpty then
lrrq.date:=Frm_func.curr_date()
else
sd.setfocus;
end;


end;

procedure Tfrm_twb2.DBGridEh3DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
  var
   coluns_ls:TcolumnEh;
begin
 if  sp_twbr.fieldbyname('clbz').AsBoolean then
 begin
   dbgrideh3.Canvas.Brush.Color := clred;
    (Sender as TDbGridEh).DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;
if Column.Field.FieldName='bz' then
begin
    dbgrideh3.canvas.Font.Size:=10;
    dbgrideh3.Canvas.Font.Style := [fsBold];
  if pos('※',sp_twbr.fieldbyname('bz').asstring)>0 then
   begin
    DBGridEh3.Canvas.Font.Color := clred;
   end
    else
   if pos('△',sp_twbr.fieldbyname('bz').asstring)>0 then
    DBGridEh3.Canvas.Font.Color := clblue
    else
   if pos('☆',sp_twbr.fieldbyname('bz').asstring)>0 then
    DBGridEh3.Canvas.Font.Color := clteal
        else
   if pos('◎',sp_twbr.fieldbyname('bz').asstring)>0 then
    DBGridEh3.Canvas.Font.Color := clfuchsia
    else
   if pos('◇',sp_twbr.fieldbyname('bz').asstring)>0 then
    DBGridEh3.Canvas.Font.Color := claqua
    else
    if pos('▽',sp_twbr.fieldbyname('bz').asstring)>0 then
    DBGridEh3.Canvas.Font.Color := clOlive
    ;


 (Sender as TDbGridEh).DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;


 //  DBGridEh3.defaultDrawDataCell(Rect, field, State);
end;

procedure Tfrm_twb2.DBGridEh4CellClick(Column: TColumnEh);
var
i:Integer;
name1:string;
begin
hljlsxzd:=Column.FieldName;
hljlsxzdmc:=Column.Title.Caption;
if qry_hljldnr.RecordCount>0 then
 begin
 qry_hljld_xmdz.first;
 for i := 201 to qry_hljld_xmdz.RecordCount + 200 do
 begin
     name1:=Copy(c[i].Name,2,10) ;
     d[i].text:=qry_hljldnr.FieldByName(name1).AsString;
     H[I].text:=qry_hljldnr.FieldByName(name1).AsString;
 end;
 lrrq.Date:=qry_hljldnr.FieldByName('jlrq').AsDateTime;
 sd.Time:=strtotime(qry_hljldnr.FieldByName('sd').asstring);
htw.text := qry_hljldnr.FieldByName('tw').AsString;
hmb.text := qry_hljldnr.FieldByName('mb').AsString;
hhx.text := qry_hljldnr.FieldByName('hx').AsString;
hxl.text := qry_hljldnr.FieldByName('xl').AsString;
hxy.Text :=qry_hljldnr.FieldByName('xy').AsString;
httpf.text := qry_hljldnr.FieldByName('ttpf').AsString;
Memo3.text:=qry_hljldnr.FieldByName('bqgc').AsString;
 end;
  if qry_rcl.Active then
  begin
 if qry_rcl.Locate('jlrq',strtodatetime(formatdatetime('yyyy-mm-dd hh:mm:ss',qry_hljldnr.FieldByName('jlrq').asdatetime)),[]) then
  begin
   qry_rclsc.first;
 for i := 321 to qry_rclsc.RecordCount + 320 do
 begin
     name1:=Copy(f[i].Name,2,10) ;
     n[i].text:=qry_rcl.FieldByName(name1).AsString;
     o[i].text:=qry_rcl.FieldByName(name1).AsString;
 end;
 bgdyl.text:=qry_rcl.FieldByName('gdyl').AsString;
  end
  else
  begin
         qry_rclsc.first;
 for i := 321 to qry_rclsc.RecordCount + 320 do
 begin
     name1:=Copy(f[i].Name,2,10) ;
     n[i].text:='';
     o[i].text:='';
 end;
 bgdyl.text:='';
  end;
  end;
   if not ad_tw.Locate('jlrq',strtodatetime(formatdatetime('yyyy-mm-dd hh:mm:ss',qry_hljldnr.FieldByName('jlrq').asdatetime)),[]) then
begin
    lrrq.date := da1;
    tw0.text := '0';
    mb0.text := '0';
    hx0.text := '0';
    xl0.text := '0';
    tt0.text := '0';
    wljw.checked:=false;
    cwfs.Text:='口温';
    wcyy.Text:='';
    hxj.Checked:=false;
end
else
begin
tw0.text := floattostr(ad_tw.FieldByName('tw').asfloat);
mb0.text := floattostr(ad_tw.FieldByName('mb').asfloat);
hx0.text := floattostr(ad_tw.FieldByName('hx').asfloat);
xl0.text := floattostr(ad_tw.FieldByName('xl').asfloat);
tt0.text := floattostr(ad_tw.FieldByName('tt').asfloat);
    if ad_tw.FieldByName('sm').asstring='物理降温' then
    wljw.Checked:=true
    else
    wljw.checked:=false;
    hxj.Checked:=ad_tw.FieldByName('syhxj').asboolean;
    cwfs.text:=ad_tw.FieldByName('twfs').asstring;
    wcyy.text:=ad_tw.FieldByName('jcyy').asstring;
end;

if ad_cgjl.Locate('jlrq_s',formatdatetime('yyyymmdd',da1),[]) then
    begin
    xy.Text := ad_cgjl.FieldByName('xy').asstring;
    tz.Text := ad_cgjl.FieldByName('tz').asstring;
    pssm.Text := ad_cgjl.FieldByName('pssm').asstring;
    zrks.Text := ad_cgjl.FieldByName('zrks').asstring;
    zcks.Text := ad_cgjl.FieldByName('zcks').asstring;

    if ad_cgjl.FieldByName('ryrq').asdatetime=0 then
     ryrq1.Date:=0
    else
    ryrq1.Date:=ad_cgjl.FieldByName('ryrq').asdatetime;
    if ad_cgjl.FieldByName('ssrq').asdatetime=0 then
      ssrq1.Date:=0
    else
    ssrq1.Date:=ad_cgjl.FieldByName('ssrq').asdatetime;
    if ad_cgjl.FieldByName('cyrq').asdatetime=0 then
      cyrq1.Date:=0
    else
    cyrq1.Date:=ad_cgjl.FieldByName('cyrq').asdatetime;
    if ad_cgjl.FieldByName('swsj').asdatetime=0 then
      swsj1.Date:=0
    else
    swsj1.Date:=ad_cgjl.FieldByName('swsj').asdatetime;
    if ad_cgjl.FieldByName('fmsj').asdatetime=0 then
      fmsj1.Date:=0
    else
    fmsj1.Date:=ad_cgjl.FieldByName('fmsj').asdatetime;

    if ad_cgjl.FieldByName('zcrq').asdatetime=0 then
      zcrq1.Date:=0
    else
    zcrq1.Date:=ad_cgjl.FieldByName('zcrq').asdatetime;
    end
    else
    begin
    xy.Text := '';
    tz.Text := '';
    pssm.text:='';
    ryrq1.Date:=0;
    ssrq1.Date:=0;
    cyrq1.Date:=0;
    zcrq1.date:=0;
    swsj1.date:=0;
    fmsj1.date:=0;
    zrks.text:='';
    zcks.Text:='';
    bgdyl.Text:='';
    end;
if (qry_hljldnr.FieldByName('czy').asstring=pub_czyxm) or (qry_hljldnr.FieldByName('czy').asstring='')  or (pub_czyzw='04')  then
 begin
  DBGridEh4.ReadOnly:=False;
 end
 else
 begin
  DBGridEh4.ReadOnly:=True;
 end
end;

procedure Tfrm_twb2.DBGridEh4DblClick(Sender: TObject);
 begin
   application.CreateForm(Tfrm_hljlqsfx, frm_hljlqsfx);
 if frm_hljlqsfx<>nil then
   frm_hljlqsfx.Free;
  application.CreateForm(Tfrm_hljlqsfx, frm_hljlqsfx);
//  try
frm_hljlqsfx.sp_qs.close;
frm_hljlqsfx.sp_qs.Parameters.Refresh;
frm_hljlqsfx.sp_qs.Parameters.ParamByName('@zyh').Value:=zy_zyh;
frm_hljlqsfx.sp_qs.Parameters.ParamByName('@zb').Value:=hljlsxzd;
frm_hljlqsfx.sp_qs.open;
frm_hljlqsfx.Caption:=hljlsxzdmc+'趋势图';

frm_hljlqsfx.Width:=ScrollBox2.Width;
frm_hljlqsfx.Height:=350;
frm_hljlqsfx.Top:=214;
frm_hljlqsfx.Left:=ScrollBox2.Left+pagecontrol1.Left;
    frm_hljlqsfx.show;
 { finally
    frm_hljlqsfx.Free;
  end;       }
end;

procedure Tfrm_twb2.DBGridEh5DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
begin
if sp_hljldqbxm.FieldByName('xh').AsInteger>1 then
begin
   dbgrideh5.Canvas.Brush.Color := clMoneyGreen;
end;
 (Sender as TDbGridEh).DefaultDrawColumnCell(Rect, DataCol, Column, State);

end;

procedure Tfrm_twb2.DBGridEh6CellClick(Column: TColumnEh);
var
i:Integer;
name1:string;
begin
if qry_rcl.RecordCount>0 then
  begin
qry_rclsc.first;
 for i := 321 to qry_rclsc.RecordCount + 320 do
 begin
     name1:=Copy(f[i].Name,2,10) ;
     n[i].text:=qry_rcl.FieldByName(name1).AsString;
     o[i].text:=qry_rcl.FieldByName(name1).AsString;
 end;
lrrq.Date:=qry_rcl.FieldByName('jlrq').AsDateTime;
if qry_rcl.FieldByName('sd').asstring<>'' then
begin
sd.Time:=strtotime(qry_rcl.FieldByName('sd').asstring);
end;
bgdyl.text:=qry_rcl.FieldByName('gdyl').AsString;
end;


 if qry_hljldnr.Active then
  begin
 if qry_hljldnr.Locate('jlrq',strtodatetime(formatdatetime('yyyy-mm-dd hh:mm:ss',qry_rcl.FieldByName('jlrq').asdatetime)),[]) then
 begin
   if qry_hljldnr.RecordCount>0 then
 begin
 qry_hljld_xmdz.first;
 for i := 201 to qry_hljld_xmdz.RecordCount + 200 do
 begin
     name1:=Copy(c[i].Name,2,10) ;
     d[i].text:=qry_hljldnr.FieldByName(name1).AsString;
     H[I].text:=qry_hljldnr.FieldByName(name1).AsString;
 end;
 lrrq.Date:=qry_hljldnr.FieldByName('jlrq').AsDateTime;
 sd.Time:=strtotime(qry_hljldnr.FieldByName('sd').asstring);
htw.text := qry_hljldnr.FieldByName('tw').AsString;
hmb.text := qry_hljldnr.FieldByName('mb').AsString;
hhx.text := qry_hljldnr.FieldByName('hx').AsString;
hxl.text := qry_hljldnr.FieldByName('xl').AsString;
hxy.Text :=qry_hljldnr.FieldByName('xy').AsString;
httpf.text := qry_hljldnr.FieldByName('ttpf').AsString;
Memo3.text:=qry_hljldnr.FieldByName('bqgc').AsString;
 end;
 end
  else
 begin
     qry_hljld_xmdz.first;
 for i := 201 to qry_hljld_xmdz.RecordCount + 200 do
 begin
     name1:=Copy(c[i].Name,2,10) ;
     d[i].text:='';
     H[I].text:='';
 end;
htw.text := '';
hmb.text := '';
hhx.text := '';
hxl.text := '';
hxy.Text := '';
httpf.text := '';
Memo3.text:='';
 end;
  end;
   if not ad_tw.Locate('jlrq',strtodatetime(formatdatetime('yyyy-mm-dd hh:mm:ss',qry_rcl.FieldByName('jlrq').asdatetime)),[]) then
begin
    lrrq.date := da1;
    tw0.text := '0';
    mb0.text := '0';
    hx0.text := '0';
    xl0.text := '0';
    tt0.text := '0';
    wljw.checked:=false;
    cwfs.Text:='口温';
    wcyy.Text:='';
    hxj.Checked:=false;
end
else
begin
tw0.text := floattostr(ad_tw.FieldByName('tw').asfloat);
mb0.text := floattostr(ad_tw.FieldByName('mb').asfloat);
hx0.text := floattostr(ad_tw.FieldByName('hx').asfloat);
xl0.text := floattostr(ad_tw.FieldByName('xl').asfloat);
tt0.text := floattostr(ad_tw.FieldByName('tt').asfloat);
    if ad_tw.FieldByName('sm').asstring='物理降温' then
    wljw.Checked:=true
    else
    wljw.checked:=false;
    hxj.Checked:=ad_tw.FieldByName('syhxj').asboolean;
    cwfs.text:=ad_tw.FieldByName('twfs').asstring;
    wcyy.text:=ad_tw.FieldByName('jcyy').asstring;
end;

if ad_cgjl.Locate('jlrq_s',formatdatetime('yyyymmdd',da1),[]) then
    begin
    xy.Text := ad_cgjl.FieldByName('xy').asstring;
    tz.Text := ad_cgjl.FieldByName('tz').asstring;
    pssm.Text := ad_cgjl.FieldByName('pssm').asstring;
    zrks.Text := ad_cgjl.FieldByName('zrks').asstring;
    zcks.Text := ad_cgjl.FieldByName('zcks').asstring;

    if ad_cgjl.FieldByName('ryrq').asdatetime=0 then
     ryrq1.Date:=0
    else
    ryrq1.Date:=ad_cgjl.FieldByName('ryrq').asdatetime;
    if ad_cgjl.FieldByName('ssrq').asdatetime=0 then
      ssrq1.Date:=0
    else
    ssrq1.Date:=ad_cgjl.FieldByName('ssrq').asdatetime;
    if ad_cgjl.FieldByName('cyrq').asdatetime=0 then
      cyrq1.Date:=0
    else
    cyrq1.Date:=ad_cgjl.FieldByName('cyrq').asdatetime;
    if ad_cgjl.FieldByName('swsj').asdatetime=0 then
      swsj1.Date:=0
    else
    swsj1.Date:=ad_cgjl.FieldByName('swsj').asdatetime;
    if ad_cgjl.FieldByName('fmsj').asdatetime=0 then
      fmsj1.Date:=0
    else
    fmsj1.Date:=ad_cgjl.FieldByName('fmsj').asdatetime;

    if ad_cgjl.FieldByName('zcrq').asdatetime=0 then
      zcrq1.Date:=0
    else
    zcrq1.Date:=ad_cgjl.FieldByName('zcrq').asdatetime;
    end
    else
    begin
    xy.Text := '';
    tz.Text := '';
    pssm.text:='';
    ryrq1.Date:=0;
    ssrq1.Date:=0;
    cyrq1.Date:=0;
    zcrq1.date:=0;
    swsj1.date:=0;
    fmsj1.date:=0;
    zrks.text:='';
    zcks.Text:='';
    bgdyl.Text:='';
    end;
 if ((qry_rcl.FieldByName('czy').asstring=pub_czyxm) or (qry_rcl.FieldByName('czy').asstring='')  or (pub_czyzw='04'))  then
 begin
  DBGridEh6.ReadOnly:=False;
 end
 else
 begin
  DBGridEh6.ReadOnly:=True;
 end

end;


procedure Tfrm_twb2.DBGridEh6DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
begin
if   qry_rcl.FieldByName('zjbz').AsInteger=1 then
begin
   dbgrideh6.Canvas.Brush.Color := clTeal;
end;
 (Sender as TDbGridEh).DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure Tfrm_twb2.DBGridEh7DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
begin
if sp_rclqbxm.FieldByName('xh').AsInteger>1 then
begin
   dbgrideh7.Canvas.Brush.Color := clMoneyGreen;
end;
 (Sender as TDbGridEh).DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure Tfrm_twb2.DBGridEh8DblClick(Sender: TObject);
var
i:Integer;
name1,a,b:string;
begin
sp_syl.Close;
sp_syl.Parameters.ParamByName('@zyh').Value:=zy_zyh;
sp_syl.Parameters.ParamByName('@zxsj').Value:=formatdatetime('yyyymmdd',da1);
sp_syl.Parameters.ParamByName('@fzph').Value:=sp_symcxs.FieldByName('fzph').AsString;
sp_syl.open;
syfzbh:=sp_symcxs.FieldByName('fzph').AsString;

qry_rclsc.first;
   for i := 1 to frm_twb2.ScrollBox2.ControlCount-1 do
   begin
   if (frm_twb2.ScrollBox2.controls[i] is tedit) then
      begin
     a:=(frm_twb2.ScrollBox2.Controls[i] as tedit).name;
     a:=Copy(a,2,10);
     if a='xm' then
      begin
      (frm_twb2.ScrollBox2.Controls[i] as tedit).Text:=sp_syl.FieldByName('mc').AsString;
      end;
      if a='byl' then
      begin
      (frm_twb2.ScrollBox2.Controls[i] as tedit).Text:=sp_syl.FieldByName('sl').AsString;
      end;
      if a='syl' then
      begin
      (frm_twb2.ScrollBox2.Controls[i] as tedit).Text:=sp_syl.FieldByName('sl').AsString;
      (frm_twb2.ScrollBox2.Controls[i] as tedit).SetFocus;
      end;
      end;
   end;

 DBGridEh8.Visible:=False;

end;

procedure Tfrm_twb2.DBGridEh8DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
begin
if   sp_symcxs.FieldByName('syfzbh').AsString<>'' then
begin
   dbgrideh8.Canvas.Brush.Color := clteal;
end;
 (Sender as TDbGridEh).DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure Tfrm_twb2.DBGridEh8Exit(Sender: TObject);
begin
DBGridEh8.Visible:=False;
end;

procedure Tfrm_twb2.DBGridEh9CellClick(Column: TColumnEh);
begin
Edit2.text:=qry_bqgc.FieldByName('lb').AsString;
Edit1.text:=qry_bqgc.FieldByName('hljld_name').AsString;
memo2.text:=qry_bqgc.FieldByName('yy').AsString;
Button10.Enabled:=True;
end;

procedure Tfrm_twb2.display_hljl_cgjl;
var
    maxv, minv: real;
begin
    ad_tb.close;
    ad_tb.parameters.parambyname('zyh').value := zy_zyh;
    Frm_func.open_dataset(ad_tb);
    ad_tw.Locate('jlrq_s',formatdatetime('yyyymmdd',ad_cgjl.FieldByName('jlrq').asdatetime),[]);
    ad_tb.first;
    maxv := ad_tb.fieldbyname('mb').asinteger;
    minv := ad_tb.fieldbyname('mb').asinteger;
    while not ad_tb.Eof do
    begin
        if ad_tb.fieldbyname('mb').asinteger > maxv then
            maxv := ad_tb.fieldbyname('mb').asfloat;
        if ad_tb.fieldbyname('hx').asfloat > maxv then
            maxv := ad_tb.fieldbyname('hx').asfloat;
        if ad_tb.fieldbyname('tw').asfloat > maxv then
            maxv := ad_tb.fieldbyname('tw').asfloat;

        if ad_tb.fieldbyname('mb').asinteger > minv then
            minv := ad_tb.fieldbyname('mb').asfloat;
        if ad_tb.fieldbyname('hx').asfloat < minv then
            minv := ad_tb.fieldbyname('hx').asfloat;
        if ad_tb.fieldbyname('tw').asfloat < minv then
            minv := ad_tb.fieldbyname('tw').asfloat;
        ad_tb.next;
    end;
   { xbl.Text := ad_cgjl.FieldByName('xbl').asstring;
    dbcs.Text := ad_cgjl.FieldByName('dbcs').asstring;
    sryl.Text := ad_cgjl.FieldByName('syl').asstring;
    yrl.Text := ad_cgjl.FieldByName('yrl').asstring; }

    xy.Text := ad_cgjl.FieldByName('xy').asstring;
    tz.Text := ad_cgjl.FieldByName('tz').asstring;
    pssm.Text := ad_cgjl.FieldByName('pssm').asstring;
    zrks.Text := ad_cgjl.FieldByName('zrks').asstring;
    zcks.Text := ad_cgjl.FieldByName('zcks').asstring;
    lrrq.Date := ad_cgjl.FieldByName('jlrq').asdatetime;
    if ad_cgjl.FieldByName('ryrq').asdatetime=0 then
     ryrq1.Date:=0
    else
    ryrq1.Date:=ad_cgjl.FieldByName('ryrq').asdatetime;
    if ad_cgjl.FieldByName('ssrq').asdatetime=0 then
      ssrq1.Date:=0
    else
    ssrq1.Date:=ad_cgjl.FieldByName('ssrq').asdatetime;
    if ad_cgjl.FieldByName('cyrq').asdatetime=0 then
      cyrq1.Date:=0
    else
    cyrq1.Date:=ad_cgjl.FieldByName('cyrq').asdatetime;
    if ad_cgjl.FieldByName('swsj').asdatetime=0 then
      swsj1.Date:=0
    else
    swsj1.Date:=ad_cgjl.FieldByName('swsj').asdatetime;
    if ad_cgjl.FieldByName('fmsj').asdatetime=0 then
      fmsj1.Date:=0
    else
    fmsj1.Date:=ad_cgjl.FieldByName('fmsj').asdatetime;
    if ad_cgjl.FieldByName('zcrq').asdatetime=0 then
      zcrq1.Date:=0
    else
    zcrq1.Date:=ad_cgjl.FieldByName('zcrq').asdatetime;
 //   bgdyl.Text:=ad_cgjl.FieldByName('qt').asstring;
    if  ad_tw.FieldByName('sd').asstring<>'' then
    sd.Time:=strtotime(ad_tw.FieldByName('sd').asstring)
    else
     sd.Time:=strtotime(copy(pub_twbqssj,1,5));
    tw0.text := floattostr(ad_tw.FieldByName('tw').asfloat);
    mb0.text := floattostr(ad_tw.FieldByName('mb').asfloat);
    hx0.text := floattostr(ad_tw.FieldByName('hx').asfloat);
    xl0.text := floattostr(ad_tw.FieldByName('xl').asfloat);
    tt0.text := floattostr(ad_tw.FieldByName('tt').asfloat);
    if ad_tw.FieldByName('sm').asstring='物理降温' then
    wljw.Checked:=true
    else
    wljw.checked:=false;
    hxj.Checked:=ad_tw.FieldByName('syhxj').asboolean;
    cwfs.text:=ad_tw.FieldByName('twfs').asstring;
    wcyy.text:=ad_tw.FieldByName('jcyy').asstring;
end;


procedure Tfrm_twb2.display_hljl;
var
    maxv, minv: real;
begin
    ad_tb.close;
    ad_tb.parameters.parambyname('zyh').value := zy_zyh;
    Frm_func.open_dataset(ad_tb);
    ad_cgjl.Locate('jlrq',strtodatetime(formatdatetime('yyyy-mm-dd',ad_tw.FieldByName('jlrq').asdatetime)),[]);
    ad_tb.first;
    maxv := ad_tb.fieldbyname('mb').asinteger;
    minv := ad_tb.fieldbyname('mb').asinteger;
    while not ad_tb.Eof do
    begin
        if ad_tb.fieldbyname('mb').asinteger > maxv then
            maxv := ad_tb.fieldbyname('mb').asfloat;
        if ad_tb.fieldbyname('hx').asfloat > maxv then
            maxv := ad_tb.fieldbyname('hx').asfloat;
        if ad_tb.fieldbyname('tw').asfloat > maxv then
            maxv := ad_tb.fieldbyname('tw').asfloat;

        if ad_tb.fieldbyname('mb').asinteger > minv then
            minv := ad_tb.fieldbyname('mb').asfloat;
        if ad_tb.fieldbyname('hx').asfloat < minv then
            minv := ad_tb.fieldbyname('hx').asfloat;
        if ad_tb.fieldbyname('tw').asfloat < minv then
            minv := ad_tb.fieldbyname('tw').asfloat;
        ad_tb.next;
    end;
   { xbl.Text := ad_cgjl.FieldByName('xbl').asstring;
    dbcs.Text := ad_cgjl.FieldByName('dbcs').asstring;
    sryl.Text := ad_cgjl.FieldByName('syl').asstring;
    yrl.Text := ad_cgjl.FieldByName('yrl').asstring;  }
    xy.Text := ad_cgjl.FieldByName('xy').asstring;
    tz.Text := ad_cgjl.FieldByName('tz').asstring;
    pssm.Text := ad_cgjl.FieldByName('pssm').asstring;
    zrks.Text := ad_cgjl.FieldByName('zrks').asstring;
    zcks.Text := ad_cgjl.FieldByName('zcks').asstring;
    lrrq.Date := ad_tw.FieldByName('jlrq').asdatetime;
    if ad_cgjl.FieldByName('ryrq').asdatetime=0 then
     ryrq1.Date:=0
    else
    ryrq1.Date:=ad_cgjl.FieldByName('ryrq').asdatetime;
    if ad_cgjl.FieldByName('ssrq').asdatetime=0 then
      ssrq1.Date:=0
    else
    ssrq1.Date:=ad_cgjl.FieldByName('ssrq').asdatetime;
    if ad_cgjl.FieldByName('cyrq').asdatetime=0 then
      cyrq1.Date:=0
    else
    cyrq1.Date:=ad_cgjl.FieldByName('cyrq').asdatetime;
    if ad_cgjl.FieldByName('swsj').asdatetime=0 then
      swsj1.Date:=0
    else
    swsj1.Date:=ad_cgjl.FieldByName('swsj').asdatetime;
    if ad_cgjl.FieldByName('fmsj').asdatetime=0 then
      fmsj1.Date:=0
    else
    fmsj1.Date:=ad_cgjl.FieldByName('fmsj').asdatetime;
    if ad_cgjl.FieldByName('zcrq').asdatetime=0 then
      zcrq1.Date:=0
    else
    zcrq1.Date:=ad_cgjl.FieldByName('zcrq').asdatetime;
 //   bgdyl.Text:=ad_cgjl.FieldByName('qt').asstring;
    if  ad_tw.FieldByName('sd').asstring<>'' then
    sd.Time:=strtotime(ad_tw.FieldByName('sd').asstring)
    else
     sd.Time:=strtotime(copy(pub_twbqssj,1,5));
    tw0.text := floattostr(ad_tw.FieldByName('tw').asfloat);
    mb0.text := floattostr(ad_tw.FieldByName('mb').asfloat);
    hx0.text := floattostr(ad_tw.FieldByName('hx').asfloat);
    xl0.text := floattostr(ad_tw.FieldByName('xl').asfloat);
    tt0.text := floattostr(ad_tw.FieldByName('tt').asfloat);
    if ad_tw.FieldByName('sm').asstring='物理降温' then
    wljw.Checked:=true
    else
    wljw.checked:=false;
    hxj.Checked:=ad_tw.FieldByName('syhxj').asboolean;
    cwfs.text:=ad_tw.FieldByName('twfs').asstring;
    wcyy.text:=ad_tw.FieldByName('jcyy').asstring;
end;

procedure Tfrm_twb2.display_hljl_null;
begin
    sfkxg:=true;
    lrrq.date := da1;
    tw0.text := '0';
    mb0.text := '0';
    hx0.text := '0';
    xl0.text := '0';
    tt0.text := '0';
    wljw.checked:=false;
    cwfs.Text:='口温';
    wcyy.Text:='';
    hxj.Checked:=false;



    if ad_cgjl.Locate('jlrq_s',formatdatetime('yyyymmdd',da1),[]) then
    begin
   { xbl.Text := ad_cgjl.FieldByName('xbl').asstring;
    dbcs.Text :=ad_cgjl.FieldByName('dbcs').asstring;
    sryl.Text := ad_cgjl.FieldByName('syl').asstring;
    yrl.Text := ad_cgjl.FieldByName('yrl').asstring;  }
    xy.Text := ad_cgjl.FieldByName('xy').asstring;
    tz.Text := ad_cgjl.FieldByName('tz').asstring;
    pssm.Text := ad_cgjl.FieldByName('pssm').asstring;
    zrks.Text := ad_cgjl.FieldByName('zrks').asstring;
    zcks.Text := ad_cgjl.FieldByName('zcks').asstring;

    if ad_cgjl.FieldByName('ryrq').asdatetime=0 then
     ryrq1.Date:=0
    else
    ryrq1.Date:=ad_cgjl.FieldByName('ryrq').asdatetime;
    if ad_cgjl.FieldByName('ssrq').asdatetime=0 then
      ssrq1.Date:=0
    else
    ssrq1.Date:=ad_cgjl.FieldByName('ssrq').asdatetime;
    if ad_cgjl.FieldByName('cyrq').asdatetime=0 then
      cyrq1.Date:=0
    else
    cyrq1.Date:=ad_cgjl.FieldByName('cyrq').asdatetime;
    if ad_cgjl.FieldByName('swsj').asdatetime=0 then
      swsj1.Date:=0
    else
    swsj1.Date:=ad_cgjl.FieldByName('swsj').asdatetime;
    if ad_cgjl.FieldByName('fmsj').asdatetime=0 then
      fmsj1.Date:=0
    else
    fmsj1.Date:=ad_cgjl.FieldByName('fmsj').asdatetime;

    if ad_cgjl.FieldByName('zcrq').asdatetime=0 then
      zcrq1.Date:=0
    else
    zcrq1.Date:=ad_cgjl.FieldByName('zcrq').asdatetime;
//    bgdyl.text:=ad_cgjl.FieldByName('qt').asstring;
    end
    else
    begin
   { xbl.Text := '0';
    dbcs.Text := '0';
    sryl.Text := '0';
    yrl.Text := '0';  }
    xy.Text := '';
    tz.Text := '';
    pssm.text:='';
    ryrq1.Date:=0;
    ssrq1.Date:=0;
    cyrq1.Date:=0;
    zcrq1.date:=0;
    swsj1.date:=0;
    fmsj1.date:=0;
    zrks.text:='';
    zcks.Text:='';
    bgdyl.Text:='';
    end;
end;

procedure Tfrm_twb2.brxmKeyPress(Sender: TObject; var Key: Char);
var
i:Integer;
name1:string;
begin

     qry_hljld_xmdz.first;
 for i := 201 to qry_hljld_xmdz.RecordCount + 200 do
 begin
     name1:=Copy(c[i].Name,2,10) ;
     d[i].text:='';
     H[I].text:='';
 end;
htw.text := '';
hmb.text := '';
hhx.text := '';
hxl.text := '';
hxy.Text := '';
httpf.text := '';
Memo3.text:='';
 qry_rclsc.first;
 for i := 321 to qry_rclsc.RecordCount + 320 do
 begin
     name1:=Copy(F[i].Name,2,10) ;
     n[i].text:='';
     o[i].text:='';
 end;
 bgdyl.text:='';

    if key = #13  then
    if brxm.Text<>'' then
    begin
        jbxx;
        dkhljldrcl;
        if not ad_tw.Locate('jlrq', strtodatetime(formatdatetime('yyyy-mm-dd ', da1) + formatdatetime('hh:mm:ss',sd.time)), [loCaseInsensitive]) then
begin
Display_hljl_null;
end
else
begin
tw0.text := floattostr(ad_tw.FieldByName('tw').asfloat);
mb0.text := floattostr(ad_tw.FieldByName('mb').asfloat);
hx0.text := floattostr(ad_tw.FieldByName('hx').asfloat);
xl0.text := floattostr(ad_tw.FieldByName('xl').asfloat);
tt0.text := floattostr(ad_tw.FieldByName('tt').asfloat);
    if ad_tw.FieldByName('sm').asstring='物理降温' then
    wljw.Checked:=true
    else
    wljw.checked:=false;
    hxj.Checked:=ad_tw.FieldByName('syhxj').asboolean;
    cwfs.text:=ad_tw.FieldByName('twfs').asstring;
    wcyy.text:=ad_tw.FieldByName('jcyy').asstring;
end;
if qry_hljldnr.locate('jlrq', strtodatetime(formatdatetime('yyyy-mm-dd ', da1) + formatdatetime('hh:mm:ss',sd.time)), [loCaseInsensitive]) then
begin
  qry_hljld_xmdz.first;
 for i := 201 to qry_hljld_xmdz.RecordCount + 200 do
 begin
     name1:=Copy(c[i].Name,2,10) ;
     d[i].text:=qry_hljldnr.FieldByName(name1).AsString;
     H[I].text:=qry_hljldnr.FieldByName(name1).AsString;
 end;
htw.text := qry_hljldnr.FieldByName('tw').AsString;
hmb.text := qry_hljldnr.FieldByName('mb').AsString;
hhx.text := qry_hljldnr.FieldByName('hx').AsString;
hxl.text := qry_hljldnr.FieldByName('xl').AsString;
hxy.Text :=qry_hljldnr.FieldByName('xy').AsString;
httpf.text := qry_hljldnr.FieldByName('ttpf').AsString;
Memo3.text:=qry_hljldnr.FieldByName('bqgc').AsString;


end
else
begin
    qry_hljld_xmdz.first;
 for i := 201 to qry_hljld_xmdz.RecordCount + 200 do
 begin
     name1:=Copy(c[i].Name,2,10) ;
     d[i].text:='';
     H[I].text:='';
 end;
htw.text := '';
hmb.text := '';
hhx.text := '';
hxl.text := '';
hxy.Text := '';
httpf.text := '';
Memo3.text:='';
end;
if qry_rcl.locate('jlrq', strtodatetime(formatdatetime('yyyy-mm-dd ', da1) + formatdatetime('hh:mm:ss',sd.time)), [loCaseInsensitive]) then
begin
   qry_rclsc.first;
 for i := 321 to qry_rclsc.RecordCount + 320 do
 begin
     name1:=Copy(F[i].Name,2,10) ;
     n[i].text:=qry_rcl.FieldByName(name1).AsString;
     o[i].text:=qry_rcl.FieldByName(name1).AsString;
 end;
 bgdyl.text:=qry_rcl.FieldByName('gdyl').AsString;
end
else
begin
      qry_rclsc.first;
 for i := 321 to qry_rclsc.RecordCount + 320 do
 begin
     name1:=Copy(F[i].Name,2,10) ;
     n[i].text:='';
     o[i].text:='';
 end;
 bgdyl.text:='';
end;
//sfkxg:=True;


sp_pdwz.Close;
sp_pdwz.Parameters.ParamByName('@zyh').value:=zy_zyh;
sp_pdwz.Parameters.ParamByName('@rq').value:=formatdatetime('yyyymmdd',lrrq.date);
sp_pdwz.Parameters.ParamByName('@return').value:='';
sp_pdwz.ExecProc;

if sp_pdwz.Parameters.ParamByName('@return').value='y' then
begin
  sfwz:=True;
end
else
begin
   sfwz:=false;
end;


    end
    else
    begin
    application.MessageBox(pchar('请扫描病人腕带和输入住院号、床号，请重新输入！！！！'+char(13)),'提示',mb_ok+mb_iconinformation);
    brxm.setfocus;
    end;
end;
procedure Tfrm_twb2.Button8Click(Sender: TObject);
begin
      ADOQuery3.Close;
      ADOQuery3.SQL.clear;
      ADOQuery3.sql.Add('insert into zybl_hljld_yygf(hljld_name,lb,yy,sx,ksdm)values(:hljld_name,:lb,:yy,:sx,:ksdm)') ;
      ADOQuery3.Parameters.ParamByName('hljld_name').Value:=Trim(Edit1.text);
      ADOQuery3.Parameters.ParamByName('lb').Value:=Trim(Edit2.text);
      ADOQuery3.Parameters.ParamByName('yy').Value:=Trim(memo2.text);
      ADOQuery3.Parameters.ParamByName('ksdm').Value:=pub_ksdm;
      ADOQuery3.Parameters.ParamByName('sx').Value:=2;
      Frm_func.exec_dataset_qry(ADOQuery3);

    qry_bqgc.Close;
    qry_bqgc.Parameters.ParamByName('ksdm').value:=pub_ksdm;
    qry_bqgc.Open;
end;

procedure Tfrm_twb2.Button9Click(Sender: TObject);
var
s:string;
begin
    application.CreateForm(Tfrm_hljlddyrq,frm_hljlddyrq);
    frm_hljlddyrq.lb:=0;
    try
      frm_hljlddyrq.zy_zyh:=zy_zyh;
      frm_hljlddyrq.showmodal;
    finally
      frm_hljlddyrq.Free;
    end;

ad_cg.Last;

   s:='姓名:' + ad_cg.FieldByName('brxm').AsString+' 性别:' + ad_cg.FieldByName('brxb').AsString+' 年龄:' + ad_cg.FieldByName('brnl').AsString
    +' 科别:' + ad_cg.FieldByName('brks').AsString+ ' 病床:' + ad_cg.FieldByName('bch').AsString+' 住院号:' + sp_cx_zybrjbqk.FieldByName('tmh').AsString
    +' 入院诊断:' +sp_cx_zybrjbqk.fieldbyname('ryzd').asstring;

PrintDBGridEh1.DBGridEh:=DBGridEh6;
PrintDBGridEh1.Title.Text:=pub_yymc+'护理记录单（二）';
PrintDBGridEh1.PageHeader.LeftText.Clear;
PrintDBGridEh1.PageHeader.LeftText.Add(s);
PrintDBGrideh1.PageHeader.Font.Name:='宋体';
PrintDBGrideh1.PageHeader.Font.Size:=10;
PrintDBGrideh1.PageHeader.RightText.Clear;
//PrintDBGrideh1.PageHeader.RightText.text:=formatdatetime('yyyy-mm-dd hh:mm:ss',Frm_func.curr_date);
PrintDBGridEh1.PageFooter.CenterText.Text:='第     页';
PrintDBGridEh1.PageFooter.rightText.Text:='签名                                         ';
//PrintDBGridEh1.Page.
PrinterPreview.Orientation:=poLandscape;
PrintDBGridEh1.Preview;
end;

procedure Tfrm_twb2.hhxExit(Sender: TObject);
var
i:Double;
begin
 hhx.Font.color:=clWindowText;
if  TryStrTofloat(hhx.Text,i)  then
 begin
if (hhx.Text<>'') and (hhx.Text<>'0') then
   begin
    if (strtofloat(hhx.text) >=30) or (strtofloat(hhx.text) <=8) then
    begin
       hhx.Font.color:=clred;
    end
   end;
 end;
end;

procedure Tfrm_twb2.hljld;
var
i,a:Integer;
begin
    qry_hljld_xmdz.First;
    a:=qry_hljld_xmdz.RecordCount;
    for I := 7 to a+6  do
     begin
dbgrideh4.Columns.Add;
dbgrideh4.Columns[i].fieldname:=qry_hljld_xmdz.FieldByName('hljld_name').AsString;
dbgrideh4.Columns[i].Title.caption:=qry_hljld_xmdz.FieldByName('hljld_caption').AsString;
dbgrideh4.Columns[i].Title.Font.Size:=10;
dbgrideh4.Columns[i].Title.Alignment:=taCenter;
dbgrideh4.Columns[i].Alignment:=taCenter;
dbgrideh4.Columns[i].width:=qry_hljld_xmdz.FieldByName('kd').AsInteger;
dbgrideh4.Columns[i].WordWrap:=True;
dbgrideh4.Columns[i].Font.Size:=10;
 dbgrideh4.RowHeight:=20;

  { if (qry_hljld_xmdz.FieldByName('hljld_name').AsString='bqgc') or (qry_hljld_xmdz.FieldByName('hljld_name').AsString='guanlu') then
   begin
   dbgrideh4.Columns[i].Font.Size:=8;
   end;            }
   qry_hljld_xmdz.Next;
     end;
     i:=a+7;
   dbgrideh4.Columns.Add;
dbgrideh4.Columns[i].fieldname:='bqgc';
dbgrideh4.Columns[i].Title.caption:='病情观察及措施';
dbgrideh4.Columns[i].Title.Font.Size:=10;
dbgrideh4.Columns[i].Title.Alignment:=taCenter;
dbgrideh4.Columns[i].Alignment:=taLeftJustify;
dbgrideh4.Columns[i].width:=200;
dbgrideh4.Columns[i].WordWrap:=True;
dbgrideh4.Columns[i].Font.Size:=10;


    i:=a+8;
dbgrideh4.Columns.Add;
dbgrideh4.Columns[i].fieldname:='czy';
dbgrideh4.Columns[i].Title.caption:='护士签名';
dbgrideh4.Columns[i].Title.Font.Size:=10;
dbgrideh4.Columns[i].Title.Alignment:=taCenter;
dbgrideh4.Columns[i].Alignment:=taCenter;
dbgrideh4.Columns[i].width:=50;
dbgrideh4.Columns[i].WordWrap:=True;
dbgrideh4.Columns[i].Font.Size:=10;

DBGridEh4.rowsizingallowed:=true;

end;

procedure Tfrm_twb2.rcl;
var
i,a:integer;
begin
    qry_rclsc.First;
    a:=qry_rclsc.RecordCount;
    for I := 1 to a  do
     begin
dbgrideh6.Columns.Add;
dbgrideh6.Columns[i].fieldname:=qry_rclsc.FieldByName('hljld_name').AsString;
dbgrideh6.Columns[i].Title.caption:=qry_rclsc.FieldByName('hljld_caption').AsString;
dbgrideh6.Columns[i].Title.Font.Size:=10;
dbgrideh6.Columns[i].Title.Alignment:=taCenter;
dbgrideh6.Columns[i].Alignment:=taCenter;
dbgrideh6.Columns[i].width:=qry_rclsc.FieldByName('kd').AsInteger;
dbgrideh6.Columns[i].WordWrap:=True;
dbgrideh6.Columns[i].Font.Size:=10;
dbgrideh6.RowHeight:=20;

qry_rclsc.Next;
end;
i:=a+1;
dbgrideh6.Columns.Add;
dbgrideh6.Columns[i].fieldname:='gdyl';
dbgrideh6.Columns[i].Title.caption:='管道引流';
dbgrideh6.Columns[i].Title.Font.Size:=10;
dbgrideh6.Columns[i].Title.Alignment:=taCenter;
dbgrideh6.Columns[i].Alignment:=taCenter;
dbgrideh6.Columns[i].width:=200;
dbgrideh6.Columns[i].WordWrap:=True;
dbgrideh6.RowHeight:=20;
dbgrideh6.Columns[i].Font.Size:=10;

i:=a+2;
dbgrideh6.Columns.Add;
dbgrideh6.Columns[i].fieldname:='czy';
dbgrideh6.Columns[i].Title.caption:='护士签名';
dbgrideh6.Columns[i].Title.Font.Size:=10;
dbgrideh6.Columns[i].Title.Alignment:=taCenter;
dbgrideh6.Columns[i].Alignment:=taCenter;
dbgrideh6.Columns[i].width:=50;
dbgrideh6.Columns[i].WordWrap:=True;
dbgrideh6.rowsizingallowed:=true;

end;
procedure Tfrm_twb2.rclchange(sender:TObject);
begin
if ((sender as TEdit).Name<>'bxm') and ((sender as TEdit).Name<>'bbyl') and ((sender as TEdit).Name<>'bsyl') then
 begin
  if POS('.',(Sender as TEdit).text)>0 then
  begin
     application.MessageBox('请不要录入小数点！', '提示', 0 + 48);
    (Sender as TEdit).text:='';
    (Sender as TEdit).setfocus; 
  end;
 end;
end;

procedure Tfrm_twb2.rclkjpress(Sender: TObject; var Key: Char);
var
i:Integer;
name1:string;

begin
   if qry_rcl.Locate('jlrq', strtodatetime(formatdatetime('yyyy-mm-dd ', lrrq.date) + formatdatetime('hh:mm:ss',sd.time)), [loCaseInsensitive]) then
   begin
     if (qry_rcl.FieldByName('czy').AsString<>pub_czyxm) and (pub_czyzw<>'04') then
       begin
          key:=char(0);
   dm_data.qry_pub.Close;
   dm_data.qry_pub.SQL.Text:='select * from sys_czy where dm='+#39+qry_rcl.fieldbyname('czy').asstring+#39;
   Frm_func.open_dataset(dm_data.qry_pub);
   application.MessageBox(pchar('本次入出量记录由'+qry_rcl.fieldbyname('czy').asstring+'录入，只能由录入者本人修改！！'),'提示',mb_ok);
   dm_data.qry_pub.Close;
       end
       else
        begin
         if key=#13 then
 begin
 if (sender as Tedit).Name='bbyl' then
     begin
qry_rclsc.first;
    for i := 321 to qry_rclsc.RecordCount + 320 do
    begin
      name1:=Copy(n[i].Name,2,10) ;
      if name1='syl' then
       begin
          if (n[i].Text='') or (n[i].text='0') then
            begin
            n[i].Text:=(Sender as tedit).Text;
            end;
            Break;
       end;
    end;

    end;
    selectnext(activecontrol, true, true)
 end;
        end;
   end
   else
   begin
   if key=#13 then
 begin
 if (sender as Tedit).Name='bbyl' then
     begin
qry_rclsc.first;
    for i := 321 to qry_rclsc.RecordCount + 320 do
    begin
      name1:=Copy(n[i].Name,2,10) ;
      if name1='syl' then
       begin
          if (n[i].Text='') or (n[i].text='0') then
            begin
            n[i].Text:=(Sender as tedit).Text;
            end;
            Break;
       end;
    end;

    end;
    selectnext(activecontrol, true, true)
 end;
   end;

   

end;

procedure Tfrm_twb2.rclkjpress1(Sender: TObject; var Key: Char);
var
i:Integer;
name1:string;
begin
   if qry_rcl.Locate('jlrq', strtodatetime(formatdatetime('yyyy-mm-dd ', lrrq.date) + formatdatetime('hh:mm:ss',sd.time)), [loCaseInsensitive]) then
   begin
     if (qry_rcl.FieldByName('czy').AsString<>pub_czyxm) and (pub_czyzw<>'04') then
       begin
          key:=char(0);
   dm_data.qry_pub.Close;
   dm_data.qry_pub.SQL.Text:='select * from sys_czy where dm='+#39+qry_rcl.fieldbyname('czy').asstring+#39;
   Frm_func.open_dataset(dm_data.qry_pub);
   application.MessageBox(pchar('本次入出量记录由'+qry_rcl.fieldbyname('czy').asstring+'录入，只能由录入者本人修改！！'),'提示',mb_ok);
   dm_data.qry_pub.Close;
       end
       else
        begin
         if key=#13 then
    selectnext(activecontrol, true, true)
       end;
    end
    else
   begin
   if key=#13 then
 begin
    selectnext(activecontrol, true, true)
 end;
   end;

end;

procedure Tfrm_twb2.hljldkjpress(Sender: TObject; var Key: Char);
begin
     if Sender is tcombobox then
     begin
       if (Sender as TComboBox).Name='bguanlu' then
          begin
             guanlutext:=(Sender as TComboBox).Text;
          end;

     end;

 {   if sfkxg then
     begin
    if key = #13 then
     selectnext(activecontrol, true, true)
     end
     else
     begin
    key:=char(0);
   dm_data.qry_pub.Close;
   dm_data.qry_pub.SQL.Text:='select * from sys_czy where dm='+#39+qry_hljldnr.fieldbyname('czy').asstring+#39;
   Frm_func.open_dataset(dm_data.qry_pub);
   application.MessageBox(pchar('本次护理记录单记录由'+qry_hljldnr.fieldbyname('czy').asstring+'录入，只能由录入者本人修改！！'),'提示',mb_ok);
   dm_data.qry_pub.Close;
     end;  }
 if qry_hljldnr.Locate('jlrq', strtodatetime(formatdatetime('yyyy-mm-dd ', lrrq.date) + formatdatetime('hh:mm:ss',sd.time)), [loCaseInsensitive]) then
   begin
     if (qry_hljldnr.FieldByName('czy').AsString<>pub_czyxm) and (pub_czyzw<>'04') then
       begin
   key:=char(0);
   dm_data.qry_pub.Close;
   dm_data.qry_pub.SQL.Text:='select * from sys_czy where dm='+#39+qry_hljldnr.fieldbyname('czy').asstring+#39;
   Frm_func.open_dataset(dm_data.qry_pub);
   application.MessageBox(pchar('本次护理记录单记录由'+qry_hljldnr.fieldbyname('czy').asstring+'录入，只能由录入者本人修改！！'),'提示',mb_ok);
   dm_data.qry_pub.Close;
       end
       else
       begin
       if key = #13 then
     selectnext(activecontrol, true, true)
       end;
   end
   else
   begin
      if key = #13 then
     selectnext(activecontrol, true, true)
   end;


end;

procedure Tfrm_twb2.kjsc;
var
I,J,K,M,G:Integer;
l:Integer;
a,b:string;
bqgclr:TMemo;

begin
 ScrollBox2.Visible:=True;
 ScrollBox3.Visible:=True;
      qry_hljld_xmdz.Close;
      qry_hljld_xmdz.sql.clear;
      qry_hljld_xmdz.SQL.Add('select * from zybl_hljld_xmdz where ksdm=:ksdm and id <100 order by xh');
      qry_hljld_xmdz.Parameters.ParamByName('ksdm').Value:=pub_ksdm;
      Frm_func.open_dataset(qry_hljld_xmdz);
      if qry_hljld_xmdz.RecordCount=0 then
       begin
         ScrollBox3.Height:=0;
       end
       else
       begin
    for I := 201 to qry_hljld_xmdz.RecordCount+200  do
    begin
        j:=i-200;

        if (j=6) or (J=12) or (j=18) or (j=24) or (j=30) or (j=36) or (j=42) or (j=48) then
        begin
        k:=(j div 6);
        l:=(j-6*(k-1))-1;
        end
        else
        begin
        k:=(j div 6)+1;
        l:=(j-6*(k-1))-1;
        end;


      a:=qry_hljld_xmdz.FieldByName('hljld_name').AsString;
      b:=qry_hljld_xmdz.FieldByName('hljld_caption').AsString;
      b:=copy(b,pos('|',b)+1,length(b)-pos('|',b));
      g:=qry_hljld_xmdz.FieldByName('sx').AsInteger;
      C[I]:=TLabel.Create(self);
      C[I].Name:='a'+a;
      C[I].Caption:=b;
      C[I].parent:=ScrollBox3;
      C[i].ShowHint:=True;
      C[I].hint:=b;
      c[i].Left:=l*200;
      c[i].top:= k*30+5;
      c[i].width:=73;
      if g=1 then
       begin
      H[I]:=TComboBox.Create(self);
      H[I].Name:='b'+a;
      H[I].text:='';
      H[I].parent:=ScrollBox3;
      H[I].Left:=C[i].Left+C[I].Width+5;
      H[I].width:=120;
      H[i].top:=k*30;
      h[i].AutoComplete:=False;
      h[i].OnKeyPress:=hljldkjpress;
      if a='guanlu' then
      begin
       h[i].OnClick:=guanluonclick;
       h[i].OnExit:=guanluonexit;
       h[i].onenter:=guanluonenter;
      end;
      qry_hljld_xmdz.next;
       end
       else
       begin
      D[I]:=TEdit.Create(self);
      D[I].Name:='b'+a;
      D[I].text:='';
      D[I].parent:=ScrollBox3;
      D[I].Left:=C[i].Left+C[I].Width+5;
      D[I].width:=120;
      D[i].top:=k*30;
      d[i].OnKeyPress:=hljldkjpress;
       if a='zilinengli'  then
        begin
          D[I].OndblClick:=zilinenglionclick;
   //       D[i].ReadOnly:=true;
        end
        else
        if a='yachuang' then
        begin
          D[I].OndblClick:=yachuangonclick;
   //       D[i].ReadOnly:=true;
        end
        else
        if a='diedao' then
        begin
          D[I].OndblClick:=diedaoonclick;
    //      D[i].ReadOnly:=true;
        end;
        if a='dgtlfx' then
        begin
          D[I].OndblClick:=dgtlfxonclick;
       //   D[i].ReadOnly:=true;
        end;

      qry_hljld_xmdz.next;
       end;

    end;
       end;
 M:=k+1;




    qry_rclsc.Close;
    qry_rclsc.sql.clear;
    qry_rclsc.SQL.Add('select * from zybl_hljld_xmdz  where id>=100 and ksdm=:ksdm order by xh');
    qry_rclsc.Parameters.ParamByName('ksdm').Value:=pub_ksdm;
    Frm_func.open_dataset(qry_rclsc);
          if qry_rclsc.RecordCount=0 then
       begin
         ScrollBox2.Height:=0;
       end
       else
       begin
    k:=0;

       for I := 321 to qry_rclsc.RecordCount+320  do
    begin
        j:=i-320;

        if (j=6) or (J=12) or (j=18) or (j=24) or (j=30) or (j=36) then
        begin
        k:=(j div 6)-1;
        l:=(j-6*k)-1;
        end
        else
        begin
        k:=j div 6;
        l:=(j-6*K)-1;
        end;


      a:=qry_rclsc.FieldByName('hljld_name').AsString;
      b:=qry_rclsc.FieldByName('hljld_caption').AsString;
      b:=copy(b,pos('|',b)+1,length(b)-pos('|',b));
      g:=qry_rclsc.FieldByName('sx').asinteger;
      f[I]:=TLabel.Create(self);
      f[I].Name:='a'+a;
      f[I].Caption:=b;
      f[I].parent:=ScrollBox2;
      f[i].ShowHint:=True;
      f[I].hint:=b;
      f[i].Left:=l*200;
      f[i].top:= k*30+5;
      f[i].width:=73;
            if g=1 then
       begin
      o[I]:=TComboBox.Create(self);
      o[I].Name:='b'+a;
      o[I].text:='';
      o[I].parent:=ScrollBox2;
      o[I].Left:=F[i].Left+F[I].Width+5;
      o[I].width:=120;
      o[i].top:=k*30;
      o[i].AutoComplete:=False;
      o[i].OnKeyPress:=rclkjpress1;
      o[i].OnExit:=rclexit1;
      o[i].onchange:=rclchange1;
      o[i].OnEnter:=rclenter1;
       end
       else
       begin
      N[I]:=tedit.Create(self);
      N[I].Name:='b'+a;
      N[I].text:='';
      N[I].parent:=ScrollBox2;
      N[I].Left:=F[i].Left+F[I].Width+5;
      N[I].width:=120;
      N[i].top:=k*30;
      if a='yr' then
      begin
        groupbox5.left:=N[I].Left;
        groupbox5.top:=ScrollBox2.Top+N[I].top+30;
      end;
      if a='xm' then
        begin
          n[i].OnEnter:=xmenter;
          n[i].OnExit:=xmexit;
        end
        else
        begin
          n[i].OnEnter:=rclenter;
        end;
      n[i].OnKeyPress:=rclkjpress;
      n[i].OnExit:=rclexit;
      n[i].onchange:=rclchange;
       end;

      qry_rclsc.next;

    end;
       end;


      label9.Visible:=True;
      label9.Left:=0;
      label9.top:= m*30+5;
      label9.width:=120;
      Memo3.Visible:=True;
      memo3.left:=130;
      memo3.Top:=m*30+5;
      memo3.Height:=55;
      memo3.Width:=1070;
      Memo3.TabOrder:=30;
   ScrollBox3.Height:=memo3.Top+memo3.Height+5;
      Label6.Left:=0;
      Label6.top:= (k+1)*30+5;
      Label6.width:=73;
      crxx.left:=78;
      crxx.top:= (k+1)*30+5;
      crxx.width:=120;
      crxx.TabOrder:=30;
      bgdyl.left:=200;
      bgdyl.top:= (k+1)*30+5;
      bgdyl.width:=593;
      bgdyl.TabOrder:=31;
   ScrollBox2.Height:=bgdyl.Top+bgdyl.height+5;
     scrollbox2height:=ScrollBox2.Height;
     scrollbox3height:=ScrollBox3.Height;

end;
procedure Tfrm_twb2.xmenter(sender: TObject);
begin
  DBGridEh8.Visible:=True;
  DBGridEh8.left:=78;
  DBGridEh8.Top:=ScrollBox2.Top+20;
  sp_symcxs.close;
  sp_symcxs.Parameters.ParamByName('@zyh').value:=zy_zyh;
  sp_symcxs.Parameters.ParamByName('@zxsj').value:=formatdatetime('yyyymmdd',da1);
  sp_symcxs.Parameters.ParamByName('@syfzph').value:='';
  sp_symcxs.Parameters.ParamByName('@dyfs').value:=1;
  sp_symcxs.open;
end;

procedure Tfrm_twb2.rclexit(sender: TObject);

var s1,s:string;
var i:integer;
var tem1,tem3: string;
var tem2:integer;
begin

if ((sender as TEdit).Name<>'bxm') and ((sender as TEdit).Name<>'bbyl') and ((sender as TEdit).Name<>'bsyl') then
 begin
if POS('.',(sender as TEdit).text)>0  then
  begin
        application.MessageBox('请不要录入小数点！！', '提示', 0 + 48);
      (sender as tedit).Text:='';
      (sender as tedit).SetFocus;
  end;
 end;

  s1:=Trim((sender as TEdit).Text);
  tem2:=0;
  for i:=1 to length(s1) do
  begin
       if  (s1[i] in ['0'..'9','.'])then
       begin
         tem2:=tem2+1;
         if tem2=1 then
          begin
           tem1:=copy(s1,i,1);
           if tem1='.' then
           begin
             s:=s1+'录入有误';
             application.messagebox(PChar(s),'提示',16);
             (sender as tedit).Text:='';
             (sender as tedit).setfocus;
             Abort;
           end;
         end
         else
         if tem2=2 then
         begin
          tem3:=copy(s1,i,1);
          if (tem1='0') and (tem3<>'.') then
            begin
             s:=s1+'录入有误';
             application.messagebox(PChar(s),'提示',16);
             (sender as tedit).Text:='';
             (sender as tedit).setfocus;
             Abort;
           end;
          
         end
         else
         begin
           Abort;
         end;

       end;
  end;




end;

procedure Tfrm_twb2.rclexit1(sender: TObject);
var s1,s:string;
var i:integer;
var tem1,tem3: string;
var tem2:integer;
begin
if POS('.',(sender as tcombobox).text)>0  then
  begin
        application.MessageBox('请不要录入小数点！！', '提示', 0 + 48);
      (sender as tcombobox).Text:='';
      (sender as tcombobox).SetFocus;
  end;

    s1:=Trim((sender as tcombobox).Text);
  tem2:=0;
  for i:=1 to length(s1) do
  begin
       if  (s1[i] in ['0'..'9','.'])then
       begin
         tem2:=tem2+1;
         if tem2=1 then
          begin
           tem1:=copy(s1,i,1);
           if tem1='.' then
           begin
             s:=s1+'录入有误';
             application.messagebox(PChar(s),'提示',16);
             (sender as tcombobox).Text:='';
             (sender as tcombobox).setfocus;
             Abort;
           end;
         end
         else
         if tem2=2 then
         begin
          tem3:=copy(s1,i,1);
          if (tem1='0') and (tem3<>'.') then
            begin
             s:=s1+'录入有误';
             application.messagebox(PChar(s),'提示',16);
             (sender as tcombobox).Text:='';
             (sender as tcombobox).setfocus;
             Abort;
           end;
         end
         else
         begin
           Abort;
         end;

       end;
  end;

end;

procedure Tfrm_twb2.rclchange1(sender: TObject);
begin
if POS('.',(sender as tcombobox).text)>0  then
  begin
        application.MessageBox('请不要录入小数点！！', '提示', 0 + 48);
      (sender as tcombobox).Text:='';
      (sender as tcombobox).SetFocus;
  end;

end;

procedure Tfrm_twb2.rclenter(sender: TObject);
begin
DBGridEh8.Visible:=false;
groupbox5.Visible:=false;
if (sender as TEdit).Name='byr' then
begin
   groupbox5.Visible:=true;
   qry_yr.close;
   qry_yr.Open;
end;
end;

procedure Tfrm_twb2.rclenter1(sender: TObject);
begin
DBGridEh8.Visible:=false;
groupbox5.Visible:=false;
end;

procedure Tfrm_twb2.xmexit(sender: TObject);
begin
  if DBGridEh8.Focused=False then
  DBGridEh8.Visible:=False;
end;


procedure Tfrm_twb2.zilinenglionclick(sender:TObject);
 begin
      application.CreateForm(Tfrm_gwyspf, frm_gwyspf);
  try
  frm_gwyspf.a:='zilinengli';
  frm_gwyspf.zy_zyh:=zy_zyh;
    frm_gwyspf.ShowModal;

  finally
    frm_gwyspf.Free;
  end;

 end;

 procedure Tfrm_twb2.yachuangonclick(sender:TObject);
 begin
      application.CreateForm(Tfrm_gwyspf, frm_gwyspf);
  try
  frm_gwyspf.a:='yachuang';
  frm_gwyspf.zy_zyh:=zy_zyh;
    frm_gwyspf.ShowModal;
     if (yczf>=13) and (yczf<=16) then
      application.MessageBox('压疮中度危险患者,每周一进行1次评分','提示',mb_ok);
      if yczf<=12 then
       application.MessageBox('压疮重度及极重度患者，每日评估(可申报难免压疮)！！！','提示',mb_ok);
  finally
    frm_gwyspf.Free;
  end;

 end;

  procedure Tfrm_twb2.diedaoonclick(sender:TObject);
 begin
      application.CreateForm(Tfrm_gwyspf, frm_gwyspf);
  try
  frm_gwyspf.a:='diedao';
  frm_gwyspf.zy_zyh:=zy_zyh;
    frm_gwyspf.ShowModal;
    if ywsjzf<=3 then
      application.MessageBox('每周一动态评估 1 次','提示',mb_ok);
          if ywsjzf>=4 then
      application.MessageBox('每日动态评估 1 次并记录！！','提示',mb_ok);
  finally
    frm_gwyspf.Free;
  end;

 end;

   procedure Tfrm_twb2.dgtlfxonclick(sender:TObject);
 begin
      application.CreateForm(Tfrm_dgtlfx, frm_dgtlfx);
  try
    frm_dgtlfx.ShowModal;
  finally
    frm_dgtlfx.Free;
  end;

 end;

procedure Tfrm_twb2.scyygf;
var
i,n:Integer;
a,b:string;
begin
        for i := 1 to frm_twb2.ScrollBox3.ControlCount-1 do
      begin
      if (frm_twb2.ScrollBox3.controls[i] is TComboBox) then
      begin
       a:=(frm_twb2.ScrollBox3.Controls[i] as TComboBox).name;
       b:=Copy(a,2,10);
        adoquery4.close;
        adoquery4.SQL.clear;
        adoquery4.SQL.Add('select * from zybl_hljld_yygf where hljld_name=:hljld_name order by id');
        adoquery4.Parameters.ParamByName('hljld_name').Value:=b;
        Frm_func.open_dataset(ADOQuery4);
        adoquery4.First;
          for n := 0 to adoquery4.RecordCount - 1 do
              begin
                 (frm_twb2.ScrollBox3.Controls[i] as TComboBox).Items.Add(adoquery4.FieldByName('yy').AsString);
                 adoquery4.Next;
              end;

      end;
      end;

              for i := 1 to frm_twb2.ScrollBox2.ControlCount-1 do
      begin
      if (frm_twb2.ScrollBox2.controls[i] is TComboBox) then
      begin
       a:=(frm_twb2.ScrollBox2.Controls[i] as TComboBox).name;
       b:=Copy(a,2,10);
        adoquery4.close;
        adoquery4.SQL.clear;
        adoquery4.SQL.Add('select * from zybl_hljld_yygf where hljld_name=:hljld_name order by id');
        adoquery4.Parameters.ParamByName('hljld_name').Value:=b;
        Frm_func.open_dataset(ADOQuery4);
        adoquery4.First;
          for n := 0 to adoquery4.RecordCount - 1 do
              begin
                 (frm_twb2.ScrollBox2.Controls[i] as TComboBox).Items.Add(adoquery4.FieldByName('yy').AsString);
                 adoquery4.Next;
              end;

      end;
      end;



end;

procedure Tfrm_twb2.Button10Click(Sender: TObject);
begin
ADOQuery3.close;
ADOQuery3.SQL.Clear;
ADOQuery3.SQL.Add('update zybl_hljld_yygf set hljld_name=:hljld_name,lb=:lb,yy=:yy where id=:id');
ADOQuery3.Parameters.ParamByName('hljld_name').Value:=Trim(Edit1.text);
ADOQuery3.Parameters.ParamByName('lb').Value:=Trim(Edit2.text);
ADOQuery3.Parameters.ParamByName('yy').Value:=Trim(memo2.text);
ADOQuery3.Parameters.ParamByName('id').Value:=qry_bqgc.FieldByName('id').AsString;
ADOQuery3.ExecSQL;

    qry_bqgc.Close;
    qry_bqgc.Parameters.ParamByName('ksdm').value:=pub_ksdm;
    qry_bqgc.Open;
    Button10.Enabled:=False;
end;

procedure Tfrm_twb2.Button12Click(Sender: TObject);
begin
Button12.Enabled:=false;
PageControl1.ActivePage:=TabSheet7;
sp_sxtx.close;
sp_sxtx.Parameters.ParamByName('@ksdm').Value:=pub_ksdm;
sp_sxtx.open;
Button12.Enabled:=true;
end;

procedure Tfrm_twb2.Button1Click(Sender: TObject);
var
sj:string;
i:Char;
begin
    qry_zjsj.SQL.Clear;
    qry_zjsj.SQL.Add('update zybl_hljld_rcl set zjbz=0 where zyh=:zyh and zjbz=2 and jlrq>=:ksrq and jlrq<=:jsrq ');
    qry_zjsj.Parameters.ParamByName('zyh').Value:=zy_zyh;
    qry_zjsj.Parameters.ParamByName('ksrq').Value:=cxDateEdit1.Date;
    qry_zjsj.Parameters.ParamByName('jsrq').Value:=cxDateEdit2.Date;
    qry_zjsj.ExecSQL;

sj:=Trim(zjy.text);
sj:=Copy(sj,1,Length(sj)-4);
sj:=StringReplace (sj, '小时', 'h', [rfReplaceAll]);
sj:=StringReplace (sj, '分钟', 'min', [rfReplaceAll]);
sj:=StringReplace (sj, '分', 'min', [rfReplaceAll]);
sj:=StringReplace (sj, '秒', 's', [rfReplaceAll]);

sp_rclzj.close;
sp_rclzj.Parameters.ParamByName('@zyh').Value:=zy_zyh;
sp_rclzj.Parameters.ParamByName('@ksrq').Value:=cxDateEdit1.Date;
sp_rclzj.Parameters.ParamByName('@jsrq').Value:=cxDateEdit2.Date;
sp_rclzj.Parameters.ParamByName('@lx').Value:=sj;
sp_rclzj.Parameters.ParamByName('@zjy').Value:=Trim(zjy.text);
sp_rclzj.Parameters.ParamByName('@czyxm').Value:=pub_czyxm;
Frm_func.exec_datasetproc(sp_rclzj);

 i:=#13;
 brxm.onkeypress(brxm,i);
Panel6.Visible:=False;

{    qry_rcl.Close;
    qry_rcl.SQL.Clear;
    qry_rcl.SQL.Add('select * from zybl_hljld_rcl where zyh=:zyh order by jlrq');
    qry_rcl.Parameters.ParamByName('zyh').value:=zy_zyh;
    Frm_func.open_dataset(qry_rcl);    }


end;

procedure Tfrm_twb2.Button2Click(Sender: TObject);
var
i:Integer;
begin
     if qry_hljld_xmdz.RecordCount>0 then
        begin
          qry_hljld_xmdz.Close;
          qry_hljld_xmdz.SQL.Clear;
          qry_hljld_xmdz.SQL.Add('delete from zybl_hljld_xmdz where ksdm=:ksdm and id<100');
          qry_hljld_xmdz.Parameters.ParamByName('ksdm').Value:=pub_ksdm;
          Frm_func.exec_dataset_qry(qry_hljld_xmdz);
        end;

  for i := 1 to sp_hljldqbxm.recordcount do
  begin
        sp_hljldqbxm.Locate('id', i, [loCaseInsensitive]);
        if DBGridEh5.Fields[3].Text<>'' then
       begin
        if StrToInt(dbgrideh5.Fields[3].Text)>1 then
           begin
      ad_hljld_xmdz.Close;
      ad_hljld_xmdz.CommandText:='select * from zybl_hljld_xmdz where ksdm=:ksdm';
      ad_hljld_xmdz.Parameters.ParamByName('ksdm').Value:=pub_ksdm;
      Frm_func.open_dataset(ad_hljld_xmdz);
      ad_hljld_xmdz.insert;
      ad_hljld_xmdz['id']:=sp_hljldqbxm.FieldByName('id').AsString;
      ad_hljld_xmdz['hljld_mc']:=sp_hljldqbxm.FieldByName('hljld_mc').AsString;
      ad_hljld_xmdz['hljld_name']:=sp_hljldqbxm.FieldByName('hljld_name').AsString;
      ad_hljld_xmdz['hljld_caption']:=sp_hljldqbxm.FieldByName('hljld_caption').AsString;
      ad_hljld_xmdz['xh']:=dbgrideh5.Fields[3].Text ;
      if DBGridEh5.Fields[2].Text='' then
           begin
             ad_hljld_xmdz['kd']:=30 ;
           end
           else
           begin
       ad_hljld_xmdz['kd']:=dbgrideh5.Fields[2].Text ;
           end;
      ad_hljld_xmdz['sx']:=sp_hljldqbxm.FieldByName('sx').AsInteger;
      ad_hljld_xmdz['ksdm']:=pub_ksdm;
      ad_hljld_xmdz['czy']:=pub_czydm;
      Frm_func.post_dataset(ad_hljld_xmdz);
           end;
       end;
  end;
Application.MessageBox('保存成功，请重新进入页面刷新','提示',MB_OK);
frm_twb2.Close;
end;

procedure Tfrm_twb2.Button3Click(Sender: TObject);
var
i:Integer;
begin
     if qry_rclsc.RecordCount>0 then
        begin
          qry_rclsc.Close;
          qry_rclsc.SQL.Clear;
          qry_rclsc.SQL.Add('delete from zybl_hljld_xmdz where ksdm=:ksdm and id>=100');
          qry_rclsc.Parameters.ParamByName('ksdm').Value:=pub_ksdm;
         Frm_func.exec_dataset_qry(qry_rclsc) ;
        end;

  for i := 100 to sp_rclqbxm.recordcount+99 do
  begin
        sp_rclqbxm.Locate('id', i, [loCaseInsensitive]);
        if StrToInt(dbgrideh7.Fields[3].Text)>1 then
           begin
      ad_hljld_xmdz.Close;
      ad_hljld_xmdz.CommandText:='select * from zybl_hljld_xmdz where ksdm=:ksdm';
      ad_hljld_xmdz.Parameters.ParamByName('ksdm').Value:=pub_ksdm;
      Frm_func.open_dataset(ad_hljld_xmdz);
      ad_hljld_xmdz.insert;
      ad_hljld_xmdz['id']:=sp_rclqbxm.FieldByName('id').AsString;
      ad_hljld_xmdz['hljld_mc']:=sp_rclqbxm.FieldByName('hljld_mc').AsString;
      ad_hljld_xmdz['hljld_name']:=sp_rclqbxm.FieldByName('hljld_mc').AsString;
      ad_hljld_xmdz['hljld_caption']:=dbgrideh7.Fields[0].Text ;
      ad_hljld_xmdz['xh']:=dbgrideh7.Fields[3].Text ;
      if DBGridEh7.Fields[2].Text='' then
           begin
             ad_hljld_xmdz['kd']:=30 ;
           end
           else
           begin
       ad_hljld_xmdz['kd']:=dbgrideh7.Fields[2].Text ;
           end;
      ad_hljld_xmdz['sx']:=sp_rclqbxm.FieldByName('sx').AsInteger;
      ad_hljld_xmdz['ksdm']:=pub_ksdm;
      ad_hljld_xmdz['czy']:=pub_czydm;
      Frm_func.post_dataset(ad_hljld_xmdz);
           end;
  end;
Application.MessageBox('保存成功，请重新进入页面刷新','提示',MB_OK);
frm_twb2.Close;
end;

procedure Tfrm_twb2.Button4Click(Sender: TObject);
var
s:string;
ss:string;
begin
    application.CreateForm(Tfrm_hljlddyrq,frm_hljlddyrq);
    frm_hljlddyrq.lb:=1;
    try
      frm_hljlddyrq.zy_zyh:=zy_zyh;
      frm_hljlddyrq.showmodal;
    finally
      frm_hljlddyrq.Free;
    end;

 ad_cg.Last;

   s:='姓名:' + ad_cg.FieldByName('brxm').AsString+' 性别:' + ad_cg.FieldByName('brxb').AsString+' 年龄:' + ad_cg.FieldByName('brnl').AsString
    +' 科别:' + ad_cg.FieldByName('brks').AsString+ ' 病床:' + ad_cg.FieldByName('bch').AsString+' 住院号:' + sp_cx_zybrjbqk.FieldByName('tmh').AsString
    +' 入院诊断:' +sp_cx_zybrjbqk.fieldbyname('ryzd').asstring;


PrintDBGridEh1.DBGridEh:=DBGridEh4;
PrintDBGridEh1.Title.Text:=pub_yymc+'护理记录单（一）';
PrintDBGridEh1.PageHeader.LeftText.Clear;
PrintDBGridEh1.PageHeader.LeftText.Add(s);
PrintDBGrideh1.PageHeader.Font.Name:='宋体';
PrintDBGrideh1.PageHeader.Font.Size:=10;
PrintDBGrideh1.PageHeader.RightText.Clear;
//PrintDBGrideh1.PageHeader.RightText.text:=formatdatetime('yyyy-mm-dd hh:mm:ss',Frm_func.curr_date);
PrintDBGridEh1.PageFooter.CenterText.Text:='第     页';
PrintDBGridEh1.PageFooter.rightText.Text:='签名                                         ';
//PrintDBGridEh1.PrinterSetupDialog;
if hljlddyfs=true then
begin
 PrinterPreview.Orientation:=poPortrait;
 PrintDBGridEh1.Title.Text:=pub_yymc+'专项监测记录单';
 DBGridEh4.RowHeight:=20;
end
else
begin
 DBGridEh4.RowHeight:=20;
PrinterPreview.Orientation:=poLandscape;
end;

PrintDBGridEh1.Preview;



{if sscs>0 then
   begin
 s:='姓名:' + ad_cg.FieldByName('brxm').AsString+'    性别:' + ad_cg.FieldByName('brxb').AsString+'   年龄:' + ad_cg.FieldByName('brnl').AsString
    +'   科别:' + ad_cg.FieldByName('brks').AsString+ '   病床:' + ad_cg.FieldByName('bch').AsString+'   住院号:' + sp_cx_zybrjbqk.FieldByName('tmh').AsString
    +'  手术后第'+ad_cg.FieldByName('ssts').asstring+'天'+'   诊断:' +sp_cx_zybrjbqk.fieldbyname('ryzd').asstring;
   end
   else
   begin
   s:='姓名:' + ad_cg.FieldByName('brxm').AsString+'    性别:' + ad_cg.FieldByName('brxb').AsString+'   年龄:' + ad_cg.FieldByName('brnl').AsString
    +'   科别:' + ad_cg.FieldByName('brks').AsString+ '   病床:' + ad_cg.FieldByName('bch').AsString+'   住院号:' + sp_cx_zybrjbqk.FieldByName('tmh').AsString
    +'   诊断:' +sp_cx_zybrjbqk.fieldbyname('ryzd').asstring;
   end;
 mc:=Trim(ComboBox2.text)+'.fr3';
 frx_hljld.LoadFromFile(mc);
 tfrxmemoview(frx_hljld.findobject('header')).Memo.Text :=s;
 frx_hljld.PrepareReport(true);
 frx_hljld.ShowReport();    }

end;

procedure Tfrm_twb2.Button5Click(Sender: TObject);
begin
panel6.Visible:=false;
end;

procedure Tfrm_twb2.Button6Click(Sender: TObject);
var
i,a:Integer;

begin
a:=Memo1.Lines.Count;
      ADOQuery1.Close;
      ADOQuery1.sql.clear;
      ADOQuery1.SQL.Add('select * from zybl_hljld_xmdz where hljld_caption=:hljld_caption');
      ADOQuery1.Parameters.ParamByName('hljld_caption').Value:=Trim(ComboBox1.Text);
      Frm_func.open_dataset(adoquery1);
      ADOQuery1.edit;
      ADOQuery1['sx']:=1;
      Frm_func.post_dataset(ADOQuery1);
for i := 0 to a - 1 do
     begin


      ADOQuery3.Close;
      ADOQuery3.SQL.clear;
      ADOQuery3.sql.Add('insert into zybl_hljld_yygf(hljld_name,yy)values(:hljld_name,:yy)') ;
      ADOQuery3.Parameters.ParamByName('hljld_name').Value:=ADOQuery1.FieldByName('hljld_name').AsString;
      ADOQuery3.Parameters.ParamByName('yy').Value:=Trim(Memo1.Lines.Strings[i]);
      Frm_func.exec_dataset_qry(ADOQuery3);


     end;
end;

procedure Tfrm_twb2.Button7Click(Sender: TObject);
begin
    application.CreateForm(Tfrm_select,frm_select);
    frm_select.select_grideh:=DBGridEh4;
    try
      frm_select.showmodal;
    finally
      frm_select.Free;
    end;
end;

procedure Tfrm_twb2.createhtml;
var
AExportFilter:TQRGHTMLDocumentFilter;
stream, stream1: TADOBlobStream;
filename:string;
Bitmap:TBitmap;
jpeg1:Tjpegimage;
begin
if printer.Printers.Count>0 then
 begin
  filename := GetCurrentDir + '\' + 'twb.html';
  qrimage1.Top:=0;
  qrimage1.left:=0;
  qrimage1.Height:=941;
  qrimage1.Width:=661;
  image.Picture.SaveToFile(buffer+'\1.bmp');
  qrimage1.Picture.LoadFromFile(buffer+'\1.bmp');
  qrimage1.Stretch:=true;
  AExportFilter := TQRGHTMLDocumentFilter.Create(filename);
  try
   AExportFilter.SetHTMLBody(clWhite, '', 'alink="red"');
   AExportFilter.TransparentTextBG := True;
   AExportFilter.MultiPage := False;
   AExportFilter.PageLinks := False;
   QuickRep1.ExportToFilter(AExportFilter)
  finally
   AExportFilter.Free;
  end;
  try
   ad_twjlhtml.close;
   ad_twjlhtml.Parameters.ParamByName('zyh').Value:= zy_zyh;
   Frm_func.open_dataset(ad_twjlhtml);
   if ad_twjlhtml.IsEmpty then
    ad_twjlhtml.append
   else
    ad_twjlhtml.Edit;
   ad_twjlhtml['zyh']:=zy_zyh;
   stream1 := TADOBlobStream.Create(ad_twjlhtml.FieldByName('twjlwj') as TBlobField, bmWrite);
   stream1.LoadFromFile(filename);
   finally
    stream1.free;
   end;
     ad_twjlhtml.Post;
     ad_twjlhtml.close;
 end;
end;

procedure Tfrm_twb2.displayvalue;
var i: integer;
clbz:boolean;
AExportFilter:TQRGHTMLDocumentFilter;
stream, stream1: TADOBlobStream;
filename:string;
Bitmap:TBitmap;
jpeg1:Tjpegimage;
begin
    pub_sfhtt:=sp_cx_zybrjbqk.FieldByName('sfhtt').asboolean;
    dm_data.qry_pub.Close;
    dm_data.qry_pub.SQL.Clear;
    dm_data.qry_pub.SQL.Add('select * from sys_bqzyfl where bqdm='+#39+pub_bqdm+#39);
    dm_data.qry_pub.Open;
    Frm_func.open_dataset(dm_data.qry_pub);
    clbz:=false;
     clbz:=dm_data.qry_pub.locate('bqzydm',sp_cx_zybrjbqk.FieldByName('ksdm').AsString,[]);

     if not clbz then
      begin
       if application.MessageBox(pchar('请注意：'+char(13)+'病人：'+sp_cx_zybrjbqk.FieldByName('brxm').AsString+'是'+char(13)+'     '+
        sp_cx_zybrjbqk.fieldbyname('ksmc').asstring+'病人，是否继续处理？'),'提示',MB_ICONQUESTION+mb_yesno+mb_defbutton2)=idyes then
        clbz:=true
       else
        clbz:=false;
      end
     else
      clbz:=true;
 if clbz then
  begin
    valuechange := false;
    brxm.Text := sp_cx_zybrjbqk.fieldbyname('brxm').asstring;
    ksmc.Text := sp_cx_zybrjbqk.fieldbyname('ksmc').asstring;
    ryrq.datetime := sp_cx_zybrjbqk.fieldbyname('ryrq').asdatetime;
    bch.Text := sp_cx_zybrjbqk.fieldbyname('bch').asstring;
    nl.Text := sp_cx_zybrjbqk.fieldbyname('brnl').asstring;
    lbmc.Text := sp_cx_zybrjbqk.fieldbyname('lbmc').asstring;
    brzd.Text := sp_cx_zybrjbqk.fieldbyname('ryzd').asstring;
    zy_zyh := sp_cx_zybrjbqk.fieldbyname('zyh').asstring;
    panel1.enabled := false;
    ad_maxrq.Close;
    ad_maxrq.CommandText := 'select min(jlrq) jlrq from zybl_rcjl where zyh=' + #39 + zy_zyh + #39;
    Frm_func.open_dataset(ad_maxrq);
    if not ad_maxrq.IsEmpty then
    begin
        minrq := ad_maxrq.fieldbyname('jlrq').asdatetime;
        nextrq := minrq + 6;
      if minrq=0 then
      begin
       ad_maxrq.Close;
       ad_maxrq.CommandText := 'select min(jlrq) jlrq from zybl_cgjl where zyh=' + #39 + zy_zyh + #39;
       Frm_func.open_dataset(ad_maxrq);
       if not ad_maxrq.IsEmpty then
        begin
        minrq := ad_maxrq.fieldbyname('jlrq').asdatetime;
        nextrq := minrq + 6;
        end;
      end;
    end;
    ad_maxrq.Close;
    ad_maxrq.CommandText := 'select max(jlrq) jlrq from zybl_rcjl where zyh=' + #39 + zy_zyh + #39;
    Frm_func.open_dataset(ad_maxrq);
    if not ad_maxrq.IsEmpty then
    maxrq := ad_maxrq.fieldbyname('jlrq').asdatetime
    else
    maxrq:=minrq;
    ad_maxrq.Close;
    ad_maxrq.CommandText := 'select max(jlrq) jlrq from zybl_cgjl where zyh=' + #39 + zy_zyh + #39;
    Frm_func.open_dataset(ad_maxrq);
    if not ad_maxrq.IsEmpty then
     begin
      if maxrq<ad_maxrq.fieldbyname('jlrq').asdatetime then
      maxrq:= ad_maxrq.fieldbyname('jlrq').asdatetime;
     end;
    if maxrq<minrq then
    maxrq:=minrq;
    ksrq:=minrq;
    ad_tw.Close;
    ad_tw.Parameters.ParamByName('zyh').Value := zy_zyh;
    ad_tw.Parameters.ParamByName('ksrq').Value := formatdatetime('yyyymmdd', minrq);
    ad_tw.Parameters.ParamByName('jsrq').Value := formatdatetime('yyyymmdd', maxrq);
    Frm_func.open_dataset(ad_tw);
    if ad_tw.isempty then
    lrrq.setfocus;
    ad_cgjl.Close;
    ad_cgjl.Parameters.ParamByName('zyh').value:=zy_zyh;
    Frm_func.open_dataset(ad_cgjl);
    ad_cg.Close;
    ad_cg.Parameters.ParamByName('zyh').Value := zy_zyh;
    ad_cg.Parameters.ParamByName('ksrq').Value := formatdatetime('yyyymmdd', minrq);
    ad_cg.Parameters.ParamByName('jsrq').Value := formatdatetime('yyyymmdd', maxrq);
    Frm_func.open_dataset(ad_cg);
    ad_tw.Last;
    ad_cgjl.Last;



//    if not ad_maxrq.IsEmpty then
  //  begin
        if maxrq <> 0 then
         begin
          da1 := maxrq;
          display_hljl;
         end
        else
        begin
          da1 := sp_cx_zybrjbqk.fieldbyname('ryrq').AsDateTime;
          lrrq.date := da1;
          sd.Time:=strtodatetime(pub_twbqssj);
          display_hljl_null;
          tw0.setfocus;
        end;
       createhtml;
  end
  else
  begin
    ad_tw.close;
    ad_cg.close;
    ad_cgjl.close;
    sp_cx_zybrjbqk.close;
    displaynull;
  end;

end;

procedure Tfrm_twb2.mb0Exit(Sender: TObject);
begin
mb0.Font.color:=clWindowText;
if (mb0.Text<>'') and (mb0.Text<>'0') then
   begin
    if (strtofloat(mb0.text) > 150) or (strtofloat(mb0.text) < 50) then
    begin
       mb0.Font.color:=clred;
    end
   end;
if ((hmb.Text='0') or (hmb.text='')) and sfwz=true then
       hmb.text:=mb0.text;
end;

procedure Tfrm_twb2.mb0KeyPress(Sender: TObject; var Key: Char);
begin
    if sfkxg then
    begin
    if key in ['0'..'9', '.'] then
    begin
        clsd[(sender as Tedit).tag div 4] := 1;
        valuechange := true;
    end
    else
        if key = #13 then
        begin
         if (sender as Tedit).Name='mb0' then
          if (xl0.Text='0') or (xl0.text='') then
           xl0.text:=mb0.text;
           selectnext(activecontrol, true, true)
        end
        else
    end
   else
   begin
   key:=char(0);
   dm_data.qry_pub.Close;
   dm_data.qry_pub.SQL.Text:='select * from sys_czy where dm='+#39+ad_tw.fieldbyname('czy').asstring+#39;
   Frm_func.open_dataset(dm_data.qry_pub);
   application.MessageBox(pchar('本次体温记录由工号'+ad_tw.fieldbyname('czy').asstring+':'+trim(dm_data.qry_pub.fieldbyname('mc').asstring)+'录入，只能由录入者本人修改！！'),'提示',mb_ok);
   dm_data.qry_pub.Close;
   end;
end;

procedure Tfrm_twb2.Memo3DblClick(Sender: TObject);
begin
  str_bqgc := '';
        application.CreateForm(Tfrm_bqgcyy, frm_bqgcyy);
  try
    frm_bqgcyy.ShowModal;
  finally
    frm_bqgcyy.Free;
  end;
 memo3.Lines.Add(str_bqgc);
 memo3.Perform(WM_VSCROLL, SB_TOP, 0);
 memo3.Perform(EM_SETSEL, 0, 0);
 memo3.SetFocus;
end;

procedure Tfrm_twb2.Memo3KeyPress(Sender: TObject; var Key: Char);
begin
  if qry_hljldnr.Locate('jlrq', strtodatetime(formatdatetime('yyyy-mm-dd ', lrrq.date) + formatdatetime('hh:mm:ss',sd.time)), [loCaseInsensitive]) then
   begin
     if (qry_hljldnr.FieldByName('czy').AsString<>pub_czyxm) and (pub_czyzw<>'04') then
       begin
   key:=char(0);
   dm_data.qry_pub.Close;
   dm_data.qry_pub.SQL.Text:='select * from sys_czy where dm='+#39+qry_hljldnr.fieldbyname('czy').asstring+#39;
   Frm_func.open_dataset(dm_data.qry_pub);
   application.MessageBox(pchar('本次护理记录单记录由'+qry_hljldnr.fieldbyname('czy').asstring+'录入，只能由录入者本人修改！！'),'提示',mb_ok);
   dm_data.qry_pub.Close;
       end;
   end;
end;

procedure Tfrm_twb2.ryrq1Enter(Sender: TObject);
begin
if ad_cgjl.isempty then
 ryrq1.date:=da1;
end;

procedure Tfrm_twb2.ryrq1Exit(Sender: TObject);
begin
{if ryrq1.Text<>'1899-12-30' then
begin
qry_checksj.close;
qry_checksj.sql.clear;
qry_checksj.sql.Add('select * from zybl_cgjl where zyh=:zyh1 and convert(varchar(10),ryrq,120)<>:ryrq2');
qry_checksj.Parameters.ParamByName('zyh1').Value:=zy_zyh;
qry_checksj.Parameters.ParamByName('ryrq2').Value:='1899-12-30';
qry_checksj.Open;
if qry_checksj.RecordCount>0 then
begin
   if FormatDateTime('yyyy-mm-dd',lrrq.Date)<>formatdatetime('yyyy-mm-dd',qry_checksj.FieldByName('ryrq').AsDateTime) then
   begin
     Application.MessageBox('该病人已经有入院时间！！', '提示', 0 + 16);
     ryrq1.Date:=0;
   end;
   
end;
end;  }
end;

procedure Tfrm_twb2.ryrq1KeyPress(Sender: TObject; var Key: Char);
var
i:Integer;
begin
if key=#13 then
   // selectnext(activecontrol, true, true)
n[321].SetFocus;
end;

procedure Tfrm_twb2.ScrollBox2Click(Sender: TObject);
begin
ScrollBox2.SetFocus;
end;

procedure Tfrm_twb2.ScrollBox2MouseWheelDown(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
ScrollBox2.vertScrollBar.Position := ScrollBox2.vertScrollBar.Position + 25 ;
end;

procedure Tfrm_twb2.ScrollBox2MouseWheelUp(Sender: TObject; Shift: TShiftState;
  MousePos: TPoint; var Handled: Boolean);
var
posi:integer;
begin
posi := ScrollBox2.vertScrollBar.Position - 25 ;
if ScrollBox2.vertScrollBar.Position < 0 then posi := 0;
ScrollBox2.vertScrollBar.Position := posi;
end;

procedure Tfrm_twb2.ScrollBox3Click(Sender: TObject);
begin
ScrollBox3.SetFocus;
end;

procedure Tfrm_twb2.ScrollBox3MouseWheelDown(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
ScrollBox3.vertScrollBar.Position := ScrollBox3.vertScrollBar.Position + 25 ;
end;

procedure Tfrm_twb2.ScrollBox3MouseWheelUp(Sender: TObject; Shift: TShiftState;
  MousePos: TPoint; var Handled: Boolean);
var
posi:integer;
begin
posi := ScrollBox3.vertScrollBar.Position - 25 ;
if ScrollBox3.vertScrollBar.Position < 0 then posi := 0;
ScrollBox3.vertScrollBar.Position := posi;
end;

procedure Tfrm_twb2.sdExit(Sender: TObject);
var
i:Integer;
name1:string;
begin
if not ad_tw.Locate('jlrq', strtodatetime(formatdatetime('yyyy-mm-dd ', da1) + formatdatetime('hh:mm:ss',sd.time)), [loCaseInsensitive]) then
begin
Display_hljl_null;
end
else
begin
tw0.text := floattostr(ad_tw.FieldByName('tw').asfloat);
mb0.text := floattostr(ad_tw.FieldByName('mb').asfloat);
hx0.text := floattostr(ad_tw.FieldByName('hx').asfloat);
xl0.text := floattostr(ad_tw.FieldByName('xl').asfloat);
tt0.text := floattostr(ad_tw.FieldByName('tt').asfloat);
    if ad_tw.FieldByName('sm').asstring='物理降温' then
    wljw.Checked:=true
    else
    wljw.checked:=false;
    hxj.Checked:=ad_tw.FieldByName('syhxj').asboolean;
    cwfs.text:=ad_tw.FieldByName('twfs').asstring;
    wcyy.text:=ad_tw.FieldByName('jcyy').asstring;
end;
if qry_hljldnr.Active then
begin
if qry_hljldnr.locate('jlrq', strtodatetime(formatdatetime('yyyy-mm-dd ', da1) + formatdatetime('hh:mm:ss',sd.time)), [loCaseInsensitive]) then
begin
  qry_hljld_xmdz.first;
 for i := 201 to qry_hljld_xmdz.RecordCount + 200 do
 begin
     name1:=Copy(c[i].Name,2,10) ;
     d[i].text:=qry_hljldnr.FieldByName(name1).AsString;
     H[I].text:=qry_hljldnr.FieldByName(name1).AsString;
 end;
htw.text := qry_hljldnr.FieldByName('tw').AsString;
hmb.text := qry_hljldnr.FieldByName('mb').AsString;
hhx.text := qry_hljldnr.FieldByName('hx').AsString;
hxl.text := qry_hljldnr.FieldByName('xl').AsString;
hxy.Text :=qry_hljldnr.FieldByName('xy').AsString;
httpf.text := qry_hljldnr.FieldByName('ttpf').AsString;
Memo3.text:=qry_hljldnr.FieldByName('bqgc').AsString;


end
else
begin
    qry_hljld_xmdz.first;
 for i := 201 to qry_hljld_xmdz.RecordCount + 200 do
 begin
     name1:=Copy(c[i].Name,2,10) ;
     d[i].text:='';
     H[I].text:='';
 end;
htw.text := '';
hmb.text := '';
hhx.text := '';
hxl.text := '';
hxy.Text := '';
httpf.text := '';
Memo3.text:='';
end;
end;
if qry_rcl.Active then
begin
if qry_rcl.locate('jlrq', strtodatetime(formatdatetime('yyyy-mm-dd ', da1) + formatdatetime('hh:mm:ss',sd.time)), [loCaseInsensitive]) then
begin
   qry_rclsc.first;
 for i := 321 to qry_rclsc.RecordCount + 320 do
 begin
     name1:=Copy(F[i].Name,2,10) ;
     n[i].text:=qry_rcl.FieldByName(name1).AsString;
     o[i].text:=qry_rcl.FieldByName(name1).AsString;
 end;
 bgdyl.text:=qry_rcl.FieldByName('gdyl').AsString;
end
else
begin
      qry_rclsc.first;
 for i := 321 to qry_rclsc.RecordCount + 320 do
 begin
     name1:=Copy(F[i].Name,2,10) ;
     n[i].text:='';
     o[i].text:='';
 end;
 bgdyl.text:='';
end;
end;
//sfkxg:=True;


sp_pdwz.Close;
sp_pdwz.Parameters.ParamByName('@zyh').value:=zy_zyh;
sp_pdwz.Parameters.ParamByName('@rq').value:=formatdatetime('yyyymmdd',lrrq.date);
sp_pdwz.Parameters.ParamByName('@return').value:='';
sp_pdwz.ExecProc;

if sp_pdwz.Parameters.ParamByName('@return').value='y' then
begin
  sfwz:=True;
end
else
begin
   sfwz:=false;
end;


end;

procedure Tfrm_twb2.sdKeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  tw0.SetFocus;

end;

procedure Tfrm_twb2.tt0Exit(Sender: TObject);
begin
if tt0.text<>'' then
  begin
if (StrToInt(tt0.text)>=4) and (StrToInt(tt0.text)<=6)  then
  Application.MessageBox('中度疼痛患者;每日筛查4次(10点、14点、18点、22点)','提示',MB_OK);
  if (StrToInt(tt0.text)>=1) and (StrToInt(tt0.text)<=3) then
  Application.MessageBox('轻度疼痛;每日常规疼痛筛查评估2次(10点、14点)','提示',MB_OK);
  if (StrToInt(tt0.text)>=7) and (StrToInt(tt0.text)<=10)  then
  Application.MessageBox('重度疼痛患者;立即报告医生进行处理和记录,并按要求复评和连续进行疼痛评估直至评分≤3分，再转为常规评估每日2次','提示',MB_OK);

   if ((httpf.Text='0') or (httpf.text='')) and sfwz=True then
       httpf.text:=tt0.text;
  end;

end;

procedure Tfrm_twb2.tw0Exit(Sender: TObject);
begin
tw0.Font.color:=clWindowText;
if (tw0.Text<>'') and (tw0.Text<>'0') then
   begin
    if (strtofloat(tw0.text) >=39) or (strtofloat(tw0.text) <=35) then
    begin
        if application.MessageBox('体温数据异常，是否确认输入？', '提示', MB_YESNO + MB_ICONQUESTION) = idno then
           (sender as tedit).SetFocus;
           tw0.Font.color:=clred;
    end

   end;
if tw0.Text<>'0' then
  begin
if ((htw.Text='0') or (htw.text='')) and sfwz=true then
       htw.text:=tw0.text;
  end;
end;

procedure Tfrm_twb2.tzKeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then
  selectnext(activecontrol, true, true)

end;

procedure Tfrm_twb2.xblKeyPress(Sender: TObject; var Key: Char);
begin
    if key in ['0'..'9', '.','-'] then
    begin
        clsd[(sender as Tedit).tag div 4] := 1;
        valuechange := true;
    end
    else
        if key = #13 then
        begin
         if (sender as Tedit).Name='mb0' then
          if (xl0.Text='0') or (xl0.text='') then
           xl0.text:=mb0.text;
           selectnext(activecontrol, true, true)
        end

end;

procedure Tfrm_twb2.xl0Exit(Sender: TObject);
begin
xl0.Font.color:=clWindowText;
if (xl0.Text<>'') and (xl0.Text<>'0') then
   begin
    if (strtofloat(xl0.text) > 150) or (strtofloat(xl0.text) < 50) then
    begin
       xl0.Font.color:=clred;
    end

   end;
   if ((hxl.Text='0') or (hxl.text='')) and sfwz=true then
       hxl.text:=xl0.text;
end;

procedure Tfrm_twb2.xyExit(Sender: TObject);
begin
   if ((hxy.Text='0') or (hxy.text='')) and sfwz=true then
       hxy.text:=xy.text;
end;

procedure Tfrm_twb2.xyKeyPress(Sender: TObject; var Key: Char);
begin
   if key = #13 then
      selectnext(activecontrol, true, true)
    else
     begin
      clsd[(sender as Tedit).tag div 4] := 1;
      valuechange := true;
     end
end;

procedure Tfrm_twb2.zyxzChange(Sender: TObject);
begin
  if firstshow then
  begin
    sp_twbr.Close;
    sp_twbr.Parameters.ParamByName('@bqdm').Value := trim(pub_bqdm);
    if zyxz.Text='全部' then
    sp_twbr.Parameters.ParamByName('@ksdm').value:=''
    else
    sp_twbr.Parameters.ParamByName('@ksdm').value:=copy(zyxz.Text,1,4);
     sp_twbr.Parameters.ParamByName('@ysorhl').value:=0;
    Frm_func.open_dataset(sp_twbr);
  end;
end;

procedure Tfrm_twb2.ToolButton5Click(Sender: TObject);
begin
    if (ad_tw.Active) and (ad_cg.Active) then
    begin
        if (ad_tw.RecordCount > 0) or (ad_cg.RecordCount>0) then
        begin
            ksrq := minrq;
            nextrq := minrq + 6;
{            ad_tw.Close;
            ad_tw.Parameters.ParamByName('zyh').Value := zy_zyh;
            ad_tw.Parameters.ParamByName('ksrq').Value := formatdatetime('yyyymmdd', ksrq);
            ad_tw.Parameters.ParamByName('jsrq').Value := formatdatetime('yyyymmdd', nextrq);
            ad_tw.Open;

            ad_cg.Close;
            ad_cg.Parameters.ParamByName('zyh').Value := zy_zyh;
            ad_cg.Parameters.ParamByName('ksrq').Value := formatdatetime('yyyymmdd', ksrq);
            ad_cg.Parameters.ParamByName('jsrq').Value := formatdatetime('yyyymmdd', nextrq);
            ad_cg.Open; }
            drawxy( frm_twb2.tabsheet2.width, frm_twb2.tabsheet2.Height);
            image.Width := 941;
            image.height := 661;
            drawline('体温', 'tw', 40, 200, m_height * 10, 32, clblue);
            if pub_sfhtt then    
            drawline('疼痛', 'tt', 40, 170, m_height, -1, clblack);
            if sp_cx_zybrjbqk.fieldbyname('brnl').asfloat>=6 then
            begin
            drawline('脉搏', 'mb', 40, 230, m_height / 2, 30, clred);
            drawline('呼吸', 'hx', 40, 260, m_height, 10, clnavy);
            end;
//            drawline('心率', 'xl', 40, 230, m_height / 2, 30, cllime); 
            drawcgjl;
        end;
    end;
end;

procedure Tfrm_twb2.ToolButton6Click(Sender: TObject);
begin
    if (ad_tw.Active) and (ad_cg.Active) then
    begin
        if (ad_tw.RecordCount > 0) or (ad_cg.RecordCount>0) then
        begin
            ksrq := nextrq - 14;
            nextrq := nextrq - 7;
            if ksrq < minrq then
            begin
                ksrq := minrq;
                nextrq := minrq + 6;
            end;
{            ad_tw.Close;
            ad_tw.Parameters.ParamByName('zyh').Value := zy_zyh;
            ad_tw.Parameters.ParamByName('ksrq').Value := formatdatetime('yyyymmdd', ksrq);
            ad_tw.Parameters.ParamByName('jsrq').Value := formatdatetime('yyyymmdd', nextrq);
            ad_tw.Open;

            ad_cg.Close;
            ad_cg.Parameters.ParamByName('zyh').Value := zy_zyh;
            ad_cg.Parameters.ParamByName('ksrq').Value := formatdatetime('yyyymmdd', ksrq);
            ad_cg.Parameters.ParamByName('jsrq').Value := formatdatetime('yyyymmdd', nextrq);
            ad_cg.Open; }
            drawxy( frm_twb2.tabsheet2.width, frm_twb2.tabsheet2.Height);
            image.Width := 941;
            image.height := 661;
            drawline('体温', 'tw', 40, 200, m_height * 10, 32, clblue);
            if pub_sfhtt then    
            drawline('疼痛', 'tt', 40, 170, m_height , -1, clblack);
            if sp_cx_zybrjbqk.fieldbyname('brnl').asfloat>=6 then
            begin
             drawline('脉搏', 'mb', 40, 230, m_height / 2, 30, clred);
             drawline('呼吸', 'hx', 40, 260, m_height, 10, clnavy);
            end;
//             drawline('心率', 'xl', 40, 230, m_height / 2, 30, cllime); 
            drawcgjl;
        end;
    end;
end;

procedure Tfrm_twb2.ToolButton7Click(Sender: TObject);
begin
    if (ad_tw.Active) and (ad_cg.Active) then
      begin
        if (ad_tw.RecordCount > 0) or (ad_cg.RecordCount>0) then
        begin
            ksrq := nextrq + 1;
            nextrq := ksrq + 6;
            if formatdatetime('yyyymmdd',ksrq) <= formatdatetime('yyyymmdd',maxrq) then
            begin
{                ad_tw.Close;
                ad_tw.Parameters.ParamByName('zyh').Value := zy_zyh;
                ad_tw.Parameters.ParamByName('ksrq').Value := formatdatetime('yyyymmdd', ksrq);
                ad_tw.Parameters.ParamByName('jsrq').Value := formatdatetime('yyyymmdd', nextrq);
                ad_tw.Open;

                ad_cg.Close;
                ad_cg.Parameters.ParamByName('zyh').Value := zy_zyh;
                ad_cg.Parameters.ParamByName('ksrq').Value := formatdatetime('yyyymmdd', ksrq);
                ad_cg.Parameters.ParamByName('jsrq').Value := formatdatetime('yyyymmdd', nextrq);
                ad_cg.Open;      }
                drawxy( frm_twb2.tabsheet2.width, frm_twb2.tabsheet2.Height);
                image.Width := 941;
                image.height := 661;
                drawline('体温', 'tw', 40, 200, m_height * 10, 32, clblue);
                if pub_sfhtt then
                drawline('疼痛', 'tt', 40, 170, m_height, -1, clblack);
                if sp_cx_zybrjbqk.fieldbyname('brnl').asfloat>=6 then
                begin
                drawline('脉搏', 'mb', 40, 230, m_height / 2, 30, clred);
                drawline('呼吸', 'hx', 40, 260, m_height, 10, clnavy);
                end;
//                drawline('心率', 'xl', 40, 230, m_height / 2, 30, cllime);
                drawcgjl;
            end
            else
            begin
                nextrq := nextrq - 7;
                ksrq := nextrq - 7;
            end
        end;
    end;
end;

procedure Tfrm_twb2.ToolButton8Click(Sender: TObject);
begin
    if (ad_tw.Active) and (ad_cg.Active) then
    begin
        if (ad_tw.RecordCount > 0) or (ad_cg.RecordCount>0) then
        begin
            ksrq := maxrq - 6;
            nextrq := maxrq;
{            ad_tw.Close;
            ad_tw.Parameters.ParamByName('zyh').Value := zy_zyh;
            ad_tw.Parameters.ParamByName('ksrq').Value := formatdatetime('yyyymmdd', ksrq);
            ad_tw.Parameters.ParamByName('jsrq').Value := formatdatetime('yyyymmdd', nextrq);
            ad_tw.Open;
            ad_cg.Close;
            ad_cg.Parameters.ParamByName('zyh').Value := zy_zyh;
            ad_cg.Parameters.ParamByName('ksrq').Value := formatdatetime('yyyymmdd', ksrq);
            ad_cg.Parameters.ParamByName('jsrq').Value := formatdatetime('yyyymmdd', nextrq);
            ad_cg.Open;    }
            drawxy( frm_twb2.tabsheet2.width, frm_twb2.tabsheet2.Height);
            image.Width := 941;
            image.height := 661;
            drawline('体温', 'tw', 40, 200, m_height * 10, 32, clblue);
            if pub_sfhtt then    
            drawline('疼痛', 'tt', 40, 170, m_height, -1, clblack);
            if sp_cx_zybrjbqk.fieldbyname('brnl').asfloat>=6 then
            begin
            drawline('脉搏', 'mb', 40, 230, m_height / 2, 30, clred);
            drawline('呼吸', 'hx', 40, 260, m_height, 10, clnavy);
            end;
//            drawline('心率', 'xl', 40, 230, m_height / 2, 30, cllime);
            drawcgjl;
        end;
    end;
end;

procedure Tfrm_twb2.ToolButton9Click(Sender: TObject);
var
  stream,stream1: TADOBlobStream;

begin
  application.createform(TFrm_printerset, Frm_printerset);
  try
    Frm_printerset.showmodal;
  finally
    Frm_printerset.free;
  end;
  ad_tw.First;
  ad_cg.First;
  ksrq:=minrq;
  nextrq:=minrq+6;
    if (printerstate) and (printername<>'') then
     begin
     while formatdatetime('yyyymmdd',ksrq) <= formatdatetime('yyyymmdd',maxrq) do
     begin
      drawxy( frm_twb2.tabsheet2.width, frm_twb2.tabsheet2.Height);
//      drawcgjl;
      image.Width := 941;
      image.height := 661;
      drawline('体温', 'tw', 40, 200, m_height * 10, 32, clblue);
      if pub_sfhtt then    
      drawline('疼痛', 'tt', 40, 170, m_height, -1, clblack);
      if sp_cx_zybrjbqk.fieldbyname('brnl').asfloat>=6 then
      begin
      drawline('脉搏', 'mb', 40, 230, m_height / 2, 30, clred);
      drawline('呼吸', 'hx', 40, 260, m_height, 10, clnavy);
      end;
      drawcgjl;
      qrimage1.Top:=0;
      qrimage1.left:=0;
      qrimage1.Height:=941;
      qrimage1.Width:=661;
      image.Picture.SaveToFile(buffer+'\1.bmp');
      qrimage1.Picture.LoadFromFile(buffer+'\1.bmp');
      qrimage1.Stretch:=true;
      quickrep1.PrinterSettings.PrinterIndex:=printer.Printers.IndexOf(printername);

      try
      quickrep1.print;
      finally
       ksrq:=nextrq+1;
       nextrq:=ksrq+6;
      end;
     end;
     end
    else
    if printername='' then
    application.MessageBox('请选择打印机','提示',mb_ok);

end;

procedure Tfrm_twb2.FormShow(Sender: TObject);
begin
    pagecontrol1.ActivePageIndex := 0;
    pagecontrol2.ActivePageIndex:=0;
    firstshow:=false;
    ad_yll.Close;
    Frm_func.open_dataset(ad_yll);
    ad_bqks.Close;
    ad_bqks.Parameters.ParamByName('bqdm').value:=pub_bqdm;
    Frm_func.open_dataset(ad_bqks);
    zyxz.Items.Clear;
    zyxz.Items.Add('全部');
    while not ad_bqks.Eof do
     begin
      zyxz.Items.Add(trim(ad_bqks.FieldByName('dm').AsString)+'-'+trim(ad_bqks.FieldByName('mc').AsString));
      ad_bqks.Next;
     end;
     if qszyxz>ad_bqks.Recordcount then
      qszyxz:=0;
      ad_bqks.close;
      firstshow := true;
      zyxz.ItemIndex:=qszyxz;
      zyxz.OnChange(self);
      sp_twbr.First;
    crxx.Properties.Items.Clear;
    while not ad_yll.eof do
    begin
    crxx.Properties.Items.Add(ad_yll.FieldByName('mc').asstring+' '+ad_yll.FieldByName('dw').asstring);
    ad_yll.Next;
    end;
    brxm.setfocus;
    if trim(brxm.Text) <> '' then
    begin
     sp_twbr.Locate('zyh',frm_main.zyh.text,[]);
     jbxx;
    end
    else
    begin
      brxm.text:=sp_twbr.fieldbyname('bch').asstring;
      jbxx;

    end;
    quickrep1.Visible:=false;


     if pub_czyzw<>'04' then
    begin
    TabSheet5.TabVisible:=False;
    end;


    kjsc;  //控件生成
    scyygf; //用语规范
    hljld;
    rcl;
    dkhljldrcl;
    dkqbxm;






end;
procedure Tfrm_twb2.dkqbxm;
var
i:Integer;
begin

    sp_hljldqbxm.close;
    sp_hljldqbxm.Parameters.ParamByName('@ksdm').Value:=pub_ksdm;
    sp_hljldqbxm.Open;
    sp_rclqbxm.close;
    sp_rclqbxm.Parameters.ParamByName('@ksdm').Value:=pub_ksdm;
    sp_rclqbxm.Open;
    qry_bqgc.Close;
    qry_bqgc.Parameters.ParamByName('ksdm').value:=pub_ksdm;
    qry_bqgc.Open;
    for I := 0 to sp_hljldqbxm.RecordCount - 1 do
      begin
        ComboBox1.Items.Add(sp_hljldqbxm.FieldByName('hljld_caption').AsString);
        sp_hljldqbxm.next
      end;
end;

procedure Tfrm_twb2.TabSheet2Show(Sender: TObject);
begin
    if (ad_tw.Active) and (ad_cg.Active) then
    begin
        if (ad_tw.RecordCount > 0) or (ad_cg.RecordCount>0) then
        begin
            drawxy( frm_twb2.tabsheet2.width, frm_twb2.tabsheet2.Height);
            image.Width := 941;
            image.height := 661;
            ToolButton12.Click;
        end;
    end;

end;



procedure Tfrm_twb2.tmpgridExit(Sender: TObject);

begin
    tmpgrid.Visible := false;
    displayvalue;
    dkhljldrcl;

end;

procedure Tfrm_twb2.tmpgridKeyDown(Sender: TObject; var Key: Word;
    Shift: TShiftState);
begin
    if key = 13 then
        tw0.SetFocus;
end;

procedure Tfrm_twb2.tmpgridDblClick(Sender: TObject);
begin
    tw0.SetFocus;
end;

procedure Tfrm_twb2.ToolButton14Click(Sender: TObject);
begin
  application.createform(TFrm_printerset, Frm_printerset);
  try
    Frm_printerset.showmodal;
  finally
    Frm_printerset.free;
  end;
    if (printerstate) and (printername<>'') then
     begin
      qrimage1.Top:=0;
      qrimage1.left:=0;
      qrimage1.Height:=941;
      qrimage1.Width:=661;
      image.Picture.SaveToFile(buffer+'\1.bmp');
      qrimage1.Picture.LoadFromFile(buffer+'\1.bmp');
      qrimage1.Stretch:=true;
      quickrep1.PrinterSettings.PrinterIndex:=printer.Printers.IndexOf(printername);
      quickrep1.print;
     end
    else
    if printername='' then
    application.MessageBox('请选择打印机','提示',mb_ok);
end;

procedure Tfrm_twb2.SpeedButton1Click(Sender: TObject);
begin
TabSheet2Show(sender);
toolbutton9.click;
{  application.createform(TFrm_printerset, Frm_printerset);
  try
    Frm_printerset.showmodal;
  finally
    Frm_printerset.free;
  end;
    if (printerstate) and (printername<>'') then
      imagePrint
    else
    if printername='' then
    application.MessageBox('请选择打印机','提示',mb_ok);} 
end;

procedure Tfrm_twb2.SpeedButton2Click(Sender: TObject);
var
i:Integer;
name1:string;
begin
if qry_hljldnr.Active then
 begin
qry_hljldnr.Last;
 for i := 201 to qry_hljld_xmdz.RecordCount + 200 do
 begin
     name1:=Copy(c[i].Name,2,10) ;
     d[i].text:=qry_hljldnr.FieldByName(name1).AsString;
     H[I].text:=qry_hljldnr.FieldByName(name1).AsString;
 end;
htw.text := qry_hljldnr.FieldByName('tw').AsString;
hmb.text := qry_hljldnr.FieldByName('mb').AsString;
hhx.text := qry_hljldnr.FieldByName('hx').AsString;
hxl.text := qry_hljldnr.FieldByName('xl').AsString;
hxy.Text :=qry_hljldnr.FieldByName('xy').AsString;
httpf.text := qry_hljldnr.FieldByName('ttpf').AsString;
Memo3.text:=qry_hljldnr.FieldByName('bqgc').AsString;

 end;
 if qry_rcl.Active then
 begin
     qry_rclsc.first;
 for i := 321 to qry_rclsc.RecordCount + 320 do
 begin
     name1:=Copy(F[i].Name,2,10) ;
     n[i].text:=qry_rcl.FieldByName(name1).AsString;
     o[i].text:=qry_rcl.FieldByName(name1).AsString;
 end;
 bgdyl.text:=qry_rcl.FieldByName('gdyl').AsString;
end
else
begin
      qry_rclsc.first;
 for i := 321 to qry_rclsc.RecordCount + 320 do
 begin
     name1:=Copy(F[i].Name,2,10) ;
     n[i].text:='';
     o[i].text:='';
 end;
 bgdyl.text:='';
 end;
 
end;

procedure Tfrm_twb2.lrrqExit(Sender: TObject);
begin
frm_twb2.sdExit(sender);
end;

procedure Tfrm_twb2.lrrqKeyPress(Sender: TObject; var Key: Char);

begin
if key=#13 then
begin
if not ad_tw.Locate('jlrq_s', formatdatetime('yyyymmdd ', lrrq.date), [loCaseInsensitive]) then
  begin
  da1:=  lrrq.date;
   sd.Time:=strtodatetime(pub_twbqssj);
   display_hljl_null;
   tw0.setfocus;
  end
else
sd.setfocus;
end;
//ssts1.text:=calcssts(strtodatetime(formatdatetime('yyyy-mm-dd',da1)));
end;

procedure Tfrm_twb2.lrrqPropertiesChange(Sender: TObject);
begin
da1 := lrrq.Date;
if not jxgcgjl then
begin
if  not ad_cgjl.Locate('jlrq',strtodatetime(formatdatetime('yyyy-mm-dd',da1)),[loCaseInsensitive]) then
begin
   { xbl.Text := '0';
    dbcs.Text := '0';
    sryl.Text := '0';
    yrl.Text :='0'; }
    xy.Text :='';
    tz.Text :='';
    pssm.text:='';
    sd.time:=strtodatetime(copy(pub_twbqssj,1,5));
//    lrrq.Date := ad_tw.FieldByName('jlrq').asdatetime;
     ryrq1.Date:=0;
     ssrq1.Date:=0;
     cyrq1.date:=0;
     zcrq1.date:=0;
     swsj1.date:=0;
     fmsj1.date:=0;
     zrks.text:='';
     zcks.text:='';
end
else
begin
    {xbl.Text := ad_cgjl.FieldByName('xbl').asstring;
    dbcs.Text := ad_cgjl.FieldByName('dbcs').asstring;
    sryl.Text := ad_cgjl.FieldByName('syl').asstring;
    yrl.Text := ad_cgjl.FieldByName('yrl').asstring; }
    xy.Text := ad_cgjl.FieldByName('xy').asstring;
    tz.Text := ad_cgjl.FieldByName('tz').asstring;
    pssm.Text := ad_cgjl.FieldByName('pssm').asstring;
    zrks.Text:=ad_cgjl.FieldByName('zrks').asstring;
    zcks.Text := ad_cgjl.FieldByName('zcks').asstring;
//    lrrq.Date := ad_tw.FieldByName('jlrq').asdatetime;
    if ad_cgjl.FieldByName('ryrq').asdatetime=0 then
     ryrq1.Date:=0
    else
    ryrq1.Date:=ad_cgjl.FieldByName('ryrq').asdatetime;
    if ad_cgjl.FieldByName('ssrq').asdatetime=0 then
      ssrq1.Date:=0
    else
    ssrq1.Date:=ad_cgjl.FieldByName('ssrq').asdatetime;
    if ad_cgjl.FieldByName('cyrq').asdatetime=0 then
      cyrq1.Date:=0
    else
    cyrq1.Date:=ad_cgjl.FieldByName('cyrq').asdatetime;
    if ad_cgjl.FieldByName('swsj').asdatetime=0 then
      swsj1.Date:=0
    else
    fmsj1.Date:=ad_cgjl.FieldByName('fmsj').asdatetime;
    if ad_cgjl.FieldByName('fmsj').asdatetime=0 then
      fmsj1.Date:=0
    else
    fmsj1.Date:=ad_cgjl.FieldByName('fmsj').asdatetime;
    if ad_cgjl.FieldByName('zcrq').asdatetime=0 then
      zcrq1.Date:=0
    else
    zcrq1.Date:=ad_cgjl.FieldByName('zcrq').asdatetime;
    end;
end;
end;

Procedure Tfrm_twb2.OnMouseWheel(Var Msg :TMsg;var Handled:Boolean);
begin
 if Msg.message = WM_MouseWheel  then
 begin
   if Msg.wParam = 0 then
   begin
   if DBGridEh3.Focused then    SendMessage(DBGridEh3.Handle,WM_VSCROLL,SB_NONE,0);
   end;
   Handled:= True;
 end;
end;

initialization
DBGridEhCenter.FilterEditCloseUpApplyFilter := True;

end.

