unit P_mbwh;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, ExtCtrls, ComCtrls, cxLookAndFeelPainters, StdCtrls,
  cxButtons, ImgList, cxControls, cxContainer, cxTreeView, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData,
  cxTextEdit, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxLabel,StrUtils, cxMemo,
  cxDBEdit, cxGroupBox, Menus, Buttons, Grids, DBGrids, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox;

type
  Tfrm_mbwh = class(TForm)
    qry_mbgl: TADOQuery;
    Splitter1: TSplitter;
    Panel1: TPanel;
    cxB_new: TcxButton;
    cxB_change: TcxButton;
    cxB_del: TcxButton;
    cxB_exit: TcxButton;
    Panel2: TPanel;
    Panel3: TPanel;
    cxB_save: TcxButton;
    cxB_drop: TcxButton;
    ImageList1: TImageList;
    cxTreeView1: TcxTreeView;
    ds_mbxm: TDataSource;
    cxGroupBox1: TcxGroupBox;
    cxDBMemo1: TcxDBMemo;
    cxGroupBox2: TcxGroupBox;
    cxLabel1: TcxLabel;
    cxTextEdit1: TcxTextEdit;
    cxTextEdit2: TcxTextEdit;
    cxLabel2: TcxLabel;
    cxGroupBox3: TcxGroupBox;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1mbmc: TcxGridDBColumn;
    cxGrid1DBTableView1yyzymc: TcxGridDBColumn;
    cxGrid1DBTableView1dyxm: TcxGridDBColumn;
    cxGrid1DBTableView1jlrq: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    PopupMenu1: TPopupMenu;
    qry_mbxm: TADOQuery;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    cmd_execute: TADOCommand;
    cxGroupBox4: TcxGroupBox;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxB_add_child: TcxButton;
    qry_new_mbdm: TADOQuery;
    PopupMenu2: TPopupMenu;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    qry_ksdm: TADOQuery;
    ds_ksdm: TDataSource;
    qry_mbglmbdm: TStringField;
    qry_mbglmbmc: TStringField;
    qry_mbglbqdm: TStringField;
    qry_mbgljlr: TStringField;
    qry_mbgljlrq: TDateTimeField;
    qry_mbglbz: TBooleanField;
    cxLookupComboBox1: TcxLookupComboBox;
    qry_mbxmid: TLargeintField;
    qry_mbxmmbdm: TStringField;
    qry_mbxmmbmc: TStringField;
    qry_mbxmyyzydm: TStringField;
    qry_mbxmyyzymc: TStringField;
    qry_mbxmdyxm: TStringField;
    qry_mbxmdynr: TMemoField;
    qry_mbxmjlr: TStringField;
    qry_mbxmjlrq: TDateTimeField;
    qry_mbxmsybz: TBooleanField;
    procedure N4Click(Sender: TObject);
    procedure PopupMenu2Popup(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure cxTextEdit2Enter(Sender: TObject);
    procedure cxB_add_childClick(Sender: TObject);
    procedure PopupMenu1Popup(Sender: TObject);
    procedure cxB_dropClick(Sender: TObject);
    procedure cxB_saveClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxTreeView1Change(Sender: TObject; Node: TTreeNode);
    procedure cxB_delClick(Sender: TObject);
    procedure cxB_changeClick(Sender: TObject);
    procedure cxB_newClick(Sender: TObject);
    procedure cxB_exitClick(Sender: TObject);
  private
    //保存当前节点对应的模板代码及当前操作('Browse,New,AddChild,Change,Del,Show')
    current_mbdm,current_mbmc,current_cz: string;
    //设置当前的命令按钮操作状态;1.为新加;2.为修改;3.作废;4.命令按扭不可用;
    procedure proc_edit_zt(ztbs:integer);
    procedure proc_SetCurrent_mb(node: tTreeNode);//设置当前编辑模板
    procedure proc_change_nodetext(node: tTreeNode; itemtext: String);//修改节点
    procedure proc_del_node(node: tTreeNode);//删除节点
    procedure proc_check_mb;//检查是否存在(公用模板,科室公用,私人模板),不存在则增加;

    //获得新加模板代码,mbdm表示相对于哪一模板代码产生代码;lx:0.同级,1:子级;
    function func_new_mbdm(mbdm: String;lx: integer): String;
    function func_add_mb(mbdm,mbmc,bqdm,jlr: string): Boolean;//新加模板
    function func_change_mb(mbdm,bqdm,mbmc: string): Boolean;//修改模板
    function func_del_mb(mbdm:string): Boolean;//作废模板
    function func_save_mb(mbdm,mbmc,bqdm,jlr: string): Boolean;//保存模板
    { Private declarations }
  public
    { Public declarations }

    pub_mbdm:string;
    function  func_add_node(mbdm_old,mbdm_new,itemtext: string;current_node: tTreenode):tTreeNode;//增加节点

    procedure proc_show_tree;//显示模块树型目录 
  end;
const leavel_size = 2;//表示一级用多少字符表示;

var
  frm_mbwh: Tfrm_mbwh;

implementation
{$R *.dfm}

uses p_dm, P_srmbtj;
function Tfrm_mbwh.func_new_mbdm(mbdm: String; lx: integer): String;
var mbdm_header,mbdm_new: String;
    n:integer;
begin
  mbdm_header:= copy(mbdm,0,5);
  with qry_new_mbdm do
  begin
    Close;

    SQL.Clear;

    SQL.Add('select max(substring(mbdm,6,len(mbdm))) mbdm from zybl_srmb_lbzb ' +
        'where mbdm like :mbdm1 and len(mbdm) = :size');

    if lx = 0 then//表示生成同级(相对于:mbdm)；
    begin
      Parameters.ParamByName('mbdm1').Value:=
          copy(mbdm,0,length(mbdm) - leavel_size) + DupeString('_',leavel_size);
      Parameters.ParamByName('size').Value:= length(mbdm);
    end
    else if lx = 1 then//表示生成子级(相对于:mbdm);
    begin
      Parameters.ParamByName('mbdm1').Value:= mbdm + DupeString('_',leavel_size);
      Parameters.ParamByName('size').Value:= length(mbdm) + leavel_size;
    end;

    Open;

    if FieldByName('mbdm').AsString <> '' then
      mbdm_new:= trim(FieldByName('mbdm').AsString)
    else
      mbdm_new:= copy(mbdm,6,length(mbdm)) + DupeString('0',leavel_size);
  end;

  n:= StrToInt(RightStr(mbdm_new,leavel_size));
  n:= n + 1;
  if Length(IntToStr(n)) = leavel_size then
    mbdm_new:= copy(mbdm_new,0,length(mbdm_new) - leavel_size) + IntToStr(n)
  else
    mbdm_new:= copy(mbdm_new,0,length(mbdm_new) - leavel_size) + '0' + IntToStr(n);

  result:= mbdm_header + mbdm_new;
end;
function Tfrm_mbwh.func_save_mb(mbdm,mbmc,bqdm,jlr: string): Boolean;
begin
  if (current_cz='New') or (current_cz= 'AddChild') then//调用新增模板
  begin
    //加入本地数据集
    with qry_mbgl do
    begin
      Append;
      Edit;
      FieldByName('mbdm').AsString:= mbdm;
      FieldByName('mbmc').AsString:= mbmc;
      FieldByName('bqdm').AsString:= bqdm;
      FieldByName('jlr').AsString:=  jlr;
      Post;
    end;

    result:= func_add_mb(mbdm,mbmc,bqdm,jlr)
  end
  else if current_cz='Change' then//调用修改模板
  begin
    //修改本地数据集
    with qry_mbgl do
    begin
      Locate('mbdm',mbdm,[loPartialKey]);
      Edit;
      FieldByName('mbmc').AsString:= mbmc;
      FieldByName('bqdm').AsString:= bqdm;
      Post;
    end;

    result:= func_change_mb(mbdm,bqdm,mbmc)
  end
  else
    result:= false;
end;
function Tfrm_mbwh.func_add_mb(mbdm,mbmc,bqdm,jlr: string): Boolean;
begin
  with cmd_execute do
  begin
    CommandText:= 'insert zybl_srmb_lbzb(mbdm,mbmc,bqdm,jlr,jlrq,bz) '+
                                'values(:mbdm,:mbmc,:bqdm,:jlr,getdate(),0)';
    Parameters.ParamByName('mbdm').Value:= mbdm;
    Parameters.ParamByName('mbmc').Value:= mbmc;
    Parameters.ParamByName('bqdm').Value:= bqdm;
    Parameters.ParamByName('jlr').Value:=  jlr;
    dm_data.ado_mydata.BeginTrans;
    try
      Execute;
      dm_data.ado_mydata.CommitTrans;
      result:= true;
    except
      dm_data.ado_mydata.RollbackTrans;
      result:= false;
      application.MessageBox('错误提示:项目加入数据表失败,请检查后重试!','错误提示',16);
    end;
  end;
end;
function Tfrm_mbwh.func_change_mb(mbdm,bqdm,mbmc: string): Boolean;
begin
  with cmd_execute do
  begin
    CommandText:= 'update zybl_srmb_lbzb set bqdm=:bqdm,mbmc=:mbmc where mbdm=:mbdm';
    Parameters.ParamByName('mbdm').Value:= mbdm;
    Parameters.ParamByName('bqdm').Value:= bqdm;
    Parameters.ParamByName('mbmc').Value:= mbmc;
    dm_data.ado_mydata.BeginTrans;
    try
      Execute;
      dm_data.ado_mydata.CommitTrans;
      result:= true;
    except
      dm_data.ado_mydata.RollbackTrans;
      result:= false;
      application.MessageBox('错误提示:项目名称修改错误,数据未成功修改,请检查后重试!','错误提示',16);
    end;
  end;
end;
function Tfrm_mbwh.func_del_mb(mbdm:string): Boolean;
begin
  with cmd_execute do
  begin
    CommandText:= 'Delete from zybl_srmb_lbzb where mbdm like :mbdm';
    Parameters.ParamByName('mbdm').Value:=mbdm +'%';
    dm_data.ado_mydata.BeginTrans;
    try
      Execute;
      dm_data.ado_mydata.CommitTrans;
      result:= true;
    except
      dm_data.ado_mydata.RollbackTrans;
      result:= false;
      application.MessageBox('错误提示:项目删除错误,数据未成功删除,请检查后重试!','错误提示',16);
    end;
  end;
end;
function Tfrm_mbwh.func_add_node(mbdm_old,mbdm_new,itemtext: string;current_node: tTreeNode):tTreeNode;
var i: integer;
    node: tTreeNode;
begin
  node:=nil;
  with cxTreeView1.Items do
  begin
    if length(mbdm_old)=length(mbdm_new) then//当前节点的同级;
      node:=AddChild(current_node.Parent,itemtext)
    else if length(mbdm_old) < length(mbdm_new) then//当前节点的子级;
      node:=AddChild(current_node,itemtext)
    else if length(mbdm_old) > length(mbdm_new) then//父级节点
    begin
      for i:=1 to (length(mbdm_old) - length(mbdm_new)) div leavel_size do//寻找mbdm_new对应的同级
      begin
        current_node:= current_node.Parent;
      end;
      node:= AddChild(current_node.Parent,itemtext);
    end;
  end;

  //下面为确定节点的图标
  if node.Level > 0 then
  begin
    node.ImageIndex:= 1;
    node.SelectedIndex:= 2;
  end
  else
  begin
    node.ImageIndex:= 0;
    node.SelectedIndex:= 0;
  end;

  //取代码最后leavel_size长度与node.Text组成新标签;
  node.Text:= mbdm_new + '_' + node.Text;
  result:=node;
end;
procedure Tfrm_mbwh.proc_show_tree;
var Current_node:tTreeNode;
    //dyxm:对应项目名称(如:主任查房等);dybq:对应病区(如:内一区)
    mbdm_old,mbdm_new,itemtext:string;
begin
  Current_node:= cxTreeView1.TopItem;

  proc_check_mb;//检测
  with qry_mbgl do
  begin
    Close;
    Parameters.ParamByName('ksdm').Value:= 'B' + pub_ksdm;
    Parameters.ParamByName('pub_mbdm').Value:= pub_mbdm;
    Parameters.ParamByName('czy').Value:= pub_czyxm;
    Open;

    if RecordCount > 0 then
    begin
      First;
      while not Eof do//加入节点
      begin
        itemtext:=trim(qry_mbgl['mbmc']);
        mbdm_new:=trim(qry_mbgl['mbdm']);

        current_node:=func_add_node(mbdm_old,mbdm_new,itemtext,current_node);//调用加入节点函数

        mbdm_old:=mbdm_new;

        Next;
      end;
    end;
  end;
end;
procedure Tfrm_mbwh.proc_edit_zt(ztbs:integer);
var node: tTreeNode;
begin
  node:= cxTreeView1.Selected;
  case ztbs of
    0://一般浏览模式
    begin
      cxb_new.Enabled:= (node.Level > 0);
      cxB_add_child.Enabled:= (node.Level < 2);
      cxb_change.Enabled:= (node.Level > 0);
      cxTreeView1.Enabled:=true;
      cxb_del.Enabled:= (node.Level > 0);
      cxb_save.Enabled:=false;
      cxb_drop.Enabled:=false;
      cxLookupComboBox1.Visible:= (node.Level = 2);
      cxLookupComboBox1.Visible:= (node.Level = 2);

      cxLookupComboBox1.Enabled:= false;
      cxTextEdit2.Visible:= (node.Level < 2);
      cxTextEdit2.Properties.ReadOnly:=true;
      cxTreeView1.Enabled:=true;
      cxTreeView1.SetFocus;
    end;
    1..2://新增模式,修改模式
    begin
      cxb_new.Enabled:=false;
      cxB_add_child.Enabled:=false;
      cxb_change.Enabled:=false;
      cxb_del.Enabled:=false;
      cxb_save.Enabled:=true;
      cxb_drop.Enabled:=true;

      if current_cz = 'AddChild' then
      begin
        cxTextEdit2.Visible:= (node.Level < 1);
        cxLookupComboBox1.Visible:= not cxTextEdit2.Visible;
      end
      else
      begin
        cxLookupComboBox1.Visible:= (node.Level = 2);
        cxTextEdit2.Visible:= (node.Level < 2);
      end;

      cxTextEdit2.Properties.ReadOnly:=false;
      if cxLookupComboBox1.Visible then
      begin
        cxLookupComboBox1.Enabled:= true;
        cxLookupComboBox1.SetFocus
      end
      else
      begin
        cxLookupComboBox1.Enabled:= false;
        cxTextEdit2.SetFocus;
      end;
      cxTreeView1.Enabled:=false;
    end;
    3..4://删除模式
    begin
      cxb_new.Enabled:=false;
      cxB_add_child.Enabled:=false;
      cxb_change.Enabled:=false;
      cxb_del.Enabled:=false;
      cxb_save.Enabled:=false;
      cxb_drop.Enabled:=false;
      cxTreeView1.Enabled:=false;
    end;
  end;
end;
procedure Tfrm_mbwh.proc_SetCurrent_mb(node: tTreeNode);
var str_pos: Integer;
begin
  str_pos:= pos('_',node.Text);

  current_mbdm:=Leftstr(node.Text,str_pos - 1);
  current_mbmc:=copy(node.Text,str_pos + 1,length(node.Text));
end;
procedure Tfrm_mbwh.proc_change_nodetext(node: tTreeNode;itemtext: String);
begin
  node.Text:= itemtext;
end;
procedure Tfrm_mbwh.proc_del_node(node: tTreeNode);
begin
  cxTreeView1.Items.Delete(Node);
end;
procedure Tfrm_mbwh.proc_check_mb;
  function check_mb(str: String): Boolean;
  begin
    qry_mbgl.First;
    qry_mbgl.Locate('mbmc',str,[]);
    if trim(qry_mbgl.FieldByName('mbmc').AsString) = str then
      result:= true
    else
      result:= false;
  end;
var gymb_exist,ksmb_exist,srmb_exist: Boolean;
begin
  with qry_mbgl do
  begin
    Close;
    Parameters.ParamByName('ksdm').Value:= 'B' + pub_ksdm;
    Parameters.ParamByName('pub_mbdm').Value:= pub_mbdm;
    Parameters.ParamByName('czy').Value:= pub_czyxm;
    Open;
  end;
  gymb_exist:= check_mb('公用模板');
  ksmb_exist:= check_mb('科室模板');
  srmb_exist:= check_mb('私人模板');

  if not gymb_exist then
    func_add_mb('A999901','公用模板','','超级用户');
  if not ksmb_exist then
    func_add_mb('B' + pub_ksdm + '01','科室模板','','超级用户');
  if not srmb_exist then
    func_add_mb('C' + pub_czydm + '01','私人模板','',pub_czyxm);
end;
procedure Tfrm_mbwh.cxB_exitClick(Sender: TObject);
begin
  Close;
end;

procedure Tfrm_mbwh.cxB_newClick(Sender: TObject);
var new_mbdm: String;
begin
  current_cz:='New';
  proc_edit_zt(1);

  new_mbdm:= func_new_mbdm(current_mbdm,0);//生成新模板代码

  cxTextEdit1.Text:= new_mbdm ;//设置新加模板代码
end;

procedure Tfrm_mbwh.cxB_add_childClick(Sender: TObject);
var new_mbdm: String;
begin
  current_cz:='AddChild';
  proc_edit_zt(1);

//  cxTextEdit2.Visible:= (cxTreeView1.Selected.Level > 1);
//  cxLookupComboBox1.Visible:= not cxTextEdit2.Visible;

  new_mbdm:= func_new_mbdm(current_mbdm,1);//生成新模板代码

  cxTextEdit1.Text:= new_mbdm ;//设置新加模板代码
end;

procedure Tfrm_mbwh.cxB_changeClick(Sender: TObject);
begin
  current_cz:='Change';
  proc_edit_zt(2)
end;

procedure Tfrm_mbwh.cxB_delClick(Sender: TObject);
var cg: Boolean;//执行成功否
begin
  current_cz:='Del';

  if application.MessageBox('提示:删除节点将会连同些节点下的模板项目一起删除,继续(Y/N)?',
          '提示',MB_ICONQUESTION	+ MB_YESNO)=IDYES then
  begin
    proc_edit_zt(3);//设置环境

    cg:= func_del_mb(current_mbdm);//执行删除操作

    if cg then//删除成功则删除节点
      proc_del_node(cxTreeView1.Selected);
  end;
end;

procedure Tfrm_mbwh.cxTreeView1Change(Sender: TObject; Node: TTreeNode);
var bqdm: String;
begin
  bqdm:= '';
  if current_cz <> 'Show' then
  begin
    proc_edit_zt(0);
    proc_SetCurrent_mb(node);//设置当然节点对应模板代码;

    with qry_mbxm do
    begin
      Close;
      Parameters.ParamByName('mbdm').Value:= current_mbdm + '%';
      Open;
    end;

    qry_mbgl.Locate('mbdm',current_mbdm,[loPartialKey]);
    bqdm:= trim(qry_mbgl.FieldByName('bqdm').AsString);

    qry_ksdm.Locate('dm',bqdm,[loPartialKey]);
    cxLookupComboBox1.Text:= trim(qry_ksdm.FieldByName('mc').AsString);

    cxTextEdit1.Text:= current_mbdm;
    cxTextEdit2.Text:= current_mbmc;
  end;
end;

procedure Tfrm_mbwh.FormShow(Sender: TObject);
begin
  qry_ksdm.Close;
  qry_ksdm.Open;

  current_cz:= 'Show';//设置流向，避免多次执行cxTreeView1Change事件

  pub_mbdm:= 'A%';

  proc_show_tree;//建立树

  cxTextEdit1.Properties.MaxLength:=qry_mbgl.FieldByName('mbdm').Size;
  cxTextEdit2.Properties.MaxLength:=qry_mbgl.FieldByName('mbmc').Size;

  current_cz:= 'Browse';//怖复
  cxTreeView1.Items[0].Selected:=true;//选择当前节点为根节点
end;

procedure Tfrm_mbwh.cxB_saveClick(Sender: TObject);
var cg: Boolean;//操作是否成功;
    mbdm,mbmc,bqdm: String;
begin
  if application.MessageBox('提示:是否保存对数据的修改,继续(Y/N)?','提示',MB_ICONQUESTION	+ MB_YESNO)=IDYES then
  begin
    mbdm:= trim(cxTextEdit1.Text);
    if cxLookupComboBox1.Visible then
    begin
      mbmc:= trim(cxLookupComboBox1.Text);
      qry_ksdm.Locate('mc',mbmc,[loPartialKey]);
      bqdm:= trim(qry_ksdm.FieldByName('dm').AsString);
    end
    else
    begin
      mbmc:= trim(cxTextEdit2.Text);
    end;

    if (mbdm = '') or (mbmc = '') then
      messagebox(self.Handle,'提示:请信息输入错误,请输入正确信息!','提示',16)
    else
    begin
      cg:= func_save_mb(mbdm,mbmc,bqdm,pub_czyxm);//保存当前操作内容
      //保存执行成功则加入节点

      if cg then
        if current_cz='New' then//加入同级节点
          func_add_node(mbdm,mbdm,mbmc,cxTreeView1.Selected)
        else if current_cz='AddChild' then//加入子节点
          func_add_node(current_mbdm,mbdm,mbmc,cxTreeView1.Selected)
        else if current_cz='Change' then //修改节点标签
          proc_change_nodetext(cxTreeView1.Selected,mbdm + '_' + mbmc);
      proc_edit_zt(0);//恢复环境
    end;
  end;
end;

procedure Tfrm_mbwh.cxB_dropClick(Sender: TObject);
begin
  proc_edit_zt(0);

  cxTextEdit1.Text:=current_mbdm;
  cxTextEdit2.Text:=current_mbmc;
end;

procedure Tfrm_mbwh.PopupMenu1Popup(Sender: TObject);
begin
  if qry_mbxm.Active then
  begin
    N1.Enabled:= (cxTreeView1.Selected.Level > 1);
    N2.Enabled:= (qry_mbxm.RecordCount > 0);
    N4.Enabled:= (qry_mbxm.RecordCount > 0);
  end
  else
  begin
    N1.Enabled:= False;
    N2.Enabled:= False;
    N4.Enabled:= False;
  end;
end;

procedure Tfrm_mbwh.cxTextEdit2Enter(Sender: TObject);
begin
  (Sender as TcxTextEdit).SelectAll;
end;

procedure Tfrm_mbwh.N1Click(Sender: TObject);
begin
  try
    application.CreateForm(Tfrm_srmbtj,frm_srmbtj);
    with frm_srmbtj do
    begin
      pub_mbdm:= current_mbdm;
      pub_dynr:='';
      pub_cz:= 1;
      pub_id:=0;
      ShowModal;
    end;
  finally
    frm_srmbtj.Free;
  end;
  qry_mbxm.Close;
  qry_mbxm.Open;
end;

procedure Tfrm_mbwh.N2Click(Sender: TObject);
begin
  try
    application.CreateForm(Tfrm_srmbtj,frm_srmbtj);
    with frm_srmbtj do
    begin
      pub_mbdm:= trim(qry_mbxm.FieldByName('mbdm').AsString) ;
      pub_cz:= 2;
      pub_id:= qry_mbxm.FieldByName('id').AsInteger;
      ShowModal;
    end;
  finally
    frm_srmbtj.Free;
  end;
  qry_mbxm.Close;
  qry_mbxm.Open;
end;

procedure Tfrm_mbwh.PopupMenu2Popup(Sender: TObject);
begin
  N5.Enabled:= cxB_new.Enabled;
  N6.Enabled:= cxB_add_child.Enabled;
  N8.Enabled:= cxB_change.Enabled;
  N10.Enabled:= cxB_del.Enabled;
end;

procedure Tfrm_mbwh.N4Click(Sender: TObject);
var id:integer;
    mbmc: string;
begin
  mbmc:= trim(qry_mbxm.FieldByName('mbmc').Asstring);
  if application.MessageBox(Pchar('提示:是否真的要删除名称为[' + mbmc + ']的输入模板?(Y/N)'),'提示',
    MB_YESNO + MB_ICONQUESTION) = ID_YES Then
  with cmd_execute do
  begin
    cmd_execute.CommandText:= 'update zybl_srmb_lbmx set sybz = 1 where id=:id';
    id:= qry_mbxm.FieldByName('id').AsInteger;
    cmd_execute.Parameters.ParamByName('id').Value:= id;
    dm_data.ado_mydata.BeginTrans;
    try
      Execute;
      dm_data.ado_mydata.CommitTrans;
    except
      dm_data.ado_mydata.RollbackTrans;
      application.MessageBox('错误提示:输入模板删除失败,请检查后重试!','错误提示',16);
      exit;
    end;
    qry_mbxm.Close;
    qry_mbxm.Open;
  end;
end;

end.

