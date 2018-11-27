unit p_repo_fymxhz;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt, QRCtrls, DB, ADODB, DateUtils;

type
  Tfrm_repo_fymxhz = class(TForm)
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    TitleBand1: TQRBand;
    DetailBand1: TQRBand;
    m_bt: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    m_zyh: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    m_xm: TQRLabel;
    m_xb: TQRLabel;
    m_sfzl: TQRLabel;
    m_zyts: TQRLabel;
    m_nl: TQRLabel;
    m_bq: TQRLabel;
    m_ch: TQRLabel;
    m_ryrj: TQRLabel;
    m_cysj: TQRLabel;
    m_yj: TQRLabel;
    m_fyhj: TQRLabel;
    m_ye: TQRLabel;
    sp_fyhz: TADOStoredProc;
    QuickRep2: TQuickRep;
    QRBand1: TQRBand;
    my_bt: TQRLabel;
    my_zyh: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    my_xm: TQRLabel;
    my_xb: TQRLabel;
    my_nl: TQRLabel;
    my_bq: TQRLabel;
    my_hzcfs: TQRLabel;
    my_jehj: TQRLabel;
    my_ypzs: TQRLabel;
    QRBand2: TQRBand;
    QRLabel50: TQRLabel;
    QRLabel52: TQRLabel;
    QRLabel53: TQRLabel;
    QRLabel54: TQRLabel;
    QRLabel55: TQRLabel;
    QRLabel56: TQRLabel;
    QRShape7: TQRShape;
    QRBand3: TQRBand;
    QRDBText8: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    my_jlhj: TQRLabel;
    my_ylhj: TQRLabel;
    my_zfhj: TQRLabel;
    QRLabel44: TQRLabel;
    QRDBText9: TQRDBText;
    sp_yyhz: TADOStoredProc;
    QRLabel23: TQRLabel;
    QRDBText15: TQRDBText;
    sp_hz: TADOStoredProc;
    QRCompositeReport1: TQRCompositeReport;
    QuickRep4: TQuickRep;
    QRSubDetail2: TQRSubDetail;
    QRBand5: TQRBand;
    QRShape9: TQRShape;
    QRLabel61: TQRLabel;
    QRLabel62: TQRLabel;
    QRLabel63: TQRLabel;
    QRLabel64: TQRLabel;
    QRLabel65: TQRLabel;
    QRLabel66: TQRLabel;
    QRLabel67: TQRLabel;
    QRLabel68: TQRLabel;
    QRLabel69: TQRLabel;
    QRLabel70: TQRLabel;
    QRLabel71: TQRLabel;
    QRLabel72: TQRLabel;
    QRLabel73: TQRLabel;
    QRLabel74: TQRLabel;
    QRLabel75: TQRLabel;
    QRLabel76: TQRLabel;
    QRLabel77: TQRLabel;
    QRLabel78: TQRLabel;
    QRLabel79: TQRLabel;
    QRLabel80: TQRLabel;
    QRLabel81: TQRLabel;
    QRLabel82: TQRLabel;
    QRLabel83: TQRLabel;
    QRLabel84: TQRLabel;
    QRLabel85: TQRLabel;
    QRLabel86: TQRLabel;
    QRLabel87: TQRLabel;
    QRLabel88: TQRLabel;
    QRLabel89: TQRLabel;
    QRShape10: TQRShape;
    QRLabel90: TQRLabel;
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
    QRBand7: TQRBand;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRLabel43: TQRLabel;
    QRLabel45: TQRLabel;
    QRLabel47: TQRLabel;
    QRLabel48: TQRLabel;
    QRLabel49: TQRLabel;
    QRLabel51: TQRLabel;
    QRLabel58: TQRLabel;
    QRLabel59: TQRLabel;
    QRLabel60: TQRLabel;
    QRCompositeReport2: TQRCompositeReport;
    QuickRep3: TQuickRep;
    QRBand8: TQRBand;
    bt: TQRLabel;
    QRBand9: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel46: TQRLabel;
    QRLabel104: TQRLabel;
    QRDBText21: TQRDBText;
    QRBand10: TQRBand;
    QRLabel105: TQRLabel;
    QRSubDetail1: TQRSubDetail;
    dl01: TQRLabel;
    dl02: TQRLabel;
    dl03: TQRLabel;
    dl04: TQRLabel;
    dl05: TQRLabel;
    dl06: TQRLabel;
    dl07: TQRLabel;
    dl08: TQRLabel;
    QRSubDetail3: TQRSubDetail;
    yj01: TQRLabel;
    yj02: TQRLabel;
    yj03: TQRLabel;
    YJ05: TQRLabel;
    YJ06: TQRLabel;
    YJ07: TQRLabel;
    YJ08: TQRLabel;
    YJ09: TQRLabel;
    yj04: TQRLabel;
    yj10: TQRLabel;
    yj11: TQRLabel;
    yj12: TQRLabel;
    QRSubDetail4: TQRSubDetail;
    edl01: TQRLabel;
    edl02: TQRLabel;
    edl03: TQRLabel;
    edl04: TQRLabel;
    edl05: TQRLabel;
    edl06: TQRLabel;
    edl07: TQRLabel;
    edl08: TQRLabel;
    QRBand12: TQRBand;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    brnl: TQRLabel;
    rcysj: TQRLabel;
    QRLabel119: TQRLabel;
    QRLabel120: TQRLabel;
    QRDBText19: TQRDBText;
    QRLabel121: TQRLabel;
    QRBand13: TQRBand;
    QRLabel122: TQRLabel;
    QRLabel123: TQRLabel;
    QRLabel124: TQRLabel;
    QRLabel125: TQRLabel;
    QRLabel126: TQRLabel;
    QRLabel127: TQRLabel;
    QRLabel128: TQRLabel;
    QRLabel129: TQRLabel;
    QRLabel130: TQRLabel;
    QRLabel131: TQRLabel;
    QRLabel132: TQRLabel;
    QRLabel133: TQRLabel;
    QRLabel134: TQRLabel;
    ChildBand1: TQRChildBand;
    QRLabel135: TQRLabel;
    QRLabel136: TQRLabel;
    QRLabel137: TQRLabel;
    QRLabel138: TQRLabel;
    QRLabel139: TQRLabel;
    QRLabel140: TQRLabel;
    QRLabel141: TQRLabel;
    QRLabel142: TQRLabel;
    QRLabel143: TQRLabel;
    QRLabel144: TQRLabel;
    QRLabel145: TQRLabel;
    QRLabel146: TQRLabel;
    QRLabel147: TQRLabel;
    QRDBText20: TQRDBText;
    QRDBText22: TQRDBText;
    QRDBText23: TQRDBText;
    QRDBText24: TQRDBText;
    QRDBText25: TQRDBText;
    QRDBText26: TQRDBText;
    QRLabel148: TQRLabel;
    QRLabel149: TQRLabel;
    QRLabel150: TQRLabel;
    QRDBText27: TQRDBText;
    QRDBText28: TQRDBText;
    QRDBText29: TQRDBText;
    QRDBText30: TQRDBText;
    QRDBText31: TQRDBText;
    QRDBText32: TQRDBText;
    QRDBText33: TQRDBText;
    QRDBText34: TQRDBText;
    QRDBText35: TQRDBText;
    QRLabel151: TQRLabel;
    QRDBText36: TQRDBText;
    QRDBText37: TQRDBText;
    QRBand14: TQRBand;
    QRSysData2: TQRSysData;
    QRLabel152: TQRLabel;
    QRDBText38: TQRDBText;
    q_zyts: TQRLabel;
    QRLabel106: TQRLabel;
    QRLabel107: TQRLabel;
    QRLabel108: TQRLabel;
    QRLabel109: TQRLabel;
    QRLabel110: TQRLabel;
    QRLabel111: TQRLabel;
    QRLabel112: TQRLabel;
    QRShape12: TQRShape;
    QRLabel113: TQRLabel;
    QRLabel114: TQRLabel;
    QRLabel115: TQRLabel;
    QRLabel116: TQRLabel;
    QRLabel117: TQRLabel;
    QRLabel118: TQRLabel;
    QRLabel153: TQRLabel;
    QRLabel154: TQRLabel;
    QRLabel155: TQRLabel;
    QRLabel156: TQRLabel;
    QRLabel157: TQRLabel;
    QRLabel158: TQRLabel;
    QRLabel159: TQRLabel;
    QRLabel160: TQRLabel;
    qrbndSummaryBand1: TQRBand;
    qrshp1: TQRShape;
    qrlbl1: TQRLabel;
    qrlbl2: TQRLabel;
    qrbndSummaryBand2: TQRBand;
    qrlbl3: TQRLabel;
    qrlbl_dyrq: TQRLabel;
    qrshp2: TQRShape;
    qrbndSummaryBand3: TQRBand;
    qrshp3: TQRShape;
    qrlbl4: TQRLabel;
    qrlbl_dyrq1: TQRLabel;
    sp_sebrqk: TADOStoredProc;
    procedure QRDBText13Print(sender: TObject; var Value: string);
    procedure QRDBText4Print(sender: TObject; var Value: string);
    procedure QRDBText16Print(sender: TObject; var Value: string);
    procedure QRSubDetail1NeedData(Sender: TObject; var MoreData: Boolean);
    procedure QRCompositeReport1AddReports(Sender: TObject);
    procedure rcysjPrint(sender: TObject; var Value: string);
    procedure brnlPrint(sender: TObject; var Value: string);
    procedure QRLabel46Print(sender: TObject; var Value: string);
    procedure QRSubDetail2NeedData(Sender: TObject; var MoreData: Boolean);
    procedure QRCompositeReport2AddReports(Sender: TObject);
    procedure QRSubDetail3NeedData(Sender: TObject; var MoreData: Boolean);
    procedure QRSubDetail4NeedData(Sender: TObject; var MoreData: Boolean);
    procedure btPrint(sender: TObject; var Value: string);
    procedure QRLabel135Print(sender: TObject; var Value: string);
    procedure m_btPrint(sender: TObject; var Value: string);
    procedure my_btPrint(sender: TObject; var Value: string);
    procedure qrlbl_dyrq1Print(sender: TObject; var Value: string);
    procedure qrlbl_dyrqPrint(sender: TObject; var Value: string);
  private

    procedure GetData(zyh, zt: string);
    procedure print1(zyh: string);
    procedure Print2(zyh: string);

    { Private declarations }
  public
    { Public declarations }
    procedure proc_Preview_2;
    procedure proc_Preview_1;

  end;

var
  frm_repo_fymxhz: Tfrm_repo_fymxhz;

procedure FymxHz_print1(zyh, zt: string);
procedure FymxHz_print2(zyh, zt: string);

implementation

uses p_dm, p_func;

{$R *.dfm}

procedure Tfrm_repo_fymxhz.brnlPrint(sender: TObject; var Value: string);
begin
  value := sp_sebrqk.fieldbyname('brnl').Asstring + '岁';
end;

procedure Tfrm_repo_fymxhz.btPrint(sender: TObject; var Value: string);
begin
  value := pub_yymc + '-住院病员费用清单（收据附件）';
end;

procedure Tfrm_repo_fymxhz.my_btPrint(sender: TObject; var Value: string);
begin
  value := pub_yymc + '住院病人用药明细汇总单';
end;

procedure Tfrm_repo_fymxhz.m_btPrint(sender: TObject; var Value: string);
begin
  value := pub_yymc + '病人费用明细汇总单';
end;

procedure Tfrm_repo_fymxhz.proc_Preview_1;
begin
  QRCompositeReport2.Preview;
end;

procedure Tfrm_repo_fymxhz.GetData(zyh, zt: string);
var
  cyrj: string;
  i: Integer;
  zyts: string;
begin
  if zt = '在院' then
  begin
    sp_sebrqk.ProcedureName := 'zysf_cx_zybrdj;1';
  end else
  begin
    sp_sebrqk.ProcedureName := 'zysf_cx_cybrdj;1';
  end;
  sp_sebrqk.Parameters.Refresh;
  sp_sebrqk.Active := false;
  sp_sebrqk.parameters.ParamByName('@zyh').value := zyh;
  sp_sebrqk.Open;
  dm_data.ad_fydl.Close;
  dm_data.ad_fydl.SQL.Clear;
  dm_data.ad_fydl.SQL.Text := 'select * from zysf_dljsz_ls where zyh=:zy_zyh order by kmdm';
  dm_data.ad_fydl.parameters.ParamByName('zy_zyh').value := zyh;
  dm_data.ad_fydl.open;
  dm_data.ad_yjmx.Close;
  dm_data.ad_yjmx.Parameters.Clear;
  dm_data.ad_yjmx.ProcedureName := 'zysf_cx_yjmx;1';
  dm_data.ad_yjmx.Parameters.Refresh;
  dm_data.ad_yjmx.parameters.ParamByName('@zyh').value := zyh;
  dm_data.ad_yjmx.open;

end;

procedure Tfrm_repo_fymxhz.proc_Preview_2;
begin
  QRCompositeReport1.Preview;
end;

procedure Tfrm_repo_fymxhz.QRCompositeReport1AddReports(Sender: TObject);
begin
  QRCompositeReport1.Reports.Add(QuickRep3);
  QRCompositeReport1.Reports.Add(QuickRep4);
end;

procedure Tfrm_repo_fymxhz.QRCompositeReport2AddReports(Sender: TObject);
begin
  QRCompositeReport2.Reports.Add(QuickRep3);
  QRCompositeReport2.Reports.Add(QuickRep1);
end;

procedure Tfrm_repo_fymxhz.QRDBText13Print(sender: TObject; var Value: string);
begin
  if value = '0.00' then value := ' ';
end;

procedure Tfrm_repo_fymxhz.QRDBText16Print(sender: TObject; var Value: string);
begin
  if value <> '' then
    value := formatdatetime('yy-mm-dd hh:mm', strtodatetime(Value));
end;

procedure Tfrm_repo_fymxhz.QRDBText4Print(sender: TObject; var Value: string);
begin
  value := trim(Value);
end;

procedure Tfrm_repo_fymxhz.QRLabel135Print(sender: TObject; var Value: string);
begin
  value := pub_yymc + '-住院病员费用结算清单';
end;

procedure Tfrm_repo_fymxhz.QRLabel46Print(sender: TObject; var Value: string);
begin
  if - sp_sebrqk.fieldbyname('sjyjze').asfloat + sp_sebrqk.fieldbyname('zfy').asfloat < 0 then
    value := '应退：' + format('%8.2f', [abs(-sp_sebrqk.fieldbyname('sjyjze').asfloat + sp_sebrqk.fieldbyname('zfy').asfloat)])
  else
    value := '应补：' + format('%8.2f', [abs(-sp_sebrqk.fieldbyname('sjyjze').asfloat + sp_sebrqk.fieldbyname('zfy').asfloat)])

end;

procedure Tfrm_repo_fymxhz.qrlbl_dyrq1Print(sender: TObject; var Value: string);
begin
  Value := FormatDateTime('yyyy-mm-dd hh:mm:ss', Frm_func.curr_date);
end;

procedure Tfrm_repo_fymxhz.qrlbl_dyrqPrint(sender: TObject; var Value: string);
begin
  Value := FormatDateTime('yyyy-mm-dd hh:mm:ss', Frm_func.curr_date);
end;

procedure Tfrm_repo_fymxhz.QRSubDetail1NeedData(Sender: TObject;
  var MoreData: Boolean);
var
  I: integer;
begin
  MoreData := True;
  i := 1;
  if dm_data.ad_fydl.Eof then
  begin
    dm_data.ad_fydl.First;
    MoreData := False;
    exit;
  end;
  dl01.Caption := '';
  dl02.Caption := '';
  dl03.Caption := '';
  dl04.Caption := '';
  dl05.Caption := '';
  dl06.Caption := '';
  dl07.Caption := '';
  dl08.Caption := '';
  for i := 1 to 4 do
  begin
    if dm_data.ad_fydl.eof then
    begin
      break;
    end;
    case I of
      1:
        begin
          dl01.Caption := dm_data.ad_fydl.FieldByName('kmmc').AsString;
          dl02.Caption := format('%8.2f', [dm_data.ad_fydl.FieldByName('fyje').Asfloat]);
        end;
      2:
        begin
          dl03.Caption := dm_data.ad_fydl.FieldByName('kmmc').AsString;
          dl04.Caption := format('%8.2f', [dm_data.ad_fydl.FieldByName('fyje').Asfloat]);
        end;
      3:
        begin
          dl05.Caption := dm_data.ad_fydl.FieldByName('kmmc').AsString;
          dl06.Caption := format('%8.2f', [dm_data.ad_fydl.FieldByName('fyje').Asfloat]);
        end;
      4:
        begin
          dl07.Caption := dm_data.ad_fydl.FieldByName('kmmc').AsString;
          dl08.Caption := format('%8.2f', [dm_data.ad_fydl.FieldByName('fyje').Asfloat]);
        end;
    end;
    dm_data.ad_fydl.Next;
  end;

end;

procedure Tfrm_repo_fymxhz.QRSubDetail2NeedData(Sender: TObject;
  var MoreData: Boolean);
var
  i: Integer;
begin
  MoreData := True;
  i := 1;
  if sp_fyhz.Eof then
  begin
    sp_fyhz.First;
    MoreData := False;
    exit;
  end;

  for i := 1 to 2 do
  begin
    if sp_fyhz.eof then
    begin
      break;
    end;
    case I of
      1:
        begin
          QRLabel61.Caption := IntToStr(sp_fyhz.FieldByName('id').AsInteger);
          QRLabel62.Caption := Trim(sp_fyhz.FieldByName('szdm').AsString);
          QRLabel63.Caption := Trim(sp_fyhz.FieldByName('fymc').AsString);
          QRLabel64.Caption := Trim(sp_fyhz.FieldByName('dw').AsString);
          QRLabel65.Caption := format('%8.2f', [sp_fyhz.FieldByName('dj').AsFloat]);
          QRLabel66.Caption := IntToStr(sp_fyhz.FieldByName('fysl').AsInteger);
          QRLabel67.Caption := format('%8.2f', [sp_fyhz.FieldByName('fyje').AsFloat]);
          sp_fyhz.Next;
        end;
      2:
        begin
          if Pos('合计', sp_fyhz.FieldByName('fymc').AsString) > 0 then
          begin
            QRLabel68.Caption := ' ';
            QRLabel69.Caption := ' ';
            QRLabel70.Caption := ' ';
            QRLabel71.Caption := ' ';
            QRLabel72.Caption := ' ';
            QRLabel73.Caption := ' ';
            QRLabel74.Caption := ' ';
          end
          else if Pos('合计', QRLabel63.Caption) > 0 then
          begin
            QRLabel68.Caption := ' ';
            QRLabel69.Caption := ' ';
            QRLabel70.Caption := ' ';
            QRLabel71.Caption := ' ';
            QRLabel72.Caption := ' ';
            QRLabel73.Caption := ' ';
            QRLabel74.Caption := ' ';
          end
          else
          begin
            QRLabel68.Caption := IntToStr(sp_fyhz.FieldByName('id').AsInteger);
            QRLabel69.Caption := Trim(sp_fyhz.FieldByName('szdm').AsString);
            QRLabel70.Caption := Trim(sp_fyhz.FieldByName('fymc').AsString);
            QRLabel71.Caption := Trim(sp_fyhz.FieldByName('dw').AsString);
            QRLabel72.Caption := format('%8.2f', [sp_fyhz.FieldByName('dj').AsFloat]);
            QRLabel73.Caption := IntToStr(sp_fyhz.FieldByName('fysl').AsInteger);
            QRLabel74.Caption := format('%8.2f', [sp_fyhz.FieldByName('fyje').AsFloat]);
            sp_fyhz.Next;
          end;
        end;
    end;
  end;
end;

procedure Tfrm_repo_fymxhz.QRSubDetail3NeedData(Sender: TObject;
  var MoreData: Boolean);
var
  I: integer;
begin
  MoreData := True;
  i := 1;
  if dm_data.ad_yjmx.Eof then
  begin
    dm_data.ad_yjmx.First;
    MoreData := False;
    exit;
  end;
  yj01.Caption := '';
  yj02.Caption := '';
  yj03.Caption := '';
  yj04.Caption := '';
  yj05.Caption := '';
  yj06.Caption := '';
  yj07.Caption := '';
  yj08.Caption := '';
  yj09.Caption := '';
  yj10.Caption := '';
  yj11.Caption := '';
  yj12.caption := '';
  for i := 1 to 3 do
  begin
    if dm_data.ad_yjmx.eof then
      break;
    case I of
      1: begin
          yj01.Caption := formatdatetime('mm/dd hh:mm', dm_data.ad_yjmx.FieldByName('sfrq').Asdatetime);
          yj02.Caption := dm_data.ad_yjmx.FieldByName('sjh').Asstring;
          yj03.Caption := format('%8.2f', [dm_data.ad_yjmx.FieldByName('yjje').Asfloat]);
          yj10.caption := dm_data.ad_yjmx.FieldByName('sfczy').asstring;
        end;
      2: begin
          yj04.Caption := formatdatetime('mm/dd hh:mm', dm_data.ad_yjmx.FieldByName('sfrq').Asdatetime);
          yj05.Caption := dm_data.ad_yjmx.FieldByName('sjh').Asstring;
          yj06.Caption := format('%8.2f', [dm_data.ad_yjmx.FieldByName('yjje').Asfloat]);
          yj11.Caption := dm_data.ad_yjmx.FieldByName('sfczy').asstring;
        end;
      3: begin
          yj07.Caption := formatdatetime('mm/dd hh:mm', dm_data.ad_yjmx.FieldByName('sfrq').Asdatetime);
          yj08.Caption := dm_data.ad_yjmx.FieldByName('sjh').Asstring;
          yj09.Caption := format('%8.2f', [dm_data.ad_yjmx.FieldByName('yjje').Asfloat]);
          yj12.caption := dm_data.ad_yjmx.FieldByName('sfczy').asstring;
        end
    end;
    dm_data.ad_yjmx.Next;
  end;

end;

procedure Tfrm_repo_fymxhz.QRSubDetail4NeedData(Sender: TObject;
  var MoreData: Boolean);
var
  I: integer;
begin
  MoreData := True;
  i := 1;
  if dm_data.sp_cwdl.Eof then
    MoreData := False;
  edl01.Caption := '';
  edl02.Caption := '';
  edl03.Caption := '';
  edl04.Caption := '';
  edl05.Caption := '';
  edl06.Caption := '';
  edl07.Caption := '';
  edl08.Caption := '';
  for i := 1 to 4 do
  begin
    if dm_data.sp_cwdl.eof then
      break;
    case I of
      1: begin
          edl01.Caption := dm_data.sp_cwdl.FieldByName('kmmc').AsString;
          edl02.Caption := format('%8.2f', [dm_data.sp_cwdl.FieldByName('fyje').Asfloat]);
        end;
      2:
        begin
          edl03.Caption := dm_data.sp_cwdl.FieldByName('kmmc').AsString;
          edl04.Caption := format('%8.2f', [dm_data.sp_cwdl.FieldByName('fyje').Asfloat]);
        end;
      3:
        begin
          edl05.Caption := dm_data.sp_cwdl.FieldByName('kmmc').AsString;
          edl06.Caption := format('%8.2f', [dm_data.sp_cwdl.FieldByName('fyje').Asfloat]);
        end;
      4:
        begin
          edl07.Caption := dm_data.sp_cwdl.FieldByName('kmmc').AsString;
          edl08.Caption := format('%8.2f', [dm_data.sp_cwdl.FieldByName('fyje').Asfloat]);
        end;
    end;
    dm_data.sp_cwdl.Next;
  end;

end;

procedure Tfrm_repo_fymxhz.rcysjPrint(sender: TObject; var Value: string);
begin
  if (sp_sebrqk.fieldbyname('cyrq').isnull) then
    value := formatdatetime('yyyy/mm/dd', sp_sebrqk.fieldbyname('ryrq').asdatetime) + '至' +
      formatdatetime('yyyy/mm/dd', frm_func.curr_date)
  else
    value := formatdatetime('yyyy/mm/dd', sp_sebrqk.fieldbyname('ryrq').asdatetime) + '至' +
      formatdatetime('yyyy/mm/dd', sp_sebrqk.fieldbyname('cyrq').asdatetime);
end;

procedure FymxHz_print1(zyh, zt: string);
var
  zyts: string;
  i: Integer;
  cyrj: string;
begin
  application.CreateForm(Tfrm_repo_fymxhz, frm_repo_fymxhz);
  frm_repo_fymxhz.GetData(zyh, zt);
  frm_repo_fymxhz.print1(zyh);
  frm_repo_fymxhz.free;
end;

procedure FymxHz_print2(zyh, zt: string);
begin
  application.CreateForm(Tfrm_repo_fymxhz, frm_repo_fymxhz);
  frm_repo_fymxhz.GetData(zyh, zt);
  frm_repo_fymxhz.Print2(zyh);
  frm_repo_fymxhz.free;
end;

procedure Tfrm_repo_fymxhz.Print1(zyh: string);
var
  cyrj: string;
  zyts: string;
  i: Integer;
begin

    //费用明细汇总
  frm_repo_fymxhz.m_bt.Caption := pub_yymc + '病人费用明细汇总单';
  frm_repo_fymxhz.my_bt.Caption := pub_yymc + '病人用药明细汇总单';
  frm_repo_fymxhz.sp_fyhz.Parameters.ParamByName('@zyh').Value := zyh;
  frm_repo_fymxhz.sp_fyhz.Open;
  frm_repo_fymxhz.m_zyh.Caption := sp_sebrqk.FieldByName('tmh').AsString;
  frm_repo_fymxhz.m_xm.Caption := sp_sebrqk.FieldByName('brxm').AsString;
  frm_repo_fymxhz.m_xb.Caption := sp_sebrqk.FieldByName('brxb').AsString;
  frm_repo_fymxhz.m_sfzl.Caption := sp_sebrqk.FieldByName('lbmc').AsString;
  if sp_sebrqk.FieldByName('cyrq').AsDateTime > sp_sebrqk.FieldByName('ryrq').AsDateTime then
  begin
    zyts := inttostr(DaysBetween(sp_sebrqk.FieldByName('ryrq').AsDateTime, sp_sebrqk.FieldByName('cyrq').AsDateTime));
    cyrj := formatdatetime('yyyy-mm-dd hh:mm', sp_sebrqk.FieldByName('cyrq').AsDateTime);
  end
  else
  begin
    zyts := inttostr(DaysBetween(sp_sebrqk.FieldByName('ryrq').AsDateTime, now));
    cyrj := '未出院';
  end;
  frm_repo_fymxhz.q_zyts.Caption := '共' + zyts + '天';
  frm_repo_fymxhz.m_zyts.Caption := zyts;
  frm_repo_fymxhz.m_nl.Caption := sp_sebrqk.FieldByName('brnl').AsString;
  frm_repo_fymxhz.m_bq.Caption := sp_sebrqk.FieldByName('ksmc').AsString;
  frm_repo_fymxhz.m_ch.Caption := sp_sebrqk.FieldByName('bch').AsString;
  frm_repo_fymxhz.m_ryrj.Caption := sp_sebrqk.FieldByName('ryrq').AsString;
  frm_repo_fymxhz.m_cysj.Caption := cyrj;
  frm_repo_fymxhz.m_yj.Caption := sp_sebrqk.FieldByName('yjze').AsString;
  frm_repo_fymxhz.m_fyhj.Caption := sp_sebrqk.FieldByName('zfy').AsString;
  frm_repo_fymxhz.m_ye.Caption := sp_sebrqk.FieldByName('syyj').AsString;
  frm_repo_fymxhz.qrlbl_dyrq.Caption := formatdatetime('yyyy-mm-dd hh:mm', frm_func.curr_date);
  frm_repo_fymxhz.proc_Preview_1;
    //用药明细汇总
  frm_repo_fymxhz.sp_yyhz.Close;
  frm_repo_fymxhz.sp_yyhz.Parameters.ParamByName('@zyh').Value := zyh;
  frm_repo_fymxhz.sp_yyhz.Open;
  frm_repo_fymxhz.sp_hz.Close;
  frm_repo_fymxhz.sp_hz.Parameters.ParamByName('@zyh').Value := zyh;
  frm_repo_fymxhz.sp_hz.Open;
  frm_repo_fymxhz.my_hzcfs.Caption := frm_repo_fymxhz.sp_hz.FieldByName('cfs').AsString;
  frm_repo_fymxhz.my_jehj.Caption := frm_repo_fymxhz.sp_hz.FieldByName('zje').AsString;
  frm_repo_fymxhz.my_ypzs.Caption := frm_repo_fymxhz.sp_hz.FieldByName('ypzs').AsString;
  frm_repo_fymxhz.my_jlhj.Caption := frm_repo_fymxhz.sp_hz.FieldByName('jlhj').AsString;
  frm_repo_fymxhz.my_ylhj.Caption := frm_repo_fymxhz.sp_hz.FieldByName('ylhj').AsString;
  frm_repo_fymxhz.my_zfhj.Caption := frm_repo_fymxhz.sp_hz.FieldByName('zfhj').AsString;
    //frm_repo_fymxhz.my_hzcfs.Caption := frm_repo_fymxhz.sp_hz.FieldByName('cfs').AsString;
  frm_repo_fymxhz.my_zyh.Caption := sp_sebrqk.FieldByName('tmh').AsString;
  frm_repo_fymxhz.my_xm.Caption := sp_sebrqk.FieldByName('brxm').AsString;
  frm_repo_fymxhz.my_xb.Caption := sp_sebrqk.FieldByName('brxb').AsString;
  frm_repo_fymxhz.my_nl.Caption := sp_sebrqk.FieldByName('brnl').AsString;
  frm_repo_fymxhz.my_bq.Caption := sp_sebrqk.FieldByName('ksmc').AsString;
    //frm_repo_fymxhz.my_ch.Caption := sp_sebrqk.FieldByName('bch').AsString;
    //frm_repo_fymxhz.my_ryrj.Caption := sp_sebrqk.FieldByName('ryrq').AsString;
    //frm_repo_fymxhz.my_cysj.Caption := cyrj;
    //frm_repo_fymxhz.my_yj.Caption := sp_sebrqk.FieldByName('yjze').AsString;
    //frm_repo_fymxhz.my_fyhj.Caption := sp_sebrqk.FieldByName('zfy').AsString;
    //frm_repo_fymxhz.my_ye.Caption :=   sp_sebrqk.FieldByName('syyj').AsString;
  frm_repo_fymxhz.qrlbl_dyrq.Caption := formatdatetime('yyyy-mm-dd hh:mm', frm_func.curr_date);
  frm_repo_fymxhz.QuickRep2.Preview;


end;

procedure Tfrm_repo_fymxhz.Print2(zyh: string);
var
  cyrj: string;
  zyts: string;
  i: Integer;
begin
//费用明细汇总
  frm_repo_fymxhz.sp_fyhz.Parameters.ParamByName('@zyh').Value := sp_sebrqk.FieldByName('zyh').AsString;
  frm_repo_fymxhz.sp_fyhz.Open;
  frm_repo_fymxhz.QRLabel75.Caption := pub_yymc + '病人费用明细汇总单';
  frm_repo_fymxhz.QRLabel76.Caption := sp_sebrqk.FieldByName('tmh').AsString;
  frm_repo_fymxhz.QRLabel90.Caption := sp_sebrqk.FieldByName('brxm').AsString;
  frm_repo_fymxhz.QRLabel91.Caption := sp_sebrqk.FieldByName('brxb').AsString;
  frm_repo_fymxhz.QRLabel92.Caption := sp_sebrqk.FieldByName('lbmc').AsString;
  if sp_sebrqk.FieldByName('cyrq').AsDateTime > sp_sebrqk.FieldByName('ryrq').AsDateTime then
  begin
    zyts := inttostr(DaysBetween(sp_sebrqk.FieldByName('ryrq').AsDateTime, sp_sebrqk.FieldByName('cyrq').AsDateTime));
    cyrj := formatdatetime('yyyy-mm-dd hh:mm', sp_sebrqk.FieldByName('cyrq').AsDateTime);
  end
  else
  begin
    zyts := inttostr(DaysBetween(sp_sebrqk.FieldByName('ryrq').AsDateTime, now));
    cyrj := '未出院';
  end;
  frm_repo_fymxhz.QRLabel93.Caption := zyts;
  frm_repo_fymxhz.QRLabel94.Caption := sp_sebrqk.FieldByName('brnl').AsString;
  frm_repo_fymxhz.QRLabel95.Caption := sp_sebrqk.FieldByName('ksmc').AsString;
  frm_repo_fymxhz.QRLabel96.Caption := sp_sebrqk.FieldByName('bch').AsString;
  frm_repo_fymxhz.QRLabel97.Caption := sp_sebrqk.FieldByName('ryrq').AsString;
  frm_repo_fymxhz.QRLabel98.Caption := cyrj;
  frm_repo_fymxhz.QRLabel99.Caption := sp_sebrqk.FieldByName('yjze').AsString;
  frm_repo_fymxhz.QRLabel100.Caption := sp_sebrqk.FieldByName('zfy').AsString;
  frm_repo_fymxhz.QRLabel101.Caption := sp_sebrqk.FieldByName('syyj').AsString;
  frm_repo_fymxhz.qrlbl2.Caption := formatdatetime('yyyy-mm-dd hh:mm', frm_func.curr_date());
  dm_data.ad_yjmx.First;
  frm_repo_fymxhz.proc_Preview_2;

        //用药明细汇总
  frm_repo_fymxhz.sp_yyhz.Close;
  frm_repo_fymxhz.sp_yyhz.Parameters.ParamByName('@zyh').Value := sp_sebrqk.FieldByName('zyh').AsString;
  frm_repo_fymxhz.sp_yyhz.Open;
  frm_repo_fymxhz.sp_hz.Close;
  frm_repo_fymxhz.sp_hz.Parameters.ParamByName('@zyh').Value := sp_sebrqk.FieldByName('zyh').AsString;
  frm_repo_fymxhz.sp_hz.Open;
  frm_repo_fymxhz.my_hzcfs.Caption := frm_repo_fymxhz.sp_hz.FieldByName('cfs').AsString;
  frm_repo_fymxhz.my_jehj.Caption := frm_repo_fymxhz.sp_hz.FieldByName('zje').AsString;
  frm_repo_fymxhz.my_ypzs.Caption := frm_repo_fymxhz.sp_hz.FieldByName('ypzs').AsString;
  frm_repo_fymxhz.my_jlhj.Caption := frm_repo_fymxhz.sp_hz.FieldByName('jlhj').AsString;
  frm_repo_fymxhz.my_ylhj.Caption := frm_repo_fymxhz.sp_hz.FieldByName('ylhj').AsString;
  frm_repo_fymxhz.my_zfhj.Caption := frm_repo_fymxhz.sp_hz.FieldByName('zfhj').AsString;
        //frm_repo_fymxhz.my_hzcfs.Caption := frm_repo_fymxhz.sp_hz.FieldByName('cfs').AsString;
  frm_repo_fymxhz.my_zyh.Caption := sp_sebrqk.FieldByName('tmh').AsString;
  frm_repo_fymxhz.my_xm.Caption := sp_sebrqk.FieldByName('brxm').AsString;
  frm_repo_fymxhz.my_xb.Caption := sp_sebrqk.FieldByName('brxb').AsString;
  frm_repo_fymxhz.my_nl.Caption := sp_sebrqk.FieldByName('brnl').AsString;
  frm_repo_fymxhz.my_bq.Caption := sp_sebrqk.FieldByName('ksmc').AsString;
        //frm_repo_fymxhz.my_ch.Caption := sp_sebrqk.FieldByName('bch').AsString;
        //frm_repo_fymxhz.my_ryrj.Caption := sp_sebrqk.FieldByName('ryrq').AsString;
        //frm_repo_fymxhz.my_cysj.Caption := cyrj;
        //frm_repo_fymxhz.my_yj.Caption := sp_sebrqk.FieldByName('yjze').AsString;
        //frm_repo_fymxhz.my_fyhj.Caption := sp_sebrqk.FieldByName('zfy').AsString;
        //frm_repo_fymxhz.my_ye.Caption :=   sp_sebrqk.FieldByName('syyj').AsString;
  frm_repo_fymxhz.qrlbl_dyrq.Caption := formatdatetime('yyyy-mm-dd hh:mm', frm_func.curr_date());
  frm_repo_fymxhz.QuickRep2.Preview;
end;

end.

