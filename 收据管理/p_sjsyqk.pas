unit p_sjsyqk;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, ADODB,
  StdCtrls, ExtCtrls, cxPC, cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, cxLabel, OleServer, grproLib_TLB, p_obj, p_func, DBCtrls;

type
  Tfrm_sjsyqk = class( TForm )
    qry_sjlyr: TADOQuery;
    ds_sjlyr: TDataSource;
    Panel1: TPanel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    Label1: TLabel;
    Panel2: TPanel;
    Label2: TLabel;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    Label3: TLabel;
    cxGrid3DBTableView1: TcxGridDBTableView;
    cxGrid3Level1: TcxGridLevel;
    cxGrid3: TcxGrid;
    qry_lymx: TADOQuery;
    ds_lymx: TDataSource;
    sp_up_sjsyqk: TADOStoredProc;
    qry_sjsyqk: TADOQuery;
    ds_sjsyqk: TDataSource;
    cxGrid3DBTableView1Column1: TcxGridDBColumn;
    cxGrid3DBTableView1Column2: TcxGridDBColumn;
    cxGrid3DBTableView1Column3: TcxGridDBColumn;
    cxGrid3DBTableView1Column4: TcxGridDBColumn;
    cxGrid3DBTableView1Column5: TcxGridDBColumn;
    cxGrid3DBTableView1Column6: TcxGridDBColumn;
    cxGrid3DBTableView1Column7: TcxGridDBColumn;
    cxGrid2DBTableView1Column1: TcxGridDBColumn;
    cxGrid2DBTableView1Column2: TcxGridDBColumn;
    cxGrid2DBTableView1Column3: TcxGridDBColumn;
    cxGrid2DBTableView1Column4: TcxGridDBColumn;
    cxGrid2DBTableView1Column5: TcxGridDBColumn;
    cxGrid2DBTableView1Column6: TcxGridDBColumn;
    Panel3: TPanel;
    Button1: TButton;
    pageControl: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    qry_sjsyqk_all: TADOQuery;
    ds_sjsqqk_all: TDataSource;
    cxGrid4: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    edt_ksrq: TcxDateEdit;
    edt_jsrq: TcxDateEdit;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    GridppReport1: TGridppReport;
    Button2: TButton;
    cxTabSheet3: TcxTabSheet;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    GridTableViewStyleSheetDevExpress: TcxGridTableViewStyleSheet;
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
    GridTableViewStyleSheetUserFormat2: TcxGridTableViewStyleSheet;
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
    Panel4: TPanel;
    Button3: TButton;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxGrid5: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    Label4: TLabel;
    sj_qs: TcxTextEdit;
    sj_js: TcxTextEdit;
    cb_sjlb: TcxComboBox;
    sp_tj: TADOStoredProc;
    ds_tj: TDataSource;
    sp_tjksrq: TStringField;
    sp_tjjsrq: TStringField;
    sp_tjfymc: TStringField;
    sp_tjfysl: TIntegerField;
    cxGridDBTableView2fymc: TcxGridDBColumn;
    cxGridDBTableView2fysl: TcxGridDBColumn;
    procedure FormShow( Sender: TObject );
    procedure qry_sjlyrAfterScroll( DataSet: TDataSet );
    procedure qry_lymxAfterScroll( DataSet: TDataSet );
    procedure Button1Click( Sender: TObject );
    procedure Button2Click( Sender: TObject );
    procedure DBBox1KeyDown( Sender: TObject; var Key: Word; Shift: TShiftState );
    procedure Button3Click( Sender: TObject );
  private
    { Private declarations }
  public
    procedure proc_printsyqk( sjrk: TADOQuery );
    { Public declarations }
  end;

var
  frm_sjsyqk: Tfrm_sjsyqk;
  syqkBb: TCusBb;

implementation
uses p_dm;
{$R *.dfm}

procedure Tfrm_sjsyqk.proc_printsyqk( sjrk: TADOQuery );
var
  res: string;
begin
  if sjrk.RecordCount > 0 then
  begin
    if syqkBb = nil then
    begin
      syqkBb := TCusBb.Create;
      syqkBb.GetBbByDM( syqkBb, '040309' );
      GridppReport1.LoadFromStr( syqkBb.nr );
    end;
    GridppReport1.DataSet := sjrk;

    res := frm_func.SetCReportXtcs( GridppReport1 );
    if res <> '1' then
    begin
      ShowMessage( res );
    end
    else
    begin
      GridppReport1.PrintPreview( true );
    end;
  end;
end;

procedure Tfrm_sjsyqk.Button1Click( Sender: TObject );
var
  ks, js: string;
begin
  //
  ks := FormatDateTime( 'yyyyMMdd', edt_ksrq.Date );
  js := FormatDateTime( 'yyyyMMdd', edt_jsrq.Date );

  qry_sjsyqk_all.Close;
  //  qry_sjsyqk_all.SQL.Text:='select a.* ,b.mc sjlxmc '+
  //                           'from sjgl_sjsyqk a ,sys_sjlb b '+
  //                           'where a.sjlx=b.dm and '+
  //                           'Convert(char(8),sysj,112)>='''+ks+
  //                           ''' and Convert(char(8),sysj,112)<='''+js+'''';
  qry_sjsyqk_all.Parameters.ParamByName( 'ksrq' ).Value := ks;
  qry_sjsyqk_all.Parameters.ParamByName( 'jsrq' ).Value := js;

  qry_sjsyqk_all.Open;
end;

procedure Tfrm_sjsyqk.Button2Click( Sender: TObject );
begin
  proc_printsyqk( qry_sjsyqk_all );
end;

procedure Tfrm_sjsyqk.Button3Click( Sender: TObject );
var
  sjlb: string;
  sjqh, sjzh: Integer;
begin
  sjlb := Trim( cb_sjlb.Text );
  if sjlb = '' then
  begin
    Application.MessageBox( '请先选择收据类别', '系统提示', MB_OK + MB_ICONEXCLAMATION );
    cb_sjlb.SetFocus;
    Exit;
  end;

  try
    sjqh := StrToInt( Trim( sj_qs.Text ) );
  except
    Application.MessageBox( '请录入合法的收据起号', '系统提示', MB_OK + MB_ICONEXCLAMATION );
    sj_qs.SetFocus;
    Exit;
  end;

  try
    sjzh := StrToInt( Trim( sj_js.Text ) );
  except
    Application.MessageBox( '请录入合法的收据止号', '系统提示', MB_OK + MB_ICONEXCLAMATION );
    sj_js.SetFocus;
    Exit;
  end;

  sp_tj.Close;
  sp_tj.Parameters.ParamByName( '@sjlb' ).Value := sjlb;
  sp_tj.Parameters.ParamByName( '@sjqh' ).Value := sjqh;
  sp_tj.Parameters.ParamByName( '@sjzh' ).Value := sjzh;
  sp_tj.Open;
  if sp_tj.RecordCount <= 0 then
  begin
    Application.MessageBox( '没有查询到记录,请调整查询条件', '系统提示', MB_OK + MB_ICONEXCLAMATION );
    cb_sjlb.SetFocus;
  end;
end;

procedure Tfrm_sjsyqk.DBBox1KeyDown( Sender: TObject; var Key: Word;
  Shift: TShiftState );
begin
  if key = 13 then
    Button3.SetFocus;
end;

procedure Tfrm_sjsyqk.FormShow( Sender: TObject );
begin
  edt_ksrq.Date := Date;
  edt_jsrq.Date := Date;

  qry_sjlyr.close;
  qry_sjlyr.Open;
  sp_up_sjsyqk.Close;
  sp_up_sjsyqk.Parameters.ParamByName( '@zybz' ).Value := 2;
  sp_up_sjsyqk.ExecProc;
end;

procedure Tfrm_sjsyqk.qry_lymxAfterScroll( DataSet: TDataSet );
begin
  qry_sjsyqk.close;
  qry_sjsyqk.Parameters.ParamByName( 'sjlx' ).value := qry_lymx.FieldByName( 'sjlb' ).AsString;
  qry_sjsyqk.Parameters.ParamByName( 'sjqh' ).Value := qry_lymx.FieldByName( 'sjqh' ).AsInteger;
  qry_sjsyqk.Parameters.ParamByName( 'sjzh' ).Value := qry_lymx.FieldByName( 'sjzh' ).AsInteger;
  qry_sjsyqk.Open;
end;

procedure Tfrm_sjsyqk.qry_sjlyrAfterScroll( DataSet: TDataSet );
begin
  qry_lymx.close;
  qry_lymx.Parameters.ParamByName( 'lyr' ).Value := qry_sjlyr.FieldByName( 'lyr' ).AsString;
  qry_lymx.Open;
end;

end.

