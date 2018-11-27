unit p_jfxmsz;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, DB, ADODB, ComCtrls, SXSearchBox, GridsEh,
  DBGridEh;

type
  Tfrm_jfxmsz = class(TForm)
    qry_cx: TADOQuery;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel1: TPanel;
    Label1: TLabel;
    yp: TCheckBox;
    cl: TCheckBox;
    zl: TCheckBox;
    jy: TCheckBox;
    jc: TCheckBox;
    cy: TCheckBox;
    Button1: TButton;
    Button2: TButton;
    CheckBox1: TCheckBox;
    Label2: TLabel;
    Edit1: TEdit;
    Button3: TButton;
    Button4: TButton;
    TabSheet3: TTabSheet;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    Button5: TButton;
    Button6: TButton;
    TabSheet4: TTabSheet;
    CheckBox4: TCheckBox;
    Button7: TButton;
    Button8: TButton;
    Label3: TLabel;
    Label4: TLabel;
    TabSheet5: TTabSheet;
    CheckBox5: TCheckBox;
    CheckBox6: TCheckBox;
    Button9: TButton;
    Button10: TButton;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    CheckBox7: TCheckBox;
    CheckBox8: TCheckBox;
    Label8: TLabel;
    CheckBox9: TCheckBox;
    CheckBox10: TCheckBox;
    CheckBox11: TCheckBox;
    Che: TTabSheet;
    CheckBox12: TCheckBox;
    Button11: TButton;
    Button12: TButton;
    CheckBox13: TCheckBox;
    Label9: TLabel;
    Edit2: TEdit;
    CheckBox14: TCheckBox;
    TabSheet7: TTabSheet;
    Panel2: TPanel;
    GroupBox1: TGroupBox;
    Button13: TButton;
    Button14: TButton;
    Button15: TButton;
    Button16: TButton;
    DBGridEh1: TDBGridEh;
    qry_cx_bzkks: TADOQuery;
    ds_cx_bzkks: TDataSource;
    SXSearchBox1: TEdit;
    qry_cx_ksdm: TADOQuery;
    ds_cx_ksdm: TDataSource;
    DBGridEh2: TDBGridEh;
    CheckBox15: TCheckBox;
    CheckBox16: TCheckBox;
    TabSheet8: TTabSheet;
    CheckBox17: TCheckBox;
    CheckBox18: TCheckBox;
    CheckBox19: TCheckBox;
    CheckBox20: TCheckBox;
    Panel3: TPanel;
    CheckBox21: TCheckBox;
    CheckBox22: TCheckBox;
    CheckBox23: TCheckBox;
    CheckBox24: TCheckBox;
    Button17: TButton;
    RadioGroup1: TRadioGroup;
    RadioGroup2: TRadioGroup;
    rg_yzyytjbdfysz: TRadioGroup;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure ypClick(Sender: TObject);
    procedure cyClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure CheckBox5Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure CheckBox6Click(Sender: TObject);
    procedure CheckBox7Click(Sender: TObject);
    procedure CheckBox8Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Button13Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure SXSearchBox1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGridEh2Exit(Sender: TObject);
    procedure DBGridEh2KeyPress(Sender: TObject; var Key: Char);
    procedure Button17Click(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure RadioGroup2Click(Sender: TObject);
    procedure rg_yzyytjbdfyszClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_jfxmsz: Tfrm_jfxmsz;

implementation

uses p_dm;

{$R *.dfm}

procedure Tfrm_jfxmsz.Button11Click(Sender: TObject);
begin
if CheckBox12.Checked=true then
begin
DM_data.qry_pub.close;
DM_data.qry_pub.SQL.text:='update sys_xt_kg set hskkyz=1';
DM_data.qry_pub.ExecSQL;
end
else
begin
DM_data.qry_pub.close;
DM_data.qry_pub.SQL.text:='update sys_xt_kg set hskkyz=0';
DM_data.qry_pub.ExecSQL;
end;


if CheckBox13.Checked=true then
begin
DM_data.qry_pub.close;
DM_data.qry_pub.SQL.text:='update sys_xt_kg set yzkfyddjf=1';
DM_data.qry_pub.ExecSQL;
end
else
begin
DM_data.qry_pub.close;
DM_data.qry_pub.SQL.text:='update sys_xt_kg set yzkfyddjf=0';
DM_data.qry_pub.ExecSQL;
end;

if CheckBox14.Checked=true then
begin
DM_data.qry_pub.close;
DM_data.qry_pub.SQL.text:='update sys_xt_kg set sbnhbryykz=1';
DM_data.qry_pub.ExecSQL;
end
else
begin
DM_data.qry_pub.close;
DM_data.qry_pub.SQL.text:='update sys_xt_kg set sbnhbryykz=0';
DM_data.qry_pub.ExecSQL;
end;

if trim(Edit2.text)<>'' then
begin
  DM_data.qry_pub.close;
  DM_data.qry_pub.SQL.text:='update sys_xt_kg set yzktqsj='+trim(Edit2.text);
  DM_data.qry_pub.ExecSQL;
end
else
begin
  DM_data.qry_pub.close;
  DM_data.qry_pub.SQL.text:='update sys_xt_kg set yzktqsj=0';
  DM_data.qry_pub.ExecSQL;
end;
if CheckBox15.Checked=true then
begin
DM_data.qry_pub.close;
DM_data.qry_pub.SQL.text:='update sys_xt_kg set yzjfqcd=1';
DM_data.qry_pub.ExecSQL;
end
else
begin
DM_data.qry_pub.close;
DM_data.qry_pub.SQL.text:='update sys_xt_kg set yzjfqcd=0';
DM_data.qry_pub.ExecSQL;
end;

if CheckBox16.Checked=true then
begin
DM_data.qry_pub.close;
DM_data.qry_pub.SQL.text:='update sys_xt_kg set qybqfjfy=1';
DM_data.qry_pub.ExecSQL;
end
else
begin
DM_data.qry_pub.close;
DM_data.qry_pub.SQL.text:='update sys_xt_kg set qybqfjfy=0';
DM_data.qry_pub.ExecSQL;
end;

if CheckBox17.Checked = True then
begin
DM_data.qry_pub.close;
DM_data.qry_pub.SQL.text:='update sys_xt_kg set yzjfbxzys=1';
DM_data.qry_pub.ExecSQL;
end
else
begin
DM_data.qry_pub.close;
DM_data.qry_pub.SQL.text:='update sys_xt_kg set yzjfbxzys=0';
DM_data.qry_pub.ExecSQL;
end;

if CheckBox18.Checked = True then
begin
DM_data.qry_pub.close;
DM_data.qry_pub.SQL.text:='update sys_xt_kg set yzzxbnxg=1';
DM_data.qry_pub.ExecSQL;
end
else
begin
DM_data.qry_pub.close;
DM_data.qry_pub.SQL.text:='update sys_xt_kg set yzzxbnxg=0';
DM_data.qry_pub.ExecSQL;
end;

if CheckBox19.Checked = True then
begin
DM_data.qry_pub.close;
DM_data.qry_pub.SQL.text:='update sys_xt_kg set qybqfjfy=1';
DM_data.qry_pub.ExecSQL;
end
else
begin
DM_data.qry_pub.close;
DM_data.qry_pub.SQL.text:='update sys_xt_kg set qybqfjfy=0';
DM_data.qry_pub.ExecSQL;
end;

if CheckBox20.Checked = True then
begin
DM_data.qry_pub.close;
DM_data.qry_pub.SQL.text:='update sys_xt_kg set yzjfqcd=1';
DM_data.qry_pub.ExecSQL;
end
else
begin
DM_data.qry_pub.close;
DM_data.qry_pub.SQL.text:='update sys_xt_kg set yzjfqcd=0';
DM_data.qry_pub.ExecSQL;
end;


  ShowMessage('设置成功');

end;

procedure Tfrm_jfxmsz.Button12Click(Sender: TObject);
begin
close;
end;

procedure Tfrm_jfxmsz.Button13Click(Sender: TObject);
begin
  SXSearchBox1.text:='';
  Button13.Enabled:=false;
  Button15.Enabled:=True;
  Button16.Enabled:=True;
  SXSearchBox1.Enabled:=True;
end;

procedure Tfrm_jfxmsz.Button14Click(Sender: TObject);
begin
  DM_data.qry_pub.Close;
  DM_data.qry_pub.SQL.Text:='delete from  sys_bzkks where dm= '+''''+qry_cx_bzkks.FieldByName('dm').asstring+'''';
  DM_data.qry_pub.ExecSQL;
  qry_cx_bzkks.close;
  qry_cx_bzkks.SQL.text:='select b.* from sys_bzkks a,sys_ksdm b where a.dm=b.dm';
  qry_cx_bzkks.Open;
end;

procedure Tfrm_jfxmsz.Button15Click(Sender: TObject);
begin
  Button13.Enabled:=True;
  Button15.Enabled:=false;
  Button16.Enabled:=false;
  SXSearchBox1.Enabled:=false;
end;

procedure Tfrm_jfxmsz.Button16Click(Sender: TObject);
begin
  if trim(SXSearchBox1.text)<>'' then
  begin
    DM_data.qry_pub.Close;
    DM_data.qry_pub.SQL.Text:='delete from  sys_bzkks where dm= '+''''+qry_cx_ksdm.FieldByName('dm').asstring+'''';
    DM_data.qry_pub.ExecSQL;
    DM_data.qry_pub.Close;
    DM_data.qry_pub.SQL.Text:='insert into sys_bzkks select '+''''+qry_cx_ksdm.FieldByName('dm').asstring+'''';
    DM_data.qry_pub.ExecSQL;
    Button13.Enabled:=True;
    Button15.Enabled:=false;
    Button16.Enabled:=false;
    SXSearchBox1.Enabled:=false;
  end;
  qry_cx_bzkks.close;
  qry_cx_bzkks.SQL.text:='select b.* from sys_bzkks a,sys_ksdm b where a.dm=b.dm';
  qry_cx_bzkks.Open;
end;

procedure Tfrm_jfxmsz.Button17Click(Sender: TObject);
begin
  if CheckBox21.Checked = True then
  begin
  DM_data.qry_pub.close;
  DM_data.qry_pub.SQL.text:='update sys_xt_kg set bgzyp=1';
  DM_data.qry_pub.ExecSQL;
  end
  else
  begin
  DM_data.qry_pub.close;
  DM_data.qry_pub.SQL.text:='update sys_xt_kg set bgzyp=0';
  DM_data.qry_pub.ExecSQL;
  end;

  if CheckBox22.Checked = True then
  begin
  DM_data.qry_pub.close;
  DM_data.qry_pub.SQL.text:='update sys_xt_kg set ss_sqkzrsh=1';
  DM_data.qry_pub.ExecSQL;
  end
  else
  begin
  DM_data.qry_pub.close;
  DM_data.qry_pub.SQL.text:='update sys_xt_kg set ss_sqkzrsh=0';
  DM_data.qry_pub.ExecSQL;
  end;

  if CheckBox23.Checked = True then
  begin
  DM_data.qry_pub.close;
  DM_data.qry_pub.SQL.text:='update sys_xt_kg set jcbwsz=1';
  DM_data.qry_pub.ExecSQL;
  end
  else
  begin
  DM_data.qry_pub.close;
  DM_data.qry_pub.SQL.text:='update sys_xt_kg set jcbwsz=0';
  DM_data.qry_pub.ExecSQL;
  end;

  if CheckBox24.Checked = True then
  begin
  DM_data.qry_pub.close;
  DM_data.qry_pub.SQL.text:='update sys_xt_kg set sysyszxxt=1';
  DM_data.qry_pub.ExecSQL;
  end
  else
  begin
  DM_data.qry_pub.close;
  DM_data.qry_pub.SQL.text:='update sys_xt_kg set sysyszxxt=0';
  DM_data.qry_pub.ExecSQL;
  end;

  ShowMessage('修改成功');

end;

procedure Tfrm_jfxmsz.Button1Click(Sender: TObject);
begin
DM_data.qry_pub.close;
DM_data.qry_pub.SQL.text:='delete from zybl_bsflb';
DM_data.qry_pub.ExecSQL;
if yp.Checked=true then
begin
DM_data.qry_pub.close;
DM_data.qry_pub.SQL.text:='insert into zybl_bsflb values('''+'药品'+''')';
DM_data.qry_pub.ExecSQL;
end;
if cl.Checked=true then
begin
DM_data.qry_pub.close;
DM_data.qry_pub.SQL.text:='insert into zybl_bsflb values('''+'材料'+''')';
DM_data.qry_pub.ExecSQL;
end;
if zl.Checked=true then
begin
DM_data.qry_pub.close;
DM_data.qry_pub.SQL.text:='insert into zybl_bsflb values('''+'治疗'+''')';
DM_data.qry_pub.ExecSQL;
end;
if jy.Checked=true then
begin
DM_data.qry_pub.close;
DM_data.qry_pub.SQL.text:='insert into zybl_bsflb values('''+'检验'+''')';
DM_data.qry_pub.ExecSQL;
end;
if jc.Checked=true then
begin
DM_data.qry_pub.close;
DM_data.qry_pub.SQL.text:='insert into zybl_bsflb values('''+'检查'+''')';
DM_data.qry_pub.ExecSQL;
end;
if cy.Checked=true then
begin
DM_data.qry_pub.close;
DM_data.qry_pub.SQL.text:='insert into zybl_bsflb values('''+'成药'+''')';
DM_data.qry_pub.ExecSQL;
end;

ShowMessage('设置成功！');



end;

procedure Tfrm_jfxmsz.Button2Click(Sender: TObject);
begin
close;

end;

procedure Tfrm_jfxmsz.Button3Click(Sender: TObject);
begin
if (CheckBox1.Checked=true) and (trim(edit1.Text)='') then
begin
  ShowMessage('启用不转科方式必须填写ICU科室代码！');
  Abort;
end;

if (CheckBox1.Checked=false) and (trim(edit1.Text)<>'') then
begin
  ShowMessage('不启用不转科方式不能填写ICU科室代码！');
  Edit1.text:='';
  Abort;
end;

if CheckBox1.Checked=true then
begin
DM_data.qry_pub.close;
DM_data.qry_pub.SQL.text:='update sys_xt_kg set icujffs=1,icudm='+''''+edit1.text+'''';
DM_data.qry_pub.ExecSQL;
end
else
begin
DM_data.qry_pub.close;
DM_data.qry_pub.SQL.text:='update sys_xt_kg set icujffs=0,icudm='+''''+edit1.text+'''';
DM_data.qry_pub.ExecSQL;
end;

end;

procedure Tfrm_jfxmsz.Button5Click(Sender: TObject);
begin
if CheckBox2.Checked=true then
begin
DM_data.qry_pub.close;
DM_data.qry_pub.SQL.text:='update sys_xt_kg set xzzxr=1';
DM_data.qry_pub.ExecSQL;
end
else
begin
DM_data.qry_pub.close;
DM_data.qry_pub.SQL.text:='update sys_xt_kg set xzzxr=0';
DM_data.qry_pub.ExecSQL;
end;

if CheckBox3.Checked=true then
begin
DM_data.qry_pub.close;
DM_data.qry_pub.SQL.text:='update sys_xt_kg set yssljf=1';
DM_data.qry_pub.ExecSQL;
end
else
begin
DM_data.qry_pub.close;
DM_data.qry_pub.SQL.text:='update sys_xt_kg set yssljf=0';
DM_data.qry_pub.ExecSQL;
end;

end;

procedure Tfrm_jfxmsz.Button7Click(Sender: TObject);
begin
if CheckBox4.Checked=true then
begin
DM_data.qry_pub.close;
DM_data.qry_pub.SQL.text:='update sys_xt_kg set qyzdjf=1';
DM_data.qry_pub.ExecSQL;
end
else
begin
DM_data.qry_pub.close;
DM_data.qry_pub.SQL.text:='update sys_xt_kg set qyzdjf=0';
DM_data.qry_pub.ExecSQL;
end;

if CheckBox10.Checked=true then
begin
DM_data.qry_pub.close;
DM_data.qry_pub.SQL.text:='update sys_xt_kg set tjxzyf=1';
DM_data.qry_pub.ExecSQL;
end
else
begin
DM_data.qry_pub.close;
DM_data.qry_pub.SQL.text:='update sys_xt_kg set tjxzyf=0';
DM_data.qry_pub.ExecSQL;
end;

if CheckBox11.Checked=true then
begin
DM_data.qry_pub.close;
DM_data.qry_pub.SQL.text:='update sys_xt_kg set yztjjf=1';
DM_data.qry_pub.ExecSQL;
end
else
begin
DM_data.qry_pub.close;
DM_data.qry_pub.SQL.text:='update sys_xt_kg set yztjjf=0';
DM_data.qry_pub.ExecSQL;
end;

end;

procedure Tfrm_jfxmsz.Button9Click(Sender: TObject);
begin
if CheckBox5.Checked=true then
begin
DM_data.qry_pub.close;
DM_data.qry_pub.SQL.text:='update sys_xt_kg set jhdzz=''A4''';
DM_data.qry_pub.ExecSQL;
end
else if CheckBox6.Checked=true then
begin
DM_data.qry_pub.close;
DM_data.qry_pub.SQL.text:='update sys_xt_kg set jhdzz=''B5''';
DM_data.qry_pub.ExecSQL;
end
else
begin
  DM_data.qry_pub.close;
  DM_data.qry_pub.SQL.text:='update sys_xt_kg set jhdzz=''A3''';
  DM_data.qry_pub.ExecSQL;
end;

if CheckBox7.Checked=true then
begin
DM_data.qry_pub.close;
DM_data.qry_pub.SQL.text:='update sys_xt_kg set yzdyfs=0';
DM_data.qry_pub.ExecSQL;
end
else
begin
DM_data.qry_pub.close;
DM_data.qry_pub.SQL.text:='update sys_xt_kg set yzdyfs=1';
DM_data.qry_pub.ExecSQL;
end;

if CheckBox9.Checked=true then
begin
DM_data.qry_pub.close;
DM_data.qry_pub.SQL.text:='update sys_xt_kg set jytmdywjf=1';
DM_data.qry_pub.ExecSQL;
end
else
begin
DM_data.qry_pub.close;
DM_data.qry_pub.SQL.text:='update sys_xt_kg set jytmdywjf=0';
DM_data.qry_pub.ExecSQL;
end;



end;

procedure Tfrm_jfxmsz.CheckBox5Click(Sender: TObject);
begin
//  if CheckBox5.Checked then
//  begin
//     CheckBox5.Checked := False;
//     CheckBox6.checked :=True;
//  end
//  else
//  begin
//     CheckBox5.Checked := true;
//     CheckBox6.Checked :=false;
//  end;
end;

procedure Tfrm_jfxmsz.CheckBox6Click(Sender: TObject);
begin
//  if CheckBox6.Checked then
//  begin
//     CheckBox6.Checked := False;
//     CheckBox5.checked :=True;
//  end
//  else
//  begin
//     CheckBox6.Checked := true;
//     CheckBox5.Checked :=false;
//  end;
end;

procedure Tfrm_jfxmsz.CheckBox7Click(Sender: TObject);
begin
//  if CheckBox7.Checked then
//  begin
//     CheckBox7.Checked := False;
//     CheckBox8.Checked :=True;
//  end
//  else
//  begin
//     CheckBox7.Checked := true;
//     CheckBox8.Checked :=false;
//  end;

end;

procedure Tfrm_jfxmsz.CheckBox8Click(Sender: TObject);
begin
//  if CheckBox8.Checked then
//  begin
//     CheckBox8.Checked := False;
//     CheckBox7.checked :=True;
//  end
//  else
//  begin
//     CheckBox8.Checked := true;
//     CheckBox7.Checked :=false;
//  end;
end;

procedure Tfrm_jfxmsz.cyClick(Sender: TObject);
begin
ShowMessage('不能选择成药不进行自动记费！');
cy.Checked:=false;
end;

procedure Tfrm_jfxmsz.DBGridEh2Exit(Sender: TObject);
begin
  DBGridEh2.Visible:=false;  
end;

procedure Tfrm_jfxmsz.DBGridEh2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    SXSearchBox1.Text:=Trim(qry_cx_ksdm.FieldByName('mc').AsString);
    SXSearchBox1.SetFocus;
  end;
end;

procedure Tfrm_jfxmsz.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if not ( ( key in ['0'..'9', #8] ) ) then
  begin
    key := #0;
  end;
end;

procedure Tfrm_jfxmsz.SXSearchBox1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    if Trim(SXSearchBox1.Text)<>'' then
    begin
      qry_cx_ksdm.Close;
      qry_cx_ksdm.SQL.text:='select * from sys_ksdm where sybz=1 and kssx=''09'' and (pym like ''%'+
      Trim(SXSearchBox1.Text)+'%'''+' or dm='+''''+Trim(SXSearchBox1.Text)+''''+' or '+
      ' mc like ''%'+Trim(SXSearchBox1.Text)+'%'''+')';
      qry_cx_ksdm.Open;
      if qry_cx_ksdm.RecordCount=1 then
        SXSearchBox1.Text:=Trim(qry_cx_ksdm.FieldByName('mc').asstring)
      else if qry_cx_ksdm.RecordCount>1 then
      begin
        DBGridEh2.Visible:=true;
        DBGridEh2.SetFocus;
      end
      else
      begin

      end;

    end;
  end;
end;

procedure Tfrm_jfxmsz.FormShow(Sender: TObject);
begin
yp.Checked:=False;
cl.Checked:=False;
zl.Checked:=False;
jy.Checked:=False;
jc.Checked:=False;
cy.Checked:=False;
qry_cx.close;
qry_cx.SQL.text:='select * from zybl_bsflb';
qry_cx.Open;
qry_cx.First;
while not qry_cx.Eof  do
begin
  if qry_cx.FieldByName('lbmc').AsString='药品' then
  begin
  yp.Checked:=true;
  end
  else if qry_cx.FieldByName('lbmc').AsString='材料' then
  begin
  cl.Checked:=true;
  end
  else if qry_cx.FieldByName('lbmc').AsString='治疗' then
  begin
  zl.Checked:=true;
  end
  else if qry_cx.FieldByName('lbmc').AsString='检验' then
  begin
  jy.Checked:=true;
  end
  else if qry_cx.FieldByName('lbmc').AsString='检查' then
  begin
  jc.Checked:=true;
  end
  else
  begin
  cy.Checked:=true;
  end;
  qry_cx.Next;
end;

  qry_cx_bzkks.close;
  qry_cx_bzkks.SQL.text:='select b.* from sys_bzkks a,sys_ksdm b where a.dm=b.dm';
  qry_cx_bzkks.Open;

qry_cx.close;
qry_cx.SQL.text:='select * from sys_xt_kg';
qry_cx.Open;
if qry_cx.FieldByName('icujffs').AsBoolean=true then
begin
  CheckBox1.Checked:=True;
end
else
begin
  CheckBox1.Checked:=false;
end;

if qry_cx.FieldByName('xzzxr').AsBoolean=true then
begin
  CheckBox2.Checked:=True;
end
else
begin
  CheckBox2.Checked:=false;
end;


if qry_cx.FieldByName('yssljf').AsBoolean=true then
begin
  CheckBox3.Checked:=True;
end
else
begin
  CheckBox3.Checked:=false;
end;

if qry_cx.FieldByName('qyzdjf').AsBoolean=true then
begin
  CheckBox4.Checked:=true;
end
else
begin
  CheckBox4.Checked:=false;
end;

Edit1.text:=qry_cx.FieldByName('icudm').AsString;


if qry_cx.FieldByName('yzdyfs').AsBoolean then
begin
  CheckBox7.Checked:=false;
  CheckBox8.Checked:=true;
end
else
begin
  CheckBox7.Checked:=true;
  CheckBox8.Checked:=false;
end;



if qry_cx.FieldByName('jytmdywjf').AsBoolean=true then
begin
  CheckBox9.Checked:=True;
end
else
begin
  CheckBox9.Checked:=false;
end;


if qry_cx.FieldByName('jhdzz').Asstring='A4' then
begin
    CheckBox6.Checked:=false;
    CheckBox5.Checked:=true;
end
else if qry_cx.FieldByName('jhdzz').Asstring='B5' then
begin
    CheckBox6.Checked:=true;
    CheckBox5.Checked:=false;
end
else
begin
  CheckBox6.Checked:=false;
  CheckBox5.Checked:=false;
end;


if qry_cx.FieldByName('tjxzyf').AsBoolean=true then
begin
    CheckBox10.Checked:=true;
end
else
begin
    CheckBox10.Checked:=false;
end;

if qry_cx.FieldByName('yztjjf').AsBoolean=true then
begin
    CheckBox11.Checked:=true;
end
else
begin
    CheckBox11.Checked:=false;
end;


if qry_cx.FieldByName('hskkyz').AsBoolean=true then
begin
    CheckBox12.Checked:=true;
end
else
begin
    CheckBox12.Checked:=false;
end;


if qry_cx.FieldByName('yzkfyddjf').AsBoolean=true then
begin
    CheckBox13.Checked:=true;
end
else
begin
    CheckBox13.Checked:=false;
end;
if qry_cx.FieldByName('sbnhbryykz').AsBoolean=true then
begin
    CheckBox14.Checked:=true;
end
else
begin
    CheckBox14.Checked:=false;
end;
if qry_cx.FieldByName('yzjfqcd').AsBoolean=true then
begin
    CheckBox15.Checked:=true;
end
else
begin
    CheckBox15.Checked:=false;
end;
if qry_cx.FieldByName('qybqfjfy').AsBoolean=true then
begin
    CheckBox16.Checked:=true;
end
else
begin
    CheckBox16.Checked:=false;
end;
if qry_cx.FieldByName('yzjfbxzys').AsBoolean=true then
begin
    CheckBox17.Checked:=true;
end
else
begin
    CheckBox17.Checked:=false;
end;
if qry_cx.FieldByName('yzzxbnxg').AsBoolean=true then
begin
    CheckBox18.Checked:=true;
end
else
begin
    CheckBox18.Checked:=false;
end;
if qry_cx.FieldByName('qybqfjfy').AsBoolean=true then
begin
    CheckBox19.Checked:=true;
end
else
begin
    CheckBox19.Checked:=false;
end;
if qry_cx.FieldByName('yzjfqcd').AsBoolean=true then
begin
    CheckBox20.Checked:=true;
end
else
begin
    CheckBox20.Checked:=false;
end;
  edit2.text:=qry_cx.FieldByName('yzktqsj').asstring;




if qry_cx.FieldByName('ysypcan').AsBoolean=True then //--初始化医生抗生素设置开关
  RadioGroup1.ItemIndex := 1
else  RadioGroup1.ItemIndex := 0;

if qry_cx.FieldByName('twbxbb').AsBoolean=True then //--体温表设置开关
  RadioGroup2.ItemIndex := 1
else  RadioGroup2.ItemIndex := 0;

if qry_cx.FieldByName('yzyytjbdfysz').AsBoolean=True then //--医嘱用药途径绑定费用
  rg_yzyytjbdfysz.ItemIndex := 1
else  rg_yzyytjbdfysz.ItemIndex := 0;


if qry_cx.FieldByName('bgzyp').AsBoolean=true then
begin
    CheckBox21.Checked:=true;
end
else
begin
    CheckBox21.Checked:=false;
end;
if qry_cx.FieldByName('ss_sqkzrsh').AsBoolean=true then
begin
    CheckBox22.Checked:=true;
end
else
begin
    CheckBox22.Checked:=false;
end;
if qry_cx.FieldByName('jcbwsz').AsBoolean=true then
begin
    CheckBox23.Checked:=true;
end
else
begin
    CheckBox23.Checked:=false;
end;
if qry_cx.FieldByName('sysyszxxt').AsBoolean=true then
begin
    CheckBox24.Checked:=true;
end
else
begin
    CheckBox24.Checked:=false;
end;

end;


procedure Tfrm_jfxmsz.RadioGroup1Click(Sender: TObject);
var
  sqlstr: string;
begin

  if RadioGroup1.ItemIndex = 0 then
  begin
     sqlstr := 'update sys_xt_kg set ysypcan=0'
  end
  else if RadioGroup1.ItemIndex = 1 then
  begin
     sqlstr := 'update sys_xt_kg set ysypcan=1'
  end;

  DM_data.qry_pub.close;
  DM_data.qry_pub.SQL.text := sqlstr;
  DM_data.qry_pub.ExecSQL;
end;

procedure Tfrm_jfxmsz.RadioGroup2Click(Sender: TObject);
var
  sqlstr: string;
begin

  if RadioGroup2.ItemIndex = 0 then
  begin
     sqlstr := 'update sys_xt_kg set twbxbb=0'
  end
  else if RadioGroup2.ItemIndex = 1 then
  begin
     sqlstr := 'update sys_xt_kg set twbxbb=1'
  end;

  DM_data.qry_pub.close;
  DM_data.qry_pub.SQL.text := sqlstr;
  DM_data.qry_pub.ExecSQL;
end;

procedure Tfrm_jfxmsz.rg_yzyytjbdfyszClick(Sender: TObject);
var
  sqlstr: string;
begin

  if rg_yzyytjbdfysz.ItemIndex = 0 then
  begin
     sqlstr := 'update sys_xt_kg set yzyytjbdfysz=0'
  end
  else if rg_yzyytjbdfysz.ItemIndex = 1 then
  begin
     sqlstr := 'update sys_xt_kg set yzyytjbdfysz=1'
  end;

  DM_data.qry_pub.close;
  DM_data.qry_pub.SQL.text := sqlstr;
  DM_data.qry_pub.ExecSQL;
end;

procedure Tfrm_jfxmsz.ypClick(Sender: TObject);
begin
ShowMessage('不能选择药品不进行自动记费！');
yp.Checked:=false;
end;

end.
