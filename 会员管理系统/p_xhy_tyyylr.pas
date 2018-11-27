unit p_xhy_tyyylr;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Menus, cxLookAndFeelPainters, cxButtons, DB,
  ADODB;

type
  Tfrm_xhy_tyyylr = class( TForm )
    pnl1: TPanel;
    pnl2: TPanel;
    lb_tmh: TLabel;
    lb_sm: TLabel;
    lb_brxm: TLabel;
    Label1: TLabel;
    e_tyyy: TEdit;
    cxButton1: TcxButton;
    sp_in_tykyh: TADOStoredProc;
    procedure FormShow( Sender: TObject );
    procedure cxButton1Click( Sender: TObject );
  private
    { Private declarations }
  public
    tyyylr_tmh, tyyylr_brxm: string;
    { Public declarations }
  end;

var
  frm_xhy_tyyylr: Tfrm_xhy_tyyylr;

implementation
uses
  p_dm;
{$R *.dfm}

procedure Tfrm_xhy_tyyylr.cxButton1Click( Sender: TObject );
var
  zt : string;
begin
  sp_in_tykyh.Close;
  sp_in_tykyh.Parameters.ParamByName( '@tmh' ).Value := tyyylr_tmh;
  sp_in_tykyh.Parameters.ParamByName( '@czydm' ).Value := pub_czydm;
  sp_in_tykyh.Parameters.ParamByName( '@czlb' ).Value := 1;
  sp_in_tykyh.Parameters.ParamByName( '@tyyy' ).Value := Trim(e_tyyy.Text);
  sp_in_tykyh.Parameters.ParamByName( '@zt' ).Value := '';
  try
    sp_in_tykyh.ExecProc;
    zt := sp_in_tykyh.Parameters.ParamByName('@zt').Value;
    if zt='�ɹ�' then
    begin
      Application.MessageBox('��ʾ:ͣ���û��ɹ���','��ʾ',MB_OK);
      Close;
    end
    else
    begin
      Application.MessageBox(Pchar('��ʾ:'+zt),'��ʾ',MB_ICONHAND);
    end;
  except on e: Exception do
    begin
      Application.MessageBox(PChar('��ʾ:ͣ�û�Աʧ�ܣ�ʧ��ԭ��:'+e.Message),'��ʾ',MB_ICONHAND);
    end;
  end;
end;

procedure Tfrm_xhy_tyyylr.FormShow( Sender: TObject );
begin
  lb_tmh.Caption := '��Ա����:' + tyyylr_tmh;
  lb_brxm.Caption := '��Ա����:' + tyyylr_brxm;
  e_tyyy.SetFocus;
end;

end.

