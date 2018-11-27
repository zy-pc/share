unit p_mmyz;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  Tfrm_mmyz = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    mm:string;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_mmyz: Tfrm_mmyz;
  function func_mmsr():string;

implementation

{$R *.dfm}

function func_mmsr():string;
var res : string;
begin
    Application.CreateForm(Tfrm_mmyz,frm_mmyz);
    frm_mmyz.ShowModal;
    res := frm_mmyz.mm;
    frm_mmyz.Free;
    Result:=res;
end;

procedure Tfrm_mmyz.Button1Click(Sender: TObject);
begin
  mm:=Edit1.Text;
  close;
end;

end.
