unit debugHandler;

interface
uses Windows, SysUtils ;

{$REGION '..��������'}
function FindSvrSwitch(const Switch: string; const Chars: TSysCharSet;
  IgnoreCase: Boolean=true): Boolean;

procedure addlog(Astr:string);overload;
procedure addlog(Astr:string; const Args: array of const);overload;
{$ENDREGION '..��������'}

const
  EOL = #13#10;

var
{$REGION '..Debug Flag'}
  isCusDebug:Boolean=False;
  withOutBaSvr:Boolean=False;
  withOutUpdate:Boolean=False;
{$ENDREGION '..Debug Flag'}

  ExePath : string;   //��ǰ��ִ���ļ�·��
  Logpath : string;   //��־�ļ�·��


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

{$REGION '��־���'}
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
{$ENDREGION '��־���'}

procedure init;
var
  aMsg:string;
begin
  ExePath := ExtractFilePath(ParamStr(0));

  if FindSvrSwitch('?',['-','\','/'], True)then
  begin
    aMsg := '�����ļ�����' + EOL;
    aMsg := aMsg + '-----------------------------------------------------' + EOL;
    aMsg := aMsg + '-debug  ��������ģʽ���ڵ�ǰ����Ŀ¼�����������־��' +Eol;
    aMsg := aMsg + '-withOutBaSvr  �����Ӳ�����������' +Eol;
    aMsg := aMsg + '-withOutUpdate �����������С�' +Eol;

    MessageBox(0, PChar(aMsg), '��ʾ', MB_OK + MB_ICONINFORMATION);
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
