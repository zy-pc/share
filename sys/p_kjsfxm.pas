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
    b_add: TButton;
    b_edit: TButton;
    b_close: TButton;
    b_save: TButton;
    b_cancel: TButton;
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
    sp_fyxgsfbz: TADOStoredProc;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    qry_fydmcx: TADOQuery;
    b_bl: TBitBtn;
    Button1: TButton;
    Panel6: TPanel;
    Label1: TLabel;
    Label10: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label13: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label12: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    Label16: TLabel;
    Label21: TLabel;
    Label23: TLabel;
    DBEdit1: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    editmzks: TEdit;
    editzyks: TEdit;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox1: TDBCheckBox;
    DBEdit19: TDBEdit;
    DBEdit21: TDBEdit;
    Panel7: TPanel;
    DBRadioGroup1: TDBRadioGroup;
    DBEdit11: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    ComboBox1: TComboBox;
    DBMemo2: TDBMemo;
    DBMemo1: TDBMemo;
    DBEdit12: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit18: TDBEdit;
    Label19: TLabel;
    Label14: TLabel;
    Label18: TLabel;
    Label20: TLabel;
    Label17: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label24: TLabel;
    Label15: TLabel;
    Label22: TLabel;
    lbl_yfxz: TLabel;
    cbb_yfxz: TComboBox;
    dbedt_yfzdmc: TDBEdit;
    dbedt_cldym: TDBEdit;
    lbl_cldym: TLabel;
    lbl_ypmc: TLabel;
    dbedt_ypmc: TDBEdit;
    lbl_ypgg: TLabel;
    dbedt_ypgg: TDBEdit;
    qry_cldym: TADOQuery;
    ds_cldym: TDataSource;
    qry_ypmc: TADOQuery;
    ds_ypmc: TDataSource;
    dbgrd_ypmc: TDBGrid;
    rb1: TRadioButton;
    rb2: TRadioButton;
    rb3: TRadioButton;
    Label27: TLabel;
    DBEdit22: TDBEdit;
    qry_jbxx: TADOQuery;
    ds_jbxx: TDataSource;
    Label28: TLabel;
    DBEdit23: TDBEdit;
    Label29: TLabel;
    DBEdit24: TDBEdit;
    Label30: TLabel;
    DBEditZKJbl: TDBEdit;
    dbchkqybz: TDBCheckBox;
    lb_yblbmc: TLabel;
    DBEdit25: TDBEdit;
    DBGrid3: TDBGrid;
    qry_ylml: TADOQuery;
    ds_ylml: TDataSource;
    procedure BitBtn4Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure treeviewzpChange(Sender: TObject; Node: TTreeNode);
    procedure b_addClick(Sender: TObject);
    procedure b_saveClick(Sender: TObject);
    procedure b_cancelClick(Sender: TObject);
    procedure b_editClick(Sender: TObject);
    procedure b_closeClick(Sender: TObject);
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
    procedure DBCheckBox3Click(Sender: TObject);
    procedure DBCheckBox2Click(Sender: TObject);
    procedure b_printClick(Sender: TObject);
    procedure editmzksExit(Sender: TObject);
    procedure editzyksEnter(Sender: TObject);
    procedure editzyksExit(Sender: TObject);
    procedure editmzksEnter(Sender: TObject);
    procedure DBEdit14Exit(Sender: TObject);
    procedure b_blClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBEdit10Exit(Sender: TObject);
    procedure dbgrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure cbb_yfxzChange(Sender: TObject);
    procedure dbedt_cldymKeyPress(Sender: TObject; var Key: Char);
    procedure dbgrd_ypmcKeyPress(Sender: TObject; var Key: Char);
    procedure dbedt_cldymChange(Sender: TObject);
    procedure DBEdit1Change(Sender: TObject);
    procedure DBEdit25KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid3KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid3Exit(Sender: TObject);
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
    { Public declarations }
  end;

var
  frm_kjsfxm: Tfrm_kjsfxm;
  mzkschange, zykschange: boolean;
const
  zp = '22222';
  zpjx = 5;
  zplbdm = 'dm';
  zplbmc = 'mc';
  zptable = 'sys_kjsfdl';
  zptableorder = 'dm';
  begin_char = '_';

  //药房设置--常量
  YFXZ_XGKS = 'xgks';    //西药房
  YFXZ_CHYF = 'chyf';    //成药房
  YFXZ_CFFY = 'cffy';    //草药房
  YFXZ_NULL = '';   //未选择

  
function TreeFindItem(Sender: TTreeView; Name: string; parent_n: integer): TTreeNode;
function Treeleavelleng(zpkeyleng: integer): integer;

implementation
uses p_dm, p_func, p_cxsf_xm, p_fybl, p_sfxm;


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
  if pub_yydm='0260' then
  begin

  end;

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
  PageControl1.ActivePage := TabSheet1;
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
      qry_fydmcx.close;
      qry_fydmcx.Parameters.ParamByName('vdldm').value := dldm + '%';
      qry_fydmcx.open;
      b_edit.Enabled := (not qry_fydmcx.IsEmpty);
    end else begin
      pub_key := '';
    end;
    if copy(pub_key, 1, 2) = '50' then
    begin
      dbedit10.ReadOnly := true;
      dbedit6.ReadOnly := true;
    end
    else
    begin
      dbedit10.ReadOnly := false;
      dbedit6.ReadOnly := false;
    end;
    if node.HasChildren = false then
    begin
      b_add.Enabled := true;
      b_edit.Enabled := true;
    end else begin
      b_add.Enabled := false;
      b_edit.Enabled := false;
    end;
    b_delete.Enabled := (not pub_qybz) and (not qry_fydmcx.IsEmpty);
  end;
end;

procedure Tfrm_kjsfxm.b_addClick(Sender: TObject);
var
  v_fydm: string;
  szm:string;
  hsw:string;
begin
  if treeviewzp.selected <> nil then
  begin
    //申请费用代码
    with qry_pub do
    begin
      close;
      sql.Clear;
      sql.Text := 'select max(fydm) maxdm from sys_kjsfxm ';
      open;
    end;
    if Trim(qry_pub.FieldByName('maxdm').asstring) = '' then
    begin
      v_fydm := '0001';
    end
    else
    begin
      szm:= Copy(qry_pub.FieldByName('maxdm').asstring,1,1);
      if Trim(qry_pub.FieldByName('maxdm').asstring)='9999' then
      begin
        v_fydm:='a001';
      end
      else if szm[1] in ['a'..'z','A'..'Z'] then
      begin
        hsw:= Copy(qry_pub.FieldByName('maxdm').asstring,2,3);
        if hsw='999' then
        begin
          v_fydm := Chr(ord(szm[1])+1)+'001';
          delete(v_fydm, 1, length(v_fydm) - 4);
        end
        else
        begin
          v_fydm := szm + Copy('0000',1,(3-Length(trim(floattostr(strtofloat(hsw) + 1)))))+
          trim(floattostr(strtofloat(hsw) + 1));
          delete(v_fydm, 1, length(v_fydm) - 4);
        end;

      end
      else if szm[1] in ['0'..'9'] then
      begin
        v_fydm := '0000' + trim(floattostr(strtofloat(qry_pub.FieldByName('maxdm').asstring) + 1));
        delete(v_fydm, 1, length(v_fydm) - 4);
      end;


    end;
    ds_fydm.DataSet := qry_fydm;
    qry_fydm.Close;
    qry_fydm.Parameters.ParamByName('fydm').value := v_fydm;
    qry_fydm.Open;
    qry_fydm.Append;
    qry_fydm['fydm'] := v_fydm;
    qry_fydm['szdm'] := '';
    qry_fydm['newfydm'] := '';
    qry_fydm['dldm'] := dldm;
    qry_fydm['dw'] := '人次';
    qry_fydm['qybz'] := false;
    qry_fydm['mzfy'] := false;
    qry_fydm['zyfy'] := false;
    qry_fydm['sbfybl'] := 50;
    qry_fydm['bxfybl'] := 100;
    qry_fydm['htfybl'] := 0;
    qry_fydm['kdksfpbl'] := 0;
    qry_fydm['kdysfpbl'] := 0;
    qry_fydm['jkyhfybl'] := 0;
    qry_fydm['ykyhfybl'] := 0;
    qry_fydm['ptkyhfybl'] := 0;
    qry_fydm['cwlb'] := '';
    qry_jbxx.Close;
    qry_jbxx.Parameters.ParamByName('fydm').value := v_fydm;
    qry_jbxx.Open;
    qry_jbxx.Append;
    //panel1.Enabled := true;
    panel6.Enabled := true;
    panel7.Enabled := true;
    dbedit2.SetFocus;
    b_add.Enabled := false;
    b_edit.Enabled := false;
    b_cx.Enabled := false;
    treeviewzp.Enabled := false;
    dbgrid2.Enabled := false;
    b_save.Enabled := true;
    b_cancel.Enabled := true;
    rb1.Enabled := true;
    rb2.Enabled := true;
  end else begin
    application.MessageBox('请选择类别树', '提示', 0 + 48);
  end;
//  if treeviewzp.selected <> nil then
//  begin
//    //申请费用代码
//    with qry_pub do
//    begin
//      close;
//      sql.Clear;
//      sql.Text := 'select max(case when len(fydm)=4 then ''00''+fydm else fydm end) maxdm from sys_kjsfxm ';
//      open;
//    end;
//    if Trim(qry_pub.FieldByName('maxdm').asstring) = '' then
//    begin
//      v_fydm := '0001';
//    end
//    else
//    begin
//      szm:= Copy(qry_pub.FieldByName('maxdm').asstring,1,1);
//      if Trim(qry_pub.FieldByName('maxdm').asstring)='009999' then
//      begin
//        v_fydm:='010000';
//      end
//      else if Copy(Trim(qry_pub.FieldByName('maxdm').asstring),1,2)='00' then
//      begin
//        v_fydm := '0000' + trim(floattostr(strtofloat(Copy(Trim(qry_pub.FieldByName('maxdm').asstring),3,4)) + 1));
//        delete(v_fydm, 1, length(v_fydm) - 4);
//
//      end
//      else
//      begin
//        v_fydm := '000000' + trim(floattostr(strtofloat(Trim(qry_pub.FieldByName('maxdm').asstring)) + 1));
//        delete(v_fydm, 1, length(v_fydm) - 6);
//      end;
//
//
//    end;
//    ds_fydm.DataSet := qry_fydm;
//    qry_fydm.Close;
//    qry_fydm.Parameters.ParamByName('fydm').value := v_fydm;
//    qry_fydm.Open;
//    qry_fydm.Append;
//    qry_fydm['fydm'] := v_fydm;
//    qry_fydm['szdm'] := '';
//    qry_fydm['dldm'] := dldm;
//    qry_fydm['dw'] := '人次';
//    qry_fydm['qybz'] := false;
//    qry_fydm['mzfy'] := false;
//    qry_fydm['zyfy'] := false;
//    qry_fydm['sbfybl'] := 50;
//    qry_fydm['bxfybl'] := 100;
//    qry_fydm['htfybl'] := 0;
//    qry_fydm['kdksfpbl'] := 0;
//    qry_fydm['kdysfpbl'] := 0;
//    qry_fydm['jkyhfybl'] := 0;
//    qry_fydm['ykyhfybl'] := 0;
//    qry_fydm['ptkyhfybl'] := 0;
//    panel1.Enabled := true;
//    dbedit2.SetFocus;
//    b_add.Enabled := false;
//    b_edit.Enabled := false;
//    b_cx.Enabled := false;
//    treeviewzp.Enabled := false;
//    dbgrid2.Enabled := false;
//    b_save.Enabled := true;
//    b_cancel.Enabled := true;
//  end else begin
//    application.MessageBox('请选择类别树', '提示', 0 + 48);
//  end;
end;

procedure Tfrm_kjsfxm.b_saveClick(Sender: TObject);
var
  hotkey: string;
  fymc: string;
  GetNewsybz: Real;
  Node: TTreeNode;
begin
  node := nil;
  hotkey := trim(dbedit13.text);
  fymc := trim(dbedit2.text);
  with qry_pub do begin
    close;
    sql.Clear;
    sql.Text := 'select * from sys_kjsfxm where hotkey=' + '''' + hotkey + '''' + ' and qybz=1 ';
    open;
  end;
  if (qry_pub.RecordCount > 1) and (hotkey <> '') and (qry_fydm.State = dsedit) then
  begin
    application.MessageBox('该热已定义!请修改!', '提示', 0 + 16);
    dbedit13.SelectAll;
    dbedit13.SetFocus;
    abort;
  end;
  if (qry_pub.RecordCount > 0) and (hotkey <> '') and (qry_fydm.State = dsinsert) then
  begin
    application.MessageBox('该热已定义!请修改!', '提示', 0 + 16);
    dbedit13.SelectAll;
    dbedit13.SetFocus;
    abort;
  end;
  with qry_pub do begin
    close;
    sql.Clear;
    sql.Text := 'select * from sys_kjsfxm where qybz=1 and fymc=' + '''' + fymc + '''';
    open;
  end;
  if (qry_pub.RecordCount > 0) and (qry_fydm.State = dsinsert) then
  begin
    application.MessageBox('该名称已使用!请修改!', '提示', 0 + 16);
    dbedit13.SelectAll;
    dbedit13.SetFocus;
    abort;
  end;
  if (qry_pub.RecordCount > 1) and (qry_fydm.State = dsedit) then
  begin
    application.MessageBox('该名称已使用!请修改!', '提示', 0 + 16);
    dbedit13.SelectAll;
    dbedit13.SetFocus;
    abort;
  end;
  if (qry_fydm.State = dsedit) or (qry_fydm.State = dsinsert) then
  begin
    if trim(qry_fydm.FieldByName('fymc').asstring) = '' then
    begin
      application.MessageBox('费用名称不能为空！', '提示', 0 + 16);
      dbedit2.SetFocus;
      abort;
    end;
    if trim(qry_fydm.FieldByName('dymc').asstring) = '' then
    begin
      application.MessageBox('打印名称不能为空！', '提示', 0 + 16);
      dbedit14.SetFocus;
      abort;
    end;
    sp_cxfylb.Active := false;
    sp_cxfylb.Parameters.ParamByName('@dldm').value := dbedit10.Text;
    sp_cxfylb.Parameters.ParamByName('@sc_zt').value := '0';
    sp_cxfylb.ExecProc;
    if sp_cxfylb.Parameters.ParamByName('@sc_zt').value = '1' then
    begin
      application.MessageBox('无此费用大类代码！', '提示', 0 + 16);
      dbedit10.SetFocus;
      dbedit10.SelectAll;
      abort;
    end;
    if qry_fydm.fieldbyname('mzfy').asboolean then
      qry_fydm['ksgs'] := ksdm
    else
      qry_fydm['ksgs'] := '';
    if qry_fydm.fieldbyname('zyfy').asboolean then
      qry_fydm['zyksgs'] := zyksdm
    else
      qry_fydm['zyksgs'] := '';

    qry_fydm['cwlb']:=ComboBox1.Text;
    if rb1.Checked = True then
    begin
       qry_fydm['fylb'] := rb1.Caption;
    end
    else if rb2.Checked = True then
    begin
       qry_fydm['fylb'] := rb2.Caption;
    end
    else if rb3.Checked = True then
    begin
       qry_fydm['fylb'] := rb3.Caption;
    end;
    qry_fydm.Post;
    if (qry_jbxx.State = dsBrowse) then
    begin
     qry_jbxx.Edit;
    end;
    qry_jbxx['fydm'] := DBEdit1.Text;
    qry_jbxx.Post;
    GetNewsybz := qry_fydm.FieldByname('sfbz').AsFloat;
    dm_data.ado_mydata.BeginTrans;
    try
      qry_fydm.UpdateBatch;
      qry_jbxx.UpdateBatch;
      if Getsfbz <> GetNewsybz then
      begin
        sp_fyxgsfbz.Active := false;
        sp_fyxgsfbz.Parameters.ParamByName('@fydm').value := Getfydm;
        sp_fyxgsfbz.ExecProc;
      end;
      dm_data.ado_mydata.CommitTrans;
    except
      dm_data.ado_mydata.RollbackTrans;
      application.MessageBox('保存失败', '提示', 0 + 16);
    end;
    ds_fydm.DataSet := qry_fydmcx;
    treeviewzp.Enabled := true;
    qry_fydmcx.close;
    qry_fydmcx.Parameters.ParamByName('vdldm').value := dldm + '%';
    qry_fydmcx.open;
    PageControl1.ActivePage := TabSheet1;
    //panel1.Enabled := false;
    panel6.Enabled := false;
    panel7.Enabled := false;
    b_add.Enabled := true;
    b_edit.Enabled := true;
    b_cx.Enabled := true;
    dbgrid2.Enabled := true;
    b_save.Enabled := false;
    b_cancel.Enabled := false;
    rb1.Enabled := false;
    rb2.Enabled := false;
    rb3.Enabled := false;
    Getfydm := '';
    Getsfbz := 0.00;
  end;
end;

procedure Tfrm_kjsfxm.cbb_yfxzChange(Sender: TObject);
begin
  if cbb_yfxz.ItemIndex = 1 then
    dbedt_yfzdmc.Text := YFXZ_XGKS
  else if cbb_yfxz.ItemIndex = 2 then
    dbedt_yfzdmc.Text := YFXZ_CHYF
  else if cbb_yfxz.ItemIndex = 3 then
    dbedt_yfzdmc.Text := YFXZ_CFFY
  else   dbedt_yfzdmc.Text :=  YFXZ_NULL;

  
end;



procedure Tfrm_kjsfxm.b_cancelClick(Sender: TObject);
begin
  if treeviewzp.selected <> nil then
  begin
    ds_fydm.DataSet := qry_fydmcx;
    qry_fydm.Cancel;
  //  panel1.Enabled := false;
    panel6.Enabled := false;
    panel7.Enabled := false;
    b_add.Enabled := true;
    b_edit.Enabled := true;
    b_cx.Enabled := true;
    treeviewzp.Enabled := true;
    dbgrid2.Enabled := true;
    b_save.Enabled := false;
    b_cancel.Enabled := false;
    rb1.Enabled := false;
    rb2.Enabled := false;
    PageControl1.ActivePage := TabSheet1;
  end;
end;

procedure Tfrm_kjsfxm.b_editClick(Sender: TObject);
begin
  Getfydm := '';
  Getsfbz := 0.00;
  if treeviewzp.selected <> nil then
  begin
    if PageControl1.ActivePageIndex=1 then
    begin
      PageControl1.ActivePageIndex:=0;
    end;
    qry_fydm.Close;
    qry_fydm.Parameters.ParamByName('fydm').value := qry_fydmcx.fieldbyname('fydm').asstring;
    qry_fydm.Open;
    ds_fydm.DataSet := qry_fydm;
    Getfydm := trim(qry_fydm.FieldByName('fydm').AsString);
    Getsfbz := qry_fydm.FieldByName('sfbz').AsFloat;
    qry_fydm.edit;
    //panel1.Enabled := true;
    panel6.Enabled := true;
    panel7.Enabled := true;
    dbedit2.SetFocus;
    b_add.Enabled := false;
    b_edit.Enabled := false;
    b_cx.Enabled := false;
    treeviewzp.Enabled := false;
    dbgrid2.Enabled := false;
    b_save.Enabled := true;
    b_cancel.Enabled := true;
    rb1.Enabled := True;
    rb2.Enabled := True;
    rb3.Enabled := True;
  end;
end;

procedure Tfrm_kjsfxm.b_closeClick(Sender: TObject);
begin
  close;
end;

procedure Tfrm_kjsfxm.DBEdit25KeyPress(Sender: TObject; var Key: Char);
begin
if Key = #13 then
begin
  qry_ylml.Close;
  qry_ylml.Parameters.ParamByName('pym').Value := '%'+ DBEdit25.Text+ '%';
  qry_ylml.Open;
  DBGrid3.Visible := True;
  DBGrid3.SetFocus;
end;
end;

procedure Tfrm_kjsfxm.DBEdit2Exit(Sender: TObject);
begin
  if TRIM(DBEDIT3.TEXT) = '' then
    qry_fydm['pym'] := string(GetPym(dbedit2.text));
  dbedit3.SelectAll;
end;

procedure Tfrm_kjsfxm.dbedt_cldymChange(Sender: TObject);
var cldym:string;
begin
  qry_cldym.Close;
  cldym:=qry_fydmcx.FieldByName('cldym').AsString;
  qry_cldym.SQL.Text:='select * from sys_ypdm where ypdm='+''''+cldym+''''+'';
  qry_cldym.Open;
end;

procedure Tfrm_kjsfxm.dbedt_cldymKeyPress(Sender: TObject; var Key: Char);
var pym_mc:string;
begin
  pym_mc:=Trim(dbedt_cldym.Text);
  if Key=#13 then
  begin
   dbgrd_ypmc.Visible:=True;
   qry_ypmc.Close;
   qry_ypmc.SQL.Text:='select * from sys_ypdm where  ypmc like '+''''+'%'+pym_mc+'%'+''''+
                       ' union  select * from sys_ypdm where  pym like '+''''+'%'+pym_mc+'%'+''''+'';             //pym
   qry_ypmc.Open;
   dbgrd_ypmc.SetFocus;
  end;
end;

procedure Tfrm_kjsfxm.dbgrd_ypmcKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
  begin
    dbedt_cldym.text := Trim(qry_ypmc.FieldByName('ypdm').AsString);
    dbedt_ypmc.text := Trim(qry_ypmc.FieldByName('ypmc').AsString);
    dbedt_ypgg.text:= Trim(qry_ypmc.FieldByName('ypgg').AsString);
    dbgrd_ypmc.Visible:=False;
  end;
end;

procedure Tfrm_kjsfxm.editmzksKeyPress(Sender: TObject; var Key: Char);
begin
  if (key in ['A'..'z', '0'..'9']) or (ord(key) > 127) then
    mzkschange := true;

end;

procedure Tfrm_kjsfxm.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) and (dbgrid1.tag = 1) then
  begin
    editmzks.Text := qry_pub['mc'];
    ksdm := qry_pub['dm'];
    dbgrid1.Visible := false;
    dbcheckbox2.SetFocus;
  end;
  if (key = #13) and (dbgrid1.tag = 2) then
  begin
    editzyks.Text := qry_pub['mc'];
    zyksdm := qry_pub['dm'];
    dbgrid1.Visible := false;
    dbcheckbox2.SetFocus;
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

procedure Tfrm_kjsfxm.dbgrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
begin
  if qry_fydmcx.FieldByName('qybz').AsBoolean=false then
  begin
    dbgrid2.Canvas.brush.Color := cllime;
    dbgrid2.Canvas.Font.Color := clblue;
  end;
  dbgrid2.DefaultDrawColumnCell( rect, datacol, column, state );
end;

procedure Tfrm_kjsfxm.DBGrid3Exit(Sender: TObject);
begin
DBGrid3.Visible := False;
end;

procedure Tfrm_kjsfxm.DBGrid3KeyPress(Sender: TObject; var Key: Char);
begin
if Key=#13 then
begin
DBGrid3.Visible := False;
DBEdit25.Text := qry_ylml.FieldByName('lbxmmc').AsString;
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
  sp_fysycx.Parameters.ParamByName('@lb').value := '1';
  sp_fysycx.Parameters.ParamByName('@fydm').value := qry_fydmcx['fydm'];
  sp_fysycx.Parameters.ParamByName('@fysybz').value := true;
  sp_fysycx.ExecProc;
  if not sp_fysycx.Parameters.ParamByName('@fysybz').value then
  begin
    if not qry_fydmcx.IsEmpty then
    begin
      v_fydm := trim(qry_fydmcx.fieldbyname('fydm').asstring);
      with qry_pub do begin
        close;
        sql.Clear;
        sql.Text := 'delete sys_kjsfxm where fydm=' + #39 + v_fydm + #39;
        dm_data.ado_mydata.BeginTrans;
        try
          execsql;
          dm_data.ado_mydata.CommitTrans;
          qry_fydmcx.Close;
          qry_fydmcx.Parameters.ParamByName('vdldm').value := dldm;
          qry_fydmcx.Open;
        except
          dm_data.ado_mydata.RollbackTrans;
          application.MessageBox('删除失败', '提示', 0 + 48);
        end;
      end;
    end;
  end
  else
    application.MessageBox('该费用项目已使用过不能删除。', '提示', 0 + 48);
end;

procedure Tfrm_kjsfxm.DBCheckBox1Click(Sender: TObject);
begin
 if dbcheckbox1.Focused then
 if not dbcheckbox1.Checked then
 begin
      sp_fysycx.Active:=false;
      sp_fysycx.Parameters.ParamByName('@lb').value:='1';
      sp_fysycx.Parameters.ParamByName('@fydm').value:=qry_fydm['fydm'];
      sp_fysycx.Parameters.ParamByName('@fysybz').value:=false;
      sp_fysycx.ExecProc;
      if sp_fysycx.Parameters.ParamByName('@fysybz').value then
      begin
        application.MessageBox('该费用项目已使用过不能停用。','提示',0+48);
        dbcheckbox1.Checked:=true;
      end;
 end;
end;

procedure Tfrm_kjsfxm.qry_fydmAfterScroll(DataSet: TDataSet);
begin
  try
    if qry_fydmcx.FieldByName('yfzdmc').AsString = YFXZ_XGKS then //西药房
      cbb_yfxz.ItemIndex := 1
    else if qry_fydmcx.FieldByName('yfzdmc').AsString = YFXZ_CHYF then   //成药房
      cbb_yfxz.ItemIndex := 2
    else if qry_fydmcx.FieldByName('yfzdmc').AsString = YFXZ_CFFY then    //草药房
      cbb_yfxz.ItemIndex := 3
    else  cbb_yfxz.ItemIndex := 0; //未选择时

    if qry_fydmcx.FieldByName('fylb').AsString = '甲类' then
    begin
      rb1.Checked := True;
    end
    else if qry_fydmcx.FieldByName('fylb').AsString = '乙类' then
    begin
      rb2.Checked := True;
    end;
    qry_jbxx.Close;
    qry_jbxx.Parameters.ParamByName('fydm').Value := qry_fydmcx.FieldByName('fydm').AsString;
    qry_jbxx.Open;
    qry_pub.close;
    qry_pub.SQL.clear;
    qry_pub.SQL.Text := 'select * from sys_ksdm where dm=' +
      '''' + qry_fydmcx.fieldbyname('ksgs').asstring + '''';
    qry_pub.open;
    ksdm := qry_pub.fieldbyname('dm').asstring;
    editmzks.text := qry_pub.fieldbyname('mc').asstring;
    ComboBox1.Text:=qry_fydmcx.FieldByName('cwlb').AsString;
    qry_pub.close;
    qry_pub.SQL.clear;
    qry_pub.SQL.Text := 'select * from sys_ksdm where dm=' +
      '''' + qry_fydmcx.fieldbyname('zyksgs').asstring + '''';
    qry_pub.open;
    zyksdm := qry_pub.fieldbyname('dm').asstring;
    editzyks.text := qry_pub.fieldbyname('mc').asstring;
  except
    application.MessageBox('无效对应科室', '提示', 0 + 48);
  end;
end;

procedure Tfrm_kjsfxm.editzyksKeyPress(Sender: TObject; var Key: Char);
begin
  if (key in ['A'..'z', '0'..'9']) or (ord(key) > 127) then
    zykschange := true;
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
    i := 0;
    for i := 0 to treeviewzp.Items.Count - 1 do
      if treeviewzp.Items[i].Level > -1 then
      begin
        txt := copy(treeviewzp.Items[i].text, 1, pos(begin_char, treeviewzp.Items[i].text) - 1);
        if txt = cx_dldm then
        begin
          treeviewzp.Items[i].Selected := true;
          qry_fydmcx.Locate('fydm', cx_fydm, []);
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

procedure Tfrm_kjsfxm.DBCheckBox3Click(Sender: TObject);
begin
//  if dbcheckbox3.Focused then
//    if not dbcheckbox3.Checked then
//    begin
//      sp_fysycx.Active := false;
//      sp_fysycx.Parameters.ParamByName('@lb').value := '2';
//      sp_fysycx.Parameters.ParamByName('@fydm').value := qry_fydm['fydm'];
//      sp_fysycx.Parameters.ParamByName('@fysybz').value := false;
//      sp_fysycx.ExecProc;
//      if sp_fysycx.Parameters.ParamByName('@fysybz').value then
//      begin
//        application.MessageBox('该费用项目已使用过不能停用。', '提示', 0 + 48);
//        dbcheckbox3.Checked := true;
//      end;
//    end;
end;

procedure Tfrm_kjsfxm.DBCheckBox2Click(Sender: TObject);
begin
//  if dbcheckbox2.Focused then
//    if not dbcheckbox2.Checked then
//    begin
//      sp_fysycx.Active := false;
//      sp_fysycx.Parameters.ParamByName('@lb').value := '3';
//      sp_fysycx.Parameters.ParamByName('@fydm').value := qry_fydm['fydm'];
//      sp_fysycx.Parameters.ParamByName('@fysybz').value := false;
//      sp_fysycx.ExecProc;
//      if sp_fysycx.Parameters.ParamByName('@fysybz').value then
//      begin
//        application.MessageBox('该费用项目已使用过不能停用。', '提示', 0 + 48);
//        dbcheckbox2.Checked := true;
//      end;
//    end;
end;

procedure Tfrm_kjsfxm.b_printClick(Sender: TObject);
begin
  qry_fydmcx.filtered := false;
  qry_fydmcx.filter := 'dymc<>' + char(39) + char(39)+ ' and qybz='+#39+'true'+#39 ;
  qry_fydmcx.filtered := true;
  printdbgrideh1.title.Text := '打印日期:' + formatdatetime('yy-mm-dd', now);
  printdbgrideh1.PageHeader.centerText.Text := pub_yymc + ':费用项目' + char(13) + trim(treeviewzp.selected.text);
  PrintDBGridEh1.Preview;
  qry_fydmcx.filter := '';
  qry_fydmcx.filtered := false;
end;

procedure Tfrm_kjsfxm.editmzksExit(Sender: TObject);
begin
  if (not (b_close.Focused or b_cancel.Focused)) and (mzkschange) then
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
        dbgrid1.tag := 1;
        dbgrid1.Visible := true;
        dbgrid1.top := editmzks.top + editmzks.Height + 10;
        dbgrid1.left := 414;
        dbgrid1.SetFocus;
      end;
  end;
end;

procedure Tfrm_kjsfxm.editzyksEnter(Sender: TObject);
begin
  zykschange := false;
end;

procedure Tfrm_kjsfxm.editzyksExit(Sender: TObject);
begin
  if (not (b_close.Focused or b_cancel.Focused)) and (zykschange) then
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
        dbcheckbox2.SetFocus;
      end
      else
      begin
        dbgrid1.tag := 2;
        dbgrid1.Visible := true;
        dbgrid1.top := editzyks.top + editzyks.Height + 10;
        dbgrid1.left := 504;
        dbgrid1.SetFocus;
      end;
  end;
end;

procedure Tfrm_kjsfxm.editmzksEnter(Sender: TObject);
begin
  mzkschange := false;
end;

procedure Tfrm_kjsfxm.DBEdit10Exit(Sender: TObject);
begin
//    if trim(dbedit10.Text)='50' then
//    begin
//      if dldm<>'50' then
//      begin
//        application.MessageBox('不能将该费用调整为打包项目','提示',0+16);
//        dbedit10.SetFocus;
//        dbedit10.Text:=dldm;
//        abort;
//      end;
//    end;
end;

procedure Tfrm_kjsfxm.DBEdit14Exit(Sender: TObject);
begin
  if TRIM(DBEDIT14.TEXT) <> '' then
    qry_fydm['typym'] := string(get_hz_pywb(dbedit14.text, 4));
  dbedit19.SelectAll;
end;

procedure Tfrm_kjsfxm.DBEdit1Change(Sender: TObject);
begin
if qry_fydmcx.FieldByName('fylb').AsString = '甲类' then
begin
   rb1.Checked := True;
end
else if qry_fydmcx.FieldByName('fylb').AsString = '乙类' then
begin
   rb2.Checked := True;
end
else
begin
   rb3.Checked := True;
end;
end;

     

procedure Tfrm_kjsfxm.b_blClick(Sender: TObject);
begin
  application.CreateForm(Tfrm_fybl, frm_fybl);
  try
    frm_fybl.ShowModal;
  finally
    frm_fybl.free;
  end;
end;

procedure Tfrm_kjsfxm.Button1Click(Sender: TObject);
begin
  application.CreateForm(Tfrm_sfxm, frm_sfxm);
  try
    frm_sfxm.ShowModal;
  finally
    frm_sfxm.free;
  end;
end;

end.

