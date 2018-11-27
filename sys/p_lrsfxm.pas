unit p_lrsfxm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls;

type
  Tfrm_lrsfxm = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Button1: TButton;
    Button2: TButton;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_lrsfxm: Tfrm_lrsfxm;

implementation

{$R *.DFM}
uses
p_sfxm; 
procedure Tfrm_lrsfxm.Button2Click(Sender: TObject);
begin
frm_sfxm.qry_sfxm.CancelUpdates;
close;
end;

procedure Tfrm_lrsfxm.Button1Click(Sender: TObject);
begin
frm_sfxm.qry_sfxm.FieldValues['dldm']:='51';
frm_sfxm.qry_sfxm.FieldValues['typym']:=trim(dbedit1.Text);
frm_sfxm.qry_sfxm.FieldValues['dymc']:=trim(dbedit2.Text);
frm_sfxm.qry_sfxm.UpdateBatch;
close;
end;

procedure Tfrm_lrsfxm.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
   selectnext(activecontrol as Twincontrol,true,true);
end;

end.
