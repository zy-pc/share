unit p_bydryz;

interface

uses
    Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
    Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
    cxEdit, DB, cxDBData, cxCalendar, cxGridLevel, cxGridCustomTableView,
    cxGridTableView, cxGridDBTableView, cxClasses, cxControls, cxGridCustomView,
    cxGrid, ADODB;

type
    Tfrm_bydryz = class(TForm)
        sp_cx_yzxm: TADOStoredProc;
        ds_cx_yzxm: TDataSource;
        cxGrid3: TcxGrid;
        cxGridDBTableView3: TcxGridDBTableView;
        cxGridDBColumn24: TcxGridDBColumn;
        cxGridDBColumn25: TcxGridDBColumn;
        cxGridDBColumn26: TcxGridDBColumn;
        cxGridDBColumn27: TcxGridDBColumn;
        cxGridDBColumn31: TcxGridDBColumn;
        cxGridDBColumn32: TcxGridDBColumn;
        cxGridDBColumn28: TcxGridDBColumn;
        cxGridDBColumn29: TcxGridDBColumn;
        cxGridDBColumn30: TcxGridDBColumn;
        cxGridDBColumn33: TcxGridDBColumn;
        cxGridDBColumn34: TcxGridDBColumn;
        cxGridDBColumn35: TcxGridDBColumn;
        cxGridDBTableView3DBColumn1: TcxGridDBColumn;
        cxGridDBTableView3DBColumn2: TcxGridDBColumn;
        cxGridDBTableView3DBColumn3: TcxGridDBColumn;
        cxGridLevel3: TcxGridLevel;
        cxGridDBTableView3DBColumn4: TcxGridDBColumn;
        procedure cxGridDBTableView3DblClick(Sender: TObject);
        procedure FormKeyPress(Sender: TObject; var Key: Char);
        procedure FormShow(Sender: TObject);
    private
    { Private declarations }
    public
    { Public declarations }
    end;

var
    frm_bydryz: Tfrm_bydryz;

implementation
uses p_func, p_dm;
{$R *.dfm}

procedure Tfrm_bydryz.FormShow(Sender: TObject);
begin
    cxGridDBTableView3.DataController.Groups.FullExpand;
end;

procedure Tfrm_bydryz.FormKeyPress(Sender: TObject; var Key: Char);
begin
    if key = #13 then
        frm_bydryz.Close;
end;

procedure Tfrm_bydryz.cxGridDBTableView3DblClick(Sender: TObject);
begin
    frm_bydryz.Close;
end;

end.
