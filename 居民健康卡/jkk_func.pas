{///////////////////////////////////////////////////////////////////////////////
使用时请在工程文件 Application.Run; 前一行添加以下代码

  if not Application.Terminated then
    jkk_func_CheckDll;

///////////////////////////////////////////////////////////////////////////////}
unit jkk_func;

interface
uses
  windows, SysUtils, Classes, Dialogs, db,TypInfo,adodb,DBClient, Variants,
   Forms, p_jkk_re, p_dm, p_func,IniFiles,HealthCardIntf_TLB,superobject,EncdDecd;

  const cstFieldType = 'FieldType';
  const cstFieldName = 'FieldName';
  const cstFieldSize = 'FieldSize';
  const cstJsonType = 'JsonType';
  const cstRequired = 'Required';
  const cstFieldIndex = 'FieldIndex';
  const cstCols= 'Cols';
  const cstData= 'Data';
  type
  TAutoCallbackNotifyEvent = procedure(const kh: string) of object; stdcall;
  TAutoCallbackThreadMethod = procedure of object;
  PRCTFParam = ^TRCTFParam;
  TRCTFParam = record
    _TimeOut: Integer;
    _CallBack: TAutoCallbackThreadMethod;
//    _CallBack:TAutoCallbackNotifyEvent;
  end;

var
    //-------绑定卡条码号，绑定卡类别
  pub_bdkh, pub_bdktmh, pub_bdklb,ATR_NO: string;
  //--------------------------健康卡连接参数
  rcinit:Integer;  //连接标志
  hc:TCHealthCardIntf;
  err:string;      //连接错误信息
  //写卡jsonstr参数
  json,jsonobj: ISuperObject;
  jsonstr : widestring;
  result_message:string;

  //-----------------------------------------------------------
  csh: function(ServerIPV4, ServerPort, UserID, UserPass: string): boolean; stdcall;
  //自动初始化
  jkk_csh: function(): Boolean; stdcall;
  //错误信息
  cwxx: function(): string; stdcall;
  //健康卡基本信息
  CardInfo: function(var jkk_CardInfo: Tjkk_CardInfo): boolean; stdcall;
  //持卡人基本信息
  PsnBaseInfo: function(var jkk_PsnBaseInfo: Tjkk_PsnBaseInfo): boolean; stdcall;
  //持卡人支付信息
  PayTypeInfo: function(var jkk_PayTypeInfo: Tjkk_PayTypeInfo): boolean; stdcall;
  //持卡人地址信息
  AddressInfo: function(var jkk_AddressInfo: Tjkk_AddressInfo): boolean; stdcall;
  //联系人信息
  RelPsnInfo: function(var jkk_RelPsnInfo: Tjkk_RelPsnInfo): boolean; stdcall;
  //职业婚姻信息
  MarryInfo: function(var jkk_MarryInfo: Tjkk_MarryInfo): boolean; stdcall;
  //医学标志信息
  MedicalFlags: function(var jkk_MedicalFlags: Tjkk_MedicalFlags): boolean; stdcall;
  //精神病信息
  Mental: function(var jkk_Mental: Tjkk_Mental): boolean; stdcall;
  //证件信息
  PapersInfo: function(var jkk_PapersInfo: Tjkk_PapersInfo): boolean; stdcall;
  //过敏信息
  AllergyInfo: function(var jkk_AllergyInfo: Tjkk_AllergyInfo): boolean; stdcall;
  //免疫信息
  ImmuneInfo: function(var jkk_ImmuneInfo: Tjkk_ImmuneInfo): boolean; stdcall;
  //住院信息
  InbedInfo: function(var jkk_InbedInfo: Tjkk_InbedInfoarr): boolean; stdcall;
  //门诊信息
  ExamInfo: function(var jkk_ExamInfo: Tjkk_ExamInfoarr): boolean; stdcall;
  //照片信息(base64)
  PhotoInfo: function(var jkk_PhotoInfo: Tjkk_PhotoInfo): boolean; stdcall;
  //写入联系人地址
  set_AddressInfo: function(jkk_AddressInfo: Tjkk_AddressInfo): boolean; stdcall;
  //写入持卡人支付信息
  set_PayTypeInfo: function(jkk_PayTypeInfo: Tjkk_PayTypeInfo): boolean; stdcall;
  //写入联系人信息
  set_RelPsnInfo: function(jkk_RelPsnInfo: Tjkk_RelPsnInfo): boolean; stdcall;
  //写入职业婚姻信息
  set_MarryInfo: function(jkk_MarryInfo: Tjkk_MarryInfo): boolean; stdcall;
  //写入医学标志信息
  set_MedicalFlags: function(jkk_MedicalFlags: Tjkk_MedicalFlags): boolean; stdcall;
  set_Mental: function(jkk_Mental: Tjkk_Mental): boolean; stdcall;
  set_PapersInfo: function(jkk_PapersInfo: Tjkk_PapersInfo): boolean; stdcall;
  set_AllergyInfo: function(jkk_AllergyInfo: Tjkk_AllergyInfo): boolean; stdcall;
  set_ImmuneInfo: function(jkk_ImmuneInfo: Tjkk_ImmuneInfo): boolean; stdcall;
  set_PhotoInfo: function(jkk_PhotoInfo: Tjkk_PhotoInfo): boolean; stdcall;
  set_ExamInfo: function(jkk_ExamInfo: Tjkk_ExamInfo): boolean; stdcall;
  set_InbedInfo: function(jkk_InbedInfo: Tjkk_InbedInfo): boolean; stdcall;
  create_zy: procedure;
  create_mz: procedure;
  create_zy_edit: procedure;
  create_mz_edit: procedure;

//检测，并下载需要的dll
procedure jkk_func_CheckDll;
procedure JKKUnInitial; //健康卡取消接口初始化
//添加健康卡查询是否绑定方法
function proc_cx_jzklx(v_bdkh: string; len9: Boolean = False): Boolean;
//就诊卡绑定
function proc_up_jkkbd(_tmh, _xm, _xb, _nl, _dz, _sfzhm, _csrq, _jkkh, _jkklb: string): Boolean;

function func_zh_csrq(_str: string): string;
 //健康卡读取
function InfoJson(BusinessNo:integer):ISuperObject; //将JSON串转换成JSOn对象
//新封装健康卡写卡信息
function WriteInfoToCard(jsonstr:string):string;//向卡中写入持卡人基本信息
//创建josn值
function CreateJsonValue(Json: ISuperObject;const Name: string; const Value: Variant): Boolean;
//导入JOSN格式化数据
function ImportDataFromJSon(DataSet: TDataSet;DataJson: ISuperObject): Integer;
//加载数据集数据到josn格式
function JSonFromDataSet(DataSet: TDataSet): string;overload;
 //加载数据集数据到josn格式
function JSonFromDataSet(DataSet: TADOQuery): string;overload;
  //加载数据集数据到josn格式
function JSonFromDataADOSet(DataSet: TADOQuery;aTileJosn:string): string;



{$REGION '自动读卡'}
/// <summary>
/// 自动读取健康卡
/// </summary>
/// <param name="TimeOut">超时时间  （秒）</param>
/// <param name="CallBack">回调</param>
/// <returns></returns>
function Zddqjjk_Start(TimeOut: Integer; CallBack: TAutoCallbackThreadMethod): Boolean;
/// <summary>
/// 停止自动读卡
/// </summary>
procedure Zddqjjk_Stop;

var
  Auto_CardInfo: Pjkk_CardInfo;
  Auto_ReadThreadId: DWORD = 0;
  Auto_AbortThread: Boolean = False;
{$ENDREGION '自动读卡'}


procedure addlog(Astr: string);
procedure addLogTofile(Astr: string);
implementation

procedure addLogTofile(Astr: string);
var
  Transfilename: string;
  cmdStr: string;
begin
  Transfilename := 'c:\log\';
  Astr := FormatDateTime('yyyy-MM-dd HH:nn:ss ', now) + Astr;
  Transfilename := Transfilename +
    FormatDateTime('yyyyMMdd', Date) + '.txt';
  cmdStr := 'cmd /c echo ' + Astr + ' >> ' + Transfilename;
  WinExec(PAnsiChar(cmdStr), 0);
end;

procedure addlog(Astr: string);
begin
  Astr := StringReplace(Astr, '<', '', [rfReplaceAll]);
  Astr := StringReplace(Astr, '>', '', [rfReplaceAll]);
  Astr := StringReplace(Astr, #13, '', [rfReplaceAll]);
  Astr := StringReplace(Astr, #10, '', [rfReplaceAll]);
  //以上符号可能导致写入日志不成功
  OutputDebugString(Pchar(Astr));
  addLogTofile(Astr);
end;

{$REGION '自动读卡实例'}

function ReadCardThreadFunc(P: PRCTFParam): DWORD; stdcall;
var
  I: Integer;
  TmpForm: TForm;
begin
  Auto_AbortThread := False;
  Result := 0;
  TmpForm := nil;
  for I := 0 to P^._TimeOut - 1 do
  begin
    if not Assigned(TmpForm) then
      TmpForm := Pointer(PDWORD(Dword(@@p^._CallBack) + 4)^);
    if Auto_AbortThread or
      (not Assigned(TmpForm)) or
      (not TmpForm.HandleAllocated) then
    begin
      Break;
    end;
    if CardInfo(Auto_CardInfo^) then
    begin
      TThread.Synchronize(nil, p^._CallBack);
      Break;
    end;
    Sleep(1000);
  end;
  Auto_ReadThreadId := 0;
end;

function Zddqjjk_Start(TimeOut: Integer; CallBack: TAutoCallbackThreadMethod): Boolean;
var
  P: PRCTFParam;
begin
  if InterlockedCompareExchange(Integer(Auto_ReadThreadId), -1, 0) = 0 then
  begin
    New(P);
    p^._TimeOut := TimeOut;
    p^._CallBack := CallBack;
    CreateThread(nil, 0, @ReadCardThreadFunc, p, 0, Auto_ReadThreadId);
  end;
  Result := True;
end;

procedure Zddqjjk_Stop;
begin
  Auto_AbortThread := False;
end;
{$ENDREGION '自动读卡实例'}

function proc_cx_jzklx(v_bdkh: string; len9: Boolean = False): Boolean;
begin
  Result := False;
  pub_bdktmh := '';
  pub_bdklb := '';
  if Length(v_bdkh) > 19 then
  begin
    v_bdkh := Copy(v_bdkh, 1, 19);
  end;
  DM_data.qry_pub.Close;
  DM_data.qry_pub.SQL.Text := ' exec sys_cx_bdjzk ' + #39 + v_bdkh + #39;
  DM_data.qry_pub.Open;
  if len9 then //  强制，住院9位卡
  begin
    pub_bdktmh := '';
    DM_data.qry_pub.First;
    while not DM_data.qry_pub.Eof do
    begin
      if Length(Trim(DM_data.qry_pub.FieldByName('tmh').AsString)) = 9 then
      begin
        pub_bdktmh := DM_data.qry_pub.FieldByName('tmh').AsString;
        pub_bdklb := DM_data.qry_pub.FieldByName('bdlb').AsString;
        Result := True;
        Break;
      end;
      DM_data.qry_pub.Next;
    end;
  end else begin
    if DM_data.qry_pub.RecordCount > 0 then
    begin
      pub_bdktmh := DM_data.qry_pub.FieldByName('tmh').AsString;
      pub_bdklb := DM_data.qry_pub.FieldByName('bdlb').AsString;
      Result := True;
    end;
  end;
end;

{-------------------------------------------------------------------------------
  过程名:    CreateJsonValue
  作者:      yangshuai
  日期:      2017.06.17
  参数:      Json: ISuperObject;const Name: string; const Value: Variant
  返回值:    Boolean
-------------------------------------------------------------------------------}
function CreateJsonValue(Json: ISuperObject;const Name: string; const Value: Variant): Boolean;
begin
  Result := False;
  Json.O[Name] := SO(Value);
  Result := True;
end;

{-------------------------------------------------------------------------------
  过程名:    CreateJsonValueByField
  作者:      yangshuai
  日期:      2017.06.17
  参数:      Json: ISuperObject;Field: TField
  返回值:    Boolean
-------------------------------------------------------------------------------}
function CreateJsonValueByField(Json: ISuperObject;Field: TField): Boolean;
begin
  Result := False;
  if Field Is TDateTimeField then
    Json.O[Field.FieldName] := SO(Field.AsDateTime)
  else if Field is TBlobField then
    Json.S[Field.FieldName] := EncodeString(Field.AsString)
  else
    Json.O[Field.FieldName] := SO(Field.Value);
  Result := True;
end;

{-------------------------------------------------------------------------------
  过程名:    GetValue
  作者:      yangshuai
  日期:      2017.06.17
  参数:      Json: ISuperObject;const Name: string
  返回值:    Variant
-------------------------------------------------------------------------------}
function GetValue(Json: ISuperObject;const Name: string): Variant;
begin
  case Json.DataType of
      stNull: Result := null;
      stBoolean: Result := Json.B[Name];
      stDouble: Result := Json.D[Name];
      stCurrency: Result := Json.C[Name];
      stInt: Result := Json.I[Name];
      stString: Result := Json.S[Name];
  end;
end;

{-------------------------------------------------------------------------------
  过程名:    GetValue2Field
  作者:      yangshuai
  日期:      2017.06.17
  参数:      Field: TField; JsonValue:ISuperObject
  返回值:    Variant
-------------------------------------------------------------------------------}
function GetValue2Field(Field: TField; JsonValue:ISuperObject): Variant;
begin
  if JsonValue.DataType = stNull then
      Result :=null
  else if Field is TDateTimeField then
      Result := JavaToDelphiDateTime(JsonValue.AsInteger)
  else if (Field is TIntegerField) or (Field is TLargeintField) then
      Result := JsonValue.AsInteger
  else if Field is TNumericField then
      Result := JsonValue.AsDouble
  else if Field is TBooleanField then
      Result := JsonValue.AsBoolean
  else if Field is TStringField then
      Result := JsonValue.AsString
  else if Field is TBlobField then
      Result := DecodeString(JsonValue.AsString)
end;


{-------------------------------------------------------------------------------
  过程名:    ImportDataFromJSon
  作者:      yangshuai
  日期:      2017.06.17
  参数:      DataSet: TDataSet;DataJson: ISuperObject
  返回值:    Integer
-------------------------------------------------------------------------------}
function ImportDataFromJSon(DataSet: TDataSet;DataJson: ISuperObject): Integer;
var
  SubJson:ISuperObject;
  i:Integer;
  iter: TSuperObjectIter;
begin
  if not DataSet.Active then
    DataSet.Open;
  DataSet.DisableControls;
  try
    for SubJson in DataJson do
    begin
      DataSet.Append;
      if ObjectFindFirst(SubJson, iter) then
      begin
        repeat
          if DataSet.FindField(iter.Ite.Current.Name) <> nil then
            DataSet.FindField(iter.Ite.Current.Name).Value :=
            GetValue2Field(
            DataSet.FindField(iter.Ite.Current.Name),
            iter.Ite.Current.Value);
        until not ObjectFindNext(iter);
      end;
      DataSet.Post;
    end;
  finally
    DataSet.EnableControls;
  end;
end;

{-------------------------------------------------------------------------------
  过程名:    JSonFromDataSet
  作者:      yangshuai
  日期:      2017.06.17
  参数:      DataSet: TDataSet
  返回值:    string
-------------------------------------------------------------------------------}
function JSonFromDataSet(DataSet: TDataSet): string;

  procedure GetFieldTypeInfo(Field: TField; var Fieldtyp, JsonTyp: string);
  begin
    Fieldtyp := GetEnumName(TypeInfo(tfieldtype), ord(Field.DataType));
    Delete(Fieldtyp, 1, 2);

    if Field is TStringField then
      JsonTyp := 'string'

    else if Field is TDateTimeField then
      JsonTyp := 'integer'

    else if (Field is TIntegerField) or (Field is TLargeintField) then
      JsonTyp := 'integer'

    else if Field is TCurrencyField then
      JsonTyp := 'currency'

    else if Field is TNumericField then
      JsonTyp := 'double'

    else if Field is TBooleanField then
      JsonTyp := 'boolean'

    else
      JsonTyp := 'variant';
  end;

var
  sj, aj, sj2: ISuperObject;
  i: Integer;
  Fieldtyp, JsonTyp: string;
  List: TStringList;
begin
  sj := SO();
  aj := SA([]); //创建列
  List := TStringList.Create;
  try
    List.Sorted := True;
    for i := 0 to DataSet.FieldCount - 1 do
    begin
      sj2 := SO();
      GetFieldTypeInfo(DataSet.Fields[i], Fieldtyp, JsonTyp);

      sj2.S[cstFieldName] := DataSet.Fields[i].FieldName;

      sj2.S[cstFieldType] := Fieldtyp;

      sj2.S[cstJsonType] := JsonTyp;

      sj2.I[cstFieldSize] := DataSet.Fields[i].Size;

      sj2.B[cstRequired] := DataSet.Fields[i].Required;

      sj2.I[cstFieldIndex] := DataSet.Fields[i].Index;

      aj.AsArray.Add(sj2);

      List.Add(DataSet.Fields[i].FieldName + '=' + JsonTyp);

    end;
    sj.O['Cols'] := aj;

    //创建数据集的数据

    DataSet.DisableControls;

    DataSet.First;
    aj := SA([]);
    while not DataSet.Eof do
    begin
      sj2 := SO();
      for i := 0 to DataSet.FieldCount - 1 do
      begin
        //sj2.S[IntToStr(DataSet.Fields[i].Index)] := VarToStrDef(DataSet.Fields[i].Value,'');

        if VarIsNull(DataSet.Fields[i].Value) then
          sj2.O[DataSet.Fields[i].FieldName] := SO(Null)
        else
        begin
          CreateJsonValueByField(sj2, DataSet.Fields[i]);
        end;

      end;
      aj.AsArray.Add(sj2);
      DataSet.Next;
    end;
    sj.O['Data'] := aj;
    Result := sj.AsString;
  finally
    List.Free;
    DataSet.EnableControls;
  end;
end;


{-------------------------------------------------------------------------------
  过程名:    JSonFromDataSet
  作者:      yangshuai
  日期:      2017.06.18
  参数:      DataSet: TADOQuery
  返回值:    string
-------------------------------------------------------------------------------}
function JSonFromDataSet(DataSet: TADOQuery): string;

  procedure GetFieldTypeInfo(Field: TField; var Fieldtyp, JsonTyp: string);
  begin
    Fieldtyp := GetEnumName(TypeInfo(tfieldtype), ord(Field.DataType));
    Delete(Fieldtyp, 1, 2);

    if Field is TStringField then
      JsonTyp := 'string'

    else if Field is TDateTimeField then
      JsonTyp := 'integer'

    else if (Field is TIntegerField) or (Field is TLargeintField) then
      JsonTyp := 'integer'

    else if Field is TCurrencyField then
      JsonTyp := 'currency'

    else if Field is TNumericField then
      JsonTyp := 'double'

    else if Field is TBooleanField then
      JsonTyp := 'boolean'

    else
      JsonTyp := 'variant';
  end;

var
  sj, aj, sj2: ISuperObject;
  i: Integer;
  Fieldtyp, JsonTyp,vTempStr: string;
  List,vTemplist: TStringList;
begin
  sj := SO();
//创建列
//  aj := SA([]);
//  List := TStringList.Create;
  try
//    List.Sorted := True;
//    for i := 0 to DataSet.FieldCount - 1 do
//    begin
//      sj2 := SO();
//      GetFieldTypeInfo(DataSet.Fields[i], Fieldtyp, JsonTyp);
//
//      sj2.S[cstFieldName] := DataSet.Fields[i].FieldName;
//
//      sj2.S[cstFieldType] := Fieldtyp;
//
//      sj2.S[cstJsonType] := JsonTyp;
//
//      sj2.I[cstFieldSize] := DataSet.Fields[i].Size;
//
//      sj2.B[cstRequired] := DataSet.Fields[i].Required;
//
//      sj2.I[cstFieldIndex] := DataSet.Fields[i].Index;
//
//      aj.AsArray.Add(sj2);
//
//      List.Add(DataSet.Fields[i].FieldName + '=' + JsonTyp);
//
//    end;
//    sj.O['Cols'] := aj;

    //创建数据集的数据
//
    DataSet.DisableControls;

//    aj := SA([]);
//    sj2 := SO();
    DataSet.First;
   // aj := SA([]);
    vTempStr:='';
    vTemplist:=TStringList.Create;
    vTemplist.Clear;
    while not DataSet.Eof do
    begin
     // sj2 := TSuperObject.Create(stObject);
      for i := 0 to DataSet.FieldCount - 1 do
      begin
        sj2 := SO();
        if i < 5 then
        begin
          Continue;
        end;
//        //sj2.S[IntToStr(DataSet.Fields[i].Index)] := VarToStrDef(DataSet.Fields[i].Value,'');
        if VarIsNull(DataSet.Fields[i].Value) then
          sj2.O[DataSet.Fields[i].FieldName] := SO('')
        else
        begin
          CreateJsonValueByField(sj2,DataSet.Fields[i]);
        end;
       vTempStr := StringReplace(sj2.AsString, '{', '', [rfReplaceAll]);
       vTempStr:= StringReplace(vTempStr, '}', '', [rfReplaceAll]);
       vTemplist.Add(vTempStr);
      end;
     // aj.AsArray.Add(sj2);
      DataSet.Next;
    end;
    vTempStr :='{"examinfo":{';
    vTempStr := vTempStr+ vTemplist.Text+'}}';
    vTempStr:= StringReplace(vTempStr, #13#10, ',', [rfReplaceAll]);
    Result := vTempStr;
  finally
    List.Free;
    DataSet.EnableControls;
  end;
end;

{-------------------------------------------------------------------------------
  过程名:    JSonFromDataADOSet
  作者:      yangshuai
  日期:      2017.07.26
  参数:      DataSet: TADOQuery
  返回值:    string
-------------------------------------------------------------------------------}
function JSonFromDataADOSet(DataSet: TADOQuery;aTileJosn:string): string;
  procedure GetFieldTypeInfo(Field: TField; var Fieldtyp, JsonTyp: string);
  begin
    Fieldtyp := GetEnumName(TypeInfo(tfieldtype), ord(Field.DataType));
    Delete(Fieldtyp, 1, 2);

    if Field is TStringField then
      JsonTyp := 'string'

    else if Field is TDateTimeField then
      JsonTyp := 'integer'

    else if (Field is TIntegerField) or (Field is TLargeintField) then
      JsonTyp := 'integer'

    else if Field is TCurrencyField then
      JsonTyp := 'currency'

    else if Field is TNumericField then
      JsonTyp := 'double'

    else if Field is TBooleanField then
      JsonTyp := 'boolean'

    else
      JsonTyp := 'variant';
  end;

var
  sj, aj, sj2: ISuperObject;
  i: Integer;
  Fieldtyp, JsonTyp: string;
  List: TStringList;
begin
  sj := SO();
//  aj := SA([]); //创建列
//  List := TStringList.Create;
  try
//    List.Sorted := True;
//    for i := 0 to DataSet.FieldCount - 1 do
//    begin
//      sj2 := SO();
//      GetFieldTypeInfo(DataSet.Fields[i], Fieldtyp, JsonTyp);
//
//      sj2.S[cstFieldName] := DataSet.Fields[i].FieldName;
//
//      sj2.S[cstFieldType] := Fieldtyp;
//
//      sj2.S[cstJsonType] := JsonTyp;
//
//      sj2.I[cstFieldSize] := DataSet.Fields[i].Size;
//
//      sj2.B[cstRequired] := DataSet.Fields[i].Required;
//
//      sj2.I[cstFieldIndex] := DataSet.Fields[i].Index;
//
//      aj.AsArray.Add(sj2);
//
//      List.Add(DataSet.Fields[i].FieldName + '=' + JsonTyp);
//
//    end;
//    sj.O['Cols'] := aj;

    //创建数据集的数据

    DataSet.DisableControls;
    DataSet.First;
    while not DataSet.Eof do
    begin
      sj2 := SO();
      for i := 0 to DataSet.FieldCount - 1 do
      begin
        //sj2.S[IntToStr(DataSet.Fields[i].Index)] := VarToStrDef(DataSet.Fields[i].Value,'');
        if i < 4 then
        begin
          Continue;
        end;
        if VarIsNull(DataSet.Fields[i].Value) then
          sj2.O[DataSet.Fields[i].FieldName] := SO('')
        else
        begin
          CreateJsonValueByField(sj2, DataSet.Fields[i]);
        end;
      end;
      DataSet.Next;
    end;
   // showmessage(ATR_NO);

    //sj2.S[cstJsonType] := 'string';
    sj2.O['Atr_no'] := SO(ATR_NO); //增加参数
    sj.O[aTileJosn] := sj2;
//    sj.O['examinfo'] := sj2;
    Result := sj.AsString;
  finally
    List.Free;
    DataSet.EnableControls;
  end;
end;

function proc_up_jkkbd(_tmh, _xm, _xb, _nl, _dz, _sfzhm, _csrq, _jkkh, _jkklb: string): Boolean;
begin
  Result := False;
  try
    DM_data.qry_pub.Close;
    DM_data.qry_pub.SQL.Text := 'exec sys_in_bdjzk '
      + #39 + _tmh + #39 + ','
      + #39 + _xm + #39 + ','
      + #39 + _xb + #39 + ','
      + #39 + _nl + #39 + ','
      + #39 + _dz + #39 + ','
      + #39 + _sfzhm + #39 + ','
      + #39 + _csrq + #39 + ','
      + #39 + _jkkh + #39 + ','
      + #39 + _jkklb + #39;
    DM_data.qry_pub.ExecSQL;
  except
    Exit;
  end;
  Result := True;
end;

function func_zh_csrq(_str: string): string;
begin
  _str := trim(_str);
  if (_str <> '') and (Length(_str) = 8) then
  begin
    _str := Copy(_str, 1, 4) + '-' + Copy(_str, 5, 2) + '-' + Copy(_str, 7, 2);
  end;
  Result := _str;
end;

function initDLL: boolean;
var
  hd: Thandle;
begin
  result := false;
  hd := loadlibrary('sys_jkk.dll');
  if hd <> $FFFFFFFF then
  begin
    @csh := GetProcAddress(hd, 'csh');
    @jkk_csh := GetProcAddress(hd, 'jkk_csh');
    @cwxx := GetProcAddress(hd, 'cwxx');
    @CardInfo := GetProcAddress(hd, 'CardInfo');
    @PsnBaseInfo := GetProcAddress(hd, 'PsnBaseInfo');
    @PayTypeInfo := GetProcAddress(hd, 'PayTypeInfo');
    @AddressInfo := GetProcAddress(hd, 'AddressInfo');
    @RelPsnInfo := GetProcAddress(hd, 'RelPsnInfo');
    @MarryInfo := GetProcAddress(hd, 'MarryInfo');
    @MedicalFlags := GetProcAddress(hd, 'MedicalFlags');
    @Mental := GetProcAddress(hd, 'Mental');
    @PapersInfo := GetProcAddress(hd, 'PapersInfo');
    @AllergyInfo := GetProcAddress(hd, 'AllergyInfo');
    @ImmuneInfo := GetProcAddress(hd, 'ImmuneInfo');
    @InbedInfo := GetProcAddress(hd, 'InbedInfo');
    @ExamInfo := GetProcAddress(hd, 'ExamInfo');
    @PhotoInfo := GetProcAddress(hd, 'PhotoInfo');

    @set_PayTypeInfo := GetProcAddress(hd, 'set_PayTypeInfo');
    @set_AddressInfo := GetProcAddress(hd, 'set_AddressInfo');
    @set_RelPsnInfo := GetProcAddress(hd, 'set_RelPsnInfo');
    @set_MarryInfo := GetProcAddress(hd, 'set_MarryInfo');
    @set_MedicalFlags := GetProcAddress(hd, 'set_MedicalFlags');
    @set_Mental := GetProcAddress(hd, 'set_Mental');
    @set_PapersInfo := GetProcAddress(hd, 'set_PapersInfo');
    @set_AllergyInfo := GetProcAddress(hd, 'set_AllergyInfo');
    @set_ImmuneInfo := GetProcAddress(hd, 'set_ImmuneInfo');
    @set_PhotoInfo := GetProcAddress(hd, 'set_PhotoInfo');
    @create_zy := GetProcAddress(hd, 'create_zy');
    @create_mz := GetProcAddress(hd, 'create_mz');
    @set_ExamInfo := GetProcAddress(hd, 'set_ExamInfo');
    @set_InbedInfo := GetProcAddress(hd, 'set_InbedInfo');
    @create_zy_edit := GetProcAddress(hd, 'create_zy_edit');
    @create_mz_edit := GetProcAddress(hd, 'create_mz_edit');
    result := true;
  end;
  New(Auto_CardInfo);
end;

procedure JKKInitial;  //初始化接口

begin
  try
    hc:=TCHealthCardIntf.Create(nil);
    rcinit:=hc.InitIntfTS(login_json); // rcinit=1正常 rcinit=0失败
    if rcinit<>1 then//初始化失败
    begin
      err:=hc.PropertyStr;
      Application.MessageBox(pchar('健康卡初始化出错，请重新进入！'+err),'提示',64);
    end;
  except
    Application.MessageBox(pchar('健康卡接口初始化失败！'),'提示',64);
  end;
end;




 {-------------------------------------------------------------------------------
  过程名:    Tfrm_func.Get_JkkINIData
  作者:      yangshuai
  日期:      2016.12.15
  参数:      无
  返回值:    无
-------------------------------------------------------------------------------}
procedure Get_Jkk_INIData;
var
  FileName:string; //配置文件
   //定义全局参数
  IniFile:TIniFile; //配置文件 初始化参数 卡管中心IP Port 医院代码、名称
begin
  //连接初始化 然后判断有无在医院内部注册 没有则先注册
  Filename:=ExtractFilePath(Paramstr(0))+'Jkk.ini'; //读取配置文件
  IniFile:=Tinifile.Create(filename);
  inistr_ip:=IniFile.ReadString('Setting','inistr1','');
  inistr:=IniFile.ReadString('Setting','inistr2','');//虚拟测试读卡器 无ip地址
  KgIP:=IniFile.ReadString('Setting','ip','');
  KgPort:=IniFile.ReadString('Setting','dk','');
  yymc:=IniFile.ReadString('Setting','yymc','');
  yydm:=IniFile.ReadString('Setting','yydm','');
  cs:=IniFile.ReadString('Setting','cs','');
end;

{-------------------------------------------------------------------------------
  过程名:    ReadInfoFromCard
  作者:      yangshuai
  日期:      2016.12.15
  参数:      BusinessNo:integer
  返回值:    widestring
-------------------------------------------------------------------------------}
function ReadInfoFromCard(BusinessNo:integer):widestring; //根据传入参数 读取健康卡中信息 返回包含信息的JSON串
begin
  try
    rcinit:=hc.ReadHealthInfo(BusinessNo); //读取健康卡中信息，根据传入参数的不同，读出不同的信息
    if rcinit<>1 then
    begin
      err:=hc.LastErrorMessage;
      application.messagebox( pansichar('获取健康卡业务'+inttostr(BusinessNo)+'信息读卡失败，请重试！'+err), '提示',mb_ok );
      result:=hc.PropertyStr;
    end
    else
    begin
      Result:=hc.PropertyStr;
    end;
  except
      application.messagebox( pchar('获取健康卡信息读卡异常,出错业务'+inttostr(BusinessNo)), '提示',mb_ok );
  end;
end;

{-------------------------------------------------------------------------------
  过程名:    WriteInfoToCard
  作者:      yangshuai
  日期:      2016.12.15
  参数:      jsonstr:string
  返回值:    string
-------------------------------------------------------------------------------}
function WriteInfoToCard(jsonstr:string):string;//向卡中写入持卡人基本信息
begin
  try
    rcinit:=hc.WriteHealthInfo(jsonstr);
    err:=hc.PropertyStr;
    if rcinit<>1 then //写卡失败
    begin
      result:=err;
      application.messagebox( pansichar('写卡失败，请重试！'+err), '提示',mb_ok );
    end
    else
      result:='1';
  except
    application.messagebox( pchar('写卡异常' + err), '提示',mb_ok );
  end;
end;

function InfoJson(BusinessNo:integer):ISuperObject; //将JSON串转换成JSOn对象
begin
  jsonstr:=ReadInfoFromCard(BusinessNo); //获取卡中相关信息JSON串
  jsonstr:=StringReplace(jsonstr, #$D#$A, '', [rfReplaceAll]);
  json:=TSuperObject.Create();
  json:=SO(jsonstr);
  result:=json;
end;

procedure JKKUnInitial;  //取消初始化接口
begin
  hc.UnInitIntf;//调用此函数断开读卡器与电脑的连接
end;


procedure jkk_func_CheckDll;
  procedure pro_GetFile(_fielName: string);
  var
    _path: string;
  begin
    dm_data.qry_pub.Close;
    dm_data.qry_pub.SQL.Text := 'select * from sys_update where filename=' + #39 +
      _fielName + #39;
    dm_data.qry_pub.Open;
    if dm_data.qry_pub.RecordCount > 0 then
    begin
        ShowMessage('下载'+_fielName);
      _path := extractFilePath(application.exeName) + _fielName;
      (dm_data.qry_pub.FieldByName('hisfile') as TblobField).SaveToFile(_path);
    end;
  end;
var
  fileList: TStringList;
  _path, _fielName: string;
  I: Integer;
begin
  fileList := TStringList.Create;
  fileList.Add('HD300_V1.dll');
  fileList.Add('SSSE32.dll');
  fileList.Add('WSB_RWInterface.dll');
  fileList.Add('HealthCardApp.dll');
  fileList.Add('HealthCardIntf.dll=1');
  fileList.Add('sys_jkk.dll');
  fileList.Add('LEDSender.dll');

  for I := 0 to fileList.Count - 1 do
  begin
    _fielName := Trim(fileList.Names[i]);
    if _fielName = '' then _fielName := fileList[i];
    if _fielName = '' then Continue;

    _path := extractFilePath(application.exeName) + _fielName;
    //DeleteFile(_path);
    if not FileExists(_path) then
    begin
      pro_GetFile(_fielName);
    end;
    if (Trim(fileList.ValueFromIndex[i]) = '1') and FileExists(_path)
      then
    begin
      Windows.Winexec(pchar('regsvr32.exe ' + _path + ' /s'), 1);
    end;
  end;

  fileList.Free;
  if pub_jkkTypebz =1 then
  begin
    initDll;
    if Assigned(jkk_csh) then
    jkk_csh;
  end else  if pub_jkkTypebz =2 then
  begin
    Get_Jkk_INIData;   //读取配置文件
    login_json:=  inistr_ip;//inistr_ip;//inistr;//服务器不可连 初始化Json串不含有IP , inistr_ip ;
    if login_json <>'' then
    JKKInitial;
  end;

end;

initialization
  //initDll;


end.
