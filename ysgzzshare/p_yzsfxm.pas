unit p_yzsfxm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, ExtCtrls, StdCtrls, Buttons, ComCtrls, Grids, DBGrids,
  Mask, DBCtrls, ImgList, Menus, ToolWin, ADODB, DBGridEh, PrnDbgeh, GridsEh,
  cxPC, cxControls, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, cxCheckBox, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, cxDBLookupComboBox, cxTextEdit, DBGridEhGrouping;

type
  Tfrm_yzsfxm = class( TForm )
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
    Splitter1: TSplitter;
    PrintDBGridEh1: TPrintDBGridEh;
    DBGrid1: TDBGrid;
    SP_fyxm: TADOStoredProc;
    DS_yp: TDataSource;
    DBGrid3: TDBGrid;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    Panel1: TPanel;
    Splitter2: TSplitter;
    Panel5: TPanel;
    geYzxm: TDBGridEh;
    gcYzxm: TcxGrid;
    gvYzxm: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxPageControl2: TcxPageControl;
    cxTabSheet3: TcxTabSheet;
    cxTabSheet4: TcxTabSheet;
    Panel6: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label6: TLabel;
    Label5: TLabel;
    Label12: TLabel;
    Label1: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label16: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit10: TDBEdit;
    editmzks: TEdit;
    editzyks: TEdit;
    Edit1: TEdit;
    Edit2: TEdit;
    chUseMark: TDBCheckBox;
    DBEdit6: TDBEdit;
    chMzMark: TDBCheckBox;
    chZyMark: TDBCheckBox;
    Panel7: TPanel;
    btExit: TBitBtn;
    b_add: TButton;
    b_edit: TButton;
    b_cx: TButton;
    b_print: TBitBtn;
    b_delete: TBitBtn;
    b_save: TButton;
    b_Input: TButton;
    gcCzwz: TcxGrid;
    gvCzwz: TcxGridDBTableView;
    cxGridDBColumn11: TcxGridDBColumn;
    cxGridDBColumn13: TcxGridDBColumn;
    cxGridDBColumn14: TcxGridDBColumn;
    cxGridDBColumn15: TcxGridDBColumn;
    cxGridDBColumn16: TcxGridDBColumn;
    glczwz: TcxGridLevel;
    dsXmCzwz: TDataSource;
    qry_xmczwz: TADOQuery;
    dsCzwz: TDataSource;
    qry_Czwz: TADOQuery;
    ds_yzxmsfxm: TDataSource;
    qry_yzxmsfxm: TADOQuery;
    DBGrid4: TDBGrid;
    qry_yzxmsfxmxmdm: TStringField;
    qry_yzxmsfxmxmmc: TStringField;
    qry_yzxmsfxmpym: TStringField;
    qry_yzxmsfxmfydm: TStringField;
    qry_kjsfxm: TADOQuery;
    ds_kjsfxm: TDataSource;
    qry_yzxmsfxmfymc: TStringField;
    gcList: TcxGrid;
    gvList: TcxGridDBTableView;
    cxGridDBColumn17: TcxGridDBColumn;
    cxGridDBColumn18: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    Panel8: TPanel;
    btAdd: TButton;
    btModify: TButton;
    btDel: TBitBtn;
    btSle: TBitBtn;
    btMove: TButton;
    btChange: TButton;
    gvListColumn1: TcxGridDBColumn;
    qry_ksdm: TADOQuery;
    qry_Czwzid: TAutoIncField;
    qry_Czwzwzmc: TStringField;
    qry_Czwzksdm: TStringField;
    qry_Czwzksmc: TStringField;
    gvListColumn2: TcxGridDBColumn;
    gvListColumn3: TcxGridDBColumn;
    qry_Czwzxbbz: TStringField;
    qry_Czwzjzbz: TBooleanField;
    btJyyb: TButton;
    cxgrdbclmnYzxmColumn1: TcxGridDBColumn;
    cxgrdbclmnYzxmColumn2: TcxGridDBColumn;
    cxgrdbclmnYzxmColumn3: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    GridTableViewStyleSheetSpruce: TcxGridTableViewStyleSheet;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxStyle5: TcxStyle;
    cxStyle6: TcxStyle;
    cxStyle7: TcxStyle;
    cxStyle8: TcxStyle;
    cxStyle9: TcxStyle;
    cxStyle10: TcxStyle;
    cxStyle11: TcxStyle;
    qry_yzxmsfxmqybz: TBooleanField;
    qry_yzxmsfxmmzbz: TBooleanField;
    qry_yzxmsfxmzybz: TBooleanField;
    SP_fyxmfymc: TStringField;
    SP_fyxmdymc: TStringField;
    SP_fyxmfydm: TStringField;
    SP_fyxmpym: TStringField;
    SP_fyxmdw: TStringField;
    SP_fyxmsfbz: TBCDField;
    SP_fyxmksgs: TStringField;
    SP_fyxmmc: TStringField;
    SP_fyxmqybz: TBooleanField;
    SP_fyxmdldm: TStringField;
    SP_fyxmszdm: TStringField;
    SP_fyxmtypym: TStringField;
    Label4: TLabel;
    ComboBox1: TComboBox;
    DBCheckBox1: TDBCheckBox;
    Label9: TLabel;
    ComboBox2: TComboBox;
    Label13: TLabel;
    ComboBox3: TComboBox;
    Label14: TLabel;
    DBEdit14: TDBEdit;
    dbchkzybz: TDBCheckBox;
    procedure DBEdit6KeyPress( Sender: TObject; var Key: Char );
    procedure DBGrid3Exit( Sender: TObject );
    procedure DBGrid3KeyPress( Sender: TObject; var Key: Char );
    procedure DBGrid3DblClick( Sender: TObject );
    procedure Edit1KeyPress( Sender: TObject; var Key: Char );
    procedure BitBtn4Click( Sender: TObject );
    procedure FormShow( Sender: TObject );
    procedure treeviewzpChange( Sender: TObject; Node: TTreeNode );
    procedure b_addClick( Sender: TObject );
    procedure b_InputClick( Sender: TObject );
    procedure b_editClick( Sender: TObject );
    procedure DBEdit2Exit( Sender: TObject );
    procedure editmzksKeyPress( Sender: TObject; var Key: Char );
    procedure DBGrid1KeyPress( Sender: TObject; var Key: Char );
    procedure DBGrid1Exit( Sender: TObject );
    procedure FormKeyPress( Sender: TObject; var Key: Char );
    procedure b_deleteClick( Sender: TObject );
    procedure chUseMarkClick( Sender: TObject );
    procedure qry_fydmAfterScroll( DataSet: TDataSet );
    procedure editzyksKeyPress( Sender: TObject; var Key: Char );
    procedure b_cxClick( Sender: TObject );
    procedure editmzksChange( Sender: TObject );
    procedure editzyksChange( Sender: TObject );
    procedure b_printClick( Sender: TObject );
    procedure btExitClick( Sender: TObject );
    procedure b_saveClick( Sender: TObject );
    procedure btAddClick( Sender: TObject );
    procedure btModifyClick( Sender: TObject );
    procedure btSleClick( Sender: TObject );
    procedure btMoveClick( Sender: TObject );
    procedure btChangeClick( Sender: TObject );
    procedure btDelClick( Sender: TObject );
    procedure DBGrid4DblClick( Sender: TObject );
    procedure DBGrid4Exit( Sender: TObject );
    procedure DBGrid4KeyPress( Sender: TObject; var Key: Char );
    procedure gvYzxmEditKeyDown( Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit; var Key: Word;
      Shift: TShiftState );
    procedure DBGrid5KeyPress( Sender: TObject; var Key: Char );
    procedure DBGrid5DblClick( Sender: TObject );
    procedure geYzxmKeyPress( Sender: TObject; var Key: Char );
    procedure btJyybClick( Sender: TObject );
    procedure addjyybitem;
    procedure DBGrid4KeyDown( Sender: TObject; var Key: Word;
      Shift: TShiftState );
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
  frm_yzsfxm: Tfrm_yzsfxm;
const
  zp = '22222';
  zpjx = 5;
  zplbdm = 'dm';
  zplbmc = 'mc';
  zptable = 'sys_yzdl';
  zptableorder = 'dm';
  begin_char = '_';
function TreeFindItem( Sender: TTreeView; Name: string; parent_n: integer ): TTreeNode;
function Treeleavelleng( zpkeyleng: integer ): integer;

implementation
uses p_dm, p_func, p_cxyz_xm, p_yzxmsfxm, p_jyyb;

{$R *.DFM}

function Treeleavelleng( zpkeyleng: integer ): integer;
var
  levellength, i: integer;
begin
  levellength := 0;
  for i := 1 to zpjx do
  begin
    levellength := levellength + strtoint( copy( zp, i, 1 ) );
    if levellength = zpkeyleng then
    begin
      levellength := levellength - strtoint( copy( zp, i, 1 ) );
      break;
    end;
  end;
  result := levellength;
end;

function TreeFindItem( Sender: TTreeView; Name: string; parent_n: integer ): TTreeNode;
var
  Nodeitem: TTreeNode;
begin
  NodeItem := Sender.items.getfirstnode;
  if parent_n > 0 then
  begin
    repeat
      if copy( trim( NodeItem.text ), 1, parent_n ) <> Name then
      begin
        NodeItem := NodeItem.getnext;
      end;
    until copy( trim( NodeItem.text ), 1, parent_n ) = Name;
  end;
  if parent_n = 0 then
  begin
    result := sender.Items.GetFirstNode;
  end
  else
  begin
    Result := NodeItem;
  end
end;

procedure Tfrm_yzsfxm.BitBtn4Click( Sender: TObject );
begin
  close;
end;

procedure Tfrm_yzsfxm.FormShow( Sender: TObject );
var
  n, parent_n: integer;
  zpkey: string;
  zptext: string;
  Node: TTreeNode;
begin
  if pub_yydm='0003' then
  begin
    Label13.Visible:=True;
    ComboBox3.Visible:=True;
  end;
  if UpperCase( username ) <> ( 'SYS_ZXJF' ) then
  begin
    b_add.Visible := false;
    b_edit.Visible := false;
    b_delete.Visible := False;
    b_print.Visible := false;
    b_save.Visible := false;
    b_Input.Visible := false;
    btJyyb.Visible := false;
    frm_yzsfxm.Caption := '医嘱项目代码设置---只允许在系统维护中设置';
  end;
  Getfydm := '';
  pub_key := '';
  Treeviewzp.Items.Clear;
  Node := nil;
  with querytree do
  begin
    close;
    sql.Clear;
    sql.text := 'select ' + zplbdm + ',' + zplbmc + ' from  ' + zptable +
      ' order by ' + zptableorder;
    open;
  end;
  if querytree.RecordCount = 0 then
  begin
    abort;
  end;
  querytree.first;
  ZPKEY := trim( querytree[zplbdm] );
  N := LENGTH( ZPKEY );
  while not querytree.Eof do
  begin
    ZPKEY := trim( querytree[zplbdm] );
    ZPTEXT := trim( querytree[zplbmc] );
    if LENGTH( ZPKEY ) = N then
    begin
      Node := TREEVIEWzp.items.Add( Node, ZPkey + '_' + zptext )
    end
    else
      if LENGTH( ZPKEY ) > N then
      begin
        Node := TREEVIEWzp.items.AddChild( Node, ZPkey + '_' + zptext );
      end
      else
      begin
        parent_n := Treeleavelleng( length( zpkey ) );
        node := TreeFindItem( treeviewzp, copy( zpkey, 1, parent_n ), parent_n );
        if parent_n <> 0 then
        begin
          node := TREEVIEWzp.ITEMS.ADDchild( node, ZPkey + '_' + zptext );
        end
        else
        begin
          Node := TREEVIEWzp.items.Add( Node, ZPkey + '_' + zptext )
        end;
      end;
    N := LENGTH( ZPKEY );
    querytree.Next;
    if node <> nil then node.ImageIndex := 1;
  end;
  querytree.First;
  qry_yzxmsfxm.Open;
  addjyybitem;
  cxPageControl1.ActivePage := cxTabSheet1;
  cxPageControl2.ActivePage := cxTabSheet3;
  if pub_yydm='0003' then
  begin
    ComboBox3.Items.Clear;
    ComboBox3.Items.Add('     ');
    DM_data.qry_pub.Close;
    DM_data.qry_pub.sql.text:='select * from sys_jcsb order by dm';
    DM_data.qry_pub.Open;
    DM_data.qry_pub.First;
    while not DM_data.qry_pub.eof do
    begin
      ComboBox3.Items.Add(DM_data.qry_pub.FieldByName('dm').asstring+'_'+DM_data.qry_pub.FieldByName('sbmc').asstring);
      DM_data.qry_pub.Next;
    end;
  end;
  
end;

procedure Tfrm_yzsfxm.gvYzxmEditKeyDown( Sender: TcxCustomGridTableView;
  AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit; var Key: Word;
  Shift: TShiftState );
begin
  if Key = 13 then
  begin
    //ShowMessage(IntToStr(gvYzxm.get));
    gvYzxm.DataController.UpdateData;
    if gvYzxm.Columns[2].Focused then
    begin
      sp_fyxm.close;
      sp_fyxm.Parameters.ParamByName( '@pym' ).value := cxGridDBColumn4.FocusedCellViewInfo.Value + '%';

      SP_fyxm.Filter := 'sfbz' + '>' + '0';
      SP_fyxm.Filtered := True;
      sp_fyxm.open;
      if SP_fyxm.RecordCount = 1 then
      begin
        qry_yzxmsfxm.Edit;
        qry_yzxmsfxm['fydm'] := trim( sp_fyxm.FieldByName( 'fydm' ).AsString );
        qry_yzxmsfxm.Post;
      end
      else
        if SP_fyxm.RecordCount > 1 then
        begin
          begin
            DBGrid4.Enabled := true;
            DBGrid4.Visible := True;
            DBGrid4.SetFocus;
          end;
        end
        else
        begin
          SP_fyxm.close;
          application.MessageBox( '没有满足条件的费用项目！', '提示', 16 );
          dbgrid4.Enabled := false;
        end;
    end;

  end;
end;

procedure Tfrm_yzsfxm.treeviewzpChange( Sender: TObject; Node: TTreeNode );
begin
  if treeviewzp.selected <> nil then
  begin
    if treeviewzp.selected.text <> '' then
    begin
      pub_key := trim( treeviewzp.selected.text );
      pub_key := copy( pub_key, 1, pos( '_', pub_key ) - 1 );
      dldm := pub_key;
      pub_key := copy( pub_key, 1, 2 );
      querytree.Locate( zplbdm, pub_key, [] );
      qry_fydm.close;
      qry_fydm.Parameters.ParamByName( 'vdldm' ).value := dldm + '%';
      qry_fydm.open;
      b_edit.Enabled := ( not qry_fydm.IsEmpty );
    end
    else
    begin
      pub_key := '';
    end;
    if node.HasChildren = false then
    begin
      b_add.Enabled := true;
      b_edit.Enabled := true;
    end
    else
    begin
      b_add.Enabled := false;
      b_edit.Enabled := false;
    end;
    //b_delete.Enabled := ( not pub_qybz ) and ( not qry_fydm.IsEmpty );
  end;
end;

procedure Tfrm_yzsfxm.btModifyClick( Sender: TObject );
begin
  if btModify.Caption = '修改[&E]' then
  begin
    qry_czwz.Edit;
    gcList.SetFocus;
    btAdd.Caption := '保存[&S]';
    btModify.Caption := '放弃[&C]';
    gvList.OptionsData.Editing := true;
  end
  else
  begin
    qry_czwz.Cancel;
    btAdd.Caption := '增加[&A]';
    btModify.Caption := '修改[&E]';
    gvList.OptionsData.Editing := false;
  end;
end;

procedure Tfrm_yzsfxm.btMoveClick( Sender: TObject );
begin
  if not gcczwz.Focused then
  begin
    if qry_xmczwz.RecordCount > 0 then
    begin
      if application.MessageBox( '真的要移除该医嘱项目处置位置吗？', '信息提示', 4 + 32 ) = 6 then
      begin

        qry_xmczwz.DeleteRecords( arCurrent );
        qry_czwz.Requery( );

      end;
    end;
  end
  else
  begin
    application.MessageBox( '请先选择要移除的项目！', '提示', 16 );
    gclist.SetFocus;
  end;
end;

procedure Tfrm_yzsfxm.btSleClick( Sender: TObject );
begin
  if not gcList.Focused then
  begin

    if ( qry_fydm.RecordCount > 0 ) and ( qry_czwz.RecordCount > 0 ) then
    begin
      qry_xmczwz.Open;
      qry_xmczwz.Append;
      qry_xmczwz['xmdm'] := qry_fydm.FieldByName( 'xmdm' ).AsString;
      qry_xmczwz['czid'] := qry_czwz.FieldValues['id'];
      qry_xmczwz['wzmc'] := qry_czwz.FieldByName( 'wzmc' ).AsString;
      qry_xmczwz['gzqz'] := 100;
      qry_xmczwz['dqcs'] := 0;
      qry_xmczwz['lscs'] := 0;
      qry_xmczwz.Post;

      qry_czwz.Requery( );
    end;
  end
  else
  begin
    application.MessageBox( '请先选择要添加的项目！', '提示', 16 );
    gclist.SetFocus;
  end;

end;

procedure Tfrm_yzsfxm.btAddClick( Sender: TObject );
begin

  if btAdd.Caption = '增加[&A]' then
  begin
    qry_czwz.Append;
    qry_czwz['wzmc'] := '';
    btAdd.Caption := '保存[&S]';
    btModify.Caption := '放弃[&C]';
    gvList.OptionsData.Editing := true;
    gcList.SetFocus;

  end
  else
  begin
    qry_czwz.Post;
    dm_data.ado_mydata.BeginTrans;
    try
      qry_czwz.UpdateBatch;
      dm_data.ado_mydata.CommitTrans;
    except
      dm_data.ado_mydata.RollbackTrans;
      application.MessageBox( '保存失败', '提示', 0 + 16 );
    end;
    btAdd.Caption := '增加[&A]';
    btModify.Caption := '修改[&E]';
    gvList.OptionsData.Editing := false;
  end;

end;

procedure Tfrm_yzsfxm.btChangeClick( Sender: TObject );
begin
  if btChange.Caption = '更改权重[&Q]' then
  begin
    gvczwz.OptionsData.Editing := true;
    btChange.Caption := '保存权重[&P]';
    gcczwz.SetFocus;
  end
  else
  begin
    if qry_xmczwz.Modified then
    begin
      qry_xmczwz.Post;
      btChange.Caption := '更改权重[&Q]';
      gvczwz.OptionsData.Editing := false;
    end;
  end;
end;

procedure Tfrm_yzsfxm.btDelClick( Sender: TObject );
begin
  if application.MessageBox( '该操作将删除相关对应，真的要删除该处置位置吗？', '信息提示', 4 + 32 ) = 6 then
  begin
    qry_czwz.Delete;
  end;
end;

procedure Tfrm_yzsfxm.btExitClick( Sender: TObject );
begin
  //close;
end;

procedure Tfrm_yzsfxm.btJyybClick( Sender: TObject );
begin
  application.CreateForm( Tfrm_jyyb, frm_jyyb );
  try
    frm_jyyb.ShowModal;
  finally
    frm_jyyb.free;
  end;
  addjyybitem
end;

procedure Tfrm_yzsfxm.addjyybitem;
var
  tstrs: TStrings;
  str: string;
begin
  tstrs := TStringList.Create;
  with qry_pub do
  begin
    Close;
    SQL.Clear;
    sql.Text := 'SELECT * FROM sys_jyyb order by ybmc';
    open;
  end;
  if qry_pub.RecordCount > 0 then
  begin
    qry_pub.First;
    while not qry_pub.Eof do
    begin
      if length( str ) > 0 then
        str := str + ',' + qry_pub['ybmc']
      else
        str := qry_pub['ybmc'];
      qry_pub.Next;
    end;
  end;
  tstrs.CommaText := str;
  geyzxm.Columns[4].PickList := tstrs;
end;

procedure Tfrm_yzsfxm.b_addClick( Sender: TObject );
var
  v_fydm, hotkey, fymc: string;
  szm:string;
  hsw:string;
begin
  if b_add.Caption = '增加[&A]' then
  begin
    if treeviewzp.selected <> nil then
    begin
      //申请费用代码
      with qry_pub do
      begin
        close;
        sql.Clear;
        sql.Text := 'select ' +' max(xmdm) maxdm '+ '  from sys_yzxm ';
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
      qry_fydm.Append;
      qry_fydm['xmdm'] := v_fydm;
      qry_fydm['dldm'] := dldm;
      qry_fydm['dw'] := '人次';
      qry_fydm['qybz'] := false;
      qry_fydm['zksx'] := Trim(ComboBox1.text);
      qry_fydm['sgys']:=Trim(ComboBox2.Text);
      dbedit2.SetFocus;
      //b_add.Enabled := false;
      //b_edit.Enabled := false;
      b_add.Caption := '保存[&S]';
      b_edit.Caption := '放弃[&C]';
      treeviewzp.Enabled := false;
      geyzxm.Enabled := false;

    end
    else
    begin
      application.MessageBox( '请选择类别树', '提示', 0 + 48 );
    end;
  end
  else
  begin
    hotkey := trim( dbedit13.text );
    fymc := trim( dbedit2.text );
    with qry_pub do
    begin
      close;
      sql.Clear;
      sql.Text := 'select * from sys_yzxm where hotkey=' + '''' + hotkey + '''';
      open;
    end;
    if ( qry_pub.RecordCount >= 1 ) and ( hotkey <> '' ) then
    begin
      application.MessageBox( '该热已定义!请修改!', '提示', 0 + 16 );
      dbedit13.SelectAll;
      dbedit13.SetFocus;
      abort;
    end;
    with qry_pub do
    begin
      close;
      sql.Clear;
      sql.Text := 'select * from sys_yzxm where xmmc=' + '''' + fymc + '''';
      open;
    end;
    if ( qry_pub.RecordCount > 0 ) and ( qry_fydm.State = dsinsert ) then
    begin
      application.MessageBox( '该医嘱名称已使用、请修改！', '提示', 0 + 16 );
      dbedit2.SelectAll;
      dbedit2.SetFocus;
      abort;
    end;
    if ( qry_pub.RecordCount > 1 ) and ( qry_fydm.State = dsedit ) then
    begin
      application.MessageBox( '该医嘱名称已使用、请修改！', '提示', 0 + 16 );
      dbedit2.SelectAll;
      dbedit2.SetFocus;
      abort;
    end;
    if ( qry_fydm.State = dsedit ) or ( qry_fydm.State = dsinsert ) then
    begin
      if trim( qry_fydm.FieldByName( 'xmmc' ).asstring ) = '' then
      begin
        application.MessageBox( '医嘱名称不能为空！', '提示', 0 + 16 );
        dbedit2.SetFocus;
        abort;
      end;
    end;
    sp_cxfylb.Active := false;
    sp_cxfylb.Parameters.ParamByName( '@dldm' ).value := trim( dbedit10.Text );
    sp_cxfylb.Parameters.ParamByName( '@sc_zt' ).value := '0';
    sp_cxfylb.ExecProc;
    if sp_cxfylb.Parameters.ParamByName( '@sc_zt' ).value = '1' then
    begin
      application.MessageBox( '无此医嘱大类代码！', '提示', 0 + 16 );
      dbedit10.SetFocus;
      dbedit10.SelectAll;
      abort;
    end;
    with qry_pub do
    begin
      close;
      sql.Clear;
      sql.Text := 'select max(xmdm) maxdm from sys_yzxm ';
      open;
    end;

    if qry_fydm.FieldByName( 'fydm' ).AsString = '' then
      qry_fydm.FieldByName( 'fydm' ).AsString := '';
    qry_fydm['mzks'] := ksdm;
    qry_fydm['zyks'] := zyksdm;
    if trim( qry_fydm.FieldByName( 'hotkey' ).AsString ) = '' then
      qry_fydm['hotkey'] := '';
    qry_fydm['zksx'] := Trim(ComboBox1.text);
    qry_fydm['sgys'] := Trim(ComboBox2.text);
    if pub_yydm='0003' then
    begin
      //qry_fydm['sgys'] := Trim(ComboBox2.text);
      if Pos('_',ComboBox3.Text)>0 then
      begin
        qry_fydm['sblx'] :=Copy(ComboBox3.Text,1,4);
      end
      else
      begin
         qry_fydm['sblx']:='';
      end;
    end;

    qry_fydm.Post;
    dm_data.ado_mydata.BeginTrans;
    try
      qry_fydm.UpdateBatch;
      dm_data.ado_mydata.CommitTrans;
    except
      dm_data.ado_mydata.RollbackTrans;
      application.MessageBox( '保存失败', '提示', 0 + 16 );
    end;
    b_add.Caption := '增加[&A]';
    b_edit.Caption := '修改[&E]';
    treeviewzp.Enabled := true;
    geyzxm.Enabled := true;
    Getfydm := '';
  end;
end;

procedure Tfrm_yzsfxm.b_InputClick( Sender: TObject );
begin
  if treeviewzp.Selected.HasChildren = false then
  begin
    application.CreateForm( Tfrm_yzxmsfxm, frm_yzxmsfxm );
    try
      frm_yzxmsfxm.ShowModal;
    finally
      frm_yzxmsfxm.free;
    end;
  end
  else
  begin
    application.MessageBox( '所选大类不能导入明细项目!', '注意', 16 );
  end;
end;

procedure Tfrm_yzsfxm.b_editClick( Sender: TObject );
begin
  if b_edit.Caption = '修改[&E]' then
  begin
    Getfydm := '';
    if treeviewzp.selected <> nil then
    begin
      Getfydm := trim( qry_fydm.FieldByName( 'xmdm' ).AsString );
      qry_fydm.edit;
      dbedit2.SetFocus;
      b_add.Caption := '保存[&S]';
      b_edit.Caption := '放弃[&C]';
      treeviewzp.Enabled := false;
      geyzxm.Enabled := false;
      b_save.Enabled := true;

    end;
  end
  else
  begin
    if treeviewzp.selected <> nil then
    begin
      qry_fydm.Cancel;
      b_add.Caption := '增加[&A]';
      b_edit.Caption := '修改[&E]';
      treeviewzp.Enabled := true;
      geyzxm.Enabled := true;
      b_save.Enabled := false;
    end;
  end;
end;

procedure Tfrm_yzsfxm.DBEdit2Exit( Sender: TObject );
begin
  if TRIM( DBEDIT3.TEXT ) = '' then
    qry_fydm['pym'] := string( GetPym( dbedit2.text ) );
  dbedit3.SelectAll;
end;

procedure Tfrm_yzsfxm.editmzksKeyPress( Sender: TObject; var Key: Char );
begin
  if key = #13 then
  begin
    qry_pub.close;
    qry_pub.SQL.Clear;
    qry_pub.SQL.text := 'select dm,mc,pym from sys_ksdm where pym like ' +
      '''' + '%' + trim( editmzks.Text ) + '%' + '''' +
      ' or dm like ' + '''' + '%' + trim( editmzks.Text ) + '%' + '''' +
      ' or mc like ' + '''' + '%' + trim( editmzks.Text ) + '%' + '''';
    qry_pub.Open;
    if qry_pub.RecordCount = 0 then
    begin
      application.MessageBox( '没有满足条件的科室!', '注意', 16 );
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

procedure Tfrm_yzsfxm.DBGrid1KeyPress( Sender: TObject; var Key: Char );
begin
  if ( key = #13 ) and ( dbgrid1.tag = 1 ) then
  begin
    editmzks.Text := qry_pub['mc'];
    ksdm := qry_pub['dm'];
    dbgrid1.Visible := false;
    editzyks.SetFocus;
  end;
  if ( key = #13 ) and ( dbgrid1.tag = 2 ) then
  begin
    editzyks.Text := qry_pub['mc'];
    zyksdm := qry_pub['dm'];
    dbgrid1.Visible := false;
    Edit1.SetFocus;
  end;
  if ( key = #27 ) and ( dbgrid1.tag = 1 ) then
  begin
    editmzks.Clear;
    ksdm := '';
    dbgrid1.Visible := false;
    editmzks.SetFocus;
  end;
  if ( key = #27 ) and ( dbgrid1.tag = 2 ) then
  begin
    editzyks.Clear;
    zyksdm := '';
    dbgrid1.Visible := false;
    editzyks.SetFocus;
  end;
end;

procedure Tfrm_yzsfxm.geYzxmKeyPress( Sender: TObject; var Key: Char );
begin
  if key = char( 13 ) then
  begin
    if qry_fydm.Modified then
      qry_fydm.UpdateBatch( arall );
  end;
end;

procedure Tfrm_yzsfxm.DBGrid1Exit( Sender: TObject );
begin
  dbgrid1.Visible := false;
end;

procedure Tfrm_yzsfxm.FormKeyPress( Sender: TObject; var Key: Char );
begin
  if key = #13 then
    selectnext( activecontrol as Twincontrol, true, true );
end;

procedure Tfrm_yzsfxm.b_deleteClick( Sender: TObject );
var
  v_fydm: string;
begin
//  sp_fysycx.Active := false;
//  sp_fysycx.Parameters.ParamByName( '@fydm' ).value := qry_fydm['xmdm'];
//  sp_fysycx.Parameters.ParamByName( '@fysybz' ).value := false;
//  sp_fysycx.ExecProc;
//  if not sp_fysycx.Parameters.ParamByName( '@fysybz' ).value then
//  begin
    if not qry_fydm.IsEmpty then
    begin
      v_fydm := trim( qry_fydm.fieldbyname( 'xmdm' ).asstring );
      if application.MessageBox( '真的要删除该医嘱项目吗？', '信息提示', 4 + 32 ) = 6 then
        with qry_pub do
        begin
          close;
          sql.Clear;
          sql.Text := 'delete sys_yzxm where xmdm=' + #39 + v_fydm + #39;
          dm_data.ado_mydata.BeginTrans;
          try
            execsql;
            dm_data.ado_mydata.CommitTrans;
            qry_fydm.Close;
            qry_fydm.Parameters.ParamByName( 'vdldm' ).value := dldm;
            qry_fydm.Open;
          except
            dm_data.ado_mydata.RollbackTrans;
            application.MessageBox( '删除失败', '提示', 0 + 48 );
          end;
        end;
    end;
//  end
//  else
//    application.MessageBox( '该医嘱项目已使用过不能删除。', '提示', 0 + 48 );
end;

procedure Tfrm_yzsfxm.chUseMarkClick( Sender: TObject );
begin
  if chUseMark.Focused then
    if not chUseMark.Checked then
    begin
      sp_fysycx.Active := false;
      sp_fysycx.Parameters.ParamByName( '@fydm' ).value := qry_fydm['xmdm'];
      sp_fysycx.Parameters.ParamByName( '@fysybz' ).value := false;
      sp_fysycx.ExecProc;
      if sp_fysycx.Parameters.ParamByName( '@fysybz' ).value then
      begin
        application.MessageBox( '该医嘱项目已使用过不能停用。', '提示', 0 + 48 );
        chUseMark.Checked := true;
      end;
    end;
end;

procedure Tfrm_yzsfxm.qry_fydmAfterScroll( DataSet: TDataSet );
begin
  try
    qry_pub.close;
    qry_pub.SQL.clear;
    qry_pub.SQL.Text := 'select * from sys_ksdm where dm=' +
      '''' + qry_fydm.fieldbyname( 'mzks' ).asstring + '''';
    qry_pub.open;
    ksdm := qry_pub.fieldbyname( 'dm' ).asstring;
    editmzks.text := qry_pub.fieldbyname( 'mc' ).asstring;

    qry_pub.close;
    qry_pub.SQL.clear;
    qry_pub.SQL.Text := 'select * from sys_ksdm where dm=' +
      '''' + qry_fydm.fieldbyname( 'zyks' ).asstring + '''';
    qry_pub.open;
    zyksdm := qry_pub.fieldbyname( 'dm' ).asstring;
    editzyks.text := qry_pub.fieldbyname( 'mc' ).asstring;
  except
    application.MessageBox( '无效对应科室', '提示', 0 + 48 );
  end;
  qry_pub.close;
  qry_pub.SQL.clear;
  qry_pub.SQL.Text := 'select * from sys_kjsfxm where fydm=' +
    '''' + qry_fydm.fieldbyname( 'fydm' ).asstring + '''';
  qry_pub.open;
  ComboBox1.Text:=trim(qry_fydm.FieldByName('zksx').AsString);
  edit1.Text := trim( qry_pub.fieldbyname( 'fydm' ).asstring );
  edit2.Text := trim( qry_pub.fieldbyname( 'fymc' ).asstring );
  qry_czwz.Close;
  qry_czwz.Parameters.ParamByName( 'yzdm' ).Value := qry_fydm.FieldValues['xmdm'];
  qry_czwz.Open;
  qry_xmczwz.Close;
  qry_xmczwz.Parameters.ParamByName( 'yzdm' ).Value := qry_fydm.FieldValues['xmdm'];
  qry_xmczwz.Open;
  if Trim(qry_fydm.FieldByName('sgys').asstring)='红' then
    ComboBox2.ItemIndex:=0
  else if Trim(qry_fydm.FieldByName('sgys').asstring)='蓝' then
  begin
    ComboBox2.ItemIndex:=1;
  end
  else if Trim(qry_fydm.FieldByName('sgys').asstring)='紫' then
  begin
    ComboBox2.ItemIndex:=2;
  end
  else if Trim(qry_fydm.FieldByName('sgys').asstring)='黑' then
  begin
    ComboBox2.ItemIndex:=3;
  end
  else if Trim(qry_fydm.FieldByName('sgys').asstring)='绿' then
  begin
    ComboBox2.ItemIndex:=4;
  end
  else if Trim(qry_fydm.FieldByName('sgys').asstring)='黄' then
  begin
    ComboBox2.ItemIndex:=5;
  end
  else if Trim(qry_fydm.FieldByName('sgys').asstring)='橘黄' then
  begin
    ComboBox2.ItemIndex:=6;
  end
  else if Trim(qry_fydm.FieldByName('sgys').asstring)='普通' then
  begin
    ComboBox2.ItemIndex:=7;
  end
  else
    ComboBox2.ItemIndex:=-1;
  if pub_yydm='0003' then
  begin
    DM_data.qry_pub.close;
    DM_data.qry_pub.sql.text:='select b.* from sys_yzxm a,sys_jcsb b where a.xmdm='+''''+qry_fydm.FieldValues['xmdm']
    +''''+' and a.sblx=b.dm';
    DM_data.qry_pub.Open;
    if DM_data.qry_pub.IsEmpty then
    begin
      ComboBox3.Text:='';
    end
    else
    begin
      ComboBox3.Text:=DM_data.qry_pub.FieldByName('dm').asstring+'_'+DM_data.qry_pub.FieldByName('sbmc').asstring ;
    end;
  end;
  
    

end;

procedure Tfrm_yzsfxm.editzyksKeyPress( Sender: TObject; var Key: Char );
begin
  if key = #13 then
  begin
    qry_pub.close;
    qry_pub.SQL.Clear;
    qry_pub.SQL.text := 'select dm,mc,pym from sys_ksdm where pym like ' +
      '''' + '%' + trim( editzyks.Text ) + '%' + '''' +
      ' or dm like ' + '''' + '%' + trim( editzyks.Text ) + '%' + '''' +
      ' or mc like ' + '''' + '%' + trim( editzyks.Text ) + '%' + '''';
    qry_pub.Open;
    if qry_pub.RecordCount = 0 then
    begin
      application.MessageBox( '没有满足条件的科室!', '注意', 16 );
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

procedure Tfrm_yzsfxm.b_cxClick( Sender: TObject );
var
  txt: string;
  i: integer;
begin
  application.CreateForm( TFrm_cxyz_xm, Frm_cxyz_xm );
  try
    Frm_cxyz_xm.ShowModal;
  finally
    Frm_cxyz_xm.free;
  end;
  if cx_fydm = '' then
    abort
  else
  begin
    for i := 0 to treeviewzp.Items.Count - 1 do
      if treeviewzp.Items[i].Level > -1 then
      begin
        txt := copy( treeviewzp.Items[i].text, 1, pos( begin_char, treeviewzp.Items[i].text ) - 1 );
        if txt = cx_dldm then
        begin
          treeviewzp.Items[i].Selected := true;
          //showmessage(cx_fydm);
          qry_fydm.Locate( 'xmdm', cx_fydm, [] );
          geyzxm.SetFocus;
          exit;
        end;
      end;
  end;
end;

procedure Tfrm_yzsfxm.editmzksChange( Sender: TObject );
begin
  if trim( editmzks.text ) = '' then ksdm := '';
end;

procedure Tfrm_yzsfxm.editzyksChange( Sender: TObject );
begin
  if trim( editzyks.text ) = '' then zyksdm := '';
end;

procedure Tfrm_yzsfxm.b_printClick( Sender: TObject );
begin

  qry_fydm.filtered := false;
  qry_fydm.filter := 'xmmc<>' + char( 39 ) + char( 39 );
  qry_fydm.filtered := chUseMark.Checked;
  printdbgrideh1.title.Text := '打印日期:' + formatdatetime( 'yyyy-mm-dd', now );
  printdbgrideh1.PageHeader.centerText.Text := pub_yymc + ':医嘱项目' + char( 13 ) + trim( treeviewzp.selected.text );
  PrintDBGridEh1.Preview;
  qry_fydm.filter := '';
  qry_fydm.filtered := false;

end;

procedure Tfrm_yzsfxm.b_saveClick( Sender: TObject );
begin
  Get_frm_tree( 'sys_yzdl', 'dm', 'mc', '22222' );
end;

procedure Tfrm_yzsfxm.Edit1KeyPress( Sender: TObject; var Key: Char );
begin
  if Key = #13 then
  begin
    sp_fyxm.close;
    sp_fyxm.Parameters.ParamByName( '@pym' ).value := trim( edit1.text ) + '%';
    edit1.TEXT := '';
    sp_fyxm.open;
    if SP_fyxm.RecordCount = 1 then
    begin
      qry_fydm.Edit;
      qry_fydm['fydm'] := trim( sp_fyxm.FieldByName( 'fydm' ).AsString );
      Edit1.Text := trim( sp_fyxm.FieldByName( 'fydm' ).AsString );
      Edit2.Text := trim( sp_fyxm.FieldByName( 'fymc' ).AsString );
      chUseMark.SetFocus;
    end
    else
      if SP_fyxm.RecordCount > 1 then
      begin
        DBGrid3.Enabled := true;
        DBGrid3.Visible := True;
        DBGrid3.SetFocus;
      end
      else
      begin
        SP_fyxm.close;
        application.MessageBox( '没有满足条件的费用项目！', '提示', 16 );
        dbgrid3.Enabled := false;
        edit1.SetFocus;
      end;
  end;
end;

procedure Tfrm_yzsfxm.DBGrid3DblClick( Sender: TObject );
begin
  qry_fydm['fydm'] := trim( sp_fyxm.FieldByName( 'fydm' ).AsString );
  Edit1.Text := trim( sp_fyxm.FieldByName( 'fydm' ).AsString );
  Edit2.Text := trim( sp_fyxm.FieldByName( 'fymc' ).AsString );
  chUseMark.SetFocus;
end;

procedure Tfrm_yzsfxm.DBGrid3KeyPress( Sender: TObject; var Key: Char );
begin
  if Key = #13 then
    DBGrid3DblClick( self );
end;

procedure Tfrm_yzsfxm.DBGrid4DblClick( Sender: TObject );
begin
  qry_yzxmsfxm.Edit;
  qry_yzxmsfxm['fydm'] := trim( sp_fyxm.FieldByName( 'fydm' ).AsString );
  qry_yzxmsfxm.Post;
  gcYzxm.SetFocus;
end;

procedure Tfrm_yzsfxm.DBGrid4Exit( Sender: TObject );
begin
  DBGrid4.Visible := False;
  gcYzxm.SetFocus;
end;

procedure Tfrm_yzsfxm.DBGrid4KeyDown( Sender: TObject; var Key: Word;
  Shift: TShiftState );
begin
  if Key = 27 then
  begin
    DBGrid4.Visible := False;
    gcYzxm.SetFocus;
  end;

end;

procedure Tfrm_yzsfxm.DBGrid4KeyPress( Sender: TObject; var Key: Char );
begin
  if Key = #13 then
    DBGrid4DblClick( self );
end;

procedure Tfrm_yzsfxm.DBGrid5DblClick( Sender: TObject );
begin
  qry_czwz.Edit;
  qry_czwz['ksdm'] := qry_pub['dm'];
  qry_czwz.Post;
  gcList.SetFocus;
end;

procedure Tfrm_yzsfxm.DBGrid5KeyPress( Sender: TObject; var Key: Char );
begin
  if key = #13 then
  begin
    DBGrid5DblClick( self );
  end;
end;

procedure Tfrm_yzsfxm.DBGrid3Exit( Sender: TObject );
begin
  DBGrid3.Visible := False;
end;

procedure Tfrm_yzsfxm.DBEdit6KeyPress( Sender: TObject; var Key: Char );
begin
  if Key = #13 then
    b_save.SetFocus;
end;

end.

