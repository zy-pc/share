unit p_yzzxxse;

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
  printers,DBCtrlsEh,p_FrmAdoReconBase, DBGridEhGrouping;
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
  Tfrm_yzzxxse = class(TfrmAdoReconBase)
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
    procedure FormShow(Sender: TObject);
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
    procedure FormCreate(Sender: TObject);
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
  private
    { Private declarations }  
    procedure getmouse(var msg: TWMMouseWheel); message WM_MouseWheel;
    procedure OnMouseWheel_yzzx(var Msg: TMsg; var Handled: Boolean);
    procedure ProSjsj(kdrq: TDateTime; tzrq: TDateTime);
    procedure ProXzzxhs;
    procedure RefYzxx;
    procedure ProZsj(_zyh: string);
    procedure ProXswzx;
    procedure ChangePrinter;
    procedure RevertPrinter;
    function CheckCZY: boolean;
    procedure WMAdoReStore(var message: TMessage); message WM_ADOReCon;
    procedure ShowForm;
  public //y��ʾѡ��,n��ʾδѡ��
    tmh, zyh, xzph, kdys, ysmc, yfmc, str_zyh: string;
    xhlist, zyhlist, phlist, yzsx: string;
    //zyhlist ���μǷ���Ա  phlist���μǷ����� //���xhlist
    xzbz: string; //y��ʾѡ��,n��ʾδѡ��
    curr_datetime: Tdatetime;

    pldh, _phlist: string;

    zxsj, qyyf: string;
    iszx: boolean;
    rectno: integer;

    cx_zyh, yz_select: string;
    del_curr_ph: string;
    del_bz: integer; //0 ����δɾ����1����ɾ����Ŀ
    zxczy: string;
    chag: Boolean;
    procedure createrect(var myrect1: TTmyrect; dataset_rect: TCustomADODataSet;
      grid_yzlr1: Tdbgrideh; x1, x2, x3: integer);
    procedure yzqxtf(var id: integer; var kdys: string);
    { Public declarations }
  end;

var
  frm_yzzxxse: Tfrm_yzzxxse;
  yzlb: string; //ҽ�����
  jryzxph: string; //������ִ��ҽ������
  isch: boolean;
  _zxbh: string; //ִ�б��(ȷ����ǰִ��ҽ���ı��)
  myrect: TTmyrect;
  myrect_cx, myrect_zx_cq, myrect_zx_ls: TTmyrect;
  yzsjxse: Tdatetime;
  qxyzsj: TDateTime;
  fqyzxse: boolean;
  //����ҽ��ʱ��ʱ���㡰ȷ������fqyz:=false;����"����"��fqyz:=true;
  wz: Integer;
  sfqyydhsz: Boolean;
  sj: string;

  sssyzzxbz: string;
  _ysbz: Boolean; //calmhawk---ҽ����־---
  //-----calmhawk--2011-05-24----�����ҵ��÷���
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
  p_syddy, p_yzinput, p_hsdyzxd, p_bqgl_zxypyz, p_hsgzltj, DateUtils;

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

procedure Tfrm_yzzxxse.btn_GongZuoLiangClick(Sender: TObject);
begin
  Application.CreateForm(Tfrm_hsgzltj, frm_hsgzltj);
  try
    frm_hsgzltj.showmodal;
  finally
    frm_hsgzltj.Free;
  end;
end;

procedure Tfrm_yzzxxse.btn_sypqClick(Sender: TObject);
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

procedure Tfrm_yzzxxse.Button1Click(Sender: TObject);
begin
  if (Button1.Caption = 'ʱ�����') and (ComboBox1.text = 'ȫ��') then
  begin
    sp_dryz.Filtered := False;
    sp_dryz.Filter := ' kdrq>=' + '''' + formatdatetime('yyyy-MM-dd hh:MM',
      DateTimePicker1.value) + ''''
      + ' and  kdrq<=' + '''' + formatdatetime('yyyy-MM-dd hh:MM',
      DateTimePicker2.value) + '''';
    sp_dryz.Filtered := True;
    Button1.Caption := 'ȡ������';
  end
  else if (Button1.Caption = 'ʱ�����') and (ComboBox1.text = '����') then
  begin
    sp_dryz.Filtered := False;
    sp_dryz.Filter := ' yzsx=''����'' and kdrq>=' + '''' +
      formatdatetime('yyyy-MM-dd hh:MM', DateTimePicker1.value) + ''''
      + ' and  kdrq<=' + '''' + formatdatetime('yyyy-MM-dd hh:MM',
      DateTimePicker2.value) + '''';
    sp_dryz.Filtered := True;
    Button1.Caption := 'ȡ������';
  end
  else if (Button1.Caption = 'ʱ�����') and (ComboBox1.text = '��ʱ') then
  begin
    sp_dryz.Filtered := False;
    sp_dryz.Filter := ' yzsx=''��ʱ'' and kdrq>=' + '''' +
      formatdatetime('yyyy-MM-dd hh:MM', DateTimePicker1.value) + ''''
      + ' and  kdrq<=' + '''' + formatdatetime('yyyy-MM-dd hh:MM',
      DateTimePicker2.value) + '''';
    sp_dryz.Filtered := True;
    Button1.Caption := 'ȡ������';
  end
  else
  begin
    Button1.Caption := 'ʱ�����';
    sp_dryz.Filtered := False;
  end;
end;

procedure Tfrm_yzzxxse.Button2Click(Sender: TObject);
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
    Application.MessageBox('��δ����·��������ִ��', '����', MB_OK +
      MB_ICONWARNING);
    exit;
  end
  else
  begin
    try
      application.createform(Tfrm_lcljzx, frm_lcljzx);
      frm_lcljzx.v_zyh := sp_brxx.FieldByName('zyh').asstring;
      frm_lcljzx.showmodal;
    finally
      frm_lcljzx.free;
    end;
  end;

end;

procedure Tfrm_yzzxxse.Button3Click(Sender: TObject);
var
  x_fydm, revalue: string;
  fysl: integer;
  cwxx: string;
  x_yzid: Integer;
begin
  if Application.MessageBox('�Ƿ�ȷ���˷ѣ�', 'ѯ��', MB_YESNO +
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
    Application.MessageBox(' �����Ѿ���Ժ���޷��˼���ѣ�',
      '��ʾ', MB_OK + MB_ICONWARNING);
    Exit;
  end;
  cwxx := '';
  if not sp_dryz.isempty then
  begin
    sp_dryz.First;
    while not sp_dryz.eof do
    begin
      if (trim(sp_dryz.fieldbyname('lb').asstring) = '����') and
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
            sp_cx_tfmx.Parameters.ParamByName('@tflb').Value := '���';
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
            sp_cx_tfmx.Parameters.ParamByName('@tflb').Value := '��ϸ';
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
            cwxx := cwxx + '���ô��� ' + x_fydm + ' �˷�ʧ�ܣ�' + #13#10;

          end;

        end;
      end;
      sp_dryz.next;
    end;
    if Trim(StringReplace(cwxx, #13#10, '', [rfReplaceAll])) <> '' then
      Application.MessageBox('���˷�ʧ�ܵļ���ѣ�������˷ѽ����˷ѣ�',
        '��ʾ', MB_OK + MB_ICONWARNING)
    else
      Application.MessageBox('�˷ѳɹ���', '��ʾ', MB_OK +
        MB_ICONINFORMATION);

  end;

end;

procedure Tfrm_yzzxxse.Button4Click(Sender: TObject);
begin
  try
    application.createform(Tfrm_zxypyz, frm_zxypyz);
    frm_zxypyz.zyh := sp_brxx.FieldByName('zyh').asstring;
    frm_zxypyz.showmodal;
  finally
    if frm_yzzxxse.Parent = frm_main then
      frm_zxypyz.free;
  end;

end;

procedure Tfrm_yzzxxse.CheckBox1Click(Sender: TObject);
begin
  if CheckBox1.Checked = True then
  begin
    chk1.Checked := false;
    CheckBox2.Checked := false;
  end;
  ProXswzx;
end;

procedure Tfrm_yzzxxse.CheckBox2Click(Sender: TObject);
begin
  if CheckBox2.Checked = True then
  begin
    CheckBox1.Checked := false;
    chk1.Checked := false;
  end;
  ProXswzx;
end;

function Tfrm_yzzxxse.CheckCZY: boolean;
var
  CSql: string;
begin
  result := false;
  with QryTmp do
  begin
    Close;
    Sql.Clear;
    CSql := 'SELECT a.* FROM sys_czy a, sys_zwdm b WHERE a.zwbm=b.dm AND b.mc=''��ʿ��'' and a.dm='''
      + pub_czydm + '''';
    Sql.Add(CSQL);
    Open;
  end;
  if QryTmp.IsEmpty then
    exit;
  result := true;
end;

procedure Tfrm_yzzxxse.Probxstzyz;
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
      _filter1 := _filter1 + ' and (sftz<>' + '''' + '��ȡ��' + '''';
      _filter1 := _filter1 + ') and (sftz<>' + '''' + 'δ��' + '''';
      _filter1 := _filter1 + ')';
      _filter2 := ' or ((tzrq <> null) ';
      _filter2 := _filter2 + ' and (tzzxsj = null)';
      _filter2 := _filter2 + ' and (yzsx=' + '''' + '����' + '''' + ')';

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

procedure Tfrm_yzzxxse.chk1Click(Sender: TObject);
begin
  if chk1.Checked = True then
  begin
    CheckBox1.Checked := false;
    CheckBox2.Checked := false;
  end;
  ProXswzx;
  DBGridEh4.SetFocus;
end;

procedure Tfrm_yzzxxse.ComboBox1Change(Sender: TObject);
begin
  if ComboBox1.text = 'ȫ��' then
  begin
    sp_dryz.Filtered := False;
  end;
  if ComboBox1.text = '����' then
  begin
    sp_dryz.Filtered := False;
    sp_dryz.Filter := 'yzsx=''����''';
    sp_dryz.Filtered := True;
  end;
  if ComboBox1.text = '��ʱ' then
  begin
    sp_dryz.Filtered := False;
    sp_dryz.Filter := 'yzsx=''��ʱ''';
    sp_dryz.Filtered := True;
  end;
end;

procedure Tfrm_yzzxxse.createrect(var myrect1: TTmyrect; dataset_rect:
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

procedure Tfrm_yzzxxse.ProXswzx;
var
  _filter: string;
begin
  if sp_dryz.Active then
  begin
    _filter := '';
    if chk1.Checked then
    begin
      _filter := '((syczxsj = null)';
      _filter := _filter + ' and (sftz<>' + '''' + '��ȡ��' + '''';
      _filter := _filter + ') and (sftz<>' + '''' + 'δ��' + '''';
      _filter := _filter + ')) or ((tzrq <> null) ';
      _filter := _filter + ' and (tzzxsj = null)';
      _filter := _filter + ' and (yzsx=' + '''' + '����' + '''' + '))';

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
    sp_dryz.Filter := _filter;
    sp_dryz.Filtered := True;
    DBGridEh2.Columns[10].Width := DBGridEh2.Columns[10].Width - 1;
    DBGridEh2.Columns[10].Width := DBGridEh2.Columns[10].Width + 1;
  end;
end;

procedure Tfrm_yzzxxse.ProZsj(_zyh: string);
begin
  //1��ת���ݵ�qry_dqzxlsb,ͨ��qry_dqzxlsb ���浽ִ����ʱ��zybl_zyyz_dqzxlsb
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
      sp_dryz.FieldByName('syczxsj').AsDateTime;
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

//----calmhawk------

procedure Tfrm_yzzxxse.RefYzxx;
begin
  sp_dryz.close;
  sp_dryz.Parameters.ParamByName('@zyh').value :=
    sp_brxx.FieldByName('zyh').asstring;
  sp_dryz.Parameters.ParamByName('@zxsj').value := formatdatetime('yyyymmdd',
    dT_zxsj.Date);
  sp_dryz.Parameters.ParamByName('@ksdm').value := pub_ksdm;
  sp_dryz.Parameters.ParamByName('@sssbz').value := sssyzzxbz;
  sp_dryz.Parameters.ParamByName('@sfxse').Value := '1';
  sp_dryz.Open;
  sp_dryz.First;

  DBGridEh4.Columns[1].Width := DBGridEh4.Columns[1].Width + 1;
  DBGridEh4.Columns[1].Width := DBGridEh4.Columns[1].Width - 1;
  DBGridEh2.Columns[13].Width := DBGridEh4.Columns[13].Width + 1;
  DBGridEh2.Columns[13].Width := DBGridEh4.Columns[13].Width - 1;
  createrect(myrect_cx, sp_dryz, dbgrideh4, 12, 13, 15);
  DBGridEh4.SetFocus;
end;

procedure Tfrm_yzzxxse.ProXzzxhs;
begin
  if xzzxr.Checked then
  begin
    //��������ѡ��ʿ
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

procedure Tfrm_yzzxxse.ProSjsj(kdrq: TDateTime; tzrq: TDateTime);
begin
  if srsj.Checked then
  begin
    //������������ʱ��
    //fqyz := false;
    application.createform(TFrm_yzsj, frm_yzsj);
    try
      if (FormatDateTime('yyyyMMdd', kdrq) <> '19000101') and
        (FormatDateTime('yyyyMMdd', tzrq) = '19000101') then
      begin
        frm_yzsj.yzzxsj.Date := kdrq;
      end
      else if (FormatDateTime('yyyyMMdd', kdrq) <> '19000101') and
        (FormatDateTime('yyyyMMdd', tzrq) <> '19000101') then
        frm_yzsj.yzzxsj.Date := tzrq
      else
        frm_yzsj.yzzxsj.Date := frm_func.curr_date;
      frm_yzsj.showmodal;
    finally
      //yzsj=Frm_yzsj��¼���ʱ�䣬sj��yzsj�ĸ�ʽ���ַ���
      sj := formatdatetime('yyyy-mm-dd hh:mm:ss', yzsjxse);
      frm_yzsj.free;
    end;
  end
  else
  begin
    sj := formatdatetime('yyyy-mm-dd hh:mm:ss', frm_func.curr_date);
  end;
end;

procedure Tfrm_yzzxxse.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Application.OnMessage := nil;
  //  if frm_yzinput <> nil then
  //    frm_yzinput.free;

end;

procedure Tfrm_yzzxxse.FormCreate(Sender: TObject);
begin
  //QuickRep1.Visible := False;
  sssyzzxbz := '';
  QuickRep2.Visible := False;

  Application.OnMessage := OnMouseWheel_yzzx;

end;

procedure Tfrm_yzzxxse.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    selectnext(activecontrol, true, true);
end;

procedure Tfrm_yzzxxse.FormResize(Sender: TObject);
begin
  scrollbox1.VertScrollBar.Position := 0;
  scrollbox1.HorzScrollBar.Position := 0;
  dbgrideh4.Left := scrollbox1.ClientRect.left;
  dbgrideh4.Top := scrollbox1.ClientRect.top;

end;

procedure Tfrm_yzzxxse.FormShow(Sender: TObject);
begin
  ShowForm;
end;

procedure Tfrm_yzzxxse.ScrollBox1MouseWheelUp(Sender: TObject; Shift:
  TShiftState;
  MousePos: TPoint; var Handled: Boolean);
begin
  if DBGridEh4.Focused = true then
    ScrollBox1.VertScrollBar.Position := ScrollBox1.VertScrollBar.Position - 24;
end;

procedure Tfrm_yzzxxse.ShowForm;
begin
  if pub_yydm <> '0015' then
  begin
    if (DBGridEh2.FieldColumns['ysfs'].Visible = true) then
    begin
      DBGridEh2.FieldColumns['ysfs'].Visible := false;
    end;
    if (DBGridEh4.FieldColumns['ysfs'].Visible = true) then
    begin
      DBGridEh4.FieldColumns['ysfs'].Visible := false;
    end;
    N8.Enabled := False;
    N11.Enabled := False;
  end;

  if (pub_yydm = '0003') and (pub_bqdm = '0030') then
    //��ҽԺICU������ȡ��ҽ��ִ�м�¼��Ȩ��
  begin
    N17.Visible := True;
  end
  else if (pub_yydm = '0015') then
  begin
    if (username = 'sys_bqgl') and (frm_main.FindComponent('HSGZZL33') <> nil)
      then
    begin
      if (frm_main.FindComponent('HSGZZL33') as TMenuItem).Visible = false then
      begin
        btn_GongZuoLiang.Visible := False;
      end;
    end;
    //btn_GongZuoLiang.Visible := True;
  end;

  DM_data.qry_pub.close;
  DM_data.qry_pub.sql.Text := 'select * from sys_xt_kg';
  try
    dm_data.qry_pub.open;
  except
  end;
  sfqyydhsz := DM_data.qry_pub.FieldByName('sfqyydhsz').AsBoolean;
  if pub_yydm = '0003' then
  begin
    cxButton9.Visible := false;
  end;
  if pub_yydm <> '0013' then
  begin
    N9.Visible := False;
    N10.Visible := False;
  end;
  chag := False;
  cx_zyh := '';
  if sp_brxx.Active then
    if not sp_brxx.IsEmpty then
      cx_zyh := sp_brxx.FieldByName('zyh').AsString;
  //����ȫ����Ա
  dt_zxsj.DateTime := frm_func.curr_date;
  //QuickRep1.Visible := false;
  PageControl1.ActivePage := Tabsheet1;
  isch := false;
  sp_yzsj.Close;
  sp_yzsj.Parameters.ParamByName('@scyzsj').Value := dt_zxsj.DateTime;
  sp_yzsj.ExecProc;
  dt_zxsj.DateTime := sp_yzsj.Parameters.ParamByName('@scyzsj').Value;

  sp_brxx.Close;
  sp_brxx.Parameters.ParamByName('@sr_bqdm').Value := trim(pub_bqdm);
  sp_brxx.Parameters.ParamByName('@yzzxsj').Value := formatdatetime('yyyymmdd',
    dT_zxsj.Date);
  sp_brxx.Parameters.ParamByName('@zyh').Value := '';
  sp_brxx.Parameters.ParamByName('@sssbz').Value := sssyzzxbz;
  sp_brxx.Parameters.ParamByName('@sfxse').Value := '1';
  sp_brxx.Open;
  if cx_zyh = '' then
    cx_zyh := zyh;
  isch := true;
  _zxbh := pub_czydm + formatdatetime('ss', frm_func.curr_date);
  scrollbox1.VertScrollBar.Position := 0;
  scrollbox1.HorzScrollBar.Position := 0;
  dbgrideh4.Left := scrollbox1.ClientRect.left;
  dbgrideh4.Top := scrollbox1.ClientRect.top;
  DM_data.qry_pub.Close;
  DM_data.qry_pub.SQL.text := 'select * from sys_xt_kg ';
  try
    dm_data.qry_pub.open;
  except
  end;
  if DM_data.qry_pub.FieldByName('xzzxr').AsBoolean = false then
  begin
    xzzxr.Checked := false;
    xzzxr.Visible := False;
  end
  else
  begin
    xzzxr.Checked := true;
    xzzxr.Visible := true;
  end;
  srsj.Checked := True;
  if not sp_brxx.Locate('zyh', cx_zyh, []) then
  begin
    sp_brxx.First;
    cx_zyh := sp_brxx.FieldByName('zyh').AsString;
  end;
  if not sp_brxx.IsEmpty then
    RefYzxx;
  DM_data.qry_pub.Close;
  DM_data.qry_pub.SQL.text := 'select * from sys_czy where dm=' + '''' +
    pub_czydm + '''';
  try
    dm_data.qry_pub.open;
  except
  end;
  _ysbz := DM_data.qry_pub.FieldByName('ysbz').AsBoolean;
  //ע�Ϳ�ʼ08-11����
 // qry_update_xyz.Parameters.ParamByName('bqdm').Value := pub_bqdm;
 // qry_update_xyz.ExecSQL;
 //ע�ͽ��� ����08-11
  DateTimePicker1.value := FormatDateTime('yyyy-MM-dd 00:00',
    frm_func.curr_date);
  DateTimePicker2.value := FormatDateTime('yyyy-MM-dd 23:59',
    frm_func.curr_date);
  chag := true;

  ///////////////////////////////
//  application.CreateForm( Tfrm_yzinput, frm_yzinput );
end;

procedure Tfrm_yzzxxse.SpeedButton1Click(Sender: TObject);
begin
  self.FormShow(self);
end;

procedure Tfrm_yzzxxse.SpeedButton2Click(Sender: TObject);
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
  sp_zxjl_cq_dy.Filter := 'yytj=''�ڷ�''';
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

      QRL_yymc_cq.Caption := pub_yymc + 'ҽ��ִ�е�(�ڷ�ҩ)';
      QRL_brxm_cq.Caption := '����:' + sp_brxx.fieldbyname('brxm').asstring;
      //QRL_tmh_cq.Caption := 'סԺ��:' + sp_sybr.fieldbyname('brxm').asstring;;
      QRL_bch_cq.Caption := '����:' + sp_brxx.fieldbyname('bch').asstring;
      //  xb_cq.Caption := '�Ա�:' + sp_sybr.fieldbyname('brxb').asstring;
      //  nl_cq.Caption := '����:' + trim(sp_sybr.fieldbyname('brnl').asstring)+'��';
        //zd_cq.Caption := '���:' + trim(sp_jbxx.FieldByName('ryzd').AsString);
        //QRL_dysj_cq.Caption := '��ӡʱ��:' + FormatDatetime('yyyy��mm��dd��', frm_func.curr_date);
      //  sj1.caption:='����'+#13+'ʱ��';
      //  sj2.caption:='ִ��'+#13+'ʱ��';
      //  sj3.caption:='����'+#13+'ʱ��';
      //  sj4.caption:='ִ��'+#13+'ʱ��';
      qrlbl_nf_tmh.Caption := 'סԺ��:' + sp_brxx.fieldbyname('tmh').asstring;
      qrlbl_nfQRL_bq_cq.Caption := '����:' + pub_bqmc;
      QuickRep2.Prepare;
      //  paper_size:=0;
      //  QRL_ys_cq.Caption := '��' + IntToStr(QuickRep1.Printer.PageCount) + 'ҳ';
      ys.Caption := '��' + '   ' + inttostr(i) + '  ҳ';
      QuickRep2.Preview;

    end;

  end;

end;

procedure Tfrm_yzzxxse.sp_dryzAfterOpen(DataSet: TDataSet);
begin
  if sp_dryz.RecordCount * 30 > screen.Height - 70 then
    dbgrideh4.Height := sp_dryz.RecordCount * 30
  else
    dbgrideh4.Height := screen.Height - 70;
  createrect(myrect_cx, sp_dryz, dbgrideh4, 9, 10, 14);
end;

procedure Tfrm_yzzxxse.sp_dryzBeforeScroll(DataSet: TDataSet);
begin
  wz := 0;
  if sp_dryz.Active then
    if sp_dryz.RecordCount > 0 then
      wz := sp_dryz.RecNo;
end;

procedure Tfrm_yzzxxse.TabSheet2Show(Sender: TObject);
begin
  qry_fymx.Close;
  qry_fymx.Parameters.ParamByName('zyh').Value := cx_zyh;
  qry_fymx.Open;
end;

procedure Tfrm_yzzxxse.Timer1Timer(Sender: TObject);
begin
  DBGridEh2.left := 3 - ScrollBox1.HorzScrollBar.Position;
end;

procedure Tfrm_yzzxxse.WMAdoReStore(var message: TMessage);
begin
  ShowForm;
end;

procedure Tfrm_yzzxxse.zxyzClick(Sender: TObject);
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
  //��������TDatetime�����Ĳ�ֵ�Ƿ�С�� N ����
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
  end;
begin
  DM_data.qry_pub.close;
  DM_data.qry_pub.sql.Text := 'SELECT yzzxbnxg FROM dbo.sys_xt_kg';
  try
    dm_data.qry_pub.open;
  except
  end;
  Byzzxbnxg := DM_data.qry_pub.FieldByName('yzzxbnxg').AsBoolean;
  xzsl := 0;
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
    Application.MessageBox('δѡ����Ҫִ�е�ҽ����������ѡ���ִ�У�', '����',
      MB_OK + MB_ICONSTOP);
    Exit;
  end;
  _zyh := sp_brxx.FieldByName('zyh').asstring;
  kdrq := StrToDateTime('1900-01-01 00:00:00');
  tzrq := StrToDateTime('1900-01-01 00:00:00');
  fqyzxse := False;
  zxczy := pub_czydm;
  sbookmark := sp_dryz.GetBookmark;
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
    kdrq := sp_dryz.fieldbyname('kdrq').AsDateTime;
    if Trim(sp_dryz.fieldbyname('tzrq').AsString) <> '' then
      tzrq := sp_dryz.fieldbyname('tzrq').AsDateTime;
    sp_dryz.Next;
  end;
  sp_dryz.EnableControls;
  //����������ҽԺ��������ҽ�������Ƚ�
  if pub_yydm = '0015' then
  begin
    sp_dryz.DisableControls;
    BMix := False;
    BKDRQDiff := False;
    BTZRQDiff := False;
    for ItmpI := 1 to sp_dryz.Recordcount - 1 do
    begin
      Sp_dryz.RecNo := ItmpI;
      if not Sp_Dryz.FieldByName('xz').AsBoolean then
        continue;
      DKDRQ_Out := sp_dryz.FieldByName('kdrq').AsDateTime;
      DTZRQ_Out := sp_dryz.FieldByName('tzrq').AsDateTime;
      if sp_dryz.FieldByName('sftz').AsString = '��ֹͣ' then
        BTZZT_Out := True
      else
        BTZZT_Out := False;
      for ItmpJ := ItmpI + 1 to Sp_Dryz.RecordCount do
      begin
        Sp_dryz.RecNo := ItmpJ;
        if not Sp_Dryz.FieldByName('xz').AsBoolean then
          continue;
        DKDRQ_In := sp_dryz.FieldByName('kdrq').AsDateTime;
        DTZRQ_In := sp_dryz.FieldByName('tzrq').AsDateTime;
        if sp_dryz.FieldByName('sftz').AsString = '��ֹͣ' then
          BTZZT_In := True
        else
          BTZZT_In := False;
        //
        if BTZZT_Out <> BTZZT_In then
          BMix := True;
        if not BIsMinuteDiffLessN(DKDRQ_IN, DKDRQ_OUT, 20) then
          BKDRQDIFF := TRUE;
        if not BIsMinuteDiffLessN(DTZRQ_IN, DTZRQ_OUT, 20) then
          BTZRQDIFF := TRUE;
      end;
    end;
    sp_dryz.EnableControls;
  end;
  if BMix then
    CMixAndDiffWarn := '��ֹͣҽ����δֹͣҽ��ͬʱ��ѡ�У�';
  if BKDRQDIFF then
    CMixAndDiffWarn := CMixAndDiffWarn + #13#10 +
      'ҽ���趨�Ŀ�ʼִ��ʱ�����20�������ϵ�ҽ��ͬʱ��ѡ�У�';
  if BTZRQDIFF then
    CMixAndDiffWarn := CMixAndDiffWarn +
      'ҽ���趨��ִֹͣ��ʱ�����20�������ϵ�ҽ��ͬʱ��ѡ�У�';
  if CMixAndDiffWarn <> '' then
    Application.MessageBox(PChar('��ע�⣺��ѡ�еĶ���ҽ���д������������' +
      #13#10 + CMixAndDiffWarn + #13#19 + '�����ִ�У�'), '����', MB_OK +
      MB_ICONWARNING);
  //ѡ��ʱ��
  //����Ŀ�������kdrq��ֹͣ����tzrq���ܵ�ֵ��
  //1.�������ѡ��һ��ҽ����kdrq,tzrq�����һ��ҽ���ģ�
  //2.���δѡ���κ�ҽ����kdrq,tzrq=���渳���ַ���ֵ
  ProSjsj(kdrq, tzrq);

  //ѭ��ѡ�е�ҽ�����������⴦��pub_yydm='0003'ʱ��δ��ֹͣʱ���ҽ������ִ��
  //��ʱ����ȡ����Щҽ����ѡ��״̬
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
        if (Trim(sp_dryz.fieldbyname('tzrq').AsString) <> '') and
          (StrToDateTime(sj) >= sp_dryz.fieldbyname('tzrq').AsDateTime) then
        begin
          if (sp_dryz.fieldbyname('tzrq').AsDateTime > Frm_func.curr_date) then
          begin
            Application.MessageBox('��δ��ֹͣʱ�䣬����ִ�У�', '����',
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
          if ((yzsjxse >= sp_dryz.fieldbyname('kdrq').AsDateTime) and
            (sp_dryz.fieldbyname('tzrq').AsString = ''))
            or
            ((yzsjxse >= sp_dryz.fieldbyname('kdrq').AsDateTime) and
            (sp_dryz.fieldbyname('tzrq').AsString <> '') and (yzsjxse <
            sp_dryz.fieldbyname('tzrq').AsDateTime))
            or
            ((sp_dryz.fieldbyname('tzrq').AsString <> '') and
            (sp_dryz.fieldbyname('tzzxsj').AsString <> '') and (yzsjxse >=
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

      { // XML 2014-09-28 �ı䲡�˵Ļ�������Ҫ ��ʿִ����Ч}
      if (Pos('������', sp_dryz.FieldByName('xmmc').AsString) > 0)
        and (Trim(sp_dryz.fieldbyname('syczxsj').AsString) = '') then
      begin
        _hljbmc := sp_dryz.FieldByName('xmmc').AsString;
        DM_data.qry_pub.Close;
        DM_data.qry_pub.sql.text := 'select * from sys_hljb where rtrim(mc)=' +
          '''' + trim(_hljbmc) + '''';
        try
          dm_data.qry_pub.open;
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
    Application.MessageBox(PChar('����ѡ����ҽ���д�����ִ�й���ҽ����' +
      #13#10 +
      'ֻ�л�ʿ�������޸���Щҽ����ִ��ʱ�䣡' + #13#10 +
      '��ȡ����ѡ��Щҽ����'),
      PChar('Ȩ�޲���'), MB_OK + MB_ICONINFORMATION);
  sp_dryz.EnableControls;
  //cwsl=xzsl����ʾ���е�ѡ��ҽ������ȡ��ѡ����(û��ҽ����ѡ��)
  if cwsl = xzsl then
    Exit;
  //ѡ��ִ����
  ProXzzxhs;
  //fqyz:���趨ʱ��ʱ�����δ����ʱ�䣬��fqyz:=true ���Ͳ���ִ���κ�ҽ��
  if not fqyzxse then
  begin
    //1��ת���ݵ�qry_dqzxlsb,ͨ��qry_dqzxlsb ���浽ִ����ʱ��zybl_zyyz_dqzxlsb
    ProZsj(_zyh);
    _res := '1';
    //2��ִ��
    sp_yzzx.close;
    sp_yzzx.Parameters.ParamByName('@zyh').Value :=
      sp_brxx.FieldByName('zyh').asstring;
    sp_yzzx.Parameters.ParamByName('@zxsj').Value := formatdatetime('yyyymmdd',
      dt_zxsj.Date); //dt_zxsjĬ��Ϊ��ǰʱ��
    sp_yzzx.Parameters.ParamByName('@yzsj').Value := sj;
    sp_yzzx.Parameters.ParamByName('@czydm').Value := zxczy;
    sp_yzzx.Parameters.ParamByName('@jyfzbh').Value := jyfzbh;
    sp_yzzx.Parameters.ParamByName('@sczt').Value := _res;
    sp_yzzx.ExecProc;
    _res := sp_yzzx.parameters.ParamByName('@sczt').value;
    if _res <> '0' then
    begin
      ShowMessage('ִ��ʧ��!' + #13 + _res);
    end;
    //ˢ��
    RefYzxx;
    ProXswzx;
  end;

end;

procedure Tfrm_yzzxxse.cxBt1Click(Sender: TObject);
begin
  try
    application.createform(tfrm_hsdyzxd, frm_hsdyzxd);
    //    Application.OnMessage := nil;
    frm_hsdyzxd.showmodal;
  finally
    frm_hsdyzxd.free;
  end;
end;

procedure Tfrm_yzzxxse.cxBtn_kfbqClick(Sender: TObject);
begin
  ChangePrinter;
  if sfqyydhsz <> true then
  begin
    qrl_ks.Caption := '����:' + pub_ksmc;
    qrl_ch.Caption := '����' + Trim(sp_brxx.FieldByName('bch').AsString);
    qrl_brxm.Caption := '����:' + Trim(sp_brxx.FieldByName('brxm').AsString);
    qrl_ks1.Caption := '����:' + pub_ksmc;
    qrl_ch1.Caption := '����' + Trim(sp_brxx.FieldByName('bch').AsString);
    qrl_brxm1.Caption := '����:' + Trim(sp_brxx.FieldByName('brxm').AsString);
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
    QRLabel1.Caption := '����:' + pub_ksmc;
    QRLabel3.Caption := '����' + Trim(sp_brxx.FieldByName('bch').AsString);
    QRLabel2.Caption := '����:' + Trim(sp_brxx.FieldByName('brxm').AsString);
    QRLabel4.Caption := '����:' + pub_ksmc;
    QRLabel13.Caption := '����' + Trim(sp_brxx.FieldByName('bch').AsString);
    QRLabel14.Caption := '����:' + Trim(sp_brxx.FieldByName('brxm').AsString);

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

end;

procedure Tfrm_yzzxxse.cxBtn_qbkfbqClick(Sender: TObject);
begin
  sp_brxx.DisableControls;
  sp_brxx.first;
  ChangePrinter;
  while not sp_brxx.eof do
  begin
    if sfqyydhsz <> true then
    begin
      qrl_ks.Caption := '����:' + pub_ksmc;
      qrl_ch.Caption := '����' + Trim(sp_brxx.FieldByName('bch').AsString);
      qrl_brxm.Caption := '����:' + Trim(sp_brxx.FieldByName('brxm').AsString);
      qrl_ks1.Caption := '����:' + pub_ksmc;
      qrl_ch1.Caption := '����' + Trim(sp_brxx.FieldByName('bch').AsString);
      qrl_brxm1.Caption := '����:' + Trim(sp_brxx.FieldByName('brxm').AsString);
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
      QRLabel1.Caption := '����:' + pub_ksmc;
      QRLabel3.Caption := '����' + Trim(sp_brxx.FieldByName('bch').AsString);
      QRLabel2.Caption := '����:' + Trim(sp_brxx.FieldByName('brxm').AsString);
      QRLabel4.Caption := '����:' + pub_ksmc;
      QRLabel13.Caption := '����' + Trim(sp_brxx.FieldByName('bch').AsString);
      QRLabel14.Caption := '����:' + Trim(sp_brxx.FieldByName('brxm').AsString);

      if v_IsPrinterJoin then
      begin
        if QuickRep1.PrinterSettings.PrinterIndex <> v_PrinterIndex_new then
        begin
          QuickRep1.PrinterSettings.PrinterIndex := v_PrinterIndex_new;
        end;
      end;
      QuickRep1.Print;
    end;
    sp_brxx.Next;
  end;
  //RevertPrinter;
  sp_brxx.First;
  sp_brxx.EnableControls;

end;

procedure Tfrm_yzzxxse.cxButton1Click(Sender: TObject);
begin
  try
    application.createform(tfrm_jcsqd, frm_jcsqd);
    DM_data.qry_pub.Close;
    DM_data.qry_pub.SQL.text := 'select * from sys_kscwsz where bqdm=' + '''' +
      pub_bqdm + '''' + ' and yybch=' + '''' +
      trim(sp_brxx.FieldByName('bch').AsString) + '''';
    try
      dm_data.qry_pub.open;
    except
    end;
    frm_jcsqd.pq.Text := Trim(DM_data.qry_pub.FieldByName('bcbh').AsString);
    frm_jcsqd.showmodal;
  finally
    frm_jcsqd.free;
  end
end;

procedure Tfrm_yzzxxse.cxButton2Click(Sender: TObject);
begin
  try
    application.createform(tfrm_jydtmdy, frm_jydtmdy);
    DM_data.qry_pub.Close;
    DM_data.qry_pub.SQL.text := 'select * from sys_kscwsz where bqdm=' + '''' +
      pub_bqdm + '''' + ' and yybch=' + '''' +
      trim(sp_brxx.FieldByName('bch').AsString) + '''';
    try
      dm_data.qry_pub.open;
    except
    end;
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

procedure Tfrm_yzzxxse.cxButton3Click(Sender: TObject);
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
    frm_bylsyz.QRL_dysj.Caption := '��ӡʱ��:' +
      FormatDatetime('yyyy��mm��dd�� HHʱMM��SS��', frm_func.curr_date);
    frm_bylsyz.rep_dryphz.Prepare;
    frm_bylsyz.QRL_ym.Caption := '��' +
      IntToStr(frm_bylsyz.rep_dryphz.Printer.PageCount) + 'ҳ';
    frm_bylsyz.rep_dryphz.PrinterSettings.PrinterIndex :=
      printer.Printers.IndexOf('zxdprint');

    frm_bylsyz.rep_dryphz.Preview;
  finally
    frm_bylsyz.Free;
  end;
end;

procedure Tfrm_yzzxxse.cxButton4Click(Sender: TObject);
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
      if qry_fymx.FieldByName('yjqrbz').AsString = '��' then
        //ҽ��ȷ�ϱ�־,��:δȷ�Ϸ��ÿ������´�ӡ
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
        Application.MessageBox('��ʾ:����Ŀҽ�������Ѿ�ȷ��,�����ٴ�ӡ!',
          '��ʾ', MB_ICONINFORMATION);
    end;

    qry_fymx.Next;
  end;
end;

procedure Tfrm_yzzxxse.cxButton5Click(Sender: TObject);
begin
  try
    application.createform(tfrm_zyplcffy, frm_zyplcffy);
    frm_zyplcffy.showmodal;
  finally
    frm_zyplcffy.free;
  end;
end;

procedure Tfrm_yzzxxse.cxButton6Click(Sender: TObject);
begin
  close;
end;

procedure Tfrm_yzzxxse.cxButton7Click(Sender: TObject);
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

procedure Tfrm_yzzxxse.cxButton8Click(Sender: TObject);
begin
  sp_dryz.DisableControls;
  sp_dryz.First;
  while not sp_dryz.Eof do
  begin
    if (sp_dryz.FieldByName('yytj').asstring) = '����' then
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

procedure Tfrm_yzzxxse.cxButton9Click(Sender: TObject);
begin
  sp_dryz.DisableControls;
  sp_dryz.First;
  while not sp_dryz.Eof do
  begin
    if ((Trim(sp_dryz.FieldByName('syczxsj').asstring) = '') and
      (Trim(sp_dryz.FieldByName('sftz').asstring) <> '��ȡ��') and
      (Trim(sp_dryz.FieldByName('sftz').asstring) <> 'δ��'))
      or ((Trim(sp_dryz.FieldByName('tzrq').asstring) <> '') and
      (Trim(sp_dryz.FieldByName('tzzxsj').asstring) = '')
      and (Trim(sp_dryz.FieldByName('yzsx').asstring) = '����')) then
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

procedure Tfrm_yzzxxse.cxGrid1DBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if strtofloat(AViewInfo.RecordViewInfo.GridRecord.Values[4]) < 0 then
    ACanvas.Brush.Color := $00808040;

end;

procedure Tfrm_yzzxxse.cxGridDBTableView2CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if strtoint(AViewInfo.RecordViewInfo.GridRecord.Values[15]) > 0 then
    ACanvas.Brush.Color := $00808040;
end;

procedure Tfrm_yzzxxse.DBGridEh1CellClick(Column: TColumnEh);
begin
  if sp_brxx.RecordCount > 0 then
  begin
    cx_zyh := sp_brxx.FieldByName('zyh').AsString;
    RefYzxx;
  end;

end;

procedure Tfrm_yzzxxse.DBGridEh1DrawColumnCell(Sender: TObject; const Rect:
  TRect;
  DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
begin
  if (Trim(sp_brxx.FieldByName('xkyz').asstring) = '��ҽ��') then
    DBGridEh1.Canvas.Font.Color := clred;
  (Sender as TDbGridEh).DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure Tfrm_yzzxxse.DBGridEh2ColWidthsChanged(Sender: TObject);
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

procedure Tfrm_yzzxxse.DBGridEh4CellClick(Column: TColumnEh);
var
  sbookmark: Tbookmark;
  syfz: string;
  jyfz: string;
  checked: boolean;
begin
  if DBGridEh4.SelectedIndex = 0 then
  begin
    if Trim(sp_dryz.FieldByName('sftz').AsString) = '��ȡ��' then
    begin
      ShowMessage('����ʱҽ����ȡ��������ѡ��ִ�У�');
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
    //     and   (Trim( sp_dryz.FieldByName( 'yzsx' ).AsString ) = '����')
    //     and   DM_data.qry_pub.FieldByName('ysbz').AsBoolean<>true
    //     then
    //  begin
    //    ShowMessage( '��ҽ��ԭִ���˲����㣬����Ȩ�޸�ִ�У�' );
    //    Exit;
    //  end;
    //
    //  if (Trim( sp_dryz.FieldByName( 'syczxrmc' ).AsString ) <> '')
    //     and  (pos(pub_czyxm,Trim( sp_dryz.FieldByName( 'syczxrmc' ).AsString ))<1)
    //     and   (Trim( sp_dryz.FieldByName( 'yzsx' ).AsString ) = '��ʱ')
    //     then
    //  begin
    //    ShowMessage( '��ҽ��ԭִ���˲����㣬����Ȩ�޸�ִ�У�' );
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

procedure Tfrm_yzzxxse.DBGridEh4ColWidthsChanged(Sender: TObject);
begin
  if sp_dryz.Active then
    createrect(myrect_cx, sp_dryz, dbgrideh4, 12, 13, 15);

end;

procedure Tfrm_yzzxxse.DBGridEh4DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
var
  i: integer;
  myrect1: Trect;
begin

  if trim(sp_dryz.fieldbyname('yzsx').asstring) = '��ʱ' then
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
    if trim(sP_dryz.FieldByName('lb').AsString) <> '��ҩ' then
      DBGridEh4.canvas.Rectangle(myrect_cx[i].left, myrect_cx[i].top,
        myrect_cx[i].right, myrect_cx[i].bottom);
    DBGridEh4.Canvas.pen.color := clred;
    if trim(sP_dryz.FieldByName('lb').AsString) <> '��ҩ' then
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
    if trim(sP_dryz.FieldByName('lb').AsString) <> '��ҩ' then
      DBGridEh4.Canvas.TextOut(myrect_cx[i].left + 20,
        myrect_cx[i].top + round(myrect_cx[i].height * ((myrect_cx[i].sl - 0.5)
        / 2)), myrect_cx[i].tj + #13 + myrect_cx[i].yf);
  end;
  //  if FormatDateTime( 'yyyyMMdd', sp_dryz.FieldByName( 'zhzxsj' ).AsDateTime ) = FormatDateTime( 'yyyyMMdd', Now ) then
  //    DBGridEh4.canvas.brush.color := $00E2BC6D;

  if trim(sp_dryz.FieldByName('syczxsj').asstring) <> '' then
    DBGridEh4.canvas.brush.color := $00E2BC9D;
  if (Trim(sp_dryz.FieldByName('sftz').asstring) = '��ֹͣ') and
    (sp_dryz.FieldByName('tzzxsj').AsDateTime >=
    sp_dryz.FieldByName('tzrq').AsDateTime) and
    (trim(sp_dryz.FieldByName('yzsx').asstring) <> '��ʱ') then
    DBGridEh4.Canvas.Font.Color := clred;
  if ((Pos('Ƥ��', trim(sp_dryz.FieldByName('xmmc').AsString)) > 0) or
    (Pos('����', trim(sp_dryz.FieldByName('xmmc').AsString)) > 0) or
    (Pos('PPD', trim(sp_dryz.FieldByName('xmmc').AsString)) > 0))
    and ((Pos('+', trim(sp_dryz.FieldByName('xmmc').AsString)) > 0) or
    (Pos('��', trim(sp_dryz.FieldByName('xmmc').AsString)) > 0)) then
  begin
    DBGridEh4.Canvas.Brush.Color := clRed;
    DBGridEh4.Canvas.Font.Color := clBlack;
  end;

  if (Pos('����ҽ��', trim(sp_dryz.FieldByName('xmmc').AsString)) > 0) or
    (Pos('����ҽ��', trim(sp_dryz.FieldByName('xmmc').AsString)) > 0) or
    (Pos('ת��ҽ��', trim(sp_dryz.FieldByName('xmmc').AsString)) > 0) then
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

procedure Tfrm_yzzxxse.dt_zxsjChange(Sender: TObject);
var
  zyh_dq: string;
begin
  if chag = true then
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
end;

procedure Tfrm_yzzxxse.getmouse(var msg: TWMMouseWheel);
begin
  ScrollBox1.SetFocus;
end;

procedure Tfrm_yzzxxse.N10Click(Sender: TObject);
var
  _SQl1, _Sql2, kdys: string;
  yzid: Integer;
begin
  if pub_yydm = '0234' then
  begin
    DM_data.qry_pub.close;
    DM_data.qry_pub.sql.text := ' exec zcyzw  ' + #39 + pub_czydm + #39;
    try
      dm_data.qry_pub.open;
    except
    end;
    if DM_data.qry_pub.FieldByName('mc').AsString <> '��ʿ��' then
    begin
      ShowMessage('��ʿ�����ܱ�Ǿ���ҽ����');
      exit;
    end;
  end;
  if (Trim(sp_dryz.FieldByName('sftz').AsString) = '��ȡ��') or
    (Trim(sp_dryz.FieldByName('sftz').AsString) = 'δ��') or
    (Trim(sp_dryz.FieldByName('sftz').AsString) = '�ܲ�') or
    (Trim(sp_dryz.FieldByName('sftz').AsString) = '����') then
  begin
    ShowMessage('��ȡ��ҽ������δ��ҽ��,�ܲ����ҽ�������ٱ�ʶΪ���ã�');
    Abort;
  end;
  if sp_dryz.FieldByName('yzsx').asstring = '��ʱ' then
  begin
    if application.MessageBox(pchar('�Ƿ񽫸���ҽ����ǳɾ���?' + #13 + ''),
      '��ʾ��Ϣ', mb_iconwarning + MB_YESNO + mb_defbutton1) = IDYES then
    begin
      if Trim(sp_dryz.FieldByName('fzph').AsString) <> '' then
      begin
        _SQl1 := 'update zybl_zyyz set shry=''����'',tzbz=1,tzry=' + '''' +
          pub_czydm + '''' + ',tzrq=' + '''' +
          FormatDateTime('yyyy-MM-dd hh:mm:ss', Frm_func.curr_date) + '''' +
          ' where fzph=' + '''' + trim(sp_dryz.FieldByName('fzph').asstring) +
          '''';
        _Sql2 := 'delete from  zybl_zyyz_yzzxqd_mx  where yzid in (select id from zybl_zyyz where fzph='
          + '''' + trim(sp_dryz.FieldByName('fzph').asstring) + ''')';
      end
      else
      begin
        _SQl1 := 'update zybl_zyyz set shry=''����'',tzbz=1,tzry=' + '''' +
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
        dm_data.qry_pub.open;
      except
      end;
      if (DM_data.qry_pub.FieldByName('qyzdjf').AsBoolean = true) and
        (DM_data.qry_pub.FieldByName('yztjjf').AsBoolean = true) then
      begin
        DM_data.qry_pub.close;
        DM_data.qry_pub.SQL.Text := 'select * from zybl_zyyz where id=' +
          sp_dryz.FieldByName('yzid').asstring;
        try
          dm_data.qry_pub.open;
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

procedure Tfrm_yzzxxse.N11Click(Sender: TObject);
// var  sql:string;
begin
  if (sp_dryz.fieldbyname('tzzxsj').AsString <> '') or
    (sp_dryz.fieldbyname('syczxsj').AsString <> '') then

  begin
    ShowMessage('ҽ���Ѿ�ִ�л���ֹͣ������ȡ�����䷽ʽ��');
    exit;
  end;
  //���䷽ʽȡ�� ��status����Ϊ  1
  try
    DM_data.qry_pub.close;
    { DM_data.qry_pub.SQL.Text :='update Yszx_brys with(rowlock) set yzbh=replace(yzbh,'+#39+','+sp_dryz.FieldByName('xh').AsString+','+#39+','''') where zyh=''' + zyh +
       ''' and charindex('',''+''' + sp_dryz.FieldByName('xh').AsString + '''' +
       '+'','',yzbh)>0';    }
     // DM_data.qry_pub.SQL.Text :='update Yszx_brys with(rowlock) set yzbh=replace(yzbh,'+#39+','+sp_dryz.FieldByName('xh').AsString+','+#39+','''') where zyh=''' + zyh +
    //   ''' and charindex('',''+''' + sp_dryz.FieldByName('xh').AsString + '''' +
    //   '+'','',yzbh)>0';
    DM_data.qry_pub.SQL.Text :=
      ' update  Yszx_brys with(rowlock) set YSFSQXZT=''1'' where zyh=''' + zyh +
      ''' and charindex('',''+''' + sp_dryz.FieldByName('xh').AsString + '''' +
      '+'','',yzbh)>0';

    //  and charindex(','+''''+sp_dryz.FieldByName('xh').AsString+''''+',',yzbh)>0 ';

   // showmessage(DM_data.qry_pub.SQL.Text);
    DM_data.qry_pub.ExecSQL;
    Application.MessageBox('ȡ������ɹ���', '��ʾ��', MB_OK +
      MB_ICONINFORMATION);
  except
    Application.MessageBox('ȡ������ʧ�ܣ�', '����', MB_OK + MB_ICONSTOP);
  end;
end;

procedure Tfrm_yzzxxse.N12Click(Sender: TObject);
begin
  try
    DM_data.qry_pub.close;
    DM_data.qry_pub.SQL.Text := 'select * from  Yszx_brys   where zyh=''' + zyh
      +
      ''' and charindex('',''+''' + sp_dryz.FieldByName('xh').AsString + '''' +
      '+'','',yzbh)>0';
    try
      dm_data.qry_pub.open;
    except
    end;
    if DM_data.qry_pub.IsEmpty then
    begin
      Application.MessageBox('����Ŀû��ѡ�����䣡', '����', MB_OK +
        MB_ICONSTOP);
    end
    else
    begin
      Application.MessageBox(pchar('�ü����Ŀ�����䷽ʽ��' +
        DM_data.qry_pub.FieldByName('ysfs').asstring), '��ʾ��', MB_OK +
        MB_ICONINFORMATION);
    end;
  except
  end;
end;

procedure Tfrm_yzzxxse.N17Click(Sender: TObject);
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

procedure Tfrm_yzzxxse.N1Click(Sender: TObject);
begin
  if (pos('Ƥ��', sp_dryz.FieldByName('xmmc').AsString) < 1) and
    (pos('����', sp_dryz.FieldByName('xmmc').AsString) < 1) and
    (pos('ָ��Ѫ��', sp_dryz.FieldByName('xmmc').AsString) < 1) and
    (pos('����Ѫ��', sp_dryz.FieldByName('xmmc').AsString) < 1) and
    (pos('Ѫ�����Ͷȼ��', sp_dryz.FieldByName('xmmc').AsString) < 1) and
    (pos('�ⶨѪ��', sp_dryz.FieldByName('xmmc').AsString) < 1) and
    (pos('��Ƥ������', sp_dryz.FieldByName('xmmc').AsString) < 1) and
    (pos('��ϸ����Һ', sp_dryz.FieldByName('xmmc').AsString) < 1) and
    (pos('ȫѪ', sp_dryz.FieldByName('xmmc').AsString) < 1) and
    (pos('Ѫ��', sp_dryz.FieldByName('xmmc').AsString) < 1) and
    (pos('PPD', sp_dryz.FieldByName('xmmc').AsString) < 1) then
  begin
    ShowMessage('��ҽ�����ǿ��޸���Ŀ�������޸Ľ����');
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

procedure Tfrm_yzzxxse.N2Click(Sender: TObject);
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
      dm_data.qry_pub.open;
    except
    end;
    if DM_data.qry_pub.FieldByName('mc').AsString <> '��ʿ��' then
    begin
      ShowMessage('��ʿ������ȡ��ҽ����');
      exit;
    end;
  end;
  fqyzxse := True;

  if (Trim(sp_dryz.FieldByName('sftz').AsString) = '��ȡ��') or
    (Trim(sp_dryz.FieldByName('sftz').AsString) = 'δ��') then
  begin
    ShowMessage('��ȡ��ҽ������δ��ҽ��������ȡ����');
    Abort;
  end;
  if (sp_dryz.FieldByName('yzsx').AsString = '��ʱ') then
  begin
    application.createform(Tfrm_qxyzsj, frm_qxyzsj);
    try
      frm_qxyzsj.yzzxsj.Date := sp_dryz.FieldByName('kdrq').AsDateTime;
      frm_qxyzsj.showmodal;
    finally
      sj := formatdatetime('yyyy-mm-dd hh:mm:ss', qxyzsj);
      frm_yzsj.free;
    end;

    if fqyzxse = false then
    begin

      if Trim(sp_dryz.FieldByName('fzph').asstring) <> '' then
      begin
        _sql := 'update zybl_zyyz set tzbz=1,tzrq=' + '''' + sj + '''' + ',tzry='
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
        ShowMessage('ȡ����ʱҽ���ɹ���');
        DM_data.qry_pub.close;
        DM_data.qry_pub.SQL.text := 'select * from sys_xt_kg ';
        try
          dm_data.qry_pub.open;
        except
        end;
        if (DM_data.qry_pub.FieldByName('qyzdjf').AsBoolean = true) and
          (DM_data.qry_pub.FieldByName('yztjjf').AsBoolean = true) then
        begin
          DM_data.qry_pub.close;
          DM_data.qry_pub.SQL.Text := 'select * from zybl_zyyz where id=' +
            sp_dryz.FieldByName('yzid').asstring;
          try
            dm_data.qry_pub.open;
          except
          end;
          yzid := sp_dryz.FieldByName('yzid').AsInteger;
          kdys := DM_data.qry_pub.FieldByName('kdys').asstring;
          yzqxtf(yzid, kdys);
        end;
        RefYzxx;
      except
        ShowMessage('ȡ����ʱҽ��ʧ�ܣ�');
      end;
    end;

  end
  else
  begin
    ShowMessage('��û��Ȩ��ȡ��ҽ�����߸�ҽ��������ʱҽ��������ȡ����');
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

procedure Tfrm_yzzxxse.N3Click(Sender: TObject);
var
  _SQl1, _Sql2, kdys: string;
  yzid: Integer;
begin
  if pub_yydm = '0234' then
  begin
    DM_data.qry_pub.close;
    DM_data.qry_pub.sql.text := ' exec zcyzw  ' + #39 + pub_czydm + #39;
    try
      dm_data.qry_pub.open;
    except
    end;
    if DM_data.qry_pub.FieldByName('mc').AsString <> '��ʿ��' then
    begin
      ShowMessage('��ʿ�����ܱ��δ��ҽ����');
      exit;
    end;
  end;
  if (Trim(sp_dryz.FieldByName('sftz').AsString) = '��ȡ��') or
    (Trim(sp_dryz.FieldByName('sftz').AsString) = 'δ��') then
  begin
    ShowMessage('��ȡ��ҽ������δ��ҽ�������ٱ�ʶΪδ�ã�');
    Abort;
  end;
  if sp_dryz.FieldByName('yzsx').asstring = '��ʱ' then
  begin
    if application.MessageBox(pchar('�Ƿ񽫸���ҽ����ǳ�δ��?' + #13 + ''),
      '��ʾ��Ϣ', mb_iconwarning + MB_YESNO + mb_defbutton1) = IDYES then
    begin
      if Trim(sp_dryz.FieldByName('fzph').AsString) <> '' then
      begin
        _SQl1 := 'update zybl_zyyz set shry=''δ��'',tzbz=1,tzry=' + '''' +
          pub_czydm + '''' + ',tzrq=' + '''' +
          FormatDateTime('yyyy-MM-dd hh:mm:ss', Frm_func.curr_date) + '''' +
          ' where fzph=' + '''' + trim(sp_dryz.FieldByName('fzph').asstring) +
          '''';
        _Sql2 := 'delete from  zybl_zyyz_yzzxqd_mx  where yzid in (select id from zybl_zyyz where fzph='
          + '''' + trim(sp_dryz.FieldByName('fzph').asstring) + ''')';
      end
      else
      begin
        _SQl1 := 'update zybl_zyyz set shry=''δ��'',tzbz=1,tzry=' + '''' +
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
        dm_data.qry_pub.open;
      except
      end;
      if (DM_data.qry_pub.FieldByName('qyzdjf').AsBoolean = true) and
        (DM_data.qry_pub.FieldByName('yztjjf').AsBoolean = true) then
      begin
        DM_data.qry_pub.close;
        DM_data.qry_pub.SQL.Text := 'select * from zybl_zyyz where id=' +
          sp_dryz.FieldByName('yzid').asstring;
        try
          dm_data.qry_pub.open;
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

procedure Tfrm_yzzxxse.N4Click(Sender: TObject);
var
  syfz, yzid: string;
  i:Integer;
begin
//û�ж�ѡ�������
  if dbgrideh4.SelectedRows.Count<=0 then
  begin
    syfz := sp_dryz.FieldByName('fzph').AsString;
    yzid := sp_dryz.FieldByName('yzid').AsString;
    if Application.MessageBox('�Ƿ�ȷ��Ҫ�Ը�ҽ������˫ǩ����', 'ѯ��', MB_YESNO +
      MB_ICONQUESTION + MB_DEFBUTTON1) = IDNO then
    begin
      Exit;
    end;
    if syfz <> '' then
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
      /////////////////��ѡ�����
  //  syfz := sp_dryz.FieldByName('fzph').AsString;        //��������
  //  yzid := sp_dryz.FieldByName('yzid').AsString;        //ҽ����
    if Application.MessageBox('�Ƿ�ȷ��Ҫ�Ը�ҽ������˫ǩ����', 'ѯ��', MB_YESNO +
      MB_ICONQUESTION + MB_DEFBUTTON1) = IDNO then
    begin
      Exit;
    end;
    sp_dryz.DisableControls;
    for i:= 0 to dbgrideh4.SelectedRows.Count - 1 do
    begin
      DBGrideh4.DataSource.DataSet.GotoBookmark(pointer(DBGrideh4.SelectedRows.Items[i])); //����ѡ�������ݼ�
      syfz := sp_dryz.FieldByName('fzph').AsString;        //��������
      yzid := sp_dryz.FieldByName('yzid').AsString;        //ҽ����
      DBGridEh4.SelectedIndex :=2;  //Ĭ��ѡ��2
      if syfz <> '' then                      //�������Ų�Ϊ��
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
  ShowMessage('˫ǩ����ɣ�');
end;

procedure Tfrm_yzzxxse.N5Click(Sender: TObject);
var
  krszks: string;
begin
  DM_data.qry_pub.Close;
  DM_data.qry_pub.sql.text := 'select * from zysf_zydj where zyh=' + '''' +
    sp_brxx.FieldByName('zyh').asstring + '''';
  try
    dm_data.qry_pub.open;
  except
  end;
  krszks := DM_data.qry_pub.FieldByName('ksdm').AsString;

  if
    application.MessageBox('���ز������ڿ���֮��ѡ��ҽ�����ڵ�ǰ�����޷�����ִ�У��Ƿ���Ҫ����?', '��ʾ��Ϣ', mb_iconquestion + mb_okcancel + mb_defbutton1) = idcancel then
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

procedure Tfrm_yzzxxse.N6Click(Sender: TObject);
begin
  try
    DM_data.qry_pub.close;
    DM_data.qry_pub.SQL.text :=
      'update zybl_zyyz with(rowlock) set xyzbz=1 where id=' +
      sp_dryz.FieldByName('yzid').AsString;
    DM_data.qry_pub.ExecSQL;
    ShowMessage('��ʶ��ɣ�');
  except
    ShowMessage('��ʶʧ�ܣ������ԣ�');
  end;

end;

procedure Tfrm_yzzxxse.N8Click(Sender: TObject);
begin
  if (sp_dryz.fieldbyname('tzzxsj').AsString <> '') or
    (sp_dryz.fieldbyname('syczxsj').AsString <> '') then

  begin
    ShowMessage('ҽ���Ѿ�ִ�л���ֹͣ�������޸����䷽ʽ��');
    exit;
  end;

  try
    Application.CreateForm(Tfrm_ysfs, frm_ysfs);
    frm_ysfs.showmodal;
    if frm_ysfs.ModalResult <> mrOk then
      Exit; // �����ok�رմ�����ֱ���˳�������ʾ�κ���Ϣ
    DM_data.qry_pub.close;
    DM_data.qry_pub.SQL.Text := 'select * from Yszx_brys where zyh=''' + zyh +
      ''' and charindex('',''+''' + sp_dryz.FieldByName('xh').AsString + '''' +
      '+'','',yzbh)>0';
    try
      dm_data.qry_pub.open;
    except
    end;
    if DM_data.qry_pub.RecordCount <> 1 then
    begin
      Application.MessageBox('û���ҵ���Ӧ������֪ͨ��¼��', '����', MB_OK +
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

procedure Tfrm_yzzxxse.N9Click(Sender: TObject);
var
  _SQl1, _Sql2, kdys: string;
  yzid: Integer;
begin
  if pub_yydm = '0234' then
  begin
    DM_data.qry_pub.close;
    DM_data.qry_pub.sql.text := ' exec zcyzw  ' + #39 + pub_czydm + #39;
    try
      dm_data.qry_pub.open;
    except
    end;
    if DM_data.qry_pub.FieldByName('mc').AsString <> '��ʿ��' then
    begin
      ShowMessage('��ʿ�����ܱ�Ǿܲ�ҽ����');
      exit;
    end;
  end;
  if (Trim(sp_dryz.FieldByName('sftz').AsString) = '��ȡ��') or
    (Trim(sp_dryz.FieldByName('sftz').AsString) = 'δ��') or
    (Trim(sp_dryz.FieldByName('sftz').AsString) = '�ܲ�') or
    (Trim(sp_dryz.FieldByName('sftz').AsString) = '����') then
  begin
    ShowMessage('��ȡ��ҽ������δ��ҽ��,�ܲ����ҽ�������ٱ�ʶΪ�ܲ飡');
    Abort;
  end;
  if sp_dryz.FieldByName('yzsx').asstring = '��ʱ' then
  begin
    if application.MessageBox(pchar('�Ƿ񽫸���ҽ����ǳɾܲ�?' + #13 + ''),
      '��ʾ��Ϣ', mb_iconwarning + MB_YESNO + mb_defbutton1) = IDYES then
    begin
      if Trim(sp_dryz.FieldByName('fzph').AsString) <> '' then
      begin
        _SQl1 := 'update zybl_zyyz set shry=''�ܲ�'',tzbz=1,tzry=' + '''' +
          pub_czydm + '''' + ',tzrq=' + '''' +
          FormatDateTime('yyyy-MM-dd hh:mm:ss', Frm_func.curr_date) + '''' +
          ' where fzph=' + '''' + trim(sp_dryz.FieldByName('fzph').asstring) +
          '''';
        _Sql2 := 'delete from  zybl_zyyz_yzzxqd_mx  where yzid in (select id from zybl_zyyz where fzph='
          + '''' + trim(sp_dryz.FieldByName('fzph').asstring) + ''')';
      end
      else
      begin
        _SQl1 := 'update zybl_zyyz set shry=''�ܲ�'',tzbz=1,tzry=' + '''' +
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
        dm_data.qry_pub.open;
      except
      end;
      if (DM_data.qry_pub.FieldByName('qyzdjf').AsBoolean = true) and
        (DM_data.qry_pub.FieldByName('yztjjf').AsBoolean = true) then
      begin
        DM_data.qry_pub.close;
        DM_data.qry_pub.SQL.Text := 'select * from zybl_zyyz where id=' +
          sp_dryz.FieldByName('yzid').asstring;
        try
          dm_data.qry_pub.open;
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

//-----calmhawk--2011-05-24----�����ҵ��÷���

procedure pro_yzzx_sss();
begin
  try
    application.createform(Tfrm_yzzxxse, frm_yzzxxse);
    sssyzzxbz := '1';
    frm_yzzxxse.showmodal;
  finally
    frm_yzzxxse.free;
  end;
end;
//-----calmhawk--2011-05-24----����

procedure Tfrm_yzzxxse.OnMouseWheel_yzzx(var Msg: TMsg; var Handled: Boolean);
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

procedure Tfrm_yzzxxse.yzqxtf(var id: integer; var kdys: string);
var
  sftf: string;
begin
  sftf := '1';
  DM_data.qry_pub.close;
  DM_data.qry_pub.SQL.Text :=
    'select * from zybl_zyyz a,zybl_zyyz_zxjl b where a.ph=b.ph and a.id=' +
    inttostr(id);
  try
    dm_data.qry_pub.open;
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
      dm_data.qry_pub.open;
    except
    end;
    qry_cx.Close;
    qry_cx.SQL.text := 'select * from zybl_bsflb where lbmc=' + '''' +
      DM_data.qry_pub.FieldByName('lb').AsString + '''';
    qry_cx.Open;
    if DM_data.qry_pub.FieldByName('lb').AsString = 'ҩƷ' then
    begin
      ShowMessage('ȡ��ҩƷҽ����֪ͨ��ʿ��ҩƷ��' +
        DM_data.qry_pub.FieldByName('xmmc').asstring + ' ' +
        DM_data.qry_pub.FieldByName('sl').asstring + ' ' +
        DM_data.qry_pub.FieldByName('dw').asstring);
    end
    else if (qry_cx.IsEmpty) and
      (DM_data.qry_pub.FieldByName('lb').AsString <> '����') then
    begin
      if DM_data.qry_pub.FieldByName('lb').AsString = '����' then
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
        ShowMessage('��ҽ�����óɹ���');
      end;
    end;
  end;

end;

procedure Tfrm_yzzxxse.ChangePrinter;
begin
  //�ж��Ƿ�ʹ�ô�ӡ������ʽ��ȡ�ô�ӡ�����
  try
    v_PrinterIndex_old := Printer.PrinterIndex;
    v_PrinterIndex_new := func_GetPrinterIndex(3, v_IsPrinterJoin);
    //    if v_IsPrinterJoin then
    //      Proc_ChangePrinter( v_PrinterIndex_new, True );
  except
  end;

end;

procedure Tfrm_yzzxxse.RevertPrinter;
begin
  //��ԭԭ��Ĭ�ϴ�ӡ��
  try
    if v_IsPrinterJoin then
      Proc_ChangePrinter(v_PrinterIndex_old, True);
  except
  end;
end;

end.

