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
    //�����ĸ��ӳ������ڲ���ҩƷ������֪ʶhtml
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
    len: array of integer; //��¼ÿ���ĳ���
    len_level: array[0..50] of integer; //��¼ĳһ������λ�ڵļ���
    level_fmt: string; //��¼�ּ���ʽ(��2-2-2-2-2)
    level_cnt: integer; //��¼�ܼ���
    sele_node: Ttreenode; //��¼��ǰѡ�еĽ��
    edit_mode: integer; //��¼��ǰ����ģʽ��=0 ��,=1 ���� =2 ������ =3 �޸�
    len_char: integer; //��¼begin_char�ĳ���
    field_bm, field_mc: string; //��¼Ҫʹ�õı�����е��ֶ�
    tb_name, lbxz: string; //��¼Ҫʹ�õı�������

implementation
uses p_dm;
{$R *.DFM}

procedure Tfrm_zyzx.showtree(tree1: Ttreeview; str1, str2, str3, str4: string);
var
    node, node1: Ttreenode;
    txt, s, s1, tb_name: string;
    i, j, k, sum, len_char, edit_mode: integer;
begin

//��ʼ������
    tb_name := str1;
    field_bm := str2;
    field_mc := str3;
    len_char := length('-');
    edit_mode := 0;
    sum := 0; //��¼�ܳ���
    k := 0;
    level_fmt := '4-4-4-4-4';

//��ʼ������len_level
    for i := 0 to 50 do
        len_level[i] := 0;


//����ܼ����� level_cnt ��
    level_cnt := 1;
    for i := 1 to length(level_fmt) do
    begin
        s := copy(level_fmt, i, 1);
        if s = '-' then
            level_cnt := level_cnt + 1;
    end;

    setlength(len, level_cnt); //�����ܼ���

//����������ȷ������� len ��
//ͬʱ�����ó���λ�ڵļ����������� len_level ��
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
    main_dwdl.commandtext := 'select dm,����,���� from ' + tb_name + ' order by ' + field_bm;
    main_dwdl.open;

//��ӽ��
    tree1.Items.Clear;
    node := tree1.Items.Add(nil, str4);
    node.ImageIndex := 0;
    main_dwdl.First;
    while not main_dwdl.Eof do
    begin
        k := length(trim(main_dwdl[field_bm])); //����ñ���ĳ���
        if len_level[k] = 1 then //���Ϊ��һ��
        begin
            node1 := tree1.Items.AddChild(node, trim(main_dwdl[field_bm]) + begin_char + trim(main_dwdl[field_mc]) + end_char);
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
                node1 := tree1.Items.Add(node1, trim(main_dwdl[field_bm]) + begin_char + trim(main_dwdl[field_mc]) + end_char);
                node1.ImageIndex := 1;
                node1.SelectedIndex := 2;
                j := k;
            end;
            if k > j then //�ӽ��
            begin
          //���Ӹý��
                node1 := tree1.Items.AddChild(node1, trim(main_dwdl[field_bm]) + begin_char + trim(main_dwdl[field_mc]) + end_char);
                node1.ImageIndex := 1;
                node1.SelectedIndex := 2;
                j := k;
            end;
            if k < j then //�������
            begin
                while k <> j do //�����½���ͬ�����
                begin
                    node1 := node1.Parent;
                    txt := copy(node1.text, 1, pos(begin_char, node1.text) - 1);
                    j := length(txt);
                end;
          //���Ӹý��
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
//���ɾ�����ǿ�Ŀ¼,����bEmptyDirΪTrue
//��ʼʱ,bEmptyDirΪTrue
    bEmptyDir := True;
//�ȱ��浱ǰĿ¼
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
//���ǿ�Ŀ¼,��bEmptyDirΪFalse
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
//����ǿ�Ŀ¼,��ɾ���ÿ�Ŀ¼
    if bEmptyDir then
    begin
//������һ��Ŀ¼
        ChDir('..');
//ɾ����Ŀ¼
        RemoveDirectory(PChar(sDirName));
    end;

//�ص�ԭ����Ŀ¼��
    ChDir(sCurDir);
    result := true;
end;

function DeleteDir(sDirName: string): Boolean;
begin
    if Length(sDirName) <= 0 then
        exit;
//ɾ��...
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
    T: TSHfileOpStruct; //Ҫ����ShellApI
    P: string;
begin
    GetTempPath(sizeof(buffer), buffer);
    P := buffer + 'cookie'; //Ҫд����·����
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
        node := tree3.Items.Add(nil, trim(sp_cx_zyzx.fieldbyname('ҩ�����').asstring) + '_' + trim(sp_cx_zyzx.fieldbyname('ҩ������').asstring));
        while not sp_cx_zyzx.Eof do
        begin
            sp_cx_zyzx.Next;
            tree3.items.Add(node, trim(sp_cx_zyzx.fieldbyname('ҩ�����').asstring) + '_' + trim(sp_cx_zyzx.fieldbyname('ҩ������').asstring));
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
    node := tree1.Items.Add(nil, trim(sp_cx_zyzx.fieldbyname('ҩ�����').asstring) + '_' + trim(sp_cx_zyzx.fieldbyname('ҩ������').asstring));
    while not sp_cx_zyzx.Eof do
    begin
        sp_cx_zyzx.Next;
        tree1.items.Add(node, trim(sp_cx_zyzx.fieldbyname('ҩ�����').asstring) + '_' + trim(sp_cx_zyzx.fieldbyname('ҩ������').asstring));
        node.ImageIndex := 1;
    end;
    showtree(tree2, '�鷽', 'dm', '����', '�鷽��������ƫ�����Ʒ�����ʳ');

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
