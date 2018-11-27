unit jgpt_fun;

interface
uses ADODB, DB, SysUtils, Forms,
    Registry, Windows;

const
  DllName = 'Audit4Hospital.dll';

type
  TAuditHospital = class(TObject)
  private

  public
    { Public declarations }
    function getReg(): string;

    function jgpt_getzb(cxlx: Integer; tmh: string; cxrq: TDateTime): WideString;
    function jgpt_getmx(cxlx: Integer; tmh: string; cxrq: TDateTime): WideString;
    function Jgpt_Init(): string;
    function jgpt_sczb(sfzl,yblb,req: PChar): string;
    function jgpt_scmx(IsFirst, IsLast, req: PChar): string;
    function jgpt_sh(req: PChar): string;
    function jgpt_gxzyzt(zdid, cyzt, yblb: PChar): string;
    function jgpt_DelZd(inClaimID: string): string;

  end;

var
  jgpt_result: string;


{$region  '公共----函数申明' }
  //审核接口初始化请求
  function InitXML() :PChar ;stdcall;External DllName;
  //获取错误
  function GetErrorMessage():PChar;stdcall;External DllName;
  //提交主单
  function  UploadClaimInfo(InHasUpdate4Claim:PChar;inAGENCIES_ID:PChar;inClaimInfo:PChar) :PChar ;stdcall;External DllName;
  //批量上传明细信息
  function  UploadDetailInfo(IsFirst:PChar;IsLast:PChar;inDeatilInfo:PChar) :PChar ;stdcall;External DllName;
  //删除主单
  function  ClaimDelete4Hospital(inClaimID:PChar;inAGENCIES_ID:PChar)  :PChar ;stdcall;External DllName;
  //审核信息提交
  function  AuditClaimInfo_N(tmp_aa:PChar) :PChar ;stdcall;External DllName;

  function AuditClaimInfo_N_TJ(tmp_aa:PChar) :PChar ;stdcall;External DllName;

  //添加备案信息
  function  AddPutOnRecord4Hospital( inType:PChar;  inCode:PChar; inName:PChar; inPatient_IDStr:PChar; inApprovalNumber:PChar; inStartDT:PChar; inEndDT:PChar;inAGENCIES_ID:PChar):PChar ;stdcall;External DllName;
  //删除备案信息
  function  DeletePutOnRecord4Hospital( inType:PChar;inCode:PChar;inPatient_IDStr:PChar;inAGENCIES_ID:PChar):PChar ;stdcall;External DllName;
  //删除明细
  function  DeleteDetail4Hospital( inClaimID:PChar; inDetailID:PChar;inAGENCIES_ID:PChar):PChar ;stdcall;External DllName;
  //审核信息提交-自动审核无界面提示
  function  AuditClaimInfo_S ():PChar;stdcall;External DllName;
  //对已经保存的数据进行审核
  function  AuditCacheWithResult( inClaimID:PChar;inAGENCIES_ID:PChar):PChar ;stdcall;External DllName;
  //获取单据总额 对账使用
  function  AuditGetCostsResult( inClaimID:PChar ;inAGENCIES_ID:PChar):PChar  ;stdcall;External DllName;
  //更新主单
  function  UpDataClaimInfo(inAGENCIES_ID:PChar;inClaimInfo:PChar) :PChar ;stdcall;External DllName;
  //更新住院状态
  function  UpDataHS_STATUS( inClaimID:PChar; inHS_STATUS:PChar;inAGENCIES_ID:PChar):PChar ;stdcall;External DllName;
  //修改计费标记
  function UpDataDetail_ZZZ_Flag (inClaimID:PChar;inDetailID:PChar;inZZZ_Flag:PChar;inAGENCIES_ID:PChar) :PChar ;stdcall;External DllName;
 {$endregion}



implementation
uses p_dm ;


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
begin
  str := '';
  jgpt_result := '';
  try
    //湖北监管平台接口初始化
    jgpt_result := InitXML();
    if jgpt_result <> '1' then
    begin
      str := GetErrorMessage();
    end
    else
    begin
      str := '接口初始化成功！';
    end;
  except
    on e: Exception do
    begin
      str := e.Message;
      application.MessageBox(PChar(str), '监管平台接口', 0 + 48);
    end;
  end;
//  if jgpt_result <> '1' then
//  begin
//    application.MessageBox(PChar(str), '监管平台接口', 0 + 48);
//    Exit;
//  end else
//    application.MessageBox(PChar(str), '监管平台接口', 0);
  Result := jgpt_result;
end;

{-------------------------------------------------------------------------------
  过程名:    TAuditHospital.jgpt_sczb
  功能:	     上传主单信息
  作者:      ljk
  日期:      2018.08.01
  参数:      sfzl,yblb,req: PChar
  返回值:    string
-------------------------------------------------------------------------------}
function TAuditHospital.jgpt_sczb(sfzl,yblb,req: PChar): string;
var
  str: string;
begin
  str := '';
  jgpt_result := '';
  try
    jgpt_result := UploadClaimInfo(sfzl, yblb, req);
    if jgpt_result <> '1' then
      str := GetErrorMessage()
    else
      str := '主单上传成功！';
  except
    on e: Exception do
    begin
      str := e.Message;
      application.MessageBox(PChar(str), '监管平台接口', 0 + 48);
    end;
  end;

//  if jgpt_result <> '1' then
//  begin
//    application.MessageBox(PChar(str), '监管平台接口', 0 + 48);
//    Exit;
//  end else
//    application.MessageBox(PChar(str), '监管平台接口', 0);
  Result := jgpt_result ;

end;

{-------------------------------------------------------------------------------
  过程名:    TAuditHospital.jgpt_scmx
  功能:	     上传明细信息
  作者:      ljk
  日期:      2018.08.01
  参数:      IsFirst,IsLast,req: PChar
  返回值:    string
-------------------------------------------------------------------------------}
function TAuditHospital.jgpt_scmx(IsFirst,IsLast,req: PChar): string;
var
  str: string;
begin
  str := '';
  jgpt_result := '';
  try
    jgpt_result := UploadDetailInfo(IsFirst, IsLast, req);
    if jgpt_result = '1' then
      str := '明细上传成功！'
    else if jgpt_result = '0' then
      str := '明细上传失败！'
    else if jgpt_result = '2' then
      str := '调用步骤出错！'
    else
      str := GetErrorMessage();
  except
    on e: Exception do
    begin
      str := e.Message;
      application.MessageBox(PChar(str), '监管平台接口', 0 + 48);
    end;
  end;
//  if jgpt_result <> '1' then
//  begin
//    application.MessageBox(PChar(str), '监管平台接口', 0 + 48);
////    Exit;
//  end else
//    application.MessageBox(PChar(str), '监管平台接口', 0);
  Result := jgpt_result ;  
end;

{-------------------------------------------------------------------------------
  过程名:    TAuditHospital.jgpt_sh
  功能:	     审核
  作者:      ljk
  日期:      2018.08.01
  参数:      req: PChar
  返回值:    string
-------------------------------------------------------------------------------}
function TAuditHospital.jgpt_sh(req: PChar): string;
var
  str: string;
begin
  str := '';
  jgpt_result := '';
  try
    jgpt_result := AuditClaimInfo_N(req);
//    jgpt_result := AuditClaimInfo_N_TJ(req);

    if jgpt_result = '1' then
      str := '审核结果正常'
    else
    if jgpt_result = '0' then
      str := '审核失败'
    else
    if jgpt_result = '2' then
      str := '调用步骤出错'
    else
    if jgpt_result = '3' then
      str := '审核结果有违规（取消）'
    else
    if jgpt_result = '4' then
      str := '审核结果有违规（保存）'
    else
      str := GetErrorMessage();  
  except
    on e: Exception do
    begin
      str := e.Message;
      application.MessageBox(PChar(str), '监管平台接口', 0 + 48);
    end;
  end;

//  if jgpt_result = '1' then
//  begin
//    application.MessageBox(PChar(str), '监管平台接口', 0);
//  end
//  else
//    application.MessageBox(PChar(str), '监管平台接口', 0 + 48);
  result := jgpt_result;
end;

function TAuditHospital.jgpt_gxzyzt(zdid, cyzt, yblb: PChar): string;
var
  str:string;
begin
  str := '';
  jgpt_result := '';
  try
    jgpt_result := UpDataHS_STATUS(zdid, cyzt, yblb);
    if jgpt_result = '1' then
      str := '成功'
    else
    begin
      str := '失败';
      application.MessageBox(PChar(str), '监管平台接口', 0 + 48);
    end;
  except
    on e: Exception do
    begin
      str := e.Message;
      application.MessageBox(PChar(str), '监管平台接口', 0 + 48);
    end;
  end;
  result := jgpt_result;
end;

function TAuditHospital.jgpt_DelZd(inClaimID: string): string;
var
  str:string;
begin
  str := ClaimDelete4Hospital(PChar(inClaimID),'0');
  result:=str;
end;

{-------------------------------------------------------------------------------
  过程名:    jgpt_getzb
  功能:	     组织主表xml数据
  作者:      LJK
  日期:      2018.07.04
  参数:      cxlx: Integer; tmh: string; cxrq: TDateTime
  返回值:    WideString
-------------------------------------------------------------------------------}
function TAuditHospital.jgpt_getzb(cxlx: Integer; tmh: string; cxrq: TDateTime): WideString;
var
  sp_jgpt_zb: TADOStoredProc;
  str:widestring;
begin
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
end;

{-------------------------------------------------------------------------------
  过程名:    jgpt_getmx
  功能:	     组织明细xml数据
  作者:      LJK
  日期:      2018.07.04
  参数:      cxlx: Integer; tmh: string; cxrq: TDateTime
  返回值:    WideString
-------------------------------------------------------------------------------}
function TAuditHospital.jgpt_getmx(cxlx: Integer; tmh: string; cxrq: TDateTime): WideString;
var
  sp_jgpt_mx: TADOStoredProc;
  str:widestring;
  I: Integer;
begin
  sp_jgpt_mx := TADOStoredProc.Create(nil);
  sp_jgpt_mx.Connection := DM_data.ado_mydata;
//  sp_jgpt_mx.ConnectionString := getReg;
  with sp_jgpt_mx do
  begin
    Close;
    ProcedureName := 'jgpt_cx_mx';
    Parameters.Clear;
    Parameters.CreateParameter('@cxlx', ftInteger, pdInput, 4, fgUnassigned);
    Parameters.CreateParameter('@tmh', ftString, pdInput, 12, '');
    Parameters.CreateParameter('@cxrq', ftDateTime, pdInput, 12, fgUnassigned);
    Parameters.ParamByName('@tmh').Value := tmh;
    Parameters.ParamByName('@cxlx').Value := cxlx;
    Parameters.ParamByName('@cxrq').Value := cxrq;
    Open;
  end;
  if not sp_jgpt_mx.IsEmpty then
  begin
    str := '<HospitalClaimDetailSet>';
    for I := 1 to sp_jgpt_mx.RecordCount do
    begin
      str := str + '<ClaimDetailHospital>'+
            '<ApprovalNumber>'+sp_jgpt_mx.FieldByName('ApprovalNumber').AsString+'</ApprovalNumber>'+
            '<COSTS>'+sp_jgpt_mx.FieldByName('COSTS').AsString+'</COSTS>'+
            '<DEPTNAME>'+sp_jgpt_mx.FieldByName('DEPTNAME').AsString+'</DEPTNAME>'+
            '<ELIGIBLE_AMOUNT>'+sp_jgpt_mx.FieldByName('ELIGIBLE_AMOUNT').AsString+'</ELIGIBLE_AMOUNT>'+
            '<FREQUENCY_INTERVAL>'+sp_jgpt_mx.FieldByName('FREQUENCY_INTERVAL').AsString+'</FREQUENCY_INTERVAL>'+
            '<ID>'+sp_jgpt_mx.FieldByName('ID').AsString+'</ID>'+
            '<ITEM_DATE>'+sp_jgpt_mx.FieldByName('ITEM_DATE').AsString+'</ITEM_DATE>'+
            '<ITEM_ID>'+sp_jgpt_mx.FieldByName('ITEM_ID').AsString+'</ITEM_ID>'+
            '<ITEM_NAME>'+sp_jgpt_mx.FieldByName('ITEM_NAME').AsString+'</ITEM_NAME>'+
            '<ITEM_TYPE>'+sp_jgpt_mx.FieldByName('ITEM_TYPE').AsString+'</ITEM_TYPE>'+
            '<NUMBERS>'+sp_jgpt_mx.FieldByName('NUMBERS').AsString+'</NUMBERS>'+
            '<PRICE>'+sp_jgpt_mx.FieldByName('PRICE').AsString+'</PRICE>'+
            '<PhysicianLevel>'+sp_jgpt_mx.FieldByName('PhysicianLevel').AsString+'</PhysicianLevel>'+
            '<Specification>'+sp_jgpt_mx.FieldByName('Specification').AsString+'</Specification>'+
            '<USAGE>'+sp_jgpt_mx.FieldByName('USAGE').AsString+'</USAGE>'+
            '<USAGE_DAYS>'+sp_jgpt_mx.FieldByName('USAGE_DAYS').AsString+'</USAGE_DAYS>'+
            '<USAGE_UNIT>'+sp_jgpt_mx.FieldByName('USAGE_UNIT').AsString+'</USAGE_UNIT>'+
            '<Z_PhysicianAP>'+sp_jgpt_mx.FieldByName('Z_PhysicianAP').AsString+'</Z_PhysicianAP>'+
          '</ClaimDetailHospital>';
      sp_jgpt_mx.Next;      
    end;
    str := str + '</HospitalClaimDetailSet>';
  end;
  Result := str;
end;

end.

