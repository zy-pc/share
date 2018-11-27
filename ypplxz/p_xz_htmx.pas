unit p_xz_htmx;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, ComCtrls, Db, DBTables, ImgList, Grids,
  DBGrids, ADODB, DBGridEh, GridsEh, SXSearchBox;

type
  TFrm_xz_htmx = class( TForm )
    Panel2: TPanel;
    Panel3: TPanel;
    Splitter1: TSplitter;
    ImageList1: TImageList;
    Tree1: TTreeView;
    Panel4: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    DS_ypdm: TDataSource;
    b_edit: TBitBtn;
    b_close: TBitBtn;
    Label4: TLabel;
    b_cx: TBitBtn;
    qry_ypdm: TADOStoredProc;
    Query1: TADOQuery;
    Qry_in: TADOQuery;
    DBGrid1: TDBGridEh;
    bt_xc: TBitBtn;
    chk1: TCheckBox;
    btn1: TButton;
    sxsrchbx1: TSXSearchBox;
    procedure b_closeClick( Sender: TObject );
    procedure Tree1Change( Sender: TObject; Node: TTreeNode );
    procedure b_cancelClick( Sender: TObject );
    procedure DBGrid1DblClick( Sender: TObject );
    procedure FormShow( Sender: TObject );
    procedure b_cxClick( Sender: TObject );
    procedure bt_xcClick( Sender: TObject );
    procedure b_editClick( Sender: TObject );
    procedure htmx_ypdm_zr;
    procedure kss_ypdm_zr;
    procedure DBGrid1DrawColumnCell( Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState );
    procedure btn1Click( Sender: TObject );
    procedure chk1Click( Sender: TObject );
  private
    { Private declarations }
    len: array of integer; //记录每级的长度
    len_level: array[0..50] of integer; //记录某一长度所位于的级数
    level_fmt: string; //记录分级格式(如2-2-2-2-2)
    level_cnt: integer; //记录总级数
    sele_node: Ttreenode; //记录当前选中的结点
    edit_mode: integer; //记录当前所处模式，=0 无,=1 加项 =2 加子项 =3 修改
    begin_char, end_char: string; //编码与名称之间的分隔符
    len_char: integer; //记录begin_char的长度
    field_bm, field_mc: string; //记录要使用的编码表中的字段
    tb_name, lbxz: string; //记录要使用的编码表表名
    prv_gltj: string;
    procedure pro_check;
  public
    { Public declarations }
    bm: string;
    ypdm: string;
    zbdh: string; //招标单号
    yxdkssdm: string; //以前选定的抗生素代码
    zcdm: string;
  end;

var
  Frm_xz_htmx: TFrm_xz_htmx;

implementation
uses p_dm, p_func, p_login, p_cxyp_yk;
{$R *.DFM}

procedure Tfrm_xz_htmx.kss_ypdm_zr;
var
  kssypdm: widestring;
begin
  qry_ypdm.DisableControls;
  qry_ypdm.First;
  kssypdm := '';
  while not qry_ypdm.Eof do
  begin
    if qry_ypdm['sfzfyp'] then
      kssypdm := kssypdm + ',' + qry_ypdm.FieldByName( 'ypdm' ).AsString;
    qry_ypdm.Next;
  end;
  //方钦更改2011-11-1为了修改西充药品选取问题
 { with dm_data.Qry_pub do
  begin
    close;
    sql.Clear;
    sql.Text := 'update sys_zcdm set kssypdm=' + #39 + kssypdm + #39+ 'where dm= '+#39+zcdm+#39;
    execsql;
  end;  }
  yxdkssdm := kssypdm;
  //------------
  qry_ypdm.EnableControls;
  application.MessageBox( '转入成功', '提示', 0 + 48 );
end;

procedure Tfrm_xz_htmx.htmx_ypdm_zr;
begin
  qry_ypdm.DisableControls;
  qry_ypdm.First;
  while not qry_ypdm.Eof do
  begin
    if qry_ypdm['sfzfyp'] then
    begin
      qry_in.Close;
      qry_in.SQL.Clear;
      qry_in.SQL.Text := 'insert into xyk_ypzbmx(zbdh,ypdm,ypmc,ypgg,ypdw,ypsl,cgj,lsj ) values( ' +
        #39 + zbdh + #39 + ',' + #39 + qry_ypdm['ypdm'] + #39 + ',' +
        #39 + qry_ypdm['ypmc'] + #39 + ',' + #39 + qry_ypdm.fieldbyname( 'ypgg' ).asstring + #39 + ',' +
        #39 + qry_ypdm.fieldbyname( 'kfdw' ).asstring + #39 + ',' + #39 + '0' + #39 + ',' +
        trim( floattostr( qry_ypdm.fieldbyname( 'kfcgj' ).asfloat ) ) + ',' +
        trim( floattostr( qry_ypdm.fieldbyname( 'kflsj' ).asfloat ) ) + ')';
      with dm_data.Qry_pub do
      begin
        close;
        sql.Clear;
        sql.Text := 'select * from xyk_ypzbmx where zbdh=' + #39 + zbdh + #39 + ' and ypdm=' +
          #39 + qry_ypdm['ypdm'] + #39;
        open;
      end;
      if dm_data.Qry_pub.RecordCount = 0 then
        qry_in.ExecSQL;
    end;
    qry_ypdm.Next;
  end;
  qry_ypdm.EnableControls;
  application.MessageBox( '转入成功', '提示', 0 + 48 );
end;

procedure TFrm_xz_htmx.b_closeClick( Sender: TObject );
begin
  close;
end;

procedure TFrm_xz_htmx.Tree1Change( Sender: TObject; Node: TTreeNode );
var
  lbkey: string;
begin
  sele_node := node;
  application.ProcessMessages;
  if node.Level = 0 then
  begin
    edit1.Clear;
    edit2.Clear;
    //b_edit.Enabled := false;
  end
  else
  begin
    lbkey := trim( tree1.selected.text );
    lbkey := copy( lbkey, 1, pos( '_', lbkey ) - 1 );
    edit1.text := lbkey;
    edit2.text := copy( node.text, pos( begin_char, node.text ) + len_char, length( node.text ) );
    qry_ypdm.Filtered := false;
    qry_ypdm.Filter := 'yplb like ' + #39 + edit1.text + '%' + #39 + prv_gltj;
    qry_ypdm.Filtered := true;
    qry_ypdm.First;
    if node.HasChildren = false then
      b_edit.Enabled := true
    else
      b_edit.Enabled := false;
    if qry_ypdm.RecordCount = 0 then
      b_edit.Enabled := false
    else
      b_edit.Enabled := true
  end;
  pro_check;
end;

procedure TFrm_xz_htmx.b_cancelClick( Sender: TObject );
begin
  panel4.Enabled := false;
  panel3.Enabled := true;
  tree1.OnChange( tree1, tree1.selected );
  tree1.SetFocus;
end;

procedure TFrm_xz_htmx.DBGrid1DblClick( Sender: TObject );
begin
  if b_edit.Enabled then
    b_edit.OnClick( b_edit );
end;

procedure TFrm_xz_htmx.DBGrid1DrawColumnCell( Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumnEh; State: TGridDrawState );
begin
  if ( qry_ypdm.Active ) and ( not qry_ypdm.IsEmpty ) then
  begin
    if qry_ypdm['sybz'] = '0' then
    begin
      dbgrid1.Canvas.brush.Color := cllime;
      dbgrid1.Canvas.Font.Color := clblue;
    end;
    dbgrid1.DefaultDrawColumnCell( rect, datacol, column, state );
  end;
end;

procedure TFrm_xz_htmx.FormShow( Sender: TObject );
var
  sqlstr: string;
const
  zp = '22222';
  zpjx = 5;
  zplbdm = 'lbdm';
  zplbmc = 'lbmc';
  zptable = 'sys_ypbmgz';
  zptableorder = 'lbdm';
begin

  //初始化数据
  lbxz := pub_kflb + '%';
  qry_ypdm.close;
  if username = 'sys_xyk' then
    qry_ypdm.Parameters.ParamByName( '@ypdm' ).value := lbxz
  else
    if username = 'sys_zxjf' then
    begin
      qry_ypdm.Parameters.ParamByName( '@ypdm' ).value := '01' + '%';
      if pub_yydm<>'0046' then
      begin
        lbxz := '0101' + '%';
      end
      else
        lbxz :='01'+'%';
    end;
  if username='sys_yjk' then
  begin
    qry_ypdm.Parameters.ParamByName( '@ypdm' ).value := '01' + '%';
    if pub_yydm<>'0046' then
      begin
        lbxz := '0101' + '%';
      end
      else
        lbxz :='01'+'%';
  end;
  qry_ypdm.open;
  qry_ypdm.First;
  qry_ypdm.DisableControls;
  while not qry_ypdm.Eof do
  begin
    qry_ypdm.Edit;
    if pos( qry_ypdm.FieldByName( 'ypdm' ).AsString, yxdkssdm ) > 0 then
      qry_ypdm['sfzfyp'] := 1
    else
      qry_ypdm['sfzfyp'] := 0;
    qry_ypdm.Post;
    qry_ypdm.Next;
  end;
  qry_ypdm.EnableControls;

  sqlstr := 'select ' + zplbdm + ',' + zplbmc + ' from  ' + zptable + ' where lbdm like  ' + #39 + lbxz + #39 +
    ' order by ' + zptableorder;
  ;
  frm_func.Tree_db_create( tree1, zptable, zptableorder, zplbdm, zplbmc, zp, sqlstr );
  
end;

procedure TFrm_xz_htmx.b_cxClick( Sender: TObject );
var
  txt, lbdm, lbdm1: string;
  i: integer;
begin
  application.CreateForm( Tfrm_cxyp_yk, frm_cxyp_yk );
  try
    frm_cxyp_yk.ShowModal;
  finally
    frm_cxyp_yk.free;
  end;
  ypdm := pub_cxypdm;
  if ypdm = '' then
    abort
  else
  begin
    lbdm1 := copy( ypdm, 1, 2 );
    lbdm := lbdm1;
    lbdm1 := copy( ypdm, 3, 2 );
    i := 5;
    while lbdm1 <> '00' do
    begin
      lbdm := lbdm + lbdm1;
      lbdm1 := copy( ypdm, i, 2 );
      i := i + 2;
    end;
    i := 0;
    for i := 0 to tree1.Items.Count - 1 do
      if tree1.Items[i].Level > 0 then
      begin
        txt := copy( tree1.Items[i].text, 1, pos( begin_char, tree1.Items[i].text ) - 1 );
        if txt = lbdm then
        begin
          tree1.Items[i].Selected := true;
          qry_ypdm.close;
          qry_ypdm.Parameters.ParamByName( '@ypdm' ).value := lbdm + '%';
          qry_ypdm.open;
          qry_ypdm.Locate( 'ypdm', ypdm, [] );
          dbgrid1.SetFocus;
          exit;
        end;
      end;
  end;
end;

procedure TFrm_xz_htmx.btn1Click( Sender: TObject );
var _res : string;
begin
  _res := '';
  qry_ypdm.Filter := 'ypdm='+#39+Trim(sxsrchbx1.Value)+#39;
  qry_ypdm.Filtered := true;
//  while not qry_ypdm.Eof do
//  begin
//     if Trim(qry_ypdm.FieldByName('ypdm').AsString) = Trim(sxsrchbx1.Value) then
//     begin
//        _res := '1';
//        Break;
//     end;
//     qry_ypdm.Next;
//  end;
//  if _res='' then
//  begin
//    Application.MessageBox( '没有找到对应药品！', '提示', MB_OK +
//      MB_ICONINFORMATION );
//  end;
end;

procedure TFrm_xz_htmx.bt_xcClick( Sender: TObject );
var
  xcbz: integer;
begin
  qry_ypdm.First;
  if bt_xc.Caption = '全部选中' then
  begin
    xcbz := 1;
    bt_xc.Caption := '全部取消';
  end
  else
    if bt_xc.Caption = '全部取消' then
    begin
      xcbz := 0;
      bt_xc.Caption := '全部选中';
    end;

  qry_ypdm.DisableControls;
  while not qry_ypdm.Eof do
  begin
    qry_ypdm.Edit;
    qry_ypdm['sfzfyp'] := xcbz;
    qry_ypdm.Post;
    qry_ypdm.Next;
  end;
  qry_ypdm.EnableControls;
end;

procedure TFrm_xz_htmx.b_editClick( Sender: TObject );
begin
  qry_ypdm.Filtered := false;
  if username = 'sys_xyk' then
    htmx_ypdm_zr
  else
    if (username = 'sys_zxjf') or (username ='sys_yjk')then
      kss_ypdm_zr;
  close;
end;

procedure TFrm_xz_htmx.chk1Click( Sender: TObject );
begin
  pro_check;
  tree1.OnChange(nil, tree1.Selected);
end;

procedure TFrm_xz_htmx.pro_check;
begin
  if chk1.Checked then
  begin
    prv_gltj := ' and sybz = 1';
  end
  else
  begin
    prv_gltj := '';
  end;
  if tree1.Selected.Level = 0 then
  begin
    qry_ypdm.Filtered := false;
    if chk1.Checked then
    begin
      qry_ypdm.Filter := 'sybz = 1';
      qry_ypdm.Filtered := true;
    end;
  end;
  
end;

initialization
  RegisterClass( TFrm_xz_htmx );
end.

