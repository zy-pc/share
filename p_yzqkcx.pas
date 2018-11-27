unit p_yzqkcx;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, GridsEh, DBGridEh, DB, ADODB, StdCtrls, Menus,
  cxLookAndFeelPainters, cxControls, cxContainer, cxEdit, cxCheckBox, cxButtons,
  Buttons, DBGridEhGrouping;
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
  Tfrm_yzqkcx = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    DBGridEh1: TDBGridEh;
    qry_cx_bqbr: TADOQuery;
    ds_cx_bqbr: TDataSource;
    Panel4: TPanel;
    DateTimePicker1: TDateTimePicker;
    ScrollBox1: TScrollBox;
    DBGridEh2: TDBGridEh;
    sp_dryz_yzzx: TADOStoredProc;
    ds_dryz_yzzx: TDataSource;
    Timer1: TTimer;
    groupbox2: TPanel;
    ScrollBox2: TScrollBox;
    DBGridEh3: TDBGridEh;
    DBGridEh5: TDBGridEh;
    sp_dryz_yzjf: TADOStoredProc;
    ds_dryz_yzjf: TDataSource;
    GroupBox1: TGroupBox;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    DBGridEh6: TDBGridEh;
    sp_dryz_xz: TADOStoredProc;
    ds_dryz_xz: TDataSource;
    DBGridEh7: TDBGridEh;
    sp_dryz_xt: TADOStoredProc;
    ds_dryz_xt: TDataSource;
    DBGridEh8: TDBGridEh;
    qry_cx_yzxg: TADOQuery;
    ds_cx_yzxg: TDataSource;
    DBGridEh4: TDBGridEh;
    ScrollBox3: TScrollBox;
    ScrollBox4: TScrollBox;
    Label1: TLabel;
    TabSheet4: TTabSheet;
    Panel5: TPanel;
    Panel6: TPanel;
    zxyz: TSpeedButton;
    SpeedButton1: TSpeedButton;
    cxButton1: TcxButton;
    cxButton6: TcxButton;
    cxButton2: TcxButton;
    xzzx: TcxCheckBox;
    srsj: TcxCheckBox;
    xzzxr: TcxCheckBox;
    cxButton7: TcxButton;
    cxButton8: TcxButton;
    cxButton9: TcxButton;
    cxBtn_kfbq: TcxButton;
    cxBtn_qbkfbq: TcxButton;
    btn_sypq: TcxButton;
    cxButton4: TcxButton;
    cxBt1: TcxButton;
    Button4: TButton;
    ScrollBox5: TScrollBox;
    DBGridEh9: TDBGridEh;
    DBGridEh10: TDBGridEh;
    sp_dryz: TADOStoredProc;
    ds_dryz: TDataSource;
    TabSheet5: TTabSheet;
    Panel7: TPanel;
    ScrollBox6: TScrollBox;
    DBGridEh11: TDBGridEh;
    DBGridEh12: TDBGridEh;
    qry_qbwjf: TADOQuery;
    ds_qbwjf: TDataSource;
    procedure FormShow(Sender: TObject);
    procedure DBGridEh1CellClick(Column: TColumnEh);
    procedure ProXswzx;
    procedure DBGridEh4ColWidthsChanged(Sender: TObject);
    procedure createrect( var myrect1: TTmyrect; dataset_rect: Tcustomadodataset; grid_yzlr1: Tdbgrideh; x1, x2, x3: integer );
    procedure DBGridEh4DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure DBGridEh4Enter(Sender: TObject);
    procedure OnMouseWheel_yzzx( var Msg: TMsg; var Handled: Boolean );
    procedure OnMouseWheel_yzjf( var Msg: TMsg; var Handled: Boolean );
    procedure DBGridEh4Exit(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure DBGridEh2ColWidthsChanged(Sender: TObject);
    procedure DateTimePicker1Change(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure DBGridEh3ColWidthsChanged(Sender: TObject);
    procedure DBGridEh3Exit(Sender: TObject);
    procedure DBGridEh3DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure DBGridEh5ColWidthsChanged(Sender: TObject);
    procedure DBGridEh3Enter(Sender: TObject);
    procedure createrect1(var myrect1:TTmyrect;dataset_rect:Tcustomadodataset;grid_yzlr1:Tdbgrideh;x1,x2,x3:integer);
    procedure DBGridEh6ColWidthsChanged(Sender: TObject);
    procedure DBGridEh6DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure DBGridEh7ColWidthsChanged(Sender: TObject);
    procedure DBGridEh7DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure DBGridEh6Enter(Sender: TObject);
    procedure OnMouseWheel_yzxz( var Msg: TMsg; var Handled: Boolean );
    procedure OnMouseWheel_yzxt( var Msg: TMsg; var Handled: Boolean );
    procedure DBGridEh6Exit(Sender: TObject);
    procedure DBGridEh7Enter(Sender: TObject);
    procedure DBGridEh7Exit(Sender: TObject);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure DBGridEh10ColWidthsChanged(Sender: TObject);
    procedure DBGridEh9ColWidthsChanged(Sender: TObject);
    procedure DBGridEh9DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure OnMouseWheel_qtksyzzx( var Msg: TMsg; var Handled: Boolean );
    procedure DBGridEh9Enter(Sender: TObject);
    procedure DBGridEh9Exit(Sender: TObject);
    procedure createrect_fbks( var myrect1: TTmyrect; dataset_rect: Tcustomadodataset; grid_yzlr1: Tdbgrideh; x1, x2, x3: integer );
    procedure DBGridEh11ColWidthsChanged(Sender: TObject);
    procedure DBGridEh11DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure DBGridEh11Enter(Sender: TObject);
    procedure DBGridEh11Exit(Sender: TObject);
    procedure DBGridEh12ColWidthsChanged(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  rectno: integer;
  frm_yzqkcx: Tfrm_yzqkcx;
  myrect_cx, myrect_zx_cq, myrect_zx_ls: TTmyrect;
  procedure initarray( myrect: TTmyrect );
  function findinarray( myrect: TTmyrect; zd: string ): integer;

implementation

uses p_dm,p_func;

{$R *.dfm}

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

procedure Tfrm_yzqkcx.DateTimePicker1Change(Sender: TObject);
var i:Integer;
begin
  if PageControl1.ActivePageIndex=0 then
  begin
    sp_dryz_yzzx.close;
    sp_dryz_yzzx.Parameters.ParamByName('@zyh').value:=Trim(qry_cx_bqbr.FieldByName('zyh').asstring);
    sp_dryz_yzzx.Parameters.ParamByName('@zxsj').value:=formatdatetime('yyyymmdd',DateTimePicker1.Date);
    sp_dryz_yzzx.Parameters.ParamByName('@ksdm').value:=pub_ksdm;
    sp_dryz_yzzx.Open;
    ProXswzx;
    for I := 0 to 25 do
    begin
      DBGridEh2.Columns[i].Width:=DBGridEh4.Columns[i].Width;
    end;
    DBGridEh4.Columns[13].Width:=DBGridEh4.Columns[13].Width-1;
    DBGridEh4.Columns[13].Width:=DBGridEh4.Columns[13].Width+1;
  end
  else if PageControl1.ActivePageIndex=1 then
  begin
    sp_dryz_yzjf.close;
    sp_dryz_yzjf.Parameters.Refresh;
    sp_dryz_yzjf.Parameters.ParamByName('@zyh').value:=Trim(qry_cx_bqbr.FieldByName('zyh').asstring);
    sp_dryz_yzjf.Parameters.ParamByName('@zxsj').value:=formatdatetime('yyyymmdd',DateTimePicker1.Date);
    sp_dryz_yzjf.Parameters.ParamByName('@ksdm').value:=pub_ksdm;
    sp_dryz_yzjf.Open;
    sp_dryz_yzjf.Filter:='sfjf<>''已计费''';
    sp_dryz_yzjf.Filtered:=True;
    for I := 0 to 54 do
    begin
      DBGridEh5.Columns[i].Width:=DBGridEh3.Columns[i].Width;
    end;
      DBGridEh5.Columns[5].Width:=DBGridEh5.Columns[5].Width+1;
      DBGridEh5.Columns[5].Width:=DBGridEh5.Columns[5].Width-1;
  end
  else if PageControl1.ActivePageIndex=2 then
  begin
    sp_dryz_xz.Close;
    sp_dryz_xz.Parameters.ParamByName( '@zyh' ).Value := Trim(qry_cx_bqbr.FieldByName('zyh').asstring);
    sp_dryz_xz.Parameters.ParamByName( '@yzsx' ).Value := '全部';
    sp_dryz_xz.Open;
    sp_dryz_xz.Filter:='kdrq>='+''''+formatdatetime('yyyy-MM-dd',DateTimePicker1.DateTime)+''''+' and kdrq<'+''''+
    formatdatetime('yyyy-MM-dd',DateTimePicker1.DateTime+1)+'''';
    sp_dryz_xz.Filtered:=True;
    sp_dryz_xt.Close;
    sp_dryz_xt.Parameters.ParamByName( '@zyh' ).Value := Trim(qry_cx_bqbr.FieldByName('zyh').asstring);
    sp_dryz_xt.Parameters.ParamByName( '@yzsx' ).Value := '全部';
    sp_dryz_xt.Open;
    sp_dryz_xt.Filter:='tzrq>='+''''+formatdatetime('yyyy-MM-dd',DateTimePicker1.DateTime)+''''+' and tzrq<'+''''+
    formatdatetime('yyyy-MM-dd',DateTimePicker1.DateTime+1)+'''';
    sp_dryz_xt.Filtered:=True;
    qry_cx_yzxg.close;
    qry_cx_yzxg.SQL.text:='select * from zybl_zyyz_xgnr where zyh='+''''+qry_cx_bqbr.FieldByName('zyh').asstring+''''+
    ' and convert(varchar,xgsj,112)='+''''+formatdatetime('yyyyMMdd',DateTimePicker1.DateTime)+''''+' order by xgsj';
    qry_cx_yzxg.Open;
    DBGridEh6.Columns[5].Width:=DBGridEh6.Columns[5].Width+1;
    DBGridEh6.Columns[5].Width:=DBGridEh6.Columns[5].Width-1;
    DBGridEh7.Columns[5].Width:=DBGridEh7.Columns[5].Width+1;
    DBGridEh7.Columns[5].Width:=DBGridEh7.Columns[5].Width-1;
  end
  else
  begin
    sp_dryz.close;
    sp_dryz.Parameters.Refresh;
    sp_dryz.Parameters.ParamByName( '@zyh' ).value := qry_cx_bqbr.FieldByName( 'zyh' ).asstring;
    sp_dryz.Parameters.ParamByName( '@zxsj' ).value := formatdatetime( 'yyyymmdd', DateTimePicker1.Date );
    sp_dryz.Parameters.ParamByName( '@ksdm' ).value := pub_ksdm;
    sp_dryz.Parameters.ParamByName( '@sssbz' ).value := '';
    sp_dryz.Open;
    DBGridEh10.Columns[3].Width:=DBGridEh10.Columns[3].Width+1;
    DBGridEh10.Columns[3].Width:=DBGridEh10.Columns[3].Width-1;
    DBGridEh10.Columns[4].Width:=DBGridEh10.Columns[4].Width+1;
    DBGridEh10.Columns[4].Width:=DBGridEh10.Columns[4].Width-1;
  end;
end;

procedure Tfrm_yzqkcx.DBGridEh10ColWidthsChanged(Sender: TObject);
var i:Integer;
begin
    for I := 0 to DBGridEh10.Columns.Count - 1 do
    begin
      DBGridEh9.Columns[i].Width := DBGridEh10.Columns[i].Width;
    end;
end;

procedure Tfrm_yzqkcx.DBGridEh11ColWidthsChanged(Sender: TObject);
begin
  if qry_qbwjf.Active then
    createrect1( myrect_cx, qry_qbwjf, dbgrideh11, 12, 13, 15 );
end;

procedure Tfrm_yzqkcx.DBGridEh11DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
      var i:integer;
  myrect1:Trect;
begin
 if qry_qbwjf.fieldbyname('drzx').asinteger=1  then
    DBGridEh11.Canvas.Brush.Color := clSkyBlue;

  if trim(qry_qbwjf.fieldbyname('yzsx').asstring) = '临时' then
  begin
    DBGridEh11.Canvas.Brush.Color := clwhite;
    DBGridEh11.Canvas.Font.Color := clGreen;
  end;

    if trim(qry_qbwjf.fieldbyname('fzph').asstring)<>'' then
   begin
     DBGridEh11.canvas.brush.color := $00E2BC6D;
     i:= findinarray(myrect_cx,qry_qbwjf.fieldbyname('fzph').asstring);
     DBGridEh11.Canvas.pen.color:=$00E2BC6D;
     DBGridEh11.Canvas.MoveTo(myrect_cx[i].left+20,myrect_cx[i].top);
     DBGridEh11.Canvas.LineTo(myrect_cx[i].left,myrect_cx[i].Bottom);
     DBGridEh11.canvas.Rectangle(myrect_cx[i].left,myrect_cx[i].top,myrect_cx[i].right,myrect_cx[i].bottom);
     DBGridEh11.Canvas.pen.color:=clred;
     DBGridEh11.Canvas.MoveTo(myrect_cx[i].left+20,myrect_cx[i].top);
     DBGridEh11.Canvas.LineTo(myrect_cx[i].left,myrect_cx[i].Bottom);
     with DBGridEh11.Canvas do
      begin
        moveto(myrect_cx[I].gleft,myrect_cx[i].Gtop);
        lineto(myrect_cx[I].gright,myrect_cx[I].gtop);
        lineto(myrect_cx[I].gright,myrect_cx[I].gbottom);
        lineto(myrect_cx[I].gleft,myrect_cx[I].gbottom);
        lineto(myrect_cx[I].gleft,myrect_cx[i].Gtop);
      end;
     myrect1.Left:=myrect_cx[i].left;
     myrect1.top:=myrect_cx[i].top;
     myrect1.right:=myrect_cx[i].right;
     myrect1.bottom:=myrect_cx[i].bottom;
     DBGridEh11.Canvas.TextOut(myrect_cx[i].left+20,
     myrect_cx[i].top+round(myrect_cx[i].height*((myrect_cx[i].sl-0.5)/2)),myrect_cx[i].tj+#13+myrect_cx[i].yf);
   end;


    (Sender as TDbGridEh).DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure Tfrm_yzqkcx.DBGridEh11Enter(Sender: TObject);
begin
Application.OnMessage := OnMouseWheel_yzjf;
end;

procedure Tfrm_yzqkcx.DBGridEh11Exit(Sender: TObject);
begin
 Application.OnMessage := nil;
end;

procedure Tfrm_yzqkcx.DBGridEh12ColWidthsChanged(Sender: TObject);
var i:Integer;
begin
     for I := 0 to DBGridEh12.Columns.Count - 1 do
     begin
        DBGridEh11.Columns[i].Width := DBGridEh12.Columns[i].Width;
     end;
end;

procedure Tfrm_yzqkcx.DBGridEh1CellClick(Column: TColumnEh);
var i:Integer;
begin
  if PageControl1.ActivePageIndex=0 then
  begin
    sp_dryz_yzzx.close;
    sp_dryz_yzzx.Parameters.ParamByName('@zyh').value:=Trim(qry_cx_bqbr.FieldByName('zyh').asstring);
    sp_dryz_yzzx.Parameters.ParamByName('@zxsj').value:=formatdatetime('yyyymmdd',DateTimePicker1.Date);
    sp_dryz_yzzx.Parameters.ParamByName('@ksdm').value:=pub_ksdm;
    sp_dryz_yzzx.Open;
    ProXswzx;
    for I := 0 to 25 do
    begin
      DBGridEh2.Columns[i].Width:=DBGridEh4.Columns[i].Width;
    end;
    DBGridEh4.Columns[13].Width:=DBGridEh4.Columns[13].Width-1;
    DBGridEh4.Columns[13].Width:=DBGridEh4.Columns[13].Width+1;
  end
  else if PageControl1.ActivePageIndex=1 then
  begin
    sp_dryz_yzjf.close;
    sp_dryz_yzjf.Parameters.Refresh;
    sp_dryz_yzjf.Parameters.ParamByName('@zyh').value:=Trim(qry_cx_bqbr.FieldByName('zyh').asstring);
    sp_dryz_yzjf.Parameters.ParamByName('@zxsj').value:=formatdatetime('yyyymmdd',DateTimePicker1.Date);
    sp_dryz_yzjf.Parameters.ParamByName('@ksdm').value:=pub_ksdm;
    sp_dryz_yzjf.Open;
    sp_dryz_yzjf.Filter:='sfjf<>''已计费''';
    sp_dryz_yzjf.Filtered:=True;
    for I := 0 to 54 do
    begin
      DBGridEh5.Columns[i].Width:=DBGridEh3.Columns[i].Width;
    end;
      DBGridEh5.Columns[5].Width:=DBGridEh5.Columns[5].Width+1;
      DBGridEh5.Columns[5].Width:=DBGridEh5.Columns[5].Width-1;
  end
  else if PageControl1.ActivePageIndex=2 then
  begin
    sp_dryz_xz.Close;
    sp_dryz_xz.Parameters.ParamByName( '@zyh' ).Value := Trim(qry_cx_bqbr.FieldByName('zyh').asstring);
    sp_dryz_xz.Parameters.ParamByName( '@yzsx' ).Value := '全部';
    sp_dryz_xz.Open;
    sp_dryz_xz.Filter:='kdrq>='+''''+formatdatetime('yyyy-MM-dd',DateTimePicker1.DateTime)+''''+' and kdrq<'+''''+
    formatdatetime('yyyy-MM-dd',DateTimePicker1.DateTime+1)+'''';
    sp_dryz_xz.Filtered:=True;
    sp_dryz_xt.Close;
    sp_dryz_xt.Parameters.ParamByName( '@zyh' ).Value := Trim(qry_cx_bqbr.FieldByName('zyh').asstring);
    sp_dryz_xt.Parameters.ParamByName( '@yzsx' ).Value := '全部';
    sp_dryz_xt.Open;
    sp_dryz_xt.Filter:='tzrq>='+''''+formatdatetime('yyyy-MM-dd',DateTimePicker1.DateTime)+''''+' and tzrq<'+''''+
    formatdatetime('yyyy-MM-dd',DateTimePicker1.DateTime+1)+'''';
    sp_dryz_xt.Filtered:=True;
    qry_cx_yzxg.close;
    qry_cx_yzxg.SQL.text:='select * from zybl_zyyz_xgnr where zyh='+''''+qry_cx_bqbr.FieldByName('zyh').asstring+''''+
    ' and convert(varchar,xgsj,112)='+''''+formatdatetime('yyyyMMdd',DateTimePicker1.DateTime)+''''+' order by xgsj';
    qry_cx_yzxg.Open;
    DBGridEh6.Columns[5].Width:=DBGridEh6.Columns[5].Width+1;
    DBGridEh6.Columns[5].Width:=DBGridEh6.Columns[5].Width-1;
    DBGridEh7.Columns[5].Width:=DBGridEh7.Columns[5].Width+1;
    DBGridEh7.Columns[5].Width:=DBGridEh7.Columns[5].Width-1;
  end
  else if PageControl1.ActivePageIndex=3 then
  begin
    sp_dryz.close;
    sp_dryz.Parameters.Refresh;
    sp_dryz.Parameters.ParamByName( '@zyh' ).value := qry_cx_bqbr.FieldByName( 'zyh' ).asstring;
    sp_dryz.Parameters.ParamByName( '@zxsj' ).value := formatdatetime( 'yyyymmdd', DateTimePicker1.Date );
    sp_dryz.Parameters.ParamByName( '@ksdm' ).value := pub_ksdm;
    sp_dryz.Parameters.ParamByName( '@sssbz' ).value := '';
    sp_dryz.Open;
    DBGridEh10.Columns[3].Width:=DBGridEh10.Columns[3].Width+1;
    DBGridEh10.Columns[3].Width:=DBGridEh10.Columns[3].Width-1;
    DBGridEh10.Columns[4].Width:=DBGridEh10.Columns[4].Width+1;
    DBGridEh10.Columns[4].Width:=DBGridEh10.Columns[4].Width-1;
  end
  else if PageControl1.ActivePageIndex=4 then
  begin
   qry_qbwjf.Close;
   qry_qbwjf.sql.clear;
   qry_qbwjf.SQL.Add('select * from zysf_qbwjf where zyh=:zyh');
   qry_qbwjf.Parameters.ParamByName('zyh').Value:=qry_cx_bqbr.FieldByName( 'zyh' ).asstring;
   qry_qbwjf.Open;
    for I := 0 to 54 do
    begin
      DBGridEh12.Columns[i].Width:=DBGridEh11.Columns[i].Width;
    end;
      DBGridEh12.Columns[5].Width:=DBGridEh12.Columns[5].Width+1;
      DBGridEh12.Columns[5].Width:=DBGridEh12.Columns[5].Width-1;
  end;
end;

procedure Tfrm_yzqkcx.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if ( Trim( qry_cx_bqbr.FieldByName( 'xyzbz' ).asstring ) = '新医嘱' ) then
    DBGridEh1.Canvas.Font.Color := clred;
  ( Sender as TDbGridEh ).DefaultDrawColumnCell( Rect, DataCol, Column, State );
end;

procedure Tfrm_yzqkcx.DBGridEh2ColWidthsChanged(Sender: TObject);
var i:Integer;
begin
    for I := 0 to DBGridEh2.Columns.Count - 1 do
    begin
      DBGridEh4.Columns[i].Width := DBGridEh2.Columns[i].Width;
    end;
end;

procedure Tfrm_yzqkcx.DBGridEh3ColWidthsChanged(Sender: TObject);
begin
  if sp_dryz_yzjf.Active then
    createrect1( myrect_cx, sp_dryz_yzjf, dbgrideh3, 12, 13, 15 );
end;

procedure Tfrm_yzqkcx.DBGridEh3DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
    var i:integer;
  myrect1:Trect;
begin
 if sP_dryz_yzjf.fieldbyname('drzx').asinteger=1  then
    DBGridEh3.Canvas.Brush.Color := clSkyBlue;

  if trim(sP_dryz_yzjf.fieldbyname('yzsx').asstring) = '临时' then
  begin
    DBGridEh3.Canvas.Brush.Color := clwhite;
    DBGridEh3.Canvas.Font.Color := clGreen;
  end;

    if trim(sP_dryz_yzjf.fieldbyname('fzph').asstring)<>'' then
   begin
     DBGridEh3.canvas.brush.color := $00E2BC6D;
     i:= findinarray(myrect_cx,sP_dryz_yzjf.fieldbyname('fzph').asstring);
     DBGridEh3.Canvas.pen.color:=$00E2BC6D;
     DBGridEh3.Canvas.MoveTo(myrect_cx[i].left+20,myrect_cx[i].top);
     DBGridEh3.Canvas.LineTo(myrect_cx[i].left,myrect_cx[i].Bottom);
     DBGridEh3.canvas.Rectangle(myrect_cx[i].left,myrect_cx[i].top,myrect_cx[i].right,myrect_cx[i].bottom);
     DBGridEh3.Canvas.pen.color:=clred;
     DBGridEh3.Canvas.MoveTo(myrect_cx[i].left+20,myrect_cx[i].top);
     DBGridEh3.Canvas.LineTo(myrect_cx[i].left,myrect_cx[i].Bottom);
     with DBGridEh3.Canvas do
      begin
        moveto(myrect_cx[I].gleft,myrect_cx[i].Gtop);
        lineto(myrect_cx[I].gright,myrect_cx[I].gtop);
        lineto(myrect_cx[I].gright,myrect_cx[I].gbottom);
        lineto(myrect_cx[I].gleft,myrect_cx[I].gbottom);
        lineto(myrect_cx[I].gleft,myrect_cx[i].Gtop);
      end;
     myrect1.Left:=myrect_cx[i].left;
     myrect1.top:=myrect_cx[i].top;
     myrect1.right:=myrect_cx[i].right;
     myrect1.bottom:=myrect_cx[i].bottom;
     DBGridEh3.Canvas.TextOut(myrect_cx[i].left+20,
     myrect_cx[i].top+round(myrect_cx[i].height*((myrect_cx[i].sl-0.5)/2)),myrect_cx[i].tj+#13+myrect_cx[i].yf);
   end;


    (Sender as TDbGridEh).DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure Tfrm_yzqkcx.DBGridEh3Enter(Sender: TObject);
begin
   Application.OnMessage := OnMouseWheel_yzjf;
end;

procedure Tfrm_yzqkcx.DBGridEh3Exit(Sender: TObject);
begin
  Application.OnMessage := nil;
end;

procedure Tfrm_yzqkcx.DBGridEh4ColWidthsChanged(Sender: TObject);
begin
  if sp_dryz_yzzx.Active then
    createrect( myrect_cx, sp_dryz_yzzx, dbgrideh4, 12, 13, 15 );
end;

procedure Tfrm_yzqkcx.DBGridEh4DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
var
  i: integer;
  myrect1: Trect;
begin

  if trim( sp_dryz_yzzx.fieldbyname( 'yzsx' ).asstring ) = '临时' then
  begin
    DBGridEh4.Canvas.Brush.Color := clwhite;
    DBGridEh4.Canvas.Font.Color := clGreen;
  end;

  if trim( sp_dryz_yzzx.fieldbyname( 'fzph' ).asstring ) <> '' then
  begin
    DBGridEh4.canvas.brush.color := $00E2BC6D;
    i := findinarray( myrect_cx, sp_dryz_yzzx.fieldbyname( 'fzph' ).asstring );
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

  if trim( sp_dryz_yzzx.FieldByName( 'syczxsj' ).asstring ) <> '' then
    DBGridEh4.canvas.brush.color := $00E2BC9D;
  if ( Trim( sp_dryz_yzzx.FieldByName( 'sftz' ).asstring ) = '已停止' ) and ( sp_dryz_yzzx.FieldByName( 'tzzxsj' ).AsDateTime >= sp_dryz_yzzx.FieldByName( 'tzrq' ).AsDateTime ) and ( trim( sp_dryz_yzzx.FieldByName( 'yzsx' ).asstring ) <> '临时' ) then
    DBGridEh4.Canvas.Font.Color := clred;
  if (( Pos( '皮试', trim( sp_dryz_yzzx.FieldByName( 'xmmc' ).AsString ) ) > 0 )
     or ( Pos( '敏试', trim( sp_dryz_yzzx.FieldByName( 'xmmc' ).AsString ) ) > 0 )) and ( ( Pos( '+', trim( sp_dryz_yzzx.FieldByName( 'xmmc' ).AsString ) ) > 0 ) or ( Pos( '阳', trim( sp_dryz_yzzx.FieldByName( 'xmmc' ).AsString ) ) > 0 ) ) then
  begin
    DBGridEh4.Canvas.Brush.Color := clRed;
    DBGridEh4.Canvas.Font.Color := clBlack;
  end;

  if ( Pos( '术后医嘱', trim( sp_dryz_yzzx.FieldByName( 'xmmc' ).AsString ) ) > 0 ) or
     ( Pos( '产后医嘱', trim( sp_dryz_yzzx.FieldByName( 'xmmc' ).AsString ) ) > 0 ) or
     ( Pos( '转入医嘱', trim( sp_dryz_yzzx.FieldByName( 'xmmc' ).AsString ) ) > 0 ) then
  begin
    DBGridEh4.Canvas.Brush.Color := clFuchsia;
    DBGridEh4.Canvas.Font.Color := clBlack;
  end;
  if (pub_yydm='0013') or  (pub_yydm='0019')  then
  begin
    if sp_dryz_yzzx.FieldByName( 'jsbz' ).AsBoolean=True then
    begin
      DBGridEh4.Canvas.Font.Color := clblue;
    end;
  end;

  ( Sender as TDbGridEh ).DefaultDrawColumnCell( Rect, DataCol, Column, State );
end;

procedure Tfrm_yzqkcx.DBGridEh4Enter(Sender: TObject);
begin
   Application.OnMessage := OnMouseWheel_yzzx;
end;

procedure Tfrm_yzqkcx.DBGridEh4Exit(Sender: TObject);
begin
   Application.OnMessage := nil;
end;

procedure Tfrm_yzqkcx.DBGridEh5ColWidthsChanged(Sender: TObject);
var i:Integer;
begin

     for I := 0 to DBGridEh5.Columns.Count - 1 do
     begin
        DBGridEh3.Columns[i].Width := DBGridEh5.Columns[i].Width;
     end;

end;

procedure Tfrm_yzqkcx.DBGridEh6ColWidthsChanged(Sender: TObject);
begin
  if sp_dryz_xz.Active then
  begin
    if sp_dryz_xz.RecordCount<500 then
    begin
      createrect( myrect_cx, sp_dryz_xz, dbgrideh6, 10, 11, 16 );
    end;
  end;
end;

procedure Tfrm_yzqkcx.DBGridEh6DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
var
  i: integer;
  myrect1: Trect;

begin
if sP_dryz_xz.RecordCount<500 then
begin
try
  if not sP_dryz_xz.fieldbyname( 'zxbz' ).asboolean then
    DBGridEh6.Canvas.Brush.Color := clSkyBlue;
  if trim( sP_dryz_xz.fieldbyname( 'tzfs' ).asstring ) = '修改' then
  begin
    DBGridEh6.Canvas.Font.Color := clBlue;
  end;

  if ( sP_dryz_xz.fieldbyname( 'tzbz' ).AsBoolean = true ) then
  begin
    if ( pos( '计划', trim( sP_dryz_xz.fieldbyname( 'tzfs' ).asstring ) ) <= 0 ) then
      DBGridEh6.Canvas.Font.Color := $004F1DD3;
  end;

  if (( Pos( '皮试', trim( sP_dryz_xz.FieldByName( 'xmmc' ).AsString ) ) > 0 )
    or ( Pos( '敏试', trim( sP_dryz_xz.FieldByName( 'xmmc' ).AsString ) ) > 0 )) and ( ( Pos( '+', trim( sP_dryz_xz.FieldByName( 'xmmc' ).AsString ) ) > 0 ) or ( Pos( '阳', trim( sP_dryz_xz.FieldByName( 'xmmc' ).AsString ) ) > 0 ) ) then
  begin
    DBGridEh6.Canvas.Brush.Color := clRed;
    DBGridEh6.Canvas.Font.Color := clBlack;
  end;

  if trim( sP_dryz_xz.fieldbyname( 'fzph' ).asstring ) <> '' then
  begin
    DBGridEh6.canvas.brush.color := $00E2BC6D;
    i := findinarray( myrect_cx, sP_dryz_xz.fieldbyname( 'fzph' ).asstring );
    DBGridEh6.Canvas.pen.color := $00E2BC6D;
    DBGridEh6.Canvas.MoveTo( myrect_cx[i].left + 20, myrect_cx[i].top );
    DBGridEh6.Canvas.LineTo( myrect_cx[i].left, myrect_cx[i].Bottom );
    DBGridEh6.canvas.Rectangle( myrect_cx[i].left, myrect_cx[i].top, myrect_cx[i].right, myrect_cx[i].bottom );
    DBGridEh6.Canvas.pen.color := clred;
    DBGridEh6.Canvas.MoveTo( myrect_cx[i].left + 20, myrect_cx[i].top );
    DBGridEh6.Canvas.LineTo( myrect_cx[i].left, myrect_cx[i].Bottom );
    with DBGridEh6.Canvas do
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
    DBGridEh6.Canvas.TextOut( myrect_cx[i].left + 20,
      myrect_cx[i].top + round( myrect_cx[i].height * ( ( myrect_cx[i].sl - 0.5 ) / 2 ) ), myrect_cx[i].tj + #13 + myrect_cx[i].yf );
  end;

  ( Sender as TDbGridEh ).DefaultDrawColumnCell( Rect, DataCol, Column, State );
except

end;
end;

end;

procedure Tfrm_yzqkcx.DBGridEh6Enter(Sender: TObject);
begin
  Application.OnMessage := OnMouseWheel_yzxz;
end;

procedure Tfrm_yzqkcx.DBGridEh6Exit(Sender: TObject);
begin
  Application.OnMessage :=nil;
end;

procedure Tfrm_yzqkcx.DBGridEh7ColWidthsChanged(Sender: TObject);
begin
  if sp_dryz_xt.Active then
  begin
    if sp_dryz_xt.RecordCount<500 then
    begin
      createrect( myrect_cx, sp_dryz_xt, dbgrideh7, 10, 11, 16 );
    end;
  end;
end;

procedure Tfrm_yzqkcx.DBGridEh7DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
var
  i: integer;
  myrect1: Trect;

begin
if sP_dryz_xt.RecordCount<500 then
begin
try
  if not sP_dryz_xt.fieldbyname( 'zxbz' ).asboolean then
    DBGridEh7.Canvas.Brush.Color := clSkyBlue;
  if trim( sP_dryz_xt.fieldbyname( 'tzfs' ).asstring ) = '修改' then
  begin
    DBGridEh7.Canvas.Font.Color := clBlue;
  end;

  if ( sP_dryz_xt.fieldbyname( 'tzbz' ).AsBoolean = true ) then
  begin
    if ( pos( '计划', trim( sP_dryz_xt.fieldbyname( 'tzfs' ).asstring ) ) <= 0 ) then
      DBGridEh7.Canvas.Font.Color := $004F1DD3;
  end;

  if (( Pos( '皮试', trim( sP_dryz_xt.FieldByName( 'xmmc' ).AsString ) ) > 0 )
     or ( Pos( '敏试', trim( sP_dryz_xt.FieldByName( 'xmmc' ).AsString ) ) > 0 )) and ( ( Pos( '+', trim( sP_dryz_xt.FieldByName( 'xmmc' ).AsString ) ) > 0 ) or ( Pos( '阳', trim( sP_dryz_xt.FieldByName( 'xmmc' ).AsString ) ) > 0 ) ) then
  begin
    DBGridEh7.Canvas.Brush.Color := clRed;
    DBGridEh7.Canvas.Font.Color := clBlack;
  end;

  if trim( sP_dryz_xt.fieldbyname( 'fzph' ).asstring ) <> '' then
  begin
    DBGridEh7.canvas.brush.color := $00E2BC6D;
    i := findinarray( myrect_cx, sP_dryz_xt.fieldbyname( 'fzph' ).asstring );
    DBGridEh7.Canvas.pen.color := $00E2BC6D;
    DBGridEh7.Canvas.MoveTo( myrect_cx[i].left + 20, myrect_cx[i].top );
    DBGridEh7.Canvas.LineTo( myrect_cx[i].left, myrect_cx[i].Bottom );
    DBGridEh7.canvas.Rectangle( myrect_cx[i].left, myrect_cx[i].top, myrect_cx[i].right, myrect_cx[i].bottom );
    DBGridEh7.Canvas.pen.color := clred;
    DBGridEh7.Canvas.MoveTo( myrect_cx[i].left + 20, myrect_cx[i].top );
    DBGridEh7.Canvas.LineTo( myrect_cx[i].left, myrect_cx[i].Bottom );
    with DBGridEh7.Canvas do
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
    DBGridEh7.Canvas.TextOut( myrect_cx[i].left + 20,
      myrect_cx[i].top + round( myrect_cx[i].height * ( ( myrect_cx[i].sl - 0.5 ) / 2 ) ), myrect_cx[i].tj + #13 + myrect_cx[i].yf );
  end;

  ( Sender as TDbGridEh ).DefaultDrawColumnCell( Rect, DataCol, Column, State );
except

end;
end;

end;

procedure Tfrm_yzqkcx.DBGridEh7Enter(Sender: TObject);
begin
  Application.OnMessage := OnMouseWheel_yzxt;
end;

procedure Tfrm_yzqkcx.DBGridEh7Exit(Sender: TObject);
begin
  Application.OnMessage:=nil;
end;

procedure Tfrm_yzqkcx.DBGridEh9ColWidthsChanged(Sender: TObject);
begin
  if sp_dryz.Active then
    createrect_fbks( myrect_cx, sp_dryz, dbgrideh9, 12, 13, 16 );
end;

procedure Tfrm_yzqkcx.DBGridEh9DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
var
  i: integer;
  myrect1: Trect;
begin

  if trim( sp_dryz.fieldbyname( 'yzsx' ).asstring ) = '临时' then
  begin
    DBGridEh9.Canvas.Brush.Color := clwhite;
    DBGridEh9.Canvas.Font.Color := clGreen;
  end;

  if trim( sp_dryz.fieldbyname( 'fzph' ).asstring ) <> '' then
  begin
    DBGridEh9.canvas.brush.color := $00E2BC6D;
    i := findinarray( myrect_cx, sp_dryz.fieldbyname( 'fzph' ).asstring );
    DBGridEh9.Canvas.pen.color := $00E2BC6D;
    DBGridEh9.Canvas.MoveTo( myrect_cx[i].left + 20, myrect_cx[i].top );
    DBGridEh9.Canvas.LineTo( myrect_cx[i].left, myrect_cx[i].Bottom );
    DBGridEh9.canvas.Rectangle( myrect_cx[i].left, myrect_cx[i].top, myrect_cx[i].right, myrect_cx[i].bottom );
    DBGridEh9.Canvas.pen.color := clred;
    DBGridEh9.Canvas.MoveTo( myrect_cx[i].left + 20, myrect_cx[i].top );
    DBGridEh9.Canvas.LineTo( myrect_cx[i].left, myrect_cx[i].Bottom );
    with DBGridEh9.Canvas do
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
    DBGridEh9.Canvas.TextOut( myrect_cx[i].left + 20,
      myrect_cx[i].top + round( myrect_cx[i].height * ( ( myrect_cx[i].sl - 0.5 ) / 2 ) ), myrect_cx[i].tj + #13 + myrect_cx[i].yf );
  end;
  //  if FormatDateTime( 'yyyyMMdd', sp_dryz.FieldByName( 'zhzxsj' ).AsDateTime ) = FormatDateTime( 'yyyyMMdd', Now ) then
  //    DBGridEh4.canvas.brush.color := $00E2BC6D;

  if trim( sp_dryz.FieldByName( 'syczxsj' ).asstring ) <> '' then
    DBGridEh9.canvas.brush.color := $00E2BC9D;
  if ( Trim( sp_dryz.FieldByName( 'sftz' ).asstring ) = '已停止' ) and ( sp_dryz.FieldByName( 'tzzxsj' ).AsDateTime >= sp_dryz.FieldByName( 'tzrq' ).AsDateTime ) and ( trim( sp_dryz.FieldByName( 'yzsx' ).asstring ) <> '临时' ) then
    DBGridEh9.Canvas.Font.Color := clred;
  if (( Pos( '皮试', trim( sp_dryz.FieldByName( 'xmmc' ).AsString ) ) > 0 ) or
     ( Pos( '敏试', trim( sp_dryz.FieldByName( 'xmmc' ).AsString ) ) > 0 ))
   and ( ( Pos( '+', trim( sp_dryz.FieldByName( 'xmmc' ).AsString ) ) > 0 ) or ( Pos( '阳', trim( sp_dryz.FieldByName( 'xmmc' ).AsString ) ) > 0 ) ) then
  begin
    DBGridEh9.Canvas.Brush.Color := clRed;
    DBGridEh9.Canvas.Font.Color := clBlack;
  end;

  if ( Pos( '术后医嘱', trim( sp_dryz.FieldByName( 'xmmc' ).AsString ) ) > 0 ) or
     ( Pos( '产后医嘱', trim( sp_dryz.FieldByName( 'xmmc' ).AsString ) ) > 0 ) or
     ( Pos( '转入医嘱', trim( sp_dryz.FieldByName( 'xmmc' ).AsString ) ) > 0 ) then
  begin
    DBGridEh9.Canvas.Brush.Color := clFuchsia;
    DBGridEh9.Canvas.Font.Color := clBlack;
  end;
  if (pub_yydm='0013') or  (pub_yydm='0019')  then
  begin
    if sp_dryz.FieldByName( 'jsbz' ).AsBoolean=True then
    begin
      DBGridEh9.Canvas.Font.Color := clblue;
    end;
  end;

  ( Sender as TDbGridEh ).DefaultDrawColumnCell( Rect, DataCol, Column, State );

end;

procedure Tfrm_yzqkcx.DBGridEh9Enter(Sender: TObject);
begin
  Application.OnMessage := OnMouseWheel_qtksyzzx;
end;

procedure Tfrm_yzqkcx.DBGridEh9Exit(Sender: TObject);
begin
  Application.OnMessage := nil;
end;

procedure Tfrm_yzqkcx.FormShow(Sender: TObject);
var I:Integer;
begin
  DateTimePicker1.DateTime:=Frm_func.curr_date;
  qry_cx_bqbr.close;
  qry_cx_bqbr.SQL.Text:='select a.*,c.mc ksmc,d.xyzbz,b.yybch from zysf_zydj a,sys_kscwsz b,sys_ksdm c,(select distinct zyh,''新医嘱'' xyzbz from zybl_zyyz'+
  ' where kdks in (select bqzydm from sys_bqzyfl where bqdm='+''''+pub_bqdm+''''+') and kdrq<getdate() and zxbz=1 and xyzbz=0 and ((yzsx=''临时'' and tzbz<>1 and Isnull(shry,'''') <> ''未用''  ) or (yzsx=''长期''))) d where a.zyh =b.zyh and (b.bqdm='+''''+
  pub_bqdm+''''+' or a.zyh in (select zyh from sys_brzkxx s,sys_bqzyfl m where s.ksdm=m.bqzydm and m.bqdm='+''''+pub_bqdm+''''+')) and a.cybz=0 and a.jsbz=0 and b.ksdm=c.dm and a.zyh*=d.zyh  order by b.ksdm,b.plcx';
  qry_cx_bqbr.Open;
  qry_cx_bqbr.First;
  sp_dryz_yzzx.close;
  sp_dryz_yzzx.Parameters.ParamByName('@zyh').value:=Trim(qry_cx_bqbr.FieldByName('zyh').asstring);
  sp_dryz_yzzx.Parameters.ParamByName('@zxsj').value:=formatdatetime('yyyymmdd',DateTimePicker1.Date);
  sp_dryz_yzzx.Parameters.ParamByName('@ksdm').value:=pub_ksdm;
  sp_dryz_yzzx.Open;
  ProXswzx;
  for I := 0 to 25 do
  begin
    DBGridEh2.Columns[i].Width:=DBGridEh4.Columns[i].Width;
  end;
  DBGridEh4.Columns[13].Width:=DBGridEh4.Columns[13].Width-1;
  DBGridEh4.Columns[13].Width:=DBGridEh4.Columns[13].Width+1;
end;

procedure Tfrm_yzqkcx.PageControl1Change(Sender: TObject);
var i:Integer;
begin
  if PageControl1.ActivePageIndex=0 then
  begin
    sp_dryz_yzzx.close;
    sp_dryz_yzzx.Parameters.ParamByName('@zyh').value:=Trim(qry_cx_bqbr.FieldByName('zyh').asstring);
    sp_dryz_yzzx.Parameters.ParamByName('@zxsj').value:=formatdatetime('yyyymmdd',DateTimePicker1.Date);
    sp_dryz_yzzx.Parameters.ParamByName('@ksdm').value:=pub_ksdm;
    sp_dryz_yzzx.Open;
    ProXswzx;
    for I := 0 to 25 do
    begin
      DBGridEh2.Columns[i].Width:=DBGridEh4.Columns[i].Width;
    end;
    DBGridEh4.Columns[13].Width:=DBGridEh4.Columns[13].Width-1;
    DBGridEh4.Columns[13].Width:=DBGridEh4.Columns[13].Width+1;
  end
  else if PageControl1.ActivePageIndex=1 then
  begin
    sp_dryz_yzjf.close;
    sp_dryz_yzjf.Parameters.Refresh;
    sp_dryz_yzjf.Parameters.ParamByName('@zyh').value:=Trim(qry_cx_bqbr.FieldByName('zyh').asstring);
    sp_dryz_yzjf.Parameters.ParamByName('@zxsj').value:=formatdatetime('yyyymmdd',DateTimePicker1.Date);
    sp_dryz_yzjf.Parameters.ParamByName('@ksdm').value:=pub_ksdm;
    if pub_yydm=HN_SYRMYY then
      sp_dryz_yzjf.Parameters.ParamByName('@onlyToday').value:=False;
    sp_dryz_yzjf.Open;
    sp_dryz_yzjf.Filter:='sfjf<>''已计费''';
    sp_dryz_yzjf.Filtered:=True;
    for I := 0 to 54 do
    begin
      DBGridEh5.Columns[i].Width:=DBGridEh3.Columns[i].Width;
    end;
      DBGridEh5.Columns[5].Width:=DBGridEh5.Columns[5].Width+1;
      DBGridEh5.Columns[5].Width:=DBGridEh5.Columns[5].Width-1;
  end
  else if PageControl1.ActivePageIndex=2 then
  begin
    sp_dryz_xz.Close;
    sp_dryz_xz.Parameters.ParamByName( '@zyh' ).Value := Trim(qry_cx_bqbr.FieldByName('zyh').asstring);
    sp_dryz_xz.Parameters.ParamByName( '@yzsx' ).Value := '全部';
    sp_dryz_xz.Parameters.ParamByName( '@vkdks' ).Value := pub_ksdm;
    sp_dryz_xz.Open;
    sp_dryz_xz.Filter:='kdrq>='+''''+formatdatetime('yyyy-MM-dd',DateTimePicker1.DateTime)+''''+' and kdrq<'+''''+
    formatdatetime('yyyy-MM-dd',DateTimePicker1.DateTime+1)+'''';
    sp_dryz_xz.Filtered:=True;
    sp_dryz_xt.Close;
    sp_dryz_xt.Parameters.ParamByName( '@zyh' ).Value := Trim(qry_cx_bqbr.FieldByName('zyh').asstring);
    sp_dryz_xt.Parameters.ParamByName( '@yzsx' ).Value := '全部';
    sp_dryz_xz.Parameters.ParamByName( '@vkdks' ).Value := pub_ksdm;
    sp_dryz_xt.Open;
    sp_dryz_xt.Filter:='tzrq>='+''''+formatdatetime('yyyy-MM-dd',DateTimePicker1.DateTime)+''''+' and tzrq<'+''''+
    formatdatetime('yyyy-MM-dd',DateTimePicker1.DateTime+1)+'''';
    sp_dryz_xt.Filtered:=True;
    qry_cx_yzxg.close;
    qry_cx_yzxg.SQL.text:='select * from zybl_zyyz_xgnr where zyh='+''''+qry_cx_bqbr.FieldByName('zyh').asstring+''''+
    ' and convert(varchar,xgsj,112)='+''''+formatdatetime('yyyyMMdd',DateTimePicker1.DateTime)+''''+' order by xgsj';
    qry_cx_yzxg.Open;
    DBGridEh6.Columns[5].Width:=DBGridEh6.Columns[5].Width+1;
    DBGridEh6.Columns[5].Width:=DBGridEh6.Columns[5].Width-1;
    DBGridEh7.Columns[5].Width:=DBGridEh7.Columns[5].Width+1;
    DBGridEh7.Columns[5].Width:=DBGridEh7.Columns[5].Width-1;
  end
  else if PageControl1.ActivePageIndex=3 then
  begin
    sp_dryz.close;
    sp_dryz.Parameters.Refresh;
    sp_dryz.Parameters.ParamByName( '@zyh' ).value := qry_cx_bqbr.FieldByName( 'zyh' ).asstring;
    sp_dryz.Parameters.ParamByName( '@zxsj' ).value := formatdatetime( 'yyyymmdd', DateTimePicker1.Date );
    sp_dryz.Parameters.ParamByName( '@ksdm' ).value := pub_ksdm;
    sp_dryz.Parameters.ParamByName( '@sssbz' ).value := '';
    sp_dryz.Open;
    DBGridEh10.Columns[3].Width:=DBGridEh10.Columns[3].Width+1;
    DBGridEh10.Columns[3].Width:=DBGridEh10.Columns[3].Width-1;
    DBGridEh10.Columns[4].Width:=DBGridEh10.Columns[4].Width+1;
    DBGridEh10.Columns[4].Width:=DBGridEh10.Columns[4].Width-1;
  end
  else if PageControl1.ActivePageIndex=4 then
  begin
   qry_qbwjf.Close;
   qry_qbwjf.sql.clear;
   qry_qbwjf.SQL.Add('select * from zysf_qbwjf where zyh=:zyh');
   qry_qbwjf.Parameters.ParamByName('zyh').Value:=qry_cx_bqbr.FieldByName( 'zyh' ).asstring;
   qry_qbwjf.Open;
    for I := 0 to 54 do
    begin
      DBGridEh12.Columns[i].Width:=DBGridEh11.Columns[i].Width;
    end;
      DBGridEh12.Columns[5].Width:=DBGridEh12.Columns[5].Width+1;
      DBGridEh12.Columns[5].Width:=DBGridEh12.Columns[5].Width-1;
  end;

end;

procedure Tfrm_yzqkcx.ProXswzx;
var _filter:string;
begin
  if sp_dryz_yzzx.Active then
  begin
    _filter := '';
    _filter := '((syczxsj = null)';
    _filter :=_filter + ' and (sftz<>' + '''' + '已取消' + '''';
    _filter :=_filter + ') and (sftz<>' + '''' + '未用' + '''';
    _filter := _filter + ')) or ((tzrq <> null) ';
    _filter := _filter + ' and (tzzxsj = null)';
     _filter := _filter + ' and (yzsx=' + '''' + '长期' + '''' + '))';
    sp_dryz_yzzx.Filter := _filter;
    sp_dryz_yzzx.Filtered := True;
  end;
end;



procedure Tfrm_yzqkcx.Timer1Timer(Sender: TObject);
begin
  DBGridEh2.left:=3-ScrollBox1.HorzScrollBar.Position;
  DBGridEh5.left:=3-ScrollBox2.HorzScrollBar.Position;
  DBGridEh9.left:=3-ScrollBox5.HorzScrollBar.Position;
  DBGridEh10.left:=3-ScrollBox5.HorzScrollBar.Position;
end;

procedure Tfrm_yzqkcx.createrect( var myrect1: TTmyrect; dataset_rect: Tcustomadodataset; grid_yzlr1: Tdbgrideh; x1, x2, x3: integer );
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

procedure Tfrm_yzqkcx.createrect_fbks( var myrect1: TTmyrect; dataset_rect: Tcustomadodataset; grid_yzlr1: Tdbgrideh; x1, x2, x3: integer );
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


procedure Tfrm_yzqkcx.createrect1(var myrect1:TTmyrect;dataset_rect:Tcustomadodataset;grid_yzlr1:Tdbgrideh;x1,x2,x3:integer);
var yzph:string;
i,n:integer;
begin
dataset_rect.DisableControls;
rectno:=0;
dataset_rect.first;
initarray(myrect1);
i:=1;
while not dataset_rect.Eof do
 begin
   if dataset_rect.FieldByName('fzph').AsString<>'' then
    begin
    if (yzph<>'') and (myrect1[rectno].sl=1) and (yzph<>dataset_rect.FieldByName('fzph').AsString) then
       begin
        myrect1[rectno].bottom:=grid_yzlr1.CellRect(x1,i-1).bottom;
        myrect1[rectno].Gbottom:=grid_yzlr1.CellRect(x1,i-1).bottom;
//        myrect_cx[rectno].sl:=myrect_cx[rectno].sl+1;
        yzph:='';
       end;
    if yzph=dataset_rect.FieldByName('fzph').AsString then
     begin
      myrect1[rectno].bottom:=grid_yzlr1.CellRect(x1,i).bottom;
      myrect1[rectno].Gbottom:=grid_yzlr1.CellRect(1,i).bottom;
      myrect1[rectno].sl:=myrect1[rectno].sl+1;

     end
     else
      begin
      rectno:=rectno+1;
      myrect1[rectno].sl:=1;
      myrect1[rectno].ph:=dataset_rect.FieldByName('fzph').AsString;

      myrect1[rectno].left:=grid_yzlr1.CellRect(x1,i).left;
      myrect1[rectno].right:=grid_yzlr1.CellRect(x2,i).right;
      myrect1[rectno].top:=grid_yzlr1.CellRect(x1,i).top;

      myrect1[rectno].Gleft:=grid_yzlr1.CellRect(4,i).left;
      myrect1[rectno].Gright:=grid_yzlr1.CellRect(x3,i).right;
      if grid_yzlr1.CellRect(x3,i).right=0 then
      for n := 0 to x3-1 do
      myrect1[rectno].Gright:=myrect1[rectno].Gright+grid_yzlr1.Columns[n].Width;
      myrect1[rectno].Gtop:=grid_yzlr1.CellRect(1,i).top;
      myrect1[rectno].yf:= dataset_rect.FieldByName('ypyf').AsString;
      myrect1[rectno].tj:= dataset_rect.FieldByName('yytj').AsString;
      myrect1[rectno].height:=grid_yzlr1.CellRect(x1,i).bottom-grid_yzlr1.CellRect(x1,i).top;
      yzph:=dataset_rect.FieldByName('fzph').AsString;
      end;
    end
   else
    begin
      if (yzph<>'') and (myrect1[rectno].sl=1)then
       begin
        myrect1[rectno].bottom:=grid_yzlr1.CellRect(x1,i-1).bottom;;
        myrect1[rectno].Gbottom:=grid_yzlr1.CellRect(x1,i-1).bottom;
//        myrect_cx[rectno].sl:=myrect_cx[rectno].sl+1;
        yzph:='';
       end;
       if (yzph<>'') and (myrect1[rectno].sl>1)  then
        yzph:='';

    end;
    dataset_rect.Next;
   i:=dataset_rect.RecNo;
 end;
 if yzph<>'' then
       begin
        myrect1[rectno].bottom:=grid_yzlr1.CellRect(x1,i).bottom;;
        myrect1[rectno].Gbottom:=grid_yzlr1.CellRect(x1,i).bottom;
//        myrect_cx[rectno].sl:=myrect_cx[rectno].sl+1;
        yzph:='';
       end; 
 dataset_rect.EnableControls;

end;

procedure initarray( myrect: TTmyrect );
var
  i: integer;
begin
  for i := 0 to 99 do
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


procedure Tfrm_yzqkcx.OnMouseWheel_yzzx( var Msg: TMsg; var Handled: Boolean );
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

procedure Tfrm_yzqkcx.OnMouseWheel_yzxt( var Msg: TMsg; var Handled: Boolean );
begin
  if Msg.message = WM_MouseWheel then
  begin
    if Msg.wParam < 0 then
      SendMessage( ScrollBox4.Handle, WM_VSCROLL, SB_LINEDOWN, 0 )
    else
      SendMessage( ScrollBox4.Handle, WM_VSCROLL, SB_LINEUP, 0 );
    Handled := True;
  end;
end;

procedure Tfrm_yzqkcx.OnMouseWheel_yzxz( var Msg: TMsg; var Handled: Boolean );
begin
  if Msg.message = WM_MouseWheel then
  begin
    if Msg.wParam < 0 then
      SendMessage( ScrollBox3.Handle, WM_VSCROLL, SB_LINEDOWN, 0 )
    else
      SendMessage( ScrollBox3.Handle, WM_VSCROLL, SB_LINEUP, 0 );
    Handled := True;
  end;
end;


procedure Tfrm_yzqkcx.OnMouseWheel_yzjf( var Msg: TMsg; var Handled: Boolean );
begin
  if Msg.message = WM_MouseWheel then
  begin
    if Msg.wParam < 0 then
      SendMessage( ScrollBox2.Handle, WM_VSCROLL, SB_LINEDOWN, 0 )
    else
      SendMessage( ScrollBox2.Handle, WM_VSCROLL, SB_LINEUP, 0 );
    Handled := True;
  end;
end;

procedure Tfrm_yzqkcx.OnMouseWheel_qtksyzzx( var Msg: TMsg; var Handled: Boolean );
begin
  if Msg.message = WM_MouseWheel then
  begin
    if Msg.wParam < 0 then
      SendMessage( ScrollBox5.Handle, WM_VSCROLL, SB_LINEDOWN, 0 )
    else
      SendMessage( ScrollBox5.Handle, WM_VSCROLL, SB_LINEUP, 0 );
    Handled := True;
  end;
end;
end.
