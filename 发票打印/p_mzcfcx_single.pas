unit p_mzcfcx_single;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, ExtCtrls, Db, DBTables, Grids, DBGrids, Menus,
  Buttons, ADODB, QuickRpt, Qrctrls, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGrid, cxSplitter;

type
  TFrm_mzcfcx_single = class( TForm )
    Panel1: TPanel;
    DS_zb: TDataSource;
    DS_mx: TDataSource;
    Menu1: TPopupMenu;
    GroupBox1: TGroupBox;
    Radio1: TRadioButton;
    Date1: TDateTimePicker;
    Label1: TLabel;
    Date2: TDateTimePicker;
    Radio3: TRadioButton;
    e_bh1: TEdit;
    e_bh2: TEdit;
    e_bh3: TEdit;
    Check1: TCheckBox;
    B_cx: TBitBtn;
    N3: TMenuItem;
    N4: TMenuItem;
    N6: TMenuItem;
    Radio2: TRadioButton;
    E_tmh: TEdit;
    Qry_zb_ls: TADOQuery;
    Qry_zb_bf_ls: TADOQuery;
    SP_mx: TADOStoredProc;
    radio4: TRadioButton;
    e_xm: TEdit;
    Panel2: TPanel;
    GroupBox2: TGroupBox;
    RB1: TRadioButton;
    RB2: TRadioButton;
    RB3: TRadioButton;
    RB5: TRadioButton;
    RB4: TRadioButton;
    sp_zb: TADOStoredProc;
    Label2: TLabel;
    mbmc: TEdit;
    BitBtn2: TBitBtn;
    b_close: TBitBtn;
    BitBtn1: TBitBtn;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1tmh: TcxGridDBColumn;
    cxGrid1DBTableView1cfbh: TcxGridDBColumn;
    cxGrid1DBTableView1brxm: TcxGridDBColumn;
    cxGrid1DBTableView1cfzje: TcxGridDBColumn;
    cxGrid1DBTableView1hjczy: TcxGridDBColumn;
    cxGrid1DBTableView1fyczy: TcxGridDBColumn;
    cxGrid1DBTableView1tyczy: TcxGridDBColumn;
    cxGrid1DBTableView1fyrq: TcxGridDBColumn;
    cxGrid1DBTableView1tyrq: TcxGridDBColumn;
    cxGrid1DBTableView1cfjl: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    sp_save_cfmb: TADOStoredProc;
    cxSplitter1: TcxSplitter;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    cxGrid2DBTableView1xh: TcxGridDBColumn;
    cxGrid2DBTableView1ypdw: TcxGridDBColumn;
    cxGrid2DBTableView1ypsl: TcxGridDBColumn;
    cxGrid2DBTableView1ypdj: TcxGridDBColumn;
    cxGrid2DBTableView1ypje: TcxGridDBColumn;
    cxGrid2DBTableView1ypmc1: TcxGridDBColumn;
    cxGrid2DBTableView1ypgg: TcxGridDBColumn;
    cxGrid2DBTableView1yf: TcxGridDBColumn;
    cxGrid2DBTableView1yl: TcxGridDBColumn;
    cxGrid2DBTableView1yytj: TcxGridDBColumn;
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    xm: TQRLabel;
    xb: TQRLabel;
    nl: TQRLabel;
    cfh: TQRLabel;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRLabel4: TQRLabel;
    QRDBText11: TQRDBText;
    yymc: TQRLabel;
    QRLabel2: TQRLabel;
    QRDBText15: TQRDBText;
    QRDBText14: TQRDBText;
    QRLabel5: TQRLabel;
    QRDBText16: TQRDBText;
    QRBand2: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRBand3: TQRBand;
    ysxm: TQRLabel;
    fhr: TQRLabel;
    fyr: TQRLabel;
    QRLabel1: TQRLabel;
    QRDBText13: TQRDBText;
    QRGroup1: TQRGroup;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRBand5: TQRBand;
    xms: TQRLabel;
    QRL_jlhj: TQRLabel;
    QRL_ylhj: TQRLabel;
    QRL_zfhj: TQRLabel;
    QuickRep_zy: TQuickRep;
    QRBand4: TQRBand;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRDBText21: TQRDBText;
    QRDBText22: TQRDBText;
    QRDBText23: TQRDBText;
    QRDBText24: TQRDBText;
    QRLabel16: TQRLabel;
    QRDBText25: TQRDBText;
    QRL_yymc_zy: TQRLabel;
    QRLabel17: TQRLabel;
    QRDBText26: TQRDBText;
    QRLabel18: TQRLabel;
    QRDBText27: TQRDBText;
    QRDBText38: TQRDBText;
    QRLabel23: TQRLabel;
    QRLabel19: TQRLabel;
    QRDBText28: TQRDBText;
    QRBand7: TQRBand;
    QRL_ysxm_ysxm: TQRLabel;
    QRL_fhr_zy: TQRLabel;
    QRL_fyr_zy: TQRLabel;
    QRLabel22: TQRLabel;
    QRDBText37: TQRDBText;
    QRSubDetail1: TQRSubDetail;
    QRL_ypmc1: TQRLabel;
    QRL_ypsl1: TQRLabel;
    QRL_ypdw1: TQRLabel;
    QRL_ypdj1: TQRLabel;
    QRL_ypmc2: TQRLabel;
    QRL_ypsl2: TQRLabel;
    QRL_ypdw2: TQRLabel;
    QRL_ypdj2: TQRLabel;
    QRL_ypdj3: TQRLabel;
    QRL_ypdw3: TQRLabel;
    QRL_ypsl3: TQRLabel;
    QRL_ypmc3: TQRLabel;
    QRL_ypdj4: TQRLabel;
    QRL_ypdw4: TQRLabel;
    QRL_ypsl4: TQRLabel;
    QRL_ypmc4: TQRLabel;
    QRL_yf1: TQRLabel;
    QRL_yf2: TQRLabel;
    QRL_yf3: TQRLabel;
    QRL_yf4: TQRLabel;
    GroupHeaderBand1: TQRBand;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRLabel43: TQRLabel;
    QRLabel45: TQRLabel;
    QRLabel47: TQRLabel;
    QRLabel48: TQRLabel;
    QRLabel49: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel31: TQRLabel;
    GroupFooterBand1: TQRBand;
    QRLabel34: TQRLabel;
    qrdbtxt_cflx: TQRDBText;
    QRLabel3: TQRLabel;
    QRDBText18: TQRDBText;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRL_dyrq: TQRLabel;
    cxGrid2DBTableView1yldw: TcxGridDBColumn;
    cb_yl: TCheckBox;
    QRDBText29: TQRDBText;
    QRLabel37: TQRLabel;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    radio5: TRadioButton;
    e_ys: TEdit;
    procedure Date1Change( Sender: TObject );
    procedure Date3Change( Sender: TObject );
    procedure e_bh1Change( Sender: TObject );
    procedure Radio2Click( Sender: TObject );
    procedure FormShow( Sender: TObject );
    procedure Check1Click( Sender: TObject );
    procedure B_cxClick( Sender: TObject );
    procedure N3Click( Sender: TObject );
    procedure e_bh3KeyPress( Sender: TObject; var Key: Char );
    procedure E_sjbhKeyPress( Sender: TObject; var Key: Char );
    procedure e_bh1KeyPress( Sender: TObject; var Key: Char );
    procedure e_bh2KeyPress( Sender: TObject; var Key: Char );
    procedure N6Click( Sender: TObject );
    procedure N8Click( Sender: TObject );
    procedure N9Click( Sender: TObject );
    procedure N10Click( Sender: TObject );
    procedure E_tmhChange( Sender: TObject );
    procedure E_tmhKeyPress( Sender: TObject; var Key: Char );
    procedure RB2Click( Sender: TObject );
    procedure RB3Click( Sender: TObject );
    procedure RB1Click( Sender: TObject );
    procedure QRDBText1Print( sender: TObject; var Value: string );
    procedure QRDBText3Print( sender: TObject; var Value: string );
    procedure BitBtn1Click( Sender: TObject );
    procedure b_closeClick( Sender: TObject );
    procedure QRDBText5Print( sender: TObject; var Value: string );
    procedure RB5Click( Sender: TObject );
    procedure RB4Click( Sender: TObject );
    procedure cxGrid1DBTableView1CustomDrawCell( Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean );
    procedure BitBtn2Click( Sender: TObject );
    procedure cxGrid2DBTableView1xhCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean );
    procedure cxGrid1DBTableView1tmhCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean );
    procedure FormKeyDown( Sender: TObject; var Key: Word; Shift: TShiftState );
    procedure QRSubDetail1NeedData( Sender: TObject; var MoreData: Boolean );
    procedure cxGrid1DBTableView1CellClick( Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean );
    procedure cxGrid1DBTableView1KeyDown( Sender: TObject; var Key: Word;
      Shift: TShiftState );
    procedure e_xmChange(Sender: TObject);
    procedure e_ysChange(Sender: TObject);
    procedure Radio1Click(Sender: TObject);
    procedure Radio3Click(Sender: TObject);
    procedure radio4Click(Sender: TObject);
    procedure radio5Click(Sender: TObject);
  private
    { Private declarations }
    p_sql, p_bf_sql, p_order, p_cxtj: string;
    p_cxbf: Integer;
    {p_sql 存放原qry_zb的SQL语句
     p_bf_sql 存放原qry_zb_bf的SQL语句
     p_order 存放排序语句
     p_cxtj 存放查询条件 }
    prv_rep: Boolean;
  public
    { Public declarations }
  end;

var
  Frm_mzcfcx_single: TFrm_mzcfcx_single;

implementation

uses p_dm, p_login, p_select, p_print_xyjkd, p_func, p_print_mzcf;

{$R *.DFM}

procedure TFrm_mzcfcx_single.Date1Change( Sender: TObject );
begin
  radio1.Checked := true;
  radio1.Font.Color := clred;
  radio2.Font.Color := clblack;
  radio3.Font.Color := clblack;
  sp_zb.close;
  sp_mx.close;
end;

procedure TFrm_mzcfcx_single.Date3Change( Sender: TObject );
begin
  radio2.Checked := true;
  radio2.Font.Color := clred;
  radio1.Font.Color := clblack;
  radio3.Font.Color := clblack;
  sp_zb.close;
  sp_mx.close;
end;

procedure TFrm_mzcfcx_single.e_ysChange(Sender: TObject);
begin
  radio5.Checked := true;
  radio5.Font.Color := clred;
  radio1.Font.Color := clblack;
  radio2.Font.Color := clblack;
  radio3.Font.Color := clblack;
  radio4.Font.Color := clblack;
  sp_zb.close;
  sp_mx.close;
end;

procedure TFrm_mzcfcx_single.e_bh1Change( Sender: TObject );
begin
  radio3.Checked := true;
  radio3.Font.Color := clred;
  radio1.Font.Color := clblack;
  radio2.Font.Color := clblack;
  radio4.Font.Color := clblack;
  radio5.Font.Color := clblack;
  sp_zb.close;
  sp_mx.close;
end;

procedure TFrm_mzcfcx_single.Radio1Click(Sender: TObject);
begin
  Radio1.Font.Color := clred;
  Radio2.Font.Color := clBlack;
  Radio3.Font.Color := clBlack;
  Radio4.Font.Color := clBlack;
  Radio5.Font.Color := clBlack;
  sp_zb.close;
  sp_mx.close;
end;

procedure TFrm_mzcfcx_single.Radio2Click( Sender: TObject );
begin
  Radio1.Font.Color := clBlack;
  Radio2.Font.Color := clred;
  Radio3.Font.Color := clBlack;
  Radio4.Font.Color := clBlack;
  Radio5.Font.Color := clBlack;
  sp_zb.close;
  sp_mx.close;
  E_tmh.SetFocus;
end;

procedure TFrm_mzcfcx_single.Radio3Click(Sender: TObject);
begin
  Radio1.Font.Color := clBlack;
  Radio2.Font.Color := clBlack;
  Radio3.Font.Color := clred;
  Radio4.Font.Color := clBlack;
  Radio5.Font.Color := clBlack;
  sp_zb.close;
  sp_mx.close;
  e_bh3.SetFocus;
end;

procedure TFrm_mzcfcx_single.radio4Click(Sender: TObject);
begin
  Radio1.Font.Color := clBlack;
  Radio2.Font.Color := clBlack;
  Radio3.Font.Color := clBlack;
  Radio4.Font.Color := clred;
  Radio5.Font.Color := clBlack;
  sp_zb.close;
  sp_mx.close;
  e_xm.SetFocus;
end;

procedure TFrm_mzcfcx_single.radio5Click(Sender: TObject);
begin
  Radio1.Font.Color := clBlack;
  Radio2.Font.Color := clBlack;
  Radio3.Font.Color := clBlack;
  Radio4.Font.Color := clBlack;
  Radio5.Font.Color := clred;
  sp_zb.close;
  sp_mx.close;
  e_ys.SetFocus;
end;

procedure TFrm_mzcfcx_single.FormKeyDown( Sender: TObject; var Key: Word;
  Shift: TShiftState );
  procedure ClearEditText( aControl: TEdit );
  begin
    if aControl <> nil then
    begin
      aControl.Text := '';
    end;
  end;
begin
  if key = 27 then
  begin
    if ActiveControl is TEdit then
      ClearEditText( TEdit( ActiveControl ) );
  end;
end;

procedure TFrm_mzcfcx_single.FormShow( Sender: TObject );
begin
  //罗江县人民医院特殊处理
  //  DBGrid1.Columns.Items[5].Visible := (pub_yydm <> '0046');
  //  DBGrid1.Columns.Items[7].Visible := (pub_yydm <> '0046');
  //--------------------------------------------------
  QuickRep1.Visible := False;
  QuickRep_zy.Visible := False;
  //  p_sql := qry_zb.sql.Text;
  //  p_bf_sql := qry_zb_bf.sql.Text;
  p_order := '';
  p_cxtj := '';
  e_bh1.Text := formatdatetime( 'yyyy', frm_func.curr_date );
  e_bh2.Text := formatdatetime( 'mm', frm_func.curr_date );
  radio1.Checked := true;
  cb_yl.Checked := True;
  date1.DateTime := frm_func.curr_date;
  date2.DateTime := frm_func.curr_date;
  b_cx.SetFocus;
end;

procedure TFrm_mzcfcx_single.Check1Click( Sender: TObject );
begin
  sp_zb.close;
  sp_mx.close;
end;

procedure TFrm_mzcfcx_single.cxGrid1DBTableView1CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean );
begin
  if prv_rep then
  begin
    sp_mx.close;
    if sp_zb.RecordCount <> 0 then
    begin
      if ( sp_zb['fybz'] = '否' ) and ( sp_zb['sfbz'] = '否' ) and ( pub_jkddybz = true ) then
        n6.Enabled := true
      else
        n6.Enabled := false;
      if check1.Checked then //历史处方
      begin
        sp_mx.close;
        sp_mx.Parameters.ParamByName( '@cfbh' ).value := sp_zb['cfbh'];
        sp_mx.Parameters.ParamByName( '@cflb' ).value := 1;
        sp_mx.open;
      end
      else
      begin
        sp_mx.close;
        sp_mx.Parameters.ParamByName( '@cfbh' ).value := sp_zb['cfbh'];
        sp_mx.Parameters.ParamByName( '@cflb' ).value := 0;
        sp_mx.open;
      end;
    end;
    bitbtn1.Enabled := not sp_mx.IsEmpty;
  end;
end;

procedure TFrm_mzcfcx_single.cxGrid1DBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean );
begin
  if sp_zb.RecordCount <> 0 then
    if sp_zb.FieldByName( 'tybz' ).asstring = '是' then
    begin
      ACanvas.Brush.Color := cllime;
      ACanvas.Font.Color := clblue;
    end;
end;

procedure TFrm_mzcfcx_single.cxGrid1DBTableView1KeyDown( Sender: TObject; var Key: Word;
  Shift: TShiftState );
begin
  if ( Key = 40 ) or ( Key = 38 ) then
    key := 0;
end;

procedure TFrm_mzcfcx_single.cxGrid1DBTableView1tmhCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean );
begin
  ACanvas.Brush.Color := clGreen;
end;

procedure TFrm_mzcfcx_single.cxGrid2DBTableView1xhCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean );
begin
  ACanvas.Brush.Color := clGreen;
end;

procedure TFrm_mzcfcx_single.BitBtn2Click( Sender: TObject );
var
  sczt: string;
begin
  if sp_zb.Active then
    if sp_zb.RecordCount >= 1 then
      if trim( mbmc.Text ) = '' then
      begin
        application.MessageBox( '提示:模板名称不能为空!', '提示', 0 + 48 );
        mbmc.SetFocus;
        mbmc.SelectAll;
      end
      else
      begin
        sp_save_cfmb.Active := false;
        sp_save_cfmb.Parameters.ParamByName( '@cfbh' ).Value := sp_zb.FieldByName( 'cfbh' ).AsString;
        sp_save_cfmb.Parameters.ParamByName( '@mbmc' ).Value := mbmc.Text;
        sp_save_cfmb.Parameters.ParamByName( '@czy' ).Value := pub_czydm;
        sp_save_cfmb.Parameters.ParamByName( '@ksdm' ).Value := pub_ksdm;
        sp_save_cfmb.Parameters.ParamByName( '@pym' ).Value := getpym( mbmc.Text );
        sp_save_cfmb.Parameters.ParamByName( '@sczt' ).Value := '';
        sp_save_cfmb.ExecProc;
        sczt := sp_save_cfmb.Parameters.ParamByName( '@sczt' ).Value;
        application.MessageBox( pchar( sczt ), '提示', 0 + 48 );
        mbmc.Clear;
      end;
end;

procedure TFrm_mzcfcx_single.b_closeClick( Sender: TObject );
begin
  Close;
end;

procedure TFrm_mzcfcx_single.B_cxClick( Sender: TObject );
var
  cfbh: string;
  ksrq, jsrq: string;
begin
  rb1.Checked := true;
  p_cxtj := '';
  if radio1.Checked then
  begin
    ksrq := formatdatetime( 'yyyy-mm-dd', date1.datetime );
    jsrq := formatdatetime( 'yyyy-mm-dd', date2.datetime );
    p_cxtj := ' and (convert(char(10),hjrq,120)>=' + '''' + ksrq + '''';
    p_cxtj := p_cxtj + ' and convert(char(10),hjrq,120)<dateadd(day,1,' + '''' + jsrq + '''' + ')' + ')';
  end;
  if radio2.Checked then
  begin
    try
      strtoint( trim( e_tmh.text ) );
    except
      application.MessageBox( '请输入正确的门诊号!', '注意', 16 );
      e_tmh.SelectAll;
      e_tmh.SetFocus;
      abort;
    end;
    p_cxtj := ' and (zb.tmh like' + '''' + '%' + e_tmh.text + '''' + ')';
  end;
  if radio3.Checked then
  begin
    if ( trim( e_bh1.text ) = '' ) or ( trim( e_bh2.text ) = '' ) or ( trim( e_bh3.text ) = '' ) then
    begin
      application.MessageBox( '请输入处方号!', '注意', 16 );
      e_bh3.SetFocus;
      abort;
    end;
    try
      cfbh := trim( e_bh1.text ) + trim( e_bh2.text ) + formatex( strtoint( e_bh3.text ), 6 );
    except
      application.MessageBox( '请输入正确的处方号!', '注意', 16 );
      e_bh3.SetFocus;
      abort;
    end;
    p_cxtj := ' and cfbh=' + '''' + cfbh + '''';
  end;
  if radio4.Checked then
    p_cxtj := ' and (zb.brxm like' + '''' + e_xm.text + '%' + '''' + ')';
  if radio5.Checked then begin
    p_cxtj := ' and zb.ysdm='''+trim(e_ys.Text)+'''';

  end;

  sp_zb.close;
  sp_zb.Filtered := false;
  if ( UserName = 'sys_mzsf' ) or ( UserName = 'sys_fwzx' ) then
  begin
    sp_zb.Parameters.ParamByName( '@ksdm' ).value := '';
  end
  else
  begin
    sp_zb.Parameters.ParamByName( '@ksdm' ).value := pub_ksdm;
  end;
  sp_zb.Parameters.ParamByName( '@cxtj' ).Value := p_cxtj;
  if check1.Checked then //查询历史数据
    p_cxbf := 1
  else
    p_cxbf := 0;
  sp_zb.Parameters.ParamByName( '@cxbf' ).Value := p_cxbf;
  prv_rep := False;
  sp_zb.open;
  prv_rep := True;

  sp_mx.close;
  sp_mx.Parameters.ParamByName( '@cfbh' ).value := Trim( sp_zb.FieldByName( 'cfbh' ).AsString );
  sp_mx.Parameters.ParamByName( '@cflb' ).value := p_cxbf;
  sp_mx.open;

  if sp_zb.RecordCount = 0 then
  begin
    sp_zb.close;
    if radio1.Checked then
    begin
      application.MessageBox( '没有该日期范围内的处方记录!', '注意', 16 );
      date1.SetFocus;
      abort;
    end;
    if radio2.Checked then
    begin
      application.MessageBox( '没有该门诊号的处方记录!', '注意', 16 );
      e_tmh.SelectAll;
      e_tmh.SetFocus;
      abort;
    end;
    if radio3.Checked then
    begin
      application.MessageBox( '没有该处方号的处方记录!', '注意', 16 );
      e_bh3.SelectAll;
      e_bh3.SetFocus;
      abort;
    end;
  end
  else
  begin
    cxGrid1.SetFocus;
  end;

end;

procedure TFrm_mzcfcx_single.N3Click( Sender: TObject );
begin
  //  application.CreateForm(Tfrm_select, frm_select);
  //  try
  //    frm_select.select_grid := dbgrid1;
  //    frm_select.ShowModal;
  //  finally
  //    frm_select.free;
  //  end;
end;

procedure TFrm_mzcfcx_single.e_bh3KeyPress( Sender: TObject; var Key: Char );
begin
  if key = #13 then
    b_cx.SetFocus;
end;

procedure TFrm_mzcfcx_single.E_sjbhKeyPress( Sender: TObject; var Key: Char );
begin
  if key = #13 then
    b_cx.SetFocus;
end;

procedure TFrm_mzcfcx_single.e_bh1KeyPress( Sender: TObject; var Key: Char );
begin
  if key = #13 then
    e_bh2.SetFocus;
end;

procedure TFrm_mzcfcx_single.e_bh2KeyPress( Sender: TObject; var Key: Char );
begin
  if key = #13 then
    e_bh3.SetFocus;
end;

procedure TFrm_mzcfcx_single.N6Click( Sender: TObject );
begin
  frm_print_xyjkd.Lb_tmh.Caption := '门诊号:  ' + trim( sp_zb.fieldbyname( 'tmh' ).asstring );
  frm_print_xyjkd.Lb_cfbh.Caption := '处方号:  ' + trim( sp_zb.fieldbyname( 'cfbh' ).asstring );
  frm_print_xyjkd.Lb_je.Caption := '西药金额:  ' + floattostr( sp_zb['sszje'] );
  frm_print_xyjkd.lb_czy.Caption := '操作员:  ' + pub_czydm;
  frm_print_xyjkd.QuickRep1.print;
end;

procedure TFrm_mzcfcx_single.N8Click( Sender: TObject );
begin
  sp_zb.Filtered := false;
  sp_zb.Filter := 'fybz=' + '''' + '是' + '''';
  sp_zb.Filtered := true;
end;

procedure TFrm_mzcfcx_single.N9Click( Sender: TObject );
begin
  sp_zb.Filtered := false;
  sp_zb.Filter := 'fybz=' + '''' + '否' + '''';
  sp_zb.Filtered := true;
end;

procedure TFrm_mzcfcx_single.N10Click( Sender: TObject );
begin
  sp_zb.Filtered := false;
end;

procedure TFrm_mzcfcx_single.E_tmhChange( Sender: TObject );
begin
  radio2.Checked := true;
  radio2.Font.Color := clred;
  radio1.Font.Color := clblack;
  radio3.Font.Color := clblack;
  radio4.Font.Color := clblack;
  radio5.Font.Color := clblack;
  sp_zb.close;
  sp_mx.close;
end;

procedure TFrm_mzcfcx_single.E_tmhKeyPress( Sender: TObject; var Key: Char );
begin
  if key = #13 then
    b_cx.SetFocus;
end;

procedure TFrm_mzcfcx_single.e_xmChange(Sender: TObject);
begin
  radio4.Checked := true;
  radio4.Font.Color := clred;
  radio1.Font.Color := clblack;
  radio2.Font.Color := clblack;
  radio3.Font.Color := clblack;
  radio5.Font.Color := clblack;
  sp_zb.close;
  sp_mx.close;
end;

procedure TFrm_mzcfcx_single.RB2Click( Sender: TObject );
begin
  sp_zb.Filtered := false;
  sp_zb.Filter := 'fybz=' + '''' + '是' + '''';
  sp_zb.Filtered := true;
end;

procedure TFrm_mzcfcx_single.RB3Click( Sender: TObject );
begin
  sp_zb.Filtered := false;
  sp_zb.Filter := 'fybz=' + '''' + '否' + '''';
  sp_zb.Filtered := true;
end;

procedure TFrm_mzcfcx_single.RB4Click( Sender: TObject );
begin
  sp_zb.Filtered := false;
  sp_zb.Filter := 'tfbz=' + '''' + '是' + '''';
  sp_zb.Filtered := true;
end;

procedure TFrm_mzcfcx_single.RB5Click( Sender: TObject );
begin
  sp_zb.Filtered := false;
  sp_zb.Filter := 'tybz=' + '''' + '是' + '''';
  sp_zb.Filtered := true;
end;

procedure TFrm_mzcfcx_single.RB1Click( Sender: TObject );
begin
  sp_zb.Filtered := false;
end;

procedure TFrm_mzcfcx_single.QRDBText1Print( sender: TObject; var Value: string );
begin
  value := '  ' + trim( value ) + '㊣';
end;

procedure TFrm_mzcfcx_single.QRDBText3Print( sender: TObject; var Value: string );
begin
  value := trim( value ) + trim( sp_mx.FieldByName( 'ypdw' ).asstring );
end;

procedure TFrm_mzcfcx_single.QRDBText5Print( sender: TObject; var Value: string );
begin
  Value := Trim( Value );
end;

procedure TFrm_mzcfcx_single.QRSubDetail1NeedData( Sender: TObject;
  var MoreData: Boolean );
  procedure SetCaption( id: Integer; const mc, sl, dw, dj, yf: string );
  var
    aControl: TControl;
  begin
    aControl := QRSubDetail1.FindChildControl( 'QRL_ypmc' + IntToStr( id ) );
    if aControl is TQRLabel then
      TQRLabel( aControl ).Caption := mc;
    aControl := QRSubDetail1.FindChildControl( 'QRL_ypsl' + IntToStr( id ) );
    if aControl is TQRLabel then
      TQRLabel( aControl ).Caption := sl;
    aControl := QRSubDetail1.FindChildControl( 'QRL_ypdw' + IntToStr( id ) );
    if aControl is TQRLabel then
      TQRLabel( aControl ).Caption := dw;
    aControl := QRSubDetail1.FindChildControl( 'QRL_ypdj' + IntToStr( id ) );
    if aControl is TQRLabel then
      TQRLabel( aControl ).Caption := dj;
    aControl := QRSubDetail1.FindChildControl( 'QRL_yf' + IntToStr( id ) );
    if aControl is TQRLabel then
      TQRLabel( aControl ).Caption := yf;
  end;
var
  i: Integer;
begin
  MoreData := not sp_mx.Eof;

  for I := 1 to 4 do
  begin
    if sp_mx.Eof then
      SetCaption( i, ' ', ' ', ' ', ' ', ' ' )
    else
      SetCaption( i, Trim( sp_mx.FieldByName( 'ypmc' ).AsString ), IntToStr( sp_mx.FieldByName( 'ypsl' ).AsInteger ),
        Trim( sp_mx.FieldByName( 'ypdw' ).AsString ), FormatFloat( '0.000', sp_mx.FieldByName( 'ypje' ).AsFloat ),
        Trim( sp_mx.FieldByName( 'yplb' ).AsString ) );
    sp_mx.Next;
  end;

end;

procedure TFrm_mzcfcx_single.BitBtn1Click( Sender: TObject );
  function sum_data( S: string ): Real;
  begin
    Result := 0.00;
    sp_mx.Filtered := False;
    sp_mx.Filter := 'sfjylyp=' + #39 + S + #39;
    sp_mx.Filtered := True;
    SP_mx.First;
    while not SP_mx.Eof do
    begin
      Result := sp_mx.FieldByName( 'ypje' ).AsFloat + Result;
      sp_mx.Next;
    end;
  end;
var
  v_jlhj, v_ylhj, v_zfhj: Real;
  v_fyczymc: string;
begin
  if not sp_zb.Active then Exit;
  if not SP_mx.Active then Exit;
  if SP_mx.RecordCount <= 0 then Exit;
  if ( username <> 'sys_zyyf' ) then
  begin
    if sp_zb.FieldByName( 'cflb' ).AsString = '门诊草药' then
      frm_print_mzcf.pub_print_mzcf_zy( )
    else
      frm_print_mzcf.pub_print_mzcf( );
  end
  else
  begin
    v_fyczymc := Trim( sp_zb.FieldByName( 'fyczy' ).AsString );
    if sp_zb.FieldByName( 'cflb' ).AsString = '门诊草药' then
    begin
      sp_mx.First;
      QRL_yymc_zy.Caption := trim( pub_yymc );
      //      QRLabel22.Caption := '(' + trim(ckh.text) + ')';
      if pub_yydm = '0046' then
        QRL_fyr_zy.Caption := '发药:'
      else
        QRL_fyr_zy.Caption := '发药：' + v_fyczymc;
      QRL_fhr_zy.Caption := '配方：' + v_fyczymc;
      QRL_ysxm_ysxm.Caption := '医生：' + sp_zb.fieldbyname( 'ysxm' ).asstring;
      if cb_yl.Checked then
        quickrep_zy.Preview
      else
        quickrep_zy.Print;
    end
    else
    begin
      v_jlhj := sum_data( '甲' );
      v_ylhj := sum_data( '乙' );
      v_zfhj := sum_data( '自' );
      sp_mx.Filtered := False;
      sp_mx.Filter := '';

      QRL_dyrq.Caption := '打印日期:' + FormatDateTime( 'yyyy-mm-dd hh:mm:ss', Frm_func.curr_date );
      yymc.Caption := trim( pub_yymc ) + '门诊处方';
      if pub_yydm = '0046' then
        fyr.Caption := '发药:'
      else
        fyr.Caption := '发药：' + v_fyczymc;
      ysxm.Caption := '医生：' + trim( sp_zb.fieldbyname( 'ysxm' ).asstring );
      fhr.Caption := '配方：' + v_fyczymc;
      QRL_jlhj.Caption := '甲类合计:' + FormatFloat( '0.00', v_jlhj );
      QRL_ylhj.Caption := '乙类合计:' + FormatFloat( '0.00', v_ylhj );
      QRL_zfhj.Caption := '自费合计:' + FormatFloat( '0.00', v_zfhj );
      QRDBText20.Enabled := not ( pub_yydm = '0051' );
      QRL_ylhj.Enabled := QRDBText20.Enabled;
      QRL_zfhj.Enabled := QRDBText20.Enabled;
      if not QRDBText20.Enabled then
        QRL_jlhj.Caption := '合计:' + FormatFloat( '0.00', v_jlhj + v_ylhj + v_zfhj );
      if cb_yl.Checked then
        QuickRep1.Preview
      else
        QuickRep1.Print;
    end;
  end;
end;
initialization
  RegisterClass( TFrm_mzcfcx_single );
end.

