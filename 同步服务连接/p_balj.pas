unit p_balj;

interface

uses
  Windows, Classes, SysUtils, BASE64, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, StdCtrls, Registry,Graphics ;

type
  Tbalj_Tcp_conn = class(TThread)
  private
    FTcpC:TIdTCPClient;   //通讯用Tcp
    FLbl:TLabel;          //显示用Label
    sys_baljIp:string;    //通讯的Ip地址
    FSucced:Boolean;      //连接状态，是否成功；
    { Private declarations }
  protected
    procedure Execute; override;
    
    function initConn:Boolean;
    procedure UpdateLabel;
    procedure doUpdateLabel;
  public
    constructor Create(var Lbl: TLabel);
    destructor Destroy; override;
    procedure Terminate;
    function Senddata(Atype, Azyh:string):Boolean;
  end;
resourcestring
  Eol = #13#10;
  sys_baljPort = '7456';
  sys_baljSucc = '与 病案信息同步服务连接 成功！';
  sys_baljFail = '与 病案信息同步服务连接 失败！';

implementation

{ Important: Methods and properties of objects in visual components can only be
  used in a method called using Synchronize, for example,

      Synchronize(UpdateCaption);

  and UpdateCaption could look like,

    procedure balj_Tcp_conn.UpdateCaption;
    begin
      Form1.Caption := 'Updated in a thread';
    end; }

{ balj_Tcp_conn }

procedure Tbalj_Tcp_conn.UpdateLabel;
begin
  FLbl.Font.Style := [fsBold];
  if FSucced then
  begin
    FLbl.Font.Color := clGreen;
    FLbl.Caption := sys_baljSucc;
  end else begin
    FLbl.Font.Color := clRed;
    FLbl.Caption := sys_baljFail;
  end;
end;

procedure Tbalj_Tcp_conn.doUpdateLabel;
begin
  Synchronize(UpdateLabel);
end;

function Tbalj_Tcp_conn.initConn:Boolean;
var
  Reg:Tregistry;
  RStr:string;
begin
  Result := True;
  Reg:=Tregistry.Create;
  try
    Reg.RootKey:=HKEY_LOCAL_MACHINE;
    if Reg.OpenKey('Software\myserver',true) then
    begin
      if Reg.ReadString('basvr')<>'' then
      begin
        sys_baljIp:=Reg.ReadString('basvr');
      end else begin
        sys_baljIp:=Reg.ReadString('servername');
        if Pos(',', sys_baljIp)>0 then
        begin
          sys_baljIp := Copy(sys_baljIp,1,Pos(',',sys_baljIp)-1);
        end else if Pos('\', sys_baljIp)>0 then
        begin
          sys_baljIp := Copy(sys_baljIp,1,Pos('\',sys_baljIp)-1);
        end;
        if sys_baljIp='.' then
          sys_baljIp := '127.0.0.1';
      end;
    end;
    reg.CloseKey ;
  finally
    Reg.Free ;
  end;

  FTcpC.Disconnect;
  FTcpC.Host := sys_baljIp;
  FTcpC.Port := StrToInt(sys_baljPort);
  //IdTCPClient1.ConnectTimeout := 20000;    //20s
  try
    FTcpC.Connect;
    FTcpC.IOHandler.WriteLn(EncodeBase64('Online'));
    FTcpC.IOHandler.ReadTimeout := 20000;
    RStr := FTcpC.IOHandler.ReadLn;
    RStr := DecodeBase64(RStr);
    if RStr<>'Online' then
    begin
      Result := False;
    end;
  except
    on e:Exception do
    begin
      Result := False;
    end;
  end;
end;
procedure Tbalj_Tcp_conn.Execute;
var
  RStr:string;
begin
  while not Self.Terminated do
  begin
    Sleep(1000);  //5s
    try
      if FTcpC.Connected then
      begin
        FTcpC.IOHandler.WriteLn(EncodeBase64('Online'));
        RStr := FTcpC.IOHandler.ReadLn;
        RStr := DecodeBase64(RStr);
        if RStr<>'Online' then
        begin
          FTcpC.Disconnect;
          Abort;
        end;
      end else
      begin
        FTcpC.Connect;
        FSucced := True;
      end;
    except
      on e:Exception do
      begin
        FTcpC.Disconnect;
        FSucced := False;
      end;
    end;
    doUpdateLabel;
  end;
end;

constructor Tbalj_Tcp_conn.Create(var Lbl: TLabel);
begin
  FTcpC := TIdTCPClient.Create;
  FLbl := Lbl;
  FSucced := initConn;
  doUpdateLabel;
  
  inherited Create(False);
end;

destructor Tbalj_Tcp_conn.Destroy;
begin
  try
    FTcpC.Disconnect;
    FreeAndNil(FTcpC);
  except
  end;
  inherited Destroy;
end;

procedure Tbalj_Tcp_conn.Terminate;
begin
  inherited Terminate;
  Self.WaitFor;
  FreeAndNil(Self);
end;

function Tbalj_Tcp_conn.Senddata(Atype, Azyh:string):Boolean;
var
  RStr:string;
begin
  Result := True;
  try
    if not FTcpC.Connected then
      FTcpC.Connect;

    if FTcpC.Connected then
    begin
      FTcpC.IOHandler.WriteLn(EncodeBase64(Atype+Eol+Azyh));
      RStr := FTcpC.IOHandler.ReadLn;
      RStr := DecodeBase64(RStr);
      if RStr<>Atype then
      begin
        Abort;
      end;
    end;
  except
    Result := False;
  end;
end;


end.
