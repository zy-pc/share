unit p_qxyzsj;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, cxControls, cxContainer, cxEdit, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar;

type
  Tfrm_qxyzsj = class(TForm)
    Label1: TLabel;
    yzzxsj: TcxDateEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_qxyzsj: Tfrm_qxyzsj;

implementation

{$R *.dfm}
uses p_dm,p_func,p_yzzx;
procedure Tfrm_qxyzsj.BitBtn1Click(Sender: TObject);
begin
qxyzsj:=yzzxsj.Date;
fqyz:=false;
self.close;
end;

procedure Tfrm_qxyzsj.BitBtn2Click(Sender: TObject);
begin
fqyz:=true;
self.close;
end;

end.
