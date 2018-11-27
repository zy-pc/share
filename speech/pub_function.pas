unit pub_function;

interface
uses Classes, SysUtils, Forms, dialogs, registry, windows, xmldom, XMLIntf, msxmldom, XMLDoc,
  IdTCPClient;
const
  ver = '1.0';
  Enc = 'GBK';
  sta = 'yes';
function InitMsgClient( loginName: string ): string; stdcall;
function dp( ckh: Integer; xsnr: string ): string; stdcall;
function jh( nr: string ): string; stdcall;
function InitClient: string;
function CreateScreenXml( ckh, xsnr: string ): string;
function CreateSpObj( nr: string ): string;

type
  mythread = class( Tthread )
    constructor create( port: Integer; host: string; timeout: integer;
      nr: string );
  private
    procedure Execute; override;
  var
    prv_port: Integer;
    prv_host: string;
    prv_timeout: integer;
    prv_nr: string
  end;
var
  init: Boolean = false;
  serverip: string;
  spip: string;
  lc: string;
  u_name: string = 'sys_mzsf';
implementation
uses p_dm, p_func, p_client, p_Ordpub;

function InitMsgClient( loginName: string ): string;
var
  res: string;
begin
  res := '1';
  u_name := loginName;
  if not init then
  begin
    res := initclient;
  end;
  result := res;
end;

function InitClient: string;
var
  res: string;
  reg: Tregistry;
  keyname: string;
begin
  try
    //0、读取楼层
    res := '1';
    Reg := Tregistry.Create;
    try
      Reg.RootKey := HKEY_LOCAL_MACHINE;
      KeyName := 'Software\myserver';
      if Reg.OpenKey( KeyName, false ) then
      begin
        lc := Reg.ReadString( 'lc' );
      end
      else
      begin
        Reg.RootKey := HKEY_CURRENT_USER;
        KeyName := 'Software\myserver';
        if Reg.OpenKey( KeyName, false ) then
        begin
          lc := Reg.ReadString( 'lc' );
        end;
      end;
      reg.CloseKey;
    finally
      Reg.Free;
    end;

    if trim( lc ) = '' then
    begin
      res := '楼层未设置';
    end;
    //1、建立数据库连接
    //username := u_name;
    //application.CreateForm(tfrm_func, frm_func);
    //Application.CreateForm(TDM_data, DM_data);
    //2、建立TCP通讯连接
    application.CreateForm( Tfrm_client, frm_client );
    frm_client.qry_get_server.close;
    frm_client.qry_get_server.sql.text := SQL_GET_SERVER + ' where lb =' + inttostr( integer( JhServer ) );
    frm_client.qry_get_server.Open;
    //3.连接大屏显示服务器
    if frm_client.qry_get_server.locate( 'lb', integer( JhServer ), [] ) then
    begin
      serverip := trim( frm_client.qry_get_server.FieldByName( 'ip' ).AsString );
    end
    else
    begin
      res := res + '|未找到排队服务器';
    end;
    frm_client.qry_get_server.close;
    frm_client.qry_get_server.sql.text := SQL_GET_SERVER + ' where lc =' + lc;
    frm_client.qry_get_server.Open;
    spip := trim( frm_client.qry_get_server.FieldByName( 'ip' ).AsString );
    //4.连接语音服务器             lb =' + inttostr( integer( SpeechServer ) ) + ' and
//    if frm_client.qry_get_server.locate( 'lb', integer( SpeechServer ), [] ) then
//    begin
//
//    end
//    else
//    begin
//      res := res + '|未找到' + lc + '楼语音服务器';
//    end;
    init := true;
  except
    init := false;
  end;
  result := res;
end;

function CreateSpObj( nr: string ): string;
var
  res: string;
  MDoc: TXMLDocument;
  aNode: IXMLNode;
  aNode1: IXMLNode;
begin
  MDoc := TXMLDocument.Create( nil );
  MDoc.Active := true; //激活XMLDoc,自动初始化空的XML文档
  MDoc.Version := ver;
  MDoc.Encoding := Enc;
  MDoc.standalone := sta;
  //加入根结点
  aNode := MDoc.AddChild( 'scsx' );
  aNode1 := aNode.AddChild( 'control' );
  aNode1.AddChild( 'jylb' ).Text := SPEECH;
  aNode1.AddChild( 'nr' ).Text := nr;
  result := mdoc.XML.Text;
end;

function CreateScreenXml( ckh, xsnr: string ): string;
var
  res: string;
  MDoc: TXMLDocument;
  aNode: IXMLNode;
  aNode1: IXMLNode;
  aNode2: IXMLNode;
begin
  MDoc := TXMLDocument.Create( nil );
  MDoc.Active := true; //激活XMLDoc,自动初始化空的XML文档
  MDoc.Version := ver;
  MDoc.Encoding := Enc;
  MDoc.standalone := sta;
  //加入根结点
  aNode := MDoc.AddChild( 'scsx' );
  aNode1 := aNode.AddChild( 'control' );
  aNode1.AddChild( 'jylb' ).Text := DPXS;
  aNode1.AddChild( 'ckh' ).Text := ckh;
  aNode1.AddChild( 'xsnr' ).Text := xsnr;
  aNode1.AddChild('yfdm').Text := pub_ksdm;
  result := mdoc.XML.Text;
end;

function dp( ckh: Integer; xsnr: string ): string;
var
  res: string;
  cp_dp: TIdTCPClient;
begin
  if not init then
  begin
    initclient;
  end;
  res := CreateScreenXml( IntToStr( ckh ), xsnr );
  mythread.create( TCPSERVERPORT, serverip, TIMEOUT, res );
  {
  cp_dp := TIdTCPClient.Create( nil );
  try
    cp_dp.Port := TCPSERVERPORT;
    cp_dp.Host := serverip;
    cp_dp.ConnectTimeout := TIMEOUT;
    application.ProcessMessages;
    cp_dp.Connect;
    application.ProcessMessages;
    cp_dp.Socket.Write( res + #10 );
    application.ProcessMessages;
  except
  end;
  cp_dp.Free;    }
end;

function jh( nr: string ): string;
var
  xml: string;
  cp_jh: TIdTCPClient;
begin
  if not init then
  begin
    initclient;
  end;
  xml := CreateSpObj( nr );
  mythread.create( TCPSPEECHPORT, spip, TIMEOUT, xml );
  {try
    cp_jh := TIdTCPClient.Create( nil );
    cp_jh.Port := TCPSPEECHPORT;
    cp_jh.Host := spip;
    cp_jh.ConnectTimeout := TIMEOUT;
    application.ProcessMessages;
    cp_jh.Connect;
    application.ProcessMessages;
    cp_jh.Socket.Write( xml + #10 );
    application.ProcessMessages;
  except
  end;
  cp_jh.Free;  }
end;
{ mythread }

constructor mythread.create( port: Integer; host: string; timeout: integer; nr: string );

begin
  inherited create( false );
  prv_port := port;
  prv_host := host;
  prv_timeout := timeout;
  prv_nr := nr;
  freeonterminate := true;
end;

procedure mythread.Execute;
var
  cp_jh: TIdTCPClient;
begin
  inherited;
  try
    cp_jh := TIdTCPClient.Create( nil );
    cp_jh.Port := prv_port;
    cp_jh.Host := prv_host;
    cp_jh.ConnectTimeout := prv_timeout;
    cp_jh.Connect;
    cp_jh.Socket.Write( prv_nr + #10 );
    cp_jh.Free;
  except
  end;
end;

end.

