unit DY_PublicUnit;

interface
uses Forms, SysUtils,INIUnit, DB, ADODB, Windows, cxClasses, cxGridStrs,
  cxGridDBTableView, cxCustomData,p_dm;
const
  IniFileName = 'DB.Ini';
type
  PTableReocrd = ^TTableRecord;
  TTableRecord = record
    Bzwm: string; //��������
    Bywm: string; //��Ӣ����
  end;
var
  ApplicationPath: string;
  ConnectStr: string; //�����ַ���
  ADOConnectionMain: TADOConnection;
function CreateConnect: Boolean;
//���������ִ�
function CreateConnectStr(const ServerName, DataBaseName, UserName, Password: string): string;
 //�߼�ִ��Sql
function ExecSqlEx(ADOConnet: TADOConnection; sSql: string): Boolean;
 //ִ��Sql
function ExecSql(sSql: string): Boolean;
 //ȡ�������ַ���
function GetConnectionString: string;
  //ȡ�ñ�����ֵ�ֶ����ֵ
function GetMaxValue(tField, tTable: string): integer;
  //���ش�','���Ŷ������ļ���ֵ
function GetCommaStr(sComma: string; lBit: Integer): string;
 //���ش�','���Ŷ�������ֵ�ĸ���
function GetCommaStrCount(sComma: string): Integer;
  //�������ݱ���ֶ���ȡ�����ֶ�����
function GetFieldType(tTableName, fField: string): string;
function GetFieldTypeEx(tTableName, fField: string): string;
//��DataSet(Ĭ��ADOConnet)
function OpenDataSet(DataSet: TADODataSet; szSql: string): Boolean;
  //��DataSet
function OpenDataSetEx(ADOConnet: TADOConnection; DataSet: TADODataSet; szSql: string): Boolean;
  //����Query
function SaveDataSet(ADOSet1: TADODataSet; Cached: Boolean): Boolean;
 //����Query
function SaveDataSet2(DataSet: TADODataSet; sTable: string; sID1: string = 'ID';
  sNullField: string = ''): Boolean;
//����GRID�ֶ�
function StrToGridField(Grid1: TcxGridDBTableView; sFieldName, sCaption, sWidth: string; sSumField: string = ''): Boolean;
  //���ϵͳ��������
procedure chkTable;
//ϵͳ��ʼ��
procedure initialApplication;
//��ȡ�����ļ���Ϣ
procedure ReadFromIni(var aServerName, aDatabaseName, aUserName, aPassword: string);
//�������ļ�д����Ϣ
procedure WriteToIni(const aServerName, aDatabaseName, aUserName, aPassword: string);
implementation

function CreateConnect: Boolean;
var
  connectStr, IniFile, ServerName, DataBaseName, UserName, UserPass: string;
begin
  ReadFromIni(ServerName, DataBaseName, UserName, UserPass);
  connectStr := CreateConnectStr(ServerName, DataBaseName, UserName, UserPass);
  try
    ADOConnectionMain:=dm_data.ado_mydata;
   // ADOConnectionMain := TADOConnection.Create(Application);
    //ADOConnectionMain.ConnectionString := ConnectStr;
   // ADOConnectionMain.LoginPrompt := false;
  //  ADOConnectionMain.Provider := 'SQLOLEDB.1';
   // ADOConnectionMain.Connected := true;
    Result := True;
  except
    Application.MessageBox('���ݿ����ƴ���', '��ʾ', mb_iconInformation + mb_defbutton1);
    Result := False;
  end;

end;

function ExecSql(sSql: string): Boolean;
begin
  Result := ExecSqlEx(ADOConnectionMain, sSql);
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


function GetConnectionString: string;
begin
  Result := ADOConnectionMain.ConnectionString;
end;

function GetMaxValue(tField, tTable: string): integer;
var
  ADOQuy1: TADODataSet;
begin
  try
    ADOQuy1 := TADODataSet.Create(nil);
    ADOQuy1.ConnectionString := GetConnectionString;
    if OpenDataSet(ADOQUy1, 'select Max(' + tField + ') From ' + tTable) then
      if ADOQuy1.Fields[0].IsNull then
        Result := 1
      else
        Result := ADOQuy1.Fields[0].Value + 1;
    ADOQuy1.Close;
  finally
    ADOQuy1.Free;
  end;
end;

function OpenDataSet(DataSet: TADODataSet; szSql: string): Boolean;
begin
  Result := OpenDataSetEx(ADOConnectionMain, DataSet, szSql);
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

function StrToGridField(Grid1: TcxGridDBTableView; sFieldName, sCaption, sWidth: string; sSumField: string = ''): Boolean;
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
        s2 := Copy(s2, 2, length(s2) - 2);
        cxColumn.DataBinding.FieldName := Trim(s2);
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

procedure chkTable;
var
  ADOSetTmp: TADODataSet;
  sSql: string;
begin
  ADOSetTmp := TADODataSet.Create(Application);
  ADOSetTmp.LockType := ltReadOnly;
  sSql := 'select * from dbo.sysobjects where id = object_id(N' + '''' + '[dbo].[sys_tycx_dzb]' + '''' + ')';
  OpenDataSet(ADOSetTmp, sSql);
  if ADOSetTmp.IsEmpty then
  begin
    sSql := 'CREATE TABLE [dbo].[sys_tycx_dzb] ([ID] [int] IDENTITY (1, 1) NOT NULL , ' +
      ' [Bywm] [varchar] (80) COLLATE Chinese_PRC_CI_AS NULL , ' +
      '	[Bzwm] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL , ' +
      '	[Zdywm] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL , ' +
      '	[Zdzwm] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL , ' +
      '	[Zdkd] [int] NULL ,[xsph] [int] NULL , ' +
      '	[bz] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,' +
      ' CONSTRAINT [PK_sys_tycx_dzb] PRIMARY KEY  CLUSTERED	([ID])  ON [PRIMARY] ' +
      ' ) ON [PRIMARY]';
    ExecSQL(sSql);
  end;

  ADOSetTmp.Close;
  sSql := 'select * from dbo.sysobjects where id = object_id(N' + '''' + '[dbo].[SYS_tycx_Sql]' + '''' + ')';
  OpenDataSet(ADOSetTMp, sSql);
  if ADOSetTMp.IsEmpty then
  begin
    sSql := 'CREATE TABLE [dbo].[SYS_tycx_Sql] ([ID] [int] IDENTITY (1, 1) NOT NULL ,' +
      '	[jbmc] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,' +
      ' [Djph] [int] NULL ,[Djmc] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,' +
      ' [Cxdj] [varchar] (500) COLLATE Chinese_PRC_CI_AS NULL ,' +
      ' [Syzd] [varchar] (500) COLLATE Chinese_PRC_CI_AS NULL ,' +
      ' [Cxdjz] [varchar] (500) COLLATE Chinese_PRC_CI_AS NULL ,' +
      ' [bblr] [image] NULL ,' +
      ' [Fczd] [varchar] (500) COLLATE Chinese_PRC_CI_AS NULL ,' +
      ' [Hczd] [varchar] (500) COLLATE Chinese_PRC_CI_AS NULL ,' +
      ' [Jszd] [varchar] (500) COLLATE Chinese_PRC_CI_AS NULL ,' +
      ' [Zjzd] [varchar] (500) COLLATE Chinese_PRC_CI_AS NULL ,' +
      ' CONSTRAINT [PK_SYS_tycx_Sql] PRIMARY KEY  CLUSTERED([ID]) ON [PRIMARY])' +
      ' ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]';
    ExecSQL(sSql);
  end;
  ADOSetTmp.Close;
  
  sSql := 'select * from dbo.sysobjects where id = object_id(N' + '''' + '[dbo].[SYS_tycx_Authority]' + '''' + ')';
  OpenDataSet(ADOSetTMp, sSql);
  if ADOSetTMp.IsEmpty then
  begin
    sSql := 'CREATE TABLE [dbo].[SYS_tycx_Authority] ([ID] [int] IDENTITY (1, 1) NOT NULL ,' +
      ' [bywm] [varchar] (80) COLLATE Chinese_PRC_CI_AS NULL ,' +
      ' [bZwm] [varchar] (80) COLLATE Chinese_PRC_CI_AS NULL ,' +
      ' [Authority] [varchar] (2000) COLLATE Chinese_PRC_CI_AS NULL ,'+
      ' CONSTRAINT [PK_tycx_Authority] PRIMARY KEY  CLUSTERED([ID]) ON [PRIMARY])'+
      '  ON [PRIMARY]'; ;
    ExecSQL(sSql);
  end;
  ADOSetTmp.Close;
  ADOSetTmp.Free;
end;

function GetFieldType(tTableName, fField: string): string;
var
  ADOSetTmp: TADODataSet;
  sSql, sFieldType, S1: string;
begin
  ADOSetTmp := TADODataSet.Create(nil);
  ADOSetTmp.LockType := ltReadOnly;
  sSql := 'EXEC sp_columns @table_name = ' + '''' + tTableName + '''' + ',@column_name =' + '''' + fField + '''';
  OpenDataset(ADOSetTmp, sSql);
  if not ADOSetTmp.IsEmpty then
  begin
    sFieldType := ADOSetTmp.fieldbyName('Type_name').AsString;
    if (trim(sFieldType) = 'smallmoney') or (trim(sFieldType) = 'money') then
      s1 := 'Money';
    if (trim(sFieldType) = 'float') or (trim(sFieldType) = 'numeric') then
      s1 := 'Float';
    if (trim(sFieldType) = 'int identity') or (trim(sFieldType) = 'int') or
      (trim(sFieldType) = 'smallint')
      then
      s1 := 'Int';
    if (trim(sFieldType) = 'text') or (trim(sFieldType) = 'ntext') or
      (trim(sFieldType) = 'image')
      then
      s1 := 'Text';

    if (trim(sFieldType) = 'varchar') or (trim(sFieldType) = 'char')
      then
      s1 := 'Str';

    if (trim(sFieldType) = 'bit') then s1 := 'Bool';
    if (trim(sFieldType) = 'datetime') then s1 := 'Date';
    if (trim(sFieldType) = 'uniqueidentifier') then s1 := 'Unk';
  end;
  Result := S1;
end;

function GetFieldTypeEx(tTableName, fField: string): string;
var
  ADOSetTmp: TADODataSet;
  sSql, sFieldType, S1: string;
begin
  ADOSetTmp := TADODataSet.Create(nil);
  ADOSetTmp.LockType := ltReadOnly;
  sSql := 'EXEC sp_columns @table_name = ' + '''' + tTableName + '''' + ',@column_name =' + '''' + fField + '''';
  OpenDataset(ADOSetTmp, sSql);
  if not ADOSetTmp.IsEmpty then
  begin
    sFieldType := ADOSetTmp.fieldbyName('Type_name').AsString;
    if (trim(sFieldType) = 'int identity') or (trim(sFieldType) = 'int') or
      (trim(sFieldType) = 'smallint') or (trim(sFieldType) = 'smallmoney') or
      (trim(sFieldType) = 'money') or (trim(sFieldType) = 'float') or
      (trim(sFieldType) = 'numeric')
      then
      s1 := 'Int';
    if (trim(sFieldType) = 'text') or (trim(sFieldType) = 'ntext') or
      (trim(sFieldType) = 'image')
      then
      s1 := 'Text';

    if (trim(sFieldType) = 'varchar') or (trim(sFieldType) = 'char')
      then
      s1 := 'Str';

    if (trim(sFieldType) = 'bit') then s1 := 'Bool';
    if (trim(sFieldType) = 'datetime') then s1 := 'Date';
    if (trim(sFieldType) = 'uniqueidentifier') then s1 := 'Unk';
  end;
  Result := S1;
end;

procedure initialApplication;
begin
  ApplicationPath := ExtractFilePath(paramstr(0));
  cxSetResourceString(@scxGridNoDataInfoText, '');
end;

function CreateConnectStr(const ServerName, DataBaseName, UserName, Password: string): string;
begin
//  Result := 'Provider=SQLOLEDB.1;Password=' + Password + ';Persist Security Info=True;'
  //  + 'User ID=' + UserName + ';Initial Catalog=' + DataBaseName
   // + ';Data Source=' + ServerName;
   Result:= dm_data.ado_mydata.Connectionstring;
end;
//��ȡ�����ļ���Ϣ

procedure ReadFromIni(var aServerName, aDatabaseName, aUserName, aPassword: string);
begin
  FixIniFileName := ApplicationPath + '\' + IniFileName;
  aServerName := IniReadStr('DB', 'ServerName', '');
  aDatabaseName := IniReadStr('DB', 'DatabaseName', '');
  aUserName := IniReadStr('DB', 'UserName', '');
  aPassword := IniReadStr('DB', 'Password', '');
end;
//�������ļ�д����Ϣ

procedure WriteToIni(const aServerName, aDatabaseName, aUserName, aPassword: string);
begin
  FixIniFileName := ApplicationPath + '\' + IniFileName;
  IniWriteStr('DB', 'ServerName', aServerName);
  IniWriteStr('DB', 'DatabaseName', aDatabaseName);
  IniWriteStr('DB', 'UserName', aUserName);
  IniWriteStr('DB', 'Password', aPassword);
end;

end.

