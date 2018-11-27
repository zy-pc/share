unit p_zybrhkcx;

interface                                                

uses
    Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
    Grids, DBGrids, ExtCtrls, StdCtrls, Buttons, DBCtrls, DBTables, Db, ADODB,
    DBGridEh, GridsEh;

type
    Tfrm_zybrhkcx = class(TForm)
        Bevel1: TBevel;
        b_close: TBitBtn;
        B_cx: TBitBtn;
        dbbox: TDBLookupComboBox;
        Label1: TLabel;
        ds_ksdm: TDataSource;
        ds_ksbr: TDataSource;
        sp_ksbr: TADOStoredProc;
        qry_ksdm: TADOQuery;
        DBGridEh1: TDBGridEh;
        procedure FormShow(Sender: TObject);
        procedure B_cxClick(Sender: TObject);
        procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
            DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    private
    { Private declarations }
    public
    { Public declarations }
    end;

var
    frm_zybrhkcx: Tfrm_zybrhkcx;

implementation
uses p_dm;
{$R *.DFM}

procedure Tfrm_zybrhkcx.FormShow(Sender: TObject);
begin
    with qry_ksdm do
    begin
        close;
        sql.Clear;
        sql.add(' select dm ,mc from sys_ksdm ');
        sql.add(' where sybz=1 and kssx=' + '''' + '09' + '''');
        open;
    end;
    dbbox.keyvalue := '';
end;

procedure Tfrm_zybrhkcx.B_cxClick(Sender: TObject);
begin
    try
        sp_ksbr.Active := false;
        sp_ksbr.parameters.ParamByName('@ksdm').value := dbbox.keyvalue;
        sp_ksbr.open;
    except
    end;
    dbbox.keyvalue := '';
end;

procedure Tfrm_zybrhkcx.DBGridEh1DrawColumnCell(Sender: TObject;
    const Rect: TRect; DataCol: Integer; Column: TColumnEh;
    State: TGridDrawState);
begin
    if sp_ksbr.Active then
        if not sp_ksbr.IsEmpty then
        begin
            if sp_ksbr['syyj'] < 0 then
            begin
                DBGridEh1.Canvas.Brush.Color := cllime;
                DBGridEh1.Canvas.Font.color := clblue;
            end;
            DBGridEh1.DefaultDrawColumnCell(rect, datacol, column, state);
        end;
end;

end.
