unit p_dzbl_dybcys;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, DB, ADODB;

type
  Tfrm_dzbl_dybcys = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    ComboBox1: TComboBox;
    Button1: TButton;
    Button2: TButton;
    qry_cx: TADOQuery;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
     pb_zyh:string;
    { Public declarations }
  end;

var
  frm_dzbl_dybcys: Tfrm_dzbl_dybcys;

implementation

{$R *.dfm}
uses p_dm,P_dzbl_main;

procedure Tfrm_dzbl_dybcys.Button1Click(Sender: TObject);
begin
  if trim(ComboBox1.Text)='' then
  begin
    Application.MessageBox('请选择一个元素导入！', '错误', MB_OK +
    MB_ICONSTOP);
    Exit;
  end
  else
  begin
    Frm_dzbl_main.xzdrys:= trim(ComboBox1.Text);
    Close;
  end;
end;

procedure Tfrm_dzbl_dybcys.Button2Click(Sender: TObject);
begin
  Close;
end;

procedure Tfrm_dzbl_dybcys.FormShow(Sender: TObject);
begin
  ComboBox1.Clear;
  qry_cx.Close;
  qry_cx.sql.text:='select * from zydzbl_ysbc where zyh='+''''+pb_zyh+'''';
  qry_cx.Open;
  qry_cx.First;
  while not qry_cx.eof do
  begin
    ComboBox1.Items.Add(qry_cx.FieldByName('blmc').asstring);
    qry_cx.Next;
  end;

end;

end.
