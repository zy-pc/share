unit p_repo_czyjsrb;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  QuickRpt, ExtCtrls, Qrctrls, Db, ADODB, StdCtrls;

type
  Tfrm_repo_czyjsrb = class(TForm)
    QuickRep1: TQuickRep;
    ColumnHeaderBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel7: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    sfrq: TQRLabel;
    sfczy: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel22: TQRLabel;
    QRShape5: TQRShape;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRShape8: TQRShape;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRShape9: TQRShape;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText19: TQRDBText;
    QRShape4: TQRShape;
    QRShape10: TQRShape;
    QRShape12: TQRShape;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRDBText21: TQRDBText;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRDBText22: TQRDBText;
    QRShape13: TQRShape;
    QRShape3: TQRShape;
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
    QRDBText3: TQRDBText;
    QRDBText5: TQRDBText;
    jzdh: TQRLabel;
    qry_dyksrq: TDateTimeField;
    qry_dyjsrq: TDateTimeField;
    qrshp1: TQRShape;
    qrshp2: TQRShape;
    qrlbl_jsbk: TQRLabel;
    qrlbl_xj: TQRLabel;
    qrlbl_sk: TQRLabel;
    qrlbl_sb: TQRLabel;
    qrlbl_xjt: TQRLabel;
    qrlbl_skt: TQRLabel;
    qrlbl_sbt: TQRLabel;
    qrlbl_sl: TQRLabel;
    qrlbl_slt: TQRLabel;
    qrlbl_zje: TQRLabel;
    qrlbl_jet: TQRLabel;
    qry_bkxj: TADOQuery;
    bkxjsl: TQRDBText;
    bkxjzje: TQRDBText;
    fzsmbksksl: TQRDBText;
    bkskzje: TQRDBText;
    bksbsl: TQRDBText;
    bksbzje: TQRDBText;
    tkxjsl: TQRDBText;
    tkxjzje: TQRDBText;
    tksksl: TQRDBText;
    tkskzje: TQRDBText;
    tksbsl: TQRDBText;
    tksbzje: TQRDBText;
    qrlbl_jstk: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    qry_dytsyfzje: TBCDField;
    qry_dytsmzbzje: TBCDField;
    procedure qry_dyCalcFields(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_repo_czyjsrb: Tfrm_repo_czyjsrb;

implementation
uses p_zyczyrb,P_dm;
{$R *.DFM}

procedure Tfrm_repo_czyjsrb.FormShow(Sender: TObject);
begin
  if pub_yydm<>'0269' then
  begin
   QRLabel3.Visible :=False;
   QRLabel4.Visible :=False;
   QRDBText12.Visible :=False;
   QRDBText13.Visible :=False;
  end;
end;

procedure Tfrm_repo_czyjsrb.qry_dyCalcFields(DataSet: TDataSet);
begin
qry_dy['yjssje']:=qry_dy.fieldbyname('syjze').asfloat;
qry_dy['jsssje']:=qry_dy.fieldbyname('cybxje').asfloat-qry_dy.fieldbyname('cytxje').asfloat+
                  qry_dy.fieldbyname('qffy').asfloat+qry_dy.fieldbyname('zchzfy').asfloat;
qry_dy['hjje']:=qry_dy.fieldbyname('syjze').asfloat+
                qry_dy.fieldbyname('cybxje').asfloat-qry_dy.fieldbyname('cytxje').asfloat+
                qry_dy.fieldbyname('qffy').asfloat+qry_dy.fieldbyname('zchzfy').asfloat;
end;
initialization
  RegisterClass(Tfrm_repo_czyjsrb);
end.
