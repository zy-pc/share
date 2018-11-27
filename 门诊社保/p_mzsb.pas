unit p_mzsb;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, OleServer, DB, sys_sbjc_TLB;

type
  Tfrm_mzsb = class(TForm)
    sbjk_interface1: Tsbjk_interface;
  private
    { Private declarations }
  public
    pub_jcsb_init: Boolean;
    { Public declarations }
  end;

var
  frm_mzsb: Tfrm_mzsb;
  pub_re: res;
function func_pub_sbjs(czlb, ph: string): Boolean;
procedure func_pub_jcdtk; //社保初始化，检查动态库
procedure func_pub_xzsbdtk; //选择动态库
implementation
uses p_dm;
{$R *.dfm}

function func_pub_sbjs(czlb, ph: string): Boolean;
var
  lj: string;
begin
  if frm_mzsb.pub_jcsb_init then
  begin
    result := false;
    lj := extractfilepath(application.ExeName) + 'sys_sbjc.dll';
    if FileExists(lj) then
    begin
      frm_mzsb.sbjk_interface1.sbjk_opp(czlb, ph, pub_re, pub_czydm, pub_ksdm, pub_yydm, pub_yymc);
      result := (pub_re.cljg = '1');
    end
    else
    begin
      if czlb <> '退出' then
        Application.MessageBox('没有找到集成的动态库【sys_sbjc.dll】！', '提示', MB_OK + MB_ICONINFORMATION);
    end;
  end
  else
  begin
    result := true;
  end;
end;

procedure func_pub_jcdtk;
var
  _path: string;
begin
  try
    func_pub_xzsbdtk;
  except
  end;
  Windows.Winexec(pchar('regsvr32.exe ' + ExtractFilePath(application.ExeName) + '\sys_sbjc.dll' + ' /s'), 1);
  application.CreateForm(Tfrm_mzsb, frm_mzsb);
  _path := extractfilepath(application.Exename) + 'sys_sbjc.dll';
  if FileExists(_path) then
  begin
    frm_mzsb.pub_jcsb_init := true;
  end
  else
  begin
    frm_mzsb.pub_jcsb_init := false;
  end;
end;

procedure func_pub_xzsbdtk;
begin
  with DM_data do
  begin
    qry_pub.close;
    qry_pub.SQL.Text := 'select * from sys_update where filename = ' + #39 + 'sys_sbjc.dll' + #39;
    qry_pub.Open;
    if qry_pub.RecordCount > 0 then
    begin
      TBlobfield(qry_pub.FieldByName('hisfile')).SaveToFile(ExtractFilePath(application.ExeName) + '\sys_sbjc.dll');
      Windows.Winexec(pchar('regsvr32.exe ' + ExtractFilePath(application.ExeName) + '\sys_sbjc.dll' + ' /s'), 1);
    end;
  end;
end;
end.

