unit p_jzkcx;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Menus, cxLookAndFeelPainters, cxMaskEdit, cxSpinEdit,
  cxTimeEdit, cxCheckBox, cxControls, cxContainer, cxEdit, cxTextEdit, StdCtrls,
  cxButtons, cxLabel, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, DB, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, ADODB,
  ComCtrls, cxDropDownEdit, cxPC, QRCtrls, QuickRpt;

type
  Tfrm_jzkcx = class( TForm )
    qry_cx: TADOQuery;
    ds_cx: TDataSource;
    qry_cxkh: TStringField;
    qry_cxklb: TStringField;
    qry_cxkdj: TBCDField;
    qry_cxsjbh: TIntegerField;
    qry_cxjkczy: TStringField;
    qry_cxjkrq: TDateTimeField;
    qry_cxbkbz: TBooleanField;
    qry_cxtkbz: TBooleanField;
    qry_cxtkczy: TStringField;
    qry_cxtkrq: TDateTimeField;
    qry_cxjkczymc: TStringField;
    qry_cxtkczymc: TStringField;
    qry_cxklbmc: TStringField;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    GridTableViewStyleSheetUserFormat2: TcxGridTableViewStyleSheet;
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
    cts_mx: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    Panel1: TPanel;
    Panel2: TPanel;
    cb_close: TcxButton;
    ccb_cq: TcxCheckBox;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    ccb_ls: TcxCheckBox;
    cb_cx: TcxButton;
    dtp_ks: TDateTimePicker;
    dtp_js: TDateTimePicker;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1jkczymc: TcxGridDBColumn;
    cxGrid1DBTableView1klbmc: TcxGridDBColumn;
    cxGrid1DBTableView1kh: TcxGridDBColumn;
    cxGrid1DBTableView1kdj: TcxGridDBColumn;
    cxGrid1DBTableView1sjbh: TcxGridDBColumn;
    cxGrid1DBTableView1jkrq: TcxGridDBColumn;
    cxGrid1DBTableView1tkbz: TcxGridDBColumn;
    cxGrid1DBTableView1tkczymc: TcxGridDBColumn;
    cxGrid1DBTableView1tkrq: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    Panel3: TPanel;
    Panel4: TPanel;
    cb_close1: TcxButton;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cb_dy: TcxButton;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    cb_cx1: TcxButton;
    sp_tj_kgl: TADOStoredProc;
    ds_tj_kgl: TDataSource;
    sp_tj_kglczy: TStringField;
    sp_tj_kgltjrq: TDateTimeField;
    sp_tj_kglcqkfksl: TIntegerField;
    sp_tj_kglcqkfkje: TBCDField;
    sp_tj_kglcqktksl: TIntegerField;
    sp_tj_kglcqktkje: TBCDField;
    sp_tj_kgllskfksl: TIntegerField;
    sp_tj_kgllskfkje: TBCDField;
    sp_tj_kgllsktksl: TIntegerField;
    sp_tj_kgllsktkje: TBCDField;
    sp_tj_kglyjje: TBCDField;
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
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    cxGrid2DBTableView1czy: TcxGridDBColumn;
    cxGrid2DBTableView1tjrq: TcxGridDBColumn;
    cxGrid2DBTableView1cqkfksl: TcxGridDBColumn;
    cxGrid2DBTableView1cqkfkje: TcxGridDBColumn;
    cxGrid2DBTableView1cqktksl: TcxGridDBColumn;
    cxGrid2DBTableView1cqktkje: TcxGridDBColumn;
    cxGrid2DBTableView1lskfksl: TcxGridDBColumn;
    cxGrid2DBTableView1lskfkje: TcxGridDBColumn;
    cxGrid2DBTableView1lsktksl: TcxGridDBColumn;
    cxGrid2DBTableView1lsktkje: TcxGridDBColumn;
    cxGrid2DBTableView1yjje: TcxGridDBColumn;
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText7: TQRDBText;
    QRShape3: TQRShape;
    QRDBText6: TQRDBText;
    PageHeaderBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    yymc: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    PageFooterBand1: TQRBand;
    SummaryBand1: TQRBand;
    QRShape4: TQRShape;
    QRExpr6: TQRExpr;
    QRExpr3: TQRExpr;
    QRExpr2: TQRExpr;
    QRLabel14: TQRLabel;
    QRExpr7: TQRExpr;
    zbr: TQRLabel;
    QRExpr5: TQRExpr;
    dyrq: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    rq: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRDBText5: TQRDBText;
    sp_tj_kglcqkyjje: TBCDField;
    sp_tj_kgllskyjje: TBCDField;
    QRDBText8: TQRDBText;
    QRExpr1: TQRExpr;
    QRExpr4: TQRExpr;
    procedure cb_closeClick( Sender: TObject );
    procedure cb_cxClick( Sender: TObject );
    procedure cb_cx1Click( Sender: TObject );
    procedure FormShow( Sender: TObject );
    procedure cb_close1Click( Sender: TObject );
    procedure cb_dyClick( Sender: TObject );
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_jzkcx: Tfrm_jzkcx;

implementation
uses p_dm, p_func;

{$R *.dfm}

procedure Tfrm_jzkcx.cb_close1Click( Sender: TObject );
begin
  Close;
end;

procedure Tfrm_jzkcx.cb_closeClick( Sender: TObject );
begin
  Close;
end;

procedure Tfrm_jzkcx.cb_cxClick( Sender: TObject );
var
  klb_cq, klb_ls: string;
begin
  if ccb_cq.Checked then
    klb_cq := '05'
  else
    klb_cq := '';
  if ccb_ls.Checked then
    klb_ls := '06'
  else
    klb_ls := '';
  qry_cx.Close;
  qry_cx.Parameters.ParamByName( 'ksrq' ).Value := dtp_ks.DateTime;
  qry_cx.Parameters.ParamByName( 'jsrq' ).Value := dtp_js.DateTime;
  qry_cx.Parameters.ParamByName( 'klb_cq' ).Value := klb_cq;
  qry_cx.Parameters.ParamByName( 'klb_ls' ).Value := klb_ls;
  qry_cx.Open;
  if qry_cx.RecordCount <= 0 then
    Application.MessageBox( '没有查询到您需要的数据!', '提示', 0 + 16 );
end;

procedure Tfrm_jzkcx.cb_dyClick( Sender: TObject );
begin
  if ( sp_tj_kgl.Active ) and ( sp_tj_kgl.RecordCount > 0 ) then
  begin
    yymc.Caption := pub_yymc + '就诊卡统计表';
    rq.Caption := '统计日期:'+FormatDateTime( 'yyyy-mm-dd', DateTimePicker1.DateTime ) + ' 到 ' +
      FormatDateTime( 'yyyy-mm-dd', DateTimePicker2.DateTime );
    dyrq.Caption := '打印日期:'+FormatDateTime('yyyy-mm-dd hh:MM:ss',Frm_func.curr_date);
    zbr.Caption := '打印操作员:' + pub_czyxm;
    QuickRep1.Preview;
  end;
end;

procedure Tfrm_jzkcx.cb_cx1Click( Sender: TObject );
begin
  sp_tj_kgl.Close;
  sp_tj_kgl.Parameters.ParamByName( '@ksrq' ).Value := DateTimePicker1.DateTime;
  sp_tj_kgl.Parameters.ParamByName( '@jsrq' ).Value := DateTimePicker2.DateTime;
  sp_tj_kgl.Open;
  if sp_tj_kgl.RecordCount <= 0 then
    Application.MessageBox( '该段时间内没有统计到您需要的数据!', '提示', 0 + 16 );
end;

procedure Tfrm_jzkcx.FormShow( Sender: TObject );
begin
  DateTimePicker1.DateTime := frm_func.curr_date;
  DateTimePicker2.DateTime := frm_func.curr_date;
  dtp_ks.DateTime := frm_func.curr_date;
  dtp_js.DateTime := frm_func.curr_date;
  ccb_cq.Checked := True;
  ccb_ls.Checked := True;
  QuickRep1.Visible := False;
end;

end.

