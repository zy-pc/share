unit p_PassDllClare;

interface
uses
  Windows, SysUtils, Classes, Controls, Forms, ADODB;

//���ҩƷ��Ϣ��¼
type
  TPassCheckDrugList = record
    cOrderUniqueCode: string; //ҽ��Ψһ�룬Ҫ����Ψһ���ҽ����¼
    cDrugCode: string; //���봫��ҽ���е�ҩƷΨһ��
    cDrugName: string; //���봫��ҽ���е�ҩƷ����
    cSingleDose: string; //ÿ�μ���(ֻ�����ֲ���)
    cDoseUnit: string; //ÿ�μ�����λ
    cFrequency: string; //Ƶ��,��ʽ(n��m�Σ���'m/n')
    cStartDate: string; //��������,��ʽ'yyyy-mm-dd'
    cEndDate: string; //ͣ������,��ʽ'yyyy-mm-dd',δͣҽ�����ջ�TODAY����
    cRouteName: string; //���봫��ҽ���еĸ�ҩ;�����루�����ƣ�
    cGroupTag: string; //����ҽ����ǣ���һ������У���ͬ�鴫�գ�ͬһ����Ҫ����ͬ��ֵ
    cOrderType: string; //ҽ�����ͣ�'S'��'s'��'1'��ʾҽ����ʱҽ����������Ϊ����ҽ��
    cDoctorCodeAndName: string; //ҽ����������
    iwarn: integer //���������ֵ
  end;
  //���ҩƷ��Ϣ�ṹ����
  TPassCheckDrugLists = array of TPassCheckDrugList;
type
  //ע�ắ��
  TRegisterServer = function: integer; stdcall;
  //2��PASS��ʼ��
  TPassInit = function(const UserName: Pchar;
    const DepartMentName: Pchar;
    const WorkstationType: Integer): Integer; stdcall;
  //3��PASS����ģʽ����
  TPassSetControlParam = function(const SaveCheckResult: integer;
    const AllowAllegen: integer;
    const CheckMode: integer;
    const DisqMode: integer;
    const UseDiposeIdea: Integer): Integer; stdcall;
  //4�������˻�����Ϣ
  TPassSetPatientInfo = function(const PatientID: Pchar;
    const VisitID: Pchar;
    const Name: Pchar;
    const Sex: Pchar;
    const Birthday: Pchar;
    const Weight: Pchar;
    const cHeight: Pchar;
    const DepartMentName: Pchar;
    const Doctor: Pchar;
    const LeaveHospitalDate: Pchar): Integer; stdcall;
  //5������ҩҩƷ�嵥��Ϣ
  TPassSetRecipeInfo = function(const OrderUniqueCode: Pchar;
    const DrugCode: Pchar;
    const DrugName: Pchar;
    const SingleDose: Pchar;
    const DoseUnit: Pchar;
    const Frequency: Pchar;
    const StartOrderDate: Pchar;
    const StopOrderDate: Pchar;
    const RouteName: Pchar;
    const GroupTag: Pchar;
    const OrderType: Pchar;
    const OrderDoctor: Pchar): Integer; stdcall;
  //6�����벡�˹���ʷ
  TPassSetAllergenInfo = function(const AllergenIndex: Pchar;
    const AllergenCode: Pchar;
    const AllergenDesc: Pchar;
    const AllergenType: Pchar;
    const Reaction: Pchar): Integer; stdcall;
  //7�����벡��״̬
  TPassSetMedCond = function(const MedCondIndex: Pchar;
    const MedCondCode: Pchar;
    const MedCondDesc: Pchar;
    const MedCondType: Pchar;
    const StartDate: Pchar;
    const EndDate: Pchar): Integer; stdcall;
  //8������ѯҩƷ��Ϣ
  TPassSetQueryDrug = function(const DrugCode: Pchar;
    const DrugName: Pchar;
    const DoseUnit: Pchar;
    const RouteName: Pchar): Integer; stdcall;
  //9����ȡ�Ҽ��˵��Ƿ����ֵ
  TPassGetState = function(const QueryItemNo: Pchar): Integer; stdcall;
  //10��PASS���ܵ���
  TPassDoCommand = function(const CommandNo: Integer): Integer; stdcall;
  //11����ȡҩƷ��ʾ����
  TPassGetWarn = function(const OrderUniqueCode: Pchar): Integer; stdcall;
  //12������ҩƷ��������λ��
  TPassSetFloatWinPos = function(const left: integer;
    const top: integer;
    const right: integer;
    const bottom: Integer): Integer; stdcall;
  //13��������Ҫ���е�ҩ�����ҩƷ
  TPassSetWarnDrug = function(const DrugUniqueCode: Pchar): Integer; stdcall;
  //14��PASS�˳�����
  TPassQuit = function: Integer; stdcall;
  //15��Windows APIȡ����
  //BOOL GetWindowRect(HWND hWnd,LPRECT lpRect)


//PASS4����wangbing20151127
//1.PASS4��ʼ������
function MDC_Init(const pcCheckMode: pchar;
  const pcHiscode: pchar;
  const pcDoctorcode: pchar
  ): integer; stdcall; External 'PASS4Invoke.dll';


  //2.���ò�����Ϣ          ����ֵ 1-�ɹ� 0-ʧ��
function MDC_SetPatient(const pcpatcode: pchar; //����ID
  const pcInHospNo: pchar; //סԺ�Ż��ߴ�����
  const pcVisitCode: pchar; //סԺ�������߾������
  const pcName: pchar; //��������
  const pcSex: pchar; //�Ա�
  const pcBirthday: pchar; //�������ڸ�ʽΪ MMMM-MM-DD
  const pcHeightCM: pchar; //���
  const pcWeighKG: pchar; //����
  const pcDeptCode: pchar; //���ұ���
  const pcDeptName: pchar; //��������
  const pcDoctorCode: pchar; //ҽ������
  const pcDoctorName: pchar; //ҽ������
  const piPatStatus: integer; //����״̬ 1:סԺ��2�����3������
  const piIsLactation: integer; //����״̬ 0�����ǣ�1���ǣ�-1���޷�ȷ��
  const piIsPregnancy: integer; //����״̬ 0�����ǣ�1���ǣ�-1���޷�ȷ��
  const pcPregStartDate: pchar; //���￪ʼ����
  const piHepDamageDegree: integer; //�ι��ܲ�ȫ 0����1���ǣ�-1���޷�ȷ��
  const piRenDamageDegree: integer //�����ܲ�ȫ 0����1���ǣ�-1���޷�ȷ��
  ): integer; stdcall; external 'PASS4Invoke.dll';

//3.�����˹���ʷ��Ϣ
function MDC_AddAller(const pcIndex: pchar;
  const pcAllerCode: pchar;
  const pcAllerName: pchar;
  const pcAllerSymptom: pchar
  ): integer; stdcall; external 'PASS4Invoke.dll';
//4.���벡�������Ϣ      ����ֵ 1���ɹ���0��ʧ��
function MDC_AddMedCond(const pcIndex: pchar;
  const pcDiseaseCode: pchar;
  const pcDiseaseName: pchar;
  const pcRecipNo: pchar
  ): integer; stdcall; external 'PASS4Invoke.dll';
//5.���벡��������Ϣ      ����ֵ 1���ɹ���0��ʧ��
function MDC_AddOperation(const pcIndex: pchar;
  const pcOprCode: pchar;
  const pcOprName: pchar;
  const pcOprStartDate: pchar;
  const pcOprEndDate: pchar
  ): integer; stdcall; external 'PASS4Invoke.dll';

//6.��������ҩ��Ϣ
function MDC_AddScreenDrug(const pcIndex: pchar;
  const piOrderNo: integer;
  const pcDrugUniqueCode: pchar;
  const pcDrugName: pchar;
  const pcDosePerTime: pchar;
  const pcDoseUnit: pchar;
  const pcFrequency: pchar;
  const pcRouteCode: pchar;
  const pcRouteName: pchar;
  const pcStartTime: pchar;
  const pcEndTime: pchar;
  const pcExecuteTime: pchar;
  const pcGroupTag: pchar;
  const pcIsTempDrug: pchar;
  const pcOrderType: pchar;
  const pcDeptCode: pchar;
  const pcDeptName: pchar;
  const pcDoctorCode: pchar;
  const pcDoctorName: pchar;
  const pcRecipNo: pchar;
  const pcNum: pchar;
  const pcNumUnit: pchar;
  const pcPurpose: pchar;
  const pcOprCode: pchar;
  const pcMediTime: pchar;
  const pcRemark: pchar
  ): integer; stdcall; external 'PASS4Invoke.dll';
//7.��麯��
function MDC_DoCheck(const piShowMode: integer;
  const piIsSave: integer
  ): integer; stdcall; external 'PASS4Invoke.dll';

//8.��ȡ��ʾ����                                         }
function MDC_GetWarningCode(const pcIndex: pchar): integer; stdcall; external 'PASS4Invoke.dll';
//9.��ȡһ��ҩƷҽ�����������ʾ���ں���
function MDC_ShowWarningHint(const pcIndex: pchar): integer; stdcall;
external 'PASS4Invoke.dll';

//10���ر�һ��ҩƷҽ�����������ʾ���ں���
function MDC_CloseWarningHint: integer; stdcall; external 'PASS4Invoke.dll';

//11.��ȡ���������
function MDC_GetResultItemCount(const pcIndex: pchar
  ): integer; stdcall; external 'PASS4Invoke.dll';

//12.��ȡ�������ϸ��Ϣ
function MDC_GetResultDetail(const pcIndex: pchar
  ): pchar; stdcall; external 'PASS4Invoke.dll';

//13.������ҩ�о�
function MDC_DoMediStudy(const pcusetime: pchar): integer; stdcall;
external 'PASS4Invoke.dll';

//14. ������Ҫ��ѯ��ҩƷ��Ϣ
function MDC_DoSetDrug(const druguniquecode: pchar;
  const drugname: pchar
  ): integer; stdcall; external 'PASS4Invoke.dll';

//15.��ȡ��ѯ��Ŀ��Ч��
function MDC_GetDrugRefEnabled(const pcDrugUniqueCode: pchar;
  piQueryType: integer): pchar; stdcall; external 'PASS4Invoke.dll';

//16.��ѯҩƷ��Ϣ
function MDC_DoRefDrug(piQueryType: integer): integer; stdcall
external 'PASS4Invoke.dll';

//17.�رո�������
function MDC_CloseDrugHint: integer; stdcall; external 'PASS4Invoke.dll';

//18.���ز�������
function MDC_Settings: integer; stdcall; external 'PASS4Invoke.dll';

//19.��ȡ������Ϣ
function MDC_GetLastError: pchar; stdcall; external 'PASS4Invoke.dll';

//20.�˳�
function MDC_Quit: integer; stdcall; external 'PASS4Invoke.dll';



function LoadPassDll: Boolean; //װ��DLL��̬��

function LoadPass4Dll(mode, yymc, ysdm: pchar): Boolean; //װ��PASS4DLL��̬��

function PASSSEARCH(drugcode, drugname: pchar): Boolean; //��ѯҩƷ

function CLOSEPASSSEARCH(drugcode, drugname: pchar): Boolean; //�رղ�ѯҩƷ

//function DOPASS(drugcode, drugname: pchar): Boolean; //���������

//PASS�Զ���顢�ֶ���顢��ҩ�о�������ֵ��ѯ����
function wf_recipe_check(aitem: integer; var qry_pass: TADOQuery; qry_yf: TADOQuery): integer;

function wf_recipe_check_pass4(aitem: integer; var qry_pass: TADOQuery; qry_yf: TADOQuery; amount: integer): integer;

procedure FreePassDll; //�ͷ�DLL��̬��

procedure proc_csh(ksdm, ksmc, ysdm, ysmc: string); //1.��ʼ��

procedure proc_pass4_csh(ksdm, ksmc, ysdm, ysmc: string); //1.PASS4��ʼ��

procedure proc_pass4_zycsh(ksdm, ksmc, ysdm, ysmc: string);//2.סԺҽ������վ����

procedure proc_brjbxx(tmh, jzcs, brxm, brxb, brcsrq, brtz, brsg, ksdm, ksmc,
  ysdm, ysmc, cyrq: string); //2.��ѡ�����˻��������Ϣ

procedure pass4_brjbxx(pcpatcode: pchar;
  const pcInHospNo: pchar;
  constpcVisitCode: pchar;
  const pcName: pchar;
  const pcSex: pchar;
  const pcBirthday: pchar;
  const pcHeightCM: pchar;
  const pcWeighKG: pchar;
  const pcDeptCode: pchar;
  const pcDeptName: pchar;
  const pcDoctorCode: pchar;
  const pcDoctorName: pchar;
  const piPatStatus: integer;
  const piIsLactation: integer;
  const piIsPregnancy: integer;
  const pcPregStartDate: pchar;
  const piHepDamageDegree: integer;
  const piRenDamageDegree: integer); //2.��ѡ�����˻��������Ϣ

procedure proc_gmsztgl(); //3.���˹���ʷ/����״̬����

function proc_save_pass(aitem: Integer; var qry_pass: TADOQuery; qry_yf: TADOQuery): Boolean; //����ǰ�Զ����

function proc_save_pass4(aitem: Integer; var qry_pass: TADOQuery; qry_yf: TADOQuery; amount: Integer): Boolean; //����ǰ�Զ����

function func_getysmc(ysdm: string): string; //��ȡҽ������

var
  LibHand: THandle;
  LibHand1: THandle;
  RegisterServer: TRegisterServer;
  PassInit: TPassInit;
  PassSetControlParam: TPassSetControlParam;
  PassSetPatientInfo: TPassSetPatientInfo;
  PassSetRecipeInfo: TPassSetRecipeInfo;
  PassSetAllergenInfo: TPassSetAllergenInfo;
  PassSetMedCond: TPassSetMedCond;
  PassSetQueryDrug: TPassSetQueryDrug;
  PassGetState: TPassGetState;
  PassDoCommand: TPassDoCommand;
  PassGetWarn: TPassGetWarn;
  PassSetFloatWinPos: TPassSetFloatWinPos;
  PassSetWarnDrug: TPassSetWarnDrug;
  PassQuit: TPassQuit;

  gi_passenabled: integer; //�Ƿ����PASSϵͳ����ȫ�ֱ�����0��ʾ�����ã�1��ʾ����
  pub_pass_ygkzbz: Boolean; //������ҩ�ϸ���Ʊ�־
implementation
uses p_func, p_dm;

function LoadPassDll: Boolean; //װ��DLL��̬��
begin
  Result := True;
  if FileExists('ShellRunAs.dll') then
  begin
    //ע��
    LibHand1 := loadlibrary('ShellRunAs.dll');
    if LibHand1 = 0 then //ע��DLL����ʧ��
    begin
      FreeLibrary(LibHand1); //�ͷ�DLL
    end;
    try
      RegisterServer := GetProcAddress(LibHand1, 'RegisterServer');
      RegisterServer;
    except
      FreeLibrary(LibHand); //�ͷ�DLL
    end;
  end
  else
  begin
    Result := False;
    Exit;
  end;

  if FileExists('DIFPassDll.dll') then
  begin
    //ȡ��DLL���������ӿ�
    LibHand := loadlibrary('DIFPassDll.dll');
    if LibHand = 0 then
    begin
      Application.MessageBox('����װ�ض�̬���ӿ��ļ�DIFPassDll.dll', 'ϵͳ��ʾ��', 0 + 64);
      FreeLibrary(LibHand); //�ͷ�DLL
      Result := False;
      Exit;
    end;
    try
      PassInit := GetProcAddress(LibHand, 'PassInit');
      PassSetControlParam := GetProcAddress(LibHand, 'PassSetControlParam');
      PassSetPatientInfo := GetProcAddress(LibHand, 'PassSetPatientInfo');
      PassSetRecipeInfo := GetProcAddress(LibHand, 'PassSetRecipeInfo');
      PassSetAllergenInfo := GetProcAddress(LibHand, 'PassSetAllergenInfo');
      PassSetMedCond := GetProcAddress(LibHand, 'PassSetMedCond');
      PassSetQueryDrug := GetProcAddress(LibHand, 'PassSetQueryDrug');
      PassGetState := GetProcAddress(LibHand, 'PassGetState');
      PassDoCommand := GetProcAddress(LibHand, 'PassDoCommand');
      PassGetWarn := GetProcAddress(LibHand, 'PassGetWarn');
      PassSetFloatWinPos := GetProcAddress(LibHand, 'PassSetFloatWinPos');
      PassSetWarnDrug := GetProcAddress(LibHand, 'PassSetWarnDrug');
      PassQuit := GetProcAddress(LibHand, 'PassQuit');
    except
      Application.MessageBox('װ�ض�̬���ӿ��ļ�DIFPassDll.dll�еĽӿ�ʧ��!', 'ϵͳ��ʾ��', 0 + 64);
      FreeLibrary(LibHand); //�ͷ�DLL
      Result := False;
      Exit;
    end;
  end
  else
  begin
    Result := False;
    Exit;
  end;
end;

function PASSSEARCH(drugcode, drugname: pchar): Boolean; //��ѯҩƷ
begin
  if gi_passenabled = 1 then
  begin
    MDC_DoSetDrug(drugcode, drugname);
    MDC_DoRefDrug(51);
  end;
end;

function CLOSEPASSSEARCH(drugcode, drugname: pchar): Boolean; //�رղ�ѯҩƷ
begin
  if gi_passenabled = 1 then
  begin
    MDC_DoSetDrug(drugcode, drugname); //��ǰҽ��Ϊ��ҩƷʱ������������//���ϵ�ҩƷ�����ÿ�
    MDC_CloseDrugHint(); //��ҩƷҽ�����ر�ҩƷ��Ҫ��Ϣ��ʾ����
  end;
end;

function LoadPass4Dll(mode, yymc, ysdm: pchar): Boolean; //װ��Pass4DLL��̬��
begin
  Result := True;
  if FileExists('PASS4Invoke.dll') then
  begin
    MDC_Quit;
    if (MDC_Init(mode, yymc, ysdm) = 1) then
      gi_passenabled := 1 else
      gi_passenabled := 0;
  end
  else
  begin
    gi_passenabled := 0;
    Application.MessageBox('PASS4Invoke.dll�еĽӿ�ʧ��!', 'ϵͳ��ʾ��', 0 + 64);
    Exit;
  end;
end;

function LoadPass4Dll1(mode, yymc, ysdm: pchar): Boolean; //װ��Pass4DLL��̬��
begin
  Result := True;
  if FileExists('PASS4Invoke.dll') then
  begin
    if (MDC_Init(mode, yymc, ysdm) = 1) then
    //ע��
      LibHand1 := loadlibrary('ShellRunAs.dll');
    if LibHand1 = 0 then //ע��DLL����ʧ��
    begin
      FreeLibrary(LibHand1); //�ͷ�DLL
    end;
    try
      RegisterServer := GetProcAddress(LibHand1, 'RegisterServer');
      RegisterServer;
    except
      FreeLibrary(LibHand); //�ͷ�DLL
    end;
  end
  else
  begin
    Result := False;
    Exit;
  end;

  if FileExists('DIFPassDll.dll') then
  begin
    //ȡ��DLL���������ӿ�
    LibHand := loadlibrary('DIFPassDll.dll');
    if LibHand = 0 then
    begin
      Application.MessageBox('����װ�ض�̬���ӿ��ļ�DIFPassDll.dll', 'ϵͳ��ʾ��', 0 + 64);
      FreeLibrary(LibHand); //�ͷ�DLL
      Result := False;
      Exit;
    end;
    try
      PassInit := GetProcAddress(LibHand, 'PassInit');
      PassSetControlParam := GetProcAddress(LibHand, 'PassSetControlParam');
      PassSetPatientInfo := GetProcAddress(LibHand, 'PassSetPatientInfo');
      PassSetRecipeInfo := GetProcAddress(LibHand, 'PassSetRecipeInfo');
      PassSetAllergenInfo := GetProcAddress(LibHand, 'PassSetAllergenInfo');
      PassSetMedCond := GetProcAddress(LibHand, 'PassSetMedCond');
      PassSetQueryDrug := GetProcAddress(LibHand, 'PassSetQueryDrug');
      PassGetState := GetProcAddress(LibHand, 'PassGetState');
      PassDoCommand := GetProcAddress(LibHand, 'PassDoCommand');
      PassGetWarn := GetProcAddress(LibHand, 'PassGetWarn');
      PassSetFloatWinPos := GetProcAddress(LibHand, 'PassSetFloatWinPos');
      PassSetWarnDrug := GetProcAddress(LibHand, 'PassSetWarnDrug');
      PassQuit := GetProcAddress(LibHand, 'PassQuit');
    except
      Application.MessageBox('װ�ض�̬���ӿ��ļ�DIFPassDll.dll�еĽӿ�ʧ��!', 'ϵͳ��ʾ��', 0 + 64);
      FreeLibrary(LibHand); //�ͷ�DLL
      Result := False;
      Exit;
    end;
  end
  else
  begin
    Result := False;
    Exit;
  end;
end;


procedure FreePassDll; //�ͷ�DLL
begin
  if LibHand <> 0 then
  begin
    FreeLibrary(LibHand);
  end;

  if LibHand1 <> 0 then
  begin
    FreeLibrary(LibHand1);
  end;
end;

procedure proc_brjbxx(tmh, jzcs, brxm, brxb, brcsrq, brtz, brsg, ksdm,
  ksmc, ysdm, ysmc, cyrq: string);
var
  ls_pat_id, ls_visit_id, ls_pat_name, ls_sex, ls_birthday, ls_weight, ls_height,
    ls_deptcodeandname, ls_doctorcodeandname, ls_leavedate: string;
begin
  if gi_PassEnabled = 1 then
  begin
    if PassGetState('0') <> 0 then
    begin
      //[���˲������]���ַ������ͣ������������ʾ���˱��룬
      //PASSϵͳ���Բ���ls_pat_idΪ�ؼ���������ͼ������˹���ʷ/����״̬��Ϣ���˲�������Ϊ��
      ls_pat_id := tmh;

      //[��ǰ�������]���ַ������ͣ������������ʾ����סԺ���������HISϵͳû�д���Ϣ����ɴ���"1"��
      ls_visit_id := jzcs;

      //[��������]���ַ������ͣ������������ʾ����������
      ls_pat_name := brxm;

      //[�����Ա�]���ַ������ͣ���ʽΪ"��"��"Ů"��"����"�����û�и�ֵ����Ӱ�첡��"����"��"����"ģ������;
      ls_sex := brxb;

      //[���˳�������]���ַ������ͣ���ʽΪ"yyyy-mm-dd"��
      //���û�и�ֵ����Ӱ�첡��"����"��"��ͯ����"��"�����˾���"ģ�����飬���磺"1976-08-12"
      ls_birthday := brcsrq;

      //[����]���ַ������ͣ������������ʾ�����Թ���Ϊ��λ������ֵ������ĳ��������Ϊ23.5�����Ӧ����"23.5"��
      //���ڴ������ʱ���ܴ��뵥λ���������HISϵͳ������߲����Թ���Ϊ��λ����Ҫ����뻻��ɹ�����ٴ�����ֵ��
      //���HISϵͳû�й�����������Ϣ����Ӧ������ַ�����
      ls_weight := brtz;

      //[���]���ַ������ͣ������������ʾ����������Ϊ��λ�����ֵ������ĳ�������Ϊ175���ף���Ӧ����"175"��
      //���HISϵͳû�й����������Ϣ����Ӧ������ַ�����
      ls_height := brsg;

      //[���ұ���/����]���ַ������ͣ������������ʾ���˵�ǰ���ڿ��һ�����������ƣ�
      //��Ҫ����PASS��������ݲɼ����ѯͳ�ơ���ʽΪ"���ұ���/����"������"01/��һ��"������"01"Ϊ���ұ��롣
      ls_deptcodeandname := ksdm + '/' + ksmc;

      //[ҽ������/����]���ַ������ͣ������������ʾҽ����������Ҫ����PASS��������ݲɼ����ѯͳ�ơ���ʽΪ"���ұ���/����"��
      //����"04/����"������"04"Ϊҽ�����롣
      ls_doctorcodeandname := ysdm + '/' + ysmc;

      //[��Ժ����]���ַ������ͣ���ʽΪ"yyyy-mm-dd"������"1976-08-12"����δ��Ժ���ˣ�Ҫ������ַ�����
      ls_leavedate := cyrq;

      try
        //���벡�˻�����Ϣ֮ǰ����������������Ϣ
        PassDoCommand(402);
        //����PASSϵͳDLL����PassSetPatientInfo�������뵱ǰ���˻��������Ϣ
        PassSetPatientInfo(PChar(ls_pat_id), PChar(ls_visit_id), PChar(ls_pat_name),
          PChar(ls_sex), PChar(ls_birthday), PChar(ls_weight), PChar(ls_height),
          PChar(ls_deptcodeandname), PChar(ls_doctorcodeandname), PChar(ls_leavedate));
      except
      end;
    end;
  end;
end;


procedure pass4_brjbxx(pcpatcode: pchar;
  const pcInHospNo: pchar;
  constpcVisitCode: pchar;
  const pcName: pchar;
  const pcSex: pchar;
  const pcBirthday: pchar;
  const pcHeightCM: pchar;
  const pcWeighKG: pchar;
  const pcDeptCode: pchar;
  const pcDeptName: pchar;
  const pcDoctorCode: pchar;
  const pcDoctorName: pchar;
  const piPatStatus: integer;
  const piIsLactation: integer;
  const piIsPregnancy: integer;
  const pcPregStartDate: pchar;
  const piHepDamageDegree: integer;
  const piRenDamageDegree: integer);
begin
  if gi_PassEnabled = 1 then
  begin
    if MDC_SetPatient(pcpatcode, pcInHospNo, constpcVisitCode, pcName,
      pcSex,
      pcBirthday,
      pcHeightCM,
      pcWeighKG,
      pcDeptCode,
      pcDeptName,
      pcDoctorCode,
      pcDoctorName,
      piPatStatus,
      piIsLactation,
      piIsPregnancy,
      pcPregStartDate,
      piHepDamageDegree,
      piRenDamageDegree) <> 1 then
    begin
      gi_passenabled := 0;
      Application.MessageBox('PASS4Invoke.dll�еĽӿ�ʧ��!', 'ϵͳ��ʾ��', 0 + 64);
      Exit;
    end ; 
  end else
  begin
    //Application.MessageBox('PASS4Invoke.dll�еĽӿ�ʧ��!', 'ϵͳ��ʾ��', 0 + 64);
    Exit;
  end;
end;

procedure proc_csh(ksdm, ksmc, ysdm, ysmc: string);
var
  liRtn: Integer;
  lsInifilename: string; //HISϵͳINI�����ļ���
  liPassType: Integer; //HIS����վ����
  lcLoginUserIDandName: string; //��ǰ��¼�û����ź�����
  lcDeptCodeAndName: string; //��ǰ��¼���ұ��������
  lcIsPass: string; //����INI�ļ����Ƿ����PASSϵͳ��������
begin
  with DM_data do
  begin
    qry_pub.Close;
    qry_pub.SQL.Text := 'select isnull(mzysgzz_pass,0) mzysgzz_pass,isnull(pass_ygkzbz,0) pass_ygkzbz from sys_xt_kg';
    qry_pub.Open;
    if qry_pub.RecordCount > 0 then
    begin
      if qry_pub.FieldByName('mzysgzz_pass').AsBoolean then
        gi_passenabled := 1
      else
        gi_passenabled := 0;
      pub_pass_ygkzbz := qry_pub.FieldByName('pass_ygkzbz').AsBoolean;
      //   1����HISϵͳ���������Ƿ�ʹ��PASSϵͳ����ֵ��"��ʹ��PASSϵͳ"ȫ�ֱ���gi_passenabled�У�
//   �����HISϵͳ��������HisSysSetTable����Ƿ�ʹ��PASSϵͳ�������£�
//   	Select nSysSetValueField  From  HisSysSetTable
//     Into :gi_passenabled
//     Where Item = 'PASS';
    end
    else
    begin
      gi_passenabled := 0;
      pub_pass_ygkzbz := False;
      Abort;
    end;
  end;

  lcIsPass := '1';
  //2��������INI�ļ����Ƿ����PASSϵͳ��������ֵ������ȡֵ���£�
  //      0: ��ʾ������PASSϵͳ���ܣ�
  //      1: ��ʾҪ����PASSϵͳ���ܣ�����Ҫ��HISϵͳ���ݿ�PASS�������õĿ��ƣ�
  //      100: ��ʾҪ����PASSϵͳ���ܣ�������HISϵͳ���ݿ�PASS�������õĿ��ƣ���Ҫ����ȫԺ�ر�PASSϵͳ���ܵ��õ�����£�������������ã�
  //  ���磺
  //     lcIsPass = ProfileString("PASS.ini", "PASS","PASS", "1")

  if (lcIsPass = '100') or ((gi_passenabled = 1) and (lcIsPass = '1')) then //�������PASSϵͳ����
  begin
    if FileExists('ShellRunAs.dll') then
    begin
      RegisterServer(); //����ҵ�ShellRunAs.dll�ļ�������PASS�ṩ��DLL����RegisterServer()����PASS����DLL���á�
      if FileExists('DifPassDll.dll') then
      begin
        lcLoginUserIDandName := ysdm + '/' + ysmc; //ȡ��ǰ��ǰ��¼�û����ź��û���������lcLoginUserIDandName  = '01/����'
        lcDeptCodeAndName := ksdm + '/' + ksmc; //ȡ��ǰ��ǰ��ǰ���ұ�ź����ƣ�����lcDeptCodeAndName = '002/��һ��'
        liPassType := 10; //10��ʾǶ�뵽ҽ������վ
        //����ҵ�DifPassDll.dll�ļ��������PASS�ṩ��DLL����PassInit ()���г�ʼ����
        if PassInit(PChar(lcLoginUserIDandName), PChar(lcDeptCodeAndName), liPassType) = 1 then
        begin
          gi_passenabled := 1; //��"�Ƿ�ʹ��PASSϵͳ"ȫ�ֱ�����Ϊʹ��״̬
          PassSetControlParam(1, 2, 0, 2, 1); //����PASSϵͳDLL���в�������
        end
        else
          gi_passenabled := 0; //��"�Ƿ�ʹ��PASSϵͳ"ȫ�ֱ�����Ϊ��ʹ��״̬
      end
      else // DifPassDll.dll�ļ�δ�ҵ�
      begin
        gi_passenabled := 0; //��"�Ƿ�ʹ��PASSϵͳ"ȫ�ֱ�����Ϊ��ʹ��״̬
        Application.messagebox('��ʾ', ' DifPassDll.dll�ļ�������,������ҩ���ϵͳ�޷�����ʹ��!����ϵͳ����Ա��ϵ!');
      end;
    end
    else
      gi_passenabled := 0;
  end
end;

procedure proc_pass4_csh(ksdm, ksmc, ysdm, ysmc: string);
var
  liRtn: Integer;
  lsInifilename: string; //HISϵͳINI�����ļ���
  liPassType: Integer; //HIS����վ����
  lcLoginUserIDandName: string; //��ǰ��¼�û����ź�����
  lcDeptCodeAndName: string; //��ǰ��¼���ұ��������
  lcIsPass: string; //����INI�ļ����Ƿ����PASSϵͳ��������
begin
  with DM_data do
  begin
    qry_pub.Close;
    qry_pub.SQL.Text := 'select isnull(mzysgzz_pass,0) mzysgzz_pass,isnull(pass_ygkzbz,0) pass_ygkzbz from sys_xt_kg';
    qry_pub.Open;
    if qry_pub.RecordCount > 0 then
    begin
      if qry_pub.FieldByName('mzysgzz_pass').AsBoolean then
        gi_passenabled := 1
      else
        gi_passenabled := 0;
      pub_pass_ygkzbz := qry_pub.FieldByName('pass_ygkzbz').AsBoolean;
      //   1����HISϵͳ���������Ƿ�ʹ��PASSϵͳ����ֵ��"��ʹ��PASSϵͳ"ȫ�ֱ���gi_passenabled�У�
//   �����HISϵͳ��������HisSysSetTable����Ƿ�ʹ��PASSϵͳ�������£�
//   	Select nSysSetValueField  From  HisSysSetTable
//     Into :gi_passenabled
//     Where Item = 'PASS';
    end
    else
    begin
      gi_passenabled := 0;
      pub_pass_ygkzbz := False;
      Abort;
    end;
  end;
end;

{-------------------------------------------------------------------------------
  ������:    proc_pass4_zycsh
  ����:      yansghuai
  ����:      2016.03.02
  ����:      ksdm, ksmc, ysdm, ysmc: string
  ����ֵ:    ��
-------------------------------------------------------------------------------}
procedure proc_pass4_zycsh(ksdm, ksmc, ysdm, ysmc: string);
var
  liRtn: Integer;
  lsInifilename: string; //HISϵͳINI�����ļ���
  liPassType: Integer; //HIS����վ����
  lcLoginUserIDandName: string; //��ǰ��¼�û����ź�����
  lcDeptCodeAndName: string; //��ǰ��¼���ұ��������
  lcIsPass: string; //����INI�ļ����Ƿ����PASSϵͳ��������
begin
  with DM_data do
  begin
    qry_pub.Close;
    qry_pub.SQL.Text := 'select isnull(zyysgzz_pass,0) zyysgzz_pass,isnull(pass_ygkzbz,0) pass_ygkzbz from sys_xt_kg';
    qry_pub.Open;
    if qry_pub.RecordCount > 0 then
    begin
      if qry_pub.FieldByName('zyysgzz_pass').AsBoolean then
        gi_passenabled := 1
      else
        gi_passenabled := 0;
      pub_pass_ygkzbz := qry_pub.FieldByName('pass_ygkzbz').AsBoolean;
      //   1����HISϵͳ���������Ƿ�ʹ��PASSϵͳ����ֵ��"��ʹ��PASSϵͳ"ȫ�ֱ���gi_passenabled�У�
//   �����HISϵͳ��������HisSysSetTable����Ƿ�ʹ��PASSϵͳ�������£�
//   	Select nSysSetValueField  From  HisSysSetTable
//     Into :gi_passenabled
//     Where Item = 'PASS';
    end
    else
    begin
      gi_passenabled := 0;
      pub_pass_ygkzbz := False;
      Abort;
    end;
  end;
end;

procedure proc_gmsztgl;
begin
  //�ж��Ƿ�����PASSϵͳ��PASS�Ƿ�������
  if gi_PassEnabled = 1 then
  begin
    if PassGetState('0') <> 0 then
    begin
      //����PassDoCommand(22)�������������ˡ�����ʷ/����״̬��������
      PassDoCommand(22);
    end;
  end;
end;

function wf_recipe_check(aitem: integer; var qry_pass: TADOQuery; qry_yf: TADOQuery): integer;
var
  ll_row, ll_rowcount, i: Integer;
  ll_currentrow: Integer; //��������
  //  laRow: array of Integer;
  laOrderUniqueCode: TPassCheckDrugLists;
  //��������ҩ�嵥
  ls_isdrug: string; //ҽ�����
  ls_iscancel: string; //�Ƿ�����
  ls_isstop: string; //�Ƿ�ͣ��

  ls_OrderUniqueCode: string; //ҽ��Ψһ��
  ls_DrugCode: string; //ҩƷΨһ��
  ls_DrugName: string; //ҩƷ����
  ls_SingleDose: string; //���μ���ֵ
  ls_DoseUnit: string; //���μ�����λ
  ls_Frequency: string; //��ҩƵ��
  ls_StartDate: string; //��������
  ls_StopDate: string; //ͣ������
  ls_RouteName: string; //��ҩ;������
  ls_GroupTag: string; //����ҽ�����
  ls_OrderType: string; //ҽ�����ͣ�����0/��ʱ1��
  ls_DoctorCodeAndName: string; //ҽ������/����
  ls_Currow_OrderUniqueCode: string;
  li_Warn, li_maxwarn, limaxwarn, liwarn, limaxtemp, liwarntemp: Integer;
  old_fzph, old_xh: string;
begin
  li_maxwarn := 0;
  if (gi_passenabled = 0) or (PassGetState('0') = 0) then
  begin
    Exit;
  end;
  if qry_pass.Active and (qry_pass.RecordCount > 0) then
  begin
    ll_rowcount := qry_pass.RecordCount;
    //    SetLength( laRow, ll_rowcount );
    SetLength(laOrderUniqueCode, ll_rowcount);
    qry_pass.First;
    old_fzph := Trim(qry_pass.FieldByName('fzph').AsString);
    old_xh := Trim(qry_pass.FieldByName('xh').AsString);
    for i := 0 to ll_rowcount - 1 do
    begin
      if (Trim(qry_pass.FieldByName('lb').AsString) = '��ҩ') or
        (Trim(qry_pass.FieldByName('lb').AsString) = '��ҩ') or
        (Trim(qry_pass.FieldByName('lb').AsString) = 'ҩƷ') then
      begin
        ls_isdrug := '[ҩƷ��ҽ��]';
        ls_isstop := '[δͣ]';
        ls_iscancel := '[δ����]';
        //�����ǰҽ��Ϊ��ҩƷ��ҽ������ͣ�������ϣ����ܴ���˼�¼����Ӧ������һѭ����
        if (ls_isdrug <> '[ҩƷ��ҽ��]') or (ls_isstop = '[��ͣ]') or (ls_iscancel = '[������]') then
          Break;

        //[��������]���ַ������ͣ������������ʾ����ҽ�����ڡ���ʽΪ"yyyy-mm-dd"��
        // ���翪������Ϊ1999��3��12�գ���Ӧ����"1999-03-12"��
        ls_StartDate := Trim(FormatDateTime('yyyy-MM-dd', qry_pass.FieldByName('kdrq').AsDateTime));
        laOrderUniqueCode[i].cStartDate := ls_StartDate;

        //[ҽ������]��ָ�ǳ���ҽ��������ʱҽ����ls_OrderType='0'��ʾ����ҽ����
       //ls_OrderType='1'����ʾ��ʱҽ����
        ls_OrderType := '1';
        laOrderUniqueCode[i].cOrderType := ls_OrderType;

        //ls_StopDate [ͣ������]���ַ������ͣ������������ʾͣ�����ڣ���ʽΪ"yyyy-mm-dd"��
        //���翪������Ϊ1999��3��12�գ���Ӧ����"1999-03-12"������ͣ�����ڵ��ڿ������ڣ�
        //δͣ����ҽ��ͣ������ȡ���졣

        if ls_OrderType = '1' then //���Ϊ��ʱҽ������ͣ�����ڵ��ڿ�������
        begin
          ls_StopDate := ls_StartDate;
        end
        else //���Ϊ����ҽ������ȡͣ�����ڣ����δͣ����ͣ������Ϊ����
        begin
          ls_StopDate := Trim(FormatDateTime('yyyy-MM-dd', qry_pass.FieldByName('tzrq').AsDateTime));
        end;

        if trim(ls_StopDate) = '' then
          ls_StopDate := FormatDateTime('yyyy-MM-dd', Frm_func.curr_date);
        laOrderUniqueCode[i].cEndDate := ls_StopDate;

        //���Ϊ�ǵ�����ҩ���������һѭ��
        if ls_StopDate < FormatDateTime('yyyy-MM-dd', Frm_func.curr_date) then
          Break;

        //[ҩƷΨһ��]���ַ������ͣ������������ʾҩƷΨһ�룬Ҫ����PASSϵͳ���ʱ����
        //��ҩƷΨһ����ȫһ�£�����PASSϵͳ�޷�ʶ��ҩƷ��Ϣ���˲�������Ϊ�ա�
        ls_DrugCode := Trim(qry_pass.FieldByName('xmdm').AsString);
        laOrderUniqueCode[i].cDrugCode := ls_DrugCode;

        //���ҩƷΨһ��Ϊ�գ��������һѭ��
        if trim(ls_DrugCode) = '' then
          Break;

        //[ҽ��Ψһ��]:�ַ������ͣ������������ʾҽ��Ψһ�룬PASSϵͳ�����ݴ˲�����
        //ʶ������ִ���ĸ���ҽ����¼,����HISϵͳֻ��ͨ���˲�������ȡPASS���Ľ��ֵ��
        //��ͬһѭ������ʱ��Ҫ�����¼��ls_OrderUniqueCodeeֵ����Ψһ��
        //���磬�ɴ����¼���к�ֵ��
        ls_OrderUniqueCode := Trim(qry_pass.FieldByName('xh').AsString);
        laOrderUniqueCode[i].cOrderUniqueCode := ls_OrderUniqueCode;

        //----------laOrderUniqueCode[ll_row - 1] := ls_OrderUniqueCode;
                //[ҩƷ����]���������ͣ������������ʾҩƷ���ơ�
        ls_DrugName := Trim(qry_pass.FieldByName('xmmc').AsString);
        laOrderUniqueCode[i].cDrugName := ls_DrugName;

        //[���μ���ֵ]���������ͣ������������ʾÿ��ʹ�ü��������ֲ��֣�����˲�����Ҫ
        //����PASS�Բ���ÿ�η��ü�������顣ע�⣺�˴�Ҫ����ת��Ϊ��ҩƷ��Լ�����λ
        //��ȫһ�µ�λ�����ֵ������ҩƷ��Լ�����λΪ"mg"�������˵�ÿ�η��ü���Ϊ"0.5g"��
        //��ʱ�Ͳ��ܴ���"0.5"����Ӧ����Ϊ"500mg"�󣬴���"500"���˲������Ϊ�գ�������������
        ls_SingleDose := Trim(qry_pass.FieldByName('ypyl').AsString);
        laOrderUniqueCode[i].cSingleDose := ls_SingleDose;

        //[���μ�����λ]���ַ������ͣ������������ʾÿ�η��ü�����λ��Ҫ����ҩƷ���
        //������λ��ȫһ�µ�λ��ȫһ�£����������ɼ�����鲻��ȷ��
        ls_DoseUnit := Trim(qry_pass.FieldByName('yldw').AsString);
        laOrderUniqueCode[i].cDoseUnit := ls_DoseUnit;

        //�ַ������ͣ������������ʾҩƷ����Ƶ����Ϣ������Ҫ��
        //n��m�Σ���"m/n"�����磺1��3�Σ���"3/1"��7��2�Σ���"2/7"��
        qry_yf.Close;
        qry_yf.SQL.Text := 'select mc,sl,dw from sys_ypyf where mc=:mc';
        qry_yf.Parameters.ParamByName('mc').Value := Trim(qry_pass.FieldByName('ypyf').AsString);
        qry_yf.Open;
        if (Trim(qry_yf.FieldByName('dw').AsString) = 'ÿ��') or ((Trim(qry_yf.FieldByName('dw').AsString) = 'ÿ��')) then
        begin
          ls_Frequency := Trim(qry_yf.FieldByName('sl').AsString) + '/1';
        end
        else
          if Trim(qry_yf.FieldByName('dw').AsString) = '����' then
          begin
            ls_Frequency := Trim(qry_yf.FieldByName('sl').AsString) + '/2';
          end
          else
          begin
            ls_Frequency := Trim(qry_yf.FieldByName('sl').AsString) + '/n';
          end;
        laOrderUniqueCode[i].cFrequency := ls_Frequency;
        //[��ҩ;������]���ַ������ͣ������������ʾ��ҩ;�����ƣ�����"�ڷ�"��"����"�ȡ�
        //ע�⣬����PASSϵͳ������ҩ;����ϵ���У��˲���������󣬽�ֱ�ӵ���������
        //������գ�����PASSϵͳ�����κ���顣
        ls_RouteName := Trim(qry_pass.FieldByName('yytj').AsString);
        laOrderUniqueCode[i].cRouteName := ls_RouteName;

        { [����ҽ�����]: �ַ������ͣ������������ʾ����ҽ����ǡ���Ҫ����PASSϵͳ����ע��������������ʶ��ע����Ƿ�����һ��ʹ�ã�
        ��ѭ�������ҽ���У�����˲���ֵ��ͬ�����ʾ��������һ���ã���������²��п��ܴ��������������⣬��֮��
          ���������һ���õ�ҽ������Ҫ����Ĵ˲���ֵһ��Ҫ����ͬ�����磺����10��ҽ��������飬���е�2��3����
          ����һ���õ�ҽ������6��7Ϊ��һ������һ���õ�ҽ������ѭ������10��ҽ����ls_GroupTag����ӦΪ��
          ��n��ҽ�� ����ls_GroupTag����ֵ
          ��1��ҽ�� "1"
          ��2��ҽ�� "2"
          ��3��ҽ�� "2"
          ��4��ҽ�� "4"
          ��5��ҽ�� "5"
          ��6��ҽ�� "6"
          ��7��ҽ�� "6"
          ��8��ҽ�� "8"
          ��9��ҽ�� "9"
          ��10��ҽ�� "10"
          �������ɿ�������ls_GroupTag����ʱҪ��Ϊ������һ���õ�ҽ����ls_GroupTag����ֵ������ͬ����2��3��ҽ��
          ��ls_GroupTag����ֵ��Ϊ"2"����6��7��ҽ����ls_GroupTag����ֵ��Ϊ"6"����û������һ���õ�ҽ����ls_GroupTag����ֵ
          ���벻��ͬ����1��ҽ����ls_GroupTag����ֵ��Ϊ"1"����2��3��ҽ����ls_GroupTag����ֵ��Ϊ"2"����3��ҽ����
          ls_GroupTag����ֵ��Ϊ"3"����4��ҽ����ls_GroupTag����ֵ��Ϊ"4"����5��ҽ����ls_GroupTag����ֵ��Ϊ"5"����6��7��
          ҽ����ls_GroupTag����ֵ��Ϊ"6"����8��ҽ����ls_GroupTag����ֵ��Ϊ"8"����9��ҽ����ls_GroupTag����ֵ��Ϊ"9"��
          ��10��ҽ����ls_GroupTag����ֵ��Ϊ"10"����}
        if (trim(qry_pass.FieldByName('fzph').asstring) <> old_fzph) or (trim(qry_pass.FieldByName('fzph').asstring) = '') then
        begin
          old_fzph := trim(qry_pass.FieldByName('fzph').asstring);
          old_xh := trim(qry_pass.FieldByName('xh').asstring);
        end;
        ls_GroupTag := old_xh;
        laOrderUniqueCode[i].cGroupTag := ls_GroupTag;
        //[ҽ������/����]���ַ������ͣ������������ʾҽ����������Ҫ����PASS���������
        //�ɼ����ѯͳ�ơ���ʽΪ"���ұ���/����"������"04/����"������"04"Ϊҽ�����롣

        ls_DoctorCodeAndName := trim(qry_pass.FieldByName('kdys').asstring) + '/'
          + func_getysmc(trim(qry_pass.FieldByName('kdys').asstring));
        laOrderUniqueCode[i].cDoctorCodeAndName := ls_DoctorCodeAndName;

        //����һ��ҩƷ��Ϣ
        PassSetRecipeInfo(
          pchar(laOrderUniqueCode[i].cOrderUniqueCode),
          pchar(laOrderUniqueCode[i].cDrugCode),
          pchar(laOrderUniqueCode[i].cDrugName),
          pchar(laOrderUniqueCode[i].cSingleDose),
          pchar(laOrderUniqueCode[i].cDoseUnit),
          pchar(laOrderUniqueCode[i].cFrequency),
          pchar(laOrderUniqueCode[i].cStartDate),
          pchar(laOrderUniqueCode[i].cEndDate),
          pchar(laOrderUniqueCode[i].cRouteName),
          pchar(laOrderUniqueCode[i].cGroupTag),
          pchar(laOrderUniqueCode[i].cOrderType),
          pchar(laOrderUniqueCode[i].cDoctorCodeAndName));
      end;
      qry_pass.Next;
    end;

    //���Ϊ��ҩ������Ϣ��ѯʱ��Ҫ�����PassSetWarnDrug()�������뵱ǰ�ж�Ӧ��ҽ��Ψһ��ֵ��
    if aitem = 6 then
    begin
      ls_Currow_OrderUniqueCode := Trim(qry_pass.FieldByName('xh').AsString);
      PassSetWarnDrug(pchar(ls_Currow_OrderUniqueCode));
    end;

    //������麯��
    PassDoCommand(aitem);
    PassSetControlParam(1, 2, 0, 2, 1);

    //���ΪסԺ�����ҽ������վ���桢�ύ�Զ���飬�򷵻������ֵ����HIS�������ơ�
    if (aitem = 1) or (aitem = 2) or (aitem = 3) or (aitem = 33) or (aitem = 34) then
    begin
      for i := low(laOrderUniqueCode) to high(laOrderUniqueCode) do
      begin
        laOrderUniqueCode[i].iwarn := PassGetWarn(pchar(laOrderUniqueCode[i].cOrderUniqueCode));
        liwarn := laOrderUniqueCode[i].iwarn;
        if (liwarn = 2) or (liwarn = 3) then
          liwarntemp := 3 + liwarn
        else
          liwarntemp := liwarn;

        if (limaxwarn = 2) or (limaxwarn = 3) then
          limaxtemp := 3 + limaxwarn
        else
          limaxtemp := limaxwarn;

        if limaxtemp < liwarntemp then limaxwarn := liwarn;
      end;
    end;
  end;
  result := limaxwarn;
end;


function wf_recipe_check_pass4(aitem: integer; var qry_pass: TADOQuery; qry_yf: TADOQuery; amount: integer): integer;
var piShowMode, piIsSave, i, iwarn, imaxwarn: integer;
begin
  iwarn := 0;
  imaxwarn := 0;
  piShowMode:=1;
  piIsSave:=1;
  MDC_DoCheck(piShowMode, piIsSave);

  MDC_DoSetDrug('','');
  MDC_CloseDrugHint; 
  //������麯��
  for I := 1 to amount do
  begin
    iwarn := MDC_GetWarningCode(PChar(IntToStr(i)));
  //����iwarn���ڽ�������ʾ��ʾ��
    if iwarn > imaxwarn then
      imaxwarn := iwarn; //  imaxwarn ���������صľ�ʾ���
  end;
  result := imaxwarn; //���������ؾ�ʾ����
end;

function proc_save_pass(aitem: Integer; var qry_pass: TADOQuery; qry_yf: TADOQuery): Boolean;
var
  li_warn: integer; //���ص����ʾֵ
begin
  Result := True;
  if gi_passenabled <> 0 then
  begin
    li_warn := wf_recipe_check(aitem, qry_pass, qry_yf); //�����û��Զ����Զ���麯��

    //    application.MessageBox( PChar( IntToStr( li_warn ) ), 'PASS������ҩ��ʾ:', MB_OK + MB_ICONEXCLAMATION );
        //���ҽԺ�����ϸ���Ʊ�־,�������ڵƣ�����ʾ�û��Ǳ��������桢ִ��ҽ��
    if pub_pass_ygkzbz and (li_warn > 2) then
    begin
      application.MessageBox('������ҩ����,�������ҩ����', 'PASS������ҩ��ʾ:', MB_OK + MB_ICONEXCLAMATION);
      Result := False;
    end;
  end;
end;

function proc_save_pass4(aitem: Integer; var qry_pass: TADOQuery; qry_yf: TADOQuery; amount: Integer): Boolean;
var
  li_warn: integer; //���ص����ʾֵ
begin
  Result := True;
  if gi_passenabled <> 0 then
  begin
    //  li_warn := wf_recipe_check(aitem, qry_pass, qry_yf); //�����û��Զ����Զ���麯��
    li_warn := wf_recipe_check_pass4(aitem, qry_pass, qry_yf, amount); //�����û��Զ����Զ���麯��

    //    application.MessageBox( PChar( IntToStr( li_warn ) ), 'PASS������ҩ��ʾ:', MB_OK + MB_ICONEXCLAMATION );
        //���ҽԺ�����ϸ���Ʊ�־,�������ڵƣ�����ʾ�û��Ǳ��������桢ִ��ҽ��
    if pub_pass_ygkzbz and (li_warn > 2) then
    begin
      application.MessageBox('������ҩ����,�������ҩ����', 'PASS������ҩ��ʾ:', MB_OK + MB_ICONEXCLAMATION);
      Result := False;
    end;
  end;
end;

function func_getysmc(ysdm: string): string;
var
  ysmc: string;
begin
  ysmc := '';
  with DM_data do
  begin
    qry_pub.Close;
    qry_pub.SQL.Text := 'select mc from sys_czy where dm=' + #39 + ysdm + #39;
    qry_pub.Open;
    if qry_pub.RecordCount > 0 then
      ysmc := qry_pub.FieldByName('mc').AsString;
  end;
  Result := ysmc;
end;

end.

