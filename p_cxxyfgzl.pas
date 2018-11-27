unit p_cxxyfgzl;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, Db, DBTables, StdCtrls, Grids, DBGrids, Mask, DBCtrls, Buttons,
  ComCtrls, ADODB;

type
  TFrm_cxxyfgzl = class(TForm)
    ds_gzl: TDataSource;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    Label2: TLabel;
    date1: TDateTimePicker;
    Label3: TLabel;
    b_ok: TBitBtn;
    b_print: TBitBtn;
    b_close: TBitBtn;
    date2: TDateTimePicker;
    SP_gzl: TADOStoredProc;
    procedure b_closeClick(Sender: TObject);
    procedure b_okClick(Sender: TObject);
    procedure date1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure date2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure date1Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure b_printClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure SP_gzlAfterClose(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_cxxyfgzl: TFrm_cxxyfgzl;

implementation

uses p_login, p_dm, p_print_xyfgzl, p_func;

{$R *.DFM}

procedure TFrm_cxxyfgzl.b_closeClick(Sender: TObject);
begin
  close;
end;

procedure TFrm_cxxyfgzl.b_okClick(Sender: TObject);
var
  kssj, jssj: string;
begin
  sp_gzl.close;
  kssj := formatdatetime('yyyymmdd', date1.datetime);
  jssj := formatdatetime('yyyymmdd', date2.datetime);
  if kssj > jssj then
  begin
    application.MessageBox('请输入正确的统计时间范围!', '注意', 16);
    abort;
  end;
  sp_gzl.PARAMETERS.ParamByName('@ksrq').value := kssj;
  sp_gzl.PARAMETERS.ParamByName('@jsrq').value := jssj;
  sp_gzl.open;
  if sp_gzl.RecordCount = 1 then
  begin
    sp_gzl.close;
    application.MessageBox('在所选择的时间范围内没有工作量！', '提示', 16);
    abort;
  end
  else
  begin
    b_print.Enabled := true;
    dbgrid1.SetFocus;
  end;

end;

procedure TFrm_cxxyfgzl.date1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 13 then date2.SetFocus;
end;

procedure TFrm_cxxyfgzl.date2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  b_ok.SetFocus;
end;

procedure TFrm_cxxyfgzl.date1Change(Sender: TObject);
begin
  sp_gzl.close;
end;

procedure TFrm_cxxyfgzl.FormShow(Sender: TObject);
begin
  date1.DateTime := frm_func.curr_date;
  date2.DateTime := frm_func.curr_date;
end;

procedure TFrm_cxxyfgzl.b_printClick(Sender: TObject);
var
  kssj, jssj: string;
begin
  kssj := formatdatetime('yyyy-mm-dd', date1.datetime);
  jssj := formatdatetime('yyyy-mm-dd', date2.datetime);
  application.CreateForm(Tfrm_print_xyfgzl, frm_print_xyfgzl);
  try
    frm_print_xyfgzl.lb_tjrq.Caption := '统计范围:' + kssj + ' 至 ' + jssj;
    frm_print_xyfgzl.lb_tjks.Caption := '统计科室:' + pub_ksmc;
    frm_print_xyfgzl.lb_rq.Caption := '日期:' + formatdatetime('yyyy-mm-dd', frm_func.curr_date);
    frm_print_xyfgzl.lb_czy.Caption := '制表:' + pub_czyxm;
    frm_print_xyfgzl.QuickRep1.Preview;
  finally
    frm_print_xyfgzl.QuickRep1.free;
    frm_print_xyfgzl.free;
  end;
end;

procedure TFrm_cxxyfgzl.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if sp_gzl['xh'] = 1 then
  begin
    dbgrid1.Canvas.brush.Color := cllime;
    dbgrid1.Canvas.Font.Color := clblue;
  end;
  dbgrid1.DefaultDrawColumnCell(rect, datacol, column, state);
end;

procedure TFrm_cxxyfgzl.SP_gzlAfterClose(DataSet: TDataSet);
begin
  b_print.Enabled := false;

end;

end.

