unit p_hspbb_tjbb;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles,  cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxTextEdit, ADODB,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxClasses, cxGridCustomView, cxGridDBTableView,
  cxGrid, StdCtrls, ComCtrls, TeEngine, Series, TeeProcs, Chart, DBChart;

type
  Tfrm_hspbb_tjbb = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel1: TPanel;
    Label1: TLabel;
    DateTimePicker1: TDateTimePicker;
    Button1: TButton;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1DBBandedTableView1Column16: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Column1: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Column2: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Column3: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Column4: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Column5: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Column6: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Column7: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Column8: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Column9: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Column10: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Column11: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Column12: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Column13: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Column14: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Column15: TcxGridDBBandedColumn;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1DBBandedTableView1Column17: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Column18: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Column19: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Column20: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Column21: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Column22: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Column23: TcxGridDBBandedColumn;
    sp_chb: TADOStoredProc;
    ds_chb: TDataSource;
    adoquery1: TADOQuery;
    TabSheet2: TTabSheet;
    Panel2: TPanel;
    Label2: TLabel;
    DateTimePicker2: TDateTimePicker;
    Button2: TButton;
    DateTimePicker3: TDateTimePicker;
    Label3: TLabel;
    Panel3: TPanel;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    cxGrid2DBTableView1Column1: TcxGridDBColumn;
    cxGrid2DBTableView1Column2: TcxGridDBColumn;
    cxGrid2DBTableView1Column3: TcxGridDBColumn;
    cxGrid2DBTableView1Column4: TcxGridDBColumn;
    sp_bctj: TADOStoredProc;
    ds_bctj: TDataSource;
    DBChart1: TDBChart;
    Series1: TBarSeries;
    sp_bctj2: TADOStoredProc;
    TabSheet3: TTabSheet;
    cxGrid3DBTableView1: TcxGridDBTableView;
    cxGrid3Level1: TcxGridLevel;
    cxGrid3: TcxGrid;
    DBChart2: TDBChart;
    DBChart3: TDBChart;
    Series2: TPieSeries;
    Series3: TPieSeries;
    qry_ksry: TADOQuery;
    qry_qyhs: TADOQuery;
    Panel5: TPanel;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure TabSheet3Show(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_hspbb_tjbb: Tfrm_hspbb_tjbb;

implementation
uses
p_dm,p_func;

{$R *.dfm}

procedure Tfrm_hspbb_tjbb.Button1Click(Sender: TObject);
var
xzrq:string;
begin
adoquery1.Close;
adoquery1.SQL.Add('SELECT top 1 * FROM dbo.zybl_hspbb_rq WHERE ksrq<:rq1 AND jsrq>:rq2');
adoquery1.Parameters.ParamByName('rq1').Value:=StrToDate(FormatDateTime('yyyy-mm-dd',DateTimePicker1.datetime));
adoquery1.Parameters.ParamByName('rq2').Value:=StrToDate(FormatDateTime('yyyy-mm-dd',DateTimePicker1.datetime));
adoquery1.Open;
xzrq:=adoquery1.FieldByName('ksrq').AsString;

cxGrid1DBBandedTableView1.Bands[1].Caption:=xzrq+'(星期一)';
cxGrid1DBBandedTableView1.Bands[2].Caption:=DateToStr(strtodatetime(xzrq)+1)+'(星期二)';
cxGrid1DBBandedTableView1.Bands[3].Caption:=DateToStr(strtodatetime(xzrq)+2)+'(星期三)';
cxGrid1DBBandedTableView1.Bands[4].Caption:=DateToStr(strtodatetime(xzrq)+3)+'(星期四)';
cxGrid1DBBandedTableView1.Bands[5].Caption:=DateToStr(strtodatetime(xzrq)+4)+'(星期五)';
cxGrid1DBBandedTableView1.Bands[6].Caption:=DateToStr(strtodatetime(xzrq)+5)+'(星期六)';
cxGrid1DBBandedTableView1.Bands[7].Caption:=DateToStr(strtodatetime(xzrq)+6)+'(星期天)';

sp_chb.Close;
sp_chb.Parameters.ParamByName('@rq').Value:=DateTimePicker1.DateTime;
sp_chb.Open;

end;

procedure Tfrm_hspbb_tjbb.Button2Click(Sender: TObject);
begin
sp_bctj.close;
sp_bctj.Parameters.ParamByName('@ksdm').Value:=pub_ksdm;
sp_bctj.Parameters.ParamByName('@ksrq').Value:=StrToDate(FormatDateTime('yyyy-mm-dd',DateTimePicker2.datetime));
sp_bctj.Parameters.ParamByName('@jsrq').Value:=StrToDate(FormatDateTime('yyyy-mm-dd',DateTimePicker3.datetime));
sp_bctj.Open;

sp_bctj2.close;
sp_bctj2.Parameters.ParamByName('@ksdm').Value:=pub_ksdm;
sp_bctj2.Parameters.ParamByName('@ksrq').Value:=StrToDate(FormatDateTime('yyyy-mm-dd',DateTimePicker2.datetime));
sp_bctj2.Parameters.ParamByName('@jsrq').Value:=StrToDate(FormatDateTime('yyyy-mm-dd',DateTimePicker3.datetime));
sp_bctj2.Open;
end;

procedure Tfrm_hspbb_tjbb.FormShow(Sender: TObject);
var
xzrq:string;
begin
DateTimePicker1.DateTime:=Now;
adoquery1.Close;
adoquery1.SQL.Add('SELECT top 1 * FROM dbo.zybl_hspbb_rq WHERE ksrq<:rq1 AND jsrq>:rq2');
adoquery1.Parameters.ParamByName('rq1').Value:=StrToDate(FormatDateTime('yyyy-mm-dd',DateTimePicker1.datetime));
adoquery1.Parameters.ParamByName('rq2').Value:=StrToDate(FormatDateTime('yyyy-mm-dd',DateTimePicker1.datetime));
adoquery1.Open;
xzrq:=adoquery1.FieldByName('ksrq').AsString;

cxGrid1DBBandedTableView1.Bands[1].Caption:=xzrq+'(星期一)';
cxGrid1DBBandedTableView1.Bands[2].Caption:=DateToStr(strtodatetime(xzrq)+1)+'(星期二)';
cxGrid1DBBandedTableView1.Bands[3].Caption:=DateToStr(strtodatetime(xzrq)+2)+'(星期三)';
cxGrid1DBBandedTableView1.Bands[4].Caption:=DateToStr(strtodatetime(xzrq)+3)+'(星期四)';
cxGrid1DBBandedTableView1.Bands[5].Caption:=DateToStr(strtodatetime(xzrq)+4)+'(星期五)';
cxGrid1DBBandedTableView1.Bands[6].Caption:=DateToStr(strtodatetime(xzrq)+5)+'(星期六)';
cxGrid1DBBandedTableView1.Bands[7].Caption:=DateToStr(strtodatetime(xzrq)+6)+'(星期天)';




end;

procedure Tfrm_hspbb_tjbb.TabSheet3Show(Sender: TObject);
begin
qry_ksry.close;
qry_ksry.Parameters.ParamByName('ksdm').Value:=pub_ksdm;
qry_ksry.Open;

qry_qyhs.close;
qry_qyhs.Open;
end;

end.
