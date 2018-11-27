unit sys_sbjc_TLB;

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
// File generated on 2012-10-25 14:32:07 from Type Library described below.

// ************************************************************************  //
// Type Lib: C:\Users\Chen\Desktop\sys_sbjc.dll (1)
// LIBID: {E7A6D5BE-E31C-4761-A114-5215EA586EF8}
// LCID: 0
// Helpfile: 
// HelpString: sys_sbjc Library
// DepndLst: 
//   (1) v2.0 stdole, (C:\Windows\SysWOW64\stdole2.tlb)
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
  sys_sbjcMajorVersion = 1;
  sys_sbjcMinorVersion = 0;

  LIBID_sys_sbjc: TGUID = '{E7A6D5BE-E31C-4761-A114-5215EA586EF8}';

  IID_Isbjk_interface: TGUID = '{8A3D6BCC-A790-4F3C-930D-E092B91A8C2C}';
  CLASS_sbjk_interface: TGUID = '{C4800752-5CFA-4783-A2FA-792B24787E39}';
type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary                    
// *********************************************************************//
  Isbjk_interface = interface;
  Isbjk_interfaceDisp = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library                       
// (NOTE: Here we map each CoClass to its Default Interface)              
// *********************************************************************//
  sbjk_interface = Isbjk_interface;


// *********************************************************************//
// Declaration of structures, unions and aliases.                         
// *********************************************************************//
  res = packed record
    cljg: WideString;
    cwxx: WideString;
    ybkxm: WideString;
    yyxm: WideString;
    grbh: WideString;
    zhye: WideString;
    dqczdm: WideString;
    ylzfy: WideString;
    zhzf: WideString;
    bxhj: WideString;
    zyh: WideString;
    brxm: WideString;
    nhzh: WideString;
    sfzh: WideString;
    jtdz: WideString;
    sblb: WideString;
    brxb: WideString;
    csrq: WideString;
  end;


// *********************************************************************//
// Interface: Isbjk_interface
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {8A3D6BCC-A790-4F3C-930D-E092B91A8C2C}
// *********************************************************************//
  Isbjk_interface = interface(IDispatch)
    ['{8A3D6BCC-A790-4F3C-930D-E092B91A8C2C}']
    procedure sbjk_opp(czlb: OleVariant; zyh: OleVariant; var re: res; czydm: OleVariant; 
                       ksdm: OleVariant; yybm: OleVariant; yymc: OleVariant); safecall;
    function Get_prv_init: Integer; safecall;
    procedure Set_prv_init(Value: Integer); safecall;
    property prv_init: Integer read Get_prv_init write Set_prv_init;
  end;

// *********************************************************************//
// DispIntf:  Isbjk_interfaceDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {8A3D6BCC-A790-4F3C-930D-E092B91A8C2C}
// *********************************************************************//
  Isbjk_interfaceDisp = dispinterface
    ['{8A3D6BCC-A790-4F3C-930D-E092B91A8C2C}']
    procedure sbjk_opp(czlb: OleVariant; zyh: OleVariant; var re: {??res}OleVariant; 
                       czydm: OleVariant; ksdm: OleVariant; yybm: OleVariant; yymc: OleVariant); dispid 202;
    property prv_init: Integer dispid 201;
  end;

// *********************************************************************//
// The Class Cosbjk_interface provides a Create and CreateRemote method to          
// create instances of the default interface Isbjk_interface exposed by              
// the CoClass sbjk_interface. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  Cosbjk_interface = class
    class function Create: Isbjk_interface;
    class function CreateRemote(const MachineName: string): Isbjk_interface;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : Tsbjk_interface
// Help String      : sbjk_interface Object
// Default Interface: Isbjk_interface
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  Tsbjk_interfaceProperties= class;
{$ENDIF}
  Tsbjk_interface = class(TOleServer)
  private
    FIntf: Isbjk_interface;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps: Tsbjk_interfaceProperties;
    function GetServerProperties: Tsbjk_interfaceProperties;
{$ENDIF}
    function GetDefaultInterface: Isbjk_interface;
  protected
    procedure InitServerData; override;
    function Get_prv_init: Integer;
    procedure Set_prv_init(Value: Integer);
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: Isbjk_interface);
    procedure Disconnect; override;
    procedure sbjk_opp(czlb: OleVariant; zyh: OleVariant; var re: res; czydm: OleVariant; 
                       ksdm: OleVariant; yybm: OleVariant; yymc: OleVariant);
    property DefaultInterface: Isbjk_interface read GetDefaultInterface;
    property prv_init: Integer read Get_prv_init write Set_prv_init;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: Tsbjk_interfaceProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : Tsbjk_interface
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 Tsbjk_interfaceProperties = class(TPersistent)
  private
    FServer:    Tsbjk_interface;
    function    GetDefaultInterface: Isbjk_interface;
    constructor Create(AServer: Tsbjk_interface);
  protected
    function Get_prv_init: Integer;
    procedure Set_prv_init(Value: Integer);
  public
    property DefaultInterface: Isbjk_interface read GetDefaultInterface;
  published
    property prv_init: Integer read Get_prv_init write Set_prv_init;
  end;
{$ENDIF}


procedure Register;

resourcestring
  dtlServerPage = 'ActiveX';

  dtlOcxPage = 'ActiveX';

implementation

uses ComObj;

class function Cosbjk_interface.Create: Isbjk_interface;
begin
  Result := CreateComObject(CLASS_sbjk_interface) as Isbjk_interface;
end;

class function Cosbjk_interface.CreateRemote(const MachineName: string): Isbjk_interface;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_sbjk_interface) as Isbjk_interface;
end;

procedure Tsbjk_interface.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{C4800752-5CFA-4783-A2FA-792B24787E39}';
    IntfIID:   '{8A3D6BCC-A790-4F3C-930D-E092B91A8C2C}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure Tsbjk_interface.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as Isbjk_interface;
  end;
end;

procedure Tsbjk_interface.ConnectTo(svrIntf: Isbjk_interface);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure Tsbjk_interface.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function Tsbjk_interface.GetDefaultInterface: Isbjk_interface;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor Tsbjk_interface.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := Tsbjk_interfaceProperties.Create(Self);
{$ENDIF}
end;

destructor Tsbjk_interface.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function Tsbjk_interface.GetServerProperties: Tsbjk_interfaceProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function Tsbjk_interface.Get_prv_init: Integer;
begin
    Result := DefaultInterface.prv_init;
end;

procedure Tsbjk_interface.Set_prv_init(Value: Integer);
begin
  DefaultInterface.Set_prv_init(Value);
end;

procedure Tsbjk_interface.sbjk_opp(czlb: OleVariant; zyh: OleVariant; var re: res; 
                                   czydm: OleVariant; ksdm: OleVariant; yybm: OleVariant; 
                                   yymc: OleVariant);
begin
  DefaultInterface.sbjk_opp(czlb, zyh, re, czydm, ksdm, yybm, yymc);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor Tsbjk_interfaceProperties.Create(AServer: Tsbjk_interface);
begin
  inherited Create;
  FServer := AServer;
end;

function Tsbjk_interfaceProperties.GetDefaultInterface: Isbjk_interface;
begin
  Result := FServer.DefaultInterface;
end;

function Tsbjk_interfaceProperties.Get_prv_init: Integer;
begin
    Result := DefaultInterface.prv_init;
end;

procedure Tsbjk_interfaceProperties.Set_prv_init(Value: Integer);
begin
  DefaultInterface.Set_prv_init(Value);
end;

{$ENDIF}

procedure Register;
begin
  RegisterComponents(dtlServerPage, [Tsbjk_interface]);
end;

end.
