unit p_yprkhz_bq;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, ComCtrls, Db, DBTables, Grids, DBGrids, Buttons,
  ADODB;


type
  TFrm_yprkhz_bq = class(TForm)
    DS_hz: TDataSource;
    DS_mx: TDataSource;
    StatusBar1: TStatusBar;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Date1: TDateTimePicker;
    Date2: TDateTimePicker;
    Edit1: TEdit;
    b_ok: TBitBtn;
    b_close: TBitBtn;
    Panel3: TPanel;
    DBGrid1: TDBGrid;
    Panel4: TPanel;
    DBGrid2: TDBGrid;
    Label3: TLabel;
    SP_hz: TADOStoredProc;
    SP_mx: TADOStoredProc;
    procedure FormShow(Sender: TObject);
    procedure b_closeClick(Sender: TObject);
    procedure b_okClick(Sender: TObject);
    procedure Date1Change(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure SP_hzAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_yprkhz_bq: TFrm_yprkhz_bq;

implementation

uses p_dm, p_login, p_func;

{$R *.DFM}

procedure TFrm_yprkhz_bq.FormShow(Sender: TObject);
begin
  Date1.Datetime := frm_func.curr_date;
  Date2.Datetime := frm_func.curr_date;
end;


procedure TFrm_yprkhz_bq.b_closeClick(Sender: TObject);
begin
  close;
end;

procedure TFrm_yprkhz_bq.b_okClick(Sender: TObject);
var
  pfzje, lszje: real;
  da1, da2: string;
begin
  sp_hz.close;
  sp_mx.close;
  da1 := formatdatetime('yyyymmdd', date1.datetime);
  da2 := formatdatetime('yyyymmdd', date2.datetime);
  if da1 > da2 then
  begin
    application.MessageBox('请输入正确的统计日期范围!', '注意', 16);
    abort;
  end;
  sp_hz.Parameters.ParamByName('@ksdm').value := pub_ksdm;
  sp_hz.Parameters.ParamByName('@ksrq').value := da1;
  sp_hz.Parameters.ParamByName('@jsrq').value := da2;
  sp_hz.Parameters.ParamByName('@pym').value := trim(edit1.text);
  sp_hz.open;
  if sp_hz.RecordCount <> 0 then
  begin
    pfzje := 0;
    lszje := 0;
    sp_hz.First;
    while not sp_hz.EOF do
    begin
      pfzje := pfzje + sp_hz.fieldbyname('pfzje').asfloat;
      lszje := lszje + sp_hz.fieldbyname('lszje').asfloat;
      sp_hz.Next;
    end;
    sp_hz.First;
    StatusBar1.Panels.Items[0].Text := '批发总金额：' + FloattostrF(pfzje, fffixed, 10, 2) + '元；    零售总金额：' + FloattostrF(lszje, fffixed, 10, 2) + '元';
    dbgrid1.SetFocus;
  end
  else
    StatusBar1.Panels.Items[0].Text := '此段时间未曾领取！';
end;

procedure TFrm_yprkhz_bq.Date1Change(Sender: TObject);
begin
  sp_hz.close;
  sp_mx.close;
end;

procedure TFrm_yprkhz_bq.DBGrid1DblClick(Sender: TObject);
var
  da1, da2: string;
begin
  if not sp_hz.Active then exit;
  sp_mx.close;
  da1 := formatdatetime('yyyymmdd', date1.datetime);
  da2 := formatdatetime('yyyymmdd', date2.datetime);
  if sp_hz.RecordCount <> 0 then
  begin
    sp_mx.Parameters.ParamByName('@ksdm').value := pub_ksdm;
    sp_mx.Parameters.ParamByName('@ksrq').value := da1;
    sp_mx.Parameters.ParamByName('@jsrq').value := da2;
    sp_mx.Parameters.ParamByName('@ypdm').value := sp_hz['ypdm'];
    sp_mx.open;
  end;
end;

procedure TFrm_yprkhz_bq.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    dbgrid1.OnDblClick(dbgrid1);
end;

procedure TFrm_yprkhz_bq.DBGrid2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if sp_mx['bz'] = 1 then
  begin
    dbgrid2.Canvas.Brush.Color := cllime;
    dbgrid2.Canvas.Font.Color := clblue;
  end;
  dbgrid2.DefaultDrawColumnCell(rect, datacol, column, state);
end;

procedure TFrm_yprkhz_bq.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    b_ok.Click;
end;

procedure TFrm_yprkhz_bq.SP_hzAfterScroll(DataSet: TDataSet);
begin
  sp_mx.close;
end;

end.

