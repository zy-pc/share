unit p_brztcx;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxClasses,
  cxControls, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, ADODB;

type
  Tfrm_brztcx = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    ComboBox1: TComboBox;
    Label1: TLabel;
    Button1: TButton;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    ComboBox2: TComboBox;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxGrid1DBTableView1Column3: TcxGridDBColumn;
    sp_cx_brzt: TADOStoredProc;
    ds_cx_brzt: TDataSource;
    Button2: TButton;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    ds_cx_brzt_mx: TDataSource;
    sp_cx_brzt_mx: TADOStoredProc;
    cxGridDBTableView1Column2: TcxGridDBColumn;
    procedure ComboBox1Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure cxGrid1DBTableView1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
  cxlb:integer;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_brztcx: Tfrm_brztcx;

implementation

uses p_dm,p_func;

{$R *.dfm}

procedure Tfrm_brztcx.Button1Click(Sender: TObject);
var cxnr:string;
begin
  sp_cx_brzt.Close;
  sp_cx_brzt.Parameters.Refresh;
  sp_cx_brzt.Parameters.ParamByName('@cxlb').Value:=cxlb;
  if ComboBox2.Visible=true then
  begin
    cxnr:=Copy(ComboBox2.Text,1,2);
    sp_cx_brzt.Parameters.ParamByName('@cxnr').Value:=cxnr;
  end
  else
  sp_cx_brzt.Parameters.ParamByName('@cxnr').Value:='';
  sp_cx_brzt.Open;
end;

procedure Tfrm_brztcx.Button2Click(Sender: TObject);
begin
  Close;
end;

procedure Tfrm_brztcx.ComboBox1Change(Sender: TObject);
begin
  if ComboBox1.ItemIndex=0 then
  begin
    ComboBox2.Visible:=True;
    dm_data.qry_pub.close;
    dm_data.qry_pub.SQL.text:='select * from sys_hljb ';
    dm_data.qry_pub.open;
    ComboBox2.Clear;
    while not dm_data.qry_pub.eof do
    begin
      ComboBox2.Items.Add(dm_data.qry_pub.FieldByName('dm').asstring+'_'+trim(dm_data.qry_pub.FieldByName('mc').asstring));
      dm_data.qry_pub.Next;
    end;
  end
  else
  begin
    ComboBox2.Visible:=False;
  end;
  cxlb:=ComboBox1.ItemIndex;

  
end;

procedure Tfrm_brztcx.cxGrid1DBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
  var cxnr:string;
begin
  sp_cx_brzt_mx.Close;
  sp_cx_brzt_mx.Parameters.Refresh;
  sp_cx_brzt_mx.Parameters.ParamByName('@cxlb').Value:=cxlb;
  if ComboBox2.Visible=true then
  begin
    cxnr:=Copy(ComboBox2.Text,1,2);
    sp_cx_brzt_mx.Parameters.ParamByName('@cxnr').Value:=cxnr;
  end
  else
  sp_cx_brzt_mx.Parameters.ParamByName('@cxnr').Value:='';
  sp_cx_brzt_mx.Parameters.ParamByName('@ksdm').Value:=sp_cx_brzt.FieldByName('ksdm').asstring;
  sp_cx_brzt_mx.Open;
end;

procedure Tfrm_brztcx.FormShow(Sender: TObject);
begin
  ComboBox2.Visible:=True;
  dm_data.qry_pub.close;
  dm_data.qry_pub.SQL.text:='select * from sys_hljb ';
  dm_data.qry_pub.open;
  ComboBox2.Clear;
  while not dm_data.qry_pub.eof do
  begin
    ComboBox2.Items.Add(dm_data.qry_pub.FieldByName('dm').asstring+trim(dm_data.qry_pub.FieldByName('mc').asstring));
    dm_data.qry_pub.Next;
  end;
  cxlb:=0;
  ComboBox2.ItemIndex:=0;
end;

end.
