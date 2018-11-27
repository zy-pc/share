unit P_TreeView_ctwh;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, P_TreeView, cxLookAndFeelPainters, StdCtrls, cxButtons, ImgList, DB,
  ADODB, cxControls, cxContainer, cxTreeView, ExtCtrls, cxTextEdit, cxLabel,
  cxEdit, cxGroupBox, ComCtrls, Menus;

type
  Tfrm_treeview_ctwh = class(Tfrm_treeview)
    cxb_delete: TcxButton;
    cxb_change: TcxButton;
    cxb_addchild: TcxButton;
    cxb_add: TcxButton;
    cxb_exit: TcxButton;
    cmd_execute: TADOCommand;
    Panel4: TPanel;
    qry_newid: TADOQuery;
    GroupBox2: TGroupBox;
    ListBox1: TListBox;
    GroupBox1: TGroupBox;
    cxGroupBox1: TcxGroupBox;
    cxLabel2: TcxLabel;
    cxTextEdit2: TcxTextEdit;
    cxb_save: TcxButton;
    cxb_drop: TcxButton;
    procedure cxb_exitClick(Sender: TObject);
    procedure cxb_dropClick(Sender: TObject);
    procedure cxb_saveClick(Sender: TObject);
    procedure cxb_deleteClick(Sender: TObject);
    procedure cxb_changeClick(Sender: TObject);
    procedure cxb_addchildClick(Sender: TObject);
    procedure cxb_addClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxTreeView1Change(Sender: TObject; Node: TTreeNode);
  private
    { Private declarations }
    procedure proc_changenode;
    procedure proc_deletenode;
    procedure proc_addnode(lb: Integer); //1.表示同级,2表示子级;
    procedure proc_edit_zt; //设置状态;

  public
    { Public declarations }
    //pub_zt:  A:增加同级;AC:增加子级;C:修改节点;D:删除节点;
    pub_zt: string; //当然操作方式;
    pub_currentnode: TTreeNode;
  end;
const const_showleavelwidth = 2;
var
  frm_treeview_ctwh: Tfrm_treeview_ctwh;

implementation

uses p_dm;

{$R *.dfm}

procedure Tfrm_treeview_ctwh.proc_addnode(lb: Integer);
var id, parentid, level: Integer;
  ctmc: string;
  node: TTreeNode;
  Pdata: PointerString;
begin
  parentid := 0;
  level := 0;
  node := nil;

  with qry_newid do
  begin
    Close;
    Open;
    if FieldByName('id').IsNull then
      id := 1
    else
      id := FieldByName('id').AsInteger + 1;
  end;

  if lb = 1 then
  begin
    if pub_currentnode = nil then
    begin
      parentid := 0;
      level := 0;
    end
    else
    begin
      if pub_currentnode.Parent = nil then
      begin
        parentid := 0;
        level := 0;
      end
      else
      begin
        parentid := StrToInt(func_getnodedata(pub_currentnode.Parent));
        level := pub_currentnode.Level;
      end;
    end;
  end
  else if lb = 2 then
  begin
    parentid := StrToInt(func_getnodedata(pub_currentnode));
    level := pub_currentnode.Level + 1;
  end;

  ctmc := trim(cxTextEdit2.Text);
  with cmd_execute do
  begin
    CommandText := 'insert zybl_ct_zb(id,ctmc,parentid,level,jlr,jlrq) ' +
      'values(:id,:ctmc,:parentid,:level,:jlr,getdate())';
    Parameters.ParamByName('id').Value := id;
    Parameters.ParamByName('ctmc').Value := ctmc;
    Parameters.ParamByName('parentid').Value := parentid;
    Parameters.ParamByName('level').Value := level;
    Parameters.ParamByName('jlr').Value := pub_czyxm;

    dm_data.ado_mydata.BeginTrans;
    try
      Execute;
      dm_data.ado_mydata.CommitTrans;
    except
      dm_data.ado_mydata.RollbackTrans;
      application.MessageBox('错误提示:词条存入数据库失败,请检查后重试!', '错误提示', 16);
      exit;
    end;
  end;
  if lb = 1 then
    node := cxTreeView1.Items.Add(pub_currentnode, ctmc)
  else if lb = 2 then
    node := cxTreeView1.Items.AddChild(pub_currentnode, ctmc);

  New(Pdata);
  Pdata^ := Inttostr(id);
  node.Data := Pdata;

  node.ImageIndex := 1;
  node.SelectedIndex := 2;

  pub_currentnode := node;
end;

procedure Tfrm_treeview_ctwh.proc_changenode;
var id: Integer;
  ctmc: string;
begin
  id := StrTOInt(func_getnodedata(pub_currentnode));
  ctmc := trim(cxTextEdit2.Text);
  with cmd_execute do
  begin
    CommandText := 'update zybl_ct_zb set ctmc=:ctmc where id=:id';
    Parameters.ParamByName('id').Value := id;
    Parameters.ParamByName('ctmc').Value := ctmc;

    dm_data.ado_mydata.BeginTrans;
    try
      Execute;
      dm_data.ado_mydata.CommitTrans;
    except
      dm_data.ado_mydata.RollbackTrans;
      application.MessageBox('错误提示:词条修改存入数据库失败,请检查后重试!', '错误提示', 16);
      exit;
    end;

    pub_currentnode.Text := ctmc;
  end;
end;

procedure Tfrm_treeview_ctwh.proc_deletenode;
begin
  if pub_currentnode = nil then
    application.MessageBox('提示:请选择其中一个节点再执行此操作!', '提示', MB_ICONQUESTION)
  else
  begin
    with cmd_execute do
    begin
      CommandText := 'delete from zybl_ct_zb where id in (' + func_getnodedatas(pub_currentnode) + ')';

      dm_data.ado_mydata.BeginTrans;
      try
        Execute;
        dm_data.ado_mydata.CommitTrans;
      except
        dm_data.ado_mydata.RollbackTrans;
        application.MessageBox('错误提示:词条从数据库删除失败,请检查后重试!', '错误提示', 16);
        exit;
      end;
    end;

    pub_currentnode.Delete;
  end;
end;

procedure Tfrm_treeview_ctwh.proc_edit_zt;
begin
  cxTreeView1.Enabled := not ((pub_zt = 'A') or (pub_zt = 'AC') or (pub_zt = 'C') or (pub_zt = 'D'));

  cxb_add.Enabled := cxTreeView1.Enabled;
  cxb_addchild.Enabled := cxTreeView1.Enabled;
  cxb_change.Enabled := cxTreeView1.Enabled;
  cxb_delete.Enabled := cxTreeView1.Enabled;

  cxb_save.Enabled := not (cxTreeView1.Enabled or (pub_zt = 'D'));
  cxb_drop.Enabled := cxb_save.Enabled;

  cxTextEdit2.Properties.ReadOnly := cxb_add.Enabled;
end;

procedure Tfrm_treeview_ctwh.cxTreeView1Change(Sender: TObject;
  Node: TTreeNode);
begin
  inherited;
  pub_currentnode := node;

  if not node.HasChildren then proc_ct_showTree(node);

  if node <> nil then node.Expanded := true;

  cxTextEdit2.Text := node.Text;

  ListBox1.Items := func_GetNodeTextsEx(node);
end;

procedure Tfrm_treeview_ctwh.FormShow(Sender: TObject);
begin
  proc_ct_showTree(nil);

  if (cxTreeView1.TopItem <> nil) then
    cxTreeView1.TopItem.Selected := True;

  proc_edit_zt;
end;

procedure Tfrm_treeview_ctwh.cxb_addClick(Sender: TObject);
begin
  inherited;
  pub_zt := 'A';

  proc_edit_zt;
end;

procedure Tfrm_treeview_ctwh.cxb_addchildClick(Sender: TObject);
begin
  inherited;
  pub_zt := 'AC';

  proc_edit_zt;
end;

procedure Tfrm_treeview_ctwh.cxb_changeClick(Sender: TObject);
begin
  inherited;
  pub_zt := 'C';

  proc_edit_zt;
end;

procedure Tfrm_treeview_ctwh.cxb_deleteClick(Sender: TObject);
begin
  inherited;
  if application.MessageBox('提示:删除节点将会连同些节点下一起删除,继续(Y/N)?',
    '提示', MB_ICONQUESTION + MB_YESNO) = IDYES then
  begin
    pub_zt := 'D';

    proc_edit_zt;

    proc_deletenode;

    pub_zt := '';

    proc_edit_zt;
  end;
end;

procedure Tfrm_treeview_ctwh.cxb_saveClick(Sender: TObject);
begin
  inherited;
  if pub_zt = 'A' then
    proc_addnode(1)
  else if pub_zt = 'AC' then
    proc_addnode(2)
  else if pub_zt = 'C' then
    proc_changenode;

  pub_zt := '';
  proc_edit_zt;
end;

procedure Tfrm_treeview_ctwh.cxb_dropClick(Sender: TObject);
begin
  inherited;
  pub_zt := '';
  proc_edit_zt;
end;

procedure Tfrm_treeview_ctwh.cxb_exitClick(Sender: TObject);
begin
  inherited;
  Close;
end;

end.
