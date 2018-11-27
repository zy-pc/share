unit DY_authorityFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ComCtrls, ADODB, Buttons;

type
  TAuthorityFrm = class(TForm)
    pnl1: TPanel;
    pnl2: TPanel;
    pnl3: TPanel;
    lbl1: TLabel;
    tvAuthority: TTreeView;
    lstTable: TListBox;
    lstAuthorityTable: TListBox;
    lbl2: TLabel;
    lbl3: TLabel;
    btn3: TBitBtn;
    btn1: TBitBtn;
    btn2: TButton;
    btn4: TButton;
    btn5: TButton;
    btn6: TButton;
    edtName: TEdit;
    btn7: TButton;
    procedure tvAuthorityChange(Sender: TObject; Node: TTreeNode);
    procedure btn2Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn7Click(Sender: TObject);
    procedure edtNameKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    prv_SelectNode: TTreeNode;
    prv_Selectczdm: string;
    procedure proc_SaveAuthority(vTable, czyDM: string);
    procedure proc_deleteAuthority(vTable, czyDM: string);
    procedure proc_showTree(prv_Tree: TTreeView);
    procedure proc_showAuthority(czdm: string; checkys: Boolean = False);
    procedure pro_serczy;

  public
    { Public declarations }
  end;
procedure proc_setupAuthority;
implementation
uses DY_PublicUnit;
{$R *.dfm}

procedure proc_setupAuthority;
var
  AuthorityFrm: TAuthorityFrm;
begin
  AuthorityFrm := TAuthorityFrm.Create(Application);
  with AuthorityFrm do
  begin
    proc_showTree(tvAuthority);
    ShowModal;
    Free;
  end;
end;

procedure TAuthorityFrm.proc_showTree(prv_Tree: TTreeView);
var
  node, nodechild, nodeTemp: TTreeNode;
  SqlStr, Bywm, ksdm: string;
  ADOSetTmp: TADODataSet;
  P: PTableReocrd;
  i: Integer;
  SqlQuy: TADOQuery;
begin
  ADOSetTmp := TADODataSet.Create(Application);
  ADOSetTmp.LockType := ltReadOnly;
  SqlStr := 'select k.dm ksdm,k.mc ksmc from sys_czy c ,sys_ksdm k' +
    ' where c.ksdm=k.dm group by K.dm,k.mc order by k.dm';
  OpenDataSet(ADOSetTmp, SqlStr);
  ADOSetTmp.First;
  prv_Tree.Items.Clear;
  i := 0;
  node := prv_Tree.Items.Add(nil, '人员');
  while not ADOSetTmp.Eof do
  begin
    with prv_Tree do
    begin
      Inc(i);
      New(P);
      node.SelectedIndex := i;
      P.Bzwm := ADOSetTmp.fieldbyName('ksmc').AsString;
      P.Bywm := ADOSetTmp.fieldbyName('ksdm').AsString;
      ksdm := ADOSetTmp.fieldbyName('ksdm').AsString;
      nodechild := Items.AddChildObject(node, P.Bzwm, P);
      nodechild.SelectedIndex := i;
      SqlQuy := TADOQuery.Create(Application);
      SqlQuy.Connection := ADOConnectionMain;
      with SqlQuy do
      begin
        close;
        sql.Clear;
        sql.Add('select c.dm czydm,c.mc czymc from sys_czy c ,sys_ksdm k '
          + ' where k.dm=c.ksdm  and k.dm=' + #39 + ksdm + #39 + ' order by c.dm');
        Open;
        First;
        while not eof do
        begin
          New(P);
          inc(i);
          P.Bzwm := fieldbyName('czymc').AsString;
          P.Bywm := fieldbyName('czydm').AsString;
          nodeTemp := Items.AddChildObject(nodechild, P.Bzwm, P);
          nodeTemp.SelectedIndex := i;
          Next;
        end;
      end;
      Sqlquy.Close;
      SqlQuy.Free;
    end;
    ADOSetTmp.Next;
  end;
  ADOSetTmp.Close;
  ADOSetTmp.Free;
end;

procedure TAuthorityFrm.btn1Click(Sender: TObject);
var
  i: Integer;
  vTable: string;
begin
  if prv_Selectczdm = '' then Exit;
  try
    for i := 0 to lstAuthorityTable.Items.Count - 1 do
    begin
      vTable := PTableReocrd(lstAuthorityTable.Items.Objects[i]).Bywm;
      proc_SaveAuthority(vTable, prv_Selectczdm);
    end;
    Application.MessageBox(Pchar('保存成功.'), '提示', mb_OK);
  except on e: Exception do
      Application.MessageBox(Pchar(e.Message), '警告', mb_OK);

  end;
end;

procedure TAuthorityFrm.btn2Click(Sender: TObject);
var
  P: PTableReocrd;
begin
  if lstTable.ItemIndex < 0 then Exit;
  p := PTableReocrd(lstTable.Items.Objects[lstTable.ItemIndex]);
  lstAuthorityTable.Items.AddObject(p.Bzwm, TObject(p));
  lstTable.Items.Delete(lstTable.ItemIndex);
end;

procedure TAuthorityFrm.btn4Click(Sender: TObject);
var
  P: PTableReocrd;
  i: Integer;
begin
  for i := 0 to lstTable.Items.Count - 1 do
  begin
    p := PTableReocrd(lstTable.Items.Objects[i]);
    lstAuthorityTable.Items.AddObject(p.Bzwm, TObject(p));
  end;
  lstTable.Items.Clear;
end;

procedure TAuthorityFrm.btn5Click(Sender: TObject);
var
  P: PTableReocrd;
  i: Integer;
begin
  if prv_Selectczdm = '' then Exit;
  for i := 0 to lstAuthorityTable.Items.Count - 1 do
  begin
    p := PTableReocrd(lstAuthorityTable.Items.Objects[i]);
    lstTable.Items.AddObject(p.Bzwm, TObject(p));
    proc_deleteAuthority(p.Bywm,prv_Selectczdm);
  end;
  lstAuthorityTable.Items.Clear;
end;

procedure TAuthorityFrm.btn6Click(Sender: TObject);
var
  P: PTableReocrd;
begin
  if lstAuthorityTable.ItemIndex < 0 then Exit;
  if prv_Selectczdm = '' then Exit;
  p := PTableReocrd(lstAuthorityTable.Items.Objects[lstAuthorityTable.ItemIndex]);
  lstTable.Items.AddObject(p.Bzwm, TObject(p));
  lstAuthorityTable.Items.Delete(lstAuthorityTable.ItemIndex);
  proc_deleteAuthority(p.Bywm,prv_Selectczdm);
end;
 procedure TAuthorityFrm.btn7Click(Sender: TObject);
begin
  pro_serczy;

end;

procedure TAuthorityFrm.edtNameKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if key =13 then
    begin
        pro_serczy;
    end;
end;

procedure TAuthorityFrm.proc_deleteAuthority(vTable, czyDM: string);
var
  sSql, AuthorityStr, s1, s2: string;
  ADOSetTmp: TADODataSet;
begin
  ADOSetTmp := TADODataSet.Create(Application);
  ADOSetTmp.LockType := ltReadOnly;
  //先删除原有的设置
  sSql := 'select Authority from SYS_tycx_Authority where bywm=' + #39 + vTable + #39
    + ' and charindex(' + #39 + czyDM + #39 + ',isnull(Authority,' + #39 + ',' + #39 + '))>0';
  OpenDataSet(ADOSetTmp, sSql);
  ADOSetTmp.First;
  while not ADOSetTmp.eof do
  begin
    AuthorityStr := ADOSetTmp.FieldByName('Authority').AsString;
    s1 := Copy(AuthorityStr, 1, Pos(czyDM, AuthorityStr) - 1);
    s2 := Copy(AuthorityStr, Pos(czyDM, AuthorityStr) + length(czyDM) + 1, Length(AuthorityStr));
    AuthorityStr := s1 + s2;
    sSql := 'update SYS_tycx_Authority set Authority=' + #39 + AuthorityStr + #39 + ' where bywm=' + #39 + vTable + #39;
    ExecSql(sSql);
    ADOSetTmp.Next;
  end;
  //-------
  ADOSetTmp.Close;
  ADOSetTmp.Free;
 end;  
procedure TAuthorityFrm.proc_SaveAuthority(vTable, czyDM: string);
var
  sSql, AuthorityStr, s1, s2: string;
  ADOSetTmp: TADODataSet;
begin
  ADOSetTmp := TADODataSet.Create(Application);
  ADOSetTmp.LockType := ltReadOnly;
  sSql := 'select Authority from SYS_tycx_Authority where bywm=' + #39 + vTable + #39
    + ' and charindex(' + #39 + czyDM + #39 + ',isnull(Authority,' + #39 + ',' + #39 + '))=0';
  OpenDataSet(ADOSetTmp, sSql);
  if ADOSetTmp.RecordCount > 0 then
  begin
    if ADOSetTmp.FieldByName('Authority').IsNull then
      AuthorityStr := czyDM + ','
    else
    begin
      AuthorityStr := ADOSetTmp.FieldByName('Authority').AsString;
      AuthorityStr := AuthorityStr + czyDM + ',';
    end;
    sSql := 'update SYS_tycx_Authority set Authority=' + #39 + AuthorityStr + #39 + ' where bywm=' + #39 + vTable + #39;
    ExecSql(sSql);
  end;
  ADOSetTmp.Close;
  ADOSetTmp.Free;
end;

procedure TAuthorityFrm.proc_showAuthority(czdm: string; checkys: Boolean = False);
var
  sSql: string;
  ADOSetTmp: TADODataSet;
  P: PTableReocrd;
begin
  ADOSetTmp := TADODataSet.Create(Application);
  ADOSetTmp.LockType := ltReadOnly;
  if not checkys then
  begin
    if Trim(czdm) = '' then
    begin
      sSql := 'select bywm,bzwm from SYS_tycx_Authority';
    end else
      sSql := 'select bywm,bzwm from SYS_tycx_Authority where charindex(' + #39 + czdm + #39 + ',isnull(Authority,' + #39 + ',' + #39 + '))=0';
  end else
    sSql := 'select bywm,bzwm from SYS_tycx_Authority where charindex(' + #39 + czdm + #39 + ',isnull(Authority,' + #39 + ',' + #39 + '))>0';
  OpenDataSet(ADOSetTmp, sSql);
  ADOSetTmp.First;
  if not checkys then
    lstTable.Items.Clear
  else
    lstAuthorityTable.Items.Clear;
  while not ADOSetTmp.eof do
  begin
    New(P);
    P.Bzwm := ADOSetTmp.FieldByName('bzwm').AsString;
    p.Bywm := ADOSetTmp.FieldByName('bywm').AsString;
    if not checkys then
      lstTable.Items.AddObject(P.Bzwm, TObject(p))
    else
      lstAuthorityTable.Items.AddObject(P.Bzwm, TObject(p));
    ADOSetTmp.Next;
  end;
  ADOSetTmp.Close;
  ADOSetTmp.Free;
end;

procedure TAuthorityFrm.pro_serczy;
var
  i: Integer;
  vText: string;
begin
  for I := 0 to tvAuthority.Items.Count - 1 do
  begin
    vText := Trim(edtName.Text);
    if Pos(vText, tvAuthority.Items[i].Text) > 0 then
    begin
      tvAuthority.Items[i].Selected := True;
      break;
    end;
  end;
end;

procedure TAuthorityFrm.tvAuthorityChange(Sender: TObject; Node: TTreeNode);
begin
  prv_SelectNode := Node;
  lstTable.Items.Clear;
  lstAuthorityTable.Items.Clear;
  proc_showAuthority('');

  if Node.Level > 1 then
  begin
    prv_Selectczdm := PTableReocrd(Node.Data).Bywm;
    proc_showAuthority(prv_Selectczdm);
    proc_showAuthority(prv_Selectczdm, True);
  end;
end;

end.

