unit p_tycxsz;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ADODB, ComCtrls, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, cxGridLevel, cxClasses,
  cxControls, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxCheckBox, ExtCtrls, Buttons, ActnList, ImgList,
  ToolWin, Menus;

type

  PQuyTable = ^TQuyTable;
  TQuyTable = record
    Index: Integer;
    TableName: string;
  end;
  Tfrm_tycxsz = class(TForm)
    tvMain: TTreeView;
    cxgrdbtblvwShow: TcxGridDBTableView;
    cxgrdlvlShow: TcxGridLevel;
    cxgrdShow: TcxGrid;
    cxgrdbclmnShowFieldC: TcxGridDBColumn;
    cxgrdbclmnShowChkField: TcxGridDBColumn;
    cxgrdbclmnShowChkSum: TcxGridDBColumn;
    cxgrdbclmnShowChkGroup: TcxGridDBColumn;
    cxgrdbclmnShowChkCount: TcxGridDBColumn;
    cxgrdbclmnShowFidSum: TcxGridDBColumn;
    dsSql: TDataSource;
    dsAdoSql: TADODataSet;
    mmoQuy: TMemo;
    actlstMain: TActionList;
    actAdd: TAction;
    actDel: TAction;
    actFilter: TAction;
    actResult: TAction;
    actSetup: TAction;
    btnNew: TBitBtn;
    btnDelete: TBitBtn;
    btnFilter: TBitBtn;
    btnResult: TBitBtn;
    btnResult1: TBitBtn;
    actExit: TAction;
    btnExit: TBitBtn;
    pnl2: TPanel;
    ilMain: TImageList;
    btnauthority: TBitBtn;
    actauthority: TAction;
    ToolBar4: TToolBar;
    Main_Menu: TMainMenu;
    StatusBar1: TStatusBar;
    procedure tvMainChange(Sender: TObject; Node: TTreeNode);
    procedure FormShow(Sender: TObject);
    procedure cxgrdbtblvwShowEditing(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; var AAllow: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actAddExecute(Sender: TObject);
    procedure actDelExecute(Sender: TObject);
    procedure actFilterExecute(Sender: TObject);
    procedure actResultExecute(Sender: TObject);
    procedure actExitExecute(Sender: TObject);
    procedure actSetupExecute(Sender: TObject);
    procedure actauthorityExecute(Sender: TObject);
  private
    { Private declarations }
    FSelectField: string; //选取的字段
    FCQuyStr: string; //查询条件中文
    FEQuyStr: string; //查询条件
    FSumField: string; //汇总字段
    FGroupField: string; //分组字段
    FJSField: string; //记数字段
    FZjField: string; //栏总计字段


    function DeleteQuyTab(QIndex: Integer): Boolean; //删除查询数据
    function GetReportData(ReportIndex: Integer): Boolean; //查询是否有报表模版数据
    procedure SetBtnStyle; //设置按扭状态
    procedure TreeShow(VarTree: TTreeView);
    procedure GetsField; //取得条件字段
    procedure SaveQuyData(ChkShow: Boolean = True); //保存查询数据
    procedure AddQuyReport; //增加一个查询表
    procedure ShowCheck(ChkStr, FieldName: string);
    procedure SetSelectField(Value: string);
    procedure SetCQuyStr(Value: string);
    procedure SetEQuyStr(Value: string);
    procedure SetSumField(Value: string);
    procedure SetGroupField(Value: string);
    procedure SetJSField(Value: string);
    procedure SetZjField(Value: string);
  public
    { Public declarations }
    QuyChanged: Boolean;
    SelectTableName: string; //所选取的基表
    SelectTableChina: string; //所选取的基表中文名
    SelectNode: TTreeNode; //所选取的节点
    SelectQuyIndex: Integer; //所选取的查询表ID
    function GetSQL(QuyStr: string): string;
    property SelectField: string read FSelectField write SetSelectField;
    property CQuyStr: string read FCQuyStr write SetCQuyStr;
    property EQuyStr: string read FEQuyStr write SetEQuyStr;
    property SumField: string read FSumField write SetSumField;
    property GroupField: string read FGroupField write SetGroupField;
    property JSField: string read FJSField write SetJSField;
    property ZjField: string read FZjField write SetZjField;
  end;

var
  frm_tycxsz: Tfrm_tycxsz;

implementation
uses DY_LoginFrm, DY_PublicUnit, DY_FilterUnit, DY_ResultFrm, DY_SetupFrm, p_dm, DY_authorityFrm;
{$R *.dfm}

procedure Tfrm_tycxsz.SetSelectField(Value: string);
begin
  if Value <> '' then
    ShowCheck(Value, 'ChkField');

  if FSelectField <> Value then
  begin
   // if FSelectField <> '' then
    QuyChanged := True;
    FSelectField := Value;
  end;
end;

procedure Tfrm_tycxsz.SetCQuyStr(Value: string);
begin
  if FCQuyStr <> Value then
  begin
    //if FCQuyStr <> '' then
    QuyChanged := True;
    FCQuyStr := Value;
    mmoQuy.Clear;
    mmoQuy.Lines.Add(FCQuyStr);
  end;
end;

procedure Tfrm_tycxsz.SetEQuyStr(Value: string);
begin
  //if FEQuyStr <> Value then
  begin
    if FEQuyStr <> '' then
      QuyChanged := True;
    FEQuyStr := Value;
  end;
end;

procedure Tfrm_tycxsz.SetSumField(Value: string);
begin
  if Value <> '' then
    ShowCheck(Value, 'ChkSum');
  if FSumField <> Value then
  begin
   // if FSumField <> '' then
    QuyChanged := True;
    FSumField := Value;

  end;
end;

procedure Tfrm_tycxsz.SetGroupField(Value: string);
begin
  if Value <> '' then
    ShowCheck(Value, 'ChkGroup');
  if FGroupField <> Value then
  begin
   // if FGroupField <> '' then
    QuyChanged := True;
    FGroupField := Value;

  end;
end;

procedure Tfrm_tycxsz.SetJSField(Value: string);
begin
  if Value <> '' then
    ShowCheck(Value, 'ChkCount');
  if FJSField <> Value then
  begin
   // if FJSField <> '' then
    QuyChanged := True;
    FJSField := Value;

  end;
end;

procedure Tfrm_tycxsz.SetZjField(Value: string);
begin
  if Value <> '' then
    ShowCheck(Value, 'FidSum');
  if FZjField <> Value then
  begin
   // if FZjField <> '' then
    QuyChanged := True;
    FZjField := Value;

  end;
end;

function Tfrm_tycxsz.GetSQL(QuyStr: string): string;
var
  s1, FldStr, SqlStr: string;
begin
  GetsField;
  if SelectTableName = '' then Exit;
  SqlStr := '';

  if (length(SelectField) = 0) and (length(SumField) = 0)
    and (length(JSField) = 0) and (length(GroupField) = 0)
    then
    if length(QuyStr) = 0 then
      Result := 'select * from ' + SelectTableName
    else
      Result := 'select * from ' + SelectTableName + ' where ' + QuyStr
  else
  begin
    dsAdoSql.First;
    while not dsAdoSql.Eof do
    begin
      FldStr := dsAdoSql.FieldByName('FieldE').AsString;
      if dsAdoSql.FieldByName('ChkField').AsBoolean then
      begin
        if dsAdoSql.FieldByName('ChkSum').AsBoolean then //是否有汇总
        begin
          if length(SqlStr) = 0 then
            SqlStr := 'Sum([' + FldStr + '])' + ' as  [' + fldStr + ']'
          else
            SqlStr := SqlStr + ',' + 'Sum([' + FldStr + '])' + ' as  [' + fldStr + ']';
        end else
        begin
          if dsAdoSql.FieldByName('ChkCount').AsBoolean then //是否记数
          begin
            if length(SqlStr) = 0 then
              SqlStr := 'Count([' + FldStr + '])' + ' as [' + fldStr + ']'
            else
              SqlStr := SqlStr + ',' + 'Count([' + FldStr + '])' + ' as  [' + fldStr + ']';
          end else
          begin
            if length(SqlStr) = 0 then //只是选取
              SqlStr := '[' + FldStr + ']'
            else
              SqlStr := SqlStr + ',' + '[' + FldStr + ']';
          end;
        end;
      end else
      begin

        if dsAdoSql.FieldByName('ChkSum').AsBoolean then //是否有汇总
        begin
          if length(SqlStr) = 0 then
            SqlStr := 'Sum([' + FldStr + '])' + ' as [' + fldStr + ']'
          else
            SqlStr := SqlStr + ',' + 'Sum([' + FldStr + '])' + ' as [' + fldStr + ']';
        end else
        begin
          if dsAdoSql.FieldByName('ChkCount').AsBoolean then //是否记数
          begin
            if length(SqlStr) = 0 then
              SqlStr := 'Count([' + FldStr + '])' + ' as [' + fldStr + ']'
            else
              SqlStr := SqlStr + ',' + 'Count([' + FldStr + '])' + ' as [' + fldStr + ']';
          end;
        end;

      end;
      dsAdoSql.Next;
    end; {while}
    if length(QuyStr) = 0 then
      Result := 'select ' + SqlStr + ' from ' + SelectTableName
    else
      Result := 'select ' + SqlStr + ' from ' + SelectTableName + ' where ' + QuyStr;

    if (length(GroupField) > 0) then
    begin
      if length(SelectField) > 0 then
        ReSult := Result + '  ' + 'Group by ' + SelectField
      else
        ReSult := Result + '  ' + 'Group by ' + GroupField;
    end
    else
      if ((length(SumField) > 0) or (length(JSField) > 0))
        and (length(SelectField) > 0) then
        ReSult := Result + '  ' + 'Group by ' + SelectField;
  end;
end;

procedure Tfrm_tycxsz.GetsField;
var
  FFieldStr, FSumField, FGroupfield, FCField, FCFieldSum: string;
begin

  dsAdoSql.First;
  if SelectTableName = '' then Exit;
  while not dsAdoSql.eof do
  begin
    if dsAdoSql.FieldByName('Chkfield').AsBoolean then
    begin
      if length(FFieldStr) = 0 then
        FFieldStr := '[' + dsAdoSql.fieldbyName('FieldE').AsString + ']'
      else
        FFieldStr := FFieldStr + ',[' + dsAdoSql.fieldbyName('FieldE').AsString + ']';
    end;

    if dsAdoSql.FieldByName('ChkGroup').AsBoolean then
    begin
      if length(FGroupField) = 0 then
        FGroupField := '[' + dsAdoSql.fieldbyName('FieldE').AsString + ']'
      else
        FGroupField := FGroupField + ',[' + dsAdoSql.fieldbyName('FieldE').AsString + ']';
    end;
    if dsAdoSql.FieldByName('ChkSum').AsBoolean then
    begin
      if length(FSumField) = 0 then
        FSumField := '[' + dsAdoSql.fieldbyName('FieldE').AsString + ']'
      else
        FSumField := FSumField + ',[' + dsAdoSql.fieldbyName('FieldE').AsString + ']';
    end;
    if dsAdoSql.FieldByName('ChkCount').AsBoolean then
    begin
      if length(FCField) = 0 then
        FCField := '[' + dsAdoSql.fieldbyName('FieldE').AsString + ']'
      else
        FCField := FCField + ',[' + dsAdoSql.fieldbyName('FieldE').AsString + ']';
    end;
    if dsAdoSql.FieldByName('FidSum').AsBoolean then
    begin
      if length(FCFieldSum) = 0 then
        FCFieldSum := '[' + dsAdoSql.fieldbyName('FieldE').AsString + ']'
      else
        FCFieldSum := FCFieldSum + ',[' + dsAdoSql.fieldbyName('FieldE').AsString + ']';
    end;
    dsAdoSql.Next;
  end;
  SelectField := FFieldStr;
  Groupfield := FGroupfield;
  SumField := FSumField;
  JSField := FCField;
  ZjField := FCFieldSum;
end;

function Tfrm_tycxsz.DeleteQuyTab(QIndex: Integer): Boolean; //删除查询数据
var
  sSql: string;
begin
  sSQl := 'Delete from sys_tycx_sql where [ID]=' + IntToStr(QIndex);
  if ExecSql(sSQL) then
  begin
    Application.MessageBox('删除成功', '提示', mb_ok);
    Result := True;
  end;
end;

procedure Tfrm_tycxsz.SaveQuyData(ChkShow: Boolean = True);
var
  ADOSetTmp: TADODataSet;
begin
  ADOSetTmp := TADODataSet.Create(nil);
  ADOSetTmp.Connection := ADOConnectionMain;
  ADOSetTmp.CommandText := 'select * from sys_tycx_sql where [Id]=' + IntToStr(SelectQuyIndex);
  ADOSetTmp.Open;
  ADOSetTmp.Edit;
  ADOSetTmp.FieldByName('CxDj').asString := EQuyStr;
  ADOSetTmp.FieldByName('Syzd').AsString := SelectField;
  ADOSetTmp.FieldByName('CXdjz').AsString := CQuyStr;
  ADOSetTmp.FieldByName('FcZd').AsString := GroupField;
  ADOSetTmp.FieldByName('Hczd').AsString := SumField;
  ADOSetTmp.FieldByName('Jszd').AsString := JSField;
  ADOSetTmp.FieldByName('Zjzd').AsString := ZjField;
  if SaveDataSet(ADOSetTmp, false) then
  begin
    QuyChanged := False;
    if ChkShow then
      Application.MessageBox('保存成功', '提示', MB_OK);
  end;
  ADOSetTmp.Close;
  ADOSetTmp.Free;
end;

procedure Tfrm_tycxsz.ShowCheck(ChkStr, FieldName: string);
var
  i, j: integer;
  FileStr: string;
begin
  for i := 1 to GetCommaStrCount(ChkStr) + 1 do
  begin
    FileStr := GetCommaStr(ChkStr, i);
    j := 0;
    dsAdoSql.DisableControls;
    dsAdoSql.First;
    repeat
      if '[' + dsAdoSql.FieldByName('FieldE').AsString + ']' = FileStr then
      begin
        dsAdoSql.Edit;
        dsAdoSql.FieldByName(FieldName).AsBoolean := true;
      end;
      dsAdoSql.Next;
      inc(j);
    until j > dsAdoSql.RecordCount - 1;
    dsAdoSql.EnableControls;
  end;
end;

procedure Tfrm_tycxsz.TreeShow(VarTree: TTreeView);
var
  node, nodechild, nodeTemp: TTreeNode;
  SqlStr, Bywm: string;
  ADOSetTmp: TADODataSet;
  i: Integer;
  P: PTableReocrd;
  Pquy: PQuyTable;
  SqlQuy: TADOQuery;
begin
  ADOSetTmp := TADODataSet.Create(Application);
  ADOSetTmp.LockType := ltReadOnly;
  with VarTree do
  begin
    Items.Clear;
    node := Items.Add(nil, '查询表');
    i := 0;
    node.SelectedIndex := i;
    if pub_czydm = '9999' then

      Sqlstr := 'select Bywm,bzwm from sys_tycx_dzb group by Bywm,bzwm'
    else
      Sqlstr := 'select d.Bywm,d.bzwm from sys_tycx_dzb d,SYS_tycx_Authority A ' +
        'where d.Bywm=A.Bywm and charindex(' + #39 + pub_czydm + #39 + ',isnull(Authority,' + #39 + ',' + #39 + '))>0'
        + ' group by d.Bywm,d.bzwm';
    OpenDataSet(ADOSetTmp, Sqlstr);
    with ADOSetTmp do
    begin
      First;
      if IsEmpty then
      begin
        Close;
        Exit;
      end;
      while not eof do
      begin
        Inc(i);
        New(P);
        P.Bzwm := fieldbyName('bzwm').AsString;
        P.Bywm := fieldbyName('bywm').AsString;
        Bywm := P.Bywm;
        nodechild := Items.AddChildObject(node, P.Bzwm, P);
        nodechild.SelectedIndex := i;
        SqlQuy := TADOQuery.Create(Application);
        SqlQuy.Connection := ADOConnectionMain;
        with SqlQuy do
        begin
          close;
          sql.Clear;
          sql.Add('select [ID], Djmc from SYS_tycx_Sql where jbmc=' + '''' + trim(Bywm) + '''');
          Open;
          First;
          while not eof do
          begin
            New(Pquy);
            inc(i);
            Pquy.Index := fieldbyName('ID').AsInteger;
            Pquy.TableName := fieldbyName('Djmc').AsString;
            nodeTemp := Items.AddChildObject(nodechild, Pquy.TableName, Pquy);
            nodeTemp.SelectedIndex := i;
            Next;
          end;
          Sqlquy.Close;
          SqlQuy.Free;
        end;
        Next;
      end;
      Close;
    end;
  end;
end;

procedure Tfrm_tycxsz.tvMainChange(Sender: TObject; Node: TTreeNode);
var
  Bywm, sSql: string;
  PNode: TTreeNode;
  ADOSetTmp: TADODataSet;
begin
  SelectNode := nil;
  if Node.Level > 0 then
  begin
    if (dsAdoSql.State = dsEdit) or (dsAdoSql.State = dsInsert) then
    begin
      GetsField;
      if QuyChanged then
      begin
        SaveQuyData(False);
      end;
    end;
    SelectNode := Node;
    dsAdoSql.Close;
    sSql := 'delete from #MyTemp';
    ExecSql(sSql);
    dsAdoSql.Open;
    SelectTableName := PTableReocrd(Node.Data).Bywm;
    SelectTableChina := Node.Text;
    if Node.Level > 1 then
    begin
      dsAdoSql.DisableControls;
      PNode := Node.Parent;
      SelectTableChina := PNode.Text;
      Bywm := PTableReocrd(PNode.Data).Bywm;
      CQuyStr := '';
      EQuyStr := '';
      SelectTableName := Bywm;
      sSql := 'select * from sys_tycx_dzb where Bywm=' + #39 + Bywm + #39 + ' order by xsph';
      ADOSetTmp := TADODataSet.Create(Self);
      ADOSetTmp.LockType := ltReadOnly;
      OpenDataSet(ADOSetTmp, sSql);
      if not ADOSetTmp.IsEmpty then
      begin
        with ADOSetTmp do
        begin
          First;
          while not Eof do
          begin
            dsAdoSql.Append;
            dsAdoSql.FieldByName('FieldC').AsString := ADOSetTmp.Fieldbyname('Zdzwm').asString;
            dsAdoSql.FieldByName('fieldE').AsString := ADOSetTmp.Fieldbyname('Zdywm').asString;
            dsAdoSql.FieldByName('chkfield').AsBoolean := false;
            dsAdoSql.FieldByName('ChkSUm').AsBoolean := false;
            dsAdoSql.FieldByName('ChkGroup').AsBoolean := false;
            dsAdoSql.FieldByName('ChkCount').AsBoolean := false;
            dsAdoSql.FieldByName('fidSUm').AsBoolean := false;
            Next;
          end;
          Close;
          SelectQuyIndex := PQuyTable(Node.Data).Index;
          sSql := 'select Cxdj,CxdjZ,Syzd,FcZd,HcZd,Jszd,Zjzd from SYS_tycx_Sql where ID=' + IntTostr(SelectQuyIndex);
          OpenDataSet(ADOSetTmp, sSql);
          First;
          if not IsEmpty then
          begin
            CQuyStr := ADOSetTmp.fieldbyName('cxDjZ').AsString;
            EQuyStr := ADOSetTmp.fieldbyName('cxDj').AsString;
            SelectField := ADOSetTmp.fieldbyName('Syzd').AsString;
            SumField := ADOSetTmp.fieldbyName('HcZD').AsString;
            GroupField := ADOSetTmp.fieldByName('FcZd').AsString;
            JSField := ADOSetTmp.fieldByName('Jszd').AsString;
            ZjField := ADOSetTmp.fieldByName('Zjzd').AsString;
          end;
          Close;
        end;
      end;

      ADOSetTmp.Free;
      dsAdoSql.First;
      dsAdoSql.EnableControls;

    end;
  end;
  SetBtnStyle;
end;

procedure Tfrm_tycxsz.SetBtnStyle;
begin
  btnNew.Enabled := False;
  btnDelete.Enabled := False;
  btnFilter.Enabled := False;
  btnResult.Enabled := False;
  if Assigned(SelectNode) then
  begin
    if SelectNode.Level > 0 then
      btnNew.Enabled := True;
    if SelectNode.Level > 1 then
    begin
      btnDelete.Enabled := True;
      btnFilter.Enabled := True;
      btnResult.Enabled := True;
    end;
  end;
end;

function Tfrm_tycxsz.GetReportData(ReportIndex: Integer): Boolean;
var
  sSql: string;
  ADOSetTmp: TADODataSet;
begin
  ADOSetTmp := TADODataSet.Create(self);
  ADOSetTmp.LockType := ltOptimistic;
  sSql := 'select * from sys_tycx_sql where [ID]=' + intTostr(ReportIndex);
  openDataSet(ADOSetTmp, sSql);
  Result := ADOSetTmp.FieldByName('bblr').IsNull;
  ADOSetTmp.Close;
  ADOSetTmp.Free;
end;

procedure Tfrm_tycxsz.actAddExecute(Sender: TObject);
begin
  AddQuyReport;
end;

procedure Tfrm_tycxsz.actauthorityExecute(Sender: TObject);
begin
  if pub_czydm = '9999' then
    proc_setupAuthority
  else
    Application.MessageBox(Pchar('你无权使用该功能'), '提示', mb_OKCancel)
end;

procedure Tfrm_tycxsz.actDelExecute(Sender: TObject);
var
  sCopation: string;
  Qindex: Integer;
  PNode: TTreeNode;
begin
  sCopation := '确定删除报表 "' + SelectNode.Text + '" 吗？';
  if Application.MessageBox(Pchar(sCopation), '提示', mb_OKCancel) = IDOk then
  begin
    Qindex := PquyTable(SelectNode.Data).Index;
    if DeleteQuyTab(Qindex) then
    begin
      PNode := SelectNode.Parent;
      SelectNode.Delete;
      tvMain.Selected := PNode;
    end;
  end;
end;

procedure Tfrm_tycxsz.actExitExecute(Sender: TObject);
begin
  Close;
end;

procedure Tfrm_tycxsz.actFilterExecute(Sender: TObject);
var
  CQuery, EqustrTemp: string;
begin
  GetsField;
  if QuyChanged then
  begin
    SaveQuyData(False);
  end;
  EqustrTemp := GetFilterStr(dsAdoSql, SelectTableName, CQuery);
  if EqustrTemp <> '@Fang1102' then
  begin
    EQuyStr := EqustrTemp;
    CQuyStr := CQuery;
    mmoQuy.Lines.Clear;
    mmoQuy.Lines.Add(CQuyStr);
    SaveQuyData(false);

  end;
end;

procedure Tfrm_tycxsz.actResultExecute(Sender: TObject);
var
  sSql: string;
begin
  GetsField;
  if QuyChanged then
    if not GetReportData(SelectQuyIndex) then
      if Application.MessageBox(Pchar('报表已更改是否更新报表？'), '提示', mb_OKCancel) = IDOk then
      begin
        sSql := 'Update Sys_tycx_sql set bblr=null where [id]=' + intTostr(SelectQuyIndex);
        ExecSql(sSql);
        SaveQuyData(false);
      end;
  sSql := GetSQL(EQuyStr);
  ShowResult(sSql);
end;

procedure Tfrm_tycxsz.actSetupExecute(Sender: TObject);
var
  sSql: string;
begin
  SetupFiled;
  TreeShow(tvMain);
  dsAdoSql.Close;
  sSql := 'delete from #MyTemp';
  ExecSql(sSql);
  dsAdoSql.Open;
  tvMainChange(Self, tvMain.Items[0]);
end;

procedure Tfrm_tycxsz.AddQuyReport;
var
  TableName: string;
  ADOSetTmp: TADODataSet;
  sSql: string;
  MaxID: integer;
  Pnode: TTreeNode;
  Pquy: PQuyTable;
begin
  ADOSetTmp := TADODataSet.Create(nil);
  sSql := 'select max(DJph)as [ID] from SYs_tycx_sql where jbmc=' + '''' + SelectTableName + '''';
  OpenDataset(ADOSetTmp, sSql);
  if not ADOSetTmp.IsEmpty then
    MaxID := ADOSetTmp.fieldByName('ID').AsInteger;
  ADOSetTmp.Close;
  TableName := SelectTableChina + '_' + IntTostr(MaxID + 1);
  if InputQuery('请输入新增表表名', '表名：', TableName) then
  begin
    ADOSetTmp.Connection := ADOConnectionMain;
    ADOSetTmp.CommandText := 'select * from SYs_tycx_sql';
    ADOSetTmp.Open;
    ADOSetTmp.Append;
    ADOSetTmp.FieldByName('Djph').asInteger := MaxID + 1;
    ADOSetTmp.FieldByName('jbmc').asString := SelectTableName;
    ADOSetTmp.FieldByName('Djmc').AsString := TableName;
    if SaveDataSet(ADOSetTmp, false) then
    begin
      ADOSetTmp.Close;
      if SelectNode.Level > 1 then
        Pnode := SelectNode.Parent
      else
        Pnode := SelectNode;
      New(Pquy);
      ADOSetTmp.CommandText := 'select [ID] from SYs_tycx_sql where jbmc=:@P_TName and Djph=:@P_Index';
      ADOSetTmp.Parameters.ParseSQL(ADOSetTmp.CommandText, true);
      ADOSetTmp.Parameters.ParamByName('@P_TName').Value := SelectTableName;
      ADOSetTmp.Parameters.ParamByName('@P_Index').Value := MaxID + 1;
      ADOSetTmp.Open;
      if not ADOSetTmp.IsEmpty then
      begin
        Pquy.Index := ADOSetTmp.fieldbyName('ID').AsInteger;
        Pquy.TableName := SelectTableName;
        tvMain.Items.AddChildObject(Pnode, TableName, Pquy);
      end;
      ADOSetTmp.Close;
      ADOSetTmp.Free;
    end;
  end;
end;

procedure Tfrm_tycxsz.FormClose(Sender: TObject; var Action: TCloseAction);
begin
try
  GetsField;
  if QuyChanged then
    if Application.MessageBox(Pchar('当前报表已变动是否保存？'), '提示', mb_OKCancel) = IDOk then
    begin
      SaveQuyData;
    end;
except

end;
end;

procedure Tfrm_tycxsz.FormShow(Sender: TObject);
var
  SqlQuy: TADOQuery;
  sSql: string;
begin
  DY_PublicUnit.CreateConnect;
  chkTable;
  SqlQuy := TADOQuery.Create(Application);
  SqlQuy.Connection := ADOConnectionMain;
  try
    SqlQuy.SQL.Text := 'drop table #MyTemp';
    SqlQuy.ExecSQL;
  except
  end;
  with SqlQuy do
  begin
    sSql := 'Create Table #MyTemp(FieldC VarChar(100),ChkField Bit,' +
      'FieldE VarChar(100),ChkSum Bit,ChkGroup Bit,ChkCount Bit,FidSum bit)';
    SQL.Clear;
    SQL.Add(sSql);
    ExecSql;
  end;
  SqlQuy.Free;
  dsAdoSql.CommandText := 'select * from #MyTemp';
  dsAdoSql.Connection := ADOConnectionMain;
  dsAdoSql.Open;
  cxgrdbclmnShowFieldC.DataBinding.FieldName := 'FieldC';
  cxgrdbclmnShowChkField.DataBinding.FieldName := 'ChkField';
  cxgrdbclmnShowChkSum.DataBinding.FieldName := 'ChkSum';
  cxgrdbclmnShowChkGroup.DataBinding.FieldName := 'ChkGroup';
  cxgrdbclmnShowChkCount.DataBinding.FieldName := 'ChkCount';
  cxgrdbclmnShowFidSum.DataBinding.FieldName := 'FidSum';
  TreeShow(tvMain);
  if pub_czydm <> '9999' then
    actauthority.Enabled := False
  else
    actauthority.Enabled := True;
end;

procedure Tfrm_tycxsz.cxgrdbtblvwShowEditing(Sender: TcxCustomGridTableView;
  AItem: TcxCustomGridTableItem; var AAllow: Boolean);
var
  RecIdx, ColIdx: Integer;
  SelectFiledName, FieldType, SetFieldName: string;
begin
  RecIdx := cxgrdbtblvwShow.DataController.FocusedRowIndex;
  ColIdx := AItem.Index;
  SelectFiledName := dsAdoSql.FieldByName('FieldE').AsString;
  SetFieldName := cxgrdbtblvwShow.DataController.GetItemFieldName(AItem.Index);
  FieldType := GetFieldTypeEx(SelectTableName, SelectFiledName);
  if cxgrdbtblvwShow.DataController.Values[RecIdx, ColIDx] = False then
  begin
    if SetFieldName = 'ChkSum' then
    begin
      if FieldType <> 'Int' then
      begin
        Application.MessageBox('只有数值才能汇总', '提示', mb_ok);
        AAllow := false;
        Exit;
      end;
      if cxgrdbtblvwShow.DataController.Values[RecIdx, 4] then
      begin
        Application.MessageBox('记数字段不能再汇总', '提示', mb_ok);
        AAllow := false;
        Exit;
      end;
      if cxgrdbtblvwShow.DataController.Values[RecIdx, 1] then
      begin
        Application.MessageBox('已选取字段不能再汇总', '提示', mb_ok);
        AAllow := false;
        Exit;
      end;
    end;
    if SetFieldName = 'ChkCount' then
    begin
      if (FieldTYpe = 'Text') or (FieldType = 'Unk') then
      begin
        Application.MessageBox('文本字段不能记数', '提示', mb_ok);
        AAllow := false;
        Exit;
      end;

      if cxgrdbtblvwShow.DataController.Values[RecIdx, 2] then
      begin
        Application.MessageBox('汇总字段不能再记数', '提示', mb_ok);
        AAllow := false;
        Exit;
      end;
      if cxgrdbtblvwShow.DataController.Values[RecIdx, 1] then
      begin
        Application.MessageBox('已选取字段不能再记数', '提示', mb_ok);
        AAllow := false;
        Exit;
      end;
    end;
    if SetFieldName = 'ChkGroup' then
    begin
      if (FieldTYpe = 'Text') or (FieldType = 'Unk') then
      begin
        Application.MessageBox('文本字段不能分组', '提示', mb_ok);
        AAllow := false;
        Exit;
      end;
    end;
    if SetFieldName = 'ChkField' then
    begin
      if cxgrdbtblvwShow.DataController.Values[RecIdx, 2] then
      begin
        Application.MessageBox('汇总字段不能再选取', '提示', mb_ok);
        AAllow := false;
        Exit;
      end;

      if cxgrdbtblvwShow.DataController.Values[RecIdx, 4] then
      begin
        Application.MessageBox('记数字段不能再选取', '提示', mb_ok);
        AAllow := false;
        Exit;
      end;
    end;
    if SetFieldName = 'FidSum' then
    begin
      if FieldType <> 'Int' then
      begin
        Application.MessageBox('只有数值才能总计', '提示', mb_ok);
        AAllow := false;
        Exit;
      end;
    end;
  end;

end;

initialization
  initialApplication;
end.

