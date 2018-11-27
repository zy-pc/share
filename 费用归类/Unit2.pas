unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, StdCtrls, ImgList, Db, Grids, DBGrids, DBTables, Buttons,
  ExtCtrls, DBCtrls, ADODB, ToolWin, GridsEh, DBGridEh;

type
  TForm2 = class(TForm)
    Bevel2: TBevel;
    Bevel1: TBevel;
    Label1: TLabel;
    bvl1: TBevel;
    lbl1: TLabel;
    lbl2: TLabel;
    Panel2: TPanel;
    Button4: TButton;
    Button3: TButton;
    Button2: TButton;
    Button1: TButton;
    Button6: TButton;
    Button7: TButton;
    Button5: TButton;
    Edit1: TEdit;
    Panel1: TPanel;
    Label4: TLabel;
    Label2: TLabel;
    IncludeBtn: TSpeedButton;
    IncAllBtn: TSpeedButton;
    ExcludeBtn: TSpeedButton;
    ExAllBtn: TSpeedButton;
    Label3: TLabel;
    TreeView1: TTreeView;
    srclist: TListBox;
    dstlist: TListBox;
    CheckBox1: TCheckBox;
    edt_cx: TEdit;
    btn1: TButton;
    dbgrdh1: TDBGridEh;
    ImageList1: TImageList;
    D_tree: TDataSource;
    Querytree: TADOQuery;
    Query_cx: TADOQuery;
    qry_kjkmmx: TADOQuery;
    qry_cx: TADOQuery;
    ds_cx: TDataSource;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure MoveSelected(List: TCustomListBox; Items: TStrings);
    procedure TreeView1Change(Sender: TObject; Node: TTreeNode);
     procedure SetButtons;
      procedure save_bd;
          procedure save_bddl;
    procedure srclistDblClick(Sender: TObject);
    procedure IncludeBtnClick(Sender: TObject);
    procedure IncAllBtnClick(Sender: TObject);
    procedure ExcludeBtnClick(Sender: TObject);
    procedure ExAllBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    prv_dldm:string;
    zysfxm: Tstringlist;
    kjkmmx: Tstringlist;
    selectkey: string;
    parentkey: string;
    { Public declarations }
  end;
  const
  zp = '22';
  zpjx = 2;
  zplbdm = 'kmdm';
  zplbmc = 'kmmc';
  zptable = 'ba_fyflsz';
  zptableorder = 'kmdm';
  function TreeFindItem(Sender: TTreeView; Name: string; parent_n: integer): TTreeNode;
  function Treeleavelleng(zpkeyleng: integer): integer;
var
  Form2: TForm2;

implementation
uses p_zysfxmsz, p_dm, p_func;
{$R *.DFM}
 var
  mode: string;
  procedure TForm2.SetButtons;
var
  SrcEmpty, DstEmpty: Boolean;
begin
  SrcEmpty := SrcList.Items.Count = 0;
  DstEmpty := DstList.Items.Count = 0;
  IncludeBtn.Enabled := not SrcEmpty;
  IncAllBtn.Enabled := not SrcEmpty;
  ExcludeBtn.Enabled := not DstEmpty;
  ExAllBtn.Enabled := not DstEmpty;
end;
procedure TForm2.srclistDblClick(Sender: TObject);
begin
  if IncludeBtn.Enabled then
    IncludeBtn.Click;
end;

procedure TForm2.Button1Click(Sender: TObject);
var
  zpkeylen, parent_n: integer;
  zpkey, parentkey, treetext: string;
begin
  mode := 'add';
  if treeview1.selected <> nil then
  begin
    treetext := trim(treeview1.Selected.Text);
    zpkey := copy(treetext, 1, pos('_', treetext) - 1);
    parent_n := Treeleavelleng(length(zpkey));
    parentkey := copy(zpkey, 1, parent_n);
    zpkeylen := length(zpkey) - parent_n;
    with Query_cx do begin
      close;
      sql.Clear;
      sql.text := 'select max(' + zplbdm + ') maxkey' + ' from ' +
        zptable + ' where ' + zplbdm + ' like ' +
        '''' + parentkey + '%' + '''';
      open;
    end;
    zpkey := copy(trim(Query_cx['maxkey']), parent_n + 1, zpkeylen);
    if strtoint(zpkey) > 51 then
    begin
      application.MessageBox('费用大类项目不能超过（50项）!', '消息', 0 + 16);
      abort;
    end;
    if length(zpkey) = 0 then zpkey := '0';
    zpkey := '0000' + trim(inttostr(strtoint(zpkey) + 1));
    delete(zpkey, 1, length(zpkey) - zpkeylen);
    zpkey := parentkey + zpkey;
    querytree.Append;
    querytree[zplbdm] := zpkey;
    edit1.SetFocus;
  end else begin
    if treeview1.items.getfirstnode = nil then begin
      zpkey := '00001';
      delete(zpkey, 1, length(zpkey) - strtoint(copy(zp, 1, 1)));
      querytree.Append;
      querytree[zplbdm] := zpkey;
      edit1.SetFocus;
    end else begin
      application.MessageBox('请选择要增加的节点', '提示', 0 + 16);
      abort;
    end;
  end;
  button1.Enabled := false;
  button2.Enabled := false;
  button3.Enabled := false;
  button4.Enabled := false;
  button5.Enabled := false;
  button6.Enabled := true;
  button7.Enabled := true;

end;

procedure TForm2.Button2Click(Sender: TObject);
var
  node: Ttreenode;
  zpkeylen, zplevel: integer;
  zpkey, treetext, zpleveltext: string;
begin
  mode := 'addchild';
  if treeview1.selected <> nil then
   begin
    node := treeview1.selected;
    zplevel := node.Level + 1;
    if zplevel = zpjx then
    begin
      application.MessageBox('已经到树的最后一级，不能加子项', '提示', 0 + 16);
      abort;
    end;
    zplevel := strtoint(copy(zp, zplevel + 1, 1));
    treetext := trim(treeview1.Selected.Text);
    zpkey := copy(treetext, 1, pos('_', treetext) - 1);
    zpkeylen := length(zpkey) + zplevel;
    with Query_cx do begin
      close;
      sql.Clear;
      sql.text := 'select max(' + zplbdm + ') maxkey' + ' from ' +
        zptable + ' where ' + zplbdm + ' like ' +
        '''' + zpkey + '%' + '''';
      open;
    end;
    zpkey := trim(Query_cx['maxkey']);
    if zpkeylen = length(zpkey) then begin
      zpkeylen := length(zpkey);
      zpkey := '0000' + trim(inttostr(strtoint(zpkey) + 1));
      delete(zpkey, 1, length(zpkey) - zpkeylen);
      if strtoint(copy(zpkey, 3, 2)) > 51 then
      begin
        application.MessageBox('费用大类项目不能超过（50项）!', '消息', 0 + 16);
        abort;
      end;
    end else begin
      zpleveltext := '00001';
      delete(zpleveltext, 1, length(zpleveltext) - zplevel);
      zpkey := zpkey + zpleveltext;
    end;
    querytree.Append;
    querytree[zplbdm] := zpkey;
    edit1.SetFocus;
  end else begin
    application.MessageBox('请选择要增加的节点', '提示', 0 + 16);
    abort;
  end;
  button1.Enabled := false;
  button2.Enabled := false;
  button3.Enabled := false;
  button4.Enabled := false;
  button5.Enabled := false;
  button6.Enabled := true;
  button7.Enabled := true;
end;


procedure TForm2.Button3Click(Sender: TObject);
var
  zpkey, treetext: string;
begin
  mode := 'edit';
  if treeview1.selected <> nil then begin
    treetext := trim(treeview1.Selected.Text);
    zpkey := copy(treetext, 1, pos('_', treetext) - 1);
    querytree.Locate(zplbdm, zpkey, []);
    edit1.text := querytree[zplbmc];
    querytree.Edit;
  end else begin
    application.MessageBox('请选择要修改的节点', '提示', 0 + 16);
    abort;
  end;
  button1.Enabled := false;
  button2.Enabled := false;
  button3.Enabled := false;
  button4.Enabled := false;
  button5.Enabled := false;
  button6.Enabled := true;
  button7.Enabled := true;
  panel1.Enabled := false;
  edit1.SetFocus;
end;

procedure TForm2.Button4Click(Sender: TObject);
begin
  if treeview1.selected <> nil then
  begin
    if application.MessageBox('真的要删除该节点吗', '提示', 4 + 48) = 6 then
    begin
      with dm_data do
      begin
        qry_pub.close;
        qry_pub.sql.Clear;
        qry_pub.sql.Add('delete zysf_kjkmzb where kmdm like ' + '''' + selectkey + '%' + '''');
        qry_pub.sql.Add('delete zysf_kjkmmx where kmdm like ' + '''' + selectkey + '%' + '''');
        qry_pub.ExecSQL;
      end;
      TreeView1.Items.Delete(TreeView1.Selected);
    end;
  end else begin
    application.MessageBox('请选择要删除的节点', '提示', 0 + 16);
  end;
end;

procedure TForm2.Button6Click(Sender: TObject);
var
  treetext: string;
  node: Ttreenode;
begin
  if (querytree.State = dsedit) or (querytree.State = dsinsert) then
  begin
    node := treeview1.Selected;
    if length(trim(edit1.text)) = 0 then begin
      application.MessageBox('请输入类别名称', '提示', 0 + 16);
      edit1.SetFocus;
      abort;
    end else begin
      querytree[zplbmc] := trim(edit1.text);
      treetext := trim(querytree[zplbdm]) + '_' + trim(querytree[zplbmc]);
      if mode = 'add' then begin
        node := treeview1.Items.Add(node, treetext);
        node.ImageIndex := 1;
      end else if mode = 'addchild' then begin
        node := treeview1.Items.Addchild(node, treetext);
        node.ImageIndex := 1;
      end else if mode = 'edit' then begin
        querytree[zplbmc] := trim(edit1.Text);
        treetext := trim(querytree[zplbdm]) + '_' + trim(querytree[zplbmc]);
        treeview1.Selected.Text := trim(treetext);
      end;
    end;
    querytree['pym'] := string(GetPym(trim(edit1.text)));
    querytree.post;
  end;
  with querytree do begin
    close;
    sql.Clear;
    sql.text := 'select * ' + ' from  ' + zptable +
      ' order by ' + zptableorder;
    open;
  end;
  button1.Enabled := true;
  button2.Enabled := true;
  button3.Enabled := true;
  button4.Enabled := true;
  button5.Enabled := true;
  button6.Enabled := false;
  button7.Enabled := false;
  panel1.Enabled := true;
end;

procedure TForm2.Button7Click(Sender: TObject);
begin
  if (querytree.State = dsedit) or (querytree.State = dsinsert) then
  begin
    querytree.Cancel;
  end;
  if (querytree.State = dsedit) or (querytree.State = dsinsert) then
  begin
    querytree.Cancel;
  end;
  button1.Enabled := true;
  button2.Enabled := true;
  button3.Enabled := true;
  button4.Enabled := true;
  button5.Enabled := true;
  button6.Enabled := false;
  button7.Enabled := false;
  panel1.Enabled := true;
end;

procedure TForm2.ExAllBtnClick(Sender: TObject);
var
  I: Integer;
begin
  if checkbox1.Checked then
    save_bddl
  else
  begin
    for I := 0 to DstList.Items.Count - 1 do
      SrcList.Items.AddObject(DstList.Items[I], DstList.Items.Objects[I]);
    DstList.Items.Clear;
    SetButtons;
    if length(trim(selectkey)) = 4 then save_bd;
  end;
end;

procedure TForm2.ExcludeBtnClick(Sender: TObject);
begin
  if checkbox1.Checked then
    save_bddl
  else
  begin
    MoveSelected(dstList, srcList.Items);
    SetButtons;
    if length(trim(selectkey)) = 4 then save_bd;
  end;
end;
 procedure TForm2.save_bddl;
var
  dldm: string;
  i: integer;
  node: Ttreenode;
begin
  Node := nil;
  if (treeview1.Selected = nil) or (length(trim(selectkey)) <> 4) then
  begin
    application.MessageBox('请选择树视图子项', '提示', 0 + 16);
    abort;
  end;
  for I := dstlist.Items.Count - 1 downto 0 do
  begin
    if dstlist.Selected[I] then
    begin
      with DM_data.Qry_Pub do
      begin
        close;
        sql.Clear;
        sql.text := 'select dm ' +
          '  from sys_kjsfdl ' +
          '  where ' +
          '  sys_kjsfdl.mc = ' + '''' + trim(dstlist.Items[i]) + '''';
        open;
      end;
      dldm := trim(DM_data.Qry_Pub.fieldbyname('dm').asstring);
      with dm_data.qry_pub do
      begin
        close;
        sql.Clear;
        sql.Add('insert into ba_fyflszmx(kmdm,fydm) select kmdm=' +
          '''' + selectkey + '''' + ',fydm from sys_kjsfxm where zyfy=1 and dldm like' +
          '''' + dldm + '%' + '''' + ' and fydm not in' +
          '(select fydm from ba_fyflszmx  )');
        ExecSql;
      end;
    end;
  end;
  treeview1.OnChange(Form2, node);
end;

procedure TForm2.FormShow(Sender: TObject);
var
  n, parent_n: integer;
  zpkey: string;
  zptext: string;
  Node: TTreeNode;
begin
  Treeview1.Items.Clear;
  Node := nil;
  with querytree do begin
    close;
    sql.Clear;
    sql.text := 'select * ' + ' from  ' + zptable +
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
      Node := TREEVIEW1.items.Add(Node, ZPKEY + '_' + ZPTEXT)
    end else if LENGTH(ZPKEY) > N then begin
      Node := TREEVIEW1.items.AddChild(Node, ZPKEY + '_' + ZPTEXT);
    end else begin
      parent_n := Treeleavelleng(length(zpkey));
      node := TreeFindItem(treeview1, copy(zpkey, 1, parent_n), parent_n);
      if parent_n <> 0 then begin
        node := TREEVIEW1.ITEMS.ADDchild(node, ZPKEY + '_' + ZPTEXT);
      end else begin
        Node := TREEVIEW1.items.Add(Node, ZPKEY + '_' + ZPTEXT)
      end;
    end;
    N := LENGTH(ZPKEY);
    querytree.Next;
    if node <> nil then node.ImageIndex := 1;
  end;
end;
 
procedure TForm2.IncAllBtnClick(Sender: TObject);
var
  I: Integer;
begin
  if checkbox1.Checked = false then
  begin
    for I := 0 to SrcList.Items.Count - 1 do
      DstList.Items.AddObject(SrcList.Items[I], SrcList.Items.Objects[I]);
    SrcList.Items.Clear;
    SetButtons;
    if length(trim(selectkey)) = 4 then save_bd;
  end;
end;

procedure TForm2.IncludeBtnClick(Sender: TObject);
begin
  if checkbox1.Checked = false then
  begin
    MoveSelected(SrcList, DstList.Items);
    SetButtons;
    if length(trim(selectkey)) = 4 then save_bd;
  end;
end;
procedure TForm2.save_bd;
var
  fydm: string;
  i: integer;
begin
  if (treeview1.Selected = nil) or (length(trim(selectkey)) <> 4) then
  begin
    application.MessageBox('请选择树视图子项', '提示', 0 + 16);
    abort;
  end;
  with DM_data.Qry_Pub do begin
    close;
    sql.Clear;
    sql.text := 'delete ba_fyflszmx ' +
      '  where ' +
      '  ba_fyflszmx.kmdm = ' + '''' + selectkey + '''';
    execsql;
  end;
  qry_kjkmmx.Close;
  qry_kjkmmx.Open;
  for i := 0 to srclist.Items.Count - 1 do begin
    with DM_data.Qry_Pub do
    begin
      close;
      sql.Clear;
      sql.text := 'select sys_kjsfxm.fydm ' +
        '  from sys_kjsfxm ' +
        '  where ' +
        '  sys_kjsfxm.fymc = ' + '''' + trim(srclist.Items[i]) + '''';
      open;
    end;
    fydm := TRIM(DM_data.Qry_Pub.FIELDBYNAME('fydm').ASSTRING);
    qry_kjkmmx.append;
    qry_kjkmmx['kmdm'] := selectkey;
    qry_kjkmmx['fydm'] := fydm;
  end;
  try
    qry_kjkmmx.UpdateBatch;
  except
    application.MessageBox('存储失败，请重试!', '提示', 0 + 16)
  end;
end;

 procedure TForm2.MoveSelected(List: TCustomListBox; Items: TStrings);
var
  I: Integer;
begin
  for I := List.Items.Count - 1 downto 0 do
    if List.Selected[I] then
    begin
      Items.AddObject(List.Items[I], List.Items.Objects[I]);
      List.Items.Delete(I);
    end;
end;
procedure TForm2.TreeView1Change(Sender: TObject; Node: TTreeNode);
var
  treetext: string;
begin
  if treeview1.selected <> nil then
  begin
    treetext := trim(treeview1.Selected.Text);
    selectkey := trim(copy(treetext, 1, pos('_', treetext) - 1));
    parentkey := trim(copy(selectkey, 1, 2));
    querytree.Locate(zplbdm, selectkey, []);
    edit1.text := querytree[zplbmc];
    with DM_data.Qry_Pub do begin
      close;
      sql.Clear;
              sql.text := 'select sys_kjsfxm.fymc,sys_kjsfxm.szdm ' +
        '  from ba_fyflszmx,sys_kjsfxm ' +
        '  where sys_kjsfxm.zyfy=1 and' +
        '  ba_fyflszmx.fydm=sys_kjsfxm.fydm and ' +
        '  ba_fyflszmx.kmdm like ' + '''' + selectkey + '%' + '''' +
        '  order by szdm ';
      open;
    end;
    kjkmmx := Tstringlist.Create;
    while not DM_data.Qry_Pub.Eof do begin
      kjkmmx.Append(DM_data.Qry_Pub['fymc']);
      DM_data.Qry_Pub.Next;
    end;
    with DM_data.Qry_Pub do begin
      close;
      sql.Clear;
      if checkbox1.Checked then
      begin
        sql.Add('select space(len(dm)-2)+mc mc,dm  into #zydl from sys_kjsfdl where dm in' +
          '( select left(dldm,2) dm from sys_kjsfxm where zyfy=1 and fydm not in  ' +
          ' (select fydm from ba_fyflszmx) )');
        sql.Add('insert into #zydl select space(len(dm)-2)+mc mc,dm from sys_kjsfdl where dm not in (select dm from #zydl) and dm in' +
          '( select dldm dm from sys_kjsfxm where zyfy=1 and fydm not in  ' +
          ' (select fydm from ba_fyflszmx) )');
        sql.Add('select mc fymc,dm from #zydl order by dm');
        sql.add('drop table #zydl');
        dstlist.Sorted := false;
      end
      else
      begin
        sql.text := 'select sys_kjsfxm.fymc ,sys_kjsfxm.szdm ' +
          '  from sys_kjsfxm ' +
          '  where sys_kjsfxm.zyfy=1 and' +
          '  sys_kjsfxm.fydm not in ' +
          ' (select fydm from ba_fyflszmx )' +
          ' order by szdm ';
        dstlist.Sorted := true;
      end;
      try open except end;
    end;
    zysfxm := Tstringlist.Create;
    while not DM_data.Qry_Pub.Eof do begin
      zysfxm.Append(DM_data.Qry_Pub['fymc']);
      DM_data.Qry_Pub.Next;
    end;
    srclist.Items.Assign(kjkmmx);
    dstlist.Items.Assign(zysfxm);
    SetButtons;
    prv_dldm := Copy(TreeView1.Selected.Text,1,2);
  end
  else
  begin
    prv_dldm := '';
  end;  
end;

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
end.
