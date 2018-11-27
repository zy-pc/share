unit P_TreeView_srmbxz;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, P_TreeView, cxLookAndFeelPainters, ImgList, DB, ADODB, cxControls,
  cxContainer, cxTreeView, StdCtrls, cxButtons, ExtCtrls, cxEdit, cxTextEdit,
  cxMemo, cxDBEdit, ComCtrls, Menus;

type
  Tfrm_treeview_srmbxz = class(Tfrm_treeview)
    qry_srmb: TADOQuery;
    Panel4: TPanel;
    cxDBMemo1: TcxDBMemo;
    cxb_use: TcxButton;
    cxB_exit: TcxButton;
    qry_srmbnr: TADOQuery;
    ds_mbnr: TDataSource;
    qry_srmbid: TLargeintField;
    qry_srmbmbmc: TStringField;
    procedure cxb_useClick(Sender: TObject);
    procedure cxB_exitClick(Sender: TObject);
    procedure cxTreeView1Change(Sender: TObject; Node: TTreeNode);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    CanEnabledChange: Boolean;
    procedure proc_usemb;
  public
    { Public declarations }
    pub_selectsrmb: String;
  end;

var
  frm_treeview_srmbxz: Tfrm_treeview_srmbxz;

implementation

uses p_dm;

{$R *.dfm}
procedure Tfrm_treeview_srmbxz.proc_usemb;
begin
  pub_selectsrmb:= qry_srmbnr.FieldByName('dynr').AsString;
//  Tfrm_treeview(self).SetControlText(pub_selectsrmb);
  Close;
end;
procedure Tfrm_treeview_srmbxz.FormShow(Sender: TObject);
var str_where,str_sort: string;
begin
  inherited;
  str_where:= 'jlr='+ #39 + pub_czyxm + #39 + ' and bz=0' ;
  str_sort:=  'mbdm,mbmc ASC';
  proc_Init('zybl_srmb_lbzb','mbmc','mbdm',str_where,str_sort);

  CanEnabledChange:= False;
  proc_showtree;
  CanEnabledChange:= True;
end;

procedure Tfrm_treeview_srmbxz.cxTreeView1Change(Sender: TObject;
  Node: TTreeNode);
var itemtext,itemdata: string;
    itemnode: TTreeNode;
    Pdata: PString;
begin
  inherited;
  if not CanEnabledChange then Exit;

  itemtext:= '';
  itemdata:= '';
  itemnode:= nil;
  pdata:= nil;

//  cxb_use.Enabled:= (node.ImageIndex = 3);
      if node.HasChildren then exit;

      //加入所选专业下对应模板
      with qry_srmb do
      begin
        Close;
        Parameters.ParamByName('mbdm').Value:= func_getnodedata(node);
        Open;
        First;

        if RecordCount > 0 then
        begin
          itemnode:= node;
          While not Eof do
          begin
            itemtext:= trim(FieldByName('mbmc').AsString);
            itemdata:= Inttostr(FieldByName('id').AsInteger);

            itemnode:=cxTreeView1.Items.AddChild(node,itemtext);

            //增加无需显示数据
            New(Pdata);
            Pdata^:= itemdata;
            itemnode.Data:= Pdata;

            //下面为确定节点的图标
            itemnode.ImageIndex:= 3;
            itemnode.SelectedIndex:= 3;

            Next;
          end;
        end;
      end;
      node.Expanded:= true;
  if (Node.ImageIndex = 3) and (Node.SelectedIndex= 3) then
  begin
    //查询模板对应内容
    with qry_srmbnr do
    begin
      Close;
      Parameters.ParamByName('id').Value:= StrToInt(func_getnodedata(node));
      Open;
    end;
    cxb_use.Enabled:= not qry_srmbnr.IsEmpty;
  end;
end;

procedure Tfrm_treeview_srmbxz.cxb_useClick(Sender: TObject);
begin
  inherited;
  proc_usemb;
end;

procedure Tfrm_treeview_srmbxz.cxB_exitClick(Sender: TObject);
begin
  inherited;
  Close;
end;

end.
