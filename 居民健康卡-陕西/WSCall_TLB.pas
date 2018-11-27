unit WSCall_TLB;

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
// File generated on 2018-05-16 11:45:46 from Type Library described below.

// ************************************************************************  //
// Type Lib: D:\Work\Other\JMJKK\JMJKK_LIB\WSCall.tlb (1)
// LIBID: {77597D60-C50A-4FD6-95FF-671B463C52AD}
// LCID: 0
// Helpfile: 
// HelpString: 
// DepndLst: 
//   (1) v2.0 stdole, (C:\Windows\SysWOW64\stdole2.tlb)
//   (2) v2.0 mscorlib, (C:\Windows\Microsoft.NET\Framework\v2.0.50727\mscorlib.tlb)
// Errors:
//   Error creating palette bitmap of (TReadWriterCard) : Server mscoree.dll contains no icons
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

uses Windows, ActiveX, Classes, Graphics, mscorlib_TLB, OleServer, StdVCL, Variants;
  


// *********************************************************************//
// GUIDS declared in the TypeLibrary. Following prefixes are used:        
//   Type Libraries     : LIBID_xxxx                                      
//   CoClasses          : CLASS_xxxx                                      
//   DISPInterfaces     : DIID_xxxx                                       
//   Non-DISP interfaces: IID_xxxx                                        
// *********************************************************************//
const
  // TypeLibrary Major and minor versions
  WSCallMajorVersion = 1;
  WSCallMinorVersion = 0;

  LIBID_WSCall: TGUID = '{77597D60-C50A-4FD6-95FF-671B463C52AD}';

  IID__Resources: TGUID = '{471296B4-58D2-3BB0-A5E8-64B83C321894}';
  IID_IReadWriterCard: TGUID = '{3FC30485-E390-4ABC-9169-DD3E17689B5C}';
  CLASS_ReadWriterCard: TGUID = '{EFD4EE9B-E603-429D-A341-5477BCBE132B}';
  CLASS_Resources: TGUID = '{91BAA8B1-0F08-3F6D-9109-B80E1D248390}';
type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary                    
// *********************************************************************//
  _Resources = interface;
  _ResourcesDisp = dispinterface;
  IReadWriterCard = interface;
  IReadWriterCardDisp = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library                       
// (NOTE: Here we map each CoClass to its Default Interface)              
// *********************************************************************//
  ReadWriterCard = IReadWriterCard;
  Resources = _Resources;


// *********************************************************************//
// Interface: _Resources
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {471296B4-58D2-3BB0-A5E8-64B83C321894}
// *********************************************************************//
  _Resources = interface(IDispatch)
    ['{471296B4-58D2-3BB0-A5E8-64B83C321894}']
  end;

// *********************************************************************//
// DispIntf:  _ResourcesDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {471296B4-58D2-3BB0-A5E8-64B83C321894}
// *********************************************************************//
  _ResourcesDisp = dispinterface
    ['{471296B4-58D2-3BB0-A5E8-64B83C321894}']
  end;

// *********************************************************************//
// Interface: IReadWriterCard
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {3FC30485-E390-4ABC-9169-DD3E17689B5C}
// *********************************************************************//
  IReadWriterCard = interface(IDispatch)
    ['{3FC30485-E390-4ABC-9169-DD3E17689B5C}']
    procedure ShowForm; safecall;
    function readCardInfo(const requestInfo: WideString): WideString; safecall;
    function readPeopleInfo(const requestInfo: WideString): WideString; safecall;
    function readHealthInfo(const requestInfo: WideString): WideString; safecall;
    function readClinicalInfo(const requestInfo: WideString): WideString; safecall;
    function readImmunityInfo(const requestInfo: WideString): WideString; safecall;
    function readOutpatientListInfo(const requestInfo: WideString): WideString; safecall;
    function readOutpatientInfo(const requestInfo: WideString): WideString; safecall;
    function readOutpatientSummaryInfo(const requestInfo: WideString): WideString; safecall;
    function readDrugInfo(const requestInfo: WideString): WideString; safecall;
    function readInspectionInfo(const requestInfo: WideString): WideString; safecall;
    function readOutpatientSurgeryInfo(const requestInfo: WideString): WideString; safecall;
    function readInHospitalListInfo(const requestInfo: WideString): WideString; safecall;
    function readInHospitalInfo(const requestInfo: WideString): WideString; safecall;
    function readInHospitalSummaryInfo(const requestInfo: WideString): WideString; safecall;
    function readBloodTransInfo(const requestInfo: WideString): WideString; safecall;
    function readInHospitalSurgeryInfo(const requestInfo: WideString): WideString; safecall;
    function writePeopleInfo(const requestInfo: WideString; const businessInfo: WideString): WideString; safecall;
    function writeHealthInfo(const requestInfo: WideString; const businessInfo: WideString): WideString; safecall;
    function writeClinicalInfo(const requestInfo: WideString; const businessInfo: WideString): WideString; safecall;
    function writeAllergyInfo(const requestInfo: WideString; const businessInfo: WideString): WideString; safecall;
    function writeImmunityInfo(const requestInfo: WideString; const businessInfo: WideString): WideString; safecall;
    function writeOutpatientInfo(const requestInfo: WideString; const businessInfo: WideString): WideString; safecall;
    function writeOutpatientCheckInfo(const requestInfo: WideString; const businessInfo: WideString): WideString; safecall;
    function writeOutpatientSurgeryInfo(const requestInfo: WideString; 
                                        const businessInfo: WideString): WideString; safecall;
    function writeInHospitalInfo(const requestInfo: WideString; const businessInfo: WideString): WideString; safecall;
    function readCertCardInfo(const businessInfo: WideString): WideString; safecall;
    function writebasicInfo(const requestInfo: WideString; const businessInfo: WideString): WideString; safecall;
    function driverConfig(const requestInfo: WideString): WideString; safecall;
    function readWalletInfo(const requestInfo: WideString): WideString; safecall;
  end;

// *********************************************************************//
// DispIntf:  IReadWriterCardDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {3FC30485-E390-4ABC-9169-DD3E17689B5C}
// *********************************************************************//
  IReadWriterCardDisp = dispinterface
    ['{3FC30485-E390-4ABC-9169-DD3E17689B5C}']
    procedure ShowForm; dispid 1;
    function readCardInfo(const requestInfo: WideString): WideString; dispid 2;
    function readPeopleInfo(const requestInfo: WideString): WideString; dispid 3;
    function readHealthInfo(const requestInfo: WideString): WideString; dispid 4;
    function readClinicalInfo(const requestInfo: WideString): WideString; dispid 5;
    function readImmunityInfo(const requestInfo: WideString): WideString; dispid 6;
    function readOutpatientListInfo(const requestInfo: WideString): WideString; dispid 7;
    function readOutpatientInfo(const requestInfo: WideString): WideString; dispid 8;
    function readOutpatientSummaryInfo(const requestInfo: WideString): WideString; dispid 9;
    function readDrugInfo(const requestInfo: WideString): WideString; dispid 10;
    function readInspectionInfo(const requestInfo: WideString): WideString; dispid 11;
    function readOutpatientSurgeryInfo(const requestInfo: WideString): WideString; dispid 12;
    function readInHospitalListInfo(const requestInfo: WideString): WideString; dispid 13;
    function readInHospitalInfo(const requestInfo: WideString): WideString; dispid 14;
    function readInHospitalSummaryInfo(const requestInfo: WideString): WideString; dispid 15;
    function readBloodTransInfo(const requestInfo: WideString): WideString; dispid 16;
    function readInHospitalSurgeryInfo(const requestInfo: WideString): WideString; dispid 17;
    function writePeopleInfo(const requestInfo: WideString; const businessInfo: WideString): WideString; dispid 18;
    function writeHealthInfo(const requestInfo: WideString; const businessInfo: WideString): WideString; dispid 19;
    function writeClinicalInfo(const requestInfo: WideString; const businessInfo: WideString): WideString; dispid 20;
    function writeAllergyInfo(const requestInfo: WideString; const businessInfo: WideString): WideString; dispid 21;
    function writeImmunityInfo(const requestInfo: WideString; const businessInfo: WideString): WideString; dispid 22;
    function writeOutpatientInfo(const requestInfo: WideString; const businessInfo: WideString): WideString; dispid 23;
    function writeOutpatientCheckInfo(const requestInfo: WideString; const businessInfo: WideString): WideString; dispid 24;
    function writeOutpatientSurgeryInfo(const requestInfo: WideString; 
                                        const businessInfo: WideString): WideString; dispid 25;
    function writeInHospitalInfo(const requestInfo: WideString; const businessInfo: WideString): WideString; dispid 26;
    function readCertCardInfo(const businessInfo: WideString): WideString; dispid 27;
    function writebasicInfo(const requestInfo: WideString; const businessInfo: WideString): WideString; dispid 28;
    function driverConfig(const requestInfo: WideString): WideString; dispid 29;
    function readWalletInfo(const requestInfo: WideString): WideString; dispid 30;
  end;

// *********************************************************************//
// The Class CoReadWriterCard provides a Create and CreateRemote method to          
// create instances of the default interface IReadWriterCard exposed by              
// the CoClass ReadWriterCard. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoReadWriterCard = class
    class function Create: IReadWriterCard;
    class function CreateRemote(const MachineName: string): IReadWriterCard;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TReadWriterCard
// Help String      : 
// Default Interface: IReadWriterCard
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TReadWriterCardProperties= class;
{$ENDIF}
  TReadWriterCard = class(TOleServer)
  private
    FIntf: IReadWriterCard;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: TReadWriterCardProperties;
    function GetServerProperties: TReadWriterCardProperties;
{$ENDIF}
    function GetDefaultInterface: IReadWriterCard;
  protected
    procedure InitServerData; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IReadWriterCard);
    procedure Disconnect; override;
    procedure ShowForm;
    function readCardInfo(const requestInfo: WideString): WideString;
    function readPeopleInfo(const requestInfo: WideString): WideString;
    function readHealthInfo(const requestInfo: WideString): WideString;
    function readClinicalInfo(const requestInfo: WideString): WideString;
    function readImmunityInfo(const requestInfo: WideString): WideString;
    function readOutpatientListInfo(const requestInfo: WideString): WideString;
    function readOutpatientInfo(const requestInfo: WideString): WideString;
    function readOutpatientSummaryInfo(const requestInfo: WideString): WideString;
    function readDrugInfo(const requestInfo: WideString): WideString;
    function readInspectionInfo(const requestInfo: WideString): WideString;
    function readOutpatientSurgeryInfo(const requestInfo: WideString): WideString;
    function readInHospitalListInfo(const requestInfo: WideString): WideString;
    function readInHospitalInfo(const requestInfo: WideString): WideString;
    function readInHospitalSummaryInfo(const requestInfo: WideString): WideString;
    function readBloodTransInfo(const requestInfo: WideString): WideString;
    function readInHospitalSurgeryInfo(const requestInfo: WideString): WideString;
    function writePeopleInfo(const requestInfo: WideString; const businessInfo: WideString): WideString;
    function writeHealthInfo(const requestInfo: WideString; const businessInfo: WideString): WideString;
    function writeClinicalInfo(const requestInfo: WideString; const businessInfo: WideString): WideString;
    function writeAllergyInfo(const requestInfo: WideString; const businessInfo: WideString): WideString;
    function writeImmunityInfo(const requestInfo: WideString; const businessInfo: WideString): WideString;
    function writeOutpatientInfo(const requestInfo: WideString; const businessInfo: WideString): WideString;
    function writeOutpatientCheckInfo(const requestInfo: WideString; const businessInfo: WideString): WideString;
    function writeOutpatientSurgeryInfo(const requestInfo: WideString; 
                                        const businessInfo: WideString): WideString;
    function writeInHospitalInfo(const requestInfo: WideString; const businessInfo: WideString): WideString;
    function readCertCardInfo(const businessInfo: WideString): WideString;
    function writebasicInfo(const requestInfo: WideString; const businessInfo: WideString): WideString;
    function driverConfig(const requestInfo: WideString): WideString;
    function readWalletInfo(const requestInfo: WideString): WideString;
    property DefaultInterface: IReadWriterCard read GetDefaultInterface;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TReadWriterCardProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TReadWriterCard
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TReadWriterCardProperties = class(TPersistent)
  private
    FServer:    TReadWriterCard;
    function    GetDefaultInterface: IReadWriterCard;
    constructor Create(AServer: TReadWriterCard);
  protected
  public
    property DefaultInterface: IReadWriterCard read GetDefaultInterface;
  published
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoResources provides a Create and CreateRemote method to          
// create instances of the default interface _Resources exposed by              
// the CoClass Resources. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoResources = class
    class function Create: _Resources;
    class function CreateRemote(const MachineName: string): _Resources;
  end;

procedure Register;

resourcestring
  dtlServerPage = '(none)';

  dtlOcxPage = '(none)';

implementation

uses ComObj;

class function CoReadWriterCard.Create: IReadWriterCard;
begin
  Result := CreateComObject(CLASS_ReadWriterCard) as IReadWriterCard;
end;

class function CoReadWriterCard.CreateRemote(const MachineName: string): IReadWriterCard;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ReadWriterCard) as IReadWriterCard;
end;

procedure TReadWriterCard.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{EFD4EE9B-E603-429D-A341-5477BCBE132B}';
    IntfIID:   '{3FC30485-E390-4ABC-9169-DD3E17689B5C}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TReadWriterCard.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IReadWriterCard;
  end;
end;

procedure TReadWriterCard.ConnectTo(svrIntf: IReadWriterCard);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TReadWriterCard.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TReadWriterCard.GetDefaultInterface: IReadWriterCard;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TReadWriterCard.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TReadWriterCardProperties.Create(Self);
{$ENDIF}
end;

destructor TReadWriterCard.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TReadWriterCard.GetServerProperties: TReadWriterCardProperties;
begin
  Result := FProps;
end;
{$ENDIF}

procedure TReadWriterCard.ShowForm;
begin
  DefaultInterface.ShowForm;
end;

function TReadWriterCard.readCardInfo(const requestInfo: WideString): WideString;
begin
  Result := DefaultInterface.readCardInfo(requestInfo);
end;

function TReadWriterCard.readPeopleInfo(const requestInfo: WideString): WideString;
begin
  Result := DefaultInterface.readPeopleInfo(requestInfo);
end;

function TReadWriterCard.readHealthInfo(const requestInfo: WideString): WideString;
begin
  Result := DefaultInterface.readHealthInfo(requestInfo);
end;

function TReadWriterCard.readClinicalInfo(const requestInfo: WideString): WideString;
begin
  Result := DefaultInterface.readClinicalInfo(requestInfo);
end;

function TReadWriterCard.readImmunityInfo(const requestInfo: WideString): WideString;
begin
  Result := DefaultInterface.readImmunityInfo(requestInfo);
end;

function TReadWriterCard.readOutpatientListInfo(const requestInfo: WideString): WideString;
begin
  Result := DefaultInterface.readOutpatientListInfo(requestInfo);
end;

function TReadWriterCard.readOutpatientInfo(const requestInfo: WideString): WideString;
begin
  Result := DefaultInterface.readOutpatientInfo(requestInfo);
end;

function TReadWriterCard.readOutpatientSummaryInfo(const requestInfo: WideString): WideString;
begin
  Result := DefaultInterface.readOutpatientSummaryInfo(requestInfo);
end;

function TReadWriterCard.readDrugInfo(const requestInfo: WideString): WideString;
begin
  Result := DefaultInterface.readDrugInfo(requestInfo);
end;

function TReadWriterCard.readInspectionInfo(const requestInfo: WideString): WideString;
begin
  Result := DefaultInterface.readInspectionInfo(requestInfo);
end;

function TReadWriterCard.readOutpatientSurgeryInfo(const requestInfo: WideString): WideString;
begin
  Result := DefaultInterface.readOutpatientSurgeryInfo(requestInfo);
end;

function TReadWriterCard.readInHospitalListInfo(const requestInfo: WideString): WideString;
begin
  Result := DefaultInterface.readInHospitalListInfo(requestInfo);
end;

function TReadWriterCard.readInHospitalInfo(const requestInfo: WideString): WideString;
begin
  Result := DefaultInterface.readInHospitalInfo(requestInfo);
end;

function TReadWriterCard.readInHospitalSummaryInfo(const requestInfo: WideString): WideString;
begin
  Result := DefaultInterface.readInHospitalSummaryInfo(requestInfo);
end;

function TReadWriterCard.readBloodTransInfo(const requestInfo: WideString): WideString;
begin
  Result := DefaultInterface.readBloodTransInfo(requestInfo);
end;

function TReadWriterCard.readInHospitalSurgeryInfo(const requestInfo: WideString): WideString;
begin
  Result := DefaultInterface.readInHospitalSurgeryInfo(requestInfo);
end;

function TReadWriterCard.writePeopleInfo(const requestInfo: WideString; 
                                         const businessInfo: WideString): WideString;
begin
  Result := DefaultInterface.writePeopleInfo(requestInfo, businessInfo);
end;

function TReadWriterCard.writeHealthInfo(const requestInfo: WideString; 
                                         const businessInfo: WideString): WideString;
begin
  Result := DefaultInterface.writeHealthInfo(requestInfo, businessInfo);
end;

function TReadWriterCard.writeClinicalInfo(const requestInfo: WideString; 
                                           const businessInfo: WideString): WideString;
begin
  Result := DefaultInterface.writeClinicalInfo(requestInfo, businessInfo);
end;

function TReadWriterCard.writeAllergyInfo(const requestInfo: WideString; 
                                          const businessInfo: WideString): WideString;
begin
  Result := DefaultInterface.writeAllergyInfo(requestInfo, businessInfo);
end;

function TReadWriterCard.writeImmunityInfo(const requestInfo: WideString; 
                                           const businessInfo: WideString): WideString;
begin
  Result := DefaultInterface.writeImmunityInfo(requestInfo, businessInfo);
end;

function TReadWriterCard.writeOutpatientInfo(const requestInfo: WideString; 
                                             const businessInfo: WideString): WideString;
begin
  Result := DefaultInterface.writeOutpatientInfo(requestInfo, businessInfo);
end;

function TReadWriterCard.writeOutpatientCheckInfo(const requestInfo: WideString; 
                                                  const businessInfo: WideString): WideString;
begin
  Result := DefaultInterface.writeOutpatientCheckInfo(requestInfo, businessInfo);
end;

function TReadWriterCard.writeOutpatientSurgeryInfo(const requestInfo: WideString; 
                                                    const businessInfo: WideString): WideString;
begin
  Result := DefaultInterface.writeOutpatientSurgeryInfo(requestInfo, businessInfo);
end;

function TReadWriterCard.writeInHospitalInfo(const requestInfo: WideString; 
                                             const businessInfo: WideString): WideString;
begin
  Result := DefaultInterface.writeInHospitalInfo(requestInfo, businessInfo);
end;

function TReadWriterCard.readCertCardInfo(const businessInfo: WideString): WideString;
begin
  Result := DefaultInterface.readCertCardInfo(businessInfo);
end;

function TReadWriterCard.writebasicInfo(const requestInfo: WideString; 
                                        const businessInfo: WideString): WideString;
begin
  Result := DefaultInterface.writebasicInfo(requestInfo, businessInfo);
end;

function TReadWriterCard.driverConfig(const requestInfo: WideString): WideString;
begin
  Result := DefaultInterface.driverConfig(requestInfo);
end;

function TReadWriterCard.readWalletInfo(const requestInfo: WideString): WideString;
begin
  Result := DefaultInterface.readWalletInfo(requestInfo);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TReadWriterCardProperties.Create(AServer: TReadWriterCard);
begin
  inherited Create;
  FServer := AServer;
end;

function TReadWriterCardProperties.GetDefaultInterface: IReadWriterCard;
begin
  Result := FServer.DefaultInterface;
end;

{$ENDIF}

class function CoResources.Create: _Resources;
begin
  Result := CreateComObject(CLASS_Resources) as _Resources;
end;

class function CoResources.CreateRemote(const MachineName: string): _Resources;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Resources) as _Resources;
end;

procedure Register;
begin
  RegisterComponents(dtlServerPage, [TReadWriterCard]);
end;

end.
