unit p_repo_czyyjrb;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  QuickRpt, ExtCtrls, Qrctrls, Db, ADODB;

type
  Tfrm_repo_czyyjrb = class(TForm)
    QuickRep1: TQuickRep;
    ColumnHeaderBand1: TQRBand;
    QRDBText3: TQRDBText;
    QRDBText5: TQRDBText;
    QRLabel12: TQRLabel;
    sfrq: TQRLabel;
    sfczy: TQRLabel;
    QRShape1: TQRShape;
    QRLabel16: TQRLabel;
    QRShape3: TQRShape;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRDBText18: TQRDBText;
    QRLabel21: TQRLabel;
    QRDBText20: TQRDBText;
    QRLabel36: TQRLabel;
    QRDBText23: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRLabel1: TQRLabel;
    QRShape2: TQRShape;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    dxje: TQRLabel;
    qry_dy: TADOQuery;
    qry_dyjzdh: TStringField;
    qry_dyczydm: TStringField;
    qry_dyjzrq: TDateTimeField;
    qry_dysyjze: TBCDField;
    qry_dysyjrc: TIntegerField;
    qry_dytyjze: TBCDField;
    qry_dytyjrc: TIntegerField;
    qry_dycybxje: TBCDField;
    qry_dycybxrc: TIntegerField;
    qry_dycytxje: TBCDField;
    qry_dycytxrc: TIntegerField;
    qry_dyssje: TBCDField;
    qry_dysjqzh: TMemoField;
    qry_dytfsjh: TMemoField;
    qry_dyjssjqzh: TMemoField;
    qry_dyjstfsjh: TMemoField;
    qry_dybryrs: TIntegerField;
    qry_dybcyrs: TIntegerField;
    qry_dyjfje: TBCDField;
    qry_dyjfbs: TIntegerField;
    qry_dyjsbrfy: TBCDField;
    qry_dyjsbryj: TBCDField;
    qry_dyjsyjbs: TIntegerField;
    qry_dyjsqfbrfy: TBCDField;
    qry_dyjsqfbryj: TBCDField;
    qry_dyzchzfy: TBCDField;
    qry_dyqffy: TBCDField;
    qry_dyyjssje: TCurrencyField;
    qry_dyjsssje: TCurrencyField;
    qry_dyhjje: TCurrencyField;
    qry_dyksrq: TDateTimeField;
    qry_dyjsrq: TDateTimeField;
    jzdh: TQRLabel;
    QRLabel13: TQRLabel;
    QRDBText4: TQRDBText;
    QRShape7: TQRShape;
    QRLabel37: TQRLabel;
    qrdbtxthjje: TQRDBText;
    qry_dyfxjje: TBCDField;
    procedure qry_dyCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_repo_czyyjrb: Tfrm_repo_czyyjrb;

implementation
uses p_zyczyrb,p_dm;
{$R *.DFM}

procedure Tfrm_repo_czyyjrb.qry_dyCalcFields(DataSet: TDataSet);
begin
qry_dy['yjssje']:=qry_dy.fieldbyname('syjze').asfloat-qry_dy.fieldbyname('tyjze').asfloat;
qry_dy['jsssje']:=qry_dy.fieldbyname('cybxje').asfloat-qry_dy.fieldbyname('cytxje').asfloat+
                  qry_dy.fieldbyname('qffy').asfloat+qry_dy.fieldbyname('zchzfy').asfloat;
if pub_yydm='0261' then
   begin
//    qry_dy['jsssje']:=qry_dy.fieldbyname('bkxjzje').asfloat-qry_dy.fieldbyname('tkxjzje').asfloat+
//                    qry_dy.fieldbyname('qffy').asfloat+qry_dy.fieldbyname('zchzfy').asfloat;
    QRLabel36.Caption:='预交现金金额';
    qry_dy['yjssje']:=qry_dy.fieldbyname('syjze').asfloat-qry_dy.fieldbyname('fxjje').asfloat;
   end;
if pub_yydm<>'0234' then
begin
qry_dy['hjje']:=qry_dy.fieldbyname('syjze').asfloat-qry_dy.fieldbyname('tyjze').asfloat-
                qry_dy.fieldbyname('fxjje').asfloat;//+
//                qry_dy.fieldbyname('cybxje').asfloat-qry_dy.fieldbyname('cytxje').asfloat+
//                qry_dy.fieldbyname('qffy').asfloat+qry_dy.fieldbyname('zchzfy').asfloat;
end
else
begin
  qry_dy['hjje']:=qry_dy.fieldbyname('syjze').asfloat-qry_dy.fieldbyname('tyjze').asfloat;
end;

end;
initialization
  RegisterClass(Tfrm_repo_czyyjrb);
end.
