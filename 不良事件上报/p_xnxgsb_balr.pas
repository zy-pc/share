unit p_xnxgsb_balr;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, StdCtrls, Buttons, cxCheckBox, cxDropDownEdit,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxCalendar, cxDBEdit,
  Mask, DBCtrls, ExtCtrls, DB, ADODB;

type
  Tfrm_xnxgsb_balr = class(TForm)
    Panel9: TPanel;
    Label37: TLabel;
    jbmc1: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label33: TLabel;
    Label58: TLabel;
    Label15: TLabel;
    Label24: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label38: TLabel;
    DBEdit24: TDBEdit;
    DBEdit30: TDBEdit;
    DBEdit31: TDBEdit;
    dtpswrq: TcxDBDateEdit;
    dtpbgrq: TcxDBDateEdit;
    cxComboBox9: TcxComboBox;
    fbrq: TcxDBDateEdit;
    qzrq: TcxDBDateEdit;
    cxComboBox10: TcxComboBox;
    DBEdit2: TDBEdit;
    cxComboBox4: TcxComboBox;
    cxComboBox7: TcxComboBox;
    Panel7: TPanel;
    B_save: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn2: TBitBtn;
    qry_pub: TADOQuery;
    AdoInsert: TADODataSet;
    AdoInsertid: TAutoIncField;
    AdoInsertmztmh: TStringField;
    AdoInsertzytmh: TStringField;
    AdoInsertzyh: TStringField;
    AdoInsertksdm: TStringField;
    AdoInsertsbczy: TStringField;
    AdoInsertysmzzy: TStringField;
    AdoInsertbrxm: TStringField;
    AdoInsertbrxb: TStringField;
    AdoInsertbrnl: TStringField;
    AdoInsertcsrq: TDateTimeField;
    AdoInsertsfzhm: TStringField;
    AdoInsertjbzdxh: TStringField;
    AdoInsertbrzd: TStringField;
    AdoInsertbrmz: TStringField;
    AdoInserthyzk: TStringField;
    AdoInsertbrzy: TStringField;
    AdoInsertgzdw: TStringField;
    AdoInsertjtdh: TStringField;
    AdoInserthkdz: TStringField;
    AdoInserthkdzsq: TStringField;
    AdoInserthkdzxq: TStringField;
    AdoInserthkdzxz: TStringField;
    AdoInsertjzdz: TStringField;
    AdoInsertbrks: TStringField;
    AdoInsertsjbh: TStringField;
    AdoInsertxzqhdm: TStringField;
    AdoInsertxzqhxq: TStringField;
    AdoInsertxzqhjd: TStringField;
    AdoInsertyxq: TDateTimeField;
    AdoInsertqzfq: TStringField;
    AdoInsertbgdw: TStringField;
    AdoInsertbgys: TStringField;
    AdoInsertbgrq: TDateTimeField;
    AdoInsertswrq: TDateTimeField;
    AdoInsertgbsy: TStringField;
    AdoInsertswdd: TStringField;
    AdoInsertyzd: TStringField;
    AdoInsertyzdrq: TDateTimeField;
    AdoInsertblyf: TStringField;
    AdoInsertsjybl: TStringField;
    AdoInsertbfb: TStringField;
    AdoInsertsjsbrq: TDateTimeField;
    AdoInsertzdyj: TStringField;
    AdoInsertzdyjmc: TStringField;
    AdoInsertscfb: TStringField;
    AdoInsertfbrq: TDateTimeField;
    AdoInsertqzrq: TDateTimeField;
    AdoInsertzgqk: TStringField;
    AdoInsertzgqzdw: TStringField;
    AdoInsertbrly: TStringField;
    AdoInsertsfwc: TStringField;
    AdoInsertsfdy: TStringField;
    AdoInsertlxr: TStringField;
    AdoInsertqzdw: TStringField;
    AdoInsertzgzdyj: TStringField;
    AdoInsertzgzdyjmc: TStringField;
    AdoInserthkdzbm: TStringField;
    AdoInsertjzdzbm: TStringField;
    AdoInsertbrzdxh: TStringField;
    qry_temp: TADOQuery;
    DSinsert: TDataSource;
    GroupBox2: TGroupBox;
    cxCheckBox12: TcxCheckBox;
    cxCheckBox13: TcxCheckBox;
    cxCheckBox14: TcxCheckBox;
    cxCheckBox15: TcxCheckBox;
    cxCheckBox16: TcxCheckBox;
    cxCheckBox17: TcxCheckBox;
    cxCheckBox11: TcxCheckBox;
    cxCheckBox18: TcxCheckBox;
    cxCheckBox19: TcxCheckBox;
    cxCheckBox20: TcxCheckBox;
    DBEdit3: TDBEdit;
    Label27: TLabel;
    Label2: TLabel;
    jbmc3: TLabel;
    procedure FormShow(Sender: TObject);
    procedure B_saveClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
     kj1:TObject;
     v_tmh,v_zyh:string;
     function get_xsz_ba(bmc,cxz:string):string;
     function  get_zdmc(bmc,cxz,bmid:string):string;//获取诊断名称
     procedure tbjc(lstmh:string);//填报填是否有已存在记录检查
     procedure zycsh;//住院初始化
     procedure zdyjbc;//诊断依据,病理分期保存
     procedure zdyjzk;//诊断依据,病理分期展开
     function ljjc:boolean;//逻辑检查

  public
    { Public declarations }
  end;

var
  frm_xnxgsb_balr: Tfrm_xnxgsb_balr;

implementation
uses p_dm,p_func,p_balr,p_checkError;

{$R *.dfm}

procedure Tfrm_xnxgsb_balr.BitBtn2Click(Sender: TObject);
begin
   zdyjbc;
   ADOInsert['scfb']:=trim(cxcombobox4.Text); //首次发病
   ADOInsert['qzdw']:=trim(cxcombobox7.Text); //确诊单位
   ADOInsert['zgqk']:=trim(cxcombobox10.Text); //转归情况
   ADOInsert['swdd']:=trim(cxcombobox9.Text);
   ADOInsert.Post;
   ADOInsert.UpdateBatch(Arall);
   ADOInsert.Edit;
  if not ljjc then
  begin
   if (application.MessageBox('完成后不能再进行任何修改，是否继续？', '请注意', MB_YESNO + MB_ICONQUESTION) = IDYES) then
   begin
    qry_temp.Close;
    qry_temp.SQL.Clear;
    qry_temp.SQL.Add('update zybl_xnxgsb set sfwc=1 where zyh='+#39+v_zyh+#39);
    qry_temp.ExecSQL;
    application.messagebox('填报处理完成！', '提示', mb_ok + mb_iconinformation);
    Self.Close;
   end;

  end;
end;

procedure Tfrm_xnxgsb_balr.B_saveClick(Sender: TObject);
begin
   zdyjbc;
   ADOInsert['scfb']:=trim(cxcombobox4.Text); //首次发病
   ADOInsert['qzdw']:=trim(cxcombobox7.Text); //确诊单位
   ADOInsert['zgqk']:=trim(cxcombobox10.Text); //转归情况
   ADOInsert['swdd']:=trim(cxcombobox9.Text);
   ADOInsert.Post;
   ADOInsert.UpdateBatch(Arall);
   ADOInsert.Edit;
   application.messagebox('保存成功！', '提示', mb_ok + mb_iconinformation);
end;

procedure Tfrm_xnxgsb_balr.FormShow(Sender: TObject);
begin
  dtpbgrq.Date:=now;
  v_tmh:=Trim(frm_balr.Edit1.Text);
  v_zyh:=Trim(frm_balr.ADODataSet2ZYH.AsString);
  frm_xnxgsb_balr.Caption:=frm_xnxgsb_balr.Caption+'  病人姓名:'+Trim(frm_balr.Editxm.Text)+'  住院号:'+Trim(frm_balr.Edit1.Text);
  zycsh;
end;
procedure Tfrm_xnxgsb_balr.tbjc(lstmh:string);//填报时检查
begin
 qry_pub.Close;
 qry_pub.SQL.Clear;
 qry_pub.SQL.Text:='Select * from zybl_xnxgsb where  zyh='+#39+v_zyh+#39+ ' and sfwc=1';
 qry_pub.Open;
 if not  qry_pub.IsEmpty then
 begin
  if (application.MessageBox('已存在该卡号的上报信息，是否继续？', '请注意', MB_YESNO + MB_ICONQUESTION) = IDNO) then
   abort;
 end;
end;

procedure Tfrm_xnxgsb_balr.zycsh;//住院初始化
var
s,v_dzbm:string;
i:integer;
begin
  //tbjc(v_zyh);
  //qry_pub.Close;
  //qry_pub.SQL.Clear;
  //qry_pub.SQL.Text:='Select * from zybl_xnxgsb where  zyh='+#39+v_zyh+#39+ ' and sfwc=1';
  //qry_pub.Open;
  ADOInsert.Close;
  ADOInsert.CommandText:='select * from zybl_xnxgsb where ZYH= '+#39+v_ZYH+#39 +' and  brly='+#39+'ZY'+#39+'  and  sfwc=0' ;
  ADOInsert.Open;
  if ADOInsert.RecordCount=0 then
  begin
     qry_temp.Close;
     qry_temp.SQL.Clear;
     qry_temp.SQL.Add('exec zybl_zlblsbk_zycsh '''+v_zyh+'''');
     qry_temp.Open;
     ADOInsert.Edit;
     //if Trim(qry_temp.fieldbyname('sfzhm').asstring)<>'' then
     //sfzhjc(qry_temp.fieldbyname('sfzhm').asstring);
     ADOInsert.Append;
     ADOInsert['bgrq']:=now;
     ADOInsert['xzqhdm']:='510703';
     ADOInsert['xzqhxq']:='涪城区';
     ADOInsert['xzqhjd']:='警钟街';
     ADOInsert['hkdzsq']:='四川省绵阳市';
     ADOInsert['sjbh']:=v_tmh;
     ADOInsert['zytmh']:=v_tmh;
     ADOInsert['zyh']:=v_zyh;
     ADOInsert['ksdm']:=pub_ksdm;
     ADOInsert['brks']:=get_xsz_ba('sys_ksdm',pub_ksdm);
     ADOInsert['brxm']:=qry_temp.fieldbyname('brxm').asstring;
     ADOInsert['jtdh']:=Trim(qry_temp.fieldbyname('dwdh').asstring);
     ADOInsert['brxb']:=qry_temp.fieldbyname('brxb').asstring;
     ADOInsert['brnl']:=qry_temp.fieldbyname('c_brnl').asstring;
     ADOInsert['csrq']:=qry_temp.fieldbyname('csrq').AsDateTime;
     ADOInsert['fbrq']:=frm_balr.ADODataSet2.fieldbyname('rysj').AsDateTime;
     ADOInsert['qzrq']:=frm_balr.ADODataSet2.fieldbyname('qzsj').AsDateTime;
     ADOInsert['lxr']:=qry_temp.fieldbyname('lxr').asstring;
     ADOInsert['brmz']:=get_xsz_ba('sys_mz',qry_temp.fieldbyname('brmz').asstring);
     ADOInsert['brzy']:=frm_balr.ADODataSet2.fieldbyname('zy').asstring;
    // cxcombobox5.Text:=qry_temp.fieldbyname('brzy').asstring;
     if trim(qry_temp.fieldbyname('sfzhm').asstring)<>'' then
       ADOInsert['sfzhm']:=qry_temp.fieldbyname('sfzhm').asstring
     else
     ADOInsert['sfzhm']:=qry_temp.fieldbyname('basfzh').asstring;
     ADOInsert['brzd']:=frm_balr.ADODataSet3.fieldbyname('dm').asstring;
     jbmc1.Caption:=get_zdmc('icd10',ADOInsert.fieldbyname('brzd').asstring,'');
     ADOInsert['gzdw']:=frm_balr.ADODataSet2.fieldbyname('gzdw').asstring;;
     ADOInsert['brmz']:=qry_temp.fieldbyname('mz').asstring;
     ADOInsert['hkdzbm']:=qry_temp.fieldbyname('hkdzbm').asstring;
     ADOInsert['jzdzbm']:=qry_temp.fieldbyname('brdzbm').asstring;
     ADOInsert['jzdz']:=qry_temp.fieldbyname('brdz').asstring;
     s:=qry_temp.fieldbyname('hkdz').asstring;
    // dzjc(s,qry_temp.fieldbyname('hkdzbm').asstring);
     //s:=StringReplace(s,Trim(DBEdit18.Text), '', [rfReplaceAll]);
     //s:=StringReplace(s,Trim(cxComboBox2.Text),'', [rfReplaceAll]);
    // s:=StringReplace(s,Trim(cxComboBox8.text),'', [rfReplaceAll]);
     ADOInsert['hkdz']:=s;
     ADOInsert['bgdw']:='绵阳市中心医院';
     ADOInsert['bgys']:=pub_czyxm;
     ADOInsert['sbczy']:=pub_czydm;
     ADOInsert['brly']:='ZY';
     ADOInsert['sfwc']:='0';
     b_save.Enabled:=true;
     qry_temp.close;
  end
  else
  begin
    zdyjzk;
    cxcombobox9.Text:= ADOInsert.FieldByName('swdd').AsString;
    cxcombobox10.Text:= ADOInsert.FieldByName('zgqk').AsString;
    cxcombobox4.Text:= ADOInsert.FieldByName('scfb').AsString;
    cxcombobox7.Text:= ADOInsert.FieldByName('qzdw').AsString;
    ADOInsert.Edit;
  end;

end;
function Tfrm_xnxgsb_balr.get_xsz_ba(bmc,cxz:string):string;
var sj:string;
begin
  Qry_pub.close;
  Qry_pub.SQL.clear;
  Qry_pub.sql.add('select * from '+bmc+' where dm='+#39+cxz+#39+'order by dm');
  Qry_pub.open;
  if Qry_pub.RecordCount=1 then
  begin
    if (bmc='zysf_rytj') or (bmc='zysf_rybq')
    then
     result:=trim(Qry_pub.fieldbyname('sm').asstring)
     else
     result:=trim(Qry_pub.fieldbyname('mc').asstring)
  end
  else
    result:='';
end;
function Tfrm_xnxgsb_balr.get_zdmc(bmc,cxz,bmid:string):string;//获取诊断名称//获取诊断名称
 var sj:string;
 begin
  qry_pub.close;
  qry_pub.SQL.Clear;
  if bmc='ba_bambm' then
  begin
    if bmid='' then
    qry_pub.SQL.Add('select top 1 * from '+bmc+' where jbbm='+#39+cxz+#39 )
    else
    qry_pub.SQL.Add('select  * from '+bmc+' where jbbm='+#39+cxz+#39+' and id='+bmid );
  end
  else
  qry_pub.SQL.Add('select * from '+bmc+' where jbbm='+#39+cxz+#39);
  qry_pub.open;
  if qry_pub.RecordCount=1 then
  begin
   if(bmc='sys_bassk') then
   result:=trim(qry_pub.fieldbyname('ssmc').asstring)
   else
   result:=trim(qry_pub.fieldbyname('jbmc').asstring)
  end
   else
   result:='';
  end;
  procedure Tfrm_xnxgsb_balr.zdyjbc;//诊断依据保存
var
  v_zdyj,v_qzfq,v_zdyjmc: string;
  i:integer;
begin
 v_zdyj:='';
 v_qzfq:='';
{  for i := 1 to 10 do
  begin
   if TcxCheckBox(FindComponent('cxcheckBox'+inttostr(i))).Checked  then
     begin
       v_zdyj:=v_zdyj+'1';
       v_zdyjmc:=v_zdyjmc+trim(TcxCheckBox(FindComponent('cxcheckBox'+inttostr(i))).Caption)+'+';
     end
     else
       v_zdyj:=v_zdyj+'0';
  end;
  adoinsert['zdyj'] := v_zdyj; //诊断依据赋值
  adoinsert['zdyjmc'] := v_zdyjmc; //诊断依据赋值 }

 v_zdyj:='';
 v_qzfq:='';
  for i := 11 to 20 do
  begin
   if TcxCheckBox(FindComponent('cxcheckBox'+inttostr(i))).Checked  then
     begin
       v_zdyj:=v_zdyj+'1';
       v_zdyjmc:=v_zdyjmc+trim(TcxCheckBox(FindComponent('cxcheckBox'+inttostr(i))).Caption)+'+';
     end
     else
       v_zdyj:=v_zdyj+'0';
  end;
  adoinsert['zgzdyj'] := v_zdyj; //最高诊断依据赋值
  adoinsert['zgzdyjmc'] := v_zdyjmc; //最高诊断依据赋值
end;

 procedure Tfrm_xnxgsb_balr.zdyjzk;//诊断依据展开
 var
 v_zdyj,v_qzfq:string;
 i:integer;
 begin
  { v_zdyj:=AdoInsert.fieldbyname('zdyj').asstring;//诊断依据展开
   for I := 1 to 10 do
   begin
     if copy(v_zdyj,i,1)='1' then
        TcxCheckBox(FindComponent('cxcheckBox'+inttostr(i))).Checked :=true
     else
        TcxCheckBox(FindComponent('cxcheckBox'+inttostr(i))).Checked :=false;
   end; }
    v_zdyj:=AdoInsert.fieldbyname('zgzdyj').asstring;//最高诊断依据展开
   for I := 11 to 20 do
   begin
     if copy(v_zdyj,i-10,1)='1' then
        TcxCheckBox(FindComponent('cxcheckBox'+inttostr(i))).Checked :=true
     else
        TcxCheckBox(FindComponent('cxcheckBox'+inttostr(i))).Checked :=false;
   end;
 end;
function Tfrm_xnxgsb_balr.ljjc:boolean;
var
i,iii:integer;
zdyjbz,zgzdyjbz:string;//诊断依据至少选择一项判断标志
begin
  if frm_checkerror = nil then
    Application.CreateForm(Tfrm_checkerror, frm_checkerror);
  frm_checkerror.Memo1.Clear;
  iii := 0;
  if Trim(dbedit24.Text)  = '' then
  begin
    iii := iii + 1;
    frm_checkerror.Memo1.Lines.Add(trim(inttostr(iii)) + '：ICD10编码不能为空!');
  end;
  if Trim(cxComboBox4.Text)  = '' then
  begin
    iii := iii + 1;
    frm_checkerror.Memo1.Lines.Add(trim(inttostr(iii)) + '：是否首次发病不能为空!');
  end;
  if FormatDateTime('yyyy-mm-dd', fbrq.Date) <= '2000-00-00' then
  begin
    iii := iii + 1;
    frm_checkerror.Memo1.Lines.Add(trim(inttostr(iii)) + '：发病日期错误!');
  end;
  if FormatDateTime('yyyy-mm-dd', qzrq.Date) <= '2000-00-00' then
  begin
    iii := iii + 1;
    frm_checkerror.Memo1.Lines.Add(trim(inttostr(iii)) + '：确诊日期错误!');
  end;
 if Trim(dbedit30.Text)  = '' then
  begin
    iii := iii + 1;
    frm_checkerror.Memo1.Lines.Add(trim(inttostr(iii)) + '：报告单位不能为空!');
  end;
  if Trim(cxComboBox7.Text)  = '' then
  begin
    iii := iii + 1;
    frm_checkerror.Memo1.Lines.Add(trim(inttostr(iii)) + '：最高确诊单位不能为空!');
  end;
  if Trim(cxComboBox10.Text)  = '' then
  begin
    iii := iii + 1;
    frm_checkerror.Memo1.Lines.Add(trim(inttostr(iii)) + '：转归情况能为空!');
  end;
  if Trim(dbedit31.Text)  = '' then
  begin
    iii := iii + 1;
    frm_checkerror.Memo1.Lines.Add(trim(inttostr(iii)) + '：报告医师不能为空!');
  end;
  if FormatDateTime('yyyy-mm-dd', dtpbgrq.Date) <= '2016-00-00' then
  begin
    iii := iii + 1;
    frm_checkerror.Memo1.Lines.Add(trim(inttostr(iii)) + '：报告日期错误!');
  end;
  if ( Trim(cxComboBox10.Text)='死亡') and (FormatDateTime('yyyy-mm-dd ', dtpswrq.Date) < FormatDateTime('yyyy-mm-dd ', fbrq.Date)) then
  begin
    iii := iii + 1;
    frm_checkerror.Memo1.Lines.Add(trim(inttostr(iii)) + '：转归为死亡,死亡日期应大于发病日期');
  end;
  if ( Trim(cxComboBox10.Text)='死亡') and ((Trim(DBEdit2.Text)='') or (trim(cxComboBox9.Text)='')) then
  begin
    iii := iii + 1;
    frm_checkerror.Memo1.Lines.Add(trim(inttostr(iii)) + '：转归为死亡,则应填写死亡原因、死亡地点');
  end;
  { zdyjbz:='0';
  for I := 1 to 10 do
  begin
    if TcxCheckBox(FindComponent('cxcheckBox'+inttostr(i))).Checked =true then
    begin
      zdyjbz:='1';
      break;;
    end;
  end;
  if zdyjbz='0' then
  begin
    iii := iii + 1;
    frm_checkerror.Memo1.Lines.Add(trim(inttostr(iii)) + '：诊断依据应至少填写一项!');
  end;   }
  zgzdyjbz:='0';
  for I := 11 to 20 do
  begin
    if TcxCheckBox(FindComponent('cxcheckBox'+inttostr(i))).Checked =true then
    begin
      zgzdyjbz:='1';
      break;
    end;
  end;
  if zgzdyjbz='0' then
  begin
    iii := iii + 1;
    frm_checkerror.Memo1.Lines.Add(trim(inttostr(iii)) + '：诊最高断依据应至少填写一项!');
  end;
  if iii > 0 then
  begin
    result:=true;
    if frm_checkerror = nil then
    Application.CreateForm(Tfrm_checkerror, frm_checkerror);
    frm_checkerror.ShowModal;
  end
  else
  result:=false;
end;

end.
