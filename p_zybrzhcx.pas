unit p_zybrzhcx;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Grids, DBGrids, Db, DBTables, Mask, DBCtrls, DBCGrids,
  ExtCtrls, Buttons, Menus, ComCtrls, ADODB, DBGridEh, QuickRpt, Qrctrls,
  GridsEh, DateUtils, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGrid, cxLookAndFeelPainters, cxButtons, cxContainer, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar,ToolCtrlsEh, DBGridEhGrouping;
type
  Tfrm_zybrzhcx = class(TForm)
    Panel1: TPanel;
    Label14: TLabel;
    tmh: TEdit;
    Panel2: TPanel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit3: TDBEdit;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    Label3: TLabel;
    Label6: TLabel;
    b_close: TBitBtn;
    DBEdit4: TDBEdit;
    ds_yjmxcx: TDataSource;
    ds_sebrqk: TDataSource;
    ds_fymx: TDataSource;
    ds_tj_fydl: TDataSource;
    sp_sebrqk: TADOStoredProc;
    sp_yjmxcx: TADOStoredProc;
    sp_fymx: TADOStoredProc;
    sp_tj_fydl: TADOStoredProc;
    qry_bafy: TADOQuery;
    Label18: TLabel;
    sbzfze: TEdit;
    Label19: TLabel;
    sbtcze: TEdit;
    Label5: TLabel;
    yjze: TEdit;
    Label9: TLabel;
    zfy: TEdit;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    SP_yymx: TADOStoredProc;
    DS_yymx: TDataSource;
    TabSheet3: TTabSheet;
    DBGrid3: TDBGrid;
    Label13: TLabel;
    DBEdit7: TDBEdit;
    TabSheet4: TTabSheet;
    b_jsqd: TBitBtn;
    Label7: TLabel;
    Label8: TLabel;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    TabSheet5: TTabSheet;
    DBGridEh1: TDBGridEh;
    sp_cx_cf: TADOStoredProc;
    ds_cf: TDataSource;
    sp_cx_cfmx: TADOStoredProc;
    ds_cfmx: TDataSource;
    Label1: TLabel;
    DBEdit8: TDBEdit;
    Label10: TLabel;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    Label15: TLabel;
    sp_cx_cftmh: TStringField;
    sp_cx_cfzyh: TStringField;
    sp_cx_cfcfbh: TStringField;
    sp_cx_cfcfzje: TBCDField;
    sp_cx_cfhjks: TStringField;
    sp_cx_cfhjrq: TDateTimeField;
    sp_cx_cfksmc: TStringField;
    sp_cx_cfysmc: TStringField;
    sp_cx_cfhjczy: TStringField;
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
    QRBand2: TQRBand;
    QRLabel10: TQRLabel;
    brxm1: TQRLabel;
    QRLabel19: TQRLabel;
    tmh2: TQRLabel;
    QRSysData2: TQRSysData;
    QRLabel21: TQRLabel;
    QRBand3: TQRBand;
    TabSheet6: TTabSheet;
    TabSheet7: TTabSheet;
    sp_zyyymx: TADOStoredProc;
    ds_zyhz: TDataSource;
    sp_zycfzb: TADOStoredProc;
    sp_cx_zycfmx: TADOStoredProc;
    ds_zycfzb: TDataSource;
    ds_zymx: TDataSource;
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
    tmh4: TQRLabel;
    QRLabel35: TQRLabel;
    brxm4: TQRLabel;
    QRLabel37: TQRLabel;
    qzsj3: TQRLabel;
    QRBand7: TQRBand;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRGroup2: TQRGroup;
    QRBand8: TQRBand;
    QRBand9: TQRBand;
    QRLabel41: TQRLabel;
    brxm3: TQRLabel;
    QRLabel43: TQRLabel;
    tmh3: TQRLabel;
    QRSysData4: TQRSysData;
    QRLabel45: TQRLabel;
    QRBand10: TQRBand;
    QRLabel30: TQRLabel;
    QRDBText17: TQRDBText;
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
    SP_yymxyplb: TStringField;
    PageControl2: TPageControl;
    TabSheet8: TTabSheet;
    TabSheet9: TTabSheet;
    DBGridEh2: TDBGridEh;
    DBGridEh3: TDBGridEh;
    PageControl3: TPageControl;
    TabSheet10: TTabSheet;
    TabSheet11: TTabSheet;
    DBGrid1: TDBGrid;
    DBGrid4: TDBGrid;
    DBGrid7: TDBGrid;
    DBGrid6: TDBGrid;
    DBGrid2: TDBGrid;
    Panel5: TPanel;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    DBGrid5: TDBGrid;
    sp_cx_cl: TADOStoredProc;
    ds_cl: TDataSource;
    sp_cx_clmx: TADOStoredProc;
    ds_clmx: TDataSource;
    DBGridEh4: TDBGridEh;
    sp_clhz: TADOStoredProc;
    ds_clhz: TDataSource;
    QuickRep4: TQuickRep;
    QRBand14: TQRBand;
    QRDBText22: TQRDBText;
    QRDBText23: TQRDBText;
    QRDBText24: TQRDBText;
    QRDBText25: TQRDBText;
    QRDBText26: TQRDBText;
    QRDBText27: TQRDBText;
    QRDBText28: TQRDBText;
    QRDBText29: TQRDBText;
    QRBand15: TQRBand;
    QRLabel13: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel42: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel47: TQRLabel;
    QRLabel48: TQRLabel;
    QRLabel49: TQRLabel;
    QRBand16: TQRBand;
    QRShape3: TQRShape;
    QRLabel54: TQRLabel;
    QRLabel55: TQRLabel;
    QRL_yymc: TQRLabel;
    QRLabel57: TQRLabel;
    QRL_ksmc: TQRLabel;
    QRL_tmh01: TQRLabel;
    QRLabel60: TQRLabel;
    QRL_brxm01: TQRLabel;
    QRLabel62: TQRLabel;
    QRL_qzsj: TQRLabel;
    QRBand17: TQRBand;
    QRL_hit: TQRLabel;
    QRLabel65: TQRLabel;
    QRGroup3: TQRGroup;
    QRBand18: TQRBand;
    QRBand19: TQRBand;
    QRLabel66: TQRLabel;
    QRL_brxm: TQRLabel;
    QRLabel68: TQRLabel;
    QRL_tmh: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel70: TQRLabel;
    QRBand20: TQRBand;
    sp_zybrclsymx: TADOStoredProc;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1sfrq: TcxGridDBColumn;
    cxGrid1DBTableView1fyje: TcxGridDBColumn;
    cxGrid1DBTableView1zfje: TcxGridDBColumn;
    cxGrid1DBTableView1fymc: TcxGridDBColumn;
    cxGrid1DBTableView1mc: TcxGridDBColumn;
    GroupBox1: TGroupBox;
    g_tj: TDBGridEh;
    GroupBox2: TGroupBox;
    DBGridEh5: TDBGridEh;
    qry_zkzc: TADOQuery;
    ds_zkzc: TDataSource;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    cxGrid1DBTableView1dw: TcxGridDBColumn;
    cxGrid1DBTableView1sfbz: TcxGridDBColumn;
    cxGrid1DBTableView1fysl: TcxGridDBColumn;
    sp_fyhz: TADOStoredProc;
    btn1: TBitBtn;
    sp_yyhz: TADOStoredProc;
    chk1: TCheckBox;
    chksfarqpx: TCheckBox;
    strngfldSP_yymxjo: TStringField;
    strngfldSP_yymxbxsm: TStringField;
    Label12: TLabel;
    DBEdit12: TDBEdit;
    Label16: TLabel;
    DBEdit13: TDBEdit;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    edtdh: TEdit;
    Panel3: TPanel;
    Button1: TButton;
    cxDateEdit1: TcxDateEdit;
    Label17: TLabel;
    cxDateEdit2: TcxDateEdit;
    Label20: TLabel;
    cxButton1: TcxButton;
    lbl1: TLabel;
    edt_bah: TEdit;
    cxgrdbclmnGrid1DBTableView1Column3: TcxGridDBColumn;
    qry_sjfj: TADOQuery;
    lbl_yhje: TLabel;
    edt_yhje: TEdit;
    sp_zdybb_cx_brfyqdfy: TADOStoredProc;
    sp_zdybb_cx_brfyqdyp: TADOStoredProc;
    //edtDH: TEdit;
    procedure tmhKeyPress(Sender: TObject; var Key: Char);
    procedure b_closeClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ysxjeKeyPress(Sender: TObject; var Key: Char);
    procedure ytxjeKeyPress(Sender: TObject; var Key: Char);
    procedure b_jsqdClick(Sender: TObject);
    procedure sbzfzeExit(Sender: TObject);
    procedure tmhExit(Sender: TObject);
    procedure proc_setfy;
    procedure proc_getbyxx;
    procedure DBGrid3KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid3Exit(Sender: TObject);
    procedure sp_cx_cfAfterScroll(DataSet: TDataSet);
    procedure qzsjPrint(sender: TObject; var Value: string);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure sp_zycfzbAfterScroll(DataSet: TDataSet);
    procedure sp_zyyymxCalcFields(DataSet: TDataSet);
    procedure QRSubDetail1NeedData(Sender: TObject; var MoreData: Boolean);
    procedure BitBtn1Click(Sender: TObject);
    procedure QRLabel46Print(sender: TObject; var Value: string);
    procedure rcysjPrint(sender: TObject; var Value: string);
    procedure brnlPrint(sender: TObject; var Value: string);
    procedure QuickRep3BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRDBText4Print(sender: TObject; var Value: string);
    procedure sbzfzeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure g_tjDblClick(Sender: TObject);
    procedure g_fyTitleBtnClick(Sender: TObject; ACol: Integer;
      Column: TColumnEh);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure sp_cx_clAfterScroll(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure cxGrid1DBTableView1StylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      Item: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure btn1Click(Sender: TObject);
    procedure DBEdit1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    zy_zyh: string; //住院号
    zy_sjbh: string; //收据编号
    zy_tmh: string; //条码号
    zy_fylb: string; //病人费用类别
    zy_ksmc: string; //科室名称
    zy_ryrq: Tdatetime; //入院日期
    zy_cyrq: TDateTime; //出院日期
    zy_cybz: boolean; //出院标志
    zy_syyj: real; //剩余押金
    zy_yjze: real; //押金总额
    zy_sjyjze: real; //实际预交总额
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

    FWhoCallMe: string;//那个模块调用的我
  end;
var
  frm_zybrzhcx: Tfrm_zybrzhcx;
  jylyp: boolean;
  AYellowStyle: TcxStyle;
implementation

uses p_func, p_dm, p_login, p_main, p_repo_yjbrfymx, p_repo_zybrfymxcx,
  p_repo_batjcx, p_repo_yymxcx, p_print_fymx, p_print_fymx_mx, p_fydl_fymx,
  p_repo_fymxhz, p_zysf_print_service, p_print_fymx_hz;

var FormTitle: string;

{$R *.DFM}

procedure Tfrm_zybrzhcx.proc_setfy;
begin
  if zy_syyj < 0 then
  begin
    zy_ybje := 0 - zy_syyj;
    zy_fybz := '1';
    zy_ytje := 0;
  end
  else
  begin
    zy_ytje := zy_syyj;
    zy_ybje := 0;
    zy_fybz := '2';
  end;
  if zy_syyj = 0 then
  begin
    zy_fybz := '2';
    zy_ytje := 0;
    zy_ybje := 0;
    zy_stje := 0;
    zy_sbje := 0;
  end;
end;

procedure Tfrm_zybrzhcx.tmhKeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) then
  begin
    if b_jsqd.Visible then
      b_jsqd.SetFocus
    else
      Panel1.SetFocus;
  end;
  zy_sbzfje := 0;
  zy_sbtcje := 0;
end;

procedure Tfrm_zybrzhcx.cxButton1Click(Sender: TObject);
begin
  btn1.SetFocus;
  Panel3.Hide;
end;

procedure Tfrm_zybrzhcx.cxGrid1DBTableView1StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  Item: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
  if ARecord.Values[cxGrid1DBTableView1fyje.Index] < 0 then
    AStyle := AYellowStyle;
end;

procedure Tfrm_zybrzhcx.b_closeClick(Sender: TObject);
begin
  close;
end;

procedure Tfrm_zybrzhcx.FormShow(Sender: TObject);
var
  nian, yue, ri: word;
begin
  QuickRep3.Visible := false;
  QuickRep4.Visible := false;
  PageControl1.ActivePage := TabSheet1;
  QuickRep1.Visible := false;
  decodedate(frm_func.curr_date, nian, yue, ri);
  if pub_tmhxsbz = false then
    tmh.PasswordChar := '*';
  FormTitle := Self.Caption;
  Edtdh.text := '';
  Panel3.Hide;
end;

procedure Tfrm_zybrzhcx.ysxjeKeyPress(Sender: TObject; var Key: Char);
begin
  key := IsDigit(key);
end;

procedure Tfrm_zybrzhcx.ytxjeKeyPress(Sender: TObject; var Key: Char);
begin
  key := IsDigit(key);
end;

procedure Tfrm_zybrzhcx.b_jsqdClick(Sender: TObject);
var
  i: Integer;
begin
  if chk1.Checked then
  begin
    qry_bafy.Close;
    qry_bafy.parameters.ParamByName('zy_zyh').value := zy_zyh;
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

    dm_data.sp_cwdl.Close;
    dm_data.sp_cwdl.Parameters.Clear;
    dm_data.sp_cwdl.ProcedureName := sp_tj_fydl.ProcedureName;
    dm_data.sp_cwdl.Parameters.Clear;
    for i := 1 to sp_tj_fydl.Parameters.Count do
    begin
      dm_data.sp_cwdl.Parameters.AddParameter;
      dm_data.sp_cwdl.Parameters.Items[i - 1] := sp_tj_fydl.Parameters.Items[i - 1];
    end;
    dm_data.sp_cwdl.open;

    if sp_fymx.Active = false then
    begin
      sp_fymx.parameters.ParamByName('@tmh').value := zy_tmh;
      sp_fymx.parameters.ParamByName('@zyh').value := zy_zyh;
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
    if chksfarqpx.Checked then
    begin
      dm_data.sp_fymx.Sort := 'sfrq';
    end;
    application.CreateForm(Tfrm_print_fymx_mx, frm_print_fymx_mx);
    if pub_yydm = '0004' then //绵阳市富临中心医院
    begin
      frm_print_fymx_mx.QuickRep1.Page.Length := 279;
    end;
    frm_print_fymx_mx.QuickRep1.Preview;
    //不明白这里不再打一次，药品清单预览不出来，直接打印可以。
    frm_zysf_print_service.PrintYymx(sp_sebrqk, sp_yymx, jylyp);
    try frm_print_fymx_mx.free except
    end;
  end
  else
  begin
    sp_fymx.Sort := 'kmdm';
    //费用明细
    frm_zysf_print_service.PrintFymx(sp_sebrqk, sp_fymx, sp_tj_fydl, sp_yjmxcx);
  end;
  //用药明细
  frm_zysf_print_service.PrintYymx(sp_sebrqk, sp_yymx, jylyp);

  //中药明细
  frm_zysf_print_service.PrintZymx(sp_sebrqk, sp_zyyymx);
end;

procedure Tfrm_zybrzhcx.sbzfzeExit(Sender: TObject);
begin
  try
    zy_sbzfje := strtofloat(sbzfze.text);
    zy_sbtcje := zy_zfy - zy_sbzfje;
    zy_syyj := zy_yjze - zy_sbzfje;
    sbtcze.Text := format('%8.2f', [zy_sbtcje]);
    proc_setfy;
  except
    sbzfze.SetFocus;
  end;
end;

procedure Tfrm_zybrzhcx.tmhExit(Sender: TObject);
var
  zy_tmh: string;
  TmpInt: integer;
begin
  if not b_close.Focused then
  begin
    if TryStrToInt(Trim(tmh.text), TmpInt) then
    begin
      tmh.text := formatex(TmpInt, 9);
    end;
    zy_tmh := trim(tmh.text);
    with dm_data.qry_pub do
    begin
      Close;
      SQL.clear;
      SQL.Text := 'select zydj.tmh,zydj.zyh,zydj.zdjf,zydj.jsbz,' +
        ' zydj.brxm,fylb.yjbz,zydj.cybz,zydj.brdz,ksdm.mc,zydj.djrq,zydj.ryrq,zydj.nxrdh dh,zydj.bah ' +
        ' from zysf_zydj zydj,sys_fylb fylb,sys_ksdm ksdm ' +
        ' where zydj.fylb=fylb.dm and zydj.ksdm=ksdm.dm and zydj.tmh<>' + #39 + '00000001' + #39 +
        ' and (zydj.tmh=' + #39 + zy_tmh + #39 +
        ' or zydj.bah='+ #39 + zy_tmh + #39 +
        ' or zydj.brxm like ' + #39 + '%' + zy_tmh + '%' + #39 +
        ' or zydj.pym like ' + #39 + '%' + zy_tmh + '%' + #39 +
        ' or zydj.bah like ' + #39 + '%' + zy_tmh + '%' + #39 + ' or (zydj.ksdm in ' +
        '(select dm from sys_ksdm where pym like ' + #39 + copy(zy_tmh, 1, 2) + '%' +
        #39 + ') and zydj.bch like ' + #39 + '%' + copy(zy_tmh, 3, 2) + #39 + '))';
      open;
    end;
    if dm_data.qry_pub.IsEmpty then
    begin
      application.MessageBox('无此此卡号,或病人已出院！', '提示', 0 + 16);
      tmh.SetFocus;
      tmh.SelectAll;
      abort;
    end
    else
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

procedure Tfrm_zybrzhcx.proc_getbyxx;
var
  _temp: string;
begin
  zy_brdz := dm_data.Qry_pub.FieldByName('brdz').asstring;
  zy_zyh := dm_data.qry_pub.FieldByName('zyh').asstring;
  zy_tmh := dm_data.qry_pub.FieldByName('tmh').asstring;
  edtdh.text := dm_data.qry_pub.FieldByName('dh').asstring;
  edt_bah.text := dm_data.qry_pub.FieldByName('bah').asstring;  //病案号
  //edtDH.text:=DM_data.qry_pub.FieldByName('dh').asstring;
  //材料明细
  sp_cx_cl.Active := false;
  sp_cx_cl.parameters.ParamByName('@zyh').value := zy_zyh;
  sp_cx_cl.Open;
  sp_cx_cl.First;
  //预交明细
  sp_yjmxcx.Active := false;
  sp_yjmxcx.parameters.ParamByName('@zyh').value := zy_zyh;
  sp_yjmxcx.Open;
  sp_sebrqk.Active := false;
  sp_sebrqk.parameters.ParamByName('@zyh').value := zy_zyh;
  sp_sebrqk.Open;
  sbzfze.text := floattostr(sp_sebrqk.fieldbyname('zfze').asfloat);
  zy_fylb := sp_sebrqk.fieldbyname('fylb').asstring;
  zy_yjbz := sp_sebrqk.fieldbyname('yjbz').asboolean;
  zy_syyj := sp_sebrqk.fieldbyname('syyj').asfloat;
  zy_zfy := sp_sebrqk.fieldbyname('zfy').asfloat;
  zy_yjze := sp_sebrqk.fieldbyname('yjze').asfloat;
  zy_sjyjze := sp_sebrqk.fieldbyname('sjyjze').asfloat;
  zy_yjcs := sp_yjmxcx.fieldbyname('yjcs').asinteger;
  zy_ryrq := sp_sebrqk.fieldbyname('ryrq').asdatetime;
  //2011-11-11 李树刚-----修改zysf_cx_zybrdj过程，添加cybz字段
  zy_cyrq := sp_sebrqk.FieldByName('cyrq').AsDateTime;
  zy_cybz := sp_sebrqk.FieldByName('cybz').AsBoolean;
  //---------------------------------------------------
  zy_ksmc := sp_sebrqk.fieldbyname('ksmc').asstring;
  zy_ksdm := sp_sebrqk.fieldbyname('ksdm').asstring;
  zy_brxm := sp_sebrqk.fieldbyname('brxm').asstring;
  GroupBox1.Caption := '转科转床信息(主管医生:' + Trim(sp_sebrqk.FieldByName('ysxm').AsString) + ')';
  sbtcze.Text := floattostr(zy_syyj);
  yjze.Text := floattostr(zy_sjyjze);
  zfy.Text := floattostr(zy_zfy);

  {护士长在院病人综合查询 基本信息查询不需要下文的信息}
  if not b_jsqd.Visible then
  begin
    if b_close.Visible then
      b_close.setfocus;
    tmh.Text := zy_tmh;
    Exit;
  end;

  if pub_yydm='0271' then  //掇刀医院
  begin
    lbl_yhje.Visible:=True;
    edt_yhje.Visible:=True;
    dm_data.qry_pub.Close;
    dm_data.qry_pub.SQL.Text:='select isnull(yhje,0) yhje from zysf_cyjs where zyh='+#39+zy_zyh+#39+' and yxbz=1';
    dm_data.qry_pub.Open;
    edt_yhje.Text:=  dm_data.qry_pub.FieldByName('yhje').AsString;
  end else
  begin
    lbl_yhje.Visible:=False;
    edt_yhje.Visible:=False;
  end;

  sp_fymx.Active := false;
  sp_fymx.parameters.ParamByName('@tmh').value := zy_tmh;
  sp_fymx.parameters.ParamByName('@zyh').value := zy_zyh;
  sp_fymx.Open;
  sp_fymx.first;
  sp_tj_fydl.Active := false;
  sp_tj_fydl.parameters.ParamByName('@lb').value := '01';
  sp_tj_fydl.parameters.ParamByName('@sjbh').value := zy_sjbh;
  sp_tj_fydl.parameters.ParamByName('@zyh').value := zy_zyh;
  sp_tj_fydl.open;
  //转科室转床信息
  qry_zkzc.Close;
  qry_zkzc.Parameters.ParamByName('zyh').Value := zy_zyh;
  qry_zkzc.Open;
  //---------------------------------------------
  sp_clhz.close;
  sp_clhz.Parameters.ParamByName('@zyh').value := zy_zyh;
  sp_clhz.Parameters.ParamByName('@jsdh').value := '';
  sp_clhz.Parameters.ParamByName('@lb').value := 1;
  sp_clhz.Open;
  SP_yymx.close;
  SP_yymx.Parameters.ParamByName('@zyh').value := zy_zyh;
  SP_yymx.Parameters.ParamByName('@jsdh').value := '';
  SP_yymx.Parameters.ParamByName('@sfsb').value := 1;
  jylyp := true;
  if (sp_sebrqk.fieldbyname('fylb').asstring <> '03') or (pub_yydm = '0098') then
    if application.MessageBox('是否区分甲乙类药品？', '询问', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDNO then
    begin
      SP_yymx.Parameters.ParamByName('@sfsb').value := 0;
      jylyp := false;
    end;
  SP_yymx.Parameters.ParamByName('@lb').value := 1;
  SP_yymx.open;

  if isbqkf then
  begin
    sp_zybrclsymx.Close;
    sp_zybrclsymx.Parameters.ParamByName('@zyh').value := zy_zyh;
    sp_zybrclsymx.Parameters.ParamByName('@jsdh').value := '';
    if jylyp then
      sp_zybrclsymx.Parameters.ParamByName('@sfsb').value := 1
    else
      sp_zybrclsymx.Parameters.ParamByName('@sfsb').value := 0;
    sp_zybrclsymx.Parameters.ParamByName('@lb').value := 1;
    sp_zybrclsymx.open;
  end;

  SP_zyyymx.close;
  SP_zyyymx.Parameters.ParamByName('@zyh').value := zy_zyh;
  SP_zyyymx.Parameters.ParamByName('@jsdh').value := '';
  if jylyp then
    SP_zyyymx.Parameters.ParamByName('@sfsb').value := 1
  else
    SP_zyyymx.Parameters.ParamByName('@sfsb').value := 0;
  SP_zyyymx.Parameters.ParamByName('@lb').value := 1;
  SP_zyyymx.open;

  if jylyp then
  begin
    QRDBText15.Enabled := true;

  end
  else
  begin
    QRDBText15.Enabled := false;
  end;

  sp_cx_cf.close;
  sp_cx_cf.parameters.ParamByName('@zyh').value := zy_zyh;
  sp_cx_cf.open;
  sp_cx_cf.Last;

  sp_zycfzb.close;
  sp_zycfzb.parameters.ParamByName('@zyh').value := zy_zyh;
  sp_zycfzb.open;
  sp_zycfzb.Last;
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
  proc_setfy;
  PageControl1.ActivePage := TabSheet1;
  tmh.Text := zy_tmh;
  if g_tj.Visible then
    g_tj.setfocus;
  //------------calmhawk---2009-09-07---添加未归类项目检查--------
  frm_func.checkUnDell('zy', '01', zy_zyh, true);
end;

procedure Tfrm_zybrzhcx.DBGrid3KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    proc_getbyxx;

end;

procedure Tfrm_zybrzhcx.DBEdit1Change(Sender: TObject);
begin
  Self.Caption := FormTitle + '   病人姓名：【' + trim(dbedit1.Text) + '】'; //roro
end;

procedure Tfrm_zybrzhcx.DBGrid3Exit(Sender: TObject);
begin
  dbgrid3.Visible := false;
end;

procedure Tfrm_zybrzhcx.sp_cx_cfAfterScroll(DataSet: TDataSet);
begin
  sp_cx_cfmx.close;
  sp_cx_cfmx.parameters.ParamByName('@cfbh').value := sp_cx_cf.fieldbyname('cfbh').asstring;
  sp_cx_cfmx.open;
end;

procedure Tfrm_zybrzhcx.sp_cx_clAfterScroll(DataSet: TDataSet);
begin
  sp_cx_clmx.close;
  sp_cx_clmx.parameters.ParamByName('@cfbh').value := sp_cx_cl.fieldbyname('cfbh').asstring;
  sp_cx_clmx.open;
  if sp_cx_cl.Bof then
  begin
    BitBtn5.Enabled := false;
    BitBtn6.Enabled := false;
    BitBtn7.Enabled := true;
    BitBtn8.Enabled := true;
  end
  else
    if sp_cx_cl.Eof then
    begin
      BitBtn7.Enabled := false;
      BitBtn8.Enabled := false;
      BitBtn5.Enabled := true;
      BitBtn6.Enabled := true;
    end
    else
    begin
      BitBtn5.Enabled := true;
      BitBtn6.Enabled := true;
      BitBtn7.Enabled := true;
      BitBtn8.Enabled := true;
    end;
end;

procedure Tfrm_zybrzhcx.qzsjPrint(sender: TObject; var Value: string);
begin
  value := formatdatetime('yyyy/mm/dd', sp_sebrqk.fieldbyname('ryrq').asdatetime) + '-' + formatdatetime('yyyy/mm/dd', sp_sebrqk.fieldbyname('cyrq').asdatetime);

end;

procedure Tfrm_zybrzhcx.FormCreate(Sender: TObject);
begin
  AYellowStyle := TcxStyle.Create(Self);
  AYellowStyle.Color := clLime;
  AYellowStyle.TextColor := clMaroon;
  FWhoCallMe := '';
end;

procedure Tfrm_zybrzhcx.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #27 then
  begin
    tmh.SetFocus;
    tmh.SelectAll;
  end;
end;

procedure Tfrm_zybrzhcx.sp_zycfzbAfterScroll(DataSet: TDataSet);
begin
  sp_cx_zycfmx.close;
  sp_cx_zycfmx.parameters.ParamByName('@cfbh').value := sp_zycfzb.fieldbyname('cfbh').asstring;
  sp_cx_zycfmx.open;
end;

procedure Tfrm_zybrzhcx.sp_zyyymxCalcFields(DataSet: TDataSet);
begin
  if (sp_sebrqk.FieldByName('fylb').asstring = '03') or (sp_sebrqk.FieldByName('fylb').asstring = '05') or jylyp = true then
  begin
    sp_zyyymx['jylyp'] := '自费';
    if sp_zyyymx.FieldByName('sfjlyp').asboolean then
      sp_zyyymx['jylyp'] := '甲类'
    else
      if sp_zyyymx.FieldByName('sfylyp').asboolean then
        sp_zyyymx['jylyp'] := '乙类';
  end
  else
    sp_zyyymx['jylyp'] := '';
end;

procedure Tfrm_zybrzhcx.QRSubDetail1NeedData(Sender: TObject;
  var MoreData: Boolean);
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
          dl01.Caption := dm_data.ad_fydl.FieldByName('kmmc').AsString;
          dl02.Caption := format('%8.2f', [dm_data.ad_fydl.FieldByName('fyje').Asfloat]);
        end;
      2:
        begin
          dl03.Caption := dm_data.ad_fydl.FieldByName('kmmc').AsString;
          dl04.Caption := format('%8.2f', [dm_data.ad_fydl.FieldByName('fyje').Asfloat]);
        end;
      3:
        begin
          dl05.Caption := dm_data.ad_fydl.FieldByName('kmmc').AsString;
          dl06.Caption := format('%8.2f', [dm_data.ad_fydl.FieldByName('fyje').Asfloat]);
        end;
      4:
        begin
          dl07.Caption := dm_data.ad_fydl.FieldByName('kmmc').AsString;
          dl08.Caption := format('%8.2f', [dm_data.ad_fydl.FieldByName('fyje').Asfloat]);
        end;
    end;
    dm_data.ad_fydl.Next;
  end;
end;

procedure Tfrm_zybrzhcx.BitBtn1Click(Sender: TObject);
var
  I: INTEGER;
begin
  //四会在线病人收据附件打印自定义报表
  if pub_yydm='0261' then
  begin
    qry_sjfj.Close;
    qry_sjfj.SQL.Text :='exec zysf_cx_brsjfj '''+ zy_zyh+'''';
    qry_sjfj.Open;
    frm_zysf_print_service.Printzxbrsjfj_dy(qry_sjfj);
  end else
  begin
    qry_bafy.Close;
    qry_bafy.parameters.ParamByName('zy_zyh').value := zy_zyh;
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
end;

procedure Tfrm_zybrzhcx.QRLabel46Print(sender: TObject; var Value: string);
begin
  if - dm_data.sp_zydj.fieldbyname('sjyjze').asfloat + dm_data.sp_zydj.fieldbyname('zfy').asfloat < 0 then
    value := '应退：' + format('%8.2f', [abs(-dm_data.sp_zydj.fieldbyname('sjyjze').asfloat + dm_data.sp_zydj.fieldbyname('zfy').asfloat)])
  else
    value := '应补：' + format('%8.2f', [abs(-dm_data.sp_zydj.fieldbyname('sjyjze').asfloat + dm_data.sp_zydj.fieldbyname('zfy').asfloat)])

end;

procedure Tfrm_zybrzhcx.rcysjPrint(sender: TObject; var Value: string);
begin
  value := formatdatetime('yy/mm/dd', dm_data.sp_zydj.fieldbyname('ryrq').asdatetime) + '至' +
    formatdatetime('yy/mm/dd', dm_data.sp_zydj.fieldbyname('cyrq').asdatetime);

end;

procedure Tfrm_zybrzhcx.BitBtn5Click(Sender: TObject);
begin
  sp_cx_cl.First;
end;

procedure Tfrm_zybrzhcx.BitBtn6Click(Sender: TObject);
begin
  if not sp_cx_cl.eof then
    sp_cx_cl.Next;
end;

procedure Tfrm_zybrzhcx.BitBtn7Click(Sender: TObject);
begin
  if not sp_cx_cl.bof then
    sp_cx_cl.Prior;
end;

procedure Tfrm_zybrzhcx.BitBtn8Click(Sender: TObject);
begin
  sp_cx_cl.last;
end;

procedure Tfrm_zybrzhcx.brnlPrint(sender: TObject; var Value: string);
begin
  value := inttostr(round((dm_data.sp_zydj.fieldbyname('ryrq').asdatetime - dm_data.sp_zydj.fieldbyname('csrq').asdatetime) / 365)) + '岁';
end;

procedure Tfrm_zybrzhcx.btn1Click(Sender: TObject);
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
        panel3.Show;
      end  else if pub_yydm = '0271' then //掇刀医院
      begin
        sp_zdybb_cx_brfyqdfy.Close;
        sp_zdybb_cx_brfyqdfy.Parameters.ParamByName('@tmh').Value := zy_tmh;//sp_sebrqk.FieldByName('zyh').AsString;
        sp_zdybb_cx_brfyqdfy.Parameters.ParamByName('@brzt').Value := '在院';
        sp_zdybb_cx_brfyqdfy.Open;

        sp_zdybb_cx_brfyqdyp.Close;
        sp_zdybb_cx_brfyqdyp.Parameters.ParamByName('@tmh').Value :=  zy_tmh;//sp_sebrqk.FieldByName('zyh').AsString;
        sp_zdybb_cx_brfyqdyp.Parameters.ParamByName('@brzt').Value := '在院';
        sp_zdybb_cx_brfyqdyp.Open;
        frm_zysf_print_service.PrintddyyFyhz(sp_zdybb_cx_brfyqdfy, sp_zdybb_cx_brfyqdyp);
      end
      else
      begin
        sp_fyhz.Close;
        if (pub_yydm=HN_SYRMYY) (*and (FWhoCallMe='住院收费')*) then
        begin
          sp_fyhz.Parameters.refresh;
          sp_fyhz.Parameters.ParamByName('@BSummary').Value := 0;
        end;
        sp_fyhz.Parameters.ParamByName('@zyh').Value := sp_sebrqk.FieldByName('zyh').AsString;
        if chk1.Checked = False then
        begin
          sp_fyhz.Open;
          frm_zysf_print_service.PrintFyhz(sp_sebrqk, sp_fyhz, sp_tj_fydl, sp_yjmxcx);
        end
        else if chk1.Checked = True then
        begin
          dm_data.sp_fyhz.Close;
          dm_data.sp_fyhz.Parameters.Clear;
          dm_data.sp_fyhz.ProcedureName := sp_fyhz.ProcedureName;
          dm_data.sp_fyhz.Parameters.Clear;
          for i := 1 to sp_fyhz.Parameters.Count do
          begin
            dm_data.sp_fyhz.Parameters.AddParameter;
            dm_data.sp_fyhz.Parameters.Items[i - 1] := sp_fyhz.Parameters.Items[i - 1] ;  //参数和值都传递
//            ShowMessage(sp_fyhz.Parameters.Items[i - 1].Name);
//             ShowMessage(sp_fyhz.Parameters.Items[i - 1].Value);
          end;
          dm_data.sp_fyhz.open;

          application.CreateForm(Tfrm_print_fymx_hz, frm_print_fymx_hz);
          frm_print_fymx_hz.prv_cryzt := 'zy';
          frm_print_fymx_hz.QuickRep1.Preview;
          try frm_print_fymx_hz.free except  end;
          frm_zysf_print_service.Printyyhz(sp_sebrqk, sp_yyhz);
        end;

        sp_yyhz.Close;
        sp_yyhz.Parameters.ParamByName('@zyh').Value := sp_sebrqk.FieldByName('zyh').AsString;
        sp_yyhz.Open;

        frm_zysf_print_service.Printyyhz(sp_sebrqk, sp_yyhz);
      end;
    end;
  end;
end;

procedure Tfrm_zybrzhcx.Button1Click(Sender: TObject);
begin
  DM_data.sp_pub.Close;
  DM_data.sp_pub.ProcedureName := 'zysf_cx_zyfyqd_xn';
  DM_data.sp_pub.Parameters.Refresh;
  DM_data.sp_pub.Parameters.ParamByName('@zyh').Value := sp_sebrqk.FieldByName('zyh').AsString;
  DM_data.sp_pub.Parameters.ParamByName('@ksrq').Value := cxDateEdit1.Date;
  DM_data.sp_pub.Parameters.ParamByName('@jsrq').Value := cxDateEdit2.Date;
  DM_data.sp_pub.Open;
  cxButton1.Click;
  frm_zysf_print_service.Commonprint(DM_data.sp_pub, nil, '020102');
end;

procedure Tfrm_zybrzhcx.QuickRep3BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  dm_data.ad_fydl.First;
end;

procedure Tfrm_zybrzhcx.QRDBText4Print(sender: TObject; var Value: string);
begin
  if value <> '' then
    value := format('%8.2f', [strtofloat(Value)]);
end;

procedure Tfrm_zybrzhcx.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if sp_yjmxcx['tfbz'] = true then
  begin
    DBGridEh1.Canvas.Brush.Color := cllime;
    DBGridEh1.Canvas.Font.color := clblue;
  end;
  DBGridEh1.DefaultDrawColumnCell(rect, datacol, column, state);
end;

procedure Tfrm_zybrzhcx.sbzfzeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 13 then
  begin
    sbtcze.SetFocus;
  end;
end;

procedure Tfrm_zybrzhcx.g_tjDblClick(Sender: TObject);
begin
//  Application.CreateForm( Tfrm_fydl_fymx, frm_fydl_fymx );
//  try
//    frm_fydl_fymx.dlmc := sp_tj_fydl.fieldbyname( 'kmmc' ).asString;
//    frm_fydl_fymx.sjxs( sp_fymx, ds_fymx );
//    frm_fydl_fymx.ShowModal;
//  finally
//    frm_fydl_fymx.free;
//    sp_fymx.Filtered := false;
//  end;
  Application.CreateForm(Tfrm_fydl_fymx, frm_fydl_fymx);
  if pub_yydm <> '0240' then
  begin
    try
      frm_fydl_fymx.dlmc := sp_tj_fydl.fieldbyname('kmmc').asString;
      frm_fydl_fymx.sjxs(sp_fymx, ds_fymx);
      frm_fydl_fymx.ShowModal;
    finally
      frm_fydl_fymx.free;
      sp_fymx.Filtered := false;
    end;
  end
  else
  begin
    try
      frm_fydl_fymx.dlmc := sp_tj_fydl.fieldbyname('kmmc').asString;
      frm_fydl_fymx.d_zyh := zy_zyh;
      frm_fydl_fymx.sp_cx_zyfydl.Close;
      frm_fydl_fymx.sp_cx_zyfydl.parameters.Refresh;
      frm_fydl_fymx.sp_cx_zyfydl.Parameters.ParamByName('@zyh').Value := zy_zyh;
      frm_fydl_fymx.sp_cx_zyfydl.Parameters.ParamByName('@kmdm').Value := sp_tj_fydl.fieldbyname('kmdm').asString;
      frm_fydl_fymx.sp_cx_zyfydl.Parameters.ParamByName('@table').Value := '1';
      frm_fydl_fymx.sp_cx_zyfydl.Open;
      frm_fydl_fymx.g_fy.DataSource := frm_fydl_fymx.ds_cx_zyfydl;
      //frm_fydl_fymx.g_fy.Columns[4].Visible := false;
      frm_fydl_fymx.ShowModal;
    finally
      frm_fydl_fymx.free;
    end;
  end;
end;

procedure Tfrm_zybrzhcx.g_fyTitleBtnClick(Sender: TObject; ACol: Integer;
  Column: TColumnEh);
begin
  if column.Title.SortMarker = smdowneh then
    sp_fymx.Sort := column.FieldName
  else
    sp_fymx.Sort := column.FieldName + ' DESC';
end;

initialization
  RegisterClass(Tfrm_zybrzhcx);

end.

