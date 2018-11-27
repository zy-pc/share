unit PassInterfaceClass;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, IniFiles, StrUtils, DateUtils;

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

  //�����
type
  TPassMedList = record
    cMedCode: string;
    cMedName: string
  end;
  TPassMedLists = array of TPassMedList;

  //PASSϵͳ�ඨ��
type
  TMedicomPass = class(TObject)
  private
    FPassEnable: Boolean;
    FPassCheckDrugLists: TPassCheckDrugLists;
    //FPassPriorCheckDrugLists: TPassCheckDrugLists;
    FPassMedLists: TPassMedLists;
    cDeptCodeName: string; //Ĭ�Ͽ�����+���������ɹ��캯������
    cDoctorCodeName: string; //Ĭ��ҽ����+ҽ�������ɹ��캯������
    cOrdercode: string;
    procedure SetPassCheckDrugLists(value: TPassCheckDrugLists);
    procedure SetPassMedLists(value: TPassMedLists);
    function GetPassEnable: boolean; //�ڲ����ú���������PASS�Ƿ���á�
    function FrqcodeToFrqname(const acFrqcode: string): string; //�ڲ����ú�����������Ƶ����ת��Ϊ'm/n'��ʽ
    function FormatDateString(const cDateString: string): string; //�ڲ����ú���������������ʽת��Ϊ�������ڸ�ʽ

  public
   // gi_passenabled: integer; //�Ƿ����PASSϵͳ����ȫ�ֱ�����0��ʾ�����ã�1��ʾ����
    //PASSϵͳ�Ƿ�������ԣ�TRUE��ʾ���ã�FALSE��ʾ�����á�
    property PassEnable: boolean read FPassEnable write FPassEnable;
    //��鴦���嵥����
    property PassCheckDrugLists: TPassCheckDrugLists read FPassCheckDrugLists write SetPassCheckDrugLists; //���ҩƷ�嵥

    property PassMedLists: TPassMedLists read FPassMedLists write SetPassMedLists; //���

    //���캯����Ҫ�����¼�û����롢��������¼�û����ڿ��Ҵ��롢���ƺ�HISϵͳ���ݿ��� "�Ƿ����PASSϵͳ����"��¼ֵ
    constructor Create(const acUserCode, acUserName, acDeptCode, acDeptName: string;const abHisEnabled: boolean;const Fgi_passenabled:Integer);
    //��������
    destructor Destroy; override;

    //�����˻��������Ϣ����
    procedure PassSetPatInfo(const acPatientID, acVisitID, acPatientName, acSex, acBirthday: string; acWeight: string = ''; acHeight: string = ''; acDeptCode: string = ''; acDeptName: string = ''; acDoctorCode: string = ''; acDoctorName: string = '');
    //����ǰҩƷ��¼��Ϣ
    procedure PassSetSearchDrug(const acDrugCode, acDrugName, acDrugDosageUnit, acRouteName: string);
    //��ȡPASSϵͳ��Ŀ��Ч��״̬
    function PassGetMenuEnabled(const acMenuItem: string): Boolean;
    //�˵�ִ������
    procedure PassDoSearchCommand(const aiCommandNo: Integer);
    //Pass���(1������ҽ���Զ���飬33�����ﴦ���Զ���飬3���ֶ���顢5��7��������飨�����������)
    function PassDoCheck(const aiCommandNo: Integer): integer;
    //Pass���(1������ҽ���Զ���飬33�����ﴦ���Զ���飬3���ֶ���顢5��7��������飨�����������)
    function Pass4DoCheck(const aiCommandNo: Integer): integer;
    //����ҽ��Ψһ��ȡҽ�������ֵ
    function PassGetOrderWarnValue(const acOrdercode: string): integer;
    //������������
    procedure PassPopWindow(const acDrugCode, acDrugName: string; aileft: integer = 0; aitop: integer = 0; airight: integer = 0; aibottom: integer = 0);
    //�����������Ҫ��Ϣ����
    procedure PassPopCheckResultWindow(const acOrdercode: string);
    procedure PassSetRB(const acItem: string); // 'R'��ʾ������,'B':��ʾ������
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
      Pchar('������'#0),
      Pchar('ICD'#0),
      Pchar(cDate + #0),
      Pchar(cDate + #0));
  except
  end;
  if cItem = 'b' then
  try
    iRtn := PassSetMedCond(Pchar('01'#0),
      Pchar('MC02'#0),
      Pchar('������'#0),
      Pchar('ICD'#0),
      Pchar(cDate + #0),
      Pchar(cDate + #0));
  except
  end;
end;

{1���޷ָ�����ʽ��Ҫ�����8λ����ʽ"yyyymmdd"
 2���ַָ���ʽ��Ҫ��"yyyy-m(m)-d(d)"
 3����7λ���֣���Ϊ�����䣨��λ�꣩
 }

function TMedicomPass.FormatDateString(const cDateString: string): string;
var
  cSource: string;
  cArray: array[0..2] of string; //cArray[0]��ʾ�꣬cArray[1]��ʾ�£�cArray[2]��ʾ��
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
  //�����ʼ������
  for i := 0 to 2 do
    cArray[i] := '';

  //���ַ������ֽ�����������
  for i := 0 to ilen - 1 do
  begin
    cs := trim(MidStr(cSource, i + 1, 1));
    if (cs >= '0') and (cs <= '9') then
      cArray[j] := cArray[j] + cs
    else
      j := j + 1;
  end;

  //���º�������λ����
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

//������Ƶ�θ�ʽת��Ϊ'm/n'��ʽ��

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
                              lcSubstr := '��';
                              i := pos(lcSubstr, lcFrqcode);
                              if i > 0 then
                                lcFrqname := MidStr(lcFrqcode, Length(lcSubstr) + 1, length(lcFrqcode) - Length(lcSubstr)) + '/1'
                              else
                                lcFrqname := lcFrqcode;
                            end;
  Result := lcFrqname;
end;

//�ڲ�ʹ�ú�������ȡPASSϵͳ״̬

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

//���캯��

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
  //��Pass.ini������ֵ
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

//��������

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

//����ǰҩƷ��¼��Ϣ

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

//��ȡPASSϵͳ��Ŀ��Ч��״̬

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


//�˵�ִ������

procedure TMedicomPass.PassDoSearchCommand(const aiCommandNo: Integer);
begin
  if not GetPassEnable then exit;
  try
    PassDocommand(aiCommandNo);
  except
  end;
end;

//Pass���

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
  //����������˳�
  if (aiCommandNo <> 1) and (aiCommandNo <> 2) and (aiCommandNo <> 3) and (aiCommandNo <> 5) and (aiCommandNo <> 7) and (aiCommandNo <> 6) and (aiCommandNo <> 12) and (aiCommandNo <> 33) and (aiCommandNo <> 34) then exit;
  //�Զ���飬�ж��Ƿ����ظ����
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
    //�����
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

//Pass4���

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
  //����������˳�
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
    //�����
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

//����ҽ��Ψһ��ȡҽ�������ֵ

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

//������������

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

//�����������Ҫ��Ϣ����

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
