unit p_hsgzltj;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, StdCtrls, QuickRpt, QRCtrls, ComCtrls, ExtCtrls,
  DB, ADODB, Buttons, cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, DBGridEhGrouping;

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
  Tfrm_hsgzltj = class(TForm)
    GroupBox2: TGroupBox;
    Label2: TLabel;
    ScrollBox1: TScrollBox;
    DBGridEh2: TDBGridEh;
    DBGridEh1: TDBGridEh;
    ds_sybr: TDataSource;
    ds_dryz: TDataSource;
    sp_dryz: TADOStoredProc;
    sp_sybr: TADOStoredProc;
    edtUID: TEdit;
    Select: TButton;
    dt_zxsj: TDateTimePicker;
    lbl_zyh: TLabel;
    pnl1: TPanel;
    pnl2: TPanel;
    GroupBox1: TGroupBox;
    cbbUsage: TComboBox;
    Label4: TLabel;
    cbbMethod: TComboBox;
    Label3: TLabel;
    Label1: TLabel;
    edtBedNo: TEdit;
    CheckBox1: TCheckBox;
    Reset: TButton;
    AdditionalRecording: TPanel;
    sp_yzsj: TADOStoredProc;
    qryUser: TADOQuery;
    grp1: TGroupBox;
    btnOK: TButton;
    cbbUName: TComboBox;
    Edit1: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    btnCancel: TButton;
    dtWriteUP: TcxDateEdit;
    procedure FormShow(Sender: TObject);
    procedure DBGridEh1CellClick(Column: TColumnEh);
    procedure SelectClick(Sender: TObject);
    procedure DBGridEh2DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure edtUIDEnter(Sender: TObject);
    procedure edtUIDKeyPress(Sender: TObject; var Key: Char);
    procedure dt_zxsjChange(Sender: TObject);
    procedure DBGridEh2ColWidthsChanged(Sender: TObject);
    procedure OnMouseWheel_hsgzltj( var Msg: TMsg; var Handled: Boolean );
    procedure edtBedNoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure CheckBox1Click(Sender: TObject);
    procedure ResetClick(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure cbbUNameChange(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnCancelClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure DBGridEh2DblClick(Sender: TObject);
  private
    { Private declarations }
    procedure TriggerColorDisplay; //dbgrideh bug 长度改变 才会显示颜色
    function GetFilter():string;
  public
    rectno: integer;
    procedure createrect( var myrect1: TTmyrect; dataset_rect: Tcustomadodataset; grid_yzlr1: Tdbgrideh; x1, x2, x3: integer );
    { Public declarations }
  end;

var
  frm_hsgzltj: Tfrm_hsgzltj;
  myrect_cx, myrect_zx_cq, myrect_zx_ls: TTmyrect;
  zyh:string;

  function findinarray( myrect: TTmyrect; zd: string ): integer;
  procedure initarray( myrect: TTmyrect );

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

function Tfrm_hsgzltj.GetFilter():string;
begin
  Result := '';
  if filterAll <> Trim(cbbUsage.Text) then
  begin
    Result := ' ypyf=''' + Trim(cbbUsage.Text) + '''';
  end;

  if filterAll <> Trim(cbbMethod.Text) then
  begin
    if '' = Result then
      Result := ' yytj=''' + Trim(cbbMethod.Text) + ''''
    else
      Result := Result + ' and yytj=''' + Trim(cbbMethod.Text) + '''';
  end;

  if '' <> Trim(edtBedNo.Text) then
  begin
    if '' = Result then
      Result := ' bch=''' + Trim(edtBedNo.Text) + ''''
    else
      Result := Result + ' and bch=''' + Trim(edtBedNo.Text) + '''';
  end;
  
  if '' <> Trim(edtUID.Text) then
  begin
    if '' = Result then
      Result := ' zxry=''' + Trim(edtUID.Text) + ''''
    else
      Result := Result + ' and zxry=''' + Trim(edtUID.Text) + '''';
  end;
end;

procedure Tfrm_hsgzltj.TriggerColorDisplay;
begin
  DBGridEh2.Columns[1].Width := DBGridEh2.Columns[1].Width + 2;
  DBGridEh2.Columns[1].Width := DBGridEh2.Columns[1].Width - 2;
end;

procedure Tfrm_hsgzltj.SelectClick(Sender: TObject);
begin
  sp_dryz.Filtered := False;
  sp_dryz.Filter   := GetFilter;
  sp_dryz.Filtered := True;

  if sp_dryz.Active then
    createrect( myrect_cx, sp_dryz, dbgrideh2, 10, 11, 13 );
  sp_dryz.First;
  ScrollBox1.VertScrollBar.Position := 0;
end;

procedure Tfrm_hsgzltj.DBGridEh1CellClick(Column: TColumnEh);
begin
  edtBedNo.Text := sp_sybr['bch'];
//  if sp_dryz.Active then
//  begin
//    sp_dryz.Filtered := False;
//    sp_dryz.Filter := GetFilter;
//    sp_dryz.Filtered := True;
//  end;
  sp_dryz.Close;
  sp_dryz.Parameters.ParamByName('@ksdm').Value := pub_ksdm;
  sp_dryz.Parameters.ParamByName( '@zyh' ).value := Trim(sp_sybr.FieldByName('zyh').AsString);
  sp_dryz.Parameters.ParamByName( '@zxsj' ).value := formatdatetime( 'yyyymmdd', dT_zxsj.Date );
  sp_dryz.Open;
  if CheckBox1.Checked then
  begin
    CheckBox1.Checked := False;
  end;
  TriggerColorDisplay;
end;

procedure Tfrm_hsgzltj.DBGridEh2ColWidthsChanged(Sender: TObject);
begin
   if sp_dryz.Active then
  begin
    if sp_dryz.RecordCount < 300 then
    begin
      createrect( myrect_cx, sp_dryz, dbgrideh2, 10, 11, 13 );
    end;
  end;
end;

procedure Tfrm_hsgzltj.DBGridEh2DblClick(Sender: TObject);
begin
  if '' = Trim(sp_dryz['zxry']) then
  begin
    AdditionalRecording.Visible := True;
    dtWriteUP.Date := Frm_func.curr_date;
    AdditionalRecording.BringToFront;
    Edit1.Text := '';
    Edit1.SetFocus;
    cbbUName.Items.Clear;
    cbbUName.ItemIndex := 0;
  end;
end;

procedure Tfrm_hsgzltj.DBGridEh2DrawColumnCell(Sender: TObject;
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
      myrect_cx[i].top + round( myrect_cx[i].height * ( ( myrect_cx[i].sl - 0.5 ) / 2 ) ),
      myrect_cx[i].tj + #13 + myrect_cx[i].yf );
  end;
  ( Sender as TDbGridEh ).DefaultDrawColumnCell( Rect, DataCol, Column, State );
end;

procedure Tfrm_hsgzltj.dt_zxsjChange(Sender: TObject);
begin
  sp_sybr.close;
  sp_sybr.Parameters.ParamByName( '@bqdm' ).value := pub_bqdm;
  sp_sybr.Parameters.ParamByName( '@zyh' ).value := '';
  sp_sybr.Parameters.ParamByName( '@zxsj' ).value := formatdatetime( 'yyyymmdd', dT_zxsj.Date );
  sp_sybr.Open;

  sp_dryz.close;
  sp_dryz.Parameters.ParamByName( '@ksdm' ).value := pub_ksdm;
  sp_dryz.Parameters.ParamByName( '@zyh' ).value  := '';
  sp_dryz.Parameters.ParamByName( '@zxsj' ).value := formatdatetime( 'yyyymmdd', dT_zxsj.Date );
  sp_dryz.Open;
end;

procedure Tfrm_hsgzltj.Edit1Exit(Sender: TObject);
begin
  if '' <> Trim(Edit1.Text) then
  begin
    cbbUName.Items.Clear;
    qryUser.Close;
    qryUser.SQL.Clear;
    qryUser.SQL.Text := 'SELECT t.dm,t.mc FROM sys_czy t WHERE t.dm+t.mc'
        +' LIKE ''%' + Trim(Edit1.Text) + '%'' AND sybz=1';
    qryUser.Open;
    if 0 < qryUser.RecordCount then
    begin
      qryUser.First;
      while not qryUser.Eof do
      begin
         cbbUName.Items.Add(Trim(qryUser['dm']) + '  ' + Trim(qryUser['mc']));
         qryUser.Next;
      end;
      cbbUName.ItemIndex := 0;
    end;
  end;
end;

procedure Tfrm_hsgzltj.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if VK_RETURN = key then
    Edit1Exit(Self);
end;

procedure Tfrm_hsgzltj.edtBedNoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (VK_RETURN = Key) and ('' <> Trim(edtBedNo.Text)) then
  begin
    sp_dryz.Filtered := False;
    sp_dryz.Filter   := ' bch = ''' + Trim(edtBedNo.Text) + '''';
    sp_dryz.Filtered := True;
    if CheckBox1.Checked then    
      CheckBox1.Checked := False;
    TriggerColorDisplay;
    ScrollBox1.VertScrollBar.Position := 0;
  end;
end;

procedure Tfrm_hsgzltj.edtUIDEnter(Sender: TObject);
begin
  edtUID.Color := $00E2BC6D;
end;

procedure Tfrm_hsgzltj.edtUIDKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    sp_dryz.Filtered := False;
    sp_dryz.Filter   := ' zxry=''' + Trim(edtUID.Text) + '''';
    sp_dryz.Filtered := True;
    TriggerColorDisplay;
    ScrollBox1.VertScrollBar.Position := 0;
  end
//  else if not (Key in ['0','1','2','3','4','5','6','7','8','9',#8]) then
//  begin
//    Application.MessageBox('必须输入数字', '提示', MB_OK + MB_ICONINFORMATION);
//  end;
end;

procedure Tfrm_hsgzltj.btnCancelClick(Sender: TObject);
begin
  Edit1.Text := '';
  cbbUName.Items.Clear;
  qryUser.Close;
  AdditionalRecording.Visible := False;
end;

procedure Tfrm_hsgzltj.btnOKClick(Sender: TObject);
var
  sqlstr: string;
  fzph: string;
begin
  if '' = Trim(sp_dryz['fzph']) then
  begin
    sqlstr := 'INSERT INTO zybl_zyyz_yzzxqd_mx_bf (zyh, yzid,zxrq,zxry,zxsm,zxsj,fzph,zxfs)' +
      'VALUES(''' + Trim(sp_dryz['zyh'])  + ''',''' +
                    Trim(sp_dryz['yzid']) + ''',''' +
                    FormatDateTime('yyyymmdd',dtWriteUP.Date) + ''',''' +
                    Trim(Edit1.Text) + ''','''',''' +
                    FormatDateTime('yyyy-mm-dd HH:mm:ss',dtWriteUP.Date) +
                    ''','''','+'''手动执行'')';
    DM_data.qry_pub.Close;
    DM_data.qry_pub.SQL.Text := sqlstr;
    DM_data.qry_pub.ExecSQL;
  end
  else
  begin
    fzph := Trim(sp_dryz['fzph']);
    sp_dryz.Filtered := False;
    sp_dryz.Filter   := ' fzph = ''' + fzph + '''';
    sp_dryz.Filtered := True;

    sp_dryz.First;
    while not sp_dryz.Eof do
    begin
      sqlstr := 'INSERT INTO zybl_zyyz_yzzxqd_mx_bf (zyh, yzid,zxrq,zxry,zxsm,zxsj,fzph,zxfs)' +
        'VALUES(''' + Trim(sp_dryz['zyh'])  + ''',''' +
                      Trim(sp_dryz['yzid']) + ''',''' +
                      FormatDateTime('yyyymmdd',dtWriteUP.Date) + ''',''' +
                      Trim(Edit1.Text) + ''','''',''' +
                      FormatDateTime('yyyy-mm-dd HH:mm:ss',dtWriteUP.Date) +  ''','''+
                      fzph + ''',''手动执行'')';
      DM_data.qry_pub.Close;
      DM_data.qry_pub.SQL.Text := sqlstr;
      DM_data.qry_pub.ExecSQL;

      sp_dryz.Next;
    end;
  end;
  AdditionalRecording.Visible := False;
  sp_dryz.Close;
  sp_dryz.Parameters.ParamByName('@ksdm').Value := pub_ksdm;
  sp_dryz.Parameters.ParamByName( '@zyh' ).value := '';
  sp_dryz.Parameters.ParamByName( '@zxsj' ).value := formatdatetime( 'yyyymmdd', dT_zxsj.Date );
  sp_dryz.Open;
  SelectClick(Self);
end;

procedure Tfrm_hsgzltj.cbbUNameChange(Sender: TObject);
begin
  Edit1.Text := Copy(cbbUName.Text, 1, 4);
end;

procedure Tfrm_hsgzltj.CheckBox1Click(Sender: TObject);
begin
  if CheckBox1.Checked then
  begin
    sp_dryz.Filtered := False;
    sp_dryz.Close;
    sp_dryz.Parameters.ParamByName('@ksdm').Value := pub_ksdm;
    sp_dryz.Parameters.ParamByName( '@zyh' ).value := '';
    sp_dryz.Parameters.ParamByName( '@zxsj' ).value := formatdatetime( 'yyyymmdd', dT_zxsj.Date );
    sp_dryz.Open;
  end else
  begin
    sp_dryz.Filtered := False;
  end;
end;

procedure Tfrm_hsgzltj.createrect( var myrect1: TTmyrect; dataset_rect: Tcustomadodataset; grid_yzlr1: Tdbgrideh; x1, x2, x3: integer );
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
    myrect1[rectno].Gbottom := grid_yzlr1.CellRect( x1, i ).bottom;
    //        myrect_cx[rectno].sl:=myrect_cx[rectno].sl+1;
    yzph := '';
  end;
  dataset_rect.EnableControls;

end;

procedure Tfrm_hsgzltj.OnMouseWheel_hsgzltj( var Msg: TMsg; var Handled: Boolean );
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

procedure Tfrm_hsgzltj.ResetClick(Sender: TObject);
begin
  cbbUsage.ItemIndex  := 0;
  cbbMethod.ItemIndex := 0;
  edtBedNo.Text := '';
  edtUID.Text   := '';
  CheckBox1.Checked := True;
  SelectClick(Self);
end;

procedure Tfrm_hsgzltj.FormShow(Sender: TObject);
begin
  Application.OnMessage := OnMouseWheel_hsgzltj;
  CheckBox1.Checked:=True;

  cbbUsage.Items.Clear;
  cbbUsage.Items.Add('全部');
  DM_data.qry_pub.close;
  DM_data.qry_pub.SQL.Text:='select * from sys_ypyf order by id';
  DM_data.qry_pub.open;
  DM_data.qry_pub.First;
  while not DM_data.qry_pub.eof do
  begin
    cbbUsage.Items.Add(Trim(DM_data.qry_pub.FieldByName('mc').asstring));
    DM_data.qry_pub.Next;
  end;

  cbbMethod.Items.Clear;
  cbbMethod.Items.Add('全部');
  DM_data.qry_pub.close;
  DM_data.qry_pub.SQL.Text:='select * from sys_gytj order by id';
  DM_data.qry_pub.open;
  DM_data.qry_pub.First;
  while not DM_data.qry_pub.eof do
  begin
    cbbMethod.Items.Add(Trim(DM_data.qry_pub.FieldByName('mc').asstring));
    DM_data.qry_pub.Next;
  end;

  cbbUsage.ItemIndex:=0;
  cbbMethod.ItemIndex:=0;

  dt_zxsj.DateTime := frm_func.curr_date;
  sp_yzsj.Close;
  sp_yzsj.Parameters.ParamByName( '@scyzsj' ).Value := dt_zxsj.DateTime;
  sp_yzsj.ExecProc;
  dt_zxsj.DateTime := sp_yzsj.Parameters.ParamByName( '@scyzsj' ).Value;
  sp_sybr.close;
  sp_sybr.Parameters.ParamByName( '@bqdm' ).value := pub_bqdm;
  sp_sybr.Parameters.ParamByName( '@zyh' ).value := '';
  sp_sybr.Parameters.ParamByName( '@zxsj' ).value := formatdatetime( 'yyyymmdd', dT_zxsj.Date );
  sp_sybr.Open;

  sp_dryz.Close;
  sp_dryz.Parameters.ParamByName('@ksdm').Value := pub_ksdm;
  sp_dryz.Parameters.ParamByName( '@zyh' ).value := Trim(sp_sybr.FieldByName('zyh').AsString);
  sp_dryz.Parameters.ParamByName( '@zxsj' ).value := formatdatetime( 'yyyymmdd', dT_zxsj.Date );
  sp_dryz.Open;

  TriggerColorDisplay;
end;

end.
