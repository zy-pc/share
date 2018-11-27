unit p_zysfyrb;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ADODB, Grids, DBGridEh, QuickRpt, StdCtrls, Buttons, ComCtrls,
  ExtCtrls, Qrctrls, GridsEh, SXSearchBox, DBGridEhGrouping;

type
  Tfrm_zysfyrb = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    dtp1: TDateTimePicker;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Panel2: TPanel;
    QuickRep1: TQuickRep;
    ad_sfrba: TADODataSet;
    ds_sfyrb: TDataSource;
    QRBand1: TQRBand;
    QRBand2: TQRBand;
    QRBand3: TQRBand;
    QRBand5: TQRBand;
    bt: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    ad_sfrbaxm: TStringField;
    ad_sfrbajzdh: TStringField;
    ad_sfrbaczydm: TStringField;
    ad_sfrbajzrq: TDateTimeField;
    ad_sfrbasyjze: TBCDField;
    ad_sfrbasyjrc: TIntegerField;
    ad_sfrbatyjze: TBCDField;
    ad_sfrbatyjrc: TIntegerField;
    ad_sfrbacybxje: TBCDField;
    ad_sfrbacybxrc: TIntegerField;
    ad_sfrbacytxje: TBCDField;
    ad_sfrbacytxrc: TIntegerField;
    ad_sfrbassje: TBCDField;
    ad_sfrbasjqzh: TMemoField;
    ad_sfrbatfsjh: TMemoField;
    ad_sfrbabryrs: TIntegerField;
    ad_sfrbabcyrs: TIntegerField;
    ad_sfrbajfje: TBCDField;
    ad_sfrbajfbs: TIntegerField;
    ad_sfrbajsbrfy: TBCDField;
    ad_sfrbajsbryj: TBCDField;
    ad_sfrbajsyjbs: TIntegerField;
    ad_sfrbajsqfbrfy: TBCDField;
    ad_sfrbajsqfbryj: TBCDField;
    bbrq: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel26: TQRLabel;
    QRShape5: TQRShape;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    BitBtn4: TBitBtn;
    QuickRep2: TQuickRep;
    ColumnHeaderBand1: TQRBand;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    sfrq: TQRLabel;
    sfczy: TQRLabel;
    QRLabel35: TQRLabel;
    dxje: TQRLabel;
    QRShape6: TQRShape;
    QRLabel38: TQRLabel;
    QRShape8: TQRShape;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRShape9: TQRShape;
    QRLabel43: TQRLabel;
    QRLabel44: TQRLabel;
    QRShape10: TQRShape;
    QRLabel48: TQRLabel;
    QRShape12: TQRShape;
    QRLabel49: TQRLabel;
    QRLabel50: TQRLabel;
    QRLabel51: TQRLabel;
    QRShape13: TQRShape;
    QRLabel52: TQRLabel;
    QRLabel53: TQRLabel;
    QRLabel54: TQRLabel;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    syjze: TQRLabel;
    syjrc: TQRLabel;
    cybxje: TQRLabel;
    cybxrc: TQRLabel;
    cytxje: TQRLabel;
    cytxrc: TQRLabel;
    ssje: TQRLabel;
    jsbrfy: TQRLabel;
    jsbryj: TQRLabel;
    jsyjbs: TQRLabel;
    bryrs: TQRLabel;
    bcyrs: TQRLabel;
    jsqfbryj: TQRLabel;
    qfbrfy: TQRLabel;
    sjqh: TQRMemo;
    zfsj: TQRMemo;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DBGridEh3: TDBGridEh;
    DBGridEh1: TDBGridEh;
    sp_czyyjmx: TADOStoredProc;
    sp_czyyjmxbrxm: TStringField;
    sp_czyyjmxsfrq: TDateTimeField;
    sp_czyyjmxtmh: TStringField;
    sp_czyyjmxsjh: TStringField;
    sp_czyyjmxyjje: TBCDField;
    sp_czyyjmxyjxssm: TStringField;
    ds_sfmx: TDataSource;
    BitBtn5: TBitBtn;
    QuickRep3: TQuickRep;
    QRBand4: TQRBand;
    QRBand6: TQRBand;
    QRBand7: TQRBand;
    QRBand8: TQRBand;
    BT3: TQRLabel;
    QRLabel56: TQRLabel;
    QRLabel57: TQRLabel;
    QRLabel58: TQRLabel;
    QRLabel59: TQRLabel;
    QRLabel60: TQRLabel;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText21: TQRDBText;
    QRDBText22: TQRDBText;
    QRDBText23: TQRDBText;
    QRLabel61: TQRLabel;
    QRDBText24: TQRDBText;
    SFY: TQRLabel;
    QRBand9: TQRBand;
    QRLabel55: TQRLabel;
    QRExpr2: TQRExpr;
    QRLabel62: TQRLabel;
    QRLabel63: TQRLabel;
    dysj: TQRLabel;
    QRSysData2: TQRSysData;
    QRLabel64: TQRLabel;
    QRLabel65: TQRLabel;
    QRSysData3: TQRSysData;
    QRLabel66: TQRLabel;
    ad_sfrbazchzfy: TBCDField;
    ad_sfrbaqffy: TBCDField;
    sp_czyyjmxhzbz: TBooleanField;
    sp_czyyjmxfyze: TBCDField;
    sp_czyyjmxyjze: TBCDField;
    QRLabel37: TQRLabel;
    QRLabel67: TQRLabel;
    QRDBText25: TQRDBText;
    QRDBText26: TQRDBText;
    dtp2: TDateTimePicker;
    Label2: TLabel;
    ad_sfrb: TADOStoredProc;
    SummaryBand1: TQRBand;
    QRExpr1: TQRExpr;
    QRLabel24: TQRLabel;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    QRExpr5: TQRExpr;
    QRExpr10: TQRExpr;
    QRExpr11: TQRExpr;
    QRExpr12: TQRExpr;
    QRExpr13: TQRExpr;
    QRExpr14: TQRExpr;
    QRExpr15: TQRExpr;
    QRExpr16: TQRExpr;
    QRExpr17: TQRExpr;
    QRExpr18: TQRExpr;
    QRLabel23: TQRLabel;
    zbr: TQRLabel;
    lab_yjk: TQRLabel;
    QRExpr6: TQRExpr;
    QRLabel2: TQRLabel;
    QRExpr7: TQRExpr;
    QRShape3: TQRShape;
    QRSysData1: TQRSysData;
    QRLabel25: TQRLabel;
    sxsrchbx1: TSXSearchBox;
    lbl1: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure QRDBText2Print(sender: TObject; var Value: string);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure syjzePrint(sender: TObject; var Value: string);
    procedure dtp1Change(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure QRDBText24Print(sender: TObject; var Value: string);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure DBGridEh1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGridEh3DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure QRExpr7Print(sender: TObject; var Value: string);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_zysfyrb: Tfrm_zysfyrb;
  lb: integer;

implementation
uses p_dm, p_func, p_login, p_zyczyrb;
{$R *.DFM}

procedure Tfrm_zysfyrb.BitBtn1Click(Sender: TObject);
begin
  ad_sfrb.close;
  ad_sfrb.Parameters.ParamByName('@ksrq').value := formatdatetime('yyyymmdd', dtp1.Date);
  ad_sfrb.Parameters.ParamByName('@jsrq').value := formatdatetime('yyyymmdd', dtp2.Date);
  if formatdatetime('yyyymmdd', dtp1.date) = formatdatetime('yyyymmdd', dtp2.date) then
  begin
    lb := 1;
    bitbtn4.Enabled := true;
  end
  else
  begin
    lb := 2;
    bitbtn4.enabled := false;
  end;
  try
    ad_sfrb.Parameters.ParamByName('@ksdm').value := sxsrchbx1.Value;
  except
  end;
  ad_sfrb.Parameters.ParamByName('@lb').value := lb;
  ad_sfrb.open;
end;

procedure Tfrm_zysfyrb.FormShow(Sender: TObject);
begin
  dtp1.date := date - 1;
  dtp2.date := date - 1;
  pagecontrol1.ActivePageIndex := 0;
  QuickRep1.Visible := False;
  QuickRep2.Visible := False;
  QuickRep3.Visible := False;
end;

procedure Tfrm_zysfyrb.QRDBText2Print(sender: TObject; var Value: string);
begin
  if (value = '0.00') or (value = '0') then
    value := '';
end;

procedure Tfrm_zysfyrb.QRExpr7Print(sender: TObject; var Value: string);
begin
  Value := NumberToMoney(StrToFloat(Value));
end;

procedure Tfrm_zysfyrb.BitBtn2Click(Sender: TObject);
begin
  zbr.caption := '制表人:' + pub_czyxm;
  if lb = 1 then
  begin
    bbrq.caption := '报表日期:' + formatdatetime('yyyy"年"mm"月"dd"日"', dtp1.date);
    bt.caption := trim(pub_yymc) + '住院收费日报表';
  end
  else
  begin
    bbrq.caption := '报表日期:' + formatdatetime('yyyy"年"mm"月"dd"日"', dtp1.date) + ' 至 ' + formatdatetime('yyyy"年"mm"月"dd"日"', dtp2.date);
    bt.caption := trim(pub_yymc) + '住院收费报表';
  end;
  quickrep1.Preview;
end;

procedure Tfrm_zysfyrb.BitBtn4Click(Sender: TObject);
begin
  application.CreateForm(Tfrm_zyczyrb, frm_zyczyrb);
  try
    frm_zyczyrb.ShowModal;
  finally
    frm_zyczyrb.free;
  end;

end;

procedure Tfrm_zysfyrb.syjzePrint(sender: TObject; var Value: string);
begin
  if (value = '0.00') or (value = '0') then
    value := '';
end;

procedure Tfrm_zysfyrb.dtp1Change(Sender: TObject);
begin
  ad_sfrb.close;
end;

procedure Tfrm_zysfyrb.BitBtn5Click(Sender: TObject);
begin
  if sp_czyyjmx.active then
  begin
    bt3.Caption := trim(pub_yymc) + '  ' + '预收（待结）款明细表（日报附件）';
    sfy.caption := '收费员：' + ad_sfrb.fieldbyname('xm').asstring;
    dysj.Caption := '打印时间：' + datetimetostr(frm_func.curr_date());
    QUICKREP3.Preview;
  end;
end;

procedure Tfrm_zysfyrb.QRDBText24Print(sender: TObject; var Value: string);
begin
  if sp_czyyjmx.fieldbyname('hzbz').asboolean = TRUE then
    value := ' 待结帐';
end;

procedure Tfrm_zysfyrb.DBGridEh1DblClick(Sender: TObject);
begin
  sp_czyyjmx.Close;
  if lb = 1 then
    sp_czyyjmx.Parameters.ParamByName('@jzdh').value := ad_sfrb.fieldbyname('jzdh').asstring
  else
    sp_czyyjmx.Parameters.ParamByName('@jzdh').value := '';
  sp_czyyjmx.Parameters.ParamByName('@czy').value := ad_sfrb.fieldbyname('czydm').asstring;
  sp_czyyjmx.Parameters.ParamByName('@ksrq').value := formatdatetime('yyyymmdd', dtp1.Date);
  sp_czyyjmx.Parameters.ParamByName('@jsrq').value := formatdatetime('yyyymmdd', dtp2.Date);
  sp_czyyjmx.Parameters.ParamByName('@lb').value := lb;
  sp_czyyjmx.Open;
  pagecontrol1.ActivePageIndex := 1;
end;

procedure Tfrm_zysfyrb.DBGridEh1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    sp_czyyjmx.Close;
    if lb = 1 then
      sp_czyyjmx.Parameters.ParamByName('@jzdh').value := ad_sfrb.fieldbyname('jzdh').asstring
    else
      sp_czyyjmx.Parameters.ParamByName('@jzdh').value := '';
    sp_czyyjmx.Parameters.ParamByName('@czy').value := ad_sfrb.fieldbyname('czydm').asstring;
    sp_czyyjmx.Parameters.ParamByName('@ksrq').value := formatdatetime('yyyymmdd', dtp1.Date);
    sp_czyyjmx.Parameters.ParamByName('@jsrq').value := formatdatetime('yyyymmdd', dtp2.Date);
    sp_czyyjmx.Parameters.ParamByName('@lb').value := lb;
    sp_czyyjmx.Open;
    pagecontrol1.ActivePageIndex := 1;
  end
end;

procedure Tfrm_zysfyrb.DBGridEh3DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
begin
  if (sp_czyyjmx.Active) and (sp_czyyjmx.RecordCount <> 0) then
  begin
    if sp_czyyjmx.fieldbyname('hzbz').asboolean then
    begin
      dbgrideh3.Canvas.Brush.Color := cllime;
      dbgrideh3.Canvas.Font.Color := clblue;
    end;
  end;
  dbgrideh3.DefaultDrawColumnCell(rect, datacol, column, state);
end;
initialization
  RegisterClass(Tfrm_zysfyrb);
end.

