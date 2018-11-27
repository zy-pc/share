unit p_print_xyjkd;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Qrctrls, QuickRpt, ExtCtrls;

type
  Tfrm_print_xyjkd = class(TForm)
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    QRShape1: TQRShape;
    Lb_title: TQRLabel;
    Lb_tmh: TQRLabel;
    Lb_cfbh: TQRLabel;
    Lb_je: TQRLabel;
    QRSysData1: TQRSysData;
    TitleBand1: TQRBand;
    lb_czy: TQRLabel;
    QRL_cfjl: TQRLabel;
    procedure QRL_cfjlPrint(sender: TObject; var Value: string);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_print_xyjkd: Tfrm_print_xyjkd;

implementation

{$R *.DFM}

procedure Tfrm_print_xyjkd.QRL_cfjlPrint(sender: TObject;
  var Value: string);
begin
  if Value = 'º¡¡ø:' then
    Value := 'º¡¡ø: 1';
end;
initialization
  RegisterClass(Tfrm_print_xyjkd);
end.

