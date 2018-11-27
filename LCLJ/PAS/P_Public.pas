unit P_Public;

interface
uses SysUtils, DB, ADODB, p_dm, cxClasses, cxGridStrs, cxGridDBTableView, cxCustomData,
  ComCtrls, cxEdit, Classes, cxTextEdit, cxGridTableView, cxGridBandedTableView;
const
  MaxID = 9;
type
  TInfo = record
    ID, //代码
      Name, //名称
      SuperID //上级代码
      : string;
    //附加字段
    pym: string; //简码
    Properties: Integer; //编码性质
    Base: Boolean; //是否基本项
  end;
var
  ADOConnectionMain: TADOConnection;
  ApplicationPath: string;
  TreeArrInfo: array of TInfo;
 //增加多表栏
function AddHiddenColum(BandTableView: TcxGridBandedTableView): Boolean;
//增加表头
function AddCustomerBand(BandTableView: TcxGridBandedTableView; BandCaption, FiledName, FieldCaption: string; XH: Integer; Merging: Boolean = False; ReadOnle: Boolean = True): Integer;
//查找项目是否有医嘱内容
function GetXMYZ(XMID: string): Boolean;
//取得路径版本号
function GetBBH(LJID: string): Integer;
//取得路径最新版本号
function GetZXBBH(LJID: string): Integer;
//设置最新版本号
function SetZXBBH(LJID: string;BBH:Integer): Boolean;
  //取得联接字符串
function GetConnectionString: string;
//取得指定表的字段的唯一ID值
function GetColumnID(Tablename, Colname: string; chkInt: Boolean = False): string;
   //取得表中数值字段最大值
function GetMaxValue(tField, tTable: string; vWhere: string = ''): integer;
 //返回带','逗号定符串的几号值
function GetCommaStr(sComma: string; lBit: Integer): string;
 //返回带','逗号定符串的值的个数
function GetCommaStrCount(sComma: string): Integer;
 //高级执行Sql
function ExecSqlEx(ADOConnet: TADOConnection; sSql: string): Boolean;
 //执行Sql
function ExecSql(sSql: string): Boolean;
//打开DataSet(默认ADOConnet)
function OpenDataSet(DataSet: TADODataSet; szSql: string): Boolean;
  //打开DataSet
function OpenDataSetEx(ADOConnet: TADOConnection; DataSet: TADODataSet; szSql: string): Boolean;
//设置GRID字段
function StrToGridField(Grid1: TcxGridDBTableView; sFieldName, sCaption, sWidth: string; sSumField: string = ''; ReadOnly: Boolean = True): Boolean;
  //保存Query
function SaveDataSet(ADOSet1: TADODataSet; Cached: Boolean): Boolean;
 //保存Query
function SaveDataSet2(DataSet: TADODataSet; sTable: string; sID1: string = 'ID';
  sNullField: string = ''): Boolean;
//显示字典树
procedure LoadTreeInfo(vShowTV: TTreeView; vSql: string);
//增加多表头
procedure AddparentBand(BandTableView: TcxGridBandedTableView; ParentJDID, ChildJDID, ChildIndex, ChildCaption: string);

//增加导入界面多表头
procedure AddparentBand_dbt(BandTableView: TcxGridBandedTableView; ParentJDID, ChildJDID, ChildIndex, ChildCaption,rq: string);

implementation




function GetConnectionString: string;
begin
  Result := DM_data.ado_mydata.ConnectionString;
end;

function GetMaxValue(tField, tTable: string; vWhere: string = ''): integer;
var
  ADOQuy1: TADODataSet;
  sSql: string;
begin
  try
    ADOQuy1 := TADODataSet.Create(nil);
    ADOQuy1.Connection := DM_data.ado_mydata;
    if vWhere = '' then
      sSql := 'select isnull(max(' + tField + '),0) From ' + tTable
    else
      sSql := 'select isnull(max(' + tField + '),0) From ' + tTable + ' ' + vWhere;

    if OpenDataSet(ADOQUy1, sSql) then
      if ADOQuy1.Fields[0].IsNull then
        Result := 1
      else
        Result := ADOQuy1.Fields[0].Value + 1;
    ADOQuy1.Close;
  finally
    ADOQuy1.Free;
  end;
end;

function GetColumnID(Tablename, Colname: string; chkInt: Boolean = False): string;
var
  sSql: string;
  ADOQuy1: TADODataSet;
  i: Integer;
begin
  Result := '';
  sSql := 'declare @R bigint ' + #13 + 'Exec @R= [dbo].[sys_maxid] ' + #39 + Tablename + #39
    + ',' + #39 + Colname + #39 + ',@R' + #13 + ' select @R';
  try
    ADOQuy1 := TADODataSet.Create(nil);
    ADOQuy1.Connection := DM_data.ado_mydata;
    if OpenDataSet(ADOQUy1, sSql) then
      if ADOQuy1.Fields[0].IsNull then
        Result := ''
      else
      begin
        Result := ADOQuy1.Fields[0].AsString;
        if not chkInt then
          for I := 0 to MaxID - Length(Result) - 1 do
            Result := '0' + Result;

      end;

    ADOQuy1.Close;
  finally
    ADOQuy1.Free;
  end;
end;

function AddHiddenColum(BandTableView: TcxGridBandedTableView): Boolean;
var
  cl: TcxGridBandedColumn;
  cP: TcxCustomEditProperties;
begin
  cl := BandTableView.CreateColumn;
  cl.PropertiesClass := TcxTextEditProperties;
  cl.Visible := False;
end;
function GetBBH(LJID: string): Integer;
begin
  with dm_data.Qry_pub do
  begin
    close;
    SQL.Text := 'select isnull(ZXBB,0) from LCLJ_LCLJML where LJID=' + #39 + LJID + #39;
    Open;
    if IsEmpty then
      Result := 1
    else
      Result := Fields[0].AsInteger + 1;
    close;
  end;
end;
function GetZXBBH(LJID: string): Integer;
begin
  with dm_data.Qry_pub do
  begin
    close;
    SQL.Text := 'select ZXBB from LCLJ_LCLJML where LJID=' + #39 + LJID + #39+' and isnull(ZXBB,0)<>0';
    Open;
    if IsEmpty then
      Result := -1
    else
      Result := Fields[0].AsInteger ;
    close;
  end;
end;
function SetZXBBH(LJID: string;BBH:Integer): Boolean;
var
 sSql:string;
begin
 sSql := 'update LCLJ_LCLJML set ZXBB='+intTostr(BBH)+' where LJID=' + #39 + LJID + #39;
 Result :=ExecSql(sSql);
end;
function GetXMYZ(XMID: string): Boolean;
var
  sSql: string;
  ADOQuy1: TADODataSet;
begin
  Result := False;
  ADOQuy1 := TADODataSet.Create(nil);
  ADOQuy1.Connection := DM_data.ado_mydata;
  sSql := 'select * from dbo.lclj_blmbmx where XMID=' + #39 + XMID + #39;
  if OpenDataSet(ADOQUy1, sSql) then
  begin
    if not ADOQUy1.IsEmpty then
      Result := True;
    ADOQUy1.close;
  end;
  ADOQuy1.Free;
end;

function AddCustomerBand(BandTableView: TcxGridBandedTableView; BandCaption, FiledName, FieldCaption: string; XH: Integer; Merging: Boolean = False; ReadOnle: Boolean = True): Integer;
var
  cb, PCb: TcxGridBand;
  cl: TcxGridBandedColumn;
  cP: TcxCustomEditProperties;
  aCompent: TComponent;
begin
  aCompent :=BandTableView.FindComponent('JD_' + FiledName);
  if aCompent  <> nil then
  begin

  end
  else
  begin
    if XH <> -1 then
    begin
      cb := TcxGridBand(BandTableView.Bands.Insert(XH));
    end else
      cb := BandTableView.Bands.Add;


    cb.Caption := BandCaption;
    cl := BandTableView.CreateColumn;
    cl.Caption := FieldCaption;
    if FiledName <> '' then
      cl.Name := 'JD_' + FiledName;
    cl.Position.BandIndex := cb.Position.ColIndex;
    cl.Width := 150;
    cl.PropertiesClass := TcxTextEditProperties;
    cl.HeaderAlignmentHorz := taCenter;
    TcxTextEditProperties(cl.Properties).ReadOnly := ReadOnle;
   // cl.PropertiesClass := TcxMemoProperties;
    if Merging then
    begin
      cl.Options.CellMerging := True;
      TcxTextEditProperties(cl.Properties).Alignment.Vert := taVCenter;
    end;
    Result := cb.Position.ColIndex;
  end;
end;




procedure AddparentBand(BandTableView: TcxGridBandedTableView; ParentJDID, ChildJDID, ChildIndex, ChildCaption: string);
var
  Parentcb, ChildCb, cb: TcxGridBand;
  Parentcl, ChildColumn, cl: TcxGridBandedColumn;
  i, k: Integer;
begin
  for I := 0 to BandTableView.ColumnCount - 1 do
  begin
    cl := BandTableView.Columns[i];
    if cl.Name = ChildJDID then
    begin
      ChildColumn := cl;
      Break;
    end;
  end;

  if ChildColumn = nil then Exit;
  ChildCb := BandTableView.Bands.Items[ChildColumn.Position.BandIndex];

  for I := 0 to BandTableView.ColumnCount - 1 do
  begin
    cl := BandTableView.Columns[i];
    if cl.Name = ParentJDID then
    begin
      Parentcl := cl;
      Break;
    end;
  end;
  if Parentcl = nil then Exit;

  Parentcb := BandTableView.Bands.Items[Parentcl.Position.BandIndex];

  if Parentcb.Position.BandIndex = -1 then
  begin
    BandTableView.Bands.BeginUpdate;
    cb := BandTableView.Bands.Add;
    cb.Index := Parentcb.Index;

    cb.Caption := Parentcb.Caption;

    Parentcb.Position.BandIndex := cb.Index;

    Parentcl.Position.BandIndex := Parentcb.Index;
    Parentcb.Caption := '缺省分支';
    BandTableView.Bands.EndUpdate;
  end;
  ChildCb.Position.BandIndex := Parentcb.Position.BandIndex;
  if ChildCaption <> '' then
    ChildCb.Caption := '备用分支 ' + ChildCaption
  else
    ChildCb.Caption := '备用分支 ' + ChildIndex;
end;

procedure AddparentBand_dbt(BandTableView: TcxGridBandedTableView; ParentJDID, ChildJDID, ChildIndex, ChildCaption,rq: string);
var
  Parentcb, ChildCb, cb: TcxGridBand;
  Parentcl, ChildColumn, cl: TcxGridBandedColumn;
  i, k: Integer;
begin
  for I := 0 to BandTableView.ColumnCount - 1 do
  begin
    cl := BandTableView.Columns[i];
    if cl.Name = ChildJDID then
    begin
      ChildColumn := cl;
      Break;
    end;
  end;

  if ChildColumn = nil then Exit;
  ChildCb := BandTableView.Bands.Items[ChildColumn.Position.BandIndex];

  for I := 0 to BandTableView.ColumnCount - 1 do
  begin
    cl := BandTableView.Columns[i];
    if cl.Name = ParentJDID then
    begin
      Parentcl := cl;
      Break;
    end;
  end;
  if Parentcl = nil then Exit;

  Parentcb := BandTableView.Bands.Items[Parentcl.Position.BandIndex];

  if Parentcb.Position.BandIndex = -1 then
  begin
    BandTableView.Bands.BeginUpdate;
    cb := BandTableView.Bands.Add;
    cb.Index := Parentcb.Index;

    cb.Caption := Parentcb.Caption;

    Parentcb.Position.BandIndex := cb.Index;

    Parentcl.Position.BandIndex := Parentcb.Index;
    Parentcb.Caption := '缺省分支';
    BandTableView.Bands.EndUpdate;
  end;
  ChildCb.Position.BandIndex := Parentcb.Position.BandIndex;
  ChildCb.Caption := Copy(rq,1,4)+'年'+Copy(rq,5,2)+'月'+Copy(rq,7,2)+'日';
end;

function GetCommaStr(sComma: string; lBit: Integer): string;
var
  s1, s2: string;
  i: Integer;
begin
  Result := '';
  i := 0;
  if Trim(sComma) = '' then
    Exit;
  s1 := sComma + ',';
  while pos(',', s1) <> 0 do
  begin
    s2 := copy(s1, 0, pos(',', s1) - 1);
    s1 := copy(s1, pos(',', s1) + 1, Length(s1));
    if Trim(s2) <> '' then
    begin
      Inc(i);
      if (lBit = i) and (lBit <> 0) then
      begin
        Result := s2;
        Exit;
      end;
    end;
  end;
end;

function GetCommaStrCount(sComma: string): Integer;
var
  s1, s2: string;
  i: Integer;
begin
  Result := 0;
  i := 0;
  if Trim(sComma) = '' then
    Exit;
  s1 := sComma + ',';
  while pos(',', s1) <> 0 do
  begin
    s2 := copy(s1, 0, pos(',', s1) - 1);
    s1 := copy(s1, pos(',', s1) + 1, Length(s1));
    if Trim(s2) <> '' then
      Inc(i);
  end;
  Result := i;
end;

function ExecSql(sSql: string): Boolean;
begin
  Result := ExecSqlEx(DM_data.ado_mydata, sSql);
end;

function ExecSqlEx(ADOConnet: TADOConnection; sSql: string): Boolean;
begin
  Result := True;
  if Trim(sSql) = '' then
  begin
    Result := False;
    exit;
  end;
  try
    ADOConnet.Execute(sSql);
  except
    Result := False;
  end;
end;

function OpenDataSet(DataSet: TADODataSet; szSql: string): Boolean;
begin
  Result := OpenDataSetEx(DM_data.ado_mydata, DataSet, szSql);
end;

function OpenDataSetEx(ADOConnet: TADOConnection; DataSet: TADODataSet; szSql:
  string): Boolean;
begin
  result := true;
  try
    if DataSet.Active = true then
      DataSet.Close;
    DataSet.CommandType := cmdText;
    DataSet.CommandText := szSql;
    DataSet.Connection := ADOConnet;
    DataSet.Open;
  except
    result := false;
  end;
end;

function SaveDataSet(ADOSet1: TADODataSet; Cached: Boolean): Boolean;
begin
  Result := True;
  if Cached = false then
  begin
    if (ADOSet1.State = dsEdit) or (ADOSet1.State = dsInsert) then
      ADOSet1.Post;
  end
  else
  begin
    if (ADOSet1.State = dsEdit) or (ADOSet1.State = dsInsert) then
      ADOSet1.Post;
    try
      ADOSet1.UpdateBatch;
    except
      Result := False;
    end;
  end;
end;

function SaveDataSet2(DataSet: TADODataSet; sTable: string; sID1: string = 'ID';
  sNullField: string = ''): Boolean;
var
  ADOSetTmp: TADODataSet;
  sID, sSql, sField: string;
  i: Integer;
  SavePlace: TBookmark;
begin
  Result := True;
  sSql := 'SELECT * FROM ' + sTable;
  ADOSetTmp := TADODataSet.Create(nil);
  ADOSetTmp.LockType := ltOptimistic;
  DataSet.DisableControls;
  SavePlace := DataSet.GetBookmark;
  DataSet.First;
  while not DataSet.Eof do
  begin
    if DataSet.FieldByName(sID1).IsNull then
      SID := '0'
    else
      SID := IntTostr(DataSet.FieldByName(sID1).asInteger);
    OpenDataSet(ADOSetTmp, sSql + ' where ' + sID1 + '=' + SID);

    if (sID = '0') or ADOSetTmp.IsEmpty then
    begin
      ADOSetTmp.Insert;
      if sID1 = 'ID' then
        ADOSetTmp.FieldByName(sID1).Value := GetMaxValue(sID1, sTable);
    end
    else
      ADOSetTmp.Edit;

    for i := 0 to ADOSetTmp.FieldCount - 1 do
    begin
      sField := ADOSetTmp.Fields[i].FieldName;
      if sID1 = 'ID' then
      begin
        if (DataSet.FindField(sField) <> nil) and (sField <> sID1) then
          ADOSetTmp.FieldValues[sField] := DataSet.FieldValues[sField];
      end else
        if (DataSet.FindField(sField) <> nil) then
          ADOSetTmp.FieldValues[sField] := DataSet.FieldValues[sField];
    end; {for}
    try
      ADOSetTmp.Post;
    except
      Result := False;
    end;
    DataSet.Next;
  end;
  DataSet.GotoBookmark(SavePlace);
  DataSet.FreeBookmark(SavePlace);
  DataSet.EnableControls;
  ADOSetTmp.Close;
  ADOSetTmp.Free;
end;

function StrToGridField(Grid1: TcxGridDBTableView; sFieldName, sCaption, sWidth: string; sSumField: string = ''; ReadOnly: Boolean = True): Boolean;
var
  s1, s2: string;
  lCol: Integer;
  cxColumn: TcxGridDBColumn;
begin
  Result := False;
  try
    Grid1.BeginUpdate;
    Grid1.ClearItems;
    Grid1.EndUpdate;
    if (sFieldName = '') or (sCaption = '') then
      Exit;
  //显示GRID所有字段
    Grid1.BeginUpdate;
    Grid1.ClearItems;
    s1 := sFieldName + ',';
    lCol := 0;
    while Pos(',', s1) <> 0 do
    begin

      s2 := Copy(s1, 0, Pos(',', s1) - 1);
      s1 := Copy(s1, Pos(',', s1) + 1, Length(s1));
      if Trim(s2) <> '' then
      begin
        cxColumn := Grid1.CreateColumn;
        //s2 := Copy(s2, 2, length(s2) - 2);   ReadOnly
        cxColumn.DataBinding.FieldName := Trim(s2);
        cxColumn.HeaderAlignmentHorz := taCenter;
        cxColumn.Options.Editing := ReadOnly;
        //cxColumn.PropertiesClass :=TcxTextEditProperties;
       // TcxTextEditProperties(cxColumn.Properties).Alignment.Horz :=taCenter;
        cxColumn.Visible := False;
      end;
    end;
  //显示GRID所有字段标题
    s1 := sCaption + ',';
    lCol := 0;
    while Pos(',', s1) <> 0 do
    begin
      s2 := Copy(s1, 0, Pos(',', s1) - 1);
      s1 := Copy(s1, Pos(',', s1) + 1, length(s1));
      if Trim(s2) <> '' then
      begin
        Grid1.Columns[lCol].Caption := Trim(s2);
        Grid1.Columns[lCol].Visible := True;
        inc(lCol);
      end;
    end;
   //显示GRID所有字段宽度
    if sWidth <> '' then
    begin
      s1 := sWidth + ',';
      lCol := 0;
      while Pos(',', s1) <> 0 do
      begin
        s2 := Copy(s1, 0, pos(',', s1) - 1);
        s1 := Copy(s1, Pos(',', s1) + 1, Length(s1));
        if Trim(s2) <> '' then
        begin
          Grid1.Columns[lCol].Width := StrToIntDef(Trim(s2), 80);
          inc(lCol);
        end;
      end;
    end;
   //设置合计显示格式
    if sSumField <> '' then
    begin
      Grid1.OptionsView.Footer := True;
      s1 := sSumField + ',';
      while Pos(',', s1) <> 0 do
      begin
        s2 := Copy(s1, 0, Pos(',', s1) - 1);
        s1 := Copy(s1, Pos(',', s1) + 1, Length(s1));
        if Trim(s2) <> '' then
        begin
          s2 := Copy(s2, 2, length(s2) - 2);
          cxColumn := Grid1.GetColumnByFieldName(s2);
          if Assigned(cxColumn) then
            cxColumn.Summary.FooterKind := skSum;
        end;
      end;

    end;
    Grid1.EndUpdate;
    Result := True;
  except
    Result := False;
  end;
end;

procedure initialApplication;
begin
  ApplicationPath := ExtractFilePath(paramstr(0));
  cxSetResourceString(@scxGridNoDataInfoText, '');
end;

procedure LoadTreeInfo(vShowTV: TTreeView; vSql: string);
var
  sql: string;
  i, nCount: Integer;

  NewNode, node: TTreeNode;
  SqlQuy: TADOQuery;

  //加载一个节点
  procedure InitOneNode(ANode: TTreeNode; AId: string);
  var
    k: Integer;
  begin
    for k := 0 to length(TreeArrInfo) - 1 do
      if TreeArrInfo[k].SuperID = AId then
      begin
        NewNode := vShowTV.Items.AddChild(ANode, TreeArrInfo[k].Name);
        NewNode.SelectedIndex := K;
        InitOneNode(NewNode, TreeArrInfo[k].ID);
      end;
  end;

begin
  vShowTV.Items.BeginUpdate;
  vShowTV.Items.Clear;
  SqlQuy := TADOQuery.Create(nil);
  SqlQuy.Connection := DM_data.ado_mydata;
  sql := vSql;
  SqlQuy.Close;
  SqlQuy.SQL.Text := sql;
  SqlQuy.Open;
  SetLength(TreeArrInfo, 0);
  nCount := SqlQuy.RecordCount;
  if nCount > 0 then
  begin
    SetLength(TreeArrInfo, nCount);
    for i := 0 to nCount - 1 do
      with TreeArrInfo[i] do
      begin
        ID := Trim(SqlQuy.FieldByName('BM').AsString);
        Name := Trim(SqlQuy.FieldByName('MC').AsString);
        SuperID := Trim(SqlQuy.FieldByName('SJ').AsString); //如没有此字段，可根据上下级编码规则赋值
        pym := Trim(SqlQuy.FieldByName('pym').AsString);
        Properties := SqlQuy.FieldByName('XZ').AsInteger;
        if SqlQuy.FindField('JB') <> nil then
          Base := SqlQuy.FieldByName('JB').AsBoolean
        else
          Base := False;
        SqlQuy.Next;
      end;
  end;
  SqlQuy.Close;

  if nCount > 0 then
  begin
    node := vShowTV.Items.Add(nil, '全部');
    node.SelectedIndex := -1;
    InitOneNode(node, ''); //假设顶级代码为空白

  end else
  begin
    node := vShowTV.Items.Add(nil, '全部');
    node.SelectedIndex := -1;
  end;
  //vShowTV.FullExpand;
  vShowTV.Items.EndUpdate;
end;

initialization
  initialApplication;
end.

