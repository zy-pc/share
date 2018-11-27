unit p_cxyp_yk;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Grids, DBGrids, StdCtrls, Buttons, Mask, DBCtrls, ExtCtrls,
  ComCtrls, ADODB;

type
  TFrm_cxyp_yk = class(TForm)
    DBGrid1: TDBGrid;
    Bevel1: TBevel;
    Panel1: TPanel;
    b_close: TBitBtn;
    Edit1: TEdit;
    Label1: TLabel;
    b_cx: TBitBtn;
    DS_yp: TDataSource;
    b_ok: TBitBtn;
    SP_yp: TADOStoredProc;
    procedure b_closeClick(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure b_cxClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure b_okClick(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure Edit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit1Enter(Sender: TObject);
    procedure Edit2Enter(Sender: TObject);
    procedure SP_ypAfterClose(DataSet: TDataSet);
  private
    { Private declarations }
    cxlb: integer;
  public
    { Public declarations }
  end;

var
  Frm_cxyp_yk: TFrm_cxyp_yk;

implementation

uses p_login, p_dm, p_xz_htmx;

{$R *.DFM}

procedure TFrm_cxyp_yk.b_closeClick(Sender: TObject);
begin
  close;
end;

procedure TFrm_cxyp_yk.Edit1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = 13 then
    b_cx.Click;
end;

procedure TFrm_cxyp_yk.DBGrid1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = 13 then DBGrid1DblClick(dbgrid1);
  if key = 27 then edit1.SetFocus;

end;

procedure TFrm_cxyp_yk.DBGrid1DblClick(Sender: TObject);
begin
  b_ok.Click;
end;

procedure TFrm_cxyp_yk.DBGrid1DrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if (sp_yp.Active) and (sp_yp.RecordCount <> 0) then
  begin
    if sp_yp['sybz'] = '0' then
    begin
      dbgrid1.Canvas.brush.Color := cllime;
      dbgrid1.Canvas.Font.Color := clblue;
    end;
    dbgrid1.DefaultDrawColumnCell(rect, datacol, column, state);
  end;

end;

procedure TFrm_cxyp_yk.b_cxClick(Sender: TObject);
begin
  sp_yp.close;
  sp_yp.Parameters.ParamByName('@pym').value := trim(edit1.text) + '%';
  sp_yp.Parameters.ParamByName('@ksdm').value := pub_ksdm;
  edit1.TEXT := '';
  sp_yp.open;
  if sp_yp.RecordCount <> 0 then
  begin
    dbgrid1.Enabled := true;
    b_ok.Enabled := true;
    dbgrid1.SetFocus;
  end
  else
  begin
    sp_yp.close;
    application.MessageBox('没有满足条件的药品/物品！', '提示', 16);
    dbgrid1.Enabled := false;
    edit1.SetFocus;
  end;
end;

procedure TFrm_cxyp_yk.FormShow(Sender: TObject);
begin
  pub_cxypdm:='';
  edit1.SetFocus;
end;

procedure TFrm_cxyp_yk.b_okClick(Sender: TObject);
begin
  pub_cxypdm := sp_yp['ypdm'];
  close;
end;

procedure TFrm_cxyp_yk.Edit1Change(Sender: TObject);
begin
  sp_yp.close;
end;

procedure TFrm_cxyp_yk.Edit2Change(Sender: TObject);
begin
  sp_yp.close;
end;

procedure TFrm_cxyp_yk.Edit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 13 then
    b_cx.Click;
end;

procedure TFrm_cxyp_yk.Edit1Enter(Sender: TObject);
begin
  cxlb := 1;
end;

procedure TFrm_cxyp_yk.Edit2Enter(Sender: TObject);
begin
  cxlb := 2;
end;

procedure TFrm_cxyp_yk.SP_ypAfterClose(DataSet: TDataSet);
begin
  b_ok.Enabled := false;
end;
initialization
  RegisterClass(TFrm_cxyp_yk);
end.
