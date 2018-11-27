unit P_TreeView_ctxz;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, P_TreeView, ImgList, DB, ADODB, cxControls, cxContainer, cxTreeView,
  ExtCtrls, cxEdit, cxLabel, ComCtrls, cxLookAndFeelPainters, StdCtrls,
  cxButtons, cxTextEdit, cxMemo, Buttons;

type
  Tfrm_treeview_ctxz = class(Tfrm_treeview)
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxlab_text: TcxLabel;
    ListBox_ct_list: TListBox;
    Edit1: TEdit;
    BitBtn1: TBitBtn;
    procedure ListBox_ct_listDblClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure ListBox_ct_listClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxTreeView1Change(Sender: TObject; Node: TTreeNode);
  private
    { Private declarations }
  public
    { Public declarations }
    pub_selectword: string;

    procedure proc_return;
  end;

var
  frm_treeview_ctxz: Tfrm_treeview_ctxz;

implementation

uses p_dm;

{$R *.dfm}

procedure Tfrm_treeview_ctxz.proc_return;
begin
  pub_selectword := Edit1.Text;
  Close;
end;

procedure Tfrm_treeview_ctxz.cxTreeView1Change(Sender: TObject;
  Node: TTreeNode);
begin
  inherited;
  if not node.HasChildren then proc_ct_showTree(node);

  if node <> nil then node.Expanded := True;
//  cxlab_text.Caption:= func_getnodetexts(node);
  ListBox_ct_list.Items.Assign(func_GetNodeTextsEx(node));
end;

procedure Tfrm_treeview_ctxz.FormShow(Sender: TObject);
begin
  inherited;
  proc_ct_showTree(nil);
end;

procedure Tfrm_treeview_ctxz.ListBox_ct_listClick(Sender: TObject);
begin
  inherited;
  Edit1.Text := ListBox_ct_list.Items.Strings[ListBox_ct_list.ItemIndex];
end;

procedure Tfrm_treeview_ctxz.BitBtn1Click(Sender: TObject);
begin
  inherited;
  proc_return;
end;

procedure Tfrm_treeview_ctxz.ListBox_ct_listDblClick(Sender: TObject);
begin
  inherited;
  proc_return;
end;

end.
