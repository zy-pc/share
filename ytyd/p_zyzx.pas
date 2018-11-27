unit p_zyzx;

interface
                                        
uses
    Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
    ComCtrls, ExtCtrls, Menus, StdCtrls, Buttons, OleCtrls, SHDocVw, HTTPApp,
    DBCtrls, ImgList, ToolWin, FileCtrl, ShellAPI, adodb, Grids, DBGridEh,
    Db, DBGrids, Mask, DBCGrids, HTTPProd;
const
    WM_ThreadDoneMsg = WM_User + 8;

type
    Tfrm_zyzx = class(TForm)
        Panel1: TPanel;
        Splitter1: TSplitter;
        Panel3: TPanel;
        CoolBar1: TCoolBar;
        ToolBar1: TToolBar;
        ToolButton1: TToolButton;
        ToolButton2: TToolButton;
        ToolButton3: TToolButton;
        ToolButton4: TToolButton;
        NavigatorImages: TImageList;
        ToolBar2: TToolBar;
        goback1: TToolButton;
        frwrd1: TToolButton;
        stop1: TToolButton;
        refresh1: TToolButton;
        PageProducer1: TPageProducer;
        Panel7: TPanel;
        sp_cx_zyzx: TADOStoredProc;
        ds_yp: TDataSource;
        WebBrowser1: TWebBrowser;
        ad_yp: TADODataSet;
        PageControl1: TPageControl;
        TabSheet1: TTabSheet;
        TabSheet2: TTabSheet;
        Panel2: TPanel;
        Panel4: TPanel;
        SpeedButton1: TSpeedButton;
        Edit1: TEdit;
        Tree1: TTreeView;
        Tree2: TTreeView;
        ad_yf: TADODataSet;
        main_dwdl: TADODataSet;
        Tree3: TTreeView;
        procedure WebBrowser1CommandStateChange(Sender: TObject;
            Command: Integer; Enable: WordBool);
        procedure goback1Click(Sender: TObject);
        procedure frwrd1Click(Sender: TObject);
        procedure stop1Click(Sender: TObject);
        procedure refresh1Click(Sender: TObject);
        procedure FormCreate(Sender: TObject);
        procedure FormDestroy(Sender: TObject);
        procedure SpeedButton1Click(Sender: TObject);
        procedure FormShow(Sender: TObject);
        procedure Tree1Change(Sender: TObject; Node: TTreeNode);
        procedure showtree(tree1: Ttreeview; str1, str2, str3, str4: string);
        procedure Tree2Change(Sender: TObject; Node: TTreeNode);
        procedure Tree3Changing(Sender: TObject; Node: TTreeNode;
            var AllowChange: Boolean);
    private
    { Private declarations }
    public
    { Public declarations }
    //以下四个子程序用于产生药品、毒物知识html
    end;
const
    begin_char = '_';
    end_char = '';
function FormatEx(const n, len: integer): string;
function MouseProc(nCode: Integer; wParam, lParam: Longint): Longint; stdcall;
function DeleteDir(sDirName: string): Boolean;
function DoRemoveDir(sDirName: string): Boolean;
var
    frm_zyzx: Tfrm_zyzx;
    f1, f2, f3: text;
    html: string;
    HookID: THandle;
    buffer: array[0..255] of char;
    len: array of integer; //记录每级的长度
    len_level: array[0..50] of integer; //记录某一长度所位于的级数
    level_fmt: string; //记录分级格式(如2-2-2-2-2)
    level_cnt: integer; //记录总级数
    sele_node: Ttreenode; //记录当前选中的结点
    edit_mode: integer; //记录当前所处模式，=0 无,=1 加项 =2 加子项 =3 修改
    len_char: integer; //记录begin_char的长度
    field_bm, field_mc: string; //记录要使用的编码表中的字段
    tb_name, lbxz: string; //记录要使用的编码表表名

implementation
uses p_dm;
{$R *.DFM}

procedure Tfrm_zyzx.showtree(tree1: Ttreeview; str1, str2, str3, str4: string);
var
    node, node1: Ttreenode;
    txt, s, s1, tb_name: string;
    i, j, k, sum, len_char, edit_mode: integer;
begin

//初始化数据
    tb_name := str1;
    field_bm := str2;
    field_mc := str3;
    len_char := length('-');
    edit_mode := 0;
    sum := 0; //记录总长度
    k := 0;
    level_fmt := '4-4-4-4-4';

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

    main_dwdl.close;
    main_dwdl.commandtext := 'select dm,名称,内容 from ' + tb_name + ' order by ' + field_bm;
    main_dwdl.open;

//添加结点
    tree1.Items.Clear;
    node := tree1.Items.Add(nil, str4);
    node.ImageIndex := 0;
    main_dwdl.First;
    while not main_dwdl.Eof do
    begin
        k := length(trim(main_dwdl[field_bm])); //求出该编码的长度
        if len_level[k] = 1 then //如果为第一级
        begin
            node1 := tree1.Items.AddChild(node, trim(main_dwdl[field_bm]) + begin_char + trim(main_dwdl[field_mc]) + end_char);
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
                node1 := tree1.Items.Add(node1, trim(main_dwdl[field_bm]) + begin_char + trim(main_dwdl[field_mc]) + end_char);
                node1.ImageIndex := 1;
                node1.SelectedIndex := 2;
                j := k;
            end;
            if k > j then //子结点
            begin
          //增加该结点
                node1 := tree1.Items.AddChild(node1, trim(main_dwdl[field_bm]) + begin_char + trim(main_dwdl[field_mc]) + end_char);
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
                node1 := tree1.Items.Add(node1, trim(main_dwdl[field_bm]) + begin_char + trim(main_dwdl[field_mc]) + end_char);
                node1.ImageIndex := 1;
                node1.SelectedIndex := 2;
            end;
        end;
        main_dwdl.Next;
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

function DoRemoveDir(sDirName: string): Boolean;
var
    hFindFile: Cardinal;
    tfile: string;
    sCurDir: string;
    bEmptyDir: Boolean;
    FindFileData: WIN32_FIND_DATA;
begin
//如果删除的是空目录,则置bEmptyDir为True
//初始时,bEmptyDir为True
    bEmptyDir := True;
//先保存当前目录
    sCurDir := GetCurrentDir;
    SetLength(sCurDir, Length(sCurDir));
    ChDir(sDirName);
    hFindFile := FindFirstFile('*.*', FindFileData);
    if hFindFile <> INVALID_HANDLE_VALUE then
    begin
        repeat
            tfile := FindFileData.cFileName;
            if (tfile = '.') or (tfile = '..') then
            begin
                bEmptyDir := bEmptyDir and True;
                Continue;
            end;
//不是空目录,置bEmptyDir为False
            bEmptyDir := False;
            if FindFileData.dwFileAttributes =
                FILE_ATTRIBUTE_DIRECTORY then
            begin
                if sDirName[Length(sDirName)] <> '\' then
                    DoRemoveDir(sDirName + '\' + tfile)
                else
                    DoRemoveDir(sDirName + tfile);
                if not RemoveDirectory(PChar(tfile)) then
                    result := false
                else
                    result := true;
            end
            else
            begin
                if not DeleteFile(PChar(tfile)) then
                    result := false
                else
                    result := true;
            end;
        until FindNextFile(hFindFile, FindFileData) = false;
//FindClose(hFindFile);
    end
    else
    begin
        ChDir(sCurDir);
        result := false;
        exit;
    end;
//如果是空目录,则删除该空目录
    if bEmptyDir then
    begin
//返回上一级目录
        ChDir('..');
//删除空目录
        RemoveDirectory(PChar(sDirName));
    end;

//回到原来的目录下
    ChDir(sCurDir);
    result := true;
end;

function DeleteDir(sDirName: string): Boolean;
begin
    if Length(sDirName) <= 0 then
        exit;
//删除...
    Result := DoRemoveDir(sDirName) and RemoveDir(sDirName);
end;


function FormatEx(const n, len: integer): string;
begin
    Result := Format('%.' + IntToStr(len) + 'd', [n]);
end;

procedure Tfrm_zyzx.WebBrowser1CommandStateChange(Sender: TObject;
    Command: Integer; Enable: WordBool);
begin
    case Command of
        CSC_NAVIGATEBACK: goback1.Enabled := Enable;
        CSC_NAVIGATEFORWARD: Frwrd1.Enabled := Enable;
        CSC_UPDATECOMMANDS: Stop1.Enabled := TWebBrowser(Sender).Busy;
    end;
end;

procedure Tfrm_zyzx.goback1Click(Sender: TObject);
begin
    webbrowser1.GoBack;
end;

procedure Tfrm_zyzx.frwrd1Click(Sender: TObject);
begin
    webbrowser1.GoForward;
end;

procedure Tfrm_zyzx.stop1Click(Sender: TObject);
begin
    webbrowser1.Stop;
end;

procedure Tfrm_zyzx.refresh1Click(Sender: TObject);
begin
    webbrowser1.Refresh;
end;


procedure ShowBlankPage(WebBrowser: TWebBrowser);
var
    URL: OleVariant;
begin
    URL := 'about:blank';
    WebBrowser.Navigate2(URL);
end;

procedure Tfrm_zyzx.FormCreate(Sender: TObject);
var
    T: TSHfileOpStruct; //要引用ShellApI
    P: string;
begin
    GetTempPath(sizeof(buffer), buffer);
    P := buffer + 'cookie'; //要写完整路径。
    if DirectoryExists(p) then
        DeleteDir(p);
    if not DirectoryExists(p) then
        if not CreateDir(p) then
            raise Exception.Create('Cannot create .\cookie');
    HookID := SetWindowsHookEx(WH_MOUSE, MouseProc, 0, GetCurrentThreadId());

end;

procedure Tfrm_zyzx.FormDestroy(Sender: TObject);
begin
    if HookID <> 0 then
        UnHookWindowsHookEx(HookID);
    DoRemoveDir(buffer + 'cookie');
end;

procedure Tfrm_zyzx.SpeedButton1Click(Sender: TObject);
var
    node, node1: Ttreenode;
begin
    sp_cx_zyzx.Close;
    sp_cx_zyzx.Parameters.ParamByName('@pym').value := trim(edit1.text);
    sp_cx_zyzx.open;
    if trim(edit1.text) <> '' then
    begin
        tree3.items.Clear;
        node := tree3.Items.Add(nil, trim(sp_cx_zyzx.fieldbyname('药物代码').asstring) + '_' + trim(sp_cx_zyzx.fieldbyname('药物名称').asstring));
        while not sp_cx_zyzx.Eof do
        begin
            sp_cx_zyzx.Next;
            tree3.items.Add(node, trim(sp_cx_zyzx.fieldbyname('药物代码').asstring) + '_' + trim(sp_cx_zyzx.fieldbyname('药物名称').asstring));
            node.ImageIndex := 1;
        end;
        tree3.BringToFront;
        tree1.SendToBack;
    end
    else
    begin
        tree1.BringToFront;
        tree3.SendToBack;
    end
end;

procedure Tfrm_zyzx.FormShow(Sender: TObject);
var
    node, node1: Ttreenode;
begin
    sp_cx_zyzx.close;
    sp_cx_zyzx.Parameters.ParamByName('@pym').value := '';
    sp_cx_zyzx.open;
    tree1.items.Clear;
    node := tree1.Items.Add(nil, trim(sp_cx_zyzx.fieldbyname('药物代码').asstring) + '_' + trim(sp_cx_zyzx.fieldbyname('药物名称').asstring));
    while not sp_cx_zyzx.Eof do
    begin
        sp_cx_zyzx.Next;
        tree1.items.Add(node, trim(sp_cx_zyzx.fieldbyname('药物代码').asstring) + '_' + trim(sp_cx_zyzx.fieldbyname('药物名称').asstring));
        node.ImageIndex := 1;
    end;
    showtree(tree2, '验方', 'dm', '名称', '验方—名方—偏方—酒方—膳食');

end;

procedure Tfrm_zyzx.Tree1Change(Sender: TObject; Node: TTreeNode);
var
    sss: TstringList;
begin
    ad_yp.Close;
    ad_yp.Parameters.ParamByName('pym').value := copy(node.text, 1, pos('_', node.text) - 1);
    ad_yp.open;
    sss := TStringList.Create;
    try
        sss.Add(ad_yp.fieldbyname('html').asstring);
        sss.SaveToFile(buffer + 'cookie' + '\1.html');
    finally
        sss.free
    end;
    webbrowser1.Navigate(buffer + 'cookie' + '\1.html');
end;

procedure Tfrm_zyzx.Tree2Change(Sender: TObject; Node: TTreeNode);
var
    sss: TstringList;
begin
    ad_yf.Close;
    ad_yf.Parameters.ParamByName('dm').value := copy(node.text, 1, pos('_', node.text) - 1);
    ad_yf.open;
    sss := TStringList.Create;
    try
        sss.Add(ad_yf.fieldbyname('html').asstring);
        sss.SaveToFile(buffer + 'cookie' + '\1.html');
    finally
        sss.free
    end;
    webbrowser1.Navigate(buffer + 'cookie' + '\1.html');
end;

procedure Tfrm_zyzx.Tree3Changing(Sender: TObject; Node: TTreeNode;
    var AllowChange: Boolean);
var
    sss: TstringList;
begin
    ad_yp.Close;
    ad_yp.Parameters.ParamByName('pym').value := copy(node.text, 1, pos('_', node.text) - 1);
    ad_yp.open;
    sss := TStringList.Create;
    try
        sss.Add(ad_yp.fieldbyname('html').asstring);
        sss.SaveToFile(buffer + 'cookie' + '\1.html');
    finally
        sss.free
    end;
    webbrowser1.Navigate(buffer + 'cookie' + '\1.html');
end;

end.
