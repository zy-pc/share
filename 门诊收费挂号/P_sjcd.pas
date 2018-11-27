unit P_sjcd;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Mask, Db, DBTables, DBCtrls, ADODB, Variants, QRCtrls,
  QuickRpt, printers;

type
  Tfrm_sjcd = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Bevel1: TBevel;
    Button2: TButton;
    Button3: TButton;
    Label3: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label11: TLabel;
    Bevel2: TBevel;
    Memo1: TMemo;
    DBEdit1: TDBEdit;
    ds_sjcd: TDataSource;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    Edit2: TEdit;
    Label2: TLabel;
    ds_sjcx: TDataSource;
    sp_sfsjcx: TADOStoredProc;
    sp_sjcd: TADOStoredProc;
    qry_fymx: TADOQuery;
    procedure Button3Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1Exit(Sender: TObject);
    procedure proc_get_sjbh(sjlx: string);
    procedure Button2Click(Sender: TObject);
  private
    �ǹҺ�Ʊ��: Boolean;
    cdsjh, cd_ph, cd_fylb: string;
    { Private declarations }
    procedure Proc_mzsj_sc; //�����վ�(�Ĵ�)
    procedure Proc_mzsj_sc_kb; //����հ��Զ��屨���վݣ��Ĵ���
    procedure Proc_mzsj_sc_b; //�����վ�(�Ĵ�:��Ʊ)
    procedure Proc_mzsj_hb_b; //�����վ�(����:��Ʊ)
    procedure Proc_mzsj_sx; //�����վ�(����)
    procedure Proc_mzsj_sx3d; //�����վ�(��������)
    procedure Proc_mzsj_sx_htqfybjy; //�����վ�(������̨�����ױ���Ժ)
    procedure Proc_mzsj_xj; //�����վ�(�½�)
    procedure Proc_mzsj_jx; //�����վ�(����)
    procedure Proc_mzsj_hb1; //�����վ�(������ʽһ)
    procedure Proc_mzsj_hb2(const v_ph: string); //�����վ�(������ʽ��)
    procedure Proc_mzsj_hb3(const v_ph: string); //�����վ�(������ʽ��)
    procedure Proc_mzsj_xz; //�����վ�(����)
    procedure Proc_mzsj_gs1; //�����վ�(����)
    procedure Proc_mzsj_999999;
  public
    { Public declarations }
  end;
  TInfor_fy = record //�շѽ�����
    fyje: Double;
    ssje: Double;
    sjsl: Integer;
  end;
var
  frm_sjcd: Tfrm_sjcd;
function func_fyje_Calc(ado: TCustomADODataSet): TInfor_fy;

implementation

uses p_Dm, p_func, P_login, p_rpt_hjsf, p_main, p_mzjsbb, p_mzgh_print,
  p_repo_hjsf, p_repo_mzsj, p_mzsf_print_service;

{$R *.DFM}

function func_fyje_Calc(ado: TCustomADODataSet): TInfor_fy;
var
  i, v_sjbh: Integer;
begin
  Result.fyje := 0;
  Result.ssje := 0;
  Result.sjsl := 0;
  ado.First;
  ado.DisableControls;
  for i := 1 to ado.RecordCount do
  begin
    if ado.FieldByName('sfbz').AsBoolean then
    begin
      Result.fyje := Result.fyje + ado.FieldByName('fyzje').AsCurrency;
      Result.ssje := Result.ssje + ado.FieldByName('sszje').AsCurrency;
    end;
    if v_sjbh <> ado.FieldByName('sjbh').AsInteger then
    begin
      v_sjbh := ado.FieldByName('sjbh').AsInteger;
      Result.sjsl := Result.sjsl + 1;
    end;
    ado.next;
  end;
  ado.EnableControls;
end;

procedure Tfrm_sjcd.Proc_mzsj_gs1;
begin
  Proc_Print_gssj1(qry_fymx, pub_yymc);
end;

procedure Tfrm_sjcd.Proc_mzsj_hb1;
begin
  Application.CreateForm(Tfrm_repo_hjsf, frm_repo_hjsf);
  frm_repo_hjsf.QRL_czy_hb.Caption := ' ';

  qry_fymx.Sort := 'sjbh ASC';
  frm_repo_hjsf.QuickRep_hb.DataSet := qry_fymx;
  frm_repo_hjsf.QRDB_cfbhc_hb.DataSet := qry_fymx;
  frm_repo_hjsf.QRDB_brxm_hb.DataSet := qry_fymx;
  frm_repo_hjsf.QRDB_ysmc_hb.DataSet := qry_fymx;
  frm_repo_hjsf.QRDB_fydymc_hb.DataSet := qry_fymx;
  frm_repo_hjsf.QRDB_sszje_hb.DataSet := qry_fymx;
  frm_repo_hjsf.QRDB_sfrq_hb.DataSet := qry_fymx;
  frm_repo_hjsf.QRDB_sjbh_hb.DataSet := qry_fymx;
  frm_repo_hjsf.QRL_czy_hb.Caption := pub_czydm + '#' + copy(pub_czyxm, 1, 2);

  frm_repo_hjsf.QuickRep_hb.Print;
  try
    frm_repo_hjsf.Free
  except
  end;
end;

procedure Tfrm_sjcd.Proc_mzsj_hb2(const v_ph: string);
begin
  with DM_data.Qry_pub do
  begin
    Close;
    SQL.Clear;
    SQL.Text := 'select a.tmh,a.brxm,a.fydj,a.sszje,a.czks,a.sjbh,a.sfrq,a.kdks,' +
      ' b.mc czksmc,c.mc kdksmc,d.fydm,d.dymc,convert(varchar(30),' + #39 + #39 + ') as gg,' +
      ' a.fysl,a.fydj,convert(varchar(50),' + #39 + #39 + ') ypmc,cast(1 as bit) lb,a.cfbh,g.mc sfczymc,d.dw' +
      ' from mzsf_mzfymx_ls a left join sys_ksdm b on a.czks=b.dm ' +
      ' left join sys_ksdm c on a.kdks=c.dm ' +
      ' inner join sys_kjsfxm d on a.fydm=d.fydm ' +
      ' inner join sys_czy g on a.sfczy=g.dm ' +
      ' where a.sfbz=1 and a.ph=' + #39 + v_ph + #39 + ' and d.cflb<>' + #39 + '��ҩ��' + #39 +
      ' union all ' +
      ' select a.tmh,a.brxm,a.fydj,e.ypsl*d.cfjl*e.ypdj sszje,a.czks,a.sjbh,a.sfrq,a.kdks,' +
      ' b.mc czksmc,c.mc kdksmc,a.fydm,g.dymc,f.ypgg gg,' +
      ' e.ypsl*d.cfjl ypsl,e.ypdj,f.ypmc,cast(0 as bit) lb,a.cfbh,h.mc sfczymc,e.ypdw' +
      ' from mzsf_mzfymx_ls a left join sys_ksdm b on a.czks=b.dm ' +
      ' left join sys_ksdm c on a.kdks=c.dm ' +
      ' inner join mzxyf_cfzb d ' +
      ' inner join mzxyf_cfmx e ' +
      '   inner join sys_ypdm f ' +
      '   on e.ypdm=f.ypdm ' +
      '   on d.cfbh=e.cfbh ' +
      ' on a.cfbh=d.cfbh ' +
      ' inner join sys_kjsfxm g on a.fydm=g.fydm ' +
      ' inner join sys_czy h on a.sfczy=h.dm ' +
      ' where a.sfbz=1 and a.ph=' + #39 + v_ph + #39 + ' and d.cflb=' + #39 + 'MZ' + #39;
    Open;
    Proc_Print_hbsj2(DM_data.Qry_pub, pub_yymc);
  end;
end;

procedure Tfrm_sjcd.Proc_mzsj_hb3(const v_ph: string);
begin
  with DM_data.Qry_pub do
  begin
    Close;
    SQL.Clear;
    SQL.Text := 'select a.tmh,a.brxm,a.fydj,a.sszje,a.czks,a.sjbh,a.sfrq,a.kdks,' +
      ' b.mc ksmc,c.mc kdksmc,d.fydm,d.dymc fydymc,convert(varchar(30),' + #39 + #39 + ') as gg,' +
      ' a.fysl,a.fydj,convert(varchar(50),' + #39 + #39 + ') ypmc,cast(1 as bit) lb,a.cfbh,g.mc sfczymc,d.dw' +
      ' from mzsf_mzfymx_ls a left join sys_ksdm b on a.czks=b.dm ' +
      ' left join sys_ksdm c on a.kdks=c.dm ' +
      ' inner join sys_kjsfxm d on a.fydm=d.fydm ' +
      ' inner join sys_czy g on a.sfczy=g.dm ' +
      ' where a.sfbz=1 and a.ph=' + #39 + v_ph + #39 + ' and d.cflb<>' + #39 + '��ҩ��' + #39 +
      ' union all ' +
      ' select a.tmh,a.brxm,a.fydj,e.ypsl*d.cfjl*e.ypdj sszje,a.czks,a.sjbh,a.sfrq,a.kdks,' +
      ' b.mc ksmc,c.mc kdksmc,a.fydm,substring(f.ypmc,1,12) + Cast(e.ypsl*d.cfjl as char(4)) fydymc,f.ypgg gg,' +
      ' e.ypsl*d.cfjl ypsl,e.ypdj,f.ypmc,cast(0 as bit) lb,a.cfbh,h.mc sfczymc,e.ypdw' +
      ' from mzsf_mzfymx_ls a left join sys_ksdm b on a.czks=b.dm ' +
      ' left join sys_ksdm c on a.kdks=c.dm ' +
      ' inner join mzxyf_cfzb d ' +
      ' inner join mzxyf_cfmx e ' +
      '   inner join sys_ypdm f ' +
      '   on e.ypdm=f.ypdm ' +
      '   on d.cfbh=e.cfbh ' +
      ' on a.cfbh=d.cfbh ' +
      ' inner join sys_kjsfxm g on a.fydm=g.fydm ' +
      ' inner join sys_czy h on a.sfczy=h.dm ' +
      ' where a.sfbz=1 and a.ph=' + #39 + v_ph + #39 + ' and d.cflb=' + #39 + 'MZ' + #39;
    Open;
    Proc_Print_hbsj3(DM_data.Qry_pub, pub_yymc);
  end;
end;

procedure Tfrm_sjcd.Proc_mzsj_hb_b;
var
  v_Infor_fy: TInfor_fy;
begin
  qry_fymx.Sort := 'sjbh ASC';
  v_Infor_fy := func_fyje_Calc(qry_fymx); //�����ܽ�ʵ���ܽ��վ�����
  Print_mzsj_sc_jy_b(qry_fymx, qry_fymx.FieldByName('brxm').AsString, False, False,
    v_Infor_fy.fyje, v_Infor_fy.ssje, 0, v_Infor_fy.sjsl);
end;

procedure Tfrm_sjcd.Proc_mzsj_jx;
var
  ssje, fpje: Real; //Ҫ��ӡ�ķ�Ʊ�ϵ��ܽ��
  i: Integer;
begin

  qry_fymx.Filtered := False;
  qry_fymx.Filter := 'sjbh=' + cdsjh;
  qry_fymx.Filtered := true;
  ssje := 0.00;
  fpje := 0.00;
  qry_fymx.first;
  for i := 1 to qry_fymx.recordcount do
  begin
    if qry_fymx.FieldByName('sfbz').AsBoolean then
    begin
      fpje := fpje + qry_fymx.FieldByName('fyzje').AsCurrency;
      ssje := ssje + qry_fymx.FieldByName('sszje').AsCurrency;
    end;
    qry_fymx.next;
  end;
  Application.CreateForm(Tfrm_repo_hjsf, frm_repo_hjsf);
  with frm_repo_hjsf do
  begin
    QRL_hjje1_jx.Caption := NumberToMoney(fpje);
    QRL_hjje2_jx.Caption := NumberToMoney(fpje);
    QRL_hjje3_jx.Caption := NumberToMoney(fpje);
    QRL_hjje4_jx.Caption := NumberToMoney(fpje);
    QRL_sfy1_jx.Caption := pub_czyxm;
    QRL_sfy2_jx.Caption := pub_czyxm;
    QRL_sfy3_jx.Caption := pub_czyxm;
    QRL_sfy4_jx.Caption := pub_czyxm;
    QRL_brxm1_jx.Caption := Trim(qry_fymx.FieldByName('brxm').AsString);
    QRL_brxm2_jx.Caption := Trim(qry_fymx.FieldByName('brxm').AsString);
    QRL_brxm3_jx.Caption := Trim(qry_fymx.FieldByName('brxm').AsString);
    QRL_brxm4_jx.Caption := Trim(qry_fymx.FieldByName('brxm').AsString);
    QRL_sfrq1_jx.Caption := FormatDatetime('yyyy-mm-dd',
      Qry_fymx.FieldByName('sfrq').AsDateTime);
    QRL_sfrq2_jx.Caption := FormatDatetime('yyyy-mm-dd',
      Qry_fymx.FieldByName('sfrq').AsDateTime);
    QRL_sfrq3_jx.Caption := FormatDatetime('yyyy-mm-dd',
      Qry_fymx.FieldByName('sfrq').AsDateTime);
    QRL_sfrq4_jx.Caption := FormatDatetime('yyyy-mm-dd',
      Qry_fymx.FieldByName('sfrq').AsDateTime);
    QuickRep_jx.Preview;
    try QuickRep_jx.Free except
    end;
  end;
end;

procedure Tfrm_sjcd.Proc_mzsj_sc;
var
  v_Infor_fy: TInfor_fy;
begin
  qry_fymx.Sort := 'sjbh ASC';
  v_Infor_fy := func_fyje_Calc(qry_fymx); //�����ܽ�ʵ���ܽ��վ�����

  Print_mzsj_sc(qry_fymx, qry_fymx.FieldByName('brxm').AsString, False, False,
    v_Infor_fy.fyje, v_Infor_fy.ssje, 0, v_Infor_fy.sjsl)
end;

procedure Tfrm_sjcd.Proc_mzsj_sc_b;
var
  v_Infor_fy: TInfor_fy;
  sbjk_je: string;
begin
  qry_fymx.Sort := 'sjbh ASC';
  v_Infor_fy := func_fyje_Calc(qry_fymx); //�����ܽ�ʵ���ܽ��վ�����
  if pub_yydm = '0046' then //�޽���ҽԺ
  begin
    Print_mzsj_sc_b(qry_fymx, qry_fymx.FieldByName('brxm').AsString, False, False,
      v_Infor_fy.fyje, v_Infor_fy.ssje, 0, v_Infor_fy.sjsl);
  end
  else
    if pub_yydm = '0015' then //��������ҽԺ
    begin
      Print_mzsj_sc_jy_b(qry_fymx, qry_fymx.FieldByName('brxm').AsString, False, False,
        v_Infor_fy.fyje, v_Infor_fy.ssje, 0, v_Infor_fy.sjsl);
    end
    else
      if pub_yydm = '0003' then //������ҽԺ
      begin
        Print_mzsj_sc_syy_b(qry_fymx, qry_fymx.FieldByName('brxm').AsString, False, False,
          v_Infor_fy.fyje, v_Infor_fy.ssje, 0, v_Infor_fy.sjsl);
      end
      else
      begin //ͨ�ø�ʽ:ͨ��������ҽԺ0020,��̨������ҽԺ0013
        Print_mzsj_sc_st_b(qry_fymx, qry_fymx.FieldByName('brxm').AsString, False, False,
          v_Infor_fy.fyje, v_Infor_fy.ssje, 0, v_Infor_fy.sjsl);
      end;
end;

procedure Tfrm_sjcd.Proc_mzsj_sc_kb;
var
  v_Infor_fy: TInfor_fy;
begin
  qry_fymx.Sort := 'sjbh ASC';
  v_Infor_fy := func_fyje_Calc(qry_fymx); //�����ܽ�ʵ���ܽ��վ�����
  Print_mzsj_sc_kb(qry_fymx, False, False,
    v_Infor_fy.ssje, 0.0, v_Infor_fy.sjsl, 0, 0, 0, 0);

end;

procedure Tfrm_sjcd.Proc_mzsj_sx;
var
  ssje_hj, ssje, fpje: Real; //ʵ�ʽ���ܶ�,Ҫ��ӡ�ķ�Ʊ�ϵ��ܽ��
  i, j: Integer;
begin
  ssje_hj := 0;
  qry_fymx.Filtered := False;
  qry_fymx.Filter := 'sjbh=' + cdsjh;
  qry_fymx.Filtered := true;
  ssje := 0.00;
  fpje := 0.00;
  qry_fymx.first;
  for i := 1 to qry_fymx.recordcount do
  begin
    if qry_fymx.FieldByName('sfbz').AsBoolean then
    begin
      fpje := fpje + qry_fymx.FieldByName('fyzje').AsCurrency;
      ssje := ssje + qry_fymx.FieldByName('sszje').AsCurrency;
    end;
    qry_fymx.next;
  end;
  ssje_hj := ssje_hj + ssje;

  Application.CreateForm(Tfrm_repo_hjsf, frm_repo_hjsf);
  frm_repo_hjsf.QRL_kyhsfbz_sx3d.Enabled := (cd_fylb <> '01');

  frm_repo_hjsf.QRL_dxje_sx.Caption := 'ʵ��:��' + NumberToMoney(ssje);
  frm_repo_hjsf.QRL_xxje_sx.Caption := format('��%3.2f', [ssje]);
  frm_repo_hjsf.QRL_czy_sx.Caption := pub_czydm + '#' + Copy(pub_czyxm, 1, 2);
  frm_repo_hjsf.QRL_yymc_sx.caption := pub_yymc;
  frm_repo_hjsf.QRDB_sjbh_sx.DataSet := qry_fymx;
  frm_repo_hjsf.QRDB_brxm_sx.DataSet := qry_fymx;
  frm_repo_hjsf.QRDB_ksmc_sx.DataSet := qry_fymx;
  frm_repo_hjsf.QRDB_fydymc_sx.DataSet := qry_fymx;
  frm_repo_hjsf.QRDB_sfrq_sx.DataSet := qry_fymx;
  frm_repo_hjsf.QRDB_cfbh_sx.DataSet := qry_fymx;
  if pub_yydm = '0137' then //��ƺ��ҽԺ��Ԥ����ʽ
    frm_repo_hjsf.QuickRep_sx.Preview
  else
    frm_repo_hjsf.QuickRep_sx.Print;

  try
    frm_repo_hjsf.Free
  except
  end;
end;

procedure Tfrm_sjcd.Proc_mzsj_sx3d;
var
  ssje, fpje: Real; //ʵ�ʽ���ܶ�,Ҫ��ӡ�ķ�Ʊ�ϵ��ܽ��
  i, j: Integer;
begin
  qry_fymx.first;
  for i := 1 to qry_fymx.recordcount do
  begin
    if qry_fymx.FieldByName('sfbz').AsBoolean then
    begin
      fpje := fpje + qry_fymx.FieldByName('fyzje').AsCurrency;
      ssje := ssje + qry_fymx.FieldByName('sszje').AsCurrency;
    end;
    qry_fymx.next;
  end;

  Application.CreateForm(Tfrm_repo_hjsf, frm_repo_hjsf);
  frm_repo_hjsf.QRL_kyhsfbz_sx3d.Enabled := (cd_fylb <> '01');

  frm_repo_hjsf.QRL_czy_sx3d.Caption := pub_czydm + '#' + Copy(pub_czyxm, 1, 2);
  frm_repo_hjsf.QRL_yymc_sx3d.caption := pub_yymc;
  frm_repo_hjsf.QRDB_cfbh_sx3d.DataSet := qry_fymx;
  frm_repo_hjsf.QRDB_sjbh_sx3d.DataSet := qry_fymx;
  frm_repo_hjsf.QRDB_brxm_sx3d.DataSet := qry_fymx;
  frm_repo_hjsf.QRDB_ksmc_sx3d.DataSet := qry_fymx;
  frm_repo_hjsf.QRDBText3.DataSet := qry_fymx;
  frm_repo_hjsf.QRDBText4.DataSet := qry_fymx;
  frm_repo_hjsf.QRDB_sfrq_sx3d.DataSet := qry_fymx;
  frm_repo_hjsf.QuickRep_sx3d.DataSet := qry_fymx;
  if pub_yydm = '0137' then //��ƺ��ҽԺ��Ԥ����ʽ
    frm_repo_hjsf.QuickRep_sx3d.Preview
  else
    frm_repo_hjsf.QuickRep_sx3d.Print;

  try
  frm_repo_hjsf.Free except
  end;
end;

procedure Tfrm_sjcd.Proc_mzsj_sx_htqfybjy;
begin
  Application.CreateForm(Tfrm_mzbb, frm_mzbb);
  with frm_mzbb do
  begin
    try
      QRL_czy_sx_ht.Caption := pub_czydm + '#' + copy(pub_czyxm, 1, 2);
      QuickRep_sx_htfybjy.Print;
    finally
      frm_mzbb.Free;
    end;
  end;
end;

procedure Tfrm_sjcd.Proc_mzsj_xj;
var
  ssje, fpje: Real; //Ҫ��ӡ�ķ�Ʊ�ϵ��ܽ��
  i: Integer;
begin
  qry_fymx.Filtered := False;
  qry_fymx.Filter := 'sjbh=' + cdsjh;
  qry_fymx.Filtered := true;
  ssje := 0.00;
  fpje := 0.00;
  qry_fymx.first;
  for i := 1 to qry_fymx.recordcount do
  begin
    if qry_fymx.FieldByName('sfbz').AsBoolean then
    begin
      fpje := fpje + qry_fymx.FieldByName('fyzje').AsCurrency;
      ssje := ssje + qry_fymx.FieldByName('sszje').AsCurrency;
    end;
    qry_fymx.next;
  end;
  Application.CreateForm(Tfrm_repo_hjsf, frm_repo_hjsf);
  frm_repo_hjsf.QRL_dxje_xj.Caption := '��' + NumberToMoney(fpje);
  frm_repo_hjsf.QRL_czy_xj.Caption := pub_czydm + '#' + copy(pub_czyxm, 1, 2);
  frm_repo_hjsf.QRL_yymc_xj.caption := pub_yymc;
  if cd_fylb <> '01' then
  begin
    frm_repo_hjsf.QRL_kyhsfbz_xj.Caption := 'Ӧ��:' +
      format('��%3.2f', [fpje]) + 'ʵ��:' + format('��%3.2f', [ssje]);
  end
  else
  begin
    frm_repo_hjsf.QRL_kyhsfbz_xj.caption := '';
  end;
  frm_repo_hjsf.QuickRep_xj.print;

  try
    frm_repo_hjsf.Free
  except
  end;
end;

procedure Tfrm_sjcd.Proc_mzsj_xz;
var
  i: Integer;
  a: TControl;
begin
  Application.CreateForm(Tfrm_mzbb, frm_mzbb);
  try
    frm_mzbb.QRL_czy1_xz.Caption := pub_czydm + '#' + copy(pub_czyxm, 1, 2);
    frm_mzbb.QRL_czy2_xz.Caption := pub_czydm + '#' + copy(pub_czyxm, 1, 2);
    frm_mzbb.QRL_czy3_xz.Caption := pub_czydm + '#' + copy(pub_czyxm, 1, 2);

    frm_mzbb.QuickRep_xz.DataSet := qry_fymx;
    for I := 0 to frm_mzbb.QRGroup2.ControlCount - 1 do
      if frm_mzbb.QRGroup2.Controls[i] is TQRDBText then
        (frm_mzbb.QRGroup2.Controls[i] as TQRDBText).DataSet := frm_sjcd.qry_fymx;
    for I := 0 to frm_mzbb.DetailBand2.ControlCount - 1 do
      if frm_mzbb.DetailBand2.Controls[i] is TQRDBText then
        (frm_mzbb.DetailBand2.Controls[i] as TQRDBText).DataSet := frm_sjcd.qry_fymx;
    for I := 0 to frm_mzbb.QRBand2.ControlCount - 1 do
      if frm_mzbb.QRBand2.Controls[i] is TQRDBText then
        (frm_mzbb.QRBand2.Controls[i] as TQRDBText).DataSet := frm_sjcd.qry_fymx;
    frm_mzbb.QuickRep_xz.Print;
  finally
    frm_mzbb.Free
  end;
end;

procedure Tfrm_sjcd.proc_get_sjbh(sjlx: string);
var
  bh: integer;
begin
  try
    with dm_data.qry_pub do
    begin
      close;
      sql.clear;
      sql.text := 'select sjzh-sybh sjsl,sybh,sjqh from sys_sjlymx' +
        ' where lyr=' + '''' + pub_czydm + '''' +
        ' and   qybz=1 and tybz=0' +
        ' and   sjlb=' + '''' + sjlx + '''';
      open;
    end;
    if (dm_data.qry_pub['sjsl'] = 0) or (VarIsNull(dm_data.qry_pub['sjsl'])) then
    begin
      MessageDlg('�վ������꣬���ڽ��˳���ģ�飬���������վݣ�', mtWarning, [mbOK], 0);
      frm_sjcd.close;
      abort;
    end
    else
    begin
      if dm_data.qry_pub['sybh'] = 0 then
      begin
        bh := dm_data.qry_pub['sjqh'];
      end
      else
      begin
        bh := dm_data.qry_pub['sybh'] + 1;
      end;
      cdsjh := formatex(bh, 9);
      edit2.Text := cdsjh;
    end;
  except
    application.MessageBox('�����վݺų���!', '��ʾ', 0 + 16);
  end;
end;

procedure Tfrm_sjcd.Button3Click(Sender: TObject);
begin
  close;
end;

procedure Tfrm_sjcd.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    with sp_sfsjcx do
    begin
      close;
      parameters.Parambyname('@sjbh').value := strtoint(trim(edit1.text));
      parameters.Parambyname('@czydm').value := pub_czydm;
      open;
    end;
    if sp_sfsjcx.IsEmpty then
    begin
      application.MessageBox('���վݺŲ������ش�������', '��ʾ', 0 + 16);
      edit1.Clear;
    end
    else
    begin
      DM_data.qry_pub.Close;
      DM_data.qry_pub.SQL.Text := 'exec sp_cx_mz_Gh_zdybb ''' + sp_sfsjcx.FieldByName('sjbh').AsString + '''';
      DM_data.qry_pub.Open;
      if not DM_data.qry_pub.IsEmpty then //�Һ�Ʊ��
      begin
        if Application.MessageBox('�˵����ǹҺ�Ʊ�ݣ��Ƿ�ȷ���ش�' + #13#10,
          '�Һŵ�Ʊ��', MB_OKCANCEL + MB_ICONQUESTION) = IDCANCEL then
        begin
          Exit;
        end;
        frm_sjcd.proc_get_sjbh(pub_ghsjlb);
        �ǹҺ�Ʊ�� := True;
      end else begin
        frm_sjcd.proc_get_sjbh(pub_mzsjlb);
        �ǹҺ�Ʊ�� := False;
      end;
      cd_fylb := sp_sfsjcx.FieldByName('fylb').AsString;
      cd_ph := sp_sfsjcx.FieldByName('ph').AsString;
      button2.Enabled := true;
      button2.SetFocus;
    end;
  end;

  if not ((key in ['0'..'9']) or (key = #8) or (key = '-')) then
    key := #0;
end;

procedure Tfrm_sjcd.Edit1Exit(Sender: TObject);
begin
  if edit1.Text = '' then
    edit1.Text := '0';
end;

procedure Tfrm_sjcd.Proc_mzsj_999999;
var
  ado_sjj: TADOQuery;
begin
  ado_sjj := TADOQuery.Create(nil);
  try
    ado_sjj.Connection := DM_data.ado_mydata;
    ado_sjj.Close;
    ado_sjj.SQL.Text := 'exec mzsf_mzsj_js_dx_cd ''' + trim(qry_fymx.FieldByName('sjbh').AsString) + '''';
    ado_sjj.Open;
    frm_mzsf_print_service.printmzsj_js_999999(trim(qry_fymx.FieldByName('tmh').AsString),
      trim(qry_fymx.FieldByName('brxm').AsString), pub_czydm, pub_czyxm, ado_sjj);
  finally
    ado_sjj.free;
  end;
//  proc_get_sjbh; //ȡ�����վݱ��
end;

procedure Tfrm_sjcd.Button2Click(Sender: TObject);
var
  nian, yue, ri: word;
  cd_return: string;
  v_Infor_fy: TInfor_fy;
  sbjk_je: string;
  v_IsPrinterJoin: Boolean;
  v_PrinterIndex_new: Integer;
  v_PrinterIndex_old: Integer;
begin
  if �ǹҺ�Ʊ�� then
  begin
    cd_return := mzsf_sjcd(pub_ghsjlb, pub_czydm, strtoint(trim(edit1.text)), strtoint(cdsjh));
  end else
    cd_return := mzsf_sjcd(pub_mzsjlb, pub_czydm, strtoint(trim(edit1.text)), strtoint(cdsjh));
  if cd_return <> '1' then
    application.MessageBox(pchar(cd_return), '��ʾ', 0 + 16)
  else
  begin
    qry_fymx.Close;
    qry_fymx.Parameters.ParamByName('sjbh').Value := strtoint(cdsjh);
    qry_fymx.Open;
    try
      with DM_data do
      begin
        qry_pub.Close;
        qry_pub.SQL.Text := 'declare @ph varchar(20)' +
          ' set @ph = :ph' +
          ' select a.zhzf,a.tczf,b.zfy-a.zhzf-a.tczf xjzf from sbjk_sbjs a,(select SUM(sszje) zfy,ph from mzsf_mzfymx where ph=@ph group by ph) b' +
          ' where a.zyh = @ph and a.fylb = 2 and a.zyh = b.ph and a.yxbz = 1';
        qry_pub.Parameters.ParamByName('ph').Value := qry_fymx.FieldByName('ph').AsString;
        qry_pub.Open;
        if qry_pub.RecordCount > 0 then
        begin
          sbjk_je := '�籣�ϼ�' +
            ' �˻�֧��' + format('%0.2f', [qry_pub.FieldByName('zhzf').AsFloat]) +
          ' ͳ��֧��' + format('%0.2f', [qry_pub.FieldByName('tczf').AsFloat]) +
          ' �ֽ�֧��' + format('%0.2f', [qry_pub.FieldByName('xjzf').AsFloat]);
        end
        else
        begin
          sbjk_je := '';
        end;
      end;
    except
      sbjk_je := '';
    end;
    if qry_fymx.RecordCount <= 0 then
    begin
      Application.MessageBox('��ʾ:��������վݺŶ�Ӧ��ϸδ�ҵ�!', '��ʾ', MB_ICONINFORMATION);
      Exit;
    end
    else
    begin
      if �ǹҺ�Ʊ�� then
      begin
        button2.Enabled := false;
        Print_mz_Gh_zdybb(Edit2.Text);
        Exit;
      end;

      //�ж��Ƿ�ʹ�ô�ӡ������ʽ��ȡ�ô�ӡ�����
      v_PrinterIndex_old := Printer.PrinterIndex;
      v_PrinterIndex_new := func_GetPrinterIndex(2, v_IsPrinterJoin);
      if v_IsPrinterJoin then
        Proc_ChangePrinter(v_PrinterIndex_new, False);

      if pub_mzsfsfqyjs then //��������ִ��ÿ��ҽ���
        Proc_mzsj_999999
      else //һƱ���
        if (pub_mzsjlx = '010101') or (pub_mzsjlx = '010102') then //��ӡ�Ĵ��վ�
          Proc_mzsj_sc
        else //-------------------------20100827�����޸�----------------------
          if pub_mzsjlx = '010103' then //��ӡ�Ĵ��վ�(��Ʊ)
            Proc_mzsj_sc_b
          else
            if pub_mzsjlx = '020101' then //��ӡ�����վ�
              Proc_mzsj_sx
            else
              if pub_mzsjlx = '020102' then //��ӡ�����վ�(����)
                Proc_mzsj_sx3d
              else
                if pub_mzsjlx = '020103' then //��ӡ�����վ�(��̨�����ױ���Ժ)
                  Proc_mzsj_sx_htqfybjy
                else
                  if pub_mzsjlx = '030101' then //��ӡ�½��վ�
                    Proc_mzsj_xj
                  else
                    if pub_mzsjlx = '040101' then //��ӡ�����վ�
                      Proc_mzsj_jx
                    else
                      if pub_mzsjlx = '050101' then //��ӡ�����վݸ�ʽһ
                        Proc_mzsj_hb1
                      else
                        if pub_mzsjlx = '050102' then //��ӡ�����վݸ�ʽ��
                          Proc_mzsj_hb2(cd_ph)
                        else
                          if pub_mzsjlx = '050103' then //��ӡ����������������Ʊ��
                            Proc_mzsj_hb3(cd_ph)
                          else
                            if pub_mzsjlx = '050104' then //��ӡ�����վݸ�ʽ(��Ʊ)
                              Proc_mzsj_hb_b
                            else
                              if pub_mzsjlx = '060101' then //��ӡ�����վ�
                                Proc_mzsj_xz
                              else
                                if pub_mzsjlx = '070101' then //��ӡ�����վݸ�ʽ��
                                  Proc_mzsj_gs1
                                else
                                  if pub_mzsjlx = '999999' then //��ӡ�Զ��屨���ʽ
                                    Proc_mzsj_sc_kb;
      //��ԭԭ��Ĭ�ϴ�ӡ��
      if v_IsPrinterJoin then
        Proc_ChangePrinter(v_PrinterIndex_old, False);
      //--------------------------------------------------------------
    end;
  end;
  button2.Enabled := false;
end;


end.

