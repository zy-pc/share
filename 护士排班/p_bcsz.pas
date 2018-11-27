unit p_bcsz;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBGridEhGrouping, StdCtrls, GridsEh, DBGridEh, ComCtrls, ExtCtrls,
  DB, ADODB, Buttons,DateUtils;

type
  Tfrm_bcsz = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    bcmc: TEdit;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    DBGridEh1: TDBGridEh;
    Label4: TLabel;
    ColorBox1: TColorBox;
    Panel2: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    GroupBox1: TGroupBox;
    DBGridEh2: TDBGridEh;
    ds_bczh: TDataSource;
    qry_bczh: TADOQuery;
    qry_bc: TADOQuery;
    qry_bcxs: TADOQuery;
    ds_bcxs: TDataSource;
    Label5: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label7: TLabel;
    DateTimePicker3: TDateTimePicker;
    DateTimePicker4: TDateTimePicker;
    Label9: TLabel;
    bcsc: TEdit;
    Label10: TLabel;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    Label11: TLabel;
    zhmc: TEdit;
    zh1: TLabel;
    zh2: TLabel;
    zh3: TLabel;
    zh4: TLabel;
    zh5: TLabel;
    zh6: TLabel;
    zh7: TLabel;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    ad_bczh: TADODataSet;
    zh11: TComboBox;
    zh22: TComboBox;
    zh33: TComboBox;
    zh44: TComboBox;
    zh55: TComboBox;
    zh66: TComboBox;
    zh77: TComboBox;
    ADOQuery1: TADOQuery;
    Label12: TLabel;
    bcxh: TEdit;
    Label13: TLabel;
    procedure FormShow(Sender: TObject);
    procedure ds_bcxsDataChange(Sender: TObject; Field: TField);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure DateTimePicker2Exit(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure DBGridEh2CellClick(Column: TColumnEh);
    procedure DateTimePicker4Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_bcsz: Tfrm_bcsz;

implementation
uses
p_hspbb_pb,p_hspbb_main,p_dm,p_func;

{$R *.dfm}

procedure Tfrm_bcsz.DateTimePicker2Exit(Sender: TObject);
var
sc1,sc2:integer;
begin
if CheckBox1.Checked then
sc1:=SecondsBetween(DateTimePicker2.Date+1,datetimepicker1.Date)
else
sc1:=SecondsBetween(DateTimePicker2.Date,datetimepicker1.Date);
sc1:=Round((sc1+1)/3600);

if CheckBox2.Checked then
sc2:=SecondsBetween(DateTimePicker4.Date+1,datetimepicker3.Date)
else
sc2:=SecondsBetween(DateTimePicker4.Date,datetimepicker3.Date);
sc2:=Round((sc2+1)/3600);

bcsc.text:=IntToStr(sc1+sc2);
end;

procedure Tfrm_bcsz.DateTimePicker4Change(Sender: TObject);
var
sc1,sc2:integer;
begin
if CheckBox1.Checked then
sc1:=SecondsBetween(DateTimePicker2.Date+1,datetimepicker1.Date)
else
sc1:=SecondsBetween(DateTimePicker2.Date,datetimepicker1.Date);
sc1:=Round((sc1+1)/3600);

if CheckBox2.Checked then
sc2:=SecondsBetween(DateTimePicker4.Date+1,datetimepicker3.Date)
else
sc2:=SecondsBetween(DateTimePicker4.Date,datetimepicker3.Date);
sc2:=Round((sc2+1)/3600);

bcsc.text:=IntToStr(sc1+sc2);
end;

procedure Tfrm_bcsz.DBGridEh2CellClick(Column: TColumnEh);
begin
zhmc.Text:=qry_bczh.FieldByName('zhmc').AsString;
zh11.Text:=qry_bczh.FieldByName('1').AsString;
zh22.Text:=qry_bczh.FieldByName('2').AsString;
zh33.Text:=qry_bczh.FieldByName('3').AsString;
zh44.Text:=qry_bczh.FieldByName('4').AsString;
zh55.Text:=qry_bczh.FieldByName('5').AsString;
zh66.Text:=qry_bczh.FieldByName('6').AsString;
zh77.Text:=qry_bczh.FieldByName('7').AsString;
end;

procedure Tfrm_bcsz.ds_bcxsDataChange(Sender: TObject; Field: TField);
begin
bcmc.text:=qry_bcxs.FieldByName('bc').AsString;
ColorBox1.ItemIndex:=qry_bcxs.FieldByName('colorindex').AsInteger;
bcsc.text:= qry_bcxs.FieldByName('sc').asstring;
bcxh.text:= qry_bcxs.FieldByName('xh').asstring;
if (qry_bcxs.FieldByName('kssd').AsString<>'') and (qry_bcxs.FieldByName('jssd').AsString<>'') then
 begin
DateTimePicker1.time:= StrToDateTime( qry_bcxs.FieldByName('kssd').AsString);
DateTimePicker2.time:= StrToDateTime( qry_bcxs.FieldByName('jssd').AsString);
 end;
if (qry_bcxs.FieldByName('kssd1').AsString<>'') and (qry_bcxs.FieldByName('jssd1').AsString<>'') then
 begin
DateTimePicker3.time:= StrToDateTime( qry_bcxs.FieldByName('kssd1').AsString);
DateTimePicker4.time:= StrToDateTime( qry_bcxs.FieldByName('jssd1').AsString);
 end;

end;

procedure Tfrm_bcsz.FormShow(Sender: TObject);
var
i:integer;
bcmc:string;
begin
if pub_czyzw='04' then
begin
  SpeedButton1.Enabled:=true;
    SpeedButton2.Enabled:=true;
      SpeedButton3.Enabled:=true;
        SpeedButton4.Enabled:=true;
          SpeedButton5.Enabled:=true;
    SpeedButton6.Enabled:=true;
      SpeedButton7.Enabled:=true;
        SpeedButton8.Enabled:=true;
        DBGridEh1.Columns[0].ReadOnly:=False;
        DBGridEh1.Columns[1].ReadOnly:=False;

end;
qry_bczh.close;
qry_bczh.Parameters.ParamByName('ksdm').Value:=pub_ksdm;
qry_bczh.Open;

qry_bcxs.close;
qry_bcxs.Parameters.ParamByName('ksdm').Value:=pub_ksdm;
qry_bcxs.Open;

      {  for i := 0 to qry_bcxs.RecordCount - 1 do
         begin
bcmc:=Trim(qry_bcxs.FieldByName('bc').AsString);
DBGridEh2.Columns[1].PickList.Add(bcmc);
DBGridEh2.Columns[2].PickList.Add(bcmc);
DBGridEh2.Columns[3].PickList.Add(bcmc);
DBGridEh2.Columns[4].PickList.Add(bcmc);
DBGridEh2.Columns[5].PickList.Add(bcmc);
DBGridEh2.Columns[6].PickList.Add(bcmc);
DBGridEh2.Columns[7].PickList.Add(bcmc);
DBGridEh2.Columns[8].PickList.Add(bcmc);
qry_bcxs.Next;
         end;  }

          qry_bcxs.First;
 while not qry_bcxs.eof do
 begin
   zh11.Items.Add(Trim(qry_bcxs.FieldByName('bc').AsString));
   zh22.Items.Add(Trim(qry_bcxs.FieldByName('bc').AsString));
   zh33.Items.Add(Trim(qry_bcxs.FieldByName('bc').AsString));
   zh44.Items.Add(Trim(qry_bcxs.FieldByName('bc').AsString));
   zh55.Items.Add(Trim(qry_bcxs.FieldByName('bc').AsString));
   zh66.Items.Add(Trim(qry_bcxs.FieldByName('bc').AsString));
   zh77.Items.Add(Trim(qry_bcxs.FieldByName('bc').AsString));
   qry_bcxs.Next;
 end;
end;

procedure Tfrm_bcsz.SpeedButton1Click(Sender: TObject);
begin

qry_bc.Close;
qry_bc.sql.Clear;
qry_bc.SQL.Add('select * from zybl_hspbb_bc where ksdm=:ksdm and bc=:bc');
qry_bc.Open;
qry_bc.Insert;
bcmc.Enabled:=True;
ColorBox1.Enabled:=True;
DateTimePicker1.Enabled:=True;
DateTimePicker2.Enabled:=True;
DateTimePicker3.Enabled:=True;
DateTimePicker4.Enabled:=True;
CheckBox1.Enabled:=True;
CheckBox2.Enabled:=True;
bcxh.Enabled:=True;

bcmc.text:='';
ColorBox1.ItemIndex:=0;
DateTimePicker1.time:=0;
DateTimePicker2.time:=0;
DateTimePicker3.time:=0;
DateTimePicker4.time:=0;

end;

procedure Tfrm_bcsz.SpeedButton2Click(Sender: TObject);
begin
qry_bc.close;
qry_bc.sql.Clear;
qry_bc.SQL.Add('select * from zybl_hspbb_bc where ksdm=:ksdm and bc=:bc');
qry_bc.Parameters.ParamByName('ksdm').Value:=pub_ksdm;
qry_bc.Parameters.ParamByName('bc').Value:=Trim(bcmc.text);
qry_bc.Open;
qry_bc.Edit;

bcmc.Enabled:=True;
bcsc.Enabled:=True;
ColorBox1.Enabled:=True;
DateTimePicker1.Enabled:=True;
DateTimePicker2.Enabled:=True;
DateTimePicker3.Enabled:=True;
DateTimePicker4.Enabled:=True;
CheckBox1.Enabled:=True;
CheckBox2.Enabled:=True;
bcxh.Enabled:=True;
end;

procedure Tfrm_bcsz.SpeedButton3Click(Sender: TObject);
begin
qry_bc.close;
qry_bc.sql.Clear;
qry_bc.sql.Add('delete from zybl_hspbb_bc where ksdm=:ksdm and bc=:bc');
qry_bc.Parameters.ParamByName('ksdm').Value:=pub_ksdm;
qry_bc.Parameters.ParamByName('bc').Value:=Trim(bcmc.text);
qry_bc.ExecSQL;

qry_bcxs.close;
qry_bcxs.Parameters.ParamByName('ksdm').Value:=pub_ksdm;
qry_bcxs.Open;


bcmc.Enabled:=false;
bcsc.Enabled:=false;
ColorBox1.Enabled:=false;
DateTimePicker1.Enabled:=false;
DateTimePicker2.Enabled:=false;
DateTimePicker3.Enabled:=false;
DateTimePicker4.Enabled:=false;
CheckBox1.Enabled:=false;
CheckBox2.Enabled:=false;
bcxh.Enabled:=false;

end;

procedure Tfrm_bcsz.SpeedButton4Click(Sender: TObject);
var
sx:Integer;
sc:Real;
saveplace1:Tbookmark;
begin
if Trim(bcsc.Text)='' then
begin
 Application.MessageBox('班次时长不能为空','提示',MB_OK);
 exit;
end;
if Trim(bcxh.Text)='' then
begin
 Application.MessageBox('请填写班次序号(可以将使用频率最高的班次排在最前)','提示',MB_OK);
 exit;
end;


sc:=SecondsBetween(DateTimePicker1.date,DateTimePicker2.date)+SecondsBetween(DateTimePicker3.date,DateTimePicker4.date);
sx:=ColorBox1.ItemIndex;
qry_bc['bc']:=Trim(bcmc.Text);
qry_bc['kssd']:=formatdatetime('hh:mm:ss',DateTimePicker1.time);
qry_bc['jssd']:=formatdatetime('hh:mm:ss',DateTimePicker2.time);
qry_bc['kssd1']:=formatdatetime('hh:mm:ss',DateTimePicker3.time);
qry_bc['jssd1']:=formatdatetime('hh:mm:ss',DateTimePicker4.time);
qry_bc['ksdm']:=pb_ksdm;
qry_bc['bqdm']:=pub_bqdm;
qry_bc['color']:=ColorBox1.Items[sx];
qry_bc['colorindex']:=sx;
qry_bc['sc']:=bcsc.Text;
qry_bc['xh']:=StrToInt(bcxh.Text);
qry_bc.Post;
 //    saveplace1:=qry_bcxs.GetBookmark;
qry_bcxs.close;
qry_bcxs.Parameters.ParamByName('ksdm').Value:=pb_ksdm;
qry_bcxs.Open;

bcmc.Enabled:=false;
bcsc.Enabled:=false;
ColorBox1.Enabled:=false;
DateTimePicker1.Enabled:=false;
DateTimePicker2.Enabled:=false;
DateTimePicker3.Enabled:=false;
DateTimePicker4.Enabled:=false;
CheckBox1.Enabled:=false;
CheckBox2.Enabled:=false;
bcxh.Enabled:=false;

zh11.Items.Clear;
zh22.Items.Clear;
zh33.Items.Clear;
zh44.Items.Clear;
zh55.Items.Clear;
zh66.Items.Clear;
zh77.Items.Clear;



 qry_bcxs.First;
 while not qry_bcxs.eof do
 begin
   zh11.Items.Add(Trim(qry_bcxs.FieldByName('bc').AsString));
   zh22.Items.Add(Trim(qry_bcxs.FieldByName('bc').AsString));
   zh33.Items.Add(Trim(qry_bcxs.FieldByName('bc').AsString));
   zh44.Items.Add(Trim(qry_bcxs.FieldByName('bc').AsString));
   zh55.Items.Add(Trim(qry_bcxs.FieldByName('bc').AsString));
   zh66.Items.Add(Trim(qry_bcxs.FieldByName('bc').AsString));
   zh77.Items.Add(Trim(qry_bcxs.FieldByName('bc').AsString));
   qry_bcxs.Next;
 end;
//  qry_bcxs.GotoBookmark(saveplace1);
 


end;

procedure Tfrm_bcsz.SpeedButton5Click(Sender: TObject);
begin
ad_bczh.Close;
ad_bczh.CommandText:='select * from zybl_hspbb_bczh where 1=2';
ad_bczh.Open;
ad_bczh.Insert;
zhmc.Enabled:=True;
zh11.Enabled:=True;
zh22.Enabled:=True;
zh33.Enabled:=True;
zh44.Enabled:=True;
zh55.Enabled:=True;
zh66.Enabled:=True;
zh77.Enabled:=True;

zhmc.text:='';
zh11.text:='';
zh22.text:='';
zh33.text:='';
zh44.text:='';
zh55.text:='';
zh66.text:='';
zh77.text:='';


end;

procedure Tfrm_bcsz.SpeedButton6Click(Sender: TObject);
begin
ad_bczh.close;
ad_bczh.CommandText:='select * from zybl_hspbb_bczh where ksdm=:ksdm and zhmc=:zhmc';
ad_bczh.Parameters.ParamByName('ksdm').Value:=pb_ksdm;
ad_bczh.Parameters.ParamByName('zhmc').Value:=Trim(zhmc.text);
ad_bczh.Open;
ad_bczh.Edit;
zhmc.Enabled:=True;
zh11.Enabled:=True;
zh22.Enabled:=True;
zh33.Enabled:=True;
zh44.Enabled:=True;
zh55.Enabled:=True;
zh66.Enabled:=True;
zh77.Enabled:=True;
end;

procedure Tfrm_bcsz.SpeedButton7Click(Sender: TObject);
begin
ADOQuery1.close;
ADOQuery1.sql.clear;
ADOQuery1.SQL.add('delete from zybl_hspbb_bczh where id=:id');
ADOQuery1.Parameters.ParamByName('id').Value:=qry_bczh.FieldByName('id').AsInteger;
ADOQuery1.ExecSQL;

qry_bczh.close;
qry_bczh.Parameters.ParamByName('ksdm').Value:=pb_ksdm;
qry_bczh.Open;

zhmc.Enabled:=false;
zh11.Enabled:=false;
zh22.Enabled:=false;
zh33.Enabled:=false;
zh44.Enabled:=false;
zh55.Enabled:=false;
zh66.Enabled:=false;
zh77.Enabled:=false;
end;

procedure Tfrm_bcsz.SpeedButton8Click(Sender: TObject);
begin
if Trim(zhmc.text)<>'' then
begin
ad_bczh['zhmc']:=Trim(zhmc.text);
ad_bczh['ksdm']:=pb_ksdm;
ad_bczh['1']:=Trim(zh11.text);
ad_bczh['2']:=Trim(zh22.text);
ad_bczh['3']:=Trim(zh33.text);
ad_bczh['4']:=Trim(zh44.text);
ad_bczh['5']:=Trim(zh55.text);
ad_bczh['6']:=Trim(zh66.text);
ad_bczh['7']:=Trim(zh77.text);
ad_bczh.Post;
qry_bczh.close;
qry_bczh.Parameters.ParamByName('ksdm').Value:=pb_ksdm;
qry_bczh.Open;
end;

zhmc.Enabled:=false;
zh11.Enabled:=false;
zh22.Enabled:=false;
zh33.Enabled:=false;
zh44.Enabled:=false;
zh55.Enabled:=false;
zh66.Enabled:=false;
zh77.Enabled:=false;
end;

end.
