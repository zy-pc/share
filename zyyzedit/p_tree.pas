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
  len:array of integer;//��¼ÿ���ĳ���
  len_level:array[0..50] of integer;//��¼ĳһ������λ�ڵļ���
  level_fmt:string;//��¼�ּ���ʽ(��2-2-2-2-2)
  level_cnt:integer;//��¼�ܼ���
  sele_node:Ttreenode;//��¼��ǰѡ�еĽ��
  edit_mode:integer;//��¼��ǰ����ģʽ��=0 ��,=1 ���� =2 ������ =3 �޸�
  begin_char,end_char:string; //����������֮��ķָ���
  len_char:integer;//��¼begin_char�ĳ���
  field_bm,field_mc:string;//��¼Ҫʹ�õı�����е��ֶ�
  tb_name:string;//��¼Ҫʹ�õı�������
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
//��ʼ������
tb_name:='xyk_ypbmczb';
field_bm:='bm';
field_mc:='mc';
begin_char:='_';
end_char:='';
len_char:=length(begin_char);
edit_mode:=0;
sum:=0; //��¼�ܳ���
k:=0;
level_fmt:='2-2-2-2-2';

//��ʼ������len_level
for i:=0 to 50 do
  len_level[i]:=0;


//����ܼ����� level_cnt ��
level_cnt:=1;
for i:=1 to length(level_fmt) do
 begin
  s:=copy(level_fmt,i,1);
  if s='-' then
     level_cnt:=level_cnt+1;
 end;

setlength(len,level_cnt); //�����ܼ���

//����������ȷ������� len ��
//ͬʱ�����ó���λ�ڵļ����������� len_level ��
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

//��ӽ��
query1.open;
node:=tree1.Items[0];//.Add(nil,'ҩƷ�����');
//node.ImageIndex:=0;
query1.First;
while not query1.Eof do
 begin
  k:=length(trim(query1[field_bm])); //����ñ���ĳ���
  if len_level[k]=1 then //���Ϊ��һ��
     begin
      node1:=tree1.Items.AddChild(node,query1[field_bm]+begin_char+query1[field_mc]+end_char);
      node1.ImageIndex:=1;
      node1.SelectedIndex:=2;
      j:=k;
     end
  else //�����Ϊ��һ��
     begin
      //��������һ�����
      //len_level[k]-1 Ϊ��һ������
      //len[len_level[k]-2] Ϊ��һ�����볤��
      //txt Ϊ��һ������
      if k=j then //ͬ�����
         begin
          //���Ӹý��
          node1:=tree1.Items.Add(node1,query1[field_bm]+begin_char+query1[field_mc]+end_char);
          node1.ImageIndex:=1;
          node1.SelectedIndex:=2;
          j:=k;
         end;
      if k>j then //�ӽ��
         begin
          //���Ӹý��
          node1:=tree1.Items.AddChild(node1,query1[field_bm]+begin_char+query1[field_mc]+end_char);
          node1.ImageIndex:=1;
          node1.SelectedIndex:=2;
          j:=k;
         end;
      if k<j then //�������
         begin
          while k<>j do //�����½���ͬ�����
           begin
             node1:=node1.Parent;
             txt:=copy(node1.text,1,pos(begin_char,node1.text)-1);
             j:=length(txt);
           end;
          //���Ӹý��
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
if length(trim(inttostr(v_bm)))>length(p_bm) then //�ѵ��ü��������
   begin
    application.MessageBox('��Ŀ��̫�࣬��������!','ע��',16);
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
    application.MessageBox('���������������!','ע��',16);
    edit2.SetFocus;
    abort;
   end
else
   begin
    if (edit_mode=1) or (edit_mode=2) then //����������ģʽ
       begin
        query1.Append;
        query1[field_bm]:=edit1.Text;
        query1[field_mc]:=edit2.Text;
        query1.Post;
        dm_data.Db_data.StartTransaction;
        try
          query1.ApplyUpdates;
          dm_data.Db_data.Commit;
          if edit_mode=1 then //����
             sele_node:=tree1.Items.Add(sele_node,query1[field_bm]+begin_char+query1[field_mc]+end_char)
          else //������
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
          application.MessageBox('����ʧ�ܣ�������!','ע��',16);
          abort;
         end;
       end;
     if edit_mode=3 then //�޸�ģʽ
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
          application.MessageBox('����ʧ�ܣ�������!','ע��',16);
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
   if length(trim(inttostr(v_bm)))>length(p_bm) then //�ѵ��ü��������
      begin
       application.MessageBox('��Ŀ��̫�࣬��������!','ע��',16);
       b_cancel.Click;
       exit;
      end;
   end
else
   begin
   p_bm:=trim(copy(sele_node.text,1,pos(begin_char,sele_node.text)-1));
   if len_level[length(p_bm)]=0 then
      begin
       application.MessageBox('�ѵ���󼶴Σ�������������!','ע��',16);
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
if application.MessageBox(pchar('������ɾ���������������!'+#13+#13+txt1+#13+#13+'�Ƿ�ȷ��ɾ��?'),
   'ע��',mb_YesNo+mb_iconquestion)=idNo then
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
    application.MessageBox('ɾ��ʧ�ܣ�������!','ע��',16);
    abort;
    end;
end;

end;

end.
