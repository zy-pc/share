unit P_kszkfxsj;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, ADODB, cxPC,
  StdCtrls, ComCtrls, ExtCtrls, Buttons, cxGridBandedTableView,
  cxGridDBBandedTableView;

type
  Tfrm_kszkfxsj = class(TForm)
    ds_zyblsjzk: TDataSource;
    cxPageControl1: TcxPageControl;
    cxTabSheet2: TcxTabSheet;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    qry_grtj: TADODataSet;
    ds_grtj: TDataSource;
    cxTabSheet3: TcxTabSheet;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    Panel1: TPanel;
    rbmn: TRadioButton;
    rbmy: TRadioButton;
    rbmj: TRadioButton;
    rbdr: TRadioButton;
    rbmr: TRadioButton;
    DTPicker1: TDateTimePicker;
    DTPicker2: TDateTimePicker;
    cbmn: TComboBox;
    cbnj: TComboBox;
    b_tj: TBitBtn;
    qry_sjzkmx: TADODataSet;
    cxGrid1DBTableView1ysmc: TcxGridDBColumn;
    cxGrid1DBTableView1brxx: TcxGridDBColumn;
    cxGrid1DBTableView1mc: TcxGridDBColumn;
    cxGrid1DBTableView1sm: TcxGridDBColumn;
    cxGrid1DBTableView1sysj: TcxGridDBColumn;
    cxGrid1DBTableView1sysjsl: TcxGridDBColumn;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    cxGrid2DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid2DBTableView1ksmc: TcxGridDBColumn;
    cxGrid2DBTableView1czymc: TcxGridDBColumn;
    cxGrid2DBTableView1jkmc: TcxGridDBColumn;
    cxGrid2DBTableView1glrc: TcxGridDBColumn;
    cxGrid2DBTableView1wcsl: TcxGridDBColumn;
    cxGrid2DBTableView1wwcsl: TcxGridDBColumn;
    cxGrid2DBTableView1wcjf: TcxGridDBColumn;
    cxGrid2DBTableView1wwckf: TcxGridDBColumn;
    cxGrid2DBTableView1sjfz: TcxGridDBColumn;
    sp_sjzkmx: TADOStoredProc;
    ds_sjzkmx: TDataSource;
    cxGrid1DBTableView1ksmc: TcxGridDBColumn;
    Label1: TLabel;
    Edit1: TEdit;
    BitBtn3: TBitBtn;
    cxGrid1DBTableView1sxsj: TcxGridDBColumn;
    cxTabSheet1: TcxTabSheet;
    cxGrid3: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBBandedTableView1: TcxGridDBBandedTableView;
    cxGridLevel1: TcxGridLevel;
    qry_fkxx: TADOQuery;
    ds_fkxx: TDataSource;
    procedure FormShow(Sender: TObject);
    procedure rbmrClick(Sender: TObject);
    procedure rbmyClick(Sender: TObject);
    procedure rbmjClick(Sender: TObject);
    procedure rbmnClick(Sender: TObject);
    procedure rbdrClick(Sender: TObject);
    procedure b_tjClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
     procedure query_sjzkmx(filter:string);
    { Private declarations }
  public
    sqltextmx:string; { Public declarations }
  end;

var
  frm_kszkfxsj: Tfrm_kszkfxsj;

implementation
uses p_dm,p_func;
{$R *.dfm}

procedure Tfrm_kszkfxsj.query_sjzkmx(filter:string);
begin
  sp_sjzkmx.Close;
  sp_sjzkmx.Parameters.ParamByName('@ysdm').Value:='';
  sp_sjzkmx.Parameters.ParamByName('@clfs').Value:=0;
  sp_sjzkmx.Parameters.ParamByName('@filter').Value:=filter;
  sp_sjzkmx.Open;
end;
procedure Tfrm_kszkfxsj.BitBtn1Click(Sender: TObject);
begin
  if cxPageControl1.ActivePageIndex=0 then
     frm_func.cxgridtoexcel(cxgrid2,3,'aaa','bbb','ccc',TADOStoredProc.Create(self))
  else if cxPageControl1.ActivePageIndex=1 then
     frm_func.cxgridtoexcel(cxgrid1,3,'aaa','bbb','ccc',TADOStoredProc.Create(self))
     else
     frm_func.cxgridtoexcel(cxgrid3,3,'aaa','bbb','ccc',TADOStoredProc.Create(self))


end;

procedure Tfrm_kszkfxsj.BitBtn2Click(Sender: TObject);
begin
  close;
end;

procedure Tfrm_kszkfxsj.BitBtn3Click(Sender: TObject);
var
 filter,sqltext,inputstring,tmpstr,sql:string;
begin
  if trim(edit1.text)='' then
  begin
    qry_grtj.Filtered:=False;
    pub_sjsz:='mx.ywcsj';
    tmpstr:=frm_func.createdate(dtpicker1,dtpicker2,rbmr,rbmy,rbmj,rbmn,rbdr,cbnj,cbmn,inputstring);
    filter:=tmpstr;
    sp_sjzkmx.Close;
    sp_sjzkmx.Parameters.ParamByName('@ysdm').Value:='';
    sp_sjzkmx.Parameters.ParamByName('@clfs').Value:=0;
    sp_sjzkmx.Parameters.ParamByName('@filter').Value:=filter;
    sp_sjzkmx.Open;
    sql:='select * from (select a.*,b.mc czymc,c.mc fkrmc,d.mc dlmc,e.brxm,f.mc ksmc,e.tmh'+
       ' from zydzbl_zkfk a,sys_czy b,sys_czy c,sys_dzbl_mbfl d,zysf_zydj e,sys_ksdm f'+
       ' where a.clr=b.dm and  a.fkr=c.dm and a.fldm*=d.dm and a.zyh=e.zyh and e.ksdm=f.dm'+
       ' union all' +
       ' select a.*,b.mc czymc,c.mc fkrmc,d.mc dlmc,e.brxm,f.mc ksmc,e.tmh'+
       ' from zydzbl_zkfk a,sys_czy b,sys_czy c,sys_dzbl_mbfl d,zysf_cydj e,sys_ksdm f'+
       ' where a.clr=b.dm and  a.fkr=c.dm and a.fldm*=d.dm and a.zyh=e.zyh and e.ksdm=f.dm) as lsb where ';
    pub_sjsz:='fksj';
    tmpstr:=frm_func.createdate(dtpicker1,dtpicker2,rbmr,rbmy,rbmj,rbmn,rbdr,cbnj,cbmn,inputstring);
    sql:=sql+tmpstr;
    qry_fkxx.Close;
    qry_fkxx.SQL.Text:=sql;
    qry_fkxx.open;
  end
  else
  begin
    qry_grtj.Filtered:=False;
    qry_grtj.Filter:='ysdm like ''%'+trim(edit1.text)+'%''';
    qry_grtj.Filtered:=True;
    pub_sjsz:='mx.ywcsj';
    tmpstr:=frm_func.createdate(dtpicker1,dtpicker2,rbmr,rbmy,rbmj,rbmn,rbdr,cbnj,cbmn,inputstring);
    filter:=tmpstr;
    sp_sjzkmx.Close;
    sp_sjzkmx.Parameters.ParamByName('@ysdm').Value:=trim(edit1.text);
    sp_sjzkmx.Parameters.ParamByName('@clfs').Value:=0;
    sp_sjzkmx.Parameters.ParamByName('@filter').Value:=filter;
    sp_sjzkmx.Open;
    sql:='select * from (select a.*,b.mc czymc,c.mc fkrmc,d.mc dlmc,e.brxm,f.mc ksmc,e.tmh'+
       ' from zydzbl_zkfk a,sys_czy b,sys_czy c,sys_dzbl_mbfl d,zysf_zydj e,sys_ksdm f'+
       ' where a.clr=b.dm and  a.fkr=c.dm and a.fldm*=d.dm and a.zyh=e.zyh and e.ksdm=f.dm'+
       ' union all' +
       ' select a.*,b.mc czymc,c.mc fkrmc,d.mc dlmc,e.brxm,f.mc ksmc,e.tmh'+
       ' from zydzbl_zkfk a,sys_czy b,sys_czy c,sys_dzbl_mbfl d,zysf_cydj e,sys_ksdm f'+
       ' where a.clr=b.dm and  a.fkr=c.dm and a.fldm*=d.dm and a.zyh=e.zyh and e.ksdm=f.dm) as lsb where ';
    pub_sjsz:='fksj';
    tmpstr:=frm_func.createdate(dtpicker1,dtpicker2,rbmr,rbmy,rbmj,rbmn,rbdr,cbnj,cbmn,inputstring);
    sql:=sql+tmpstr;
    qry_fkxx.Close;
    qry_fkxx.SQL.Text:=sql;
    qry_fkxx.open;
    qry_fkxx.Filtered:=false;
    qry_fkxx.Filter:='clr like ''%'+trim(edit1.text)+'%''';
    qry_fkxx.Filtered:=true;
  end;
end;

procedure Tfrm_kszkfxsj.b_tjClick(Sender: TObject);
var
 filter,sqltext,inputstring,tmpstr,sql:string;
begin
if username='sys_zybl' then
begin
  sqltext:='select hz.ksdm,hz.ysdm,ks.mc ksmc,czy.mc czymc ,sz.mc jkmc ,avg(hz.glrc) glrc, sum(hz.wcsl) wcsl,sum(hz.wwcsl) wwcsl,sum(hz.wcjf)wcjf,'+
           ' sum(hz.wwckf) wwckf,sum(hz.sjfz) sjfz '+
           ' from zydzbl_hz_sjzkfx hz,sys_czy czy ,zydzbl_sjjksz sz,sys_ksdm ks  '+
           ' where hz.ysdm=czy.dm  and '+
           '       hz.zkxmdm=sz.dm and '+
           '       hz.ksdm=ks.dm   and '+
           '       hz.ksdm in (select bqzydm ksdm from sys_bqzyfl where bqdm=:bqdm)  ';
  pub_sjsz:='tjsj';
  tmpstr:=frm_func.createdate(dtpicker1,dtpicker2,rbmr,rbmy,rbmj,rbmn,rbdr,cbnj,cbmn,inputstring);
  qry_grtj.Close;
  qry_grtj.CommandText:=sqltext+' and '+ tmpstr +' group by ks.mc,czy.mc,sz.mc,hz.ksdm,hz.ysdm' ;
  qry_grtj.Parameters.ParamByName('bqdm').Value:=pub_bqdm;
  qry_grtj.Open;

  pub_sjsz:='mx.ywcsj';
  tmpstr:=frm_func.createdate(dtpicker1,dtpicker2,rbmr,rbmy,rbmj,rbmn,rbdr,cbnj,cbmn,inputstring);
  filter:='  dj.bqdm='+''''+pub_bqdm+''''+' and '+tmpstr;
  query_sjzkmx(filter); //后台过程查询明累
end
else
if username='sys_blzk' then
begin
  sqltext:='select hz.ksdm,hz.ysdm,ks.mc ksmc,czy.mc czymc ,sz.mc jkmc ,avg(hz.glrc) glrc, sum(hz.wcsl) wcsl,sum(hz.wwcsl) wwcsl,sum(hz.wcjf)wcjf,'+
           ' sum(hz.wwckf) wwckf,sum(hz.sjfz) sjfz '+
           ' from zydzbl_hz_sjzkfx hz,sys_czy czy ,zydzbl_sjjksz sz,sys_ksdm ks  '+
           ' where hz.ysdm=czy.dm  and '+
           '       hz.zkxmdm=sz.dm and '+
           '       hz.ksdm=ks.dm       ';
  pub_sjsz:='tjsj';
  tmpstr:=frm_func.createdate(dtpicker1,dtpicker2,rbmr,rbmy,rbmj,rbmn,rbdr,cbnj,cbmn,inputstring);
  qry_grtj.Close;
  qry_grtj.CommandText:=sqltext+' and '+ tmpstr +' group by ks.mc,czy.mc,sz.mc,hz.ysdm,hz.ksdm' ;
  qry_grtj.Open;

  pub_sjsz:='mx.ywcsj';
  tmpstr:=frm_func.createdate(dtpicker1,dtpicker2,rbmr,rbmy,rbmj,rbmn,rbdr,cbnj,cbmn,inputstring);
  filter:=tmpstr;
  query_sjzkmx(filter); //后台过程查询明累
end;

  sql:='select * from (select a.*,b.mc czymc,c.mc fkrmc,d.mc dlmc,e.brxm,f.mc ksmc,e.tmh'+
       ' from zydzbl_zkfk a,sys_czy b,sys_czy c,sys_dzbl_mbfl d,zysf_zydj e,sys_ksdm f'+
       ' where a.clr=b.dm and  a.fkr=c.dm and a.fldm*=d.dm and a.zyh=e.zyh and e.ksdm=f.dm'+
       ' union all' +
       ' select a.*,b.mc czymc,c.mc fkrmc,d.mc dlmc,e.brxm,f.mc ksmc,e.tmh'+
       ' from zydzbl_zkfk a,sys_czy b,sys_czy c,sys_dzbl_mbfl d,zysf_cydj e,sys_ksdm f'+
       ' where a.clr=b.dm and  a.fkr=c.dm and a.fldm*=d.dm and a.zyh=e.zyh and e.ksdm=f.dm) as lsb where ';
  pub_sjsz:='fksj';
  tmpstr:=frm_func.createdate(dtpicker1,dtpicker2,rbmr,rbmy,rbmj,rbmn,rbdr,cbnj,cbmn,inputstring);
  sql:=sql+tmpstr;
  qry_fkxx.Close;
  qry_fkxx.SQL.Text:=sql;
  qry_fkxx.open;
  cxGrid2DBTableView1.DataController.Groups.FullExpand;

end;

procedure Tfrm_kszkfxsj.FormShow(Sender: TObject);
begin
    cxPageControl1.ActivePageIndex:=0;
    sqltextmx:=qry_sjzkmx.CommandText;
    dtpicker1.Date:=frm_func.curr_date;
    dtpicker2.Date:=frm_func.curr_date;
    dtpicker1.visible:=true;
end;

procedure Tfrm_kszkfxsj.rbdrClick(Sender: TObject);
begin
  dtpicker1.visible:=true;
  dtpicker2.visible:=true;
  cbnj.Visible :=false;
  cbmn.visible :=false;
end;

procedure Tfrm_kszkfxsj.rbmjClick(Sender: TObject);
var year,day,month,i:word;
begin
  dtpicker1.visible:=false;
  dtpicker2.visible:=false;
  cbnj.Visible :=true;
  cbnj.Items.clear;
  cbnj.Items.add('1季度');
  cbnj.Items.add('2季度');
  cbnj.Items.add('3季度');
  cbnj.Items.add('4季度');
  cbnj.text:='1季度';
  cbmn.visible:=true;
  cbmn.Items.clear;
  decodedate(date,year,month,day);
  for i:=year downto year-50 do
  cbmn.items.Add(inttostr(i));
  cbmn.text:=inttostr(year);
end;

procedure Tfrm_kszkfxsj.rbmnClick(Sender: TObject);
var year,day,month,i:word;
begin
  dtpicker1.visible:=false;
  dtpicker2.visible:=false;
  cbmn.Visible :=true;
  cbmn.Items.clear;
  decodedate(date,year,month,day);
  for i:=year downto year-50 do
  cbmn.items.Add(inttostr(i));
  cbmn.text:=inttostr(year);
  cbnj.Visible:=true;
  cbnj.Items.clear;
  cbnj.Items.add('全年');
  cbnj.Items.add('上半年');
  cbnj.Items.add('下半年');
  cbnj.text:='全年';
end;

procedure Tfrm_kszkfxsj.rbmrClick(Sender: TObject);
begin
  dtpicker1.visible:=true;
  dtpicker2.visible:=false;
  cbnj.Visible :=false;
  cbmn.visible :=false;
end;

procedure Tfrm_kszkfxsj.rbmyClick(Sender: TObject);
var year,day,month,i:word;
    s:string;
begin
  dtpicker1.visible:=false;
  dtpicker2.visible:=false;
  cbnj.Visible :=true;
  cbmn.visible:=true;
  cbmn.Items.clear;
  decodedate(date,year,month,day);
  for i:=year downto year-50 do
    cbmn.items.Add(inttostr(i));
  cbmn.text:=inttostr(year);
  cbnj.Items.clear;
  for i:=1 to 12 do
  begin
    if i<=9 then
      s:='0'+inttostr(i)+'月'
    else
      s:=inttostr(i)+'月';
    cbnj.Items.add(s);
  end;
  cbnj.text:='01月';
end;

end.
