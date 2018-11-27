unit p_xhy_hymm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, StdCtrls, cxButtons, ExtCtrls;

type
  Tfrm_xhy_hymm = class(TForm)
    pnl1: TPanel;
    Label1: TLabel;
    pnl2: TPanel;
    Lb_tmh: TLabel;
    Lb_brxm: TLabel;
    Label4: TLabel;
    e_hycsmm: TEdit;
    Label5: TLabel;
    e_hycsmmqr: TEdit;
    cxbut_OK: TcxButton;
    procedure FormShow(Sender: TObject);
    procedure e_hycsmmKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure e_hycsmmqrKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxbut_OKClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_xhy_hymm: Tfrm_xhy_hymm;

implementation
uses
  p_xhy_hydj;
{$R *.dfm}

procedure Tfrm_xhy_hymm.cxbut_OKClick(Sender: TObject);
begin
  if Length(Trim(e_hycsmm.Text))>0 then
  begin
    if (Trim(e_hycsmm.Text)=Trim(e_hycsmmqr.Text)) and
       (Length(Trim(e_hycsmm.Text))>5) then
    begin
      frm_xhy_hydj.pub_hymm:= Trim(e_hycsmm.Text);
      Close;
    end
    else
    begin
      Application.MessageBox('提示:两次密码输入不正确或密码不能少于6位！','提示',MB_ICONHAND);
      e_hycsmm.Text:='';
      e_hycsmmqr.Text := '';
      e_hycsmm.SetFocus;
    end;
  end
  else
  begin
    frm_xhy_hydj.pub_hymm:='';
  end;
end;

procedure Tfrm_xhy_hymm.e_hycsmmKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 13 then
  begin
    e_hycsmmqr.SetFocus;
  end;
end;

procedure Tfrm_xhy_hymm.e_hycsmmqrKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 13 then
  begin
    cxbut_OK.SetFocus;
  end;
end;

procedure Tfrm_xhy_hymm.FormShow(Sender: TObject);
begin
  Lb_tmh.Caption := '会员卡号:'+frm_xhy_hydj.pub_tmh;
  Lb_brxm.Caption := '会员姓名:'+frm_xhy_hydj.pub_hyxm;
end;

end.
