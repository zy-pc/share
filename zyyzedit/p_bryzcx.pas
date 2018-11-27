
unit p_bryzcx;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Buttons, DBCtrls, Mask, ExtCtrls,  Menus, GridsEh,
  QRCtrls, QuickRpt, grimgctrl, ADODB, DB, DBGridEh, cxPC, cxControls;
type Tmyrect=record
         ph:string;
         top,left,right,bottom,sl,height:integer;
         yf,tj:string;
         gtop,gleft,gright,gbottom:integer;
         end;
type TTmyrect=array [0..100] of Tmyrect;
type
  Tfrm_bryzcx = class(TForm)
    ds_ypyf: TDataSource;
    qry_ypyf: TADOQuery;
    ds_gytj: TDataSource;
    qry_gytj: TADOQuery;
    qry_yz: TADOQuery;
    ds_yz: TDataSource;
    ds_cx_yp_yz: TDataSource;
    qry_yldw: TADOQuery;
    ds_yldw: TDataSource;
    qry_mb: TADOQuery;
    qry_ks: TADOQuery;
    ds_ks: TDataSource;
    sp_cx_yzxm: TADOStoredProc;
    ds_cx_yzxm: TDataSource;
    sp_jbxx: TADOStoredProc;
    ds_jbxx: TDataSource;
    qry_pub: TADOQuery;
    ds_brxx: TDataSource;
    sp_dryz: TADOStoredProc;
    ds_dryz: TDataSource;
    qry_yfdm: TADOQuery;
    qry_yzlist: TADOQuery;
    qry_ypyz: TADOQuery;
    Panel12: TPanel;
    qry_ys: TADOQuery;
    ds_ys: TDataSource;
    ZZ: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    Panel10: TPanel;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    sp_cx_yp_yz: TADOStoredProc;
    qry_ztyz: TADOQuery;
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
    DBEdit20: TDBEdit;
    e_tmh: TEdit;
    Label1: TLabel;
    e_yzys: TEdit;
    qry_yzsx: TADOQuery;
    ds_yzsx: TDataSource;
    qry_yzid: TAutoIncField;
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
    qry_yztzbz: TBooleanField;
    qry_yzzfbz: TBooleanField;
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
    Label2: TLabel;
    Label3: TLabel;
    qru_yzxg: TADOQuery;
    sp_yzup_list: TADOStoredProc;
    aptzyz: TMenuItem;
    cxTabSheet2: TcxTabSheet;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel2: TPanel;
    Label5: TLabel;
    edt_tmh: TEdit;
    sp_zxjl_ls: TADOStoredProc;
    ds_zxjl_ls: TDataSource;
    ds_zxjl_cq: TDataSource;
    sp_zxjl_cq: TADOStoredProc;
    QuickRep2: TQuickRep;
    QRBand1: TQRBand;
    QRLabel15: TQRLabel;
    QRSysData2: TQRSysData;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRL_ys_ls: TQRLabel;
    QRBand2: TQRBand;
    QRShape4: TQRShape;
    QRL_yymc_ls: TQRLabel;
    QRL_brxm_ls: TQRLabel;
    QRL_tmh_ls: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel27: TQRLabel;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRShape22: TQRShape;
    QRShape23: TQRShape;
    QRShape24: TQRShape;
    QRShape25: TQRShape;
    QRL_bch_ls: TQRLabel;
    DBGridEh2: TDBGridEh;
    qry_dj: TADOQuery;
    ds_dj: TDataSource;
    QRL_dysj_ls: TQRLabel;
    sp_cx_yzyljssl: TADOStoredProc;
    qry_yzmbmx: TADOQuery;
    sp_cx_tzyz_xx: TADOStoredProc;
    PopupMenu2: TPopupMenu;
    N3: TMenuItem;
    qry_yzfzph: TStringField;
    N4: TMenuItem;
    BBtn_print_cq: TBitBtn;
    BBtn_print_ls: TBitBtn;
    sp_zxjl_cq_dy: TADOStoredProc;
    ScrollBox1: TScrollBox;
    DBGridEh4: TDBGridEh;
    QRSubDetail2: TQRSubDetail;
    ksrq_ls: TQRLabel;
    kdys_ls: TQRLabel;
    zxryxm_ls: TQRLabel;
    zxsj_ls: TQRLabel;
    xmmc_ls: TQRLabel;
    ypyf_ls: TQRLabel;
    sp_zxjl_ls_dy: TADOStoredProc;
    xb_ls: TQRLabel;
    nl_ls: TQRLabel;
    zd_ls: TQRLabel;
    QuickRep1: TQuickRep;
    PageFooterBand1: TQRBand;
    QRLabel13: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel12: TQRLabel;
    QRLabel14: TQRLabel;
    QRL_ys_cq: TQRLabel;
    QRL_dysj_cq: TQRLabel;
    PageHeaderBand1: TQRBand;
    QRShape1: TQRShape;
    QRL_yymc_cq: TQRLabel;
    QRL_brxm_cq: TQRLabel;
    QRL_tmh_cq: TQRLabel;
    sj1: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    sj3: TQRLabel;
    QRShape2: TQRShape;
    QRLabel8: TQRLabel;
    QRShape3: TQRShape;
    QRShape5: TQRShape;
    QRShape8: TQRShape;
    QRLabel9: TQRLabel;
    QRShape9: TQRShape;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRL_bch_cq: TQRLabel;
    QRShape6: TQRShape;
    sj2: TQRLabel;
    QRShape7: TQRShape;
    sj4: TQRLabel;
    xb_cq: TQRLabel;
    nl_cq: TQRLabel;
    zd_cq: TQRLabel;
    QRSubDetail1: TQRSubDetail;
    ksrq: TQRLabel;
    zxhsmc: TQRLabel;
    xmmc: TQRLabel;
    tzrq: TQRLabel;
    tzysmc: TQRLabel;
    zhhsmc: TQRLabel;
    ypyf: TQRLabel;
    zxzxsj: TQRLabel;
    zhzxsj: TQRLabel;
    kdysmc: TQRLabel;
    QRgrImage1: TQRImage;
    QRImage1: TQRImage;
    ScrollBox2: TScrollBox;
    DBGridEh1: TDBGridEh;
    ScrollBox3: TScrollBox;
    DBGridEh3: TDBGridEh;
    qry_yzbz: TStringField;
    qry_yzjyyb: TStringField;
    sp_get_maxxh: TADOStoredProc;
    sp_set_xh: TADOStoredProc;
    qry_yzxh: TIntegerField;
    bt_lsyz: TBitBtn;
    bt_exit: TBitBtn;
    qry_yzjyflbh: TStringField;
    sp_yzsj: TADOStoredProc;
    sp_tzyz: TADOStoredProc;
    Panel4: TPanel;
    RichEdit1: TRichEdit;
    ADODataSet1: TADODataSet;
    RichEdit2: TRichEdit;
    procedure bt_lsyzClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure grid_yzExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bt_exitClick(Sender: TObject);
    procedure refresh_yz; //刷新医嘱记录
    procedure ypinyz;
    procedure delete_yz(key: word);
    procedure xzsm(Sender: TDbmemo);
    procedure e_tmhExit(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure e_tmhKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure qry_yzAfterScroll(DataSet: TDataSet);
    procedure qry_yzAfterInsert(DataSet: TDataSet);
    procedure qry_yzBeforeInsert(DataSet: TDataSet);
    procedure db_brxxKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure aptzyzClick(Sender: TObject);
    procedure cxTabSheet1Show(Sender: TObject);
    procedure cxTabSheet2Show(Sender: TObject);
    procedure BBtn_print_cqClick(Sender: TObject);
    procedure BBtn_print_lsClick(Sender: TObject);
    procedure edt_tmhKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGridEh2DblClick(Sender: TObject);
    procedure DBGridEh2Exit(Sender: TObject);
    procedure DBGridEh2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure DBGridEh3DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure qry_ysAfterScroll(DataSet: TDataSet);
    procedure grid_yzlrDblClick(Sender: TObject);
    procedure newyzfzbh;
    procedure DBGridEh4DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure QRSubDetail1NeedData(Sender: TObject; var MoreData: Boolean);
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRSubDetail1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure DBGridEh4ColWidthsChanged(Sender: TObject);
    procedure sp_dryzAfterOpen(DataSet: TDataSet);
    procedure QRSubDetail2NeedData(Sender: TObject; var MoreData: Boolean);
    procedure QRSubDetail2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRep2BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure DBGridEh1ColWidthsChanged(Sender: TObject);
    procedure sp_zxjl_cqAfterOpen(DataSet: TDataSet);
    procedure sp_zxjl_lsAfterOpen(DataSet: TDataSet);
    procedure DBGridEh3ColWidthsChanged(Sender: TObject);
    procedure TabSheet1Show(Sender: TObject);
    procedure TabSheet2Show(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure BitBtn_upClick(Sender: TObject);
    procedure BitBtn_downClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);

  private
    procedure yzinypfymx(zyh, ypid, xmid, clid, ph: string);
    procedure zyzadd;
    procedure yzNew(fs: integer);
    procedure yzXmsr(fs: integer);
    procedure yzsxsr(fs: integer);
    procedure yzlbsr(fs: integer);
    procedure yytjjs(fs: integer);
    procedure czkscl(fs: integer);
    procedure tjyz;
    procedure yldwjc(fs: integer);
    procedure ypjs;
    procedure qtjs;
    procedure zdkz;
    procedure tjyzfcqyz;
    procedure fcqyzlb;
    procedure sljc(fs: integer);
    procedure yz_cx_cqph(yzsx: string);
    procedure Proc_Seek_dj(const v_tmh: string);
    procedure Proc_Seek_yzzxjl(const v_tmh, v_zyh, v_brxm: string);
    function yz_cx_yfjsypsl: real;
        { Private declarations }
  public
    tmh, zyh, brxm, lszyh: string; //住院号
    ls_dm, ls_mc, ls_ks, curr_value: string;
    ls_zylsj: single;
    scbz, ztid: integer;
    clph, xmph, ypph, jcph, jyph, qtph: string; //材料，治疗，药品，检查，检验,其它
    zyyz_mbmc: string; //医嘱模板名称
    rectno:integer;
    paper_size:integer;

    procedure ad_ggdisplay;

    function find_today_yzxm(xmdm: string): integer;
    function find_current_yzxm(xmdm: string): integer;
    procedure saveyz;
    procedure createrect(var myrect1:TTmyrect;dataset_rect:TCustomADODataSet;grid_yzlr1:Tdbgrideh;x1,x2,x3:integer);

        { Public declarations }
  end;

var
  myrect:TTmyrect;
  myrect_cx,myrect_zx_cq,myrect_zx_ls:TTmyrect;
  bcbz:boolean;
  frm_bryzcx: Tfrm_bryzcx;
  yzlb: string; //医嘱类别
  clfs: string; //检索方式 药品,医嘱
  zy_czks: string; //处置科室
  yzsx, yzys,fzbh: string; //医嘱属性 ,医嘱医生
  kz: boolean; // 控制AffterScoll calmhawk - 2007-01-09
  kzfs: string; // 控制负数输入
  kzbz, tzbz, wz: integer; //控制标志,
  p_yzlb:string;//医嘱类别
  tzyzqr:integer;
  tzyzsj:string;
  maxxh:integer;
function findinarray(myrect:TTmyrect;zd:string):integer;
 procedure initarray(myrect:TTmyrect);

const
  con_sql_zy = 'select * from zysf_zydj where (zyh=:zyh or tmh like :tmh) and ksdm=:ksdm'+
               ' union all ' +
               'select * from zysf_cydj where (zyh=:zyh1 or tmh like :tmh1) and ksdm=:ksdm1';
  con_sql_cy = 'select * from zysf_cydj where (zyh=:zyh or tmh like :tmh) and ksdm=:ksdm';
implementation

{$R *.dfm}
uses p_dm, p_func, p_yzzt, p_treeview_ctxz, p_treeview_ctwh, p_bylsyz, p_tjyz, p_yzfz,
  p_zyyzmbmc, p_jyxmwrite_zy, p_tzyzsj;

  procedure initarray(myrect:TTmyrect);
  var
   i:integer;
   begin
    for i := 0 to 100 do
      begin
        myrect[i].ph:='';
        myrect[i].top:=0;
        myrect[i].left:=0;
        myrect[i].right:=0;
        myrect[i].bottom:=0;
        myrect[i].sl:=1;
        myrect[i].yf:='';
        myrect[i].tj:='';
        myrect[i].gtop:=0;
        myrect[i].gleft:=0;
        myrect[i].gright:=0;
        myrect[i].gbottom:=0;

      end;
   end;
  procedure Tfrm_bryzcx.newyzfzbh; //取得新的分组ID号
begin
//
{    yzfzbm := 0;
    qry_pub.Close;
    qry_pub.SQL.Clear;
    qry_pub.SQL.Text := 'select isnull(max(fzhm),0)+1 as yzfzbm from zybl_zyyz_syfz where zyh=:cxzyh';
    qry_pub.Parameters.ParamValues['cxzyh'] := zyh;
    qry_pub.Open;
    yzfzbm := qry_pub.FieldByName('yzfzbm').AsInteger;  }
end;

function Tfrm_bryzcx.yz_cx_yfjsypsl: real;
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

procedure Tfrm_bryzcx.yz_cx_cqph(yzsx: string);
begin
  ypph := '';
  jcph := '';
  jyph := '';
  clph := '';
  xmph := '';
  qry_yz.first;
  while not qry_yz.Eof do
  begin
    if (trim(qry_yz.FieldByName('yzsx').AsString) = yzsx) then
    begin
      if trim(qry_yz.FieldByName('lb').AsString) = '药品' then
      begin
        if trim(qry_yz.FieldByName('ph').AsString) <> '' then
          ypph := trim(qry_yz.FieldByName('ph').Value);
      end
      else
        if trim(qry_yz.FieldByName('lb').AsString) = '材料' then
        begin
          if trim(qry_yz.FieldByName('ph').AsString) <> '' then
            clph := trim(qry_yz.FieldByName('ph').Value);
        end
        else
          if trim(qry_yz.FieldByName('lb').AsString) = '治疗' then
          begin
            if trim(qry_yz.FieldByName('ph').AsString) <> '' then
              xmph := trim(qry_yz.FieldByName('ph').Value);
          end
          else
            if trim(qry_yz.FieldByName('lb').AsString) = '检验' then
            begin
              if trim(qry_yz.FieldByName('ph').AsString) <> '' then
                jyph := trim(qry_yz.FieldByName('ph').Value);
            end
            else
              if trim(qry_yz.FieldByName('lb').AsString) = '检查' then
              begin
                if trim(qry_yz.FieldByName('ph').AsString) <> '' then
                  jcph := trim(qry_yz.FieldByName('ph').Value);
              end
              else
                if trim(qry_yz.FieldByName('lb').AsString) = '其它' then
                begin
                  if trim(qry_yz.FieldByName('ph').AsString) <> '' then
                    qtph := trim(qry_yz.FieldByName('ph').Value);
                end;
    end;
    qry_yz.Next;
  end;

end;


procedure Tfrm_bryzcx.sljc(fs: integer);

begin

end;

procedure Tfrm_bryzcx.sp_dryzAfterOpen(DataSet: TDataSet);
begin
if sp_dryz.RecordCount*30<screen.height-100 then
 dbgrideh4.Height:=screen.height-50
 else
 dbgrideh4.Height:=sp_dryz.RecordCount*30;
  createrect(myrect_cx,sp_dryz,dbgrideh4,10,11,16);

end;

procedure Tfrm_bryzcx.sp_zxjl_cqAfterOpen(DataSet: TDataSet);
begin
if sp_zxjl_cq.RecordCount*30<screen.height-100 then
 dbgrideh1.Height:=screen.height-50
 else
 dbgrideh1.Height:=sp_zxjl_cq.RecordCount*30;
  createrect(myrect_zx_cq,sp_zxjl_cq,dbgrideh1,5,6,11);

end;

procedure Tfrm_bryzcx.sp_zxjl_lsAfterOpen(DataSet: TDataSet);
begin
  createrect(myrect_zx_ls,sp_zxjl_ls,dbgrideh2,7,8,9);

end;

procedure Tfrm_bryzcx.TabSheet1Show(Sender: TObject);
begin
 dbgrideh1.OnColWidthsChanged(sender);

end;

procedure Tfrm_bryzcx.TabSheet2Show(Sender: TObject);
begin
  dbgrideh3.OnColWidthsChanged(sender);

end;

function Tfrm_bryzcx.find_today_yzxm(xmdm: string): integer;
begin
  //查询当日病员医嘱中是否有该医嘱项目，有返回1，否则返回0
  sp_cx_yzxm.Close;
  sp_cx_yzxm.Open;
  if sp_cx_yzxm.RecordCount = 0 then
    Result := 0;
  if sp_cx_yzxm.Locate('xmdm', xmdm, [loCaseInsensitive]) then
    Result := 1
  else
    Result := 0;
end;

function Tfrm_bryzcx.find_current_yzxm(xmdm: string): integer;
var
  temp: integer;
  r:integer;
begin
    //查询当前编辑医嘱中是否有该医嘱项目，有返回1，否则返回0
    //-------------calmhawk--2007-01-29--------
    //-----------------------------------------
    //输液分组该在录入界面执行，静滴药品应该允许重复
  temp := qry_yz.recno;
  if qry_yz.Locate('xmdm', xmdm, [loCaseInsensitive]) then
    r := 1
  else
    r := 0;
  if (r=1) and ((qry_yz.fieldbyname('yytj').AsString='静滴') or (qry_yz.fieldbyname('yytj').AsString='静注')
   or (qry_yz.fieldbyname('yytj').AsString='化静滴')  or (qry_yz.fieldbyname('yytj').AsString='化静注') ) then
   r := 0;

  if temp = -1 then
    qry_yz.recno := qry_yz.RecordCount
  else
    qry_yz.recno := temp;
  result:=r;
end;

procedure Tfrm_bryzcx.fcqyzlb;
begin
  qry_yzlist.Close;
  qry_yzlist.SQL.Text := 'select * from zybl_zyyz_list where 1=2';
  qry_yzlist.Open;
  qry_yz.Filtered := false;
  qry_yz.Filter := ' lb = ' + '''' + '药品' + '''' + ' and yzsx <> ' + #39 + '长期' + #39;
  qry_yz.Filtered := true;
  if qry_yz.RecordCount > 0 then
  begin
    qry_yzlist.Insert;
    qry_yzlist.FieldByName('ph').Value := ypph;
    qry_yzlist.FieldByName('yzzs').Value := qry_yz.RecordCount;
    qry_yzlist.FieldByName('kssj').Value := frm_func.curr_date;

    if yzsx = '临时' then
    begin
      qry_yzlist.FieldByName('yjjssj').Value := frm_func.curr_date + 1;
    end;
    qry_yzlist.FieldByName('zxry').Value := pub_czydm;
    qry_yzlist.FieldByName('zxcs').Value := 0;
    qry_yzlist.FieldByName('yzxcs').Value := 0;
    qry_yzlist.FieldByName('zyh').Value := zyh;
    qry_yzlist.FieldByName('yzsx').Value := trim(qry_yz.FieldByName('yzsx').AsString);
    qry_yzlist.FieldByName('drzxcs').Value := 0;
    qry_yzlist.Post;
  end;
  qry_yz.Filtered := false;
  qry_yz.Filter := ' lb = ' + '''' + '材料' + '''' + ' and yzsx <> ' + #39 + '长期' + #39;
  qry_yz.Filtered := true;
  if qry_yz.RecordCount > 0 then
  begin
    qry_yzlist.Insert;
    qry_yzlist.FieldByName('ph').Value := clph;
    qry_yzlist.FieldByName('yzzs').Value := qry_yz.RecordCount;
    qry_yzlist.FieldByName('kssj').Value := frm_func.curr_date;
    qry_yzlist.FieldByName('zxry').Value := pub_czydm;
    qry_yzlist.FieldByName('zxcs').Value := 0;
    qry_yzlist.FieldByName('yzxcs').Value := 0;
    qry_yzlist.FieldByName('zyh').Value := zyh;
    qry_yzlist.FieldByName('yzsx').Value := trim(qry_yz.FieldByName('yzsx').AsString);
    qry_yzlist.FieldByName('drzxcs').Value := 0;
    qry_yzlist.Post;
  end;
  qry_yz.Filtered := false;
  qry_yz.Filter := ' lb <> ' + '''' + '材料' + '''' + ' and lb <> ' + '''' + '药品' + '''' + ' and yzsx <> ' + #39 + '长期' + #39;
  qry_yz.Filtered := true;
  if qry_yz.RecordCount > 0 then
  begin
    qry_yzlist.Insert;
    qry_yzlist.FieldByName('ph').Value := xmph;
    qry_yzlist.FieldByName('yzzs').Value := qry_yz.RecordCount;
    qry_yzlist.FieldByName('kssj').Value := frm_func.curr_date;
    qry_yzlist.FieldByName('zxry').Value := pub_czydm;
    qry_yzlist.FieldByName('zxcs').Value := 0;
    qry_yzlist.FieldByName('yzxcs').Value := 0;
    qry_yzlist.FieldByName('zyh').Value := zyh;
    qry_yzlist.FieldByName('yzsx').Value := trim(qry_yz.FieldByName('yzsx').AsString);
    qry_yzlist.FieldByName('drzxcs').Value := 0;
    qry_yzlist.Post;
  end;
  qry_yzlist.UpdateBatch(arall);
  qry_yz.Filtered := false;
end;

procedure Tfrm_bryzcx.tjyzfcqyz;
begin
  qry_yz.Edit;
  if trim(qry_yz.FieldByName('lb').AsString) = '药品' then
  begin
{    if ypph = '' then
    begin
      ypph := get_sjh(pub_czydm);
    end;   }
    qry_yz.FieldByName('ph').Value := get_sjh(pub_czydm); //ypph
  end
  else
    if trim(qry_yz.FieldByName('lb').AsString) = '材料' then
    begin
{      if clph = '' then
      begin
        clph := get_sjh(pub_czydm);
      end;   }
      qry_yz.FieldByName('ph').Value := get_sjh(pub_czydm); //clph;
    end
    else
      if trim(qry_yz.FieldByName('lb').AsString) = '治疗' then
      begin
{        if xmph = '' then
        begin
          xmph := get_sjh(pub_czydm);
        end; }
        qry_yz.FieldByName('ph').Value := get_sjh(pub_czydm); //xmph;
      end
      else
        if trim(qry_yz.FieldByName('lb').AsString) = '检验' then
        begin
{          if jyph = '' then
          begin
            jyph := get_sjh(pub_czydm);
          end;   }
          qry_yz.FieldByName('ph').Value :=get_sjh(pub_czydm); // jyph;
        end
        else
          if trim(qry_yz.FieldByName('lb').AsString) = '检查' then
          begin
{            if jcph = '' then
            begin
              jcph := get_sjh(pub_czydm);
            end; }
            qry_yz.FieldByName('ph').Value := get_sjh(pub_czydm); //jcph;
          end
          else
            if trim(qry_yz.FieldByName('lb').AsString) = '其它' then
            begin
{              if qtph = '' then
              begin
                qtph := get_sjh(pub_czydm);
              end;   }
              qry_yz.FieldByName('ph').Value := get_sjh(pub_czydm); //qtph;
            end;
  qry_yz.Post;
end;

procedure Tfrm_bryzcx.zdkz;
begin

end;

procedure Tfrm_bryzcx.qtjs;
begin

end;

procedure Tfrm_bryzcx.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
sp_zxjl_cq_dy.first;
paper_size:=0;
end;

procedure Tfrm_bryzcx.QuickRep2BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
sp_zxjl_ls_dy.first;
paper_size:=0;
end;

procedure Tfrm_bryzcx.ypjs;
begin

end;

procedure Tfrm_bryzcx.tjyz;

begin

end;

procedure Tfrm_bryzcx.yzlbsr;
begin

end;

procedure Tfrm_bryzcx.yzsxsr(fs: integer);
begin

end;

procedure Tfrm_bryzcx.yzXmsr(fs: integer);

begin

end;

procedure Tfrm_bryzcx.yzNew(fs: integer);
begin

end;

procedure Tfrm_bryzcx.zyzadd;
var
  _ypdm: string;
  _ypyf: string;
  _yzsx: string;
  _ypyl: string;
  _sl: string;
  _yldw: string;
  _yytj: string;
  _ypmc: string;
begin
    //添加子医嘱
  if qry_yz.RecordCount > 0 then
  begin
    _ypdm := qry_yz.FieldByName('xmdm').AsString;
    _ypmc := qry_yz.FieldByName('xmmc').AsString;
    qry_yz.Delete;
    _sl := qry_yz.FieldByName('sl').AsString;
    _ypyf := qry_yz.FieldByName('ypyf').AsString;
    _ypyl := qry_yz.FieldByName('ypyl').AsString;
    _yldw := qry_yz.FieldByName('yldw').AsString;
    _yytj := qry_yz.FieldByName('yytj').AsString;
    _yzsx := qry_yz.FieldByName('yzsx').AsString;
    qry_yz.Append;
    qry_yz.FieldByName('lb').AsString := yzlb;
    qry_yz.FieldByName('yzsx').AsString := yzsx;
    qry_yz.FieldByName('tmh').AsString := tmh;
    qry_yz.FieldByName('zyh').AsString := zyh;
    qry_yz.FieldByName('xmdm').AsString := _ypdm;
    qry_yz.FieldByName('xmmc').AsString := _ypmc;
    qry_yz.FieldByName('sl').AsString := _sl;
    qry_yz.FieldByName('ypyf').AsString := _ypyf;
    qry_yz.FieldByName('ypyl').AsString := _ypyl;
    qry_yz.FieldByName('yldw').AsString := _yldw;
    qry_yz.FieldByName('yytj').AsString := _yytj;
    qry_yz.FieldByName('yzsx').AsString := _yzsx;
    qry_yz.FieldByName('dw').AsString := sp_cx_yp_yz.FieldByName('zyyfdw').AsString;
    qry_yz.FieldByName('ypdwid').AsInteger := sp_cx_yp_yz.FieldByName('zydwid').AsInteger;
    qry_yz.FieldByName('ypbzbl').AsInteger := sp_cx_yp_yz.FieldByName('zyyfzhl').AsInteger;
    qry_yz.FieldByName('yplsj').AsFloat := sp_cx_yp_yz.FieldByName('zylsj').AsFloat;
    qry_yz.FieldByName('ypcgj').AsFloat := sp_cx_yp_yz.FieldByName('zypfj').AsFloat;
    qry_yz.FieldByName('yldw').AsString := sp_cx_yp_yz.FieldByName('zyyfdw').AsString;
    qry_yz.FieldByName('kdks').AsString := pub_ksdm;
    qry_yz.FieldByName('kdrq').AsDateTime := frm_func.curr_date;
    qry_yz.FieldByName('kdys').AsString := sp_jbxx.FieldByName('zgys').AsString;
    qry_yz.FieldByName('czks').AsString := pub_zyxyfdm;
    qry_yz.FieldByName('jyyb').AsString := sp_cx_yp_yz.FieldByName('yb').AsString;
    qry_yz.FieldByName('jyflbh').AsString := sp_cx_yp_yz.FieldByName('dldm').AsString;

    qry_yz.FieldByName('xh').Asinteger := maxxh+1;
    maxxh:=maxxh+1;

    if sp_cx_yp_yz.fieldbyname('sfdmyp').asboolean then
      qry_yz.FieldByName('yplb').AsString := '毒麻药品';
    qry_yz.Post;
  end;
end;



procedure Tfrm_bryzcx.xzsm(Sender: TDbmemo);
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

procedure Tfrm_bryzcx.db_brxxKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 13 then
  begin
    e_yzys.SetFocus;
  end;
end;

procedure Tfrm_bryzcx.delete_yz(key: word);
begin
  if (key = vk_delete) and (qry_yz.RecordCount > 0) then
  begin
    if application.MessageBox('是否删除该医嘱?', '提示信息', mb_iconquestion + mb_okcancel + mb_defbutton1) = idok then
    begin
      qry_yz.Edit;
      qry_yz.Delete;
    end;
  end;
end;

procedure Tfrm_bryzcx.ypinyz;
begin
    //药品信息写入医嘱
  qry_yz.edit;
  qry_yz.FieldByName('tmh').AsString := tmh;
  qry_yz.FieldByName('zyh').AsString := zyh;
  qry_yz.FieldByName('xmdm').AsString := sp_cx_yp_yz.FieldByName('ypdm').AsString;
  qry_yz.FieldByName('xmmc').AsString := trim(sp_cx_yp_yz.FieldByName('ypmc').AsString);
  qry_yz.FieldByName('dw').AsString := trim(sp_cx_yp_yz.FieldByName('zyyfdw').AsString);
  qry_yz.FieldByName('sl').value := 1;
  qry_yz.FieldByName('ypdwid').AsInteger := sp_cx_yp_yz.FieldByName('zydwid').AsInteger;
  qry_yz.FieldByName('ypbzbl').AsInteger := sp_cx_yp_yz.FieldByName('zyyfzhl').AsInteger;
  qry_yz.FieldByName('yplsj').AsFloat := sp_cx_yp_yz.FieldByName('zylsj').AsFloat;
  qry_yz.FieldByName('ypcgj').AsFloat := sp_cx_yp_yz.FieldByName('zypfj').AsFloat;
  qry_yz.FieldByName('yldw').AsString := trim(sp_cx_yp_yz.FieldByName('yzyldw').AsString);
  qry_yz.FieldByName('kdks').AsString := pub_ksdm;
  qry_yz.FieldByName('kdrq').AsDateTime := frm_func.curr_date;
  qry_yz.FieldByName('kdys').AsString := sp_jbxx.FieldByName('zgys').AsString;
  qry_yz.FieldByName('xh').Asinteger := maxxh+1;
  maxxh:=maxxh+1;

  if (isbqkf) and (yzlb = '材料') then
  begin
    qry_yz.FieldByName('czks').AsString := pub_ksdm;
  end
  else
  begin
    qry_yz.FieldByName('czks').AsString := pub_zyxyfdm;
  end;
  qry_yz.FieldByName('gg').AsString := sp_cx_yp_yz.FieldByName('ypgg').AsString;
  if sp_cx_yp_yz.fieldbyname('sfdmyp').asboolean then
    qry_yz.FieldByName('yplb').AsString := '毒麻药品';
  qry_xmyz.insert;
  qry_xmyz.FieldByName('xmdm').AsString := sp_cx_yp_yz.FieldByName('ypdm').AsString;
  qry_xmyz.FieldByName('xmmc').AsString := trim(sp_cx_yp_yz.FieldByName('ypmc').AsString);
  qry_xmyz.FieldByName('lb').AsString := qry_yz.FieldByName('lb').AsString;
  qry_xmyz.post;
end;

procedure Tfrm_bryzcx.refresh_yz;
var
  ls_sql: string;
begin
  ls_sql := 'select * from zybl_zyyz where zyh=:cxzyh and zxbz=0 and tzbz =0 order by xh';
  qry_yz.Close;
  qry_yz.SQL.Clear;
  qry_yz.SQL.Text := ls_sql;
  qry_yz.Parameters.ParamValues['cxzyh'] := zyh;
  qry_yz.Open;

  //----------------------------------------------------
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
    qry_yz.Next;
  end;
 //--------------------------------------------------
  qry_yz.Append;
  sp_dryz.Close;
  sp_dryz.Parameters.ParamByName('@zyh').Value := zyh;
  sp_dryz.Parameters.ParamByName('@yzsx').Value := '全部';
  sp_dryz.Open;

end;

procedure Tfrm_bryzcx.BBtn_print_cqClick(Sender: TObject);
begin
  with sp_zxjl_cq_dy do
  begin
    Close;
    Parameters.ParamByName('@zyh').Value := sp_jbxx.FieldByName('zyh').AsString;
    Parameters.ParamByName('@fs').Value := 0;
    Open;
  end;
  sp_zxjl_cq_dy.first;
  QRL_yymc_cq.Caption := pub_yymc + '长期医嘱记录单';
  QRL_brxm_cq.Caption := '病人姓名:' + sp_jbxx.FieldByName('brxm').AsString;
  QRL_tmh_cq.Caption := '住院号:' + sp_jbxx.FieldByName('tmh').AsString;
  QRL_bch_cq.Caption := '病床号:' + sp_jbxx.FieldByName('bch').AsString;
  xb_cq.Caption := '性别:' + trim(sp_jbxx.FieldByName('brxb').AsString);
  nl_cq.Caption := '年龄:' + trim(sp_jbxx.FieldByName('brnl').AsString);
  zd_cq.Caption := '诊断:' + trim(sp_jbxx.FieldByName('ryzd').AsString);
  QRL_dysj_cq.Caption := '打印时间:' + FormatDatetime('yyyy年mm月dd日', frm_func.curr_date);
  sj1.caption:='日期'+#13+'时间';
  sj2.caption:='执行'+#13+'时间';
  sj3.caption:='日期'+#13+'时间';
  sj4.caption:='执行'+#13+'时间';

  QuickRep1.Prepare;
  paper_size:=0;
  QRL_ys_cq.Caption := '共' + IntToStr(QuickRep1.Printer.PageCount) + '页';
  QuickRep1.preview;
end;

procedure Tfrm_bryzcx.BBtn_print_lsClick(Sender: TObject);
begin
  with sp_zxjl_ls_dy do
  begin
    Close;
    Parameters.ParamByName('@zyh').Value := sp_jbxx.FieldByName('zyh').AsString;
    Parameters.ParamByName('@fs').Value := 1;
    Open;
  end;
  sp_zxjl_ls_dy.first;
  QRL_yymc_ls.Caption := pub_yymc + '临时医嘱记录单';
  QRL_brxm_ls.Caption := '病人姓名:' + trim(sp_jbxx.FieldByName('brxm').AsString);
  QRL_tmh_ls.Caption := '住院号:' + trim(sp_jbxx.FieldByName('tmh').AsString);
  QRL_bch_ls.Caption := '病床号:' + trim(sp_jbxx.FieldByName('bch').AsString);
  xb_ls.Caption := '性别:' + trim(sp_jbxx.FieldByName('brxb').AsString);
  nl_ls.Caption := '年龄:' + trim(sp_jbxx.FieldByName('brnl').AsString);
  zd_ls.Caption := '诊断:' + trim(sp_jbxx.FieldByName('ryzd').AsString);

  QRL_dysj_ls.Caption := '打印时间:' + FormatDatetime('yyyy年mm月dd日', frm_func.curr_date);
  QuickRep2.Prepare;
  paper_size:=0;
  QRL_ys_ls.Caption := '共' + IntToStr(QuickRep2.Printer.PageCount) + '页';
  QuickRep2.Preview;
end;

procedure Tfrm_bryzcx.BitBtn1Click(Sender: TObject);
begin
  close;
end;

procedure Tfrm_bryzcx.BitBtn_downClick(Sender: TObject);
var
id,xh:integer;
sbookmark:Tbookmark;
begin
qry_yz.DisableControls;
sbookmark:=qry_yz.GetBookmark;
saveyz;
qry_yz.GotoBookmark(Sbookmark);
qry_yz.FreeBookmark(sbookmark);
id:=qry_yz.FieldByName('id').asinteger;
xh:=qry_yz.FieldByName('xh').asinteger;
sp_set_xh.Close;
sp_set_xh.Parameters.ParamByName('@zyh').value:= zyh;
sp_set_xh.Parameters.ParamByName('@dqid').value:=id;
sp_set_xh.Parameters.ParamByName('@dqxh').value:=xh;
sp_set_xh.Parameters.ParamByName('@tzfx').value:=2;
sp_set_xh.execproc;
refresh_yz;
qry_yz.EnableControls;
qry_yz.Locate('id',id,[]);

end;

procedure Tfrm_bryzcx.BitBtn_upClick(Sender: TObject);
var
id,xh:integer;
sbookmark:Tbookmark;
begin
qry_yz.DisableControls;
sbookmark:=qry_yz.GetBookmark;
saveyz;
qry_yz.GotoBookmark(Sbookmark);
qry_yz.FreeBookmark(sbookmark);
id:=qry_yz.FieldByName('id').asinteger;
xh:=qry_yz.FieldByName('xh').asinteger;
sp_set_xh.Close;
sp_set_xh.Parameters.ParamByName('@zyh').value:= zyh;
sp_set_xh.Parameters.ParamByName('@dqid').value:=id;
sp_set_xh.Parameters.ParamByName('@dqxh').value:=xh;
sp_set_xh.Parameters.ParamByName('@tzfx').value:=1;
sp_set_xh.execproc;
refresh_yz;
qry_yz.EnableControls;
qry_yz.Locate('id',id,[]);

end;

procedure Tfrm_bryzcx.bt_exitClick(Sender: TObject);
begin
  close;
end;

procedure Tfrm_bryzcx.ad_ggdisplay;
begin

try
richedit2.Lines.Clear;
richedit1.readonly:=false;
richedit1.lines.clear;
adodataset1.First;
while not ADODataSet1.eof do
 begin
 try
  richedit2.lines.LoadFromStream(TADOBlobStream.Create(ADODataSet1.FieldByName('tsnr')as TBlobField,bmRead));
  richedit2.SelectAll;
  richedit2.CopyToClipboard;
  richedit1.PasteFromClipboard;
  adodataset1.next;
 except
 end
 end;
except
end;
RichEdit1.ReadOnly:=True;
richedit1.SelStart:=richedit1.Lines.Count;
adodataset1.close;
end;

procedure Tfrm_bryzcx.FormShow(Sender: TObject);
begin
   adodataset1.close;
   adodataset1.commandtext:='select * from zybl_tsnr Where jsrq>=GetDate()-2 and '+
                         ' (bqdm='+#39+pub_bqdm+#39+' or isnull(bqdm,'+#39+#39+')='+#39+#39+') order by id';
   adodataset1.open;
  ad_ggdisplay;
  QuickRep1.Visible := False;
  QuickRep2.Visible := False;
  if tmh = '' then
    tmh := pub_tmh;
  qry_xmyz.Close;
  qry_xmyz.Open;
  yzsx := '长期';
  qry_ys.close;
  qry_ys.Parameters.ParamByName('ksdm').Value := pub_ksdm;
  qry_ys.Open;
  qry_ks.Open;
  qry_yzsx.Open;
  yzlb := '药品';
  zz.ActivePageIndex := 0;
  kz := false;
  if pub_zyh <> '' then
  begin
    sp_jbxx.Close;
    sp_jbxx.Parameters.ParamValues['@tmh'] :=pub_tmh;
    sp_jbxx.Parameters.ParamValues['@xm'] := pub_tmh;
    sp_jbxx.Parameters.ParamValues['@bch'] := pub_tmh;
    sp_jbxx.Parameters.ParamValues['@ksdm'] := pub_bqdm;
    sp_jbxx.Open;
  end;

  sp_cx_yzxm.Close;
  sp_cx_yzxm.Parameters.ParamValues['@zyh'] := zyh;
  sp_cx_yzxm.Parameters.ParamValues['@yzsx'] := '未提交';
  sp_cx_yzxm.Open;
  scbz := 0;
    //------------calmhawk-2008-01-31-----取药房代码------
  qry_yfdm.Close;
  qry_yfdm.Parameters.ParamByName('ksdm').Value := pub_ksdm;
  qry_yfdm.Open;
    //------------------------------------------------------------
  if not sp_jbxx.IsEmpty then
  begin
    zyh := sp_jbxx.FieldByName('zyh').AsString;
    tmh := sp_jbxx.FieldByName('tmh').AsString;
    brxm := sp_jbxx.FieldByName('brxm').AsString;
    e_tmh.Text := tmh;
    refresh_yz;
  end;
  if zyh = '' then
  begin
    e_tmh.SetFocus;
  end
  else
  begin
    if trim(sp_jbxx.FieldByName('zgys').AsString) = '' then
    begin
      e_yzys.SetFocus;
    end
    else
    begin
      if trim(dbedit11.Text) <> '' then
        e_yzys.Text := DBEdit11.Text;
      yzlbsr(kzbz);
    end;
  end;

end;

procedure Tfrm_bryzcx.edt_tmhKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = 13) and (trim(edt_tmh.text)<>'') then
    Proc_Seek_dj(Trim(edt_tmh.Text));
end;

procedure Tfrm_bryzcx.e_tmhExit(Sender: TObject);
begin
  qry_xmyz.Close;
  qry_xmyz.Open;
  if trim(e_tmh.Text) <> '' then
  begin
    sp_jbxx.Close;
    sp_jbxx.Parameters.ParamValues['@tmh'] := trim(e_tmh.Text);
    sp_jbxx.Parameters.ParamValues['@xm'] := trim(e_tmh.Text);
    sp_jbxx.Parameters.ParamValues['@bch'] := trim(e_tmh.Text);
    sp_jbxx.Parameters.ParamValues['@ksdm'] := pub_bqdm;
    sp_jbxx.Open;
    if sp_jbxx.RecordCount = 1 then
    begin
      zyh := sp_jbxx.FieldByName('zyh').AsString;
      tmh := sp_jbxx.FieldByName('tmh').AsString;
      brxm := sp_jbxx.FieldByName('brxm').AsString;
      e_tmh.Text := tmh;
      if trim(dbedit11.Text) <> '' then
        e_yzys.Text := DBEdit11.Text;
      refresh_yz;
            //calmhawk --当日医嘱
      sp_dryz.Close;
      sp_dryz.Parameters.ParamByName('@zyh').Value := zyh;
      sp_dryz.Parameters.ParamByName('@yzsx').Value := '';
      sp_dryz.Open;

    end;
  end;
end;

procedure Tfrm_bryzcx.e_tmhKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 13 then
  begin
    e_yzys.SetFocus;
  end;
end;

procedure Tfrm_bryzcx.N1Click(Sender: TObject);
var
  _id,_zhzxsj,_yzsx: string;
  _fzph:string;
  _yzsj:string;
  sczt,i:integer;
begin
  tzyzqr:=0;

  try
  application.Createform(Tfrm_tzyzsj,frm_tzyzsj);
  frm_tzyzsj.showmodal;
  finally
  frm_tzyzsj.free;
  end;
  if sp_dryz.FieldByName('yzsx').AsString='临时' then
  begin
  if application.MessageBox('临时医嘱停止,只能立即停止，是否继续？','提示',mb_iconquestion + mb_yesno + mb_defbutton1)=idno then
  abort
  end;
 //时间停止医嘱
  sp_yzsj.Close;
  sp_yzsj.Parameters.ParamByName('@scyzsj').Value :=tzyzsj;
  sp_yzsj.ExecProc;
  _yzsj:=formatdatetime('yyyymmdd',sp_yzsj.Parameters.ParamByName('@scyzsj').Value);
//  dt_zxsj.DateTime:= sp_yzsj.Parameters.ParamByName('@scyzsj').Value;

 if tzyzqr=1  then
  begin
  if not sp_dryz.Active then
    exit;
  if sp_dryz.RecordCount < 1 then
    exit;
//    datetimetostr(frm_func.curr_date)

  _id := sp_dryz.FieldByName('id').AsString;
  _zhzxsj:=sp_dryz.FieldByName('zhzxsj').AsString;
  _yzsx:=sp_dryz.FieldByName('yzsx').AsString;
  _fzph:= sp_dryz.FieldByName('fzph').AsString;
  if _fzph<>'' then
   begin
   sp_tzyz.Close;
   sp_tzyz.Parameters.ParamByName('@zyh').Value:= zyh;
   sp_tzyz.Parameters.ParamByName('@zxsj').Value:=_yzsj;
   sp_tzyz.Parameters.ParamByName('@tzyzsj').Value:=strtodatetime(tzyzsj);
   sp_tzyz.Parameters.ParamByName('@czydm').Value:= pub_czydm;
   sp_tzyz.Parameters.ParamByName('@id').Value:=0;
   sp_tzyz.Parameters.ParamByName('@fzph').Value:=_fzph;
   sp_tzyz.Parameters.ParamByName('@sczt').Value:=9;
   sp_tzyz.ExecProc;
   sczt:=sp_tzyz.Parameters.ParamByName('@sczt').Value;
   if sczt<>0 then
   application.MessageBox('医嘱停止未成功，请重新操作！！','提示！',mb_ok);
   end
   else
   begin
   sp_tzyz.Close;
   sp_tzyz.Parameters.ParamByName('@zyh').Value:= zyh;
   sp_tzyz.Parameters.ParamByName('@zxsj').Value:=_yzsj;
   sp_tzyz.Parameters.ParamByName('@tzyzsj').Value:=strtodatetime(tzyzsj);
   sp_tzyz.Parameters.ParamByName('@czydm').Value:= pub_czydm;
   sp_tzyz.Parameters.ParamByName('@id').Value:=_id;
   sp_tzyz.Parameters.ParamByName('@fzph').Value:='';
   sp_tzyz.Parameters.ParamByName('@sczt').Value:=9;
   sp_tzyz.ExecProc;
   sczt:=sp_tzyz.Parameters.ParamByName('@sczt').Value;
   if sczt<>0 then
   application.MessageBox('医嘱停止未成功，请重新操作！！','提示！',mb_ok);
   end;
  if (_zhzxsj<>'') and (_yzsx='临时') then
   begin
    if _fzph<>'' then
    application.MessageBox(pchar('此'+#13+sp_dryz.FieldByName('xmmc').AsString+#13+'所在输液组已经执行计费，请填写相应通知办公护士退费！！！'), '提示', 0 + 48)
     else
    application.MessageBox(pchar('此'+#13+sp_dryz.FieldByName('xmmc').AsString+#13+'已经执行计费，请填写相应通知办公护士退费！！！'), '提示', 0 + 48);
   end;
  sp_dryz.Close;
  sp_dryz.Parameters.ParamByName('@zyh').Value := zyh;
  sp_dryz.Parameters.ParamByName('@yzsx').Value := '';
  sp_dryz.Open;
  end;
end;

procedure Tfrm_bryzcx.N2Click(Sender: TObject);
var
  _ph,_xmdm,_fzph: string;
  _id:integer;

begin
  if not sp_dryz.Active then
    exit;
  if not (sp_dryz.FieldByName('tzfs').Asstring='修改') then
  begin
  if sp_dryz.FieldByName('zhzxsj').Asstring='' then
  begin
  if not sp_dryz.FieldByName('tzbz').AsBoolean then
  begin
    if sp_dryz.RecordCount < 1 then
      exit;
    _ph := sp_dryz.FieldByName('ph').AsString;
    _xmdm := sp_dryz.FieldByName('xmdm').AsString;
    _fzph := sp_dryz.FieldByName('fzph').AsString;
      _id := sp_dryz.FieldByName('id').Asinteger;
    if sp_dryz.fieldbyname('fzph').asstring<>'' then
     begin
      qru_yzxg.close;
      qru_yzxg.sql.text := 'update zybl_zyyz set zxbz = 0,xgrq = ' +
        #39 + datetimetostr(frm_func.curr_date) + #39 + ',xgry = ' + #39 + pub_czydm + #39 +
        ' where fzph = ' + #39 + _fzph + #39;
      qru_yzxg.ExecSQL;
     end
     else
     begin
      qru_yzxg.close;
      qru_yzxg.sql.text := 'update zybl_zyyz set zxbz = 0,xgrq = ' +
        #39 + datetimetostr(frm_func.curr_date) + #39 + ',xgry = ' + #39 + pub_czydm + #39 +
        ' where id = ' + inttostr(_id) ;
      qru_yzxg.ExecSQL;
     end;
    sp_dryz.Close;
    sp_dryz.Parameters.ParamByName('@zyh').Value := zyh;
    sp_dryz.Parameters.ParamByName('@yzsx').Value := '';
    sp_dryz.Open;
    refresh_yz;
    application.MessageBox('本医嘱已经进入修改状态，请到“录入医嘱”界面修改！', '提示', 0 + 48);

  end
  else
    application.MessageBox('已停止的医嘱不能修改！', '提示', 0 + 48);
  end
 else
   application.MessageBox('已执行的医嘱不能修改！', '提示', 0 + 48);
end;

end;

procedure Tfrm_bryzcx.aptzyzClick(Sender: TObject);
var
  _id,_zhzxsj,_yzsx: string;
  _fzph:string;
  _yzsj:string;
  sczt,i:integer;
begin
  tzyzqr:=0;

  try
  application.Createform(Tfrm_tzyzsj,frm_tzyzsj);
  frm_tzyzsj.showmodal;
  finally
  frm_tzyzsj.free;
  end;
  if sp_dryz.FieldByName('yzsx').AsString='临时' then
  begin
  if application.MessageBox('临时医嘱停止,只能立即停止，是否继续？','提示',mb_iconquestion + mb_yesno + mb_defbutton1)=idno then
  abort
  end;
 //时间停止医嘱
  sp_yzsj.Close;
  sp_yzsj.Parameters.ParamByName('@scyzsj').Value :=tzyzsj;
  sp_yzsj.ExecProc;
  _yzsj:=formatdatetime('yyyymmdd',sp_yzsj.Parameters.ParamByName('@scyzsj').Value);
//  dt_zxsj.DateTime:= sp_yzsj.Parameters.ParamByName('@scyzsj').Value;

 if tzyzqr=1  then
  begin
  if not sp_dryz.Active then
    exit;
  if sp_dryz.RecordCount < 1 then
    exit;
//    datetimetostr(frm_func.curr_date)
  if dbgrideh4.SelectedRows.Count>0 then
  begin
  for I := 0 to dbgrideh4.SelectedRows.Count-1 do
   begin
   DBGrideh4.DataSource.DataSet.GotoBookmark(pointer(DBGrideh4.SelectedRows.Items[i]));
   if pos('停止',sp_dryz.fieldbyname('tzfs').asstring)<=0 then
    begin
  _id := sp_dryz.FieldByName('id').AsString;
  _zhzxsj:=sp_dryz.FieldByName('zhzxsj').AsString;
  _yzsx:=sp_dryz.FieldByName('yzsx').AsString;
  _fzph:= sp_dryz.FieldByName('fzph').AsString;
  if _fzph<>'' then
   begin
   sp_tzyz.Close;
   sp_tzyz.Parameters.ParamByName('@zyh').Value:= zyh;
   sp_tzyz.Parameters.ParamByName('@zxsj').Value:=_yzsj;
   sp_tzyz.Parameters.ParamByName('@tzyzsj').Value:=strtodatetime(tzyzsj);
   sp_tzyz.Parameters.ParamByName('@czydm').Value:= pub_czydm;
   sp_tzyz.Parameters.ParamByName('@id').Value:=0;
   sp_tzyz.Parameters.ParamByName('@fzph').Value:=_fzph;
   sp_tzyz.Parameters.ParamByName('@sczt').Value:=9;
   sp_tzyz.ExecProc;
   sczt:=sp_tzyz.Parameters.ParamByName('@sczt').Value;
   if sczt<>0 then
   application.MessageBox('医嘱停止未成功，请重新操作！！','提示！',mb_ok);
   end
   else
   begin
   sp_tzyz.Close;
   sp_tzyz.Parameters.ParamByName('@zyh').Value:= zyh;
   sp_tzyz.Parameters.ParamByName('@zxsj').Value:=_yzsj;
   sp_tzyz.Parameters.ParamByName('@tzyzsj').Value:=strtodatetime(tzyzsj);
   sp_tzyz.Parameters.ParamByName('@czydm').Value:= pub_czydm;
   sp_tzyz.Parameters.ParamByName('@id').Value:=_id;
   sp_tzyz.Parameters.ParamByName('@fzph').Value:='';
   sp_tzyz.Parameters.ParamByName('@sczt').Value:=9;
   sp_tzyz.ExecProc;
   sczt:=sp_tzyz.Parameters.ParamByName('@sczt').Value;
   if sczt<>0 then
   application.MessageBox('医嘱停止未成功，请重新操作！！','提示！',mb_ok);
   end;
  if (_zhzxsj<>'') and (_yzsx='临时') then
   begin
    if _fzph<>'' then
    application.MessageBox(pchar('此'+#13+sp_dryz.FieldByName('xmmc').AsString+#13+'所在输液组已经执行计费，请填写相应通知办公护士退费！！！'), '提示', 0 + 48)
     else
    application.MessageBox(pchar('此'+#13+sp_dryz.FieldByName('xmmc').AsString+#13+'已经执行计费，请填写相应通知办公护士退费！！！'), '提示', 0 + 48);
   end;
  end;
   end;
  end
  else
  begin
   application.MessageBox('批量医嘱医嘱停止必须选择至少一个，请重新操作！！','提示！',mb_ok);
   abort;
  end;

  sp_dryz.Close;
  sp_dryz.Parameters.ParamByName('@zyh').Value := zyh;
  sp_dryz.Parameters.ParamByName('@yzsx').Value := '';
  sp_dryz.Open;
  end;
end;
{var
  _ph,_tsxx: string;
begin
  if not sp_dryz.Active then
    exit;
  if sp_dryz.RecordCount < 1 then
    exit;
  _ph := sp_dryz.FieldByName('ph').AsString;
  qru_yzxg.close;
  qru_yzxg.sql.text := 'update zybl_zyyz set tzbz = 1,tzrq = ' +
    #39 + datetimetostr(frm_func.curr_date) + #39 + ' ,tzry = ' + #39 + pub_czydm + #39 +
    ' where ph = ' + #39 + _ph + #39;
  qru_yzxg.ExecSQL;
  sp_cx_tzyz_xx.Close;
  sp_cx_tzyz_xx.Parameters.ParamByName('@ph').value:=_ph;
  sp_cx_tzyz_xx.Parameters.ParamByName('@xmdm').value:='';
  sp_cx_tzyz_xx.open;
  _tsxx:=sp_cx_tzyz_xx.FieldByName('yxxm').asstring;
  if _tsxx<>'' then
    application.MessageBox(pchar('此'+#13+_tsxx+#13+'已经执行计费，请填写相应通知办公护士退费！！！'), '提示', 0 + 48);

  sp_dryz.Close;
  sp_dryz.Parameters.ParamByName('@zyh').Value := zyh;
  sp_dryz.Parameters.ParamByName('@yzsx').Value := '';
  sp_dryz.Open;
end;  }

procedure Tfrm_bryzcx.qry_ysAfterScroll(DataSet: TDataSet);
begin
  if (yzlb <> '药品') and (qry_yz.Active) then
  begin
    if qry_yz.RecordCount > 0 then
    begin
      qry_yz.FieldByName('yplb').Value := '';
      qry_yz.FieldByName('yplsj').Value := 0;
      qry_yz.FieldByName('gg').Value := '';
    end;
  end;
end;

procedure Tfrm_bryzcx.qry_yzAfterInsert(DataSet: TDataSet);
begin
  if (qry_yz.State = dsInsert) then
  begin
    qry_yz.FieldByName('yzsx').Value := '长期';
    if yzsx = '临时' then
    begin
      qry_yz.FieldByName('yzsx').Value := '临时';
    end;
    qry_yz.FieldByName('lb').Value := yzlb;
    qry_yz.FieldByName('kdys').Value := yzys;
  end;
end;

procedure tfrm_bryzcx.createrect(var myrect1:TTmyrect;dataset_rect:Tcustomadodataset;grid_yzlr1:Tdbgrideh;x1,x2,x3:integer);
var yzph:string;
i,n:integer;
begin
dataset_rect.DisableControls;
rectno:=0;
dataset_rect.first;
initarray(myrect1);
i:=1;
while not dataset_rect.Eof do
 begin
   if dataset_rect.FieldByName('fzph').AsString<>'' then
    begin
    if (yzph<>'') and (myrect1[rectno].sl=1) and (yzph<>dataset_rect.FieldByName('fzph').AsString) then
       begin
        myrect1[rectno].bottom:=grid_yzlr1.CellRect(x1,i-1).bottom;
        myrect1[rectno].Gbottom:=grid_yzlr1.CellRect(x1,i-1).bottom;
//        myrect_cx[rectno].sl:=myrect_cx[rectno].sl+1;
        yzph:='';
       end;
    if yzph=dataset_rect.FieldByName('fzph').AsString then
     begin
      myrect1[rectno].bottom:=grid_yzlr1.CellRect(x1,i).bottom;
      myrect1[rectno].Gbottom:=grid_yzlr1.CellRect(1,i).bottom;
      myrect1[rectno].sl:=myrect1[rectno].sl+1;

     end
     else
      begin
      rectno:=rectno+1;
      myrect1[rectno].sl:=1;
      myrect1[rectno].ph:=dataset_rect.FieldByName('fzph').AsString;

      myrect1[rectno].left:=grid_yzlr1.CellRect(x1,i).left;
      myrect1[rectno].right:=grid_yzlr1.CellRect(x2,i).right;
      myrect1[rectno].top:=grid_yzlr1.CellRect(x1,i).top;

      myrect1[rectno].Gleft:=grid_yzlr1.CellRect(1,i).left;
      myrect1[rectno].Gright:=grid_yzlr1.CellRect(x3,i).right;
      if grid_yzlr1.CellRect(x3,i).right=0 then
      for n := 0 to x3-1 do
      myrect1[rectno].Gright:=myrect1[rectno].Gright+grid_yzlr1.Columns[n].Width;
      myrect1[rectno].Gtop:=grid_yzlr1.CellRect(1,i).top;
      myrect1[rectno].yf:= dataset_rect.FieldByName('ypyf').AsString;
      myrect1[rectno].tj:= dataset_rect.FieldByName('yytj').AsString;
      myrect1[rectno].height:=grid_yzlr1.CellRect(x1,i).bottom-grid_yzlr1.CellRect(x1,i).top;
      yzph:=dataset_rect.FieldByName('fzph').AsString;
      end;
    end
   else
    begin
      if (yzph<>'') and (myrect1[rectno].sl=1)then
       begin
        myrect1[rectno].bottom:=grid_yzlr1.CellRect(x1,i-1).bottom;;
        myrect1[rectno].Gbottom:=grid_yzlr1.CellRect(x1,i-1).bottom;
//        myrect_cx[rectno].sl:=myrect_cx[rectno].sl+1;
        yzph:='';
       end;
       if (yzph<>'') and (myrect1[rectno].sl>1)  then
        yzph:='';

    end;
    dataset_rect.Next;
   i:=dataset_rect.RecNo;
 end;
 if yzph<>'' then
       begin
        myrect1[rectno].bottom:=grid_yzlr1.CellRect(x1,i).bottom;;
        myrect1[rectno].Gbottom:=grid_yzlr1.CellRect(x1,i).bottom;
//        myrect_cx[rectno].sl:=myrect_cx[rectno].sl+1;
        yzph:='';
       end; 
 dataset_rect.EnableControls;

end;



procedure Tfrm_bryzcx.qry_yzAfterScroll(DataSet: TDataSet);
begin
  zdkz;
end;

procedure Tfrm_bryzcx.qry_yzBeforeInsert(DataSet: TDataSet);
begin
  if qry_yz.RecordCount > 0 then
    if trim(qry_yz.FieldByName('xmmc').AsString) = '' then
    begin
      qry_yz.Delete;
    end;
end;


procedure Tfrm_bryzcx.grid_yzExit(Sender: TObject);
begin
  qtjs;
end;

procedure Tfrm_bryzcx.yldwjc(fs: integer);

begin


end;

procedure Tfrm_bryzcx.grid_yzlrDblClick(Sender: TObject);
begin
  yzlb:=qry_yz.fieldbyname('lb').asstring;
  if (yzlb='检验') or (yzlb='检查') or (yzlb='治疗') then
  begin
  application.CreateForm(Tfrm_jyxmwrite, frm_jyxmwrite);
  try
    frm_jyxmwrite.ShowModal;
  finally
    frm_jyxmwrite.free;
  end;
  end
  else
  application.messagebox('只有检查、检验、治疗才能进行选择，其他项目请输入拼音缩写！！','提示',mb_ok)

end;

function findinarray(myrect:TTmyrect;zd:string):integer;
var i:integer;
mark:boolean;
begin
  mark:=true;
  i:=0;
  while (i<99) and mark do
   begin
     if myrect[i].ph=zd then
      begin
      mark:=false;

      end
    else
    i:=i+1;
   end;
  result:=i;
end;


procedure Tfrm_bryzcx.czkscl(fs: integer);
begin

end;

procedure Tfrm_bryzcx.yytjjs(fs: integer);

begin

end;

procedure Tfrm_bryzcx.saveyz;
begin

end;

procedure Tfrm_bryzcx.FormCreate(Sender: TObject);
begin
    dbgrideh4.Height:=4000;
    scrollbox1.VertScrollBar.Position:=0;
    scrollbox1.HorzScrollBar.Position:=0;
    scrollbox2.VertScrollBar.Position:=0;
    scrollbox2.HorzScrollBar.Position:=0;
    scrollbox3.VertScrollBar.Position:=0;
    scrollbox3.HorzScrollBar.Position:=0;
    dbgrideh4.Width:=1400;
    dbgrideh4.Top:=0;
    dbgrideh4.Left:=0;
    dbgrideh1.Height:=4000;
    dbgrideh1.Width:=1100;
    dbgrideh1.Top:=0;
    dbgrideh1.Left:=0;
    dbgrideh3.Height:=4000;
    dbgrideh3.Width:=1100;
    dbgrideh3.Top:=0;
    dbgrideh3.Left:=0;

end;

procedure Tfrm_bryzcx.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f1 then
    ZZ.ActivePageIndex := 0;
  if key = vk_f2 then
    ZZ.ActivePageIndex := 1;
  if key = vk_f3 then
    ZZ.ActivePageIndex := 2;
end;

procedure Tfrm_bryzcx.FormResize(Sender: TObject);
begin
scrollbox1.Width:=self.Width-10;
dbgrideh4.Width:=1400;
dbgrideh3.Width:=1100;
dbgrideh1.Width:=1100;



end;

procedure Tfrm_bryzcx.bt_lsyzClick(Sender: TObject);
begin
    //调用历史医嘱前保存已编辑医嘱
//  if ds_yz.State in [dsedit, dsinsert] then
//  begin
//    dm_data.ado_mydata.BeginTrans;
//    try
//      qry_yz.UpdateBatch();
//      dm_data.ado_mydata.CommitTrans;
//      scbz := 0;
//    except
//      dm_data.ado_mydata.RollbackTrans;
//    end;
//  end;
  if sp_jbxx.Active then
  begin
    frm_bylsyz := Tfrm_bylsyz.Create(self);
    try
      frm_bylsyz.cxzyh := zyh;
      frm_bylsyz.cxtmh := sp_jbxx.FieldByName('tmh').AsString;
      frm_bylsyz.cxbch := sp_jbxx.FieldByName('bch').AsString;
      frm_bylsyz.edit1.Text := brxm;
      frm_bylsyz.sp_yzmx.close;
      frm_bylsyz.sp_yzmx.parameters.parambyname('@zyh').value:=sp_jbxx.FieldByName('zyh').AsString;
      frm_bylsyz.sp_yzmx.open;
      frm_bylsyz.qrlabel12.Caption := sp_jbxx.FieldByName('brxm').AsString;
      frm_bylsyz.QRL_bch.Caption := sp_jbxx.FieldByName('bch').AsString;;
      frm_bylsyz.QRL_tmh.Caption := sp_jbxx.FieldByName('tmh').AsString;
      frm_bylsyz.QRL_dysj.Caption := '打印时间:' + FormatDatetime('yyyy年mm月dd日 HH时MM分SS秒', frm_func.curr_date);
      frm_bylsyz.rep_dryphz.Prepare;
      frm_bylsyz.QRL_ym.Caption := '共' + IntToStr( frm_bylsyz.rep_dryphz.Printer.PageCount) + '页';
//      frm_bylsyz.rep_dryphz.PrinterSettings.PrinterIndex:=printer.Printers.IndexOf('zxdprint');
      frm_bylsyz.rep_dryphz.Preview;
    finally
      frm_bylsyz.Free;
    end;
  end
  else
    application.MessageBox('没有病人信息', '提示', 0 + 48);
end;

procedure Tfrm_bryzcx.DBGridEh1ColWidthsChanged(Sender: TObject);
begin
  if sp_zxjl_cq.Active then
  createrect(myrect_zx_cq,sp_zxjl_cq,dbgrideh1,5,6,11);

end;

procedure Tfrm_bryzcx.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
  var i:integer;
  myrect1:Trect;
begin
  if Trim(sp_zxjl_cq.FieldByName('zhhsmc').AsString) <> '' then
  begin
    DBGridEh1.Canvas.Font.Color := $004F1DD3;
  end
  else
  begin
    DBGridEh1.Canvas.Font.Color := clBlack;
  end;
  
  if trim(sp_zxjl_cq.fieldbyname('fzph').asstring)<>'' then
   begin
     DBGridEh1.canvas.brush.color := $00E2BC6D;
     i:= findinarray(myrect_zx_cq,sp_zxjl_cq.fieldbyname('fzph').asstring);
     DBGridEh1.Canvas.pen.color:=$00E2BC6D;
     DBGridEh1.Canvas.MoveTo(myrect_zx_cq[i].left+20,myrect_zx_cq[i].top);
     DBGridEh1.Canvas.LineTo(myrect_zx_cq[i].left,myrect_zx_cq[i].Bottom);
     DBGridEh1.canvas.Rectangle(myrect_zx_cq[i].left,myrect_zx_cq[i].top,myrect_zx_cq[i].right,myrect_zx_cq[i].bottom);
     DBGridEh1.Canvas.pen.color:=clred;
     DBGridEh1.Canvas.MoveTo(myrect_zx_cq[i].left+20,myrect_zx_cq[i].top);
     DBGridEh1.Canvas.LineTo(myrect_zx_cq[i].left,myrect_zx_cq[i].Bottom);
     with DBGridEh1.Canvas do
      begin
        moveto(myrect_zx_cq[I].gleft,myrect_zx_cq[i].Gtop);
        lineto(myrect_zx_cq[I].gright,myrect_zx_cq[I].gtop);
        lineto(myrect_zx_cq[I].gright,myrect_zx_cq[I].gbottom);
        lineto(myrect_zx_cq[I].gleft,myrect_zx_cq[I].gbottom);
        lineto(myrect_zx_cq[I].gleft,myrect_zx_cq[i].Gtop);
      end;
     myrect1.Left:=myrect_zx_cq[i].left;
     myrect1.top:=myrect_zx_cq[i].top;
     myrect1.right:=myrect_zx_cq[i].right;
     myrect1.bottom:=myrect_zx_cq[i].bottom;
     DBGridEh1.Canvas.TextOut(myrect_zx_cq[i].left+20,
     myrect_zx_cq[i].top+round(myrect_zx_cq[i].height*((myrect_zx_cq[i].sl-0.5)/2)),myrect_zx_cq[i].tj+#13+myrect_zx_cq[i].yf);
   end;

  DBGridEh1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure Tfrm_bryzcx.DBGridEh2DblClick(Sender: TObject);
begin
  Proc_Seek_yzzxjl(qry_dj.FieldByName('tmh').AsString, qry_dj.FieldByName('zyh').AsString, qry_dj.FieldByName('brxm').AsString)
end;

procedure Tfrm_bryzcx.DBGridEh2Exit(Sender: TObject);
begin
  DBGridEh2.Visible := False;
end;

procedure Tfrm_bryzcx.DBGridEh2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 13 then
    Proc_Seek_yzzxjl(qry_dj.FieldByName('tmh').AsString, qry_dj.FieldByName('zyh').AsString, qry_dj.FieldByName('brxm').AsString)
  else if key = 27 then
    edt_tmh.SetFocus;
end;

procedure Tfrm_bryzcx.DBGridEh3ColWidthsChanged(Sender: TObject);
begin
  if sp_zxjl_ls.Active then
  createrect(myrect_zx_ls,sp_zxjl_ls,dbgrideh2,7,8,9);
end;

procedure Tfrm_bryzcx.DBGridEh3DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
  var i:integer;
  myrect1:Trect;
begin
  if Trim(sp_zxjl_ls.FieldByName('gysj').AsString) <> '' then
  begin
    DBGridEh3.Canvas.Font.Color := $004F1DD3;
  end
  else
  begin
    DBGridEh3.Canvas.Font.Color := clBlack;
  end;
    if trim(sp_zxjl_ls.fieldbyname('fzph').asstring)<>'' then
   begin
     DBGridEh3.canvas.brush.color := $00E2BC6D;
     i:= findinarray(myrect_zx_ls,sp_zxjl_ls.fieldbyname('fzph').asstring);
     DBGridEh3.Canvas.pen.color:=$00E2BC6D;
     DBGridEh3.Canvas.MoveTo(myrect_zx_ls[i].left+20,myrect_zx_ls[i].top);
     DBGridEh3.Canvas.LineTo(myrect_zx_ls[i].left,myrect_zx_ls[i].Bottom);
     DBGridEh3.canvas.Rectangle(myrect_zx_ls[i].left,myrect_zx_ls[i].top,myrect_zx_ls[i].right,myrect_zx_ls[i].bottom);
     DBGridEh3.Canvas.pen.color:=clred;
     DBGridEh3.Canvas.MoveTo(myrect_zx_ls[i].left+20,myrect_zx_ls[i].top);
     DBGridEh3.Canvas.LineTo(myrect_zx_ls[i].left,myrect_zx_ls[i].Bottom);
     with DBGridEh3.Canvas do
      begin
        moveto(myrect_zx_ls[I].gleft,myrect_zx_ls[i].Gtop);
        lineto(myrect_zx_ls[I].gright,myrect_zx_ls[I].gtop);
        lineto(myrect_zx_ls[I].gright,myrect_zx_ls[I].gbottom);
        lineto(myrect_zx_ls[I].gleft,myrect_zx_ls[I].gbottom);
        lineto(myrect_zx_ls[I].gleft,myrect_zx_ls[i].Gtop);
      end;
     myrect1.Left:=myrect_zx_ls[i].left;
     myrect1.top:=myrect_zx_ls[i].top;
     myrect1.right:=myrect_zx_ls[i].right;
     myrect1.bottom:=myrect_zx_ls[i].bottom;
     DBGridEh3.Canvas.TextOut(myrect_zx_ls[i].left+20,
     myrect_zx_ls[i].top+round(myrect_zx_ls[i].height*((myrect_zx_ls[i].sl-0.5)/2)),myrect_zx_ls[i].tj+#13+myrect_zx_ls[i].yf);
   end;
  DBGridEh3.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure Tfrm_bryzcx.DBGridEh4ColWidthsChanged(Sender: TObject);
begin
if sp_dryz.Active then
  createrect(myrect_cx,sp_dryz,dbgrideh4,10,11,16);

end;

procedure Tfrm_bryzcx.DBGridEh4DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
  var i:integer;
  myrect1:Trect;

begin
  if not sP_dryz.fieldbyname('zxbz').asboolean then
    DBGridEh4.Canvas.Brush.Color := clSkyBlue;
  if trim(sP_dryz.fieldbyname('tzfs').asstring) = '修改' then
  begin
    DBGridEh4.Canvas.Font.Color := clBlue;
  end;

  if pos('停止',trim(sP_dryz.fieldbyname('tzfs').asstring))>0  then
  begin
    DBGridEh4.Canvas.Font.Color := $004F1DD3;
  end;

    if trim(sp_dryz.fieldbyname('fzph').asstring)<>'' then
   begin
     DBGridEh4.canvas.brush.color := $00E2BC6D;
     i:= findinarray(myrect_cx,sp_dryz.fieldbyname('fzph').asstring);
     DBGridEh4.Canvas.pen.color:=$00E2BC6D;
     DBGridEh4.Canvas.MoveTo(myrect_cx[i].left+20,myrect_cx[i].top);
     DBGridEh4.Canvas.LineTo(myrect_cx[i].left,myrect_cx[i].Bottom);
     DBGridEh4.canvas.Rectangle(myrect_cx[i].left,myrect_cx[i].top,myrect_cx[i].right,myrect_cx[i].bottom);
     DBGridEh4.Canvas.pen.color:=clred;
     DBGridEh4.Canvas.MoveTo(myrect_cx[i].left+20,myrect_cx[i].top);
     DBGridEh4.Canvas.LineTo(myrect_cx[i].left,myrect_cx[i].Bottom);
     with DBGridEh4.Canvas do
      begin
        moveto(myrect_cx[I].gleft,myrect_cx[i].Gtop);
        lineto(myrect_cx[I].gright,myrect_cx[I].gtop);
        lineto(myrect_cx[I].gright,myrect_cx[I].gbottom);
        lineto(myrect_cx[I].gleft,myrect_cx[I].gbottom);
        lineto(myrect_cx[I].gleft,myrect_cx[i].Gtop);
      end;
     myrect1.Left:=myrect_cx[i].left;
     myrect1.top:=myrect_cx[i].top;
     myrect1.right:=myrect_cx[i].right;
     myrect1.bottom:=myrect_cx[i].bottom;
     DBGridEh4.Canvas.TextOut(myrect_cx[i].left+20,
     myrect_cx[i].top+round(myrect_cx[i].height*((myrect_cx[i].sl-0.5)/2)),myrect_cx[i].tj+#13+myrect_cx[i].yf);
   end;


    (Sender as TDbGridEh).DefaultDrawColumnCell(Rect, DataCol, Column, State);

end;


procedure Tfrm_bryzcx.yzinypfymx(zyh, ypid, xmid, clid, ph: string); //写入医嘱明细到药品明细及费用项目明细
begin
  if ypid <> '' then
  begin
    qry_ypyz.Close;
    qry_ypyz.SQL.Clear;
    qry_ypyz.SQL.Text := 'insert into zybl_zyyz_ypmx select zyh,id,' + #39 +
      ph + #39 + ',xmdm,ypdwid,dw,ypbzbl,' +
      'sl,yplsj from zybl_zyyz where zyh=' + #39 + zyh + #39 +
      ' and zxbz=0 and tzbz=0 and zfbz=0 and lb=' + #39 + '药品' + #39 + ' and id in (' + ypid + ')';
  end;

  if clid <> '' then
  begin
    qry_ypyz.Close;
    qry_ypyz.SQL.Clear;
    qry_ypyz.SQL.Text := 'insert into zybl_zyyz_clmx select zyh,id,' + #39 +
      ph + #39 + ',xmdm,ypdwid,dw,ypbzbl,' +
      'sl,yplsj from zybl_zyyz where zyh=' + #39 + zyh + #39 +
      ' and zxbz=0 and tzbz=0 and zfbz=0 and lb=' + #39 + '材料' + #39 + ' and id in (' + clid + ')';
  end;

  if xmid <> '' then
  begin
    qry_ypyz.Close;
    qry_ypyz.SQL.Clear;
    qry_ypyz.SQL.Text := 'insert into zybl_zyyz_fymx(yzid,tmh,zyh,ph,kdks,czks,kdys,fydm,fysl,fyje,zkje,ssje,zfje) select a.id,a.tmh,a.zyh,' +
      quotedstr(ph) + ' ph,a.kdks,a.czks,a.kdys,b.fydm,a.sl,0 fyje,0 zkje,0 ssje,0 zfje from zybl_zyyz a join sys_yzxm b on a.xmdm=b.xmdm where len(a.xmdm)=4 and a.id in (' + xmid + ')';
  end;
end;

procedure Tfrm_bryzcx.cxTabSheet1Show(Sender: TObject);
begin
  if not sp_dryz.Active then
  begin
    sp_dryz.Close;
    sp_dryz.Parameters.ParamByName('@zyh').Value := zyh;
    sp_dryz.Parameters.ParamByName('@yzsx').Value := '';
    sp_dryz.Open;
  end
  else
  dbgrideh4.OnColWidthsChanged(sender);
end;

procedure Tfrm_bryzcx.Proc_Seek_dj(const v_tmh: string);
  procedure Proc_Seek_SQL(const v_SQL: string);
  begin
    qry_dj.Close;
    qry_dj.SQL.Text := v_SQL;
    qry_dj.Parameters.ParamByName('zyh').Value := v_tmh;
    qry_dj.Parameters.ParamByName('tmh').Value := '%' + v_tmh + '%';
    qry_dj.Parameters.ParamByName('ksdm').Value := Pub_ksdm;
    qry_dj.Parameters.ParamByName('zyh1').Value := v_tmh;
    qry_dj.Parameters.ParamByName('tmh1').Value := '%' + v_tmh + '%';
    qry_dj.Parameters.ParamByName('ksdm1').Value := Pub_ksdm;
    qry_dj.Open;
  end;
begin
  Proc_Seek_SQL(con_sql_zy);
  if qry_dj.RecordCount > 1 then
  begin
    DBGridEh2.Visible := True;
    DBGridEh2.SetFocus;
  end
  else if qry_dj.RecordCount = 1 then
    Proc_Seek_yzzxjl(qry_dj.FieldByName('tmh').AsString, qry_dj.FieldByName('zyh').AsString, qry_dj.FieldByName('brxm').AsString);
//  else
//  begin
//    Proc_Seek_SQL(con_sql_cy);
//    if qry_dj.RecordCount > 1 then
//    begin
//      DBGridEh2.Visible := True;
//      DBGridEh2.SetFocus;
//    end
//    else if qry_dj.RecordCount = 1 then
//      Proc_Seek_yzzxjl(qry_dj.FieldByName('tmh').AsString, qry_dj.FieldByName('zyh').AsString, qry_dj.FieldByName('brxm').AsString);
//  end;
end;

procedure Tfrm_bryzcx.Proc_Seek_yzzxjl(const v_tmh, v_zyh, v_brxm: string);
begin
  with sp_zxjl_cq do
  begin
    Close;
    Parameters.ParamByName('@zyh').Value := v_zyh;
    Parameters.ParamByName('@fs').Value := 0;
    Open;
  end;

  with sp_zxjl_ls do
  begin
    Close;
    Parameters.ParamByName('@zyh').Value := v_zyh;
    Parameters.ParamByName('@fs').Value := 1;
    Open;
  end;

  edt_tmh.Text := v_tmh;
  BBtn_print_cq.SetFocus;
end;

procedure Tfrm_bryzcx.QRSubDetail1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
     if paper_size>27 then
      begin
        quickrep1.NewPage;
        paper_size:=0;
      end;

end;

procedure Tfrm_bryzcx.QRSubDetail1NeedData(Sender: TObject;
  var MoreData: Boolean);
var
 I: integer;
begin
MoreData := True;
i:=1;
 if sp_zxjl_cq_dy.Eof then
  MoreData := False;
  ksrq.Caption:='';
  kdysmc.Caption:='';
  zxhsmc.Caption:='';
  xmmc.Caption:='';
  tzrq.Caption:='';
  tzysmc.Caption:='';
  zhhsmc.Caption:='';
  zxzxsj.caption:='';
  zhzxsj.caption:='';

  if not sp_zxjl_cq_dy.eof then
  begin
     ksrq.Caption := sp_zxjl_cq_dy.FieldByName('ksrq').Asstring;
     kdysmc.Caption := sp_zxjl_cq_dy.FieldByName('kdysmc').Asstring;
     zxhsmc.Caption := sp_zxjl_cq_dy.FieldByName('zxhsmc').Asstring;
     if ((length(sp_zxjl_cq_dy.FieldByName('xmmc').Asstring)*8) div 200)<=2 then
      paper_size:=paper_size+((length(sp_zxjl_cq_dy.FieldByName('min_jlsj').Asstring)*8) div 46)
     else
      paper_size:=paper_size+((length(sp_zxjl_cq_dy.FieldByName('xmmc').Asstring)*8) div 200);
     if sp_zxjl_cq_dy.FieldByName('fzph').asstring<>'' then
      begin
      I:=(length(sp_zxjl_cq_dy.FieldByName('xmmc').Asstring)*8) div 200;
      qrgrimage1.enabled:=true;
      qrgrimage1.Top:=1;
      qrgrimage1.left:=ypyf.left-20;
      qrgrimage1.height:=i*ypyf.height;
      ypyf.top:= i*ypyf.height div 2;
      ypyf.Caption:=trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring)+'  '+trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
      xmmc.Width:=200;
      xmmc.caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring;
      end
      else
      begin
      qrgrimage1.enabled:=false;
       xmmc.Width:=257;
       ypyf.Caption:='';
       xmmc.caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring+'  '+trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring)+'  '+trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
      end;
     tzrq.Caption := sp_zxjl_cq_dy.FieldByName('tzrq').Asstring;
     tzysmc.Caption := sp_zxjl_cq_dy.FieldByName('tzysmc').Asstring;
     zhhsmc.Caption := sp_zxjl_cq_dy.FieldByName('zhhsmc').Asstring;
     zxzxsj.Caption := sp_zxjl_cq_dy.FieldByName('min_jlsj').Asstring;
     zhzxsj.Caption := sp_zxjl_cq_dy.FieldByName('max_jlsj').Asstring;
     sp_zxjl_cq_dy.Next;
     
  end;
end;

procedure Tfrm_bryzcx.QRSubDetail2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
     if paper_size>31 then
      begin
        quickrep2.NewPage;
        paper_size:=0;
      end;
end;

procedure Tfrm_bryzcx.QRSubDetail2NeedData(Sender: TObject;
  var MoreData: Boolean);
var
 I: integer;
begin
MoreData := True;
i:=1;
 if sp_zxjl_ls_dy.Eof then
  MoreData := False;
  ksrq_ls.Caption:='';
  kdys_ls.Caption:='';
  zxryxm_ls.Caption:='';
  xmmc_ls.Caption:='';
  zxsj_ls.caption:='';
  ypyf_ls.caption:='';

  if not sp_zxjl_ls_dy.eof then
  begin
     ksrq_ls.Caption := sp_zxjl_ls_dy.FieldByName('ksrq').Asstring;
     kdys_ls.Caption := sp_zxjl_ls_dy.FieldByName('kdysmc').Asstring;
     zxryxm_ls.Caption := sp_zxjl_ls_dy.FieldByName('zxhsmc').Asstring;
//     zxsj_ls.Caption := sp_zxjl_ls_dy.FieldByName('gysj').Asstring;
     if ((length(sp_zxjl_ls_dy.FieldByName('xmmc').Asstring)*8) div 292)<=2 then
      paper_size:=paper_size+((length(sp_zxjl_ls_dy.FieldByName('gysj').Asstring)*8) div 53)
     else
      paper_size:=paper_size+((length(sp_zxjl_ls_dy.FieldByName('xmmc').Asstring)*8) div 292);
     if sp_zxjl_ls_dy.FieldByName('fzph').asstring<>'' then
      begin
      I:=(length(sp_zxjl_ls_dy.FieldByName('xmmc').Asstring)*8) div 272;
      QRImage1.enabled:=true;
      QRImage1.top:=1;
      QRImage1.left:=ypyf_ls.left-20;
      QRImage1.height:=i*ypyf_ls.height;
      ypyf_ls.top:= i*ypyf.height div 2;
      ypyf_ls.Caption:=trim(sp_zxjl_ls_dy.FieldByName('yytj').asstring)+'  '+trim(sp_zxjl_ls_dy.FieldByName('ypyf').asstring);
      xmmc_ls.Width:=272;
      xmmc_ls.caption := sp_zxjl_ls_dy.FieldByName('xmmc').Asstring;
      end
      else
      begin
       QRImage1.enabled:=false;
       xmmc_ls.Width:=292;
       ypyf_ls.Caption:='';
       xmmc_ls.caption := sp_zxjl_ls_dy.FieldByName('xmmc').Asstring+'  '+trim(sp_zxjl_ls_dy.FieldByName('yytj').asstring)+'  '+trim(sp_zxjl_ls_dy.FieldByName('ypyf').asstring);
      end;
     zxsj_ls.Caption := sp_zxjl_ls_dy.FieldByName('gysj').Asstring;
     sp_zxjl_ls_dy.Next;
     
  end;
end;

procedure Tfrm_bryzcx.cxTabSheet2Show(Sender: TObject);
begin
  Proc_Seek_dj(zyh);
end;

initialization
  RegisterClass(Tfrm_bryzcx);
end.

