unit p_sjrk;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxControls, cxPC, ExtCtrls, StdCtrls, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxContainer, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, ADODB, OleServer, grproLib_TLB, p_obj;

type
  Tfrm_sjrk = class( TForm )
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    pnl_an: TPanel;
    pnl_lr: TPanel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cbb_sjlx: TcxComboBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edt_qh: TcxTextEdit;
    edt_zh: TcxTextEdit;
    Button4: TButton;
    Button5: TButton;
    qry_sjrk: TADOQuery;
    ds_sjrk: TDataSource;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxGrid1DBTableView1Column3: TcxGridDBColumn;
    cxGrid1DBTableView1Column4: TcxGridDBColumn;
    qry_sjlb: TADOQuery;
    qry_sjrksjlxmc: TStringField;
    Label5: TLabel;
    edt_rkdh: TcxTextEdit;
    qry_sjrksjlx: TStringField;
    qry_sjrksjqh: TIntegerField;
    qry_sjrksjzh: TIntegerField;
    qry_sjrkrksj: TDateTimeField;
    qry_sjrkrkczy: TStringField;
    qry_sjrkrkdh: TStringField;
    qry_sjrkrksl: TIntegerField;
    qry_sjrksysl: TIntegerField;
    Panel1: TPanel;
    ksrq: TcxDateEdit;
    jsrq: TcxDateEdit;
    Button6: TButton;
    Label6: TLabel;
    Label7: TLabel;
    qry_sjrkcx: TADOQuery;
    ds_sjrkcx: TDataSource;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    cxGrid2DBTableView1Column1: TcxGridDBColumn;
    cxGrid2DBTableView1Column2: TcxGridDBColumn;
    cxGrid2DBTableView1Column3: TcxGridDBColumn;
    cxGrid2DBTableView1Column4: TcxGridDBColumn;
    cxGrid2DBTableView1Column5: TcxGridDBColumn;
    cxGrid2DBTableView1Column6: TcxGridDBColumn;
    cxGrid2DBTableView1Column7: TcxGridDBColumn;
    cxGrid2DBTableView1Column8: TcxGridDBColumn;
    cxGrid1DBTableView1Column5: TcxGridDBColumn;
    cxGrid1DBTableView1Column6: TcxGridDBColumn;
    SP_sjlyjc: TADOStoredProc;
    cxGrid2DBTableView1Column9: TcxGridDBColumn;
    GridppReport1: TGridppReport;
    Button7: TButton;
    procedure Button1Click( Sender: TObject );
    procedure FormKeyDown( Sender: TObject; var Key: Word; Shift: TShiftState );
    procedure FormShow( Sender: TObject );
    procedure Button4Click( Sender: TObject );
    procedure Button5Click( Sender: TObject );
    procedure Button2Click( Sender: TObject );
    procedure Button3Click( Sender: TObject );
    procedure Button6Click( Sender: TObject );
    procedure FormCreate( Sender: TObject );
    procedure Button7Click( Sender: TObject );
  private
    { Private declarations }
  public
    { Public declarations }
    procedure proc_printsjrk( sjrk: TADOQuery );
  end;

var
  frm_sjrk: Tfrm_sjrk;
  sjrkBb: TCusBb;

implementation
uses p_dm, p_func, p_zysf_print_service;
{$R *.dfm}

procedure Tfrm_sjrk.proc_printsjrk( sjrk: TADOQuery );
var
  res: string;
begin
  if sjrk.RecordCount > 0 then
  begin
    if sjrkBb = nil then
    begin
      sjrkBb := TCusBb.Create;
      sjrkBb.GetBbByDM( sjrkBb, '040307' );
      GridppReport1.LoadFromStr( sjrkBb.nr );
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

procedure Tfrm_sjrk.Button1Click( Sender: TObject );
begin
  pnl_lr.Enabled := true;
  cbb_sjlx.SetFocus;
  edt_rkdh.Text := pub_czydm + formatdatetime( 'YYYYMMDDHHnnss', frm_func.curr_date );
  button1.Enabled := false;
  button2.Enabled := true;
  button3.Enabled := true;
  qry_sjrk.Close;
  qry_sjrk.Open;
end;

procedure Tfrm_sjrk.Button2Click( Sender: TObject );
begin
  try
    qry_sjrk.UpdateBatch( arall );
    messagebox( 0, '收据入库保存成功!', '提示', MB_OK + MB_ICONINFORMATION );
    //    proc_printsjrk(qry_sjrk);
    frm_zysf_print_service.proc_printfprk_preview( qry_sjrk );

  except on e: exception do
    begin
      messagebox( 0, pchar( '收据入库保存失败.错误:!' + e.Message ), '提示', MB_OK + MB_ICONINFORMATION );
    end;
  end;
  edt_qh.text := '';
  edt_zh.text := '';
  qry_sjrk.Close;
  pnl_lr.Enabled := false;
  BUTTON1.Enabled := true;
  button2.Enabled := false;
  button3.enabled := false;
  button1.setfocus;

end;

procedure Tfrm_sjrk.Button3Click( Sender: TObject );
begin
  edt_qh.text := '';
  edt_zh.text := '';
  qry_sjrk.Close;
  pnl_lr.Enabled := false;
  BUTTON1.Enabled := true;
  button2.Enabled := false;
  button3.enabled := false;
  button1.SetFocus;
end;

procedure Tfrm_sjrk.Button4Click( Sender: TObject );
var
  i: integer;
  sjqh: integer;
  sjzh: integer;
  mess: string;
begin
  //验证收据合法性
  if not trystrtoint( trim( edt_qh.text ), i ) or not trystrtoint( trim( edt_zh.text ), i ) then
  begin
    messagebox( 0, '收据输入不正确', '提示', MB_OK + MB_ICONINFORMATION );
    edt_qh.SetFocus;
    exit;
  end;
  sjqh := strtoint( trim( edt_qh.text ) );
  sjzh := strtoint( trim( edt_zh.text ) );
  if sjqh > sjzh then
  begin
    messagebox( 0, '收据输入不正确', '提示', MB_OK + MB_ICONINFORMATION );
    edt_qh.SetFocus;
    exit;
  end;
  dm_data.qry_pub.Close;
  dm_data.qry_pub.SQL.Text := 'select * from sjgl_sjrkmx where sjlx =' + #39 + formatex( cbb_sjlx.ItemIndex + 1, 2 )
    + #39 + ' and ((sjqh<=' + edt_qh.text +
    ' and sjzh >= ' + edt_qh.text + ') or (sjqh <=' + edt_zh.text +
    ' and sjzh >= ' + edt_qh.text + '))';
  dm_data.qry_pub.Open;
  sp_sjlyjc.close;
  sp_sjlyjc.Parameters.ParamByName( '@sjlb' ).value := formatex( cbb_sjlx.ItemIndex + 1, 2 );
  sp_sjlyjc.Parameters.ParamByName( '@sjqh' ).value := sjqh;
  sp_sjlyjc.Parameters.ParamByName( '@sjzh' ).value := sjzh;
  sp_sjlyjc.Parameters.ParamByName( '@zt' ).value := 'aaaa';
  sp_sjlyjc.ExecProc;
  if trim( sp_sjlyjc.Parameters.ParamByName( '@zt' ).value ) <> '' then
  begin
    mess := sp_sjlyjc.Parameters.ParamByName( '@zt' ).value;
    application.MessageBox( pchar( mess ), '提示', 0 + 16 );
    exit;
  end;
  if dm_data.qry_pub.RecordCount > 0 then
  begin
    messagebox( 0, '输入的收据号存在已入库的号码', '提示', MB_OK + MB_ICONINFORMATION );
    edt_qh.SetFocus;
    exit;
  end;
  qry_sjrk.Insert;
  qry_sjrk.FieldByName( 'sjlx' ).Value := formatex( cbb_sjlx.ItemIndex + 1, 2 );
  qry_sjrk.FieldByName( 'sjqh' ).Value := sjqh;
  qry_sjrk.FieldByName( 'sjzh' ).Value := sjzh;
  qry_sjrk.FieldByName( 'rksj' ).Value := frm_func.curr_date;
  qry_sjrk.FieldByName( 'rkczy' ).Value := pub_czydm;
  qry_sjrk.FieldByName( 'rkdh' ).Value := edt_rkdh.Text;
  qry_sjrk.FieldByName( 'rksl' ).Value := sjzh - sjqh + 1;
  qry_sjrk.FieldByName( 'sysl' ).Value := sjzh - sjqh + 1;
  qry_sjrk.Post;

  cbb_sjlx.SetFocus;
  edt_qh.text := '';
  edt_zh.text := '';
end;

procedure Tfrm_sjrk.Button5Click( Sender: TObject );
begin
  try
    qry_sjrk.Delete;
  except
  end;
end;

procedure Tfrm_sjrk.Button6Click( Sender: TObject );
begin
  qry_sjrkcx.Close;
  qry_sjrkcx.Parameters.ParamByName( 'ksrq' ).Value := formatdatetime( 'yyyymmdd', ksrq.Date );
  qry_sjrkcx.Parameters.ParamByName( 'jsrq' ).Value := formatdatetime( 'yyyymmdd', jsrq.date );
  qry_sjrkcx.Open;
end;

procedure Tfrm_sjrk.Button7Click( Sender: TObject );
begin
  qry_sjrk.Close;
  qry_sjrk.SQL.Text := 'select * from sjgl_sjrkmx where rkdh = ''' + qry_sjrkcx.FieldByName( 'rkdh' ).AsString + '''';
  qry_sjrk.Open;

  proc_printsjrk( qry_sjrk );
end;

procedure Tfrm_sjrk.FormCreate( Sender: TObject );
begin
  ksrq.date := date;
  jsrq.date := date;
end;

procedure Tfrm_sjrk.FormKeyDown( Sender: TObject; var Key: Word;
  Shift: TShiftState );
begin
  if key = 13 then
  begin
    selectnext( activecontrol, true, true );
  end;
end;

procedure Tfrm_sjrk.FormShow( Sender: TObject );
begin
  qry_sjlb.Open;
  ksrq.date := frm_func.curr_date;
  jsrq.date := frm_func.curr_date;
end;

end.

