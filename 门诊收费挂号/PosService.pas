// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : http://192.173.1.10/HisPosWcf/PosService.svc?wsdl
//  >Import : http://192.173.1.10/HisPosWcf/PosService.svc?wsdl:0
//  >Import : http://192.173.1.10/HisPosWcf/PosService.svc?xsd=xsd0
//  >Import : http://192.173.1.10/HisPosWcf/PosService.svc?xsd=xsd1
// Encoding : utf-8
// Version  : 1.0
// (2014-08-20 17:08:45 - - $Rev: 7300 $)
// ************************************************************************ //

unit PosService;

interface

uses InvokeRegistry, SOAPHTTPClient, Types, XSBuiltIns;

const
  IS_OPTN = $0001;
  IS_NLBL = $0004;


type

  // ************************************************************************ //
  // The following types, referred to in the WSDL document are not being represented
  // in this file. They are either aliases[@] of other types represented or were referred
  // to but never[!] declared in the document. The types from the latter category
  // typically map to predefined/known XML or Borland types; however, they could also 
  // indicate incorrect WSDL documents that failed to declare or import a schema type.
  // ************************************************************************ //
  // !:string          - "http://www.w3.org/2001/XMLSchema"[Gbl]



  // ************************************************************************ //
  // Namespace : http://tempuri.org/
  // soapAction: http://tempuri.org/IPosService/HisToBank
  // transport : http://schemas.xmlsoap.org/soap/http
  // style     : document
  // binding   : BasicHttpBinding_IPosService
  // service   : PosService
  // port      : BasicHttpBinding_IPosService
  // URL       : http://192.173.1.10/HisPosWcf/PosService.svc
  // ************************************************************************ //
  IPosService = interface(IInvokable)
  ['{A6237247-42FE-D40A-DC3F-106DB8993459}']
    function  HisToBank(const info: WideString): WideString; stdcall;
  end;

function GetIPosService(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): IPosService;


implementation
  uses SysUtils, p_func;

function GetIPosService(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): IPosService;
const
  defWSDL = 'http://192.173.1.10/HisPosWcf/PosService.svc?wsdl';
  defURL  = 'http://192.173.1.10/HisPosWcf/PosService.svc';
  defSvc  = 'PosService';
  defPrt  = 'BasicHttpBinding_IPosService';
var
  RIO: THTTPRIO;
  defWSDL1,defURL1 : string;
begin
  Result := nil;
  defWSDL1 := 'http://'+pub_jkk_yhip+'/HisPosWcf/PosService.svc?wsdl';
  defURL1 := 'http://'+pub_jkk_yhip+'/HisPosWcf/PosService.svc';
  if (Addr = '') then
  begin
    if UseWSDL then
      Addr := defWSDL1
    else
      Addr := defURL1;
  end;
  if HTTPRIO = nil then
    RIO := THTTPRIO.Create(nil)
  else
    RIO := HTTPRIO;
  try
    Result := (RIO as IPosService);
    if UseWSDL then
    begin
      RIO.WSDLLocation := Addr;
      RIO.Service := defSvc;
      RIO.Port := defPrt;
    end else
      RIO.URL := Addr;
  finally
    if (Result = nil) and (HTTPRIO = nil) then
      RIO.Free;
  end;
end;


initialization
  InvRegistry.RegisterInterface(TypeInfo(IPosService), 'http://tempuri.org/', 'utf-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(IPosService), 'http://tempuri.org/IPosService/HisToBank');
  InvRegistry.RegisterInvokeOptions(TypeInfo(IPosService), ioDocument);

end.