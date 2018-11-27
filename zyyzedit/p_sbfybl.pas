unit p_sbfybl;

interface

uses
    Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
    StdCtrls, Db, ADODB, Grids, DBGrids;

type
    Tfrm_sbfybl = class(TForm)
        Edit1: TEdit;
        Label1: TLabel;
        DBGrid1: TDBGrid;
        ds_sbfybl: TDataSource;
        qry_sb: TADOQuery;
        procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    private
    { Private declarations }
    public
    { Public declarations }
    end;

var
    frm_sbfybl: Tfrm_sbfybl;

implementation
uses p_dm;
{$R *.DFM}

procedure Tfrm_sbfybl.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
    if key = #13 then
    begin
        qry_sb.Close;
        qry_sb.Parameters.ParamByName('temp').value := '%' + trim(edit1.Text) + '%';
        qry_sb.Open;
    end;
end;

end.
