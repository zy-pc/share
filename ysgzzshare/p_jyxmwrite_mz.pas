unit p_jyxmwrite_mz;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ADODB, Grids, DBGridEh, ComCtrls, ExtCtrls, ImgList, GridsEh, StdCtrls,
  CheckLst, cxControls, cxContainer, cxCheckListBox, Buttons, cxEdit, cxLabel,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxTextEdit,
  cxGridLevel, cxClasses, cxGridCustomView, cxGrid, cxPC, Menus,
  cxLookAndFeelPainters, cxButtons, cxCheckBox, DBGridEhGrouping;
const
  zp = '22222';
  zpjx = 5;
  begin_char = '_';
type
  Tfrm_jyxmwrite_mz = class(TForm)
    ad_sfxm: TADODataSet;
    ad_sfdl: TADODataSet;
    ds_sfxm: TDataSource;
    ImageList1: TImageList;
    ad_cyjc: TADODataSet;
    cxLabel1: TcxLabel;
    ProgressBar1: TProgressBar;
    cxPageControl1: TcxPageControl;
    cxTabSheet2: TcxTabSheet;
    cxTabSheet1: TcxTabSheet;
    Panel4: TPanel;
    tv_A: TTreeView;
    Panel1: TPanel;
    tv_B: TTreeView;
    Panel5: TPanel;
    Panel6: TPanel;
    txt_B: TcxTextEdit;
    txt_A: TcxTextEdit;
    bt_A: TcxButton;
    bt_B: TcxButton;
    cxStyleRepository1: TcxStyleRepository;
    GridTableViewStyleSheetUserFormat3: TcxGridTableViewStyleSheet;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxStyle5: TcxStyle;
    cxStyle6: TcxStyle;
    cxStyle7: TcxStyle;
    cxStyle8: TcxStyle;
    cxStyle9: TcxStyle;
    cxStyle10: TcxStyle;
    cxStyle11: TcxStyle;
    Panel2: TPanel;
    Panel7: TPanel;
    gcList: TcxGrid;
    gvList: TcxGridDBTableView;
    gvListColumn1: TcxGridDBColumn;
    gvListColumn2: TcxGridDBColumn;
    gvListColumn3: TcxGridDBColumn;
    gvListColumn4: TcxGridDBColumn;
    gvListColumn5: TcxGridDBColumn;
    gvListColumn6: TcxGridDBColumn;
    gvListColumn7: TcxGridDBColumn;
    gcListLevel1: TcxGridLevel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    clb: TCheckListBox;
    cmd_jydr: TADOCommand;
    Panel3: TPanel;
    Panel8: TPanel;
    DBGridEh1: TDBGridEh;
    ds_cx_xmdm: TDataSource;
    qry_cx_xmdm: TADOQuery;
    sp_cx_yp_yz_one: TADOStoredProc;
    qry_t: TADOQuery;
    procedure FormShow(Sender: TObject);
    procedure tv_BChange(Sender: TObject; Node: TTreeNode);
    procedure tv_AChange(Sender: TObject; Node: TTreeNode);
    procedure FormActivate(Sender: TObject);
    procedure txt_AKeyPress(Sender: TObject; var Key: Char);
    procedure txt_APropertiesChange(Sender: TObject);
    procedure cxPageControl1Change(Sender: TObject);
    procedure txt_BKeyPress(Sender: TObject; var Key: Char);
    procedure txt_BPropertiesChange(Sender: TObject);
    procedure gvListKeyPress(Sender: TObject; var Key: Char);
    procedure clbDrawItem(Control: TWinControl; Index: Integer;
      Rect: TRect; State: TOwnerDrawState);
    procedure clbClickCheck(Sender: TObject);
    procedure bt_AClick(Sender: TObject);
    procedure bt_BClick(Sender: TObject);
    procedure cxTabSheet2Show(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    pub_key: string;
    dldm: string;
    dymk: string; //调用模块 my-门诊调用,zy-住院调用
    tmh, zyh, yzlb, yzsx: string;
    procedure xminyz(strxm: string; strdrmk: string);
    procedure tv_AbindItem;
    procedure tv_Bbinditem;
    procedure get_dl(str: string);
    procedure get_yzxm(str: string);
    function checkty(txmdm: string): Boolean; //检查检验模板中的项目是否停用
  end;

var
  frm_jyxmwrite_mz: Tfrm_jyxmwrite_mz;
  yzsx, xmmc, pr_yzlb, xzdm: string;
  i: integer;
function TreeFindItem(Sender: TTreeView; Name: string; parent_n: integer): TTreeNode;
function Treeleavelleng(zpkeyleng: integer): integer;


implementation

{$R *.DFM}
uses p_dm, p_func, p_mzblinput;

function Treeleavelleng(zpkeyleng: integer): integer;
var
  i, levellength: integer;
begin
  levellength := 0;
  for i := 1 to zpjx do
  begin
    levellength := levellength + strtoint(copy(zp, i, 1));
    if levellength = zpkeyleng then
    begin
      levellength := levellength - strtoint(copy(zp, i, 1));
      break;
    end;
  end;
  result := levellength;
end;

function Tfrm_jyxmwrite_mz.checkty(txmdm: string): Boolean;
begin
  result := false;
  qry_t.Close;
  qry_t.SQL.Text := 'select * from sys_yzxm where xmdm=' + #39 + txmdm + #39 + ' and mzbz=1 and qybz=1';
  qry_t.Open;
  if qry_t.RecordCount = 0 then
    result := True
  else
    result := false;
end;

function TreeFindItem(Sender: TTreeView; Name: string; parent_n: integer): TTreeNode;
var
  Nodeitem: TTreeNode;
begin
  NodeItem := Sender.items.getfirstnode;
  if parent_n > 0 then begin
    repeat
      if copy(trim(NodeItem.text), 1, parent_n) <> Name then
      begin
        NodeItem := NodeItem.getnext;
      end;
    until copy(trim(NodeItem.text), 1, parent_n) = Name;
  end;
  if parent_n = 0 then begin
    result := sender.Items.GetFirstNode;
  end else begin
    Result := NodeItem;
  end
end;

procedure Tfrm_jyxmwrite_mz.FormActivate(Sender: TObject);
var
  n, parent_n: integer;
  zpkey: string;
  zptext: string;
  Node: TTreeNode;
  dlmc, fydm, fymc: string;
begin
  ad_cyjc.close;
  if (p_xzfysfbz = 'True') then
  begin
    if yzlb = '检验' then
      ad_cyjc.CommandText := 'select a.dm,a.mc,a.pym,xmdm,xmmc,mcjx,dldm,xsbz,sx,yb from sys_yzdl a,' +
        ' sys_yzxm b,sys_fysfxm c,sys_fylb d where d.dm=c.dm and d.dm=' + #39 + p_brfylb + #39 + ' and b.fydm=c.fydm and a.dm=dldm and qybz=1 and mzbz=1 and xsbz=1 and dldm  like ' + #39 + '0101%' + #39 + ' order by dldm,xsxh,xmmc'
    else
      if yzlb = '检查' then
        ad_cyjc.CommandText := 'select a.dm,a.mc,a.pym,xmdm,xmmc,mcjx,dldm,xsbz,sx,yb,xsxh from sys_yzdl a,' +
          ' sys_yzxm b,sys_fysfxm c,sys_fylb d where d.dm=c.dm and d.dm=' + #39 + p_brfylb + #39 + ' and b.fydm=c.fydm and a.dm=dldm and qybz=1 and mzbz=1 and xsbz=1 and dldm  like ' + #39 + '0102%' + #39 + ' order by dldm,xsxh,xmmc'
      else
        if yzlb = '治疗' then
          ad_cyjc.CommandText := 'select a.dm,a.mc,a.pym,xmdm,xmmc,mcjx,dldm,xsbz,sx,yb from sys_yzdl a,' +
            ' sys_yzxm b,sys_fysfxm c,sys_fylb d where d.dm=c.dm and d.dm=' + #39 + p_brfylb + #39 + ' and b.fydm=c.fydm and a.dm=dldm and qybz=1 and mzbz=1 and xsbz=1 and  (a.dm like ' + #39 + '010301%' + #39 +
            ') order by dldm,xsxh,xmmc';
  end else
  begin
    if yzlb = '检验' then
      ad_cyjc.CommandText := 'select dm,mc,a.pym,xmdm,xmmc,mcjx,dldm,xsbz,sx,yb from sys_yzdl a,' +
        ' sys_yzxm b where dm=dldm and qybz=1 and mzbz=1 and xsbz=1 and dldm  like ' + #39 + '0101%' + #39 + ' order by dldm,xsxh,xmmc'
    else
      if yzlb = '检查' then
        ad_cyjc.CommandText := 'select dm,mc,a.pym,xmdm,xmmc,mcjx,dldm,xsbz,sx,yb,xsxh from sys_yzdl a,' +
          ' sys_yzxm b where dm=dldm and qybz=1 and mzbz=1 and xsbz=1 and dldm  like ' + #39 + '0102%' + #39 + ' order by dldm,xsxh,xmmc'
      else
        if yzlb = '治疗' then
          ad_cyjc.CommandText := 'select dm,mc,a.pym,xmdm,xmmc,mcjx,dldm,xsbz,sx,yb from sys_yzdl a,' +
            ' sys_yzxm b where dm=dldm and qybz=1 and mzbz=1 and xsbz=1 and  (dm like ' + #39 + '010301%' + #39 +
            ') order by dldm,xsxh,xmmc';
  end;
  ad_cyjc.Open;
  ad_cyjc.First;
  clb.Visible := false;
  clb.Items.Clear;
  if ad_cyjc.RecordCount > 400 then
    ProgressBar1.Max := 400
  else
    ProgressBar1.Max := ad_cyjc.RecordCount;
  ProgressBar1.Position := 0;

  i := 0;
  cxlabel1.top := progressbar1.Top + 1;
  cxlabel1.Left := progressbar1.Width div 2 - 61;

{while  (not ad_cyjc.Eof) and (i<=400) do
 begin
  dlmc:=ad_cyjc.FieldByName('mc').asstring;
  clb.Items.Add;
  clb.Items.Items[i].Text:=dlmc;
  clb.Items.Items[i].Enabled:=false;

  i:=i+1;
  while (dlmc=ad_cyjc.FieldByName('mc').asstring) and (not ad_cyjc.eof ) do
   begin
     fymc:=ad_cyjc.FieldByName('xmmc').asstring;
     fydm:=ad_cyjc.FieldByName('xmdm').asstring;
     clb.Items.Add;
     clb.Items.Items[i].Text:=fydm+'_'+fymc;
     i:=i+1;
     ProgressBar1.Position := ProgressBar1.Position + 1;
     cxLabel1.Caption := '数据准备已完成(' + formatfloat('#0.00', ProgressBar1.Position / ProgressBar1.Max * 100) + '%)';
     cxLabel1.Refresh;
     ad_cyjc.Next;
   end;

 end;}
  clb.Visible := true;
end;

procedure Tfrm_jyxmwrite_mz.get_dl(str: string);
begin
  str := '%' + str + '%';
  if yzlb = '检验' then
    with ad_sfdl do begin
      close;
      commandtext := 'select dm,mc from  sys_yzdl where dm like ' + #39 + '0101%' + #39 +
        ' AND (mc like ' + #39 + str + #39 + ' OR pym like ' + #39 + str + #39 + ' OR dm like ' + #39 + str + #39 + ')  order by dm';
      open;
    end
  else
    if yzlb = '检查' then
      with ad_sfdl do begin
        close;
        commandtext := 'select dm,mc from  sys_yzdl where dm like ' + #39 + '0102%' + #39 +
          ' AND (mc like ' + #39 + str + #39 + ' OR pym like ' + #39 + str + #39 + ' OR dm like ' + #39 + str + #39 + ')  order by dm';
        open;
      end
    else
      if yzlb = '治疗' then
        with ad_sfdl do begin
          close;
          commandtext := 'select dm,mc from  sys_yzdl where (dm like ' + #39 + '0103%' + #39 +
            ' or dm like ' + #39 + '0104%' + #39 +
            ' or dm like ' + #39 + '0107%' + #39 +
            ') AND (mc like ' + #39 + str + #39 + ' OR pym like ' + #39 + str + #39 + ' OR dm like ' + #39 + str + #39 + ')  order by dm';
          open;
        end;
end;

procedure Tfrm_jyxmwrite_mz.tv_AbindItem;
var
  n, parent_n: integer;
  zpkey: string;
  zptext: string;
  Node: TTreeNode;
  dlmc, fydm, fymc: string;
begin
   //处理树型结构
  pub_key := '';
  tv_B.Items.Clear;
  Node := nil;

  if ad_sfdl.RecordCount = 0 then
  begin
    abort;
  end;
  ad_sfdl.first;

// --处理tv_A树
  tv_A.Items.Clear;
  Node := nil;

  ad_sfdl.first;
  ZPKEY := trim(ad_sfdl['dm']);
  N := LENGTH(ZPKEY);
  while not ad_sfdl.Eof do
  begin
    ZPKEY := trim(ad_sfdl['dm']);
    ZPTEXT := trim(ad_sfdl['mc']);
    if LENGTH(ZPKEY) = N then
    begin
      Node := tv_A.items.Add(Node, ZPkey + '_' + zptext)
    end else if LENGTH(ZPKEY) > N then
    begin
      Node := tv_A.items.AddChild(Node, ZPkey + '_' + zptext);
    end else
    begin
      parent_n := Treeleavelleng(length(zpkey));
      node := TreeFindItem(tv_A, copy(zpkey, 1, parent_n), parent_n);
      if parent_n <> 0 then
      begin
        node := tv_A.ITEMS.ADDchild(node, ZPkey + '_' + zptext);
      end else
      begin
        Node := tv_A.items.Add(Node, ZPkey + '_' + zptext)
      end;
    end;
    N := LENGTH(ZPKEY);
    ad_sfdl.Next;
    if node <> nil then
      node.ImageIndex := 1;
  end;
  ad_sfdl.First;
  tv_A.TopItem.Expand(false);
  ad_sfdl.First;
end;

procedure Tfrm_jyxmwrite_mz.tv_BbindItem;
var
  n, parent_n: integer;
  zpkey: string;
  zptext: string;
  Node: TTreeNode;
  dlmc, fydm, fymc: string;
begin
//处理树型结构
  pub_key := '';
  tv_B.Items.Clear;
  Node := nil;

  if ad_sfdl.RecordCount = 0 then
  begin
    abort;
  end;
  ad_sfdl.first;
  ZPKEY := trim(ad_sfdl['dm']);
  N := LENGTH(ZPKEY);
  while not ad_sfdl.Eof do
  begin
    ZPKEY := trim(ad_sfdl['dm']);
    ZPTEXT := trim(ad_sfdl['mc']);
    if LENGTH(ZPKEY) = N then
    begin
      Node := tv_B.items.Add(Node, ZPkey + '_' + zptext)
    end else if LENGTH(ZPKEY) > N then
    begin
      Node := tv_B.items.AddChild(Node, ZPkey + '_' + zptext);
    end else
    begin
      parent_n := Treeleavelleng(length(zpkey));
      node := TreeFindItem(tv_B, copy(zpkey, 1, parent_n), parent_n);
      if parent_n <> 0 then
      begin
        node := tv_B.ITEMS.ADDchild(node, ZPkey + '_' + zptext);
      end else
      begin
        Node := tv_B.items.Add(Node, ZPkey + '_' + zptext)
      end;
    end;
    N := LENGTH(ZPKEY);
    ad_sfdl.Next;
    if node <> nil then
      node.ImageIndex := 1;
  end;
  ad_sfdl.First;
  tv_B.TopItem.Expand(true);
end;

procedure Tfrm_jyxmwrite_mz.FormShow(Sender: TObject);
begin
//处理树型结构
  get_dl('');
  tv_AbindItem;
  tv_BbindItem;
  txt_A.SetFocus;
  xzdm := '';
  if pub_yydm <> '0003' then
  begin
    Panel3.Visible := false;
    Panel2.Align := alClient;
  end;
end;

procedure Tfrm_jyxmwrite_mz.get_yzxm(str: string);
begin
  str := '%' + str + '%';
  ad_sfxm.close;
  ad_sfxm.CommandText := 'select * from sys_yzxm  where xmmc like ' + #39 + str + #39
    + ' OR pym like ' + #39 + str + #39 + ' OR xmdm like ' + #39 + str + #39 + ' order by xmdm,sx';
  ad_sfxm.open;
end;

procedure Tfrm_jyxmwrite_mz.gvListKeyPress(Sender: TObject; var Key: Char);
begin
  if key = char(13) then
  begin
    bt_B.SetFocus;
  end;
end;

procedure Tfrm_jyxmwrite_mz.tv_BChange(Sender: TObject;
  Node: TTreeNode);
begin
  if tv_B.selected <> nil then
  begin
    if tv_B.selected.text <> '' then
    begin
      pub_key := trim(tv_B.selected.text);
      pub_key := copy(pub_key, 1, pos('_', pub_key) - 1);
      dldm := pub_key;
      pub_key := copy(pub_key, 1, 2);
      ad_sfdl.Locate('dm', pub_key, []);
      ad_sfxm.close;
      if yzlb = '治疗' then
        ad_sfxm.CommandText := 'select dm,mc,b.pym,xmdm,xmmc,dw,mcjx,dldm,xsbz,sx,yb from sys_yzdl a,' +
          ' sys_yzxm b where dm=dldm and qybz=1 and mzbz=1 and xsbz=1 and dldm  like ' + #39 + dldm + '%' + #39 + ' order by dldm,xsxh,xmmc'

      else
        ad_sfxm.CommandText := 'select dm,mc,b.pym,xmdm,xmmc,dw,mcjx,dldm,xsbz,sx,yb from sys_yzdl a,' +
          ' sys_yzxm b where dm=dldm and qybz=1 and mzbz=1 and xsbz=1 and dldm  like ' + #39 + dldm + '%' + #39 + ' order by dldm,xsxh,xmmc';
      ad_sfxm.open;
    end
    else
      pub_key := '';
  end;
end;

procedure Tfrm_jyxmwrite_mz.txt_AKeyPress(Sender: TObject; var Key: Char);
begin
  if key = char(13) then
  begin
    get_dl(trim(txt_a.Text));
    tv_AbindItem;
    tv_a.SetFocus;
  end;
end;

procedure Tfrm_jyxmwrite_mz.txt_APropertiesChange(Sender: TObject);
begin
  if trim(txt_a.Text) = '' then
  begin
    get_dl('');
    tv_AbindItem;
    tv_A.SetFocus;
  end;
end;

procedure Tfrm_jyxmwrite_mz.txt_BKeyPress(Sender: TObject; var Key: Char);
begin
  if (key = char(13)) and (trim(txt_B.Text) <> '') then
  begin
    get_yzxm(trim(txt_B.Text));
    tv_b.TopItem.Collapse(true);
    gclist.SetFocus;
  end;
end;

procedure Tfrm_jyxmwrite_mz.txt_BPropertiesChange(Sender: TObject);
begin
  if trim(txt_B.Text) = '' then
  begin
    get_dl('');
    tv_BbindItem;
    tv_B.SetFocus;
  end;
end;

procedure Tfrm_jyxmwrite_mz.tv_AChange(Sender: TObject; Node: TTreeNode);
var
  dlmc, fydm, fymc: string;
  recn: integer;
begin
  if tv_A.selected <> nil then
  begin
    if tv_A.selected.text <> '' then
    begin
      pub_key := trim(tv_A.selected.text);
      pub_key := copy(pub_key, 1, pos('_', pub_key) - 1);
      dldm := pub_key;
      pub_key := copy(pub_key, 1, 2);
      ad_sfdl.Locate('dm', pub_key, []);
      if length(dldm) >= 4 then
      begin
        if (p_xzfysfbz = 'True') then
        begin
          ad_sfxm.close;
          if yzlb = '治疗' then
            ad_sfxm.CommandText := 'select a.dm,a.mc,a.pym,xmdm,xmmc,mcjx,dldm,xsbz,sx,yb from sys_yzdl a,' +
              ' sys_yzxm b,sys_fysfxm c ,sys_fylb d where d.dm=c.dm and d.dm=' + #39 + p_brfylb + #39 + ' and b.fydm=c.fydm and a.dm=dldm and qybz=1 and mzbz=1 and xsbz=1 and dldm  like ' + #39 + dldm + '%' + #39 + ' order by dldm,xsxh,xmmc'

          else
            ad_sfxm.CommandText := 'select a.dm,a.mc,a.pym,xmdm,xmmc,mcjx,dldm,xsbz,sx,yb from sys_yzdl a,' +
              ' sys_yzxm b,sys_fysfxm c ,sys_fylb d where d.dm=c.dm and d.dm=' + #39 + p_brfylb + #39 + ' and b.fydm=c.fydm and a.dm=dldm and qybz=1 and mzbz=1 and xsbz=1 and dldm  like ' + #39 + dldm + '%' + #39 + ' order by dldm,xsxh,xmmc';
          ad_sfxm.open;
        end else
        begin
          ad_sfxm.close;
          if yzlb = '治疗' then
            ad_sfxm.CommandText := 'select dm,mc,a.pym,xmdm,xmmc,mcjx,dldm,xsbz,sx,yb from sys_yzdl a,' +
              ' sys_yzxm b where dm=dldm and qybz=1 and mzbz=1 and xsbz=1 and dldm  like ' + #39 + dldm + '%' + #39 + ' order by dldm,xsxh,xmmc'

          else
            ad_sfxm.CommandText := 'select dm,mc,a.pym,xmdm,xmmc,mcjx,dldm,xsbz,sx,yb from sys_yzdl a,' +
              ' sys_yzxm b where dm=dldm and qybz=1 and mzbz=1 and xsbz=1 and dldm  like ' + #39 + dldm + '%' + #39 + ' order by dldm,xsxh,xmmc';
          ad_sfxm.open;
        end;
      end;
 //处理选择系统
      recn := ad_sfxm.RecordCount;
      ad_sfxm.first;
      clb.Visible := false;
      clb.Items.Clear;
      ProgressBar1.Max := ad_sfxm.RecordCount;
      ProgressBar1.Position := 0;

      i := 0;
      while (not ad_sfxm.Eof) and (recn < 500) do
      begin
        dlmc := ad_sfxm.FieldByName('mc').asstring;
        clb.Visible := false;
        clb.Items.Add(dlmc);
        i := i + 1;
        while (dlmc = ad_sfxm.FieldByName('mc').asstring) and (not ad_sfxm.eof) do
        begin
//          if Pos(','+ ad_sfxm.FieldByName('xmdm').asstring+',',','+xzdm)>0 then
//            clb.Checked[i]:=True
//          else
//            clb.Checked[i] := False;
          fymc := ad_sfxm.FieldByName('xmmc').asstring;
          fydm := ad_sfxm.FieldByName('xmdm').asstring;
          clb.Items.Add(fydm + '_' + fymc);
          if pub_yydm = '0003' then
          begin
            if Pos(',' + ad_sfxm.FieldByName('xmdm').asstring + ',', ',' + xzdm) > 0 then
              clb.Checked[i] := True
            else
              clb.Checked[i] := False;
          end;
          ProgressBar1.Position := ProgressBar1.Position + 1;
          cxLabel1.Caption := '数据准备已完成(' + formatfloat('#0.00', ProgressBar1.Position / ProgressBar1.Max * 100) + '%)';
          cxLabel1.Refresh;
          i := i + 1;
          ad_sfxm.Next;
        end;

      end;
      clb.Visible := true;
    end
    else
      pub_key := '';
  end;
end;

procedure Tfrm_jyxmwrite_mz.xminyz(strxm: string; strdrmk: string);
var
  str: string;
begin
  str := 'INSERT INTO mzdzbl_mzyz(ph, tmh, zyh, xmdm, xmmc, lb, dw, ypdwid, ypbzbl,' +
    ' sl, yplsj, ypcgj, ypyf, ypyl, yldw, yytj, yplb, jcmd, sfbz, msbz, zxbz, fzbz,' +
    ' tzrq, tzry, zfrq, zfry, zxrq, zxry, xgrq, xgry, czks, kdks, kdrq, kdys, yzrq,' +
    ' yzsx, shbz, shry, jcbw, jcff, ypkcbz, czys, gg, fzph, jyyb, jyflbh, xh, bz) SELECT ' +
    #39 + #39 + ', left(:tmh,9), :zyh, a.xmdm, a.xmmc,' + #39 + yzlb + #39 + ', a.dw,' +
    ' 0, 1, 1, isnull(b.sfbz,0), 0, ' + #39 + #39 + ', null, ' + #39 + #39 + ', ' +
    #39 + #39 + ', ' + #39 + #39 + ', null, 0, 0, 0, 0, null, null, null, null, null,' +
    ' null, null,null, case :drbz WHEN ' + #39 + 'mz' + #39 + ' THEN a.mzks WHEN ' +
    #39 + 'zy' + #39 + ' THEN a.zyks END, :kdks, :kdrq, :kdys, null, ' + #39 + yzsx + #39 +
    ', 0, null, null, null, 0, null, null, space(0), a.yb, null, 0, null' +
    ' FROM sys_yzxm a left join sys_kjsfxm b on a.fydm=b.fydm' +
    ' WHERE a.xmdm=:dm and a.xmdm not in (' +
    'select xmdm from mzdzbl_mzyz c where c.kdys=:kdys1 and c.xmdm=:cxdm and c.zxbz=0 and c.sfbz=0 and c.zyh=:zyh1)';
  try
    cmd_jydr.CommandText := str;
    cmd_jydr.Parameters.ParamValues['tmh'] := tmh;
    cmd_jydr.Parameters.ParamValues['zyh'] := zyh;
    cmd_jydr.Parameters.ParamValues['kdks'] := pub_ksdm;
    cmd_jydr.Parameters.ParamValues['kdrq'] := frm_func.curr_date;
    cmd_jydr.Parameters.ParamValues['kdys'] := pub_czydm;
    cmd_jydr.Parameters.ParamValues['kdys1'] := pub_czydm;
    cmd_jydr.Parameters.ParamValues['dm'] := strxm;
    cmd_jydr.Parameters.ParamValues['drbz'] := dymk;
    cmd_jydr.Parameters.ParamValues['cxdm'] := strxm;
    cmd_jydr.Parameters.ParamValues['zyh1'] := zyh;
  //cmd_jydr.Parameters.ParamValues['cxlb'] := yzlb;
    cmd_jydr.Execute;
  except
    on E: Exception do
    begin
      ShowMessage(str + E.Message);
      // application.MessageBox('医嘱导入失败，请验证后重新操作!', '提示', 0 + 48);
    end;
  end;
end;

procedure Tfrm_jyxmwrite_mz.clbClickCheck(Sender: TObject);
var
  i: integer;
  bl: boolean;
  xzdm_1: string;
begin
  i := clb.ItemIndex;
  bl := clb.Checked[i];
  if Pos('_', clb.Items.Strings[i]) > 0 then
  begin
    if pub_yydm = '0003' then
    begin
      if bl = false then
      begin
        xzdm := StringReplace(xzdm, copy(clb.Items.Strings[i], 1, 4), '', [rfReplaceAll]);
      end
      else
      begin
        xzdm := xzdm + copy(clb.Items.Strings[i], 1, 4) + ',';
      end;
      xzdm_1 := ',' + xzdm;
      qry_cx_xmdm.close;
      qry_cx_xmdm.sql.text := 'select * from sys_yzxm where charindex('',''+xmdm+'','',' +
        '''' + xzdm_1 + '''' + ')>0';
      qry_cx_xmdm.Open;
      xzdm := StringReplace(xzdm, ',,,,,,,,,,,,,,,,,', ',,,,,,,,,,,,,,,,', [rfReplaceAll]);
      xzdm := StringReplace(xzdm, ',,,,,,,,,,,,,,,,', ',,,,,,,,,,,,,,,', [rfReplaceAll]);
      xzdm := StringReplace(xzdm, ',,,,,,,,,,,,,,,', ',,,,,,,,,,,,,,', [rfReplaceAll]);
      xzdm := StringReplace(xzdm, ',,,,,,,,,,,,,,', ',,,,,,,,,,,,,', [rfReplaceAll]);
      xzdm := StringReplace(xzdm, ',,,,,,,,,,,,,', ',,,,,,,,,,,,', [rfReplaceAll]);
      xzdm := StringReplace(xzdm, ',,,,,,,,,,,,', ',,,,,,,,,,,', [rfReplaceAll]);
      xzdm := StringReplace(xzdm, ',,,,,,,,,,,', ',,,,,,,,,,', [rfReplaceAll]);
      xzdm := StringReplace(xzdm, ',,,,,,,,,,', ',,,,,,,,,', [rfReplaceAll]);
      xzdm := StringReplace(xzdm, ',,,,,,,,,', ',,,,,,,,', [rfReplaceAll]);
      xzdm := StringReplace(xzdm, ',,,,,,,,', ',,,,,,,', [rfReplaceAll]);
      xzdm := StringReplace(xzdm, ',,,,,,,', ',,,,,,', [rfReplaceAll]);
      xzdm := StringReplace(xzdm, ',,,,,,', ',,,,,', [rfReplaceAll]);
      xzdm := StringReplace(xzdm, ',,,,,', ',,,,', [rfReplaceAll]);
      xzdm := StringReplace(xzdm, ',,,,', ',,,', [rfReplaceAll]);
      xzdm := StringReplace(xzdm, ',,,', ',,', [rfReplaceAll]);
      xzdm := StringReplace(xzdm, ',,', ',', [rfReplaceAll]);
    end;
    exit;
  end;
  while (i < clb.Items.Count - 1) do
  begin
    i := i + 1;
    if pub_yydm = '0003' then
    begin
      if Pos('_', clb.Items.Strings[i]) = 0 then
      begin
        xzdm_1 := ',' + xzdm;
        qry_cx_xmdm.close;
        qry_cx_xmdm.sql.text := 'select * from sys_yzxm where charindex('',''+xmdm+'','',' +
          '''' + xzdm_1 + '''' + ')>0';
        qry_cx_xmdm.Open;
        xzdm := StringReplace(xzdm, ',,,,,,,,,,,,,,,,,', ',,,,,,,,,,,,,,,,', [rfReplaceAll]);
        xzdm := StringReplace(xzdm, ',,,,,,,,,,,,,,,,', ',,,,,,,,,,,,,,,', [rfReplaceAll]);
        xzdm := StringReplace(xzdm, ',,,,,,,,,,,,,,,', ',,,,,,,,,,,,,,', [rfReplaceAll]);
        xzdm := StringReplace(xzdm, ',,,,,,,,,,,,,,', ',,,,,,,,,,,,,', [rfReplaceAll]);
        xzdm := StringReplace(xzdm, ',,,,,,,,,,,,,', ',,,,,,,,,,,,', [rfReplaceAll]);
        xzdm := StringReplace(xzdm, ',,,,,,,,,,,,', ',,,,,,,,,,,', [rfReplaceAll]);
        xzdm := StringReplace(xzdm, ',,,,,,,,,,,', ',,,,,,,,,,', [rfReplaceAll]);
        xzdm := StringReplace(xzdm, ',,,,,,,,,,', ',,,,,,,,,', [rfReplaceAll]);
        xzdm := StringReplace(xzdm, ',,,,,,,,,', ',,,,,,,,', [rfReplaceAll]);
        xzdm := StringReplace(xzdm, ',,,,,,,,', ',,,,,,,', [rfReplaceAll]);
        xzdm := StringReplace(xzdm, ',,,,,,,', ',,,,,,', [rfReplaceAll]);
        xzdm := StringReplace(xzdm, ',,,,,,', ',,,,,', [rfReplaceAll]);
        xzdm := StringReplace(xzdm, ',,,,,', ',,,,', [rfReplaceAll]);
        xzdm := StringReplace(xzdm, ',,,,', ',,,', [rfReplaceAll]);
        xzdm := StringReplace(xzdm, ',,,', ',,', [rfReplaceAll]);
        xzdm := StringReplace(xzdm, ',,', ',', [rfReplaceAll]);
        exit;
      end
      else
      begin
  //    else
  //    begin
  //      if pub_yydm='0003' then
  //      begin
        if bl = false then
        begin
          xzdm := StringReplace(xzdm, copy(clb.Items.Strings[i], 1, 4), '', [rfReplaceAll]);
        end
        else
        begin
          xzdm := xzdm + copy(clb.Items.Strings[i], 1, 4) + ',';
        end;
  //      end;
  //    end;
        clb.Checked[i] := bl;
      end;
    end
    else
    begin
      if Pos('_', clb.Items.Strings[i]) = 0 then
        exit
      else
        clb.Checked[i] := bl;
    end;

  end;
  if pub_yydm = '0003' then
  begin
    xzdm_1 := ',' + xzdm;
    qry_cx_xmdm.close;
    qry_cx_xmdm.sql.text := 'select * from sys_yzxm where charindex('',''+xmdm+'','',' +
      '''' + xzdm_1 + '''' + ')>0';
    qry_cx_xmdm.Open;
    xzdm := StringReplace(xzdm, ',,,,,,,,,,,,,,,,,', ',,,,,,,,,,,,,,,,', [rfReplaceAll]);
    xzdm := StringReplace(xzdm, ',,,,,,,,,,,,,,,,', ',,,,,,,,,,,,,,,', [rfReplaceAll]);
    xzdm := StringReplace(xzdm, ',,,,,,,,,,,,,,,', ',,,,,,,,,,,,,,', [rfReplaceAll]);
    xzdm := StringReplace(xzdm, ',,,,,,,,,,,,,,', ',,,,,,,,,,,,,', [rfReplaceAll]);
    xzdm := StringReplace(xzdm, ',,,,,,,,,,,,,', ',,,,,,,,,,,,', [rfReplaceAll]);
    xzdm := StringReplace(xzdm, ',,,,,,,,,,,,', ',,,,,,,,,,,', [rfReplaceAll]);
    xzdm := StringReplace(xzdm, ',,,,,,,,,,,', ',,,,,,,,,,', [rfReplaceAll]);
    xzdm := StringReplace(xzdm, ',,,,,,,,,,', ',,,,,,,,,', [rfReplaceAll]);
    xzdm := StringReplace(xzdm, ',,,,,,,,,', ',,,,,,,,', [rfReplaceAll]);
    xzdm := StringReplace(xzdm, ',,,,,,,,', ',,,,,,,', [rfReplaceAll]);
    xzdm := StringReplace(xzdm, ',,,,,,,', ',,,,,,', [rfReplaceAll]);
    xzdm := StringReplace(xzdm, ',,,,,,', ',,,,,', [rfReplaceAll]);
    xzdm := StringReplace(xzdm, ',,,,,', ',,,,', [rfReplaceAll]);
    xzdm := StringReplace(xzdm, ',,,,', ',,,', [rfReplaceAll]);
    xzdm := StringReplace(xzdm, ',,,', ',,', [rfReplaceAll]);
    xzdm := StringReplace(xzdm, ',,', ',', [rfReplaceAll]);
  end;


end;

procedure Tfrm_jyxmwrite_mz.clbDrawItem(Control: TWinControl;
  Index: Integer; Rect: TRect; State: TOwnerDrawState);
var
  Rgn: HRgn;
  fns: Tfontstyles;
begin
  with TCheckListBox(Control) do
  begin
    fns := Font.Style;
    if pos('_', clb.Items.Strings[index]) = 0 then
    begin
      Canvas.Font.Color := clred;
      Canvas.Font.Style := fns + [fsBold];
    end
    else
    begin
      //Canvas.Font.Color := clblack;
      //Canvas.Font.Style := fns
    end;
    with Rect do
      Rgn := CreateRectRgn(Left + 2, Top + 2, Right - 2, Bottom - 2);
    deleteObject(Rgn);
    Canvas.TextRect(Rect, Rect.Left + 1, Rect.Top + 1, Items[Index]);
  end;
end;

procedure Tfrm_jyxmwrite_mz.bt_AClick(Sender: TObject);
var
  n: integer;
  txmdm: string;
begin
  if pub_yydm <> '0003' then
  begin
    //dm_data.ado_mydata.BeginTrans;
    try
      for n := 0 to i - 1 do
      begin
        if clb.Checked[n] then
        begin
         { if (pos('_', clb.Items.Strings[n]) <> 0) and (LENGTH(clb.Items.Strings[n]) > 0) then
            xminyz(copy(clb.Items.Strings[n], 1, 4), dymk);     }
          //根据系统开关设置是否在录入医嘱的时候录入医嘱明细，非医嘱大项；主要是指检验  wangbing20151031
          if (pos('_', clb.Items.Strings[n]) <> 0) and (LENGTH(clb.Items.Strings[n]) > 0) then
          begin
            txmdm := Trim(copy(clb.Items.Strings[n], 1, 4));
            if frm_mzblinput.find_current_jyxm(txmdm) <> 0 then
            begin
              application.MessageBox('当前医嘱中已有该项目,不能再次添加!', '提示信息', 0 + 16);
              abort;
            end;
            sp_cx_yp_yz_one.Close;
            sp_cx_yp_yz_one.Parameters.ParamValues['@xmdm'] := txmdm;
            sp_cx_yp_yz_one.Open;
            if sp_cx_yp_yz_one.RecordCount <> 1 then
            begin
              Exit;
            end;
            frm_mzblinput.qry_yz.Append;
            if pub_sfqymzyzdb then
            begin
              frm_mzblinput.xmmxinyz(yzlb, Trim(sp_cx_yp_yz_one.FieldByName('xmdm').AsString),
                Trim(sp_cx_yp_yz_one.FieldByName('xmmc').AsString),
                Trim(sp_cx_yp_yz_one.FieldByName('yb').AsString),
                Trim(sp_cx_yp_yz_one.FieldByName('dw').AsString),
                Trim(sp_cx_yp_yz_one.FieldByName('zylsj').AsString),
                Trim(sp_cx_yp_yz_one.FieldByName('mzks').AsString));

            end
            else
            begin
              frm_mzblinput.xminyz(yzlb, Trim(sp_cx_yp_yz_one.FieldByName('xmdm').AsString),
                Trim(sp_cx_yp_yz_one.FieldByName('xmmc').AsString),
                Trim(sp_cx_yp_yz_one.FieldByName('yb').AsString),
                Trim(sp_cx_yp_yz_one.FieldByName('dw').AsString),
                Trim(sp_cx_yp_yz_one.FieldByName('zylsj').AsString),
                Trim(sp_cx_yp_yz_one.FieldByName('mzks').AsString));

            end;
          end;
        end;
      end;
      //dm_data.ado_mydata.CommitTrans;
    except
      //dm_data.ado_mydata.RollbackTrans;
      application.MessageBox('医嘱导入失败，请验证后重新操作!', '提示', 0 + 48);
    end;
  end
  else
  begin
    dm_data.ado_mydata.BeginTrans;
    try
      qry_cx_xmdm.First;
      while not qry_cx_xmdm.eof do
      begin
        xminyz(qry_cx_xmdm.FieldByName('xmdm').asstring, dymk);
        qry_cx_xmdm.Next;

      end;
      dm_data.ado_mydata.CommitTrans;
    except
      dm_data.ado_mydata.RollbackTrans;
      application.MessageBox('医嘱导入失败，请验证后重新操作!', '提示', 0 + 48);
    end;
  end;
end;


procedure Tfrm_jyxmwrite_mz.bt_BClick(Sender: TObject);
var
  txmdm: string;
begin
  if ad_sfxm.RecordCount = 0 then
    abort;
  txmdm := Trim(ad_sfxm.FieldByName('xmdm').AsString);
  //dm_data.ado_mydata.BeginTrans;
  try
    if frm_mzblinput.find_current_yzxm(txmdm) <> 0 then
    begin
      application.MessageBox('当前医嘱中已有该项目,不能再次添加!', '提示信息', 0 + 16);
      abort;
    end;

    xminyz(txmdm, dymk);
    //dm_data.ado_mydata.CommitTrans;
    showmessage('医嘱项目导入成功!');
    ad_sfxm.Next;
    gclist.SetFocus;
  except
    dm_data.ado_mydata.RollbackTrans;
    application.MessageBox('当前医嘱项目已存在或出错，请验证后重新操作!', '提示', 0 + 48);
    gclist.SetFocus;
  end;
end;

procedure Tfrm_jyxmwrite_mz.cxPageControl1Change(Sender: TObject);
begin
  if cxpagecontrol1.ActivePage = cxTabSheet1 then
  begin
    if (tv_B.Items.Count = 0) then
    begin
      get_dl('');
      tv_Bbinditem;
    end;
    txt_B.SetFocus;
  end;
  if cxpagecontrol1.ActivePage = cxTabSheet2 then
  begin
    if (tv_A.Items.Count = 0) then
    begin
      get_dl('');
      tv_Abinditem;
    end;
    txt_A.SetFocus;

  end;
end;


procedure Tfrm_jyxmwrite_mz.cxTabSheet2Show(Sender: TObject);
begin
  get_dl('0101');
  tv_AbindItem;
  tv_BbindItem;
end;

end.
