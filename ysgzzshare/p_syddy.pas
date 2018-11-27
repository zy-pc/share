unit p_syddy;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, GridsEh, DBGridEh, ExtCtrls, ADODB, DB, ComCtrls, Buttons, printers,
  QRCtrls, QuickRpt, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGrid, cxCheckBox, pBarCode,HBarCode, p_ICF, DBGridEhGrouping;
type
  Tmyrect = record   //定义结构
    ph: string;
    top, left, right, bottom, sl, height: integer;
    yf, tj: string;
    gtop, gleft, gright, gbottom: integer;
  end;
type
  TTmyrect = array[0..1000] of Tmyrect;   //定义一个数组

type
  Tfrm_syddy = class( TForm )
    Panel1: TPanel;
    GroupBox2: TGroupBox;
    Panel2: TPanel;
    ds_sybr: TDataSource;
    ds_ypqd: TDataSource;
    sp_dryz: TADOStoredProc;
    Label2: TLabel;
    dt_zxsj: TDateTimePicker;
    sp_yzsj: TADOStoredProc;
    ScrollBox1: TScrollBox;
    DBGridEh2: TDBGridEh;
    Timer1: TTimer;
    Timer2: TTimer;
    sp_sybr: TADOStoredProc;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    qb: TCheckBox;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    Shape1: TShape;
    Shape2: TShape;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    Shape3: TShape;
    Shape4: TShape;
    QuickRep1: TQuickRep;
    PageFooterBand1: TQRBand;
    QRLabel13: TQRLabel;
    PageHeaderBand1: TQRBand;
    QRShape1: TQRShape;
    QRL_yymc_cq: TQRLabel;
    QRL_brxm_cq: TQRLabel;
    sj1: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel8: TQRLabel;
    QRShape3: TQRShape;
    QRShape5: TQRShape;
    QRShape10: TQRShape;
    QRShape13: TQRShape;
    QRL_bch_cq: TQRLabel;
    xb_cq: TQRLabel;
    nl_cq: TQRLabel;
    sp_zxjl_cq_dy: TADOStoredProc;
    ny: TQRLabel;
    QRShape2: TQRShape;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel5: TQRLabel;
    QRShape19: TQRShape;
    QRShape7: TQRShape;
    DetailBand1: TQRBand;
    QRShape4: TQRShape;
    QRShape6: TQRShape;
    QRShape8: TQRShape;
    ksrq0: TQRLabel;
    xmmc0: TQRLabel;
    QRgrImage1: TQRImage;
    ypyf0: TQRLabel;
    kdysmc0: TQRLabel;
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
    QRShape38: TQRShape;
    QRShape39: TQRShape;
    QRShape40: TQRShape;
    QRShape41: TQRShape;
    QRShape42: TQRShape;
    QRShape43: TQRShape;
    QRShape44: TQRShape;
    QRShape45: TQRShape;
    QRShape47: TQRShape;
    QRShape48: TQRShape;
    QRShape49: TQRShape;
    QRShape50: TQRShape;
    QRShape51: TQRShape;
    QRShape52: TQRShape;
    kdysmc1: TQRLabel;
    ypyf1: TQRLabel;
    QRgrImage2: TQRImage;
    xmmc1: TQRLabel;
    ksrq2: TQRLabel;
    kdysmc2: TQRLabel;
    xmmc2: TQRLabel;
    QRgrImage3: TQRImage;
    ypyf2: TQRLabel;
    ksrq3: TQRLabel;
    kdysmc3: TQRLabel;
    xmmc3: TQRLabel;
    QRgrImage4: TQRImage;
    ypyf3: TQRLabel;
    ksrq4: TQRLabel;
    kdysmc4: TQRLabel;
    xmmc4: TQRLabel;
    QRgrImage5: TQRImage;
    ypyf4: TQRLabel;
    ksrq5: TQRLabel;
    kdysmc5: TQRLabel;
    xmmc5: TQRLabel;
    QRgrImage6: TQRImage;
    ypyf5: TQRLabel;
    ksrq6: TQRLabel;
    kdysmc6: TQRLabel;
    xmmc6: TQRLabel;
    QRgrImage7: TQRImage;
    ypyf6: TQRLabel;
    ksrq7: TQRLabel;
    kdysmc7: TQRLabel;
    xmmc7: TQRLabel;
    QRgrImage8: TQRImage;
    ypyf7: TQRLabel;
    ksrq8: TQRLabel;
    kdysmc8: TQRLabel;
    xmmc8: TQRLabel;
    QRgrImage9: TQRImage;
    ypyf8: TQRLabel;
    ksrq1: TQRLabel;
    QRShape46: TQRShape;
    Button1: TButton;
    Button2: TButton;
    sp_syjhzxd: TADOStoredProc;
    Button3: TButton;
    Button4: TButton;
    BitBtn10: TBitBtn;
    DBGridEh1: TDBGridEh;
    Button5: TButton;
    Button6: TButton;
    SpeedButton2: TSpeedButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    Button11: TButton;
    BitBtn_selectllabel: TBitBtn;
    ado_qry_insert: TADOQuery;
    sp_syd: TADOStoredProc;
    sp_syd_xg: TADOStoredProc;
    ADOQuery1: TADOQuery;
    sp_dyxh: TADOStoredProc;
    zyks: TADOQuery;
    sp_ddyy_syjhzxd: TADOStoredProc;
    Button13: TButton;
    Button12: TButton;
    Button14: TButton;
    Button15: TButton;
    procedure FormShow( Sender: TObject );
    procedure DBGridEh2ColWidthsChanged( Sender: TObject );
    procedure DBGridEh2DrawColumnCell( Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState );
    procedure sp_dryzAfterOpen( DataSet: TDataSet );
    procedure FormResize( Sender: TObject );
    procedure SpeedButton1Click( Sender: TObject );
    procedure BitBtn3Click( Sender: TObject );
    procedure DBGridEh1CellClick( Column: TColumnEh );
    procedure qbClick( Sender: TObject );
    procedure BitBtn5Click( Sender: TObject );
    procedure BitBtn4Click( Sender: TObject );
    procedure BitBtn1Click( Sender: TObject );
    procedure BitBtn2Click( Sender: TObject );
    procedure dt_zxsjChange( Sender: TObject );
    procedure BitBtn8Click( Sender: TObject );
    procedure BitBtn9Click( Sender: TObject );
    procedure BitBtn6Click( Sender: TObject );
    procedure BitBtn7Click( Sender: TObject );
    procedure QuickRep1BeforePrint( Sender: TCustomQuickRep;
      var PrintReport: Boolean );
    procedure QRSubDetail1NeedData( Sender: TObject; var MoreData: Boolean );
    procedure FormCreate( Sender: TObject );
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure sp_sybrAfterEdit(DataSet: TDataSet);
    procedure sp_sybrAfterPost(DataSet: TDataSet);
    procedure DBGridEh2CellClick(Column: TColumnEh);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure qyydhszdy;
    procedure qyydhszdy_xz;
    procedure gkyydy;
    procedure BitBtn_selectllabelClick(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
  private
    zyh_zfc:string;
    procedure ChangePrinter;
    procedure ChangePrinter_syjhd;
    procedure ChangePrinter_sybq;
    procedure ChangePrinter_ddyysypq(_index: Integer); //掇刀医院输液瓶签打印
    procedure RevertPrinter;
    procedure QR3ShaYaOfficeBed; //quickRep3沙雅格式 显示科室 病床号 姓名 之前：床号 姓名 年龄
    procedure QR3DisplayAge;//quickRep3 沙雅格式 不显示 年龄
    procedure PrintSYXSK(ltst: TCQLS; zyh: string='');//打印输液巡视卡（输液计划单）
    function Get_dytjsz(ltst:TCQLS):string;//取得需要打印的用药途径
    function Get_dylbsz(ltst:TCQLS):string;//取得需要打印的医嘱类别
    procedure ShayaStyle;//沙雅县人民医院格式
    procedure tsyyStyle;//台山医院格式
    procedure qzyyStyle;//全州医院格式
    procedure jyxrmyyStyle;//井研县人民医院格式
    { Private declarations }
  public
    { Public declarations }
    Switch: Boolean;
    rectno: integer;
    prv_zyh: string;
    procedure createrect( var myrect1: TTmyrect; dataset_rect: Tcustomadodataset; grid_yzlr1: Tdbgrideh; x1, x2, x3: integer );
  end;

var
  frm_syddy: Tfrm_syddy;
  myrect: TTmyrect;
  myrect_cx, myrect_zx_cq, myrect_zx_ls: TTmyrect;
  x: integer;
  sfqyydhsz:Boolean;

  v_IsPrinterJoin: Boolean;
  v_PrinterIndex_new: Integer;
  v_PrinterIndex_old: Integer;
  qhbz: string;

function findinarray( myrect: TTmyrect; zd: string ): integer;
procedure initarray( myrect: TTmyrect );

implementation
uses p_dm, p_func, p_print_syfz, p_print_sybq,p_zysf_print_service;
{$R *.dfm}

function findinarray( myrect: TTmyrect; zd: string ): integer;
var
  i: integer;
  mark: boolean;
begin
  mark := true;
  i := 0;
  while ( i < 99 ) and mark do
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

procedure initarray( myrect: TTmyrect );
var
  i: integer;
begin
  for i := 0 to 1000 do
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

procedure Tfrm_syddy.jyxrmyyStyle;//井研县人民医院格式
begin
  frm_print_sybq.QuickRep3.Page.Length:=35;
  frm_print_sybq.QuickRep3.Page.Width:=48;
  frm_print_sybq.PageHeaderBand3.Height:=31;
  frm_print_sybq.bch1.Font.Size:=8;
  frm_print_sybq.bch1.AutoSize:=True;
  frm_print_sybq.brxm1.Font.Size:=8;
  frm_print_sybq.xmmc1.Font.Size:=8;
  frm_print_sybq.xmmc1.AutoSize:=True;
  frm_print_sybq.brxm1.AutoSize:=True;
  frm_print_sybq.bch1.Caption:='床 号 '+ trim(frm_print_sybq.bch1.Caption);
  frm_print_sybq.brxm1.Caption:='姓名 '+trim(frm_print_sybq.brxm1.Caption);
  frm_print_sybq.tmh.Caption:='住院号 '+trim(sp_dryz.fieldbyname( 'tmh' ).asstring);
  frm_print_sybq.tmh.top :=19;
  frm_print_sybq.tmh.left:=frm_print_sybq.bch1.Left;
  frm_print_sybq.tmh.Font.Size:=8;
  frm_print_sybq.brnl1.top:=19;
  frm_print_sybq.brnl1.Font.Size:=8;
  frm_print_sybq.brxm1.left:=frm_print_sybq.brnl1.left-1;
  frm_print_sybq.PageFooterBand1.Height:=50;
  frm_print_sybq.qr_yytj.top:=frm_print_sybq.qr_sm.top;
  frm_print_sybq.qr_yytj.left:=frm_print_sybq.bch1.left;
  frm_print_sybq.qr_pl.Font.Size:=8;
  frm_print_sybq.qr_pl.top:=frm_print_sybq.qr_sm.top+10;
  frm_print_sybq.qr_pl.left:=frm_print_sybq.bch1.left+10;
  frm_print_sybq.qr_sm.Font.Size:=8;
  frm_print_sybq.qr_sm.top:=frm_print_sybq.qr_sm.top;
  frm_print_sybq.qr_sm.left:=frm_print_sybq.bch1.left+25;
  frm_print_sybq.dyrq1.Font.Size:=8;
  frm_print_sybq.dyrq1.top:=frm_print_sybq.qr_sm.top;
  frm_print_sybq.dyrq1.left:=frm_print_sybq.brxm1.left;
  frm_print_sybq.qmpy.caption:='时间';
  frm_print_sybq.qmhd.caption:='签名';
  frm_print_sybq.qmpy.Font.Size:=9;
  frm_print_sybq.qmhd.Font.Size:=9;
  frm_print_sybq.qmpy.top:=10+frm_print_sybq.qmpy.top;
  frm_print_sybq.qmhd.top:=10+frm_print_sybq.qmhd.top;
  frm_print_sybq.qmpy.left:=frm_print_sybq.bch1.left;
  frm_print_sybq.qmhd.left:=frm_print_sybq.brxm1.left-20;
end;
procedure Tfrm_syddy.qzyyStyle; //全州医院格式
begin

    frm_print_sybq.QuickRep3.Page.Length:=50;
    frm_print_sybq.QuickRep3.Page.Width:=76;
    frm_print_sybq.PageFooterBand1.Height:=97;
    frm_print_sybq.bch1.top :=8;
    frm_print_sybq.brxm1.top :=8;
    frm_print_sybq.brnl1.top :=8;
    frm_print_sybq.xmmc1.Left :=10;
    frm_print_sybq.xmmc1.top :=4;
    frm_print_sybq.bch1.Left :=10;
    frm_print_sybq.xmmc1.AutoSize:=True;
    frm_print_sybq.bch1.AutoSize:=True;
    frm_print_sybq.brxm1.AutoSize:=True;
    frm_print_sybq.brnl1.AutoSize:=True;
    frm_print_sybq.brxm1.left:=130;
    frm_print_sybq.brnl1.left:=235;
    frm_print_sybq.bch1.Caption:='床号:'+frm_print_sybq.bch1.caption;
    frm_print_sybq.brxm1.Caption:='姓名:'+frm_print_sybq.brxm1.Caption;
    frm_print_sybq.qr_yytj.top:=25;
    frm_print_sybq.qr_pl.top:=25;
    frm_print_sybq.qr_sm.top:=25;
    frm_print_sybq.dyrq1.top:=25;
    frm_print_sybq.dyrq1.left:=180;
    frm_print_sybq.xmmc1.Font.Size:=9;
    frm_print_sybq.bch1.Font.Size:=10;
    frm_print_sybq.brxm1.Font.Size:=10;
    frm_print_sybq.brnl1.Font.Size:=10;
    frm_print_sybq.qr_yytj.Font.Size:=9;
    frm_print_sybq.qr_pl.Font.Size:=9;
    frm_print_sybq.qr_sm.Font.Size:=9;
    frm_print_sybq.dyrq1.Font.Size:=9;
end;


procedure Tfrm_syddy.gkyydy;
begin
  if pub_yydm='0067' then             //骨科医院要求字体调整大一号
  begin
    frm_print_sybq.bch1.Caption:=trim( sp_dryz.fieldbyname( 'bch' ).asstring );
    frm_print_sybq.bch1.Font.Size:=10;
    frm_print_sybq.brxm1.Font.Size:=10;
    frm_print_sybq.brnl1.Font.Size:=10;
    frm_print_sybq.xmmc1.Font.Size:=9;
    frm_print_sybq.dyrq1.Font.Size:=8;
    frm_print_sybq.qr_yytj.Font.Size:=8;
    frm_print_sybq.qr_sm.Font.Size:=8;
  end;
  if pub_yydm = '0266' then //广元召化修改瓶签字体
    frm_print_sybq.xmmc1.Font.Size := 6;
end;

procedure Tfrm_syddy.BitBtn10Click(Sender: TObject);
var
  fzbh, yzid: string;
  sl,i:Integer;
begin
  Switch := True;
  ChangePrinter;
  if not sp_dryz.isempty then
  begin
    application.CreateForm( Tfrm_print_sybq, frm_print_sybq );
    try
      sp_sybr.DisableControls;
      if not qb.checked then
      begin
        sp_sybr.Filter := 'zyh=' + #39 + sp_sybr.fieldbyname( 'zyh' ).asstring + #39;
        sp_sybr.filtered := true;
        sp_dryz.Filtered := false;
        sp_dryz.Filter := 'zyh=' + #39 + sp_sybr.fieldbyname( 'zyh' ).asstring + #39;
        sp_dryz.filtered := true;
      end
      else
      begin
        sp_sybr.Filtered := false;
        sp_sybr.First;
        sp_dryz.Filtered := false;
        sp_dryz.First;
      end;
      sp_sybr.First;
      while not sp_dryz.eof do
      begin
        fzbh := get_sjh( pub_czydm );
        yzid := Trim( sp_dryz.fieldbyname( 'yzid' ).asstring );
        if Trim( sp_dryz.fieldbyname( 'fzph' ).asstring ) = '' then
        begin
          DM_data.qry_pub.Close;
          DM_data.qry_pub.SQL.text := 'update zybl_zyyz set fzph=' + '''' + fzbh + '''' + ' where ' +
            'zyh=' + '''' + sp_dryz.fieldbyname( 'zyh' ).asstring + '''' +
            ' and id=' + yzid;
          DM_data.qry_pub.ExecSQL;
        end;
        sp_dryz.Next;
      end;
      sp_sybr.First;
      while not sp_sybr.eof do
      begin
        if sp_sybr.FieldByName('xzbz').AsBoolean=true then
        begin
        frm_print_sybq.dyrq.caption := '日期：' + formatdatetime( 'yyyy-mm-dd hh:mm:ss', frm_func.curr_date );
        frm_print_sybq.zxsj.caption := '执行日期：' + formatdatetime( 'yyyymmdd', dt_zxsj.date );
        frm_print_sybq.dyrq1.caption := '日期：' + formatdatetime( 'yyyy-mm-dd', dt_zxsj.date );
        frm_print_sybq.sp_syfz.close;
        frm_print_sybq.sp_syfz.Parameters.ParamByName( '@zyh' ).value := sp_sybr.fieldbyname( 'zyh' ).asstring;
        frm_print_sybq.sp_syfz.Parameters.ParamByName( '@zxsj' ).value := formatdatetime( 'yyyymmdd', dt_zxsj.date );
        frm_print_sybq.sp_syfz.Parameters.ParamByName( '@syfzph' ).value := '';
        frm_print_sybq.sp_syfz.Parameters.ParamByName( '@dyfs' ).value := 1;
        frm_print_sybq.sp_syfz.open;
        if not frm_print_sybq.sp_syfz.IsEmpty then
        begin
          if ( pub_yydm <> '0051' ) then
          begin
            if pub_yydm='0003' then
            begin
                frm_print_sybq.QRLabel4.caption := '日期：' + formatdatetime( 'MM-dd', dt_zxsj.date );
                frm_print_sybq.QRLabel1.Caption := sp_sybr.fieldbyname( 'brxm' ).asstring;
                if formatdatetime( 'yyyymmdd', frm_func.curr_date ) > formatdatetime( 'yyyymmdd', dt_zxsj.date ) then
                begin
                  frm_print_sybq.QRLabel2.Caption := trim( sp_sybr.fieldbyname( 'bch' ).asstring ) + '(★)';
                end
                else
                begin
                  frm_print_sybq.QRLabel2.Caption := trim( sp_sybr.fieldbyname( 'bch' ).asstring ) + '床'
                end;
                frm_print_sybq.brnl.Caption := '年龄：'+sp_sybr.fieldbyname( 'brnl' ).asstring;
                frm_print_sybq.QRLabel8.Caption := '条码号：'+sp_sybr.fieldbyname( 'tmh' ).asstring;
               qyydhszdy;
            end
            else if sfqyydhsz=true then        //0
            begin
                frm_print_sybq.QRLabel4.caption := '日期：' + formatdatetime( 'MM-dd', dt_zxsj.date );
                frm_print_sybq.QRLabel1.Caption := sp_sybr.fieldbyname( 'brxm' ).asstring;
                if formatdatetime( 'yyyymmdd', frm_func.curr_date ) > formatdatetime( 'yyyymmdd', dt_zxsj.date ) then
                begin
                  frm_print_sybq.QRLabel2.Caption := trim( sp_sybr.fieldbyname( 'bch' ).asstring ) + '(★)';
                end
                else
                begin
                  frm_print_sybq.QRLabel2.Caption := trim( sp_sybr.fieldbyname( 'bch' ).asstring ) + '床'
                end;
                frm_print_sybq.brnl.Caption := '年龄：'+sp_sybr.fieldbyname( 'brnl' ).asstring;
                frm_print_sybq.QRLabel8.Caption := '条码号：'+sp_sybr.fieldbyname( 'tmh' ).asstring;
              qyydhszdy;
            end
            else
            begin
              if pub_yydm='0015' then
              begin
                frm_print_sybq.QRLabel11.Caption := sp_sybr.fieldbyname( 'brxm' ).asstring;
                frm_print_sybq.QRLabel12.Caption := trim( sp_sybr.fieldbyname( 'bch' ).asstring ) + '床';
                frm_print_sybq.QRLabel17.Caption := sp_sybr.fieldbyname( 'brnl' ).asstring;
                frm_print_sybq.qrlbl18.Caption   := sp_sybr.fieldbyname( 'tmh' ).asstring;
                qyydhszdy_xz;
              end
              else if (pub_yydm='0204')or(pub_yydm='0246') then
              begin
                frm_print_sybq.brnl1_1.Caption := sp_sybr.fieldbyname( 'brnl' ).asstring;
                frm_print_sybq.dyrq1_1.caption := '日期：' + formatdatetime( 'MM-dd', dt_zxsj.date );

                frm_print_sybq.brxm.Caption := sp_sybr.fieldbyname( 'brxm' ).asstring;
                frm_print_sybq.brxm1_1.Caption := sp_sybr.fieldbyname( 'brxm' ).asstring;
                if formatdatetime( 'yyyymmdd', frm_func.curr_date ) > formatdatetime( 'yyyymmdd', dt_zxsj.date ) then
                begin
                  frm_print_sybq.bch.Caption := sp_sybr.fieldbyname( 'bch' ).asstring + '(★)';
                  frm_print_sybq.bch1_1.Caption := Trim(sp_sybr.fieldbyname( 'bch' ).asstring) + '床(★)';
                end
                else
                begin
                  frm_print_sybq.bch.Caption := sp_sybr.fieldbyname( 'bch' ).asstring;
                  frm_print_sybq.bch1_1.Caption := Trim(sp_sybr.fieldbyname( 'bch' ).asstring) + '床';
                end;
                //frm_print_sybq.ksmc1.Caption:= sp_sybr.fieldbyname('ksmc').asstring;
               // frm_print_sybq.qr_sm_1_1.caption := frm_print_sybq.sp_syfz.FieldByName( 'bz' ).AsString;
                //frm_print_sybq.quickrep3.PrinterSettings.PrinterIndex := printer.Printers.IndexOf('条码打印机');
    //            if ( frm_print_sybq.QuickRep3.Printer.PrinterName <> Printer.Printers[v_PrinterIndex_new] ) and ( v_IsPrinterJoin ) then
    //            begin
    //              frm_print_sybq.QuickRep3.Printer.PrinterName := Printer.Printers[v_PrinterIndex_new];
    //            end;
                if v_IsPrinterJoin then
                if  frm_print_sybq.QuickRep6.PrinterSettings.PrinterIndex <> v_PrinterIndex_new then
                begin
                  frm_print_sybq.QuickRep6.PrinterSettings.PrinterIndex := v_PrinterIndex_new;
                end;
                if pub_yydm='0229' then
                begin
                  frm_print_sybq.QuickRep3.Page.Length:=32.5;
                  frm_print_sybq.QuickRep3.Margins.Bottom:=3;
                end;
                frm_print_sybq.QuickRep6.print;
              end
              else
              begin
                if (pub_yydm='0262') or (pub_yydm='0271') then
                begin
                  if (pub_yydm='0271')  then
                    ChangePrinter_ddyysypq(7);
                  frm_zysf_print_service.Printsypq(frm_print_sybq.sp_syfz,sp_sybr.fieldbyname( 'bch' ).asstring,sp_sybr.fieldbyname( 'brxm' ).asstring,sp_sybr.fieldbyname( 'zyh' ).asstring ,sp_sybr.fieldbyname( 'tmh' ).asstring,sp_sybr.fieldbyname( 'brxb' ).asstring,sp_sybr.fieldbyname( 'brnl' ).asstring,formatdatetime( 'MM-dd', dt_zxsj.date ));
                end
                else
                begin
                  QR3DisplayAge;
                  frm_print_sybq.dyrq1.caption := '日期：' + formatdatetime( 'MM-dd', dt_zxsj.date );
                  frm_print_sybq.brxm.Caption := sp_sybr.fieldbyname( 'brxm' ).asstring;
                  frm_print_sybq.brxm1.Caption := sp_sybr.fieldbyname( 'brxm' ).asstring;
                  QR3ShaYaOfficeBed;
                  //frm_print_sybq.ksmc1.Caption:= sp_sybr.fieldbyname('ksmc').asstring;
                  //frm_print_sybq.qr_sm.caption := frm_print_sybq.sp_syfz.FieldByName( 'bz' ).AsString;
                  //frm_print_sybq.quickrep3.PrinterSettings.PrinterIndex := printer.Printers.IndexOf('条码打印机');
      //            if ( frm_print_sybq.QuickRep3.Printer.PrinterName <> Printer.Printers[v_PrinterIndex_new] ) and ( v_IsPrinterJoin ) then
      //            begin
      //              frm_print_sybq.QuickRep3.Printer.PrinterName := Printer.Printers[v_PrinterIndex_new];
      //            end;
                  if v_IsPrinterJoin then
                  if  frm_print_sybq.QuickRep3.PrinterSettings.PrinterIndex <> v_PrinterIndex_new then
                  begin
                    frm_print_sybq.QuickRep3.PrinterSettings.PrinterIndex := v_PrinterIndex_new;
                  end;
                  if pub_yydm='0229' then
                  begin
                    frm_print_sybq.QuickRep3.Page.Length:=32.5;
                    frm_print_sybq.QuickRep3.Margins.Bottom:=3;
                  end;
                  gkyydy;         //骨科医院打印要求字体大一号
                  if pub_yydm='0012'  then    //三台中医院姓名有5个字要打全
                  begin
                    frm_print_sybq.bch1.Left:=1;
                    frm_print_sybq.bch1.Width:=35;//frm_print_sybq.bch1.Width -14;
                    frm_print_sybq.brxm1.Left:=36;//frm_print_sybq.brxm1.Left -14;
                    frm_print_sybq.brxm1.Width:=72;//frm_print_sybq.brxm1.width + 14;
                    frm_print_sybq.brnl1.Font.Size:=7;
                    frm_print_sybq.brnl1.Left:=113;//frm_print_sybq.brnl1.Left+2;
                  end;
                  if pub_yydm='0269' then
                  begin
                    tsyyStyle;//台山医院打印格式
                  end;
                  if pub_yydm='0260' then
                  begin
                    jyxrmyyStyle;
                  end;
                  frm_print_sybq.QuickRep3.print;
                end;
              end;
            end;
          end
          else
          begin
            frm_print_sybq.dyrq_1.caption := '日期：' + formatdatetime( 'MM-dd', dt_zxsj.date );
            frm_print_sybq.brxm.Caption := sp_sybr.fieldbyname( 'brxm' ).asstring;
            frm_print_sybq.brxm_1.Caption := sp_sybr.fieldbyname( 'brxm' ).asstring;
            if formatdatetime( 'yyyymmdd', frm_func.curr_date ) > formatdatetime( 'yyyymmdd', dt_zxsj.date ) then
            begin
              frm_print_sybq.bch.Caption := sp_sybr.fieldbyname( 'bch' ).asstring + '(★)';
              frm_print_sybq.bch_1.Caption := sp_sybr.fieldbyname( 'bch' ).asstring + '(★)';
            end
            else
            begin
              frm_print_sybq.bch.Caption := sp_sybr.fieldbyname( 'bch' ).asstring;
              frm_print_sybq.bch_1.Caption := sp_sybr.fieldbyname( 'bch' ).asstring;
            end;
            //frm_print_sybq.ksmc1.Caption:= sp_sybr.fieldbyname('ksmc').asstring;
            //frm_print_sybq.qr_sm_1.caption := frm_print_sybq.sp_syfz.FieldByName( 'bz' ).AsString;
            //frm_print_sybq.quickrep2.PrinterSettings.PrinterIndex := printer.Printers.IndexOf( '条码打印机' );
//            if ( frm_print_sybq.QuickRep2.Printer.PrinterName <> Printer.Printers[v_PrinterIndex_new] ) and ( v_IsPrinterJoin ) then
//            begin
//              frm_print_sybq.QuickRep2.Printer.PrinterName := Printer.Printers[v_PrinterIndex_new];
//            end;
            if v_IsPrinterJoin=True then
            if  frm_print_sybq.QuickRep2.PrinterSettings.PrinterIndex <> v_PrinterIndex_new then
            begin
              frm_print_sybq.QuickRep2.PrinterSettings.PrinterIndex := v_PrinterIndex_new;
            end;
            frm_print_sybq.QuickRep2.print;
//            if ( frm_print_sybq.QuickRep2.Printer.PrinterName <> frm_print_sybq.QuickRep2.Printers[v_PrinterIndex_old] ) and ( v_IsPrinterJoin ) then
//            begin
//              frm_print_sybq.QuickRep2.Printer.PrinterName := Printer.Printers[v_PrinterIndex_old];
//            end;

          end;
        end;
          sp_sybr.Next;
        end
        else
        begin
          sp_sybr.Next;
        end;
      end;
    finally
      frm_print_sybq.Free;
      sp_sybr.EnableControls;
      sp_sybr.Filtered := false;
    end;
  end;
  //RevertPrinter;

end;

procedure Tfrm_syddy.BitBtn_selectllabelClick(Sender: TObject);
 var
  yzid,zh, fzbh: string;
  sl,i:Integer;
begin
  if (sp_sybr.IsEmpty)  and (sp_dryz.IsEmpty) then
  begin
    ShowMessage('没有选择要打印的病人信息！');
    Exit;
  end;
  Switch := True;
  ChangePrinter;
   zh:='';
  sp_dryz.first;
  while not sp_dryz.eof do
  begin
    yzid := Trim( sp_dryz.fieldbyname( 'yzid' ).asstring );     //选中的医嘱号
    fzbh := get_sjh( pub_czydm );                              //产生一个编号
    if Trim( sp_dryz.fieldbyname( 'fzph' ).asstring ) = '' then
    begin
      DM_data.qry_pub.Close;
      DM_data.qry_pub.SQL.text := 'update zybl_zyyz with(rowlock) set fzph=' + '''' + fzbh + '''' + ' where ' +
      'zyh=' + '''' + sp_dryz.fieldbyname( 'zyh' ).asstring + '''' +
      ' and id=' + yzid;
      DM_data.qry_pub.ExecSQL;
    end;
    if (sp_dryz.FieldByName('xzbz').AsBoolean=true)   and  (sp_dryz.FieldByName('zyh').asstring=sp_sybr.FieldByName('zyh').asstring)
      and   (Pos(sp_dryz.FieldByName('fzph').AsString,zh)<1) then
    begin
      zh:=zh+sp_dryz.FieldByName('fzph').AsString+',';  //获得不重复的分组批号
    end;

    sp_dryz.next;
  end;
 
  if not sp_dryz.isempty then
  begin
    application.CreateForm( Tfrm_print_sybq, frm_print_sybq );

    frm_print_sybq.dyrq.caption := '日期：' + formatdatetime( 'yyyy-mm-dd', dt_zxsj.date );
    frm_print_sybq.zxsj.caption := '执行日期：' + formatdatetime( 'yyyyMMdd', dt_zxsj.date );
    frm_print_sybq.dyrq1.caption := Trim( frm_print_sybq.dyrq1.caption );
    //qr_sm
    //formatdatetime('yyyy-mm-dd hh:mm:ss',frm_func.curr_date);
    frm_print_sybq.sp_syfz.close;
    frm_print_sybq.sp_syfz.Parameters.Refresh;
    frm_print_sybq.sp_syfz.Parameters.ParamByName( '@zyh' ).value := sp_dryz.fieldbyname( 'zyh' ).asstring;
    frm_print_sybq.sp_syfz.Parameters.ParamByName( '@zxsj' ).value := formatdatetime( 'yyyymmdd', dt_zxsj.date );
    frm_print_sybq.sp_syfz.Parameters.ParamByName( '@syfzph' ).value := zh;
    frm_print_sybq.sp_syfz.Parameters.ParamByName( '@dyfs' ).value := 3;  //参数为3则为勾选选中打印方式
    frm_print_sybq.sp_syfz.open;
    sp_sybr.Locate('zyh',sp_dryz.FieldByName('zyh').asstring,[]);
    if not frm_print_sybq.sp_syfz.IsEmpty then
    begin
      if ( pub_yydm <> '0051' ) then
      begin
        if pub_yydm='0003' then
        begin

//          DM_data.qry_pub.close;
//          DM_data.qry_pub.SQL.Text:='select * from sys_ypyf where rtrim(mc)='+''''+
//          trim(frm_print_sybq.sp_syfz.FieldByName('ypyf').asstring)+'''';
//          DM_data.qry_pub.Open;
//          if DM_data.qry_pub.IsEmpty then
//          begin
//            sl:=1;
//          end
//          else
//          begin
//            sl:=DM_data.qry_pub.FieldByName('sl').AsInteger;
//          end;
//          for i := 0 to sl-1 do
//          begin
//            ChangePrinter_sybq;
//            frm_zysf_print_service.Printsyd( sp_sybr,frm_print_sybq.sp_syfz,FormatDateTime('yyyy-MM-dd',dt_zxsj.DateTime));
//          end;
          try
            frm_print_sybq.QRLabel4.caption := '日期：' + formatdatetime( 'MM-dd', dt_zxsj.date );
                frm_print_sybq.QRLabel1.Caption := sp_dryz.fieldbyname( 'brxm' ).asstring;
                if formatdatetime( 'yyyymmdd', frm_func.curr_date ) > formatdatetime( 'yyyymmdd', dt_zxsj.date ) then
                begin
                  frm_print_sybq.QRLabel2.Caption := trim( sp_dryz.fieldbyname( 'bch' ).asstring ) + '(★)';
                end
                else
                begin
                  frm_print_sybq.QRLabel2.Caption := trim( sp_dryz.fieldbyname( 'bch' ).asstring ) + '床'
                end;
                frm_print_sybq.brnl.Caption := '年龄：'+sp_sybr.fieldbyname( 'brnl' ).asstring;
                frm_print_sybq.QRLabel8.Caption := '条码号：'+sp_dryz.fieldbyname( 'tmh' ).asstring;
            qyydhszdy;
          finally
            frm_print_sybq.Free;
          end;

        end
        else if sfqyydhsz=true then
        begin
          try
            frm_print_sybq.QRLabel4.caption := '日期：' + formatdatetime( 'MM-dd', dt_zxsj.date );
            frm_print_sybq.QRLabel1.Caption := sp_dryz.fieldbyname( 'brxm' ).asstring;
            if formatdatetime( 'yyyymmdd', frm_func.curr_date ) > formatdatetime( 'yyyymmdd', dt_zxsj.date ) then
            begin
              frm_print_sybq.QRLabel2.Caption := trim( sp_dryz.fieldbyname( 'bch' ).asstring ) + '(★)';
            end
            else
            begin
              frm_print_sybq.QRLabel2.Caption := trim( sp_dryz.fieldbyname( 'bch' ).asstring ) + '床'
            end;
            frm_print_sybq.brnl.Caption := '年龄：'+sp_sybr.fieldbyname( 'brnl' ).asstring;
            frm_print_sybq.QRLabel8.Caption := '条码号：'+sp_dryz.fieldbyname( 'tmh' ).asstring;
            qyydhszdy;
          finally
            frm_print_sybq.Free;
          end;
        end
        else
        begin
          if pub_yydm='0015' then
          begin
            try
              frm_print_sybq.QRLabel11.Caption := sp_dryz.fieldbyname( 'brxm' ).asstring;
              frm_print_sybq.QRLabel12.Caption := trim( sp_dryz.fieldbyname( 'bch' ).asstring ) + '床';
              frm_print_sybq.QRLabel17.Caption := sp_sybr.fieldbyname( 'brnl' ).asstring;
              frm_print_sybq.qrlbl18.Caption   := sp_sybr.fieldbyname( 'tmh' ).asstring;
              qyydhszdy_xz;
            finally
              frm_print_sybq.Free;
            end;
          end
          else if (pub_yydm='0204') or (pub_yydm='0246') then
          begin
            try
              frm_print_sybq.dyrq1_1.caption := '日期：' + formatdatetime( 'MM-dd', dt_zxsj.date );
              frm_print_sybq.brnl1_1.Caption := sp_sybr.fieldbyname( 'brnl' ).asstring;
              frm_print_sybq.brxm.Caption := sp_dryz.fieldbyname( 'brxm' ).asstring;
              frm_print_sybq.brxm1_1.Caption := sp_dryz.fieldbyname( 'brxm' ).asstring;
              if formatdatetime( 'yyyymmdd', frm_func.curr_date ) > formatdatetime( 'yyyymmdd', dt_zxsj.date ) then
              begin
                frm_print_sybq.bch.Caption := trim( sp_dryz.fieldbyname( 'bch' ).asstring ) + '(★)';
                frm_print_sybq.bch1_1.Caption := trim( sp_dryz.fieldbyname( 'bch' ).asstring ) + '床(★)';
              end
              else
              begin
                frm_print_sybq.bch.Caption := trim( sp_dryz.fieldbyname( 'bch' ).asstring );
                frm_print_sybq.bch1_1.Caption := trim( sp_dryz.fieldbyname( 'bch' ).asstring ) + '床';
              end;
              //frm_print_sybq.ksmc1.Caption:= sp_sybr.fieldbyname('ksmc').asstring;
              //frm_print_sybq.qr_sm_1_1.caption := frm_print_sybq.sp_syfz.FieldByName( 'bz' ).AsString;
              //frm_print_sybq.quickrep3.PrinterSettings.PrinterIndex := printer.Printers.IndexOf( 'sybqprint' );
              //frm_print_sybq.quickrep3.PrinterSettings.PrinterIndex := printer.Printers.IndexOf('条码打印机');
              if v_IsPrinterJoin=True then
              if  frm_print_sybq.QuickRep6.PrinterSettings.PrinterIndex <> v_PrinterIndex_new then
              begin
                frm_print_sybq.QuickRep6.PrinterSettings.PrinterIndex := v_PrinterIndex_new;
              end;
              if pub_yydm='0246' then
              begin
                frm_print_sybq.QuickRep6.Page.Length:=31;
                frm_print_sybq.QuickRep6.Page.Width:=52;
              end;
              frm_print_sybq.QuickRep6.print;
            finally
              frm_print_sybq.Free;
            end;
          end
          else
          begin
            if (pub_yydm='0262') or (pub_yydm='0271')  then
               begin
                if  (pub_yydm='0271')  then
                    ChangePrinter_ddyysypq(7);
                  frm_zysf_print_service.Printsypq(frm_print_sybq.sp_syfz,sp_sybr.fieldbyname( 'bch' ).asstring,sp_sybr.fieldbyname( 'brxm' ).asstring,sp_sybr.fieldbyname( 'zyh' ).asstring ,sp_sybr.fieldbyname( 'tmh' ).asstring,sp_sybr.fieldbyname( 'brxb' ).asstring,sp_sybr.fieldbyname( 'brnl' ).asstring,formatdatetime( 'MM-dd', dt_zxsj.date ));
               end
             else
            begin
              try
                frm_print_sybq.dyrq1.caption := '日期：' + formatdatetime( 'MM-dd', dt_zxsj.date );
                frm_print_sybq.brnl1.Caption := sp_sybr.fieldbyname( 'brnl' ).asstring;
                frm_print_sybq.brxm.Caption := sp_dryz.fieldbyname( 'brxm' ).asstring;
                frm_print_sybq.brxm1.Caption := sp_dryz.fieldbyname( 'brxm' ).asstring;
                if formatdatetime( 'yyyymmdd', frm_func.curr_date ) > formatdatetime( 'yyyymmdd', dt_zxsj.date ) then
                begin
                  frm_print_sybq.bch.Caption := trim( sp_dryz.fieldbyname( 'bch' ).asstring ) + '(★)';
                  frm_print_sybq.bch1.Caption := trim( sp_dryz.fieldbyname( 'bch' ).asstring ) + '床(★)';
                end
                else
                begin
                  frm_print_sybq.bch.Caption := trim( sp_dryz.fieldbyname( 'bch' ).asstring );
                  frm_print_sybq.bch1.Caption := trim( sp_dryz.fieldbyname( 'bch' ).asstring ) + '床'
                end;
                //frm_print_sybq.ksmc1.Caption:= sp_sybr.fieldbyname('ksmc').asstring;
                //frm_print_sybq.qr_sm.caption := frm_print_sybq.sp_syfz.FieldByName( 'bz' ).AsString;
                //frm_print_sybq.quickrep3.PrinterSettings.PrinterIndex := printer.Printers.IndexOf( 'sybqprint' );
                //frm_print_sybq.quickrep3.PrinterSettings.PrinterIndex := printer.Printers.IndexOf('条码打印机');
                gkyydy;//骨科医院打印要求字体大一号
                  if v_IsPrinterJoin=True then
                  if  frm_print_sybq.QuickRep3.PrinterSettings.PrinterIndex <> v_PrinterIndex_new then
                  begin
                    frm_print_sybq.QuickRep3.PrinterSettings.PrinterIndex := v_PrinterIndex_new;
                  end;
                  if pub_yydm='0229' then
                  begin
                    frm_print_sybq.QuickRep3.Page.Length:=32.5;
                    frm_print_sybq.QuickRep3.Margins.Bottom:=3;
                  end;
                  if pub_yydm='0012'  then    //三台中医院姓名有5个字要打全
                  begin
                    frm_print_sybq.bch1.Left:=1;
                    frm_print_sybq.bch1.Width:=35;
                    frm_print_sybq.brxm1.Left:=36;
                    frm_print_sybq.brxm1.Width:=72;
                    frm_print_sybq.brnl1.Font.Size:=7;
                    frm_print_sybq.brnl1.Left:=113;
                  end;
                if pub_yydm='0269' then
                begin

                  zyks.Close;
                  zyks.sql.Text:='select b.mc as mc from zysf_zydj a left join sys_ksdm b on a.ksdm=b.dm where tmh='+''''+trim(sp_dryz.fieldbyname( 'tmh' ).asstring)+''''+'';
                  zyks.Open;
                  frm_print_sybq.ryks.Caption:=Trim(zyks.FieldByName('mc').AsString);
                  frm_print_sybq.tmh.Caption:=trim(sp_dryz.fieldbyname( 'tmh' ).asstring);


                  tsyyStyle;//台山医院打印格式
                end;
                  if pub_yydm='0260' then
                 begin
                     jyxrmyyStyle;
                 end;
                frm_print_sybq.QuickRep3.print;
              finally
                frm_print_sybq.Free;
              end;
            end;
          end;

        end;
      end
      else
      begin
        try
          frm_print_sybq.dyrq_1.caption := '日期：' + formatdatetime( 'MM-dd', dt_zxsj.date );

          frm_print_sybq.brxm.Caption := sp_dryz.fieldbyname( 'brxm' ).asstring;
          frm_print_sybq.brxm_1.Caption := sp_dryz.fieldbyname( 'brxm' ).asstring;
          if formatdatetime( 'yyyymmdd', frm_func.curr_date ) > formatdatetime( 'yyyymmdd', dt_zxsj.date ) then
          begin
            frm_print_sybq.bch.Caption := trim( sp_dryz.fieldbyname( 'bch' ).asstring ) + '(★)';
            frm_print_sybq.bch_1.Caption := trim( sp_dryz.fieldbyname( 'bch' ).asstring ) + '(★)';
          end
          else
          begin
            frm_print_sybq.bch.Caption := trim( sp_dryz.fieldbyname( 'bch' ).asstring );
            frm_print_sybq.bch_1.Caption := trim( sp_dryz.fieldbyname( 'bch' ).asstring );
          end;
          //frm_print_sybq.ksmc1.Caption:= sp_sybr.fieldbyname('ksmc').asstring;
          //frm_print_sybq.qr_sm_1.caption := frm_print_sybq.sp_syfz.FieldByName( 'bz' ).AsString;
          //frm_print_sybq.quickrep2.PrinterSettings.PrinterIndex := printer.Printers.IndexOf( '条码打印机' );
            if v_IsPrinterJoin=True then
            if  frm_print_sybq.QuickRep2.PrinterSettings.PrinterIndex <> v_PrinterIndex_new then
            begin
              frm_print_sybq.QuickRep2.PrinterSettings.PrinterIndex := v_PrinterIndex_new;
            end;
          frm_print_sybq.QuickRep2.print;
        finally
          frm_print_sybq.Free;
        end;
      end;
    end
    else
      frm_print_sybq.Free;
  end;
  //RevertPrinter;
end;
procedure Tfrm_syddy.BitBtn1Click( Sender: TObject );
var
  fzbh, yzid: string;
  i,sl:integer;
begin
  Switch := True;
  ChangePrinter;
  if not sp_dryz.isempty then
  begin
    application.CreateForm( Tfrm_print_sybq, frm_print_sybq );
    try
      sp_sybr.DisableControls;
      if not qb.checked then
      begin
        sp_sybr.Filter := 'zyh=' + #39 + sp_sybr.fieldbyname( 'zyh' ).asstring + #39;
        sp_sybr.filtered := true;
        sp_dryz.Filtered := false;
        sp_dryz.Filter := 'zyh=' + #39 + sp_sybr.fieldbyname( 'zyh' ).asstring + #39;
        sp_dryz.filtered := true;
      end
      else
      begin
        sp_sybr.Filtered := false;
        sp_sybr.First;
        sp_dryz.Filtered := false;
        sp_dryz.First;
      end;

        sp_sybr.First;
        while not sp_dryz.eof do     //更新未分组的医嘱产生一个分组批号
        begin
          fzbh := get_sjh( pub_czydm );
          yzid := Trim( sp_dryz.fieldbyname( 'yzid' ).asstring );
          if Trim( sp_dryz.fieldbyname( 'fzph' ).asstring ) = '' then
          begin
            DM_data.qry_pub.Close;
            DM_data.qry_pub.SQL.text := 'update zybl_zyyz with(rowlock) set fzph=' + '''' + fzbh + '''' + ' where ' +
              'zyh=' + '''' + sp_dryz.fieldbyname( 'zyh' ).asstring + '''' +
              ' and id=' + yzid;
            DM_data.qry_pub.ExecSQL;
          end;
          sp_dryz.Next;
        end;


      while not sp_sybr.eof do
      begin
        frm_print_sybq.dyrq.caption := '日期：' + formatdatetime( 'yyyy-mm-dd hh:mm:ss', frm_func.curr_date );
        frm_print_sybq.zxsj.caption := '执行日期：' + formatdatetime( 'yyyymmdd', dt_zxsj.date );
        frm_print_sybq.dyrq1.caption := '日期：' + formatdatetime( 'yyyy-mm-dd', dt_zxsj.date );
        frm_print_sybq.sp_syfz.close;
        frm_print_sybq.sp_syfz.Parameters.ParamByName( '@zyh' ).value := sp_sybr.fieldbyname( 'zyh' ).asstring;
        frm_print_sybq.sp_syfz.Parameters.ParamByName( '@zxsj' ).value := formatdatetime( 'yyyymmdd', dt_zxsj.date );
        frm_print_sybq.sp_syfz.Parameters.ParamByName( '@syfzph' ).value := '';
        frm_print_sybq.sp_syfz.Parameters.ParamByName( '@dyfs' ).value := 1;   //输液标签
        frm_print_sybq.sp_syfz.open;
        if not frm_print_sybq.sp_syfz.IsEmpty then
        begin
          if ( pub_yydm <> '0051' ) then
          begin
            if pub_yydm='0003' then
            begin
//              frm_print_sybq.sp_syfz.First;
//              while not frm_print_sybq.sp_syfz.Eof do
//              begin
//
//                DM_data.qry_pub.close;
//                DM_data.qry_pub.SQL.Text:='select * from sys_ypyf where rtrim(mc)='+''''+
//                trim(frm_print_sybq.sp_syfz.FieldByName('ypyf').asstring)+'''';
//                DM_data.qry_pub.Open;
//                if DM_data.qry_pub.IsEmpty then
//                begin
//                  sl:=1;
//                end
//                else
//                begin
//                  sl:=DM_data.qry_pub.FieldByName('sl').AsInteger;
//                end;
//                for i := 0 to sl-1 do
//                begin
//                  ChangePrinter_sybq;
//                  frm_zysf_print_service.Printsyd( sp_sybr,frm_print_sybq.sp_syfz,FormatDateTime('yyyy-MM-dd',dt_zxsj.DateTime));
//                end;
//
//                frm_print_sybq.sp_syfz.Next;
//              end;
                frm_print_sybq.QRLabel4.caption := '日期：' + formatdatetime( 'MM-dd', dt_zxsj.date );
                frm_print_sybq.QRLabel1.Caption := sp_sybr.fieldbyname( 'brxm' ).asstring;
                if formatdatetime( 'yyyymmdd', frm_func.curr_date ) > formatdatetime( 'yyyymmdd', dt_zxsj.date ) then
                begin
                  frm_print_sybq.QRLabel2.Caption := trim( sp_sybr.fieldbyname( 'bch' ).asstring ) + '(★)';
                end
                else
                begin
                  frm_print_sybq.QRLabel2.Caption := trim( sp_sybr.fieldbyname( 'bch' ).asstring ) + '床'
                end;
                frm_print_sybq.brnl.Caption := '年龄：'+sp_sybr.fieldbyname( 'brnl' ).asstring;
                frm_print_sybq.QRLabel8.Caption := '条码号：'+sp_sybr.fieldbyname( 'tmh' ).asstring;
               qyydhszdy;
            end
            else
            if sfqyydhsz=true then
            begin
                frm_print_sybq.QRLabel4.caption := '日期：' + formatdatetime( 'MM-dd', dt_zxsj.date );
                frm_print_sybq.QRLabel1.Caption := sp_sybr.fieldbyname( 'brxm' ).asstring;
                if formatdatetime( 'yyyymmdd', frm_func.curr_date ) > formatdatetime( 'yyyymmdd', dt_zxsj.date ) then
                begin
                  frm_print_sybq.QRLabel2.Caption := trim( sp_sybr.fieldbyname( 'bch' ).asstring ) + '(★)';
                end
                else
                begin
                  frm_print_sybq.QRLabel2.Caption := trim( sp_sybr.fieldbyname( 'bch' ).asstring ) + '床'
                end;
                frm_print_sybq.brnl.Caption := '年龄：'+sp_sybr.fieldbyname( 'brnl' ).asstring;
                frm_print_sybq.QRLabel8.Caption := '条码号：'+sp_sybr.fieldbyname( 'tmh' ).asstring;
              qyydhszdy;
            end
            else
            begin
              if pub_yydm='0015' then
              begin
                frm_print_sybq.QRLabel11.Caption := sp_sybr.fieldbyname( 'brxm' ).asstring;
                frm_print_sybq.QRLabel12.Caption := trim( sp_sybr.fieldbyname( 'bch' ).asstring ) + '床';
                frm_print_sybq.QRLabel17.Caption := sp_sybr.fieldbyname( 'brnl' ).asstring;
                frm_print_sybq.qrlbl18.Caption   := sp_sybr.FieldByName('tmh').AsString;
                qyydhszdy_xz;
              end
              else if (pub_yydm='0204') or (pub_yydm='0246')then
              begin
                frm_print_sybq.dyrq1_1.caption := '日期：' + formatdatetime( 'MM-dd', dt_zxsj.date );
                frm_print_sybq.brnl1_1.Caption := sp_sybr.fieldbyname( 'brnl' ).asstring;
                frm_print_sybq.brxm.Caption := sp_sybr.fieldbyname( 'brxm' ).asstring;
                frm_print_sybq.brxm1_1.Caption := sp_sybr.fieldbyname( 'brxm' ).asstring;
                if formatdatetime( 'yyyymmdd', frm_func.curr_date ) > formatdatetime( 'yyyymmdd', dt_zxsj.date ) then
                begin
                  frm_print_sybq.bch.Caption := sp_sybr.fieldbyname( 'bch' ).asstring + '(★)';
                  frm_print_sybq.bch1_1.Caption := Trim(sp_sybr.fieldbyname( 'bch' ).asstring) + '床(★)';
                end
                else
                begin
                  frm_print_sybq.bch.Caption := sp_sybr.fieldbyname( 'bch' ).asstring;
                  frm_print_sybq.bch1_1.Caption := Trim(sp_sybr.fieldbyname( 'bch' ).asstring) + '床';
                end;
                //frm_print_sybq.ksmc1.Caption:= sp_sybr.fieldbyname('ksmc').asstring;
                //frm_print_sybq.qr_sm_1_1.caption := frm_print_sybq.sp_syfz.FieldByName( 'bz' ).AsString;
                //frm_print_sybq.quickrep3.PrinterSettings.PrinterIndex := printer.Printers.IndexOf('条码打印机');
    //            if ( frm_print_sybq.QuickRep3.Printer.PrinterName <> Printer.Printers[v_PrinterIndex_new] ) and ( v_IsPrinterJoin ) then
    //            begin
    //              frm_print_sybq.QuickRep3.Printer.PrinterName := Printer.Printers[v_PrinterIndex_new];
    //            end;
                if v_IsPrinterJoin=True then
                if  frm_print_sybq.QuickRep6.PrinterSettings.PrinterIndex <> v_PrinterIndex_new then
                begin
                  frm_print_sybq.QuickRep6.PrinterSettings.PrinterIndex := v_PrinterIndex_new;
                end;
                if pub_yydm='0246' then
                begin
                   jyxrmyyStyle;
                end;
                frm_print_sybq.QuickRep6.print;
              end
              else
              begin
                if (pub_yydm='0262') or  (pub_yydm='0271') then  //宁安，掇刀医院
                begin
                if  (pub_yydm='0271')  then
                    ChangePrinter_ddyysypq(7);
                frm_zysf_print_service.Printsypq(frm_print_sybq.sp_syfz,sp_sybr.fieldbyname( 'bch' ).asstring,sp_sybr.fieldbyname( 'brxm' ).asstring,sp_sybr.fieldbyname( 'zyh' ).asstring ,sp_sybr.fieldbyname( 'tmh' ).asstring,sp_sybr.fieldbyname( 'brxb' ).asstring,sp_sybr.fieldbyname( 'brnl' ).asstring,formatdatetime( 'MM-dd', dt_zxsj.date ));
                end
                else
                begin

                  frm_print_sybq.dyrq1.caption := '日期：' + formatdatetime( 'MM-dd', dt_zxsj.date );
                  QR3DisplayAge; //quickRep3 沙雅格式 不显示 年龄
                  frm_print_sybq.brxm.Caption := sp_sybr.fieldbyname( 'brxm' ).asstring;
                  frm_print_sybq.brxm1.Caption := sp_sybr.fieldbyname( 'brxm' ).asstring;
                  QR3ShaYaOfficeBed;//quickRep3沙雅格式 显示科室 病床号 姓名 之前：床号 姓名 年龄
                  //frm_print_sybq.ksmc1.Caption:= sp_sybr.fieldbyname('ksmc').asstring;
                  //frm_print_sybq.qr_sm.caption := frm_print_sybq.sp_syfz.FieldByName( 'bz' ).AsString;
                  //frm_print_sybq.quickrep3.PrinterSettings.PrinterIndex := printer.Printers.IndexOf('条码打印机');
      //            if ( frm_print_sybq.QuickRep3.Printer.PrinterName <> Printer.Printers[v_PrinterIndex_new] ) and ( v_IsPrinterJoin ) then
      //            begin
      //              frm_print_sybq.QuickRep3.Printer.PrinterName := Printer.Printers[v_PrinterIndex_new];
      //            end;
                  if v_IsPrinterJoin=True then
                  if  frm_print_sybq.QuickRep3.PrinterSettings.PrinterIndex <> v_PrinterIndex_new then
                  begin
                    frm_print_sybq.QuickRep3.PrinterSettings.PrinterIndex := v_PrinterIndex_new;
                  end;
                  gkyydy;//骨科医院打印要求字体大一号
                  if pub_yydm='0229' then
                  begin
                    frm_print_sybq.QuickRep3.Page.Length:=32.5;
                    frm_print_sybq.QuickRep3.Margins.Bottom:=3;
                  end;
               //   frm_print_sybq.QuickRep3.print;
                  try
                    if pub_yydm='0269' then
                    begin
                      tsyyStyle;//台山医院打印格式
                    end else
                    if  (pub_yydm='0257') or  (pub_yydm='0272')  then  //全州医院打印格式
                    begin
                       qzyyStyle;
                    end;
                     if pub_yydm='0260' then
                     begin
                        jyxrmyyStyle;
                     end;
                    frm_print_sybq.QuickRep3.print;
                  finally
                    sleep(500);
                  end;
                end;
              end;
            end;
          end
          else
          begin
            frm_print_sybq.dyrq_1.caption := '日期：' + formatdatetime( 'MM-dd', dt_zxsj.date );
            frm_print_sybq.brxm.Caption := sp_sybr.fieldbyname( 'brxm' ).asstring;
            frm_print_sybq.brxm_1.Caption := sp_sybr.fieldbyname( 'brxm' ).asstring;
            if formatdatetime( 'yyyymmdd', frm_func.curr_date ) > formatdatetime( 'yyyymmdd', dt_zxsj.date ) then
            begin
              frm_print_sybq.bch.Caption := sp_sybr.fieldbyname( 'bch' ).asstring + '(★)';
              frm_print_sybq.bch_1.Caption := sp_sybr.fieldbyname( 'bch' ).asstring + '(★)';
            end
            else
            begin
              frm_print_sybq.bch.Caption := sp_sybr.fieldbyname( 'bch' ).asstring;
              frm_print_sybq.bch_1.Caption := sp_sybr.fieldbyname( 'bch' ).asstring;
            end;
            //frm_print_sybq.ksmc1.Caption:= sp_sybr.fieldbyname('ksmc').asstring;
            //frm_print_sybq.qr_sm_1.caption := frm_print_sybq.sp_syfz.FieldByName( 'bz' ).AsString;
            //frm_print_sybq.quickrep2.PrinterSettings.PrinterIndex := printer.Printers.IndexOf( '条码打印机' );
//            if ( frm_print_sybq.QuickRep2.Printer.PrinterName <> Printer.Printers[v_PrinterIndex_new] ) and ( v_IsPrinterJoin ) then
//            begin
//              frm_print_sybq.QuickRep2.Printer.PrinterName := Printer.Printers[v_PrinterIndex_new];
//            end;
            if v_IsPrinterJoin=True then
            if  frm_print_sybq.QuickRep2.PrinterSettings.PrinterIndex <> v_PrinterIndex_new then
            begin
              frm_print_sybq.QuickRep2.PrinterSettings.PrinterIndex := v_PrinterIndex_new;
            end;
            frm_print_sybq.QuickRep2.print;
//            if ( frm_print_sybq.QuickRep2.Printer.PrinterName <> frm_print_sybq.QuickRep2.Printers[v_PrinterIndex_old] ) and ( v_IsPrinterJoin ) then
//            begin
//              frm_print_sybq.QuickRep2.Printer.PrinterName := Printer.Printers[v_PrinterIndex_old];
//            end;
          end;
        end;
        sp_sybr.Next;
        Sleep(200);
      end;
    finally
      frm_print_sybq.Free;
      sp_sybr.EnableControls;
      sp_sybr.Filtered := false;
    end;
  end;
  //RevertPrinter;
end;

procedure Tfrm_syddy.BitBtn2Click( Sender: TObject );
var
  yzid, fzbh: string;
  sl,i:Integer;
begin
  if (sp_sybr.IsEmpty)  and (sp_dryz.IsEmpty) then
  begin
    ShowMessage('没有选择要打印的病人信息！');
    Exit;
  end;

  Switch := True;
  ChangePrinter;
  yzid := Trim( sp_dryz.fieldbyname( 'yzid' ).asstring );     //选中的医嘱号
  fzbh := get_sjh( pub_czydm );                              //产生一个编号
  if Trim( sp_dryz.fieldbyname( 'fzph' ).asstring ) = '' then
  begin
    DM_data.qry_pub.Close;
    DM_data.qry_pub.SQL.text := 'update zybl_zyyz with(rowlock) set fzph=' + '''' + fzbh + '''' + ' where ' +
      'zyh=' + '''' + sp_dryz.fieldbyname( 'zyh' ).asstring + '''' +
      ' and id=' + yzid;
    DM_data.qry_pub.ExecSQL;
  end;
  sp_dryz.close;          //获取输液
  sp_dryz.Parameters.ParamByName( '@bqdm' ).value := pub_bqdm;
  sp_dryz.Parameters.ParamByName( '@zyh' ).value := sp_sybr.FieldByName('zyh').asstring;
  sp_dryz.Parameters.ParamByName( '@bz' ).value := '全部';
  sp_dryz.Parameters.ParamByName( '@zxsj' ).value := formatdatetime( 'yyyymmdd', dT_zxsj.Date );
  sp_dryz.Open;
  sp_dryz.Locate( 'yzid', yzid, [] );
  if not sp_dryz.isempty then
  begin
    application.CreateForm( Tfrm_print_sybq, frm_print_sybq );
    frm_print_sybq.dyrq.caption := '日期：' + formatdatetime( 'yyyy-mm-dd', dt_zxsj.date );
    frm_print_sybq.zxsj.caption := '执行日期：' + formatdatetime( 'yyyyMMdd', dt_zxsj.date );
    frm_print_sybq.dyrq1.caption := Trim( frm_print_sybq.dyrq1.caption );
    //qr_sm
    //formatdatetime('yyyy-mm-dd hh:mm:ss',frm_func.curr_date);
    frm_print_sybq.sp_syfz.close;
    frm_print_sybq.sp_syfz.Parameters.Refresh;
    frm_print_sybq.sp_syfz.Parameters.ParamByName( '@zyh' ).value := sp_dryz.fieldbyname( 'zyh' ).asstring;
    frm_print_sybq.sp_syfz.Parameters.ParamByName( '@zxsj' ).value := formatdatetime( 'yyyymmdd', dt_zxsj.date );
    if Trim(sp_dryz.fieldbyname( 'fzph' ).asstring)='' then
    begin
      frm_print_sybq.sp_syfz.Parameters.ParamByName( '@syfzph' ).value := sp_dryz.fieldbyname( 'yzid' ).asstring;
    end
    else
    frm_print_sybq.sp_syfz.Parameters.ParamByName( '@syfzph' ).value := sp_dryz.fieldbyname( 'fzph' ).asstring;

    frm_print_sybq.sp_syfz.Parameters.ParamByName( '@dyfs' ).value := 1;
    frm_print_sybq.sp_syfz.open;  //获取得当前分组批号的打印记录
    sp_sybr.Locate('zyh',sp_dryz.FieldByName('zyh').asstring,[]);
    if not frm_print_sybq.sp_syfz.IsEmpty then
    begin
      if ( pub_yydm <> '0051' ) then
      begin
        if pub_yydm='0003' then
        begin

//          DM_data.qry_pub.close;
//          DM_data.qry_pub.SQL.Text:='select * from sys_ypyf where rtrim(mc)='+''''+
//          trim(frm_print_sybq.sp_syfz.FieldByName('ypyf').asstring)+'''';
//          DM_data.qry_pub.Open;
//          if DM_data.qry_pub.IsEmpty then
//          begin
//            sl:=1;
//          end
//          else
//          begin
//            sl:=DM_data.qry_pub.FieldByName('sl').AsInteger;
//          end;
//          for i := 0 to sl-1 do
//          begin
//            ChangePrinter_sybq;
//            frm_zysf_print_service.Printsyd( sp_sybr,frm_print_sybq.sp_syfz,FormatDateTime('yyyy-MM-dd',dt_zxsj.DateTime));
//          end;
          try
            frm_print_sybq.QRLabel4.caption := '日期：' + formatdatetime( 'MM-dd', dt_zxsj.date );
            frm_print_sybq.QRLabel1.Caption := sp_dryz.fieldbyname( 'brxm' ).asstring;
            if formatdatetime( 'yyyymmdd', frm_func.curr_date ) > formatdatetime( 'yyyymmdd', dt_zxsj.date ) then
            begin
              frm_print_sybq.QRLabel2.Caption := trim( sp_dryz.fieldbyname( 'bch' ).asstring ) + '(★)';
            end
            else
            begin
              frm_print_sybq.QRLabel2.Caption := trim( sp_dryz.fieldbyname( 'bch' ).asstring ) + '床'
            end;
            frm_print_sybq.brnl.Caption := '年龄：'+sp_sybr.fieldbyname( 'brnl' ).asstring;
            frm_print_sybq.QRLabel8.Caption := '条码号：'+sp_dryz.fieldbyname( 'tmh' ).asstring;
            qyydhszdy;
          finally
            frm_print_sybq.Free;
          end;
        end
        else if sfqyydhsz=true then
        begin
          try
            frm_print_sybq.QRLabel4.caption := '日期：' + formatdatetime( 'MM-dd', dt_zxsj.date );
            frm_print_sybq.QRLabel1.Caption := sp_dryz.fieldbyname( 'brxm' ).asstring;
            if formatdatetime( 'yyyymmdd', frm_func.curr_date ) > formatdatetime( 'yyyymmdd', dt_zxsj.date ) then
            begin
              frm_print_sybq.QRLabel2.Caption := trim( sp_dryz.fieldbyname( 'bch' ).asstring ) + '(★)';
            end
            else
            begin
              frm_print_sybq.QRLabel2.Caption := trim( sp_dryz.fieldbyname( 'bch' ).asstring ) + '床'
            end;
            frm_print_sybq.brnl.Caption := '年龄：'+sp_sybr.fieldbyname( 'brnl' ).asstring;
            frm_print_sybq.QRLabel8.Caption := '条码号：'+sp_dryz.fieldbyname( 'tmh' ).asstring;
            qyydhszdy;
          finally
            frm_print_sybq.Free;
          end;
        end
        else
        begin
          if pub_yydm='0015' then
          begin
            try
              frm_print_sybq.QRLabel11.Caption := sp_dryz.fieldbyname( 'brxm' ).asstring;
              frm_print_sybq.QRLabel12.Caption := trim( sp_dryz.fieldbyname( 'bch' ).asstring ) + '床';
              frm_print_sybq.QRLabel17.Caption := sp_sybr.fieldbyname( 'brnl' ).asstring;
              frm_print_sybq.qrlbl18.Caption   := sp_sybr.fieldbyname( 'tmh' ).asstring;
              qyydhszdy_xz;
            finally
              frm_print_sybq.Free;
            end;
          end
          else if (pub_yydm='0204') or (pub_yydm='0246') then
          begin
            try
              frm_print_sybq.dyrq1_1.caption := '日期：' + formatdatetime( 'MM-dd', dt_zxsj.date );
              frm_print_sybq.brnl1_1.Caption := sp_sybr.fieldbyname( 'brnl' ).asstring;
              frm_print_sybq.brxm.Caption := sp_dryz.fieldbyname( 'brxm' ).asstring;
              frm_print_sybq.brxm1_1.Caption := sp_dryz.fieldbyname( 'brxm' ).asstring;
              if formatdatetime( 'yyyymmdd', frm_func.curr_date ) > formatdatetime( 'yyyymmdd', dt_zxsj.date ) then
              begin
                frm_print_sybq.bch.Caption := trim( sp_dryz.fieldbyname( 'bch' ).asstring ) + '(★)';
                frm_print_sybq.bch1_1.Caption := trim( sp_dryz.fieldbyname( 'bch' ).asstring ) + '床(★)';
              end
              else
              begin
                frm_print_sybq.bch.Caption := trim( sp_dryz.fieldbyname( 'bch' ).asstring );
                frm_print_sybq.bch1_1.Caption := trim( sp_dryz.fieldbyname( 'bch' ).asstring ) + '床'
              end;
              //frm_print_sybq.ksmc1.Caption:= sp_sybr.fieldbyname('ksmc').asstring;
              //frm_print_sybq.qr_sm_1_1.caption := frm_print_sybq.sp_syfz.FieldByName( 'bz' ).AsString;
              //frm_print_sybq.quickrep3.PrinterSettings.PrinterIndex := printer.Printers.IndexOf( 'sybqprint' );
              //frm_print_sybq.quickrep3.PrinterSettings.PrinterIndex := printer.Printers.IndexOf('条码打印机');
              if v_IsPrinterJoin=True then
              if  frm_print_sybq.QuickRep6.PrinterSettings.PrinterIndex <> v_PrinterIndex_new then
              begin
                frm_print_sybq.QuickRep6.PrinterSettings.PrinterIndex := v_PrinterIndex_new;
              end;
              if pub_yydm='0246' then
              begin
                frm_print_sybq.QuickRep6.Page.Length:=31;
                frm_print_sybq.QuickRep6.Page.Width:=52;
              end;
              frm_print_sybq.QuickRep6.print;
            finally
              frm_print_sybq.Free;
            end;
          end
          else
          begin
            if (pub_yydm='0262') or  (pub_yydm='0271') then   //宁安，掇刀医院
            begin
              if (pub_yydm='0271')  then
                ChangePrinter_ddyysypq(7);
              frm_zysf_print_service.Printsypq(frm_print_sybq.sp_syfz,sp_sybr.fieldbyname( 'bch' ).asstring,sp_sybr.fieldbyname( 'brxm' ).asstring,sp_sybr.fieldbyname( 'zyh' ).asstring ,sp_sybr.fieldbyname( 'tmh' ).asstring,sp_sybr.fieldbyname( 'brxb' ).asstring,sp_sybr.fieldbyname( 'brnl' ).asstring,formatdatetime( 'MM-dd', dt_zxsj.date ));
            end
            else
             begin
                try
                  frm_print_sybq.dyrq1.caption := '日期：' + formatdatetime( 'MM-dd', dt_zxsj.date );
                  //frm_print_sybq.brnl1.Caption := sp_sybr.fieldbyname( 'brnl' ).asstring;
                  QR3DisplayAge;
                  frm_print_sybq.brxm.Caption := sp_dryz.fieldbyname( 'brxm' ).asstring;
                  frm_print_sybq.brxm1.Caption := sp_dryz.fieldbyname( 'brxm' ).asstring;

                  QR3ShaYaOfficeBed;//quickRep3沙雅格式 显示科室 病床号 姓名 之前：床号 姓名 年龄
                  //frm_print_sybq.ksmc1.Caption:= sp_sybr.fieldbyname('ksmc').asstring;
                  //frm_print_sybq.qr_sm.caption := frm_print_sybq.sp_syfz.FieldByName( 'bz' ).AsString;
                  //frm_print_sybq.quickrep3.PrinterSettings.PrinterIndex := printer.Printers.IndexOf( 'sybqprint' );
                  //frm_print_sybq.quickrep3.PrinterSettings.PrinterIndex := printer.Printers.IndexOf('条码打印机');
                  gkyydy;//骨科医院打印要求字体大一号
                    if v_IsPrinterJoin=True then
                    if  frm_print_sybq.QuickRep3.PrinterSettings.PrinterIndex <> v_PrinterIndex_new then
                    begin
                      frm_print_sybq.QuickRep3.PrinterSettings.PrinterIndex := v_PrinterIndex_new;
                    end;
                    if pub_yydm='0229' then
                    begin
                      frm_print_sybq.QuickRep3.Page.Length:=32.5;
                      frm_print_sybq.QuickRep3.Margins.Bottom:=3;
                    end;
                    if pub_yydm='0012'  then    //三台中医院姓名有5个字要打全
                    begin
                      frm_print_sybq.bch1.Left:=1;
                      frm_print_sybq.bch1.Width:=35;//frm_print_sybq.bch1.Width -14;
                      frm_print_sybq.brxm1.Left:=36;//frm_print_sybq.brxm1.Left -14;
                      frm_print_sybq.brxm1.Width:=72;//frm_print_sybq.brxm1.width + 14;
                      frm_print_sybq.brnl1.Font.Size:=7;
                      frm_print_sybq.brnl1.Left:=113;//frm_print_sybq.brnl1.Left+2;
                    end;
                  if pub_yydm='0269' then
                  begin
                    tsyyStyle;//台山医院打印格式
                  end else
                  if  (pub_yydm='0257')  or  (pub_yydm='0272') then  //全州医院打印格式
                  begin
                      qzyyStyle;;
                  end;
                   if pub_yydm='0260' then
                   begin
                       jyxrmyyStyle;
                   end;
                  frm_print_sybq.QuickRep3.print;
                finally
                  frm_print_sybq.Free;
                end;
             end;
          end;

        end;
      end
      else
      begin
        try
          frm_print_sybq.dyrq_1.caption := '日期：' + formatdatetime( 'MM-dd', dt_zxsj.date );

          frm_print_sybq.brxm.Caption := sp_dryz.fieldbyname( 'brxm' ).asstring;
          frm_print_sybq.brxm_1.Caption := sp_dryz.fieldbyname( 'brxm' ).asstring;
          if formatdatetime( 'yyyymmdd', frm_func.curr_date ) > formatdatetime( 'yyyymmdd', dt_zxsj.date ) then
          begin
            frm_print_sybq.bch.Caption := trim( sp_dryz.fieldbyname( 'bch' ).asstring ) + '(★)';
            frm_print_sybq.bch_1.Caption := trim( sp_dryz.fieldbyname( 'bch' ).asstring ) + '(★)';
          end
          else
          begin
            frm_print_sybq.bch.Caption := trim( sp_dryz.fieldbyname( 'bch' ).asstring );
            frm_print_sybq.bch_1.Caption := trim( sp_dryz.fieldbyname( 'bch' ).asstring );
          end;
          //frm_print_sybq.ksmc1.Caption:= sp_sybr.fieldbyname('ksmc').asstring;
          //frm_print_sybq.qr_sm_1.caption := frm_print_sybq.sp_syfz.FieldByName( 'bz' ).AsString;
          //frm_print_sybq.quickrep2.PrinterSettings.PrinterIndex := printer.Printers.IndexOf( '条码打印机' );
            if v_IsPrinterJoin=True then
            if  frm_print_sybq.QuickRep2.PrinterSettings.PrinterIndex <> v_PrinterIndex_new then
            begin
              frm_print_sybq.QuickRep2.PrinterSettings.PrinterIndex := v_PrinterIndex_new;
            end;
          frm_print_sybq.QuickRep2.print;
        finally
          frm_print_sybq.Free;
        end;
      end;
    end
    else
      frm_print_sybq.Free;
  end;
  //RevertPrinter;
end;

procedure Tfrm_syddy.BitBtn3Click( Sender: TObject );
begin
  self.close;
end;

procedure Tfrm_syddy.BitBtn4Click( Sender: TObject );
var
  fzbh, yzid: string;
begin
  if not sp_dryz.isempty then
  begin
    application.CreateForm( Tfrm_print_syfz, frm_print_syfz );
    try
      sp_sybr.DisableControls;
      if not qb.checked then
      begin
        sp_sybr.Filter := 'zyh=' + #39 + sp_sybr.fieldbyname( 'zyh' ).asstring + #39;
        sp_sybr.filtered := true;
        sp_dryz.Filtered := false;
        sp_dryz.Filter := 'zyh=' + #39 + sp_sybr.fieldbyname( 'zyh' ).asstring + #39;
        sp_dryz.filtered := true;
      end
      else
      begin
        sp_sybr.Filtered := false;
        sp_sybr.First;
        sp_dryz.Filtered := false;
        sp_dryz.First;
      end;
      sp_sybr.First;
      while not sp_dryz.eof do
      begin
        fzbh := get_sjh( pub_czydm );
        yzid := Trim( sp_dryz.fieldbyname( 'yzid' ).asstring );
        if Trim( sp_dryz.fieldbyname( 'fzph' ).asstring ) = '' then
        begin
          DM_data.qry_pub.Close;
          DM_data.qry_pub.SQL.text := 'update zybl_zyyz set fzph=' + '''' + fzbh + '''' + ' where ' +
            'zyh=' + '''' + sp_dryz.fieldbyname( 'zyh' ).asstring + '''' +
            ' and id=' + yzid;
          DM_data.qry_pub.ExecSQL;
        end;
        sp_dryz.Next;
      end;
      sp_dryz.First;
      while not sp_sybr.eof do
      begin
        frm_print_syfz.bqmc.caption := pub_ksmc;
        frm_print_syfz.bqmc1.caption := pub_ksmc;
        frm_print_syfz.dyrq.caption := '日期：' + formatdatetime( 'yyyy-mm-dd hh:mm:ss', frm_func.curr_date );
        frm_print_syfz.zxsj.caption := '执行日期：' + formatdatetime( 'yyyymmdd', dt_zxsj.date );
        frm_print_syfz.dyrq1.caption := '日期：' + formatdatetime( 'yyyy-mm-dd hh:mm:ss', frm_func.curr_date );
        frm_print_syfz.zxsj1.caption := '执行日期：' + formatdatetime( 'yyyymmdd', dt_zxsj.date );
        frm_print_syfz.sp_syfz.close;
        frm_print_syfz.sp_syfz.Parameters.ParamByName( '@zyh' ).value := sp_sybr.fieldbyname( 'zyh' ).asstring;
        frm_print_syfz.sp_syfz.Parameters.ParamByName( '@zxsj' ).value := formatdatetime( 'yyyymmdd', dt_zxsj.date );
        frm_print_syfz.sp_syfz.Parameters.ParamByName( '@syfzph' ).value := '';
        frm_print_syfz.sp_syfz.Parameters.ParamByName( '@dyfs' ).value := 1;
        frm_print_syfz.sp_syfz.open;
        if not frm_print_syfz.sp_syfz.IsEmpty then
        begin
          frm_print_syfz.brxm.Caption := sp_sybr.fieldbyname( 'brxm' ).asstring;
          frm_print_syfz.bch.Caption := sp_sybr.fieldbyname( 'bch' ).asstring;
          frm_print_syfz.zyh.Caption := sp_sybr.fieldbyname( 'tmh' ).asstring;
          frm_print_syfz.brxm1.Caption := sp_sybr.fieldbyname( 'brxm' ).asstring;
          frm_print_syfz.bch1.Caption := sp_sybr.fieldbyname( 'bch' ).asstring + '床';
          frm_print_syfz.zyh1.Caption := sp_sybr.fieldbyname( 'tmh' ).asstring;
          if formatdatetime( 'yyyymmdd', frm_func.curr_date ) > formatdatetime( 'yyyymmdd', dt_zxsj.date ) then
          begin
            frm_print_syfz.yymc.Caption := pub_yymc + '输液卡' + '(★)';
            frm_print_syfz.yymc1.Caption := pub_yymc + '输液卡' + '(★)';
          end
          else
          begin
            frm_print_syfz.yymc.Caption := pub_yymc + '输液卡';
            frm_print_syfz.yymc1.Caption := pub_yymc + '输液卡';
          end;
          frm_print_syfz.quickrep1.PrinterSettings.PrinterIndex := printer.Printers.IndexOf( 'sydprint' );
          if pub_yydm <> '0020' then
          begin
            frm_print_syfz.quickrep1.Page.Width := 210;
            frm_print_syfz.quickrep1.Page.Length := 93;
          end
          else
          begin
            frm_print_syfz.quickrep1.Page.Width := 91;
            frm_print_syfz.quickrep1.Page.Length := 257;
            //   QuickRep3.Width:=210;
          end;
          frm_print_syfz.QuickRep1.print;
        end;
        sp_sybr.Next;
      end;
    finally
      frm_print_syfz.Free;
      sp_sybr.Filtered := false;
      sp_sybr.EnableControls;
    end;
  end;
end;

procedure Tfrm_syddy.BitBtn5Click( Sender: TObject );
var
  yzid, fzbh: string;
begin
  yzid := Trim( sp_dryz.fieldbyname( 'yzid' ).asstring );
  fzbh := get_sjh( pub_czydm );
  if Trim( sp_dryz.fieldbyname( 'fzph' ).asstring ) = '' then
  begin
    DM_data.qry_pub.Close;
    DM_data.qry_pub.SQL.text := 'update zybl_zyyz set fzph=' + '''' + fzbh + '''' + ' where ' +
      'zyh=' + '''' + sp_dryz.fieldbyname( 'zyh' ).asstring + '''' +
      ' and id=' + yzid;
    DM_data.qry_pub.ExecSQL;
  end;
  sp_dryz.close;
  sp_dryz.Parameters.ParamByName( '@bqdm' ).value := pub_bqdm;
  sp_dryz.Parameters.ParamByName( '@zyh' ).value := '';
  sp_dryz.Parameters.ParamByName( '@bz' ).value := '全部';
  sp_dryz.Parameters.ParamByName( '@zxsj' ).value := formatdatetime( 'yyyymmdd', dT_zxsj.Date );
  sp_dryz.Open;
  sp_dryz.Locate( 'yzid', yzid, [] );
  if not sp_dryz.isempty then
  begin
    application.CreateForm( Tfrm_print_syfz, frm_print_syfz );
    try
      frm_print_syfz.bqmc.caption := pub_ksmc;
      frm_print_syfz.dyrq.caption := '日期：' + formatdatetime( 'yyyy-mm-dd hh:mm:ss', frm_func.curr_date );
      frm_print_syfz.zxsj.caption := '执行日期：' + formatdatetime( 'yyyymmdd', dt_zxsj.date );
      frm_print_syfz.bqmc1.caption := pub_ksmc;
      frm_print_syfz.dyrq1.caption := '日期：' + formatdatetime( 'yyyy-mm-dd hh:mm:ss', frm_func.curr_date );
      frm_print_syfz.zxsj1.caption := '执行日期：' + formatdatetime( 'yyyymmdd', dt_zxsj.date );
      frm_print_syfz.sp_syfz.close;
      frm_print_syfz.sp_syfz.Parameters.ParamByName( '@zyh' ).value := sp_dryz.fieldbyname( 'zyh' ).asstring;
      frm_print_syfz.sp_syfz.Parameters.ParamByName( '@zxsj' ).value := formatdatetime( 'yyyymmdd', dt_zxsj.date );
      frm_print_syfz.sp_syfz.Parameters.ParamByName( '@syfzph' ).value := ''; //sp_dryz.fieldbyname('fzph').asstring;;
      frm_print_syfz.sp_syfz.Parameters.ParamByName( '@dyfs' ).value := 1;
      frm_print_syfz.sp_syfz.open;
      if not frm_print_syfz.sp_syfz.IsEmpty then
      begin
        frm_print_syfz.brxm.Caption := sp_dryz.fieldbyname( 'brxm' ).asstring;
        frm_print_syfz.bch.Caption := trim( sp_dryz.fieldbyname( 'bch' ).asstring );
        frm_print_syfz.zyh.Caption := sp_dryz.fieldbyname( 'tmh' ).asstring;
        frm_print_syfz.brxm1.Caption := sp_dryz.fieldbyname( 'brxm' ).asstring;
        frm_print_syfz.bch1.Caption := trim( sp_dryz.fieldbyname( 'bch' ).asstring ) + '床';
        frm_print_syfz.zyh1.Caption := sp_dryz.fieldbyname( 'tmh' ).asstring;
        if formatdatetime( 'yyyymmdd', frm_func.curr_date ) > formatdatetime( 'yyyymmdd', dt_zxsj.date ) then
        begin
          frm_print_syfz.yymc.Caption := pub_yymc + '输液卡' + '(★)';
          frm_print_syfz.yymc1.Caption := pub_yymc + '输液卡' + '(★)';
        end
        else
        begin
          frm_print_syfz.yymc.Caption := pub_yymc + '输液卡';
          frm_print_syfz.yymc1.Caption := pub_yymc + '输液卡';
        end;

        frm_print_syfz.quickrep1.PrinterSettings.PrinterIndex := printer.Printers.IndexOf( 'sydprint' );
        if pub_yydm <> '0020' then
        begin
          frm_print_syfz.quickrep1.Page.Width := 210;
          frm_print_syfz.quickrep1.Page.Length := 93;
        end
        else
        begin
          frm_print_syfz.quickrep1.Page.Width := 91;
          frm_print_syfz.quickrep1.Page.Length := 257;
          //   QuickRep3.Width:=210;
        end;
        frm_print_syfz.QuickRep1.print;
      end;
    finally
      frm_print_syfz.Free;
    end;
  end;
end;

procedure Tfrm_syddy.BitBtn6Click( Sender: TObject );
var
  yzid, fzbh: string;
begin
  if (sp_sybr.IsEmpty)  and (sp_dryz.IsEmpty) then
  begin
    ShowMessage('没有选择要打印的病人信息！');
    Exit;
  end;
  

  yzid := Trim( sp_dryz.fieldbyname( 'yzid' ).asstring );
  fzbh := get_sjh( pub_czydm );
  if Trim( sp_dryz.fieldbyname( 'fzph' ).asstring ) = '' then
  begin
    DM_data.qry_pub.Close;
    DM_data.qry_pub.SQL.text := 'update zybl_zyyz set fzph=' + '''' + fzbh + '''' + ' where ' +
      'zyh=' + '''' + sp_dryz.fieldbyname( 'zyh' ).asstring + '''' +
      ' and id=' + yzid;
    DM_data.qry_pub.ExecSQL;
  end;
  sp_dryz.close;
  sp_dryz.Parameters.ParamByName( '@bqdm' ).value := pub_bqdm;
  sp_dryz.Parameters.ParamByName( '@zyh' ).value := '';
  sp_dryz.Parameters.ParamByName( '@bz' ).value := '全部';
  sp_dryz.Parameters.ParamByName( '@zxsj' ).value := formatdatetime( 'yyyymmdd', dT_zxsj.Date );
  sp_dryz.Open;
  sp_dryz.Locate( 'yzid', yzid, [] );
  if not sp_dryz.isempty then
  begin
    application.CreateForm( Tfrm_print_syfz, frm_print_syfz );
    try
      frm_print_syfz.bqmc.caption := pub_ksmc;
      frm_print_syfz.dyrq.caption := '日期：' + formatdatetime( 'yyyy-mm-dd hh:mm:ss', frm_func.curr_date );
      frm_print_syfz.zxsj.caption := '执行日期：' + formatdatetime( 'yyyymmdd', dt_zxsj.date );
      frm_print_syfz.bqmc1.caption := pub_ksmc;
      frm_print_syfz.dyrq1.caption := '日期：' + formatdatetime( 'yyyy-mm-dd hh:mm:ss', frm_func.curr_date );
      frm_print_syfz.zxsj1.caption := '执行日期：' + formatdatetime( 'yyyymmdd', dt_zxsj.date );
      frm_print_syfz.sp_syfz.close;
      frm_print_syfz.sp_syfz.Parameters.ParamByName( '@zyh' ).value := sp_dryz.fieldbyname( 'zyh' ).asstring;
      frm_print_syfz.sp_syfz.Parameters.ParamByName( '@zxsj' ).value := formatdatetime( 'yyyymmdd', dt_zxsj.date );
      frm_print_syfz.sp_syfz.Parameters.ParamByName( '@syfzph' ).value := ''; //sp_dryz.fieldbyname('fzph').asstring;;
      frm_print_syfz.sp_syfz.Parameters.ParamByName( '@dyfs' ).value := 2;
      frm_print_syfz.sp_syfz.open;
      if not frm_print_syfz.sp_syfz.IsEmpty then
      begin
        frm_print_syfz.brxm.Caption := sp_dryz.fieldbyname( 'brxm' ).asstring;
        frm_print_syfz.bch.Caption := trim( sp_dryz.fieldbyname( 'bch' ).asstring );
        frm_print_syfz.zyh.Caption := sp_dryz.fieldbyname( 'tmh' ).asstring;
        frm_print_syfz.brxm1.Caption := sp_dryz.fieldbyname( 'brxm' ).asstring;
        frm_print_syfz.bch1.Caption := trim( sp_dryz.fieldbyname( 'bch' ).asstring ) + '床';
        frm_print_syfz.zyh1.Caption := sp_dryz.fieldbyname( 'tmh' ).asstring;
        if formatdatetime( 'yyyymmdd', frm_func.curr_date ) > formatdatetime( 'yyyymmdd', dt_zxsj.date ) then
        begin
          frm_print_syfz.yymc.Caption := pub_yymc + '输液卡' + '(★)';
          frm_print_syfz.yymc1.Caption := pub_yymc + '输液卡' + '(★)';
        end
        else
        begin
          frm_print_syfz.yymc.Caption := pub_yymc + '输液卡';
          frm_print_syfz.yymc1.Caption := pub_yymc + '输液卡';
        end;
        frm_print_syfz.quickrep1.PrinterSettings.PrinterIndex := printer.Printers.IndexOf( 'sydprint' );
        if pub_yydm <> '0020' then
        begin
          frm_print_syfz.quickrep1.Page.Width := 210;
          frm_print_syfz.quickrep1.Page.Length := 93;
        end
        else
        begin
          frm_print_syfz.quickrep1.Page.Width := 91;
          frm_print_syfz.quickrep1.Page.Length := 257;
          //   QuickRep3.Width:=210;
        end;
        frm_print_syfz.QuickRep1.print;
      end;
    finally
      frm_print_syfz.Free;
    end;
  end;
end;

procedure Tfrm_syddy.BitBtn7Click( Sender: TObject );
var
  fzbh, yzid: string;
begin
  if not sp_dryz.isempty then
  begin
    application.CreateForm( Tfrm_print_syfz, frm_print_syfz );
    try
      sp_sybr.DisableControls;
      if not qb.checked then
      begin
        sp_sybr.Filter := 'zyh=' + #39 + sp_sybr.fieldbyname( 'zyh' ).asstring + #39;
        sp_sybr.filtered := true;
        sp_dryz.Filtered := false;
        sp_dryz.Filter := 'zyh=' + #39 + sp_sybr.fieldbyname( 'zyh' ).asstring + #39;
        sp_dryz.filtered := true;
      end
      else
      begin
        sp_sybr.Filtered := false;
        sp_sybr.First;
        sp_dryz.Filtered := false;
        sp_dryz.First;
      end;
      sp_sybr.First;
      while not sp_dryz.eof do
      begin
        fzbh := get_sjh( pub_czydm );
        yzid := Trim( sp_dryz.fieldbyname( 'yzid' ).asstring );
        if Trim( sp_dryz.fieldbyname( 'fzph' ).asstring ) = '' then
        begin
          DM_data.qry_pub.Close;
          DM_data.qry_pub.SQL.text := 'update zybl_zyyz set fzph=' + '''' + fzbh + '''' + ' where ' +
            'zyh=' + '''' + sp_dryz.fieldbyname( 'zyh' ).asstring + '''' +
            ' and id=' + yzid;
          DM_data.qry_pub.ExecSQL;
        end;
        sp_dryz.Next;
      end;
      sp_dryz.First;
      while not sp_sybr.eof do
      begin
        frm_print_syfz.bqmc.caption := pub_ksmc;
        frm_print_syfz.bqmc1.caption := pub_ksmc;
        frm_print_syfz.dyrq.caption := '日期：' + formatdatetime( 'yyyy-mm-dd hh:mm:ss', frm_func.curr_date );
        frm_print_syfz.zxsj.caption := '执行日期：' + formatdatetime( 'yyyymmdd', dt_zxsj.date );
        frm_print_syfz.dyrq1.caption := '日期：' + formatdatetime( 'yyyy-mm-dd hh:mm:ss', frm_func.curr_date );
        frm_print_syfz.zxsj1.caption := '执行日期：' + formatdatetime( 'yyyymmdd', dt_zxsj.date );
        frm_print_syfz.sp_syfz.close;
        frm_print_syfz.sp_syfz.Parameters.ParamByName( '@zyh' ).value := sp_sybr.fieldbyname( 'zyh' ).asstring;
        frm_print_syfz.sp_syfz.Parameters.ParamByName( '@zxsj' ).value := formatdatetime( 'yyyymmdd', dt_zxsj.date );
        frm_print_syfz.sp_syfz.Parameters.ParamByName( '@syfzph' ).value := '';
        frm_print_syfz.sp_syfz.Parameters.ParamByName( '@dyfs' ).value := 2;
        frm_print_syfz.sp_syfz.open;
        if not frm_print_syfz.sp_syfz.IsEmpty then
        begin
          frm_print_syfz.brxm.Caption := sp_sybr.fieldbyname( 'brxm' ).asstring;
          frm_print_syfz.bch.Caption := sp_sybr.fieldbyname( 'bch' ).asstring;
          frm_print_syfz.zyh.Caption := sp_sybr.fieldbyname( 'tmh' ).asstring;
          frm_print_syfz.brxm1.Caption := sp_sybr.fieldbyname( 'brxm' ).asstring;
          frm_print_syfz.bch1.Caption := sp_sybr.fieldbyname( 'bch' ).asstring + '床';
          frm_print_syfz.zyh1.Caption := sp_sybr.fieldbyname( 'tmh' ).asstring;
          if formatdatetime( 'yyyymmdd', frm_func.curr_date ) > formatdatetime( 'yyyymmdd', dt_zxsj.date ) then
          begin
            frm_print_syfz.yymc.Caption := pub_yymc + '输液卡' + '(★)';
            frm_print_syfz.yymc1.Caption := pub_yymc + '输液卡' + '(★)';
          end
          else
          begin
            frm_print_syfz.yymc.Caption := pub_yymc + '输液卡';
            frm_print_syfz.yymc1.Caption := pub_yymc + '输液卡';
          end;
          frm_print_syfz.quickrep1.PrinterSettings.PrinterIndex := printer.Printers.IndexOf( 'sydprint' );
          if pub_yydm <> '0020' then
          begin
            frm_print_syfz.quickrep1.Page.Width := 210;
            frm_print_syfz.quickrep1.Page.Length := 93;
          end
          else
          begin
            frm_print_syfz.quickrep1.Page.Width := 91;
            frm_print_syfz.quickrep1.Page.Length := 257;
            //   QuickRep3.Width:=210;
          end;
          frm_print_syfz.QuickRep1.print;
        end;
        sp_sybr.Next;
      end;
    finally
      frm_print_syfz.Free;
      sp_sybr.Filtered := false;
      sp_sybr.EnableControls;
    end;
  end;
end;

procedure Tfrm_syddy.BitBtn8Click( Sender: TObject );
var
  yzid, fzbh: string;
  i,sl:Integer;
begin
 if (sp_sybr.IsEmpty)  and (sp_dryz.IsEmpty) then
  begin
    ShowMessage('没有选择要打印的病人信息！');
    Exit;
  end;

  Switch := True;
  ChangePrinter;
  yzid := Trim( sp_dryz.fieldbyname( 'yzid' ).asstring );
  fzbh := get_sjh( pub_czydm );
  if Trim( sp_dryz.fieldbyname( 'fzph' ).asstring ) = '' then
  begin
    DM_data.qry_pub.Close;
    DM_data.qry_pub.SQL.text := 'update zybl_zyyz set fzph=' + '''' + fzbh + '''' + ' where ' +
      'zyh=' + '''' + sp_dryz.fieldbyname( 'zyh' ).asstring + '''' +
      ' and id=' + yzid;
    DM_data.qry_pub.ExecSQL;
  end;
  sp_dryz.close;
  sp_dryz.Parameters.ParamByName( '@bqdm' ).value := pub_bqdm;
  if True then
  
  sp_dryz.Parameters.ParamByName( '@zyh' ).value := prv_zyh;
  sp_dryz.Parameters.ParamByName( '@bz' ).value := '全部';
  sp_dryz.Parameters.ParamByName( '@zxsj' ).value := formatdatetime( 'yyyymmdd', dT_zxsj.Date );
  sp_dryz.Open;
  sp_dryz.Locate( 'yzid', yzid, [] );
  if not sp_dryz.isempty then
  begin
    application.CreateForm( Tfrm_print_sybq, frm_print_sybq );

    frm_print_sybq.dyrq.caption := '日期：' + formatdatetime( 'yyyy-mm-dd', dt_zxsj.date );
    frm_print_sybq.zxsj.caption := '执行日期：' + formatdatetime( 'yyyymmdd', dt_zxsj.date );
    frm_print_sybq.dyrq1.caption := '日期：' + formatdatetime( 'yyyy-mm-dd', dt_zxsj.date );
    //formatdatetime('yyyy-mm-dd hh:mm:ss',frm_func.curr_date);
    frm_print_sybq.sp_syfz.close;
    frm_print_sybq.sp_syfz.Parameters.ParamByName( '@zyh' ).value := sp_dryz.fieldbyname( 'zyh' ).asstring;
    frm_print_sybq.sp_syfz.Parameters.ParamByName( '@zxsj' ).value := formatdatetime( 'yyyymmdd', dt_zxsj.date );
    if Trim(sp_dryz.fieldbyname( 'fzph' ).asstring)='' then
    begin
      frm_print_sybq.sp_syfz.Parameters.ParamByName( '@syfzph' ).value := sp_dryz.fieldbyname( 'yzid' ).asstring;
    end
    else
    frm_print_sybq.sp_syfz.Parameters.ParamByName( '@syfzph' ).value := sp_dryz.fieldbyname( 'fzph' ).asstring;
    frm_print_sybq.sp_syfz.Parameters.ParamByName( '@dyfs' ).value := 2;
    frm_print_sybq.sp_syfz.open;
    if not frm_print_sybq.sp_syfz.IsEmpty then
    begin
      if ( pub_yydm <> '0051' ) then
      begin
        if pub_yydm='0003' then
        begin

//          DM_data.qry_pub.close;
//          DM_data.qry_pub.SQL.Text:='select * from sys_ypyf where rtrim(mc)='+''''+
//          trim(frm_print_sybq.sp_syfz.FieldByName('ypyf').asstring)+'''';
//          DM_data.qry_pub.Open;
//          if DM_data.qry_pub.IsEmpty then
//          begin
//            sl:=1;
//          end
//          else
//          begin
//            sl:=DM_data.qry_pub.FieldByName('sl').AsInteger;
//          end;
//          for i := 0 to sl-1 do
//          begin
//            ChangePrinter_sybq;
//            frm_zysf_print_service.Printsyd( sp_sybr,frm_print_sybq.sp_syfz,FormatDateTime('yyyy-MM-dd',dt_zxsj.DateTime));
//          end;
          try
                frm_print_sybq.QRLabel4.caption := '日期：' + formatdatetime( 'MM-dd', dt_zxsj.date );
                frm_print_sybq.QRLabel1.Caption := sp_dryz.fieldbyname( 'brxm' ).asstring;
                if formatdatetime( 'yyyymmdd', frm_func.curr_date ) > formatdatetime( 'yyyymmdd', dt_zxsj.date ) then
                begin
                  frm_print_sybq.QRLabel2.Caption := trim( sp_dryz.fieldbyname( 'bch' ).asstring ) + '(★)';
                end
                else
                begin
                  frm_print_sybq.QRLabel2.Caption := trim( sp_dryz.fieldbyname( 'bch' ).asstring ) + '床'
                end;
                frm_print_sybq.brnl.Caption := '年龄：'+sp_sybr.fieldbyname( 'brnl' ).asstring;
                frm_print_sybq.QRLabel8.Caption := '条码号：'+sp_dryz.fieldbyname( 'tmh' ).asstring;
            qyydhszdy;
          finally
            frm_print_sybq.Free;
          end;

        end
        else if sfqyydhsz=true then
        begin
          try
                frm_print_sybq.QRLabel4.caption := '日期：' + formatdatetime( 'MM-dd', dt_zxsj.date );
                frm_print_sybq.QRLabel1.Caption := sp_dryz.fieldbyname( 'brxm' ).asstring;
                if formatdatetime( 'yyyymmdd', frm_func.curr_date ) > formatdatetime( 'yyyymmdd', dt_zxsj.date ) then
                begin
                  frm_print_sybq.QRLabel2.Caption := trim( sp_dryz.fieldbyname( 'bch' ).asstring ) + '(★)';
                end
                else
                begin
                  frm_print_sybq.QRLabel2.Caption := trim( sp_dryz.fieldbyname( 'bch' ).asstring ) + '床'
                end;
                frm_print_sybq.brnl.Caption := '年龄：'+sp_sybr.fieldbyname( 'brnl' ).asstring;
                frm_print_sybq.QRLabel8.Caption := '条码号：'+sp_dryz.fieldbyname( 'tmh' ).asstring;
            qyydhszdy;
          finally
            frm_print_sybq.Free;
          end;
        end
        else
        begin
          if pub_yydm='0015' then
          begin
            try
              frm_print_sybq.QRLabel11.Caption := sp_dryz.fieldbyname( 'brxm' ).asstring;
              frm_print_sybq.QRLabel12.Caption := trim( sp_dryz.fieldbyname( 'bch' ).asstring ) + '床';
              frm_print_sybq.QRLabel17.Caption := sp_sybr.fieldbyname( 'brnl' ).asstring;
              frm_print_sybq.QRLbl18.Caption   := sp_sybr.fieldbyname( 'tmh' ).asstring;
              qyydhszdy_xz;
            finally
              frm_print_sybq.Free;
            end;
          end
          else if (pub_yydm='0204') or (pub_yydm='0246') then
          begin
            try
              frm_print_sybq.dyrq1_1.caption := '日期：' + formatdatetime( 'MM-dd', dt_zxsj.date );
              frm_print_sybq.brnl1_1.Caption := sp_sybr.fieldbyname( 'brnl' ).asstring;
              frm_print_sybq.brxm.Caption := sp_dryz.fieldbyname( 'brxm' ).asstring;
              frm_print_sybq.brxm1_1.Caption := sp_dryz.fieldbyname( 'brxm' ).asstring;
              if formatdatetime( 'yyyymmdd', frm_func.curr_date ) > formatdatetime( 'yyyymmdd', dt_zxsj.date ) then
              begin
                frm_print_sybq.bch.Caption := trim( sp_dryz.fieldbyname( 'bch' ).asstring ) + '(★)';
                frm_print_sybq.bch1_1.Caption := trim( sp_dryz.fieldbyname( 'bch' ).asstring ) + '床(★)';
              end
              else
              begin
                frm_print_sybq.bch.Caption := trim( sp_dryz.fieldbyname( 'bch' ).asstring );
                frm_print_sybq.bch1_1.Caption := trim( sp_dryz.fieldbyname( 'bch' ).asstring ) + '床';
              end;
              //frm_print_sybq.ksmc1.Caption:= sp_sybr.fieldbyname('ksmc').asstring;
              //frm_print_sybq.qr_sm_1_1.caption := frm_print_sybq.sp_syfz.FieldByName( 'bz' ).AsString;
              //frm_print_sybq.quickrep3.PrinterSettings.PrinterIndex := printer.Printers.IndexOf( '条码打印机' );
    //          if ( frm_print_sybq.QuickRep3.Printer.PrinterName <> Printer.Printers[v_PrinterIndex_new] ) and ( v_IsPrinterJoin ) then
    //          begin
    //              frm_print_sybq.QuickRep3.Printer.PrinterName := Printer.Printers[v_PrinterIndex_new];
    //          end;
                if v_IsPrinterJoin=True then
                if  frm_print_sybq.QuickRep6.PrinterSettings.PrinterIndex <> v_PrinterIndex_new then
                begin
                  frm_print_sybq.QuickRep6.PrinterSettings.PrinterIndex := v_PrinterIndex_new;
                end;
              if pub_yydm='0246' then
              begin
                frm_print_sybq.QuickRep6.Page.Length:=31;
                frm_print_sybq.QuickRep6.Page.Width:=52;
              end;
              frm_print_sybq.QuickRep6.print;
    //          if ( frm_print_sybq.QuickRep3.Printer.PrinterName <> frm_print_sybq.QuickRep3.Printers[v_PrinterIndex_old] ) and ( v_IsPrinterJoin ) then
    //          begin
    //              frm_print_sybq.QuickRep3.Printer.PrinterName := Printer.Printers[v_PrinterIndex_old];
    //          end;
            finally
              frm_print_sybq.Free;
            end;
          end
          else
          begin
            try
              frm_print_sybq.dyrq1.caption := '日期：' + formatdatetime( 'MM-dd', dt_zxsj.date );
              QR3DisplayAge;
              frm_print_sybq.brxm.Caption := sp_dryz.fieldbyname( 'brxm' ).asstring;
              frm_print_sybq.brxm1.Caption := sp_dryz.fieldbyname( 'brxm' ).asstring;
              QR3ShaYaOfficeBed;
              //frm_print_sybq.ksmc1.Caption:= sp_sybr.fieldbyname('ksmc').asstring;
              //frm_print_sybq.qr_sm.caption := frm_print_sybq.sp_syfz.FieldByName( 'bz' ).AsString;
              //frm_print_sybq.quickrep3.PrinterSettings.PrinterIndex := printer.Printers.IndexOf( '条码打印机' );
    //          if ( frm_print_sybq.QuickRep3.Printer.PrinterName <> Printer.Printers[v_PrinterIndex_new] ) and ( v_IsPrinterJoin ) then
    //          begin
    //              frm_print_sybq.QuickRep3.Printer.PrinterName := Printer.Printers[v_PrinterIndex_new];
    //          end;
                if v_IsPrinterJoin=True then
                if frm_print_sybq.QuickRep3.PrinterSettings.PrinterIndex <> v_PrinterIndex_new then
                begin
                  frm_print_sybq.QuickRep3.PrinterSettings.PrinterIndex := v_PrinterIndex_new;
                end;
                if pub_yydm='0229' then
                begin
                  frm_print_sybq.QuickRep3.Page.Length:=32.5;
                  frm_print_sybq.QuickRep3.Margins.Bottom:=3;
                end;
                gkyydy;//骨科医院打印要求字体大一号
              if pub_yydm='0269' then
              begin
                tsyyStyle;//台山医院打印格式
              end;
              if pub_yydm='0260' then
              begin
                 jyxrmyyStyle;
              end;
              frm_print_sybq.QuickRep3.print;
    //          if ( frm_print_sybq.QuickRep3.Printer.PrinterName <> frm_print_sybq.QuickRep3.Printers[v_PrinterIndex_old] ) and ( v_IsPrinterJoin ) then
    //          begin
    //              frm_print_sybq.QuickRep3.Printer.PrinterName := Printer.Printers[v_PrinterIndex_old];
    //          end;
            finally
              frm_print_sybq.Free;
            end;
          end;
        end
      end
      else
      begin
         if (pub_yydm='0262') or  (pub_yydm='0271') then
         begin
          if  (pub_yydm='0271')  then
                    ChangePrinter_ddyysypq(7);
         frm_zysf_print_service.Printsypq(frm_print_sybq.sp_syfz,sp_sybr.fieldbyname( 'bch' ).asstring,sp_sybr.fieldbyname( 'brxm' ).asstring,sp_sybr.fieldbyname( 'zyh' ).asstring ,sp_sybr.fieldbyname( 'tmh' ).asstring,sp_sybr.fieldbyname( 'brxb' ).asstring,sp_sybr.fieldbyname( 'brnl' ).asstring,formatdatetime( 'MM-dd', dt_zxsj.date ));
         end
         else
         begin
            try
              frm_print_sybq.dyrq_1.caption := '日期：' + formatdatetime( 'MM-dd', dt_zxsj.date );

              frm_print_sybq.brxm.Caption := sp_dryz.fieldbyname( 'brxm' ).asstring;
              frm_print_sybq.brxm_1.Caption := sp_dryz.fieldbyname( 'brxm' ).asstring;
              if formatdatetime( 'yyyymmdd', frm_func.curr_date ) > formatdatetime( 'yyyymmdd', dt_zxsj.date ) then
              begin
                frm_print_sybq.bch.Caption := trim( sp_dryz.fieldbyname( 'bch' ).asstring ) + '(★)';
                frm_print_sybq.bch_1.Caption := trim( sp_dryz.fieldbyname( 'bch' ).asstring ) + '(★)';
              end
              else
              begin
                frm_print_sybq.bch.Caption := trim( sp_dryz.fieldbyname( 'bch' ).asstring );
                frm_print_sybq.bch_1.Caption := trim( sp_dryz.fieldbyname( 'bch' ).asstring );
              end;
              //frm_print_sybq.ksmc1.Caption:= sp_sybr.fieldbyname('ksmc').asstring;
              //frm_print_sybq.qr_sm_1.caption := frm_print_sybq.sp_syfz.FieldByName( 'bz' ).AsString;
              //frm_print_sybq.quickrep2.PrinterSettings.PrinterIndex := printer.Printers.IndexOf( 'sybqprint' );
    //            if ( frm_print_sybq.QuickRep2.Printer.PrinterName <> Printer.Printers[v_PrinterIndex_new] ) and ( v_IsPrinterJoin ) then
    //            begin
    //              frm_print_sybq.QuickRep2.Printer.PrinterName := Printer.Printers[v_PrinterIndex_new];
    //            end;
                if v_IsPrinterJoin=True then
                if  frm_print_sybq.QuickRep2.PrinterSettings.PrinterIndex <> v_PrinterIndex_new then
                begin
                  frm_print_sybq.QuickRep2.PrinterSettings.PrinterIndex := v_PrinterIndex_new;
                end;
                frm_print_sybq.QuickRep2.print;
    //            if ( frm_print_sybq.QuickRep2.Printer.PrinterName <> frm_print_sybq.QuickRep2.Printers[v_PrinterIndex_old] ) and ( v_IsPrinterJoin ) then
    //            begin
    //              frm_print_sybq.QuickRep2.Printer.PrinterName := Printer.Printers[v_PrinterIndex_old];
    //            end;
            finally
              frm_print_sybq.Free;
            end;
         end;
      end;
    end
    else
      frm_print_sybq.Free;
  end;
  //RevertPrinter;
end;

procedure Tfrm_syddy.BitBtn9Click( Sender: TObject );
var
  fzbh, yzid: string;
  i,sl:Integer;
begin
  Switch := True;
  ChangePrinter;
  if not sp_dryz.isempty then
  begin
    application.CreateForm( Tfrm_print_sybq, frm_print_sybq );
    try
      sp_sybr.DisableControls;
      if not qb.checked then
      begin
        sp_sybr.Filter := 'zyh=' + #39 + sp_sybr.fieldbyname( 'zyh' ).asstring + #39;
        sp_sybr.filtered := true;
        sp_dryz.Filtered := false;
        sp_dryz.Filter := 'zyh=' + #39 + sp_sybr.fieldbyname( 'zyh' ).asstring + #39;
        sp_dryz.filtered := true;
      end
      else
      begin
        sp_sybr.Filtered := false;
        sp_sybr.First;
        sp_dryz.Filtered := false;
        sp_dryz.First;
      end;
      sp_sybr.First;
      while not sp_dryz.eof do
      begin
        fzbh := get_sjh( pub_czydm );
        yzid := Trim( sp_dryz.fieldbyname( 'yzid' ).asstring );
        if Trim( sp_dryz.fieldbyname( 'fzph' ).asstring ) = '' then
        begin
          DM_data.qry_pub.Close;
          DM_data.qry_pub.SQL.text := 'update zybl_zyyz set fzph=' + '''' + fzbh + '''' + ' where ' +
            'zyh=' + '''' + sp_dryz.fieldbyname( 'zyh' ).asstring + '''' +
            ' and id=' + yzid;
          DM_data.qry_pub.ExecSQL;
        end;
        sp_dryz.Next;
      end;

      while not sp_sybr.eof do
      begin
        frm_print_sybq.dyrq.caption := '日期：' + formatdatetime( 'yyyy-mm-dd hh:mm:ss', frm_func.curr_date );
        frm_print_sybq.zxsj.caption := '执行日期：' + formatdatetime( 'yyyymmdd', dt_zxsj.date );
        frm_print_sybq.dyrq1.caption := '日期：' + formatdatetime( 'yyyy-mm-dd', dt_zxsj.date );
        frm_print_sybq.sp_syfz.close;
        frm_print_sybq.sp_syfz.Parameters.ParamByName( '@zyh' ).value := sp_sybr.fieldbyname( 'zyh' ).asstring;
        frm_print_sybq.sp_syfz.Parameters.ParamByName( '@zxsj' ).value := formatdatetime( 'yyyymmdd', dt_zxsj.date );
        frm_print_sybq.sp_syfz.Parameters.ParamByName( '@syfzph' ).value := '';
        frm_print_sybq.sp_syfz.Parameters.ParamByName( '@dyfs' ).value := 2;
        frm_print_sybq.sp_syfz.open;
        if not frm_print_sybq.sp_syfz.IsEmpty then
        begin
          if ( pub_yydm <> '0051' ) then
          begin
            if pub_yydm='0003' then
            begin
//              frm_print_sybq.sp_syfz.First;
//              while not frm_print_sybq.sp_syfz.Eof do
//              begin
//                DM_data.qry_pub.close;
//                DM_data.qry_pub.SQL.Text:='select * from sys_ypyf where rtrim(mc)='+''''+
//                trim(frm_print_sybq.sp_syfz.FieldByName('ypyf').asstring)+'''';
//                DM_data.qry_pub.Open;
//                if DM_data.qry_pub.IsEmpty then
//                begin
//                  sl:=1;
//                end
//                else
//                begin
//                  sl:=DM_data.qry_pub.FieldByName('sl').AsInteger;
//                end;
//                for i := 0 to sl-1 do
//                begin
//                  ChangePrinter_sybq;
//                  frm_zysf_print_service.Printsyd( sp_sybr,frm_print_sybq.sp_syfz,FormatDateTime('yyyy-MM-dd',dt_zxsj.DateTime));
//                end;
//
//                frm_print_sybq.sp_syfz.Next;
//              end;
                frm_print_sybq.QRLabel4.caption := '日期：' + formatdatetime( 'MM-dd', dt_zxsj.date );
                frm_print_sybq.QRLabel1.Caption := sp_sybr.fieldbyname( 'brxm' ).asstring;
                if formatdatetime( 'yyyymmdd', frm_func.curr_date ) > formatdatetime( 'yyyymmdd', dt_zxsj.date ) then
                begin
                  frm_print_sybq.QRLabel2.Caption := trim( sp_sybr.fieldbyname( 'bch' ).asstring ) + '(★)';
                end
                else
                begin
                  frm_print_sybq.QRLabel2.Caption := trim( sp_sybr.fieldbyname( 'bch' ).asstring ) + '床'
                end;
                frm_print_sybq.brnl.Caption := '年龄：'+sp_sybr.fieldbyname( 'brnl' ).asstring;
                frm_print_sybq.QRLabel8.Caption := '条码号：'+sp_sybr.fieldbyname( 'tmh' ).asstring;
              qyydhszdy;
            end
            else if sfqyydhsz=true then
            begin
               frm_print_sybq.QRLabel4.caption := '日期：' + formatdatetime( 'MM-dd', dt_zxsj.date );
                frm_print_sybq.QRLabel1.Caption := sp_sybr.fieldbyname( 'brxm' ).asstring;
                if formatdatetime( 'yyyymmdd', frm_func.curr_date ) > formatdatetime( 'yyyymmdd', dt_zxsj.date ) then
                begin
                  frm_print_sybq.QRLabel2.Caption := trim( sp_sybr.fieldbyname( 'bch' ).asstring ) + '(★)';
                end
                else
                begin
                  frm_print_sybq.QRLabel2.Caption := trim( sp_sybr.fieldbyname( 'bch' ).asstring ) + '床'
                end;
                frm_print_sybq.brnl.Caption := '年龄：'+sp_sybr.fieldbyname( 'brnl' ).asstring;
                frm_print_sybq.QRLabel8.Caption := '条码号：'+sp_sybr.fieldbyname( 'tmh' ).asstring;
              qyydhszdy;
            end
            else
            begin
              if pub_yydm='0015' then
              begin
                frm_print_sybq.QRLabel11.Caption := sp_sybr.fieldbyname( 'brxm' ).asstring;
                frm_print_sybq.QRLabel12.Caption := trim( sp_sybr.fieldbyname( 'bch' ).asstring ) + '床';
                frm_print_sybq.QRLabel17.Caption := sp_sybr.fieldbyname( 'brnl' ).asstring;
                frm_print_sybq.QRLbl18.Caption   := sp_sybr.fieldbyname( 'tmh' ).asstring;
                qyydhszdy_xz;
              end
              else if (pub_yydm='0204') or (pub_yydm='0246') then
                   
              begin
                frm_print_sybq.dyrq1_1.caption := '日期：' + formatdatetime( 'MM-dd', dt_zxsj.date );
                frm_print_sybq.brnl1_1.Caption := sp_sybr.fieldbyname( 'brnl' ).asstring;
                frm_print_sybq.brxm.Caption := sp_sybr.fieldbyname( 'brxm' ).asstring;
                frm_print_sybq.brxm1_1.Caption := sp_sybr.fieldbyname( 'brxm' ).asstring;
                if formatdatetime( 'yyyymmdd', frm_func.curr_date ) > formatdatetime( 'yyyymmdd', dt_zxsj.date ) then
                begin
                  frm_print_sybq.bch.Caption := sp_sybr.fieldbyname( 'bch' ).asstring + '(★)';
                  frm_print_sybq.bch1_1.Caption := Trim(sp_sybr.fieldbyname( 'bch' ).asstring) + '床(★)';
                end
                else
                begin
                  frm_print_sybq.bch.Caption := sp_sybr.fieldbyname( 'bch' ).asstring;
                  frm_print_sybq.bch1_1.Caption := Trim(sp_sybr.fieldbyname( 'bch' ).asstring) + '床';
                end;
                //frm_print_sybq.ksmc1.Caption:= sp_sybr.fieldbyname('ksmc').asstring;
                //frm_print_sybq.qr_sm_1_1.caption := frm_print_sybq.sp_syfz.FieldByName( 'bz' ).AsString;
                //frm_print_sybq.quickrep3.PrinterSettings.PrinterIndex := printer.Printers.IndexOf( 'sybqprint' );
    //            if ( frm_print_sybq.QuickRep3.Printer.PrinterName <> Printer.Printers[v_PrinterIndex_new] ) and ( v_IsPrinterJoin ) then
    //            begin
    //              frm_print_sybq.QuickRep3.Printer.PrinterName := Printer.Printers[v_PrinterIndex_new];
    //            end;
                if v_IsPrinterJoin=True then
                if  frm_print_sybq.QuickRep6.PrinterSettings.PrinterIndex <> v_PrinterIndex_new then
                begin
                  frm_print_sybq.QuickRep6.PrinterSettings.PrinterIndex := v_PrinterIndex_new;
                end;
                if pub_yydm='0246' then
                begin
                  frm_print_sybq.QuickRep6.Page.Length:=31;
                  frm_print_sybq.QuickRep6.Page.Width:=52;
                end;
                frm_print_sybq.QuickRep6.print;
              end
              else
              begin
               if (pub_yydm='0262')  or  (pub_yydm='0271') then
               begin
                  if  (pub_yydm='0271')  then
                    ChangePrinter_ddyysypq(7);
                   frm_zysf_print_service.Printsypq(frm_print_sybq.sp_syfz,sp_sybr.fieldbyname( 'bch' ).asstring,sp_sybr.fieldbyname( 'brxm' ).asstring,sp_sybr.fieldbyname( 'zyh' ).asstring ,sp_sybr.fieldbyname( 'tmh' ).asstring,sp_sybr.fieldbyname( 'brxb' ).asstring,sp_sybr.fieldbyname( 'brnl' ).asstring,formatdatetime( 'MM-dd', dt_zxsj.date ));
               end
               else
               begin
                frm_print_sybq.dyrq1.caption := '日期：' + formatdatetime( 'MM-dd', dt_zxsj.date );
                QR3DisplayAge;
                frm_print_sybq.brxm.Caption := sp_sybr.fieldbyname( 'brxm' ).asstring;
                frm_print_sybq.brxm1.Caption := sp_sybr.fieldbyname( 'brxm' ).asstring;
                QR3ShaYaOfficeBed;
                //frm_print_sybq.ksmc1.Caption:= sp_sybr.fieldbyname('ksmc').asstring;
                //frm_print_sybq.qr_sm.caption := frm_print_sybq.sp_syfz.FieldByName( 'bz' ).AsString;
                //frm_print_sybq.quickrep3.PrinterSettings.PrinterIndex := printer.Printers.IndexOf( 'sybqprint' );
    //            if ( frm_print_sybq.QuickRep3.Printer.PrinterName <> Printer.Printers[v_PrinterIndex_new] ) and ( v_IsPrinterJoin ) then
    //            begin
    //              frm_print_sybq.QuickRep3.Printer.PrinterName := Printer.Printers[v_PrinterIndex_new];
    //            end;
                 gkyydy;//骨科医院打印要求字体大一号
                if v_IsPrinterJoin=True then
                if  frm_print_sybq.QuickRep3.PrinterSettings.PrinterIndex <> v_PrinterIndex_new then
                begin
                  frm_print_sybq.QuickRep3.PrinterSettings.PrinterIndex := v_PrinterIndex_new;
                end;
                if pub_yydm='0229' then
                begin
                  frm_print_sybq.QuickRep3.Page.Length:=32.5;
                  frm_print_sybq.QuickRep3.Margins.Bottom:=3;
                end;
                
                if pub_yydm='0269' then
                begin
                  tsyyStyle;//台山医院打印格式
                end;
                 if pub_yydm='0260' then
                 begin
                    jyxrmyyStyle;
                 end;

                frm_print_sybq.QuickRep3.print;
              end;
              end;



            end
          end
          else
          begin
            frm_print_sybq.dyrq_1.caption := '日期：' + formatdatetime( 'MM-dd', dt_zxsj.date );
            frm_print_sybq.brxm.Caption := sp_sybr.fieldbyname( 'brxm' ).asstring;
            frm_print_sybq.brxm_1.Caption := sp_sybr.fieldbyname( 'brxm' ).asstring;
            if formatdatetime( 'yyyymmdd', frm_func.curr_date ) > formatdatetime( 'yyyymmdd', dt_zxsj.date ) then
            begin
              frm_print_sybq.bch.Caption := sp_sybr.fieldbyname( 'bch' ).asstring + '(★)';
              frm_print_sybq.bch_1.Caption := sp_sybr.fieldbyname( 'bch' ).asstring + '(★)';
            end
            else
            begin
              frm_print_sybq.bch.Caption := sp_sybr.fieldbyname( 'bch' ).asstring;
              frm_print_sybq.bch_1.Caption := sp_sybr.fieldbyname( 'bch' ).asstring;
            end;
            //frm_print_sybq.ksmc1.Caption:= sp_sybr.fieldbyname('ksmc').asstring;
            //frm_print_sybq.qr_sm_1.caption := frm_print_sybq.sp_syfz.FieldByName( 'bz' ).AsString;
            //frm_print_sybq.quickrep2.PrinterSettings.PrinterIndex := printer.Printers.IndexOf( '条码打印机' );
//            if ( frm_print_sybq.QuickRep2.Printer.PrinterName <> Printer.Printers[v_PrinterIndex_new] ) and ( v_IsPrinterJoin ) then
//            begin
//              frm_print_sybq.QuickRep2.Printer.PrinterName := Printer.Printers[v_PrinterIndex_new];
//            end;
            if v_IsPrinterJoin=True then
            if  frm_print_sybq.QuickRep2.PrinterSettings.PrinterIndex <> v_PrinterIndex_new then
            begin
              frm_print_sybq.QuickRep2.PrinterSettings.PrinterIndex := v_PrinterIndex_new;
            end;
            frm_print_sybq.QuickRep2.print;
//            if ( frm_print_sybq.QuickRep2.Printer.PrinterName <> frm_print_sybq.QuickRep2.Printers[v_PrinterIndex_old] ) and ( v_IsPrinterJoin ) then
//            begin
//              frm_print_sybq.QuickRep2.Printer.PrinterName := Printer.Printers[v_PrinterIndex_old];
//            end;
          end;
        end;
        sp_sybr.Next;
      end;
    finally
      frm_print_sybq.Free;
      sp_sybr.EnableControls;
      sp_sybr.Filtered := false;
    end;
  end;
  //RevertPrinter;
end;

procedure Tfrm_syddy.Button10Click(Sender: TObject);
var
  i, y, j, count, x,dyxh: Integer;
  aControl: TControl;
  v_yytj, v_lb, filter: string;
  v_zyh: string;
begin
//  sp_dryz.close;
//  sp_dryz.Parameters.ParamByName( '@bqdm' ).value := pub_bqdm;
//  sp_dryz.Parameters.ParamByName( '@zyh' ).value := '';
//  sp_dryz.Parameters.ParamByName( '@bz' ).value := '全部';
//  sp_dryz.Parameters.ParamByName( '@zxsj' ).value := formatdatetime( 'yyyymmdd', dT_zxsj.Date );
//  sp_dryz.Open;
//
//  sp_sybr.close;
//  sp_sybr.Parameters.ParamByName( '@bqdm' ).value := pub_bqdm;
//  sp_sybr.Parameters.ParamByName( '@zyh' ).value := '';
//  sp_sybr.Parameters.ParamByName( '@zxsj' ).value := formatdatetime( 'yyyymmdd', dT_zxsj.Date );
//  sp_sybr.Open;
//  sp_dryz.Filtered := false;
  if pub_yydm= '0240' then
  begin
    if Application.MessageBox(pchar('你将打印左边勾选的病人的全部长期输液单，是否确认打印？')
      , '询问', MB_OKCANCEL + MB_ICONQUESTION
      + MB_DEFBUTTON2) = IDCANCEL then
    begin
      Exit;
    end;
    sp_sybr.First;
    sp_dyxh.Close;
    sp_dyxh.Parameters.Refresh;
    sp_dyxh.Parameters.ParamByName('@czydm').Value:=pub_czydm;
    sp_dyxh.Parameters.ParamByName('@dyxh').Value:=1;
    sp_dyxh.ExecProc;
    dyxh:=sp_dyxh.Parameters.ParamByName('@dyxh').Value;
    while not sp_sybr.eof do
    begin
      if sp_sybr.FieldByName('xzbz').AsBoolean=false then
      begin
        sp_sybr.Next;
      end
      else
      begin
        with sp_syd_xg do
        begin
          Filtered := False;
          Close;
          Parameters.Refresh;
          Parameters.ParamByName( '@zyh' ).Value := sp_sybr.FieldByName('zyh').AsString;
          Parameters.ParamByName( '@bqdm' ).Value := pub_bqdm;
          Parameters.ParamByName( '@zxsj' ).Value := Frm_func.curr_date;
          Parameters.ParamByName( '@bz' ).Value := '长期';
          Parameters.ParamByName( '@dyxh' ).Value := dyxh;
          ExecProc;
        end;
        sp_sybr.DisableControls;
        PrintSYXSK(clLongTerm,Trim(sp_sybr.FieldByName('zyh').AsString));
        sp_sybr.EnableControls;
        sp_sybr.Next;
      end;
    end;
    ADOQuery1.close;
    ADOQuery1.SQL.Clear;
    ADOQuery1.sql.Add('select * from zydbb_syxsd where dyxh=:dyxh');
    ADOQuery1.Parameters.ParamByName('dyxh').Value:=dyxh;
    ADOQuery1.Open;
    ChangePrinter_syjhd;
    frm_zysf_print_service.PrintCQLSSYXSK(adoquery1, FormatDateTime('yyyy-MM-dd',dt_zxsj.DateTime),clLongTerm);
    ADOQuery1.close;
    ADOQuery1.SQL.Clear;
    ADOQuery1.sql.Add('delete from zydbb_syxsd ');
    ADOQuery1.ExecSQL;
  end
  else if pub_yydm='0271' then  //掇刀医院
  begin
    if Application.MessageBox(pchar('你将打印左边勾选的病人的全部输液单，是否确认打印？')
    , '询问', MB_OKCANCEL + MB_ICONQUESTION
    + MB_DEFBUTTON2) = IDCANCEL then
    begin
      Exit;
    end;
    if sp_dryz.Active then
    createrect( myrect_cx, sp_dryz, dbgrideh2, 9, 10, 13 );
    sp_sybr.First;
    ChangePrinter_syjhd;
    while not sp_sybr.eof do
    begin
      if sp_sybr.FieldByName('xzbz').AsBoolean=false then
      begin
        sp_sybr.Next;
      end else
      begin
        v_zyh:= v_zyh +','+ Trim( sp_sybr.fieldbyname( 'zyh' ).asstring );
        sp_sybr.Next;
      end;
    end;
    v_zyh:=Copy(v_zyh,2,length(v_zyh)-1);
    with sp_ddyy_syjhzxd do
    begin
      Filtered := False;
      Close;
      Parameters.Refresh;
      Parameters.ParamByName( '@zyh' ).Value := v_zyh;// Trim( sp_sybr.fieldbyname( 'zyh' ).asstring );
      Parameters.ParamByName( '@rq' ).Value := FormatDateTime('yyyyMMdd',dt_zxsj.DateTime);
      Parameters.ParamByName( '@fzph_zh' ).Value := '';
      Parameters.ParamByName( '@ISsyd' ).Value := 1;
      Parameters.ParamByName( '@yytj1' ).Value := '';
      Open;
    end;
//    DM_data.qry_pub.close;
//    DM_data.qry_pub.sql.text := 'select yytj from zybl_zyyz_dytjsz where dyxm=''输液计划单''';
//    DM_data.qry_pub.Open;
//    if DM_data.qry_pub.IsEmpty then
//    begin
//      v_yytj := '';
//    end
//    else
//    begin
//      DM_data.qry_pub.First;
//      while not DM_data.qry_pub.eof do
//      begin
//        if pub_yydm='0271' then   //掇刀医院代码
//        begin
//         v_yytj := v_yytj + '(yytj=' + '''' + DM_data.qry_pub.FieldByName( 'yytj' ).asstring + '''' + '  and kdbq=' + '''' + pub_bqdm +
//           ''')' + ' or ';
//        end else
//        begin
//            v_yytj := v_yytj + '(yytj=' + '''' + DM_data.qry_pub.FieldByName( 'yytj' ).asstring + '''' + '  and kdks=' + '''' + pub_ksdm +
//           ''')' + ' or ';
//        end;
//    //          v_yytj := v_yytj + '(yytj=' + '''' + DM_data.qry_pub.FieldByName( 'yytj' ).asstring + '''' + '  and kdks=' + '''' + pub_ksdm +
//    //         ''')' + ' or ';
//        DM_data.qry_pub.Next;
//      end;
//
//    end;
//
//    DM_data.qry_pub.close;
//    DM_data.qry_pub.sql.text := 'select lbmc from zybl_zyyz_dylbsz where dyxm=''输液计划单''';
//    DM_data.qry_pub.Open;
//    if DM_data.qry_pub.IsEmpty then
//    begin
//      v_lb := '';
//    end
//    else
//    begin
//      DM_data.qry_pub.First;
//      while not DM_data.qry_pub.eof do
//      begin
//
//        if pub_yydm='0271' then   //掇刀医院代码
//        begin
//          v_lb := v_lb + '(lb=' + '''' + DM_data.qry_pub.FieldByName( 'lbmc' ).asstring + '''' + '  and kdbq=' + '''' + pub_bqdm +
//           ''')' + ' or ';
//        end else
//        begin
//          v_lb := v_lb + '(lb=' + '''' + DM_data.qry_pub.FieldByName( 'lbmc' ).asstring + '''' + '  and kdks=' + '''' + pub_ksdm +
//           ''')' + ' or ';
//        end;
//    //          v_lb := v_lb + '(lb=' + '''' + DM_data.qry_pub.FieldByName( 'lbmc' ).asstring + '''' + '  and kdks=' + '''' + pub_ksdm +
//    //           ''')' + ' or ';
//        DM_data.qry_pub.Next;
//      end;
//
//    end;
//
//    if v_yytj + v_lb = '' then
//    begin
//      filter := ' 1<>1 ';
//    end
//    else
//    begin
//      filter := v_yytj + v_lb + ' ( xmmc like ''%皮试%'' )'+
//      ' or '+' ( xmmc like ''%敏试%'' )';
//    end;
//
//    sp_syjhzxd.Filter := filter;
//
//    sp_syjhzxd.Filtered := True;

    if not sp_ddyy_syjhzxd.IsEmpty then
    begin
      ChangePrinter_syjhd;
      frm_zysf_print_service.Printsyjhd( sp_sybr,sp_ddyy_syjhzxd,FormatDateTime('yyyy-MM-dd',dt_zxsj.DateTime));
    end;
//    DM_data.qry_pub.close;
//    DM_data.qry_pub.SQL.text:='insert into zybl_zyyz_syddy '+
//    'select id,'+''''+FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+' from zybl_zyyz where zxbz=1 and  zyh='+''''+Trim( sp_sybr.fieldbyname( 'zyh' ).asstring )+
//    ''''+' and id not in (select yzid from zybl_zyyz_syddy where dyrq='+''''+
//    FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+')';
//    DM_data.qry_pub.ExecSQL;
  end
  else
  begin
    if Application.MessageBox(pchar('你将打印左边勾选的病人的全部输液单，是否确认打印？')
      , '询问', MB_OKCANCEL + MB_ICONQUESTION
      + MB_DEFBUTTON2) = IDCANCEL then
    begin
     Exit;
    end;
    if sp_dryz.Active then
      createrect( myrect_cx, sp_dryz, dbgrideh2, 9, 10, 13 );
      sp_sybr.First;
      ChangePrinter_syjhd;
      while not sp_sybr.eof do
      begin
        if sp_sybr.FieldByName('xzbz').AsBoolean=false then
        begin
          sp_sybr.Next;
        end else
        begin
          with sp_syjhzxd do
          begin
            Filtered := False;
            Close;
            Parameters.Refresh;
            Parameters.ParamByName( '@zyh' ).Value := Trim( sp_sybr.fieldbyname( 'zyh' ).asstring );
            Parameters.ParamByName( '@rq' ).Value := FormatDateTime('yyyyMMdd',dt_zxsj.DateTime);
            Parameters.ParamByName( '@fzph_zh' ).Value := '';
            Open;
          end;

          DM_data.qry_pub.close;
          DM_data.qry_pub.sql.text := 'select yytj from zybl_zyyz_dytjsz where dyxm=''输液计划单''';
          DM_data.qry_pub.Open;
          if DM_data.qry_pub.IsEmpty then
          begin
            v_yytj := '';
          end
          else
          begin
            DM_data.qry_pub.First;
            while not DM_data.qry_pub.eof do
            begin
              if pub_yydm='0271' then   //掇刀医院代码
              begin
               v_yytj := v_yytj + '(yytj=' + '''' + DM_data.qry_pub.FieldByName( 'yytj' ).asstring + '''' + '  and kdbq=' + '''' + pub_bqdm +
                 ''')' + ' or ';
              end else
              begin
//                if pub_yydm='0269' then
//                begin
//                  v_yytj := v_yytj + '(yytj=' + '''' + DM_data.qry_pub.FieldByName( 'yytj' ).asstring + '''' + '  and kdks=' + '''' + pub_ksdm +
//                 ''')';
//                end else
//                begin
                  v_yytj := v_yytj + '(yytj=' + '''' + DM_data.qry_pub.FieldByName( 'yytj' ).asstring + '''' + '  and kdks=' + '''' + pub_ksdm +
                 ''')' + ' or ';
//                end;
              end;
    //          v_yytj := v_yytj + '(yytj=' + '''' + DM_data.qry_pub.FieldByName( 'yytj' ).asstring + '''' + '  and kdks=' + '''' + pub_ksdm +
    //         ''')' + ' or ';
              DM_data.qry_pub.Next;
            end;

          end;

          DM_data.qry_pub.close;
          DM_data.qry_pub.sql.text := 'select lbmc from zybl_zyyz_dylbsz where dyxm=''输液计划单''';
          DM_data.qry_pub.Open;
          if DM_data.qry_pub.IsEmpty then
          begin
            v_lb := '';
          end
          else
          begin
            DM_data.qry_pub.First;
            while not DM_data.qry_pub.eof do
            begin

              if pub_yydm='0271' then   //掇刀医院代码
              begin
                v_lb := v_lb + '(lb=' + '''' + DM_data.qry_pub.FieldByName( 'lbmc' ).asstring + '''' + '  and kdbq=' + '''' + pub_bqdm +
                 ''')' + ' or ';
              end else
              begin
//                if pub_yydm='0269' then
//                begin
//                  v_lb := 'or'+v_lb + '(lb=' + '''' + DM_data.qry_pub.FieldByName( 'lbmc' ).asstring + '''' + '  and kdks=' + '''' + pub_ksdm +
//                 ''')' ;
//                end else
//                begin
                  v_lb := v_lb + '(lb=' + '''' + DM_data.qry_pub.FieldByName( 'lbmc' ).asstring + '''' + '  and kdks=' + '''' + pub_ksdm +
                 ''')' + ' or ';
//                end;

              end;
    //          v_lb := v_lb + '(lb=' + '''' + DM_data.qry_pub.FieldByName( 'lbmc' ).asstring + '''' + '  and kdks=' + '''' + pub_ksdm +
    //           ''')' + ' or ';
              DM_data.qry_pub.Next;
            end;

          end;

          if v_yytj + v_lb = '' then
          begin
            filter := ' 1<>1 ';
          end
          else
          begin
            if pub_yydm='0269'then   //台山不打印皮试
            begin
              filter := v_yytj + v_lb ;
            end else
            begin
              filter := v_yytj + v_lb + ' ( xmmc like ''%皮试%'' )'+
              ' or '+' ( xmmc like ''%敏试%'' )';
            end;
          end;

//          sp_syjhzxd.Filter := copy(filter, 2, Length(filter)-1);

          sp_syjhzxd.Filtered := True;

          if (not sp_syjhzxd.IsEmpty)  then
          begin
          //frm_zysf_print_service.Printsyjhd( sp_sybr,sp_syjhzxd,FormatDateTime('yyyy-MM-dd',dt_zxsj.DateTime));
            ChangePrinter_syjhd;
            frm_zysf_print_service.Printsyjhd( sp_sybr,sp_syjhzxd,FormatDateTime('yyyy-MM-dd',dt_zxsj.DateTime));
          end;
          DM_data.qry_pub.close;
          DM_data.qry_pub.SQL.text:='insert into zybl_zyyz_syddy '+
          'select id,'+''''+FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+' from zybl_zyyz where zxbz=1 and  zyh='+''''+Trim( sp_sybr.fieldbyname( 'zyh' ).asstring )+
          ''''+' and id not in (select yzid from zybl_zyyz_syddy where dyrq='+''''+
          FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+')';
          DM_data.qry_pub.ExecSQL;
          sp_sybr.Next;
        end;
      end;
  end;

end;

procedure Tfrm_syddy.Button11Click(Sender: TObject);
var
  i, y, j, count, x,dyxh: Integer;
  aControl: TControl;
  v_yytj, v_lb, filter,fzzfc,x_zyh,zh: string;
begin
//  sp_dryz.close;
//  sp_dryz.Parameters.ParamByName( '@bqdm' ).value := pub_bqdm;
//  sp_dryz.Parameters.ParamByName( '@zyh' ).value := '';
//  sp_dryz.Parameters.ParamByName( '@bz' ).value := '全部';
//  sp_dryz.Parameters.ParamByName( '@zxsj' ).value := formatdatetime( 'yyyymmdd', dT_zxsj.Date );
//  sp_dryz.Open;
//
//  sp_sybr.close;
//  sp_sybr.Parameters.ParamByName( '@bqdm' ).value := pub_bqdm;
//  sp_sybr.Parameters.ParamByName( '@zyh' ).value := '';
//  sp_sybr.Parameters.ParamByName( '@zxsj' ).value := formatdatetime( 'yyyymmdd', dT_zxsj.Date );
//  sp_sybr.Open;
//  sp_dryz.Filtered := false;
  if pub_yydm = '0240' then
  begin
    if Application.MessageBox(pchar('你将打印左边勾选的病人的全部临时输液单，是否确认打印？')
      , '询问', MB_OKCANCEL + MB_ICONQUESTION
      + MB_DEFBUTTON2) = IDCANCEL then
    begin
      Exit;
    end;
    sp_sybr.First;
    sp_dyxh.Close;
    sp_dyxh.Parameters.Refresh;
    sp_dyxh.Parameters.ParamByName('@czydm').Value:=pub_czydm;
    sp_dyxh.Parameters.ParamByName('@dyxh').Value:=1;
    sp_dyxh.ExecProc;
    dyxh:=sp_dyxh.Parameters.ParamByName('@dyxh').Value;
    while not sp_sybr.eof do
    begin
      if sp_sybr.FieldByName('xzbz').AsBoolean=false then
      begin
        sp_sybr.Next;
      end
      else
      begin
        with sp_syd_xg do
        begin
          Filtered := False;
          Close;
          Parameters.Refresh;
          Parameters.ParamByName( '@zyh' ).Value := sp_sybr.FieldByName('zyh').AsString;
          Parameters.ParamByName( '@bqdm' ).Value := pub_bqdm;
          Parameters.ParamByName( '@zxsj' ).Value := Frm_func.curr_date;
          Parameters.ParamByName( '@bz' ).Value := '临时';
          Parameters.ParamByName( '@dyxh' ).Value := dyxh;
          ExecProc;
        end;

        sp_sybr.DisableControls;
        PrintSYXSK(clTemporary,Trim(sp_sybr.FieldByName('zyh').AsString));
        sp_sybr.EnableControls;
        sp_sybr.Next;
      end;
    end;
    ADOQuery1.close;
    ADOQuery1.SQL.Clear;
    ADOQuery1.sql.Add('select * from zydbb_syxsd where dyxh=:dyxh');
    ADOQuery1.Parameters.ParamByName('dyxh').Value:=dyxh;
    ADOQuery1.Open;
    ChangePrinter_syjhd;
    frm_zysf_print_service.PrintCQLSSYXSK(adoquery1, FormatDateTime('yyyy-MM-dd',dt_zxsj.DateTime),clTemporary);
    ADOQuery1.close;
    ADOQuery1.SQL.Clear;
    ADOQuery1.sql.Add('delete from zydbb_syxsd ');
    ADOQuery1.ExecSQL;
  end
  else
  begin
    if Application.MessageBox(pchar('你将打印右边勾选的液体分组，是否确认打印？')
      , '询问', MB_OKCANCEL + MB_ICONQUESTION
      + MB_DEFBUTTON2) = IDCANCEL then
    begin
     Exit;
    end;
    sp_dryz.DisableControls;
    sp_dryz.First;
    while not sp_dryz.eof do
    begin
      if (sp_dryz.FieldByName('xzbz').AsBoolean=true) and (Pos(sp_dryz.FieldByName('zyh').AsString,fzzfc)<1) then
      begin
        fzzfc:=fzzfc+sp_dryz.FieldByName('zyh').AsString+',';   //将选中的数据集中的住院号串成一串用，隔开
      end;
      sp_dryz.Next;
    end;
    if fzzfc='' then
    begin
      Application.MessageBox('你未选择液体打印！', '警告', MB_OK +
        MB_ICONWARNING);
      Exit;
    end;
    if sp_dryz.Active then
      createrect( myrect_cx, sp_dryz, dbgrideh2, 9, 10, 13 );
    sp_sybr.First;
    ChangePrinter_syjhd;
    while Pos(',',fzzfc)>0 do
    begin
        zh:='';
        x_zyh:=Copy(fzzfc,1,Pos(',',fzzfc)-1);
        sp_dryz.First;
        while not sp_dryz.eof do
        begin
          if (sp_dryz.FieldByName('xzbz').AsBoolean=true) and (sp_dryz.FieldByName('zyh').AsString=x_zyh) and
             (Pos(sp_dryz.FieldByName('fzph').AsString,zh)<1) then
          begin
            zh:=zh+sp_dryz.FieldByName('fzph').AsString+',';  //获得不重复的分组批号
          end;
          sp_dryz.Next;
        end;
//        with sp_syjhzxd do
//        begin
//          Filtered := False;
//          Close;
//          Parameters.Refresh;
//          Parameters.ParamByName( '@zyh' ).Value := x_zyh;
//          Parameters.ParamByName( '@rq' ).Value := FormatDateTime('yyyyMMdd',dt_zxsj.DateTime);
//          Parameters.ParamByName( '@fzph_zh' ).Value := zh;
//          Open;      //选中的输液单分组记录集
//        end;
        with sp_ddyy_syjhzxd do
        begin
          Filtered := False;
          Close;
          Parameters.Refresh;
          Parameters.ParamByName( '@zyh' ).Value := x_zyh;
          Parameters.ParamByName( '@rq' ).Value := FormatDateTime('yyyyMMdd',dt_zxsj.DateTime);
          Parameters.ParamByName( '@fzph_zh' ).Value := zh;
          Parameters.ParamByName( '@ISsyd' ).Value := 1;
          Parameters.ParamByName( '@yytj1' ).Value := '分组';
          Open;
        end;
        DM_data.qry_pub.close;
        DM_data.qry_pub.sql.text := 'select yytj from zybl_zyyz_dytjsz where dyxm=''输液计划单''';
        DM_data.qry_pub.Open;
        if DM_data.qry_pub.IsEmpty then
        begin
          v_yytj := '';
        end
        else
        begin
          DM_data.qry_pub.First;
          while not DM_data.qry_pub.eof do
          begin
            if pub_yydm='0271' then   //掇刀医院代码
            begin
             v_yytj := v_yytj + '(yytj=' + '''' + DM_data.qry_pub.FieldByName( 'yytj' ).asstring + '''' + '  and kdbq=' + '''' + pub_bqdm +
               ''')' + ' or ';
            end else
            begin
                v_yytj := v_yytj + '(yytj=' + '''' + DM_data.qry_pub.FieldByName( 'yytj' ).asstring + '''' + '  and kdks=' + '''' + pub_ksdm +
               ''')' + ' or ';
            end;
            DM_data.qry_pub.Next;
          end;

        end;

        DM_data.qry_pub.close;
        DM_data.qry_pub.sql.text := 'select lbmc from zybl_zyyz_dylbsz where dyxm=''输液计划单''';
        DM_data.qry_pub.Open;
        if DM_data.qry_pub.IsEmpty then
        begin
          v_lb := '';
        end
        else
        begin
          DM_data.qry_pub.First;
          while not DM_data.qry_pub.eof do
          begin
            if pub_yydm='0271' then   //掇刀医院代码
            begin
              v_lb := v_lb + '(lb=' + '''' + DM_data.qry_pub.FieldByName( 'lbmc' ).asstring + '''' + '  and kdbq=' + '''' + pub_bqdm +
               ''')' + ' or ';
            end else
            begin
              v_lb := v_lb + '(lb=' + '''' + DM_data.qry_pub.FieldByName( 'lbmc' ).asstring + '''' + '  and kdks=' + '''' + pub_ksdm +
               ''')' + ' or ';
            end;
            DM_data.qry_pub.Next;
          end;

        end;

        if v_yytj + v_lb = '' then
        begin
          filter := ' 1<>1 ';
        end
        else
        begin
          if pub_yydm='0269'then   //台山不打印皮试
          begin
            filter := v_yytj + v_lb ;
          end else
          begin
              filter := v_yytj + v_lb + ' ( xmmc like ''%皮试%'' )'+
              ' or '+' ( xmmc like ''%敏试%'' )';
            end;
        end;

        sp_ddyy_syjhzxd.Filter := filter;

        sp_ddyy_syjhzxd.Filtered := True;

        sp_sybr.DisableControls;
        sp_sybr.Locate('zyh',x_zyh,[]);
        sp_sybr.EnableControls;
        if not sp_ddyy_syjhzxd.IsEmpty then
        begin
          //frm_zysf_print_service.Printsyjhd( sp_sybr,sp_syjhzxd,FormatDateTime('yyyy-MM-dd',dt_zxsj.DateTime));
          ChangePrinter_syjhd;
          //frm_zysf_print_service.Printsyjhd( sp_sybr,sp_syjhzxd,FormatDateTime('yyyy-MM-dd',dt_zxsj.DateTime));
          frm_zysf_print_service.Printsyjhd( sp_sybr,sp_ddyy_syjhzxd,FormatDateTime('yyyy-MM-dd',dt_zxsj.DateTime));
        end ;
//        DM_data.qry_pub.close;
//        DM_data.qry_pub.SQL.text:='insert into zybl_zyyz_syddy select id,'+''''+
//        FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+'  from zybl_zyyz  where zxbz=1 and  zyh='+
//        ''''+Trim( sp_sybr.fieldbyname( 'zyh' ).asstring )+
//        ''''+' and charindex(fzph,'+''''+
//        zh+''''+')>0 and id not in (select yzid from zybl_zyyz_syddy where dyrq='+''''+
//        FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+')';
//        DM_data.qry_pub.ExecSQL;
      fzzfc:=Copy(fzzfc,Pos(',',fzzfc)+1);
    end;
     sp_dryz.EnableControls;
  end;

end;

procedure Tfrm_syddy.Button12Click(Sender: TObject);
var  i, y, j, count, x,dyxh: Integer;
    aControl: TControl;
    v_yytj, v_lb, filter: string;
    v_zyh: string;
begin
    //打印长期静滴输液单
    if Application.MessageBox(pchar('你将打印左边勾选的病人的长期静滴输液单，是否确认打印？')
      , '询问', MB_OKCANCEL + MB_ICONQUESTION
      + MB_DEFBUTTON2) = IDCANCEL then
    begin
      Exit;
    end;
    if sp_dryz.Active then
    createrect( myrect_cx, sp_dryz, dbgrideh2, 9, 10, 13 );
    sp_sybr.First;
    ChangePrinter_syjhd;
    while not sp_sybr.eof do
    begin
      if sp_sybr.FieldByName('xzbz').AsBoolean=false then
      begin
        sp_sybr.Next;
      end else
      begin
        v_zyh:= v_zyh +','+ Trim( sp_sybr.fieldbyname( 'zyh' ).asstring );
        sp_sybr.Next;
      end;
    end;
    v_zyh:=Copy(v_zyh,2,length(v_zyh)-1);
    with sp_ddyy_syjhzxd do
    begin
      Filtered := False;
      Close;
      Parameters.Refresh;
      Parameters.ParamByName( '@zyh' ).Value := v_zyh;// Trim( sp_sybr.fieldbyname( 'zyh' ).asstring );
      Parameters.ParamByName( '@rq' ).Value := FormatDateTime('yyyyMMdd',dt_zxsj.DateTime);
      Parameters.ParamByName( '@fzph_zh' ).Value := '';
      Parameters.ParamByName( '@ISsyd' ).Value := 1;
      Parameters.ParamByName( '@yytj1' ).Value := '静滴';
      Open;
    end;

    if not sp_ddyy_syjhzxd.IsEmpty then
    begin
      ChangePrinter_syjhd;
      frm_zysf_print_service.Printsyjhd( sp_sybr,sp_ddyy_syjhzxd,FormatDateTime('yyyy-MM-dd',dt_zxsj.DateTime));
    end;

end;

procedure Tfrm_syddy.Button13Click(Sender: TObject);
var  i, y, j, count, x,dyxh: Integer;
    aControl: TControl;
    v_yytj, v_lb, filter: string;
    v_zyh: string;
begin
  //打印（除静滴以外）的输液单
    if Application.MessageBox(pchar('你将打印左边勾选的病人的长期医嘱执行单，是否确认打印？')
      , '询问', MB_OKCANCEL + MB_ICONQUESTION
      + MB_DEFBUTTON2) = IDCANCEL then
    begin
      Exit;
    end;
    if sp_dryz.Active then
    createrect( myrect_cx, sp_dryz, dbgrideh2, 9, 10, 13 );
    sp_sybr.First;
    ChangePrinter_syjhd;
    while not sp_sybr.eof do
    begin
      if sp_sybr.FieldByName('xzbz').AsBoolean=false then
      begin
        sp_sybr.Next;
      end else
      begin
        v_zyh:= v_zyh +','+ Trim( sp_sybr.fieldbyname( 'zyh' ).asstring );
        sp_sybr.Next;
      end;
    end;
    v_zyh:=Copy(v_zyh,2,length(v_zyh)-1);
    with sp_ddyy_syjhzxd do
    begin
      Filtered := False;
      Close;
      Parameters.Refresh;
      Parameters.ParamByName( '@zyh' ).Value := v_zyh;// Trim( sp_sybr.fieldbyname( 'zyh' ).asstring );
      Parameters.ParamByName( '@rq' ).Value := FormatDateTime('yyyyMMdd',dt_zxsj.DateTime);
      Parameters.ParamByName( '@fzph_zh' ).Value := '';
      Parameters.ParamByName( '@ISsyd' ).Value := 1;
      Parameters.ParamByName( '@yytj1' ).Value := '其他';
      Open;
    end;

    if not sp_ddyy_syjhzxd.IsEmpty then
    begin
      ChangePrinter_syjhd;
      frm_zysf_print_service.Printsyjhd( sp_sybr,sp_ddyy_syjhzxd,FormatDateTime('yyyy-MM-dd',dt_zxsj.DateTime));
    end;
end;

procedure Tfrm_syddy.Button14Click(Sender: TObject);
var  i, y, j, count, x,dyxh: Integer;
    aControl: TControl;
    v_yytj, v_lb, filter: string;
    v_zyh: string;
begin
   //打印长期静滴输液单
    if Application.MessageBox(pchar('你将打印左边勾选的病人的长期静滴输液单，是否确认打印？')
      , '询问', MB_OKCANCEL + MB_ICONQUESTION
      + MB_DEFBUTTON2) = IDCANCEL then
    begin
      Exit;
    end;
    if sp_dryz.Active then
    createrect( myrect_cx, sp_dryz, dbgrideh2, 9, 10, 13 );
    sp_sybr.First;
    ChangePrinter_syjhd;
    while not sp_sybr.eof do
    begin
      if sp_sybr.FieldByName('xzbz').AsBoolean=false then
      begin
        sp_sybr.Next;
      end else
      begin
        v_zyh:= v_zyh +','+ Trim( sp_sybr.fieldbyname( 'zyh' ).asstring );
        sp_sybr.Next;
      end;
    end;
    v_zyh:=Copy(v_zyh,2,length(v_zyh)-1);
    with sp_ddyy_syjhzxd do
    begin
      Filtered := False;
      Close;
      Parameters.Refresh;
      Parameters.ParamByName( '@zyh' ).Value := v_zyh;// Trim( sp_sybr.fieldbyname( 'zyh' ).asstring );
      Parameters.ParamByName( '@rq' ).Value := FormatDateTime('yyyyMMdd',dt_zxsj.DateTime);
      Parameters.ParamByName( '@fzph_zh' ).Value := '';
      Parameters.ParamByName( '@ISsyd' ).Value := 1;
      Parameters.ParamByName( '@yytj1' ).Value := '静滴';
      Open;
    end;

    if not sp_ddyy_syjhzxd.IsEmpty then
    begin
      ChangePrinter_syjhd;
      frm_zysf_print_service.Printsyjhd( sp_sybr,sp_ddyy_syjhzxd,FormatDateTime('yyyy-MM-dd',dt_zxsj.DateTime));
      ChangePrinter_syjhd;
      frm_zysf_print_service.Printsyjhd( sp_sybr,sp_ddyy_syjhzxd,FormatDateTime('yyyy-MM-dd',dt_zxsj.DateTime));
    end;
end;

procedure Tfrm_syddy.Button15Click(Sender: TObject);
var  i, y, j, count, x,dyxh: Integer;
    aControl: TControl;
    v_yytj, v_lb, filter: string;
    v_zyh: string;
begin
  //打印（除静滴以外）的输液单
    if Application.MessageBox(pchar('你将打印左边勾选的病人的长期医嘱执行单，是否确认打印？')
      , '询问', MB_OKCANCEL + MB_ICONQUESTION
      + MB_DEFBUTTON2) = IDCANCEL then
    begin
      Exit;
    end;
    if sp_dryz.Active then
    createrect( myrect_cx, sp_dryz, dbgrideh2, 9, 10, 13 );
    sp_sybr.First;
    ChangePrinter_syjhd;
    while not sp_sybr.eof do
    begin
      if sp_sybr.FieldByName('xzbz').AsBoolean=false then
      begin
        sp_sybr.Next;
      end else
      begin
        v_zyh:= v_zyh +','+ Trim( sp_sybr.fieldbyname( 'zyh' ).asstring );
        sp_sybr.Next;
      end;
    end;
    v_zyh:=Copy(v_zyh,2,length(v_zyh)-1);
    with sp_ddyy_syjhzxd do
    begin
      Filtered := False;
      Close;
      Parameters.Refresh;
      Parameters.ParamByName( '@zyh' ).Value := v_zyh;// Trim( sp_sybr.fieldbyname( 'zyh' ).asstring );
      Parameters.ParamByName( '@rq' ).Value := FormatDateTime('yyyyMMdd',dt_zxsj.DateTime);
      Parameters.ParamByName( '@fzph_zh' ).Value := '';
      Parameters.ParamByName( '@ISsyd' ).Value := 1;
      Parameters.ParamByName( '@yytj1' ).Value := '其他';
      Open;
    end;

    if not sp_ddyy_syjhzxd.IsEmpty then
    begin
      ChangePrinter_syjhd;
      frm_zysf_print_service.Printsyjhd( sp_sybr,sp_ddyy_syjhzxd,FormatDateTime('yyyy-MM-dd',dt_zxsj.DateTime));
      ChangePrinter_syjhd;
      frm_zysf_print_service.Printsyjhd( sp_sybr,sp_ddyy_syjhzxd,FormatDateTime('yyyy-MM-dd',dt_zxsj.DateTime));
    end;
end;

procedure Tfrm_syddy.Button1Click(Sender: TObject);
var
  i, y, j, count, x: Integer;
  aControl: TControl;
  v_yytj, v_lb, filter: string;
begin
  if Application.MessageBox(pchar('你将打印'+trim(sp_sybr.FieldByName('bch').asstring)+'床病人'+
    trim(sp_sybr.FieldByName('brxm').asstring)+'的全部输液单，是否确认打印？')
    , '询问', MB_OKCANCEL + MB_ICONQUESTION
    + MB_DEFBUTTON2) = IDCANCEL then
  begin
   Exit;
  end;

  with sp_syjhzxd do
  begin
    Filtered := False;
    Close;
    Parameters.Refresh;
    Parameters.ParamByName( '@zyh' ).Value := Trim( sp_sybr.fieldbyname( 'zyh' ).asstring );
    Parameters.ParamByName( '@rq' ).Value := FormatDateTime('yyyyMMdd',dt_zxsj.DateTime);
    Parameters.ParamByName( '@fzph_zh' ).Value := '';
    Open;
  end;
  DM_data.qry_pub.close;
  DM_data.qry_pub.sql.text := 'select yytj from zybl_zyyz_dytjsz where dyxm=''输液计划单''';
  DM_data.qry_pub.Open;
  if DM_data.qry_pub.IsEmpty then
  begin
    v_yytj := '';
  end
  else
  begin
    DM_data.qry_pub.First;
    while not DM_data.qry_pub.eof do
    begin
      if pub_yydm='0271' then   //掇刀医院代码
      begin
       v_yytj := v_yytj + '(yytj=' + '''' + DM_data.qry_pub.FieldByName( 'yytj' ).asstring + '''' + '  and kdbq=' + '''' + pub_bqdm +
         ''')' + ' or ';
      end else
      begin
          v_yytj := v_yytj + '(yytj=' + '''' + DM_data.qry_pub.FieldByName( 'yytj' ).asstring + '''' + '  and kdks=' + '''' + pub_ksdm +
         ''')' + ' or ';
      end;
//      v_yytj := v_yytj + '(yytj=' + '''' + DM_data.qry_pub.FieldByName( 'yytj' ).asstring + '''' + '  and kdks=' + '''' + pub_ksdm +
//         ''')' + ' or ';
      DM_data.qry_pub.Next;
    end;

  end;

  DM_data.qry_pub.close;
  DM_data.qry_pub.sql.text := 'select lbmc from zybl_zyyz_dylbsz where dyxm=''输液计划单''';
  DM_data.qry_pub.Open;
  if DM_data.qry_pub.IsEmpty then
  begin
    v_lb := '';
  end
  else
  begin
    DM_data.qry_pub.First;
    while not DM_data.qry_pub.eof do
    begin
      if pub_yydm='0271' then   //掇刀医院代码
      begin
        v_lb := v_lb + '(lb=' + '''' + DM_data.qry_pub.FieldByName( 'lbmc' ).asstring + '''' + '  and kdbq=' + '''' + pub_bqdm +
         ''')' + ' or ';
      end else
      begin
        v_lb := v_lb + '(lb=' + '''' + DM_data.qry_pub.FieldByName( 'lbmc' ).asstring + '''' + '  and kdks=' + '''' + pub_ksdm +
         ''')' + ' or ';
      end;
//      v_lb := v_lb + '(lb=' + '''' + DM_data.qry_pub.FieldByName( 'lbmc' ).asstring + '''' + '  and kdks=' + '''' + pub_ksdm +
//         ''')' + ' or ';
      DM_data.qry_pub.Next;
    end;

  end;

  if v_yytj + v_lb = '' then
  begin
    filter := ' 1<>1 ';
  end
  else
  begin
    filter := v_yytj + v_lb + ' ( xmmc like ''%皮试%'' and  kdrq>=' + '''' + formatdatetime( 'yy-MM-dd', frm_func.curr_date ) + ' 00:00'+''')'+
    ' or '+ ' ( xmmc like ''%敏试%'' and  kdrq>=' + '''' + formatdatetime( 'yy-MM-dd', frm_func.curr_date ) + ' 00:00'+''')';
  end;

  sp_syjhzxd.Filter := filter;

  sp_syjhzxd.Filtered := True;
  if sp_syjhzxd.IsEmpty then
  begin
    Application.MessageBox('该病人当天没有输液计划！','提示',0+48);
    Exit;
  end;
  ChangePrinter_syjhd;
  frm_zysf_print_service.Printsyjhd( sp_sybr,sp_syjhzxd,FormatDateTime('yyyy-MM-dd',dt_zxsj.DateTime));
  ChangePrinter_syjhd;
  frm_zysf_print_service.Printsyjhd( sp_sybr,sp_syjhzxd,FormatDateTime('yyyy-MM-dd',dt_zxsj.DateTime));
//  DM_data.qry_pub.close;
//  DM_data.qry_pub.SQL.text:='update zybl_zyyz_yzzxqd with(rowlock) set syddy=1 where zyh='+''''+Trim( sp_sybr.fieldbyname( 'zyh' ).asstring )+
//  ''''+' and zxsj='+ ''''+FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+'''';
//  DM_data.qry_pub.ExecSQL;

  DM_data.qry_pub.close;
  DM_data.qry_pub.SQL.text:='insert into zybl_zyyz_syddy '+
  'select id,'+''''+FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+' from zybl_zyyz where zxbz=1 and  zyh='+''''+Trim( sp_sybr.fieldbyname( 'zyh' ).asstring )+
  ''''+' and id not in (select yzid from zybl_zyyz_syddy where dyrq='+''''+
  FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+')';
  DM_data.qry_pub.ExecSQL;
 // RevertPrinter;
end;

procedure Tfrm_syddy.Button2Click(Sender: TObject);
var
  i, y, j, count, x: Integer;
  aControl: TControl;
  v_yytj, v_lb, filter: string;
begin
  if Application.MessageBox(pchar('你将打印本病区所有病人的全部输液单，是否确认打印？')
    , '询问', MB_OKCANCEL + MB_ICONQUESTION
    + MB_DEFBUTTON2) = IDCANCEL then
  begin
   Exit;
  end;
  sp_dryz.close;
  sp_dryz.Parameters.ParamByName( '@bqdm' ).value := pub_bqdm;
  sp_dryz.Parameters.ParamByName( '@zyh' ).value := '';
  sp_dryz.Parameters.ParamByName( '@bz' ).value := '全部';
  sp_dryz.Parameters.ParamByName( '@zxsj' ).value := formatdatetime( 'yyyymmdd', dT_zxsj.Date );
  sp_dryz.Open;

  sp_sybr.close;
  sp_sybr.Parameters.ParamByName( '@bqdm' ).value := pub_bqdm;
  sp_sybr.Parameters.ParamByName( '@zyh' ).value := '';
  sp_sybr.Parameters.ParamByName( '@zxsj' ).value := formatdatetime( 'yyyymmdd', dT_zxsj.Date );
  sp_sybr.Open;
  sp_dryz.Filtered := false;
  if sp_dryz.Active then
    createrect( myrect_cx, sp_dryz, dbgrideh2, 9, 10, 13 );
  sp_sybr.First;
  ChangePrinter_syjhd;
  while not sp_sybr.eof do
  begin
    with sp_syjhzxd do
    begin
      Filtered := False;
      Close;
      Parameters.Refresh;
      Parameters.ParamByName( '@zyh' ).Value := Trim( sp_sybr.fieldbyname( 'zyh' ).asstring );
      Parameters.ParamByName( '@rq' ).Value := FormatDateTime('yyyyMMdd',dt_zxsj.DateTime);
      Parameters.ParamByName( '@fzph_zh' ).Value := '';
      Open;
    end;
    DM_data.qry_pub.close;
    DM_data.qry_pub.sql.text := 'select yytj from zybl_zyyz_dytjsz where dyxm=''输液计划单''';
    DM_data.qry_pub.Open;
    if DM_data.qry_pub.IsEmpty then
    begin
      v_yytj := '';
    end
    else
    begin
      DM_data.qry_pub.First;
      while not DM_data.qry_pub.eof do
      begin
        if pub_yydm='0271' then   //掇刀医院代码
        begin
         v_yytj := v_yytj + '(yytj=' + '''' + DM_data.qry_pub.FieldByName( 'yytj' ).asstring + '''' + '  and kdbq=' + '''' + pub_bqdm +
           ''')' + ' or ';
        end else
        begin
            v_yytj := v_yytj + '(yytj=' + '''' + DM_data.qry_pub.FieldByName( 'yytj' ).asstring + '''' + '  and kdks=' + '''' + pub_ksdm +
           ''')' + ' or ';
        end;
//        v_yytj := v_yytj + '(yytj=' + '''' + DM_data.qry_pub.FieldByName( 'yytj' ).asstring + '''' + '  and kdks=' + '''' + pub_ksdm +
//         ''')' + ' or ';
        DM_data.qry_pub.Next;
      end;

    end;

    DM_data.qry_pub.close;
    DM_data.qry_pub.sql.text := 'select lbmc from zybl_zyyz_dylbsz where dyxm=''输液计划单''';
    DM_data.qry_pub.Open;
    if DM_data.qry_pub.IsEmpty then
    begin
      v_lb := '';
    end
    else
    begin
      DM_data.qry_pub.First;
      while not DM_data.qry_pub.eof do
      begin
        if pub_yydm='0271' then   //掇刀医院代码
        begin
          v_lb := v_lb + '(lb=' + '''' + DM_data.qry_pub.FieldByName( 'lbmc' ).asstring + '''' + '  and kdbq=' + '''' + pub_bqdm +
           ''')' + ' or ';
        end else
        begin
          v_lb := v_lb + '(lb=' + '''' + DM_data.qry_pub.FieldByName( 'lbmc' ).asstring + '''' + '  and kdks=' + '''' + pub_ksdm +
           ''')' + ' or ';
        end;
//        v_lb := v_lb + '(lb=' + '''' + DM_data.qry_pub.FieldByName( 'lbmc' ).asstring + '''' + '  and kdks=' + '''' + pub_ksdm +
//         ''')' + ' or ';
        DM_data.qry_pub.Next;
      end;

    end;

    if v_yytj + v_lb = '' then
    begin
      filter := ' 1<>1 ';
    end
    else
    begin
      filter := v_yytj + v_lb + ' ( xmmc like ''%皮试%'' )'+' or '+
      ' ( xmmc like ''%敏试%'' )';
    end;

    sp_syjhzxd.Filter := filter;

    sp_syjhzxd.Filtered := True;
    if not sp_syjhzxd.IsEmpty then
    begin
      ChangePrinter_syjhd;
      frm_zysf_print_service.Printsyjhd( sp_sybr,sp_syjhzxd,FormatDateTime('yyyy-MM-dd',dt_zxsj.DateTime));
      ChangePrinter_syjhd;
      frm_zysf_print_service.Printsyjhd( sp_sybr,sp_syjhzxd,FormatDateTime('yyyy-MM-dd',dt_zxsj.DateTime));
    end;
//    DM_data.qry_pub.close;
//    DM_data.qry_pub.SQL.text:='update zybl_zyyz_yzzxqd with(rowlock) set syddy=1 where zyh='+''''+Trim( sp_sybr.fieldbyname( 'zyh' ).asstring )+
//    ''''+' and zxsj='+ ''''+FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+'''';
//    DM_data.qry_pub.ExecSQL;
      DM_data.qry_pub.close;
      DM_data.qry_pub.SQL.text:='insert into zybl_zyyz_syddy '+
      'select id,'+''''+FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+' from zybl_zyyz where zxbz=1 and zyh='+''''+Trim( sp_sybr.fieldbyname( 'zyh' ).asstring )+
      ''''+' and id not in (select yzid from zybl_zyyz_syddy where dyrq='+''''+
      FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+')';
      DM_data.qry_pub.ExecSQL;
    sp_sybr.Next;
  end;
  //RevertPrinter;

end;

procedure Tfrm_syddy.Button3Click(Sender: TObject);
var
  i, y, j, count, x: Integer;
  aControl: TControl;
  v_yytj, v_lb, filter: string;
begin
  if Application.MessageBox(pchar('你将打印'+trim(sp_sybr.FieldByName('bch').asstring)+'床病人'+
    trim(sp_sybr.FieldByName('brxm').asstring)+'的所有临时输液单，是否确认打印？')
    , '询问', MB_OKCANCEL + MB_ICONQUESTION
    + MB_DEFBUTTON2) = IDCANCEL then
  begin
   Exit;
  end;
  with sp_syjhzxd do
  begin
    Filtered := False;
    Close;
    Parameters.Refresh;
    Parameters.ParamByName( '@zyh' ).Value := Trim( sp_sybr.fieldbyname( 'zyh' ).asstring );
    Parameters.ParamByName( '@rq' ).Value := FormatDateTime('yyyyMMdd',dt_zxsj.DateTime);
    Parameters.ParamByName( '@fzph_zh' ).Value := '';
    Open;
  end;
  DM_data.qry_pub.close;
  DM_data.qry_pub.sql.text := 'select yytj from zybl_zyyz_dytjsz where dyxm=''输液计划单''';
  DM_data.qry_pub.Open;
  if DM_data.qry_pub.IsEmpty then
  begin
    v_yytj := '';
  end
  else
  begin
    DM_data.qry_pub.First;
    while not DM_data.qry_pub.eof do
    begin
      if pub_yydm='0271' then   //掇刀医院代码
      begin
          v_yytj := v_yytj + '(yytj=' + '''' + DM_data.qry_pub.FieldByName( 'yytj' ).asstring + '''' + ' and sx=''临时''  and kdbq=' + '''' + pub_bqdm +
         ''')' + ' or ';
      end else
      begin
         v_yytj := v_yytj + '(yytj=' + '''' + DM_data.qry_pub.FieldByName( 'yytj' ).asstring + '''' + ' and sx=''临时''  and kdks=' + '''' + pub_ksdm +
         ''')' + ' or ';
      end;


      DM_data.qry_pub.Next;
    end;

  end;

  DM_data.qry_pub.close;
  DM_data.qry_pub.sql.text := 'select lbmc from zybl_zyyz_dylbsz where dyxm=''输液计划单''';
  DM_data.qry_pub.Open;
  if DM_data.qry_pub.IsEmpty then
  begin
    v_lb := '';
  end
  else
  begin
    DM_data.qry_pub.First;
    while not DM_data.qry_pub.eof do
    begin
      if pub_yydm='0271' then   //掇刀医院代码
      begin
        v_lb := v_lb + '(lb=' + '''' + DM_data.qry_pub.FieldByName( 'lbmc' ).asstring + '''' + ' and sx=''临时'' and kdbq=' + '''' + pub_bqdm +
         ''')' + ' or ';
      end else
      begin
         v_lb := v_lb + '(lb=' + '''' + DM_data.qry_pub.FieldByName( 'lbmc' ).asstring + '''' + ' and sx=''临时'' and kdks=' + '''' + pub_ksdm +
         ''')' + ' or ';
      end;
//      v_lb := v_lb + '(lb=' + '''' + DM_data.qry_pub.FieldByName( 'lbmc' ).asstring + '''' + ' and sx=''临时'' and kdks=' + '''' + pub_ksdm +
//         ''')' + ' or ';
      DM_data.qry_pub.Next;
    end;

  end;

  if v_yytj + v_lb = '' then
  begin
    filter := ' 1<>1 ';
  end
  else
  begin
    filter := v_yytj + v_lb + ' ( xmmc like ''%皮试%'' and  kdrq>=' + '''' + formatdatetime( 'yy-MM-dd', frm_func.curr_date ) + ' 00:00'+''')'+
    ' or '+' ( xmmc like ''%敏试%'' and  kdrq>=' + '''' + formatdatetime( 'yy-MM-dd', frm_func.curr_date ) + ' 00:00'+''')';
  end;

  sp_syjhzxd.Filter := filter;

  sp_syjhzxd.Filtered := True;
  if sp_syjhzxd.IsEmpty then
  begin
    Application.MessageBox('该病人当天没有输液计划！','提示',0+48);
    Exit;
  end;
  ChangePrinter_syjhd;
  frm_zysf_print_service.Printsyjhd( sp_sybr,sp_syjhzxd,FormatDateTime('yyyy-MM-dd',dt_zxsj.DateTime));
  ChangePrinter_syjhd;
  frm_zysf_print_service.Printsyjhd( sp_sybr,sp_syjhzxd,FormatDateTime('yyyy-MM-dd',dt_zxsj.DateTime));
//  DM_data.qry_pub.close;
//  DM_data.qry_pub.SQL.text:='update zybl_zyyz_yzzxqd with(rowlock) set syddy=1 from zybl_zyyz a,zybl_zyyz_yzzxqd b where a.zyh=b.zyh and '+
//  '  a.id=b.yzid and  '+'a.zyh='+''''+Trim( sp_sybr.fieldbyname( 'zyh' ).asstring )+
//  ''''+' and b.zxsj='+ ''''+FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+' and a.yzsx=''临时''';
//  DM_data.qry_pub.ExecSQL;
  DM_data.qry_pub.close;
  DM_data.qry_pub.SQL.text:='insert into zybl_zyyz_syddy '+
  'select id,'+''''+FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+' from zybl_zyyz where zxbz=1 and  zyh='+''''+Trim( sp_sybr.fieldbyname( 'zyh' ).asstring )+
  ''''+' and yzsx=''临时'' and convert(varchar,kdrq,112)='+''''+FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+
  ''''+' and  id not in (select yzid from zybl_zyyz_syddy where dyrq='+''''+
  FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+')';
  DM_data.qry_pub.ExecSQL;
end;

procedure Tfrm_syddy.Button4Click(Sender: TObject);
var
  i, y, j, count, x: Integer;
  aControl: TControl;
  v_yytj, v_lb, filter,v_zyh: string;
begin
//  sp_dryz.close;
//  sp_dryz.Parameters.ParamByName( '@bqdm' ).value := pub_bqdm;
//  sp_dryz.Parameters.ParamByName( '@zyh' ).value := '';
//  sp_dryz.Parameters.ParamByName( '@bz' ).value := '全部';
//  sp_dryz.Parameters.ParamByName( '@zxsj' ).value := formatdatetime( 'yyyymmdd', dT_zxsj.Date );
//  sp_dryz.Open;
//
//  sp_sybr.close;
//  sp_sybr.Parameters.ParamByName( '@bqdm' ).value := pub_bqdm;
//  sp_sybr.Parameters.ParamByName( '@zyh' ).value := '';
//  sp_sybr.Parameters.ParamByName( '@zxsj' ).value := formatdatetime( 'yyyymmdd', dT_zxsj.Date );
//  sp_sybr.Open;
//  sp_dryz.Filtered := false;
  if Application.MessageBox(pchar('你将打印左边勾选的病人的全部输液单，是否确认打印？')
    , '询问', MB_OKCANCEL + MB_ICONQUESTION
    + MB_DEFBUTTON2) = IDCANCEL then
  begin
   Exit;
  end;
  if pub_yydm='0271' then  //掇刀医院
  begin
    if sp_dryz.Active then
    createrect( myrect_cx, sp_dryz, dbgrideh2, 9, 10, 13 );
    sp_sybr.First;
    ChangePrinter_syjhd;
    while not sp_sybr.eof do
    begin
      if sp_sybr.FieldByName('xzbz').AsBoolean=false then
      begin
        sp_sybr.Next;
      end else
      begin
        v_zyh:= v_zyh +','+ Trim( sp_sybr.fieldbyname( 'zyh' ).asstring );
        sp_sybr.Next;
      end;
    end;
    v_zyh:=Copy(v_zyh,2,length(v_zyh)-1);
    with sp_ddyy_syjhzxd do
    begin
      Filtered := False;
      Close;
      Parameters.Refresh;
      Parameters.ParamByName( '@zyh' ).Value := v_zyh;// Trim( sp_sybr.fieldbyname( 'zyh' ).asstring );
      Parameters.ParamByName( '@rq' ).Value := FormatDateTime('yyyyMMdd',dt_zxsj.DateTime);
      Parameters.ParamByName( '@fzph_zh' ).Value := '';
      Parameters.ParamByName( '@ISsyd' ).Value := 1;
      Parameters.ParamByName( '@yytj1' ).Value := '';
      Open;
    end;

//    with sp_syjhzxd do
//    begin
//      Filtered := False;
//      Close;
//      Parameters.Refresh;
//      Parameters.ParamByName( '@zyh' ).Value := v_zyh;// Trim( sp_sybr.fieldbyname( 'zyh' ).asstring );
//      Parameters.ParamByName( '@rq' ).Value := FormatDateTime('yyyyMMdd',dt_zxsj.DateTime);
//      Parameters.ParamByName( '@fzph_zh' ).Value := '';
//      Open;
//    end;
//    DM_data.qry_pub.close;
//    DM_data.qry_pub.sql.text := 'select yytj from zybl_zyyz_dytjsz where dyxm=''输液计划单''';
//    DM_data.qry_pub.Open;
//    if DM_data.qry_pub.IsEmpty then
//    begin
//      v_yytj := '';
//    end
//    else
//    begin
//      DM_data.qry_pub.First;
//      while not DM_data.qry_pub.eof do
//      begin
//        if pub_yydm='0271' then   //掇刀医院代码
//        begin
//         v_yytj := v_yytj + '(yytj=' + '''' + DM_data.qry_pub.FieldByName( 'yytj' ).asstring + '''' + '  and kdbq=' + '''' + pub_bqdm +
//           ''')' + ' or ';
//        end else
//        begin
//            v_yytj := v_yytj + '(yytj=' + '''' + DM_data.qry_pub.FieldByName( 'yytj' ).asstring + '''' + '  and kdks=' + '''' + pub_ksdm +
//           ''')' + ' or ';
//        end;
//  //          v_yytj := v_yytj + '(yytj=' + '''' + DM_data.qry_pub.FieldByName( 'yytj' ).asstring + '''' + '  and kdks=' + '''' + pub_ksdm +
//  //         ''')' + ' or ';
//        DM_data.qry_pub.Next;
//      end;
//
//    end;
//
//    DM_data.qry_pub.close;
//    DM_data.qry_pub.sql.text := 'select lbmc from zybl_zyyz_dylbsz where dyxm=''输液计划单''';
//    DM_data.qry_pub.Open;
//    if DM_data.qry_pub.IsEmpty then
//    begin
//      v_lb := '';
//    end
//    else
//    begin
//      DM_data.qry_pub.First;
//      while not DM_data.qry_pub.eof do
//      begin
//
//        if pub_yydm='0271' then   //掇刀医院代码
//        begin
//          v_lb := v_lb + '(lb=' + '''' + DM_data.qry_pub.FieldByName( 'lbmc' ).asstring + '''' + '  and kdbq=' + '''' + pub_bqdm +
//         ''')' + ' or ';
//        end else
//        begin
//          v_lb := v_lb + '(lb=' + '''' + DM_data.qry_pub.FieldByName( 'lbmc' ).asstring + '''' + '  and kdks=' + '''' + pub_ksdm +
//         ''')' + ' or ';
//        end;
//  //          v_lb := v_lb + '(lb=' + '''' + DM_data.qry_pub.FieldByName( 'lbmc' ).asstring + '''' + '  and kdks=' + '''' + pub_ksdm +
//  //           ''')' + ' or ';
//        DM_data.qry_pub.Next;
//      end;
//
//    end;
//
//    if v_yytj + v_lb = '' then
//    begin
//      filter := ' 1<>1 ';
//    end
//    else
//    begin
//      filter := v_yytj + v_lb + ' ( xmmc like ''%皮试%'' )'+
//      ' or '+' ( xmmc like ''%敏试%'' )';
//    end;
//
//    sp_syjhzxd.Filter := filter;
//
//    sp_syjhzxd.Filtered := True;
//    if not sp_syjhzxd.IsEmpty then
//    begin
//      ChangePrinter_syjhd;
//      frm_zysf_print_service.Printsyjhd( sp_sybr,sp_syjhzxd,FormatDateTime('yyyy-MM-dd',dt_zxsj.DateTime));
//      ChangePrinter_syjhd;
//      frm_zysf_print_service.Printsyjhd( sp_sybr,sp_syjhzxd,FormatDateTime('yyyy-MM-dd',dt_zxsj.DateTime));
//    end;

    if not sp_ddyy_syjhzxd.IsEmpty then
    begin
      ChangePrinter_syjhd;
      frm_zysf_print_service.Printsyjhd( sp_sybr,sp_ddyy_syjhzxd,FormatDateTime('yyyy-MM-dd',dt_zxsj.DateTime));
      ChangePrinter_syjhd;
      frm_zysf_print_service.Printsyjhd( sp_sybr,sp_ddyy_syjhzxd,FormatDateTime('yyyy-MM-dd',dt_zxsj.DateTime));
    end;
    DM_data.qry_pub.close;
    DM_data.qry_pub.SQL.text:='insert into zybl_zyyz_syddy '+
    'select id,'+''''+FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+' from zybl_zyyz where zxbz=1 and  zyh='+''''+Trim( sp_sybr.fieldbyname( 'zyh' ).asstring )+
    ''''+' and  id not in (select yzid from zybl_zyyz_syddy where dyrq='+''''+
    FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+')';
    DM_data.qry_pub.ExecSQL;
  end else
  begin
    if sp_dryz.Active then
    createrect( myrect_cx, sp_dryz, dbgrideh2, 9, 10, 13 );
    sp_sybr.First;
    ChangePrinter_syjhd;
    while not sp_sybr.eof do
    begin
      if sp_sybr.FieldByName('xzbz').AsBoolean=false then
      begin
        sp_sybr.Next;
      end
      else
      begin
        with sp_syjhzxd do
        begin
          Filtered := False;
          Close;
          Parameters.Refresh;
          Parameters.ParamByName( '@zyh' ).Value := Trim( sp_sybr.fieldbyname( 'zyh' ).asstring );
          Parameters.ParamByName( '@rq' ).Value := FormatDateTime('yyyyMMdd',dt_zxsj.DateTime);
          Parameters.ParamByName( '@fzph_zh' ).Value := '';
          Open;
        end;
        DM_data.qry_pub.close;
        DM_data.qry_pub.sql.text := 'select yytj from zybl_zyyz_dytjsz where dyxm=''输液计划单''';
        DM_data.qry_pub.Open;
        if DM_data.qry_pub.IsEmpty then
        begin
          v_yytj := '';
        end
        else
        begin
          DM_data.qry_pub.First;
          while not DM_data.qry_pub.eof do
          begin
            if pub_yydm='0271' then   //掇刀医院代码
            begin
             v_yytj := v_yytj + '(yytj=' + '''' + DM_data.qry_pub.FieldByName( 'yytj' ).asstring + '''' + '  and kdbq=' + '''' + pub_bqdm +
               ''')' + ' or ';
            end else
            begin
                v_yytj := v_yytj + '(yytj=' + '''' + DM_data.qry_pub.FieldByName( 'yytj' ).asstring + '''' + '  and kdks=' + '''' + pub_ksdm +
               ''')' + ' or ';
            end;
      //          v_yytj := v_yytj + '(yytj=' + '''' + DM_data.qry_pub.FieldByName( 'yytj' ).asstring + '''' + '  and kdks=' + '''' + pub_ksdm +
      //         ''')' + ' or ';
            DM_data.qry_pub.Next;
          end;

        end;

        DM_data.qry_pub.close;
        DM_data.qry_pub.sql.text := 'select lbmc from zybl_zyyz_dylbsz where dyxm=''输液计划单''';
        DM_data.qry_pub.Open;
        if DM_data.qry_pub.IsEmpty then
        begin
          v_lb := '';
        end
        else
        begin
          DM_data.qry_pub.First;
          while not DM_data.qry_pub.eof do
          begin

            if pub_yydm='0271' then   //掇刀医院代码
            begin
              v_lb := v_lb + '(lb=' + '''' + DM_data.qry_pub.FieldByName( 'lbmc' ).asstring + '''' + '  and kdbq=' + '''' + pub_bqdm +
             ''')' + ' or ';
            end else
            begin
              v_lb := v_lb + '(lb=' + '''' + DM_data.qry_pub.FieldByName( 'lbmc' ).asstring + '''' + '  and kdks=' + '''' + pub_ksdm +
             ''')' + ' or ';
            end;
      //          v_lb := v_lb + '(lb=' + '''' + DM_data.qry_pub.FieldByName( 'lbmc' ).asstring + '''' + '  and kdks=' + '''' + pub_ksdm +
      //           ''')' + ' or ';
            DM_data.qry_pub.Next;
          end;

        end;

        if v_yytj + v_lb = '' then
        begin
          filter := ' 1<>1 ';
        end
        else
        begin
          filter := v_yytj + v_lb + ' ( xmmc like ''%皮试%'' )'+
          ' or '+' ( xmmc like ''%敏试%'' )';
        end;

        sp_syjhzxd.Filter := filter;

        sp_syjhzxd.Filtered := True;
        if not sp_syjhzxd.IsEmpty then
        begin
          ChangePrinter_syjhd;
          frm_zysf_print_service.Printsyjhd( sp_sybr,sp_syjhzxd,FormatDateTime('yyyy-MM-dd',dt_zxsj.DateTime));
          ChangePrinter_syjhd;
          frm_zysf_print_service.Printsyjhd( sp_sybr,sp_syjhzxd,FormatDateTime('yyyy-MM-dd',dt_zxsj.DateTime));
        end;
      //      DM_data.qry_pub.close;
      //      DM_data.qry_pub.SQL.text:='update zybl_zyyz_yzzxqd with(rowlock) set syddy=1 where zyh='+''''+Trim( sp_sybr.fieldbyname( 'zyh' ).asstring )+
      //      ''''+' and zxsj='+ ''''+FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+'''';
      //      DM_data.qry_pub.ExecSQL;
        DM_data.qry_pub.close;
        DM_data.qry_pub.SQL.text:='insert into zybl_zyyz_syddy '+
        'select id,'+''''+FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+' from zybl_zyyz where zxbz=1 and  zyh='+''''+Trim( sp_sybr.fieldbyname( 'zyh' ).asstring )+
        ''''+' and  id not in (select yzid from zybl_zyyz_syddy where dyrq='+''''+
        FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+')';
        DM_data.qry_pub.ExecSQL;
        sp_sybr.Next;
       end;
    end;
  end;
  //RevertPrinter;

end;

procedure Tfrm_syddy.Button6Click(Sender: TObject);
var
  i, y, j, count, x: Integer;
  aControl: TControl;
  v_yytj, v_lb, filter,fzzfc,x_zyh,zh: string;
begin
//  sp_dryz.close;
//  sp_dryz.Parameters.ParamByName( '@bqdm' ).value := pub_bqdm;
//  sp_dryz.Parameters.ParamByName( '@zyh' ).value := '';
//  sp_dryz.Parameters.ParamByName( '@bz' ).value := '全部';
//  sp_dryz.Parameters.ParamByName( '@zxsj' ).value := formatdatetime( 'yyyymmdd', dT_zxsj.Date );
//  sp_dryz.Open;
//
//  sp_sybr.close;
//  sp_sybr.Parameters.ParamByName( '@bqdm' ).value := pub_bqdm;
//  sp_sybr.Parameters.ParamByName( '@zyh' ).value := '';
//  sp_sybr.Parameters.ParamByName( '@zxsj' ).value := formatdatetime( 'yyyymmdd', dT_zxsj.Date );
//  sp_sybr.Open;
//  sp_dryz.Filtered := false;
  if Application.MessageBox(pchar('你将打印右边勾选的液体分组，是否确认打印？')
    , '询问', MB_OKCANCEL + MB_ICONQUESTION
    + MB_DEFBUTTON2) = IDCANCEL then
  begin
   Exit;
  end;
  sp_dryz.DisableControls;
  sp_dryz.First;
  while not sp_dryz.eof do
  begin
    if (sp_dryz.FieldByName('xzbz').AsBoolean=true) and (Pos(sp_dryz.FieldByName('zyh').AsString,fzzfc)<1) then
    begin
      fzzfc:=fzzfc+sp_dryz.FieldByName('zyh').AsString+',';
    end;
    sp_dryz.Next;
  end;
  if fzzfc='' then
  begin
    Application.MessageBox('你未选择液体打印！', '警告', MB_OK + 
      MB_ICONWARNING);
    Exit;
  end;
  if sp_dryz.Active then
    createrect( myrect_cx, sp_dryz, dbgrideh2, 9, 10, 13 );
  sp_sybr.First;
  ChangePrinter_syjhd;
  while Pos(',',fzzfc)>0 do
  begin
      zh:='';
      x_zyh:=Copy(fzzfc,1,Pos(',',fzzfc)-1);
      sp_dryz.First;
      while not sp_dryz.eof do
      begin
        if (sp_dryz.FieldByName('xzbz').AsBoolean=true) and (sp_dryz.FieldByName('zyh').AsString=x_zyh) and
           (Pos(sp_dryz.FieldByName('fzph').AsString,zh)<1) then
        begin
          zh:=zh+sp_dryz.FieldByName('fzph').AsString+',';
        end;
        sp_dryz.Next;
      end;
      if pub_yydm<>'0271' then
      begin
        with sp_syjhzxd do
        begin
          Filtered := False;
          Close;
          Parameters.Refresh;
          Parameters.ParamByName( '@zyh' ).Value := x_zyh;
          Parameters.ParamByName( '@rq' ).Value := FormatDateTime('yyyyMMdd',dt_zxsj.DateTime);
          Parameters.ParamByName( '@fzph_zh' ).Value := zh;
          Open;
        end;
      end else
      begin
        with sp_ddyy_syjhzxd do
        begin
          Filtered := False;
          Close;
          Parameters.Refresh;
          Parameters.ParamByName( '@zyh' ).Value := x_zyh;
          Parameters.ParamByName( '@rq' ).Value := FormatDateTime('yyyyMMdd',dt_zxsj.DateTime);
          Parameters.ParamByName( '@fzph_zh' ).Value := zh;
          Parameters.ParamByName( '@ISsyd' ).Value := 1;
          Parameters.ParamByName( '@yytj1' ).Value := '分组';
          Open;
        end;
      end;
//      DM_data.qry_pub.close;
//      DM_data.qry_pub.sql.text := 'select yytj from zybl_zyyz_dytjsz where dyxm=''输液计划单''';
//      DM_data.qry_pub.Open;
//      if DM_data.qry_pub.IsEmpty then
//      begin
//        v_yytj := '';
//      end
//      else
//      begin
//        DM_data.qry_pub.First;
//        while not DM_data.qry_pub.eof do
//        begin
//          if pub_yydm='0271' then   //掇刀医院代码
//          begin
//           v_yytj := v_yytj + '(yytj=' + '''' + DM_data.qry_pub.FieldByName( 'yytj' ).asstring + '''' + '  and kdbq=' + '''' + pub_bqdm +
//             ''')' + ' or ';
//          end else
//          begin
//              v_yytj := v_yytj + '(yytj=' + '''' + DM_data.qry_pub.FieldByName( 'yytj' ).asstring + '''' + '  and kdks=' + '''' + pub_ksdm +
//             ''')' + ' or ';
//          end;
//
////          v_yytj := v_yytj + '(yytj=' + '''' + DM_data.qry_pub.FieldByName( 'yytj' ).asstring + '''' + '  and kdks=' + '''' + pub_ksdm +
////         ''')' + ' or ';
//          DM_data.qry_pub.Next;
//        end;
//
//      end;
//
//      DM_data.qry_pub.close;
//      DM_data.qry_pub.sql.text := 'select lbmc from zybl_zyyz_dylbsz where dyxm=''输液计划单''';
//      DM_data.qry_pub.Open;
//      if DM_data.qry_pub.IsEmpty then
//      begin
//        v_lb := '';
//      end
//      else
//      begin
//        DM_data.qry_pub.First;
//        while not DM_data.qry_pub.eof do
//        begin
//
//          if pub_yydm='0271' then   //掇刀医院代码
//          begin
//            v_lb := v_lb + '(lb=' + '''' + DM_data.qry_pub.FieldByName( 'lbmc' ).asstring + '''' + '  and kdbq=' + '''' + pub_bqdm +
//             ''')' + ' or ';
//          end else
//          begin
//            v_lb := v_lb + '(lb=' + '''' + DM_data.qry_pub.FieldByName( 'lbmc' ).asstring + '''' + '  and kdks=' + '''' + pub_ksdm +
//             ''')' + ' or ';
//          end;
////          v_lb := v_lb + '(lb=' + '''' + DM_data.qry_pub.FieldByName( 'lbmc' ).asstring + '''' + '  and kdks=' + '''' + pub_ksdm +
////           ''')' + ' or ';
//          DM_data.qry_pub.Next;
//        end;
//
//      end;
//
//      if v_yytj + v_lb = '' then
//      begin
//        filter := ' 1<>1 ';
//      end
//      else
//      begin
//        filter := v_yytj + v_lb + ' ( xmmc like ''%皮试%'' )'+
//        ' or '+' ( xmmc like ''%敏试%'' )';
//      end;
//
//      sp_syjhzxd.Filter := filter;
//
//      sp_syjhzxd.Filtered := True;
      sp_sybr.DisableControls;
      sp_sybr.Locate('zyh',x_zyh,[]);
      sp_sybr.EnableControls;
      if not sp_ddyy_syjhzxd.IsEmpty then
      begin
        if pub_yydm='0271' then
        begin
          ChangePrinter_syjhd;
          frm_zysf_print_service.Printsyjhd( sp_sybr,sp_ddyy_syjhzxd,FormatDateTime('yyyy-MM-dd',dt_zxsj.DateTime));
          ChangePrinter_syjhd;
          frm_zysf_print_service.Printsyjhd( sp_sybr,sp_ddyy_syjhzxd,FormatDateTime('yyyy-MM-dd',dt_zxsj.DateTime));
        end else
        begin
          ChangePrinter_syjhd;
          frm_zysf_print_service.Printsyjhd( sp_sybr,sp_syjhzxd,FormatDateTime('yyyy-MM-dd',dt_zxsj.DateTime));
          ChangePrinter_syjhd;
          frm_zysf_print_service.Printsyjhd( sp_sybr,sp_syjhzxd,FormatDateTime('yyyy-MM-dd',dt_zxsj.DateTime));
        end;
      end;
//      DM_data.qry_pub.close;
//      DM_data.qry_pub.SQL.text:='update zybl_zyyz_yzzxqd with(rowlock) set syddy=1 from zybl_zyyz a,zybl_zyyz_yzzxqd b where a.zyh=b.zyh and '+
//      '  a.id=b.yzid and  '+'a.zyh='+''''+Trim( sp_sybr.fieldbyname( 'zyh' ).asstring )+
//      ''''+' and b.zxsj='+ ''''+FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+' and charindex(a.fzph,'+''''+
//      zh+''''+')>0';
//      DM_data.qry_pub.ExecSQL;
      DM_data.qry_pub.SQL.text:='insert into zybl_zyyz_syddy '+
      'select id,'+''''+FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+' from zybl_zyyz a where zxbz=1 and  zyh='+''''+Trim( sp_sybr.fieldbyname( 'zyh' ).asstring )+
      ''''+' and charindex(a.fzph,'+''''+
      zh+''''+')>0'+' and  id not in (select yzid from zybl_zyyz_syddy where dyrq='+''''+
      FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+')';
      DM_data.qry_pub.ExecSQL;
      fzzfc:=Copy(fzzfc,Pos(',',fzzfc)+1);
  end;
  sp_dryz.EnableControls;
  //RevertPrinter;

end;

procedure Tfrm_syddy.Button7Click(Sender: TObject);
var
  i, y, j, count, x: Integer;
  aControl: TControl;
  v_yytj, v_lb, filter: string;
begin
  if Application.MessageBox(pchar('你将打印'+trim(sp_sybr.FieldByName('bch').asstring)+'床病人'+
    trim(sp_sybr.FieldByName('brxm').asstring)+'的全部输液单，是否确认打印？')
    , '询问', MB_OKCANCEL + MB_ICONQUESTION
    + MB_DEFBUTTON2) = IDCANCEL then
  begin
   Exit;
  end;

  with sp_syjhzxd do
  begin
    Filtered := False;
    Close;
    Parameters.Refresh;
    Parameters.ParamByName( '@zyh' ).Value := Trim( sp_sybr.fieldbyname( 'zyh' ).asstring );
    Parameters.ParamByName( '@rq' ).Value := FormatDateTime('yyyyMMdd',dt_zxsj.DateTime);
    Parameters.ParamByName( '@fzph_zh' ).Value := '';
    Open;
  end;
  
  DM_data.qry_pub.close;
  DM_data.qry_pub.sql.text := 'select yytj from zybl_zyyz_dytjsz where dyxm=''输液计划单''';
  DM_data.qry_pub.Open;
  if DM_data.qry_pub.IsEmpty then
  begin
    v_yytj := '';
  end
  else
  begin
    DM_data.qry_pub.First;
    while not DM_data.qry_pub.eof do
    begin
      if pub_yydm='0271' then   //掇刀医院代码
      begin
       v_yytj := v_yytj + '(yytj=' + '''' + DM_data.qry_pub.FieldByName( 'yytj' ).asstring + '''' + '  and kdbq=' + '''' + pub_bqdm +
         ''')' + ' or ';
      end else
      begin
          v_yytj := v_yytj + '(yytj=' + '''' + DM_data.qry_pub.FieldByName( 'yytj' ).asstring + '''' + '  and kdks=' + '''' + pub_ksdm +
         ''')' + ' or ';
      end;
      
//      v_yytj := v_yytj + '(yytj=' + '''' + DM_data.qry_pub.FieldByName( 'yytj' ).asstring + '''' + '  and kdks=' + '''' + pub_ksdm +
//         ''')' + ' or ';
      DM_data.qry_pub.Next;
    end;

  end;

  DM_data.qry_pub.close;
  DM_data.qry_pub.sql.text := 'select lbmc from zybl_zyyz_dylbsz where dyxm=''输液计划单''';
  DM_data.qry_pub.Open;
  if DM_data.qry_pub.IsEmpty then
  begin
    v_lb := '';
  end
  else
  begin
    DM_data.qry_pub.First;
    while not DM_data.qry_pub.eof do
    begin
      if pub_yydm='0271' then   //掇刀医院代码
      begin
        v_lb := v_lb + '(lb=' + '''' + DM_data.qry_pub.FieldByName( 'lbmc' ).asstring + '''' + '  and kdbq=' + '''' + pub_bqdm +
         ''')' + ' or ';
      end else
      begin
        v_lb := v_lb + '(lb=' + '''' + DM_data.qry_pub.FieldByName( 'lbmc' ).asstring + '''' + '  and kdks=' + '''' + pub_ksdm +
         ''')' + ' or ';
      end;

      DM_data.qry_pub.Next;
    end;
  end;

  if v_yytj + v_lb = '' then
  begin
    filter := ' 1<>1 ';
  end
  else
  begin
    filter := v_yytj + v_lb + ' ( xmmc like ''%皮试%'' and  kdrq>=' + '''' + formatdatetime( 'yy-MM-dd', frm_func.curr_date ) + ' 00:00'+''')'+
    ' or '+' ( xmmc like ''%敏试%'' and  kdrq>=' + '''' + formatdatetime( 'yy-MM-dd', frm_func.curr_date ) + ' 00:00'+''')';
  end;

  sp_syjhzxd.Filter := filter;
  sp_syjhzxd.Filtered := True;
  if sp_syjhzxd.IsEmpty then
  begin
    Application.MessageBox('该病人当天没有输液计划！','提示',0+48);
    Exit;
  end;
  ChangePrinter_syjhd;
  frm_zysf_print_service.Printsyjhd( sp_sybr,sp_syjhzxd,FormatDateTime('yyyy-MM-dd',dt_zxsj.DateTime));
//  DM_data.qry_pub.close;
//  DM_data.qry_pub.SQL.text:='update zybl_zyyz_yzzxqd with(rowlock) set syddy=1 where zyh='+''''+Trim( sp_sybr.fieldbyname( 'zyh' ).asstring )+
//  ''''+' and zxsj='+ ''''+FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+'''';
//  DM_data.qry_pub.ExecSQL;
      DM_data.qry_pub.SQL.text:='insert into zybl_zyyz_syddy '+
      'select id,'+''''+FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+' from zybl_zyyz where zxbz=1 and zyh='+''''+Trim( sp_sybr.fieldbyname( 'zyh' ).asstring )+
      ''''+' and  id not in (select yzid from zybl_zyyz_syddy where dyrq='+''''+
      FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+')';
      DM_data.qry_pub.ExecSQL;

end;

procedure Tfrm_syddy.Button8Click(Sender: TObject);
var
  i, y, j, count, x: Integer;
  aControl: TControl;
  v_yytj, v_lb, filter: string;
begin
  if pub_yydm = HN_SYRMYY then
  begin
    if Application.MessageBox(pchar('你将打印本病区所有病人的长期输液单，是否确认打印？')
    , '询问', MB_OKCANCEL + MB_ICONQUESTION
    + MB_DEFBUTTON2) = IDCANCEL then
  begin
   Exit;
  end;
    PrintSYXSK(clLongTerm,'');
  end
  else
  begin
    if Application.MessageBox(pchar('你将打印本病区所有病人的全部输液单，是否确认打印？')
      , '询问', MB_OKCANCEL + MB_ICONQUESTION
      + MB_DEFBUTTON2) = IDCANCEL then
    begin
     Exit;
    end;
    sp_dryz.close;
    sp_dryz.Parameters.ParamByName( '@bqdm' ).value := pub_bqdm;
    sp_dryz.Parameters.ParamByName( '@zyh' ).value := '';
    sp_dryz.Parameters.ParamByName( '@bz' ).value := '全部';
    sp_dryz.Parameters.ParamByName( '@zxsj' ).value := formatdatetime( 'yyyymmdd', dT_zxsj.Date );
    sp_dryz.Open;

    sp_sybr.close;
    sp_sybr.Parameters.ParamByName( '@bqdm' ).value := pub_bqdm;
    sp_sybr.Parameters.ParamByName( '@zyh' ).value := '';
    sp_sybr.Parameters.ParamByName( '@zxsj' ).value := formatdatetime( 'yyyymmdd', dT_zxsj.Date );
    sp_sybr.Open;
    sp_dryz.Filtered := false;
    if sp_dryz.Active then
      createrect( myrect_cx, sp_dryz, dbgrideh2, 9, 10, 13 );
    sp_sybr.First;
    ChangePrinter_syjhd;
    while not sp_sybr.eof do
    begin
      with sp_syjhzxd do
      begin
        Filtered := False;
        Close;
        Parameters.Refresh;
        Parameters.ParamByName( '@zyh' ).Value := Trim( sp_sybr.fieldbyname( 'zyh' ).asstring );
        Parameters.ParamByName( '@rq' ).Value := FormatDateTime('yyyyMMdd',dt_zxsj.DateTime);
        Parameters.ParamByName( '@fzph_zh' ).Value := '';
        Open;
      end;
      DM_data.qry_pub.close;
      DM_data.qry_pub.sql.text := 'select yytj from zybl_zyyz_dytjsz where dyxm=''输液计划单''';
      DM_data.qry_pub.Open;
      if DM_data.qry_pub.IsEmpty then
      begin
        v_yytj := '';
      end
      else
      begin
        DM_data.qry_pub.First;
        while not DM_data.qry_pub.eof do
        begin
          if pub_yydm='0271' then   //掇刀医院代码
          begin
           v_yytj := v_yytj + '(yytj=' + '''' + DM_data.qry_pub.FieldByName( 'yytj' ).asstring + '''' + '  and kdbq=' + '''' + pub_bqdm +
             ''')' + ' or ';
          end else
          begin
              v_yytj := v_yytj + '(yytj=' + '''' + DM_data.qry_pub.FieldByName( 'yytj' ).asstring + '''' + '  and kdks=' + '''' + pub_ksdm +
             ''')' + ' or ';
          end;
      //        v_yytj := v_yytj + '(yytj=' + '''' + DM_data.qry_pub.FieldByName( 'yytj' ).asstring + '''' + '  and kdks=' + '''' + pub_ksdm +
      //         ''')' + ' or ';
          DM_data.qry_pub.Next;
        end;

      end;

      DM_data.qry_pub.close;
      DM_data.qry_pub.sql.text := 'select lbmc from zybl_zyyz_dylbsz where dyxm=''输液计划单''';
      DM_data.qry_pub.Open;
      if DM_data.qry_pub.IsEmpty then
      begin
        v_lb := '';
      end
      else
      begin
        DM_data.qry_pub.First;
        while not DM_data.qry_pub.eof do
        begin
          if pub_yydm='0271' then   //掇刀医院代码
          begin
            v_lb := v_lb + '(lb=' + '''' + DM_data.qry_pub.FieldByName( 'lbmc' ).asstring + '''' + '  and kdbq=' + '''' + pub_bqdm +
             ''')' + ' or ';
          end else
          begin
            v_lb := v_lb + '(lb=' + '''' + DM_data.qry_pub.FieldByName( 'lbmc' ).asstring + '''' + '  and kdks=' + '''' + pub_ksdm +
             ''')' + ' or ';
          end;
      //        v_lb := v_lb + '(lb=' + '''' + DM_data.qry_pub.FieldByName( 'lbmc' ).asstring + '''' + '  and kdks=' + '''' + pub_ksdm +
      //         ''')' + ' or ';
          DM_data.qry_pub.Next;
        end;

      end;

      if v_yytj + v_lb = '' then
      begin
        filter := ' 1<>1 ';
      end
      else
      begin
        filter := v_yytj + v_lb + ' ( xmmc like ''%皮试%'' )'+
        ' or '+' ( xmmc like ''%敏试%'' )';
      end;

      sp_syjhzxd.Filter := filter;

      sp_syjhzxd.Filtered := True;
      if not sp_syjhzxd.IsEmpty then
      begin
        ChangePrinter_syjhd;
        frm_zysf_print_service.Printsyjhd( sp_sybr,sp_syjhzxd,FormatDateTime('yyyy-MM-dd',dt_zxsj.DateTime));
      end;
    //    DM_data.qry_pub.close;
    //    DM_data.qry_pub.SQL.text:='update zybl_zyyz_yzzxqd with(rowlock) set syddy=1 where zyh='+''''+Trim( sp_sybr.fieldbyname( 'zyh' ).asstring )+
    //    ''''+' and zxsj='+ ''''+FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+'''';
    //    DM_data.qry_pub.ExecSQL;
      DM_data.qry_pub.SQL.text:='insert into zybl_zyyz_syddy '+
      'select id,'+''''+FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+' from zybl_zyyz where zxbz=1 and  zyh='+''''+Trim( sp_sybr.fieldbyname( 'zyh' ).asstring )+
      ''''+' and  id not in (select yzid from zybl_zyyz_syddy where dyrq='+''''+
      FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+')';
      DM_data.qry_pub.ExecSQL;

      sp_sybr.Next;
    end;
  //RevertPrinter;
  end;

end;

procedure Tfrm_syddy.Button9Click(Sender: TObject);
var
  i, y, j, count, x: Integer;
  aControl: TControl;
  v_yytj, v_lb, filter: string;
begin

  if pub_yydm = HN_SYRMYY then
  begin
    if Application.MessageBox(pchar('你将打印本病区所有病人的临时输液单，是否确认打印？')
      , '询问', MB_OKCANCEL + MB_ICONQUESTION
      + MB_DEFBUTTON2) = IDCANCEL then
    begin
     Exit;
    end;
    PrintSYXSK(clTemporary,'');
  end
  else   
  begin
    if Application.MessageBox(pchar('你将打印'+trim(sp_sybr.FieldByName('bch').asstring)+'床病人'+
      trim(sp_sybr.FieldByName('brxm').asstring)+'的所有临时输液单，是否确认打印？')
      , '询问', MB_OKCANCEL + MB_ICONQUESTION
      + MB_DEFBUTTON2) = IDCANCEL then
    begin
     Exit;
    end;
    with sp_syjhzxd do
    begin
      Filtered := False;
      Close;
      Parameters.Refresh;
      Parameters.ParamByName( '@zyh' ).Value := Trim( sp_sybr.fieldbyname( 'zyh' ).asstring );
      Parameters.ParamByName( '@rq' ).Value := FormatDateTime('yyyyMMdd',dt_zxsj.DateTime);
      Parameters.ParamByName( '@fzph_zh' ).Value := '';
      Open;
    end;
    DM_data.qry_pub.close;
    DM_data.qry_pub.sql.text := 'select yytj from zybl_zyyz_dytjsz where dyxm=''输液计划单''';
    DM_data.qry_pub.Open;
    if DM_data.qry_pub.IsEmpty then
    begin
      v_yytj := '';
    end
    else
    begin
      DM_data.qry_pub.First;
      while not DM_data.qry_pub.eof do
      begin
        if pub_yydm='0271' then   //掇刀医院代码
        begin
            v_yytj := v_yytj + '(yytj=' + '''' + DM_data.qry_pub.FieldByName( 'yytj' ).asstring + '''' + ' and sx=''临时''  and kdbq=' + '''' + pub_bqdm +
           ''')' + ' or ';
        end else
        begin
           v_yytj := v_yytj + '(yytj=' + '''' + DM_data.qry_pub.FieldByName( 'yytj' ).asstring + '''' + ' and sx=''临时''  and kdks=' + '''' + pub_ksdm +
           ''')' + ' or ';
        end;
  //      v_yytj := v_yytj + '(yytj=' + '''' + DM_data.qry_pub.FieldByName( 'yytj' ).asstring + '''' + ' and sx=''临时''  and kdks=' + '''' + pub_ksdm +
  //         ''')' + ' or ';
        DM_data.qry_pub.Next;
      end;
    end;

    DM_data.qry_pub.close;
    DM_data.qry_pub.sql.text := 'select lbmc from zybl_zyyz_dylbsz where dyxm=''输液计划单''';
    DM_data.qry_pub.Open;
    if DM_data.qry_pub.IsEmpty then
    begin
      v_lb := '';
    end
    else
    begin
      DM_data.qry_pub.First;
      while not DM_data.qry_pub.eof do
      begin
        if pub_yydm='0271' then   //掇刀医院代码
        begin
          v_lb := v_lb + '(lb=' + '''' + DM_data.qry_pub.FieldByName( 'lbmc' ).asstring + '''' + ' and sx=''临时'' and kdbq=' + '''' + pub_bqdm +
           ''')' + ' or ';
        end else
        begin
           v_lb := v_lb + '(lb=' + '''' + DM_data.qry_pub.FieldByName( 'lbmc' ).asstring + '''' + ' and sx=''临时'' and kdks=' + '''' + pub_ksdm +
           ''')' + ' or ';
        end;
  //      v_lb := v_lb + '(lb=' + '''' + DM_data.qry_pub.FieldByName( 'lbmc' ).asstring + '''' + ' and sx=''临时'' and kdks=' + '''' + pub_ksdm +
  //         ''')' + ' or ';
        DM_data.qry_pub.Next;
      end;

    end;

    if v_yytj + v_lb = '' then
    begin
      filter := ' 1<>1 ';
    end
    else
    begin
      filter := v_yytj + v_lb + ' ( xmmc like ''%皮试%'' and  kdrq>=' + '''' + formatdatetime( 'yy-MM-dd', frm_func.curr_date ) + ' 00:00'+''')'+
      ' or '+ ' ( xmmc like ''%敏试%'' and  kdrq>=' + '''' + formatdatetime( 'yy-MM-dd', frm_func.curr_date ) + ' 00:00'+''')';
    end;

    sp_syjhzxd.Filter := filter;

    sp_syjhzxd.Filtered := True;
    if sp_syjhzxd.IsEmpty then
    begin
      Application.MessageBox('该病人当天没有输液计划！','提示',0+48);
      Exit;
    end;
    ChangePrinter_syjhd;
    frm_zysf_print_service.Printsyjhd( sp_sybr,sp_syjhzxd,FormatDateTime('yyyy-MM-dd',dt_zxsj.DateTime));

//  DM_data.qry_pub.close;
//  DM_data.qry_pub.SQL.text:='update zybl_zyyz_yzzxqd with(rowlock) set syddy=1 from zybl_zyyz a,zybl_zyyz_yzzxqd b where a.zyh=b.zyh and '+
//  '  a.id=b.yzid and  '+'a.zyh='+''''+Trim( sp_sybr.fieldbyname( 'zyh' ).asstring )+
//  ''''+' and b.zxsj='+ ''''+FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+' and a.yzsx=''临时''';
//  DM_data.qry_pub.ExecSQL;
    DM_data.qry_pub.SQL.text:='insert into zybl_zyyz_syddy '+
    'select id,'+''''+FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+' from zybl_zyyz where zxbz=1 and zyh='+''''+Trim( sp_sybr.fieldbyname( 'zyh' ).asstring )+
    ''''+' and yzsx=''临时'' and convert(varchar,kdrq,112)='+''''+
    FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+' and   id not in (select yzid from zybl_zyyz_syddy where dyrq='+''''+
    FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+')';
    DM_data.qry_pub.ExecSQL;
  end;
end;

procedure Tfrm_syddy.qyydhszdy;
begin
    frm_print_sybq.QRLabel10.Caption := '科室：'+pub_bqmc;
    //frm_print_sybq.QRLabel5.caption := frm_print_sybq.sp_syfz.FieldByName( 'bz' ).AsString;
    if v_IsPrinterJoin then
    begin
      if  frm_print_sybq.QuickRep4.PrinterSettings.PrinterIndex <> v_PrinterIndex_new then
      begin
        frm_print_sybq.QuickRep4.PrinterSettings.PrinterIndex := v_PrinterIndex_new;
      end;
    end;
    frm_print_sybq.QuickRep4.print;

end;

procedure Tfrm_syddy.qyydhszdy_xz;
begin
      frm_print_sybq.QRImage3.Top := 3;
      frm_print_sybq.QRImage3.Left := 8;
      frm_print_sybq.QRImage3.width := 138;
      frm_print_sybq.QRImage3.Height := 24;
//      frm_print_sybq.brcd1.BarCode := frm_print_sybq.sp_syfz.FieldByName( 'fzph' ).AsString;
//      frm_print_sybq.brcd1.Height := frm_print_sybq.QRImage3.Height;
//      frm_print_sybq.brcd1.textshow := tsNone;
//      frm_print_sybq.brcd1.Draw(frm_print_sybq.QRImage3.Canvas,4,0,frm_print_sybq.QRImage3.Height,0);
      frm_print_sybq.QRLabel14.caption := '日期:' + formatdatetime( 'MM-dd', dt_zxsj.date );
      //frm_print_sybq.QRLabel15.caption := frm_print_sybq.sp_syfz.FieldByName( 'bz' ).AsString;
      if v_IsPrinterJoin then
      begin
        if  frm_print_sybq.QuickRep5.PrinterSettings.PrinterIndex <> v_PrinterIndex_new then
        begin
          frm_print_sybq.QuickRep5.PrinterSettings.PrinterIndex := v_PrinterIndex_new;
        end;
      end;
      frm_print_sybq.QuickRep5.print;
end;



procedure Tfrm_syddy.createrect( var myrect1: TTmyrect; dataset_rect: Tcustomadodataset; grid_yzlr1: Tdbgrideh; x1, x2, x3: integer );
var
  yzph: string;
  i, n: integer;
begin
  dataset_rect.DisableControls;
  rectno := 0;
  dataset_rect.first;
  initarray( myrect1 );
  i := 1;
  while not dataset_rect.Eof do
  begin
    if dataset_rect.FieldByName( 'fzph' ).AsString <> '' then
    begin
      if ( yzph <> '' ) and ( myrect1[rectno].sl = 1 ) and ( yzph <> dataset_rect.FieldByName( 'fzph' ).AsString ) then
      begin
        myrect1[rectno].bottom := grid_yzlr1.CellRect( x1, i - 1 ).bottom;
        myrect1[rectno].Gbottom := grid_yzlr1.CellRect( x1, i - 1 ).bottom;
        //        myrect_cx[rectno].sl:=myrect_cx[rectno].sl+1;
        yzph := '';
      end;
      if yzph = dataset_rect.FieldByName( 'fzph' ).AsString then   //
      begin
        myrect1[rectno].bottom := grid_yzlr1.CellRect( x1, i ).bottom;
        myrect1[rectno].Gbottom := grid_yzlr1.CellRect( 1, i ).bottom;
        myrect1[rectno].sl := myrect1[rectno].sl + 1;

      end
      else     //yzph变量和数据集中的当前分组批号不一样
      begin
        rectno := rectno + 1;
        myrect1[rectno].sl := 1;
        myrect1[rectno].ph := dataset_rect.FieldByName( 'fzph' ).AsString;

        myrect1[rectno].left := grid_yzlr1.CellRect( x1, i ).left;
        myrect1[rectno].right := grid_yzlr1.CellRect( x2, i ).right;
        myrect1[rectno].top := grid_yzlr1.CellRect( x1, i ).top;

        myrect1[rectno].Gleft := grid_yzlr1.CellRect( 4, i ).left;
        myrect1[rectno].Gright := grid_yzlr1.CellRect( x3, i ).right;
        if grid_yzlr1.CellRect( x3, i ).right = 0 then
          for n := 0 to x3 - 1 do
            myrect1[rectno].Gright := myrect1[rectno].Gright + grid_yzlr1.Columns[n].Width;
        myrect1[rectno].Gtop := grid_yzlr1.CellRect( 1, i ).top;
        myrect1[rectno].yf := dataset_rect.FieldByName( 'ypyf' ).AsString;
        myrect1[rectno].tj := dataset_rect.FieldByName( 'yytj' ).AsString;
        myrect1[rectno].height := grid_yzlr1.CellRect( x1, i ).bottom - grid_yzlr1.CellRect( x1, i ).top;
        yzph := dataset_rect.FieldByName( 'fzph' ).AsString;
      end;
    end
    else
    begin
      if ( yzph <> '' ) and ( myrect1[rectno].sl = 1 ) then
      begin
        myrect1[rectno].bottom := grid_yzlr1.CellRect( x1, i - 1 ).bottom;
        ;
        myrect1[rectno].Gbottom := grid_yzlr1.CellRect( x1, i - 1 ).bottom;
        //        myrect_cx[rectno].sl:=myrect_cx[rectno].sl+1;
        yzph := '';
      end;
      if ( yzph <> '' ) and ( myrect1[rectno].sl > 1 ) then
        yzph := '';

    end;
    dataset_rect.Next;
    i := dataset_rect.RecNo;
  end;
  if yzph <> '' then
  begin
    myrect1[rectno].bottom := grid_yzlr1.CellRect( x1, i ).bottom;
    ;
    myrect1[rectno].Gbottom := grid_yzlr1.CellRect( x1, i ).bottom;
    //        myrect_cx[rectno].sl:=myrect_cx[rectno].sl+1;
    yzph := '';
  end;
  dataset_rect.EnableControls;

end;



procedure Tfrm_syddy.DBGridEh1CellClick( Column: TColumnEh );
var zyh:string;
begin
//  if not qb.checked then
//  begin
//    sp_dryz.Filtered := false;
//    sp_dryz.Filter := 'bch=' + #39 + sp_sybr.fieldbyname( 'bch' ).asstring + #39;
//    sp_dryz.Filtered := true;
//    if sp_dryz.Active then
//      createrect( myrect_cx, sp_dryz, dbgrideh2, 9, 10, 13 );
//
//  end
//  else
//  begin
//    if (DBGridEh1.SelectedIndex<>0) then
//    begin
//      Exit;
//    end;
//    if (sp_sybr.fieldbyname('xzbz').asboolean=false) and (DBGridEh1.SelectedIndex=0) then
//    begin
//       zyh_zfc:=zyh_zfc+' or '+'(zyh ='+''''+sp_sybr.fieldbyname('zyh').asstring+''''+')';
//    end
//    else
//    if (sp_sybr.fieldbyname('xzbz').asboolean=true) and (DBGridEh1.SelectedIndex=0) then
//    begin
//      zyh_zfc := StringReplace( zyh_zfc, ' or '+'(zyh ='+''''+sp_sybr.fieldbyname('zyh').asstring+''''+')', '', [rfReplaceAll] );
//    end;
//    zyh:=sp_sybr.fieldbyname('zyh').asstring;
////  if (sp_sybr.fieldbyname('xzbz').asboolean=true) and (DBGridEh1.SelectedIndex=0) then
////  begin
////    sp_sybr.Edit;
////    sp_sybr.FieldByName('xzbz').asboolean:=false;
////    sp_sybr.Post;
////  end
////  else
////  if (sp_sybr.fieldbyname('xzbz').asboolean=false) and (DBGridEh1.SelectedIndex=0) then
////  begin
////    sp_sybr.Edit;
////    sp_sybr.FieldByName('xzbz').asboolean:=true;
////    sp_sybr.Post;
////  end;
////  sp_sybr.ControlsDisabled;
////  sp_sybr.first;
////  while not sp_sybr.eof  do
////  begin
////    if sp_sybr.fieldbyname('xzbz').asboolean=true then
////    begin
////      zyh_zfc:=zyh_zfc+' (zyh ='+''''+sp_sybr.fieldbyname('zyh').asstring+''''+') or ';
////    end;
////    sp_sybr.next;
////  end;
//  sp_dryz.Filtered := false;
//  if trim(zyh_zfc)<>'' then
//  begin
//    sp_dryz.filter:=Copy(zyh_zfc,5,Length(zyh_zfc)-4);
//    sp_dryz.Filtered := true;
//  end;
////  sp_sybr.Locate('zyh',zyh,[]);
//  end;
//  if sp_dryz.Active then
//  begin
//    if sp_dryz.RecordCount < 300 then
//    begin
//      createrect( myrect_cx, sp_dryz, dbgrideh2, 9, 10, 13 );
//    end;
//  end;



    if (DBGridEh1.SelectedIndex<>0) then
    begin
      Exit;
    end;
    if (sp_sybr.fieldbyname('xzbz').asboolean=false) and (DBGridEh1.SelectedIndex=0) then
    begin
       zyh_zfc:=zyh_zfc+' or '+'(zyh ='+''''+sp_sybr.fieldbyname('zyh').asstring+''''+')';
    end
    else
    if (sp_sybr.fieldbyname('xzbz').asboolean=true) and (DBGridEh1.SelectedIndex=0) then
    begin
      zyh_zfc := StringReplace( zyh_zfc, ' or '+'(zyh ='+''''+sp_sybr.fieldbyname('zyh').asstring+''''+')', '', [rfReplaceAll] );
    end;
    zyh:=sp_sybr.fieldbyname('zyh').asstring;
//  if (sp_sybr.fieldbyname('xzbz').asboolean=true) and (DBGridEh1.SelectedIndex=0) then
//  begin
//    sp_sybr.Edit;
//    sp_sybr.FieldByName('xzbz').asboolean:=false;
//    sp_sybr.Post;
//  end
//  else
//  if (sp_sybr.fieldbyname('xzbz').asboolean=false) and (DBGridEh1.SelectedIndex=0) then
//  begin
//    sp_sybr.Edit;
//    sp_sybr.FieldByName('xzbz').asboolean:=true;
//    sp_sybr.Post;
//  end;
//  sp_sybr.ControlsDisabled;
//  sp_sybr.first;
//  while not sp_sybr.eof  do
//  begin
//    if sp_sybr.fieldbyname('xzbz').asboolean=true then
//    begin
//      zyh_zfc:=zyh_zfc+' (zyh ='+''''+sp_sybr.fieldbyname('zyh').asstring+''''+') or ';
//    end;
//    sp_sybr.next;
//  end;
  sp_dryz.Filtered := false;
  if trim(zyh_zfc)<>'' then
  begin
    sp_dryz.filter:=Copy(zyh_zfc,5,Length(zyh_zfc)-4);
    sp_dryz.Filtered := true;
  end;
//  sp_sybr.Locate('zyh',zyh,[]);

  if sp_dryz.Active then
  begin
    if sp_dryz.RecordCount < 300 then
    begin
      createrect( myrect_cx, sp_dryz, dbgrideh2, 9, 10, 13 );
    end;
  end;

end;

procedure Tfrm_syddy.DBGridEh2CellClick(Column: TColumnEh);
var syfz:string;
  checked: boolean;
  sbookmark: Tbookmark;
begin
  if (DBGridEh2.SelectedIndex=25) then
  begin
//    sp_dryz.Edit;
//    syfz := sp_dryz.FieldByName( 'fzph' ).AsString;
//    if syfz <> '' then
//    begin
//      sp_dryz.DisableControls;
//      sbookmark := sp_dryz.GetBookmark;
//      sp_dryz.first;
//      sp_dryz.Locate( 'fzph', syfz, [] );
//      checked := sp_dryz.FieldByName( 'xzbz' ).asboolean;
//      while ( syfz = sp_dryz.FieldByName( 'fzph' ).AsString ) and ( not sp_dryz.Eof ) do
//      begin
//        sp_dryz.Edit;
//        if checked then
//          sp_dryz.FieldByName( 'xzbz' ).AsBoolean := false
//        else
//          sp_dryz.FieldByName( 'xzbz' ).AsBoolean := true;
//        sp_dryz.Next;
//      end;
//      sp_dryz.Next;
//      sp_dryz.GotoBookmark( sbookmark );
//      sp_dryz.FreeBookmark( sbookmark );
//      sp_dryz.EnableControls;
//    end;
//        sp_dryz.UpdateBatch(arall);



  end;
end;

procedure Tfrm_syddy.DBGridEh2ColWidthsChanged( Sender: TObject );
begin
  if sp_dryz.Active then
  begin
    if sp_dryz.RecordCount < 300 then
    begin
      createrect( myrect_cx, sp_dryz, dbgrideh2, 9, 10, 13 );
    end;
  end;

end;

procedure Tfrm_syddy.DBGridEh2DrawColumnCell( Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState );
var
  i: integer;
  myrect1: Trect;
begin
  if trim( sP_dryz.fieldbyname( 'yzsx' ).asstring ) = '临时' then
  begin
    dbgrideh2.Canvas.Brush.Color := clwhite;
    dbgrideh2.Canvas.Font.Color := clGreen;
  end;

  if trim( sp_dryz.fieldbyname( 'fzph' ).asstring ) <> '' then
  begin
    dbgrideh2.canvas.brush.color := $00E2BC6D;
    i := findinarray( myrect_cx, sp_dryz.fieldbyname( 'fzph' ).asstring );
    dbgrideh2.Canvas.pen.color := $00E2BC6D;
    dbgrideh2.Canvas.MoveTo( myrect_cx[i].left + 20, myrect_cx[i].top );
    dbgrideh2.Canvas.LineTo( myrect_cx[i].left, myrect_cx[i].Bottom );
    dbgrideh2.canvas.Rectangle( myrect_cx[i].left, myrect_cx[i].top, myrect_cx[i].right, myrect_cx[i].bottom );
    dbgrideh2.Canvas.pen.color := clred;
    dbgrideh2.Canvas.MoveTo( myrect_cx[i].left + 20, myrect_cx[i].top );
    dbgrideh2.Canvas.LineTo( myrect_cx[i].left, myrect_cx[i].Bottom );
    with dbgrideh2.Canvas do
    begin
      moveto( myrect_cx[I].gleft, myrect_cx[i].Gtop );
      lineto( myrect_cx[I].gright, myrect_cx[I].gtop );
      lineto( myrect_cx[I].gright, myrect_cx[I].gbottom );
      lineto( myrect_cx[I].gleft, myrect_cx[I].gbottom );
      lineto( myrect_cx[I].gleft, myrect_cx[i].Gtop );
    end;
    myrect1.Left := myrect_cx[i].left;
    myrect1.top := myrect_cx[i].top;
    myrect1.right := myrect_cx[i].right;
    myrect1.bottom := myrect_cx[i].bottom;
    dbgrideh2.Canvas.TextOut( myrect_cx[i].left + 20,
      myrect_cx[i].top + round( myrect_cx[i].height * ( ( myrect_cx[i].sl - 0.5 ) / 2 ) ), myrect_cx[i].tj + #13 + myrect_cx[i].yf );
  end;
  ( Sender as TDbGridEh ).DefaultDrawColumnCell( Rect, DataCol, Column, State );
end;

procedure Tfrm_syddy.dt_zxsjChange( Sender: TObject );
begin
  if qhbz = '2' then
  begin
    sp_sybr.close;
    sp_sybr.Parameters.ParamByName( '@bqdm' ).value := pub_bqdm;
    sp_sybr.Parameters.ParamByName( '@zyh' ).value := '';
    sp_sybr.Parameters.ParamByName( '@zxsj' ).value := formatdatetime( 'yyyymmdd', dT_zxsj.Date );
    sp_sybr.Open;

    sp_dryz.close;
    sp_dryz.Parameters.ParamByName( '@bqdm' ).value := pub_bqdm;
    sp_dryz.Parameters.ParamByName( '@zyh' ).value := '';
    sp_dryz.Parameters.ParamByName( '@bz' ).value := '全部';
    sp_dryz.Parameters.ParamByName( '@zxsj' ).value := formatdatetime( 'yyyymmdd', dT_zxsj.Date );
    sp_dryz.Open;
  end;
end;

procedure Tfrm_syddy.FormCreate( Sender: TObject );
begin
  QuickRep1.Visible := False;

end;

procedure Tfrm_syddy.FormResize( Sender: TObject );
begin
  x := self.Width;
end;

procedure Tfrm_syddy.FormShow( Sender: TObject );
begin
  DM_data.qry_pub.close;
  DM_data.qry_pub.sql.Text:='select * from sys_xt_kg';
  DM_data.qry_pub.Open;
  sfqyydhsz:= DM_data.qry_pub.FieldByName('sfqyydhsz').AsBoolean;
  if (pub_yydm='0003') or (pub_yydm='0013') then
  begin
   Button1.Visible:=false;
   Button2.Visible:=false;
   Button3.Visible:=false;
   Button4.Visible:=false;
   Button6.Visible:=false;
   Button7.Visible:=false;
   Button8.Visible:=false;
   Button9.Visible:=false;
   Button10.Visible:=false;
   Button11.Visible:=false;
   DBGridEh2.Columns[25].Visible:=false;
   DBGridEh2.Columns[24].Visible:=false;
  end;
  qhbz := '1';
  zyh_zfc:='';
  if pub_yydm = '0269' then
    v_IsPrinterJoin := True;
  if pub_yydm='0271' then
  begin
    Button1.Visible :=False;
    Button2.Visible :=False;
    Button3.Visible :=False;
    //Button4.Visible :=False;
   // Button6.Visible :=False;
    Button7.Visible :=False;
    Button8.Visible :=False;
    Button9.Visible :=False;
    //Button11.Visible :=False;

    Button12.left :=430;
    Button14.left :=430;
    button14.top  :=-1;
    Button13.left :=659;
    Button15.left :=659;
    button15.top  :=-1;

  end else
  begin
    Button12.Visible :=False;
    Button13.Visible :=False;
    Button14.Visible :=False;
    Button15.Visible :=False;
  end;
  {  qry_ypyf.Open;
    while not qry_ypyf.Eof do
    begin
    sxtj.Items.Add(trim(qry_ypyf.FieldByName('mc').AsString));
    qry_ypyf.Next;
    end;}
  //  cxgrid1dbtableview1.DataController.Groups.FullExpand;
  dbgrideh2.Left := 1;
  dbgrideh2.Top := 1;
  dt_zxsj.DateTime := frm_func.curr_date;
  sp_yzsj.Close;
  sp_yzsj.Parameters.ParamByName( '@scyzsj' ).Value := dt_zxsj.DateTime;
  sp_yzsj.ExecProc;
  dt_zxsj.DateTime := sp_yzsj.Parameters.ParamByName( '@scyzsj' ).Value;
  sp_dryz.close;
  sp_dryz.Parameters.ParamByName( '@bqdm' ).value := pub_bqdm;
  sp_dryz.Parameters.ParamByName( '@zyh' ).value := prv_zyh;
  sp_dryz.Parameters.ParamByName( '@bz' ).value := '全部';
  sp_dryz.Parameters.ParamByName( '@zxsj' ).value := formatdatetime( 'yyyymmdd', dT_zxsj.Date );
  sp_dryz.Open;
  dbgrideh2.Columns[0].Visible := true;
  dbgrideh2.Columns[1].Visible := true;

  sp_sybr.close;
  sp_sybr.Parameters.ParamByName( '@bqdm' ).value := pub_bqdm;
  sp_sybr.Parameters.ParamByName( '@zyh' ).value := prv_zyh;
  sp_sybr.Parameters.ParamByName( '@zxsj' ).value := formatdatetime( 'yyyymmdd', dT_zxsj.Date );
  sp_sybr.Open;
  timer1.enabled := true;
  timer2.enabled := true;
  qhbz := '2';
  qb.Checked := ( prv_zyh = '' );

  ShayaStyle;//沙雅县人民医院
end;

procedure Tfrm_syddy.qbClick( Sender: TObject );
begin
  if prv_zyh = '' then
  begin
    if qb.checked then
    begin
      sp_dryz.Filtered := false;
      zyh_zfc:='';
      if sp_dryz.Active then
        createrect( myrect_cx, sp_dryz, dbgrideh2, 9, 10, 13 );
    end
    else
    begin
      zyh_zfc:='';
      sp_dryz.Filtered := false;
      sp_dryz.Filter := 'bch=' + #39 + sp_sybr.fieldbyname( 'bch' ).asstring + #39;
      sp_dryz.Filtered := true;
      if sp_dryz.Active then
        createrect( myrect_cx, sp_dryz, dbgrideh2, 9, 10, 13 );
    end;
  end
  else
  begin
    zyh_zfc:='';
    if qb.checked then
    begin
      sp_dryz.close;
      sp_dryz.Parameters.ParamByName( '@bqdm' ).value := pub_bqdm;
      sp_dryz.Parameters.ParamByName( '@zyh' ).value := '';
      sp_dryz.Parameters.ParamByName( '@bz' ).value := '全部';
      sp_dryz.Parameters.ParamByName( '@zxsj' ).value := formatdatetime( 'yyyymmdd', dT_zxsj.Date );
      sp_dryz.Open;

      sp_sybr.close;
      sp_sybr.Parameters.ParamByName( '@bqdm' ).value := pub_bqdm;
      sp_sybr.Parameters.ParamByName( '@zyh' ).value := '';
      sp_sybr.Parameters.ParamByName( '@zxsj' ).value := formatdatetime( 'yyyymmdd', dT_zxsj.Date );
      sp_sybr.Open;
      sp_dryz.Filtered := false;
      if sp_dryz.Active then
        createrect( myrect_cx, sp_dryz, dbgrideh2, 9, 10, 13 );
    end
    else
    begin
      sp_dryz.close;
      sp_dryz.Parameters.ParamByName( '@bqdm' ).value := pub_bqdm;
      sp_dryz.Parameters.ParamByName( '@zyh' ).value := prv_zyh;
      sp_dryz.Parameters.ParamByName( '@bz' ).value := '全部';
      sp_dryz.Parameters.ParamByName( '@zxsj' ).value := formatdatetime( 'yyyymmdd', dT_zxsj.Date );
      sp_dryz.Open;

      sp_sybr.close;
      sp_sybr.Parameters.ParamByName( '@bqdm' ).value := pub_bqdm;
      sp_sybr.Parameters.ParamByName( '@zyh' ).value := prv_zyh;
      sp_sybr.Parameters.ParamByName( '@zxsj' ).value := formatdatetime( 'yyyymmdd', dT_zxsj.Date );
      sp_sybr.Open;
      if sp_dryz.Active then
        createrect( myrect_cx, sp_dryz, dbgrideh2, 9, 10, 13 );
    end;
  end;
  if qb.checked then
  begin
    zyh_zfc:='';
    sp_sybr.DisableControls;
    sp_sybr.First;
    while not sp_sybr.eof do
    begin
      sp_sybr.Edit;
      sp_sybr.FieldByName('xzbz').AsBoolean:=true;
      sp_sybr.Post;
      sp_sybr.Next;
    end;
    sp_sybr.First;
    while not sp_sybr.eof do
    begin
      zyh_zfc:=zyh_zfc+' or '+'(zyh ='+''''+sp_sybr.fieldbyname('zyh').asstring+''''+')';
      sp_sybr.Next;
    end;
    sp_sybr.First;
    sp_sybr.EnableControls;
  end
  else
  begin
    sp_sybr.DisableControls;
    sp_sybr.First;
    while not sp_sybr.eof do
    begin
      sp_sybr.Edit;
      sp_sybr.FieldByName('xzbz').AsBoolean:=false;
      sp_sybr.Post;
//      if (sp_sybr.fieldbyname('xzbz').asboolean=false) and (DBGridEh1.SelectedIndex=0) then
//      begin
//        zyh_zfc:=zyh_zfc+' or '+'(zyh ='+''''+sp_sybr.fieldbyname('zyh').asstring+''''+')';
//      end
//      else
//      if (sp_sybr.fieldbyname('xzbz').asboolean=true) and (DBGridEh1.SelectedIndex=0) then
//      begin
//        zyh_zfc := StringReplace( zyh_zfc, ' or '+'(zyh ='+''''+sp_sybr.fieldbyname('zyh').asstring+''''+')', '', [rfReplaceAll] );
//      end;
      sp_sybr.Next;
    end;
    sp_sybr.First;
    zyh_zfc:='';
    if prv_zyh = '' then
    begin
      sp_dryz.Filtered := false;
      sp_dryz.Filter := 'zyh=''123123123123''';
      sp_dryz.Filtered := true;
    end;
    sp_sybr.EnableControls;
  end;
end;

procedure Tfrm_syddy.QRSubDetail1NeedData( Sender: TObject;
  var MoreData: Boolean );
var
  I: integer;
begin
  //MoreData := True;
  //i:=1;
  // if sp_zxjl_cq_dy.Eof then
  //  MoreData := False;
  //  ksrq.Caption:='';
  //  kdysmc.Caption:='';
  //  //zxhsmc.Caption:='';
  //  xmmc.Caption:='';
  //  //tzrq.Caption:='';
  //  //tzysmc.Caption:='';
  //  //zhhsmc.Caption:='';
  //  //zxzxsj.caption:='';
  //  //zhzxsj.caption:='';
  //
  //  if sp_zxjl_cq_dy.RecordCount<8 then
  //  begin
  //  for I := 1 to 8-sp_zxjl_cq_dy.RecordCount do
  //  begin
  //  sp_zxjl_cq_dy.Append;
  //  //sp_zxjl_cq_dy.FieldByName('ksrq').AsString := '' ;
  //  //sp_zxjl_cq_dy.FieldByName('yytj').Asstring := '静滴';
  //  sp_zxjl_cq_dy.Post;
  ////  ksrq.Caption:='';
  ////  kdysmc.Caption:='';
  //  //zxhsmc.Caption:='';
  ////  xmmc.Caption:='';
  //  qrgrimage1.enabled:=False;
  ////  ypyf.Caption:='';
  //  end;
  //  sp_zxjl_cq_dy.UpdateBatch(arall);
  //
  //  end;
  //
  //
  //  if not sp_zxjl_cq_dy.eof then
  //  begin
  //     ksrq.Caption := sp_zxjl_cq_dy.FieldByName('ksrq').Asstring;
  //     kdysmc.Caption := sp_zxjl_cq_dy.FieldByName('kdysmc').Asstring;
  //     //zxhsmc.Caption := sp_zxjl_cq_dy.FieldByName('zxhsmc').Asstring;
  //     //if ((length(sp_zxjl_cq_dy.FieldByName('xmmc').Asstring)*8) div 200)<=2 then
  //      //paper_size:=paper_size+((length(sp_zxjl_cq_dy.FieldByName('min_jlsj').Asstring)*8) div 46)
  //     //else
  //      //paper_size:=paper_size+((length(sp_zxjl_cq_dy.FieldByName('xmmc').Asstring)*8) div 200);
  //     if sp_zxjl_cq_dy.FieldByName('fzph').asstring<>'' then
  //      begin
  //      I:=(length(sp_zxjl_cq_dy.FieldByName('xmmc').Asstring)*8) div 200;
  //      qrgrimage1.enabled:=true;
  //      qrgrimage1.Top:=1;
  //      qrgrimage1.left:=ypyf.left-20;
  //      qrgrimage1.height:=i*ypyf.height;
  //      ypyf.top:= i*ypyf.height div 2;
  //      ypyf.Caption:=trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring)+'  '+trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
  //      xmmc.Width:=200;
  //      xmmc.caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring;
  //      end
  //      else
  //      begin
  //      qrgrimage1.enabled:=false;
  //       //xmmc.Width:=257;
  //       ypyf.Caption:='';
  //       xmmc.caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring+'  '+trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring)+'  '+trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
  //      end;
  ////     tzrq.Caption := sp_zxjl_cq_dy.FieldByName('tzrq').Asstring;
  ////     tzysmc.Caption := sp_zxjl_cq_dy.FieldByName('tzysmc').Asstring;
  ////     zhhsmc.Caption := sp_zxjl_cq_dy.FieldByName('zhhsmc').Asstring;
  ////     zxzxsj.Caption := sp_zxjl_cq_dy.FieldByName('min_jlsj').Asstring;
  ////     zhzxsj.Caption := sp_zxjl_cq_dy.FieldByName('max_jlsj').Asstring;
  //     sp_zxjl_cq_dy.Next;
  //
  //  end;

end;

procedure Tfrm_syddy.QuickRep1BeforePrint( Sender: TCustomQuickRep;
  var PrintReport: Boolean );
begin
  sp_zxjl_cq_dy.Filtered := False;
  sp_zxjl_cq_dy.Filter := 'yytj=''静滴''';
  sp_zxjl_cq_dy.Filtered := true;
  sp_zxjl_cq_dy.first;
end;

procedure Tfrm_syddy.SpeedButton1Click( Sender: TObject );
begin
  frm_syddy.OnShow( sender );
end;

procedure Tfrm_syddy.sp_dryzAfterOpen( DataSet: TDataSet );
begin
  if sp_dryz.RecordCount * 30 > screen.Height - 70 then
    dbgrideh2.Height := sp_dryz.RecordCount * 30
  else
    dbgrideh2.Height := screen.Height - 70;
  if sp_dryz.RecordCount < 300 then
    createrect( myrect_cx, sp_dryz, dbgrideh2, 9, 10, 13 );
end;

procedure Tfrm_syddy.sp_sybrAfterEdit(DataSet: TDataSet);
var zyh,zyh_zfc:string;
begin
//  zyh_zfc:='';
//  zyh:=sp_sybr.fieldbyname('zyh').asstring;
//  sp_sybr.first;
//  while not sp_sybr.eof  do
//  begin
//    if sp_sybr.fieldbyname('xzbz').asboolean=true then
//    begin
//      zyh_zfc:=zyh_zfc+' (zyh ='+''''+sp_sybr.fieldbyname('zyh').asstring+''''+') or ';
//    end;
//    sp_sybr.next;
//  end;
//  if zyh_zfc<>'' then
//  begin
//    zyh_zfc:= Copy(zyh_zfc,1,Length(zyh_zfc)-3);
//  end;
//  sp_dryz.Filtered := false;
//  sp_dryz.filter:=zyh_zfc;
//  sp_dryz.Filtered := true;
//  sp_sybr.Locate('zyh',zyh,[]);
end;

procedure Tfrm_syddy.sp_sybrAfterPost(DataSet: TDataSet);
var zyh_zfc,zyh:string;
begin
//  if not qb.checked then
//  begin
//    sp_dryz.Filtered := false;
//    sp_dryz.Filter := 'bch=' + #39 + sp_sybr.fieldbyname( 'bch' ).asstring + #39;
//    sp_dryz.Filtered := true;
//    if sp_dryz.Active then
//      createrect( myrect_cx, sp_dryz, dbgrideh2, 9, 10, 13 );
//
//  end
//  else
//  begin
////  if sp_sybr.FieldByName('xzbz').AsBoolean=False then
////  begin
////
////  end;
//  zyh_zfc:='';
//  zyh:=sp_sybr.fieldbyname('zyh').asstring;
//  sp_sybr.ControlsDisabled;
//  sp_sybr.first;
//  while not sp_sybr.eof  do
//  begin
//    if sp_sybr.fieldbyname('xzbz').asboolean=true then
//    begin
//      zyh_zfc:=zyh_zfc+' (zyh ='+''''+sp_sybr.fieldbyname('zyh').asstring+''''+') or ';
//    end;
//    sp_sybr.next;
//  end;
//  if zyh_zfc<>'' then
//  begin
//    zyh_zfc:= Copy(zyh_zfc,1,Length(zyh_zfc)-3);
//  end;
//  sp_dryz.Filtered := false;
//  sp_dryz.filter:=zyh_zfc;
//  sp_dryz.Filtered := true;
//  sp_sybr.EnableControls;
//  sp_sybr.Locate('zyh',zyh,[]);
//  end;

end;

procedure Tfrm_syddy.ChangePrinter;
begin
  //判断是否使用打印关联方式及取得打印机序号
  try
    v_PrinterIndex_old := Printer.PrinterIndex;
    if (pub_yydm = '0269') and Switch  then
      v_PrinterIndex_new := func_GetPrinterIndex(6,v_IsPrinterJoin)  //台山医院获取单独打印瓶签的打印机序号
    else
      v_PrinterIndex_new := func_GetPrinterIndex( 3, v_IsPrinterJoin );
//    if v_IsPrinterJoin then
//      Proc_ChangePrinter( v_PrinterIndex_new, True );
  except
  end;
  Switch := False;
end;


{-------------------------------------------------------------------------------
  过程名:    Tfrm_jydtmdy.ChangePrinter_ddyysypq
  作者:      yangshuai
  日期:      2017.09.24
  参数:      _index: Integer
  返回值:    无
-------------------------------------------------------------------------------}
procedure Tfrm_syddy.ChangePrinter_ddyysypq(_index: Integer);
begin
  //判断是否使用打印关联方式及取得打印机序号
  try
    v_PrinterIndex_old := Printer.PrinterIndex;
    v_PrinterIndex_new := func_GetPrinterIndex(_index, v_IsPrinterJoin);
    frm_zysf_print_service.v_PrinterIndex_new := func_GetPrinterIndex( _index, v_IsPrinterJoin );
//    if v_IsPrinterJoin then
//    Proc_ChangePrinter( v_PrinterIndex_new, True );
  except
  end;
end;

procedure Tfrm_syddy.ChangePrinter_syjhd;
begin
  //判断是否使用打印关联方式及取得打印机序号
  try
    v_PrinterIndex_old := Printer.PrinterIndex;
    v_PrinterIndex_new := func_GetPrinterIndex( 5, v_IsPrinterJoin );
    frm_zysf_print_service.v_PrinterIndex_new := func_GetPrinterIndex( 5, v_IsPrinterJoin );
//    if v_IsPrinterJoin then
//      Proc_ChangePrinter( v_PrinterIndex_new, True );
      //ShowMessage(Printer.Printers[v_PrinterIndex_new]);
  except
  end;

end;

procedure Tfrm_syddy.ChangePrinter_sybq;
begin
  //判断是否使用打印关联方式及取得打印机序号
  try
    v_PrinterIndex_old := Printer.PrinterIndex;
    v_PrinterIndex_new := func_GetPrinterIndex( 3, v_IsPrinterJoin );
    frm_zysf_print_service.v_PrinterIndex_new := func_GetPrinterIndex( 3, v_IsPrinterJoin );
//    if v_IsPrinterJoin then
//      Proc_ChangePrinter( v_PrinterIndex_new, True );
      //ShowMessage(Printer.Printers[v_PrinterIndex_new]);
  except
  end;

end;

procedure Tfrm_syddy.RevertPrinter;
begin
  //还原原来默认打印机
  try
    if v_IsPrinterJoin then
      Proc_ChangePrinter( v_PrinterIndex_old, True );
  except
  end;
end;

procedure Tfrm_syddy.QR3ShaYaOfficeBed;  //quickRep3沙雅格式 显示科室 病床号 姓名 之前：床号 姓名 年龄
begin
  if formatdatetime( 'yyyymmdd', frm_func.curr_date ) > formatdatetime( 'yyyymmdd', dt_zxsj.date ) then
  begin
    if pub_yydm <> '0240' then begin
      frm_print_sybq.bch.Caption := sp_sybr.fieldbyname( 'bch' ).asstring + '(★)';
      frm_print_sybq.bch1.Caption := sp_sybr.fieldbyname( 'bch' ).asstring + '床(★)';
    end else begin
      frm_print_sybq.bch.Caption := pub_ksmc + EraseHeadZeros(sp_sybr.fieldbyname( 'bch' ).asstring) + '(★)';
      frm_print_sybq.bch1.AutoSize := True;
      frm_print_sybq.bch1.Caption := pub_ksmc + '  ' + EraseHeadZeros(sp_sybr.fieldbyname( 'bch' ).asstring) + '床(★)';
      frm_print_sybq.brxm1.Left := frm_print_sybq.bch1.Left + frm_print_sybq.bch1.Width;
    end;
  end
  else
  begin
    if pub_yydm <> '0240' then begin
      frm_print_sybq.bch.Caption := sp_sybr.fieldbyname( 'bch' ).asstring;
      frm_print_sybq.bch1.Caption := sp_sybr.fieldbyname( 'bch' ).asstring + '床';
    end else begin
      frm_print_sybq.bch.Caption := pub_ksmc + EraseHeadZeros(sp_sybr.fieldbyname( 'bch' ).asstring);
      frm_print_sybq.bch1.Font.Size := 7;
      frm_print_sybq.bch1.AutoSize := True;
      frm_print_sybq.bch1.Caption := pub_ksmc + '  ' + EraseHeadZeros(sp_sybr.fieldbyname( 'bch' ).asstring) + '床 ';
      frm_print_sybq.brxm1.Left := frm_print_sybq.bch1.Left + frm_print_sybq.bch1.Width;
      frm_print_sybq.brxm1.AutoSize := True;
      frm_print_sybq.brxm1.Font.Size := 7;
      frm_print_sybq.brxm1.Caption := Trim(sp_sybr.fieldbyname( 'brxm' ).asstring);
  //    frm_print_sybq.qr_pl.caption := TRIM(frm_print_sybq.sp_syfz.FieldByName( 'ypyf' ).AsString);//频率
    end;
  end;
  if pub_yydm='0269' then
  begin
      zyks.Close;
      zyks.sql.Text:='select b.mc as mc from zysf_zydj a left join sys_ksdm b on a.ksdm=b.dm where tmh='+''''+trim(sp_dryz.fieldbyname( 'tmh' ).asstring)+''''+'';
      zyks.Open;
      frm_print_sybq.ryks.Caption:=Trim(zyks.FieldByName('mc').AsString);
      frm_print_sybq.tmh.Caption:=trim(sp_dryz.fieldbyname( 'tmh' ).asstring);
      
  end;
end;

procedure Tfrm_syddy.QR3DisplayAge; //沙雅不显示病床号
begin
  if pub_yydm = '0240' then
  begin
    frm_print_sybq.brnl1.Caption := '';
    frm_print_sybq.brnl1.Visible := False;
    frm_print_sybq.brnl1.Left := 160;
  end
  else
    frm_print_sybq.brnl1.Caption := sp_sybr.fieldbyname( 'brnl' ).asstring;
end;

{-------------------------------------------------------------------------------
  过程名:    Tfrm_syddy.PrintInfusionPatrolCards
  作者:      molin
  日期:      2015.04.05
  参数:      ltst: TCQLS //clLongTerm 长期 clTemporary 临时
  返回值:    无
-------------------------------------------------------------------------------}
procedure Tfrm_syddy.PrintSYXSK(ltst: TCQLS; zyh: string='');
var
  v_yytj, v_lb, filter,cqls: string;
begin
  case ltst of
    clLongTerm: cqls:='长期';
    clTemporary: cqls:='临时';
    clAll: cqls:='%';
  end;

{  with sp_syd do
  begin
    Filtered := False;
    Close;
    Parameters.Refresh;
    Parameters.ParamByName( '@zyh' ).Value := trim(zyh);
    Parameters.ParamByName( '@bqdm' ).Value := pub_bqdm;
    Parameters.ParamByName( '@zxsj' ).Value := Frm_func.curr_date;
    Parameters.ParamByName( '@bz' ).Value := cqls;
    Open;
  end;   }

//  v_yytj := Get_dytjsz(ltst); //加载需要打印用药途径
//  v_lb   := Get_dylbsz(ltst); //加载需要打印的类别
//  if v_yytj + v_lb = '' then
//  begin
//    filter := ' 1<>1 ';
//  end
//  else if ltst=clTemporary then
//  begin
//    filter := v_yytj + v_lb + ' ( xmmc like ''%皮试%'' and  kdrq>=' + ''''
//              + formatdatetime( 'yy-MM-dd', frm_func.curr_date ) + ' 00:00'+''')'
//              + ' or '+ ' ( xmmc like ''%敏试%'' and  kdrq>=' + ''''
//              + formatdatetime( 'yy-MM-dd', frm_func.curr_date ) + ' 00:00'+''')';
//  end;

//  sp_syd.Filter := filter;
//  sp_syd.Filtered := True;
{  if sp_syd.IsEmpty then
  begin
    Application.MessageBox('该病人当天没有输液计划！','提示',0+48);
    Exit;
  end; }
 // ChangePrinter_syjhd;
 // frm_zysf_print_service.PrintCQLSSYXSK(sp_syd, FormatDateTime('yyyy-MM-dd',dt_zxsj.DateTime),ltst);
  DM_data.qry_pub.SQL.text:='insert into zybl_zyyz_syddy(yzid,dyrq) ' +
    'select id,' + '''' + FormatDateTime('yyyyMMdd',dt_zxsj.DateTime) + '''' +
    ' from zybl_zyyz where zxbz=1 and zyh=''' + Trim( sp_sybr.fieldbyname( 'zyh' ).asstring ) +
    ''' and yzsx='''+cqls+''' and convert(varchar,kdrq,112)=''' + FormatDateTime('yyyyMMdd',dt_zxsj.DateTime) +
    ''' and id not in (select yzid from zybl_zyyz_syddy where dyrq=''' +
    FormatDateTime('yyyyMMdd',dt_zxsj.DateTime) +''')';
  DM_data.qry_pub.ExecSQL;

end;

{-------------------------------------------------------------------------------
  过程名:    Tfrm_syddy.Get_dytjsz
  作者:      molin
  日期:      2015.04.05
  参数:      ltst:TCQLS
  返回值:    string 需要打印的途径
-------------------------------------------------------------------------------}
function Tfrm_syddy.Get_dytjsz(ltst:TCQLS):string;
var
  str:string;
begin
  DM_data.qry_pub.close;
  DM_data.qry_pub.sql.text := 'select yytj from zybl_zyyz_dytjsz where dyxm=''输液计划单''';
  DM_data.qry_pub.Open;
  Result := '';
  if ltst=clLongTerm then str:= '长期' else str:= '临时';
  if not DM_data.qry_pub.IsEmpty then
  begin
    DM_data.qry_pub.First;
    while not DM_data.qry_pub.eof do
    begin
      Result := Result + '(yytj=' + '''' + DM_data.qry_pub.FieldByName( 'yytj' ).asstring
                + '''' + ' and yzsx=''' + str + ''') or ';(* and kdks=' + '''' + pub_ksdm +
                ''')' + ' or ';*)
      DM_data.qry_pub.Next;
    end;
  end;
end;

{-------------------------------------------------------------------------------
  过程名:    Tfrm_syddy.Get_dylbsz
  作者:      molin
  日期:      2015.04.05
  参数:      ltst:TCQLS
  返回值:    string 需要打印的类别
-------------------------------------------------------------------------------}
function Tfrm_syddy.Get_dylbsz(ltst:TCQLS):string;
var
  str: string;
begin
  DM_data.qry_pub.close;
  DM_data.qry_pub.sql.text := 'select lbmc from zybl_zyyz_dylbsz where dyxm=''输液计划单''';
  DM_data.qry_pub.Open;
  Result := '';
  if ltst=clLongTerm then str:= '长期' else str:= '临时';
  if not DM_data.qry_pub.IsEmpty then
  begin
    DM_data.qry_pub.First;
    while not DM_data.qry_pub.eof do
    begin
      Result := Result + '(lb=' + '''' + DM_data.qry_pub.FieldByName( 'lbmc' ).asstring
                + '''' + ' and yzsx=''' + str + ''') or ';(* and kdks=' + '''' + pub_ksdm +
                ''')' + ' or ';*)
      DM_data.qry_pub.Next;
    end;
  end;
end;

procedure Tfrm_syddy.ShayaStyle;
begin
  if pub_yydm = HN_SYRMYY then
  begin
    Button8.Caption := '全部长期输液卡';
    Button8.Font.Size := 12;
    Button8.Font.Style := [fsBold];
    Button9.Caption := '全部临时输液卡';
    Button9.Font.Size := 12;
    Button9.Font.Style := [fsBold];
    Button10.Caption := '指定病人长期输液卡';
    Button10.Font.Size := 12;
    Button10.Font.Style := [fsBold];
    Button11.Caption := '指定病人临时输液卡';
    Button11.Font.Size := 12;
    Button11.Font.Style := [fsBold];
  end;
end;
procedure Tfrm_syddy.tsyyStyle;  //台山医院打印格式
begin
  frm_print_sybq.brnl1.Free;
  frm_print_sybq.dyrq1.Font.Size:=10;
  frm_print_sybq.dyrq1.Top:=16;
  frm_syddy.zyks.Close;
  frm_syddy.zyks.SQL.Clear;
  frm_syddy.zyks.sql.Text:='select convert(char(10),getdate(),121) as time';
  frm_syddy.zyks.Open;
  frm_print_sybq.dyrq1.caption:='时间:'+trim(frm_syddy.zyks.FieldByName('time').AsString);
  frm_print_sybq.dyrq1.left:=158;
  frm_print_sybq.qmby.Top:=16;
  frm_print_sybq.qmby.left:=8;
  frm_print_sybq.qmpy.Top:=16;
  frm_print_sybq.qmpy.left:=58;
  frm_print_sybq.qmhd.Top:=16;
  frm_print_sybq.qmhd.left:=108;
  frm_print_sybq.ryks.left:=15;
  frm_print_sybq.ryks.Top:=8;
  frm_print_sybq.bch1.left:=85;
  frm_print_sybq.bch1.Top:=8;
  frm_print_sybq.brxm1.Left:=135;
  frm_print_sybq.brxm1.Top:=8;
  frm_print_sybq.tmh.Left:=190;
  frm_print_sybq.tmh.Top:=8;
  frm_print_sybq.yf.Left:=210;
  frm_print_sybq.yf.Font.Size:=11;
  frm_print_sybq.yf.Top:=2;
  frm_print_sybq.xmmc1.Top:=20;
  frm_print_sybq.xmmc1.Font.Size:=10;
  frm_print_sybq.xmmc1.Left:=8;
  frm_print_sybq.qr_yytj.Left:=60;
  frm_print_sybq.qr_pl.Left:=100;
  frm_print_sybq.qr_sm.Left:=155;
  frm_print_sybq.QuickRep3.Page.Length:=42;
  frm_print_sybq.QuickRep3.Page.Width:=70;
  frm_print_sybq.bch1.Font.Size:=11;
  frm_print_sybq.ryks.Font.Size:=11;
  frm_print_sybq.brxm1.Font.Size:=11;
  frm_print_sybq.tmh.Font.Size:=11;
  frm_print_sybq.qr_sm.Font.Size:=9;
  frm_print_sybq.qr_yytj.Font.Size:=9;
  frm_print_sybq.qr_pl.Font.Size:=9;
end;

end.

