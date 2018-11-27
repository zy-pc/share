unit P_zyyzmbmc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  Tfrm_zyyzmbmc = class(TForm)
    edit_mbmc: TEdit;
    Label1: TLabel;
    b_ok: TBitBtn;
    b_close: TBitBtn;
    procedure b_closeClick(Sender: TObject);
    procedure b_okClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_zyyzmbmc: Tfrm_zyyzmbmc;

implementation
 uses p_yzinput;
{$R *.dfm}

procedure Tfrm_zyyzmbmc.b_closeClick(Sender: TObject);
begin
  close;
end;

procedure Tfrm_zyyzmbmc.b_okClick(Sender: TObject);
begin
  frm_yzinput.zyyz_mbmc:=trim(edit_mbmc.Text);
  close;
end;

end.
