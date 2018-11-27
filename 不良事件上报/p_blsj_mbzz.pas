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
Application.MessageBox('�¼������д���ģ�����ݲ���Ϊ��!', '������ʾ', 16);
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
if combobox1.Text='�������¼�' then
begin
combobox2.Items.Clear;
 combobox2.Items.Add('�Ƿ���ɻ�������');
 combobox2.Items.Add('�Ƿ���ɻ�ʿ����');
 combobox2.Items.Add('�Ƿ����ҽ������');
 combobox2.Items.Add('��Ҫ����������Ҫ��');
 combobox2.Items.Add('���ҸĽ����');
 combobox2.Items.Add('��Ʋ�ָ���������');
 combobox2.Items.Add('����ָ���������');
end;
if combobox1.Text='ѹ����������' then
begin
combobox2.Items.Clear;
combobox2.Items.Add('Ŀǰ�����ʩ');
combobox2.Items.Add('��ע');
end;
if combobox1.Text='Ժ��ѹ��' then
begin
combobox2.Items.Clear;
combobox2.Items.Add('����ȫ�����');
combobox2.Items.Add('ѹ��״��');
combobox2.Items.Add('Ŀǰ�����ʩ');
end;
if combobox1.Text='Ժ��ѹ��' then
begin
combobox2.Items.Clear;
combobox2.Items.Add('��ʷ������');
combobox2.Items.Add('ѹ��״��');
combobox2.Items.Add('Ŀǰ�����ʩ');
end;
if combobox1.Text='ҽ�ư�ȫ(����)�¼�����' then
begin
combobox2.Items.Clear;
combobox2.Items.Add('�¼�����');
combobox2.Items.Add('�����¼���ԭ��');
combobox2.Items.Add('�¼��������');
combobox2.Items.Add('�����¼�����');
combobox2.Items.Add('�����Ľ���ʩ');
end;
end;

procedure Tfrm_blsj_mbzz.FormShow(Sender: TObject);
begin
 memo1.Text:='';
end;

end.
