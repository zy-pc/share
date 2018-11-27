unit p_PassDllClare;

interface
uses
  Windows, SysUtils, Classes, Controls, Forms, ADODB;

//审查药品信息记录
type
  TPassCheckDrugList = record
    cOrderUniqueCode: string; //医嘱唯一码，要求能唯一标记医嘱记录
    cDrugCode: string; //必须传，医嘱中的药品唯一码
    cDrugName: string; //必须传，医嘱中的药品名称
    cSingleDose: string; //每次剂量(只传数字部分)
    cDoseUnit: string; //每次剂量单位
    cFrequency: string; //频次,格式(n天m次，传'm/n')
    cStartDate: string; //开嘱日期,格式'yyyy-mm-dd'
    cEndDate: string; //停嘱日期,格式'yyyy-mm-dd',未停医嘱传空或TODAY（）
    cRouteName: string; //必须传，医嘱中的给药途径代码（即名称）
    cGroupTag: string; //成组医嘱标记，在一次审查中，不同组传空，同一组则要求传相同的值
    cOrderType: string; //医嘱类型，'S'或's'或'1'表示医嘱临时医嘱，其他则为长期医嘱
    cDoctorCodeAndName: string; //医生代码姓名
    iwarn: integer //返回审查结果值
  end;
  //审查药品信息结构数组
  TPassCheckDrugLists = array of TPassCheckDrugList;
type
  //注册函数
  TRegisterServer = function: integer; stdcall;
  //2、PASS初始化
  TPassInit = function(const UserName: Pchar;
    const DepartMentName: Pchar;
    const WorkstationType: Integer): Integer; stdcall;
  //3、PASS运行模式设置
  TPassSetControlParam = function(const SaveCheckResult: integer;
    const AllowAllegen: integer;
    const CheckMode: integer;
    const DisqMode: integer;
    const UseDiposeIdea: Integer): Integer; stdcall;
  //4、传病人基本信息
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
  //5、传用药药品清单信息
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
  //6、传入病人过敏史
  TPassSetAllergenInfo = function(const AllergenIndex: Pchar;
    const AllergenCode: Pchar;
    const AllergenDesc: Pchar;
    const AllergenType: Pchar;
    const Reaction: Pchar): Integer; stdcall;
  //7、传入病生状态
  TPassSetMedCond = function(const MedCondIndex: Pchar;
    const MedCondCode: Pchar;
    const MedCondDesc: Pchar;
    const MedCondType: Pchar;
    const StartDate: Pchar;
    const EndDate: Pchar): Integer; stdcall;
  //8、传查询药品信息
  TPassSetQueryDrug = function(const DrugCode: Pchar;
    const DrugName: Pchar;
    const DoseUnit: Pchar;
    const RouteName: Pchar): Integer; stdcall;
  //9、获取右键菜单是否可用值
  TPassGetState = function(const QueryItemNo: Pchar): Integer; stdcall;
  //10、PASS功能调用
  TPassDoCommand = function(const CommandNo: Integer): Integer; stdcall;
  //11、获取药品警示级别
  TPassGetWarn = function(const OrderUniqueCode: Pchar): Integer; stdcall;
  //12、设置药品浮动窗口位置
  TPassSetFloatWinPos = function(const left: integer;
    const top: integer;
    const right: integer;
    const bottom: Integer): Integer; stdcall;
  //13、设置需要进行单药警告的药品
  TPassSetWarnDrug = function(const DrugUniqueCode: Pchar): Integer; stdcall;
  //14、PASS退出函数
  TPassQuit = function: Integer; stdcall;
  //15、Windows API取坐标
  //BOOL GetWindowRect(HWND hWnd,LPRECT lpRect)


//PASS4定义wangbing20151127
//1.PASS4初始化函数
function MDC_Init(const pcCheckMode: pchar;
  const pcHiscode: pchar;
  const pcDoctorcode: pchar
  ): integer; stdcall; External 'PASS4Invoke.dll';


  //2.设置病人信息          返回值 1-成功 0-失败
function MDC_SetPatient(const pcpatcode: pchar; //病人ID
  const pcInHospNo: pchar; //住院号或者处方号
  const pcVisitCode: pchar; //住院次数或者就诊次数
  const pcName: pchar; //病人姓名
  const pcSex: pchar; //性别
  const pcBirthday: pchar; //出生日期格式为 MMMM-MM-DD
  const pcHeightCM: pchar; //身高
  const pcWeighKG: pchar; //体重
  const pcDeptCode: pchar; //科室编码
  const pcDeptName: pchar; //科室名称
  const pcDoctorCode: pchar; //医生编码
  const pcDoctorName: pchar; //医生姓名
  const piPatStatus: integer; //病人状态 1:住院；2：门诊；3：急诊
  const piIsLactation: integer; //哺乳状态 0：不是；1：是；-1：无法确定
  const piIsPregnancy: integer; //妊娠状态 0：不是；1：是；-1：无法确定
  const pcPregStartDate: pchar; //妊娠开始日期
  const piHepDamageDegree: integer; //肝功能不全 0：否；1：是；-1：无法确定
  const piRenDamageDegree: integer //肾功能不全 0：否；1：是；-1：无法确定
  ): integer; stdcall; external 'PASS4Invoke.dll';

//3.传病人过敏史信息
function MDC_AddAller(const pcIndex: pchar;
  const pcAllerCode: pchar;
  const pcAllerName: pchar;
  const pcAllerSymptom: pchar
  ): integer; stdcall; external 'PASS4Invoke.dll';
//4.传入病人诊断信息      返回值 1：成功；0：失败
function MDC_AddMedCond(const pcIndex: pchar;
  const pcDiseaseCode: pchar;
  const pcDiseaseName: pchar;
  const pcRecipNo: pchar
  ): integer; stdcall; external 'PASS4Invoke.dll';
//5.传入病人手术信息      返回值 1：成功；0：失败
function MDC_AddOperation(const pcIndex: pchar;
  const pcOprCode: pchar;
  const pcOprName: pchar;
  const pcOprStartDate: pchar;
  const pcOprEndDate: pchar
  ): integer; stdcall; external 'PASS4Invoke.dll';

//6.传病人用药信息
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
//7.审查函数
function MDC_DoCheck(const piShowMode: integer;
  const piIsSave: integer
  ): integer; stdcall; external 'PASS4Invoke.dll';

//8.获取警示级别                                         }
function MDC_GetWarningCode(const pcIndex: pchar): integer; stdcall; external 'PASS4Invoke.dll';
//9.获取一条药品医嘱的审查结果提示窗口函数
function MDC_ShowWarningHint(const pcIndex: pchar): integer; stdcall;
external 'PASS4Invoke.dll';

//10、关闭一条药品医嘱的审查结果提示窗口函数
function MDC_CloseWarningHint: integer; stdcall; external 'PASS4Invoke.dll';

//11.获取审查结果条数
function MDC_GetResultItemCount(const pcIndex: pchar
  ): integer; stdcall; external 'PASS4Invoke.dll';

//12.获取审查结果详细信息
function MDC_GetResultDetail(const pcIndex: pchar
  ): pchar; stdcall; external 'PASS4Invoke.dll';

//13.调用用药研究
function MDC_DoMediStudy(const pcusetime: pchar): integer; stdcall;
external 'PASS4Invoke.dll';

//14. 传入所要查询的药品信息
function MDC_DoSetDrug(const druguniquecode: pchar;
  const drugname: pchar
  ): integer; stdcall; external 'PASS4Invoke.dll';

//15.获取查询项目有效性
function MDC_GetDrugRefEnabled(const pcDrugUniqueCode: pchar;
  piQueryType: integer): pchar; stdcall; external 'PASS4Invoke.dll';

//16.查询药品信息
function MDC_DoRefDrug(piQueryType: integer): integer; stdcall
external 'PASS4Invoke.dll';

//17.关闭浮动窗口
function MDC_CloseDrugHint: integer; stdcall; external 'PASS4Invoke.dll';

//18.本地参数设置
function MDC_Settings: integer; stdcall; external 'PASS4Invoke.dll';

//19.获取错误信息
function MDC_GetLastError: pchar; stdcall; external 'PASS4Invoke.dll';

//20.退出
function MDC_Quit: integer; stdcall; external 'PASS4Invoke.dll';



function LoadPassDll: Boolean; //装载DLL动态库

function LoadPass4Dll(mode, yymc, ysdm: pchar): Boolean; //装载PASS4DLL动态库

function PASSSEARCH(drugcode, drugname: pchar): Boolean; //查询药品

function CLOSEPASSSEARCH(drugcode, drugname: pchar): Boolean; //关闭查询药品

//function DOPASS(drugcode, drugname: pchar): Boolean; //合理性审核

//PASS自动审查、手动审查、用药研究、警告值查询函数
function wf_recipe_check(aitem: integer; var qry_pass: TADOQuery; qry_yf: TADOQuery): integer;

function wf_recipe_check_pass4(aitem: integer; var qry_pass: TADOQuery; qry_yf: TADOQuery; amount: integer): integer;

procedure FreePassDll; //释放DLL动态库

procedure proc_csh(ksdm, ksmc, ysdm, ysmc: string); //1.初始化

procedure proc_pass4_csh(ksdm, ksmc, ysdm, ysmc: string); //1.PASS4初始化

procedure proc_pass4_zycsh(ksdm, ksmc, ysdm, ysmc: string);//2.住院医生工作站开关

procedure proc_brjbxx(tmh, jzcs, brxm, brxb, brcsrq, brtz, brsg, ksdm, ksmc,
  ysdm, ysmc, cyrq: string); //2.传选定病人基本情况信息

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
  const piRenDamageDegree: integer); //2.传选定病人基本情况信息

procedure proc_gmsztgl(); //3.病人过敏史/病生状态管理

function proc_save_pass(aitem: Integer; var qry_pass: TADOQuery; qry_yf: TADOQuery): Boolean; //保存前自动审查

function proc_save_pass4(aitem: Integer; var qry_pass: TADOQuery; qry_yf: TADOQuery; amount: Integer): Boolean; //保存前自动审查

function func_getysmc(ysdm: string): string; //获取医生日期

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

  gi_passenabled: integer; //是否调用PASS系统功能全局变量，0表示不调用，1表示调用
  pub_pass_ygkzbz: Boolean; //合理用药严格控制标志
implementation
uses p_func, p_dm;

function LoadPassDll: Boolean; //装载DLL动态库
begin
  Result := True;
  if FileExists('ShellRunAs.dll') then
  begin
    //注册
    LibHand1 := loadlibrary('ShellRunAs.dll');
    if LibHand1 = 0 then //注册DLL加载失败
    begin
      FreeLibrary(LibHand1); //释放DLL
    end;
    try
      RegisterServer := GetProcAddress(LibHand1, 'RegisterServer');
      RegisterServer;
    except
      FreeLibrary(LibHand); //释放DLL
    end;
  end
  else
  begin
    Result := False;
    Exit;
  end;

  if FileExists('DIFPassDll.dll') then
  begin
    //取得DLL操作函数接口
    LibHand := loadlibrary('DIFPassDll.dll');
    if LibHand = 0 then
    begin
      Application.MessageBox('不能装载动态连接库文件DIFPassDll.dll', '系统提示：', 0 + 64);
      FreeLibrary(LibHand); //释放DLL
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
      Application.MessageBox('装载动态连接库文件DIFPassDll.dll中的接口失败!', '系统提示：', 0 + 64);
      FreeLibrary(LibHand); //释放DLL
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

function PASSSEARCH(drugcode, drugname: pchar): Boolean; //查询药品
begin
  if gi_passenabled = 1 then
  begin
    MDC_DoSetDrug(drugcode, drugname);
    MDC_DoRefDrug(51);
  end;
end;

function CLOSEPASSSEARCH(drugcode, drugname: pchar): Boolean; //关闭查询药品
begin
  if gi_passenabled = 1 then
  begin
    MDC_DoSetDrug(drugcode, drugname); //当前医嘱为非药品时，将浮动工具//栏上的药品名称置空
    MDC_CloseDrugHint(); //非药品医嘱，关闭药品重要信息提示窗口
  end;
end;

function LoadPass4Dll(mode, yymc, ysdm: pchar): Boolean; //装载Pass4DLL动态库
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
    Application.MessageBox('PASS4Invoke.dll中的接口失败!', '系统提示：', 0 + 64);
    Exit;
  end;
end;

function LoadPass4Dll1(mode, yymc, ysdm: pchar): Boolean; //装载Pass4DLL动态库
begin
  Result := True;
  if FileExists('PASS4Invoke.dll') then
  begin
    if (MDC_Init(mode, yymc, ysdm) = 1) then
    //注册
      LibHand1 := loadlibrary('ShellRunAs.dll');
    if LibHand1 = 0 then //注册DLL加载失败
    begin
      FreeLibrary(LibHand1); //释放DLL
    end;
    try
      RegisterServer := GetProcAddress(LibHand1, 'RegisterServer');
      RegisterServer;
    except
      FreeLibrary(LibHand); //释放DLL
    end;
  end
  else
  begin
    Result := False;
    Exit;
  end;

  if FileExists('DIFPassDll.dll') then
  begin
    //取得DLL操作函数接口
    LibHand := loadlibrary('DIFPassDll.dll');
    if LibHand = 0 then
    begin
      Application.MessageBox('不能装载动态连接库文件DIFPassDll.dll', '系统提示：', 0 + 64);
      FreeLibrary(LibHand); //释放DLL
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
      Application.MessageBox('装载动态连接库文件DIFPassDll.dll中的接口失败!', '系统提示：', 0 + 64);
      FreeLibrary(LibHand); //释放DLL
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


procedure FreePassDll; //释放DLL
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
      //[病人病案编号]：字符串类型，传入参数，表示病人编码，
      //PASS系统将以参数ls_pat_id为关键字来保存和检索病人过敏史/病生状态信息，此参数不能为空
      ls_pat_id := tmh;

      //[当前就诊次数]：字符串类型，传入参数，表示病人住院次数，如果HIS系统没有此信息，则可传入"1"。
      ls_visit_id := jzcs;

      //[病人姓名]：字符串类型，传入参数，表示病人姓名。
      ls_pat_name := brxm;

      //[病人性别]：字符串类型，格式为"男"、"女"、"不详"，如果没有赋值将会影响病人"妊娠"和"哺乳"模块的审查;
      ls_sex := brxb;

      //[病人出生日期]：字符串类型，格式为"yyyy-mm-dd"，
      //如果没有赋值将会影响病人"剂量"、"儿童警告"和"老年人警告"模块的审查，例如："1976-08-12"
      ls_birthday := brcsrq;

      //[体重]：字符串类型，传入参数，表示病人以公斤为单位的体重值，例如某病人体重为23.5公斤，则应传入"23.5"，
      //由于传入身高时不能传入单位，所以如果HIS系统病人身高不是以公斤为单位，则要求必须换算成公斤后，再传入数值。
      //如果HIS系统没有管理病人体重信息，则应传入空字符串。
      ls_weight := brtz;

      //[身高]：字符串类型，传入参数，表示病人以厘米为单位的身高值，例如某病人身高为175厘米，则应传入"175"。
      //如果HIS系统没有管理病人身高信息，则应传入空字符串。
      ls_height := brsg;

      //[科室编码/名称]：字符串类型，传入参数，表示病人当前所在科室或病区编码和名称，
      //主要用于PASS审查结果数据采集与查询统计。格式为"科室编码/名称"，例如"01/内一科"，其中"01"为科室编码。
      ls_deptcodeandname := ksdm + '/' + ksmc;

      //[医生编码/名称]：字符串类型，传入参数，表示医生姓名，主要用于PASS审查结果数据采集与查询统计。格式为"科室编码/名称"，
      //例如"04/王彬"，其中"04"为医生编码。
      ls_doctorcodeandname := ysdm + '/' + ysmc;

      //[出院日期]：字符串类型，格式为"yyyy-mm-dd"（例如"1976-08-12"），未出院病人，要求传入空字符串。
      ls_leavedate := cyrq;

      try
        //传入病人基本信息之前，清除审查结果警告信息
        PassDoCommand(402);
        //调用PASS系统DLL函数PassSetPatientInfo（）传入当前病人基本情况信息
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
      Application.MessageBox('PASS4Invoke.dll中的接口失败!', '系统提示：', 0 + 64);
      Exit;
    end ; 
  end else
  begin
    //Application.MessageBox('PASS4Invoke.dll中的接口失败!', '系统提示：', 0 + 64);
    Exit;
  end;
end;

procedure proc_csh(ksdm, ksmc, ysdm, ysmc: string);
var
  liRtn: Integer;
  lsInifilename: string; //HIS系统INI设置文件名
  liPassType: Integer; //HIS工作站类型
  lcLoginUserIDandName: string; //当前登录用户工号和姓名
  lcDeptCodeAndName: string; //当前登录科室编码和名称
  lcIsPass: string; //本地INI文件中是否调用PASS系统功能设置
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
      //   1、从HIS系统服务器读是否使用PASS系统设置值到"否使用PASS系统"全局变量gi_passenabled中，
//   例如从HIS系统服务器中HisSysSetTable表读是否使用PASS系统代码如下：
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
  //2、读本地INI文件中是否调用PASS系统功能设置值，具体取值如下：
  //      0: 表示不调用PASS系统功能；
  //      1: 表示要调用PASS系统功能，但还要受HIS系统数据库PASS参数设置的控制；
  //      100: 表示要调用PASS系统功能，但不受HIS系统数据库PASS参数设置的控制，主要用于全院关闭PASS系统功能调用的情况下，进行软件调试用；
  //  例如：
  //     lcIsPass = ProfileString("PASS.ini", "PASS","PASS", "1")

  if (lcIsPass = '100') or ((gi_passenabled = 1) and (lcIsPass = '1')) then //如果调用PASS系统功能
  begin
    if FileExists('ShellRunAs.dll') then
    begin
      RegisterServer(); //如果找到ShellRunAs.dll文件，调用PASS提供的DLL函数RegisterServer()进行PASS共享DLL设置。
      if FileExists('DifPassDll.dll') then
      begin
        lcLoginUserIDandName := ysdm + '/' + ysmc; //取当前当前登录用户工号和用户名，例如lcLoginUserIDandName  = '01/黄林'
        lcDeptCodeAndName := ksdm + '/' + ksmc; //取当前当前当前科室编号和名称，例如lcDeptCodeAndName = '002/内一科'
        liPassType := 10; //10表示嵌入到医生工作站
        //如果找到DifPassDll.dll文件，则调用PASS提供的DLL函数PassInit ()进行初始化。
        if PassInit(PChar(lcLoginUserIDandName), PChar(lcDeptCodeAndName), liPassType) = 1 then
        begin
          gi_passenabled := 1; //将"是否使用PASS系统"全局变量设为使用状态
          PassSetControlParam(1, 2, 0, 2, 1); //调用PASS系统DLL进行参数设置
        end
        else
          gi_passenabled := 0; //将"是否使用PASS系统"全局变量设为不使用状态
      end
      else // DifPassDll.dll文件未找到
      begin
        gi_passenabled := 0; //将"是否使用PASS系统"全局变量设为不使用状态
        Application.messagebox('提示', ' DifPassDll.dll文件不存在,合理用药监测系统无法正常使用!请与系统管理员联系!');
      end;
    end
    else
      gi_passenabled := 0;
  end
end;

procedure proc_pass4_csh(ksdm, ksmc, ysdm, ysmc: string);
var
  liRtn: Integer;
  lsInifilename: string; //HIS系统INI设置文件名
  liPassType: Integer; //HIS工作站类型
  lcLoginUserIDandName: string; //当前登录用户工号和姓名
  lcDeptCodeAndName: string; //当前登录科室编码和名称
  lcIsPass: string; //本地INI文件中是否调用PASS系统功能设置
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
      //   1、从HIS系统服务器读是否使用PASS系统设置值到"否使用PASS系统"全局变量gi_passenabled中，
//   例如从HIS系统服务器中HisSysSetTable表读是否使用PASS系统代码如下：
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
  过程名:    proc_pass4_zycsh
  作者:      yansghuai
  日期:      2016.03.02
  参数:      ksdm, ksmc, ysdm, ysmc: string
  返回值:    无
-------------------------------------------------------------------------------}
procedure proc_pass4_zycsh(ksdm, ksmc, ysdm, ysmc: string);
var
  liRtn: Integer;
  lsInifilename: string; //HIS系统INI设置文件名
  liPassType: Integer; //HIS工作站类型
  lcLoginUserIDandName: string; //当前登录用户工号和姓名
  lcDeptCodeAndName: string; //当前登录科室编码和名称
  lcIsPass: string; //本地INI文件中是否调用PASS系统功能设置
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
      //   1、从HIS系统服务器读是否使用PASS系统设置值到"否使用PASS系统"全局变量gi_passenabled中，
//   例如从HIS系统服务器中HisSysSetTable表读是否使用PASS系统代码如下：
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
  //判断是否启用PASS系统和PASS是否正常；
  if gi_PassEnabled = 1 then
  begin
    if PassGetState('0') <> 0 then
    begin
      //调用PassDoCommand(22)函数，调出病人“过敏史/病生状态管理”窗口
      PassDoCommand(22);
    end;
  end;
end;

function wf_recipe_check(aitem: integer; var qry_pass: TADOQuery; qry_yf: TADOQuery): integer;
var
  ll_row, ll_rowcount, i: Integer;
  ll_currentrow: Integer; //数据行数
  //  laRow: array of Integer;
  laOrderUniqueCode: TPassCheckDrugLists;
  //传处方用药清单
  ls_isdrug: string; //医嘱类别
  ls_iscancel: string; //是否作废
  ls_isstop: string; //是否停嘱

  ls_OrderUniqueCode: string; //医嘱唯一码
  ls_DrugCode: string; //药品唯一码
  ls_DrugName: string; //药品名称
  ls_SingleDose: string; //单次剂量值
  ls_DoseUnit: string; //单次剂量单位
  ls_Frequency: string; //用药频次
  ls_StartDate: string; //开嘱日期
  ls_StopDate: string; //停嘱日期
  ls_RouteName: string; //给药途径名称
  ls_GroupTag: string; //成组医嘱标记
  ls_OrderType: string; //医嘱类型（长期0/临时1）
  ls_DoctorCodeAndName: string; //医生编码/姓名
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
      if (Trim(qry_pass.FieldByName('lb').AsString) = '西药') or
        (Trim(qry_pass.FieldByName('lb').AsString) = '中药') or
        (Trim(qry_pass.FieldByName('lb').AsString) = '药品') then
      begin
        ls_isdrug := '[药品类医嘱]';
        ls_isstop := '[未停]';
        ls_iscancel := '[未作废]';
        //如果当前医嘱为非药品类医嘱或已停或已作废，则不能传入此记录，而应进入下一循环。
        if (ls_isdrug <> '[药品类医嘱]') or (ls_isstop = '[已停]') or (ls_iscancel = '[已作废]') then
          Break;

        //[开嘱日期]：字符串类型，传入参数，表示开立医嘱日期。格式为"yyyy-mm-dd"，
        // 例如开嘱日期为1999年3月12日，则应传入"1999-03-12"。
        ls_StartDate := Trim(FormatDateTime('yyyy-MM-dd', qry_pass.FieldByName('kdrq').AsDateTime));
        laOrderUniqueCode[i].cStartDate := ls_StartDate;

        //[医嘱类型]：指是长期医嘱还是临时医嘱，ls_OrderType='0'表示长期医嘱；
       //ls_OrderType='1'，表示临时医嘱；
        ls_OrderType := '1';
        laOrderUniqueCode[i].cOrderType := ls_OrderType;

        //ls_StopDate [停嘱日期]：字符串类型，传入参数，表示停嘱日期，格式为"yyyy-mm-dd"，
        //例如开嘱日期为1999年3月12日，则应传入"1999-03-12"。临嘱停嘱日期等于开嘱日期，
        //未停长期医嘱停嘱日期取当天。

        if ls_OrderType = '1' then //如果为临时医嘱，则停嘱日期等于开嘱日期
        begin
          ls_StopDate := ls_StartDate;
        end
        else //如果为长期医嘱，则取停嘱日期，如果未停，则停嘱日期为当天
        begin
          ls_StopDate := Trim(FormatDateTime('yyyy-MM-dd', qry_pass.FieldByName('tzrq').AsDateTime));
        end;

        if trim(ls_StopDate) = '' then
          ls_StopDate := FormatDateTime('yyyy-MM-dd', Frm_func.curr_date);
        laOrderUniqueCode[i].cEndDate := ls_StopDate;

        //如果为非当天用药，则进入下一循环
        if ls_StopDate < FormatDateTime('yyyy-MM-dd', Frm_func.curr_date) then
          Break;

        //[药品唯一码]：字符串类型，传入参数，表示药品唯一码，要求与PASS系统配对时采用
        //的药品唯一码完全一致，否则PASS系统无法识别药品信息。此参数不能为空。
        ls_DrugCode := Trim(qry_pass.FieldByName('xmdm').AsString);
        laOrderUniqueCode[i].cDrugCode := ls_DrugCode;

        //如果药品唯一码为空，则进入下一循环
        if trim(ls_DrugCode) = '' then
          Break;

        //[医嘱唯一码]:字符串类型，传入参数，表示医嘱唯一码，PASS系统将根据此参数来
        //识别和区分传入的各条医嘱记录,审查后HIS系统只能通过此参数来获取PASS审查的结果值。
        //在同一循环传入时，要求各记录的ls_OrderUniqueCodee值必须唯一，
        //例如，可传入记录的行号值。
        ls_OrderUniqueCode := Trim(qry_pass.FieldByName('xh').AsString);
        laOrderUniqueCode[i].cOrderUniqueCode := ls_OrderUniqueCode;

        //----------laOrderUniqueCode[ll_row - 1] := ls_OrderUniqueCode;
                //[药品名称]：符串类型，传入参数，表示药品名称。
        ls_DrugName := Trim(qry_pass.FieldByName('xmmc').AsString);
        laOrderUniqueCode[i].cDrugName := ls_DrugName;

        //[单次剂量值]：符串类型，传入参数，表示每次使用剂量的数字部分，传入此参数主要
        //用于PASS对病人每次服用剂量的审查。注意：此处要求是转化为与药品配对剂量单位
        //完全一致单位后的数值。例如药品配对剂量单位为"mg"，而病人的每次服用剂量为"0.5g"，
        //此时就不能传入"0.5"，而应换算为"500mg"后，传入"500"。此参数如果为空，则不能审查剂量。
        ls_SingleDose := Trim(qry_pass.FieldByName('ypyl').AsString);
        laOrderUniqueCode[i].cSingleDose := ls_SingleDose;

        //[单次剂量单位]：字符串类型，传入参数，表示每次服用剂量单位，要求与药品配对
        //剂量单位完全一致单位完全一致，否则可能造成剂量审查不正确。
        ls_DoseUnit := Trim(qry_pass.FieldByName('yldw').AsString);
        laOrderUniqueCode[i].cDoseUnit := ls_DoseUnit;

        //字符串类型，传入参数，表示药品服用频次信息。传入要求：
        //n天m次，传"m/n"，例如：1天3次，传"3/1"；7天2次，传"2/7"。
        qry_yf.Close;
        qry_yf.SQL.Text := 'select mc,sl,dw from sys_ypyf where mc=:mc';
        qry_yf.Parameters.ParamByName('mc').Value := Trim(qry_pass.FieldByName('ypyf').AsString);
        qry_yf.Open;
        if (Trim(qry_yf.FieldByName('dw').AsString) = '每日') or ((Trim(qry_yf.FieldByName('dw').AsString) = '每晚')) then
        begin
          ls_Frequency := Trim(qry_yf.FieldByName('sl').AsString) + '/1';
        end
        else
          if Trim(qry_yf.FieldByName('dw').AsString) = '隔日' then
          begin
            ls_Frequency := Trim(qry_yf.FieldByName('sl').AsString) + '/2';
          end
          else
          begin
            ls_Frequency := Trim(qry_yf.FieldByName('sl').AsString) + '/n';
          end;
        laOrderUniqueCode[i].cFrequency := ls_Frequency;
        //[给药途径名称]：字符串类型，传入参数，表示给药途径名称，例如"口服"、"静滴"等。
        //注意，由于PASS系统审查与给药途径关系密切，此参数传入错误，将直接导致审查错误；
        //如果传空，则导致PASS系统不作任何审查。
        ls_RouteName := Trim(qry_pass.FieldByName('yytj').AsString);
        laOrderUniqueCode[i].cRouteName := ls_RouteName;

        { [成组医嘱标记]: 字符串类型，传入参数，表示成组医嘱标记。主要用于PASS系统进行注射剂体外配伍审查识别注射剂是否配在一起使用，
        在循环传入的医嘱中，如果此参数值相同，则表示是配制在一起用，此种情况下才有可能存在体外配伍问题，反之，
          如果不配在一起用的医嘱，则要求传入的此参数值一定要不相同。例如：传入10条医嘱进行审查，其中第2、3条是
          配在一起用的医嘱，第6、7为另一组配在一起用的医嘱，则循环传入10条医嘱的ls_GroupTag参数应为：
          第n条医嘱 传入ls_GroupTag参数值
          第1条医嘱 "1"
          第2条医嘱 "2"
          第3条医嘱 "2"
          第4条医嘱 "4"
          第5条医嘱 "5"
          第6条医嘱 "6"
          第7条医嘱 "6"
          第8条医嘱 "8"
          第9条医嘱 "9"
          第10条医嘱 "10"
          由上例可看出，传ls_GroupTag参数时要求为：配在一起用的医嘱的ls_GroupTag参数值必须相同（第2、3条医嘱
          的ls_GroupTag参数值都为"2"；第6、7条医嘱的ls_GroupTag参数值都为"6"）；没有配在一起用的医嘱的ls_GroupTag参数值
          必须不相同（第1条医嘱的ls_GroupTag参数值都为"1"，第2、3条医嘱的ls_GroupTag参数值都为"2"，第3条医嘱的
          ls_GroupTag参数值都为"3"，第4条医嘱的ls_GroupTag参数值都为"4"，第5条医嘱的ls_GroupTag参数值都为"5"，第6、7条
          医嘱的ls_GroupTag参数值都为"6"，第8条医嘱的ls_GroupTag参数值都为"8"，第9条医嘱的ls_GroupTag参数值都为"9"，
          第10条医嘱的ls_GroupTag参数值都为"10"）。}
        if (trim(qry_pass.FieldByName('fzph').asstring) <> old_fzph) or (trim(qry_pass.FieldByName('fzph').asstring) = '') then
        begin
          old_fzph := trim(qry_pass.FieldByName('fzph').asstring);
          old_xh := trim(qry_pass.FieldByName('xh').asstring);
        end;
        ls_GroupTag := old_xh;
        laOrderUniqueCode[i].cGroupTag := ls_GroupTag;
        //[医生编码/名称]：字符串类型，传入参数，表示医生姓名，主要用于PASS审查结果数据
        //采集与查询统计。格式为"科室编码/名称"，例如"04/王彬"，其中"04"为医生编码。

        ls_DoctorCodeAndName := trim(qry_pass.FieldByName('kdys').asstring) + '/'
          + func_getysmc(trim(qry_pass.FieldByName('kdys').asstring));
        laOrderUniqueCode[i].cDoctorCodeAndName := ls_DoctorCodeAndName;

        //传入一条药品信息
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

    //如果为单药警告信息查询时，要求调用PassSetWarnDrug()函数传入当前行对应的医嘱唯一码值。
    if aitem = 6 then
    begin
      ls_Currow_OrderUniqueCode := Trim(qry_pass.FieldByName('xh').AsString);
      PassSetWarnDrug(pchar(ls_Currow_OrderUniqueCode));
    end;

    //调用审查函数
    PassDoCommand(aitem);
    PassSetControlParam(1, 2, 0, 2, 1);

    //如果为住院（门诊）医生工作站保存、提交自动审查，则返回审查结果值并在HIS界面亮灯。
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
  //调用审查函数
  for I := 1 to amount do
  begin
    iwarn := MDC_GetWarningCode(PChar(IntToStr(i)));
  //根据iwarn，在界面上显示警示灯
    if iwarn > imaxwarn then
      imaxwarn := iwarn; //  imaxwarn 保存最严重的警示界别
  end;
  result := imaxwarn; //返回最严重警示级别
end;

function proc_save_pass(aitem: Integer; var qry_pass: TADOQuery; qry_yf: TADOQuery): Boolean;
var
  li_warn: integer; //返回的最大警示值
begin
  Result := True;
  if gi_passenabled <> 0 then
  begin
    li_warn := wf_recipe_check(aitem, qry_pass, qry_yf); //调用用户自定义自动审查函数

    //    application.MessageBox( PChar( IntToStr( li_warn ) ), 'PASS合理用药提示:', MB_OK + MB_ICONEXCLAMATION );
        //如果医院开启严格控制标志,且审查出黑灯，则提示用户是保继续保存、执行医嘱
    if pub_pass_ygkzbz and (li_warn > 2) then
    begin
      application.MessageBox('存在用药禁忌,请调整用药方案', 'PASS合理用药提示:', MB_OK + MB_ICONEXCLAMATION);
      Result := False;
    end;
  end;
end;

function proc_save_pass4(aitem: Integer; var qry_pass: TADOQuery; qry_yf: TADOQuery; amount: Integer): Boolean;
var
  li_warn: integer; //返回的最大警示值
begin
  Result := True;
  if gi_passenabled <> 0 then
  begin
    //  li_warn := wf_recipe_check(aitem, qry_pass, qry_yf); //调用用户自定义自动审查函数
    li_warn := wf_recipe_check_pass4(aitem, qry_pass, qry_yf, amount); //调用用户自定义自动审查函数

    //    application.MessageBox( PChar( IntToStr( li_warn ) ), 'PASS合理用药提示:', MB_OK + MB_ICONEXCLAMATION );
        //如果医院开启严格控制标志,且审查出黑灯，则提示用户是保继续保存、执行医嘱
    if pub_pass_ygkzbz and (li_warn > 2) then
    begin
      application.MessageBox('存在用药禁忌,请调整用药方案', 'PASS合理用药提示:', MB_OK + MB_ICONEXCLAMATION);
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

