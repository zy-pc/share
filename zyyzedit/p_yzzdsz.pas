unit p_yzzdsz;

interface

uses
    Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
    Db, DBTables, ExtCtrls, StdCtrls, Buttons, ComCtrls, Grids, DBGrids,
    Mask, DBCtrls, ImgList, Menus, ToolWin, ADODB, DBGridEh, PrnDbgeh, cxStyles,
    cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData,
    cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGridCustomTableView,
    cxGridTableView, cxGridDBTableView, cxGrid, GridsEh, DBGridEhGrouping;

type
    Tfrm_yzzdsz = class(TForm)
        ds_fydm: TDataSource;
        qry_pub: TADOQuery;
        qry_fydm: TADOQuery;
        Querytree: TADOQuery;
        ds_pub: TDataSource;
        Panel2: TPanel;
        Panel3: TPanel;
        Panel4: TPanel;
        b_save: TButton;
        b_cancel: TButton;
        Splitter1: TSplitter;
        PrintDBGridEh1: TPrintDBGridEh;
        Panel1: TPanel;
        Qry_zt: TADOQuery;
        DS_zt: TDataSource;
        Panel5: TPanel;
        BitBtn1: TBitBtn;
        Qry_look: TADOQuery;
        BitBtn2: TBitBtn;
        Qry_ztmx: TADOQuery;
        ds_ztmx: TDataSource;
        Splitter2: TSplitter;
        DBGridEh2: TDBGridEh;
        QryLook: TADOQuery;
        ImageList1: TImageList;
        treeviewzp: TTreeView;
        Panel7: TPanel;
        BitBtn6: TBitBtn;
        Edit1: TEdit;
        ComboBox1: TComboBox;
        Label2: TLabel;
        Label3: TLabel;
        UpDown1: TUpDown;
        Qry_yzxm: TADOQuery;
        DS_yzxm: TDataSource;
        Edit2: TEdit;
        Button1: TButton;
        Label4: TLabel;
        CheckBox1: TCheckBox;
        CheckBox2: TCheckBox;
        CheckBox3: TCheckBox;
        Label1: TLabel;
        DBEdit1: TDBEdit;
        Panel6: TPanel;
        cxGrid1DBTableView1: TcxGridDBTableView;
        cxGrid1Level1: TcxGridLevel;
        cxGrid1: TcxGrid;
        sp_cx_yp_yz: TADOStoredProc;
        ds_cx_yp_yz: TDataSource;
        cxGrid1DBTableView1DBColumn1: TcxGridDBColumn;
        cxGrid1DBTableView1DBColumn2: TcxGridDBColumn;
        cxGrid1DBTableView1DBColumn3: TcxGridDBColumn;
        cxGrid1DBTableView1DBColumn4: TcxGridDBColumn;
        cxGrid1DBTableView1DBColumn5: TcxGridDBColumn;
        cxGrid1DBTableView1DBColumn6: TcxGridDBColumn;
        cxGrid1DBTableView1DBColumn7: TcxGridDBColumn;
        cxGrid1DBTableView1DBColumn8: TcxGridDBColumn;
        cxGrid1DBTableView1DBColumn9: TcxGridDBColumn;
        DBGridEh1: TDBGridEh;
        b_adddl: TButton;
        bt_delete: TButton;
        procedure bt_deleteClick(Sender: TObject);
        procedure b_adddlClick(Sender: TObject);
        procedure Edit2KeyPress(Sender: TObject; var Key: Char);
        procedure DBGridEh2DblClick(Sender: TObject);
        procedure cxGrid1DBTableView1DblClick(Sender: TObject);
        procedure ds_ztmxDataChange(Sender: TObject; Field: TField);
        procedure ComboBox1Change(Sender: TObject);
        procedure Button1Click(Sender: TObject);
        procedure Qry_ztmxAfterScroll(DataSet: TDataSet);
        procedure DBGridEh1KeyDown(Sender: TObject; var Key: Word;
            Shift: TShiftState);
        procedure Qry_ztAfterScroll(DataSet: TDataSet);
        procedure DBEdit1Exit(Sender: TObject);
        procedure BitBtn6Click(Sender: TObject);
        procedure qry_fydmAfterScroll(DataSet: TDataSet);
        procedure FormCreate(Sender: TObject);
        procedure BitBtn2Click(Sender: TObject);
        procedure FormShow(Sender: TObject);
        procedure treeviewzpChange(Sender: TObject; Node: TTreeNode);
        procedure FormKeyPress(Sender: TObject; var Key: Char);
        procedure MyCheck;
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    private
    { Private declarations }
    public
        Getfydm: string;
        Getsfbz: Real;
        pub_key: string;
        mode: string;
        ksdm: string;
        zyksdm: string;
        ksmc: string;
        dldm: string;
        GetMaxID: string;
        myztmxid: string;
    { Public declarations }
    end;

var
    frm_yzzdsz: Tfrm_yzzdsz;
    cx_dldm: string;
    cx_fydm: string;
    MyEditID: string;
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

procedure Tfrm_yzzdsz.FormShow(Sender: TObject);
var
    n, parent_n: integer;
    zpkey: string;
    zptext: string;
    Node: TTreeNode;
begin
    Edit2.Text := '';
    ComboBox1.Text := '';
    Getfydm := '';
    Getsfbz := 0.00;
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
    if MyEditID = '' then
    begin
        b_adddlClick(self);
    end
    else
    begin
        Panel6.Enabled := True;
        b_adddl.Enabled := False;
        BitBtn2.Enabled := True;
        Qry_zt.close;
        Qry_zt.SQL.Clear;
        Qry_zt.SQL.Add('select * from zybl_ztdm Where ztid=''' + MyEditID + '''');
        Qry_zt.Open;
        if trim(Qry_zt.FieldByName('bqdm').AsString) <> '' then
            CheckBox1.Checked := True
        else
            CheckBox1.Checked := False;
        if trim(Qry_zt.FieldByName('ksdm').AsString) <> '' then
            CheckBox2.Checked := True
        else
            CheckBox2.Checked := False;
        if trim(Qry_zt.FieldByName('ysdm').AsString) <> '' then
            CheckBox3.Checked := True
        else
            CheckBox3.Checked := False;
        Qry_zt.Edit;
        Qry_ztmx.close;
        Qry_ztmx.Parameters.ParamByName('Varid1').Value := MyEditID;
        Qry_ztmx.Parameters.ParamByName('Varid2').Value := MyEditID;
        Qry_ztmx.Open;
        GetMaxID := MyEditID;
    end;
end;

procedure Tfrm_yzzdsz.treeviewzpChange(Sender: TObject; Node: TTreeNode);
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
            qry_fydm.SQL.Clear;
            qry_fydm.SQL.Add('select * from sys_yzxm Where dldm like ''' + dldm + '%' + '''');
       //qry_fydm.Parameters.ParamByName('vdldm').value:=dldm+'%';
            qry_fydm.open; //qry_fydm
        end else
        begin
            pub_key := '';
        end;

    end;
end;

procedure Tfrm_yzzdsz.FormKeyPress(Sender: TObject; var Key: Char);
begin
    if key = #13 then
        selectnext(activecontrol as Twincontrol, true, true);
end;

procedure Tfrm_yzzdsz.BitBtn2Click(Sender: TObject);
begin
    MyCheck;
    if CheckBox1.Checked then
        Qry_zt['bqdm'] := Pub_bqdm;
    if CheckBox2.Checked then
        Qry_zt['ksdm'] := Pub_ksdm;
    if CheckBox3.Checked then
        Qry_zt['ysdm'] := Pub_czydm;
    Qry_zt['czy'] := Pub_czydm;
    Qry_zt.UpdateBatch(Arall);
    GetMaxID := Qry_zt.FieldByName('ztid').AsString;
    if GetMaxID <> '' then
    begin
        BitBtn2.Enabled := False;
    end;

end;

procedure Tfrm_yzzdsz.MyCheck;
begin
    if (not CheckBox1.Checked) and (not CheckBox2.Checked) and (not CheckBox3.Checked) then
    begin
        Application.MessageBox('请选择所建立主导的类别！', '信息提示', 16);
        CheckBox1.SetFocus;
        Abort;
    end;
    if trim(DBEdit1.text) = '' then
    begin
        Application.MessageBox('请输入建立主导的名称！', '信息提示', 16);
        DBEdit1.SetFocus;
        Abort;
    end;

end;

procedure Tfrm_yzzdsz.FormCreate(Sender: TObject);
begin
    GetMaxID := '';
end;

procedure Tfrm_yzzdsz.qry_fydmAfterScroll(DataSet: TDataSet);
begin
    if (DBGridEh2.SelectedRows.Count >= 0) and (GetMaxID <> '') then
    begin
        BitBtn6.Enabled := True;
    end
    else
    begin
        BitBtn6.Enabled := False;
    end;
end;

procedure Tfrm_yzzdsz.BitBtn6Click(Sender: TObject);
var
    j: integer;
    ls_sql: string;
begin
    if trim(ComboBox1.text) = '' then
    begin
        Application.MessageBox('医嘱类别不能为空、请选择类别！', '信息提示', 16);
        ComboBox1.SetFocus;
        abort;
    end;
    if strtoint(edit1.text) < 1 then
    begin
        Application.MessageBox('医嘱执行数量不能为0、请输入数量！', '信息提示', 16);
        edit1.SetFocus;
        abort;
    end;
    if DBGridEh2.SelectedRows.Count > 1 then
    begin
    //Application.MessageBox(Pchar('你选择的医嘱项目的类别是否都是“'+trim(ComboBox1.text)+'”、数量都是“'+trim(edit1.text)+'”？'),'信息提示',32);
        if Application.MessageBox(Pchar('你选择的医嘱项目的类别是否都是“' + trim(ComboBox1.text) + '”、数量都是“' + trim(edit1.text) + '”？'), '信息提示', MB_OKCANCEL + MB_DEFBUTTON1) <> IDOK then
            DBGridEh2.SetFocus;
    end;
////////判断是否已有选择医嘱项目////////////
    QryLook.close;
    QryLook.SQL.Clear;
    QryLook.SQL.Add('Select * from zybl_ztmx Where ztid=''' + GetMaxID + '''');
    QryLook.Open;
    if (combobox1.Text = '药品') or (combobox1.Text = '材料')  then
    begin
        if QryLook.Locate('yzdm', TRim(sp_cx_yp_yz.fieldbyname('ypdm').Asstring), []) then
        begin
            Application.MessageBox('在主导项目中医嘱项目不能重复！', '信息提示', 16);
            exit;
            abort;
        end;
    end else
    begin
        for j := 0 to DBGridEh2.SelectedRows.Count - 1 do
        begin
            DBGridEh2.DataSource.DataSet.GotoBookmark(pointer(DBGridEh2.SelectedRows.Items[j]));
            if QryLook.Locate('yzdm', TRim(DBGridEh2.DataSource.DataSet.fieldbyname('xmdm').Asstring), []) then
            begin
                Application.MessageBox('在主导项目中医嘱项目不能重复！', '信息提示', 16);
                exit;
                abort;
            end;
        end;
    end;

////////判断是否已有选择医嘱项目////////////
    if (combobox1.Text = '药品') or (combobox1.Text = '材料') then
    begin
  //增加药品
        QryLook.Close;
        QryLook.SQL.Clear;
        QryLook.close;
        QryLook.SQL.Clear;
        QryLook.SQL.Add('inSert zybl_ztmx(yzdm,ztid,yzlb,sl) Values(''' + TRim(sp_cx_yp_yz.fieldbyname('ypdm').Asstring) + '''');
        QryLook.SQL.Add(',''' + GetMaxID + '''');
        QryLook.SQL.Add(',''' + trim(ComboBox1.text) + '''');
        QryLook.SQL.Add(',''' + trim(edit1.text) + ''')');
        QryLook.ExecSQL;
    end
    else if combobox1.Text <> '' then
    begin
  //增加检验，检查，治疗
        for j := 0 to DBGridEh2.SelectedRows.Count - 1 do
        begin
            DBGridEh2.DataSource.DataSet.GotoBookmark(pointer(DBGridEh2.SelectedRows.Items[j]));
            QryLook.close;
            QryLook.SQL.Clear;
            QryLook.SQL.Add('inSert zybl_ztmx(yzdm,ztid,yzlb,sl) Values(''' + TRim(DBGridEh2.DataSource.DataSet.fieldbyname('xmdm').Asstring) + '''');
            QryLook.SQL.Add(',''' + GetMaxID + '''');
            QryLook.SQL.Add(',''' + trim(ComboBox1.text) + '''');
            QryLook.SQL.Add(',''' + trim(edit1.text) + '''' + ')');
            QryLook.ExecSQL;
        end;
    end;
    Qry_ztmx.Close;
    Qry_ztmx.Parameters.ParamByName('Varid1').Value := GetMaxID;
    Qry_ztmx.Parameters.ParamByName('Varid2').Value := GetMaxID;
    Qry_ztmx.Open;
    Qry_ztmx.Last;
end;

procedure Tfrm_yzzdsz.DBEdit1Exit(Sender: TObject);
begin
    if trim(DBEdit1.text) <> '' then
    begin
        BitBtn2.SetFocus;
    end
    else
    begin
        Application.MessageBox('请输入主导项目名称！', '信息提示', 16);
        DBEdit1.SetFocus;
        Abort;
    end;
end;

procedure Tfrm_yzzdsz.Qry_ztAfterScroll(DataSet: TDataSet);
begin
{
  IF Qry_zt.State<>dsInsert Then
   Begin
    Qry_ztmx.Close;
    Qry_ztmx.Parameters.ParamByName('Varid').Value:=Qry_zt.FieldByName('ztid').AsString;;
    Qry_ztmx.Open;
   end;
   }
end;

procedure Tfrm_yzzdsz.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
    if not Qry_ztmx['qybz'] = true then
    begin
        DBGridEh1.Canvas.Brush.Color := cllime;
        DBGridEh1.Canvas.Font.color := clblue;
    end;
    DBGridEh1.DefaultDrawColumnCell(rect, datacol, column, state);
end;

procedure Tfrm_yzzdsz.DBGridEh1KeyDown(Sender: TObject; var Key: Word;
    Shift: TShiftState);
begin
    if (key = VK_ESCAPE) and ('' <> myztmxid) then
    begin
        QryLook.close;
        QryLook.SQl.clear;
        QryLook.SQL.Add('Delete from zybl_ztmx Where yzdm=''' + myztmxid + '''');
        QryLook.ExecSQL;
        Qry_ztmx.close;
        Qry_ztmx.Open;
    end;
end;

procedure Tfrm_yzzdsz.Qry_ztmxAfterScroll(DataSet: TDataSet);
begin
    myztmxid := trim(Qry_ztmx.FieldByName('xmdm').AsString);
end;

procedure Tfrm_yzzdsz.Button1Click(Sender: TObject);
begin
    if combobox1.Text = '药品' then
    begin
        sp_cx_yp_yz.Close;
        sp_cx_yp_yz.Parameters.ParamValues['@pym'] := trim(edit2.Text);
        sp_cx_yp_yz.Parameters.ParamValues['@jsfs'] := '0';
        sp_cx_yp_yz.Open;
    end
    else begin
        qry_fydm.close;
        qry_fydm.SQL.Clear;
        qry_fydm.SQL.Add('exec zybl_cx_yzxm ''' + trim(edit2.text) + '%' + '''');
        qry_fydm.open;
    end;
end;

procedure Tfrm_yzzdsz.ComboBox1Change(Sender: TObject);
begin
    if combobox1.Text = '药品' then
    begin
        if sp_cx_yp_yz.IsEmpty then begin
            sp_cx_yp_yz.Close;
            sp_cx_yp_yz.Parameters.ParamValues['@pym'] := trim(edit2.Text);
            sp_cx_yp_yz.Parameters.ParamValues['@jsfs'] := '0';
            sp_cx_yp_yz.Parameters.ParamValues['@ksdm'] := pub_zyxyfdm;
            sp_cx_yp_yz.Open;
        end;
        panel6.Visible := true;
    end
    else
    if combobox1.Text = '材料' then
    begin
        if sp_cx_yp_yz.IsEmpty then begin
            sp_cx_yp_yz.Close;
            sp_cx_yp_yz.Parameters.ParamValues['@pym'] := trim(edit2.Text);
            sp_cx_yp_yz.Parameters.ParamValues['@jsfs'] := '2';
            sp_cx_yp_yz.Parameters.ParamValues['@ksdm'] := pub_ksdm;
            sp_cx_yp_yz.Open;
        end;
        panel6.Visible := true;
    end
    else
        panel6.Visible := false;
end;

procedure Tfrm_yzzdsz.ds_ztmxDataChange(Sender: TObject; Field: TField);
begin
    myztmxid := trim(Qry_ztmx.FieldByName('xmdm').AsString);
end;

procedure Tfrm_yzzdsz.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
    bitbtn6.Click;
end;

procedure Tfrm_yzzdsz.DBGridEh2DblClick(Sender: TObject);
begin
    bitbtn6.Click;
end;

procedure Tfrm_yzzdsz.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
    if key = #13 then
        button1.Click;
end;

procedure Tfrm_yzzdsz.b_adddlClick(Sender: TObject);
begin
    Qry_zt.Close;
    Qry_zt.SQL.Clear;
    Qry_zt.SQL.Add('select * from zybl_ztdm Where czy=''' + Pub_czydm + '''');
//Qry_zt.SQL.Add('select * from zybl_ztdm Where czy=:Varczy');
//Qry_zt.Parameters.ParamByName('Varczy').Value :=Pub_czydm;
    Qry_zt.open;
    Qry_zt.Append;
    Panel6.Enabled := True;
    CheckBox1.SetFocus;
    BitBtn2.Enabled := True;
    b_adddl.Enabled := False;
end;

procedure Tfrm_yzzdsz.bt_deleteClick(Sender: TObject);
begin
  if (not sp_cx_yp_yz.Active) or ( 1 > sp_cx_yp_yz.RecordCount) then
    Exit;

    QryLook.close;
    QryLook.SQl.clear;
    QryLook.SQL.Add('Delete from zybl_ztmx Where yzdm=''' + myztmxid + '''');
    QryLook.ExecSQL;
    Qry_ztmx.close;
    Qry_ztmx.Open;
end;

end.
