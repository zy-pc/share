unit p_kjsfxm;
                                                                                        
interface

uses
    Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
    Db, DBTables, ExtCtrls, StdCtrls, Buttons, ComCtrls, Grids, DBGrids,
    Mask, DBCtrls, ImgList, Menus, ToolWin, ADODB, DBGridEh, PrnDbgeh, GridsEh,
  DBGridEhGrouping;

type
    Tfrm_kjsfxm = class(TForm)
        ImageList1: TImageList;
        ds_fydm: TDataSource;
        qry_pub: TADOQuery;
        qry_fydm: TADOQuery;
        Querytree: TADOQuery;
        ds_pub: TDataSource;
        sp_fysycx: TADOStoredProc;
        sp_cxfylb: TADOStoredProc;
        Panel2: TPanel;
        Panel3: TPanel;
        treeviewzp: TTreeView;
        Panel4: TPanel;
        Panel1: TPanel;
        Label1: TLabel;
        Label2: TLabel;
        Label3: TLabel;
        Label11: TLabel;
        Label10: TLabel;
        Label12: TLabel;
        Label16: TLabel;
        DBEdit1: TDBEdit;
        DBEdit2: TDBEdit;
        DBEdit3: TDBEdit;
        DBEdit4: TDBEdit;
        DBCheckBox1: TDBCheckBox;
        editzyks: TEdit;
        editmzks: TEdit;
        DBEdit10: TDBEdit;
        DBEdit13: TDBEdit;
        b_add: TButton;
        b_edit: TButton;
        b_print: TBitBtn;
        b_cx: TButton;
        Splitter1: TSplitter;
        Bevel1: TBevel;
        Panel5: TPanel;
        dbgrid2: TDBGridEh;
        Splitter2: TSplitter;
        PrintDBGridEh1: TPrintDBGridEh;
        DBGrid1: TDBGrid;
        b_delete: TBitBtn;
        Bevel2: TBevel;
        sp_fyxgsfbz: TADOStoredProc;
        Label5: TLabel;
        DBEdit5: TDBEdit;
        Label6: TLabel;
        Edit1: TEdit;
        Label7: TLabel;
        DBEdit6: TDBEdit;
        Label8: TLabel;
        Edit2: TEdit;
        SP_fyxm: TADOStoredProc;
        DS_yp: TDataSource;
        DBGrid3: TDBGrid;
        b_cancel: TButton;
        b_save: TButton;
        BitBtn1: TBitBtn;
        procedure DBEdit6KeyPress(Sender: TObject; var Key: Char);
        procedure DBGrid3Exit(Sender: TObject);
        procedure DBGrid3KeyPress(Sender: TObject; var Key: Char);
        procedure DBGrid3DblClick(Sender: TObject);
        procedure Edit1KeyPress(Sender: TObject; var Key: Char);
        procedure BitBtn4Click(Sender: TObject);
        procedure FormShow(Sender: TObject);
        procedure treeviewzpChange(Sender: TObject; Node: TTreeNode);
        procedure b_addClick(Sender: TObject);
        procedure b_saveClick(Sender: TObject);
        procedure b_cancelClick(Sender: TObject);
        procedure b_editClick(Sender: TObject);
        procedure DBEdit2Exit(Sender: TObject);
        procedure editmzksKeyPress(Sender: TObject; var Key: Char);
        procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
        procedure DBGrid1Exit(Sender: TObject);
        procedure FormKeyPress(Sender: TObject; var Key: Char);
        procedure b_deleteClick(Sender: TObject);
        procedure DBCheckBox1Click(Sender: TObject);
        procedure qry_fydmAfterScroll(DataSet: TDataSet);
        procedure editzyksKeyPress(Sender: TObject; var Key: Char);
        procedure b_cxClick(Sender: TObject);
        procedure editmzksChange(Sender: TObject);
        procedure editzyksChange(Sender: TObject);
        procedure b_printClick(Sender: TObject);
    private
    { Private declarations }
    public
        Getfydm: string;
        pub_key: string;
        mode: string;
        ksdm: string;
        zyksdm: string;
        ksmc: string;
        dldm: string;
    { Public declarations }
    end;

var
    frm_kjsfxm: Tfrm_kjsfxm;
    cx_dldm: string;
    cx_fydm: string;
const
    zp = '22222';
    zpjx = 5;
    zplbdm = 'dm';
    zplbmc = 'mc';
    zptable = 'zybl_ztdl';
    zptableorder = 'dm';
    begin_char = '_';
function TreeFindItem(Sender: TTreeView; Name: string; parent_n: integer): TTreeNode;
function Treeleavelleng(zpkeyleng: integer): integer;

implementation
uses p_dm, p_func, p_cxsf_xm;


{$R *.DFM}

function Treeleavelleng(zpkeyleng: integer): integer;
var
    levellength, i: integer;
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

procedure Tfrm_kjsfxm.BitBtn4Click(Sender: TObject);
begin
    close;
end;

procedure Tfrm_kjsfxm.FormShow(Sender: TObject);
var
    n, parent_n: integer;
    zpkey: string;
    zptext: string;
    Node: TTreeNode;
begin
    Getfydm := '';
    pub_key := '';
    Treeviewzp.Items.Clear;
    Node := nil;
    with querytree do begin
        close;
        sql.Clear;
        sql.text := 'select ' + zplbdm + ',' + zplbmc + ' from  ' + zptable +
            ' order by ' + zptableorder;
        open;
    end;
    if querytree.RecordCount = 0 then begin
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

procedure Tfrm_kjsfxm.treeviewzpChange(Sender: TObject; Node: TTreeNode);
begin
    if treeviewzp.selected <> nil then begin
        if treeviewzp.selected.text <> '' then
        begin
            pub_key := trim(treeviewzp.selected.text);
            pub_key := copy(pub_key, 1, pos('_', pub_key) - 1);
            dldm := pub_key;
            pub_key := copy(pub_key, 1, 2);
            querytree.Locate(zplbdm, pub_key, []);
            qry_fydm.close;
            qry_fydm.Parameters.ParamByName('vdldm').value := dldm + '%';
            qry_fydm.open;
            b_edit.Enabled := (not qry_fydm.IsEmpty);
        end else begin
            pub_key := '';
        end;
        if node.HasChildren = false then
        begin
            b_add.Enabled := true;
            b_edit.Enabled := true;
        end else begin
            b_add.Enabled := false;
            b_edit.Enabled := false;
        end;
// 2005-03-09
  //   b_delete.Enabled:= (not pub_qybz) and (not qry_fydm.IsEmpty);

    end;
end;

procedure Tfrm_kjsfxm.b_addClick(Sender: TObject);
var
    v_fydm: string;
begin
    if treeviewzp.selected <> nil then
    begin
    //申请费用代码
        with qry_pub do
        begin
            close;
            sql.Clear;
            sql.Text := 'select max(xmdm) maxdm from sys_yzxm ';
            open;
        end;
        if qry_pub.FieldByName('maxdm').asstring = '' then
        begin
            v_fydm := '0001';
        end else begin
            v_fydm := '0000' + trim(floattostr(strtofloat(qry_pub.FieldByName('maxdm').asstring) + 1));
            delete(v_fydm, 1, length(v_fydm) - 4);
        end;
        qry_fydm.Append;
        qry_fydm['xmdm'] := v_fydm;
        qry_fydm['dldm'] := dldm;
        qry_fydm['dw'] := '人次';
        qry_fydm['qybz'] := false;

        panel1.Enabled := true;
        dbedit2.SetFocus;
        b_add.Enabled := false;
        b_edit.Enabled := false;
        treeviewzp.Enabled := false;
        dbgrid2.Enabled := false;
        b_save.Enabled := true;
        b_cancel.Enabled := true;
    end else begin
        application.MessageBox('请选择类别树', '提示', 0 + 48);
    end;
end;

procedure Tfrm_kjsfxm.b_saveClick(Sender: TObject);
var
    hotkey: string;
    fymc: string;
begin
    hotkey := trim(dbedit13.text);
    fymc := trim(dbedit2.text);
    with qry_pub do begin
        close;
        sql.Clear;
        sql.Text := 'select * from sys_yzxm where hotkey=' + '''' + hotkey + '''';
        open;
    end;
    if (qry_pub.RecordCount >= 1) and (hotkey <> '') then
    begin
        application.MessageBox('该热已定义!请修改!', '提示', 0 + 16);
        dbedit13.SelectAll;
        dbedit13.SetFocus;
        abort;
    end;
    with qry_pub do begin
        close;
        sql.Clear;
        sql.Text := 'select * from sys_yzxm where xmmc=' + '''' + fymc + '''';
        open;
    end;
    if (qry_pub.RecordCount > 0) and (qry_fydm.State = dsinsert) then
    begin
        application.MessageBox('该医嘱名称已使用、请修改！', '提示', 0 + 16);
        dbedit2.SelectAll;
        dbedit2.SetFocus;
        abort;
    end;
    if (qry_pub.RecordCount > 1) and (qry_fydm.State = dsedit) then
    begin
        application.MessageBox('该医嘱名称已使用、请修改！', '提示', 0 + 16);
        dbedit2.SelectAll;
        dbedit2.SetFocus;
        abort;
    end;
    if (qry_fydm.State = dsedit) or (qry_fydm.State = dsinsert) then
    begin
        if trim(qry_fydm.FieldByName('xmmc').asstring) = '' then
        begin
            application.MessageBox('医嘱名称不能为空！', '提示', 0 + 16);
            dbedit2.SetFocus;
            abort;
        end;
    end;
    sp_cxfylb.Active := false;
    sp_cxfylb.Parameters.ParamByName('@dldm').value := dbedit10.Text;
    sp_cxfylb.Parameters.ParamByName('@sc_zt').value := '0';
    sp_cxfylb.ExecProc;
    if sp_cxfylb.Parameters.ParamByName('@sc_zt').value = '1' then
    begin
        application.MessageBox('无此医嘱大类代码！', '提示', 0 + 16);
        dbedit10.SetFocus;
        dbedit10.SelectAll;
        abort;
    end;
    qry_fydm['mzks'] := ksdm;
    qry_fydm['zyks'] := zyksdm;

    qry_fydm.Post;
    dm_data.ado_mydata.BeginTrans;
    try
        qry_fydm.UpdateBatch;
   {  IF Getsfbz<>GetNewsybz Then   //修改打包费用的总金额
      Begin
       sp_fyxgsfbz.Active:=false;
       sp_fyxgsfbz.Parameters.ParamByName('@fydm').value:=Getfydm;
       sp_fyxgsfbz.ExecProc;
      End; }
        dm_data.ado_mydata.CommitTrans;
    except
        dm_data.ado_mydata.RollbackTrans;
        application.MessageBox('保存失败', '提示', 0 + 16);
    end;
    panel1.Enabled := false;
    b_add.Enabled := true;
    b_edit.Enabled := true;
    treeviewzp.Enabled := true;
    dbgrid2.Enabled := true;
    b_save.Enabled := false;
    b_cancel.Enabled := false;
    Getfydm := '';
end;

procedure Tfrm_kjsfxm.b_cancelClick(Sender: TObject);
begin
    if treeviewzp.selected <> nil then
    begin
        qry_fydm.Cancel;
        panel1.Enabled := false;
        b_add.Enabled := true;
        b_edit.Enabled := true;
        treeviewzp.Enabled := true;
        dbgrid2.Enabled := true;
        b_save.Enabled := false;
        b_cancel.Enabled := false;
    end;
end;

procedure Tfrm_kjsfxm.b_editClick(Sender: TObject);
begin
    Getfydm := '';
    if treeviewzp.selected <> nil then
    begin
        Getfydm := trim(qry_fydm.FieldByName('xmdm').AsString);
        qry_fydm.edit;
        panel1.Enabled := true;
        dbedit2.SetFocus;
        b_add.Enabled := false;
        b_edit.Enabled := false;
        treeviewzp.Enabled := false;
        dbgrid2.Enabled := false;
        b_save.Enabled := true;
        b_cancel.Enabled := true;
    end;
end;

procedure Tfrm_kjsfxm.DBEdit2Exit(Sender: TObject);
begin
    if TRIM(DBEDIT3.TEXT) = '' then
        qry_fydm['pym'] := string(GetPym(dbedit2.text));
    dbedit3.SelectAll;
end;

procedure Tfrm_kjsfxm.editmzksKeyPress(Sender: TObject; var Key: Char);
begin
    if key = #13 then
    begin
        qry_pub.close;
        qry_pub.SQL.Clear;
        qry_pub.SQL.text := 'select dm,mc,pym from sys_ksdm where pym like ' +
            '''' + '%' + trim(editmzks.Text) + '%' + '''' +
            ' or dm like ' + '''' + '%' + trim(editmzks.Text) + '%' + '''' +
            ' or mc like ' + '''' + '%' + trim(editmzks.Text) + '%' + '''';
        qry_pub.Open;
        if qry_pub.RecordCount = 0 then
        begin
            application.MessageBox('没有满足条件的科室!', '注意', 16);
            editmzks.Clear;
            editmzks.SetFocus;
            abort;
        end
        else
            if qry_pub.RecordCount = 1 then
            begin
                editmzks.Text := qry_pub['mc'];
                ksdm := qry_pub['dm'];
                editzyks.SetFocus;
            end
            else
            begin
                dbgrid1.Top := 191;
                dbgrid1.left := 405;
                dbgrid1.tag := 1;
                dbgrid1.Visible := true;
                dbgrid1.SetFocus;
            end;
    end;
end;

procedure Tfrm_kjsfxm.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
    if (key = #13) and (dbgrid1.tag = 1) then
    begin
        editmzks.Text := qry_pub['mc'];
        ksdm := qry_pub['dm'];
        dbgrid1.Visible := false;
        editzyks.SetFocus;
    end;
    if (key = #13) and (dbgrid1.tag = 2) then
    begin
        editzyks.Text := qry_pub['mc'];
        zyksdm := qry_pub['dm'];
        dbgrid1.Visible := false;
        Edit1.SetFocus;
    end;
    if (key = #27) and (dbgrid1.tag = 1) then
    begin
        editmzks.Clear;
        ksdm := '';
        dbgrid1.Visible := false;
        editmzks.SetFocus;
    end;
    if (key = #27) and (dbgrid1.tag = 2) then
    begin
        editzyks.Clear;
        zyksdm := '';
        dbgrid1.Visible := false;
        editzyks.SetFocus;
    end;
end;

procedure Tfrm_kjsfxm.DBGrid1Exit(Sender: TObject);
begin
    dbgrid1.Visible := false;
end;

procedure Tfrm_kjsfxm.FormKeyPress(Sender: TObject; var Key: Char);
begin
    if key = #13 then
        selectnext(activecontrol as Twincontrol, true, true);
end;

procedure Tfrm_kjsfxm.b_deleteClick(Sender: TObject);
var
    v_fydm: string;
begin
    sp_fysycx.Active := false;
    sp_fysycx.Parameters.ParamByName('@fydm').value := qry_fydm['xmdm'];
    sp_fysycx.Parameters.ParamByName('@fysybz').value := false;
    sp_fysycx.ExecProc;
    if not sp_fysycx.Parameters.ParamByName('@fysybz').value then
    begin
        if not qry_fydm.IsEmpty then
        begin
            v_fydm := trim(qry_fydm.fieldbyname('xmdm').asstring);
            if application.MessageBox('真的要删除该医嘱项目吗？', '信息提示', 4 + 32) = 6 then
                with qry_pub do begin
                    close;
                    sql.Clear;
                    sql.Text := 'delete sys_yzxm where xmdm=' + #39 + v_fydm + #39;
                    dm_data.ado_mydata.BeginTrans;
                    try
                        execsql;
                        dm_data.ado_mydata.CommitTrans;
                        qry_fydm.Close;
                        qry_fydm.Parameters.ParamByName('vdldm').value := dldm;
                        qry_fydm.Open;
                    except
                        dm_data.ado_mydata.RollbackTrans;
                        application.MessageBox('删除失败', '提示', 0 + 48);
                    end;
                end;
        end;
    end
    else
        application.MessageBox('该医嘱项目已使用过不能删除。', '提示', 0 + 48);
end;

procedure Tfrm_kjsfxm.DBCheckBox1Click(Sender: TObject);
begin
    if dbcheckbox1.Focused then
        if not dbcheckbox1.Checked then
        begin
            sp_fysycx.Active := false;
            sp_fysycx.Parameters.ParamByName('@fydm').value := qry_fydm['xmdm'];
            sp_fysycx.Parameters.ParamByName('@fysybz').value := false;
            sp_fysycx.ExecProc;
            if sp_fysycx.Parameters.ParamByName('@fysybz').value then
            begin
                application.MessageBox('该医嘱项目已使用过不能停用。', '提示', 0 + 48);
                dbcheckbox1.Checked := true;
            end;
        end;
end;

procedure Tfrm_kjsfxm.qry_fydmAfterScroll(DataSet: TDataSet);
begin
    try
        qry_pub.close;
        qry_pub.SQL.clear;
        qry_pub.SQL.Text := 'select * from sys_ksdm where dm=' +
            '''' + qry_fydm.fieldbyname('mzks').asstring + '''';
        qry_pub.open;
        ksdm := qry_pub.fieldbyname('dm').asstring;
        editmzks.text := qry_pub.fieldbyname('mc').asstring;

        qry_pub.close;
        qry_pub.SQL.clear;
        qry_pub.SQL.Text := 'select * from sys_ksdm where dm=' +
            '''' + qry_fydm.fieldbyname('zyks').asstring + '''';
        qry_pub.open;
        zyksdm := qry_pub.fieldbyname('dm').asstring;
        editzyks.text := qry_pub.fieldbyname('mc').asstring;
    except
        application.MessageBox('无效对应科室', '提示', 0 + 48);
    end;
    qry_pub.close;
    qry_pub.SQL.clear;
    qry_pub.SQL.Text := 'select * from sys_kjsfxm where fydm=' +
        '''' + qry_fydm.fieldbyname('fydm').asstring + '''';
    qry_pub.open;
    edit1.Text := trim(qry_pub.fieldbyname('fydm').asstring);
    edit2.Text := trim(qry_pub.fieldbyname('fymc').asstring);
end;

procedure Tfrm_kjsfxm.editzyksKeyPress(Sender: TObject; var Key: Char);
begin
    if key = #13 then
    begin
        qry_pub.close;
        qry_pub.SQL.Clear;
        qry_pub.SQL.text := 'select dm,mc,pym from sys_ksdm where pym like ' +
            '''' + '%' + trim(editzyks.Text) + '%' + '''' +
            ' or dm like ' + '''' + '%' + trim(editzyks.Text) + '%' + '''' +
            ' or mc like ' + '''' + '%' + trim(editzyks.Text) + '%' + '''';
        qry_pub.Open;
        if qry_pub.RecordCount = 0 then
        begin
            application.MessageBox('没有满足条件的科室!', '注意', 16);
            editmzks.Clear;
            editmzks.SetFocus;
            abort;
        end
        else
            if qry_pub.RecordCount = 1 then
            begin
                editzyks.Text := qry_pub['mc'];
                zyksdm := qry_pub['dm'];
                Edit1.SetFocus;
            end
            else
            begin
                dbgrid1.Top := 191;
                dbgrid1.Left := 532;
                dbgrid1.tag := 2;
                dbgrid1.Visible := true;
                dbgrid1.SetFocus;
            end;
    end;
end;

procedure Tfrm_kjsfxm.b_cxClick(Sender: TObject);
var
    txt: string;
    i: integer;
begin
    application.CreateForm(TFrm_cxsf_xm, Frm_cxsf_xm);
    try
        Frm_cxsf_xm.ShowModal;
    finally
        Frm_cxsf_xm.free;
    end;
    if cx_fydm = '' then
        abort
    else
    begin
        for i := 0 to treeviewzp.Items.Count - 1 do
            if treeviewzp.Items[i].Level > -1 then
            begin
                txt := copy(treeviewzp.Items[i].text, 1, pos(begin_char, treeviewzp.Items[i].text) - 1);
                if txt = cx_dldm then
                begin
                    treeviewzp.Items[i].Selected := true;
                    qry_fydm.Locate('xmdm', cx_fydm, []);
                    dbgrid2.SetFocus;
                    exit;
                end;
            end;
    end;
end;

procedure Tfrm_kjsfxm.editmzksChange(Sender: TObject);
begin
    if trim(editmzks.text) = '' then ksdm := '';
end;

procedure Tfrm_kjsfxm.editzyksChange(Sender: TObject);
begin
    if trim(editzyks.text) = '' then zyksdm := '';
end;

procedure Tfrm_kjsfxm.b_printClick(Sender: TObject);
begin

    qry_fydm.filtered := false;
    qry_fydm.filter := 'xmmc<>' + char(39) + char(39);
  //qry_fydm.filtered:=(not DBCheckBox1.Checked);
    qry_fydm.filtered := DBCheckBox1.Checked;
    printdbgrideh1.title.Text := '打印日期:' + formatdatetime('yyyy-mm-dd', frm_func.curr_date);
    printdbgrideh1.PageHeader.centerText.Text := pub_yymc + ':医嘱项目' + char(13) + trim(treeviewzp.selected.text);
    PrintDBGridEh1.Preview;
    qry_fydm.filter := '';
    qry_fydm.filtered := false;

end;

procedure Tfrm_kjsfxm.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #13 then
    begin
        sp_fyxm.close;
        sp_fyxm.Parameters.ParamByName('@pym').value := trim(edit1.text) + '%';
        edit1.TEXT := '';
        sp_fyxm.open;
        if SP_fyxm.RecordCount = 1 then
        begin
            qry_fydm['fydm'] := trim(sp_fyxm.FieldByName('fydm').AsString);
            Edit1.Text := trim(sp_fyxm.FieldByName('fydm').AsString);
            Edit2.Text := trim(sp_fyxm.FieldByName('fymc').AsString);
            DBCheckBox1.SetFocus;
        end
        else if SP_fyxm.RecordCount > 1 then
        begin
            DBGrid3.Enabled := true;
            DBGrid3.Visible := True;
            DBGrid3.SetFocus;
        end
        else
        begin
            SP_fyxm.close;
            application.MessageBox('没有满足条件的费用项目！', '提示', 16);
            dbgrid3.Enabled := false;
            edit1.SetFocus;
        end;
    end;
end;

procedure Tfrm_kjsfxm.DBGrid3DblClick(Sender: TObject);
begin
    qry_fydm['fydm'] := trim(sp_fyxm.FieldByName('fydm').AsString);
    Edit1.Text := trim(sp_fyxm.FieldByName('fydm').AsString);
    Edit2.Text := trim(sp_fyxm.FieldByName('fymc').AsString);
    DBCheckBox1.SetFocus;
end;

procedure Tfrm_kjsfxm.DBGrid3KeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #13 then
        DBGrid3DblClick(self);
end;

procedure Tfrm_kjsfxm.DBGrid3Exit(Sender: TObject);
begin
    DBGrid3.Visible := False;
end;

procedure Tfrm_kjsfxm.DBEdit6KeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #13 then
        b_save.SetFocus;
end;

end.
