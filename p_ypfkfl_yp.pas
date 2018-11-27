unit p_ypfkfl_yp;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ComCtrls, ExtCtrls, Db, ADODB, DBCtrls,
  Grids, DBGridEh, PrnDbgeh,
  Qrctrls, QuickRpt, GridsEh;

type
  Tfrm_ypfkfl_yp = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    date1: TDateTimePicker;
    date2: TDateTimePicker;
    b_cx: TBitBtn;
    BitBtn2: TBitBtn;
    b_print: TBitBtn;
    ds_ypyl: TDataSource;
    DBGridEh1: TDBGridEh;
    sp_ypyl: TADOStoredProc;
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRBand2: TQRBand;
    QRBand3: TQRBand;
    QRBand4: TQRBand;
    QRBand5: TQRBand;
    QRLabel1: TQRLabel;
    tjrq: TQRLabel;
    QRLabel2: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRShape1: TQRShape;
    QRLabel12: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    QRExpr5: TQRExpr;
    QRExpr6: TQRExpr;
    QRExpr7: TQRExpr;
    QRLabel13: TQRLabel;
    zbr: TQRLabel;
    zbrq: TQRLabel;
    yf: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    ypdm: TEdit;
    rb1: TRadioButton;
    rb2: TRadioButton;
    Label3: TLabel;
    ComboBox1: TComboBox;
    procedure FormShow(Sender: TObject);
    procedure b_cxClick(Sender: TObject);
    procedure b_printClick(Sender: TObject);
    procedure QRDBText3Print(sender: TObject; var Value: string);
    procedure QRDBText9Print(sender: TObject; var Value: string);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_ypfkfl_yp: Tfrm_ypfkfl_yp;

implementation
uses p_dm, p_func;
{$R *.DFM}

procedure Tfrm_ypfkfl_yp.FormShow(Sender: TObject);
begin
  date1.DateTime := frm_func.curr_date;
  date2.DateTime := frm_func.curr_date;
  date1.SetFocus;
  b_cx.Enabled := true;

end;

procedure Tfrm_ypfkfl_yp.b_cxClick(Sender: TObject);
var sqlstr: widestring;
begin
  sp_ypyl.Close;
  if rb2.Checked then
    sp_ypyl.Parameters.ParamByName('@lb').value := '2'
  else
    sp_ypyl.Parameters.ParamByName('@lb').value := '1';
  sp_ypyl.Parameters.ParamByName('@ksrq').value := formatdatetime('yyyymmdd', date1.date);
  sp_ypyl.Parameters.ParamByName('@jsrq').value := formatdatetime('yyyymmdd', date2.date);
  sp_ypyl.Parameters.ParamByName('@pym').value := trim(ypdm.text);
  sp_ypyl.open;
  if not sp_ypyl.IsEmpty then
    b_print.Enabled := true;
end;

procedure Tfrm_ypfkfl_yp.b_printClick(Sender: TObject);
begin
  zbr.caption := '制表人:' + pub_czyxm;
  zbrq.caption := '制表日期:' + formatdatetime('yyyy"年"mm"月"dd"日"', frm_func.curr_date());
  tjrq.caption := '统计日期:' + formatdatetime('yyyy"年"mm"月"dd"日"', date1.date) + '-' + formatdatetime('yyyy"年"mm"月"dd"日"', date2.date);
  yf.Caption := '';
  quickrep1.Preview;
//printdbgrideh1.Preview;
end;

procedure Tfrm_ypfkfl_yp.QRDBText3Print(sender: TObject; var Value: string);
begin
  value := trim(value);
end;

procedure Tfrm_ypfkfl_yp.QRDBText9Print(sender: TObject; var Value: string);
begin
  if value = '0' then
    value := '';
end;

end.

