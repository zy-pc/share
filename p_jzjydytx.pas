unit p_jzjydytx;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  Tfrm_jzjydytx = class(TForm)
    Button2: TButton;
    Memo1: TMemo;
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_jzjydytx: Tfrm_jzjydytx;

implementation

{$R *.dfm}
uses P_main;

procedure Tfrm_jzjydytx.Button2Click(Sender: TObject);
begin
  P_main.jzxmxs:='0';
  close;
end;

end.
