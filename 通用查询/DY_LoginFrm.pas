unit DY_LoginFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons,Comobj,DB, ADODB;

type
  TLogin_frm = class(TForm)
    Label1: TLabel;
    cbbServerName: TComboBox;
    Label2: TLabel;
    LoginNameEdt: TEdit;
    Label3: TLabel;
    LoginPassEdt: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    lbl1: TLabel;
    edtDatabase: TEdit;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    FConnectStr:string;
  public
    { Public declarations }
  end;
function GetConnectstring:Boolean;
implementation
uses DY_PublicUnit;
{$R *.dfm}
Function   GetSQLServerList(var   List:   Tstringlist):   boolean;
  var
      i:   integer;
      sRetValue:   String;
      SQLServer:   Variant;
      ServerList:   Variant;
  begin
  try
      Result   :=   False;
      List.Clear;
      try
          SQLServer   :=   CreateOleObject('SQLDMO.Application');
          ServerList   :=   SQLServer.ListAvailableSQLServers;
          for   i   :=   1   to   Serverlist.Count   do
                  list.Add   (Serverlist.item(i));
          Result   :=   True;
      Finally
          SQLServer   :=   NULL;
          ServerList   :=   NULL;
      end;
  except
    Showmessage('未安装SQL Server或系统错误!');
  end;
  end;

function GetConnectstring:Boolean;
var
  Login_frm: TLogin_frm;
  FList:Tstringlist;
begin
FList :=Tstringlist.Create;
if GetSQLServerList(FList) then
begin
 Login_frm:= TLogin_frm.Create(Application);
 try
   with Login_frm do
   begin
     cbbServerName.Items.AddStrings(FList);
     cbbServerName.ItemIndex:=0;
     if showmodal=mrYes then
      begin
        ConnectStr:=ConnectStr;
        Result:=True;
      end else
        Result:=False;

     Free;
   end;
 finally

 end;
end;
end;
procedure TLogin_frm.BitBtn1Click(Sender: TObject);
var
  FADOConnection: TADOConnection;
begin
  ModalResult:=mrNone;
  try
  FADOConnection:= TADOConnection.Create(Self);
  if Length(cbbServerName.Text)=0 then
    begin
      Application.MessageBox('请选取服务器名称！', '提示', mb_iconInformation + mb_defbutton1);
      cbbServerName.SetFocus;
      Exit;
    end;

  if Length(edtDatabase.Text)=0 then
  begin
     Application.MessageBox('请输入数据库名称！', '提示', mb_iconInformation + mb_defbutton1);
     edtDatabase.SetFocus;
     Exit;
  end;

  if Length(LoginNameEdt.Text)=0 then
   begin
      Application.MessageBox('请输入登录名！', '提示', mb_iconInformation + mb_defbutton1);
      LoginNameEdt.SetFocus;
      Exit;
   end;
 try
    ConnectStr :=CreateConnectStr(Trim(cbbServerName.Text),Trim(edtDatabase.Text),Trim(LoginNameEdt.Text),Trim(LoginPassEdt.Text));
    FADOConnection.ConnectionString:=ConnectStr;
    FADOConnection.LoginPrompt:=false;
    FADOConnection.Provider:='SQLOLEDB.1';
    FADOConnection.Connected:=true;
    WriteToIni(Trim(cbbServerName.Text),Trim(edtDatabase.Text),Trim(LoginNameEdt.Text),Trim(LoginPassEdt.Text));
    ModalResult:=mrYes;
 except
    ModalResult :=mrNo;
 end;
  finally
    FADOConnection.Free;
  end;
 end;


procedure TLogin_frm.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    perform(WM_NEXTDLGCTL, 0, 0);
end;

end.
