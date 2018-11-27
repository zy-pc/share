unit DY_DataModul;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TDataModuleMain = class(TDataModule)
    conMain: TADOConnection;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModuleMain: TDataModuleMain;

implementation
 uses DY_PublicUnit;
{$R *.dfm}

procedure TDataModuleMain.DataModuleCreate(Sender: TObject);
var
  ServerName,DatabaseName,SysFile:string;
begin
  SysFile := ApplicationPath+'\'+IniFileName;
end;

end.
