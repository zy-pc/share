unit p_sfxm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ADODB, StdCtrls, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid,registry, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, cxDBData;

type
  Tfrm_sfxm = class(TForm)
    GroupBox1: TGroupBox;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    qry_sfxm: TADOQuery;
    ds_sfxm: TDataSource;
    cxGrid1DBTableView1szdm: TcxGridDBColumn;
    cxGrid1DBTableView1fymc: TcxGridDBColumn;
    cxGrid1DBTableView1dw: TcxGridDBColumn;
    cxGrid1DBTableView1sfbz: TcxGridDBColumn;
    RadioButton1: TRadioButton;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    RadioButton2: TRadioButton;
    cxGrid1DBTableView1DBColumn1: TcxGridDBColumn;
    qry_pub: TADOQuery;
    cmd_sfxm: TADOCommand;
    procedure RadioButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    servername:string;
    { Public declarations }
  end;
var
  frm_sfxm: Tfrm_sfxm;

implementation
uses p_dm, p_lrsfxm;
{$R *.DFM}
procedure Tfrm_sfxm.RadioButton1Click(Sender: TObject);
begin
qry_sfxm.Close;
qry_sfxm.SQL.Text:='select * from sys_kjsfxm_ls order by szdm';
qry_sfxm.Open;
end;

procedure Tfrm_sfxm.FormShow(Sender: TObject);
begin
qry_sfxm.Close;
qry_sfxm.SQL.Text:='select * from sys_kjsfxm_ls where szdm not in (select szdm from sys_kjsfxm) order by szdm';
qry_sfxm.Open;
end;

procedure Tfrm_sfxm.Button5Click(Sender: TObject);
begin
close;
end;

procedure Tfrm_sfxm.RadioButton2Click(Sender: TObject);
begin
qry_sfxm.Close;
qry_sfxm.SQL.Text:='select * from sys_kjsfxm_ls where szdm not in (select szdm from sys_kjsfxm) order by szdm';
qry_sfxm.Open;
end;

procedure Tfrm_sfxm.Button2Click(Sender: TObject);
begin
try
application.CreateForm(Tfrm_lrsfxm,frm_lrsfxm);
frm_lrsfxm.ShowModal;
finally
frm_lrsfxm.Free;
end;
end;

procedure Tfrm_sfxm.Button1Click(Sender: TObject);
begin
try
application.CreateForm(Tfrm_lrsfxm,frm_lrsfxm);
qry_sfxm.Append;
qry_sfxm.FieldValues['dldm']:='';
qry_sfxm.FieldValues['fymc']:='';
qry_sfxm.FieldValues['pym']:='';
qry_sfxm.FieldValues['typym']:='';
qry_sfxm.FieldValues['hotkey']:='';
qry_sfxm.FieldValues['szdm']:='';
qry_sfxm.FieldValues['dymc']:='';
qry_sfxm.FieldValues['dw']:='';
qry_sfxm.FieldValues['sfbz']:=0;
qry_sfxm.FieldValues['sbfybl']:=50;
qry_sfxm.FieldValues['htfybl']:=0;
qry_sfxm.FieldValues['bxfybl']:=0;
qry_sfxm.FieldValues['jkyhfybl']:=0;
qry_sfxm.FieldValues['ykyhfybl']:=0;
qry_sfxm.FieldValues['ptkyhfybl']:=0;
qry_sfxm.FieldValues['kdksfpbl']:=20;
qry_sfxm.FieldValues['kdysfpbl']:=20;
qry_sfxm.FieldValues['mzfy']:=1;
qry_sfxm.FieldValues['zyfy']:=1;
qry_sfxm.FieldValues['qybz']:=1;
qry_sfxm.FieldValues['ksgs']:='';
qry_sfxm.FieldValues['zyksgs']:='';
qry_sfxm.FieldValues['pbbz']:=0;
qry_sfxm.FieldValues['ghzl']:='';
qry_sfxm.FieldValues['bak']:='';
qry_sfxm.FieldValues['zybh']:='';
qry_sfxm.FieldValues['zdsf']:='';
qry_sfxm.FieldValues['qqkyhfybl']:=0;
frm_lrsfxm.ShowModal;
finally
frm_lrsfxm.Free;
end;
end;

procedure Tfrm_sfxm.Button3Click(Sender: TObject);
var
txt:string;
begin
qry_pub.Close;
qry_pub.SQL.Text:='select count(szdm) as zs from sys_kjsfxm where szdm='+#39+qry_sfxm.fieldbyname('szdm').asstring+#39;
qry_pub.open;
if qry_pub.FieldByName('zs').asinteger>0 then
   begin
   application.MessageBox('该项目系统已使用,不能删除!','提示信息',16);
   abort;
   end;
txt:='是否确认删除收费项目: [ '+trim(qry_sfxm.fieldbyname('fymc').asstring)+'('+trim(qry_sfxm.fieldbyname('szdm').asstring)+')]?';
if application.MessageBox(pchar(txt),'提示信息',mb_iconquestion+mb_okcancel+mb_defbutton2)=idok then
   begin
     qry_sfxm.Delete;
     qry_sfxm.UpdateBatch;
   end;;
end;

procedure Tfrm_sfxm.Button4Click(Sender: TObject);
var
fydm:string;
li:integer;
begin
qry_pub.Close;
qry_pub.SQL.Text:='select count(szdm) as zs from sys_kjsfxm where szdm='+#39+qry_sfxm.fieldbyname('szdm').asstring+#39;
qry_pub.open;
if qry_pub.FieldByName('zs').asinteger>0 then
   begin
   application.MessageBox('该项目系统已使用,不能再次导入!','提示信息',16);
   abort;
   end;
qry_pub.Close;
qry_pub.SQL.Text:='select max(fydm)+1 fydm from sys_kjsfxm';
qry_pub.Open;
li:=qry_pub.fieldbyname('fydm').asinteger;
if li=0 then li:=1;
fydm:=format('%.4d',[li]);
cmd_sfxm.CommandText:='insert into sys_kjsfxm select '+#39+fydm+#39+',a.* from sys_kjsfxm_ls a where szdm='+#39+qry_sfxm.fieldbyname('szdm').asstring+#39;
try
cmd_sfxm.Execute;
application.MessageBox('该项目导入成功!','提示信息',48);
//将SZDM写入调用窗体,在系统维护中定位、收费项目
except
application.MessageBox('该项目导入时出错!','提示信息',16);
end;
//application.MessageBox('该项目导入成功!','提示信息',48);
end;

end.
