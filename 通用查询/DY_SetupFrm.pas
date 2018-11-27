unit DY_SetupFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, StdCtrls, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxClasses,
  cxControls, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, Buttons, ADODB, Grids;

type
  TSetupFiled_frm = class(TForm)
    pnl1: TPanel;
    tvSetup: TTreeView;
    lbl1: TLabel;
    pnl2: TPanel;
    lbl2: TLabel;
    edtTabName: TEdit;
    lbl3: TLabel;
    lbl4: TLabel;
    edtfieldName: TEdit;
    btn2: TBitBtn;
    btn1: TBitBtn;
    btn3: TBitBtn;
    strngrdSetup: TStringGrid;
    lbl5: TLabel;
    edtWidth: TEdit;
    lbl6: TLabel;
    edtIndex: TEdit;
    procedure tvSetupChange(Sender: TObject; Node: TTreeNode);
    procedure strngrdSetupClick(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure edtWidthKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    prv_SelectNode: TTreeNode;
    prv_SelectTable: string;
    function fun_SaveRecord(vTable, vTableChina, vField, vFieldchina, vWidth, vIndex: string): Boolean;
    function fun_SaveAuthority(vTable, vTableChina: string): Boolean;
    procedure ShowTree(vTree: TTreeView);
    procedure pro_loadData(vGrid: TStringGrid);
  public
    { Public declarations }
  end;
procedure SetupFiled;
implementation
uses DY_PublicUnit;
{$R *.dfm}

procedure SetupFiled;
var
  SetupFiled_frm: TSetupFiled_frm;
begin
  SetupFiled_frm := TSetupFiled_frm.Create(Application);
  with SetupFiled_frm do
  begin
    ShowTree(tvSetup);
    ShowModal;
    Free;
  end;
end;

procedure TSetupFiled_frm.btn1Click(Sender: TObject);
var
  vField, sSql: string;
begin
  if prv_SelectTable = '' then
  begin
    application.MessageBox('基表没有选取不能保存。', '提示', mb_Ok);
    Exit;
  end;
  vField := strngrdSetup.Cells[0, strngrdSetup.Row];
  if vField = '' then
  begin
    application.MessageBox('要设置字段没有选取不能保存。', '提示', mb_Ok);
    Exit;
  end;
  if Trim(edtTabName.Text) = '' then
  begin
    application.MessageBox('基表的中文名没有设置不能保存。', '提示', mb_Ok);
    Exit;
  end;
  if Trim(edtfieldName.Text) = '' then
  begin
    application.MessageBox('字段的中文名没有设置不能保存。', '提示', mb_Ok);
    Exit;
  end;
  if Trim(edtWidth.Text) = '' then
  begin
    application.MessageBox('字段的宽度没有设置不能保存。', '提示', mb_Ok);
    Exit;
  end;
  if Trim(edtIndex.Text) = '' then
  begin
    application.MessageBox('字段的显示序号没有设置不能保存。', '提示', mb_Ok);
    Exit;
  end;
  if fun_SaveRecord(prv_SelectTable, Trim(edtTabName.Text), vField, Trim(edtfieldName.Text), Trim(edtWidth.Text), Trim(edtIndex.Text)) then
    if fun_SaveAuthority(prv_SelectTable, Trim(edtTabName.Text)) then
    begin
      PTableReocrd(prv_SelectNode.Data).Bzwm := Trim(edtTabName.Text);
      prv_SelectNode.Text := Trim(edtTabName.Text);
      pro_loadData(strngrdSetup);
      application.MessageBox('保存成功。', '提示', mb_Ok);
    end;
end;

procedure TSetupFiled_frm.edtWidthKeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in ['0'..'9']) then
    if Key <> #8 then
      key := #0;
end;

procedure TSetupFiled_frm.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    selectnext(activecontrol as Twincontrol, true, true);
end;

function TSetupFiled_frm.fun_SaveAuthority(vTable, vTableChina: string): Boolean;
var
  sSql: string;
  ADOSetTmp: TADODataSet;
begin
  ADOSetTmp := TADODataSet.Create(Application);
  ADOSetTmp.LockType := ltReadOnly;
  sSql := 'select * from SYS_tycx_Authority where bywm=' + #39 + vTable + #39;
  OpenDataSet(ADOSetTmp, sSql);
  if ADOSetTmp.RecordCount > 0 then
  begin
    ADOSetTmp.Close;
    ADOSetTmp.Free;
    Result := True;
  end else
  begin
    ADOSetTmp.Close;
    ADOSetTmp.Free;
    sSql := 'insert into SYS_tycx_Authority(bywm,bzwm) values(' + #39 + vTable + #39 + ',' + #39 + vTableChina + #39 + ')';
    ExecSql(sSql);
    Result := True;
  end;
end;

function TSetupFiled_frm.fun_SaveRecord(vTable, vTableChina, vField, vFieldchina, vWidth, vIndex: string): Boolean;
var
  sSql: string;
  ADOSetTmp: TADODataSet;
begin
  ADOSetTmp := TADODataSet.Create(Application);
  ADOSetTmp.LockType := ltReadOnly;
  sSql := 'select Zdzwm from sys_tycx_dzb where Bywm=' + #39 + vTable + #39 + ' and Zdywm=' + #39 + vField + #39;
  OpenDataSet(ADOSetTmp, sSql);
  if ADOSetTmp.RecordCount > 0 then
  begin
    ADOSetTmp.Close;
    ADOSetTmp.Free;
    sSql := 'update sys_tycx_dzb set Zdzwm= ' + #39 + vFieldchina + #39
      + ' ,Zdkd=' + #39 + vWidth + #39 + ',xsph= ' + #39 + vIndex + #39 + ',Bzwm=' + #39 + vTableChina + #39
      + ' where Bywm=' + #39 + vTable + #39 + ' and Zdywm=' + #39 + vField + #39;
    if ExecSql(sSql) then
      Result := True;
  end else
  begin
    ADOSetTmp.Close;
    ADOSetTmp.Free;
    sSql := 'insert into sys_tycx_dzb (Bywm,Bzwm,Zdywm,Zdzwm,Zdkd,xsph) Values(' + #39 + vTable + #39 + ','
      + #39 + vTableChina + #39 + ',' + #39 + vField + #39 + ',' + #39 + vFieldchina + #39 + ','
      + #39 + vWidth + #39 + ',' + #39 + vIndex + #39 + ')';
    if ExecSql(sSql) then
      Result := True;
  end;
end;

procedure TSetupFiled_frm.pro_loadData(vGrid: TStringGrid);
var
  ADOSetTmp, ADOSetTemp2: TADODataSet;
  sSql: string;
  i: Integer;
begin
  ADOSetTmp := TADODataSet.Create(Application);
  ADOSetTmp.LockType := ltReadOnly;
  sSql := 'select col.[name] from syscolumns col join sysobjects obj on col.[id]=obj.[id] where obj.[name]=' + #39 + prv_SelectTable + #39;
  OpenDataSet(ADOSetTmp, sSql);
  i := 1;
  vGrid.RowCount := ADOSetTmp.RecordCount + 1;
  vGrid.Cells[0, 0] := '字段英文名';
  vGrid.Cells[1, 0] := '字段中文名';
  vGrid.Cells[2, 0] := '显示宽度';
  vGrid.Cells[3, 0] := '显示序号';
  vGrid.ColWidths[0] := 110;
  vGrid.ColWidths[1] := 110;
  vGrid.ColWidths[2] := 56;
  vGrid.ColWidths[3] := 56;
  while not ADOSetTmp.Eof do
  begin
    vGrid.Cells[0, i] := ADOSetTmp.FieldByName('name').AsString;
    ADOSetTemp2 := TADODataSet.Create(Application);
    ADOSetTemp2.LockType := ltReadOnly;
    sSql := 'select Zdzwm,Zdkd,xsph from sys_tycx_dzb where Bywm=' + #39 + prv_SelectTable + #39 + ' and Zdywm=' + #39 + vGrid.Cells[0, i] + #39;
    OpenDataSet(ADOSetTemp2, sSql);
    if not ADOSetTemp2.Eof then
    begin
      vGrid.Cells[1, i] := ADOSetTemp2.FieldByName('Zdzwm').AsString;
      vGrid.Cells[2, i] := ADOSetTemp2.FieldByName('Zdkd').AsString;
      vGrid.Cells[3, i] := ADOSetTemp2.FieldByName('xsph').AsString;
    end
    else
    begin
      vGrid.Cells[1, i] := '';
      vGrid.Cells[2, i] := '';
      vGrid.Cells[3, i] := '';
    end;
    ADOSetTemp2.Close;
    ADOSetTemp2.Free;
    ADOSetTmp.Next;
    inc(i);
  end;
  ADOSetTmp.Close;
  ADOSetTmp.Free;
end;

procedure TSetupFiled_frm.ShowTree(vTree: TTreeView);
var
  nodeTable, NodeView, nodechild: TTreeNode;
  SqlStr, Bywm: string;
  ADOSetTmp: TADODataSet;
  i: Integer;
  P: PTableReocrd;
begin
  with vTree do
  begin
    Items.Clear;
    nodeTable := Items.Add(nil, '用户表');
    nodeTable.SelectedIndex := 0;
    NodeView := Items.Add(nil, '用户视图');
    NodeView.SelectedIndex := 1;
    ADOSetTmp := TADODataSet.Create(Application);
    ADOSetTmp.LockType := ltReadOnly;
    //增加用户表
    SqlStr := 'select obj.[Name],dzb.bzwm from sysobjects obj left outer join sys_tycx_dzb dzb'
      + ' on obj.[name]=dzb.bywm  where obj.Type= ' + #39 + 'U' + #39
      + ' group by obj.[name], dzb.bzwm ORDER BY  obj.[name]';
    OpenDataSet(ADOSetTmp, SqlStr);
    i := 2;
    with ADOSetTmp do
    begin
      First;
      while not eof do
      begin
        New(P);
        P.Bywm := fieldbyName('name').AsString;
        if fieldbyName('bzwm').IsNull then
          P.Bzwm := ''
        else
          P.Bzwm := fieldbyName('bzwm').AsString;
        if P.Bzwm = '' then
          nodechild := Items.AddChildObject(nodeTable, P.Bywm, P)
        else
          nodechild := Items.AddChildObject(nodeTable, P.Bzwm, P);
        nodechild.SelectedIndex := i;
        inc(i);
        Next;
      end;
      ADOSetTmp.Close;
     //----------
     //增加用户视图
      SqlStr := 'select obj.[Name],dzb.bzwm from sysobjects obj left outer join sys_tycx_dzb dzb'
        + ' on obj.[name]=dzb.bywm  where obj.Type= ' + #39 + 'V' + #39
        + ' group by obj.[name], dzb.bzwm ORDER BY  obj.[name]';
      OpenDataSet(ADOSetTmp, SqlStr);
      with ADOSetTmp do
      begin
        First;
        while not eof do
        begin
          New(P);
          P.Bywm := fieldbyName('name').AsString;
          if fieldbyName('bzwm').IsNull then
            P.Bzwm := ''
          else
            P.Bzwm := fieldbyName('bzwm').AsString;
          if P.Bzwm = '' then
            nodechild := Items.AddChildObject(NodeView, P.Bywm, P)
          else
            nodechild := Items.AddChildObject(NodeView, P.Bzwm, P);
          nodechild.SelectedIndex := i;
          inc(i);
          Next;
        end;
        ADOSetTmp.Close;
        ADOSetTmp.Free;

     //---------
      end;
    end;
  end;

end;

procedure TSetupFiled_frm.strngrdSetupClick(Sender: TObject);
begin
  edtfieldName.Text := strngrdSetup.Cells[1, strngrdSetup.Row];
  if strngrdSetup.Cells[2, strngrdSetup.Row] = '' then
    edtWidth.Text := '80'
  else
    edtWidth.Text := strngrdSetup.Cells[2, strngrdSetup.Row];
  if strngrdSetup.Cells[3, strngrdSetup.Row] = '' then
    edtIndex.Text := '6'
  else
    edtIndex.Text := strngrdSetup.Cells[3, strngrdSetup.Row];
end;

procedure TSetupFiled_frm.tvSetupChange(Sender: TObject; Node: TTreeNode);
var
  sSql: string;
begin
  prv_SelectNode := Node;
  edtTabName.Text := '';
  prv_SelectTable := '';
  strngrdSetup.RowCount := 2;
  strngrdSetup.Cells[0, 1] := '';
  strngrdSetup.Cells[1, 1] := '';
  strngrdSetup.Cells[2, 1] := '';
  strngrdSetup.Cells[3, 1] := '';

  if prv_SelectNode.Level > 0 then
  begin
    prv_SelectTable := PTableReocrd(prv_SelectNode.Data).Bywm;
    edtTabName.Text := PTableReocrd(prv_SelectNode.Data).Bzwm;
    pro_loadData(strngrdSetup);
    strngrdSetup.SetFocus;
    strngrdSetupClick(Self);
  end;
end;

end.

