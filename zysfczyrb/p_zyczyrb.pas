unit p_zyczyrb;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, CheckLst, Db, DBTables, ExtCtrls, Buttons, ComCtrls, Grids,
  DBGrids, DBCtrls, Mask, ADODB, DBGridEh, GridsEh, Menus,
  ToolCtrlsEh, DBGridEhGrouping, QuickRpt, QRCtrls;

type
  Tfrm_zyczyrb = class(TForm)
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    Bevel1: TBevel;
    dt1: TDateTimePicker;
    ds_cxjz: TDataSource;
    Label4: TLabel;
    qry_cxjz: TADOQuery;
    Panel1: TPanel;
    Label1: TLabel;
    DBMemo3: TDBMemo;
    Label3: TLabel;
    DBMemo4: TDBMemo;
    DBGridEh1: TDBGridEh;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    SummaryBand1: TQRBand;
    ColumnHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRShape1: TQRShape;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRLabel8: TQRLabel;
    t_yymm1: TQRLabel;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    TitleBand1: TQRBand;
    t_yymm2: TQRLabel;
    sp_JS: TADOStoredProc;
    QuickRep2: TQuickRep;
    QRBand2: TQRBand;
    QRLabel34: TQRLabel;
    QRExpr23: TQRExpr;
    QRLabel35: TQRLabel;
    QRExpr29: TQRExpr;
    QRGroup2: TQRGroup;
    QRLabel38: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel48: TQRLabel;
    QRLabel50: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel42: TQRLabel;
    QRBand4: TQRBand;
    QRBand11: TQRBand;
    QRLabel56: TQRLabel;
    QRBand12: TQRBand;
    QRLabel57: TQRLabel;
    QRLabel58: TQRLabel;
    QRExpr30: TQRExpr;
    QRExpr31: TQRExpr;
    QRBand1: TQRBand;
    QRDBText26: TQRDBText;
    QRDBText27: TQRDBText;
    QRDBText29: TQRDBText;
    QRDBText37: TQRDBText;
    QRDBText28: TQRDBText;
    QRDBText31: TQRDBText;
    QRDBText32: TQRDBText;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel13: TQRLabel;
    QRExpr3: TQRExpr;
    qp2_zbr: TQRLabel;
    QRDBText9: TQRDBText;
    sp_czyjzrb: TADOStoredProc;
    sp_czyjzrbjzdh: TStringField;
    sp_czyjzrbtmh: TStringField;
    sp_czyjzrbzyh: TStringField;
    sp_czyjzrbczydm: TStringField;
    sp_czyjzrbczymc: TStringField;
    sp_czyjzrbjzrq: TDateTimeField;
    sp_czyjzrbyjcs: TIntegerField;
    sp_czyjzrbfyje: TBCDField;
    sp_czyjzrbfkfs: TStringField;
    sp_czyjzrbsjbh: TStringField;
    sp_czyjzrbsfrq: TDateTimeField;
    sp_czyjzrbbz: TStringField;
    sp_czyjzrbbrxm: TStringField;
    sp_czyjzrbbrxb: TStringField;
    QuickRep3: TQuickRep;
    DetailBand2: TQRBand;
    PageFooterBand1: TQRBand;
    PageHeaderBand2: TQRBand;
    SummaryBand2: TQRBand;
    TitleBand2: TQRBand;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    t_yymm4: TQRLabel;
    t_yymm5: TQRLabel;
    t_yymm6: TQRLabel;
    t_yymm7: TQRLabel;
    QRDBText10: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    t_yymm8: TQRLabel;
    t_yymm9: TQRLabel;
    QRExpr4: TQRExpr;
    t_yymm10: TQRLabel;
    QRExpr5: TQRExpr;
    PageHeaderBand3: TQRBand;
    QRExpr6: TQRExpr;
    QRDBText20: TQRDBText;
    QRDBText21: TQRDBText;
    qrp3_yymm11: TQRLabel;
    qrp3_yymm12: TQRLabel;
    QRDBText22: TQRDBText;
    qrp3_yymm13: TQRLabel;
    qrp3_yymm14: TQRLabel;
    qrp3_zbr: TQRLabel;
    QRLPageNo: TQRLabel;
    QRSysData1: TQRSysData;
    TitleBand3: TQRBand;
    QRLabel12: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel22: TQRLabel;
    QRDBText23: TQRDBText;
    QRLabel23: TQRLabel;
    QRDBText24: TQRDBText;
    QRDBText25: TQRDBText;
    QRLQRP_jzrq: TQRLabel;
    QRDBText30: TQRDBText;
    sp_YJ: TADOStoredProc;
    sp_YJjzdh: TStringField;
    sp_YJtmh: TStringField;
    sp_YJzyh: TStringField;
    sp_YJfydm: TStringField;
    sp_YJczydm: TStringField;
    sp_YJjzrq: TWideStringField;
    sp_YJyjcs: TIntegerField;
    sp_YJyjje: TBCDField;
    sp_YJfkfs: TStringField;
    sp_YJsjbh: TStringField;
    sp_YJsfrq: TWideStringField;
    sp_YJbz: TStringField;
    sp_YJbrxm: TStringField;
    sp_YJczymc: TStringField;
    QRL_yymmskr: TQRLabel;
    QRDBText8: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRL_yymm3: TQRLabel;
    btn_yjmxdy: TBitBtn;
    btn_jsmxdy: TBitBtn;
    sp_JStmh: TStringField;
    sp_JSzyh: TStringField;
    sp_JSjzdh: TStringField;
    sp_JSksdm: TStringField;
    sp_JSksmc: TStringField;
    sp_JSbrxm: TStringField;
    sp_JSczydm: TStringField;
    sp_JSczymc: TStringField;
    sp_JSryrq: TDateTimeField;
    sp_JScyrq: TDateTimeField;
    sp_JSyjje: TBCDField;
    sp_JSjsrq: TDateTimeField;
    sp_JSzfze: TBCDField;
    sp_JSlbmc: TStringField;
    sp_JSsbdw: TStringField;
    sp_JSfkfs: TStringField;
    sp_JSsjbh: TStringField;
    sp_JSsfrq: TDateTimeField;
    sp_JSbz: TStringField;
    QRLabel21: TQRLabel;
    QRDBText33: TQRDBText;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRDBText34: TQRDBText;
    QRDBText35: TQRDBText;
    qrlbl_fylb: TQRLabel;
    fzsm_fylb: TQRDBText;
    fx_bc_fylb: TStringField;
    btn_cnjsbb: TBitBtn;
    cbb_jzdh: TComboBox;
    sp_maindata: TADOStoredProc;
    sp_mxdata: TADOStoredProc;
    procedure BitBtn3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure dt1Change(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure QRDBTextOnPrint(sender: TObject; var Value: string);
    procedure btn_jsmxdyClick(Sender: TObject);
    procedure btn_yjmxdyClick(Sender: TObject);
    procedure btn_cnjsbbClick(Sender: TObject);
  private
        { Private declarations }
    procedure PrintAll_SY;
    procedure PrintYJ_JY;
    procedure PrintJS_JY;
    procedure PrintAll_JY;
    procedure PrintAll_cnjsdy;
  public
        { Public declarations }
  end;

var
  frm_zyczyrb: Tfrm_zyczyrb;

implementation

uses P_dm, p_zysfyrb, p_repo_czyrb, p_func, p_repo_czyyjrb, p_repo_czyjsrb,
  p_zysf_print_service;

{$R *.DFM}

procedure Tfrm_zyczyrb.BitBtn3Click(Sender: TObject);
var
  p:Tpoint;
  tmpado:TADOQuery;
begin
  if qry_cxjz.RecordCount > 0 then
  begin
    if Sender is TBitBtn then
    begin
      if pub_yydm = '0240' then   //沙雅医院  0240
      begin
        tmpado:=TADOQuery.create(nil);
        tmpado.Connection := DM_data.ado_mydata;
        tmpado.LockType := ltReadOnly;
        tmpado.SQL.Text := 'exec zysf_czyjzrb ''' + pub_czydm +
        ''',''' + FormatDateTime('yyyy-MM-dd', qry_cxjz['jzrq'])+
        ''',''' + qry_cxjz.fieldbyname('jzdh').asstring + ''' ';
        // tmpado.SQL.Text := Format('exec zysf_czyjzrb ''%s''',[qry_cxjz.fieldbyname('jzdh').asstring]);
        tmpado.Open;
        if tmpado.IsEmpty then
        begin
         raise Exception.Create('未找到结账数据。');
        end;
        try
          frm_zysf_print_service.Commonprint(tmpado,nil,'089816');
        finally
         tmpado.Free;
        end;
        Exit;
      // PrintAll_SY;
      end;
      if pub_yydm='0015' then  //江油市人民医院要分开打
      begin
        GetCursorPos(p);
        PopupMenu1.Popup(p.X,p.Y);
        Exit;
      end;
      if pub_yydm='0246' then
      begin
        tmpado:=TADOQuery.create(nil);
        tmpado.Connection := DM_data.ado_mydata;
        tmpado.LockType := ltReadOnly;
        tmpado.SQL.Text := Format('exec zysf_cx_czyjzBb ''%s''',[qry_cxjz.fieldbyname('jzdh').asstring]);
        tmpado.Open;
        if tmpado.IsEmpty then
        begin
          raise Exception.Create('未找到结账数据。');
        end;
        try
          frm_zysf_print_service.Commonprint(tmpado,nil,'020101');
        finally
          tmpado.Free;
        end;
        Exit;
      end;
    end;
//    if pub_yydm = '0260' then  //井研人民医院
//    begin
//      PrintAll_JY;
//      Exit;
//    end;
    application.CreateForm(Tfrm_repo_czyrb, frm_repo_czyrb);
    try

      if pub_yydm<>'0261' then
      begin
        with frm_repo_czyrb do
        begin
          qrlbl1.Free;
          qrlbl7.Free;
          qrlbl8.Free;
          qrlbl2.Free;
          qrlbl10.Free;
          qrlbl11.Free;
          qrlbl12.Free;
          qrlbl9.free;
          qrshp25.free;
          qrlbl4.Free;
          qrlbl5.Free;
          qrlbl3.Free;
          qrlbl6.Free;
          bkxjsl.Free;
          bksksl.Free;
          bksbsl.Free;
          fzsmtkxjsl.Free;
          tksksl.Free;
          fzsmtksbsl.Free;
          bkxjzje.Free;
          QRDBText33.Free;
          fzsmbksbzje.Free;
          tkxjzje.Free;
          fzsmtkskzje.Free;
          fzsmtksbzje.Free;
          qrdbtxtjsssje.Top := 145;
          QRLabel2.Top:=117;
          qrdbtxtqffy.Top:=139;
          qrlabel35.Top:=121;
          qrdbtxtzchzfy.Top:=139;
          QRLabel33.Top:=121;
          qrlabel30.Top:=121;
          qrdbtxtcytxrc.Top:=139;
          qrdbtxtcytxje.Top:=139;
          qrlabel28.Top:=121;
          qrdbtxtcybxrc.Top:=139;
          QRLabel27.Top:=121;
          qrlabel25.Top:=121;
          qrdbtxtcybxje.Top:=139;
          qrshp13.Top:=117;
          qrshp12.Top:=117;
          qrshp8.Top:=117;
          qrshp7.Top:=117;
          QRLabel26.Top := 98;
          QRLabel29.Top := 98;
          QRLabel32.Top := 98;
          QRLabel34.Top := 98;
          qrshp3.Top := 95;
          jzdh.Top := 77;
          sfrq.Top := 77;
          sfczy.Top := 77;
          QRLabel12.top:=30;
        end;
      end;
      if pub_yydm <> '0228' then  //郧县中医院 
      begin
        with frm_repo_czyrb do
        begin
          qrlabel115.Free;
          QRLabel116.Free;
          qrlabel117.Free;
          qrlabel118.Free;
          jmfsl.Free;
          dbfsl.Free;
          jmfzje.Free;
          dbfzje.Free;
          frm_repo_czyrb.qry_dy.Close;
          frm_repo_czyrb.qry_dy.sql.text :='exec zysf_cz_czyjkd '''+qry_cxjz.fieldbyname('jzdh').asstring+''' ';
          frm_repo_czyrb.qry_dy.Open;
        end;
      end else
      begin
        with frm_repo_czyrb do
        begin
          QRLabel2.Top := 95;
          QRLabel2.Font.Size := 10;
          qrdbtxtjsssje.Top := 109;
          qrdbtxtjsssje.Font.Size := 10;
          frm_repo_czyrb.qry_dy.Close;
          frm_repo_czyrb.qry_dy.sql.text :='exec zysf_cz_czyjkd '''+qry_cxjz.fieldbyname('jzdh').asstring+''' ' +
                                            ','+'''' + pub_czydm + '''';
          frm_repo_czyrb.qry_dy.Open;
        end;
      end;

      if pub_yydm = '0175' then //打印大类汇总
      begin
        frm_repo_czyrb.sp_jsdx.Close;
        frm_repo_czyrb.sp_jsdx.Parameters.ParamByName('@jzdh').value := qry_cxjz.fieldbyname('jzdh').asstring;
        frm_repo_czyrb.sp_jsdx.Open;
        frm_repo_czyrb.qrsbdtl1.Enabled := true;
      end;
      frm_repo_czyrb.sfrq.Caption := '结帐期间:' + datetimetostr(frm_repo_czyrb.qry_dy.FieldByName('ksrq').AsDateTime) + '至' +
        datetimetostr(frm_repo_czyrb.qry_dy.FieldByName('jsrq').AsDateTime);
      frm_repo_czyrb.fj_sfrq.Caption := frm_repo_czyrb.sfrq.Caption;
      if (username = 'sys_zysf') or (username = 'sys_mzsf') then
      begin
        frm_repo_czyrb.sfczy.Caption := '收费操作员:' + pub_czyxm;
        frm_repo_czyrb.fj_sfczy.Caption := frm_repo_czyrb.sfczy.Caption
      end
      else
      begin
        frm_repo_czyrb.sfczy.Caption := '收费操作员:' + trim(frm_zysfyrb.ad_sfrb.fieldbyname('xm').asstring);
        frm_repo_czyrb.fj_sfczy.Caption := frm_repo_czyrb.sfczy.Caption;
      end;
      frm_repo_czyrb.jzdh.Caption := '单号:' + trim(qry_cxjz.fieldbyname('jzdh').asstring);
      frm_repo_czyrb.fj_jzdh.Caption := frm_repo_czyrb.jzdh.Caption;
      frm_repo_czyrb.dxje.Caption := '大写:' + NumberToMoney(frm_repo_czyrb.qry_dy.fieldbyname('hjje').asfloat);
      if pub_yydm<>'0269' then
      begin
        with frm_repo_czyrb do
        begin
          QRLabel112.Free;
          QRLabel113.Free;
          QRDBText34.Free;
          QRDBText35.Free;

          QRLabel36.Left := 432;
          QRLabel13.Left := 580;
          qrdbtxtyjssje.Left :=450;
          QRDBText1.left :=590;
        end ;

      end;
      if pub_yydm='0269' then
      begin
        frm_repo_czyrb.QRLabel5.Caption :='统筹金额';
      end;
      frm_repo_czyrb.QuickRep1.Preview;
    finally
      try
        frm_repo_czyrb.free;
      except
      end;
    end;
  end
  else
  begin
    application.MessageBox('请选择结帐单号!', '提示', 0 + 16);
  end;
end;

procedure Tfrm_zyczyrb.FormCreate(Sender: TObject);
begin
  QuickRep1.Visible := False;
  QuickRep2.Visible := False;
  QuickRep3.Visible := False;

  if pub_yydm <> '0261' then
  begin
    fzsm_fylb.Visible := False;
    qrlbl_fylb.Free;
    QRLabel22.Left := 941;
    QRDBText23.Left := 942;
  end;
end;

procedure Tfrm_zyczyrb.FormShow(Sender: TObject);
begin
  if (username = 'sys_zysf') or (username = 'sys_mzsf') then
  begin
    dt1.DateTime := frm_func.curr_date;
    qry_cxjz.Close;
    qry_cxjz.sql.clear;
    qry_cxjz.sql.add('select * from zysf_czyjz a,zysf_czyjsjz b ' +
      ' where a.czydm=' + #39 + pub_czydm + #39 + ' and a.jzdh*=b.jzdh and ' +
      ' convert(char,a.jzrq,112)=' + #39 + formatdatetime('yyyymmdd', dt1.datetime) + #39);
    qry_cxjz.Open;
  end;
  
end;

procedure Tfrm_zyczyrb.N1Click(Sender: TObject);
begin
  if not qry_cxjz.IsEmpty then
  begin
    application.CreateForm(Tfrm_repo_czyrb, frm_repo_czyrb);
    frm_repo_czyrb.qry_dy.Close;
    frm_repo_czyrb.qry_dy.sql.text :='exec zysf_cz_czyjkd '''+qry_cxjz.fieldbyname('jzdh').asstring+''' ';
    frm_repo_czyrb.qry_dy.Open;
    frm_repo_czyrb.sfrq2.Caption := '结帐期间:' +
      datetimetostr(frm_repo_czyrb.qry_dy['ksrq']) + '至' +
      datetimetostr(frm_repo_czyrb.qry_dy['jsrq']);
    if (username = 'sys_zysf') or (username = 'sys_mzsf') then
      frm_repo_czyrb.sfczy2.Caption := '收费操作员:' + pub_czyxm
    else
      frm_repo_czyrb.sfczy2.Caption := '收费操作员:' + trim(frm_zysfyrb.ad_sfrb.fieldbyname('xm').asstring);
    frm_repo_czyrb.jzdh2.Caption := '单号:' + trim(qry_cxjz.fieldbyname('jzdh').asstring);
    frm_repo_czyrb.dxje2.Caption := '大写:' + NumberToMoney(frm_repo_czyrb.qry_dy.fieldbyname('hjje').asfloat);
    frm_repo_czyrb.QuickRep2.Preview;
    try frm_repo_czyrb.free;
    except
    end;
  end
  else
  begin
    application.MessageBox('请选择结帐单号!', '提示', 0 + 16);
  end;
end;

procedure Tfrm_zyczyrb.N2Click(Sender: TObject);
begin
  if not qry_cxjz.IsEmpty then
  begin
    application.CreateForm(Tfrm_repo_czyrb, frm_repo_czyrb);
    frm_repo_czyrb.qry_dy.Close;
    frm_repo_czyrb.qry_dy.sql.text :='exec zysf_cz_czyjkd '''+qry_cxjz.fieldbyname('jzdh').asstring+''' ';
    frm_repo_czyrb.qry_dy.Open;
    frm_repo_czyrb.sfrq3.Caption := '结帐期间:' +
      datetimetostr(frm_repo_czyrb.qry_dy['ksrq']) + '至' +
      datetimetostr(frm_repo_czyrb.qry_dy['jsrq']);
    if (username = 'sys_zysf') or (username = 'sys_mzsf') then
      frm_repo_czyrb.sfczy3.Caption := '收费操作员:' + pub_czyxm
    else
      frm_repo_czyrb.sfczy3.Caption := '收费操作员:' + trim(frm_zysfyrb.ad_sfrb.fieldbyname('xm').asstring);
    frm_repo_czyrb.jzdh3.Caption := '单号:' + trim(qry_cxjz.fieldbyname('jzdh').asstring);
    frm_repo_czyrb.QuickRep3.Preview;
    try frm_repo_czyrb.free;
    except
    end;
  end
  else
  begin
    application.MessageBox('请选择结帐单号!', '提示', 0 + 16);
  end;
end;

procedure Tfrm_zyczyrb.N3Click(Sender: TObject);
begin
  BitBtn3Click(Sender);
end;

procedure Tfrm_zyczyrb.PrintAll_JY;
var
  czydm: string;
begin
  if (username = 'sys_zysf') or (username = 'sys_mzsf') then
    czydm := pub_czydm
  else
    czydm := trim(frm_zysfyrb.ad_sfrb.fieldbyname('czydm').asstring);
  with sp_czyjzrb do
  begin
    Active := False;
    Parameters.ParamByName('@czydm').Value := czydm;
    Parameters.ParamByName('@jzrq').Value := FormatDateTime('yyyy-mm-dd',dt1.Date);
    Open;
  end;
  qrp3_zbr.Caption := Format('%s  %s',[pub_czydm,pub_czyxm]);
  QuickRep3.Preview;
end;

{-------------------------------------------------------------------------------
  过程名:    Tfrm_zyczyrb.PrintAll_cnjsdy
  作者:      yangshuai
  日期:      2017.09.06
  参数:      无
  返回值:    无
-------------------------------------------------------------------------------}
procedure Tfrm_zyczyrb.PrintAll_cnjsdy;
var
  czydm,v_jzdh: string;
begin
  v_jzdh:='';
  if (username = 'sys_zysf') or (username = 'sys_mzsf') then
    czydm := pub_czydm
  else
    czydm := trim(frm_zysfyrb.ad_sfrb.fieldbyname('czydm').asstring);

  if cbb_jzdh.ItemIndex=0  then  //按选择结账单号打印
  begin
     v_jzdh:= qry_cxjz.fieldbyname('jzdh').asstring;
//    DM_data.qry_pub.Close;
//    DM_data.qry_pub.sql.clear;
//    DM_data.qry_pub.sql.add('select * from zysf_czyjz a,zysf_czyjsjz b ' +
//    ' where a.czydm=' + #39 + pub_czydm + #39 + ' and a.jzdh*=b.jzdh and ' +
//    ' convert(char,a.jzrq,112)=' + #39 + formatdatetime('yyyymmdd', dt1.datetime) + #39);
//    DM_data.qry_pub.Open;
  end  else if cbb_jzdh.ItemIndex=1  then  //选择结账日期打印
  begin
    DM_data.qry_pub.Close;
    DM_data.qry_pub.sql.clear;
    DM_data.qry_pub.sql.add('select * from zysf_czyjz a,zysf_czyjsjz b ' +
    ' where a.czydm=' + #39 + pub_czydm + #39 + ' and a.jzdh*=b.jzdh and ' +
    ' convert(char,a.jzrq,112)=' + #39 + formatdatetime('yyyymmdd', dt1.datetime) + #39);
    DM_data.qry_pub.Open;

    DM_data.qry_pub.First;
    while  not DM_data.qry_pub.eof do
    begin
      v_jzdh:= v_jzdh +','+Trim(DM_data.qry_pub.FieldByName('jzdh').AsString) ;
      DM_data.qry_pub.Next;
    end;
    v_jzdh:=Copy(v_jzdh,2,length(v_jzdh)-1);
  end else  if cbb_jzdh.ItemIndex=2  then  //选择结账日期所有操作员打印
  begin
    DM_data.qry_pub.Close;
    DM_data.qry_pub.sql.clear;
    DM_data.qry_pub.sql.add('select * from zysf_czyjz a,zysf_czyjsjz b ' +
    ' where  a.jzdh*=b.jzdh and ' +
    ' convert(char,a.jzrq,112)=' + #39 + formatdatetime('yyyymmdd', dt1.datetime) + #39);
    DM_data.qry_pub.Open;

    DM_data.qry_pub.First;
    while  not DM_data.qry_pub.eof do
    begin
      v_jzdh:= v_jzdh +','+Trim(DM_data.qry_pub.FieldByName('jzdh').AsString) ;
      DM_data.qry_pub.Next;
    end;
    v_jzdh:=Copy(v_jzdh,2,length(v_jzdh)-1);
  end;
  
  sp_maindata.active := false;
  sp_maindata.parameters.ParamByName( '@jzrq' ).value := dt1.Date;
  sp_maindata.parameters.ParamByName( '@jzdh' ).value := v_jzdh;
  sp_maindata.open;

  sp_mxdata.active := false;
  sp_mxdata.parameters.ParamByName( '@jzrq' ).value := dt1.Date;
  sp_mxdata.parameters.ParamByName( '@jzdh' ).value := v_jzdh;
  sp_mxdata.open;
  frm_zysf_print_service.printddzycnjsbbdy(dt1.Date,sp_maindata,sp_mxdata,True);


end;

procedure Tfrm_zyczyrb.PrintAll_SY;
begin
  if not qry_cxjz.IsEmpty then
  begin
    application.CreateForm(Tfrm_repo_czyrb, frm_repo_czyrb);
    try
      frm_repo_czyrb.qry_dy.Close;
      frm_repo_czyrb.qry_dy.sql.text :='exec zysf_cz_czyjkd '''+qry_cxjz.fieldbyname('jzdh').asstring+''' ';
      frm_repo_czyrb.qry_dy.Open;
      {
      if pub_yydm = '0175' then //打印大类汇总
      begin
        frm_repo_czyrb.sp_jsdx.Close;
        frm_repo_czyrb.sp_jsdx.Parameters.ParamByName('@jzdh').value := qry_cxjz.fieldbyname('jzdh').asstring;
        frm_repo_czyrb.sp_jsdx.Open;
        frm_repo_czyrb.qrsbdtl1.Enabled := true;
      end;
      }
      frm_repo_czyrb.zbrq.Caption := '制表日期：' + FormatDateTime('yyyy-MM-dd hh:mm:ss',Now);
      frm_repo_czyrb.t_syyymm.Caption := pub_yymc;
      frm_repo_czyrb.sfrq_sy.Caption := '结账日期：' + FormatDateTime('yyyy-MM-dd', frm_repo_czyrb.qry_dy['jsrq']);
      frm_repo_czyrb.fj_sfrq.Caption := frm_repo_czyrb.sfrq.Caption;
      if (username = 'sys_zysf') or (username = 'sys_mzsf') then
      begin
        frm_repo_czyrb.czy_sy.Caption := '操作员：' + pub_czyxm;
        frm_repo_czyrb.fj_sfczy.Caption := frm_repo_czyrb.sfczy.Caption
      end
      else
      begin
        frm_repo_czyrb.czy_sy.Caption := '操作员：' + trim(frm_zysfyrb.ad_sfrb.fieldbyname('xm').asstring);
        frm_repo_czyrb.fj_sfczy.Caption := frm_repo_czyrb.sfczy.Caption;
      end;
      frm_repo_czyrb.jzdh.Caption := '单号：' + trim(qry_cxjz.fieldbyname('jzdh').asstring);
      frm_repo_czyrb.fj_jzdh.Caption := frm_repo_czyrb.jzdh.Caption;
      frm_repo_czyrb.dxje.Caption := '大写：' + NumberToMoney(frm_repo_czyrb.qry_dy.fieldbyname('hjje').asfloat);
      frm_repo_czyrb.dxje_sy.Caption := NumberToMoney(frm_repo_czyrb.qry_dy.fieldbyname('hjje').asfloat);
      frm_repo_czyrb.QuickRep4.Preview;
    finally
      frm_repo_czyrb.free;
    end;
  end
  else
  begin
    application.MessageBox('请选择结帐单号!', '提示', 0 + 16);
  end;
end;

procedure Tfrm_zyczyrb.PrintJS_JY;
var
  czydm: string;
begin
  if (username = 'sys_zysf') or (username = 'sys_mzsf') then
    czydm := pub_czydm
  else
    czydm := trim(frm_zysfyrb.ad_sfrb.fieldbyname('czydm').asstring);
  with sp_JS do
  begin
    Active := False;
    Parameters.ParamByName('@jzrq').Value := formatdatetime( 'yyyy-mm-dd', dt1.date);
    Parameters.ParamByName('@czydm').Value := czydm;
    Open;
  end;
  qp2_zbr.Caption := pub_czyxm;
  QRLQRP_jzrq.Caption := FormatDateTime('yyyy-mm-dd',dt1.Date);
  QuickRep2.Preview;
end;

procedure Tfrm_zyczyrb.PrintYJ_JY;
var
  czydm: string;
begin
  if (username = 'sys_zysf') or (username = 'sys_mzsf') then
    czydm := pub_czydm
  else
    czydm := trim(frm_zysfyrb.ad_sfrb.fieldbyname('czydm').asstring);
  if qry_cxjz.RecordCount > 0 then
  begin
    with sp_YJ do
    begin
      Active := False;
      Parameters.ParamByName('@czydm').Value := czydm;
      Parameters.ParamByName('@jzrq').Value := FormatDateTime('yyyy-mm-dd', dt1.Date);
      Open;
    end;
    QuickRep1.Preview;
  end;
end;

procedure Tfrm_zyczyrb.QRDBTextOnPrint(sender: TObject; var Value: string);
begin
  if Sender is TQRDBText then
  begin
    with TQRDBText(sender) do
    begin
      if DataSet.FieldByName(DataField).IsNull then
        Value := '';
    end;
  end;
end;

procedure Tfrm_zyczyrb.BitBtn4Click(Sender: TObject);
begin
  close;
end;

{-------------------------------------------------------------------------------
  过程名:    Tfrm_zyczyrb.btn_jsmxdyClick
  作者:      yansghuai
  日期:      2016.01.08
  参数:      Sender: TObject
  返回值:    无
-------------------------------------------------------------------------------}
procedure Tfrm_zyczyrb.btn_cnjsbbClick(Sender: TObject);
begin
PrintAll_cnjsdy;//出纳结算报表
end;

procedure Tfrm_zyczyrb.btn_jsmxdyClick(Sender: TObject);
begin
  PrintJS_JY;//结算打印
end;

{-------------------------------------------------------------------------------
  过程名:    Tfrm_zyczyrb.btn_yjmxdyClick
  作者:      yansghuai
  日期:      2016.01.08
  参数:      Sender: TObject
  返回值:    无
-------------------------------------------------------------------------------}
procedure Tfrm_zyczyrb.btn_yjmxdyClick(Sender: TObject);
begin
  PrintYJ_JY; //预结打印
end;

{-------------------------------------------------------------------------------
  过程名:    Tfrm_zyczyrb.btn_jsmxdyClick
  作者:      yansghuai
  日期:      2016.01.08
  参数:      Sender: TObject
  返回值:    无
-------------------------------------------------------------------------------}
procedure Tfrm_zyczyrb.dt1Change(Sender: TObject);
var
  cxlb: string;
begin
  if (username = 'sys_zysf') or (username = 'sys_mzsf') then
    cxlb := pub_czydm
  else
    cxlb := trim(frm_zysfyrb.ad_sfrb.fieldbyname('czydm').asstring);
  qry_cxjz.Close;
  qry_cxjz.sql.clear;
  qry_cxjz.sql.add('select * from zysf_czyjz a,zysf_czyjsjz b ' +
    ' where a.czydm=' + #39 + cxlb + #39 + ' and a.jzdh*=b.jzdh and ' +
    ' convert(char,a.jzrq,112)=' + #39 + formatdatetime('yyyymmdd', dt1.datetime) + #39);
  qry_cxjz.Open;
end;

procedure Tfrm_zyczyrb.BitBtn1Click(Sender: TObject);
begin
  if qry_cxjz.RecordCount > 0 then
  begin
      application.CreateForm(Tfrm_repo_czyyjrb, frm_repo_czyyjrb);
      try
        frm_repo_czyyjrb.qry_dy.Close;
        frm_repo_czyyjrb.qry_dy.SQL.Text :='exec zysf_cz_czyjkd '''+qry_cxjz.fieldbyname('jzdh').asstring+''' ';
        frm_repo_czyyjrb.qry_dy.Open;
        if (username = 'sys_zysf') or (username = 'sys_mzsf') then
          frm_repo_czyyjrb.sfczy.Caption := '收费操作员:' + pub_czyxm
        else
          frm_repo_czyyjrb.sfczy.Caption := '收费操作员:' + trim(frm_zysfyrb.ad_sfrb.fieldbyname('xm').asstring);
//        frm_repo_czyyjrb.sfrq.Caption := '结帐期间:' + datetimetostr(frm_repo_czyyjrb.qry_dy['ksrq']) + '至' +
//          datetimetostr(frm_repo_czyyjrb.qry_dy['jsrq']);
        frm_repo_czyyjrb.sfrq.Caption := '结帐期间:' + datetimetostr(frm_repo_czyyjrb.qry_dy.FieldByName('ksrq').AsDateTime) + '至' +
        datetimetostr(frm_repo_czyyjrb.qry_dy.FieldByName('jsrq').AsDateTime);
        frm_repo_czyyjrb.jzdh.Caption := '单号:' + trim(qry_cxjz.fieldbyname('jzdh').asstring);
        frm_repo_czyyjrb.dxje.Caption := '大写:' + NumberToMoney(frm_repo_czyyjrb.qry_dy.fieldbyname('hjje').asfloat);
        frm_repo_czyyjrb.QuickRep1.Preview;
      finally
        try
          frm_repo_czyyjrb.free;
        except
        end;
      end;
  end
  else
  begin
    application.MessageBox('请选择结帐单号!', '提示', 0 + 16);
  end;
end;

procedure Tfrm_zyczyrb.BitBtn2Click(Sender: TObject);
var jzdh:string;
begin
  if qry_cxjz.RecordCount > 0 then
  begin
    jzdh:= qry_cxjz.fieldbyname('jzdh').asstring;
    application.CreateForm(Tfrm_repo_czyjsrb, frm_repo_czyjsrb);
    try
      frm_repo_czyjsrb.qry_dy.Close;
      frm_repo_czyjsrb.qry_dy.Parameters.ParamByName('jzdh').value := jzdh;
      frm_repo_czyjsrb.qry_dy.Open;
      if pub_yydm='0261' then
      begin
        frm_repo_czyjsrb.QRLabel3.Free;
        frm_repo_czyjsrb.QRLabel4.Free;
        frm_repo_czyjsrb.QRDBText12.Free;
        frm_repo_czyjsrb.QRDBText13.Free;
        
        frm_repo_czyjsrb.qry_bkxj.Close;
        frm_repo_czyjsrb.qry_bkxj.Parameters.ParamByName('jzbh1').value := jzdh;
        frm_repo_czyjsrb.qry_bkxj.Parameters.ParamByName('jzbh2').value := jzdh;
        frm_repo_czyjsrb.qry_bkxj.Parameters.ParamByName('jzbh3').value := jzdh;
        frm_repo_czyjsrb.qry_bkxj.Parameters.ParamByName('jzbh4').value := jzdh;
        frm_repo_czyjsrb.qry_bkxj.Parameters.ParamByName('jzbh5').value := jzdh;
        frm_repo_czyjsrb.qry_bkxj.Parameters.ParamByName('jzbh6').value := jzdh;
        frm_repo_czyjsrb.qry_bkxj.Open;
      end else
      begin
        with frm_repo_czyjsrb do
          begin
            qrlbl_jsbk.Free;
            qrlbl_xj.Free;
            qrlbl_sk.Free;
            qrlbl_sb.Free;
            qrlbl_sl.Free;
            qrlbl_zje.Free;
            fzsmbksksl.Visible := False;
            bkxjsl.Visible := False;
            bksbsl.visible := False;
            bkxjzje.Visible := False;
            bkskzje.Visible := False;
            bksbzje.Visible := False;
            qrlbl_jstk.Free;
            qrlbl_xjt.Free;
            qrlbl_skt.Free;
            qrlbl_sbt.Free;
            qrlbl_slt.Free;
            qrlbl_jet.Free;
            tkxjsl.visible := False;
            tksksl.visible := False;
            tksbsl.visible := False;
            tkxjzje.visible := False;
            tkskzje.visible := False;
            tksbzje.visible := False;
            qrshp1.visible := False;
            qrshp2.visible := False;

            if pub_yydm<>'0269' then
            begin
              QRShape10.Top := 200;
              QRLabel10.Top := 202;
              QRDBText10.top := 202;
              QRShape3.Top := 255;
              QRLabel11.Top := 259;
              QRDBText11.Top := 258;
               QRLabel3.Free;
              QRLabel4.Free;
              QRDBText12.Free;
              QRDBText13.Free;
            end else
            begin
              QRShape10.Top := 220;
              QRLabel10.Top := 222;
              QRDBText10.top := 226;
              QRShape3.Top := 275;
              QRLabel11.Top := 279;
              QRDBText11.Top := 278;
            end;

          end;

      end;

      if (username = 'sys_zysf') or (username = 'sys_mzsf') then
        frm_repo_czyjsrb.sfczy.Caption := '收费操作员:' + pub_czyxm
      else
        frm_repo_czyjsrb.sfczy.Caption := '收费操作员:' + trim(frm_zysfyrb.ad_sfrb.fieldbyname('xm').asstring);
//      frm_repo_czyjsrb.sfrq.Caption := '结帐期间:' + datetimetostr(frm_repo_czyjsrb.qry_dy['ksrq']) + '至' +
//        datetimetostr(frm_repo_czyjsrb.qry_dy['jsrq']);
        frm_repo_czyjsrb.sfrq.Caption := '结帐期间:' + datetimetostr(frm_repo_czyjsrb.qry_dy.fieldbyname('ksrq').AsDateTime) + '至' +
        datetimetostr(frm_repo_czyjsrb.qry_dy.fieldbyname('jsrq').AsDateTime);
      frm_repo_czyjsrb.jzdh.Caption := '单号:' + trim(qry_cxjz.fieldbyname('jzdh').asstring);
      frm_repo_czyjsrb.dxje.Caption := '大写:' + NumberToMoney(frm_repo_czyjsrb.qry_dy.fieldbyname('jsssje').asfloat);
      frm_repo_czyjsrb.QuickRep1.Preview;
    finally
      try
        frm_repo_czyjsrb.free;
      except
      end;
    end;
  end
  else
  begin
    application.MessageBox('请选择结帐单号!', '提示', 0 + 16);
  end;
end;
initialization
  RegisterClass(Tfrm_zyczyrb);
end.

