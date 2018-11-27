unit p_psypdm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, GridsEh, DBGridEh, DB, ADODB;

type
  Tfrm_psypdm = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    GroupBox2: TGroupBox;
    Panel3: TPanel;
    Edit1: TEdit;
    Button1: TButton;
    DBGridEh1: TDBGridEh;
    GroupBox1: TGroupBox;
    Panel4: TPanel;
    DBGridEh2: TDBGridEh;
    Edit2: TEdit;
    Button2: TButton;
    GroupBox3: TGroupBox;
    Button3: TButton;
    Button4: TButton;
    qry_cx_yzxm: TADOQuery;
    ds_cx_yzxm: TDataSource;
    ds_cx_ypdm: TDataSource;
    qry_cx_ypdm: TADOQuery;
    DBGridEh3: TDBGridEh;
    qry_cx_ydmxm: TADOQuery;
    ds_cx_ydmxm: TDataSource;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_psypdm: Tfrm_psypdm;

implementation

uses p_dm,p_func;

{$R *.dfm}

procedure Tfrm_psypdm.Button1Click(Sender: TObject);
begin
  qry_cx_ypdm.close;
  qry_cx_ypdm.sql.Text:='select * from sys_ypdm where ypdm like ''%'+Edit1.text+'%'''+
  ' or '+' ypbm1 like ''%'+Edit1.text+'%'''+
  ' or '+' ypbm2 like ''%'+Edit1.text+'%'''+
  ' or '+' ypmc like ''%'+Edit1.text+'%'''+
  ' or '+' zjm like ''%'+Edit1.text+'%'''+' and sybz=1';
  qry_cx_ypdm.Open;

end;

procedure Tfrm_psypdm.Button2Click(Sender: TObject);
begin
  qry_cx_yzxm.close;
  qry_cx_yzxm.sql.Text:='select * from sys_yzxm where xmdm like ''%'+Edit2.text+'%'''+
  ' or '+' xmmc like ''%'+Edit2.text+'%'''+
  ' or '+' pym like ''%'+Edit2.text+'%'''+' and qybz=1';
  qry_cx_yzxm.Open;

end;

procedure Tfrm_psypdm.Button3Click(Sender: TObject);
begin
  try
    DM_data.qry_pub.close;
    DM_data.qry_pub.SQL.Text:='delete from sys_psypdm where id='+qry_cx_ydmxm.FieldByName('id').asstring;
    DM_data.qry_pub.ExecSQL;
    Application.MessageBox('删除成功！', '提示', MB_OK + MB_ICONINFORMATION);
    qry_cx_ydmxm.Close;
    qry_cx_ydmxm.sql.Text:='select a.id,b.xmdm,b.xmmc,b.dw,c.ypmc,c.ypgg from sys_psypdm a,sys_yzxm b,sys_ypdm c'+
    ' where '+
    ' a.yzdm=b.xmdm and a.ypdm=c.ypdm order by b.xmdm';
    qry_cx_ydmxm.Open;
  except
        Application.MessageBox('删除失败！', '提示', MB_OK +
      MB_ICONSTOP);
  end;
end;

procedure Tfrm_psypdm.DBGridEh1DblClick(Sender: TObject);
begin
  DM_data.qry_pub.close;
  DM_data.qry_pub.SQL.Text:='select * from sys_psypdm where yzdm='+''''+
  qry_cx_yzxm.FieldByName('xmdm').asstring+''''+' and ypdm='+''''+
  qry_cx_ypdm.FieldByName('ypdm').asstring+'''';
  DM_data.qry_pub.Open;
  if not DM_data.qry_pub.IsEmpty then
  begin
    Application.MessageBox('该药品对该医嘱皮试项目已经对码！', '提示', MB_OK +
      MB_ICONSTOP);
      Exit;
  end;
  try
    DM_data.qry_pub.close;
    DM_data.qry_pub.SQL.Text:='insert sys_psypdm(yzdm,ypdm) select '+''''+
    qry_cx_yzxm.FieldByName('xmdm').asstring+''''+','+''''+
    qry_cx_ypdm.FieldByName('ypdm').asstring+'''';
    DM_data.qry_pub.ExecSQL;
  except
        Application.MessageBox('对码失败！', '提示', MB_OK +
      MB_ICONSTOP);
  end;
    qry_cx_ydmxm.Close;
    qry_cx_ydmxm.sql.Text:='select a.id,b.xmdm,b.xmmc,b.dw,c.ypmc,c.ypgg from sys_psypdm a,sys_yzxm b,sys_ypdm c'+
    ' where '+
    ' a.yzdm=b.xmdm and a.ypdm=c.ypdm order by b.xmdm';
    qry_cx_ydmxm.Open;

end;

procedure Tfrm_psypdm.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
  begin
    Button1.OnClick(self);
  end;
end;

procedure Tfrm_psypdm.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
  begin
    Button2.OnClick(self);
  end;
end;

procedure Tfrm_psypdm.FormShow(Sender: TObject);
begin
    qry_cx_ydmxm.Close;
    qry_cx_ydmxm.sql.Text:='select a.id,b.xmdm,b.xmmc,b.dw,c.ypmc,c.ypgg from sys_psypdm a,sys_yzxm b,sys_ypdm c'+
    ' where '+
    ' a.yzdm=b.xmdm and a.ypdm=c.ypdm order by b.xmdm';
    qry_cx_ydmxm.Open;
end;

end.
