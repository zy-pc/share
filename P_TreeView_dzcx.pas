unit P_TreeView_dzcx;
                                             
interface

uses
    Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
    Dialogs, cxControls, cxContainer, cxTreeView, cxLookAndFeelPainters, StdCtrls,
    cxButtons, ExtCtrls, DB, ADODB, ComCtrls, ImgList;

type PointerString = ^string;
type
    Tfrm_treeview_dz = class(TForm)
        Panel1: TPanel;
        Panel2: TPanel;
        Panel3: TPanel;
        cxTreeView1: TcxTreeView;
        qry_tree: TADOQuery;
        ImageList1: TImageList;
        Splitter1: TSplitter;
    ListBox_ct_list: TListBox;
        procedure FormClose(Sender: TObject; var Action: TCloseAction);
        procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure cxTreeView1Change(Sender: TObject; Node: TTreeNode);
    procedure ListBox_ct_listDblClick(Sender: TObject);
    private
    { Private declarations }
    public
    { Public declarations }
    //��ʾ����Ŀ�������ĸ���,�ڵ��Ӧ�ֶ�,�ڵ����ݶ�Ӧ�ֶ�,����,�����ֶ�;
        pub_table, pub_col, pub_data, pub_where, pub_sort: string;
        srbz:integer;
        function func_addnode(itemtext, data: string; itemnode: TTreenode): TTreenode;
        function func_findnode(node: TTreeNode; itemtext, data: string; mode: integer): TTreenode; //���ҽڵ�,node��ʾ���ĸ��ڵ㿪ʼ��ѯ,mode=1��ʾ��itemtext��ѯ,2��ʾ�����ݲ�ѯ;
        function func_getnodedata(node: TTreeNode): string; //��ȡ�ڵ�����
        function func_getnodetexts(node: TTreeNode): string; //��ȡָ���ڵ�Ӹ������ڵ�Text����ֵ����
        function func_getnodedatas(node: TTreeNode): string; //��ȡָ���ڵ�Ӹ������ڵ�data����ֵ����
        function func_GetNodeTextsEx(node: TTreeNode): TStringList; //��ȡָ��ڵ㵽���ڵ�Text����ֵ����(���ڵ㼰���ڵ�);

        procedure proc_Init(str_table, str_col, str_data, str_where, str_sort: string);
        procedure proc_showtree; //����ģ�������(�������)
        procedure proc_ct_showTree(node: TTreeNode); //����������(�������)
    end;

var
    frm_treeview_dz: Tfrm_treeview_dz;
    tree_table:string;

implementation

uses p_dm;

{$R *.dfm}

function Tfrm_treeview_dz.func_addnode(itemtext, data: string; itemnode: TTreenode): TTreenode;
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
        if length(mbdm_old) = length(mbdm_new) then //��ǰ�ڵ��ͬ��;
            node := AddChild(itemnode.Parent, itemtext)
        else if length(mbdm_old) < length(mbdm_new) then //��ǰ�ڵ���Ӽ�;
            node := AddChild(itemnode, itemtext)
        else if length(mbdm_old) > length(mbdm_new) then //�����ڵ�
        begin
      //�õ����ڵ�
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

function Tfrm_treeview_dz.func_findnode(node: TTreeNode; itemtext, data: string; mode: integer): TTreenode;
begin
    result := nil;
end;

function Tfrm_treeview_dz.func_getnodedata(node: TTreeNode): string;
begin
    if node = nil then
        result := ''
    else
        result := string(node.Data^);
end;

function Tfrm_treeview_dz.func_getnodetexts(node: TTreeNode): string;
begin
    if node = nil then
        result := ''
    else
        result := func_getnodetexts(node.Parent) + node.Text;
end;

function Tfrm_treeview_dz.func_getnodedatas(node: TTreeNode): string;
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

function Tfrm_treeview_dz.func_GetNodeTextsEx(node: TTreeNode): TStringList;
begin
    result := TStringList.Create;
    while node <> nil do
    begin
        result.Add(func_getnodetexts(node));
        node := node.Parent;
    end;
end;

procedure Tfrm_treeview_dz.ListBox_ct_listDblClick(Sender: TObject);
begin
pub_selected:=ListBox_ct_list.Items.Strings[listbox_ct_list.ITEMINDEX];
self.close;

end;

procedure Tfrm_treeview_dz.proc_Init(str_table, str_col, str_data, str_where, str_sort: string);
begin
    pub_table := str_table;
    pub_col := str_col;
    pub_data := str_data;
    pub_where := str_where;
    pub_sort := str_sort;
end;

procedure Tfrm_treeview_dz.proc_showtree;
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

        if RecordCount < 0 then exit; //С��0�˳�

        while not Eof do
        begin
            itemtext := trim(FieldByName(pub_col).AsString);
            data := trim(FieldByName(pub_data).Asstring);

            node := func_addnode(itemtext, data, node);

      //����Ϊȷ���ڵ��ͼ��
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

procedure Tfrm_treeview_dz.proc_ct_showTree(node: TTreeNode);
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
        SQL.Add('select * from '+tree_table+' where level >= :level1 and parentid=:parentid order by id');
        Parameters.ParamByName('level1').Value := leavel;
        Parameters.ParamByName('parentid').Value := parentid;
        Open;
        if RecordCount > 0 then
        begin
            while not eof do
            begin
            if FieldByName('level').Asinteger=tree_childcount then
               childnode := cxTreeView1.Items.AddChild(node, trim('-'+FieldByName('dm').AsString)+'-'+trim(FieldByName('mc').AsString))
            else
               childnode := cxTreeView1.Items.AddChild(node, trim(FieldByName('mc').AsString));


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

procedure Tfrm_treeview_dz.FormKeyDown(Sender: TObject; var Key: Word;
    Shift: TShiftState);
begin
    if key = 27 then
        Close;
end;

procedure Tfrm_treeview_dz.FormShow(Sender: TObject);
begin
    inherited;
    proc_ct_showTree(nil);
end;

procedure Tfrm_treeview_dz.cxTreeView1Change(Sender: TObject; Node: TTreeNode);
begin
    inherited;
    if not node.HasChildren then proc_ct_showTree(node);
    if node <> nil then node.Expanded := True;
    ListBox_ct_list.Items.Assign(func_GetNodeTextsEx(node));

end;

procedure Tfrm_treeview_dz.FormClose(Sender: TObject; var Action: TCloseAction);
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
