unit p_ztsz;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, GridsEh, DBGridEh, ExtCtrls, DB, ADODB;

type
  Tfrm_ztsz = class(TForm)
    Panel2: TPanel;
    Panel1: TPanel;
    DBGridEh1: TDBGridEh;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    qry_cx_ztlb: TADOQuery;
    ds_cx_ztlb: TDataSource;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_ztsz: Tfrm_ztsz;

implementation

uses p_dm;
{$R *.dfm}

procedure Tfrm_ztsz.Button1Click(Sender: TObject);
begin
  qry_cx_ztlb.Append;
end;

procedure Tfrm_ztsz.Button2Click(Sender: TObject);
begin
  try
    qry_cx_ztlb.Post;
    qry_cx_ztlb.UpdateBatch(arall);
    Application.MessageBox('保存成功！', '提示', MB_OK + MB_ICONINFORMATION);
  except
    Application.MessageBox('保存失败！', '提示', MB_OK + MB_ICONSTOP);
  end;
end;

procedure Tfrm_ztsz.Button3Click(Sender: TObject);
begin
  try
    qry_cx_ztlb.delete;
    qry_cx_ztlb.UpdateBatch(arall);
    Application.MessageBox('删除成功！', '提示', MB_OK + MB_ICONINFORMATION);
  except
    Application.MessageBox('删除失败！', '提示', MB_OK + MB_ICONSTOP);
  end;

end;

procedure Tfrm_ztsz.Button4Click(Sender: TObject);
begin
  close;
end;

procedure Tfrm_ztsz.FormShow(Sender: TObject);
begin
  qry_cx_ztlb.Close;
  qry_cx_ztlb.SQL.Text:='select * from sys_brzt order by dm';
  qry_cx_ztlb.Open;
end;

end.
