unit p_bqgl_yzck;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, StdCtrls, ComCtrls, ExtCtrls, DB, ADODB, Buttons,
  DBGridEhGrouping;

type
  Tmyrect = record
    ph: string;
    top, left, right, bottom, sl, height: integer;
    yf, tj: string;
    gtop, gleft, gright, gbottom: integer;
  end;
type
  TTmyrect = array[0..1000] of Tmyrect;
type
  Tfrm_bqgl_yzck = class(TForm)
    Panel10: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    ComboBox1: TComboBox;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    Button2: TButton;
    ScrollBox1: TScrollBox;
    DBGridEh4: TDBGridEh;
    ds_dryz: TDataSource;
    sp_dryz: TADOStoredProc;
    Button4: TButton;
    procedure DBGridEh4ColWidthsChanged(Sender: TObject);
    procedure DBGridEh4DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure Button4Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure sp_dryzAfterOpen(DataSet: TDataSet);
    procedure FormDeactivate(Sender: TObject);
    procedure DBGridEh4Exit(Sender: TObject);
    procedure DBGridEh4Enter(Sender: TObject);
  private
    { Private declarations }
    procedure OnMouseWheel_yzzx( var Msg: TMsg; var Handled: Boolean );
  public
    { Public declarations }
    zyh:string;
    rectno: integer;
    procedure createrect( var myrect1: TTmyrect; dataset_rect: Tcustomadodataset; grid_yzlr1: Tdbgrideh; x1, x2, x3: integer );
  end;

var
  frm_bqgl_yzck: Tfrm_bqgl_yzck;
  myrect: TTmyrect;
  myrect_cx, myrect_zx_cq, myrect_zx_ls: TTmyrect;
  procedure initarray( myrect: TTmyrect );
  function findinarray( myrect: TTmyrect; zd: string ): integer;

implementation

uses p_dm,p_func;

{$R *.dfm}
procedure initarray( myrect: TTmyrect );
var
  i: integer;
begin
  for i := 0 to 1000 do
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

procedure Tfrm_bqgl_yzck.DBGridEh4ColWidthsChanged(Sender: TObject);
begin
  if sp_dryz.Active then
    createrect( myrect_cx, sp_dryz, dbgrideh4, 10, 11, 16 );
end;


procedure Tfrm_bqgl_yzck.DBGridEh4DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
var
  i: integer;
  myrect1: Trect;

begin
  if not sP_dryz.fieldbyname( 'zxbz' ).asboolean then
    DBGridEh4.Canvas.Brush.Color := clSkyBlue;
  if trim( sP_dryz.fieldbyname( 'tzfs' ).asstring ) = '修改' then
  begin
    DBGridEh4.Canvas.Font.Color := clBlue;
  end;

  if ( sP_dryz.fieldbyname( 'tzbz' ).AsBoolean = true ) then
  begin
    if ( pos( '计划', trim( sP_dryz.fieldbyname( 'tzfs' ).asstring ) ) <= 0 ) then
      DBGridEh4.Canvas.Font.Color := $004F1DD3;
  end;

  if (( Pos( '皮试', trim( sP_dryz.FieldByName( 'xmmc' ).AsString ) ) > 0 ) or
   ( Pos( '敏试', trim( sP_dryz.FieldByName( 'xmmc' ).AsString ) ) > 0 )) and ( ( Pos( '+', trim( sP_dryz.FieldByName( 'xmmc' ).AsString ) ) > 0 ) or ( Pos( '阳', trim( sP_dryz.FieldByName( 'xmmc' ).AsString ) ) > 0 ) ) then
  begin
    DBGridEh4.Canvas.Brush.Color := clRed;
    DBGridEh4.Canvas.Font.Color := clBlack;
  end;

  if trim( sp_dryz.fieldbyname( 'fzph' ).asstring ) <> '' then
  begin
    DBGridEh4.canvas.brush.color := $00E2BC6D;
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

  ( Sender as TDbGridEh ).DefaultDrawColumnCell( Rect, DataCol, Column, State );

end;

procedure Tfrm_bqgl_yzck.DBGridEh4Enter(Sender: TObject);
begin
  Application.OnMessage := OnMouseWheel_yzzx;
end;

procedure Tfrm_bqgl_yzck.DBGridEh4Exit(Sender: TObject);
begin
  Application.OnMessage := nil;
end;

procedure Tfrm_bqgl_yzck.FormDeactivate(Sender: TObject);
begin
  Application.OnMessage := nil;
end;

procedure Tfrm_bqgl_yzck.FormShow(Sender: TObject);
begin
  sp_dryz.Close;
  sp_dryz.Parameters.ParamByName( '@zyh' ).Value := zyh;
  sp_dryz.Parameters.ParamByName( '@yzsx' ).Value := '';
  sp_dryz.Open;
  DateTimePicker1.DateTime := frm_func.curr_date;
  DateTimePicker2.DateTime := frm_func.curr_date;
end;

procedure Tfrm_bqgl_yzck.sp_dryzAfterOpen(DataSet: TDataSet);
begin
  if sp_dryz.RecordCount * 30 < screen.height - 100 then
    dbgrideh4.Height := screen.height - 50
  else
    dbgrideh4.Height := sp_dryz.RecordCount * 30;
  createrect( myrect_cx, sp_dryz, dbgrideh4, 10, 11, 16 );
end;

procedure Tfrm_bqgl_yzck.Button2Click(Sender: TObject);
begin
  if ( Button2.Caption = '时间过滤' ) and ( ComboBox1.text = '全部' ) then
  begin
    sp_dryz.Filtered := False;
    sp_dryz.Filter := ' kdrq>=' + '''' + formatdatetime( 'yyyy-MM-dd', DateTimePicker1.DateTime ) + ' 00:00:00' + ''''
      + ' and  kdrq<=' + '''' + formatdatetime( 'yyyy-MM-dd', DateTimePicker2.DateTime ) + ' 23:59:59' + '''';
    sp_dryz.Filtered := True;
    Button2.Caption := '取消过滤';
  end
  else
    if ( Button2.Caption = '时间过滤' ) and ( ComboBox1.text = '长期' ) then
    begin
      sp_dryz.Filtered := False;
      sp_dryz.Filter := ' yzsx=''长期'' and kdrq>=' + '''' + formatdatetime( 'yyyy-MM-dd', DateTimePicker1.DateTime ) + ' 00:00:00' + ''''
        + ' and  kdrq<=' + '''' + formatdatetime( 'yyyy-MM-dd', DateTimePicker2.DateTime ) + '  23:59:59' + '''';
      sp_dryz.Filtered := True;
      Button2.Caption := '取消过滤';
    end
    else
      if ( Button2.Caption = '时间过滤' ) and ( ComboBox1.text = '临时' ) then
      begin
        sp_dryz.Filtered := False;
        sp_dryz.Filter := ' yzsx=''临时'' and kdrq>=' + '''' + formatdatetime( 'yyyy-MM-dd', DateTimePicker1.DateTime ) + ' 00:00:00' + ''''
          + ' and  kdrq<=' + '''' + formatdatetime( 'yyyy-MM-dd', DateTimePicker2.DateTime ) + '  23:59:59' + '''';
        sp_dryz.Filtered := True;
        Button2.Caption := '取消过滤';
      end
      else
      begin
        Button2.Caption := '时间过滤';
        sp_dryz.Filtered := False;
      end;
end;

procedure Tfrm_bqgl_yzck.Button4Click(Sender: TObject);
begin
  sp_dryz.Close;
  sp_dryz.Parameters.ParamByName( '@zyh' ).Value := zyh;
  sp_dryz.Parameters.ParamByName( '@yzsx' ).Value := '';
  sp_dryz.Open;
end;

procedure Tfrm_bqgl_yzck.ComboBox1Change(Sender: TObject);
begin
  if ComboBox1.text = '全部' then
  begin
    sp_dryz.Filtered := False;
  end;
  if ComboBox1.text = '长期' then
  begin
    sp_dryz.Filtered := False;
    sp_dryz.Filter := 'yzsx=''长期''';
    sp_dryz.Filtered := True;
  end;
  if ComboBox1.text = '临时' then
  begin
    sp_dryz.Filtered := False;
    sp_dryz.Filter := 'yzsx=''临时''';
    sp_dryz.Filtered := True;
  end;
  if ComboBox1.text = '未停止医嘱' then
  begin
    sp_dryz.Filtered := False;
    sp_dryz.Filter := 'yzsx=''长期'' and tzbz=0';
    sp_dryz.Filtered := True;
  end;
  if ComboBox1.text = '本人医嘱' then
  begin
    sp_dryz.Filtered := False;
    sp_dryz.Filter := 'kdys=' + '''' + pub_czydm + '''';
    sp_dryz.Filtered := True;
  end;
end;

procedure Tfrm_bqgl_yzck.createrect( var myrect1: TTmyrect; dataset_rect: Tcustomadodataset; grid_yzlr1: Tdbgrideh; x1, x2, x3: integer );
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

        myrect1[rectno].Gleft := grid_yzlr1.CellRect( 1, i ).left;
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

procedure Tfrm_bqgl_yzck.OnMouseWheel_yzzx( var Msg: TMsg; var Handled: Boolean );
begin
  if Msg.message = WM_MouseWheel then
  begin
    if Msg.wParam < 0 then
      SendMessage( ScrollBox1.Handle, WM_VSCROLL, SB_LINEDOWN, 0 )
    else
      SendMessage( ScrollBox1.Handle, WM_VSCROLL, SB_LINEUP, 0 );
    Handled := True;
  end;
end;

end.
