unit p_fyxmdb;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ADODB, ExtCtrls, DBGridEh, Grids, DBGrids, StdCtrls, Buttons;

type
  Tfrm_fyxmdb = class(TForm)
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Edit1: TEdit;
    SP_fyxm: TADOStoredProc;
    DS_fyxm: TDataSource;
    ds_dbmx: TDataSource;
    ds_dbdx: TDataSource;
    qry_dbdx: TADOQuery;
    qry_dbmx: TADOQuery;
    DBGrid2: TDBGrid;
    sp_infyxmdb: TADOStoredProc;
    b_deldl: TBitBtn;
    b_adddl: TBitBtn;
    b_addmx: TBitBtn;
    b_delmx: TBitBtn;
    DBGrid3: TDBGrid;
    procedure Button1Click(Sender: TObject);
    procedure b_addmxClick(Sender: TObject);
    procedure b_adddlClick(Sender: TObject);
    procedure qry_dbdxAfterScroll(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure b_delmxClick(Sender: TObject);
    procedure b_deldlClick(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid3Exit(Sender: TObject);
    procedure DBGrid3DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid3KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  cx_dxdm,dxdm,fydm,szdm,fysl:string;
  frm_fyxmdb: Tfrm_fyxmdb;

implementation
uses p_dm, p_adddbmx_xm, p_adddbdl_xm;
{$R *.DFM}

procedure Tfrm_fyxmdb.Button1Click(Sender: TObject);
begin
close;
end;

procedure Tfrm_fyxmdb.b_addmxClick(Sender: TObject);
begin
application.CreateForm(Tfrm_adddbmx_xm,frm_adddbmx_xm);
try
  frm_adddbmx_xm.ShowModal;
finally
  frm_adddbmx_xm.free;
end;
if (dxdm<>'') and (fydm<>'')  then
begin
  sp_infyxmdb.Active:=false;
  sp_infyxmdb.Parameters.ParamByName('@dxdm').value:=dxdm;
  sp_infyxmdb.Parameters.ParamByName('@fydm').value:=fydm;
  sp_infyxmdb.Parameters.ParamByName('@szdm').value:=szdm;
  sp_infyxmdb.Parameters.ParamByName('@fysl').value:=fysl;
  sp_infyxmdb.Parameters.ParamByName('@zt').value:=0;
  sp_infyxmdb.ExecProc;
  if sp_infyxmdb.Parameters.ParamByName('@zt').value=3 then
     application.MessageBox('已加入了打包明细不能再加','提示',0+16);
  if sp_infyxmdb.Parameters.ParamByName('@zt').value=4 then
     application.MessageBox('已加入了打包大项的不能再加入明细','提示',0+16);
  if sp_infyxmdb.Parameters.ParamByName('@zt').value=6 then
     application.MessageBox('打包的明细项目的收费标准不能为零','提示',0+16);
end;
qry_dbdx.close;
qry_dbdx.Open;
qry_dbdx.Locate('fydm',dxdm,[]);
end;

procedure Tfrm_fyxmdb.b_adddlClick(Sender: TObject);
begin
application.CreateForm(Tfrm_adddbdl_xm,frm_adddbdl_xm);
try
  frm_adddbdl_xm.ShowModal;
finally
  frm_adddbdl_xm.free;
end;
if dxdm<>'' then
begin
  sp_infyxmdb.Active:=false;
  sp_infyxmdb.Parameters.ParamByName('@dxdm').value:=dxdm;
  sp_infyxmdb.Parameters.ParamByName('@fydm').value:=fydm;
  sp_infyxmdb.Parameters.ParamByName('@szdm').value:=szdm ;
  sp_infyxmdb.Parameters.ParamByName('@fysl').value:=0;
  sp_infyxmdb.Parameters.ParamByName('@zt').value:=0;
  sp_infyxmdb.ExecProc;
  if sp_infyxmdb.Parameters.ParamByName('@zt').value=2 then
     application.MessageBox('已加入了打包大项不能再加','提示',0+16);
  if sp_infyxmdb.Parameters.ParamByName('@zt').value=5 then
     application.MessageBox('加入过打包明细不能再加入大项','提示',0+16);
  if sp_infyxmdb.Parameters.ParamByName('@zt').value=7 then
     application.MessageBox('3966标准收费项目不能做为大项','提示',0+16);
end;
qry_dbdx.close;
qry_dbdx.Open;
qry_dbdx.Locate('fydm',dxdm,[]);

end;

procedure Tfrm_fyxmdb.qry_dbdxAfterScroll(DataSet: TDataSet);
begin
qry_dbmx.close;
qry_dbmx.Parameters.ParamByName('dxdm').value:=trim(qry_dbdx.fieldbyname('fydm').asstring);
qry_dbmx.Open;
b_deldl.Enabled:=not qry_dbdx.IsEmpty;
b_addmx.Enabled:=not qry_dbdx.IsEmpty;
b_delmx.Enabled:=not qry_dbmx.IsEmpty;
end;

procedure Tfrm_fyxmdb.FormShow(Sender: TObject);
begin
qry_dbdx.Open;
b_deldl.Enabled:=not qry_dbdx.IsEmpty;
b_addmx.Enabled:=not qry_dbdx.IsEmpty;
end;

procedure Tfrm_fyxmdb.b_delmxClick(Sender: TObject);
var
  v_dbdx,v_fydm:string;
begin
if not qry_dbdx.IsEmpty then
begin
  v_dbdx:=trim(qry_dbdx.fieldbyname('fydm').asstring);
  v_fydm:=trim(qry_dbmx.fieldbyname('fydm').asstring);
  with dm_data.qry_pub do begin
      close;
      sql.Clear;
      sql.Text:='delete sys_kjsfxm_db where dxdm=' +#39+v_dbdx+#39 +' and fydm='+#39+v_fydm+#39;
      dm_data.ado_mydata.BeginTrans;
      try
         execsql;
         dm_data.ado_mydata.CommitTrans;
         qry_dbmx.close;
         qry_dbmx.Parameters.ParamByName('dxdm').value:=trim(qry_dbdx.fieldbyname('fydm').asstring);
         qry_dbmx.Open;
         b_delmx.Enabled:=not qry_dbmx.IsEmpty;
         qry_dbdx.Close;
         qry_dbdx.Open;
         qry_dbdx.Locate('fydm',v_dbdx,[]);
         b_deldl.Enabled:=not qry_dbdx.IsEmpty;
      except
         dm_data.ado_mydata.RollbackTrans;
         application.MessageBox('删除失败','提示',0+48);
      end;
  end;
end;
end;

procedure Tfrm_fyxmdb.b_deldlClick(Sender: TObject);
var
  v_dbdx:string;
begin
if not qry_dbdx.IsEmpty then
begin
  v_dbdx:=trim(qry_dbdx.fieldbyname('fydm').asstring);
  with dm_data.qry_pub do begin
      close;
      sql.Clear;
      sql.Text:='delete sys_kjsfxm_db where dxdm=' +#39+v_dbdx+#39;
      dm_data.ado_mydata.BeginTrans;
      try
         execsql;
         dm_data.ado_mydata.CommitTrans;
         qry_dbdx.Close;
         qry_dbdx.Open;
         b_deldl.Enabled:=not qry_dbdx.IsEmpty;
         b_addmx.Enabled:=not qry_dbdx.IsEmpty;
      except
         dm_data.ado_mydata.RollbackTrans;
         application.MessageBox('删除失败','提示',0+48);
      end;
  end;
end;
end;

procedure Tfrm_fyxmdb.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
begin
sp_fyxm.close;
sp_fyxm.Parameters.ParamByName('@pym').value:=trim(edit1.text)+'%';
edit1.TEXT:='';
sp_fyxm.open;
if SP_fyxm.RecordCount<>0 then
   begin
     dbgrid3.Visible:=true;
     dbgrid3.SetFocus;
   end
else
   begin
     SP_fyxm.close;
     application.MessageBox('没有满足条件的费用项目！','提示',16);
     dbgrid3.Visible:=false;
     edit1.SetFocus;
   end;
end;
end;

procedure Tfrm_fyxmdb.DBGrid3Exit(Sender: TObject);
begin
  dbgrid3.Visible:=false;
end;

procedure Tfrm_fyxmdb.DBGrid3DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
if (SP_fyxm.Active) and (SP_fyxm.RecordCount<>0) then
   begin
    if SP_fyxm['qybz']='0' then
     begin
      dbgrid3.Canvas.brush.Color:=cllime;
      dbgrid3.Canvas.Font.Color:=clblue;
     end;
     dbgrid3.DefaultDrawColumnCell(rect,datacol,column,state);
    end;
end;

procedure Tfrm_fyxmdb.DBGrid3KeyPress(Sender: TObject; var Key: Char);
begin
 if key=#13 then
 begin
  cx_dxdm:=sp_fyxm.fieldbyname('fydm').asstring;
  qry_dbdx.Locate('fydm',cx_dxdm,[]);
  dbgrid3.Visible:=false;
 end;
end;

end.
