unit p_blmb;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Menus, ComCtrls, ToolWin, ExtCtrls, AppEvnts, ImgList, Buttons, StdCtrls,
  Grids, DBGrids, DB, ADODB, DBCtrls, cxGraphics, cxControls, cxContainer,
  cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridLevel, cxClasses, cxGridCustomView, cxGrid, cxCheckBox, cxDBEdit,
  cxLookAndFeelPainters, cxButtons;

type
  TFrm_blmb = class(TForm)
    Main_Menu: TMainMenu;
    _abort: TMenuItem;
    blmba: TMenuItem;
    _pass: TMenuItem;
    N1: TMenuItem;
    ZXJFS: TMenuItem;
    N4: TMenuItem;
    _N_close: TMenuItem;
    ImageList1: TImageList;
    CoolBar1: TCoolBar;
    ToolBar4: TToolBar;
    ToolButton29: TToolButton;
    ToolButton32: TToolButton;
    ToolBar1: TToolBar;
    b_mblb: TToolButton;
    b_add: TToolButton;
    ToolButton10: TToolButton;
    b_pass: TToolButton;
    b_close: TToolButton;
    blmba01: TMenuItem;
    Panel1: TPanel;
    treeviewzp: TTreeView;
    Panel2: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    b_edit: TToolButton;
    ToolButton3: TToolButton;
    b_delete: TToolButton;
    b_find: TToolButton;
    qry_mbmx: TADOQuery;
    ds_mbmx: TDataSource;
    ToolButton8: TToolButton;
    b_refresh: TToolButton;
    editzyks: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    qry_ksdm: TADOQuery;
    qry_mbmxdm: TStringField;
    qry_mbmxmbdm: TAutoIncField;
    qry_mbmxmbmc: TStringField;
    qry_mbmxmbsx: TStringField;
    qry_mbmxmzksgs: TStringField;
    qry_mbmxzyksgs: TStringField;
    qry_mbmxmbczy: TStringField;
    qry_mbmxwjmc: TStringField;
    qry_mbmxmbwj: TBlobField;
    qry_mbmxksmc: TStringField;
    editmbmc: TEdit;
    Label6: TLabel;
    DBGrid1: TDBGrid;
    qry_pub: TADOQuery;
    ds_pub: TDataSource;
    ImageList2: TImageList;
    ApplicationEvents1: TApplicationEvents;
    Splitter1: TSplitter;
    ToolButton1: TToolButton;
    sp_up_mblcw: TADOStoredProc;
    Label7: TLabel;
    qry_mbmxpsdm: TStringField;
    zkdm: TDBLookupComboBox;
    qry_psdx: TADOQuery;
    ds_zk: TDataSource;
    qry_mbmxpym: TStringField;
    qry_mbmxzkmc: TStringField;
    ds_sjjksz: TDataSource;
    qry_sjjksz: TADOQuery;
    mbsjjksz: TcxDBLookupComboBox;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1mbdm: TcxGridDBColumn;
    cxGrid1DBTableView1mbmc: TcxGridDBColumn;
    cxGrid1DBTableView1mbsx: TcxGridDBColumn;
    cxGrid1DBTableView1mbczy: TcxGridDBColumn;
    cxGrid1DBTableView1ksmc: TcxGridDBColumn;
    cxGrid1DBTableView1zkmc: TcxGridDBColumn;
    qry_mbmxsjzkmc: TStringField;
    qry_mbmxmzbz: TBooleanField;
    qry_mbmxzybz: TBooleanField;
    qry_mbmxqybz: TBooleanField;
    lbl_gjdm: TLabel;
    cxdbtxtdt_gjdm: TcxDBTextEdit;
    qry_mbmxgjdm: TStringField;
    qry_mbmxsssq: TBooleanField;
    pnl_mbxx: TPanel;
    cxdbchckbx_sssq: TcxDBCheckBox;
    cxdbchckbx_mz: TcxDBCheckBox;
    cxdbchckbx_zy: TcxDBCheckBox;
    cxdbchckbx_qy: TcxDBCheckBox;
    btn_save: TcxButton;
    procedure b_closeClick(Sender: TObject);
    procedure b_findClick(Sender: TObject);
    procedure DBGrid1Exit(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure editzyksKeyPress(Sender: TObject; var Key: Char);
    procedure editmbmcKeyPress(Sender: TObject; var Key: Char);
    procedure qry_mbmxAfterScroll(DataSet: TDataSet);
    procedure b_deleteClick(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGridmbmxDblClick(Sender: TObject);
    procedure b_editClick(Sender: TObject);
    procedure b_addClick(Sender: TObject);
    procedure treeviewzpChange(Sender: TObject; Node: TTreeNode);
    procedure b_mblbClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure b_refreshClick(Sender: TObject);
    procedure blmba01Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure _abortClick(Sender: TObject);
    procedure b_editpass(Sender: TObject);
    procedure ApplicationEvents1Exception(Sender: TObject; E: Exception);
    procedure _N_closeClick(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure zkdmExit(Sender: TObject);
    procedure mbsjjkszPropertiesCloseUp(Sender: TObject);
    procedure cxGrid1DBTableView1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btn_saveClick(Sender: TObject);
    procedure cxGrid1DBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    { Private declarations }
    procedure setmode(mode: string);
  public
    { Public declarations }
    pub_key: string;
    mbdm, dldm: string;

  end;

var
  Frm_blmb: TFrm_blmb;
  pub_cxmblb, pub_cxmbmc: string; //'1' 查询全部 '2' 查询关键词

implementation

uses p_func, p_dm, p_mbbj, p_cxmb;

{$R *.DFM}

procedure TFrm_blmb.FormActivate(Sender: TObject);
begin
  frm_blmb.Caption := '【' + pub_yymc + '】' + frm_blmb.Caption;
end;


procedure TFrm_blmb.ApplicationEvents1Exception(Sender: TObject;
  E: Exception);
begin
  application.MessageBox(pchar('发现错误!' + #13 + '错误信息:' + e.Message), '注意', 16);
  exit;
end;

procedure TFrm_blmb.setmode(mode: string);
begin
  if mode = 'add' then
  begin
    pub_mbmc := '';
    pub_mbsx := '';
    pub_mbks := '';
    pub_mbid := -1;
    editmode := 'add';
  end;
  if mode = 'edit' then
  begin
    pub_mbmc := qry_mbmx.FieldByName('mbmc').AsString;
    pub_mbid := qry_mbmx.FieldByName('mbdm').Asinteger;
    pub_mbsx := qry_mbmx.FieldByName('mbsx').AsString;
    pub_psdm := qry_mbmx.FieldByName('psdm').AsString;
    pub_mbks := qry_mbmx.FieldByName('zyksgs').AsString;
    pub_filename := qry_mbmx.FieldByName('wjmc').AsString;
    pub_ksmc := qry_mbmx.FieldByName('ksmc').AsString;
    editmode := 'edit';
  end;
end;

procedure TFrm_blmb.ToolButton1Click(Sender: TObject);
var
  s: string;
  txt: string;
  dm, i: integer;
begin
  dm := qry_mbmx.FieldByName('mbdm').Asinteger;
  sp_up_mblcw.Close;
  sp_up_mblcw.Parameters.ParamByName('@mbdm').Value := dm;
  sp_up_mblcw.Parameters.ParamByName('@mbczy').Value := pub_czyxm;
  sp_up_mblcw.Parameters.ParamByName('@mbks').Value := pub_ksdm;
  sp_up_mblcw.Parameters.ParamByName('@sc_zt').Value := '';
  sp_up_mblcw.ExecProc;
  s := sp_up_mblcw.Parameters.ParamByName('@sc_zt').Value;
  application.MessageBox(pchar(s), '提示', 0 + 48);
  i := 0;
  for i := 0 to treeviewzp.Items.Count - 1 do
  begin
    txt := copy(treeviewzp.Items[i].text, 1, pos('_', treeviewzp.Items[i].text) - 1);
    if txt = dldm then
    begin
      treeviewzp.Items[i].Selected := true;
      qry_mbmx.close;
      qry_mbmx.Parameters.ParamByName('dldm').value := dldm + '%';
      qry_mbmx.open;
      qry_mbmx.Locate('mbdm', dm, []);
      cxGrid1.SetFocus;
      exit;
    end;
  end;

end;

procedure TFrm_blmb.FormShow(Sender: TObject);
var
  sqlstr: string;
const
  zp = '2332';
  zplbdm = 'dm';
  zplbmc = 'mc';
  zptable = 'sys_dzbl_mbfl';
  zptableorder = 'dm';
begin
  if pub_yydm = '0003' then
  begin
    b_add.Visible := false;
  end;
  sqlstr := 'select * from sys_dzbl_mbfl where substring(dm,1,2)<=12 or substring(dm,1,2)=18 order by dm ';
  frm_func.Tree_db_create(treeviewzp, zptable, zptableorder, zplbdm, zplbmc, zp, sqlstr);
  qry_psdx.Open;
  qry_ksdm.Open;
  qry_sjjksz.Open;
   if pub_yydm='0261' then     //修改位置1  对医院进行判断 
   begin
    Panel3.Enabled:=true;
   end else
   if not pub_sfcjyh then
   begin
     pnl_mbxx.Enabled := False;
     cxGrid1DBTableView1.OptionsData.Editing := False;
   end;

end;

procedure TFrm_blmb.mbsjjkszPropertiesCloseUp(Sender: TObject);
begin
  qry_mbmx.edit;
  qry_mbmx.Post;
end;

procedure TFrm_blmb._abortClick(Sender: TObject);
begin
  Get_frm_about;
end;

procedure TFrm_blmb.b_editpass(Sender: TObject);
begin
  Get_frm_mmxg;
end;

procedure TFrm_blmb._N_closeClick(Sender: TObject);
begin
  close;
end;

procedure TFrm_blmb.blmba01Click(Sender: TObject);
begin
  if (pub_czyxm = '超级用户') then
    Get_frm_tree('sys_dzbl_mbfl', 'dm', 'mc', '2332')
  else
    application.MessageBox('系统管理人员才能进行模板分类,您无权修改!', '提示', 0 + 48);
end;

procedure TFrm_blmb.btn_saveClick(Sender: TObject);
begin
  qry_mbmx.Edit;
  qry_mbmx.Post;
  qry_mbmx.UpdateBatch(arAll);
end;

procedure TFrm_blmb.b_refreshClick(Sender: TObject);
begin
  frm_blmb.OnShow(self);
end;

procedure TFrm_blmb.cxGrid1DBTableView1CellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
    //四会修改 对操作员进行判断 如果为当前医生则允许进行启用 如果不为当前医生则不允许启用 只针对四会医院
    if pub_yydm='0261' then
    begin
      if Trim(pub_czyxm) = Trim(qry_mbmx.FieldByName('mbczy').AsString)  then
      begin
        Panel3.Enabled:=true;
      end else
        Panel3.Enabled:=false;
    end;
end;

procedure TFrm_blmb.cxGrid1DBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if (not qry_mbmx.IsEmpty) and (b_edit.Enabled) then
    b_edit.Click;
end;

procedure TFrm_blmb.b_mblbClick(Sender: TObject);
begin
  blmba01.Click;
end;

procedure TFrm_blmb.treeviewzpChange(Sender: TObject; Node: TTreeNode);
begin
  if treeviewzp.selected <> nil then begin
    if treeviewzp.selected.text <> '' then
    begin
      pub_key := trim(treeviewzp.selected.text);
      edit2.Text := copy(pub_key, pos('_', pub_key) + 1, length(pub_key));
      pub_key := copy(pub_key, 1, pos('_', pub_key) - 1);
      edit1.Text := pub_key;
      dldm := pub_key;
      pub_mbdldm := pub_key;
      pub_key := copy(pub_key, 1, 2);
      try
        qry_mbmx.close;
      except
        qry_mbmx.close;
        Application.MessageBox('你对模块进行的修改没有保存将被放弃!', '提示', 0 + 48);
      end;
      qry_mbmx.close;
      qry_mbmx.Parameters.ParamByName('dldm').value := dldm + '%';
      qry_mbmx.open;
      if qry_mbmx.RecordCount = 0 then panel3.Enabled := false;
    end else begin
      pub_key := '';
    end;
    if node.HasChildren = false then
    begin
      b_add.Enabled := true;
      b_edit.Enabled := true;
      b_edit.Enabled := (not qry_mbmx.IsEmpty);
    end else begin
      b_add.Enabled := false;
      b_edit.Enabled := false;
    end;
    b_delete.Enabled := (not qry_mbmx.IsEmpty);
  end;
end;

procedure TFrm_blmb.zkdmExit(Sender: TObject);
begin
  qry_mbmx.Edit;
  qry_mbmx.Post;
end;

procedure TFrm_blmb.b_addClick(Sender: TObject);
begin
  setmode('add');
  application.CreateForm(Tfrm_mbbj, frm_mbbj);
  try
    frm_mbbj.ShowModal;
  finally
    frm_mbbj.free;
  end;
  qry_mbmx.close;
  qry_mbmx.Parameters.ParamByName('dldm').value := dldm + '%';
  qry_mbmx.open;
end;

procedure TFrm_blmb.b_editClick(Sender: TObject);
var
  stream: TADOBlobStream;
  stream1: TFileStream;
  filename, mbdm: string;
begin
  if (trim(pub_czyxm) = trim(qry_mbmx.FieldByName('mbczy').asstring)) or (pub_czydm = '9999') or pub_sfcjyh  then
  begin
    filename := GetCurrentDir + '\emrtemp';
    setmode('edit');
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
    application.CreateForm(Tfrm_mbbj, frm_mbbj);
    try
      frm_mbbj.ShowModal;
    finally
      frm_mbbj.free;
    end;
    mbdm := qry_mbmx.FieldByName('mbdm').AsString;
    qry_mbmx.close;
    qry_mbmx.Parameters.ParamByName('dldm').value := dldm + '%';
    qry_mbmx.open;
    qry_mbmx.Locate('mbdm', mbdm, []);
  end
  else
    application.MessageBox('你不是该模板的创建者,你无权修改!', '提示', 0 + 48);
end;

procedure TFrm_blmb.DBGridmbmxDblClick(Sender: TObject);
begin
  if (not qry_mbmx.IsEmpty) and (b_edit.Enabled) then
    b_edit.Click;
end;

procedure TFrm_blmb.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    if application.MessageBox('是否修改模板类别?', '提示', 4 + 256 + 32) = 6 then
    begin
      qry_pub.close;
      qry_pub.SQL.Clear;
      qry_pub.SQL.text := 'select * from sys_dzbl_mbfl where (substring(dm,1,2)<=12 or substring(dm,1,2)=18)  and ' +
        ' dm like ' + '''' + trim(edit1.Text) + '%' + '''';
      qry_pub.Open;
      if qry_pub.RecordCount = 1 then
      begin
        qry_mbmx.Edit;
        qry_mbmx['dm'] := trim(edit1.Text);
        qry_mbmx.Post;
        qry_mbmx.UpdateBatch(arall);
      end
      else
        application.MessageBox('输入的类别代码在系统中不存在,或不在最子项!', '提示', 0 + 48);
    end;
  end;
end;

procedure TFrm_blmb.b_deleteClick(Sender: TObject);
begin
  if (trim(pub_czyxm) = trim(qry_mbmx.FieldByName('mbczy').asstring)) or (pub_czydm = '9999') or pub_sfcjyh then
  begin
    if application.MessageBox('模板删除后不可恢复,你是否要删除?', '提示', 4 + 256 + 32) = 6 then
    begin
      with dm_data.qry_pub do
      begin
        close;
        sql.Text := 'select mbdm from zydzbl_zydzblmx where mbdm =' + #39 + qry_mbmx.FieldByName('mbdm').AsString + #39;
        open;
      end;
      if dm_data.qry_pub.IsEmpty then
      begin
        qry_mbmx.Delete;
        qry_mbmx.UpdateBatch(arAll);
      end
      else
        application.MessageBox('该模板在病历书写中已使用过,删除会引起质控失败!', '提示', 0 + 48);
    end;
    qry_mbmx.close;
    qry_mbmx.Parameters.ParamByName('dldm').value := dldm + '%';
    qry_mbmx.open;
  end
  else
    application.MessageBox('你不是该模板的创建者,你无权删除!', '提示', 0 + 48);
end;

procedure TFrm_blmb.qry_mbmxAfterScroll(DataSet: TDataSet);
begin
  if qry_mbmx.Active then
  begin
    if qry_mbmx.RecordCount >= 1 then
    begin
      editzyks.Text := qry_mbmx.FieldByName('ksmc').AsString;
      editmbmc.Text := qry_mbmx.FieldByName('mbmc').AsString;
      if (pub_czyxm = qry_mbmx.FieldByName('mbczy').AsString) or
        (pub_czyxm = '超级用户') or pub_sfcjyh then      
        panel3.Enabled := true
      else
        panel3.Enabled := false;
    end;
  end;
end;

procedure TFrm_blmb.editmbmcKeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) and (trim(editmbmc.Text) <> '') then
  begin
    if application.MessageBox('是否修改模板名称?', '提示', 4 + 256 + 32) = 6 then
    begin
      qry_mbmx.Edit;
      qry_mbmx['mbmc'] := editmbmc.Text;
      if copy(pub_mbdldm, 1, 2) = '12' then
        qry_mbmx['wjmc'] := editmbmc.Text + '.emk'
      else
        qry_mbmx['wjmc'] := editmbmc.Text + '.emt';
      qry_mbmx.Post;
      cxGrid1.SetFocus;
    end;
  end;
end;

procedure TFrm_blmb.editzyksKeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) and (trim(editzyks.Text) <> '') then
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
      editzyks.Clear;
      editzyks.SetFocus;
      abort;
    end
    else
      if qry_pub.RecordCount = 1 then
      begin
        editzyks.Text := qry_pub['mc'];
        qry_mbmx.Edit;
        qry_mbmx['zyksgs'] := qry_pub['dm'];
        qry_mbmx.Post;
        mbsjjksz.SetFocus;
      end
      else
      begin
        dbgrid1.tag := 1;
        dbgrid1.Visible := true;
        dbgrid1.top := editzyks.top + editzyks.Height + 10;
        dbgrid1.left := editzyks.Left; ;
        dbgrid1.SetFocus;
      end;
  end
  else
  begin
    if key = #13 then
      if application.MessageBox('是否要清除设置的科室?', '提示', 4 + 256 + 32) = 6 then
      begin
        qry_mbmx.Edit;
        qry_mbmx['zyksgs'] := '';
        qry_mbmx.Post;
      end;
  end;
end;

procedure TFrm_blmb.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) and (dbgrid1.tag = 1) then
  begin
    editzyks.Text := qry_pub['mc'];
    qry_mbmx.Edit;
    qry_mbmx['zyksgs'] := qry_pub['dm'];
    qry_mbmx.Post;
    dbgrid1.Visible := false;
    mbsjjksz.SetFocus;
  end;
end;

procedure TFrm_blmb.DBGrid1Exit(Sender: TObject);
begin
  dbgrid1.Visible := false;
end;

procedure TFrm_blmb.b_findClick(Sender: TObject);
var
  txt: string;
  i: integer;
begin
  application.CreateForm(Tfrm_cxmb, frm_cxmb);
  try
    frm_cxmb.ShowModal;
  finally
    frm_cxmb.free;
  end;
  if mbdm = '' then
    abort
  else
  begin
    i := 0;
    for i := 0 to treeviewzp.Items.Count - 1 do
    begin
      txt := copy(treeviewzp.Items[i].text, 1, pos('_', treeviewzp.Items[i].text) - 1);
      if txt = dldm then
      begin
        treeviewzp.Items[i].Selected := true;
        qry_mbmx.close;
        qry_mbmx.Parameters.ParamByName('dldm').value := dldm + '%';
        qry_mbmx.open;
        qry_mbmx.Locate('mbdm', mbdm, []);
        cxGrid1.SetFocus;
        exit;
      end;
    end;
  end;
end;

procedure TFrm_blmb.b_closeClick(Sender: TObject);
begin
  close;
end;

end.
