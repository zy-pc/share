unit p_mzczysf_all;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, Db, DBTables, ComCtrls, CheckLst, Grids,
  DBGrids, ADODB, DBGridEh, GridsEh, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, Menus,
  cxLookAndFeelPainters, cxButtons, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGrid, cxContainer, cxGroupBox, cxexportgrid4link, cxGridBandedTableView,
  cxGridDBBandedTableView, cxTextEdit;

type
  Tfrm_mzczysf_all = class(TForm)
    ds_gzl_all: TDataSource;
    sp_gzl_all: TADOStoredProc;
    sp_mx: TADOStoredProc;
    sp_gzl_allfxjsfrc: TIntegerField;
    sp_gzl_allfxjsfje: TBCDField;
    sp_gzl_allmc: TStringField;
    sp_gzl_allczydm: TStringField;
    sp_gzl_alljzrq: TDateTimeField;
    sp_gzl_allsfrc: TIntegerField;
    sp_gzl_allsfje: TBCDField;
    sp_gzl_alltfrc: TIntegerField;
    sp_gzl_alltfje: TBCDField;
    sp_gzl_allzfrc: TIntegerField;
    sp_gzl_allzfje: TBCDField;
    sp_gzl_allxybs: TIntegerField;
    sp_gzl_allssje: TBCDField;
    sp_gzl_allfxjtfrc: TIntegerField;
    sp_gzl_allfxjtfje: TBCDField;
    sp_gzl_allfxjzfrc: TIntegerField;
    sp_gzl_allfxjzfje: TBCDField;
    sp_gzl_allfxjssje: TFloatField;
    Panel1: TPanel;
    Button1: TButton;
    BitBtn1: TBitBtn;
    edate: TDateTimePicker;
    Label2: TLabel;
    sdate: TDateTimePicker;
    Label1: TLabel;
    cxGroupBox1: TcxGroupBox;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1fxjsfrc: TcxGridDBColumn;
    cxGrid1DBTableView1fxjsfje: TcxGridDBColumn;
    cxGrid1DBTableView1mc: TcxGridDBColumn;
    cxGrid1DBTableView1jzrq: TcxGridDBColumn;
    cxGrid1DBTableView1sfrc: TcxGridDBColumn;
    cxGrid1DBTableView1sfje: TcxGridDBColumn;
    cxGrid1DBTableView1tfrc: TcxGridDBColumn;
    cxGrid1DBTableView1tfje: TcxGridDBColumn;
    cxGrid1DBTableView1zfrc: TcxGridDBColumn;
    cxGrid1DBTableView1zfje: TcxGridDBColumn;
    cxGrid1DBTableView1ssje: TcxGridDBColumn;
    cxGrid1DBTableView1fxjtfrc: TcxGridDBColumn;
    cxGrid1DBTableView1fxjtfje: TcxGridDBColumn;
    cxGrid1DBTableView1fxjzfrc: TcxGridDBColumn;
    cxGrid1DBTableView1fxjzfje: TcxGridDBColumn;
    cxGrid1DBTableView1fxjssje: TcxGridDBColumn;
    cxGroupBox2: TcxGroupBox;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    ds_cxjz_mx: TDataSource;
    cxGridDBTableView1jzdh: TcxGridDBColumn;
    cxGridDBTableView1jzrq: TcxGridDBColumn;
    cxGridDBTableView1sfrc: TcxGridDBColumn;
    cxGridDBTableView1sfje: TcxGridDBColumn;
    cxGridDBTableView1tfrc: TcxGridDBColumn;
    cxGridDBTableView1tfje: TcxGridDBColumn;
    cxGridDBTableView1zfrc: TcxGridDBColumn;
    cxGridDBTableView1zfje: TcxGridDBColumn;
    cxGridDBTableView1fxjsfrc: TcxGridDBColumn;
    cxGridDBTableView1fxjsfje: TcxGridDBColumn;
    cxGridDBTableView1fxjtfrc: TcxGridDBColumn;
    cxGridDBTableView1fxjtfje: TcxGridDBColumn;
    cxGridDBTableView1fxjzfrc: TcxGridDBColumn;
    cxGridDBTableView1fxjzfje: TcxGridDBColumn;
    cxGridDBTableView1sjsl: TcxGridDBColumn;
    cxGridDBTableView1mc: TcxGridDBColumn;
    cxBtn_hzdy: TcxButton;
    cxBtn_rbb: TcxButton;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    PopupMenu2: TPopupMenu;
    N6: TMenuItem;
    N8: TMenuItem;
    qry_cwkjzrq: TADOQuery;
    qry_dy_sfmx: TADOQuery;
    sp_jzdy: TADOStoredProc;
    qry_cxjz_mxdy: TADOQuery;
    cxBBtn_export: TcxButton;
    SaveDialog1: TSaveDialog;
    PopupMenu3: TPopupMenu;
    N12: TMenuItem;
    N13: TMenuItem;
    N14: TMenuItem;
    N15: TMenuItem;
    sp_jzdxjkd: TADOStoredProc;
    ds_jzdxjkd: TDataSource;
    qry_cxjzsjd_mx: TADOQuery;
    N9: TMenuItem;
    N5: TMenuItem;
    N16: TMenuItem;
    N17: TMenuItem;
    N2: TMenuItem;
    N7: TMenuItem;
    cxGrid1DBTableView1sbsrrc: TcxGridDBColumn;
    sp_gzl_allsbsrrc: TIntegerField;
    sp_gzl_allsbsrje: TBCDField;
    sp_gzl_allsbtfrc: TIntegerField;
    sp_gzl_allsbtfje: TBCDField;
    sp_gzl_allssbje: TBCDField;
    cxGrid1DBTableView1sbsrje: TcxGridDBColumn;
    cxGrid1DBTableView1sbtfrc: TcxGridDBColumn;
    cxGrid1DBTableView1sbtfje: TcxGridDBColumn;
    cxGridDBTableView1sbsrrc: TcxGridDBColumn;
    cxGridDBTableView1sbsrje: TcxGridDBColumn;
    cxGridDBTableView1sbtfrc: TcxGridDBColumn;
    cxGridDBTableView1sbtfje: TcxGridDBColumn;
    N10: TMenuItem;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    cxGridDBTableView1Column2: TcxGridDBColumn;
    yktsyjGrid1DBTableView1yktsyj: TcxGridDBColumn;
    yktsyjGrid1DBTableView1tyjje: TcxGridDBColumn;
    yktsyjGridDBTableView1syjje: TcxGridDBColumn;
    yktsyjGridDBTableView1tyjje: TcxGridDBColumn;
    bcdfld_gzl_allmzsyjje: TBCDField;
    bcdfld_gzl_allmztyjje: TBCDField;
    cxgrdbclmnGrid1DBTableView1yhkhkje: TcxGridDBColumn;
    cxgrdbclmnGridDBTableView1yhkhkje: TcxGridDBColumn;
    sp_gzl_allyhkhkje: TFloatField;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ok2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure sp_gzl_allCalcFields(DataSet: TDataSet);
    procedure cxGrid1DBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure N1Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure sdateChange(Sender: TObject);
    procedure sp_gzl_allAfterClose(DataSet: TDataSet);
    procedure qry_cxjzsjd_mxAfterClose(DataSet: TDataSet);
    procedure qry_cxjzsjd_mxAfterOpen(DataSet: TDataSet);
    procedure N8Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N12Click(Sender: TObject);
    procedure N13Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N16Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N10Click(Sender: TObject);
  private
    { Private declarations }
    procedure Proc_Seek_sfrb;
    procedure Proc_Print_xj(v_hzdy: Boolean); //现金
    procedure Proc_Print_fxj(v_hzdy: Boolean); //非现金
  public
    { Public declarations }
  end;

var
  frm_mzczysf_all: Tfrm_mzczysf_all;
implementation
uses p_main, p_func, p_repo_mzczysf_all, p_dm, P_rpt_czyjzmxhz, p_rpt_czyrbjkb, p_czyrbjkb,
  p_rpt_czyrb;
{$R *.DFM}

procedure Tfrm_mzczysf_all.Proc_Print_xj(v_hzdy: Boolean);
begin
  application.CreateForm(Tfrm_repo_mzczysf_all, frm_repo_mzczysf_all);
  if v_hzdy then
    frm_repo_mzczysf_all.yymc.Caption := trim(pub_yymc) + '操作员缴款汇总表[门诊(现金)]'
  else
    frm_repo_mzczysf_all.yymc.Caption := trim(pub_yymc) + '操作员缴款一览表[门诊(现金)]';
  frm_repo_mzczysf_all.zbr.Caption := '制表人:' + pub_czyxm;
  frm_repo_mzczysf_all.ksrq.Caption := '起止日期:' + copy(datetimetostr(sdate.DateTime), 1, 10) + ' 至 ' + copy(datetimetostr(edate.DateTime), 1, 10);
  frm_repo_mzczysf_all.zbrq.Caption := '制表时间:' + datetimetostr(frm_func.curr_date);
  frm_repo_mzczysf_all.QuickRep1.Preview;
  try
    frm_repo_mzczysf_all.free
  except
  end;
end;

procedure Tfrm_mzczysf_all.Proc_Print_fxj(v_hzdy: Boolean);
begin
  application.CreateForm(Tfrm_repo_mzczysf_all, frm_repo_mzczysf_all);
  if v_hzdy then
    frm_repo_mzczysf_all.yymc.Caption := trim(pub_yymc) + '操作员缴款汇总表[门诊(非现金)]'
  else
    frm_repo_mzczysf_all.yymc.Caption := trim(pub_yymc) + '操作员缴款一览表[门诊(非现金)]';
  frm_repo_mzczysf_all.QRL_yymc_fxj.Caption := trim(pub_yymc) + '操作员缴款汇总表[门诊(非现金)]';
  frm_repo_mzczysf_all.QRL_zbr_fxj.Caption := '制表人:' + pub_czyxm;
  frm_repo_mzczysf_all.QRL_ksrq_fxj.Caption := '起止日期:' + copy(datetimetostr(sdate.DateTime), 1, 10) + ' 至 ' + copy(datetimetostr(edate.DateTime), 1, 10);
  frm_repo_mzczysf_all.QRL_zbrq_fxj.Caption := '制表时间:' + datetimetostr(frm_func.curr_date);
  frm_repo_mzczysf_all.QRLabel22.Caption := '合计:(' + inttostr(sp_gzl_all.RecordCount) + ')';
  if pub_yydm = '0015' then //江油市人民医院
  begin
    frm_repo_mzczysf_all.QRLabel16.Caption := '社保金额';
    frm_repo_mzczysf_all.QRDBtext17.datafield := 'ssbje';
    frm_repo_mzczysf_all.QRExpr14.Expression := 'sum(ssbje)';
    frm_repo_mzczysf_all.qrlabel15.Caption := '社保人次';
    frm_repo_mzczysf_all.QRDBText16.datafield := 'sbsrrc';
    frm_repo_mzczysf_all.QRExpr13.Expression := 'sum(sbsrrc)';
  end;
  frm_repo_mzczysf_all.QuickRep2.Preview;
  try frm_repo_mzczysf_all.free except
  end;
end;

procedure Tfrm_mzczysf_all.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 27 then
    close;
end;

procedure Tfrm_mzczysf_all.BitBtn1Click(Sender: TObject);
begin
//  if pub_yydm='0262' then
//  begin
//
//  end else
//  begin
//    yktsyjGridDBTableView1syjje.Visible:=False;
//    yktsyjGridDBTableView1tyjje.Visible:=False;
//    yktsyjGrid1DBTableView1tyjje.Visible:=False;
//    yktsyjGrid1DBTableView1yktsyj.Visible:=False;
//  end;
  sp_gzl_all.Active := false;
  sp_gzl_all.Parameters.ParamByName('@s_date').value := sdate.DateTime;
  sp_gzl_all.Parameters.ParamByName('@e_date').value := edate.DateTime;
  sp_gzl_all.Parameters.ParamByName('@tjfs').value := '1';
  sp_gzl_all.Open;
  if sp_gzl_all.RecordCount > 0 then
    cxBtn_hzdy.Enabled := true
  else
  begin
    cxBtn_hzdy.Enabled := false;
    application.MessageBox('财务科没有结帐记录，请选择结帐', '提示', 0 + 16);
  end;
end;

procedure Tfrm_mzczysf_all.FormShow(Sender: TObject);
begin
  sdate.DateTime := frm_func.curr_date - 1;
  edate.DateTime := frm_func.curr_date - 1;
end;

procedure Tfrm_mzczysf_all.N10Click(Sender: TObject);
begin
  application.CreateForm(Tfrm_repo_mzczysf_all, frm_repo_mzczysf_all);
  frm_repo_mzczysf_all.jkyymc.Caption := trim(pub_yymc) + '操作员缴款汇总表[门诊]';
  frm_repo_mzczysf_all.jkzbr.Caption := '制表人:' + pub_czyxm;
  frm_repo_mzczysf_all.jkksrq.Caption := '起止日期:' + formatdatetime('yyyy-MM-dd', sdate.DateTime) + ' 至 ' + formatdatetime('yyyy-MM-dd', edate.DateTime);
  frm_repo_mzczysf_all.jkzbrq.Caption := '制表时间:' + datetimetostr(frm_func.curr_date);
  frm_repo_mzczysf_all.QuickRep3.Preview;
  try frm_repo_mzczysf_all.free except
  end;
end;

procedure Tfrm_mzczysf_all.N12Click(Sender: TObject);
var
  ksrq, jsrq: string;
  pbt, pbt1, pbt2: string;
begin
  ksrq := formatdatetime('yyyymmdd', sdate.DateTime);
  jsrq := formatdatetime('yyyymmdd', edate.DateTime);
  pbt := '操作员缴款汇总表';
  pbt1 := pub_yymc + '操作员缴款汇总表';
  pbt2 := '开始日期:' + ksrq + ' 结束日期:' + jsrq + ' 制表人:' + pub_czyxm;
  frm_func.cxgridtoexcel(cxGrid1, 3, pbt, pbt1, pbt2, TADOStoredProc.Create(self));
end;

procedure Tfrm_mzczysf_all.N13Click(Sender: TObject);
var
  ksrq, jsrq: string;
  pbt, pbt1, pbt2: string;
begin
  ksrq := formatdatetime('yyyymmdd', sdate.DateTime);
  jsrq := formatdatetime('yyyymmdd', edate.DateTime);
  pbt := '操作员缴款汇总表';
  pbt1 := pub_yymc + '操作员缴款汇总表';
  pbt2 := '开始日期:' + ksrq + ' 结束日期:' + jsrq + ' 制表人:' + pub_czyxm;
  frm_func.cxgridtoexcel(cxGrid2, 3, pbt, pbt1, pbt2, TADOStoredProc.Create(self));
end;

procedure Tfrm_mzczysf_all.N16Click(Sender: TObject);
begin
  Proc_Print_fxj(False);
end;

procedure Tfrm_mzczysf_all.N1Click(Sender: TObject);
begin
  Proc_Print_xj(True);
end;

procedure Tfrm_mzczysf_all.N2Click(Sender: TObject);
var
  ksrq, jsrq: string;
  pbt, pbt1, pbt2: string;
begin
  ksrq := formatdatetime('yyyymmdd', sdate.DateTime);
  jsrq := formatdatetime('yyyymmdd', edate.DateTime);
  sp_jzdxjkd.Close;
  sp_jzdxjkd.Parameters.ParamByName('@ksrq').Value := ksrq;
  sp_jzdxjkd.Parameters.ParamByName('@jsrq').Value := jsrq;
  sp_jzdxjkd.Parameters.ParamByName('@dldm').Value := '01';
//  sp_jzdxjkd.Open;
  pbt := '门诊操作员结帐大项汇总单';
  pbt1 := pub_yymc + '门诊操作员结帐大项汇总单';
  pbt2 := '开始日期:' + ksrq + ' 结束日期:' + jsrq + ' 制表人:' + pub_czyxm;
  frm_func.cxgridtoexcel(Tcxgrid.Create(self), 2, pbt, pbt1, pbt2, sp_jzdxjkd);
end;

procedure Tfrm_mzczysf_all.N3Click(Sender: TObject);
begin
  Proc_Print_fxj(True);
end;

procedure Tfrm_mzczysf_all.N5Click(Sender: TObject);
begin
  Proc_Print_xj(False);
end;

procedure Tfrm_mzczysf_all.N6Click(Sender: TObject);
begin
  if not qry_cxjzsjd_mx.IsEmpty then
  begin
    with sp_jzdy do
    begin
      active := false;
      parameters.ParamByName('@jzdh').value := qry_cxjzsjd_mx['jzdh'];
      parameters.ParamByName('@czydm').value := qry_cxjzsjd_mx['czydm'];
      open;
    end;
    begin
      Application.CreateForm(Tfrm_rtp_czyrb, frm_rtp_czyrb);
      with dm_data do
      begin
        qry_dy_sfmx.close;
        qry_dy_sfmx.parameters.ParamByName('czydm').value := qry_cxjzsjd_mx['czydm'];
        qry_dy_sfmx.open;
        qry_cxjz_mx.close;
        qry_cxjz_mx.parameters.ParamByName('czydm').value := qry_cxjzsjd_mx['czydm'];
        qry_cxjz_mx.parameters.ParamByName('jzdh').value := qry_cxjzsjd_mx.FieldByName('jzdh').AsString;
        qry_cxjz_mx.open;
      end;
      frm_rtp_czyrb.czydm.Caption := frm_rtp_czyrb.czydm.Caption + qry_cxjzsjd_mx.fieldbyname('mc').asstring;
      frm_rtp_czyrb.bt.Caption := trim(pub_yymc) + frm_rtp_czyrb.bt.Caption;
      frm_rtp_czyrb.star_date.Caption := frm_rtp_czyrb.star_date.Caption + sp_jzdy.fieldbyname('ksrq').asstring;
      frm_rtp_czyrb.end_date.Caption := frm_rtp_czyrb.end_date.Caption + sp_jzdy.fieldByName('jsrq').asstring;
      frm_rtp_czyrb.zbdate.Caption := frm_rtp_czyrb.zbdate.Caption + datetimetostr(now);
      if pub_yydm='0256' then
      frm_rtp_czyrb.dxje.Caption := frm_rtp_czyrb.dxje.Caption + NumberToMoney(dm_data.qry_cxjz_mx.fieldbyname('ssje2').asfloat)
      else
      frm_rtp_czyrb.dxje.Caption := frm_rtp_czyrb.dxje.Caption + NumberToMoney(dm_data.qry_cxjz_mx.fieldbyname('ssje').asfloat);
      frm_rtp_czyrb.qrl_sbje.Caption := floattostr(dm_data.qry_cxjz_mx.fieldbyname('sbsrje').asfloat - dm_data.qry_cxjz_mx.fieldbyname('sbtfje').asfloat);
      frm_rtp_czyrb.QuickRep1.Preview;
      try frm_rtp_czyrb.Free except
      end;
    end;
  end
  else
  begin
    application.MessageBox('请选择结帐单号!', '提示', 0 + 16);
  end;
end;

procedure Tfrm_mzczysf_all.N8Click(Sender: TObject);
begin
  if not qry_cxjzsjd_mx.IsEmpty then
  begin
    with qry_cwkjzrq do //结帐起止日期
    begin
      active := false;
      parameters.ParamByName('czydm').value := qry_cxjzsjd_mx.FieldByName('czydm').AsString;
      parameters.ParamByName('jzdh').value := qry_cxjzsjd_mx.FieldByName('jzdh').AsString;
      open;
    end;
//    showmessage(qry_cxjzsjd_mx.FieldByName('czydm').AsString);
    with dm_data do //结帐信息
    begin
      qry_cxjz_mx.close;
      qry_cxjz_mx.parameters.ParamByName('czydm').value := qry_cxjzsjd_mx.FieldByName('czydm').AsString;
      qry_cxjz_mx.parameters.ParamByName('jzdh').value := qry_cxjzsjd_mx.FieldByName('jzdh').AsString;
      qry_cxjz_mx.open;
    end;

    Application.CreateForm(Tfrm_rtp_czyrbjkb, frm_rtp_czyrbjkb);
    frm_rtp_czyrbjkb.dxje.Caption := '大写:';
    frm_rtp_czyrbjkb.czydm.Caption := frm_rtp_czyrbjkb.czydm.Caption + (qry_cxjzsjd_mx.fieldbyname('mc').asstring);
    frm_rtp_czyrbjkb.bt.Caption := trim(pub_yymc) + frm_rtp_czyrbjkb.bt.Caption;
    frm_rtp_czyrbjkb.star_date.Caption := frm_rtp_czyrbjkb.star_date.Caption + qry_cwkjzrq.fieldbyname('ksrq').asstring;
    frm_rtp_czyrbjkb.end_date.Caption := frm_rtp_czyrbjkb.end_date.Caption + qry_cwkjzrq.fieldbyname('jsrq').asstring;
    frm_rtp_czyrbjkb.zbdate.Caption := frm_rtp_czyrbjkb.zbdate.Caption + datetimetostr(now);
    frm_rtp_czyrbjkb.dxje.Caption := frm_rtp_czyrbjkb.dxje.Caption + NumberToMoney(dm_data.qry_cxjz_mx.fieldbyname('ssje').asfloat);
//    frm_rtp_czyrbjkb.qrlbl1.Caption := floattostr( dm_data.qry_cxjz_mx.fieldbyname( 'sbsrje' ).asfloat - dm_data.qry_cxjz_mx.fieldbyname( 'sbtfje' ).asfloat );
//    frm_rtp_czyrbjkb.qrl_cyh.Caption := dm_data.qry_cxjz_mx.fieldbyname( 'ssje' ).asstring;
    frm_rtp_czyrbjkb.qrl_sjje.Caption := dm_data.qry_cxjz_mx.fieldbyname('ssje').asstring;
    frm_rtp_czyrbjkb.QuickRep1.Preview;
    try frm_rtp_czyrbjkb.Free except
    end;
  end
  else
    application.MessageBox('请选择结帐单号!', '提示', 0 + 16);
end;

procedure Tfrm_mzczysf_all.N9Click(Sender: TObject);
begin
  if formatdatetime('yyyy-mm-dd', edate.DateTime) >= formatdatetime('yyyy-mm-dd', frm_func.curr_date) then
  begin
    application.MessageBox('统计结束日期不能是当天', '提示', 0 + 16);
    abort;
  end;
  sp_mx.Active := false;
  sp_mx.Parameters.ParamByName('@s_date').value := sdate.DateTime;
  sp_mx.Parameters.ParamByName('@e_date').value := edate.DateTime;
  sp_mx.Parameters.ParamByName('@czydm').value := sp_gzl_all.fieldbyname('czydm').asstring;
  sp_mx.Open;
  application.CreateForm(Tfrm_rtp_czyjzmxhz, frm_rtp_czyjzmxhz);
  frm_rtp_czyjzmxhz.bt.Caption := trim(pub_yymc) + '操作员缴款明细表[门诊]';
  frm_rtp_czyjzmxhz.czydm.Caption := '收费员:' + sp_gzl_all.fieldbyname('mc').asstring;
  frm_rtp_czyjzmxhz.ksrq.Caption := '起止日期:' + formatdatetime('yyyy-mm-dd', sdate.DateTime) + ' 至 ' + formatdatetime('yyyy-mm-dd', edate.DateTime);
  frm_rtp_czyjzmxhz.zbrq.Caption := '制表时间:' + datetimetostr(frm_func.curr_date);
  frm_rtp_czyjzmxhz.QuickRep1.Preview;
  try frm_rtp_czyjzmxhz.free except
  end;
end;

procedure Tfrm_mzczysf_all.ok2Click(Sender: TObject);
begin
  close;
end;

procedure Tfrm_mzczysf_all.Proc_Seek_sfrb;
var
  v_ksrq, v_jsrq, v_czydm: string;
begin
  if not sp_gzl_all.Active then Exit;
  if sp_gzl_all.RecordCount <= 0 then Exit;

  v_ksrq := sp_gzl_all.Parameters.ParamByName('@s_date').Value;
  v_jsrq := sp_gzl_all.Parameters.ParamByName('@e_date').Value;
  v_czydm := sp_gzl_all.FieldByName('czydm').AsString;

  qry_cxjzsjd_mx.Close;
  qry_cxjzsjd_mx.Parameters.ParamByName('ksrq').Value := strtodatetime(v_ksrq);
  qry_cxjzsjd_mx.Parameters.ParamByName('jsrq').Value := strtodatetime(v_jsrq);
  qry_cxjzsjd_mx.Parameters.ParamByName('czydm').Value := v_czydm;
  qry_cxjzsjd_mx.Open;
  qry_cxjzsjd_mx.RecordCount;
end;

procedure Tfrm_mzczysf_all.qry_cxjzsjd_mxAfterClose(DataSet: TDataSet);
begin
  cxBtn_rbb.Enabled := False;
end;

procedure Tfrm_mzczysf_all.qry_cxjzsjd_mxAfterOpen(DataSet: TDataSet);
begin
  cxBtn_rbb.Enabled := (qry_cxjzsjd_mx.RecordCount > 0);
end;

procedure Tfrm_mzczysf_all.sdateChange(Sender: TObject);
begin
  sp_gzl_all.Close;
  qry_cxjzsjd_mx.Close;
end;

procedure Tfrm_mzczysf_all.sp_gzl_allAfterClose(DataSet: TDataSet);
begin
  cxBtn_hzdy.Enabled := False;
end;

procedure Tfrm_mzczysf_all.sp_gzl_allCalcFields(DataSet: TDataSet);
begin
  sp_gzl_all.FieldByName('fxjssje').AsFloat := sp_gzl_all.FieldByName('fxjsfje').AsFloat
    - sp_gzl_all.FieldByName('fxjtfje').AsFloat - sp_gzl_all.FieldByName('fxjzfje').AsFloat;
end;

procedure Tfrm_mzczysf_all.Button1Click(Sender: TObject);
begin
  close;
end;

procedure Tfrm_mzczysf_all.cxGrid1DBTableView1CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  Proc_Seek_sfrb;
end;

initialization
  RegisterClass(Tfrm_mzczysf_all);
end.

