unit p_yzzxjl_print;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, GridsEh, DBGridEh, DB, ADODB, QRCtrls,
  QuickRpt, ComCtrls;

type
  Tfrm_yzzxjl_print = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    edt_tmh: TEdit;
    BBtn_print_cq: TBitBtn;
    BBtn_return: TBitBtn;
    ds_zxjl_cq: TDataSource;
    DBGridEh2: TDBGridEh;
    qry_dj: TADOQuery;
    ds_dj: TDataSource;
    BBtn_print_ls: TBitBtn;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    sp_zxjl_cq: TADOStoredProc;
    sp_zxjl_ls: TADOStoredProc;
    ds_zxjl_ls: TDataSource;
    DBGridEh3: TDBGridEh;
    QuickRep1: TQuickRep;
    PageFooterBand1: TQRBand;
    QRLabel13: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel12: TQRLabel;
    QRLabel14: TQRLabel;
    QRL_ys_cq: TQRLabel;
    QRL_dysj_cq: TQRLabel;
    PageHeaderBand1: TQRBand;
    QRShape1: TQRShape;
    QRL_yymc_cq: TQRLabel;
    QRL_brxm_cq: TQRLabel;
    QRL_tmh_cq: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRShape2: TQRShape;
    QRLabel8: TQRLabel;
    QRShape3: TQRShape;
    QRShape5: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRLabel9: TQRLabel;
    QRShape9: TQRShape;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRLabel1: TQRLabel;
    QRL_bch_cq: TQRLabel;
    DetailBand1: TQRBand;
    QRShape20: TQRShape;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText1: TQRDBText;
    QuickRep2: TQuickRep;
    QRBand1: TQRBand;
    QRLabel15: TQRLabel;
    QRSysData2: TQRSysData;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRL_ys_ls: TQRLabel;
    QRBand2: TQRBand;
    QRShape4: TQRShape;
    QRL_yymc_ls: TQRLabel;
    QRL_brxm_ls: TQRLabel;
    QRL_tmh_ls: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel27: TQRLabel;
    QRShape15: TQRShape;
    QRLabel28: TQRLabel;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRShape19: TQRShape;
    QRShape22: TQRShape;
    QRShape23: TQRShape;
    QRShape24: TQRShape;
    QRShape25: TQRShape;
    QRLabel32: TQRLabel;
    QRL_bch_ls: TQRLabel;
    QRBand3: TQRBand;
    QRDBText7: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText16: TQRDBText;
    QRShape21: TQRShape;
    DBGridEh1: TDBGridEh;
    QRL_dysj_ls: TQRLabel;
    procedure FormShow(Sender: TObject);
    procedure DBGridEh2Exit(Sender: TObject);
    procedure edt_tmhKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BBtn_returnClick(Sender: TObject);
    procedure DBGridEh2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGridEh2DblClick(Sender: TObject);
    procedure BBtn_print_cqClick(Sender: TObject);
    procedure BBtn_print_lsClick(Sender: TObject);
    procedure DBGridEh3DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
  private
    { Private declarations }
    Prv_brxm, Prv_tmh: String;

    procedure Proc_Seek_dj(const v_tmh: string);
    procedure Proc_Seek_yzzxjl(const v_tmh, v_zyh, v_brxm: string);
  public
    { Public declarations }
    Pub_Selected_zyh: string;
  end;

var
  frm_yzzxjl_print: Tfrm_yzzxjl_print;
const
  con_sql_zy = 'select * from zysf_zydj where (zyh=:zyh or tmh like :tmh) and ksdm=:ksdm';
  con_sql_cy = 'select * from zysf_cydj where (zyh=:zyh or tmh like :tmh) and ksdm=:ksdm';
implementation

uses p_dm, p_func;

{$R *.dfm}

procedure Tfrm_yzzxjl_print.BBtn_print_cqClick(Sender: TObject);
begin
  QRL_yymc_cq.Caption:= pub_yymc + '治疗记录(长期医嘱)';
  QRL_brxm_cq.Caption:= '病人姓名:' + Prv_brxm;
  QRL_tmh_cq.Caption:= '住院号:' + Prv_tmh;
  QRL_bch_cq.Caption:= '病床号:' + qry_dj.FieldByName('bch').AsString;
  QRL_dysj_cq.Caption:= '打印时间:' + FormatDatetime('yyyy年mm月dd日',frm_func.curr_date);
  QuickRep1.Prepare;
  QRL_ys_cq.Caption:= '共' + IntToStr(QuickRep1.Printer.PageCount) + '页';
  QuickRep1.Preview;
end;

procedure Tfrm_yzzxjl_print.BBtn_print_lsClick(Sender: TObject);
begin
  QRL_yymc_ls.Caption:= pub_yymc + '治疗记录(临时医嘱)';
  QRL_brxm_ls.Caption:= '病人姓名:' + Prv_brxm;
  QRL_tmh_ls.Caption:= '住院号:' + Prv_tmh;
  QRL_bch_ls.Caption:= '病床号:' + qry_dj.FieldByName('bch').AsString;
  QRL_dysj_ls.Caption:= '打印时间:' + FormatDatetime('yyyy年mm月dd日',frm_func.curr_date);
  QuickRep2.Prepare;
  QRL_ys_ls.Caption:= '共' + IntToStr(QuickRep2.Printer.PageCount) + '页';
  QuickRep2.Preview;
end;

procedure Tfrm_yzzxjl_print.BBtn_returnClick(Sender: TObject);
begin
  Close;
end;

procedure Tfrm_yzzxjl_print.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if Trim(sp_zxjl_cq.FieldByName('zhhsmc').AsString)<>'' then
  begin
    DBGridEh1.Canvas.Font.Color := $004F1DD3;
  end
  else
  begin
    DBGridEh1.Canvas.Font.Color := clBlack;
  end;
  DBGridEh1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure Tfrm_yzzxjl_print.DBGridEh2DblClick(Sender: TObject);
begin
  Proc_Seek_yzzxjl(qry_dj.FieldByName('tmh').AsString, qry_dj.FieldByName('zyh').AsString, qry_dj.FieldByName('brxm').AsString)
end;

procedure Tfrm_yzzxjl_print.DBGridEh2Exit(Sender: TObject);
begin
  DBGridEh2.Visible := False;
end;

procedure Tfrm_yzzxjl_print.DBGridEh2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 13 then
    Proc_Seek_yzzxjl(qry_dj.FieldByName('tmh').AsString, qry_dj.FieldByName('zyh').AsString, qry_dj.FieldByName('brxm').AsString)
  else if key = 27 then
    edt_tmh.SetFocus;
end;

procedure Tfrm_yzzxjl_print.DBGridEh3DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if Trim(sp_zxjl_ls.FieldByName('gysj').AsString)<>'' then
  begin
    DBGridEh3.Canvas.Font.Color := $004F1DD3;
  end
  else
  begin
    DBGridEh3.Canvas.Font.Color := clBlack;
  end;
  DBGridEh3.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure Tfrm_yzzxjl_print.edt_tmhKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 13 then
    Proc_Seek_dj(Trim(edt_tmh.Text));
end;

procedure Tfrm_yzzxjl_print.FormShow(Sender: TObject);
begin
  QuickRep1.Visible:= False;
  QuickRep2.Visible:= False;
  if Pub_Selected_zyh <> '' then
    Proc_Seek_dj(Pub_Selected_zyh);
end;

procedure Tfrm_yzzxjl_print.Proc_Seek_dj(const v_tmh: string);
  procedure Proc_Seek_SQL(const v_SQL: string);
  begin
    qry_dj.Close;
    qry_dj.SQL.Text := v_SQL;
    qry_dj.Parameters.ParamByName('zyh').Value := v_tmh;
    qry_dj.Parameters.ParamByName('tmh').Value := '%' + v_tmh + '%';
    qry_dj.Parameters.ParamByName('ksdm').Value := Pub_ksdm;
    qry_dj.Open;
  end;
begin
  Proc_Seek_SQL(con_sql_zy);
  if qry_dj.RecordCount > 1 then
  begin
    DBGridEh2.Visible := True;
    DBGridEh2.SetFocus;
  end
  else if qry_dj.RecordCount = 1 then
    Proc_Seek_yzzxjl(qry_dj.FieldByName('tmh').AsString, qry_dj.FieldByName('zyh').AsString, qry_dj.FieldByName('brxm').AsString);
//  else
//  begin
//    Proc_Seek_SQL(con_sql_cy);
//    if qry_dj.RecordCount > 1 then
//    begin
//      DBGridEh2.Visible := True;
//      DBGridEh2.SetFocus;
//    end
//    else if qry_dj.RecordCount = 1 then
//      Proc_Seek_yzzxjl(qry_dj.FieldByName('tmh').AsString, qry_dj.FieldByName('zyh').AsString, qry_dj.FieldByName('brxm').AsString);
//  end;
end;

procedure Tfrm_yzzxjl_print.Proc_Seek_yzzxjl(const v_tmh, v_zyh, v_brxm: string);
begin
  with sp_zxjl_cq do
  begin
    Close;
    Parameters.ParamByName('@zyh').Value := v_zyh;
    Parameters.ParamByName('@fs').Value := 0;
    Open;
  end;

  with sp_zxjl_ls do
  begin
    Close;
    Parameters.ParamByName('@zyh').Value := v_zyh;
    Parameters.ParamByName('@fs').Value := 1;
    Open;
  end;
  
  Prv_brxm:= v_brxm;
  Prv_tmh:= v_tmh;
  edt_tmh.Text := v_tmh;
  DBGrideh1.SetFocus;
end;
end.

