unit P_TreeNodeSel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, StdCtrls, Buttons;

type
  TFrm_TreeNodeSel = class(TForm)
    pnl1: TPanel;
    pnl2: TPanel;
    btnEnter: TBitBtn;
    tvShow: TTreeView;
    procedure tvShowChange(Sender: TObject; Node: TTreeNode);
    procedure btnEnterClick(Sender: TObject);
  private
    { Private declarations }
    vSourceTree: TTreeView;
    vCode: string;
    vSelectNode: TTreeNode;
    procedure ShowData;
  public
    { Public declarations }
  end;

function GetTreeNodeCode(SourceTree: TTreeView): string;
implementation
uses P_Public;
{$R *.dfm}

function GetTreeNodeCode(SourceTree: TTreeView): string;
var
  Frm_TreeNodeSel: TFrm_TreeNodeSel;
begin
  Frm_TreeNodeSel := TFrm_TreeNodeSel.Create(Application);
  with Frm_TreeNodeSel do
  begin
    vSourceTree := SourceTree;
    ShowData;
    if ShowModal = mrok then
      Result := vCode
    else
      Result := '';
    Free;
  end;
end;

procedure TFrm_TreeNodeSel.btnEnterClick(Sender: TObject);
begin
 if vSelectNode<>nil then
  begin
    if vSelectNode.SelectedIndex<>-1 then
       vCode := TInfo(TreeArrInfo[vSelectNode.SelectedIndex]).ID
      else
       vCode:='';
  end else
   vCode:='';
  ModalResult:=mrOk;
end;

procedure TFrm_TreeNodeSel.ShowData;
begin
  tvShow.Items.Assign(vSourceTree.Items);
  if tvShow.Items.Count > 0 then
    tvShow.FullExpand;
  vSelectNode:=nil;  
end;

procedure TFrm_TreeNodeSel.tvShowChange(Sender: TObject; Node: TTreeNode);
begin
  vSelectNode := Node;
  if Node.SelectedIndex <> -1 then
    vCode := TInfo(TreeArrInfo[Node.SelectedIndex]).ID
   else
    vCode :='';
end;

end.

