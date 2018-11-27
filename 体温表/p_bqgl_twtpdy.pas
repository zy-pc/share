unit p_bqgl_twtpdy;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Spin, Printers, p_main, DB, ADODB, p_bqgl_twjl;

type
  Tfrm_bqgl_twtpdy = class( TForm )
    pnl1: TPanel;
    img1: TImage;
    pnl2: TPanel;
    btn1: TButton;
    se2: TSpinEdit;
    lbl1: TLabel;
    lbl2: TLabel;
    btn2: TButton;
    edt_1: TEdit;
    lbl3: TLabel;
    lbl4: TLabel;
    edt_2: TEdit;
    cbb1: TComboBox;
    se3: TSpinEdit;
    se4: TSpinEdit;
    lbl5: TLabel;
    lbl6: TLabel;
    chk1: TCheckBox;
    chk2: TCheckBox;
    chk3: TCheckBox;
    edt_3: TEdit;
    lbl7: TLabel;
    qry_brxx: TADOQuery;
    qry_tw1: TADOQuery;
    edt_4: TEdit;
    lbl8: TLabel;
    edt_5: TEdit;
    lbl9: TLabel;
    btn3: TButton;
    qry_bt1: TADOQuery;
    qry_cgjl1: TADOQuery;
    edt1: TEdit;
    se5: TSpinEdit;
    lbl10: TLabel;
    se1: TSpinEdit;
    cbb2: TComboBox;
    btn4: TButton;
    edt_6: TEdit;
    btn5: TButton;
    qry_kscw1: TADOQuery;
    se6: TSpinEdit;
    sp_cgjl: TADOStoredProc;
    sp_tw: TADOStoredProc;
    sp_bt: TADOStoredProc;
    sp_kscw: TADOStoredProc;
    procedure btn1Click( Sender: TObject );
    procedure btn2Click( Sender: TObject );
    procedure btn3Click( Sender: TObject );
    procedure cbb2Change( Sender: TObject );
    procedure btn4Click( Sender: TObject );
    procedure btn5Click( Sender: TObject );
  private
    { Private declarations }
    prv_sdsj: TStringList;
    procedure drawxx( x_1, y_1, x_2, y_2: Integer );
    procedure drawTw( wd, jwwd, fs: string; xh, ts: integer; wljw, fstw, rgdm: boolean;
      yy: string );

    procedure getxlxy( xl: Integer; var x, y: Integer );
    procedure lx( x, y, i, j, ys: Integer );
    procedure gethxxy( hx: Integer; var x, y: Integer );
    procedure drawhx( hx, xh, ts: integer; fzhx: Boolean; yy: string );

    procedure drawXlMb( xl, mb: Integer; tw, hx: string; xh, ts: integer;
      xzqb: boolean; yy: string );
    procedure getdwxy( tw: Real; xh, ts: Integer; var x, y: Integer );
    procedure drawbt( rq: TDateTime; rq1, zyts, xh, ts, sd, ys: string );
    procedure drawcgjl( ry, ss, ecss, ts, xbl, dbcs, syl, yrl, xy, xy1, xy2, tz, ssts,
      fm, cy, zr, sw, gchcs, cs: string; gc, dbsj, rggm: boolean; ryrq, ssrq, ecssrq, fmrq, zrrq, cyrq, swrq, csrq: Tdatetime;
      xysj, xy1sj, xy2sj, kg1, kg2, kg3, kg4, kg5, kg6: string;
      jllx: integer; blng: boolean );
    function getdx( a: string; lx: integer ): string;
    procedure hw( x, y: Integer; fh: string; ys: integer; penm: TPenMode );
    procedure drawspz( x, y: Integer; a: string );
    procedure pro_get_jbxx( ys: Integer; zyh: string; cqtwb: integer );
    procedure pro_pdsdsj( var sd: Integer );
  var
    bm: string; //表名称

    public
  procedure drawjbxx( xm, nl, xb, ryrq, bq, cw, zyh: string );
  function dyInit( w, h: Integer ): Boolean;
  procedure drawyt;
  procedure drawBrTwb( zyh: string; ys: integer; cqtwb: integer );
{ Public declarations }
  end;

var
  frm_bqgl_twtpdy: Tfrm_bqgl_twtpdy;

implementation
var
  c_w, c_h: Integer; //格子宽高
  x1, y1, x2, y2: integer;
  tw_x, tw_y, xl_x, xl_y, mb_x, mb_y, hx_x, hx_y: integer;
  img_w, img_h: integer;
  txbc: Integer; //图形边长
  zyh: string; //住院号
  d: array[1..10] of string = ( '', '一', '二', '三', '四', '五', '六', '七', '八', '九' );
  a: TPenMode;

  c_n: Integer; //列数
  r_n: integer; //行数
  mrgs: Integer = 6;
{$R *.dfm}

function Tfrm_bqgl_twtpdy.getdx( a: string; lx: integer ): string;
var
  b, c, e: string;
  I: Integer;
  j: integer;
begin
  if ( lx = 1 ) and ( pub_twbbbh = 4 ) then
  begin
    if StrToInt( a ) > 12 then
    begin
      a := inttostr( strtoint( a ) - 12 );
    end;
  end;
  if ( pub_twbbbh = 0 ) or ( pub_twbbbh = 2 ) then
  begin
    c := a;
  end
  else
  begin
    b := IntToStr( StrToInt( a ) );
    if b = '0' then
    begin
      c := '零';
    end
    else
    begin
      for I := Length( b ) - 1 downto 0 do
      begin
        e := Copy( b, Length( b ) - i, 1 );
        c := c + d[strtoint( e ) + 1];
        if i = 1 then
        begin
          if c = '一' then
          begin
            c := '十';
          end
          else
          begin
            c := c + '十';
          end;
        end;
      end;
    end;
  end;
  result := c;
end;

function Tfrm_bqgl_twtpdy.dyInit( w, h: Integer ): Boolean;
var
  btmp: TBitmap;
  i, j: integer;

begin
  img_w := w;
  img_h := h;
  btmp := TBitmap.Create;
  btmp.Height := h;
  btmp.Width := w;
  // btmp.PixelFormat := pf32bit;
  img1.Picture.Graphic := btmp;
  img1.Width := w;
  img1.Height := h;
  btmp.free;
  a := img1.Canvas.Pen.Mode;
  //img1.Canvas.Pen.Mode := pmNotXor;
  img1.Canvas.Pen.Width := 1;

  if pub_twbbbh = 4 then
  begin
    c_w := Round( w / ( c_n + 5 ) );
    c_h := Round( h / ( r_n + 6 ) ) + 1;
    x1 := c_w * 3;
    x2 := ( 3 + c_n ) * c_w;
    y1 := 4 * c_h;
    y2 := ( 4 + r_n ) * c_h;
  end
  else
  begin
    c_w := Round( w / ( c_n + 3 ) );
    c_h := Round( h / ( r_n + 11 ) ) + 1;
    x1 := c_w;
    x2 := ( 1 + c_n ) * c_w;
    y1 := 7 * c_h;
    y2 := ( 7 + r_n ) * c_h;
  end;

  txbc := c_w div 2;
  txbc := img1.Canvas.TextWidth( '●' );
  drawyt;
  img1.Canvas.Font.Size := se5.Value;
  img1.Canvas.Font.Color := clBlue;

  //-----calmhawk---绘制表头时间段
  if cqtwb = 0 then
  begin
    for I := 1 to 7 do
    begin
      for j := 1 to 6 do
      begin
        if ( 2 + 4 * ( j - 1 ) = 2 ) or ( 2 + 4 * ( j - 1 ) = 18 ) or ( 2 + 4 * ( j - 1 ) = 22 ) then
        begin
          img1.Canvas.Font.Color := clRed;
        end;
        if pub_twbbbh = 4 then
        begin
          if ( 3 + 4 * ( j - 1 ) ) > 12 then
          begin
            img1.Canvas.Textout( x1 + c_w * 6 * i + c_w * ( j - 1 ) +
              ( ( c_w - img1.canvas.TextWidth( inttostr( 2 + 4 * ( j - 1 ) ) ) ) div 2 ),
              y1 + 3 * c_h + 2, inttostr( 3 + 4 * ( j - 1 ) - 12 ) );
          end
          else
          begin
            img1.Canvas.Textout( x1 + c_w * 6 * i + c_w * ( j - 1 ) +
              ( ( c_w - img1.canvas.TextWidth( inttostr( 2 + 4 * ( j - 1 ) ) ) ) div 2 ),
              y1 + 3 * c_h + 2, inttostr( 3 + 4 * ( j - 1 ) ) );
          end;
        end
        else
        begin
          img1.Canvas.Textout( x1 + c_w * 6 * i + c_w * ( j - 1 ) +
            ( ( c_w - img1.canvas.TextWidth( inttostr( 2 + 4 * ( j - 1 ) ) ) ) div 2 ),
            y1 + 3 * c_h + 2, inttostr( 2 + 4 * ( j - 1 ) ) );
        end;
        //calmhawk
        if ( pub_twbbbh = 0 ) or ( pub_twbbbh = 2 ) then
        begin
          img1.Canvas.Font.Color := clBlue;
        end
        else
          if pub_twbbbh = 1 then
          begin
            img1.Canvas.Font.Color := clBlack;
          end
          else
          begin
            img1.Canvas.Font.Color := clBlue;
          end;

      end;
    end;
  end;
  img1.Canvas.Font.Size := se5.Value;
  img1.Canvas.Font.Color := clblack;

end;

procedure Tfrm_bqgl_twtpdy.btn1Click( Sender: TObject );
begin
  dyInit( se1.Value, se2.Value );
  drawjbxx( '测试男', '44', '男', '2011-02-02', '外四科', '01', '090112011' );
  drawTw( edt_1.Text, edt_2.Text, cbb1.Text, se3.Value, se4.Value, chk1.Checked, chk2.Checked, chk3.Checked, edt_3.text );
  drawTw( '35', '35', cbb1.Text, se3.Value + 1, se4.Value, chk1.Checked, chk2.Checked, chk3.Checked, edt_3.text );
  drawTw( '37', '36', cbb1.Text, se3.Value + 2, se4.Value, chk1.Checked, chk2.Checked, chk3.Checked, edt_3.text );
  drawXlMb( 150, 122, '35', '35', 1, 1, True, '' );
  drawXlMb( 122, 150, '38', '35', 2, 1, True, '' );
  drawXlMb( 144, 133, '38', '35', 2, 3, True, '' );
  drawhx( 35, 1, 1, False, '' );
  drawhx( 30, 2, 1, False, '' );
  drawhx( 35, 1, 2, true, '' );
  drawhx( 25, 2, 2, False, '' );
  drawhx( 20, 1, 3, true, '' );
  drawhx( 8, 2, 3, False, '' );
  hx_x := 0;
  hx_y := 0;
  tw_x := 0;
  tw_y := 0;
  xl_x := 0;
  xl_y := 0;
  mb_x := 0;
  mb_y := 0;
end;

procedure Tfrm_bqgl_twtpdy.btn2Click( Sender: TObject );
var
  rect: TRect;
begin
  rect.Left := 0;
  rect.Top := 0;
  rect.Right := printer.PageWidth;
  rect.Bottom := printer.PageHeight;
  //(printer.PageWidth * Image.Height div Image.Width);
  with Printer do
  begin
    BeginDoc;
    SetMapMode( Canvas.Handle, se6.value );
    Canvas.Draw( 10, 0, img1.Picture.Graphic );
    //Canvas.StretchDraw( rect, img1.Picture.Graphic );
    EndDoc;
  end;
end;

procedure Tfrm_bqgl_twtpdy.btn3Click( Sender: TObject );
var
  i: integer;
begin
  drawBrTwb( trim( edt_4.Text ), StrToInt( edt_5.text ), 0 );
end;

procedure Tfrm_bqgl_twtpdy.btn4Click( Sender: TObject );
begin
  pub_bqdm := edt_6.text;
  Application.CreateForm( Tfrm_bqgl_twjl, frm_bqgl_twjl );
  try
    frm_bqgl_twjl.ShowModal;
  finally
    frm_bqgl_twjl.free;
  end;
end;

procedure Tfrm_bqgl_twtpdy.btn5Click( Sender: TObject );
begin
  pub_bqdm := edt_6.text;
  Application.CreateForm( Tfrm_bqgl_twjl, frm_bqgl_twjl );
  try
    p_bqgl_twjl.bjqx := 1;
    frm_bqgl_twjl.ShowModal;
  finally
    frm_bqgl_twjl.free;
  end;
end;

procedure Tfrm_bqgl_twtpdy.cbb2Change( Sender: TObject );
begin
  if cbb2.ItemIndex = 0 then
  begin
    img1.Stretch := false;
    // img1.Picture.Graphic.SetSize(pnl1.Width,pnl1.Height);
    img1.Height := pnl1.Height;
    img1.Width := pnl1.Width;
    //img1.Align := alClient;
    img1.Stretch := true;
  end
  else
  begin
    img1.Picture.Graphic.SetSize( pnl1.Width, pnl1.Height );
    img1.Align := alNone;

  end;
end;

procedure Tfrm_bqgl_twtpdy.drawyt;
var
  I: Integer;
  j: Integer;
  ps: TFontStyle;
  x_pyl, y_ks: Integer;
begin
  //划横线
  //画笔颜色换为黑色
  img1.Canvas.Pen.Color := clBlack;
  //画外边框
  img1.Canvas.Rectangle( x1, y1, x2, y2 );
  //画日期，住院天数，手术日数 下横线
  for I := 1 to 4 do
  begin
    img1.Canvas.MoveTo( x1, y1 + c_h * i );
    img1.Canvas.LineTo( x2, y1 + c_H * i );
  end;
  //画展示曲线框最下横线
  img1.Canvas.MoveTo( x1, y1 + c_h * 25 );
  img1.Canvas.LineTo( x2, y1 + c_H * 25 );
  //37度以上横线
  for I := 1 to 9 do
  begin
    img1.Canvas.MoveTo( x1 + 6 * c_w, y1 + c_h * ( 4 + i ) );
    img1.Canvas.LineTo( x2, y1 + c_h * ( 4 + i ) );
  end;
  //37度横线
  img1.Canvas.Pen.Color := clRed;
  img1.Canvas.MoveTo( x1 + 6 * c_w, y1 + c_h * 14 );
  img1.Canvas.LineTo( x2, y1 + c_h * 14 );
  img1.Canvas.Pen.Color := clBlack;
  //37度以下横线
  for I := 11 to 20 do
  begin
    img1.Canvas.MoveTo( x1 + 6 * c_w, y1 + c_h * ( 4 + i ) );
    img1.Canvas.LineTo( x2, y1 + c_h * ( 4 + i ) );
  end;

  //calmhawk--修改--添加 变量  x_pyl ,x偏移量,,y_ks , 横线开始
  if ( pub_twbbbh = 0 ) or ( pub_twbbbh = 2 ) or ( pub_twbbbh = 3 ) then
  begin
    x_pyl := 6;
    y_ks := 28;
    //画展示曲线框下3格横线
    for I := 1 to 3 do
    begin
      img1.Canvas.MoveTo( x1, y1 + c_h * ( 25 + i ) );
      img1.Canvas.LineTo( x2, y1 + c_h * ( 25 + i ) );
    end;
  end
  else
  begin
    //画展示曲线框下3格横线
    x_pyl := 1;
    y_ks := 26;
    img1.Canvas.MoveTo( x1, y1 + c_h * ( 26 ) );
    img1.Canvas.LineTo( x2, y1 + c_h * ( 26 ) );

    //画段竖连接线
    if pub_twbbbh = 4 then
    begin
      img1.Canvas.MoveTo( x1 + 3 * c_w, y1 + c_h * ( 29 ) );
      img1.Canvas.LineTo( x2, y1 + c_h * ( 29 ) );
      img1.Canvas.MoveTo( x1 + 3 * c_w, y1 + c_h * ( 28 ) );
      img1.Canvas.LineTo( x1 + 3 * c_w, y1 + c_h * ( 30 ) );
    end
    else
    begin
      img1.Canvas.MoveTo( x1 + 3 * c_w, y1 + c_h * ( 30 ) );
      img1.Canvas.LineTo( x2, y1 + c_h * ( 30 ) );
      img1.Canvas.MoveTo( x1 + 3 * c_w, y1 + c_h * ( 29 ) );
      img1.Canvas.LineTo( x1 + 3 * c_w, y1 + c_h * ( 31 ) );
    end;

    for I := 1 to 2 do
    begin
      img1.Canvas.MoveTo( x1, y1 + c_h * ( 30 + i ) );
      img1.Canvas.LineTo( x2, y1 + c_h * ( 30 + i ) );
    end;

    //画段竖连接线
    if pub_twbbbh = 1 then
    begin
      img1.Canvas.MoveTo( x1 + x_pyl * c_w, y1 + c_h * ( 26 ) );
      img1.Canvas.LineTo( x1 + x_pyl * c_w, y1 + c_h * ( 29 ) );
    end;
  end;
  //画展示曲线框下3格横线
  if pub_twbbbh = 4 then
  begin
    for I := 1 to 4 do
    begin
      if i = 3 then
      begin
        img1.Canvas.MoveTo( x1 + ( x_pyl + 1 ) * c_w, y1 + c_h * ( y_ks + i ) );
      end
      else
      begin
        img1.Canvas.MoveTo( x1, y1 + c_h * ( y_ks + i ) );
        img1.Canvas.LineTo( x2, y1 + c_h * ( y_ks + i ) );
      end;
    end;
  end
  else
  begin
    for I := 1 to 3 do
    begin
      if ( i <> 3 ) or ( pub_twbbbh = 3 ) then
      begin
        img1.Canvas.MoveTo( x1 + x_pyl * c_w, y1 + c_h * ( y_ks + i ) );
      end
      else
      begin
        img1.Canvas.MoveTo( x1, y1 + c_h * ( y_ks + i ) );
      end;
      img1.Canvas.LineTo( x2, y1 + c_h * ( y_ks + i ) );
    end;
  end;
  if ( pub_twbbbh = 3 ) then
  begin
    img1.Canvas.MoveTo( x1, y1 + c_h * 29 );
    img1.Canvas.LineTo( x2, y1 + c_h * 29 );
  end;
  //体重上横线
  img1.Canvas.MoveTo( x1, y1 + c_h * 32 );
  img1.Canvas.LineTo( x2, y1 + c_h * 32 );
  //calmhawk
  if ( pub_twbbbh = 0 ) or ( pub_twbbbh = 2 ) or ( pub_twbbbh = 3 ) or ( pub_twbbbh = 4 ) then
  begin
    //体重下横线
    img1.Canvas.MoveTo( x1, y1 + c_h * 33 );
    img1.Canvas.LineTo( x2, y1 + c_h * 33 );

    for I := 2 to 6 do
    begin
      if ( i + 32 ) < r_n then
      begin
        img1.Canvas.MoveTo( x1, y1 + c_h * ( i + 32 ) );
        img1.Canvas.LineTo( x2, y1 + c_h * ( i + 32 ) );
      end;
    end;
  end;
  //划竖线

  img1.Canvas.MoveTo( x1 + 3 * c_w, y1 + 4 * c_h );
  img1.Canvas.LineTo( x1 + 3 * c_w, y1 + 25 * c_h );
  for I := 1 to 41 do
  begin
    img1.Canvas.Pen.Color := clGradientActiveCaption;
    if cqtwb = 1 then
    begin
      if ( i mod 2 ) = 0 then
      begin
        img1.Canvas.Pen.Color := clBlack;
        img1.Canvas.MoveTo( x1 + ( i + 6 ) * c_w, y1 );
        img1.Canvas.LineTo( x1 + ( i + 6 ) * c_w, y1 + 39 * c_h );
        img1.Canvas.Pen.Color := clGradientActiveCaption;
      end
      else
      begin
        img1.Canvas.MoveTo( x1 + ( i + 6 ) * c_w, y1 + 3 * c_h );
        img1.Canvas.LineTo( x1 + ( i + 6 ) * c_w, y1 + 25 * c_h );
      end;
    end
    else
    begin
      img1.Canvas.MoveTo( x1 + ( i + 6 ) * c_w, y1 + 3 * c_h );
      img1.Canvas.LineTo( x1 + ( i + 6 ) * c_w, y1 + 25 * c_h );
    end;
  end;
  img1.Canvas.Pen.Color := clBlack;
  img1.Canvas.MoveTo( x1 + 6 * c_w, y1 );
  img1.Canvas.LineTo( x1 + 6 * c_w, y2 );
  for I := 2 to 7 do
  begin
    img1.Canvas.Pen.Color := clRed;
    img1.Canvas.MoveTo( x1 + i * 6 * c_w, y1 );
    img1.Canvas.LineTo( x1 + i * 6 * c_w, y2 );
  end;
  img1.Canvas.Pen.Color := clBtnShadow;
  for I := 1 to 21 do
  begin
    for j := 1 to 4 do
    begin
      if pub_twbbbh = 4 then
      begin
        img1.Canvas.MoveTo( x1 + 6 * c_w, y1 + 3 * c_h + i * c_h + round( c_h / 5 ) * j );
        img1.Canvas.LineTo( x2, y1 + 3 * c_h + i * c_h + round( c_h / 5 ) * j );
      end
      else
      begin
        drawxx( x1 + 6 * c_w, y1 + 3 * c_h + i * c_h + round( c_h / 5 ) * j, x2, y1 + 3 * c_h + i * c_h + round( c_h / 5 ) * j );
      end;
    end;
  end;
  img1.Canvas.Pen.Color := clBlack;
  //    img1.Canvas.MoveTo(x1 + c_w, y1 + 25 * c_h);
  //    img1.Canvas.LineTo(x1 + c_w, y1 + 31 * c_h);
      //填写固定字符

  if pub_twbbbh = 4 then
  begin
    img1.Canvas.Font.Size := 19;
    img1.Canvas.TextOut( ( img_w - img1.canvas.TextWidth( pub_yymc + bm ) ) div 2, c_h * 2, pub_yymc + bm );
  end
  else
  begin
    img1.Canvas.Font.Size := 21;
    img1.Canvas.TextOut( ( img_w - img1.canvas.TextWidth( pub_yymc + bm ) ) div 2, c_h * 4, pub_yymc + bm );
  end;
  // img1.Canvas.TextOut((img_w - img1.canvas.TextWidth('体   温   表')) div 2, c_h * 2, '体   温   表');
  img1.Canvas.Font.Size := se5.Value;
  img1.Canvas.Textout( x1 + ( ( c_w * 6 - img1.canvas.TextWidth( '日    期' ) ) div 2 ), y1 + 2, '日    期' );
  img1.Canvas.Textout( x1 + ( ( c_w * 6 - img1.canvas.TextWidth( '住院日数' ) ) div 2 ), y1 + c_h + 2, '住院日数' );
  img1.Canvas.Font.Size := 7;
  img1.Canvas.Textout( x1 + ( ( c_w * 6 - img1.canvas.TextWidth( '手术(分娩)后日数' ) ) div 2 ), y1 + c_h * 2 + 2, '手术(分娩)后日数' );
  img1.Canvas.Font.Size := se5.Value;
  img1.Canvas.Textout( x1 + ( ( c_w * 6 - img1.canvas.TextWidth( '每日时间' ) ) div 2 ), y1 + c_h * 3 + 2, '每日时间' );
  img1.Canvas.Font.Color := clred;
  img1.Canvas.Textout( x1 + ( ( c_w * 3 - img1.canvas.TextWidth( '脉' ) ) div 2 ), y1 + c_h * 4 + 2, '脉' );
  img1.Canvas.Textout( x1 + ( ( c_w * 3 - img1.canvas.TextWidth( '搏' ) ) div 2 ), y1 + c_h * 5 + 2, '搏' );
  {脉搏数字}
  for I := 1 to 19 do
  begin
    img1.Canvas.Textout( x1 + ( ( c_w * 3 - img1.canvas.TextWidth( IntToStr( 150 - ( i - 1 ) * 10 ) ) ) div 2 ), y1 + c_h * ( 5 + i ) - ( img1.canvas.TextHeight( IntToStr( 210 - ( i - 1 ) * 10 ) ) div 2 ), IntToStr( 210 - ( i - 1 ) * 10 ) );
  end;
  img1.Canvas.Font.Color := clBlue;
  img1.Canvas.Textout( x1 + c_w * 3 + 2, y1 + c_h * 4 + 2, '体' );
  img1.Canvas.Textout( x1 + c_w * 3 + 2, y1 + c_h * 5 + 2, '温' );
  img1.Canvas.Textout( x1 + c_w * 5 + 2, y1 + c_h * 4 + 2, '摄' );
  img1.Canvas.Textout( x1 + c_w * 5 + 2, y1 + c_h * 5 + 2, '氏' );
  for I := 1 to 7 do
  begin
    img1.Canvas.Textout( x1 + c_w * 6 - img1.Canvas.TextWidth( '42℃' ) - 1, y1 + c_h * 4 + c_h * i * 2 - ( img1.canvas.TextHeight( floattostr( 42 - i ) + '℃' ) div 2 ) - 1, floattostr( 42 - i ) + '℃' );
  end;
  img1.Canvas.Font.Color := clBlack;
  //--calmhawk---
  if pub_twbbbh = 0 then
  begin
    img1.Canvas.Textout( x1 + c_w * 4 + 2, y1 + c_h * 19 + 2, '呼' );
    img1.Canvas.Textout( x1 + c_w * 4 + 2, y1 + c_h * 20 + 2, '吸' );
  end;
  if pub_twbbbh = 4 then
  begin
    img1.Canvas.Textout( x1 + c_w * 4 + 2, y1 + c_h * 23 + 2, '呼' );
    img1.Canvas.Textout( x1 + c_w * 4 + 2, y1 + c_h * 24 + 2, '吸' );
  end;
  if pub_twbbbh = 1 then
  begin
    img1.Canvas.Textout( x1 + c_w * 3 + 4, y1 + c_h * 19 - 6, '呼 吸' );
  end;
  if pub_twbbbh = 3 then
  begin
    img1.Canvas.Textout( x1 + c_w * 3 + 2, y1 + c_h * 13 + 2, '呼' );
    img1.Canvas.Textout( x1 + c_w * 3 + 2, y1 + c_h * 14 + 2, '吸' );
  end;

  if pub_twbbbh <> 3 then
  begin
    for I := 1 to 11 do
    begin
      img1.Canvas.Textout( x1 + c_w + ( c_w * 3 - img1.canvas.TextWidth( inttostr( 65 - i * 5 ) ) ) - 1, y1 + c_h * 13 + c_h * i - ( img1.canvas.TextHeight( inttostr( 65 - i * 5 ) ) div 2 ), inttostr( 65 - i * 5 ) );
    end;
  end;
  if pub_twbbbh = 3 then
  begin
    for I := 1 to 9 do
    begin
      img1.Canvas.Textout( x1 + c_w + ( c_w * 3 - img1.canvas.TextWidth( inttostr( 55 - i * 5 ) ) ) - 1, y1 + c_h * 15 + c_h * i - ( img1.canvas.TextHeight( inttostr( 55 - i * 5 ) ) div 2 ), inttostr( 55 - i * 5 ) );
    end;
  end;
  if pub_twbbbh = 3 then
  begin
    img1.Canvas.Textout( x1 + 2, y1 + 4 + c_h * 25, '尿　　量(ml)' );
    img1.Canvas.Textout( x1 + 2, y1 + 4 + c_h * 26, '大　　便(次)' );
    img1.Canvas.Textout( x1 + 2, y1 + 4 + c_h * 27, '输入液量(ml)' );
    img1.Canvas.Textout( x1 + 2, y1 + 4 + c_h * 28, '饮 入 量(ml)' );
    img1.Canvas.Textout( x1 + 2, y1 + 1 + c_h * 30, '血　压(mmHg)' );
    img1.Canvas.Textout( x1 + 2, y1 + 4 + c_h * 32, '体　　重(kg)' );
  end;
  if ( pub_twbbbh = 0 ) or ( pub_twbbbh = 2 ) then
  begin
    img1.Canvas.Textout( x1 + 2, y1 + 4 + c_h * 25, '尿　　量(ml)' );
    img1.Canvas.Textout( x1 + 2, y1 + 4 + c_h * 26, '大　　便(次)' );
    img1.Canvas.Textout( x1 + 2, y1 + 4 + c_h * 27, '输入液量(ml)' );
    img1.Canvas.Textout( x1 + 2, y1 + 1 + c_h * 29, '血　压(mmHg)' );
    img1.Canvas.Textout( x1 + 2, y1 + 4 + c_h * 31, '体　　重(kg)' );
    img1.Canvas.Textout( x1 + 2, y1 + 4 + c_h * 32, '胃液引流(ml)' );
    img1.Canvas.Textout( x1 + 2, y1 + 4 + c_h * 33, '血浆管引流(ml)' );
    img1.Canvas.Textout( x1 + 2, y1 + 4 + c_h * 34, '______引流(ml)' );
  end;
  if pub_twbbbh = 1 then
  begin
    //calmhawk
    img1.Canvas.Textout( x1 + 2, y1 + 4 + c_h * 25, '液入量(ml)' );

    img1.Canvas.Textout( x1 + 20, y1 + 4 + c_h * 26, '大 便(次)' );
    img1.Canvas.Textout( x1 + 20, y1 + 4 + c_h * 27, '尿量(次/ml)' );
    img1.Canvas.Textout( x1 + 20, y1 + 4 + c_h * 28, '其     它' );

    img1.Canvas.Textout( x1 + 4, y1 + 10 + c_h * 29, '血 压' );
    img1.Canvas.Textout( x1 + 4, y1 + 0 + c_h * 30, 'mmHg' );

    img1.Canvas.Textout( x1 + 60, y1 + 4 + c_h * 29, '早' );
    img1.Canvas.Textout( x1 + 60, y1 + 4 + c_h * 30, '晚' );

    img1.Canvas.Textout( x1 + 2, y1 + 4 + c_h * 31, '体  重kg' );
    img1.Canvas.Textout( x1 + 2, y1 + 4 + c_h * 32, '药物过敏' );

    img1.Canvas.Textout( x1 + 2, y1 + 4 + c_h * 26, '排' );
    img1.Canvas.Textout( x1 + 2, y1 + 1 + c_h * 27, '出' );
    img1.Canvas.Textout( x1 + 2, y1 + 1 + c_h * 28, '量' );
  end;
  if pub_twbbbh = 4 then
  begin
    //calmhawk
    img1.Canvas.Textout( x1 + 2, y1 + 4 + c_h * 25, '小便次数(量)' );

    img1.Canvas.Textout( x1 + 2, y1 + 4 + c_h * 26, '大  便  次  数' );
    img1.Canvas.Textout( x1 + 2, y1 + 4 + c_h * 27, '液体入量(ml)' );

    img1.Canvas.Textout( x1 + 8, y1 + 10 + c_h * 28, '血 压' );
    img1.Canvas.Textout( x1 + 4, y1 + 0 + c_h * 29, '(mmHg)' );

    img1.Canvas.Textout( x1 + 50, y1 + 4 + c_h * 28, '上午' );
    img1.Canvas.Textout( x1 + 50, y1 + 4 + c_h * 29, '下午' );

    img1.Canvas.Textout( x1 + 2, y1 + 4 + c_h * 30, '体           重kg' );
    img1.Canvas.Textout( x1 + 2, y1 + 4 + c_h * 31, '药  物  过  敏' );

  end;
  //img1.Canvas.Rectangle(x1, y1, x2, y2);
end;

procedure Tfrm_bqgl_twtpdy.drawxx( x_1, y_1, x_2, y_2: Integer );
var
  s: TPenStyle;
begin
  s := img1.Canvas.Pen.Style;
  img1.Canvas.Pen.Style := psDot;
  img1.Canvas.MoveTo( x_1, y_1 );
  img1.Canvas.LineTo( x_2 - 1, y_2 );
  img1.Canvas.Pen.Style := s;
end;

procedure Tfrm_bqgl_twtpdy.drawjbxx( xm, nl, xb, ryrq, bq, cw, zyh: string );
var
  ksmc, cwh, ksmc1, cwh1: string;
begin
  ksmc := trim( sp_kscw.FieldByName( 'ks' ).AsString );
  cwh := trim( sp_kscw.FieldByName( 'bch' ).AsString );
  if sp_kscw.RecordCount > 1 then
  begin
    sp_kscw.Last;
    ksmc1 := trim( sp_kscw.FieldByName( 'ks' ).AsString );
    cwh1 := trim( sp_kscw.FieldByName( 'bch' ).AsString );
  end;
  with img1.Canvas do
  begin
    Font.Color := clBlack;
    Font.Size := se5.Value;
    TextOut( x1, y1 - c_h - 2, '姓名:' );
    TextOut( x1 + 6 * c_w, y1 - c_h - 2, '年龄:' );
    TextOut( x1 + 10 * c_w, y1 - c_h - 2, '性别:' );
    TextOut( x1 + 13 * c_w, y1 - c_h - 2, '入院日期:' );
    TextOut( x1 + 22 * c_w, y1 - c_h - 2, '病区:' );
    TextOut( x1 + 31 * c_w, y1 - c_h - 2, '床位:' );
    TextOut( x1 + 39 * c_w, y1 - c_h - 2, '住院号:' );

    Font.Color := clblue;
    TextOut( x1 + 2 * c_w, y1 - c_h - 2, trim( xm ) );
    TextOut( x1 + 8 * c_w, y1 - c_h - 2, trim( nl ) );
    TextOut( x1 + 12 * c_w, y1 - c_h - 2, trim( xb ) );
    TextOut( x1 + 17 * c_w, y1 - c_h - 2, trim( ryrq ) );
    TextOut( x1 + 24 * c_w, y1 - c_h - 2, trim( ksmc ) );
    TextOut( x1 + 33 * c_w, y1 - c_h - 2, trim( cwh ) );
    TextOut( x1 + 42 * c_w, y1 - c_h - 2, trim( zyh ) );
    if ( ksmc1 <> '' ) and ( ksmc1 <> ksmc ) then
    begin
      TextOut( x1 + 24 * c_w + img1.Canvas.TextWidth( ksmc ), y1 - c_h - 2, '(' + trim( ksmc1 ) + ')' );
    end;
    if ( cwh1 <> '' ) and ( cwh1 <> cwh ) then
      TextOut( x1 + 33 * c_w + img1.Canvas.TextWidth( cwh ), y1 - c_h - 2, '(' + trim( cwh1 ) + ')' );
  end;
end;

procedure Tfrm_bqgl_twtpdy.drawTw( wd, jwwd, fs: string; xh, ts: integer; wljw, fstw, rgdm: boolean; yy: string );
var
  x, y, jw_x, jw_y: integer;
  fh: string;
  I: Integer;
  penm: TPenMode;
  r: Extended;
begin
  if not TryStrToFloat( wd, r ) then
  begin
    wd := '20';
  end;
  if ( StrTofloat( wd ) <> 0 ) or rgdm or ( yy <> '' ) then
  begin
    if wljw and not rgdm then
    begin
      jw_y := xh;
      if jwwd = '体温未降' then
      begin
        getdwxy( StrToFloat( wd ), jw_y, ts, jw_x, jw_y );
      end
      else
      begin
        getdwxy( StrToFloat( jwwd ), jw_y, ts, jw_x, jw_y );
      end;
      img1.Canvas.Font.Color := clRed;
      img1.Canvas.Pen.Color := clRed;
      if jwwd = '体温未降' then
      begin
        img1.Canvas.Ellipse( jw_x - 4, jw_y - 8, jw_x + 10, jw_y + 6 );
      end
      else
      begin
        getdwxy( StrToFloat( wd ), xh, ts, x, y );
        drawxx( x + ( txbc div 2 ), y + ( txbc div 2 ),
          x + ( txbc div 2 ), jw_y );
        //calmhawk---物理降温
        if pub_twbbbh = 1 then
        begin
          hw( jw_x, jw_y, 'X', clred, a );
        end
        else
        begin
          hw( jw_x, jw_y, '○', clred, a );
        end;
      end;

    end;
    img1.Canvas.Font.Color := clBlue;
    img1.Canvas.Pen.Color := clBlue;
    if Trim( yy ) <> '' then //未测
    begin
      if ( pub_twbbbh = 0 ) or ( pub_twbbbh = 2 ) or ( pub_twbbbh = 3 ) or ( pub_twbbbh = 4 ) then
      begin
        for I := 0 to ( Length( yy ) div 2 ) - 1 do
        begin
          x := x1 + c_w * ( 6 + ( ts - 1 ) * mrgs ) + c_w * ( xh - 1 ) + 1;
          y := y1 + 1 + c_h * 25;
          img1.Canvas.Textout( x, y - img1.Canvas.TextHeight( Copy( yy, 2 * i + 1, 2 ) ) * ( i + 1 ), Copy( yy, 2 * ( ( Length( yy ) div 2 ) - 1 - i ) + 1, 2 ) );
        end;
      end;
      if pub_twbbbh = 1 then
      begin
        img1.Canvas.Font.Color := clred;
        img1.Canvas.Pen.Color := clred;
        for I := 0 to Length( yy ) do
        begin
          x := x1 + c_w * ( 6 + ( ts - 1 ) * mrgs ) + c_w * ( xh - 1 ) + 1;
          y := y1 + 1 + c_h * 4;
          img1.Canvas.Textout( x, y + img1.Canvas.TextHeight( Copy( yy, 2 * i + 1, 2 ) ) * i, Copy( yy, 2 * i + 1, 2 ) );
        end;
        img1.Canvas.Font.Color := clBlue;
        img1.Canvas.Pen.Color := clBlue;
      end;
      tw_x := 0;
      tw_y := 0;
    end
    else
    begin
      y := xh;

      getdwxy( StrToFloat( wd ), xh, ts, x, y );
      if ( trim( fs ) = '腋下' ) or ( trim( fs ) = '' ) then
      begin
        fh := 'X';
      end;
      if trim( fs ) = '口内' then
      begin
        fh := '●';
      end;
      if trim( fs ) = '直肠' then
      begin
        fh := '○';
      end;
      if StrToFloat( wd ) < 35 then
      begin
        fh := '●';
        y := round( ( 42 - 35 ) / 0.5 * c_h ) + y1 + 4 * c_h;
      end;
      if tw_x <> 0 then
      begin
        lx( tw_x, tw_y, x, y, clblue );
      end;
      if rgdm then
      begin
        fh := '↓';
        x := 35;
        y := xh;
        getdwxy( x, xh, ts, x, y );

        img1.Canvas.MoveTo( x + ( txbc div 2 ), y );
        img1.Canvas.LineTo( x + ( txbc div 2 ), y + round( 1.5 * txbc ) );
        img1.Canvas.MoveTo( x + ( txbc div 2 ), y + round( 1.5 * txbc ) );
        img1.Canvas.LineTo( x + ( txbc div 2 ) - 4, y + txbc );
        img1.Canvas.MoveTo( x + ( txbc div 2 ), y + round( 1.5 * txbc ) );
        img1.Canvas.LineTo( x + ( txbc div 2 ) + 4, y + txbc );
        //img1.Canvas.TextOut( x, y, fh );
        img1.Canvas.Pen.Color := clBlack;
        img1.Canvas.Font.Color := clBlack;
        img1.Canvas.TextOut( x - ( xh - 1 ) * c_w, y1 + c_h * 38 + 1, '人工冬眠' );
      end
      else
      begin
        //img1.Canvas.TextOut(x, y, fh);
        if fstw then
        begin
          hw( x, y - txbc - 3, 'v', clblue, pmXor );
        end;
        if jwwd = '体温未降' then
        begin
          img1.Canvas.Font.Size := img1.Canvas.Font.Size - 1;
        end;
        hw( x, y, fh, clblue, a );
        if jwwd = '体温未降' then
        begin
          img1.Canvas.Font.Size := img1.Canvas.Font.Size + 1;
        end;
        if StrToFloat( wd ) < 35 then
        begin
          img1.Canvas.MoveTo( x + ( txbc div 2 ), y + ( txbc div 2 ) );
          img1.Canvas.LineTo( x + ( txbc div 2 ), y + round( 1.5 * txbc ) );
          img1.Canvas.MoveTo( x + ( txbc div 2 ), y + round( 1.5 * txbc ) );
          img1.Canvas.LineTo( x + ( txbc div 2 ) - 4, y + txbc );
          img1.Canvas.MoveTo( x + ( txbc div 2 ), y + round( 1.5 * txbc ) );
          img1.Canvas.LineTo( x + ( txbc div 2 ) + 4, y + txbc );
        end;

      end;

      tw_x := x;
      tw_y := y;
    end;

  end;
end;

procedure Tfrm_bqgl_twtpdy.getdwxy( tw: Real; xh, ts: Integer; var x, y: Integer );
var
  x_, y_, i: integer;
begin
  if cqtwb = 1 then
  begin
    i := 2;
  end
  else
  begin
    i := 6;
  end;
  y_ := round( ( 41 - tw ) * 2 * c_h ) + y1 + 4 * c_h;
  x_ := x1 + c_w * ( 6 + ( ts - 1 ) * i ) + c_w * ( xh - 1 ) + ( c_w div 2 ) - 2;
  x := x_;
  y := y_ + c_h * 2;
end;

procedure Tfrm_bqgl_twtpdy.hw( x, y: Integer; fh: string; ys: integer; penm: TPenMode );
var
  ys1, ys2, ys3: Integer;
  i: integer;
  aa, bb: integer;
begin
  // penm := img1.Canvas.Pen.Mode;
  img1.canvas.pen.mode := penm;
  ys1 := img1.Canvas.Pen.Color;
  ys2 := img1.Canvas.Brush.Color;
  ys3 := img1.Canvas.Font.Color;
  y := y - txbc;
  img1.Canvas.Pen.Color := ys;
  img1.Canvas.Font.Color := ys;
  if uppercase( fh ) = 'X' then
  begin
    img1.Canvas.TextOut( x, y, 'X' );
  end;
  if fh = '●' then
  begin
    y := y + ( txbc div 2 );
    img1.Canvas.MoveTo( x, y );
    img1.Canvas.Brush.Color := ys;
    img1.Canvas.Ellipse( x, y, x + ( txbc ), y + ( txbc ) );
  end;
  if fh = '○' then
  begin
    y := y + ( txbc div 2 );
    img1.Canvas.MoveTo( x, y );
    img1.Canvas.Ellipse( x, y, x + ( txbc ), y + ( txbc ) );
  end;
  if uppercase( fh ) = 'H' then
  begin
    img1.Canvas.TextOut( x, y, 'H' );
  end;
  if uppercase( fh ) = 'R' then
  begin
    img1.Canvas.TextOut( x, y, 'R' );
  end;
  if uppercase( fh ) = 'V' then
  begin
    img1.Canvas.TextOut( x, y, 'v' );
  end;
  if TryStrToInt( fh, i ) then
  begin
    img1.Canvas.TextOut( x, y, fh );
  end;
  img1.Canvas.Font.Color := ys3;
  img1.Canvas.Pen.Color := ys1;
  img1.Canvas.Brush.Color := ys2;
  img1.canvas.pen.mode := a;
end;

procedure Tfrm_bqgl_twtpdy.drawhx( hx, xh, ts: integer; fzhx: Boolean; yy: string );
var
  x, y: Integer;
begin
  if yy <> '' then
  begin
    hx_x := 0;
  end;
  if hx > 0 then
  begin
    x := xh;
    y := ts;
    gethxxy( hx, x, y );
    if pub_twbbbh = 2 then
    begin
      hw( x - ( c_w div 4 ), y1 + c_h * 24 + ( c_h div 2 ) * ( xh mod 2 ) + ( img1.Canvas.TextHeight( '2' ) div 2 ) + 2 - ( xh mod 2 ) * 4, inttostr( hx ), clred, a );
    end
    else
    begin
      if hx < 10 then
      begin
        x := xh;
        y := ts;
        gethxxy( 10, x, y );
        if hx_x > 0 then
        begin
          lx( hx_x, hx_y, x, y, clBlue );
        end;
        hw( x, y, IntToStr( hx ), clBlue, a );
      end
      else
      begin
        if hx_x > 0 then
        begin
          lx( hx_x, hx_y, x, y, clBlue );
        end;
        if fzhx then
        begin
          hw( x, y, 'R', clBlue, a );
        end
        else
        begin
          hw( x, y, '●', clBlue, a );
        end;
      end;

      hx_x := x;
      hx_y := y;
    end;
  end;
end;

procedure Tfrm_bqgl_twtpdy.drawXlMb( xl, mb: Integer; tw, hx: string; xh, ts: integer; xzqb: boolean; yy: string );
var
  x_x, x_y, m_x, m_y, a_x, a_y: integer;
  re: Extended;
  prv_xlx, prv_xly: integer;
begin
  if yy <> '' then
  begin
    xl_x := 0;
    mb_x := 0;
  end;
  x_x := 0;
  if xl > 0 then
  begin
    x_x := xh;
    x_y := ts;
    getxlxy( xl, x_x, x_y );
    if ( xl_x <> 0 ) and ( xl_x >= mb_x ) then
    begin
      lx( xl_x, xl_y, x_x, x_y, clred );
    end;
    if xzqb then
    begin
      hw( x_x, x_y, 'H', clRed, a );
    end
    else
    begin
      hw( x_x, x_y, '○', clRed, a );
    end;
    prv_xlx := x_x;
    prv_xly := x_y;
    //    if (mb <= 0) and (mb_x <> 0) then
    //    begin
    //      lx( mb_x, mb_y, x_x, x_y, clred );
    //    end;
  end;

  if mb > 0 then
  begin
    x_x := xh;
    x_y := ts;
    getxlxy( mb, x_x, x_y );
    if ( mb_x <> 0 ) and ( mb_x >= xl_x ) then
    begin
      lx( mb_x, mb_y, x_x, x_y, clred );
    end;
    m_x := xh;
    m_y := ts;
    a_x := xh;
    a_y := ts;
    if not trystrtofloat( tw, re ) then
    begin
      tw := '-50';
    end;
    getdwxy( StrToFloat( tw ), m_x, m_y, m_x, m_y );
    gethxxy( StrToInt( hx ), a_x, a_y );

    if ( m_y = x_y ) then
    begin
      txbc := txbc + 4;
      hw( x_x - 2, x_y, '○', clRed, pmnotxor );
      txbc := txbc - 4;
    end
    else
      if ( a_y = x_y ) then
      begin
        txbc := txbc + 4;
        hw( x_x - 2, x_y, '○', clblue, pmnotxor );
        txbc := txbc - 4;
        hw( x_x, x_y, '●', clRed, a );
      end
      else
      begin
        hw( x_x, x_y, '●', clRed, a );
      end;

    //    if (xl <= 0) and (xl_x <> 0) then
    //    begin
    //      lx( xl_x, xl_y, x_x, x_y, clred );
    //    end;
  end;
  if xl > 0 then
  begin
    xl_x := prv_xlx;
    xl_y := prv_xly;
  end
  else
    if x_x > 0 then
    begin
      xl_x := x_x;
      xl_y := x_y;
    end;
  if mb > 0 then
  begin
    mb_x := x_x;
    mb_y := x_y;
  end
  else
    if prv_xlx > 0 then
    begin
      mb_x := prv_xlx;
      mb_y := prv_xly;
    end;
end;

procedure Tfrm_bqgl_twtpdy.drawcgjl( ry, ss, ecss, ts, xbl, dbcs, syl, yrl, xy, xy1, xy2, tz, ssts,
  fm, cy, zr, sw, gchcs, cs: string; gc, dbsj, rggm: boolean; ryrq, ssrq, ecssrq, fmrq, zrrq, cyrq, swrq, csrq: Tdatetime;
  xysj, xy1sj, xy2sj, kg1, kg2, kg3, kg4, kg5, kg6: string;
  jllx: integer; blng: boolean );
var
  x, y: integer;
  size, size1: integer;
  a, b: integer;
  z1, z2, z3, z4, z5, z6, z7, z8: integer;
  //calmhawk,入量,大便,尿量,其它,血压,体重,皮试 所在行;
  _rl, _db, _nl, _qt, _xy, _tz, _ps: Integer;
  sl: TStringlist;
  sxss: string;
  I: Integer;
  xblmrz: integer; //小便量默认值
begin
  if pub_twbbbh = 1 then
  begin
    xblmrz := -1;
  end
  else
  begin
    xblmrz := 0;
  end;
  //对应时段是否有数据
  //calmhawk----添加
  if ( pub_twbbbh = 3 ) then
  begin
    _rl := 27;
    _db := 26;
    _nl := 25;
    _qt := 28;
    _xy := 29;
    _tz := 32;
    _ps := -1;
  end;

  if pub_twbbbh = 4 then
  begin
    _rl := 27;
    _db := 26;
    _nl := 25;
    _qt := 32;
    _xy := 28;
    _tz := 30;
    _ps := -1;
  end;

  if ( pub_twbbbh = 0 ) or ( pub_twbbbh = 2 ) then
  begin
    _rl := 27;
    _db := 26;
    _nl := 25;
    _qt := 32;
    _xy := 28;
    _tz := 31;
    _ps := -1;
  end;
  if pub_twbbbh = 1 then
  begin
    _rl := 25;
    _db := 26;
    _nl := 27;
    _qt := 28; //空格2
    _xy := 29;
    _tz := 31;
    _ps := 32; //空格1
  end;
  size := img1.Canvas.Font.Size;
  //calmhawk
  if ( pub_twbbbh = 1 ) or ( pub_twbbbh = 4 ) then
  begin
    img1.Canvas.Font.Color := clred;
  end;
  if ( pub_twbbbh = 0 ) or ( pub_twbbbh = 2 ) or ( pub_twbbbh = 3 ) then
  begin
    img1.Canvas.Font.Color := clBlack;
  end;
  size1 := 8;
  if pub_twbbbh = 3 then
  begin
    size1 := 9;
  end;
  x := x1 + 6 * c_w + c_w * mrgs * ( StrToInt( ts ) - 1 ) + 3;
  y := y1 + c_h * 4;
  if cqtwb = 1 then
  begin
    img1.Canvas.Font.Size := 8;
  end;
  z7 := img1.Canvas.TextHeight( '李' );
  img1.Canvas.Font.Size := size;
  if not TryStrToInt( xbl, i ) then
  begin
    img1.Canvas.TextOut( x + ( ( mrgs * c_w - img1.Canvas.TextWidth( xbl ) ) div 2 ), y1 + c_h * _nl + 1, xbl );
  end
  else
    if StrToInt( xbl ) > xblmrz then
    begin
      if blng then
      begin
        xbl := xbl + '/C';
      end;
      img1.Canvas.TextOut( x + ( ( mrgs * c_w - img1.Canvas.TextWidth( xbl ) ) div 2 ), y1 + c_h * _nl + 1, xbl );
    end;
  if gc then
  begin
    if dbcs <> '-1' then
    begin
      if pub_twbbbh = 1 then
      begin
        img1.Canvas.TextOut( x + ( ( mrgs * c_w - img1.Canvas.TextWidth( dbcs + ' ' + gchcs + '/E' ) ) div 2 ),
          y1 + c_h * _db + 1, dbcs + '~' + gchcs + '/E' );
      end
      else
        if pub_twbbbh = 3 then
        begin
          img1.Canvas.TextOut( x + ( ( mrgs * c_w - img1.Canvas.TextWidth( dbcs + '   ' + gchcs + '/E' ) ) div 2 ),
            y1 + c_h * _db + 1, dbcs + '   ' + gchcs + '/E' );
        end
        else
        begin
          img1.Canvas.TextOut( x + ( ( mrgs * c_w - img1.Canvas.TextWidth( dbcs + ' ' + gchcs + '/E' ) ) div 2 ),
            y1 + c_h * _db + 1, dbcs + ' ' + gchcs + '/E' );
        end;
    end;
  end
  else
  begin
    if dbsj then
    begin
      img1.Canvas.TextOut( x + ( ( mrgs * c_w - img1.Canvas.TextWidth( '※' ) ) div 2 ), y1 + c_h * _db + 1, '※' );
    end
    else
      if rggm then
      begin
        img1.Canvas.TextOut( x + ( ( mrgs * c_w - img1.Canvas.TextWidth( '※' ) ) div 2 ), y1 + c_h * _db + 1, '☆' );
      end
      else
      begin
        if dbcs <> '-1' then
          img1.Canvas.TextOut( x + ( ( mrgs * c_w - img1.Canvas.TextWidth( '国' ) ) div 2 ), y1 + c_h * _db + 1, dbcs );
      end;
  end;
  if yrl <> '0' then
    img1.Canvas.TextOut( x + ( ( mrgs * c_w - img1.Canvas.TextWidth( '国' ) ) div 2 ), y1 + c_h * _rl + 1, yrl );
  if xy <> '0' then
    img1.Canvas.TextOut( x + ( ( mrgs * c_w - img1.Canvas.TextWidth( xy + xysj ) ) div 2 ), y1 + c_h * ( _xy ) + 1, xysj + ' ' + xy );
  if xy1 <> '0' then
    img1.Canvas.TextOut( x + ( ( mrgs * c_w - img1.Canvas.TextWidth( xy1 + xy1sj ) ) div 2 ), y1 + c_h * ( _xy + 1 ) + 1, xy1sj + ' ' + xy1 );
  if xy2 <> '0' then
    img1.Canvas.TextOut( x + ( ( mrgs * c_w - img1.Canvas.TextWidth( xy2 + xy2sj ) ) div 2 ), y1 + c_h * ( _xy + 2 ) + 1, xy2sj + ' ' + xy2 );
  if tz <> '0' then
    img1.Canvas.TextOut( x + ( ( mrgs * c_w - img1.Canvas.TextWidth( '国' ) ) div 2 ), y1 + c_h * _tz + 1, tz );
  if ( pub_twbbbh = 0 ) or ( pub_twbbbh = 2 ) or ( pub_twbbbh = 3 ) then
  begin
    img1.Canvas.Font.Color := clblue;
  end;
  if ( pub_twbbbh = 0 ) or ( pub_twbbbh = 3 ) then
  begin
    img1.Canvas.TextOut( x + ( ( mrgs * c_w - img1.Canvas.TextWidth( '国' ) ) div 2 ), y1 + c_h * 2 + 1, ssts );
  end;
  if ( pub_twbbbh = 1 ) or ( pub_twbbbh = 4 ) then
  begin
    sl := TStringList.Create;
    ExtractStrings( ['/'], [], PChar( ssts ), sl );
    if sl.Count > 1 then
    begin
      sxss := sl.Strings[0] + '(' + sl.Strings[1] + ')';
    end
    else
    begin
      sxss := ssts;
    end;
    img1.Canvas.TextOut( x + ( ( mrgs * c_w - img1.Canvas.TextWidth( '国' ) ) div 2 ), y1 + c_h * 2 + 1, sxss );
  end;
  if pub_twbbbh = 2 then
  begin
    sl := TStringList.Create;
    ExtractStrings( ['/'], [], PChar( ssts ), sl );
    if sl.Count > 1 then
    begin
      sxss := sl.Strings[1] + '/' + sl.Strings[0];
    end
    else
    begin
      sxss := ssts;
    end;
    img1.Canvas.TextOut( x + ( ( mrgs * c_w - img1.Canvas.TextWidth( '国' ) ) div 2 ), y1 + c_h * 2 + 1, sxss );
  end;
  if ( pub_twbbbh = 0 ) or ( pub_twbbbh = 2 ) or ( pub_twbbbh = 3 ) then
  begin
    img1.Canvas.Font.Color := clblack;
  end;
  img1.Canvas.Font.Size := 7;
  //calmhawk---添加,,皮试

  if _ps > 0 then
  begin
    img1.Canvas.TextOut( x + ( ( mrgs * c_w - img1.Canvas.TextWidth( kg1 ) ) div 2 ), y1 + c_h * _ps + 1, kg1 );
  end;
  if pub_twbbbh = 1 then
  begin
    img1.Canvas.TextOut( x + ( ( mrgs * c_w - img1.Canvas.TextWidth( kg2 ) ) div 2 ), y1 + c_h * _qt + 1, kg2 );
  end;
  if ( pub_twbbbh = 0 ) or ( pub_twbbbh = 2 ) then
  begin
    img1.Canvas.TextOut( x + ( ( mrgs * c_w - img1.Canvas.TextWidth( kg1 ) ) div 2 ), y1 + c_h * _qt + 1, kg4 );
    img1.Canvas.TextOut( x + ( ( mrgs * c_w - img1.Canvas.TextWidth( kg2 ) ) div 2 ), y1 + c_h * 33 + 1, kg5 );
    img1.Canvas.TextOut( x + ( ( mrgs * c_w - img1.Canvas.TextWidth( kg3 ) ) div 2 ), y1 + c_h * 34 + 1, kg6 );
    img1.Canvas.TextOut( x + ( ( mrgs * c_w - img1.Canvas.TextWidth( kg1 ) ) div 2 ), y1 + c_h * 35 + 1, kg1 );
    img1.Canvas.TextOut( x + ( ( mrgs * c_w - img1.Canvas.TextWidth( kg2 ) ) div 2 ), y1 + c_h * 36 + 1, kg2 );
    img1.Canvas.TextOut( x + ( ( mrgs * c_w - img1.Canvas.TextWidth( kg3 ) ) div 2 ), y1 + c_h * 37 + 1, kg3 );
  end;
  if pub_twbbbh = 3 then
  begin
    img1.Canvas.TextOut( x + ( ( mrgs * c_w - img1.Canvas.TextWidth( kg1 ) ) div 2 ), y1 + c_h * 33 + 1, kg1 );
    img1.Canvas.TextOut( x + ( ( mrgs * c_w - img1.Canvas.TextWidth( kg2 ) ) div 2 ), y1 + c_h * 34 + 1, kg2 );
    img1.Canvas.TextOut( x + ( ( mrgs * c_w - img1.Canvas.TextWidth( kg3 ) ) div 2 ), y1 + c_h * 35 + 1, kg3 );
    img1.Canvas.TextOut( x + ( ( mrgs * c_w - img1.Canvas.TextWidth( kg4 ) ) div 2 ), y1 + c_h * 36 + 1, kg4 );
    img1.Canvas.TextOut( x + ( ( mrgs * c_w - img1.Canvas.TextWidth( kg6 ) ) div 2 ), y1 + c_h * _qt + 1, kg6 );
    img1.Canvas.TextOut( x + ( ( mrgs * c_w - img1.Canvas.TextWidth( kg5 ) ) div 2 ), y1 + c_h * 37 + 1, kg5 );
  end;
  if pub_twbbbh = 4 then
  begin
    img1.Canvas.TextOut( x + ( ( mrgs * c_w - img1.Canvas.TextWidth( kg1 ) ) div 2 ), y1 + c_h * 31 + 1, kg1 );
    img1.Canvas.TextOut( x + ( ( mrgs * c_w - img1.Canvas.TextWidth( kg2 ) ) div 2 ), y1 + c_h * 32 + 1, kg2 );
  end;
  img1.Canvas.Font.Size := size1;
  img1.Canvas.Font.Color := clRed;
  //img1.Canvas.TextOut(x + ((6 * c_w - img1.Canvas.TextWidth(kg4)) div 2), y1 + c_h * 35 + 1, kg4);
  if ( pub_twbbbh = 1 ) and ( cs = '1' ) then
  begin

  end
  else
    if ry = '1' then
    begin
      a := StrToInt( FormatDateTime( 'HH', ryrq ) );
      if pub_twbbbh = 4 then
      begin
        a := ( a - 1 ) div 4;
      end
      else
      begin
        a := a div 4;
      end;
      if cqtwb = 1 then
      begin
        drawspz( x, y + z8, '入院于' + getdx( FormatDateTime( 'HH', ryrq ), 1 ) + '时' + getdx( FormatDateTime( 'nn', ryrq ), 0 ) + '分' );
        z8 := z8 + 7 * z7;
      end
      else
      begin
        case a of
          0:
            begin
              z8 := z7 * z1;
              z1 := z1 + 7;
            end;
          1:
            begin
              z8 := z7 * z2;
              z2 := z2 + 7;
            end;
          2:
            begin
              z8 := z7 * z3;
              z3 := z3 + 7;
            end;
          3:
            begin
              z8 := z7 * z4;
              z4 := z4 + 7;
            end;
          4:
            begin
              z8 := z7 * z5;
              z5 := z5 + 7;
            end;
          5:
            begin
              begin
                z8 := z7 * z6;
                z6 := z6 + 7;
              end;
            end;
        end;
        pro_pdsdsj( a );
        if ( pub_twbbbh = 1 ) or ( pub_twbbbh = 3 ) or ( pub_twbbbh = 4 ) then
        begin
          drawspz( x + a * c_w, y, '入院于' + getdx( FormatDateTime( 'HH', ryrq ), 1 ) + '时' + getdx( FormatDateTime( 'nn', ryrq ), 0 ) + '分' );
        end
        else
        begin
          img1.Canvas.TextOut( x + c_w * a, y, '入' );
          img1.Canvas.TextOut( x + c_w * a, y + z8 + img1.Canvas.TextHeight( '入' ), '院' );
          img1.Canvas.TextOut( x + c_w * a, y + z8 + img1.Canvas.TextHeight( '入' ) * 2, '于' );
          img1.Canvas.TextOut( x + c_w * a, y + z8 + img1.Canvas.TextHeight( '入' ) * 3, getdx( FormatDateTime( 'HH', ryrq ), 1 ) );
          img1.Canvas.TextOut( x + c_w * a, y + z8 + img1.Canvas.TextHeight( '入' ) * 4, '时' );
          img1.Canvas.TextOut( x + c_w * a, y + z8 + img1.Canvas.TextHeight( '入' ) * 5, getdx( FormatDateTime( 'nn', ryrq ), 0 ) );
          img1.Canvas.TextOut( x + c_w * a, y + z8 + img1.Canvas.TextHeight( '入' ) * 6, '分' );
        end;
      end;
    end;
  if zr = '1' then
  begin
    b := StrToInt( FormatDateTime( 'HH', zrrq ) );
    if pub_twbbbh = 4 then
    begin
      b := ( b - 1 ) div 4;
    end
    else
    begin
      b := b div 4;
    end;

    if cqtwb = 1 then
    begin
      drawspz( x, y + z8, '转入于' + getdx( FormatDateTime( 'HH', zrrq ), 1 ) + '时' + getdx( FormatDateTime( 'nn', zrrq ), 0 ) + '分' );
      z8 := z8 + 7 * z7;
    end
    else
    begin
      case b of
        0:
          begin
            z8 := z7 * z1;
            z1 := z1 + 7;
          end;
        1:
          begin
            z8 := z7 * z2;
            z2 := z2 + 7;
          end;
        2:
          begin
            z8 := z7 * z3;
            z3 := z3 + 7;
          end;
        3:
          begin
            z8 := z7 * z4;
            z4 := z4 + 7;
          end;
        4:
          begin
            z8 := z7 * z5;
            z5 := z5 + 7;
          end;
        5:
          begin
            begin
              z8 := z7 * z6;
              z6 := z6 + 7;
            end;
          end;
      end;
      if ( pub_twbbbh = 1 ) or ( pub_twbbbh = 3 ) or ( pub_twbbbh = 4 ) then
      begin
        pro_pdsdsj( b );
        drawspz( x + b * c_w, y, '转入于' + getdx( FormatDateTime( 'HH', zrrq ), 1 ) + '时' + getdx( FormatDateTime( 'nn', zrrq ), 0 ) + '分' );
      end
      else
        if z8 = 0 then
        begin
          if pub_twbbbh = 1 then
          begin
            //drawspz( x + b * c_w, y, '转入于' + getdx( FormatDateTime( 'HH', zrrq ) ) + '时' + getdx( FormatDateTime( 'nn', zrrq ) ) + '分' );
          end
          else
          begin
            img1.Canvas.TextOut( x + c_w * b, y, '转' );
            img1.Canvas.TextOut( x + c_w * b, y + z8 + img1.Canvas.TextHeight( '死' ), '入' );
            img1.Canvas.TextOut( x + c_w * b, y + z8 + img1.Canvas.TextHeight( '死' ) * 2, '于' );
            img1.Canvas.TextOut( x + c_w * b, y + z8 + img1.Canvas.TextHeight( '死' ) * 3, getdx( FormatDateTime( 'HH', zrrq ), 1 ) );
            img1.Canvas.TextOut( x + c_w * b, y + z8 + img1.Canvas.TextHeight( '死' ) * 4, '时' );
            img1.Canvas.TextOut( x + c_w * b, y + z8 + img1.Canvas.TextHeight( '死' ) * 5, getdx( FormatDateTime( 'nn', zrrq ), 0 ) );
            img1.Canvas.TextOut( x + c_w * b, y + z8 + img1.Canvas.TextHeight( '死' ) * 6, '分' );
          end;
        end;
    end;
  end;
  if ss = '1' then
  begin
    b := StrToInt( FormatDateTime( 'HH', ssrq ) );
    if pub_twbbbh = 4 then
    begin
      b := ( b - 1 ) div 4;
    end
    else
    begin
      b := b div 4;
    end;

    if cqtwb = 1 then
    begin
      drawspz( x, y + z8, '手术于' + getdx( FormatDateTime( 'HH', ssrq ), 1 ) + '时' + getdx( FormatDateTime( 'nn', ssrq ), 0 ) + '分' );
      z8 := z8 + 7 * z7;
    end
    else
    begin
      case b of
        0:
          begin
            z8 := z7 * z1;
            z1 := z1 + 2;
          end;
        1:
          begin
            z8 := z7 * z2;
            z2 := z2 + 2;
          end;
        2:
          begin
            z8 := z7 * z3;
            z3 := z3 + 2;
          end;
        3:
          begin
            z8 := z7 * z4;
            z4 := z4 + 2;
          end;
        4:
          begin
            z8 := z7 * z5;
            z5 := z5 + 2;
          end;
        5:
          begin
            begin
              z8 := z7 * z6;
              z6 := z6 + 2;
            end;
          end;
      end;
      if ( pub_twbbbh = 1 ) or ( pub_twbbbh = 4 ) then
      begin
        pro_pdsdsj( b );
        drawspz( x + b * c_w, y, '手术于' + getdx( FormatDateTime( 'HH', ssrq ), 1 ) + '时' + getdx( FormatDateTime( 'nn', ssrq ), 0 ) + '分' );
      end
      else
      begin
        img1.Canvas.TextOut( x + c_w * b, y + z8, '手' );
        img1.Canvas.TextOut( x + c_w * b, y + z8 + img1.Canvas.TextHeight( '死' ), '术' );
      end;
    end;
  end;
  if ecss = '1' then
  begin
    b := StrToInt( FormatDateTime( 'HH', ecssrq ) );
    if pub_twbbbh = 4 then
    begin
      b := ( b - 1 ) div 4;
    end
    else
    begin
      b := b div 4;
    end;

    if cqtwb = 1 then
    begin
      drawspz( x, y + z8, '手术于' + getdx( FormatDateTime( 'HH', ecssrq ), 1 ) + '时' + getdx( FormatDateTime( 'nn', ecssrq ), 0 ) + '分' );
      z8 := z8 + 7 * z7;
    end
    else
    begin
      case b of
        0:
          begin
            z8 := z7 * z1;
            z1 := z1 + 2;
          end;
        1:
          begin
            z8 := z7 * z2;
            z2 := z2 + 2;
          end;
        2:
          begin
            z8 := z7 * z3;
            z3 := z3 + 2;
          end;
        3:
          begin
            z8 := z7 * z4;
            z4 := z4 + 2;
          end;
        4:
          begin
            z8 := z7 * z5;
            z5 := z5 + 2;
          end;
        5:
          begin
            begin
              z8 := z7 * z6;
              z6 := z6 + 2;
            end;
          end;
      end;
      if ( pub_twbbbh = 1 ) or ( pub_twbbbh = 4 ) then
      begin
        pro_pdsdsj( b );
        drawspz( x + b * c_w, y, '手术于' + getdx( FormatDateTime( 'HH', ecssrq ), 1 ) + '时' + getdx( FormatDateTime( 'nn', ecssrq ), 0 ) + '分' );
      end
      else
      begin
        img1.Canvas.TextOut( x + c_w * b, y + z8, '手' );
        img1.Canvas.TextOut( x + c_w * b, y + z8 + img1.Canvas.TextHeight( '死' ), '术' );
      end;
    end;
  end;
  if fm = '1' then
  begin
    b := StrToInt( FormatDateTime( 'HH', fmrq ) );
    if pub_twbbbh = 4 then
    begin
      b := ( b - 1 ) div 4;
    end
    else
    begin
      b := b div 4;
    end;

    if cqtwb = 1 then
    begin
      drawspz( x, y + z8, '分娩于' + getdx( FormatDateTime( 'HH', fmrq ), 1 ) + '时' + getdx( FormatDateTime( 'nn', fmrq ), 0 ) + '分' );
      z8 := z8 + 7 * z7;
    end
    else
    begin
      case b of
        0:
          begin
            z8 := z7 * z1;
            z1 := z1 + 7;
          end;
        1:
          begin
            z8 := z7 * z2;
            z2 := z2 + 7;
          end;
        2:
          begin
            z8 := z7 * z3;
            z3 := z3 + 7;
          end;
        3:
          begin
            z8 := z7 * z4;
            z4 := z4 + 7;
          end;
        4:
          begin
            z8 := z7 * z5;
            z5 := z5 + 7;
          end;
        5:
          begin
            begin
              z8 := z7 * z6;
              z6 := z6 + 7;
            end;
          end;
      end;
      if ( pub_twbbbh = 1 ) or ( pub_twbbbh = 4 ) then
      begin
        pro_pdsdsj( b );
        drawspz( x + b * c_w, y, '分娩于' + getdx( FormatDateTime( 'HH', fmrq ), 1 ) + '时' + getdx( FormatDateTime( 'nn', fmrq ), 0 ) + '分' );
      end
      else
        if pub_twbbbh = 3 then
        begin
          pro_pdsdsj( b );
          drawspz( x + b * c_w, y, '分娩' );
        end
        else
          if z8 = 0 then
          begin
            if ( pub_twbbbh = 2 ) or ( pub_twbbbh = 0 ) then
            begin
              img1.Canvas.TextOut( x + c_w * b, y + z8, '分' );
              img1.Canvas.TextOut( x + c_w * b, y + z8 + img1.Canvas.TextHeight( '死' ), '娩' );
              img1.Canvas.TextOut( x + c_w * b, y + z8 + img1.Canvas.TextHeight( '死' ) * 2, '于' );
              img1.Canvas.TextOut( x + c_w * b, y + z8 + img1.Canvas.TextHeight( '死' ) * 3, getdx( FormatDateTime( 'HH', fmrq ), 1 ) );
              img1.Canvas.TextOut( x + c_w * b, y + z8 + img1.Canvas.TextHeight( '死' ) * 4, '时' );
              img1.Canvas.TextOut( x + c_w * b, y + z8 + img1.Canvas.TextHeight( '死' ) * 5, getdx( FormatDateTime( 'nn', fmrq ), 0 ) );
              img1.Canvas.TextOut( x + c_w * b, y + z8 + img1.Canvas.TextHeight( '死' ) * 6, '分' );
            end;
          end;
    end;
  end;

  if cs = '1' then
  begin
    b := StrToInt( FormatDateTime( 'HH', csrq ) );
    if pub_twbbbh = 4 then
    begin
      b := ( b - 1 ) div 4;
    end
    else
    begin
      b := b div 4;
    end;

    if cqtwb = 1 then
    begin
      drawspz( x, y + z8, '出生于' + getdx( FormatDateTime( 'HH', csrq ), 1 ) + '时' + getdx( FormatDateTime( 'nn', csrq ), 0 ) + '分' );
      z8 := z8 + 7 * z7;
    end
    else
    begin
      case b of
        0:
          begin
            z8 := z7 * z1;
            z1 := z1 + 7;
          end;
        1:
          begin
            z8 := z7 * z2;
            z2 := z2 + 7;
          end;
        2:
          begin
            z8 := z7 * z3;
            z3 := z3 + 7;
          end;
        3:
          begin
            z8 := z7 * z4;
            z4 := z4 + 7;
          end;
        4:
          begin
            z8 := z7 * z5;
            z5 := z5 + 7;
          end;
        5:
          begin
            begin
              z8 := z7 * z6;
              z6 := z6 + 7;
            end;
          end;
      end;
      if ( pub_twbbbh = 1 ) or ( pub_twbbbh = 3 ) or ( pub_twbbbh = 4 ) then
      begin
        pro_pdsdsj( b );
        drawspz( x + b * c_w, y, '出生于' + getdx( FormatDateTime( 'HH', csrq ), 1 ) + '时' + getdx( FormatDateTime( 'nn', csrq ), 0 ) + '分' );
      end
      else
        if z8 = 0 then
        begin
          if pub_twbbbh = 1 then
          begin
            //drawspz( x + b * c_w, y, '出生于' + getdx( FormatDateTime( 'HH', csrq ) ) + '时' + getdx( FormatDateTime( 'nn', csrq ) ) + '分' );
          end
          else
          begin
            img1.Canvas.TextOut( x + c_w * b, y, '出' );
            img1.Canvas.TextOut( x + c_w * b, y + z8 + img1.Canvas.TextHeight( '死' ), '生' );
            img1.Canvas.TextOut( x + c_w * b, y + z8 + img1.Canvas.TextHeight( '死' ) * 2, '于' );
            img1.Canvas.TextOut( x + c_w * b, y + z8 + img1.Canvas.TextHeight( '死' ) * 3, getdx( FormatDateTime( 'HH', csrq ), 1 ) );
            img1.Canvas.TextOut( x + c_w * b, y + z8 + img1.Canvas.TextHeight( '死' ) * 4, '时' );
            img1.Canvas.TextOut( x + c_w * b, y + z8 + img1.Canvas.TextHeight( '死' ) * 5, getdx( FormatDateTime( 'nn', csrq ), 0 ) );
            img1.Canvas.TextOut( x + c_w * b, y + z8 + img1.Canvas.TextHeight( '死' ) * 6, '分' );
          end;
        end;
    end;
  end;

  if sw = '1' then
  begin
    b := StrToInt( FormatDateTime( 'HH', swrq ) );
    if pub_twbbbh = 4 then
    begin
      b := ( b - 1 ) div 4;
    end
    else
    begin
      b := b div 4;
    end;
    if cqtwb = 1 then
    begin
      drawspz( x, y + z8, '死亡于' + getdx( FormatDateTime( 'HH', swrq ), 1 ) + '时' + getdx( FormatDateTime( 'nn', swrq ), 0 ) + '分' );
      z8 := z8 + 7 * z7;
    end
    else
    begin
      case b of
        0:
          begin
            z8 := z7 * z1;
            z1 := z1 + 7;
          end;
        1:
          begin
            z8 := z7 * z2;
            z2 := z2 + 7;
          end;
        2:
          begin
            z8 := z7 * z3;
            z3 := z3 + 7;
          end;
        3:
          begin
            z8 := z7 * z4;
            z4 := z4 + 7;
          end;
        4:
          begin
            z8 := z7 * z5;
            z5 := z5 + 7;
          end;
        5:
          begin
            begin
              z8 := z7 * z6;
              z6 := z6 + 7;
            end;
          end;
      end;
      if ( pub_twbbbh = 1 ) or ( pub_twbbbh = 3 ) or ( pub_twbbbh = 4 ) then
      begin
        pro_pdsdsj( b );
        drawspz( x + b * c_w, y, '死亡于' + getdx( FormatDateTime( 'HH', swrq ), 1 ) + '时' + getdx( FormatDateTime( 'nn', swrq ), 0 ) + '分' );
      end
      else
        if z8 = 0 then
        begin
          if pub_twbbbh = 1 then
          begin
            //drawspz( x + b * c_w, y, '死亡于' + getdx( FormatDateTime( 'HH', swrq ) ) + '时' + getdx( FormatDateTime( 'nn', swrq ) ) + '分' );
          end
          else
          begin
            img1.Canvas.TextOut( x + c_w * b, y, '死' );
            img1.Canvas.TextOut( x + c_w * b, y + z8 + img1.Canvas.TextHeight( '死' ), '亡' );
            img1.Canvas.TextOut( x + c_w * b, y + z8 + img1.Canvas.TextHeight( '死' ) * 2, '于' );
            img1.Canvas.TextOut( x + c_w * b, y + z8 + img1.Canvas.TextHeight( '死' ) * 3, getdx( FormatDateTime( 'HH', swrq ), 1 ) );
            img1.Canvas.TextOut( x + c_w * b, y + z8 + img1.Canvas.TextHeight( '死' ) * 4, '时' );
            img1.Canvas.TextOut( x + c_w * b, y + z8 + img1.Canvas.TextHeight( '死' ) * 5, getdx( FormatDateTime( 'nn', swrq ), 0 ) );
            img1.Canvas.TextOut( x + c_w * b, y + z8 + img1.Canvas.TextHeight( '死' ) * 6, '分' );
          end;
        end;
    end;
  end;

  if cy = '1' then
  begin
    b := StrToInt( FormatDateTime( 'HH', cyrq ) );
    if pub_twbbbh = 4 then
    begin
      b := ( b - 1 ) div 4;
    end
    else
    begin
      b := b div 4;
    end;

    if cqtwb = 1 then
    begin
      drawspz( x, y + z8, '出院于' + getdx( FormatDateTime( 'HH', cyrq ), 1 ) + '时' + getdx( FormatDateTime( 'nn', cyrq ), 0 ) + '分' );
      z8 := z8 + 7 * z7;
    end
    else
    begin
      case b of
        0:
          begin
            z8 := z7 * z1;
            z1 := z1 + 7;
          end;
        1:
          begin
            z8 := z7 * z2;
            z2 := z2 + 7;
          end;
        2:
          begin
            z8 := z7 * z3;
            z3 := z3 + 7;
          end;
        3:
          begin
            z8 := z7 * z4;
            z4 := z4 + 7;
          end;
        4:
          begin
            z8 := z7 * z5;
            z5 := z5 + 7;
          end;
        5:
          begin
            begin
              z8 := z7 * z6;
              z6 := z6 + 7;
            end;
          end;
      end;
      if ( pub_twbbbh = 1 ) or ( pub_twbbbh = 3 ) or ( pub_twbbbh = 4 ) then
      begin
        pro_pdsdsj( b );
        drawspz( x + b * c_w, y, '出院于' + getdx( FormatDateTime( 'HH', cyrq ), 1 ) + '时' + getdx( FormatDateTime( 'nn', cyrq ), 0 ) + '分' );
      end
      else
        if z8 = 0 then
        begin
          if pub_twbbbh = 1 then
          begin
            //drawspz( x + b * c_w, y, '出院于' + getdx( FormatDateTime( 'HH', cyrq ) ) + '时' + getdx( FormatDateTime( 'nn', cyrq ) ) + '分' );
          end
          else
          begin
            img1.Canvas.TextOut( x + c_w * b, y + z8, '出' );
            img1.Canvas.TextOut( x + c_w * b, y + z8 + img1.Canvas.TextHeight( '死' ), '院' );
            img1.Canvas.TextOut( x + c_w * b, y + z8 + img1.Canvas.TextHeight( '死' ) * 2, '于' );
            img1.Canvas.TextOut( x + c_w * b, y + z8 + img1.Canvas.TextHeight( '死' ) * 3, getdx( FormatDateTime( 'HH', cyrq ), 1 ) );
            img1.Canvas.TextOut( x + c_w * b, y + z8 + img1.Canvas.TextHeight( '死' ) * 4, '时' );
            img1.Canvas.TextOut( x + c_w * b, y + z8 + img1.Canvas.TextHeight( '死' ) * 5, getdx( FormatDateTime( 'nn', cyrq ), 0 ) );
            img1.Canvas.TextOut( x + c_w * b, y + z8 + img1.Canvas.TextHeight( '死' ) * 6, '分' );
          end;
        end;
    end;
  end;
  img1.Canvas.Font.Color := clBlack;
  img1.Canvas.Font.Size := size;
  prv_sdsj.Free;
  prv_sdsj := nil;
end;

procedure Tfrm_bqgl_twtpdy.pro_pdsdsj( var sd: Integer );
var
  I: Integer;
begin
  if not Assigned( prv_sdsj ) then
  begin
    prv_sdsj := Tstringlist.Create;
    prv_sdsj.Add( '0' );
    prv_sdsj.Add( '0' );
    prv_sdsj.Add( '0' );
    prv_sdsj.Add( '0' );
    prv_sdsj.Add( '0' );
    prv_sdsj.Add( '0' );
    prv_sdsj.Add( '0' );
    prv_sdsj.Add( '0' );
    prv_sdsj.Add( '0' );
    prv_sdsj.Add( '0' );
    prv_sdsj.Add( '0' );
    prv_sdsj.Add( '0' );
    prv_sdsj.Add( '0' );
    prv_sdsj.Add( '0' );
    prv_sdsj.Add( '0' );
    prv_sdsj.Add( '0' );
    prv_sdsj.Add( '0' );
    prv_sdsj.Add( '0' );
    prv_sdsj.Add( '0' );
    prv_sdsj.Add( '0' );
    prv_sdsj.Add( '0' );
    prv_sdsj.Add( '0' );
    prv_sdsj.Add( '0' );
    prv_sdsj.Add( '0' );
  end;
  if cqtwb = 1 then
  begin
    sd := 1;
  end
  else
  begin
    if prv_sdsj.Strings[sd] = '1' then
    begin
      sd := sd + 1;
      pro_pdsdsj( sd );
    end
    else
    begin
      prv_sdsj.Strings[sd] := '1';
    end;
  end;
end;

procedure Tfrm_bqgl_twtpdy.drawbt( rq: TDateTime; rq1, zyts, xh, ts, sd, ys: string );
var
  xs_rq: string;
  I: Integer;
  j: Integer;
begin
  if rq1 = '1' then
  begin
    xs_rq := FormatDateTime( 'yyyy-mm-dd', rq );
  end
  else
  begin
    xs_rq := FormatDateTime( 'dd', rq );
  end;
  if cqtwb = 1 then
  begin
    j := 2;
  end
  else
  begin
    j := 6;
  end;
  img1.Canvas.Font.Color := clBlue;
  if ( rq1 = '1' ) and ( cqtwb = 1 ) then
  begin
    img1.Canvas.Textout( x1 + c_w * 6 + c_w * j * ( StrToInt( ts ) - 1 ) + ( ( c_w * j - img1.canvas.TextWidth( xs_rq ) ) div 2 ),
      y1 - ( c_h div 2 ), xs_rq );
  end
  else
  begin
    img1.Canvas.Textout( x1 + c_w * 6 + c_w * j * ( StrToInt( ts ) - 1 ) + ( ( c_w * j - img1.canvas.TextWidth( xs_rq ) ) div 2 ), y1 + 2, xs_rq );
  end;
  //calmhawk---
  if ( pub_twbbbh = 0 ) or ( pub_twbbbh = 2 ) then
  begin
    img1.Canvas.Font.Color := clBlue;
  end
  else
  begin
    img1.Canvas.Font.Color := clRed;
  end;
  img1.Canvas.Textout( x1 + c_w * 6 + c_w * j * ( StrToInt( ts ) - 1 ) + ( ( c_w * j - img1.canvas.TextWidth( zyts ) ) div 2 ), y1 + c_h + 2, zyts );
  if pub_twbbbh = 4 then
  begin
    img1.Canvas.Font.Color := clred;
  end
  else
  begin
    img1.Canvas.Font.Color := clBlue;
  end;
  img1.Canvas.TextOut( ( se1.Value div 2 ), y1 + r_n * c_h + 3, '第' + ys + '周' );
  img1.Canvas.Font.Color := clBlue;
  //img1.Canvas.Textout(x1 + c_w * 6 * ts + c_w * (xh - 1) + ((c_w - img1.canvas.TextWidth(sd)) div 2), y1 + 3 * c_h + 2, sd);

end;

procedure Tfrm_bqgl_twtpdy.lx( x, y, i, j, ys: Integer );
var
  a_1, b_1, a_2, b_2: real;
  x_1, x_2, y_1, y_2: integer;
begin
  img1.Canvas.Pen.Color := ys;
  img1.Canvas.MoveTo( x + ( txbc div 2 ), y );
  img1.Canvas.LineTo( i + ( txbc div 2 ), j );
  //    if y = j then
  //    begin
  //        x_1 := x_1 + (txbc div 2);
  //        x_2 := x_2 - (txbc div 2);
  //    end
  //    else
  //    begin
  //        a_1 := Sqrt(Sqr(txbc / 2) / (Sqr((i - x) / (j - y)) + 1));
  //        b_1 := a_1 * Abs(i - x) / abs(j - y);
  //        if j > y then
  //        begin
  //            x_1 := Round(x + b_1);
  //            y_1 := Round(y + a_1);
  //            x_2 := Round(i - b_1);
  //            y_2 := Round(j - a_1);
  //        end
  //        else
  //        begin
  //            x_1 := Round(x + b_1);
  //            y_1 := Round(y - a_1);
  //            x_2 := Round(i + b_1);
  //            y_2 := Round(j + a_1);
  //        end;
  //    end;
  //    img1.Canvas.Pen.Color := ys;
  //    img1.Canvas.MoveTo(x_1, y_1);
  //    img1.Canvas.LineTo(x_2, y_2);
end;

procedure Tfrm_bqgl_twtpdy.getxlxy( xl: Integer; var x, y: Integer );
var
  x_, y_: integer;
begin
  y_ := round( ( 150 - xl ) / 10 * c_h ) + y1 + 12 * c_h;
  x_ := x1 + c_w * ( 6 + ( y - 1 ) * mrgs ) + c_w * ( x - 1 ) + ( c_w div 2 ) - 2;
  x := x_;
  y := y_;
end;

procedure Tfrm_bqgl_twtpdy.gethxxy( hx: Integer; var x, y: Integer );
var
  x_, y_: integer;
begin
  y_ := round( ( 110 - hx ) / 5 * c_h ) + y1 + 4 * c_h;
  x_ := x1 + c_w * ( 6 + ( y - 1 ) * mrgs ) + c_w * ( x - 1 ) + ( c_w div 2 ) - 2;
  x := x_;
  y := y_;
end;
//体温表绘制----calmhawk--2011－07－05---添加 dybz （地域标志）
//---dybz : 0 四川，1 陕西

procedure Tfrm_bqgl_twtpdy.drawBrTwb( zyh: string; ys: integer; cqtwb: integer );
var
  wljw, rgdm: boolean;
  ts, yf: integer;
  rq: Tdatetime;
  zyts: integer;
  i: integer;
begin
  case pub_twbbbh of
    0:
      begin
        bm := '体温表';
        c_n := 48; //列数
        r_n := 39; //行数
      end;
    1:
      begin
        bm := '体温记录单';
        c_n := 48; //列数
        r_n := 33; //行数
      end;
    2:
      begin
        bm := '体温表';
        c_n := 48; //列数
        r_n := 39; //行数
      end;
    4:
      begin
        bm := '体温记录单';
        c_n := 48; //列数
        r_n := 32; //行数
      end;
  else
    begin
      bm := '体温表';
      c_n := 48; //列数
      r_n := 38; //行数
    end;
  end;
  //取基本信息
  pro_get_jbxx( ys, zyh, cqtwb );

  dyInit( se1.Value, se2.Value );
  drawjbxx( qry_brxx.FieldByName( 'brxm' ).AsString, qry_brxx.FieldByName( 'brnl' ).AsString,
    qry_brxx.FieldByName( 'brxb' ).AsString, FormatDateTime( 'yyyy-mm-dd', qry_brxx.FieldByName( 'ryrq' ).AsDateTime ),
    qry_brxx.FieldByName( 'bqmc' ).AsString, qry_brxx.FieldByName( 'bch' ).AsString, qry_brxx.FieldByName( 'tmh' ).AsString );
  sp_bt.First;
  ts := 1;
  rq := sp_bt.FieldByName( 'jlrq' ).AsDateTime;
  zyts := sp_bt.FieldByName( 'zyts' ).AsInteger;
  if cqtwb = 1 then
  begin
    i := 22;
    mrgs := 2;
  end
  else
  begin
    i := 8;
    mrgs := 6;
  end;
  while ts < i do
  begin
    if FormatDateTime( 'yymm', rq ) <> FormatDateTime( 'yymm', rq - 1 ) then
    begin
      yf := 1;
    end
    else
    begin
      yf := 0;
    end;
    if ts = 1 then
    begin
      yf := 1;
    end;
    drawbt( rq, intToStr( yf ), IntToStr( zyts ), '0', intToStr( ts ), '', IntToStr( ys ) );
    ts := ts + 1;
    rq := rq + 1;
    zyts := zyts + 1;
  end;
  sp_tw.First;
  xl_x := 0;
  mb_x := 0;
  xl_y := 0;
  mb_y := 0;
  while not sp_tw.Eof do
  begin
    wljw := ( sp_tw.FieldByName( 'wljw' ).AsInteger = 1 );
    rgdm := ( sp_tw.FieldByName( 'rgdm' ).AsInteger = 1 );
    drawTw( sp_tw.FieldByName( 'tw' ).AsString, sp_tw.FieldByName( 'wljwhtw' ).AsString,
      sp_tw.FieldByName( 'twfs' ).AsString, sp_tw.FieldByName( 'xh' ).AsInteger,
      sp_tw.FieldByName( 'ts' ).AsInteger, wljw,
      sp_tw.FieldByName( 'fstw' ).AsBoolean, rgdm,
      sp_tw.FieldByName( 'sm' ).AsString );
    drawhx( sp_tw.FieldByName( 'hx' ).AsInteger, sp_tw.FieldByName( 'xh' ).AsInteger, sp_tw.FieldByName( 'ts' ).AsInteger,
      sp_tw.FieldByName( 'hxq' ).AsBoolean, sp_tw.FieldByName( 'sm' ).AsString );
    drawXlMb( sp_tw.FieldByName( 'xl' ).AsInteger, sp_tw.FieldByName( 'mb' ).AsInteger,
      sp_tw.FieldByName( 'tw' ).asstring, sp_tw.FieldByName( 'hx' ).AsString,
      sp_tw.FieldByName( 'xh' ).AsInteger, sp_tw.FieldByName( 'ts' ).AsInteger,
      sp_tw.FieldByName( 'xzqb' ).AsBoolean, sp_tw.FieldByName( 'sm' ).AsString );

    sp_tw.Next;
  end;
  sp_cgjl.First;
  while not sp_cgjl.Eof do
  begin
    drawcgjl( sp_cgjl.FieldByName( 'ry' ).AsString, sp_cgjl.FieldByName( 'ss' ).AsString,
      sp_cgjl.FieldByName( 'ecss' ).AsString,
      sp_cgjl.FieldByName( 'ts' ).AsString, sp_cgjl.FieldByName( 'xbl' ).AsString,
      sp_cgjl.FieldByName( 'dbcs' ).AsString, sp_cgjl.FieldByName( 'syl' ).AsString,
      sp_cgjl.FieldByName( 'yrl' ).AsString, sp_cgjl.FieldByName( 'xy' ).AsString,
      sp_cgjl.FieldByName( 'xy1' ).AsString, sp_cgjl.FieldByName( 'xy2' ).AsString,
      sp_cgjl.FieldByName( 'tz' ).AsString, sp_cgjl.FieldByName( 'ssts' ).AsString,
      sp_cgjl.FieldByName( 'fm' ).AsString, sp_cgjl.FieldByName( 'cy' ).AsString,
      sp_cgjl.FieldByName( 'zr' ).AsString, sp_cgjl.FieldByName( 'sw' ).AsString,
      sp_cgjl.FieldByName( 'gchcs' ).AsString, sp_cgjl.FieldByName( 'cs' ).AsString,
      sp_cgjl.FieldByName( 'gc' ).AsBoolean,
      sp_cgjl.FieldByName( 'dbsj' ).AsBoolean, sp_cgjl.FieldByName( 'rggm' ).AsBoolean,
      sp_cgjl.FieldByName( 'ryrq' ).AsDateTime, sp_cgjl.FieldByName( 'ssrq' ).AsDateTime,
      sp_cgjl.FieldByName( 'dtecsssj' ).AsDateTime,
      sp_cgjl.FieldByName( 'fmrq' ).AsDateTime, sp_cgjl.FieldByName( 'zrrq' ).AsDateTime,
      sp_cgjl.FieldByName( 'cyrq' ).AsDateTime, sp_cgjl.FieldByName( 'swrq' ).AsDateTime,
      sp_cgjl.FieldByName( 'csrq' ).AsDateTime,
      sp_cgjl.FieldByName( 'xysj' ).AsString, sp_cgjl.FieldByName( 'xy1sj' ).AsString,
      sp_cgjl.FieldByName( 'xy2sj' ).AsString, sp_cgjl.FieldByName( 'kg1' ).AsString,
      sp_cgjl.FieldByName( 'kg2' ).AsString, sp_cgjl.FieldByName( 'kg3' ).AsString,
      sp_cgjl.FieldByName( 'kg4' ).AsString, sp_cgjl.FieldByName( 'kg5' ).AsString,
      sp_cgjl.FieldByName( 'kg6' ).AsString,
      sp_cgjl.FieldByName( 'jllx' ).AsInteger, sp_cgjl.FieldByName( 'blng' ).AsBoolean );
    sp_cgjl.Next;
  end;
  hx_x := 0;
  hx_y := 0;
  tw_x := 0;
  tw_y := 0;
  xl_x := 0;
  xl_y := 0;
  mb_x := 0;
  mb_y := 0;

end;

procedure Tfrm_bqgl_twtpdy.pro_get_jbxx( ys: Integer; zyh: string; cqtwb: integer );
begin
  //病人信息
  try

    qry_brxx.Close;
    qry_brxx.Parameters.ParamByName( 'zyh' ).Value := zyh;
    qry_brxx.Open;
    sp_tw.close;
    sp_tw.Parameters.Refresh;
    sp_tw.Parameters.ParamByName( '@zyh' ).Value := zyh;
    sp_tw.Parameters.ParamByName( '@ys' ).Value := ys;
    sp_tw.Parameters.ParamByName( '@cqtwb' ).Value := cqtwb;
    sp_tw.Open;
    sp_bt.close;
    sp_bt.Parameters.Refresh;
    sp_bt.Parameters.ParamByName( '@zyh' ).Value := zyh;
    sp_bt.Parameters.ParamByName( '@ys' ).Value := ys;
    sp_bt.Parameters.ParamByName( '@cqtwb' ).Value := cqtwb;
    sp_bt.Open;
    sp_cgjl.close;
    sp_cgjl.Parameters.Refresh;
    sp_cgjl.Parameters.ParamByName( '@zyh' ).Value := zyh;
    sp_cgjl.Parameters.ParamByName( '@ys' ).Value := ys;
    sp_cgjl.Parameters.ParamByName( '@cqtwb' ).Value := cqtwb;
    sp_cgjl.Open;
    sp_kscw.close;
    sp_kscw.Parameters.Refresh;
    sp_kscw.Parameters.ParamByName( '@zyh' ).Value := zyh;
    sp_kscw.Parameters.ParamByName( '@ys' ).Value := ys;
    sp_kscw.Parameters.ParamByName( '@cqtwb' ).Value := cqtwb;
    sp_kscw.Open;
  except on e: exception do
      ShowMessage( e.message );

  end;
end;

procedure Tfrm_bqgl_twtpdy.drawspz( x, y: Integer; a: string );
var
  I, j: Integer;
  siz: integer;
begin
  siz := img1.Canvas.Font.Size;
  img1.Canvas.Font.Size := 6;
  if pub_twbbbh = 3 then
  begin
    img1.Canvas.Font.Size := 7;
  end;
  if pub_twbbbh = 4 then
  begin
    img1.Canvas.Font.Size := 8;
  end;
  if cqtwb = 1 then
  begin
    img1.Canvas.Font.Size := 8;
  end;
  j := img1.Canvas.TextHeight( '中' );
  for I := 1 to Length( a ) div 2 do
  begin
    img1.Canvas.TextOut( x, y + j * ( i - 1 ) + 1, Copy( a, 2 * i - 1, 2 ) );
  end;
  img1.Canvas.Font.Size := siz;
end;

end.

