unit p_repo_czyrb;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  QuickRpt, ExtCtrls, Qrctrls, Db, ADODB;

type
  Tfrm_repo_czyrb = class(TForm)
    QuickRep1: TQuickRep;
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
    qrbndTitleBand1: TQRBand;
    qrdbtxtjfje: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    qrdbtxtjfbs: TQRDBText;
    qrdbtxtsyjze: TQRDBText;
    qrdbtxtjsbrfy: TQRDBText;
    qrdbtxtsyjrc: TQRDBText;
    qrdbtxtjsbryj: TQRDBText;
    qrdbtxtbcyrs: TQRDBText;
    qrdbtxtjsyjbs: TQRDBText;
    qrdbtxtjsssje: TQRDBText;
    QRLabel9: TQRLabel;
    sfrq: TQRLabel;
    sfczy: TQRLabel;
    qrshp3: TQRShape;
    qrshp4: TQRShape;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    qrshp5: TQRShape;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel22: TQRLabel;
    qrshp6: TQRShape;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    qrshp7: TQRShape;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    qrshp8: TQRShape;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    qrdbtxtcybxrc: TQRDBText;
    qrdbtxtcybxje: TQRDBText;
    qrdbtxtcytxrc: TQRDBText;
    qrdbtxtcytxje: TQRDBText;
    qrdbtxtbryrs: TQRDBText;
    qrshp9: TQRShape;
    qrshp10: TQRShape;
    qrshp11: TQRShape;
    qrshp12: TQRShape;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    qrdbtxtzchzfy: TQRDBText;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    qrdbtxtqffy: TQRDBText;
    qrshp13: TQRShape;
    QRLabel36: TQRLabel;
    qrdbtxtyjssje: TQRDBText;
    dxje: TQRLabel;
    QRLabel37: TQRLabel;
    qrdbtxthjje: TQRDBText;
    qrshp14: TQRShape;
    qrdbtxttyjze: TQRDBText;
    qrdbtxttyjrc: TQRDBText;
    QRLabel3: TQRLabel;
    qrshp15: TQRShape;
    QRLabel4: TQRLabel;
    QRLabel6: TQRLabel;
    qrdbtxtjsqfbrfy: TQRDBText;
    qrdbtxtjsqfbryj: TQRDBText;
    jzdh: TQRLabel;
    qrshp16: TQRShape;
    qrbndDetailBand1: TQRBand;
    qrshp2: TQRShape;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    sp_jsdx: TADOStoredProc;
    qrsbdtl1: TQRSubDetail;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    qrdbtxtjssjqzh: TQRDBText;
    qrdbtxtjstfsjh: TQRDBText;
    qrshp1: TQRShape;
    QRLabel19: TQRLabel;
    qrdbtxttfsjh: TQRDBText;
    QRLabel21: TQRLabel;
    qrdbtxtsjqzh: TQRDBText;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRLabel43: TQRLabel;
    qrshp17: TQRShape;
    qrshp18: TQRShape;
    qrshp19: TQRShape;
    qrshp20: TQRShape;
    qrshp21: TQRShape;
    qrshp22: TQRShape;
    qrshp23: TQRShape;
    qrshp24: TQRShape;
    mc01: TQRLabel;
    je01: TQRLabel;
    mc02: TQRLabel;
    je02: TQRLabel;
    mc03: TQRLabel;
    je03: TQRLabel;
    mc04: TQRLabel;
    je04: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRDBText1: TQRDBText;
    qry_dyfxjje: TBCDField;
    QuickRep2: TQuickRep;
    QRBand1: TQRBand;
    QRDBText2: TQRDBText;
    QRLabel46: TQRLabel;
    QRLabel47: TQRLabel;
    QRLabel48: TQRLabel;
    QRLabel49: TQRLabel;
    QRLabel50: TQRLabel;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRLabel51: TQRLabel;
    sfrq2: TQRLabel;
    sfczy2: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRLabel54: TQRLabel;
    QRLabel55: TQRLabel;
    QRLabel56: TQRLabel;
    QRShape3: TQRShape;
    QRLabel57: TQRLabel;
    QRLabel58: TQRLabel;
    QRLabel59: TQRLabel;
    QRLabel60: TQRLabel;
    QRShape4: TQRShape;
    QRLabel61: TQRLabel;
    QRLabel62: TQRLabel;
    QRLabel63: TQRLabel;
    QRShape5: TQRShape;
    QRLabel64: TQRLabel;
    QRLabel65: TQRLabel;
    QRLabel66: TQRLabel;
    QRShape6: TQRShape;
    QRLabel67: TQRLabel;
    QRLabel68: TQRLabel;
    QRLabel69: TQRLabel;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRLabel70: TQRLabel;
    QRLabel71: TQRLabel;
    QRDBText16: TQRDBText;
    QRLabel72: TQRLabel;
    QRLabel73: TQRLabel;
    QRDBText17: TQRDBText;
    QRShape11: TQRShape;
    QRLabel74: TQRLabel;
    QRDBText18: TQRDBText;
    dxje2: TQRLabel;
    QRLabel76: TQRLabel;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText21: TQRDBText;
    QRLabel77: TQRLabel;
    QRShape13: TQRShape;
    QRLabel78: TQRLabel;
    QRLabel79: TQRLabel;
    QRDBText22: TQRDBText;
    QRDBText23: TQRDBText;
    jzdh2: TQRLabel;
    QRShape14: TQRShape;
    QRLabel83: TQRLabel;
    QRLabel84: TQRLabel;
    QRDBText24: TQRDBText;
    QRSubDetail1: TQRSubDetail;
    QuickRep3: TQuickRep;
    QRBand2: TQRBand;
    QRLabel114: TQRLabel;
    QRSubDetail2: TQRSubDetail;
    QRLabel52: TQRLabel;
    QRLabel53: TQRLabel;
    QRDBText25: TQRDBText;
    QRDBText26: TQRDBText;
    QRShape12: TQRShape;
    QRLabel75: TQRLabel;
    QRDBText27: TQRDBText;
    QRLabel80: TQRLabel;
    QRDBText28: TQRDBText;
    QRLabel81: TQRLabel;
    QRLabel82: TQRLabel;
    QRLabel85: TQRLabel;
    QRLabel86: TQRLabel;
    QRLabel87: TQRLabel;
    QRLabel88: TQRLabel;
    QRBand3: TQRBand;
    sfrq3: TQRLabel;
    sfczy3: TQRLabel;
    QRShape15: TQRShape;
    jzdh3: TQRLabel;
    fj_jzdh: TQRLabel;
    fj_sfrq: TQRLabel;
    fj_sfczy: TQRLabel;
    QuickRep4: TQuickRep;
    QRBand4: TQRBand;
    t_syyymm: TQRLabel;
    t_sy_title: TQRLabel;
    sfrq_sy: TQRLabel;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    QRShape19: TQRShape;
    QRShape20: TQRShape;
    QRShape21: TQRShape;
    QRShape22: TQRShape;
    QRShape23: TQRShape;
    QRShape24: TQRShape;
    QRShape25: TQRShape;
    QRShape26: TQRShape;
    QRShape27: TQRShape;
    QRLabel89: TQRLabel;
    QRLabel90: TQRLabel;
    QRShape28: TQRShape;
    QRShape29: TQRShape;
    QRLabel91: TQRLabel;
    QRLabel92: TQRLabel;
    QRLabel93: TQRLabel;
    QRLabel94: TQRLabel;
    QRLabel95: TQRLabel;
    QRLabel96: TQRLabel;
    QRLabel97: TQRLabel;
    QRLabel98: TQRLabel;
    QRLabel99: TQRLabel;
    QRLabel100: TQRLabel;
    QRLabel101: TQRLabel;
    QRShape30: TQRShape;
    QRLabel102: TQRLabel;
    QRLabel103: TQRLabel;
    QRLabel104: TQRLabel;
    QRLabel105: TQRLabel;
    QRLabel106: TQRLabel;
    QRShape31: TQRShape;
    QRShape32: TQRShape;
    QRLabel107: TQRLabel;
    QRLabel108: TQRLabel;
    QRLabel109: TQRLabel;
    QRLabel110: TQRLabel;
    QRLabel111: TQRLabel;
    czy_sy: TQRLabel;
    zbrq: TQRLabel;
    dxje_sy: TQRLabel;
    cytxje_sy: TQRDBText;
    cybxje_sy: TQRDBText;
    syjze_sy: TQRDBText;
    QRDBText29: TQRDBText;
    QRDBText30: TQRDBText;
    QRDBText31: TQRDBText;
    QRDBText32: TQRDBText;
    qrshp25: TQRShape;
    qrlbl1: TQRLabel;
    qrlbl2: TQRLabel;
    qrlbl3: TQRLabel;
    qrlbl4: TQRLabel;
    qrlbl5: TQRLabel;
    qrlbl6: TQRLabel;
    qrlbl7: TQRLabel;
    qrlbl8: TQRLabel;
    qrlbl9: TQRLabel;
    qrlbl10: TQRLabel;
    qrlbl11: TQRLabel;
    qrlbl12: TQRLabel;
    bkxjsl: TQRDBText;
    bkxjzje: TQRDBText;
    bksksl: TQRDBText;
    QRDBText33: TQRDBText;
    bksbsl: TQRDBText;
    fzsmbksbzje: TQRDBText;
    tkxjzje: TQRDBText;
    fzsmtkxjsl: TQRDBText;
    tksksl: TQRDBText;
    fzsmtkskzje: TQRDBText;
    fzsmtksbsl: TQRDBText;
    fzsmtksbzje: TQRDBText;
    qry_dytkxjsl: TIntegerField;
    qry_dytkxjzje: TBCDField;
    qry_dytksksl: TIntegerField;
    qry_dytkskzje: TBCDField;
    qry_dytksbsl: TIntegerField;
    qry_dytksbzje: TBCDField;
    qry_dybkxjsl: TIntegerField;
    qry_dybkxjzje: TBCDField;
    qry_dybksksl: TIntegerField;
    qry_dybkskzje: TBCDField;
    qry_dybksbsl: TIntegerField;
    qry_dybksbzje: TBCDField;
    QRShape33: TQRShape;
    qrlab1: TQRLabel;
    QRShape34: TQRShape;
    qrlab2: TQRLabel;
    qrlab3: TQRLabel;
    qry_jzfp: TADOQuery;
    qrlab4: TQRLabel;
    QRShape35: TQRShape;
    qrlab5: TQRLabel;
    qrlab6: TQRLabel;
    qrlab7: TQRLabel;
    QRShape36: TQRShape;
    qrlab8: TQRLabel;
    qrlab9: TQRLabel;
    qrdbtxtsyjze2: TQRDBText;
    qrlab10: TQRLabel;
    QRShape37: TQRShape;
    qrlab11: TQRLabel;
    qrlab12: TQRLabel;
    qry_dyfpsyjze: TBCDField;
    qry_dyfpsyjrc: TIntegerField;
    qry_dyfptyjze: TBCDField;
    qry_dyfptyjrc: TIntegerField;
    qry_dyfpcybxje: TBCDField;
    qry_dyfpcybxrc: TIntegerField;
    qry_dyfpcytxje: TBCDField;
    qry_dyfpcytxrc: TIntegerField;
    qrdbtxt_fpcybxrc: TQRDBText;
    qrdbtxt_fpcytxrc: TQRDBText;
    qrdbtxt_jzfpcytxje: TQRDBText;
    qrdbtxt_jzfptyjrc: TQRDBText;
    qrdbtxt_jzfptyze: TQRDBText;
    qrdbtxt_fpsyjrc: TQRDBText;
    qrdbtxt_jzfpsyze: TQRDBText;
    QRLabel112: TQRLabel;
    QRLabel113: TQRLabel;
    QRDBText34: TQRDBText;
    QRDBText35: TQRDBText;
    qry_dysyjze_1: TBCDField;
    qry_dytsyfzje: TBCDField;
    qry_dytsmzbzje: TBCDField;
    qry_dytsyfzje_1: TBCDField;
    qry_dytsmzbzje_1: TBCDField;
    QRLabel115: TQRLabel;
    QRLabel116: TQRLabel;
    jmfsl: TQRDBText;
    qry_dyjmfsl: TIntegerField;
    qry_dydbfsl: TIntegerField;
    qry_dyjmfzje: TFloatField;
    qry_dydbfzje: TFloatField;
    dbfsl: TQRDBText;
    jmfzje: TQRDBText;
    dbfzje: TQRDBText;
    QRLabel117: TQRLabel;
    QRLabel118: TQRLabel;
    procedure qry_dyCalcFields(DataSet: TDataSet);
    procedure qrsbdtl1NeedData(Sender: TObject; var MoreData: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_repo_czyrb: Tfrm_repo_czyrb;

implementation
uses p_zyczyrb,p_dm;
{$R *.DFM}

procedure Tfrm_repo_czyrb.qrsbdtl1NeedData(Sender: TObject;
  var MoreData: Boolean);
var
    I: integer;
begin
    MoreData := True;
    i := 1;
    if sp_jsdx.Eof then
        MoreData := False;
    mc01.Caption := '';
    mc02.Caption := '';
    mc03.Caption := '';
    mc04.Caption := '';

    je01.Caption := '';
    je02.Caption := '';
    je03.Caption := '';
    je04.Caption := '';

    for i := 1 to 4 do
    begin
        if sp_jsdx.eof then
            break;
        case I of
            1:
                begin
                    mc01.Caption := trim( sp_jsdx.FieldByName( 'kmmc' ).AsString );
                    je01.Caption := trim( format( '%8.2f', [sp_jsdx.FieldByName( 'fyje' ).Asfloat] ) );
                end;
            2:
                begin
                    mc02.Caption := trim( sp_jsdx.FieldByName( 'kmmc' ).AsString );
                    je02.Caption := trim( format( '%8.2f', [sp_jsdx.FieldByName( 'fyje' ).Asfloat] ) );
                end;
            3:
                begin
                    mc03.Caption := trim( sp_jsdx.FieldByName( 'kmmc' ).AsString );
                    je03.Caption := trim( format( '%8.2f', [sp_jsdx.FieldByName( 'fyje' ).Asfloat] ) );
                end;
            4:
                begin
                    mc04.Caption := trim( sp_jsdx.FieldByName( 'kmmc' ).AsString );
                    je04.Caption := trim( format( '%8.2f', [sp_jsdx.FieldByName( 'fyje' ).Asfloat] ) );
                end;
        end;
        sp_jsdx.Next;
    end;

end;

procedure Tfrm_repo_czyrb.qry_dyCalcFields(DataSet: TDataSet);
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
  if pub_yydm<>'0234' then   // 遂宁中医院实缴金额打印需要把非现金算进去
  begin
    if pub_yydm<>'0261' then
    begin
      qry_dy['hjje']:=qry_dy.fieldbyname('syjze').asfloat-qry_dy.fieldbyname('tyjze').asfloat+
                    qry_dy.fieldbyname('cybxje').asfloat-qry_dy.fieldbyname('cytxje').asfloat+
                    qry_dy.fieldbyname('qffy').asfloat+qry_dy.fieldbyname('zchzfy').asfloat-
                    qry_dy.fieldbyname('fxjje').asfloat;
    end else
    begin
      qry_dy['hjje']:=qry_dy.fieldbyname('syjze').asfloat-qry_dy.fieldbyname('tyjze').asfloat+
                    qry_dy.fieldbyname('cybxje').asfloat-qry_dy.fieldbyname('cytxje').asfloat+
                    qry_dy.fieldbyname('qffy').asfloat+qry_dy.fieldbyname('zchzfy').asfloat-
                    qry_dy.fieldbyname('fxjje').asfloat-qry_dy.fieldbyname('bkskzje').asfloat-
                    qry_dy.fieldbyname('bksbzje').asfloat;
    end;
  end
  else
  begin
    qry_dy['hjje']:=qry_dy.fieldbyname('syjze').asfloat-qry_dy.fieldbyname('tyjze').asfloat+
                  qry_dy.fieldbyname('cybxje').asfloat-qry_dy.fieldbyname('cytxje').asfloat+
                  qry_dy.fieldbyname('qffy').asfloat+qry_dy.fieldbyname('zchzfy').asfloat;
  end;

end;
initialization
  RegisterClass(Tfrm_repo_czyrb);
end.
