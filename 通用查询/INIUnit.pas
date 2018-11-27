unit INIUnit;

interface
uses SysUtils, Classes, Forms, IniFiles;
var
     //INI文件名
  FixIniFileName: string = '';
// INI文件操作函数
function IniFileName: string;

function IniDeleteSection(filename, Section: string): Boolean; overload;
function IniDeleteSection(Section: string): Boolean; overload;

function IniReadInt(filename: string; Section, ident: string; Default: Integer): Integer; overload;
function IniReadInt(Section, ident: string; Default: Integer): Integer; overload;

function IniReadBool(filename: string; Section, ident: string; Default: Boolean): Boolean; overload;
function IniReadBool(Section, ident: string; Default: Boolean): Boolean; overload;

function IniReadFloat(filename: string; Section, ident: string; Default: Double): Double; overload;
function IniReadFloat(Section, ident: string; Default: Double): Double; overload;

function IniWriteStr(filename: string; Section, ident, Value: string): Boolean; overload; //写INi
function IniWriteStr(Section, ident, Value: string): Boolean; overload; //写INi

function IniWriteInt(filename: string; Section, ident: string; Value: Integer): Boolean; overload;
function IniWriteInt(Section, ident: string; Value: Integer): Boolean; overload;

function IniWriteBool(filename: string; Section, ident: string; Value: Boolean): Boolean; overload;
function IniWriteBool(Section, ident: string; Value: Boolean): Boolean; overload;

function IniWriteFloat(filename: string; Section, ident: string; Value: Double): Boolean; overload;
function IniWriteFloat(Section, ident: string; Value: Double): Boolean; overload;

function IniReadStr(filename: string; Section, ident, Default: string): string; overload; //读INI
function IniReadStr(Section, ident, Default: string): string; overload; //读INI

function IniReadSection(filename: string; Section: string): TStrings;
function IniDeleteKey(filename, Section, key: string): Boolean;
//------
implementation
// INI文件操作函数
function IniFileName: string;
begin
  if FixIniFileName <> '' then
    Result := FixIniFileName
  else
    Result := ChangeFileExt(Application.ExeName, '.ini');
end;

function IniDeleteSection(filename, Section: string): Boolean;
var
  ini: TIniFile;
  IniFile: string;
begin
  Result := true;
  IniFile := filename;
  ini := TIniFile.create(IniFile);
  try
    ini.EraseSection(Section);
  finally
    ini.Free;
  end;
end;

function IniDeleteKey(filename, Section, key: string): Boolean;
var
  ini: TIniFile;
  IniFile: string;
begin
  Result := true;
  IniFile := filename;
  ini := TIniFile.create(IniFile);
  try
    ini.DeleteKey(Section, key);
  finally
    ini.Free;
  end;
end;

function IniDeleteSection(Section: string): Boolean;
begin
  Result := IniDeleteSection(IniFileName, Section);
end;

function IniReadStr(filename: string; Section, ident, Default: string): string;
var
  ini: TIniFile;
  IniFile: string;
begin
  IniFile := filename;
  ini := TIniFile.create(IniFile);
  try
    Result := ini.ReadString(Section, ident, Default);
  finally
    ini.Free;
  end;
end;

function IniReadStr(Section, ident, Default: string): string;
begin
  Result := IniReadStr(IniFileName, Section, ident, Default);
end;

function IniReadBool(filename: string; Section, ident: string; Default: Boolean): Boolean;
var
  ini: TIniFile;
  IniFile: string;
begin
  IniFile := filename;
  ini := TIniFile.create(IniFile);
  try
    Result := ini.ReadBool(Section, ident, Default);
  finally
    ini.Free;
  end;
end;

function IniReadBool(Section, ident: string; Default: Boolean): Boolean;
begin
  Result := IniReadBool(IniFileName, Section, ident, Default);
end;

function IniReadInt(filename: string; Section, ident: string; Default: Integer): Integer;
var
  ini: TIniFile;
  IniFile: string;
begin
  IniFile := filename;
  ini := TIniFile.create(IniFile);
  try
    Result := ini.ReadInteger(Section, ident, Default);
  finally
    ini.Free;
  end;
end;

function IniReadInt(Section, ident: string; Default: Integer): Integer;
begin
  Result := IniReadInt(IniFileName, Section, ident, Default);
end;

function IniReadFloat(filename, Section, ident: string;
  Default: Double): Double;
var
  ini: TIniFile;
  IniFile: string;
begin
  IniFile := filename;
  ini := TIniFile.create(IniFile);
  try
    Result := ini.ReadFloat(Section, ident, Default);
  finally
    ini.Free;
  end;
end;

function IniReadFloat(Section, ident: string; Default: Double): Double;
begin
  Result := IniReadFloat(IniFileName, Section, ident, Default);
end;

function IniWriteBool(filename, Section, ident: string;
  Value: Boolean): Boolean;
var
  ini: TIniFile;
  IniFile: string;
begin
  Result := true;
  IniFile := filename;
  ini := TIniFile.create(IniFile);
  try
    ini.WriteBool(Section, ident, Value);
  finally
    ini.Free;
  end;
end;
function IniWriteBool(Section, ident: string; Value: Boolean): Boolean;
begin
  Result := IniWriteBool(IniFileName, Section, ident, Value);
end;

function IniWriteFloat(filename, Section, ident: string;
  Value: Double): Boolean;
var
  ini: TIniFile;
  IniFile: string;
begin
  Result := true;
  IniFile := filename;
  ini := TIniFile.create(IniFile);
  try
    ini.WriteFloat(Section, ident, Value);
  finally
    ini.Free;
  end;
end;

function IniWriteFloat(Section, ident: string; Value: Double): Boolean;
begin
  Result := IniWriteFloat(IniFileName, Section, ident, Value);
end;

function IniWriteInt(filename, Section, ident: string;
  Value: Integer): Boolean;
var
  ini: TIniFile;
  IniFile: string;
begin
  Result := true;
  IniFile := filename;
  ini := TIniFile.create(IniFile);
  try
    ini.WriteInteger(Section, ident, Value);
  finally
    ini.Free;
  end;
end;

function IniWriteInt(Section, ident: string; Value: Integer): Boolean;
begin
  Result := IniWriteInt(IniFileName, Section, ident, Value);
end;

function IniReadSection(filename: string; Section: string): TStrings;
var
  ini: TIniFile;
  IniFile: string;
begin
  Result := TStringList.create;
  IniFile := filename;
  ini := TIniFile.create(IniFile);
  try
    ini.ReadSectionValues(Section, Result);
  finally
    ini.Free;
  end;
end;

function IniWriteStr(filename, Section, ident,
  Value: string): Boolean;
var
  ini: TIniFile;
  IniFile: string;
begin
  Result := true;
  IniFile := filename;
  ini := TIniFile.create(IniFile);
  try
    ini.WriteString(Section, ident, Value);
  finally
    ini.Free;
  end;
end;

function IniWriteStr(Section, ident, Value: string): Boolean;
begin
  Result := IniWriteStr(IniFileName, Section, ident, Value);
end;
//------------------

end.

