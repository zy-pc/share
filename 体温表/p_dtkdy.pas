unit p_dtkdy;

interface
uses SysUtils, Windows, Forms,Comobj,Thermometer_TLB;
type
  Tproc_twb = procedure( lx: integer; UName: string; bqdm: string; yymc: string; czydm: string ); stdcall;
  Tjsbytwb = procedure( ksmc:string); stdcall;
var
  proc_twb: Tproc_twb;
  jsbytwb: Tjsbytwb;
procedure proc_down( lj: string );
function func_loadtwb: boolean;
function func_loadjsbytwb(ksmc:string): boolean;
procedure proc_jrtwb( lx: Integer );
function getxtlj: string;
implementation
uses p_dm, p_func, db;
var
  prv_dllhd: Thandle;

function getxtlj: string;
var
  SysDir: array[0..255] of Char;
begin
  GetWindowsDirectory( SysDir, 255 );
  Result := StrPas( sysdir );
end;

procedure proc_down( lj: string );
var
  bbh, bbh1: string;
  b1, b2, b3, b4: integer;
begin
  dm_data.qry_pub.close;
  DM_data.qry_pub.SQL.Text := 'select filename,fileversion from sys_update where filename = ' + #39 + ExtractFileName( lj ) + #39;
  DM_data.qry_pub.Open;

  if dm_data.qry_pub.RecordCount > 0 then
  begin
    GetFileVersion( lj, b1, b2, b3, b4 );
    bbh := IntToStr( b1 ) + IntToStr( b2 ) + IntToStr( b3 ) + IntToStr( b4 );
    bbh1 := dm_data.qry_pub.FieldByName( 'fileversion' ).AsString;
    if bbh1 > bbh then
    begin
      dm_data.qry_pub.close;
      DM_data.qry_pub.SQL.Text := 'select * from sys_update where filename = ' + #39 + ExtractFileName( lj ) + #39;
      DM_data.qry_pub.Open;
      TBlobfield( dm_data.qry_pub.FieldByName( 'hisfile' ) ).SaveToFile( lj );
    end;
  end;
end;

function func_loadtwb: boolean;
var
  prv_dllname: string;

begin
  result := false;
  //-----测试

  prv_dllname := ExtractFilePath( application.ExeName ) + 'sys_twb.dll';
  //prv_dllname := 'F:\scsx2012\体温表\sys_twb.dll';
  if not fileexists( prv_dllname ) then
  begin
    prv_dllname := getxtlj + '\system32\sys_twb.dll';
  end; 
  proc_down( prv_dllname );
  if not fileexists( prv_dllname ) then
  begin
    Application.MessageBox('[sys_twb.dll]动态库不存在!', '提示', MB_OK + 
      MB_ICONINFORMATION);       
    Exit;
  end;
  prv_dllhd := loadlibrary( PChar( prv_dllname ) );
  try
    proc_twb := getprocaddress( prv_dllhd, 'proc_twb' );
    result := true;
  except on e: exception do
    begin
      Application.MessageBox( PChar( '加载动态库失败,错误原因:' + e.message ), '提示', MB_OK +
        MB_ICONINFORMATION );
    end;
  end;
end;

procedure proc_jrtwb( lx: Integer );
begin
  if func_loadtwb then
  begin
    proc_twb( lx, UserName, pub_bqdm, pub_yymc, pub_czydm );
    proc_twb := nil;
    FreeLibrary( prv_dllhd );
  end;
end;

function func_loadjsbytwb(ksmc:string): boolean;
var
  prv_dllname: string;
  var aClass: Variant;

begin
  result := false;
  //-----测试

  prv_dllname := ExtractFilePath( application.ExeName ) + 'jsbtwb.exe';
  //prv_dllname := 'F:\scsx2012\体温表\sys_twb.dll';
  if not fileexists( prv_dllname ) then
  begin
    prv_dllname := getxtlj + '\system32\jsbtwb.exe';
  end;
  proc_down( prv_dllname );
  if not fileexists( prv_dllname ) then
  begin
    Application.MessageBox('[jsbtwb.exe]体温表文件不存在!', '提示', MB_OK +
      MB_ICONINFORMATION);       
    Exit;
  end;
  //prv_dllhd := loadlibrary( PChar( prv_dllname ) );
  try
    //jsbytwb := getprocaddress( prv_dllhd, 'jsbytwb' );
    //aClass:= CreateOleobject('sys_jsbytwb.ITestClass');
    //aClass.YourProcedure (ksmc);
    //jsbytwb(ksmc);
    //result := true;
    //aClass := nil;
    //FreeLibrary( prv_dllhd );
    WinExec(PChar(prv_dllname+' '+ksmc),SW_NORMAL);
  except on e: exception do
    begin
      Application.MessageBox( PChar( '加载体温表失败！,错误原因:' + e.message ), '提示', MB_OK +
        MB_ICONINFORMATION );
    end;
  end;
end;
end.

