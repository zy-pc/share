unit p_blsj_gwyspf;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, StdCtrls, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, ADODB, cxDropDownEdit, cxEditRepositoryItems, cxGridBandedTableView,
  cxGridDBBandedTableView, cxDBEditRepository, cxContainer,
  cxTextEdit, cxMaskEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  GridsEh, DBGridEh, ExtCtrls, DBGridEhGrouping;

type
  Tfrm_blsj_gwyspf = class(TForm)
    DBGridEh1: TDBGridEh;
    ds_pf: TDataSource;
    Panel1: TPanel;
    ado_pf: TADODataSet;
    Panel2: TPanel;
    Label1: TLabel;
    qry_bc: TADOQuery;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    pflb,zy_zyh,ywsjzf,ycfxzf,sjcljb,sjclid:string;


  end;


var
  frm_blsj_gwyspf: Tfrm_blsj_gwyspf;

implementation
uses
p_dm,p_func,p_blsj_hlsj;
//p_blsj_ycsj;

{$R *.dfm}

procedure Tfrm_blsj_gwyspf.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if (pflb='hlsj') and (ywsjzf<>'') then
 begin
 frm_hlsj.ado_jbxx['ywsjpf']:=ywsjzf;
 end
 else if (pflb='ycfx') and  (ycfxzf<>'') then
// frm_ycsj.ado_jbxx['pgzf']:=ycfxzf;
end;

procedure Tfrm_blsj_gwyspf.FormShow(Sender: TObject);
begin
if (pflb='hlsj') and (zy_zyh<>'') then    //�����¼�--�����¼����ֵ���
 begin
  ado_pf.close;
  ado_pf.CommandText:='select top 8 pfdx as '+'���ִ���'+',pfxx as '+'����ϸĿ'+',ms as '+'�������'+',fz as '+'��ֵ'+ ' from zybl_hljld_pf where zyh='+#39+zy_zyh+#39+' and pfdx='+#39+'�����¼�Σ������'+#39+' order by jlrq desc';
  ado_pf.Open;
  DBGridEh1.Columns[0].Title.Alignment:=taCenter;
  DBGridEh1.Columns[0].Alignment:=taCenter;
  DBGridEh1.Columns[0].width:=100;
  DBGridEh1.Columns[1].Title.Alignment:=taCenter;
  DBGridEh1.Columns[1].Alignment:=taCenter;
  DBGridEh1.Columns[1].width:=120;
  DBGridEh1.Columns[2].Title.Alignment:=taCenter;
  DBGridEh1.Columns[2].Alignment:=taCenter;
  DBGridEh1.Columns[2].width:=120;
  DBGridEh1.Columns[3].Title.Alignment:=taCenter;
  DBGridEh1.Columns[3].Alignment:=taCenter;
  DBGridEh1.Columns[3].width:=70;
  qry_bc.Close;
  qry_bc.SQL.clear;
  qry_bc.SQL.Add('select top 1 SUM(fz) zf from zybl_hljld_pf  where  pfdx=:pfdx and zyh=:zyh'+' ' +' group by jlrq order by jlrq desc');
  qry_bc.Parameters.ParamByName('pfdx').Value:='�����¼�Σ������';
  qry_bc.Parameters.ParamByName('zyh').Value:=zy_zyh;
  qry_bc.Open;
  ywsjzf:=qry_bc.FieldByName('zf').AsString;
  if ywsjzf<>'' then
  frm_hlsj.ado_jbxx['ywsjpf']:=ywsjzf;
  Label1.Caption:='�����¼�Σ������'+'  �ܷ�:'+ywsjzf;
 end;
 if (pflb='ycfx') and (zy_zyh<>'') then //ѹ����������Branden���ַ�����
 begin
  ado_pf.close;
  ado_pf.CommandText:='select top 6 a.pfdx as '+'���ִ���'+',a.pfxx as '+'����ϸĿ'+',a.jg as '+'�������'+',b.fz as '+'��ֵ'+' from zybl_hljld_pf a,zybl_hljld_pfdz b where a.pfxx=b.pfxx and a.jg=b.jg and a.pfdx='+#39+'ѹ������'+#39+' and zyh='+#39+zy_zyh+#39+' order by a.jlrq desc';
  ado_pf.Open;
  DBGridEh1.Columns[0].Title.Alignment:=taCenter;
  DBGridEh1.Columns[0].Alignment:=taCenter;
  DBGridEh1.Columns[0].width:=70;
  DBGridEh1.Columns[1].Title.Alignment:=taCenter;
  DBGridEh1.Columns[1].Alignment:=taLeftJustify;
  DBGridEh1.Columns[1].width:=200;
  DBGridEh1.Columns[2].Title.Alignment:=taCenter;
  DBGridEh1.Columns[2].Alignment:=taCenter;
  DBGridEh1.Columns[2].width:=100;
  DBGridEh1.Columns[3].Title.Alignment:=taCenter;
  DBGridEh1.Columns[3].Alignment:=taCenter;
  DBGridEh1.Columns[3].width:=50;
  qry_bc.Close;
  qry_bc.SQL.clear;
  qry_bc.SQL.Add('select top 1 SUM(b.fz) zf from zybl_hljld_pf a,zybl_hljld_pfdz b where a.pfxx=b.pfxx and a.jg=b.jg and a.pfdx=:pfdx and zyh=:zyh' +' group by jlrq order by jlrq desc');
  qry_bc.Parameters.ParamByName('pfdx').Value:='ѹ������';
  qry_bc.Parameters.ParamByName('zyh').Value:=zy_zyh;
  qry_bc.Open;
  ycfxzf:= qry_bc.FieldByName('zf').AsString;
 { if ycfxzf<>'' then
  frm_ycsj.ado_jbxx['pgzf']:=ycfxzf;
  Label1.Caption:='ѹ����������:Branden���ַ�'+'  �ܷ�:'+ycfxzf ;
  if  ado_pf.Locate('����ϸĿ','�о��������ѹ��������Ĳ��ʸеķ�Ӧ����',[loCaseInsensitive]) then  //�������¼�����ݵ���ѹ����������
  frm_ycsj.combobox1.Text:=ado_pf.fieldbyname('�������').asstring;
  if  ado_pf.Locate('����ϸĿ','��ʪ��Ƥ�����ڳ�ʪ״̬�ĳ̶�',[loCaseInsensitive]) then
  frm_ycsj.combobox3.Text:=ado_pf.fieldbyname('�������').asstring;
  if  ado_pf.Locate('����ϸĿ','��ȣ���������',[loCaseInsensitive]) then
  frm_ycsj.combobox4.Text:=ado_pf.fieldbyname('�������').asstring;
  if  ado_pf.Locate('����ϸĿ','�ɶ��ԣ��ı�Ϳ�����λ����',[loCaseInsensitive]) then
  frm_ycsj.combobox5.Text:=ado_pf.fieldbyname('�������').asstring;
  if  ado_pf.Locate('����ϸĿ','Ӫ����ͨ������ʳ���',[loCaseInsensitive]) then
  frm_ycsj.combobox6.Text:=ado_pf.fieldbyname('�������').asstring;
  if  ado_pf.Locate('����ϸĿ','Ħ�����ͼ�����',[loCaseInsensitive]) then
  frm_ycsj.combobox7.Text:=ado_pf.fieldbyname('�������').asstring;   }
 end;
 if pflb='ycfxhtyy' then  //ѹ�����ղ鿴�˻ؼ�¼
 begin
 label1.Caption:='�ϼ�������Ա�˻ؼ�¼';
 ado_pf.Close;
 ado_pf.CommandText:='select  thrq as �˻�����,b.mc as �˻���Ա,thyy as �˻�ԭ�� from blsj_ycsj_cljl a,sys_czy b where sjid=' + #39 + sjclid + #39 +' and cljb='+#39+sjcljb+#39+ ' and thbz=1 and a.thry=b.dm order by thrq desc';
 ado_pf.Open;
 end;
 if pflb='hlsjhtyy' then  // �����¼��鿴�˻ؼ�¼
 begin
 label1.Caption:='�ϼ�������Ա�˻ؼ�¼';
 ado_pf.Close;
 ado_pf.CommandText:='select  thrq as �˻�����,b.mc as �˻���Ա,thyy as �˻�ԭ�� from blsj_hlsj_cljl a,sys_czy b where sjid=' + #39 + sjclid + #39 +' and cljb='+#39+sjcljb+#39+ ' and thbz=1 and a.thry=b.dm order by thrq desc';
 ado_pf.Open;
 end;
 if pflb='ynychtyy' then  // Ժ��ѹ���鿴�˻ؼ�¼
 begin
 label1.Caption:='�ϼ�������Ա�˻ؼ�¼';
 ado_pf.Close;
 ado_pf.CommandText:='select  thrq as �˻�����,b.mc as �˻���Ա,thyy as �˻�ԭ�� from blsj_ynyc_cljl a,sys_czy b where sjid=' + #39 + sjclid + #39 +' and cljb='+#39+sjcljb+#39+ ' and thbz=1 and a.thry=b.dm order by thrq desc';
 ado_pf.Open;
 end;
 if pflb='ywychtyy' then //Ժ��ѹ���鿴�˻ؼ�¼
 begin
 label1.Caption:='�ϼ�������Ա�˻ؼ�¼';
 ado_pf.Close;
 ado_pf.CommandText:='select  thrq as �˻�����,b.mc as �˻���Ա,thyy as �˻�ԭ�� from blsj_ywyc_cljl a,sys_czy b where sjid=' + #39 + sjclid + #39 +' and cljb='+#39+sjcljb+#39+ ' and thbz=1 and a.thry=b.dm order by thrq desc';
 ado_pf.Open;
 end;
 if pflb='ypsjhtyy' then //ҩƷ�¼��鿴�˻ؼ�¼
 begin
 label1.Caption:='�ϼ�������Ա�˻ؼ�¼';
 ado_pf.Close;
 ado_pf.CommandText:='select  thrq as �˻�����,b.mc as �˻���Ա,thyy as �˻�ԭ�� from blsj_ypsj_cljl a,sys_czy b where sjid=' + #39 + sjclid + #39 +' and cljb='+#39+sjcljb+#39+ ' and thbz=1 and a.thry=b.dm order by thrq desc';
 ado_pf.Open;
 end;
end;


end.
