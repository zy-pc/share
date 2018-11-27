unit p_czyjz_mz;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, CheckLst, Db, DBTables, ExtCtrls, Buttons, ADODB, Qrctrls,
  QuickRpt, Menus, cxLookAndFeelPainters, cxButtons, cxControls, cxContainer,
  cxEdit, cxTextEdit;

type
  Tfrm_czyjz = class(TForm)
    BitBtn1: TcxButton;
    BitBtn2: TcxButton;
    BitBtn4: TcxButton;
    Bevel1: TBevel;
    sp_srzk: TADOStoredProc;
    sp_cxsjh: TADOStoredProc;
    sp_jzdy: TADOStoredProc;
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    Memo1: TMemo;
    Label2: TLabel;
    Memo2: TMemo;
    Label3: TLabel;
    Memo3: TMemo;
    Panel3: TPanel;
    GroupBox1: TGroupBox;
    Label9: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label20: TLabel;
    Label19: TLabel;
    Edit1: TcxTextEdit;
    Edit2: TcxTextEdit;
    Edit3: TcxTextEdit;
    Edit4: TcxTextEdit;
    Edit6: TcxTextEdit;
    Edit5: TcxTextEdit;
    GroupBox2: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Edit31: TcxTextEdit;
    Edit32: TcxTextEdit;
    Edit33: TcxTextEdit;
    Edit34: TcxTextEdit;
    Panel4: TPanel;
    Label14: TLabel;
    Edit7: TcxTextEdit;
    QuickRep1: TQuickRep;
    TitleBand1: TQRBand;
    QRShape3: TQRShape;
    star_date: TQRLabel;
    end_date: TQRLabel;
    czydm: TQRLabel;
    bt: TQRLabel;
    QRShape17: TQRShape;
    QRDBText9: TQRDBText;
    QRShape28: TQRShape;
    QRShape19: TQRShape;
    QRShape18: TQRShape;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRShape20: TQRShape;
    QRShape21: TQRShape;
    QRShape22: TQRShape;
    QRShape23: TQRShape;
    QRShape24: TQRShape;
    QRShape25: TQRShape;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRLabel19: TQRLabel;
    QRDBText18: TQRDBText;
    QRLabel2: TQRLabel;
    QRShape27: TQRShape;
    dxje: TQRLabel;
    QRLabel3: TQRLabel;
    QRShape26: TQRShape;
    SummaryBand1: TQRBand;
    zbdate: TQRLabel;
    zbr: TQRLabel;
    QRLabel8: TQRLabel;
    qry_dy: TADOQuery;
    QRShape4: TQRShape;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRShape5: TQRShape;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel7: TQRLabel;
    QRShape9: TQRShape;
    Label15: TLabel;
    Edit14: TcxTextEdit;
    QRShape10: TQRShape;
    QRLabel6: TQRLabel;
    QRDBText8: TQRDBText;
    QRLabel9: TQRLabel;
    grp1: TGroupBox;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    edt_1: TcxTextEdit;
    edt_2: TcxTextEdit;
    edt_3: TcxTextEdit;
    edt_4: TcxTextEdit;
    QRDBText19: TQRDBText;
    QRShape11: TQRShape;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRDBText20: TQRDBText;
    QRDBText21: TQRDBText;
    QRDBText22: TQRDBText;
    QRDBText23: TQRDBText;
    Label17: TLabel;
    Edit16: TcxTextEdit;
    Label18: TLabel;
    QRDBText7: TQRDBText;
    QRLabel1: TQRLabel;
    grp2: TGroupBox;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    lbl9: TLabel;
    lbl10: TLabel;
    lbl11: TLabel;
    edit8: TcxTextEdit;
    edit9: TcxTextEdit;
    edit10: TcxTextEdit;
    edit11: TcxTextEdit;
    edit12: TcxTextEdit;
    edit13: TcxTextEdit;
    edit15: TcxTextEdit;
    qry_yjk: TADOQuery;
    QRLabel22: TQRLabel;
    QRShape1: TQRShape;
    yjje: TQRLabel;
    QRShape2: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRLabel23: TQRLabel;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    yjrc: TQRLabel;
    tyjje: TQRLabel;
    tyjrc: TQRLabel;
    zdybb: TCheckBox;
    Ib_yhkzf: TQRLabel;
    lblsjzkf: TLabel;
    edit17: TcxTextEdit;
    QRLabel26: TQRLabel;
    QRDBText24: TQRDBText;
    QRLabel27: TQRLabel;
    QRDBText25: TQRDBText;
    lblsjzkrc: TLabel;
    edit19: TcxTextEdit;
    Label11: TLabel;
    edit18: TcxTextEdit;
    lbltjzkf: TLabel;
    edit20: TcxTextEdit;
    lbltjzkrc: TLabel;
    edit21: TcxTextEdit;
    QRLabel28: TQRLabel;
    QRDBText26: TQRDBText;
    QRLabel29: TQRLabel;
    QRDBText27: TQRDBText;
    QRLabel30: TQRLabel;
    QRDBText28: TQRDBText;
    grp_jzfp: TGroupBox;
    lbl12: TLabel;
    lbl13: TLabel;
    lbl14: TLabel;
    lbl15: TLabel;
    edt_jzfp1: TcxTextEdit;
    edt_jzfp2: TcxTextEdit;
    QRShape29: TQRShape;
    QRLabel31: TQRLabel;
    qrlab_jzfpzrc: TQRLabel;
    QRLabel33: TQRLabel;
    qrlab_jzfpzje: TQRLabel;
    QRLabel37: TQRLabel;
    qrlab_jzfptfrc: TQRLabel;
    QRLabel32: TQRLabel;
    qrlab_jzfptfje: TQRLabel;
    qry_jzfp: TADOQuery;
    edt_jzfp3: TcxTextEdit;
    edt_jzfp4: TcxTextEdit;
    lbl16: TLabel;
    edit22: TcxTextEdit;
    Label16: TLabel;
    edit26: TcxTextEdit;
    Label21: TLabel;
    edit27: TcxTextEdit;
    Label22: TLabel;
    edit28: TcxTextEdit;
    Label23: TLabel;
    edit29: TcxTextEdit;
    QRShape30: TQRShape;
    QRLabel34: TQRLabel;
    QRDBText32: TQRDBText;
    QRLabel36: TQRLabel;
    QRDBText30: TQRDBText;
    QRLabel35: TQRLabel;
    QRDBText33: TQRDBText;
    QRLabel38: TQRLabel;
    QRDBText31: TQRDBText;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRLabelsswr39: TQRLabel;
    QRDBTextsswr29: TQRDBText;
    QRLabelQRLabesswrl40: TQRLabel;
    QRDBTextsswr34: TQRDBText;
    Qry_sh_sswr: TADOQuery;
    QRLabel_mzzcf: TQRLabel;
    qrlbl_mzzcf: TQRLabel;
    lbl_yhkzcf: TLabel;
    cxtxtdt_yhzcf: TcxTextEdit;
    lbl_ybzcf: TLabel;
    cxtxtdt_ybzcf: TcxTextEdit;
    lbl_zzzcf: TLabel;
    cxtxtdt_zzzcf: TcxTextEdit;
    cxtxtdt_xjzcf: TcxTextEdit;
    lbl_xjzcf: TLabel;
    QRShape8: TQRShape;
    QRShape14: TQRShape;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    lbl_sumzcf: TLabel;
    cxtxtdt_Sumzcf: TcxTextEdit;
    QRLabel_yhkzcf: TQRLabel;
    QRLabel_ybzcf: TQRLabel;
    QRLabel_zzzcf: TQRLabel;
    QRLabel_xjzcf: TQRLabel;
    lbl_yhje: TLabel;
    lbl_yhrc: TLabel;
    cxtxtdt_yhje: TcxTextEdit;
    cxtxtdt_yhrc: TcxTextEdit;
    lbl_jzksf: TLabel;
    edt_jzkf: TcxTextEdit;
    QRLabel43: TQRLabel;
    QRDBText29: TQRDBText;
    sp_jzkf: TADOStoredProc;
    procedure cx_jzzk;
    procedure tj_yjk;
    procedure tj_sfzk;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
  private
    sfrc, tfrc, zfrc: integer;
    sfje,jzkssje, tfje, sjje, zfje: real;
    fxjsfrc, fxjtfrc, fxjzfrc: integer;
    jzksrrc,jzktfrc :Integer;
    fxjsfje, fxjtfje, fxjzfje: real;
    sbsfrc, sbtfrc: integer;
    sbsfje, sbtfje, yhhkje, yhktfje,mzgh_mztc,jzksfje,
    jzktfje,sswrje,fxjsbsf,fxjsbtf,fxjzzsf,fxjzztf,mzzcf,xjzcf,yhkzcf,ybzcf,zzzcf,tczfyhje: real;
    zfsjh: string;
    tfsjh: string;
    sjqzh: string;
    jzdh: string;
    jzfpzje, jzfptfje : real;
    jzfpzrc, jzfptfrc,tczfyhrc : integer;

    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_czyjz: Tfrm_czyjz;

implementation

uses P_login, p_dm, p_func, p_rpt_czyrb,p_mzsf_print_service;

{$R *.DFM}



procedure Tfrm_czyjz.tj_yjk;
begin
  qry_yjk.close;
  qry_yjk.sql.text := 'select SUM(fyje) zje,COUNT(*) rc from mzsf_mzyjmxz where jzbz=0 and fyje>0 and sfczy=:sfczy' +
    ' union all select SUM(fyje) zje,COUNT(*) rc from mzsf_mzyjmxz where jzbz=0 and fyje<=0 and sfczy=:sfczy1 ';
  qry_yjk.Parameters.ParamByName('sfczy').value := pub_czydm;
  qry_yjk.Parameters.ParamByName('sfczy1').value := pub_czydm;
  qry_yjk.open;
  edit31.text := '0';
  edit32.text := '0';
  edit33.text := '0';
  edit34.text := '0';
  if qry_yjk.recordcount > 0 then
  begin
    qry_yjk.first;
    while not qry_yjk.eof do
    begin
      if qry_yjk.fieldbyname('zje').asfloat > 0 then
      begin
        edit31.text := floattostr(qry_yjk.fieldbyname('zje').asfloat);
        edit32.text := floattostr(qry_yjk.fieldbyname('rc').asinteger);
      end else
      begin
        edit33.text := floattostr(qry_yjk.fieldbyname('zje').asfloat);
        edit34.text := floattostr(qry_yjk.fieldbyname('rc').asinteger);
      end;
      qry_yjk.next;
    end;           
  end;
end;

procedure Tfrm_czyjz.tj_sfzk;
begin
  with sp_srzk do
  begin
    close;
    parameters.ParamByName('@czydm').value := pub_czydm;
    open;
  end;
  sfje := sp_srzk.fieldbyname('srje').asfloat;
  sfrc := sp_srzk.fieldbyname('srrc').asinteger;
  tfje := sp_srzk.fieldbyname('tfje').asfloat;
  tfrc := sp_srzk.fieldbyname('tfrc').asinteger;
  zfje := sp_srzk.fieldbyname('zfje').asfloat;
  zfrc := sp_srzk.fieldbyname('zfrc').asinteger;
  sjje := sp_srzk.fieldbyname('sjje').asfloat;
  fxjsfje := sp_srzk.fieldbyname('fxjsrje').asfloat;
  fxjsfrc := sp_srzk.fieldbyname('fxjsrrc').asinteger;
  fxjtfje := sp_srzk.fieldbyname('fxjtfje').asfloat;
  fxjtfrc := sp_srzk.fieldbyname('fxjtfrc').asinteger;
  fxjzfje := sp_srzk.fieldbyname('fxjzfje').asfloat;
  fxjzfrc := sp_srzk.fieldbyname('fxjzfrc').asinteger;
  jzksfje :=sp_srzk.fieldbyname('jzksfje').asfloat;
  jzktfje :=sp_srzk.fieldbyname('jzktfje').asfloat;
  jzksrrc :=sp_srzk.fieldbyname('jzksrrc').asinteger;
  jzktfrc :=sp_srzk.fieldbyname('jzktfrc').asinteger;
  jzkssje := sp_srzk.FieldByName('jzksfje').AsFloat;
  if (pub_yydm='0261')or (pub_yydm='0269') then //四舍五入
  begin
    sswrje :=sp_srzk.fieldbyname('sswrje').asfloat;
  end;
  jzfpzje := sp_srzk.fieldbyname('jzfpzje').asfloat;
  jzfpzrc := sp_srzk.fieldbyname('jzfpzrc').asinteger;
  jzfptfje := sp_srzk.fieldbyname('jzfptfje').asfloat;
  jzfptfrc := sp_srzk.fieldbyname('jzfptfrc').asinteger;
  if pub_yydm='0261' then  //四会中医院
  begin
     mzzcf := sp_srzk.fieldbyname('mzzcf').asfloat;  //门诊诊查费
     xjzcf := sp_srzk.fieldbyname('xjzcf').asfloat;  //门诊现金诊查费
     yhkzcf := sp_srzk.fieldbyname('yhkzcf').asfloat;  //门诊银行卡诊查费
     ybzcf := sp_srzk.fieldbyname('ybzcf').asfloat;  //门诊医保诊查费
     zzzcf := sp_srzk.fieldbyname('zzzcf').asfloat;  //门诊转账诊查费
  end;

   if pub_yydm='0271' then  //掇刀医院
  begin
    tczfyhje := sp_srzk.fieldbyname('yhje').asfloat; //优惠金额
    tczfyhrc := sp_srzk.fieldbyname('yhrc').asinteger;  //优惠人次
  end;

  try
    sbsfrc := sp_srzk.FieldByName('sbsrrc').AsInteger;
    sbsfje := sp_srzk.FieldByName('sbsrje').AsFloat;
    sbtfrc := sp_srzk.FieldByName('sbtfrc').AsInteger;
    sbtfje := sp_srzk.FieldByName('sbtfje').AsFloat;
    yhhkje := sp_srzk.FieldByName('fxjyhhk').AsFloat;
    yhktfje :=sp_srzk.FieldByName('fxjyhtf').AsFloat;
    fxjsbsf :=sp_srzk.FieldByName('fxjsbsf').AsFloat;
    fxjsbtf :=sp_srzk.FieldByName('fxjsbtf').AsFloat;
    fxjzzsf :=sp_srzk.FieldByName('fxjzzsf').AsFloat;
    fxjzztf :=sp_srzk.FieldByName('fxjzztf').AsFloat;
    mzgh_mztc := sp_srzk.FieldByName('mzgh_mztc').AsFloat;

  except
  end;
  try
    edit1.Text := format('%8.2f', [sfje]); //floattostr(sfje);
    edit2.Text := inttostr(sfrc);
    edit3.Text := floattostr(tfje);
    edit4.Text := inttostr(tfrc);
    edit5.Text := inttostr(zfrc);
    edit6.Text := floattostr(zfje);
    //edit18.Text := floattostr(sswrje);
    edit7.Text := floattostr(sjje+strtofloat(edit31.text) +strtofloat(edit33.text)); //减去预交金额总额
    edit8.Text := floattostr(fxjsfje);
    edit9.Text := inttostr(fxjsfrc);
    edit10.Text := floattostr(fxjtfje);
    edit11.Text := inttostr(fxjtfrc);
    edit12.Text := floattostr(fxjzfje);
    edit13.Text := inttostr(fxjzfrc);
    edit15.Text := floattostr(yhhkje);
    edt_1.Text := FloatToStr(sbsfje);
    edt_2.Text := IntToStr(sbsfrc);
    edt_3.text := FloatToStr(sbtfje);
    edt_4.text := IntToStr(sbtfrc);
    edit16.Text := floattostr(mzgh_mztc);
    edit17.Text := floattostr(jzksfje);
    edit19.Text := IntToStr(jzksrrc);
    edit20.Text := floattostr(jzktfje);
    edit21.Text := IntToStr(jzktfrc);
    if (pub_yydm='0261')or (pub_yydm='0269') then //四舍五入
    begin
      edit18.Text := floattostr(sswrje);
    end;
    edit22.Text := floattostr(yhktfje);
    edit26.Text := floattostr(fxjsbsf);
    edit27.Text := floattostr(fxjsbtf);
    edit28.Text := floattostr(fxjzzsf);
    edit29.Text := floattostr(fxjzztf);
    edt_jzfp1.Text := floattostr(jzfpzje);
    edt_jzfp2.Text := IntToStr(jzfpzrc);
    edt_jzfp3.Text := floattostr(jzfptfje);
    edt_jzfp4.Text := IntToStr(jzfptfrc);
    edt_jzkf.Text := floattostr(jzkssje);
    if pub_yydm='0261' then  //四会中医院
    begin
      cxtxtdt_Sumzcf.Text := floattostr(mzzcf); //门诊现金诊查费
      cxtxtdt_xjzcf.Text := floattostr(xjzcf); //门诊现金诊查费
      cxtxtdt_yhzcf.Text := floattostr(yhkzcf); //门诊银行诊查费
      cxtxtdt_ybzcf.Text := floattostr(ybzcf); //门诊医保诊查费
      cxtxtdt_zzzcf.Text := floattostr(zzzcf); //门诊转账诊查费
    end;
    if pub_yydm='0271' then //掇刀医院
    begin
      cxtxtdt_yhje.Text :=  floattostr(tczfyhje);
      cxtxtdt_yhrc.Text :=  IntToStr(tczfyhrc);
    end;
  except
  end;

  with sp_cxsjh do
  begin
    close;
    parameters.ParamByName('@czydm').value := pub_czydm;
    open;
  end;
  zfsjh := sp_cxsjh.fieldbyname('zfsjh').asstring;
  tfsjh := sp_cxsjh.fieldbyname('tfsjh').asstring;
  sjqzh := sp_cxsjh.fieldbyname('sjqzh').asstring;
  Edit14.Text := IntToStr(sp_cxsjh.fieldbyname('sjsysl').AsInteger);
  memo3.Lines.clear;
  memo2.Lines.clear;
  memo1.Lines.clear;
  memo3.Lines.Add(zfsjh);
  memo2.Lines.Add(tfsjh);
  memo1.Lines.Add(sjqzh);
end;

procedure Tfrm_czyjz.cx_jzzk;
begin
  try
    with sp_srzk do
    begin
      active := false;
      parameters.ParamByName('@sr_czydm').value := pub_czydm;
      parameters.ParamByName('@sr_zt').value := '1'; //结帐
      parameters.ParamByName('@sc_zt').value := '0';
      execproc;
    end;
    with sp_cxsjh do
    begin
      active := false;
      parameters.ParamByName('@sr_czydm').value := pub_czydm;
      parameters.ParamByName('@sr_zt').value := '0'; //打印
      parameters.ParamByName('@sc_zt').value := '0';
      execproc;
    end
  except
    application.MessageBox('没有数据不能统计', '提示', 0 + 16);
    abort;
  end;
end;

procedure Tfrm_czyjz.BitBtn1Click(Sender: TObject);
var
  jzzt: string;
  jzrq: Tdatetime;
begin
  if (sjje = 0) and (tfje = 0) and (fxjsfje = 0) and (sbsfje = 0) and (trim(edit31.text) = '0') and  (trim(edit33.text) = '0') then
  begin
    application.MessageBox('没有统计数据不能结帐!', '提示', 0 + 16);
    abort;
  end;
  tj_sfzk;
  jzdh := get_sjh(pub_czydm);
  jzrq := frm_func.curr_date;
  jzzt := mzsf_czyjz(jzdh, pub_czydm, sjqzh, zfsjh, tfsjh, jzrq, 0,
    sfrc, tfrc, zfrc, fxjsfrc, fxjtfrc, fxjzfrc,
    sfje, tfje, zfje, sjje, fxjsfje, fxjtfje, fxjzfje);
  //保存精准扶贫结账数据
  try
    with qry_jzfp do
    begin
      Close;
      SQL.Clear;
      SQL.Text := ' INSERT INTO mzsf_czyjz_jzfp VALUES ( '''+jzdh+''','''+pub_czydm+''','''+DateToStr(jzrq)+' '+timetostr(jzrq)+''','''+edt_jzfp1.Text+''','''+edt_jzfp2.Text+''','''+edt_jzfp3.Text+''','''+edt_jzfp4.Text+''' ) ';
      ExecSQL;
    end;
  except
  end;
  if jzzt = '1' then
  begin
    bitbtn1.Enabled := false;
    if application.MessageBox('结帐成功,是否打印？', '提示', mb_yesno + mb_iconinformation) = IDYES then
    begin
    //预交款结账处理开始

    sp_jzkf.Close;
    sp_jzkf.parameters.ParamByName( '@jzdh' ).value := jzdh;
    sp_jzkf.Open;

    qry_yjk.close;
    qry_yjk.sql.text:='update mzsf_mzyjmxz set jzbz=1 where sfczy=:sfczy';
    qry_yjk.Parameters.ParamByName('sfczy').value := pub_czydm;
    qry_yjk.execsql;

    //四会中医院修改mzsf_sswrfymx中jzbz
    if pub_yydm='0261' then
    begin
      qry_sh_sswr.Close;
      qry_sh_sswr.sql.text := 'update mzsf_sswrfymx set jzbz=1 where sfczy='+''''+pub_czydm+'''';
      qry_sh_sswr.ExecSQL;
     //四会中医院诊查费jzbz修改
//      qry_sh_sswr.Close;
//      qry_sh_sswr.sql.text := 'update mzsf_mzzcfmx set jzbz=1 where sfczy='+''''+pub_czydm+'''';
//      qry_sh_sswr.ExecSQL;
    end;
    //预交款结账处理结束
      with sp_jzdy do
      begin
        active := false;
        parameters.ParamByName('@czydm').value := pub_czydm;
        parameters.ParamByName('@jzdh').value := jzdh;
        open;
      end;
      with qry_dy do
      begin
        active := false;
        parameters.ParamByName('czydm').value := pub_czydm;
        parameters.ParamByName('jzdh').value := jzdh;
        open;
      end;
      czydm.Caption := czydm.Caption + pub_czyxm;
      bt.Caption := pub_yymc + bt.Caption;
      star_date.Caption := star_date.Caption + sp_jzdy.fieldbyname('ksrq').asstring;
      end_date.Caption := end_date.Caption + sp_jzdy.fieldbyname('jsrq').asstring;
      dxje.Caption := '大写:' + numbertomoney(strtofloat(edit7.text));
      zbdate.Caption := zbdate.Caption + datetimetostr(now);
      yjje.Caption :=Trim(edit31.Text);  //预交金额显示0
      yjrc.Caption :=Trim(edit32.Text);
      tyjje.Caption :=Trim(edit33.Text);
      tyjrc.Caption :=Trim(edit34.Text);
      qrlab_jzfpzje.Caption := Trim(edt_jzfp1.Text);  //jzfpzje;
      qrlab_jzfpzrc.Caption := Trim(edt_jzfp2.Text);  //jzfpzrc;
      qrlab_jzfptfje.Caption := Trim(edt_jzfp3.Text); //jzfptfje;
      qrlab_jzfptfrc.Caption := Trim(edt_jzfp4.Text); //jzfptfrc;
      QRDBText29.Caption := Trim(sp_jzkf.FieldByName('jzkf').AsString);
      if pub_yydm='0261' then  //门诊诊查费
      begin
          QRLabel_mzzcf.Visible := True;
          qrlbl_mzzcf.Visible := True;
          qrlbl_mzzcf.Caption:=  Trim(cxtxtdt_Sumzcf.text); //总的诊查费
          QRLabel_yhkzcf.Caption:=  Trim(cxtxtdt_yhzcf.text); //银行卡
          QRLabel_ybzcf.Caption:=  Trim(cxtxtdt_ybzcf.text); //医保
          QRLabel_zzzcf.Caption:=  Trim(cxtxtdt_zzzcf.text); //转账
          QRLabel_xjzcf.Caption:=  Trim(cxtxtdt_xjzcf.text);  //现金
      end;
//      if pub_yydm='0261' then
//      begin
//        QRDBText25.Caption :=Trim(edit18.Text);
//      end;

      Ib_yhkzf.Caption := Trim(edit15.Text); //银行卡支付打印
      if pub_yydm = '0214' then //遂宁民康医院
      begin
        QRLabel5.Caption := '优惠(优抚)';
        QRDBText18.DataField := 'ssje1';
      end
     { else  if pub_yydm = '0256' then  //河南睢县医院添加预交金额
      begin
        QRLabel5.Caption := '其中:卡支付';
        QRDBText18.DataField := 'ssje2' ;
      end  }
      else   //统一版本后添加预交金额
      begin
        QRLabel5.Caption := '其中:卡支付';
        QRDBText18.DataField := 'ssje2';
      end;
      // qrlbl_sbje.Caption := floattostr(sbsfje-sbtfje);
//      if pub_yydm = '0003' then
//      begin
//        qrlabel19.Caption := '卡支付';
//        qrlabel2.Caption := '实收总金额';
//        qrlabel7.Caption := '收社保金额';
//        qrlabel1.Caption := '存银行';
//      end;
      if (pub_yydm='0240') and (jzdh <>'') and (zdybb.Checked) then
      begin
        with dm_data do
        begin
          qry_cxjz_mx.active := false;
          qry_cxjz_mx.SQL.Text := 'exec mzsf_cx_mzjzqk '''+jzdh+'''';
          qry_cxjz_mx.open;
        end;
        frm_mzsf_print_service.print_mzsf_czyjz(DM_data.qry_cxjz_mx,jzdh);
        abort;
      end;
      QuickRep1.Preview;
    end;
  end
  else
  begin
    application.MessageBox('结帐失败!', '提示', 0 + 16);
  end;
end;

procedure Tfrm_czyjz.BitBtn2Click(Sender: TObject);
begin
  tj_yjk;
  tj_sfzk;
end;

procedure Tfrm_czyjz.FormShow(Sender: TObject);
begin
  QuickRep1.Visible := False;
  with dm_data.Qry_pub do
  begin
    close;
    sql.Clear;
    sql.Text := 'select * from mzsf_cwkjz where czydm=' +
      '''' + pub_czydm + '''' + ' and' +
      ' jzbz=' + '''' + '0' + '''';
    open;
  end;
  if  dm_data.Qry_pub.IsEmpty then
  begin
    bitbtn1.Enabled := true;
  end
  else
  begin
    bitbtn1.Enabled := False;
  end;
  if pub_yydm ='0240' then
    zdybb.Visible:=True;
  //宁安医院显示就诊卡办卡金额  
  if pub_yydm='0262' then
  begin
    QRLabel8.Visible:=True;
    QRLabel16.Visible:=True;
    QRLabel21.Visible:=True;
    QRLabel22.Visible:=True;
    lblsjzkf.Visible := True;
    lblsjzkrc.Visible := True;
    lbltjzkf.Visible := True;
    lbltjzkrc.Visible := True;
    edit17.Visible:= True;
    edit19.Visible:= True;
    edit20.Visible:= True;
    edit21.Visible:= True;
    
  end
  else
  begin
    QRLabel26.top:=10000;
    QRLabel28.top:=10000;
    QRLabel29.top:=10000;
    QRLabel30.top:=10000;
    QRDBText24.top:=1000;
    QRDBText26.top:=1000;
    QRDBText27.top:=1000;
    QRDBText28.top:=1000;
    QRLabel8.Visible:=False;
    QRLabel16.Visible:=false;
    QRLabel21.Visible:=false;
    QRLabel22.Visible:=false;
    lblsjzkf.Visible := False;
    lblsjzkrc.Visible := False;
    lbltjzkf.Visible := False;
    lbltjzkrc.Visible := False;
    edit17.Visible:= False;
    edit19.Visible:= False;
    edit20.Visible:= False;
    edit21.Visible:= False;
  end;
  if (pub_yydm='0261')or (pub_yydm='0269') then
  begin
    QRLabel1.Visible:=True;
    Label11.Visible:= True;
    edit18.Visible:= True;
    edit26.Visible:= True;
    edit27.Visible:= True;
    edit28.Visible:= True;
    edit29.Visible:= True;
    label16.Visible:= True;
    label21.Visible:= True;
    label22.Visible:= True;
    label23.Visible:= True;
    QRLabel34.Visible:= True;
    QRLabel35.Visible:= True;
    QRLabel36.Visible:= True;
    QRLabel38.Visible:= True;
  end
  else
  begin
    QRLabel27.top:=10000;
    QRDBText25.top:=10000; //
    QRLabel34.top:=10000;
    QRLabel35.top:=10000;
    QRLabel36.top:=10000;
    QRLabel38.top:=10000;
    //
    QRDBText32.top:=10000;
    QRDBText33.top:=10000;
    QRDBText30.top:=10000;
    QRDBText31.top:=10000;
    QRLabel1.Visible:=False;
    Label11.Visible:= False;
    edit18.Visible:= False;
    edit26.Visible:= False;
    edit27.Visible:= False;
    edit28.Visible:= False;
    edit29.Visible:= False;
    label16.Visible:= False;
    label21.Visible:= False;
    label22.Visible:= False;
    label23.Visible:= False;
  end;
  if pub_yydm='0261' then  //四会中医院
  begin
    lbl_sumzcf.Visible:= True; //门诊诊查费
    cxtxtdt_Sumzcf.Visible:= True;  //门诊诊查费
    lbl_xjzcf.Visible:= True; //门诊现金诊查费
    cxtxtdt_xjzcf.Visible:= True;  //门诊现金诊查费
    lbl_yhkzcf.Visible:= True; //门诊银行卡诊查费
    cxtxtdt_yhzcf.Visible:= True;  //门诊银行卡诊查费
    lbl_zzzcf.Visible:= True; //门诊转账诊查费
    cxtxtdt_zzzcf.Visible:= True;  //门诊转账诊查费
    lbl_ybzcf.Visible:= True; //门诊医保诊查费
    cxtxtdt_ybzcf.Visible:= True;  //门诊医保诊查费
  end;
  if pub_yydm='0271' then //掇刀医院
  begin
    grp_jzfp.Visible:=False;
    lbl_yhje.Visible:=True;
    lbl_yhrc.Visible:=True;
    cxtxtdt_yhje.Visible:=True;
    cxtxtdt_yhrc.Visible:=True;
  end
   else if pub_yydm='0225' then //镇坪医院就诊卡费
  begin
    lbl_jzksf.Visible:=True;
    lbl_jzksf.Top:=178;
    edt_jzkf.Visible:=True;
    edt_jzkf.Top:=178;
    grp_jzfp.Visible:=False;
  end
  else
  begin
    grp_jzfp.Visible:=True;
    lbl_yhje.Visible:=false;
    lbl_yhrc.Visible:=false;
    cxtxtdt_yhje.Visible:=false;
    cxtxtdt_yhrc.Visible:=false;
  end;
end;

procedure Tfrm_czyjz.BitBtn4Click(Sender: TObject);
begin
  close;
end;

end.

