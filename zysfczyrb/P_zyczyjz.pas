unit P_zyczyjz;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, CheckLst, Db, DBTables, ExtCtrls, Buttons, Mask, DBCtrls, ADODB,
  Menus, cxLookAndFeelPainters, cxButtons,Variants;

type
  Tfrm_zyczyjz = class(TForm)
    BitBtn1: TcxButton;
    BitBtn2: TcxButton;
    BitBtn4: TcxButton;
    Bevel1: TBevel;
    Label9: TLabel;
    Label10: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Bevel2: TBevel;
    Memo1: TMemo;
    Memo2: TMemo;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    ds_sfzk: TDataSource;
    ds_sjh: TDataSource;
    Label5: TLabel;
    DBEdit9: TDBEdit;
    BitBtn3: TcxButton;
    sp_czyjz: TADOStoredProc;
    sp_cxsjh: TADOStoredProc;
    sp_srzk: TADOStoredProc;
    Label8: TLabel;
    ds_cxczy: TDataSource;
    qry_cxczy: TADOQuery;
    czybox: TDBLookupComboBox;
    Label11: TLabel;
    DBEdit10: TDBEdit;
    lbl1: TLabel;
    dbedtzyjrc: TDBEdit;
    lbl2: TLabel;
    dbedtzyjze: TDBEdit;
    grp_jzfp: TGroupBox;
    lbl_1: TLabel;
    edt_syjze: TDBEdit;
    lbl_2: TLabel;
    edt_syjrc: TDBEdit;
    lbl_3: TLabel;
    lbl_4: TLabel;
    edt_tyjze: TDBEdit;
    edt_tyjrc: TDBEdit;
    lbl_5: TLabel;
    lbl_6: TLabel;
    lbl_7: TLabel;
    lbl_8: TLabel;
    edt_cytxje: TDBEdit;
    edt_cybxje: TDBEdit;
    edt_cytxrc: TDBEdit;
    edt_cybxrc: TDBEdit;
    grp2: TGroupBox;
    qry_jzfp: TADOQuery;
    yfzje: TLabel;
    Label12: TLabel;
    yf_zje: TDBEdit;
    mzbz_je: TDBEdit;
    lbl_yhje: TLabel;
    dbedt_yhje: TDBEdit;
    procedure cx_jzzk;
    procedure tj_sfzk;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure czyboxCloseUp(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    syjrc, tyjrc, txyfrc, cybxrc, cytxrc, zyjrc: integer;
    syjze, tyjze, cybxje, cytxje, ssje, zyjze,ts_yfzje,ts_mzbzje: real;
    tfsjh: string;
    sjqzh: string;
    jzdh: string;
    jzrq: Tdatetime;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_zyczyjz: Tfrm_zyczyjz;

implementation

uses P_login, p_dm, p_func, p_zyczyrb;

{$R *.DFM}

procedure Tfrm_zyczyjz.tj_sfzk;
var
  czy:string;
begin
  if czybox.keyvalue = NULL then
    czy := pub_czydm
  else
    czy := czybox.keyvalue;

  with sp_srzk do begin
    close;
    parameters.ParamByName('@czydm').value := czy;
    open;
  end;
  syjze := sp_srzk.fieldbyname('syjze').asfloat;
  syjrc := sp_srzk.fieldbyname('syjrc').asinteger;
  tyjze := sp_srzk.fieldbyname('tyjze').asfloat;
  tyjrc := sp_srzk.fieldbyname('tyjrc').asinteger;
  cybxje := sp_srzk.fieldbyname('cybxje').asfloat;
  cytxje := sp_srzk.fieldbyname('cytxje').asFloat;
  cybxrc := sp_srzk.fieldbyname('cybxrc').asinteger;
  cytxrc := sp_srzk.fieldbyname('cytxrc').asinteger;
  ssje := sp_srzk.fieldbyname('ssje').asfloat;
  //在院结算
  zyjrc :=  sp_srzk.fieldbyname('zyjrc').asinteger;
  zyjze := sp_srzk.fieldbyname('zyjze').asFloat;
  with sp_cxsjh do begin
    close;
    parameters.ParamByName('@czydm').value := czy;
    open;
  end;

  tfsjh := sp_cxsjh.fieldbyname('tfsjh').asstring;
  sjqzh := sp_cxsjh.fieldbyname('sjqzh').asstring;

  if pub_yydm='0269' then  //台山优抚总金额和民政补助总金额
  begin
    ts_yfzje := sp_srzk.fieldbyname('ts_yfzje').asfloat;
    ts_mzbzje := sp_srzk.fieldbyname('ts_mzbzje').asfloat;
  end;
  
  memo2.Lines.clear;
  memo1.Lines.clear;
  memo2.Lines.Add(tfsjh);
  memo1.Lines.Add(sjqzh);
end;

procedure Tfrm_zyczyjz.cx_jzzk;
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

procedure Tfrm_zyczyjz.BitBtn1Click(Sender: TObject);
var returnvalue,czy: string;
begin
  if czybox.keyvalue = NULL then
    czy := pub_czydm
  else
    czy := czybox.keyvalue;

  if (syjze = 0) and (tyjze = 0) and (ssje = 0) and (zyjze =0) then
  begin
    application.MessageBox('没有统计数据不能结帐!', '提示', 0 + 16);
    Exit;
  end;
  tj_sfzk;
  jzdh := get_sjh(pub_czydm);
  jzrq := frm_func.curr_date;
  with sp_czyjz do begin
    active := false;
    parameters.ParamByName('@jzdh').value := jzdh;
    parameters.ParamByName('@czydm').value := czy;
    parameters.ParamByName('@sjqzh').value := sjqzh;
    parameters.ParamByName('@tfsjh').value := tfsjh;
    parameters.ParamByName('@jzrq').value := jzrq;
    parameters.ParamByName('@syjze').value := syjze;
    parameters.ParamByName('@syjrc').value := syjrc;
    parameters.ParamByName('@tyjze').value := tyjze;
    parameters.ParamByName('@tyjrc').value := tyjrc;
    parameters.ParamByName('@cybxje').value := cybxje;
    parameters.ParamByName('@cytxje').value := cytxje;
    parameters.ParamByName('@cytxrc').value := cytxrc;
    parameters.ParamByName('@cybxrc').value := cybxrc;
    parameters.ParamByName('@ssje').value := ssje;
    parameters.ParamByName('@tsyfzje').value := ts_yfzje ;   //台山优抚总金额
    parameters.ParamByName('@tsmzbzje').value := ts_mzbzje;  //台山民政补助金额
    parameters.ParamByName('@sczt').value := '0';
    execproc;
  end;
  //保存精准扶贫结账数据---------------自动结账作业没有数据保存
  try
    with qry_jzfp do
    begin
      Close;
      SQL.Clear;
      SQL.Text := ' INSERT INTO zysf_czyjz_jzfp VALUES ( '''+jzdh+''','''+czy+''','''+DateToStr(jzrq)+' '+timetostr(jzrq)+''','''+edt_syjze.Text+''','''+edt_syjrc.Text+''','''+edt_tyjze.Text+''','''+edt_tyjrc.Text+''','''+edt_cytxje.Text+''','''+edt_cytxrc.Text+''','''+edt_cybxje.Text+''','''+edt_cybxrc.Text+''' ) ';
      ExecSQL;
    end;
  except
  end;

  returnvalue := sp_czyjz.parameters.ParamByName('@sczt').value;
  if sp_czyjz.parameters.ParamByName('@sczt').value = '1' then
  begin
    bitbtn1.Enabled := false;
    application.MessageBox('结帐成功!', '提示', 0 + 48);
  end
  else
  begin
    application.MessageBox('结帐失败!', '提示', 0 + 16);
  end;
end;

procedure Tfrm_zyczyjz.BitBtn2Click(Sender: TObject);
begin

  tj_sfzk;    //统计
end;

procedure Tfrm_zyczyjz.FormCreate(Sender: TObject);
begin
  if (username = 'sys_zysf') or (username = 'sys_mzsf') then
  begin
    czybox.Enabled := false;
    czybox.KeyValue := pub_czydm;
  end;
end;

procedure Tfrm_zyczyjz.FormShow(Sender: TObject);
begin
  qry_cxczy.Open;
  if qry_cxczy.IsEmpty then begin
    bitbtn1.Enabled := false;
  end
  else begin
    bitbtn1.Enabled := true;
  end;
  if pub_yydm<>'0269' then
  begin
    yfzje.Visible :=false;
    Label12.Visible :=false;
    yf_zje.Visible :=false;
    mzbz_je.Visible :=false;
  end;
  if pub_yydm='0271' then
  begin
    grp_jzfp.Visible:=false;
  end else
  begin
    grp_jzfp.Visible:=True;
  end;
end;

procedure Tfrm_zyczyjz.BitBtn4Click(Sender: TObject);
begin
  close;
end;

procedure Tfrm_zyczyjz.BitBtn3Click(Sender: TObject);
begin
  application.CreateForm(Tfrm_zyczyrb, frm_zyczyrb);
  try
    frm_zyczyrb.showmodal;
  finally
    frm_zyczyrb.free;
  end;
end;

procedure Tfrm_zyczyjz.czyboxCloseUp(Sender: TObject);
begin
  sp_srzk.close;
end;
initialization
  RegisterClass(Tfrm_zyczyjz);
end.
