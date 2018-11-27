unit p_brcy;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Grids, DBGridEh, ExtCtrls, DBSumLst, p_dm, Db, ADODB,
  DBGrids, GridsEh, Mask, DBCtrlsEh, DBGridEhGrouping,Registry;

type
  Tfrm_brcy = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    tmh: TEdit;
    Label5: TLabel;
    bch: TEdit;
    Label2: TLabel;
    fylb: TEdit;
    Label3: TLabel;
    zfy: TEdit;
    Label4: TLabel;
    zyj: TEdit;
    Label11: TLabel;
    zzf: TEdit;
    Label12: TLabel;
    syje: TEdit;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    ryrq: TEdit;
    zyts: TEdit;
    zgys: TEdit;
    GroupBox2: TGroupBox;
    Panel2: TPanel;
    DBGridEh2: TDBGridEh;
    B_cy: TBitBtn;
    B_final: TBitBtn;
    sp_cx_zybrjbqk: TADOStoredProc;
    ds_zybrjbqk: TDataSource;
    ds_wsfyp: TDataSource;
    ds_wsfxycf: TDataSource;
    ad_zydm: TADODataSet;
    ad_xydm: TADODataSet;
    ds_wsfzycf: TDataSource;
    Panel3: TPanel;
    GroupBox1: TGroupBox;
    db_zycf: TDBGridEh;
    GroupBox3: TGroupBox;
    db_xycf: TDBGridEh;
    ad_wsfxycf: TADODataSet;
    ad_wsfzycf: TADODataSet;
    ad_wsfyp: TADODataSet;
    ad_wsfypcfbh: TStringField;
    ad_wsfypypdm: TStringField;
    ad_wsfypypdw: TStringField;
    ad_wsfypypdj: TBCDField;
    ad_wsfypypsl: TBCDField;
    ad_wsfypypje: TCurrencyField;
    ad_czy: TADODataSet;
    ad_wsfxycfcfbh: TStringField;
    ad_wsfxycfcfzje: TBCDField;
    ad_wsfxycfysdm: TStringField;
    ad_wsfxycfsfbz: TBooleanField;
    ad_wsfzycfcfbh: TStringField;
    ad_wsfzycfcfzje: TBCDField;
    ad_wsfzycfysdm: TStringField;
    ad_wsfzycfsfbz: TBooleanField;
    ad_wsfypypmcc: TStringField;
    ad_wsfxycfysxm: TStringField;
    ad_wsfzycfysxm: TStringField;
    DBSumList2: TDBSumList;
    ad_wsfzycfzfje: TBCDField;
    sp_get_ph: TADOStoredProc;
    ad_zyfymx_ls: TADODataSet;
    ad_wsfxycfzfzje: TBCDField;
    B_cancel: TBitBtn;
    sp_up_cy: TADOStoredProc;
    tempgrid1: TDBGrid;
    Label23: TLabel;
    cxDateEdit1: TDBDateTimeEditEh;
    Label9: TLabel;
    BitBtn1: TBitBtn;
    qry_zydj: TADOQuery;
    Qry_cf: TADOQuery;
    SP_cfbh: TADOStoredProc;
    SP_save: TADOStoredProc;
    ad_wsfxycfczks: TStringField;
    ad_wsfxycfpldh: TStringField;
    ad_wsfzycfczks: TStringField;
    ad_wsfzycfpldh: TStringField;
    sp_brxx: TADOStoredProc;
    Label10: TLabel;
    ComboBox1: TComboBox;
    qry_cx_jcxmwz: TADOQuery;
    Label13: TLabel;
    cyzd: TEdit;
    DBGridEh1: TDBGridEh;
    qry_jbmc: TADOQuery;
    ds_jbmc: TDataSource;
    qry_cyzd: TADOQuery;
    qry_kspd: TADOQuery;
    Label14: TLabel;
    zwyy: TEdit;
    Label15: TLabel;
    bah: TEdit;
    brjcjy_qf: TADOStoredProc;
    qfbz_kg: TADOQuery;
    sp_cqyzqr: TADOStoredProc;
    conn_ba: TADOConnection;
    procedure tmhExit(Sender: TObject);
    procedure tempgrid1Exit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure ad_wsfypCalcFields(DataSet: TDataSet);
    procedure ad_wsfxycfAfterScroll(DataSet: TDataSet);
    procedure ad_wsfzycfAfterScroll(DataSet: TDataSet);
    procedure db_xycfEnter(Sender: TObject);
    procedure db_xycfExit(Sender: TObject);
    procedure db_zycfExit(Sender: TObject);
    procedure db_zycfEnter(Sender: TObject);
    procedure ad_wsfxycfsfbzChange(Sender: TField);
    procedure ad_wsfzycfsfbzChange(Sender: TField);
    procedure B_cyClick(Sender: TObject);
    procedure B_cancelClick(Sender: TObject);
    procedure tmhEnter(Sender: TObject);
    procedure B_finalClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure cyzdKeyPress(Sender: TObject; var Key: Char);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure DBGridEh1Exit(Sender: TObject);
    procedure DBGridEh1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    Max_wfycfsl: Integer; //未发药处方数量
    Fcrzyh:string;//传入住院号
    FJBBM:string;//疾病编码
    function GetMaxWfycfsl(xycfsl,zycfsl:Integer):Integer; //取得最大未发药处方数量
    procedure displayByWfycfsl;//如果未发药处方数量大于1　则刷新数据集，而不是关闭
    procedure displayvalue;
    procedure displaynone;
    function  bqglData_Conn: boolean; //病案库连接注册表
  public
    { Public declarations }
     property crzyh:string  read Fcrzyh write Fcrzyh;
  end;

var
  frm_brcy: Tfrm_brcy;
  v_zyh, ph: string;
  xycf, zycf: boolean;
  zyzje: real = 0;
  xyzje: real = 0;
implementation

uses p_func, DateUtils, u_frmGridHint,p_cqyztz;

{$R *.DFM}

procedure Tfrm_brcy.displaynone;
begin
  tmh.text := '';
  bch.text := '';
  fylb.text := '';
  zyj.text := '0';
  zfy.text := '0';
  zzf.text := '0';
  syje.text := '0';
  ryrq.text := '';
  zyts.text := '0';
  zgys.text := '';
  v_zyh := '';
end;

procedure Tfrm_brcy.displayvalue;
var
  v_ryrq, v_dqrq: string;
begin
  bah.text:=Trim(sp_cx_zybrjbqk.fieldbyname('bah').asstring);
  tmh.text := Trim(sp_cx_zybrjbqk.fieldbyname('brxm').asstring);
  bch.text := sp_cx_zybrjbqk.fieldbyname('bch').asstring;
  fylb.text := sp_cx_zybrjbqk.fieldbyname('lbmc').asstring;
  zyj.text := floattostr(sp_cx_zybrjbqk.fieldbyname('yjze').asfloat);
  zfy.text := floattostr(sp_cx_zybrjbqk.fieldbyname('zfy').asfloat);
  zzf.text := floattostr(sp_cx_zybrjbqk.fieldbyname('zfze').asfloat);
  syje.text := floattostr(sp_cx_zybrjbqk.fieldbyname('yjze').asfloat -
    sp_cx_zybrjbqk.fieldbyname('zfze').asfloat);
  ryrq.text := datetimetostr(sp_cx_zybrjbqk.fieldbyname('ryrq').asdatetime);
  cyzd.text:=sp_cx_zybrjbqk.fieldbyname('cyzd').asstring;   //出院诊断
  FJBBM :=sp_cx_zybrjbqk.fieldbyname('cyzdBM').asstring; //出院诊断疾病编码
  if pub_yydm = '0102' then
  begin
    zyts.Text := inttostr(Trunc(frm_func.curr_date -
      sp_cx_zybrjbqk.fieldbyname('ryrq').AsDateTime) + 1);
  end
  else
  begin
    if FormatDateTime('yyyy-MM-dd',
      sp_cx_zybrjbqk.fieldbyname('ryrq').AsDateTime) =
      FormatDateTime('yyyy-MM-dd', frm_func.curr_date) then
      zyts.Text := '1'
    else
    begin
      v_ryrq := FormatDateTime('yyyy-MM-dd 00:00:00',
        sp_cx_zybrjbqk.fieldbyname('ryrq').AsDateTime);
      v_dqrq := FormatDateTime('yyyy-MM-dd 00:00:00', frm_func.curr_date);
      //      zyts.Text := inttostr(Trunc(StrToDateTime(v_dqrq) -
      //        StrToDateTime(v_ryrq)));
      zyts.Text := inttostr(Daysbetween(Frm_func.curr_date,
        sp_cx_zybrjbqk.fieldbyname('ryrq').AsDateTime));
    end;
  end;

  //   zyts.text := floattostr(date - sp_cx_zybrjbqk.fieldbyname('ryrq').asdatetime);
  zgys.text := sp_cx_zybrjbqk.fieldbyname('ysxm').asstring;
  v_zyh := sp_cx_zybrjbqk.fieldbyname('zyh').asstring;
  tempgrid1.Visible := false;
  b_cy.enabled := true;
  b_cancel.enabled := true;
  b_final.enabled := true;
  ad_zyfymx_ls.close;
  ad_zyfymx_ls.commandtext := 'select * from zysf_zyfymx_ls where zyh=' + #39 +
    sp_cx_zybrjbqk.fieldbyname('zyh').asstring + #39;
  ad_zyfymx_ls.open;
  panel1.enabled := false;
  if ad_zyfymx_ls.IsEmpty then
    //  if strtofloat(syje.text)>=0 then
  begin
    ad_wsfxycf.Close;
    ad_wsfxycf.commandtext :=
      'select a.cfbh,a.cfzje,a.ysdm,b.mc ysxm,a.sfbz,a.zfzje,a.pldh,a.czks from zyxyf_zycfzb a,sys_czy b where a.zyh=' + #39
      + v_zyh + #39 +
      ' and a.ysdm=b.dm and a.sfbz=1 and a.fybz=0 and a.tfbz=0 and cflb = ' + #39
      +
      'ZY' + #39 + ' order by a.cfbh';
    ad_wsfxycf.open;
    ad_wsfzycf.Close;
    ad_wsfzycf.commandtext :=
      'select a.cfbh,a.cfzje,a.ysdm,b.mc ysxm,a.sfbz,a.zfzje,a.pldh,a.czks from zyxyf_zycfzb a,sys_czy b where a.zyh=' + #39
      + v_zyh + #39 +
      ' and a.ysdm=b.dm and a.sfbz=1 and a.fybz=0 and a.tfbz=0 and (cflb = ' + #39
      + 'ZC' + #39 + ' or cflb=' + #39 + 'ZN' + #39 + ')   order by a.cfbh';
    ad_wsfzycf.open;
    if not ad_wsfxycf.isempty then
    begin
      ad_wsfyp.Close;
      ad_wsfypypmcc.lookupdataset := ad_xydm;
      ad_wsfyp.commandtext :=
        'select b.cfbh,c.ypmc,c.ypdm,c.ypdw,c.ypdj,c.ypsl from zyxyf_zycfzb b,zyxyf_zycfmx c where c.cfbh=' + #39
        + trim(ad_wsfxycf.fieldbyname('cfbh').asstring) + #39 +
        ' and b.cfbh=c.cfbh and b.sfbz=1';
      ad_wsfyp.open;
      BitBtn1.Enabled := True;
      xycf := True;
    end
    else
    begin
      ad_wsfyp.Close;
      ad_wsfypypmcc.lookupdataset := ad_xydm;
      ad_wsfyp.commandtext :=
        'select b.cfbh,c.ypmc,c.ypdm,c.ypdw,c.ypdj,c.ypsl from zyxyf_zycfzb b,zyxyf_zycfmx c where c.cfbh=' + #39
        + trim(ad_wsfzycf.fieldbyname('cfbh').asstring) + #39 +
        ' and b.cfbh=c.cfbh and b.sfbz=1';
      ad_wsfyp.open;
      if not ad_wsfyp.IsEmpty then
      begin
        BitBtn1.Enabled := True;
        zycf := True;
      end;
    end;
    b_cy.enabled := true;
    b_cancel.enabled := true;
    b_final.enabled := true;

    Max_wfycfsl := GetMaxWfycfsl(ad_wsfxycf.RecordCount,ad_wsfzycf.RecordCount);
  end
    //   else
    //      application.MessageBox('该病员为欠费，不能办理出院','警告',mb_ok+mb_iconwarning)
  else
  begin
    application.MessageBox('该病员还有费用未处理，请使用【费用录入】功能处理完费用，才能办理出院', '警告', mb_ok + mb_iconwarning);
    panel1.Enabled := false;
    panel3.Enabled := false;
    b_cy.enabled := true;
    b_final.setfocus;
  end

end;

procedure Tfrm_brcy.cyzdKeyPress(Sender: TObject; var Key: Char);

begin
if Key=#13 then
begin
  DBGridEh1.Visible:=True;
  qry_jbmc.close;
  qry_jbmc.SQL.Clear;
  if pub_yydm='0260' then
  qry_jbmc.sql.Add('SELECT jbbm ,jbmc FROM dbo.ICD10 WHERE jbmc LIKE :jbmc OR pybm LIKE :pybm and fylb=''61''')
  else  if pub_yydm='0261' then
  begin
    qry_jbmc.sql.Add('SELECT dm as jbbm,mc as jbmc  FROM sbjk_icd WHERE mc LIKE :jbmc OR pym LIKE :pybm ');
  end else
  begin
    qry_jbmc.sql.Add('SELECT jbbm ,jbmc  FROM dbo.ICD10 WHERE jbmc LIKE :jbmc OR pybm LIKE :pybm ');
  end;
  qry_jbmc.Parameters.ParamByName('jbmc').Value:='%'+trim(cyzd.text)+'%';
  qry_jbmc.Parameters.ParamByName('pybm').Value:='%'+trim(cyzd.text)+'%';
  qry_jbmc.Open;
  DBGridEh1.SetFocus;
end;
end;

procedure Tfrm_brcy.DBGridEh1DblClick(Sender: TObject);
begin
  cyzd.text:=qry_jbmc.FieldByName('jbmc').AsString;
  FJBBM:=qry_jbmc.FieldByName('JBBM').AsString;
  DBGridEh1.Visible:=false;
end;

procedure Tfrm_brcy.DBGridEh1Exit(Sender: TObject);
begin
DBGridEh1.Visible:=false;
end;

procedure Tfrm_brcy.DBGridEh1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    cyzd.text:=qry_jbmc.FieldByName('jbmc').AsString;
    FJBBM:=qry_jbmc.FieldByName('JBBM').AsString;
    DBGridEh1.Visible:=false;
  end;
end;

function Tfrm_brcy.GetMaxWfycfsl(xycfsl: Integer; zycfsl: Integer):Integer;
begin
  if xycfsl > zycfsl then Result := xycfsl else Result := zycfsl;
end;

procedure Tfrm_brcy.displayByWfycfsl;
begin
  if Max_wfycfsl > 1 then displayvalue else
  begin
    Panel1.Enabled := True;
    tmh.SetFocus;
    cxDateEdit1.SetFocus;
  end;
end;

procedure Tfrm_brcy.tmhExit(Sender: TObject);
var
  s: string;
begin
  if pub_yydm='0256' then
  begin
    qry_kspd.close;
    qry_kspd.SQL.Clear;
    qry_kspd.SQL.Add('select * from zysf_zydj where tmh=:tmh');
    qry_kspd.Parameters.ParamByName('tmh').Value:=Trim(tmh.text);
    qry_kspd.Open;
    if (qry_kspd.RecordCount>0) and (pub_ksdm<>qry_kspd.FieldByName('ksdm').AsString) then
    begin
          Application.MessageBox('病人不属于本科室，不能办理出院', '错误', 0 + 16);
          tmh.setfocus;
          exit;
    end;
  end;
  if (not B_FINAL.Focused) and (trim(tmh.text) <> '') then
  begin
    s := tmh.Text;
    if s[1] in ['0'..'9'] then
      s := stringofchar('0', 9 - length(s)) + s;
    tmh.Text := s;
    with sp_cx_zybrjbqk do
    begin
      Close;
      parameters.ParamByName('@tmh').value := trim(tmh.text);
      parameters.ParamByName('@xm').value := trim(tmh.text);
      parameters.ParamByName('@bch').value := trim(tmh.text);
      parameters.ParamByName('@ksdm').value := pub_bqdm;
      parameters.ParamByName('@zyh').value := trim(Fcrzyh);
      active := true;
    end;
    if sp_cx_zybrjbqk.isempty then
    begin
      Application.MessageBox('没有此病人！', '错误', 0 + 16);
      tmh.setfocus;
    end
    else if sp_cx_zybrjbqk.recordcount > 1 then
    begin
      tempgrid1.Columns.Clear;
      tempgrid1.Columns.add;
      tempgrid1.Columns[0].field := sp_cx_zybrjbqk.fieldlist[0];
      tempgrid1.Columns[0].title.caption := '条码号';
      tempgrid1.Columns.add;
      tempgrid1.Columns[1].field := sp_cx_zybrjbqk.fieldlist[2];
      tempgrid1.Columns[1].title.caption := '姓名';
      tempgrid1.left := tmh.left;
      tempgrid1.top := tmh.top + tmh.Height;
      tempgrid1.visible := true;
      tempgrid1.BringToFront;
      tempgrid1.setfocus;
    end
    else
    begin
      displayvalue;
      panel1.enabled := false;
      panel2.enabled := true;
    end;
  end;
end;

procedure Tfrm_brcy.tempgrid1Exit(Sender: TObject);
begin
  displayvalue;
end;

procedure Tfrm_brcy.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    SelectNext(activeControl, true, true)
end;

procedure Tfrm_brcy.FormShow(Sender: TObject);
begin
    cxDateEdit1.Value := Frm_func.curr_date;
    Label10.Visible := True;
    ComboBox1.visible := True;
    ComboBox1.Items.Clear;
    DM_data.qry_pub.close;
    DM_data.qry_pub.sql.text := 'select * from sys_brqx order by id';
    DM_data.qry_pub.open;
    DM_data.qry_pub.First;
    while not DM_data.qry_pub.eof do
    begin
      ComboBox1.Items.Add( DM_data.qry_pub.FieldByName('mc').asstring);
      DM_data.qry_pub.Next;
    end;
    ComboBox1.ItemIndex := 0;
 if (pub_yydm='0263') or (pub_yydm='0264') then
 begin
   Panel1.Height:=98;
 end
 else
 begin
  Panel1.Height:=66;
 end;
 if pub_yydm='0261' then
  begin
    bqglData_Conn;
  end ;
 
 if trim(tmh.text)<>'' then
 tmhExit(nil);
end;


{-------------------------------------------------------------------------------
  过程名:    Tfrm_brcy.bqglData_Conn
  作者:      yangshuai
  日期:      2017.05.26
  参数:      无
  返回值:    boolean
-------------------------------------------------------------------------------}
function Tfrm_brcy.bqglData_Conn: boolean;
var
  Reg: Tregistry;
  servernameba, datanameba: string;
  zyh_2, bybh, ls: string;
begin
  Result := True;
  Reg := Tregistry.Create;
  try
    Reg.RootKey := HKEY_LOCAL_MACHINE;
    if Reg.OpenKey( 'Software\myserver', true ) then
    begin
      servernameba := Reg.ReadString( 'servernameba' );
      datanameba := Reg.ReadString( 'datanameba' );
    end;
    reg.CloseKey;
  finally
    Reg.Free;
  end;
  try
    try
      if ( servernameba <> servername ) and ( not conn_ba.Connected ) then
        //病案库和his不是同一台服务器
      begin
        conn_ba.ConnectionString :=
          'Provider=SQLOLEDB.1;Password=baglxt;User ID=sys_bagl;' +
          'Persist Security Info=True;Initial Catalog=' +
          datanameba + ';Data Source=' + servernameba;
        conn_ba.Connected := True;
        qry_jbmc.Connection := conn_ba;
      end
      else
      begin
        qry_jbmc.Connection := DM_data.ado_mydata;
      end;
    except
      on e: Exception do
      begin
        Application.MessageBox( PChar( '病案数据连接失败' + #13#10 + e.Message ), '错误', MB_OK
          + MB_ICONSTOP );

        Result := False;
      end;
    end;
  finally
    conn_ba.Connected := False;
  end;
end;
procedure Tfrm_brcy.ad_wsfypCalcFields(DataSet: TDataSet);
begin
  ad_wsfyp['ypje'] := ad_wsfyp.fieldbyname('ypsl').asfloat *
    ad_wsfyp.fieldbyname('ypdj').asfloat;
end;

procedure Tfrm_brcy.ad_wsfxycfAfterScroll(DataSet: TDataSet);
begin
  if xycf then
  begin
    ad_wsfyp.Close;
    ad_wsfypypmcc.lookupdataset := ad_xydm;
    ad_wsfyp.commandtext :=
      'select b.cfbh,c.ypmc,c.ypdm,c.ypdw,c.ypdj,c.ypsl from zyxyf_zycfzb b,zyxyf_zycfmx c where c.cfbh=' + #39
      + trim(ad_wsfxycf.fieldbyname('cfbh').asstring) + #39 +
      ' and b.cfbh=c.cfbh and b.sfbz=1 and cflb = ' + #39 + 'ZY' + #39;
    ad_wsfyp.open;
  end;
end;

procedure Tfrm_brcy.ad_wsfzycfAfterScroll(DataSet: TDataSet);
begin
  if zycf then
  begin
    ad_wsfyp.Close;
    //        ad_wsfypypmcc.lookupdataset := ad_zydm;
    ad_wsfyp.commandtext :=
      'select b.cfbh,c.ypmc,c.ypdm,c.ypdw,c.ypdj,c.ypsl from zyxyf_zycfzb b,zyxyf_zycfmx c where c.cfbh=' + #39
      + trim(ad_wsfzycf.fieldbyname('cfbh').asstring) + #39 +
      ' and b.cfbh=c.cfbh and b.sfbz=1 and (cflb = ' + #39 + 'ZC' + #39 +
      ' or cflb = ' + #39 + 'ZN' + #39 + ' )';
    ad_wsfyp.open;
  end;
end;

procedure Tfrm_brcy.db_xycfEnter(Sender: TObject);
begin

  if ad_wsfxycf.Active then
  begin
    ad_wsfxycf.first;
    ad_wsfyp.Close;
    ad_wsfypypmcc.lookupdataset := ad_xydm;
    ad_wsfyp.commandtext :=
      'select b.cfbh,c.ypmc,c.ypdm,c.ypdw,c.ypdj,c.ypsl from zyxyf_zycfzb b,zyxyf_zycfmx c where c.cfbh=' + #39
      + trim(ad_wsfxycf.fieldbyname('cfbh').asstring) + #39 +
      ' and b.cfbh=c.cfbh and b.sfbz=1';
    ad_wsfyp.open;
    xycf := true;
  end
end;

procedure Tfrm_brcy.db_xycfExit(Sender: TObject);
begin
  if not BitBtn1.Focused then
    xycf := false;
end;

procedure Tfrm_brcy.db_zycfExit(Sender: TObject);
begin
  if not BitBtn1.Focused then
    zycf := false;
end;

procedure Tfrm_brcy.db_zycfEnter(Sender: TObject);
begin

  if ad_wsfzycf.Active then
  begin
    ad_wsfzycf.first;
    ad_wsfyp.Close;
    //       ad_wsfypypmcc.lookupdataset := ad_xydm;
    ad_wsfyp.commandtext :=
      'select b.cfbh,c.ypmc,c.ypdm,c.ypdw,c.ypdj,c.ypsl from zyxyf_zycfzb b,zyxyf_zycfmx c where c.cfbh=' + #39
      + trim(ad_wsfzycf.fieldbyname('cfbh').asstring) + #39 +
      ' and b.cfbh=c.cfbh and b.sfbz=1';
    ad_wsfyp.open;
    zycf := true;
  end;
end;

procedure Tfrm_brcy.ad_wsfxycfsfbzChange(Sender: TField);
begin
  if ad_wsfxycf.fieldbyname('sfbz').asboolean then
    xyzje := xyzje + ad_wsfxycf.fieldbyname('cfzje').asfloat
  else if not ad_wsfxycf.fieldbyname('sfbz').asboolean then
    xyzje := xyzje - ad_wsfxycf.fieldbyname('cfzje').asfloat;
  if xyzje <= 0.00001 then
    xyzje := 0;
  db_xycf.Columns[1].Footer.value := floattostr(xyzje);
end;

procedure Tfrm_brcy.ad_wsfzycfsfbzChange(Sender: TField);
begin
  if ad_wsfzycf.fieldbyname('sfbz').asboolean then
    zyzje := zyzje + ad_wsfzycf.fieldbyname('cfzje').asfloat
  else if not ad_wsfzycf.fieldbyname('sfbz').asboolean then
    zyzje := zyzje - ad_wsfzycf.fieldbyname('cfzje').asfloat;
  if zyzje <= 0.00001 then
    zyzje := 0;
  db_zycf.Columns[1].Footer.value := floattostr(zyzje);

end;

procedure Tfrm_brcy.B_cyClick(Sender: TObject);
var
  zkxx: string;
  yzxx, czyh, StrWsfYZWarn: string;
  I: integer;
  Csql,Chint:string;
  tmh_1:String;
  qf:String;
begin
  if pub_yydm='0266' then   //广元昭化要求
  begin
    qfbz_kg.Open;
    tmh_1:=Trim(sp_cx_zybrjbqk.FieldByName('tmh').AsString);
    if qfbz_kg.FieldByName('wqfbr_blcy_kg').Value=1 then
    begin
      brjcjy_qf.Close;
      brjcjy_qf.Parameters.ParamByName('@tmh').value:=tmh_1;
      brjcjy_qf.Open;
      brjcjy_qf.Filter:='qrbz=''否''';
      brjcjy_qf.Filtered:=True;
      if brjcjy_qf.RecordCount>0 then
      begin
        brjcjy_qf.First;
        qf:=trim(brjcjy_qf.FieldByName('brxm').AsString)+'   '+Trim(brjcjy_qf.FieldByName('tmh').AsString)+char(13)+char(13);
        while not brjcjy_qf.Eof do
        begin
          qf:=qf+Trim(brjcjy_qf.FieldByName('fymc').AsString)+'  处置科室:'+Trim(brjcjy_qf.FieldByName('czksmc').AsString)+char(13);
          brjcjy_qf.Next;
        end;
        qf:=qf+char(13)+'以上检查/检验项目已计费,但项目执行科室未进行最终确费，不能办理出院登记手续！';
       ShowMessage(qf);
       Exit;
      end;
    end;
    //广元昭化要求 长期医嘱未计费的进行提示
    sp_cqyzqr.Close;
    sp_cqyzqr.Parameters.Refresh;
    sp_cqyzqr.Parameters.ParamByName('@tmh').value:=tmh_1;
    sp_cqyzqr.Open;
    if sp_cqyzqr.RecordCount>0 then
    begin
       try
        frm_cqyztz := Tfrm_cqyztz.Create(Application);
        frm_cqyztz.zyh:=sp_cx_zybrjbqk.FieldByName('zyh').AsString;
        frm_cqyztz.tmh:=sp_cx_zybrjbqk.FieldByName('tmh').AsString;
        if frm_cqyztz.ShowModal = mrCancel then
          exit;
      finally
        FreeAndNil(frm_cqyztz);
      end;
    end;

  end;
  qry_cyzd.Close;
  qry_cyzd.SQL.Add('update zysf_zydj set cyzd=:cyzd,cyzdBM=:cyzdBM, brqx=:brqx,zwyy=:zwyy where zyh=:zyh');
//  if pub_yydm='0261' then//四会医院
//  begin
//     qry_cyzd.Parameters.ParamByName('cyzd').Value:=Trim(cyzd.text);  //保存疾病编码
//     qry_cyzd.Parameters.ParamByName('cyzdBM').Value:=Trim(FJBBM);
//  end else
//  begin
//     qry_cyzd.Parameters.ParamByName('cyzd').Value:=Trim(cyzd.text);
//  end;
  qry_cyzd.Parameters.ParamByName('cyzd').Value:=Trim(cyzd.text);
  qry_cyzd.Parameters.ParamByName('cyzdBM').Value:=Trim(FJBBM);  //保存疾病编码
  qry_cyzd.Parameters.ParamByName('brqx').Value:=Trim(ComboBox1.text);
  qry_cyzd.Parameters.ParamByName('zwyy').Value:=Trim(zwyy.text);
  qry_cyzd.Parameters.ParamByName('zyh').Value:=sp_cx_zybrjbqk.FieldByName('zyh').AsString;
  qry_cyzd.ExecSQL;



if cxDateEdit1.Text>sp_cx_zybrjbqk.fieldbyname('ryrq').AsString then
begin
  if pub_yydm = '0003' then
  begin
    DM_data.qry_pub.Close;
    DM_data.qry_pub.SQL.text :=
      'select * from ICNRIS_HISORDER_result where PATIENT_ID=' + '''' +
      sp_cx_zybrjbqk['tmh'] + '''' +
      ' and rtrim(isnull(EXAM_STATUS,''''))<>''已审核''';
    DM_data.qry_pub.Open;
    if not DM_data.qry_pub.IsEmpty then
    begin
      DM_data.qry_pub.First;
      while not DM_data.qry_pub.Eof do
      begin
        qry_cx_jcxmwz.close;
        qry_cx_jcxmwz.SQL.text := 'select xmmc from zybl_zyyz where zyh=' + ''''
          + sp_cx_zybrjbqk['zyh'] +
          '''' + ' and charindex('',''+convert(varchar,id)+'','','',''+' + ''''
          + DM_data.qry_pub.FieldByName('IMAGE_NO').AsString + '''' +
          '+'','')>0';
        qry_cx_jcxmwz.Open;
        qry_cx_jcxmwz.First;
        while not qry_cx_jcxmwz.eof do
        begin
          yzxx := yzxx + qry_cx_jcxmwz.FieldByName('xmmc').asstring + ',';
          qry_cx_jcxmwz.Next;
        end;
        yzxx := yzxx + #13;
        DM_data.qry_pub.Next;
      end;
      if Application.MessageBox(PChar('该病人有以下检查项目没有做:' + #13 +
        yzxx + #13 + '是否确认出院？'), '询问', MB_YESNO + MB_ICONQUESTION +
        MB_DEFBUTTON2) = IDNO then
      begin
        Exit;
      end;
    end;
  end;
  czyh := sp_cx_zybrjbqk.FieldByName('zyh').AsString;
  // 提示改为窗体
  if pub_yydm<>'0004' then
  begin
    try
      frmGridHint := TfrmGridHint.Create(Application);
      Chint:='未收费未停止临时医嘱';
      frmGridHint.SetCaption(Chint);
      Chint:='注意：此病人存在未收费未停止的临时医嘱，是否继续出院？';
      frmGridHint.SetHint(Chint);
      Csql:=' SELECT a.tmh 条码号,a.xmdm 项目代码,a.xmmc 项目名称,a.sl 数量,a.dw 单位,a.xgrq 下达时间,a.kdrq 开始时间 '
        + ' FROM zybl_zyyz a LEFT JOIN zybl_zyyz_zxjl b ON a.ph=b.ph '
        + ' WHERE a.yzsx=''临时'' AND a.tzbz=0 AND b.ph IS null and a.zyh=' +
        QuotedStr(czyh)
        + ' and a.kdks in (select bqzydm from sys_bqzyfl where bqdm=' +
        quotedstr(pub_bqdm) + ')';
      frmGridHint.SetSql(csql);
      frmGridHint.tvHint.OptionsData.Deleting := False;
      frmGridHint.tvHint.OptionsData.Editing  := False;
      frmGridHint.tvHint.OptionsData.Inserting := False;
      if frmGridHint.ShowModal = mrCancel then
        exit;
    finally
      FreeAndNil(frmGridHint);
    end;
  end ;

  if (pub_yydm = '0003') or (pub_yydm = '0004') then
  begin
    sp_brxx.Close;
    sp_brxx.Parameters.ParamByName('@sr_bqdm').Value := trim(pub_bqdm);
    sp_brxx.Parameters.ParamByName('@yzzxsj').Value :=
      formatdatetime('yyyymmdd', cxDateEdit1.Value);
    sp_brxx.Parameters.ParamByName('@zyh').Value := '';
    sp_brxx.Parameters.ParamByName('@sssbz').Value := '';
    sp_brxx.Open;
    sp_brxx.Filtered := False;
    sp_brxx.Filter := 'xkyz=''新医嘱''';
    sp_brxx.Filtered := True;
    if sp_brxx.Locate('zyh', sp_cx_zybrjbqk['zyh'], []) then
    begin
      if Application.MessageBox('该病人还有医嘱未执行，是否仍然要办理出院？',
        '询问', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDNO then
      begin
        Exit;
      end;
    end;
    DM_data.qry_pub.close;
    DM_data.qry_pub.sql.text:='select * from zybl_zyyz where zyh='+''''+sp_cx_zybrjbqk['zyh']+
    ''''+' and xmmc like ''%出院%'' ';
    DM_data.qry_pub.open;
    if DM_data.qry_pub.IsEmpty then
    begin
      if Application.MessageBox('该病人没有下出院医嘱，是否仍然要办理出院？',
        '询问', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDNO then
      begin
        Exit;
      end;
    end;


  end;

  if (not ad_wsfxycf.isempty) or (not ad_wsfzycf.isempty) then
  begin
    if pub_yydm = '0013' then
    begin
      if
        Application.MessageBox('已计费处方，药房还未作发药处理，是否继续办理出院？', '询问', MB_OKCANCEL +
        MB_ICONQUESTION) = IDOK then
      begin

      end
      else
      begin
        Exit;
      end;

    end
    else
    begin
      application.messagebox('已计费处方，药房还未作发药处理，待药房处理完成才能办理出院', '错误', mb_ok + mb_iconerror);
      Exit;
    end;
  end;

  with sp_up_cy do
  begin
    parameters.parambyname('@tmh').value := sp_cx_zybrjbqk['tmh'];
    parameters.parambyname('@zyh').value := sp_cx_zybrjbqk['zyh'];
    parameters.parambyname('@czydm').value := pub_czydm;
    parameters.parambyname('@cyrq').value := cxDateEdit1.Value;
    parameters.parambyname('@sczt').value := 'a';
    execproc;
  end;
  if sp_up_cy.parameters.parambyname('@sczt').value = '1' then
  begin
    zkxx := frm_func.func_in_blsjzkmx(sp_cx_zybrjbqk['tmh'],
      sp_cx_zybrjbqk['zyh'], '2');
    if zkxx <> '1' then
      application.messagebox(pchar(zkxx), '信息', mb_ok + mb_iconinformation);
    application.messagebox('成功办理出院', '信息', mb_ok +
      mb_iconinformation);
  {  if pub_yydm = '0237' then
    begin
      DM_data.qry_pub.close;
      DM_data.qry_pub.sql.Text := 'delete from zysf_cybrbqk where zyh=' + ''''
        +
        sp_cx_zybrjbqk['zyh'] + '''';
      DM_data.qry_pub.ExecSQL;
      DM_data.qry_pub.close;
      DM_data.qry_pub.sql.Text :=
        'insert into zysf_cybrbqk(zyh,cyqk,mc) select ' +
        '''' + sp_cx_zybrjbqk['zyh'] + '''' + ',' + copy(trim(ComboBox1.text),
        1, pos('_', trim(ComboBox1.text)) - 1) +
        ',' + '''' + copy(trim(ComboBox1.text), pos('_', trim(ComboBox1.text))
        + 1, 1000) + '''';
      DM_data.qry_pub.ExecSQL;
    end;   }
    b_cy.Enabled := false;
    b_cancel.Enabled := false;
    panel1.enabled := true;
    tmh.setfocus;
  end
  else
  begin
    application.messagebox('未成功办理出院，请再次办理', '错误', mb_ok +
      mb_iconerror);
    b_cy.setfocus;
  end;
end
else
begin
      application.messagebox('出院时间小于入院时间！！', '错误', mb_ok + mb_iconerror);
end;

end;

procedure Tfrm_brcy.BitBtn1Click(Sender: TObject);
var
  tycfbh, _jg: string;
begin
  if xycf = true then
  begin
    if ad_wsfxycf.IsEmpty then
    begin
      application.MessageBox('没有未发药西药处方!', '注意', 16);
      exit;
    end;
    dm_data.Qry_pdzt.close;
    dm_data.Qry_pdzt.parameters.ParamByName('ksdm').value :=
      ad_wsfxycf.FieldByName('czks').asstring;
    dm_data.Qry_pdzt.open;
    if dm_data.qry_pdzt['pdzt'] = true then
    begin
      application.MessageBox('系统正在进行盘点，不能发药!', '注意', 16);
      abort;
    end;
    if application.MessageBox('请确认是否退药?', '注意', mb_iconquestion +
      mb_okcancel + mb_defbutton1) = idcancel then
      abort;

    //病人合法性检测
    qry_zydj.close;
    qry_zydj.Parameters.ParamByName('zyh').value :=
      sp_cx_zybrjbqk.fieldbyname('zyh').asstring;
    qry_zydj.open;
    if qry_zydj['cybz'] = true then
    begin
      application.MessageBox('该病人已办出院,不能退药!', '注意', 16);
      exit;
    end;

    //处方合法性检测
    qry_cf.close;
    qry_cf.Parameters.ParamByName('cfbh').value :=
      ad_wsfxycf.FieldByName('cfbh').asstring;
    qry_cf.open;
    if qry_cf['tybz'] = true then
    begin
      application.MessageBox('该处方在操作期间已被其他人退药，不能重复!',
        '注意', 16);
      exit;
    end;
    qry_cf.close;
    sp_cfbh.close;
    sp_cfbh.ExecProc;
    tycfbh := sp_cfbh.Parameters.parambyname('@cfbh').value;
    sp_save.close;
    sp_save.Parameters.Refresh;
    sp_save.Parameters.ParamByName('@cfbh').value :=
      ad_wsfxycf.FieldByName('cfbh').asstring;
    sp_save.Parameters.ParamByName('@tycfbh').value := tycfbh;
    sp_save.Parameters.ParamByName('@fyczy').value := pub_czydm;
    sp_save.Parameters.ParamByName('@ksdm').value :=
      ad_wsfxycf.FieldByName('czks').asstring;
    sp_save.Parameters.ParamByName('@sjbh').value :=
      ad_wsfxycf.FieldByName('pldh').asstring;
    //modified by MolinHsia 2014-06-23
    //sp_save.Parameters.ParamByName( '@sc_cg' ).value := '0';
    sp_save.Parameters.ParamByName('@sc_cg').value := -2;
    //end by MolinHsia 2014-06-23
    sp_save.ExecProc;
    _jg := sp_save.Parameters.ParamByName('@sc_cg').value;
    if _jg <> '1' then
    begin
      if _jg = '3' then
      begin
        application.MessageBox(PChar('批量处方中已退了部分药品，不能再整处方退药，' +
          '请到:'+ #13 +'[费用处理]->[未发药退药处方划价] 退药'), '注意', 16);
        Exit;
      end;
      application.MessageBox(PChar('处方退药失败:' + _jg), '注意', 16);
      abort;
    end
    else
      Application.MessageBox('处方退药成功，请继续！', '提示', 48);
  end
  else
  begin
    if ad_wsfzycf.IsEmpty then
    begin
      application.MessageBox('没有未发药中药处方!', '注意', 16);
      exit;
    end;
    dm_data.Qry_pdzt.close;
    dm_data.Qry_pdzt.parameters.ParamByName('ksdm').value :=
      ad_wsfzycf.FieldByName('czks').asstring;
    dm_data.Qry_pdzt.open;
    if dm_data.qry_pdzt['pdzt'] = true then
    begin
      application.MessageBox('系统正在进行盘点，不能发药!', '注意', 16);
      abort;
    end;
    if application.MessageBox('请确认是否退药?', '注意', mb_iconquestion +
      mb_okcancel + mb_defbutton1) = idcancel then
      abort;

    //病人合法性检测
    qry_zydj.close;
    qry_zydj.Parameters.ParamByName('zyh').value :=
      sp_cx_zybrjbqk.fieldbyname('zyh').asstring;
    qry_zydj.open;
    if qry_zydj['cybz'] = true then
    begin
      application.MessageBox('该病人已办出院,不能退药!', '注意', 16);
      exit;
    end;

    //处方合法性检测
    qry_cf.close;
    qry_cf.Parameters.ParamByName('cfbh').value :=
      ad_wsfzycf.FieldByName('cfbh').asstring;
    qry_cf.open;
    if qry_cf['tybz'] = true then
    begin
      application.MessageBox('该处方在操作期间已被其他人退药，不能重复!',
        '注意', 16);
      exit;
    end;
    qry_cf.close;
    sp_cfbh.close;
    sp_cfbh.ExecProc;
    tycfbh := sp_cfbh.Parameters.parambyname('@cfbh').value;
    sp_save.close;
    sp_save.Parameters.Refresh;
    sp_save.Parameters.ParamByName('@cfbh').value :=
      ad_wsfzycf.FieldByName('cfbh').asstring;
    sp_save.Parameters.ParamByName('@tycfbh').value := tycfbh;
    sp_save.Parameters.ParamByName('@fyczy').value := pub_czydm;
    sp_save.Parameters.ParamByName('@ksdm').value :=
      ad_wsfzycf.FieldByName('czks').asstring;
    sp_save.Parameters.ParamByName('@sjbh').value :=
      ad_wsfzycf.FieldByName('pldh').asstring;
    sp_save.Parameters.ParamByName('@sc_cg').value := '0';
    sp_save.ExecProc;
    _jg := sp_save.Parameters.ParamByName('@sc_cg').value;
    if _jg <> '1' then
    begin
      application.MessageBox(PChar('处方退药失败:' + _jg), '注意', 16);
      abort;
    end
    else
      Application.MessageBox('处方退药成功，请继续！', '提示', 48);
  end;
  displayByWfycfsl;
end;

procedure Tfrm_brcy.B_cancelClick(Sender: TObject);
begin
  panel1.enabled := true;
  tmh.text := '';
  tmh.SetFocus;
end;

procedure Tfrm_brcy.tmhEnter(Sender: TObject);
begin
  ad_wsfxycf.Close;
  ad_wsfzycf.close;
  ad_wsfyp.close;
  panel3.enabled := true;
end;

procedure Tfrm_brcy.B_finalClick(Sender: TObject);
begin
  self.close;
end;

end.

