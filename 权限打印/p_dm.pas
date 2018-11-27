unit p_dm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBTables, Db, ADODB, registry;


type
  TDM_data = class(TDataModule)
    DS_czy: TDataSource;
    DS_office: TDataSource;
    DS_pub: TDataSource;
    ado_mydata: TADOConnection;
    qry_czy: TADOQuery;
    qry_office: TADOQuery;
    qry_pub: TADOQuery;
    ADOQry: TADOQuery;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    function UpdateBlob(const TableName, BlobFieldName, KeyFieldName,
      KeyFieldValue, BlobData: string; BlockSize: Integer): integer;
    { Public declarations }
  end;

var
  DM_data: TDM_data;
  pub_czydm, pub_czyxm, pub_czyqx: string;
  pub_ksdm, pub_ksmc, pub_kssx: string;
  pub_yymc: string;
  pub_czrq: Tdatetime;
  isczy, isadmin: boolean;
  servername: string;
  pub_qybz: boolean;
  devicehandle: thandle;
  devmode: pdevicemode;
  adevice, adriver, aport: array[0..255] of char;
  dataname:string;
const
  username = 'sys_zxjf';
  userma = 'zxjfglxt';



implementation

{$R *.DFM}

function BuffToHex(Buff: Pointer; Count: Integer): string;
var
  iCount: Integer;
  Value, CH, CL: Byte;
  PB: PByte;
begin
  PB := Buff;
  SetLength(Result, 2 * Count);
  for iCount := 1 to Count do
  begin
    Value := PB^;
    CH := (Value shr 4) and $0F;
    CL := Value and $0F;
    if CL < $0A then CL := CL + $30 else CL := CL + $37;
    if CH < $0A then CH := CH + $30 else CH := CH + $37;
    Result[iCount * 2 - 1] := Char(CH);
    Result[iCount * 2] := Char(CL);
    Inc(PB);
  end;
end;

function TDM_data.UpdateBlob(const TableName, BlobFieldName, KeyFieldName,
  KeyFieldValue, BlobData: string; BlockSize: Integer): integer;
const
  SQL_Data =
    '   DECLARE   @ptrval   binary(16)   ' + #13#10 +
    '   SELECT   @ptrval   =   TEXTPTR(%s)   ' + #13#10 +
    '   FROM   %s     ' + #13#10 +
    '   WHERE   %s=''%s''   ' + #13#10 +
    '   UPDATETEXT   %s.%s     @ptrval   NULL   0     ';
var
  Size: Integer;
  P: PByte;
  Value, SQL, S: string;
  BlobData_: string;
  FileStream: TFileStream;
  StringStream: TStringStream;
  filesize: integer;
  tmp_int, i: integer;
begin
  {i := 0;
  result := 0;
  try
    FileStream := TFileStream.Create(BlobData, fmOpenRead);
    StringStream := TStringStream.Create('');
    filesize := FileStream.Size;
    StringStream.CopyFrom(FileStream, filesize);
    BlobData_ := StringStream.DataString;
    frm_progress.ProgressBar1.Position := 25;
    frm_progress.Label1.Caption := '正在上传文件(' + inttostr(frm_progress.ProgressBar1.Position) + '%)......';
    frm_progress.Update;
  finally
    freeandnil(FileStream);
    freeandnil(StringStream);
  end;

  if BlockSize <= 0 then BlockSize := 1024 * 128;
  S := Format(SQL_Data, [BlobFieldName, TableName, KeyFieldName, KeyFieldValue,
    TableName, BlobFieldName]);
  adoQry.Close();

  SQL := 'UPDATE   %s   SET   %s=0X   WHERE   %s=''%s''   ';
  SQL := Format(SQL, [TableName, BlobFieldName, KeyFieldName, KeyFieldValue]);
  adoQry.SQL.Text := SQL;
  try
    adoQry.ExecSQL();
  except
    result := 1;
  end;
  frm_progress.ProgressBar1.Position := 30;
  frm_progress.Label1.Caption := '正在上传文件(' + inttostr(frm_progress.ProgressBar1.Position) + '%)......';
  frm_progress.Update;

   
  P := Pointer(BlobData_);
  Size := Length(BlobData_);
  tmp_int := Size div BlockSize;
  while (true) do
  begin
    if Size >= BlockSize then
    begin
      adoQry.Close;
      Value := BuffToHex(P, BlockSize);
      Size := Size - BlockSize;
      Inc(P, BlockSize);
      SQL := S + '0x' + Value;
      adoQry.SQL.Text := SQL;
      try
        adoQry.ExecSQL();
      except
        result := 2;
        break;
      end;
      adoQry.Close;
      i := i + 1;
      if int(i / tmp_int * 1000) = int(1 / 60 * 1000) then
      begin
        frm_progress.ProgressBar1.Position := frm_progress.ProgressBar1.Position + 1;
        frm_progress.Label1.Caption := '正在上传文件(' + inttostr(frm_progress.ProgressBar1.Position) + '%)......';
        frm_progress.Update;
        i := 0;
      end;
    end
    else begin
      adoQry.Close;
      BlockSize := Size;
      Value := BuffToHex(P, BlockSize);
      SQL := S + '0x' + Value;
      adoQry.SQL.Text := SQL;
      try
        adoQry.ExecSQL();
      except
        result := 3;
      end;
      Break;
      adoQry.Close;
      frm_progress.ProgressBar1.Position := 90;
      frm_progress.Label1.Caption := '正在上传文件(' + inttostr(frm_progress.ProgressBar1.Position) + '%)......';
      frm_progress.Update;
    end;
  end;      }
end;

procedure TDM_data.DataModuleCreate(Sender: TObject);
var
  Reg: Tregistry;
  KeyName, cntstring: string;
begin
  Reg := Tregistry.Create;
  try
    try
      Reg.RootKey := hkey_local_machine;
      KeyName := 'Software\myserver';
      if Reg.OpenKey(KeyName, true) then
        servername := Reg.ReadString('servername');
        dataname:= Reg.ReadString('dataname');
      reg.CloseKey;
    finally
      Reg.Free;
    end;
    if Trim(dataname)='' then
    dataname:='my_data';
    ado_mydata.Connected := false;
    cntstring := 'Provider=SQLOLEDB.1;' + 'Password=' + userma + ';' +
      'Persist Security Info=false;' +
      'user ID=' + username + ';Initial Catalog=' + dataname + ';' +
      'Data Source=' + servername;
    ado_mydata.ConnectionString := cntstring;
    ado_mydata.Connected := true;
  except
    application.MessageBox('网络连接失败！', '提示', 0 + 48);
    application.Terminate;
  end;

end;

end.

