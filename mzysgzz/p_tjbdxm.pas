unit p_tjbdxm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ADODB, Grids, DBGrids, StdCtrls, ComCtrls, Buttons, ExtCtrls, ImgList;
const
  zp = '22222';
  zpjx = 5;
  begin_char = '_';

type
  Tfrm_tjbdxm = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    DBGrid3: TDBGrid;
    ad_sfxm: TADODataSet;
    ad_tjbdxm: TADODataSet;
    ad_yytj: TADODataSet;
    ds_tj: TDataSource;
    ds_tjbdxm: TDataSource;
    ds_fydm: TDataSource;
    TreeView1: TTreeView;
    ad_sfdl: TADODataSet;
    ImageList1: TImageList;
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    ad_insert: TADOCommand;
    procedure TreeView1Change(Sender: TObject; Node: TTreeNode);
    procedure FormShow(Sender: TObject);
    procedure ad_yytjAfterScroll(DataSet: TDataSet);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    pub_key: string;
    dldm: string;
  end;

var
  frm_tjbdxm: Tfrm_tjbdxm;
function TreeFindItem(Sender: TTreeView; Name: string; parent_n: integer): TTreeNode;
function Treeleavelleng(zpkeyleng: integer): integer;

implementation
uses p_dm, p_func;
{$R *.DFM}

procedure Tfrm_tjbdxm.TreeView1Change(Sender: TObject; Node: TTreeNode);
begin
  if treeview1.selected <> nil then
  begin
    if treeview1.selected.text <> '' then
    begin
      pub_key := trim(treeview1.selected.text);
      pub_key := copy(pub_key, 1, pos('_', pub_key) - 1);
      dldm := pub_key;
      pub_key := copy(pub_key, 1, 2);
      ad_sfdl.Locate('dm', pub_key, []);
      ad_sfxm.close;
      ad_sfxm.Parameters.ParamByName('dldm').value := dldm;
      ad_sfxm.Parameters.ParamByName('tjdm').value := trim(ad_yytj.fieldbyname('dm').asstring);
      ad_sfxm.open;
    end
    else
      pub_key := '';
  end;
end;

procedure Tfrm_tjbdxm.FormShow(Sender: TObject);
var
  n, parent_n: integer;
  zpkey: string;
  zptext: string;
  Node: TTreeNode;
begin
  ad_yytj.close;
  ad_yytj.open;
  pub_key := '';
  treeview1.Items.Clear;
  Node := nil;
  with ad_sfdl do begin
    close;
    commandtext := 'select dm,mc from  sys_kjsfdl order by dm';
    open;
  end;
  if ad_sfdl.RecordCount = 0 then begin
    abort;
  end;
  ad_sfdl.first;
  ZPKEY := trim(ad_sfdl['dm']);
  N := LENGTH(ZPKEY);
  while not ad_sfdl.Eof do begin
    ZPKEY := trim(ad_sfdl['dm']);
    ZPTEXT := trim(ad_sfdl['mc']);
    if LENGTH(ZPKEY) = N then begin
      Node := TREEVIEW1.items.Add(Node, ZPkey + '_' + zptext)
    end else if LENGTH(ZPKEY) > N then begin
      Node := TREEVIEW1.items.AddChild(Node, ZPkey + '_' + zptext);
    end else begin
      parent_n := Treeleavelleng(length(zpkey));
      node := TreeFindItem(treeview1, copy(zpkey, 1, parent_n), parent_n);
      if parent_n <> 0 then begin
        node := TREEVIEW1.ITEMS.ADDchild(node, ZPkey + '_' + zptext);
      end else begin
        Node := TREEVIEW1.items.Add(Node, ZPkey + '_' + zptext)
      end;
    end;
    N := LENGTH(ZPKEY);
    ad_sfdl.Next;
    if node <> nil then node.ImageIndex := 1;
  end;
  ad_sfdl.First;
end;

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

procedure Tfrm_tjbdxm.ad_yytjAfterScroll(DataSet: TDataSet);
begin
  ad_tjbdxm.Close;
  ad_tjbdxm.Parameters.ParamByName('tjdm').value := trim(ad_yytj.fieldbyname('dm').asstring);
  ad_tjbdxm.Open;
end;

procedure Tfrm_tjbdxm.SpeedButton1Click(Sender: TObject);
var i: integer;
begin
  for i := 0 to dbgrid3.SelectedRows.Count - 1 do
  begin
    DBGrid3.DataSource.DataSet.GotoBookmark(pointer(DBGrid3.SelectedRows.Items[i]));
    if not ad_tjbdxm.Locate('sfxm', dbgrid3.DataSource.DataSet.fieldbyname('fydm').asstring, []) then
    begin
      ad_insert.commandtext := 'insert into sys_tjbdxm(sfxm,yytjdm) values(' + #39 +
        dbgrid3.DataSource.DataSet.fieldbyname('fydm').asstring + #39 + ',' +
        #39 + ad_yytj.fieldbyname('dm').asstring + #39 + ')';
      ad_insert.Execute;
    end
  end;
  ad_tjbdxm.Close;
  ad_tjbdxm.Parameters.ParamByName('tjdm').value := trim(ad_yytj.fieldbyname('dm').asstring);
  ad_tjbdxm.Open;
end;

procedure Tfrm_tjbdxm.SpeedButton2Click(Sender: TObject);
begin
  while not ad_sfxm.Eof do
  begin
    if not ad_tjbdxm.Locate('sfxm', ad_sfxm.fieldbyname('fydm').asstring, []) then
    begin
      ad_insert.commandtext := 'insert into sys_tjbdxm(sfxm,yytjdm) values(' + #39 +
        ad_sfxm.fieldbyname('fydm').asstring + #39 + ',' +
        #39 + ad_yytj.fieldbyname('dm').asstring + #39 + ')';
      ad_insert.Execute;
    end
  end;
  ad_tjbdxm.Close;
  ad_tjbdxm.Parameters.ParamByName('tjdm').value := trim(ad_yytj.fieldbyname('dm').asstring);
  ad_tjbdxm.Open;
end;

procedure Tfrm_tjbdxm.SpeedButton3Click(Sender: TObject);
var i: integer;
begin
  for i := 0 to dbgrid2.SelectedRows.Count - 1 do
  begin
    DBGrid2.DataSource.DataSet.GotoBookmark(pointer(DBGrid2.SelectedRows.Items[i]));
    ad_insert.commandtext := 'delete sys_tjbdxm where sfxm=' + #39 +
      dbgrid3.DataSource.DataSet.fieldbyname('sfxm').asstring + #39 + 'and yytjdm=' +
      #39 + ad_yytj.fieldbyname('dm').asstring + #39;
    ad_insert.Execute;
  end;
  ad_sfxm.close;
  ad_sfxm.Parameters.ParamByName('dldm').value := dldm;
  ad_sfxm.Parameters.ParamByName('tjdm').value := trim(ad_yytj.fieldbyname('dm').asstring);
  ad_sfxm.open;
end;

procedure Tfrm_tjbdxm.SpeedButton4Click(Sender: TObject);
begin
  while not ad_tjbdxm.Eof do
  begin
    ad_insert.commandtext := 'delete sys_tjbdxm where sfxm=' + #39 +
      ad_tjbdxm.fieldbyname('sfxm').asstring + #39 + 'and yytjdm=' +
      #39 + ad_yytj.fieldbyname('dm').asstring + #39;
    ad_insert.Execute;
  end;
  ad_sfxm.close;
  ad_sfxm.Parameters.ParamByName('dldm').value := dldm;
  ad_sfxm.Parameters.ParamByName('tjdm').value := trim(ad_yytj.fieldbyname('dm').asstring);
  ad_sfxm.open;
end;

end.
