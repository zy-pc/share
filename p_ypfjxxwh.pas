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
    len: array of integer; //��¼ÿ���ĳ���
    len_level: array[0..50] of integer; //��¼ĳһ������λ�ڵļ���
    level_fmt: string; //��¼�ּ���ʽ(��2-2-2-2-2)
    level_cnt: integer; //��¼�ܼ���
    sele_node: Ttreenode; //��¼��ǰѡ�еĽ��
    edit_mode: integer; //��¼��ǰ����ģʽ��=0 ��,=1 ���� =2 ������ =3 �޸�
    begin_char, end_char: string; //����������֮��ķָ���
    len_char: integer; //��¼begin_char�ĳ���
    field_bm, field_mc: string; //��¼Ҫʹ�õı�����е��ֶ�
    tb_name: string; //��¼Ҫʹ�õı�������
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
  //��ʼ������
  tb_name := 'sys_ypbmgz';
  field_bm := 'lbdm';
  field_mc := 'lbmc';
  begin_char := '_';
  end_char := '';
  len_char := length( begin_char );
  edit_mode := 0;
  sum := 0; //��¼�ܳ���
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

  //��ʼ������len_level
  for i := 0 to 50 do
    len_level[i] := 0;

  //����ܼ����� level_cnt ��
  level_cnt := 1;
  for i := 1 to length( level_fmt ) do
  begin
    s := copy( level_fmt, i, 1 );
    if s = '-' then
      level_cnt := level_cnt + 1;
  end;

  setlength( len, level_cnt ); //�����ܼ���

  //����������ȷ������� len ��
  //ͬʱ�����ó���λ�ڵļ����������� len_level ��
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

  //��ӽ��
  query1.open;
  tree1.Items.Clear;
  node := tree1.Items.Add( nil, 'ҩƷ�����' );
  node.ImageIndex := 0;
  query1.First;
  while not query1.Eof do
  begin
    k := length( trim( query1[field_bm] ) ); //����ñ���ĳ���
    if len_level[k] = 1 then //���Ϊ��һ��
    begin
      node1 := tree1.Items.AddChild( node, trim( query1[field_bm] ) + begin_char + trim( query1[field_mc] ) + end_char );
      node1.ImageIndex := 1;
      node1.SelectedIndex := 2;
      j := k;
    end
    else //�����Ϊ��һ��
    begin
      //��������һ�����
      //len_level[k]-1 Ϊ��һ������
      //len[len_level[k]-2] Ϊ��һ�����볤��
      //txt Ϊ��һ������
      if k = j then //ͬ�����
      begin
        //���Ӹý��
        node1 := tree1.Items.Add( node1, trim( query1[field_bm] ) + begin_char + trim( query1[field_mc] ) + end_char );
        node1.ImageIndex := 1;
        node1.SelectedIndex := 2;
        j := k;
      end;
      if k > j then //�ӽ��
      begin
        //���Ӹý��
        node1 := tree1.Items.AddChild( node1, trim( query1[field_bm] ) + begin_char + trim( query1[field_mc] ) + end_char );
        node1.ImageIndex := 1;
        node1.SelectedIndex := 2;
        j := k;
      end;
      if k < j then //�������
      begin
        while k <> j do //�����½���ͬ�����
        begin
          node1 := node1.Parent;
          txt := copy( node1.text, 1, pos( begin_char, node1.text ) - 1 );
          j := length( txt );
        end;
        //���Ӹý��
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
