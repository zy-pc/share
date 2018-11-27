unit p_micro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Grids, DBGrids;

type
  Tfrm_micro = class(TForm)
    DBGrid1: TDBGrid;
    qry_mircro: TADOQuery;
    ds_micro: TDataSource;
    procedure FormShow(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_micro: Tfrm_micro;

implementation
uses p_dm, p_mbbj;
{$R *.dfm}

procedure Tfrm_micro.DBGrid1DblClick(Sender: TObject);
var
  COLUMN_NAME_text: string;
begin
  COLUMN_NAME_text := trim(qry_mircro.FieldByName('COLUMN_NAME').AsString);
  frm_mbbj.EMRPad301.InsertField(COLUMN_NAME_text, COLUMN_NAME_text, 1, 0, 1);
  frm_mbbj.EMRPad301.InsertField(COLUMN_NAME_text, COLUMN_NAME_text, 1, 1, 1);
  close;
end;

procedure Tfrm_micro.FormShow(Sender: TObject);
begin
  qry_mircro.Open;
end;

end.
