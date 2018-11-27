unit p_bqgl_twjl;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxPC, cxControls, cxContainer, cxEdit, cxGroupBox, ExtCtrls,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, DB,
  cxDBData, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, ADODB, StdCtrls, cxCheckBox,
  ComCtrls, Mask, DBCtrls, GridsEh, DBGridEh, ToolWin, ImgList, Printers,
  cxSplitter, Grids, DBGrids, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, cxSpinEdit, cxTimeEdit, cxDBEdit, DateUtils, CheckLst, Menus, ehlibbde;

type
  TmyArray = array of array of string;

  Tfrm_bqgl_twjl = class( TForm )
    pnl1: TPanel;
    ds1: TDataSource;
    il1: TImageList;
    cxSplitter1: TcxSplitter;
    qry_qub_1: TADOQuery;
    pnl3: TPanel;
    tlb1: TToolBar;
    btn7: TToolButton;
    btn8: TToolButton;
    btn9: TToolButton;
    btn10: TToolButton;
    btn11: TToolButton;
    btn12: TToolButton;
    btn13: TToolButton;
    btn14: TToolButton;
    btn15: TToolButton;
    btn16: TToolButton;
    Image: TImage;
    scrlbr1: TScrollBar;
    sp_in_twb: TADOStoredProc;
    qry_brxx: TADOQuery;
    dbgrd1: TDBGrid;
    ds4: TDataSource;
    cxgrpbx1: TcxGroupBox;
    lbl1: TLabel;
    lbl6: TLabel;
    lbl5: TLabel;
    dbedttmh: TDBEdit;
    edt_1: TEdit;
    dbedtryrq: TDBEdit;
    btn20: TButton;
    cxpgcntrl1: TcxPageControl;
    cxtbsht1: TcxTabSheet;
    pnl5: TPanel;
    lbl2: TLabel;
    lbl3: TLabel;
    dtp1: TDateTimePicker;
    btn2: TButton;
    btn1: TButton;
    cbb4: TComboBox;
    btn17: TButton;
    chklst1: TCheckListBox;
    sp_twjl: TADOStoredProc;
    lbl4: TLabel;
    pm1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    dbgrdh1: TDBGridEh;
    sp_twb_save: TADOStoredProc;
    chk1: TCheckBox;
    pm2: TPopupMenu;
    mniN3: TMenuItem;
    Panel1: TPanel;
    CheckBox1: TCheckBox;
    Label1: TLabel;
    qry_ryrq: TADOQuery;
    procedure FormShow( Sender: TObject );
    procedure cbb1KeyDown( Sender: TObject; var Key: Word; Shift: TShiftState );
    procedure cbb1Change( Sender: TObject );
    procedure dtp1Change( Sender: TObject );
    procedure btn2Click( Sender: TObject );
    procedure qry_twjlBeforeInsert( DataSet: TDataSet );
    procedure FormKeyDown( Sender: TObject; var Key: Word; Shift: TShiftState );
    procedure btn7Click( Sender: TObject );
    procedure btn10Click( Sender: TObject );
    procedure btn13Click( Sender: TObject );
    procedure btn14Click( Sender: TObject );
    procedure btn15Click( Sender: TObject );
    procedure btn16Click( Sender: TObject );
    procedure dbgrdh1KeyUp( Sender: TObject; var Key: Word; Shift: TShiftState );
    procedure FormClose( Sender: TObject; var Action: TCloseAction );
    procedure FormCreate( Sender: TObject );
    procedure btn1Click( Sender: TObject );
    procedure scrlbr1Change( Sender: TObject );
    procedure btn17Click( Sender: TObject );
    procedure qry_twjlAfterEdit( DataSet: TDataSet );
    procedure edt_1KeyDown( Sender: TObject; var Key: Word; Shift: TShiftState );
    procedure dbgrd1Exit( Sender: TObject );
    procedure dbgrd1KeyDown( Sender: TObject; var Key: Word; Shift: TShiftState );
    procedure btn20Click( Sender: TObject );
    procedure chklst1ClickCheck( Sender: TObject );
    procedure dbgrdh1KeyDown( Sender: TObject; var Key: Word;
      Shift: TShiftState );
    procedure dbgrdh1CellClick( Column: TColumnEh );
    procedure N1Click( Sender: TObject );
    procedure N2Click( Sender: TObject );
    procedure sp_twjlBeforeEdit( DataSet: TDataSet );
    procedure dbgrdh1KeyPress( Sender: TObject; var Key: Char );
    procedure sp_twjlAfterEdit( DataSet: TDataSet );
    procedure mniN3Click( Sender: TObject );
    procedure dbgrdh1Columns0DropDownBoxTitleBtnClick( Sender: TObject;
      ACol: Integer; Column: TColumnEh );
    procedure dbgrdh1Columns1DropDownBoxTitleBtnClick( Sender: TObject;
      ACol: Integer; Column: TColumnEh );
    procedure dbgrdh1Columns2DropDownBoxTitleBtnClick( Sender: TObject;
      ACol: Integer; Column: TColumnEh );
    procedure cbb4Change( Sender: TObject );
    procedure chk1Click( Sender: TObject );
    procedure CheckBox1Click( Sender: TObject );
    procedure sp_twjlBeforePost( DataSet: TDataSet );
    procedure dbgrdh1ColExit( Sender: TObject );
  private
    procedure tqsj( lx: integer );
    procedure imagePrint;
    function getListValue( key, index: Integer ): string;
    procedure ht;
    procedure save_syl;
    procedure save_xy;
    function getind( name: string ): integer;
    procedure lstcheck;
    procedure xz;
    { Private declarations }
  public
    valuechange: boolean; //判定是否有值改变
    { Public declarations }
  end;

var
  frm_bqgl_twjl: Tfrm_bqgl_twjl;
  m_height, m_width, sscs: integer;
  da1, maxrq, minrq, nextrq, ksrq: Tdatetime;
  zfcl1: array[1..10] of string = ( '日        期', '患病日数', '术后日数', '每日时间', '小  便  量(ml)', '大  便 次 数',
    '输入液量(ml)', '饮  入  量(ml)', '血  压(mmhg)', '体     重(kg)' );
  zy_zyh: string;
  prv_twfs: array[1..3] of string = ( '腋下', '口内', '直肠' );
  prv_tssm: array[1..4] of string = ( '拒测', '外出', '请假', '人工冬眠' );
  bjqx: integer = 0;
  myts: integer = 7;
  cqtwb: Integer = 0;

implementation
uses p_main, p_gl, p_rqlr, p_kgxz, p_twbdy1, p_bqgl_twtpdy;
var
  rq: string;
  tp_zyh: string = '';
  ys: integer = 0;
  dybz: boolean;
  jlty: TmyArray;
  bjzt: boolean = false;
  prv_ph: string;
  prv_twsx: Integer = 50;
  prv_twxx: Integer = 10;
{$R *.dfm}

procedure Tfrm_bqgl_twjl.btn20Click( Sender: TObject );
var
  xh: Integer;
  jlrq, zyh: string;
begin
  if qry_brxx.Active and ( qry_brxx.RecordCount > 0 ) then
  begin
    xh := cbb4.ItemIndex + 1;
    jlrq := FormatDateTime( 'yyyymmdd', dtp1.Datetime );
    qry_qub_1.Close;
    qry_qub_1.SQL.text := 'if not exists(select zyh from zybl_rcjl where convert(char,jlrq,112)=' + #39 + jlrq + #39 +
      ' and xh = ' + inttostr( xh ) + ' and zyh =' + #39 + qry_brxx.FieldByName( 'zyh' ).AsString + #39 + ')' +
      ' insert into zybl_rcjl(tmh,brxm,zyh,xh,jlrq,sd,mb,tw,hx,xl,wljwhtw,bqdm,tjsj,ksdm,bch)' +
      ' select ' + #39 + qry_brxx.FieldByName( 'tmh' ).AsString + #39 + ','
      + #39 + qry_brxx.FieldByName( 'brxm' ).AsString + #39 + ','
      + #39 + qry_brxx.FieldByName( 'zyh' ).AsString + #39 + ',' + inttostr( xh ) + ','
      + '''' + FormatDateTime( 'yyyy-mm-dd', dtp1.DateTime ) + ' ' + cbb4.text + ':00:00' + '''' + ',' +
      #39 + cbb4.text + ':00:00' + #39 + ',0,0,0,0,0,' + '''' + pub_bqdm + '''' + ',getdate(),'
      + #39 + qry_brxx.FieldByName( 'ksdm' ).AsString + #39 + ',' + #39 + qry_brxx.FieldByName( 'bch' ).AsString + #39;
    qry_qub_1.ExecSQL;
  end;
  if qry_brxx.Active and ( qry_brxx.RecordCount > 0 ) then
  begin
    zyh := qry_brxx.FieldByName( 'zyh' ).AsString;
    xh := 1;
    with frm_main do
    begin

      qry_pub.Close;
      qry_pub.SQL.Text := 'if not exists(select zyh from zybl_cgjl' +
        ' where convert(char,jlrq,112) = ' + #39 + jlrq + #39 + ' and jllx = 1 and zyh =' + #39 + zyh + #39 + ')' +
        ' insert into zybl_cgjl(zyh,xh,jlrq,xbl,dbcs,syl,yrl,xy,tz,jllx,ryrq,ryts,bqdm,tjsj,ksdm,bch)' +
        ' select ' + #39 + zyh + #39 + ',' + #39 + IntToStr( xh ) + #39 + ',' + #39 + FormatDateTime( 'yyyy-mm-dd hh:mm:ss', dtp1.DateTime ) + #39 + ',0,-1,0,0,0,0,1' +
        ' ,' + #39 + formatdatetime( 'yyyy-mm-dd hh:mm:ss', qry_brxx.FieldByName( 'ryrq' ).AsDateTime ) + #39 +
        ',1,' + #39 + pub_bqdm + #39 + ',getdate(),' + #39 + qry_brxx.FieldByName( 'ksdm' ).AsString + #39 + ',' + #39 + qry_brxx.FieldByName( 'bch' ).AsString + #39;
      qry_pub.ExecSQL;
      qry_pub.close;
      qry_pub.SQL.Text := 'update zybl_rcjl with(rowlock) set bqdm = ' + #39 + pub_bqdm + #39 + ' where zyh =' + #39 + qry_brxx.FieldByName( 'zyh' ).AsString + #39;
      qry_pub.SQL.add( 'update zybl_cgjl with(rowlock) set bqdm = ' + #39 + pub_bqdm + #39 + ' where zyh =' + #39 + qry_brxx.FieldByName( 'zyh' ).AsString + #39 );
      qry_pub.ExecSQL;
    end;
  end;

  tqsj( 1 );
end;

procedure Tfrm_bqgl_twjl.btn2Click( Sender: TObject );
var
  fstw, xzqbq, hxq, ybj: string;
  I: Integer;
begin
  sp_twjl.UpdateBatch( arall );
  sp_twb_save.Close;
  sp_twb_save.Parameters.ParamByName( '@czy' ).Value := pub_czydm;
  sp_twb_save.Parameters.ParamByName( '@ph' ).Value := prv_ph;
  sp_twb_save.ExecProc;
  Application.MessageBox( '保存成功！', '提示', MB_OK + MB_ICONINFORMATION );
  dbgrdh1.ReadOnly := true;
  //p_twbdy1.proc_drawtwb( ys, tp_zyh );
  ht;
  bjzt := false;
end;

procedure Tfrm_bqgl_twjl.btn1Click( Sender: TObject );
begin
  dbgrdh1.ReadOnly := false;
  dbgrdh1.SetFocus;
  bjzt := True;
  dbgrdh1.Columns[0].ReadOnly := true;
  dbgrdh1.Columns[1].ReadOnly := true;
  dbgrdh1.Columns[2].ReadOnly := true;
end;

procedure Tfrm_bqgl_twjl.cbb1Change( Sender: TObject );
begin
  tqsj( 1 );
end;

procedure Tfrm_bqgl_twjl.cbb1KeyDown( Sender: TObject; var Key: Word;
  Shift: TShiftState );
begin
  if key = 13 then
  begin
    tqsj( 1 );
  end;
end;

procedure Tfrm_bqgl_twjl.cbb4Change( Sender: TObject );
begin
  xz;
end;

procedure Tfrm_bqgl_twjl.CheckBox1Click( Sender: TObject );
begin
  if CheckBox1.Checked then
  begin
    myts := 21;
    cqtwb := 1;
  end
  else
  begin
    myts := 7;
    cqtwb := 0;
  end;
end;

procedure Tfrm_bqgl_twjl.chk1Click( Sender: TObject );
begin
  xz;
end;

procedure Tfrm_bqgl_twjl.chklst1ClickCheck( Sender: TObject );
begin
  lstcheck;
end;

procedure Tfrm_bqgl_twjl.dbgrd1Exit( Sender: TObject );
begin
  tp_zyh := qry_brxx.FieldByName( 'zyh' ).AsString;
  ys := 1;
  //p_twbdy1.proc_drawtwb( ys, tp_zyh );
  ht;
  dbgrd1.Visible := False;
end;

procedure Tfrm_bqgl_twjl.dbgrd1KeyDown( Sender: TObject; var Key: Word;
  Shift: TShiftState );
begin
  if key = 13 then
  begin
    dbgrd1.Visible := false;
  end;
end;

procedure Tfrm_bqgl_twjl.dbgrdh1CellClick( Column: TColumnEh );
var
  i: integer;
  ryrq: Tdatetime;
begin
  if not sp_twjl.Active then
  begin
    exit;
  end;
  qry_ryrq.close;
  qry_ryrq.Parameters.ParamByName( 'zyh' ).Value := sp_twjl.FieldByName( 'zyh' ).AsString;
  qry_ryrq.Open;
  ryrq := qry_ryrq.FieldByName( 'ryrq' ).AsDateTime;
  if FormatDateTime( 'yyyy', ryrq ) < '2000' then
  begin
    ryrq := qry_ryrq.FieldByName( 'csrq' ).AsDateTime;
  end;
  if FormatDateTime( 'yyyy', ryrq ) < '2000' then
  begin
    Application.MessageBox( '没有录入入院日期或者出生日期', '提示', MB_OK +
      MB_ICONINFORMATION );
    exit;
  end;
  i := DaysBetween( StrToDate( formatdatetime( 'yyyy-MM-dd', dtp1.DateTime ) ),
    StrToDate( formatdatetime( 'yyyy-MM-dd', ryrq ) ) );
  tp_zyh := sp_twjl.FieldByName( 'zyh' ).AsString;
  ys := ( i div myts ) + 1;

  ht;
end;

procedure Tfrm_bqgl_twjl.dbgrdh1ColExit( Sender: TObject );
var
  str: string;
  tw: real;
begin
  if ( dbgrdh1.SelectedField.FieldName = 'xysj' )
    or ( dbgrdh1.SelectedField.FieldName = 'xy1sj' )
    or ( dbgrdh1.SelectedField.FieldName = 'xy2sj' ) then
  begin
    str := sp_twjl.FieldByName( dbgrdh1.SelectedField.FieldName ).AsString;
    if ( Pos( ':', str ) <= 0 ) and ( trim( str ) <> '' ) then
    begin
      Application.MessageBox( '请录入正确的格式！', '提示', MB_OK +
        MB_ICONINFORMATION );
      sp_twjl.Edit;
      sp_twjl.FieldByName( dbgrdh1.SelectedField.FieldName ).Value := '';
      sp_twjl.Post;
      abort;
    end;
  end;
  if ( dbgrdh1.SelectedField.FieldName = 'tw' )
    or ( dbgrdh1.SelectedField.FieldName = 'wljwhtw' ) then
  begin
    tw := sp_twjl.FieldByName( dbgrdh1.SelectedField.FieldName ).AsFloat;
    if ( tw <> 0 ) and ( ( tw < prv_twxx ) or ( tw > prv_twsx ) ) then
    begin
      Application.MessageBox( '你录入的体温不在正确的范围内！', '提示', MB_OK +
        MB_ICONINFORMATION );
      sp_twjl.Edit;
      sp_twjl.FieldByName( dbgrdh1.SelectedField.FieldName ).Value := 0;
      sp_twjl.Post;
      abort;
    end;
  end;
end;

procedure Tfrm_bqgl_twjl.dbgrdh1Columns0DropDownBoxTitleBtnClick(
  Sender: TObject; ACol: Integer; Column: TColumnEh );
begin
  if column.Title.SortMarker = smdowneh then
    sp_twjl.Sort := column.FieldName
  else
    sp_twjl.Sort := column.FieldName + ' DESC';
end;

procedure Tfrm_bqgl_twjl.dbgrdh1Columns1DropDownBoxTitleBtnClick(
  Sender: TObject; ACol: Integer; Column: TColumnEh );
begin
  if column.Title.SortMarker = smdowneh then
    sp_twjl.Sort := column.FieldName
  else
    sp_twjl.Sort := column.FieldName + ' DESC';
end;

procedure Tfrm_bqgl_twjl.dbgrdh1Columns2DropDownBoxTitleBtnClick(
  Sender: TObject; ACol: Integer; Column: TColumnEh );
begin
  if column.Title.SortMarker = smdowneh then
    sp_twjl.Sort := column.FieldName
  else
    sp_twjl.Sort := column.FieldName + ' DESC';
end;

procedure Tfrm_bqgl_twjl.dbgrdh1KeyDown( Sender: TObject; var Key: Word;
  Shift: TShiftState );
var
  wz: integer;
  temp: string;
begin
  if not sp_twjl.Active then
  begin
    exit;
  end;
  if sp_twjl.Active and ( bjqx = 0 ) and bjzt and ( key <> 13 ) then
  begin
    if jlty[sp_twjl.RecNo + 2, getind( dbgrdh1.SelectedField.FieldName )] <>
      jlty[2, getind( dbgrdh1.SelectedField.FieldName )] then
    begin
      exit;
    end;
  end;
  wz := dbgrdh1.SelectedIndex;
  if key = 13 then
  begin
    dbgrdh1.SelectedIndex := dbgrdh1.SelectedIndex + 1;
    while not dbgrdh1.Columns[dbgrdh1.SelectedIndex].Visible do
    begin
      dbgrdh1.SelectedIndex := dbgrdh1.SelectedIndex + 1;
      if dbgrdh1.SelectedIndex = dbgrdh1.Columns.Count - 1 then
        Break;
    end;
    temp := dbgrdh1.SelectedField.FieldName;
    if ( ( wz = dbgrdh1.SelectedIndex ) or ( not dbgrdh1.Columns[dbgrdh1.SelectedIndex].Visible ) ) and ( not sp_twjl.Eof ) then
    begin
      sp_twjl.next;
      dbgrdh1.SelectedIndex := 3;
    end;
  end;
  temp := dbgrdh1.SelectedField.FieldName;
  if pub_twbbbh = 3 then
  begin
    if ( temp = 'kg1' ) or ( temp = 'kg2' ) or ( temp = 'kg3' ) or ( temp = 'kg4' ) or ( temp = 'kg5' ) then
    begin
      if ( key <> 13 ) and ( key <> 8 ) and not ( ssShift in Shift ) and not ( ssCtrl in Shift ) and
        not ( ssAlt in Shift ) then
      begin
        sp_twjl.Edit;
        sp_twjl.FieldByName( temp ).Value := func_kglr( dbgrdh1.Columns[dbgrdh1.SelectedIndex].Title.Caption );
        sp_twjl.Post;
      end;
    end;
  end;
  if ( ( temp = 'dtecsssj' ) or ( temp = 'ssrq' ) or ( temp = 'ryrq' ) or ( temp = 'fmrq' ) or ( temp = 'swrq' ) or ( temp = 'zrrq' ) or ( temp = 'cyrq' ) or ( temp = 'csrq' ) ) and bjzt then
  begin
    if ( key <> 13 ) and ( key <> 8 ) and not ( ssShift in Shift ) and not ( ssCtrl in Shift ) and
      not ( ssAlt in Shift ) then
    begin
      Application.CreateForm( Tfrm_rqlr, frm_rqlr );
      try
        frm_rqlr.cxdtdt1.Date := dtp1.DateTime;
        frm_rqlr.ShowModal;
        if FormatDateTime( 'yyyymmdd', dtp1.DateTime ) = FormatDateTime( 'yyyymmdd', frm_rqlr.cxdtdt1.Date ) then
        begin
          if p_rqlr.xg then
          begin
            sp_twjl.Edit;
            sp_twjl.FieldByName( dbgrdh1.SelectedField.FieldName ).Value := frm_rqlr.cxdtdt1.Date;
            sp_twjl.Post;
          end;
        end
        else
        begin
          Application.MessageBox( '时间录入必须和记录时间为同一天！',
            '提示', MB_OK + MB_ICONINFORMATION );

        end;
      finally
        frm_rqlr.free;
      end;
    end;
  end;
  if dbgrdh1.Columns[dbgrdh1.SelectedIndex].FieldName = 'twfs' then
  begin
    if Trim( sp_twjl.FieldByName( 'twfs' ).AsString ) = '' then
    begin
      sp_twjl.Edit;
      sp_twjl.FieldByName( 'twfs' ).Value := '腋下';
      sp_twjl.Post;
    end;
  end;
  if key = VK_F1 then
  begin
    p_gl.gl( temp );
    sp_twjl.Filtered := false;
    if temp <> '' then
    begin
      sp_twjl.Filter := 'tmh like ' + #39 + '%' + temp + '%' + #39 +
        ' or brxm like ' + #39 + '%' + temp + '%' + #39 +
        ' or bch like ' + #39 + '%' + temp + '%' + #39;
      sp_twjl.Filtered := true;
    end;
  end;
  if key = VK_F2 then
  begin
    sp_twjl.Filtered := false;
  end;

end;

procedure Tfrm_bqgl_twjl.dbgrdh1KeyPress( Sender: TObject; var Key: Char );
var
  a: Extended;
  b, c: string;
begin
  if sp_twjl.Active and ( bjqx = 0 ) and bjzt and ( key <> #13 ) then
  begin
    b := jlty[2, getind( dbgrdh1.SelectedField.FieldName )];
    c := jlty[sp_twjl.RecNo + 2, getind( dbgrdh1.SelectedField.FieldName )];
    if TryStrToFloat( b, a ) and TryStrToFloat( c, a ) then
    begin
      if StrToFloat( jlty[sp_twjl.RecNo + 2, getind( dbgrdh1.SelectedField.FieldName )] ) <>
      StrToFloat( jlty[2, getind( dbgrdh1.SelectedField.FieldName )] ) then
      begin
        Application.MessageBox( '你没有修改权限！', '提示', MB_OK +
          MB_ICONINFORMATION );
        abort;
      end;
    end
    else
      if jlty[sp_twjl.RecNo + 2, getind( dbgrdh1.SelectedField.FieldName )] <>
        jlty[2, getind( dbgrdh1.SelectedField.FieldName )] then
      begin
        Application.MessageBox( '你没有修改权限！', '提示', MB_OK +
          MB_ICONINFORMATION );
        abort;
      end;
  end;
end;

procedure Tfrm_bqgl_twjl.dbgrdh1KeyUp( Sender: TObject; var Key: Word;
  Shift: TShiftState );
var
  wz: integer;
begin
  if not sp_twjl.Active then
  begin
    exit;
  end;
  wz := dbgrdh1.SelectedIndex;
  getListValue( Key, wz );
end;

function Tfrm_bqgl_twjl.getListValue( key, index: integer ): string;
var
  temp: string;
  i: integer;
begin
  if ( key > 48 ) and ( key < 52 ) and ( index = 4 ) then
  begin
    sp_twjl.edit;
    sp_twjl.FieldByName( 'twfs' ).Value := prv_twfs[key - 48];
    sp_twjl.Post;
  end;
  if ( key > 48 ) and ( key < 53 ) and ( index = 12 ) then
  begin
    sp_twjl.edit;
    sp_twjl.FieldByName( 'sm' ).Value := prv_tssm[key - 48];
    sp_twjl.Post;
  end;
end;

procedure Tfrm_bqgl_twjl.ht;
begin
  with frm_main do
  begin
    qry_pub.Close;
    qry_pub.SQL.Text := 'select * from zybl_twb_dy where zyh =' + #39 + tp_zyh + #39 + ' and ys =' + inttostr( ys );
    qry_pub.Open;
    if qry_pub.RecordCount > 0 then
    begin
      dybz := true;
      lbl4.Caption := '第' + inttostr( ys ) + '页 已打印';
    end
    else
    begin
      dybz := false;
      lbl4.Caption := '第' + inttostr( ys ) + '页 未打印';
    end;
  end;
  if pub_twbbbh = 99 then
  begin
    proc_drawtwb( ys, tp_zyh, Image, false );
  end
  else
  begin
    frm_bqgl_twtpdy.drawBrTwb( tp_zyh, ys, 0 );
    image.Picture.Graphic := frm_bqgl_twtpdy.img1.Picture.Graphic;
  end;

  image.Width := frm_bqgl_twjl.Width;
  Image.Height := frm_bqgl_twjl.Height;
  Image.Top := tlb1.Height;
  Image.Left := 15;
  scrlbr1.Max := Image.Height div 2;
  scrlbr1.Position := 75;
  Image.Top := tlb1.Height - scrlbr1.Position;
end;

procedure Tfrm_bqgl_twjl.save_syl;
var
  rggm: string;
  gc: string;
  dbsj: string;
  blng: string;
  ybj: string;
begin
  with frm_main do
  begin
    if sp_twjl.FieldByName( 'gc' ).AsBoolean then
      gc := '1'
    else
      gc := '0';
    if sp_twjl.FieldByName( 'dbsj' ).AsBoolean then
      dbsj := '1'
    else
      dbsj := '0';
    if sp_twjl.FieldByName( 'rggm' ).AsBoolean then
      rggm := '1'
    else
      rggm := '0';
    if sp_twjl.fieldbyname( 'blng' ).asboolean then
      blng := '1'
    else
      blng := '0';
    if sp_twjl.FieldByName( 'ybj' ).AsBoolean then
    begin
      ybj := '1';
    end
    else
    begin
      ybj := '0';
    end;
    qry_pub.Close;
    qry_pub.SQL.Text := 'update zybl_cgjl with(rowlock) set xbl =' + ''''
      + sp_twjl.FieldByName( 'xbl' ).AsString + ''''
      + ',blng=' + blng + ',dbcs=' + sp_twjl.FieldByName( 'dbcs' ).AsString
      + ',syl=' + sp_twjl.FieldByName( 'syl' ).AsString + ',yrl='
      + sp_twjl.FieldByName( 'yrl' ).AsString + ',gc =' + gc + ',gchcs='
      + sp_twjl.FieldByName( 'gchcs' ).AsString + ',dbsj=' + dbsj
      + ',rggm=' + rggm + ',kg1=' + '''' + sp_twjl.FieldByName( 'kg1' ).AsString
      + '''' + ',kg2=' + '''' + sp_twjl.FieldByName( 'kg2' ).AsString
      + '''' + ',kg3=' + '''' + sp_twjl.FieldByName( 'kg3' ).AsString
      + '''' + ',kg4=' + '''' + sp_twjl.FieldByName( 'kg4' ).AsString
      + '''' + ',kg5=' + '''' + sp_twjl.FieldByName( 'kg5' ).AsString
      + '''' + ',kg6=' + '''' + sp_twjl.FieldByName( 'kg6' ).AsString
      + '''' + ' where id =' + sp_twjl.FieldByName( 'id1' ).AsString;
    qry_pub.ExecSQL;
    qry_pub.close;
    qry_pub.SQL.Text := 'update zybl_cgjl with(rowlock) set ybj =' + ybj
      + ',bjsj = getdate() where id =' + sp_twjl.FieldByName( 'id1' ).AsString + ' and ybj = 0';
    qry_pub.ExecSQL;
  end;
end;

procedure Tfrm_bqgl_twjl.save_xy;
var
  ybj: string;
begin
  with frm_main do
  begin
    if sp_twjl.FieldByName( 'ybj' ).AsBoolean then
    begin
      ybj := '1';
    end
    else
    begin
      ybj := '0';
    end;
    qry_pub.Close;
    qry_pub.SQL.Text := 'update zybl_cgjl with(rowlock) set xy =' + ''''
      + sp_twjl.FieldByName( 'xy' ).AsString + '''' + ',xy1 ='
      + '''' + sp_twjl.FieldByName( 'xy1' ).AsString + ''''
      + ',xy2 =' + '''' + sp_twjl.FieldByName( 'xy2' ).AsString
      + '''' + ',xysj =' + '''' + sp_twjl.FieldByName( 'xysj' ).AsString
      + '''' + ',xy1sj =' + '''' + sp_twjl.FieldByName( 'xy1sj' ).AsString
      + '''' + ',xy2sj =' + '''' + sp_twjl.FieldByName( 'xy2sj' ).AsString
      + '''' + ',tz=' + '''' + sp_twjl.FieldByName( 'tz' ).AsString
      + '''' + ' where id =' + sp_twjl.FieldByName( 'id1' ).AsString;
    qry_pub.ExecSQL;
    if Trim( sp_twjl.FieldByName( 'ssrq' ).AsString ) <> '' then
    begin
      qry_pub.Close;
      qry_pub.SQL.Text := 'update zybl_cgjl with(rowlock) set ssrq= isnull(' + ''''
        + sp_twjl.FieldByName( 'ssrq' ).AsString + '''' + ',null) where id =' + sp_twjl.FieldByName( 'id1' ).AsString;
      qry_pub.ExecSQL;
      qry_pub.Close;
      qry_pub.SQL.Text := 'update zybl_cgjl with(rowlock) set ssts = isnull(datediff(day,ssrq,jlrq),0)'
        + ' where id =' + sp_twjl.FieldByName( 'id1' ).AsString;
      qry_pub.ExecSQL;
    end
    else
    begin
      qry_pub.Close;
      qry_pub.SQL.Text := 'update zybl_cgjl with(rowlock) set ssrq= isnull(null,null) where id =' + sp_twjl.FieldByName( 'id1' ).AsString;
      qry_pub.ExecSQL;
    end;
    if Trim( sp_twjl.FieldByName( 'fmrq' ).AsString ) <> '' then
    begin
      qry_pub.Close;
      qry_pub.SQL.Text := 'update zybl_cgjl with(rowlock) set fmrq=isnull('
        + '''' + sp_twjl.FieldByName( 'fmrq' ).AsString + ''''
        + ',null) where id =' + sp_twjl.FieldByName( 'id1' ).AsString;
      qry_pub.ExecSQL;
    end
    else
    begin
      qry_pub.Close;
      qry_pub.SQL.Text := 'update zybl_cgjl with(rowlock) set fmrq=isnull(null,null) where id =' + sp_twjl.FieldByName( 'id1' ).AsString;
      qry_pub.ExecSQL;
    end;
    if Trim( sp_twjl.FieldByName( 'ryrq' ).AsString ) <> '' then
    begin
      qry_pub.Close;
      qry_pub.SQL.Text := 'update zybl_cgjl with(rowlock) set ryrq=isnull('
        + '''' + sp_twjl.FieldByName( 'ryrq' ).AsString
        + '''' + ',null) where zyh =' + '''' + sp_twjl.FieldByName( 'zyh' ).AsString + '''';
      qry_pub.ExecSQL;
    end
    else
    begin
      qry_pub.Close;
      qry_pub.SQL.Text := 'update zybl_cgjl with(rowlock) set ryrq=isnull(null,null) where zyh ='
        + '''' + sp_twjl.FieldByName( 'zyh' ).AsString + '''';
      qry_pub.ExecSQL;
    end;
    if Trim( sp_twjl.FieldByName( 'cyrq' ).AsString ) <> '' then
    begin
      qry_pub.Close;
      qry_pub.SQL.Text := 'update zybl_cgjl with(rowlock) set cyrq=isnull('
        + '''' + sp_twjl.FieldByName( 'cyrq' ).AsString + '''' + ',null) where id =' + sp_twjl.FieldByName( 'id1' ).AsString;
      qry_pub.ExecSQL;
    end
    else
    begin
      qry_pub.Close;
      qry_pub.SQL.Text := 'update zybl_cgjl with(rowlock) set cyrq=isnull(null,null) where id =' + sp_twjl.FieldByName( 'id1' ).AsString;
      qry_pub.ExecSQL;
    end;
    if Trim( sp_twjl.FieldByName( 'zrrq' ).AsString ) <> '' then
    begin
      qry_pub.Close;
      qry_pub.SQL.Text := 'update zybl_cgjl with(rowlock) set zrrq=isnull('
        + '''' + sp_twjl.FieldByName( 'zrrq' ).AsString + '''' + ',null) where id =' + sp_twjl.FieldByName( 'id1' ).AsString;
      qry_pub.ExecSQL;
    end
    else
    begin
      qry_pub.Close;
      qry_pub.SQL.Text := 'update zybl_cgjl with(rowlock) set zrrq=isnull(null,null) where id =' + sp_twjl.FieldByName( 'id1' ).AsString;
      qry_pub.ExecSQL;
    end;
    if Trim( sp_twjl.FieldByName( 'zrrq' ).AsString ) <> '' then
    begin
      qry_pub.Close;
      qry_pub.SQL.Text := 'update zybl_cgjl with(rowlock) set zrrq=isnull('
        + '''' + sp_twjl.FieldByName( 'zrrq' ).AsString + '''' + ',null) where id =' + sp_twjl.FieldByName( 'id1' ).AsString;
      qry_pub.ExecSQL;
    end
    else
    begin
      qry_pub.Close;
      qry_pub.SQL.Text := 'update zybl_cgjl with(rowlock) set zrrq=isnull(null,null) where id =' + sp_twjl.FieldByName( 'id1' ).AsString;
      qry_pub.ExecSQL;
    end;
    if Trim( sp_twjl.FieldByName( 'swrq' ).AsString ) <> '' then
    begin
      qry_pub.Close;
      qry_pub.SQL.Text := 'update zybl_cgjl with(rowlock) set swrq=isnull('
        + '''' + sp_twjl.FieldByName( 'swrq' ).AsString + '''' + ',null) where id =' + sp_twjl.FieldByName( 'id1' ).AsString;
      qry_pub.ExecSQL;
    end
    else
    begin
      qry_pub.Close;
      qry_pub.SQL.Text := 'update zybl_cgjl with(rowlock) set swrq=isnull(null,null) where id =' + sp_twjl.FieldByName( 'id1' ).AsString;
      qry_pub.ExecSQL;
    end;
    qry_pub.close;
    qry_pub.SQL.Text := 'update zybl_cgjl with(rowlock) set ybj =' + ybj
      + ',bjsj = getdate() where id =' + sp_twjl.FieldByName( 'id1' ).AsString + ' and ybj = 0';
    qry_pub.ExecSQL;
  end;
end;

procedure Tfrm_bqgl_twjl.dtp1Change( Sender: TObject );
begin
  if dtp1.DateTime > frm_main.curr_date then
  begin
    dtp1.DateTime := frm_main.curr_date;
  end;
  xz;
end;

procedure Tfrm_bqgl_twjl.edt_1KeyDown( Sender: TObject; var Key: Word;
  Shift: TShiftState );
var
  temp: string;
  i: Integer;
begin
  if key = 13 then
  begin
    temp := Trim( edt_1.text );
    if temp <> '' then
    begin
      //temp := FormatEx( StrToInt( temp ), 9 );
      qry_brxx.close;
      qry_brxx.Parameters.ParamByName( 'tmh' ).Value := temp;
      qry_brxx.Open;
      if qry_brxx.RecordCount = 0 then
      begin
        Application.MessageBox( '请输入正确的条码号!', '提示', MB_OK +
          MB_ICONINFORMATION );
      end
      else
      begin
        if qry_brxx.RecordCount > 1 then
        begin
          dbgrd1.Visible := true;
          dbgrd1.SetFocus;
        end
        else
        begin
          tp_zyh := qry_brxx.FieldByName( 'zyh' ).AsString;
          ys := 1;
          //p_twbdy1.proc_drawtwb( ys, tp_zyh );
          ht;
        end;
      end;
    end
    else
    begin
      Application.MessageBox( '请输入正确的条码号!', '提示', MB_OK +
        MB_ICONINFORMATION );
    end;
  end;
end;

procedure Tfrm_bqgl_twjl.FormClose( Sender: TObject; var Action: TCloseAction );
begin
  if bjzt then
  begin
    if Application.MessageBox( '当前数据正在编辑是否保存？', '提示', MB_YESNO
      + MB_ICONINFORMATION ) = IDYES then
    begin
      sp_twjl.UpdateBatch( arall );
      sp_twb_save.Close;
      sp_twb_save.Parameters.ParamByName( '@czy' ).Value := pub_czydm;
      sp_twb_save.Parameters.ParamByName( '@ph' ).Value := prv_ph;
      sp_twb_save.ExecProc;
      Application.MessageBox( '保存成功！', '提示', MB_OK + MB_ICONINFORMATION );
    end;
  end;
  frm_twbdy1.Free;
end;

procedure Tfrm_bqgl_twjl.FormCreate( Sender: TObject );
begin
  if pub_twbbbh = 99 then
  begin
    Application.CreateForm( Tfrm_twbdy1, frm_twbdy1 );
  end
  else
  begin
    application.CreateForm( Tfrm_bqgl_twtpdy, frm_bqgl_twtpdy );
  end;
end;

procedure Tfrm_bqgl_twjl.FormKeyDown( Sender: TObject; var Key: Word;
  Shift: TShiftState );
begin
  if key = 27 then
  begin
    Close;
  end;
end;

procedure Tfrm_bqgl_twjl.FormShow( Sender: TObject );
begin
  with frm_main do
  begin
    qry_pub.close;
    qry_pub.SQL.Text := 'select * from twb_nrsz';
    qry_pub.Open;
    if qry_pub.Locate( 'xh', 13, [] ) then
    begin
      chklst1.Items[38] := qry_pub.FieldByName( 'xsmc' ).AsString;
      dbgrdh1.Columns[42].Title.Caption := qry_pub.FieldByName( 'xsmc' ).AsString;
      if not qry_pub.FieldByName( 'sflr' ).AsBoolean then
      begin
        chklst1.Items.Delete( 38 );
        dbgrdh1.Columns.Delete( 42 );
      end;
    end;
    if qry_pub.Locate( 'xh', 12, [] ) then
    begin
      chklst1.Items[37] := qry_pub.FieldByName( 'xsmc' ).AsString;
      dbgrdh1.Columns[41].Title.Caption := qry_pub.FieldByName( 'xsmc' ).AsString;
      if not qry_pub.FieldByName( 'sflr' ).AsBoolean then
      begin
        chklst1.Items.Delete( 37 );
        dbgrdh1.Columns.Delete( 41 );
      end;
    end;
    if qry_pub.Locate( 'xh', 11, [] ) then
    begin
      chklst1.Items[36] := qry_pub.FieldByName( 'xsmc' ).AsString;
      dbgrdh1.Columns[40].Title.Caption := qry_pub.FieldByName( 'xsmc' ).AsString;
      if not qry_pub.FieldByName( 'sflr' ).AsBoolean then
      begin
        chklst1.Items.Delete( 36 );
        dbgrdh1.Columns.Delete( 40 );
      end;
    end;
    if qry_pub.Locate( 'xh', 10, [] ) then
    begin
      chklst1.Items[35] := qry_pub.FieldByName( 'xsmc' ).AsString;
      dbgrdh1.Columns[39].Title.Caption := qry_pub.FieldByName( 'xsmc' ).AsString;
      if not qry_pub.FieldByName( 'sflr' ).AsBoolean then
      begin
        chklst1.Items.Delete( 35 );
        dbgrdh1.Columns.Delete( 39 );
      end;
    end;
    if qry_pub.Locate( 'xh', 9, [] ) then
    begin
      chklst1.Items[34] := qry_pub.FieldByName( 'xsmc' ).AsString;
      dbgrdh1.Columns[38].Title.Caption := qry_pub.FieldByName( 'xsmc' ).AsString;
      if not qry_pub.FieldByName( 'sflr' ).AsBoolean then
      begin
        chklst1.Items.Delete( 34 );
        dbgrdh1.Columns.Delete( 38 );
      end;
    end;
    if qry_pub.Locate( 'xh', 8, [] ) then
    begin
      chklst1.Items[33] := qry_pub.FieldByName( 'xsmc' ).AsString;
      dbgrdh1.Columns[37].Title.Caption := qry_pub.FieldByName( 'xsmc' ).AsString;
      if not qry_pub.FieldByName( 'sflr' ).AsBoolean then
      begin
        chklst1.Items.Delete( 33 );
        dbgrdh1.Columns.Delete( 37 );
      end;
    end;
    if qry_pub.Locate( 'xh', 7, [] ) then
    begin
      chklst1.Items[24] := qry_pub.FieldByName( 'xsmc' ).AsString;
      dbgrdh1.Columns[28].Title.Caption := qry_pub.FieldByName( 'xsmc' ).AsString;
      if not qry_pub.FieldByName( 'sflr' ).AsBoolean then
      begin
        chklst1.Items.Delete( 24 );
        dbgrdh1.Columns.Delete( 28 );
      end;
    end;
    if qry_pub.Locate( 'xh', 6, [] ) then
    begin
      chklst1.Items[23] := qry_pub.FieldByName( 'xsmc' ).AsString + '时间';
      chklst1.Items[22] := qry_pub.FieldByName( 'xsmc' ).AsString;
      dbgrdh1.Columns[27].Title.Caption := '血压|' + qry_pub.FieldByName( 'xsmc' ).AsString + '时间';
      dbgrdh1.Columns[26].Title.Caption := '血压|' + qry_pub.FieldByName( 'xsmc' ).AsString;
      if not qry_pub.FieldByName( 'sflr' ).AsBoolean then
      begin
        chklst1.Items.Delete( 23 );
        dbgrdh1.Columns.Delete( 27 );
        chklst1.Items.Delete( 22 );
        dbgrdh1.Columns.Delete( 26 );
      end;
    end;
    if qry_pub.Locate( 'xh', 5, [] ) then
    begin
      chklst1.Items[21] := qry_pub.FieldByName( 'xsmc' ).AsString + '时间';
      chklst1.Items[20] := qry_pub.FieldByName( 'xsmc' ).AsString;
      dbgrdh1.Columns[25].Title.Caption := '血压|' + qry_pub.FieldByName( 'xsmc' ).AsString + '时间';
      dbgrdh1.Columns[24].Title.Caption := '血压|' + qry_pub.FieldByName( 'xsmc' ).AsString;
      if not qry_pub.FieldByName( 'sflr' ).AsBoolean then
      begin
        chklst1.Items.Delete( 21 );
        dbgrdh1.Columns.Delete( 25 );
        chklst1.Items.Delete( 20 );
        dbgrdh1.Columns.Delete( 24 );
      end;
    end;
    if qry_pub.Locate( 'xh', 4, [] ) then
    begin
      chklst1.Items[19] := qry_pub.FieldByName( 'xsmc' ).AsString + '时间';
      chklst1.Items[18] := qry_pub.FieldByName( 'xsmc' ).AsString;
      dbgrdh1.Columns[23].Title.Caption := '血压|' + qry_pub.FieldByName( 'xsmc' ).AsString + '时间';
      dbgrdh1.Columns[22].Title.Caption := '血压|' + qry_pub.FieldByName( 'xsmc' ).AsString;
      if not qry_pub.FieldByName( 'sflr' ).AsBoolean then
      begin
        chklst1.Items.Delete( 19 );
        dbgrdh1.Columns.Delete( 23 );
        chklst1.Items.Delete( 18 );
        dbgrdh1.Columns.Delete( 22 );
      end;
    end;
    if qry_pub.Locate( 'xh', 3, [] ) then
    begin
      chklst1.Items[13] := qry_pub.FieldByName( 'xsmc' ).AsString;
      dbgrdh1.Columns[17].Title.Caption := qry_pub.FieldByName( 'xsmc' ).AsString;
      if not qry_pub.FieldByName( 'sflr' ).AsBoolean then
      begin
        chklst1.Items.Delete( 13 );
        dbgrdh1.Columns.Delete( 17 );
      end;
    end;
    if qry_pub.Locate( 'xh', 2, [] ) then
    begin
      chklst1.Items[11] := qry_pub.FieldByName( 'xsmc' ).AsString;
      dbgrdh1.Columns[15].Title.Caption := qry_pub.FieldByName( 'xsmc' ).AsString;
      if not qry_pub.FieldByName( 'sflr' ).AsBoolean then
      begin
        chklst1.Items.Delete( 11 );
        dbgrdh1.Columns.Delete( 15 );
      end;
    end;
    if qry_pub.Locate( 'xh', 1, [] ) then
    begin
      chklst1.Items[10] := qry_pub.FieldByName( 'xsmc' ).AsString;
      dbgrdh1.Columns[14].Title.Caption := qry_pub.FieldByName( 'xsmc' ).AsString;
      if not qry_pub.FieldByName( 'sflr' ).AsBoolean then
      begin
        chklst1.Items.Delete( 10 );
        dbgrdh1.Columns.Delete( 14 );
      end;
    end;
    qry_pub.Close;
    qry_pub.SQL.Text := 'select * from twb_sz';
    qry_pub.Open;
    if qry_pub.RecordCount > 0 then
    begin
      prv_twsx := qry_pub.FieldByName( 'twsx' ).AsInteger;
      prv_twxx := qry_pub.FieldByName( 'twxx' ).AsInteger;
    end;
  end;
  chklst1.Columns := 3;
  bjzt := false;
  if pub_username <> 'sys_bqgl' then
  begin
    btn17.Visible := false;
    btn2.Visible := false;
  end;
  dtp1.DateTime := frm_main.curr_date;
  tqsj( 1 );
  chklst1.Checked[18] := true;
  chklst1.Checked[3] := true;
  chklst1.Checked[6] := true;
  chklst1.Checked[13] := true;
  lstcheck;
end;

procedure Tfrm_bqgl_twjl.qry_twjlAfterEdit( DataSet: TDataSet );
begin
  sp_twjl.FieldByName( 'ybj' ).Value := 1;
end;

procedure Tfrm_bqgl_twjl.qry_twjlBeforeInsert( DataSet: TDataSet );
begin
  abort;
end;

procedure Tfrm_bqgl_twjl.scrlbr1Change( Sender: TObject );
begin
  Image.Top := tlb1.Height - scrlbr1.Position;
end;

procedure Tfrm_bqgl_twjl.sp_twjlAfterEdit( DataSet: TDataSet );
begin
  sp_twjl.FieldByName( 'ybj' ).Value := 1;
end;

procedure Tfrm_bqgl_twjl.sp_twjlBeforeEdit( DataSet: TDataSet );
begin
  //    if jlty[sp_twjl.RecNo + 2, getind( dbgrdh1.SelectedField.FieldName )] <>
  //        jlty[2, getind( dbgrdh1.SelectedField.FieldName )] then
  //    begin
  //        Application.MessageBox( '你没有修改权限！', '提示', MB_OK +
  //            MB_ICONINFORMATION );
  //        if DataSet.State = dsEdit then
  //        begin
  //            DataSet.Post;
  //        end;
  //        dbgrdh1.SelectedIndex := dbgrdh1.SelectedIndex;
  //        exit;
  //    end;
end;

procedure Tfrm_bqgl_twjl.sp_twjlBeforePost( DataSet: TDataSet );
var
  str: string;
begin
  if ( dbgrdh1.SelectedField.FieldName = 'xysj' )
    or ( dbgrdh1.SelectedField.FieldName = 'xy1sj' )
    or ( dbgrdh1.SelectedField.FieldName = 'xy2sj' ) then
  begin
    str := sp_twjl.FieldByName( dbgrdh1.SelectedField.FieldName ).AsString;
    if ( Pos( ':', str ) < 0 ) and ( trim( str ) <> '' ) then
    begin
      Application.MessageBox( '请录入正确的格式！', '提示', MB_OK +
        MB_ICONINFORMATION );
      sp_twjl.Edit;
      sp_twjl.FieldByName( dbgrdh1.SelectedField.FieldName ).Value := '';
      sp_twjl.Post;
    end;
  end;
end;

procedure Tfrm_bqgl_twjl.btn10Click( Sender: TObject );
begin
  if dybz then
  begin
    if Application.MessageBox( '此页已打印,是否重打！', '提示', MB_YESNO +
      MB_ICONINFORMATION ) = IDYES then
    begin
      imagePrint;
    end;

  end
  else
  begin
    imagePrint;
    with frm_main do
    begin
      qry_pub.Close;
      qry_pub.SQL.Text := 'insert into zybl_twb_dy(zyh,ys) select ' + #39 + tp_zyh + #39 + ',' + inttostr( ys );
      qry_pub.ExecSQL;
    end;
  end;
end;

procedure Tfrm_bqgl_twjl.imagePrint;
var
  rect: TRect;
  v_PrinterIndex_old, v_PrinterIndex_new: Integer;
  v_IsPrinterJoin: boolean;
begin
  v_PrinterIndex_old := Printer.PrinterIndex;
  v_PrinterIndex_new := func_GetPrinterIndex( 4, v_IsPrinterJoin );
  //  if v_IsPrinterJoin then
  //    Proc_ChangePrinter( v_PrinterIndex_new, False );
  rect.Left := 0;
  rect.Top := 0;
  rect.Right := printer.PageWidth;
  rect.Bottom := printer.PageHeight;

  //(printer.PageWidth * Image.Height div Image.Width);
  if v_IsPrinterJoin then
    Printer.PrinterIndex := v_PrinterIndex_new;
  Printer.BeginDoc;
  Printer.Canvas.StretchDraw( rect, Image.Picture.Graphic );
  Printer.EndDoc;
  //还原原来默认打印机
  //if v_IsPrinterJoin then
    //Proc_ChangePrinter( v_PrinterIndex_old, False );
end;

procedure Tfrm_bqgl_twjl.N1Click( Sender: TObject );
var
  I: Integer;
begin
  for I := 0 to chklst1.Count - 1 do
  begin
    chklst1.Checked[i] := true;
  end;
  lstcheck;
end;

procedure Tfrm_bqgl_twjl.N2Click( Sender: TObject );
var
  i: integer;
begin
  for I := 0 to chklst1.Count - 1 do
  begin
    chklst1.Checked[i] := false;
  end;
  lstcheck;
end;

procedure Tfrm_bqgl_twjl.btn7Click( Sender: TObject );
begin
  tp_zyh := sp_twjl.FieldByName( 'zyh' ).AsString;
  ys := 1;
  //p_twbdy1.proc_drawtwb( ys, tp_zyh );
  ht;
end;

procedure Tfrm_bqgl_twjl.btn13Click( Sender: TObject );
begin
  ys := 1;
  //p_twbdy1.proc_drawtwb( ys, tp_zyh );
  ht;

end;

procedure Tfrm_bqgl_twjl.btn14Click( Sender: TObject );
begin
  if ys > 1 then
    ys := ys - 1;
  //p_twbdy1.proc_drawtwb( ys, tp_zyh );
  ht;

end;

procedure Tfrm_bqgl_twjl.btn15Click( Sender: TObject );
begin
  ys := ys + 1;
  //p_twbdy1.proc_drawtwb( ys, tp_zyh );
  ht;

end;

procedure Tfrm_bqgl_twjl.btn16Click( Sender: TObject );
var
  i: integer;
begin
  if sp_twjl.Locate( 'zyh', tp_zyh, [] ) then
  begin
    i := DaysBetween( StrToDate( formatdatetime( 'yyyy-MM-dd', frm_main.curr_date ) ),
      StrToDate( formatdatetime( 'yyyy-MM-dd', sp_twjl.FieldByName( 'ryrq' ).AsDateTime ) ) );
    tp_zyh := sp_twjl.FieldByName( 'zyh' ).AsString;
  end
  else
  begin
    i := DaysBetween( StrToDate( formatdatetime( 'yyyy-MM-dd', frm_main.curr_date ) ),
      StrToDate( formatdatetime( 'yyyy-MM-dd', qry_brxx.FieldByName( 'ryrq' ).AsDateTime ) ) );
    tp_zyh := qry_brxx.FieldByName( 'zyh' ).AsString;
  end;
  ys := ( i div myts ) + 1;
  // p_twbdy1.proc_drawtwb( ys, tp_zyh );
  ht;
end;

procedure Tfrm_bqgl_twjl.btn17Click( Sender: TObject );
begin
  tqsj( 1 );
  sp_twjl.Filtered := false;
  dbgrdh1.ReadOnly := true;
  bjzt := false;
end;

procedure Tfrm_bqgl_twjl.xz;
begin
  if bjzt then
  begin
    if Application.MessageBox( '当前数据正在编辑是否保存？', '提示', MB_YESNO
      + MB_ICONINFORMATION ) = IDYES then
    begin
      sp_twjl.UpdateBatch( arall );
      sp_twb_save.Close;
      sp_twb_save.Parameters.ParamByName( '@czy' ).Value := pub_czydm;
      sp_twb_save.Parameters.ParamByName( '@ph' ).Value := prv_ph;
      sp_twb_save.ExecProc;
      Application.MessageBox( '保存成功！', '提示', MB_OK + MB_ICONINFORMATION );
    end;
  end;
  sp_twjl.Close;
  dbgrdh1.ReadOnly := true;
  bjzt := false;
end;

procedure Tfrm_bqgl_twjl.tqsj( lx: Integer );
var
  xh: Integer;
  jlrq: string;
  I: Integer;
  bhcy: integer;
begin
  if bjzt then
  begin
    if Application.MessageBox( '当前数据在编辑状态是否保存！', '提示',
      MB_YESNO + MB_ICONINFORMATION ) = IDYES then
    begin
      btn2.Click;
    end;
  end;
  bhcy := 0;
  if chk1.Checked then
  begin
    bhcy := 1;
  end;
  prv_ph := pub_czydm + formatdatetime( 'YYYYMMDDHHMMSS', frm_main.curr_date );
  xh := cbb4.ItemIndex + 1;
  jlrq := FormatDateTime( 'yyyymmdd', dtp1.Datetime );
  sp_in_twb.Close;
  sp_twjl.close;

  sp_in_twb.Parameters.ParamByName( '@xh' ).Value := xh;
  sp_in_twb.Parameters.ParamByName( '@jlrq' ).Value := FormatDateTime( 'yyyy-mm-dd', dtp1.DateTime ) + ' ' + cbb4.text + ':00:00';
  sp_in_twb.Parameters.ParamByName( '@sd' ).Value := cbb4.text + ':00:00';
  sp_in_twb.Parameters.ParamByName( '@lx' ).Value := lx;
  sp_in_twb.Parameters.ParamByName( '@bqdm' ).Value := pub_bqdm;
  sp_in_twb.ExecProc;

  sp_twjl.Parameters.ParamByName( '@jlrq' ).Value := jlrq;
  sp_twjl.Parameters.ParamByName( '@bqdm' ).Value := pub_bqdm;
  sp_twjl.Parameters.ParamByName( '@xh' ).Value := xh;
  sp_twjl.Parameters.ParamByName( '@czy' ).Value := pub_czydm;
  sp_twjl.Parameters.ParamByName( '@ph' ).Value := prv_ph;
  sp_twjl.Parameters.ParamByName( '@bhcy' ).Value := bhcy;
  sp_twjl.Open;
  SetLength( jlty, sp_twjl.RecordCount + 3, sp_twjl.FieldCount + 1 );
  for I := 0 to sp_twjl.FieldCount - 1 do
  begin
    jlty[1, i + 1] := sp_twjl.Fields[i].FieldName;
  end;

  while not sp_twjl.Eof do
  begin
    for I := 0 to sp_twjl.FieldCount - 1 do
    begin
      jlty[sp_twjl.RecNo + 2, i + 1] := sp_twjl.FieldByName( jlty[1, i + 1] ).asstring;
    end;
    sp_twjl.Next;
  end;
  jlty[2, getind( 'mb' )] := '0';
  jlty[2, getind( 'tw' )] := '0';
  jlty[2, getind( 'hx' )] := '0';
  jlty[2, getind( 'xl' )] := '0';
  jlty[2, getind( 'jcyy' )] := '';
  jlty[2, getind( 'twfs' )] := '';
  jlty[2, getind( 'sm' )] := '';
  jlty[2, getind( 'wljwhtw' )] := '0';
  jlty[2, getind( 'fstw' )] := 'False';
  jlty[2, getind( 'xzqbq' )] := 'False';
  jlty[2, getind( 'hxq' )] := 'False';
  jlty[2, getind( 'sjsm' )] := '';
  if ( pub_twbbbh = 3 ) or ( pub_twbbbh = 1 ) then
  begin
    jlty[2, getind( 'xbl' )] := '-1';
  end
  else
  begin
    jlty[2, getind( 'xbl' )] := '0';
  end;
  jlty[2, getind( 'dbcs' )] := '-1';
  jlty[2, getind( 'syl' )] := '0';
  jlty[2, getind( 'yrl' )] := '0';
  jlty[2, getind( 'xy' )] := '0';
  jlty[2, getind( 'tz' )] := '0';
  jlty[2, getind( 'ryrq' )] := '';
  jlty[2, getind( 'ssrq' )] := '';
  jlty[2, getind( 'ryts' )] := '';
  jlty[2, getind( 'ssts' )] := '';
  jlty[2, getind( 'fmrq' )] := '';
  jlty[2, getind( 'cyrq' )] := '';
  jlty[2, getind( 'swrq' )] := '';
  jlty[2, getind( 'zrrq' )] := '';
  jlty[2, getind( 'xy1' )] := '';
  jlty[2, getind( 'xy2' )] := '';
  jlty[2, getind( 'gchcs' )] := '-1';
  jlty[2, getind( 'gc' )] := 'False';
  jlty[2, getind( 'dbsj' )] := 'False';
  jlty[2, getind( 'rggm' )] := 'False';
  jlty[2, getind( 'xysj' )] := '';
  jlty[2, getind( 'xy1sj' )] := '';
  jlty[2, getind( 'xy2sj' )] := '';
  jlty[2, getind( 'kg1' )] := '';
  jlty[2, getind( 'kg2' )] := '';
  jlty[2, getind( 'kg3' )] := '';
  jlty[2, getind( 'kg4' )] := '';
  jlty[2, getind( 'blng' )] := 'False';
  jlty[2, getind( 'kg5' )] := '';
  jlty[2, getind( 'kg6' )] := '';
  jlty[2, getind( 'dtecsssj' )] := '';
  sp_twjl.First;
  bjzt := false;
end;

function Tfrm_bqgl_twjl.getind( name: string ): integer;
var
  i: integer;
begin
  for I := 0 to sp_twjl.FieldCount - 1 do
  begin
    if jlty[1, i + 1] = name then
    begin
      result := i + 1;
    end;
  end;
end;

procedure Tfrm_bqgl_twjl.lstcheck;
var
  i: Integer;
begin
  for i := 0 to chklst1.Count - 1 do
  begin
    dbgrdh1.Columns[i + 4].Visible := chklst1.Checked[i];
  end;
end;

procedure Tfrm_bqgl_twjl.mniN3Click( Sender: TObject );
begin
  if not dbgrdh1.ReadOnly then
  begin
    if Application.MessageBox( '此操作将把【选定的病人】【当前选择时段】所在床位号调整到【现在病人的所在床位】' + #13 + '调整后【不能还原】，是否调整!',
      '提示', MB_YESNO + MB_ICONINFORMATION ) = IDYES then
    begin
      frm_main.qry_pub.Close;
      frm_main.qry_pub.SQL.Text := 'select * from sys_kscwsz where zyh =' + #39 + sp_twjl.FieldByName( 'zyh' ).AsString + #39;
      frm_main.qry_pub.Open;
      if frm_main.qry_pub.RecordCount > 0 then
      begin
        sp_twjl.Edit;
        sp_twjl.FieldByName( 'bch' ).Value := frm_main.qry_pub.FieldByName( 'yybch' ).AsString;
        sp_twjl.Post;
      end
      else
      begin
        Application.MessageBox( '病人当前没有在床！', '提示', MB_OK +
          MB_ICONINFORMATION );
      end;
    end;
  end
  else
  begin
    Application.MessageBox( '请在编辑状态使用此功能！', '提示', MB_OK +
      MB_ICONINFORMATION );
  end;
end;

end.

