unit p_yzzx;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, StdCtrls, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxControls, cxGridCustomView,
  cxGrid, ExtCtrls, cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, ADODB, Mask, DBCtrls,
  Buttons, cxMemo, Grids, DBGridEh, GridsEh, cxLabel, ComCtrls, Menus,
  cxLookAndFeelPainters, cxButtons, cxCheckBox, DBGrids, QRCtrls, QuickRpt,
  printers, DBCtrlsEh, p_FrmAdoReconBase,strUtils, DBGridEhGrouping;
type
  Tmyrect = record
    ph: string;
    top, left, right, bottom, sl, height: integer;
    yf, tj: string;
    gtop, gleft, gright, gbottom: integer;
  end;
type
  TTmyrect = array[0..100] of Tmyrect;

type
  Tfrm_yzzx = class(TfrmAdoReconBase)
    Panel7: TPanel;
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
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    ds_brxx: TDataSource;
    sp_brxx: TADOStoredProc;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    groupbox8: TPanel;
    DBGridEh1: TDBGridEh;
    groupbox2: TPanel;
    Panel6: TPanel;
    cxButton1: TcxButton;
    cxButton6: TcxButton;
    ds_fymx: TDataSource;
    qry_fymx: TADOQuery;
    Panel1: TPanel;
    Label5: TLabel;
    Label1: TLabel;
    ProgressBar1: TProgressBar;
    cxLabel1: TcxLabel;
    sp_dryz: TADOStoredProc;
    ds_dryz: TDataSource;
    ScrollBox1: TScrollBox;
    DBGridEh4: TDBGridEh;
    Panel3: TPanel;
    dt_zxsj: TDateTimePicker;
    Label2: TLabel;
    sp_yzsj: TADOStoredProc;
    cxButton2: TcxButton;
    Edit1: TEdit;
    zxyz: TSpeedButton;
    xzzx: TcxCheckBox;
    srsj: TcxCheckBox;
    ad_yzzx: TADOCommand;
    sp_in_yzqd: TADOStoredProc;
    SpeedButton1: TSpeedButton;
    qry_yjddy: TADOQuery;
    xzzxr: TcxCheckBox;
    QuickRep2: TQuickRep;
    PageFooterBand1: TQRBand;
    QRBand1: TQRBand;
    QRShape1: TQRShape;
    QRL_yymc_cq: TQRLabel;
    QRL_brxm_cq: TQRLabel;
    sj1: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel8: TQRLabel;
    QRShape3: TQRShape;
    QRShape5: TQRShape;
    QRShape10: TQRShape;
    QRShape13: TQRShape;
    QRL_bch_cq: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel9: TQRLabel;
    QRShape19: TQRShape;
    QRShape46: TQRShape;
    QRBand2: TQRBand;
    QRShape4: TQRShape;
    QRShape6: TQRShape;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRShape14: TQRShape;
    QRShape17: TQRShape;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    QRShape18: TQRShape;
    QRShape20: TQRShape;
    QRShape21: TQRShape;
    QRShape22: TQRShape;
    QRShape23: TQRShape;
    QRShape24: TQRShape;
    QRShape25: TQRShape;
    QRShape26: TQRShape;
    QRShape27: TQRShape;
    QRShape28: TQRShape;
    QRShape29: TQRShape;
    QRShape30: TQRShape;
    QRShape31: TQRShape;
    QRShape32: TQRShape;
    QRShape33: TQRShape;
    QRShape34: TQRShape;
    QRShape35: TQRShape;
    QRShape36: TQRShape;
    QRShape37: TQRShape;
    QRShape39: TQRShape;
    QRShape40: TQRShape;
    QRShape41: TQRShape;
    QRShape42: TQRShape;
    QRShape43: TQRShape;
    QRShape44: TQRShape;
    QRShape48: TQRShape;
    QRShape49: TQRShape;
    QRShape50: TQRShape;
    QRShape51: TQRShape;
    QRShape52: TQRShape;
    kdysmc1: TQRLabel;
    xmmc1: TQRLabel;
    ksrq2: TQRLabel;
    kdysmc2: TQRLabel;
    xmmc2: TQRLabel;
    ksrq3: TQRLabel;
    kdysmc3: TQRLabel;
    xmmc3: TQRLabel;
    ksrq4: TQRLabel;
    kdysmc4: TQRLabel;
    xmmc4: TQRLabel;
    ksrq5: TQRLabel;
    kdysmc5: TQRLabel;
    xmmc5: TQRLabel;
    ksrq6: TQRLabel;
    kdysmc6: TQRLabel;
    xmmc6: TQRLabel;
    ksrq7: TQRLabel;
    kdysmc7: TQRLabel;
    xmmc7: TQRLabel;
    ksrq8: TQRLabel;
    kdysmc8: TQRLabel;
    xmmc8: TQRLabel;
    kdysmc0: TQRLabel;
    ksrq0: TQRLabel;
    xmmc0: TQRLabel;
    ksrq1: TQRLabel;
    QRLabel10: TQRLabel;
    QRShape7: TQRShape;
    QRShape45: TQRShape;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel15: TQRLabel;
    QRShape47: TQRShape;
    QRShape53: TQRShape;
    QRShape54: TQRShape;
    QRShape55: TQRShape;
    QRShape56: TQRShape;
    QRShape57: TQRShape;
    QRShape58: TQRShape;
    QRShape59: TQRShape;
    QRShape60: TQRShape;
    QRShape61: TQRShape;
    QRShape62: TQRShape;
    QRShape63: TQRShape;
    ksrq9: TQRLabel;
    kdysmc9: TQRLabel;
    xmmc9: TQRLabel;
    ksrq10: TQRLabel;
    kdysmc10: TQRLabel;
    xmmc10: TQRLabel;
    ksrq11: TQRLabel;
    kdysmc11: TQRLabel;
    xmmc11: TQRLabel;
    ksrq12: TQRLabel;
    kdysmc12: TQRLabel;
    xmmc12: TQRLabel;
    ksrq13: TQRLabel;
    kdysmc13: TQRLabel;
    xmmc13: TQRLabel;
    ksrq14: TQRLabel;
    kdysmc14: TQRLabel;
    xmmc14: TQRLabel;
    ksrq15: TQRLabel;
    kdysmc15: TQRLabel;
    xmmc15: TQRLabel;
    ksrq16: TQRLabel;
    kdysmc16: TQRLabel;
    xmmc16: TQRLabel;
    ksrq17: TQRLabel;
    kdysmc17: TQRLabel;
    xmmc17: TQRLabel;
    ksrq18: TQRLabel;
    kdysmc18: TQRLabel;
    xmmc18: TQRLabel;
    ksrq19: TQRLabel;
    kdysmc19: TQRLabel;
    xmmc19: TQRLabel;
    qrlbl_nfQRL_bq_cq: TQRLabel;
    sp_zxjl_cq_dy: TADOStoredProc;
    qrlbl_nf_tmh: TQRLabel;
    QRShape2: TQRShape;
    ys: TQRLabel;
    cxButton7: TcxButton;
    cxButton8: TcxButton;
    cxButton9: TcxButton;
    cxBtn_kfbq: TcxButton;
    cxBtn_qbkfbq: TcxButton;
    QuickRep3: TQuickRep;
    DetailBand2: TQRBand;
    qrl_ks: TQRLabel;
    qrl_brxm: TQRLabel;
    qrl_ch: TQRLabel;
    qrl_ks1: TQRLabel;
    qrl_ch1: TQRLabel;
    qrl_brxm1: TQRLabel;
    CheckBox1: TCheckBox;
    SP_SE_BCZY: TADOStoredProc;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    chk1: TCheckBox;
    qry_dqzxlsb: TADOQuery;
    sp_yzzx: TADOStoredProc;
    qry_update_xyz: TADOQuery;
    ComboBox1: TComboBox;
    Label3: TLabel;
    Button1: TButton;
    N4: TMenuItem;
    qry_sxxyz: TADOQuery;
    qry_cx: TADOQuery;
    sp_ty_ypcx: TADOStoredProc;
    sp_lsyztf: TADOStoredProc;
    N5: TMenuItem;
    N6: TMenuItem;
    Label4: TLabel;
    Label6: TLabel;
    DBGridEh2: TDBGridEh;
    Timer1: TTimer;
    DateTimePicker1: TDBDateTimeEditEh;
    DateTimePicker2: TDBDateTimeEditEh;
    sp_zxjfzb: TADOStoredProc;
    sp_zxjfxr: TADOStoredProc;
    cxLabel2: TcxLabel;
    Button2: TButton;
    N7: TMenuItem;
    N8: TMenuItem;
    btn_sypq: TcxButton;
    cxButton4: TcxButton;
    Button3: TButton;
    qry_fydx: TADOQuery;
    sp_cx_tfmx: TADOStoredProc;
    CheckBox2: TCheckBox;
    N9: TMenuItem;
    N10: TMenuItem;
    cxBt1: TcxButton;
    Button4: TButton;
    N11: TMenuItem;
    N12: TMenuItem;
    QuickRep1: TQuickRep;
    QRBand3: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    N17: TMenuItem;
    QryTmp: TADOQuery;
    btn_GongZuoLiang: TButton;
    sp_se_hljb: TADOStoredProc;
    sp_yzzx_new: TADOStoredProc;
    N13: TMenuItem;
    CheckBox3: TCheckBox;
    Label8: TLabel;
    bah: TDBEdit;
    qry_sj: TADOQuery;
    btn_yzsh: TButton;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure cxButton6Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure cxGridDBTableView2CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure TabSheet2Show(Sender: TObject);
    procedure cxGrid1DBTableView1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure DBGridEh4ColWidthsChanged(Sender: TObject);
    procedure DBGridEh4DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure DBGridEh1CellClick(Column: TColumnEh);
    procedure dt_zxsjChange(Sender: TObject);
    procedure DBGridEh4CellClick(Column: TColumnEh);
    procedure zxyzClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure cxButton9Click(Sender: TObject);
    procedure cxButton7Click(Sender: TObject);
    procedure cxButton8Click(Sender: TObject);
    procedure cxBtn_kfbqClick(Sender: TObject);
    procedure cxBtn_qbkfbqClick(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure ScrollBox1MouseWheelUp(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure chk1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure sp_dryzBeforeScroll(DataSet: TDataSet);
    procedure sp_dryzAfterOpen(DataSet: TDataSet);
    procedure ComboBox1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure DBGridEh2ColWidthsChanged(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure btn_sypqClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Probxstzyz;
    procedure CheckBox2Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure N10Click(Sender: TObject);
    procedure cxBt1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure N12Click(Sender: TObject);
    procedure N17Click(Sender: TObject);
    procedure btn_GongZuoLiangClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure N_liyiqxfsClick(Sender: TObject);
    procedure N13Click(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
    procedure QRBand3AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
    procedure btn_yzshClick(Sender: TObject);
  private
    { Private declarations }
    procedure getmouse(var msg: TWMMouseWheel); message WM_MouseWheel;
    procedure OnMouseWheel_yzzx(var Msg: TMsg; var Handled: Boolean);
    procedure ProSjsj(kdrq: TDateTime; tzrq: TDateTime);
    procedure ProXzzxhs;
    procedure RefYzxx;
    procedure ProZsj(_zyh: string);
    procedure proZsj1(_zyh:string;yzid:string);
    procedure ProXswzx;
    procedure ChangePrinter;
    procedure RevertPrinter;
    function CheckCZY: boolean;
    procedure WMAdoReStore(var message: TMessage); message WM_ADOReCon;
    procedure showForm;
  public //y表示选择,n表示未选择
    tmh, zyh, xzph, kdys, ysmc, yfmc, str_zyh: string;
    xhlist, zyhlist, phlist, yzsx: string;
    //zyhlist 本次记费人员  phlist本次记费批号 //序号xhlist
    xzbz: string; //y表示选择,n表示未选择
    curr_datetime: Tdatetime;

    pldh, _phlist: string;

    zxsj, qyyf: string;
    iszx: boolean;
    rectno: integer;

    cx_zyh, yz_select: string;
    del_curr_ph: string;
    del_bz: integer; //0 本次未删除，1本次删了项目
    zxczy: string;
    procedure createrect(var myrect1: TTmyrect; dataset_rect: TCustomADODataSet;
      grid_yzlr1: Tdbgrideh; x1, x2, x3: integer);
    procedure yzqxtf(var id: integer; var kdys: string);
    { Public declarations }
  end;

var
  frm_yzzx: Tfrm_yzzx;
  yzlb: string; //医嘱类别
  jryzxph: string; //今日已执行医属批号
  myrect: TTmyrect;
  myrect_cx, myrect_zx_cq, myrect_zx_ls: TTmyrect;
  yzsj: Tdatetime;
  yzsj1:TDateTime;
  qxyzsj: TDateTime;
  fqyz: boolean;
  //输入医嘱时间时，点“确定”，fqyz:=false;点了"放弃"，fqyz:=true;
  wz: Integer;
  sfqyydhsz: Boolean;
  sj: string;

  sssyzzxbz: string;
  _ysbz: Boolean; //calmhawk---医生标志---
  //-----calmhawk--2011-05-24----手术室调用方法
  v_IsPrinterJoin: Boolean;
  v_PrinterIndex_new: Integer;
  v_PrinterIndex_old: Integer;
procedure pro_yzzx_sss();

function findinarray(myrect: TTmyrect; zd: string): integer;
procedure initarray(myrect: TTmyrect);

implementation

{$R *.dfm}
uses p_func, p_dm, p_syfz, p_yzzxd, p_jydtmdy, p_jysqd, p_jcsqd, p_psjg,
  p_qxyzsj,
  p_yjddy, p_zyplcffy, P_main, p_bylsyz, p_yzsj, p_xzhs, p_lcljzx, p_yszx_ysfs,
  p_syddy, p_yzinput, p_hsdyzxd, p_bqgl_zxypyz, p_hsgzltj, DateUtils,
  p_syddy_xn,p_yzzxxse, p_yzzxsjxg;

function findinarray(myrect: TTmyrect; zd: string): integer;
var
  i: integer;
  mark: boolean;
begin
  mark := true;
  i := 0;
  while (i < 99) and mark do
  begin
    if myrect[i].ph = zd then
    begin
      mark := false;
    end
    else
      i := i + 1;
  end;
  result := i;
end;

procedure initarray(myrect: TTmyrect);
var
  i: integer;
begin
  for i := 0 to 100 do
  begin
    myrect[i].ph := '';
    myrect[i].top := 0;
    myrect[i].left := 0;
    myrect[i].right := 0;
    myrect[i].bottom := 0;
    myrect[i].sl := 1;
    myrect[i].yf := '';
    myrect[i].tj := '';
    myrect[i].gtop := 0;
    myrect[i].gleft := 0;
    myrect[i].gright := 0;
    myrect[i].gbottom := 0;

  end;
end;

procedure Tfrm_yzzx.btn_GongZuoLiangClick(Sender: TObject);
begin
  Application.CreateForm(Tfrm_hsgzltj, frm_hsgzltj);
  try
    frm_hsgzltj.showmodal;
  finally
    frm_hsgzltj.Free;
  end;
end;

procedure Tfrm_yzzx.btn_sypqClick(Sender: TObject);
begin
  if pub_yydm = '0246' then //兴宁
  begin
    try
      application.createform(tfrm_syddy_xn, frm_syddy_xn);
      Application.OnMessage := nil;
      frm_syddy_xn.prv_zyh := sp_brxx.FieldByName('zyh').asstring;
      frm_syddy_xn.showmodal;
    finally
      frm_syddy_xn.free;
    end;
  end
  else
  begin
    try
      application.createform(tfrm_syddy, frm_syddy);
      Application.OnMessage := nil;
      frm_syddy.prv_zyh := sp_brxx.FieldByName('zyh').asstring;
      frm_syddy.showmodal;
    finally
      frm_syddy.free;
    end;
  end;

end;

{-------------------------------------------------------------------------------
  过程名:    Tfrm_yzzx.btn_yzshClick
  作者:      yangshuai
  日期:      2016.11.30
  参数:      Sender: TObject
  返回值:    无
-------------------------------------------------------------------------------}
procedure Tfrm_yzzx.btn_yzshClick(Sender: TObject);
begin
   if not CheckCZY then
   begin
     Application.MessageBox(PChar('只有护士长才有审核权限！' ),
          PChar('权限不足'), MB_OK + MB_ICONINFORMATION);
     Exit;
   end;
  sp_dryz.DisableControls;
  sp_dryz.First;
  while not sp_dryz.Eof do
  begin
    if sp_dryz.FieldByName('xz').AsBoolean then
    begin
      DM_data.qry_pub.close;
      DM_data.qry_pub.SQL.Text := 'update zybl_zyyz set sfshbz=1,shrydm=' + '''' + pub_czydm
          + '''' +
        ' where id=' + sp_dryz.FieldByName('yzid').AsString;
      DM_data.qry_pub.ExecSQL;
    end;
    sp_dryz.Next;
  end;
  sp_dryz.First;
  sp_dryz.EnableControls;
  Application.MessageBox('审核成功！', '提示', MB_OK +
        MB_ICONINFORMATION);
  RefYzxx;//刷新数据
end;

procedure Tfrm_yzzx.Button1Click(Sender: TObject);
begin
  if (Button1.Caption = '时间过滤') and (ComboBox1.text = '全部') then
  begin
    sp_dryz.Filtered := False;
    sp_dryz.Filter := ' kdrq>=' + '''' + formatdatetime('yyyy-MM-dd hh:MM',
      DateTimePicker1.value) + ''''
      + ' and  kdrq<=' + '''' + formatdatetime('yyyy-MM-dd hh:MM',
      DateTimePicker2.value) + '''';
    sp_dryz.Filtered := True;
    Button1.Caption := '取消过滤';
  end
  else if (Button1.Caption = '时间过滤') and (ComboBox1.text = '长期') then
  begin
    sp_dryz.Filtered := False;
    sp_dryz.Filter := ' yzsx=''长期'' and kdrq>=' + '''' +
      formatdatetime('yyyy-MM-dd hh:MM', DateTimePicker1.value) + ''''
      + ' and  kdrq<=' + '''' + formatdatetime('yyyy-MM-dd hh:MM',
      DateTimePicker2.value) + '''';
    sp_dryz.Filtered := True;
    Button1.Caption := '取消过滤';
  end
  else if (Button1.Caption = '时间过滤') and (ComboBox1.text = '临时') then
  begin
    sp_dryz.Filtered := False;
    sp_dryz.Filter := ' yzsx=''临时'' and kdrq>=' + '''' +
      formatdatetime('yyyy-MM-dd hh:MM', DateTimePicker1.value) + ''''
      + ' and  kdrq<=' + '''' + formatdatetime('yyyy-MM-dd hh:MM',
      DateTimePicker2.value) + '''';
    sp_dryz.Filtered := True;
    Button1.Caption := '取消过滤';
  end
  else
  begin
    Button1.Caption := '时间过滤';
    sp_dryz.Filtered := False;
  end;
end;

procedure Tfrm_yzzx.Button2Click(Sender: TObject);
var
  index: integer;
begin
  DM_data.qry_pub.close;
  DM_data.qry_pub.SQL.text := 'select * from lclj_brljzx_mx where zyh=' + '''' +
    sp_brxx.FieldByName('zyh').asstring + '''';
  try
    DM_data.qry_pub.Open;
  except
  end;
  if DM_data.qry_pub.IsEmpty then
  begin
    Application.MessageBox('还未导入路径，无需执行', '警告', MB_OK +
      MB_ICONWARNING);
    exit;
  end;
  try
    application.createform(Tfrm_lcljzx, frm_lcljzx);
    frm_lcljzx.v_zyh := sp_brxx.FieldByName('zyh').asstring;
    frm_lcljzx.showmodal;
  finally
    frm_lcljzx.free;
  end;
end;

procedure Tfrm_yzzx.Button3Click(Sender: TObject);
var
  x_fydm, revalue: string;
  fysl: integer;
  cwxx: string;
  x_yzid: Integer;
begin
  if Application.MessageBox('是否确认退费？', '询问', MB_YESNO +
    MB_ICONQUESTION + MB_DEFBUTTON2) = IDNO then
  begin
    Exit;
  end;

  dm_data.qry_pub.close;
  dm_data.qry_pub.sql.text := 'select * from zysf_zydj where cybz=0 and zyh=' +
    '''' + sp_brxx.fieldbyname('zyh').asstring + '''';
  try
    dm_data.qry_pub.open;
  except

  end;
  if dm_data.qry_pub.IsEmpty then
  begin
    Application.MessageBox(' 病人已经出院，无法退检验费！',
      '提示', MB_OK + MB_ICONWARNING);
    Exit;
  end;
  cwxx := '';
  if not sp_dryz.isempty then
  begin
    sp_dryz.First;
    while not sp_dryz.eof do
    begin
      if (trim(sp_dryz.fieldbyname('lb').asstring) = '检验') and
        (sp_dryz.fieldbyname('jsbz').asboolean = false) and
        (sp_dryz.fieldbyname('jysfbz').asstring <> '0') and
        (formatdatetime('yyyyMMdd', sp_dryz.fieldbyname('jyjfsj').asdatetime) >=
        '20130402') and
        (sp_dryz.fieldbyname('tzbz').asboolean = false) then
      begin
        dm_data.qry_pub.close;
        dm_data.qry_pub.sql.text :=
          'select a.*,b.fydm from zybl_zyyz a,sys_yzxm b where a.id=' +
          trim(sp_dryz.fieldbyname('yzid').asstring) +
          ' and a.xmdm=b.xmdm';
        try
          dm_data.qry_pub.open;
        except
        end;
        if not dm_data.qry_pub.isempty then
        begin
          x_fydm := dm_data.qry_pub.fieldbyname('fydm').asstring;
          fysl := dm_data.qry_pub.fieldbyname('sl').asinteger;
          x_yzid := dm_data.qry_pub.fieldbyname('id').asinteger;
          dm_data.qry_pub.close;
          dm_data.qry_pub.sql.text := 'select * from sys_kjsfxm where fydm=' +
            '''' +
            x_fydm + '''';
          try
            dm_data.qry_pub.open;
          except

          end;
          if Trim(dm_data.qry_pub.fieldbyname('dldm').asstring) = '50' then
          begin
            sp_cx_tfmx.close;
            sp_cx_tfmx.Parameters.Refresh;
            sp_cx_tfmx.Parameters.ParamByName('@zyh').Value :=
              sp_brxx.fieldbyname('zyh').asstring;
            sp_cx_tfmx.Parameters.ParamByName('@fydm').Value := x_fydm;
            sp_cx_tfmx.Parameters.ParamByName('@tflb').Value := '打包';
            sp_cx_tfmx.Parameters.ParamByName('@tffs').Value := 1;
            sp_cx_tfmx.Open;
          end
          else
          begin
            sp_cx_tfmx.close;
            sp_cx_tfmx.Parameters.Refresh;
            sp_cx_tfmx.Parameters.ParamByName('@zyh').Value :=
              sp_brxx.fieldbyname('zyh').asstring;
            sp_cx_tfmx.Parameters.ParamByName('@fydm').Value := x_fydm;
            sp_cx_tfmx.Parameters.ParamByName('@tflb').Value := '明细';
            sp_cx_tfmx.Parameters.ParamByName('@tffs').Value := 1;
            sp_cx_tfmx.Open;
          end;
          if not sp_cx_tfmx.isempty then
            revalue := zysf_tfy(sp_cx_tfmx['id'],
              sp_brxx.fieldbyname('zyh').asstring, pub_czydm, x_fydm, fysl,
              sp_cx_tfmx.fieldbyname('fyje').asfloat /
              sp_cx_tfmx.fieldbyname('fysl').asfloat * fysl,
              sp_cx_tfmx.fieldbyname('zfje').asfloat /
              sp_cx_tfmx.fieldbyname('fysl').asfloat * fysl);
          if revalue = '1' then
          begin
            DM_data.qry_pub.close;
            DM_data.qry_pub.sql.text := 'delete from  dzbl_cyjl_zy where fyid='
              + inttostr(x_yzid) + ' and zyh=' + '''' +
              sp_brxx.fieldbyname('zyh').asstring + '''';
            DM_data.qry_pub.ExecSQL;
          end
          else
          begin
            cwxx := cwxx + '费用代码 ' + x_fydm + ' 退费失败！' + #13#10;

          end;

        end;
      end;
      sp_dryz.next;
    end;
    if Trim(StringReplace(cwxx, #13#10, '', [rfReplaceAll])) <> '' then
      Application.MessageBox('有退费失败的检验费，请进入退费界面退费！',
        '提示', MB_OK + MB_ICONWARNING)
    else
      Application.MessageBox('退费成功！', '提示', MB_OK +
        MB_ICONINFORMATION);

  end;

end;

procedure Tfrm_yzzx.Button4Click(Sender: TObject);
begin
  try
    application.createform(Tfrm_zxypyz, frm_zxypyz);
    frm_zxypyz.zyh := sp_brxx.FieldByName('zyh').asstring;
    frm_zxypyz.showmodal;
  finally
    if frm_yzzx.Parent = frm_main then
      frm_zxypyz.free;
  end;
end;

procedure Tfrm_yzzx.CheckBox1Click(Sender: TObject);
begin
  if CheckBox1.Checked = True then
  begin
    chk1.Checked := false;
    CheckBox2.Checked := false;
  end;
  ProXswzx;
end;

procedure Tfrm_yzzx.CheckBox2Click(Sender: TObject);
begin
  if CheckBox2.Checked = True then  //选中不显示停止医嘱则
  begin
    CheckBox1.Checked := false;      
    chk1.Checked := false;
  end;
  ProXswzx;
end;

procedure Tfrm_yzzx.CheckBox3Click(Sender: TObject);
begin
  inherited;
   if CheckBox3.Checked = True then  //选中不显示转入医嘱前的医嘱
  begin
    CheckBox1.Checked := false;
     CheckBox2.Checked := false;        
    chk1.Checked := false;
  end;
 ProXswzx;

end;

function Tfrm_yzzx.CheckCZY: boolean;
var
  CSql: string;
begin
  result := false;
  with QryTmp do
  begin
    Close;
    Sql.Clear;
    CSql := 'SELECT a.* FROM sys_czy a, sys_zwdm b WHERE a.zwbm=b.dm AND b.mc=''护士长'' and a.dm='''
      + pub_czydm + '''';
    Sql.Add(CSQL);
    try
      Open;
    except

    end;
  end;
  if QryTmp.IsEmpty then
    exit;
  result := true;
end;

procedure Tfrm_yzzx.Probxstzyz;
var
  _filter1: string;
  _filter2: string;
begin
  if sp_dryz.Active then
  begin
    _filter1 := '';
    _filter2 := '';
    if chk1.Checked then
    begin
      _filter1 := '((syczxsj = null)';
      _filter1 := _filter1 + ' and (sftz<>' + '''' + '已取消' + '''';
      _filter1 := _filter1 + ') and (sftz<>' + '''' + '未用' + '''';
      _filter1 := _filter1 + ')';
      _filter2 := ' or ((tzrq <> null) ';
      _filter2 := _filter2 + ' and (tzzxsj = null)';
      _filter2 := _filter2 + ' and (yzsx=' + '''' + '长期' + '''' + ')';

    end;
    if CheckBox1.Checked then
    begin
      if trim(_filter1 + _filter2) <> '' then
      begin
        _filter1 := _filter1 + ' and ';
        _filter2 := _filter2 + ' and ';
      end;
      _filter1 := _filter1 + ' (kdrq>=' + '''' + formatdatetime('yyyy-MM-dd',
        dt_zxsj.DateTime) + ' 00:00:00' + '''' + ' and kdrq<=' + '''' +
        formatdatetime('yyyy-MM-dd', dt_zxsj.DateTime) + ' 23:59:59' + ''')'
        + ' or ' +
        ' (tzrq>=' + '''' + formatdatetime('yyyy-MM-dd', dt_zxsj.DateTime) +
        ' 00:00:00' + '''' + ' and tzrq<=' + '''' + formatdatetime('yyyy-MM-dd',
        dt_zxsj.DateTime) + ' 23:59:59' + ''')';
      _filter2 := _filter2 + ' (kdrq>=' + '''' + formatdatetime('yyyy-MM-dd',
        dt_zxsj.DateTime) + ' 00:00:00' + '''' + ' and kdrq<=' + '''' +
        formatdatetime('yyyy-MM-dd', dt_zxsj.DateTime) + ' 23:59:59' + ''')'
        + ' or ' +
        ' (tzrq>=' + '''' + formatdatetime('yyyy-MM-dd', dt_zxsj.DateTime) +
        ' 00:00:00' + '''' + ' and tzrq<=' + '''' + formatdatetime('yyyy-MM-dd',
        dt_zxsj.DateTime) + ' 23:59:59' + ''')';
    end;
    if CheckBox2.Checked then
    begin
      if trim(_filter1 + _filter2) <> '' then
      begin
        _filter1 := _filter1 + ' and ';
        _filter2 := _filter2 + ' and ';
      end;
      _filter1 := _filter1 + ' (tzrq = null) ';
      _filter2 := _filter2 + ' (tzrq = null) ';
    end;
    if _filter1 <> '' then
      _filter1 := _filter1 + ')';
    if _filter2 <> '' then
      _filter2 := _filter2 + ')';
    sp_dryz.Filter := _filter1 + _filter2;
    sp_dryz.Filtered := True;
    DBGridEh2.Columns[10].Width := DBGridEh2.Columns[10].Width - 1;
    DBGridEh2.Columns[10].Width := DBGridEh2.Columns[10].Width + 1;
  end;
end;

procedure Tfrm_yzzx.chk1Click(Sender: TObject);
begin
  if chk1.Checked = True then
  begin
    CheckBox1.Checked := false;
    CheckBox2.Checked := false;
  end;
  ProXswzx;
  DBGridEh4.SetFocus;
end;

procedure Tfrm_yzzx.ComboBox1Change(Sender: TObject);
begin
  if ComboBox1.text = '全部' then
  begin
    sp_dryz.Filtered := False;
  end;
  if ComboBox1.text = '长期' then
  begin
    sp_dryz.Filtered := False;
    sp_dryz.Filter := 'yzsx=''长期''';
    sp_dryz.Filtered := True;
  end;
  if ComboBox1.text = '临时' then
  begin
    sp_dryz.Filtered := False;
    sp_dryz.Filter := 'yzsx=''临时''';
    sp_dryz.Filtered := True;
  end;
end;

procedure Tfrm_yzzx.createrect(var myrect1: TTmyrect; dataset_rect:
  Tcustomadodataset; grid_yzlr1: Tdbgrideh; x1, x2, x3: integer);
var
  yzph: string;
  i, n: integer;
begin
  dataset_rect.DisableControls;
  rectno := 0;
  dataset_rect.first;
  initarray(myrect1);
  i := 1;
  while not dataset_rect.Eof do
  begin
    if dataset_rect.FieldByName('fzph').AsString <> '' then
    begin
      if (yzph <> '') and (myrect1[rectno].sl = 1) and (yzph <>
        dataset_rect.FieldByName('fzph').AsString) then
      begin
        myrect1[rectno].bottom := grid_yzlr1.CellRect(x1, i - 1).bottom;
        myrect1[rectno].Gbottom := grid_yzlr1.CellRect(x1, i - 1).bottom;
        //        myrect_cx[rectno].sl:=myrect_cx[rectno].sl+1;
        yzph := '';
      end;
      if yzph = dataset_rect.FieldByName('fzph').AsString then
      begin
        myrect1[rectno].bottom := grid_yzlr1.CellRect(x1, i).bottom;
        myrect1[rectno].Gbottom := grid_yzlr1.CellRect(1, i).bottom;
        myrect1[rectno].sl := myrect1[rectno].sl + 1;
      end
      else
      begin
        rectno := rectno + 1;
        myrect1[rectno].sl := 1;
        myrect1[rectno].ph := dataset_rect.FieldByName('fzph').AsString;

        myrect1[rectno].left := grid_yzlr1.CellRect(x1, i).left;
        myrect1[rectno].right := grid_yzlr1.CellRect(x2, i).right;
        myrect1[rectno].top := grid_yzlr1.CellRect(x1, i).top;

        myrect1[rectno].Gleft := grid_yzlr1.CellRect(4, i).left;
        myrect1[rectno].Gright := grid_yzlr1.CellRect(x3, i).right;
        if grid_yzlr1.CellRect(x3, i).right = 0 then
          for n := 0 to x3 - 1 do
            myrect1[rectno].Gright := myrect1[rectno].Gright +
              grid_yzlr1.Columns[n].Width;
        myrect1[rectno].Gtop := grid_yzlr1.CellRect(1, i).top;
        myrect1[rectno].yf := dataset_rect.FieldByName('ypyf').AsString;
        myrect1[rectno].tj := dataset_rect.FieldByName('yytj').AsString;
        myrect1[rectno].height := grid_yzlr1.CellRect(x1, i).bottom -
          grid_yzlr1.CellRect(x1, i).top;
        yzph := dataset_rect.FieldByName('fzph').AsString;
      end;
    end
    else
    begin
      if (yzph <> '') and (myrect1[rectno].sl = 1) then
      begin
        myrect1[rectno].bottom := grid_yzlr1.CellRect(x1, i - 1).bottom;
        ;
        myrect1[rectno].Gbottom := grid_yzlr1.CellRect(x1, i - 1).bottom;
        //        myrect_cx[rectno].sl:=myrect_cx[rectno].sl+1;
        yzph := '';
      end;
      if (yzph <> '') and (myrect1[rectno].sl > 1) then
        yzph := '';

    end;
    dataset_rect.Next;
    i := dataset_rect.RecNo;
  end;
  if yzph <> '' then
  begin
    myrect1[rectno].bottom := grid_yzlr1.CellRect(x1, i).bottom;
    ;
    myrect1[rectno].Gbottom := grid_yzlr1.CellRect(x1, i).bottom;
    //        myrect_cx[rectno].sl:=myrect_cx[rectno].sl+1;
    yzph := '';
  end;
  dataset_rect.EnableControls;

end;

procedure Tfrm_yzzx.ProXswzx;
var
  _filter: string;
  Maxrq:string ;  
  Ssql:string;
begin

 Ssql:='select max(kdrq) as MaxKdrq from zybl_zyyz where zyh='''+sp_brxx.fieldbyname('zyh').asstring +''''+' and xmmc=''转入医嘱''';
 if  OpenSql(Ssql,DM_data.qry_pub)  then
 Maxrq:=DM_data.qry_pub.FieldByName('MaxKdrq').AsString;

  if sp_dryz.Active then
  begin
    _filter := '';
    if chk1.Checked then     
                             
    begin
      _filter := '((syczxsj = null)';
//      _filter := _filter + ' and (sftz<>' + '''' + '已取消' + '''';
//      _filter := _filter + ') and (sftz<>' + '''' + '未用' + '''';
      _filter := _filter + ' and (tzrq=null';
      _filter := _filter + ') and (tzzxsj=null)) or ((tzrq <> null) ';
      _filter := _filter + ' and (tzzxsj = null)';
      _filter := _filter + ' and (yzsx=' + '''' + '长期' + '''' + '))';

    end;
    if CheckBox1.Checked then   
    begin
      _filter := _filter + ' (kdrq>=' + '''' + formatdatetime('yyyy-MM-dd',
        dt_zxsj.DateTime) + ' 00:00:00' + '''' + ' and kdrq<=' + '''' +
        formatdatetime('yyyy-MM-dd', dt_zxsj.DateTime) + ' 23:59:59' + ''')'
        + ' or ' +
        ' (tzrq>=' + '''' + formatdatetime('yyyy-MM-dd', dt_zxsj.DateTime) +
        ' 00:00:00' + '''' + ' and tzrq<=' + '''' + formatdatetime('yyyy-MM-dd',
        dt_zxsj.DateTime) + ' 23:59:59' + ''')';
    end;
    if CheckBox2.Checked then    
    begin
      _filter := 'tzrq = null';
    end;
    if checkbox3.Checked then
     begin
        if _filter<>'' then
        
        _filter:= _filter +  ' and kdrq >= ''' + Maxrq +''''

        else
        _filter:= '  kdrq >= ''' + Maxrq +'''';
     end;




    sp_dryz.Filter := _filter;
    sp_dryz.Filtered := True;
    DBGridEh2.Columns[10].Width := DBGridEh2.Columns[10].Width - 1;
    DBGridEh2.Columns[10].Width := DBGridEh2.Columns[10].Width + 1;
    
  end;
end;

procedure Tfrm_yzzx.ProZsj(_zyh: string);
begin
  //1、把选中的医嘱转数据到qry_dqzxlsb,通过qry_dqzxlsb 保存到执行临时表：zybl_zyyz_dqzxlsb
  qry_dqzxlsb.Close;
  qry_dqzxlsb.SQL.Text := 'delete from zybl_zyyz_dqzxlsb where zyh=' + '''' +
    _zyh + '''';
  qry_dqzxlsb.ExecSQL;
  qry_dqzxlsb.Close;
  qry_dqzxlsb.SQL.Text := 'select * from zybl_zyyz_dqzxlsb where 1=2';
  qry_dqzxlsb.Open;
  sp_dryz.DisableControls;
  sp_dryz.Filter := 'xz=1';
  sp_dryz.Filtered := true;
  sp_dryz.First;
  while not sp_dryz.Eof do
  begin
    qry_dqzxlsb.Insert;
    qry_dqzxlsb.FieldByName('zyh').Value := _zyh;
    qry_dqzxlsb.FieldByName('yzsx').Value :=
      sp_dryz.FieldByName('yzsx').AsString;
    qry_dqzxlsb.FieldByName('lb').Value := sp_dryz.FieldByName('lb').AsString;
    qry_dqzxlsb.FieldByName('bz').Value := sp_dryz.FieldByName('bz').AsString;
    qry_dqzxlsb.FieldByName('yzid').Value :=
      sp_dryz.FieldByName('yzid').AsString;
    qry_dqzxlsb.FieldByName('jyflbh').Value :=
      sp_dryz.FieldByName('jyflbh').AsString;
    qry_dqzxlsb.FieldByName('tzbz').Value :=
      sp_dryz.FieldByName('tzbz').AsBoolean;
    qry_dqzxlsb.FieldByName('sftz').Value :=
      sp_dryz.FieldByName('sftz').AsBoolean;
    qry_dqzxlsb.FieldByName('kdrq').Value :=
      sp_dryz.FieldByName('kdrq').AsDateTime;
    if Trim(sp_dryz.FieldByName('tzrq').AsString) = '' then
      qry_dqzxlsb.FieldByName('tzrq').Value := null
    else
      qry_dqzxlsb.FieldByName('tzrq').Value :=
        sp_dryz.FieldByName('tzrq').AsDateTime;
    qry_dqzxlsb.FieldByName('syczxsj').Value :=
      sp_dryz.FieldByName('syczxsj').AsDateTime;   //上一次执行时间取的是
    if Trim(sp_dryz.FieldByName('tzzxsj').AsString) = '' then
      qry_dqzxlsb.FieldByName('tzzxsj').Value := null
    else
      qry_dqzxlsb.FieldByName('tzzxsj').Value :=
        sp_dryz.FieldByName('tzzxsj').AsDateTime;
    qry_dqzxlsb.Post;
    sp_dryz.Next;
  end;
  sp_dryz.Filtered := false;
  sp_dryz.EnableControls;
  qry_dqzxlsb.UpdateBatch(arall);
end;


procedure Tfrm_yzzx.ProZsj1(_zyh: string;yzid:string);
begin
  //1、把选中的医嘱转数据到qry_dqzxlsb,通过qry_dqzxlsb 保存到执行临时表：zybl_zyyz_dqzxlsb
  qry_dqzxlsb.Close;
  qry_dqzxlsb.SQL.Text := 'delete from zybl_zyyz_dqzxlsb where zyh=' + '''' +
    _zyh + ''''+ ' and yzid='''+yzid+'''';
  qry_dqzxlsb.ExecSQL;
  qry_dqzxlsb.Close;
  qry_dqzxlsb.SQL.Text := 'select * from zybl_zyyz_dqzxlsb where 1=2';
  qry_dqzxlsb.Open;
  //sp_dryz.DisableControls;
  //sp_dryz.Filter := 'xz=1';
  //sp_dryz.Filtered := true;
  //sp_dryz.First;
 // while not sp_dryz.Eof do
 // begin
    qry_dqzxlsb.Insert;
    qry_dqzxlsb.FieldByName('zyh').Value := _zyh;
    qry_dqzxlsb.FieldByName('yzsx').Value :=
      sp_dryz.FieldByName('yzsx').AsString;
    qry_dqzxlsb.FieldByName('lb').Value := sp_dryz.FieldByName('lb').AsString;
    qry_dqzxlsb.FieldByName('bz').Value := sp_dryz.FieldByName('bz').AsString;
    qry_dqzxlsb.FieldByName('yzid').Value :=
      sp_dryz.FieldByName('yzid').AsString;
    qry_dqzxlsb.FieldByName('jyflbh').Value :=
      sp_dryz.FieldByName('jyflbh').AsString;
    qry_dqzxlsb.FieldByName('tzbz').Value :=
      sp_dryz.FieldByName('tzbz').AsBoolean;
    qry_dqzxlsb.FieldByName('sftz').Value :=
      sp_dryz.FieldByName('sftz').AsBoolean;
    qry_dqzxlsb.FieldByName('kdrq').Value :=
      sp_dryz.FieldByName('kdrq').AsDateTime;
    if Trim(sp_dryz.FieldByName('tzrq').AsString) = '' then
      qry_dqzxlsb.FieldByName('tzrq').Value := null
    else
      qry_dqzxlsb.FieldByName('tzrq').Value :=
        sp_dryz.FieldByName('tzrq').AsDateTime;
    qry_dqzxlsb.FieldByName('syczxsj').Value :=
      sp_dryz.FieldByName('syczxsj').AsDateTime;   //上一次执行时间取的是
    if Trim(sp_dryz.FieldByName('tzzxsj').AsString) = '' then
      qry_dqzxlsb.FieldByName('tzzxsj').Value := null
    else
      qry_dqzxlsb.FieldByName('tzzxsj').Value :=
        sp_dryz.FieldByName('tzzxsj').AsDateTime;
    qry_dqzxlsb.Post;
  //  sp_dryz.Next;
 // end;
 // sp_dryz.Filtered := false;
 // sp_dryz.EnableControls;
  qry_dqzxlsb.UpdateBatch(arall);
end;

procedure Tfrm_yzzx.QRBand3AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  inherited;

end;

//----calmhawk------

procedure Tfrm_yzzx.RefYzxx;
begin
  sp_dryz.close;
  sp_dryz.Parameters.ParamByName('@zyh').value :=
    sp_brxx.FieldByName('zyh').asstring;   //住院号
  sp_dryz.Parameters.ParamByName('@zxsj').value := formatdatetime('yyyymmdd',
    dT_zxsj.Date);     //执行时间
  sp_dryz.Parameters.ParamByName('@ksdm').value := pub_ksdm;    //科室代码
  sp_dryz.Parameters.ParamByName('@sssbz').value := sssyzzxbz;  //手术室标志
  sp_dryz.Parameters.ParamByName('@sfxse').Value := '0';
  sp_dryz.Open;
  sp_dryz.First;

  DBGridEh4.Columns[1].Width := DBGridEh4.Columns[1].Width + 1;
  DBGridEh4.Columns[1].Width := DBGridEh4.Columns[1].Width - 1;
  DBGridEh2.Columns[13].Width := DBGridEh4.Columns[13].Width + 1;
  DBGridEh2.Columns[13].Width := DBGridEh4.Columns[13].Width - 1;
  createrect(myrect_cx, sp_dryz, dbgrideh4, 12, 13, 15);

  DBGridEh4.SetFocus;
end;

procedure Tfrm_yzzx.ProXzzxhs;
begin
  if xzzxr.Checked then
  begin
    //弹出窗口选择护士
    application.createform(Tfrm_xzhs, frm_xzhs);
    try
      frm_xzhs.ad_ysdm.parameters.parambyname('bqdm').value := pub_bqdm;
      frm_xzhs.ad_ysdm.parameters.parambyname('ksdm').value :=
        sp_brxx.fieldbyname('ksdm').asstring;
      frm_xzhs.ad_ysdm.parameters.parambyname('bqdm1').value := pub_bqdm;
      frm_xzhs.ad_ysdm.parameters.parambyname('ksdm1').value :=
        sp_brxx.fieldbyname('ksdm').asstring;
      frm_xzhs.ad_ysdm.open;
      frm_xzhs.DBComboBox1.Items.Clear;
      frm_xzhs.ad_ysdm.First;
      while not frm_xzhs.ad_ysdm.eof do
      begin
        frm_xzhs.dbcombobox1.Items.Add(frm_xzhs.ad_ysdm.FieldByName('mc').asstring);
        frm_xzhs.ad_ysdm.Next;
      end;
      frm_xzhs.ad_ysdm.Locate('dm', pub_czydm, [loPartialKey]);
      frm_xzhs.dbComboBox1.ItemIndex :=
        frm_xzhs.dbComboBox1.Items.IndexOf(frm_xzhs.ad_ysdm.FieldByName('mc').AsString);
      frm_xzhs.showmodal;
    finally
      //zxczy:=pub_czydm;
      frm_xzhs.free;
    end;
  end
  else
  begin
    zxczy := pub_czydm;
  end;
end;

procedure Tfrm_yzzx.ProSjsj(kdrq: TDateTime; tzrq: TDateTime);  //取开单日期或者停止日期或者当前日期的值
begin
  if srsj.Checked then
  begin
    //弹出窗口输入时间
    //fqyz := false;
    application.createform(TFrm_yzsj, frm_yzsj);

    try
      if (pub_yydm='0261') or (pub_yydm='0269') then //四会，台山中医院
           frm_yzsj.yzzxsj.Date := frm_func.curr_date
      else
      begin
        if (FormatDateTime('yyyyMMdd', kdrq) <> '19000101') and    //有开单日期无停止日期
          (FormatDateTime('yyyyMMdd', tzrq) = '19000101') then
        begin                                                      //把开单日期传给医嘱执行时间
          frm_yzsj.yzzxsj.Date := kdrq;
        end
        else if (FormatDateTime('yyyyMMdd', kdrq) <> '19000101') and  //开单日期和停止日期均不为空则把停止日期传给医嘱执行时间
          (FormatDateTime('yyyyMMdd', tzrq) <> '19000101') then
          frm_yzsj.yzzxsj.Date := tzrq
        else
          frm_yzsj.yzzxsj.Date := frm_func.curr_date;              //否则把当前时间传给医嘱执行事件
      end;
      frm_yzsj.showmodal;

    finally
      //yzsj=Frm_yzsj所录入的时间，sj是yzsj的格式化字符串
      sj := formatdatetime('yyyy-mm-dd hh:mm:ss', yzsj);   //sj变量中要么是开单日期要么是停止日期要么是当前日期
      frm_yzsj.free;
    end;
  end
  else
  begin
    sj := formatdatetime('yyyy-mm-dd hh:mm:ss', frm_func.curr_date);
  end;
end;

procedure Tfrm_yzzx.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Application.OnMessage := nil;
  //  if frm_yzinput <> nil then
  //    frm_yzinput.free;

end;

procedure Tfrm_yzzx.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    selectnext(activecontrol, true, true);
end;

procedure Tfrm_yzzx.FormResize(Sender: TObject);
begin
  scrollbox1.VertScrollBar.Position := 0;
  scrollbox1.HorzScrollBar.Position := 0;
  dbgrideh4.Left := scrollbox1.ClientRect.left;
  dbgrideh4.Top := scrollbox1.ClientRect.top;

end;

procedure Tfrm_yzzx.FormShow(Sender: TObject);
//var
//   kscolumn:TColumneh;
begin
  if pub_yydm = '0228'  then
  begin
    N2.Visible := True;
    N3.Visible := True;
  end;

  if( pub_yydm='0263') or( pub_yydm='0264') then
  begin
    label8.Visible:=true;
    bah.Visible:=true;
  end;
  showForm;
  if pub_yydm='0266' then //广元昭化特殊需求
  begin
    checkBox2.checked:=true;
  end;
//  DBGridEh2.Columns[28].Free;
//  kscolumn:= dbgrideh2.Columns.Add;
//  kscolumn.Title.caption:='开单科室';
//  kscolumn.FieldName:='ksmc';
end;

procedure Tfrm_yzzx.ScrollBox1MouseWheelUp(Sender: TObject; Shift: TShiftState;
  MousePos: TPoint; var Handled: Boolean);
begin
  if DBGridEh4.Focused = true then
    ScrollBox1.VertScrollBar.Position := ScrollBox1.VertScrollBar.Position - 24;
end;

procedure Tfrm_yzzx.showForm;
var
 subMenu: TMenuItem;
 begin
  // event
  Application.OnMessage := OnMouseWheel_yzzx;
  // interface
  QuickRep2.Visible := False;
  if (pub_yydm <> '0015') and (pub_yydm <> '0270') then
  begin
//    DBGridEh2.FieldColumns['ysfs'].Visible := false;   由于石泉妇保院的改动，屏蔽运输方式
//    DBGridEh4.FieldColumns['ysfs'].Visible := false;
    N8.Enabled := False;
    N11.Enabled := False;
  end;
  //三医院ICU病区有取消医嘱执行记录的权利
  if (pub_yydm = '0003') and (pub_bqdm = '0030') then
    N17.Visible := True;
  if (pub_yydm = '0015') then
  begin
    if (username = 'sys_bqgl') and (frm_main.FindComponent('HSGZZL33') <> nil)
      then
      btn_GongZuoLiang.Visible := (frm_main.FindComponent('HSGZZL33') as
        TMenuItem).Visible;
  end;
  if pub_yydm = '0003' then
    cxButton9.Visible := false;

  if pub_yydm <> '0013' then
  begin
    N9.Visible := False;
    N10.Visible := False;
  end;
  scrollbox1.VertScrollBar.Position := 0;
  scrollbox1.HorzScrollBar.Position := 0;
  dbgrideh4.Left := scrollbox1.ClientRect.left;
  dbgrideh4.Top := scrollbox1.ClientRect.top;

 //动态添加医嘱执行右键菜单的内容
  DM_data.qry_pub.Close;
  DM_data.qry_pub.SQL.Text:='select name,id from zyyz_lsyzqxfs';
  DM_data.qry_pub.Open;
  if not DM_data.qry_pub.IsEmpty then
  begin
    DM_data.qry_pub.First;
    while not DM_data.qry_pub.Eof do
    begin
      if not Assigned(FindComponent('sub_M'+DM_data.qry_pub.FieldByName('id').AsString)) then
      begin
        subMenu := TMenuItem.Create(Self);
        subMenu.Caption := DM_data.qry_pub.FieldByName('name').AsString;
        subMenu.Name:= 'sub_M'+DM_data.qry_pub.FieldByName('id').AsString;
        subMenu.OnClick := N_liyiqxfsClick;
        PopupMenu1.Items.Add(subMenu);
      end;
      DM_data.qry_pub.Next;
    end;
  end;
  with DM_data.qry_pub do
  begin
    Close;
    SQL.text := 'select xzzxr from sys_xt_kg ';
    try
      Open;
    except
    end;
    xzzxr.Visible := FieldByName('xzzxr').AsBoolean;
    xzzxr.Checked := xzzxr.Visible;
  end;

  srsj.Checked := True;

  DateTimePicker1.value := FormatDateTime('yyyy-MM-dd 00:00',
    frm_func.curr_date);
  DateTimePicker2.value := FormatDateTime('yyyy-MM-dd 23:59',
    frm_func.curr_date);

  PageControl1.ActivePage := Tabsheet1;

  // var
  sssyzzxbz := '';

  with DM_data.qry_pub do
  begin
    close;
    sql.Text := 'select sfqyydhsz from sys_xt_kg';
    try
      Open;
    except
    end;
    sfqyydhsz := FieldByName('sfqyydhsz').AsBoolean;
  end;

  cx_zyh := '';
  if (sp_brxx.Active) and (not sp_brxx.IsEmpty) then
    cx_zyh := sp_brxx.FieldByName('zyh').AsString;

  //病区全部病员
  dt_zxsj.DateTime := frm_func.curr_date;
  sp_yzsj.Close;
  sp_yzsj.Parameters.ParamByName('@scyzsj').Value := dt_zxsj.DateTime;
  sp_yzsj.ExecProc;
  dt_zxsj.DateTime := sp_yzsj.Parameters.ParamByName('@scyzsj').Value;

  // Data Evn
  sp_brxx.Close;
  sp_brxx.Parameters.ParamByName('@sr_bqdm').Value := trim(pub_bqdm);
  sp_brxx.Parameters.ParamByName('@yzzxsj').Value := formatdatetime('yyyymmdd',
    dT_zxsj.Date);
  sp_brxx.Parameters.ParamByName('@zyh').Value := '';
  sp_brxx.Parameters.ParamByName('@sssbz').Value := sssyzzxbz;
  sp_brxx.Parameters.ParamByName('@sfxse').Value := '0';
  sp_brxx.Open;
  if cx_zyh = '' then
    cx_zyh := zyh;
  // 如果传入的住院号在sp_brxx中找不到，就定位在第一个病人上。
  if not sp_brxx.Locate('zyh', cx_zyh, []) then
  begin
    sp_brxx.First;
    cx_zyh := sp_brxx.FieldByName('zyh').AsString;
  end;
  if not sp_brxx.IsEmpty then
    RefYzxx;
end;

procedure Tfrm_yzzx.SpeedButton1Click(Sender: TObject);
begin
  showForm;
end;

procedure Tfrm_yzzx.SpeedButton2Click(Sender: TObject);
var
  i, y, j, count, x: Integer;
  aControl: TControl;
begin
  with sp_zxjl_cq_dy do
  begin
    Close;
    Parameters.ParamByName('@zyh').Value :=
      Trim(sp_brxx.fieldbyname('zyh').asstring);
    Parameters.ParamByName('@fs').Value := 0;
    Open;
  end;

  sp_zxjl_cq_dy.Filtered := False;
  sp_zxjl_cq_dy.Filter := 'yytj=''口服''';
  sp_zxjl_cq_dy.Filtered := True;
  if not sp_zxjl_cq_dy.IsEmpty then
  begin
    sp_zxjl_cq_dy.First;
    if sp_zxjl_cq_dy.RecordCount mod 20 <> 0 then
      y := trunc(sp_zxjl_cq_dy.RecordCount / 20) + 1
    else
      y := trunc(sp_zxjl_cq_dy.RecordCount / 20);
    count := sp_zxjl_cq_dy.RecordCount;
    for I := 1 to y do
    begin
      for j := 1 to 20 do
      begin
        if count < y * 20 then
        begin
          if j > (20 - (y * 20 - count)) then
          begin
            aControl := QRBand2.FindChildControl('ksrq' + IntToStr(j - 1));
            if aControl is TQRLabel then
              TQRLabel(aControl).Caption := '';
            aControl := QRBand2.FindChildControl('kdysmc' + IntToStr(j - 1));
            if aControl is TQRLabel then
              TQRLabel(aControl).Caption := '';
            //DetailBand1.FindChildControl('qrgrimage' + IntToStr(j)).enabled:=false;
            TQRLabel(QRBand2.FindChildControl('xmmc' + IntToStr(j - 1))).Width
              := 0;
            //TQRLabel(DetailBand1.FindChildControl('ypyf' + IntToStr(j-1))).Caption:='';
            TQRLabel(QRBand2.FindChildControl('xmmc' + IntToStr(j - 1))).caption
              := '';

          end
          else
          begin

            aControl := QRBand2.FindChildControl('ksrq' + IntToStr(j - 1));
            if aControl is TQRLabel then
              TQRLabel(aControl).Caption :=
                sp_zxjl_cq_dy.FieldByName('ksrq').AsString;

            aControl := QRBand2.FindChildControl('kdysmc' + IntToStr(j - 1));
            if aControl is TQRLabel then
              TQRLabel(aControl).Caption :=
                sp_zxjl_cq_dy.FieldByName('kdysmc').asstring;

            if sp_zxjl_cq_dy.FieldByName('fzph').asstring <> '' then
            begin
              x := (length(sp_zxjl_cq_dy.FieldByName('xmmc').Asstring) * 8) div
                200;
              //      DetailBand1.FindChildControl('QRgrImage' + IntToStr(j)).enabled:=true;
              //      DetailBand1.FindChildControl('QRgrImage' + IntToStr(j)).Top:=TQRLabel(DetailBand1.FindChildControl('xmmc' + IntToStr(j-1))).top;
              //      DetailBand1.FindChildControl('QRgrImage' + IntToStr(j)).left:=DetailBand1.FindChildControl('ypyf' + IntToStr(j-1)).left-20;
              //      DetailBand1.FindChildControl('qrgrimage' + IntToStr(j)).height:=x*DetailBand1.FindChildControl('ypyf' + IntToStr(j-1)).height;
                    //DetailBand1.FindChildControl('ypyf' + IntToStr(j-1)).top:= x*DetailBand1.FindChildControl('ypyf' + IntToStr(j-1)).height div 2;
                    //TQRLabel(DetailBand1.FindChildControl('ypyf' + IntToStr(j-1))).Caption:=trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring)+'  '+trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
                    //TQRLabel(DetailBand1.FindChildControl('xmmc' + IntToStr(j-1))).Width:=200;
              TQRLabel(QRBand2.FindChildControl('xmmc' + IntToStr(j -
                1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring;
            end
            else
            begin
              //DetailBand1.FindChildControl('qrgrimage' + IntToStr(j)).enabled:=false;
              QRBand2.FindChildControl('xmmc' + IntToStr(j - 1)).Width := 190;
              //TQRLabel(DetailBand1.FindChildControl('ypyf' + IntToStr(j-1))).Caption:='';
              TQRLabel(QRBand2.FindChildControl('xmmc' + IntToStr(j -
                1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring + '  '
                + trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
            end;
            sp_zxjl_cq_dy.Next;

          end;

        end

        else

        begin

          aControl := QRBand2.FindChildControl('ksrq' + IntToStr(j - 1));
          if aControl is TQRLabel then
            TQRLabel(aControl).Caption :=
              sp_zxjl_cq_dy.FieldByName('ksrq').asstring;

          aControl := QRBand2.FindChildControl('kdysmc' + IntToStr(j - 1));
          if aControl is TQRLabel then
            TQRLabel(aControl).Caption :=
              sp_zxjl_cq_dy.FieldByName('kdysmc').asstring;

          if sp_zxjl_cq_dy.FieldByName('fzph').asstring <> '' then
          begin
            x := (length(sp_zxjl_cq_dy.FieldByName('xmmc').Asstring) * 8) div
              200;
            //      DetailBand1.FindChildControl('QRgrImage' + IntToStr(j)).enabled:=true;
            //      DetailBand1.FindChildControl('QRgrImage' + IntToStr(j)).Top:=TQRLabel(DetailBand1.FindChildControl('xmmc' + IntToStr(j-1))).top;
            //      DetailBand1.FindChildControl('qrgrimage' + IntToStr(j)).left:=DetailBand1.FindChildControl('ypyf' + IntToStr(j-1)).left-20;
            //      DetailBand1.FindChildControl('qrgrimage' + IntToStr(j)).height:=x*DetailBand1.FindChildControl('ypyf' + IntToStr(j-1)).height;
                  //DetailBand1.FindChildControl('ypyf' + IntToStr(j-1)).top:= x*DetailBand1.FindChildControl('ypyf' + IntToStr(j-1)).height div 2;
                  //TQRLabel(DetailBand1.FindChildControl('ypyf' + IntToStr(j-1))).Caption:=trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring)+'  '+trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
                  //xmmc.Width:=200;
            TQRLabel(QRBand2.FindChildControl('xmmc' + IntToStr(j - 1))).caption
              := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring;
          end
          else
          begin
            //DetailBand1.FindChildControl('qrgrimage' + IntToStr(j)).enabled:=false;
            QRBand2.FindChildControl('xmmc' + IntToStr(j - 1)).Width := 190;
            //TQRLabel(DetailBand1.FindChildControl('ypyf' + IntToStr(j-1))).Caption:='';
            TQRLabel(QRBand2.FindChildControl('xmmc' + IntToStr(j - 1))).caption
              := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring + '  ' +
              trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
          end;

          sp_zxjl_cq_dy.Next;
        end;

      end;

      QRL_yymc_cq.Caption := pub_yymc + '医嘱执行单(口服药)';
      QRL_brxm_cq.Caption := '姓名:' + sp_brxx.fieldbyname('brxm').asstring;
      //QRL_tmh_cq.Caption := '住院号:' + sp_sybr.fieldbyname('brxm').asstring;;
      QRL_bch_cq.Caption := '床号:' + sp_brxx.fieldbyname('bch').asstring;
      //  xb_cq.Caption := '性别:' + sp_sybr.fieldbyname('brxb').asstring;
      //  nl_cq.Caption := '年龄:' + trim(sp_sybr.fieldbyname('brnl').asstring)+'岁';
        //zd_cq.Caption := '诊断:' + trim(sp_jbxx.FieldByName('ryzd').AsString);
        //QRL_dysj_cq.Caption := '打印时间:' + FormatDatetime('yyyy年mm月dd日', frm_func.curr_date);
      //  sj1.caption:='日期'+#13+'时间';
      //  sj2.caption:='执行'+#13+'时间';
      //  sj3.caption:='日期'+#13+'时间';
      //  sj4.caption:='执行'+#13+'时间';
      qrlbl_nf_tmh.Caption := '住院号:' + sp_brxx.fieldbyname('tmh').asstring;
      qrlbl_nfQRL_bq_cq.Caption := '病区:' + pub_bqmc;
      QuickRep2.Prepare;
      //  paper_size:=0;
      //  QRL_ys_cq.Caption := '共' + IntToStr(QuickRep1.Printer.PageCount) + '页';
      ys.Caption := '第' + '   ' + inttostr(i) + '  页';
      QuickRep2.Preview;

    end;

  end;

end;

procedure Tfrm_yzzx.sp_dryzAfterOpen(DataSet: TDataSet);
begin
  if sp_dryz.RecordCount * 30 > screen.Height - 70 then
    dbgrideh4.Height := sp_dryz.RecordCount * 30
  else
    dbgrideh4.Height := screen.Height - 70;
  createrect(myrect_cx, sp_dryz, dbgrideh4, 9, 10, 14);
end;

procedure Tfrm_yzzx.sp_dryzBeforeScroll(DataSet: TDataSet);
begin
  wz := 0;
  if sp_dryz.Active then
    if sp_dryz.RecordCount > 0 then
      wz := sp_dryz.RecNo;
end;

procedure Tfrm_yzzx.TabSheet2Show(Sender: TObject);
begin
  qry_fymx.Close;
  qry_fymx.Parameters.ParamByName('zyh').Value := cx_zyh;
  qry_fymx.Open;
end;

procedure Tfrm_yzzx.Timer1Timer(Sender: TObject);
begin
  DBGridEh2.left := 3 - ScrollBox1.HorzScrollBar.Position;
end;

procedure Tfrm_yzzx.WMAdoReStore(var message: TMessage);
begin
  showForm;
end;

procedure Tfrm_yzzx.zxyzClick(Sender: TObject);
var
  sbookmark: Tbookmark;
  syfz, jyfzbh, _zyh, _res: string;
  checked, sfyc: boolean;
  zxrymc: string;
  zyh_local: string;
  kdrq: TDateTime;
  tzrq: TDateTime;
  yzid_zh: string;
  xzsl: Integer;
  cwsl: Integer;
  Byzzxbnxg, BDoAgain, BCheckCZY: Boolean;
  BQxHint: Boolean;
  ItmpI, ItmpJ: Integer;
  DKDRQ_Out, DKDRQ_In, DTZRQ_Out, DTZRQ_In: TDateTime;
  BTZZT_Out, BTZZT_In, BMix, BKDRQDiff, BTZRQDiff: Boolean;
  CMixAndDiffWarn: string;
  _hljbmc: string;
  //返回两个TDatetime变量的差值是否小于 N 分钟
  function BIsMinuteDiffLessN(ATime, BTime: TDatetime; N: integer): Boolean;
  var
    MinTime, MaxTime: TDatetime;
  begin
    Result := False;
    if ATime >= BTime then
    begin
      MinTime := BTime;
      MaxTime := Atime;
    end
    else
    begin
      MinTime := ATime;
      MaxTime := BTime;
    end;
    MinTime := incMinute(MinTime, N);
    if MinTime < MaxTime then
      exit;
    Result := True;
  end ;

 //未启用新医嘱执行方式的开关，false则是老的医嘱执行方式，true则为启用新医嘱的执行方式
    begin
      _zyh := sp_brxx.FieldByName('zyh').asstring;  //住院号
      kdrq := EncodeDateTime(1900, 1, 1, 0, 0, 0, 0);
      tzrq := EncodeDateTime(1900, 1, 1, 0, 0, 0, 0);
      zxczy := pub_czydm;
     if not pub_qyxyzzxfs  then
     begin
      DM_data.qry_pub.close;
      DM_data.qry_pub.sql.Text := 'SELECT yzzxbnxg FROM dbo.sys_xt_kg';
      try
        DM_data.qry_pub.Open;
        Byzzxbnxg := DM_data.qry_pub.FieldByName('yzzxbnxg').AsBoolean;
      except
      end;
      xzsl := 0;        //选中数量
      cwsl := 0;
      sp_dryz.DisableControls;
      sp_dryz.First;
      while not sp_dryz.eof do
      begin
        if sp_dryz.fieldbyname('xz').asboolean = true then
          xzsl := xzsl + 1;
        sp_dryz.Next;
      end;
      sp_dryz.First;
      sp_dryz.EnableControls;
      if xzsl = 0 then
      begin
        Application.MessageBox('未选择需要执行的医嘱，请重新选择后执行！', '错误',
          MB_OK + MB_ICONSTOP);
        Exit;
      end;
      sbookmark := sp_dryz.GetBookmark;   //书签定位当前记录位置
      jyfzbh := '';
      sfyc := false;
      sp_dryz.DisableControls;
      sp_dryz.First;
      while not sp_dryz.eof do
      begin
        if not sp_dryz.fieldbyname('xz').asboolean then
        begin
          sp_dryz.next;
          continue;
        end;
        kdrq := sp_dryz.fieldbyname('kdrq').AsDateTime;   //医嘱中的kdrq
        if Trim(sp_dryz.fieldbyname('tzrq').AsString) <> '' then
          tzrq := sp_dryz.fieldbyname('tzrq').AsDateTime;
        sp_dryz.Next;
      end;
      sp_dryz.EnableControls;
      //江油市人民医院特殊需求，医嘱两两比较
      if pub_yydm = '0015' then
      begin
        sp_dryz.DisableControls;
        BMix := False;
        BKDRQDiff := False;
        BTZRQDiff := False;
        for ItmpI := 1 to sp_dryz.Recordcount - 1 do
          begin
            Sp_dryz.RecNo := ItmpI;
            if not Sp_Dryz.FieldByName('xz').AsBoolean then       //未选中则跳到下一条
              continue;
            DKDRQ_Out := sp_dryz.FieldByName('kdrq').AsDateTime;    //开单日期
            DTZRQ_Out := sp_dryz.FieldByName('tzrq').AsDateTime;    //停止日期
            if sp_dryz.FieldByName('sftz').AsString = '已停止' then
              BTZZT_Out := True                                    //停止标志
            else
              BTZZT_Out := False;
            for ItmpJ := ItmpI + 1 to Sp_Dryz.RecordCount do      //
            begin
              Sp_dryz.RecNo := ItmpJ;
              if not Sp_Dryz.FieldByName('xz').AsBoolean then
                continue;
              DKDRQ_In := sp_dryz.FieldByName('kdrq').AsDateTime;    //开单日期
              DTZRQ_In := sp_dryz.FieldByName('tzrq').AsDateTime;    //停止日期
              if sp_dryz.FieldByName('sftz').AsString = '已停止' then
                BTZZT_In := True
              else
                BTZZT_In := False;
              //
              if BTZZT_Out <> BTZZT_In then        //比较两条选中的记录停止标志是否一样都未停止或都已停止则BMix置为true
                BMix := True;
              if not BIsMinuteDiffLessN(DKDRQ_IN, DKDRQ_OUT, 20) then      //两条执行的医嘱开单日期间隔小于20分钟
                BKDRQDIFF := TRUE;
              if not BIsMinuteDiffLessN(DTZRQ_IN, DTZRQ_OUT, 20) then     //医嘱停止日期间隔小于20分钟
                BTZRQDIFF := TRUE;                                         //BTZQRDIFF置为tre
            end;
          end;
        sp_dryz.EnableControls;

        if BMix then
          CMixAndDiffWarn := '已停止医嘱和未停止医嘱同时被选中；';
        if BKDRQDIFF then
          CMixAndDiffWarn := CMixAndDiffWarn + #13#10 +
            '医生设定的开始执行时间相差20分钟以上的医嘱同时被选中；';
        if BTZRQDIFF then
          CMixAndDiffWarn := CMixAndDiffWarn +
            '医生设定的停止执行时间相差20分钟以上的医嘱同时被选中；';
        if CMixAndDiffWarn <> '' then
          Application.MessageBox(PChar('请注意：您选中的多条医嘱中存在下列情况：' +
            #13#10 + CMixAndDiffWarn + #13#19 + '请谨慎执行！'), '警告', MB_OK +
            MB_ICONWARNING);
      end;
      //选择时间
      //这里的开单日期kdrq、停止日期tzrq可能的值：
      //1.如果至少选中一条医嘱：kdrq,tzrq是最后一条医嘱的；
      //2.如果未选中任何医嘱：kdrq,tzrq=上面赋的字符串值
      ProSjsj(kdrq, tzrq);

      //循环选中的医嘱，进行特殊处理：pub_yydm='0003'时，未过停止时间的医嘱不能执行
      //此时，会取消这些医嘱的选中状态
      sp_dryz.First;
      sp_dryz.DisableControls;
      BQxHint := False;
      if Byzzxbnxg then
        BCheckCZY := CheckCZY();
      while not sp_dryz.eof do
      begin
        if sp_dryz.fieldbyname('xz').asboolean then
        begin
          if pub_yydm = '0003' then
          begin
            if (Trim(sp_dryz.fieldbyname('tzrq').AsString) <> '') and    //未过停止时间就不让执行？
              (StrToDateTime(sj) >= sp_dryz.fieldbyname('tzrq').AsDateTime) then
            begin
              if (sp_dryz.fieldbyname('tzrq').AsDateTime > Frm_func.curr_date) then
              begin
                Application.MessageBox('还未过停止时间，不能执行！', '错误',
                  MB_OK + MB_ICONSTOP);
                sp_dryz.Edit;
                sp_dryz.fieldbyname('xz').asboolean := false;
                sp_dryz.Post;
                cwsl := cwsl + 1;
              end;
            end;
          end;
          if Byzzxbnxg then
          begin
            BDoAgain := False;
            if sp_dryz.fieldbyname('Syczxsj').AsString <> '' then
            begin
              if ((yzsj >= sp_dryz.fieldbyname('kdrq').AsDateTime) and
                (sp_dryz.fieldbyname('tzrq').AsString = ''))
                or
                ((yzsj >= sp_dryz.fieldbyname('kdrq').AsDateTime) and
                (sp_dryz.fieldbyname('tzrq').AsString <> '') and (yzsj <
                sp_dryz.fieldbyname('tzrq').AsDateTime))
                or
                ((sp_dryz.fieldbyname('tzrq').AsString <> '') and
                (sp_dryz.fieldbyname('tzzxsj').AsString <> '') and (yzsj >=
                sp_dryz.fieldbyname('tzrq').AsDateTime)) then
                BDoAgain := True;
              if BDoAgain and (not BCheckCZY) then
              begin
                sp_dryz.Edit;
                sp_dryz.fieldbyname('xz').asboolean := false;
                sp_dryz.Post;
                cwsl := cwsl + 1;
                BQxHint := True;
              end;
            end;
          end;

          { // XML 2014-09-28 改变病人的护理级别需要 护士执行生效}
          if (Pos('级护理', sp_dryz.FieldByName('xmmc').AsString) > 0)
            and (Trim(sp_dryz.fieldbyname('syczxsj').AsString) = '') then
          begin
            _hljbmc := sp_dryz.FieldByName('xmmc').AsString;
            DM_data.qry_pub.Close;
            DM_data.qry_pub.sql.text := 'select * from sys_hljb where rtrim(mc)=' +
              '''' + trim(_hljbmc) + '''';
            try
              DM_data.qry_pub.open;
            except

            end;
            if not DM_data.qry_pub.IsEmpty then
            begin
              sp_se_hljb.parameters.ParamByName('@tmh').value := sp_brxx['tmh'];
              sp_se_hljb.parameters.ParamByName('@zyh').value := sp_brxx['zyh'];
              sp_se_hljb.parameters.ParamByName('@brxm').value := sp_brxx['brxm'];
              sp_se_hljb.parameters.ParamByName('@hljb').value :=
                DM_data.qry_pub.FieldByName('dm').asstring;
              sp_se_hljb.ExecProc;
            end;
          end;

        end;
        sp_dryz.Next;
      end;
      if BQxHint then
        Application.MessageBox(PChar('您所选定的医嘱中存在已执行过的医嘱，' +
          #13#10 +
          '只有护士长才能修改这些医嘱的执行时间！' + #13#10 +
          '已取消勾选这些医嘱。'),
          PChar('权限不足'), MB_OK + MB_ICONINFORMATION);
      sp_dryz.EnableControls;
      //cwsl=xzsl，表示所有的选中医嘱都被取消选择了(没有医嘱被选中)
      if cwsl = xzsl then
        Exit;
      //选择执行人
      ProXzzxhs;
      //fqyz:在设定时间时，如果未输入时间，则fqyz:=true ，就不会执行任何医嘱
      if not fqyz then
      begin
        //1、转数据到qry_dqzxlsb,通过qry_dqzxlsb 保存到执行临时表：zybl_zyyz_dqzxlsb
        ProZsj(_zyh);
        _res := '1';
        //2、执行
        sp_yzzx.close;
        sp_yzzx.Parameters.ParamByName('@zyh').Value :=
          sp_brxx.FieldByName('zyh').asstring;
        sp_yzzx.Parameters.ParamByName('@zxsj').Value := formatdatetime('yyyymmdd',
          dt_zxsj.Date); //执行日期
        sp_yzzx.Parameters.ParamByName('@yzsj').Value := sj; //弹出框里的选择的时间就是要么是开单时间要么是结束时间要么是当前时间
        sp_yzzx.Parameters.ParamByName('@czydm').Value := zxczy;
        sp_yzzx.Parameters.ParamByName('@jyfzbh').Value := jyfzbh;
        sp_yzzx.Parameters.ParamByName('@sczt').Value := _res;
        sp_yzzx.ExecProc;
        _res := sp_yzzx.parameters.ParamByName('@sczt').value;
        if _res <> '0' then
        begin
          ShowMessage('执行失败!' + #13 + _res);
        end;
        //刷新
        RefYzxx;
        ProXswzx;
      end;
      end;
     if pub_qyxyzzxfs then     //新医嘱执行方式下
      begin
         DM_data.qry_pub.close;     //医嘱执行后是否能修改
         DM_data.qry_pub.sql.Text := 'SELECT yzzxbnxg FROM dbo.sys_xt_kg';
      try
        DM_data.qry_pub.Open;
        Byzzxbnxg := DM_data.qry_pub.FieldByName('yzzxbnxg').AsBoolean;
      except
      end;
       sp_dryz.DisableControls;
       sp_dryz.First;
      while not sp_dryz.eof do
        begin
          if sp_dryz.fieldbyname('xz').asboolean = true then     //医嘱选中的状态下
          
           begin
             kdrq := sp_dryz.fieldbyname('kdrq').AsDateTime;  //取开单日期
              if Trim(sp_dryz.fieldbyname('tzrq').AsString) <> '' then    //取停止日期
                 tzrq := sp_dryz.fieldbyname('tzrq').AsDateTime ;

            ProXzzxhs;

            ProZsj1(_zyh,sp_dryz.FieldByName('yzid').AsString);
            _res := '1';
            sp_yzzx_new.close;
            sp_yzzx_new.Parameters.ParamByName('@zyh').Value :=
              sp_brxx.FieldByName('zyh').asstring;
            sp_yzzx_new.Parameters.ParamByName('@zxsj').Value := formatdatetime('yyyymmdd',
              dt_zxsj.Date); //执行日期
            //加一个医嘱id
            sp_yzzx_new.Parameters.ParamByName('@yzid').value:= sp_dryz.FieldByName('yzid').AsInteger;
            sp_yzzx_new.Parameters.ParamByName('@yzsj').Value := kdrq;

            if (FormatDateTime('yyyyMMdd', tzrq) <> '19000101') then
            sp_yzzx_new.Parameters.ParamByName('@yzsj1').Value := tzrq;
            sp_yzzx_new.Parameters.ParamByName('@czydm').Value := zxczy;
            sp_yzzx_new.Parameters.ParamByName('@jyfzbh').Value := jyfzbh;
            sp_yzzx_new.Parameters.ParamByName('@sczt').Value := _res;
            sp_yzzx_new.ExecProc;
            _res := sp_yzzx_new.parameters.ParamByName('@sczt').value;
            if _res <> '0' then
            begin
              ShowMessage('执行失败!' + #13 + _res);
            end;

          end;
             //////////////////////////////////
          sp_dryz.Next;
        end;
        RefYzxx;
        ProXswzx;
        
        sp_dryz.First;
        sp_dryz.EnableControls;

      end;
    end ;



procedure Tfrm_yzzx.cxBt1Click(Sender: TObject);
begin
  try
    application.createform(tfrm_hsdyzxd, frm_hsdyzxd);
    //    Application.OnMessage := nil;
    frm_hsdyzxd.showmodal;
  finally
    frm_hsdyzxd.free;
  end;
end;

procedure Tfrm_yzzx.cxBtn_kfbqClick(Sender: TObject);
var
  data:TDateTime;
  dqsj:String;
begin
  sp_dryz.DisableControls;
  sp_dryz.first;
  sp_dryz.Filtered:=false;
  sp_dryz.Filter:='yytj=''口服''';
  sp_dryz.Filtered:=true;
  ChangePrinter;
  qry_sj.Close;
  qry_sj.sql.text:='select getdate() as dte';
  qry_sj.Open;
  data:=qry_sj.FieldByName('dte').AsDateTime;
  dqsj:=DateToStr(data);
  if sp_dryz.RecordCount<1 then
  begin
    ShowMessage('当前病人没有口服药品！');
  end else
  while not sp_dryz.eof do
  begin
  if not sfqyydhsz then
  begin
    if (pub_yydm='0266') or (pub_yydm = '0261') then
    begin
      qrl_ks.Caption := '日期:'+dqsj+' 科室:' + pub_ksmc;
      qrl_ks.font.size := 7;
      qrl_ks.left := 7;
      qrl_ks.top := 90;
      qrl_ch.Caption := '床号' + Trim(sp_brxx.FieldByName('bch').AsString)+' 年龄:'+Trim(sp_brxx.FieldByName('brnl').AsString);
      qrl_ch.font.size := 8;
      qrl_ch.left := 7;
      qrl_ch.top := 30;
      qrl_brxm.Caption := '姓名:' + Trim(sp_brxx.FieldByName('brxm').AsString);
      qrl_brxm.font.size := 8;
      qrl_brxm.left := 7;
      qrl_brxm.top := 10;
      qrl_ks1.Caption := '药品:' + trim(sp_dryz.FieldByName('xmmc').asString);
      qrl_ks1.font.size := 8;
      qrl_ks1.left := 7;
      qrl_ks1.top := 50;
      qrl_ch1.Caption := '用量:' +trim(sp_dryz.FieldByName('ypyl').asString)+trim(sp_dryz.FieldByName('yldw').asString);
      qrl_ch1.font.size := 7;
      qrl_ch1.left := 7;
      qrl_ch1.top := 70;
      qrl_brxm1.Caption := '用法:' + trim(sp_dryz.FieldByName('ypyf').asString)+' '+trim(sp_dryz.FieldByName('yytj').asString);
      qrl_brxm1.font.size := 7;
      qrl_brxm1.left := 64;
      qrl_brxm1.top := 70;
    end else
    begin
      qrl_ks.Caption := '科室:' + pub_ksmc;
      qrl_ch.Caption := '床号' + Trim(sp_brxx.FieldByName('bch').AsString);
      qrl_brxm.Caption := '姓名:' + Trim(sp_brxx.FieldByName('brxm').AsString);
      QRLabel4.Caption := '科室:' + pub_ksmc;
      QRLabel13.Caption := '床号' + Trim(sp_brxx.FieldByName('bch').AsString);
      QRLabel14.Caption := '姓名:' + Trim(sp_brxx.FieldByName('brxm').AsString);
    end;
    if v_IsPrinterJoin then
    begin
      if QuickRep3.PrinterSettings.PrinterIndex <> v_PrinterIndex_new then
      begin
        QuickRep3.PrinterSettings.PrinterIndex := v_PrinterIndex_new;
      end;
    end;
    //  if ( QuickRep3.Printer.PrinterName <> Printer.Printers[v_PrinterIndex_new] ) then
    //  begin
    //    QuickRep3.Printer.PrinterName := Printer.Printers[v_PrinterIndex_new];
    //  end;
    QuickRep3.Print;
  end
  else
  begin

    if (pub_yydm='0266') or (pub_yydm = '0261') then
    begin
      QRLabel1.Caption := '日期:'+dqsj+' 科室:' + pub_ksmc;
      QRLabel1.font.size := 7;
      QRLabel1.left :=7;
      QRLabel1.top := 90;
      QRLabel3.Caption := '床号' + Trim(sp_brxx.FieldByName('bch').AsString)+' 年龄:'+Trim(sp_brxx.FieldByName('brnl').AsString);
      QRLabel3.font.size := 8;
      QRLabel3.left := 7;
      QRLabel3.top := 30;
      QRLabel2.Caption := '姓名:' + Trim(sp_brxx.FieldByName('brxm').AsString);
      QRLabel2.font.size := 8;
      QRLabel2.left := 7;
      QRLabel2.top := 10;
      QRLabel4.Caption := '药品:' + trim(sp_dryz.FieldByName('xmmc').asString);
      QRLabel4.font.size := 8;
      QRLabel4.left := 7;
      QRLabel4.top := 50;
      QRLabel13.Caption := '用量:' +trim(sp_dryz.FieldByName('ypyl').asString)+trim(sp_dryz.FieldByName('yldw').asString);
      QRLabel13.font.size := 7;
      QRLabel13.left := 7;
      QRLabel13.top := 70;
      QRLabel14.Caption := '用法:' + trim(sp_dryz.FieldByName('ypyf').asString)+' '+trim(sp_dryz.FieldByName('yytj').asString);
      QRLabel14.font.size := 7;
      QRLabel14.left := 64;
      QRLabel14.top := 70;
  end else
    begin
      QRLabel1.Caption := '科室:' + pub_ksmc;
      QRLabel3.Caption := '床号' + Trim(sp_brxx.FieldByName('bch').AsString);
      QRLabel2.Caption := '姓名:' + Trim(sp_brxx.FieldByName('brxm').AsString);
      QRLabel4.Caption := '科室:' + pub_ksmc;
      QRLabel13.Caption := '床号' + Trim(sp_brxx.FieldByName('bch').AsString);
      QRLabel14.Caption := '姓名:' + Trim(sp_brxx.FieldByName('brxm').AsString);
    end;

    if v_IsPrinterJoin then
    begin
      if QuickRep1.PrinterSettings.PrinterIndex <> v_PrinterIndex_new then
      begin
        QuickRep1.PrinterSettings.PrinterIndex := v_PrinterIndex_new;
      end;
    end;
    //  if ( QuickRep3.Printer.PrinterName <> Printer.Printers[v_PrinterIndex_new] ) then
    //  begin
    //    QuickRep3.Printer.PrinterName := Printer.Printers[v_PrinterIndex_new];
    //  end;
    QuickRep1.Print;
  end;
  //RevertPrinter;
   sp_dryz.Next;
  end;
  sp_dryz.Filtered:=false;
  sp_dryz.First;
  sp_dryz.EnableControls;
end;

procedure Tfrm_yzzx.cxBtn_qbkfbqClick(Sender: TObject);
var
  data:TDateTime;
  dqsj:String;
begin
  sp_brxx.DisableControls;
  sp_brxx.first;
  ChangePrinter;
  qry_sj.Close;
  qry_sj.sql.text:='select getdate() as dte';
  qry_sj.Open;
  data:=qry_sj.FieldByName('dte').AsDateTime;
  dqsj:=DateToStr(data);
  while not sp_brxx.eof do
  begin
    sp_dryz.DisableControls;
    sp_dryz.first;
    sp_dryz.Filtered:=false;
    sp_dryz.Filter:='yytj=''口服''';
    sp_dryz.Filtered:=true;
    while not sp_dryz.eof do
    begin
      if not sfqyydhsz then
      begin
        if (pub_yydm='0266') or (pub_yydm = '0261') then
        begin
          qrl_ks.Caption := '日期:'+dqsj+' 科室:' + pub_ksmc;
          qrl_ks.font.size := 7;
          qrl_ks.left := 7;
          qrl_ks.top := 90;
          qrl_ch.Caption := '床号' + Trim(sp_brxx.FieldByName('bch').AsString)+' 年龄:'+Trim(sp_brxx.FieldByName('brnl').AsString);
          qrl_ch.font.size := 8;
          qrl_ch.left := 7;
          qrl_ch.top := 30;
          qrl_brxm.Caption := '姓名:' + Trim(sp_brxx.FieldByName('brxm').AsString);
          qrl_brxm.font.size := 8;
          qrl_brxm.left := 7;
          qrl_brxm.top := 10;
          qrl_ks1.Caption := '药品:' + trim(sp_dryz.FieldByName('xmmc').asString);
          qrl_ks1.font.size := 8;
          qrl_ks1.left := 7;
          qrl_ks1.top := 50;
          qrl_ch1.Caption := '用量:' +trim(sp_dryz.FieldByName('ypyl').asString)+trim(sp_dryz.FieldByName('yldw').asString);
          qrl_ch1.font.size := 7;
          qrl_ch1.left := 7;
          qrl_ch1.top := 70;
          qrl_brxm1.Caption := '用法:' + trim(sp_dryz.FieldByName('ypyf').asString)+' '+trim(sp_dryz.FieldByName('yytj').asString);
          qrl_brxm1.font.size := 7;
          qrl_brxm1.left := 64;
          qrl_brxm1.top := 70;
        end else
        begin
          qrl_ks.Caption := '科室:' + pub_ksmc;
          qrl_ch.Caption := '床号' + Trim(sp_brxx.FieldByName('bch').AsString);
          qrl_brxm.Caption := '姓名:' + Trim(sp_brxx.FieldByName('brxm').AsString);
          QRLabel4.Caption := '科室:' + pub_ksmc;
          QRLabel13.Caption := '床号' + Trim(sp_brxx.FieldByName('bch').AsString);
          QRLabel14.Caption := '姓名:' + Trim(sp_brxx.FieldByName('brxm').AsString);
        end;
        if v_IsPrinterJoin then
        begin
          if QuickRep3.PrinterSettings.PrinterIndex <> v_PrinterIndex_new then
          begin
            QuickRep3.PrinterSettings.PrinterIndex := v_PrinterIndex_new;
          end;
        end;
        QuickRep3.Print;
      end
      else
      begin
        if (pub_yydm='0266') or (pub_yydm = '0261') then
        begin
          QRLabel1.Caption := '日期:'+dqsj+' 科室:' + pub_ksmc;
          QRLabel1.font.size := 7;
          QRLabel1.left :=7;
          QRLabel1.top := 90;
          QRLabel3.Caption := '床号' + Trim(sp_brxx.FieldByName('bch').AsString)+' 年龄:'+Trim(sp_brxx.FieldByName('brnl').AsString);
          QRLabel3.font.size := 8;
          QRLabel3.left := 7;
          QRLabel3.top := 30;
          QRLabel2.Caption := '姓名:' + Trim(sp_brxx.FieldByName('brxm').AsString);
          QRLabel2.font.size := 8;
          QRLabel2.left := 7;
          QRLabel2.top := 10;
          QRLabel4.Caption := '药品:' + trim(sp_dryz.FieldByName('xmmc').asString);
          QRLabel4.font.size := 8;
          QRLabel4.left := 7;
          QRLabel4.top := 50;
          QRLabel13.Caption := '用量:' +trim(sp_dryz.FieldByName('ypyl').asString)+trim(sp_dryz.FieldByName('yldw').asString);
          QRLabel13.font.size := 7;
          QRLabel13.left := 7;
          QRLabel13.top := 70;
          QRLabel14.Caption := '用法:' + trim(sp_dryz.FieldByName('ypyf').asString)+' '+trim(sp_dryz.FieldByName('yytj').asString);
          QRLabel14.font.size := 7;
          QRLabel14.left := 64;
          QRLabel14.top := 70;
        end else
        begin
          QRLabel1.Caption := '科室:' + pub_ksmc;
          QRLabel3.Caption := '床号' + Trim(sp_brxx.FieldByName('bch').AsString);
          QRLabel2.Caption := '姓名:' + Trim(sp_brxx.FieldByName('brxm').AsString);
          QRLabel4.Caption := '科室:' + pub_ksmc;
          QRLabel13.Caption := '床号' + Trim(sp_brxx.FieldByName('bch').AsString);
          QRLabel14.Caption := '姓名:' + Trim(sp_brxx.FieldByName('brxm').AsString);
        end;

        if v_IsPrinterJoin then
        begin
          if QuickRep1.PrinterSettings.PrinterIndex <> v_PrinterIndex_new then
          begin
            QuickRep1.PrinterSettings.PrinterIndex := v_PrinterIndex_new;
          end;
        end;
        QuickRep1.Print;
      end;
         sp_dryz.Next;
    end;
     sp_dryz.Filtered:=false;
     sp_dryz.First;
     sp_dryz.EnableControls;
     sp_brxx.Next;
  end;
  //RevertPrinter;
  sp_brxx.First;
  sp_brxx.EnableControls;

end;

procedure Tfrm_yzzx.cxButton1Click(Sender: TObject);
begin
  try
    application.createform(tfrm_jcsqd, frm_jcsqd);
    DM_data.qry_pub.Close;
    DM_data.qry_pub.SQL.text := 'select * from sys_kscwsz where bqdm=' + '''' +
      pub_bqdm + '''' + ' and yybch=' + '''' +
      trim(sp_brxx.FieldByName('bch').AsString) + '''';
    try
      DM_data.qry_pub.Open;
    except

    end;
    frm_jcsqd.pq.Text := Trim(DM_data.qry_pub.FieldByName('bcbh').AsString);
    frm_jcsqd.showmodal;
  finally
    frm_jcsqd.free;
  end
end;

procedure Tfrm_yzzx.cxButton2Click(Sender: TObject);
begin
  try
    application.createform(tfrm_jydtmdy, frm_jydtmdy);
    DM_data.qry_pub.Close;
    DM_data.qry_pub.SQL.text := 'select * from sys_kscwsz where bqdm=' + '''' +
      pub_bqdm + '''' + ' and yybch=' + '''' +
      trim(sp_brxx.FieldByName('bch').AsString) + '''';
    try DM_data.qry_pub.Open;
    except
    end;
//    if pub_yydm='0266' then
//    begin
//         frm_jydtmdy.e_tmh.text := Trim(sp_brxx.FieldByName('tmh').AsString);
//    end else
//    begin
//
//    end;
    if pub_yydm <> '0003' then
    begin
      frm_jydtmdy.e_tmh.text := DM_data.qry_pub.FieldByName('bcbh').AsString;
    end
    else
    begin
      frm_jydtmdy.e_tmh.text := DM_data.qry_pub.FieldByName('yybch').AsString;
    end;
    frm_jydtmdy.showmodal;
    //frm_jydtmdy.Button1.Click;
  finally
    frm_jydtmdy.free;
  end

end;

procedure Tfrm_yzzx.cxButton3Click(Sender: TObject);
begin
  application.CreateForm(Tfrm_bylsyz, frm_bylsyz);
  try
    frm_bylsyz.sp_yzmx.close;
    frm_bylsyz.sp_yzmx.parameters.parambyname('@zyh').value :=
      sp_brxx.FieldByName('zyh').AsString;
    frm_bylsyz.sp_yzmx.open;
    frm_bylsyz.qrlabel12.Caption := sp_brxx.FieldByName('brxm').AsString;
    frm_bylsyz.QRL_bch.Caption := sp_brxx.FieldByName('bch').AsString;
    ;
    frm_bylsyz.QRL_tmh.Caption := sp_brxx.FieldByName('tmh').AsString;
    frm_bylsyz.QRL_dysj.Caption := '打印时间:' +
      FormatDatetime('yyyy年mm月dd日 HH时MM分SS秒', frm_func.curr_date);
    frm_bylsyz.rep_dryphz.Prepare;
    frm_bylsyz.QRL_ym.Caption := '共' +
      IntToStr(frm_bylsyz.rep_dryphz.Printer.PageCount) + '页';
    frm_bylsyz.rep_dryphz.PrinterSettings.PrinterIndex :=
      printer.Printers.IndexOf('zxdprint');

    frm_bylsyz.rep_dryphz.Preview;
  finally
    frm_bylsyz.Free;
  end;
end;

procedure Tfrm_yzzx.cxButton4Click(Sender: TObject);
var
  czks: string;
begin
  qry_yjddy.Close;
  qry_yjddy.Open;
  qry_fymx.First;
  while not qry_fymx.Eof do
  begin
    if qry_fymx.FieldByName('tfbz').AsBoolean then
    begin
      if qry_fymx.FieldByName('yjqrbz').AsString = '否' then
        //医技确认标志,否:未确认费用可以重新打印
      begin
        qry_yjddy.Append;
        qry_yjddy.FieldByName('id').AsString :=
          IntToStr(qry_fymx.FieldByName('id').AsInteger);
        qry_yjddy.FieldByName('fymc').AsString :=
          qry_fymx.FieldByName('fymc').AsString;
        qry_yjddy.FieldByName('dw').AsString :=
          qry_fymx.FieldByName('dw').AsString;
        qry_yjddy.FieldByName('fyje').AsFloat :=
          qry_fymx.FieldByName('fyje').AsFloat;
        qry_yjddy.FieldByName('sfrq').AsString := formatdatetime('',
          qry_fymx.FieldByName('sfrq').AsDateTime);
        czks := qry_fymx.FieldByName('czks').AsString;
        qry_fymx.Edit;
        qry_fymx.FieldByName('tfbz').AsBoolean := false;
      end
      else
        Application.MessageBox('提示:该项目医技科室已经确费,不能再打印!',
          '提示', MB_ICONINFORMATION);
    end;

    qry_fymx.Next;
  end;
end;

procedure Tfrm_yzzx.cxButton5Click(Sender: TObject);
begin
  try
    application.createform(tfrm_zyplcffy, frm_zyplcffy);
    frm_zyplcffy.showmodal;
  finally
    frm_zyplcffy.free;
  end;
end;

procedure Tfrm_yzzx.cxButton6Click(Sender: TObject);
begin
  close;
end;

procedure Tfrm_yzzx.cxButton7Click(Sender: TObject);
begin
  sp_dryz.DisableControls;
  sp_dryz.First;
  while not sp_dryz.Eof do
  begin
    sp_dryz.Edit;
    sp_dryz.FieldByName('xz').AsBoolean := false;
    sp_dryz.Post;
    sp_dryz.Next;
  end;
  sp_dryz.First;
  sp_dryz.EnableControls;
end;

procedure Tfrm_yzzx.cxButton8Click(Sender: TObject);
begin
  sp_dryz.DisableControls;
  sp_dryz.First;
  while not sp_dryz.Eof do
  begin
    if (sp_dryz.FieldByName('yytj').asstring) = '静滴' then
    begin
      sp_dryz.Edit;
      sp_dryz.FieldByName('xz').AsBoolean := True;
      sp_dryz.Post;
    end
    else
    begin
      sp_dryz.Edit;
      sp_dryz.FieldByName('xz').AsBoolean := false;
      sp_dryz.Post;
    end;
    sp_dryz.Next;
  end;
  sp_dryz.First;
  sp_dryz.EnableControls;

end;

procedure Tfrm_yzzx.cxButton9Click(Sender: TObject);
begin
  sp_dryz.DisableControls;
  sp_dryz.First;
  while not sp_dryz.Eof do
  begin
    if ((Trim(sp_dryz.FieldByName('syczxsj').asstring) = '') and
      (Trim(sp_dryz.FieldByName('sftz').asstring) <> '已取消') and
      (Trim(sp_dryz.FieldByName('sftz').asstring) <> '未用'))
      or ((Trim(sp_dryz.FieldByName('tzrq').asstring) <> '') and
      (Trim(sp_dryz.FieldByName('tzzxsj').asstring) = '')
      and (Trim(sp_dryz.FieldByName('yzsx').asstring) = '长期')) then
    begin
      sp_dryz.Edit;
      sp_dryz.FieldByName('xz').AsBoolean := True;
      sp_dryz.Post;
    end;
    sp_dryz.Next;
  end;
  sp_dryz.First;
  sp_dryz.EnableControls;
end;

procedure Tfrm_yzzx.cxGrid1DBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if strtofloat(AViewInfo.RecordViewInfo.GridRecord.Values[4]) < 0 then
    ACanvas.Brush.Color := $00808040;

end;

procedure Tfrm_yzzx.cxGridDBTableView2CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if strtoint(AViewInfo.RecordViewInfo.GridRecord.Values[15]) > 0 then
    ACanvas.Brush.Color := $00808040;
end;

procedure Tfrm_yzzx.DBGridEh1CellClick(Column: TColumnEh);
begin
  if sp_brxx.RecordCount > 0 then
  begin
    cx_zyh := sp_brxx.FieldByName('zyh').AsString;
    RefYzxx;
  end;
end;

procedure Tfrm_yzzx.DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
begin
  if (Trim(sp_brxx.FieldByName('xkyz').asstring) = '新医嘱') then
    DBGridEh1.Canvas.Font.Color := clred;
  (Sender as TDbGridEh).DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure Tfrm_yzzx.DBGridEh2ColWidthsChanged(Sender: TObject);
var
  i: Integer;
begin
  if cx_zyh <> '' then
  begin
    for I := 0 to DBGridEh2.Columns.Count - 1 do
    begin
      DBGridEh4.Columns[i].Width := DBGridEh2.Columns[i].Width;
    end;
  end;

  //  for I := 0 to DBGridEh2.Columns.Count - 1 do
  //  begin
  //    DBGridEh4.Columns[i].Width := DBGridEh2.Columns[i].Width;
  //  end;
end;

procedure Tfrm_yzzx.DBGridEh4CellClick(Column: TColumnEh);
var
  sbookmark: Tbookmark;
  syfz: string;
  jyfz: string;
  checked: boolean;
begin
  if DBGridEh4.SelectedIndex = 0 then
  begin
    if Trim(sp_dryz.FieldByName('sftz').AsString) = '已取消' then
    begin
      ShowMessage('该临时医嘱已取消，不能选择执行！');
      Exit;
    end;

    //  DM_data.qry_pub.close;
    //  DM_data.qry_pub.SQL.text:='select * from sys_czy where dm='+''''+pub_czydm+'''' ;
    //  DM_data.qry_pub.open;
    //
    //  if (Trim( sp_dryz.FieldByName( 'syczxrmc' ).AsString ) <> '')
    //     and (Trim( sp_dryz.FieldByName( 'zxtzrymc' ).AsString ) <> '')
    //     and (pos(pub_czyxm,Trim( sp_dryz.FieldByName( 'zxtzrymc' ).AsString ))<1)
    //     and  (pos(pub_czyxm,Trim( sp_dryz.FieldByName( 'syczxrmc' ).AsString ))<1)
    //     and   (Trim( sp_dryz.FieldByName( 'yzsx' ).AsString ) = '长期')
    //     and   DM_data.qry_pub.FieldByName('ysbz').AsBoolean<>true
    //     then
    //  begin
    //    ShowMessage( '该医嘱原执行人不是你，你无权修改执行！' );
    //    Exit;
    //  end;
    //
    //  if (Trim( sp_dryz.FieldByName( 'syczxrmc' ).AsString ) <> '')
    //     and  (pos(pub_czyxm,Trim( sp_dryz.FieldByName( 'syczxrmc' ).AsString ))<1)
    //     and   (Trim( sp_dryz.FieldByName( 'yzsx' ).AsString ) = '临时')
    //     then
    //  begin
    //    ShowMessage( '该医嘱原执行人不是你，你无权修改执行！' );
    //    Exit;
    //  end;

    sp_dryz.Edit;
    syfz := sp_dryz.FieldByName('fzph').AsString;
    jyfz := sp_dryz.FieldByName('jyflbh').AsString;
    if copy(jyfz, 1, 4) <> '0101' then
      jyfz := '';

    if syfz <> '' then
    begin
      sp_dryz.DisableControls;
      sbookmark := sp_dryz.GetBookmark;
      sp_dryz.first;
      sp_dryz.Locate('fzph', syfz, []);
      checked := sp_dryz.FieldByName('xz').asboolean;
      while (syfz = sp_dryz.FieldByName('fzph').AsString) and (not sp_dryz.Eof)
        do
      begin
        sp_dryz.Edit;
        if checked then
          sp_dryz.FieldByName('xz').AsBoolean := false
        else
          sp_dryz.FieldByName('xz').AsBoolean := true;
        sp_dryz.Next;
      end;
      sp_dryz.GotoBookmark(sbookmark);
      sp_dryz.FreeBookmark(sbookmark);
      sp_dryz.EnableControls;
    end
    else if jyfz <> '' then
    begin

      if sp_dryz.FieldByName('xz').asboolean then
        sp_dryz.FieldByName('xz').AsBoolean := false
      else
        sp_dryz.fieldbyname('xz').asboolean := true;
      sp_dryz.post;
    end
    else
    begin
      if sp_dryz.FieldByName('xz').asboolean then
        sp_dryz.FieldByName('xz').AsBoolean := false
      else
        sp_dryz.fieldbyname('xz').asboolean := true;
      sp_dryz.post;
    end;
    if xzzx.Checked then
      zxyz.Click;
  end;
end;

procedure Tfrm_yzzx.DBGridEh4ColWidthsChanged(Sender: TObject);
begin
  if sp_dryz.Active then
    createrect(myrect_cx, sp_dryz, dbgrideh4, 12, 13, 15);
end;

procedure Tfrm_yzzx.DBGridEh4DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
var
  i: integer;
  myrect1: Trect;
begin

  if trim(sp_dryz.fieldbyname('yzsx').asstring) = '临时' then
  begin
    DBGridEh4.Canvas.Brush.Color := clwhite;
    DBGridEh4.Canvas.Font.Color := clGreen;
  end;

  if trim(sp_dryz.fieldbyname('fzph').asstring) <> '' then
  begin
    DBGridEh4.canvas.brush.color := $00E2BC6D;
    i := findinarray(myrect_cx, sp_dryz.fieldbyname('fzph').asstring);
    DBGridEh4.Canvas.pen.color := $00E2BC6D;
    DBGridEh4.Canvas.MoveTo(myrect_cx[i].left + 20, myrect_cx[i].top);
    DBGridEh4.Canvas.LineTo(myrect_cx[i].left, myrect_cx[i].Bottom);
    if trim(sP_dryz.FieldByName('lb').AsString) <> '草药' then
      DBGridEh4.canvas.Rectangle(myrect_cx[i].left, myrect_cx[i].top,
        myrect_cx[i].right, myrect_cx[i].bottom);
    DBGridEh4.Canvas.pen.color := clred;
    if trim(sP_dryz.FieldByName('lb').AsString) <> '草药' then
    begin
      DBGridEh4.Canvas.MoveTo(myrect_cx[i].left + 20, myrect_cx[i].top);
      DBGridEh4.Canvas.LineTo(myrect_cx[i].left, myrect_cx[i].Bottom);
    end;
    with DBGridEh4.Canvas do
    begin
      moveto(myrect_cx[I].gleft, myrect_cx[i].Gtop);
      lineto(myrect_cx[I].gright, myrect_cx[I].gtop);
      lineto(myrect_cx[I].gright, myrect_cx[I].gbottom);
      lineto(myrect_cx[I].gleft, myrect_cx[I].gbottom);
      lineto(myrect_cx[I].gleft, myrect_cx[i].Gtop);
    end;
    myrect1.Left := myrect_cx[i].left;
    myrect1.top := myrect_cx[i].top;
    myrect1.right := myrect_cx[i].right;
    myrect1.bottom := myrect_cx[i].bottom;
    if trim(sP_dryz.FieldByName('lb').AsString) <> '草药' then
      DBGridEh4.Canvas.TextOut(myrect_cx[i].left + 20,
        myrect_cx[i].top + round(myrect_cx[i].height * ((myrect_cx[i].sl - 0.5)
        / 2)), myrect_cx[i].tj + #13 + myrect_cx[i].yf);
  end;
  //  if FormatDateTime( 'yyyyMMdd', sp_dryz.FieldByName( 'zhzxsj' ).AsDateTime ) = FormatDateTime( 'yyyyMMdd', Now ) then
  //    DBGridEh4.canvas.brush.color := $00E2BC6D;

  if trim(sp_dryz.FieldByName('syczxsj').asstring) <> '' then
    DBGridEh4.canvas.brush.color := $00E2BC9D;
  if (Trim(sp_dryz.FieldByName('sftz').asstring) = '已停止') and
    (sp_dryz.FieldByName('tzzxsj').AsDateTime >=
    sp_dryz.FieldByName('tzrq').AsDateTime) and
    (trim(sp_dryz.FieldByName('yzsx').asstring) <> '临时') then
    DBGridEh4.Canvas.Font.Color := clred;
  if ((Pos('皮试', trim(sp_dryz.FieldByName('xmmc').AsString)) > 0) or
    (Pos('敏试', trim(sp_dryz.FieldByName('xmmc').AsString)) > 0) or
    (Pos('PPD', trim(sp_dryz.FieldByName('xmmc').AsString)) > 0))
    and ((Pos('+', trim(sp_dryz.FieldByName('xmmc').AsString)) > 0) or
    (Pos('阳', trim(sp_dryz.FieldByName('xmmc').AsString)) > 0)) then
  begin
    DBGridEh4.Canvas.Brush.Color := clRed;
    DBGridEh4.Canvas.Font.Color := clBlack;
  end;

  if (Pos('术后医嘱', trim(sp_dryz.FieldByName('xmmc').AsString)) > 0) or
    (Pos('产后医嘱', trim(sp_dryz.FieldByName('xmmc').AsString)) > 0) or
    (Pos('转入医嘱', trim(sp_dryz.FieldByName('xmmc').AsString)) > 0) then
  begin
    DBGridEh4.Canvas.Brush.Color := clFuchsia;
    DBGridEh4.Canvas.Font.Color := clBlack;
  end;
  if (pub_yydm = '0013') or (pub_yydm = '0019') then
  begin
    if sp_dryz.FieldByName('jsbz').AsBoolean = True then
    begin
      DBGridEh4.Canvas.Font.Color := clblue;
    end;
  end;

  (Sender as TDbGridEh).DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure Tfrm_yzzx.dt_zxsjChange(Sender: TObject);
var
  zyh_dq: string;
begin
  zyh_dq := cx_zyh;
  sp_brxx.Close;
  sp_brxx.Parameters.ParamByName('@sr_bqdm').Value := trim(pub_bqdm);
  sp_brxx.Parameters.ParamByName('@yzzxsj').Value :=
    formatdatetime('yyyymmdd', dT_zxsj.Date);
  sp_brxx.Parameters.ParamByName('@zyh').Value := '';
  sp_brxx.Open;
  sp_brxx.Locate('zyh', zyh_dq, []);
  RefYzxx;
end;

procedure Tfrm_yzzx.getmouse(var msg: TWMMouseWheel);
begin
  ScrollBox1.SetFocus;
end;

procedure Tfrm_yzzx.N10Click(Sender: TObject);
var
  _SQl1, _Sql2, kdys: string;
  yzid: Integer;
begin
  if pub_yydm = '0234' then
  begin
    DM_data.qry_pub.close;
    DM_data.qry_pub.sql.text := ' exec zcyzw  ' + #39 + pub_czydm + #39;
    try
      DM_data.qry_pub.Open;
    except

    end;
    if DM_data.qry_pub.FieldByName('mc').AsString <> '护士长' then
    begin
      ShowMessage('护士长才能标记拒用医嘱！');
      exit;
    end;
  end;
  if (Trim(sp_dryz.FieldByName('sftz').AsString) = '已取消') or
    (Trim(sp_dryz.FieldByName('sftz').AsString) = '未用') or
    (Trim(sp_dryz.FieldByName('sftz').AsString) = '拒查') or
    (Trim(sp_dryz.FieldByName('sftz').AsString) = '拒用') then
  begin
    ShowMessage('已取消医嘱或者未用医嘱,拒查拒用医嘱不能再标识为拒用！');
    Abort;
  end;
  if sp_dryz.FieldByName('yzsx').asstring = '临时' then
  begin
    if application.MessageBox(pchar('是否将该条医嘱标记成拒用?' + #13 + ''),
      '提示信息', mb_iconwarning + MB_YESNO + mb_defbutton1) = IDYES then
    begin
      if Trim(sp_dryz.FieldByName('fzph').AsString) <> '' then
      begin
        _SQl1 := 'update zybl_zyyz set xyzbz=1,shry=''拒用'',tzbz=1,tzry=' + '''' +
          pub_czydm + '''' + ',tzrq=' + '''' +
          FormatDateTime('yyyy-MM-dd hh:mm:ss', Frm_func.curr_date) + '''' +
          ' where fzph=' + '''' + trim(sp_dryz.FieldByName('fzph').asstring) +
          '''';
        _Sql2 := 'delete from  zybl_zyyz_yzzxqd_mx  where yzid in (select id from zybl_zyyz where fzph='
          + '''' + trim(sp_dryz.FieldByName('fzph').asstring) + ''')';
      end
      else
      begin
        _SQl1 := 'update zybl_zyyz set xyzbz=1,shry=''拒用'',tzbz=1,tzry=' + '''' +
          pub_czydm + '''' + ',tzrq=' + '''' +
          FormatDateTime('yyyy-MM-dd hh:mm:ss', Frm_func.curr_date) + '''' +
          ' where id=' + sp_dryz.FieldByName('yzid').asstring;
        _Sql2 := 'delete from  zybl_zyyz_yzzxqd_mx  where yzid=' +
          sp_dryz.FieldByName('yzid').asstring;
      end;
      DM_data.qry_pub.Close;
      DM_data.qry_pub.sql.text := _SQl1;
      DM_data.qry_pub.ExecSQL;

      DM_data.qry_pub.Close;
      DM_data.qry_pub.sql.text := _Sql2;
      DM_data.qry_pub.ExecSQL;

      DM_data.qry_pub.close;
      DM_data.qry_pub.SQL.text := 'select * from sys_xt_kg ';
      try
        DM_data.qry_pub.Open;
      except

      end;
      if (DM_data.qry_pub.FieldByName('qyzdjf').AsBoolean = true) and
        (DM_data.qry_pub.FieldByName('yztjjf').AsBoolean = true) then
      begin
        DM_data.qry_pub.close;
        DM_data.qry_pub.SQL.Text := 'select * from zybl_zyyz where id=' +
          sp_dryz.FieldByName('yzid').asstring;
        try
          DM_data.qry_pub.Open;
        except

        end;
        yzid := sp_dryz.FieldByName('yzid').AsInteger;
        kdys := DM_data.qry_pub.FieldByName('kdys').asstring;
        yzqxtf(yzid, kdys);
      end;
      qry_sxxyz.Close;
      qry_sxxyz.Parameters.ParamByName('zyh').Value :=
        sp_brxx.FieldByName('zyh').asstring;
      qry_sxxyz.Parameters.ParamByName('zyh1').Value :=
        sp_brxx.FieldByName('zyh').asstring;
      qry_sxxyz.Parameters.ParamByName('zyh2').Value :=
        sp_brxx.FieldByName('zyh').asstring;
      qry_sxxyz.Parameters.ParamByName('zyh3').Value :=
        sp_brxx.FieldByName('zyh').asstring;
      qry_sxxyz.ExecSQL;
      RefYzxx;
    end;

  end;

end;

procedure Tfrm_yzzx.N11Click(Sender: TObject);
// var  sql:string;
begin
  if (sp_dryz.fieldbyname('tzzxsj').AsString <> '') or
    (sp_dryz.fieldbyname('syczxsj').AsString <> '') then

  begin
    ShowMessage('医嘱已经执行或者停止，不能取消运输方式！');
    exit;
  end;
  //运输方式取消 将status设置为  1
  try
    DM_data.qry_pub.close;
    DM_data.qry_pub.SQL.Text :=
      ' update  Yszx_brys with(rowlock) set YSFSQXZT=''1'' where zyh=''' + zyh +
      ''' and charindex('',''+''' + sp_dryz.FieldByName('xh').AsString + '''' +
      '+'','',yzbh)>0';
    DM_data.qry_pub.ExecSQL;
    Application.MessageBox('取消运输成功！', '提示！', MB_OK +
      MB_ICONINFORMATION);
  except
    Application.MessageBox('取消运输失败！', '错误', MB_OK + MB_ICONSTOP);
  end;
end;

procedure Tfrm_yzzx.N12Click(Sender: TObject);
begin
  try
    DM_data.qry_pub.close;
    DM_data.qry_pub.SQL.Text := 'select * from  Yszx_brys   where zyh=''' + zyh
      +
      ''' and charindex('',''+''' + sp_dryz.FieldByName('xh').AsString + '''' +
      '+'','',yzbh)>0';
    try
      DM_data.qry_pub.Open;
    except

    end;
    if DM_data.qry_pub.IsEmpty then
    begin
      Application.MessageBox('该项目没有选择运输！', '错误！', MB_OK +
        MB_ICONSTOP);
    end
    else
    begin
      Application.MessageBox(pchar('该检查项目的运输方式是' +
        DM_data.qry_pub.FieldByName('ysfs').asstring), '提示！', MB_OK +
        MB_ICONINFORMATION);
    end;
  except
  end;
end;

procedure Tfrm_yzzx.N13Click(Sender: TObject);
var

 yzid:string;
begin

    if (sp_dryz.fieldbyname('syczxsj').AsString = '') then

    begin
      ShowMessage('医嘱还未执行，不能修改执行时间！');
      exit;
    end;

    try
      application.createform(Tfrm_xgzxsj, frm_xgzxsj);
      frm_xgzxsj.yzid := sp_dryz.FieldByName('yzid').asstring;
      frm_xgzxsj.cxDateEdit1.Date:=sp_dryz.FieldByName('syczxsj').AsDateTime;
      frm_xgzxsj.zxsj:=sp_dryz.FieldByName('syczxsj').AsDateTime;
      frm_xgzxsj.zxrq := formatdatetime('yyyymmdd',dT_zxsj.Date);
      frm_xgzxsj.showmodal;
    finally
      frm_xgzxsj.free;
    end;

end;

procedure Tfrm_yzzx.N17Click(Sender: TObject);
var
  yzid: string;
begin
  yzid := sp_dryz.FieldByName('yzid').AsString;
  sp_dryz.DisableControls;
  sp_dryz.First;
  while not sp_dryz.eof do
  begin
    if sp_dryz.fieldbyname('xz').asboolean = true then
    begin
      DM_data.qry_pub.close;
      DM_data.qry_pub.SQL.Text := 'delete from zybl_zyyz_yzzxqd_mx where yzid='
        + sp_dryz.FieldByName('yzid').AsString;
      DM_data.qry_pub.ExecSQL;
      DM_data.qry_pub.close;
      DM_data.qry_pub.SQL.Text := 'insert into zybl_zyyz_yzzxqxjl select ' +
        sp_dryz.FieldByName('yzid').AsString + ',' + '''' +
        pub_czydm + '''' + ',' + '''' + formatdatetime('yyyy-MM-dd hh:mm:ss',
        Frm_func.curr_date) + '''';
      DM_data.qry_pub.ExecSQL;
    end;
    sp_dryz.Next;
  end;
  RefYzxx;
  sp_dryz.Locate('yzid', yzid, []);
  sp_dryz.EnableControls;
end;

procedure Tfrm_yzzx.N1Click(Sender: TObject);
begin
  if (pos('皮试', sp_dryz.FieldByName('xmmc').AsString) < 1) and
    (pos('敏试', sp_dryz.FieldByName('xmmc').AsString) < 1) and
    (pos('指尖血糖', sp_dryz.FieldByName('xmmc').AsString) < 1) and
    (pos('床旁血糖', sp_dryz.FieldByName('xmmc').AsString) < 1) and
    (pos('血氧饱和度监测', sp_dryz.FieldByName('xmmc').AsString) < 1) and
    (pos('测定血糖', sp_dryz.FieldByName('xmmc').AsString) < 1) and
    (pos('经皮胆红素', sp_dryz.FieldByName('xmmc').AsString) < 1) and
    (pos('红细胞悬液', sp_dryz.FieldByName('xmmc').AsString) < 1) and
    (pos('全血', sp_dryz.FieldByName('xmmc').AsString) < 1) and
    (pos('血浆', sp_dryz.FieldByName('xmmc').AsString) < 1) and
    (pos('PPD', sp_dryz.FieldByName('xmmc').AsString) < 1) then
  begin
    if pub_yydm='0266' then   //广元昭化人民医院
    begin
      try
        application.createform(Tfrm_psjg, frm_psjg);
        frm_psjg.ISxgpz := '修改皮试0266';
        frm_psjg.psyzid := sp_dryz.FieldByName('yzid').asstring;
        frm_psjg.showmodal;
      finally
        frm_psjg.free;
      end;
      RefYzxx;
    end else
    begin
       ShowMessage('该医嘱不是可修改项目，不能修改结果！');
    end;
  end
  else
  begin
    try
      application.createform(Tfrm_psjg, frm_psjg);
      frm_psjg.psyzid := sp_dryz.FieldByName('yzid').asstring;
      frm_psjg.showmodal;
    finally
      frm_psjg.free;
    end;

    RefYzxx;

  end;

end;

procedure Tfrm_yzzx.N2Click(Sender: TObject);
var
  sj: string;
  _sql: string;
  yzid: integer;
  kdys: string;
begin
  if pub_yydm = '0234' then
  begin
    DM_data.qry_pub.close;
    DM_data.qry_pub.sql.text := ' exec zcyzw  ' + #39 + pub_czydm + #39;
    try
      DM_data.qry_pub.Open;
    except

    end;
    if DM_data.qry_pub.FieldByName('mc').AsString <> '护士长' then
    begin
      ShowMessage('护士长才能取消医嘱！');
      exit;
    end;
  end;
  fqyz := True;

  if (Trim(sp_dryz.FieldByName('sftz').AsString) = '已取消') or
    (Trim(sp_dryz.FieldByName('sftz').AsString) = '未用') then
  begin
    ShowMessage('已取消医嘱或者未用医嘱不能再取消！');
    Abort;
  end;
  if (sp_dryz.FieldByName('yzsx').AsString = '临时') then
  begin
    application.createform(Tfrm_qxyzsj, frm_qxyzsj);
    try
      frm_qxyzsj.yzzxsj.Date := sp_dryz.FieldByName('kdrq').AsDateTime;
      frm_qxyzsj.showmodal;
    finally
      sj := formatdatetime('yyyy-mm-dd hh:mm:ss', qxyzsj);
      frm_yzsj.free;
    end;

    if fqyz = false then
    begin

      if Trim(sp_dryz.FieldByName('fzph').asstring) <> '' then
      begin
        _sql := 'update zybl_zyyz set xyzbz=1,tzbz=1,tzrq=' + '''' + sj + '''' + ',tzry='
          + '''' + pub_czydm + '''' + ' where fzph=' + '''' +
          trim(sp_dryz.FieldByName('fzph').asstring) + '''';
      end
      else
      begin
        _sql := 'update zybl_zyyz set tzbz=1,tzrq=' + '''' + sj + '''' +
          ',tzry=' + '''' + pub_czydm + '''' + ' where id=' +
          sp_dryz.FieldByName('yzid').asstring;
      end;
      try
        DM_data.qry_pub.Close;
        DM_data.qry_pub.SQL.text := _sql;
        DM_data.qry_pub.ExecSQL;
        ShowMessage('取消临时医嘱成功！');
        DM_data.qry_pub.close;
        DM_data.qry_pub.SQL.text := 'select * from sys_xt_kg ';
        try
          DM_data.qry_pub.Open;
        except

        end;
        if (DM_data.qry_pub.FieldByName('qyzdjf').AsBoolean = true) and
          (DM_data.qry_pub.FieldByName('yztjjf').AsBoolean = true) then
        begin
          DM_data.qry_pub.close;
          DM_data.qry_pub.SQL.Text := 'select * from zybl_zyyz where id=' +
            sp_dryz.FieldByName('yzid').asstring;
          try
            DM_data.qry_pub.Open;
          except

          end;
          yzid := sp_dryz.FieldByName('yzid').AsInteger;
          kdys := DM_data.qry_pub.FieldByName('kdys').asstring;
          yzqxtf(yzid, kdys);
        end;
        RefYzxx;
      except
        ShowMessage('取消临时医嘱失败！');
      end;
    end;

  end
  else
  begin
    ShowMessage('你没有权限取消医嘱或者该医嘱不是临时医嘱，不能取消！');
  end;
  qry_sxxyz.Close;
  qry_sxxyz.Parameters.ParamByName('zyh').Value :=
    sp_brxx.FieldByName('zyh').asstring;
  qry_sxxyz.Parameters.ParamByName('zyh1').Value :=
    sp_brxx.FieldByName('zyh').asstring;
  qry_sxxyz.Parameters.ParamByName('zyh2').Value :=
    sp_brxx.FieldByName('zyh').asstring;
  qry_sxxyz.Parameters.ParamByName('zyh3').Value :=
    sp_brxx.FieldByName('zyh').asstring;
  qry_sxxyz.ExecSQL;

end;

procedure Tfrm_yzzx.N3Click(Sender: TObject);
var
  _SQl1, _Sql2, kdys: string;
  yzid: Integer;
begin
  if pub_yydm = '0234' then
  begin
    DM_data.qry_pub.close;
    DM_data.qry_pub.sql.text := ' exec zcyzw  ' + #39 + pub_czydm + #39;
    try
      DM_data.qry_pub.Open;
    except

    end;
    if DM_data.qry_pub.FieldByName('mc').AsString <> '护士长' then
    begin
      ShowMessage('护士长才能标记未用医嘱！');
      exit;
    end;
  end;
  if (Trim(sp_dryz.FieldByName('sftz').AsString) = '已取消') or
    (Trim(sp_dryz.FieldByName('sftz').AsString) = '未用') then
  begin
    ShowMessage('已取消医嘱或者未用医嘱不能再标识为未用！');
    Abort;
  end;
  if sp_dryz.FieldByName('yzsx').asstring = '临时' then
  begin
    if application.MessageBox(pchar('是否将该条医嘱标记成未用?' + #13 + ''),
      '提示信息', mb_iconwarning + MB_YESNO + mb_defbutton1) = IDYES then
    begin
      if Trim(sp_dryz.FieldByName('fzph').AsString) <> '' then
      begin
        _SQl1 := 'update zybl_zyyz set xyzbz=1,shry=''未用'',tzbz=1,tzry=' + '''' +
          pub_czydm + '''' + ',tzrq=' + '''' +
          FormatDateTime('yyyy-MM-dd hh:mm:ss', Frm_func.curr_date) + '''' +
          ' where fzph=' + '''' + trim(sp_dryz.FieldByName('fzph').asstring) +
          '''';
        _Sql2 := 'delete from  zybl_zyyz_yzzxqd_mx  where yzid in (select id from zybl_zyyz where fzph='
          + '''' + trim(sp_dryz.FieldByName('fzph').asstring) + ''')';
      end
      else
      begin
        _SQl1 := 'update zybl_zyyz set xyzbz=1,shry=''未用'',tzbz=1,tzry=' + '''' +
          pub_czydm + '''' + ',tzrq=' + '''' +
          FormatDateTime('yyyy-MM-dd hh:mm:ss', Frm_func.curr_date) + '''' +
          ' where id=' + sp_dryz.FieldByName('yzid').asstring;
        _Sql2 := 'delete from  zybl_zyyz_yzzxqd_mx  where yzid=' +
          sp_dryz.FieldByName('yzid').asstring;
      end;
      DM_data.qry_pub.Close;
      DM_data.qry_pub.sql.text := _SQl1;
      DM_data.qry_pub.ExecSQL;

      DM_data.qry_pub.Close;
      DM_data.qry_pub.sql.text := _Sql2;
      DM_data.qry_pub.ExecSQL;

      DM_data.qry_pub.close;
      DM_data.qry_pub.SQL.text := 'select * from sys_xt_kg ';
      try
        DM_data.qry_pub.Open;
      except

      end;
      if (DM_data.qry_pub.FieldByName('qyzdjf').AsBoolean = true) and
        (DM_data.qry_pub.FieldByName('yztjjf').AsBoolean = true) then
      begin
        DM_data.qry_pub.close;
        DM_data.qry_pub.SQL.Text := 'select * from zybl_zyyz where id=' +
          sp_dryz.FieldByName('yzid').asstring;
        try
          DM_data.qry_pub.Open;
        except

        end;
        yzid := sp_dryz.FieldByName('yzid').AsInteger;
        kdys := DM_data.qry_pub.FieldByName('kdys').asstring;
        yzqxtf(yzid, kdys);
      end;
      qry_sxxyz.Close;
      qry_sxxyz.Parameters.ParamByName('zyh').Value :=
        sp_brxx.FieldByName('zyh').asstring;
      qry_sxxyz.Parameters.ParamByName('zyh1').Value :=
        sp_brxx.FieldByName('zyh').asstring;
      qry_sxxyz.Parameters.ParamByName('zyh2').Value :=
        sp_brxx.FieldByName('zyh').asstring;
      qry_sxxyz.Parameters.ParamByName('zyh3').Value :=
        sp_brxx.FieldByName('zyh').asstring;
      qry_sxxyz.ExecSQL;
      RefYzxx;
    end;

  end;
end;

procedure Tfrm_yzzx.N4Click(Sender: TObject);
var
  syfz, yzid: string;
  i:Integer;
begin
  //没有多选的情况下
  if dbgrideh4.SelectedRows.Count<=0 then
  begin
    syfz := sp_dryz.FieldByName('fzph').AsString;        //分组批号
    yzid := sp_dryz.FieldByName('yzid').AsString;        //医嘱号
    if Application.MessageBox('是否确定要对该医嘱进行双签名？', '询问', MB_YESNO +
      MB_ICONQUESTION + MB_DEFBUTTON1) = IDNO then
    begin
      Exit;
    end;
    if syfz <> '' then                      //分组批号不为空
    begin
      sp_dryz.DisableControls;
      sp_dryz.first;
      sp_dryz.Locate('fzph', syfz, []);
      while (syfz = sp_dryz.FieldByName('fzph').AsString) and (not sp_dryz.Eof) do
      begin
        if sp_dryz.FieldByName('yzid').asstring <> '' then
        begin
          if DBGridEh4.SelectedIndex = 2 then
          begin
            DM_data.qry_pub.Close;
            DM_data.qry_pub.SQL.text :=
              'delete from zybl_zyyz_yzzxqd_sqm where yzid='
              + sp_dryz.FieldByName('yzid').asstring + ' and zxrq=' + '''' +
              formatdatetime('yyyymmdd', dT_zxsj.Date) + ''''
              + ' and zxsj=' + '''' + sp_dryz.FieldByName('syczxsj').asstring +
              '''';
            DM_data.qry_pub.ExecSQL;

            DM_data.qry_pub.Close;
            DM_data.qry_pub.SQL.text :=
              'insert into zybl_zyyz_yzzxqd_sqm(zyh,yzid,zxrq,zxry,zxsj,zxsm)' +
              ' select ' +
              '''' + sp_brxx.FieldByName('zyh').asstring + '''' + ',' +
              sp_dryz.FieldByName('yzid').asstring + ',' +
              '''' + formatdatetime('yyyymmdd', dT_zxsj.Date) + '''' + ',' +
              '''' + pub_czydm + '''' + ',' +
              '''' + sp_dryz.FieldByName('syczxsj').asstring + '''' + ',' +
              '''''';

            DM_data.qry_pub.ExecSQL;

          end
          else if DBGridEh4.SelectedIndex = 15 then
          begin
            DM_data.qry_pub.Close;
            DM_data.qry_pub.SQL.text :=
              'delete from zybl_zyyz_yzzxqd_sqm where yzid='
              + sp_dryz.FieldByName('yzid').asstring + ' and zxrq=' + '''' +
              formatdatetime('yyyymmdd', dT_zxsj.Date) + ''''
              + ' and zxsj=' + '''' + sp_dryz.FieldByName('tzzxsj').asstring +
              '''';
            DM_data.qry_pub.ExecSQL;

            DM_data.qry_pub.Close;
            DM_data.qry_pub.SQL.text :=
              'insert into zybl_zyyz_yzzxqd_sqm(zyh,yzid,zxrq,zxry,zxsj,zxsm)' +
              ' select ' +
              '''' + sp_brxx.FieldByName('zyh').asstring + '''' + ',' +
              sp_dryz.FieldByName('yzid').asstring + ',' +
              '''' + formatdatetime('yyyymmdd', dT_zxsj.Date) + '''' + ',' +
              '''' + pub_czydm + '''' + ',' +
              '''' + sp_dryz.FieldByName('tzzxsj').asstring + '''' + ',' + '''''';

            DM_data.qry_pub.ExecSQL;
          end;
        end;
        sp_dryz.Next;
      end;
      sp_dryz.EnableControls;
    end
    else
    begin
      if DBGridEh4.SelectedIndex = 2 then
      begin
        DM_data.qry_pub.Close;
        DM_data.qry_pub.SQL.text := 'delete from zybl_zyyz_yzzxqd_sqm where yzid='
          + sp_dryz.FieldByName('yzid').asstring + ' and zxrq=' + '''' +
          formatdatetime('yyyymmdd', dT_zxsj.Date) + ''''
          + ' and zxsj=' + '''' + sp_dryz.FieldByName('syczxsj').asstring + '''';
        DM_data.qry_pub.ExecSQL;

        DM_data.qry_pub.Close;
        DM_data.qry_pub.SQL.text :=
          'insert into zybl_zyyz_yzzxqd_sqm(zyh,yzid,zxrq,zxry,zxsj,zxsm)' +
          ' select ' +
          '''' + sp_brxx.FieldByName('zyh').asstring + '''' + ',' +
          sp_dryz.FieldByName('yzid').asstring + ',' +
          '''' + formatdatetime('yyyymmdd', dT_zxsj.Date) + '''' + ',' +
          '''' + pub_czydm + '''' + ',' +
          '''' + sp_dryz.FieldByName('syczxsj').asstring + '''' + ',' + '''''';

        DM_data.qry_pub.ExecSQL;

      end
      else if DBGridEh4.SelectedIndex = 15 then
      begin
        DM_data.qry_pub.Close;
        DM_data.qry_pub.SQL.text := 'delete from zybl_zyyz_yzzxqd_sqm where yzid='
          + sp_dryz.FieldByName('yzid').asstring + ' and zxrq=' + '''' +
          formatdatetime('yyyymmdd', dT_zxsj.Date) + ''''
          + ' and zxsj=' + '''' + sp_dryz.FieldByName('tzzxsj').asstring + '''';
        DM_data.qry_pub.ExecSQL;

        DM_data.qry_pub.Close;
        DM_data.qry_pub.SQL.text :=
          'insert into zybl_zyyz_yzzxqd_sqm(zyh,yzid,zxrq,zxry,zxsj,zxsm)' +
          ' select ' +
          '''' + sp_brxx.FieldByName('zyh').asstring + '''' + ',' +
          sp_dryz.FieldByName('yzid').asstring + ',' +
          '''' + formatdatetime('yyyymmdd', dT_zxsj.Date) + '''' + ',' +
          '''' + pub_czydm + '''' + ',' +
          '''' + sp_dryz.FieldByName('tzzxsj').asstring + '''' + ',' + '''''';

        DM_data.qry_pub.ExecSQL;

      end;
    end;
  end else
  begin
    /////////////////多选的情况
  //  syfz := sp_dryz.FieldByName('fzph').AsString;        //分组批号
  //  yzid := sp_dryz.FieldByName('yzid').AsString;        //医嘱号
    if Application.MessageBox('是否确定要对该医嘱进行双签名？', '询问', MB_YESNO +
      MB_ICONQUESTION + MB_DEFBUTTON1) = IDNO then
    begin
      Exit;
    end;
    sp_dryz.DisableControls;
    for i:= 0 to dbgrideh4.SelectedRows.Count - 1 do
    begin
      DBGrideh4.DataSource.DataSet.GotoBookmark(pointer(DBGrideh4.SelectedRows.Items[i])); //锁定选中行数据集
      syfz := sp_dryz.FieldByName('fzph').AsString;        //分组批号
      yzid := sp_dryz.FieldByName('yzid').AsString;        //医嘱号
      DBGridEh4.SelectedIndex :=2;  //默认选中2
      if syfz <> '' then                      //分组批号不为空
      begin
       // sp_dryz.DisableControls;
        sp_dryz.first;
        sp_dryz.Locate('fzph', syfz, []);
        while (syfz = sp_dryz.FieldByName('fzph').AsString) and (not sp_dryz.Eof) do
        begin
          if sp_dryz.FieldByName('yzid').asstring <> '' then
          begin
            if DBGridEh4.SelectedIndex = 2 then
            begin
              DM_data.qry_pub.Close;
              DM_data.qry_pub.SQL.text :=
                'delete from zybl_zyyz_yzzxqd_sqm where yzid='
                + sp_dryz.FieldByName('yzid').asstring + ' and zxrq=' + '''' +
                formatdatetime('yyyymmdd', dT_zxsj.Date) + ''''
                + ' and zxsj=' + '''' + sp_dryz.FieldByName('syczxsj').asstring +
                '''';
              DM_data.qry_pub.ExecSQL;

              DM_data.qry_pub.Close;
              DM_data.qry_pub.SQL.text :=
                'insert into zybl_zyyz_yzzxqd_sqm(zyh,yzid,zxrq,zxry,zxsj,zxsm)' +
                ' select ' +
                '''' + sp_brxx.FieldByName('zyh').asstring + '''' + ',' +
                sp_dryz.FieldByName('yzid').asstring + ',' +
                '''' + formatdatetime('yyyymmdd', dT_zxsj.Date) + '''' + ',' +
                '''' + pub_czydm + '''' + ',' +
                '''' + sp_dryz.FieldByName('syczxsj').asstring + '''' + ',' +
                '''''';

              DM_data.qry_pub.ExecSQL;

            end
            else if DBGridEh4.SelectedIndex = 15 then
            begin
              DM_data.qry_pub.Close;
              DM_data.qry_pub.SQL.text :=
                'delete from zybl_zyyz_yzzxqd_sqm where yzid='
                + sp_dryz.FieldByName('yzid').asstring + ' and zxrq=' + '''' +
                formatdatetime('yyyymmdd', dT_zxsj.Date) + ''''
                + ' and zxsj=' + '''' + sp_dryz.FieldByName('tzzxsj').asstring +
                '''';
              DM_data.qry_pub.ExecSQL;

              DM_data.qry_pub.Close;
              DM_data.qry_pub.SQL.text :=
                'insert into zybl_zyyz_yzzxqd_sqm(zyh,yzid,zxrq,zxry,zxsj,zxsm)' +
                ' select ' +
                '''' + sp_brxx.FieldByName('zyh').asstring + '''' + ',' +
                sp_dryz.FieldByName('yzid').asstring + ',' +
                '''' + formatdatetime('yyyymmdd', dT_zxsj.Date) + '''' + ',' +
                '''' + pub_czydm + '''' + ',' +
                '''' + sp_dryz.FieldByName('tzzxsj').asstring + '''' + ',' + '''''';

              DM_data.qry_pub.ExecSQL;
            end;
          end;
          sp_dryz.Next;
        end;
       // sp_dryz.EnableControls;
      end
      else
      begin
        if DBGridEh4.SelectedIndex = 2 then
        begin
          DM_data.qry_pub.Close;
          DM_data.qry_pub.SQL.text := 'delete from zybl_zyyz_yzzxqd_sqm where yzid='
            + sp_dryz.FieldByName('yzid').asstring + ' and zxrq=' + '''' +
            formatdatetime('yyyymmdd', dT_zxsj.Date) + ''''
            + ' and zxsj=' + '''' + sp_dryz.FieldByName('syczxsj').asstring + '''';
          DM_data.qry_pub.ExecSQL;

          DM_data.qry_pub.Close;
          DM_data.qry_pub.SQL.text :=
            'insert into zybl_zyyz_yzzxqd_sqm(zyh,yzid,zxrq,zxry,zxsj,zxsm)' +
            ' select ' +
            '''' + sp_brxx.FieldByName('zyh').asstring + '''' + ',' +
            sp_dryz.FieldByName('yzid').asstring + ',' +
            '''' + formatdatetime('yyyymmdd', dT_zxsj.Date) + '''' + ',' +
            '''' + pub_czydm + '''' + ',' +
            '''' + sp_dryz.FieldByName('syczxsj').asstring + '''' + ',' + '''''';

          DM_data.qry_pub.ExecSQL;

        end
        else if DBGridEh4.SelectedIndex = 15 then
        begin
          DM_data.qry_pub.Close;
          DM_data.qry_pub.SQL.text := 'delete from zybl_zyyz_yzzxqd_sqm where yzid='
            + sp_dryz.FieldByName('yzid').asstring + ' and zxrq=' + '''' +
            formatdatetime('yyyymmdd', dT_zxsj.Date) + ''''
            + ' and zxsj=' + '''' + sp_dryz.FieldByName('tzzxsj').asstring + '''';
          DM_data.qry_pub.ExecSQL;

          DM_data.qry_pub.Close;
          DM_data.qry_pub.SQL.text :=
            'insert into zybl_zyyz_yzzxqd_sqm(zyh,yzid,zxrq,zxry,zxsj,zxsm)' +
            ' select ' +
            '''' + sp_brxx.FieldByName('zyh').asstring + '''' + ',' +
            sp_dryz.FieldByName('yzid').asstring + ',' +
            '''' + formatdatetime('yyyymmdd', dT_zxsj.Date) + '''' + ',' +
            '''' + pub_czydm + '''' + ',' +
            '''' + sp_dryz.FieldByName('tzzxsj').asstring + '''' + ',' + '''''';

          DM_data.qry_pub.ExecSQL;

        end;
      end;
    end;
     sp_dryz.EnableControls;
  end;

  if sp_brxx.RecordCount > 0 then
  begin
    cx_zyh := sp_brxx.FieldByName('zyh').AsString;
    RefYzxx;
  end;
  sp_dryz.Locate('yzid', yzid, []);
  ShowMessage('双签名完成！');
end;

procedure Tfrm_yzzx.N5Click(Sender: TObject);
var
  krszks: string;
begin
  DM_data.qry_pub.Close;
  DM_data.qry_pub.sql.text := 'select * from zysf_zydj where zyh=' + '''' +
    sp_brxx.FieldByName('zyh').asstring + '''';
  try
    DM_data.qry_pub.Open;
  except

  end;
  krszks := DM_data.qry_pub.FieldByName('ksdm').AsString;

  if
    application.MessageBox('导回病人所在科室之后选中医嘱会在当前科室无法继续执行，是否需要导回?', '提示信息', mb_iconquestion + mb_okcancel + mb_defbutton1) = idcancel then
    abort
  else
  begin
    sp_dryz.DisableControls;
    while not sp_dryz.eof do
    begin
      if sp_dryz.fieldbyname('xz').asboolean = true then
      begin
        DM_data.qry_pub.Close;
        DM_data.qry_pub.SQL.Text := 'update zybl_zyyz set kdks=' + '''' + krszks
          + '''' +
          ' where id=' + sp_dryz.FieldByName('yzid').AsString;
        DM_data.qry_pub.ExecSQL;
      end;
      sp_dryz.Next;
    end;
    sp_dryz.EnableControls;
    RefYzxx;
  end;

end;

procedure Tfrm_yzzx.N6Click(Sender: TObject);
begin
  try
    DM_data.qry_pub.close;
    DM_data.qry_pub.SQL.text :=
      'update zybl_zyyz with(rowlock) set xyzbz=1 where id=' +
      sp_dryz.FieldByName('yzid').AsString;
    DM_data.qry_pub.ExecSQL;
    ShowMessage('标识完成！');
  except
    ShowMessage('标识失败，请重试！');
  end;

end;

procedure Tfrm_yzzx.N8Click(Sender: TObject);
begin
  if (sp_dryz.fieldbyname('tzzxsj').AsString <> '') or
    (sp_dryz.fieldbyname('syczxsj').AsString <> '') then

  begin
    ShowMessage('医嘱已经执行或者停止，不能修改运输方式！');
    exit;
  end;

  try
    Application.CreateForm(Tfrm_ysfs, frm_ysfs);
    frm_ysfs.showmodal;
    if frm_ysfs.ModalResult <> mrOk then
      Exit; // 不点击ok关闭窗口则直接退出，不提示任何信息
    DM_data.qry_pub.close;
    DM_data.qry_pub.SQL.Text := 'select * from Yszx_brys where zyh=''' + zyh +
      ''' and charindex('',''+''' + sp_dryz.FieldByName('xh').AsString + '''' +
      '+'','',yzbh)>0';
    try
      DM_data.qry_pub.Open;
    except

    end;
    if DM_data.qry_pub.RecordCount <> 1 then
    begin
      Application.MessageBox('没有找到对应的运输通知记录！', '错误', MB_OK +
        MB_ICONSTOP);
    end
    else
    begin
      DM_data.qry_pub.Edit;
      DM_data.qry_pub.FieldByName('ysfs').Value := frm_ysfs.ComboBox1.Text;
      DM_data.qry_pub.Post;
      DM_data.qry_pub.UpdateBatch(arAll);
    end;
  finally
    frm_ysfs.free;
  end;
end;

procedure Tfrm_yzzx.N9Click(Sender: TObject);
var
  _SQl1, _Sql2, kdys: string;
  yzid: Integer;
begin
  if pub_yydm = '0234' then
  begin
    DM_data.qry_pub.close;
    DM_data.qry_pub.sql.text := ' exec zcyzw  ' + #39 + pub_czydm + #39;
    try
      DM_data.qry_pub.Open;
    except

    end;
    if DM_data.qry_pub.FieldByName('mc').AsString <> '护士长' then
    begin
      ShowMessage('护士长才能标记拒查医嘱！');
      exit;
    end;
  end;
  if (Trim(sp_dryz.FieldByName('sftz').AsString) = '已取消') or
    (Trim(sp_dryz.FieldByName('sftz').AsString) = '未用') or
    (Trim(sp_dryz.FieldByName('sftz').AsString) = '拒查') or
    (Trim(sp_dryz.FieldByName('sftz').AsString) = '拒用') then
  begin
    ShowMessage('已取消医嘱或者未用医嘱,拒查拒用医嘱不能再标识为拒查！');
    Abort;
  end;
  if sp_dryz.FieldByName('yzsx').asstring = '临时' then
  begin
    if application.MessageBox(pchar('是否将该条医嘱标记成拒查?' + #13 + ''),
      '提示信息', mb_iconwarning + MB_YESNO + mb_defbutton1) = IDYES then
    begin
      if Trim(sp_dryz.FieldByName('fzph').AsString) <> '' then
      begin
        _SQl1 := 'update zybl_zyyz set xyzbz=1,shry=''拒查'',tzbz=1,tzry=' + '''' +
          pub_czydm + '''' + ',tzrq=' + '''' +
          FormatDateTime('yyyy-MM-dd hh:mm:ss', Frm_func.curr_date) + '''' +
          ' where fzph=' + '''' + trim(sp_dryz.FieldByName('fzph').asstring) +
          '''';
        _Sql2 := 'delete from  zybl_zyyz_yzzxqd_mx  where yzid in (select id from zybl_zyyz where fzph='
          + '''' + trim(sp_dryz.FieldByName('fzph').asstring) + ''')';
      end
      else
      begin
        _SQl1 := 'update zybl_zyyz set xyzbz=1,shry=''拒查'',tzbz=1,tzry=' + '''' +
          pub_czydm + '''' + ',tzrq=' + '''' +
          FormatDateTime('yyyy-MM-dd hh:mm:ss', Frm_func.curr_date) + '''' +
          ' where id=' + sp_dryz.FieldByName('yzid').asstring;
        _Sql2 := 'delete from  zybl_zyyz_yzzxqd_mx  where yzid=' +
          sp_dryz.FieldByName('yzid').asstring;
      end;
      DM_data.qry_pub.Close;
      DM_data.qry_pub.sql.text := _SQl1;
      DM_data.qry_pub.ExecSQL;

      DM_data.qry_pub.Close;
      DM_data.qry_pub.sql.text := _Sql2;
      DM_data.qry_pub.ExecSQL;

      DM_data.qry_pub.close;
      DM_data.qry_pub.SQL.text := 'select * from sys_xt_kg ';
      try
        DM_data.qry_pub.Open;
      except

      end;
      if (DM_data.qry_pub.FieldByName('qyzdjf').AsBoolean = true) and
        (DM_data.qry_pub.FieldByName('yztjjf').AsBoolean = true) then
      begin
        DM_data.qry_pub.close;
        DM_data.qry_pub.SQL.Text := 'select * from zybl_zyyz where id=' +
          sp_dryz.FieldByName('yzid').asstring;
        try DM_data.qry_pub.Open; except end;
        yzid := sp_dryz.FieldByName('yzid').AsInteger;
        kdys := DM_data.qry_pub.FieldByName('kdys').asstring;
        yzqxtf(yzid, kdys);
      end;
      qry_sxxyz.Close;
      qry_sxxyz.Parameters.ParamByName('zyh').Value :=
        sp_brxx.FieldByName('zyh').asstring;
      qry_sxxyz.Parameters.ParamByName('zyh1').Value :=
        sp_brxx.FieldByName('zyh').asstring;
      qry_sxxyz.Parameters.ParamByName('zyh2').Value :=
        sp_brxx.FieldByName('zyh').asstring;
      qry_sxxyz.Parameters.ParamByName('zyh3').Value :=
        sp_brxx.FieldByName('zyh').asstring;
      qry_sxxyz.ExecSQL;
      RefYzxx;
    end;

  end;

end;

procedure Tfrm_yzzx.N_liyiqxfsClick(Sender: TObject);
var
  _SQl1, _Sql2, kdys, qxfsmc: string;
  yzid: Integer;
begin
  if sender is TMenuItem then
  begin
    qxfsmc := (sender as TMenuItem).Caption;
    qxfsmc := LeftStr(qxfsmc,pos('(',qxfsmc)-1);

    //
    if pub_yydm = '0234' then
    begin
      DM_data.qry_pub.close;
      DM_data.qry_pub.sql.text := ' exec zcyzw  ' + #39 + pub_czydm + #39;
      try
        DM_data.qry_pub.Open;
      except

      end;
      if DM_data.qry_pub.FieldByName('mc').AsString <> '护士长' then
      begin
        ShowMessage('护士长才能标记医嘱！');
        exit;
      end;
    end;
    if not
     (Trim(sp_dryz.FieldByName('sftz').AsString) = '') then
    begin
      ShowMessage('临时医嘱已被标记');
      Abort;
    end;
    if sp_dryz.FieldByName('yzsx').asstring = '临时' then
    begin
      if application.MessageBox(pchar('是否将该条医嘱标记为：'+qxfsmc+'?' + #13 + ''),
        '提示信息', mb_iconwarning + MB_YESNO + mb_defbutton1) = IDYES then
      begin
        if Trim(sp_dryz.FieldByName('fzph').AsString) <> '' then
        begin
          _SQl1 := 'update zybl_zyyz set xyzbz=1,shry='+#39+qxfsmc+#39+',tzbz=1,tzry=' + '''' +
            pub_czydm + '''' + ',tzrq=' + '''' +
            FormatDateTime('yyyy-MM-dd hh:mm:ss', Frm_func.curr_date) + '''' +
            ' where fzph=' + '''' + trim(sp_dryz.FieldByName('fzph').asstring) +
            '''';
          _Sql2 := 'delete from  zybl_zyyz_yzzxqd_mx  where yzid in (select id from zybl_zyyz where fzph='
            + '''' + trim(sp_dryz.FieldByName('fzph').asstring) + ''')';
        end
        else
        begin
          _SQl1 := 'update zybl_zyyz set xyzbz=1,shry='+#39+qxfsmc+#39+',tzbz=1,tzry=' + '''' +
            pub_czydm + '''' + ',tzrq=' + '''' +
            FormatDateTime('yyyy-MM-dd hh:mm:ss', Frm_func.curr_date) + '''' +
            ' where id=' + sp_dryz.FieldByName('yzid').asstring;
          _Sql2 := 'delete from  zybl_zyyz_yzzxqd_mx  where yzid=' +
            sp_dryz.FieldByName('yzid').asstring;
        end;
        DM_data.qry_pub.Close;
        DM_data.qry_pub.sql.text := _SQl1;
        DM_data.qry_pub.ExecSQL;

        DM_data.qry_pub.Close;
        DM_data.qry_pub.sql.text := _Sql2;
        DM_data.qry_pub.ExecSQL;

        DM_data.qry_pub.close;
        DM_data.qry_pub.SQL.text := 'select * from sys_xt_kg ';
        try
          DM_data.qry_pub.Open;
        except

        end;
        if (DM_data.qry_pub.FieldByName('qyzdjf').AsBoolean = true) and
          (DM_data.qry_pub.FieldByName('yztjjf').AsBoolean = true) then
        begin
          DM_data.qry_pub.close;
          DM_data.qry_pub.SQL.Text := 'select * from zybl_zyyz where id=' +
            sp_dryz.FieldByName('yzid').asstring;
          try DM_data.qry_pub.Open; except end;
          yzid := sp_dryz.FieldByName('yzid').AsInteger;
          kdys := DM_data.qry_pub.FieldByName('kdys').asstring;
          yzqxtf(yzid, kdys);
        end;
        qry_sxxyz.Close;
        qry_sxxyz.Parameters.ParamByName('zyh').Value :=
          sp_brxx.FieldByName('zyh').asstring;
        qry_sxxyz.Parameters.ParamByName('zyh1').Value :=
          sp_brxx.FieldByName('zyh').asstring;
        qry_sxxyz.Parameters.ParamByName('zyh2').Value :=
          sp_brxx.FieldByName('zyh').asstring;
        qry_sxxyz.Parameters.ParamByName('zyh3').Value :=
          sp_brxx.FieldByName('zyh').asstring;
        qry_sxxyz.ExecSQL;
        RefYzxx;
      end;

    end;


  end;


end;//-----calmhawk--2011-05-24----手术室调用方法

procedure pro_yzzx_sss();
begin
  try
    application.createform(Tfrm_yzzx, frm_yzzx);
    sssyzzxbz := '1';
    frm_yzzx.showmodal;
  finally
    frm_yzzx.free;
  end;
end;
//-----calmhawk--2011-05-24----滚动

procedure Tfrm_yzzx.OnMouseWheel_yzzx(var Msg: TMsg; var Handled: Boolean);
begin
  if Msg.message = WM_MouseWheel then
  begin
    if Msg.wParam < 0 then
      SendMessage(ScrollBox1.Handle, WM_VSCROLL, SB_LINEDOWN, 0)
    else
      SendMessage(ScrollBox1.Handle, WM_VSCROLL, SB_LINEUP, 0);
    Handled := True;
  end;
end;

procedure Tfrm_yzzx.yzqxtf(var id: integer; var kdys: string);
var
  sftf: string;
begin
  sftf := '1';
  DM_data.qry_pub.close;
  DM_data.qry_pub.SQL.Text :=
    'select * from zybl_zyyz a,zybl_zyyz_zxjl b where a.ph=b.ph and a.id=' +
    inttostr(id);
  try
    DM_data.qry_pub.Open;
  except

  end;
  if DM_data.qry_pub.IsEmpty then
  begin
    sftf := '0';
  end
  else
  begin
    DM_data.qry_pub.close;
    DM_data.qry_pub.SQL.Text :=
      'select a.*,b.fydm from zybl_zyyz a,sys_yzxm b where a.xmdm*=b.xmdm and id=' +
      inttostr(id);
    try
      DM_data.qry_pub.Open;
    except

    end;
    qry_cx.Close;
    qry_cx.SQL.text := 'select * from zybl_bsflb where lbmc=' + '''' +
      DM_data.qry_pub.FieldByName('lb').AsString + '''';
    qry_cx.Open;
    if DM_data.qry_pub.FieldByName('lb').AsString = '药品' then
    begin
      ShowMessage('取消药品医嘱请通知护士退药品！' +
        DM_data.qry_pub.FieldByName('xmmc').asstring + ' ' +
        DM_data.qry_pub.FieldByName('sl').asstring + ' ' +
        DM_data.qry_pub.FieldByName('dw').asstring);
    end
    else if (qry_cx.IsEmpty) and
      (DM_data.qry_pub.FieldByName('lb').AsString <> '其它') then
    begin
      if DM_data.qry_pub.FieldByName('lb').AsString = '材料' then
      begin
        sp_ty_ypcx.close;
        sp_ty_ypcx.Parameters.Refresh;
        sp_ty_ypcx.Parameters.ParamByName('@zyh').Value :=
          sp_brxx.FieldByName('zyh').asstring;
        sp_ty_ypcx.Open;
        sp_ty_ypcx.Locate('ypdm', DM_data.qry_pub.FieldByName('xmdm').asstring,
          []);
        if not sp_ty_ypcx.Locate('ypdm',
          DM_data.qry_pub.FieldByName('xmdm').asstring, []) then
        begin
          sftf := '0';
        end
        else if DM_data.qry_pub.FieldByName('sl').asfloat >
          sp_ty_ypcx.FieldByName('ypsyzxsl').asfloat then
        begin
          sftf := '0';
        end;

      end
      else
      begin
        qry_cx.Close;
        qry_cx.SQL.text :=
          'select fydm,sum(fysl*(fyje/abs(fyje))) sl from zysf_zyfydx where zyh=' + ''''
          + sp_brxx.FieldByName('zyh').asstring + ''' group by fydm';
        qry_cx.Open;
        qry_cx.Locate('fydm', DM_data.qry_pub.FieldByName('fydm').asstring, []);
        if not qry_cx.Locate('fydm',
          DM_data.qry_pub.FieldByName('fydm').asstring, []) then
        begin
          sftf := '0';
        end
        else if DM_data.qry_pub.FieldByName('sl').asfloat >
          qry_cx.FieldByName('sl').asfloat then
        begin
          sftf := '0';
        end;
      end;
      if sftf <> '0' then
      begin
        sp_lsyztf.Close;
        sp_lsyztf.Parameters.Refresh;
        sp_lsyztf.Parameters.ParamByName('@yzid').Value := id;
        sp_lsyztf.Parameters.ParamByName('@bqdm').Value := pub_bqdm;
        sp_lsyztf.Parameters.ParamByName('@zyh').Value :=
          sp_brxx.FieldByName('zyh').asstring;
        sp_lsyztf.Parameters.ParamByName('@czydm').Value := pub_czydm;
        sp_lsyztf.Parameters.ParamByName('@kdys').Value := kdys;
        sp_lsyztf.Parameters.ParamByName('@zxsj').Value :=
          FormatDateTime('yyyyMMdd', frm_func.curr_date);
        sp_lsyztf.Parameters.ParamByName('@sczt').Value := '1';
        sp_lsyztf.ExecProc;
        ShowMessage('退医嘱费用成功！');
      end;
    end;
  end;

end;

procedure Tfrm_yzzx.ChangePrinter;
begin
  //判断是否使用打印关联方式及取得打印机序号
  try
    v_PrinterIndex_old := Printer.PrinterIndex;
    v_PrinterIndex_new := func_GetPrinterIndex(3, v_IsPrinterJoin);
    //    if v_IsPrinterJoin then
    //      Proc_ChangePrinter( v_PrinterIndex_new, True );
  except
  end;

end;

procedure Tfrm_yzzx.RevertPrinter;
begin
  //还原原来默认打印机
  try
    if v_IsPrinterJoin then
      Proc_ChangePrinter(v_PrinterIndex_old, True);
  except
  end;
end;

end.

