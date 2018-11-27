unit p_pub_sj;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar;

type
  Tfrm_pub_sj = class(TForm)
    yzzxsj: TcxDateEdit;
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
  sj : TDateTime;
    { Public declarations }
  end;

var
  frm_pub_sj: Tfrm_pub_sj;
  function func_sjxz():TDateTime;

implementation
uses
p_func;
{$R *.dfm}

procedure Tfrm_pub_sj.Button1Click(Sender: TObject);
begin
sj:=yzzxsj.Date;
Close;
end;

procedure Tfrm_pub_sj.Button2Click(Sender: TObject);
begin
sj:=StrToDateTime('1900-01-01');
Close;
end;

procedure Tfrm_pub_sj.FormShow(Sender: TObject);
begin
   yzzxsj.Date:=Frm_func.curr_date;
end;

function func_sjxz():TDateTime;
var res : TDateTime;
begin
    Application.CreateForm(Tfrm_pub_sj,frm_pub_sj);
    frm_pub_sj.sj:=StrToDateTime('1900-01-01');
    frm_pub_sj.ShowModal;
    res := frm_pub_sj.sj;
    frm_pub_sj.Free;
    Result:=res;
end;

end.
