unit p_xzhs;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, ADODB;

type
  Tfrm_xzhs = class(TForm)
    labe1: TLabel;
    dbComboBox1: TComboBox;
    ad_ysdm: TADODataSet;
    ds_ysdm: TDataSource;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_xzhs: Tfrm_xzhs;

implementation

{$R *.dfm}
uses p_dm,p_yzzx,p_func;
procedure Tfrm_xzhs.BitBtn1Click(Sender: TObject);
begin
frm_yzzx.zxczy:=copy(dbcombobox1.text,1,4);
self.Close;
end;

procedure Tfrm_xzhs.BitBtn2Click(Sender: TObject);
begin
frm_yzzx.zxczy:=pub_czydm;
fqyz:=true;
self.Close;
end;

end.
