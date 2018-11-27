unit P_kspb;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Grids, DBGrids, ADODB, Db, Buttons, p_dm, DBGridEh, GridsEh,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit,
  cxDBData, cxGridTableView, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridDBTableView, cxGrid;

type
  Tfrm_kspb = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Shape5: TShape;
    Shape1: TShape;
    Shape2: TShape;
    Shape4: TShape;
    Shape6: TShape;
    Shape7: TShape;
    Shape8: TShape;
    Shape9: TShape;
    Shape10: TShape;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    sp_cx_kspb: TADOStoredProc;
    ds_ghzy: TDataSource;
    xq11: TLabel;
    xq21: TLabel;
    xq31: TLabel;
    xq41: TLabel;
    xq12: TLabel;
    xq22: TLabel;
    xq32: TLabel;
    xq42: TLabel;
    xq51: TLabel;
    xq61: TLabel;
    xq71: TLabel;
    xq52: TLabel;
    xq62: TLabel;
    xq72: TLabel;
    ds_cx_kspb: TDataSource;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
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
    cxStyle23: TcxStyle;
    cxStyle24: TcxStyle;
    cxStyle25: TcxStyle;
    cxStyle26: TcxStyle;
    cxStyle27: TcxStyle;
    cxStyle28: TcxStyle;
    cxStyle29: TcxStyle;
    cxStyle30: TcxStyle;
    cxStyle31: TcxStyle;
    cxStyle32: TcxStyle;
    cxStyle33: TcxStyle;
    cxStyle34: TcxStyle;
    cxStyle35: TcxStyle;
    cxStyle36: TcxStyle;
    cxStyle37: TcxStyle;
    cxStyle38: TcxStyle;
    cxStyle39: TcxStyle;
    cxStyle40: TcxStyle;
    cxStyle41: TcxStyle;
    cxStyle42: TcxStyle;
    cxStyle43: TcxStyle;
    cxStyle44: TcxStyle;
    cxStyle45: TcxStyle;
    cxStyle46: TcxStyle;
    cxStyle47: TcxStyle;
    cxStyle48: TcxStyle;
    cxStyle49: TcxStyle;
    cxStyle50: TcxStyle;
    cxStyle51: TcxStyle;
    cxStyle52: TcxStyle;
    cxStyle53: TcxStyle;
    cxStyle54: TcxStyle;
    cxStyle55: TcxStyle;
    cxStyle56: TcxStyle;
    cxStyle57: TcxStyle;
    cxStyle58: TcxStyle;
    cxStyle59: TcxStyle;
    cxStyle60: TcxStyle;
    cxStyle61: TcxStyle;
    cxStyle62: TcxStyle;
    cxStyle63: TcxStyle;
    cxStyle64: TcxStyle;
    cxStyle65: TcxStyle;
    cxStyle66: TcxStyle;
    cxStyle67: TcxStyle;
    cxStyle68: TcxStyle;
    cxStyle69: TcxStyle;
    cxStyle70: TcxStyle;
    cxStyle71: TcxStyle;
    cxStyle72: TcxStyle;
    cxStyle73: TcxStyle;
    cxStyle74: TcxStyle;
    cxStyle75: TcxStyle;
    cxStyle76: TcxStyle;
    cxStyle77: TcxStyle;
    cxStyle78: TcxStyle;
    cxStyle79: TcxStyle;
    cxStyle80: TcxStyle;
    cxStyle81: TcxStyle;
    cxStyle82: TcxStyle;
    cxStyle83: TcxStyle;
    cxStyle84: TcxStyle;
    cxStyle85: TcxStyle;
    cxStyle86: TcxStyle;
    cxStyle87: TcxStyle;
    cxStyle88: TcxStyle;
    cxStyle89: TcxStyle;
    cxStyle90: TcxStyle;
    cxStyle91: TcxStyle;
    cxStyle92: TcxStyle;
    cxStyle93: TcxStyle;
    cxStyle94: TcxStyle;
    cxStyle95: TcxStyle;
    cxStyle96: TcxStyle;
    cxStyle97: TcxStyle;
    cxStyle98: TcxStyle;
    cxStyle99: TcxStyle;
    cxStyle100: TcxStyle;
    cxStyle101: TcxStyle;
    cxStyle102: TcxStyle;
    cxStyle103: TcxStyle;
    cxStyle104: TcxStyle;
    cxStyle105: TcxStyle;
    cxStyle106: TcxStyle;
    cxStyle107: TcxStyle;
    cxStyle108: TcxStyle;
    cxStyle109: TcxStyle;
    cxStyle110: TcxStyle;
    cxStyle111: TcxStyle;
    cxStyle112: TcxStyle;
    cxStyle113: TcxStyle;
    cxStyle114: TcxStyle;
    cxStyle115: TcxStyle;
    cxStyle116: TcxStyle;
    cxStyle117: TcxStyle;
    cxStyle118: TcxStyle;
    cxStyle119: TcxStyle;
    cxStyle120: TcxStyle;
    cxStyle121: TcxStyle;
    cxStyle122: TcxStyle;
    cxStyle123: TcxStyle;
    cxStyle124: TcxStyle;
    cxStyle125: TcxStyle;
    GridTableViewStyleSheetUserFormat1: TcxGridTableViewStyleSheet;
    GridTableViewStyleSheetUserFormat2: TcxGridTableViewStyleSheet;
    GridTableViewStyleSheetUserFormat3: TcxGridTableViewStyleSheet;
    GridTableViewStyleSheetSpruce: TcxGridTableViewStyleSheet;
    GridTableViewStyleSheetSlate: TcxGridTableViewStyleSheet;
    qry_ghzy: TADOQuery;
    qry_ghzydm: TStringField;
    qry_ghzymc: TStringField;
    cxGrid1DBTableView1dm: TcxGridDBColumn;
    cxGrid1DBTableView1mc: TcxGridDBColumn;
    Shape3: TShape;
    Shape11: TShape;
    Shape12: TShape;
    Shape13: TShape;
    procedure BitBtn1Click(Sender: TObject);
    procedure ad_ghzyAfterScroll(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
    procedure qry_ghzyAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
    procedure Displayvalue;
    procedure displabel(fieldname: string; Dlabel: Tlabel);
  public
    { Public declarations }
  end;

var
  frm_kspb: Tfrm_kspb;

implementation

{$R *.DFM}

procedure Tfrm_kspb.BitBtn1Click(Sender: TObject);
begin
  label8.Caption := 'abcd' + #13 + '1234';
end;

procedure Tfrm_kspb.ad_ghzyAfterScroll(DataSet: TDataSet);
begin
  sp_cx_kspb.close;
  sp_cx_kspb.Parameters.ParamByName('@ksdm').value := trim(qry_ghzy.fieldbyname('dm').asstring);
  sp_cx_kspb.Open;
  displayvalue;
end;

procedure Tfrm_kspb.Displayvalue;
begin
  sp_cx_kspb.first;
  displabel('xq1', xq11);
  displabel('xq2', xq21);
  displabel('xq3', xq31);
  displabel('xq4', xq41);
  displabel('xq5', xq51);
  displabel('xq6', xq61);
  displabel('xq7', xq71);
  sp_cx_kspb.next;
  displabel('xq1', xq12);
  displabel('xq2', xq22);
  displabel('xq3', xq32);
  displabel('xq4', xq42);
  displabel('xq5', xq52);
  displabel('xq6', xq62);
  displabel('xq7', xq72);
end;

procedure Tfrm_kspb.displabel(fieldname: string; Dlabel: Tlabel);
var s: string;
begin
  dlabel.caption := '';
  s := trim(sp_cx_kspb.fieldbyname(fieldname).asstring);
  while pos(',', s) <> 0 do
  begin
    insert(#13, s, pos(',', s));
    delete(s, pos(',', s), 1);
  end;
  dlabel.caption := s;
end;

procedure Tfrm_kspb.FormActivate(Sender: TObject);
begin
  qry_ghzy.Close;
  qry_ghzy.Open;
end;

procedure Tfrm_kspb.qry_ghzyAfterScroll(DataSet: TDataSet);
begin
  sp_cx_kspb.close;
  sp_cx_kspb.Parameters.ParamByName('@ksdm').value := trim(qry_ghzy.fieldbyname('dm').asstring);
  sp_cx_kspb.Open;
  displayvalue;
end;

end.
