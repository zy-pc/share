unit debugHandler;

interface
uses Windows, SysUtils ;

{$REGION '..函数定义'}
function FindSvrSwitch(const Switch: string; const Chars: TSysCharSet;
  IgnoreCase: Boolean=true): Boolean;

procedure addlog(Astr:string);overload;
procedure addlog(Astr:string; const Args: array of const);overload;
{$ENDREGION '..函数定义'}

const
  EOL = #13#10;

var
{$REGION '..Debug Flag'}
  isCusDebug:Boolean=False;
  withOutBaSvr:Boolean=False;
  withOutUpdate:Boolean=False;
{$ENDREGION '..Debug Flag'}

  ExePath : string;   //当前可执行文件路径
  Logpath : string;   //日志文件路径


implementation

function FindSvrSwitch(const Switch: string; const Chars: TSysCharSet;
  IgnoreCase: Boolean=true): Boolean;
var
  I: Integer;
  S: string;
begin
  for I := 1 to System.ParamCount do
  begin
    S := System.ParamStr(I);
    if (Chars = []) or (S[1] in Chars) then
      if IgnoreCase then
      begin
        if (AnsiCompareText(Copy(S, 2, Maxint), Switch) = 0) then
        begin
          Result := True;
          Exit;
        end;
      end
      else begin
        if (AnsiCompareStr(Copy(S, 2, Maxint), Switch) = 0) then
        begin
          Result := True;
          Exit;
        end;
      end;
  end;
  Result := False;
end;

{$REGION '日志相关'}
procedure addLogTofile(Astr:string);
var
  Transfilename:string;
  cmdStr:string;
begin
  Astr := FormatDateTime('yyyy-MM-dd HH:nn:ss ', now) + Astr;
  Transfilename := Logpath +
                   FormatDateTime('yyyyMMdd',Date)+'.txt';
  cmdStr := 'cmd /c echo '+Astr+' >> ' + Transfilename;
  WinExec(PAnsiChar(cmdStr),0);
end;

procedure addlog(Astr:string);
begin
  OutputDebugString(Pchar(Astr));
  addLogTofile(Astr);
end;

procedure addlog(Astr:string; const Args: array of const);
begin
  addlog(Format(Astr, Args));
end;
{$ENDREGION '日志相关'}

procedure init;
var
  aMsg:string;
begin
  ExePath := ExtractFilePath(ParamStr(0));

  if FindSvrSwitch('?',['-','\','/'], True)then
  begin
    aMsg := '帮助文件如下' + EOL;
    aMsg := aMsg + '-----------------------------------------------------' + EOL;
    aMsg := aMsg + '-debug  启动调试模式，在当前程序目录下输出调试日志。' +Eol;
    aMsg := aMsg + '-withOutBaSvr  不连接病案服务器。' +Eol;
    aMsg := aMsg + '-withOutUpdate 程序不升级运行。' +Eol;

    MessageBox(0, PChar(aMsg), '提示', MB_OK + MB_ICONINFORMATION);
    ExitProcess(0);
  end;

  if FindSvrSwitch('debug',['-','\','/'], True) then
  begin
    isCusDebug := True;
    Logpath := ExePath + 'log\';
    ForceDirectories(Logpath);
    addlog('Debug Model...');
  end;
  if FindSvrSwitch('withoutbasvr',['-','\','/'], True) then
  begin
    withOutBaSvr := True;
  end;
end;

initialization
  init;

end.
