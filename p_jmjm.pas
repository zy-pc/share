unit p_jmjm;

interface
uses
    sysutils,
    Dialogs;
const
    C1 = 52845;
    C2 = 22719;
function Decode(const S: AnsiString): AnsiString;
function InternalDecrypt(const S: AnsiString; Key: Word): AnsiString;
function PreProcess(const S: AnsiString): AnsiString;
function Encode(const S: AnsiString): AnsiString;
function PostProcess(const S: AnsiString): AnsiString;
function InternalEncrypt(const S: AnsiString; Key: Word): AnsiString;
function Encrypt(const S: pchar; Key: integer): pchar; stdcall;
function Decrypt(const S: pchar; Key: integer): pchar; stdcall;
function CardEncrypt(const S: pchar): pchar; stdcall;
function CardDecrypt(const S: pchar): pchar; stdcall;
implementation

function Decode(const S: AnsiString): AnsiString;
const
    Map: array[Char] of Byte = (0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 62, 0, 0, 0, 63, 52, 53,
        54, 55, 56, 57, 58, 59, 60, 61, 0, 0, 0, 0, 0, 0, 0, 0, 1, 2,
        3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19,
        20, 21, 22, 23, 24, 25, 0, 0, 0, 0, 0, 0, 26, 27, 28, 29, 30,
        31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45,
        46, 47, 48, 49, 50, 51, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0);
var
    I: LongInt;
begin
    case Length(S) of
        2:
            begin
                I := Map[S[1]] + (Map[S[2]] shl 6);
                SetLength(Result, 1);
                Move(I, Result[1], Length(Result))
            end;
        3:
            begin
                I := Map[S[1]] + (Map[S[2]] shl 6) + (Map[S[3]] shl 12);
                SetLength(Result, 2);
                Move(I, Result[1], Length(Result))
            end;
        4:
            begin
                I := Map[S[1]] + (Map[S[2]] shl 6) + (Map[S[3]] shl 12) +
                    (Map[S[4]] shl 18);
                SetLength(Result, 3);
                Move(I, Result[1], Length(Result))
            end
    end
end;

function PreProcess(const S: AnsiString): AnsiString;
var
    SS: AnsiString;
begin
    SS := S;
    Result := '';
    while SS <> '' do
    begin
        Result := Result + Decode(Copy(SS, 1, 4));
        Delete(SS, 1, 4)
    end
end;

function InternalDecrypt(const S: AnsiString; Key: Word): AnsiString;
var
    I: Word;
    Seed: Word;
begin
    Result := S;
    Seed := Key;
    for I := 1 to Length(Result) do
    begin
        Result[I] := Char(Byte(Result[I]) xor (Seed shr 8));
        Seed := (Byte(S[I]) + Seed) * Word(C1) + Word(C2)
    end
end;


function Encode(const S: AnsiString): AnsiString;
const
    Map: array[0..63] of Char = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ' +
    'abcdefghijklmnopqrstuvwxyz0123456789+/';
var
    I: LongInt;
begin
    I := 0;
    Move(S[1], I, Length(S));
    case Length(S) of
        1:
            Result := Map[I mod 64] + Map[(I shr 6) mod 64];
        2:
            Result := Map[I mod 64] + Map[(I shr 6) mod 64] +
                Map[(I shr 12) mod 64];
        3:
            Result := Map[I mod 64] + Map[(I shr 6) mod 64] +
                Map[(I shr 12) mod 64] + Map[(I shr 18) mod 64]
    end
end;

function PostProcess(const S: AnsiString): AnsiString;
var
    SS: AnsiString;
begin
    SS := S;
    Result := '';
    while SS <> '' do
    begin
        Result := Result + Encode(Copy(SS, 1, 3));
        Delete(SS, 1, 3)
    end
end;

function InternalEncrypt(const S: AnsiString; Key: Word): AnsiString;
var
    I: Word;
    Seed: Word;
begin
    Result := S;
    Seed := Key;
    for I := 1 to Length(Result) do
    begin
        Result[I] := Char(Byte(Result[I]) xor (Seed shr 8));
        Seed := (Byte(Result[I]) + Seed) * Word(C1) + Word(C2)
    end
end;

function Encrypt(const S: pchar; Key: integer): pchar; stdcall;
//通用加密
begin
    Result := pchar(PostProcess(InternalEncrypt(S, Key)))
end;

function Decrypt(const S: pchar; Key: integer): pchar; stdcall;
//通用解密
begin
    Result := pchar(InternalDecrypt(PreProcess(S), Key))
end;

function CardEncrypt(const S: pchar): pchar; stdcall;
//卡片加密
var
    ls_encrypted, ls_cardencrypted: string;
  //ls_encrypted:通用加密后的结果,ls_cardencrypted:卡加密后的结果
    li_i: integer;
begin
    ls_encrypted := encrypt(s, 30);
    for li_i := 1 to length(ls_encrypted) do
    begin
        ls_cardencrypted := ls_cardencrypted + format('%.2d', [ord(ls_encrypted[li_i]) - 30]);
    end;
    Result := pchar(ls_cardencrypted);
end;

function CardDecrypt(const S: pchar): pchar; stdcall;
//卡片解密
var
    ls_decrypted, ls_carddecrypted: string;
  //ls_decrypted:通用解密后的结果,ls_carddecrypted:卡解密后的结果
    li_i: integer;
begin
    li_i := 1;
    while li_i <= length(s) do
    begin
        ls_carddecrypted := ls_carddecrypted + chr(strtoint(copy(s, li_i, 2)) + 30);
        li_i := li_i + 2;
    end;
    ls_decrypted := decrypt(pchar(ls_carddecrypted), 30);
    Result := pchar(ls_decrypted);
end;


end.

