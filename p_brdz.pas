unit p_brdz;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ADODB, ExtCtrls, Grids, DBGridEh, StdCtrls, GridsEh, DBGridEhGrouping;

type
  Tfrm_brdz = class(TForm)
    DBGridEh1: TDBGridEh;
    Panel1: TPanel;
    qry_brdz: TADOQuery;
    ds_brdz: TDataSource;
    Label1: TLabel;
    brdz: TEdit;
    Button2: TButton;
    procedure FormShow(Sender: TObject);
    procedure brdzKeyPress(Sender: TObject; var Key: Char);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure DBGridEh1KeyPress(Sender: TObject; var Key: Char);
    procedure Button2Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_brdz: Tfrm_brdz;

implementation
uses p_dm,p_zydj;
{$R *.DFM}

procedure Tfrm_brdz.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 27 then
  begin
    close;
  end;
end;

procedure Tfrm_brdz.FormShow(Sender: TObject);
begin
  qry_brdz.Open;
end;

procedure Tfrm_brdz.brdzKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    qry_brdz.Locate('py', brdz.text, []);
    dbgrideh1.SetFocus;
  end;
end;

procedure Tfrm_brdz.Button2Click(Sender: TObject);
begin
  close;
end;

procedure Tfrm_brdz.DBGridEh1DblClick(Sender: TObject);
begin
  frm_zydj.brdwdz.Text := qry_brdz.fieldbyname('mc').asstring;
  close;
end;

procedure Tfrm_brdz.DBGridEh1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    frm_zydj.brdwdz.Text := qry_brdz.fieldbyname('mc').asstring;
  close;
end;
initialization
  RegisterClass(Tfrm_brdz);
end.

