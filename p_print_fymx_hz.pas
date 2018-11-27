unit p_print_fymx_hz;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, ExtCtrls, DB, ADODB, StdCtrls;

type
  Tfrm_print_fymx_hz = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRSubDetail2: TQRSubDetail;
    QRLabel2: TQRLabel;
    hz01: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel1: TQRLabel;
    hz02: TQRLabel;
    hz03: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    hz04: TQRLabel;
    hz05: TQRLabel;
    QRLabel11: TQRLabel;
    hz06: TQRLabel;
    hz07: TQRLabel;
    hz08: TQRLabel;
    hz09: TQRLabel;
    hz10: TQRLabel;
    QRBand7: TQRBand;
    QRSysData1: TQRSysData;
    QRLabel7: TQRLabel;
    QRLabel42: TQRLabel;
    QRExpr1: TQRExpr;
    sp_brxx: TADOStoredProc;
    ds_brxx: TDataSource;
    QRLabel_xm: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel_zyh: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel_zyts: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel_xb: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel_nl: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel_ryrq: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel_cyrq: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel_ch: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel_yjze: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel_zfy: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel_zyks: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel_sfzl: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    bt: TQRLabel;
    procedure QRSubDetail2NeedData(Sender: TObject; var MoreData: Boolean);
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    prv_zyh: string;  //住院号
    prv_cryzt: string;  //出入院状态
  end;

var
  frm_print_fymx_hz: Tfrm_print_fymx_hz;

implementation

{$R *.dfm}
uses
  p_func, p_dm ;

procedure Tfrm_print_fymx_hz.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  bt.Caption := pub_yymc + '-住院病人费用汇总单';

  sp_brxx.Close;
  if prv_cryzt = 'zy' then
  begin
    prv_zyh:=dm_data.qry_pub.FieldByName( 'zyh' ).asstring;
    sp_brxx.ProcedureName := 'zysf_cx_zybrdj';
  end
  else if prv_cryzt = 'cy' then
  begin
    sp_brxx.ProcedureName := 'zysf_cx_zybrdj_cy';
  end;

  sp_brxx.Parameters.Clear;
  sp_brxx.Parameters.Refresh;
  sp_brxx.parameters.ParamByName('@zyh').value := prv_zyh;
  sp_brxx.Open;
  QRLabel_zyh.Caption := sp_brxx.fieldbyname('zyh').asstring;
  QRLabel_xm.Caption := sp_brxx.fieldbyname('brxm').asstring;
  QRLabel_zyts.Caption := sp_brxx.fieldbyname('zytss').asstring;
  QRLabel_xb.Caption := sp_brxx.fieldbyname('brxb').asstring;
  QRLabel_nl.Caption := sp_brxx.fieldbyname('brnl').asstring;
  QRLabel_ryrq.Caption := DateToStr(sp_brxx.fieldbyname('ryrq').AsDateTime);
  QRLabel_cyrq.Caption := DateToStr(sp_brxx.fieldbyname('cyrq').asdatetime);
  QRLabel_ch.Caption := sp_brxx.fieldbyname('bch').asstring;
  QRLabel_yjze.Caption := sp_brxx.fieldbyname('yjze').asstring;
  QRLabel_zfy.Caption := sp_brxx.fieldbyname('zfy').asstring;
  QRLabel_zyks.Caption := sp_brxx.fieldbyname('ksmc').asstring;
  QRLabel_sfzl.Caption := sp_brxx.fieldbyname('lbmc').asstring;

end;

procedure Tfrm_print_fymx_hz.QRSubDetail2NeedData(Sender: TObject;
  var MoreData: Boolean);
var
  I: integer;
begin
  MoreData := True;
  i := 1;
  if dm_data.sp_fyhz.Eof then
    MoreData := False;

  hz01.Caption := '';
  hz02.Caption := '';
  hz03.Caption := '';
  hz04.Caption := '';
  hz05.Caption := '';
  hz06.Caption := '';
  hz07.Caption := '';
  hz08.Caption := '';
  hz09.Caption := '';
  hz10.Caption := '';

  for i := 1 to 2 do
  begin
    if dm_data.sp_fyhz.eof then
      break;
    case I of
      1:
        begin
          hz01.Caption := dm_data.sp_fyhz.FieldByName( 'fymc' ).AsString;
          hz02.Caption := dm_data.sp_fyhz.FieldByName( 'dw' ).AsString;
          hz03.Caption := format( '%8.2f', [dm_data.sp_fyhz.FieldByName( 'dj' ).Asfloat] );
          hz04.Caption := dm_data.sp_fyhz.FieldByName( 'fysl' ).AsString;
          hz05.Caption := format( '%8.2f', [dm_data.sp_fyhz.FieldByName( 'fyje' ).Asfloat] );
        end;
      2:
        begin
          hz06.Caption := dm_data.sp_fyhz.FieldByName( 'fymc' ).AsString;
          hz07.Caption := dm_data.sp_fyhz.FieldByName( 'dw' ).AsString;
          hz08.Caption := format( '%8.2f', [dm_data.sp_fyhz.FieldByName( 'dj' ).Asfloat] );
          hz09.Caption := dm_data.sp_fyhz.FieldByName( 'fysl' ).AsString;
          hz10.Caption := format( '%8.2f', [dm_data.sp_fyhz.FieldByName( 'fyje' ).Asfloat] );
        end;

    end;
    dm_data.sp_fyhz.Next;
  end;
end;

procedure Tfrm_print_fymx_hz.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  dm_data.sp_fyhz.First;
end;

end.
