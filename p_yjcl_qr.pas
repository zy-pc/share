unit p_yjcl_qr;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DBCtrls, ComCtrls, DB, ADODB, GridsEh, DBGridEh,
  ExtCtrls, QuickRpt, QRCtrls,cxCheckBox, OleServer, grproLib_TLB, Menus,
  p_obj, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, cxDBData, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxRadioGroup, cxContainer, cxGroupBox, cxTextEdit, AppEvnts, DBGridEhGrouping;

type
  Tfrm_yjcl_qr = class( TForm )
    qry_fyqk1: TADOQuery;
    ds_fyqk: TDataSource;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    qry_clqk: TADOQuery;
    ts1: TTabSheet;
    pnl1: TPanel;
    edt_lsh: TEdit;
    BBtn_qr: TBitBtn;
    BBtn_qx: TBitBtn;
    btn_cx: TBitBtn;
    dbgrdh1: TDBGridEh;
    qry_clqk_qx: TADOQuery;
    qry_qf_qx: TADOQuery;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    Panel1: TPanel;
    ds_cxqf: TDataSource;
    cxGrid1DBTableView1tmh: TcxGridDBColumn;
    cxGrid1DBTableView1sjbh: TcxGridDBColumn;
    cxGrid1DBTableView1id_mx: TcxGridDBColumn;
    cxGrid1DBTableView1brxm: TcxGridDBColumn;
    cxGrid1DBTableView1fymc: TcxGridDBColumn;
    cxGrid1DBTableView1fysl: TcxGridDBColumn;
    cxGrid1DBTableView1ssje: TcxGridDBColumn;
    cxGrid1DBTableView1kdksmc: TcxGridDBColumn;
    cxGrid1DBTableView1czksmc_y: TcxGridDBColumn;
    cxGrid1DBTableView1czksmc_x: TcxGridDBColumn;
    cxGrid1DBTableView1lb: TcxGridDBColumn;
    cxGrid1DBTableView1czymc: TcxGridDBColumn;
    cxGrid1DBTableView1qrsj: TcxGridDBColumn;
    cxGrid1DBTableView1zfbz: TcxGridDBColumn;
    Label9: TLabel;
    Label10: TLabel;
    dtp1: TDateTimePicker;
    dtp2: TDateTimePicker;
    BitBtn1: TBitBtn;
    Memo1: TMemo;
    sp_yjqf: TADOStoredProc;
    sp_qxqf: TADOStoredProc;
    BBtn_exit: TBitBtn;
    cxGrid1DBTableView1qxczymc: TcxGridDBColumn;
    sp_fyqk: TADOStoredProc;
    lb_id: TRadioButton;
    lb_zyh: TRadioButton;
    lb_sjh: TRadioButton;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    cxGrid2DBTableView1tmh: TcxGridDBColumn;
    cxGrid2DBTableView1brxm: TcxGridDBColumn;
    cxGrid2DBTableView1brxb: TcxGridDBColumn;
    cxGrid2DBTableView1brnl: TcxGridDBColumn;
    cxGrid2DBTableView1ryzd: TcxGridDBColumn;
    cxGrid2DBTableView1sjbh: TcxGridDBColumn;
    cxGrid2DBTableView1fysl: TcxGridDBColumn;
    cxGrid2DBTableView1ssje: TcxGridDBColumn;
    cxGrid2DBTableView1fymc: TcxGridDBColumn;
    cxGrid2DBTableView1czksmc: TcxGridDBColumn;
    cxGrid2DBTableView1kdksmc: TcxGridDBColumn;
    cxGrid2DBTableView1qrbz: TcxGridDBColumn;
    cxGrid2DBTableView1czymc: TcxGridDBColumn;
    cxGrid2DBTableView1qrsj: TcxGridDBColumn;
    cxGrid2DBTableView1lb: TcxGridDBColumn;
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
    BitBtn2: TBitBtn;
    lb_tmh: TRadioButton;
    sp_cxqf: TADOStoredProc;
    BitBtn3: TBitBtn;
    DateTimePicker1: TDateTimePicker;
    QuickRep1: TQuickRep;
    DetailBand2: TQRBand;
    qrl_xm: TQRLabel;
    qrl_xb: TQRLabel;
    qrl_yymc: TQRLabel;
    qrl_nl: TQRLabel;
    qrl_tmh: TQRLabel;
    qrl_zd: TQRLabel;
    qrl_sjh: TQRLabel;
    qrl_lb: TQRLabel;
    qrl_ks: TQRLabel;
    qrl_ch: TQRLabel;
    qrl_cs1: TQRLabel;
    qrl_je1: TQRLabel;
    qrl_cs2: TQRLabel;
    qrl_xmmc2: TQRLabel;
    qrl_cs3: TQRLabel;
    qrl_je3: TQRLabel;
    qrl_xmmc3: TQRLabel;
    QRShape1: TQRShape;
    qrl_ys: TQRLabel;
    qrl_rq: TQRLabel;
    QRShape2: TQRShape;
    qrl_xmmc1: TQRLabel;
    qrl_je2: TQRLabel;
    GridppReport1: TGridppReport;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    cxGrid2DBTableView1Column1: TcxGridDBColumn;
    cxGrid2DBTableView1Column2: TcxGridDBColumn;
    cxGrid2DBTableView1Column3: TcxGridDBColumn;
    ApplicationEvents1: TApplicationEvents;
    procedure edt_lshKeyDown( Sender: TObject; var Key: Word;
      Shift: TShiftState );
    procedure FormShow( Sender: TObject );
    procedure BBtn_exitClick( Sender: TObject );
    procedure BBtn_qrClick( Sender: TObject );
    procedure BBtn_qxClick( Sender: TObject );
    procedure btn_cxClick( Sender: TObject );
    procedure dbgrdh1DrawColumnCell( Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState );
    procedure BitBtn1Click( Sender: TObject );
    procedure cxGrid1DBTableView1CustomDrawCell( Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean );
    procedure sp_fyqkAfterScroll( DataSet: TDataSet );
    procedure BitBtn2Click( Sender: TObject );
    procedure BitBtn3Click( Sender: TObject );
    procedure lb_idClick( Sender: TObject );
    procedure lb_sjhClick( Sender: TObject );
    procedure N1Click( Sender: TObject );
    procedure N3Click( Sender: TObject );
    procedure N4Click( Sender: TObject );
    procedure cxGrid2DBTableView1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
  private
    jysqdBb: TCusBb;
    { Private declarations }
    che_lb: Integer;
    function func_Is_cl( const v_lsh, v_id: Integer; const v_lb: string ): Boolean; //是否已经处理
    function func_Is_bksfy( const v_lsh, v_id: Integer; const v_lb: string ): Boolean; //是否本科室已经确费
    procedure proc_add_yjqr( v_lb: string; v_sjbh, v_id_mx: Integer ); //确认
    procedure proc_zf_yjqr( v_lb: string; v_sjbh, v_id_mx: Integer );
    procedure OnMouseWheel_yzzx(var Msg: TMsg; var Handled: Boolean); //作废
  public
    { Public declarations }
  end;

var
  frm_yjcl_qr: Tfrm_yjcl_qr;

implementation

uses p_dm, p_func, p_dzbl_main, p_Makvar_tyjf;

{$R *.dfm}

procedure Tfrm_yjcl_qr.BBtn_exitClick( Sender: TObject );
begin
  Close;
end;

procedure Tfrm_yjcl_qr.BBtn_qrClick( Sender: TObject );
var
  v_lsh, v_id_mx: Integer;
  v_lb: string;
begin
  BBtn_qr.Enabled := false;
  if sp_fyqk.Active and ( sp_fyqk.RecordCount >= 1 ) then
  begin
    v_lb := sp_fyqk.FieldByName( 'lb' ).AsString;
    if v_lb = '门诊' then
    begin
      v_lsh := sp_fyqk.FieldByName( 'sjbh' ).AsInteger;
      v_id_mx := -1;
    end
    else
    begin
      v_lsh := sp_fyqk.FieldByName( 'id' ).AsInteger;
      v_id_mx := sp_fyqk.FieldByName( 'id' ).AsInteger;
    end;
    if func_Is_cl( v_lsh, v_id_mx, v_lb ) then
      Application.MessageBox( '提示:该流水号或收据号费用已经处理!', '提示', 16 )
    else
    begin
      proc_add_yjqr( v_lb, v_lsh, v_id_mx );
      edt_lsh.SetFocus;
      btn_cx.Click;
    end;
  end;
end;

procedure Tfrm_yjcl_qr.BBtn_qxClick( Sender: TObject );
var
  v_lsh, v_id_mx: Integer;
  v_lb: string;
begin
  BBtn_qx.Enabled := false;
  if sp_fyqk.Active then
    if sp_fyqk.RecordCount >= 1 then
    begin
      //    if not TryStrToInt(sp_fyqk.FieldByName('sjbh').AsString,v_lsh) then
      //    begin
      //      Application.MessageBox('住院确费不能取消！', '提示', MB_OK +
      //        MB_ICONSTOP);
      //      Exit;
      //    end;
      //    if True then
      v_lb := sp_fyqk.FieldByName( 'lb' ).AsString;
      if v_lb = '住院' then
        v_id_mx := sp_fyqk.FieldByName( 'id_mx' ).AsInteger
      else begin
        v_id_mx := sp_fyqk.FieldByName( 'id' ).AsInteger;
        v_lsh := sp_fyqk.FieldByName( 'sjbh' ).AsInteger;
      end;


      if func_Is_bksfy( v_lsh, v_id_mx, v_lb ) then
        Application.MessageBox( '提示:该流水号已经还未处理或不属于本科室,不用取消确认!', '提示', MB_ICONINFORMATION )
      else
      begin
        proc_zf_yjqr( v_lb, v_lsh, v_id_mx );
        edt_lsh.Text := IntToStr( v_lsh );
        edt_lsh.SelectAll;
        edt_lsh.SetFocus;
        edt_lsh.Perform( WM_Keydown, 13, 0 );
      end;
    end;
end;

procedure Tfrm_yjcl_qr.BitBtn1Click( Sender: TObject );
begin
  sp_cxqf.Close;
  sp_cxqf.Parameters.ParamByName( '@ksrq' ).Value := formatdatetime( 'yyyymmdd', dtp1.Date );
  sp_cxqf.Parameters.ParamByName( '@jsrq' ).Value := formatdatetime( 'yyyymmdd', dtp2.Date );
  sp_cxqf.Parameters.ParamByName( '@czks' ).Value := pub_ksdm;
  sp_cxqf.Parameters.ParamByName( '@lb' ).Value := '1';
  sp_cxqf.Open;
end;

procedure Tfrm_yjcl_qr.BitBtn2Click( Sender: TObject );
begin
  sp_cxqf.Close;
  sp_cxqf.Parameters.ParamByName( '@ksrq' ).Value := formatdatetime( 'yyyymmdd', dtp1.Date );
  sp_cxqf.Parameters.ParamByName( '@jsrq' ).Value := formatdatetime( 'yyyymmdd', dtp2.Date );
  sp_cxqf.Parameters.ParamByName( '@czks' ).Value := pub_ksdm;
  sp_cxqf.Parameters.ParamByName( '@lb' ).Value := '2';
  sp_cxqf.Open;
  if sp_cxqf.RecordCount > 0 then
  begin
    while not sp_cxqf.eof do
    begin
      qrl_yymc.Caption := pub_yymc + '检查单';
      qrl_tmh.Caption := '条码号:' + sp_cxqf.FieldByName( 'tmh' ).AsString;
      qrl_lb.Caption := sp_cxqf.FieldByName( 'lb' ).AsString;
      qrl_xm.Caption := '姓名:' + sp_cxqf.FieldByName( 'brxm' ).AsString;
      qrl_xb.Caption := '性别:' + sp_cxqf.FieldByName( 'brxb' ).AsString;
      qrl_nl.Caption := '年龄:' + sp_cxqf.FieldByName( 'brnl' ).AsString;
      qrl_ks.Caption := '科室:' + sp_cxqf.FieldByName( 'ryks' ).AsString;
      qrl_ch.Caption := '床号:' + sp_cxqf.FieldByName( 'bch' ).AsString;
      qrl_zd.Caption := '诊断:' + sp_cxqf.FieldByName( 'zdmc' ).AsString;
      qrl_sjh.Caption := '收据号:' + sp_cxqf.FieldByName( 'sjbh' ).AsString;
      qrl_ys.Caption := '开单医生:' + sp_cxqf.FieldByName( 'kdysmc' ).AsString;
      qrl_rq.Caption := sp_cxqf.FieldByName( 'qrsj' ).AsString;

      qrl_xmmc1.Caption := '费用:' + sp_cxqf.FieldByName( 'fymc' ).AsString;
      qrl_cs1.Caption := '数量:' + sp_cxqf.FieldByName( 'fysl' ).AsString;
      qrl_je1.Caption := '金额:' + sp_cxqf.FieldByName( 'fyje' ).AsString;

      if not sp_cxqf.Eof then
      begin
        sp_cxqf.Next;
        qrl_xmmc2.Caption := '费用:' + sp_cxqf.FieldByName( 'fymc' ).AsString;
        qrl_cs2.Caption := '数量:' + sp_cxqf.FieldByName( 'fysl' ).AsString;
        qrl_je2.Caption := '金额:' + sp_cxqf.FieldByName( 'fyje' ).AsString;
      end
      else
      begin
        qrl_xmmc2.Caption := '';
        qrl_cs2.Caption := '';
        qrl_je2.Caption := '';
      end;
      if not sp_cxqf.Eof then
      begin
        sp_cxqf.Next;
        qrl_xmmc3.Caption := '费用:' + sp_cxqf.FieldByName( 'fymc' ).AsString;
        qrl_cs3.Caption := '数量:' + sp_cxqf.FieldByName( 'fysl' ).AsString;
        qrl_je3.Caption := '金额:' + sp_cxqf.FieldByName( 'fyje' ).AsString;
      end
      else
      begin
        qrl_xmmc3.Caption := '';
        qrl_cs3.Caption := '';
        qrl_je3.Caption := '';
      end;
      QuickRep1.Print;
      if not sp_cxqf.Eof then
        sp_cxqf.Next;
    end;
  end
  else
  begin
    Application.MessageBox( '提示:本科室此段时间内无检查项目!', '提示', MB_ICONINFORMATION );
  end;
  sp_cxqf.Close;
  sp_cxqf.Parameters.ParamByName( '@ksrq' ).Value := formatdatetime( 'yyyymmdd', dtp1.Date );
  sp_cxqf.Parameters.ParamByName( '@jsrq' ).Value := formatdatetime( 'yyyymmdd', dtp2.Date );
  sp_cxqf.Parameters.ParamByName( '@czks' ).Value := pub_ksdm;
  sp_cxqf.Parameters.ParamByName( '@lb' ).Value := '1';
  sp_cxqf.Open;
end;

procedure Tfrm_yjcl_qr.BitBtn3Click( Sender: TObject );
begin
  pub_tmh := sp_fyqk.FieldByName( 'tmh' ).AsString;
  DM_data.qry_pub.Close;
  DM_data.qry_pub.SQL.text := 'select * from zysf_zydj where tmh=' + '''' + pub_tmh + '''' + ' order by ryrq desc';
  DM_data.qry_pub.Open;
  pub_zyh := DM_data.qry_pub.FieldByName( 'zyh' ).AsString;
  application.CreateForm( Tfrm_dzbl_main, frm_dzbl_main );
  try
    frm_dzbl_main.ShowModal;
  finally
    pub_tmh := '';
    pub_zyh := '';
    frm_dzbl_main.free;
  end;
end;

procedure Tfrm_yjcl_qr.btn_cxClick( Sender: TObject );
begin
  if ( not lb_id.Checked ) and ( not lb_sjh.Checked ) and ( not lb_tmh.Checked ) and ( not lb_zyh.Checked ) then
  begin
    Application.MessageBox( '提示:请选择费用类别!', '提示', MB_ICONINFORMATION );
    lb_id.SetFocus;
    Abort;
  end;
  sp_fyqk.Close;
  sp_fyqk.Parameters.ParamByName( '@v_sjbh' ).Value := edt_lsh.Text;
  if lb_id.Checked then
  begin
    che_lb := 1;
    sp_fyqk.Parameters.ParamByName( '@v_sjbh' ).Value := FormatDateTime( 'yyyyMMdd', DateTimePicker1.DateTime );
  end
  else
    if lb_sjh.Checked then
      che_lb := 2
    else
      if lb_tmh.Checked then
        che_lb := 3
      else
        if lb_zyh.Checked then
          che_lb := 4;
  sp_fyqk.Parameters.ParamByName( '@ksdm' ).Value := pub_ksdm;
  sp_fyqk.Parameters.ParamByName( '@lb' ).Value := che_lb;
  sp_fyqk.Open;
  if sp_fyqk.RecordCount < 1 then
  begin
    Application.MessageBox( '提示:没有该流水号或收据号或住院卡号对应费用!', '提示', MB_ICONINFORMATION );
    edt_lsh.SelectAll;
    edt_lsh.SetFocus;
  end;

end;

procedure Tfrm_yjcl_qr.cxGrid1DBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean );
begin
  if trim( AViewInfo.RecordViewInfo.GridRecord.Values[10] ) = '门诊' then
    ACanvas.Brush.Color := clskyBlue;
  if AViewInfo.RecordViewInfo.GridRecord.Values[13] then
  begin
    ACanvas.Font.Color := clred;
  end;
end;

{-------------------------------------------------------------------------------
  过程名:    Tfrm_yjcl_qr.cxGrid2DBTableView1CustomDrawCell
  作者:      yangshuai
  日期:      2015.12.15
  参数:      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean
  返回值:    无
-------------------------------------------------------------------------------}
procedure Tfrm_yjcl_qr.cxGrid2DBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if trim( AViewInfo.RecordViewInfo.GridRecord.Values[13] ) = '是' then
  ACanvas.Font.Color := clred;
//  ACanvas.Brush.Color := clskyBlue;
//  if AViewInfo.RecordViewInfo.GridRecord.Values[13] = '是' then
//  begin
//   ACanvas.Font.Color := clred;
//  end;
end;

procedure Tfrm_yjcl_qr.dbgrdh1DrawColumnCell( Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumnEh; State: TGridDrawState );
begin
  if sp_fyqk.fieldbyname( 'qrbz' ).AsString = '是' then
  begin
    dbgrdh1.Canvas.Brush.Color := clred;
    dbgrdh1.Canvas.Font.Color := clwhite;
  end;
  dbgrdh1.DefaultDrawColumnCell( Rect, DataCol, Column, State );
end;

procedure Tfrm_yjcl_qr.edt_lshKeyDown( Sender: TObject; var Key: Word;
  Shift: TShiftState );
begin
  if key = 13 then
  begin
    btn_cx.Click;
  end;
end;

procedure Tfrm_yjcl_qr.FormShow( Sender: TObject );
begin
  ApplicationEvents1.OnMessage := nil;
  initKg;
  if pub_yydm = '0020' then
    BitBtn3.Visible := True
  else
    BitBtn3.Visible := False;
  QuickRep1.Visible := False;
  dtp1.date := frm_func.curr_date;
  dtp2.date := frm_func.curr_date;
  pagecontrol1.activepage := TabSheet1;
  lb_tmh.Checked := True;
  edt_lsh.SetFocus;
end;

function Tfrm_yjcl_qr.func_Is_bksfy( const v_lsh, v_id: Integer;
  const v_lb: string ): Boolean;
begin
  with qry_clqk_qx do
  begin
    Close;
    if v_lb = '门诊' then
      sql.Text := 'select * from cwk_yjqfmx where sjbh=' + inttostr( v_lsh ) + ' and zfbz=0 and czks_x= ' + #39 + pub_ksdm + #39
    else
      sql.Text := 'select * from cwk_yjqfmx where id_mx=' + inttostr( v_id ) + ' and zfbz=0 and czks_x= ' + #39 + pub_ksdm + #39;
    Open;
    Result := qry_clqk_qx.isempty;
  end;
end;

function Tfrm_yjcl_qr.func_Is_cl( const v_lsh, v_id: Integer; const v_lb: string ): Boolean;
begin
  with qry_clqk do
  begin
    Close;
    if v_lb = '门诊' then
      sql.Text := 'select * from cwk_yjqfmx where sjbh=' + inttostr( v_lsh ) + ' and zfbz=0 '
    else
      sql.Text := 'select * from cwk_yjqfmx where id_mx=' + inttostr( v_id ) + ' and zfbz=0 ';
    Open;
    Result := ( RecordCount >= 1 );
  end;
end;

procedure Tfrm_yjcl_qr.lb_idClick( Sender: TObject );
begin
  DateTimePicker1.Visible := True;
  DateTimePicker1.Date := Date;
end;

procedure Tfrm_yjcl_qr.lb_sjhClick( Sender: TObject );
begin
  DateTimePicker1.Visible := False;
end;

procedure Tfrm_yjcl_qr.N1Click( Sender: TObject );
var
  res: string;
  I: Integer;
begin
  //检验申请单打印
  if jysqdBb = nil then
  begin
    jysqdBb := TCusBb.Create;
    jysqdBb.GetBbByDM( jysqdBb, '031602' );
    GridppReport1.LoadFromStr( jysqdBb.nr );
  end;
  res := frm_func.SetCReportXtcs( GridppReport1 );
  GridppReport1.ParameterByName( '姓名' ).Value := sp_fyqk.FieldByName( 'brxm' ).Value;
  GridppReport1.ParameterByName( '性别' ).Value := sp_fyqk.FieldByName( 'brxb' ).Value;
  GridppReport1.ParameterByName( '年龄' ).Value := sp_fyqk.FieldByName( 'brnl' ).Value;
  GridppReport1.ParameterByName( '条码号' ).Value := sp_fyqk.FieldByName( 'tmh' ).Value;
  GridppReport1.ParameterByName( '临床诊断' ).Value := sp_fyqk.FieldByName( 'ryzd' ).Value;
  GridppReport1.ParameterByName( '费用' ).Value := sp_fyqk.FieldByName( 'fymc' ).Value;

  //  sp_fyqk.Filter := 'sjbh='+trim(sp_fyqk.FieldByName('sjbh').AsString);
  //  sp_fyqk.Filtered := True;
  GridppReport1.ParameterByName( '标本' ).Value := '';
  GridppReport1.ParameterByName( '目的' ).Value := '';
  //  for I := 0 to sp_fyqk.RecordCount - 1 do begin
  GridppReport1.ParameterByName( '标本' ).Value := GridppReport1.ParameterByName( '标本' ).Value +
    sp_fyqk.FieldByName( 'jybb' ).Value + #10#13 + '     ';
  GridppReport1.ParameterByName( '目的' ).Value := GridppReport1.ParameterByName( '目的' ).Value +
    sp_fyqk.FieldByName( 'fymc' ).Value + #10#13 + '     ';
  //    sp_fyqk.Next;
  //  end;
  //  sp_fyqk.Filtered := False;
  GridppReport1.ParameterByName( '注意事项' ).Value := '';
  GridppReport1.ParameterByName( '医师签名' ).Value := '';
  GridppReport1.ParameterByName( '时间' ).Value := sp_fyqk.FieldByName( 'sfrq' ).Value;

  if res <> '1' then
  begin
    ShowMessage( res );
  end
  else
  begin
    GridppReport1.PrintPreview( False );
  end;
end;

procedure Tfrm_yjcl_qr.N3Click( Sender: TObject );
var
  v_lsh, v_id_mx: Integer;
  v_lb: string;
begin
  if Application.MessageBox( '确认当前页的全部费用？', '提示', MB_OKCANCEL +
    MB_ICONQUESTION ) = IDOK then
  begin
    if lb_id.Checked then
    begin
      Application.MessageBox( '不能按日期确认全部费用！', '错误', MB_OK +
        MB_ICONSTOP );
      exit;
    end;

    sp_fyqk.First;
    while not sp_fyqk.eof do
    begin
      v_lb := sp_fyqk.FieldByName( 'lb' ).AsString;
      if v_lb = '门诊' then
      begin
        v_lsh := sp_fyqk.FieldByName( 'sjbh' ).AsInteger;
        v_id_mx := -1;
      end
      else
      begin
        v_lsh := sp_fyqk.FieldByName( 'id' ).AsInteger;
        v_id_mx := sp_fyqk.FieldByName( 'id' ).AsInteger;
      end;

      if not func_Is_cl( v_lsh, v_id_mx, v_lb ) then
      begin
        proc_add_yjqr( v_lb, v_lsh, v_id_mx );
      end;
      sp_fyqk.Next;
    end;
    btn_cx.click;
  end;
end;
procedure Tfrm_yjcl_qr.OnMouseWheel_yzzx(var Msg: TMsg; var Handled: Boolean);
begin
  if Msg.message = WM_MouseWheel then
  begin
    if Msg.wParam < 0 then
      SendMessage(cxGrid1.Handle, WM_VSCROLL, SB_LINEDOWN, 0)
    else
      SendMessage(cxGrid1.Handle, WM_VSCROLL, SB_LINEUP, 0);
    Handled := True;
  end;
end;
procedure Tfrm_yjcl_qr.N4Click( Sender: TObject );
var
  i: Integer;
  v_lsh, v_id_mx: Integer;
  v_lb: string;
begin
  for i := 0 to cxGrid2DBTableView1.DataController.Controller.SelectedRecordCount - 1 do
  begin
    v_lb := cxGrid2DBTableView1.DataController.Controller.SelectedRecords[i].Values[1];
    if v_lb = '门诊' then
    begin
      v_lsh := cxGrid2DBTableView1.DataController.Controller.SelectedRecords[i].Values[3];
      v_id_mx := -1;
    end
    else
    begin
      v_lsh := cxGrid2DBTableView1.DataController.Controller.SelectedRecords[i].Values[0];
      v_id_mx := cxGrid2DBTableView1.DataController.Controller.SelectedRecords[i].Values[0];
    end;
    if not func_Is_cl( v_lsh, v_id_mx, v_lb ) then
    begin
      proc_add_yjqr( v_lb, v_lsh, v_id_mx );
    end;
  end;
  btn_cx.Click;
end;

procedure Tfrm_yjcl_qr.proc_zf_yjqr( v_lb: string; v_sjbh,
  v_id_mx: Integer );
var
  sctext: string;
begin
  sp_qxqf.Close;
  sp_qxqf.Parameters.ParamByName( '@brlb' ).Value := v_lb;
  sp_qxqf.Parameters.ParamByName( '@mzsjbh' ).Value := v_sjbh;
  sp_qxqf.Parameters.ParamByName( '@zyid' ).Value := v_id_mx;
  sp_qxqf.Parameters.ParamByName( '@czydm' ).Value := pub_czydm;
  sp_qxqf.Parameters.ParamByName( '@czymc' ).Value := pub_czyxm;
  sp_qxqf.Parameters.ParamByName( '@sc_cg' ).Value := '';
  sp_qxqf.ExecProc;
  sctext := sp_qxqf.Parameters.ParamByName( '@sc_cg' ).Value;
  if sctext = '1' then
    application.MessageBox( '取消确认处理成功!', '提示', 0 + 48 )
  else
    application.MessageBox( pchar( sctext ), '提示', 0 + 48 );

end;

procedure Tfrm_yjcl_qr.sp_fyqkAfterScroll( DataSet: TDataSet );
begin
  BBtn_qr.Enabled := not sp_fyqk.IsEmpty;
  BBtn_qx.Enabled := not sp_fyqk.IsEmpty;
end;

 

procedure Tfrm_yjcl_qr.proc_add_yjqr( v_lb: string; v_sjbh, v_id_mx: Integer );
var
  sctext: string;
begin
  sp_yjqf.Close;
  sp_yjqf.Parameters.ParamByName( '@brlb' ).Value := v_lb;
  sp_yjqf.Parameters.ParamByName( '@mzsjbh' ).Value := v_sjbh;
  sp_yjqf.Parameters.ParamByName( '@zyid' ).Value := v_id_mx;
  sp_yjqf.Parameters.ParamByName( '@czks' ).Value := pub_ksdm;
  sp_yjqf.Parameters.ParamByName( '@czydm' ).Value := pub_czydm;
  sp_yjqf.Parameters.ParamByName( '@czymc' ).Value := pub_czyxm;
  sp_yjqf.Parameters.ParamByName( '@czksmc' ).Value := pub_ksmc;
  sp_yjqf.Parameters.ParamByName( '@sc_cg' ).Value := '';
  sp_yjqf.ExecProc;
  sctext := sp_yjqf.Parameters.ParamByName( '@sc_cg' ).Value;
  //  sctext := '1';
  if sctext = '1' then
  begin
    if not qf_dyqfd then    //不打印确费单
    begin
      Exit;
    end;
    sp_cxqf.Close;
    sp_cxqf.Parameters.ParamByName( '@sjh' ).Value := v_sjbh;
    sp_cxqf.Parameters.ParamByName( '@idh' ).Value := v_id_mx;
    sp_cxqf.Parameters.ParamByName( '@lb' ).Value := '3';
    sp_cxqf.Open;
    sp_cxqf.first;
    while not sp_cxqf.Eof do
    begin
      qrl_yymc.Caption := pub_yymc + '检查单';
      qrl_tmh.Caption := '条码号:' + sp_cxqf.FieldByName( 'tmh' ).AsString;
      qrl_lb.Caption := sp_cxqf.FieldByName( 'lb' ).AsString;
      qrl_xm.Caption := '姓名:' + sp_cxqf.FieldByName( 'brxm' ).AsString;
      qrl_xb.Caption := '性别:' + sp_cxqf.FieldByName( 'brxb' ).AsString;
      qrl_nl.Caption := '年龄:' + sp_cxqf.FieldByName( 'brnl' ).AsString;
      qrl_ks.Caption := '科室:' + sp_cxqf.FieldByName( 'ryks' ).AsString;
      qrl_ch.Caption := '床号:' + sp_cxqf.FieldByName( 'bch' ).AsString;
      qrl_zd.Caption := '诊断:' + sp_cxqf.FieldByName( 'zdmc' ).AsString;
      qrl_sjh.Caption := '收据号:' + sp_cxqf.FieldByName( 'sjbh' ).AsString;
      qrl_ys.Caption := '开单医生:' + sp_cxqf.FieldByName( 'kdysmc' ).AsString;
      qrl_rq.Caption := sp_cxqf.FieldByName( 'qrsj' ).AsString;

      qrl_xmmc1.Caption := '费用:' + sp_cxqf.FieldByName( 'fymc' ).AsString;
      qrl_cs1.Caption := '数量:' + sp_cxqf.FieldByName( 'fysl' ).AsString;
      qrl_je1.Caption := '金额:' + sp_cxqf.FieldByName( 'fyje' ).AsString;
      sp_cxqf.Next;
      if not sp_cxqf.Eof then
      begin
        qrl_xmmc2.Caption := '费用:' + sp_cxqf.FieldByName( 'fymc' ).AsString;
        qrl_cs2.Caption := '数量:' + sp_cxqf.FieldByName( 'fysl' ).AsString;
        qrl_je2.Caption := '金额:' + sp_cxqf.FieldByName( 'fyje' ).AsString;
        sp_cxqf.Next;
      end
      else
      begin
        qrl_xmmc2.Caption := '';
        qrl_cs2.Caption := '';
        qrl_je2.Caption := '';
      end;
      if not sp_cxqf.Eof then
      begin

        qrl_xmmc3.Caption := '费用:' + sp_cxqf.FieldByName( 'fymc' ).AsString;
        qrl_cs3.Caption := '数量:' + sp_cxqf.FieldByName( 'fysl' ).AsString;
        qrl_je3.Caption := '金额:' + sp_cxqf.FieldByName( 'fyje' ).AsString;
      end
      else
      begin
        qrl_xmmc3.Caption := '';
        qrl_cs3.Caption := '';
        qrl_je3.Caption := '';
      end;
      QuickRep1.Print;
      if not sp_cxqf.Eof then
        sp_cxqf.Next;
    end;
  end
  else
  begin
    application.MessageBox( pchar( sctext ), '提示', 0 + 48 );
  end;
end;


end.

