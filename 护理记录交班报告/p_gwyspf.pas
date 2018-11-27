unit p_gwyspf;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles,  cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, StdCtrls, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, ADODB, cxDropDownEdit, cxEditRepositoryItems, cxGridBandedTableView,
  cxGridDBBandedTableView, cxDBEditRepository,  cxContainer,
  cxTextEdit, cxMaskEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  GridsEh, DBGridEh, ExtCtrls, DBGridEhGrouping;

type
  Tfrm_gwyspf = class(TForm)
    ADOQuery1: TADOQuery;
    DBGridEh1: TDBGridEh;
    DataSource1: TDataSource;
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    Panel3: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Button1: TButton;
    qry_bc: TADOQuery;
    ADOQuery2: TADOQuery;
    ADODataSet1: TADODataSet;
    ADOQuery3: TADOQuery;
    procedure FormShow(Sender: TObject);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
    procedure DBGridEh1CellClick(Column: TColumnEh);
    procedure Button1Click(Sender: TObject);
    procedure jsfs;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    a,zy_zyh:string;

  end;


var
  frm_gwyspf: Tfrm_gwyspf;

implementation
uses
p_dm,p_func,p_twb2;

{$R *.dfm}
procedure Tfrm_gwyspf.jsfs;
begin
if (a='zilinengli') or (a='yachuang') then
begin
qry_bc.Close;
qry_bc.SQL.clear;
qry_bc.SQL.Add('select SUM(b.fz) zf from zybl_hljld_pf a,zybl_hljld_pfdz b where a.pfxx=b.pfxx and a.jg=b.jg and a.pfdx=:pfdx and zyh=:zyh and a.jlrq=:jlrq');
qry_bc.Parameters.ParamByName('pfdx').Value:=ADOQuery1.FieldByName('pfdx').AsString;
qry_bc.Parameters.ParamByName('zyh').Value:=zy_zyh;
qry_bc.Parameters.ParamByName('jlrq').value:=strtodatetime(formatdatetime('yyyy-mm-dd ', da1) + formatdatetime('hh:mm',frm_twb2.sd.time) + ':00');;
Frm_func.open_dataset(qry_bc);
label3.Caption:=IntToStr(qry_bc.FieldByName('zf').asinteger);
frm_twb2.yczf:=qry_bc.FieldByName('zf').asinteger;
if a='zilinengli' then
  begin
  if qry_bc.FieldByName('zf').asinteger=100 then
  begin
  label5.Caption:='无需依赖';
  end
  else
  if (qry_bc.FieldByName('zf').asinteger<100) and (qry_bc.FieldByName('zf').asinteger>60) then
  begin
   label5.Caption:='轻度依赖';
  end
  else
    if (qry_bc.FieldByName('zf').asinteger<=60) and (qry_bc.FieldByName('zf').asinteger>40) then
  begin
   label5.Caption:='中度依赖';
  end
  else
    if (qry_bc.FieldByName('zf').asinteger<=40) then
  begin
   label5.Caption:='重度依赖';
  end;
  end
  else
  if a='yachuang' then
  begin
      if qry_bc.FieldByName('zf').asinteger>=15 then
  begin
  label5.Caption:='轻度危险';
  end
  else
  if (qry_bc.FieldByName('zf').asinteger<=14) and (qry_bc.FieldByName('zf').asinteger>=13) then
  begin
   label5.Caption:='中度危险';
  end
  else
    if (qry_bc.FieldByName('zf').asinteger<=12) and (qry_bc.FieldByName('zf').asinteger>=10) then
  begin
   label5.Caption:='重度危险';
  end
  else
    if (qry_bc.FieldByName('zf').asinteger<=9) then
  begin
   label5.Caption:='极度危险';
  end;
  end;
  end
  else
  if a='diedao' then
  begin
qry_bc.Close;
qry_bc.SQL.clear;
qry_bc.SQL.Add('select SUM(fz) zf from zybl_hljld_pf  where  pfdx=:pfdx and zyh=:zyh and jlrq=:jlrq');
qry_bc.Parameters.ParamByName('pfdx').Value:=ADOQuery1.FieldByName('pfdx').AsString;
qry_bc.Parameters.ParamByName('zyh').Value:=zy_zyh;
qry_bc.Parameters.ParamByName('jlrq').value:=strtodatetime(formatdatetime('yyyy-mm-dd ', da1) + formatdatetime('hh:mm',frm_twb2.sd.time) + ':00');;
Frm_func.open_dataset(qry_bc);
label4.Caption:=IntToStr(qry_bc.FieldByName('zf').asinteger);
frm_twb2.ywsjzf:=qry_bc.FieldByName('zf').asinteger;
  end;

end;


procedure Tfrm_gwyspf.Button1Click(Sender: TObject);
var
i:integer;
begin
if a='zilinengli' then
 begin
  ADOQuery2.close;
  ADOQuery2.sql.clear;
  ADOQuery2.sql.Add('select * from zybl_hljld_pf where  pfdx=:pfdx and zyh=:zyh and jlrq=:jlrq');
  ADOQuery2.Parameters.ParamByName('pfdx').value:='Barthel指数';
  ADOQuery2.Parameters.ParamByName('zyh').value:=zy_zyh;
  ADOQuery2.Parameters.ParamByName('jlrq').value:=strtodatetime(formatdatetime('yyyy-mm-dd ', da1) + formatdatetime('hh:mm',frm_twb2.sd.time) + ':00');;
  Frm_func.open_dataset(adoquery2);
       if adoquery2.RecordCount>0 then
        begin
          adoquery3.Close;
          adoquery3.SQL.Clear;
          adoquery3.SQL.Add('delete from zybl_hljld_pf where zyh=:zyh and jlrq=:jlrq and pfdx=:pfdx');
          adoquery3.Parameters.ParamByName('zyh').Value:=zy_zyh;
          ADOQuery3.Parameters.ParamByName('jlrq').value:=strtodatetime(formatdatetime('yyyy-mm-dd ', da1) + formatdatetime('hh:mm',frm_twb2.sd.time) + ':00');;
          adoquery3.Parameters.ParamByName('pfdx').Value:='Barthel指数';
          Frm_func.exec_dataset_qry(adoquery3);
        end;
     ADOQuery1.First;
  for i := 0 to ADOQuery1.RecordCount-1 do
           begin
      ADODataSet1.Close;
      Frm_func.open_dataset(ADODataSet1);
      ADODataSet1.insert;
      ADODataSet1['id']:=ADOQuery1.FieldByName('id').AsString;
      ADODataSet1['zyh']:=zy_zyh;
      ADODataSet1['jlrq']:=strtodatetime(formatdatetime('yyyy-mm-dd ', da1) + formatdatetime('hh:mm',frm_twb2.sd.time) + ':00');;
      ADODataSet1['sjlb']:='';
      ADODataSet1['pfdx']:=ADOQuery1.FieldByName('pfdx').AsString;
      ADODataSet1['pfxx']:=ADOQuery1.FieldByName('pfxx').AsString;
      ADODataSet1['ms']:=ADOQuery1.FieldByName('ms').AsString;
      ADODataSet1['jg']:=dbgrideh1.Fields[2].Text ;
   //   ADODataSet1['fz']:='';
      ADODataSet1['lrrq']:=frm_func.curr_date;
      ADODataSet1['czy']:=pub_czydm;
      Frm_func.post_dataset(ADODataSet1);
       ADOQuery1.Next;

           end;
 end;
 if a='yachuang' then
 begin
  ADOQuery2.close;
  ADOQuery2.sql.clear;
  ADOQuery2.sql.Add('select * from zybl_hljld_pf where  pfdx=:pfdx and jlrq=:jlrq and zyh=:zyh');
  ADOQuery2.Parameters.ParamByName('pfdx').value:='压疮风险';
  ADOQuery2.Parameters.ParamByName('jlrq').value:=strtodatetime(formatdatetime('yyyy-mm-dd ', da1) + formatdatetime('hh:mm',frm_twb2.sd.time) + ':00');;
  ADOQuery2.Parameters.ParamByName('zyh').value:=zy_zyh;
  Frm_func.open_dataset(ADOQuery2);
       if adoquery2.RecordCount>0 then
        begin
          adoquery3.Close;
          adoquery3.SQL.Clear;
          adoquery3.SQL.Add('delete from zybl_hljld_pf where zyh=:zyh and jlrq=:jlrq and pfdx=:pfdx');
          adoquery3.Parameters.ParamByName('zyh').Value:=zy_zyh;
          ADOQuery3.Parameters.ParamByName('jlrq').value:=strtodatetime(formatdatetime('yyyy-mm-dd ', da1) + formatdatetime('hh:mm',frm_twb2.sd.time) + ':00');;
          adoquery3.Parameters.ParamByName('pfdx').Value:='压疮风险';
          Frm_func.exec_dataset_qry(adoquery3);
        end;
     ADOQuery1.First;
  for i := 0 to ADOQuery1.RecordCount-1 do
           begin
      ADODataSet1.Close;     
      Frm_func.open_dataset(ADODataSet1);
      ADODataSet1.insert;
      ADODataSet1['id']:=ADOQuery1.FieldByName('id').AsString;
      ADODataSet1['zyh']:=zy_zyh;
      ADODataSet1['jlrq']:=strtodatetime(formatdatetime('yyyy-mm-dd ', da1) + formatdatetime('hh:mm',frm_twb2.sd.time) + ':00');;
      ADODataSet1['sjlb']:='';
      ADODataSet1['pfdx']:=ADOQuery1.FieldByName('pfdx').AsString;
      ADODataSet1['pfxx']:=ADOQuery1.FieldByName('pfxx').AsString;
      ADODataSet1['ms']:=ADOQuery1.FieldByName('ms').AsString;
      ADODataSet1['jg']:=dbgrideh1.Fields[2].Text ;
    //  ADODataSet1['fz']:='';
      ADODataSet1['lrrq']:=frm_func.curr_date;
      ADODataSet1['czy']:=pub_czydm;
      Frm_func.post_dataset(ADODataSet1);
       ADOQuery1.Next;

           end;

     jsfs;


 end;
  if a='diedao' then
 begin
  ADOQuery2.close;
  ADOQuery2.sql.clear;
  ADOQuery2.sql.Add('select * from zybl_hljld_pf where  pfdx=:pfdx and jlrq=:jlrq and zyh=:zyh');
  ADOQuery2.Parameters.ParamByName('zyh').value:=zy_zyh;
  ADOQuery2.Parameters.ParamByName('jlrq').value:=strtodatetime(formatdatetime('yyyy-mm-dd ', da1) + formatdatetime('hh:mm',frm_twb2.sd.time) + ':00');;
  ADOQuery2.Parameters.ParamByName('pfdx').value:='意外事件危险因素';
  Frm_func.open_dataset(ADOQuery2);
       if adoquery2.RecordCount>0 then
        begin
          adoquery3.Close;
          adoquery3.SQL.Clear;
          adoquery3.SQL.Add('delete from zybl_hljld_pf where zyh=:zyh and jlrq=:jlrq and pfdx=:pfdx');
          adoquery3.Parameters.ParamByName('zyh').Value:=zy_zyh;
          ADOQuery3.Parameters.ParamByName('jlrq').value:=strtodatetime(formatdatetime('yyyy-mm-dd ', da1) + formatdatetime('hh:mm',frm_twb2.sd.time) + ':00');;
          adoquery3.Parameters.ParamByName('pfdx').Value:='意外事件危险因素';
          Frm_func.exec_dataset_qry(adoquery3);
        end;
     ADOQuery1.First;
  for i := 0 to ADOQuery1.RecordCount-1 do
      if dbgrideh1.Fields[3].Text<>'' then
          begin
           begin
      ADODataSet1.close;
      Frm_func.open_dataset(ADODataSet1);
      ADODataSet1.insert;
      ADODataSet1['id']:=ADOQuery1.FieldByName('id').AsString;
      ADODataSet1['zyh']:=zy_zyh;
      ADODataSet1['jlrq']:=strtodatetime(formatdatetime('yyyy-mm-dd ', da1) + formatdatetime('hh:mm',frm_twb2.sd.time) + ':00');;
      ADODataSet1['sjlb']:='';
      ADODataSet1['pfdx']:=ADOQuery1.FieldByName('pfdx').AsString;
      ADODataSet1['pfxx']:=ADOQuery1.FieldByName('pfxx').AsString;
      ADODataSet1['ms']:=ADOQuery1.FieldByName('ms').AsString;
      ADODataSet1['jg']:='' ;
      ADODataSet1['fz']:=dbgrideh1.Fields[3].Text;
      ADODataSet1['lrrq']:=frm_func.curr_date;
      ADODataSet1['czy']:=pub_czydm;
      Frm_func.post_dataset(ADODataSet1);
       ADOQuery1.Next;

           end;
          end;



 end;
 jsfs;
end;

procedure Tfrm_gwyspf.DataSource1DataChange(Sender: TObject; Field: TField);
begin
if ADOQuery1.FieldByName('pfdx').AsString='Barthel指数' then
begin
DBGridEh1.Columns[2].PickList.Clear;
DBGridEh1.Columns[2].PickList.Add('完全独立');
DBGridEh1.Columns[2].PickList.Add('部分帮助');
DBGridEh1.Columns[2].PickList.Add('极大帮助');
DBGridEh1.Columns[2].PickList.Add('完全依赖');
end
else
if ADOQuery1.FieldByName('pfxx').AsString='感觉：机体对压力所引起的不适感的反应能力'  then
begin
DBGridEh1.Columns[2].PickList.Clear;
DBGridEh1.Columns[2].PickList.Add('完全丧失');
DBGridEh1.Columns[2].PickList.Add('严重丧失');
DBGridEh1.Columns[2].PickList.Add('轻度丧失');
DBGridEh1.Columns[2].PickList.Add('不受损失');
end
else
if ADOQuery1.FieldByName('pfxx').AsString='潮湿：皮肤处于潮湿状态的程度'  then
begin
DBGridEh1.Columns[2].PickList.Clear;
DBGridEh1.Columns[2].PickList.Add('持久潮湿');
DBGridEh1.Columns[2].PickList.Add('十分潮湿');
DBGridEh1.Columns[2].PickList.Add('偶然潮湿');
DBGridEh1.Columns[2].PickList.Add('很少发生潮湿');
end
else
if ADOQuery1.FieldByName('pfxx').AsString='活动度：躯体活动能力'  then
begin
DBGridEh1.Columns[2].PickList.Clear;
DBGridEh1.Columns[2].PickList.Add('卧床不起');
DBGridEh1.Columns[2].PickList.Add('局限于椅上');
DBGridEh1.Columns[2].PickList.Add('偶然步行');
DBGridEh1.Columns[2].PickList.Add('经常步行');
end
else
if ADOQuery1.FieldByName('pfxx').AsString='可动性：改变和控制体位能力'  then
begin
DBGridEh1.Columns[2].PickList.Clear;
DBGridEh1.Columns[2].PickList.Add('完全不能');
DBGridEh1.Columns[2].PickList.Add('严重限制');
DBGridEh1.Columns[2].PickList.Add('轻度限制');
DBGridEh1.Columns[2].PickList.Add('不限制');
end
else
if ADOQuery1.FieldByName('pfxx').AsString='营养：通常的摄食情况'  then
begin
DBGridEh1.Columns[2].PickList.Clear;
DBGridEh1.Columns[2].PickList.Add('非常差');
DBGridEh1.Columns[2].PickList.Add('不足');
DBGridEh1.Columns[2].PickList.Add('适当');
DBGridEh1.Columns[2].PickList.Add('良好');
end
else
if ADOQuery1.FieldByName('pfxx').AsString='摩擦力和剪切力'  then
begin
DBGridEh1.Columns[2].PickList.Clear;
DBGridEh1.Columns[2].PickList.Add('有明显问题');
DBGridEh1.Columns[2].PickList.Add('有潜在问题');
DBGridEh1.Columns[2].PickList.Add('无');
end
else
if  ADOQuery1.FieldByName('pfxx').AsString='年龄'  then
begin
DBGridEh1.Columns[3].PickList.Clear;
DBGridEh1.Columns[3].PickList.Add('0');
DBGridEh1.Columns[3].PickList.Add('1');
end
else
if  ADOQuery1.FieldByName('pfxx').AsString='意识'  then
begin
DBGridEh1.Columns[3].PickList.Clear;
DBGridEh1.Columns[3].PickList.Add('0');
DBGridEh1.Columns[3].PickList.Add('1');
end
else
if  ADOQuery1.FieldByName('pfxx').AsString='感觉'  then
begin
DBGridEh1.Columns[3].PickList.Clear;
DBGridEh1.Columns[3].PickList.Add('0');
DBGridEh1.Columns[3].PickList.Add('1');
end
else
if  ADOQuery1.FieldByName('pfxx').AsString='精神'  then
begin
DBGridEh1.Columns[3].PickList.Clear;
DBGridEh1.Columns[3].PickList.Add('0');
DBGridEh1.Columns[3].PickList.Add('1');
DBGridEh1.Columns[3].PickList.Add('2');
DBGridEh1.Columns[3].PickList.Add('3');
DBGridEh1.Columns[3].PickList.Add('4');
end
else
if  ADOQuery1.FieldByName('pfxx').AsString='行动'  then
begin
DBGridEh1.Columns[3].PickList.Clear;
DBGridEh1.Columns[3].PickList.Add('0');
DBGridEh1.Columns[3].PickList.Add('1');
end
else
if  (ADOQuery1.FieldByName('pfxx').AsString='药物') or  (ADOQuery1.FieldByName('pfxx').AsString='既往史') or  (ADOQuery1.FieldByName('pfxx').AsString='其它') then
begin
DBGridEh1.Columns[3].PickList.Clear;
DBGridEh1.Columns[3].PickList.Add('0');
DBGridEh1.Columns[3].PickList.Add('1');
DBGridEh1.Columns[3].PickList.Add('2');
DBGridEh1.Columns[3].PickList.Add('3');
end;






end;

procedure Tfrm_gwyspf.DBGridEh1CellClick(Column: TColumnEh);
begin
if ADOQuery1.FieldByName('pfdx').AsString='Barthel指数' then
begin
DBGridEh1.Columns[2].PickList.Clear;
DBGridEh1.Columns[2].PickList.Add('完全独立');
DBGridEh1.Columns[2].PickList.Add('部分帮助');
DBGridEh1.Columns[2].PickList.Add('极大帮助');
DBGridEh1.Columns[2].PickList.Add('完全依赖');
end
else
if ADOQuery1.FieldByName('pfxx').AsString='感觉：机体对压力所引起的不适感的反应能力'  then
begin
DBGridEh1.Columns[2].PickList.Clear;
DBGridEh1.Columns[2].PickList.Add('完全丧失');
DBGridEh1.Columns[2].PickList.Add('严重丧失');
DBGridEh1.Columns[2].PickList.Add('轻度丧失');
DBGridEh1.Columns[2].PickList.Add('不受损失');
end
else
if ADOQuery1.FieldByName('pfxx').AsString='潮湿：皮肤处于潮湿状态的程度'  then
begin
DBGridEh1.Columns[2].PickList.Clear;
DBGridEh1.Columns[2].PickList.Add('持久潮湿');
DBGridEh1.Columns[2].PickList.Add('十分潮湿');
DBGridEh1.Columns[2].PickList.Add('偶然潮湿');
DBGridEh1.Columns[2].PickList.Add('很少发生潮湿');
end
else
if ADOQuery1.FieldByName('pfxx').AsString='活动度：躯体活动能力'  then
begin
DBGridEh1.Columns[2].PickList.Clear;
DBGridEh1.Columns[2].PickList.Add('卧床不起');
DBGridEh1.Columns[2].PickList.Add('局限于椅上');
DBGridEh1.Columns[2].PickList.Add('偶然步行');
DBGridEh1.Columns[2].PickList.Add('经常步行');
end
else
if ADOQuery1.FieldByName('pfxx').AsString='可动性“改变和控制体位能力'  then
begin
DBGridEh1.Columns[2].PickList.Clear;
DBGridEh1.Columns[2].PickList.Add('完全不能');
DBGridEh1.Columns[2].PickList.Add('严重限制');
DBGridEh1.Columns[2].PickList.Add('轻度限制');
DBGridEh1.Columns[2].PickList.Add('不限制');
end
else
if ADOQuery1.FieldByName('pfxx').AsString='营养：通常的摄食情况'  then
begin
DBGridEh1.Columns[2].PickList.Clear;
DBGridEh1.Columns[2].PickList.Add('非常差');
DBGridEh1.Columns[2].PickList.Add('不足');
DBGridEh1.Columns[2].PickList.Add('适当');
DBGridEh1.Columns[2].PickList.Add('良好');
end
else
if ADOQuery1.FieldByName('pfxx').AsString='摩擦力和剪切力'  then
begin
DBGridEh1.Columns[2].PickList.Clear;
DBGridEh1.Columns[2].PickList.Add('有明显问题');
DBGridEh1.Columns[2].PickList.Add('有潜在问题');
DBGridEh1.Columns[2].PickList.Add('无');

end
else
if  ADOQuery1.FieldByName('pfxx').AsString='年龄'  then
begin
DBGridEh1.Columns[3].PickList.Clear;
DBGridEh1.Columns[3].PickList.Add('0');
DBGridEh1.Columns[3].PickList.Add('1');
end
else
if  ADOQuery1.FieldByName('pfxx').AsString='意识'  then
begin
DBGridEh1.Columns[3].PickList.Clear;
DBGridEh1.Columns[3].PickList.Add('0');
DBGridEh1.Columns[3].PickList.Add('1');
end
else
if  ADOQuery1.FieldByName('pfxx').AsString='感觉'  then
begin
DBGridEh1.Columns[3].PickList.Clear;
DBGridEh1.Columns[3].PickList.Add('0');
DBGridEh1.Columns[3].PickList.Add('1');
end
else
if  ADOQuery1.FieldByName('pfxx').AsString='精神'  then
begin
DBGridEh1.Columns[3].PickList.Clear;
DBGridEh1.Columns[3].PickList.Add('0');
DBGridEh1.Columns[3].PickList.Add('1');
DBGridEh1.Columns[3].PickList.Add('2');
DBGridEh1.Columns[3].PickList.Add('3');
DBGridEh1.Columns[3].PickList.Add('4');
end
else
if  ADOQuery1.FieldByName('pfxx').AsString='行动'  then
begin
DBGridEh1.Columns[3].PickList.Clear;
DBGridEh1.Columns[3].PickList.Add('0');
DBGridEh1.Columns[3].PickList.Add('1');
end
else
if  (ADOQuery1.FieldByName('pfxx').AsString='药物') or  (ADOQuery1.FieldByName('pfxx').AsString='既往史') or  (ADOQuery1.FieldByName('pfxx').AsString='其它') then
begin
DBGridEh1.Columns[3].PickList.Clear;
DBGridEh1.Columns[3].PickList.Add('0');
DBGridEh1.Columns[3].PickList.Add('1');
DBGridEh1.Columns[3].PickList.Add('2');
DBGridEh1.Columns[3].PickList.Add('3');
end;

end;

procedure Tfrm_gwyspf.FormClose(Sender: TObject; var Action: TCloseAction);
var
i:Integer;
aa:string;
begin


for i := 1 to frm_twb2.ScrollBox3.ControlCount-1 do
    begin
      if (frm_twb2.ScrollBox3.controls[i] is tedit) then
          begin
          aa:=(frm_twb2.ScrollBox3.Controls[i] as tedit).name;
          aa:=Copy(aa,2,10);
          if aa=a then
           begin
             (frm_twb2.ScrollBox3.Controls[i] as tedit).text:=inttostr(qry_bc.FieldByName('zf').AsInteger);
           end;
          end;
    end;

end;

procedure Tfrm_gwyspf.FormShow(Sender: TObject);
begin

if a='zilinengli' then
  begin
  frm_gwyspf.Caption:='Barther指数（BI）评定量表' ;
  Label1.Caption:='Barther指数（BI）评定量表';
  Label1.Font.Size:=12;
    Label2.Caption:='Barther指数（BI）评分  总分：';
  Label2.Font.Size:=9;
   Label3.left:=Label2.Left+label2.Width+5;
    Label3.Caption:='';
  Label3.Font.Size:=9;
    Label4.Left:=Label3.Left+label3.Width+30;
    Label4.Caption:='自理能力分级：';
  Label4.Font.Size:=9;
      Label5.Left:=Label4.Left+label4.Width+5;
    Label5.Caption:='';
  Label5.Font.Size:=9;

  ADOQuery2.close;
  ADOQuery2.sql.clear;
  ADOQuery2.sql.Add('select * from zybl_hljld_pf where  pfdx=:pfdx and zyh=:zyh and jlrq=:jlrq');
  ADOQuery2.Parameters.ParamByName('pfdx').value:='Barthel指数';
  ADOQuery2.Parameters.ParamByName('zyh').value:=zy_zyh;
  ADOQuery2.Parameters.ParamByName('jlrq').value:=strtodatetime(formatdatetime('yyyy-mm-dd ', da1) + formatdatetime('hh:mm',frm_twb2.sd.time) + ':00');;
  Frm_func.open_dataset(adoquery2);

  if ADOQuery2.RecordCount>0 then
  begin
  ADOQuery1.close;
  ADOQuery1.sql.clear;
  ADOQuery1.sql.Add('select * from zybl_hljld_pf where  pfdx=:pfdx and zyh=:zyh and jlrq=:jlrq order by id');
  ADOQuery1.Parameters.ParamByName('pfdx').value:='Barthel指数';
  ADOQuery1.Parameters.ParamByName('zyh').value:=zy_zyh;
  ADOQuery1.Parameters.ParamByName('jlrq').value:=strtodatetime(formatdatetime('yyyy-mm-dd ', da1) + formatdatetime('hh:mm',frm_twb2.sd.time) + ':00');;
  Frm_func.open_dataset(ADOQuery1);
  end
  else
  begin
  ADOQuery1.close;
  ADOQuery1.sql.clear;
  ADOQuery1.sql.Add('select * from zybl_hljld_pfxm where  pfdx=:pfdx  order by id');
  ADOQuery1.Parameters.ParamByName('pfdx').value:='Barthel指数';
  Frm_func.open_dataset(ADOQuery1);
  end;
DBGridEh1.Columns.Add;
DBGridEh1.Columns[0].fieldname:='pfdx';
DBGridEh1.Columns[0].Title.caption:='评分大项';
DBGridEh1.Columns[0].Title.Font.Size:=11;
DBGridEh1.Columns[0].Title.Alignment:=taCenter;
DBGridEh1.Columns[0].Alignment:=taCenter;
DBGridEh1.Columns[0].width:=100;
DBGridEh1.Columns[0].ReadOnly:=True;

DBGridEh1.Columns.Add;
DBGridEh1.Columns[1].fieldname:='pfxx';
DBGridEh1.Columns[1].Title.caption:='评分小项';
DBGridEh1.Columns[1].Title.Font.Size:=11;
DBGridEh1.Columns[1].Title.Alignment:=taCenter;
DBGridEh1.Columns[1].Alignment:=taCenter;
DBGridEh1.Columns[1].width:=100;
DBGridEh1.Columns[1].ReadOnly:=True;

DBGridEh1.Columns.Add;
DBGridEh1.Columns[2].fieldname:='jg';
DBGridEh1.Columns[2].Title.caption:='结果';
DBGridEh1.Columns[2].Title.Font.Size:=11;
DBGridEh1.Columns[2].Title.Alignment:=taCenter;
DBGridEh1.Columns[2].Alignment:=taCenter;
DBGridEh1.Columns[2].width:=100;



  end;

  if a='yachuang' then
  begin
   Label1.Caption:='住院患者压疮风险评估表';
   frm_gwyspf.Caption:='住院患者压疮风险评估表';
   frm_gwyspf.Width:=500;
  Label1.Font.Size:=12;
      Label2.Caption:='Braden评分法  总分：';
  Label2.Font.Size:=9;
   Label3.left:=Label2.Left+label2.Width+5;
    Label3.Caption:='';
  Label3.Font.Size:=9;
    Label4.Left:=Label3.Left+label3.Width+30;
    Label4.Caption:='压疮风险：';
  Label4.Font.Size:=9;
      Label5.Left:=Label4.Left+label4.Width+5;
    Label5.Caption:='';
  Label5.Font.Size:=9;


  ADOQuery2.close;
  ADOQuery2.sql.clear;
  ADOQuery2.sql.Add('select * from zybl_hljld_pf where  pfdx=:pfdx and jlrq=:jlrq and zyh=:zyh');
  ADOQuery2.Parameters.ParamByName('pfdx').value:='压疮风险';
  ADOQuery2.Parameters.ParamByName('jlrq').value:=strtodatetime(formatdatetime('yyyy-mm-dd ', da1) + formatdatetime('hh:mm',frm_twb2.sd.time) + ':00');;
  ADOQuery2.Parameters.ParamByName('zyh').value:=zy_zyh;
  Frm_func.open_dataset(adoquery2);

  if ADOQuery2.RecordCount>0 then
  begin
  ADOQuery1.close;
  ADOQuery1.sql.clear;
  ADOQuery1.sql.Add('select * from zybl_hljld_pf where  pfdx=:pfdx and zyh=:zyh and jlrq=:jlrq order by id');
  ADOQuery1.Parameters.ParamByName('pfdx').value:='压疮风险';
  ADOQuery1.Parameters.ParamByName('jlrq').value:=strtodatetime(formatdatetime('yyyy-mm-dd ', da1) + formatdatetime('hh:mm',frm_twb2.sd.time) + ':00');;
  ADOQuery1.Parameters.ParamByName('zyh').value:=zy_zyh;
  Frm_func.open_dataset(adoquery1);
  end
  else
  begin
  ADOQuery1.close;
  ADOQuery1.sql.clear;
  ADOQuery1.sql.Add('select * from zybl_hljld_pfxm where  pfdx=:pfdx order by id');
  ADOQuery1.Parameters.ParamByName('pfdx').value:='压疮风险';
  Frm_func.open_dataset(adoquery1);
  end;
DBGridEh1.Columns.Add;
DBGridEh1.Columns[0].fieldname:='pfdx';
DBGridEh1.Columns[0].Title.caption:='评分大项';
DBGridEh1.Columns[0].Title.Font.Size:=11;
DBGridEh1.Columns[0].Title.Alignment:=taCenter;
DBGridEh1.Columns[0].Alignment:=taCenter;
DBGridEh1.Columns[0].width:=100;
DBGridEh1.Columns[0].ReadOnly:=True;

DBGridEh1.Columns.Add;
DBGridEh1.Columns[1].fieldname:='pfxx';
DBGridEh1.Columns[1].Title.caption:='评分小项';
DBGridEh1.Columns[1].Title.Font.Size:=11;
DBGridEh1.Columns[1].Title.Alignment:=taCenter;
DBGridEh1.Columns[1].Alignment:=taCenter;
DBGridEh1.Columns[1].width:=200;
DBGridEh1.Columns[1].ReadOnly:=True;

DBGridEh1.Columns.Add;
DBGridEh1.Columns[2].fieldname:='jg';
DBGridEh1.Columns[2].Title.caption:='结果';
DBGridEh1.Columns[2].Title.Font.Size:=11;
DBGridEh1.Columns[2].Title.Alignment:=taCenter;
DBGridEh1.Columns[2].Alignment:=taCenter;
DBGridEh1.Columns[2].width:=100;




  end;

  if a='diedao' then
  begin
        Label1.Caption:='住院患者意外事件危险因素评估表';
   frm_gwyspf.Caption:='住院患者意外事件危险因素评估表';
   frm_gwyspf.Width:=500;
  Label1.Font.Size:=12;
      Label2.Caption:='评估表  ';
  Label2.Font.Size:=9;
   Label3.left:=Label2.Left+label2.Width+300;
    Label3.Caption:='总分：';
  Label3.Font.Size:=9;
    Label4.Left:=Label3.Left+label3.Width+30;
    Label4.Caption:='';
  Label4.Font.Size:=9;
      Label5.Visible:=false;


  ADOQuery2.close;
  ADOQuery2.sql.clear;
  ADOQuery2.sql.Add('select * from zybl_hljld_pf where  pfdx=:pfdx and jlrq=:jlrq and zyh=:zyh');
  ADOQuery2.Parameters.ParamByName('zyh').value:=zy_zyh;
  ADOQuery2.Parameters.ParamByName('jlrq').value:=strtodatetime(formatdatetime('yyyy-mm-dd ', da1) + formatdatetime('hh:mm',frm_twb2.sd.time) + ':00');;
  ADOQuery2.Parameters.ParamByName('pfdx').value:='意外事件危险因素';
  Frm_func.open_dataset(adoquery2);

  if ADOQuery2.RecordCount>0 then
  begin
  ADOQuery1.close;
  ADOQuery1.sql.clear;
  ADOQuery1.sql.Add('select * from zybl_hljld_pf where  pfdx=:pfdx and zyh=:zyh and jlrq=:jlrq order by id');
  ADOQuery1.Parameters.ParamByName('zyh').value:=zy_zyh;
  ADOQuery1.Parameters.ParamByName('jlrq').value:=strtodatetime(formatdatetime('yyyy-mm-dd ', da1) + formatdatetime('hh:mm',frm_twb2.sd.time) + ':00');;
  ADOQuery1.Parameters.ParamByName('pfdx').value:='意外事件危险因素';
  Frm_func.open_dataset(adoquery1);
  end
  else
  begin
  ADOQuery1.close;
  ADOQuery1.sql.clear;
  ADOQuery1.sql.Add('select * from zybl_hljld_pfxm where  pfdx=:pfdx order by id');
  ADOQuery1.Parameters.ParamByName('pfdx').value:='意外事件危险因素';
  Frm_func.open_dataset(ADOQuery1);
  end;
DBGridEh1.Columns.Add;
DBGridEh1.Columns[0].fieldname:='pfdx';
DBGridEh1.Columns[0].Title.caption:='评分大项';
DBGridEh1.Columns[0].Title.Font.Size:=11;
DBGridEh1.Columns[0].Title.Alignment:=taCenter;
DBGridEh1.Columns[0].Alignment:=taCenter;
DBGridEh1.Columns[0].width:=130;
DBGridEh1.Columns[0].ReadOnly:=True;

DBGridEh1.Columns.Add;
DBGridEh1.Columns[1].fieldname:='pfxx';
DBGridEh1.Columns[1].Title.caption:='评分小项';
DBGridEh1.Columns[1].Title.Font.Size:=11;
DBGridEh1.Columns[1].Title.Alignment:=taCenter;
DBGridEh1.Columns[1].Alignment:=taCenter;
DBGridEh1.Columns[1].width:=80;
DBGridEh1.Columns[1].ReadOnly:=True;

DBGridEh1.Columns.Add;
DBGridEh1.Columns[2].fieldname:='ms';
DBGridEh1.Columns[2].Title.caption:='病情';
DBGridEh1.Columns[2].Title.Font.Size:=11;
DBGridEh1.Columns[2].Title.Alignment:=taCenter;
DBGridEh1.Columns[2].Alignment:=taCenter;
DBGridEh1.Columns[2].width:=100;



DBGridEh1.Columns.Add;
DBGridEh1.Columns[3].fieldname:='fz';
DBGridEh1.Columns[3].Title.caption:='分值';
DBGridEh1.Columns[3].Title.Font.Size:=11;
DBGridEh1.Columns[3].Title.Alignment:=taCenter;
DBGridEh1.Columns[3].Alignment:=taCenter;
DBGridEh1.Columns[3].width:=100;




  end;
  Button1.left:=Label1.Left+label1.Width;

  jsfs;




end;



end.
