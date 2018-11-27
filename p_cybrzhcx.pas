unit p_cybrzhcx;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Buttons, Db, DBTables, Grids, DBGrids, ComCtrls,
  ADODB, Mask, DBCtrls, QuickRpt, Qrctrls, DBGridEh, GridsEh, DateUtils,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit,
  cxDBData, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxControls, cxGridCustomView, cxGrid,p_Makvar_zysf,
  Menus, cxLookAndFeelPainters, cxButtons, cxContainer, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar,ToolCtrlsEh, DBGridEhGrouping;
type
  Tfrm_cybrzhcx = class( TForm )
    qry_bafy: TADOQuery;
    Panel1: TPanel;
    Label14: TLabel;
    tmh: TEdit;
    b_close: TBitBtn;
    Panel2: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label15: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    DBEdit1: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit2: TDBEdit;
    ysxje: TEdit;
    ytxje: TEdit;
    DBEdit4: TDBEdit;
    cyrq: TDateTimePicker;
    sbzfze: TEdit;
    sbtcze: TEdit;
    yjze: TEdit;
    zfy: TEdit;
    b_jsqd: TBitBtn;
    Panel3: TPanel;
    sp_sebrqk: TADOStoredProc;
    ds_sebrqk: TDataSource;
    ds_yjmxcx: TDataSource;
    sp_yjmxcx: TADOStoredProc;
    sp_fymx: TADOStoredProc;
    ds_fymx: TDataSource;
    ds_tj_fydl: TDataSource;
    SP_yymx: TADOStoredProc;
    DS_yymx: TDataSource;
    DBGrid3: TDBGrid;
    Label13: TLabel;
    DBEdit7: TDBEdit;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    ColumnHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    PageHeaderBand1: TQRBand;
    QRShape1: TQRShape;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    yymc: TQRLabel;
    QRLabel9: TQRLabel;
    ksmc: TQRLabel;
    tmh1: TQRLabel;
    QRLabel11: TQRLabel;
    brxm: TQRLabel;
    QRLabel12: TQRLabel;
    qzsj: TQRLabel;
    SummaryBand1: TQRBand;
    QRLabel14: TQRLabel;
    QRLabel18: TQRLabel;
    QRGroup1: TQRGroup;
    QRBand1: TQRBand;
    SP_yymxcfbh: TStringField;
    SP_yymxypdm: TStringField;
    SP_yymxypmc: TStringField;
    SP_yymxypgg: TStringField;
    SP_yymxypdw: TStringField;
    SP_yymxypsl: TBCDField;
    SP_yymxypdj: TBCDField;
    SP_yymxcfje: TBCDField;
    SP_yymxsfjlyp: TBooleanField;
    SP_yymxsfylyp: TBooleanField;
    SP_yymxhjrq: TDateTimeField;
    SP_yymxjylyp: TStringField;
    sp_cx_fydl: TADOStoredProc;
    QRBand3: TQRBand;
    QRBand2: TQRBand;
    QRLabel10: TQRLabel;
    brxm1: TQRLabel;
    QRLabel19: TQRLabel;
    tmh2: TQRLabel;
    QRSysData2: TQRSysData;
    QRLabel21: TQRLabel;
    TabSheet5: TTabSheet;
    sp_zyyymx: TADOStoredProc;
    ds_zyyymx: TDataSource;
    QuickRep2: TQuickRep;
    QRBand4: TQRBand;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRBand5: TQRBand;
    QRLabel15: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRBand6: TQRBand;
    QRShape2: TQRShape;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    yymc3: TQRLabel;
    QRLabel32: TQRLabel;
    ksmc3: TQRLabel;
    tmh3: TQRLabel;
    QRLabel35: TQRLabel;
    brxm3: TQRLabel;
    QRLabel37: TQRLabel;
    qzsj3: TQRLabel;
    QRBand7: TQRBand;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRGroup2: TQRGroup;
    QRBand8: TQRBand;
    QRBand9: TQRBand;
    QRBand10: TQRBand;
    QRLabel41: TQRLabel;
    brxm4: TQRLabel;
    QRLabel43: TQRLabel;
    tmh4: TQRLabel;
    QRSysData4: TQRSysData;
    QRLabel45: TQRLabel;
    QRLabel30: TQRLabel;
    QRDBText17: TQRDBText;
    sp_cx_fydlid: TAutoIncField;
    sp_cx_fydlsjbh: TStringField;
    sp_cx_fydlzyh: TStringField;
    sp_cx_fydlkmmc: TStringField;
    sp_cx_fydlkmdm: TStringField;
    sp_cx_fydlfyje: TBCDField;
    sp_cx_fydlzkje: TBCDField;
    sp_cx_fydlzfje: TBCDField;
    sp_cx_fydlssje: TBCDField;
    sp_cx_fydljsbz: TBooleanField;
    sp_cx_fydljylyp: TStringField;
    sp_zyyymxcfbh: TStringField;
    sp_zyyymxypdm: TStringField;
    sp_zyyymxypmc: TStringField;
    sp_zyyymxypgg: TStringField;
    sp_zyyymxypdw: TStringField;
    sp_zyyymxypsl: TBCDField;
    sp_zyyymxypdj: TBCDField;
    sp_zyyymxcfje: TBCDField;
    sp_zyyymxsfjlyp: TBooleanField;
    sp_zyyymxsfylyp: TBooleanField;
    sp_zyyymxhjrq: TDateTimeField;
    sp_zyyymxcfjl: TIntegerField;
    sp_zyyymxjylyp: TStringField;
    BitBtn1: TBitBtn;
    QuickRep3: TQuickRep;
    QRBand11: TQRBand;
    bt: TQRLabel;
    QRBand12: TQRBand;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    brnl: TQRLabel;
    rcysj: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRDBText21: TQRDBText;
    QRLabel46: TQRLabel;
    QRSubDetail1: TQRSubDetail;
    dl01: TQRLabel;
    dl02: TQRLabel;
    dl03: TQRLabel;
    dl04: TQRLabel;
    dl05: TQRLabel;
    dl06: TQRLabel;
    dl07: TQRLabel;
    dl08: TQRLabel;
    QRBand13: TQRBand;
    QRLabel36: TQRLabel;
    QRLabel50: TQRLabel;
    QRLabel51: TQRLabel;
    QRLabel52: TQRLabel;
    QRLabel53: TQRLabel;
    DBGridEh1: TDBGridEh;
    DBGridEh2: TDBGridEh;
    DBGridEh3: TDBGridEh;
    BitBtn2: TBitBtn;
    SP_yymxyplb: TStringField;
    ds_zkzc: TDataSource;
    qry_zkzc: TADOQuery;
    GroupBox1: TGroupBox;
    g_tj: TDBGridEh;
    GroupBox2: TGroupBox;
    DBGridEh4: TDBGridEh;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    cxgrd1: TcxGrid;
    cxgrdbtblvwGrid1DBTableView1: TcxGridDBTableView;
    cxgrdbtblvwGrid1DBTableView1sfrq: TcxGridDBColumn;
    cxgrdbtblvwGrid1DBTableView1fymc: TcxGridDBColumn;
    cxgrdbtblvwGrid1DBTableView1fyje: TcxGridDBColumn;
    cxgrdbtblvwGrid1DBTableView1zfje: TcxGridDBColumn;
    cxgrdbtblvwGrid1DBTableView1mc: TcxGridDBColumn;
    cxgrdlvlGrid1Level1: TcxGridLevel;
    qry_jsxx: TADOQuery;
    ds_jsxx: TDataSource;
    DBGrid1: TDBGrid;
    qry_jsxxjsdh: TStringField;
    qry_jsxxsjbh: TStringField;
    qry_jsxxjsrq: TDateTimeField;
    qry_jsxxjsczy: TStringField;
    qry_jsxxzfje: TBCDField;
    qry_jsxxytje: TBCDField;
    qry_jsxxybje: TBCDField;
    qry_jsxxyxbz: TStringField;
    qry_jsxxsqfbz: TStringField;
    sp_fyhz: TADOStoredProc;
    sp_yyhz: TADOStoredProc;
    chk1: TCheckBox;
    chksfarqpx: TCheckBox;
    strngfldSP_yymxbxsm: TStringField;
    strngfld_zyyymxbxsm: TStringField;
    Label1: TLabel;
    jszt: TEdit;
    Label2: TLabel;
    dhhm: TEdit;
    Label16: TLabel;
    DBEdit13: TDBEdit;
    TabSheet6: TTabSheet;
    PageControl3: TPageControl;
    TabSheet10: TTabSheet;
    DBGrid2: TDBGrid;
    DBGrid4: TDBGrid;
    TabSheet11: TTabSheet;
    DBGrid7: TDBGrid;
    DBGrid6: TDBGrid;
    sp_cx_cf: TADOStoredProc;
    sp_cx_cftmh: TStringField;
    sp_cx_cfzyh: TStringField;
    sp_cx_cfcfbh: TStringField;
    sp_cx_cfcfzje: TBCDField;
    sp_cx_cfhjks: TStringField;
    sp_cx_cfhjrq: TDateTimeField;
    sp_cx_cfksmc: TStringField;
    sp_cx_cfysmc: TStringField;
    sp_cx_cfhjczy: TStringField;
    ds_cf: TDataSource;
    ds_cfmx: TDataSource;
    sp_cx_cfmx: TADOStoredProc;
    sp_cx_cfmxcfbh: TStringField;
    sp_cx_cfmxxh: TIntegerField;
    sp_cx_cfmxypdm: TStringField;
    sp_cx_cfmxypdwid: TIntegerField;
    sp_cx_cfmxypdw: TStringField;
    sp_cx_cfmxypbzbl: TIntegerField;
    sp_cx_cfmxypsl: TBCDField;
    sp_cx_cfmxypdj: TBCDField;
    sp_cx_cfmxkccgj: TBCDField;
    sp_cx_cfmxyplb: TStringField;
    sp_cx_cfmxypmc: TStringField;
    sp_cx_cfmxypje: TBCDField;
    sp_cx_cfmxypmc1: TStringField;
    sp_cx_cfmxypgg: TStringField;
    sp_zycfzb: TADOStoredProc;
    ds_zycfzb: TDataSource;
    sp_cx_zycfmx: TADOStoredProc;
    ds_zymx: TDataSource;
    Button1: TButton;
    lbl_brdz: TLabel;
    dbedt_brdz: TDBEdit;
    Panel4: TPanel;
    Label17: TLabel;
    Label20: TLabel;
    Button2: TButton;
    cxDateEdit1: TcxDateEdit;
    cxDateEdit2: TcxDateEdit;
    cxButton1: TcxButton;
    lbl1: TLabel;
    DBEdit_bah: TDBEdit;
    lbl_yhje: TLabel;
    edt_yhje: TEdit;
    sp_zdybb_cx_brfyqdfy: TADOStoredProc;
    sp_zdybb_cx_brfyqdyp: TADOStoredProc;
    procedure FormKeyDown( Sender: TObject; var Key: Word;
      Shift: TShiftState );
    procedure tmhKeyPress( Sender: TObject; var Key: Char );
    procedure tmhExit( Sender: TObject );
    procedure b_closeClick( Sender: TObject );
    procedure b_jsqdClick( Sender: TObject );
    procedure proc_getbyxx;
    procedure proc_getbyxx_js;
    procedure DBGrid3KeyPress( Sender: TObject; var Key: Char );
    procedure DBGrid3Exit( Sender: TObject );
    procedure qzsjPrint( sender: TObject; var Value: string );
    procedure FormKeyPress( Sender: TObject; var Key: Char );
    procedure sp_zyyymxCalcFields( DataSet: TDataSet );
    procedure FormShow( Sender: TObject );
    procedure BitBtn1Click( Sender: TObject );
    procedure brnlPrint( sender: TObject; var Value: string );
    procedure rcysjPrint( sender: TObject; var Value: string );
    procedure QRLabel46Print( sender: TObject; var Value: string );
    procedure QRSubDetail1NeedData( Sender: TObject; var MoreData: Boolean );
    procedure QRDBText4Print( sender: TObject; var Value: string );
    procedure QuickRep3BeforePrint( Sender: TCustomQuickRep;
      var PrintReport: Boolean );
    procedure g_tjTitleBtnClick( Sender: TObject; ACol: Integer;
      Column: TColumnEh );
    procedure g_tjDblClick( Sender: TObject );
    procedure BitBtn2Click( Sender: TObject );
    procedure DBGrid1Exit( Sender: TObject );
    procedure DBGrid1KeyPress( Sender: TObject; var Key: Char );
    procedure sp_cx_cfAfterScroll(DataSet: TDataSet);
    procedure sp_zycfzbAfterScroll(DataSet: TDataSet);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    zy_zyh: string; //住院号
    zy_jsdh: string; //病人结算单据号
    zy_tmh: string; //条码号
    zy_fylb: string; //病人费用类别
    zy_ksmc: string; //科室名称
    zy_ryrq: Tdatetime; //入院日期
    zy_syyj: real; //剩余押金
    zy_yjze: real; //押金总额
    zy_sjyjze:real;//实际预交总额
    zy_zfy: real; //费用总额
    zy_zfze: real; //自费总额
    zy_ytje: real; //应退金额
    zy_ybje: real; //应补金额
    zy_stje: real; //实退金额
    zy_sbje: real; //实补金额
    zy_fybz: string; // 1:欠费 2:退费 3:无欠退
    zy_sbzfje: real; //社保病人自费金额
    zy_sbtcje: real; //社保病人统筹金额
    zy_brxm: string; //病人姓名
    zy_brdz: string; //病人地址
    zy_ksdm: string; //科室代码
    zy_yjcs: integer; //押金次数
    zy_yjbz: boolean; //押金标志
    zy_cyrq: tdatetime; //出院结算日期
    zy_sjbh: string; //出院结算收据编号
    { Public declarations }
  end;

var
  frm_cybrzhcx: Tfrm_cybrzhcx;
  jylyp: boolean;
  ccyrq:string;
implementation
uses p_login, p_dm, p_func, p_repo_bryjmx, p_repo_brfymx,
  p_repo_cxbatj, p_repo_cybrfymxcx, p_repo_cybatjcx, p_repo_cyyymxcx,
  p_print_fymx, p_repo_fymxhz, p_print_fymx_mx, p_fydl_fymx, p_zysf_print_service,
  p_print_fymx_hz;
{$R *.DFM}

procedure Tfrm_cybrzhcx.FormKeyDown( Sender: TObject; var Key: Word;
  Shift: TShiftState );
begin
  if key = VK_ESCAPE then close;
end;

procedure Tfrm_cybrzhcx.tmhKeyPress( Sender: TObject; var Key: Char );
begin
  if key = #13 then b_jsqd.SetFocus;
end;

procedure Tfrm_cybrzhcx.tmhExit( Sender: TObject );
begin
  if not b_close.Focused then
  begin
    if (''<>Trim(tmh.text)) and IsNumberic(tmh.text) then
    begin
      if LengthOfCardNo >= Length(Trim(tmh.text)) then
        tmh.text := formatex( strtoint( tmh.text ), LengthOfCardNo );
    end;

    zy_tmh := trim( tmh.text );

    with dm_data.qry_pub do
    begin
      Close;
      SQL.clear;
      SQL.Text := 'select zydj.tmh,zydj.zyh,zydj.zdjf,zydj.jsbz,' +
        ' zydj.brxm,fylb.yjbz,zydj.cybz,zydj.brdz,ksdm.mc,zydj.bah ' +
        ' from zysf_cydj zydj,sys_fylb fylb,sys_ksdm ksdm ' +
        ' where zydj.fylb=fylb.dm and zydj.ksdm=ksdm.dm ' +
        ' and zydj.tmh<>' + #39 + '000000001' + #39 + ' and ' +
        '(zydj.tmh=' + #39 + zy_tmh + #39 +
        ' or zydj.bah='+ #39 + zy_tmh + #39 +
        ' or zydj.pym like ' +
        #39 + '%' + zy_tmh + '%' + #39 + ' or zydj.brxm like ' +
        #39 + '%' + zy_tmh + '%' + #39 + ')';

      open;
    end;
    if dm_data.qry_pub.IsEmpty then
    begin
      application.MessageBox( '无此此卡号,或病人未出院！', '提示', 0 + 16 );
      tmh.SetFocus;
      tmh.SelectAll;
      abort;
    end
    else                                                                    
    begin
      if dm_data.qry_pub.RecordCount = 1 then
        proc_getbyxx
      else
      begin
        dbgrid3.left := tmh.left;
        dbgrid3.top := tmh.top + tmh.height;
        dbgrid3.Visible := true;
        dbgrid3.SetFocus;
      end
    end;
  end;
end;

procedure Tfrm_cybrzhcx.proc_getbyxx;
begin
  zy_brdz := dm_data.Qry_pub.FieldByName( 'brdz' ).asstring;
  zy_zyh := dm_data.qry_pub.FieldByName( 'zyh' ).asstring;
  zy_tmh := dm_data.qry_pub.FieldByName( 'tmh' ).asstring;
  sp_sebrqk.Active := false;
  sp_sebrqk.parameters.ParamByName( '@zyh' ).value := zy_zyh;
  sp_sebrqk.Open;
  qry_jsxx.Close;
  qry_jsxx.Parameters.ParamByName( 'tmh' ).Value := zy_tmh;
  qry_jsxx.Open;
  if qry_jsxx.RecordCount = 1 then
  begin
    proc_getbyxx_js;
  end
  else
    if qry_jsxx.RecordCount > 1 then
    begin
      dbgrid1.left := tmh.left;
      dbgrid1.top := tmh.top + tmh.height;
      dbgrid1.Visible := true;
      dbgrid1.SetFocus;
    end
    else
    begin
      application.MessageBox( '没有查询到此病人的结算单号！', '提示', 0 + 16 );
      tmh.SetFocus;
      tmh.SelectAll;
      abort;
    end;
end;

procedure Tfrm_cybrzhcx.proc_getbyxx_js;
begin
  if qry_jsxx.fieldbyname( 'zfje' ).asfloat = 0 then
    zy_zfze := sp_sebrqk.fieldbyname( 'zfze' ).asfloat
  else
    zy_zfze := qry_jsxx.fieldbyname( 'zfje' ).asfloat;
  zy_ybje := qry_jsxx.fieldbyname( 'ybje' ).asfloat;
  zy_ytje := qry_jsxx.fieldbyname( 'ytje' ).asfloat;
  zy_cyrq := qry_jsxx.fieldbyname( 'jsrq' ).asdatetime;
  zy_sjbh := qry_jsxx.fieldbyname( 'sjbh' ).asstring;
  zy_jsdh := qry_jsxx.FieldByName( 'jsdh' ).asstring;
  cyrq.DateTime := sp_sebrqk.fieldbyname( 'cyrq' ).asdatetime;
  zy_fylb := sp_sebrqk.fieldbyname( 'fylb' ).asstring;
  zy_yjbz := sp_sebrqk.fieldbyname( 'yjbz' ).asboolean;
  zy_syyj := sp_sebrqk.fieldbyname( 'syyj' ).asfloat;
  zy_zfy := sp_sebrqk.fieldbyname( 'zfy' ).asfloat;
  zy_yjze := sp_sebrqk.fieldbyname( 'yjze' ).asfloat;
  zy_sjyjze := sp_sebrqk.fieldbyname( 'sjyjze' ).asfloat;
  zy_ryrq := sp_sebrqk.fieldbyname( 'ryrq' ).asdatetime;
  zy_ksmc := sp_sebrqk.fieldbyname( 'ksmc' ).asstring;
  zy_ksdm := sp_sebrqk.fieldbyname( 'ksdm' ).asstring;
  zy_brxm := sp_sebrqk.fieldbyname( 'brxm' ).asstring;
  GroupBox2.Caption := '转科转床信息(主管医生:' + Trim( sp_sebrqk.FieldByName( 'ysxm' ).AsString ) + ')';
  yjze.Text := floattostr( zy_sjyjze );
  DM_data.qry_pub.close;
  DM_data.qry_pub.SQL.Text:='select * from zysf_cyjs where zyh='+''''+zy_zyh+'''';
  DM_data.qry_pub.Open;
  if DM_data.qry_pub.FieldByName('qfjsbz').AsBoolean=true then
  begin
    jszt.Text:='欠费结算';
  end
  else if DM_data.qry_pub.FieldByName('ztjsbz').AsBoolean=true then
  begin
    jszt.Text:='中途结算';
  end
  else
  begin
    jszt.Text:='出院结算';
  end;
  DM_data.qry_pub.close;
  DM_data.qry_pub.SQL.Text:='select * from zysf_cydj where zyh='+''''+zy_zyh+'''';
  DM_data.qry_pub.Open;
  dhhm.text:=Trim(DM_data.qry_pub.FieldByName('nxrdh').AsString);
  zfy.Text := floattostr( zy_zfy );
  sbzfze.text := floattostr( zy_zfze );
  sbtcze.text := floattostr( zy_zfy - zy_zfze );
//总预交应该取 zysf_cydj表里的实际预交总额sjyjze，如果是zfy>sjyjze,
//那么应收现应该填zfy-sjyjze。应退现填0.   //
//如果是zfy<sjyjze,
//那么应退现应该填sjyjze-zfy,应收现填0
  if zy_zfy>zy_sjyjze then
    begin
       zy_ybje := zy_zfy - zy_sjyjze;
       zy_ytje := 0;
    end
  else
    begin
       zy_ybje := 0;
       zy_ytje := zy_sjyjze - zy_zfy;
    end;
  //ysxje.Text := floattostr( zy_ybje );
  //ytxje.Text := floattostrF( zy_ytje );
  //ytxje.Text := Formatfloat('.00',strtofloat(Formatfloat('.00',23.89023482)));
  ysxje.Text := Formatfloat('0.00',zy_ybje );
  ytxje.Text := Formatfloat('0.00',zy_ytje );
  //转科室转床信息
  qry_zkzc.Close;
  qry_zkzc.SQL.clear;
  qry_zkzc.SQL.Text:='select a.*,b.mc yksmc,c.mc xksmc,d.mc czymc,e.jsrq jsrq,f.mc czjsmc '+
                     'from zysf_cyzkzc a '+
                     'left join sys_ksdm b on a.ykbh=b.dm '+
                     'left join sys_ksdm c on a.xkbh=c.dm '+
                     'left join sys_czy d  on a.czydm=d.dm '+
                     'right join zysf_cyjs e on a.zyh=e.zyh '+
                     'right join sys_czy f on f.dm=e.jsczy '+
                     'where a.zyh='+''''+zy_zyh+'''';
 // qry_zkzc.Parameters.ParamByName( 'zyh' ).Value := zy_zyh;
  qry_zkzc.Open;
  //---------------------------------------------
  sp_yjmxcx.Active := false;
  sp_yjmxcx.parameters.ParamByName( '@zyh' ).value := zy_zyh;
  sp_yjmxcx.parameters.ParamByName( '@jsrq' ).value := zy_cyrq;
  sp_yjmxcx.Open;
  zy_yjcs := sp_yjmxcx.fieldbyname( 'yjcs' ).asinteger;
  sp_fymx.Active := false;
  sp_fymx.parameters.ParamByName( '@zyh' ).value := zy_zyh;
  sp_fymx.parameters.ParamByName( '@jsrq' ).value := zy_cyrq;
  sp_fymx.Open;
  sp_cx_fydl.Close;
  sp_cx_fydl.parameters.ParamByName( '@zyh' ).value := zy_zyh;
  sp_cx_fydl.parameters.ParamByName( '@sjbh' ).value := zy_sjbh;
  sp_cx_fydl.open;
  qry_bafy.Active := false;
  qry_bafy.parameters.ParamByName( 'zy_zyh' ).value := zy_zyh;
  qry_bafy.parameters.ParamByName( 'sjbh' ).value := zy_sjbh;
  qry_bafy.open;
  SP_yymx.close;
  SP_yymx.Parameters.ParamByName( '@zyh' ).value := zy_zyh;
  SP_yymx.Parameters.ParamByName( '@jsdh' ).value := '';
  SP_yymx.Parameters.ParamByName( '@jsrq' ).value := zy_cyrq;
  SP_yymx.Parameters.ParamByName( '@sfsb' ).value := 1;
  jylyp := true;
  if ( sp_sebrqk.fieldbyname( 'fylb' ).asstring <> '03' ) or ( pub_yydm = '0098' ) then
    if application.MessageBox( '是否区分甲乙类药品？', '询问', MB_YESNO + MB_ICONQUESTION ) = IDNO then
    begin
      SP_yymx.Parameters.ParamByName( '@sfsb' ).value := 0;
      jylyp := false;
    end;
  SP_yymx.Parameters.ParamByName( '@lb' ).value := 3;
  SP_yymx.open;

  SP_zyyymx.close;
  SP_zyyymx.Parameters.ParamByName( '@zyh' ).value := zy_zyh;
  SP_zyyymx.Parameters.ParamByName( '@jsdh' ).value := '';
  if jylyp then
    SP_zyyymx.Parameters.ParamByName( '@sfsb' ).value := 1
  else
    SP_zyyymx.Parameters.ParamByName( '@sfsb' ).value := 0;
  SP_zyyymx.Parameters.ParamByName( '@jsrq' ).value := zy_cyrq;
  SP_zyyymx.Parameters.ParamByName( '@lb' ).value := 3;
  SP_zyyymx.open;

  sp_cx_cf.close;
  sp_cx_cf.parameters.Refresh;
  sp_cx_cf.parameters.ParamByName( '@zyh' ).value := zy_zyh;
  sp_cx_cf.parameters.ParamByName( '@cy' ).value := '出院';
  sp_cx_cf.open;

  sp_zycfzb.close;
  sp_zycfzb.parameters.Refresh;
  sp_zycfzb.parameters.ParamByName( '@zyh' ).value := zy_zyh;
  sp_zycfzb.parameters.ParamByName( '@cy' ).value := '出院';
  sp_zycfzb.open;

  if pub_yydm='0271' then  //掇刀医院
  begin
    lbl_yhje.Visible:=True;
    edt_yhje.Visible:=True;
    dm_data.qry_pub.Close;
    dm_data.qry_pub.SQL.Text:='select isnull(yhje,0) yhje  from zysf_cyjs where zyh='+#39+zy_zyh+#39+' and yxbz=1';
    dm_data.qry_pub.Open;
    edt_yhje.Text:=  dm_data.qry_pub.FieldByName('yhje').AsString;
  end else
  begin
    lbl_yhje.Visible:=False;
    edt_yhje.Visible:=False;
  end;

  if jylyp then
  begin
    QRDBText15.Enabled := true;

  end
  else
  begin
    QRDBText15.Enabled := false;
  end;

  if zy_fylb = '03' then
  begin
    sbzfze.Enabled := true;
    sbtcze.Enabled := true;
  end
  else
  begin
    sbzfze.Enabled := false;
    sbtcze.Enabled := false;
  end;
  PageControl1.ActivePage := TabSheet1;
  tmh.text := zy_tmh;
  g_tj.SetFocus;

  dm_data.qry_pub.close;
  dm_data.qry_pub.sql.Text := Format('select * from zysf_cyjs_grhz where sqhzjzdh=''%s''',[zy_jsdh]);
  dm_data.qry_pub.Open;
  if dm_data.qry_pub.IsEmpty then
  begin
    Button1.Enabled := True;
  end;
end;

procedure Tfrm_cybrzhcx.b_closeClick( Sender: TObject );
begin
  close;
end;

procedure Tfrm_cybrzhcx.b_jsqdClick( Sender: TObject );
var
  i: integer;
begin
  if chk1.Checked then
  begin
    if qry_bafy.Active = false then
    begin
      qry_bafy.parameters.ParamByName( 'zy_zyh' ).value := zy_zyh;
      qry_bafy.parameters.ParamByName( 'sjbh' ).value := zy_sjbh;
      qry_bafy.open;
    end;
    dm_data.ad_fydl.Close;
    dm_data.ad_fydl.SQL.Clear;
    dm_data.ad_fydl.SQL.Text := qry_bafy.SQL.Text;
    dm_data.ad_fydl.Parameters.Clear;
    for i := 1 to qry_bafy.Parameters.Count do
    begin
      dm_data.ad_fydl.Parameters.AddParameter;
      dm_data.ad_fydl.Parameters.Items[i - 1] := qry_bafy.Parameters.Items[i - 1];
    end;
    dm_data.ad_fydl.open;

    dm_data.ad_yjmx.Close;
    dm_data.ad_yjmx.Parameters.Clear;
    dm_data.ad_yjmx.ProcedureName := sp_yjmxcx.ProcedureName;
    dm_data.ad_yjmx.Parameters.Clear;
    for i := 1 to sp_yjmxcx.Parameters.Count do
    begin
      dm_data.ad_yjmx.Parameters.AddParameter;
      dm_data.ad_yjmx.Parameters.Items[i - 1] := sp_yjmxcx.Parameters.Items[i - 1];
    end;
    dm_data.ad_yjmx.open;
    sp_cx_fydl.Close;
    sp_cx_fydl.parameters.ParamByName( '@zyh' ).value := zy_zyh;
    sp_cx_fydl.open;
    dm_data.sp_cwdl.Close;
    dm_data.sp_cwdl.Parameters.Clear;
    dm_data.sp_cwdl.ProcedureName := sp_cx_fydl.ProcedureName;
    dm_data.sp_cwdl.Parameters.Clear;
    for i := 1 to sp_cx_fydl.Parameters.Count do
    begin
      dm_data.sp_cwdl.Parameters.AddParameter;
      dm_data.sp_cwdl.Parameters.Items[i - 1] := sp_cx_fydl.Parameters.Items[i - 1];
    end;
    dm_data.sp_cwdl.open;

    dm_data.sp_zydj.Close;
    dm_data.sp_zydj.Parameters.Clear;
    dm_data.sp_zydj.ProcedureName := sp_sebrqk.ProcedureName;
    dm_data.sp_zydj.Parameters.Clear;
    for i := 1 to sp_sebrqk.Parameters.Count do
    begin
      dm_data.sp_zydj.Parameters.AddParameter;
      dm_data.sp_zydj.Parameters.Items[i - 1] := sp_sebrqk.Parameters.Items[i - 1];
    end;
    dm_data.sp_zydj.open;

    if sp_fymx.Active = false then
    begin
      sp_fymx.parameters.ParamByName( '@tmh' ).value := zy_tmh;
      sp_fymx.parameters.ParamByName( '@zyh' ).value := zy_zyh;
      sp_fymx.Open;
    end;
    dm_data.sp_fymx.Close;
    dm_data.sp_fymx.Parameters.Clear;
    dm_data.sp_fymx.ProcedureName := sp_fymx.ProcedureName;
    dm_data.sp_fymx.Parameters.Clear;
    for i := 1 to sp_fymx.Parameters.Count do
    begin
      dm_data.sp_fymx.Parameters.AddParameter;
      dm_data.sp_fymx.Parameters.Items[i - 1] := sp_fymx.Parameters.Items[i - 1];
    end;
    dm_data.sp_fymx.open;
    //------------------calmhawk-----选择排序方式-----2009-08-21----
    if chksfarqpx.Checked then
    begin
      dm_data.sp_fymx.Sort := 'sfrq';
    end
    else
    begin
      dm_data.sp_fymx.Sort := 'kmdm';
    end;
    //--------------------------------------------------------------
    if chk1.Checked then
    begin
      application.CreateForm( Tfrm_print_fymx_mx, frm_print_fymx_mx );
      frm_print_fymx_mx.QuickRep1.Preview;
      //不明白这里不再打一次，药品清单预览不出来，直接打印可以。
      frm_zysf_print_service.PrintYymx( sp_sebrqk, sp_yymx,jylyp );
      try frm_print_fymx_mx.free except
      end;
    end;
  end
  else
  begin
    sp_fymx.Sort := 'kmdm';
    //费用明细
    frm_zysf_print_service.PrintFymx( sp_sebrqk, sp_fymx, sp_cx_fydl, sp_yjmxcx );
  end;

  if not SP_yymx.Active then
    begin
        SP_yymx.Parameters.ParamByName( '@zyh' ).value := zy_zyh;
        SP_yymx.Parameters.ParamByName( '@jsdh' ).value := zy_jsdh;
        if sp_sebrqk.fieldbyname( 'fylb' ).asstring = '03' then
        begin
            SP_yymx.Parameters.ParamByName( '@sfsb' ).value := 1;
            if pub_yydm = '0098' then
                if application.MessageBox( '是否区分甲乙类药品？', '询问', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2 ) = IDNO then
                    SP_yymx.Parameters.ParamByName( '@sfsb' ).value := 0;
        end
        else
            SP_yymx.Parameters.ParamByName( '@sfsb' ).value := 0;
        SP_yymx.Parameters.ParamByName( '@lb' ).value := 3;
        SP_yymx.open;
    end;
  //用药明细
  frm_zysf_print_service.PrintYymx( sp_sebrqk, sp_yymx,jylyp );
  //中药明细
  frm_zysf_print_service.PrintZymx( sp_sebrqk, sp_zyyymx );
end;

procedure Tfrm_cybrzhcx.cxButton1Click(Sender: TObject);
begin
  BitBtn2.SetFocus;
  Panel4.Hide;
end;

procedure Tfrm_cybrzhcx.DBGrid3KeyPress( Sender: TObject; var Key: Char );
begin
  if key = #13 then proc_getbyxx;
end;

procedure Tfrm_cybrzhcx.DBGrid1Exit( Sender: TObject );
begin
  dbgrid1.Visible := false;
end;

procedure Tfrm_cybrzhcx.DBGrid1KeyPress( Sender: TObject; var Key: Char );
begin
  if key = #13 then proc_getbyxx_js;
end;

procedure Tfrm_cybrzhcx.DBGrid3Exit( Sender: TObject );
begin
  dbgrid3.Visible := false;
end;

procedure Tfrm_cybrzhcx.qzsjPrint( sender: TObject; var Value: string );
begin
  value := formatdatetime( 'yyyy/mm/dd', sp_sebrqk.fieldbyname( 'ryrq' ).asdatetime ) + '-' + formatdatetime( 'yyyy/mm/dd', sp_sebrqk.fieldbyname( 'cyrq' ).asdatetime );
end;

procedure Tfrm_cybrzhcx.FormKeyPress( Sender: TObject; var Key: Char );
begin
  if key = #27 then
  begin
    tmh.SetFocus;
    tmh.SelectAll;
  end;
end;

procedure Tfrm_cybrzhcx.sp_cx_cfAfterScroll(DataSet: TDataSet);
begin
  if sp_cx_cf.Active and (sp_cx_cf.RecordCount>0) then
  begin
    sp_cx_cfmx.close;
    sp_cx_cfmx.parameters.Refresh;
    sp_cx_cfmx.parameters.ParamByName( '@cfbh' ).value := sp_cx_cf.fieldbyname( 'cfbh' ).asstring;
    sp_cx_cfmx.parameters.ParamByName( '@cy' ).value := '出院';
    sp_cx_cfmx.open;
  end;
end;

procedure Tfrm_cybrzhcx.sp_zycfzbAfterScroll(DataSet: TDataSet);
begin
  if sp_zycfzb.Active and (sp_zycfzb.RecordCount>0) then
  begin
    sp_cx_zycfmx.close;
    sp_cx_zycfmx.parameters.Refresh;
    sp_cx_zycfmx.parameters.ParamByName( '@cfbh' ).value := sp_zycfzb.fieldbyname( 'cfbh' ).asstring;
    sp_cx_zycfmx.parameters.ParamByName( '@cy' ).value := '出院';
    sp_cx_zycfmx.open;
  end;
end;

procedure Tfrm_cybrzhcx.sp_zyyymxCalcFields( DataSet: TDataSet );
begin
  if ( sp_sebrqk.FieldByName( 'fylb' ).asstring = '03' ) or ( sp_sebrqk.FieldByName( 'fylb' ).asstring = '05' ) or jylyp = true then
  begin
    sp_zyyymx['jylyp'] := '自费';
    if sp_zyyymx.FieldByName( 'sfjlyp' ).asboolean then
      sp_zyyymx['jylyp'] := '甲类'
    else
      if sp_zyyymx.FieldByName( 'sfylyp' ).asboolean then
        sp_zyyymx['jylyp'] := '乙类';
  end;
  if trim( sp_yymx.FieldByName( 'ypmc' ).asstring ) = '全部合计' then
    sp_yymx['jylyp'] := '全部';
end;

procedure Tfrm_cybrzhcx.FormShow( Sender: TObject );
begin
  QuickRep1.Visible := false;
  QuickRep2.Visible := false;
  QuickRep3.Visible := false;
  if pub_tmhxsbz = false then
    tmh.PasswordChar := '*';
  Button1.Enabled := False;

  if js_qygrhzsq then  //启用 隔日回招权限控制
  begin
    DM_data.qry_pub.Close;
    DM_data.qry_pub.SQL.text := 'select 1 from sys_czy where dm='''+pub_czydm+
                                ''' and charindex(''ZYSFD99'',qxsm)>0';
    DM_data.qry_pub.Open;
    if (DM_data.qry_pub.IsEmpty) and (pub_czydm<>'9999') then
    begin
      button1.Visible:= False;
    end;
   end else begin
    Button1.Visible := False;
  end;
  Panel4.Hide;
end;

procedure Tfrm_cybrzhcx.BitBtn1Click( Sender: TObject );
var
  I: Integer;
begin
  qry_bafy.Close;
  qry_bafy.parameters.ParamByName( 'zy_zyh' ).value := zy_zyh;
  qry_bafy.open;
  dm_data.ad_fydl.Close;
  dm_data.ad_fydl.SQL.Clear;
  dm_data.ad_fydl.SQL.Text := qry_bafy.SQL.Text;
  dm_data.ad_fydl.Parameters.Clear;
  for i := 1 to qry_bafy.Parameters.Count do
  begin
    dm_data.ad_fydl.Parameters.AddParameter;
    dm_data.ad_fydl.Parameters.Items[i - 1] := qry_bafy.Parameters.Items[i - 1];
  end;
  dm_data.ad_fydl.open;
  dm_data.sp_zydj.Close;
  dm_data.sp_zydj.Parameters.Clear;
  dm_data.sp_zydj.ProcedureName := sp_sebrqk.ProcedureName;
  dm_data.sp_zydj.Parameters.Clear;
  for i := 1 to sp_sebrqk.Parameters.Count do
  begin
    dm_data.sp_zydj.Parameters.AddParameter;
    dm_data.sp_zydj.Parameters.Items[i - 1] := sp_sebrqk.Parameters.Items[i - 1];
  end;
  dm_data.sp_zydj.open;
  bt.Caption := pub_yymc + '-住院病员费用清单（收据附件）';
  QUICKREP3.Preview;
end;

procedure Tfrm_cybrzhcx.BitBtn2Click( Sender: TObject );
var
  i:Integer;
begin
  //费用汇总
  if sp_sebrqk.Active then
  begin
    if sp_sebrqk.RecordCount > 0 then
    begin
      if pub_yydm = '0246' then
      begin
        cxDateEdit1.Date := sp_sebrqk.FieldByName('ryrq').AsDateTime;
        cxDateEdit2.Date := Now;
        panel4.Show;
      end
      else if pub_yydm = '0271' then //掇刀医院
      begin
        sp_zdybb_cx_brfyqdfy.Close;
        sp_zdybb_cx_brfyqdfy.Parameters.ParamByName('@tmh').Value := zy_tmh;//sp_sebrqk.FieldByName('zyh').AsString;
        sp_zdybb_cx_brfyqdfy.Parameters.ParamByName('@brzt').Value := '出院';
        sp_zdybb_cx_brfyqdfy.Open;

        sp_zdybb_cx_brfyqdyp.Close;
        sp_zdybb_cx_brfyqdyp.Parameters.ParamByName('@tmh').Value := zy_tmh;//sp_sebrqk.FieldByName('zyh').AsString;
        sp_zdybb_cx_brfyqdyp.Parameters.ParamByName('@brzt').Value := '出院';
        sp_zdybb_cx_brfyqdyp.Open;
        frm_zysf_print_service.PrintddyyFyhz(sp_zdybb_cx_brfyqdfy, sp_zdybb_cx_brfyqdyp);
      end
      else
      begin
        if (pub_yydm = '0260') and (chk1.Checked = True) then
        begin
          sp_fyhz.Close;
          sp_fyhz.Parameters.ParamByName( '@zyh' ).Value := sp_sebrqk.FieldByName( 'zyh' ).AsString;
          sp_fyhz.Open;
          dm_data.sp_fyhz.Close;
          dm_data.sp_fyhz.Parameters.Clear;
          dm_data.sp_fyhz.ProcedureName := sp_fyhz.ProcedureName;
          dm_data.sp_fyhz.Parameters.Clear;
          for i := 1 to sp_fyhz.Parameters.Count do
          begin
            dm_data.sp_fyhz.Parameters.AddParameter;
            dm_data.sp_fyhz.Parameters.Items[i - 1] := sp_fyhz.Parameters.Items[i - 1] ;  //参数和值都传递
          end;
          dm_data.sp_fyhz.open;

          application.CreateForm(Tfrm_print_fymx_hz, frm_print_fymx_hz);
          frm_print_fymx_hz.prv_cryzt := 'zy';
          frm_print_fymx_hz.QuickRep1.Preview;
          try frm_print_fymx_hz.free except  end;
          frm_zysf_print_service.Printyyhz(sp_sebrqk, sp_yyhz);
        end
        else
        begin
          sp_fyhz.Close;
          sp_fyhz.Parameters.ParamByName( '@zyh' ).Value := sp_sebrqk.FieldByName( 'zyh' ).AsString;
          sp_fyhz.Open;
          frm_zysf_print_service.PrintFyhz( sp_sebrqk, sp_fyhz, sp_cx_fydl, sp_yjmxcx );
          sp_yyhz.Close;
        end;
          sp_yyhz.Parameters.ParamByName( '@zyh' ).Value := sp_sebrqk.FieldByName( 'zyh' ).AsString;
          sp_yyhz.Open;
          frm_zysf_print_service.Printyyhz( sp_sebrqk, sp_yyhz );
      end;
    end;
  end;
end;

procedure Tfrm_cybrzhcx.brnlPrint( sender: TObject; var Value: string );
begin
  value := inttostr( round( ( dm_data.sp_zydj.fieldbyname( 'ryrq' ).asdatetime - dm_data.sp_zydj.fieldbyname( 'csrq' ).asdatetime ) / 365 ) ) + '岁';
end;

procedure Tfrm_cybrzhcx.Button1Click(Sender: TObject);
begin
  if Application.MessageBox('允许操作员对此人进行隔日回招？', '提示',
    MB_OKCANCEL + MB_ICONQUESTION) = IDOK then
  begin
    dm_data.qry_pub.close;
    dm_data.qry_pub.sql.Text := Format('select * from zysf_cyjs_grhz where sqhzjzdh=''%s''',[zy_jsdh]);
    dm_data.qry_pub.Open;
    if dm_data.qry_pub.IsEmpty then
    begin
      dm_data.qry_pub.close;
      dm_data.qry_pub.sql.Text := Format('exec zysf_up_cyzf_zfsq ''%s'',''%s'' ',
        [zy_zyh,pub_czydm]);
      dm_data.qry_pub.ExecSQL;

      Button1.Enabled := False;
    end;
  end;
end;

procedure Tfrm_cybrzhcx.Button2Click(Sender: TObject);
begin
  DM_data.sp_pub.Close;
  DM_data.sp_pub.ProcedureName := 'zysf_cx_cyfyqd_xn';
  DM_data.sp_pub.Parameters.Refresh;
  DM_data.sp_pub.Parameters.ParamByName('@zyh').Value := sp_sebrqk.FieldByName('zyh').AsString;
  DM_data.sp_pub.Parameters.ParamByName('@ksrq').Value := cxDateEdit1.Date;
  DM_data.sp_pub.Parameters.ParamByName('@jsrq').Value := cxDateEdit2.Date;
  DM_data.sp_pub.Open;
  cxButton1.Click;
  frm_zysf_print_service.Commonprint(DM_data.sp_pub, nil, '020102');
end;

procedure Tfrm_cybrzhcx.rcysjPrint( sender: TObject; var Value: string );
begin
  value := formatdatetime( 'yy/mm/dd', dm_data.sp_zydj.fieldbyname( 'ryrq' ).asdatetime ) + '至' +
    formatdatetime( 'yy/mm/dd', dm_data.sp_zydj.fieldbyname( 'cyrq' ).asdatetime );
end;

procedure Tfrm_cybrzhcx.QRLabel46Print( sender: TObject; var Value: string );
begin
  if - dm_data.sp_zydj.fieldbyname( 'sjyjze' ).asfloat + dm_data.sp_zydj.fieldbyname( 'zfy' ).asfloat < 0 then
    value := '应退：' + format( '%8.2f', [abs( -dm_data.sp_zydj.fieldbyname( 'sjyjze' ).asfloat + dm_data.sp_zydj.fieldbyname( 'zfy' ).asfloat )] )
  else
    value := '应补：' + format( '%8.2f', [abs( -dm_data.sp_zydj.fieldbyname( 'sjyjze' ).asfloat + dm_data.sp_zydj.fieldbyname( 'zfy' ).asfloat )] )

end;

procedure Tfrm_cybrzhcx.QRSubDetail1NeedData( Sender: TObject;
  var MoreData: Boolean );
var
  I: integer;
begin
  MoreData := True;
  i := 1;
  if dm_data.ad_fydl.Eof then
    MoreData := False;
  dl01.Caption := '';
  dl02.Caption := '';
  dl03.Caption := '';
  dl04.Caption := '';
  dl05.Caption := '';
  dl06.Caption := '';
  dl07.Caption := '';
  dl08.Caption := '';
  for i := 1 to 4 do
  begin
    if dm_data.ad_fydl.eof then
      break;
    case I of
      1:
        begin
          dl01.Caption := dm_data.ad_fydl.FieldByName( 'kmmc' ).AsString;
          dl02.Caption := format( '%8.2f', [dm_data.ad_fydl.FieldByName( 'fyje' ).Asfloat] );
        end;
      2:
        begin
          dl03.Caption := dm_data.ad_fydl.FieldByName( 'kmmc' ).AsString;
          dl04.Caption := format( '%8.2f', [dm_data.ad_fydl.FieldByName( 'fyje' ).Asfloat] );
        end;
      3:
        begin
          dl05.Caption := dm_data.ad_fydl.FieldByName( 'kmmc' ).AsString;
          dl06.Caption := format( '%8.2f', [dm_data.ad_fydl.FieldByName( 'fyje' ).Asfloat] );
        end;
      4:
        begin
          dl07.Caption := dm_data.ad_fydl.FieldByName( 'kmmc' ).AsString;
          dl08.Caption := format( '%8.2f', [dm_data.ad_fydl.FieldByName( 'fyje' ).Asfloat] );
        end;
    end;
    dm_data.ad_fydl.Next;
  end;
end;

procedure Tfrm_cybrzhcx.QRDBText4Print( sender: TObject; var Value: string );
begin
  if value = '' then value := '0';
  value := format( '%8.2f', [strtofloat( Value )] );
end;

procedure Tfrm_cybrzhcx.QuickRep3BeforePrint( Sender: TCustomQuickRep;
  var PrintReport: Boolean );
begin
  dm_data.ad_fydl.First;
end;

procedure Tfrm_cybrzhcx.g_tjTitleBtnClick( Sender: TObject; ACol: Integer;
  Column: TColumnEh );
begin
  if column.Title.SortMarker = smdowneh then
    sp_cx_fydl.Sort := column.FieldName
  else
    sp_cx_fydl.Sort := column.FieldName + ' DESC';

end;

procedure Tfrm_cybrzhcx.g_tjDblClick( Sender: TObject );
begin
  Application.CreateForm( Tfrm_fydl_fymx, frm_fydl_fymx );
  if pub_yydm<>'0240' then
  begin
    try
      frm_fydl_fymx.dlmc := sp_cx_fydl.fieldbyname( 'kmmc' ).asString;
      frm_fydl_fymx.sjxs( sp_fymx, ds_fymx );
      frm_fydl_fymx.ShowModal;
    finally
      frm_fydl_fymx.free;
      sp_fymx.Filtered := false;
    end;
  end
  else
  begin
    try
      frm_fydl_fymx.dlmc := sp_cx_fydl.fieldbyname( 'kmmc' ).asString;
      frm_fydl_fymx.d_zyh := zy_zyh;
      frm_fydl_fymx.sp_cx_zyfydl.Close;
      frm_fydl_fymx.sp_cx_zyfydl.parameters.Refresh;
      frm_fydl_fymx.sp_cx_zyfydl.Parameters.ParamByName( '@zyh' ).Value:=zy_zyh;
      frm_fydl_fymx.sp_cx_zyfydl.Parameters.ParamByName( '@kmdm' ).Value:=sp_cx_fydl.fieldbyname( 'kmdm' ).asString;
      frm_fydl_fymx.sp_cx_zyfydl.Parameters.ParamByName( '@table' ).Value:='2';
      frm_fydl_fymx.sp_cx_zyfydl.Open;
      frm_fydl_fymx.g_fy.DataSource:=frm_fydl_fymx.ds_cx_zyfydl;
      frm_fydl_fymx.g_fy.Columns[4].Visible:=false;
      frm_fydl_fymx.ShowModal;
    finally
      frm_fydl_fymx.free;
    end;
  end;
end;
initialization
  RegisterClass( Tfrm_cybrzhcx );
end.

