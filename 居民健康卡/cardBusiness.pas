// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : http://10.10.211.30:8080/mycard/services/cardBusiness?wsdl
//  >Import : http://10.10.211.30:8080/mycard/services/cardBusiness?wsdl:0
// Version  : 1.0
// (2014-10-27  8:01:43 - * $Rev: 5154 $)
// ************************************************************************ //

unit cardBusiness;

interface

uses InvokeRegistry, SOAPHTTPClient, Types, XSBuiltIns;

const
  IS_OPTN = $0001;
  IS_UNBD = $0002;
  IS_NLBL = $0004;
  IS_UNQL = $0008;
  IS_ATTR = $0010;
  IS_TEXT = $0020;

type

  // ************************************************************************ //
  // The following types, referred to in the WSDL document are not being represented
  // in this file. They are either aliases[@] of other types represented or were referred
  // to but never[!] declared in the document. The types from the latter category
  // typically map to predefined/known XML or Borland types; however, they could also 
  // indicate incorrect WSDL documents that failed to declare or import a schema type.
  // ************************************************************************ //
  // !:string          - "http://www.w3.org/2001/XMLSchema"



  // ************************************************************************ //
  // Namespace : http://cardbusiness.webservice.common.yinhai.com/
  // transport : http://schemas.xmlsoap.org/soap/http
  // style     : document
  // binding   : CardBusinessServiceSoapBinding
  // service   : CardBusinessService
  // port      : CardBusinessPort
  // URL       : http://10.10.211.30:8080/mycard/services/cardBusiness
  // ************************************************************************ //
  CardBusinessInterface = interface(IInvokable)
  ['{54E9EEB5-B738-3077-AED7-DB1DBB8BF7E4}']
    function  business(const businessNO: WideString; const xml: WideString): WideString; stdcall;
  end;

function GetCardBusinessInterface(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): CardBusinessInterface;


implementation
  uses SysUtils;

function GetCardBusinessInterface(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): CardBusinessInterface;
const
// defWSDL = 'http://191.167.10.2:8080/mycard/services/cardBusiness?wsdl';   //10.10.211.30
  defWSDL = 'http://191.167.10.2:8080/scrhc/services/cardBusiness?wsdl';   //10.10.211.30
  defURL  = 'http://191.167.10.2:8080/scrhc/services/cardBusiness';
  defSvc  = 'CardBusinessService';
  defPrt  = 'CardBusinessPort';
var
  RIO: THTTPRIO;
begin
  Result := nil;
  if (Addr = '') then
  begin
    if UseWSDL then
      Addr := defWSDL
    else
      Addr := defURL;
  end;
  if HTTPRIO = nil then
    RIO := THTTPRIO.Create(nil)
  else
    RIO := HTTPRIO;
  try
    Result := (RIO as CardBusinessInterface);
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
  InvRegistry.RegisterInterface(TypeInfo(CardBusinessInterface), 'http://cardbusiness.webservice.common.yinhai.com/', 'utf-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(CardBusinessInterface), '');
 // InvRegistry.RegisterInvokeOptions(TypeInfo(CardBusinessInterface), ioDocument);

end.