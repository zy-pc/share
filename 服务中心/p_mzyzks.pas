unit p_mzyzks;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ADODB, StdCtrls, Grids, DBGrids, ExtCtrls, Buttons, DBCtrls, Mask,
  DBGridEh, DBCtrlsEh, DBLookupEh, GridsEh, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, cxGridLevel, cxClasses,
  cxControls, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid;

type
  Tfrm_mzyzzy = class(TForm)
    ds_mzkszywzsz: TDataSource;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    qry_mzkszywzsz: TADOQuery;
    qry_mzkszywzszksdm: TStringField;
    qry_mzkszywzszkszydm: TStringField;
    qry_mzkszywzszczwz: TStringField;
    cxGrid1DBTableView1ksdm: TcxGridDBColumn;
    cxGrid1DBTableView1ksmc: TcxGridDBColumn;
    cxGrid1DBTableView1kszydm: TcxGridDBColumn;
    cxGrid1DBTableView1zymc: TcxGridDBColumn;
    cxGrid1DBTableView1czwz: TcxGridDBColumn;
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
    qry_zy: TADOQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    qry_ks: TADOQuery;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    StringField9: TStringField;
    StringField10: TStringField;
    qry_mzkszywzszksmc: TStringField;
    qry_mzkszywzszzymc: TStringField;
    btn_Save: TButton;
    btn_Cancel: TButton;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_SaveClick(Sender: TObject);
    procedure btn_CancelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_mzyzzy: Tfrm_mzyzzy;

implementation

uses p_dm;

{$R *.DFM}


{-------------------------------------------------------------------------------
  过程名:    Tfrm_mzyzzy.btn_CancelClick
  作者:      yangshuai
  日期:      2016.05.16
  参数:      Sender: TObject
  返回值:    无
-------------------------------------------------------------------------------}
procedure Tfrm_mzyzzy.btn_CancelClick(Sender: TObject);
begin
  qry_mzkszywzsz.Cancel;
  ModalResult := mrCancel;
end;

{-------------------------------------------------------------------------------
  过程名:    Tfrm_mzyzzy.btn_SaveClick
  作者:      yangshuai
  日期:      2016.05.16
  参数:      Sender: TObject
  返回值:    无
-------------------------------------------------------------------------------}
procedure Tfrm_mzyzzy.btn_SaveClick(Sender: TObject);
begin
  qry_mzkszywzsz.Edit;
  qry_mzkszywzsz.Post;
  ModalResult := mrOk;
end;

procedure Tfrm_mzyzzy.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if qry_mzkszywzsz.Active then
  begin
    qry_mzkszywzsz.Close;
  end;
end;

procedure Tfrm_mzyzzy.FormShow(Sender: TObject);
begin
  qry_mzkszywzsz.Close;
  qry_mzkszywzsz.Open;
end;

end.

