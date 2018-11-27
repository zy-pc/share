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
    //ȡ��DLL���������ӿ�
    LibHand := loadlibrary( 'KpJk.dll' );
    if LibHand = 0 then
    begin
      Application.MessageBox( '����װ�ض�̬���ӿ��ļ�KpJk.dll', 'ϵͳ��ʾ��', 0 + 64 );
      FreeLibrary( LibHand ); //�ͷ�DLL
      Result := False;
      Exit;
    end;
    try
      PAdvConnect_dy := GetProcAddress( LibHand, 'PAdvConnect' );
      PLoginSuccess_dy := GetProcAddress( LibHand, 'PLoginSuccess' );
      PDisConnect_dy := GetProcAddress( LibHand, 'PDisConnect' );
      PZrPj_dy := GetProcAddress( LibHand, 'PZrPj' );
    except
      Application.MessageBox( 'װ�ض�̬���ӿ��ļ�KpJk.dll�еĽӿ�ʧ��!', 'ϵͳ��ʾ��', 0 + 64 );
      FreeLibrary( LibHand ); //�ͷ�DLL
      Result := False;
      Exit;
    end;
  end else
  begin
   Application.MessageBox( 'δ���ֶ�̬��KpJk.dll!', 'ϵͳ��ʾ��', 0 + 64 );
    Result := False;
  end;
end;

end.

