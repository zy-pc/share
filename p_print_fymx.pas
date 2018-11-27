unit p_print_fymx;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, StdCtrls, QuickRpt, Qrctrls, ExtCtrls, Db, ADODB, Grids, DBGrids;

type
  Tfrm_print_fymx = class( TForm )
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
    QRBand2: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    brnl: TQRLabel;
    rcysj: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    qrdbtxtyjze: TQRDBText;
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
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRLabel8: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
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
    mx09: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel54: TQRLabel;
    mx02: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    mx05: TQRLabel;
    QRLabel40: TQRLabel;
    mx06: TQRLabel;
    QRLabel41: TQRLabel;
    mx07: TQRLabel;
    QuickRep2: TQuickRep;
    QRSubDetail8: TQRSubDetail;
    _mx03: TQRLabel;
    _mx04: TQRLabel;
    _mx09: TQRLabel;
    _mx02: TQRLabel;
    _mx06: TQRLabel;
    _mx01: TQRLabel;
    _mx05: TQRLabel;
    _mx07: TQRLabel;
    QRBand14: TQRBand;
    QRSysData3: TQRSysData;
    QRLabel42: TQRLabel;
    QRExpr1: TQRExpr;
    QRLabel43: TQRLabel;
    QRLabel44: TQRLabel;
    QRExpr2: TQRExpr;
    czy: TQRLabel;

    procedure QRSubDetail1NeedData( Sender: TObject; var MoreData: Boolean );
    procedure QRSubDetail2NeedData( Sender: TObject; var MoreData: Boolean );
    procedure QRSubDetail3NeedData( Sender: TObject; var MoreData: Boolean );
    procedure QRSubDetail4NeedData( Sender: TObject; var MoreData: Boolean );
    procedure QRSubDetail3BeforePrint( Sender: TQRCustomBand;
      var PrintBand: Boolean );
    procedure brnlPrint( sender: TObject; var Value: string );
    procedure rcysjPrint( sender: TObject; var Value: string );
    procedure cyjbPrint( sender: TObject; var Value: string );
    procedure QRLabel46Print( sender: TObject; var Value: string );
    procedure QuickRep1BeforePrint( Sender: TCustomQuickRep;
      var PrintReport: Boolean );
    procedure btPrint( sender: TObject; var Value: string );
    procedure QRLabel2Print( sender: TObject; var Value: string );
    procedure QRLabel22Print( sender: TObject; var Value: string );
    procedure QRLabel23Print( sender: TObject; var Value: string );
    procedure QRLabel34Print( sender: TObject; var Value: string );
    procedure QRDBText3Print( sender: TObject; var Value: string );
    procedure QRDBText7Print( sender: TObject; var Value: string );
    procedure QRDBText9Print( sender: TObject; var Value: string );
    procedure QRLabel54Print( sender: TObject; var Value: string );
    procedure mx06Print( sender: TObject; var Value: string );
    procedure mx07Print( sender: TObject; var Value: string );
    procedure mx01Print( sender: TObject; var Value: string );
    procedure QRSubDetail8NeedData( Sender: TObject; var MoreData: Boolean );
    procedure czyPrint( sender: TObject; var Value: string );
  private
    { Private declarations }
  public
    { Public declarations }

    fjoydy: boolean; //  是否分奇偶页打印

    sfrqpx: boolean //按日期排序
  end;

var
  frm_print_fymx: Tfrm_print_fymx;
  dldm: string;
  temp: string;
  jlhj: real; //甲类合计
  ylhj: real; //乙类合计

implementation
uses p_func, p_dm, p_zybrzhcx;
{$R *.DFM}

procedure Tfrm_print_fymx.QRSubDetail1NeedData( Sender: TObject;
  var MoreData: Boolean );
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
      1:
        begin
          dl01.Caption := dm_data.ad_fydl.FieldByName( 'kmmc' ).AsString;
          dl02.Caption := format( '%8.2f', [dm_data.ad_fydl.FieldByName( 'fyje' ).Asfloat] );
        end;
      2:
        begin
          dl03.Caption := dm_data.ad_fydl.FieldByName( 'kmmc' ).AsString;
          dl04.Caption := format( '%8.2f', [dm_data.ad_fydl.FieldByName( 'fyje' ).Asfloat] );
        end;
      3:
        begin
          dl05.Caption := dm_data.ad_fydl.FieldByName( 'kmmc' ).AsString;
          dl06.Caption := format( '%8.2f', [dm_data.ad_fydl.FieldByName( 'fyje' ).Asfloat] );
        end;
      4:
        begin
          dl07.Caption := dm_data.ad_fydl.FieldByName( 'kmmc' ).AsString;
          dl08.Caption := format( '%8.2f', [dm_data.ad_fydl.FieldByName( 'fyje' ).Asfloat] );
        end;
    end;
    dm_data.ad_fydl.Next;
  end;
end;

procedure Tfrm_print_fymx.QRSubDetail2NeedData( Sender: TObject;
  var MoreData: Boolean );
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
      1:
        begin
          yj01.Caption := formatdatetime( 'mm/dd hh:mm', dm_data.ad_yjmx.FieldByName( 'sfrq' ).Asdatetime );
          yj02.Caption := dm_data.ad_yjmx.FieldByName( 'sjh' ).Asstring;
          yj03.Caption := format( '%8.2f', [dm_data.ad_yjmx.FieldByName( 'yjje' ).Asfloat] );
          yj10.caption := dm_data.ad_yjmx.FieldByName( 'sfczy' ).asstring;
        end;
      2:
        begin
          yj04.Caption := formatdatetime( 'mm/dd hh:mm', dm_data.ad_yjmx.FieldByName( 'sfrq' ).Asdatetime );
          yj05.Caption := dm_data.ad_yjmx.FieldByName( 'sjh' ).Asstring;
          yj06.Caption := format( '%8.2f', [dm_data.ad_yjmx.FieldByName( 'yjje' ).Asfloat] );
          yj11.Caption := dm_data.ad_yjmx.FieldByName( 'sfczy' ).asstring;
        end;
      3:
        begin
          yj07.Caption := formatdatetime( 'mm/dd hh:mm', dm_data.ad_yjmx.FieldByName( 'sfrq' ).Asdatetime );
          yj08.Caption := dm_data.ad_yjmx.FieldByName( 'sjh' ).Asstring;
          yj09.Caption := format( '%8.2f', [dm_data.ad_yjmx.FieldByName( 'yjje' ).Asfloat] );
          yj12.caption := dm_data.ad_yjmx.FieldByName( 'sfczy' ).asstring;
        end
    end;
    dm_data.ad_yjmx.Next;
  end;
end;

procedure Tfrm_print_fymx.QRSubDetail3NeedData( Sender: TObject;
  var MoreData: Boolean );
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
      1:
        begin
          edl01.Caption := dm_data.sp_cwdl.FieldByName( 'kmmc' ).AsString;
          edl02.Caption := format( '%8.2f', [dm_data.sp_cwdl.FieldByName( 'fyje' ).Asfloat] );
        end;
      2:
        begin
          edl03.Caption := dm_data.sp_cwdl.FieldByName( 'kmmc' ).AsString;
          edl04.Caption := format( '%8.2f', [dm_data.sp_cwdl.FieldByName( 'fyje' ).Asfloat] );
        end;
      3:
        begin
          edl05.Caption := dm_data.sp_cwdl.FieldByName( 'kmmc' ).AsString;
          edl06.Caption := format( '%8.2f', [dm_data.sp_cwdl.FieldByName( 'fyje' ).Asfloat] );
        end;
      4:
        begin
          edl07.Caption := dm_data.sp_cwdl.FieldByName( 'kmmc' ).AsString;
          edl08.Caption := format( '%8.2f', [dm_data.sp_cwdl.FieldByName( 'fyje' ).Asfloat] );
        end;
    end;
    dm_data.sp_cwdl.Next;
  end;
end;

procedure Tfrm_print_fymx.QRSubDetail4NeedData( Sender: TObject;
  var MoreData: Boolean );
var
  I: integer;
  mcdy: string;
begin
  MoreData := True;
  dldm := dm_data.sp_fymx.FieldByName( 'sfczy' ).Asstring;
  i := 1;
  if dm_data.sp_fymx.Eof then
  begin
    MoreData := False;
  end;
  mx01.Caption := '';
  mx02.Caption := '';
  mx03.Caption := '';
  mx04.Caption := '';
  mx05.Caption := '';
  mx06.Caption := '';
  mx07.Caption := '';
  try
    if trim( dm_data.sp_fymx.FieldByName( 'mcdy' ).Asstring ) = 'y' then
      mcdy := 'y'
    else
      mcdy := 'n';
    if sfrqpx then
    begin
      mcdy := 'n';
    end;
  except
    mcdy := 'n';
  end;
  if ( temp = '' ) and ( trim( dm_data.sp_fymx.FieldByName( 'kmdm' ).Asstring ) <> '9999' )
    and ( mcdy = 'y' ) then
  begin
    mx01.Caption := '---------' + trim( dm_data.sp_fymx.FieldByName( 'kmmc' ).Asstring ) +
      copy( '---------------', 0, 15 - length( trim( dm_data.sp_fymx.FieldByName( 'kmmc' ).Asstring ) ) ) +
      '---------------------------------------------------------------------------------------------------';
    temp := dm_data.sp_fymx.FieldByName( 'kmmc' ).Asstring;

  end
  else
  begin
    if ( dm_data.sp_fymx.FieldByName( 'kmmc' ).Asstring = temp ) or ( sfrqpx ) then
    begin
      mx01.Caption := formatdatetime( 'mm/dd-hh:mm', dm_data.sp_fymx.FieldByName( 'sfrq' ).Asdatetime );
      if dm_data.sp_fymx.FieldByName( 'fyje' ).Asfloat < 0 then
        mx02.Caption := '退' + dm_data.sp_fymx.FieldByName( 'fymc' ).AsString
      else
        mx02.Caption := dm_data.sp_fymx.FieldByName( 'fymc' ).AsString;
      mx03.Caption := format( '%8.2f', [dm_data.sp_fymx.FieldByName( 'fyje' ).Asfloat] );
      if pub_yydm = '0112' then
      begin
        mx04.Caption := dm_data.sp_fymx.FieldByName( 'bak' ).Asstring;
      end
      else
      begin
        mx04.Caption := dm_data.sp_fymx.FieldByName( 'sfczy' ).Asstring;
      end;
      mx09.caption := dm_data.sp_fymx.FieldByName( 'szdm' ).AsString;
      mx06.caption := dm_data.sp_fymx.FieldByName( 'dw' ).AsString;
      mx05.caption := format( '%8.2f', [dm_data.sp_fymx.FieldByName( 'fysl' ).Asfloat] );
      mx07.caption := format( '%8.2f', [dm_data.sp_fymx.FieldByName( 'sfbz' ).Asfloat] );
      temp := dm_data.sp_fymx.FieldByName( 'kmmc' ).Asstring;
      dm_data.sp_fymx.Next;
    end
    else
      if not sfrqpx then
      begin
        mx01.Caption := '---------' + trim( dm_data.sp_fymx.FieldByName( 'kmmc' ).Asstring ) +
          copy( '---------------', 0, 15 - length( trim( dm_data.sp_fymx.FieldByName( 'kmmc' ).Asstring ) ) ) +
          '---------------------------------------------------------------------------------------------------';
        temp := dm_data.sp_fymx.FieldByName( 'kmmc' ).Asstring;
      end;

  end;
end;

procedure Tfrm_print_fymx.QRSubDetail8NeedData( Sender: TObject;
  var MoreData: Boolean );
var
  I: integer;
  mcdy: string;
begin
  MoreData := True;
  dldm := dm_data.sp_fymx.FieldByName( 'sfczy' ).Asstring;
  i := 1;
  if dm_data.sp_fymx.Eof then
  begin
    MoreData := False;
  end;
  _mx01.Caption := '';
  _mx02.Caption := '';
  _mx03.Caption := '';
  _mx04.Caption := '';
  _mx05.Caption := '';
  _mx06.Caption := '';
  _mx07.Caption := '';
  try
    if trim( dm_data.sp_fymx.FieldByName( 'mcdy' ).Asstring ) = 'y' then
      mcdy := 'y'
    else
      mcdy := 'n';
    if sfrqpx then
    begin
      mcdy := 'n';
    end;
  except
    mcdy := 'n';
  end;
  if ( temp = '' ) or ( trim( dm_data.sp_fymx.FieldByName( 'kmdm' ).Asstring ) <> '9999' )
    and ( mcdy = 'y' ) then
  begin
    _mx01.Caption := '---------' + trim( dm_data.sp_fymx.FieldByName( 'kmmc' ).Asstring ) +
      copy( '---------------', 0, 15 - length( trim( dm_data.sp_fymx.FieldByName( 'kmmc' ).Asstring ) ) ) +
      '---------------------------------------------------------------------------------------------------';
    temp := dm_data.sp_fymx.FieldByName( 'kmmc' ).Asstring;
  end
  else
  begin
    if ( dm_data.sp_fymx.FieldByName( 'kmmc' ).Asstring = temp ) or ( sfrqpx ) then
    begin
      _mx01.Caption := formatdatetime( 'mm/dd-hh:mm', dm_data.sp_fymx.FieldByName( 'sfrq' ).Asdatetime );
      if dm_data.sp_fymx.FieldByName( 'fyje' ).Asfloat < 0 then
        _mx02.Caption := '退' + dm_data.sp_fymx.FieldByName( 'fymc' ).AsString
      else
        _mx02.Caption := dm_data.sp_fymx.FieldByName( 'fymc' ).AsString;
      _mx03.Caption := format( '%8.2f', [dm_data.sp_fymx.FieldByName( 'fyje' ).Asfloat] );
      if pub_yydm = '0112' then
      begin
        _mx04.Caption := dm_data.sp_fymx.FieldByName( 'bak' ).Asstring;
      end
      else
      begin
        _mx04.Caption := dm_data.sp_fymx.FieldByName( 'sfczy' ).Asstring;
      end;
      mx09.caption := dm_data.sp_fymx.FieldByName( 'szdm' ).AsString;
      _mx06.caption := dm_data.sp_fymx.FieldByName( 'dw' ).AsString;
      _mx05.caption := format( '%8.0f', [dm_data.sp_fymx.FieldByName( 'fysl' ).Asfloat] );
      _mx07.caption := format( '%8.2f', [dm_data.sp_fymx.FieldByName( 'sfbz' ).Asfloat] );
      temp := dm_data.sp_fymx.FieldByName( 'kmmc' ).Asstring;
      dm_data.sp_fymx.Next;
    end
    else
      if not sfrqpx then
      begin
        _mx01.Caption := '---------' + trim( dm_data.sp_fymx.FieldByName( 'kmmc' ).Asstring ) +
          copy( '---------------', 0, 15 - length( trim( dm_data.sp_fymx.FieldByName( 'kmmc' ).Asstring ) ) ) +
          '---------------------------------------------------------------------------------------------------';
      end;
    temp := dm_data.sp_fymx.FieldByName( 'kmmc' ).Asstring;
  end;

end;

procedure Tfrm_print_fymx.QRSubDetail3BeforePrint( Sender: TQRCustomBand;
  var PrintBand: Boolean );
begin
  dm_data.ad_fydl.first;
end;

procedure Tfrm_print_fymx.brnlPrint( sender: TObject; var Value: string );
begin
  value := dm_data.sp_zydj.fieldbyname( 'brnl' ).Asstring + '岁';
end;

procedure Tfrm_print_fymx.rcysjPrint( sender: TObject; var Value: string );
begin
  if ( dm_data.sp_zydj.fieldbyname( 'cyrq' ).isnull ) then
    value := formatdatetime( 'yyyy/mm/dd', dm_data.sp_zydj.fieldbyname( 'ryrq' ).asdatetime ) + '至' +
      formatdatetime( 'yyyy/mm/dd', frm_func.curr_date )
  else
    value := formatdatetime( 'yyyy/mm/dd', dm_data.sp_zydj.fieldbyname( 'ryrq' ).asdatetime ) + '至' +
      formatdatetime( 'yyyy/mm/dd', dm_data.sp_zydj.fieldbyname( 'cyrq' ).asdatetime );
end;

procedure Tfrm_print_fymx.cyjbPrint( sender: TObject; var Value: string );
begin
  if trim( DM_data.sp_zydj.fieldbyname( 'cyczy' ).asstring ) = '' then
    value := pub_czyxm
  else
    value := DM_data.sp_zydj.fieldbyname( 'cyczy' ).asstring;
end;

procedure Tfrm_print_fymx.czyPrint( sender: TObject; var Value: string );
begin
  Value := '操作员:' + pub_czyxm;
end;

procedure Tfrm_print_fymx.mx01Print( sender: TObject; var Value: string );
begin
  if trim( value ) = '01-01-00:00' then
  begin
    value := '';
  end;

end;

procedure Tfrm_print_fymx.mx06Print( sender: TObject; var Value: string );
begin
  value := trim( value );
end;

procedure Tfrm_print_fymx.mx07Print( sender: TObject; var Value: string );
begin
  if ( trim( value ) = '0.00' ) or ( trim( value ) = '0' ) then
  begin
    value := '';
  end;
end;

procedure Tfrm_print_fymx.QRLabel46Print( sender: TObject;
  var Value: string );
begin
  if - dm_data.sp_zydj.fieldbyname( 'yjze' ).asfloat + dm_data.sp_zydj.fieldbyname( 'zfy' ).asfloat < 0 then
    value := '应退：' + format( '%8.2f', [abs( -dm_data.sp_zydj.fieldbyname( 'yjze' ).asfloat + dm_data.sp_zydj.fieldbyname( 'zfy' ).asfloat )] )
  else
    value := '应补：' + format( '%8.2f', [abs( -dm_data.sp_zydj.fieldbyname( 'yjze' ).asfloat + dm_data.sp_zydj.fieldbyname( 'zfy' ).asfloat )] )
end;

procedure Tfrm_print_fymx.QuickRep1BeforePrint( Sender: TCustomQuickRep;
  var PrintReport: Boolean );
begin
  dm_data.ad_yjmx.First;
  dm_data.ad_fydl.First;
  dm_data.sp_fymx.First;
  dm_data.sp_cwdl.First;

end;

procedure Tfrm_print_fymx.btPrint( sender: TObject; var Value: string );
begin
  value := trim( pub_yymc ) + '  ' + value
end;

procedure Tfrm_print_fymx.QRLabel2Print( sender: TObject;
  var Value: string );
begin
  value := trim( pub_yymc ) + value;
end;

procedure Tfrm_print_fymx.QRLabel22Print( sender: TObject;
  var Value: string );
begin
  value := '-------预交款情况---总计 ' + format( '%8.2f', [DM_data.sp_zydj.fieldbyname( 'sjyjze' ).asfloat] ) +
  '---------------------------------------------------------------------------';
end;

procedure Tfrm_print_fymx.QRLabel23Print( sender: TObject;
  var Value: string );
begin
  value := '-------费用大类-----总计 ' + format( '%8.2f', [DM_data.sp_zydj.fieldbyname( 'zfy' ).asfloat] ) +
  '-------------------------------------------------------------------------';
end;

procedure Tfrm_print_fymx.QRLabel34Print( sender: TObject;
  var Value: string );
begin
  value := '-------费用明细情况-----------------------------------------------------------------------------';
end;

procedure Tfrm_print_fymx.QRDBText3Print( sender: TObject;
  var Value: string );
begin
  if trim( value ) <> '' then
    value := format( '%8.2f', [strtofloat( value )] );
end;

procedure Tfrm_print_fymx.QRDBText7Print( sender: TObject;
  var Value: string );
begin
  value := value + '岁';
end;

procedure Tfrm_print_fymx.QRDBText9Print( sender: TObject;
  var Value: string );
begin
  if trim( value ) <> '' then
    value := formatdatetime( 'yyyy-mm-dd', DM_data.sp_zydj.fieldbyname( 'ryrq' ).asdatetime );
end;

procedure Tfrm_print_fymx.QRLabel54Print( sender: TObject; var Value: string );
begin
  if ( dm_data.sp_zydj.fieldbyname( 'cyrq' ).isnull ) then
    value := formatdatetime( 'yyyy-mm-dd', frm_func.curr_date ) + ' 共' +
      inttostr( trunc( frm_func.curr_date - dm_data.sp_zydj.fieldbyname( 'ryrq' ).asdatetime + 0.5 ) ) + '天'
  else
    if formatdatetime( 'yyyy-mm-dd', dm_data.sp_zydj.fieldbyname( 'cyrq' ).asdatetime ) = formatdatetime( 'yyyy-mm-dd', dm_data.sp_zydj.fieldbyname( 'ryrq' ).asdatetime ) then
      value := formatdatetime( 'yyyy-mm-dd', dm_data.sp_zydj.fieldbyname( 'cyrq' ).asdatetime ) + ' 共 1 天'
    else
      value := formatdatetime( 'yyyy-mm-dd', dm_data.sp_zydj.fieldbyname( 'cyrq' ).asdatetime ) + ' 共' +
        inttostr( round( DM_data.sp_zydj.fieldbyname( 'cyrq' ).asdatetime -
        dm_data.sp_zydj.fieldbyname( 'ryrq' ).asdatetime + 0.5 ) ) + '天';
  if pub_yydm = '0108' then //蓬溪县医院
  begin
    if ( dm_data.sp_zydj.fieldbyname( 'cyrq' ).isnull ) then
    begin
      begin
        try
          value := formatdatetime( 'yyyy-mm-dd', frm_func.curr_date ) + ' 共' +
            inttostr( round( strtodate( formatdatetime( 'yyyy-mm-dd', frm_func.curr_date ) ) - strtodate( formatdatetime( 'yyyy-mm-dd', dm_data.sp_zydj.fieldbyname( 'ryrq' ).asdatetime ) ) ) ) + '天'

        except

        end;

      end;
    end
    else
    begin
      try
        value := formatdatetime( 'yyyy-mm-dd', dm_data.sp_zydj.fieldbyname( 'cyrq' ).asdatetime ) + ' 共' +
          inttostr( round( strtodate( formatdatetime( 'yyyy-mm-dd',
          DM_data.sp_zydj.fieldbyname( 'cyrq' ).asdatetime ) ) -
          strtodate( formatdatetime( 'yyyy-mm-dd',
          dm_data.sp_zydj.fieldbyname( 'ryrq' ).asdatetime ) ) ) ) +
          '天';
      except

      end;
    end;
  end;
end;
initialization
  RegisterClass( Tfrm_print_fymx );
end.

