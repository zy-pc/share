unit p_ypxxcx;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, ComCtrls, Db, DBTables, ImgList, Grids,
  DBGrids, ADODB;

type
  TFrm_ypxxcx = class(TForm)
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
    DBGrid1: TDBGrid;
    DS_ypdm: TDataSource;
    b_edit: TBitBtn;
    b_close: TBitBtn;
    Label4: TLabel;
    b_cx: TBitBtn;
    BitBtn1: TBitBtn;
    qry_ypdm: TADOStoredProc;
    Query1: TADOQuery;
    Qry_del: TADOQuery;
    procedure b_closeClick(Sender: TObject);
    procedure Tree1Change(Sender: TObject; Node: TTreeNode);
    procedure b_cancelClick(Sender: TObject);
    procedure b_editClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure b_cxClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
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
  public
    { Public declarations }
    bm: string;
    ypdm, lbdm: string;
  end;

var
  Frm_ypxxcx: TFrm_ypxxcx;

implementation
uses p_dm, p_func, p_login, p_cxyp_yk, p_ypxx, p_print_ypdm;
{$R *.DFM}

procedure TFrm_ypxxcx.b_closeClick(Sender: TObject);
begin
  close;
end;

procedure TFrm_ypxxcx.Tree1Change(Sender: TObject; Node: TTreeNode);
begin
  sele_node := node;
  qry_ypdm.close;
  application.ProcessMessages;
  if node.Level = 0 then
  begin
    edit1.Clear;
    edit2.Clear;
    b_edit.Enabled := false;
  end
  else
  begin
    edit1.text := copy(node.text, 1, pos(begin_char, node.text) - 1);
    edit2.text := copy(node.text, pos(begin_char, node.text) + len_char, length(node.text));
    qry_ypdm.Parameters.ParamByName('@ypdm').value := edit1.text + '%';
    qry_ypdm.open;
    if node.HasChildren = false then
      b_edit.Enabled := true
    else
      b_edit.Enabled := false;
    if qry_ypdm.RecordCount = 0 then
      b_edit.Enabled := false
    else
      b_edit.Enabled := true
  end;
end;

procedure TFrm_ypxxcx.b_cancelClick(Sender: TObject);
begin
  panel4.Enabled := false;
  panel3.Enabled := true;
  tree1.OnChange(tree1, tree1.selected);
  tree1.SetFocus;
end;

procedure TFrm_ypxxcx.b_editClick(Sender: TObject);
begin
  application.CreateForm(Tfrm_ypxx, Frm_ypxx);
  try
    frm_ypxx.showmodal;
  finally
    frm_ypxx.free;
  end;
end;

procedure TFrm_ypxxcx.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if (qry_ypdm.Active) and (qry_ypdm.recordcount > 0) then
  begin
    if qry_ypdm['sybz'] = '0' then
    begin
      dbgrid1.Canvas.brush.Color := cllime;
      dbgrid1.Canvas.Font.Color := clblue;
    end;
    dbgrid1.DefaultDrawColumnCell(rect, datacol, column, state);
  end;
end;

procedure TFrm_ypxxcx.DBGrid1DblClick(Sender: TObject);
begin
  if b_edit.Enabled then
    b_edit.OnClick(b_edit);
end;

procedure TFrm_ypxxcx.FormShow(Sender: TObject);
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
  len_char := length(begin_char);
  edit_mode := 0;
  sum := 0; //记录总长度
  k := 0;
//  lbxz := '01' + '%';
  lbxz := '%';
  level_fmt := '2-2-2-2-2';

//初始化数组len_level
  for i := 0 to 50 do
    len_level[i] := 0;


//求出总级数至 level_cnt 中
  level_cnt := 1;
  for i := 1 to length(level_fmt) do
  begin
    s := copy(level_fmt, i, 1);
    if s = '-' then
      level_cnt := level_cnt + 1;
  end;

  setlength(len, level_cnt); //设置总级数

//求出各级长度放至数组 len 中
//同时，将该长度位于的级数放至数组 len_level 中
  s := level_fmt + '-';
  for i := 0 to level_cnt - 1 do
  begin
    k := pos('-', s);
    s1 := copy(s, 1, k - 1);
    sum := sum + strtoint(s1);
    len[i] := sum;
    len_level[sum] := i + 1;
    s := copy(s, k + 1, length(s));
  end;

  k := 0;

  query1.close;
  query1.sql.Clear;
  query1.sql.Add('select * from ' + tb_name + ' where lbdm like ' + #39 + lbxz + #39 + ' order by ' + field_bm);
  query1.open;

//添加结点
  query1.open;
  tree1.Items.Clear;
  node := tree1.Items.Add(nil, '编码表');
  node.ImageIndex := 0;
  query1.First;
  while not query1.Eof do
  begin
    k := length(trim(query1[field_bm])); //求出该编码的长度
    if len_level[k] = 1 then //如果为第一级
    begin
      node1 := tree1.Items.AddChild(node, trim(query1[field_bm]) + begin_char + trim(query1[field_mc]) + end_char);
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
        node1 := tree1.Items.Add(node1, trim(query1[field_bm]) + begin_char + trim(query1[field_mc]) + end_char);
        node1.ImageIndex := 1;
        node1.SelectedIndex := 2;
        j := k;
      end;
      if k > j then //子结点
      begin
          //增加该结点
        node1 := tree1.Items.AddChild(node1, trim(query1[field_bm]) + begin_char + trim(query1[field_mc]) + end_char);
        node1.ImageIndex := 1;
        node1.SelectedIndex := 2;
        j := k;
      end;
      if k < j then //父级结点
      begin
        while k <> j do //查找新结点的同级结点
        begin
          node1 := node1.Parent;
          txt := copy(node1.text, 1, pos(begin_char, node1.text) - 1);
          j := length(txt);
        end;
          //增加该结点
        node1 := tree1.Items.Add(node1, trim(query1[field_bm]) + begin_char + trim(query1[field_mc]) + end_char);
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
    node.Collapse(true);
    node := node.getNextSibling;
  end;
  tree1.SetFocus;

end;

procedure TFrm_ypxxcx.b_cxClick(Sender: TObject);
var
  txt: string;
  i: integer;
begin
  application.CreateForm(Tfrm_cxyp_yk, frm_cxyp_yk);
  try
    frm_cxyp_yk.ShowModal;
  finally
    frm_cxyp_yk.free;
  end;
  if ypdm = '' then
    abort
  else
  begin
    i := 0;
    for i := 0 to tree1.Items.Count - 1 do
      if tree1.Items[i].Level > 0 then
      begin
        txt := copy(tree1.Items[i].text, 1, pos(begin_char, tree1.Items[i].text) - 1);
        if txt = lbdm then
        begin
          tree1.Items[i].Selected := true;
          qry_ypdm.close;
          qry_ypdm.Parameters.ParamByName('@ypdm').value := lbdm + '%';
          qry_ypdm.open;
          qry_ypdm.Locate('ypdm', ypdm, []);
          dbgrid1.SetFocus;
          exit;
        end;
      end;
  end;
end;

procedure TFrm_ypxxcx.BitBtn1Click(Sender: TObject);
begin
  if (qry_ypdm.Active) and (qry_ypdm.RecordCount <> 0) then
  begin
    application.CreateForm(Tfrm_print_ypdm, frm_print_ypdm);
    try
      frm_print_ypdm.lb_yplb.Caption := '物品类别:' + trim(edit2.text);
      frm_print_ypdm.PreviewModal;
    finally
      frm_print_ypdm.Free;
    end;
  end
  else
  begin
    application.MessageBox('没有数据可供打印!', '注意', 16);
    abort;
  end;
end;

end.

