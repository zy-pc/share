unit p_dzbl_tjjcsq;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, OleCtrls, EMRPAD30Lib_TLB, StdCtrls, DB, ADODB,
  ImgList, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, cxDBData, cxGridBandedTableView, cxGridDBBandedTableView, cxContainer,
  cxTextEdit, cxMemo, Grids, DBGrids, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxControls, cxGridCustomView,
  cxGrid, Buttons, cxRadioGroup, Menus;

type
  Tfrm_dzbl_tjjcsq = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    treeviewzp: TTreeView;
    Panel5: TPanel;
    Button1: TButton;
    Button2: TButton;
    TreeViewgjc: TTreeView;
    ImageList1: TImageList;
    ImageList2: TImageList;
    qry_brbl: TADOQuery;
    Qry_pub: TADOQuery;
    qry_blmxjl: TADOQuery;
    qry_tree: TADOQuery;
    qry_mbmx: TADOQuery;
    PageControl1: TPageControl;
    ts1: TTabSheet;
    EMRPad301: TEMRPad30;
    ds_mbmx: TDataSource;
    ts2: TTabSheet;
    cxGrid2: TcxGrid;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2DBTableView1dm: TcxGridDBColumn;
    cxGrid2DBTableView1mbdm: TcxGridDBColumn;
    cxGrid2DBTableView1mbmc: TcxGridDBColumn;
    cxGrid2DBTableView1pym: TcxGridDBColumn;
    cxGrid2DBTableView1ksmc: TcxGridDBColumn;
    cxGrid2DBTableView1mbczy: TcxGridDBColumn;
    cxGrid2Level1: TcxGridLevel;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    rbgr: TcxRadioButton;
    rbks: TcxRadioButton;
    rbgg: TcxRadioButton;
    rbqb: TcxRadioButton;
    b_retu: TBitBtn;
    edt_mbdm: TEdit;
    Button3: TButton;
    qry_up_dlbl: TADOQuery;
    Popupnull: TPopupMenu;
    sp_cx_micro: TADOStoredProc;
    Button4: TButton;
    Button5: TButton;
    procedure FormShow(Sender: TObject);
    procedure treeviewzpDblClick(Sender: TObject);
    procedure treeviewzpChange(Sender: TObject; Node: TTreeNode);
    procedure Button1Click(Sender: TObject);
    procedure rbqbClick(Sender: TObject);
    procedure rbggClick(Sender: TObject);
    procedure rbksClick(Sender: TObject);
    procedure rbgrClick(Sender: TObject);
    procedure b_retuClick(Sender: TObject);
    procedure edt_mbdmKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure setmode(mode: string);
    procedure saveblClick(Sender: TObject);
    procedure cxGrid2DBTableView1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure getmaxid;
    procedure PageControl1Change(Sender: TObject);
    procedure setmicro;
    procedure FormActivate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
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
    pub_jlrq,pub_ssys,pub_jfys,pub_hzys:string; //书写日期
    function Tree_db_create(dbtree: TTreeView; zptable, zptableorder, zplbdm, zplbmc, zp, sqlstr: string): TTreeView;
    function Treeleavelleng(zpkeyleng: integer; zp: string): integer;
    function TreeFindItem(Sender: TTreeView; Name: string; parent_n: integer): TTreeNode;
    { Private declarations }
  public
    ysblid:string;
    { Public declarations }
  end;

var
  frm_dzbl_tjjcsq: Tfrm_dzbl_tjjcsq;

implementation

uses p_dm,p_func;




{$R *.dfm}

procedure Tfrm_dzbl_tjjcsq.Button1Click(Sender: TObject);
begin
  PageControl1.ActivePage := ts2;
end;

procedure Tfrm_dzbl_tjjcsq.Button2Click(Sender: TObject);
begin
    if application.MessageBox('删除的病历草稿不能恢复,是否继续!', '提示', 4 + 256 + 32) = 6 then
    begin
      treeviewzp.Enabled := true;
      treeviewzp.SetFocus;
      pub_name := trim(treeviewzp.selected.text);
      qry_pub.Close;
      qry_pub.SQL.Text := 'select * from zydzbl_zydzblmx where blmc=' + '''' + pub_name + '''' +
        ' and zyh=' + '''' + pub_zyh + '''';
      qry_pub.Open;
      if not qry_pub.IsEmpty then
      begin
        bl_blys := trim(qry_pub.fieldbyname('blys').asstring);
        bl_blysbz := qry_pub.fieldbyname('blysqmbz').AsBoolean;
        pub_blid := qry_pub.fieldbyname('blid').asstring;
      end
      else
      begin
        application.MessageBox('没有选择要删除的病历!', '提示', 0 + 48);
        abort;
      end;
      if pub_czydm <> bl_blys then
      begin
        application.MessageBox('该病历不是由你起草，你没权限删除！', '提示', 0 + 48);
        abort;
      end;
      if (not bl_blysbz) then
      begin
        qry_pub.Close;
        qry_pub.SQL.Clear;
        qry_pub.SQL.Text := 'delete zydzbl_zydzblmx where blid= ' + pub_blid + ' and zyh=' + #39 + pub_zyh + #39;
        qry_pub.ExecSQL;
        EMRPad301.CleanUndoBuffer; //清空编辑缓冲区
        EMRPad301.CleanClipboard; //清空剪贴版
        EMRPad301.FileNew; //新开文件
        application.MessageBox(pchar(pub_name + '-已删除'), '删除提示', 0 + 48);
        FormShow(self);
      end
      else
        application.MessageBox('该病历已签名认可，不能删除', '提示', 0 + 48);
      EMRPad301.SetDocumentMode(3);
    end;
end;

procedure Tfrm_dzbl_tjjcsq.Button3Click(Sender: TObject);
begin
  try
    saveblClick(self);
    Application.MessageBox('保存成功！', '提示', MB_OK + MB_ICONINFORMATION);
  except
    Application.MessageBox('保存失败！', '提示', MB_OK + MB_ICONSTOP);
  end;
end;

procedure Tfrm_dzbl_tjjcsq.Button4Click(Sender: TObject);
begin
  Close;
end;

procedure Tfrm_dzbl_tjjcsq.Button5Click(Sender: TObject);
begin
   ysblid:= '';
end;

procedure Tfrm_dzbl_tjjcsq.b_retuClick(Sender: TObject);
begin
  PageControl1.ActivePage := ts1;  
end;

procedure Tfrm_dzbl_tjjcsq.cxGrid2DBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
var
  stream: TADOBlobStream;
  stream1: TFileStream;
  filename: string;
  dqxdpd: string;
  I:Integer;
  bc_count:Integer;
begin
  if qry_mbmx.RecordCount <> 0 then
  begin
//    yzblys; //验证病人是不是其它科室转入,病历医生是否已做调整,并取出手术医生,及监护医生
    if (copy(pub_key, 1, 2) = '02') or (copy(pub_key, 1, 2) = '11') then
    begin
//      getpub_blys; //病程记录取病历医生,及主管医生
      if not pub_zgysbz then
      begin
        qry_brbl.Close;
        qry_brbl.SQL.Text := 'select * from zydzbl_zydzblmx where fldm=' + '''' + pub_key + '''' +
          ' and zyh=' + '''' + pub_zyh + '''';
        qry_brbl.Open;
        pub_blid := qry_brbl.FieldByName('blid').AsString;
        if qry_brbl.IsEmpty then
          setmode('add')
        else
        begin
          setmode('edit');
          //openbcjl; //如果已存在病程记录,先打开病程记录在后面插入新模板
        end;
        addbcjl := 'add'; //病程记录设为增加状态
        qry_brbl.Close;
      end
      else
      begin
        application.MessageBox('科室主管已签名确认完成病程，不能在通过模板方式增加病历,只能通过上级医生修改病历!', '提示', 0 + 48);
        abort;
      end;
    end
    else
      setmode('add'); //病历记录设为增加状态
      filename := GetCurrentDir + '\' + 'otemp';
      EMRPad301.CleanUndoBuffer; //清空编辑缓冲区
      EMRPad301.CleanClipboard; //清空剪贴版
      try
        stream := TADOBlobStream.Create(qry_mbmx.FieldByName('mbwj') as TBlobField, bmRead);
        stream.Position := 0;
        stream1 := TFileStream.Create(filename, fmCreate);
        stream1.Position := 0;
        stream1.CopyFrom(stream, stream.Size);
      finally
        stream1.Free;
        stream.Free;
      end;
      if (copy(pub_key, 1, 2) = '02') or (copy(pub_key, 1, 2) = '11') then
      begin
        EMRPad301.SetDocumentMode(1); //进入编辑状态
        EMRPad301.SetSel(-1, -1, 0, 0, 0, -1, -1, 0, 0, 0); //到文件尾
        blbcpdid := EMRPad301.GetBaseLineCount; //缓回当前文档的行数记录病程片段ID
        if editmode = 'add' then
          EMRPad301.FileOpen(filename, 0)
        else
          EMRPad301.FileInsert(filename, 0);
      end
      else
        EMRPad301.FileOpen(filename, 0);
      PageControl1.ActivePage := ts1;
      saveblClick(self);
      frm_func.func_in_zyblmx_blsjzkmx(pub_tmh, pub_zyh, qry_mbmx.FieldByName('mbsx').AsString);
      treeviewzp.Selected:=treeviewzp.Items.GetFirstNode.GetLastChild;
      FormShow(self);
      treeviewzp.Selected:=nil;
      treeviewzp.Selected:=treeviewzp.Items.GetFirstNode.GetLastChild;
      treeviewzpDblClick(self); //新加模板直接进行编辑状态
      ysblid:= pub_blid;
      EMRPad301.SetDocumentMode(1);
  end
  else
    application.MessageBox('没有模板不能生成病历!', '提示', 0 + 48);
end;

procedure Tfrm_dzbl_tjjcsq.saveblClick(Sender: TObject);
var
  stream, streamxml: TADOBlobStream;
  filename: string;
  linecount: integer;
begin
  if (editmode = 'add') or  (editmode = 'edit') then
  begin
    filename := GetCurrentDir + '\' + 'stemp';
    linecount := EMRPad301.GetBaseLineCount;
    EMRPad301.SetSel(0, -1, 0, 0, 0, linecount - 1, -1, linecount - 1, 0, 0); //选中全部文档
    EMRPad301.EditLineEditMode; //将全部文档变成可编辑状态
    EMRPad301.FileSaveAs(FileName, 0, 0);
    EMRPad301.FileSaveAs(FileName + 'xml', 4, 0);
    qry_up_dlbl.Close;
    qry_up_dlbl.Parameters.ParamByName('zy_blid').Value := pub_blid;
    qry_up_dlbl.Parameters.ParamByName('zy_zyh').Value := pub_zyh;
    qry_up_dlbl.Open;
    if editmode = 'add' then
    begin
      qry_up_dlbl.Append;
      qry_up_dlbl['fldm'] := pub_mbdldm;
      qry_up_dlbl['mbdm'] := pub_mbid;
      getmaxid;
      if (copy(pub_key, 1, 2) = '02') then
        qry_up_dlbl['blmc'] := '病程记录' + '.' + pub_blid
      else
        if (copy(pub_key, 1, 2) = '11') then
          qry_up_dlbl['blmc'] := '新生儿病程'
        else
          qry_up_dlbl['blmc'] := pub_filename + '.' + pub_blid;
      locatename := pub_filename + '.' + pub_blid;
      qry_up_dlbl['zyh'] := pub_zyh;
      qry_up_dlbl['blid'] := pub_blid;
      qry_up_dlbl['tmh'] := pub_tmh;
      qry_up_dlbl['brxm'] := pub_brxm;
    end
    else if editmode = 'edit' then
      qry_up_dlbl.edit;
    //getblys; //取得授权医生
    qry_up_dlbl['blys'] := pub_czydm;
    qry_up_dlbl['zzys'] := pub_czydm;
    qry_up_dlbl['zgys'] := pub_czydm;
    try
      stream := TADOBlobStream.Create(qry_up_dlbl.FieldByName('blwj') as TBlobField, bmWrite);
      stream.LoadFromFile(filename);
      streamxml := TADOBlobStream.Create(qry_up_dlbl.FieldByName('xmlwj') as TBlobField, bmWrite);
      streamxml.LoadFromFile(filename + 'xml');
    finally
      stream.Free;
      streamxml.Free;
    end;
    qry_up_dlbl.Post;
    EMRPad301.SetDocumentMode(3);
    treeviewzp.Enabled := true;
    onshowbz := true;
    FormShow(self);
    onshowbz := false;
//    editbl.Visible := false;
//    editbl.Enabled := false;
//    viewbl.Visible := false;
//    tablebl.Visible := false;
//    fzbl.Visible := false;
//    treeviewzp.PopupMenu:=Popupnull;
  end;
end;

procedure Tfrm_dzbl_tjjcsq.getmaxid;
begin
  qry_pub.Close;
  qry_pub.SQL.Text := 'select max(blid) maxid from zydzbl_zydzblmx where zyh=' + '''' + pub_zyh + '''';
  qry_pub.Open;
  if qry_pub.FieldByName('maxid').AsString = '' then
    pub_blid := '001'
  else
    pub_blid := formatex(strtoint(qry_pub.FieldByName('maxid').AsString) + 1, 3);
end;

procedure Tfrm_dzbl_tjjcsq.PageControl1Change(Sender: TObject);
begin
  if PageControl1.ActivePageIndex=1 then
  begin
    pub_key:= '08';
    qry_mbmx.close;
    qry_mbmx.Parameters.ParamByName('dldm').value := copy(pub_key, 1, 2) + '%';
    qry_mbmx.open;
  end;
end;

procedure Tfrm_dzbl_tjjcsq.edt_mbdmKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var v_mbdm: string;
begin
  if key = 13 then
  begin
    v_mbdm := Trim(edt_mbdm.Text);
    if qry_mbmx.Active then
      if not qry_mbmx.Locate('mbdm', v_mbdm, []) then
      begin
        qry_mbmx.Filtered := false;
        qry_mbmx.Filter := 'pym like ' + #39 + v_mbdm + '%' + #39;
        qry_mbmx.Filtered := true;
        if qry_mbmx.RecordCount = 0 then
          Application.MessageBox('提示:模板代码在该类别中不存在!', '提示', MB_ICONINFORMATION);
      end;
  end;
end;

procedure Tfrm_dzbl_tjjcsq.FormActivate(Sender: TObject);
begin
  EMRPad301.UniversalBoolFunction(pub_dzblzcm, '', 98, pub_dzblzch);
  pub_blid := '';
  ysblid:='';
end;

procedure Tfrm_dzbl_tjjcsq.FormShow(Sender: TObject);
var
  sqlstr: string;
  i:Integer;
const
  zp = '2332';
  zplbdm = 'dm';
  zplbmc = 'mc';
  zptable = 'sys_dzbl_mbfl';
  zptableorder = 'dm';
begin
  sqlstr := qry_tree.SQL.Text;
  Tree_db_create(treeviewzp, zptable, zptableorder, zplbdm, zplbmc, zp, sqlstr);
  for I := 0 to treeviewzp.Items.Count-1 do
  begin
     treeviewzp.Selected:= treeviewzp.Items[i];
  end;
  treeviewzp.Selected:= treeviewzp.Items[0];
  treeviewzp.FullExpand;
  treeviewzp.Selected:= treeviewzp.Items[0];
  sqlstr := 'select * from sys_dzbl_mbfl where substring(dm,1,2)=12 order by dm ';
  frm_func.Tree_db_create(TreeViewgjc, zptable, zptableorder, zplbdm, zplbmc, zp, sqlstr);
  qry_blmxjl.Close;
  qry_blmxjl.Parameters.ParamByName('zyh').Value := pub_zyh;
  qry_blmxjl.Open;
  setmicro;
end;


procedure Tfrm_dzbl_tjjcsq.rbggClick(Sender: TObject);
begin
  qry_mbmx.Filtered := false;
  qry_mbmx.Filter := 'zyksgs=' + #39 + #39;
  qry_mbmx.Filtered := true;
end;

procedure Tfrm_dzbl_tjjcsq.rbgrClick(Sender: TObject);
begin
  qry_mbmx.Filtered := false;
  qry_mbmx.Filter := 'mbczy=' + #39 + pub_czyxm + #39;
  qry_mbmx.Filtered := true;
end;

procedure Tfrm_dzbl_tjjcsq.rbksClick(Sender: TObject);
begin
  qry_mbmx.Filtered := false;
  qry_mbmx.Filter := 'zyksgs=' + #39 + pub_ksdm + #39;
  qry_mbmx.Filtered := true;
end;

procedure Tfrm_dzbl_tjjcsq.rbqbClick(Sender: TObject);
begin
  qry_mbmx.Filter := '';
  qry_mbmx.Filtered := false;
end;

function Tfrm_dzbl_tjjcsq.Tree_db_create(dbtree: TTreeView; zptable, zptableorder, zplbdm, zplbmc, zp, sqlstr: string): TTreeView;
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
    qry_tree.Parameters.ParamByName('zyh').Value := pub_zyh;
  end;
  Qry_tree.open;
  if (pos( uppercase( 'zyysgzzi02' ), uppercase( pub_czyqx ) ) <1) and (pub_isadmin = false) then
  begin
    Qry_tree.Filtered:=False;
    Qry_tree.Filter:=' mc<>'+'''医嘱''';
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

function Tfrm_dzbl_tjjcsq.Treeleavelleng(zpkeyleng: integer; zp: string): integer;
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

procedure Tfrm_dzbl_tjjcsq.treeviewzpChange(Sender: TObject; Node: TTreeNode);
begin
  if treeviewzp.selected <> nil then
    if (treeviewzp.selected.text <> '') and (onshowbz = false) then
    begin
      pub_name := trim(treeviewzp.selected.text);
      locatename := pub_name;
      qry_pub.Close;
      qry_pub.SQL.add(qry_tree.SQL.Text);
      qry_pub.SQL.Text := 'select * from sys_dzbl_mbfl where qybz=1 and mc =' + '''' + pub_name + '''';
      qry_pub.Open;
      if trim(qry_pub.FieldByName('dm').AsString) <> '' then
        pub_key := trim(qry_pub.FieldByName('dm').AsString);
      pub_frm_name := trim(qry_pub.FieldByName('frm_name').AsString);
      pub_key:= '08';
      qry_mbmx.close;
      qry_mbmx.Parameters.ParamByName('dldm').value := copy(pub_key, 1, 2) + '%';
      qry_mbmx.open;
      bl_blys := '';
    end;
end;


procedure Tfrm_dzbl_tjjcsq.setmicro;
var
  fd, fdvalue: string;
begin
  sp_cx_micro.Active := false;
  sp_cx_micro.Parameters.ParamByName('@zyh').Value := pub_zyh;
  sp_cx_micro.Open;
  qry_pub.Close;
  qry_pub.SQL.Text := 'EXEC sp_columns @table_name =zydzbl_micro';
  qry_pub.Open;
  qry_pub.First;
  while not qry_pub.Eof do
  begin
    fd := qry_pub.FieldByName('Column_Name').AsString;
    if fd= '记录日期' then
    else
    if fd = '性别' then
      pub_brxb := trim(sp_cx_micro.FieldByName(fd).AsString);
    if fd = '住院号' then
      fdvalue := copy(trim(sp_cx_micro.FieldByName('卡号').AsString), 2, 8)
    else
    fdvalue := trim(sp_cx_micro.FieldByName(fd).AsString);

    EMRPad301.SetMicroFiled(fd, fdvalue);
    qry_pub.Next;
  end;
  EMRPad301.SetMicroFiled('住院科室', pub_ksmc);
  EMRPad301.SetMicroFiled('病区', pub_bqmc);
  EMRPad301.SetMicroFiled('本人', pub_czyxm);
  EMRPad301.UpdateMicroField(true);
end;

procedure Tfrm_dzbl_tjjcsq.treeviewzpDblClick(Sender: TObject);
var
  stream: TADOBlobStream;
  stream1: TFileStream;
  filename, bcid: string;
  id: integer;
begin
  if (not treeviewzp.Selected.HasChildren) then
  begin
    pub_name := trim(treeviewzp.selected.text);
    //treeviewzp.Enabled := false;
    if pub_frm_name <> '' then
    begin
      if trim(pub_name)='医嘱' then
      begin

      end
      else if trim(pub_name)='新生儿医嘱' then
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
          ' and zyh=' + '''' + pub_zyh + '''';
      end
      else
        qry_brbl.SQL.Text := 'select * from zydzbl_zydzblmx where blmc=' + '''' + pub_name + '''' +
          ' and zyh=' + '''' + pub_zyh + '''';
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
              ' and zyh=' + '''' + pub_zyh + '''';
            qry_pub.Open;
            bl_blys := trim(qry_pub.fieldbyname('blys').asstring);
            bl_zzys := trim(qry_pub.fieldbyname('zzys').asstring);
            bl_zgys := trim(qry_pub.fieldbyname('zgys').asstring);
            bl_blysbz := qry_pub.fieldbyname('blysqmbz').AsBoolean;
            bl_zzysbz := qry_pub.fieldbyname('zzysqmbz').AsBoolean;
            bl_zgysbz := qry_pub.fieldbyname('zgysqmbz').AsBoolean;
            pub_jlrq := Trim(FormatDateTime('yyyy-mm-dd :hh:nn',qry_pub.fieldbyname('blrq').AsDateTime));
          except
            application.messagebox('请选择相应病程目录', '提示', mb_ok);
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
        setmode('edit');
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

function Tfrm_dzbl_tjjcsq.TreeFindItem(Sender: TTreeView; Name: string; parent_n: integer): TTreeNode;
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

procedure Tfrm_dzbl_tjjcsq.setmode(mode: string);
begin
  if mode = 'add' then
  begin
    if qry_mbmx.IsEmpty then
    begin
      application.MessageBox('没有可选择的模板写入电子病历!', '提示', 0 + 48);
      abort;
    end;
    editmode := 'add';
    EMRPad301.FileNew;
    pub_mbdldm := qry_mbmx.FieldByName('dm').AsString;
    pub_mbid := qry_mbmx.FieldByName('mbdm').Asinteger;
    pub_filename := qry_mbmx.FieldByName('mbmc').AsString;
  end;
  if mode = 'edit' then
  begin
    editmode := 'edit';
    pub_mbdldm := qry_brbl.FieldByName('fldm').AsString;
    pub_mbid := qry_brbl.FieldByName('mbdm').Asinteger;
      pub_filename := qry_brbl.FieldByName('blmc').AsString;
  end;
  EMRPad301.universalboolfunction('', '', 46, 1);
end;

end.
