unit p_zyzc_cybrzhcx;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Buttons, Db, DBTables, Grids, DBGrids, ComCtrls,
  ADODB, Mask, DBCtrls, QuickRpt, Qrctrls;

type
  Tfrm_zyzc_cybrzhcx = class(TForm)
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
    g_tj: TDBGrid;
    TabSheet2: TTabSheet;
    g_fy: TDBGrid;
    TabSheet3: TTabSheet;
    DBGrid2: TDBGrid;
    TabSheet4: TTabSheet;
    DBGrid1: TDBGrid;
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
    QRSysData1: TQRSysData;
    QRLabel13: TQRLabel;
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
    BitBtn1: TBitBtn;
    sp_lssjzh: TADOStoredProc;
    qry_jsxx: TADOQuery;
    qry_jsxxjsdh: TStringField;
    qry_jsxxsjbh: TStringField;
    qry_jsxxjsrq: TDateTimeField;
    qry_jsxxjsczy: TStringField;
    qry_jsxxzfje: TBCDField;
    qry_jsxxytje: TBCDField;
    qry_jsxxybje: TBCDField;
    qry_jsxxyxbz: TStringField;
    qry_jsxxsqfbz: TStringField;
    ds_jsxx: TDataSource;
    DBGrid4: TDBGrid;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tmhKeyPress(Sender: TObject; var Key: Char);
    procedure tmhExit(Sender: TObject);
    procedure b_closeClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure g_fyDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure b_jsqdClick(Sender: TObject);
    procedure proc_getbyxx;
    procedure proc_getbyxx_js;
    procedure DBGrid3KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid3Exit(Sender: TObject);
    procedure SP_yymxCalcFields(DataSet: TDataSet);
    procedure qzsjPrint(sender: TObject; var Value: string);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure DBGrid4Exit(Sender: TObject);
    procedure DBGrid4KeyPress(Sender: TObject; var Key: Char);
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
  frm_zyzc_cybrzhcx: Tfrm_zyzc_cybrzhcx;
  sfqf: boolean; //是否区分甲乙类

implementation
uses p_login, p_dm, p_func, p_repo_bryjmx, p_repo_brfymx,
  p_repo_cxbatj, p_repo_cybrfymxcx, p_repo_cybatjcx, p_repo_cyyymxcx,
  p_print_fymx_mx;
{$R *.DFM}

procedure Tfrm_zyzc_cybrzhcx.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 27 then close;
end;

procedure Tfrm_zyzc_cybrzhcx.tmhKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then b_jsqd.SetFocus;
end;

procedure Tfrm_zyzc_cybrzhcx.tmhExit(Sender: TObject);
begin
  if not b_close.Focused then
  begin
    try
      tmh.text := formatex(strtoint(tmh.text), 9);
    except
    end;
    zy_tmh := trim(tmh.text);
    with dm_data.qry_pub do
    begin
      Close;
      SQL.clear;
      SQL.Text := 'select zydj.tmh,zydj.zyh,zydj.zdjf,zydj.jsbz,' +
        ' zydj.brxm,fylb.yjbz,zydj.cybz,zydj.brdz,ksdm.mc ' +
        ' from zyzc_zysf_cydj zydj,sys_fylb fylb,sys_ksdm ksdm ' +
        ' where zydj.fylb=fylb.dm and zydj.ksdm=ksdm.dm and ' +
        ' zydj.tmh<>' + #39 + '000000001' + #39 + ' and ' +
        ' (zydj.tmh=' + #39 + zy_tmh + #39 +
        ' or zydj.bah='+ #39 + zy_tmh + #39 +
        ' or zydj.brxm like ' +#39 + '%' + zy_tmh + '%' + #39 +
        ' or zydj.pym like ' +#39 + '%' + zy_tmh + '%' + #39 + ')';
      open;
    end;
    if dm_data.qry_pub.IsEmpty then
    begin
      application.MessageBox('无此此卡号,或病人未出院！', '提示', 0 + 16);
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

procedure Tfrm_zyzc_cybrzhcx.proc_getbyxx;
begin
  zy_brdz := dm_data.Qry_pub.FieldByName('brdz').asstring;
  zy_zyh := dm_data.qry_pub.FieldByName('zyh').asstring;
  zy_tmh := dm_data.qry_pub.FieldByName('tmh').asstring;
  sp_sebrqk.Active := false;
  sp_sebrqk.parameters.ParamByName('@zyh').value := zy_zyh;
  sp_sebrqk.Open;
  qry_jsxx.Close;
  qry_jsxx.Parameters.ParamByName('tmh').Value := zy_tmh;
  qry_jsxx.Parameters.ParamByName('tmh1').Value := zy_tmh;
  qry_jsxx.Open;
  if qry_jsxx.RecordCount = 1 then
  begin
    proc_getbyxx_js;
  end
  else
    if qry_jsxx.RecordCount > 1 then
    begin
      dbgrid4.left := tmh.left;
      dbgrid4.top := tmh.top + tmh.height;
      dbgrid4.Visible := true;
      dbgrid4.SetFocus;
    end
    else
    begin
      application.MessageBox('没有查询到此病人的结算单号！', '提示', 0 + 16);
      tmh.SetFocus;
      tmh.SelectAll;
      abort;
    end;
end;

procedure Tfrm_zyzc_cybrzhcx.proc_getbyxx_js;
begin
  if qry_jsxx.fieldbyname('zfje').asfloat = 0 then
    zy_zfze := sp_sebrqk.fieldbyname('zfze').asfloat
  else
    zy_zfze := qry_jsxx.fieldbyname('zfje').asfloat;
  zy_ybje := qry_jsxx.fieldbyname('ybje').asfloat;
  zy_ytje := qry_jsxx.fieldbyname('ytje').asfloat;
  zy_cyrq := qry_jsxx.fieldbyname('jsrq').asdatetime;
  zy_sjbh := qry_jsxx.fieldbyname('sjbh').asstring;
  cyrq.DateTime := sp_sebrqk.fieldbyname('cyrq').asdatetime;
  zy_fylb := sp_sebrqk.fieldbyname('fylb').asstring;
  zy_yjbz := sp_sebrqk.fieldbyname('yjbz').asboolean;
  zy_syyj := sp_sebrqk.fieldbyname('syyj').asfloat;
  zy_zfy := sp_sebrqk.fieldbyname('zfy').asfloat;
  zy_yjze := sp_sebrqk.fieldbyname('yjze').asfloat;
  zy_sjyjze := sp_sebrqk.fieldbyname('sjyjze').asfloat;
  zy_ryrq := sp_sebrqk.fieldbyname('ryrq').asdatetime;
  zy_ksmc := sp_sebrqk.fieldbyname('ksmc').asstring;
  zy_ksdm := sp_sebrqk.fieldbyname('ksdm').asstring;
  zy_brxm := sp_sebrqk.fieldbyname('brxm').asstring;
  yjze.Text := floattostr(zy_sjyjze);
  zfy.Text := floattostr(zy_zfy);
  sbzfze.text := floattostr(zy_zfze);
  sbtcze.text := floattostr(zy_zfy - zy_zfze);
  ysxje.Text := floattostr(zy_ybje);
  ytxje.Text := floattostr(zy_ytje);
  sp_yjmxcx.Active := false;
  sp_yjmxcx.parameters.ParamByName('@zyh').value := zy_zyh;
  sp_yjmxcx.parameters.ParamByName('@jsrq').value := zy_cyrq;
  sp_yjmxcx.Open;
  zy_yjcs := sp_yjmxcx.fieldbyname('yjcs').asinteger;
  sp_fymx.Active := false;
  sp_fymx.parameters.ParamByName('@zyh').value := zy_zyh;
  sp_fymx.parameters.ParamByName('@jsrq').value := zy_cyrq;
  sp_fymx.Open;
  sp_cx_fydl.Close;
  sp_cx_fydl.parameters.ParamByName('@zyh').value := zy_zyh;
  sp_cx_fydl.parameters.ParamByName('@sjbh').value := zy_sjbh;
  sp_cx_fydl.open;
  qry_bafy.Active := false;
  qry_bafy.parameters.ParamByName('zy_zyh').value := zy_zyh;
  qry_bafy.parameters.ParamByName('sjbh').value := zy_sjbh;
  qry_bafy.open;
  SP_yymx.close;
  SP_yymx.Parameters.ParamByName('@zyh').value := zy_zyh;
  SP_yymx.Parameters.ParamByName('@jsdh').value := '';
  SP_yymx.Parameters.ParamByName('@jsrq').value := zy_cyrq;
  if sp_sebrqk.fieldbyname('fylb').asstring = '03' then
    SP_yymx.Parameters.ParamByName('@sfsb').value := 1
  else
    SP_yymx.Parameters.ParamByName('@sfsb').value := 0;
  SP_yymx.Parameters.ParamByName('@lb').value := 3;
  SP_yymx.open;
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

  if application.MessageBox('是否区分甲乙类药品？', '询问', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDNO then
  begin
    sfqf := false;
  end
  else
  begin
    sfqf := true;
  end;
end;

procedure Tfrm_zyzc_cybrzhcx.BitBtn1Click(Sender: TObject);
var
  res: string;
begin
  if application.MessageBox('转回过程可能很慢,请确认服务器较空闲!如确定继续请压是!', '提示', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES then
  begin
    sp_lssjzh.Close;
    sp_lssjzh.Parameters.ParamByName('@zyh').Value := zy_zyh;
    sp_lssjzh.Parameters.ParamByName('@res').Value := res;
    sp_lssjzh.ExecProc;
    res := sp_lssjzh.Parameters.ParamByName('@res').Value;
    if res <> '0' then
    begin
      showMessage('转回失败!错误代码:' + res);
    end
    else
    begin
      showMessage('转回成功!');
    end;
  end;
end;

procedure Tfrm_zyzc_cybrzhcx.b_closeClick(Sender: TObject);
begin
  close;
end;

procedure Tfrm_zyzc_cybrzhcx.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if sp_yjmxcx['tfbz'] = true then
  begin
    dbgrid1.Canvas.Brush.Color := cllime;
    dbgrid1.Canvas.Font.color := clblue;
  end;
  dbgrid1.DefaultDrawColumnCell(rect, datacol, column, state);
end;

procedure Tfrm_zyzc_cybrzhcx.g_fyDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if sp_fymx['tfbz'] = true then
  begin
    g_fy.Canvas.Brush.Color := cllime;
    g_fy.Canvas.Font.color := clblue;
  end;
  g_fy.DefaultDrawColumnCell(rect, datacol, column, state);
end;

procedure Tfrm_zyzc_cybrzhcx.b_jsqdClick(Sender: TObject);
var
  i: integer;
begin
  if qry_bafy.Active = false then
  begin
    qry_bafy.parameters.ParamByName('zy_zyh').value := zy_zyh;
    qry_bafy.parameters.ParamByName('sjbh').value := zy_sjbh;
    qry_bafy.open;
  end;
    {     qry_bafy.Active:=false;
           qry_bafy.parameters.ParamByName('zy_zyh').value:=zy_zyh;
           qry_bafy.parameters.ParamByName('sjbh').value:=zy_sjbh;
           qry_bafy.open;}
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
  sp_cx_fydl.parameters.ParamByName('@zyh').value := zy_zyh;
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

  application.CreateForm(Tfrm_print_fymx_mx, frm_print_fymx_mx);
  frm_print_fymx_mx.QuickRep1.Preview;
  try frm_print_fymx_mx.free except
  end;

  if SP_yymx.Active = false then
  begin
    SP_yymx.Parameters.ParamByName('@zyh').value := zy_zyh;
    SP_yymx.Parameters.ParamByName('@jsdh').value := zy_jsdh;
    if sp_sebrqk.fieldbyname('fylb').asstring = '03' then
      SP_yymx.Parameters.ParamByName('@sfsb').value := 1
    else
      SP_yymx.Parameters.ParamByName('@sfsb').value := 0;
    SP_yymx.Parameters.ParamByName('@lb').value := 3;
    SP_yymx.open;
  end;
  yymc.Caption := pub_yymc;
  brxm.Caption := zy_brxm;
  tmh1.Caption := zy_tmh;
  brxm1.Caption := zy_brxm;
  tmh2.Caption := zy_tmh;
  ksmc.Caption := zy_ksmc;
  QuickRep1.Preview;

end;

procedure Tfrm_zyzc_cybrzhcx.DBGrid3KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then proc_getbyxx;
end;

procedure Tfrm_zyzc_cybrzhcx.DBGrid4Exit(Sender: TObject);
begin
  dbgrid4.Visible := false;
end;

procedure Tfrm_zyzc_cybrzhcx.DBGrid4KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then proc_getbyxx_js;
end;

procedure Tfrm_zyzc_cybrzhcx.DBGrid3Exit(Sender: TObject);
begin
  dbgrid3.Visible := false;
end;

procedure Tfrm_zyzc_cybrzhcx.SP_yymxCalcFields(DataSet: TDataSet);
begin
  if sfqf then
  begin
    sp_yymx['jylyp'] := '自费';
    if sp_yymx.FieldByName('sfjlyp').asboolean then
      sp_yymx['jylyp'] := '甲类'
    else
      if sp_yymx.FieldByName('sfylyp').asboolean then
        sp_yymx['jylyp'] := '乙类';
  end
  else
    sp_yymx['jylyp'] := '';

end;

procedure Tfrm_zyzc_cybrzhcx.qzsjPrint(sender: TObject; var Value: string);
begin
  value := formatdatetime('yyyy/mm/dd', sp_sebrqk.fieldbyname('ryrq').asdatetime) + '-' + formatdatetime('yyyy/mm/dd', sp_sebrqk.fieldbyname('cyrq').asdatetime);
end;

procedure Tfrm_zyzc_cybrzhcx.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #27 then
  begin
    tmh.SetFocus;
    tmh.SelectAll;
  end;
end;
initialization
  RegisterClass(Tfrm_zyzc_cybrzhcx);
end.

