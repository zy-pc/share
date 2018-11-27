unit p_hspbb_ryzh;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBGridEhGrouping, DB, ADODB, GridsEh, DBGridEh, StdCtrls, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridLevel, cxClasses, cxGridCustomView, cxGrid, Grids, DBGrids, Buttons,
  ExtCtrls, cxTextEdit, cxDropDownEdit;

type
  Tfrm_hspbb_ryzh = class(TForm)
    GroupBox1: TGroupBox;
    qry_czy: TADOQuery;
    ds_czy: TDataSource;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxGrid1DBTableView1Column3: TcxGridDBColumn;
    cxGrid1DBTableView1Column4: TcxGridDBColumn;
    cxGrid1DBTableView1Column5: TcxGridDBColumn;
    cxGrid1DBTableView1Column6: TcxGridDBColumn;
    cxGrid1DBTableView1Column7: TcxGridDBColumn;
    cxGrid1DBTableView1Column8: TcxGridDBColumn;
    cxGrid1DBTableView1Column9: TcxGridDBColumn;
    GroupBox2: TGroupBox;
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Label1: TLabel;
    zhmc: TEdit;
    qry_fzmc: TADOQuery;
    ad_infzmc: TADODataSet;
    ds_fzmc: TDataSource;
    DBGridEh1: TDBGridEh;
    qry_rygj: TADOQuery;
    Panel2: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    Edit4: TEdit;
    Label6: TLabel;
    Label7: TLabel;
    Edit6: TEdit;
    Label8: TLabel;
    Edit7: TEdit;
    CheckBox1: TCheckBox;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    ad_ryxz: TADODataSet;
    GroupBox3: TGroupBox;
    qry_de: TADOQuery;
    qry_czy1: TADOQuery;
    ComboBox1: TComboBox;
    qry_fzsc: TADOQuery;
    ComboBox2: TComboBox;
    qry2: TADOQuery;
    SpeedButton7: TSpeedButton;
    Label9: TLabel;
    ADOStoredProc1: TADOStoredProc;
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure ds_czyDataChange(Sender: TObject; Field: TField);
    procedure Edit1Exit(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure Edit5KeyPress(Sender: TObject; var Key: Char);
    procedure Edit6KeyPress(Sender: TObject; var Key: Char);
    procedure ComboBox1KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_hspbb_ryzh: Tfrm_hspbb_ryzh;

implementation
uses
p_hspbb_main,p_dm,p_func;

{$R *.dfm}

procedure Tfrm_hspbb_ryzh.ComboBox1KeyPress(Sender: TObject; var Key: Char);
begin
if Key=#13 then
edit4.SetFocus;
end;

procedure Tfrm_hspbb_ryzh.ds_czyDataChange(Sender: TObject; Field: TField);
begin
Edit1.text:=qry_czy.FieldByName('dm').AsString;
Edit2.text:=qry_czy.FieldByName('mc').AsString;
combobox1.text:=qry_czy.FieldByName('gw').AsString;
Edit4.text:=qry_czy.FieldByName('pbxh').AsString;
combobox2.text:=qry_czy.FieldByName('zhid').AsString;
Edit6.text:=qry_czy.FieldByName('lxdh').AsString;
Edit7.text:=qry_czy.FieldByName('v_lxdh').AsString;
if qry_czy.FieldByName('sfpb').AsBoolean then
CheckBox1.Checked:=True
else
CheckBox1.Checked:=false;

end;

procedure Tfrm_hspbb_ryzh.Edit1Exit(Sender: TObject);
var
sctmh:string;
begin
sctmh:=Trim(Edit1.text);
if Length(sctmh)<>4 then
begin
    application.messagebox( '代码必须为4位！', '提示',mb_ok );
    Edit1.SetFocus;
    Abort;
end;
if pos('A',sctmh)=0 then
begin
qry_czy1.Close;
qry_czy1.sql.Clear;
qry_czy1.SQL.Add('select * from sys_czy where dm=:dm');
qry_czy1.Parameters.ParamByName('dm').Value:=Trim(Edit1.text);
qry_czy1.open;
if qry_czy1.RecordCount>0 then
begin
qry2.close;
qry2.sql.Clear;
qry2.SQL.Add('select a.*,b.mc ksmc from zybL_hspbb_czy a,sys_ksdm b where a.ksdm=b.dm and a.dm=:dm');
qry2.Parameters.ParamByName('dm').Value:=Trim(Edit1.text);
qry2.open;
 if qry2.RecordCount>0  then
  begin
    if pb_ksdm<>qry2.FieldByName('ksdm').AsString then
     begin
        if MessageDlg('此操作员在'+qry2.FieldByName('ksmc').AsString+',是否转科？',mtConfirmation,[mbYes,mbNo],1)=mrYes then
        begin
          qry2.Close;
          qry2.sql.clear;
          qry2.sql.Add('update zybl_hspbb_czy set ksdm=:ksdm where dm=:dm');
          qry2.Parameters.ParamByName('ksdm').Value:=pb_ksdm;
          qry2.Parameters.ParamByName('dm').Value:=Trim(Edit1.text);
          qry2.ExecSQL;
        end;
     end
     else
     begin
      application.messagebox( '本科室已经有该操作员！', '提示',mb_ok );
     end;
  end;
     Edit2.Text:=qry_czy1.FieldByName('mc').AsString;
   Edit6.Text:=qry_czy1.FieldByName('lxdh').AsString;
   Edit7.Text:=qry_czy1.FieldByName('v_lxdh').AsString;
end
else
begin
   application.messagebox( 'his系统不存在此代码，请重新输入！', '提示',mb_ok );
end;
end;
end;

procedure Tfrm_hspbb_ryzh.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if Key=#13 then
edit2.SetFocus;
end;

procedure Tfrm_hspbb_ryzh.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
if Key=#13 then
combobox1.SetFocus;
end;

procedure Tfrm_hspbb_ryzh.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
if Key=#13 then
edit4.SetFocus;
end;

procedure Tfrm_hspbb_ryzh.Edit4KeyPress(Sender: TObject; var Key: Char);
begin
if Key=#13 then
combobox2.SetFocus;
end;

procedure Tfrm_hspbb_ryzh.Edit5KeyPress(Sender: TObject; var Key: Char);
begin
if Key=#13 then
edit6.SetFocus;
end;

procedure Tfrm_hspbb_ryzh.Edit6KeyPress(Sender: TObject; var Key: Char);
begin
if Key=#13 then
edit7.SetFocus;
end;

procedure Tfrm_hspbb_ryzh.FormShow(Sender: TObject);
begin
GroupBox1.Height:=frm_hspbb_ryzh.Height-350;
cxGrid1.Height:=frm_hspbb_ryzh.Height-350;
if pub_czyzw='04' then
begin
  SpeedButton1.Enabled:=True;
  SpeedButton2.Enabled:=True;
    SpeedButton3.Enabled:=True;
  SpeedButton4.Enabled:=True;
    SpeedButton5.Enabled:=True;
  SpeedButton6.Enabled:=True;
    SpeedButton7.Enabled:=True;
  cxGrid1DBTableView1.OptionsData.Editing:=True;
end;

qry_czy.close;
qry_czy.Parameters.ParamByName('ksdm').value:=pb_ksdm;
qry_czy.Open;


qry_fzmc.close;
qry_fzmc.sql.Clear;
qry_fzmc.sql.Add('select * from zybl_hspbb_fzmc where ksdm=:ksdm');
qry_fzmc.Parameters.ParamByName('ksdm').Value:=pb_ksdm;
qry_fzmc.Open;

 (cxGrid1DBTableView1Column3.Properties as TcxComboBoxProperties).Items.Clear;
qry_rygj.close;
qry_rygj.Open;
qry_rygj.First;
combobox1.Items.Clear;
 while not qry_rygj.eof do
 begin
 combobox1.Items.Add(qry_rygj.FieldByName('gjmc').AsString);
 qry_rygj.Next;
 end;

 qry_fzmc.First;
combobox2.Items.Clear;
 while not qry_fzmc.eof do
 begin
 combobox2.Items.Add(qry_fzmc.FieldByName('id').AsString);
 qry_fzmc.Next;
 end;
end;

procedure Tfrm_hspbb_ryzh.SpeedButton1Click(Sender: TObject);
begin
ad_infzmc.close;
ad_infzmc.CommandText:='select * from zybl_hspbb_fzmc where 1=2';
ad_infzmc.Open;
ad_infzmc.Append;
ad_infzmc['ksdm']:=pb_ksdm;
ad_infzmc['bqdm']:=pub_bqdm;
ad_infzmc['zhmc']:=Trim(zhmc.text);
ad_infzmc.Post;


qry_fzmc.close;
qry_fzmc.sql.Clear;
qry_fzmc.sql.Add('select * from zybl_hspbb_fzmc where ksdm=:ksdm order by id');
qry_fzmc.Parameters.ParamByName('ksdm').Value:=pb_ksdm;
qry_fzmc.Open;


qry_fzmc.First;
combobox2.Items.Clear;
 while not qry_fzmc.eof do
 begin
 combobox2.Items.Add(qry_fzmc.FieldByName('id').AsString);
 qry_fzmc.Next;
 end;








end;

procedure Tfrm_hspbb_ryzh.SpeedButton2Click(Sender: TObject);
begin
 if MessageDlg('删除分组名称后请修改在当前分组的操作员的组合ID，否则会引起排班错误，是否继续？',mtConfirmation,[mbYes,mbNo],1)=mrYes then
begin
qry_fzsc.close;
qry_fzsc.sql.clear;
qry_fzsc.sql.Add('delete from zybl_hspbb_fzmc where id=:id');
qry_fzsc.Parameters.ParamByName('id').Value:=qry_fzmc.FieldByName('id').AsInteger;
qry_fzsc.ExecSQL;

qry_fzmc.close;
qry_fzmc.sql.Clear;
qry_fzmc.sql.Add('select * from zybl_hspbb_fzmc where ksdm=:ksdm order by id');
qry_fzmc.Parameters.ParamByName('ksdm').Value:=pb_ksdm;
qry_fzmc.Open;


qry_fzmc.First;
combobox2.Items.Clear;
 while not qry_fzmc.eof do
 begin
 combobox2.Items.Add(qry_fzmc.FieldByName('id').AsString);
 qry_fzmc.Next;
 end;
end;


end;

procedure Tfrm_hspbb_ryzh.SpeedButton3Click(Sender: TObject);
begin
Edit1.Enabled:=True;
Edit2.Enabled:=True;
combobox1.Enabled:=True;
Edit4.Enabled:=True;
ComboBox2.Enabled:=True;
Edit6.Enabled:=True;
Edit7.Enabled:=True;
CheckBox1.Enabled:=True;

Edit1.text:='';
Edit2.text:='';
combobox1.text:='';
Edit4.text:='';
ComboBox2.text:='';
Edit6.text:='';
Edit7.text:='';

Edit1.SetFocus;

ad_ryxz.close;
ad_ryxz.CommandText:='select * from zybl_hspbb_czy where 1=2';
ad_ryxz.Open;
ad_ryxz.Append;
end;

procedure Tfrm_hspbb_ryzh.SpeedButton4Click(Sender: TObject);
begin
Edit1.Enabled:=True;
Edit2.Enabled:=True;
combobox1.Enabled:=True;
Edit4.Enabled:=True;
ComboBox2.Enabled:=True;
Edit6.Enabled:=True;
Edit7.Enabled:=True;
CheckBox1.Enabled:=True;
ad_ryxz.close;
ad_ryxz.CommandText:='select * from zybl_hspbb_czy where dm=:dm';
ad_ryxz.Parameters.ParamByName('dm').Value:=Trim(Edit1.text);
ad_ryxz.Open;
ad_ryxz.edit;
end;

procedure Tfrm_hspbb_ryzh.SpeedButton5Click(Sender: TObject);
begin
Edit1.Enabled:=True;
Edit2.Enabled:=True;
combobox1.Enabled:=True;
Edit4.Enabled:=True;
ComboBox2.Enabled:=True;
Edit6.Enabled:=True;
Edit7.Enabled:=True;
CheckBox1.Enabled:=True;
qry_de.close;
qry_de.SQL.Clear;
qry_de.SQL.Add('delete from zybl_hspbb_czy where dm=:dm');
qry_de.Parameters.ParamByName('dm').Value:=Trim(Edit1.text);
qry_de.ExecSQL;

qry_czy.close;
qry_czy.Parameters.ParamByName('ksdm').value:=pb_ksdm;
qry_czy.Open;
end;

procedure Tfrm_hspbb_ryzh.SpeedButton6Click(Sender: TObject);
begin
if Trim(Edit1.text)='' then
begin
application.messagebox( '请输入排班人员代码！', '提示',mb_ok );
Exit;
end;

if Trim(Edit2.text)='' then
begin
application.messagebox( '请输入排班人员姓名！', '提示',mb_ok );
Exit;
end;

if Trim(combobox1.text)='' then
begin
application.messagebox( '请输入排班人员岗位！', '提示',mb_ok );
Exit;
end;
{
if Trim(Edit4.text)='' then
begin
application.messagebox( '请输入排班人员序号！', '提示',mb_ok );
Exit;
end;   }

if Trim(ComboBox2.text)='' then
begin
application.messagebox( '请输入排班人员组合ID！', '提示',mb_ok );
Exit;
end;


ad_ryxz['dm']:=Trim(edit1.text);
ad_ryxz['mc']:=Trim(edit2.text);
if Trim(combobox1.text)<>'' then
ad_ryxz['gw']:=Trim(combobox1.text);
if Trim(edit4.text)<>'' then
ad_ryxz['pbxh']:=Trim(edit4.text);
if Trim(ComboBox2.text)<>'' then
ad_ryxz['zhid']:=Trim(ComboBox2.text);
ad_ryxz['lxdh']:=Trim(edit6.text);
ad_ryxz['v_lxdh']:=Trim(edit7.text);
ad_ryxz['ksdm']:=pb_ksdm;
ad_ryxz['bqdm']:=pub_bqdm;
ad_ryxz['ysbz']:=0;
if CheckBox1.Checked then
ad_ryxz['sfpb']:=1
else
ad_ryxz['sfpb']:=0;
ad_ryxz.Post;


qry_czy.close;
qry_czy.Parameters.ParamByName('ksdm').value:=pb_ksdm;
qry_czy.Open;

Edit1.Enabled:=false;
Edit2.Enabled:=false;
combobox1.Enabled:=false;
Edit4.Enabled:=false;
ComboBox2.Enabled:=false;
Edit6.Enabled:=false;
Edit7.Enabled:=false;
CheckBox1.Enabled:=false;

end;

procedure Tfrm_hspbb_ryzh.SpeedButton7Click(Sender: TObject);
begin
Edit1.Enabled:=True;
Edit2.Enabled:=True;
combobox1.Enabled:=True;
Edit4.Enabled:=True;
ComboBox2.Enabled:=True;
Edit6.Enabled:=True;
Edit7.Enabled:=True;
CheckBox1.Enabled:=True;

Edit1.text:='';
Edit2.text:='';
combobox1.text:='';
Edit4.text:='';
ComboBox2.text:='';
Edit6.text:='';
Edit7.text:='';

Edit1.SetFocus;

ad_ryxz.close;
ad_ryxz.CommandText:='select * from zybl_hspbb_czy where 1=2';
ad_ryxz.Open;
ad_ryxz.Append;
ADOStoredProc1.close;
ADOStoredProc1.Parameters.Refresh;
ADOStoredProc1.Parameters.ParamByName('@dm').Value:='';
ADOStoredProc1.ExecProc;
Edit1.Text:=ADOStoredProc1.Parameters.ParamByName('@dm').Value;
Edit2.SetFocus;
end;

end.
