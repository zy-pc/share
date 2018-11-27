unit p_zybrfb_zt;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, Db, DBTables, Grids, DBGrids, TeEngine,
  Series, TeeProcs, Chart, DBChart, ADODB, ImgList, ComCtrls;

type
  TFrm_zybrfb_zt = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    DS_sp1: TDataSource;
    DBGrid1: TDBGrid;
    SP1: TADOStoredProc;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    DBChart1: TDBChart;
    Series1: TPieSeries;
    DBChart2: TDBChart;
    PieSeries1: TPieSeries;
    DBChart3: TDBChart;
    PieSeries2: TPieSeries;
    ImageList1: TImageList;
    Panel2: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    btn_cx: TButton;
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure btn_cxClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_zybrfb_zt: TFrm_zybrfb_zt;

implementation
uses p_dm, p_func,p_brztcx;
{$R *.DFM}

procedure TFrm_zybrfb_zt.btn_cxClick(Sender: TObject);
begin
  try
    Application.CreateForm(Tfrm_brztcx,frm_brztcx);
    frm_brztcx.ShowModal;
  finally
    frm_brztcx.Free;
  end;
end;

procedure TFrm_zybrfb_zt.FormShow(Sender: TObject);
var
  da1: string;
  zrs: integer;
begin
  da1 := formatdatetime('yyyy', frm_func.curr_date) + ' 年 ' +
    formatdatetime('mm', frm_func.curr_date) + ' 月 ' +
    formatdatetime('dd', frm_func.curr_date) + ' 日 ';
  panel1.Caption := '统计日期: ' + da1;
  SP1.open;
  if SP1.RecordCount <> 0 then
  begin
    SP1.First;
    zrs := 0;
    sp1.Locate('ksdm','_0001',[]);
    zrs:=SP1['zyrs'];
    edit1.Text := inttostr(zrs);
  end;
  dbgrid1.SetFocus;
end;

procedure TFrm_zybrfb_zt.BitBtn1Click(Sender: TObject);
begin
  close;
end;
initialization
  RegisterClass(TFrm_zybrfb_zt);
end.

