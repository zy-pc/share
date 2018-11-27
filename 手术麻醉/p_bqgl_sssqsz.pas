{*******************************************************}
{                                                       }
{       医通-住院收费系统                               }
{                                                       }
{       版权所有 (C) 2015 四川欣阳科技有限公司          }
{                                                       }
{*******************************************************}

{-------------------------------------------------------------------------------
  病区管理_手术申请设置
-------------------------------------------------------------------------------}


unit p_bqgl_sssqsz;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, RzPanel, RzBckgnd, StdCtrls, Mask, RzEdit, RzBtnEdt,
  RzLabel, Buttons, RzButton, ComCtrls, RzDTP, RzRadChk, cxControls,
  cxContainer, cxEdit, cxCheckBox;

type
  TFrm_bqgl_sssqsz = class(TForm)
    pnlMain: TRzPanel;
    grpDays: TGroupBox;
    btnRM: TBitBtn;
    btnRP: TBitBtn;
    edtDays: TRzEdit;
    btnLM: TBitBtn;
    btnLP: TBitBtn;
    grpTimes: TGroupBox;
    dtp1: TRzDateTimePicker;
    btnOK: TRzButton;
    chkBAllowToday: TCheckBox;
    procedure FormShow(Sender: TObject);
    procedure btnRPClick(Sender: TObject);
    procedure btnRMClick(Sender: TObject);
    procedure dtp1Change(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure chkBAllowTodayMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
    procedure ChangeDays(lday: Integer=0; rday: Integer=1);
    procedure SaveDays(lday: Integer=0; rday: Integer=1);
  public
    { Public declarations }
  end;

var
  Frm_bqgl_sssqsz: TFrm_bqgl_sssqsz;

implementation
 uses p_Makvar_tyjf, p_dm;
{$R *.dfm}

procedure TFrm_bqgl_sssqsz.btnOKClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TFrm_bqgl_sssqsz.btnRMClick(Sender: TObject);
begin
  if ss_ZeQiTianShu > 2 then
  begin
    dec(ss_ZeQiTianShu);
    ChangeDays(0, ss_ZeQiTianShu);
  end;
end;

procedure TFrm_bqgl_sssqsz.btnRPClick(Sender: TObject);
begin
  inc(ss_ZeQiTianShu);
  ChangeDays(0, ss_ZeQiTianShu);
end;

procedure TFrm_bqgl_sssqsz.FormShow(Sender: TObject);
begin
  ChangeDays(0, ss_ZeQiTianShu);
  dtp1.DateTime := ss_TimePointToNextDay;
  chkBAllowToday.Checked := ss_BByTime;
  if ss_BByTime then  grpTimes.Visible := True else grpTimes.Visible := False;
  btnOK.SetFocus;
end;

procedure TFrm_bqgl_sssqsz.ChangeDays(lday: Integer=0; rday: Integer=1);
begin
  edtDays.Text := '[' + IntToStr(lday) + '  ,  ' + IntToStr(rday) + ']';
  grpDays.Caption := '申请日期限制:未来' +IntToStr(lday) + '(当前日期为计数0)到' +
                      IntToStr(rday) + '(包括第' + IntToStr(rday) + '天)天';
  SaveDays(lday,rday);
end;

procedure TFrm_bqgl_sssqsz.chkBAllowTodayMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ss_BByTime := not ss_BByTime;
  chkBAllowToday.Checked := ss_BByTime;
  if ss_BByTime then grpTimes.Visible := True else grpTimes.Visible := False;
  DM_data.qry_pub.Close;
  DM_data.qry_pub.SQL.Clear;
  DM_data.qry_pub.SQL.Text := 'UPDATE sys_xt_kg_tyjf SET BByTime =' + BoolToStr(ss_BByTime);
  try
    DM_data.qry_pub.ExecSQL;
  except
    raise Exception.Create(DM_data.qry_pub.SQL.Text +'不成功');
  end;
  DM_data.qry_pub.Close;
end;

procedure TFrm_bqgl_sssqsz.dtp1Change(Sender: TObject);
begin
  DM_data.qry_pub.Close;
  DM_data.qry_pub.SQL.Clear;
  DM_data.qry_pub.SQL.Text := 'UPDATE sys_xt_kg_tyjf SET TimePointToNextDay =' +
   QuotedStr(TimeToStr(dtp1.Time));
  try
    DM_data.qry_pub.ExecSQL;
  except
    raise Exception.Create(DM_data.qry_pub.SQL.Text +'不成功');
  end;
  DM_data.qry_pub.Close;
end;

procedure TFrm_bqgl_sssqsz.SaveDays(lday: Integer=0; rday: Integer=1);
begin
  DM_data.qry_pub.Close;
  DM_data.qry_pub.SQL.Clear;
  DM_data.qry_pub.SQL.Text := 'UPDATE sys_xt_kg_tyjf SET ss_ZeQiTianShu = ' + IntToStr(rday);
  try
    DM_data.qry_pub.ExecSQL;
  except
    raise Exception.Create(DM_data.qry_pub.SQL.Text+'不成功');
  end;
  DM_data.qry_pub.Close;
end;

end.
