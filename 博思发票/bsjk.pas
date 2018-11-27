unit bsjk;

interface
uses
  Windows, SysUtils, Classes, Controls, Forms, ADODB;

type
  PAdvConnect = function( aUser, aMm, aTzh: PChar ): Integer; stdcall;
  PLoginSuccess = function: Integer; stdcall;
  PDisConnect = function: Integer; stdcall;
  PZrPj = function( ZrTxt: PChar; IsPrn: integer; PjLx, Bz: PChar; Res : PChar ): Integer; stdcall;
function LoadbsjkDll: Boolean;

var
  LibHand: Thandle;
  PAdvConnect_dy: PAdvConnect;
  PLoginSuccess_dy: PLoginSuccess;
  PDisConnect_dy: PDisConnect;
  PZrPj_dy: PZrPj;
implementation

function LoadbsjkDll: Boolean;
begin
  if FileExists( 'KpJk.dll' ) then
  begin
    //取得DLL操作函数接口
    LibHand := loadlibrary( 'KpJk.dll' );
    if LibHand = 0 then
    begin
      Application.MessageBox( '不能装载动态连接库文件KpJk.dll', '系统提示：', 0 + 64 );
      FreeLibrary( LibHand ); //释放DLL
      Result := False;
      Exit;
    end;
    try
      PAdvConnect_dy := GetProcAddress( LibHand, 'PAdvConnect' );
      PLoginSuccess_dy := GetProcAddress( LibHand, 'PLoginSuccess' );
      PDisConnect_dy := GetProcAddress( LibHand, 'PDisConnect' );
      PZrPj_dy := GetProcAddress( LibHand, 'PZrPj' );
    except
      Application.MessageBox( '装载动态连接库文件KpJk.dll中的接口失败!', '系统提示：', 0 + 64 );
      FreeLibrary( LibHand ); //释放DLL
      Result := False;
      Exit;
    end;
  end else
  begin
   Application.MessageBox( '未发现动态库KpJk.dll!', '系统提示：', 0 + 64 );
    Result := False;
  end;
end;

end.

