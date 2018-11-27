unit p_czy_yjmxz;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, Db, DBTables, ComCtrls, CheckLst, Grids,
  DBGrids, ADODB, GridsEh, DBGridEh, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGrid;

type
  Tfrm_czy_yjmxz = class(TForm)
    ok2: TBitBtn;
    Bevel1: TBevel;
    sdate: TDateTimePicker;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    ds_yjmx: TDataSource;
    edate: TDateTimePicker;
    Label2: TLabel;
    qry_yjmx: TADOQuery;
    CheckBox1: TCheckBox;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxGrid1DBTableView1Column3: TcxGridDBColumn;
    cxGrid1DBTableView1Column4: TcxGridDBColumn;
    cxGrid1DBTableView1Column5: TcxGridDBColumn;
    cxGrid1DBTableView1Column6: TcxGridDBColumn;
    cxGrid1DBTableView1Column7: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
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
    cxStyle12: TcxStyle;
    GridTableViewStyleSheetUserFormat2: TcxGridTableViewStyleSheet;
    btnDY: TBitBtn;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ok2Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure cxGrid1DBTableView1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure btnDYClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_czy_yjmxz: Tfrm_czy_yjmxz;
implementation
uses p_func,p_dm,p_zysf_print_service;
{$R *.DFM}

procedure Tfrm_czy_yjmxz.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if key=27 then
        close;
end;

procedure Tfrm_czy_yjmxz.BitBtn1Click(Sender: TObject);
begin
    qry_yjmx.Active:=false;
    qry_yjmx.parameters.ParamByName('s_date').value:=formatdatetime('yyyymmdd',sdate.DateTime);
    qry_yjmx.parameters.ParamByName('e_date').value:=formatdatetime('yyyymmdd',edate.DateTime);
    qry_yjmx.Open;
    if qry_yjmx.IsEmpty then
    begin
        application.MessageBox('该时间段没有预交记录，请选择日期','提示',0+16);
    end;
end;

procedure Tfrm_czy_yjmxz.FormShow(Sender: TObject);
begin
   sdate.DateTime:=frm_func.curr_date;
   edate.DateTime:=frm_func.curr_date;
end;

procedure Tfrm_czy_yjmxz.ok2Click(Sender: TObject);
begin
  close;
end;

procedure Tfrm_czy_yjmxz.btnDYClick(Sender: TObject);
var
 KSRQ,JSRQ : string;
begin
  KSRQ :=formatdatetime('yyyymmdd',sdate.DateTime);
  JSRQ :=FormatDateTime('yyyymmdd',edate.DateTime);
  if not qry_yjmx.IsEmpty then
     frm_zysf_print_service.printYJJMX(qry_yjmx,pub_czyxm,KSRQ,JSRQ);

end;

procedure Tfrm_czy_yjmxz.CheckBox1Click(Sender: TObject);
begin
   if  CheckBox1.Checked then
   begin
     qry_yjmx.filter:='tfbz=true';
     qry_yjmx.Filtered:=true;
   end
   else
   begin
     qry_yjmx.filter:='';
     qry_yjmx.Filtered:=false;
   end;
end;
procedure Tfrm_czy_yjmxz.cxGrid1DBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
if qry_yjmx['tfbz']=true then
      begin
         cxGrid1.Canvas.Brush.Color:=cllime;
         cxGrid1.Canvas.Font.color:=clblue;
      end;
//      cxGrid1.DefaultDrawColumnCell(rect,datacol,column,state);
end;

initialization
  RegisterClass(Tfrm_czy_yjmxz);
end.
