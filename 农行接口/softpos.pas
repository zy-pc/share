unit softpos;

interface
uses
  windows, SysUtils;

type
  jyRes = class //交易返回
    _zt: array[0..1] of char;
    _kh: array[0..18] of char;
    _jylb: char;
    _je: array[0..11] of char;
    _lsh: array[0..5] of char;
    _yhzdh: array[0..20] of Char;
  public
    function zt: string;
    function kh: string;
    function jylb: Char;
    function je: Double;
    function lsh: string;
    function yhzdh: string;
    function AsString: string;
  end;

function nh_hkxf(xfje: Double): jyRes;
function nh_hktf(xfje: Double; lsh: string = ''): jyRes;
function nh_qbgn: string;
procedure nh_print(lj, dyjmc: PChar);
procedure getComName;


var
  compName: string;
  PoseName: string;



implementation
uses
  p_dm;
var
  CreditTrans: function(strin: pchar; var strout: array of Char): integer; stdcall;
  sp_print_file: function(lj, dyjmc, zh, zt: Pchar; sz: Integer): Integer; stdcall;



{$REGION '农行银石接口 返回参数赋值'}

function jyRes.zt: string;
begin
  Result := string(_zt);
end;

function jyRes.kh: string;
begin
  Result := string(_kh);
end;

function jyRes.jylb: char;
begin
  Result := _jylb;
end;

function jyRes.je: Double;
begin
  Result := StrToFloat(string(_je)) / 100;
end;

function jyRes.lsh: string;
begin
  Result := string(_lsh);
end;

function jyRes.yhzdh: string;
begin
  Result := string(_yhzdh);
end;

function jyRes.AsString: string;
begin
  Result := string(_zt) + string(_kh) + string(_jylb) + string(_je) + string(_lsh) + string(_yhzdh);
end;
{$ENDREGION}

//执行交易

function DoTrans(xfje: string; jylx: Char = '0'): string;
var
  strin: string;
  strout: array[0..99] of char;
  Res: integer;
  Addr: DWORD;
begin
  getComName;
  Addr := LoadLibrary('softpos.dll');
  CreditTrans := GetProcAddress(Addr, 'CreditTrans');

  ZeroMemory(@strout, SizeOf(strout));
  if length(compName) > 10 then begin //款台号
    compName := Copy(compName, 1, 10);
  end else if length(compName) < 10 then begin
    compName := compName + StringOfChar(' ', 10 - length(compName));
  end;

  if length(PoseName) > 10 then begin //操作员号
    PoseName := Copy(PoseName, 1, 10);
  end else if length(PoseName) < 10 then begin
    PoseName := PoseName + StringOfChar(' ', 10 - length(PoseName));
  end;

  if length(xfje) > 12 then begin //金额(分)
    xfje := Copy(xfje, 1, 12);
  end else if length(xfje) < 12 then begin
    xfje := StringOfChar('0', 12 - length(xfje)) + xfje;
  end;

  strin := compName + PoseName + jylx + xfje + '000000';

  ZeroMemory(@strout, Length(strout));

  Res := CreditTrans(pchar(strin), strout);

  Result := strout;
  FreeLibrary(Addr);
end;

//格式化交易返回结果

function FormatRes(str: string): jyRes;
var
  res: jyRes;
begin
  res := jyRes.Create;
  str := '0000' + str;
  CopyMemory(@res, @str, SizeOf(jyRes));
  Result := res;
end;

function nh_qbgn: string;
begin
  Result := DoTrans('');
end;

//划卡消费 ,,

function nh_hkxf(xfje: Double): jyRes;
var
  je: string;
begin
  je := FloatToStr(xfje * 100);
  je := StringOfChar('0', 12 - length(je)) + je;
  je := DoTrans(je, 'C');
  Result := FormatRes(je);
end;

//划卡退费

function nh_hktf(xfje: Double; lsh: string = ''): jyRes;
var
  je: string;
begin
  je := FloatToStr(xfje * 100);
  je := StringOfChar('0', 12 - length(je)) + je;
  je := DoTrans(je, 'D');
  Result := FormatRes(je);
end;

procedure nh_print(lj, dyjmc: PChar);
var
  Addr: DWORD;
begin
  Addr := LoadLibrary('softpos3.dll');
  sp_print_file := GetProcAddress(Addr, 'sp_print_file');
  sp_print_file(lj, dyjmc, Pchar('24'), PChar('宋体'), 0);
end;

procedure getComName;
var
  c: array[0..255] of char;
  nSize: DWORD;
begin
  nSize := 255;
  GetComputerName(c, nSize);
  compName := c;
  compName := copy(compName, 0, 10);
  PoseName := pub_czydm;
  PoseName := PoseName + StringOfChar(' ', 10 - length(PoseName));
end;

//initialization
//  getComName;


end.
