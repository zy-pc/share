unit p_zyyzjcbw;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls,p_dm;

type
  Tfrm_yzjcbw = class(TForm)
    ComboBox1: TComboBox;
    Label1: TLabel;
    Button1: TButton;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_yzjcbw: Tfrm_yzjcbw;

implementation

{$R *.dfm}

procedure Tfrm_yzjcbw.FormCreate(Sender: TObject);
begin
  DM_data.qry_pub.Close;
  DM_data.qry_pub.SQL.Text := 'select * from sys_jcbw';
  DM_data.qry_pub.Open;
  DM_data.qry_pub.First;
  ComboBox1.Clear;
  ComboBox1.Items.Add('нч');
  while not DM_data.qry_pub.Eof do
  begin
    ComboBox1.Items.Add(Trim(DM_data.qry_pub.FieldByName('mc').AsString));
    DM_data.qry_pub.Next;
  end;
end;

procedure Tfrm_yzjcbw.FormShow(Sender: TObject);
begin
  ComboBox1.ItemIndex := -1;
end;

end.
