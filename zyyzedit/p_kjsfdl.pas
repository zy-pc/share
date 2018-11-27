unit p_kjsfdl;
                                                                               
interface

uses
    Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
    Db, DBTables, ExtCtrls, StdCtrls, Buttons, ComCtrls, Grids, DBGrids,
    Mask, DBCtrls, ImgList, Menus, ToolWin, ADODB;

type
    Tfrm_kjsfdl = class(TForm)
        treeviewzp: TTreeView;
        Panel1: TPanel;
        qry_pub: TADOQuery;
        Querytree: TADOQuery;
        Bevel2: TBevel;
        Bevel3: TBevel;
        Bevel4: TBevel;
        qry_save: TADOQuery;
        ds_save: TDataSource;
        DBEdit2: TDBEdit;
        Label12: TLabel;
        b_save: TBitBtn;
        b_cancel: TBitBtn;
        b_add: TBitBtn;
        b_addchild: TBitBtn;
        b_edit: TBitBtn;
        b_delete: TBitBtn;
        ImageList1: TImageList;
        DBEdit1: TDBEdit;
        Label1: TLabel;
        BitBtn1: TBitBtn;
        Label2: TLabel;
        DBComboBox1: TDBComboBox;
        procedure FormShow(Sender: TObject);
        procedure treeviewzpChange(Sender: TObject; Node: TTreeNode);
        procedure b_addClick(Sender: TObject);
        procedure b_editClick(Sender: TObject);
        procedure FormKeyPress(Sender: TObject; var Key: Char);
        procedure b_addchildClick(Sender: TObject);
        procedure b_saveClick(Sender: TObject);
        procedure b_cancelClick(Sender: TObject);
        procedure b_deleteClick(Sender: TObject);
        procedure QuerytreeAfterScroll(DataSet: TDataSet);
    private
    { Private declarations }
    public
        pub_key: string;
        mode: string;
        zplevel: integer;
    { Public declarations }
    end;

var
    frm_kjsfdl: Tfrm_kjsfdl;
const
    zp = '22222';
    zpjx = 5;
    zplbdm = 'dm';
    zplbmc = 'mc';
    zptable = 'sys_kjsfdl';
    zptableorder = 'dm';
function TreeFindItem(Sender: TTreeView; Name: string; parent_n: integer): TTreeNode;
function Treeleavelleng(zpkeyleng: integer): integer;

implementation
uses p_dm, p_func, p_fyxmdb;


{$R *.DFM}

function Treeleavelleng(zpkeyleng: integer): integer;
var
    i, levellength: integer;
begin
    levellength := 0;
    for i := 1 to zpjx do
    begin
        levellength := levellength + strtoint(copy(zp, i, 1));
        if levellength = zpkeyleng then
        begin
            levellength := levellength - strtoint(copy(zp, i, 1));
            break;
        end;
    end;
    result := levellength;
end;

function TreeFindItem(Sender: TTreeView; Name: string; parent_n: integer): TTreeNode;
var
    Nodeitem: TTreeNode;
begin
    NodeItem := Sender.items.getfirstnode;
    if parent_n > 0 then begin
        repeat
            if copy(trim(NodeItem.text), 1, parent_n) <> Name then
            begin
                NodeItem := NodeItem.getnext;
            end;
        until copy(trim(NodeItem.text), 1, parent_n) = Name;
    end;
    if parent_n = 0 then begin
        result := sender.Items.GetFirstNode;
    end else begin
        Result := NodeItem;
    end
end;

procedure Tfrm_kjsfdl.FormShow(Sender: TObject);
var
    n, parent_n: integer;
    zpkey: string;
    zptext: string;
    Node: TTreeNode;
begin
    pub_key := '';
    Treeviewzp.Items.Clear;
    Node := nil;
    qry_save.Close;
    qry_save.SQL.Clear;
    qry_save.sql.text := 'select * from  ' + zptable +
        ' where ' + zplbdm + '=:pkey';
    qry_save.Parameters.ParamByName('pkey').value := '';
    qry_save.Open;
    with querytree do begin
        close;
        sql.Clear;
        sql.text := 'select ' + zplbdm + ',' + zplbmc + ' from  ' + zptable +
            ' order by ' + zptableorder;
        open;
    end;
    if querytree.RecordCount = 0 then begin
        b_addchild.Enabled := false;
        b_edit.Enabled := false;
        b_delete.Enabled := false;
        abort;
    end;
    querytree.first;
    ZPKEY := trim(querytree[zplbdm]);
    N := LENGTH(ZPKEY);
    while not querytree.Eof do begin
        ZPKEY := trim(querytree[zplbdm]);
        ZPTEXT := trim(querytree[zplbmc]);
        if LENGTH(ZPKEY) = N then begin
            Node := TREEVIEWzp.items.Add(Node, ZPkey + '_' + zptext)
        end else if LENGTH(ZPKEY) > N then begin
            Node := TREEVIEWzp.items.AddChild(Node, ZPkey + '_' + zptext);
        end else begin
            parent_n := Treeleavelleng(length(zpkey));
            node := TreeFindItem(treeviewzp, copy(zpkey, 1, parent_n), parent_n);
            if parent_n <> 0 then begin
                node := TREEVIEWzp.ITEMS.ADDchild(node, ZPkey + '_' + zptext);
            end else begin
                Node := TREEVIEWzp.items.Add(Node, ZPkey + '_' + zptext)
            end;
        end;
        N := LENGTH(ZPKEY);
        querytree.Next;
        if node <> nil then node.ImageIndex := 1;
    end;
    querytree.First;
end;

procedure Tfrm_kjsfdl.treeviewzpChange(Sender: TObject; Node: TTreeNode);
begin
    if treeviewzp.selected <> nil then begin
        if treeviewzp.selected.text <> '' then
        begin
            pub_key := trim(treeviewzp.selected.text);
            pub_key := copy(pub_key, 1, pos('_', pub_key) - 1);
            querytree.Locate(zplbdm, pub_key, []);
            qry_save.close;
            qry_save.Parameters.ParamByName('pkey').value := pub_key;
            qry_save.open;
            node := treeviewzp.selected;
            zplevel := node.Level + 1;
            if zplevel = zpjx then
            else
        end else begin
            pub_key := '';
        end;
    end;
end;

procedure Tfrm_kjsfdl.b_addClick(Sender: TObject);
var
    zpkeylen, parent_n: integer;
    zpkey, parentkey, treetext: string;
begin
    mode := 'add';
    if treeviewzp.selected <> nil then begin
        treetext := trim(treeviewzp.Selected.Text);
        zpkey := copy(treetext, 1, pos('_', treetext) - 1);
        parent_n := Treeleavelleng(length(zpkey));
        parentkey := copy(zpkey, 1, parent_n);
        zpkeylen := length(zpkey) - parent_n;
        with qry_pub do begin
            close;
            sql.Clear;
            sql.text := 'select max(' + zplbdm + ') maxkey' + ' from ' +
                zptable + ' where ' + zplbdm + ' like ' +
                '''' + parentkey + '%' + '''';
            open;
        end;
        zpkey := copy(trim(qry_pub['maxkey']), parent_n + 1, zpkeylen);
        if length(zpkey) = 0 then zpkey := '0';
        zpkey := '0000' + trim(inttostr(strtoint(zpkey) + 1));
        delete(zpkey, 1, length(zpkey) - zpkeylen);
        zpkey := parentkey + zpkey;
        qry_save.Append;
        qry_save[zplbdm] := zpkey;
    end else begin
        if treeviewzp.items.getfirstnode = nil then begin
            zpkey := '00001';
            delete(zpkey, 1, length(zpkey) - strtoint(copy(zp, 1, 1)));
            qry_save.Append;
            qry_save[zplbdm] := zpkey;
        end else begin
            application.MessageBox('请选择要增加的节点', '提示', 0 + 16);
            abort;
        end;
    end;
    panel1.Enabled := true;
    dbedit2.SetFocus;
    b_add.Enabled := false;
    b_addchild.Enabled := false;
    b_edit.Enabled := false;
    treeviewzp.Enabled := false;
    b_save.Enabled := true;
    b_cancel.Enabled := true;
end;

procedure Tfrm_kjsfdl.b_editClick(Sender: TObject);
begin
    if treeviewzp.selected <> nil then
    begin
        mode := '';
        qry_save.edit;
        panel1.Enabled := true;
        dbedit2.SetFocus;
        dbcombobox1.ReadOnly := false;
        b_add.Enabled := false;
        b_edit.Enabled := false;
        treeviewzp.Enabled := false;
        b_addchild.Enabled := false;
        b_save.Enabled := true;
        b_cancel.Enabled := true;
    end;
end;

procedure Tfrm_kjsfdl.FormKeyPress(Sender: TObject; var Key: Char);
begin
    if key = #13 then
        selectnext(activecontrol as Twincontrol, true, true);
end;

procedure Tfrm_kjsfdl.b_addchildClick(Sender: TObject);
var
    node: Ttreenode;
    zpkeylen, zplevel: integer;
    zpkey, treetext, zpleveltext: string;
begin
    mode := 'addchild';
    if treeviewzp.selected <> nil then begin
        node := treeviewzp.selected;
        zplevel := node.Level + 1;
        if zplevel = zpjx then
        begin
            application.MessageBox('已经到树的最后一级，不能加子项', '提示', 0 + 16);
            abort;
        end;
        zplevel := strtoint(copy(zp, zplevel + 1, 1));
        treetext := trim(treeviewzp.Selected.Text);
        zpkey := copy(treetext, 1, pos('_', treetext) - 1);
        zpkeylen := length(zpkey) + zplevel;
        with qry_pub do begin
            close;
            sql.Clear;
            sql.Text := 'select * from sys_kjsfxm where dldm = ' + #39 + zpkey + #39;
            open;
        end;
        if not qry_pub.IsEmpty then
        begin
            application.MessageBox('此项目下已有明细收费项目不能加子项!', '提示', 0 + 48);
            abort;
        end;
        with qry_pub do begin
            close;
            sql.Clear;
            sql.text := 'select max(' + zplbdm + ') maxkey' + ' from ' +
                zptable + ' where ' + zplbdm + ' like ' +
                '''' + zpkey + '%' + '''';
            open;
        end;
        zpkey := trim(qry_pub['maxkey']);
        if zpkeylen = length(zpkey) then begin
            zpkeylen := length(zpkey);
            zpkey := '0000' + trim(floattostr(strtofloat(zpkey) + 1));
            delete(zpkey, 1, length(zpkey) - zpkeylen);
        end else begin
            zpleveltext := '00001';
            delete(zpleveltext, 1, length(zpleveltext) - zplevel);
            zpkey := zpkey + zpleveltext;
        end;
        qry_save.Append;
        qry_save[zplbdm] := zpkey;
        panel1.Enabled := true;
        dbedit2.SetFocus;
    end else begin
        application.MessageBox('请选择要增加的节点', '提示', 0 + 16);
        abort;
    end;
    b_add.Enabled := false;
    b_addchild.Enabled := false;
    treeviewzp.Enabled := false;
    b_edit.Enabled := false;
    b_save.Enabled := true;
    b_cancel.Enabled := true;
end;

procedure Tfrm_kjsfdl.b_saveClick(Sender: TObject);
var
    treetext: string;
    node: Ttreenode;
begin
    node := treeviewzp.Selected;
    if (qry_save.State = dsedit) or (qry_save.State = dsinsert) then
    begin
        if trim(qry_save.FieldByName('mc').asstring) = '' then
        begin
            application.MessageBox('名称不能为空！', '提示', 0 + 16);
            dbedit2.SetFocus;
            abort;
        end;
        treetext := trim(trim(qry_save[zplbdm]) + '_' + trim(qry_save[zplbmc]));
        dm_data.ado_mydata.BeginTrans;
        try
            qry_save['pym'] := string(GetPym(qry_save['mc']));
            qry_save.Post;
            dm_data.ado_mydata.CommitTrans;
        except
            dm_data.ado_mydata.RollbackTrans;
            application.MessageBox('存盘失败', '提示', 0 + 16)
        end;
        if mode = 'add' then
            node := treeviewzp.Items.Add(node, treetext)
        else
            if mode = 'addchild' then
                node := treeviewzp.Items.AddChild(node, treetext)
            else
                node.Text := treetext;
        node.ImageIndex := 1;
    end;
    b_add.Enabled := true;
    b_edit.Enabled := true;
    dbcombobox1.ReadOnly := true;
    treeviewzp.Enabled := true;
    b_addchild.Enabled := true;
    b_save.Enabled := false;
    b_cancel.Enabled := false;
end;

procedure Tfrm_kjsfdl.b_cancelClick(Sender: TObject);
begin
    if treeviewzp.selected <> nil then
    begin
        qry_save.Cancel;
        b_add.Enabled := true;
        b_edit.Enabled := true;
        dbcombobox1.ReadOnly := true;
        b_addchild.Enabled := true;
        treeviewzp.Enabled := true;
        b_save.Enabled := false;
        b_cancel.Enabled := false;
    end else begin
        application.MessageBox('请选择相应的节点', '提示', 0 + 48);
    end;
end;

procedure Tfrm_kjsfdl.b_deleteClick(Sender: TObject);
var
    treetext, zpkey: string;
begin
    if treeviewzp.selected <> nil then begin
        if application.MessageBox('真的要删除该节点吗?', '信息提示', 4 + 32) = 6 then
        begin
            treetext := trim(treeviewzp.Selected.Text);
            zpkey := copy(treetext, 1, pos('_', treetext) - 1);
            with qry_pub do begin
                close;
                sql.Clear;
                sql.text := 'delete  from ' + zptable +
                    ' where ' + zplbdm + ' like ' + '''' + zpkey + '%' + '''';
                dm_data.ado_mydata.BeginTrans;
                try
                    ExecSQL;
                    dm_data.ado_mydata.CommitTrans;
                    TreeViewzp.Items.Delete(TreeViewzp.Selected);
                    if treeviewzp.items.getfirstnode = nil then begin
                        b_addchild.Enabled := false;
                        b_edit.Enabled := false;
                        b_delete.Enabled := false;
                    end;
                except
                    dm_data.ado_mydata.RollbackTrans;
                    application.MessageBox('删除失败', '提示', 0 + 16)
                end;
            end;
        end;
    end else begin
        application.MessageBox('请选择要删除的节点', '提示', 0 + 16);
    end;
end;

procedure Tfrm_kjsfdl.QuerytreeAfterScroll(DataSet: TDataSet);
begin
//2005-03-09
  //   b_delete.Enabled:= (not pub_qybz) and (not Querytree.IsEmpty);
end;

end.
