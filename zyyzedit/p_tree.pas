unit p_tree;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, ComCtrls, Db, DBTables, ImgList;

type
  TFrm_tree = class(TForm)
    Panel1: TPanel;
    b_add: TBitBtn;
    b_addc: TBitBtn;
    b_edit: TBitBtn;
    b_del: TBitBtn;
    b_ok: TBitBtn;
    b_cancel: TBitBtn;
    b_close: TBitBtn;
    Panel2: TPanel;
    Panel3: TPanel;
    Splitter1: TSplitter;
    Panel4: TPanel;
    Query1: TQuery;
    ImageList1: TImageList;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Tree1: TTreeView;
    Qry_del: TQuery;
    procedure b_closeClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Tree1Change(Sender: TObject; Node: TTreeNode);
    procedure b_addClick(Sender: TObject);
    procedure b_okClick(Sender: TObject);
    procedure b_cancelClick(Sender: TObject);
    procedure b_addcClick(Sender: TObject);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure b_editClick(Sender: TObject);
    procedure b_delClick(Sender: TObject);
  private
    { Private declarations }
  len:array of integer;//记录每级的长度
  len_level:array[0..50] of integer;//记录某一长度所位于的级数
  level_fmt:string;//记录分级格式(如2-2-2-2-2)
  level_cnt:integer;//记录总级数
  sele_node:Ttreenode;//记录当前选中的结点
  edit_mode:integer;//记录当前所处模式，=0 无,=1 加项 =2 加子项 =3 修改
  begin_char,end_char:string; //编码与名称之间的分隔符
  len_char:integer;//记录begin_char的长度
  field_bm,field_mc:string;//记录要使用的编码表中的字段
  tb_name:string;//记录要使用的编码表表名
  public
    { Public declarations }
  end;

var
  Frm_tree: TFrm_tree;

implementation
uses p_dm,p_func;
{$R *.DFM}

procedure TFrm_tree.b_closeClick(Sender: TObject);
begin
close;
end;

procedure TFrm_tree.FormShow(Sender: TObject);
var
node,node1:Ttreenode;
txt,s,s1:string;
i,j,k,sum:integer;
begin
//初始化数据
tb_name:='xyk_ypbmczb';
field_bm:='bm';
field_mc:='mc';
begin_char:='_';
end_char:='';
len_char:=length(begin_char);
edit_mode:=0;
sum:=0; //记录总长度
k:=0;
level_fmt:='2-2-2-2-2';

//初始化数组len_level
for i:=0 to 50 do
  len_level[i]:=0;


//求出总级数至 level_cnt 中
level_cnt:=1;
for i:=1 to length(level_fmt) do
 begin
  s:=copy(level_fmt,i,1);
  if s='-' then
     level_cnt:=level_cnt+1;
 end;

setlength(len,level_cnt); //设置总级数

//求出各级长度放至数组 len 中
//同时，将该长度位于的级数放至数组 len_level 中
s:=level_fmt+'-';
for i:=0 to level_cnt-1 do
 begin
  k:=pos('-',s);
  s1:=copy(s,1,k-1);
  sum:=sum+strtoint(s1);
  len[i]:=sum;
  len_level[sum]:=i+1;
  s:=copy(s,k+1,length(s));
 end;

k:=0;

query1.close;
query1.sql.Clear;
query1.sql.Add('select * from '+tb_name+' where '+field_bm +' like '+''''+'09%'+''''+' order by '+field_bm);
query1.open;

//添加结点
query1.open;
node:=tree1.Items[0];//.Add(nil,'药品编码表');
//node.ImageIndex:=0;
query1.First;
while not query1.Eof do
 begin
  k:=length(trim(query1[field_bm])); //求出该编码的长度
  if len_level[k]=1 then //如果为第一级
     begin
      node1:=tree1.Items.AddChild(node,query1[field_bm]+begin_char+query1[field_mc]+end_char);
      node1.ImageIndex:=1;
      node1.SelectedIndex:=2;
      j:=k;
     end
  else //如果不为第一级
     begin
      //查找其上一级结点
      //len_level[k]-1 为上一级级数
      //len[len_level[k]-2] 为上一级编码长度
      //txt 为上一级编码
      if k=j then //同级结点
         begin
          //增加该结点
          node1:=tree1.Items.Add(node1,query1[field_bm]+begin_char+query1[field_mc]+end_char);
          node1.ImageIndex:=1;
          node1.SelectedIndex:=2;
          j:=k;
         end;
      if k>j then //子结点
         begin
          //增加该结点
          node1:=tree1.Items.AddChild(node1,query1[field_bm]+begin_char+query1[field_mc]+end_char);
          node1.ImageIndex:=1;
          node1.SelectedIndex:=2;
          j:=k;
         end;
      if k<j then //父级结点
         begin
          while k<>j do //查找新结点的同级结点
           begin
             node1:=node1.Parent;
             txt:=copy(node1.text,1,pos(begin_char,node1.text)-1);
             j:=length(txt);
           end;
          //增加该结点
          node1:=tree1.Items.Add(node1,query1[field_bm]+begin_char+query1[field_mc]+end_char);
          node1.ImageIndex:=1;
          node1.SelectedIndex:=2;
         end;
     end;
  query1.Next;
  end;
 tree1.Items[0].Selected:=true;
// tree1.FullCollapse;
{ tree1.FullExpand;
 node:=tree1.Items[0];
 node:=node.getFirstChild;
 while node<>nil do
  begin
    node.Collapse(true);
    node:=node.getNextSibling;
  end;}
 tree1.SetFocus;
end;

procedure TFrm_tree.Tree1Change(Sender: TObject; Node: TTreeNode);
begin
sele_node:=node;
if node.Level=0 then
   begin
    edit1.Clear;
    edit2.Clear;
    b_add.Enabled:=false;
    b_addc.Enabled:=true;
    b_edit.Enabled:=false;
    b_del.Enabled:=false;
   end
else
   begin
     edit1.text:=copy(node.text,1,pos(begin_char,node.text)-1);
     edit2.text:=copy(node.text,pos(begin_char,node.text)+len_char,length(node.text));
     b_add.Enabled:=true;
     b_addc.Enabled:=true;
     b_edit.Enabled:=true;
     b_del.Enabled:=true;
   end;
end;

procedure TFrm_tree.b_addClick(Sender: TObject);
var
p_node:Ttreenode;
p_bm,p_mc,fm:string;
v_bm:integer;
begin
edit_mode:=1;
sele_node:=tree1.Selected;
p_node:=sele_node.Parent.GetLastChild;
p_bm:=trim(copy(p_node.text,1,pos(begin_char,p_node.text)-1));
v_bm:=strtoint(p_bm)+1;
if length(trim(inttostr(v_bm)))>length(p_bm) then //已到该级最大结点数
   begin
    application.MessageBox('项目数太多，不能增加!','注意',16);
    b_cancel.Click;
    exit;
   end;
edit1.text:=FormatEx(v_bm,length(p_bm));
edit2.Clear;
panel3.Enabled:=false;
panel4.Enabled:=true;
b_add.Enabled:=false;
b_addc.Enabled:=false;
b_edit.Enabled:=false;
b_del.Enabled:=false;
b_ok.Enabled:=true;
b_cancel.Enabled:=true;
edit2.SetFocus;
end;

procedure TFrm_tree.b_okClick(Sender: TObject);
begin
if length(trim(edit2.text))=0 then
   begin
    application.MessageBox('必须输入类别名称!','注意',16);
    edit2.SetFocus;
    abort;
   end
else
   begin
    if (edit_mode=1) or (edit_mode=2) then //加项或加子项模式
       begin
        query1.Append;
        query1[field_bm]:=edit1.Text;
        query1[field_mc]:=edit2.Text;
        query1.Post;
        dm_data.Db_data.StartTransaction;
        try
          query1.ApplyUpdates;
          dm_data.Db_data.Commit;
          if edit_mode=1 then //加项
             sele_node:=tree1.Items.Add(sele_node,query1[field_bm]+begin_char+query1[field_mc]+end_char)
          else //加子项
             sele_node:=tree1.Items.AddChild(sele_node,query1[field_bm]+begin_char+query1[field_mc]+end_char);
          b_ok.Enabled:=false;
          b_cancel.Enabled:=false;
          panel4.Enabled:=false;
          panel3.Enabled:=true;
          tree1.Selected:=sele_node;
          tree1.OnChange(tree1,tree1.selected);
          tree1.SetFocus;
         except
          dm_data.Db_data.Rollback;
          application.MessageBox('保存失败，请重试!','注意',16);
          abort;
         end;
       end;
     if edit_mode=3 then //修改模式
        begin
        query1.Locate(field_bm,trim(edit1.text),[]);
        query1.Edit;
        query1[field_mc]:=trim(edit2.text);
        query1.Post;
        dm_data.Db_data.StartTransaction;
        try
          query1.ApplyUpdates;
          tree1.Selected.Text:=query1[field_bm]+begin_char+query1[field_mc]+end_char;
          dm_data.Db_data.Commit;
          b_ok.Enabled:=false;
          b_cancel.Enabled:=false;
          panel4.Enabled:=false;
          panel3.Enabled:=true;
          tree1.OnChange(tree1,tree1.selected);
          tree1.SetFocus;
        except
          dm_data.Db_data.Rollback;
          application.MessageBox('保存失败，请重试!','注意',16);
          abort;
         end;
     end;
   end;
end;

procedure TFrm_tree.b_cancelClick(Sender: TObject);
begin
b_ok.Enabled:=false;
b_cancel.Enabled:=false;
panel4.Enabled:=false;
panel3.Enabled:=true;
tree1.OnChange(tree1,tree1.selected);
tree1.SetFocus;
end;

procedure TFrm_tree.b_addcClick(Sender: TObject);
var
p_node:Ttreenode;
p_bm,p_mc,fm:string;
v_bm:integer;
begin
edit_mode:=2;
sele_node:=tree1.Selected;
if sele_node.HasChildren then
   begin
   p_node:=sele_node.GetLastChild;
   p_bm:=trim(copy(p_node.text,1,pos(begin_char,p_node.text)-1));
   v_bm:=strtoint(p_bm)+1;
   if length(trim(inttostr(v_bm)))>length(p_bm) then //已到该级最大结点数
      begin
       application.MessageBox('项目数太多，不能增加!','注意',16);
       b_cancel.Click;
       exit;
      end;
   end
else
   begin
   p_bm:=trim(copy(sele_node.text,1,pos(begin_char,sele_node.text)-1));
   if len_level[length(p_bm)]=0 then
      begin
       application.MessageBox('已到最大级次，不能增加子项!','注意',16);
       b_cancel.Click;
       exit;
      end
   else
      begin
      p_bm:=p_bm+'01';
      v_bm:=strtoint(p_bm);
      end;
   end;
edit1.text:=FormatEx(v_bm,length(p_bm));
edit2.Clear;
panel3.Enabled:=false;
panel4.Enabled:=true;
b_add.Enabled:=false;
b_addc.Enabled:=false;
b_edit.Enabled:=false;
b_del.Enabled:=false;
b_ok.Enabled:=true;
b_cancel.Enabled:=true;
edit2.SetFocus;
end;
procedure TFrm_tree.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
   b_ok.SetFocus;
end;

procedure TFrm_tree.b_editClick(Sender: TObject);
begin
edit_mode:=3;
panel3.Enabled:=false;
panel4.Enabled:=true;
b_add.Enabled:=false;
b_addc.Enabled:=false;
b_edit.Enabled:=false;
b_del.Enabled:=false;
b_ok.Enabled:=true;
b_cancel.Enabled:=true;
edit2.SetFocus;
end;

procedure TFrm_tree.b_delClick(Sender: TObject);
var
txt1,txt2:string;
begin
txt1:=sele_node.Text;
txt2:=trim(edit1.text);
if application.MessageBox(pchar('操作将删除该项及其所有子项!'+#13+#13+txt1+#13+#13+'是否确认删除?'),
   '注意',mb_YesNo+mb_iconquestion)=idNo then
   abort
else
   begin
    qry_del.close;
    qry_del.sql.Clear;
    qry_del.sql.Add('delete '+tb_name+' where '+field_bm+' like '+''''+txt2+'%'+'''');
    dm_data.Db_data.StartTransaction;
    try
    qry_del.ExecSQL;
    tree1.Selected.DeleteChildren;
    tree1.Selected.Delete;
    dm_data.Db_data.Commit;
    tree1.Items[0].Selected:=true;
    tree1.OnChange(tree1,tree1.selected);
    tree1.SetFocus;
    except
    dm_data.Db_data.Rollback;
    application.MessageBox('删除失败，请重试!','注意',16);
    abort;
    end;
end;

end;

end.
