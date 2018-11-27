unit p_hsdyzxd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, StdCtrls, QuickRpt, QRCtrls, ComCtrls, ExtCtrls,
  DB, ADODB, Menus, cxLookAndFeelPainters, cxButtons,Printers, DBGridEhGrouping;
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
  Tfrm_hsdyzxd = class(TForm)
    GroupBox2: TGroupBox;
    Panel2: TPanel;
    Label2: TLabel;
    dt_zxsj: TDateTimePicker;
    qb: TCheckBox;
    QRShape7: TQRShape;
    ScrollBox1: TScrollBox;
    DBGridEh1: TDBGridEh;
    sp_sybr: TADOStoredProc;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel1: TPanel;
    Panel3: TPanel;
    cxButton2: TcxButton;
    PopupMenu3: TPopupMenu;
    MenuItem1: TMenuItem;
    N21: TMenuItem;
    cxButton1: TcxButton;
    PopupMenu1: TPopupMenu;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    PopupMenu2: TPopupMenu;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    PopupMenu4: TPopupMenu;
    MenuItem6: TMenuItem;
    MenuItem7: TMenuItem;
    ds_sybr: TDataSource;
    ds_dryz: TDataSource;
    sp_dryz: TADOStoredProc;
    sp_in_yzzxqd: TADOStoredProc;
    ScrollBox2: TScrollBox;
    DBGridEh2: TDBGridEh;
    DBGridEh3: TDBGridEh;
    sp_syjhzxd: TADOStoredProc;
    TabSheet2: TTabSheet;
    Panel4: TPanel;
    cxButton5: TcxButton;
    cxButton6: TcxButton;
    cxButton7: TcxButton;
    cxButton8: TcxButton;
    Panel5: TPanel;
    ScrollBox3: TScrollBox;
    DBGridEh4: TDBGridEh;
    DBGridEh5: TDBGridEh;
    sp_dryz_zsd: TADOStoredProc;
    PopupMenu5: TPopupMenu;
    MenuItem8: TMenuItem;
    MenuItem9: TMenuItem;
    sa_dryz_zsd: TDataSource;
    PopupMenu6: TPopupMenu;
    MenuItem10: TMenuItem;
    MenuItem11: TMenuItem;
    PopupMenu7: TPopupMenu;
    MenuItem12: TMenuItem;
    MenuItem13: TMenuItem;
    PopupMenu8: TPopupMenu;
    MenuItem14: TMenuItem;
    MenuItem15: TMenuItem;
    PopupMenu9: TPopupMenu;
    MenuItem16: TMenuItem;
    MenuItem17: TMenuItem;
    PopupMenu10: TPopupMenu;
    MenuItem18: TMenuItem;
    MenuItem19: TMenuItem;
    PopupMenu11: TPopupMenu;
    MenuItem20: TMenuItem;
    MenuItem21: TMenuItem;
    PopupMenu12: TPopupMenu;
    MenuItem22: TMenuItem;
    MenuItem23: TMenuItem;
    ds_zld: TDataSource;
    sp_dryz_zld: TADOStoredProc;
    PopupMenu13: TPopupMenu;
    MenuItem24: TMenuItem;
    MenuItem25: TMenuItem;
    PopupMenu14: TPopupMenu;
    MenuItem26: TMenuItem;
    MenuItem27: TMenuItem;
    PopupMenu15: TPopupMenu;
    MenuItem28: TMenuItem;
    MenuItem29: TMenuItem;
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    p_zyh: TQRLabel;
    p_xm: TQRLabel;
    p_xb: TQRLabel;
    p_nl: TQRLabel;
    p_bch: TQRLabel;
    p_ks: TQRLabel;
    p_zxsj: TQRLabel;
    QRSubDetail1: TQRSubDetail;
    QRBand2: TQRBand;
    QRLabel1: TQRLabel;
    QRgrImage1: TQRImage;
    QRLabel3: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRLabel2: TQRLabel;
    PopupMenu16: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    qry_up_yzzxqd: TADOQuery;
    PopupMenu17: TPopupMenu;
    MenuItem30: TMenuItem;
    MenuItem31: TMenuItem;
    QRShape1: TQRShape;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    TabSheet3: TTabSheet;
    Panel6: TPanel;
    cxButton9: TcxButton;
    cxButton10: TcxButton;
    cxButton11: TcxButton;
    cxButton12: TcxButton;
    CheckBox3: TCheckBox;
    Panel7: TPanel;
    ScrollBox4: TScrollBox;
    DBGridEh6: TDBGridEh;
    DBGridEh7: TDBGridEh;
    ds_dryz_kfyd: TDataSource;
    sp_dryz_kfyd: TADOStoredProc;
    PopupMenu18: TPopupMenu;
    MenuItem32: TMenuItem;
    MenuItem33: TMenuItem;
    QRLabel4: TQRLabel;
    Button1: TButton;
    procedure FormShow(Sender: TObject);
    procedure dt_zxsjChange(Sender: TObject);
    procedure DBGridEh1CellClick(Column: TColumnEh);
    procedure DBGridEh2ColWidthsChanged(Sender: TObject);
    procedure DBGridEh2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGridEh3ColWidthsChanged(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure ChangePrinter;
    procedure ChangePrinter_syjhd;
    procedure RevertPrinter;
    procedure N21Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure MenuItem4Click(Sender: TObject);
    procedure MenuItem5Click(Sender: TObject);
    procedure MenuItem6Click(Sender: TObject);
    procedure MenuItem7Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure TabSheet2Show(Sender: TObject);
    procedure TabSheet1Show(Sender: TObject);
    procedure MenuItem8Click(Sender: TObject);
    procedure MenuItem9Click(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure DBGridEh4ColWidthsChanged(Sender: TObject);
    procedure DBGridEh4DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure DBGridEh5ColWidthsChanged(Sender: TObject);
    procedure MenuItem10Click(Sender: TObject);
    procedure MenuItem11Click(Sender: TObject);
    procedure MenuItem12Click(Sender: TObject);
    procedure MenuItem13Click(Sender: TObject);
    procedure cxButton6Click(Sender: TObject);
    procedure cxButton7Click(Sender: TObject);
    procedure MenuItem14Click(Sender: TObject);
    procedure MenuItem15Click(Sender: TObject);
    procedure cxButton8Click(Sender: TObject);
    procedure DBGridEh7ColumnMoved(Sender: TObject; FromIndex,
      ToIndex: Integer);
    procedure DBGridEh6ColWidthsChanged(Sender: TObject);
    procedure DBGridEh6DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure TabSheet3Show(Sender: TObject);
    procedure MenuItem16Click(Sender: TObject);
    procedure MenuItem17Click(Sender: TObject);
    procedure cxButton9Click(Sender: TObject);
    procedure MenuItem18Click(Sender: TObject);
    procedure MenuItem19Click(Sender: TObject);
    procedure cxButton10Click(Sender: TObject);
    procedure MenuItem20Click(Sender: TObject);
    procedure MenuItem21Click(Sender: TObject);
    procedure cxButton11Click(Sender: TObject);
    procedure MenuItem22Click(Sender: TObject);
    procedure MenuItem23Click(Sender: TObject);
    procedure cxButton12Click(Sender: TObject);
    procedure qbClick(Sender: TObject);
    procedure TabSheet4Show(Sender: TObject);
    procedure DBGridEh8DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure DBGridEh8ColWidthsChanged(Sender: TObject);
    procedure MenuItem24Click(Sender: TObject);
    procedure MenuItem25Click(Sender: TObject);
    procedure MenuItem26Click(Sender: TObject);
    procedure MenuItem27Click(Sender: TObject);
    procedure cxButton13Click(Sender: TObject);
    procedure cxButton15Click(Sender: TObject);
    procedure MenuItem28Click(Sender: TObject);
    procedure MenuItem29Click(Sender: TObject);
    procedure cxButton16Click(Sender: TObject);
    procedure QRSubDetail1NeedData(Sender: TObject; var MoreData: Boolean);
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure MenuItem30Click(Sender: TObject);
    procedure MenuItem31Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure MenuItem32Click(Sender: TObject);
    procedure MenuItem33Click(Sender: TObject);
    procedure DBGridEh7ColWidthsChanged(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    rectno: integer;
    zyh_zfc:string;
    procedure OnMouseWheel_yzzx( var Msg: TMsg; var Handled: Boolean );
    procedure OnMouseWheel_zsd( var Msg: TMsg; var Handled: Boolean );
    procedure OnMouseWheel_kfy( var Msg: TMsg; var Handled: Boolean );
    procedure OnMouseWheel_zld( var Msg: TMsg; var Handled: Boolean );
    procedure syjhddy;
    procedure zxddy;
    procedure zxddy_czks(var czks:string );
    { Private declarations }
  public
    paper_size: integer;
    n_zyh:string;
    procedure createrect( var myrect1: TTmyrect; dataset_rect: Tcustomadodataset; grid_yzlr1: Tdbgrideh; x1, x2, x3: integer );
    { Public declarations }
  end;

var
  frm_hsdyzxd: Tfrm_hsdyzxd;
  myrect_cx, myrect_zx_cq, myrect_zx_ls: TTmyrect;
  v_IsPrinterJoin: Boolean;
  v_PrinterIndex_new: Integer;
  v_PrinterIndex_old: Integer;
  function findinarray( myrect: TTmyrect; zd: string ): integer;
  procedure initarray( myrect: TTmyrect );

implementation

uses p_dm,P_func,p_zysf_print_service;
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

{$R *.dfm}

procedure Tfrm_hsdyzxd.DBGridEh1CellClick(Column: TColumnEh);
var zyh:string;
begin

  if (DBGridEh1.SelectedIndex<>0) then
  begin
    Exit;
  end;
  if (sp_sybr.fieldbyname('xzbz').asboolean=false) and (DBGridEh1.SelectedIndex=0) then
  begin
     zyh_zfc:=zyh_zfc+' or '+'(zyh ='+''''+sp_sybr.fieldbyname('zyh').asstring+''''+')';
  end
  else
  if (sp_sybr.fieldbyname('xzbz').asboolean=true) and (DBGridEh1.SelectedIndex=0) then
  begin
    zyh_zfc := StringReplace( zyh_zfc, ' or '+'(zyh ='+''''+sp_sybr.fieldbyname('zyh').asstring+''''+')', '', [rfReplaceAll] );
  end;
  zyh:=sp_sybr.fieldbyname('zyh').asstring;

  sp_dryz.Filtered := false;
  if trim(zyh_zfc)<>'' then
  begin
    sp_dryz.filter:=Copy(zyh_zfc,5,Length(zyh_zfc)-4);
    sp_dryz.Filtered := true;
  end;
  sp_dryz_zsd.Filtered := false;
  if trim(zyh_zfc)<>'' then
  begin
    sp_dryz_zsd.filter:=Copy(zyh_zfc,5,Length(zyh_zfc)-4);
    sp_dryz_zsd.Filtered := true;
  end;
  sp_dryz_kfyd.Filtered := false;
  if trim(zyh_zfc)<>'' then
  begin
    sp_dryz_kfyd.filter:=Copy(zyh_zfc,5,Length(zyh_zfc)-4);
    sp_dryz_kfyd.Filtered := true;
  end;
  if trim(zyh_zfc)<>'' then
  begin
    sp_dryz_zld.filter:=Copy(zyh_zfc,5,Length(zyh_zfc)-4);
    sp_dryz_zld.Filtered := true;
  end;
  DBGridEh2.Columns[1].Width := DBGridEh2.Columns[1].Width + 1;
  DBGridEh2.Columns[1].Width := DBGridEh2.Columns[1].Width - 1;
  DBGridEh4.Columns[1].Width := DBGridEh4.Columns[1].Width + 1;
  DBGridEh4.Columns[1].Width := DBGridEh4.Columns[1].Width - 1;

end;


procedure Tfrm_hsdyzxd.DBGridEh2ColWidthsChanged(Sender: TObject);
begin
  if sp_dryz.Active then
  begin
    if sp_dryz.RecordCount < 300 then
    begin
      createrect( myrect_cx, sp_dryz, dbgrideh2, 9, 10, 13 );
    end;
  end;
end;

procedure Tfrm_hsdyzxd.DBGridEh2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
var
  i: integer;
  myrect1: Trect;
begin
  if trim( sP_dryz.fieldbyname( 'yzsx' ).asstring ) = '临时' then
  begin
    dbgrideh2.Canvas.Brush.Color := clwhite;
    dbgrideh2.Canvas.Font.Color := clGreen;
  end;

  if trim( sp_dryz.fieldbyname( 'fzph' ).asstring ) <> '' then
  begin
    dbgrideh2.canvas.brush.color := $00E2BC6D;
    i := findinarray( myrect_cx, sp_dryz.fieldbyname( 'fzph' ).asstring );
    dbgrideh2.Canvas.pen.color := $00E2BC6D;
    dbgrideh2.Canvas.MoveTo( myrect_cx[i].left + 20, myrect_cx[i].top );
    dbgrideh2.Canvas.LineTo( myrect_cx[i].left, myrect_cx[i].Bottom );
    dbgrideh2.canvas.Rectangle( myrect_cx[i].left, myrect_cx[i].top, myrect_cx[i].right, myrect_cx[i].bottom );
    dbgrideh2.Canvas.pen.color := clred;
    dbgrideh2.Canvas.MoveTo( myrect_cx[i].left + 20, myrect_cx[i].top );
    dbgrideh2.Canvas.LineTo( myrect_cx[i].left, myrect_cx[i].Bottom );
    with dbgrideh2.Canvas do
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
    dbgrideh2.Canvas.TextOut( myrect_cx[i].left + 20,
      myrect_cx[i].top + round( myrect_cx[i].height * ( ( myrect_cx[i].sl - 0.5 ) / 2 ) ), myrect_cx[i].tj + #13 + myrect_cx[i].yf );
  end;
  ( Sender as TDbGridEh ).DefaultDrawColumnCell( Rect, DataCol, Column, State );

end;

procedure Tfrm_hsdyzxd.DBGridEh3ColWidthsChanged(Sender: TObject);
var i:Integer;
begin
  for I := 0 to DBGridEh3.Columns.Count - 1 do
  begin
    DBGridEh2.Columns[i].Width := DBGridEh3.Columns[i].Width;
  end;

end;

procedure Tfrm_hsdyzxd.DBGridEh4ColWidthsChanged(Sender: TObject);
begin
  if sp_dryz_zsd.Active then
  begin
    if sp_dryz_zsd.RecordCount < 300 then
    begin
      createrect( myrect_cx, sp_dryz_zsd, dbgrideh4, 9, 10, 13 );
    end;
  end;
end;

procedure Tfrm_hsdyzxd.DBGridEh4DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
var
  i: integer;
  myrect1: Trect;
begin
  if trim( sP_dryz_zsd.fieldbyname( 'yzsx' ).asstring ) = '临时' then
  begin
    dbgrideh4.Canvas.Brush.Color := clwhite;
    dbgrideh4.Canvas.Font.Color := clGreen;
  end;

  if trim( sP_dryz_zsd.fieldbyname( 'fzph' ).asstring ) <> '' then
  begin
    dbgrideh4.canvas.brush.color := $00E2BC6D;
    i := findinarray( myrect_cx, sP_dryz_zsd.fieldbyname( 'fzph' ).asstring );
    dbgrideh4.Canvas.pen.color := $00E2BC6D;
    dbgrideh4.Canvas.MoveTo( myrect_cx[i].left + 20, myrect_cx[i].top );
    dbgrideh4.Canvas.LineTo( myrect_cx[i].left, myrect_cx[i].Bottom );
    dbgrideh4.canvas.Rectangle( myrect_cx[i].left, myrect_cx[i].top, myrect_cx[i].right, myrect_cx[i].bottom );
    dbgrideh4.Canvas.pen.color := clred;
    dbgrideh4.Canvas.MoveTo( myrect_cx[i].left + 20, myrect_cx[i].top );
    dbgrideh4.Canvas.LineTo( myrect_cx[i].left, myrect_cx[i].Bottom );
    with dbgrideh4.Canvas do
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
    dbgrideh4.Canvas.TextOut( myrect_cx[i].left + 20,
      myrect_cx[i].top + round( myrect_cx[i].height * ( ( myrect_cx[i].sl - 0.5 ) / 2 ) ), myrect_cx[i].tj + #13 + myrect_cx[i].yf );
  end;
  ( Sender as TDbGridEh ).DefaultDrawColumnCell( Rect, DataCol, Column, State );

end;

procedure Tfrm_hsdyzxd.DBGridEh5ColWidthsChanged(Sender: TObject);
var i:Integer;
begin
  for I := 0 to DBGridEh5.Columns.Count - 1 do
  begin
    DBGridEh4.Columns[i].Width := DBGridEh5.Columns[i].Width;
  end;

end;

procedure Tfrm_hsdyzxd.DBGridEh6ColWidthsChanged(Sender: TObject);
begin
  if sp_dryz_kfyd.Active then
  begin
    if sp_dryz_kfyd.RecordCount < 300 then
    begin
      createrect( myrect_cx, sp_dryz_kfyd, dbgrideh6, 9, 10, 13 );
    end;
  end;
end;

procedure Tfrm_hsdyzxd.DBGridEh6DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
var
  i: integer;
  myrect1: Trect;
begin
  if trim( sP_dryz_kfyd.fieldbyname( 'yzsx' ).asstring ) = '临时' then
  begin
    dbgrideh6.Canvas.Brush.Color := clwhite;
    dbgrideh6.Canvas.Font.Color := clGreen;
  end;

  if trim( sP_dryz_kfyd.fieldbyname( 'fzph' ).asstring ) <> '' then
  begin
    dbgrideh6.canvas.brush.color := $00E2BC6D;
    i := findinarray( myrect_cx, sP_dryz_kfyd.fieldbyname( 'fzph' ).asstring );
    dbgrideh6.Canvas.pen.color := $00E2BC6D;
    dbgrideh6.Canvas.MoveTo( myrect_cx[i].left + 20, myrect_cx[i].top );
    dbgrideh6.Canvas.LineTo( myrect_cx[i].left, myrect_cx[i].Bottom );
    dbgrideh6.canvas.Rectangle( myrect_cx[i].left, myrect_cx[i].top, myrect_cx[i].right, myrect_cx[i].bottom );
    dbgrideh6.Canvas.pen.color := clred;
    dbgrideh6.Canvas.MoveTo( myrect_cx[i].left + 20, myrect_cx[i].top );
    dbgrideh6.Canvas.LineTo( myrect_cx[i].left, myrect_cx[i].Bottom );
    with dbgrideh6.Canvas do
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
    dbgrideh6.Canvas.TextOut( myrect_cx[i].left + 20,
      myrect_cx[i].top + round( myrect_cx[i].height * ( ( myrect_cx[i].sl - 0.5 ) / 2 ) ), myrect_cx[i].tj + #13 + myrect_cx[i].yf );
  end;
  ( Sender as TDbGridEh ).DefaultDrawColumnCell( Rect, DataCol, Column, State );

end;

procedure Tfrm_hsdyzxd.DBGridEh7ColumnMoved(Sender: TObject; FromIndex,
  ToIndex: Integer);
  var i:Integer;
begin
//  for I := 0 to DBGridEh7.Columns.Count - 1 do
//  begin
//    DBGridEh6.Columns[i].Width := DBGridEh7.Columns[i].Width;
//  end;
end;

procedure Tfrm_hsdyzxd.DBGridEh7ColWidthsChanged(Sender: TObject);
var i:Integer;
begin
  for I := 0 to DBGridEh7.Columns.Count - 1 do
  begin
    DBGridEh6.Columns[i].Width := DBGridEh7.Columns[i].Width;
  end;
end;

procedure Tfrm_hsdyzxd.DBGridEh8ColWidthsChanged(Sender: TObject);
begin
//  if sp_dryz_zld.Active then
//  begin
//    if sp_dryz_zld.RecordCount < 300 then
//    begin
//      createrect( myrect_cx, sp_dryz_zld, dbgrideh8, 9, 10, 13 );
//    end;
//  end;

end;

procedure Tfrm_hsdyzxd.DBGridEh8DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
var
  i: integer;
  myrect1: Trect;
begin
//  if trim( sP_dryz_zld.fieldbyname( 'yzsx' ).asstring ) = '临时' then
//  begin
//    dbgrideh8.Canvas.Brush.Color := clwhite;
//    dbgrideh8.Canvas.Font.Color := clGreen;
//  end;
//
//  if trim( sP_dryz_zld.fieldbyname( 'fzph' ).asstring ) <> '' then
//  begin
//    dbgrideh8.canvas.brush.color := $00E2BC6D;
//    i := findinarray( myrect_cx, sP_dryz_zld.fieldbyname( 'fzph' ).asstring );
//    dbgrideh8.Canvas.pen.color := $00E2BC6D;
//    dbgrideh8.Canvas.MoveTo( myrect_cx[i].left + 20, myrect_cx[i].top );
//    dbgrideh8.Canvas.LineTo( myrect_cx[i].left, myrect_cx[i].Bottom );
//    dbgrideh8.canvas.Rectangle( myrect_cx[i].left, myrect_cx[i].top, myrect_cx[i].right, myrect_cx[i].bottom );
//    dbgrideh8.Canvas.pen.color := clred;
//    dbgrideh8.Canvas.MoveTo( myrect_cx[i].left + 20, myrect_cx[i].top );
//    dbgrideh8.Canvas.LineTo( myrect_cx[i].left, myrect_cx[i].Bottom );
//    with dbgrideh8.Canvas do
//    begin
//      moveto( myrect_cx[I].gleft, myrect_cx[i].Gtop );
//      lineto( myrect_cx[I].gright, myrect_cx[I].gtop );
//      lineto( myrect_cx[I].gright, myrect_cx[I].gbottom );
//      lineto( myrect_cx[I].gleft, myrect_cx[I].gbottom );
//      lineto( myrect_cx[I].gleft, myrect_cx[i].Gtop );
//    end;
//    myrect1.Left := myrect_cx[i].left;
//    myrect1.top := myrect_cx[i].top;
//    myrect1.right := myrect_cx[i].right;
//    myrect1.bottom := myrect_cx[i].bottom;
//    dbgrideh8.Canvas.TextOut( myrect_cx[i].left + 20,
//      myrect_cx[i].top + round( myrect_cx[i].height * ( ( myrect_cx[i].sl - 0.5 ) / 2 ) ), myrect_cx[i].tj + #13 + myrect_cx[i].yf );
//  end;
//  ( Sender as TDbGridEh ).DefaultDrawColumnCell( Rect, DataCol, Column, State );

end;

procedure Tfrm_hsdyzxd.dt_zxsjChange(Sender: TObject);
begin
  sp_sybr.Close;
  sp_sybr.Parameters.Refresh;
  sp_sybr.Parameters.ParamByName('@bqdm').Value:=pub_bqdm;
  sp_sybr.Parameters.ParamByName('@zxsj').Value:=FormatDateTime('yyyyMMdd',dt_zxsj.DateTime);
  sp_sybr.Open;
  zyh_zfc:='';
  sp_in_yzzxqd.close;
  sp_in_yzzxqd.Parameters.Refresh;
  sp_in_yzzxqd.Parameters.ParamByName('@bqdm').Value:=pub_bqdm;
  sp_in_yzzxqd.Parameters.ParamByName('@zxsj').Value:=FormatDateTime('yyyyMMdd',dt_zxsj.DateTime);
  sp_in_yzzxqd.ExecProc;
  PageControl1.ActivePageIndex:=0;
  sp_dryz.Close;
  sp_dryz.Parameters.ParamByName( '@bqdm' ).value := pub_bqdm;
  sp_dryz.Parameters.ParamByName( '@zyh' ).value := '';
  sp_dryz.Parameters.ParamByName( '@bz' ).value := '全部';
  sp_dryz.Parameters.ParamByName( '@zxsj' ).value := formatdatetime( 'yyyymmdd', dT_zxsj.Date );
  sp_dryz.Open;
  sp_dryz.Filtered:=false;
  sp_dryz.Filter:='zyh=''1''';
  sp_dryz.Filtered:=true;
  
end;

procedure Tfrm_hsdyzxd.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Application.OnMessage := nil;
end;

procedure Tfrm_hsdyzxd.FormCreate(Sender: TObject);
begin
  Application.OnMessage := OnMouseWheel_yzzx;
  n_zyh:='';
end;

procedure Tfrm_hsdyzxd.FormShow(Sender: TObject);
begin
  TabSheet3.TabVisible:=false;
  if (pub_yydm='0003') and (pub_bqdm='0030') then          //三医院ICU病区打印三种单子
  begin
    TabSheet3.TabVisible:=True;
    TabSheet2.Caption:='治疗单';
    sp_syjhzxd.ProcedureName:='zybl_cx_yzzxjl_print_dddy_icu';
    sp_dryz_zsd.ProcedureName:='zybl_zyyz_cx_zsd_icu';
  end;
  dt_zxsj.DateTime := frm_func.curr_date;
  sp_in_yzzxqd.close;
  sp_in_yzzxqd.Parameters.Refresh;
  sp_in_yzzxqd.Parameters.ParamByName('@bqdm').Value:=pub_bqdm;
  sp_in_yzzxqd.Parameters.ParamByName('@zxsj').Value:=FormatDateTime('yyyyMMdd',dt_zxsj.DateTime);
  sp_in_yzzxqd.ExecProc;
  sp_sybr.Close;
  sp_sybr.Parameters.Refresh;
  sp_sybr.Parameters.ParamByName('@bqdm').Value:=pub_bqdm;
  sp_sybr.Parameters.ParamByName('@zxsj').Value:=FormatDateTime('yyyyMMdd',dt_zxsj.DateTime);
  sp_sybr.Open;
  sp_dryz.close;
  sp_dryz.Parameters.ParamByName( '@bqdm' ).value := pub_bqdm;
  sp_dryz.Parameters.ParamByName( '@zyh' ).value := '';
  sp_dryz.Parameters.ParamByName( '@bz' ).value := '全部';
  sp_dryz.Parameters.ParamByName( '@zxsj' ).value := formatdatetime( 'yyyymmdd', dT_zxsj.Date );
  sp_dryz.Open;
  sp_dryz.Filtered:=false;
  sp_dryz.Filter:='zyh=''1''';
  sp_dryz.Filtered:=true;
  if n_zyh<>'' then
  begin
    sp_sybr.first;
    while not sp_sybr.eof do
    begin
      if sp_sybr.FieldByName('zyh').asstring=n_zyh then
      begin
        sp_sybr.Edit;
        sp_sybr.FieldByName('xzbz').AsBoolean:=True;
        sp_sybr.Post;
      end;
      sp_sybr.Next;
    end;
    sp_sybr.first;
    zyh_zfc:=zyh_zfc+' or '+'(zyh ='+''''+n_zyh+''''+')';
    sp_dryz.Filtered := false;
    if trim(zyh_zfc)<>'' then
    begin
      sp_dryz.filter:=Copy(zyh_zfc,5,Length(zyh_zfc)-4);
      sp_dryz.Filtered := true;
    end;
    sp_dryz_zsd.Filtered := false;
    if trim(zyh_zfc)<>'' then
    begin
      sp_dryz_zsd.filter:=Copy(zyh_zfc,5,Length(zyh_zfc)-4);
      sp_dryz_zsd.Filtered := true;
    end;
    DBGridEh2.Columns[1].Width := DBGridEh2.Columns[1].Width + 1;
    DBGridEh2.Columns[1].Width := DBGridEh2.Columns[1].Width - 1;
    DBGridEh4.Columns[1].Width := DBGridEh4.Columns[1].Width + 1;
    DBGridEh4.Columns[1].Width := DBGridEh4.Columns[1].Width - 1;
  end;
  if pub_yydm='0271' then
  begin
    PageControl1.ActivePage:=TabSheet1;
  end;
end;


procedure Tfrm_hsdyzxd.MenuItem10Click(Sender: TObject);
var
  i, y, j, count, x: Integer;
  aControl: TControl;
  v_yytj, v_lb, filter: string;
begin
  if (pub_yydm='0003') and (pub_bqdm='0030') and (PageControl1.ActivePageIndex=1)  then
  begin
    //ICU执行单
    if Application.MessageBox(pchar('你将打印选择病人的所有临时执行单，是否确认打印？')
      , '询问', MB_OKCANCEL + MB_ICONQUESTION
      + MB_DEFBUTTON2) = IDCANCEL then
    begin
     Exit;
    end;
    sp_sybr.First;
    while not sp_sybr.eof do
    begin
      if sp_sybr.FieldByName('xzbz').AsBoolean=false then
      begin
        sp_sybr.Next;
      end
      else
      begin
        with sp_syjhzxd do
        begin
          Filtered := False;
          Close;
          Parameters.Refresh;
          Parameters.ParamByName( '@zyh' ).Value := Trim( sp_sybr.fieldbyname( 'zyh' ).asstring );
          Parameters.ParamByName( '@rq' ).Value := FormatDateTime('yyyyMMdd',dt_zxsj.DateTime);
          Parameters.ParamByName( '@fzph_zh' ).Value := '';
          Open;
        end;
        if (pub_yydm='0003')  then
        begin
          DM_data.qry_pub.close;
          DM_data.qry_pub.sql.text := 'select * from zybl_zyyz where zyh='+''''+ Trim( sp_sybr.fieldbyname( 'zyh' ).asstring )
          +''''+' and (xmmc like ''%皮试%'' or xmmc like ''%敏试%'') and charindex(''-'',xmmc)<1 and  charindex(''+'',xmmc)<1 and tzbz=0 and charindex(''阴'',xmmc)<1 and  charindex(''阳'',xmmc)<1';
          DM_data.qry_pub.Open;
        end
        else
        begin
          DM_data.qry_pub.close;
          DM_data.qry_pub.sql.text := 'select * from sys_czy where 1<>1';
          DM_data.qry_pub.Open;
        end;
        if DM_data.qry_pub.IsEmpty then
        begin
        DM_data.qry_pub.close;
        DM_data.qry_pub.sql.text := 'select yytj from zybl_zyyz_dytjsz where dyxm=''输液计划单''';
        DM_data.qry_pub.Open;
        if DM_data.qry_pub.IsEmpty then
        begin
          v_yytj := '';
        end
        else
        begin
          DM_data.qry_pub.First;
          while not DM_data.qry_pub.eof do
          begin
            v_yytj := v_yytj + '(yytj<>' + '''' + DM_data.qry_pub.FieldByName( 'yytj' ).asstring + '''' + ' and yytj<>''口服''  and sx=''临时''  and kdbq =' + '''' + pub_bqdm +
               ''')' + ' and ';
            DM_data.qry_pub.Next;
          end;

        end;

  //      DM_data.qry_pub.close;
  //      DM_data.qry_pub.sql.text := 'select lbmc from zybl_zyyz_dylbsz where dyxm=''输液计划单''';
  //      DM_data.qry_pub.Open;
  //      if DM_data.qry_pub.IsEmpty then
  //      begin
  //        v_lb := '';
  //      end
  //      else
  //      begin
  //        DM_data.qry_pub.First;
  //        while not DM_data.qry_pub.eof do
  //        begin
  //          v_lb := v_lb + '(lb<>' + '''' + DM_data.qry_pub.FieldByName( 'lbmc' ).asstring + '''' + ' and sx=''临时'' and kdks=' + '''' + pub_ksdm +
  //             ''')' + ' and ';
  //          DM_data.qry_pub.Next;
  //        end;
  //
  //      end;

        if v_yytj + v_lb = '' then
        begin
          filter := ' 1<>1 ';
        end
        else
        begin
          filter := v_yytj + v_lb + ' ( xmmc <> ''%特殊情况注射%'' and  kdrq=' + '''' + formatdatetime( 'yyyy-MM-dd', frm_func.curr_date ) +''')';
        end;

        sp_syjhzxd.Filter := filter;

        sp_syjhzxd.Filtered := True;
        if sp_syjhzxd.IsEmpty then
        begin

        end
        else
        begin
  //        ChangePrinter_syjhd;
  //        frm_zysf_print_service.Printsyjhd( sp_sybr,sp_syjhzxd,FormatDateTime('yyyy-MM-dd',dt_zxsj.DateTime));
  //        RevertPrinter;
  //        ChangePrinter_syjhd;
  //        frm_zysf_print_service.Printsyjhd( sp_sybr,sp_syjhzxd,FormatDateTime('yyyy-MM-dd',dt_zxsj.DateTime));
  //        RevertPrinter;
            zxddy;
            zxddy;
//          DM_data.qry_pub.close;
//          DM_data.qry_pub.SQL.text:='update zybl_zyyz_yzzxqd with(rowlock) set syddy=1 from zybl_zyyz a,zybl_zyyz_yzzxqd b where a.zyh=b.zyh and '+
//          '  a.id=b.yzid and  '+'a.zyh='+''''+Trim( sp_sybr.fieldbyname( 'zyh' ).asstring )+
//          ''''+' and b.zxsj='+ ''''+FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+' and a.yzsx=''临时'''+
//          ' and a.yytj not in (select yytj from zybl_zyyz_dytjsz where dyxm=''口服药执行单'')'+
//          ' and a.yytj not in (select yytj from zybl_zyyz_dytjsz where dyxm=''输液计划单'')';
//          DM_data.qry_pub.ExecSQL;
          DM_data.qry_pub.close;
          DM_data.qry_pub.SQL.text:='insert into zybl_zyyz_syddy '+
          'select id,'+''''+FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+' from zybl_zyyz where zxbz=1 and  zyh='+''''+Trim( sp_sybr.fieldbyname( 'zyh' ).asstring )+
          ''''+' and yzsx=''临时'' and convert(varchar,kdrq,112)='+''''+
          FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+
          ' and yytj not in (select yytj from zybl_zyyz_dytjsz where dyxm=''口服药执行单'')'+
          ' and yytj not in (select yytj from zybl_zyyz_dytjsz where dyxm=''输液计划单'')'+
          ' and   id not in (select yzid from zybl_zyyz_syddy where dyrq='+''''+
          FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+')';
          DM_data.qry_pub.ExecSQL;
        end;
        end;
        sp_sybr.Next;
      end;
    end;
  end
  else   if (pub_yydm='0003') and (pub_bqdm='0030') and (PageControl1.ActivePageIndex=2)  then
  begin
    //口服药执行单
    if Application.MessageBox(pchar('你将打印选择病人的所有临时口服药单，是否确认打印？')
      , '询问', MB_OKCANCEL + MB_ICONQUESTION
      + MB_DEFBUTTON2) = IDCANCEL then
    begin
     Exit;
    end;
    sp_sybr.First;
    while not sp_sybr.eof do
    begin
      if sp_sybr.FieldByName('xzbz').AsBoolean=false then
      begin
        sp_sybr.Next;
      end
      else
      begin
        with sp_syjhzxd do
        begin
          Filtered := False;
          Close;
          Parameters.Refresh;
          Parameters.ParamByName( '@zyh' ).Value := Trim( sp_sybr.fieldbyname( 'zyh' ).asstring );
          Parameters.ParamByName( '@rq' ).Value := FormatDateTime('yyyyMMdd',dt_zxsj.DateTime);
          Parameters.ParamByName( '@fzph_zh' ).Value := '';
          Open;
        end;
        if (pub_yydm='0003')  then
        begin
          DM_data.qry_pub.close;
          DM_data.qry_pub.sql.text := 'select * from zybl_zyyz where zyh='+''''+ Trim( sp_sybr.fieldbyname( 'zyh' ).asstring )
          +''''+' and (xmmc like ''%皮试%'' or xmmc like ''%敏试%'') and charindex(''-'',xmmc)<1 and  charindex(''+'',xmmc)<1 and tzbz=0 and charindex(''阴'',xmmc)<1 and  charindex(''阳'',xmmc)<1';
          DM_data.qry_pub.Open;
        end
        else
        begin
          DM_data.qry_pub.close;
          DM_data.qry_pub.sql.text := 'select * from sys_czy where 1<>1';
          DM_data.qry_pub.Open;
        end;
        if DM_data.qry_pub.IsEmpty then
        begin
        DM_data.qry_pub.close;
        DM_data.qry_pub.sql.text := 'select yytj from zybl_zyyz_dytjsz where dyxm=''口服药执行单''';
        DM_data.qry_pub.Open;
        if DM_data.qry_pub.IsEmpty then
        begin
          v_yytj := '';
        end
        else
        begin
          DM_data.qry_pub.First;
          while not DM_data.qry_pub.eof do
          begin
            v_yytj := v_yytj + '(yytj=' + '''' + DM_data.qry_pub.FieldByName( 'yytj' ).asstring + '''' + ' and sx=''临时''  and kdbq =' + '''' + pub_bqdm +
               ''')' + ' and ';
            DM_data.qry_pub.Next;
          end;

        end;

  //      DM_data.qry_pub.close;
  //      DM_data.qry_pub.sql.text := 'select lbmc from zybl_zyyz_dylbsz where dyxm=''输液计划单''';
  //      DM_data.qry_pub.Open;
  //      if DM_data.qry_pub.IsEmpty then
  //      begin
  //        v_lb := '';
  //      end
  //      else
  //      begin
  //        DM_data.qry_pub.First;
  //        while not DM_data.qry_pub.eof do
  //        begin
  //          v_lb := v_lb + '(lb<>' + '''' + DM_data.qry_pub.FieldByName( 'lbmc' ).asstring + '''' + ' and sx=''临时'' and kdks=' + '''' + pub_ksdm +
  //             ''')' + ' and ';
  //          DM_data.qry_pub.Next;
  //        end;
  //
  //      end;

        if v_yytj + v_lb = '' then
        begin
          filter := ' 1<>1 ';
        end
        else
        begin
          filter := v_yytj + v_lb + ' ( xmmc <> ''%特殊情况注射%'' and  kdrq=' + '''' + formatdatetime( 'yyyy-MM-dd', frm_func.curr_date ) +''')';
        end;

        sp_syjhzxd.Filter := filter;

        sp_syjhzxd.Filtered := True;
        if sp_syjhzxd.IsEmpty then
        begin

        end
        else
        begin
  //        ChangePrinter_syjhd;
  //        frm_zysf_print_service.Printsyjhd( sp_sybr,sp_syjhzxd,FormatDateTime('yyyy-MM-dd',dt_zxsj.DateTime));
  //        RevertPrinter;
  //        ChangePrinter_syjhd;
  //        frm_zysf_print_service.Printsyjhd( sp_sybr,sp_syjhzxd,FormatDateTime('yyyy-MM-dd',dt_zxsj.DateTime));
  //        RevertPrinter;
          zxddy;
          zxddy;
          DM_data.qry_pub.close;
//          DM_data.qry_pub.SQL.text:='update zybl_zyyz_yzzxqd with(rowlock) set syddy=1 from zybl_zyyz a,zybl_zyyz_yzzxqd b where a.zyh=b.zyh and '+
//          '  a.id=b.yzid and  '+'a.zyh='+''''+Trim( sp_sybr.fieldbyname( 'zyh' ).asstring )+
//          ''''+' and b.zxsj='+ ''''+FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+' and a.yzsx=''临时'''+
//          ' and a.yytj  in (select yytj from zybl_zyyz_dytjsz where dyxm=''口服药执行单'')';
//          DM_data.qry_pub.ExecSQL;
          DM_data.qry_pub.SQL.text:='insert into zybl_zyyz_syddy '+
          'select id,'+''''+FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+' from zybl_zyyz where zxbz=1 and  zyh='+''''+Trim( sp_sybr.fieldbyname( 'zyh' ).asstring )+
          ''''+' and yzsx=''临时'' and convert(varchar,kdrq,112)='+''''+
          FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+
          ' and yytj  in (select yytj from zybl_zyyz_dytjsz where dyxm=''口服药执行单'')'+
          ' and   id not in (select yzid from zybl_zyyz_syddy where dyrq='+''''+
          FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+')';
          DM_data.qry_pub.ExecSQL;
        end;
        end;
        sp_sybr.Next;
      end;
    end;
  end
  else
  begin
    //普通执行单
    if Application.MessageBox(pchar('你将打印选择病人的所有临时执行单，是否确认打印？')
      , '询问', MB_OKCANCEL + MB_ICONQUESTION
      + MB_DEFBUTTON2) = IDCANCEL then
    begin
     Exit;
    end;
    sp_sybr.First;
    while not sp_sybr.eof do
    begin
      if sp_sybr.FieldByName('xzbz').AsBoolean=false then
      begin
        sp_sybr.Next;
      end
      else
      begin
        with sp_syjhzxd do
        begin
          Filtered := False;
          Close;
          Parameters.Refresh;
          Parameters.ParamByName( '@zyh' ).Value := Trim( sp_sybr.fieldbyname( 'zyh' ).asstring );
          Parameters.ParamByName( '@rq' ).Value := FormatDateTime('yyyyMMdd',dt_zxsj.DateTime);
          Parameters.ParamByName( '@fzph_zh' ).Value := '';
          Open;
        end;
        if (pub_yydm='0003')  then
        begin
          DM_data.qry_pub.close;
          DM_data.qry_pub.sql.text := 'select * from zybl_zyyz where zyh='+''''+ Trim( sp_sybr.fieldbyname( 'zyh' ).asstring )
          +''''+' and (xmmc like ''%皮试%'' or xmmc like ''%敏试%'') and charindex(''-'',xmmc)<1 and  charindex(''+'',xmmc)<1 and tzbz=0 and charindex(''阴'',xmmc)<1 and  charindex(''阳'',xmmc)<1';
          DM_data.qry_pub.Open;
        end
        else
        begin
          DM_data.qry_pub.close;
          DM_data.qry_pub.sql.text := 'select * from sys_czy where 1<>1';
          DM_data.qry_pub.Open;
        end;
        if DM_data.qry_pub.IsEmpty then
        begin
        DM_data.qry_pub.close;
        DM_data.qry_pub.sql.text := 'select yytj from zybl_zyyz_dytjsz where dyxm=''输液计划单''';
        DM_data.qry_pub.Open;
        if DM_data.qry_pub.IsEmpty then
        begin
          v_yytj := '';
        end
        else
        begin
          DM_data.qry_pub.First;
          while not DM_data.qry_pub.eof do
          begin
            v_yytj := v_yytj + '(yytj<>' + '''' + DM_data.qry_pub.FieldByName( 'yytj' ).asstring + '''' + ' and sx=''临时''  and kdbq =' + '''' + pub_bqdm +
               ''')' + ' and ';
            DM_data.qry_pub.Next;
          end;

        end;

  //      DM_data.qry_pub.close;
  //      DM_data.qry_pub.sql.text := 'select lbmc from zybl_zyyz_dylbsz where dyxm=''输液计划单''';
  //      DM_data.qry_pub.Open;
  //      if DM_data.qry_pub.IsEmpty then
  //      begin
  //        v_lb := '';
  //      end
  //      else
  //      begin
  //        DM_data.qry_pub.First;
  //        while not DM_data.qry_pub.eof do
  //        begin
  //          v_lb := v_lb + '(lb<>' + '''' + DM_data.qry_pub.FieldByName( 'lbmc' ).asstring + '''' + ' and sx=''临时'' and kdks=' + '''' + pub_ksdm +
  //             ''')' + ' and ';
  //          DM_data.qry_pub.Next;
  //        end;
  //
  //      end;

        if v_yytj + v_lb = '' then
        begin
          filter := ' 1<>1 ';
        end
        else
        begin
          filter := v_yytj + v_lb + ' ( xmmc <> ''%特殊情况注射%'' and  kdrq=' + '''' + formatdatetime( 'yyyy-MM-dd', frm_func.curr_date ) +''')';
        end;

        sp_syjhzxd.Filter := filter;

        sp_syjhzxd.Filtered := True;
        if sp_syjhzxd.IsEmpty then
        begin

        end
        else
        begin
  //        ChangePrinter_syjhd;
  //        frm_zysf_print_service.Printsyjhd( sp_sybr,sp_syjhzxd,FormatDateTime('yyyy-MM-dd',dt_zxsj.DateTime));
  //        RevertPrinter;
  //        ChangePrinter_syjhd;
  //        frm_zysf_print_service.Printsyjhd( sp_sybr,sp_syjhzxd,FormatDateTime('yyyy-MM-dd',dt_zxsj.DateTime));
  //        RevertPrinter;
           if pub_yydm='0271' then //荆门市掇刀人民医院
           begin
              frm_zysf_print_service.print_yzzxddy( sp_sybr,sp_syjhzxd,trim(formatdatetime('yyyy-MM-dd hh:mm',Frm_func.curr_date)));
              frm_zysf_print_service.print_yzzxddy( sp_sybr,sp_syjhzxd,trim(formatdatetime('yyyy-MM-dd hh:mm',Frm_func.curr_date)));
           end
           else
           begin
            zxddy;
            zxddy;
           end;
          DM_data.qry_pub.close;
//          DM_data.qry_pub.SQL.text:='update zybl_zyyz_yzzxqd with(rowlock) set syddy=1 from zybl_zyyz a,zybl_zyyz_yzzxqd b where a.zyh=b.zyh and '+
//          '  a.id=b.yzid and  '+'a.zyh='+''''+Trim( sp_sybr.fieldbyname( 'zyh' ).asstring )+
//          ''''+' and b.zxsj='+ ''''+FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+' and a.yzsx=''临时'''+
//          ' and a.yytj not in (select yytj from zybl_zyyz_dytjsz where dyxm=''输液计划单'')';
//          DM_data.qry_pub.ExecSQL;
          DM_data.qry_pub.SQL.text:='insert into zybl_zyyz_syddy '+
          'select id,'+''''+FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+' from zybl_zyyz where zxbz=1 and zyh='+''''+Trim( sp_sybr.fieldbyname( 'zyh' ).asstring )+
          ''''+' and yzsx=''临时'' and convert(varchar,kdrq,112)='+''''+
          FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+
          ' and yytj not in (select yytj from zybl_zyyz_dytjsz where dyxm=''输液计划单'')'+
          ' and   id not in (select yzid from zybl_zyyz_syddy where dyrq='+''''+
          FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+')';
          DM_data.qry_pub.close;
        end;
        end;
        sp_sybr.Next;
      end;
    end;
  end;

end;

procedure Tfrm_hsdyzxd.MenuItem11Click(Sender: TObject);
var
  i, y, j, count, x: Integer;
  aControl: TControl;
  v_yytj, v_lb, filter: string;
begin
  if (pub_yydm='0003') and (pub_bqdm='0030') and (PageControl1.ActivePageIndex=1)  then
  begin
    //ICU执行单
    if Application.MessageBox(pchar('你将打印选择病人的所有临时执行单，是否确认打印？')
      , '询问', MB_OKCANCEL + MB_ICONQUESTION
      + MB_DEFBUTTON2) = IDCANCEL then
    begin
     Exit;
    end;
    sp_sybr.First;
    while not sp_sybr.eof do
    begin
      if sp_sybr.FieldByName('xzbz').AsBoolean=false then
      begin
        sp_sybr.Next;
      end
      else
      begin
        with sp_syjhzxd do
        begin
          Filtered := False;
          Close;
          Parameters.Refresh;
          Parameters.ParamByName( '@zyh' ).Value := Trim( sp_sybr.fieldbyname( 'zyh' ).asstring );
          Parameters.ParamByName( '@rq' ).Value := FormatDateTime('yyyyMMdd',dt_zxsj.DateTime);
          Parameters.ParamByName( '@fzph_zh' ).Value := '';
          Open;
        end;
        if (pub_yydm='0003') then
        begin
          DM_data.qry_pub.close;
          DM_data.qry_pub.sql.text := 'select * from zybl_zyyz where zyh='+''''+ Trim( sp_sybr.fieldbyname( 'zyh' ).asstring )
          +''''+' and (xmmc like ''%皮试%'' or xmmc like ''%敏试%'') and charindex(''-'',xmmc)<1 and  charindex(''+'',xmmc)<1 and tzbz=0 and charindex(''阴'',xmmc)<1 and  charindex(''阳'',xmmc)<1';
          DM_data.qry_pub.Open;
        end
        else
        begin
          DM_data.qry_pub.close;
          DM_data.qry_pub.sql.text := 'select * from sys_czy where 1<>1';
          DM_data.qry_pub.Open;
        end;
        if DM_data.qry_pub.IsEmpty then
        begin
        DM_data.qry_pub.close;
        DM_data.qry_pub.sql.text := 'select yytj from zybl_zyyz_dytjsz where dyxm=''输液计划单''';
        DM_data.qry_pub.Open;
        if DM_data.qry_pub.IsEmpty then
        begin
          v_yytj := '';
        end
        else
        begin
          DM_data.qry_pub.First;
          while not DM_data.qry_pub.eof do
          begin
            v_yytj := v_yytj + '(yytj<>' + '''' + DM_data.qry_pub.FieldByName( 'yytj' ).asstring + '''' + ' and yytj<>''口服''  and sx=''临时''  and kdbq =' + '''' + pub_bqdm +
               ''')' + ' and ';
            DM_data.qry_pub.Next;
          end;

        end;

  //      DM_data.qry_pub.close;
  //      DM_data.qry_pub.sql.text := 'select lbmc from zybl_zyyz_dylbsz where dyxm=''输液计划单''';
  //      DM_data.qry_pub.Open;
  //      if DM_data.qry_pub.IsEmpty then
  //      begin
  //        v_lb := '';
  //      end
  //      else
  //      begin
  //        DM_data.qry_pub.First;
  //        while not DM_data.qry_pub.eof do
  //        begin
  //          v_lb := v_lb + '(lb<>' + '''' + DM_data.qry_pub.FieldByName( 'lbmc' ).asstring + '''' + ' and sx=''临时'' and kdks=' + '''' + pub_ksdm +
  //             ''')' + ' and ';
  //          DM_data.qry_pub.Next;
  //        end;
  //
  //      end;

        if v_yytj + v_lb = '' then
        begin
          filter := ' 1<>1 ';
        end
        else
        begin
          filter := v_yytj + v_lb + ' ( xmmc <> ''%特殊情况注射%'' and  kdrq=' + '''' + formatdatetime( 'yyyy-MM-dd', frm_func.curr_date ) +''')';
        end;

        sp_syjhzxd.Filter := filter;

        sp_syjhzxd.Filtered := True;
        if sp_syjhzxd.IsEmpty then
        begin

        end
        else
        begin
  //        ChangePrinter_syjhd;
  //        frm_zysf_print_service.Printsyjhd( sp_sybr,sp_syjhzxd,FormatDateTime('yyyy-MM-dd',dt_zxsj.DateTime));
  //        RevertPrinter;
  //        ChangePrinter_syjhd;
  //        frm_zysf_print_service.Printsyjhd( sp_sybr,sp_syjhzxd,FormatDateTime('yyyy-MM-dd',dt_zxsj.DateTime));
  //        RevertPrinter;

          zxddy;
          DM_data.qry_pub.close;
//          DM_data.qry_pub.SQL.text:='update zybl_zyyz_yzzxqd with(rowlock) set syddy=1 from zybl_zyyz a,zybl_zyyz_yzzxqd b where a.zyh=b.zyh and '+
//          '  a.id=b.yzid and  '+'a.zyh='+''''+Trim( sp_sybr.fieldbyname( 'zyh' ).asstring )+
//          ''''+' and b.zxsj='+ ''''+FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+' and a.yzsx=''临时'''+
//          ' and a.yytj not in (select yytj from zybl_zyyz_dytjsz where dyxm=''口服药执行单'')'+
//          ' and a.yytj not in (select yytj from zybl_zyyz_dytjsz where dyxm=''输液计划单'')';
//          DM_data.qry_pub.ExecSQL;
          DM_data.qry_pub.SQL.text:='insert into zybl_zyyz_syddy '+
          'select id,'+''''+FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+' from zybl_zyyz where zxbz=1 and zyh='+''''+Trim( sp_sybr.fieldbyname( 'zyh' ).asstring )+
          ''''+' and yzsx=''临时'' and convert(varchar,kdrq,112)='+''''+
          FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+
          ' and yytj not in (select yytj from zybl_zyyz_dytjsz where dyxm=''口服药执行单'')'+
          ' and yytj not in (select yytj from zybl_zyyz_dytjsz where dyxm=''输液计划单'')'+
          ' and   id not in (select yzid from zybl_zyyz_syddy where dyrq='+''''+
          FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+')';
          DM_data.qry_pub.ExecSQL;
        end;
        end;
        sp_sybr.Next;
      end;
    end;
  end
  else   if (pub_yydm='0003') and (pub_bqdm='0030') and (PageControl1.ActivePageIndex=2)  then
  begin
    //口服药执行单
    if Application.MessageBox(pchar('你将打印选择病人的所有临时口服药单，是否确认打印？')
      , '询问', MB_OKCANCEL + MB_ICONQUESTION
      + MB_DEFBUTTON2) = IDCANCEL then
    begin
     Exit;
    end;
    sp_sybr.First;
    while not sp_sybr.eof do
    begin
      if sp_sybr.FieldByName('xzbz').AsBoolean=false then
      begin
        sp_sybr.Next;
      end
      else
      begin
        with sp_syjhzxd do
        begin
          Filtered := False;
          Close;
          Parameters.Refresh;
          Parameters.ParamByName( '@zyh' ).Value := Trim( sp_sybr.fieldbyname( 'zyh' ).asstring );
          Parameters.ParamByName( '@rq' ).Value := FormatDateTime('yyyyMMdd',dt_zxsj.DateTime);
          Parameters.ParamByName( '@fzph_zh' ).Value := '';
          Open;
        end;
        if (pub_yydm='0003')  then
        begin
          DM_data.qry_pub.close;
          DM_data.qry_pub.sql.text := 'select * from zybl_zyyz where zyh='+''''+ Trim( sp_sybr.fieldbyname( 'zyh' ).asstring )
          +''''+' and (xmmc like ''%皮试%'' or xmmc like ''%敏试%'') and charindex(''-'',xmmc)<1 and  charindex(''+'',xmmc)<1 and tzbz=0 and charindex(''阴'',xmmc)<1 and  charindex(''阳'',xmmc)<1';
          DM_data.qry_pub.Open;
        end
        else
        begin
          DM_data.qry_pub.close;
          DM_data.qry_pub.sql.text := 'select * from sys_czy where 1<>1';
          DM_data.qry_pub.Open;
        end;
        if DM_data.qry_pub.IsEmpty then
        begin
        DM_data.qry_pub.close;
        DM_data.qry_pub.sql.text := 'select yytj from zybl_zyyz_dytjsz where dyxm=''口服药执行单''';
        DM_data.qry_pub.Open;
        if DM_data.qry_pub.IsEmpty then
        begin
          v_yytj := '';
        end
        else
        begin
          DM_data.qry_pub.First;
          while not DM_data.qry_pub.eof do
          begin
            v_yytj := v_yytj + '(yytj=' + '''' + DM_data.qry_pub.FieldByName( 'yytj' ).asstring + '''' + ' and sx=''临时''  and kdbq =' + '''' + pub_bqdm +
               ''')' + ' and ';
            DM_data.qry_pub.Next;
          end;

        end;

  //      DM_data.qry_pub.close;
  //      DM_data.qry_pub.sql.text := 'select lbmc from zybl_zyyz_dylbsz where dyxm=''输液计划单''';
  //      DM_data.qry_pub.Open;
  //      if DM_data.qry_pub.IsEmpty then
  //      begin
  //        v_lb := '';
  //      end
  //      else
  //      begin
  //        DM_data.qry_pub.First;
  //        while not DM_data.qry_pub.eof do
  //        begin
  //          v_lb := v_lb + '(lb<>' + '''' + DM_data.qry_pub.FieldByName( 'lbmc' ).asstring + '''' + ' and sx=''临时'' and kdks=' + '''' + pub_ksdm +
  //             ''')' + ' and ';
  //          DM_data.qry_pub.Next;
  //        end;
  //
  //      end;

        if v_yytj + v_lb = '' then
        begin
          filter := ' 1<>1 ';
        end
        else
        begin
          filter := v_yytj + v_lb + ' ( xmmc <> ''%特殊情况注射%'' and  kdrq=' + '''' + formatdatetime( 'yyyy-MM-dd', frm_func.curr_date ) +''')';
        end;

        sp_syjhzxd.Filter := filter;

        sp_syjhzxd.Filtered := True;
        if sp_syjhzxd.IsEmpty then
        begin

        end
        else
        begin
  //        ChangePrinter_syjhd;
  //        frm_zysf_print_service.Printsyjhd( sp_sybr,sp_syjhzxd,FormatDateTime('yyyy-MM-dd',dt_zxsj.DateTime));
  //        RevertPrinter;
  //        ChangePrinter_syjhd;
  //        frm_zysf_print_service.Printsyjhd( sp_sybr,sp_syjhzxd,FormatDateTime('yyyy-MM-dd',dt_zxsj.DateTime));
  //        RevertPrinter;
          zxddy;
          DM_data.qry_pub.close;
//          DM_data.qry_pub.SQL.text:='update zybl_zyyz_yzzxqd with(rowlock) set syddy=1 from zybl_zyyz a,zybl_zyyz_yzzxqd b where a.zyh=b.zyh and '+
//          '  a.id=b.yzid and  '+'a.zyh='+''''+Trim( sp_sybr.fieldbyname( 'zyh' ).asstring )+
//          ''''+' and b.zxsj='+ ''''+FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+' and a.yzsx=''临时'''+
//          ' and a.yytj  in (select yytj from zybl_zyyz_dytjsz where dyxm=''口服药执行单'')';
//          DM_data.qry_pub.ExecSQL;
          DM_data.qry_pub.SQL.text:='insert into zybl_zyyz_syddy '+
          'select id,'+''''+FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+' from zybl_zyyz where zxbz=1 and zyh='+''''+Trim( sp_sybr.fieldbyname( 'zyh' ).asstring )+
          ''''+' and yzsx=''临时'' and convert(varchar,kdrq,112)='+''''+
          FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+
          ' and yytj  in (select yytj from zybl_zyyz_dytjsz where dyxm=''口服药执行单'')'+
          ' and   id not in (select yzid from zybl_zyyz_syddy where dyrq='+''''+
          FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+')';
          DM_data.qry_pub.ExecSQL;
        end;
        end;
        sp_sybr.Next;
      end;
    end;
  end
  else
  begin
    //普通执行单
    if Application.MessageBox(pchar('你将打印选择病人的所有临时执行单，是否确认打印？')
      , '询问', MB_OKCANCEL + MB_ICONQUESTION
      + MB_DEFBUTTON2) = IDCANCEL then
    begin
     Exit;
    end;
    sp_sybr.First;
    while not sp_sybr.eof do
    begin
      if sp_sybr.FieldByName('xzbz').AsBoolean=false then
      begin
        sp_sybr.Next;
      end
      else
      begin
        with sp_syjhzxd do
        begin
          Filtered := False;
          Close;
          Parameters.Refresh;
          Parameters.ParamByName( '@zyh' ).Value := Trim( sp_sybr.fieldbyname( 'zyh' ).asstring );
          Parameters.ParamByName( '@rq' ).Value := FormatDateTime('yyyyMMdd',dt_zxsj.DateTime);
          Parameters.ParamByName( '@fzph_zh' ).Value := '';
          Open;
        end;
        if (pub_yydm='0003')  then
        begin
          DM_data.qry_pub.close;
          DM_data.qry_pub.sql.text := 'select * from zybl_zyyz where zyh='+''''+ Trim( sp_sybr.fieldbyname( 'zyh' ).asstring )
          +''''+' and (xmmc like ''%皮试%'' or xmmc like ''%敏试%'') and charindex(''-'',xmmc)<1 and  charindex(''+'',xmmc)<1 and tzbz=0 and charindex(''阴'',xmmc)<1 and  charindex(''阳'',xmmc)<1';
          DM_data.qry_pub.Open;
        end
        else
        begin
          DM_data.qry_pub.close;
          DM_data.qry_pub.sql.text := 'select * from sys_czy where 1<>1';
          DM_data.qry_pub.Open;
        end;
        if DM_data.qry_pub.IsEmpty then
        begin
        DM_data.qry_pub.close;
        DM_data.qry_pub.sql.text := 'select yytj from zybl_zyyz_dytjsz where dyxm=''输液计划单''';
        DM_data.qry_pub.Open;
        if DM_data.qry_pub.IsEmpty then
        begin
          v_yytj := '';
        end
        else
        begin
          DM_data.qry_pub.First;
          while not DM_data.qry_pub.eof do
          begin
            v_yytj := v_yytj + '(yytj<>' + '''' + DM_data.qry_pub.FieldByName( 'yytj' ).asstring + '''' + ' and sx=''临时''  and kdbq =' + '''' + pub_bqdm +
               ''')' + ' and ';
            DM_data.qry_pub.Next;
          end;

        end;

  //      DM_data.qry_pub.close;
  //      DM_data.qry_pub.sql.text := 'select lbmc from zybl_zyyz_dylbsz where dyxm=''输液计划单''';
  //      DM_data.qry_pub.Open;
  //      if DM_data.qry_pub.IsEmpty then
  //      begin
  //        v_lb := '';
  //      end
  //      else
  //      begin
  //        DM_data.qry_pub.First;
  //        while not DM_data.qry_pub.eof do
  //        begin
  //          v_lb := v_lb + '(lb<>' + '''' + DM_data.qry_pub.FieldByName( 'lbmc' ).asstring + '''' + ' and sx=''临时'' and kdks=' + '''' + pub_ksdm +
  //             ''')' + ' and ';
  //          DM_data.qry_pub.Next;
  //        end;
  //
  //      end;

        if v_yytj + v_lb = '' then
        begin
          filter := ' 1<>1 ';
        end
        else
        begin
          filter := v_yytj + v_lb + ' ( xmmc <> ''%特殊情况注射%'' and  kdrq=' + '''' + formatdatetime( 'yyyy-MM-dd', frm_func.curr_date ) +''')';
        end;

        sp_syjhzxd.Filter := filter;

        sp_syjhzxd.Filtered := True;
        if sp_syjhzxd.IsEmpty then
        begin

        end
        else
        begin
  //        ChangePrinter_syjhd;
  //        frm_zysf_print_service.Printsyjhd( sp_sybr,sp_syjhzxd,FormatDateTime('yyyy-MM-dd',dt_zxsj.DateTime));
  //        RevertPrinter;
  //        ChangePrinter_syjhd;
  //        frm_zysf_print_service.Printsyjhd( sp_sybr,sp_syjhzxd,FormatDateTime('yyyy-MM-dd',dt_zxsj.DateTime));
  //        RevertPrinter;
           if pub_yydm='0271' then //荆门市掇刀人民医院
         begin
            frm_zysf_print_service.print_yzzxddy( sp_sybr,sp_syjhzxd,trim(formatdatetime('yyyy-MM-dd hh:mm',Frm_func.curr_date)));
         end
         else
          zxddy;
          DM_data.qry_pub.close;
//          DM_data.qry_pub.SQL.text:='update zybl_zyyz_yzzxqd with(rowlock) set syddy=1 from zybl_zyyz a,zybl_zyyz_yzzxqd b where a.zyh=b.zyh and '+
//          '  a.id=b.yzid and  '+'a.zyh='+''''+Trim( sp_sybr.fieldbyname( 'zyh' ).asstring )+
//          ''''+' and b.zxsj='+ ''''+FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+' and a.yzsx=''临时'''+
//          ' and a.yytj not in (select yytj from zybl_zyyz_dytjsz where dyxm=''输液计划单'')';
//          DM_data.qry_pub.ExecSQL;
          DM_data.qry_pub.close;
          DM_data.qry_pub.SQL.text:='insert into zybl_zyyz_syddy '+
          'select id,'+''''+FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+' from zybl_zyyz where zxbz=1 and  zyh='+''''+Trim( sp_sybr.fieldbyname( 'zyh' ).asstring )+
          ''''+' and yzsx=''临时'' and convert(varchar,kdrq,112)='+''''+
          FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+
          ' and yytj not in (select yytj from zybl_zyyz_dytjsz where dyxm=''输液计划单'')'+
          ' and   id not in (select yzid from zybl_zyyz_syddy where dyrq='+''''+
          FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+')';
          DM_data.qry_pub.ExecSQL;
        end;
        end;
        sp_sybr.Next;
      end;
    end;
  end;

end;

procedure Tfrm_hsdyzxd.MenuItem12Click(Sender: TObject);
var
  i, y, j, count, x: Integer;
  aControl: TControl;
  v_yytj, v_lb, filter: string;
begin
  if (pub_yydm='0003') and (pub_bqdm='0030') and (PageControl1.ActivePageIndex=1)  then
  begin
    //执行单
    if Application.MessageBox(pchar('你将打印左边勾选的病人的全部执行单，是否确认打印？')
      , '询问', MB_OKCANCEL + MB_ICONQUESTION
      + MB_DEFBUTTON2) = IDCANCEL then
    begin
     Exit;
    end;

    if sp_dryz_zsd.Active then
      createrect( myrect_cx, sp_dryz_zsd, dbgrideh4, 9, 10, 13 );
    sp_sybr.First;
    ChangePrinter_syjhd;
    while not sp_sybr.eof do
    begin
      if sp_sybr.FieldByName('xzbz').AsBoolean=false then
      begin
        sp_sybr.Next;
      end
      else
      begin
        with sp_syjhzxd do
        begin
          Filtered := False;
          Close;
          Parameters.Refresh;
          Parameters.ParamByName( '@zyh' ).Value := Trim( sp_sybr.fieldbyname( 'zyh' ).asstring );
          Parameters.ParamByName( '@rq' ).Value := FormatDateTime('yyyyMMdd',dt_zxsj.DateTime);
          Parameters.ParamByName( '@fzph_zh' ).Value := '';
          Open;
        end;
        if (pub_yydm='0003')  then
        begin
          DM_data.qry_pub.close;
          DM_data.qry_pub.sql.text := 'select * from zybl_zyyz where zyh='+''''+ Trim( sp_sybr.fieldbyname( 'zyh' ).asstring )
          +''''+' and (xmmc like ''%皮试%'' or xmmc like ''%敏试%'') and charindex(''-'',xmmc)<1 and  charindex(''+'',xmmc)<1 and tzbz=0 and charindex(''阴'',xmmc)<1 and  charindex(''阳'',xmmc)<1';
          DM_data.qry_pub.Open;
        end
        else
        begin
          DM_data.qry_pub.close;
          DM_data.qry_pub.sql.text := 'select * from sys_czy where 1<>1';
          DM_data.qry_pub.Open;
        end;
        if DM_data.qry_pub.IsEmpty then
        begin
        DM_data.qry_pub.close;
        DM_data.qry_pub.sql.text := 'select yytj from zybl_zyyz_dytjsz where dyxm=''输液计划单''';
        DM_data.qry_pub.Open;
        if DM_data.qry_pub.IsEmpty then
        begin
          v_yytj := '';
        end
        else
        begin
          DM_data.qry_pub.First;
          while not DM_data.qry_pub.eof do
          begin
            v_yytj := v_yytj + '(yytj<>' + '''' + DM_data.qry_pub.FieldByName( 'yytj' ).asstring + '''' + ' and yytj<>''口服''  and kdbq=' + '''' + pub_bqdm +
           ''')' + ' and ';
            DM_data.qry_pub.Next;
          end;

        end;

  //      DM_data.qry_pub.close;
  //      DM_data.qry_pub.sql.text := 'select lbmc from zybl_zyyz_dylbsz where dyxm=''注射计划单''';
  //      DM_data.qry_pub.Open;
  //      if DM_data.qry_pub.IsEmpty then
  //      begin
  //        v_lb := '';
  //      end
  //      else
  //      begin
  //        DM_data.qry_pub.First;
  //        while not DM_data.qry_pub.eof do
  //        begin
  //          v_lb := v_lb + '(lb=' + '''' + DM_data.qry_pub.FieldByName( 'lbmc' ).asstring + '''' + '  and kdks=' + '''' + pub_ksdm +
  //           ''')' + ' or ';
  //          DM_data.qry_pub.Next;
  //        end;
  //
  //      end;

        if v_yytj + v_lb = '' then
        begin
          filter := ' 1<>1 ';
        end
        else
        begin
          filter := v_yytj + v_lb + ' ( xmmc <> ''特殊情况的注射'' )';
        end;

        sp_syjhzxd.Filter := filter;

        sp_syjhzxd.Filtered := True;
        if not sp_syjhzxd.IsEmpty then
        begin
  //        ChangePrinter_syjhd;
  //        frm_zysf_print_service.Printsyjhd( sp_sybr,sp_syjhzxd,FormatDateTime('yyyy-MM-dd',dt_zxsj.DateTime));
  //        RevertPrinter;
  //        ChangePrinter_syjhd;
  //        frm_zysf_print_service.Printsyjhd( sp_sybr,sp_syjhzxd,FormatDateTime('yyyy-MM-dd',dt_zxsj.DateTime));
  //        RevertPrinter;
            zxddy;
            zxddy;
        end;
//        DM_data.qry_pub.close;
//        DM_data.qry_pub.SQL.text:='update zybl_zyyz_yzzxqd with(rowlock) set syddy=1 where zyh='+''''+Trim( sp_sybr.fieldbyname( 'zyh' ).asstring )+
//        ''''+' and zxsj='+ ''''+FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+' and yzid in '+
//        '(select id from zybl_zyyz where zyh='+''''+Trim( sp_sybr.fieldbyname( 'zyh' ).asstring )+''''+
//        ' and yytj not in (select yytj from zybl_zyyz_dytjsz where dyxm=''口服药执行单'')'+
//        ' and yytj not in (select yytj from zybl_zyyz_dytjsz where dyxm=''输液计划单''))';
//        DM_data.qry_pub.ExecSQL;
          DM_data.qry_pub.close;
          DM_data.qry_pub.SQL.text:='insert into zybl_zyyz_syddy '+
          'select id,'+''''+FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+' from zybl_zyyz where zxbz=1 and  zyh='+''''+Trim( sp_sybr.fieldbyname( 'zyh' ).asstring )+
          ''''+' and yytj not in (select yytj from zybl_zyyz_dytjsz where dyxm=''输液计划单'')'+
          ' and   id not in (select yzid from zybl_zyyz_syddy where dyrq='+''''+
          FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+')';
          DM_data.qry_pub.ExecSQL;
        end;
        sp_sybr.Next;
      end;
    end;

  end
  else   if (pub_yydm='0003') and (pub_bqdm='0030') and (PageControl1.ActivePageIndex=2)  then
  begin
    //口服单
    if Application.MessageBox(pchar('你将打印左边勾选的病人的全部口服药单，是否确认打印？')
      , '询问', MB_OKCANCEL + MB_ICONQUESTION
      + MB_DEFBUTTON2) = IDCANCEL then
    begin
     Exit;
    end;

    if sp_dryz_kfyd.Active then
      createrect( myrect_cx, sp_dryz_kfyd, dbgrideh6, 9, 10, 13 );
    sp_sybr.First;
    ChangePrinter_syjhd;
    while not sp_sybr.eof do
    begin
      if sp_sybr.FieldByName('xzbz').AsBoolean=false then
      begin
        sp_sybr.Next;
      end
      else
      begin
        with sp_syjhzxd do
        begin
          Filtered := False;
          Close;
          Parameters.Refresh;
          Parameters.ParamByName( '@zyh' ).Value := Trim( sp_sybr.fieldbyname( 'zyh' ).asstring );
          Parameters.ParamByName( '@rq' ).Value := FormatDateTime('yyyyMMdd',dt_zxsj.DateTime);
          Parameters.ParamByName( '@fzph_zh' ).Value := '';
          Open;
        end;
        if (pub_yydm='0003')  then
        begin
          DM_data.qry_pub.close;
          DM_data.qry_pub.sql.text := 'select * from zybl_zyyz where zyh='+''''+ Trim( sp_sybr.fieldbyname( 'zyh' ).asstring )
          +''''+' and (xmmc like ''%皮试%'' or xmmc like ''%敏试%'') and charindex(''-'',xmmc)<1 and  charindex(''+'',xmmc)<1 and tzbz=0 and charindex(''阴'',xmmc)<1 and  charindex(''阳'',xmmc)<1';
          DM_data.qry_pub.Open;
        end
        else
        begin
          DM_data.qry_pub.close;
          DM_data.qry_pub.sql.text := 'select * from sys_czy where 1<>1';
          DM_data.qry_pub.Open;
        end;
        if DM_data.qry_pub.IsEmpty then
        begin
        DM_data.qry_pub.close;
        DM_data.qry_pub.sql.text := 'select yytj from zybl_zyyz_dytjsz where dyxm=''口服药执行单''';
        DM_data.qry_pub.Open;
        if DM_data.qry_pub.IsEmpty then
        begin
          v_yytj := '';
        end
        else
        begin
          DM_data.qry_pub.First;
          while not DM_data.qry_pub.eof do
          begin
            v_yytj := v_yytj + '(yytj=' + '''' + DM_data.qry_pub.FieldByName( 'yytj' ).asstring + '''' + '  and kdbq=' + '''' + pub_bqdm +
           ''')' + ' and ';
            DM_data.qry_pub.Next;
          end;

        end;

  //      DM_data.qry_pub.close;
  //      DM_data.qry_pub.sql.text := 'select lbmc from zybl_zyyz_dylbsz where dyxm=''注射计划单''';
  //      DM_data.qry_pub.Open;
  //      if DM_data.qry_pub.IsEmpty then
  //      begin
  //        v_lb := '';
  //      end
  //      else
  //      begin
  //        DM_data.qry_pub.First;
  //        while not DM_data.qry_pub.eof do
  //        begin
  //          v_lb := v_lb + '(lb=' + '''' + DM_data.qry_pub.FieldByName( 'lbmc' ).asstring + '''' + '  and kdks=' + '''' + pub_ksdm +
  //           ''')' + ' or ';
  //          DM_data.qry_pub.Next;
  //        end;
  //
  //      end;

        if v_yytj + v_lb = '' then
        begin
          filter := ' 1<>1 ';
        end
        else
        begin
          filter := v_yytj + v_lb + ' ( xmmc <> ''特殊情况的注射'' )';
        end;

        sp_syjhzxd.Filter := filter;

        sp_syjhzxd.Filtered := True;
        if not sp_syjhzxd.IsEmpty then
        begin
  //        ChangePrinter_syjhd;
  //        frm_zysf_print_service.Printsyjhd( sp_sybr,sp_syjhzxd,FormatDateTime('yyyy-MM-dd',dt_zxsj.DateTime));
  //        RevertPrinter;
  //        ChangePrinter_syjhd;
  //        frm_zysf_print_service.Printsyjhd( sp_sybr,sp_syjhzxd,FormatDateTime('yyyy-MM-dd',dt_zxsj.DateTime));
  //        RevertPrinter;
          zxddy;
          zxddy;
        end;
//        DM_data.qry_pub.close;
//        DM_data.qry_pub.SQL.text:='update zybl_zyyz_yzzxqd with(rowlock) set syddy=1 where zyh='+''''+Trim( sp_sybr.fieldbyname( 'zyh' ).asstring )+
//        ''''+' and zxsj='+ ''''+FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+' and yzid in '+
//        '(select id from zybl_zyyz where zyh='+''''+Trim( sp_sybr.fieldbyname( 'zyh' ).asstring )+''''+
//        ' and yytj  in (select yytj from zybl_zyyz_dytjsz where dyxm=''口服药执行单''))';
//        DM_data.qry_pub.ExecSQL;
          DM_data.qry_pub.close;
          DM_data.qry_pub.SQL.text:='insert into zybl_zyyz_syddy '+
          'select id,'+''''+FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+' from zybl_zyyz where zxbz=1 and  zyh='+''''+Trim( sp_sybr.fieldbyname( 'zyh' ).asstring )+
          ''''+
          ' and yytj  in (select yytj from zybl_zyyz_dytjsz where dyxm=''口服药执行单'')'+
          ' and   id not in (select yzid from zybl_zyyz_syddy where dyrq='+''''+
          FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+')';
          DM_data.qry_pub.ExecSQL;
        end;
        sp_sybr.Next;
      end;
    end;
  end
  else
  begin
    //普通执行单
    if Application.MessageBox(pchar('你将打印左边勾选的病人的全部执行单，是否确认打印？')
      , '询问', MB_OKCANCEL + MB_ICONQUESTION
      + MB_DEFBUTTON2) = IDCANCEL then
    begin
     Exit;
    end;

    if sp_dryz_zsd.Active then
      createrect( myrect_cx, sp_dryz_zsd, dbgrideh4, 9, 10, 13 );
    sp_sybr.First;
    ChangePrinter_syjhd;
    while not sp_sybr.eof do
    begin
      if sp_sybr.FieldByName('xzbz').AsBoolean=false then
      begin
        sp_sybr.Next;
      end
      else
      begin
        with sp_syjhzxd do
        begin
          Filtered := False;
          Close;
          Parameters.Refresh;
          Parameters.ParamByName( '@zyh' ).Value := Trim( sp_sybr.fieldbyname( 'zyh' ).asstring );
          Parameters.ParamByName( '@rq' ).Value := FormatDateTime('yyyyMMdd',dt_zxsj.DateTime);
          Parameters.ParamByName( '@fzph_zh' ).Value := '';
          Open;
        end;
        if (pub_yydm='0003') then
        begin
          DM_data.qry_pub.close;
          DM_data.qry_pub.sql.text := 'select * from zybl_zyyz where zyh='+''''+ Trim( sp_sybr.fieldbyname( 'zyh' ).asstring )
          +''''+' and (xmmc like ''%皮试%'' or xmmc like ''%敏试%'') and charindex(''-'',xmmc)<1 and  charindex(''+'',xmmc)<1 and tzbz=0 and charindex(''阴'',xmmc)<1 and  charindex(''阳'',xmmc)<1';
          DM_data.qry_pub.Open;
        end
        else
        begin
          DM_data.qry_pub.close;
          DM_data.qry_pub.sql.text := 'select * from sys_czy where 1<>1';
          DM_data.qry_pub.Open;
        end;
        if DM_data.qry_pub.IsEmpty then
        begin
        DM_data.qry_pub.close;
        DM_data.qry_pub.sql.text := 'select yytj from zybl_zyyz_dytjsz where dyxm=''输液计划单''';
        DM_data.qry_pub.Open;
        if DM_data.qry_pub.IsEmpty then
        begin
          v_yytj := '';
        end
        else
        begin
          DM_data.qry_pub.First;
          while not DM_data.qry_pub.eof do
          begin
            v_yytj := v_yytj + '(yytj<>' + '''' + DM_data.qry_pub.FieldByName( 'yytj' ).asstring + '''' + '  and kdbq=' + '''' + pub_bqdm +
           ''')' + ' and ';
            DM_data.qry_pub.Next;
          end;

        end;

  //      DM_data.qry_pub.close;
  //      DM_data.qry_pub.sql.text := 'select lbmc from zybl_zyyz_dylbsz where dyxm=''注射计划单''';
  //      DM_data.qry_pub.Open;
  //      if DM_data.qry_pub.IsEmpty then
  //      begin
  //        v_lb := '';
  //      end
  //      else
  //      begin
  //        DM_data.qry_pub.First;
  //        while not DM_data.qry_pub.eof do
  //        begin
  //          v_lb := v_lb + '(lb=' + '''' + DM_data.qry_pub.FieldByName( 'lbmc' ).asstring + '''' + '  and kdks=' + '''' + pub_ksdm +
  //           ''')' + ' or ';
  //          DM_data.qry_pub.Next;
  //        end;
  //
  //      end;

        if v_yytj + v_lb = '' then
        begin
          filter := ' 1<>1 ';
        end
        else
        begin
          filter := v_yytj + v_lb + ' ( xmmc <> ''特殊情况的注射'' )';
        end;

        sp_syjhzxd.Filter := filter;

        sp_syjhzxd.Filtered := True;
        if not sp_syjhzxd.IsEmpty then
        begin
  //        ChangePrinter_syjhd;
  //        frm_zysf_print_service.Printsyjhd( sp_sybr,sp_syjhzxd,FormatDateTime('yyyy-MM-dd',dt_zxsj.DateTime));
  //        RevertPrinter;
  //        ChangePrinter_syjhd;
  //        frm_zysf_print_service.Printsyjhd( sp_sybr,sp_syjhzxd,FormatDateTime('yyyy-MM-dd',dt_zxsj.DateTime));
  //        RevertPrinter;
           if pub_yydm='0271' then //荆门市掇刀人民医院
           begin
              frm_zysf_print_service.print_yzzxddy( sp_sybr,sp_syjhzxd,trim(formatdatetime('yyyy-MM-dd hh:mm',Frm_func.curr_date)));
              frm_zysf_print_service.print_yzzxddy( sp_sybr,sp_syjhzxd,trim(formatdatetime('yyyy-MM-dd hh:mm',Frm_func.curr_date)));
           end
           else
           begin
            zxddy;
            zxddy;
           end;
        end;
//        DM_data.qry_pub.close;
//        DM_data.qry_pub.SQL.text:='update zybl_zyyz_yzzxqd with(rowlock) set syddy=1 where zyh='+''''+Trim( sp_sybr.fieldbyname( 'zyh' ).asstring )+
//        ''''+' and zxsj='+ ''''+FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+' and yzid in '+
//        '(select id from zybl_zyyz where zyh='+''''+Trim( sp_sybr.fieldbyname( 'zyh' ).asstring )+''''+
//        ' and yytj not in (select yytj from zybl_zyyz_dytjsz where dyxm=''输液计划单''))';
//        DM_data.qry_pub.ExecSQL;
          DM_data.qry_pub.close;
          DM_data.qry_pub.SQL.text:='insert into zybl_zyyz_syddy '+
          'select id,'+''''+FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+' from zybl_zyyz where zxbz=1 and  zyh='+''''+Trim( sp_sybr.fieldbyname( 'zyh' ).asstring )+
          ''''+
          ' and yytj  not in (select yytj from zybl_zyyz_dytjsz where dyxm=''输液计划单'')'+
          ' and   id not in (select yzid from zybl_zyyz_syddy where dyrq='+''''+
          FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+')';
          DM_data.qry_pub.ExecSQL;
        end;
        sp_sybr.Next;
      end;
    end;
  end;


end;

procedure Tfrm_hsdyzxd.MenuItem13Click(Sender: TObject);
var
  i, y, j, count, x: Integer;
  aControl: TControl;
  v_yytj, v_lb, filter: string;
begin
  if (pub_yydm='0003') and (pub_bqdm='0030') and (PageControl1.ActivePageIndex=1)  then
  begin
    //执行单
    if Application.MessageBox(pchar('你将打印左边勾选的病人的全部执行单，是否确认打印？')
      , '询问', MB_OKCANCEL + MB_ICONQUESTION
      + MB_DEFBUTTON2) = IDCANCEL then
    begin
     Exit;
    end;

    if sp_dryz_zsd.Active then
      createrect( myrect_cx, sp_dryz_zsd, dbgrideh4, 9, 10, 13 );
    sp_sybr.First;
    ChangePrinter_syjhd;
    while not sp_sybr.eof do
    begin
      if sp_sybr.FieldByName('xzbz').AsBoolean=false then
      begin
        sp_sybr.Next;
      end
      else
      begin
        with sp_syjhzxd do
        begin
          Filtered := False;
          Close;
          Parameters.Refresh;
          Parameters.ParamByName( '@zyh' ).Value := Trim( sp_sybr.fieldbyname( 'zyh' ).asstring );
          Parameters.ParamByName( '@rq' ).Value := FormatDateTime('yyyyMMdd',dt_zxsj.DateTime);
          Parameters.ParamByName( '@fzph_zh' ).Value := '';
          Open;
        end;
        if (pub_yydm='0003') then
        begin
          DM_data.qry_pub.close;
          DM_data.qry_pub.sql.text := 'select * from zybl_zyyz where zyh='+''''+ Trim( sp_sybr.fieldbyname( 'zyh' ).asstring )
          +''''+' and (xmmc like ''%皮试%'' or xmmc like ''%敏试%'') and charindex(''-'',xmmc)<1 and  charindex(''+'',xmmc)<1 and tzbz=0 and charindex(''阴'',xmmc)<1 and  charindex(''阳'',xmmc)<1';
          DM_data.qry_pub.Open;
        end
        else
        begin
          DM_data.qry_pub.close;
          DM_data.qry_pub.sql.text := 'select * from sys_czy where 1<>1';
          DM_data.qry_pub.Open;
        end;
        if DM_data.qry_pub.IsEmpty then
        begin
        DM_data.qry_pub.close;
        DM_data.qry_pub.sql.text := 'select yytj from zybl_zyyz_dytjsz where dyxm=''输液计划单''';
        DM_data.qry_pub.Open;
        if DM_data.qry_pub.IsEmpty then
        begin
          v_yytj := '';
        end
        else
        begin
          DM_data.qry_pub.First;
          while not DM_data.qry_pub.eof do
          begin
            v_yytj := v_yytj + '(yytj<>' + '''' + DM_data.qry_pub.FieldByName( 'yytj' ).asstring + '''' + ' and yytj<>''口服''  and kdbq=' + '''' + pub_bqdm +
           ''')' + ' and ';
            DM_data.qry_pub.Next;
          end;

        end;

  //      DM_data.qry_pub.close;
  //      DM_data.qry_pub.sql.text := 'select lbmc from zybl_zyyz_dylbsz where dyxm=''注射计划单''';
  //      DM_data.qry_pub.Open;
  //      if DM_data.qry_pub.IsEmpty then
  //      begin
  //        v_lb := '';
  //      end
  //      else
  //      begin
  //        DM_data.qry_pub.First;
  //        while not DM_data.qry_pub.eof do
  //        begin
  //          v_lb := v_lb + '(lb=' + '''' + DM_data.qry_pub.FieldByName( 'lbmc' ).asstring + '''' + '  and kdks=' + '''' + pub_ksdm +
  //           ''')' + ' or ';
  //          DM_data.qry_pub.Next;
  //        end;
  //
  //      end;

        if v_yytj + v_lb = '' then
        begin
          filter := ' 1<>1 ';
        end
        else
        begin
          filter := v_yytj + v_lb + ' ( xmmc <> ''特殊情况的注射'' )';
        end;

        sp_syjhzxd.Filter := filter;

        sp_syjhzxd.Filtered := True;
        if not sp_syjhzxd.IsEmpty then
        begin
  //        ChangePrinter_syjhd;
  //        frm_zysf_print_service.Printsyjhd( sp_sybr,sp_syjhzxd,FormatDateTime('yyyy-MM-dd',dt_zxsj.DateTime));
  //        RevertPrinter;
  //        ChangePrinter_syjhd;
  //        frm_zysf_print_service.Printsyjhd( sp_sybr,sp_syjhzxd,FormatDateTime('yyyy-MM-dd',dt_zxsj.DateTime));
  //        RevertPrinter;

          zxddy;
        end;
//        DM_data.qry_pub.close;
//        DM_data.qry_pub.SQL.text:='update zybl_zyyz_yzzxqd with(rowlock) set syddy=1 where zyh='+''''+Trim( sp_sybr.fieldbyname( 'zyh' ).asstring )+
//        ''''+' and zxsj='+ ''''+FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+' and yzid in '+
//        '(select id from zybl_zyyz where zyh='+''''+Trim( sp_sybr.fieldbyname( 'zyh' ).asstring )+''''+
//        ' and yytj not in (select yytj from zybl_zyyz_dytjsz where dyxm=''口服药执行单'')'+
//        ' and yytj not in (select yytj from zybl_zyyz_dytjsz where dyxm=''输液计划单''))';
//        DM_data.qry_pub.ExecSQL;
          DM_data.qry_pub.close;
          DM_data.qry_pub.SQL.text:='insert into zybl_zyyz_syddy '+
          'select id,'+''''+FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+' from zybl_zyyz where zxbz=1 and  zyh='+''''+Trim( sp_sybr.fieldbyname( 'zyh' ).asstring )+
          ''''+
          ' and yytj  not in (select yytj from zybl_zyyz_dytjsz where dyxm=''口服药执行单'')'+
          ' and yytj  not in (select yytj from zybl_zyyz_dytjsz where dyxm=''输液计划单'')'+
          ' and   id not in (select yzid from zybl_zyyz_syddy where dyrq='+''''+
          FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+')';
          DM_data.qry_pub.ExecSQL;
        end;
        sp_sybr.Next;
      end;
    end;

  end
  else   if (pub_yydm='0003') and (pub_bqdm='0030') and (PageControl1.ActivePageIndex=2)  then
  begin
    //口服单
    if Application.MessageBox(pchar('你将打印左边勾选的病人的全部口服药单，是否确认打印？')
      , '询问', MB_OKCANCEL + MB_ICONQUESTION
      + MB_DEFBUTTON2) = IDCANCEL then
    begin
     Exit;
    end;

    if sp_dryz_kfyd.Active then
      createrect( myrect_cx, sp_dryz_kfyd, dbgrideh6, 9, 10, 13 );
    sp_sybr.First;
    ChangePrinter_syjhd;
    while not sp_sybr.eof do
    begin
      if sp_sybr.FieldByName('xzbz').AsBoolean=false then
      begin
        sp_sybr.Next;
      end
      else
      begin
        with sp_syjhzxd do
        begin
          Filtered := False;
          Close;
          Parameters.Refresh;
          Parameters.ParamByName( '@zyh' ).Value := Trim( sp_sybr.fieldbyname( 'zyh' ).asstring );
          Parameters.ParamByName( '@rq' ).Value := FormatDateTime('yyyyMMdd',dt_zxsj.DateTime);
          Parameters.ParamByName( '@fzph_zh' ).Value := '';
          Open;
        end;
        if (pub_yydm='0003')  then
        begin
          DM_data.qry_pub.close;
          DM_data.qry_pub.sql.text := 'select * from zybl_zyyz where zyh='+''''+ Trim( sp_sybr.fieldbyname( 'zyh' ).asstring )
          +''''+' and (xmmc like ''%皮试%'' or xmmc like ''%敏试%'') and charindex(''-'',xmmc)<1 and  charindex(''+'',xmmc)<1 and tzbz=0 and charindex(''阴'',xmmc)<1 and  charindex(''阳'',xmmc)<1';
          DM_data.qry_pub.Open;
        end
        else
        begin
          DM_data.qry_pub.close;
          DM_data.qry_pub.sql.text := 'select * from sys_czy where 1<>1';
          DM_data.qry_pub.Open;
        end;
        if DM_data.qry_pub.IsEmpty then
        begin
        DM_data.qry_pub.close;
        DM_data.qry_pub.sql.text := 'select yytj from zybl_zyyz_dytjsz where dyxm=''口服药执行单''';
        DM_data.qry_pub.Open;
        if DM_data.qry_pub.IsEmpty then
        begin
          v_yytj := '';
        end
        else
        begin
          DM_data.qry_pub.First;
          while not DM_data.qry_pub.eof do
          begin
            v_yytj := v_yytj + '(yytj=' + '''' + DM_data.qry_pub.FieldByName( 'yytj' ).asstring + '''' + '  and kdbq=' + '''' + pub_bqdm +
           ''')' + ' and ';
            DM_data.qry_pub.Next;
          end;

        end;

  //      DM_data.qry_pub.close;
  //      DM_data.qry_pub.sql.text := 'select lbmc from zybl_zyyz_dylbsz where dyxm=''注射计划单''';
  //      DM_data.qry_pub.Open;
  //      if DM_data.qry_pub.IsEmpty then
  //      begin
  //        v_lb := '';
  //      end
  //      else
  //      begin
  //        DM_data.qry_pub.First;
  //        while not DM_data.qry_pub.eof do
  //        begin
  //          v_lb := v_lb + '(lb=' + '''' + DM_data.qry_pub.FieldByName( 'lbmc' ).asstring + '''' + '  and kdks=' + '''' + pub_ksdm +
  //           ''')' + ' or ';
  //          DM_data.qry_pub.Next;
  //        end;
  //
  //      end;

        if v_yytj + v_lb = '' then
        begin
          filter := ' 1<>1 ';
        end
        else
        begin
          filter := v_yytj + v_lb + ' ( xmmc <> ''特殊情况的注射'' )';
        end;

        sp_syjhzxd.Filter := filter;

        sp_syjhzxd.Filtered := True;
        if not sp_syjhzxd.IsEmpty then
        begin
  //        ChangePrinter_syjhd;
  //        frm_zysf_print_service.Printsyjhd( sp_sybr,sp_syjhzxd,FormatDateTime('yyyy-MM-dd',dt_zxsj.DateTime));
  //        RevertPrinter;
  //        ChangePrinter_syjhd;
  //        frm_zysf_print_service.Printsyjhd( sp_sybr,sp_syjhzxd,FormatDateTime('yyyy-MM-dd',dt_zxsj.DateTime));
  //        RevertPrinter;
          zxddy;
        end;
//        DM_data.qry_pub.close;
//        DM_data.qry_pub.SQL.text:='update zybl_zyyz_yzzxqd with(rowlock) set syddy=1 where zyh='+''''+Trim( sp_sybr.fieldbyname( 'zyh' ).asstring )+
//        ''''+' and zxsj='+ ''''+FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+' and yzid in '+
//        '(select id from zybl_zyyz where zyh='+''''+Trim( sp_sybr.fieldbyname( 'zyh' ).asstring )+''''+
//        ' and yytj  in (select yytj from zybl_zyyz_dytjsz where dyxm=''口服药执行单''))';
//        DM_data.qry_pub.ExecSQL;
          DM_data.qry_pub.close;
          DM_data.qry_pub.SQL.text:='insert into zybl_zyyz_syddy '+
          'select id,'+''''+FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+' from zybl_zyyz where zxbz=1 and  zyh='+''''+Trim( sp_sybr.fieldbyname( 'zyh' ).asstring )+
          ''''+
          ' and yytj  in (select yytj from zybl_zyyz_dytjsz where dyxm=''口服药执行单'')'+
          ' and   id not in (select yzid from zybl_zyyz_syddy where dyrq='+''''+
          FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+')';
          DM_data.qry_pub.ExecSQL;
        end;
        sp_sybr.Next;
      end;
    end;
  end
  else
  begin
    //普通执行单
    if Application.MessageBox(pchar('你将打印左边勾选的病人的全部执行单，是否确认打印？')
      , '询问', MB_OKCANCEL + MB_ICONQUESTION
      + MB_DEFBUTTON2) = IDCANCEL then
    begin
     Exit;
    end;

    if sp_dryz_zsd.Active then
      createrect( myrect_cx, sp_dryz_zsd, dbgrideh4, 9, 10, 13 );
    sp_sybr.First;
    ChangePrinter_syjhd;
    while not sp_sybr.eof do
    begin
      if sp_sybr.FieldByName('xzbz').AsBoolean=false then
      begin
        sp_sybr.Next;
      end
      else
      begin
        with sp_syjhzxd do
        begin
          Filtered := False;
          Close;
          Parameters.Refresh;
          Parameters.ParamByName( '@zyh' ).Value := Trim( sp_sybr.fieldbyname( 'zyh' ).asstring );
          Parameters.ParamByName( '@rq' ).Value := FormatDateTime('yyyyMMdd',dt_zxsj.DateTime);
          Parameters.ParamByName( '@fzph_zh' ).Value := '';
          Open;
        end;
        if (pub_yydm='0003')  then
        begin
          DM_data.qry_pub.close;
          DM_data.qry_pub.sql.text := 'select * from zybl_zyyz where zyh='+''''+ Trim( sp_sybr.fieldbyname( 'zyh' ).asstring )
          +''''+' and (xmmc like ''%皮试%'' or xmmc like ''%敏试%'') and charindex(''-'',xmmc)<1 and  charindex(''+'',xmmc)<1 and tzbz=0 and charindex(''阴'',xmmc)<1 and  charindex(''阳'',xmmc)<1';
          DM_data.qry_pub.Open;
        end
        else
        begin
          DM_data.qry_pub.close;
          DM_data.qry_pub.sql.text := 'select * from sys_czy where 1<>1';
          DM_data.qry_pub.Open;
        end;
        if DM_data.qry_pub.IsEmpty then
        begin
        DM_data.qry_pub.close;
        DM_data.qry_pub.sql.text := 'select yytj from zybl_zyyz_dytjsz where dyxm=''输液计划单''';
        DM_data.qry_pub.Open;
        if DM_data.qry_pub.IsEmpty then
        begin
          v_yytj := '';
        end
        else
        begin
          DM_data.qry_pub.First;
          while not DM_data.qry_pub.eof do
          begin
            v_yytj := v_yytj + '(yytj<>' + '''' + DM_data.qry_pub.FieldByName( 'yytj' ).asstring + '''' + '  and kdbq=' + '''' + pub_bqdm +
           ''')' + ' and ';
            DM_data.qry_pub.Next;
          end;

        end;

  //      DM_data.qry_pub.close;
  //      DM_data.qry_pub.sql.text := 'select lbmc from zybl_zyyz_dylbsz where dyxm=''注射计划单''';
  //      DM_data.qry_pub.Open;
  //      if DM_data.qry_pub.IsEmpty then
  //      begin
  //        v_lb := '';
  //      end
  //      else
  //      begin
  //        DM_data.qry_pub.First;
  //        while not DM_data.qry_pub.eof do
  //        begin
  //          v_lb := v_lb + '(lb=' + '''' + DM_data.qry_pub.FieldByName( 'lbmc' ).asstring + '''' + '  and kdks=' + '''' + pub_ksdm +
  //           ''')' + ' or ';
  //          DM_data.qry_pub.Next;
  //        end;
  //
  //      end;

        if v_yytj + v_lb = '' then
        begin
          filter := ' 1<>1 ';
        end
        else
        begin
          filter := v_yytj + v_lb + ' ( xmmc <> ''特殊情况的注射'' )';
        end;

        sp_syjhzxd.Filter := filter;

        sp_syjhzxd.Filtered := True;
        if not sp_syjhzxd.IsEmpty then
        begin
  //        ChangePrinter_syjhd;
  //        frm_zysf_print_service.Printsyjhd( sp_sybr,sp_syjhzxd,FormatDateTime('yyyy-MM-dd',dt_zxsj.DateTime));
  //        RevertPrinter;
  //        ChangePrinter_syjhd;
  //        frm_zysf_print_service.Printsyjhd( sp_sybr,sp_syjhzxd,FormatDateTime('yyyy-MM-dd',dt_zxsj.DateTime));
  //        RevertPrinter;
         if pub_yydm='0271' then //荆门市掇刀人民医院
         begin
            frm_zysf_print_service.print_yzzxddy( sp_sybr,sp_syjhzxd,trim(formatdatetime('yyyy-MM-dd hh:mm',Frm_func.curr_date)));
         end
         else
          zxddy;
        end;
//        DM_data.qry_pub.close;
//        DM_data.qry_pub.SQL.text:='update zybl_zyyz_yzzxqd with(rowlock) set syddy=1 where zyh='+''''+Trim( sp_sybr.fieldbyname( 'zyh' ).asstring )+
//        ''''+' and zxsj='+ ''''+FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+' and yzid in '+
//        '(select id from zybl_zyyz where zyh='+''''+Trim( sp_sybr.fieldbyname( 'zyh' ).asstring )+''''+
//        ' and yytj not in (select yytj from zybl_zyyz_dytjsz where dyxm=''输液计划单''))';
//        DM_data.qry_pub.ExecSQL;
          DM_data.qry_pub.close;
          DM_data.qry_pub.SQL.text:='insert into zybl_zyyz_syddy '+
          'select id,'+''''+FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+' from zybl_zyyz where zxbz=1 and  zyh='+''''+Trim( sp_sybr.fieldbyname( 'zyh' ).asstring )+
          ''''+
          ' and yytj  not in (select yytj from zybl_zyyz_dytjsz where dyxm=''输液计划单'')'+
          ' and   id not in (select yzid from zybl_zyyz_syddy where dyrq='+''''+
          FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+')';
          DM_data.qry_pub.ExecSQL;
        end;
        sp_sybr.Next;
      end;
    end;
  end;


end;

procedure Tfrm_hsdyzxd.MenuItem14Click(Sender: TObject);
var
  i, y, j, count, x: Integer;
  aControl: TControl;
  v_yytj, v_lb, filter,fzzfc,x_zyh,zh: string;
begin
  if (pub_yydm='0003') and (pub_bqdm='0030') and (PageControl1.ActivePageIndex=1)  then
  begin
    //执行单
    if Application.MessageBox(pchar('你将打印右边勾选的执行单，是否确认打印？')
      , '询问', MB_OKCANCEL + MB_ICONQUESTION
      + MB_DEFBUTTON2) = IDCANCEL then
    begin
     Exit;
    end;
    sp_dryz_zsd.DisableControls;
    sp_dryz_zsd.First;
    while not sp_dryz_zsd.eof do
    begin
      if (sp_dryz_zsd.FieldByName('xzbz').AsBoolean=true) and (Pos(sp_dryz_zsd.FieldByName('zyh').AsString,fzzfc)<1) then
      begin
        fzzfc:=fzzfc+sp_dryz_zsd.FieldByName('zyh').AsString+',';
      end;
      sp_dryz_zsd.Next;
    end;
    if fzzfc='' then
    begin
      Application.MessageBox('你未选择项目打印！', '警告', MB_OK +
        MB_ICONWARNING);
      Exit;
    end;
    if sp_dryz_zsd.Active then
      createrect( myrect_cx, sp_dryz_zsd, dbgrideh4, 9, 10, 13 );
    sp_sybr.First;
    ChangePrinter_syjhd;
    while Pos(',',fzzfc)>0 do
    begin
        zh:='';
        x_zyh:=Copy(fzzfc,1,Pos(',',fzzfc)-1);
        sp_dryz_zsd.First;
        while not sp_dryz_zsd.eof do
        begin
          if (sp_dryz_zsd.FieldByName('xzbz').AsBoolean=true) and (sp_dryz_zsd.FieldByName('zyh').AsString=x_zyh) and
             (Pos(sp_dryz_zsd.FieldByName('fzph').AsString,zh)<1)  then
          begin
            if Trim(sp_dryz_zsd.FieldByName('fzph').AsString)<>'' then
              zh:=zh+trim(sp_dryz_zsd.FieldByName('fzph').AsString)+','
            else
              zh:=zh+trim(sp_dryz_zsd.FieldByName('yzid').AsString)+',';
          end
          else
          begin

          end;
          sp_dryz_zsd.Next;
        end;
        with sp_syjhzxd do
        begin
          Filtered := False;
          Close;
          Parameters.Refresh;
          Parameters.ParamByName( '@zyh' ).Value := x_zyh;
          Parameters.ParamByName( '@rq' ).Value := FormatDateTime('yyyyMMdd',dt_zxsj.DateTime);
          Parameters.ParamByName( '@fzph_zh' ).Value := zh;
          Open;
        end;
        if (pub_yydm='0003')  then
        begin
          DM_data.qry_pub.close;
          DM_data.qry_pub.sql.text := 'select * from zybl_zyyz where zyh='+''''+ Trim( sp_dryz_zsd.fieldbyname( 'zyh' ).asstring )
          +''''+' and (xmmc like ''%皮试%'' or xmmc like ''%敏试%'') and charindex(''-'',xmmc)<1 and  charindex(''+'',xmmc)<1 and tzbz=0 and charindex(''阴'',xmmc)<1 and  charindex(''阳'',xmmc)<1';
          DM_data.qry_pub.Open;
        end
        else
        begin
          DM_data.qry_pub.close;
          DM_data.qry_pub.sql.text := 'select * from sys_czy where 1<>1';
          DM_data.qry_pub.Open;
        end;
        if DM_data.qry_pub.IsEmpty then
        begin
        DM_data.qry_pub.close;
        DM_data.qry_pub.sql.text := 'select yytj from zybl_zyyz_dytjsz where dyxm=''输液计划单''';
        DM_data.qry_pub.Open;
        if DM_data.qry_pub.IsEmpty then
        begin
          v_yytj := '';
        end
        else
        begin
          DM_data.qry_pub.First;
          while not DM_data.qry_pub.eof do
          begin
            v_yytj := v_yytj + '(yytj<>' + '''' + DM_data.qry_pub.FieldByName( 'yytj' ).asstring + '''' + ' and yytj<>''口服'' and kdbq=' + '''' + pub_bqdm +
           ''')' + ' and ';
            DM_data.qry_pub.Next;
          end;

        end;

  //      DM_data.qry_pub.close;
  //      DM_data.qry_pub.sql.text := 'select lbmc from zybl_zyyz_dylbsz where dyxm=''注射计划单''';
  //      DM_data.qry_pub.Open;
  //      if DM_data.qry_pub.IsEmpty then
  //      begin
  //        v_lb := '';
  //      end
  //      else
  //      begin
  //        DM_data.qry_pub.First;
  //        while not DM_data.qry_pub.eof do
  //        begin
  //          v_lb := v_lb + '(lb=' + '''' + DM_data.qry_pub.FieldByName( 'lbmc' ).asstring + '''' + '  and kdks=' + '''' + pub_ksdm +
  //           ''')' + ' or ';
  //          DM_data.qry_pub.Next;
  //        end;
  //
  //      end;

        if v_yytj + v_lb = '' then
        begin
          filter := ' 1<>1 ';
        end
        else
        begin
          filter := v_yytj + v_lb + ' ( xmmc <> ''特殊注射单'' )';
        end;

        sp_syjhzxd.Filter := filter;

        sp_syjhzxd.Filtered := True;
        sp_sybr.DisableControls;
        sp_sybr.Locate('zyh',x_zyh,[]);
        sp_sybr.EnableControls;
        if not sp_syjhzxd.IsEmpty then
        begin
  //        ChangePrinter_syjhd;
  //        frm_zysf_print_service.Printsyjhd( sp_sybr,sp_syjhzxd,FormatDateTime('yyyy-MM-dd',dt_zxsj.DateTime));
  //        RevertPrinter;
  //        ChangePrinter_syjhd;
  //        frm_zysf_print_service.Printsyjhd( sp_sybr,sp_syjhzxd,FormatDateTime('yyyy-MM-dd',dt_zxsj.DateTime));
  //        RevertPrinter;

            zxddy;
        end;
//        DM_data.qry_pub.close;
//        DM_data.qry_pub.SQL.text:='update zybl_zyyz_yzzxqd with(rowlock) set syddy=1 from zybl_zyyz a,zybl_zyyz_yzzxqd b where a.zyh=b.zyh and '+
//        '  a.id=b.yzid and  '+'a.zyh='+''''+Trim( sp_sybr.fieldbyname( 'zyh' ).asstring )+
//        ''''+' and b.zxsj='+ ''''+FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+' and (charindex(a.fzph,'+''''+
//        zh+''''+')>0 or charindex('',''+convert(varchar,a.id)+'','','',''+'+''''+zh+''''+')>0)';
//        DM_data.qry_pub.ExecSQL;
          DM_data.qry_pub.close;
          DM_data.qry_pub.SQL.text:='insert into zybl_zyyz_syddy '+
          'select id,'+''''+FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+' from zybl_zyyz where zxbz=1 and  zyh='+''''+Trim( sp_sybr.fieldbyname( 'zyh' ).asstring )+
          ''''+
          ' and   id not in (select yzid from zybl_zyyz_syddy where dyrq='+''''+
          FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+')'+' and (charindex(fzph,'+''''+
          zh+''''+')>0 or charindex('',''+convert(varchar,id)+'','','',''+'+''''+zh+''''+')>0)';
          DM_data.qry_pub.ExecSQL;
        end;
        fzzfc:=Copy(fzzfc,Pos(',',fzzfc)+1);
    end;
    sp_dryz_zsd.EnableControls;
  end
  else if (pub_yydm='0003') and (pub_bqdm='0030') and (PageControl1.ActivePageIndex=2)  then
  begin
    //口服药
    if Application.MessageBox(pchar('你将打印右边勾选的口服药单，是否确认打印？')
      , '询问', MB_OKCANCEL + MB_ICONQUESTION
      + MB_DEFBUTTON2) = IDCANCEL then
    begin
     Exit;
    end;
    sp_dryz_kfyd.DisableControls;
    sp_dryz_kfyd.First;
    while not sp_dryz_kfyd.eof do
    begin
      if (sp_dryz_kfyd.FieldByName('xzbz').AsBoolean=true) and (Pos(sp_dryz_kfyd.FieldByName('zyh').AsString,fzzfc)<1) then
      begin
        fzzfc:=fzzfc+sp_dryz_kfyd.FieldByName('zyh').AsString+',';
      end;
      sp_dryz_kfyd.Next;
    end;
    if fzzfc='' then
    begin
      Application.MessageBox('你未选择项目打印！', '警告', MB_OK +
        MB_ICONWARNING);
      Exit;
    end;
    if sp_dryz_kfyd.Active then
      createrect( myrect_cx, sp_dryz_kfyd, dbgrideh6, 9, 10, 13 );
    sp_sybr.First;
    ChangePrinter_syjhd;
    while Pos(',',fzzfc)>0 do
    begin
        zh:='';
        x_zyh:=Copy(fzzfc,1,Pos(',',fzzfc)-1);
        sp_dryz_kfyd.First;
        while not sp_dryz_kfyd.eof do
        begin
          if (sp_dryz_kfyd.FieldByName('xzbz').AsBoolean=true) and (sp_dryz_kfyd.FieldByName('zyh').AsString=x_zyh) and
             (Pos(sp_dryz_kfyd.FieldByName('fzph').AsString,zh)<1)  then
          begin
            if Trim(sp_dryz_kfyd.FieldByName('fzph').AsString)<>'' then
              zh:=zh+trim(sp_dryz_kfyd.FieldByName('fzph').AsString)+','
            else
              zh:=zh+trim(sp_dryz_kfyd.FieldByName('yzid').AsString)+',';
          end
          else
          begin

          end;
          sp_dryz_kfyd.Next;
        end;
        with sp_syjhzxd do
        begin
          Filtered := False;
          Close;
          Parameters.Refresh;
          Parameters.ParamByName( '@zyh' ).Value := x_zyh;
          Parameters.ParamByName( '@rq' ).Value := FormatDateTime('yyyyMMdd',dt_zxsj.DateTime);
          Parameters.ParamByName( '@fzph_zh' ).Value := zh;
          Open;
        end;
        if (pub_yydm='0003')  then
        begin
          DM_data.qry_pub.close;
          DM_data.qry_pub.sql.text := 'select * from zybl_zyyz where zyh='+''''+ Trim( sp_dryz_kfyd.fieldbyname( 'zyh' ).asstring )
          +''''+' and (xmmc like ''%皮试%'' or xmmc like ''%敏试%'') and charindex(''-'',xmmc)<1 and  charindex(''+'',xmmc)<1 and tzbz=0 and charindex(''阴'',xmmc)<1 and  charindex(''阳'',xmmc)<1';
          DM_data.qry_pub.Open;
        end
        else
        begin
          DM_data.qry_pub.close;
          DM_data.qry_pub.sql.text := 'select * from sys_czy where 1<>1';
          DM_data.qry_pub.Open;
        end;
        if DM_data.qry_pub.IsEmpty then
        begin
        DM_data.qry_pub.close;
        DM_data.qry_pub.sql.text := 'select yytj from zybl_zyyz_dytjsz where dyxm=''口服药执行单''';
        DM_data.qry_pub.Open;
        if DM_data.qry_pub.IsEmpty then
        begin
          v_yytj := '';
        end
        else
        begin
          DM_data.qry_pub.First;
          while not DM_data.qry_pub.eof do
          begin
            v_yytj := v_yytj + '(yytj=' + '''' + DM_data.qry_pub.FieldByName( 'yytj' ).asstring + '''' + '  and kdbq=' + '''' + pub_bqdm +
           ''')' + ' and ';
            DM_data.qry_pub.Next;
          end;

        end;

  //      DM_data.qry_pub.close;
  //      DM_data.qry_pub.sql.text := 'select lbmc from zybl_zyyz_dylbsz where dyxm=''注射计划单''';
  //      DM_data.qry_pub.Open;
  //      if DM_data.qry_pub.IsEmpty then
  //      begin
  //        v_lb := '';
  //      end
  //      else
  //      begin
  //        DM_data.qry_pub.First;
  //        while not DM_data.qry_pub.eof do
  //        begin
  //          v_lb := v_lb + '(lb=' + '''' + DM_data.qry_pub.FieldByName( 'lbmc' ).asstring + '''' + '  and kdks=' + '''' + pub_ksdm +
  //           ''')' + ' or ';
  //          DM_data.qry_pub.Next;
  //        end;
  //
  //      end;

        if v_yytj + v_lb = '' then
        begin
          filter := ' 1<>1 ';
        end
        else
        begin
          filter := v_yytj + v_lb + ' ( xmmc <> ''特殊注射单'' )';
        end;

        sp_syjhzxd.Filter := filter;

        sp_syjhzxd.Filtered := True;
        sp_sybr.DisableControls;
        sp_sybr.Locate('zyh',x_zyh,[]);
        sp_sybr.EnableControls;
        if not sp_syjhzxd.IsEmpty then
        begin
  //        ChangePrinter_syjhd;
  //        frm_zysf_print_service.Printsyjhd( sp_sybr,sp_syjhzxd,FormatDateTime('yyyy-MM-dd',dt_zxsj.DateTime));
  //        RevertPrinter;
  //        ChangePrinter_syjhd;
  //        frm_zysf_print_service.Printsyjhd( sp_sybr,sp_syjhzxd,FormatDateTime('yyyy-MM-dd',dt_zxsj.DateTime));
  //        RevertPrinter;
            zxddy;
            zxddy;
        end;
//        DM_data.qry_pub.close;
//        DM_data.qry_pub.SQL.text:='update zybl_zyyz_yzzxqd with(rowlock) set syddy=1 from zybl_zyyz a,zybl_zyyz_yzzxqd b where a.zyh=b.zyh and '+
//        '  a.id=b.yzid and  '+'a.zyh='+''''+Trim( sp_sybr.fieldbyname( 'zyh' ).asstring )+
//        ''''+' and b.zxsj='+ ''''+FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+' and (charindex(a.fzph,'+''''+
//        zh+''''+')>0 or charindex('',''+convert(varchar,a.id)+'','','',''+'+''''+zh+''''+')>0)';
//        DM_data.qry_pub.ExecSQL;
          DM_data.qry_pub.close;
          DM_data.qry_pub.SQL.text:='insert into zybl_zyyz_syddy '+
          'select id,'+''''+FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+' from zybl_zyyz where zxbz=1 and zyh='+''''+Trim( sp_sybr.fieldbyname( 'zyh' ).asstring )+
          ''''+
          ' and   id not in (select yzid from zybl_zyyz_syddy where dyrq='+''''+
          FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+')'+' and (charindex(fzph,'+''''+
          zh+''''+')>0 or charindex('',''+convert(varchar,id)+'','','',''+'+''''+zh+''''+')>0)';
          DM_data.qry_pub.ExecSQL;
        end;
        fzzfc:=Copy(fzzfc,Pos(',',fzzfc)+1);
    end;
    sp_dryz_kfyd.EnableControls;
  end
  else
  begin
    //普通执行单
    if Application.MessageBox(pchar('你将打印右边勾选的执行单，是否确认打印？')
      , '询问', MB_OKCANCEL + MB_ICONQUESTION
      + MB_DEFBUTTON2) = IDCANCEL then
    begin
     Exit;
    end;
    sp_dryz_zsd.DisableControls;
    sp_dryz_zsd.First;
    while not sp_dryz_zsd.eof do
    begin
      if (sp_dryz_zsd.FieldByName('xzbz').AsBoolean=true) and (Pos(sp_dryz_zsd.FieldByName('zyh').AsString,fzzfc)<1) then
      begin
        fzzfc:=fzzfc+sp_dryz_zsd.FieldByName('zyh').AsString+',';
      end;
      sp_dryz_zsd.Next;
    end;
    if fzzfc='' then
    begin
      Application.MessageBox('你未选择项目打印！', '警告', MB_OK +
        MB_ICONWARNING);
      Exit;
    end;
    if sp_dryz_zsd.Active then
      createrect( myrect_cx, sp_dryz_zsd, dbgrideh4, 9, 10, 13 );
    sp_sybr.First;
    ChangePrinter_syjhd;
    while Pos(',',fzzfc)>0 do
    begin
        zh:='';
        x_zyh:=Copy(fzzfc,1,Pos(',',fzzfc)-1);
        sp_dryz_zsd.First;
        while not sp_dryz_zsd.eof do
        begin
          if (sp_dryz_zsd.FieldByName('xzbz').AsBoolean=true) and (sp_dryz_zsd.FieldByName('zyh').AsString=x_zyh) and
             (Pos(sp_dryz_zsd.FieldByName('fzph').AsString,zh)<1)  then
          begin
            if Trim(sp_dryz_zsd.FieldByName('fzph').AsString)<>'' then
              zh:=zh+trim(sp_dryz_zsd.FieldByName('fzph').AsString)+','
            else
              zh:=zh+trim(sp_dryz_zsd.FieldByName('yzid').AsString)+',';
          end
          else
          begin

          end;
          sp_dryz_zsd.Next;
        end;
        with sp_syjhzxd do
        begin
          Filtered := False;
          Close;
          Parameters.Refresh;
          Parameters.ParamByName( '@zyh' ).Value := x_zyh;
          Parameters.ParamByName( '@rq' ).Value := FormatDateTime('yyyyMMdd',dt_zxsj.DateTime);
          Parameters.ParamByName( '@fzph_zh' ).Value := zh;
          Open;
        end;
        if (pub_yydm='0003')  then
        begin
          DM_data.qry_pub.close;
          DM_data.qry_pub.sql.text := 'select * from zybl_zyyz where zyh='+''''+ Trim( sp_dryz_zsd.fieldbyname( 'zyh' ).asstring )
          +''''+' and (xmmc like ''%皮试%'' or xmmc like ''%敏试%'') and charindex(''-'',xmmc)<1 and  charindex(''+'',xmmc)<1 and tzbz=0 and charindex(''阴'',xmmc)<1 and  charindex(''阳'',xmmc)<1';
          DM_data.qry_pub.Open;
        end
        else
        begin
          DM_data.qry_pub.close;
          DM_data.qry_pub.sql.text := 'select * from sys_czy where 1<>1';
          DM_data.qry_pub.Open;
        end;
        if DM_data.qry_pub.IsEmpty then
        begin
        DM_data.qry_pub.close;
        DM_data.qry_pub.sql.text := 'select yytj from zybl_zyyz_dytjsz where dyxm=''输液计划单''';
        DM_data.qry_pub.Open;
        if DM_data.qry_pub.IsEmpty then
        begin
          v_yytj := '';
        end
        else
        begin
          DM_data.qry_pub.First;
          while not DM_data.qry_pub.eof do
          begin
            v_yytj := v_yytj + '(yytj<>' + '''' + DM_data.qry_pub.FieldByName( 'yytj' ).asstring + '''' + '  and kdbq=' + '''' + pub_bqdm +
           ''')' + ' and ';
            DM_data.qry_pub.Next;
          end;

        end;

  //      DM_data.qry_pub.close;
  //      DM_data.qry_pub.sql.text := 'select lbmc from zybl_zyyz_dylbsz where dyxm=''注射计划单''';
  //      DM_data.qry_pub.Open;
  //      if DM_data.qry_pub.IsEmpty then
  //      begin
  //        v_lb := '';
  //      end
  //      else
  //      begin
  //        DM_data.qry_pub.First;
  //        while not DM_data.qry_pub.eof do
  //        begin
  //          v_lb := v_lb + '(lb=' + '''' + DM_data.qry_pub.FieldByName( 'lbmc' ).asstring + '''' + '  and kdks=' + '''' + pub_ksdm +
  //           ''')' + ' or ';
  //          DM_data.qry_pub.Next;
  //        end;
  //
  //      end;

        if v_yytj + v_lb = '' then
        begin
          filter := ' 1<>1 ';
        end
        else
        begin
          filter := v_yytj + v_lb + ' ( xmmc <> ''特殊注射单'' )';
        end;

        sp_syjhzxd.Filter := filter;

        sp_syjhzxd.Filtered := True;
        sp_sybr.DisableControls;
        sp_sybr.Locate('zyh',x_zyh,[]);
        sp_sybr.EnableControls;
        if not sp_syjhzxd.IsEmpty then
        begin
  //        ChangePrinter_syjhd;
  //        frm_zysf_print_service.Printsyjhd( sp_sybr,sp_syjhzxd,FormatDateTime('yyyy-MM-dd',dt_zxsj.DateTime));
  //        RevertPrinter;
  //        ChangePrinter_syjhd;
  //        frm_zysf_print_service.Printsyjhd( sp_sybr,sp_syjhzxd,FormatDateTime('yyyy-MM-dd',dt_zxsj.DateTime));
  //        RevertPrinter;
           if pub_yydm='0271' then //荆门市掇刀人民医院
           begin
            frm_zysf_print_service.print_yzzxddy( sp_sybr,sp_syjhzxd,trim(formatdatetime('yyyy-MM-dd hh:mm',Frm_func.curr_date)));
            frm_zysf_print_service.print_yzzxddy( sp_sybr,sp_syjhzxd,trim(formatdatetime('yyyy-MM-dd hh:mm',Frm_func.curr_date)));
           end
           else
           begin
            zxddy;
            zxddy;
           end;
        end;
//        DM_data.qry_pub.close;
//        DM_data.qry_pub.SQL.text:='update zybl_zyyz_yzzxqd with(rowlock) set syddy=1 from zybl_zyyz a,zybl_zyyz_yzzxqd b where a.zyh=b.zyh and '+
//        '  a.id=b.yzid and  '+'a.zyh='+''''+Trim( sp_sybr.fieldbyname( 'zyh' ).asstring )+
//        ''''+' and b.zxsj='+ ''''+FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+' and (charindex(a.fzph,'+''''+
//        zh+''''+')>0 or charindex('',''+convert(varchar,a.id)+'','','',''+'+''''+zh+''''+')>0)';
//        DM_data.qry_pub.ExecSQL;
          DM_data.qry_pub.close;
          DM_data.qry_pub.SQL.text:='insert into zybl_zyyz_syddy '+
          'select id,'+''''+FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+' from zybl_zyyz where zxbz=1 and  zyh='+''''+Trim( sp_sybr.fieldbyname( 'zyh' ).asstring )+
          ''''+
          ' and   id not in (select yzid from zybl_zyyz_syddy where dyrq='+''''+
          FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+')'+' and (charindex(fzph,'+''''+
          zh+''''+')>0 or charindex('',''+convert(varchar,id)+'','','',''+'+''''+zh+''''+')>0)';
          DM_data.qry_pub.ExecSQL;
        end;
        fzzfc:=Copy(fzzfc,Pos(',',fzzfc)+1);
    end;
    sp_dryz_zsd.EnableControls;
  end;
end;

procedure Tfrm_hsdyzxd.MenuItem15Click(Sender: TObject);
var
  i, y, j, count, x: Integer;
  aControl: TControl;
  v_yytj, v_lb, filter,fzzfc,x_zyh,zh: string;
begin
  if (pub_yydm='0003') and (pub_bqdm='0030') and (PageControl1.ActivePageIndex=1)  then
  begin
    //执行单
    if Application.MessageBox(pchar('你将打印右边勾选的执行单，是否确认打印？')
      , '询问', MB_OKCANCEL + MB_ICONQUESTION
      + MB_DEFBUTTON2) = IDCANCEL then
    begin
     Exit;
    end;
    sp_dryz_zsd.DisableControls;
    sp_dryz_zsd.First;
    while not sp_dryz_zsd.eof do
    begin
      if (sp_dryz_zsd.FieldByName('xzbz').AsBoolean=true) and (Pos(sp_dryz_zsd.FieldByName('zyh').AsString,fzzfc)<1) then
      begin
        fzzfc:=fzzfc+sp_dryz_zsd.FieldByName('zyh').AsString+',';
      end;
      sp_dryz_zsd.Next;
    end;
    if fzzfc='' then
    begin
      Application.MessageBox('你未选择项目打印！', '警告', MB_OK +
        MB_ICONWARNING);
      Exit;
    end;
    if sp_dryz_zsd.Active then
      createrect( myrect_cx, sp_dryz_zsd, dbgrideh4, 9, 10, 13 );
    sp_sybr.First;
    ChangePrinter_syjhd;
    while Pos(',',fzzfc)>0 do
    begin
        zh:='';
        x_zyh:=Copy(fzzfc,1,Pos(',',fzzfc)-1);
        sp_dryz_zsd.First;
        while not sp_dryz_zsd.eof do
        begin
          if (sp_dryz_zsd.FieldByName('xzbz').AsBoolean=true) and (sp_dryz_zsd.FieldByName('zyh').AsString=x_zyh) and
             (Pos(sp_dryz_zsd.FieldByName('fzph').AsString,zh)<1)  then
          begin
            if Trim(sp_dryz_zsd.FieldByName('fzph').AsString)<>'' then
              zh:=zh+trim(sp_dryz_zsd.FieldByName('fzph').AsString)+','
            else
              zh:=zh+trim(sp_dryz_zsd.FieldByName('yzid').AsString)+',';
          end
          else
          begin

          end;
          sp_dryz_zsd.Next;
        end;
        with sp_syjhzxd do
        begin
          Filtered := False;
          Close;
          Parameters.Refresh;
          Parameters.ParamByName( '@zyh' ).Value := x_zyh;
          Parameters.ParamByName( '@rq' ).Value := FormatDateTime('yyyyMMdd',dt_zxsj.DateTime);
          Parameters.ParamByName( '@fzph_zh' ).Value := zh;
          Open;
        end;
        if (pub_yydm='0003') then
        begin
          DM_data.qry_pub.close;
          DM_data.qry_pub.sql.text := 'select * from zybl_zyyz where zyh='+''''+ Trim( sp_dryz_zsd.fieldbyname( 'zyh' ).asstring )
          +''''+' and (xmmc like ''%皮试%'' or xmmc like ''%敏试%'') and charindex(''-'',xmmc)<1 and  charindex(''+'',xmmc)<1 and tzbz=0 and charindex(''阴'',xmmc)<1 and  charindex(''阳'',xmmc)<1';
          DM_data.qry_pub.Open;
        end
        else
        begin
          DM_data.qry_pub.close;
          DM_data.qry_pub.sql.text := 'select * from sys_czy where 1<>1';
          DM_data.qry_pub.Open;
        end;
        if DM_data.qry_pub.IsEmpty then
        begin
        DM_data.qry_pub.close;
        DM_data.qry_pub.sql.text := 'select yytj from zybl_zyyz_dytjsz where dyxm=''输液计划单''';
        DM_data.qry_pub.Open;
        if DM_data.qry_pub.IsEmpty then
        begin
          v_yytj := '';
        end
        else
        begin
          DM_data.qry_pub.First;
          while not DM_data.qry_pub.eof do
          begin
            v_yytj := v_yytj + '(yytj<>' + '''' + DM_data.qry_pub.FieldByName( 'yytj' ).asstring + '''' + ' and yytj<>''口服'' and kdbq=' + '''' + pub_bqdm +
           ''')' + ' and ';
            DM_data.qry_pub.Next;
          end;

        end;

  //      DM_data.qry_pub.close;
  //      DM_data.qry_pub.sql.text := 'select lbmc from zybl_zyyz_dylbsz where dyxm=''注射计划单''';
  //      DM_data.qry_pub.Open;
  //      if DM_data.qry_pub.IsEmpty then
  //      begin
  //        v_lb := '';
  //      end
  //      else
  //      begin
  //        DM_data.qry_pub.First;
  //        while not DM_data.qry_pub.eof do
  //        begin
  //          v_lb := v_lb + '(lb=' + '''' + DM_data.qry_pub.FieldByName( 'lbmc' ).asstring + '''' + '  and kdks=' + '''' + pub_ksdm +
  //           ''')' + ' or ';
  //          DM_data.qry_pub.Next;
  //        end;
  //
  //      end;

        if v_yytj + v_lb = '' then
        begin
          filter := ' 1<>1 ';
        end
        else
        begin
          filter := v_yytj + v_lb + ' ( xmmc <> ''特殊注射单'' )';
        end;

        sp_syjhzxd.Filter := filter;

        sp_syjhzxd.Filtered := True;
        sp_sybr.DisableControls;
        sp_sybr.Locate('zyh',x_zyh,[]);
        sp_sybr.EnableControls;
        if not sp_syjhzxd.IsEmpty then
        begin
  //        ChangePrinter_syjhd;
  //        frm_zysf_print_service.Printsyjhd( sp_sybr,sp_syjhzxd,FormatDateTime('yyyy-MM-dd',dt_zxsj.DateTime));
  //        RevertPrinter;
  //        ChangePrinter_syjhd;
  //        frm_zysf_print_service.Printsyjhd( sp_sybr,sp_syjhzxd,FormatDateTime('yyyy-MM-dd',dt_zxsj.DateTime));
  //        RevertPrinter;

            zxddy;
        end;
//        DM_data.qry_pub.close;
//        DM_data.qry_pub.SQL.text:='update zybl_zyyz_yzzxqd with(rowlock) set syddy=1 from zybl_zyyz a,zybl_zyyz_yzzxqd b where a.zyh=b.zyh and '+
//        '  a.id=b.yzid and  '+'a.zyh='+''''+Trim( sp_sybr.fieldbyname( 'zyh' ).asstring )+
//        ''''+' and b.zxsj='+ ''''+FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+' and (charindex(a.fzph,'+''''+
//        zh+''''+')>0 or charindex('',''+convert(varchar,a.id)+'','','',''+'+''''+zh+''''+')>0)';
//        DM_data.qry_pub.ExecSQL;
          DM_data.qry_pub.close;
          DM_data.qry_pub.SQL.text:='insert into zybl_zyyz_syddy '+
          'select id,'+''''+FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+' from zybl_zyyz where zxbz=1 and  zyh='+''''+Trim( sp_sybr.fieldbyname( 'zyh' ).asstring )+
          ''''+
          ' and   id not in (select yzid from zybl_zyyz_syddy where dyrq='+''''+
          FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+')'+' and (charindex(fzph,'+''''+
          zh+''''+')>0 or charindex('',''+convert(varchar,id)+'','','',''+'+''''+zh+''''+')>0)';
          DM_data.qry_pub.ExecSQL;
        end;
        fzzfc:=Copy(fzzfc,Pos(',',fzzfc)+1);
    end;
    sp_dryz_zsd.EnableControls;
  end
  else if (pub_yydm='0003') and (pub_bqdm='0030') and (PageControl1.ActivePageIndex=2)  then
  begin
    //口服药
    if Application.MessageBox(pchar('你将打印右边勾选的口服药单，是否确认打印？')
      , '询问', MB_OKCANCEL + MB_ICONQUESTION
      + MB_DEFBUTTON2) = IDCANCEL then
    begin
     Exit;
    end;
    sp_dryz_kfyd.DisableControls;
    sp_dryz_kfyd.First;
    while not sp_dryz_kfyd.eof do
    begin
      if (sp_dryz_kfyd.FieldByName('xzbz').AsBoolean=true) and (Pos(sp_dryz_kfyd.FieldByName('zyh').AsString,fzzfc)<1) then
      begin
        fzzfc:=fzzfc+sp_dryz_kfyd.FieldByName('zyh').AsString+',';
      end;
      sp_dryz_kfyd.Next;
    end;
    if fzzfc='' then
    begin
      Application.MessageBox('你未选择项目打印！', '警告', MB_OK +
        MB_ICONWARNING);
      Exit;
    end;
    if sp_dryz_kfyd.Active then
      createrect( myrect_cx, sp_dryz_kfyd, dbgrideh6, 9, 10, 13 );
    sp_sybr.First;
    ChangePrinter_syjhd;
    while Pos(',',fzzfc)>0 do
    begin
        zh:='';
        x_zyh:=Copy(fzzfc,1,Pos(',',fzzfc)-1);
        sp_dryz_kfyd.First;
        while not sp_dryz_kfyd.eof do
        begin
          if (sp_dryz_kfyd.FieldByName('xzbz').AsBoolean=true) and (sp_dryz_kfyd.FieldByName('zyh').AsString=x_zyh) and
             (Pos(sp_dryz_kfyd.FieldByName('fzph').AsString,zh)<1)  then
          begin
            if Trim(sp_dryz_kfyd.FieldByName('fzph').AsString)<>'' then
              zh:=zh+trim(sp_dryz_kfyd.FieldByName('fzph').AsString)+','
            else
              zh:=zh+trim(sp_dryz_kfyd.FieldByName('yzid').AsString)+',';
          end
          else
          begin

          end;
          sp_dryz_kfyd.Next;
        end;
        with sp_syjhzxd do
        begin
          Filtered := False;
          Close;
          Parameters.Refresh;
          Parameters.ParamByName( '@zyh' ).Value := x_zyh;
          Parameters.ParamByName( '@rq' ).Value := FormatDateTime('yyyyMMdd',dt_zxsj.DateTime);
          Parameters.ParamByName( '@fzph_zh' ).Value := zh;
          Open;
        end;
        if (pub_yydm='0003')  then
        begin
          DM_data.qry_pub.close;
          DM_data.qry_pub.sql.text := 'select * from zybl_zyyz where zyh='+''''+ Trim( sp_dryz_kfyd.fieldbyname( 'zyh' ).asstring )
          +''''+' and (xmmc like ''%皮试%'' or xmmc like ''%敏试%'') and charindex(''-'',xmmc)<1 and  charindex(''+'',xmmc)<1 and tzbz=0 and charindex(''阴'',xmmc)<1 and  charindex(''阳'',xmmc)<1';
          DM_data.qry_pub.Open;
        end
        else
        begin
          DM_data.qry_pub.close;
          DM_data.qry_pub.sql.text := 'select * from sys_czy where 1<>1';
          DM_data.qry_pub.Open;
        end;
        if DM_data.qry_pub.IsEmpty then
        begin
        DM_data.qry_pub.close;
        DM_data.qry_pub.sql.text := 'select yytj from zybl_zyyz_dytjsz where dyxm=''口服药执行单''';
        DM_data.qry_pub.Open;
        if DM_data.qry_pub.IsEmpty then
        begin
          v_yytj := '';
        end
        else
        begin
          DM_data.qry_pub.First;
          while not DM_data.qry_pub.eof do
          begin
            v_yytj := v_yytj + '(yytj=' + '''' + DM_data.qry_pub.FieldByName( 'yytj' ).asstring + '''' + '  and kdbq=' + '''' + pub_bqdm +
           ''')' + ' and ';
            DM_data.qry_pub.Next;
          end;

        end;

  //      DM_data.qry_pub.close;
  //      DM_data.qry_pub.sql.text := 'select lbmc from zybl_zyyz_dylbsz where dyxm=''注射计划单''';
  //      DM_data.qry_pub.Open;
  //      if DM_data.qry_pub.IsEmpty then
  //      begin
  //        v_lb := '';
  //      end
  //      else
  //      begin
  //        DM_data.qry_pub.First;
  //        while not DM_data.qry_pub.eof do
  //        begin
  //          v_lb := v_lb + '(lb=' + '''' + DM_data.qry_pub.FieldByName( 'lbmc' ).asstring + '''' + '  and kdks=' + '''' + pub_ksdm +
  //           ''')' + ' or ';
  //          DM_data.qry_pub.Next;
  //        end;
  //
  //      end;

        if v_yytj + v_lb = '' then
        begin
          filter := ' 1<>1 ';
        end
        else
        begin
          filter := v_yytj + v_lb + ' ( xmmc <> ''特殊注射单'' )';
        end;

        sp_syjhzxd.Filter := filter;

        sp_syjhzxd.Filtered := True;
        sp_sybr.DisableControls;
        sp_sybr.Locate('zyh',x_zyh,[]);
        sp_sybr.EnableControls;
        if not sp_syjhzxd.IsEmpty then
        begin
  //        ChangePrinter_syjhd;
  //        frm_zysf_print_service.Printsyjhd( sp_sybr,sp_syjhzxd,FormatDateTime('yyyy-MM-dd',dt_zxsj.DateTime));
  //        RevertPrinter;
  //        ChangePrinter_syjhd;
  //        frm_zysf_print_service.Printsyjhd( sp_sybr,sp_syjhzxd,FormatDateTime('yyyy-MM-dd',dt_zxsj.DateTime));
  //        RevertPrinter;
            zxddy;
        end;
//        DM_data.qry_pub.close;
//        DM_data.qry_pub.SQL.text:='update zybl_zyyz_yzzxqd with(rowlock) set syddy=1 from zybl_zyyz a,zybl_zyyz_yzzxqd b where a.zyh=b.zyh and '+
//        '  a.id=b.yzid and  '+'a.zyh='+''''+Trim( sp_sybr.fieldbyname( 'zyh' ).asstring )+
//        ''''+' and b.zxsj='+ ''''+FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+' and (charindex(a.fzph,'+''''+
//        zh+''''+')>0 or charindex('',''+convert(varchar,a.id)+'','','',''+'+''''+zh+''''+')>0)';
//        DM_data.qry_pub.ExecSQL;
          DM_data.qry_pub.close;
          DM_data.qry_pub.SQL.text:='insert into zybl_zyyz_syddy '+
          'select id,'+''''+FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+' from zybl_zyyz where zxbz=1 and zyh='+''''+Trim( sp_sybr.fieldbyname( 'zyh' ).asstring )+
          ''''+
          ' and   id not in (select yzid from zybl_zyyz_syddy where dyrq='+''''+
          FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+')'+' and (charindex(fzph,'+''''+
          zh+''''+')>0 or charindex('',''+convert(varchar,id)+'','','',''+'+''''+zh+''''+')>0)';
          DM_data.qry_pub.ExecSQL;
        end;
        fzzfc:=Copy(fzzfc,Pos(',',fzzfc)+1);
    end;
    sp_dryz_kfyd.EnableControls;
  end
  else
  begin
    //普通执行单
    if Application.MessageBox(pchar('你将打印右边勾选的执行单，是否确认打印？')
      , '询问', MB_OKCANCEL + MB_ICONQUESTION
      + MB_DEFBUTTON2) = IDCANCEL then
    begin
     Exit;
    end;
    sp_dryz_zsd.DisableControls;
    sp_dryz_zsd.First;
    while not sp_dryz_zsd.eof do
    begin
      if (sp_dryz_zsd.FieldByName('xzbz').AsBoolean=true) and (Pos(sp_dryz_zsd.FieldByName('zyh').AsString,fzzfc)<1) then
      begin
        fzzfc:=fzzfc+sp_dryz_zsd.FieldByName('zyh').AsString+',';
      end;
      sp_dryz_zsd.Next;
    end;
    if fzzfc='' then
    begin
      Application.MessageBox('你未选择项目打印！', '警告', MB_OK +
        MB_ICONWARNING);
      Exit;
    end;
    if sp_dryz_zsd.Active then
      createrect( myrect_cx, sp_dryz_zsd, dbgrideh4, 9, 10, 13 );
    sp_sybr.First;
    ChangePrinter_syjhd;
    while Pos(',',fzzfc)>0 do
    begin
        zh:='';
        x_zyh:=Copy(fzzfc,1,Pos(',',fzzfc)-1);
        sp_dryz_zsd.First;
        while not sp_dryz_zsd.eof do
        begin
          if (sp_dryz_zsd.FieldByName('xzbz').AsBoolean=true) and (sp_dryz_zsd.FieldByName('zyh').AsString=x_zyh) and
             (Pos(sp_dryz_zsd.FieldByName('fzph').AsString,zh)<1)  then
          begin
            if Trim(sp_dryz_zsd.FieldByName('fzph').AsString)<>'' then
              zh:=zh+trim(sp_dryz_zsd.FieldByName('fzph').AsString)+','
            else
              zh:=zh+trim(sp_dryz_zsd.FieldByName('yzid').AsString)+',';
          end
          else
          begin

          end;
          sp_dryz_zsd.Next;
        end;
        with sp_syjhzxd do
        begin
          Filtered := False;
          Close;
          Parameters.Refresh;
          Parameters.ParamByName( '@zyh' ).Value := x_zyh;
          Parameters.ParamByName( '@rq' ).Value := FormatDateTime('yyyyMMdd',dt_zxsj.DateTime);
          Parameters.ParamByName( '@fzph_zh' ).Value := zh;
          Open;
        end;
        if (pub_yydm='0003')  then
        begin
          DM_data.qry_pub.close;
          DM_data.qry_pub.sql.text := 'select * from zybl_zyyz where zyh='+''''+ Trim( sp_dryz_zsd.fieldbyname( 'zyh' ).asstring )
          +''''+' and (xmmc like ''%皮试%'' or xmmc like ''%敏试%'') and charindex(''-'',xmmc)<1 and  charindex(''+'',xmmc)<1 and tzbz=0 and charindex(''阴'',xmmc)<1 and  charindex(''阳'',xmmc)<1';
          DM_data.qry_pub.Open;
        end
        else
        begin
          DM_data.qry_pub.close;
          DM_data.qry_pub.sql.text := 'select * from sys_czy where 1<>1';
          DM_data.qry_pub.Open;
        end;
        if DM_data.qry_pub.IsEmpty then
        begin
        DM_data.qry_pub.close;
        DM_data.qry_pub.sql.text := 'select yytj from zybl_zyyz_dytjsz where dyxm=''输液计划单''';
        DM_data.qry_pub.Open;
        if DM_data.qry_pub.IsEmpty then
        begin
          v_yytj := '';
        end
        else
        begin
          DM_data.qry_pub.First;
          while not DM_data.qry_pub.eof do
          begin
            v_yytj := v_yytj + '(yytj<>' + '''' + DM_data.qry_pub.FieldByName( 'yytj' ).asstring + '''' + '  and kdbq=' + '''' + pub_bqdm +
           ''')' + ' and ';
            DM_data.qry_pub.Next;
          end;

        end;

  //      DM_data.qry_pub.close;
  //      DM_data.qry_pub.sql.text := 'select lbmc from zybl_zyyz_dylbsz where dyxm=''注射计划单''';
  //      DM_data.qry_pub.Open;
  //      if DM_data.qry_pub.IsEmpty then
  //      begin
  //        v_lb := '';
  //      end
  //      else
  //      begin
  //        DM_data.qry_pub.First;
  //        while not DM_data.qry_pub.eof do
  //        begin
  //          v_lb := v_lb + '(lb=' + '''' + DM_data.qry_pub.FieldByName( 'lbmc' ).asstring + '''' + '  and kdks=' + '''' + pub_ksdm +
  //           ''')' + ' or ';
  //          DM_data.qry_pub.Next;
  //        end;
  //
  //      end;

        if v_yytj + v_lb = '' then
        begin
          filter := ' 1<>1 ';
        end
        else
        begin
          filter := v_yytj + v_lb + ' ( xmmc <> ''特殊注射单'' )';
        end;

        sp_syjhzxd.Filter := filter;

        sp_syjhzxd.Filtered := True;
        sp_sybr.DisableControls;
        sp_sybr.Locate('zyh',x_zyh,[]);
        sp_sybr.EnableControls;
        if not sp_syjhzxd.IsEmpty then
        begin
  //        ChangePrinter_syjhd;
  //        frm_zysf_print_service.Printsyjhd( sp_sybr,sp_syjhzxd,FormatDateTime('yyyy-MM-dd',dt_zxsj.DateTime));
  //        RevertPrinter;
  //        ChangePrinter_syjhd;
  //        frm_zysf_print_service.Printsyjhd( sp_sybr,sp_syjhzxd,FormatDateTime('yyyy-MM-dd',dt_zxsj.DateTime));
  //        RevertPrinter;
           if pub_yydm='0271' then //荆门市掇刀人民医院
           begin
              frm_zysf_print_service.print_yzzxddy( sp_sybr,sp_syjhzxd,trim(formatdatetime('yyyy-MM-dd hh:mm',Frm_func.curr_date)));
           end
           else
            zxddy;
        end;
//        DM_data.qry_pub.close;
//        DM_data.qry_pub.SQL.text:='update zybl_zyyz_yzzxqd with(rowlock) set syddy=1 from zybl_zyyz a,zybl_zyyz_yzzxqd b where a.zyh=b.zyh and '+
//        '  a.id=b.yzid and  '+'a.zyh='+''''+Trim( sp_sybr.fieldbyname( 'zyh' ).asstring )+
//        ''''+' and b.zxsj='+ ''''+FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+' and (charindex(a.fzph,'+''''+
//        zh+''''+')>0 or charindex('',''+convert(varchar,a.id)+'','','',''+'+''''+zh+''''+')>0)';
//        DM_data.qry_pub.ExecSQL;
          DM_data.qry_pub.close;
          DM_data.qry_pub.SQL.text:='insert into zybl_zyyz_syddy '+
          'select id,'+''''+FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+' from zybl_zyyz where zxbz=1 and  zyh='+''''+Trim( sp_sybr.fieldbyname( 'zyh' ).asstring )+
          ''''+
          ' and   id not in (select yzid from zybl_zyyz_syddy where dyrq='+''''+
          FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+')'+' and (charindex(fzph,'+''''+
          zh+''''+')>0 or charindex('',''+convert(varchar,id)+'','','',''+'+''''+zh+''''+')>0)';
          DM_data.qry_pub.ExecSQL;
        end;
        fzzfc:=Copy(fzzfc,Pos(',',fzzfc)+1);
    end;
    sp_dryz_zsd.EnableControls;
  end;

end;

procedure Tfrm_hsdyzxd.MenuItem16Click(Sender: TObject);
var
  i, y, j, count, x: Integer;
  aControl: TControl;
  v_yytj, v_lb, filter: string;
begin
  if Application.MessageBox(pchar('你将打印本病区所有病人的全部口服药单，是否确认打印？')
    , '询问', MB_OKCANCEL + MB_ICONQUESTION
    + MB_DEFBUTTON2) = IDCANCEL then
  begin
   Exit;
  end;
//  sp_dryz.close;
//  sp_dryz.Parameters.ParamByName( '@bqdm' ).value := pub_bqdm;
//  sp_dryz.Parameters.ParamByName( '@zyh' ).value := '';
//  sp_dryz.Parameters.ParamByName( '@bz' ).value := '全部';
//  sp_dryz.Parameters.ParamByName( '@zxsj' ).value := formatdatetime( 'yyyymmdd', dT_zxsj.Date );
//  sp_dryz.Open;

  sp_sybr.close;
  sp_sybr.Parameters.ParamByName( '@bqdm' ).value := pub_bqdm;
//  sp_sybr.Parameters.ParamByName( '@zyh' ).value := '';
  sp_sybr.Parameters.ParamByName( '@zxsj' ).value := formatdatetime( 'yyyymmdd', dT_zxsj.Date );
  sp_sybr.Open;
  sp_dryz_kfyd.Filtered := false;
//  if sp_dryz_kfy.Active then
//    createrect( myrect_cx, sp_dryz_kfy, dbgrideh6, 9, 10, 13 );
  sp_sybr.First;
  ChangePrinter_syjhd;
  while not sp_sybr.eof do
  begin
    with sp_syjhzxd do
    begin
      Filtered := False;
      Close;
      Parameters.Refresh;
      Parameters.ParamByName( '@zyh' ).Value := Trim( sp_sybr.fieldbyname( 'zyh' ).asstring );
      Parameters.ParamByName( '@rq' ).Value := FormatDateTime('yyyyMMdd',dt_zxsj.DateTime);
      Parameters.ParamByName( '@fzph_zh' ).Value := '';
      Open;
    end;
    DM_data.qry_pub.close;
    DM_data.qry_pub.sql.text := 'select yytj from zybl_zyyz_dytjsz where dyxm=''口服药执行单''';
    DM_data.qry_pub.Open;
    if DM_data.qry_pub.IsEmpty then
    begin
      v_yytj := '';
    end
    else
    begin
      DM_data.qry_pub.First;
      while not DM_data.qry_pub.eof do
      begin
        v_yytj := v_yytj + '(yytj=' + '''' + DM_data.qry_pub.FieldByName( 'yytj' ).asstring + '''' + '  and kdbq=' + '''' + pub_bqdm +
         ''')' + ' or ';
        DM_data.qry_pub.Next;
      end;

    end;

    DM_data.qry_pub.close;
    DM_data.qry_pub.sql.text := 'select lbmc from zybl_zyyz_dylbsz where dyxm=''口服药执行单''';
    DM_data.qry_pub.Open;
    if DM_data.qry_pub.IsEmpty then
    begin
      v_lb := '';
    end
    else
    begin
      DM_data.qry_pub.First;
      while not DM_data.qry_pub.eof do
      begin
        v_lb := v_lb + '(lb=' + '''' + DM_data.qry_pub.FieldByName( 'lbmc' ).asstring + '''' + '  and kdbq=' + '''' + pub_bqdm +
         ''')' + ' or ';
        DM_data.qry_pub.Next;
      end;

    end;

    if v_yytj + v_lb = '' then
    begin
      filter := ' 1<>1 ';
    end
    else
    begin
      filter := v_yytj + v_lb +' ( yytj=''特殊情况'' )';
    end;

    sp_syjhzxd.Filter := filter;

    sp_syjhzxd.Filtered := True;
    if not sp_syjhzxd.IsEmpty then
    begin
      ChangePrinter_syjhd;
      frm_zysf_print_service.Printsyjhd( sp_sybr,sp_syjhzxd,FormatDateTime('yyyy-MM-dd',dt_zxsj.DateTime));
      RevertPrinter;
      ChangePrinter_syjhd;
      frm_zysf_print_service.Printsyjhd( sp_sybr,sp_syjhzxd,FormatDateTime('yyyy-MM-dd',dt_zxsj.DateTime));
      RevertPrinter;
    end;
//    DM_data.qry_pub.close;
//    DM_data.qry_pub.SQL.text:='update zybl_zyyz_yzzxqd with(rowlock) set syddy=1 where zyh='+''''+Trim( sp_sybr.fieldbyname( 'zyh' ).asstring )+
//    ''''+' and zxsj='+ ''''+FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+' and yzid in '+
//    '(select id from zybl_zyyz where zyh='+''''+Trim( sp_sybr.fieldbyname( 'zyh' ).asstring )+''''+
//    ' and yytj in (select yytj from zybl_zyyz_dytjsz where dyxm=''口服药执行单''))';
//    DM_data.qry_pub.ExecSQL;
      DM_data.qry_pub.close;
      DM_data.qry_pub.SQL.text:='insert into zybl_zyyz_syddy '+
      'select id,'+''''+FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+' from zybl_zyyz where zxbz=1 and  zyh='+''''+Trim( sp_sybr.fieldbyname( 'zyh' ).asstring )+
      ''''+
      ' and yytj in (select yytj from zybl_zyyz_dytjsz where dyxm=''口服药执行单'')'+
      ' and   id not in (select yzid from zybl_zyyz_syddy where dyrq='+''''+
      FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+')';
      DM_data.qry_pub.ExecSQL;
    sp_sybr.Next;
  end;

end;

procedure Tfrm_hsdyzxd.MenuItem17Click(Sender: TObject);
var
  i, y, j, count, x: Integer;
  aControl: TControl;
  v_yytj, v_lb, filter: string;
begin
  if Application.MessageBox(pchar('你将打印本病区所有病人的全部口服药单，是否确认打印？')
    , '询问', MB_OKCANCEL + MB_ICONQUESTION
    + MB_DEFBUTTON2) = IDCANCEL then
  begin
   Exit;
  end;
//  sp_dryz.close;
//  sp_dryz.Parameters.ParamByName( '@bqdm' ).value := pub_bqdm;
//  sp_dryz.Parameters.ParamByName( '@zyh' ).value := '';
//  sp_dryz.Parameters.ParamByName( '@bz' ).value := '全部';
//  sp_dryz.Parameters.ParamByName( '@zxsj' ).value := formatdatetime( 'yyyymmdd', dT_zxsj.Date );
//  sp_dryz.Open;

  sp_sybr.close;
  sp_sybr.Parameters.ParamByName( '@bqdm' ).value := pub_bqdm;
//  sp_sybr.Parameters.ParamByName( '@zyh' ).value := '';
  sp_sybr.Parameters.ParamByName( '@zxsj' ).value := formatdatetime( 'yyyymmdd', dT_zxsj.Date );
  sp_sybr.Open;
  sp_dryz_kfyd.Filtered := false;
//  if sp_dryz_kfy.Active then
//    createrect( myrect_cx, sp_dryz_kfy, dbgrideh6, 9, 10, 13 );
  sp_sybr.First;
  ChangePrinter_syjhd;
  while not sp_sybr.eof do
  begin
    with sp_syjhzxd do
    begin
      Filtered := False;
      Close;
      Parameters.Refresh;
      Parameters.ParamByName( '@zyh' ).Value := Trim( sp_sybr.fieldbyname( 'zyh' ).asstring );
      Parameters.ParamByName( '@rq' ).Value := FormatDateTime('yyyyMMdd',dt_zxsj.DateTime);
      Parameters.ParamByName( '@fzph_zh' ).Value := '';
      Open;
    end;
    DM_data.qry_pub.close;
    DM_data.qry_pub.sql.text := 'select yytj from zybl_zyyz_dytjsz where dyxm=''口服药执行单''';
    DM_data.qry_pub.Open;
    if DM_data.qry_pub.IsEmpty then
    begin
      v_yytj := '';
    end
    else
    begin
      DM_data.qry_pub.First;
      while not DM_data.qry_pub.eof do
      begin
        v_yytj := v_yytj + '(yytj=' + '''' + DM_data.qry_pub.FieldByName( 'yytj' ).asstring + '''' + '  and kdbq=' + '''' + pub_bqdm +
         ''')' + ' or ';
        DM_data.qry_pub.Next;
      end;

    end;

    DM_data.qry_pub.close;
    DM_data.qry_pub.sql.text := 'select lbmc from zybl_zyyz_dylbsz where dyxm=''口服药执行单''';
    DM_data.qry_pub.Open;
    if DM_data.qry_pub.IsEmpty then
    begin
      v_lb := '';
    end
    else
    begin
      DM_data.qry_pub.First;
      while not DM_data.qry_pub.eof do
      begin
        v_lb := v_lb + '(lb=' + '''' + DM_data.qry_pub.FieldByName( 'lbmc' ).asstring + '''' + '  and kdbq=' + '''' + pub_bqdm +
         ''')' + ' or ';
        DM_data.qry_pub.Next;
      end;

    end;

    if v_yytj + v_lb = '' then
    begin
      filter := ' 1<>1 ';
    end
    else
    begin
      filter := v_yytj + v_lb +' ( yytj=''特殊情况'' )';
    end;

    sp_syjhzxd.Filter := filter;

    sp_syjhzxd.Filtered := True;
    if not sp_syjhzxd.IsEmpty then
    begin
      ChangePrinter_syjhd;
      frm_zysf_print_service.Printsyjhd( sp_sybr,sp_syjhzxd,FormatDateTime('yyyy-MM-dd',dt_zxsj.DateTime));
      RevertPrinter;
    end;
//    DM_data.qry_pub.close;
//    DM_data.qry_pub.SQL.text:='update zybl_zyyz_yzzxqd with(rowlock) set syddy=1 where zyh='+''''+Trim( sp_sybr.fieldbyname( 'zyh' ).asstring )+
//    ''''+' and zxsj='+ ''''+FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+' and yzid in '+
//    '(select id from zybl_zyyz where zyh='+''''+Trim( sp_sybr.fieldbyname( 'zyh' ).asstring )+''''+
//    ' and yytj in (select yytj from zybl_zyyz_dytjsz where dyxm=''口服药执行单''))';
//    DM_data.qry_pub.ExecSQL;
      DM_data.qry_pub.close;
      DM_data.qry_pub.SQL.text:='insert into zybl_zyyz_syddy '+
      'select id,'+''''+FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+' from zybl_zyyz where zxbz=1 and  zyh='+''''+Trim( sp_sybr.fieldbyname( 'zyh' ).asstring )+
      ''''+
      ' and yytj in (select yytj from zybl_zyyz_dytjsz where dyxm=''口服药执行单'')'+
      ' and   id not in (select yzid from zybl_zyyz_syddy where dyrq='+''''+
      FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+')';
      DM_data.qry_pub.ExecSQL;
    sp_sybr.Next;
  end;

end;

procedure Tfrm_hsdyzxd.MenuItem18Click(Sender: TObject);
var
  i, y, j, count, x: Integer;
  aControl: TControl;
  v_yytj, v_lb, filter: string;
begin
  if Application.MessageBox(pchar('你将打印选择病人的所有临时口服药单，是否确认打印？')
    , '询问', MB_OKCANCEL + MB_ICONQUESTION
    + MB_DEFBUTTON2) = IDCANCEL then
  begin
   Exit;
  end;
  sp_sybr.First;
  while not sp_sybr.eof do
  begin
    if sp_sybr.FieldByName('xzbz').AsBoolean=false then
    begin
      sp_sybr.Next;
    end
    else
    begin
      with sp_syjhzxd do
      begin
        Filtered := False;
        Close;
        Parameters.Refresh;
        Parameters.ParamByName( '@zyh' ).Value := Trim( sp_sybr.fieldbyname( 'zyh' ).asstring );
        Parameters.ParamByName( '@rq' ).Value := FormatDateTime('yyyyMMdd',dt_zxsj.DateTime);
        Parameters.ParamByName( '@fzph_zh' ).Value := '';
        Open;
      end;
      DM_data.qry_pub.close;
      DM_data.qry_pub.sql.text := 'select yytj from zybl_zyyz_dytjsz where dyxm=''口服药执行单''';
      DM_data.qry_pub.Open;
      if DM_data.qry_pub.IsEmpty then
      begin
        v_yytj := '';
      end
      else
      begin
        DM_data.qry_pub.First;
        while not DM_data.qry_pub.eof do
        begin
          v_yytj := v_yytj + '(yytj=' + '''' + DM_data.qry_pub.FieldByName( 'yytj' ).asstring + '''' + ' and sx=''临时''  and kdbq=' + '''' + pub_bqdm +
             ''')' + ' or ';
          DM_data.qry_pub.Next;
        end;

      end;

      DM_data.qry_pub.close;
      DM_data.qry_pub.sql.text := 'select lbmc from zybl_zyyz_dylbsz where dyxm=''口服药执行单''';
      DM_data.qry_pub.Open;
      if DM_data.qry_pub.IsEmpty then
      begin
        v_lb := '';
      end
      else
      begin
        DM_data.qry_pub.First;
        while not DM_data.qry_pub.eof do
        begin
          v_lb := v_lb + '(lb=' + '''' + DM_data.qry_pub.FieldByName( 'lbmc' ).asstring + '''' + ' and sx=''临时'' and kdbq=' + '''' + pub_bqdm +
             ''')' + ' or ';
          DM_data.qry_pub.Next;
        end;

      end;

      if v_yytj + v_lb = '' then
      begin
        filter := ' 1<>1 ';
      end
      else
      begin
        filter := v_yytj + v_lb + ' ( xmmc like ''%特殊情况注射%'' and  kdrq=' + '''' + formatdatetime( 'yy-MM-dd', frm_func.curr_date ) + ' 00:00'+''')';
      end;

      sp_syjhzxd.Filter := filter;

      sp_syjhzxd.Filtered := True;
      if sp_syjhzxd.IsEmpty then
      begin

      end
      else
      begin
        ChangePrinter_syjhd;
        frm_zysf_print_service.Printsyjhd( sp_sybr,sp_syjhzxd,FormatDateTime('yyyy-MM-dd',dt_zxsj.DateTime));
        RevertPrinter;
        ChangePrinter_syjhd;
        frm_zysf_print_service.Printsyjhd( sp_sybr,sp_syjhzxd,FormatDateTime('yyyy-MM-dd',dt_zxsj.DateTime));
        RevertPrinter;
//        DM_data.qry_pub.close;
//        DM_data.qry_pub.SQL.text:='update zybl_zyyz_yzzxqd with(rowlock) set syddy=1 from zybl_zyyz a,zybl_zyyz_yzzxqd b where a.zyh=b.zyh and '+
//        '  a.id=b.yzid and  '+'a.zyh='+''''+Trim( sp_sybr.fieldbyname( 'zyh' ).asstring )+
//        ''''+' and b.zxsj='+ ''''+FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+' and a.yzsx=''临时'''+
//        ' and a.yytj in (select yytj from zybl_zyyz_dytjsz where dyxm=''口服药执行单'')';
//        DM_data.qry_pub.ExecSQL;
        DM_data.qry_pub.close;
        DM_data.qry_pub.SQL.text:='insert into zybl_zyyz_syddy '+
        'select id,'+''''+FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+' from zybl_zyyz where zxbz=1 and  zyh='+''''+Trim( sp_sybr.fieldbyname( 'zyh' ).asstring )+
        ''''+' and yzsx=''临时'' and convert(varchar,kdrq,112)='+''''+ FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+
        ' and yytj in (select yytj from zybl_zyyz_dytjsz where dyxm=''口服药执行单'')'+
        ' and   id not in (select yzid from zybl_zyyz_syddy where dyrq='+''''+
        FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+')';
        DM_data.qry_pub.ExecSQL;
      end;
      sp_sybr.Next;
    end;
  end;

end;

procedure Tfrm_hsdyzxd.MenuItem19Click(Sender: TObject);
var
  i, y, j, count, x: Integer;
  aControl: TControl;
  v_yytj, v_lb, filter: string;
begin
  if Application.MessageBox(pchar('你将打印选择病人的所有临时口服药单，是否确认打印？')
    , '询问', MB_OKCANCEL + MB_ICONQUESTION
    + MB_DEFBUTTON2) = IDCANCEL then
  begin
   Exit;
  end;
  sp_sybr.First;
  while not sp_sybr.eof do
  begin
    if sp_sybr.FieldByName('xzbz').AsBoolean=false then
    begin
      sp_sybr.Next;
    end
    else
    begin
      with sp_syjhzxd do
      begin
        Filtered := False;
        Close;
        Parameters.Refresh;
        Parameters.ParamByName( '@zyh' ).Value := Trim( sp_sybr.fieldbyname( 'zyh' ).asstring );
        Parameters.ParamByName( '@rq' ).Value := FormatDateTime('yyyyMMdd',dt_zxsj.DateTime);
        Parameters.ParamByName( '@fzph_zh' ).Value := '';
        Open;
      end;
      DM_data.qry_pub.close;
      DM_data.qry_pub.sql.text := 'select yytj from zybl_zyyz_dytjsz where dyxm=''口服药执行单''';
      DM_data.qry_pub.Open;
      if DM_data.qry_pub.IsEmpty then
      begin
        v_yytj := '';
      end
      else
      begin
        DM_data.qry_pub.First;
        while not DM_data.qry_pub.eof do
        begin
          v_yytj := v_yytj + '(yytj=' + '''' + DM_data.qry_pub.FieldByName( 'yytj' ).asstring + '''' + ' and sx=''临时''  and kdbq=' + '''' + pub_bqdm +
             ''')' + ' or ';
          DM_data.qry_pub.Next;
        end;

      end;

      DM_data.qry_pub.close;
      DM_data.qry_pub.sql.text := 'select lbmc from zybl_zyyz_dylbsz where dyxm=''口服药执行单''';
      DM_data.qry_pub.Open;
      if DM_data.qry_pub.IsEmpty then
      begin
        v_lb := '';
      end
      else
      begin
        DM_data.qry_pub.First;
        while not DM_data.qry_pub.eof do
        begin
          v_lb := v_lb + '(lb=' + '''' + DM_data.qry_pub.FieldByName( 'lbmc' ).asstring + '''' + ' and sx=''临时'' and kdbq=' + '''' + pub_bqdm +
             ''')' + ' or ';
          DM_data.qry_pub.Next;
        end;

      end;

      if v_yytj + v_lb = '' then
      begin
        filter := ' 1<>1 ';
      end
      else
      begin
        filter := v_yytj + v_lb + ' ( xmmc like ''%特殊情况注射%'' and  kdrq=' + '''' + formatdatetime( 'yy-MM-dd', frm_func.curr_date ) + ' 00:00'+''')';
      end;

      sp_syjhzxd.Filter := filter;

      sp_syjhzxd.Filtered := True;
      if sp_syjhzxd.IsEmpty then
      begin

      end
      else
      begin
        ChangePrinter_syjhd;
        frm_zysf_print_service.Printsyjhd( sp_sybr,sp_syjhzxd,FormatDateTime('yyyy-MM-dd',dt_zxsj.DateTime));
        RevertPrinter;
//        DM_data.qry_pub.close;
//        DM_data.qry_pub.SQL.text:='update zybl_zyyz_yzzxqd with(rowlock) set syddy=1 from zybl_zyyz a,zybl_zyyz_yzzxqd b where a.zyh=b.zyh and '+
//        '  a.id=b.yzid and  '+'a.zyh='+''''+Trim( sp_sybr.fieldbyname( 'zyh' ).asstring )+
//        ''''+' and b.zxsj='+ ''''+FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+' and a.yzsx=''临时'''+
//        ' and a.yytj in (select yytj from zybl_zyyz_dytjsz where dyxm=''口服药执行单'')';
//        DM_data.qry_pub.ExecSQL;
        DM_data.qry_pub.close;
        DM_data.qry_pub.SQL.text:='insert into zybl_zyyz_syddy '+
        'select id,'+''''+FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+' from zybl_zyyz where zxbz=1 and zyh='+''''+Trim( sp_sybr.fieldbyname( 'zyh' ).asstring )+
        ''''+' and yzsx=''临时'' and convert(varchar,kdrq,112)='+''''+ FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+
        ' and yytj in (select yytj from zybl_zyyz_dytjsz where dyxm=''口服药执行单'')'+
        ' and   id not in (select yzid from zybl_zyyz_syddy where dyrq='+''''+
        FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+')';
        DM_data.qry_pub.ExecSQL;
      end;
      sp_sybr.Next;
    end;
  end;

end;

procedure Tfrm_hsdyzxd.MenuItem1Click(Sender: TObject);
var
  i, y, j, count, x: Integer;
  aControl: TControl;
  v_yytj, v_lb, filter: string;
begin
  if Application.MessageBox(pchar('你将打印本病区所有病人的全部输液单，是否确认打印？')
    , '询问', MB_OKCANCEL + MB_ICONQUESTION
    + MB_DEFBUTTON2) = IDCANCEL then
  begin
   Exit;
  end;
//  sp_dryz.close;
//  sp_dryz.Parameters.ParamByName( '@bqdm' ).value := pub_bqdm;
//  sp_dryz.Parameters.ParamByName( '@zyh' ).value := '';
//  sp_dryz.Parameters.ParamByName( '@bz' ).value := '全部';
//  sp_dryz.Parameters.ParamByName( '@zxsj' ).value := formatdatetime( 'yyyymmdd', dT_zxsj.Date );
//  sp_dryz.Open;

  sp_sybr.close;
  sp_sybr.Parameters.ParamByName( '@bqdm' ).value := pub_bqdm;
//  sp_sybr.Parameters.ParamByName( '@zyh' ).value := '';
  sp_sybr.Parameters.ParamByName( '@zxsj' ).value := formatdatetime( 'yyyymmdd', dT_zxsj.Date );
  sp_sybr.Open;
  sp_dryz.Filtered := false;
  if sp_dryz.Active then
    createrect( myrect_cx, sp_dryz, dbgrideh2, 9, 10, 13 );
  sp_sybr.First;
  ChangePrinter_syjhd;
  while not sp_sybr.eof do
  begin
    with sp_syjhzxd do
    begin
      Filtered := False;
      Close;
      Parameters.Refresh;
      Parameters.ParamByName( '@zyh' ).Value := Trim( sp_sybr.fieldbyname( 'zyh' ).asstring );
      Parameters.ParamByName( '@rq' ).Value := FormatDateTime('yyyyMMdd',dt_zxsj.DateTime);
      Parameters.ParamByName( '@fzph_zh' ).Value := '';
      Open;
    end;
      if (pub_yydm='0003') then
      begin
        DM_data.qry_pub.close;
        DM_data.qry_pub.sql.text := 'select * from zybl_zyyz where zyh='+''''+ Trim( sp_sybr.fieldbyname( 'zyh' ).asstring )
        +''''+' and (xmmc like ''%皮试%'' or xmmc like ''%敏试%'') and charindex(''-'',xmmc)<1 and  charindex(''+'',xmmc)<1 and tzbz=0 and charindex(''阴'',xmmc)<1 and  charindex(''阳'',xmmc)<1';
        DM_data.qry_pub.Open;
      end
      else
      begin
        DM_data.qry_pub.close;
        DM_data.qry_pub.sql.text := 'select * from sys_czy where 1<>1';
        DM_data.qry_pub.Open;
      end;
    if DM_data.qry_pub.IsEmpty then
    begin
    DM_data.qry_pub.close;
    DM_data.qry_pub.sql.text := 'select yytj from zybl_zyyz_dytjsz where dyxm=''输液计划单''';
    DM_data.qry_pub.Open;
    if DM_data.qry_pub.IsEmpty then
    begin
      v_yytj := '';
    end
    else
    begin
      DM_data.qry_pub.First;
      while not DM_data.qry_pub.eof do
      begin
        v_yytj := v_yytj + '(yytj=' + '''' + DM_data.qry_pub.FieldByName( 'yytj' ).asstring + '''' + '  and kdbq=' + '''' + pub_bqdm +
         ''')' + ' or ';
        DM_data.qry_pub.Next;
      end;

    end;

    DM_data.qry_pub.close;
    DM_data.qry_pub.sql.text := 'select lbmc from zybl_zyyz_dylbsz where dyxm=''输液计划单''';
    DM_data.qry_pub.Open;
    if DM_data.qry_pub.IsEmpty then
    begin
      v_lb := '';
    end
    else
    begin
      DM_data.qry_pub.First;
      while not DM_data.qry_pub.eof do
      begin
        v_lb := v_lb + '(lb=' + '''' + DM_data.qry_pub.FieldByName( 'lbmc' ).asstring + '''' + '  and kdbq=' + '''' + pub_bqdm +
         ''')' + ' or ';
        DM_data.qry_pub.Next;
      end;

    end;

    if v_yytj + v_lb = '' then
    begin
      filter := ' 1<>1 ';
    end
    else
    begin
      filter := v_yytj + v_lb + ' ( xmmc like ''%皮试%'' )'+' or '+
      ' ( xmmc like ''%敏试%'' )';
    end;

    sp_syjhzxd.Filter := filter;

    sp_syjhzxd.Filtered := True;
    if not sp_syjhzxd.IsEmpty then
    begin
//      ChangePrinter_syjhd;
//      frm_zysf_print_service.Printsyjhd( sp_sybr,sp_syjhzxd,FormatDateTime('yyyy-MM-dd',dt_zxsj.DateTime));
//      RevertPrinter;
//      ChangePrinter_syjhd;
//      frm_zysf_print_service.Printsyjhd( sp_sybr,sp_syjhzxd,FormatDateTime('yyyy-MM-dd',dt_zxsj.DateTime));
//      RevertPrinter;
     if pub_yydm='0271' then //荆门市掇刀人民医院
     begin
        frm_zysf_print_service.print_yzzxddy( sp_sybr,sp_syjhzxd,trim(formatdatetime('yyyy-MM-dd hh:mm',Frm_func.curr_date)));
        frm_zysf_print_service.print_yzzxddy( sp_sybr,sp_syjhzxd,trim(formatdatetime('yyyy-MM-dd hh:mm',Frm_func.curr_date)));
     end
     else
     begin
        syjhddy;
        syjhddy;
     end;
    end;
//    DM_data.qry_pub.close;
//    DM_data.qry_pub.SQL.text:='update zybl_zyyz_yzzxqd with(rowlock) set syddy=1 where zyh='+''''+Trim( sp_sybr.fieldbyname( 'zyh' ).asstring )+
//    ''''+' and zxsj='+ ''''+FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+' and yzid in '+
//    '(select id from zybl_zyyz where zyh='+''''+Trim( sp_sybr.fieldbyname( 'zyh' ).asstring )+''''+
//    ' and yytj in (select yytj from zybl_zyyz_dytjsz where dyxm=''输液计划单''))';
//    DM_data.qry_pub.ExecSQL;
        DM_data.qry_pub.close;
        DM_data.qry_pub.SQL.text:='insert into zybl_zyyz_syddy '+
        'select id,'+''''+FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+' from zybl_zyyz where zxbz=1 and  zyh='+''''+Trim( sp_sybr.fieldbyname( 'zyh' ).asstring )+
        ''''+
        ' and yytj in (select yytj from zybl_zyyz_dytjsz where dyxm=''输液计划单'')'+
        ' and   id not in (select yzid from zybl_zyyz_syddy where dyrq='+''''+
        FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+')';
        DM_data.qry_pub.ExecSQL;
    end;
    Sleep(100);
    sp_sybr.Next;
  end;

end;

procedure Tfrm_hsdyzxd.MenuItem20Click(Sender: TObject);
var
  i, y, j, count, x: Integer;
  aControl: TControl;
  v_yytj, v_lb, filter: string;
begin
  if Application.MessageBox(pchar('你将打印左边勾选的病人的全部口服药单，是否确认打印？')
    , '询问', MB_OKCANCEL + MB_ICONQUESTION
    + MB_DEFBUTTON2) = IDCANCEL then
  begin
   Exit;
  end;

//  if sp_dryz_kfy.Active then
//    createrect( myrect_cx, sp_dryz_kfy, dbgrideh6, 9, 10, 13 );
  sp_sybr.First;
  ChangePrinter_syjhd;
  while not sp_sybr.eof do
  begin
    if sp_sybr.FieldByName('xzbz').AsBoolean=false then
    begin
      sp_sybr.Next;
    end
    else
    begin
      with sp_syjhzxd do
      begin
        Filtered := False;
        Close;
        Parameters.Refresh;
        Parameters.ParamByName( '@zyh' ).Value := Trim( sp_sybr.fieldbyname( 'zyh' ).asstring );
        Parameters.ParamByName( '@rq' ).Value := FormatDateTime('yyyyMMdd',dt_zxsj.DateTime);
        Parameters.ParamByName( '@fzph_zh' ).Value := '';
        Open;
      end;
      DM_data.qry_pub.close;
      DM_data.qry_pub.sql.text := 'select yytj from zybl_zyyz_dytjsz where dyxm=''口服药执行单''';
      DM_data.qry_pub.Open;
      if DM_data.qry_pub.IsEmpty then
      begin
        v_yytj := '';
      end
      else
      begin
        DM_data.qry_pub.First;
        while not DM_data.qry_pub.eof do
        begin
          v_yytj := v_yytj + '(yytj=' + '''' + DM_data.qry_pub.FieldByName( 'yytj' ).asstring + '''' + '  and kdbq=' + '''' + pub_bqdm +
         ''')' + ' or ';
          DM_data.qry_pub.Next;
        end;

      end;

      DM_data.qry_pub.close;
      DM_data.qry_pub.sql.text := 'select lbmc from zybl_zyyz_dylbsz where dyxm=''口服药执行单''';
      DM_data.qry_pub.Open;
      if DM_data.qry_pub.IsEmpty then
      begin
        v_lb := '';
      end
      else
      begin
        DM_data.qry_pub.First;
        while not DM_data.qry_pub.eof do
        begin
          v_lb := v_lb + '(lb=' + '''' + DM_data.qry_pub.FieldByName( 'lbmc' ).asstring + '''' + '  and kdbq=' + '''' + pub_bqdm +
           ''')' + ' or ';
          DM_data.qry_pub.Next;
        end;

      end;

      if v_yytj + v_lb = '' then
      begin
        filter := ' 1<>1 ';
      end
      else
      begin
        filter := v_yytj + v_lb + ' ( xmmc like ''%特殊情况的注射%'' )';
      end;

      sp_syjhzxd.Filter := filter;

      sp_syjhzxd.Filtered := True;
      if not sp_syjhzxd.IsEmpty then
      begin
        ChangePrinter_syjhd;
        frm_zysf_print_service.Printsyjhd( sp_sybr,sp_syjhzxd,FormatDateTime('yyyy-MM-dd',dt_zxsj.DateTime));
        RevertPrinter;
        ChangePrinter_syjhd;
        frm_zysf_print_service.Printsyjhd( sp_sybr,sp_syjhzxd,FormatDateTime('yyyy-MM-dd',dt_zxsj.DateTime));
        RevertPrinter;
      end;
//      DM_data.qry_pub.close;
//      DM_data.qry_pub.SQL.text:='update zybl_zyyz_yzzxqd with(rowlock) set syddy=1 where zyh='+''''+Trim( sp_sybr.fieldbyname( 'zyh' ).asstring )+
//      ''''+' and zxsj='+ ''''+FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+' and yzid in '+
//      '(select id from zybl_zyyz where zyh='+''''+Trim( sp_sybr.fieldbyname( 'zyh' ).asstring )+''''+
//      ' and yytj in (select yytj from zybl_zyyz_dytjsz where dyxm=''口服药执行单''))';
//      DM_data.qry_pub.ExecSQL;
        DM_data.qry_pub.close;
        DM_data.qry_pub.SQL.text:='insert into zybl_zyyz_syddy '+
        'select id,'+''''+FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+' from zybl_zyyz where zxbz=1 and zyh='+''''+Trim( sp_sybr.fieldbyname( 'zyh' ).asstring )+
        ''''+
        ' and yytj in (select yytj from zybl_zyyz_dytjsz where dyxm=''口服药执行单'')'+
        ' and   id not in (select yzid from zybl_zyyz_syddy where dyrq='+''''+
        FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+')';
        DM_data.qry_pub.ExecSQL;
      sp_sybr.Next;
    end;
  end;

end;

procedure Tfrm_hsdyzxd.MenuItem21Click(Sender: TObject);
var
  i, y, j, count, x: Integer;
  aControl: TControl;
  v_yytj, v_lb, filter: string;
begin
  if Application.MessageBox(pchar('你将打印左边勾选的病人的全部口服药单，是否确认打印？')
    , '询问', MB_OKCANCEL + MB_ICONQUESTION
    + MB_DEFBUTTON2) = IDCANCEL then
  begin
   Exit;
  end;
//
//  if sp_dryz_kfy.Active then
//    createrect( myrect_cx, sp_dryz_kfy, dbgrideh6, 9, 10, 13 );
  sp_sybr.First;
  ChangePrinter_syjhd;
  while not sp_sybr.eof do
  begin
    if sp_sybr.FieldByName('xzbz').AsBoolean=false then
    begin
      sp_sybr.Next;
    end
    else
    begin
      with sp_syjhzxd do
      begin
        Filtered := False;
        Close;
        Parameters.Refresh;
        Parameters.ParamByName( '@zyh' ).Value := Trim( sp_sybr.fieldbyname( 'zyh' ).asstring );
        Parameters.ParamByName( '@rq' ).Value := FormatDateTime('yyyyMMdd',dt_zxsj.DateTime);
        Parameters.ParamByName( '@fzph_zh' ).Value := '';
        Open;
      end;
      DM_data.qry_pub.close;
      DM_data.qry_pub.sql.text := 'select yytj from zybl_zyyz_dytjsz where dyxm=''口服药执行单''';
      DM_data.qry_pub.Open;
      if DM_data.qry_pub.IsEmpty then
      begin
        v_yytj := '';
      end
      else
      begin
        DM_data.qry_pub.First;
        while not DM_data.qry_pub.eof do
        begin
          v_yytj := v_yytj + '(yytj=' + '''' + DM_data.qry_pub.FieldByName( 'yytj' ).asstring + '''' + '  and kdbq=' + '''' + pub_bqdm +
         ''')' + ' or ';
          DM_data.qry_pub.Next;
        end;

      end;

      DM_data.qry_pub.close;
      DM_data.qry_pub.sql.text := 'select lbmc from zybl_zyyz_dylbsz where dyxm=''口服药执行单''';
      DM_data.qry_pub.Open;
      if DM_data.qry_pub.IsEmpty then
      begin
        v_lb := '';
      end
      else
      begin
        DM_data.qry_pub.First;
        while not DM_data.qry_pub.eof do
        begin
          v_lb := v_lb + '(lb=' + '''' + DM_data.qry_pub.FieldByName( 'lbmc' ).asstring + '''' + '  and kdbq=' + '''' + pub_bqdm +
           ''')' + ' or ';
          DM_data.qry_pub.Next;
        end;

      end;

      if v_yytj + v_lb = '' then
      begin
        filter := ' 1<>1 ';
      end
      else
      begin
        filter := v_yytj + v_lb + ' ( xmmc like ''%特殊情况的注射%'' )';
      end;

      sp_syjhzxd.Filter := filter;

      sp_syjhzxd.Filtered := True;
      if not sp_syjhzxd.IsEmpty then
      begin
        ChangePrinter_syjhd;
        frm_zysf_print_service.Printsyjhd( sp_sybr,sp_syjhzxd,FormatDateTime('yyyy-MM-dd',dt_zxsj.DateTime));
        RevertPrinter;
      end;
//      DM_data.qry_pub.close;
//      DM_data.qry_pub.SQL.text:='update zybl_zyyz_yzzxqd with(rowlock) set syddy=1 where zyh='+''''+Trim( sp_sybr.fieldbyname( 'zyh' ).asstring )+
//      ''''+' and zxsj='+ ''''+FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+' and yzid in '+
//      '(select id from zybl_zyyz where zyh='+''''+Trim( sp_sybr.fieldbyname( 'zyh' ).asstring )+''''+
//      ' and yytj in (select yytj from zybl_zyyz_dytjsz where dyxm=''口服药执行单''))';
//      DM_data.qry_pub.ExecSQL;
        DM_data.qry_pub.close;
        DM_data.qry_pub.SQL.text:='insert into zybl_zyyz_syddy '+
        'select id,'+''''+FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+' from zybl_zyyz where zxbz=1 and  zyh='+''''+Trim( sp_sybr.fieldbyname( 'zyh' ).asstring )+
        ''''+
        ' and yytj in (select yytj from zybl_zyyz_dytjsz where dyxm=''口服药执行单'')'+
        ' and   id not in (select yzid from zybl_zyyz_syddy where dyrq='+''''+
        FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+')';
        DM_data.qry_pub.ExecSQL;
      sp_sybr.Next;
    end;
  end;

end;

procedure Tfrm_hsdyzxd.MenuItem22Click(Sender: TObject);
var
  i, y, j, count, x: Integer;
  aControl: TControl;
  v_yytj, v_lb, filter,fzzfc,x_zyh,zh: string;
begin
  if Application.MessageBox(pchar('你将打印右边勾选的口服药，是否确认打印？')
    , '询问', MB_OKCANCEL + MB_ICONQUESTION
    + MB_DEFBUTTON2) = IDCANCEL then
  begin
   Exit;
  end;
  sp_dryz_kfyd.DisableControls;
  sp_dryz_kfyd.First;
  while not sp_dryz_kfyd.eof do
  begin
    if (sp_dryz_kfyd.FieldByName('xzbz').AsBoolean=true) and (Pos(sp_dryz_kfyd.FieldByName('zyh').AsString,fzzfc)<1) then
    begin
      fzzfc:=fzzfc+sp_dryz_kfyd.FieldByName('zyh').AsString+',';
    end;
    sp_dryz_kfyd.Next;
  end;
  if fzzfc='' then
  begin
    Application.MessageBox('你未选择注射液体打印！', '警告', MB_OK +
      MB_ICONWARNING);
    Exit;
  end;
//  if sp_dryz_kfy.Active then
//    createrect( myrect_cx, sp_dryz_kfy, dbgrideh6, 9, 10, 13 );
  sp_sybr.First;
  ChangePrinter_syjhd;
  while Pos(',',fzzfc)>0 do
  begin
      zh:='';
      x_zyh:=Copy(fzzfc,1,Pos(',',fzzfc)-1);
      sp_dryz_kfyd.First;
      while not sp_dryz_kfyd.eof do
      begin
        if (sp_dryz_kfyd.FieldByName('xzbz').AsBoolean=true) and (sp_dryz_kfyd.FieldByName('zyh').AsString=x_zyh) and
           (Pos(sp_dryz_kfyd.FieldByName('fzph').AsString,zh)<1)  then
        begin
          if Trim(sp_dryz_kfyd.FieldByName('fzph').AsString)<>'' then
            zh:=zh+trim(sp_dryz_kfyd.FieldByName('fzph').AsString)+','
          else
            zh:=zh+trim(sp_dryz_kfyd.FieldByName('yzid').AsString)+',';
        end
        else
        begin

        end;
        sp_dryz_kfyd.Next;
      end;
      with sp_syjhzxd do
      begin
        Filtered := False;
        Close;
        Parameters.Refresh;
        Parameters.ParamByName( '@zyh' ).Value := x_zyh;
        Parameters.ParamByName( '@rq' ).Value := FormatDateTime('yyyyMMdd',dt_zxsj.DateTime);
        Parameters.ParamByName( '@fzph_zh' ).Value := zh;
        Open;
      end;
      DM_data.qry_pub.close;
      DM_data.qry_pub.sql.text := 'select yytj from zybl_zyyz_dytjsz where dyxm=''口服药执行单''';
      DM_data.qry_pub.Open;
      if DM_data.qry_pub.IsEmpty then
      begin
        v_yytj := '';
      end
      else
      begin
        DM_data.qry_pub.First;
        while not DM_data.qry_pub.eof do
        begin
          v_yytj := v_yytj + '(yytj=' + '''' + DM_data.qry_pub.FieldByName( 'yytj' ).asstring + '''' + '  and kdbq=' + '''' + pub_bqdm +
         ''')' + ' or ';
          DM_data.qry_pub.Next;
        end;

      end;

      DM_data.qry_pub.close;
      DM_data.qry_pub.sql.text := 'select lbmc from zybl_zyyz_dylbsz where dyxm=''口服药执行单''';
      DM_data.qry_pub.Open;
      if DM_data.qry_pub.IsEmpty then
      begin
        v_lb := '';
      end
      else
      begin
        DM_data.qry_pub.First;
        while not DM_data.qry_pub.eof do
        begin
          v_lb := v_lb + '(lb=' + '''' + DM_data.qry_pub.FieldByName( 'lbmc' ).asstring + '''' + '  and kdbq=' + '''' + pub_bqdm +
           ''')' + ' or ';
          DM_data.qry_pub.Next;
        end;

      end;

      if v_yytj + v_lb = '' then
      begin
        filter := ' 1<>1 ';
      end
      else
      begin
        filter := v_yytj + v_lb + ' ( xmmc like ''%特殊注射单%'' )';
      end;

      sp_syjhzxd.Filter := filter;

      sp_syjhzxd.Filtered := True;
      sp_sybr.DisableControls;
      sp_sybr.Locate('zyh',x_zyh,[]);
      sp_sybr.EnableControls;
      if not sp_syjhzxd.IsEmpty then
      begin
        ChangePrinter_syjhd;
        frm_zysf_print_service.Printsyjhd( sp_sybr,sp_syjhzxd,FormatDateTime('yyyy-MM-dd',dt_zxsj.DateTime));
        RevertPrinter;
        ChangePrinter_syjhd;
        frm_zysf_print_service.Printsyjhd( sp_sybr,sp_syjhzxd,FormatDateTime('yyyy-MM-dd',dt_zxsj.DateTime));
        RevertPrinter;
      end;
//      DM_data.qry_pub.close;
//      DM_data.qry_pub.SQL.text:='update zybl_zyyz_yzzxqd with(rowlock) set syddy=1 from zybl_zyyz a,zybl_zyyz_yzzxqd b where a.zyh=b.zyh and '+
//      '  a.id=b.yzid and  '+'a.zyh='+''''+Trim( sp_sybr.fieldbyname( 'zyh' ).asstring )+
//      ''''+' and b.zxsj='+ ''''+FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+' and (charindex(a.fzph,'+''''+
//      zh+''''+')>0 or charindex('',''+convert(varchar,a.id)+'','','',''+'+''''+zh+''''+')>0)';
//      DM_data.qry_pub.ExecSQL;
        DM_data.qry_pub.close;
        DM_data.qry_pub.SQL.text:='insert into zybl_zyyz_syddy '+
        'select id,'+''''+FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+' from zybl_zyyz where zxbz=1 and zyh='+''''+Trim( sp_sybr.fieldbyname( 'zyh' ).asstring )+
        ''''+
        ' and   id not in (select yzid from zybl_zyyz_syddy where dyrq='+''''+
        FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+')'+' and (charindex(fzph,'+''''+
      zh+''''+')>0 or charindex('',''+convert(varchar,id)+'','','',''+'+''''+zh+''''+')>0)';
        DM_data.qry_pub.ExecSQL;
      fzzfc:=Copy(fzzfc,Pos(',',fzzfc)+1);
  end;
  sp_dryz_kfyd.EnableControls;

end;

procedure Tfrm_hsdyzxd.MenuItem23Click(Sender: TObject);
var
  i, y, j, count, x: Integer;
  aControl: TControl;
  v_yytj, v_lb, filter,fzzfc,x_zyh,zh: string;
begin
  if Application.MessageBox(pchar('你将打印右边勾选的口服药，是否确认打印？')
    , '询问', MB_OKCANCEL + MB_ICONQUESTION
    + MB_DEFBUTTON2) = IDCANCEL then
  begin
   Exit;
  end;
  sp_dryz_kfyd.DisableControls;
  sp_dryz_kfyd.First;
  while not sp_dryz_kfyd.eof do
  begin
    if (sp_dryz_kfyd.FieldByName('xzbz').AsBoolean=true) and (Pos(sp_dryz_kfyd.FieldByName('zyh').AsString,fzzfc)<1) then
    begin
      fzzfc:=fzzfc+sp_dryz_kfyd.FieldByName('zyh').AsString+',';
    end;
    sp_dryz_kfyd.Next;
  end;
  if fzzfc='' then
  begin
    Application.MessageBox('你未选择注射液体打印！', '警告', MB_OK +
      MB_ICONWARNING);
    Exit;
  end;
//  if sp_dryz_kfy.Active then
//    createrect( myrect_cx, sp_dryz_kfy, dbgrideh6, 9, 10, 13 );
  sp_sybr.First;
  ChangePrinter_syjhd;
  while Pos(',',fzzfc)>0 do
  begin
      zh:='';
      x_zyh:=Copy(fzzfc,1,Pos(',',fzzfc)-1);
      sp_dryz_kfyd.First;
      while not sp_dryz_kfyd.eof do
      begin
        if (sp_dryz_kfyd.FieldByName('xzbz').AsBoolean=true) and (sp_dryz_kfyd.FieldByName('zyh').AsString=x_zyh) and
           (Pos(sp_dryz_kfyd.FieldByName('fzph').AsString,zh)<1)  then
        begin
          if Trim(sp_dryz_kfyd.FieldByName('fzph').AsString)<>'' then
            zh:=zh+trim(sp_dryz_kfyd.FieldByName('fzph').AsString)+','
          else
            zh:=zh+trim(sp_dryz_kfyd.FieldByName('yzid').AsString)+',';
        end
        else
        begin

        end;
        sp_dryz_kfyd.Next;
      end;
      with sp_syjhzxd do
      begin
        Filtered := False;
        Close;
        Parameters.Refresh;
        Parameters.ParamByName( '@zyh' ).Value := x_zyh;
        Parameters.ParamByName( '@rq' ).Value := FormatDateTime('yyyyMMdd',dt_zxsj.DateTime);
        Parameters.ParamByName( '@fzph_zh' ).Value := zh;
        Open;
      end;
      DM_data.qry_pub.close;
      DM_data.qry_pub.sql.text := 'select yytj from zybl_zyyz_dytjsz where dyxm=''口服药执行单''';
      DM_data.qry_pub.Open;
      if DM_data.qry_pub.IsEmpty then
      begin
        v_yytj := '';
      end
      else
      begin
        DM_data.qry_pub.First;
        while not DM_data.qry_pub.eof do
        begin
          v_yytj := v_yytj + '(yytj=' + '''' + DM_data.qry_pub.FieldByName( 'yytj' ).asstring + '''' + '  and kdbq=' + '''' + pub_bqdm +
         ''')' + ' or ';
          DM_data.qry_pub.Next;
        end;

      end;

      DM_data.qry_pub.close;
      DM_data.qry_pub.sql.text := 'select lbmc from zybl_zyyz_dylbsz where dyxm=''口服药执行单''';
      DM_data.qry_pub.Open;
      if DM_data.qry_pub.IsEmpty then
      begin
        v_lb := '';
      end
      else
      begin
        DM_data.qry_pub.First;
        while not DM_data.qry_pub.eof do
        begin
          v_lb := v_lb + '(lb=' + '''' + DM_data.qry_pub.FieldByName( 'lbmc' ).asstring + '''' + '  and kdbq=' + '''' + pub_bqdm +
           ''')' + ' or ';
          DM_data.qry_pub.Next;
        end;

      end;

      if v_yytj + v_lb = '' then
      begin
        filter := ' 1<>1 ';
      end
      else
      begin
        filter := v_yytj + v_lb + ' ( xmmc like ''%特殊注射单%'' )';
      end;

      sp_syjhzxd.Filter := filter;

      sp_syjhzxd.Filtered := True;
      sp_sybr.DisableControls;
      sp_sybr.Locate('zyh',x_zyh,[]);
      sp_sybr.EnableControls;
      if not sp_syjhzxd.IsEmpty then
      begin
        ChangePrinter_syjhd;
        frm_zysf_print_service.Printsyjhd( sp_sybr,sp_syjhzxd,FormatDateTime('yyyy-MM-dd',dt_zxsj.DateTime));
        RevertPrinter;
      end;
//      DM_data.qry_pub.close;
//      DM_data.qry_pub.SQL.text:='update zybl_zyyz_yzzxqd with(rowlock) set syddy=1 from zybl_zyyz a,zybl_zyyz_yzzxqd b where a.zyh=b.zyh and '+
//      '  a.id=b.yzid and  '+'a.zyh='+''''+Trim( sp_sybr.fieldbyname( 'zyh' ).asstring )+
//      ''''+' and b.zxsj='+ ''''+FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+' and (charindex(a.fzph,'+''''+
//      zh+''''+')>0 or charindex('',''+convert(varchar,a.id)+'','','',''+'+''''+zh+''''+')>0)';
//      DM_data.qry_pub.ExecSQL;
        DM_data.qry_pub.close;
        DM_data.qry_pub.SQL.text:='insert into zybl_zyyz_syddy '+
        'select id,'+''''+FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+' from zybl_zyyz where zxbz=1 and zyh='+''''+Trim( sp_sybr.fieldbyname( 'zyh' ).asstring )+
        ''''+
        ' and   id not in (select yzid from zybl_zyyz_syddy where dyrq='+''''+
        FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+')'+' and (charindex(fzph,'+''''+
      zh+''''+')>0 or charindex('',''+convert(varchar,id)+'','','',''+'+''''+zh+''''+')>0)';
        DM_data.qry_pub.ExecSQL;
      fzzfc:=Copy(fzzfc,Pos(',',fzzfc)+1);
  end;
  sp_dryz_kfyd.EnableControls;

end;

procedure Tfrm_hsdyzxd.MenuItem24Click(Sender: TObject);
var
  i, y, j, count, x: Integer;
  aControl: TControl;
  v_yytj, v_lb, filter: string;
begin
  if Application.MessageBox(pchar('你将打印本病区所有病人的全部治疗单，是否确认打印？')
    , '询问', MB_OKCANCEL + MB_ICONQUESTION
    + MB_DEFBUTTON2) = IDCANCEL then
  begin
   Exit;
  end;
//  sp_dryz.close;
//  sp_dryz.Parameters.ParamByName( '@bqdm' ).value := pub_bqdm;
//  sp_dryz.Parameters.ParamByName( '@zyh' ).value := '';
//  sp_dryz.Parameters.ParamByName( '@bz' ).value := '全部';
//  sp_dryz.Parameters.ParamByName( '@zxsj' ).value := formatdatetime( 'yyyymmdd', dT_zxsj.Date );
//  sp_dryz.Open;

  sp_sybr.close;
  sp_sybr.Parameters.ParamByName( '@bqdm' ).value := pub_bqdm;
//  sp_sybr.Parameters.ParamByName( '@zyh' ).value := '';
  sp_sybr.Parameters.ParamByName( '@zxsj' ).value := formatdatetime( 'yyyymmdd', dT_zxsj.Date );
  sp_sybr.Open;
  sp_dryz_zld.Filtered := false;
//  if sp_dryz_zld.Active then
//    createrect( myrect_cx, sp_dryz_zld, dbgrideh8, 9, 10, 13 );
  sp_sybr.First;
  ChangePrinter_syjhd;
  while not sp_sybr.eof do
  begin
    with sp_syjhzxd do
    begin
      Filtered := False;
      Close;
      Parameters.Refresh;
      Parameters.ParamByName( '@zyh' ).Value := Trim( sp_sybr.fieldbyname( 'zyh' ).asstring );
      Parameters.ParamByName( '@rq' ).Value := FormatDateTime('yyyyMMdd',dt_zxsj.DateTime);
      Parameters.ParamByName( '@fzph_zh' ).Value := '';
      Open;
    end;
    DM_data.qry_pub.close;
    DM_data.qry_pub.sql.text := 'select yytj from zybl_zyyz_dytjsz where dyxm=''治疗计划单''';
    DM_data.qry_pub.Open;
    if DM_data.qry_pub.IsEmpty then
    begin
      v_yytj := '';
    end
    else
    begin
      DM_data.qry_pub.First;
      while not DM_data.qry_pub.eof do
      begin
        v_yytj := v_yytj + '(yytj=' + '''' + DM_data.qry_pub.FieldByName( 'yytj' ).asstring + '''' + '  and kdbq=' + '''' + pub_bqdm +
         ''')' + ' or ';
        DM_data.qry_pub.Next;
      end;

    end;

    DM_data.qry_pub.close;
    DM_data.qry_pub.sql.text := 'select lbmc from zybl_zyyz_dylbsz where dyxm=''治疗计划单''';
    DM_data.qry_pub.Open;
    if DM_data.qry_pub.IsEmpty then
    begin
      v_lb := '';
    end
    else
    begin
      DM_data.qry_pub.First;
      while not DM_data.qry_pub.eof do
      begin
        v_lb := v_lb + '(lb=' + '''' + DM_data.qry_pub.FieldByName( 'lbmc' ).asstring + '''' + '  and kdbq=' + '''' + pub_bqdm +
         ''')' + ' or ';
        DM_data.qry_pub.Next;
      end;

    end;

    if v_yytj + v_lb = '' then
    begin
      filter := ' 1<>1 ';
    end
    else
    begin
      filter := v_yytj + v_lb +' ( yytj=''特殊情况'' )';
    end;

    sp_syjhzxd.Filter := filter;

    sp_syjhzxd.Filtered := True;
    if not sp_syjhzxd.IsEmpty then
    begin
      ChangePrinter_syjhd;
      frm_zysf_print_service.Printsyjhd( sp_sybr,sp_syjhzxd,FormatDateTime('yyyy-MM-dd',dt_zxsj.DateTime));
      RevertPrinter;
      ChangePrinter_syjhd;
      frm_zysf_print_service.Printsyjhd( sp_sybr,sp_syjhzxd,FormatDateTime('yyyy-MM-dd',dt_zxsj.DateTime));
      RevertPrinter;
    end;
//    DM_data.qry_pub.close;
//    DM_data.qry_pub.SQL.text:='update zybl_zyyz_yzzxqd with(rowlock) set syddy=1 where zyh='+''''+Trim( sp_sybr.fieldbyname( 'zyh' ).asstring )+
//    ''''+' and zxsj='+ ''''+FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+' and yzid in '+
//    '(select id from zybl_zyyz where zyh='+''''+Trim( sp_sybr.fieldbyname( 'zyh' ).asstring )+''''+
//    ' and (yytj in (select yytj from zybl_zyyz_dytjsz where dyxm=''治疗计划单'') or '+
//    'lb in (select lbmc from zybl_zyyz_dylbsz where dyxm=''治疗计划单'')'+'))';
//    DM_data.qry_pub.ExecSQL;
        DM_data.qry_pub.close;
        DM_data.qry_pub.SQL.text:='insert into zybl_zyyz_syddy '+
        'select id,'+''''+FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+' from zybl_zyyz where zxbz=1 and zyh='+''''+Trim( sp_sybr.fieldbyname( 'zyh' ).asstring )+
        ''''+
        ' and (yytj in (select yytj from zybl_zyyz_dytjsz where dyxm=''治疗计划单'') or '+
        'lb in (select lbmc from zybl_zyyz_dylbsz where dyxm=''治疗计划单'')) '+
        ' and   id not in (select yzid from zybl_zyyz_syddy where dyrq='+''''+
        FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+')';
        DM_data.qry_pub.ExecSQL;
    sp_sybr.Next;
  end;

end;

procedure Tfrm_hsdyzxd.MenuItem25Click(Sender: TObject);
var
  i, y, j, count, x: Integer;
  aControl: TControl;
  v_yytj, v_lb, filter: string;
begin
  if Application.MessageBox(pchar('你将打印本病区所有病人的全部治疗单，是否确认打印？')
    , '询问', MB_OKCANCEL + MB_ICONQUESTION
    + MB_DEFBUTTON2) = IDCANCEL then
  begin
   Exit;
  end;
//  sp_dryz.close;
//  sp_dryz.Parameters.ParamByName( '@bqdm' ).value := pub_bqdm;
//  sp_dryz.Parameters.ParamByName( '@zyh' ).value := '';
//  sp_dryz.Parameters.ParamByName( '@bz' ).value := '全部';
//  sp_dryz.Parameters.ParamByName( '@zxsj' ).value := formatdatetime( 'yyyymmdd', dT_zxsj.Date );
//  sp_dryz.Open;

  sp_sybr.close;
  sp_sybr.Parameters.ParamByName( '@bqdm' ).value := pub_bqdm;
//  sp_sybr.Parameters.ParamByName( '@zyh' ).value := '';
  sp_sybr.Parameters.ParamByName( '@zxsj' ).value := formatdatetime( 'yyyymmdd', dT_zxsj.Date );
  sp_sybr.Open;
  sp_dryz_zld.Filtered := false;
//  if sp_dryz_zld.Active then
//    createrect( myrect_cx, sp_dryz_zld, dbgrideh8, 9, 10, 13 );
  sp_sybr.First;
  ChangePrinter_syjhd;
  while not sp_sybr.eof do
  begin
    with sp_syjhzxd do
    begin
      Filtered := False;
      Close;
      Parameters.Refresh;
      Parameters.ParamByName( '@zyh' ).Value := Trim( sp_sybr.fieldbyname( 'zyh' ).asstring );
      Parameters.ParamByName( '@rq' ).Value := FormatDateTime('yyyyMMdd',dt_zxsj.DateTime);
      Parameters.ParamByName( '@fzph_zh' ).Value := '';
      Open;
    end;
    DM_data.qry_pub.close;
    DM_data.qry_pub.sql.text := 'select yytj from zybl_zyyz_dytjsz where dyxm=''治疗计划单''';
    DM_data.qry_pub.Open;
    if DM_data.qry_pub.IsEmpty then
    begin
      v_yytj := '';
    end
    else
    begin
      DM_data.qry_pub.First;
      while not DM_data.qry_pub.eof do
      begin
        v_yytj := v_yytj + '(yytj=' + '''' + DM_data.qry_pub.FieldByName( 'yytj' ).asstring + '''' + '  and kdbq=' + '''' + pub_bqdm +
         ''')' + ' or ';
        DM_data.qry_pub.Next;
      end;

    end;

    DM_data.qry_pub.close;
    DM_data.qry_pub.sql.text := 'select lbmc from zybl_zyyz_dylbsz where dyxm=''治疗计划单''';
    DM_data.qry_pub.Open;
    if DM_data.qry_pub.IsEmpty then
    begin
      v_lb := '';
    end
    else
    begin
      DM_data.qry_pub.First;
      while not DM_data.qry_pub.eof do
      begin
        v_lb := v_lb + '(lb=' + '''' + DM_data.qry_pub.FieldByName( 'lbmc' ).asstring + '''' + '  and kdbq=' + '''' + pub_bqdm +
         ''')' + ' or ';
        DM_data.qry_pub.Next;
      end;

    end;

    if v_yytj + v_lb = '' then
    begin
      filter := ' 1<>1 ';
    end
    else
    begin
      filter := v_yytj + v_lb +' ( yytj=''特殊情况'' )';
    end;

    sp_syjhzxd.Filter := filter;

    sp_syjhzxd.Filtered := True;
    if not sp_syjhzxd.IsEmpty then
    begin
      ChangePrinter_syjhd;
      frm_zysf_print_service.Printsyjhd( sp_sybr,sp_syjhzxd,FormatDateTime('yyyy-MM-dd',dt_zxsj.DateTime));
      RevertPrinter;
    end;
//    DM_data.qry_pub.close;
//    DM_data.qry_pub.SQL.text:='update zybl_zyyz_yzzxqd with(rowlock) set syddy=1 where zyh='+''''+Trim( sp_sybr.fieldbyname( 'zyh' ).asstring )+
//    ''''+' and zxsj='+ ''''+FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+' and yzid in '+
//    '(select id from zybl_zyyz where zyh='+''''+Trim( sp_sybr.fieldbyname( 'zyh' ).asstring )+''''+
//    ' and (yytj in (select yytj from zybl_zyyz_dytjsz where dyxm=''治疗计划单'') or '+
//    'lb in (select lbmc from zybl_zyyz_dylbsz where dyxm=''治疗计划单'')'+'))';
//    DM_data.qry_pub.ExecSQL;
        DM_data.qry_pub.close;
        DM_data.qry_pub.SQL.text:='insert into zybl_zyyz_syddy '+
        'select id,'+''''+FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+' from zybl_zyyz where zxbz=1 and zyh='+''''+Trim( sp_sybr.fieldbyname( 'zyh' ).asstring )+
        ''''+
        ' and (yytj in (select yytj from zybl_zyyz_dytjsz where dyxm=''治疗计划单'') or '+
        'lb in (select lbmc from zybl_zyyz_dylbsz where dyxm=''治疗计划单'')) '+
        ' and   id not in (select yzid from zybl_zyyz_syddy where dyrq='+''''+
        FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+')';
        DM_data.qry_pub.ExecSQL;
    sp_sybr.Next;
  end;

end;

procedure Tfrm_hsdyzxd.MenuItem26Click(Sender: TObject);
var
  i, y, j, count, x: Integer;
  aControl: TControl;
  v_yytj, v_lb, filter: string;
begin
  if Application.MessageBox(pchar('你将打印左边勾选的病人的全部治疗单，是否确认打印？')
    , '询问', MB_OKCANCEL + MB_ICONQUESTION
    + MB_DEFBUTTON2) = IDCANCEL then
  begin
   Exit;
  end;

//  if sp_dryz_zld.Active then
//    createrect( myrect_cx, sp_dryz_zld, dbgrideh8, 9, 10, 13 );
  sp_sybr.First;
  ChangePrinter_syjhd;
  while not sp_sybr.eof do
  begin
    if sp_sybr.FieldByName('xzbz').AsBoolean=false then
    begin
      sp_sybr.Next;
    end
    else
    begin
      with sp_syjhzxd do
      begin
        Filtered := False;
        Close;
        Parameters.Refresh;
        Parameters.ParamByName( '@zyh' ).Value := Trim( sp_sybr.fieldbyname( 'zyh' ).asstring );
        Parameters.ParamByName( '@rq' ).Value := FormatDateTime('yyyyMMdd',dt_zxsj.DateTime);
        Parameters.ParamByName( '@fzph_zh' ).Value := '';
        Open;
      end;
      DM_data.qry_pub.close;
      DM_data.qry_pub.sql.text := 'select yytj from zybl_zyyz_dytjsz where dyxm=''治疗计划单''';
      DM_data.qry_pub.Open;
      if DM_data.qry_pub.IsEmpty then
      begin
        v_yytj := '';
      end
      else
      begin
        DM_data.qry_pub.First;
        while not DM_data.qry_pub.eof do
        begin
          v_yytj := v_yytj + '(yytj=' + '''' + DM_data.qry_pub.FieldByName( 'yytj' ).asstring + '''' + '  and kdbq=' + '''' + pub_bqdm +
         ''')' + ' or ';
          DM_data.qry_pub.Next;
        end;

      end;

      DM_data.qry_pub.close;
      DM_data.qry_pub.sql.text := 'select lbmc from zybl_zyyz_dylbsz where dyxm=''治疗计划单''';
      DM_data.qry_pub.Open;
      if DM_data.qry_pub.IsEmpty then
      begin
        v_lb := '';
      end
      else
      begin
        DM_data.qry_pub.First;
        while not DM_data.qry_pub.eof do
        begin
          v_lb := v_lb + '(lb=' + '''' + DM_data.qry_pub.FieldByName( 'lbmc' ).asstring + '''' + '  and kdbq=' + '''' + pub_bqdm +
           ''')' + ' or ';
          DM_data.qry_pub.Next;
        end;

      end;

      if v_yytj + v_lb = '' then
      begin
        filter := ' 1<>1 ';
      end
      else
      begin
        filter := v_yytj + v_lb + ' ( xmmc like ''%特殊情况的注射%'' )';
      end;

      sp_syjhzxd.Filter := filter;

      sp_syjhzxd.Filtered := True;
      if not sp_syjhzxd.IsEmpty then
      begin
        ChangePrinter_syjhd;
        frm_zysf_print_service.Printsyjhd( sp_sybr,sp_syjhzxd,FormatDateTime('yyyy-MM-dd',dt_zxsj.DateTime));
        RevertPrinter;
        ChangePrinter_syjhd;
        frm_zysf_print_service.Printsyjhd( sp_sybr,sp_syjhzxd,FormatDateTime('yyyy-MM-dd',dt_zxsj.DateTime));
        RevertPrinter;
      end;
//    DM_data.qry_pub.close;
//    DM_data.qry_pub.SQL.text:='update zybl_zyyz_yzzxqd with(rowlock) set syddy=1 where zyh='+''''+Trim( sp_sybr.fieldbyname( 'zyh' ).asstring )+
//    ''''+' and zxsj='+ ''''+FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+' and yzid in '+
//    '(select id from zybl_zyyz where zyh='+''''+Trim( sp_sybr.fieldbyname( 'zyh' ).asstring )+''''+
//    ' and (yytj in (select yytj from zybl_zyyz_dytjsz where dyxm=''治疗计划单'') or '+
//    'lb in (select lbmc from zybl_zyyz_dylbsz where dyxm=''治疗计划单'')'+'))';
//    DM_data.qry_pub.ExecSQL;
        DM_data.qry_pub.close;
        DM_data.qry_pub.SQL.text:='insert into zybl_zyyz_syddy '+
        'select id,'+''''+FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+' from zybl_zyyz where zxbz=1 and zyh='+''''+Trim( sp_sybr.fieldbyname( 'zyh' ).asstring )+
        ''''+
        ' and (yytj in (select yytj from zybl_zyyz_dytjsz where dyxm=''治疗计划单'') or '+
        'lb in (select lbmc from zybl_zyyz_dylbsz where dyxm=''治疗计划单'')) '+
        ' and   id not in (select yzid from zybl_zyyz_syddy where dyrq='+''''+
        FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+')';
        DM_data.qry_pub.ExecSQL;
      sp_sybr.Next;
    end;
  end;

end;

procedure Tfrm_hsdyzxd.MenuItem27Click(Sender: TObject);
var
  i, y, j, count, x: Integer;
  aControl: TControl;
  v_yytj, v_lb, filter: string;
begin
  if Application.MessageBox(pchar('你将打印左边勾选的病人的全部治疗单，是否确认打印？')
    , '询问', MB_OKCANCEL + MB_ICONQUESTION
    + MB_DEFBUTTON2) = IDCANCEL then
  begin
   Exit;
  end;

//  if sp_dryz_zld.Active then
//    createrect( myrect_cx, sp_dryz_zld, dbgrideh8, 9, 10, 13 );
  sp_sybr.First;
  ChangePrinter_syjhd;
  while not sp_sybr.eof do
  begin
    if sp_sybr.FieldByName('xzbz').AsBoolean=false then
    begin
      sp_sybr.Next;
    end
    else
    begin
      with sp_syjhzxd do
      begin
        Filtered := False;
        Close;
        Parameters.Refresh;
        Parameters.ParamByName( '@zyh' ).Value := Trim( sp_sybr.fieldbyname( 'zyh' ).asstring );
        Parameters.ParamByName( '@rq' ).Value := FormatDateTime('yyyyMMdd',dt_zxsj.DateTime);
        Parameters.ParamByName( '@fzph_zh' ).Value := '';
        Open;
      end;
      DM_data.qry_pub.close;
      DM_data.qry_pub.sql.text := 'select yytj from zybl_zyyz_dytjsz where dyxm=''治疗计划单''';
      DM_data.qry_pub.Open;
      if DM_data.qry_pub.IsEmpty then
      begin
        v_yytj := '';
      end
      else
      begin
        DM_data.qry_pub.First;
        while not DM_data.qry_pub.eof do
        begin
          v_yytj := v_yytj + '(yytj=' + '''' + DM_data.qry_pub.FieldByName( 'yytj' ).asstring + '''' + '  and kdbq=' + '''' + pub_bqdm +
         ''')' + ' or ';
          DM_data.qry_pub.Next;
        end;

      end;

      DM_data.qry_pub.close;
      DM_data.qry_pub.sql.text := 'select lbmc from zybl_zyyz_dylbsz where dyxm=''治疗计划单''';
      DM_data.qry_pub.Open;
      if DM_data.qry_pub.IsEmpty then
      begin
        v_lb := '';
      end
      else
      begin
        DM_data.qry_pub.First;
        while not DM_data.qry_pub.eof do
        begin
          v_lb := v_lb + '(lb=' + '''' + DM_data.qry_pub.FieldByName( 'lbmc' ).asstring + '''' + '  and kdbq=' + '''' + pub_bqdm +
           ''')' + ' or ';
          DM_data.qry_pub.Next;
        end;

      end;

      if v_yytj + v_lb = '' then
      begin
        filter := ' 1<>1 ';
      end
      else
      begin
        filter := v_yytj + v_lb + ' ( xmmc like ''%特殊情况的注射%'' )';
      end;

      sp_syjhzxd.Filter := filter;

      sp_syjhzxd.Filtered := True;
      if not sp_syjhzxd.IsEmpty then
      begin
        ChangePrinter_syjhd;
        frm_zysf_print_service.Printsyjhd( sp_sybr,sp_syjhzxd,FormatDateTime('yyyy-MM-dd',dt_zxsj.DateTime));
        RevertPrinter;
      end;
//    DM_data.qry_pub.close;
//    DM_data.qry_pub.SQL.text:='update zybl_zyyz_yzzxqd with(rowlock) set syddy=1 where zyh='+''''+Trim( sp_sybr.fieldbyname( 'zyh' ).asstring )+
//    ''''+' and zxsj='+ ''''+FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+' and yzid in '+
//    '(select id from zybl_zyyz where zyh='+''''+Trim( sp_sybr.fieldbyname( 'zyh' ).asstring )+''''+
//    ' and (yytj in (select yytj from zybl_zyyz_dytjsz where dyxm=''治疗计划单'') or '+
//    'lb in (select lbmc from zybl_zyyz_dylbsz where dyxm=''治疗计划单'')'+'))';
//    DM_data.qry_pub.ExecSQL;
        DM_data.qry_pub.close;
        DM_data.qry_pub.SQL.text:='insert into zybl_zyyz_syddy '+
        'select id,'+''''+FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+' from zybl_zyyz where zxbz=1 and zyh='+''''+Trim( sp_sybr.fieldbyname( 'zyh' ).asstring )+
        ''''+
        ' and (yytj in (select yytj from zybl_zyyz_dytjsz where dyxm=''治疗计划单'') or '+
        'lb in (select lbmc from zybl_zyyz_dylbsz where dyxm=''治疗计划单'')) '+
        ' and   id not in (select yzid from zybl_zyyz_syddy where dyrq='+''''+
        FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+')';
        DM_data.qry_pub.ExecSQL;
      sp_sybr.Next;
    end;
  end;

end;

procedure Tfrm_hsdyzxd.MenuItem28Click(Sender: TObject);
var
  i, y, j, count, x: Integer;
  aControl: TControl;
  v_yytj, v_lb, filter,fzzfc,x_zyh,zh: string;
begin
  if Application.MessageBox(pchar('你将打印右边勾选的治疗单，是否确认打印？')
    , '询问', MB_OKCANCEL + MB_ICONQUESTION
    + MB_DEFBUTTON2) = IDCANCEL then
  begin
   Exit;
  end;
  sp_dryz_zld.DisableControls;
  sp_dryz_zld.First;
  while not sp_dryz_zld.eof do
  begin
    if (sp_dryz_zld.FieldByName('xzbz').AsBoolean=true) and (Pos(sp_dryz_zld.FieldByName('zyh').AsString,fzzfc)<1) then
    begin
      fzzfc:=fzzfc+sp_dryz_zld.FieldByName('zyh').AsString+',';
    end;
    sp_dryz_zld.Next;
  end;
  if fzzfc='' then
  begin
    Application.MessageBox('你未选择注射液体打印！', '警告', MB_OK +
      MB_ICONWARNING);
    Exit;
  end;
//  if sp_dryz_zld.Active then
//    createrect( myrect_cx, sp_dryz_zld, dbgrideh8, 9, 10, 13 );
  sp_sybr.First;
  ChangePrinter_syjhd;
  while Pos(',',fzzfc)>0 do
  begin
      zh:='';
      x_zyh:=Copy(fzzfc,1,Pos(',',fzzfc)-1);
      sp_dryz_zld.First;
      while not sp_dryz_zld.eof do
      begin
        if (sp_dryz_zld.FieldByName('xzbz').AsBoolean=true) and (sp_dryz_zld.FieldByName('zyh').AsString=x_zyh) and
           (Pos(sp_dryz_zld.FieldByName('fzph').AsString,zh)<1)  then
        begin
          if Trim(sp_dryz_zld.FieldByName('fzph').AsString)<>'' then
            zh:=zh+trim(sp_dryz_zld.FieldByName('fzph').AsString)+','
          else
            zh:=zh+trim(sp_dryz_zld.FieldByName('yzid').AsString)+',';
        end
        else
        begin

        end;
        sp_dryz_zld.Next;
      end;
      with sp_syjhzxd do
      begin
        Filtered := False;
        Close;
        Parameters.Refresh;
        Parameters.ParamByName( '@zyh' ).Value := x_zyh;
        Parameters.ParamByName( '@rq' ).Value := FormatDateTime('yyyyMMdd',dt_zxsj.DateTime);
        Parameters.ParamByName( '@fzph_zh' ).Value := zh;
        Open;
      end;
      DM_data.qry_pub.close;
      DM_data.qry_pub.sql.text := 'select yytj from zybl_zyyz_dytjsz where dyxm=''治疗计划单''';
      DM_data.qry_pub.Open;
      if DM_data.qry_pub.IsEmpty then
      begin
        v_yytj := '';
      end
      else
      begin
        DM_data.qry_pub.First;
        while not DM_data.qry_pub.eof do
        begin
          v_yytj := v_yytj + '(yytj=' + '''' + DM_data.qry_pub.FieldByName( 'yytj' ).asstring + '''' + '  and kdbq=' + '''' + pub_bqdm +
         ''')' + ' or ';
          DM_data.qry_pub.Next;
        end;

      end;

      DM_data.qry_pub.close;
      DM_data.qry_pub.sql.text := 'select lbmc from zybl_zyyz_dylbsz where dyxm=''治疗计划单''';
      DM_data.qry_pub.Open;
      if DM_data.qry_pub.IsEmpty then
      begin
        v_lb := '';
      end
      else
      begin
        DM_data.qry_pub.First;
        while not DM_data.qry_pub.eof do
        begin
          v_lb := v_lb + '(lb=' + '''' + DM_data.qry_pub.FieldByName( 'lbmc' ).asstring + '''' + '  and kdbq=' + '''' + pub_bqdm +
           ''')' + ' or ';
          DM_data.qry_pub.Next;
        end;

      end;

      if v_yytj + v_lb = '' then
      begin
        filter := ' 1<>1 ';
      end
      else
      begin
        filter := v_yytj + v_lb + ' ( xmmc like ''%特殊注射单%'' )';
      end;

      sp_syjhzxd.Filter := filter;

      sp_syjhzxd.Filtered := True;
      sp_sybr.DisableControls;
      sp_sybr.Locate('zyh',x_zyh,[]);
      sp_sybr.EnableControls;
      if not sp_syjhzxd.IsEmpty then
      begin
        ChangePrinter_syjhd;
        frm_zysf_print_service.Printsyjhd( sp_sybr,sp_syjhzxd,FormatDateTime('yyyy-MM-dd',dt_zxsj.DateTime));
        RevertPrinter;
        ChangePrinter_syjhd;
        frm_zysf_print_service.Printsyjhd( sp_sybr,sp_syjhzxd,FormatDateTime('yyyy-MM-dd',dt_zxsj.DateTime));
        RevertPrinter;
      end;
//      DM_data.qry_pub.close;
//      DM_data.qry_pub.SQL.text:='update zybl_zyyz_yzzxqd with(rowlock) set syddy=1 from zybl_zyyz a,zybl_zyyz_yzzxqd b where a.zyh=b.zyh and '+
//      '  a.id=b.yzid and  '+'a.zyh='+''''+Trim( sp_sybr.fieldbyname( 'zyh' ).asstring )+
//      ''''+' and b.zxsj='+ ''''+FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+' and (charindex(a.fzph,'+''''+
//      zh+''''+')>0 or charindex('',''+convert(varchar,a.id)+'','','',''+'+''''+zh+''''+')>0)';
//      DM_data.qry_pub.ExecSQL;
        DM_data.qry_pub.close;
        DM_data.qry_pub.SQL.text:='insert into zybl_zyyz_syddy '+
        'select id,'+''''+FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+' from zybl_zyyz where zxbz=1 and zyh='+''''+Trim( sp_sybr.fieldbyname( 'zyh' ).asstring )+
        ''''+
        ' and   id not in (select yzid from zybl_zyyz_syddy where dyrq='+''''+
        FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+')'+' and (charindex(fzph,'+''''+
        zh+''''+')>0 or charindex('',''+convert(varchar,id)+'','','',''+'+''''+zh+''''+')>0)';
        DM_data.qry_pub.ExecSQL;
      fzzfc:=Copy(fzzfc,Pos(',',fzzfc)+1);
  end;
  sp_dryz_zld.EnableControls;

end;

procedure Tfrm_hsdyzxd.MenuItem29Click(Sender: TObject);
var
  i, y, j, count, x: Integer;
  aControl: TControl;
  v_yytj, v_lb, filter,fzzfc,x_zyh,zh: string;
begin
  if Application.MessageBox(pchar('你将打印右边勾选的治疗单，是否确认打印？')
    , '询问', MB_OKCANCEL + MB_ICONQUESTION
    + MB_DEFBUTTON2) = IDCANCEL then
  begin
   Exit;
  end;
  sp_dryz_zld.DisableControls;
  sp_dryz_zld.First;
  while not sp_dryz_zld.eof do
  begin
    if (sp_dryz_zld.FieldByName('xzbz').AsBoolean=true) and (Pos(sp_dryz_zld.FieldByName('zyh').AsString,fzzfc)<1) then
    begin
      fzzfc:=fzzfc+sp_dryz_zld.FieldByName('zyh').AsString+',';
    end;
    sp_dryz_zld.Next;
  end;
  if fzzfc='' then
  begin
    Application.MessageBox('你未选择注射液体打印！', '警告', MB_OK +
      MB_ICONWARNING);
    Exit;
  end;
//  if sp_dryz_zld.Active then
//    createrect( myrect_cx, sp_dryz_zld, dbgrideh8, 9, 10, 13 );
  sp_sybr.First;
  ChangePrinter_syjhd;
  while Pos(',',fzzfc)>0 do
  begin
      zh:='';
      x_zyh:=Copy(fzzfc,1,Pos(',',fzzfc)-1);
      sp_dryz_zld.First;
      while not sp_dryz_zld.eof do
      begin
        if (sp_dryz_zld.FieldByName('xzbz').AsBoolean=true) and (sp_dryz_zld.FieldByName('zyh').AsString=x_zyh) and
           (Pos(sp_dryz_zld.FieldByName('fzph').AsString,zh)<1)  then
        begin
          if Trim(sp_dryz_zld.FieldByName('fzph').AsString)<>'' then
            zh:=zh+trim(sp_dryz_zld.FieldByName('fzph').AsString)+','
          else
            zh:=zh+trim(sp_dryz_zld.FieldByName('yzid').AsString)+',';
        end
        else
        begin

        end;
        sp_dryz_zld.Next;
      end;
      with sp_syjhzxd do
      begin
        Filtered := False;
        Close;
        Parameters.Refresh;
        Parameters.ParamByName( '@zyh' ).Value := x_zyh;
        Parameters.ParamByName( '@rq' ).Value := FormatDateTime('yyyyMMdd',dt_zxsj.DateTime);
        Parameters.ParamByName( '@fzph_zh' ).Value := zh;
        Open;
      end;
      DM_data.qry_pub.close;
      DM_data.qry_pub.sql.text := 'select yytj from zybl_zyyz_dytjsz where dyxm=''治疗计划单''';
      DM_data.qry_pub.Open;
      if DM_data.qry_pub.IsEmpty then
      begin
        v_yytj := '';
      end
      else
      begin
        DM_data.qry_pub.First;
        while not DM_data.qry_pub.eof do
        begin
          v_yytj := v_yytj + '(yytj=' + '''' + DM_data.qry_pub.FieldByName( 'yytj' ).asstring + '''' + '  and kdbq=' + '''' + pub_bqdm +
         ''')' + ' or ';
          DM_data.qry_pub.Next;
        end;

      end;

      DM_data.qry_pub.close;
      DM_data.qry_pub.sql.text := 'select lbmc from zybl_zyyz_dylbsz where dyxm=''治疗计划单''';
      DM_data.qry_pub.Open;
      if DM_data.qry_pub.IsEmpty then
      begin
        v_lb := '';
      end
      else
      begin
        DM_data.qry_pub.First;
        while not DM_data.qry_pub.eof do
        begin
          v_lb := v_lb + '(lb=' + '''' + DM_data.qry_pub.FieldByName( 'lbmc' ).asstring + '''' + '  and kdbq=' + '''' + pub_bqdm +
           ''')' + ' or ';
          DM_data.qry_pub.Next;
        end;

      end;

      if v_yytj + v_lb = '' then
      begin
        filter := ' 1<>1 ';
      end
      else
      begin
        filter := v_yytj + v_lb + ' ( xmmc like ''%特殊注射单%'' )';
      end;

      sp_syjhzxd.Filter := filter;

      sp_syjhzxd.Filtered := True;
      sp_sybr.DisableControls;
      sp_sybr.Locate('zyh',x_zyh,[]);
      sp_sybr.EnableControls;
      if not sp_syjhzxd.IsEmpty then
      begin
        ChangePrinter_syjhd;
        frm_zysf_print_service.Printsyjhd( sp_sybr,sp_syjhzxd,FormatDateTime('yyyy-MM-dd',dt_zxsj.DateTime));
        RevertPrinter;
      end;
//      DM_data.qry_pub.close;
//      DM_data.qry_pub.SQL.text:='update zybl_zyyz_yzzxqd with(rowlock) set syddy=1 from zybl_zyyz a,zybl_zyyz_yzzxqd b where a.zyh=b.zyh and '+
//      '  a.id=b.yzid and  '+'a.zyh='+''''+Trim( sp_sybr.fieldbyname( 'zyh' ).asstring )+
//      ''''+' and b.zxsj='+ ''''+FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+' and (charindex(a.fzph,'+''''+
//      zh+''''+')>0 or charindex('',''+convert(varchar,a.id)+'','','',''+'+''''+zh+''''+')>0)';
//      DM_data.qry_pub.ExecSQL;
        DM_data.qry_pub.close;
        DM_data.qry_pub.SQL.text:='insert into zybl_zyyz_syddy '+
        'select id,'+''''+FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+' from zybl_zyyz where zxbz=1 and zyh='+''''+Trim( sp_sybr.fieldbyname( 'zyh' ).asstring )+
        ''''+
        ' and   id not in (select yzid from zybl_zyyz_syddy where dyrq='+''''+
        FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+')'+' and (charindex(fzph,'+''''+
        zh+''''+')>0 or charindex('',''+convert(varchar,id)+'','','',''+'+''''+zh+''''+')>0)';
        DM_data.qry_pub.ExecSQL;
      fzzfc:=Copy(fzzfc,Pos(',',fzzfc)+1);
  end;
  sp_dryz_zld.EnableControls;

end;

procedure Tfrm_hsdyzxd.MenuItem2Click(Sender: TObject);
var
  i, y, j, count, x: Integer;
  aControl: TControl;
  v_yytj, v_lb, filter: string;
begin
  if Application.MessageBox(pchar('你将打印选择病人的所有临时输液单，是否确认打印？')
    , '询问', MB_OKCANCEL + MB_ICONQUESTION
    + MB_DEFBUTTON2) = IDCANCEL then
  begin
   Exit;
  end;
  sp_sybr.First;
  while not sp_sybr.eof do
  begin
    if sp_sybr.FieldByName('xzbz').AsBoolean=false then
    begin
      sp_sybr.Next;
    end
    else
    begin
      with sp_syjhzxd do
      begin
        Filtered := False;
        Close;
        Parameters.Refresh;
        Parameters.ParamByName( '@zyh' ).Value := Trim( sp_sybr.fieldbyname( 'zyh' ).asstring );
        Parameters.ParamByName( '@rq' ).Value := FormatDateTime('yyyyMMdd',dt_zxsj.DateTime);
        Parameters.ParamByName( '@fzph_zh' ).Value := '';
        Open;
      end;
      if (pub_yydm='0003') then
      begin
        DM_data.qry_pub.close;
        DM_data.qry_pub.sql.text := 'select * from zybl_zyyz where zyh='+''''+ Trim( sp_sybr.fieldbyname( 'zyh' ).asstring )
        +''''+' and (xmmc like ''%皮试%'' or xmmc like ''%敏试%'') and charindex(''-'',xmmc)<1 and  charindex(''+'',xmmc)<1 and tzbz=0 and charindex(''阴'',xmmc)<1 and  charindex(''阳'',xmmc)<1';
        DM_data.qry_pub.Open;
      end
      else
      begin
        DM_data.qry_pub.close;
        DM_data.qry_pub.sql.text := 'select * from sys_czy where 1<>1';
        DM_data.qry_pub.Open;
      end;
      if DM_data.qry_pub.IsEmpty then
      begin
      DM_data.qry_pub.close;
      DM_data.qry_pub.sql.text := 'select yytj from zybl_zyyz_dytjsz where dyxm=''输液计划单''';
      DM_data.qry_pub.Open;
      if DM_data.qry_pub.IsEmpty then
      begin
        v_yytj := '';
      end
      else
      begin
        DM_data.qry_pub.First;
        while not DM_data.qry_pub.eof do
        begin
          v_yytj := v_yytj + '(yytj=' + '''' + DM_data.qry_pub.FieldByName( 'yytj' ).asstring + '''' + ' and sx=''临时''  and kdbq=' + '''' + pub_bqdm +
             ''')' + ' or ';
          DM_data.qry_pub.Next;
        end;

      end;

      DM_data.qry_pub.close;
      DM_data.qry_pub.sql.text := 'select lbmc from zybl_zyyz_dylbsz where dyxm=''输液计划单''';
      DM_data.qry_pub.Open;
      if DM_data.qry_pub.IsEmpty then
      begin
        v_lb := '';
      end
      else
      begin
        DM_data.qry_pub.First;
        while not DM_data.qry_pub.eof do
        begin
          v_lb := v_lb + '(lb=' + '''' + DM_data.qry_pub.FieldByName( 'lbmc' ).asstring + '''' + ' and sx=''临时'' and kdbq=' + '''' + pub_bqdm +
             ''')' + ' or ';
          DM_data.qry_pub.Next;
        end;

      end;

      if v_yytj + v_lb = '' then
      begin
        filter := ' 1<>1 ';
      end
      else
      begin
        filter := v_yytj + v_lb + ' ( xmmc like ''%皮试%'' and  kdrq=' + '''' + formatdatetime( 'yy-MM-dd', frm_func.curr_date ) + ' 00:00'+''')'+
        ' or '+' ( xmmc like ''%敏试%'' and  kdrq=' + '''' + formatdatetime( 'yy-MM-dd', frm_func.curr_date ) + ' 00:00'+''')';
      end;

      sp_syjhzxd.Filter := filter;

      sp_syjhzxd.Filtered := True;
      if sp_syjhzxd.IsEmpty then
      begin
        Application.MessageBox(pchar('无数据！'+filter), '提示', MB_OKCANCEL +
          MB_ICONINFORMATION);
      end
      else
      begin
//        ChangePrinter_syjhd;
//        frm_zysf_print_service.Printsyjhd( sp_sybr,sp_syjhzxd,FormatDateTime('yyyy-MM-dd',dt_zxsj.DateTime));
//        RevertPrinter;
//        ChangePrinter_syjhd;
//        frm_zysf_print_service.Printsyjhd( sp_sybr,sp_syjhzxd,FormatDateTime('yyyy-MM-dd',dt_zxsj.DateTime));
//        RevertPrinter;
         if pub_yydm='0271' then //荆门市掇刀人民医院
         begin
           frm_zysf_print_service.print_yzzxddy( sp_sybr,sp_syjhzxd,trim(formatdatetime('yyyy-MM-dd hh:mm',Frm_func.curr_date)));
           frm_zysf_print_service.print_yzzxddy( sp_sybr,sp_syjhzxd,trim(formatdatetime('yyyy-MM-dd hh:mm',Frm_func.curr_date)));
         end
         else
         begin
          syjhddy;
          syjhddy;
         end;
//        DM_data.qry_pub.close;
//        DM_data.qry_pub.SQL.text:='update zybl_zyyz_yzzxqd with(rowlock) set syddy=1 from zybl_zyyz a,zybl_zyyz_yzzxqd b where a.zyh=b.zyh and '+
//        '  a.id=b.yzid and  '+'a.zyh='+''''+Trim( sp_sybr.fieldbyname( 'zyh' ).asstring )+
//        ''''+' and b.zxsj='+ ''''+FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+' and a.yzsx=''临时'''+
//        ' and a.yytj in (select yytj from zybl_zyyz_dytjsz where dyxm=''输液计划单'')';
//        DM_data.qry_pub.ExecSQL;
        DM_data.qry_pub.close;
        DM_data.qry_pub.SQL.text:='insert into zybl_zyyz_syddy '+
        'select id,'+''''+FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+' from zybl_zyyz where zxbz=1 and zyh='+''''+Trim( sp_sybr.fieldbyname( 'zyh' ).asstring )+
        ''''+' and yzsx=''临时'' and convert(varchar,kdrq,112)='+''''+FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+
        ' and yytj in (select yytj from zybl_zyyz_dytjsz where dyxm=''输液计划单'')'+
        ' and  id not in (select yzid from zybl_zyyz_syddy where dyrq='+''''+
        FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+')';
        DM_data.qry_pub.ExecSQL;
      end;
      end;
      sp_sybr.Next;
    end;
  end;

end;

procedure Tfrm_hsdyzxd.MenuItem30Click(Sender: TObject);
begin
try
  if sp_dryz_zsd.fieldbyname( 'fzph' ).asstring<>'' then
  begin
    DM_data.qry_pub.close;
    DM_data.qry_pub.sql.text:='select * from zybl_zyyz where fzph='+''''+
    sp_dryz_zsd.fieldbyname( 'fzph' ).asstring+'''';
    DM_data.qry_pub.Open;
    if not DM_data.qry_pub.IsEmpty then
    begin
      DM_data.qry_pub.First;
      while not DM_data.qry_pub.eof do
      begin
        qry_up_yzzxqd.close;
        qry_up_yzzxqd.SQL.text:='delete from zybl_zyyz_syddy  where yzid='+
        DM_data.qry_pub.FieldByName('id').asstring+' and dyrq='+''''+
        FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+'''';
        qry_up_yzzxqd.ExecSQL;
        DM_data.qry_pub.Next;
      end;
      Application.MessageBox('修改完成！', '提示', MB_OK + MB_ICONINFORMATION);
    end;
  end
  else
  begin
    qry_up_yzzxqd.close;
    qry_up_yzzxqd.SQL.text:='delete from zybl_zyyz_syddy  where yzid='+
    sp_dryz_zsd.fieldbyname( 'yzid' ).asstring+' and dyrq='+''''+
        FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+'''';
    qry_up_yzzxqd.ExecSQL;
    Application.MessageBox('修改完成！', '提示', MB_OK + MB_ICONINFORMATION);
  end;

except
  Application.MessageBox('修改失败！请重试！', '错误', MB_OK + MB_ICONSTOP);

end;
end;

procedure Tfrm_hsdyzxd.MenuItem31Click(Sender: TObject);
begin
try
  if not  sp_dryz_zsd.IsEmpty then
  begin
      sp_dryz_zsd.First;
      while not sp_dryz_zsd.eof do
      begin
//        qry_up_yzzxqd.close;
//        qry_up_yzzxqd.SQL.text:='update zybl_zyyz_yzzxqd set syddy=0 where yzid='+
//        sp_dryz_zsd.FieldByName('yzid').asstring;
//        qry_up_yzzxqd.ExecSQL;
        qry_up_yzzxqd.close;
        qry_up_yzzxqd.SQL.text:='delete from zybl_zyyz_syddy  where yzid='+
        sp_dryz_zsd.fieldbyname( 'yzid' ).asstring+' and dyrq='+''''+
        FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+'''';
        qry_up_yzzxqd.ExecSQL;
        sp_dryz_zsd.Next;
      end;
      Application.MessageBox('修改完成！', '提示', MB_OK + MB_ICONINFORMATION);
  end;

except
  Application.MessageBox('修改失败！请重试！', '错误', MB_OK + MB_ICONSTOP);

end;
end;

procedure Tfrm_hsdyzxd.MenuItem32Click(Sender: TObject);
begin
try
  if sp_dryz_kfyd.fieldbyname( 'fzph' ).asstring<>'' then
  begin
    DM_data.qry_pub.close;
    DM_data.qry_pub.sql.text:='select * from zybl_zyyz where fzph='+''''+
    sp_dryz_kfyd.fieldbyname( 'fzph' ).asstring+'''';
    DM_data.qry_pub.Open;
    if not DM_data.qry_pub.IsEmpty then
    begin
      DM_data.qry_pub.First;
      while not DM_data.qry_pub.eof do
      begin
//        qry_up_yzzxqd.close;
//        qry_up_yzzxqd.SQL.text:='update zybl_zyyz_yzzxqd set syddy=0 where yzid='+
//        DM_data.qry_pub.FieldByName('id').asstring;
//        qry_up_yzzxqd.ExecSQL;
        qry_up_yzzxqd.close;
        qry_up_yzzxqd.SQL.text:='delete from zybl_zyyz_syddy  where yzid='+
        DM_data.qry_pub.FieldByName('id').asstring+' and dyrq='+''''+
            FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+'''';
        qry_up_yzzxqd.ExecSQL;
        DM_data.qry_pub.Next;
      end;
      Application.MessageBox('修改完成！', '提示', MB_OK + MB_ICONINFORMATION);
    end;
  end
  else
  begin
//    qry_up_yzzxqd.close;
//    qry_up_yzzxqd.SQL.text:='update zybl_zyyz_yzzxqd set syddy=0 where yzid='+
//    sp_dryz_kfyd.fieldbyname( 'yzid' ).asstring;
//    qry_up_yzzxqd.ExecSQL;
      qry_up_yzzxqd.close;
      qry_up_yzzxqd.SQL.text:='delete from zybl_zyyz_syddy  where yzid='+
      sp_dryz_kfyd.fieldbyname( 'yzid' ).asstring+' and dyrq='+''''+
          FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+'''';
      qry_up_yzzxqd.ExecSQL;
    Application.MessageBox('修改完成！', '提示', MB_OK + MB_ICONINFORMATION);
  end;

except
  Application.MessageBox('修改失败！请重试！', '错误', MB_OK + MB_ICONSTOP);

end;
end;

procedure Tfrm_hsdyzxd.MenuItem33Click(Sender: TObject);
begin
try
  if not  sp_dryz_kfyd.IsEmpty then
  begin
      sp_dryz_kfyd.First;
      while not sp_dryz_kfyd.eof do
      begin
//        qry_up_yzzxqd.close;
//        qry_up_yzzxqd.SQL.text:='update zybl_zyyz_yzzxqd set syddy=0 where yzid='+
//        sp_dryz_kfyd.FieldByName('yzid').asstring;
//        qry_up_yzzxqd.ExecSQL;
        qry_up_yzzxqd.close;
        qry_up_yzzxqd.SQL.text:='delete from zybl_zyyz_syddy  where yzid='+
        sp_dryz_kfyd.FieldByName('yzid').asstring+' and dyrq='+''''+
          FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+'''';
        qry_up_yzzxqd.ExecSQL;
        sp_dryz_kfyd.Next;
      end;
      Application.MessageBox('修改完成！', '提示', MB_OK + MB_ICONINFORMATION);
  end;

except
  Application.MessageBox('修改失败！请重试！', '错误', MB_OK + MB_ICONSTOP);

end;
end;

procedure Tfrm_hsdyzxd.MenuItem3Click(Sender: TObject);
var
  i, y, j, count, x: Integer;
  aControl: TControl;
  v_yytj, v_lb, filter: string;
begin
  if Application.MessageBox(pchar('你将打印选择病人的所有临时输液单，是否确认打印？')
    , '询问', MB_OKCANCEL + MB_ICONQUESTION
    + MB_DEFBUTTON2) = IDCANCEL then
  begin
   Exit;
  end;
  sp_sybr.First;
  while not sp_sybr.eof do
  begin
    if sp_sybr.FieldByName('xzbz').AsBoolean=false then
    begin
      sp_sybr.Next;
    end
    else
    begin
      with sp_syjhzxd do
      begin
        Filtered := False;
        Close;
        Parameters.Refresh;
        Parameters.ParamByName( '@zyh' ).Value := Trim( sp_sybr.fieldbyname( 'zyh' ).asstring );
        Parameters.ParamByName( '@rq' ).Value := FormatDateTime('yyyyMMdd',dt_zxsj.DateTime);
        Parameters.ParamByName( '@fzph_zh' ).Value := '';
        Open;
      end;
      if (pub_yydm='0003')  then
      begin
        DM_data.qry_pub.close;
        DM_data.qry_pub.sql.text := 'select * from zybl_zyyz where zyh='+''''+ Trim( sp_sybr.fieldbyname( 'zyh' ).asstring )
        +''''+' and (xmmc like ''%皮试%'' or xmmc like ''%敏试%'') and charindex(''-'',xmmc)<1 and  charindex(''+'',xmmc)<1 and tzbz=0 and charindex(''阴'',xmmc)<1 and  charindex(''阳'',xmmc)<1';
        DM_data.qry_pub.Open;
      end
      else
      begin
        DM_data.qry_pub.close;
        DM_data.qry_pub.sql.text := 'select * from sys_czy where 1<>1';
        DM_data.qry_pub.Open;
      end;
      if DM_data.qry_pub.IsEmpty then
      begin
      DM_data.qry_pub.close;
      DM_data.qry_pub.sql.text := 'select yytj from zybl_zyyz_dytjsz where dyxm=''输液计划单''';
      DM_data.qry_pub.Open;
      if DM_data.qry_pub.IsEmpty then
      begin
        v_yytj := '';
      end
      else
      begin
        DM_data.qry_pub.First;
        while not DM_data.qry_pub.eof do
        begin
          v_yytj := v_yytj + '(yytj=' + '''' + DM_data.qry_pub.FieldByName( 'yytj' ).asstring + '''' + ' and sx=''临时''  and kdbq=' + '''' + pub_bqdm +
             ''')' + ' or ';
          DM_data.qry_pub.Next;
        end;

      end;

      DM_data.qry_pub.close;
      DM_data.qry_pub.sql.text := 'select lbmc from zybl_zyyz_dylbsz where dyxm=''输液计划单''';
      DM_data.qry_pub.Open;
      if DM_data.qry_pub.IsEmpty then
      begin
        v_lb := '';
      end
      else
      begin
        DM_data.qry_pub.First;
        while not DM_data.qry_pub.eof do
        begin
          v_lb := v_lb + '(lb=' + '''' + DM_data.qry_pub.FieldByName( 'lbmc' ).asstring + '''' + ' and sx=''临时'' and kdbq=' + '''' + pub_bqdm +
             ''')' + ' or ';
          DM_data.qry_pub.Next;
        end;

      end;

      if v_yytj + v_lb = '' then
      begin
        filter := ' 1<>1 ';
      end
      else
      begin
        filter := v_yytj + v_lb + ' ( xmmc like ''%皮试%'' and  kdrq=' + '''' + formatdatetime( 'yy-MM-dd', frm_func.curr_date ) + ' 00:00'+''')'+
        ' or '+' ( xmmc like ''%敏试%'' and  kdrq=' + '''' + formatdatetime( 'yy-MM-dd', frm_func.curr_date ) + ' 00:00'+''')';
      end;

      sp_syjhzxd.Filter := filter;

      sp_syjhzxd.Filtered := True;
      if sp_syjhzxd.IsEmpty then
      begin
         Application.MessageBox(pchar('无数据！'+filter), '提示', MB_OKCANCEL +
          MB_ICONINFORMATION);
      end
      else
      begin
//        ChangePrinter_syjhd;
//        frm_zysf_print_service.Printsyjhd( sp_sybr,sp_syjhzxd,FormatDateTime('yyyy-MM-dd',dt_zxsj.DateTime));
//        RevertPrinter;
         if pub_yydm='0271' then //荆门市掇刀人民医院
         begin
            frm_zysf_print_service.print_yzzxddy( sp_sybr,sp_syjhzxd,trim(formatdatetime('yyyy-MM-dd hh:mm',Frm_func.curr_date)));
         end
         else
         syjhddy;
//        DM_data.qry_pub.close;
//        DM_data.qry_pub.SQL.text:='update zybl_zyyz_yzzxqd with(rowlock) set syddy=1 from zybl_zyyz a,zybl_zyyz_yzzxqd b where a.zyh=b.zyh and '+
//        '  a.id=b.yzid and  '+'a.zyh='+''''+Trim( sp_sybr.fieldbyname( 'zyh' ).asstring )+
//        ''''+' and b.zxsj='+ ''''+FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+' and a.yzsx=''临时'''+
//        ' and a.yytj in (select yytj from zybl_zyyz_dytjsz where dyxm=''输液计划单'')';
//        DM_data.qry_pub.ExecSQL;

        DM_data.qry_pub.close;
        DM_data.qry_pub.SQL.text:='insert into zybl_zyyz_syddy'+
        ' select id,'+''''+FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+' from zybl_zyyz '+
        ' where zxbz=1 and zyh='+''''+Trim( sp_sybr.fieldbyname( 'zyh' ).asstring )+''''+
        ' and yzsx=''临时'' and convert(varchar,kdrq,112)='+''''+FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+
        ' and yytj in (select yytj from zybl_zyyz_dytjsz where dyxm=''输液计划单'')'+
        ' and id not in (select yzid from zybl_zyyz_syddy where dyrq='+''''+
        FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+')';
        DM_data.qry_pub.ExecSQL;
      end;
      end;
      sp_sybr.Next;
    end;
  end;

end;

procedure Tfrm_hsdyzxd.MenuItem4Click(Sender: TObject);
var
  i, y, j, count, x: Integer;
  aControl: TControl;
  v_yytj, v_lb, filter: string;
begin
  if Application.MessageBox(pchar('你将打印左边勾选的病人的全部输液单，是否确认打印？')
    , '询问', MB_OKCANCEL + MB_ICONQUESTION
    + MB_DEFBUTTON2) = IDCANCEL then
  begin
   Exit;
  end;

  if sp_dryz.Active then
    createrect( myrect_cx, sp_dryz, dbgrideh2, 9, 10, 13 );
  sp_sybr.First;
  ChangePrinter_syjhd;
  while not sp_sybr.eof do
  begin
    if sp_sybr.FieldByName('xzbz').AsBoolean=false then
    begin
      sp_sybr.Next;
    end
    else
    begin
      with sp_syjhzxd do
      begin
        Filtered := False;
        Close;
        Parameters.Refresh;
        Parameters.ParamByName( '@zyh' ).Value := Trim( sp_sybr.fieldbyname( 'zyh' ).asstring );
        Parameters.ParamByName( '@rq' ).Value := FormatDateTime('yyyyMMdd',dt_zxsj.DateTime);
        Parameters.ParamByName( '@fzph_zh' ).Value := '';
        Open;
      end;
      if (pub_yydm='0003')  then
      begin
        DM_data.qry_pub.close;
        DM_data.qry_pub.sql.text := 'select * from zybl_zyyz where zyh='+''''+ Trim( sp_sybr.fieldbyname( 'zyh' ).asstring )
        +''''+' and (xmmc like ''%皮试%'' or xmmc like ''%敏试%'') and charindex(''-'',xmmc)<1 and  charindex(''+'',xmmc)<1 and tzbz=0 and charindex(''阴'',xmmc)<1 and  charindex(''阳'',xmmc)<1';
        DM_data.qry_pub.Open;
      end
      else
      begin
        DM_data.qry_pub.close;
        DM_data.qry_pub.sql.text := 'select * from sys_czy where 1<>1';
        DM_data.qry_pub.Open;
      end;
      if DM_data.qry_pub.IsEmpty then
      begin
      DM_data.qry_pub.close;
      DM_data.qry_pub.sql.text := 'select yytj from zybl_zyyz_dytjsz where dyxm=''输液计划单''';
      DM_data.qry_pub.Open;
      if DM_data.qry_pub.IsEmpty then
      begin
        v_yytj := '';
      end
      else
      begin
        DM_data.qry_pub.First;
        while not DM_data.qry_pub.eof do
        begin
          v_yytj := v_yytj + '(yytj=' + '''' + DM_data.qry_pub.FieldByName( 'yytj' ).asstring + '''' + '  and kdbq=' + '''' + pub_bqdm +
         ''')' + ' or ';
          DM_data.qry_pub.Next;
        end;

      end;

      DM_data.qry_pub.close;
      DM_data.qry_pub.sql.text := 'select lbmc from zybl_zyyz_dylbsz where dyxm=''输液计划单''';
      DM_data.qry_pub.Open;
      if DM_data.qry_pub.IsEmpty then
      begin
        v_lb := '';
      end
      else
      begin
        DM_data.qry_pub.First;
        while not DM_data.qry_pub.eof do
        begin
          v_lb := v_lb + '(lb=' + '''' + DM_data.qry_pub.FieldByName( 'lbmc' ).asstring + '''' + '  and kdbq=' + '''' + pub_bqdm +
           ''')' + ' or ';
          DM_data.qry_pub.Next;
        end;

      end;

      if v_yytj + v_lb = '' then
      begin
        filter := ' 1<>1 ';
      end
      else
      begin
        filter := v_yytj + v_lb + ' ( xmmc like ''%皮试%'' )'+
        ' or '+ ' ( xmmc like ''%敏试%'' )';
      end;

      sp_syjhzxd.Filter := filter;

      sp_syjhzxd.Filtered := True;
      if not sp_syjhzxd.IsEmpty then
      begin
//        ChangePrinter_syjhd;
//        frm_zysf_print_service.Printsyjhd( sp_sybr,sp_syjhzxd,FormatDateTime('yyyy-MM-dd',dt_zxsj.DateTime));
//        RevertPrinter;
//        ChangePrinter_syjhd;
//        frm_zysf_print_service.Printsyjhd( sp_sybr,sp_syjhzxd,FormatDateTime('yyyy-MM-dd',dt_zxsj.DateTime));
//        RevertPrinter;
         if pub_yydm='0271' then //荆门市掇刀人民医院
         begin
            frm_zysf_print_service.print_yzzxddy( sp_sybr,sp_syjhzxd,trim(formatdatetime('yyyy-MM-dd hh:mm',Frm_func.curr_date)));
            frm_zysf_print_service.print_yzzxddy( sp_sybr,sp_syjhzxd,trim(formatdatetime('yyyy-MM-dd hh:mm',Frm_func.curr_date)));
         end
         else
         begin
          syjhddy;
          syjhddy;
         end;

      end;
//      DM_data.qry_pub.close;
//      DM_data.qry_pub.SQL.text:='update zybl_zyyz_yzzxqd with(rowlock) set syddy=1 where zyh='+''''+Trim( sp_sybr.fieldbyname( 'zyh' ).asstring )+
//      ''''+' and zxsj='+ ''''+FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+' and yzid in '+
//      '(select id from zybl_zyyz where zyh='+''''+Trim( sp_sybr.fieldbyname( 'zyh' ).asstring )+''''+
//      ' and yytj in (select yytj from zybl_zyyz_dytjsz where dyxm=''输液计划单''))';
//      DM_data.qry_pub.ExecSQL;
        DM_data.qry_pub.close;
        DM_data.qry_pub.SQL.text:='insert into zybl_zyyz_syddy'+
        ' select id,'+''''+FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+' from zybl_zyyz '+
        ' where zxbz=1 and zyh='+''''+Trim( sp_sybr.fieldbyname( 'zyh' ).asstring )+''''+
        ' and yytj in (select yytj from zybl_zyyz_dytjsz where dyxm=''输液计划单'')'+
        ' and id not in (select yzid from zybl_zyyz_syddy where dyrq='+''''+
        FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+')';
        DM_data.qry_pub.ExecSQL;
      end;
      sp_sybr.Next;
    end;
  end;

end;

procedure Tfrm_hsdyzxd.MenuItem5Click(Sender: TObject);
var
  i, y, j, count, x: Integer;
  aControl: TControl;
  v_yytj, v_lb, filter: string;
begin
  if Application.MessageBox(pchar('你将打印左边勾选的病人的全部输液单，是否确认打印？')
    , '询问', MB_OKCANCEL + MB_ICONQUESTION
    + MB_DEFBUTTON2) = IDCANCEL then
  begin
   Exit;
  end;

  if sp_dryz.Active then
    createrect( myrect_cx, sp_dryz, dbgrideh2, 9, 10, 13 );
  sp_sybr.First;
  ChangePrinter_syjhd;
  while not sp_sybr.eof do
  begin
    if sp_sybr.FieldByName('xzbz').AsBoolean=false then
    begin
      sp_sybr.Next;
    end
    else
    begin
      with sp_syjhzxd do
      begin
        Filtered := False;
        Close;
        Parameters.Refresh;
        Parameters.ParamByName( '@zyh' ).Value := Trim( sp_sybr.fieldbyname( 'zyh' ).asstring );
        Parameters.ParamByName( '@rq' ).Value := FormatDateTime('yyyyMMdd',dt_zxsj.DateTime);
        Parameters.ParamByName( '@fzph_zh' ).Value := '';
        Open;
      end;
      if (pub_yydm='0003') then
      begin
        DM_data.qry_pub.close;
        DM_data.qry_pub.sql.text := 'select * from zybl_zyyz where zyh='+''''+ Trim( sp_sybr.fieldbyname( 'zyh' ).asstring )
        +''''+' and (xmmc like ''%皮试%'' or xmmc like ''%敏试%'') and charindex(''-'',xmmc)<1 and  charindex(''+'',xmmc)<1 and tzbz=0 and charindex(''阴'',xmmc)<1 and  charindex(''阳'',xmmc)<1';
        DM_data.qry_pub.Open;
      end
      else
      begin
        DM_data.qry_pub.close;
        DM_data.qry_pub.sql.text := 'select * from sys_czy where 1<>1';
        DM_data.qry_pub.Open;
      end;
      if DM_data.qry_pub.IsEmpty then
      begin
      DM_data.qry_pub.close;
      DM_data.qry_pub.sql.text := 'select yytj from zybl_zyyz_dytjsz where dyxm=''输液计划单''';
      DM_data.qry_pub.Open;
      if DM_data.qry_pub.IsEmpty then
      begin
        v_yytj := '';
      end
      else
      begin
        DM_data.qry_pub.First;
        while not DM_data.qry_pub.eof do
        begin
          v_yytj := v_yytj + '(yytj=' + '''' + DM_data.qry_pub.FieldByName( 'yytj' ).asstring + '''' + '  and kdbq=' + '''' + pub_bqdm +
         ''')' + ' or ';
          DM_data.qry_pub.Next;
        end;

      end;

      DM_data.qry_pub.close;
      DM_data.qry_pub.sql.text := 'select lbmc from zybl_zyyz_dylbsz where dyxm=''输液计划单''';
      DM_data.qry_pub.Open;
      if DM_data.qry_pub.IsEmpty then
      begin
        v_lb := '';
      end
      else
      begin
        DM_data.qry_pub.First;
        while not DM_data.qry_pub.eof do
        begin
          v_lb := v_lb + '(lb=' + '''' + DM_data.qry_pub.FieldByName( 'lbmc' ).asstring + '''' + '  and kdbq=' + '''' + pub_bqdm +
           ''')' + ' or ';
          DM_data.qry_pub.Next;
        end;

      end;

      if v_yytj + v_lb = '' then
      begin
        filter := ' 1<>1 ';
      end
      else
      begin
        filter := v_yytj + v_lb + ' ( xmmc like ''%皮试%'' )'+
        ' or '+ ' ( xmmc like ''%敏试%'' )';
      end;

      sp_syjhzxd.Filter := filter;

      sp_syjhzxd.Filtered := True;
      if not sp_syjhzxd.IsEmpty then
      begin
//        ChangePrinter_syjhd;
//        frm_zysf_print_service.Printsyjhd( sp_sybr,sp_syjhzxd,FormatDateTime('yyyy-MM-dd',dt_zxsj.DateTime));
         if pub_yydm='0271' then //荆门市掇刀人民医院
         begin
            frm_zysf_print_service.print_yzzxddy( sp_sybr,sp_syjhzxd,trim(formatdatetime('yyyy-MM-dd hh:mm',Frm_func.curr_date)));
         end
         else
         syjhddy;
//        RevertPrinter;
      end;
//      DM_data.qry_pub.close;
//      DM_data.qry_pub.SQL.text:='update zybl_zyyz_yzzxqd with(rowlock) set syddy=1 where zyh='+''''+Trim( sp_sybr.fieldbyname( 'zyh' ).asstring )+
//      ''''+' and zxsj='+ ''''+FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+' and yzid in '+
//      '(select id from zybl_zyyz where zyh='+''''+Trim( sp_sybr.fieldbyname( 'zyh' ).asstring )+''''+
//      ' and yytj in (select yytj from zybl_zyyz_dytjsz where dyxm=''输液计划单''))';
//      DM_data.qry_pub.ExecSQL;
        DM_data.qry_pub.close;
        DM_data.qry_pub.SQL.text:='insert into zybl_zyyz_syddy'+
        ' select id,'+''''+FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+' from zybl_zyyz '+
        ' where zxbz=1 and zyh='+''''+Trim( sp_sybr.fieldbyname( 'zyh' ).asstring )+''''+
        ' and yytj in (select yytj from zybl_zyyz_dytjsz where dyxm=''输液计划单'')'+
        ' and id not in (select yzid from zybl_zyyz_syddy where dyrq='+''''+
        FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+')';
        DM_data.qry_pub.ExecSQL;
      end;
      sp_sybr.Next;
    end;
  end;

end;

procedure Tfrm_hsdyzxd.MenuItem6Click(Sender: TObject);
var
  i, y, j, count, x: Integer;
  aControl: TControl;
  v_yytj, v_lb, filter,fzzfc,x_zyh,zh: string;
begin

  if Application.MessageBox(pchar('你将打印右边勾选的液体分组，是否确认打印？')
    , '询问', MB_OKCANCEL + MB_ICONQUESTION
    + MB_DEFBUTTON2) = IDCANCEL then
  begin
   Exit;
  end;
  sp_dryz.DisableControls;
  sp_dryz.First;
  while not sp_dryz.eof do
  begin
    if (sp_dryz.FieldByName('xzbz').AsBoolean=true) and (Pos(sp_dryz.FieldByName('zyh').AsString,fzzfc)<1) then
    begin
      fzzfc:=fzzfc+sp_dryz.FieldByName('zyh').AsString+',';
    end;
    sp_dryz.Next;
  end;
  if fzzfc='' then
  begin
    Application.MessageBox('你未选择液体打印！', '警告', MB_OK + 
      MB_ICONWARNING);
    Exit;
  end;
  if sp_dryz.Active then
    createrect( myrect_cx, sp_dryz, dbgrideh2, 9, 10, 13 );
  sp_sybr.First;
  ChangePrinter_syjhd;
  while Pos(',',fzzfc)>0 do
  begin
      zh:='';
      x_zyh:=Copy(fzzfc,1,Pos(',',fzzfc)-1);
      sp_dryz.First;
      while not sp_dryz.eof do
      begin
        if (sp_dryz.FieldByName('xzbz').AsBoolean=true) and (sp_dryz.FieldByName('zyh').AsString=x_zyh) and
           (Pos(sp_dryz.FieldByName('fzph').AsString,zh)<1) then
        begin
          zh:=zh+sp_dryz.FieldByName('fzph').AsString+',';
        end;
        sp_dryz.Next;
      end;
      with sp_syjhzxd do
      begin
        Filtered := False;
        Close;
        Parameters.Refresh;
        Parameters.ParamByName( '@zyh' ).Value := x_zyh;
        Parameters.ParamByName( '@rq' ).Value := FormatDateTime('yyyyMMdd',dt_zxsj.DateTime);
        Parameters.ParamByName( '@fzph_zh' ).Value := zh;
        Open;
      end;
      if (pub_yydm='0003')  then
      begin
        DM_data.qry_pub.close;
        DM_data.qry_pub.sql.text := 'select * from zybl_zyyz where zyh='+''''+ Trim( sp_dryz.fieldbyname( 'zyh' ).asstring )
        +''''+' and (xmmc like ''%皮试%'' or xmmc like ''%敏试%'') and charindex(''-'',xmmc)<1 and  charindex(''+'',xmmc)<1 and tzbz=0 and charindex(''阴'',xmmc)<1 and  charindex(''阳'',xmmc)<1';
        DM_data.qry_pub.Open;
      end
      else
      begin
        DM_data.qry_pub.close;
        DM_data.qry_pub.sql.text := 'select * from sys_czy where 1<>1';
        DM_data.qry_pub.Open;
      end;
      if DM_data.qry_pub.IsEmpty then
      begin
      DM_data.qry_pub.close;
      DM_data.qry_pub.sql.text := 'select yytj from zybl_zyyz_dytjsz where dyxm=''输液计划单''';
      DM_data.qry_pub.Open;
      if DM_data.qry_pub.IsEmpty then
      begin
        v_yytj := '';
      end
      else
      begin
        DM_data.qry_pub.First;
        while not DM_data.qry_pub.eof do
        begin
          v_yytj := v_yytj + '(yytj=' + '''' + DM_data.qry_pub.FieldByName( 'yytj' ).asstring + '''' + '  and kdbq=' + '''' + pub_bqdm +
         ''')' + ' or ';
          DM_data.qry_pub.Next;
        end;

      end;

      DM_data.qry_pub.close;
      DM_data.qry_pub.sql.text := 'select lbmc from zybl_zyyz_dylbsz where dyxm=''输液计划单''';
      DM_data.qry_pub.Open;
      if DM_data.qry_pub.IsEmpty then
      begin
        v_lb := '';
      end
      else
      begin
        DM_data.qry_pub.First;
        while not DM_data.qry_pub.eof do
        begin
          v_lb := v_lb + '(lb=' + '''' + DM_data.qry_pub.FieldByName( 'lbmc' ).asstring + '''' + '  and kdbq=' + '''' + pub_bqdm +
           ''')' + ' or ';
          DM_data.qry_pub.Next;
        end;

      end;

      if v_yytj + v_lb = '' then
      begin
        filter := ' 1<>1 ';
      end
      else
      begin
        filter := v_yytj + v_lb + ' ( xmmc like ''%皮试%'' )'+
        ' or '+ ' ( xmmc like ''%敏试%'' )';
      end;

      sp_syjhzxd.Filter := filter;

      sp_syjhzxd.Filtered := True;
      sp_sybr.DisableControls;
      sp_sybr.Locate('zyh',x_zyh,[]);
      sp_sybr.EnableControls;
      if not sp_syjhzxd.IsEmpty then
      begin
//        ChangePrinter_syjhd;
//        frm_zysf_print_service.Printsyjhd( sp_sybr,sp_syjhzxd,FormatDateTime('yyyy-MM-dd',dt_zxsj.DateTime));
//        RevertPrinter;
//        ChangePrinter_syjhd;
//        frm_zysf_print_service.Printsyjhd( sp_sybr,sp_syjhzxd,FormatDateTime('yyyy-MM-dd',dt_zxsj.DateTime));
//        RevertPrinter;
         if pub_yydm='0271' then //荆门市掇刀人民医院
         begin
            frm_zysf_print_service.print_yzzxddy( sp_sybr,sp_syjhzxd,trim(formatdatetime('yyyy-MM-dd hh:mm',Frm_func.curr_date)));
            frm_zysf_print_service.print_yzzxddy( sp_sybr,sp_syjhzxd,trim(formatdatetime('yyyy-MM-dd hh:mm',Frm_func.curr_date)));
         end
         else
         begin
          syjhddy;
          syjhddy;
         end;
      end;
//      DM_data.qry_pub.close;
//      DM_data.qry_pub.SQL.text:='update zybl_zyyz_yzzxqd with(rowlock) set syddy=1 from zybl_zyyz a,zybl_zyyz_yzzxqd b where a.zyh=b.zyh and '+
//      '  a.id=b.yzid and  '+'a.zyh='+''''+Trim( sp_sybr.fieldbyname( 'zyh' ).asstring )+
//      ''''+' and b.zxsj='+ ''''+FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+' and charindex(a.fzph,'+''''+
//      zh+''''+')>0';
        DM_data.qry_pub.close;
        DM_data.qry_pub.SQL.text:='insert into zybl_zyyz_syddy'+
        ' select id,'+''''+FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+' from zybl_zyyz '+
        ' where zxbz=1 and zyh='+''''+Trim( sp_sybr.fieldbyname( 'zyh' ).asstring )+''''+
        ' and id not in (select yzid from zybl_zyyz_syddy where dyrq='+''''+
        FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+')'+' and charindex(fzph,'+''''+
        zh+''''+')>0';
      DM_data.qry_pub.ExecSQL;
      end;
      fzzfc:=Copy(fzzfc,Pos(',',fzzfc)+1);
  end;
  sp_dryz.EnableControls;

end;

procedure Tfrm_hsdyzxd.MenuItem7Click(Sender: TObject);
var
  i, y, j, count, x: Integer;
  aControl: TControl;
  v_yytj, v_lb, filter,fzzfc,x_zyh,zh: string;
begin

  if Application.MessageBox(pchar('你将打印右边勾选的液体分组，是否确认打印？')
    , '询问', MB_OKCANCEL + MB_ICONQUESTION
    + MB_DEFBUTTON2) = IDCANCEL then
  begin
   Exit;
  end;
  sp_dryz.DisableControls;
  sp_dryz.First;
  while not sp_dryz.eof do
  begin
    if (sp_dryz.FieldByName('xzbz').AsBoolean=true) and (Pos(sp_dryz.FieldByName('zyh').AsString,fzzfc)<1) then
    begin
      fzzfc:=fzzfc+sp_dryz.FieldByName('zyh').AsString+',';
    end;
    sp_dryz.Next;
  end;
  if fzzfc='' then
  begin
    Application.MessageBox('你未选择液体打印！', '警告', MB_OK + 
      MB_ICONWARNING);
    Exit;
  end;
  if sp_dryz.Active then
    createrect( myrect_cx, sp_dryz, dbgrideh2, 9, 10, 13 );
  sp_sybr.First;
  ChangePrinter_syjhd;
  while Pos(',',fzzfc)>0 do
  begin
      zh:='';
      x_zyh:=Copy(fzzfc,1,Pos(',',fzzfc)-1);
      sp_dryz.First;
      while not sp_dryz.eof do
      begin
        if (sp_dryz.FieldByName('xzbz').AsBoolean=true) and (sp_dryz.FieldByName('zyh').AsString=x_zyh) and
           (Pos(sp_dryz.FieldByName('fzph').AsString,zh)<1) then
        begin
          zh:=zh+sp_dryz.FieldByName('fzph').AsString+',';
        end;
        sp_dryz.Next;
      end;
      with sp_syjhzxd do
      begin
        Filtered := False;
        Close;
        Parameters.Refresh;
        Parameters.ParamByName( '@zyh' ).Value := x_zyh;
        Parameters.ParamByName( '@rq' ).Value := FormatDateTime('yyyyMMdd',dt_zxsj.DateTime);
        Parameters.ParamByName( '@fzph_zh' ).Value := zh;
        Open;
      end;
      if (pub_yydm='0003')  then
      begin
        DM_data.qry_pub.close;
        DM_data.qry_pub.sql.text := 'select * from zybl_zyyz where zyh='+''''+ Trim( sp_dryz.fieldbyname( 'zyh' ).asstring )
        +''''+' and (xmmc like ''%皮试%'' or xmmc like ''%敏试%'') and charindex(''-'',xmmc)<1 and  charindex(''+'',xmmc)<1 and tzbz=0 and charindex(''阴'',xmmc)<1 and  charindex(''阳'',xmmc)<1';
        DM_data.qry_pub.Open;
      end
      else
      begin
        DM_data.qry_pub.close;
        DM_data.qry_pub.sql.text := 'select * from sys_czy where 1<>1';
        DM_data.qry_pub.Open;
      end;
      if DM_data.qry_pub.IsEmpty then
      begin
      DM_data.qry_pub.close;
      DM_data.qry_pub.sql.text := 'select yytj from zybl_zyyz_dytjsz where dyxm=''输液计划单''';
      DM_data.qry_pub.Open;
      if DM_data.qry_pub.IsEmpty then
      begin
        v_yytj := '';
      end
      else
      begin
        DM_data.qry_pub.First;
        while not DM_data.qry_pub.eof do
        begin
          v_yytj := v_yytj + '(yytj=' + '''' + DM_data.qry_pub.FieldByName( 'yytj' ).asstring + '''' + '  and kdbq=' + '''' + pub_bqdm +
         ''')' + ' or ';
          DM_data.qry_pub.Next;
        end;

      end;

      DM_data.qry_pub.close;
      DM_data.qry_pub.sql.text := 'select lbmc from zybl_zyyz_dylbsz where dyxm=''输液计划单''';
      DM_data.qry_pub.Open;
      if DM_data.qry_pub.IsEmpty then
      begin
        v_lb := '';
      end
      else
      begin
        DM_data.qry_pub.First;
        while not DM_data.qry_pub.eof do
        begin
          v_lb := v_lb + '(lb=' + '''' + DM_data.qry_pub.FieldByName( 'lbmc' ).asstring + '''' + '  and kdbq=' + '''' + pub_bqdm +
           ''')' + ' or ';
          DM_data.qry_pub.Next;
        end;

      end;

      if v_yytj + v_lb = '' then
      begin
        filter := ' 1<>1 ';
      end
      else
      begin
        filter := v_yytj + v_lb + ' ( xmmc like ''%皮试%'' )'+
        ' or '+' ( xmmc like ''%敏试%'' )';
      end;

      sp_syjhzxd.Filter := filter;

      sp_syjhzxd.Filtered := True;
      sp_sybr.DisableControls;
      sp_sybr.Locate('zyh',x_zyh,[]);
      sp_sybr.EnableControls;
      if not sp_syjhzxd.IsEmpty then
      begin
//        ChangePrinter_syjhd;
//        frm_zysf_print_service.Printsyjhd( sp_sybr,sp_syjhzxd,FormatDateTime('yyyy-MM-dd',dt_zxsj.DateTime));
//        RevertPrinter;
         if pub_yydm='0271' then //荆门市掇刀人民医院
         begin
            frm_zysf_print_service.print_yzzxddy( sp_sybr,sp_syjhzxd,trim(formatdatetime('yyyy-MM-dd hh:mm',Frm_func.curr_date)));
         end
         else
         syjhddy;
      end;
//      DM_data.qry_pub.close;
//      DM_data.qry_pub.SQL.text:='update zybl_zyyz_yzzxqd with(rowlock) set syddy=1 from zybl_zyyz a,zybl_zyyz_yzzxqd b where a.zyh=b.zyh and '+
//      '  a.id=b.yzid and  '+'a.zyh='+''''+Trim( sp_sybr.fieldbyname( 'zyh' ).asstring )+
//      ''''+' and b.zxsj='+ ''''+FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+' and charindex(a.fzph,'+''''+
//      zh+''''+')>0';
//      DM_data.qry_pub.ExecSQL;
        DM_data.qry_pub.close;
        DM_data.qry_pub.SQL.text:='insert into zybl_zyyz_syddy'+
        ' select id,'+''''+FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+' from zybl_zyyz '+
        ' where zxbz=1 and zyh='+''''+Trim( sp_sybr.fieldbyname( 'zyh' ).asstring )+''''+
        ' and id not in (select yzid from zybl_zyyz_syddy where dyrq='+''''+
        FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+')'+' and charindex(fzph,'+''''+
        zh+''''+')>0';
      DM_data.qry_pub.ExecSQL;
      end;
      fzzfc:=Copy(fzzfc,Pos(',',fzzfc)+1);
  end;
  sp_dryz.EnableControls;

end;

procedure Tfrm_hsdyzxd.MenuItem8Click(Sender: TObject);
var
  i, y, j, count, x: Integer;
  aControl: TControl;
  v_yytj, v_lb, filter: string;
begin
  if (pub_yydm='0003') and (pub_bqdm='0030') and (PageControl1.ActivePageIndex=1)  then
  begin
    //执行单
    if Application.MessageBox(pchar('你将打印本病区所有病人的治疗单，是否确认打印？')
      , '询问', MB_OKCANCEL + MB_ICONQUESTION
      + MB_DEFBUTTON2) = IDCANCEL then
    begin
     Exit;
    end;

    sp_sybr.close;
    sp_sybr.Parameters.ParamByName( '@bqdm' ).value := pub_bqdm;
  //  sp_sybr.Parameters.ParamByName( '@zyh' ).value := '';
    sp_sybr.Parameters.ParamByName( '@zxsj' ).value := formatdatetime( 'yyyymmdd', dT_zxsj.Date );
    sp_sybr.Open;
    sp_dryz_zsd.Filtered := false;
    if sp_dryz_zsd.Active then
      createrect( myrect_cx, sp_dryz_zsd, dbgrideh4, 9, 10, 13 );
    sp_sybr.First;
    ChangePrinter_syjhd;
    while not sp_sybr.eof do
    begin
      with sp_syjhzxd do
      begin
        Filtered := False;
        Close;
        Parameters.Refresh;
        Parameters.ParamByName( '@zyh' ).Value := Trim( sp_sybr.fieldbyname( 'zyh' ).asstring );
        Parameters.ParamByName( '@rq' ).Value := FormatDateTime('yyyyMMdd',dt_zxsj.DateTime);
        Parameters.ParamByName( '@fzph_zh' ).Value := '';
        Open;
      end;
        if (pub_yydm='0003')  then
        begin
          DM_data.qry_pub.close;
          DM_data.qry_pub.sql.text := 'select * from zybl_zyyz where zyh='+''''+ Trim( sp_sybr.fieldbyname( 'zyh' ).asstring )
          +''''+' and (xmmc like ''%皮试%'' or xmmc like ''%敏试%'') and charindex(''-'',xmmc)<1 and  charindex(''+'',xmmc)<1 and tzbz=0 and charindex(''阴'',xmmc)<1 and  charindex(''阳'',xmmc)<1';
          DM_data.qry_pub.Open;
        end
        else
        begin
          DM_data.qry_pub.close;
          DM_data.qry_pub.sql.text := 'select * from sys_czy where 1<>1';
          DM_data.qry_pub.Open;
        end;
      if DM_data.qry_pub.IsEmpty then
      begin
      DM_data.qry_pub.close;
      DM_data.qry_pub.sql.text := 'select yytj from zybl_zyyz_dytjsz where dyxm=''输液计划单''';
      DM_data.qry_pub.Open;
      if DM_data.qry_pub.IsEmpty then
      begin
        v_yytj := '';
      end
      else
      begin
        DM_data.qry_pub.First;
        while not DM_data.qry_pub.eof do
        begin
          v_yytj := v_yytj + '(yytj<>' + '''' + DM_data.qry_pub.FieldByName( 'yytj' ).asstring + '''' + ' and yytj<>''口服''  and kdbq=' + '''' + pub_bqdm +
           ''')' + ' and ';
          DM_data.qry_pub.Next;
        end;

      end;

  //    DM_data.qry_pub.close;
  //    DM_data.qry_pub.sql.text := 'select lbmc from zybl_zyyz_dylbsz where dyxm=''输液计划单''';
  //    DM_data.qry_pub.Open;
  //    if DM_data.qry_pub.IsEmpty then
  //    begin
  //      v_lb := '';
  //    end
  //    else
  //    begin
  //      DM_data.qry_pub.First;
  //      while not DM_data.qry_pub.eof do
  //      begin
  //        v_lb := v_lb + '(lb<>' + '''' + DM_data.qry_pub.FieldByName( 'lbmc' ).asstring + '''' + '  and kdks=' + '''' + pub_ksdm +
  //         ''')' + ' and ';
  //        DM_data.qry_pub.Next;
  //      end;
  //
  //    end;

      if v_yytj + v_lb = '' then
      begin
        filter := ' 1<>1 ';
      end
      else
      begin
        filter := v_yytj + v_lb +' ( yytj<>''特殊情况'' )';
      end;
      sp_syjhzxd.Filter := filter;
      sp_syjhzxd.Filtered := True;
      if not sp_syjhzxd.IsEmpty then
      begin
  //      ChangePrinter_syjhd;
  //      frm_zysf_print_service.Printsyjhd( sp_sybr,sp_syjhzxd,FormatDateTime('yyyy-MM-dd',dt_zxsj.DateTime));
  //      RevertPrinter;
  //      ChangePrinter_syjhd;
  //      frm_zysf_print_service.Printsyjhd( sp_sybr,sp_syjhzxd,FormatDateTime('yyyy-MM-dd',dt_zxsj.DateTime));
  //      RevertPrinter;
          zxddy;
          zxddy;
      end;
//      DM_data.qry_pub.close;
//      DM_data.qry_pub.SQL.text:='update zybl_zyyz_yzzxqd with(rowlock) set syddy=1 where zyh='+''''+Trim( sp_sybr.fieldbyname( 'zyh' ).asstring )+
//      ''''+' and zxsj='+ ''''+FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+' and yzid in '+
//      '(select id from zybl_zyyz where zyh='+''''+Trim( sp_sybr.fieldbyname( 'zyh' ).asstring )+''''+
//      ' and yytj not in (select yytj from zybl_zyyz_dytjsz where dyxm=''口服药执行单'')'+
//      ' and yytj not in (select yytj from zybl_zyyz_dytjsz where dyxm=''输液计划单''))';
//      DM_data.qry_pub.ExecSQL;
        DM_data.qry_pub.close;
        DM_data.qry_pub.SQL.text:='insert into zybl_zyyz_syddy'+
        ' select id,'+''''+FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+' from zybl_zyyz '+
        ' where zxbz=1 and zyh='+''''+Trim( sp_sybr.fieldbyname( 'zyh' ).asstring )+''''+
        ' and yytj not in (select yytj from zybl_zyyz_dytjsz where dyxm=''口服药执行单'')'+
        ' and yytj not in (select yytj from zybl_zyyz_dytjsz where dyxm=''输液计划单'')'+
        ' and id not in (select yzid from zybl_zyyz_syddy where dyrq='+''''+
        FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+')';
        DM_data.qry_pub.ExecSQL;
      end;
      sp_sybr.Next;
    end;

  end
  else  if (pub_yydm='0003') and (pub_bqdm='0030') and (PageControl1.ActivePageIndex=2) then
  begin
    //口服药单
    if Application.MessageBox(pchar('你将打印本病区所有病人的口服药单，是否确认打印？')
      , '询问', MB_OKCANCEL + MB_ICONQUESTION
      + MB_DEFBUTTON2) = IDCANCEL then
    begin
     Exit;
    end;

    sp_sybr.close;
    sp_sybr.Parameters.ParamByName( '@bqdm' ).value := pub_bqdm;
  //  sp_sybr.Parameters.ParamByName( '@zyh' ).value := '';
    sp_sybr.Parameters.ParamByName( '@zxsj' ).value := formatdatetime( 'yyyymmdd', dT_zxsj.Date );
    sp_sybr.Open;
    sp_dryz_kfyd.Filtered := false;
    if sp_dryz_kfyd.Active then
      createrect( myrect_cx, sp_dryz_kfyd, dbgrideh6, 9, 10, 13 );
    sp_sybr.First;
    ChangePrinter_syjhd;
    while not sp_sybr.eof do
    begin
      with sp_syjhzxd do
      begin
        Filtered := False;
        Close;
        Parameters.Refresh;
        Parameters.ParamByName( '@zyh' ).Value := Trim( sp_sybr.fieldbyname( 'zyh' ).asstring );
        Parameters.ParamByName( '@rq' ).Value := FormatDateTime('yyyyMMdd',dt_zxsj.DateTime);
        Parameters.ParamByName( '@fzph_zh' ).Value := '';
        Open;
      end;
        if (pub_yydm='0003')  then
        begin
          DM_data.qry_pub.close;
          DM_data.qry_pub.sql.text := 'select * from zybl_zyyz where zyh='+''''+ Trim( sp_sybr.fieldbyname( 'zyh' ).asstring )
          +''''+' and (xmmc like ''%皮试%'' or xmmc like ''%敏试%'') and charindex(''-'',xmmc)<1 and  charindex(''+'',xmmc)<1 and tzbz=0 and charindex(''阴'',xmmc)<1 and  charindex(''阳'',xmmc)<1';
          DM_data.qry_pub.Open;
        end
        else
        begin
          DM_data.qry_pub.close;
          DM_data.qry_pub.sql.text := 'select * from sys_czy where 1<>1';
          DM_data.qry_pub.Open;
        end;
      if DM_data.qry_pub.IsEmpty then
      begin
      DM_data.qry_pub.close;
      DM_data.qry_pub.sql.text := 'select yytj from zybl_zyyz_dytjsz where dyxm=''口服药执行单''';
      DM_data.qry_pub.Open;
      if DM_data.qry_pub.IsEmpty then
      begin
        v_yytj := '';
      end
      else
      begin
        DM_data.qry_pub.First;
        while not DM_data.qry_pub.eof do
        begin
          v_yytj := v_yytj + '(yytj=' + '''' + DM_data.qry_pub.FieldByName( 'yytj' ).asstring + '''' + '   and kdbq=' + '''' + pub_bqdm +
           ''')' + ' and ';
          DM_data.qry_pub.Next;
        end;

      end;

  //    DM_data.qry_pub.close;
  //    DM_data.qry_pub.sql.text := 'select lbmc from zybl_zyyz_dylbsz where dyxm=''输液计划单''';
  //    DM_data.qry_pub.Open;
  //    if DM_data.qry_pub.IsEmpty then
  //    begin
  //      v_lb := '';
  //    end
  //    else
  //    begin
  //      DM_data.qry_pub.First;
  //      while not DM_data.qry_pub.eof do
  //      begin
  //        v_lb := v_lb + '(lb<>' + '''' + DM_data.qry_pub.FieldByName( 'lbmc' ).asstring + '''' + '  and kdks=' + '''' + pub_ksdm +
  //         ''')' + ' and ';
  //        DM_data.qry_pub.Next;
  //      end;
  //
  //    end;

      if v_yytj + v_lb = '' then
      begin
        filter := ' 1<>1 ';
      end
      else
      begin
        filter := v_yytj + v_lb +' ( yytj<>''特殊情况'' )';
      end;
      sp_syjhzxd.Filter := filter;
      sp_syjhzxd.Filtered := True;
      if not sp_syjhzxd.IsEmpty then
      begin
  //      ChangePrinter_syjhd;
  //      frm_zysf_print_service.Printsyjhd( sp_sybr,sp_syjhzxd,FormatDateTime('yyyy-MM-dd',dt_zxsj.DateTime));
  //      RevertPrinter;
  //      ChangePrinter_syjhd;
  //      frm_zysf_print_service.Printsyjhd( sp_sybr,sp_syjhzxd,FormatDateTime('yyyy-MM-dd',dt_zxsj.DateTime));
  //      RevertPrinter;
        zxddy;
        zxddy;
      end;
//      DM_data.qry_pub.close;
//      DM_data.qry_pub.SQL.text:='update zybl_zyyz_yzzxqd with(rowlock) set syddy=1 where zyh='+''''+Trim( sp_sybr.fieldbyname( 'zyh' ).asstring )+
//      ''''+' and zxsj='+ ''''+FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+' and yzid in '+
//      '(select id from zybl_zyyz where zyh='+''''+Trim( sp_sybr.fieldbyname( 'zyh' ).asstring )+''''+
//      ' and yytj  in (select yytj from zybl_zyyz_dytjsz where dyxm=''口服药执行单''))';
//      DM_data.qry_pub.ExecSQL;
        DM_data.qry_pub.close;
        DM_data.qry_pub.SQL.text:='insert into zybl_zyyz_syddy'+
        ' select id,'+''''+FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+' from zybl_zyyz '+
        ' where zxbz=1 and zyh='+''''+Trim( sp_sybr.fieldbyname( 'zyh' ).asstring )+''''+
        ' and yytj  in (select yytj from zybl_zyyz_dytjsz where dyxm=''口服药执行单'')'+
        ' and id not in (select yzid from zybl_zyyz_syddy where dyrq='+''''+
        FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+')';
        DM_data.qry_pub.ExecSQL;
      end;
      sp_sybr.Next;
    end;
  end
  else
  begin
    //正常执行单
    if Application.MessageBox(pchar('你将打印本病区所有病人的执行单，是否确认打印？')
      , '询问', MB_OKCANCEL + MB_ICONQUESTION
      + MB_DEFBUTTON2) = IDCANCEL then
    begin
     Exit;
    end;

    sp_sybr.close;
    sp_sybr.Parameters.ParamByName( '@bqdm' ).value := pub_bqdm;
  //  sp_sybr.Parameters.ParamByName( '@zyh' ).value := '';
    sp_sybr.Parameters.ParamByName( '@zxsj' ).value := formatdatetime( 'yyyymmdd', dT_zxsj.Date );
    sp_sybr.Open;
    sp_dryz_zsd.Filtered := false;
    if sp_dryz_zsd.Active then
      createrect( myrect_cx, sp_dryz_zsd, dbgrideh4, 9, 10, 13 );
    sp_sybr.First;
    ChangePrinter_syjhd;
    while not sp_sybr.eof do
    begin
      with sp_syjhzxd do
      begin
        Filtered := False;
        Close;
        Parameters.Refresh;
        Parameters.ParamByName( '@zyh' ).Value := Trim( sp_sybr.fieldbyname( 'zyh' ).asstring );
        Parameters.ParamByName( '@rq' ).Value := FormatDateTime('yyyyMMdd',dt_zxsj.DateTime);
        Parameters.ParamByName( '@fzph_zh' ).Value := '';
        Open;
      end;
        if (pub_yydm='0003') then
        begin
          DM_data.qry_pub.close;
          DM_data.qry_pub.sql.text := 'select * from zybl_zyyz where zyh='+''''+ Trim( sp_sybr.fieldbyname( 'zyh' ).asstring )
          +''''+' and (xmmc like ''%皮试%'' or xmmc like ''%敏试%'') and charindex(''-'',xmmc)<1 and  charindex(''+'',xmmc)<1 and tzbz=0 and charindex(''阴'',xmmc)<1 and  charindex(''阳'',xmmc)<1';
          DM_data.qry_pub.Open;
        end
        else
        begin
          DM_data.qry_pub.close;
          DM_data.qry_pub.sql.text := 'select * from sys_czy where 1<>1';
          DM_data.qry_pub.Open;
        end;
      if DM_data.qry_pub.IsEmpty then
      begin
      DM_data.qry_pub.close;
      DM_data.qry_pub.sql.text := 'select yytj from zybl_zyyz_dytjsz where dyxm=''输液计划单''';
      DM_data.qry_pub.Open;
      if DM_data.qry_pub.IsEmpty then
      begin
        v_yytj := '';
      end
      else
      begin
        DM_data.qry_pub.First;
        while not DM_data.qry_pub.eof do
        begin
          v_yytj := v_yytj + '(yytj<>' + '''' + DM_data.qry_pub.FieldByName( 'yytj' ).asstring + '''' + '  and kdbq=' + '''' + pub_bqdm +
           ''')' + ' and ';
          DM_data.qry_pub.Next;
        end;

      end;

  //    DM_data.qry_pub.close;
  //    DM_data.qry_pub.sql.text := 'select lbmc from zybl_zyyz_dylbsz where dyxm=''输液计划单''';
  //    DM_data.qry_pub.Open;
  //    if DM_data.qry_pub.IsEmpty then
  //    begin
  //      v_lb := '';
  //    end
  //    else
  //    begin
  //      DM_data.qry_pub.First;
  //      while not DM_data.qry_pub.eof do
  //      begin
  //        v_lb := v_lb + '(lb<>' + '''' + DM_data.qry_pub.FieldByName( 'lbmc' ).asstring + '''' + '  and kdks=' + '''' + pub_ksdm +
  //         ''')' + ' and ';
  //        DM_data.qry_pub.Next;
  //      end;
  //
  //    end;

      if v_yytj + v_lb = '' then
      begin
        filter := ' 1<>1 ';
      end
      else
      begin
        filter := v_yytj + v_lb +' ( yytj<>''特殊情况'' )';
      end;

      sp_syjhzxd.Filter := filter;

      sp_syjhzxd.Filtered := True;
      if not sp_syjhzxd.IsEmpty then
      begin
  //      ChangePrinter_syjhd;
  //      frm_zysf_print_service.Printsyjhd( sp_sybr,sp_syjhzxd,FormatDateTime('yyyy-MM-dd',dt_zxsj.DateTime));
  //      RevertPrinter;
  //      ChangePrinter_syjhd;
  //      frm_zysf_print_service.Printsyjhd( sp_sybr,sp_syjhzxd,FormatDateTime('yyyy-MM-dd',dt_zxsj.DateTime));
  //      RevertPrinter;
        if pub_yydm='0271' then //荆门市掇刀人民医院
        begin
          frm_zysf_print_service.print_yzzxddy( sp_sybr,sp_syjhzxd,trim(formatdatetime('yyyy-MM-dd hh:mm',Frm_func.curr_date)));
          frm_zysf_print_service.print_yzzxddy( sp_sybr,sp_syjhzxd,trim(formatdatetime('yyyy-MM-dd hh:mm',Frm_func.curr_date)));
        end
        else
        begin
          zxddy;
          zxddy;
        end;
      end;
//      DM_data.qry_pub.close;
//      DM_data.qry_pub.SQL.text:='update zybl_zyyz_yzzxqd with(rowlock) set syddy=1 where zyh='+''''+Trim( sp_sybr.fieldbyname( 'zyh' ).asstring )+
//      ''''+' and zxsj='+ ''''+FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+' and yzid in '+
//      '(select id from zybl_zyyz where zyh='+''''+Trim( sp_sybr.fieldbyname( 'zyh' ).asstring )+''''+
//      ' and yytj not in (select yytj from zybl_zyyz_dytjsz where dyxm=''输液计划单''))';
//      DM_data.qry_pub.ExecSQL;
        DM_data.qry_pub.close;
        DM_data.qry_pub.SQL.text:='insert into zybl_zyyz_syddy'+
        ' select id,'+''''+FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+' from zybl_zyyz '+
        ' where zxbz=1 and zyh='+''''+Trim( sp_sybr.fieldbyname( 'zyh' ).asstring )+''''+
        ' and yytj not in (select yytj from zybl_zyyz_dytjsz where dyxm=''输液计划单'')'+
        ' and id not in (select yzid from zybl_zyyz_syddy where dyrq='+''''+
        FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+')';
        DM_data.qry_pub.ExecSQL;
      end;
      sp_sybr.Next;
    end;
  end;

end;

procedure Tfrm_hsdyzxd.MenuItem9Click(Sender: TObject);
var
  i, y, j, count, x: Integer;
  aControl: TControl;
  v_yytj, v_lb, filter: string;
begin
  if (pub_yydm='0003') and (pub_bqdm='0030') and (PageControl1.ActivePageIndex=1)  then
  begin
    //执行单
    if Application.MessageBox(pchar('你将打印本病区所有病人的治疗单，是否确认打印？')
      , '询问', MB_OKCANCEL + MB_ICONQUESTION
      + MB_DEFBUTTON2) = IDCANCEL then
    begin
     Exit;
    end;

    sp_sybr.close;
    sp_sybr.Parameters.ParamByName( '@bqdm' ).value := pub_bqdm;
  //  sp_sybr.Parameters.ParamByName( '@zyh' ).value := '';
    sp_sybr.Parameters.ParamByName( '@zxsj' ).value := formatdatetime( 'yyyymmdd', dT_zxsj.Date );
    sp_sybr.Open;
    sp_dryz_zsd.Filtered := false;
    if sp_dryz_zsd.Active then
      createrect( myrect_cx, sp_dryz_zsd, dbgrideh4, 9, 10, 13 );
    sp_sybr.First;
    ChangePrinter_syjhd;
    while not sp_sybr.eof do
    begin
      with sp_syjhzxd do
      begin
        Filtered := False;
        Close;
        Parameters.Refresh;
        Parameters.ParamByName( '@zyh' ).Value := Trim( sp_sybr.fieldbyname( 'zyh' ).asstring );
        Parameters.ParamByName( '@rq' ).Value := FormatDateTime('yyyyMMdd',dt_zxsj.DateTime);
        Parameters.ParamByName( '@fzph_zh' ).Value := '';
        Open;
      end;
        if (pub_yydm='0003')  then
        begin
          DM_data.qry_pub.close;
          DM_data.qry_pub.sql.text := 'select * from zybl_zyyz where zyh='+''''+ Trim( sp_sybr.fieldbyname( 'zyh' ).asstring )
          +''''+' and (xmmc like ''%皮试%'' or xmmc like ''%敏试%'') and charindex(''-'',xmmc)<1 and  charindex(''+'',xmmc)<1 and tzbz=0 and charindex(''阴'',xmmc)<1 and  charindex(''阳'',xmmc)<1';
          DM_data.qry_pub.Open;
        end
        else
        begin
          DM_data.qry_pub.close;
          DM_data.qry_pub.sql.text := 'select * from sys_czy where 1<>1';
          DM_data.qry_pub.Open;
        end;
      if DM_data.qry_pub.IsEmpty then
      begin
      DM_data.qry_pub.close;
      DM_data.qry_pub.sql.text := 'select yytj from zybl_zyyz_dytjsz where dyxm=''输液计划单''';
      DM_data.qry_pub.Open;
      if DM_data.qry_pub.IsEmpty then
      begin
        v_yytj := '';
      end
      else
      begin
        DM_data.qry_pub.First;
        while not DM_data.qry_pub.eof do
        begin
          v_yytj := v_yytj + '(yytj<>' + '''' + DM_data.qry_pub.FieldByName( 'yytj' ).asstring + '''' + ' and yytj<>''口服''  and kdbq=' + '''' + pub_bqdm +
           ''')' + ' and ';
          DM_data.qry_pub.Next;
        end;

      end;

  //    DM_data.qry_pub.close;
  //    DM_data.qry_pub.sql.text := 'select lbmc from zybl_zyyz_dylbsz where dyxm=''输液计划单''';
  //    DM_data.qry_pub.Open;
  //    if DM_data.qry_pub.IsEmpty then
  //    begin
  //      v_lb := '';
  //    end
  //    else
  //    begin
  //      DM_data.qry_pub.First;
  //      while not DM_data.qry_pub.eof do
  //      begin
  //        v_lb := v_lb + '(lb<>' + '''' + DM_data.qry_pub.FieldByName( 'lbmc' ).asstring + '''' + '  and kdks=' + '''' + pub_ksdm +
  //         ''')' + ' and ';
  //        DM_data.qry_pub.Next;
  //      end;
  //
  //    end;

      if v_yytj + v_lb = '' then
      begin
        filter := ' 1<>1 ';
      end
      else
      begin
        filter := v_yytj + v_lb +' ( yytj<>''特殊情况'' )';
      end;
      sp_syjhzxd.Filter := filter;
      sp_syjhzxd.Filtered := True;
      if not sp_syjhzxd.IsEmpty then
      begin
  //      ChangePrinter_syjhd;
  //      frm_zysf_print_service.Printsyjhd( sp_sybr,sp_syjhzxd,FormatDateTime('yyyy-MM-dd',dt_zxsj.DateTime));
  //      RevertPrinter;
  //      ChangePrinter_syjhd;
  //      frm_zysf_print_service.Printsyjhd( sp_sybr,sp_syjhzxd,FormatDateTime('yyyy-MM-dd',dt_zxsj.DateTime));
  //      RevertPrinter;
        zxddy;
      end;
//      DM_data.qry_pub.close;
//      DM_data.qry_pub.SQL.text:='update zybl_zyyz_yzzxqd with(rowlock) set syddy=1 where zyh='+''''+Trim( sp_sybr.fieldbyname( 'zyh' ).asstring )+
//      ''''+' and zxsj='+ ''''+FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+' and yzid in '+
//      '(select id from zybl_zyyz where zyh='+''''+Trim( sp_sybr.fieldbyname( 'zyh' ).asstring )+''''+
//      ' and yytj not in (select yytj from zybl_zyyz_dytjsz where dyxm=''口服药执行单'')'+
//      ' and yytj not in (select yytj from zybl_zyyz_dytjsz where dyxm=''输液计划单''))';
//      DM_data.qry_pub.ExecSQL;
        DM_data.qry_pub.close;
        DM_data.qry_pub.SQL.text:='insert into zybl_zyyz_syddy'+
        ' select id,'+''''+FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+' from zybl_zyyz '+
        ' where zxbz=1 and zyh='+''''+Trim( sp_sybr.fieldbyname( 'zyh' ).asstring )+''''+
        ' and yytj not in (select yytj from zybl_zyyz_dytjsz where dyxm=''口服药执行单'')'+
        ' and yytj not in (select yytj from zybl_zyyz_dytjsz where dyxm=''输液计划单'')'+
        ' and id not in (select yzid from zybl_zyyz_syddy where dyrq='+''''+
        FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+')';
        DM_data.qry_pub.ExecSQL;
      end;
      sp_sybr.Next;
    end;

  end
  else  if (pub_yydm='0003') and (pub_bqdm='0030') and (PageControl1.ActivePageIndex=2) then
  begin
    //口服药单
    if Application.MessageBox(pchar('你将打印本病区所有病人的口服药单，是否确认打印？')
      , '询问', MB_OKCANCEL + MB_ICONQUESTION
      + MB_DEFBUTTON2) = IDCANCEL then
    begin
     Exit;
    end;

    sp_sybr.close;
    sp_sybr.Parameters.ParamByName( '@bqdm' ).value := pub_bqdm;
  //  sp_sybr.Parameters.ParamByName( '@zyh' ).value := '';
    sp_sybr.Parameters.ParamByName( '@zxsj' ).value := formatdatetime( 'yyyymmdd', dT_zxsj.Date );
    sp_sybr.Open;
    sp_dryz_kfyd.Filtered := false;
    if sp_dryz_kfyd.Active then
      createrect( myrect_cx, sp_dryz_kfyd, dbgrideh6, 9, 10, 13 );
    sp_sybr.First;
    ChangePrinter_syjhd;
    while not sp_sybr.eof do
    begin
      with sp_syjhzxd do
      begin
        Filtered := False;
        Close;
        Parameters.Refresh;
        Parameters.ParamByName( '@zyh' ).Value := Trim( sp_sybr.fieldbyname( 'zyh' ).asstring );
        Parameters.ParamByName( '@rq' ).Value := FormatDateTime('yyyyMMdd',dt_zxsj.DateTime);
        Parameters.ParamByName( '@fzph_zh' ).Value := '';
        Open;
      end;
        if (pub_yydm='0003')  then
        begin
          DM_data.qry_pub.close;
          DM_data.qry_pub.sql.text := 'select * from zybl_zyyz where zyh='+''''+ Trim( sp_sybr.fieldbyname( 'zyh' ).asstring )
          +''''+' and (xmmc like ''%皮试%'' or xmmc like ''%敏试%'') and charindex(''-'',xmmc)<1 and  charindex(''+'',xmmc)<1 and tzbz=0 and charindex(''阴'',xmmc)<1 and  charindex(''阳'',xmmc)<1';
          DM_data.qry_pub.Open;
        end
        else
        begin
          DM_data.qry_pub.close;
          DM_data.qry_pub.sql.text := 'select * from sys_czy where 1<>1';
          DM_data.qry_pub.Open;
        end;
      if DM_data.qry_pub.IsEmpty then
      begin
      DM_data.qry_pub.close;
      DM_data.qry_pub.sql.text := 'select yytj from zybl_zyyz_dytjsz where dyxm=''口服药执行单''';
      DM_data.qry_pub.Open;
      if DM_data.qry_pub.IsEmpty then
      begin
        v_yytj := '';
      end
      else
      begin
        DM_data.qry_pub.First;
        while not DM_data.qry_pub.eof do
        begin
          v_yytj := v_yytj + '(yytj=' + '''' + DM_data.qry_pub.FieldByName( 'yytj' ).asstring + '''' + '   and kdbq=' + '''' + pub_bqdm +
           ''')' + ' and ';
          DM_data.qry_pub.Next;
        end;

      end;

  //    DM_data.qry_pub.close;
  //    DM_data.qry_pub.sql.text := 'select lbmc from zybl_zyyz_dylbsz where dyxm=''输液计划单''';
  //    DM_data.qry_pub.Open;
  //    if DM_data.qry_pub.IsEmpty then
  //    begin
  //      v_lb := '';
  //    end
  //    else
  //    begin
  //      DM_data.qry_pub.First;
  //      while not DM_data.qry_pub.eof do
  //      begin
  //        v_lb := v_lb + '(lb<>' + '''' + DM_data.qry_pub.FieldByName( 'lbmc' ).asstring + '''' + '  and kdks=' + '''' + pub_ksdm +
  //         ''')' + ' and ';
  //        DM_data.qry_pub.Next;
  //      end;
  //
  //    end;

      if v_yytj + v_lb = '' then
      begin
        filter := ' 1<>1 ';
      end
      else
      begin
        filter := v_yytj + v_lb +' ( yytj<>''特殊情况'' )';
      end;
      sp_syjhzxd.Filter := filter;
      sp_syjhzxd.Filtered := True;
      if not sp_syjhzxd.IsEmpty then
      begin
  //      ChangePrinter_syjhd;
  //      frm_zysf_print_service.Printsyjhd( sp_sybr,sp_syjhzxd,FormatDateTime('yyyy-MM-dd',dt_zxsj.DateTime));
  //      RevertPrinter;
  //      ChangePrinter_syjhd;
  //      frm_zysf_print_service.Printsyjhd( sp_sybr,sp_syjhzxd,FormatDateTime('yyyy-MM-dd',dt_zxsj.DateTime));
  //      RevertPrinter;
        zxddy;
      end;
//      DM_data.qry_pub.close;
//      DM_data.qry_pub.SQL.text:='update zybl_zyyz_yzzxqd with(rowlock) set syddy=1 where zyh='+''''+Trim( sp_sybr.fieldbyname( 'zyh' ).asstring )+
//      ''''+' and zxsj='+ ''''+FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+' and yzid in '+
//      '(select id from zybl_zyyz where zyh='+''''+Trim( sp_sybr.fieldbyname( 'zyh' ).asstring )+''''+
//      ' and yytj  in (select yytj from zybl_zyyz_dytjsz where dyxm=''口服药执行单''))';
//      DM_data.qry_pub.ExecSQL;
        DM_data.qry_pub.close;
        DM_data.qry_pub.SQL.text:='insert into zybl_zyyz_syddy'+
        ' select id,'+''''+FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+' from zybl_zyyz '+
        ' where zxbz=1 and zyh='+''''+Trim( sp_sybr.fieldbyname( 'zyh' ).asstring )+''''+
        ' and yytj  in (select yytj from zybl_zyyz_dytjsz where dyxm=''口服药执行单'')'+
        ' and id not in (select yzid from zybl_zyyz_syddy where dyrq='+''''+
        FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+')';
        DM_data.qry_pub.ExecSQL;
      end;
      sp_sybr.Next;
    end;
  end
  else
  begin
    //正常执行单
    if Application.MessageBox(pchar('你将打印本病区所有病人的执行单，是否确认打印？')
      , '询问', MB_OKCANCEL + MB_ICONQUESTION
      + MB_DEFBUTTON2) = IDCANCEL then
    begin
     Exit;
    end;

    sp_sybr.close;
    sp_sybr.Parameters.ParamByName( '@bqdm' ).value := pub_bqdm;
  //  sp_sybr.Parameters.ParamByName( '@zyh' ).value := '';
    sp_sybr.Parameters.ParamByName( '@zxsj' ).value := formatdatetime( 'yyyymmdd', dT_zxsj.Date );
    sp_sybr.Open;
    sp_dryz_zsd.Filtered := false;
    if sp_dryz_zsd.Active then
      createrect( myrect_cx, sp_dryz_zsd, dbgrideh4, 9, 10, 13 );
    sp_sybr.First;
    ChangePrinter_syjhd;
    while not sp_sybr.eof do
    begin
      with sp_syjhzxd do
      begin
        Filtered := False;
        Close;
        Parameters.Refresh;
        Parameters.ParamByName( '@zyh' ).Value := Trim( sp_sybr.fieldbyname( 'zyh' ).asstring );
        Parameters.ParamByName( '@rq' ).Value := FormatDateTime('yyyyMMdd',dt_zxsj.DateTime);
        Parameters.ParamByName( '@fzph_zh' ).Value := '';
        Open;
      end;
        if (pub_yydm='0003')  then
        begin
          DM_data.qry_pub.close;
          DM_data.qry_pub.sql.text := 'select * from zybl_zyyz where zyh='+''''+ Trim( sp_sybr.fieldbyname( 'zyh' ).asstring )
          +''''+' and (xmmc like ''%皮试%'' or xmmc like ''%敏试%'') and charindex(''-'',xmmc)<1 and  charindex(''+'',xmmc)<1 and tzbz=0 and charindex(''阴'',xmmc)<1 and  charindex(''阳'',xmmc)<1';
          DM_data.qry_pub.Open;
        end
        else
        begin
          DM_data.qry_pub.close;
          DM_data.qry_pub.sql.text := 'select * from sys_czy where 1<>1';
          DM_data.qry_pub.Open;
        end;
      if DM_data.qry_pub.IsEmpty then
      begin
      DM_data.qry_pub.close;
      DM_data.qry_pub.sql.text := 'select yytj from zybl_zyyz_dytjsz where dyxm=''输液计划单''';
      DM_data.qry_pub.Open;
      if DM_data.qry_pub.IsEmpty then
      begin
        v_yytj := '';
      end
      else
      begin
        DM_data.qry_pub.First;
        while not DM_data.qry_pub.eof do
        begin
          v_yytj := v_yytj + '(yytj<>' + '''' + DM_data.qry_pub.FieldByName( 'yytj' ).asstring + '''' + '  and kdbq=' + '''' + pub_bqdm +
           ''')' + ' and ';
          DM_data.qry_pub.Next;
        end;

      end;

  //    DM_data.qry_pub.close;
  //    DM_data.qry_pub.sql.text := 'select lbmc from zybl_zyyz_dylbsz where dyxm=''输液计划单''';
  //    DM_data.qry_pub.Open;
  //    if DM_data.qry_pub.IsEmpty then
  //    begin
  //      v_lb := '';
  //    end
  //    else
  //    begin
  //      DM_data.qry_pub.First;
  //      while not DM_data.qry_pub.eof do
  //      begin
  //        v_lb := v_lb + '(lb<>' + '''' + DM_data.qry_pub.FieldByName( 'lbmc' ).asstring + '''' + '  and kdks=' + '''' + pub_ksdm +
  //         ''')' + ' and ';
  //        DM_data.qry_pub.Next;
  //      end;
  //
  //    end;

      if v_yytj + v_lb = '' then
      begin
        filter := ' 1<>1 ';
      end
      else
      begin
        filter := v_yytj + v_lb +' ( yytj<>''特殊情况'' )';
      end;

      sp_syjhzxd.Filter := filter;

      sp_syjhzxd.Filtered := True;
      if not sp_syjhzxd.IsEmpty then
      begin
  //      ChangePrinter_syjhd;
  //      frm_zysf_print_service.Printsyjhd( sp_sybr,sp_syjhzxd,FormatDateTime('yyyy-MM-dd',dt_zxsj.DateTime));
  //      RevertPrinter;
  //      ChangePrinter_syjhd;
  //      frm_zysf_print_service.Printsyjhd( sp_sybr,sp_syjhzxd,FormatDateTime('yyyy-MM-dd',dt_zxsj.DateTime));
  //      RevertPrinter;
         if pub_yydm='0271' then //荆门市掇刀人民医院
       begin
          frm_zysf_print_service.print_yzzxddy( sp_sybr,sp_syjhzxd,trim(formatdatetime('yyyy-MM-dd hh:mm',Frm_func.curr_date)));
       end
       else
        zxddy;
      end;
//      DM_data.qry_pub.close;
//      DM_data.qry_pub.SQL.text:='update zybl_zyyz_yzzxqd with(rowlock) set syddy=1 where zyh='+''''+Trim( sp_sybr.fieldbyname( 'zyh' ).asstring )+
//      ''''+' and zxsj='+ ''''+FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+' and yzid in '+
//      '(select id from zybl_zyyz where zyh='+''''+Trim( sp_sybr.fieldbyname( 'zyh' ).asstring )+''''+
//      ' and yytj not in (select yytj from zybl_zyyz_dytjsz where dyxm=''输液计划单''))';
//      DM_data.qry_pub.ExecSQL;
        DM_data.qry_pub.close;
        DM_data.qry_pub.SQL.text:='insert into zybl_zyyz_syddy'+
        ' select id,'+''''+FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+' from zybl_zyyz '+
        ' where zxbz=1 and zyh='+''''+Trim( sp_sybr.fieldbyname( 'zyh' ).asstring )+''''+
        ' and yytj not in (select yytj from zybl_zyyz_dytjsz where dyxm=''输液计划单'')'+
        ' and id not in (select yzid from zybl_zyyz_syddy where dyrq='+''''+
        FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+')';
        DM_data.qry_pub.ExecSQL;
      end;
      sp_sybr.Next;
    end;
  end;

end;

procedure Tfrm_hsdyzxd.N1Click(Sender: TObject);
begin
try
  if sp_dryz.fieldbyname( 'fzph' ).asstring<>'' then
  begin
    DM_data.qry_pub.close;
    DM_data.qry_pub.sql.text:='select * from zybl_zyyz where fzph='+''''+
    sp_dryz.fieldbyname( 'fzph' ).asstring+'''';
    DM_data.qry_pub.Open;
    if not DM_data.qry_pub.IsEmpty then
    begin
      DM_data.qry_pub.First;
      while not DM_data.qry_pub.eof do
      begin
//        qry_up_yzzxqd.close;
//        qry_up_yzzxqd.SQL.text:='update zybl_zyyz_yzzxqd set syddy=0 where yzid='+
//        DM_data.qry_pub.FieldByName('id').asstring;
//        qry_up_yzzxqd.ExecSQL;
        qry_up_yzzxqd.close;
        qry_up_yzzxqd.SQL.text:='delete from zybl_zyyz_syddy  where yzid='+
        DM_data.qry_pub.FieldByName('id').asstring+' and dyrq='+''''+
        FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+'''';
        qry_up_yzzxqd.ExecSQL;
        DM_data.qry_pub.Next;
      end;
      Application.MessageBox('修改完成！', '提示', MB_OK + MB_ICONINFORMATION);
    end;
  end
  else
  begin
//    qry_up_yzzxqd.close;
//    qry_up_yzzxqd.SQL.text:='update zybl_zyyz_yzzxqd set syddy=0 where yzid='+
//    sp_dryz.fieldbyname( 'yzid' ).asstring;
//    qry_up_yzzxqd.ExecSQL;
        qry_up_yzzxqd.close;
        qry_up_yzzxqd.SQL.text:='delete from zybl_zyyz_syddy  where yzid='+
        sp_dryz.fieldbyname( 'yzid' ).asstring+' and dyrq='+''''+
        FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+'''';
        qry_up_yzzxqd.ExecSQL;
    Application.MessageBox('修改完成！', '提示', MB_OK + MB_ICONINFORMATION);
  end;

except
  Application.MessageBox('修改失败！请重试！', '错误', MB_OK + MB_ICONSTOP);

end;
end;

procedure Tfrm_hsdyzxd.N21Click(Sender: TObject);
var
  i, y, j, count, x: Integer;
  aControl: TControl;
  v_yytj, v_lb, filter: string;
begin
  if Application.MessageBox(pchar('你将打印本病区所有病人的全部输液单，是否确认打印？')
    , '询问', MB_OKCANCEL + MB_ICONQUESTION
    + MB_DEFBUTTON2) = IDCANCEL then
  begin
   Exit;
  end;
//  sp_dryz.close;
//  sp_dryz.Parameters.ParamByName( '@bqdm' ).value := pub_bqdm;
//  sp_dryz.Parameters.ParamByName( '@zyh' ).value := '';
//  sp_dryz.Parameters.ParamByName( '@bz' ).value := '全部';
//  sp_dryz.Parameters.ParamByName( '@zxsj' ).value := formatdatetime( 'yyyymmdd', dT_zxsj.Date );
//  sp_dryz.Open;

  sp_sybr.close;
  sp_sybr.Parameters.ParamByName( '@bqdm' ).value := pub_bqdm;
//  sp_sybr.Parameters.ParamByName( '@zyh' ).value := '';
  sp_sybr.Parameters.ParamByName( '@zxsj' ).value := formatdatetime( 'yyyymmdd', dT_zxsj.Date );
  sp_sybr.Open;
  sp_dryz.Filtered := false;
  if sp_dryz.Active then
    createrect( myrect_cx, sp_dryz, dbgrideh2, 9, 10, 13 );
  sp_sybr.First;
  ChangePrinter_syjhd;
  while not sp_sybr.eof do
  begin

    with sp_syjhzxd do
    begin
      Filtered := False;
      Close;
      Parameters.Refresh;
      Parameters.ParamByName( '@zyh' ).Value := Trim( sp_sybr.fieldbyname( 'zyh' ).asstring );
      Parameters.ParamByName( '@rq' ).Value := FormatDateTime('yyyyMMdd',dt_zxsj.DateTime);
      Parameters.ParamByName( '@fzph_zh' ).Value := '';
      Open;
    end;
      if (pub_yydm='0003')  then
      begin
        DM_data.qry_pub.close;
        DM_data.qry_pub.sql.text := 'select * from zybl_zyyz where zyh='+''''+ Trim( sp_sybr.fieldbyname( 'zyh' ).asstring )
        +''''+' and (xmmc like ''%皮试%'' or xmmc like ''%敏试%'') and charindex(''-'',xmmc)<1 and  charindex(''+'',xmmc)<1 and tzbz=0 and charindex(''阴'',xmmc)<1 and  charindex(''阳'',xmmc)<1';
        DM_data.qry_pub.Open;
      end
      else
      begin
        DM_data.qry_pub.close;
        DM_data.qry_pub.sql.text := 'select * from sys_czy where 1<>1';
        DM_data.qry_pub.Open;
      end;
    if  DM_data.qry_pub.IsEmpty then
    begin

    DM_data.qry_pub.close;
    DM_data.qry_pub.sql.text := 'select yytj from zybl_zyyz_dytjsz where dyxm=''输液计划单''';
    DM_data.qry_pub.Open;
    if DM_data.qry_pub.IsEmpty then
    begin
      v_yytj := '';
    end
    else
    begin
      DM_data.qry_pub.First;
      while not DM_data.qry_pub.eof do
      begin
        v_yytj := v_yytj + '(yytj=' + '''' + DM_data.qry_pub.FieldByName( 'yytj' ).asstring + '''' + '  and kdbq=' + '''' + pub_bqdm +
         ''')' + ' or ';
        DM_data.qry_pub.Next;
      end;

    end;

    DM_data.qry_pub.close;
    DM_data.qry_pub.sql.text := 'select lbmc from zybl_zyyz_dylbsz where dyxm=''输液计划单''';
    DM_data.qry_pub.Open;
    if DM_data.qry_pub.IsEmpty then
    begin
      v_lb := '';
    end
    else
    begin
      DM_data.qry_pub.First;
      while not DM_data.qry_pub.eof do
      begin
        v_lb := v_lb + '(lb=' + '''' + DM_data.qry_pub.FieldByName( 'lbmc' ).asstring + '''' + '  and kdbq=' + '''' + pub_bqdm +
         ''')' + ' or ';
        DM_data.qry_pub.Next;
      end;

    end;

    if v_yytj + v_lb = '' then
    begin
      filter := ' 1<>1 ';
    end
    else
    begin
      filter := v_yytj + v_lb + ' ( xmmc like ''%皮试%'' )'+
      ' or '+' ( xmmc like ''%敏试%'' )';
    end;

    sp_syjhzxd.Filter := filter;

    sp_syjhzxd.Filtered := True;
    if not sp_syjhzxd.IsEmpty then
    begin
//      ChangePrinter_syjhd;
//      frm_zysf_print_service.Printsyjhd( sp_sybr,sp_syjhzxd,FormatDateTime('yyyy-MM-dd',dt_zxsj.DateTime));
//      RevertPrinter;
     if pub_yydm='0271' then //荆门市掇刀人民医院
     begin
        frm_zysf_print_service.print_yzzxddy( sp_sybr,sp_syjhzxd,trim(formatdatetime('yyyy-MM-dd hh:mm',Frm_func.curr_date)));
     end
     else
      syjhddy;
    end;
//    DM_data.qry_pub.close;
//    DM_data.qry_pub.SQL.text:='update zybl_zyyz_yzzxqd with(rowlock) set syddy=1 where zyh='+''''+Trim( sp_sybr.fieldbyname( 'zyh' ).asstring )+
//    ''''+' and zxsj='+ ''''+FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+' and yzid in '+
//    '(select id from zybl_zyyz where zyh='+''''+Trim( sp_sybr.fieldbyname( 'zyh' ).asstring )+''''+
//    ' and yytj in (select yytj from zybl_zyyz_dytjsz where dyxm=''输液计划单''))';
//    DM_data.qry_pub.ExecSQL;
          DM_data.qry_pub.close;
          DM_data.qry_pub.SQL.text:='insert into zybl_zyyz_syddy '+
          'select id,'+''''+FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+' from zybl_zyyz where zxbz=1 and zyh='+''''+Trim( sp_sybr.fieldbyname( 'zyh' ).asstring )+
          ''''+
          ' and yytj  in (select yytj from zybl_zyyz_dytjsz where dyxm=''输液计划单'')'+
          ' and   id not in (select yzid from zybl_zyyz_syddy where dyrq='+''''+
          FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+')';
          DM_data.qry_pub.ExecSQL;
    end;
    sp_sybr.Next;
  end;

end;

procedure Tfrm_hsdyzxd.N2Click(Sender: TObject);
begin
try
  if not  sp_dryz.IsEmpty then
  begin
      sp_dryz.First;
      while not sp_dryz.eof do
      begin
//        qry_up_yzzxqd.close;
//        qry_up_yzzxqd.SQL.text:='update zybl_zyyz_yzzxqd set syddy=0 where yzid='+
//        sp_dryz.FieldByName('yzid').asstring;
//        qry_up_yzzxqd.ExecSQL;
        qry_up_yzzxqd.close;
        qry_up_yzzxqd.SQL.text:='delete from zybl_zyyz_syddy  where yzid='+
        sp_dryz.FieldByName('yzid').asstring+' and dyrq='+''''+
        FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+'''';
        qry_up_yzzxqd.ExecSQL;
        sp_dryz.Next;
      end;
      Application.MessageBox('修改完成！', '提示', MB_OK + MB_ICONINFORMATION);
  end;

except
  Application.MessageBox('修改失败！请重试！', '错误', MB_OK + MB_ICONSTOP);

end;
end;

procedure Tfrm_hsdyzxd.createrect( var myrect1: TTmyrect; dataset_rect: Tcustomadodataset; grid_yzlr1: Tdbgrideh; x1, x2, x3: integer );
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


procedure Tfrm_hsdyzxd.cxButton10Click(Sender: TObject);
begin
  MenuItem18.Click;
end;

procedure Tfrm_hsdyzxd.cxButton11Click(Sender: TObject);
begin
  MenuItem20.Click;
end;

procedure Tfrm_hsdyzxd.cxButton12Click(Sender: TObject);
begin
  MenuItem22.Click;
end;

procedure Tfrm_hsdyzxd.cxButton13Click(Sender: TObject);
begin
  MenuItem24.Click;
end;

procedure Tfrm_hsdyzxd.cxButton15Click(Sender: TObject);
begin
  MenuItem26.Click;
end;

procedure Tfrm_hsdyzxd.cxButton16Click(Sender: TObject);
begin
  MenuItem28.Click;
end;

procedure Tfrm_hsdyzxd.cxButton1Click(Sender: TObject);
begin
  MenuItem2.Click;
end;

procedure Tfrm_hsdyzxd.cxButton2Click(Sender: TObject);
begin
  MenuItem1.Click;
end;

procedure Tfrm_hsdyzxd.cxButton3Click(Sender: TObject);
begin
  MenuItem4.Click;
end;

procedure Tfrm_hsdyzxd.cxButton4Click(Sender: TObject);
begin
  MenuItem6.Click;
end;

procedure Tfrm_hsdyzxd.cxButton5Click(Sender: TObject);
begin
  MenuItem8.Click;
end;

procedure Tfrm_hsdyzxd.cxButton6Click(Sender: TObject);
begin
  MenuItem10.Click;
end;

procedure Tfrm_hsdyzxd.cxButton7Click(Sender: TObject);
begin
  MenuItem12.Click;
end;

procedure Tfrm_hsdyzxd.cxButton8Click(Sender: TObject);
begin
  MenuItem14.Click;
end;

procedure Tfrm_hsdyzxd.cxButton9Click(Sender: TObject);
begin
  MenuItem16.Click;
end;

procedure Tfrm_hsdyzxd.OnMouseWheel_yzzx( var Msg: TMsg; var Handled: Boolean );
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

procedure Tfrm_hsdyzxd.OnMouseWheel_zsd( var Msg: TMsg; var Handled: Boolean );
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

procedure Tfrm_hsdyzxd.qbClick(Sender: TObject);
begin
  sp_sybr.DisableControls;
  if qb.Checked=true then
  begin
    zyh_zfc:='';
    sp_sybr.First;
    while not sp_sybr.eof do
    begin
      sp_sybr.Edit;
      sp_sybr.FieldByName('xzbz').AsBoolean:=true;
      sp_sybr.Post;
//      if (sp_sybr.fieldbyname('xzbz').asboolean=false) and (DBGridEh1.SelectedIndex=0) then
//      begin
//        zyh_zfc:=zyh_zfc+' or '+'(zyh ='+''''+sp_sybr.fieldbyname('zyh').asstring+''''+')';
//      end
//      else
//      if (sp_sybr.fieldbyname('xzbz').asboolean=true) and (DBGridEh1.SelectedIndex=0) then
//      begin
//        zyh_zfc := StringReplace( zyh_zfc, ' or '+'(zyh ='+''''+sp_sybr.fieldbyname('zyh').asstring+''''+')', '', [rfReplaceAll] );
//      end;
      sp_sybr.Next;
    end;
    sp_sybr.First;
    while not sp_sybr.eof do
    begin
      zyh_zfc:=zyh_zfc+' or '+'(zyh ='+''''+sp_sybr.fieldbyname('zyh').asstring+''''+')';
      sp_sybr.Next;
    end;
    sp_sybr.First;
  end
  else
  begin
    while not sp_sybr.eof do
    begin
      sp_sybr.Edit;
      sp_sybr.FieldByName('xzbz').AsBoolean:=false;
      sp_sybr.Post;
//      if (sp_sybr.fieldbyname('xzbz').asboolean=false) and (DBGridEh1.SelectedIndex=0) then
//      begin
//        zyh_zfc:=zyh_zfc+' or '+'(zyh ='+''''+sp_sybr.fieldbyname('zyh').asstring+''''+')';
//      end
//      else
//      if (sp_sybr.fieldbyname('xzbz').asboolean=true) and (DBGridEh1.SelectedIndex=0) then
//      begin
//        zyh_zfc := StringReplace( zyh_zfc, ' or '+'(zyh ='+''''+sp_sybr.fieldbyname('zyh').asstring+''''+')', '', [rfReplaceAll] );
//      end;
      sp_sybr.Next;
    end;
    zyh_zfc:='';
  end;
  if PageControl1.ActivePageIndex=0 then
  begin
      sp_dryz.Filtered:=false;
      if zyh_zfc='' then
      begin
        sp_dryz.Filter:='zyh=''1231231231231231''';
      end
      else
        sp_dryz.Filter:='';
      sp_dryz.Filtered:=true;
  end
  else
  begin
      sp_dryz_zsd.Filtered:=false;
      if zyh_zfc='' then
      begin
        sp_dryz_zsd.Filter:='zyh=''1231231231231231''';
      end
      else
        sp_dryz_zsd.Filter:='';
      sp_dryz_zsd.Filtered:=true;
  end;
  sp_sybr.First;
  sp_sybr.EnableControls;
end;

procedure Tfrm_hsdyzxd.QRSubDetail1NeedData(Sender: TObject;
  var MoreData: Boolean);
var
  I, hei: integer;
begin
//  MoreData := True;
//  i := 1;
//  if sp_syjhzxd.Eof then
//  MoreData := False;
//  xmmc.Caption := '';
//  ypyf.Caption :='';
//  sp_syjhzxd.First;
//  if not sp_syjhzxd.eof then
//  begin
////    if ( ( length( sp_syjhzxd.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200 ) <= 2 then
////      paper_size := paper_size + ( ( length( qry_cx.FieldByName( 'min_jlsj' ).Asstring ) * 8 ) div 46 )
////    else
////      paper_size := paper_size + ( ( length( qry_cx.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200 );
//      xmmc.caption := sp_syjhzxd.FieldByName( 'xmmc' ).Asstring;
//      ypyf.Caption:=  sp_syjhzxd.FieldByName( 'ypyf' ).Asstring;
//  end;

 QRSubDetail1.Height:=44*((length( sp_syjhzxd.FieldByName( 'xmmc' ).Asstring ) div 61)+1);
 QRDBText1.Height:=44*((length( sp_syjhzxd.FieldByName( 'xmmc' ).Asstring ) div 61)+1);
 QRDBText2.Height:=44*((length( sp_syjhzxd.FieldByName( 'xmmc' ).Asstring ) div 61)+1);
 QRgrImage1.Height:= 44*((length( sp_syjhzxd.FieldByName( 'xmmc' ).Asstring ) div 61)+1);
 if Trim(sp_syjhzxd.FieldByName( 'yf' ).Asstring)='' then
 begin
   QRgrImage1.Height:=0;
 end;
end;

procedure Tfrm_hsdyzxd.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
  var repcd:Integer;
begin
  repcd:=0;
  sp_syjhzxd.First;
  while not sp_syjhzxd.eof do
  begin
    repcd:=repcd+48*((length( sp_syjhzxd.FieldByName( 'xmmc' ).Asstring ) div 61)+1);
    sp_syjhzxd.Next;
  end;
  repcd:=repcd+48*((length( sp_syjhzxd.FieldByName( 'xmmc' ).Asstring ) div 61)+1);
  sp_syjhzxd.First;
  if (pub_yydm='0003') and (pub_bqdm='0040') then
  begin
    repcd:=repcd+33+122+60;
  end
  else
    repcd:=repcd+33+122+42;
  QuickRep1.Height:=repcd;
end;

procedure Tfrm_hsdyzxd.OnMouseWheel_kfy( var Msg: TMsg; var Handled: Boolean );
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

procedure Tfrm_hsdyzxd.OnMouseWheel_zld( var Msg: TMsg; var Handled: Boolean );
begin
//  if Msg.message = WM_MouseWheel then
//  begin
//    if Msg.wParam < 0 then
//      SendMessage( ScrollBox5.Handle, WM_VSCROLL, SB_LINEDOWN, 0 )
//    else
//      SendMessage( ScrollBox5.Handle, WM_VSCROLL, SB_LINEUP, 0 );
//    Handled := True;
//  end;
end;


procedure Tfrm_hsdyzxd.Button1Click(Sender: TObject);
var
  i, y, j, count, x: Integer;
  aControl: TControl;
  v_yytj, v_lb, filter,fzzfc,x_zyh,zh,czksstring,x_czks,v_czks: string;
begin
    if Application.MessageBox(pchar('你将打印右边勾选的检查项目，是否确认打印？')
      , '询问', MB_OKCANCEL + MB_ICONQUESTION
      + MB_DEFBUTTON2) = IDCANCEL then
    begin
     Exit;
    end;
    sp_dryz_zsd.DisableControls;
    sp_dryz_zsd.First;
    while not sp_dryz_zsd.Eof do
    begin
      if (sp_dryz_zsd.FieldByName('xzbz').AsBoolean=true) and (sp_dryz_zsd.FieldByName('lb').asstring='检查')
         and (Pos(sp_dryz_zsd.FieldByName('czks').AsString,czksstring)<1)     then
      begin

        czksstring:=czksstring+sp_dryz_zsd.FieldByName('czks').AsString+',';
      end;
      sp_dryz_zsd.Next;
    end;
    while Pos(',',czksstring)>0 do
    begin
      fzzfc:='';
      x_czks:=Copy(czksstring,1,Pos(',',czksstring)-1);
      sp_dryz_zsd.First;
      while not sp_dryz_zsd.eof do
      begin
        if (sp_dryz_zsd.FieldByName('xzbz').AsBoolean=true) and (Pos(sp_dryz_zsd.FieldByName('zyh').AsString,fzzfc)<1)
           and (sp_dryz_zsd.FieldByName('lb').asstring='检查')
         and (sp_dryz_zsd.FieldByName('czks').AsString=x_czks)     then
        begin
          fzzfc:=fzzfc+sp_dryz_zsd.FieldByName('zyh').AsString+',';
        end;
        sp_dryz_zsd.Next;
      end;
      if fzzfc='' then
      begin
        Application.MessageBox('你未选择项目打印！', '警告', MB_OK +
          MB_ICONWARNING);
        Exit;
      end;
      if sp_dryz_zsd.Active then
        createrect( myrect_cx, sp_dryz_zsd, dbgrideh4, 9, 10, 13 );
      sp_sybr.First;
      ChangePrinter_syjhd;
      while Pos(',',fzzfc)>0 do
      begin
          zh:='';
          x_zyh:=Copy(fzzfc,1,Pos(',',fzzfc)-1);
          sp_dryz_zsd.First;
          while not sp_dryz_zsd.eof do
          begin
            if (sp_dryz_zsd.FieldByName('xzbz').AsBoolean=true) and (sp_dryz_zsd.FieldByName('zyh').AsString=x_zyh) and
               (Pos(sp_dryz_zsd.FieldByName('fzph').AsString,zh)<1) and (sp_dryz_zsd.FieldByName('lb').asstring='检查')
                and (sp_dryz_zsd.FieldByName('czks').AsString=x_czks)     then
            begin
              if Trim(sp_dryz_zsd.FieldByName('fzph').AsString)<>'' then
                zh:=zh+trim(sp_dryz_zsd.FieldByName('fzph').AsString)+','
              else
                zh:=zh+trim(sp_dryz_zsd.FieldByName('yzid').AsString)+',';
            end
            else
            begin

            end;
            sp_dryz_zsd.Next;
          end;
          with sp_syjhzxd do
          begin
            Filtered := False;
            Close;
            Parameters.Refresh;
            Parameters.ParamByName( '@zyh' ).Value := x_zyh;
            Parameters.ParamByName( '@rq' ).Value := FormatDateTime('yyyyMMdd',dt_zxsj.DateTime);
            Parameters.ParamByName( '@fzph_zh' ).Value := zh;
            Open;
          end;
          if (pub_yydm='0003') then
          begin
            DM_data.qry_pub.close;
            DM_data.qry_pub.sql.text := 'select * from zybl_zyyz where zyh='+''''+ Trim( sp_dryz_zsd.fieldbyname( 'zyh' ).asstring )
            +''''+' and (xmmc like ''%皮试%'' or xmmc like ''%敏试%'') and charindex(''-'',xmmc)<1 and  charindex(''+'',xmmc)<1 and tzbz=0 and charindex(''阴'',xmmc)<1 and  charindex(''阳'',xmmc)<1';
            DM_data.qry_pub.Open;
          end
          else
          begin
            DM_data.qry_pub.close;
            DM_data.qry_pub.sql.text := 'select * from sys_czy where 1<>1';
            DM_data.qry_pub.Open;
          end;
          if DM_data.qry_pub.IsEmpty then
          begin
          DM_data.qry_pub.close;
          DM_data.qry_pub.sql.text := 'select yytj from zybl_zyyz_dytjsz where dyxm=''输液计划单''';
          DM_data.qry_pub.Open;
          if DM_data.qry_pub.IsEmpty then
          begin
            v_yytj := '';
          end
          else
          begin
            DM_data.qry_pub.First;
            while not DM_data.qry_pub.eof do
            begin
              v_yytj := v_yytj + '(yytj<>' + '''' + DM_data.qry_pub.FieldByName( 'yytj' ).asstring + '''' + ' and yytj<>''口服'' and kdbq=' + '''' + pub_bqdm +
             ''')' + ' and ';
              DM_data.qry_pub.Next;
            end;

          end;

    //      DM_data.qry_pub.close;
    //      DM_data.qry_pub.sql.text := 'select lbmc from zybl_zyyz_dylbsz where dyxm=''注射计划单''';
    //      DM_data.qry_pub.Open;
    //      if DM_data.qry_pub.IsEmpty then
    //      begin
    //        v_lb := '';
    //      end
    //      else
    //      begin
    //        DM_data.qry_pub.First;
    //        while not DM_data.qry_pub.eof do
    //        begin
    //          v_lb := v_lb + '(lb=' + '''' + DM_data.qry_pub.FieldByName( 'lbmc' ).asstring + '''' + '  and kdks=' + '''' + pub_ksdm +
    //           ''')' + ' or ';
    //          DM_data.qry_pub.Next;
    //        end;
    //
    //      end;

          if v_yytj + v_lb = '' then
          begin
            filter := ' 1<>1 ';
          end
          else
          begin
            filter := v_yytj + v_lb + ' ( xmmc <> ''特殊注射单'' )';
          end;

          sp_syjhzxd.Filter := filter;

          sp_syjhzxd.Filtered := True;
          sp_sybr.DisableControls;
          sp_sybr.Locate('zyh',x_zyh,[]);
          sp_sybr.EnableControls;
          if not sp_syjhzxd.IsEmpty then
          begin
    //        ChangePrinter_syjhd;
    //        frm_zysf_print_service.Printsyjhd( sp_sybr,sp_syjhzxd,FormatDateTime('yyyy-MM-dd',dt_zxsj.DateTime));
    //        RevertPrinter;
    //        ChangePrinter_syjhd;
    //        frm_zysf_print_service.Printsyjhd( sp_sybr,sp_syjhzxd,FormatDateTime('yyyy-MM-dd',dt_zxsj.DateTime));
    //        RevertPrinter;
              DM_data.qry_pub.close;
              DM_data.qry_pub.sql.text:='select * from sys_ksdm where dm='+''''+x_czks+'''';
              DM_data.qry_pub.Open;
              v_czks:=DM_data.qry_pub.FieldByName('mc').asstring;
              zxddy_czks(v_czks);
          end;
            DM_data.qry_pub.close;
            DM_data.qry_pub.SQL.text:='insert into zybl_zyyz_syddy '+
            'select id,'+''''+FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+' from zybl_zyyz where zxbz=1 and  zyh='+''''+x_zyh+
            ''''+
            ' and   id not in (select yzid from zybl_zyyz_syddy where dyrq='+''''+
            FormatDateTime('yyyyMMdd',dt_zxsj.DateTime)+''''+')'+' and (charindex(fzph,'+''''+
            zh+''''+')>0 or charindex('',''+convert(varchar,id)+'','','',''+'+''''+zh+''''+')>0)';
            DM_data.qry_pub.ExecSQL;
          end;
          fzzfc:=Copy(fzzfc,Pos(',',fzzfc)+1);
      end;
       czksstring:=Copy(czksstring,Pos(',',czksstring)+1);
    end;
    sp_dryz_zsd.EnableControls;
end;

procedure Tfrm_hsdyzxd.ChangePrinter;
begin
  //判断是否使用打印关联方式及取得打印机序号
  try
    v_PrinterIndex_old := Printer.PrinterIndex;
    v_PrinterIndex_new := func_GetPrinterIndex( 3, v_IsPrinterJoin );
    if v_IsPrinterJoin then
      Proc_ChangePrinter( v_PrinterIndex_new, True );
  except
  end;

end;

procedure Tfrm_hsdyzxd.ChangePrinter_syjhd;
begin
  //判断是否使用打印关联方式及取得打印机序号
  try
    v_PrinterIndex_old := Printer.PrinterIndex;
    frm_zysf_print_service.v_PrinterIndex_new := func_GetPrinterIndex( 5, v_IsPrinterJoin );
    v_PrinterIndex_new := func_GetPrinterIndex( 5, v_IsPrinterJoin );
    //Printer.PrinterIndex := v_PrinterIndex_new;
    //Printer.Printers.na
//    if v_IsPrinterJoin then
//      Proc_ChangePrinter( v_PrinterIndex_new, True );
      //ShowMessage(Printer.Printers[v_PrinterIndex_new]);
  except
  end;

end;

procedure Tfrm_hsdyzxd.CheckBox1Click(Sender: TObject);
begin
  sp_dryz_zsd.DisableControls;
  if CheckBox1.Checked=true then
  begin
    sp_dryz_zsd.First;
    while not sp_dryz_zsd.eof do
    begin
      sp_dryz_zsd.Edit;
      sp_dryz_zsd.FieldByName('xzbz').AsBoolean:=true;
      sp_dryz_zsd.Post;
//      if (sp_sybr.fieldbyname('xzbz').asboolean=false) and (DBGridEh1.SelectedIndex=0) then
//      begin
//        zyh_zfc:=zyh_zfc+' or '+'(zyh ='+''''+sp_sybr.fieldbyname('zyh').asstring+''''+')';
//      end
//      else
//      if (sp_sybr.fieldbyname('xzbz').asboolean=true) and (DBGridEh1.SelectedIndex=0) then
//      begin
//        zyh_zfc := StringReplace( zyh_zfc, ' or '+'(zyh ='+''''+sp_sybr.fieldbyname('zyh').asstring+''''+')', '', [rfReplaceAll] );
//      end;
      sp_dryz_zsd.Next;
    end;
    sp_dryz_zsd.First;
  end
  else
  begin
    sp_dryz_zsd.First;
    while not sp_dryz_zsd.eof do
    begin
      sp_dryz_zsd.Edit;
      sp_dryz_zsd.FieldByName('xzbz').AsBoolean:=false;
      sp_dryz_zsd.Post;
//      if (sp_sybr.fieldbyname('xzbz').asboolean=false) and (DBGridEh1.SelectedIndex=0) then
//      begin
//        zyh_zfc:=zyh_zfc+' or '+'(zyh ='+''''+sp_sybr.fieldbyname('zyh').asstring+''''+')';
//      end
//      else
//      if (sp_sybr.fieldbyname('xzbz').asboolean=true) and (DBGridEh1.SelectedIndex=0) then
//      begin
//        zyh_zfc := StringReplace( zyh_zfc, ' or '+'(zyh ='+''''+sp_sybr.fieldbyname('zyh').asstring+''''+')', '', [rfReplaceAll] );
//      end;
      sp_dryz_zsd.Next;
    end;
    sp_dryz_zsd.First;
  end;
  sp_dryz_zsd.EnableControls;
end;

procedure Tfrm_hsdyzxd.CheckBox2Click(Sender: TObject);
begin
  sp_dryz.DisableControls;
  if CheckBox2.Checked=true then
  begin
    sp_dryz.First;
    while not sp_dryz.eof do
    begin
      sp_dryz.Edit;
      sp_dryz.FieldByName('xzbz').AsBoolean:=true;
      sp_dryz.Post;
      sp_dryz.Next;
    end;
    sp_dryz.First;
  end
  else
  begin
    sp_dryz.First;
    while not sp_dryz.eof do
    begin
      sp_dryz.Edit;
      sp_dryz.FieldByName('xzbz').AsBoolean:=false;
      sp_dryz.Post;
      sp_dryz.Next;
    end;
    sp_dryz.First;
  end;
  sp_dryz.EnableControls;
end;

procedure Tfrm_hsdyzxd.CheckBox3Click(Sender: TObject);
begin
  sp_dryz_kfyd.DisableControls;
  if CheckBox3.Checked=true then
  begin
    sp_dryz_kfyd.First;
    while not sp_dryz_kfyd.eof do
    begin
      sp_dryz_kfyd.Edit;
      sp_dryz_kfyd.FieldByName('xzbz').AsBoolean:=true;
      sp_dryz_kfyd.Post;
//      if (sp_sybr.fieldbyname('xzbz').asboolean=false) and (DBGridEh1.SelectedIndex=0) then
//      begin
//        zyh_zfc:=zyh_zfc+' or '+'(zyh ='+''''+sp_sybr.fieldbyname('zyh').asstring+''''+')';
//      end
//      else
//      if (sp_sybr.fieldbyname('xzbz').asboolean=true) and (DBGridEh1.SelectedIndex=0) then
//      begin
//        zyh_zfc := StringReplace( zyh_zfc, ' or '+'(zyh ='+''''+sp_sybr.fieldbyname('zyh').asstring+''''+')', '', [rfReplaceAll] );
//      end;
      sp_dryz_kfyd.Next;
    end;
    sp_dryz_kfyd.First;
  end
  else
  begin
    sp_dryz_kfyd.First;
    while not sp_dryz_kfyd.eof do
    begin
      sp_dryz_kfyd.Edit;
      sp_dryz_kfyd.FieldByName('xzbz').AsBoolean:=false;
      sp_dryz_kfyd.Post;
//      if (sp_sybr.fieldbyname('xzbz').asboolean=false) and (DBGridEh1.SelectedIndex=0) then
//      begin
//        zyh_zfc:=zyh_zfc+' or '+'(zyh ='+''''+sp_sybr.fieldbyname('zyh').asstring+''''+')';
//      end
//      else
//      if (sp_sybr.fieldbyname('xzbz').asboolean=true) and (DBGridEh1.SelectedIndex=0) then
//      begin
//        zyh_zfc := StringReplace( zyh_zfc, ' or '+'(zyh ='+''''+sp_sybr.fieldbyname('zyh').asstring+''''+')', '', [rfReplaceAll] );
//      end;
      sp_dryz_kfyd.Next;
    end;
    sp_dryz_kfyd.First;
  end;
  sp_dryz_kfyd.EnableControls;
end;

procedure Tfrm_hsdyzxd.syjhddy;
begin
  v_PrinterIndex_old := Printer.PrinterIndex;
  v_PrinterIndex_new := func_GetPrinterIndex( 5, v_IsPrinterJoin );
  if v_IsPrinterJoin=true then
  begin
    if  frm_hsdyzxd.QuickRep1.PrinterSettings.PrinterIndex <> v_PrinterIndex_new then
    begin
      frm_hsdyzxd.QuickRep1.PrinterSettings.PrinterIndex := v_PrinterIndex_new;
    end;
  end;
  QRLabel3.Caption:=pub_yymc+'输液单';
  p_zyh.Caption:='住院号:'+trim(sp_sybr.FieldByName('tmh').AsString);
  p_nl.Caption:='年龄:'+trim(sp_sybr.FieldByName('brnl').AsString);
  p_xm.Caption:='姓名:'+trim(sp_sybr.FieldByName('brxm').AsString)+'('+
  trim(sp_sybr.FieldByName('brxb').AsString)+')';
  p_bch.Caption:='病床号:'+trim(sp_sybr.FieldByName('bch').AsString);
  p_ks.Caption:='科室:'+trim(pub_ksmc);
  QRLabel4.Caption:='主管医生:'+  trim(sp_sybr.FieldByName('zgysmc').AsString)+
  '('+ trim(sp_sybr.FieldByName('zgys').AsString)+')';
  p_zxsj.Caption:='执行日期:'+trim(formatdatetime('yyyy-MM-dd',dt_zxsj.DateTime));
  QRLabel2.Caption:='打印时间：'+ trim(formatdatetime('yyyy-MM-dd hh:mm',Frm_func.curr_date));
    if pub_yydm='0234' then
  begin
    QuickRep1.Page.LeftMargin:=2;
    p_zyh.Left:=p_zyh.Left+12;
    p_bch.Left:=p_bch.Left+12;
    QRShape1.Left:=QRShape1.Left+12;
    p_nl.Left:=p_nl.Left+12;
    p_xm.Left:=p_xm.Left+12;
    p_ks.Left:=p_ks.Left+12;
     p_zxsj.Left:=p_zxsj.Left+12;
     QRLabel2.Left:=QRLabel2.Left+12;
     QRLabel4.Left:=QRLabel4.Left+12;
     QRDBText1.Left:=QRDBText1.Left+12;
     QRDBText2.Left:=QRDBText2.Left+12;
     QRgrImage1.Left:=QRgrImage1.Left+12;
  end;
  QuickRep1.Print;
end;

procedure Tfrm_hsdyzxd.zxddy;
begin
  v_PrinterIndex_old := Printer.PrinterIndex;
  v_PrinterIndex_new := func_GetPrinterIndex( 5, v_IsPrinterJoin );
  if v_IsPrinterJoin=True then
  if  frm_hsdyzxd.QuickRep1.PrinterSettings.PrinterIndex <> v_PrinterIndex_new then
  begin
    frm_hsdyzxd.QuickRep1.PrinterSettings.PrinterIndex := v_PrinterIndex_new;
  end;
  if PageControl1.ActivePageIndex=1 then
    QRLabel3.Caption:=pub_yymc+'治疗单'
  else
    QRLabel3.Caption:=pub_yymc+'口服药单';
  p_zyh.Caption:='住院号:'+trim(sp_sybr.FieldByName('tmh').AsString);
  p_nl.Caption:='年龄:'+trim(sp_sybr.FieldByName('brnl').AsString);
  p_xm.Caption:='姓名:'+trim(sp_sybr.FieldByName('brxm').AsString)+'('+
  trim(sp_sybr.FieldByName('brxb').AsString)+')';
  p_bch.Caption:='病床号:'+trim(sp_sybr.FieldByName('bch').AsString);
  p_ks.Caption:='科室:'+trim(pub_ksmc);
  QRLabel4.Caption:='主管医生:'+trim(sp_sybr.FieldByName('zgysmc').AsString)+
  '('+ trim(sp_sybr.FieldByName('zgys').AsString)+')';
  p_zxsj.Caption:='执行日期:'+trim(formatdatetime('yyyy-MM-dd',dt_zxsj.DateTime));
  QRLabel2.Caption:='打印时间：'+ trim(formatdatetime('yyyy-MM-dd hh:mm',Frm_func.curr_date));
    if pub_yydm='0234' then
  begin
    QuickRep1.Page.LeftMargin:=2;
    p_zyh.Left:=p_zyh.Left+12;
    p_bch.Left:=p_bch.Left+12;
    QRShape1.Left:=QRShape1.Left+12;
    p_nl.Left:=p_nl.Left+12;
    p_xm.Left:=p_xm.Left+12;
    p_ks.Left:=p_ks.Left+12;
     p_zxsj.Left:=p_zxsj.Left+12;
     QRLabel2.Left:=QRLabel2.Left+12;
     QRLabel4.Left:=QRLabel4.Left+12;
     QRDBText1.Left:=QRDBText1.Left+12;
     QRDBText2.Left:=QRDBText2.Left+12;
     QRgrImage1.Left:=QRgrImage1.Left+12;
  end;
  QuickRep1.Print;
end;


procedure Tfrm_hsdyzxd.zxddy_czks( var czks:string);
begin
  v_PrinterIndex_old := Printer.PrinterIndex;
  v_PrinterIndex_new := func_GetPrinterIndex( 5, v_IsPrinterJoin );
  if v_IsPrinterJoin=True then
  if  frm_hsdyzxd.QuickRep1.PrinterSettings.PrinterIndex <> v_PrinterIndex_new then
  begin
    frm_hsdyzxd.QuickRep1.PrinterSettings.PrinterIndex := v_PrinterIndex_new;
  end;
  if PageControl1.ActivePageIndex=1 then
    QRLabel3.Caption:=pub_yymc+'检查单'
  else
    QRLabel3.Caption:=pub_yymc+'口服药单';
  p_zyh.Caption:='住院号:'+trim(sp_sybr.FieldByName('tmh').AsString);
  p_nl.Caption:='年龄:'+trim(sp_sybr.FieldByName('brnl').AsString);
  p_xm.Caption:='姓名:'+trim(sp_sybr.FieldByName('brxm').AsString)+'('+
  trim(sp_sybr.FieldByName('brxb').AsString)+')';
  p_bch.Caption:='病床号:'+trim(sp_sybr.FieldByName('bch').AsString);
  p_ks.Caption:='科室:'+trim(pub_ksmc);
  QRLabel4.Caption:='主管医生:'+trim(sp_sybr.FieldByName('zgysmc').AsString)+
  '('+ trim(sp_sybr.FieldByName('zgys').AsString)+')';
  p_zxsj.Caption:='执行日期:'+trim(formatdatetime('yyyy-MM-dd',dt_zxsj.DateTime));
  QRLabel2.Caption:='检查科室：'+ Trim(czks);
    if pub_yydm='0234' then
  begin
    QuickRep1.Page.LeftMargin:=2;
    p_zyh.Left:=p_zyh.Left+12;
    p_bch.Left:=p_bch.Left+12;
    QRShape1.Left:=QRShape1.Left+12;
    p_nl.Left:=p_nl.Left+12;
    p_xm.Left:=p_xm.Left+12;
    p_ks.Left:=p_ks.Left+12;
     p_zxsj.Left:=p_zxsj.Left+12;
     QRLabel2.Left:=QRLabel2.Left+12;
     QRLabel4.Left:=QRLabel4.Left+12;
     QRDBText1.Left:=QRDBText1.Left+12;
     QRDBText2.Left:=QRDBText2.Left+12;
     QRgrImage1.Left:=QRgrImage1.Left+12;
  end;
  QuickRep1.Print;
end;

procedure Tfrm_hsdyzxd.RevertPrinter;
begin
//  //还原原来默认打印机
//  try
//    if v_IsPrinterJoin then
//      Proc_ChangePrinter( v_PrinterIndex_old, True );
//  except
//  end;
end;
procedure Tfrm_hsdyzxd.TabSheet1Show(Sender: TObject);
begin
  Application.OnMessage := OnMouseWheel_yzzx;
  DBGridEh2.Columns[1].Width := DBGridEh2.Columns[1].Width + 1;
  DBGridEh2.Columns[1].Width := DBGridEh2.Columns[1].Width - 1;
end;

procedure Tfrm_hsdyzxd.TabSheet2Show(Sender: TObject);
begin
  Application.OnMessage := OnMouseWheel_zsd;
  sp_dryz_zsd.close;
  sp_dryz_zsd.Parameters.Refresh;
  sp_dryz_zsd.Parameters.ParamByName( '@bqdm' ).value := pub_bqdm;
  sp_dryz_zsd.Parameters.ParamByName( '@zyh' ).value := '';
  sp_dryz_zsd.Parameters.ParamByName( '@bz' ).value := '全部';
  sp_dryz_zsd.Parameters.ParamByName( '@zxsj' ).value := formatdatetime( 'yyyymmdd', dT_zxsj.Date );
  sp_dryz_zsd.Open;
  sp_dryz_zsd.Filtered := false;
  if trim(zyh_zfc)<>'' then
  begin
    sp_dryz_zsd.filter:=Copy(zyh_zfc,5,Length(zyh_zfc)-4);
    sp_dryz_zsd.Filtered := true;
  end
  else
  begin
    sp_dryz_zsd.filter:='zyh=''12121212121212''';
    sp_dryz_zsd.Filtered := true;
  end;
  DBGridEh4.Columns[1].Width := DBGridEh4.Columns[1].Width + 1;
  DBGridEh4.Columns[1].Width := DBGridEh4.Columns[1].Width - 1;
end;

procedure Tfrm_hsdyzxd.TabSheet3Show(Sender: TObject);
begin
  Application.OnMessage := OnMouseWheel_kfy;
  sp_dryz_kfyd.close;
  sp_dryz_kfyd.Parameters.Refresh;
  sp_dryz_kfyd.Parameters.ParamByName( '@bqdm' ).value := pub_bqdm;
  sp_dryz_kfyd.Parameters.ParamByName( '@zyh' ).value := '';
  sp_dryz_kfyd.Parameters.ParamByName( '@bz' ).value := '全部';
  sp_dryz_kfyd.Parameters.ParamByName( '@zxsj' ).value := formatdatetime( 'yyyymmdd', dT_zxsj.Date );
  sp_dryz_kfyd.Open;
  sp_dryz_kfyd.Filtered := false;
  if trim(zyh_zfc)<>'' then
  begin
    sp_dryz_kfyd.filter:=Copy(zyh_zfc,5,Length(zyh_zfc)-4);
    sp_dryz_kfyd.Filtered := true;
  end
  else
  begin
    sp_dryz_kfyd.filter:='zyh=''12121212121212''';
    sp_dryz_kfyd.Filtered := true;
  end;
  DBGridEh6.Columns[1].Width := DBGridEh6.Columns[1].Width + 1;
  DBGridEh6.Columns[1].Width := DBGridEh6.Columns[1].Width - 1;
end;

procedure Tfrm_hsdyzxd.TabSheet4Show(Sender: TObject);
begin
  Application.OnMessage := OnMouseWheel_zld;
  sp_dryz_zld.close;
  sp_dryz_zld.Parameters.Refresh;
  sp_dryz_zld.Parameters.ParamByName( '@bqdm' ).value := pub_bqdm;
  sp_dryz_zld.Parameters.ParamByName( '@zyh' ).value := '';
  sp_dryz_zld.Parameters.ParamByName( '@bz' ).value := '全部';
  sp_dryz_zld.Parameters.ParamByName( '@zxsj' ).value := formatdatetime( 'yyyymmdd', dT_zxsj.Date );
  sp_dryz_zld.Open;
  sp_dryz_zld.Filtered := false;
  if trim(zyh_zfc)<>'' then
  begin
    sp_dryz_zld.filter:=Copy(zyh_zfc,5,Length(zyh_zfc)-4);
    sp_dryz_zld.Filtered := true;
  end;
//  DBGridEh8.Columns[1].Width := DBGridEh8.Columns[1].Width + 1;
//  DBGridEh8.Columns[1].Width := DBGridEh8.Columns[1].Width - 1;
end;

end.
