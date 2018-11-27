unit p_xgyl;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  Tfrm_xgyl = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
  xyl:string;
    { Public declarations }
  end;

var
  frm_xgyl: Tfrm_xgyl;
  function func_yllr():string;

implementation

{$R *.dfm}

procedure Tfrm_xgyl.Button1Click(Sender: TObject);
begin
xyl:=Trim(Edit1.text);
Close;
end;

procedure Tfrm_xgyl.Button2Click(Sender: TObject);
begin
xyl:='';
Close;
end;


procedure Tfrm_xgyl.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if not((key in ['0'..'9',#8,#46]) ) then
    begin
         key := #0;
    end;
end;

function func_yllr():string;
var res : string;
begin
    Application.CreateForm(Tfrm_xgyl,frm_xgyl);
    frm_xgyl.ShowModal;
    res := frm_xgyl.xyl;
    frm_xgyl.Free;
    Result:=res;
end;

end.
