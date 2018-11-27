unit p_cybrzhcx;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Buttons, Db, DBTables, Grids, DBGrids, ComCtrls,
  ADODB, Mask, DBCtrls, QuickRpt, Qrctrls, DBGridEh, GridsEh, DateUtils;

type
  Tfrm_cybrzhcx = class( TForm )
    qry_bafy: TADOQuery;
    Panel1: TPanel;
    Label14: TLabel;
    tmh: TEdit;
    b_close: TBitBtn;
    Panel2: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label15: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    DBEdit1: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit2: TDBEdit;
    ysxje: TEdit;
    ytxje: TEdit;
    DBEdit4: TDBEdit;
    cyrq: TDateTimePicker;
    sbzfze: TEdit;
    sbtcze: TEdit;
    yjze: TEdit;
    zfy: TEdit;
    Panel3: TPanel;
    sp_sebrqk: TADOStoredProc;
    ds_sebrqk: TDataSource;
    ds_yjmxcx: TDataSource;
    sp_yjmxcx: TADOStoredProc;
    sp_fymx: TADOStoredProc;
    ds_fymx: TDataSource;
    ds_tj_fydl: TDataSource;
    SP_yymx: TADOStoredProc;
    DS_yymx: TDataSource;
    DBGrid3: TDBGrid;
    Label13: TLabel;
    DBEdit7: TDBEdit;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    ColumnHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    PageHeaderBand1: TQRBand;
    QRShape1: TQRShape;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    yymc: TQRLabel;
    QRLabel9: TQRLabel;
    ksmc: TQRLabel;
    tmh1: TQRLabel;
    QRLabel11: TQRLabel;
    brxm: TQRLabel;
    QRLabel12: TQRLabel;
    qzsj: TQRLabel;
    SummaryBand1: TQRBand;
    QRLabel14: TQRLabel;
    QRLabel18: TQRLabel;
    QRGroup1: TQRGroup;
    QRBand1: TQRBand;
    SP_yymxcfbh: TStringField;
    SP_yymxypdm: TStringField;
    SP_yymxypmc: TStringField;
    SP_yymxypgg: TStringField;
    SP_yymxypdw: TStringField;
    SP_yymxypsl: TBCDField;
    SP_yymxypdj: TBCDField;
    SP_yymxcfje: TBCDField;
    SP_yymxsfjlyp: TBooleanField;
    SP_yymxsfylyp: TBooleanField;
    SP_yymxhjrq: TDateTimeField;
    SP_yymxjylyp: TStringField;
    sp_cx_fydl: TADOStoredProc;
    QRBand3: TQRBand;
    QRBand2: TQRBand;
    QRLabel10: TQRLabel;
    brxm1: TQRLabel;
    QRLabel19: TQRLabel;
    tmh2: TQRLabel;
    QRSysData2: TQRSysData;
    QRLabel21: TQRLabel;
    TabSheet5: TTabSheet;
    sp_zyyymx: TADOStoredProc;
    ds_zyyymx: TDataSource;
    QuickRep2: TQuickRep;
    QRBand4: TQRBand;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRBand5: TQRBand;
    QRLabel15: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRBand6: TQRBand;
    QRShape2: TQRShape;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    yymc3: TQRLabel;
    QRLabel32: TQRLabel;
    ksmc3: TQRLabel;
    tmh3: TQRLabel;
    QRLabel35: TQRLabel;
    brxm3: TQRLabel;
    QRLabel37: TQRLabel;
    qzsj3: TQRLabel;
    QRBand7: TQRBand;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRGroup2: TQRGroup;
    QRBand8: TQRBand;
    QRBand9: TQRBand;
    QRBand10: TQRBand;
    QRLabel41: TQRLabel;
    brxm4: TQRLabel;
    QRLabel43: TQRLabel;
    tmh4: TQRLabel;
    QRSysData4: TQRSysData;
    QRLabel45: TQRLabel;
    QRLabel30: TQRLabel;
    QRDBText17: TQRDBText;
    sp_cx_fydlid: TAutoIncField;
    sp_cx_fydlsjbh: TStringField;
    sp_cx_fydlzyh: TStringField;
    sp_cx_fydlkmmc: TStringField;
    sp_cx_fydlkmdm: TStringField;
    sp_cx_fydlfyje: TBCDField;
    sp_cx_fydlzkje: TBCDField;
    sp_cx_fydlzfje: TBCDField;
    sp_cx_fydlssje: TBCDField;
    sp_cx_fydljsbz: TBooleanField;
    sp_cx_fydljylyp: TStringField;
    sp_zyyymxcfbh: TStringField;
    sp_zyyymxypdm: TStringField;
    sp_zyyymxypmc: TStringField;
    sp_zyyymxypgg: TStringField;
    sp_zyyymxypdw: TStringField;
    sp_zyyymxypsl: TBCDField;
    sp_zyyymxypdj: TBCDField;
    sp_zyyymxcfje: TBCDField;
    sp_zyyymxsfjlyp: TBooleanField;
    sp_zyyymxsfylyp: TBooleanField;
    sp_zyyymxhjrq: TDateTimeField;
    sp_zyyymxcfjl: TIntegerField;
    sp_zyyymxjylyp: TStringField;
    QuickRep3: TQuickRep;
    QRBand11: TQRBand;
    bt: TQRLabel;
    QRBand12: TQRBand;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    brnl: TQRLabel;
    rcysj: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRDBText21: TQRDBText;
    QRLabel46: TQRLabel;
    QRSubDetail1: TQRSubDetail;
    dl01: TQRLabel;
    dl02: TQRLabel;
    dl03: TQRLabel;
    dl04: TQRLabel;
    dl05: TQRLabel;
    dl06: TQRLabel;
    dl07: TQRLabel;
    dl08: TQRLabel;
    QRBand13: TQRBand;
    QRLabel36: TQRLabel;
    QRLabel50: TQRLabel;
    QRLabel51: TQRLabel;
    QRLabel52: TQRLabel;
    QRLabel53: TQRLabel;
    DBGridEh1: TDBGridEh;
    DBGridEh2: TDBGridEh;
    DBGridEh3: TDBGridEh;
    g_fy: TDBGridEh;
    g_tj: TDBGridEh;
    BitBtn2: TBitBtn;
    SP_yymxyplb: TStringField;
    btn1: TBitBtn;
    btn2: TBitBtn;
    procedure FormKeyDown( Sender: TObject; var Key: Word;
      Shift: TShiftState );
    procedure tmhExit( Sender: TObject );
    procedure b_closeClick( Sender: TObject );
    procedure proc_getbyxx;
    procedure DBGrid3KeyPress( Sender: TObject; var Key: Char );
    procedure DBGrid3Exit( Sender: TObject );
    procedure qzsjPrint( sender: TObject; var Value: string );
    procedure FormKeyPress( Sender: TObject; var Key: Char );
    procedure sp_zyyymxCalcFields( DataSet: TDataSet );
    procedure FormShow( Sender: TObject );
    procedure brnlPrint( sender: TObject; var Value: string );
    procedure rcysjPrint( sender: TObject; var Value: string );
    procedure QRLabel46Print( sender: TObject; var Value: string );
    procedure QRSubDetail1NeedData( Sender: TObject; var MoreData: Boolean );
    procedure QRDBText4Print( sender: TObject; var Value: string );
    procedure QuickRep3BeforePrint( Sender: TCustomQuickRep;
      var PrintReport: Boolean );
    procedure g_tjTitleBtnClick( Sender: TObject; ACol: Integer;
      Column: TColumnEh );
    procedure g_tjDblClick( Sender: TObject );
    procedure g_fyDrawColumnCell( Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState );
    procedure BitBtn2Click( Sender: TObject );
    procedure tmhKeyPress( Sender: TObject; var Key: Char );
    procedure btn2Click( Sender: TObject );
    procedure btn1Click( Sender: TObject );
  private
    { Private declarations }
  public
    zy_zyh: string; //סԺ��
    zy_jsdh: string; //���˽��㵥�ݺ�
    zy_tmh: string; //�����
    zy_fylb: string; //���˷������
    zy_ksmc: string; //��������
    zy_ryrq: Tdatetime; //��Ժ����
    zy_syyj: real; //ʣ��Ѻ��
    zy_yjze: real; //Ѻ���ܶ�
    zy_zfy: real; //�����ܶ�
    zy_zfze: real; //�Է��ܶ�
    zy_ytje: real; //Ӧ�˽��
    zy_ybje: real; //Ӧ�����
    zy_stje: real; //ʵ�˽��
    zy_sbje: real; //ʵ�����
    zy_fybz: string; // 1:Ƿ�� 2:�˷� 3:��Ƿ��
    zy_sbzfje: real; //�籣�����Էѽ��
    zy_sbtcje: real; //�籣����ͳ����
    zy_brxm: string; //��������
    zy_brdz: string; //���˵�ַ
    zy_ksdm: string; //���Ҵ���
    zy_yjcs: integer; //Ѻ�����
    zy_yjbz: boolean; //Ѻ���־
    zy_cyrq: tdatetime; //��Ժ��������
    zy_sjbh: string; //��Ժ�����վݱ��
    bqcx: boolean; //�Ƿ��ǲ�����ѯ
    { Public declarations }
  end;

var
  frm_cybrzhcx: Tfrm_cybrzhcx;
  jylyp: boolean;
implementation
uses p_dm, p_func, p_repo_fymxhz, p_fydl_fymx;
{$R *.DFM}

procedure Tfrm_cybrzhcx.FormKeyDown( Sender: TObject; var Key: Word;
  Shift: TShiftState );
begin
  if key = 27 then close;
end;

procedure Tfrm_cybrzhcx.tmhExit( Sender: TObject );
begin
  if not b_close.Focused then
  begin
    try
      if Trim( tmh.text ) <> '' then
        tmh.text := formatex( strtoint( tmh.text ), 9 );
    except
    end;
    zy_tmh := trim( tmh.text );
    with dm_data.qry_pub do
    begin
      Close;
      SQL.clear;
      SQL.Text := 'select zydj.tmh,zydj.zyh,zydj.zdjf,zydj.jsbz,' +
        ' zydj.brxm,fylb.yjbz,zydj.cybz,zydj.brdz,ksdm.mc ' +
        ' from zysf_cydj zydj,sys_fylb fylb,sys_ksdm ksdm ' +
        ' where zydj.fylb=fylb.dm and zydj.ksdm=ksdm.dm ' +
        ' and zydj.tmh<>' + #39 + '000000001' + #39 + ' and ' +
        '(zydj.tmh=' + #39 + zy_tmh + #39 + ' or zydj.brxm like ' +
        #39 + '%' + zy_tmh + '%' + #39 + ' or zydj.pym like ' +
        #39 + '%' + zy_tmh + '%' + #39 + ')';
      //-----������ѯ��Ժ������Ϣ------------
      if bqcx then
      begin
        SQL.Text := 'select zydj.tmh,zydj.zyh,zydj.zdjf,zydj.jsbz,' +
          ' zydj.brxm,fylb.yjbz,zydj.cybz,zydj.brdz,ksdm.mc ' +
          ' from zysf_cydj zydj,sys_fylb fylb,sys_ksdm ksdm ,sys_bqzyfl bq' +
          ' where zydj.fylb=fylb.dm and zydj.ksdm=ksdm.dm and zydj.ksdm=bq.bqzydm' +
          ' and zydj.tmh<>' + #39 + '000000001' + #39 + ' and ' +
          '(zydj.tmh=' + #39 + zy_tmh + #39 + ' or zydj.brxm like ' +
          #39 + '%' + zy_tmh + '%' + #39 + ' or zydj.pym like ' +
          #39 + '%' + zy_tmh + '%' + #39 + ') and bq.bqdm = ' + #39 + pub_bqdm + #39;
      end;

      open;
    end;
    if dm_data.qry_pub.IsEmpty then
    begin
      application.MessageBox( '�޴˴˿���,����δ��Ժ��', '��ʾ', 0 + 16 );
      tmh.SetFocus;
      tmh.SelectAll;
      abort;
    end
    else
    begin
      if dm_data.qry_pub.RecordCount = 1 then
        proc_getbyxx
      else
      begin
        dbgrid3.left := tmh.left;
        dbgrid3.top := tmh.top + tmh.height;
        dbgrid3.Visible := true;
        dbgrid3.SetFocus;
      end
    end;
  end;
end;

procedure Tfrm_cybrzhcx.tmhKeyPress( Sender: TObject; var Key: Char );
begin
  if key = #13 then bitbtn2.SetFocus;
end;

procedure Tfrm_cybrzhcx.proc_getbyxx;
begin
  zy_brdz := dm_data.Qry_pub.FieldByName( 'brdz' ).asstring;
  zy_zyh := dm_data.qry_pub.FieldByName( 'zyh' ).asstring;
  zy_tmh := dm_data.qry_pub.FieldByName( 'tmh' ).asstring;
  sp_sebrqk.Active := false;
  sp_sebrqk.parameters.ParamByName( '@zyh' ).value := zy_zyh;
  sp_sebrqk.Open;
  cyrq.DateTime := sp_sebrqk.fieldbyname( 'cyrq' ).asdatetime;
  zy_fylb := sp_sebrqk.fieldbyname( 'fylb' ).asstring;
  zy_yjbz := sp_sebrqk.fieldbyname( 'yjbz' ).asboolean;
  zy_syyj := sp_sebrqk.fieldbyname( 'syyj' ).asfloat;
  zy_zfy := sp_sebrqk.fieldbyname( 'zfy' ).asfloat;
  zy_yjze := sp_sebrqk.fieldbyname( 'sjyjze' ).asfloat;
  if sp_sebrqk.fieldbyname( 'zfje' ).asfloat = 0 then
    zy_zfze := sp_sebrqk.fieldbyname( 'zfze' ).asfloat
  else
    zy_zfze := sp_sebrqk.fieldbyname( 'zfje' ).asfloat;
  zy_ybje := sp_sebrqk.fieldbyname( 'ybje' ).asfloat;
  zy_ytje := sp_sebrqk.fieldbyname( 'ytje' ).asfloat;
  zy_ryrq := sp_sebrqk.fieldbyname( 'ryrq' ).asdatetime;
  zy_cyrq := sp_sebrqk.fieldbyname( 'jsrq' ).asdatetime;
  zy_ksmc := sp_sebrqk.fieldbyname( 'ksmc' ).asstring;
  zy_sjbh := sp_sebrqk.fieldbyname( 'sjbh' ).asstring;
  zy_ksdm := sp_sebrqk.fieldbyname( 'ksdm' ).asstring;
  zy_brxm := sp_sebrqk.fieldbyname( 'brxm' ).asstring;
  yjze.Text := floattostr( zy_yjze );
  zfy.Text := floattostr( zy_zfy );
  sbzfze.text := floattostr( zy_zfze );
  sbtcze.text := floattostr( zy_zfy - zy_zfze );
  ysxje.Text := floattostr( zy_ybje );
  ytxje.Text := floattostr( zy_ytje );
  sp_yjmxcx.Active := false;
  sp_yjmxcx.parameters.ParamByName( '@zyh' ).value := zy_zyh;
  sp_yjmxcx.parameters.ParamByName( '@jsrq' ).value := zy_cyrq;
  sp_yjmxcx.Open;
  zy_yjcs := sp_yjmxcx.fieldbyname( 'yjcs' ).asinteger;
  sp_fymx.Active := false;
  sp_fymx.parameters.ParamByName( '@zyh' ).value := zy_zyh;
  sp_fymx.parameters.ParamByName( '@jsrq' ).value := zy_cyrq;
  sp_fymx.Open;
  sp_cx_fydl.Close;
  sp_cx_fydl.parameters.ParamByName( '@zyh' ).value := zy_zyh;
  sp_cx_fydl.parameters.ParamByName( '@sjbh' ).value := zy_sjbh;
  sp_cx_fydl.open;
  qry_bafy.Active := false;
  qry_bafy.parameters.ParamByName( 'zy_zyh' ).value := zy_zyh;
  qry_bafy.parameters.ParamByName( 'sjbh' ).value := zy_sjbh;
  qry_bafy.open;
  SP_yymx.close;
  SP_yymx.Parameters.ParamByName( '@zyh' ).value := zy_zyh;
  SP_yymx.Parameters.ParamByName( '@jsdh' ).value := '';
  SP_yymx.Parameters.ParamByName( '@jsrq' ).value := zy_cyrq;
  SP_yymx.Parameters.ParamByName( '@sfsb' ).value := 1;
  jylyp := true;
  if ( sp_sebrqk.fieldbyname( 'fylb' ).asstring <> '03' ) or ( pub_yydm = '0098' ) then
    if application.MessageBox( '�Ƿ����ּ�����ҩƷ��', 'ѯ��', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2 ) = IDNO then
    begin
      SP_yymx.Parameters.ParamByName( '@sfsb' ).value := 0;
      jylyp := false;
    end;
  SP_yymx.Parameters.ParamByName( '@lb' ).value := 3;
  SP_yymx.open;

  SP_zyyymx.close;
  SP_zyyymx.Parameters.ParamByName( '@zyh' ).value := zy_zyh;
  SP_zyyymx.Parameters.ParamByName( '@jsdh' ).value := '';
  if jylyp then
    SP_zyyymx.Parameters.ParamByName( '@sfsb' ).value := 1
  else
    SP_zyyymx.Parameters.ParamByName( '@sfsb' ).value := 0;
  SP_zyyymx.Parameters.ParamByName( '@jsrq' ).value := zy_cyrq;
  SP_zyyymx.Parameters.ParamByName( '@lb' ).value := 3;
  SP_zyyymx.open;
  if zy_fylb = '03' then
  begin
    sbzfze.Enabled := true;
    sbtcze.Enabled := true;
  end
  else
  begin
    sbzfze.Enabled := false;
    sbtcze.Enabled := false;
  end;
  PageControl1.ActivePage := TabSheet1;
  tmh.text := zy_tmh;
  g_tj.SetFocus;
end;

procedure Tfrm_cybrzhcx.b_closeClick( Sender: TObject );
begin
  close;
end;

procedure Tfrm_cybrzhcx.DBGrid3KeyPress( Sender: TObject; var Key: Char );
begin
  if key = #13 then proc_getbyxx;
end;

procedure Tfrm_cybrzhcx.DBGrid3Exit( Sender: TObject );
begin
  dbgrid3.Visible := false;
end;

procedure Tfrm_cybrzhcx.qzsjPrint( sender: TObject; var Value: string );
begin
  value := formatdatetime( 'yyyy/mm/dd', sp_sebrqk.fieldbyname( 'ryrq' ).asdatetime ) + '-' + formatdatetime( 'yyyy/mm/dd', sp_sebrqk.fieldbyname( 'cyrq' ).asdatetime );
end;

procedure Tfrm_cybrzhcx.FormKeyPress( Sender: TObject; var Key: Char );
begin
  if key = #27 then
  begin
    tmh.SetFocus;
    tmh.SelectAll;
  end;
end;

procedure Tfrm_cybrzhcx.sp_zyyymxCalcFields( DataSet: TDataSet );
begin
  if ( sp_sebrqk.FieldByName( 'fylb' ).asstring = '03' ) or ( sp_sebrqk.FieldByName( 'fylb' ).asstring = '05' ) or jylyp = true then
  begin
    sp_zyyymx['jylyp'] := '�Է�';
    if sp_zyyymx.FieldByName( 'sfjlyp' ).asboolean then
      sp_zyyymx['jylyp'] := '����'
    else
      if sp_zyyymx.FieldByName( 'sfylyp' ).asboolean then
        sp_zyyymx['jylyp'] := '����';
  end;
  if trim( sp_yymx.FieldByName( 'ypmc' ).asstring ) = 'ȫ���ϼ�' then
    sp_yymx['jylyp'] := 'ȫ��';
end;

procedure Tfrm_cybrzhcx.FormShow( Sender: TObject );
begin
  QuickRep2.Visible := false;
  if pub_tmhxsbz = false then
    tmh.PasswordChar := '*';
end;

procedure Tfrm_cybrzhcx.BitBtn2Click( Sender: TObject );
begin
  FymxHz_print1( zy_zyh, '��Ժ' );
end;

procedure Tfrm_cybrzhcx.brnlPrint( sender: TObject; var Value: string );
begin
  value := inttostr( round( ( dm_data.sp_zydj.fieldbyname( 'ryrq' ).asdatetime - dm_data.sp_zydj.fieldbyname( 'csrq' ).asdatetime ) / 365 ) ) + '��';
end;

procedure Tfrm_cybrzhcx.btn1Click( Sender: TObject );
var
  i: integer;
begin
  if qry_bafy.Active = false then
  begin
    qry_bafy.parameters.ParamByName( 'zy_zyh' ).value := zy_zyh;
    qry_bafy.parameters.ParamByName( 'sjbh' ).value := zy_sjbh;
    qry_bafy.open;
  end;
  dm_data.ad_fydl.Close;
  dm_data.ad_fydl.SQL.Clear;
  dm_data.ad_fydl.SQL.Text := qry_bafy.SQL.Text;
  dm_data.ad_fydl.Parameters.Clear;
  for i := 1 to qry_bafy.Parameters.Count do
  begin
    dm_data.ad_fydl.Parameters.AddParameter;
    dm_data.ad_fydl.Parameters.Items[i - 1] := qry_bafy.Parameters.Items[i - 1];
  end;
  dm_data.ad_fydl.open;

  dm_data.ad_yjmx.Close;
  dm_data.ad_yjmx.Parameters.Clear;
  dm_data.ad_yjmx.ProcedureName := sp_yjmxcx.ProcedureName;
  dm_data.ad_yjmx.Parameters.Clear;
  for i := 1 to sp_yjmxcx.Parameters.Count do
  begin
    dm_data.ad_yjmx.Parameters.AddParameter;
    dm_data.ad_yjmx.Parameters.Items[i - 1] := sp_yjmxcx.Parameters.Items[i - 1];
  end;
  dm_data.ad_yjmx.open;
  sp_cx_fydl.Close;
  sp_cx_fydl.parameters.ParamByName( '@zyh' ).value := zy_zyh;
  sp_cx_fydl.open;
  dm_data.sp_cwdl.Close;
  dm_data.sp_cwdl.Parameters.Clear;
  dm_data.sp_cwdl.ProcedureName := sp_cx_fydl.ProcedureName;
  dm_data.sp_cwdl.Parameters.Clear;
  for i := 1 to sp_cx_fydl.Parameters.Count do
  begin
    dm_data.sp_cwdl.Parameters.AddParameter;
    dm_data.sp_cwdl.Parameters.Items[i - 1] := sp_cx_fydl.Parameters.Items[i - 1];
  end;
  dm_data.sp_cwdl.open;

  dm_data.sp_zydj.Close;
  dm_data.sp_zydj.Parameters.Clear;
  dm_data.sp_zydj.ProcedureName := sp_sebrqk.ProcedureName;
  dm_data.sp_zydj.Parameters.Clear;
  for i := 1 to sp_sebrqk.Parameters.Count do
  begin
    dm_data.sp_zydj.Parameters.AddParameter;
    dm_data.sp_zydj.Parameters.Items[i - 1] := sp_sebrqk.Parameters.Items[i - 1];
  end;
  dm_data.sp_zydj.open;

  if sp_fymx.Active = false then
  begin
    sp_fymx.parameters.ParamByName( '@tmh' ).value := zy_tmh;
    sp_fymx.parameters.ParamByName( '@zyh' ).value := zy_zyh;
    sp_fymx.Open;
  end;
  dm_data.sp_fymx.Close;
  dm_data.sp_fymx.Parameters.Clear;
  dm_data.sp_fymx.ProcedureName := sp_fymx.ProcedureName;
  dm_data.sp_fymx.Parameters.Clear;
  for i := 1 to sp_fymx.Parameters.Count do
  begin
    dm_data.sp_fymx.Parameters.AddParameter;
    dm_data.sp_fymx.Parameters.Items[i - 1] := sp_fymx.Parameters.Items[i - 1];
  end;
  dm_data.sp_fymx.open;
  //------------------calmhawk-----ѡ������ʽ-----2009-08-21----
  if sfarqpx.Checked then
  begin
    dm_data.sp_fymx.Sort := 'sfrq';
  end
  else
  begin
    dm_data.sp_fymx.Sort := 'kmdm';
  end;
  //--------------------------------------------------------------
  if checkbox1.Checked then
  begin
    application.CreateForm( Tfrm_print_fymx_mx, frm_print_fymx_mx );
    frm_print_fymx_mx.QuickRep1.Preview;
    try frm_print_fymx_mx.free except
    end;
  end
  else
  begin
    application.CreateForm( Tfrm_print_fymx, frm_print_fymx );
    if sfarqpx.Checked then
    begin
      frm_print_fymx.sfrqpx := true;
    end;
    frm_print_fymx.QuickRep1.Preview;
    try frm_print_fymx.free except
    end;
  end;
  if SP_yymx.Active = false then
  begin
    SP_yymx.Parameters.ParamByName( '@zyh' ).value := zy_zyh;
    SP_yymx.Parameters.ParamByName( '@jsdh' ).value := zy_jsdh;
    if sp_sebrqk.fieldbyname( 'fylb' ).asstring = '03' then
    begin
      SP_yymx.Parameters.ParamByName( '@sfsb' ).value := 1;
      if pub_yydm = '0098' then
        if application.MessageBox( '�Ƿ����ּ�����ҩƷ��', 'ѯ��', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2 ) = IDNO then
          SP_yymx.Parameters.ParamByName( '@sfsb' ).value := 0;
    end
    else
      SP_yymx.Parameters.ParamByName( '@sfsb' ).value := 0;
    SP_yymx.Parameters.ParamByName( '@lb' ).value := 3;
    SP_yymx.open;
  end;
  yymc.Caption := pub_yymc;
  brxm.Caption := zy_brxm;
  tmh1.Caption := zy_tmh;
  brxm1.Caption := zy_brxm;
  tmh2.Caption := zy_tmh;
  ksmc.Caption := zy_ksmc;
  if sp_yymx.RecordCount > 0 then
    QuickRep1.Preview;
  yymc3.Caption := pub_yymc;
  brxm3.Caption := zy_brxm;
  tmh3.Caption := zy_tmh;
  brxm4.Caption := zy_brxm;
  tmh4.Caption := zy_tmh;
  ksmc3.Caption := zy_ksmc;
  if sp_zyyymx.RecordCount > 0 then
    quickrep2.Preview;
end;

procedure Tfrm_cybrzhcx.btn2Click( Sender: TObject );
var
  I: INTEGER;
begin
  qry_bafy.Close;
  qry_bafy.parameters.ParamByName( 'zy_zyh' ).value := zy_zyh;
  qry_bafy.open;
  dm_data.ad_fydl.Close;
  dm_data.ad_fydl.SQL.Clear;
  dm_data.ad_fydl.SQL.Text := qry_bafy.SQL.Text;
  dm_data.ad_fydl.Parameters.Clear;
  for i := 1 to qry_bafy.Parameters.Count do
  begin
    dm_data.ad_fydl.Parameters.AddParameter;
    dm_data.ad_fydl.Parameters.Items[i - 1] := qry_bafy.Parameters.Items[i - 1];
  end;
  dm_data.ad_fydl.open;
  dm_data.sp_zydj.Close;
  dm_data.sp_zydj.Parameters.Clear;
  dm_data.sp_zydj.ProcedureName := sp_sebrqk.ProcedureName;
  dm_data.sp_zydj.Parameters.Clear;
  for i := 1 to sp_sebrqk.Parameters.Count do
  begin
    dm_data.sp_zydj.Parameters.AddParameter;
    dm_data.sp_zydj.Parameters.Items[i - 1] := sp_sebrqk.Parameters.Items[i - 1];
  end;
  dm_data.sp_zydj.open;
  bt.Caption := pub_yymc + '-סԺ��Ա�����嵥���վݸ�����';
  QUICKREP3.Preview;
end;

procedure Tfrm_cybrzhcx.rcysjPrint( sender: TObject; var Value: string );
begin
  value := formatdatetime( 'yy/mm/dd', dm_data.sp_zydj.fieldbyname( 'ryrq' ).asdatetime ) + '��' +
    formatdatetime( 'yy/mm/dd', dm_data.sp_zydj.fieldbyname( 'cyrq' ).asdatetime );

end;

procedure Tfrm_cybrzhcx.QRLabel46Print( sender: TObject; var Value: string );
begin
  if - dm_data.sp_zydj.fieldbyname( 'sjyjze' ).asfloat + dm_data.sp_zydj.fieldbyname( 'zfy' ).asfloat < 0 then
    value := 'Ӧ�ˣ�' + format( '%8.2f', [abs( -dm_data.sp_zydj.fieldbyname( 'sjyjze' ).asfloat + dm_data.sp_zydj.fieldbyname( 'zfy' ).asfloat )] )
  else
    value := 'Ӧ����' + format( '%8.2f', [abs( -dm_data.sp_zydj.fieldbyname( 'sjyjze' ).asfloat + dm_data.sp_zydj.fieldbyname( 'zfy' ).asfloat )] )

end;

procedure Tfrm_cybrzhcx.QRSubDetail1NeedData( Sender: TObject;
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

procedure Tfrm_cybrzhcx.QRDBText4Print( sender: TObject; var Value: string );
begin
  if value = '' then value := '0';
  value := format( '%8.2f', [strtofloat( Value )] );
end;

procedure Tfrm_cybrzhcx.QuickRep3BeforePrint( Sender: TCustomQuickRep;
  var PrintReport: Boolean );
begin
  dm_data.ad_fydl.First;
end;

procedure Tfrm_cybrzhcx.g_tjTitleBtnClick( Sender: TObject; ACol: Integer;
  Column: TColumnEh );
begin
  if column.Title.SortMarker = smdowneh then
    sp_cx_fydl.Sort := column.FieldName
  else
    sp_cx_fydl.Sort := column.FieldName + ' DESC';

end;

procedure Tfrm_cybrzhcx.g_fyDrawColumnCell( Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumnEh; State: TGridDrawState );
begin
  if sp_fymx['tfbz'] = true then
  begin
    g_fy.Canvas.Brush.Color := cllime;
    g_fy.Canvas.Font.color := clblue;
  end;
  g_fy.DefaultDrawColumnCell( rect, datacol, column, state );
end;

procedure Tfrm_cybrzhcx.g_tjDblClick( Sender: TObject );
begin
  Application.CreateForm( Tfrm_fydl_fymx, frm_fydl_fymx );
  try
    frm_fydl_fymx.dlmc := sp_cx_fydl.fieldbyname( 'kmmc' ).asString;
    frm_fydl_fymx.sjxs( sp_fymx, ds_fymx );
    frm_fydl_fymx.ShowModal;
  finally
    frm_fydl_fymx.free;
    sp_fymx.Filtered := false;
  end;
end;
initialization
  RegisterClass( Tfrm_cybrzhcx );
end.

