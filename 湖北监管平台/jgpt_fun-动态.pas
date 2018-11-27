unit jgpt_fun;

interface
uses ADODB, DB, SysUtils, Forms, Registry, Windows, Dialogs;


type
  TAuditHospital = class(TObject)
  private

  public
    { Public declarations }
    dllHandle: THandle;

    function getReg: string;
    function jgpt_getzb(cxlx: Integer; tmh: string; cxrq: TDateTime): WideString;

    function Jgpt_Init(): string;
    function jgpt_sczb(sfzl,yblb,req: PChar): string;
    function jgpt_scmx(IsFirst, IsLast, req: PChar): string;
    function jgpt_sh(req: PChar): string;
    function jgpt_gxzyzt(zdid, cyzt, yblb: PChar): string;

  end;
  TInit = function(): PChar; stdcall;
  TGetErrorMessage = function(): PChar; stdcall;
  TUploadClaimInfo = function(InHasUpdate4Claim:PChar;inAGENCIES_ID:PChar;inClaimInfo:PChar) :PChar;stdcall;   // function(sfzl,yblb,req: PChar): PChar;stdcall;
  TUploadDetailInfo = function(IsFirst,IsLast,req: PChar): Pchar; stdcall;
  TAuditClaimInfo_N = function(req: PChar): PChar;stdcall;
  TUpDataHS_STATUS = function(zdid, cyzt, yblb: PChar): PChar;stdcall;

var
  jgpt_result: string;

implementation
uses p_dm,p_func;

{-------------------------------------------------------------------------------
  过程名:    TAuditHospital.getReg
  功能:	     读取注册表信息
  作者:      ljk
  日期:      2018.08.02
  参数:      无
  返回值:    string
-------------------------------------------------------------------------------}
function TAuditHospital.getReg: string;
var
  Reg: Tregistry;
  servername, dataname,str: string;
begin
  Reg := Tregistry.Create;
  try
    Reg.RootKey := HKEY_LOCAL_MACHINE;
    if Reg.OpenKey( 'Software\myserver', true ) then
    begin
      servername := Reg.ReadString( 'servername' );
      dataname := Reg.ReadString( 'dataname' );
    end;
    reg.CloseKey;
  finally
    Reg.Free;
  end;
  if servername = '.' then    //本地
    str := 'Provider=SQLOLEDB.1;Password=123;Persist Security Info=True;User ID=sa;Initial Catalog='+dataname+';Data Source='+servername
  else    //武当山
    str := 'Provider=SQLOLEDB.1;Password=wjsinfo;Persist Security Info=True;User ID=sa;Initial Catalog='+dataname+';Data Source='+servername;
  Result := str;
end;


{-------------------------------------------------------------------------------
  过程名:    TAuditHospital.jgpt_getzb
  功能:	     获取主表 xml
  作者:      ljk
  日期:      2018.08.14
  参数:      cxlx: Integer; tmh: string; cxrq: TDateTime
  返回值:    WideString
-------------------------------------------------------------------------------}
function TAuditHospital.jgpt_getzb(cxlx: Integer; tmh: string;
  cxrq: TDateTime): WideString;
var
  sp_jgpt_zb: TADOStoredProc;
  str:widestring;
begin
  try
    sp_jgpt_zb := TADOStoredProc.Create(nil);
    sp_jgpt_zb.Connection := DM_data.ado_mydata;
  //  sp_jgpt_zb.ConnectionString := getReg;
    with sp_jgpt_zb do
    begin
      Close;
      ProcedureName := 'jgpt_cx_zb';
      Parameters.Clear;
      Parameters.CreateParameter('@cxlx', ftInteger, pdInput, 4, fgUnassigned);
      Parameters.CreateParameter('@tmh', ftString, pdInput, 12, '');
      Parameters.CreateParameter('@cxrq', ftDateTime, pdInput, 12, fgUnassigned);
      Parameters.ParamByName('@tmh').Value := tmh;
      Parameters.ParamByName('@cxlx').Value := cxlx;
      Parameters.ParamByName('@cxrq').Value := cxrq;
      Open;
    end;
    if not sp_jgpt_zb.IsEmpty then
    begin
      str := //'<HospitalClaim>'+
          '<BENEFIT_GROUP_ID>'+PAnsiChar(sp_jgpt_zb.FieldByName('BENEFIT_GROUP_ID').AsString)+'</BENEFIT_GROUP_ID>'+
          '<BENEFIT_TYPE>'+PAnsiChar(sp_jgpt_zb.FieldByName('BENEFIT_TYPE').AsString)+'</BENEFIT_TYPE>'+
          '<BMI_CONVERED_AMOUNT>'+PAnsiChar(sp_jgpt_zb.FieldByName('BMI_CONVERED_AMOUNT').AsString)+'</BMI_CONVERED_AMOUNT>'+
          '<CKC892>'+PAnsiChar(sp_jgpt_zb.FieldByName('CKC892').AsString)+'</CKC892>'+
          '<DIAGNOSIS_IN>'+PAnsiChar(sp_jgpt_zb.FieldByName('DIAGNOSIS_IN').AsString)+'</DIAGNOSIS_IN>'+
          '<DIAGNOSIS_OUT>'+PAnsiChar(sp_jgpt_zb.FieldByName('DIAGNOSIS_OUT').AsString)+'</DIAGNOSIS_OUT>'+
          '<DIAGNOSIS_TOTHER> '+PAnsiChar(sp_jgpt_zb.FieldByName('DIAGNOSIS_TOTHER').AsString)+'</DIAGNOSIS_TOTHER>'+
          '<GENDER>'+PAnsiChar(sp_jgpt_zb.FieldByName('GENDER').AsString)+'</GENDER>'+
          '<HOSPITAL_ID>'+PAnsiChar(sp_jgpt_zb.FieldByName('HOSPITAL_ID').AsString)+'</HOSPITAL_ID>'+
          '<HOSPITAL_LEVEL>'+PAnsiChar(sp_jgpt_zb.FieldByName('HOSPITAL_LEVEL').AsString)+'</HOSPITAL_LEVEL>'+
          '<HS_AREA_CODE>'+PAnsiChar(sp_jgpt_zb.FieldByName('HS_AREA_CODE').AsString)+'</HS_AREA_CODE>'+
          '<HS_DIAGNOSIS_IN_NAME>'+PAnsiChar(sp_jgpt_zb.FieldByName('HS_DIAGNOSIS_IN_NAME').AsString)+'</HS_DIAGNOSIS_IN_NAME>'+
          '<HS_DIAGNOSIS_OUT_NAME>'+PAnsiChar(sp_jgpt_zb.FieldByName('HS_DIAGNOSIS_OUT_NAME').AsString)+'</HS_DIAGNOSIS_OUT_NAME>'+
          '<HS_IN_NUMBER>'+PAnsiChar(sp_jgpt_zb.FieldByName('HS_IN_NUMBER').AsString)+'</HS_IN_NUMBER>'+
          '<HS_NUMBER>'+PAnsiChar(sp_jgpt_zb.FieldByName('HS_NUMBER').AsString)+'</HS_NUMBER>'+
          '<HS_PATIENT_NAME>'+PAnsiChar(sp_jgpt_zb.FieldByName('HS_PATIENT_NAME').AsString)+'</HS_PATIENT_NAME>'+
          '<HS_STATUS>'+PAnsiChar(sp_jgpt_zb.FieldByName('HS_STATUS').AsString)+'</HS_STATUS>'+
          '<HospitalType>'+PAnsiChar(sp_jgpt_zb.FieldByName('HospitalType').AsString)+'</HospitalType>'+
          '<ID>'+PAnsiChar(sp_jgpt_zb.FieldByName('ID').AsString)+'</ID>'+
          '<IN_DATE>'+PAnsiChar(sp_jgpt_zb.FieldByName('IN_DATE').AsString)+'</IN_DATE>'+
          '<IsLactation>'+PAnsiChar(sp_jgpt_zb.FieldByName('IsLactation').AsString)+'</IsLactation>'+
          '<IsPregnant>'+PAnsiChar(sp_jgpt_zb.FieldByName('IsPregnant').AsString)+'</IsPregnant>'+
          '<MEDICAL_TYPE>'+PAnsiChar(sp_jgpt_zb.FieldByName('MEDICAL_TYPE').AsString)+'</MEDICAL_TYPE>'+
          '<OUT_DATE>'+PAnsiChar(sp_jgpt_zb.FieldByName('OUT_DATE').AsString)+'</OUT_DATE>'+
          '<PATIENT_BIRTH>'+PAnsiChar(sp_jgpt_zb.FieldByName('PATIENT_BIRTH').AsString)+'</PATIENT_BIRTH>'+
          '<PatientBenefitGroupCode>'+PAnsiChar(sp_jgpt_zb.FieldByName('PatientBenefitGroupCode').AsString)+'</PatientBenefitGroupCode>'+
          '<Patient_IDStr>'+PAnsiChar(sp_jgpt_zb.FieldByName('Patient_IDStr').AsString)+'</Patient_IDStr>'+
          '<SETTLE_DATE>'+PAnsiChar(sp_jgpt_zb.FieldByName('SETTLE_DATE').AsString)+'</SETTLE_DATE>'+
          '<TOTAL_COST>'+PAnsiChar(sp_jgpt_zb.FieldByName('TOTAL_COST').AsString)+'</TOTAL_COST>'+
          '<UNUSUAL_FLAG>'+PAnsiChar(sp_jgpt_zb.FieldByName('UNUSUAL_FLAG').AsString)+'</UNUSUAL_FLAG>'+
          '<Z_AACT007>'+PAnsiChar(sp_jgpt_zb.FieldByName('Z_AACT007').AsString)+'</Z_AACT007>'+
          '<Z_AACT008>'+PAnsiChar(sp_jgpt_zb.FieldByName('Z_AACT008').AsString)+'</Z_AACT008>'+
          '<Z_BAC021>'+PAnsiChar(sp_jgpt_zb.FieldByName('Z_BAC021').AsString)+'</Z_BAC021>';
  //        '</HospitalClaim>';
    end;
    Result := str;
  except
    on e: Exception do
    begin
      str := str + e.Message;
      Frm_func.addLog('获取主表xml：'+str);
      application.MessageBox(PChar(str), '监管平台接口', 0 + 48);
    end;
  end;
end;

{-------------------------------------------------------------------------------
  过程名:    Jgpt_Init
  功能:	     接口初始化
  作者:      LJK
  日期:      2018.07.05
  参数:      
  返回值:    string
-------------------------------------------------------------------------------}
function TAuditHospital.Jgpt_Init(): string;
var
  str: string;
  Init: TInit;
  GetErrorMessage: TGetErrorMessage;
  Tp,Tp2: TFarProc;
  filename,filename2: string;
begin
  try
    {$REGION '自动下载动态库文件'}
      filename := ExtractFilePath(application.ExeName) + 'Audit4Hospital.dll';
      filename2 := ExtractFilePath(application.ExeName) + 'Audit4Hospital.ini';
      if not fileexists(filename) then
      begin
        Frm_func.downLoadFile(filename);
      end;
      if not fileexists(filename2) then
      begin
        Frm_func.downLoadFile(filename2);
      end;
    {$ENDREGION}

    jgpt_result := '';
    str := '';
    dllHandle := LoadLibrary('Audit4Hospital.dll');    {load dll}
    if (dllHandle >= 32) then
    begin
      try
        Tp := GetProcAddress(dllHandle, PChar('InitXML'));
        Tp2 := GetProcAddress(dllHandle, PChar('GetErrorMessage'));
        if (Tp <> nil) or (Tp2 <> nil) then
        begin
          Init := TInit(Tp);
          GetErrorMessage := TGetErrorMessage(Tp2);
          jgpt_result := Init();
          if jgpt_result <> '1' then
          begin
            str := GetErrorMessage();
            application.MessageBox(PChar(str), '监管平台接口-初始化', 0 + 48);
          end ;
  //        else
  //          application.MessageBox(PChar(jgpt_result), '监管平台接口-初始化', 64);
        end else
        begin
          application.MessageBox(PChar('函数 InitXML 不存在'), '监管平台接口', 0 + 48);
          Frm_func.addLog('函数 InitXML 不存在');
        end;
      finally
        FreeLibrary(dllHandle);
      end
    end else
      application.MessageBox(PChar('动态库载入失败!'), '监管平台接口', 0 + 48);
    Result := jgpt_result;
  except
    on e: Exception do
    begin
      str := str + e.Message;
      Frm_func.addLog('初始化：'+str);
      application.MessageBox(PChar(str), '监管平台接口', 0 + 48);
    end;
  end;
end;

{-------------------------------------------------------------------------------
  过程名:    TAuditHospital.jgpt_sczb
  功能:	     上传主表
  作者:      ljk
  日期:      2018.08.14
  参数:      sfzl, yblb, req: PChar
  返回值:    string
-------------------------------------------------------------------------------}
function TAuditHospital.jgpt_sczb(sfzl, yblb, req: PChar): string;
var
  str: string;
  Tp, Tp2: TFarProc;
  Sczb: TUploadClaimInfo;
  GetErrorMessage: TGetErrorMessage;
begin
  try
    dllHandle := LoadLibrary('Audit4Hospital.dll');    {load dll}
    try
      jgpt_result := '';
      str := '';
      Tp := GetProcAddress(dllHandle, PChar('UploadClaimInfo'));
      Tp2 := GetProcAddress(dllHandle, PChar('GetErrorMessage'));
      if Tp <> nil then
      begin
        Sczb := TUploadClaimInfo(Tp);
        GetErrorMessage := TGetErrorMessage(Tp2);
        jgpt_result := Sczb(sfzl, yblb, req);
        if jgpt_result <> '1' then
        begin
          str := GetErrorMessage();
          if Trim(str) = '' then
            str := '上传主单失败 返回值：' + jgpt_result;
          application.MessageBox(PChar(str), '监管平台接口-上传主单', 0 + 48);
        end ;
  //      else
  //        application.MessageBox(PChar(jgpt_result), '监管平台接口-上传主单', 64);
      end else
      begin
        application.MessageBox(PChar('函数 UploadClaimInfo 不存在'), '监管平台接口', 0 + 48);
        Frm_func.addLog('数 UploadClaimInfo 不存在');
      end;
      Result := jgpt_result;
    finally
      FreeLibrary(dllHandle);
    end
  except
    on e: Exception do
    begin
      str := str + e.Message;
      Frm_func.addLog('上传主表：'+str);
      application.MessageBox(PChar(str), '监管平台接口', 0 + 48);
    end;
  end;
end;

{-------------------------------------------------------------------------------
  过程名:    TAuditHospital.jgpt_scmx
  功能:	     上传明细
  作者:      ljk
  日期:      2018.08.14
  参数:      IsFirst, IsLast, req: PChar
  返回值:    string
-------------------------------------------------------------------------------}
function TAuditHospital.jgpt_scmx(IsFirst, IsLast, req: PChar): string;
var
  str: string;
  Tp, Tp2: TFarProc;
  Scmx: TUploadDetailInfo;
  GetErrorMessage: TGetErrorMessage;
begin
  try
    dllHandle := LoadLibrary('Audit4Hospital.dll');
    try
      jgpt_result := '';
      str := '';
      Tp := GetProcAddress(dllHandle, PChar('UploadDetailInfo'));
      Tp2 := GetProcAddress(dllHandle, PChar('GetErrorMessage'));
      if (Tp <> nil) or (Tp2 <> nil) then
      begin
        Scmx := TUploadDetailInfo(Tp);
        GetErrorMessage := TGetErrorMessage(Tp2);
        jgpt_result := Scmx(IsFirst, IsLast, req);
        if jgpt_result <> '1' then
        begin
          str := GetErrorMessage();
          Frm_func.addLog('上传明细：'+str);
          application.MessageBox(PChar(str), '监管平台接口-上传明细', 0 + 48);
        end ;
  //      else
  //        application.MessageBox(PChar(jgpt_result), '监管平台接口-上传明细', 64);
      end else
      begin
        application.MessageBox(PChar('函数 UploadDetailInfo 不存在'), '监管平台接口', 0 + 48);
        Frm_func.addLog('函数 UploadDetailInfo 不存在');
      end;
      Result := jgpt_result;
    finally
      FreeLibrary(dllHandle);
    end
  except
    on e: Exception do
    begin
      str := str + e.Message;
      Frm_func.addLog('上传明细：'+str);
      application.MessageBox(PChar(str), '监管平台接口', 0 + 48);
    end;
  end;
end;
{-------------------------------------------------------------------------------
  过程名:    TAuditHospital.jgpt_sh
  功能:	     审核
  作者:      ljk
  日期:      2018.08.14
  参数:      req: PChar
  返回值:    string
-------------------------------------------------------------------------------}
function TAuditHospital.jgpt_sh(req: PChar): string;
var
  str: string;
  Tp, Tp2: TFarProc;
  Sh: TAuditClaimInfo_N;
  GetErrorMessage: TGetErrorMessage;
begin
  dllHandle := LoadLibrary('Audit4Hospital.dll');    {load dll}
  try
    try
      jgpt_result := '';
      str := '';
      Tp := GetProcAddress(dllHandle, PChar('AuditClaimInfo_N'));
      Tp2 := GetProcAddress(dllHandle, PChar('GetErrorMessage'));
      if (Tp <> nil) or (Tp2 <> nil) then
      begin
        Sh := TAuditClaimInfo_N(Tp);
        GetErrorMessage := TGetErrorMessage(Tp2);
        jgpt_result := Sh(req);
        if (jgpt_result <> '1') and (jgpt_result <> '3') and (jgpt_result <> '4') then
        begin
          str := GetErrorMessage();
          Frm_func.addLog('审核失败：' + str);
//          application.MessageBox(PChar(str), '监管平台接口-审核', 0 + 48);
        end ;
  //      else
  //        application.MessageBox(PChar(jgpt_result), '监管平台接口-审核', 64);
      end else
      begin
        application.MessageBox(PChar('函数 AuditClaimInfo_N 不存在'), '监管平台接口', 0 + 48);
        Frm_func.addLog('函数 AuditClaimInfo_N 不存在');
      end;
      Result := jgpt_result;  
    finally
      FreeLibrary(dllHandle);
    end
  except
    on e: Exception do
    begin
      str := str + e.Message;
      Frm_func.addLog('审核：'+str);
      application.MessageBox(PChar(str), '监管平台接口', 0 + 48);
    end;
  end;
end;


{-------------------------------------------------------------------------------
  过程名:    TAuditHospital.jgpt_gxzyzt
  功能:	     更新住院状态
  作者:      ljk
  日期:      2018.08.14
  参数:      zdid, cyzt, yblb: PChar
  返回值:    string
-------------------------------------------------------------------------------}
function TAuditHospital.jgpt_gxzyzt(zdid, cyzt, yblb: PChar): string;
var
  str: string;
  Tp, Tp2: TFarProc;
  Gxzyzt: TUpDataHS_STATUS;
  GetErrorMessage: TGetErrorMessage;
begin
  try
    dllHandle := LoadLibrary('Audit4Hospital.dll');    {load dll}
    try
      jgpt_result := '';
      str := '';
      Tp := GetProcAddress(dllHandle, PChar('UpDataHS_STATUS'));
      Tp2 := GetProcAddress(dllHandle, PChar('GetErrorMessage'));
      if (Tp <> nil) or (Tp2 <> nil) then
      begin
        Gxzyzt := TUpDataHS_STATUS(Tp);
        GetErrorMessage := TGetErrorMessage(Tp2);
        jgpt_result := Gxzyzt(zdid, cyzt, yblb);
        if jgpt_result <> '1' then
        begin
          str := GetErrorMessage();
          Frm_func.addLog('监管平台接口-更新住院状态: '+str);
          application.MessageBox(PChar(str), '监管平台接口-更新住院状态', 0 + 48);
        end ;
      end else
      begin
        application.MessageBox(PChar('函数 UploadClaimInfo 不存在'), '监管平台接口', 0 + 48);
        Frm_func.addLog('数 UploadClaimInfo 不存在');
      end;
      Result := jgpt_result;
    finally
      FreeLibrary(dllHandle);
    end
  except
    on e: Exception do
    begin
      str := str + e.Message;
      Frm_func.addLog('更新住院状态：'+str);
      application.MessageBox(PChar(str), '监管平台接口', 0 + 48);
    end;
  end;
end;

end.
