unit p_pacs_jk;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,Inifiles;

type
  Tfrm_pacs_jk = class(TForm)
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_pacs_jk: Tfrm_pacs_jk;

implementation

{$R *.dfm}

procedure Tfrm_pacs_jk.FormShow(Sender: TObject);
var filename, txt, strRet: string;
    MyInifile: TInifile;
    retCode: integer;
    a,b:string;
begin
  Filename := ExtractFilePath(ParamStr(0)) + '123.properties';
  MyInifile := TInifile.Create(Filename);
  a := MyIniFile.ReadString('','a', 'None');
  b := MyIniFile.ReadString('','b', 'None');
end;

end.
