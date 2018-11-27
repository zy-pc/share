unit p_xz_jhddy;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, GridsEh, DBGridEh, DB, DBGridEhGrouping;

type
  Tfrm_xz_jhddy = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    DBGridEh1: TDBGridEh;
    Button1: TButton;
    Button2: TButton;
    ds_dy: TDataSource;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_xz_jhddy: Tfrm_xz_jhddy;

implementation

uses p_dm,p_yzinput;

{$R *.dfm}

procedure Tfrm_xz_jhddy.Button1Click(Sender: TObject);
begin
  if frm_yzinput.sp_zxjl_cq_dy.State=dsEdit then
  frm_yzinput.sp_zxjl_cq_dy.post;
  close;
end;

procedure Tfrm_xz_jhddy.Button2Click(Sender: TObject);
begin
  frm_yzinput.sp_zxjl_cq_dy.first;
  while not frm_yzinput.sp_zxjl_cq_dy.Eof do
  begin
    frm_yzinput.sp_zxjl_cq_dy.Edit;
    frm_yzinput.sp_zxjl_cq_dy.FieldByName('xzbz').AsBoolean:=True;
    frm_yzinput.sp_zxjl_cq_dy.Post;
    frm_yzinput.sp_zxjl_cq_dy.Next;
  end;
  close;
end;

end.
