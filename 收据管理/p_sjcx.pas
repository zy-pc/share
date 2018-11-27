unit p_sjcx;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxLabel, cxControls, cxContainer, cxEdit, cxTextEdit, StdCtrls,
  ExtCtrls, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  DB, cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridLevel, cxClasses, cxGridCustomView, cxGrid, p_dm, ADODB;

type
  Tfrm_sjcx = class( TForm )
    Edt_sjh: TLabeledEdit;
    Button1: TButton;
    edt_sjlx: TcxTextEdit;
    cxLabel1: TcxLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    edt_brxm: TcxTextEdit;
    cxLabel2: TcxLabel;
    edt_sfczy: TcxTextEdit;
    cxLabel3: TcxLabel;
    edt_tfczy: TcxTextEdit;
    cxLabel4: TcxLabel;
    edt_sfsj: TcxTextEdit;
    cxLabel5: TcxLabel;
    edt_tfsj: TcxTextEdit;
    cxLabel6: TcxLabel;
    edt_sjzt: TcxTextEdit;
    cxLabel7: TcxLabel;
    edt_brkh: TcxTextEdit;
    cxLabel8: TcxLabel;
    edt_fymc: TcxTextEdit;
    cxLabel9: TcxLabel;
    qry_sjzfcx: TADOQuery;
    sp_sjcx: TADOStoredProc;
    pnl_jbxx: TPanel;
    pnl_sf: TPanel;
    pnl_tf: TPanel;
    Panel5: TPanel;
    pnl_fyxx: TPanel;
    edt_sjje: TcxTextEdit;
    cxLabel10: TcxLabel;
    bt_zf: TButton;
    Button3: TButton;
    qry_cx: TADOQuery;
    procedure Button1Click( Sender: TObject );
    procedure Edt_sjhKeyPress( Sender: TObject; var Key: Char );
    procedure FormShow( Sender: TObject );
    procedure bt_zfClick( Sender: TObject );
    procedure Button3Click( Sender: TObject );
  private
    _sjh: Integer;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_sjcx: Tfrm_sjcx;

implementation

uses p_func;

{$R *.dfm}

procedure Tfrm_sjcx.Button1Click( Sender: TObject );
begin
  bt_zf.Enabled := False;
  if trim( edt_sjh.Text ) = '' then
  begin
    Application.MessageBox( '请录入收据号！', '系统提示', MB_OK + MB_ICONSTOP );
    edt_sjh.SetFocus;
    exit;
  end;
  try
    _sjh := StrToInt( trim( edt_sjh.Text ) );
  except
    Application.MessageBox( '请录入正确收据号！', '系统提示', MB_OK + MB_ICONSTOP );
    edt_sjh.SetFocus;
    exit;
  end;

  sp_sjcx.Close;
  sp_sjcx.Parameters.ParamByName( '@sjh' ).Value := _sjh;
  sp_sjcx.Open;
  if sp_sjcx.RecordCount <= 0 then
  begin
    Application.MessageBox( '没有找到该收据号！', '系统提示', MB_OK + MB_ICONSTOP );
    exit;
  end;

  edt_sjlx.Text := sp_sjcx.FieldByName( 'sjlx' ).AsString;
  if sp_sjcx.FieldByName( 'tfbz' ).AsBoolean and
    ( not sp_sjcx.FieldByName( 'zfbz' ).AsBoolean ) then
  begin
    edt_sjzt.Text := '已退费';
    edt_sjzt.Style.Font.Color := clRed;
  end
  else
    if sp_sjcx.FieldByName( 'zfbz' ).AsBoolean then
    begin
      edt_sjzt.Text := '已作废';
      qry_sjzfcx.Close;
      qry_sjzfcx.Parameters.ParamByName( 'sjbh' ).Value := _sjh;
      qry_sjzfcx.Parameters.ParamByName( 'shr' ).Value := pub_czydm;
      qry_sjzfcx.Parameters.ParamByName( 'shsj' ).Value := Frm_func.curr_date;
      qry_sjzfcx.ExecSQL;
      bt_zf.Enabled := True;
      edt_sjzt.Style.Font.Color := clRed;
    end
    else
    begin
      edt_sjzt.Text := '正常';
      edt_sjzt.Style.Font.Color := clGreen;
    end;
  edt_fymc.Text := sp_sjcx.FieldByName( 'fymc' ).AsString;
  edt_sjje.Text := sp_sjcx.FieldByName( 'fyzje' ).AsString;
  edt_brkh.Text := sp_sjcx.FieldByName( 'tmh' ).AsString;
  edt_brxm.Text := sp_sjcx.FieldByName( 'brxm' ).AsString;
  edt_sfczy.Text := sp_sjcx.FieldByName( 'sfczy' ).AsString +
    '(' + sp_sjcx.FieldByName( 'sfr' ).AsString + ')';
  edt_sfsj.Text := sp_sjcx.FieldByName( 'sfrq' ).AsString;
  edt_tfczy.Text := sp_sjcx.FieldByName( 'tfczy' ).AsString +
    '(' + sp_sjcx.FieldByName( 'tfr' ).AsString + ')';
  edt_tfsj.text := sp_sjcx.FieldByName( 'tfrq' ).AsString;
  pnl_tf.Visible := true;
  if trim( sp_sjcx.FieldByName( 'tfczy' ).AsString ) = '' then
    pnl_tf.Visible := false;

end;

procedure Tfrm_sjcx.bt_zfClick( Sender: TObject );
begin
  if ( sp_sjcx.Active ) and ( sp_sjcx.RecordCount > 0 ) then
  begin
    bt_zf.Enabled := False;
    qry_cx.Close;
    qry_cx.SQL.Text := 'select a.*,b.mc from sjgl_zfsj a join sys_czy b on a.shr=b.dm where sjbh=' + IntToStr( _sjh );
    qry_cx.Open;
    if qry_cx.RecordCount > 0 then
      if qry_cx.FieldByName( 'shbz' ).AsBoolean then
        Application.MessageBox( PChar( '该作废收据已审核,审核人:' + qry_cx.FieldByName( 'mc' ).AsString +
          ';审核时间:' + formatdatetime( 'yyyy-MM-dd hh:mm:ss', qry_cx.FieldByName( 'shsj' ).AsDateTime ) ),
          '系统提示', MB_OK + MB_ICONEXCLAMATION )
      else
      begin
        qry_cx.Close;
        qry_cx.SQL.Text := 'update sjgl_zfsj set shbz=1 where sjbh=' + IntToStr( _sjh );
        qry_cx.ExecSQL;
      end;
    Button1.SetFocus;
  end;
end;

procedure Tfrm_sjcx.Button3Click( Sender: TObject );
begin
  Close;
end;

procedure Tfrm_sjcx.Edt_sjhKeyPress( Sender: TObject; var Key: Char );
begin
  if key = #13 then button1.Click;
end;

procedure Tfrm_sjcx.FormShow( Sender: TObject );
begin
  Edt_sjh.SetFocus;
  bt_zf.Enabled := False;
end;

end.

