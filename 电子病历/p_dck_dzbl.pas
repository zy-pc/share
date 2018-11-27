unit p_dck_dzbl;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, OleCtrls, EMRPAD30Lib_TLB, ExtCtrls, ComCtrls, DB, ADODB, ImgList,
  Menus;

type
  Tfrm_dck_dzbl = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    treeviewzp: TTreeView;
    EMRPad301: TEMRPad30;
    qry_tree: TADOQuery;
    qry_blmxjl: TADOQuery;
    Qry_pub: TADOQuery;
    qry_mbmx: TADOQuery;
    qry_brbl: TADOQuery;
    ImageList1: TImageList;
    ImageList2: TImageList;
    TreeViewgjc: TTreeView;
    PopupMenuedit_1: TPopupMenu;
    MenuItem17: TMenuItem;
    m_dygn: TMainMenu;
    N1: TMenuItem;
    N11: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure treeviewzpDblClick(Sender: TObject);
    procedure treeviewzpChange(Sender: TObject; Node: TTreeNode);
    procedure MenuItem17Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
  private
    pub_blid:string;
    onshowbz:Boolean;
    locatename:string;
    pub_key:string;
    bl_blys:string;
    pub_name, pub_blys, pub_zzys, pub_zgys, addbcjl, formcaption: string;
    bl_zzys, bl_zgys, bl_ssys, bl_jfys, bl_hzys, bl_bllb, bl_mzys, pub_brxb: string;
    bl_blysbz, bl_zzysbz, bl_zgysbz, pub_blysbz, pub_zzysbz, pub_zgysbz: boolean;
    bl_bcid, bl_qxjb, blbcpdid, zzbcpdid, zgbcpdid, bc_count, bc_hh, bc_zh: integer;
    pub_jlrq,pub_ssys,pub_jfys,pub_hzys:string; //��д����
    function Tree_db_create(dbtree: TTreeView; zptable, zptableorder, zplbdm, zplbmc, zp, sqlstr: string): TTreeView;
    function Treeleavelleng(zpkeyleng: integer; zp: string): integer;
    function TreeFindItem(Sender: TTreeView; Name: string; parent_n: integer): TTreeNode;
    { Private declarations }
  public
    dzbl_zyh:string;
    { Public declarations }
  end;


var
  frm_dck_dzbl: Tfrm_dck_dzbl;

implementation

{$R *.dfm}
uses p_dm,p_func,p_dzbl_main;

procedure Tfrm_dck_dzbl.FormShow(Sender: TObject);
var
  sqlstr: string;
const
  zp = '2332';
  zplbdm = 'dm';
  zplbmc = 'mc';
  zptable = 'sys_dzbl_mbfl';
  zptableorder = 'dm';
begin
  if pub_yydm='0240' then
  begin
    Frm_dzbl_main.drbz:='';
    MenuItem17.Caption:='����';
  end;
  pub_blid := '';
  sqlstr := qry_tree.SQL.Text;
  Tree_db_create(treeviewzp, zptable, zptableorder, zplbdm, zplbmc, zp, sqlstr);
  treeviewzp.AutoExpand := true;
  if pub_yydm='0266' then  //��Ԫ�ѻ�����ҽԺ
  begin
    treeviewzp.FullExpand;//������չ����ʾ
  end;
  sqlstr := 'select * from sys_dzbl_mbfl where substring(dm,1,2)=12 order by dm ';
  frm_func.Tree_db_create(TreeViewgjc, zptable, zptableorder, zplbdm, zplbmc, zp, sqlstr);
  qry_blmxjl.Close;
  qry_blmxjl.Parameters.ParamByName('zyh').Value := dzbl_zyh;
  qry_blmxjl.Open;
end;

function Tfrm_dck_dzbl.Tree_db_create(dbtree: TTreeView; zptable, zptableorder, zplbdm, zplbmc, zp, sqlstr: string): TTreeView;
var
  n, parent_n: integer;
  zpkey: string;
  zptext: string;
  Node: TTreeNode;
begin
  dbtree.Items.Clear;
  Node := nil;
  Qry_tree.close;
  Qry_tree.sql.Clear;
  if sqlstr = '' then
    Qry_tree.sql.text := 'select * ' + ' from  ' + zptable + ' order by ' + zptableorder
  else
  begin
    Qry_tree.sql.text := sqlstr;
    qry_tree.Parameters.ParamByName('zyh').Value := dzbl_zyh;
    qry_tree.Parameters.ParamByName('bczyh').Value := dzbl_zyh;
  end;
  Qry_tree.open;
  if (pos( uppercase( 'zyysgzzi02' ), uppercase( pub_czyqx ) ) <1) and (pub_isadmin = false) then
  begin
    Qry_tree.Filtered:=False;
    Qry_tree.Filter:=' mc<>'+'''ҽ��''';
    Qry_tree.Filtered:=true;
  end;
  if Qry_tree.RecordCount <> 0 then
  begin
    Qry_tree.first;
    ZPKEY := trim(Qry_tree[zplbdm]);
    N := LENGTH(ZPKEY);
    while not Qry_tree.Eof do begin
      ZPKEY := trim(Qry_tree[zplbdm]);
      ZPTEXT := trim(Qry_tree[zplbmc]);
      if LENGTH(ZPKEY) = N then begin
        Node := dbtree.items.Add(Node, ZPTEXT)
      end else if LENGTH(ZPKEY) > N then begin
        Node := dbtree.items.AddChild(Node, ZPTEXT);
      end else begin
        parent_n := Treeleavelleng(length(zpkey), zp);
        node := TreeFindItem(dbtree, copy(zpkey, 1, parent_n), parent_n);
        if parent_n <> 0 then begin
          node := dbtree.ITEMS.ADDchild(node, ZPTEXT);
        end else begin
          Node := dbtree.items.Add(Node, ZPTEXT)
        end;
      end;
      N := LENGTH(ZPKEY);
      Qry_tree.Next;
      if node <> nil then node.ImageIndex := 1;
    end;
    result := dbtree;
  end
  else
    result := nil;
end;

function Tfrm_dck_dzbl.Treeleavelleng(zpkeyleng: integer; zp: string): integer;
var
  i, levellength: integer;
begin
  levellength := 0;
  for i := 1 to length(trim(zp)) do
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


procedure Tfrm_dck_dzbl.treeviewzpChange(Sender: TObject; Node: TTreeNode);
begin
  if treeviewzp.selected <> nil then
    if (treeviewzp.selected.text <> '') and (onshowbz = false) then
    begin
       if treeviewzp.Selected.HasChildren then
       begin
          pub_name := trim(treeviewzp.selected.text);
       end else
       begin
         if  treeviewzp.Selected.Parent<>nil then
         pub_name := trim(treeviewzp.Selected.Parent.Text) else
             pub_name := trim(treeviewzp.selected.text);
       end;
      locatename := treeviewzp.selected.text;//pub_name;
//      pub_name := trim(treeviewzp.selected.text);
//      locatename := pub_name;
      qry_pub.Close;
      qry_pub.SQL.add(qry_tree.SQL.Text);
      qry_pub.SQL.Text := 'select * from sys_dzbl_mbfl where qybz=1 and mc =' + '''' + pub_name + '''';
      qry_pub.Open;
      if trim(qry_pub.FieldByName('dm').AsString) <> '' then
        pub_key := trim(qry_pub.FieldByName('dm').AsString);
      pub_frm_name := trim(qry_pub.FieldByName('frm_name').AsString);
      qry_mbmx.close;
      qry_mbmx.Parameters.ParamByName('dldm').value := copy(pub_key, 1, 2) + '%';
      qry_mbmx.open;
      bl_blys := '';
    end;
end;

procedure Tfrm_dck_dzbl.treeviewzpDblClick(Sender: TObject);
var
  stream: TADOBlobStream;
  stream1: TFileStream;
  filename, bcid: string;
  id: integer;
begin
  EMRPad301.UniversalBoolFunction(pub_dzblzcm, '', 98, pub_dzblzch);
  if (not treeviewzp.Selected.HasChildren) then
  begin
    pub_name := trim(treeviewzp.selected.text);
    //treeviewzp.Enabled := false;
    if pub_frm_name <> '' then
    begin
      if trim(pub_name)='ҽ��' then
      begin

      end
      else if trim(pub_name)='������ҽ��' then
      begin

      end
      else
      begin
        ExecExistingForm(pub_frm_name);
        treeviewzp.Enabled := true;
      end;
    end
    else
    begin
      filename := GetCurrentDir + '\' + 'etemp';
      qry_brbl.Close;
      if copy(pub_key, 1, 2) = '02' then
      begin
        pub_name := trim(treeviewzp.selected.text);
        bcid := copy(pub_name, pos('.', pub_name) + 1, length(pub_name) - pos('.', pub_name) + 1);
        qry_brbl.SQL.Text := 'select * from zydzbl_zydzblmx where fldm=' + '''' + pub_key + '''' +
          ' and zyh=' + '''' + dzbl_zyh + '''';
      end
      else
        qry_brbl.SQL.Text := 'select * from zydzbl_zydzblmx where blmc=' + '''' + pub_name + '''' +
          ' and zyh=' + '''' + dzbl_zyh + '''';
      qry_brbl.Open;
      if not qry_brbl.IsEmpty then
      begin
        if (copy(pub_key, 1, 2) = '02')  then
        begin
          pub_name := trim(treeviewzp.selected.text);
          bcid := copy(pub_name, pos('.', pub_name) + 1, length(pub_name) - pos('.', pub_name) + 1);
          try
            id := strtoint(bcid);
            qry_pub.SQL.Text := 'select * from zydzbl_zybcjlmx where bcid=' + '''' + bcid + '''' +
              ' and zyh=' + '''' + dzbl_zyh + '''';
            qry_pub.Open;
            bl_blys := trim(qry_pub.fieldbyname('blys').asstring);
            bl_zzys := trim(qry_pub.fieldbyname('zzys').asstring);
            bl_zgys := trim(qry_pub.fieldbyname('zgys').asstring);
            bl_blysbz := qry_pub.fieldbyname('blysqmbz').AsBoolean;
            bl_zzysbz := qry_pub.fieldbyname('zzysqmbz').AsBoolean;
            bl_zgysbz := qry_pub.fieldbyname('zgysqmbz').AsBoolean;
            pub_jlrq := Trim(FormatDateTime('yyyy-mm-dd :hh:nn',qry_pub.fieldbyname('blrq').AsDateTime));
          except
            application.messagebox('��ѡ����Ӧ����Ŀ¼', '��ʾ', mb_ok);
          end;
        end
        else
        begin
          bl_blys := trim(qry_brbl.fieldbyname('blys').asstring);
          bl_zzys := trim(qry_brbl.fieldbyname('zzys').asstring);
          bl_zgys := trim(qry_brbl.fieldbyname('zgys').asstring);
          bl_blysbz := qry_brbl.fieldbyname('blysqmbz').AsBoolean;
          bl_zzysbz := qry_brbl.fieldbyname('zzysqmbz').AsBoolean;
          bl_zgysbz := qry_brbl.fieldbyname('zgysqmbz').AsBoolean;
          pub_jlrq := Trim(FormatDateTime('yyyy-mm-dd :hh:nn',qry_brbl.fieldbyname('blrq').AsDateTime));
        end;
        pub_blid := qry_brbl.fieldbyname('blid').asstring;
        try
          stream := TADOBlobStream.Create(qry_brbl.FieldByName('blwj') as TBlobField, bmRead);
          stream.Position := 0;
          stream1 := TFileStream.Create(filename, fmCreate);
          stream1.Position := 0;
          stream1.CopyFrom(stream, stream.Size);
        finally
          stream1.Free;
          stream.Free;
        end;
        try
          EMRPad301.FileOpen(filename, 0);
        except
        end;
      end
      else
        treeviewzp.Enabled := true;
    end;
  end;

end;

procedure Tfrm_dck_dzbl.MenuItem17Click(Sender: TObject);
begin
  if pub_yydm='0240' then
  begin
    frm_dzbl_main.drbz:='1';
    EMRPad301.EditCopy;
    Close;
  end
  else
  EMRPad301.EditCopy;
end;

procedure Tfrm_dck_dzbl.N2Click(Sender: TObject);
begin
  EMRPad301.SetDocumentMode(3);
  EMRPad301.Print(0);
end;

procedure Tfrm_dck_dzbl.N3Click(Sender: TObject);
begin
  EMRPad301.SetDocumentMode(3);
  EMRPad301.universalboolfunction('', '', 58, 0)
end;

function Tfrm_dck_dzbl.TreeFindItem(Sender: TTreeView; Name: string; parent_n: integer): TTreeNode;
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
