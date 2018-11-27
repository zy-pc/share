unit p_ljzxxz;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ADODB;

type
  Tfrm_ljzxxz = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Memo1: TMemo;
    Label1: TLabel;
    qry_in_byyy: TADOQuery;
    qry_cx_byyy: TADOQuery;
    Label2: TLabel;
    Memo2: TMemo;
    Button4: TButton;
    Label3: TLabel;
    Memo3: TMemo;
    Button5: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    ljxz:string;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_ljzxxz: Tfrm_ljzxxz;
  function func_ljxz():string;

implementation

uses p_yzinput,p_dm;

{$R *.dfm}
function func_ljxz():string;
var res : string;
begin
  Application.CreateForm(Tfrm_ljzxxz,frm_ljzxxz);
  frm_ljzxxz.ShowModal;
  res := frm_ljzxxz.ljxz;
  frm_ljzxxz.Free;
  Result:=res;
end;


procedure Tfrm_ljzxxz.Button1Click(Sender: TObject);
begin
  if trim(Memo3.Text)='' then
  begin
    Application.MessageBox('必须填写阶段评估报告！', '提示', MB_OK +
      MB_ICONINFORMATION);
    Exit;
  end;
  ljxz:='0';
  frm_yzinput.byyy:=Memo1.Text+#13+#10+'【评估报告】：'+memo3.text;
  Close;

end;

procedure Tfrm_ljzxxz.Button2Click(Sender: TObject);
begin
  if trim(Memo3.Text)='' then
  begin
    Application.MessageBox('必须填写阶段评估报告！', '提示', MB_OK +
      MB_ICONINFORMATION);
    Exit;
  end;
  ljxz:='1';
  frm_yzinput.byyy:=Memo1.Text+#13+#10+'【评估报告】：'+memo3.text;
  Close;
end;

procedure Tfrm_ljzxxz.Button3Click(Sender: TObject);
begin
  if trim(Memo3.Text)='' then
  begin
    Application.MessageBox('必须填写阶段评估报告！', '提示', MB_OK +
      MB_ICONINFORMATION);
    Exit;
  end;
  ljxz:='2';
  frm_yzinput.byyy:=Memo1.Text+#13+#10+'【评估报告】：'+memo3.text;
  Close;
end;

procedure Tfrm_ljzxxz.Button4Click(Sender: TObject);
begin
  ljxz:='';
  frm_yzinput.byyy:=Memo1.Text;
  Close;
end;

procedure Tfrm_ljzxxz.Button5Click(Sender: TObject);
begin
  if trim(Memo3.Text)='' then
  begin
    Application.MessageBox('必须填写阶段评估报告！', '提示', MB_OK +
      MB_ICONINFORMATION);
    Exit;
  end;
  ljxz:='3';
  frm_yzinput.byyy:=Memo1.Text+#13+#10+'【评估报告】：'+memo3.text;
  Close;
end;

procedure Tfrm_ljzxxz.FormShow(Sender: TObject);
begin
  ljxz:='';
  Memo1.Text:='';
  Memo1.text:= frm_yzinput.byyy;
  Memo2.Text:='';
  Memo2.text:= frm_yzinput.yzbyyy;
  Memo3.text:='';
  if (Trim(frm_yzinput.byyy)='') and (trim(frm_yzinput.yzbyyy)='') then
  begin
    Memo1.Enabled:=False;
    Memo2.Enabled:=false;
    Button1.Enabled:=False;
    Button2.Enabled:=False;
    Button3.Enabled:=False;
  end;
end;

end.
