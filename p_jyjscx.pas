unit p_jyjscx;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, StdCtrls,
  ComCtrls, ExtCtrls, ADODB;

type
  Tfrm_jyjscx = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    dtp_zxsj: TDateTimePicker;
    Button1: TButton;
    Panel2: TPanel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    Button2: TButton;
    sp_cx_jsyb: TADOStoredProc;
    ds_cx_jsyb: TDataSource;
    cxgrdbclmnGrid1DBTableView1Column1: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column2: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column3: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column4: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column5: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column6: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column7: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column8: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column9: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column10: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column11: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column12: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure cxGrid1DBTableView1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_jyjscx: Tfrm_jyjscx;

implementation

uses p_dm,p_func;

{$R *.dfm}

procedure Tfrm_jyjscx.Button1Click(Sender: TObject);
begin
  sp_cx_jsyb.close;
  sp_cx_jsyb.Parameters.Refresh;
  sp_cx_jsyb.Parameters.ParamByName('@date').Value:=dtp_zxsj.DateTime;
  sp_cx_jsyb.Parameters.ParamByName('@bqdm').Value:=pub_bqdm;
  sp_cx_jsyb.Open;
end;

procedure Tfrm_jyjscx.Button2Click(Sender: TObject);
begin
  close;
end;

procedure Tfrm_jyjscx.cxGrid1DBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if trim(AViewInfo.RecordViewInfo.GridRecord.Values[5]) = 'พÜสี' then
  begin
    ACanvas.Font.Color := clRed;
  end;
end;

procedure Tfrm_jyjscx.FormShow(Sender: TObject);
begin
  dtp_zxsj.DateTime:=Frm_func.curr_date;
end;

end.
