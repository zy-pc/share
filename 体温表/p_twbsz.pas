unit p_twbsz;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ADODB, ExtCtrls;

type
  Tfrm_twbsz = class(TForm)
    Label1: TLabel;
    cbb_twbbb: TComboBox;
    qry_twbbb: TADOQuery;
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_twbsz: Tfrm_twbsz;

implementation
    uses p_main;
{$R *.dfm}

procedure Tfrm_twbsz.Button1Click(Sender: TObject);
begin
   qry_twbbb.Edit;
   qry_twbbb.FieldByName('twbbbh').Value := cbb_twbbb.ItemIndex;
   qry_twbbb.Post;
   pub_twbbbh := cbb_twbbb.ItemIndex;
   messagebox(0,'保存成功','提示',0+64);
   close;
end;

procedure Tfrm_twbsz.Button2Click(Sender: TObject);
begin
  close;
end;

procedure Tfrm_twbsz.FormShow(Sender: TObject);
begin
    qry_twbbb.Close;
    qry_twbbb.Open;
    if qry_twbbb.FieldByName('twbbbh').AsString <> '' then
    begin
      cbb_twbbb.ItemIndex := qry_twbbb.FieldByName('twbbbh').AsInteger;
    end;
end;

end.
