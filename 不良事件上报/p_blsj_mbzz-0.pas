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
qry_temp.close;
ls:='insert into blsj_ctmb(lb,txxm,yy,ksdm) select '+#39+trim(combobox1.Text)+#39+','+#39+trim(combobox2.Text)+#39+','+#39+trim(memo1.Text)+#39+','+#39+pub_ksdm+#39;
qry_temp.SQL.Add(ls);
qry_temp.ExecSQL;
memo1.Clear;
end;

procedure Tfrm_blsj_mbzz.Button2Click(Sender: TObject);
begin

 application.CreateForm(Tfrm_blsj_bqgcyy, frm_blsj_bqgcyy);
  try
    frm_blsj_bqgcyy.sjlb:='护理事件';
    frm_blsj_bqgcyy.ShowModal;
  finally
    frm_blsj_bqgcyy.free;
  end;

end;

procedure Tfrm_blsj_mbzz.ComboBox1Exit(Sender: TObject);
begin
if combobox1.Text='护理事件' then
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
end;

procedure Tfrm_blsj_mbzz.FormShow(Sender: TObject);
begin
 memo1.Text:='';
end;

end.
