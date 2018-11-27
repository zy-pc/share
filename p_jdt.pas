unit p_jdt;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, cxControls, cxContainer, cxEdit, cxProgressBar, CommCtrl;

type
  Tfrm_jdt = class(TForm)
    Panel1: TPanel;
    pb2: TProgressBar;
    procedure FormShow(Sender: TObject);
  private
    v_max: Integer;
    { Private declarations }
    procedure prv_create;
  public
    { Public declarations }
  end;

var
  frm_jdt: Tfrm_jdt;
const

{$EXTERNALSYM PBS_MARQUEE}

  PBS_MARQUEE = 08;
procedure proc_show_jdt_add;
procedure proc_show_jdt(const v_max: Integer);

implementation

{$R *.dfm}

procedure proc_show_jdt(const v_max: Integer);
begin
  if not Assigned(frm_jdt) then
    Application.CreateForm(Tfrm_jdt, frm_jdt);
  frm_jdt.prv_create;
  frm_jdt.v_max := v_max;
  frm_jdt.Show;
end;

procedure Tfrm_jdt.FormShow(Sender: TObject);
begin
  pb2.Max := v_max;
end;

procedure proc_show_jdt_add;
var
  v_jd: string;
begin
  if Assigned(frm_jdt) then
  begin
    frm_jdt.pb2.Position := frm_jdt.pb2.Position + 1;
    v_jd := FormatFloat('00', frm_jdt.pb2.Position / frm_jdt.v_max * 100);
    frm_jdt.Caption := '�Ĵ�˼Ѷ�Ƽ����޹�˾-�������ڼ�����' + v_jd + '%';
    if frm_jdt.pb2.Position >= frm_jdt.v_max then
      frm_jdt.Free;
  end;
end;

procedure Tfrm_jdt.prv_create;
begin
  Application.ProcessMessages;
  //WinXP��������
  SetWindowLong(pb2.Handle, GWL_STYLE, GetWindowLong(pb2.Handle, GWL_STYLE) or PBS_MARQUEE);
//  SetWindowLong(pb2.Handle, GWL_EXSTYLE, GetWindowLong(pb2.Handle, GWL_EXSTYLE) and (not WS_EX_STATICEDGE));
  // ����progressbar�ı�����ɫ
//  pb2.Brush.Color := clHighlight;
  // ����progressbar�Ľ�������ɫ // uses CommCtrl;
//  SendMessage(pb2.Handle, PBM_SETBARCOLOR, 0, clHighlight);
  pb2.Position := 0;
end;

end.
