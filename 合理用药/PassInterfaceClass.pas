unit PassInterfaceClass;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, IniFiles, StrUtils, DateUtils;

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

  //传诊断
type
  TPassMedList = record
    cMedCode: string;
    cMedName: string
  end;
  TPassMedLists = array of TPassMedList;

  //PASS系统类定义
type
  TMedicomPass = class(TObject)
  private
    FPassEnable: Boolean;
    FPassCheckDrugLists: TPassCheckDrugLists;
    //FPassPriorCheckDrugLists: TPassCheckDrugLists;
    FPassMedLists: TPassMedLists;
    cDeptCodeName: string; //默认科室码+科室名，由构造函数传入
    cDoctorCodeName: string; //默认医生码+医生名，由构造函数传入
    cOrdercode: string;
    procedure SetPassCheckDrugLists(value: TPassCheckDrugLists);
    procedure SetPassMedLists(value: TPassMedLists);
    function GetPassEnable: boolean; //内部公用函数，返回PASS是否可用。
    function FrqcodeToFrqname(const acFrqcode: string): string; //内部公用函数，将常用频次码转化为'm/n'格式
    function FormatDateString(const cDateString: string): string; //内部公用函数，将非正常格式转化为正常日期格式

  public
   // gi_passenabled: integer; //是否调用PASS系统功能全局变量，0表示不调用，1表示调用
    //PASS系统是否可用属性，TRUE表示可用，FALSE表示不可用。
    property PassEnable: boolean read FPassEnable write FPassEnable;
    //审查处方清单属性
    property PassCheckDrugLists: TPassCheckDrugLists read FPassCheckDrugLists write SetPassCheckDrugLists; //审查药品清单

    property PassMedLists: TPassMedLists read FPassMedLists write SetPassMedLists; //诊断

    //构造函数，要求传入登录用户编码、姓名、登录用户所在科室代码、名称和HIS系统数据库中 "是否调用PASS系统功能"记录值
    constructor Create(const acUserCode, acUserName, acDeptCode, acDeptName: string;const abHisEnabled: boolean;const Fgi_passenabled:Integer);
    //析构函数
    destructor Destroy; override;

    //传病人基本情况信息函数
    procedure PassSetPatInfo(const acPatientID, acVisitID, acPatientName, acSex, acBirthday: string; acWeight: string = ''; acHeight: string = ''; acDeptCode: string = ''; acDeptName: string = ''; acDoctorCode: string = ''; acDoctorName: string = '');
    //传当前药品记录信息
    procedure PassSetSearchDrug(const acDrugCode, acDrugName, acDrugDosageUnit, acRouteName: string);
    //获取PASS系统项目有效性状态
    function PassGetMenuEnabled(const acMenuItem: string): Boolean;
    //菜单执行命令
    procedure PassDoSearchCommand(const aiCommandNo: Integer);
    //Pass审查(1、病区医嘱自动审查，33、门诊处方自动审查，3、手动审查、5或7、批量审查（不弹审查结果）)
    function PassDoCheck(const aiCommandNo: Integer): integer;
    //Pass审查(1、病区医嘱自动审查，33、门诊处方自动审查，3、手动审查、5或7、批量审查（不弹审查结果）)
    function Pass4DoCheck(const aiCommandNo: Integer): integer;
    //根据医嘱唯一码取医嘱审查结果值
    function PassGetOrderWarnValue(const acOrdercode: string): integer;
    //弹出浮动窗口
    procedure PassPopWindow(const acDrugCode, acDrugName: string; aileft: integer = 0; aitop: integer = 0; airight: integer = 0; aibottom: integer = 0);
    //弹出审查结果简要信息窗口
    procedure PassPopCheckResultWindow(const acOrdercode: string);
    procedure PassSetRB(const acItem: string); // 'R'表示妊娠期,'B':表示哺乳期
  end;

implementation
uses
  p_PassDllClare;

procedure TMedicomPass.PassSetRB(const acItem: string);
var
  cItem: string;
  cDate: string;
  iRtn: integer;
begin
  if not FPassEnable then
  begin
    exit;
  end;

  PassSetControlParam(1, 2, 0, 2, 1);
  cItem := trim(LowerCase(acItem));
  cDate := FormatDateTime('yyyy-mm-dd', today());

  if cItem = 'r' then

  try
    iRtn := PassSetMedCond(Pchar('01'#0),
      Pchar('MC01'#0),
      Pchar('妊娠期'#0),
      Pchar('ICD'#0),
      Pchar(cDate + #0),
      Pchar(cDate + #0));
  except
  end;
  if cItem = 'b' then
  try
    iRtn := PassSetMedCond(Pchar('01'#0),
      Pchar('MC02'#0),
      Pchar('哺乳期'#0),
      Pchar('ICD'#0),
      Pchar(cDate + #0),
      Pchar(cDate + #0));
  except
  end;
end;

{1、无分隔符格式，要求必须8位，格式"yyyymmdd"
 2、分分隔格式，要求"yyyy-m(m)-d(d)"
 3、非7位数字，认为是年龄（单位岁）
 }

function TMedicomPass.FormatDateString(const cDateString: string): string;
var
  cSource: string;
  cArray: array[0..2] of string; //cArray[0]表示年，cArray[1]表示月，cArray[2]表示日
  cy, cm, cd: string;
  i, j, iLen: integer;
  cs: string;
begin

  if trim(cDateString) = '' then
  begin
    Result := '';
    exit;
  end;
  cSource := trim(cDateString);
  iLen := Length(cSource);
  j := 0;
  //数组初始化处理
  for i := 0 to 2 do
    cArray[i] := '';

  //将字符串数字解析到数组中
  for i := 0 to ilen - 1 do
  begin
    cs := trim(MidStr(cSource, i + 1, 1));
    if (cs >= '0') and (cs <= '9') then
      cArray[j] := cArray[j] + cs
    else
      j := j + 1;
  end;

  //对月和日作补位处理
  cy := trim(cArray[0]);
  cm := trim(cArray[1]);
  if length(cm) = 1 then cm := '0' + cm;
  cd := trim(cArray[2]);
  if length(cd) = 1 then cd := '0' + cd;
  if (cm = '') and (cd = '') and (cy = '') then
  begin
    Result := '';
    exit;
  end;

  if (cm = '') and (cd = '') and (length(cy) = 8) then
  begin
    cd := RightStr(cy, 2);
    cm := MidStr(cSource, 5, 2);
    cy := LeftStr(cy, 4);
    Result := cy + '-' + cm + '-' + cd;
    Exit;
  end
  else
    if (cm = '') and (cd = '') and (StrToInt(cy) < 131) then
    begin
      Result := FormatDateTime('yyyy-mm-dd', (today() - StrToInt(cy) * 365));
      exit;
    end
    else
      if (length(cd) = 2) and (length(cm) = 2) and (length(cy) = 4) then
      begin
        Result := cy + '-' + cm + '-' + cd;
        exit;
      end
      else
        Result := cSource;
end;

//将常用频次格式转换为'm/n'格式。

function TMedicomPass.FrqcodeToFrqname(const acFrqcode: string): string;
var
  lcFrqcode: string;
  lcFrqname: string;
  lcSubstr: string;
  i: integer;
begin

  lcFrqcode := trim(LowerCase(acFrqcode));
  if lcFrqcode = '' then
  begin
    Result := '';
    exit;
  end;
  if (lcFrqcode = 'bid') or (lcFrqcode = 'q12h') then
    lcFrqname := '2/1'
  else
    if (lcFrqcode = 'qd') or (lcFrqcode = 'qn') or (lcFrqcode = 'prn') or (lcFrqcode = 'st') or (lcFrqcode = 'sos') then
      lcFrqname := '1/1'
    else
      if (lcFrqcode = 'tid') or (lcFrqcode = 'q8h') then
        lcFrqname := '3/1'
      else
        if (lcFrqcode = 'qid') or (lcFrqcode = 'q6h') then
          lcFrqname := '4/1'
        else
          if (lcFrqcode = 'q4h') then
            lcFrqname := '6/1'
          else
            if (lcFrqcode = 'q3h') then
              lcFrqname := '8/1'
            else
              if (lcFrqcode = 'q2h') then
                lcFrqname := '12/1'
              else
                if (lcFrqcode = 'q1h') then
                  lcFrqname := '24/1'
                else
                  if (lcFrqcode = 'qod') then
                    lcFrqname := '1/2'
                  else
                    if (lcFrqcode = 'q3d') then
                      lcFrqname := '1/3'
                    else
                      if (lcFrqcode = 'q4d') then
                        lcFrqname := '1/4'
                      else
                        if (lcFrqcode = 'q7d') then
                          lcFrqname := '1/7'
                        else
                          if (lcFrqcode = 'q14d') then
                            lcFrqname := '1/14'
                          else
                            if (lcFrqcode = 'q30d') then
                              lcFrqname := '1/30'
                            else
                            begin
                              lcSubstr := '×';
                              i := pos(lcSubstr, lcFrqcode);
                              if i > 0 then
                                lcFrqname := MidStr(lcFrqcode, Length(lcSubstr) + 1, length(lcFrqcode) - Length(lcSubstr)) + '/1'
                              else
                                lcFrqname := lcFrqcode;
                            end;
  Result := lcFrqname;
end;

//内部使用函数，获取PASS系统状态

function TMedicomPass.GetPassEnable: boolean;
begin
  Result := true;
  if not FPassEnable then
  begin
    Result := false;
    exit;
  end;

  try
    if PassGetState('0') = 0 then
    begin
      FPassEnable := false;
      Result := false;
    end;
  except
    FPassEnable := false;
    Result := false;
  end;
end;

//构造函数

constructor TMedicomPass.Create(const acUserCode, acUserName, acDeptCode, acDeptName: string; const abHisEnabled: boolean;const Fgi_passenabled:Integer);
var
  lmyInifile: TIniFile;
  lcExePath: string;
  lcIniValue: string;
  lcUserCode: string;
  lcUserName: string;
  lcDeptCode: string;
  lcDeptName: string;
begin
  inherited Create;
  if Fgi_passenabled = 1 then
  begin
  //读Pass.ini的设置值
    lcExePath := ExtractFilePath(Application.ExeName);
  //ShowMessage(cExePath);
    lmyInifile := TIniFile.Create(lcExePath + 'Pass.ini');
    lcIniValue := trim(lmyInifile.ReadString('Pass', 'Pass', '1'));

    if (lcIniValue = '100') or ((lcIniValue = '1') and (abHisEnabled = true)) then
    begin
    //        if LoadShareDll then RegisterServer;
      if LoadPassDll then
      begin
        lcUserCode := acUserCode;
        lcUserName := acUserName;
        lcDeptCode := acDeptCode;
        lcDeptName := acDeptName;
        try
          if PassInit(pchar(lcUserCode + '/' + lcUserName + #0), pchar(lcDeptCode + '/' + lcDeptName + #0), 10) = 1 then
          begin
            FPassEnable := true;
            cDeptCodeName := lcUserCode + '/' + lcUserName;
            cDoctorCodeName := lcDeptCode + '/' + lcDeptName;
          end
          else
          begin
            FPassEnable := false;
          end;
        except
          FPassEnable := false;
        end;
      end;
    end
    else
    begin
      FPassEnable := false;
    end;
  end;
end;

//析构函数

destructor TMedicomPass.Destroy;
begin
  inherited destroy;
end;

procedure TMedicomPass.SetPassCheckDrugLists(value: TPassCheckDrugLists);
begin
  FPassCheckDrugLists := nil;
  FPassCheckDrugLists := value;
end;

procedure TMedicomPass.SetPassMedLists(value: TPassMedLists);
begin
  FPassMedLists := nil;
  FPassMedLists := value;
end;

procedure TMedicomPass.PassSetPatInfo(const acPatientID, acVisitID, acPatientName, acSex, acBirthday: string; acWeight: string = ''; acHeight: string = ''; acDeptCode: string = ''; acDeptName: string = ''; acDoctorCode: string = ''; acDoctorName: string = '');
var
  lcPatientID, lcVisitID, lcPatientName, lcSex, lcBirthday, lcWeight, lcHeight, lcDeptCode, lcDeptName, lcDoctorCode, lcDoctorName, lcDept, lcDoctor: string;
begin
  if not GetPassEnable then exit;
  FPassCheckDrugLists := nil;
  FPassMedLists := nil;
  lcPatientID := acPatientID;
  lcVisitID := acVisitID;
  lcPatientName := acPatientName;
  lcSex := acSex;
  lcBirthday := FormatDateString(acBirthday);
  lcWeight := acWeight;
  lcHeight := acHeight;
  lcDeptCode := acDeptCode;
  lcDeptName := acDeptName;
  lcDoctorCode := acDoctorCode;
  lcDoctorName := acDoctorName;
  if trim(lcVisitID) = '' then lcVisitID := '1';
  if trim(lcDeptCode + lcDeptName) = '' then
    lcDept := cDeptCodeName
  else
    lcDept := lcDeptCode + '/' + lcDeptName;

  if trim(lcDoctorCode + lcDoctorName) = '' then
    lcDoctor := cDoctorCodeName
  else
    lcDoctor := lcDoctorCode + '/' + lcDoctorName;

  try
    PassDoCommand(402);
    //         if lcPatientID = nil then lcPatientID := '';
    //         if lcVisitID = nil then lcVisitID := '';
    //         if lcPatientName = nil then lcPatientName := '';
    //         if lcSex = nil then lcSex := '';
    //         if lcWeight = nil then lcWeight := '';
    //         if lcHeight = nil then lcHeight := '';
    //         if lcDept = nil then lcDept := '';
    //         if lcDoctor = nil then lcDoctor := '';

    PassSetPatientInfo(pchar(lcPatientID + #0),
      pchar(lcVisitID + #0),
      pchar(lcPatientName + #0),
      pchar(lcSex + #0),
      pchar(lcBirthday + #0),
      pchar(lcWeight + #0),
      pchar(lcHeight + #0),
      pchar(lcDept + #0),
      pchar(lcDoctor + #0),
      pchar(''#0));

  except
  end;
end;

//传当前药品记录信息

procedure TMedicomPass.PassSetSearchDrug(const acDrugCode, acDrugName, acDrugDosageUnit, acRouteName: string);
var
  lcDrugCode, lcDrugName, lcDrugDosageUnit, lcRouteName: string;
begin
  if not GetPassEnable then exit;
  lcDrugCode := acDrugCode;
  lcDrugName := acDrugName;
  lcDrugDosageUnit := acDrugDosageUnit;
  lcRouteName := acRouteName;
  //    if lcDrugCode = nil then lcDrugCode := '';
  //    if lcDrugName = nil then lcDrugName := '';
  //    if lcDrugDosageUnit = nil then lcDrugDosageUnit := '';
  //    if lcRouteName = nil then lcRouteName := '';
  try
    PassSetQueryDrug(pchar(lcDrugCode + #0),
      pchar(lcDrugName + #0),
      pchar(lcDrugDosageUnit + #0),
      pchar(lcRouteName + #0));

  except
  end;
end;

//获取PASS系统项目有效性状态

function TMedicomPass.PassGetMenuEnabled(const acMenuItem: string): Boolean;
var
  lcMenuItem: string;
begin
  if not GetPassEnable then
  begin
    Result := false;
    exit;
  end;
  lcMenuItem := acMenuItem;
  try
    if PassGetState(pchar(lcMenuItem + #0)) = 1 then
      Result := true
    else
      Result := false;
  except
    Result := false;
  end;
end;


//菜单执行命令

procedure TMedicomPass.PassDoSearchCommand(const aiCommandNo: Integer);
begin
  if not GetPassEnable then exit;
  try
    PassDocommand(aiCommandNo);
  except
  end;
end;

//Pass审查

function TMedicomPass.PassDoCheck(const aiCommandNo: Integer): integer;
var
  i, limaxwarn, liwarn, limaxtemp, liwarntemp, li_med: integer;
  liIsRepeat: integer;
  lcEnddate: string;
  lcGrouptag: string;
  lcOrderType: string;
  lcOrderUniqueCode: string;
  lcdoctor: string;
begin
  limaxwarn := 0;
  Result := 0;
  if not GetPassEnable then exit;
  //非审查命令退出
  if (aiCommandNo <> 1) and (aiCommandNo <> 2) and (aiCommandNo <> 3) and (aiCommandNo <> 5) and (aiCommandNo <> 7) and (aiCommandNo <> 6) and (aiCommandNo <> 12) and (aiCommandNo <> 33) and (aiCommandNo <> 34) then exit;
  //自动审查，判断是否是重复审查
  //   if (aiCommandNo = 1) or (aiCommandNo = 2) or (aiCommandNo = 33) or (aiCommandNo = 34) then
  //   begin
  //       liIsRepeat := 1;
  //       if (high(FPassPriorCheckDrugLists) - low(FPassPriorCheckDrugLists)) <> (high(FPassCheckDrugLists) - low(FPassCheckDrugLists)) then
  //       begin
  //           liIsRepeat := 0;
  //       end
  //       else
  //       begin
  //           for i := low(FPassPriorCheckDrugLists) to high(FPassPriorCheckDrugLists) do
  //           begin
  //               if (trim(FPassPriorCheckDrugLists[i].cDrugCode) <> trim(FPassCheckDrugLists[i].cDrugCode)) or
  //                  (trim(FPassPriorCheckDrugLists[i].cSingleDose) <> trim(FPassCheckDrugLists[i].cSingleDose)) or
  //                  (trim(FPassPriorCheckDrugLists[i].cDoseUnit) <> trim(FPassCheckDrugLists[i].cDoseUnit)) or
  //                  (trim(FPassPriorCheckDrugLists[i].cRouteName) <> trim(FPassCheckDrugLists[i].cRouteName)) or
  //                  (trim(FPassPriorCheckDrugLists[i].cGroupTag) <> trim(FPassCheckDrugLists[i].cGroupTag))  then
  //                  liIsRepeat := 0;
  //           end;
  //       end;
  //       if liIsRepeat = 1 then
  //       begin
  //           Result := 0;
  //           Exit;
  //      end
  //      else
  //      begin
  //          FPassPriorCheckDrugLists := FPassCheckDrugLists;
  //     end;
  // end;
  try
    for i := low(FPassCheckDrugLists) to high(FPassCheckDrugLists) do
    begin
      if trim(FPassCheckDrugLists[i].cEndDate) = '' then
        lcEnddate := FormatDateTime('yyyy-mm-dd', today())
      else
        lcEnddate := trim(FPassCheckDrugLists[i].cEndDate);

      if trim(FPassCheckDrugLists[i].cGroupTag) = '' then
        lcGrouptag := 'mdc' + inttostr(i)
      else
        lcGrouptag := trim(FPassCheckDrugLists[i].cGroupTag);

      if (trim(LowerCase(FPassCheckDrugLists[i].cOrderType)) = 's') or (trim(FPassCheckDrugLists[i].cOrderType) = '1') then
        lcOrderType := '1'
      else
        lcOrderType := '0';

      if trim(FPassCheckDrugLists[i].cOrderUniqueCode) = '' then

        lcOrderUniqueCode := 'mdc' + inttostr(i)
      else
        lcOrderUniqueCode := trim(FPassCheckDrugLists[i].cOrderUniqueCode);

      if lcOrderType = '1' then
        lcOrderUniqueCode := 'Ss' + lcOrderUniqueCode
      else
        lcOrderUniqueCode := 'Ll' + lcOrderUniqueCode;

      if trim(FPassCheckDrugLists[i].cDoctorCodeAndName) = '' then
        lcdoctor := cDoctorCodeName
      else
        lcdoctor := trim(FPassCheckDrugLists[i].cDoctorCodeAndName);

      //            if FPassCheckDrugLists[i].cOrderUniqueCode = nil then FPassCheckDrugLists[i].cOrderUniqueCode := '';
      //            if FPassCheckDrugLists[i].cDrugCode = nil then FPassCheckDrugLists[i].cDrugCode := '';
      //            if FPassCheckDrugLists[i].cDrugName = nil then FPassCheckDrugLists[i].cDrugName := '';
      //            if FPassCheckDrugLists[i].cSingleDose = nil then FPassCheckDrugLists[i].cSingleDose := '';
      //            if FPassCheckDrugLists[i].cDoseUnit = nil then FPassCheckDrugLists[i].cDoseUnit := '';
      //            if FPassCheckDrugLists[i].cFrequency = nil then FPassCheckDrugLists[i].cFrequency := '';
      //            if FPassCheckDrugLists[i].cStartDate = nil then FPassCheckDrugLists[i].cStartDate := '';
      //            if lcEnddate = nil then lcEnddate := '';
      //            if FPassCheckDrugLists[i].cRouteName = nil then FPassCheckDrugLists[i].cRouteName := '';
      //            if lcGrouptag = nil then lcGrouptag := '';
      //            if FPassCheckDrugLists[i].cOrderType = nil then FPassCheckDrugLists[i].cOrderType := '';
      //            if lcdoctor = nil then lcdoctor := '';
      PassSetRecipeInfo(pchar(FPassCheckDrugLists[i].cOrderUniqueCode + #0),
        pchar(FPassCheckDrugLists[i].cDrugCode + #0),
        pchar(FPassCheckDrugLists[i].cDrugName + #0),
        pchar(FPassCheckDrugLists[i].cSingleDose + #0),
        pchar(FPassCheckDrugLists[i].cDoseUnit + #0),
        pchar(FrqcodeToFrqname(FPassCheckDrugLists[i].cFrequency) + #0),
        pchar(FormatDateString(FPassCheckDrugLists[i].cStartDate) + #0),
        pchar(lcEnddate + #0),
        pchar(FPassCheckDrugLists[i].cRouteName + #0),
        pchar(lcGrouptag + #0),
        pchar(FPassCheckDrugLists[i].cOrderType + #0),
        pchar(lcdoctor + #0));
    end;
    //传诊断
    li_med := 0;
    for i := low(FPassMedLists) to high(FPassMedLists) do
    begin
      if trim(FPassMedLists[i].cMedCode) <> '' then
      begin
        PassSetMedCond(pchar('mdc' + inttostr(i) + #0),
          pchar(FPassMedLists[i].cMedCode + #0),
          pchar(FPassMedLists[i].cMedName + #0),
          pchar('USER' + #0),
          pchar(FormatDateTime('yyyy-mm-dd', today()) + #0),
          pchar(FormatDateTime('yyyy-mm-dd', today()) + #0));
        li_med := li_med + 1;
      end;

    end;
    if li_med > 0 then PassSetControlParam(1, 1, 0, 2, 1);

    PassDocommand(aiCommandNo);
    PassSetControlParam(1, 2, 0, 2, 1);
    if (aiCommandNo <> 6) and (aiCommandNo <> 12) then
    begin

      for i := low(FPassCheckDrugLists) to high(FPassCheckDrugLists) do
      begin
        FPassCheckDrugLists[i].iwarn := PassGetWarn(pchar(FPassCheckDrugLists[i].cOrderUniqueCode + #0));
        liwarn := FPassCheckDrugLists[i].iwarn;
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
      Result := limaxwarn;
    end;
  except
  end;
end;

//Pass4审查

function TMedicomPass.Pass4DoCheck(const aiCommandNo: Integer): integer;
var
  i, limaxwarn, liwarn, limaxtemp, liwarntemp, li_med: integer;
  liIsRepeat: integer;
  lcEnddate: string;
  lcGrouptag: string;
  lcOrderType: string;
  lcOrderUniqueCode: string;
  lcdoctor: string;
begin
  limaxwarn := 0;
  Result := 0;
  if not GetPassEnable then exit;
  //非审查命令退出
  if (aiCommandNo <> 1) and (aiCommandNo <> 2) and (aiCommandNo <> 3) and (aiCommandNo <> 5) and (aiCommandNo <> 7) and (aiCommandNo <> 6) and (aiCommandNo <> 12) and (aiCommandNo <> 33) and (aiCommandNo <> 34) then exit;
  try
    for i := low(FPassCheckDrugLists) to high(FPassCheckDrugLists) do
    begin
      if trim(FPassCheckDrugLists[i].cEndDate) = '' then
        lcEnddate := FormatDateTime('yyyy-mm-dd', today())
      else
        lcEnddate := trim(FPassCheckDrugLists[i].cEndDate);

      if trim(FPassCheckDrugLists[i].cGroupTag) = '' then
        lcGrouptag := 'mdc' + inttostr(i)
      else
        lcGrouptag := trim(FPassCheckDrugLists[i].cGroupTag);

      if (trim(LowerCase(FPassCheckDrugLists[i].cOrderType)) = 's') or (trim(FPassCheckDrugLists[i].cOrderType) = '1') then
        lcOrderType := '1'
      else
        lcOrderType := '0';

      if trim(FPassCheckDrugLists[i].cOrderUniqueCode) = '' then

        lcOrderUniqueCode := 'mdc' + inttostr(i)
      else
        lcOrderUniqueCode := trim(FPassCheckDrugLists[i].cOrderUniqueCode);

      if lcOrderType = '1' then
        lcOrderUniqueCode := 'Ss' + lcOrderUniqueCode
      else
        lcOrderUniqueCode := 'Ll' + lcOrderUniqueCode;

      if trim(FPassCheckDrugLists[i].cDoctorCodeAndName) = '' then
        lcdoctor := cDoctorCodeName
      else
        lcdoctor := trim(FPassCheckDrugLists[i].cDoctorCodeAndName);
      PassSetRecipeInfo(pchar(FPassCheckDrugLists[i].cOrderUniqueCode + #0),
        pchar(FPassCheckDrugLists[i].cDrugCode + #0),
        pchar(FPassCheckDrugLists[i].cDrugName + #0),
        pchar(FPassCheckDrugLists[i].cSingleDose + #0),
        pchar(FPassCheckDrugLists[i].cDoseUnit + #0),
        pchar(FrqcodeToFrqname(FPassCheckDrugLists[i].cFrequency) + #0),
        pchar(FormatDateString(FPassCheckDrugLists[i].cStartDate) + #0),
        pchar(lcEnddate + #0),
        pchar(FPassCheckDrugLists[i].cRouteName + #0),
        pchar(lcGrouptag + #0),
        pchar(FPassCheckDrugLists[i].cOrderType + #0),
        pchar(lcdoctor + #0));
    end;
    //传诊断
    li_med := 0;
    for i := low(FPassMedLists) to high(FPassMedLists) do
    begin
      if trim(FPassMedLists[i].cMedCode) <> '' then
      begin
        PassSetMedCond(pchar('mdc' + inttostr(i) + #0),
          pchar(FPassMedLists[i].cMedCode + #0),
          pchar(FPassMedLists[i].cMedName + #0),
          pchar('USER' + #0),
          pchar(FormatDateTime('yyyy-mm-dd', today()) + #0),
          pchar(FormatDateTime('yyyy-mm-dd', today()) + #0));
        li_med := li_med + 1;
      end;

    end;
    if li_med > 0 then PassSetControlParam(1, 1, 0, 2, 1);

    PassDocommand(aiCommandNo);
    PassSetControlParam(1, 2, 0, 2, 1);
    if (aiCommandNo <> 6) and (aiCommandNo <> 12) then

    begin

      for i := low(FPassCheckDrugLists) to high(FPassCheckDrugLists) do
      begin
        FPassCheckDrugLists[i].iwarn := PassGetWarn(pchar(FPassCheckDrugLists[i].cOrderUniqueCode + #0));
        liwarn := FPassCheckDrugLists[i].iwarn;
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
      Result := limaxwarn;
    end;
  except
  end;
end;

//根据医嘱唯一码取医嘱审查结果值

function TMedicomPass.PassGetOrderWarnValue(const acOrdercode: string): integer;
var
  i: integer;
begin
  Result := 0;
  if not GetPassEnable then exit;
  for i := low(FPassCheckDrugLists) to high(FPassCheckDrugLists) do
  begin
    if trim(acOrdercode) = trim(FPassCheckDrugLists[i].cOrderUniqueCode) then
    begin
      Result := FPassCheckDrugLists[i].iwarn;
      exit;
    end;
  end;
end;

//弹出浮动窗口

procedure TMedicomPass.PassPopWindow(const acDrugCode, acDrugName: string; aileft: integer = 0; aitop: integer = 0; airight: integer = 0; aibottom: integer = 0);
var
  lcDrugCode, lcDrugName: string;
  lcurPoint: TPoint;
begin
  if not GetPassEnable then exit;

  lcDrugCode := acDrugCode;
  if lcDrugCode = '' then exit;
  lcDrugName := acDrugName;
  try
    PassSetQueryDrug(pchar(lcDrugCode + #0),
      pchar(lcDrugName + #0),
      pchar(''#0),
      pchar(''#0));
    if aileft + aitop + airight + aibottom = 0 then
    begin
      GetCursorPos(lcurPoint);
      PassSetFloatWinPos(lcurPoint.X, lcurPoint.Y, lcurPoint.X, lcurPoint.Y + 20)
    end
    else
    begin
      PassSetFloatWinPos(aileft, aitop, airight, aibottom)
    end;
    PassDocommand(401);
  except
  end;
end;

//弹出审查结果简要信息窗口

procedure TMedicomPass.PassPopCheckResultWindow(const acOrdercode: string);
var
  lcOrdercode: string;
begin
  if not GetPassEnable then exit;
  lcOrdercode := acOrdercode;
  if lcOrdercode = cOrdercode then
  begin
    exit;
  end
  else
  begin
    try
      cOrdercode := lcOrdercode;
      PassSetWarnDrug(pchar(lcOrdercode + #0));
      PassDoCommand(403);
    except
    end;
  end;
end;

end.
