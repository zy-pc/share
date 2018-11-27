unit p_cx_brztbj;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxClasses,
  cxControls, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, ADODB;

type
  Tfrm_cx_brztbj = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Button2: TButton;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    ADOQuery1: TADOQuery;
    sp_cx_hz: TADOStoredProc;
    ds_cx_hz: TDataSource;
    sp_cx_mx: TADOStoredProc;
    ds_cx_mx: TDataSource;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    cxGridDBTableView1Column2: TcxGridDBColumn;
    cxGridDBTableView1Column3: TcxGridDBColumn;
    cxGridDBTableView1Column4: TcxGridDBColumn;
    cxGridDBTableView1Column5: TcxGridDBColumn;
    cxGridDBTableView1Column6: TcxGridDBColumn;
    cxGridDBTableView1Column7: TcxGridDBColumn;
    cxGridDBTableView1Column8: TcxGridDBColumn;
    cxGridDBTableView1Column9: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure cxGrid1DBTableView1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_cx_brztbj: Tfrm_cx_brztbj;

implementation

uses p_dm,p_func;

{$R *.dfm}

procedure Tfrm_cx_brztbj.Button1Click(Sender: TObject);
var 
  i:Integer;
  FieldName,DisplayName:string;
  FColumn: TcxGridDBColumn;
begin
  if cxGrid1DBTableView1.ColumnCount<>0 then
  begin
    cxGrid1DBTableView1.BeginUpdate;
    try
      for I := cxGrid1DBTableView1.ColumnCount - 1 downto 0 do
      cxGrid1DBTableView1.Columns[I].Free;
    finally
      cxGrid1DBTableView1.EndUpdate;
    end;
  end;
  DM_data.qry_pub.close;
  DM_data.qry_pub.SQL.text:='select * from sys_brzt order by dm';
  DM_data.qry_pub.Open;
  FColumn:=cxGrid1DBTableView1.CreateColumn;
  FColumn.DataBinding.FieldName:= '科室名称';
  FColumn.Width:=80;
  FColumn:=cxGrid1DBTableView1.CreateColumn;
  FColumn.DataBinding.FieldName:= '记录时间';
  FColumn.Width:=80;
  DM_data.qry_pub.First;
  while not DM_data.qry_pub.eof do
  begin
    FColumn:=cxGrid1DBTableView1.CreateColumn;
    FColumn.DataBinding.FieldName:= DM_data.qry_pub.FieldByName('mc').AsString;
    FColumn.Width:=75;
    DM_data.qry_pub.Next;
  end;
  sp_cx_hz.Close;
  sp_cx_hz.Parameters.Refresh;
  sp_cx_hz.Parameters.ParamByName('@ksrq').Value:=FormatDateTime('yyyyMMdd',DateTimePicker1.DateTime);
  sp_cx_hz.Parameters.ParamByName('@jsrq').Value:=FormatDateTime('yyyyMMdd',DateTimePicker2.DateTime);
  sp_cx_hz.Open;

end;

procedure Tfrm_cx_brztbj.Button2Click(Sender: TObject);
begin
  Close;
end;

procedure Tfrm_cx_brztbj.cxGrid1DBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  sp_cx_mx.Close;
  sp_cx_mx.Parameters.Refresh;
  sp_cx_mx.Parameters.ParamByName('@ksdm').Value:=sp_cx_hz.FieldByName('科室代码').asstring;
  sp_cx_mx.Parameters.ParamByName('@ksrq').Value:=FormatDateTime('yyyyMMdd',DateTimePicker1.DateTime);
  sp_cx_mx.Parameters.ParamByName('@jsrq').Value:=FormatDateTime('yyyyMMdd',DateTimePicker2.DateTime);
  sp_cx_mx.Open;
  PageControl1.ActivePageIndex:=1;
end;

procedure Tfrm_cx_brztbj.FormShow(Sender: TObject);
begin
  DateTimePicker1.DateTime:=Frm_func.curr_date;
  DateTimePicker2.DateTime:=Frm_func.curr_date;
end;

end.
