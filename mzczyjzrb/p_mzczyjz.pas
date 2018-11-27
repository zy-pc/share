unit p_mzczyjz;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, CheckLst, Db, DBTables, ExtCtrls, Buttons, ADODB, Qrctrls,
  QuickRpt, Grids, DBGrids, DBCtrls;

type
  Tfrm_mzczyjz = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn4: TBitBtn;
    Bevel1: TBevel;
    sp_czyjz: TADOStoredProc;
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
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit6: TEdit;
    Edit5: TEdit;
    GroupBox2: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label11: TLabel;
    Edit8: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    Edit11: TEdit;
    Edit12: TEdit;
    Edit13: TEdit;
    Panel4: TPanel;
    Label14: TLabel;
    Edit7: TEdit;
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
    QRLabel1: TQRLabel;
    QRShape2: TQRShape;
    QRLabel2: TQRLabel;
    QRShape27: TQRShape;
    QRShape1: TQRShape;
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
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRLabel7: TQRLabel;
    QRShape9: TQRShape;
    QRDBText7: TQRDBText;
    qry_cxczy: TADOQuery;
    ds_cxczy: TDataSource;
    Label15: TLabel;
    czybox: TDBLookupComboBox;
    Edit14: TEdit;
    Label16: TLabel;
    procedure cx_jzzk;
    procedure tj_sfzk;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure qry_cxczyAfterScroll(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
  private
    sfrc, tfrc, zfrc: integer;
    sfje, tfje, sjje, zfje: real;
    fxjsfrc, fxjtfrc, fxjzfrc: integer;
    fxjsfje, fxjtfje, fxjzfje: real;
    zfsjh: string;
    tfsjh: string;
    sjqzh: string;
    jzdh: string;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_mzczyjz: Tfrm_mzczyjz;

implementation

uses P_login, p_dm, p_func, p_rpt_czyrb;

{$R *.DFM}

procedure Tfrm_mzczyjz.tj_sfzk;
begin
  with sp_srzk do
  begin
    close;
    parameters.ParamByName('@czydm').value := trim(qry_cxczy.fieldbyname('dm').asstring);
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
  try
    edit1.Text := floattostr(sfje);
    edit2.Text := inttostr(sfrc);
    edit3.Text := floattostr(tfje);
    edit4.Text := inttostr(tfrc);
    edit5.Text := inttostr(zfrc);
    edit6.Text := floattostr(zfje);
    edit7.Text := floattostr(sjje);
    edit8.Text := floattostr(fxjsfje);
    edit9.Text := inttostr(fxjsfrc);
    edit10.Text := floattostr(fxjtfje);
    edit11.Text := inttostr(fxjtfrc);
    edit12.Text := inttostr(fxjzfrc);
    edit13.Text := floattostr(fxjzfje);
  except
  end;
  with sp_cxsjh do
  begin
    close;
    parameters.ParamByName('@czydm').value := trim(qry_cxczy.fieldbyname('dm').asstring);
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

procedure Tfrm_mzczyjz.cx_jzzk;
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

procedure Tfrm_mzczyjz.BitBtn1Click(Sender: TObject);
var
  jzzt: string;
  jzrq: Tdatetime;
begin
  if (sjje = 0) and (tfje = 0) and (fxjsfje = 0) then
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
  if jzzt = '1' then
  begin
    bitbtn1.Enabled := false;
    if application.MessageBox('结帐成功,是否打印？', '提示', mb_yesno + mb_iconinformation) = IDYES then
    begin
      with sp_jzdy do begin
        active := false;
        parameters.ParamByName('@czydm').value := pub_czydm;
        parameters.ParamByName('@jzdh').value := jzdh;
        open;
      end;
      with qry_dy do begin
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
      QuickRep1.Preview;
    end;
  end
  else
  begin
    application.MessageBox('结帐失败!', '提示', 0 + 16);
  end;
end;

procedure Tfrm_mzczyjz.BitBtn2Click(Sender: TObject);
begin
  tj_sfzk;
end;

procedure Tfrm_mzczyjz.FormCreate(Sender: TObject);
begin
  if (username = 'sys_zysf') or (username = 'sys_mzsf') then
  begin
    czybox.Enabled := false;
    czybox.KeyValue := pub_czydm;
  end;
end;

procedure Tfrm_mzczyjz.FormShow(Sender: TObject);
begin
  qry_cxczy.active := false;
  qry_cxczy.open;
end;

procedure Tfrm_mzczyjz.BitBtn4Click(Sender: TObject);
begin
  close;
end;

procedure Tfrm_mzczyjz.qry_cxczyAfterScroll(DataSet: TDataSet);
begin
  with dm_data.Qry_pub do begin
    close;
    sql.Clear;
    sql.Text := 'select * from mzsf_cwkjz where czydm=' +
      '''' + qry_cxczy['dm'] + '''' + ' and' +
      ' jzbz=' + '''' + '0' + '''';
    open;
  end;
  if dm_data.Qry_pub.IsEmpty then begin
    bitbtn1.Enabled := true;
  end else begin
    bitbtn1.Enabled := false;
  end;
end;
initialization
  RegisterClass(Tfrm_mzczyjz);
end.

