unit p_jbbg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBGridEhGrouping, DB, GridsEh, DBGridEh, ADODB, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
   cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  ComCtrls, StdCtrls, cxSplitter, Menus, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData, cxGridTableView,
  cxGridCustomTableView, cxGridDBTableView, cxGridLevel, cxClasses,
  cxGridCustomView, cxGrid, cxMemo, jpeg,DateUtils;

type
  Tfrm_jbbg = class(TForm)
    qry_rstj: TADOQuery;
    sp_sstj: TADOStoredProc;
    ds_rstj: TDataSource;
    Panel2: TPanel;
    DBGridEh2: TDBGridEh;
    TreeView1: TTreeView;
    qry_jbxm: TADOQuery;
    Button1: TButton;
    Panel3: TPanel;
    Panel4: TPanel;
    TreeView2: TTreeView;
    cxSplitter1: TcxSplitter;
    qry_rqs: TADOQuery;
    ds_brxx: TDataSource;
    sp_brxx: TADOStoredProc;
    PopupMenu1: TPopupMenu;
    N1111: TMenuItem;
    qry_hljld: TADOQuery;
    qry_rcl: TADOQuery;
    ds_hljld: TDataSource;
    ds_rcl: TDataSource;
    sp_ss: TADOStoredProc;
    ds_ss: TDataSource;
    ds_wjz: TDataSource;
    Panel6: TPanel;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Panel1: TPanel;
    g_jbmx: TGroupBox;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    cx_jbmxDBTableView1: TcxGridDBTableView;
    cx_jbmxLevel1: TcxGridLevel;
    cx_jbmx: TcxGrid;
    cx_jbmxDBTableView1Column1: TcxGridDBColumn;
    cx_jbmxDBTableView1Column2: TcxGridDBColumn;
    cx_jbmxDBTableView1Column3: TcxGridDBColumn;
    cx_jbmxDBTableView1Column4: TcxGridDBColumn;
    cx_jbmxDBTableView1Column5: TcxGridDBColumn;
    cx_jbmxDBTableView1Column6: TcxGridDBColumn;
    cx_jbmxDBTableView1Column7: TcxGridDBColumn;
    cx_jbmxDBTableView1Column8: TcxGridDBColumn;
    cx_jbmxDBTableView1Column9: TcxGridDBColumn;
    cx_jbmxDBTableView1Column10: TcxGridDBColumn;
    cx_jbmxDBTableView1Column11: TcxGridDBColumn;
    cx_jbmxDBTableView1Column12: TcxGridDBColumn;
    cx_jbmxDBTableView1Column13: TcxGridDBColumn;
    cx_jbmxDBTableView1Column14: TcxGridDBColumn;
    cxGrid1DBTableView1Column3: TcxGridDBColumn;
    cx_hljlDBTableView1: TcxGridDBTableView;
    cx_hljlLevel1: TcxGridLevel;
    cx_hljl: TcxGrid;
    cx_hljlDBTableView1Column1: TcxGridDBColumn;
    cx_hljlDBTableView1Column2: TcxGridDBColumn;
    cx_hljlDBTableView1Column3: TcxGridDBColumn;
    cx_hljlDBTableView1Column4: TcxGridDBColumn;
    cx_hljlDBTableView1Column5: TcxGridDBColumn;
    cx_hljlDBTableView1Column6: TcxGridDBColumn;
    cx_hljlDBTableView1Column7: TcxGridDBColumn;
    cx_hljlDBTableView1Column8: TcxGridDBColumn;
    cx_rclDBTableView1: TcxGridDBTableView;
    cx_rclLevel1: TcxGridLevel;
    cx_rcl: TcxGrid;
    cx_rclDBTableView1Column1: TcxGridDBColumn;
    cx_rclDBTableView1Column2: TcxGridDBColumn;
    cx_rclDBTableView1Column3: TcxGridDBColumn;
    cx_rclDBTableView1Column4: TcxGridDBColumn;
    cx_rclDBTableView1Column5: TcxGridDBColumn;
    cx_rclDBTableView1Column6: TcxGridDBColumn;
    cx_rclDBTableView1Column7: TcxGridDBColumn;
    cx_rclDBTableView1Column8: TcxGridDBColumn;
    cx_rclDBTableView1Column9: TcxGridDBColumn;
    cx_rclDBTableView1Column10: TcxGridDBColumn;
    g_hljlrcl: TGroupBox;
    cx_ssjbDBTableView1: TcxGridDBTableView;
    cx_ssjbLevel1: TcxGridLevel;
    cx_ssjb: TcxGrid;
    cx_ssjbDBTableView1Column1: TcxGridDBColumn;
    cx_ssjbDBTableView1Column2: TcxGridDBColumn;
    cx_ssjbDBTableView1Column3: TcxGridDBColumn;
    cx_ssjbDBTableView1Column4: TcxGridDBColumn;
    cx_ssjbDBTableView1Column5: TcxGridDBColumn;
    cx_ssjbDBTableView1Column6: TcxGridDBColumn;
    cx_ssjbDBTableView1Column7: TcxGridDBColumn;
    cx_ssjbDBTableView1Column8: TcxGridDBColumn;
    cx_ssjbDBTableView1Column9: TcxGridDBColumn;
    cx_ssjbDBTableView1Column10: TcxGridDBColumn;
    cx_ssjbDBTableView1Column11: TcxGridDBColumn;
    cx_ssjbDBTableView1Column12: TcxGridDBColumn;
    cx_ssjbDBTableView1Column13: TcxGridDBColumn;
    cx_ssjbDBTableView1Column14: TcxGridDBColumn;
    cx_ssjbDBTableView1Column15: TcxGridDBColumn;
    g_ssjb: TGroupBox;
    g_wjz: TGroupBox;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    cxGrid2DBTableView1Column1: TcxGridDBColumn;
    cxGrid2DBTableView1Column2: TcxGridDBColumn;
    cxGrid2DBTableView1Column3: TcxGridDBColumn;
    cxGrid2DBTableView1Column4: TcxGridDBColumn;
    cxGrid2DBTableView1Column5: TcxGridDBColumn;
    cxGrid2DBTableView1Column6: TcxGridDBColumn;
    g_tsbr: TGroupBox;
    cxGrid3DBTableView1: TcxGridDBTableView;
    cxGrid3Level1: TcxGridLevel;
    cxGrid3: TcxGrid;
    cxGrid3DBTableView1Column1: TcxGridDBColumn;
    cxGrid3DBTableView1Column2: TcxGridDBColumn;
    cxGrid3DBTableView1Column3: TcxGridDBColumn;
    cxGrid3DBTableView1Column4: TcxGridDBColumn;
    cxGrid3DBTableView1Column5: TcxGridDBColumn;
    cxGrid3DBTableView1Column6: TcxGridDBColumn;
    cxGrid3DBTableView1Column7: TcxGridDBColumn;
    cxGrid3DBTableView1Column8: TcxGridDBColumn;
    cxGrid3DBTableView1Column9: TcxGridDBColumn;
    cxGrid3DBTableView1Column10: TcxGridDBColumn;
    qry_tsbr: TADOQuery;
    ds_tsbr: TDataSource;
    cx_jbmxDBTableView1Column15: TcxGridDBColumn;
    GridTableViewStyleSheetUserFormat2: TcxGridTableViewStyleSheet;
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
    GridTableViewStyleSheetMarinehighcolor: TcxGridTableViewStyleSheet;
    cxStyle12: TcxStyle;
    cxStyle13: TcxStyle;
    cxStyle14: TcxStyle;
    cxStyle15: TcxStyle;
    cxStyle16: TcxStyle;
    cxStyle17: TcxStyle;
    cxStyle18: TcxStyle;
    cxStyle19: TcxStyle;
    cxStyle20: TcxStyle;
    cxStyle21: TcxStyle;
    cxStyle22: TcxStyle;
    PopupMenu2: TPopupMenu;
    N1: TMenuItem;
    qry_hszqm: TADOQuery;
    GroupBox3: TGroupBox;
    cxGrid4DBTableView1: TcxGridDBTableView;
    cxGrid4Level1: TcxGridLevel;
    cxGrid4: TcxGrid;
    sp_yclr: TADOStoredProc;
    ds_yclr: TDataSource;
    cxGrid4DBTableView1Column1: TcxGridDBColumn;
    cxGrid4DBTableView1Column2: TcxGridDBColumn;
    cxGrid4DBTableView1Column3: TcxGridDBColumn;
    N2: TMenuItem;
    sp_sstj1: TADOStoredProc;
    qry_gx: TADOQuery;
    sp_tsjb: TADOStoredProc;
    Panel5: TPanel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    ADOQuery1: TADOQuery;
    cxGrid2DBTableView1Column7: TcxGridDBColumn;
    cxGrid2DBTableView1Column8: TcxGridDBColumn;
    cxGrid2DBTableView1Column9: TcxGridDBColumn;
    sp_gfxbr: TADOStoredProc;
    DBGridEh1: TDBGridEh;
    DataSource1: TDataSource;
    GroupBox4: TGroupBox;
    N3: TMenuItem;
    ADODataSet1: TADODataSet;
    procedure FormShow(Sender: TObject);
    procedure TreeView2Change(Sender: TObject; Node: TTreeNode);
    procedure TreeView1Change(Sender: TObject; Node: TTreeNode);
    procedure Button1Click(Sender: TObject);
    procedure DBGridEh2CellClick(Column: TColumnEh);
    procedure N1111Click(Sender: TObject);
    procedure TreeView1Click(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure cxGrid1DBTableView1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure cxGrid1DBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cx_jbmxDBTableView1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure cx_ssjbDBTableView1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxGrid2DBTableView1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxGrid3DBTableView1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure ds_rstjDataChange(Sender: TObject; Field: TField);
    procedure cx_hljlDBTableView1DblClick(Sender: TObject);
    procedure DBGridEh2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure jbbgzs;
    procedure dkjbbg;
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  nodes:TTreeNodes;
  node:TTreeNode;
  zptext:string;
  lb:string;
  bookmark,bookmark_ss:TBookmark;
  tmh:string;
  jb_zyh:string;
  end;

var
  frm_jbbg: Tfrm_jbbg;

implementation
uses
p_dm,p_func,p_twb2;

{$R *.dfm}

procedure Tfrm_jbbg.dkjbbg;
begin
  if RadioButton1.Checked=True then
  begin
qry_rstj.close;
qry_rstj.SQL.Clear;
qry_rstj.SQL.Add('select * from zybl_jbbg_jbzb  where  convert(varchar(8),jbsj,112)=:jbsj  and ksdm=:ksdm order by jbsj');
qry_rstj.Parameters.ParamByName('jbsj').Value:=FormatDateTime('yyyymmdd',Frm_func.curr_date);
qry_rstj.Parameters.ParamByName('ksdm').Value:=pub_ksdm;
Frm_func.open_dataset(qry_rstj);
  end
  else
  begin
qry_rstj.close;
qry_rstj.SQL.Clear;
qry_rstj.SQL.Add('select * from zybl_jbbg_jbzb a left join sys_bqzyfl b on a.ksdm=b.bqzydm where  convert(varchar(8),jbsj,112)=:jbsj  and b.bqdm=:bqdm order by jbsj');
qry_rstj.Parameters.ParamByName('jbsj').Value:=FormatDateTime('yyyymmdd',Frm_func.curr_date);
qry_rstj.Parameters.ParamByName('bqdm').Value:=pub_bqdm;
Frm_func.open_dataset(qry_rstj);
  end;
  
end;

procedure Tfrm_jbbg.jbbgzs;
begin
g_ssjb.Visible:=False;
g_hljlrcl.Visible:=False;
g_jbmx.Visible:=False;
g_wjz.Visible:=False;
g_tsbr.Visible:=False;
GroupBox3.Visible:=false;
g_jbmx.Caption:='交班明细';
if( lb<>'今日手术') and (lb<>'明日手术') and (LB<>'高风险病人') and (LB<>'特殊交班'  ) and (lb<>'昨日手术')then
begin
sp_brxx.close;
sp_brxx.Parameters.ParamByName('@jbid').Value:=qry_rstj.FieldByName('jbid').AsString;
sp_brxx.Parameters.ParamByName('@lb').Value:=lb;
Frm_func.open_dataset(sp_brxx);
g_jbmx.Visible:=True;
g_jbmx.Align:=alClient;
ds_brxx.DataSet:=sp_brxx;
  if lb='出院' then
  begin
    cx_jbmxDBTableView1Column7.DataBinding.FieldName:='cyrq';
    cx_jbmxDBTableView1Column7.Caption:='出院日期';
  end
  else
  if lb='转出' then
  begin
    cx_jbmxDBTableView1Column7.DataBinding.FieldName:='zcrq';
    cx_jbmxDBTableView1Column7.Caption:='转出日期';
  end
  else
  begin
    cx_jbmxDBTableView1Column7.DataBinding.FieldName:='ryrq';
    cx_jbmxDBTableView1Column7.Caption:='入院日期';
  end;
end;

if lb='昨日手术' then
begin
g_ssjb.Visible:=True;
g_ssjb.Align:=alClient;
sp_ss.close;
sp_ss.Parameters.ParamByName('@rq').Value:=formatdatetime('yyyymmdd ', Frm_func.curr_date-1);
sp_ss.Parameters.ParamByName('@ksdm').Value:=pub_ksdm;
Frm_func.open_dataset(sp_ss);
ds_brxx.DataSet:=sp_ss;
end;


if lb='今日手术' then
begin
g_ssjb.Visible:=True;
g_ssjb.Align:=alClient;
sp_ss.close;
sp_ss.Parameters.ParamByName('@rq').Value:=formatdatetime('yyyymmdd ', Frm_func.curr_date);
sp_ss.Parameters.ParamByName('@ksdm').Value:=pub_ksdm;
Frm_func.open_dataset(sp_ss);
ds_brxx.DataSet:=sp_ss;
end;

if lb='明日手术' then
begin
g_ssjb.Visible:=True;
g_ssjb.Align:=alClient;
sp_ss.close;
sp_ss.Parameters.ParamByName('@rq').Value:=formatdatetime('yyyymmdd ', Frm_func.curr_date+1);
sp_ss.Parameters.ParamByName('@ksdm').Value:=pub_ksdm;
Frm_func.open_dataset(sp_ss);
ds_brxx.DataSet:=sp_ss;
end;

if lb='高风险病人' then
begin
g_wjz.Visible:=True;
g_wjz.Align:=alClient;
ds_brxx.DataSet:=sp_gfxbr;
sp_gfxbr.close;
sp_gfxbr.Parameters.ParamByName('@ksdm').Value:=pub_ksdm;
sp_gfxbr.open;
end;

if lb='特殊交班' then
begin
{qry_tsbr.close;
qry_tsbr.SQL.Clear;
qry_tsbr.sql.Add('select * from zybl_jbbg_tsbr where jbid=:jbid order by bch ');
qry_tsbr.Parameters.ParamByName('jbid').Value:=qry_rstj.FieldByName('jbid').AsString;
Frm_func.open_dataset(qry_tsbr); }
sp_tsjb.Close;
sp_tsjb.Parameters.ParamByName('@jbid').Value:=qry_rstj.FieldByName('jbid').AsString;
sp_tsjb.Open;
g_jbmx.Visible:=True;
g_jbmx.Align:=alClient;
g_jbmx.Caption:='特殊交班';
ds_brxx.DataSet:=sp_tsjb;
end;

end;

procedure Tfrm_jbbg.Button1Click(Sender: TObject);
begin
Button1.Enabled:=false;
sp_sstj.close;
sp_sstj.Parameters.ParamByName('@ksdm').Value:=pub_ksdm;
sp_sstj.ExecProc;
Button1.Enabled:=true;

qry_rstj.close;
qry_rstj.SQL.Clear;
qry_rstj.SQL.Add('select top 1 * from zybl_jbbg_jbzb where ksdm=:ksdm order by jbid desc') ;
qry_rstj.Parameters.ParamByName('ksdm').Value:=pub_ksdm;
Frm_func.open_dataset(qry_rstj);

end;

procedure Tfrm_jbbg.cxGrid1DBTableView1CellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
g_ssjb.Visible:=False;
g_hljlrcl.Visible:=False;
g_jbmx.Visible:=False;
g_wjz.Visible:=False;
g_tsbr.Visible:=False;

g_hljlrcl.Visible:=True;
g_hljlrcl.Align:=alClient;
if lb='昨日手术' then
begin
jb_zyh:=sp_ss.FieldByName('zyh').AsString;
end;

if lb='今日手术' then
begin
jb_zyh:=sp_ss.FieldByName('zyh').AsString;
end;

if lb='明日手术' then
begin
jb_zyh:=sp_ss.FieldByName('zyh').AsString;
end;

if lb='高风险病人' then
begin
jb_zyh:=sp_gfxbr.FieldByName('zyh').AsString;
end;

if lb='特殊交班' then
begin
jb_zyh:=sp_tsjb.FieldByName('zyh').AsString;
end;

if( lb<>'今日手术') and (lb<>'明日手术') and (LB<>'高风险病人') and (LB<>'特殊交班' ) and (lb<>'昨日手术')then
begin
jb_zyh:=sp_brxx.FieldByName('zyh').AsString;
end;

qry_hljld.close;
qry_hljld.sql.clear;
qry_hljld.sql.add('select  * from zybl_hljld where  zyh=:zyh order by jlrq desc');
qry_hljld.Parameters.ParamByName('zyh').value:=jb_zyh;
Frm_func.open_dataset(qry_hljld);

qry_rcl.close;
qry_rcl.sql.clear;
qry_rcl.sql.add('select * from zybl_hljld_rcl where  zyh=:zyh order by jlrq desc');
qry_rcl.Parameters.ParamByName('zyh').value:=jb_zyh;
Frm_func.open_dataset(qry_rcl);
end;

procedure Tfrm_jbbg.cxGrid1DBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
 if (AViewInfo.RecordViewInfo.GridRecord.Values[2]='男') then
  ACanvas.Brush.Color := $00B8C088;
   if (AViewInfo.RecordViewInfo.GridRecord.Values[2]='女') then
  ACanvas.Brush.Color := $00C080FF;
end;

procedure Tfrm_jbbg.cxGrid2DBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
g_ssjb.Visible:=False;
g_hljlrcl.Visible:=False;
g_jbmx.Visible:=False;
g_wjz.Visible:=False;
g_tsbr.Visible:=False;

g_hljlrcl.Visible:=True;
g_hljlrcl.Align:=alClient;

qry_hljld.close;
qry_hljld.sql.clear;
qry_hljld.sql.add('select  * from zybl_hljld where  zyh=:zyh order by jlrq desc');
qry_hljld.Parameters.ParamByName('zyh').value:=sp_gfxbr.FieldByName('zyh').AsString;
Frm_func.open_dataset(qry_hljld);

qry_rcl.close;
qry_rcl.sql.clear;
qry_rcl.sql.add('select  * from zybl_hljld_rcl where  zyh=:zyh order by jlrq desc');
qry_rcl.Parameters.ParamByName('zyh').value:=sp_gfxbr.FieldByName('zyh').AsString;
Frm_func.open_dataset(qry_rcl);
end;

procedure Tfrm_jbbg.cxGrid3DBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
g_ssjb.Visible:=False;
g_hljlrcl.Visible:=False;
g_jbmx.Visible:=False;
g_wjz.Visible:=False;
g_tsbr.Visible:=False;

g_hljlrcl.Visible:=True;
g_hljlrcl.Align:=alClient;

qry_hljld.close;
qry_hljld.sql.clear;
qry_hljld.sql.add('select  * from zybl_hljld where  zyh=:zyh order by jlrq desc');
qry_hljld.Parameters.ParamByName('zyh').value:=qry_tsbr.FieldByName('zyh').AsString;
Frm_func.open_dataset(qry_hljld);

qry_rcl.close;
qry_rcl.sql.clear;
qry_rcl.sql.add('select  * from zybl_hljld_rcl where  zyh=:zyh order by jlrq desc');
qry_rcl.Parameters.ParamByName('zyh').value:=qry_tsbr.FieldByName('zyh').AsString;
Frm_func.open_dataset(qry_rcl);
end;

procedure Tfrm_jbbg.cx_hljlDBTableView1DblClick(Sender: TObject);
begin
if ( lb<>'今日手术') and (lb<>'明日手术') and (lb<>'昨日手术') then
begin
g_ssjb.Visible:=False;
g_hljlrcl.Visible:=False;
g_jbmx.Visible:=true;
g_wjz.Visible:=False;
g_tsbr.Visible:=False;
g_hljlrcl.Visible:=False;
g_jbmx.Align:=alClient;

try
 sp_brxx.GotoBookmark(bookmark);
finally
 sp_brxx.FreeBookmark(bookmark);
end;
end
else
begin
g_ssjb.Visible:=true;
g_hljlrcl.Visible:=False;
g_jbmx.Visible:=False;
g_wjz.Visible:=False;
g_tsbr.Visible:=False;
g_hljlrcl.Visible:=False;
g_jbmx.Align:=alClient;

 try
 sp_ss.GotoBookmark(bookmark_ss);
finally
 sp_ss.FreeBookmark(bookmark_ss);
end;


end;
end;

procedure Tfrm_jbbg.cx_jbmxDBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
g_ssjb.Visible:=False;
g_hljlrcl.Visible:=False;
g_jbmx.Visible:=False;
g_wjz.Visible:=False;
g_tsbr.Visible:=False;

g_hljlrcl.Visible:=True;
g_hljlrcl.Align:=alClient;
bookmark:=sp_brxx.GetBookmark;

qry_hljld.close;
qry_hljld.sql.clear;
qry_hljld.sql.add('select  * from zybl_hljld where  zyh=:zyh order by jlrq desc');
if ds_brxx.DataSet=sp_brxx then
qry_hljld.Parameters.ParamByName('zyh').value:=sp_brxx.FieldByName('zyh').AsString
else
qry_hljld.Parameters.ParamByName('zyh').value:=sp_tsjb.FieldByName('zyh').AsString;
Frm_func.open_dataset(qry_hljld);

qry_rcl.close;
qry_rcl.sql.clear;
qry_rcl.sql.add('select  * from zybl_hljld_rcl where  zyh=:zyh order by jlrq desc');
if ds_brxx.DataSet=sp_brxx then
qry_rcl.Parameters.ParamByName('zyh').value:=sp_brxx.FieldByName('zyh').AsString
else
qry_rcl.Parameters.ParamByName('zyh').value:=sp_tsjb.FieldByName('zyh').AsString;
Frm_func.open_dataset(qry_rcl);
end;

procedure Tfrm_jbbg.cx_ssjbDBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
g_ssjb.Visible:=False;
g_hljlrcl.Visible:=False;
g_jbmx.Visible:=False;
g_wjz.Visible:=False;
g_tsbr.Visible:=False;

g_hljlrcl.Visible:=True;
g_hljlrcl.Align:=alClient;
 bookmark_ss:=sp_ss.GetBookmark;
qry_hljld.close;
qry_hljld.sql.clear;
qry_hljld.sql.add('select  * from zybl_hljld where  zyh=:zyh order by jlrq desc');
qry_hljld.Parameters.ParamByName('zyh').value:=sp_ss.FieldByName('zyh').AsString;
Frm_func.open_dataset(qry_hljld);

qry_rcl.close;
qry_rcl.sql.clear;
qry_rcl.sql.add('select  * from zybl_hljld_rcl where  zyh=:zyh order by jlrq desc');
qry_rcl.Parameters.ParamByName('zyh').value:=sp_ss.FieldByName('zyh').AsString;
Frm_func.open_dataset(qry_rcl);

end;

procedure Tfrm_jbbg.DBGridEh1DblClick(Sender: TObject);
begin
//sp_brxx.DisableControls;
//BookMark := sp_brxx.GetBookmark;

qry_hljld.close;
qry_hljld.sql.clear;
qry_hljld.sql.add('select  * from zybl_hljld where  zyh=:zyh order by jlrq desc');
qry_hljld.Parameters.ParamByName('zyh').value:=sp_brxx.FieldByName('zyh').AsString;
Frm_func.open_dataset(qry_hljld);

qry_rcl.close;
qry_rcl.sql.clear;
qry_rcl.sql.add('select  * from zybl_hljld_rcl where  zyh=:zyh order by jlrq desc');
qry_rcl.Parameters.ParamByName('zyh').value:=sp_brxx.FieldByName('zyh').AsString;
Frm_func.open_dataset(qry_rcl);
end;

procedure Tfrm_jbbg.DBGridEh2CellClick(Column: TColumnEh);
begin
jbbgzs;
end;

procedure Tfrm_jbbg.DBGridEh2DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
begin
if qry_rstj.FieldByName('jbbz').AsInteger=0 then
begin
  dbgrideh2.Canvas.Brush.Color := clTeal;
end;
 (Sender as TDbGridEh).DefaultDrawColumnCell(Rect, DataCol, Column, State);

end;

procedure Tfrm_jbbg.ds_rstjDataChange(Sender: TObject; Field: TField);
begin
if (qry_rstj.FieldByName('jbbz').AsInteger=0) and (FormatDateTime('yyyymmdd',Frm_func.curr_date)=FormatDateTime('yyyymmdd',qry_rstj.FieldByName('jbsj').AsDateTime)) then
begin
  N1.Visible:=True;
  N2.Visible:=True;
end
else
begin
  N1.Visible:=false;
  N2.Visible:=false;
end;

end;

procedure Tfrm_jbbg.FormShow(Sender: TObject);
var
i:integer;
yy,mm,dd:string;
nyy,nmm,ndd:string;
node1:TTreeNode;
rq:string;
begin
radiobutton1.Checked:=True;
dkjbbg;

qry_rstj.Filtered:=False;
qry_rstj.Filter:='jbbz=0';
qry_rstj.Filtered:=True;
if (qry_rstj.RecordCount=0)and ( formatdatetime('hh:mm:ss',Frm_func.curr_date)>'07:41:00')   then
begin
sp_sstj1.close;
sp_sstj1.Parameters.ParamByName('@ksdm').Value:=pub_ksdm;
sp_sstj1.ExecProc;
dkjbbg;
end
else
begin
qry_rstj.Filtered:=False;
end;



DBGridEh2.RowHeight:=30;
//DBGridEh1.RowHeight:=60;

   TreeView1.Items.Clear ;
       Node := nil;
       qry_jbxm.close;
       Frm_func.open_dataset(qry_jbxm);

       qry_jbxm.first;

 for i := 0 to qry_jbxm.RecordCount - 1 do
        begin
         zptext:=trim(qry_jbxm['xm']);
         Node := TreeView1.items.Add(Node, zptext);
         qry_jbxm.Next;
        end;
        if node<>nil then node.ImageIndex:=1;


qry_rqs.Close;
qry_rqs.Parameters.ParamByName('ksdm').Value:=pub_ksdm;
Frm_func.open_dataset(qry_rqs);
qry_rqs.First;
TreeView2.Items.Clear;
yy:='';
mm:='';
dd:='';
node1:=nil;
    rq:=DateToStr(qry_rqs.FieldByName('jbsj').AsDateTime);
     yy:=Copy(rq,1,4)+'年';
     mm:=copy(rq,6,2)+'月';
     dd:=Copy(rq,9,2)+'日';
    node1:=TreeView2.Items.Add(node1,yy);
      node1:=TreeView2.Items.AddChild(node1,mm);
      node1:=TreeView2.Items.AddChild(node1,dd);
      qry_rqs.Next;
for i := 1 to qry_rqs.RecordCount - 1 do
  begin
     rq:=DateToStr(qry_rqs.FieldByName('jbsj').AsDateTime);
     nyy:=Copy(rq,1,4)+'年';
     nmm:=copy(rq,6,2)+'月';
     ndd:=Copy(rq,9,2)+'日';

      if (yy=nyy) and (mm=nmm) and(dd<>ndd) then
      begin
        node1:=node1.Parent;
        node1:=TreeView2.Items.AddChild(node1,ndd);
      end
      else
      if (yy=nyy) and (mm<>nmm)then
      begin
           node1:=node1.Parent;
           node1:=node1.Parent;
           node1:=TreeView2.Items.AddChild(node1,nmm);
           node1:=TreeView2.Items.AddChild(node1,ndd);
      end
      else
      if yy<>nyy then
      begin
           node1:=node1.Parent;
           node1:=node1.Parent;
           node1:=node1.Parent;
           node1:=TreeView2.Items.AddChild(node1,nyy);
           node1:=TreeView2.Items.AddChild(node1,nmm);
           node1:=TreeView2.Items.AddChild(node1,ndd);
      end;
      yy:=nyy;
      mm:=nmm;
      dd:=ndd;
      qry_rqs.Next;

  end;

g_ssjb.Visible:=False;
g_hljlrcl.Visible:=False;
g_wjz.Visible:=False;
g_tsbr.Visible:=False;

g_jbmx.Visible:=True;
g_jbmx.Align:=alClient;
lb:='在院';


end;


procedure Tfrm_jbbg.N1111Click(Sender: TObject);
begin

qry_hljld.close;
qry_hljld.sql.clear;
qry_hljld.sql.add('select  * from zybl_hljld where  zyh=:zyh order by jlrq desc');
qry_hljld.Parameters.ParamByName('zyh').value:=sp_brxx.FieldByName('zyh').AsString;
Frm_func.open_dataset(qry_hljld);

qry_rcl.close;
qry_rcl.sql.clear;
qry_rcl.sql.add('select * from zybl_hljld_rcl where  zyh=:zyh order by jlrq desc');
qry_rcl.Parameters.ParamByName('zyh').value:=sp_brxx.FieldByName('zyh').AsString;
Frm_func.open_dataset(qry_Rcl);


end;

procedure Tfrm_jbbg.N1Click(Sender: TObject);
var
jbid:string;
zrly,zy,ry,cy,zr,zc:Integer;
begin
if application.MessageBox('签名以后数据将上报病案中心，是否确定签名上报?','注意*提示信息', mb_iconquestion + mb_okcancel + mb_defbutton2) = idcancel then
begin
  Abort;
end
else
begin
if qry_rstj.FieldByName('hszqm').AsString ='' then
begin
zrly:=qry_rstj.FieldByName('zrly').AsInteger;
zy:=qry_rstj.FieldByName('zyrs').AsInteger;
ry:=qry_rstj.FieldByName('ryrs').AsInteger;
cy:=qry_rstj.FieldByName('cyrs').AsInteger;
zr:=qry_rstj.FieldByName('zrrs').AsInteger;
zc:=qry_rstj.FieldByName('zcrs').AsInteger;

if (zrly+ry+zr)=(zy+cy+zc) then
begin
jbid:=qry_rstj.FieldByName('jbid').AsString;
qry_hszqm.close;
qry_hszqm.sql.clear;
qry_hszqm.SQL.Add('update zybl_jbbg_jbzb set hszqm=:czy where jbid=:jbid');
qry_hszqm.Parameters.ParamByName('czy').value:=pub_czyxm;
qry_hszqm.Parameters.ParamByName('jbid').Value:=jbid;
Frm_func.exec_dataset_qry(qry_hszqm);

dkjbbg;
end
else
begin
  Application.MessageBox('人数有误，请核对后签名确认！','提示',MB_OK+mb_iconerror);
end;
end;
end;
end;

procedure Tfrm_jbbg.N2Click(Sender: TObject);
var
jbid,tsyy:string;
i:Integer;
begin

     sp_yclr.Close;
     sp_yclr.Parameters.ParamByName('@ksdm').Value:=qry_rstj.FieldByName('ksdm').AsString;
     sp_yclr.Parameters.ParamByName('@jbid').Value:=qry_rstj.FieldByName('jbid').AsString;
     sp_yclr.Parameters.ParamByName('@rq').Value:=formatdatetime('yyyymmdd ',qry_rstj.FieldByName('jbsj').AsDateTime);
     sp_yclr.open;
     sp_yclr.First;
     tsyy:='';
     if sp_yclr.RecordCount>0 then
     begin
      for i:=0 to sp_yclr.RecordCount-1 do
      begin
       tsyy:=tsyy+#13+sp_yclr.FieldByName('brxm').AsString+sp_yclr.FieldByName('tmh').AsString;
       sp_yclr.Next;
      end;
     end;
     ShowMessage('请注意！！以下病人体温表数据可能存在问题:'+tsyy);


g_ssjb.Visible:=False;
g_hljlrcl.Visible:=False;
g_jbmx.Visible:=False;
g_wjz.Visible:=False;
g_tsbr.Visible:=False;
GroupBox3.Align:=alClient;
GroupBox3.Visible:=True;

jbid:=qry_rstj.FieldByName('jbid').AsString;
qry_hszqm.close;
qry_hszqm.SQL.Clear;
qry_hszqm.sql.Add('delete from zybl_jbbg_jbzb where jbid=:jbid');
qry_hszqm.Parameters.ParamByName('jbid').Value:=jbid;
Frm_func.exec_dataset_qry(qry_hszqm);

qry_hszqm.close;
qry_hszqm.SQL.Clear;
qry_hszqm.sql.Add('delete from zybl_jbbg_jbmx where jbid=:jbid');
qry_hszqm.Parameters.ParamByName('jbid').Value:=jbid;
Frm_func.exec_dataset_qry(qry_hszqm);

Self.close;

  try
    application.createform(tFrm_twb2, Frm_twb2);
    Frm_twb2.showmodal;
  finally
qry_gx.Close;
qry_gx.sql.clear;
qry_gx.SQL.Add('update zybl_jbbg_rshd set clbz=2 where ksdm=:ksdm and sybz=0');
qry_gx.Parameters.ParamByName('ksdm').Value:=pub_ksdm;
qry_gx.ExecSQL;
    Frm_twb2.free;
  end;


end;

procedure Tfrm_jbbg.N3Click(Sender: TObject);
begin
ADODataSet1.close;
ADODataSet1.CommandText:='select * from zybl_jbbg_jbzb where jbid=:jbid';
ADODataSet1.Parameters.ParamByName('jbid').Value:=qry_rstj.FieldByName('jbid').AsString;
ADODataSet1.Open;
ADODataSet1.Edit;
ADODataSet1['zrly']:=qry_rstj.FieldByName('zrly').AsInteger;
ADODataSet1['zyrs']:=qry_rstj.FieldByName('zyrs').AsInteger;
ADODataSet1['ryrs']:=qry_rstj.FieldByName('ryrs').AsInteger;
ADODataSet1['cyrs']:=qry_rstj.FieldByName('cyrs').AsInteger;
ADODataSet1['zcrs']:=qry_rstj.FieldByName('zcrs').AsInteger;
ADODataSet1['zrrs']:=qry_rstj.FieldByName('zrrs').AsInteger;
ADODataSet1['swrs']:=qry_rstj.FieldByName('swrs').AsInteger;
ADODataSet1['yjrs']:=qry_rstj.FieldByName('yjrs').AsInteger;
ADODataSet1['bwrs']:=qry_rstj.FieldByName('bwrs').AsInteger;
ADODataSet1['bzrs']:=qry_rstj.FieldByName('bzrs').AsInteger;
ADODataSet1['ssrs']:=qry_rstj.FieldByName('ssrs').AsInteger;
ADODataSet1.Post;
end;

procedure Tfrm_jbbg.RadioButton1Click(Sender: TObject);
begin
dkjbbg;
end;

procedure Tfrm_jbbg.RadioButton2Click(Sender: TObject);
var
i:Integer;
begin
  if formatdatetime('hh:mm:ss',Frm_func.curr_date)>'07:41:00' then
  begin
    ADOQuery1.close;
    ADOQuery1.Parameters.ParamByName('bqdm').Value:=pub_bqdm;
    ADOQuery1.Open;
    if ADOQuery1.RecordCount=1 then
    begin
      sp_sstj1.close;
      sp_sstj1.Parameters.ParamByName('@ksdm').Value:=ADOQuery1.FieldByName('bqzydm').AsString;
      sp_sstj1.ExecProc;
    end
    else
    if ADOQuery1.RecordCount>1 then
    begin
      ADOQuery1.First;
      for i := 0 to ADOQuery1.RecordCount - 1 do
      begin
        sp_sstj1.close;
        sp_sstj1.Parameters.ParamByName('@ksdm').Value:=ADOQuery1.FieldByName('bqzydm').AsString;
        sp_sstj1.ExecProc;
      end;
      ADOQuery1.Next;
    end;
  end;

  dkjbbg;
end;

procedure Tfrm_jbbg.TreeView1Change(Sender: TObject; Node: TTreeNode);

begin
lb:=Trim(TreeView1.selected.text);
jbbgzs;
end;

procedure Tfrm_jbbg.TreeView1Click(Sender: TObject);
begin
lb:=Trim(TreeView1.selected.text);
jbbgzs;
end;

procedure Tfrm_jbbg.TreeView2Change(Sender: TObject; Node: TTreeNode);
var

aa:string;
node2:TTreeNode;
yy,mm,dd:string;
begin
  if TreeView2.selected<>nil then
   begin
     if TreeView2.selected.text<>'' then
      begin
           if treeview2.Selected.Level = 0 then
            begin
            aa:=TreeView2.selected.text;
            end
            else
           if treeview2.Selected.Level = 1 then
           begin
            node2:=TreeView2.Selected;
            yy:=node2.Parent.Text;
            mm:=Node.Text;
            aa:=yy+mm;
           end
           else
           if treeview2.Selected.Level = 2 then
           begin
            node2:=TreeView2.Selected;
            yy:=node2.Parent.Parent.Text;
            mm:=Node.Parent.Text;
            dd:=node.Text;
            aa:=yy+mm+dd;
           end;
      end;
   end;
qry_rstj.Close;
qry_rstj.SQL.clear;
if RadioButton2.Checked=True then
begin
if Length(aa)=6 then
begin
aa:=Copy(aa,1,4);
qry_rstj.SQL.Add('select * from zybl_jbbg_jbzb a left join sys_bqzyfl b on a.ksdm=b.bqzydm where  convert(varchar(4),jbsj,112)=:jbsj and b.bqdm=:bqdm order by jbsj');
end
else
if Length(aa)=10 then
begin
aa:=Copy(aa,1,4)+copy(aa,7,2);
qry_rstj.SQL.Add('select * from zybl_jbbg_jbzb a left join sys_bqzyfl b on a.ksdm=b.bqzydm where  convert(varchar(6),jbsj,112)=:jbsj and b.bqdm=:bqdm order by jbsj');
end
else
if Length(aa)=14 then
begin
aa:=Copy(aa,1,4)+copy(aa,7,2)+copy(aa,11,2);
qry_rstj.SQL.Add('select * from zybl_jbbg_jbzb a left join sys_bqzyfl b on a.ksdm=b.bqzydm where  convert(varchar(8),jbsj,112)=:jbsj and b.bqdm=:bqdm order by jbsj');
end;
qry_rstj.Parameters.ParamByName('jbsj').Value:=aa;
qry_rstj.Parameters.ParamByName('bqdm').Value:=pub_bqdm;
Frm_func.open_dataset(qry_rstj);
end
else
begin

if Length(aa)=6 then
begin
aa:=Copy(aa,1,4);
qry_rstj.SQL.Add('select * from zybl_jbbg_jbzb  where  convert(varchar(4),jbsj,112)=:jbsj and ksdm=:ksdm order by jbsj');
end
else
if Length(aa)=10 then
begin
aa:=Copy(aa,1,4)+copy(aa,7,2);
qry_rstj.SQL.Add('select * from zybl_jbbg_jbzb  where  convert(varchar(6),jbsj,112)=:jbsj and ksdm=:ksdm order by jbsj');
end
else
if Length(aa)=14 then
begin
aa:=Copy(aa,1,4)+copy(aa,7,2)+copy(aa,11,2);
qry_rstj.SQL.Add('select * from zybl_jbbg_jbzb  where  convert(varchar(8),jbsj,112)=:jbsj and ksdm=:ksdm order by jbsj');
end;
qry_rstj.Parameters.ParamByName('jbsj').Value:=aa;
qry_rstj.Parameters.ParamByName('ksdm').Value:=pub_ksdm;
Frm_func.open_dataset(qry_rstj);

end;



end;


end.
