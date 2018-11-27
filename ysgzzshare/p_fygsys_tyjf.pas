unit p_fygsys_tyjf;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, DB, ADODB, DBCtrls;

type
  Tfrm_fygsys_tyjf = class(TForm)
    labe1: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    ad_ysdm: TADODataSet;
    ds_ysdm: TDataSource;
    dbComboBox1: TComboBox;
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  frm_fygsys_tyjf: Tfrm_fygsys_tyjf;

  implementation
uses p_dm,p_func,p_yzfyqd_tyjf;
{$R *.dfm}

procedure Tfrm_fygsys_tyjf.BitBtn1Click(Sender: TObject);
begin
frm_yzfyqd_tyjf.ysdm:=copy(dbcombobox1.text,1,4);
self.Close;
end;

procedure Tfrm_fygsys_tyjf.BitBtn2Click(Sender: TObject);
begin
frm_yzfyqd_tyjf.ysdm:='';
self.Close;
end;

procedure Tfrm_fygsys_tyjf.FormShow(Sender: TObject);
begin
//dbcombobox1.text:=ad_ysdm.fieldbyname('mc').asstring;
end;

end.
