unit p_yzzx;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, StdCtrls, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxControls, cxGridCustomView,
  cxGrid, ExtCtrls, cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, ADODB, Mask, DBCtrls,
  Buttons, cxMemo, Grids, DBGridEh, GridsEh, cxLabel, ComCtrls, Menus,
  cxLookAndFeelPainters, cxButtons, cxCheckBox, DBGrids, QRCtrls, QuickRpt, printers;
type
  Tmyrect = record
    ph: string;
    top, left, right, bottom, sl, height: integer;
    yf, tj: string;
    gtop, gleft, gright, gbottom: integer;
  end;
type
  TTmyrect = array[0..100] of Tmyrect;

type
  Tfrm_yzzx = class( TForm )
    Panel7: TPanel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    ds_brxx: TDataSource;
    sp_brxx: TADOStoredProc;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    groupbox8: TPanel;
    DBGridEh1: TDBGridEh;
    groupbox2: TPanel;
    Panel6: TPanel;
    cxButton1: TcxButton;
    cxButton6: TcxButton;
    TabSheet2: TTabSheet;
    ds_fymx: TDataSource;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1sfrq: TcxGridDBColumn;
    cxGrid1DBTableView1fymc: TcxGridDBColumn;
    cxGrid1DBTableView1fyje: TcxGridDBColumn;
    cxGrid1DBTableView1zfje: TcxGridDBColumn;
    cxGrid1DBTableView1mc: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    qry_fymx: TADOQuery;
    Panel1: TPanel;
    Label5: TLabel;
    Label1: TLabel;
    ProgressBar1: TProgressBar;
    cxLabel1: TcxLabel;
    Panel2: TPanel;
    cxButton4: TcxButton;
    cxGrid1DBTableView1czks: TcxGridDBColumn;
    cxGrid1DBTableView1dw: TcxGridDBColumn;
    cxGrid1DBTableView1tfbz: TcxGridDBColumn;
    QuickRep1: TQuickRep;
    QRBand4: TQRBand;
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText4: TQRDBText;
    ColumnHeaderBand1: TQRBand;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel23: TQRLabel;
    PageHeaderBand1: TQRBand;
    QRLabel22: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel24: TQRLabel;
    QRDBText14: TQRDBText;
    QRLabel13: TQRLabel;
    QRDBText12: TQRDBText;
    QRLabel1: TQRLabel;
    QRDBText13: TQRDBText;
    QRLabel14: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel16: TQRLabel;
    qrl_bqmc: TQRLabel;
    rtl_czks: TQRLabel;
    rtl_sfrq: TQRLabel;
    QRLabel2: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel3: TQRLabel;
    QRDBText6: TQRDBText;
    cxGrid1DBTableView1yjqrbz: TcxGridDBColumn;
    sp_dryz: TADOStoredProc;
    ds_dryz: TDataSource;
    Panel3: TPanel;
    dt_zxsj: TDateTimePicker;
    Label2: TLabel;
    sp_yzsj: TADOStoredProc;
    cxButton2: TcxButton;
    Edit1: TEdit;
    zxyz: TSpeedButton;
    xzzx: TcxCheckBox;
    srsj: TcxCheckBox;
    ad_yzzx: TADOCommand;
    sp_in_yzqd: TADOStoredProc;
    SpeedButton1: TSpeedButton;
    qry_yjddy: TADOQuery;
    xzzxr: TcxCheckBox;
    QuickRep2: TQuickRep;
    PageFooterBand1: TQRBand;
    QRBand1: TQRBand;
    QRShape1: TQRShape;
    QRL_yymc_cq: TQRLabel;
    QRL_brxm_cq: TQRLabel;
    sj1: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel8: TQRLabel;
    QRShape3: TQRShape;
    QRShape5: TQRShape;
    QRShape10: TQRShape;
    QRShape13: TQRShape;
    QRL_bch_cq: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel9: TQRLabel;
    QRShape19: TQRShape;
    QRShape46: TQRShape;
    QRBand2: TQRBand;
    QRShape4: TQRShape;
    QRShape6: TQRShape;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRShape14: TQRShape;
    QRShape17: TQRShape;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    QRShape18: TQRShape;
    QRShape20: TQRShape;
    QRShape21: TQRShape;
    QRShape22: TQRShape;
    QRShape23: TQRShape;
    QRShape24: TQRShape;
    QRShape25: TQRShape;
    QRShape26: TQRShape;
    QRShape27: TQRShape;
    QRShape28: TQRShape;
    QRShape29: TQRShape;
    QRShape30: TQRShape;
    QRShape31: TQRShape;
    QRShape32: TQRShape;
    QRShape33: TQRShape;
    QRShape34: TQRShape;
    QRShape35: TQRShape;
    QRShape36: TQRShape;
    QRShape37: TQRShape;
    QRShape39: TQRShape;
    QRShape40: TQRShape;
    QRShape41: TQRShape;
    QRShape42: TQRShape;
    QRShape43: TQRShape;
    QRShape44: TQRShape;
    QRShape48: TQRShape;
    QRShape49: TQRShape;
    QRShape50: TQRShape;
    QRShape51: TQRShape;
    QRShape52: TQRShape;
    kdysmc1: TQRLabel;
    xmmc1: TQRLabel;
    ksrq2: TQRLabel;
    kdysmc2: TQRLabel;
    xmmc2: TQRLabel;
    ksrq3: TQRLabel;
    kdysmc3: TQRLabel;
    xmmc3: TQRLabel;
    ksrq4: TQRLabel;
    kdysmc4: TQRLabel;
    xmmc4: TQRLabel;
    ksrq5: TQRLabel;
    kdysmc5: TQRLabel;
    xmmc5: TQRLabel;
    ksrq6: TQRLabel;
    kdysmc6: TQRLabel;
    xmmc6: TQRLabel;
    ksrq7: TQRLabel;
    kdysmc7: TQRLabel;
    xmmc7: TQRLabel;
    ksrq8: TQRLabel;
    kdysmc8: TQRLabel;
    xmmc8: TQRLabel;
    kdysmc0: TQRLabel;
    ksrq0: TQRLabel;
    xmmc0: TQRLabel;
    ksrq1: TQRLabel;
    QRLabel10: TQRLabel;
    QRShape7: TQRShape;
    QRShape45: TQRShape;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel15: TQRLabel;
    QRShape47: TQRShape;
    QRShape53: TQRShape;
    QRShape54: TQRShape;
    QRShape55: TQRShape;
    QRShape56: TQRShape;
    QRShape57: TQRShape;
    QRShape58: TQRShape;
    QRShape59: TQRShape;
    QRShape60: TQRShape;
    QRShape61: TQRShape;
    QRShape62: TQRShape;
    QRShape63: TQRShape;
    ksrq9: TQRLabel;
    kdysmc9: TQRLabel;
    xmmc9: TQRLabel;
    ksrq10: TQRLabel;
    kdysmc10: TQRLabel;
    xmmc10: TQRLabel;
    ksrq11: TQRLabel;
    kdysmc11: TQRLabel;
    xmmc11: TQRLabel;
    ksrq12: TQRLabel;
    kdysmc12: TQRLabel;
    xmmc12: TQRLabel;
    ksrq13: TQRLabel;
    kdysmc13: TQRLabel;
    xmmc13: TQRLabel;
    ksrq14: TQRLabel;
    kdysmc14: TQRLabel;
    xmmc14: TQRLabel;
    ksrq15: TQRLabel;
    kdysmc15: TQRLabel;
    xmmc15: TQRLabel;
    ksrq16: TQRLabel;
    kdysmc16: TQRLabel;
    xmmc16: TQRLabel;
    ksrq17: TQRLabel;
    kdysmc17: TQRLabel;
    xmmc17: TQRLabel;
    ksrq18: TQRLabel;
    kdysmc18: TQRLabel;
    xmmc18: TQRLabel;
    ksrq19: TQRLabel;
    kdysmc19: TQRLabel;
    xmmc19: TQRLabel;
    qrlbl_nfQRL_bq_cq: TQRLabel;
    sp_zxjl_cq_dy: TADOStoredProc;
    qrlbl_nf_tmh: TQRLabel;
    QRShape2: TQRShape;
    ys: TQRLabel;
    cxButton7: TcxButton;
    cxButton8: TcxButton;
    cxButton9: TcxButton;
    cxBtn_kfbq: TcxButton;
    cxBtn_qbkfbq: TcxButton;
    QuickRep3: TQuickRep;
    DetailBand2: TQRBand;
    qrl_ks: TQRLabel;
    qrl_brxm: TQRLabel;
    qrl_ch: TQRLabel;
    qrl_ks1: TQRLabel;
    qrl_ch1: TQRLabel;
    qrl_brxm1: TQRLabel;
    CheckBox1: TCheckBox;
    SP_SE_BCZY: TADOStoredProc;
    Panel4: TPanel;
    DBGridEh4: TDBGridEh;
    procedure FormShow( Sender: TObject );
    procedure FormKeyPress( Sender: TObject; var Key: Char );
    procedure cxButton6Click( Sender: TObject );
    procedure cxButton3Click( Sender: TObject );
    procedure cxButton4Click( Sender: TObject );
    procedure cxGridDBTableView2CustomDrawCell( Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean );
    procedure TabSheet2Show( Sender: TObject );
    procedure cxGrid1DBTableView1CustomDrawCell( Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean );
    procedure sp_brxxAfterScroll( DataSet: TDataSet );
    procedure DBGridEh4ColWidthsChanged( Sender: TObject );
    procedure DBGridEh4DrawColumnCell( Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState );
    procedure DBGridEh1CellClick( Column: TColumnEh );
    procedure sp_dryzAfterOpen( DataSet: TDataSet );
    procedure sp_brxxAfterOpen( DataSet: TDataSet );
    procedure dt_zxsjChange( Sender: TObject );
    procedure DBGridEh4CellClick( Column: TColumnEh );
    procedure zxyzClick( Sender: TObject );
    procedure cxButton1Click( Sender: TObject );
    procedure cxButton2Click( Sender: TObject );
    procedure FormResize( Sender: TObject );
    procedure ScrollBox1Resize( Sender: TObject );
    procedure SpeedButton1Click( Sender: TObject );
    procedure cxButton5Click( Sender: TObject );
    procedure SpeedButton2Click( Sender: TObject );
    procedure FormCreate( Sender: TObject );
    procedure cxButton9Click(Sender: TObject);
    procedure cxButton7Click(Sender: TObject);
    procedure cxButton8Click(Sender: TObject);
    procedure cxBtn_kfbqClick(Sender: TObject);
    procedure cxBtn_qbkfbqClick(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure DBGridEh1DblClick(Sender: TObject);
  private
    { Private declarations }
  public //y表示选择,n表示未选择
    tmh, zyh, xzph, kdys, ysmc, yfmc, str_zyh: string;
    xhlist, zyhlist, phlist, yzsx: string; //zyhlist 本次记费人员  phlist本次记费批号 //序号xhlist
    xzbz: string; //y表示选择,n表示未选择
    curr_datetime: Tdatetime;

    pldh, _phlist: string;

    zxsj, qyyf: string;
    iszx: boolean;
    rectno: integer;

    cx_zyh, yz_select: string;
    del_curr_ph: string;
    del_bz: integer; //0 本次未删除，1本次删了项目
    zxczy: string;
    procedure createrect( var myrect1: TTmyrect; dataset_rect: TCustomADODataSet; grid_yzlr1: Tdbgrideh; x1, x2, x3: integer );

    { Public declarations }
  end;

var
  frm_yzzx: Tfrm_yzzx;
  yzlb: string; //医嘱类别
  jryzxph: string; //今日已执行医属批号
  isch: boolean;
  _zxbh: string; //执行编号(确定当前执行医嘱的编号)
  myrect: TTmyrect;
  myrect_cx, myrect_zx_cq, myrect_zx_ls: TTmyrect;
  yzsj: Tdatetime;
  fqyz: boolean;
function findinarray( myrect: TTmyrect; zd: string ): integer;
procedure initarray( myrect: TTmyrect );

implementation

{$R *.dfm}
uses p_func, p_dm, p_yzzxjg, p_syfz, p_yzzxd,p_jydtmdy,p_jysqd,p_jcsqd,
  p_yjddy, p_zyplcffy, P_main, p_bylsyz, p_yzfyqd, p_yzsj, p_print_syfz, p_yzqd, p_jypq, p_cqyzxzdy, p_xzhs;

function findinarray( myrect: TTmyrect; zd: string ): integer;
var
  i: integer;
  mark: boolean;
begin
  mark := true;
  i := 0;
  while ( i < 99 ) and mark do
  begin
    if myrect[i].ph = zd then
    begin
      mark := false;
    end
    else
      i := i + 1;
  end;
  result := i;
end;

procedure initarray( myrect: TTmyrect );
var
  i: integer;
begin
  for i := 0 to 100 do
  begin
    myrect[i].ph := '';
    myrect[i].top := 0;
    myrect[i].left := 0;
    myrect[i].right := 0;
    myrect[i].bottom := 0;
    myrect[i].sl := 1;
    myrect[i].yf := '';
    myrect[i].tj := '';
    myrect[i].gtop := 0;
    myrect[i].gleft := 0;
    myrect[i].gright := 0;
    myrect[i].gbottom := 0;

  end;
end;

procedure Tfrm_yzzx.CheckBox1Click(Sender: TObject);
begin
 if CheckBox1.Checked=true then
 begin
 sp_dryz.Filtered:=False;
 sp_dryz.Filter:=' (kdrq>='+''''+formatdatetime('yyyy-MM-dd',dt_zxsj.DateTime)+' 00:00:00'+''''+' and kdrq<='+''''+formatdatetime('yyyy-MM-dd',dt_zxsj.DateTime)+' 23:59:59'+''')'
                  +' or '+
                  ' (tzrq>='+''''+formatdatetime('yyyy-MM-dd',dt_zxsj.DateTime)+' 00:00:00'+''''+' and tzrq<='+''''+formatdatetime('yyyy-MM-dd',dt_zxsj.DateTime)+' 23:59:59'+''')';
 sp_dryz.Filtered:=True;
 end
 else
 begin
 sp_dryz.Filtered:=False;
 end;

end;

procedure Tfrm_yzzx.createrect( var myrect1: TTmyrect; dataset_rect: Tcustomadodataset; grid_yzlr1: Tdbgrideh; x1, x2, x3: integer );
var
  yzph: string;
  i, n: integer;
begin
  dataset_rect.DisableControls;
  rectno := 0;
  dataset_rect.first;
  initarray( myrect1 );
  i := 1;
  while not dataset_rect.Eof do
  begin
    if dataset_rect.FieldByName( 'fzph' ).AsString <> '' then
    begin
      if ( yzph <> '' ) and ( myrect1[rectno].sl = 1 ) and ( yzph <> dataset_rect.FieldByName( 'fzph' ).AsString ) then
      begin
        myrect1[rectno].bottom := grid_yzlr1.CellRect( x1, i - 1 ).bottom;
        myrect1[rectno].Gbottom := grid_yzlr1.CellRect( x1, i - 1 ).bottom;
        //        myrect_cx[rectno].sl:=myrect_cx[rectno].sl+1;
        yzph := '';
      end;
      if yzph = dataset_rect.FieldByName( 'fzph' ).AsString then
      begin
        myrect1[rectno].bottom := grid_yzlr1.CellRect( x1, i ).bottom;
        myrect1[rectno].Gbottom := grid_yzlr1.CellRect( 1, i ).bottom;
        myrect1[rectno].sl := myrect1[rectno].sl + 1;

      end
      else
      begin
        rectno := rectno + 1;
        myrect1[rectno].sl := 1;
        myrect1[rectno].ph := dataset_rect.FieldByName( 'fzph' ).AsString;

        myrect1[rectno].left := grid_yzlr1.CellRect( x1, i ).left;
        myrect1[rectno].right := grid_yzlr1.CellRect( x2, i ).right;
        myrect1[rectno].top := grid_yzlr1.CellRect( x1, i ).top;

        myrect1[rectno].Gleft := grid_yzlr1.CellRect( 4, i ).left;
        myrect1[rectno].Gright := grid_yzlr1.CellRect( x3, i ).right;
        if grid_yzlr1.CellRect( x3, i ).right = 0 then
          for n := 0 to x3 - 1 do
            myrect1[rectno].Gright := myrect1[rectno].Gright + grid_yzlr1.Columns[n].Width;
        myrect1[rectno].Gtop := grid_yzlr1.CellRect( 1, i ).top;
        myrect1[rectno].yf := dataset_rect.FieldByName( 'ypyf' ).AsString;
        myrect1[rectno].tj := dataset_rect.FieldByName( 'yytj' ).AsString;
        myrect1[rectno].height := grid_yzlr1.CellRect( x1, i ).bottom - grid_yzlr1.CellRect( x1, i ).top;
        yzph := dataset_rect.FieldByName( 'fzph' ).AsString;
      end;
    end
    else
    begin
      if ( yzph <> '' ) and ( myrect1[rectno].sl = 1 ) then
      begin
        myrect1[rectno].bottom := grid_yzlr1.CellRect( x1, i - 1 ).bottom;
        ;
        myrect1[rectno].Gbottom := grid_yzlr1.CellRect( x1, i - 1 ).bottom;
        //        myrect_cx[rectno].sl:=myrect_cx[rectno].sl+1;
        yzph := '';
      end;
      if ( yzph <> '' ) and ( myrect1[rectno].sl > 1 ) then
        yzph := '';

    end;
    dataset_rect.Next;
    i := dataset_rect.RecNo;
  end;
  if yzph <> '' then
  begin
    myrect1[rectno].bottom := grid_yzlr1.CellRect( x1, i ).bottom;
    ;
    myrect1[rectno].Gbottom := grid_yzlr1.CellRect( x1, i ).bottom;
    //        myrect_cx[rectno].sl:=myrect_cx[rectno].sl+1;
    yzph := '';
  end;
  dataset_rect.EnableControls;

end;

procedure Tfrm_yzzx.FormCreate( Sender: TObject );
begin
  QuickRep1.Visible := False;
  QuickRep2.Visible := False;
end;

procedure Tfrm_yzzx.FormKeyPress( Sender: TObject; var Key: Char );
begin
  if key = #13 then
    selectnext( activecontrol, true, true );
end;

procedure Tfrm_yzzx.FormResize( Sender: TObject );
begin
//  scrollbox1.VertScrollBar.Position := 0;
//  scrollbox1.HorzScrollBar.Position := 0;
//  dbgrideh4.Left := scrollbox1.ClientRect.left;
//  dbgrideh4.Top := scrollbox1.ClientRect.top;

end;

procedure Tfrm_yzzx.FormShow( Sender: TObject );
begin
  //病区全部病员
  dt_zxsj.DateTime := frm_func.curr_date;
  QuickRep1.Visible := false;
  PageControl1.ActivePage := Tabsheet1;
  isch := false;
  sp_yzsj.Close;
  sp_yzsj.Parameters.ParamByName( '@scyzsj' ).Value := dt_zxsj.DateTime;
  sp_yzsj.ExecProc;
  dt_zxsj.DateTime := sp_yzsj.Parameters.ParamByName( '@scyzsj' ).Value;

  sp_brxx.Close;
  sp_brxx.Parameters.ParamByName( '@sr_bqdm' ).Value := trim( pub_bqdm );
  sp_brxx.Parameters.ParamByName( '@yzzxsj' ).Value := formatdatetime( 'yyyymmdd', dT_zxsj.Date );
  ;
  sp_brxx.Parameters.ParamByName( '@zyh' ).Value := '';
  sp_brxx.Open;
  cx_zyh := zyh;
  isch := true;
  _zxbh := pub_czydm + formatdatetime( 'ss', now );
//  scrollbox1.VertScrollBar.Position := 0;
//  scrollbox1.HorzScrollBar.Position := 0;
//  dbgrideh4.Left := scrollbox1.ClientRect.left;
//  dbgrideh4.Top := scrollbox1.ClientRect.top;
  if pub_yydm='0015' then
  begin
  xzzxr.Checked := false;
  xzzxr.Visible:=False;
  end
  else
  begin
  xzzxr.Checked := true;
  xzzxr.Visible:=true;
  end;
  srsj.Checked := True;
  sp_brxx.Locate('zyh',zyh,[]);
  DBGridEh1.SetFocus;


end;

procedure Tfrm_yzzx.ScrollBox1Resize( Sender: TObject );
begin
//  dbgrideh4.Left := scrollbox1.ClientRect.left;
//  dbgrideh4.Top := scrollbox1.ClientRect.top;

end;

procedure Tfrm_yzzx.SpeedButton1Click( Sender: TObject );
begin
  self.FormShow( self );
end;

procedure Tfrm_yzzx.SpeedButton2Click( Sender: TObject );
var
  i, y, j, count, x: Integer;
  aControl: TControl;
begin
  with sp_zxjl_cq_dy do
  begin
    Close;
    Parameters.ParamByName( '@zyh' ).Value := Trim( sp_brxx.fieldbyname( 'zyh' ).asstring );
    Parameters.ParamByName( '@fs' ).Value := 0;
    Open;
  end;

  sp_zxjl_cq_dy.Filtered := False;
  sp_zxjl_cq_dy.Filter := 'yytj=''口服''';
  sp_zxjl_cq_dy.Filtered := True;
  if not sp_zxjl_cq_dy.IsEmpty then
  begin
    sp_zxjl_cq_dy.First;
    if sp_zxjl_cq_dy.RecordCount mod 20 <> 0 then
      y := trunc( sp_zxjl_cq_dy.RecordCount / 20 ) + 1
    else
      y := trunc( sp_zxjl_cq_dy.RecordCount / 20 );
    count := sp_zxjl_cq_dy.RecordCount;
    for I := 1 to y do
    begin
      for j := 1 to 20 do
      begin
        if count < y * 20 then
        begin
          if j > ( 20 - ( y * 20 - count ) ) then
          begin
            aControl := QRBand2.FindChildControl( 'ksrq' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            aControl := QRBand2.FindChildControl( 'kdysmc' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            //DetailBand1.FindChildControl('qrgrimage' + IntToStr(j)).enabled:=false;
            TQRLabel( QRBand2.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
            //TQRLabel(DetailBand1.FindChildControl('ypyf' + IntToStr(j-1))).Caption:='';
            TQRLabel( QRBand2.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).caption := '';

          end
          else
          begin

            aControl := QRBand2.FindChildControl( 'ksrq' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := sp_zxjl_cq_dy.FieldByName( 'ksrq' ).AsString;

            aControl := QRBand2.FindChildControl( 'kdysmc' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;

            if sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
            begin
              x := ( length( sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
              //      DetailBand1.FindChildControl('QRgrImage' + IntToStr(j)).enabled:=true;
              //      DetailBand1.FindChildControl('QRgrImage' + IntToStr(j)).Top:=TQRLabel(DetailBand1.FindChildControl('xmmc' + IntToStr(j-1))).top;
              //      DetailBand1.FindChildControl('QRgrImage' + IntToStr(j)).left:=DetailBand1.FindChildControl('ypyf' + IntToStr(j-1)).left-20;
              //      DetailBand1.FindChildControl('qrgrimage' + IntToStr(j)).height:=x*DetailBand1.FindChildControl('ypyf' + IntToStr(j-1)).height;
                    //DetailBand1.FindChildControl('ypyf' + IntToStr(j-1)).top:= x*DetailBand1.FindChildControl('ypyf' + IntToStr(j-1)).height div 2;
                    //TQRLabel(DetailBand1.FindChildControl('ypyf' + IntToStr(j-1))).Caption:=trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring)+'  '+trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
                    //TQRLabel(DetailBand1.FindChildControl('xmmc' + IntToStr(j-1))).Width:=200;
              TQRLabel( QRBand2.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
            end
            else
            begin
              //DetailBand1.FindChildControl('qrgrimage' + IntToStr(j)).enabled:=false;
              QRBand2.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ).Width := 190;
              //TQRLabel(DetailBand1.FindChildControl('ypyf' + IntToStr(j-1))).Caption:='';
              TQRLabel( QRBand2.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + '  ' + trim( sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
            end;
            sp_zxjl_cq_dy.Next;

          end;

        end

        else

        begin

          aControl := QRBand2.FindChildControl( 'ksrq' + IntToStr( j - 1 ) );
          if aControl is TQRLabel then
            TQRLabel( aControl ).Caption := sp_zxjl_cq_dy.FieldByName( 'ksrq' ).asstring;

          aControl := QRBand2.FindChildControl( 'kdysmc' + IntToStr( j - 1 ) );
          if aControl is TQRLabel then
            TQRLabel( aControl ).Caption := sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;

          if sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
          begin
            x := ( length( sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
            //      DetailBand1.FindChildControl('QRgrImage' + IntToStr(j)).enabled:=true;
            //      DetailBand1.FindChildControl('QRgrImage' + IntToStr(j)).Top:=TQRLabel(DetailBand1.FindChildControl('xmmc' + IntToStr(j-1))).top;
            //      DetailBand1.FindChildControl('qrgrimage' + IntToStr(j)).left:=DetailBand1.FindChildControl('ypyf' + IntToStr(j-1)).left-20;
            //      DetailBand1.FindChildControl('qrgrimage' + IntToStr(j)).height:=x*DetailBand1.FindChildControl('ypyf' + IntToStr(j-1)).height;
                  //DetailBand1.FindChildControl('ypyf' + IntToStr(j-1)).top:= x*DetailBand1.FindChildControl('ypyf' + IntToStr(j-1)).height div 2;
                  //TQRLabel(DetailBand1.FindChildControl('ypyf' + IntToStr(j-1))).Caption:=trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring)+'  '+trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
                  //xmmc.Width:=200;
            TQRLabel( QRBand2.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
          end
          else
          begin
            //DetailBand1.FindChildControl('qrgrimage' + IntToStr(j)).enabled:=false;
            QRBand2.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ).Width := 190;
            //TQRLabel(DetailBand1.FindChildControl('ypyf' + IntToStr(j-1))).Caption:='';
            TQRLabel( QRBand2.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + '  ' + trim( sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
          end;

          sp_zxjl_cq_dy.Next;
        end;

      end;

      QRL_yymc_cq.Caption := pub_yymc + '医嘱执行单(口服药)';
      QRL_brxm_cq.Caption := '姓名:' + sp_brxx.fieldbyname( 'brxm' ).asstring;
      //QRL_tmh_cq.Caption := '住院号:' + sp_sybr.fieldbyname('brxm').asstring;;
      QRL_bch_cq.Caption := '床号:' + sp_brxx.fieldbyname( 'bch' ).asstring;
      //  xb_cq.Caption := '性别:' + sp_sybr.fieldbyname('brxb').asstring;
      //  nl_cq.Caption := '年龄:' + trim(sp_sybr.fieldbyname('brnl').asstring)+'岁';
        //zd_cq.Caption := '诊断:' + trim(sp_jbxx.FieldByName('ryzd').AsString);
        //QRL_dysj_cq.Caption := '打印时间:' + FormatDatetime('yyyy年mm月dd日', frm_func.curr_date);
      //  sj1.caption:='日期'+#13+'时间';
      //  sj2.caption:='执行'+#13+'时间';
      //  sj3.caption:='日期'+#13+'时间';
      //  sj4.caption:='执行'+#13+'时间';
      qrlbl_nf_tmh.Caption := '住院号:' + sp_brxx.fieldbyname( 'tmh' ).asstring;
      qrlbl_nfQRL_bq_cq.Caption := '病区:' + pub_bqmc;
      QuickRep2.Prepare;
      //  paper_size:=0;
      //  QRL_ys_cq.Caption := '共' + IntToStr(QuickRep1.Printer.PageCount) + '页';
      ys.Caption := '第' + '   ' + inttostr( i ) + '  页';
      QuickRep2.Preview;

    end;

  end;
  //  try
  //    application.createform(Tfrm_cqyzxzdy, frm_cqyzxzdy);
  //    p_cqyzxzdy.v_zyh:= sp_brxx.FieldByName('zyh').asstring;
  //    p_cqyzxzdy.v_brxm:=sp_brxx.FieldByName('brxm').asstring;
  //    p_cqyzxzdy.v_bch:=sp_brxx.FieldByName('bch').asstring;
  //    p_cqyzxzdy.v_brxb:=sp_brxx.FieldByName('brxb').asstring;
  //    p_cqyzxzdy.v_brnl:=sp_brxx.FieldByName('brnl').asstring;
  //    p_cqyzxzdy.v_ryzd:=sp_brxx.FieldByName('ryzd').asstring;
  //    p_cqyzxzdy.v_tmh:=sp_brxx.FieldByName('tmh').asstring;
  //    frm_cqyzxzdy.showmodal;
  //  finally
  //    frm_cqyzxzdy.free;
  //  end;

end;

procedure Tfrm_yzzx.sp_brxxAfterOpen( DataSet: TDataSet );
begin
//  sp_brxx.First;
//  sp_dryz.close;
//  sp_dryz.Parameters.ParamByName( '@zyh' ).value := sp_brxx.FieldByName( 'zyh' ).asstring;
//  sp_dryz.Parameters.ParamByName( '@zxsj' ).value := formatdatetime( 'yyyymmdd', dT_zxsj.Date );
//    sp_dryz.Parameters.ParamByName( '@ksdm' ).value := pub_ksdm;
//  sp_dryz.Open;

end;

procedure Tfrm_yzzx.sp_brxxAfterScroll( DataSet: TDataSet );
begin
  if sp_brxx.RecordCount > 0 then
    cx_zyh := sp_brxx.FieldByName( 'zyh' ).AsString;
    sp_dryz.close;
    sp_dryz.Parameters.ParamByName('@zyh').value:=sp_brxx.FieldByName('zyh').asstring;
    sp_dryz.Parameters.ParamByName('@zxsj').value:=formatdatetime('yyyymmdd',dT_zxsj.Date);
    sp_dryz.Parameters.ParamByName( '@ksdm' ).value := pub_ksdm;
    sp_dryz.Open;
    sp_dryz.First;
    DBGridEh4.Columns[1].Width:=DBGridEh4.Columns[1].Width+1;
    DBGridEh4.Columns[1].Width:=DBGridEh4.Columns[1].Width-1;
    createrect( myrect_cx, sp_dryz, dbgrideh4, 12, 13, 15);
    
end;

procedure Tfrm_yzzx.sp_dryzAfterOpen( DataSet: TDataSet );
begin
  if sp_dryz.RecordCount * 30 > screen.Height - 70 then
    dbgrideh4.Height := sp_dryz.RecordCount * 30
  else
    dbgrideh4.Height := screen.Height - 70;
  createrect( myrect_cx, sp_dryz, dbgrideh4, 9, 10, 14 );
end;

procedure Tfrm_yzzx.TabSheet2Show( Sender: TObject );
begin
  qry_fymx.Close;
  qry_fymx.Parameters.ParamByName( 'zyh' ).Value := cx_zyh;
  qry_fymx.Open;
end;

procedure Tfrm_yzzx.zxyzClick( Sender: TObject );
var
  sbookmark: Tbookmark;
  syfz, jyfzbh: string;
  checked, sfyc: boolean;
  sj: string;
  zxrymc: string;
  zyh_local:string;
  kdrq:TDateTime;
begin
  kdrq:=StrToDateTime('1900-01-01 00:00:00');
  fqyz:=False;
  zxczy := pub_czydm;
  sbookmark := sp_dryz.GetBookmark;
  //sp_dryz.First;
  jyfzbh := '';
  sfyc := false;
  sp_dryz.DisableControls;
  sp_dryz.First;
  while not sp_dryz.eof do
  begin
    if sp_dryz.fieldbyname( 'xz' ).asboolean=true then
    begin
    kdrq:= sp_dryz.fieldbyname( 'kdrq' ).AsDateTime;
    end;
    sp_dryz.Next;
  end;
    sp_dryz.EnableControls;
  if not sp_dryz.fieldbyname( 'tzbz' ).asboolean then
  begin
    if srsj.Checked then
    begin
      //弹出窗口输入时间
      fqyz := false;
      application.createform( TFrm_yzsj, frm_yzsj );
      try
        if FormatDateTime('yyyyMMdd',kdrq)<>'19000101' then
        begin
        frm_yzsj.yzzxsj.Date := kdrq;
        end
        else
        frm_yzsj.yzzxsj.Date := frm_func.curr_date;
        frm_yzsj.showmodal;
      finally
        sj := formatdatetime( 'yyyy-mm-dd hh:mm:ss', yzsj );
        frm_yzsj.free;
      end;
    end
    else
      sj := formatdatetime( 'yyyy-mm-dd hh:mm:ss', frm_func.curr_date );

    if xzzxr.Checked then
    begin
      //弹出窗口选择护士
      application.createform( Tfrm_xzhs, frm_xzhs );
      try
        frm_xzhs.ad_ysdm.parameters.parambyname( 'bqdm' ).value := pub_bqdm;
        frm_xzhs.ad_ysdm.parameters.parambyname( 'ksdm' ).value := sp_brxx.fieldbyname( 'ksdm' ).asstring;
        frm_xzhs.ad_ysdm.parameters.parambyname( 'bqdm1' ).value := pub_bqdm;
        frm_xzhs.ad_ysdm.parameters.parambyname( 'ksdm1' ).value := sp_brxx.fieldbyname( 'ksdm' ).asstring;
        frm_xzhs.ad_ysdm.open;
        frm_xzhs.DBComboBox1.Items.Clear;
        frm_xzhs.ad_ysdm.First;
        while not frm_xzhs.ad_ysdm.eof do
        begin
          frm_xzhs.dbcombobox1.Items.Add( frm_xzhs.ad_ysdm.FieldByName( 'mc' ).asstring );
          frm_xzhs.ad_ysdm.Next;
        end;
        frm_xzhs.ad_ysdm.Locate( 'dm', pub_czydm, [loPartialKey] );
        frm_xzhs.dbComboBox1.ItemIndex := frm_xzhs.dbComboBox1.Items.IndexOf( frm_xzhs.ad_ysdm.FieldByName( 'mc' ).AsString );
        frm_xzhs.showmodal;
      finally
        //zxczy:=pub_czydm;
        frm_xzhs.free;
      end;
    end
    else
      zxczy := pub_czydm;
    if fqyz<>true then
    begin
      sp_dryz.DisableControls;
    dm_data.ado_mydata.BeginTrans;
    try
    sp_dryz.First;
    while not sp_dryz.eof do
    begin
     if (sp_dryz.FieldByName('xz').AsBoolean=true) and ((StrToDateTime(sj)<sp_dryz.FieldByName('tzrq').AsDateTime) or (Trim(sp_dryz.FieldByName('tzrq').asstring)=''))then
     begin
     DM_data.qry_pub.Close;
     DM_data.qry_pub.SQL.text:='delete from zybl_zyyz_yzzxqd_mx where zxsj<='+''''+sj+''''+' and yzid='+sp_dryz.FieldByName('yzid').asstring;
     DM_data.qry_pub.ExecSQL;
     end;

     if (sp_dryz.FieldByName('xz').AsBoolean=true) and ((StrToDateTime(sj)>=sp_dryz.FieldByName('tzrq').AsDateTime) and  (Trim(sp_dryz.FieldByName('tzrq').asstring)<>''))then
     begin
     DM_data.qry_pub.Close;
     DM_data.qry_pub.SQL.text:='delete from zybl_zyyz_yzzxqd_mx where zxsj<'+''''+sj+''''+' and zxsj>'+''''+sp_dryz.FieldByName('syczxsj').asstring+''''+' and  yzid='+sp_dryz.FieldByName('yzid').asstring;
     DM_data.qry_pub.ExecSQL;
     end;

     sp_dryz.Next;
    end;
      sp_dryz.First;
      if not fqyz then
      begin
        while ( not sp_dryz.Eof ) and ( not sfyc ) do
        begin
          if sp_dryz.FieldByName( 'lb' ).asstring <> '检验' then
          begin
            if ( sp_dryz.FieldByName( 'xz' ).asboolean ) then
            begin
              if ( ( sp_dryz.FieldByName( 'zxcs' ).AsInteger = 0 ) or ( sp_dryz.FieldByName( 'zxcs' ).AsInteger < sp_dryz.FieldByName( 'yjzxcs' ).AsInteger ) or ( sp_dryz.FieldByName( 'yjzxcs' ).AsInteger = 0 ) ) then
              begin
                sp_in_yzqd.close;
                sp_in_yzqd.Parameters.ParamByName( '@zyh' ).Value := sp_brxx.FieldByName( 'zyh' ).asstring;
                sp_in_yzqd.Parameters.ParamByName( '@yzid' ).Value := sp_dryz.FieldByName( 'yzid' ).AsInteger;
                sp_in_yzqd.Parameters.ParamByName( '@zxsj' ).Value := formatdatetime( 'yyyymmdd', dt_zxsj.Date );
                sp_in_yzqd.Parameters.ParamByName( '@yzsj' ).Value := sj;
                sp_in_yzqd.Parameters.ParamByName( '@czydm' ).Value := zxczy;
                sp_in_yzqd.Parameters.ParamByName( '@jyfzbh' ).Value := jyfzbh;
                sp_in_yzqd.ExecProc;
                //修改医嘱执行清单最后执行时间，执行人，已经执行次数

                DM_data.qry_czy.Close;
                DM_data.qry_czy.sql.Text := 'select * from sys_czy where dm=' + '''' + zxczy + '''';
                DM_data.qry_czy.Open;
                zxrymc := Trim( DM_data.qry_czy.FieldByName( 'mc' ).asstring );
                sp_dryz.edit;
                sp_dryz['zhzxsj'] := sj;
                sp_dryz['zxcs'] := sp_dryz.fieldbyname( 'zxcs' ).asinteger + 1;
                sp_dryz['zhxm'] := zxrymc;
                sp_dryz['xz'] := false;
                sp_dryz.post;
              end
              else
              begin
//                application.MessageBox( pchar( '提示：' + #13 + '已经超过当日最大执行次数，不能再执行！！！' ), '提示', mb_ok + mb_iconwarning );
//                while not sp_dryz.eof do
//                begin
//                  if sp_dryz['xz'] then
//                  begin
//                    sp_dryz.edit;
//                    sp_dryz['xz'] := false;
//                    sp_dryz.Post;
//                  end;
//                  sp_dryz.Next;
//                end;
//                sfyc := true;

                sp_in_yzqd.close;
                sp_in_yzqd.Parameters.ParamByName( '@zyh' ).Value := sp_brxx.FieldByName( 'zyh' ).asstring;
                sp_in_yzqd.Parameters.ParamByName( '@yzid' ).Value := sp_dryz.FieldByName( 'yzid' ).AsInteger;
                sp_in_yzqd.Parameters.ParamByName( '@zxsj' ).Value := formatdatetime( 'yyyymmdd', dt_zxsj.Date );
                sp_in_yzqd.Parameters.ParamByName( '@yzsj' ).Value := sj;
                sp_in_yzqd.Parameters.ParamByName( '@czydm' ).Value := zxczy;
                sp_in_yzqd.Parameters.ParamByName( '@jyfzbh' ).Value := jyfzbh;
                sp_in_yzqd.ExecProc;
                //修改医嘱执行清单最后执行时间，执行人，已经执行次数

                DM_data.qry_czy.Close;
                DM_data.qry_czy.sql.Text := 'select * from sys_czy where dm=' + '''' + zxczy + '''';
                DM_data.qry_czy.Open;
                zxrymc := Trim( DM_data.qry_czy.FieldByName( 'mc' ).asstring );
                sp_dryz.edit;
                sp_dryz['zhzxsj'] := sj;
                sp_dryz['zxcs'] := sp_dryz.fieldbyname( 'zxcs' ).asinteger + 1;
                sp_dryz['zhxm'] := zxrymc;
                sp_dryz['xz'] := false;
                sp_dryz.post;

              end;
            end;
          end
          else
          begin
            if ( sp_dryz.FieldByName( 'xz' ).asboolean ) then
            begin
              if ( ( sp_dryz.FieldByName( 'zxcs' ).AsInteger = 0 ) or ( sp_dryz.FieldByName( 'zxcs' ).AsInteger < sp_dryz.FieldByName( 'yjzxcs' ).AsInteger ) ) then
              begin
                sp_in_yzqd.close;
                sp_in_yzqd.Parameters.ParamByName( '@zyh' ).Value := sp_brxx.FieldByName( 'zyh' ).asstring;
                sp_in_yzqd.Parameters.ParamByName( '@yzid' ).Value := sp_dryz.FieldByName( 'yzid' ).AsInteger;
                sp_in_yzqd.Parameters.ParamByName( '@zxsj' ).Value := formatdatetime( 'yyyymmdd', dt_zxsj.Date );
                sp_in_yzqd.Parameters.ParamByName( '@yzsj' ).Value := sj;
                sp_in_yzqd.Parameters.ParamByName( '@czydm' ).Value := zxczy;
                sp_in_yzqd.Parameters.ParamByName( '@jyfzbh' ).Value := jyfzbh;
                sp_in_yzqd.ExecProc;
                //修改医嘱执行清单最后执行时间，执行人，已经执行次数
                DM_data.qry_czy.Close;
                DM_data.qry_czy.sql.Text := 'select * from sys_czy where dm=' + '''' + zxczy + '''';
                DM_data.qry_czy.Open;
                zxrymc := Trim( DM_data.qry_czy.FieldByName( 'mc' ).asstring );
                sp_dryz.edit;
                sp_dryz['zhzxsj'] := sj;
                sp_dryz['zxcs'] := sp_dryz.fieldbyname( 'zxcs' ).asinteger + 1;
                sp_dryz['zhxm'] := zxrymc;
                sp_dryz['xz'] := false;
                sp_dryz.post;
              end
              else
              begin
//                application.MessageBox( pchar( '提示：' + #13 + '已经超过当日最大执行次数，不能再执行！！！' ), '提示', mb_ok + mb_iconwarning );
//                while not sp_dryz.eof do
//                begin
//                  if sp_dryz['xz'] then
//                  begin
//                    sp_dryz.edit;
//                    sp_dryz['xz'] := false;
//                    sp_dryz.Post;
//                  end;
//                  sp_dryz.Next;
//                end;
//                sfyc := true;

                sp_in_yzqd.close;
                sp_in_yzqd.Parameters.ParamByName( '@zyh' ).Value := sp_brxx.FieldByName( 'zyh' ).asstring;
                sp_in_yzqd.Parameters.ParamByName( '@yzid' ).Value := sp_dryz.FieldByName( 'yzid' ).AsInteger;
                sp_in_yzqd.Parameters.ParamByName( '@zxsj' ).Value := formatdatetime( 'yyyymmdd', dt_zxsj.Date );
                sp_in_yzqd.Parameters.ParamByName( '@yzsj' ).Value := sj;
                sp_in_yzqd.Parameters.ParamByName( '@czydm' ).Value := zxczy;
                sp_in_yzqd.Parameters.ParamByName( '@jyfzbh' ).Value := jyfzbh;
                sp_in_yzqd.ExecProc;
                //修改医嘱执行清单最后执行时间，执行人，已经执行次数
                DM_data.qry_czy.Close;
                DM_data.qry_czy.sql.Text := 'select * from sys_czy where dm=' + '''' + zxczy + '''';
                DM_data.qry_czy.Open;
                zxrymc := Trim( DM_data.qry_czy.FieldByName( 'mc' ).asstring );
                sp_dryz.edit;
                sp_dryz['zhzxsj'] := sj;
                sp_dryz['zxcs'] := sp_dryz.fieldbyname( 'zxcs' ).asinteger + 1;
                sp_dryz['zhxm'] := zxrymc;
                sp_dryz['xz'] := false;
                sp_dryz.post;
              end;
            end;
          end;
          sp_dryz.Next;
        end; //while循环结束

      end; //fqyz放弃医嘱结束；
      if not sfyc then
        dm_data.ado_mydata.CommitTrans
      else
        dm_data.ado_mydata.rollbacktrans;

    except
      dm_data.ado_mydata.rollbacktrans;
    end;
    sp_dryz.GotoBookmark( sbookmark );
    sp_dryz.FreeBookmark( sbookmark );
    end;
  end
  else
  begin
    //application.MessageBox( '该医嘱已停止，不能执行！！', '提示', mb_ok );
      if srsj.Checked then
    begin
      //弹出窗口输入时间
      fqyz := false;
      application.createform( TFrm_yzsj, frm_yzsj );
      try
         if FormatDateTime('yyyyMMdd',kdrq)<>'19000101' then
        begin
        frm_yzsj.yzzxsj.Date := kdrq;
        end
        else
        frm_yzsj.yzzxsj.Date := frm_func.curr_date;
        frm_yzsj.showmodal;
      finally
        sj := formatdatetime( 'yyyy-mm-dd hh:mm:ss', yzsj );
        frm_yzsj.free;
      end;
    end
    else
      sj := formatdatetime( 'yyyy-mm-dd hh:mm:ss', frm_func.curr_date );

    if xzzxr.Checked then
    begin
      //弹出窗口选择护士
      application.createform( Tfrm_xzhs, frm_xzhs );
      try

        frm_xzhs.ad_ysdm.parameters.parambyname( 'bqdm' ).value := pub_bqdm;
        frm_xzhs.ad_ysdm.parameters.parambyname( 'ksdm' ).value := sp_brxx.fieldbyname( 'ksdm' ).asstring;
        frm_xzhs.ad_ysdm.open;
        frm_xzhs.DBComboBox1.Items.Clear;
        frm_xzhs.ad_ysdm.First;
        while not frm_xzhs.ad_ysdm.eof do
        begin
          frm_xzhs.dbcombobox1.Items.Add( frm_xzhs.ad_ysdm.FieldByName( 'mc' ).asstring );
          frm_xzhs.ad_ysdm.Next;
        end;
        frm_xzhs.ad_ysdm.Locate( 'dm', pub_czydm, [loPartialKey] );
        frm_xzhs.dbComboBox1.ItemIndex := frm_xzhs.dbComboBox1.Items.IndexOf( frm_xzhs.ad_ysdm.FieldByName( 'mc' ).AsString );
        frm_xzhs.showmodal;
      finally
        //zxczy:=pub_czydm;
        frm_xzhs.free;
      end;
    end
    else
      zxczy := pub_czydm;

    if fqyz<>true then
    begin
    sp_dryz.DisableControls;
    dm_data.ado_mydata.BeginTrans;
    try
      sp_dryz.First;
    while not sp_dryz.eof do
    begin
     if (sp_dryz.FieldByName('xz').AsBoolean=true) and ((StrToDateTime(sj)<sp_dryz.FieldByName('tzrq').AsDateTime) or (Trim(sp_dryz.FieldByName('tzrq').asstring)=''))then
     begin
     DM_data.qry_pub.Close;
     DM_data.qry_pub.SQL.text:='delete from zybl_zyyz_yzzxqd_mx where zxsj<='+''''+sj+''''+' and yzid='+sp_dryz.FieldByName('yzid').asstring;
     DM_data.qry_pub.ExecSQL;
     end;

     if (sp_dryz.FieldByName('xz').AsBoolean=true) and ((StrToDateTime(sj)>=sp_dryz.FieldByName('tzrq').AsDateTime) and  (Trim(sp_dryz.FieldByName('tzrq').asstring)<>''))then
     begin
     DM_data.qry_pub.Close;
     DM_data.qry_pub.SQL.text:='delete from zybl_zyyz_yzzxqd_mx where zxsj<'+''''+sj+''''+' and zxsj>'+''''+sp_dryz.FieldByName('syczxsj').asstring+''''+' and  yzid='+sp_dryz.FieldByName('yzid').asstring;
     DM_data.qry_pub.ExecSQL;

     end;

     sp_dryz.Next;
    end;
      sp_dryz.First;
      if not fqyz then
      begin
        while ( not sp_dryz.Eof ) and ( not sfyc ) do
        begin
          if sp_dryz.FieldByName( 'lb' ).asstring <> '检验' then
          begin
            if ( sp_dryz.FieldByName( 'xz' ).asboolean ) then
            begin
              if ( ( sp_dryz.FieldByName( 'zxcs' ).AsInteger = 0 ) or ( sp_dryz.FieldByName( 'zxcs' ).AsInteger < sp_dryz.FieldByName( 'yjzxcs' ).AsInteger ) or ( sp_dryz.FieldByName( 'yjzxcs' ).AsInteger = 0 ) ) then
              begin
                sp_in_yzqd.close;
                sp_in_yzqd.Parameters.ParamByName( '@zyh' ).Value := sp_brxx.FieldByName( 'zyh' ).asstring;
                sp_in_yzqd.Parameters.ParamByName( '@yzid' ).Value := sp_dryz.FieldByName( 'yzid' ).AsInteger;
                sp_in_yzqd.Parameters.ParamByName( '@zxsj' ).Value := formatdatetime( 'yyyymmdd', dt_zxsj.Date );
                sp_in_yzqd.Parameters.ParamByName( '@yzsj' ).Value := sj;
                sp_in_yzqd.Parameters.ParamByName( '@czydm' ).Value := zxczy;
                sp_in_yzqd.Parameters.ParamByName( '@jyfzbh' ).Value := jyfzbh;
                sp_in_yzqd.ExecProc;
                //修改医嘱执行清单最后执行时间，执行人，已经执行次数

                DM_data.qry_czy.Close;
                DM_data.qry_czy.sql.Text := 'select * from sys_czy where dm=' + '''' + zxczy + '''';
                DM_data.qry_czy.Open;
                zxrymc := Trim( DM_data.qry_czy.FieldByName( 'mc' ).asstring );
                sp_dryz.edit;
                sp_dryz['zhzxsj'] := sj;
                sp_dryz['zxcs'] := sp_dryz.fieldbyname( 'zxcs' ).asinteger + 1;
                sp_dryz['zhxm'] := zxrymc;
                sp_dryz['xz'] := false;
                sp_dryz.post;
              end
              else
              begin
//                application.MessageBox( pchar( '提示：' + #13 + '已经超过当日最大执行次数，不能再执行！！！' ), '提示', mb_ok + mb_iconwarning );
//                while not sp_dryz.eof do
//                begin
//                  if sp_dryz['xz'] then
//                  begin
//                    sp_dryz.edit;
//                    sp_dryz['xz'] := false;
//                    sp_dryz.Post;
//                  end;
//                  sp_dryz.Next;
//                end;
//                sfyc := true;

                sp_in_yzqd.close;
                sp_in_yzqd.Parameters.ParamByName( '@zyh' ).Value := sp_brxx.FieldByName( 'zyh' ).asstring;
                sp_in_yzqd.Parameters.ParamByName( '@yzid' ).Value := sp_dryz.FieldByName( 'yzid' ).AsInteger;
                sp_in_yzqd.Parameters.ParamByName( '@zxsj' ).Value := formatdatetime( 'yyyymmdd', dt_zxsj.Date );
                sp_in_yzqd.Parameters.ParamByName( '@yzsj' ).Value := sj;
                sp_in_yzqd.Parameters.ParamByName( '@czydm' ).Value := zxczy;
                sp_in_yzqd.Parameters.ParamByName( '@jyfzbh' ).Value := jyfzbh;
                sp_in_yzqd.ExecProc;
                //修改医嘱执行清单最后执行时间，执行人，已经执行次数

                DM_data.qry_czy.Close;
                DM_data.qry_czy.sql.Text := 'select * from sys_czy where dm=' + '''' + zxczy + '''';
                DM_data.qry_czy.Open;
                zxrymc := Trim( DM_data.qry_czy.FieldByName( 'mc' ).asstring );
                sp_dryz.edit;
                sp_dryz['zhzxsj'] := sj;
                sp_dryz['zxcs'] := sp_dryz.fieldbyname( 'zxcs' ).asinteger + 1;
                sp_dryz['zhxm'] := zxrymc;
                sp_dryz['xz'] := false;
                sp_dryz.post;

              end;
            end;
          end
          else
          begin
            if ( sp_dryz.FieldByName( 'xz' ).asboolean ) then
            begin
              if ( ( sp_dryz.FieldByName( 'zxcs' ).AsInteger = 0 ) or ( sp_dryz.FieldByName( 'zxcs' ).AsInteger < sp_dryz.FieldByName( 'yjzxcs' ).AsInteger ) ) then
              begin
                sp_in_yzqd.close;
                sp_in_yzqd.Parameters.ParamByName( '@zyh' ).Value := sp_brxx.FieldByName( 'zyh' ).asstring;
                sp_in_yzqd.Parameters.ParamByName( '@yzid' ).Value := sp_dryz.FieldByName( 'yzid' ).AsInteger;
                sp_in_yzqd.Parameters.ParamByName( '@zxsj' ).Value := formatdatetime( 'yyyymmdd', dt_zxsj.Date );
                sp_in_yzqd.Parameters.ParamByName( '@yzsj' ).Value := sj;
                sp_in_yzqd.Parameters.ParamByName( '@czydm' ).Value := zxczy;
                sp_in_yzqd.Parameters.ParamByName( '@jyfzbh' ).Value := jyfzbh;
                sp_in_yzqd.ExecProc;
                //修改医嘱执行清单最后执行时间，执行人，已经执行次数
                DM_data.qry_czy.Close;
                DM_data.qry_czy.sql.Text := 'select * from sys_czy where dm=' + '''' + zxczy + '''';
                DM_data.qry_czy.Open;
                zxrymc := Trim( DM_data.qry_czy.FieldByName( 'mc' ).asstring );
                sp_dryz.edit;
                sp_dryz['zhzxsj'] := sj;
                sp_dryz['zxcs'] := sp_dryz.fieldbyname( 'zxcs' ).asinteger + 1;
                sp_dryz['zhxm'] := zxrymc;
                sp_dryz['xz'] := false;
                sp_dryz.post;
              end
              else
              begin
//                application.MessageBox( pchar( '提示：' + #13 + '已经超过当日最大执行次数，不能再执行！！！' ), '提示', mb_ok + mb_iconwarning );
//                while not sp_dryz.eof do
//                begin
//                  if sp_dryz['xz'] then
//                  begin
//                    sp_dryz.edit;
//                    sp_dryz['xz'] := false;
//                    sp_dryz.Post;
//                  end;
//                  sp_dryz.Next;
//                end;
//                sfyc := true;

                sp_in_yzqd.close;
                sp_in_yzqd.Parameters.ParamByName( '@zyh' ).Value := sp_brxx.FieldByName( 'zyh' ).asstring;
                sp_in_yzqd.Parameters.ParamByName( '@yzid' ).Value := sp_dryz.FieldByName( 'yzid' ).AsInteger;
                sp_in_yzqd.Parameters.ParamByName( '@zxsj' ).Value := formatdatetime( 'yyyymmdd', dt_zxsj.Date );
                sp_in_yzqd.Parameters.ParamByName( '@yzsj' ).Value := sj;
                sp_in_yzqd.Parameters.ParamByName( '@czydm' ).Value := zxczy;
                sp_in_yzqd.Parameters.ParamByName( '@jyfzbh' ).Value := jyfzbh;
                sp_in_yzqd.ExecProc;
                //修改医嘱执行清单最后执行时间，执行人，已经执行次数
                DM_data.qry_czy.Close;
                DM_data.qry_czy.sql.Text := 'select * from sys_czy where dm=' + '''' + zxczy + '''';
                DM_data.qry_czy.Open;
                zxrymc := Trim( DM_data.qry_czy.FieldByName( 'mc' ).asstring );
                sp_dryz.edit;
                sp_dryz['zhzxsj'] := sj;
                sp_dryz['zxcs'] := sp_dryz.fieldbyname( 'zxcs' ).asinteger + 1;
                sp_dryz['zhxm'] := zxrymc;
                sp_dryz['xz'] := false;
                sp_dryz.post;
              end;
            end;
          end;
          sp_dryz.Next;
        end; //while循环结束

      end; //fqyz放弃医嘱结束；
      if not sfyc then
        dm_data.ado_mydata.CommitTrans
      else
        dm_data.ado_mydata.rollbacktrans;

    except
      dm_data.ado_mydata.rollbacktrans;
    end;
    sp_dryz.GotoBookmark( sbookmark );
    sp_dryz.FreeBookmark( sbookmark );
    end;
  end;



sp_dryz.EnableControls;


//zyh_local:=  Trim(sp_brxx.FieldByName('zyh').AsString);
//sp_brxx.next;
//sp_brxx.Last;
//sp_brxx.Locate('zyh',zyh_local,[]);

    sp_dryz.close;
    sp_dryz.Parameters.ParamByName('@zyh').value:=sp_brxx.FieldByName('zyh').asstring;
    sp_dryz.Parameters.ParamByName('@zxsj').value:=formatdatetime('yyyymmdd',dT_zxsj.Date);
    sp_dryz.Parameters.ParamByName( '@ksdm' ).value := pub_ksdm;
    sp_dryz.Open;
    sp_dryz.First;
    DBGridEh4.Columns[1].Width:=DBGridEh4.Columns[1].Width+1;
    DBGridEh4.Columns[1].Width:=DBGridEh4.Columns[1].Width-1;
    createrect( myrect_cx, sp_dryz, dbgrideh4, 12, 13, 15);

end;

procedure Tfrm_yzzx.cxBtn_kfbqClick(Sender: TObject);
begin
qrl_ks.Caption:='科室:'+pub_ksmc;
qrl_ch.Caption:='床号'+Trim(sp_brxx.FieldByName('bch').AsString);
qrl_brxm.Caption:='姓名:'+Trim(sp_brxx.FieldByName('brxm').AsString);
qrl_ks1.Caption:='科室:'+pub_ksmc;
qrl_ch1.Caption:='床号'+Trim(sp_brxx.FieldByName('bch').AsString);
qrl_brxm1.Caption:='姓名:'+Trim(sp_brxx.FieldByName('brxm').AsString);
QuickRep3.Print;

end;

procedure Tfrm_yzzx.cxBtn_qbkfbqClick(Sender: TObject);
begin
sp_brxx.DisableControls;
sp_brxx.first;
while not sp_brxx.eof do
begin
qrl_ks.Caption:='科室:'+pub_ksmc;
qrl_ch.Caption:='床号'+Trim(sp_brxx.FieldByName('bch').AsString);
qrl_brxm.Caption:='姓名:'+Trim(sp_brxx.FieldByName('brxm').AsString);
qrl_ks1.Caption:='科室:'+pub_ksmc;
qrl_ch1.Caption:='床号'+Trim(sp_brxx.FieldByName('bch').AsString);
qrl_brxm1.Caption:='姓名:'+Trim(sp_brxx.FieldByName('brxm').AsString);
QuickRep3.Print;
sp_brxx.Next;
end;
sp_brxx.First;
sp_brxx.EnableControls;

end;

procedure Tfrm_yzzx.cxButton1Click( Sender: TObject );
begin
//  application.CreateForm( Tfrm_print_syfz, frm_print_syfz );
//  try
//    frm_print_syfz.bqmc.caption := pub_ksmc;
//    frm_print_syfz.dyrq.caption := '日期：' + formatdatetime( 'yyyy-mm-dd hh:mm:ss', frm_func.curr_date );
//    frm_print_syfz.bqmc1.caption := pub_ksmc;
//    frm_print_syfz.dyrq1.caption := '日期：' + formatdatetime( 'yyyy-mm-dd hh:mm:ss', frm_func.curr_date );
//    frm_print_syfz.sp_syfz.Parameters.ParamByName( '@zyh' ).value := sp_brxx.fieldbyname( 'zyh' ).asstring;
//    frm_print_syfz.sp_syfz.Parameters.ParamByName( '@zxsj' ).value := formatdatetime( 'yyyymmdd', dt_zxsj.date );
//    frm_print_syfz.sp_syfz.open;
//
//    frm_print_syfz.brxm.Caption := sp_brxx.fieldbyname( 'brxm' ).asstring;
//    frm_print_syfz.bch.Caption := sp_brxx.fieldbyname( 'bch' ).asstring;
//    frm_print_syfz.zyh.Caption := sp_brxx.fieldbyname( 'tmh' ).asstring;
//    frm_print_syfz.brxm1.Caption := sp_brxx.fieldbyname( 'brxm' ).asstring;
//    frm_print_syfz.bch1.Caption := sp_brxx.fieldbyname( 'bch' ).asstring;
//    frm_print_syfz.zyh1.Caption := sp_brxx.fieldbyname( 'tmh' ).asstring;
//    frm_print_syfz.quickrep1.PrinterSettings.PrinterIndex := printer.Printers.IndexOf( 'sydprint' );
//    frm_print_syfz.yymc.Caption := pub_yymc + '输液卡';
//    frm_print_syfz.yymc1.Caption := pub_yymc + '输液卡';
//    frm_print_syfz.QuickRep1.Preview;
//  finally
//    frm_print_syfz.Free;
//  end;


  try
    application.createform(tfrm_jcsqd, frm_jcsqd);
    frm_jcsqd.pq.Text:=Trim(sp_brxx.FieldByName('bch').AsString);
    frm_jcsqd.showmodal;
  finally
    frm_jcsqd.free;
  end
end;

procedure Tfrm_yzzx.cxButton2Click( Sender: TObject );
begin
//  application.CreateForm( Tfrm_yzqd, frm_yzqd );
//  try
//    frm_yzqd.sp_yzmx.close;
//    frm_yzqd.sp_yzmx.parameters.parambyname( '@zyh' ).value := sp_brxx.FieldByName( 'zyh' ).AsString;
//    frm_yzqd.sp_yzmx.parameters.parambyname( '@yzzxsj' ).value := formatdatetime( 'yyyymmdd', dT_zxsj.Date );
//    frm_yzqd.sp_yzmx.open;
//    frm_yzqd.qrlabel12.Caption := sp_brxx.FieldByName( 'brxm' ).AsString;
//    frm_yzqd.QRL_bch.Caption := sp_brxx.FieldByName( 'bch' ).AsString;
//    ;
//    frm_yzqd.QRL_tmh.Caption := sp_brxx.FieldByName( 'tmh' ).AsString;
//    frm_yzqd.QRL_dysj.Caption := '打印时间:' + FormatDatetime( 'yyyy年mm月dd日 HH时MM分SS秒', frm_func.curr_date );
//    frm_yzqd.rep_dryphz.Prepare;
//    frm_yzqd.QRL_ym.Caption := '共' + IntToStr( frm_yzqd.rep_dryphz.Printer.PageCount ) + '页';
//    frm_yzqd.rep_dryphz.PrinterSettings.PrinterIndex := printer.Printers.IndexOf( 'zxdprint' );
//    frm_yzqd.rep_dryphz.Preview;
//  finally
//    frm_yzqd.Free;
//  end;

  try
    application.createform(tfrm_jydtmdy, frm_jydtmdy);
    frm_jydtmdy.e_tmh.text:=sp_brxx.FieldByName('bch').AsString;
    frm_jydtmdy.showmodal;
    //frm_jydtmdy.Button1.Click;
  finally
    frm_jydtmdy.free;
  end

end;

procedure Tfrm_yzzx.cxButton3Click( Sender: TObject );
begin
  application.CreateForm( Tfrm_bylsyz, frm_bylsyz );
  try
    frm_bylsyz.sp_yzmx.close;
    frm_bylsyz.sp_yzmx.parameters.parambyname( '@zyh' ).value := sp_brxx.FieldByName( 'zyh' ).AsString;
    frm_bylsyz.sp_yzmx.open;
    frm_bylsyz.qrlabel12.Caption := sp_brxx.FieldByName( 'brxm' ).AsString;
    frm_bylsyz.QRL_bch.Caption := sp_brxx.FieldByName( 'bch' ).AsString;
    ;
    frm_bylsyz.QRL_tmh.Caption := sp_brxx.FieldByName( 'tmh' ).AsString;
    frm_bylsyz.QRL_dysj.Caption := '打印时间:' + FormatDatetime( 'yyyy年mm月dd日 HH时MM分SS秒', frm_func.curr_date );
    frm_bylsyz.rep_dryphz.Prepare;
    frm_bylsyz.QRL_ym.Caption := '共' + IntToStr( frm_bylsyz.rep_dryphz.Printer.PageCount ) + '页';
    frm_bylsyz.rep_dryphz.PrinterSettings.PrinterIndex := printer.Printers.IndexOf( 'zxdprint' );

    frm_bylsyz.rep_dryphz.Preview;
  finally
    frm_bylsyz.Free;
  end;
end;

procedure Tfrm_yzzx.cxButton4Click( Sender: TObject );
var
  czks: string;
begin
  qry_yjddy.Close;
  qry_yjddy.Open;
  qry_fymx.First;
  while not qry_fymx.Eof do
  begin
    if qry_fymx.FieldByName( 'tfbz' ).AsBoolean then
    begin
      if qry_fymx.FieldByName( 'yjqrbz' ).AsString = '否' then //医技确认标志,否:未确认费用可以重新打印
      begin
        qry_yjddy.Append;
        qry_yjddy.FieldByName( 'id' ).AsString := IntToStr( qry_fymx.FieldByName( 'id' ).AsInteger );
        qry_yjddy.FieldByName( 'fymc' ).AsString := qry_fymx.FieldByName( 'fymc' ).AsString;
        qry_yjddy.FieldByName( 'dw' ).AsString := qry_fymx.FieldByName( 'dw' ).AsString;
        qry_yjddy.FieldByName( 'fyje' ).AsFloat := qry_fymx.FieldByName( 'fyje' ).AsFloat;
        qry_yjddy.FieldByName( 'sfrq' ).AsString := formatdatetime( '', qry_fymx.FieldByName( 'sfrq' ).AsDateTime );
        czks := qry_fymx.FieldByName( 'czks' ).AsString;
        qry_fymx.Edit;
        qry_fymx.FieldByName( 'tfbz' ).AsBoolean := false;
      end
      else
        Application.MessageBox( '提示:该项目医技科室已经确费,不能再打印!', '提示', MB_ICONINFORMATION );
    end;

    qry_fymx.Next;
  end;
  qrl_bqmc.Caption := pub_bqmc;
  rtl_czks.Caption := czks;
  rtl_sfrq.Caption := formatdatetime( '', frm_func.curr_date );
  QRLabel22.Caption := pub_yymc + '医技确认单';
  QuickRep1.Preview;
end;

procedure Tfrm_yzzx.cxButton5Click( Sender: TObject );
begin
  try
    application.createform( tfrm_zyplcffy, frm_zyplcffy );
    frm_zyplcffy.showmodal;
  finally
    frm_zyplcffy.free;
  end;
end;

procedure Tfrm_yzzx.cxButton6Click( Sender: TObject );
begin
  close;
end;

procedure Tfrm_yzzx.cxButton7Click(Sender: TObject);
begin
sp_dryz.First;
while not sp_dryz.Eof do
begin
sp_dryz.Edit;
sp_dryz.FieldByName('xz').AsBoolean:=false;
sp_dryz.Post;
sp_dryz.Next;
end;
sp_dryz.First;
end;

procedure Tfrm_yzzx.cxButton8Click(Sender: TObject);
begin
sp_dryz.First;
while not sp_dryz.Eof do
begin
if (sp_dryz.FieldByName('yytj').asstring)='静滴' then
begin
sp_dryz.Edit;
sp_dryz.FieldByName('xz').AsBoolean:=True;
sp_dryz.Post;
end
else
begin
sp_dryz.Edit;
sp_dryz.FieldByName('xz').AsBoolean:=false;
sp_dryz.Post;
end;
sp_dryz.Next;
end;
sp_dryz.First;
end;

procedure Tfrm_yzzx.cxButton9Click(Sender: TObject);
begin
sp_dryz.First;
while not sp_dryz.Eof do
begin
if (Trim(sp_dryz.FieldByName('syczxsj').asstring)='')
or ((Trim(sp_dryz.FieldByName('tzrq').asstring)<>'') and (Trim(sp_dryz.FieldByName('tzzxsj').asstring)='')
and (Trim(sp_dryz.FieldByName('yzsx').asstring)='长期') )  then
begin
sp_dryz.Edit;
sp_dryz.FieldByName('xz').AsBoolean:=True;
sp_dryz.Post;
end;
sp_dryz.Next;
end;
sp_dryz.First;


end;

procedure Tfrm_yzzx.cxGrid1DBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean );
begin
  if strtofloat( AViewInfo.RecordViewInfo.GridRecord.Values[4] ) < 0 then
    ACanvas.Brush.Color := $00808040;

end;

procedure Tfrm_yzzx.cxGridDBTableView2CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean );
begin
  if strtoint( AViewInfo.RecordViewInfo.GridRecord.Values[15] ) > 0 then
    ACanvas.Brush.Color := $00808040;
end;

procedure Tfrm_yzzx.DBGridEh1CellClick( Column: TColumnEh );
begin
//  sp_dryz.close;
//  sp_dryz.Parameters.ParamByName( '@zyh' ).value := sp_brxx.FieldByName( 'zyh' ).asstring;
//  sp_dryz.Parameters.ParamByName( '@zxsj' ).value := formatdatetime( 'yyyymmdd', dT_zxsj.Date );
//  sp_dryz.Open;

end;

procedure Tfrm_yzzx.DBGridEh1DblClick(Sender: TObject);
begin
//  if sp_brxx.RecordCount > 0 then
//    cx_zyh := sp_brxx.FieldByName( 'zyh' ).AsString;
//    sp_dryz.close;
//    sp_dryz.Parameters.ParamByName('@zyh').value:=sp_brxx.FieldByName('zyh').asstring;
//    sp_dryz.Parameters.ParamByName('@zxsj').value:=formatdatetime('yyyymmdd',dT_zxsj.Date);
//    sp_dryz.Parameters.ParamByName( '@ksdm' ).value := pub_ksdm;
//    sp_dryz.Open;
//    sp_dryz.First;
//    DBGridEh4.Columns[1].Width:=DBGridEh4.Columns[1].Width+1;
//    DBGridEh4.Columns[1].Width:=DBGridEh4.Columns[1].Width-1;
//    createrect( myrect_cx, sp_dryz, dbgrideh4, 12, 13, 15);
end;

procedure Tfrm_yzzx.DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
begin
    if (Trim(sp_brxx.FieldByName( 'xkyz' ).asstring)='新医嘱')  then
    DBGridEh1.Canvas.Font.Color  := clred;
    ( Sender as TDbGridEh ).DefaultDrawColumnCell( Rect, DataCol, Column, State );
end;

procedure Tfrm_yzzx.DBGridEh4CellClick( Column: TColumnEh );
var
  sbookmark: Tbookmark;
  syfz: string;
  jyfz: string;
  checked: boolean;
begin
  sp_dryz.Edit;
  syfz := sp_dryz.FieldByName( 'fzph' ).AsString;
  jyfz := sp_dryz.FieldByName( 'jyflbh' ).AsString;
  if copy( jyfz, 1, 4 ) <> '0101' then
    jyfz := '';

  if syfz <> '' then
  begin
    sp_dryz.DisableControls;
    sbookmark := sp_dryz.GetBookmark;
    sp_dryz.first;
    sp_dryz.Locate( 'fzph', syfz, [] );
    checked := sp_dryz.FieldByName( 'xz' ).asboolean;
    while ( syfz = sp_dryz.FieldByName( 'fzph' ).AsString ) and ( not sp_dryz.Eof ) do
    begin
      sp_dryz.Edit;
      if checked then
        sp_dryz.FieldByName( 'xz' ).AsBoolean := false
      else
        sp_dryz.FieldByName( 'xz' ).AsBoolean := true;
      sp_dryz.Next;
    end;
    sp_dryz.GotoBookmark( sbookmark );
    sp_dryz.FreeBookmark( sbookmark );
    sp_dryz.EnableControls;
  end
  else
    if jyfz <> '' then
    begin
//      sp_dryz.DisableControls;
//      sbookmark := sp_dryz.GetBookmark;
//      sp_dryz.first;
//      sp_dryz.Locate( 'jyflbh', jyfz, [] );
//      checked := sp_dryz.FieldByName( 'xz' ).asboolean;
//      while ( jyfz = sp_dryz.FieldByName( 'jyflbh' ).AsString ) and ( not sp_dryz.Eof ) do
//      begin
//        sp_dryz.Edit;
//        if checked then
//          sp_dryz.FieldByName( 'xz' ).AsBoolean := false
//        else
//          sp_dryz.FieldByName( 'xz' ).AsBoolean := true;
//        sp_dryz.Next;
//      end;
//      sp_dryz.GotoBookmark( sbookmark );
//      sp_dryz.FreeBookmark( sbookmark );
//      sp_dryz.EnableControls;
      if sp_dryz.FieldByName( 'xz' ).asboolean then
        sp_dryz.FieldByName( 'xz' ).AsBoolean := false
      else
        sp_dryz.fieldbyname( 'xz' ).asboolean := true;
      sp_dryz.post;
    end
    else
    begin
      if sp_dryz.FieldByName( 'xz' ).asboolean then
        sp_dryz.FieldByName( 'xz' ).AsBoolean := false
      else
        sp_dryz.fieldbyname( 'xz' ).asboolean := true;
      sp_dryz.post;
    end;
  if xzzx.Checked then
    zxyz.Click;
end;

procedure Tfrm_yzzx.DBGridEh4ColWidthsChanged( Sender: TObject );
begin
  if sp_dryz.Active then
    createrect( myrect_cx, sp_dryz, dbgrideh4, 12, 13, 15);
   // 9,10,14

end;

procedure Tfrm_yzzx.DBGridEh4DrawColumnCell( Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState );
var
  i: integer;
  myrect1: Trect;
begin

  if trim( sP_dryz.fieldbyname( 'yzsx' ).asstring ) = '临时' then
  begin
    DBGridEh4.Canvas.Brush.Color := clwhite;
    DBGridEh4.Canvas.Font.Color := clGreen;
  end;

  if trim( sp_dryz.fieldbyname( 'fzph' ).asstring ) <> '' then
  begin
    DBGridEh4.canvas.brush.color :=$00E2BC6D;
    i := findinarray( myrect_cx, sp_dryz.fieldbyname( 'fzph' ).asstring );
    DBGridEh4.Canvas.pen.color := $00E2BC6D;
    DBGridEh4.Canvas.MoveTo( myrect_cx[i].left + 20, myrect_cx[i].top );
    DBGridEh4.Canvas.LineTo( myrect_cx[i].left, myrect_cx[i].Bottom );
    DBGridEh4.canvas.Rectangle( myrect_cx[i].left, myrect_cx[i].top, myrect_cx[i].right, myrect_cx[i].bottom );
    DBGridEh4.Canvas.pen.color := clred;
    DBGridEh4.Canvas.MoveTo( myrect_cx[i].left + 20, myrect_cx[i].top );
    DBGridEh4.Canvas.LineTo( myrect_cx[i].left, myrect_cx[i].Bottom );
    with DBGridEh4.Canvas do
    begin
      moveto( myrect_cx[I].gleft, myrect_cx[i].Gtop );
      lineto( myrect_cx[I].gright, myrect_cx[I].gtop );
      lineto( myrect_cx[I].gright, myrect_cx[I].gbottom );
      lineto( myrect_cx[I].gleft, myrect_cx[I].gbottom );
      lineto( myrect_cx[I].gleft, myrect_cx[i].Gtop );
    end;
    myrect1.Left := myrect_cx[i].left;
    myrect1.top := myrect_cx[i].top;
    myrect1.right := myrect_cx[i].right;
    myrect1.bottom := myrect_cx[i].bottom;
    DBGridEh4.Canvas.TextOut( myrect_cx[i].left + 20,
      myrect_cx[i].top + round( myrect_cx[i].height * ( ( myrect_cx[i].sl - 0.5 ) / 2 ) ), myrect_cx[i].tj + #13 + myrect_cx[i].yf );
  end;
//  if FormatDateTime( 'yyyyMMdd', sp_dryz.FieldByName( 'zhzxsj' ).AsDateTime ) = FormatDateTime( 'yyyyMMdd', Now ) then
//    DBGridEh4.canvas.brush.color := $00E2BC6D;

    if trim(sp_dryz.FieldByName( 'syczxsj' ).asstring) <>'' then
    DBGridEh4.canvas.brush.color := $00E2BC9D;

    if (Trim(sp_dryz.FieldByName( 'sftz' ).asstring)='已停止') and (sp_dryz.FieldByName( 'tzzxsj' ).AsDateTime>=sp_dryz.FieldByName( 'tzrq' ).AsDateTime) and (trim(sp_dryz.FieldByName( 'yzsx' ).asstring)<>'临时') then
    DBGridEh4.Canvas.Font.Color  := clred;

  ( Sender as TDbGridEh ).DefaultDrawColumnCell( Rect, DataCol, Column, State );
end;

procedure Tfrm_yzzx.dt_zxsjChange( Sender: TObject );
var zyh_dq:string;
begin
  zyh_dq:=cx_zyh;
  sp_brxx.Close;
  sp_brxx.Parameters.ParamByName( '@sr_bqdm' ).Value := trim( pub_bqdm );
  sp_brxx.Parameters.ParamByName( '@yzzxsj' ).Value := formatdatetime( 'yyyymmdd', dT_zxsj.Date );
  ;
  sp_brxx.Parameters.ParamByName( '@zyh' ).Value := '';
  sp_brxx.Open;
  sp_brxx.Locate('zyh',zyh_dq,[]);

  sp_dryz.close;
  sp_dryz.Parameters.ParamByName( '@zyh' ).value := sp_brxx.FieldByName( 'zyh' ).asstring;
  sp_dryz.Parameters.ParamByName( '@zxsj' ).value := formatdatetime( 'yyyymmdd', dT_zxsj.Date );
  sp_dryz.Open;
end;

end.

