unit p_yszx_yzinput;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  Tfrm_yszx_yzinput = class(TForm)
    Label1: TLabel;
    edt_zysx: TEdit;
    Label3: TLabel;
    edt_sfjj: TComboBox;
    Label4: TLabel;
    edt_xmmc: TEdit;
    Label5: TLabel;
    Button1: TButton;
    Button2: TButton;
    edt_jcyq: TComboBox;
    edt_ysfs: TComboBox;
    Label2: TLabel;
    Button3: TButton;
    Edit1: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_yszx_yzinput: Tfrm_yszx_yzinput;

implementation

uses p_dzbl_tjjcsq;

{$R *.dfm}

procedure Tfrm_yszx_yzinput.Button1Click(Sender: TObject);
begin
  self.ModalResult := mrOk;
end;

procedure Tfrm_yszx_yzinput.Button2Click(Sender: TObject);
begin
  Self.ModalResult := mrCancel;
end;

procedure Tfrm_yszx_yzinput.Button3Click(Sender: TObject);
begin
  try
    application.createform(Tfrm_dzbl_tjjcsq, frm_dzbl_tjjcsq);
    frm_dzbl_tjjcsq.showmodal;
  finally
    Edit1.Text:=frm_dzbl_tjjcsq.ysblid;
    if trim(Edit1.Text)='' then
    begin
      Button1.Enabled:=true;
    end
    else
    begin
      Button1.Enabled:=true;
    end;
    frm_dzbl_tjjcsq.free;
  end;
end;

end.
