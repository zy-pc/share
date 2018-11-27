unit P_psbz_ps;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, DBCtrls, Grids, DBGrids, DB, ADODB, Buttons,
  DBGridEh, ComCtrls, GridsEh, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxEdit, cxDBData, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxDropDownEdit;

type
  Tfrm_psbz_ps = class(TForm)
    Splitter2: TSplitter;
    qry_psbz_dx: TADOQuery;
    ds_psbz_dx: TDataSource;
    ds_psbz_xx: TDataSource;
    qry_psbz_xx: TADOQuery;
    qry_xxsx: TADOQuery;
    qry_psbz_xxxh: TIntegerField;
    qry_psbz_xxdm: TIntegerField;
    qry_psbz_xxmc: TStringField;
    qry_psbz_xxqzxs: TBCDField;
    qry_psbz_xxlb: TStringField;
    qry_psbz_xxdj: TStringField;
    qry_psbz_xxdjmc: TStringField;
    qry_xh: TADOQuery;
    cmd_exec: TADOCommand;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    GroupBox_dx: TGroupBox;
    DBGrid1: TDBGrid;
    GroupBox_mx: TGroupBox;
    Panel2: TPanel;
    spb_rebrush: TSpeedButton;
    spb_add: TSpeedButton;
    spb_delete: TSpeedButton;
    spb_drop: TSpeedButton;
    spb_save: TSpeedButton;
    spb_exit: TSpeedButton;
    spb_change: TSpeedButton;
    qry_psbz_bldj: TADOQuery;
    ds_psbz_bldj: TDataSource;
    DBGridEh_xxDBTableView1: TcxGridDBTableView;
    DBGridEh_xxLevel1: TcxGridLevel;
    DBGridEh_xx: TcxGrid;
    DBGridEh_xxDBTableView1xh: TcxGridDBColumn;
    DBGridEh_xxDBTableView1dm: TcxGridDBColumn;
    DBGridEh_xxDBTableView1mc: TcxGridDBColumn;
    DBGridEh_xxDBTableView1qzxs: TcxGridDBColumn;
    DBGridEh_xxDBTableView1dj: TcxGridDBColumn;
    DBGridEh_xxDBTableView1djmc: TcxGridDBColumn;
    SpeedButton1: TSpeedButton;
    procedure spb_saveClick(Sender: TObject);
    procedure spb_dropClick(Sender: TObject);
    procedure spb_rebrushClick(Sender: TObject);
    procedure spb_deleteClick(Sender: TObject);
    procedure spb_changeClick(Sender: TObject);
    procedure spb_addClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure spb_exitClick(Sender: TObject);
  private
    { Private declarations }
    procedure proc_editor(zt: Integer);//设置编辑状态.zt,0浏览,1增加或修改,2.所有不可用
    procedure proc_rebrush_dx;
    procedure proc_rebrush_xx;
    procedure proc_rebrush_bldj;

    function  func_getxh: Integer;
    function  func_getxh_lb(lb: String): Integer;
  public
    { Public declarations }
  end;

var
  frm_psbz_ps: Tfrm_psbz_ps;

implementation

uses p_dm,p_ljkz;

{$R *.dfm}

{ Tfrm_psbz_ps }

procedure Tfrm_psbz_ps.proc_editor(zt: Integer);
begin
  GroupBox_dx.Enabled:= (zt = 0) and (zt<> 2);
  spb_add.Enabled:= (zt = 0) and (zt <> 2);
  spb_change.Enabled:= (zt = 0) and (zt <> 2);
  spb_delete.Enabled:= (zt = 0) and (zt <> 2);
  spb_rebrush.Enabled:= (zt = 0) and (zt <> 2);
  spb_drop.Enabled:= (zt = 1) and (zt <> 2);
  spb_save.Enabled:= (zt = 1) and (zt <> 2);
end;

procedure Tfrm_psbz_ps.proc_rebrush_dx;
begin
  qry_psbz_dx.Close;
  qry_psbz_dx.Open;
end;

procedure Tfrm_psbz_ps.proc_rebrush_xx;
begin
  qry_psbz_xx.Close;
  qry_psbz_xx.Open;
end;
procedure Tfrm_psbz_ps.proc_rebrush_bldj;
begin
  qry_psbz_bldj.Close;
  qry_psbz_bldj.Open;
end;
procedure Tfrm_psbz_ps.FormShow(Sender: TObject);
begin
  proc_editor(0);
  proc_rebrush_dx;
  proc_rebrush_xx;
  proc_rebrush_bldj;
end;

function Tfrm_psbz_ps.func_getxh: Integer;
begin
  with qry_xh do
  begin
    Close;
    SQL.Text:= 'select max(xh) + 1 xh from zydzbl_psbz_xx';
    Open;
    if FieldByName('xh').AsInteger = 0 then
      Result:= 1
    else
      Result:= FieldByName('xh').AsInteger;
  end;
end;

function Tfrm_psbz_ps.func_getxh_lb(lb: String): Integer;
begin
  with qry_xh do
  begin
    Close;
    SQL.Text:= 'select max(dm) + 1 dm from zydzbl_psbz_xx where lb=' + #39 + lb + #39;
    Open;
    if FieldByName('dm').AsInteger = 0 then
      Result:= 1
    else
      Result:= FieldByName('dm').AsInteger;
  end;
end;

procedure Tfrm_psbz_ps.spb_addClick(Sender: TObject);
var lb: String;
begin
  if not qry_psbz_dx.Active then exit;
  if qry_psbz_dx.RecordCount<= 0 then exit;
  if not qry_psbz_xx.Active then exit;

  proc_editor(1);
  lb:= qry_psbz_dx.FieldByName('dm').AsString;
  with qry_psbz_xx do
  begin
    Append;
    FieldByName('xh').AsInteger:= func_getxh;
    FieldByName('dm').AsInteger:= func_getxh_lb(lb);
    FieldByName('lb').AsString := lb;
  end;
  DBGridEH_xx.SetFocus;
end;

procedure Tfrm_psbz_ps.spb_changeClick(Sender: TObject);
begin
  proc_editor(1);
  DBGridEh_xx.SetFocus;
end;

procedure Tfrm_psbz_ps.spb_deleteClick(Sender: TObject);
begin
  if not qry_psbz_xx.Active then exit;
  if qry_psbz_xx.RecordCount <= 0 then exit;

  proc_editor(2);

  if Application.MessageBox('提示:是否要对当前行进行删除操作!','提示',
          MB_YESNO + MB_ICONQUESTION) = IDYES then
  begin
    try
      qry_psbz_xx.Delete;
      qry_psbz_xx.UpdateBatch();
      Application.MessageBox('提示:保存成功!','提示',MB_ICONINFORMATION);
    except
      Application.MessageBox('错误提示:删除记录失败!','错误提示', 16);
    end;
  end;

  proc_editor(0);
end;

procedure Tfrm_psbz_ps.spb_rebrushClick(Sender: TObject);
begin
  proc_editor(2);
  proc_rebrush_xx;
  proc_editor(0);
end;

procedure Tfrm_psbz_ps.spb_dropClick(Sender: TObject);
begin
  proc_editor(2);
  proc_rebrush_xx;
  proc_editor(0);
end;

procedure Tfrm_psbz_ps.spb_exitClick(Sender: TObject);
begin
  Close;
end;

procedure Tfrm_psbz_ps.spb_saveClick(Sender: TObject);
begin
  proc_editor(2);
  if Application.MessageBox('提示:是否保存对数据的修改?(Y/N)','提示',MB_YESNO + MB_ICONQUESTION) = IDYES then
  begin
    dm_data.ado_mydata.BeginTrans;
    try
      qry_psbz_xx.UpdateBatch();
      with cmd_exec do
      begin
        CommandText:= 'update zydzbl_psbz_dx set zfs=b.fs from zydzbl_psbz_dx a,'
          +'(select lb,sum(qzxs) fs from zydzbl_psbz_xx group by lb) b where a.dm=b.lb';
        Execute;
      end;
      dm_data.ado_mydata.CommitTrans;
      Application.MessageBox('提示:保存写入数据库成功!','提示',MB_ICONINFORMATION);
    except
      dm_data.ado_mydata.RollbackTrans;
      Application.MessageBox('错误提示:记录写入数据失败!','错误提示', 16);
    end;
  end;
  proc_editor(0);
end;

procedure Tfrm_psbz_ps.SpeedButton1Click(Sender: TObject);
begin
  Application.CreateForm(Tfrm_ljkz, frm_ljkz);
  if (qry_psbz_dx.FieldByName('dm').AsString<>'') and
  (qry_psbz_xx.FieldByName('xh').AsString<>'') then
  begin
    frm_ljkz.lb:=qry_psbz_dx.FieldByName('dm').AsString;
    frm_ljkz.xh:=qry_psbz_xx.FieldByName('xh').AsFloat;
  end
  else
  begin
    Exit;
  end;
  try
    frm_ljkz.ShowModal;
  finally
    frm_ljkz.Free;
  end;
end;

end.
