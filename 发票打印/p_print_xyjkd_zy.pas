unit p_print_xyjkd_zy;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Qrctrls, QuickRpt, ExtCtrls;

type
  Tfrm_print_xyjkd_zy = class(TForm)
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
    lb_brxm: TQRLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_print_xyjkd_zy: Tfrm_print_xyjkd_zy;

implementation

{$R *.DFM}
initialization
  RegisterClass(Tfrm_print_xyjkd_zy);
end.
