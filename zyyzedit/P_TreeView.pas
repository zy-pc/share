unit P_TreeView;
                                             
interface

uses
    Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
    Dialogs, cxControls, cxContainer, cxTreeView, cxLookAndFeelPainters, StdCtrls,
    cxButtons, ExtCtrls, DB, ADODB, ComCtrls, ImgList;

type PointerString = ^string;
type
    Tfrm_treeview = class(TForm)
        Panel1: TPanel;
        Panel2: TPanel;
        Panel3: TPanel;
        cxTreeView1: TcxTreeView;
        qry_tree: TADOQuery;
        ImageList1: TImageList;
        Splitter1: TSplitter;
        procedure FormClose(Sender: TObject; var Action: TCloseAction);
        procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    private
    { Private declarations }
    public
    { Public declarations }
    //表示树型目标来自哪个表,节点对应字段,节点数据对应字段,条件,排序字段;
        pub_table, pub_col, pub_data, pub_where, pub_sort: string;

        function func_addnode(itemtext, data: string; itemnode: TTreenode): TTreenode;
        function func_findnode(node: TTreeNode; itemtext, data: string; mode: integer): TTreenode; //查找节点,node表示从哪个节点开始查询,mode=1表示按itemtext查询,2表示按数据查询;
        function func_getnodedata(node: TTreeNode): string; //获取节点数据
        function func_getnodetexts(node: TTreeNode): string; //获取指定节点从根到本节点Text属性值集合
        function func_getnodedatas(node: TTreeNode): string; //获取指定节点从根到本节点data属性值集合
        function func_GetNodeTextsEx(node: TTreeNode): TStringList; //获取指点节点到根节点Text属性值集合(本节点及父节点);

        procedure proc_Init(str_table, str_col, str_data, str_where, str_sort: string);
        procedure proc_showtree; //建立模板代码树(深度有限)
        procedure proc_ct_showTree(node: TTreeNode); //建立词条树(深度无限)
    end;

var
    frm_treeview: Tfrm_treeview;
implementation

uses p_dm;

{$R *.dfm}

function Tfrm_treeview.func_addnode(itemtext, data: string; itemnode: TTreenode): TTreenode;
var node: tTreeNode;
    mbdm_old, mbdm_new: string;
    Pdata: PointerString;
begin
    node := nil;

    if itemnode <> nil then
        mbdm_old := func_getnodedata(itemnode);
    mbdm_new := data;

    with cxTreeView1.Items do
    begin
        if length(mbdm_old) = length(mbdm_new) then //当前节点的同级;
            node := AddChild(itemnode.Parent, itemtext)
        else if length(mbdm_old) < length(mbdm_new) then //当前节点的子级;
            node := AddChild(itemnode, itemtext)
        else if length(mbdm_old) > length(mbdm_new) then //父级节点
        begin
      //得到父节点
            while length(mbdm_old) <> length(mbdm_new) do
            begin
                itemnode := itemnode.Parent;
                mbdm_old := func_getnodedata(itemnode);
            end;

            node := Add(itemnode.Parent, itemtext);
        end;
    end;

    New(Pdata);
    Pdata^ := data;
    node.Data := Pdata;

    result := node;
end;

function Tfrm_treeView.func_findnode(node: TTreeNode; itemtext, data: string; mode: integer): TTreenode;
begin
    result := nil;
end;

function Tfrm_treeView.func_getnodedata(node: TTreeNode): string;
begin
    if node = nil then
        result := ''
    else
        result := string(node.Data^);
end;

function Tfrm_treeView.func_getnodetexts(node: TTreeNode): string;
begin
    if node = nil then
        result := ''
    else
        result := func_getnodetexts(node.Parent) + node.Text;
end;

function Tfrm_treeview.func_getnodedatas(node: TTreeNode): string;
var i: integer;
    data, datachild: string;
begin
    data := func_getnodedata(node);
    for i := 0 to node.Count - 1 do
    begin
        datachild := func_getnodedatas(node.Item[i]);
        if (datachild <> '') then
            data := datachild + ',' + data;
    end;
    result := data;
end;

function Tfrm_treeview.func_GetNodeTextsEx(node: TTreeNode): TStringList;
begin
    result := TStringList.Create;
    while node <> nil do
    begin
        result.Add(func_getnodetexts(node));
        node := node.Parent;
    end;
end;

procedure Tfrm_treeview.proc_Init(str_table, str_col, str_data, str_where, str_sort: string);
begin
    pub_table := str_table;
    pub_col := str_col;
    pub_data := str_data;
    pub_where := str_where;
    pub_sort := str_sort;
end;

procedure Tfrm_treeview.proc_showtree;
var itemtext, data: string;
    node: tTreeNode;
begin
    node := cxTreeView1.TopItem;

    with qry_tree do
    begin
        Close;
        SQL.Clear;
        SQL.Add('select ' + pub_col + ',' + pub_data + '  from ' + pub_table +
            ' where ' + pub_where + ' order by ' + pub_sort);
        Open;

        if RecordCount < 0 then exit; //小于0退出

        while not Eof do
        begin
            itemtext := trim(FieldByName(pub_col).AsString);
            data := trim(FieldByName(pub_data).Asstring);

            node := func_addnode(itemtext, data, node);

      //下面为确定节点的图标
            if node.Level > 0 then
            begin
                node.ImageIndex := 1;
                node.SelectedIndex := 2;
            end
            else
            begin
                node.ImageIndex := 0;
                node.SelectedIndex := 0;
            end;

            Next;
        end;
    end;
end;

procedure Tfrm_treeview.proc_ct_showTree(node: TTreeNode);
var leavel, parentid: Integer;
    childnode: TTreeNode;
    pdata: PointerString;
    data: string;
begin
    if node = nil then
    begin
        leavel := 0;
        parentid := 0;
    end
    else
    begin
        leavel := node.Level;
        parentid := strtoint(func_getnodedata(node))
    end;

    with qry_tree do
    begin
        Close;
        SQL.Clear;
        SQL.Add('select * from zybl_ct_zb where level >= :level1 and parentid=:parentid');
        Parameters.ParamByName('level1').Value := leavel;
        Parameters.ParamByName('parentid').Value := parentid;
        Open;
        if RecordCount > 0 then
        begin
            while not eof do
            begin
                childnode := cxTreeView1.Items.AddChild(node, trim(FieldByName('ctmc').AsString));

                childnode.ImageIndex := 1;
                childnode.SelectedIndex := 2;

                new(pdata);
                data := trim(inttostr(FieldByName('id').Asinteger));
                pdata^ := data;
                childnode.Data := pdata;
                next;
            end;
        end;
    end;
end;

procedure Tfrm_treeview.FormKeyDown(Sender: TObject; var Key: Word;
    Shift: TShiftState);
begin
    if key = 27 then
        Close;
end;

procedure Tfrm_treeview.FormClose(Sender: TObject; var Action: TCloseAction);
var I: integer;
begin
    with cxTreeView1 do
    begin
        for I := 0 to Items.Count - 1 do
        begin
            Dispose(Items[I].Data);
            Items[I].Data := nil;
        end;
    end;
end;

end.
