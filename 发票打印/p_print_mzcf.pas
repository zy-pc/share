unit p_print_mzcf;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, StdCtrls, ADODB, Printers;

type
  Tfrm_print_mzcf = class(TForm)
    QuickRep_mzxy: TQuickRep;
    QRBand1: TQRBand;
    QRBand2: TQRBand;
    QRBand3: TQRBand;
    QRGroup1: TQRGroup;
    QRBand4: TQRBand;
    QRDBText39: TQRDBText;
    yymc_xy: TQRLabel;
    QRLabel69: TQRLabel;
    QRLabel44: TQRLabel;
    QRDBText32: TQRDBText;
    QRLabel58: TQRLabel;
    QRDBText34: TQRDBText;
    QRLabel59: TQRLabel;
    QRDBText35: TQRDBText;
    QRLabel60: TQRLabel;
    QRLabel37: TQRLabel;
    QRDBText29: TQRDBText;
    QRLabel38: TQRLabel;
    QRDBText30: TQRDBText;
    QRLabel39: TQRLabel;
    QRDBText31: TQRDBText;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRLabel56: TQRLabel;
    QRDBText48: TQRDBText;
    QRLabel61: TQRLabel;
    QRDBText36: TQRDBText;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRLabel46: TQRLabel;
    QRDBText33: TQRDBText;
    QRLabel63: TQRLabel;
    QRDBText40: TQRDBText;
    QRDBText41: TQRDBText;
    QRDBText42: TQRDBText;
    QRLabel51: TQRLabel;
    QRDBText44: TQRDBText;
    QRDBText47: TQRDBText;
    QRDBText45: TQRDBText;
    QRDBText43: TQRDBText;
    QRLabel53: TQRLabel;
    QRDBText49: TQRDBText;
    QRLabel54: TQRLabel;
    QRDBText46: TQRDBText;
    QRLabel52: TQRLabel;
    QRLabel55: TQRLabel;
    QRShape12: TQRShape;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRShape9: TQRShape;
    xms: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRDBText21: TQRDBText;
    QuickRep_mzzy: TQuickRep;
    QRBand5: TQRBand;
    QRDBText1: TQRDBText;
    yymc_zy: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabel7: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel8: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel11: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabel12: TQRLabel;
    QRDBText7: TQRDBText;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    QRLabel13: TQRLabel;
    QRDBText8: TQRDBText;
    QRLabel14: TQRLabel;
    QRDBText9: TQRDBText;
    QRShape19: TQRShape;
    QRShape20: TQRShape;
    QRLabel15: TQRLabel;
    QRDBText10: TQRDBText;
    QRBand7: TQRBand;
    QRLabel18: TQRLabel;
    QRDBText19: TQRDBText;
    QRLabel19: TQRLabel;
    QRDBText20: TQRDBText;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRShape21: TQRShape;
    QRShape22: TQRShape;
    QRShape23: TQRShape;
    QRShape24: TQRShape;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRBand8: TQRBand;
    QRLabel25: TQRLabel;
    QRSubDetail1: TQRSubDetail;
    QRL_ypmc1: TQRLabel;
    QRL_ypsl1: TQRLabel;
    QRL_ypdw1: TQRLabel;
    QRL_ypmc2: TQRLabel;
    QRL_ypsl2: TQRLabel;
    QRL_ypdw2: TQRLabel;
    QRL_ypmc3: TQRLabel;
    QRL_ypsl3: TQRLabel;
    QRL_ypdw3: TQRLabel;
    GroupHeaderBand1: TQRBand;
    QRLabel24: TQRLabel;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRLabel4: TQRLabel;
    QRShape25: TQRShape;
    QRDBText14: TQRDBText;
    QRLabel16: TQRLabel;
    QRDBText15: TQRDBText;
    QRL_ypmc4: TQRLabel;
    QRL_ypsl4: TQRLabel;
    QRL_ypdw4: TQRLabel;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    procedure QRSubDetail1NeedData(Sender: TObject; var MoreData: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure pub_print_mzcf();
    procedure pub_print_mzcf_zy();
  end;

var
  frm_print_mzcf: Tfrm_print_mzcf;

implementation
uses p_dm, p_mzcfcx;
{$R *.dfm}

{ Tfrm_print_mzcf }

procedure Tfrm_print_mzcf.pub_print_mzcf();
begin
  Application.CreateForm(Tfrm_print_mzcf, frm_print_mzcf);
  try
    with frm_print_mzcf do
    begin
      yymc_xy.Caption := trim(pub_yymc) + '  处方笺';
      QRLabel16.Enabled := (pub_yymc = '0046');
      QRDBText15.Enabled := (pub_yymc = '0046');
      if Frm_mzcfcx.cb_yl.Checked then
        QuickRep_mzxy.Preview
      else
        QuickRep_mzxy.Print;
    end;
  finally
    frm_print_mzcf.Free;
  end;
end;

procedure Tfrm_print_mzcf.pub_print_mzcf_zy();
begin
  Application.CreateForm(Tfrm_print_mzcf, frm_print_mzcf);
  try
    with frm_print_mzcf do
    begin
      yymc_zy.Caption := trim(pub_yymc) + '  处方笺';
      if Frm_mzcfcx.cb_yl.Checked then
        QuickRep_mzzy.Preview
      else
        QuickRep_mzzy.Print;
    end;
  finally
    frm_print_mzcf.Free;
  end;
end;

procedure Tfrm_print_mzcf.QRSubDetail1NeedData(Sender: TObject;
  var MoreData: Boolean);
  procedure SetCaption(id: Integer; const mc, sl, dw: string);
  var aControl: TControl;
  begin
    aControl := QRSubDetail1.FindChildControl('QRL_ypmc' + IntToStr(id));
    if aControl is TQRLabel then
      TQRLabel(aControl).Caption := mc;
    aControl := QRSubDetail1.FindChildControl('QRL_ypsl' + IntToStr(id));
    if aControl is TQRLabel then
      TQRLabel(aControl).Caption := sl;
    aControl := QRSubDetail1.FindChildControl('QRL_ypdw' + IntToStr(id));
    if aControl is TQRLabel then
      TQRLabel(aControl).Caption := dw;
  end;
var i: Integer;
begin
  MoreData := not Frm_mzcfcx.sp_mx.Eof;
  for I := 1 to 4 do
  begin
    if Frm_mzcfcx.sp_mx.Eof then
      SetCaption(i, ' ', ' ', ' ')
    else
      SetCaption(i, Trim(Frm_mzcfcx.sp_mx.FieldByName('ypmc').AsString),
        IntToStr(Frm_mzcfcx.sp_mx.FieldByName('ypsl').AsInteger),
        Trim(Frm_mzcfcx.sp_mx.FieldByName('ypdw').AsString));
    Frm_mzcfcx.sp_mx.Next;
  end;
end;

end.

