unit sldll;

interface
uses
  Windows, SysUtils;

type
  TinStr = class //交易输入
  private
    _jydm: array[0..1] of Char; //交易代码
    _jyje: array[0..11] of Char; //交易金额
    _poslsh: array[0..5] of Char; // pos流水号
    _syjh: array[0..9] of Char; //收银机号
    _syyh: array[0..9] of Char; //收银员号
    _jsckh: array[0..14] of Char; //银行检索参考号（PBOC方式）
    _sqh: array[0..5] of Char; //授权号
    _yjyrq: array[0..7] of Char; //原交易日期
    _sblx: Char; //设备类型
    _zdyxx: array[0..75] of Char; //自定义信息（单据号或交易索引号）
    _cd2: array[0..36] of Char; //第二磁道
    _cd3: array[0..103] of Char; //第三磁道
    _yjym: array[0..1] of Char; //原交易码
    _yzdbh: array[0..14] of Char; //原终端编号
  public
    constructor Create;
    function jydm: string; overload;
    procedure jydm(val: string); overload;
    function jyje: string; overload;
    procedure jyje(val: string); overload;
    function poslsh: string; overload;
    procedure poslsh(val: string); overload;
    function syjh: string; overload;
    procedure syjh(val: string); overload;
    function syyh: string; overload;
    procedure syyh(val: string); overload;
    function jsckh: string; overload;
    procedure jsckh(val: string); overload;
    function sqh: string; overload;
    procedure sqh(val: string); overload;
    function yjyrq: string; overload;
    procedure yjyrq(val: string); overload;
    function sblx: string; overload;
    procedure sblx(val: string); overload;
    function zdyxx: string; overload;
    procedure zdyxx(val: string); overload;
    function cd2: string; overload;
    procedure cd2(val: string); overload;
    function cd3: string; overload;
    procedure cd3(val: string); overload;
    function yjym: string; overload;
    procedure yjym(val: string); overload;
    function yzdbh: string; overload;
    procedure yzdbh(val: string); overload;
    function AsString: string;
  end;
type
  ToutStr = class //交易输出
  private
    _fhm: array[0..5] of Char; //返回码
    _fhmhy: array[0..39] of Char; //返回码含义
    _poslsh: array[0..5] of Char; //pos流水号
    _sqh: array[0..5] of Char; //授权号
    _pch: array[0..5] of Char; //批次号
    _kh: array[0..18] of Char; //卡号
    _yxq: array[0..3] of Char; //有效期
    _yhh: array[0..1] of Char; //银行号
    _jsckh: array[0..11] of Char; //银行检索参考号
    _zdh: array[0..14] of Char; //终端号
    _shh: array[0..14] of Char; //商户号
    _jyje: array[0..11] of Char; //交易金额
    _mm: array[0..15] of Char; //加密后的密码
    _fqfkxx: array[0..73] of Char; //分期付款信息
    _fkhdm: array[0..7] of Char; //发卡行代码
    _yhzjjyrq: array[0..7] of Char; //银行主机交易日期
    _yhzjjysj: array[0..5] of Char; //银行主机交易时间
  public
    function fhm: string; overload;
    procedure fhm(val: string); overload;
    function fhmhy: string; overload;
    procedure fhmhy(val: string); overload;
    function poslsh: string; overload;
    procedure poslsh(val: string); overload;
    function sqh: string; overload;
    procedure sqh(val: string); overload;
    function pch: string; overload;
    procedure pch(val: string); overload;
    function kh: string; overload;
    procedure kh(val: string); overload;
    function yxq: string; overload;
    procedure yxq(val: string); overload;
    function yhh: string; overload;
    procedure yhh(val: string); overload;
    function jsckh: string; overload;
    procedure jsckh(val: string); overload;
    function zdh: string; overload;
    procedure zdh(val: string); overload;
    function shh: string; overload;
    procedure shh(val: string); overload;
    function jyje: string; overload;
    procedure jyje(val: string); overload;
    function mm: string; overload;
    procedure mm(val: string); overload;
    function fqfkxx: string; overload;
    procedure fqfkxx(val: string); overload;
    function fkhdm: string; overload;
    procedure fkhdm(val: string); overload;
    function yhzjjyrq: string; overload;
    procedure yhzjjyrq(val: string); overload;
    function yhzjjysj: string; overload;
    procedure yhzjjysj(val: string); overload;
    function AsString: string;
  end;

implementation

{$REGION 'TinStr Func in Here'}

constructor TinStr.Create;
begin
  FillMemory(@pChar(Self)[4], 304, 32);
end;

function TinStr.AsString: string;
begin
  Result := string(_jydm) +
    string(_jydm) +
    string(_jyje) +
    string(_poslsh) +
    string(_syjh) +
    string(_syyh) +
    string(_jsckh) +
    string(_sqh) +
    string(_yjyrq) +
    string(_sblx) +
    string(_zdyxx) +
    string(_cd2) +
    string(_cd3) +
    string(_yjym) +
    string(_yzdbh);
end;

function TinStr.jydm: string;
begin
  Result := string(_jydm);
end;

procedure TinStr.jydm(val: string);
begin
  StrPCopy(_jydm, val);
end;

function TinStr.jyje: string;
begin
  Result := string(_jyje);
end;

procedure TinStr.jyje(val: string);
begin
  StrPCopy(_jyje, val);
end;

function TinStr.poslsh: string;
begin
  Result := string(_poslsh);
end;

procedure TinStr.poslsh(val: string);
begin
  StrPCopy(_poslsh, val);
end;

function TinStr.syjh: string;
begin
  Result := string(_syjh);
end;

procedure TinStr.syjh(val: string);
begin
  StrPCopy(_syjh, val);
end;

function TinStr.syyh: string;
begin
  Result := string(_syyh);
end;

procedure TinStr.syyh(val: string);
begin
  StrPCopy(_syyh, val);
end;

function TinStr.jsckh: string;
begin
  Result := string(_jsckh);
end;

procedure TinStr.jsckh(val: string);
begin
  StrPCopy(_jsckh, val);
end;

function TinStr.sqh: string;
begin
  Result := string(_sqh);
end;

procedure TinStr.sqh(val: string);
begin
  StrPCopy(_sqh, val);
end;

function TinStr.yjyrq: string;
begin
  Result := string(_yjyrq);
end;

procedure TinStr.yjyrq(val: string);
begin
  StrPCopy(_yjyrq, val);
end;

function TinStr.sblx: string;
begin
  Result := string(_sblx);
end;

procedure TinStr.sblx(val: string);
begin
  if length(val) > 0 then begin
    _sblx := val[1];
  end else begin
    _sblx := #32;
  end;
end;

function TinStr.zdyxx: string;
begin
  Result := string(_zdyxx);
end;

procedure TinStr.zdyxx(val: string);
begin
  StrPCopy(_zdyxx, val);
end;

function TinStr.cd2: string;
begin
  Result := string(_cd2);
end;

procedure TinStr.cd2(val: string);
begin
  StrPCopy(_cd2, val);
end;

function TinStr.cd3: string;
begin
  Result := string(_cd3);
end;

procedure TinStr.cd3(val: string);
begin
  StrPCopy(_cd3, val);
end;

function TinStr.yjym: string;
begin
  Result := string(_yjym);
end;

procedure TinStr.yjym(val: string);
begin
  StrPCopy(_yjym, val);
end;

function TinStr.yzdbh: string;
begin
  Result := string(_yzdbh);
end;

procedure TinStr.yzdbh(val: string);
begin
  StrPCopy(_yzdbh, val);
end;
{$ENDREGION}

{$REGION 'ToutStr Func in Here'}

function ToutStr.AsString: string;
begin
  Result := string(_fhm) +
    string(_fhmhy) +
    string(_poslsh) +
    string(_sqh) +
    string(_pch) +
    string(_kh) +
    string(_yxq) +
    string(_yhh) +
    string(_jsckh) +
    string(_zdh) +
    string(_shh) +
    string(_jyje) +
    string(_mm) +
    string(_fqfkxx) +
    string(_fkhdm) +
    string(_yhzjjyrq) +
    string(_yhzjjysj);
end;

function ToutStr.fhm: string;
begin
  Result := string(_fhm);
end;

procedure ToutStr.fhm(val: string);
begin
  StrPCopy(_fhm, val);
end;

function ToutStr.fhmhy: string;
begin
  Result := string(_fhmhy);
end;

procedure ToutStr.fhmhy(val: string);
begin
  StrPCopy(_fhmhy, val);
end;

function ToutStr.poslsh: string;
begin
  Result := string(_poslsh);
end;

procedure ToutStr.poslsh(val: string);
begin
  StrPCopy(_poslsh, val);
end;

function ToutStr.sqh: string;
begin
  Result := string(_sqh);
end;

procedure ToutStr.sqh(val: string);
begin
  StrPCopy(_sqh, val);
end;

function ToutStr.pch: string;
begin
  Result := string(_pch);
end;

procedure ToutStr.pch(val: string);
begin
  StrPCopy(_pch, val);
end;

function ToutStr.kh: string;
begin
  Result := string(_kh);
end;

procedure ToutStr.kh(val: string);
begin
  StrPCopy(_kh, val);
end;

function ToutStr.yxq: string;
begin
  Result := string(_yxq);
end;

procedure ToutStr.yxq(val: string);
begin
  StrPCopy(_yxq, val);
end;

function ToutStr.yhh: string;
begin
  Result := string(_yhh);
end;

procedure ToutStr.yhh(val: string);
begin
  StrPCopy(_yhh, val);
end;

function ToutStr.jsckh: string;
begin
  Result := string(_jsckh);
end;

procedure ToutStr.jsckh(val: string);
begin
  StrPCopy(_jsckh, val);
end;

function ToutStr.zdh: string;
begin
  Result := string(_zdh);
end;

procedure ToutStr.zdh(val: string);
begin
  StrPCopy(_zdh, val);
end;

function ToutStr.shh: string;
begin
  Result := string(_shh);
end;

procedure ToutStr.shh(val: string);
begin
  StrPCopy(_shh, val);
end;

function ToutStr.jyje: string;
begin
  Result := string(_jyje);
end;

procedure ToutStr.jyje(val: string);
begin
  StrPCopy(_jyje, val);
end;

function ToutStr.mm: string;
begin
  Result := string(_mm);
end;

procedure ToutStr.mm(val: string);
begin
  StrPCopy(_mm, val);
end;

function ToutStr.fqfkxx: string;
begin
  Result := string(_fqfkxx);
end;

procedure ToutStr.fqfkxx(val: string);
begin
  StrPCopy(_fqfkxx, val);
end;

function ToutStr.fkhdm: string;
begin
  Result := string(_fkhdm);
end;

procedure ToutStr.fkhdm(val: string);
begin
  StrPCopy(_fkhdm, val);
end;

function ToutStr.yhzjjyrq: string;
begin
  Result := string(_yhzjjyrq);
end;

procedure ToutStr.yhzjjyrq(val: string);
begin
  StrPCopy(_yhzjjyrq, val);
end;

function ToutStr.yhzjjysj: string;
begin
  Result := string(_yhzjjysj);
end;

procedure ToutStr.yhzjjysj(val: string);
begin
  StrPCopy(_yhzjjysj, val);
end;
{$ENDREGION}

//function DoTrans():string;
//begin
//
//end;

function hkxf(je: Double): ToutStr;
var
  tmp: Dword;
  instr: TinStr;
begin
//  tmp := FloatToStr(je * 100);
//  tmp := StringOfChar('0', 12 - length(je)) + je;
  instr := TinStr.Create;
  instr.jydm('01');
//  instr.jyje(tmp);

end;


end.

