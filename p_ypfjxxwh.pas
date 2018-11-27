unit p_ypfjxxwh;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, ComCtrls, Db, DBTables, ImgList, Grids,
  DBGrids, ADODB, DBCtrls, Mask;

type
  TFrm_ypfjxxwh = class( TForm )
    Panel2: TPanel;
    Panel3: TPanel;
    Splitter1: TSplitter;
    ImageList1: TImageList;
    Tree1: TTreeView;
    Panel4: TPanel;
    DS_ypdm: TDataSource;
    Query1: TADOQuery;
    Qry_ypdm: TADOQuery;
    sp_cxyplb: TADOStoredProc;
    ds_yplb: TDataSource;
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    Panel6: TPanel;
    b_cx: TBitBtn;
    b_close: TBitBtn;
    GroupBox1: TGroupBox;
    ad_ypfjxx: TADODataSet;
    DataSource1: TDataSource;
    DBCheckBox4: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    DBCheckBox8: TDBCheckBox;
    DBCheckBox9: TDBCheckBox;
    DBCheckBox10: TDBCheckBox;
    DBCheckBox11: TDBCheckBox;
    DBCheckBox12: TDBCheckBox;
    DBCheckBox13: TDBCheckBox;
    DBCheckBox14: TDBCheckBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    dbedt1: TDBEdit;
    lbl1: TLabel;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    procedure b_closeClick( Sender: TObject );
    procedure Tree1Change( Sender: TObject; Node: TTreeNode );
    procedure b_cancelClick( Sender: TObject );
    procedure DBGrid1DrawColumnCell( Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState );
    procedure FormShow( Sender: TObject );
    procedure b_cxClick( Sender: TObject );
    procedure Qry_ypdmAfterScroll( DataSet: TDataSet );
    procedure BitBtn1Click( Sender: TObject );
    procedure BitBtn2Click( Sender: TObject );
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
    tb_name: string; //记录要使用的编码表表名
  public
    { Public declarations }
    bm: string;
    ypdm, lbdm, lbdm1, lbxz: string;
  end;

var
  Frm_ypfjxxwh: TFrm_ypfjxxwh;

implementation
uses p_dm, p_func, p_login, p_cxyp_fjxx;
{$R *.DFM}

procedure TFrm_ypfjxxwh.b_closeClick( Sender: TObject );
begin
  close;
end;

procedure TFrm_ypfjxxwh.Tree1Change( Sender: TObject; Node: TTreeNode );
begin
  sele_node := node;
  qry_ypdm.close;
  application.ProcessMessages;
  if node.Level = 0 then
  else
  begin
    qry_ypdm.Parameters.ParamByName( 'dldm' ).value := copy( node.text, 1, pos( begin_char, node.text ) - 1 ) + '%';
    qry_ypdm.open;
  end;
end;

procedure TFrm_ypfjxxwh.b_cancelClick( Sender: TObject );
begin
  panel4.Enabled := false;
  panel3.Enabled := true;
  tree1.OnChange( tree1, tree1.selected );
  tree1.SetFocus;
end;

procedure TFrm_ypfjxxwh.DBGrid1DrawColumnCell( Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState );
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

procedure TFrm_ypfjxxwh.FormShow( Sender: TObject );
var
  node, node1: Ttreenode;
  txt, s, s1: string;
  i, j, k, sum: integer;

begin
  //初始化数据
  tb_name := 'sys_ypbmgz';
  field_bm := 'lbdm';
  field_mc := 'lbmc';
  begin_char := '_';
  end_char := '';
  len_char := length( begin_char );
  edit_mode := 0;
  sum := 0; //记录总长度
  k := 0;
  {if (pub_kflb=1) or (pub_kflb=2) then
  lbxz:='01%'
  else
  if pub_kflb=3 then
  lbxz:='02%'
  else
  if pub_kflb=4 then
  lbxz:='03%';}
  lbxz := pub_kflb + '%';

  level_fmt := '2-2-2-2-2';

  //初始化数组len_level
  for i := 0 to 50 do
    len_level[i] := 0;

  //求出总级数至 level_cnt 中
  level_cnt := 1;
  for i := 1 to length( level_fmt ) do
  begin
    s := copy( level_fmt, i, 1 );
    if s = '-' then
      level_cnt := level_cnt + 1;
  end;

  setlength( len, level_cnt ); //设置总级数

  //求出各级长度放至数组 len 中
  //同时，将该长度位于的级数放至数组 len_level 中
  s := level_fmt + '-';
  for i := 0 to level_cnt - 1 do
  begin
    k := pos( '-', s );
    s1 := copy( s, 1, k - 1 );
    sum := sum + strtoint( s1 );
    len[i] := sum;
    len_level[sum] := i + 1;
    s := copy( s, k + 1, length( s ) );
  end;

  k := 0;

  query1.close;
  query1.sql.Clear;
  query1.sql.Add( 'select * from ' + tb_name + ' where lbdm like ' + #39 + lbxz + #39 + ' order by ' + field_bm );
  query1.open;

  //添加结点
  query1.open;
  tree1.Items.Clear;
  node := tree1.Items.Add( nil, '药品编码表' );
  node.ImageIndex := 0;
  query1.First;
  while not query1.Eof do
  begin
    k := length( trim( query1[field_bm] ) ); //求出该编码的长度
    if len_level[k] = 1 then //如果为第一级
    begin
      node1 := tree1.Items.AddChild( node, trim( query1[field_bm] ) + begin_char + trim( query1[field_mc] ) + end_char );
      node1.ImageIndex := 1;
      node1.SelectedIndex := 2;
      j := k;
    end
    else //如果不为第一级
    begin
      //查找其上一级结点
      //len_level[k]-1 为上一级级数
      //len[len_level[k]-2] 为上一级编码长度
      //txt 为上一级编码
      if k = j then //同级结点
      begin
        //增加该结点
        node1 := tree1.Items.Add( node1, trim( query1[field_bm] ) + begin_char + trim( query1[field_mc] ) + end_char );
        node1.ImageIndex := 1;
        node1.SelectedIndex := 2;
        j := k;
      end;
      if k > j then //子结点
      begin
        //增加该结点
        node1 := tree1.Items.AddChild( node1, trim( query1[field_bm] ) + begin_char + trim( query1[field_mc] ) + end_char );
        node1.ImageIndex := 1;
        node1.SelectedIndex := 2;
        j := k;
      end;
      if k < j then //父级结点
      begin
        while k <> j do //查找新结点的同级结点
        begin
          node1 := node1.Parent;
          txt := copy( node1.text, 1, pos( begin_char, node1.text ) - 1 );
          j := length( txt );
        end;
        //增加该结点
        node1 := tree1.Items.Add( node1, trim( query1[field_bm] ) + begin_char + trim( query1[field_mc] ) + end_char );
        node1.ImageIndex := 1;
        node1.SelectedIndex := 2;
      end;
    end;
    query1.Next;
  end;
  tree1.Items[0].Selected := true;
  tree1.FullExpand;
  node := tree1.Items[0];
  node := node.getFirstChild;
  while node <> nil do
  begin
    node.Collapse( true );
    node := node.getNextSibling;
  end;
  tree1.SetFocus;

end;

procedure TFrm_ypfjxxwh.b_cxClick( Sender: TObject );
var
  txt: string;
  i: integer;
begin
  application.CreateForm( Tfrm_cxyp_fjxx, frm_cxyp_fjxx );
  try
    frm_cxyp_fjxx.ShowModal;
  finally
    frm_cxyp_fjxx.free;
  end;
  if ypdm = '' then
    abort
  else
  begin
    i := 0;
    for i := 0 to tree1.Items.Count - 1 do
      if tree1.Items[i].Level > 0 then
      begin
        txt := copy( tree1.Items[i].text, 1, pos( begin_char, tree1.Items[i].text ) - 1 );
        if txt = lbdm then
        begin
          tree1.Items[i].Selected := true;
          qry_ypdm.close;
          qry_ypdm.Parameters.ParamByName( 'dldm' ).value := lbdm + '%';
          qry_ypdm.open;
          qry_ypdm.Locate( 'ypdm', ypdm, [] );
          dbgrid1.SetFocus;
          exit;
        end;
      end;
  end;
end;

procedure TFrm_ypfjxxwh.Qry_ypdmAfterScroll( DataSet: TDataSet );
begin
  groupbox1.Caption := '   ' + trim( qry_ypdm.fieldbyname( 'ypmc' ).asstring ) + '-' + trim( qry_ypdm.fieldbyname( 'ypgg' ).asstring ) + '   ';
  ad_ypfjxx.close;
  ad_ypfjxx.Parameters.ParamByName( 'ypdm' ).value := qry_ypdm.fieldbyname( 'ypdm' ).asstring;
  ad_ypfjxx.open;
  groupbox1.Enabled := not ad_ypfjxx.IsEmpty;
  bitbtn1.enabled := not ad_ypfjxx.IsEmpty;
  bitbtn2.enabled := not ad_ypfjxx.IsEmpty;

end;

procedure TFrm_ypfjxxwh.BitBtn1Click( Sender: TObject );
begin
  if ad_ypfjxx.Active then
    GroupBox1.Enabled := true;
end;

procedure TFrm_ypfjxxwh.BitBtn2Click( Sender: TObject );
begin
  if not ad_ypfjxx.IsEmpty then
    ad_ypfjxx.UpdateBatch(arall);
end;
initialization
  RegisterClass( TFrm_ypfjxxwh );
end.
