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


{$region  '����----��������' }
  //��˽ӿڳ�ʼ������
  function InitXML() :PChar ;stdcall;External DllName;
  //��ȡ����
  function GetErrorMessage():PChar;stdcall;External DllName;
  //�ύ����
  function  UploadClaimInfo(InHasUpdate4Claim:PChar;inAGENCIES_ID:PChar;inClaimInfo:PChar) :PChar ;stdcall;External DllName;
  //�����ϴ���ϸ��Ϣ
  function  UploadDetailInfo(IsFirst:PChar;IsLast:PChar;inDeatilInfo:PChar) :PChar ;stdcall;External DllName;
  //ɾ������
  function  ClaimDelete4Hospital(inClaimID:PChar;inAGENCIES_ID:PChar)  :PChar ;stdcall;External DllName;
  //�����Ϣ�ύ
  function  AuditClaimInfo_N(tmp_aa:PChar) :PChar ;stdcall;External DllName;

  function AuditClaimInfo_N_TJ(tmp_aa:PChar) :PChar ;stdcall;External DllName;

  //��ӱ�����Ϣ
  function  AddPutOnRecord4Hospital( inType:PChar;  inCode:PChar; inName:PChar; inPatient_IDStr:PChar; inApprovalNumber:PChar; inStartDT:PChar; inEndDT:PChar;inAGENCIES_ID:PChar):PChar ;stdcall;External DllName;
  //ɾ��������Ϣ
  function  DeletePutOnRecord4Hospital( inType:PChar;inCode:PChar;inPatient_IDStr:PChar;inAGENCIES_ID:PChar):PChar ;stdcall;External DllName;
  //ɾ����ϸ
  function  DeleteDetail4Hospital( inClaimID:PChar; inDetailID:PChar;inAGENCIES_ID:PChar):PChar ;stdcall;External DllName;
  //�����Ϣ�ύ-�Զ�����޽�����ʾ
  function  AuditClaimInfo_S ():PChar;stdcall;External DllName;
  //���Ѿ���������ݽ������
  function  AuditCacheWithResult( inClaimID:PChar;inAGENCIES_ID:PChar):PChar ;stdcall;External DllName;
  //��ȡ�����ܶ� ����ʹ��
  function  AuditGetCostsResult( inClaimID:PChar ;inAGENCIES_ID:PChar):PChar  ;stdcall;External DllName;
  //��������
  function  UpDataClaimInfo(inAGENCIES_ID:PChar;inClaimInfo:PChar) :PChar ;stdcall;External DllName;
  //����סԺ״̬
  function  UpDataHS_STATUS( inClaimID:PChar; inHS_STATUS:PChar;inAGENCIES_ID:PChar):PChar ;stdcall;External DllName;
  //�޸ļƷѱ��
  function UpDataDetail_ZZZ_Flag (inClaimID:PChar;inDetailID:PChar;inZZZ_Flag:PChar;inAGENCIES_ID:PChar) :PChar ;stdcall;External DllName;
 {$endregion}



implementation
uses p_dm ;


{-------------------------------------------------------------------------------
  ������:    TAuditHospital.getReg
  ����:	     ��ȡע�����Ϣ
  ����:      ljk
  ����:      2018.08.02
  ����:      ��
  ����ֵ:    string
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
  if servername = '.' then    //����
    str := 'Provider=SQLOLEDB.1;Password=123;Persist Security Info=True;User ID=sa;Initial Catalog='+dataname+';Data Source='+servername
  else    //�䵱ɽ
    str := 'Provider=SQLOLEDB.1;Password=wjsinfo;Persist Security Info=True;User ID=sa;Initial Catalog='+dataname+';Data Source='+servername;
  Result := str;
end;

{-------------------------------------------------------------------------------
  ������:    Jgpt_Init
  ����:	     �ӿڳ�ʼ��
  ����:      LJK
  ����:      2018.07.05
  ����:      
  ����ֵ:    string
-------------------------------------------------------------------------------}
function TAuditHospital.Jgpt_Init(): string;
var
  str: string;
begin
  str := '';
  jgpt_result := '';
  try
    //�������ƽ̨�ӿڳ�ʼ��
    jgpt_result := InitXML();
    if jgpt_result <> '1' then
    begin
      str := GetErrorMessage();
    end
    else
    begin
      str := '�ӿڳ�ʼ���ɹ���';
    end;
  except
    on e: Exception do
    begin
      str := e.Message;
      application.MessageBox(PChar(str), '���ƽ̨�ӿ�', 0 + 48);
    end;
  end;
//  if jgpt_result <> '1' then
//  begin
//    application.MessageBox(PChar(str), '���ƽ̨�ӿ�', 0 + 48);
//    Exit;
//  end else
//    application.MessageBox(PChar(str), '���ƽ̨�ӿ�', 0);
  Result := jgpt_result;
end;

{-------------------------------------------------------------------------------
  ������:    TAuditHospital.jgpt_sczb
  ����:	     �ϴ�������Ϣ
  ����:      ljk
  ����:      2018.08.01
  ����:      sfzl,yblb,req: PChar
  ����ֵ:    string
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
      str := '�����ϴ��ɹ���';
  except
    on e: Exception do
    begin
      str := e.Message;
      application.MessageBox(PChar(str), '���ƽ̨�ӿ�', 0 + 48);
    end;
  end;

//  if jgpt_result <> '1' then
//  begin
//    application.MessageBox(PChar(str), '���ƽ̨�ӿ�', 0 + 48);
//    Exit;
//  end else
//    application.MessageBox(PChar(str), '���ƽ̨�ӿ�', 0);
  Result := jgpt_result ;

end;

{-------------------------------------------------------------------------------
  ������:    TAuditHospital.jgpt_scmx
  ����:	     �ϴ���ϸ��Ϣ
  ����:      ljk
  ����:      2018.08.01
  ����:      IsFirst,IsLast,req: PChar
  ����ֵ:    string
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
      str := '��ϸ�ϴ��ɹ���'
    else if jgpt_result = '0' then
      str := '��ϸ�ϴ�ʧ�ܣ�'
    else if jgpt_result = '2' then
      str := '���ò������'
    else
      str := GetErrorMessage();
  except
    on e: Exception do
    begin
      str := e.Message;
      application.MessageBox(PChar(str), '���ƽ̨�ӿ�', 0 + 48);
    end;
  end;
//  if jgpt_result <> '1' then
//  begin
//    application.MessageBox(PChar(str), '���ƽ̨�ӿ�', 0 + 48);
////    Exit;
//  end else
//    application.MessageBox(PChar(str), '���ƽ̨�ӿ�', 0);
  Result := jgpt_result ;  
end;

{-------------------------------------------------------------------------------
  ������:    TAuditHospital.jgpt_sh
  ����:	     ���
  ����:      ljk
  ����:      2018.08.01
  ����:      req: PChar
  ����ֵ:    string
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
      str := '��˽������'
    else
    if jgpt_result = '0' then
      str := '���ʧ��'
    else
    if jgpt_result = '2' then
      str := '���ò������'
    else
    if jgpt_result = '3' then
      str := '��˽����Υ�棨ȡ����'
    else
    if jgpt_result = '4' then
      str := '��˽����Υ�棨���棩'
    else
      str := GetErrorMessage();  
  except
    on e: Exception do
    begin
      str := e.Message;
      application.MessageBox(PChar(str), '���ƽ̨�ӿ�', 0 + 48);
    end;
  end;

//  if jgpt_result = '1' then
//  begin
//    application.MessageBox(PChar(str), '���ƽ̨�ӿ�', 0);
//  end
//  else
//    application.MessageBox(PChar(str), '���ƽ̨�ӿ�', 0 + 48);
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
      str := '�ɹ�'
    else
    begin
      str := 'ʧ��';
      application.MessageBox(PChar(str), '���ƽ̨�ӿ�', 0 + 48);
    end;
  except
    on e: Exception do
    begin
      str := e.Message;
      application.MessageBox(PChar(str), '���ƽ̨�ӿ�', 0 + 48);
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
  ������:    jgpt_getzb
  ����:	     ��֯����xml����
  ����:      LJK
  ����:      2018.07.04
  ����:      cxlx: Integer; tmh: string; cxrq: TDateTime
  ����ֵ:    WideString
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
  ������:    jgpt_getmx
  ����:	     ��֯��ϸxml����
  ����:      LJK
  ����:      2018.07.04
  ����:      cxlx: Integer; tmh: string; cxrq: TDateTime
  ����ֵ:    WideString
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

