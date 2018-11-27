unit p_blsj_mbzz;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ADODB;

type
  Tfrm_blsj_mbzz = class(TForm)
    Memo1: TMemo;
    ComboBox1: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    ComboBox2: TComboBox;
    Button1: TButton;
    Button2: TButton;
    qry_temp: TADOQuery;
    procedure FormShow(Sender: TObject);
    procedure ComboBox1Exit(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_blsj_mbzz: Tfrm_blsj_mbzz;

implementation

{$R *.dfm}

 uses p_dm,p_blsj_bqgcyy;


procedure Tfrm_blsj_mbzz.Button1Click(Sender: TObject);
var
ls:string;
begin
if (trim(combobox1.Text)<>'') and  (trim(combobox2.Text)<>'') and  (trim(memo1.Text)<>'') then
begin
qry_temp.close;
ls:='insert into blsj_ctmb(lb,txxm,yy,ksdm) select '+#39+trim(combobox1.Text)+#39+','+#39+trim(combobox2.Text)+#39+','+#39+trim(memo1.Text)+#39+','+#39+pub_ksdm+#39;
qry_temp.SQL.Add(ls);
qry_temp.ExecSQL;
memo1.Clear;
end
else
Application.MessageBox('事件类别，填写大项，模板内容不能为空!', '错误提示', 16);
end;

procedure Tfrm_blsj_mbzz.Button2Click(Sender: TObject);
begin

 application.CreateForm(Tfrm_blsj_bqgcyy, frm_blsj_bqgcyy);
  try
    frm_blsj_bqgcyy.sjlb:=trim(combobox1.Text);
    frm_blsj_bqgcyy.ShowModal;
  finally
    frm_blsj_bqgcyy.free;
  end;

end;

procedure Tfrm_blsj_mbzz.ComboBox1Exit(Sender: TObject);
begin
if combobox1.Text='护理不良事件' then
begin
combobox2.Items.Clear;
 combobox2.Items.Add('是否造成患者损伤');
 combobox2.Items.Add('是否造成护士损伤');
 combobox2.Items.Add('是否造成医患纠纷');
 combobox2.Items.Add('简要经过及处置要点');
 combobox2.Items.Add('科室改进意见');
 combobox2.Items.Add('大科部指导或解决情况');
 combobox2.Items.Add('护理部指导或解决情况');
end;
if combobox1.Text='压疮风险评估' then
begin
combobox2.Items.Clear;
combobox2.Items.Add('目前护理措施');
combobox2.Items.Add('备注');
end;
if combobox1.Text='院内压疮' then
begin
combobox2.Items.Clear;
combobox2.Items.Add('患者全身情况');
combobox2.Items.Add('压疮状况');
combobox2.Items.Add('目前护理措施');
end;
if combobox1.Text='院外压疮' then
begin
combobox2.Items.Clear;
combobox2.Items.Add('病史及主诉');
combobox2.Items.Add('压疮状况');
combobox2.Items.Add('目前护理措施');
end;
if combobox1.Text='医疗安全(不良)事件报告' then
begin
combobox2.Items.Clear;
combobox2.Items.Add('事件经过');
combobox2.Items.Add('导致事件的原因');
combobox2.Items.Add('事件处理情况');
combobox2.Items.Add('不良事件评价');
combobox2.Items.Add('持续改进措施');
end;
end;

procedure Tfrm_blsj_mbzz.FormShow(Sender: TObject);
begin
 memo1.Text:='';
end;

end.
