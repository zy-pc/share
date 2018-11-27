unit p_hint;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ADODB, cxStyles, cxGridTableView, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridDBTableView, cxGrid,
  StdCtrls, ExtCtrls, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, cxDBData;

type
  Tfrm_hint = class(TForm)
    cxStyleRepository1: TcxStyleRepository;
    GridTableViewStyleSheetUserFormat1: TcxGridTableViewStyleSheet;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxStyle5: TcxStyle;
    cxStyle6: TcxStyle;
    cxStyle7: TcxStyle;
    cxStyle8: TcxStyle;
    cxStyle9: TcxStyle;
    cxStyle10: TcxStyle;
    cxStyle11: TcxStyle;
    ds_yppg: TDataSource;
    cxStyle12: TcxStyle;
    Panel1: TPanel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1pgbs: TcxGridDBColumn;
    cxGrid1DBTableView1yppg: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    sp_cx_yppg: TADOStoredProc;
    sp_yz_yppg: TADOStoredProc;
    sp_cx_pgbs: TADOStoredProc;
    ds_cx_pgbs: TDataSource;
    procedure FormDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_hint: Tfrm_hint;

implementation

uses p_dm;

{$R *.DFM}

procedure Tfrm_hint.FormDblClick(Sender: TObject);
begin
  Hide;
end;

end.
