unit P_Public;

interface
uses SysUtils, DB, ADODB, p_dm, cxClasses, cxGridStrs, cxGridDBTableView, cxCustomData,
  ComCtrls, cxEdit, Classes, cxTextEdit, cxGridTableView, cxGridBandedTableView;
const
  MaxID = 9;
type
  TInfo = record
    ID, //����
      Name, //����
      SuperID //�ϼ�����
      : string;
    //�����ֶ�
    pym: string; //����
    Properties: Integer; //��������
    Base: Boolean; //�Ƿ������
  end;
var
  ADOConnectionMain: TADOConnection;
  ApplicationPath: string;
  TreeArrInfo: array of TInfo;
 //���Ӷ����
function AddHiddenColum(BandTableView: TcxGridBandedTableView): Boolean;
//���ӱ�ͷ
function AddCustomerBand(BandTableView: TcxGridBandedTableView; BandCaption, FiledName, FieldCaption: string; XH: Integer; Merging: Boolean = False; ReadOnle: Boolean = True): Integer;
//������Ŀ�Ƿ���ҽ������
function GetXMYZ(XMID: string): Boolean;
//ȡ��·���汾��
function GetBBH(LJID: string): Integer;
//ȡ��·�����°汾��
function GetZXBBH(LJID: string): Integer;
//�������°汾��
function SetZXBBH(LJID: string;BBH:Integer): Boolean;
  //ȡ�������ַ���
function GetConnectionString: string;
//ȡ��ָ������ֶε�ΨһIDֵ
function GetColumnID(Tablename, Colname: string; chkInt: Boolean = False): string;
   //ȡ�ñ�����ֵ�ֶ����ֵ
function GetMaxValue(tField, tTable: string; vWhere: string = ''): integer;
 //���ش�','���Ŷ������ļ���ֵ
function GetCommaStr(sComma: string; lBit: Integer): string;
 //���ش�','���Ŷ�������ֵ�ĸ���
function GetCommaStrCount(sComma: string): Integer;
 //�߼�ִ��Sql
function ExecSqlEx(ADOConnet: TADOConnection; sSql: string): Boolean;
 //ִ��Sql
function ExecSql(sSql: string): Boolean;
//��DataSet(Ĭ��ADOConnet)
function OpenDataSet(DataSet: TADODataSet; szSql: string): Boolean;
  //��DataSet
function OpenDataSetEx(ADOConnet: TADOConnection; DataSet: TADODataSet; szSql: string): Boolean;
//����GRID�ֶ�
function StrToGridField(Grid1: TcxGridDBTableView; sFieldName, sCaption, sWidth: string; sSumField: string = ''; ReadOnly: Boolean = True): Boolean;
  //����Query
function SaveDataSet(ADOSet1: TADODataSet; Cached: Boolean): Boolean;
 //����Query
function SaveDataSet2(DataSet: TADODataSet; sTable: string; sID1: string = 'ID';
  sNullField: string = ''): Boolean;
//��ʾ�ֵ���
procedure LoadTreeInfo(vShowTV: TTreeView; vSql: string);
//���Ӷ��ͷ
procedure AddparentBand(BandTableView: TcxGridBandedTableView; ParentJDID, ChildJDID, ChildIndex, ChildCaption: string);

//���ӵ��������ͷ
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
    Parentcb.Caption := 'ȱʡ��֧';
    BandTableView.Bands.EndUpdate;
  end;
  ChildCb.Position.BandIndex := Parentcb.Position.BandIndex;
  if ChildCaption <> '' then
    ChildCb.Caption := '���÷�֧ ' + ChildCaption
  else
    ChildCb.Caption := '���÷�֧ ' + ChildIndex;
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
    Parentcb.Caption := 'ȱʡ��֧';
    BandTableView.Bands.EndUpdate;
  end;
  ChildCb.Position.BandIndex := Parentcb.Position.BandIndex;
  ChildCb.Caption := Copy(rq,1,4)+'��'+Copy(rq,5,2)+'��'+Copy(rq,7,2)+'��';
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
  //��ʾGRID�����ֶ�
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
  //��ʾGRID�����ֶα���
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
   //��ʾGRID�����ֶο��
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
   //���úϼ���ʾ��ʽ
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

  //����һ���ڵ�
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
        SuperID := Trim(SqlQuy.FieldByName('SJ').AsString); //��û�д��ֶΣ��ɸ������¼��������ֵ
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
    node := vShowTV.Items.Add(nil, 'ȫ��');
    node.SelectedIndex := -1;
    InitOneNode(node, ''); //���趥������Ϊ�հ�

  end else
  begin
    node := vShowTV.Items.Add(nil, 'ȫ��');
    node.SelectedIndex := -1;
  end;
  //vShowTV.FullExpand;
  vShowTV.Items.EndUpdate;
end;

initialization
  initialApplication;
end.

