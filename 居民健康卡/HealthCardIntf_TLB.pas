unit HealthCardIntf_TLB;

// ************************************************************************ //
// WARNING                                                                    
// -------                                                                    
// The types declared in this file were generated from data read from a       
// Type Library. If this type library is explicitly or indirectly (via        
// another type library referring to this type library) re-imported, or the   
// 'Refresh' command of the Type Library Editor activated while editing the   
// Type Library, the contents of this file will be regenerated and all        
// manual modifications will be lost.                                         
// ************************************************************************ //

// $Rev: 8291 $
// File generated on 2017-06-13  15:52:16 from Type Library described below.

// ************************************************************************  //
// Type Lib: D:\huada20170407\HealthCardIntf.dll (1)
// LIBID: {2FA80700-A0C0-40E1-B327-D621A68E3FED}
// LCID: 0
// Helpfile: 
// HelpString: 
// DepndLst: 
//   (1) v2.0 stdole, (C:\Windows\SysWOW64\stdole2.tlb)
// Errors:
//   Error creating palette bitmap of (TCHealthCardIntf) : Server D:\huada20170407\HealthCardIntf.dll contains no icons
// ************************************************************************ //
// *************************************************************************//
// NOTE:                                                                      
// Items guarded by $IFDEF_LIVE_SERVER_AT_DESIGN_TIME are used by properties  
// which return objects that may need to be explicitly created via a function 
// call prior to any access via the property. These items have been disabled  
// in order to prevent accidental use from within the object inspector. You   
// may enable them by defining LIVE_SERVER_AT_DESIGN_TIME or by selectively   
// removing them from the $IFDEF blocks. However, such items must still be    
// programmatically created via a method of the appropriate CoClass before    
// they can be used.                                                          
{$TYPEDADDRESS OFF} // Unit must be compiled without type-checked pointers. 
{$WARN SYMBOL_PLATFORM OFF}
{$WRITEABLECONST ON}
{$VARPROPSETTER ON}
interface

uses Windows, ActiveX, Classes, Graphics, OleServer, StdVCL, Variants;
  

// *********************************************************************//
// GUIDS declared in the TypeLibrary. Following prefixes are used:        
//   Type Libraries     : LIBID_xxxx                                      
//   CoClasses          : CLASS_xxxx                                      
//   DISPInterfaces     : DIID_xxxx                                       
//   Non-DISP interfaces: IID_xxxx                                        
// *********************************************************************//
const
  // TypeLibrary Major and minor versions
  HealthCardIntfMajorVersion = 1;
  HealthCardIntfMinorVersion = 0;

  LIBID_HealthCardIntf: TGUID = '{2FA80700-A0C0-40E1-B327-D621A68E3FED}';

  IID_ICHealthCardIntf: TGUID = '{675F3933-CD21-4F15-B84B-477EEB3ECB12}';
  DIID_ICHealthCardIntfEvents: TGUID = '{82905794-314E-4D53-AFAD-C2C8BA7A3E2A}';
  CLASS_CHealthCardIntf: TGUID = '{EA3386EE-2321-4761-A4C5-720202D88D44}';
type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary                    
// *********************************************************************//
  ICHealthCardIntf = interface;
  ICHealthCardIntfDisp = dispinterface;
  ICHealthCardIntfEvents = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library                       
// (NOTE: Here we map each CoClass to its Default Interface)              
// *********************************************************************//
  CHealthCardIntf = ICHealthCardIntf;


// *********************************************************************//
// Declaration of structures, unions and aliases.                         
// *********************************************************************//
  TCardInfo = packed record
    CardTyp: WideString;
    StdVer: WideString;
    OrgName: WideString;
    OrgCode: WideString;
    PublishDT: WideString;
    CardNo: WideString;
    CardID: WideString;
    CityNo: WideString;
    CityName: WideString;
  end;

  TPsnBaseInfo = packed record
    PsnName: WideString;
    PsnGen: WideString;
    NationCode: WideString;
    BirthDay: WideString;
    PsnID: WideString;
  end;

  TPayTypeInfo = packed record
    ValidDate: WideString;
    PhoneNo1: WideString;
    PhoneNo2: WideString;
    PayType1: WideString;
    PayType2: WideString;
    PayType3: WideString;
  end;

  TAddressInfo = packed record
    AddrType1: WideString;
    Address1: WideString;
    AddrType2: WideString;
    Address2: WideString;
  end;

  TRelPsnInfo = packed record
    PsnName1: WideString;
    PsnRel1: WideString;
    PsnPhone1: WideString;
    PsnName2: WideString;
    PsnRel2: WideString;
    PsnPhone2: WideString;
    PsnName3: WideString;
    PsnRel3: WideString;
    PsnPhone3: WideString;
  end;

  TMarryInfo = packed record
    Degree: WideString;
    Marry: WideString;
    Job: WideString;
  end;

  TPapersInfo = packed record
    PaperType: WideString;
    PaperNo: WideString;
    EHRNo: WideString;
    NewRuralNo: WideString;
  end;

  TMedicalFlags = packed record
    MedicalFlags: WideString;
    OtherMedWarning: WideString;
    ABO: WideString;
    RH: WideString;
    XCBZ: WideString;
    XZBBZ: WideString;
    XNXGBBZ: WideString;
    NXWLBZ: WideString;
    TNBBZ: WideString;
    QGYBZ: WideString;
    TXBZ: WideString;
    QGYZBZ: WideString;
    QGQSBZ: WideString;
    DXBBZ: WideString;
    KZXYZBZ: WideString;
    XZQBQBZ: WideString;
  end;

  TMental = packed record
    MentalFlag: WideString;
  end;

  TSAMInfo = packed record
    SAMNo: WideString;
    SAMVer: WideString;
    SAMType: Integer;
    SAMCmdVer: WideString;
    TerminalNo: WideString;
    CardATR: WideString;
  end;

  TAllergyInfo = packed record
    AllergyName1: WideString;
    AllergyName2: WideString;
    AllergyName3: WideString;
    Allergy1: WideString;
    Allergy2: WideString;
    Allergy3: WideString;
  end;

  TImmuneInfo = packed record
    ImmuneName1: WideString;
    ImmuneName2: WideString;
    ImmuneName3: WideString;
    ImmuneName4: WideString;
    ImmuneName5: WideString;
    ImmuneName6: WideString;
    ImmuneName7: WideString;
    ImmuneName8: WideString;
    ImmuneName9: WideString;
    ImmuneName10: WideString;
    ImmuneDate1: WideString;
    ImmuneDate2: WideString;
    ImmuneDate3: WideString;
    ImmuneDate4: WideString;
    ImmuneDate5: WideString;
    ImmuneDate6: WideString;
    ImmuneDate7: WideString;
    ImmuneDate8: WideString;
    ImmuneDate9: WideString;
    ImmuneDate10: WideString;
  end;

  TPhotoInfo = packed record
    PhotoStr: WideString;
    PhotoAdd: WideString;
  end;

  TCardReaderInfo = packed record
    ReaderName: WideString;
  end;

  TInbedInfo = packed record
    HospName: WideString;
    HospOrgCode: WideString;
    InbedDT: WideString;
    InbedCnt: WideString;
    PatienNO: WideString;
    InbedOffice: WideString;
    InbedIllness: WideString;
    HospInfectName: WideString;
    DiseaseReason: WideString;
    BloAssCode1: WideString;
    BloAssResCode1: WideString;
    DiseaseName1: WideString;
    DiseaseCode1: WideString;
    ConfirmDT1: WideString;
    DiagnInfo1: WideString;
    DiagnCode1: WideString;
    DiagnTypeInfo1: WideString;
    DiagnTypeCode1: WideString;
    TreatResultsCode1: WideString;
    SurgeryName1: WideString;
    SurgeryCode1: WideString;
    SurgeryDT1: WideString;
    AnesthMethod1: WideString;
    AnesthCode1: WideString;
    HealingLevel1: WideString;
    BloodAssayName2: WideString;
    BloodAssayResult2: WideString;
    DiseaseName2: WideString;
    DiseaseCode2: WideString;
    ConfirmDT2: WideString;
    DiagnInfo2: WideString;
    DiagnCode2: WideString;
    DiagnTypeInfo2: WideString;
    DiagnTypeCode2: WideString;
    TreatResultsCode2: WideString;
    SurgeryName2: WideString;
    SurgeryCode2: WideString;
    SurgeryDT2: WideString;
    AnesthMethod2: WideString;
    AnesthCode2: WideString;
    HealingLevel2: WideString;
    BloodAssayName3: WideString;
    BloodAssayResult3: WideString;
    DiseaseName3: WideString;
    DiseaseCode3: WideString;
    ConfirmDT3: WideString;
    DiagnInfo3: WideString;
    DiagnCode3: WideString;
    DiagnTypeInfo3: WideString;
    DiagnTypeCode3: WideString;
    TreatResultsCode3: WideString;
    SurgeryName3: WideString;
    SurgeryCode3: WideString;
    SurgeryDT3: WideString;
    AnesthMethod3: WideString;
    AnesthCode3: WideString;
    HealingLevel3: WideString;
    TransfCode1: WideString;
    TransfNumber1: Single;
    TransfUnit1: WideString;
    TransfCode2: WideString;
    TransfNumber2: Single;
    TransfUnit2: WideString;
    TransfCode3: WideString;
    TransfNumber3: Single;
    TransfUnit3: WideString;
    TransfCode4: WideString;
    TransfNumber4: Single;
    TransfUnit4: WideString;
    RescueCnt: Single;
    RescueValidCnt: Single;
    OutbedDT: WideString;
    OutbedOffice: WideString;
    InbedDay: Single;
    AutopsyLogo: WideString;
    TempoDiagnosis: WideString;
    PaymentWayCode: WideString;
    InbedType1: WideString;
    InbedTypeCode1: WideString;
    InbedAmt1: Single;
    InbedType2: WideString;
    InbedTypeCode2: WideString;
    InbedAmt2: Single;
    InbedType3: WideString;
    InbedTypeCode3: WideString;
    InbedAmt3: Single;
    InbedType4: WideString;
    InbedTypeCode4: WideString;
    InbedAmt4: Single;
    InbedType5: WideString;
    InbedTypeCode5: WideString;
    InbedAmt5: Single;
    InbedType6: WideString;
    InbedTypeCode6: WideString;
    InbedAmt6: Single;
    InbedType7: WideString;
    InbedTypeCode7: WideString;
    InbedAmt7: Single;
    InbedType8: WideString;
    InbedTypeCode8: WideString;
    InbedAmt8: Single;
    InbedType9: WideString;
    InbedTypeCode9: WideString;
    InbedAmt9: Single;
    InbedType10: WideString;
    InbedTypeCode10: WideString;
    InbedAmt10: Single;
    InbedType11: WideString;
    InbedTypeCode11: WideString;
    InbedAmt11: Single;
    InbedType12: WideString;
    InbedTypeCode12: WideString;
    InbedAmt12: Single;
    InbedType13: WideString;
    InbedTypeCode13: WideString;
    InbedAmt13: Single;
    InbedType14: WideString;
    InbedTypeCode14: WideString;
    InbedAmt14: Single;
    InbedType15: WideString;
    InbedTypeCode15: WideString;
    InbedAmt15: Single;
    InbedType16: WideString;
    InbedTypeCode16: WideString;
    InbedAmt16: Single;
    InbedType17: WideString;
    InbedTypeCode17: WideString;
    InbedAmt17: Single;
    InbedType18: WideString;
    InbedTypeCode18: WideString;
    InbedAmt18: Single;
    InbedType19: WideString;
    InbedTypeCode19: WideString;
    InbedAmt19: Single;
    InbedType20: WideString;
    InbedTypeCode20: WideString;
    InbedAmt20: Single;
    InbedSumAmt: Single;
    InbedBedAmt: Single;
    InbedNursAmt: Single;
    InbedWesAmt: Single;
    InbedChinAmt: Single;
    InbedLaboAmt: Single;
    InbedPracAmt: Single;
    InbedOperAmt: Single;
    InbedInspeAmt: Single;
    InbedOtherAmt: Single;
    InbedInfoStr: WideString;
  end;

  TExamInfo = packed record
    HospName: WideString;
    HospOrgCode: WideString;
    ConfirmDT: WideString;
    ExamNO: WideString;
    ExamOffice: WideString;
    PayType: WideString;
    SymptomName1: WideString;
    SymptomCode1: WideString;
    ConfirmDT1: WideString;
    DiseaseName1: WideString;
    DiseaseCode1: WideString;
    MorbiDT1: WideString;
    SymptomDT1: WideString;
    SymptomName2: WideString;
    SymptomCode2: WideString;
    ConfirmDT2: WideString;
    DiseaseName2: WideString;
    DiseaseCode2: WideString;
    MorbiDT2: WideString;
    SymptomDT2: WideString;
    SymptomName3: WideString;
    SymptomCode3: WideString;
    ConfirmDT3: WideString;
    DiseaseName3: WideString;
    DiseaseCode3: WideString;
    MorbiDT3: WideString;
    SymptomDT3: WideString;
    SymptomName4: WideString;
    SymptomCode4: WideString;
    ConfirmDT4: WideString;
    DiseaseName4: WideString;
    DiseaseCode4: WideString;
    MorbiDT4: WideString;
    SymptomDT4: WideString;
    SymptomName5: WideString;
    SymptomCode5: WideString;
    ConfirmDT5: WideString;
    DiseaseName5: WideString;
    DiseaseCode5: WideString;
    MorbiDT5: WideString;
    SymptomDT5: WideString;
    CheckoutName1: WideString;
    CheckoutResultCode1: WideString;
    CheckoutResultName1: WideString;
    CheckoutUnit1: WideString;
    CheckoutCode1: WideString;
    CheckoutName2: WideString;
    CheckoutResultCode2: WideString;
    CheckoutResultName2: WideString;
    CheckoutUnit2: WideString;
    CheckoutCode2: WideString;
    CheckoutName3: WideString;
    CheckoutResultCode3: WideString;
    CheckoutResultName3: WideString;
    CheckoutUnit3: WideString;
    CheckoutCode3: WideString;
    CheckoutName4: WideString;
    CheckoutResultCode4: WideString;
    CheckoutResultName4: WideString;
    CheckoutUnit4: WideString;
    CheckoutCode4: WideString;
    CheckoutName5: WideString;
    CheckoutResultCode5: WideString;
    CheckoutResultName5: WideString;
    CheckoutUnit5: WideString;
    CheckoutCode5: WideString;
    CheckoutName6: WideString;
    CheckoutResultCode6: WideString;
    CheckoutResultName6: WideString;
    CheckoutUnit6: WideString;
    CheckoutCode6: WideString;
    CheckoutName7: WideString;
    CheckoutResultCode7: WideString;
    CheckoutResultName7: WideString;
    CheckoutUnit7: WideString;
    CheckoutCode7: WideString;
    CheckoutName8: WideString;
    CheckoutResultCode8: WideString;
    CheckoutResultName8: WideString;
    CheckoutUnit8: WideString;
    CheckoutCode8: WideString;
    CheckoutName9: WideString;
    CheckoutResultCode9: WideString;
    CheckoutResultName9: WideString;
    CheckoutUnit9: WideString;
    CheckoutCode9: WideString;
    CheckoutName10: WideString;
    CheckoutResultCode10: WideString;
    CheckoutResultName10: WideString;
    CheckoutUnit10: WideString;
    CheckoutCode10: WideString;
    DrugName1: WideString;
    DrugCode1: WideString;
    DrugDay1: Single;
    DrugFreq1: WideString;
    DrugUnit1: WideString;
    DrugDosa1: Single;
    DrugSumDosa1: Single;
    DrugUseCode1: WideString;
    DrugName2: WideString;
    DrugCode2: WideString;
    DrugDay2: Single;
    DrugFreq2: WideString;
    DrugUnit2: WideString;
    DrugDosa2: Single;
    DrugSumDosa2: Single;
    DrugUseCode2: WideString;
    DrugName3: WideString;
    DrugCode3: WideString;
    DrugDay3: Single;
    DrugFreq3: WideString;
    DrugUnit3: WideString;
    DrugDosa3: Single;
    DrugSumDosa3: Single;
    DrugUseCode3: WideString;
    DrugName4: WideString;
    DrugCode4: WideString;
    DrugDay4: Single;
    DrugFreq4: WideString;
    DrugUnit4: WideString;
    DrugDosa4: Single;
    DrugSumDosa4: Single;
    DrugUseCode4: WideString;
    DrugName5: WideString;
    DrugCode5: WideString;
    DrugDay5: Single;
    DrugFreq5: WideString;
    DrugUnit5: WideString;
    DrugDosa5: Single;
    DrugSumDosa5: Single;
    DrugUseCode5: WideString;
    SurgeryName1: WideString;
    SurgeryCode1: WideString;
    SurgeryDT1: WideString;
    SurgeryName2: WideString;
    SurgeryCode2: WideString;
    SurgeryDT2: WideString;
    SurgeryName3: WideString;
    SurgeryCode3: WideString;
    SurgeryDT3: WideString;
    ExamClasName1: WideString;
    ExamClasCode1: WideString;
    ExamClasAmt1: Single;
    ExamClasName2: WideString;
    ExamClasCode2: WideString;
    ExamClasAmt2: Single;
    ExamClasName3: WideString;
    ExamClasCode3: WideString;
    ExamClasAmt3: Single;
    ExamClasName4: WideString;
    ExamClasCode4: WideString;
    ExamClasAmt4: Single;
    ExamClasName5: WideString;
    ExamClasCode5: WideString;
    ExamClasAmt5: Single;
    ExamClasName6: WideString;
    ExamClasCode6: WideString;
    ExamClasAmt6: Single;
    ExamClasName7: WideString;
    ExamClasCode7: WideString;
    ExamClasAmt7: Single;
    ExamClasName8: WideString;
    ExamClasCode8: WideString;
    ExamClasAmt8: Single;
    ExamClasName9: WideString;
    ExamClasCode9: WideString;
    ExamClasAmt9: Single;
    ExamClasName10: WideString;
    ExamClasCode10: WideString;
    ExamClasAmt10: Single;
    ExamInfoStr: WideString;
  end;

  TInbedState = packed record
    InbedState1: WideString;
    InbedState2: WideString;
    InbedState3: WideString;
  end;

  TExamState = packed record
    ExamState1: WideString;
    ExamState2: WideString;
    ExamState3: WideString;
    ExamState4: WideString;
    ExamState5: WideString;
  end;

  TLogInfo = packed record
    ServerIP: WideString;
    ServerPort: WideString;
    UserCode: WideString;
    UserPass: WideString;
    MarkNo: WideString;
  end;

  TIDCARDInfo = packed record
    PsnName: WideString;
    PsnSex: WideString;
    Nation: WideString;
    BirthDay: WideString;
    Address: WideString;
    CardNo: WideString;
    IssuedAt: WideString;
    ValidBegin: WideString;
    ValidEnd: WideString;
    PhotoFile: WideString;
    photoData: WideString;
  end;

  THNSBCardInfo = packed record
    PsnName: WideString;
    PsnSex: WideString;
    BirthDay: WideString;
    Nation: WideString;
    Marry: WideString;
    Address: WideString;
    Tel: WideString;
    CertType: WideString;
    CertNum: WideString;
    Mi_CertType: WideString;
    Mi_CertNum: WideString;
    Archivesno: WideString;
    DoctorcardID: WideString;
  end;

  TExamInfo1 = packed record
    ExamInfo1: WideString;
    ExamInfo2: WideString;
    ExamInfo3: WideString;
    ExamInfo4: WideString;
    ExamInfo5: WideString;
  end;

  TInbedInfo1 = packed record
    InbedInfo1: WideString;
    InbedInfo2: WideString;
    InbedInfo3: WideString;
  end;

  TGetXNH = packed record
    PsnID: WideString;
    NewRuralNo: WideString;
    XNHBZ: WideString;
  end;

  TWriteXNH = packed record
    PsnName: WideString;
    NewRuralNo: WideString;
    PsnID: WideString;
    ExamDT: WideString;
    HospName: WideString;
    HospCode: WideString;
    ConfirmOffice: WideString;
    ConfirmLevle: WideString;
    ExamNO: WideString;
    DelexamNo: WideString;
    DiseaseName: WideString;
    ExaminationFee: WideString;
    RegistrationFee: WideString;
    TotalFee: WideString;
    DiscountFee: WideString;
    Actualcollection: WideString;
    DelexamnoMask: WideString;
  end;

  Tpinkun = packed record
    xingming: WideString;
    shenfenzh: WideString;
    jigouid: WideString;
    shuakafs: WideString;
    pkbz: WideString;
  end;

  TJiuzhenxx = packed record
    jiaoyixh: WideString;
    xingming: WideString;
    shenfenzh: WideString;
    menzhenzypb: WideString;
    jiuzhenrq: WideString;
    zhuyuanhao: WideString;
    chuyuanrq: WideString;
    jiuzhenjg: WideString;
    zhuyaozd: WideString;
    ciyaozd: WideString;
    zongjine: WideString;
    zifeije: WideString;
    baoxiaoje: WideString;
    ylfy01: WideString;
    ylfy02: WideString;
    ylfy03: WideString;
    ylfy04: WideString;
    ylfy05: WideString;
    ylfy06: WideString;
    ylfy07: WideString;
    ylfy08: WideString;
    ylfy09: WideString;
    jmfy1: WideString;
    jmfy2: WideString;
    jmfy3: WideString;
    jmfy4: WideString;
    jmfy5: WideString;
    jmfy6: WideString;
    jmfy7: WideString;
    jmfy8: WideString;
    jmfy9: WideString;
    jmfy10: WideString;
    bzfy2: WideString;
    bzfy3: WideString;
    bzfy4: WideString;
    bzfy5: WideString;
  end;

  TRevokeJiuzhenxx = packed record
    jiuzhenjg: WideString;
    jiaoyiid: WideString;
  end;


// *********************************************************************//
// Interface: ICHealthCardIntf
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {675F3933-CD21-4F15-B84B-477EEB3ECB12}
// *********************************************************************//
  ICHealthCardIntf = interface(IDispatch)
    ['{675F3933-CD21-4F15-B84B-477EEB3ECB12}']
    function InitIntf(AReaderType: SYSINT): SYSINT; stdcall;
    procedure UnInitIntf; safecall;
    function Get_LastErrorMessage: WideString; safecall;
    function ReadCardInfo: SYSINT; stdcall;
    function ReadPsnBaseInfo: SYSINT; stdcall;
    function Get_CardInfo: TCardInfo; safecall;
    function Get_PsnBaseInfo: TPsnBaseInfo; safecall;
    function ReadPsnPhoto(const AFileName: WideString): SYSINT; stdcall;
    function ReadPayTypeInfo: SYSINT; stdcall;
    function Get_PayTypeInfo: TPayTypeInfo; safecall;
    procedure Set_PayTypeInfo(Value: TPayTypeInfo); safecall;
    function ReadAddressInfo: SYSINT; stdcall;
    function Get_AddressInfo: TAddressInfo; safecall;
    procedure Set_AddressInfo(Value: TAddressInfo); safecall;
    function ReadRelPsnInfo: SYSINT; stdcall;
    function Get_RelPsnInfo: TRelPsnInfo; safecall;
    procedure Set_RelPsnInfo(Value: TRelPsnInfo); safecall;
    function ReadMarryInfo: SYSINT; stdcall;
    function Get_MarryInfo: TMarryInfo; safecall;
    procedure Set_MarryInfo(Value: TMarryInfo); safecall;
    function ReadPapersInfo: SYSINT; stdcall;
    function ReadMedicalFlags: SYSINT; stdcall;
    function Get_MedicalFlags: TMedicalFlags; safecall;
    procedure Set_MedicalFlags(Value: TMedicalFlags); safecall;
    function ReadMentalFlag: SYSINT; stdcall;
    function Get_MentalFlag: TMental; safecall;
    procedure Set_MentalFlag(Value: TMental); safecall;
    function Get_PapersInfo: TPapersInfo; safecall;
    procedure Set_PapersInfo(Value: TPapersInfo); safecall;
    function Get_SAMInfo: TSAMInfo; safecall;
    function WritePsnPhoto(const AFileName: WideString): SYSINT; stdcall;
    function WritePayTypeInfo: SYSINT; stdcall;
    function WriteAddressInfo: SYSINT; stdcall;
    function WriteRelPsnInfo: SYSINT; stdcall;
    function WriteMarryInfo: SYSINT; stdcall;
    function WritePapersInfo: SYSINT; stdcall;
    function WriteMedicalFlags: SYSINT; stdcall;
    function WriteMentalFlag: SYSINT; stdcall;
    function OrgUserLogin(const AOrgNo: WideString; const AOrgName: WideString; 
                          const AUserNo: WideString; const AUserName: WideString; 
                          const AUserPwd: WideString): SYSINT; stdcall;
    function WriteRegister: SYSINT; stdcall;
    function Get_AllergyInfo: TAllergyInfo; safecall;
    procedure Set_AllergyInfo(Value: TAllergyInfo); safecall;
    function Get_ImmuneInfo: TImmuneInfo; safecall;
    procedure Set_ImmuneInfo(Value: TImmuneInfo); safecall;
    function ReadAllergyInfo: SYSINT; stdcall;
    function WriteAllergyInfo: SYSINT; stdcall;
    function ReadImmuneInfo: SYSINT; stdcall;
    function WriteImmuneInfo: SYSINT; stdcall;
    function ReadCardReaderInfo(AParamCode: SYSINT): SYSINT; stdcall;
    function ReadPsnPhotoInfo: SYSINT; stdcall;
    function Get_CardReaderInfo: TCardReaderInfo; safecall;
    function Get_PsnPhotoInfo: TPhotoInfo; safecall;
    function Get_InbedState: TInbedState; safecall;
    function Get_ExamState: TExamState; safecall;
    procedure Set_LogInfo(Param1: TLogInfo); safecall;
    function ReadExamFlags: SYSINT; stdcall;
    function ReadInbedFlags: SYSINT; stdcall;
    function ReadExamInfo: SYSINT; stdcall;
    function WriteExamInfo: SYSINT; stdcall;
    function ReadInbedInfo: SYSINT; stdcall;
    function WriteInbedInfo: SYSINT; stdcall;
    function BeforeInitInfo(AArchiType: SYSINT): SYSINT; stdcall;
    function Get_PropertyStr: WideString; safecall;
    procedure Set_PropertyStr(const Value: WideString); safecall;
    function InitIntfTS(const InitStr: WideString): SYSINT; stdcall;
    function ReadHealthInfo(InfoNo: SYSINT): SYSINT; stdcall;
    function ReadIDCardInfo: SYSINT; stdcall;
    function ReadMagStInfo(Info: SYSINT): SYSINT; stdcall;
    function DisplayInfo(const InfoStr: WideString): SYSINT; stdcall;
    function PosBeep: SYSINT; stdcall;
    function DispSound(InfoNo: SYSINT): SYSINT; stdcall;
    function ReadHNSBInfo: SYSINT; stdcall;
    function WriteHealthInfo(const InitStr: WideString): SYSINT; stdcall;
    function WriteOperateRecord(const InitStr: WideString): SYSINT; stdcall;
    function Get_InbedInfo: TInbedInfo1; safecall;
    procedure Set_InbedInfo(Value: TInbedInfo1); safecall;
    function Get_ExamInfo: TExamInfo1; safecall;
    procedure Set_ExamInfo(Value: TExamInfo1); safecall;
    function GetXNH(const AJson: WideString): SYSINT; stdcall;
    function WriteXNH(const AJson: WideString): SYSINT; stdcall;
    property LastErrorMessage: WideString read Get_LastErrorMessage;
    property CardInfo: TCardInfo read Get_CardInfo;
    property PsnBaseInfo: TPsnBaseInfo read Get_PsnBaseInfo;
    property PayTypeInfo: TPayTypeInfo read Get_PayTypeInfo write Set_PayTypeInfo;
    property AddressInfo: TAddressInfo read Get_AddressInfo write Set_AddressInfo;
    property RelPsnInfo: TRelPsnInfo read Get_RelPsnInfo write Set_RelPsnInfo;
    property MarryInfo: TMarryInfo read Get_MarryInfo write Set_MarryInfo;
    property MedicalFlags: TMedicalFlags read Get_MedicalFlags write Set_MedicalFlags;
    property MentalFlag: TMental read Get_MentalFlag write Set_MentalFlag;
    property PapersInfo: TPapersInfo read Get_PapersInfo write Set_PapersInfo;
    property SAMInfo: TSAMInfo read Get_SAMInfo;
    property AllergyInfo: TAllergyInfo read Get_AllergyInfo write Set_AllergyInfo;
    property ImmuneInfo: TImmuneInfo read Get_ImmuneInfo write Set_ImmuneInfo;
    property CardReaderInfo: TCardReaderInfo read Get_CardReaderInfo;
    property PsnPhotoInfo: TPhotoInfo read Get_PsnPhotoInfo;
    property InbedState: TInbedState read Get_InbedState;
    property ExamState: TExamState read Get_ExamState;
    property LogInfo: TLogInfo write Set_LogInfo;
    property PropertyStr: WideString read Get_PropertyStr write Set_PropertyStr;
    property InbedInfo: TInbedInfo1 read Get_InbedInfo write Set_InbedInfo;
    property ExamInfo: TExamInfo1 read Get_ExamInfo write Set_ExamInfo;
  end;

// *********************************************************************//
// DispIntf:  ICHealthCardIntfDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {675F3933-CD21-4F15-B84B-477EEB3ECB12}
// *********************************************************************//
  ICHealthCardIntfDisp = dispinterface
    ['{675F3933-CD21-4F15-B84B-477EEB3ECB12}']
    function InitIntf(AReaderType: SYSINT): SYSINT; dispid 201;
    procedure UnInitIntf; dispid 202;
    property LastErrorMessage: WideString readonly dispid 207;
    function ReadCardInfo: SYSINT; dispid 203;
    function ReadPsnBaseInfo: SYSINT; dispid 204;
    property CardInfo: {??TCardInfo}OleVariant readonly dispid 205;
    property PsnBaseInfo: {??TPsnBaseInfo}OleVariant readonly dispid 206;
    function ReadPsnPhoto(const AFileName: WideString): SYSINT; dispid 208;
    function ReadPayTypeInfo: SYSINT; dispid 209;
    property PayTypeInfo: {??TPayTypeInfo}OleVariant dispid 210;
    function ReadAddressInfo: SYSINT; dispid 211;
    property AddressInfo: {??TAddressInfo}OleVariant dispid 212;
    function ReadRelPsnInfo: SYSINT; dispid 213;
    property RelPsnInfo: {??TRelPsnInfo}OleVariant dispid 214;
    function ReadMarryInfo: SYSINT; dispid 215;
    property MarryInfo: {??TMarryInfo}OleVariant dispid 216;
    function ReadPapersInfo: SYSINT; dispid 217;
    function ReadMedicalFlags: SYSINT; dispid 218;
    property MedicalFlags: {??TMedicalFlags}OleVariant dispid 219;
    function ReadMentalFlag: SYSINT; dispid 220;
    property MentalFlag: {??TMental}OleVariant dispid 221;
    property PapersInfo: {??TPapersInfo}OleVariant dispid 222;
    property SAMInfo: {??TSAMInfo}OleVariant readonly dispid 223;
    function WritePsnPhoto(const AFileName: WideString): SYSINT; dispid 224;
    function WritePayTypeInfo: SYSINT; dispid 225;
    function WriteAddressInfo: SYSINT; dispid 226;
    function WriteRelPsnInfo: SYSINT; dispid 227;
    function WriteMarryInfo: SYSINT; dispid 228;
    function WritePapersInfo: SYSINT; dispid 229;
    function WriteMedicalFlags: SYSINT; dispid 230;
    function WriteMentalFlag: SYSINT; dispid 231;
    function OrgUserLogin(const AOrgNo: WideString; const AOrgName: WideString; 
                          const AUserNo: WideString; const AUserName: WideString; 
                          const AUserPwd: WideString): SYSINT; dispid 232;
    function WriteRegister: SYSINT; dispid 233;
    property AllergyInfo: {??TAllergyInfo}OleVariant dispid 235;
    property ImmuneInfo: {??TImmuneInfo}OleVariant dispid 234;
    function ReadAllergyInfo: SYSINT; dispid 236;
    function WriteAllergyInfo: SYSINT; dispid 237;
    function ReadImmuneInfo: SYSINT; dispid 238;
    function WriteImmuneInfo: SYSINT; dispid 239;
    function ReadCardReaderInfo(AParamCode: SYSINT): SYSINT; dispid 240;
    function ReadPsnPhotoInfo: SYSINT; dispid 241;
    property CardReaderInfo: {??TCardReaderInfo}OleVariant readonly dispid 242;
    property PsnPhotoInfo: {??TPhotoInfo}OleVariant readonly dispid 243;
    property InbedState: {??TInbedState}OleVariant readonly dispid 246;
    property ExamState: {??TExamState}OleVariant readonly dispid 247;
    property LogInfo: {??TLogInfo}OleVariant writeonly dispid 248;
    function ReadExamFlags: SYSINT; dispid 249;
    function ReadInbedFlags: SYSINT; dispid 250;
    function ReadExamInfo: SYSINT; dispid 251;
    function WriteExamInfo: SYSINT; dispid 252;
    function ReadInbedInfo: SYSINT; dispid 253;
    function WriteInbedInfo: SYSINT; dispid 254;
    function BeforeInitInfo(AArchiType: SYSINT): SYSINT; dispid 256;
    property PropertyStr: WideString dispid 257;
    function InitIntfTS(const InitStr: WideString): SYSINT; dispid 255;
    function ReadHealthInfo(InfoNo: SYSINT): SYSINT; dispid 258;
    function ReadIDCardInfo: SYSINT; dispid 259;
    function ReadMagStInfo(Info: SYSINT): SYSINT; dispid 260;
    function DisplayInfo(const InfoStr: WideString): SYSINT; dispid 261;
    function PosBeep: SYSINT; dispid 262;
    function DispSound(InfoNo: SYSINT): SYSINT; dispid 263;
    function ReadHNSBInfo: SYSINT; dispid 264;
    function WriteHealthInfo(const InitStr: WideString): SYSINT; dispid 265;
    function WriteOperateRecord(const InitStr: WideString): SYSINT; dispid 266;
    property InbedInfo: {??TInbedInfo1}OleVariant dispid 244;
    property ExamInfo: {??TExamInfo1}OleVariant dispid 245;
    function GetXNH(const AJson: WideString): SYSINT; dispid 280;
    function WriteXNH(const AJson: WideString): SYSINT; dispid 281;
  end;

// *********************************************************************//
// DispIntf:  ICHealthCardIntfEvents
// Flags:     (4096) Dispatchable
// GUID:      {82905794-314E-4D53-AFAD-C2C8BA7A3E2A}
// *********************************************************************//
  ICHealthCardIntfEvents = dispinterface
    ['{82905794-314E-4D53-AFAD-C2C8BA7A3E2A}']
  end;

// *********************************************************************//
// The Class CoCHealthCardIntf provides a Create and CreateRemote method to          
// create instances of the default interface ICHealthCardIntf exposed by              
// the CoClass CHealthCardIntf. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCHealthCardIntf = class
    class function Create: ICHealthCardIntf;
    class function CreateRemote(const MachineName: string): ICHealthCardIntf;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TCHealthCardIntf
// Help String      : CHealthCardIntf Object
// Default Interface: ICHealthCardIntf
// Def. Intf. DISP? : No
// Event   Interface: ICHealthCardIntfEvents
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TCHealthCardIntfProperties= class;
{$ENDIF}
  TCHealthCardIntf = class(TOleServer)
  private
    FIntf: ICHealthCardIntf;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TCHealthCardIntfProperties;
    function GetServerProperties: TCHealthCardIntfProperties;
{$ENDIF}
    function GetDefaultInterface: ICHealthCardIntf;
  protected
    procedure InitServerData; override;
    procedure InvokeEvent(DispID: TDispID; var Params: TVariantArray); override;
    function Get_LastErrorMessage: WideString;
    function Get_CardInfo: TCardInfo;
    function Get_PsnBaseInfo: TPsnBaseInfo;
    function Get_PayTypeInfo: TPayTypeInfo;
    procedure Set_PayTypeInfo(Value: TPayTypeInfo);
    function Get_AddressInfo: TAddressInfo;
    procedure Set_AddressInfo(Value: TAddressInfo);
    function Get_RelPsnInfo: TRelPsnInfo;
    procedure Set_RelPsnInfo(Value: TRelPsnInfo);
    function Get_MarryInfo: TMarryInfo;
    procedure Set_MarryInfo(Value: TMarryInfo);
    function Get_MedicalFlags: TMedicalFlags;
    procedure Set_MedicalFlags(Value: TMedicalFlags);
    function Get_MentalFlag: TMental;
    procedure Set_MentalFlag(Value: TMental);
    function Get_PapersInfo: TPapersInfo;
    procedure Set_PapersInfo(Value: TPapersInfo);
    function Get_SAMInfo: TSAMInfo;
    function Get_AllergyInfo: TAllergyInfo;
    procedure Set_AllergyInfo(Value: TAllergyInfo);
    function Get_ImmuneInfo: TImmuneInfo;
    procedure Set_ImmuneInfo(Value: TImmuneInfo);
    function Get_CardReaderInfo: TCardReaderInfo;
    function Get_PsnPhotoInfo: TPhotoInfo;
    function Get_InbedState: TInbedState;
    function Get_ExamState: TExamState;
    procedure Set_LogInfo(Param1: TLogInfo);
    function Get_PropertyStr: WideString;
    procedure Set_PropertyStr(const Value: WideString);
    function Get_InbedInfo: TInbedInfo1;
    procedure Set_InbedInfo(Value: TInbedInfo1);
    function Get_ExamInfo: TExamInfo1;
    procedure Set_ExamInfo(Value: TExamInfo1);
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: ICHealthCardIntf);
    procedure Disconnect; override;
    function InitIntf(AReaderType: SYSINT): SYSINT;
    procedure UnInitIntf;
    function ReadCardInfo: SYSINT;
    function ReadPsnBaseInfo: SYSINT;
    function ReadPsnPhoto(const AFileName: WideString): SYSINT;
    function ReadPayTypeInfo: SYSINT;
    function ReadAddressInfo: SYSINT;
    function ReadRelPsnInfo: SYSINT;
    function ReadMarryInfo: SYSINT;
    function ReadPapersInfo: SYSINT;
    function ReadMedicalFlags: SYSINT;
    function ReadMentalFlag: SYSINT;
    function WritePsnPhoto(const AFileName: WideString): SYSINT;
    function WritePayTypeInfo: SYSINT;
    function WriteAddressInfo: SYSINT;
    function WriteRelPsnInfo: SYSINT;
    function WriteMarryInfo: SYSINT;
    function WritePapersInfo: SYSINT;
    function WriteMedicalFlags: SYSINT;
    function WriteMentalFlag: SYSINT;
    function OrgUserLogin(const AOrgNo: WideString; const AOrgName: WideString; 
                          const AUserNo: WideString; const AUserName: WideString; 
                          const AUserPwd: WideString): SYSINT;
    function WriteRegister: SYSINT;
    function ReadAllergyInfo: SYSINT;
    function WriteAllergyInfo: SYSINT;
    function ReadImmuneInfo: SYSINT;
    function WriteImmuneInfo: SYSINT;
    function ReadCardReaderInfo(AParamCode: SYSINT): SYSINT;
    function ReadPsnPhotoInfo: SYSINT;
    function ReadExamFlags: SYSINT;
    function ReadInbedFlags: SYSINT;
    function ReadExamInfo: SYSINT;
    function WriteExamInfo: SYSINT;
    function ReadInbedInfo: SYSINT;
    function WriteInbedInfo: SYSINT;
    function BeforeInitInfo(AArchiType: SYSINT): SYSINT;
    function InitIntfTS(const InitStr: WideString): SYSINT;
    function ReadHealthInfo(InfoNo: SYSINT): SYSINT;
    function ReadIDCardInfo: SYSINT;
    function ReadMagStInfo(Info: SYSINT): SYSINT;
    function DisplayInfo(const InfoStr: WideString): SYSINT;
    function PosBeep: SYSINT;
    function DispSound(InfoNo: SYSINT): SYSINT;
    function ReadHNSBInfo: SYSINT;
    function WriteHealthInfo(const InitStr: WideString): SYSINT;
    function WriteOperateRecord(const InitStr: WideString): SYSINT;
    function GetXNH(const AJson: WideString): SYSINT;
    function WriteXNH(const AJson: WideString): SYSINT;
    property DefaultInterface: ICHealthCardIntf read GetDefaultInterface;
    property LastErrorMessage: WideString read Get_LastErrorMessage;
    property CardInfo: TCardInfo read Get_CardInfo;
    property PsnBaseInfo: TPsnBaseInfo read Get_PsnBaseInfo;
    property SAMInfo: TSAMInfo read Get_SAMInfo;
    property CardReaderInfo: TCardReaderInfo read Get_CardReaderInfo;
    property PsnPhotoInfo: TPhotoInfo read Get_PsnPhotoInfo;
    property InbedState: TInbedState read Get_InbedState;
    property ExamState: TExamState read Get_ExamState;
    property LogInfo: TLogInfo write Set_LogInfo;
    property PayTypeInfo: TPayTypeInfo read Get_PayTypeInfo write Set_PayTypeInfo;
    property AddressInfo: TAddressInfo read Get_AddressInfo write Set_AddressInfo;
    property RelPsnInfo: TRelPsnInfo read Get_RelPsnInfo write Set_RelPsnInfo;
    property MarryInfo: TMarryInfo read Get_MarryInfo write Set_MarryInfo;
    property MedicalFlags: TMedicalFlags read Get_MedicalFlags write Set_MedicalFlags;
    property MentalFlag: TMental read Get_MentalFlag write Set_MentalFlag;
    property PapersInfo: TPapersInfo read Get_PapersInfo write Set_PapersInfo;
    property AllergyInfo: TAllergyInfo read Get_AllergyInfo write Set_AllergyInfo;
    property ImmuneInfo: TImmuneInfo read Get_ImmuneInfo write Set_ImmuneInfo;
    property PropertyStr: WideString read Get_PropertyStr write Set_PropertyStr;
    property InbedInfo: TInbedInfo1 read Get_InbedInfo write Set_InbedInfo;
    property ExamInfo: TExamInfo1 read Get_ExamInfo write Set_ExamInfo;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TCHealthCardIntfProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TCHealthCardIntf
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TCHealthCardIntfProperties = class(TPersistent)
  private
    FServer:    TCHealthCardIntf;
    function    GetDefaultInterface: ICHealthCardIntf;
    constructor Create(AServer: TCHealthCardIntf);
  protected
    function Get_LastErrorMessage: WideString;
    function Get_CardInfo: TCardInfo;
    function Get_PsnBaseInfo: TPsnBaseInfo;
    function Get_PayTypeInfo: TPayTypeInfo;
    procedure Set_PayTypeInfo(Value: TPayTypeInfo);
    function Get_AddressInfo: TAddressInfo;
    procedure Set_AddressInfo(Value: TAddressInfo);
    function Get_RelPsnInfo: TRelPsnInfo;
    procedure Set_RelPsnInfo(Value: TRelPsnInfo);
    function Get_MarryInfo: TMarryInfo;
    procedure Set_MarryInfo(Value: TMarryInfo);
    function Get_MedicalFlags: TMedicalFlags;
    procedure Set_MedicalFlags(Value: TMedicalFlags);
    function Get_MentalFlag: TMental;
    procedure Set_MentalFlag(Value: TMental);
    function Get_PapersInfo: TPapersInfo;
    procedure Set_PapersInfo(Value: TPapersInfo);
    function Get_SAMInfo: TSAMInfo;
    function Get_AllergyInfo: TAllergyInfo;
    procedure Set_AllergyInfo(Value: TAllergyInfo);
    function Get_ImmuneInfo: TImmuneInfo;
    procedure Set_ImmuneInfo(Value: TImmuneInfo);
    function Get_CardReaderInfo: TCardReaderInfo;
    function Get_PsnPhotoInfo: TPhotoInfo;
    function Get_InbedState: TInbedState;
    function Get_ExamState: TExamState;
    procedure Set_LogInfo(Param1: TLogInfo);
    function Get_PropertyStr: WideString;
    procedure Set_PropertyStr(const Value: WideString);
    function Get_InbedInfo: TInbedInfo1;
    procedure Set_InbedInfo(Value: TInbedInfo1);
    function Get_ExamInfo: TExamInfo1;
    procedure Set_ExamInfo(Value: TExamInfo1);
  public
    property DefaultInterface: ICHealthCardIntf read GetDefaultInterface;
  published
    property PayTypeInfo: TPayTypeInfo read Get_PayTypeInfo write Set_PayTypeInfo;
    property AddressInfo: TAddressInfo read Get_AddressInfo write Set_AddressInfo;
    property RelPsnInfo: TRelPsnInfo read Get_RelPsnInfo write Set_RelPsnInfo;
    property MarryInfo: TMarryInfo read Get_MarryInfo write Set_MarryInfo;
    property MedicalFlags: TMedicalFlags read Get_MedicalFlags write Set_MedicalFlags;
    property MentalFlag: TMental read Get_MentalFlag write Set_MentalFlag;
    property PapersInfo: TPapersInfo read Get_PapersInfo write Set_PapersInfo;
    property AllergyInfo: TAllergyInfo read Get_AllergyInfo write Set_AllergyInfo;
    property ImmuneInfo: TImmuneInfo read Get_ImmuneInfo write Set_ImmuneInfo;
    property PropertyStr: WideString read Get_PropertyStr write Set_PropertyStr;
    property InbedInfo: TInbedInfo1 read Get_InbedInfo write Set_InbedInfo;
    property ExamInfo: TExamInfo1 read Get_ExamInfo write Set_ExamInfo;
  end;
{$ENDIF}


procedure Register;

resourcestring
  dtlServerPage = '(none)';

  dtlOcxPage = '(none)';

implementation

uses ComObj;

class function CoCHealthCardIntf.Create: ICHealthCardIntf;
begin
  Result := CreateComObject(CLASS_CHealthCardIntf) as ICHealthCardIntf;
end;

class function CoCHealthCardIntf.CreateRemote(const MachineName: string): ICHealthCardIntf;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CHealthCardIntf) as ICHealthCardIntf;
end;

procedure TCHealthCardIntf.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{EA3386EE-2321-4761-A4C5-720202D88D44}';
    IntfIID:   '{675F3933-CD21-4F15-B84B-477EEB3ECB12}';
    EventIID:  '{82905794-314E-4D53-AFAD-C2C8BA7A3E2A}';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TCHealthCardIntf.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    ConnectEvents(punk);
    Fintf:= punk as ICHealthCardIntf;
  end;
end;

procedure TCHealthCardIntf.ConnectTo(svrIntf: ICHealthCardIntf);
begin
  Disconnect;
  FIntf := svrIntf;
  ConnectEvents(FIntf);
end;

procedure TCHealthCardIntf.DisConnect;
begin
  if Fintf <> nil then
  begin
    DisconnectEvents(FIntf);
    FIntf := nil;
  end;
end;

function TCHealthCardIntf.GetDefaultInterface: ICHealthCardIntf;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TCHealthCardIntf.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TCHealthCardIntfProperties.Create(Self);
{$ENDIF}
end;

destructor TCHealthCardIntf.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TCHealthCardIntf.GetServerProperties: TCHealthCardIntfProperties;
begin
  Result := FProps;
end;
{$ENDIF}

procedure TCHealthCardIntf.InvokeEvent(DispID: TDispID; var Params: TVariantArray);
begin
  case DispID of
    -1: Exit;  // DISPID_UNKNOWN
  end; {case DispID}
end;

function TCHealthCardIntf.Get_LastErrorMessage: WideString;
begin
    Result := DefaultInterface.LastErrorMessage;
end;

function TCHealthCardIntf.Get_CardInfo: TCardInfo;
begin
    Result := DefaultInterface.CardInfo;
end;

function TCHealthCardIntf.Get_PsnBaseInfo: TPsnBaseInfo;
begin
    Result := DefaultInterface.PsnBaseInfo;
end;

function TCHealthCardIntf.Get_PayTypeInfo: TPayTypeInfo;
begin
    Result := DefaultInterface.PayTypeInfo;
end;

procedure TCHealthCardIntf.Set_PayTypeInfo(Value: TPayTypeInfo);
begin
  DefaultInterface.Set_PayTypeInfo(Value);
end;

function TCHealthCardIntf.Get_AddressInfo: TAddressInfo;
begin
    Result := DefaultInterface.AddressInfo;
end;

procedure TCHealthCardIntf.Set_AddressInfo(Value: TAddressInfo);
begin
  DefaultInterface.Set_AddressInfo(Value);
end;

function TCHealthCardIntf.Get_RelPsnInfo: TRelPsnInfo;
begin
    Result := DefaultInterface.RelPsnInfo;
end;

procedure TCHealthCardIntf.Set_RelPsnInfo(Value: TRelPsnInfo);
begin
  DefaultInterface.Set_RelPsnInfo(Value);
end;

function TCHealthCardIntf.Get_MarryInfo: TMarryInfo;
begin
    Result := DefaultInterface.MarryInfo;
end;

procedure TCHealthCardIntf.Set_MarryInfo(Value: TMarryInfo);
begin
  DefaultInterface.Set_MarryInfo(Value);
end;

function TCHealthCardIntf.Get_MedicalFlags: TMedicalFlags;
begin
    Result := DefaultInterface.MedicalFlags;
end;

procedure TCHealthCardIntf.Set_MedicalFlags(Value: TMedicalFlags);
begin
  DefaultInterface.Set_MedicalFlags(Value);
end;

function TCHealthCardIntf.Get_MentalFlag: TMental;
begin
    Result := DefaultInterface.MentalFlag;
end;

procedure TCHealthCardIntf.Set_MentalFlag(Value: TMental);
begin
  DefaultInterface.Set_MentalFlag(Value);
end;

function TCHealthCardIntf.Get_PapersInfo: TPapersInfo;
begin
    Result := DefaultInterface.PapersInfo;
end;

procedure TCHealthCardIntf.Set_PapersInfo(Value: TPapersInfo);
begin
  DefaultInterface.Set_PapersInfo(Value);
end;

function TCHealthCardIntf.Get_SAMInfo: TSAMInfo;
begin
    Result := DefaultInterface.SAMInfo;
end;

function TCHealthCardIntf.Get_AllergyInfo: TAllergyInfo;
begin
    Result := DefaultInterface.AllergyInfo;
end;

procedure TCHealthCardIntf.Set_AllergyInfo(Value: TAllergyInfo);
begin
  DefaultInterface.Set_AllergyInfo(Value);
end;

function TCHealthCardIntf.Get_ImmuneInfo: TImmuneInfo;
begin
    Result := DefaultInterface.ImmuneInfo;
end;

procedure TCHealthCardIntf.Set_ImmuneInfo(Value: TImmuneInfo);
begin
  DefaultInterface.Set_ImmuneInfo(Value);
end;

function TCHealthCardIntf.Get_CardReaderInfo: TCardReaderInfo;
begin
    Result := DefaultInterface.CardReaderInfo;
end;

function TCHealthCardIntf.Get_PsnPhotoInfo: TPhotoInfo;
begin
    Result := DefaultInterface.PsnPhotoInfo;
end;

function TCHealthCardIntf.Get_InbedState: TInbedState;
begin
    Result := DefaultInterface.InbedState;
end;

function TCHealthCardIntf.Get_ExamState: TExamState;
begin
    Result := DefaultInterface.ExamState;
end;

procedure TCHealthCardIntf.Set_LogInfo(Param1: TLogInfo);
begin
  DefaultInterface.Set_LogInfo(Param1);
end;

function TCHealthCardIntf.Get_PropertyStr: WideString;
begin
    Result := DefaultInterface.PropertyStr;
end;

procedure TCHealthCardIntf.Set_PropertyStr(const Value: WideString);
  { Warning: The property PropertyStr has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.PropertyStr := Value;
end;

function TCHealthCardIntf.Get_InbedInfo: TInbedInfo1;
begin
    Result := DefaultInterface.InbedInfo;
end;

procedure TCHealthCardIntf.Set_InbedInfo(Value: TInbedInfo1);
begin
  DefaultInterface.Set_InbedInfo(Value);
end;

function TCHealthCardIntf.Get_ExamInfo: TExamInfo1;
begin
    Result := DefaultInterface.ExamInfo;
end;

procedure TCHealthCardIntf.Set_ExamInfo(Value: TExamInfo1);
begin
  DefaultInterface.Set_ExamInfo(Value);
end;

function TCHealthCardIntf.InitIntf(AReaderType: SYSINT): SYSINT;
begin
  Result := DefaultInterface.InitIntf(AReaderType);
end;

procedure TCHealthCardIntf.UnInitIntf;
begin
  DefaultInterface.UnInitIntf;
end;

function TCHealthCardIntf.ReadCardInfo: SYSINT;
begin
  Result := DefaultInterface.ReadCardInfo;
end;

function TCHealthCardIntf.ReadPsnBaseInfo: SYSINT;
begin
  Result := DefaultInterface.ReadPsnBaseInfo;
end;

function TCHealthCardIntf.ReadPsnPhoto(const AFileName: WideString): SYSINT;
begin
  Result := DefaultInterface.ReadPsnPhoto(AFileName);
end;

function TCHealthCardIntf.ReadPayTypeInfo: SYSINT;
begin
  Result := DefaultInterface.ReadPayTypeInfo;
end;

function TCHealthCardIntf.ReadAddressInfo: SYSINT;
begin
  Result := DefaultInterface.ReadAddressInfo;
end;

function TCHealthCardIntf.ReadRelPsnInfo: SYSINT;
begin
  Result := DefaultInterface.ReadRelPsnInfo;
end;

function TCHealthCardIntf.ReadMarryInfo: SYSINT;
begin
  Result := DefaultInterface.ReadMarryInfo;
end;

function TCHealthCardIntf.ReadPapersInfo: SYSINT;
begin
  Result := DefaultInterface.ReadPapersInfo;
end;

function TCHealthCardIntf.ReadMedicalFlags: SYSINT;
begin
  Result := DefaultInterface.ReadMedicalFlags;
end;

function TCHealthCardIntf.ReadMentalFlag: SYSINT;
begin
  Result := DefaultInterface.ReadMentalFlag;
end;

function TCHealthCardIntf.WritePsnPhoto(const AFileName: WideString): SYSINT;
begin
  Result := DefaultInterface.WritePsnPhoto(AFileName);
end;

function TCHealthCardIntf.WritePayTypeInfo: SYSINT;
begin
  Result := DefaultInterface.WritePayTypeInfo;
end;

function TCHealthCardIntf.WriteAddressInfo: SYSINT;
begin
  Result := DefaultInterface.WriteAddressInfo;
end;

function TCHealthCardIntf.WriteRelPsnInfo: SYSINT;
begin
  Result := DefaultInterface.WriteRelPsnInfo;
end;

function TCHealthCardIntf.WriteMarryInfo: SYSINT;
begin
  Result := DefaultInterface.WriteMarryInfo;
end;

function TCHealthCardIntf.WritePapersInfo: SYSINT;
begin
  Result := DefaultInterface.WritePapersInfo;
end;

function TCHealthCardIntf.WriteMedicalFlags: SYSINT;
begin
  Result := DefaultInterface.WriteMedicalFlags;
end;

function TCHealthCardIntf.WriteMentalFlag: SYSINT;
begin
  Result := DefaultInterface.WriteMentalFlag;
end;

function TCHealthCardIntf.OrgUserLogin(const AOrgNo: WideString; const AOrgName: WideString; 
                                       const AUserNo: WideString; const AUserName: WideString; 
                                       const AUserPwd: WideString): SYSINT;
begin
  Result := DefaultInterface.OrgUserLogin(AOrgNo, AOrgName, AUserNo, AUserName, AUserPwd);
end;

function TCHealthCardIntf.WriteRegister: SYSINT;
begin
  Result := DefaultInterface.WriteRegister;
end;

function TCHealthCardIntf.ReadAllergyInfo: SYSINT;
begin
  Result := DefaultInterface.ReadAllergyInfo;
end;

function TCHealthCardIntf.WriteAllergyInfo: SYSINT;
begin
  Result := DefaultInterface.WriteAllergyInfo;
end;

function TCHealthCardIntf.ReadImmuneInfo: SYSINT;
begin
  Result := DefaultInterface.ReadImmuneInfo;
end;

function TCHealthCardIntf.WriteImmuneInfo: SYSINT;
begin
  Result := DefaultInterface.WriteImmuneInfo;
end;

function TCHealthCardIntf.ReadCardReaderInfo(AParamCode: SYSINT): SYSINT;
begin
  Result := DefaultInterface.ReadCardReaderInfo(AParamCode);
end;

function TCHealthCardIntf.ReadPsnPhotoInfo: SYSINT;
begin
  Result := DefaultInterface.ReadPsnPhotoInfo;
end;

function TCHealthCardIntf.ReadExamFlags: SYSINT;
begin
  Result := DefaultInterface.ReadExamFlags;
end;

function TCHealthCardIntf.ReadInbedFlags: SYSINT;
begin
  Result := DefaultInterface.ReadInbedFlags;
end;

function TCHealthCardIntf.ReadExamInfo: SYSINT;
begin
  Result := DefaultInterface.ReadExamInfo;
end;

function TCHealthCardIntf.WriteExamInfo: SYSINT;
begin
  Result := DefaultInterface.WriteExamInfo;
end;

function TCHealthCardIntf.ReadInbedInfo: SYSINT;
begin
  Result := DefaultInterface.ReadInbedInfo;
end;

function TCHealthCardIntf.WriteInbedInfo: SYSINT;
begin
  Result := DefaultInterface.WriteInbedInfo;
end;

function TCHealthCardIntf.BeforeInitInfo(AArchiType: SYSINT): SYSINT;
begin
  Result := DefaultInterface.BeforeInitInfo(AArchiType);
end;

function TCHealthCardIntf.InitIntfTS(const InitStr: WideString): SYSINT;
begin
  Result := DefaultInterface.InitIntfTS(InitStr);
end;

function TCHealthCardIntf.ReadHealthInfo(InfoNo: SYSINT): SYSINT;
begin
  Result := DefaultInterface.ReadHealthInfo(InfoNo);
end;

function TCHealthCardIntf.ReadIDCardInfo: SYSINT;
begin
  Result := DefaultInterface.ReadIDCardInfo;
end;

function TCHealthCardIntf.ReadMagStInfo(Info: SYSINT): SYSINT;
begin
  Result := DefaultInterface.ReadMagStInfo(Info);
end;

function TCHealthCardIntf.DisplayInfo(const InfoStr: WideString): SYSINT;
begin
  Result := DefaultInterface.DisplayInfo(InfoStr);
end;

function TCHealthCardIntf.PosBeep: SYSINT;
begin
  Result := DefaultInterface.PosBeep;
end;

function TCHealthCardIntf.DispSound(InfoNo: SYSINT): SYSINT;
begin
  Result := DefaultInterface.DispSound(InfoNo);
end;

function TCHealthCardIntf.ReadHNSBInfo: SYSINT;
begin
  Result := DefaultInterface.ReadHNSBInfo;
end;

function TCHealthCardIntf.WriteHealthInfo(const InitStr: WideString): SYSINT;
begin
  Result := DefaultInterface.WriteHealthInfo(InitStr);
end;

function TCHealthCardIntf.WriteOperateRecord(const InitStr: WideString): SYSINT;
begin
  Result := DefaultInterface.WriteOperateRecord(InitStr);
end;

function TCHealthCardIntf.GetXNH(const AJson: WideString): SYSINT;
begin
  Result := DefaultInterface.GetXNH(AJson);
end;

function TCHealthCardIntf.WriteXNH(const AJson: WideString): SYSINT;
begin
  Result := DefaultInterface.WriteXNH(AJson);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TCHealthCardIntfProperties.Create(AServer: TCHealthCardIntf);
begin
  inherited Create;
  FServer := AServer;
end;

function TCHealthCardIntfProperties.GetDefaultInterface: ICHealthCardIntf;
begin
  Result := FServer.DefaultInterface;
end;

function TCHealthCardIntfProperties.Get_LastErrorMessage: WideString;
begin
    Result := DefaultInterface.LastErrorMessage;
end;

function TCHealthCardIntfProperties.Get_CardInfo: TCardInfo;
begin
    Result := DefaultInterface.CardInfo;
end;

function TCHealthCardIntfProperties.Get_PsnBaseInfo: TPsnBaseInfo;
begin
    Result := DefaultInterface.PsnBaseInfo;
end;

function TCHealthCardIntfProperties.Get_PayTypeInfo: TPayTypeInfo;
begin
    Result := DefaultInterface.PayTypeInfo;
end;

procedure TCHealthCardIntfProperties.Set_PayTypeInfo(Value: TPayTypeInfo);
begin
  DefaultInterface.Set_PayTypeInfo(Value);
end;

function TCHealthCardIntfProperties.Get_AddressInfo: TAddressInfo;
begin
    Result := DefaultInterface.AddressInfo;
end;

procedure TCHealthCardIntfProperties.Set_AddressInfo(Value: TAddressInfo);
begin
  DefaultInterface.Set_AddressInfo(Value);
end;

function TCHealthCardIntfProperties.Get_RelPsnInfo: TRelPsnInfo;
begin
    Result := DefaultInterface.RelPsnInfo;
end;

procedure TCHealthCardIntfProperties.Set_RelPsnInfo(Value: TRelPsnInfo);
begin
  DefaultInterface.Set_RelPsnInfo(Value);
end;

function TCHealthCardIntfProperties.Get_MarryInfo: TMarryInfo;
begin
    Result := DefaultInterface.MarryInfo;
end;

procedure TCHealthCardIntfProperties.Set_MarryInfo(Value: TMarryInfo);
begin
  DefaultInterface.Set_MarryInfo(Value);
end;

function TCHealthCardIntfProperties.Get_MedicalFlags: TMedicalFlags;
begin
    Result := DefaultInterface.MedicalFlags;
end;

procedure TCHealthCardIntfProperties.Set_MedicalFlags(Value: TMedicalFlags);
begin
  DefaultInterface.Set_MedicalFlags(Value);
end;

function TCHealthCardIntfProperties.Get_MentalFlag: TMental;
begin
    Result := DefaultInterface.MentalFlag;
end;

procedure TCHealthCardIntfProperties.Set_MentalFlag(Value: TMental);
begin
  DefaultInterface.Set_MentalFlag(Value);
end;

function TCHealthCardIntfProperties.Get_PapersInfo: TPapersInfo;
begin
    Result := DefaultInterface.PapersInfo;
end;

procedure TCHealthCardIntfProperties.Set_PapersInfo(Value: TPapersInfo);
begin
  DefaultInterface.Set_PapersInfo(Value);
end;

function TCHealthCardIntfProperties.Get_SAMInfo: TSAMInfo;
begin
    Result := DefaultInterface.SAMInfo;
end;

function TCHealthCardIntfProperties.Get_AllergyInfo: TAllergyInfo;
begin
    Result := DefaultInterface.AllergyInfo;
end;

procedure TCHealthCardIntfProperties.Set_AllergyInfo(Value: TAllergyInfo);
begin
  DefaultInterface.Set_AllergyInfo(Value);
end;

function TCHealthCardIntfProperties.Get_ImmuneInfo: TImmuneInfo;
begin
    Result := DefaultInterface.ImmuneInfo;
end;

procedure TCHealthCardIntfProperties.Set_ImmuneInfo(Value: TImmuneInfo);
begin
  DefaultInterface.Set_ImmuneInfo(Value);
end;

function TCHealthCardIntfProperties.Get_CardReaderInfo: TCardReaderInfo;
begin
    Result := DefaultInterface.CardReaderInfo;
end;

function TCHealthCardIntfProperties.Get_PsnPhotoInfo: TPhotoInfo;
begin
    Result := DefaultInterface.PsnPhotoInfo;
end;

function TCHealthCardIntfProperties.Get_InbedState: TInbedState;
begin
    Result := DefaultInterface.InbedState;
end;

function TCHealthCardIntfProperties.Get_ExamState: TExamState;
begin
    Result := DefaultInterface.ExamState;
end;

procedure TCHealthCardIntfProperties.Set_LogInfo(Param1: TLogInfo);
begin
  DefaultInterface.Set_LogInfo(Param1);
end;

function TCHealthCardIntfProperties.Get_PropertyStr: WideString;
begin
    Result := DefaultInterface.PropertyStr;
end;

procedure TCHealthCardIntfProperties.Set_PropertyStr(const Value: WideString);
  { Warning: The property PropertyStr has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.PropertyStr := Value;
end;

function TCHealthCardIntfProperties.Get_InbedInfo: TInbedInfo1;
begin
    Result := DefaultInterface.InbedInfo;
end;

procedure TCHealthCardIntfProperties.Set_InbedInfo(Value: TInbedInfo1);
begin
  DefaultInterface.Set_InbedInfo(Value);
end;

function TCHealthCardIntfProperties.Get_ExamInfo: TExamInfo1;
begin
    Result := DefaultInterface.ExamInfo;
end;

procedure TCHealthCardIntfProperties.Set_ExamInfo(Value: TExamInfo1);
begin
  DefaultInterface.Set_ExamInfo(Value);
end;

{$ENDIF}

procedure Register;
begin
  RegisterComponents(dtlServerPage, [TCHealthCardIntf]);
end;

end.
