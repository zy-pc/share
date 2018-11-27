unit P_ypsyzx;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, ComCtrls, ToolWin, OleCtrls, SHDocVw, ExtCtrls, StdCtrls,
  Buttons, DB, ADODB, Grids, DBGrids, DBCtrls, DBGridEh, cxControls, cxSplitter,
  GridsEh, DBGridEhGrouping;

type
  Tfrm_yyzx = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    TreeView1: TTreeView;
    Panel3: TPanel;
    Edit1: TEdit;
    BitBtn1: TBitBtn;
    ImageList3: TImageList;
    qry_yp: TADOQuery;
    qry_find: TADOQuery;
    DBGrid1: TDBGrid;
    qry_lb: TADOQuery;
    ds_find: TDataSource;
    qry_html: TADOQuery;
    NavigatorImages: TImageList;
    ds_yp: TDataSource;
    PageControl1: TPageControl;
    TabSheet_basic: TTabSheet;
    TabSheet_html: TTabSheet;
    WebBrowser1: TWebBrowser;
    CoolBar1: TCoolBar;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton4: TToolButton;
    DBGridEh1: TDBGridEh;
    cxSplitter1: TcxSplitter;
    rb_ypmc: TRadioButton;
    rb_pym: TRadioButton;
    rb_ypbm: TRadioButton;
    sp_find: TADOStoredProc;
    procedure PageControl1Change(Sender: TObject);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure TreeView1Change(Sender: TObject; Node: TTreeNode);
    procedure FormDestroy(Sender: TObject);
    procedure WebBrowser1CommandStateChange(ASender: TObject; Command: Integer;
      Enable: WordBool);
    procedure FormCreate(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ToolButton4Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
  private
    var OpenURL:boolean;
        buffer:array [0..255] of char;
        CanPostChange: Boolean;
    { Private declarations }

    procedure Item_seek(lbdm,ypdm:string);//查找类别代码下指定药品
    procedure additem_yp(lbdm:string;node:TTreenode);////增加药品过程
    procedure ShowHtml(Html: String);//通过HTML字符串生成HTML文件并显示
    procedure SelectYP;//选择药品
    procedure AddTOYPList(lbdm: string);
    Procedure HintWindowToCenter;
    Function LocateYP(ypdm: String): Boolean;//定位药品

    function SeekNodeFromTree(aTree: TTreeView;para_dm: string):Ttreenode;
  public
    { Public declarations }
  end;
Function MouseProc(nCode: Integer; wParam, lParam: Longint): Longint; stdcall;
Function GetDMFromText(text: String): String;
var
  frm_yyzx: Tfrm_yyzx;
  HookID: THandle;
implementation

uses p_dm, p_func;

{$R *.dfm}
Function GetDMFromText(text: String): String;
begin
  Result:= copy(text,1,pos('_',text) - 1);
end;
Function Tfrm_yyzx.SeekNodeFromTree(aTree: TTreeView;para_dm: string):Ttreenode;
var i: Integer;
begin
  Result:= nil;

  for I:= 0 to aTree.Items.Count - 1 do
    if GetDMFromText(aTree.Items.Item[i].Text) = para_dm then
      Result:= aTree.Items.Item[i]
end;
Function Tfrm_yyzx.LocateYP(ypdm:String): Boolean;
begin
  Result:= qry_yp.Locate('ypdm',ypdm,[]);
end;
procedure Tfrm_yyzx.additem_yp(lbdm:string;node:TTreenode);
var itemlabel:string;
  childnode:TTreenode;
begin
  qry_yp.Close;
  qry_yp.Parameters.ParamValues['lbdm']:=lbdm;
  qry_yp.Open;
end;
procedure Tfrm_yyzx.Item_seek(lbdm,ypdm:string);
var lb_node,yp_node:Ttreenode;
i:integer;
seek_lbdm,txt:string;
begin
  HintWindowToCenter;//提示窗口居中
  self.Refresh;
  with qry_html do
  begin
    Close;
    Parameters.ParamByName('ypdm').Value:= Trim(ypdm);
    Open;
    if qry_html.IsEmpty then
      messagebox(self.Handle,'错误提示:未找到所选择药品HTML信息!','错误提示',16)
    else
      ShowHtml(trim(qry_html.FieldByName('html').AsString));
  end;
  PageControl1.ActivePage:= TabSheet_html;
  seek_lbdm:=lbdm;
  i:=0;
  for i:=0 to treeview1.Items.Count-1 do
   if treeview1.Items[i].Level>0 then
    begin
     txt:=copy(treeview1.Items[i].text,1,pos('_',treeview1.Items[i].text)-1);
     if txt=seek_lbdm then
      begin
       treeview1.Items[i].Selected:=true;
       AddTOYPList(lbdm);
       exit;
      end;
     end;
  panel1.Enabled:=true;
  //yp_node.Selected:=true;
  panel2.Enabled:=true;
  panel3.Enabled:=true;

end;
procedure Tfrm_yyzx.ShowHtml(Html: String);
var  F:TextFile;
begin
    AssignFile(F,buffer+'html.html');
    Rewrite(F);
    Writeln(F,html);
    CloseFile(F);
    OpenURL:=true;
    WebBrowser1.Navigate(buffer+'html.html');
end;
procedure Tfrm_yyzx.SelectYP;
begin
  if not qry_yp.Active then exit;

  if qry_yp.IsEmpty then exit;

  with qry_html do
  begin
    Close;
    Parameters.ParamByName('ypdm').Value:= Trim(qry_yp.FieldByName('ypdm').AsString);
    Open;
    if qry_html.IsEmpty then
      messagebox(self.Handle,'错误提示:未找到所选择药品HTML信息!','错误提示',16)
    else
      ShowHtml(trim(qry_html.FieldByName('html').AsString));
  end;
end;

procedure Tfrm_yyzx.AddTOYPList(lbdm: string);
begin
  with qry_yp do
  begin
    Close;
    if length( lbdm)<=2 then
        Parameters.ParamByName('lbdm').Value := lbdm 
    else
        Parameters.ParamByName('lbdm').Value := lbdm + '%';
    Open;
  end;
end;
Procedure Tfrm_yyzx.HintWindowToCenter;
begin
end;
procedure Tfrm_yyzx.ToolButton1Click(Sender: TObject);
begin
  WebBrowser1.GoBack;
end;


procedure Tfrm_yyzx.ToolButton2Click(Sender: TObject);
begin
  WebBrowser1.GoForward;
end;

procedure Tfrm_yyzx.ToolButton4Click(Sender: TObject);
begin
  WebBrowser1.Refresh;
end;

procedure Tfrm_yyzx.FormShow(Sender: TObject);
var node:TTreenode;
  j,i:integer;
  lbdm,lbmc,ItemLabel,lbdm_prior:string;
  URL: OleVariant;
  sqlstr:string;
const
  zp='22222';
  zplbdm='lbdm';
  zplbmc='lbmc';
  zptable='xyyd_yplbzb';
  zptableorder='lbdm';
begin
  DBGrid1.Visible:=false;
  node:=TreeView1.TopItem;
  lbdm_prior:='';
  lbdm:='';

  qry_lb.close;
  qry_lb.Open;
  if qry_lb.RecordCount<=0 then
  abort;
  qry_lb.First;

  //建立目录树
  sqlstr:='';
  CanPostChange:= False;
  frm_func.Tree_db_create(TreeView1,zptable,zptableorder,zplbdm,zplbmc,zp,sqlstr);
  CanPostChange:= True;
  TreeView1.SetFocus;
  TreeView1.Items.GetFirstNode.Expanded:=true;
  URL:='about:blank';
  WebBrowser1.Navigate2(URL);
end;

procedure Tfrm_yyzx.BitBtn1Click(Sender: TObject);
var dm:string;
begin
//  panel1.Enabled:=false;
// panel2.Enabled:=false;
 // panel3.Enabled:=false;
  dm:=trim(edit1.Text);
  sp_find.Close;

  if rb_ypmc.Checked then
   sp_find.Parameters.ParamValues['@cxfs']:='1'
  else
   if rb_ypbm.Checked then
    sp_find.Parameters.ParamValues['@cxfs']:='2'
   else
    sp_find.Parameters.ParamValues['@cxfs']:='3';
  sp_find.Parameters.ParamValues['@dm']:=dm;
  sp_find.Open;

  if sp_find.RecordCount<=0 then
  begin
    application.MessageBox('提示:没有查询到与该条件相符记录!','提示',MB_Iconquestion);
    panel1.Enabled:=true;
    panel2.Enabled:=true;
    panel3.Enabled:=true;
    treeview1.Enabled:=true;
    edit1.Enabled:=true;
    edit1.SelectAll;
    edit1.SetFocus;
    BitBtn1.Enabled:=true;
  end
  else if sp_find.RecordCount>=2 then
  begin
    dbgrid1.Visible:=true;
    dbgrid1.SetFocus;
  end
  else if sp_find.RecordCount=1 then
  begin
    item_seek(sp_find['lbdm'],sp_find['ypdm']);
    LocateYP(sp_find['ypdm']);

  end;
end;

procedure Tfrm_yyzx.DBGrid1DblClick(Sender: TObject);
begin
  edit1.Text:=sp_find['ypdm'];
  DBGrid1.Visible:=false;
  item_seek(sp_find['lbdm'],sp_find['ypdm']);
  LocateYP(sp_find['ypdm']);
end;

procedure Tfrm_yyzx.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=13 then
  begin
    edit1.Text:=sp_find['ypdm'];
    DBGrid1.Visible:=false;
    item_seek(sp_find['lbdm'],sp_find['ypdm']);
    LocateYP(sp_find['ypdm'])
  end;
  if key = 27 then
  begin
    dbgrid1.Visible:= False;
    edit1.SetFocus;
  end;
end;

procedure Tfrm_yyzx.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=13 then
    BitBtn1.Click;
end;

procedure Tfrm_yyzx.FormCreate(Sender: TObject);
begin
  GetTempPath(sizeof(buffer),buffer);
  HookID := SetWindowsHookEx(WH_MOUSE, MouseProc, 0, GetCurrentThreadId());
end;

function MouseProc(nCode: Integer; wParam, lParam: Longint): Longint; stdcall;
var
  szClassName: array[0..255] of Char;
const
  ie_name = 'Internet Explorer_Server';
begin
case nCode < 0 of
  True:
    Result := CallNextHookEx(HookID, nCode, wParam, lParam)
  else
    case wParam of
      WM_RBUTTONDOWN,
      WM_RBUTTONUP:
      begin
        GetClassName(PMOUSEHOOKSTRUCT(lParam)^.HWND, szClassName, SizeOf(szClassName));
        if lstrcmp(@szClassName[0], @ie_name[1]) = 0 then
          Result := HC_SKIP
        else
          Result := CallNextHookEx(HookID, nCode, wParam, lParam);
      end
      else
        Result := CallNextHookEx(HookID, nCode, wParam, lParam);
  end;
end;
end;

procedure Tfrm_yyzx.WebBrowser1CommandStateChange(ASender: TObject;
  Command: Integer; Enable: WordBool);
begin
  case Command of
    CSC_NAVIGATEBACK: ToolButton1.Enabled := Enable;
    CSC_NAVIGATEFORWARD: ToolButton2.Enabled := Enable;
  end;
end;

procedure Tfrm_yyzx.FormDestroy(Sender: TObject);
begin
  if HookID <> 0 then
    UnHookWindowsHookEx(HookID);
  if fileexists(buffer+'html.html') then
    DeleteFile(buffer+'html.html');
end;
function TreeSeekNode(para_node:Ttreenode;para_dm:string;para_i,para_j:integer):Ttreenode;
var ItemLabel,dm:string;
begin
//功能:从Para_node中查询出符合参数Para_dm节点
//para_node:表示从第几个开始查询
//para_dm:查询关键字(查询代码)
//para_i:表示一次截取字符para_i*para_j个
//para_j:表示按多少位一次截取
  ItemLabel:=para_node.Text;
  dm:=copy(ItemLabel,1,pos('_',ItemLabel)-1);
  try
    if dm=copy(para_dm,1,para_i*para_j) then
    begin
      if length(para_dm) div para_j=para_i then
        result:=para_node
      else
        result:=TreeSeekNode(para_node.getFirstChild,para_dm,para_i+1,para_j);
    end
    else
      result:=TreeSeekNode(para_node.Parent.GetNextChild(para_node),para_dm,para_i,para_j);
  except
    result:=nil;
    application.MessageBox('错误提示:不存在的结点!','错误提示',0+mb_iconquestion);
  end;
end;
procedure Tfrm_yyzx.TreeView1Change(Sender: TObject; Node: TTreeNode);
var lbdm,ypdm,ItemLabel,html:string;
  F:TextFile;
begin
  if not CanPostChange then exit;
  ItemLabel:=node.Text;
//  if (Node.HasChildren) then
//   abort;

  Panel1.Enabled:=false;
{  if (Node.ImageIndex=2) then//显示网页
  begin
    ypdm:=copy(ItemLabel,1,pos('_',ItemLabel)-1);
    qry_html.Close;
    qry_html.Parameters.ParamValues['ypdm']:=ypdm;
    try
      qry_html.Open;
    except
      qry_html.Close;
      Panel1.Enabled:=true;
      application.MessageBox('提示:打开页面失败,请检查后重试!','错误提示',mb_iconquestion);
      abort;
    end;
    if qry_html.RecordCount<=0 then
    begin
      application.MessageBox('提示:没有可显示页,请查看其它药品!','提示',mb_iconquestion);
      Panel1.Enabled:=true;
      abort;
    end;
    html:=qry_html['html'];
    AssignFile(F,buffer+'html.html');
    Rewrite(F);
    Writeln(F,html);
    CloseFile(F);
    OpenURL:=true;
    WebBrowser1.Navigate(buffer+'html.html');
  end
  else //增加子项
  begin
    lbdm:=copy(ItemLabel,1,pos('_',ItemLabel)-1);
    additem_yp(lbdm,node);//增加药品
    node.Expanded:=true;
  end;}
  lbdm:=copy(ItemLabel,1,pos('_',ItemLabel)-1);

  AddTOYPList(lbdm);

  Panel1.Enabled:=true;
  TreeView1.SetFocus;
  pagecontrol1.ActivePage:=TabSheet_basic;
end;

procedure Tfrm_yyzx.DBGridEh1DblClick(Sender: TObject);
begin
  SelectYP;
  PageControl1.ActivePage:= TabSheet_html;
end;

procedure Tfrm_yyzx.DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
begin
  if  TDBGridEH(Sender).DataSource.DataSet.RecNo mod 2 = 1  then
  begin
    TDBGridEH(Sender).Canvas.Font.Color:= clBlack;
    TDBGridEH(Sender).Canvas.Brush.Color:=clWindow;
  end
  else
  begin
    TDBGridEH(Sender).Canvas.Font.Color:= clBlack;
    TDBGridEH(Sender).Canvas.Brush.Color:=  clSkyBlue;
  end;

  TDBGridEH(Sender).DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

procedure Tfrm_yyzx.PageControl1Change(Sender: TObject);
begin
  SelectYP;
end;

end.
