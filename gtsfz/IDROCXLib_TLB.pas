unit IDROCXLib_TLB;

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
// File generated on 2010-07-19 15:08:31 from Type Library described below.

// ************************************************************************  //
// Type Lib: C:\WINDOWS\system32\IdrOcx.dll (1)
// LIBID: {414322FF-287B-4020-A250-5C70E637838B}
// LCID: 0
// Helpfile: 
// HelpString: IdrOcx 1.0 Type Library
// DepndLst: 
//   (1) v2.0 stdole, (C:\WINDOWS\system32\stdole2.tlb)
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

uses Windows, ActiveX, Classes, Graphics, OleCtrls, OleServer, StdVCL, Variants;
  


// *********************************************************************//
// GUIDS declared in the TypeLibrary. Following prefixes are used:        
//   Type Libraries     : LIBID_xxxx                                      
//   CoClasses          : CLASS_xxxx                                      
//   DISPInterfaces     : DIID_xxxx                                       
//   Non-DISP interfaces: IID_xxxx                                        
// *********************************************************************//
const
  // TypeLibrary Major and minor versions
  IDROCXLibMajorVersion = 1;
  IDROCXLibMinorVersion = 0;

  LIBID_IDROCXLib: TGUID = '{414322FF-287B-4020-A250-5C70E637838B}';

  DIID__IMyIdrOcxEvents: TGUID = '{FCC0DD31-7621-47B0-94B2-CE27D9DA4168}';
  IID_IMyIdrOcx: TGUID = '{5C8CD1CD-CB19-4C7E-9C59-AC5504503845}';
  CLASS_MyIdrOcx: TGUID = '{220C3AD1-5E9D-4B06-870F-E34662E2DFEA}';
type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary                    
// *********************************************************************//
  _IMyIdrOcxEvents = dispinterface;
  IMyIdrOcx = interface;
  IMyIdrOcxDisp = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library                       
// (NOTE: Here we map each CoClass to its Default Interface)              
// *********************************************************************//
  MyIdrOcx = IMyIdrOcx;


// *********************************************************************//
// DispIntf:  _IMyIdrOcxEvents
// Flags:     (4096) Dispatchable
// GUID:      {FCC0DD31-7621-47B0-94B2-CE27D9DA4168}
// *********************************************************************//
  _IMyIdrOcxEvents = dispinterface
    ['{FCC0DD31-7621-47B0-94B2-CE27D9DA4168}']
    procedure GetData; dispid 1;
    procedure ClearData; dispid 2;
    procedure GetErrMsg; dispid 3;
  end;

// *********************************************************************//
// Interface: IMyIdrOcx
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {5C8CD1CD-CB19-4C7E-9C59-AC5504503845}
// *********************************************************************//
  IMyIdrOcx = interface(IDispatch)
    ['{5C8CD1CD-CB19-4C7E-9C59-AC5504503845}']
    function Get_Name: WideString; safecall;
    function Get_Sex: WideString; safecall;
    function Get_CommPort: Smallint; safecall;
    procedure Set_CommPort(pVal: Smallint); safecall;
    procedure ReadCard2; safecall;
    procedure Start; safecall;
    procedure Stop; safecall;
    function Get_Nation: WideString; safecall;
    function Get_Born: WideString; safecall;
    function Get_Address: WideString; safecall;
    function Get_CardNo: WideString; safecall;
    function Get_Police: WideString; safecall;
    function Get_AppAddress: WideString; safecall;
    function Get_StartDate: WideString; safecall;
    function Get_EndDate: WideString; safecall;
    function Get_ErrMsg: WideString; safecall;
    function Get_NameL: WideString; safecall;
    function Get_SexL: WideString; safecall;
    function Get_NationL: WideString; safecall;
    function Get_BornL: WideString; safecall;
    function Get_Activity: WideString; safecall;
    function Get_ActivityL: WideString; safecall;
    function Get_PersonName: WideString; safecall;
    function Get_PersonNameL: WideString; safecall;
    procedure ConvertTxtToWlt(const txtFile: WideString; const wltFile: WideString); safecall;
    procedure ConvertWltToTxt(const wltFile: WideString; const txtFile: WideString); safecall;
    procedure ConvertTxtToBmp(const txtFile: WideString); safecall;
    function Get_StartDateL: WideString; safecall;
    function Get_ActivityLFrom: WideString; safecall;
    function Get_ActivityLTo: WideString; safecall;
    procedure Set_PhotoPath(const Param1: WideString); safecall;
    function GetPhotoBuffer: WideString; safecall;
    function GetState: Integer; safecall;
    function ReadCard: Integer; safecall;
    function getInfo: WideString; safecall;
    function Get_SamId: WideString; safecall;
    function GetPhotoFaceData(iFace: Integer): WideString; safecall;
    function GetFaceJpgBase64(iFace: Integer): WideString; safecall;
    function PrintImage(nX: Integer; nY: Integer): Integer; safecall;
    property Name: WideString read Get_Name;
    property Sex: WideString read Get_Sex;
    property CommPort: Smallint read Get_CommPort write Set_CommPort;
    property Nation: WideString read Get_Nation;
    property Born: WideString read Get_Born;
    property Address: WideString read Get_Address;
    property CardNo: WideString read Get_CardNo;
    property Police: WideString read Get_Police;
    property AppAddress: WideString read Get_AppAddress;
    property StartDate: WideString read Get_StartDate;
    property EndDate: WideString read Get_EndDate;
    property ErrMsg: WideString read Get_ErrMsg;
    property NameL: WideString read Get_NameL;
    property SexL: WideString read Get_SexL;
    property NationL: WideString read Get_NationL;
    property BornL: WideString read Get_BornL;
    property Activity: WideString read Get_Activity;
    property ActivityL: WideString read Get_ActivityL;
    property PersonName: WideString read Get_PersonName;
    property PersonNameL: WideString read Get_PersonNameL;
    property StartDateL: WideString read Get_StartDateL;
    property ActivityLFrom: WideString read Get_ActivityLFrom;
    property ActivityLTo: WideString read Get_ActivityLTo;
    property PhotoPath: WideString write Set_PhotoPath;
    property SamId: WideString read Get_SamId;
  end;

// *********************************************************************//
// DispIntf:  IMyIdrOcxDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {5C8CD1CD-CB19-4C7E-9C59-AC5504503845}
// *********************************************************************//
  IMyIdrOcxDisp = dispinterface
    ['{5C8CD1CD-CB19-4C7E-9C59-AC5504503845}']
    property Name: WideString readonly dispid 1;
    property Sex: WideString readonly dispid 2;
    property CommPort: Smallint dispid 3;
    procedure ReadCard2; dispid 4;
    procedure Start; dispid 5;
    procedure Stop; dispid 6;
    property Nation: WideString readonly dispid 7;
    property Born: WideString readonly dispid 8;
    property Address: WideString readonly dispid 9;
    property CardNo: WideString readonly dispid 10;
    property Police: WideString readonly dispid 11;
    property AppAddress: WideString readonly dispid 12;
    property StartDate: WideString readonly dispid 13;
    property EndDate: WideString readonly dispid 14;
    property ErrMsg: WideString readonly dispid 15;
    property NameL: WideString readonly dispid 16;
    property SexL: WideString readonly dispid 18;
    property NationL: WideString readonly dispid 19;
    property BornL: WideString readonly dispid 20;
    property Activity: WideString readonly dispid 21;
    property ActivityL: WideString readonly dispid 22;
    property PersonName: WideString readonly dispid 23;
    property PersonNameL: WideString readonly dispid 24;
    procedure ConvertTxtToWlt(const txtFile: WideString; const wltFile: WideString); dispid 26;
    procedure ConvertWltToTxt(const wltFile: WideString; const txtFile: WideString); dispid 27;
    procedure ConvertTxtToBmp(const txtFile: WideString); dispid 28;
    property StartDateL: WideString readonly dispid 29;
    property ActivityLFrom: WideString readonly dispid 30;
    property ActivityLTo: WideString readonly dispid 31;
    property PhotoPath: WideString writeonly dispid 32;
    function GetPhotoBuffer: WideString; dispid 33;
    function GetState: Integer; dispid 34;
    function ReadCard: Integer; dispid 35;
    function getInfo: WideString; dispid 36;
    property SamId: WideString readonly dispid 37;
    function GetPhotoFaceData(iFace: Integer): WideString; dispid 39;
    function GetFaceJpgBase64(iFace: Integer): WideString; dispid 40;
    function PrintImage(nX: Integer; nY: Integer): Integer; dispid 41;
  end;


// *********************************************************************//
// OLE Control Proxy class declaration
// Control Name     : TMyIdrOcx
// Help String      : MyIdrOcx Class
// Default Interface: IMyIdrOcx
// Def. Intf. DISP? : No
// Event   Interface: _IMyIdrOcxEvents
// TypeFlags        : (2) CanCreate
// *********************************************************************//
  TMyIdrOcx = class(TOleControl)
  private
    FOnGetData: TNotifyEvent;
    FOnClearData: TNotifyEvent;
    FOnGetErrMsg: TNotifyEvent;
    FIntf: IMyIdrOcx;
    function  GetControlInterface: IMyIdrOcx;
  protected
    procedure CreateControl;
    procedure InitControlData; override;
  public
    procedure ReadCard2;
    procedure Start;
    procedure Stop;
    procedure ConvertTxtToWlt(const txtFile: WideString; const wltFile: WideString);
    procedure ConvertWltToTxt(const wltFile: WideString; const txtFile: WideString);
    procedure ConvertTxtToBmp(const txtFile: WideString);
    function GetPhotoBuffer: WideString;
    function GetState: Integer;
    function ReadCard: Integer;
    function getInfo: WideString;
    function GetPhotoFaceData(iFace: Integer): WideString;
    function GetFaceJpgBase64(iFace: Integer): WideString;
    function PrintImage(nX: Integer; nY: Integer): Integer;
    property  ControlInterface: IMyIdrOcx read GetControlInterface;
    property  DefaultInterface: IMyIdrOcx read GetControlInterface;
    property Name: WideString index 1 read GetWideStringProp;
    property Sex: WideString index 2 read GetWideStringProp;
    property Nation: WideString index 7 read GetWideStringProp;
    property Born: WideString index 8 read GetWideStringProp;
    property Address: WideString index 9 read GetWideStringProp;
    property CardNo: WideString index 10 read GetWideStringProp;
    property Police: WideString index 11 read GetWideStringProp;
    property AppAddress: WideString index 12 read GetWideStringProp;
    property StartDate: WideString index 13 read GetWideStringProp;
    property EndDate: WideString index 14 read GetWideStringProp;
    property ErrMsg: WideString index 15 read GetWideStringProp;
    property NameL: WideString index 16 read GetWideStringProp;
    property SexL: WideString index 18 read GetWideStringProp;
    property NationL: WideString index 19 read GetWideStringProp;
    property BornL: WideString index 20 read GetWideStringProp;
    property Activity: WideString index 21 read GetWideStringProp;
    property ActivityL: WideString index 22 read GetWideStringProp;
    property PersonName: WideString index 23 read GetWideStringProp;
    property PersonNameL: WideString index 24 read GetWideStringProp;
    property StartDateL: WideString index 29 read GetWideStringProp;
    property ActivityLFrom: WideString index 30 read GetWideStringProp;
    property ActivityLTo: WideString index 31 read GetWideStringProp;
    property PhotoPath: WideString index 32 write SetWideStringProp;
    property SamId: WideString index 37 read GetWideStringProp;
  published
    property Anchors;
    property  TabStop;
    property  Align;
    property  DragCursor;
    property  DragMode;
    property  ParentShowHint;
    property  PopupMenu;
    property  ShowHint;
    property  TabOrder;
    property  Visible;
    property  OnDragDrop;
    property  OnDragOver;
    property  OnEndDrag;
    property  OnEnter;
    property  OnExit;
    property  OnStartDrag;
    property CommPort: Smallint index 3 read GetSmallintProp write SetSmallintProp stored False;
    property OnGetData: TNotifyEvent read FOnGetData write FOnGetData;
    property OnClearData: TNotifyEvent read FOnClearData write FOnClearData;
    property OnGetErrMsg: TNotifyEvent read FOnGetErrMsg write FOnGetErrMsg;
  end;

procedure Register;

resourcestring
  dtlServerPage = 'ActiveX';

  dtlOcxPage = 'ActiveX';

implementation

uses ComObj;

procedure TMyIdrOcx.InitControlData;
const
  CEventDispIDs: array [0..2] of DWORD = (
    $00000001, $00000002, $00000003);
  CControlData: TControlData2 = (
    ClassID: '{220C3AD1-5E9D-4B06-870F-E34662E2DFEA}';
    EventIID: '{FCC0DD31-7621-47B0-94B2-CE27D9DA4168}';
    EventCount: 3;
    EventDispIDs: @CEventDispIDs;
    LicenseKey: nil (*HR:$80004002*);
    Flags: $00000000;
    Version: 401);
begin
  ControlData := @CControlData;
  TControlData2(CControlData).FirstEventOfs := Cardinal(@@FOnGetData) - Cardinal(Self);
end;

procedure TMyIdrOcx.CreateControl;

  procedure DoCreate;
  begin
    FIntf := IUnknown(OleObject) as IMyIdrOcx;
  end;

begin
  if FIntf = nil then DoCreate;
end;

function TMyIdrOcx.GetControlInterface: IMyIdrOcx;
begin
  CreateControl;
  Result := FIntf;
end;

procedure TMyIdrOcx.ReadCard2;
begin
  DefaultInterface.ReadCard2;
end;

procedure TMyIdrOcx.Start;
begin
  DefaultInterface.Start;
end;

procedure TMyIdrOcx.Stop;
begin
  DefaultInterface.Stop;
end;

procedure TMyIdrOcx.ConvertTxtToWlt(const txtFile: WideString; const wltFile: WideString);
begin
  DefaultInterface.ConvertTxtToWlt(txtFile, wltFile);
end;

procedure TMyIdrOcx.ConvertWltToTxt(const wltFile: WideString; const txtFile: WideString);
begin
  DefaultInterface.ConvertWltToTxt(wltFile, txtFile);
end;

procedure TMyIdrOcx.ConvertTxtToBmp(const txtFile: WideString);
begin
  DefaultInterface.ConvertTxtToBmp(txtFile);
end;

function TMyIdrOcx.GetPhotoBuffer: WideString;
begin
  Result := DefaultInterface.GetPhotoBuffer;
end;

function TMyIdrOcx.GetState: Integer;
begin
  Result := DefaultInterface.GetState;
end;

function TMyIdrOcx.ReadCard: Integer;
begin
  Result := DefaultInterface.ReadCard;
end;

function TMyIdrOcx.getInfo: WideString;
begin
  Result := DefaultInterface.getInfo;
end;

function TMyIdrOcx.GetPhotoFaceData(iFace: Integer): WideString;
begin
  Result := DefaultInterface.GetPhotoFaceData(iFace);
end;

function TMyIdrOcx.GetFaceJpgBase64(iFace: Integer): WideString;
begin
  Result := DefaultInterface.GetFaceJpgBase64(iFace);
end;

function TMyIdrOcx.PrintImage(nX: Integer; nY: Integer): Integer;
begin
  Result := DefaultInterface.PrintImage(nX, nY);
end;

procedure Register;
begin
  RegisterComponents(dtlOcxPage, [TMyIdrOcx]);
end;

end.
