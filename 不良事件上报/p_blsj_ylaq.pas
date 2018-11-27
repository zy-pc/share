unit p_blsj_ylaq;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, cxControls, cxContainer, cxEdit, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, cxDBEdit, ComCtrls, Mask, DBCtrls,
  Buttons, DB, ADODB, GridsEh, DBGridEh, Grids, DBGrids;

type
  Tfrm_ylaq = class(TForm)
    ds_jbxx: TDataSource;
    qry_insert: TADOQuery;
    qry_temp: TADOQuery;
    qry_pub: TADOQuery;
    ds_xz: TDataSource;
    qry_xz: TADOQuery;
    qry_xzmc: TStringField;
    qry_xzdm: TStringField;
    qry_tmh: TADOQuery;
    ds_tmh: TDataSource;
    qry_tmhtmh: TStringField;
    qry_tmhbrxm: TStringField;
    qry_tmhfsrq: TDateTimeField;
    qry_tmhid: TAutoIncField;
    qry_lb: TADOQuery;
    ds_lb: TDataSource;
    qry_lbid: TAutoIncField;
    qry_lbsbks: TStringField;
    qry_lbsbr: TStringField;
    qry_lbsdbm: TStringField;
    qry_lbksdm: TStringField;
    qry_lbfsrq: TDateTimeField;
    qry_lbdhtzrq: TDateTimeField;
    qry_lbbdsdrq: TDateTimeField;
    qry_lbsjlx: TStringField;
    qry_lbtmh: TStringField;
    qry_lbbrxm: TStringField;
    qry_lbbrxb: TStringField;
    qry_lbbrnl: TStringField;
    qry_lbbrzd: TStringField;
    qry_lbdsr: TStringField;
    qry_lbsfzf: TStringField;
    qry_lbywshhg: TStringField;
    qry_lbshhgqk: TStringField;
    qry_lbsfwc: TStringField;
    qry_lbkszr: TStringField;
    qry_lbkzrqrrq: TDateTimeField;
    qry_lbbmzr: TStringField;
    qry_lbbmzrqrrq: TDateTimeField;
    qry_lbzrbmzr: TStringField;
    qry_lbzrbmqrrq: TDateTimeField;
    qry_lbsjzy: TMemoField;
    qry_lbksclcs: TMemoField;
    qry_lbzrbmdc: TMemoField;
    ado_jbxx: TADODataSet;
    ado_jbxxid: TAutoIncField;
    ado_jbxxsbks: TStringField;
    ado_jbxxsbr: TStringField;
    ado_jbxxsdbm: TStringField;
    ado_jbxxksdm: TStringField;
    ado_jbxxclczy: TStringField;
    ado_jbxxcljb: TStringField;
    ado_jbxxfsrq: TDateTimeField;
    ado_jbxxdhtzrq: TDateTimeField;
    ado_jbxxbdsdrq: TDateTimeField;
    ado_jbxxsjlx: TStringField;
    ado_jbxxtmh: TStringField;
    ado_jbxxbrxm: TStringField;
    ado_jbxxbrxb: TStringField;
    ado_jbxxbrnl: TStringField;
    ado_jbxxbrzd: TStringField;
    ado_jbxxdsr: TStringField;
    ado_jbxxsfzf: TStringField;
    ado_jbxxywshhg: TStringField;
    ado_jbxxshhgqk: TStringField;
    ado_jbxxsfwc: TStringField;
    ado_jbxxkszr: TStringField;
    ado_jbxxkzrqrrq: TDateTimeField;
    ado_jbxxbmzr: TStringField;
    ado_jbxxbmzrqrrq: TDateTimeField;
    ado_jbxxzrbmzr: TStringField;
    ado_jbxxzrbmqrrq: TDateTimeField;
    ado_jbxxsjzy: TMemoField;
    ado_jbxxksclcs: TMemoField;
    ado_jbxxzrbmdc: TMemoField;
    ds_cx: TDataSource;
    sp_cx: TADOStoredProc;
    sp_cxbybh: TStringField;
    sp_cxbrxm: TStringField;
    sp_cxbrnl: TStringField;
    sp_cxbrxb: TStringField;
    sp_cxjzrq: TDateTimeField;
    qry_tmhbrnl: TStringField;
    ado_jbxxlybz: TStringField;
    PC1: TPageControl;
    TabSheet1: TTabSheet;
    Panel4: TPanel;
    DBGrid3: TDBGrid;
    Panel5: TPanel;
    mz: TRadioButton;
    zy: TRadioButton;
    Button5: TButton;
    Button1: TButton;
    Button2: TButton;
    Button6: TButton;
    Button3: TButton;
    Button4: TButton;
    TabSheet2: TTabSheet;
    ScrollBox1: TScrollBox;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label10: TLabel;
    Label19: TLabel;
    Label22: TLabel;
    jbmc: TLabel;
    edit1: TEdit;
    ComboBox2: TComboBox;
    ComboBox1: TComboBox;
    ComboBox3: TComboBox;
    ComboBox4: TComboBox;
    ComboBox5: TComboBox;
    Editxm: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    ComboBox9: TComboBox;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    GroupBox1: TGroupBox;
    Memo1: TMemo;
    GroupBox2: TGroupBox;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Panel2: TPanel;
    Memo2: TMemo;
    GroupBox3: TGroupBox;
    Label20: TLabel;
    Label21: TLabel;
    Panel3: TPanel;
    Memo3: TMemo;
    DBEdit8: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit7: TDBEdit;
    dtpfsrq: TcxDBDateEdit;
    dtpdhtzsj: TcxDBDateEdit;
    dtpsdrq: TcxDBDateEdit;
    DBGrid2: TDBGrid;
    DBGrid1: TDBGrid;
    DBGrid4: TDBGrid;
    Panel6: TPanel;
    gr: TRadioButton;
    ks: TRadioButton;
    Button9: TButton;
    dtpksrq: TDateTimePicker;
    Label23: TLabel;
    Label24: TLabel;
    dtpjsrq: TDateTimePicker;
    DBGrid5: TDBGrid;
    ds_sjcx: TDataSource;
    sp_sjcx: TADOStoredProc;
    sp_sjcxid: TIntegerField;
    sp_sjcxsbks: TStringField;
    sp_sjcxsbr: TStringField;
    sp_sjcxsdbm: TStringField;
    sp_sjcxksdm: TStringField;
    sp_sjcxclczy: TStringField;
    sp_sjcxcljb: TStringField;
    sp_sjcxfsrq: TDateTimeField;
    sp_sjcxdhtzrq: TDateTimeField;
    sp_sjcxbdsdrq: TDateTimeField;
    sp_sjcxsjlx: TStringField;
    sp_sjcxtmh: TStringField;
    sp_sjcxbrxm: TStringField;
    sp_sjcxbrxb: TStringField;
    sp_sjcxbrnl: TStringField;
    sp_sjcxbrzd: TStringField;
    sp_sjcxdsr: TStringField;
    sp_sjcxsfzf: TStringField;
    sp_sjcxywshhg: TStringField;
    sp_sjcxshhgqk: TStringField;
    sp_sjcxsfwc: TStringField;
    sp_sjcxkszr: TStringField;
    sp_sjcxkzrqrrq: TDateTimeField;
    sp_sjcxbmzr: TStringField;
    sp_sjcxbmzrqrrq: TDateTimeField;
    sp_sjcxzrbmzr: TStringField;
    sp_sjcxzrbmqrrq: TDateTimeField;
    sp_sjcxsjzy: TMemoField;
    sp_sjcxksclcs: TMemoField;
    sp_sjcxzrbmdc: TMemoField;
    sp_sjcxlybz: TStringField;
    sp_sjcxlcsfwc: TStringField;
    sp_sjcxsbksmc: TStringField;
    sp_sjcxzhclry: TStringField;
    sp_sjcxzhclks: TStringField;
    sp_sjcxbrly: TStringField;
    Button7: TButton;
    Button8: TButton;
    dtpkszr: TcxDBDateEdit;
    dtpbmzr: TcxDBDateEdit;
    dtpzrbm: TcxDBDateEdit;
    procedure Button4Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure mzClick(Sender: TObject);
    procedure zyClick(Sender: TObject);
    procedure Add_xsz(bmc,cxz:string;Cbox:TComboBox);

    procedure FormCreate(Sender: TObject);
    procedure sjcs;
    procedure DBEdit1Exit(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure ComboBox2Exit(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure DBEdit6DblClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGrid2KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBGrid3DblClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure ComboBox5Exit(Sender: TObject);
    procedure ComboBox5KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid4KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid4DblClick(Sender: TObject);
    procedure edit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure qry_lbAfterDelete(DataSet: TDataSet);
    procedure Button9Click(Sender: TObject);
    procedure grClick(Sender: TObject);
    procedure ksClick(Sender: TObject);
    procedure sp_sjcxCalcFields(DataSet: TDataSet);
    procedure DBGrid5DblClick(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dtpkszrKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit7KeyPress(Sender: TObject; var Key: Char);
    private
    { Private declarations }
    iii:Integer;
    xzbz:string;
    procedure ljjc;//逻辑检查
    public
    { Public declarations }
    id:string;
    dqczy:string;
    dqks:string;
    cljb:string;
    value1:string;
    value2:string;
    value3:string;
    procedure qkjm;//清空界面
    function get_xsz(bmc,cxz:string):string;
  end;

var
  kj1:TObject;
  frm_ylaq: Tfrm_ylaq;

implementation
uses p_dm,p_func,p_blsjjbcx,p_tjbg,p_ylaqprint,p_blsj_checkError,p_main;

{$R *.dfm}

procedure Tfrm_ylaq.Button9Click(Sender: TObject);
var
ls,ksrq,jsrq:string;
begin
ksrq:=FormatDateTime('yyyy-mm-dd',dtpksrq.Date);
jsrq:=FormatDateTime('yyyy-mm-dd',dtpjsrq.Date);
sp_sjcx.Close;
if gr.Checked=true then
begin
 sp_sjcx.parameters.ParamByName('@cxlx').value:='0';//0-按照个人查询 1-按照科室查询
 sp_sjcx.parameters.ParamByName('@sjlx').value:='1';
 sp_sjcx.parameters.ParamByName('@czy').value:=pub_czydm;
 sp_sjcx.parameters.ParamByName('@ksdm').value:=pub_ksdm;
 sp_sjcx.parameters.ParamByName('@ksrq').value:=ksrq;
 sp_sjcx.parameters.ParamByName('@jsrq').value:=jsrq;
 sp_sjcx.Open;
end
else
begin
 sp_sjcx.parameters.ParamByName('@cxlx').value:='1';//0-按照个人查询 1-按照科室查询
 sp_sjcx.parameters.ParamByName('@sjlx').value:='1';
 sp_sjcx.parameters.ParamByName('@czy').value:=pub_czydm;
 sp_sjcx.parameters.ParamByName('@ksdm').value:=pub_ksdm;
 sp_sjcx.parameters.ParamByName('@ksrq').value:=ksrq;
 sp_sjcx.parameters.ParamByName('@jsrq').value:=jsrq;
 sp_sjcx.Open;
end;
end;

procedure Tfrm_ylaq.Button1Click(Sender: TObject);
var
s:string;
i:Integer;
begin
ljjc;
if iii=0 then
 begin
  qry_temp.Close;
  qry_temp.SQL.Clear;
  qry_temp.SQL.Add('select * from blsj_ylaq_jbxx where id='+id);
  qry_temp.Open;
  s:=Trim(qry_temp.fieldbyname('cljb').asstring);
  if strtoint(s)=3 then
  application.MessageBox(pchar('该记录已到最后处理科室或人员，不能再提交!'),'注意',16)
  else
  begin
   application.CreateForm(Tfrm_tjbg, frm_tjbg);
   frm_tjbg.sjid:='A'+id;
   frm_tjbg.ShowModal;
  end;
 end;
end;

procedure Tfrm_ylaq.Button2Click(Sender: TObject);
var
ls,qjks,jlid:string;
begin
ljjc;
if iii=0 then
begin
 cljb:=Trim(ado_jbxx.fieldbyname('cljb').asstring);
 if (StrToInt(cljb)<3) or (id='') then
 begin
  Application.MessageBox('处理流程未完成，请核实!', '错误提示', 16);
 end
 else
 begin
 if (application.MessageBox('完成后不能再进行任何修改，是否继续？','请注意',MB_YESNO + MB_ICONQUESTION) =IDYES) then
 begin
 ls:='update blsj_ylaq_jbxx set sfwc=1 where id='+#39+id+#39 ;
 qry_temp.Close;
 qry_temp.SQL.Clear;
 qry_temp.SQL.Add(ls);
 qry_temp.ExecSQL;
 application.messagebox('该事件记录处理流程完成！', '提示', mb_ok + mb_iconinformation);
 qkjm;
 ls:='select * from blsj_ylaq_jbxx where  (sfwc<>1 and clczy='+#39+pub_czydm+#39+') or (ksdm='+#39+pub_ksdm+#39+' and sfwc<>1 and clczy='+#39+#39+')';
 qry_lb.Close;
 qry_lb.SQL.Clear;
 qry_lb.SQL.Add(ls);
 qry_lb.Open;
 end;
 end;
end;
end;

procedure Tfrm_ylaq.Button3Click(Sender: TObject);
var
s,s1,rs,ls,sfwc:string;
Len,i,ii:Integer;
begin
ljjc;
sfwc:=trim(ado_jbxx.fieldbyname('sfwc').asstring);
cljb:=trim(ado_jbxx.fieldbyname('cljb').asstring);
if ((iii=0) and (cljb='3') ) or (sfwc='1')  then
 begin
 application.CreateForm(Tylaqprint,ylaqprint);
 try
  ylaqprint.QRLabel4.Caption:=Trim(ComboBox9.Text);
  ylaqprint.QRLabel6.Caption:=Trim(DBEdit1.Text);
  ylaqprint.QRLabel8.Caption:=Trim(ComboBox2.Text);
  ylaqprint.QRLabel25.Caption:=FormatDateTime('yyyy-mm-dd hh:mm:ss',dtpfsrq.Date);
  ylaqprint.QRLabel26.Caption:=FormatDateTime('yyyy-mm-dd hh:mm:ss',dtpdhtzsj.Date);
  ylaqprint.QRLabel27.Caption:=Trim(Editxm.Text);
  ylaqprint.QRLabel28.Caption:=Trim(DBEdit5.Text);
  ylaqprint.QRLabel29.Caption:=Trim(DBEdit4.Text);
  ylaqprint.QRLabel30.Caption:=Trim(DBEdit2.Text);
  ylaqprint.QRLabel31.Caption:=Trim(ComboBox1.Text);
  ylaqprint.QRLabel34.Caption:=trim(dbedit6.Text)+''+Trim(jbmc.Caption);
  if FormatDateTime('yyyy-mm-dd hh:mm:ss',dtpsdrq.Date)>'1900-00-00 00:00:00' then
  ylaqprint.QRLabel44.Caption:=FormatDateTime('yyyy-mm-dd hh:mm:ss',dtpsdrq.Date);
  if Trim(ComboBox3.Text)='首发' then
  ylaqprint.sfsf.Caption:='√'
  else if Trim(ComboBox3.Text)='再发' then
  ylaqprint.sfzf.Caption:='√';
  if Trim(ComboBox4.Text)='有' then
  begin
  ylaqprint.QRLabel33.Caption:='√';
  ylaqprint.QRLabel35.Enabled:=True;
  ylaqprint.QRLabel35.Caption:=Trim(ComboBox5.Text);
  end
  else if Trim(ComboBox4.Text)='无' then
  begin
  ylaqprint.QRLabel35.Enabled:=False;
  ylaqprint.QRLabel21.Caption:='√';
  end;
  s:=Memo1.Text;  //memo1打印
  if trim(s)<>'' then
  begin
  value1:='';
  rs:='';
  len:=Length(s);
  while(Len>94) do
  begin
  ls:=Copy(s,1,94);
  if pos(''#$D#$A'',ls)=0 then
   begin
   if  ByteType(ls,94)=mbLeadByte then
    begin
     rs:=Copy(s,1,93)+char(13)+char(10);
     s:=Copy(s,94,len);
    end
   else
    begin
     rs:=Copy(s,1,94)+char(13)+char(10);
     s:=Copy(s,95,len);
    end;
    ls:='';
    value1:=value1+rs;
    len:=Length(s);
   end
   else
  begin
  i:=pos(''#$D#$A'',ls);
  rs:=Copy(ls,1,i+1);
  value1:=value1+rs;
  s:=Copy(s,i+2,len);
  end;
  end;
  value1:=value1+s;
 end;

 s:=Memo2.Text;  //memo2打印
 if trim(s)<>'' then
 begin
  value2:='';
  rs:='';
  len:=Length(s);
  while(Len>94) do
  begin
  ls:=Copy(s,1,94);
  if pos(''#$D#$A'',ls)=0 then
   begin
   if  ByteType(ls,94)=mbLeadByte then
    begin
     rs:=Copy(s,1,93)+char(13)+char(10);
     s:=Copy(s,94,len);
    end
   else
    begin
     rs:=Copy(s,1,94)+char(13)+char(10);
     s:=Copy(s,95,len);
    end;
    ls:='';
    value2:=value2+rs;
    len:=Length(s);
   end
   else
  begin
  i:=pos(''#$D#$A'',ls);
  rs:=Copy(ls,1,i+1);
  value2:=value2+rs;
  s:=Copy(s,i+2,len);
  end;
  end;
  value2:=value2+s;
 ylaqprint.QRLabel46.Caption:=Trim(dbedit3.Text);
 if FormatDateTime('yyyy-mm-dd',dtpkszr.Date)>'1899-12-30' then
 ylaqprint.QRLabel45.Caption:=FormatDateTime('yyyy年mm月dd日',dtpkszr.Date);
 ylaqprint.QRLabel48.Caption:=Trim(dbedit7.Text);
 if FormatDateTime('yyyy-mm-dd',dtpbmzr.Date)>'1899-12-30' then
 ylaqprint.QRLabel50.Caption:=FormatDateTime('yyyy年mm月dd日',dtpbmzr.Date);
 end;

 s:=Memo3.Text;  //memo3打印
 if trim(s)<>'' then
 begin
  value3:='';
  rs:='';
  len:=Length(s);
  while(Len>94) do
  begin
  ls:=Copy(s,1,94);
  if pos(''#$D#$A'',ls)=0 then
   begin
   if  ByteType(ls,94)=mbLeadByte then
    begin
     rs:=Copy(s,1,93)+char(13)+char(10);
     s:=Copy(s,94,len);
    end
   else
    begin
     rs:=Copy(s,1,94)+char(13)+char(10);
     s:=Copy(s,95,len);
    end;
    ls:='';
    value3:=value3+rs;
    len:=Length(s);
   end
   else
  begin
  i:=pos(''#$D#$A'',ls);
  rs:=Copy(ls,1,i+1);
  value3:=value3+rs;
  s:=Copy(s,i+2,len);
  end;
  end;
  value3:=value3+s;
  ylaqprint.QRLabel51.Caption:=Trim(dbedit8.Text);
  if FormatDateTime('yyyy-mm-dd',dtpzrbm.Date)>'1899-12-30' then
  ylaqprint.QRLabel53.Caption:=FormatDateTime('yyyy年mm月dd日',dtpzrbm.Date);
 end;
 ylaqprint.QuickRep1.preview;
  finally
  ylaqprint.Free;
  DBEdit6.SetFocus;
  end;
 end
 else if iii=0 then
 application.MessageBox(pchar('事件流程未处理完成或填写不完整,不能打印!'),'注意',16);
end;

procedure Tfrm_ylaq.Button4Click(Sender: TObject);
begin
Self.Close;
end;

procedure Tfrm_ylaq.Button5Click(Sender: TObject);
begin
  ado_jbxx['sfzf']:=Trim(ComboBox3.Text);
  ado_jbxx['ywshhg']:=Trim(ComboBox4.Text);
  ado_jbxx['shhgqk']:=Trim(ComboBox5.Text);
  ado_jbxx['sjzy']:=Memo1.Text;
  ado_jbxx['ksclcs']:=Memo2.Text;
  ado_jbxx['zrbmdc']:=Memo3.Text;
  ado_jbxx.Post;
  qkjm; //清空界面
  edit1.SetFocus;
end;

procedure Tfrm_ylaq.Button6Click(Sender: TObject);
var
ls,qjks,clczy,jlid,tjks,tjczy:string;
begin
 dqks:=Trim(ado_jbxx.fieldbyname('ksdm').asstring);
 dqczy:=Trim(ado_jbxx.fieldbyname('clczy').asstring);
 ls:='select top 1 * from blsj_ylaq_cljl where sjid='+#39+id+#39 +' order by id desc';
 qry_temp.Close;
 qry_temp.SQL.Clear;
 qry_temp.SQL.Add(ls);
 qry_temp.Open;
 tjczy:=Trim(qry_temp.fieldbyname('tjczy').asstring);
 tjks:=Trim(qry_temp.fieldbyname('tjksdm').asstring);
 if (qry_temp.RecordCount=0) or ((tjczy<>'') and (tjczy<>pub_czydm)) or ((tjczy='') and (tjks<>pub_ksdm))  then
 Application.MessageBox('没有可回退的前级科室或人员，不能回退!', '错误提示', 16)
 else  if qry_temp.RecordCount=1  then
 begin
 qjks:=Trim(qry_temp.fieldbyname('clksdm').asstring);
 jlid:=Trim(qry_temp.fieldbyname('id').asstring);
 clczy:=Trim(qry_temp.fieldbyname('clczy').asstring);
 cljb:=IntToStr((StrToInt(cljb)-1));
 ls:='update blsj_ylaq_jbxx set ksdm='+#39+qjks+#39+',clczy='+#39+clczy+#39+',cljb='+#39+cljb+#39+' where id='+#39+id+#39;
 qry_temp.Close;
 qry_temp.SQL.Clear;
 qry_temp.SQL.Add(ls);
 qry_temp.ExecSQL;
 ls:='delete from  blsj_ylaq_cljl  where id='+#39+jlid+#39;
 qry_temp.Close;
 qry_temp.SQL.Clear;
 qry_temp.SQL.Add(ls);
 qry_temp.ExecSQL;
 application.messagebox('报告退回上级科室成功！', '提示', mb_ok + mb_iconinformation);
 qkjm;
 ls:='select * from blsj_ylaq_jbxx where  (sfwc<>1 and clczy='+#39+pub_czydm+#39+') or (ksdm='+#39+pub_ksdm+#39+' and sfwc<>1 and clczy='+#39+#39+')';
 qry_lb.Close;
 qry_lb.SQL.Clear;
 qry_lb.SQL.Add(ls);
 qry_lb.Open;
 edit1.SetFocus;
 end;
end;

procedure Tfrm_ylaq.Button7Click(Sender: TObject);
begin
Self.Close;
end;

procedure Tfrm_ylaq.Button8Click(Sender: TObject);
begin
qkjm;
edit1.SetFocus;
end;

procedure Tfrm_ylaq.ComboBox2Exit(Sender: TObject);
var
s,s1,ls:string;
begin
kj1:=Sender;
s:=uppercase(trim((kj1 as TComboBox).text));
if (Length(s)<=6) and (Length(s)>0) and  ((s[1] in ['0'..'9']) or (s[1] in ['A'..'z'])) then
begin
 if (kj1=ComboBox2) or (kj1=ComboBox9) then
 ls:='select dm,mc from sys_ksdm where dm='+#39+s+#39+' union select dm,mc from sys_ksdm where Upper(pym) like'+#39+'%'+s+'%'+#39
 else
  ls:='select dm,mc from blsj_ylaq_sjlx where dm='+#39+s+#39+' union select dm,mc from sys_ksdm where Upper(pym) like'+#39+'%'+s+'%'+#39;
 qry_temp.Close;
 qry_temp.SQL.Clear;
 qry_temp.SQL.Add(ls);
 qry_temp.Open;
 if qry_temp.RecordCount=0 then
 begin
  MessageDlg('没有找到想要查找的内容！',mtError,[mbOk],0);
 (Sender as TComboBox).SetFocus;
 end
 else if qry_temp.RecordCount>1 then
 begin
  try
     qry_xz.Close;
     qry_xz.SQL.Clear;
     qry_xz.SQL.Add(ls);
     qry_xz.Open;
    except
    Application.MessageBox('拼音码错误”', '错误提示', 16)
    end;

     DBGrid1.left:=(kj1 as TComboBox).left;
     DBGrid1.top:=(kj1 as TComboBox).top+(kj1 as TComboBox).Height+1;
     DBGrid1.Visible:=true;
     DBGrid1.SetFocus;
 end
 else
 begin
  if kj1=ComboBox2 then
  begin
  ado_jbxx['sdbm']:=Trim(qry_temp.fieldbyname('dm').asstring);
  ComboBox2.text:=Trim(qry_temp.fieldbyname('mc').asstring);
  end
  else if kj1=ComboBox9 then
  begin
  ado_jbxx['sbks']:=Trim(qry_temp.fieldbyname('dm').asstring);
  ComboBox9.text:=Trim(qry_temp.fieldbyname('mc').asstring);
  end
  else if kj1=ComboBox1 then
  begin
  ado_jbxx['sjlx']:=Trim(qry_temp.fieldbyname('dm').asstring);
  ComboBox1.text:=Trim(qry_temp.fieldbyname('mc').asstring);
  end;
 end;
end
else if (Length(s)>6) and (s[1] in ['0'..'9']) then
begin
 if kj1=ComboBox2 then
 begin
 ado_jbxx['sdbm']:=copy(s,1,4);
 ComboBox2.Text:=Copy(s,6,length(s)-5);
 end
 else if kj1=ComboBox9 then
 begin
 ado_jbxx['sbks']:=copy(s,1,4);
 ComboBox9.Text:=Copy(s,6,length(s)-5);
 end
 else if kj1=ComboBox1 then
 begin
 ado_jbxx['sjlx']:=copy(s,1,2);
 ComboBox1.Text:=Copy(s,4,length(s)-3);
 end;
end;

end;

procedure Tfrm_ylaq.ComboBox5Exit(Sender: TObject);
begin
if ((ComboBox4.Text='') or (ComboBox4.Text='无')) and (ComboBox5.Text<>'') then
Application.MessageBox('有无损害后果为无或为空,则不能填损害程度!', '错误提示', 16);
if (ComboBox4.Text='有') and (ComboBox5.Text='') then
Application.MessageBox('有无损害后果为有,则应填损害程度!', '错误提示', 16);
end;

procedure Tfrm_ylaq.ComboBox5KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
Memo1.SetFocus;
end;

procedure Tfrm_ylaq.DBEdit1Exit(Sender: TObject);
var s1,ls:string;
begin
 s1:=Uppercase((Sender as TDBEDIT).TEXT);
 if length(trim(s1))>0 then
 begin
  if (s1[1] in ['0'..'9']) or (s1[1] in ['A'..'z']) then
  begin
   kj1:=sender;
   if s1[1] in ['0'..'9'] then
    ls:='select * from sys_czy where dm='+#39+s1+#39
   else
    ls:='select * from sys_czy where Upper(pym) like'+#39+'%'+s1+'%'+#39;
   qry_temp.Close;
   qry_temp.SQL.Clear;
   qry_temp.SQL.Add(ls);
   qry_temp.Open;
   if qry_temp.RecordCount=0 then
   begin
     Application.MessageBox('没有找到要查找的内容', '错误提示', 16);
    (kj1 as TDBEdit).SetFocus;
   end
   else if qry_temp.RecordCount>1 then
   begin
    try
     qry_xz.Close;
     qry_xz.SQL.Clear;
     qry_xz.SQL.Add(ls);
     qry_xz.Open;
    except
    Application.MessageBox('拼音码错误”', '错误提示', 16)
    end;

     DBGrid1.left:=(kj1 as Tdbedit).left;
     if kj1=DBEdit8 then
     DBGrid1.top:=500
     else
     DBGrid1.top:=(kj1 as Tdbedit).top+(kj1 as Tdbedit).Height+1;
     DBGrid1.Visible:=true;
     DBGrid1.SetFocus;
   end
   else
   begin
   if kj1=DBEdit1 then
   ado_jbxx['sbr']:=Trim(qry_temp.fieldbyname('mc').asstring)
   else if kj1=DBEdit2 then
   ado_jbxx['dsr']:=Trim(qry_temp.fieldbyname('mc').asstring)
   else if kj1=DBEdit3 then
   ado_jbxx['kszr']:=Trim(qry_temp.fieldbyname('mc').asstring)
   else if kj1=DBEdit7 then
   ado_jbxx['bmzr']:=Trim(qry_temp.fieldbyname('mc').asstring)
   else if kj1=DBEdit8 then
   ado_jbxx['zrbmzr']:=Trim(qry_temp.fieldbyname('mc').asstring)
   end;
  end
  else if s1[1]<#127 then
  begin
    Application.MessageBox('请输入人员代码或拼音简码', '错误提示', 16);
   (kj1 as TDBEdit).SetFocus;
  end;
 end;
end;

procedure Tfrm_ylaq.DBEdit3KeyPress(Sender: TObject; var Key: Char);
begin
if (Key=#13) and ((trim(DBEdit3.Text)='')or (trim(DBEdit3.Text)[1]>#127)) then
dtpkszr.SetFocus;
end;

procedure Tfrm_ylaq.DBEdit6DblClick(Sender: TObject);
begin
if frm_blsj_jbcx=nil then
 Application.CreateForm(Tfrm_blsj_jbcx, frm_blsj_jbcx);
 frm_blsj_jbcx.sjlx:='A';
 frm_blsj_jbcx.ysdm:=pub_czydm;
 frm_blsj_jbcx.ShowModal;
end;

procedure Tfrm_ylaq.DBEdit7KeyPress(Sender: TObject; var Key: Char);
begin
if (Key=#13) and ((trim(DBEdit7.Text)='')or (trim(DBEdit7.Text)[1]>#127)) then
dtpbmzr.SetFocus;
end;

procedure Tfrm_ylaq.DBGrid1DblClick(Sender: TObject);
begin
if kj1=DBEdit1 then
  begin
  DBEdit1.Text:=trim(qry_xz.FieldByName('mc').AsString);
  ado_jbxx['sbr']:=trim(qry_xz.FieldByName('mc').AsString);
  ComboBox2.SetFocus;
  end
  else  if kj1=DBEdit2 then
  begin
  DBEdit2.Text:=trim(qry_xz.FieldByName('mc').AsString);
  ado_jbxx['dsr']:=trim(qry_xz.FieldByName('mc').AsString);
  ComboBox1.SetFocus;
  end
  else  if kj1=DBEdit3 then
  begin
  DBEdit3.Text:=trim(qry_xz.FieldByName('mc').AsString);
  ado_jbxx['kszr']:=trim(qry_xz.FieldByName('mc').AsString);
  dtpkszr.SetFocus;
  end
  else  if kj1=DBEdit7 then
  begin
  DBEdit7.Text:=trim(qry_xz.FieldByName('mc').AsString);
  ado_jbxx['bmzr']:=trim(qry_xz.FieldByName('mc').AsString);
  dtpbmzr.SetFocus;
  end
  else  if kj1=DBEdit8 then
  begin
  DBEdit8.Text:=trim(qry_xz.FieldByName('mc').AsString);
  ado_jbxx['zrbmzr']:=trim(qry_xz.FieldByName('mc').AsString);
  dtpzrbm.SetFocus;
  end
  else if kj1=ComboBox2 then
  begin
  ado_jbxx['sdbm']:=Trim(qry_temp.fieldbyname('dm').asstring);
  ComboBox2.text:=Trim(qry_temp.fieldbyname('mc').asstring);
  end
  else if kj1=ComboBox9 then
  begin
  ado_jbxx['sbks']:=Trim(qry_temp.fieldbyname('dm').asstring);
  ComboBox9.text:=Trim(qry_temp.fieldbyname('mc').asstring);
  end
  else if kj1=ComboBox1 then
  begin
  ado_jbxx['sjlx']:=Trim(qry_temp.fieldbyname('dm').asstring);
  ComboBox1.text:=Trim(qry_temp.fieldbyname('mc').asstring);
  end;
  dbgrid1.Visible:=false;
end;

procedure Tfrm_ylaq.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
 if key=#13 then
 begin
  if kj1=DBEdit1 then
  begin
  DBEdit1.Text:=trim(qry_xz.FieldByName('mc').AsString);
  ado_jbxx['sbr']:=trim(qry_xz.FieldByName('mc').AsString);
  ComboBox2.SetFocus;
  end
  else  if kj1=DBEdit2 then
  begin
  DBEdit2.Text:=trim(qry_xz.FieldByName('mc').AsString);
  ado_jbxx['dsr']:=trim(qry_xz.FieldByName('mc').AsString);
  ComboBox1.SetFocus;
  end
  else  if kj1=DBEdit3 then
  begin
  DBEdit3.Text:=trim(qry_xz.FieldByName('mc').AsString);
  ado_jbxx['kszr']:=trim(qry_xz.FieldByName('mc').AsString);
  dtpkszr.SetFocus;
  end
  else  if kj1=DBEdit7 then
  begin
  DBEdit7.Text:=trim(qry_xz.FieldByName('mc').AsString);
  ado_jbxx['bmzr']:=trim(qry_xz.FieldByName('mc').AsString);
  dtpbmzr.SetFocus;
  end
  else  if kj1=DBEdit8 then
  begin
  DBEdit8.Text:=trim(qry_xz.FieldByName('mc').AsString);
  ado_jbxx['zrbmzr']:=trim(qry_xz.FieldByName('mc').AsString);
  dtpzrbm.SetFocus;
  end
  else if kj1=ComboBox2 then
  begin
  ado_jbxx['sdbm']:=Trim(qry_temp.fieldbyname('dm').asstring);
  ComboBox2.text:=Trim(qry_temp.fieldbyname('mc').asstring);
  end
  else if kj1=ComboBox9 then
  begin
  ado_jbxx['sbks']:=Trim(qry_temp.fieldbyname('dm').asstring);
  ComboBox9.text:=Trim(qry_temp.fieldbyname('mc').asstring);
  end
  else if kj1=ComboBox1 then
  begin
  ado_jbxx['sjlx']:=Trim(qry_temp.fieldbyname('dm').asstring);
  ComboBox1.text:=Trim(qry_temp.fieldbyname('mc').asstring);
  end;
  dbgrid1.Visible:=false;
 end
 else if key=#27 then
 begin
  dbgrid1.Visible:=false;
 end;
end;

procedure Tfrm_ylaq.DBGrid2DblClick(Sender: TObject);
var
sfwc:string;
begin
qkjm;
id:=trim(qry_tmh.FieldByName('id').AsString);
ado_jbxx.Close;
ado_jbxx.CommandText:='select * from blsj_ylaq_jbxx where id='+#39+id+#39+' order by id';
ado_jbxx.Open;
dqks:=trim(ado_jbxx.FieldByName('ksdm').AsString);
sfwc:=trim(ado_jbxx.FieldByName('sfwc').AsString);
cljb:=trim(ado_jbxx.fieldbyname('cljb').asstring);
dqczy:=trim(ado_jbxx.fieldbyname('clczy').asstring);
Memo1.ReadOnly:=False;
Memo2.ReadOnly:=False;
Memo3.ReadOnly:=False;
if cljb='1' then
begin
Memo2.ReadOnly:=True;
Memo3.ReadOnly:=True;
end
else  if cljb='2' then
begin
Memo1.ReadOnly:=True;
Memo3.ReadOnly:=True;
end
else  if cljb='3' then
begin
Memo1.ReadOnly:=True;
Memo2.ReadOnly:=True;
end;
if (sfwc='1') or ((dqczy='') and (dqks<>pub_ksdm)) or ((dqczy<>'') and (dqczy<>pub_czydm)) then
 begin
  Button1.Enabled:=False;
  Button2.Enabled:=False;
  Button5.Enabled:=False;
  Button6.Enabled:=False;
  Memo1.ReadOnly:=True;
  Memo2.ReadOnly:=True;
  Memo3.ReadOnly:=True;
 end
 else
 begin
 Button1.Enabled:=True;
 Button2.Enabled:=True;
 Button5.Enabled:=True;
 Button6.Enabled:=True;
 ado_jbxx.Edit;
 end;
sjcs;
DBGrid2.Visible:=False;
edit1.SetFocus;
end;

procedure Tfrm_ylaq.DBGrid2KeyPress(Sender: TObject; var Key: Char);
var
sfwc:string;
begin
if Key=#13 then
begin
qkjm;
id:=trim(qry_tmh.FieldByName('id').AsString);
ado_jbxx.Close;
ado_jbxx.CommandText:='select * from blsj_ylaq_jbxx where id='+#39+id+#39+' order by id';
ado_jbxx.Open;
dqks:=trim(ado_jbxx.FieldByName('ksdm').AsString);
sfwc:=trim(ado_jbxx.FieldByName('sfwc').AsString);
cljb:=trim(ado_jbxx.fieldbyname('cljb').asstring);
dqczy:=trim(ado_jbxx.fieldbyname('clczy').asstring);
Memo1.ReadOnly:=False;
Memo2.ReadOnly:=False;
Memo3.ReadOnly:=False;
if cljb='1' then
begin
Memo2.ReadOnly:=True;
Memo3.ReadOnly:=True;
end
else  if cljb='2' then
begin
Memo1.ReadOnly:=True;
Memo3.ReadOnly:=True;
end
else  if cljb='3' then
begin
Memo1.ReadOnly:=True;
Memo2.ReadOnly:=True;
end;
if (sfwc='1') or ((dqczy='') and (dqks<>pub_ksdm)) or ((dqczy<>'') and (dqczy<>pub_czydm)) then
 begin
  Button1.Enabled:=False;
  Button2.Enabled:=False;
  Button5.Enabled:=False;
  Button6.Enabled:=False;
  Memo1.ReadOnly:=True;
  Memo2.ReadOnly:=True;
  Memo3.ReadOnly:=True;
  sjcs;
 end
 else
 begin
  Button1.Enabled:=True;
  Button2.Enabled:=True;
  Button5.Enabled:=True;
  Button6.Enabled:=True;
  ado_jbxx.Edit;
  sjcs;
 end;
 Editxm.SetFocus;
 DBGrid2.Visible:=False;
end
else if key=#27 then
 begin
  dbgrid2.Visible:=false;
 end;
end;

procedure Tfrm_ylaq.DBGrid3DblClick(Sender: TObject);
var
sfwc:string;
begin
qkjm;
id:=trim(qry_lb.FieldByName('id').AsString);
ado_jbxx.Close;
ado_jbxx.CommandText:='select * from blsj_ylaq_jbxx where id='+#39+id+#39+' order by id';
ado_jbxx.Open;
dqks:=trim(ado_jbxx.FieldByName('ksdm').AsString);
sfwc:=trim(ado_jbxx.FieldByName('sfwc').AsString);
cljb:=trim(ado_jbxx.fieldbyname('cljb').asstring);
dqczy:=trim(ado_jbxx.fieldbyname('clczy').asstring);
Memo1.ReadOnly:=False;
Memo2.ReadOnly:=False;
Memo3.ReadOnly:=False;
if cljb='1' then
begin
Memo2.ReadOnly:=True;
Memo3.ReadOnly:=True;
end
else  if cljb='2' then
begin
Memo1.ReadOnly:=True;
Memo3.ReadOnly:=True;
end
else  if cljb='3' then
begin
Memo1.ReadOnly:=True;
Memo2.ReadOnly:=True;
end;
if (sfwc='1') or ((dqczy='') and (dqks<>pub_ksdm)) or ((dqczy<>'') and (dqczy<>pub_czydm)) then
 begin
  Button1.Enabled:=False;
  Button2.Enabled:=False;
  Button5.Enabled:=False;
  Button6.Enabled:=False;
  Memo1.ReadOnly:=True;
  Memo2.ReadOnly:=True;
  Memo3.ReadOnly:=True;
 end
 else
 begin
 Button1.Enabled:=True;
 Button2.Enabled:=True;
 Button5.Enabled:=True;
 Button6.Enabled:=True;
 ado_jbxx.Edit;
 end;
sjcs;
edit1.Text:=trim(ado_jbxx.FieldByName('tmh').AsString);
Editxm.SetFocus;
end;

procedure Tfrm_ylaq.DBGrid4DblClick(Sender: TObject);
var
ls,bybh,brxm,brxb,brnl,sfwc,dqks,lybz:string;
begin
if mz.Checked=True then
lybz:='0'
else
lybz:='1';
bybh:=trim(sp_cx.FieldByName('bybh').AsString);
brxm:=trim(sp_cx.FieldByName('brxm').AsString);
brxb:=trim(sp_cx.FieldByName('brxb').AsString);
brnl:=trim(sp_cx.FieldByName('brnl').AsString);
edit1.Text:=bybh;
ls:='insert into blsj_ylaq_jbxx(tmh,brxm,brxb,brnl,sbks,fsrq,clczy,ksdm,cljb,sfwc,lybz) select '+#39+bybh+#39+','+#39+brxm+#39+','+#39+brxb+#39+','+#39+brnl+#39+','+#39+pub_ksdm+#39+',GETDATE(),'+#39+pub_czydm+#39+','+#39+pub_ksdm+#39+','+#39+'1'+#39+','+#39+'0'+#39+','+#39+lybz+#39;
qry_insert.Close;
qry_insert.SQL.Clear;
qry_insert.SQL.Add(ls);
qry_insert.ExecSQL;
ado_jbxx.Close;
ado_jbxx.CommandText:='select  top 1 * from blsj_ylaq_jbxx where tmh='+#39+bybh+#39+' or brxm='+#39+bybh+#39+' order by id desc';
ado_jbxx.Open;
ado_jbxx.Edit;
Memo2.ReadOnly:=True;
Memo3.ReadOnly:=True;
sjcs;
ls:='select * from blsj_ylaq_jbxx where  (sfwc<>1 and clczy='+#39+pub_czydm+#39+') or (ksdm='+#39+pub_ksdm+#39+' and sfwc<>1 and clczy='+#39+#39+')';
qry_lb.Close;
qry_lb.SQL.Clear;
qry_lb.SQL.Add(ls);
qry_lb.Open;
xzbz:='2';
DBGrid4.Visible:=False;
Editxm.SetFocus;
end;

procedure Tfrm_ylaq.DBGrid4KeyPress(Sender: TObject; var Key: Char);
var tmh,ls,bybh,brxm,brxb,brnl,sfwc,dqks,lybz:string;
begin
if Key=#13 then
begin
if mz.Checked=True then
lybz:='0'
else
lybz:='1';
bybh:=trim(sp_cx.FieldByName('bybh').AsString);
brxm:=trim(sp_cx.FieldByName('brxm').AsString);
brxb:=trim(sp_cx.FieldByName('brxb').AsString);
brnl:=trim(sp_cx.FieldByName('brnl').AsString);
edit1.Text:=bybh;
ls:='insert into blsj_ylaq_jbxx(tmh,brxm,brxb,brnl,sbks,fsrq,clczy,ksdm,cljb,sfwc,lybz) select '+#39+bybh+#39+','+#39+brxm+#39+','+#39+brxb+#39+','+#39+brnl+#39+','+#39+pub_ksdm+#39+',GETDATE(),'+#39+pub_czydm+#39+','+#39+pub_ksdm+#39+','+#39+'1'+#39+','+#39+'0'+#39+','+#39+lybz+#39;
qry_insert.Close;
qry_insert.SQL.Clear;
qry_insert.SQL.Add(ls);
qry_insert.ExecSQL;
ado_jbxx.Close;
ado_jbxx.CommandText:='select  top 1 * from blsj_ylaq_jbxx where tmh='+#39+bybh+#39+' or brxm='+#39+bybh+#39+' order by id desc';
ado_jbxx.Open;
ado_jbxx.Edit;
Memo2.ReadOnly:=True;
Memo3.ReadOnly:=True;
sjcs;
ls:='select * from blsj_ylaq_jbxx where  (sfwc<>1 and clczy='+#39+pub_czydm+#39+') or (ksdm='+#39+pub_ksdm+#39+' and sfwc<>1 and clczy='+#39+#39+')';
qry_lb.Close;
qry_lb.SQL.Clear;
qry_lb.SQL.Add(ls);
qry_lb.Open;
xzbz:='2';
DBGrid4.Visible:=False;
Editxm.SetFocus;
end
else
if Key=#27 then
dbgrid4.Visible:=false;
end;

procedure Tfrm_ylaq.DBGrid5DblClick(Sender: TObject);
var
sfwc:string;
begin
pc1.ActivePage:=TabSheet1;
qkjm;
xzbz:='2';
id:=trim(sp_sjcx.FieldByName('id').AsString);
ado_jbxx.Close;
ado_jbxx.CommandText:='select * from blsj_ylaq_jbxx where id='+#39+id+#39+' order by id';
ado_jbxx.Open;
dqks:=trim(ado_jbxx.FieldByName('ksdm').AsString);
sfwc:=trim(ado_jbxx.FieldByName('sfwc').AsString);
cljb:=trim(ado_jbxx.fieldbyname('cljb').asstring);
dqczy:=trim(ado_jbxx.fieldbyname('clczy').asstring);
Memo1.ReadOnly:=False;
Memo2.ReadOnly:=False;
Memo3.ReadOnly:=False;
if cljb='1' then
begin
Memo2.ReadOnly:=True;
Memo3.ReadOnly:=True;
end
else  if cljb='2' then
begin
Memo1.ReadOnly:=True;
Memo3.ReadOnly:=True;
end
else  if cljb='3' then
begin
Memo1.ReadOnly:=True;
Memo2.ReadOnly:=True;
end;
if (sfwc='1') or ((dqczy='') and (dqks<>pub_ksdm)) or ((dqczy<>'') and (dqczy<>pub_czydm)) then
 begin
  Button1.Enabled:=False;
  Button2.Enabled:=False;
  Button5.Enabled:=False;
  Button6.Enabled:=False;
  Memo1.ReadOnly:=True;
  Memo2.ReadOnly:=True;
  Memo3.ReadOnly:=True;
 end
 else
 begin
 Button1.Enabled:=True;
 Button2.Enabled:=True;
 Button5.Enabled:=True;
 Button6.Enabled:=True;
 ado_jbxx.Edit;
 end;
sjcs;
edit1.Text:=trim(ado_jbxx.FieldByName('tmh').AsString);
Editxm.SetFocus;
end;

procedure Tfrm_ylaq.dtpkszrKeyPress(Sender: TObject; var Key: Char);
begin
if Key=#13 then
DBEdit7.SetFocus;
end;

procedure Tfrm_ylaq.edit1KeyPress(Sender: TObject; var Key: Char);
var
tmh,ls,bybh,brxm,brxb,brnl,sfwc,lybz:string;
begin
if Key=#13 then
begin
 tmh:=Trim(edit1.Text);
 if tmh<>'' then
 begin
  ls:='select * from blsj_ylaq_jbxx where tmh='+#39+tmh+#39+' or brxm='+#39+tmh+#39;
  qry_temp.Close;
  qry_temp.SQL.Clear;
  qry_temp.SQL.Add(ls);
  qry_temp.Open;
  if  qry_temp.RecordCount>0  then //该卡号已填报过则提示
  begin
    if (application.MessageBox('已存在该卡号或姓名的上报信息，是否继续？','请注意',MB_YESNO + MB_ICONQUESTION) =IDYES) then
     begin
       qkjm;
       Button1.Enabled:=True;
       Button2.Enabled:=True;
       Button5.Enabled:=True;
       Button6.Enabled:=True;
       sp_cx.Close;
       if mz.Checked=True then  //选中门诊在sys_kyh中读取病人基本信息
       begin
       sp_cx.parameters.ParamByName('@lybz').value:='0';
       lybz:='0';
       end
       else
       begin
       sp_cx.parameters.ParamByName('@lybz').value:='1';
       sp_cx.parameters.ParamByName('@bqdm').value := pub_bqdm;
       lybz:='1';
       end;
       sp_cx.parameters.ParamByName('@tmh').value:=tmh;
       sp_cx.Open;
       if sp_cx.RecordCount=0 then  //没有该卡号挂号记录 或 住院记录
       begin
        application.MessageBox(pchar('该条码号无就诊记录,请检查!'),'注意',16);
        edit1.Clear;
        Edit1.SetFocus;
       end
       else if sp_cx.RecordCount=1 then //有1条就诊记录则导入
       begin
       bybh:=trim(sp_cx.FieldByName('bybh').AsString);
       brxm:=trim(sp_cx.FieldByName('brxm').AsString);
       brxb:=trim(sp_cx.FieldByName('brxb').AsString);
       brnl:=trim(sp_cx.FieldByName('brnl').AsString);
       edit1.Text:=bybh;
       ls:='insert into blsj_ylaq_jbxx(tmh,brxm,brxb,brnl,sbks,fsrq,clczy,ksdm,cljb,sfwc,lybz) select '+#39+bybh+#39+','+#39+brxm+#39+','+#39+brxb+#39+','+#39+brnl+#39+','+#39+pub_ksdm+#39+',GETDATE(),'+#39+pub_czydm+#39+','+#39+pub_ksdm+#39+','+#39+'1'+#39+','+#39+'0'+#39+','+#39+lybz+#39;
       qry_insert.Close;
       qry_insert.SQL.Clear;
       qry_insert.SQL.Add(ls);
       qry_insert.ExecSQL;
       ado_jbxx.Close;
       ado_jbxx.CommandText:='select  top 1 * from blsj_ylaq_jbxx where tmh='+#39+bybh+#39+' order by id desc';
       ado_jbxx.Open;
       ado_jbxx.Edit;
       Memo2.ReadOnly:=True;
       Memo3.ReadOnly:=True;
       sjcs;
       ls:='select * from blsj_ylaq_jbxx where  (sfwc<>1 and clczy='+#39+pub_czydm+#39+') or (ksdm='+#39+pub_ksdm+#39+' and sfwc<>1 and clczy='+#39+#39+')';
       qry_lb.Close;
       qry_lb.SQL.Clear;
       qry_lb.SQL.Add(ls);
       qry_lb.Open;
       Editxm.SetFocus;
       end
       else
       begin
       DBGrid4.left:=edit1.left;
       DBGrid4.top:=edit1.top+edit1.Height+1;
       DBGrid4.Visible:=true;
       DBGrid4.SetFocus;
       end;
     end;
  end
else   //该卡号未填报过
  begin
   qkjm;
   Button1.Enabled:=True;
   Button2.Enabled:=True;
   Button5.Enabled:=True;
   Button6.Enabled:=True;
   sp_cx.Close;
   if mz.Checked=True then  //选中门诊在sys_kyh中读取病人基本信息
   begin
   sp_cx.parameters.ParamByName('@lybz').value:='0';
   lybz:='0';
   end
   else
   begin
    sp_cx.parameters.ParamByName('@lybz').value:='1';
    sp_cx.parameters.ParamByName('@bqdm').value := pub_bqdm;
    lybz:='1';
   end;
   sp_cx.parameters.ParamByName('@tmh').value:=tmh;
   sp_cx.Open;
   if sp_cx.RecordCount=0 then  //没有该卡号挂号记录 或 住院记录
   begin
    application.MessageBox(pchar('该条码号无就诊记录,请检查!'),'注意',16);
    edit1.Clear;
    Edit1.SetFocus;
   end
   else if sp_cx.RecordCount=1 then //有就诊记录且只有1条记录则导入
   begin
    bybh:=trim(sp_cx.FieldByName('bybh').AsString);
    brxm:=trim(sp_cx.FieldByName('brxm').AsString);
   brxb:=trim(sp_cx.FieldByName('brxb').AsString);
    brnl:=trim(sp_cx.FieldByName('brnl').AsString);
    edit1.Text:=bybh;
    ls:='insert into blsj_ylaq_jbxx(tmh,brxm,brxb,brnl,sbks,fsrq,clczy,ksdm,cljb,sfwc,lybz) select '+#39+bybh+#39+','+#39+brxm+#39+','+#39+brxb+#39+','+#39+brnl+#39+','+#39+pub_ksdm+#39+',GETDATE(),'+#39+pub_czydm+#39+','+#39+pub_ksdm+#39+','+#39+'1'+#39+','+#39+'0'+#39+','+#39+lybz+#39;
    qry_insert.Close;
    qry_insert.SQL.Clear;
    qry_insert.SQL.Add(ls);
    qry_insert.ExecSQL;
    ado_jbxx.Close;
    ado_jbxx.CommandText:='select  top 1 * from blsj_ylaq_jbxx where tmh='+#39+bybh+#39+' order by id desc';
    ado_jbxx.Open;
    ado_jbxx.Edit;
    Memo2.ReadOnly:=True;
    Memo3.ReadOnly:=True;
    sjcs;
    ls:='select * from blsj_ylaq_jbxx where  (sfwc<>1 and clczy='+#39+pub_czydm+#39+') or (ksdm='+#39+pub_ksdm+#39+' and sfwc<>1 and clczy='+#39+#39+')';
    qry_lb.Close;
    qry_lb.SQL.Clear;
    qry_lb.SQL.Add(ls);
    qry_lb.Open;
    Editxm.SetFocus;
   end
   else
   begin
    DBGrid4.left:=edit1.left;
    DBGrid4.top:=edit1.top+edit1.Height+1;
    DBGrid4.Visible:=true;
    DBGrid4.SetFocus;
   end;
  end;
 end ;
end;
end;

procedure Tfrm_ylaq.FormCreate(Sender: TObject);
var
ls:string;
x:Integer;
begin
Add_xsz('sys_ksdm','dm',ComboBox2);
Add_xsz('sys_ksdm','dm',ComboBox9);
Add_xsz('blsj_ylaq_sjlx','dm',ComboBox1);
pc1.ActivePage:=TabSheet1;
x:=Screen.Height;
if x<900 then
self.windowstate:=wsMaximized;
ls:='select * from blsj_ylaq_jbxx where  (sfwc<>1 and clczy='+#39+pub_czydm+#39+') or (ksdm='+#39+pub_ksdm+#39+' and sfwc<>1 and clczy='+#39+#39+')';
qry_lb.Close;
qry_lb.SQL.Clear;
qry_lb.SQL.Add(ls);
qry_lb.Open;
if frm_blsj_checkerror = nil then
Application.CreateForm(Tfrm_blsj_checkerror, frm_blsj_checkerror);
end;

procedure Tfrm_ylaq.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if (key=#13) and (Memo1.Focused=False) and (Memo2.Focused=False) and (Memo3.Focused=False)   then
 SelectNext(activeControl,true,true);
end;

procedure Tfrm_ylaq.FormShow(Sender: TObject);
begin
dtpksrq.Date:=Now;
dtpjsrq.Date:=Now;
edit1.SetFocus
end;

procedure Tfrm_ylaq.mzClick(Sender: TObject);
begin
qkjm;
edit1.SetFocus;
end;

procedure Tfrm_ylaq.zyClick(Sender: TObject);
begin
qkjm;
edit1.SetFocus;
end;
procedure Tfrm_ylaq.Add_xsz(bmc,cxz:string;Cbox:TComboBox);
var sj:string;
begin
  Qry_pub.close;
  Qry_pub.SQL.clear;
  Qry_pub.sql.add('select * from '+bmc+' order by '+cxz);
  Qry_pub.open;
  Cbox.items.clear;
  if (bmc='zysf_rybq') or (bmc='zysf_rytj')then
    begin
     while not Qry_pub.eof do
  begin
    Cbox.items.add(trim(Qry_pub.FieldByName('dm').asstring)+'-'+trim(Qry_pub.FieldByName('sm').asstring));
    Qry_pub.next;
  end;
    end
    else
    begin
  while not Qry_pub.eof do
  begin
    Cbox.items.add(trim(Qry_pub.FieldByName('dm').asstring)+'-'+trim(Qry_pub.FieldByName('mc').asstring));
    Qry_pub.next;
  end;
   end
end;
 function Tfrm_ylaq.get_xsz(bmc,cxz:string):string;
var sj:string;
begin
  Qry_pub.close;
  Qry_pub.SQL.clear;
  if bmc='icd10' then
  Qry_pub.sql.add('select * from '+bmc+' where jbbm='+#39+cxz+#39+'order by jbbm')
  else
  Qry_pub.sql.add('select * from '+bmc+' where dm='+#39+cxz+#39+'order by dm');
  Qry_pub.open;
  if Qry_pub.RecordCount=1 then
  begin
    if bmc='icd10'
    then
     result:=trim(Qry_pub.fieldbyname('jbmc').asstring)
     else
     result:=trim(Qry_pub.fieldbyname('mc').asstring)
  end
  else
    result:='';
end;
 procedure Tfrm_ylaq.grClick(Sender: TObject);
begin
sp_sjcx.Close;
end;

procedure Tfrm_ylaq.ksClick(Sender: TObject);
begin
sp_sjcx.Close;
end;

procedure Tfrm_ylaq.ljjc;
 begin
 iii:=0;
 frm_blsj_checkerror.Memo1.Clear;
 if Trim(Editxm.Text)='' then
  begin
   iii:=iii+1;
   frm_blsj_checkerror.Memo1.Lines.Add(trim(inttostr(iii))+'：病人姓名不能为空');
  end;
   if Trim(DBEdit4.Text)='' then
  begin
   iii:=iii+1;
   frm_blsj_checkerror.Memo1.Lines.Add(trim(inttostr(iii))+'：病人年龄不能为空');
  end;
  if Trim(DBEdit5.Text)='' then
  begin
   iii:=iii+1;
   frm_blsj_checkerror.Memo1.Lines.Add(trim(inttostr(iii))+'：病人性别不能为空');
  end;
 if Trim(DBEdit6.Text)='' then
  begin
   iii:=iii+1;
   frm_blsj_checkerror.Memo1.Lines.Add(trim(inttostr(iii))+'：病人诊断不能为空');
  end;
  if Trim(ComboBox9.Text)='' then
  begin
   iii:=iii+1;
   frm_blsj_checkerror.Memo1.Lines.Add(trim(inttostr(iii))+'：填报科室不能为空');
  end;
  if Trim(DBEdit1.Text)='' then
  begin
   iii:=iii+1;
   frm_blsj_checkerror.Memo1.Lines.Add(trim(inttostr(iii))+'：填报人不能为空');
  end;
  if Trim(ComboBox2.Text)='' then
  begin
   iii:=iii+1;
   frm_blsj_checkerror.Memo1.Lines.Add(trim(inttostr(iii))+'：送达部门不能为空');
  end;
  if (dtpfsrq.Date=StrToDate( '1900-01-01')) or (dtpdhtzsj.Date<=StrToDate( '1900-01-01')) then
  begin
   iii:=iii+1;
   frm_blsj_checkerror.Memo1.Lines.Add(trim(inttostr(iii))+'：发生时间和电话报告时间不能为空或时间错误');
  end;
   if (dtpfsrq.Date>dtpdhtzsj.Date) then
  begin
   iii:=iii+1;
   frm_blsj_checkerror.Memo1.Lines.Add(trim(inttostr(iii))+'：发生时间不能大于电话报告时间');
  end;
  if Trim(DBEdit2.Text)='' then
  begin
   iii:=iii+1;
   frm_blsj_checkerror.Memo1.Lines.Add(trim(inttostr(iii))+'：当事人不能为空');
  end;
  if Trim(ComboBox1.Text)='' then
  begin
   iii:=iii+1;
   frm_blsj_checkerror.Memo1.Lines.Add(trim(inttostr(iii))+'：事件类别不能为空');
  end;
  if Trim(ComboBox3.Text)='' then
  begin
   iii:=iii+1;
   frm_blsj_checkerror.Memo1.Lines.Add(trim(inttostr(iii))+'：“首发/再发“不能为空');
  end;
  if (Trim(ComboBox4.Text)='有') and (Trim(ComboBox5.Text)='') then
  begin
   iii:=iii+1;
   frm_blsj_checkerror.Memo1.Lines.Add(trim(inttostr(iii))+'：有损害后果,则需要填写损害后果程度');
  end;
  if Trim(ComboBox4.Text)=''  then
  begin
   iii:=iii+1;
   frm_blsj_checkerror.Memo1.Lines.Add(trim(inttostr(iii))+'：有无损害后果不能为空');
  end;
 if Trim(Memo1.Text)=''  then
  begin
   iii:=iii+1;
   frm_blsj_checkerror.Memo1.Lines.Add(trim(inttostr(iii))+'：事件摘要不能为空');
  end;
  {if Trim(Memo2.Text)=''  then
  begin
   iii:=iii+1;
   frm_blsj_checkerror.Memo1.Lines.Add(trim(inttostr(iii))+'：科室/大部处理情况不能为空');
  end;
  if Trim(Memo3.Text)=''  then
  begin
   iii:=iii+1;
   frm_blsj_checkerror.Memo1.Lines.Add(trim(inttostr(iii))+'：责任职能部门调查情况不能为空');
  end; }
  if iii>0 then
  begin
   if frm_blsj_checkerror=nil then
   Application.CreateForm(Tfrm_blsj_checkerror, frm_blsj_checkerror);
   frm_blsj_checkerror.ShowModal;
  end;
 end;
 procedure Tfrm_ylaq.sjcs;
 var fsrq,dhtzrq,s:string;
 begin
 if ado_jbxxtmh.asstring<>'' then
 edit1.Text:=Trim(ado_jbxx.fieldbyname('tmh').asstring);
 if ado_jbxxsjzy.asstring<>'' then
 Memo1.Text:=ado_jbxx.fieldbyname('sjzy').asstring;
 if ado_jbxxksclcs.asstring<>'' then
 Memo2.Text:=ado_jbxx.fieldbyname('ksclcs').asstring;
 if ado_jbxxzrbmdc.asstring<>'' then
 Memo3.Text:=ado_jbxx.fieldbyname('zrbmdc').asstring;
 if ado_jbxxsfzf.asstring<>'' then
 ComboBox3.Text:=trim(ado_jbxx.fieldbyname('sfzf').asstring);
 if ado_jbxxywshhg.asstring<>'' then
 ComboBox4.Text:=trim(ado_jbxx.fieldbyname('ywshhg').asstring);
 if ado_jbxxshhgqk.asstring<>'' then
  ComboBox5.Text:=trim(ado_jbxx.fieldbyname('shhgqk').asstring);
 if ado_jbxxsbks.asstring>'0' then
 ComboBox9.Text:=get_xsz('sys_ksdm',trim(ado_jbxx.fieldbyname('sbks').asstring));
 if ado_jbxxsdbm.asstring>'0' then
 ComboBox2.Text:=get_xsz('sys_ksdm',trim(ado_jbxx.fieldbyname('sdbm').asstring));
 if ado_jbxxbrzd.asstring>'0' then
 jbmc.Caption:=get_xsz('icd10',trim(ado_jbxx.fieldbyname('brzd').asstring));
 if ado_jbxxsjlx.asstring>'0' then
 ComboBox1.Text:=get_xsz('blsj_ylaq_sjlx',trim(ado_jbxx.fieldbyname('sjlx').asstring));
 end;
 procedure Tfrm_ylaq.sp_sjcxCalcFields(DataSet: TDataSet);
 var
 s:string;
begin
 s:=Trim(sp_sjcx.fieldbyname('sfwc').asstring);
 if s='1' then
 sp_sjcx['lcsfwc']:='已完成'
 else if s='0' then
 sp_sjcx['lcsfwc']:='未完成';

 s:=Trim(sp_sjcx.fieldbyname('lybz').asstring);
 if s='0' then
 sp_sjcx['brly']:='门诊'
 else if s='1' then
 sp_sjcx['brly']:='住院';

 s:=Trim(sp_sjcx.fieldbyname('sbks').asstring);
 s:=get_xsz('sys_ksdm',s);
 sp_sjcx['sbksmc']:=s;

 s:=Trim(sp_sjcx.fieldbyname('clczy').asstring);
 s:=get_xsz('sys_czy',s);
 sp_sjcx['zhclry']:=s;

 s:=Trim(sp_sjcx.fieldbyname('ksdm').asstring);
 s:=get_xsz('sys_ksdm',s);
 sp_sjcx['zhclks']:=s;

end;

procedure Tfrm_ylaq.qkjm;//清空界面
 begin
  ado_jbxx.Close;
  edit1.Clear;
  Memo1.Clear;
  Memo2.Clear;
  Memo3.Clear;
  jbmc.Caption:='';
  ComboBox1.Text:='';
  ComboBox2.Text:='';
  ComboBox3.Text:='';
  ComboBox4.Text:='';
  ComboBox5.Text:='';
  ComboBox9.Text:='';
  Button1.Enabled:=False;
  Button2.Enabled:=False;
  Button5.Enabled:=False;
  Button6.Enabled:=False;
 end;
procedure Tfrm_ylaq.qry_lbAfterDelete(DataSet: TDataSet);
var
ls:string;
begin
qkjm;
ls:='select * from blsj_ylaq_jbxx where  (sfwc<>1 and clczy='+#39+pub_czydm+#39+') or (ksdm='+#39+pub_ksdm+#39+' and sfwc<>1 and clczy='+#39+#39+')';
qry_lb.Close;
qry_lb.SQL.Clear;
qry_lb.SQL.Add(ls);
qry_lb.Open;
edit1.SetFocus;
end;

end.
