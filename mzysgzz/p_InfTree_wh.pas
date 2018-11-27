unit p_InfTree_wh;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, p_InfTree, StdCtrls, Buttons, ExtCtrls, ComCtrls, DB, ADODB, ImgList,
  Grids, DBGrids, Tabs, GridsEh, DBGridEh;

type
  Tfunc_save = function(aCurNode: TTreeNode; aStr: string): Boolean;
  Tfrm_InfTree_wh = class(Tfrm_InfTree)
    pnl1: TPanel;
    btn_add: TBitBtn;
    btn_addChild: TBitBtn;
    btn_change: TBitBtn;
    btn_exit: TBitBtn;
    pnl2: TPanel;
    qry_tree: TADOQuery;
    il_lb: TImageList;
    qry_cmd: TADOQuery;
    pnl_lb: TPanel;
    grp2: TGroupBox;
    Label1: TLabel;
    edt_mc: TEdit;
    btn_save: TBitBtn;
    btn_drop: TBitBtn;
    ts1: TTabSet;
    pnl_gl: TPanel;
    pnl5: TPanel;
    btn_gl_2: TSpeedButton;
    btn_gl_4: TSpeedButton;
    qry_ygl: TADOQuery;
    qry_wgl: TADOQuery;
    ds_ygl: TDataSource;
    ds_wgl: TDataSource;
    dbgrdh_ygl: TDBGridEh;
    dbgrdh_wgl: TDBGridEh;
    procedure FormShow(Sender: TObject);
    procedure btn_exitClick(Sender: TObject);
    procedure btn_saveClick(Sender: TObject);
    procedure btn_addClick(Sender: TObject);
    procedure btn_addChildClick(Sender: TObject);
    procedure btn_changeClick(Sender: TObject);
    procedure btn_dropClick(Sender: TObject);
    procedure tv_lbChange(Sender: TObject; Node: TTreeNode);
    procedure ts1Change(Sender: TObject; NewTab: Integer;
      var AllowChange: Boolean);
    procedure btn_gl_2Click(Sender: TObject);
    procedure btn_gl_4Click(Sender: TObject);
  private
    { Private declarations }
    Prv_RootID: Integer; //根目录ID
    Prv_KeyField, Prv_keyNameField, Prv_ParentField: string;
    Prv_Key_gl, Prv_mcFieldName, Prv_filterFieldName, Prv_Table_gl: string; //归类时关键字段,显示的名称字段名称,过滤显示字段名称,表名
    Prv_Cur_ID: Integer; //当前选择的节点ID关键字
    //标示现在的操作类型(Ad: 增加; Ad:增加子项; Ch: 修改; De: 删除; Mo:移动; Cp:复制; Br: 浏览;Gl:归类)
    Prv_cmd: string;
    func_save: Tfunc_save;

    function func_addToDataBase(const aID, aParentID: Integer; aName: string): Boolean;
    function func_getNodeId: Integer;
    function func_getRootID(aCurNode: TTreeNode): Integer; //返回根节点ID值
    function func_getMarkData(aAdo: TCustomADODataSet; aMark: TBookmarkListeh; const aRetField: string): string; //返回Bookmark指定字段值
    procedure Proc_SetEditor(const aCmd: string; aCurNode: TTreeNode);
    procedure Proc_Display_gl(const aID: Integer);
  public
    { Public declarations }
  end;

var
  frm_InfTree_wh: Tfrm_InfTree_wh;
procedure Proc_Show_InfTree_wh(const aRootID: Integer);
implementation

uses p_dm;

{$R *.dfm}

function func_save_addChild(aCurNode: TTreeNode; aStr: string): Boolean;
var aNewNodeData, aNodeData: PTRecNodeData;
  aNewNode: TTreeNode;
begin
  Result := False;
  aNodeData := PTRecNodeData(aCurNode.Data);
  New(aNewNodeData);
  try
    aNewNodeData^.ParentID := aNodeData^.ID;
    aNewNodeData^.Name := aStr;
    aNewNodeData^.ID := frm_InfTree_wh.func_getNodeId;
    if frm_InfTree_wh.func_addToDataBase(aNewNodeData^.ID, aNewNodeData^.ParentID, aNewNodeData^.Name) then
    begin
      aNewNode := frm_InfTree_wh.tv_lb.Items.AddChildObject(aCurNode, aNewNodeData^.Name, aNewNodeData);
      aNewNode.ImageIndex := 1;
      aNewNode.SelectedIndex := 2;
    end;
    Result := True;
  except
    Dispose(aNewNodeData);
    Result := False;
  end;
end;

function func_save_addNode(aCurNode: TTreeNode; aStr: string): Boolean;
var aNewNodeData, aNodeData: PTRecNodeData;
  aNewNode: TTreeNode;
begin
  Result := False;
  aNodeData := PTRecNodeData(aCurNode.Data);
  New(aNewNodeData);
  try
    aNewNodeData^.ParentID := aNodeData^.ParentID;
    aNewNodeData^.Name := aStr;
    aNewNodeData^.ID := frm_InfTree_wh.func_getNodeId;
    if frm_InfTree_wh.func_addToDataBase(aNewNodeData^.ID, aNewNodeData^.ParentID, aNewNodeData^.Name) then
    begin
      aNewNode := frm_InfTree_wh.tv_lb.Items.AddObject(aCurNode, aNewNodeData^.Name, aNewNodeData);
      aNewNode.ImageIndex := 1;
      aNewNode.SelectedIndex := 2;
    end;
    Result := True;
  except
    Dispose(aNewNodeData);
    Result := False;
  end;
end;

function func_save_change(aCurNode: TTreeNode; aStr: string): Boolean;
var aNodeData: PTRecNodeData;
begin
  Result := False;
  aNodeData := PTRecNodeData(aCurNode.Data);
  try
    aNodeData^.Name := aStr;
    if frm_InfTree_wh.qry_tree.Locate(frm_InfTree_wh.Prv_KeyField, aNodeData^.ID, []) then
    begin
      frm_InfTree_wh.qry_tree.Edit;
      frm_InfTree_wh.qry_tree.FieldByName(frm_InfTree_wh.Prv_keyNameField).AsString := aStr;
      frm_InfTree_wh.qry_tree.Post;
      aCurNode.Text := aStr;
    end;
    Result := True;
  except
    Result := False;
  end;
end;

procedure Proc_Show_InfTree_wh(const aRootID: Integer);
begin
  Application.CreateForm(Tfrm_InfTree_wh, frm_InfTree_wh);
  try
    frm_InfTree_wh.Prv_RootID := aRootID;
    frm_InfTree_wh.ShowModal;
  finally
    frm_InfTree_wh.Free;
  end;
end;

procedure Tfrm_InfTree_wh.btn_addChildClick(Sender: TObject);
begin
  Prv_cmd := 'Ac';
  func_save := func_save_addChild;
  Proc_SetEditor(Prv_cmd, tv_lb.Selected);
end;

procedure Tfrm_InfTree_wh.btn_addClick(Sender: TObject);
begin
  Prv_cmd := 'Ad';
  func_save := func_save_addNode;
  Proc_SetEditor(Prv_cmd, tv_lb.Selected);
end;

procedure Tfrm_InfTree_wh.btn_changeClick(Sender: TObject);
begin
  Prv_cmd := 'Ch';
  func_save := func_save_change;
  Proc_SetEditor(Prv_cmd, tv_lb.Selected);
end;

procedure Tfrm_InfTree_wh.btn_dropClick(Sender: TObject);
begin
  Prv_cmd := 'Br';
  Proc_SetEditor(Prv_cmd, tv_lb.Selected);
end;

procedure Tfrm_InfTree_wh.btn_exitClick(Sender: TObject);
begin
  Close;
end;

procedure Tfrm_InfTree_wh.btn_gl_2Click(Sender: TObject);
var v_seleced: string;
begin
  v_seleced := func_getMarkData(qry_wgl, dbgrdh_wgl.SelectedRows, 'id');
  if v_seleced <> '' then
  begin
    qry_cmd.Close;
    qry_cmd.SQL.Text := 'update ' + Prv_Table_gl + ' set lbid=' + IntToStr(Prv_Cur_ID) + ' where ' + ' id in(' + v_seleced + ')';
    qry_cmd.ExecSQL;
    Proc_Display_gl(Prv_Cur_ID); //刷新显示
  end;
end;

procedure Tfrm_InfTree_wh.btn_gl_4Click(Sender: TObject);
var v_seleced: string;
begin
  v_seleced := func_getMarkData(qry_ygl, dbgrdh_ygl.SelectedRows, 'id');
  if v_seleced <> '' then
  begin
    qry_cmd.Close;
    qry_cmd.SQL.Text := 'update ' + Prv_Table_gl + ' set lbid=null where ' + ' id in(' + v_seleced + ')';
    qry_cmd.ExecSQL;
    Proc_Display_gl(Prv_Cur_ID); //刷新显示
  end;
end;

procedure Tfrm_InfTree_wh.btn_saveClick(Sender: TObject);
var aNewNodeID: Integer;
  aParentNodeData: PTRecNodeData;
begin
  if Assigned(func_save) then
    if not func_save(tv_lb.Selected, Trim(edt_mc.Text)) then
      Application.MessageBox('提示:保存失败!', '提示', MB_ICONERROR);
  Prv_cmd := 'Br';
  Proc_SetEditor(Prv_cmd, tv_lb.Selected);
end;

procedure Tfrm_InfTree_wh.FormShow(Sender: TObject);
begin
  qry_tree.Close;
  qry_tree.Open;
  Prv_KeyField := 'id';
  Prv_keyNameField := 'mc';
  Prv_ParentField := 'parentid';
  if qry_tree.RecordCount <= 0 then //数据表为空增加基本类别
  begin
    func_addToDataBase(1, -1, '西药类模板');
    func_addToDataBase(2, -1, '中药类模板');
    func_addToDataBase(3, -1, '诊断类模板');
    func_addToDataBase(4, -1, '查体类模板');
    func_addToDataBase(5, -1, '主诉类模板');
    func_addToDataBase(6, -1, '病史类模板');
    func_addToDataBase(7, -1, '常用药模板');
  end;
  SetTree(tv_lb, Prv_RootID, qry_tree, Prv_KeyField, Prv_keyNameField, Prv_ParentField, 0, 1, 2); //设置
  Build;
  Prv_cmd := 'Br';
  Proc_SetEditor(Prv_cmd, tv_lb.TopItem);
end;

function Tfrm_InfTree_wh.func_addToDataBase(const aID, aParentID: Integer;
  aName: string): Boolean;
begin
  Result := False;
  try
    qry_tree.Append;
    qry_tree.FieldByName(Prv_KeyField).AsInteger := aId;
    qry_tree.FieldByName(Prv_keyNameField).AsString := aName;
    qry_tree.FieldByName(Prv_ParentField).AsInteger := aParentID;
    qry_tree.Post;
    Result := True;
  except
    Result := False;
  end;
end;

function Tfrm_InfTree_wh.func_getMarkData(aAdo: TCustomADODataSet; aMark: TBookmarkListeh; const aRetField: string): string;
var i: Integer;
begin
  Result := '';
  for I := 0 to aMark.Count - 1 do
  begin
    aAdo.GotoBookmark(Pointer(aMark.Items[i]));
    if Result = '' then
      Result := IntToStr((aAdo.FieldByName(aRetField).AsInteger))
    else
      Result := Result + ',' + IntToStr((aAdo.FieldByName(aRetField).AsInteger));
  end;
end;

function Tfrm_InfTree_wh.func_getNodeId: Integer;
begin
  qry_cmd.Close;
  qry_cmd.SQL.Text := 'select max(id) id from dzbl_mbzb';
  qry_cmd.Open;
  Result := qry_cmd.FieldByName('id').AsInteger + 1;
end;

function Tfrm_InfTree_wh.func_getRootID(aCurNode: TTreeNode): Integer;
var aParentNode: TTreeNode;
  aNodeData: PTRecNodeData;
begin
  aParentNode := aCurNode;
  while aParentNode.Parent <> nil do
    aParentNode := aParentNode.Parent;
  aNodeData := PTRecNodeData(aParentNode.Data);
  Result := aNodeData^.ID;
end;

procedure Tfrm_InfTree_wh.Proc_Display_gl(const aID: Integer);
begin
  qry_ygl.Close;
  qry_ygl.SQL.Text := 'select ' + Prv_Key_gl + ',' + Prv_mcFieldName + ' from ' + Prv_Table_gl + ' where ' + Prv_filterFieldName +
    '=' + #39 + pub_czydm + #39 + ' and (lbid in(select id from dzbl_get_child(' + IntToStr(aID) + ')) or ' + ' lbid = ' + #39 + IntToStr(aID) + #39 + ')';
  qry_ygl.Open;
  qry_wgl.Close;
  qry_wgl.SQL.Text := 'select ' + Prv_Key_gl + ',' + Prv_mcFieldName + ' from ' + Prv_Table_gl + ' where ' + Prv_filterFieldName +
    '=' + #39 + pub_czydm + #39 + ' and lbid is null';
  qry_wgl.Open;
  dbgrdh_ygl.Columns.Items[0].FieldName := Prv_mcFieldName;
  dbgrdh_wgl.Columns.Items[0].FieldName := Prv_mcFieldName;
end;

procedure Tfrm_InfTree_wh.Proc_SetEditor(const aCmd: string; aCurNode: TTreeNode);
begin
  if aCurNode <> nil then
  begin
    btn_add.Enabled := (aCmd = 'Br') and (aCurNode.Parent <> nil);
    btn_addChild.Enabled := (aCmd = 'Br');
    btn_change.Enabled := (aCmd = 'Br') and (aCurNode.Parent <> nil);
//    btn_del.Enabled := (aCmd = 'Br') and (aCurNode.Parent <> nil) and (aCmd <> 'Gl');
//    btn_move.Enabled := (aCmd = 'Br') and (aCurNode.Parent <> nil) and (aCmd <> 'Gl');
    btn_save.Enabled := (aCmd <> 'Br');
    btn_drop.Enabled := (aCmd <> 'Br');
    tv_lb.Enabled := (aCmd = 'Br');
    if Prv_cmd = 'Gl' then
    begin
      dbgrdh_ygl.BringToFront;
      pnl_gl.BringToFront;
    end
    else
    begin
      tv_lb.BringToFront;
      pnl_lb.BringToFront;
    end;
  end;
end;

procedure Tfrm_InfTree_wh.ts1Change(Sender: TObject; NewTab: Integer;
  var AllowChange: Boolean);
begin
  case NewTab of
    0: Prv_cmd := 'Br';
    1: Prv_cmd := 'Gl';
  end;
  Proc_SetEditor(Prv_cmd, tv_lb.Selected);
end;

procedure Tfrm_InfTree_wh.tv_lbChange(Sender: TObject; Node: TTreeNode);
var aNodeData: PTRecNodeData;
begin
  aNodeData := PTRecNodeData(Node.Data);
  edt_mc.Text := aNodeData^.Name;
  grp1.Caption := '结构(' + aNodeData^.Name + ')';
  Prv_Cur_ID := aNodeData^.ID;
  Proc_SetEditor(Prv_cmd, Node);
  case func_getRootID(Node) of
    1:
      begin
        Prv_Key_gl := 'id';
        Prv_mcFieldName := 'mbsm';
        Prv_filterFieldName := 'ysdm';
        Prv_Table_gl := 'dzbl_cfmx_xymb_zb';
      end;
    2:
      begin
        Prv_Key_gl := 'id';
        Prv_mcFieldName := 'mbsm';
        Prv_filterFieldName := 'ysdm';
        Prv_Table_gl := 'dzbl_cfmx_zymb_zb';
      end;
    3..6:
      begin
        Prv_Key_gl := 'id';
        Prv_mcFieldName := 'mc';
        Prv_filterFieldName := 'ysdm';
        Prv_Table_gl := 'dzbl_blmb_zb';
      end;
  end;
  Proc_Display_gl(aNodeData^.ID); //显示数据
end;

end.
