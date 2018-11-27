unit p_fpdy_tj;
   
interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, DB, ADODB, Menus, cxLookAndFeelPainters,
  cxLabel, cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, StdCtrls, cxButtons, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, ComCtrls;

type
  Tfrm_fpdy_tj = class(TForm)
    qry_tj: TADOQuery;
    ds_tj: TDataSource;
    Panel1: TPanel;
    Panel2: TPanel;
    QuickRep1: TQuickRep;
    TitleBand1: TQRBand;
    bt: TQRLabel;
    QRShape17: TQRShape;
    QRShape28: TQRShape;
    QRShape19: TQRShape;
    QRShape18: TQRShape;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRShape27: TQRShape;
    dxje: TQRLabel;
    QRLabel1: TQRLabel;
    QRShape1: TQRShape;
    QRL_ts: TQRLabel;
    qrl_yymc: TQRLabel;
    QRL_qzrq: TQRLabel;
    QRL_qzhm: TQRLabel;
    QRL_zfhm: TQRLabel;
    SummaryBand1: TQRBand;
    qrl_qbrq: TQRLabel;
    qrl_lyr: TQRLabel;
    cx: TcxButton;
    cxLabel1: TcxLabel;
    tc: TcxButton;
    dy: TcxButton;
    date_ks: TDateTimePicker;
    date_js: TDateTimePicker;
    cxLabel2: TcxLabel;
    ds_zf: TDataSource;
    qry_zf: TADOQuery;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    GridTableViewStyleSheetUserFormat2: TcxGridTableViewStyleSheet;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxStyle5: TcxStyle;
    cxStyle6: TcxStyle;
    cxStyle7: TcxStyle;
    cxStyle8: TcxStyle;
    cxStyle9: TcxStyle;
    cxStyle10: TcxStyle;
    cxStyle11: TcxStyle;
    cxStyle12: TcxStyle;
    qry_tjlydh: TStringField;
    qry_tjminsjh: TIntegerField;
    qry_tjmaxsjh: TIntegerField;
    qry_tjzfh: TStringField;
    cxGrid1DBTableView1lydh: TcxGridDBColumn;
    cxGrid1DBTableView1minsjh: TcxGridDBColumn;
    cxGrid1DBTableView1maxsjh: TcxGridDBColumn;
    cxGrid1DBTableView1zfh: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column1: TcxGridDBColumn;
    qry_tjsl: TIntegerField;
    procedure tcClick(Sender: TObject);
    procedure cxClick(Sender: TObject);
    procedure dyClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    lydh, sjqh, sjzh, dqqh, dqzh, qsrq, zfbh: string;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_fpdy_tj: Tfrm_fpdy_tj;

implementation
uses p_dm, p_func;
{$R *.dfm}

{ Tfrm_fpdy_tj }

procedure Tfrm_fpdy_tj.cxClick(Sender: TObject);
begin
  qry_tj.Close;
  qry_tj.SQL.Text := 'select ' + #39 + lydh + #39 + ' lydh,min(sjbhNew) minsjh,max(sjbhNew) maxsjh,' + #39 + #39 + ' zfh' +
    ' ,count(distinct sjbhNew) sl from mzsf_fpdy_mx where sjbhNew>=' + sjqh + ' and sjbhNew<=' + sjzh +
    ' and convert(char(10),dyrq,120)>=' + #39 + formatdatetime('yyyy-MM-dd', date_ks.Date) + #39 +
    ' and convert(char(10),dyrq,120)<=' + #39 + formatdatetime('yyyy-MM-dd', date_js.Date) + #39;
  qry_tj.Open;
  if qry_tj.RecordCount > 0 then
  begin
    dqqh := qry_tj.FieldByName('minsjh').AsString;
    dqzh := qry_tj.FieldByName('maxsjh').AsString;
    dy.Enabled := True;
    dy.SetFocus;
  end
  else
  begin
    dy.Enabled := False;
    date_ks.SetFocus;
  end;
end;

procedure Tfrm_fpdy_tj.dyClick(Sender: TObject);
begin
//  qry_zf.Close;
//  qry_zf.SQL.Text := 'select a.sjbh from mzsf_mzfymx a join sys_sjsymx b on a.sjbh=b.sybh and ' +
//    'b.lydh=(select lydh from sys_sjlymx where lyr=' + #39 + pub_czydm + #39 + ' and ' +
//    'sjlb=' + #39 + '01' + #39 + ' and qybz=1 and tybz=0) where a.zfbz=1';
//  qry_zf.Open;
//  if qry_zf.RecordCount > 0 then
//  begin
//    zfbh := '';
//    qry_zf.First;
//    while not qry_zf.Eof do
//    begin
//      if zfbh = '' then
//        zfbh := qry_zf.FieldByName('sjbh').AsString
//      else
//        zfbh := zfbh + ' ' + qry_zf.FieldByName('sjbh').AsString;
//      qry_zf.Next;
//    end;
//  end;
  qrl_yymc.Caption := pub_yymc;
  QRL_qzrq.Caption := FormatDateTime('yyyy-mm-dd', date_ks.Date) + '   到    '
    + FormatDateTime('yyyy-mm-dd', date_js.Date);
  QRL_qzhm.Caption := dqqh + '   到    ' + dqzh;
  QRL_ts.Caption := '领用单号:' + lydh;
  QRL_zfhm.Caption := zfbh;
  qrl_lyr.Caption := '收据领用人:' + pub_czyxm;
  qrl_qbrq.Caption := '制表日期:' + FormatDateTime('yyyy-mm-dd hh:MM:ss', Frm_func.curr_date);
  QuickRep1.Preview;
end;

procedure Tfrm_fpdy_tj.FormShow(Sender: TObject);
begin
  QuickRep1.Visible := False;
  date_ks.Date := Frm_func.curr_date;
  date_js.Date := Frm_func.curr_date;
  with DM_data do
  begin
    Qry_pub.Close;
    Qry_pub.SQL.Text := 'select lydh,sjqh,sjzh' +
      ' from sys_sjlymx where lyr=' + #39 + pub_czydm + #39 +
      ' and sjlb=' + #39 + '01' + #39 + ' and qybz=1 and tybz=0';
    Qry_pub.Open;
    if Qry_pub.RecordCount > 0 then
    begin
      lydh := Qry_pub.FieldByName('lydh').AsString;
      sjqh := Qry_pub.FieldByName('sjqh').AsString;
      sjzh := Qry_pub.FieldByName('sjzh').AsString;
    end;
  end;
end;

procedure Tfrm_fpdy_tj.tcClick(Sender: TObject);
begin
  close;
end;

end.

