unit p_sfdy;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  QuickRpt, Qrctrls, ExtCtrls;

type
  Tfrm_sjdy = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    zlsj: TQRLabel;
    fylb: TQRLabel;
    xxje: TQRLabel;
    dxje: TQRLabel;
    czy: TQRLabel;
    fymc: TQRLabel;
    ysxm: TQRLabel;
    yymc: TQRLabel;
    fph: TQRLabel;
    drxh: TQRLabel;
    brxm: TQRLabel;
    cfbh: TQRLabel;
    tmh: TQRLabel;
    procedure cfbhPrint(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_sjdy: Tfrm_sjdy;

implementation

{$R *.DFM}

procedure Tfrm_sjdy.cfbhPrint(sender: TObject; var Value: String);
begin
 if trim(value)<>'' then
  value:='*'+value+'*';
end;

end.
