unit P_wsyyghcx;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, ExtCtrls, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, ADODB, cxGridLevel,
  cxClasses, cxControls, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxGridStrs, cxMaskEdit, cxTextEdit;

type
  Tfrm_wsyyghcx = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Label2: TLabel;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    Label3: TLabel;
    Button1: TButton;
    cxname: TEdit;
    Panel2: TPanel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    sp_cx_ghxx: TADOStoredProc;
    ds_cx_ghxx: TDataSource;
    CheckBox1: TCheckBox;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxGrid1DBTableView1Column3: TcxGridDBColumn;
    cxGrid1DBTableView1Column4: TcxGridDBColumn;
    cxGrid1DBTableView1Column5: TcxGridDBColumn;
    cxGrid1DBTableView1Column6: TcxGridDBColumn;
    cxGrid1DBTableView1Column7: TcxGridDBColumn;
    cxGrid1DBTableView1Column8: TcxGridDBColumn;
    cxGrid1DBTableView1Column10: TcxGridDBColumn;
    Button2: TButton;
    cxGrid1DBTableView1Column11: TcxGridDBColumn;
    cxGrid1DBTableView1Column9: TcxGridDBColumn;
    cxGrid1DBTableView1Column12: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column13: TcxGridDBColumn;
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
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure RadioButton1Exit(Sender: TObject);
    procedure cxGrid1DBTableView1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure cxGrid1DBTableView1Column7GetDataText(
      Sender: TcxCustomGridTableItem; ARecordIndex: Integer; var AText: string);
    procedure cxGrid1DBTableView1Column6GetDataText(
      Sender: TcxCustomGridTableItem; ARecordIndex: Integer; var AText: string);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_wsyyghcx: Tfrm_wsyyghcx;

implementation
uses p_dm, p_func;
{$R *.dfm}

procedure Tfrm_wsyyghcx.Button1Click(Sender: TObject);
begin
  sp_cx_ghxx.Close;
  sp_cx_ghxx.Parameters.ParamByName('@tmh').Value := Trim(cxname.Text);
  sp_cx_ghxx.Parameters.ParamByName('@ksrq').Value := DateTimePicker1.DateTime;
  sp_cx_ghxx.Parameters.ParamByName('@jsrq').Value := DateTimePicker2.DateTime;
  if RadioButton1.Checked then
    sp_cx_ghxx.Parameters.ParamByName('@tjfs').Value := 1
  else
    sp_cx_ghxx.Parameters.ParamByName('@tjfs').Value := 0;
  if CheckBox1.Checked then
    sp_cx_ghxx.Parameters.ParamByName('@cksj').Value := 1
  else
    sp_cx_ghxx.Parameters.ParamByName('@cksj').Value := 0;
  sp_cx_ghxx.Open;
  if sp_cx_ghxx.IsEmpty then
    Application.MessageBox('你没查询到相关信息，请重试', '', MB_OK +
      MB_ICONWARNING);

end;

procedure Tfrm_wsyyghcx.Button2Click(Sender: TObject);
begin
  Close;
end;

procedure Tfrm_wsyyghcx.cxGrid1DBTableView1Column6GetDataText(
  Sender: TcxCustomGridTableItem; ARecordIndex: Integer; var AText: string);
begin
  if AText <> '' then
    AText := FormatFloat('0.00', StrToFloat(aText))
end;

procedure Tfrm_wsyyghcx.cxGrid1DBTableView1Column7GetDataText(
  Sender: TcxCustomGridTableItem; ARecordIndex: Integer; var AText: string);
begin
  if AText <> '' then
    AText := FormatFloat('0.00', StrToFloat(aText))
end;

procedure Tfrm_wsyyghcx.cxGrid1DBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if sp_cx_ghxx.RecordCount > 0 then
  begin
    if sp_cx_ghxx.FieldByName('yxbz').Value = 0 then
    begin
      cxGrid1.Canvas.Brush.Color := cllime;
    end;

  end;

end;

procedure Tfrm_wsyyghcx.FormCreate(Sender: TObject);
begin
  DateTimePicker1.DateTime := Frm_func.curr_date;
  DateTimePicker2.DateTime := Frm_func.curr_date;
  cxname.Text := '';
  cxSetResourceString(@scxGridNoDataInfoText, '');

end;

procedure Tfrm_wsyyghcx.RadioButton1Exit(Sender: TObject);
begin
  sp_cx_ghxx.Close;
end;

end.
