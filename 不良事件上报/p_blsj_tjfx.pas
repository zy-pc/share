unit p_blsj_tjfx;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
    Dialogs, StdCtrls, cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
    cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxStyles,
    cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, DB, cxDBData,
    cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
    cxGridTableView, cxGridDBTableView, cxGrid, cxCalendar, ADODB, ExtCtrls,
    QuickRpt, QRCtrls, ComCtrls, DBCtrls, cxDBEdit, Mask,  cxExportGrid4Link,
    cxCheckListBox, Grids, DBGrids, Menus, ImgList, TeEngine, Series, TeeProcs,
  Chart, DBChart, cxLookAndFeels, cxLookAndFeelPainters;

type
  Tfrm_blsjtjfx = class(TForm)
    ImageList2: TImageList;
    Panel1: TPanel;
    treeviewzp: TTreeView;
    sp_tj_hlsj: TADOStoredProc;
    pc1: TPageControl;
    TabSheet3: TTabSheet;
    Panel7: TPanel;
    Label36: TLabel;
    Label37: TLabel;
    Button10: TButton;
    dtptjs: TDateTimePicker;
    dtptje: TDateTimePicker;
    Button11: TButton;
    Button13: TButton;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    ds_tj_hlsj: TDataSource;
    qry_pub: TADOQuery;
    SaveDialog1: TSaveDialog;
    ds_tj_hlsj_sjd: TDataSource;
    sp_tj_hlsj_sjd: TADOStoredProc;
    sp_tj_ycsj: TADOStoredProc;
    ds_tj_ycsj: TDataSource;
    sp_tj_ynyc: TADOStoredProc;
    ds_tj_ynyc: TDataSource;
    sp_tj_ywyc: TADOStoredProc;
    ds_tj_ywyc: TDataSource;
    ComboBox1: TComboBox;
    sp_blsj_zkzb: TADOStoredProc;
    ds_blsj_zkzb: TDataSource;
    TabSheet1: TTabSheet;
    Panel4: TPanel;
    sp1: TADOStoredProc;
    sp2: TADOStoredProc;
    sp_dhhf: TADOStoredProc;
    ds_dhhf: TDataSource;
    DBChart1: TDBChart;
    Series1: TBarSeries;
    procedure Button4Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Add_xsz(bmc, cxz: string; Cbox: TComboBox);
    procedure FormShow(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure treeviewzpClick(Sender: TObject);
    procedure TabSheet1Show(Sender: TObject);
    procedure TabSheet1Exit(Sender: TObject);

  private
    { Private declarations }
    iii: Integer;
    xzbz: string;
    sjjgcsz:string;
  public
    { Public declarations }
    id: string;
    dqczy: string;
    dqks: string;
    cljb: string;
    value1: string;
    value2: string;
    value3: string;
    value4: string;
    value5: string;
    value6: string;
    value7: string;
    value8: string;//原因分析字符串
    pub_key:string;
    dldm:string;
    str_mbct:string;//模板词条内容
    firstshow:boolean;
    function get_xsz(bmc, cxz: string): string;
  end;

var
  kj1: TObject;
  frm_blsjtjfx: Tfrm_blsjtjfx;

implementation

{$R *.dfm}
uses p_dm,p_func, p_main;

procedure Tfrm_blsjtjfx.Button10Click(Sender: TObject);
var
  ls, ksrq, jsrq,sjmc,tjlx: string;
  i,ii,select_id:integer;
  NewCombobox: TCombobox;
begin
  select_id:= treeviewzp.Selected.SelectedIndex;
  cxGridDBTableView1.ClearItems;
  ksrq := FormatDateTime('yyyy-mm-dd', dtptjs.Date);
  jsrq := FormatDateTime('yyyy-mm-dd', dtptje.Date);
  series1.XLabelsSource:='';
  series1.YValues.ValueSource:='';
  //series1.DataSource:=sp_blsj_zkzb;
  if select_id=1001 then //分科室统计全部数量--护理不良事件
  begin
    cxGridDBTableView1.DataController.DataSource:=ds_tj_hlsj;
    sp_tj_hlsj.Close;
    ksrq := FormatDateTime('yyyy-mm-dd', dtptjs.Date);
    jsrq := FormatDateTime('yyyy-mm-dd', dtptje.Date);
    sp_tj_hlsj.parameters.ParamByName('@ksrq').value := ksrq;
    sp_tj_hlsj.parameters.ParamByName('@jsrq').value := jsrq;
    sp_tj_hlsj.parameters.ParamByName('@ksdm').value := pub_ksdm;
    sp_tj_hlsj.parameters.ParamByName('@czydm').value := pub_czydm;
    sp_tj_hlsj.open;
    for i:=0 to sp_tj_hlsj.fieldcount-1 do
    begin
      cxGridDBTableView1.CreateColumn;
      cxGridDBTableView1.Columns[i].DataBinding.fieldname:=sp_tj_hlsj.Fields[i].DisplayName;
      cxGridDBTableView1.Columns[i].caption:=sp_tj_hlsj.Fields[i].fieldname;
      if i=0 then
      cxGridDBTableView1.Columns[i].width:=100
      else
      cxGridDBTableView1.Columns[i].width:=70;
    end;
    sp_tj_hlsj.ExecProc;
    sp_tj_hlsj.active:=True;
   { series1.XLabelsSource:='';
    series1.YValues.ValueSource:='';
    series1.DataSource:=sp_tj_hlsj;
    series1.XLabelsSource:='科室名称';
    series1.YValues.ValueSource:='合计';
    series1.DataSource:=sp_tj_hlsj;
    series1.CheckDataSource;
    series1.Repaint;
    DBChart1.Title.Caption:='科室不良事件合计数量';  }
  end
  else if (select_id>1000) and (select_id<2000) then
  begin
    cxGridDBTableView1.DataController.DataSource:=ds_tj_hlsj_sjd;
    sp_tj_hlsj_sjd.Close;
    tjlx:='';
    if select_id=1002 then   //分时段统计数量
      tjlx:='3'
    else if select_id=1003 then  //分星期统计数量
      tjlx:='4'
    else if select_id=1004 then     //提取事件发生时间点
      tjlx:='1'
    else if select_id=1005 then    //提取事件发生星期
      tjlx:='2'
    else if select_id=1006 then     //提取造成伤害情况
      tjlx:='5'
    else if select_id=1007 then     //提原因分析
      tjlx:='6'
    else if select_id=1008 then     //提交质控办报表
      tjlx:='7'
    else if select_id=1009 then     //意外事件评分分数段统计
      tjlx:='8'
    else if select_id=1010 then     //责任人年龄
      tjlx:='10'
    else if select_id=1011 then //事件分级
      tjlx :='14'
    else if select_id=1012 then //非计划拔管类型统计
      tjlx :='16'
    else if select_id=1013 then //非计划拔重置统计
      tjlx :='17'
    else if select_id=1014 then //损伤严重程度
      tjlx :='18'
    else if select_id=1015 then //护理岗级统计
      tjlx :='19'
    else if select_id=1016 then //护理特殊事件统计
      tjlx :='23';
    ksrq := FormatDateTime('yyyy-mm-dd', dtptjs.Date);
    jsrq := FormatDateTime('yyyy-mm-dd', dtptje.Date);
    sp_tj_hlsj_sjd.parameters.ParamByName('@ksrq').value := ksrq;
    sp_tj_hlsj_sjd.parameters.ParamByName('@jsrq').value := jsrq;
    sp_tj_hlsj_sjd.parameters.ParamByName('@ksdm').value := pub_ksdm;
    sp_tj_hlsj_sjd.parameters.ParamByName('@czydm').value := pub_czydm;
    sp_tj_hlsj_sjd.parameters.ParamByName('@tjlx').value := tjlx;
    if select_id=1007 then
      sp_tj_hlsj_sjd.parameters.ParamByName('@sjlxmc').value := trim(combobox1.text)
    else
      sp_tj_hlsj_sjd.parameters.ParamByName('@sjlxmc').value :='';
      sp_tj_hlsj_sjd.open;
   for i:=0 to sp_tj_hlsj_sjd.fieldcount-1 do
    begin
      cxGridDBTableView1.CreateColumn;
      cxGridDBTableView1.Columns[i].DataBinding.fieldname:=sp_tj_hlsj_sjd.Fields[i].DisplayName;
      cxGridDBTableView1.Columns[i].caption:=sp_tj_hlsj_sjd.Fields[i].fieldname;
      if select_id=1002 then
      cxGridDBTableView1.Columns[i].width:=120
      else if select_id=1009 then
      cxGridDBTableView1.Columns[i].width:=240
      else if select_id=1010 then
      cxGridDBTableView1.Columns[i].width:=160
       else if select_id=1011 then
       begin
         if i=0 then
           cxGridDBTableView1.Columns[i].width:=120
         else
           cxGridDBTableView1.Columns[i].width:=110;
       end;
    end;
    sp_tj_hlsj_sjd.ExecProc;
    sp_tj_hlsj_sjd.active:=True;
  end
  else if (select_id>2000) and (select_id<3000) then
  begin
  if  select_id=2001 then     //难免压疮数量统计
  begin
  cxGridDBTableView1.DataController.DataSource:=ds_tj_ycsj;
  sp_tj_ycsj.Close;
  ksrq := FormatDateTime('yyyy-mm-dd', dtptjs.Date);
  jsrq := FormatDateTime('yyyy-mm-dd', dtptje.Date);
  sp_tj_ycsj.parameters.ParamByName('@ksrq').value := ksrq;
  sp_tj_ycsj.parameters.ParamByName('@jsrq').value := jsrq;
  sp_tj_ycsj.parameters.ParamByName('@ksdm').value := pub_ksdm;
  sp_tj_ycsj.parameters.ParamByName('@czydm').value := pub_czydm;
  sp_tj_ycsj.open;
  for i:=0 to sp_tj_ycsj.fieldcount-1 do
    begin
      cxGridDBTableView1.CreateColumn;
      cxGridDBTableView1.Columns[i].DataBinding.fieldname:=sp_tj_ycsj.Fields[i].DisplayName;
      cxGridDBTableView1.Columns[i].caption:=sp_tj_ycsj.Fields[i].fieldname;
      if i=0 then
      cxGridDBTableView1.Columns[i].width:=100
      else
      cxGridDBTableView1.Columns[i].width:=70;
    end;
  sp_tj_ycsj.ExecProc;
  sp_tj_ycsj.active:=True;
  end
  else if select_id=2002 then  //压疮事件评分分数段统计
  begin
  cxGridDBTableView1.DataController.DataSource:=ds_tj_hlsj_sjd;
  sp_tj_hlsj_sjd.Close;
  ksrq := FormatDateTime('yyyy-mm-dd', dtptjs.Date);
  jsrq := FormatDateTime('yyyy-mm-dd', dtptje.Date);
  sp_tj_hlsj_sjd.parameters.ParamByName('@ksrq').value := ksrq;
  sp_tj_hlsj_sjd.parameters.ParamByName('@jsrq').value := jsrq;
  sp_tj_hlsj_sjd.parameters.ParamByName('@ksdm').value := pub_ksdm;
  sp_tj_hlsj_sjd.parameters.ParamByName('@czydm').value := pub_czydm;
  sp_tj_hlsj_sjd.parameters.ParamByName('@tjlx').value := '9';
  sp_tj_hlsj_sjd.parameters.ParamByName('@sjlxmc').value :='';
  sp_tj_hlsj_sjd.open;
  for i:=0 to sp_tj_hlsj_sjd.fieldcount-1 do
    begin
      cxGridDBTableView1.CreateColumn;
      cxGridDBTableView1.Columns[i].DataBinding.fieldname:=sp_tj_hlsj_sjd.Fields[i].DisplayName;
      cxGridDBTableView1.Columns[i].caption:=sp_tj_hlsj_sjd.Fields[i].fieldname;
      cxGridDBTableView1.Columns[i].width:=240;
    end;
  sp_tj_hlsj_sjd.ExecProc;
  sp_tj_hlsj_sjd.active:=True;
  end
  else if (select_id=2003) or (select_id=2004) or (select_id=2005) or (select_id=2006)   then  //压疮事件评分分数段统计
  begin
  cxGridDBTableView1.DataController.DataSource:=ds_tj_hlsj_sjd;
  sp_tj_hlsj_sjd.Close;
  ksrq := FormatDateTime('yyyy-mm-dd', dtptjs.Date);
  jsrq := FormatDateTime('yyyy-mm-dd', dtptje.Date);
  sp_tj_hlsj_sjd.parameters.ParamByName('@ksrq').value := ksrq;
  sp_tj_hlsj_sjd.parameters.ParamByName('@jsrq').value := jsrq;
  sp_tj_hlsj_sjd.parameters.ParamByName('@ksdm').value := pub_ksdm;
  sp_tj_hlsj_sjd.parameters.ParamByName('@czydm').value := pub_czydm;
  if select_id=2003 then
  sp_tj_hlsj_sjd.parameters.ParamByName('@tjlx').value := '11'
  else if select_id=2004 then
  sp_tj_hlsj_sjd.parameters.ParamByName('@tjlx').value := '12'
  else if select_id=2005 then
  sp_tj_hlsj_sjd.parameters.ParamByName('@tjlx').value := '13'
  else if select_id=2006 then  //转归情况
  sp_tj_hlsj_sjd.parameters.ParamByName('@tjlx').value := '20';
  sp_tj_hlsj_sjd.parameters.ParamByName('@sjlxmc').value :='';
  sp_tj_hlsj_sjd.open;
  for i:=0 to sp_tj_hlsj_sjd.fieldcount-1 do
    begin
      cxGridDBTableView1.CreateColumn;
      cxGridDBTableView1.Columns[i].DataBinding.fieldname:=sp_tj_hlsj_sjd.Fields[i].DisplayName;
      cxGridDBTableView1.Columns[i].caption:=sp_tj_hlsj_sjd.Fields[i].fieldname;
      if i=0 then
      cxGridDBTableView1.Columns[i].width:=160
      else if i=1 then
      cxGridDBTableView1.Columns[i].width:=100;     
    end;
   sp_tj_hlsj_sjd.ExecProc;
   sp_tj_hlsj_sjd.active:=True;
  end
  end
  else if  (select_id>3000) and (select_id<4000)   then //院内压疮统计
  begin
  cxGridDBTableView1.DataController.DataSource:=ds_tj_ynyc;
  tjlx:='';
  sp_tj_ynyc.Close;
  ksrq := FormatDateTime('yyyy-mm-dd', dtptjs.Date);
  jsrq := FormatDateTime('yyyy-mm-dd', dtptje.Date);
  sp_tj_ynyc.parameters.ParamByName('@ksrq').value := ksrq;
  sp_tj_ynyc.parameters.ParamByName('@jsrq').value := jsrq;
  sp_tj_ynyc.parameters.ParamByName('@ksdm').value := pub_ksdm;
  sp_tj_ynyc.parameters.ParamByName('@czydm').value := pub_czydm;
  if select_id=3001   then
  tjlx:='1'
  else if select_id=3002 then
  tjlx:='2'
  else if select_id=3003 then
  tjlx:='3'
  else if select_id=3004 then
  tjlx:='4'
  else if select_id=3005 then
  tjlx:='6';
  sp_tj_ynyc.parameters.ParamByName('@tjlx').value :=tjlx;;
  sp_tj_ynyc.open;
  for i:=0 to sp_tj_ynyc.fieldcount-1 do
    begin
      cxGridDBTableView1.CreateColumn;
      cxGridDBTableView1.Columns[i].DataBinding.fieldname:=sp_tj_ynyc.Fields[i].DisplayName;
      cxGridDBTableView1.Columns[i].caption:=sp_tj_ynyc.Fields[i].fieldname;
      if i=0 then
      cxGridDBTableView1.Columns[i].width:=120
      else
      begin
        if (tjlx='1') or (cxGridDBTableView1.Columns[i].caption='合计')  then
           cxGridDBTableView1.Columns[i].width:=80
        else if tjlx='2' then
           cxGridDBTableView1.Columns[i].width:=100;
      end;
      if  (tjlx='4') and (i<=1) then
      begin
        cxGridDBTableView1.Columns[i].Options.CellMerging :=True;
      end;
    end;
  sp_tj_ynyc.ExecProc;
  sp_tj_ynyc.active:=True;
  end
  else if  (select_id>4000) and (select_id<5000)   then //院外压疮统计
  begin
  cxGridDBTableView1.DataController.DataSource:=ds_tj_ywyc;
  tjlx:='';
  sp_tj_ywyc.Close;
  ksrq := FormatDateTime('yyyy-mm-dd', dtptjs.Date);
  jsrq := FormatDateTime('yyyy-mm-dd', dtptje.Date);
  sp_tj_ywyc.parameters.ParamByName('@ksrq').value := ksrq;
  sp_tj_ywyc.parameters.ParamByName('@jsrq').value := jsrq;
  sp_tj_ywyc.parameters.ParamByName('@ksdm').value := pub_ksdm;
  sp_tj_ywyc.parameters.ParamByName('@czydm').value := pub_czydm;
  if select_id=4001   then
  tjlx:='1'
  else if select_id=4002 then
  tjlx:='2'
  else if select_id=4003 then
  tjlx:='3'
  else if select_id=4004 then
  tjlx:='4'
  else if select_id=4005 then
  tjlx:='5'
  else if select_id=4006 then
  tjlx:='6';
  sp_tj_ywyc.parameters.ParamByName('@tjlx').value := tjlx;
  sp_tj_ywyc.open;
  for i:=0 to sp_tj_ywyc.fieldcount-1 do
    begin
      cxGridDBTableView1.CreateColumn;
      cxGridDBTableView1.Columns[i].DataBinding.fieldname:=sp_tj_ywyc.Fields[i].DisplayName;
      cxGridDBTableView1.Columns[i].caption:=sp_tj_ywyc.Fields[i].fieldname;
      if i=0 then
      cxGridDBTableView1.Columns[i].width:=100
      else
      begin
        if (tjlx='1') or (cxGridDBTableView1.Columns[i].caption='合计')  then
          cxGridDBTableView1.Columns[i].width:=80
        else if tjlx='2' then
          cxGridDBTableView1.Columns[i].width:=100
        else if tjlx='3' then
          cxGridDBTableView1.Columns[i].width:=200;
      end;
    end;
   sp_tj_ywyc.ExecProc;
   sp_tj_ywyc.active:=True;
  end
  else if  (select_id>5000) and (select_id<7000)   then //院外压疮统计
  begin
    cxGridDBTableView1.DataController.DataSource:=ds_blsj_zkzb;
    sp_blsj_zkzb.Close;
    tjlx:='';
    ksrq := FormatDateTime('yyyymmdd', dtptjs.Date);
    jsrq := FormatDateTime('yyyymmdd', dtptje.Date);
    sp_blsj_zkzb.parameters.ParamByName('@ksrq').value := ksrq;
    sp_blsj_zkzb.parameters.ParamByName('@jsrq').value := jsrq;
    sp_blsj_zkzb.parameters.ParamByName('@ksdm').value := pub_ksdm;
    sp_blsj_zkzb.parameters.ParamByName('@czydm').value := pub_czydm;
    if select_id=5001 then   //入院8小时跌倒坠床评估
      tjlx:='1'
    else if select_id=5002 then   //住院患者跌倒坠床发生率
      tjlx:='2'
    else if select_id=5003 then   //高危患者跌倒坠床发生率
      tjlx:='3'
    else if select_id=5004 then   //跌倒坠床伤害程度百分比统计
      tjlx:='4'
    else if select_id=5005 then   //入院8小时压疮评估
      tjlx:='5'
    else if select_id=5006 then   //院内压疮发生率千分比
      tjlx:='6'
    else if select_id=5007 then   //高危患者压疮发生率
      tjlx:='7'
    else if select_id=5008 then   //手术室压疮发生率
      tjlx:='8'
    else if select_id=5009 then   //给药差错统计
      tjlx:='9'
    else if select_id=5010 then   //插管患者非计划拔管率（‰）/例次
      tjlx:='10'
    else if select_id=5011 then   //入院2h adl评估率
      tjlx:='12'
    else if select_id=6001 then   //日报表1
      tjlx:='11';
    sp_blsj_zkzb.parameters.ParamByName('@tjlx').value := tjlx;
    sp_blsj_zkzb.open;
    for i:=0 to sp_blsj_zkzb.fieldcount-1 do
    begin
      cxGridDBTableView1.CreateColumn;
      cxGridDBTableView1.Columns[i].DataBinding.fieldname:=sp_blsj_zkzb.Fields[i].DisplayName;
      cxGridDBTableView1.Columns[i].caption:=sp_blsj_zkzb.Fields[i].fieldname;
      if select_id=5002 then
        cxGridDBTableView1.Columns[i].width:=200
      else if select_id=5004 then
        begin
         if i=0 then
           cxGridDBTableView1.Columns[i].width:=120
         else
           cxGridDBTableView1.Columns[i].width:=140;
        end
      else if select_id=5006 then
        cxGridDBTableView1.Columns[i].width:=160
      else if select_id=5007 then
        cxGridDBTableView1.Columns[i].width:=160
      else if select_id=2010 then
        cxGridDBTableView1.Columns[i].width:=160
      else if select_id=6001 then
        cxGridDBTableView1.Columns[i].width:=110;
    end;
    sp_blsj_zkzb.ExecProc;
    sp_blsj_zkzb.active:=True;
  end;
 
 if select_id=80 then
 begin
   cxGridDBTableView1.DataController.DataSource:=ds_dhhf;
   sp_dhhf.close;
   sp_dhhf.Parameters.ParamByName('@ksrq').Value:=FormatDateTime('yyyymmdd', dtptjs.Date);
   sp_dhhf.Parameters.ParamByName('@jsrq').Value:=FormatDateTime('yyyymmdd', dtptje.Date);
   sp_dhhf.Open;
   for i:=0 to sp_dhhf.fieldcount-1 do
    begin
      cxGridDBTableView1.CreateColumn;
      cxGridDBTableView1.Columns[i].DataBinding.fieldname:=sp_dhhf.Fields[i].DisplayName;
      cxGridDBTableView1.Columns[i].caption:=sp_dhhf.Fields[i].fieldname;
      if i=0 then
      cxGridDBTableView1.Columns[i].width:=100
      else
      cxGridDBTableView1.Columns[i].width:=70;
    end;
   sp_dhhf.ExecProc;
   sp_dhhf.active:=True;
   series1.XLabelsSource:='';
   series1.YValues.ValueSource:='';
   series1.DataSource:=sp_dhhf;
   series1.XLabelsSource:='科室名称';
   series1.YValues.ValueSource:='回访人数';
   series1.DataSource:=sp_dhhf;
   series1.CheckDataSource;
   series1.Repaint;
   DBChart1.Title.Caption:='住院回访人数统计图';
   DBChart1.Refresh;
 end;
end;

procedure Tfrm_blsjtjfx.Button11Click(Sender: TObject);
begin
self.close;
end;

procedure Tfrm_blsjtjfx.Button13Click(Sender: TObject);
begin
 if SaveDialog1.Execute then
  begin
    ExportGrid4ToEXCEL( SaveDialog1.FileName, cxGrid2, true, true );
//    exportgridtoexcel(SaveDialog1.FileName, cxGrid2, true, true);
    MessageBox(0, '数据导出完毕!', '系统提示', MB_OK + MB_ICONINFORMATION);
  end;
end;

procedure Tfrm_blsjtjfx.Button4Click(Sender: TObject);
begin
self.Close;
end;

procedure Tfrm_blsjtjfx.Button7Click(Sender: TObject);
begin
self.Close;
end;

procedure Tfrm_blsjtjfx.FormCreate(Sender: TObject);
begin
 self.windowstate := wsMaximized;
end;

procedure Tfrm_blsjtjfx.FormShow(Sender: TObject);
begin
 dtptjs.Date:=Now;
 dtptje.Date:=Now;
end;

procedure Tfrm_blsjtjfx.treeviewzpClick(Sender: TObject);
var
i:integer;
sjmc:string;
begin
cxGridDBTableView1.ClearItems;
cxGridDBTableView1.DataController.DataSource.DataSet.Close;
sjmc:='';
  i:= treeviewzp.Selected.SelectedIndex;
  if (i>1000) and (i<2000) then
  sjmc:='护理不良事件-'
  else if (i>2000) and (i<3000)  then
  sjmc:='压疮风险评估-'
  else if (i>3000) and (i<4000)  then
  sjmc:='院内压疮-'
  else if (i>4000) and (i<5000)  then
  sjmc:='院外压疮-';
  tabsheet3.Caption:=sjmc+trim(treeviewzp.selected.text);
  if i=1007 then
  begin
  combobox1.Visible:=true;
  combobox1.Top := 6;          // button 的出现的坐标
  combobox1.Width := 100;
  combobox1.left:= 390;
  button10.Left:=510;
  button13.Left:=620;
  end
  else
  combobox1.Visible:=false;
end;

procedure Tfrm_blsjtjfx.Add_xsz(bmc, cxz: string; Cbox: TComboBox);
var sj: string;
begin
  Qry_pub.close;
  Qry_pub.SQL.clear;
  if bmc='sys_ksdm' then
  Qry_pub.sql.add('select * from ' + bmc + ' where kssx=09 order by ' + cxz)
  else
  Qry_pub.sql.add('select * from ' + bmc + ' order by ' + cxz);
  Qry_pub.open;
  Cbox.items.clear;
  if (bmc = 'zysf_rybq') or (bmc = 'zysf_rytj') then
  begin
    while not Qry_pub.eof do
    begin
      Cbox.items.add(trim(Qry_pub.FieldByName('dm').asstring) + '-' + trim(Qry_pub.FieldByName('sm').asstring));
      Qry_pub.next;
    end;
  end
  else
  begin
    while not Qry_pub.eof do
    begin
      Cbox.items.add(trim(Qry_pub.FieldByName('dm').asstring) + '-' + trim(Qry_pub.FieldByName('mc').asstring));
      Qry_pub.next;
    end;
  end
end;
function Tfrm_blsjtjfx.get_xsz(bmc, cxz: string): string;
var sj: string;
begin
  Qry_pub.close;
  Qry_pub.SQL.clear;
  if bmc = 'icd10' then
    Qry_pub.sql.add('select * from ' + bmc + ' where jbbm=' + #39 + cxz + #39 + 'order by jbbm')
  else
    Qry_pub.sql.add('select * from ' + bmc + ' where dm=' + #39 + cxz + #39 + 'order by dm');
  Qry_pub.open;
  if Qry_pub.RecordCount = 1 then
  begin
    if bmc = 'icd10'
      then
      result := trim(Qry_pub.fieldbyname('jbmc').asstring)
    else
      result := trim(Qry_pub.fieldbyname('mc').asstring)
  end
  else
    result := '';
end;

procedure Tfrm_blsjtjfx.TabSheet1Exit(Sender: TObject);
begin
  cxGridDBTableView1.DataController.DataSet.Filtered:=false;
end;

procedure Tfrm_blsjtjfx.TabSheet1Show(Sender: TObject);
var
select_id:Integer;
begin
   series1.XLabelsSource:='';
   series1.YValues.ValueSource:='';
   try
   select_id:=treeviewzp.Selected.SelectedIndex;
   if select_id=1001 then
   begin
      series1.XLabelsSource:='';
      series1.YValues.ValueSource:='';
      series1.DataSource:=sp1;
      series1.XLabelsSource:='科室名称';
      series1.YValues.ValueSource:='合计';
      cxGridDBTableView1.DataController.DataSet.Filtered:=false;
      cxGridDBTableView1.DataController.DataSet.Filter:=' 科室名称<>'+#39+'合计'+#39;
      cxGridDBTableView1.DataController.DataSet.Filtered:=True;
      series1.DataSource:=cxGridDBTableView1.DataController.DataSet;
      series1.CheckDataSource;
      series1.Repaint;
      DBChart1.Title.Caption:=treeviewzp.Selected.Text;
      DBChart1.Refresh;
   end
   else if select_id=1002 then
   begin
      series1.XLabelsSource:='';
      series1.YValues.ValueSource:='';
      series1.DataSource:=sp1;
      series1.XLabelsSource:='时段名称';
      series1.YValues.ValueSource:='发生数量';
      series1.DataSource:=cxGridDBTableView1.DataController.DataSet;
      series1.CheckDataSource;
      series1.Repaint;
      DBChart1.Title.Caption:=treeviewzp.Selected.Text;
      DBChart1.Refresh;
   end
   else if select_id=1003 then
   begin
      series1.XLabelsSource:='';
      series1.YValues.ValueSource:='';
      series1.DataSource:=sp1;
      series1.XLabelsSource:='星期';
      series1.YValues.ValueSource:='发生数量';
      series1.DataSource:=cxGridDBTableView1.DataController.DataSet;
      series1.CheckDataSource;
      series1.Repaint;
      DBChart1.Title.Caption:=treeviewzp.Selected.Text ;
      DBChart1.Refresh;
   end
   else  if select_id=1007 then
   begin
      series1.XLabelsSource:='';
      series1.YValues.ValueSource:='';
      series1.DataSource:=sp1;
      series1.XLabelsSource:='指标名称';
      series1.YValues.ValueSource:='指标人次';
      series1.DataSource:=cxGridDBTableView1.DataController.DataSet;
      series1.CheckDataSource;
      series1.Repaint;
      DBChart1.Title.Caption:=treeviewzp.Selected.Text ;
      DBChart1.Refresh;
   end
   else  if select_id=1009 then
   begin
      series1.XLabelsSource:='';
      series1.YValues.ValueSource:='';
      series1.DataSource:=sp1;
      series1.XLabelsSource:='统计分数段';
      series1.YValues.ValueSource:='该分数段数量';
      series1.DataSource:=cxGridDBTableView1.DataController.DataSet;
      series1.CheckDataSource;
      series1.Repaint;
      DBChart1.Title.Caption:=treeviewzp.Selected.Text ;
      DBChart1.Refresh;
   end
   else  if select_id=1010 then
   begin
      series1.XLabelsSource:='';
      series1.YValues.ValueSource:='';
      series1.DataSource:=sp1;
      series1.XLabelsSource:='责任人年龄';
      series1.YValues.ValueSource:='该年龄责任人数';
      cxGridDBTableView1.DataController.DataSet.Filtered:=false;
      cxGridDBTableView1.DataController.DataSet.Filter:=' 责任人年龄<>'+#39+'平均年龄岁'+#39;
      cxGridDBTableView1.DataController.DataSet.Filtered:=True;
      series1.DataSource:=cxGridDBTableView1.DataController.DataSet;
      series1.CheckDataSource;
      series1.Repaint;
      DBChart1.Title.Caption:=treeviewzp.Selected.Text ;
      DBChart1.Refresh;
   end
   else  if select_id=1011 then
   begin
      series1.XLabelsSource:='';
      series1.YValues.ValueSource:='';
      series1.DataSource:=sp1;
      series1.XLabelsSource:='科室名称';
      series1.YValues.ValueSource:='事件总数量';
      cxGridDBTableView1.DataController.DataSet.Filtered:=false;
      cxGridDBTableView1.DataController.DataSet.Filter:=' 科室名称<>'+#39+'合计'+#39;
      cxGridDBTableView1.DataController.DataSet.Filtered:=True;
      series1.DataSource:=cxGridDBTableView1.DataController.DataSet;
      series1.CheckDataSource;
      series1.Repaint;
      DBChart1.Title.Caption:=treeviewzp.Selected.Text ;
      DBChart1.Refresh;
   end
   else  if select_id=1012 then
   begin
      series1.XLabelsSource:='';
      series1.YValues.ValueSource:='';
      series1.DataSource:=sp1;
      series1.XLabelsSource:='管道名称';
      series1.YValues.ValueSource:='发生次数';
      cxGridDBTableView1.DataController.DataSet.Filtered:=false;
      cxGridDBTableView1.DataController.DataSet.Filter:=' 管道名称<>'+#39+'合计'+#39;
      cxGridDBTableView1.DataController.DataSet.Filtered:=True;
      series1.DataSource:=cxGridDBTableView1.DataController.DataSet;
      series1.CheckDataSource;
      series1.Repaint;
      DBChart1.Title.Caption:=treeviewzp.Selected.Text ;
      DBChart1.Refresh;
   end
   else  if select_id=1013 then
   begin
      series1.XLabelsSource:='';
      series1.YValues.ValueSource:='';
      series1.DataSource:=sp1;
      series1.XLabelsSource:='管道名称';
      series1.YValues.ValueSource:='重置数量';
      cxGridDBTableView1.DataController.DataSet.Filtered:=false;
      cxGridDBTableView1.DataController.DataSet.Filter:=' 管道名称<>'+#39+'合计'+#39;
      cxGridDBTableView1.DataController.DataSet.Filtered:=True;
      series1.DataSource:=cxGridDBTableView1.DataController.DataSet;
      series1.CheckDataSource;
      series1.Repaint;
      DBChart1.Title.Caption:=treeviewzp.Selected.Text ;
      DBChart1.Refresh;
   end
   else  if select_id=1015 then
   begin
      series1.XLabelsSource:='';
      series1.YValues.ValueSource:='';
      series1.DataSource:=sp1;
      series1.XLabelsSource:='岗级名称';
      series1.YValues.ValueSource:='发生数量';
      cxGridDBTableView1.DataController.DataSet.Filtered:=false;
      cxGridDBTableView1.DataController.DataSet.Filter:=' 岗级名称<>'+#39+'合计'+#39;
      cxGridDBTableView1.DataController.DataSet.Filtered:=True;
      series1.DataSource:=cxGridDBTableView1.DataController.DataSet;
      series1.CheckDataSource;
      series1.Repaint;
      DBChart1.Title.Caption:=treeviewzp.Selected.Text ;
      DBChart1.Refresh;
   end
   else if select_id=2001 then
   begin
      series1.XLabelsSource:='';
      series1.YValues.ValueSource:='';
      series1.DataSource:=sp1;
      series1.XLabelsSource:='科室名称';
      series1.YValues.ValueSource:='呈报数量';
      cxGridDBTableView1.DataController.DataSet.Filtered:=false;
      cxGridDBTableView1.DataController.DataSet.Filter:=' 科室名称<>'+#39+'合计'+#39;
      cxGridDBTableView1.DataController.DataSet.Filtered:=True;
      series1.DataSource:=cxGridDBTableView1.DataController.DataSet;
      series1.CheckDataSource;
      series1.Repaint;
      DBChart1.Title.Caption:=treeviewzp.Selected.Text ;
      DBChart1.Refresh;
   end
   else if select_id=2002 then
   begin
      series1.XLabelsSource:='';
      series1.YValues.ValueSource:='';
      series1.DataSource:=sp1;
      series1.XLabelsSource:='统计分数段';
      series1.YValues.ValueSource:='该分数段数量';
      series1.DataSource:=cxGridDBTableView1.DataController.DataSet;
      series1.CheckDataSource;
      series1.Repaint;
      DBChart1.Title.Caption:=treeviewzp.Selected.Text ;
      DBChart1.Refresh;
   end
   else if select_id=2004 then
   begin
      series1.XLabelsSource:='';
      series1.YValues.ValueSource:='';
      series1.DataSource:=sp1;
      series1.XLabelsSource:='科室名称';
      series1.YValues.ValueSource:='分数段总人数';
      series1.DataSource:=cxGridDBTableView1.DataController.DataSet;
      series1.CheckDataSource;
      series1.Repaint;
      DBChart1.Title.Caption:=treeviewzp.Selected.Text ;
      DBChart1.Refresh;
   end
   else if select_id=3001 then
   begin
      series1.XLabelsSource:='';
      series1.YValues.ValueSource:='';
      series1.DataSource:=sp1;
      series1.XLabelsSource:='科室名称';
      series1.YValues.ValueSource:='合计';
      cxGridDBTableView1.DataController.DataSet.Filtered:=false;
      cxGridDBTableView1.DataController.DataSet.Filter:=' 科室名称<>'+#39+'合计'+#39;
      cxGridDBTableView1.DataController.DataSet.Filtered:=True;
      series1.DataSource:=cxGridDBTableView1.DataController.DataSet;
      series1.CheckDataSource;
      series1.Repaint;
      DBChart1.Title.Caption:=treeviewzp.Selected.Text ;
      DBChart1.Refresh;
   end
   else if select_id=3002 then
   begin
      series1.XLabelsSource:='';
      series1.YValues.ValueSource:='';
      series1.DataSource:=sp1;
      series1.XLabelsSource:='科室名称';
      series1.YValues.ValueSource:='合计';
      cxGridDBTableView1.DataController.DataSet.Filtered:=false;
      cxGridDBTableView1.DataController.DataSet.Filter:=' 科室名称<>'+#39+'合计'+#39;
      cxGridDBTableView1.DataController.DataSet.Filtered:=True;
      series1.DataSource:=cxGridDBTableView1.DataController.DataSet;
      series1.CheckDataSource;
      series1.Repaint;
      DBChart1.Title.Caption:=treeviewzp.Selected.Text ;
      DBChart1.Refresh;
   end
   else if select_id=3003 then
   begin
      series1.XLabelsSource:='';
      series1.YValues.ValueSource:='';
      series1.DataSource:=sp1;
      series1.XLabelsSource:='发生部位';
      series1.YValues.ValueSource:='发生数量';
      cxGridDBTableView1.DataController.DataSet.Filtered:=false;
      cxGridDBTableView1.DataController.DataSet.Filter:=' 发生部位<>'+#39+'院内压疮发生率(占难免压疮人数)'+#39
      +'  and 发生部位<>'+#39+'院内压疮发生率(占总入院人数)'+#39;
      cxGridDBTableView1.DataController.DataSet.Filtered:=True;
      series1.DataSource:=cxGridDBTableView1.DataController.DataSet;
      series1.CheckDataSource;
      series1.Repaint;
      DBChart1.Title.Caption:=treeviewzp.Selected.Text ;
      DBChart1.Refresh;
   end
   else if select_id=3005 then
   begin
      series1.XLabelsSource:='';
      series1.YValues.ValueSource:='';
      series1.DataSource:=sp1;
      series1.XLabelsSource:='转归情况';
      series1.YValues.ValueSource:='发生数量';
      cxGridDBTableView1.DataController.DataSet.Filtered:=false;
      cxGridDBTableView1.DataController.DataSet.Filter:=' 转归情况<>'+#39+'合计'+#39;
      cxGridDBTableView1.DataController.DataSet.Filtered:=True;
      series1.DataSource:=cxGridDBTableView1.DataController.DataSet;
      series1.CheckDataSource;
      series1.Repaint;
      DBChart1.Title.Caption:=treeviewzp.Selected.Text ;
      DBChart1.Refresh;
   end
   else if select_id=4001 then
   begin
      series1.XLabelsSource:='';
      series1.YValues.ValueSource:='';
      series1.DataSource:=sp1;
      series1.XLabelsSource:='科室名称';
      series1.YValues.ValueSource:='合计';
      cxGridDBTableView1.DataController.DataSet.Filtered:=false;
      cxGridDBTableView1.DataController.DataSet.Filter:=' 科室名称<>'+#39+'合计'+#39;
      cxGridDBTableView1.DataController.DataSet.Filtered:=True;
      series1.DataSource:=cxGridDBTableView1.DataController.DataSet;
      series1.CheckDataSource;
      series1.Repaint;
      DBChart1.Title.Caption:=treeviewzp.Selected.Text ;
      DBChart1.Refresh;
   end
   else if select_id=4002 then
   begin
      series1.XLabelsSource:='';
      series1.YValues.ValueSource:='';
      series1.DataSource:=sp1;
      series1.XLabelsSource:='科室名称';
      series1.YValues.ValueSource:='合计';
      cxGridDBTableView1.DataController.DataSet.Filtered:=false;
      cxGridDBTableView1.DataController.DataSet.Filter:=' 科室名称<>'+#39+'合计'+#39;
      cxGridDBTableView1.DataController.DataSet.Filtered:=True;
      series1.DataSource:=cxGridDBTableView1.DataController.DataSet;
      series1.CheckDataSource;
      series1.Repaint;
      DBChart1.Title.Caption:=treeviewzp.Selected.Text ;
      DBChart1.Refresh;
   end
   else if select_id=4003 then
   begin
      series1.XLabelsSource:='';
      series1.YValues.ValueSource:='';
      series1.DataSource:=sp1;
      series1.XLabelsSource:='科室名称';
      series1.YValues.ValueSource:='合计';
      cxGridDBTableView1.DataController.DataSet.Filtered:=false;
      cxGridDBTableView1.DataController.DataSet.Filter:=' 科室名称<>'+#39+'合计'+#39;
      cxGridDBTableView1.DataController.DataSet.Filtered:=True;
      series1.DataSource:=cxGridDBTableView1.DataController.DataSet;
      series1.CheckDataSource;
      series1.Repaint;
      DBChart1.Title.Caption:=treeviewzp.Selected.Text ;
      DBChart1.Refresh;
   end
   else if select_id=4004 then
   begin
      series1.XLabelsSource:='';
      series1.YValues.ValueSource:='';
      series1.DataSource:=sp1;
      series1.XLabelsSource:='发生部位';
      series1.YValues.ValueSource:='发生数量';
      cxGridDBTableView1.DataController.DataSet.Filtered:=false;
      cxGridDBTableView1.DataController.DataSet.Filter:=' 发生部位<>'+#39+'院外压疮发生率(占总入院人数)'+#39;
      cxGridDBTableView1.DataController.DataSet.Filtered:=True;
      series1.DataSource:=cxGridDBTableView1.DataController.DataSet;
      series1.CheckDataSource;
      series1.Repaint;
      DBChart1.Title.Caption:=treeviewzp.Selected.Text ;
      DBChart1.Refresh;
   end
   else if select_id=3006 then
   begin
      series1.XLabelsSource:='';
      series1.YValues.ValueSource:='';
      series1.DataSource:=sp1;
      series1.XLabelsSource:='转归情况';
      series1.YValues.ValueSource:='发生数量';
      cxGridDBTableView1.DataController.DataSet.Filtered:=false;
      cxGridDBTableView1.DataController.DataSet.Filter:='转归情况<>'+#39+'合计'+#39;
      cxGridDBTableView1.DataController.DataSet.Filtered:=True;
      series1.DataSource:=cxGridDBTableView1.DataController.DataSet;
      series1.CheckDataSource;
      series1.Repaint;
      DBChart1.Title.Caption:=treeviewzp.Selected.Text ;
      DBChart1.Refresh;
   end
   else if select_id=5001 then
   begin
      series1.XLabelsSource:='';
      series1.YValues.ValueSource:='';
      series1.DataSource:=sp1;
      series1.XLabelsSource:='科室名称';
      series1.YValues.ValueSource:='评估百分率_8小时内';
      cxGridDBTableView1.DataController.DataSet.Filtered:=false;
      cxGridDBTableView1.DataController.DataSet.Filter:='科室名称<>'+#39+'合计'+#39;
      cxGridDBTableView1.DataController.DataSet.Filtered:=True;
      series1.DataSource:=cxGridDBTableView1.DataController.DataSet;
      series1.CheckDataSource;
      series1.Repaint;
      DBChart1.Title.Caption:=treeviewzp.Selected.Text ;
      DBChart1.Refresh;
   end
   else if select_id=5002 then
   begin
      series1.XLabelsSource:='';
      series1.YValues.ValueSource:='';
      series1.DataSource:=sp1;
      series1.XLabelsSource:='科室名称';
      series1.YValues.ValueSource:='住院患者跌倒或跌倒千分比';
      cxGridDBTableView1.DataController.DataSet.Filtered:=false;
      cxGridDBTableView1.DataController.DataSet.Filter:='科室名称<>'+#39+'合计'+#39;
      cxGridDBTableView1.DataController.DataSet.Filtered:=True;
      series1.DataSource:=cxGridDBTableView1.DataController.DataSet;
      series1.CheckDataSource;
      series1.Repaint;
      DBChart1.Title.Caption:=treeviewzp.Selected.Text ;
      DBChart1.Refresh;
   end
   else if select_id=5003 then
   begin
      series1.XLabelsSource:='';
      series1.YValues.ValueSource:='';
      series1.DataSource:=sp1;
      series1.XLabelsSource:='科室名称';
      series1.YValues.ValueSource:='高危患者发生率百分比';
      cxGridDBTableView1.DataController.DataSet.Filtered:=false;
      cxGridDBTableView1.DataController.DataSet.Filter:='科室名称<>'+#39+'合计'+#39;
      cxGridDBTableView1.DataController.DataSet.Filtered:=True;
      series1.DataSource:=cxGridDBTableView1.DataController.DataSet;
      series1.CheckDataSource;
      series1.Repaint;
      DBChart1.Title.Caption:=treeviewzp.Selected.Text ;
      DBChart1.Refresh;
   end
   else if select_id=5004 then
   begin
      series1.XLabelsSource:='';
      series1.YValues.ValueSource:='';
      series1.DataSource:=sp1;
      series1.XLabelsSource:='科室名称';
      series1.YValues.ValueSource:='事件总数量';
      cxGridDBTableView1.DataController.DataSet.Filtered:=false;
      cxGridDBTableView1.DataController.DataSet.Filter:='科室名称<>'+#39+'合计'+#39;
      cxGridDBTableView1.DataController.DataSet.Filtered:=True;
      series1.DataSource:=cxGridDBTableView1.DataController.DataSet;
      series1.CheckDataSource;
      series1.Repaint;
      DBChart1.Title.Caption:=treeviewzp.Selected.Text ;
      DBChart1.Refresh;
   end
   else if select_id=5005 then
   begin
      series1.XLabelsSource:='';
      series1.YValues.ValueSource:='';
      series1.DataSource:=sp1;
      series1.XLabelsSource:='科室名称';
      series1.YValues.ValueSource:='评估百分率_8小时内';
      cxGridDBTableView1.DataController.DataSet.Filtered:=false;
      cxGridDBTableView1.DataController.DataSet.Filter:='科室名称<>'+#39+'合计'+#39;
      cxGridDBTableView1.DataController.DataSet.Filtered:=True;
      series1.DataSource:=cxGridDBTableView1.DataController.DataSet;
      series1.CheckDataSource;
      series1.Repaint;
      DBChart1.Title.Caption:=treeviewzp.Selected.Text ;
      DBChart1.Refresh;
   end
   else if select_id=5006 then
   begin
      series1.XLabelsSource:='';
      series1.YValues.ValueSource:='';
      series1.DataSource:=sp1;
      series1.XLabelsSource:='科室名称';
      series1.YValues.ValueSource:='院内压疮发生率千分比';
      cxGridDBTableView1.DataController.DataSet.Filtered:=false;
      cxGridDBTableView1.DataController.DataSet.Filter:='科室名称<>'+#39+'合计'+#39;
      cxGridDBTableView1.DataController.DataSet.Filtered:=True;
      series1.DataSource:=cxGridDBTableView1.DataController.DataSet;
      series1.CheckDataSource;
      series1.Repaint;
      DBChart1.Title.Caption:=treeviewzp.Selected.Text ;
      DBChart1.Refresh;
   end
   else if select_id=5007 then
   begin
      series1.XLabelsSource:='';
      series1.YValues.ValueSource:='';
      series1.DataSource:=sp1;
      series1.XLabelsSource:='科室名称';
      series1.YValues.ValueSource:='高危患者压疮发生率';
      cxGridDBTableView1.DataController.DataSet.Filtered:=false;
      cxGridDBTableView1.DataController.DataSet.Filter:='科室名称<>'+#39+'合计'+#39;
      cxGridDBTableView1.DataController.DataSet.Filtered:=True;
      series1.DataSource:=cxGridDBTableView1.DataController.DataSet;
      series1.CheckDataSource;
      series1.Repaint;
      DBChart1.Title.Caption:=treeviewzp.Selected.Text ;
      DBChart1.Refresh;
   end
   else if select_id=5010 then
   begin
      series1.XLabelsSource:='';
      series1.YValues.ValueSource:='';
      series1.DataSource:=sp1;
      series1.XLabelsSource:='科室名称';
      series1.YValues.ValueSource:='发生数量';
      cxGridDBTableView1.DataController.DataSet.Filtered:=false;
      cxGridDBTableView1.DataController.DataSet.Filter:='科室名称<>'+#39+'合计'+#39;
      cxGridDBTableView1.DataController.DataSet.Filtered:=True;
      series1.DataSource:=cxGridDBTableView1.DataController.DataSet;
      series1.CheckDataSource;
      series1.Repaint;
      DBChart1.Title.Caption:=treeviewzp.Selected.Text ;
      DBChart1.Refresh;
   end
   else if select_id=5011 then
   begin
      series1.XLabelsSource:='';
      series1.YValues.ValueSource:='';
      series1.DataSource:=sp1;
      series1.XLabelsSource:='科室名称';
      series1.YValues.ValueSource:='评估百分率_2小时内';
      cxGridDBTableView1.DataController.DataSet.Filtered:=false;
      cxGridDBTableView1.DataController.DataSet.Filter:='科室名称<>'+#39+'合计'+#39;
      cxGridDBTableView1.DataController.DataSet.Filtered:=True;
      series1.DataSource:=cxGridDBTableView1.DataController.DataSet;
      series1.CheckDataSource;
      series1.Repaint;
      DBChart1.Title.Caption:=treeviewzp.Selected.Text ;
      DBChart1.Refresh;
   end
   else if select_id=6001 then
   begin
      series1.XLabelsSource:='';
      series1.YValues.ValueSource:='';
      series1.DataSource:=sp1;
      series1.XLabelsSource:='科室名称';
      series1.YValues.ValueSource:='住院人数';
      cxGridDBTableView1.DataController.DataSet.Filtered:=false;
      cxGridDBTableView1.DataController.DataSet.Filter:='科室名称<>'+#39+'合计'+#39;
      cxGridDBTableView1.DataController.DataSet.Filtered:=True;
      series1.DataSource:=cxGridDBTableView1.DataController.DataSet;
      series1.CheckDataSource;
      series1.Repaint;
      DBChart1.Title.Caption:=treeviewzp.Selected.Text ;
      DBChart1.Refresh;
   end
   else if select_id=80 then
   begin
      series1.XLabelsSource:='';
      series1.YValues.ValueSource:='';
      series1.DataSource:=sp1;
      series1.XLabelsSource:='科室名称';
      series1.YValues.ValueSource:='回访人数';
      cxGridDBTableView1.DataController.DataSet.Filtered:=false;
      cxGridDBTableView1.DataController.DataSet.Filter:='科室名称<>'+#39+'合计'+#39;
      cxGridDBTableView1.DataController.DataSet.Filtered:=True;
      series1.DataSource:=cxGridDBTableView1.DataController.DataSet;
      series1.CheckDataSource;
      series1.Repaint;
      DBChart1.Title.Caption:=treeviewzp.Selected.Text+'(回访人数)' ;
      DBChart1.Refresh;
   end;


   except

   end;

end;

end.

