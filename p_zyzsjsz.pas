unit p_zyzsjsz;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxControls, cxGridCustomView, cxGrid, StdCtrls,
  ExtCtrls, Grids, DBGrids, ADODB;

type
  Tfrm_zyzsjsz = class(TForm)
    Panel1: TPanel;
    GroupBox2: TGroupBox;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxGrid1DBTableView1Column3: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    Edit1: TEdit;
    Button1: TButton;
    Button3: TButton;
    qry_yp: TADOQuery;
    ds_yp: TDataSource;
    qry_yplb: TADOQuery;
    ds_yplb: TDataSource;
    Button2: TButton;
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1Exit(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    prv_kl:string;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_zyzsjsz: Tfrm_zyzsjsz;

implementation

{$R *.dfm}
uses p_dm,p_func;

procedure Tfrm_zyzsjsz.Button1Click(Sender: TObject);
begin
  if (Trim(Edit1.Text)='') or (prv_kl='') then
  begin
    ShowMessage('未选择药品，请重试！');
    Exit;
  end;
  DM_data.qry_pub.close;
  DM_data.qry_pub.SQL.text:='select * from sys_zyzsj where ypdm ='
  +''''+prv_kl+'''';
  DM_data.qry_pub.Open;
  if  DM_data.qry_pub.IsEmpty then
  begin
    DM_data.qry_pub.close;
    DM_data.qry_pub.SQL.Text:='insert into sys_zyzsj'+
    ' select '+''''+prv_kl+'''';
    DM_data.qry_pub.ExecSQL;
    ShowMessage('添加药品成功！');
    qry_yplb.close;
    qry_yplb.SQL.text:='select b.* from sys_zyzsj a,sys_ypdm b where a.ypdm=b.ypdm';
    qry_yplb.Open;
  end
  else
  begin
    ShowMessage('添加药品失败，已添加过此药品！');
  end;
end;

procedure Tfrm_zyzsjsz.Button2Click(Sender: TObject);
begin
  Close;
end;

procedure Tfrm_zyzsjsz.Button3Click(Sender: TObject);
begin
  try
    DM_data.qry_pub.close;
    DM_data.qry_pub.SQL.text:='delete from sys_zyzsj where ypdm='+''''+
    trim(qry_yplb.FieldByName('ypdm').asstring)+'''';
    DM_data.qry_pub.ExecSQL;
    ShowMessage('删除成功！');
  except
    ShowMessage('删除失败！');
  end;
  qry_yplb.close;
  qry_yplb.SQL.text:='select b.* from sys_zyzsj a,sys_ypdm b where a.ypdm=b.ypdm';
  qry_yplb.Open;
end;

procedure Tfrm_zyzsjsz.DBGrid1Exit(Sender: TObject);
begin
  Edit1.text:=Trim(qry_yp.FieldByName('ypmc').asstring)+','
              +trim(qry_yp.FieldByName('ypgg').asstring);
  prv_kl:=Trim(qry_yp.FieldByName('ypdm').asstring);
  DBGrid1.Visible:=false;
end;

procedure Tfrm_zyzsjsz.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
  begin
    Button1.SetFocus;
  end;
  if key=#27 then
  begin
    Button1.SetFocus;
    Edit1.Text:='';
    prv_kl:='';
  end;
end;

procedure Tfrm_zyzsjsz.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13   then
  begin
    prv_kl:='';
    qry_yp.close;
    qry_yp.SQL.Text:='select * from sys_ypdm where sybz=1 and ypmc like ''%'+trim(Edit1.text)+
    '%'''+' or '+ 'ypdm like ''%'+trim(Edit1.text)+'%'''+' or '+
    'pym like ''%'+trim(Edit1.text)+'%'''+' or '+
    'zjm like ''%'+trim(Edit1.text)+'%''';
    qry_yp.Open;
    if qry_yp.RecordCount<1 then
      ShowMessage('无此药品！请重新录入！')
    else if qry_yp.RecordCount=1 then
    begin
      Edit1.text:=Trim(qry_yp.FieldByName('ypmc').asstring)+','
                  +trim(qry_yp.FieldByName('ypgg').asstring);
      prv_kl:=Trim(qry_yp.FieldByName('ypdm').asstring);
    end
    else
    DBGrid1.Visible:=True;
    DBGrid1.SetFocus;

  end;
end;

procedure Tfrm_zyzsjsz.FormShow(Sender: TObject);
begin
  qry_yplb.close;
  qry_yplb.SQL.text:='select b.* from sys_zyzsj a,sys_ypdm b where a.ypdm=b.ypdm';
  qry_yplb.Open;
end;

end.
