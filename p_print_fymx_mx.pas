unit p_print_fymx_mx;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, StdCtrls, QuickRpt, Qrctrls, ExtCtrls, Db, ADODB, Grids, DBGrids;

type
  Tfrm_print_fymx_mx = class(TForm)
    QuickRep1: TQuickRep;
    dl01: TQRLabel;
    dl02: TQRLabel;
    dl03: TQRLabel;
    dl04: TQRLabel;
    yj01: TQRLabel;
    yj02: TQRLabel;
    yj03: TQRLabel;
    QRBand1: TQRBand;
    bt: TQRLabel;
    QRBand3: TQRBand;
    QRLabel1: TQRLabel;
    QRBand5: TQRBand;
    QRLabel23: TQRLabel;
    mx01: TQRLabel;
    mx03: TQRLabel;
    mx04: TQRLabel;
    mx05: TQRLabel;
    dl05: TQRLabel;
    dl06: TQRLabel;
    dl07: TQRLabel;
    dl08: TQRLabel;
    YJ05: TQRLabel;
    YJ06: TQRLabel;
    YJ07: TQRLabel;
    YJ08: TQRLabel;
    YJ09: TQRLabel;
    yj04: TQRLabel;
    edl01: TQRLabel;
    edl02: TQRLabel;
    edl03: TQRLabel;
    edl04: TQRLabel;
    edl05: TQRLabel;
    edl06: TQRLabel;
    edl07: TQRLabel;
    edl08: TQRLabel;
    QRBand6: TQRBand;
    QRLabel34: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRLabel43: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    mx12: TQRLabel;
    mx11: TQRLabel;
    mx09: TQRLabel;
    mx08: TQRLabel;
    mx07: TQRLabel;
    QRBand2: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    brnl: TQRLabel;
    rcysj: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRDBText14: TQRDBText;
    QRBand4: TQRBand;
    QRLabel22: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel46: TQRLabel;
    QRLabel47: TQRLabel;
    QRLabel48: TQRLabel;
    QRLabel49: TQRLabel;
    yj10: TQRLabel;
    yj11: TQRLabel;
    yj12: TQRLabel;
    QRLabel50: TQRLabel;
    QRLabel51: TQRLabel;
    QRLabel52: TQRLabel;
    QRLabel53: TQRLabel;
    ChildBand1: TQRChildBand;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRLabel8: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    cyjb: TQRLabel;
    QRDBText20: TQRDBText;
    QRBand7: TQRBand;
    QRLabel21: TQRLabel;
    QRDBText22: TQRDBText;
    mx02: TQRLabel;
    mx06: TQRLabel;
    mx10: TQRLabel;
    QRSysData2: TQRSysData;
    QRLabel11: TQRLabel;
    QRDBText21: TQRDBText;
    QRDBText7: TQRDBText;
    procedure QRSubDetail1NeedData(Sender: TObject; var MoreData: Boolean);
    procedure QRSubDetail2NeedData(Sender: TObject; var MoreData: Boolean);
    procedure QRSubDetail3NeedData(Sender: TObject; var MoreData: Boolean);
    procedure QRSubDetail4NeedData(Sender: TObject; var MoreData: Boolean);
    procedure QRSubDetail3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure brnlPrint(sender: TObject; var Value: string);
    procedure rcysjPrint(sender: TObject; var Value: string);
    procedure cyjbPrint(sender: TObject; var Value: string);
    procedure QRLabel46Print(sender: TObject; var Value: string);
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure btPrint(sender: TObject; var Value: string);
    procedure QRLabel2Print(sender: TObject; var Value: string);
    procedure QRDBText11Print(sender: TObject; var Value: string);
    procedure QRLabel22Print(sender: TObject; var Value: string);
    procedure QRLabel23Print(sender: TObject; var Value: string);
    procedure QRLabel34Print(sender: TObject; var Value: string);
    procedure QRDBText3Print(sender: TObject; var Value: string);
    procedure QRDBText7Print(sender: TObject; var Value: string);
    procedure QRDBText9Print(sender: TObject; var Value: string);
  private
        { Private declarations }
  public
        { Public declarations }
  end;

var
  frm_print_fymx_mx: Tfrm_print_fymx_mx;

implementation
uses p_func, p_dm;
{$R *.DFM}

procedure Tfrm_print_fymx_mx.QRSubDetail1NeedData(Sender: TObject;
  var MoreData: Boolean);
var
  I: integer;
begin
  MoreData := True;
  i := 1;
  if dm_data.ad_fydl.Eof then
    MoreData := False;
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
      break;
    case I of
      1: begin
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

procedure Tfrm_print_fymx_mx.QRSubDetail2NeedData(Sender: TObject;
  var MoreData: Boolean);
var
  I: integer;
begin
  MoreData := True;
  i := 1;
  if dm_data.ad_yjmx.Eof then
    MoreData := False;
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

procedure Tfrm_print_fymx_mx.QRSubDetail3NeedData(Sender: TObject;
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

procedure Tfrm_print_fymx_mx.QRSubDetail4NeedData(Sender: TObject;
  var MoreData: Boolean);
var
  I: integer;
begin
  MoreData := True;
  i := 1;
  if dm_data.sp_fymx.Eof then
    MoreData := False;
  mx01.Caption := '';
  mx02.Caption := '';
  mx03.Caption := '';
  mx04.Caption := '';
  mx05.Caption := '';
  mx06.Caption := '';
  mx07.Caption := '';
  mx08.Caption := '';
  mx09.Caption := '';
  mx10.Caption := '';
  mx11.Caption := '';
  mx12.Caption := '';
  for i := 1 to 3 do
  begin
    if dm_data.sp_fymx.eof then
      break;
    case I of
      1: begin
          mx01.Caption := formatdatetime('mm/dd-hh:mm', dm_data.sp_fymx.FieldByName('sfrq').Asdatetime);
          if dm_data.sp_fymx.FieldByName('fyje').Asfloat < 0 then
            mx02.Caption := '退' + dm_data.sp_fymx.FieldByName('fymc').AsString
          else
            mx02.Caption := dm_data.sp_fymx.FieldByName('fymc').AsString;
          mx03.Caption := format('%8.2f', [dm_data.sp_fymx.FieldByName('fyje').Asfloat]);
          mx04.Caption := dm_data.sp_fymx.FieldByName('sfczy').Asstring;
        end;
      2:
        begin
          mx05.Caption := formatdatetime('mm/dd-hh:mm', dm_data.sp_fymx.FieldByName('sfrq').Asdatetime);
          if dm_data.sp_fymx.FieldByName('fyje').Asfloat < 0 then
            mx06.Caption := '退' + dm_data.sp_fymx.FieldByName('fymc').AsString
          else
            mx06.Caption := dm_data.sp_fymx.FieldByName('fymc').AsString;

          mx07.Caption := format('%8.2f', [dm_data.sp_fymx.FieldByName('fyje').Asfloat]);
          mx08.Caption := dm_data.sp_fymx.FieldByName('sfczy').Asstring;
        end;
      3:
        begin
          mx09.Caption := formatdatetime('mm/dd-hh:mm', dm_data.sp_fymx.FieldByName('sfrq').Asdatetime);
          if dm_data.sp_fymx.FieldByName('fyje').Asfloat < 0 then
            mx10.Caption := '退' + dm_data.sp_fymx.FieldByName('fymc').AsString
          else
            mx10.Caption := dm_data.sp_fymx.FieldByName('fymc').AsString;

          if dm_data.sp_fymx.FieldByName('fyje').Asfloat < 0 then
            mx11.Caption := format('%8.2f', [dm_data.sp_fymx.FieldByName('fyje').Asfloat])
          else
            mx11.Caption := format('%8.2f', [dm_data.sp_fymx.FieldByName('fyje').Asfloat]);
          mx12.Caption := dm_data.sp_fymx.FieldByName('sfczy').Asstring;
        end;
    end;
    dm_data.sp_fymx.Next;
  end;
end;


procedure Tfrm_print_fymx_mx.QRSubDetail3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  dm_data.ad_fydl.first;
end;

procedure Tfrm_print_fymx_mx.brnlPrint(sender: TObject; var Value: string);
begin
  value := dm_data.sp_zydj.fieldbyname('brnl').Asstring + '岁';
end;

procedure Tfrm_print_fymx_mx.rcysjPrint(sender: TObject; var Value: string);
begin
  if (dm_data.sp_zydj.fieldbyname('cyrq').isnull) then
    value := formatdatetime('yyyy/mm/dd', dm_data.sp_zydj.fieldbyname('ryrq').asdatetime) + '至' +
      formatdatetime('yyyy/mm/dd', frm_func.curr_date)
  else
    value := formatdatetime('yyyy/mm/dd', dm_data.sp_zydj.fieldbyname('ryrq').asdatetime) + '至' +
      formatdatetime('yyyy/mm/dd', dm_data.sp_zydj.fieldbyname('cyrq').asdatetime);
end;

procedure Tfrm_print_fymx_mx.cyjbPrint(sender: TObject; var Value: string);
begin
  value := DM_data.sp_zydj.fieldbyname('cyczy').asstring;
end;

procedure Tfrm_print_fymx_mx.QRLabel46Print(sender: TObject;
  var Value: string);
begin
  if - dm_data.sp_zydj.fieldbyname('sjyjze').asfloat + dm_data.sp_zydj.fieldbyname('zfy').asfloat < 0 then
    value := '应退：' + format('%8.2f', [abs(-dm_data.sp_zydj.fieldbyname('sjyjze').asfloat + dm_data.sp_zydj.fieldbyname('zfy').asfloat)])
  else
    value := '应补：' + format('%8.2f', [abs(-dm_data.sp_zydj.fieldbyname('sjyjze').asfloat + dm_data.sp_zydj.fieldbyname('zfy').asfloat)])
end;

procedure Tfrm_print_fymx_mx.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  dm_data.ad_yjmx.First;
  dm_data.ad_fydl.First;
  dm_data.sp_fymx.First;
  dm_data.sp_cwdl.First;
end;

procedure Tfrm_print_fymx_mx.btPrint(sender: TObject; var Value: string);
begin
  value := trim(pub_yymc) + '  ' + value
end;

procedure Tfrm_print_fymx_mx.QRLabel2Print(sender: TObject;
  var Value: string);
begin
  value := trim(pub_yymc) + value;
end;

procedure Tfrm_print_fymx_mx.QRDBText11Print(sender: TObject;
  var Value: string);
begin
  if trim(Value) = '' then
  begin
    try
      value := '未出院' + ' 共' +
        inttostr(round(strtodate(formatdatetime('yyyy-mm-dd', frm_func.curr_date)) - strtodate(formatdatetime('yyyy-mm-dd', dm_data.sp_zydj.fieldbyname('ryrq').asdatetime)))) + '天'

    except

    end;
  end
  else
  begin
    try
      value := formatdatetime('yyyy-mm-dd', dm_data.sp_zydj.fieldbyname('cyrq').asdatetime) + ' 共' +
        inttostr(round(strtodate(formatdatetime('yyyy-mm-dd', DM_data.sp_zydj.fieldbyname('cyrq').asdatetime)) - strtodate(formatdatetime('yyyy-mm-dd', dm_data.sp_zydj.fieldbyname('ryrq').asdatetime)))) + '天';

    except

    end;
  end;
end;

procedure Tfrm_print_fymx_mx.QRLabel22Print(sender: TObject;
  var Value: string);
begin
  value := '-------预交款情况---总计 ' + format('%8.2f', [DM_data.sp_zydj.fieldbyname('sjyjze').asfloat]) +
  '---------------------------------------------------------------------------';
end;

procedure Tfrm_print_fymx_mx.QRLabel23Print(sender: TObject;
  var Value: string);
begin
  value := '-------费用大类-----总计 ' + format('%8.2f', [DM_data.sp_zydj.fieldbyname('zfy').asfloat]) +
  '-------------------------------------------------------------------------';
end;

procedure Tfrm_print_fymx_mx.QRLabel34Print(sender: TObject;
  var Value: string);
begin
  value := '-------费用明细情况-----------------------------------------------------------------------------';
end;

procedure Tfrm_print_fymx_mx.QRDBText3Print(sender: TObject;
  var Value: string);
begin
  if trim(value) <> '' then
    value := format('%8.2f', [strtofloat(value)]);
end;

procedure Tfrm_print_fymx_mx.QRDBText7Print(sender: TObject;
  var Value: string);
begin
  value := dm_data.sp_zydj.fieldbyname('brnl').asstring + '岁';
end;

procedure Tfrm_print_fymx_mx.QRDBText9Print(sender: TObject;
  var Value: string);
begin
  if trim(value) <> '' then
    value := formatdatetime('yyyy-mm-dd', DM_data.sp_zydj.fieldbyname('ryrq').asdatetime);
end;
initialization
  RegisterClass(Tfrm_print_fymx_mx);
end.

