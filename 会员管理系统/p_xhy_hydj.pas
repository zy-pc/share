unit p_xhy_hydj;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Menus, cxLookAndFeelPainters, cxButtons, DB,
  ADODB, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGrid, Mask, DBCtrls,
  cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxDBEdit,
  SXAgeBox, ComCtrls, Grids, DBGrids;

type
  TStringList = class( Classes.TStringList )
  private
    function GetName( const value: string ): string;
  public
    property Names2[const value: string]: string read GetName;
  end;

type
  Tfrm_xhy_hydj = class( TForm )
    pnl1: TPanel;
    pnl2: TPanel;
    pnl3: TPanel;
    lb_briefing: TLabel;
    cxb_close: TcxButton;
    pnl4: TPanel;
    lb_hykh: TLabel;
    e_tmh: TEdit;
    qry_hyxx: TADOQuery;
    ds_hyxx: TDataSource;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxgrdbclmnGrid1DBTableView1Column1: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column2: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    GridTableViewStyleSheetUserFormat3: TcxGridTableViewStyleSheet;
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
    cxStyle13: TcxStyle;
    pnl5: TPanel;
    dbe_brxm: TDBEdit;
    dbe_sfzhm: TDBEdit;
    cxbut_insert: TcxButton;
    cxbut_Exit: TcxButton;
    cxbut_post: TcxButton;
    cxbut_close: TcxButton;
    qry_pub: TADOQuery;
    grp_btx: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    Label10: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    dbe_tmh: TDBEdit;
    cbb_hyxb: TComboBox;
    box_nl: TSXAgeBox;
    cbb_hylb: TComboBox;
    grp_xztx: TGroupBox;
    Label5: TLabel;
    Label15: TLabel;
    Label6: TLabel;
    Label16: TLabel;
    Label24: TLabel;
    Label20: TLabel;
    Label12: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    cbb_hysf: TComboBox;
    dbe_brdh: TDBEdit;
    cbb_hyjg: TComboBox;
    dbe_dbr: TDBEdit;
    cbb_hyxx: TComboBox;
    dbe_baha: TDBEdit;
    dbe_bryb: TDBEdit;
    cbb_hymz: TComboBox;
    cbb_hyzy: TComboBox;
    dbe_sbkh: TDBEdit;
    cbb_sblb: TComboBox;
    dbe_hydz: TDBEdit;
    dbe_dbrdz: TDBEdit;
    dbmmo_brgmyw: TDBMemo;
    dbmmo_brjwbs: TDBMemo;
    dbmmo_brjzs: TDBMemo;
    dtp_csrq: TDateTimePicker;
    cxgrdbclmnGrid1DBTableView1Column3: TcxGridDBColumn;
    procedure cxb_closeClick( Sender: TObject );
    procedure FormShow( Sender: TObject );
    procedure dtp_csrqExit( Sender: TObject );
    procedure box_nlExit( Sender: TObject );
    procedure cxbut_postClick( Sender: TObject );
    procedure qry_hyxxAfterScroll( DataSet: TDataSet );
    procedure cxbut_insertClick( Sender: TObject );
    procedure cxbut_ExitClick( Sender: TObject );
    procedure cxbut_closeClick( Sender: TObject );
    procedure dbe_tmhExit( Sender: TObject );
    procedure dbe_tmhKeyDown( Sender: TObject; var Key: Word;
      Shift: TShiftState );
    procedure dbe_brxmExit( Sender: TObject );
    procedure dbe_brxmKeyDown( Sender: TObject; var Key: Word;
      Shift: TShiftState );
    procedure cbb_hyxbKeyDown( Sender: TObject; var Key: Word;
      Shift: TShiftState );
    procedure box_nlKeyDown( Sender: TObject; var Key: Word; Shift: TShiftState );
    procedure cbb_hylbKeyDown( Sender: TObject; var Key: Word;
      Shift: TShiftState );
    procedure dbe_sfzhmKeyDown( Sender: TObject; var Key: Word;
      Shift: TShiftState );
    procedure dtp_csrqKeyDown( Sender: TObject; var Key: Word;
      Shift: TShiftState );
    procedure cbb_hysfKeyDown( Sender: TObject; var Key: Word;
      Shift: TShiftState );
    procedure dbe_brdhKeyDown( Sender: TObject; var Key: Word;
      Shift: TShiftState );
    procedure cbb_hyjgKeyDown( Sender: TObject; var Key: Word;
      Shift: TShiftState );
    procedure dbe_dbrKeyDown( Sender: TObject; var Key: Word;
      Shift: TShiftState );
    procedure cbb_hymzKeyDown( Sender: TObject; var Key: Word;
      Shift: TShiftState );
    procedure dbe_brybKeyDown( Sender: TObject; var Key: Word;
      Shift: TShiftState );
    procedure dbe_bahaKeyDown( Sender: TObject; var Key: Word;
      Shift: TShiftState );
    procedure cbb_hyxxKeyDown( Sender: TObject; var Key: Word;
      Shift: TShiftState );
    procedure cbb_hyzyKeyDown( Sender: TObject; var Key: Word;
      Shift: TShiftState );
    procedure dbe_sbkhKeyDown( Sender: TObject; var Key: Word;
      Shift: TShiftState );
    procedure cbb_sblbKeyDown( Sender: TObject; var Key: Word;
      Shift: TShiftState );
    procedure dbe_hydzKeyDown( Sender: TObject; var Key: Word;
      Shift: TShiftState );
    procedure dbe_dbrdzKeyDown( Sender: TObject; var Key: Word;
      Shift: TShiftState );
    procedure dbmmo_brgmywKeyDown( Sender: TObject; var Key: Word;
      Shift: TShiftState );
    procedure dbmmo_brjwbsKeyDown( Sender: TObject; var Key: Word;
      Shift: TShiftState );
    procedure e_tmhKeyDown( Sender: TObject; var Key: Word; Shift: TShiftState );
    procedure dbmmo_brjzsKeyDown( Sender: TObject; var Key: Word;
      Shift: TShiftState );
    procedure cxGrid1DBTableView1CustomDrawCell( Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean );
  private
    priv_kzsx, priv_insert: Boolean;
    procedure show_xlksx;
    procedure insert_xj;
    procedure adoqry_open( qry: TADOQuery; symc: string );
    procedure hydj_xxdq;
    { Private declarations }
  public
    sblb: array of TStringList; //列表数组stringlist
    pub_tmh, pub_hyxm, pub_hymm: string; //条码号，会员姓名
    { Public declarations }
  end;

var
  frm_xhy_hydj: Tfrm_xhy_hydj;

implementation
uses
  p_dm, p_func, p_xhy_hymm;
{$R *.dfm}

function TStringList.GetName( const value: string ): string;
var
  P: Integer;
  S: string;
  i: Integer;
begin
  for i := 0 to GetCount - 1 do
  begin
    S := Get( i );
    P := AnsiPos( '=' + value, S );
    if ( P <> 0 ) and ( CompareStrings( Copy( S, P, MaxInt ), '=' + value ) = 0 ) then
    begin
      Result := Copy( S, 0, P - 1 );
      Exit;
    end;
  end;
  Result := '';
end;

procedure Tfrm_xhy_hydj.adoqry_open( qry: TADOQuery; symc: string );
begin
  try
    qry.Open;
  except on e: Exception do
    begin
      Application.MessageBox( PChar( '提示:' + symc + '错误！错误原因:' + e.Message ), '错误信息', MB_ICONHAND );
    end;
  end;
end;

procedure Tfrm_xhy_hydj.box_nlExit( Sender: TObject );
begin
  if Trim( box_nl.Text ) <> '' then
  begin
    if ( box_nl.Csrq > Frm_func.curr_date ) then
    begin
      Application.MessageBox( '请输入有效年龄', '系统提示:', MB_OK + MB_ICONEXCLAMATION );
      box_nl.SetFocus;
      Exit;
    end;
    dtp_csrq.DateTime := box_nl.Csrq;
  end
  else
  begin
    Application.MessageBox( '请输入必输项年龄', '系统提示:', MB_OK + MB_ICONEXCLAMATION );
    box_nl.SetFocus;
    Exit;
  end;
end;

procedure Tfrm_xhy_hydj.box_nlKeyDown( Sender: TObject; var Key: Word;
  Shift: TShiftState );
begin
  if key = 13 then
  begin
    cbb_hylb.SetFocus;
  end;
end;

procedure Tfrm_xhy_hydj.dbe_bahaKeyDown( Sender: TObject; var Key: Word;
  Shift: TShiftState );
begin
  if Key = 13 then
  begin
    cbb_hyxx.SetFocus;
  end;
end;

procedure Tfrm_xhy_hydj.dbe_brdhKeyDown( Sender: TObject; var Key: Word;
  Shift: TShiftState );
begin
  if Key = 13 then
  begin
    cbb_hyjg.SetFocus;
  end;
end;

procedure Tfrm_xhy_hydj.dbe_brxmExit( Sender: TObject );
begin
  if Trim( dbe_brxm.Text ) = '' then
  begin
    Application.MessageBox( '提示:会员姓名不能为空！', '提示', MB_ICONHAND );
    dbe_brxm.SetFocus;
  end;
end;

procedure Tfrm_xhy_hydj.dbe_brxmKeyDown( Sender: TObject; var Key: Word;
  Shift: TShiftState );
begin
  if Key = 13 then
  begin
    cbb_hyxb.SetFocus;
  end;
end;

procedure Tfrm_xhy_hydj.dbe_brybKeyDown( Sender: TObject; var Key: Word;
  Shift: TShiftState );
begin
  if Key = 13 then
  begin
    dbe_baha.SetFocus;
  end;
end;

procedure Tfrm_xhy_hydj.dbe_dbrdzKeyDown( Sender: TObject; var Key: Word;
  Shift: TShiftState );
begin
  if Key = 13 then
  begin
    dbmmo_brgmyw.SetFocus;
  end;
end;

procedure Tfrm_xhy_hydj.dbe_dbrKeyDown( Sender: TObject; var Key: Word;
  Shift: TShiftState );
begin
  if Key = 13 then
  begin
    cbb_hymz.SetFocus;
  end;
end;

procedure Tfrm_xhy_hydj.dbe_hydzKeyDown( Sender: TObject; var Key: Word;
  Shift: TShiftState );
begin
  if Key = 13 then
  begin
    dbe_dbrdz.SetFocus;
  end;
end;

procedure Tfrm_xhy_hydj.dbe_sbkhKeyDown( Sender: TObject; var Key: Word;
  Shift: TShiftState );
begin
  if Key = 13 then
  begin
    cbb_sblb.SetFocus;
  end;
end;

procedure Tfrm_xhy_hydj.dbe_sfzhmKeyDown( Sender: TObject; var Key: Word;
  Shift: TShiftState );
begin
  if key = 13 then
  begin
    dtp_csrq.SetFocus;
  end;
end;

procedure Tfrm_xhy_hydj.dbe_tmhExit( Sender: TObject );
begin
  DM_data.qry_pub.Close;
  DM_data.qry_pub.SQL.Text := 'select tmh from sys_kyh where tmh=:tmh';
  adoqry_open( DM_data.qry_pub, '查询操作员号是否重复' );
  if DM_data.qry_pub.RecordCount > 0 then
  begin
    Application.MessageBox( '提示:输入的会员卡号已经存在。请确认后在进行输入', '提示', MB_ICONHAND );
    e_tmh.SetFocus;
  end;
end;

procedure Tfrm_xhy_hydj.dbe_tmhKeyDown( Sender: TObject; var Key: Word;
  Shift: TShiftState );
begin
  if Key = 13 then
  begin
    dbe_brxm.SetFocus;
  end;
end;

procedure Tfrm_xhy_hydj.dbmmo_brgmywKeyDown( Sender: TObject; var Key: Word;
  Shift: TShiftState );
begin
  if Key = 13 then
  begin
    dbmmo_brjwbs.SetFocus;
  end;
end;

procedure Tfrm_xhy_hydj.dbmmo_brjwbsKeyDown( Sender: TObject; var Key: Word;
  Shift: TShiftState );
begin
  if Key = 13 then
  begin
    dbmmo_brjzs.SetFocus;
  end;
end;

procedure Tfrm_xhy_hydj.dbmmo_brjzsKeyDown( Sender: TObject; var Key: Word;
  Shift: TShiftState );
begin
  if key = 13 then
  begin
    cxbut_post.SetFocus;
  end;
end;

procedure Tfrm_xhy_hydj.dtp_csrqExit( Sender: TObject );
begin
  if dtp_csrq.Date > Frm_func.curr_date then
  begin
    Application.MessageBox( '请输入有效年龄', '系统提示:', MB_OK + MB_ICONEXCLAMATION );
    dtp_csrq.SetFocus;
    Exit;
  end;
  box_nl.Csrq := dtp_csrq.DateTime;
end;

procedure Tfrm_xhy_hydj.dtp_csrqKeyDown( Sender: TObject; var Key: Word;
  Shift: TShiftState );
begin
  if Key = 13 then
  begin
    cbb_hysf.SetFocus;
  end;
end;

procedure Tfrm_xhy_hydj.e_tmhKeyDown( Sender: TObject; var Key: Word;
  Shift: TShiftState );
begin
  if ( key = 13 ) and ( qry_hyxx.RecordCount > 0 ) and ( Trim( e_tmh.Text ) <> '' ) then
  begin
    qry_hyxx.Locate( 'tmh', Trim( e_tmh.Text ), [] );
  end;
end;

procedure Tfrm_xhy_hydj.cbb_hyjgKeyDown( Sender: TObject; var Key: Word;
  Shift: TShiftState );
begin
  if Key = 13 then
  begin
    dbe_dbr.SetFocus;
  end;
end;

procedure Tfrm_xhy_hydj.cbb_hylbKeyDown( Sender: TObject; var Key: Word;
  Shift: TShiftState );
begin
  if key = 13 then
  begin
    dbe_sfzhm.SetFocus;
  end;
end;

procedure Tfrm_xhy_hydj.cbb_hymzKeyDown( Sender: TObject; var Key: Word;
  Shift: TShiftState );
begin
  if Key = 13 then
  begin
    dbe_bryb.SetFocus;
  end;
end;

procedure Tfrm_xhy_hydj.cbb_hysfKeyDown( Sender: TObject; var Key: Word;
  Shift: TShiftState );
begin
  if Key = 13 then
  begin
    dbe_brdh.SetFocus;
  end;
end;

procedure Tfrm_xhy_hydj.cbb_hyxbKeyDown( Sender: TObject; var Key: Word;
  Shift: TShiftState );
begin
  if Key = 13 then
  begin
    box_nl.SetFocus;
  end;
end;

procedure Tfrm_xhy_hydj.cbb_hyxxKeyDown( Sender: TObject; var Key: Word;
  Shift: TShiftState );
begin
  if Key = 13 then
  begin
    cbb_hyzy.SetFocus;
  end;
end;

procedure Tfrm_xhy_hydj.cbb_hyzyKeyDown( Sender: TObject; var Key: Word;
  Shift: TShiftState );
begin
  if Key = 13 then
  begin
    dbe_sbkh.SetFocus;
  end;
end;

procedure Tfrm_xhy_hydj.cbb_sblbKeyDown( Sender: TObject; var Key: Word;
  Shift: TShiftState );
begin
  if Key = 13 then
  begin
    dbe_hydz.SetFocus;
  end;
end;

procedure Tfrm_xhy_hydj.cxbut_insertClick( Sender: TObject );
begin
  priv_insert := True;
  qry_hyxx.Append;
  grp_btx.Enabled := True;
  grp_xztx.Enabled := True;
  dbe_tmh.Enabled := True;
  insert_xj;
  dbe_tmh.SetFocus;
end;

procedure Tfrm_xhy_hydj.cxbut_ExitClick( Sender: TObject );
begin
  if qry_hyxx.Active and ( qry_hyxx.RecordCount > 0 ) then
  begin
    qry_hyxx.Edit;
    grp_btx.Enabled := True;
    grp_xztx.Enabled := True;
    dbe_tmh.Enabled := False;
    dbe_brxm.SetFocus;
  end
  else
  begin
    Application.MessageBox( '提示:未能查询到相关数据，无法进行修改操作', '提示', MB_OK );
  end;
end;

procedure Tfrm_xhy_hydj.cxbut_postClick( Sender: TObject );
begin
  if qry_hyxx.Active and ( qry_hyxx.State in [dsEdit, dsInsert] ) then
  begin
    try
      pub_tmh := qry_hyxx.FieldByName( 'tmh' ).AsString;
      pub_hyxm := qry_hyxx.FieldByName( 'brxm' ).AsString;
      if Trim( pub_tmh ) = '' then
      begin
        Application.MessageBox( '提示:会员卡号必须输入!', '提示', MB_ICONHAND );
        e_tmh.SetFocus;
        Exit;
      end;
      if Trim( pub_hyxm ) = '' then
      begin
        Application.MessageBox( '提示:会员姓名必须输入!', '提示', MB_ICONHAND );
        e_tmh.SetFocus;
        Exit;
      end;
      qry_hyxx.FieldByName( 'brxb' ).Value := cbb_hyxb.Text;
      qry_hyxx.FieldByName( 'csrq' ).Value := dtp_csrq.DateTime;
      qry_hyxx.FieldByName( 'brnl' ).Value := box_nl.Text;
      if qry_hyxx.FieldByName( 'sfzhm' ).IsNull then
      begin
        Application.MessageBox( '提示:身份证号码必须输入!', '提示', MB_ICONHAND );
        dbe_sfzhm.SetFocus;
        Exit;
      end;
      if sblb[0].Values[Trim( cbb_hyzy.Text )] <> '' then
      begin
        qry_hyxx.FieldByName( 'brzy' ).Value := Trim( cbb_hyzy.Text );
      end;
      if sblb[1].Values[Trim( cbb_hysf.Text )] <> '' then
      begin
        qry_hyxx.FieldByName( 'brsf' ).Value := sblb[1].Values[Trim( cbb_hysf.Text )];
      end;
      if sblb[2].Values[Trim( cbb_hyjg.Text )] <> '' then
      begin
        qry_hyxx.FieldByName( 'brjg' ).Value := sblb[2].Values[Trim( cbb_hyjg.Text )];
      end;
      if sblb[3].Values[Trim( cbb_hymz.Text )] <> '' then
      begin
        qry_hyxx.FieldByName( 'brmz' ).Value := sblb[3].Values[Trim( cbb_hymz.Text )];
      end;
      if sblb[4].Values[Trim( cbb_hylb.Text )] <> '' then
      begin
        qry_hyxx.FieldByName( 'fylb' ).Value := sblb[4].Values[Trim( cbb_hylb.Text )];
      end
      else
      begin
        Application.MessageBox( '提示:会员类别必须选择正确！', '提示', MB_ICONHAND );
        cbb_hylb.SetFocus;
        Exit;
      end;
      if sblb[5].Values[Trim( cbb_sblb.Text )] <> '' then
      begin
        qry_hyxx.FieldByName( 'sblb' ).Value := sblb[5].Values[Trim( cbb_sblb.Text )];
      end;
      if qry_hyxx.State = dsInsert then
      begin
        Application.CreateForm( Tfrm_xhy_hymm, frm_xhy_hymm );
        try
          frm_xhy_hymm.ShowModal;
        finally
          frm_xhy_hymm.Free;
        end;
        if pub_hymm <> '' then
        begin
          qry_hyxx.FieldByName( 'ma' ).Value := getmm( pub_hymm );
        end;
        qry_hyxx.FieldByName( 'jkrq' ).Value := Frm_func.curr_date;
        qry_hyxx.FieldByName( 'sybz' ).Value := 1;
      end;
      qry_hyxx.Post;
      qry_hyxx.UpdateBatch( );
      priv_insert := False;
      Application.MessageBox( '提示:该操作已保存！', '提示', MB_OK );
    except on e: Exception do
      begin
        Application.MessageBox( PChar( '提示:保存失败！失败原因:' + e.Message ), '提示', MB_ICONHAND );
      end;
    end;
  end;
end;

procedure Tfrm_xhy_hydj.cxbut_closeClick( Sender: TObject );
begin
  priv_kzsx := False;
  cxbut_insert.Enabled := True;
  cxbut_Exit.Enabled := True;
  qry_hyxx.Close;
  qry_hyxx.Open;
  if qry_hyxx.Active and ( qry_hyxx.RecordCount > 0 ) then
  begin
    hydj_xxdq;
  end;
  priv_kzsx := True;
end;

procedure Tfrm_xhy_hydj.cxb_closeClick( Sender: TObject );
begin
  Close;
end;

procedure Tfrm_xhy_hydj.cxGrid1DBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean );
begin
  if AViewInfo.RecordViewInfo.GridRecord.Values[2] <> null then
    if AViewInfo.RecordViewInfo.GridRecord.Values[2] then
      ACanvas.Canvas.Brush.Color := clRed;
end;

procedure Tfrm_xhy_hydj.FormShow( Sender: TObject );
begin
  setLength( sblb, 7 );
  sblb[0] := TStringList.Create; //职业
  sblb[1] := TStringList.Create; //省份
  sblb[2] := TStringList.Create; //籍贯
  sblb[3] := TStringList.Create; //民族
  sblb[4] := TStringList.Create; //会员种类
  sblb[5] := TStringList.Create; //社保类别
  sblb[6] := TStringList.Create; //会员血型
  priv_kzsx := False;
  priv_insert := False;
  show_xlksx; //下拉框刷新
  qry_hyxx.Close;
  qry_hyxx.Open;
  if qry_hyxx.Active and ( qry_hyxx.RecordCount > 0 ) then
  begin
    hydj_xxdq;
  end;
  priv_kzsx := True;
  e_tmh.SetFocus;
end;

procedure Tfrm_xhy_hydj.hydj_xxdq;
begin
  grp_btx.Enabled := False;
  grp_xztx.Enabled := False;
  box_nl.Csrq := qry_hyxx.FieldByName( 'csrq' ).AsDateTime;
  dtp_csrq.Date := qry_hyxx.FieldByName( 'csrq' ).AsDateTime;
  cbb_hyzy.Text := qry_hyxx.FieldByName( 'brzy' ).AsString;

  if not qry_hyxx.FieldByName( 'brxx' ).IsNull then
  begin
    cbb_hyxx.ItemIndex := StrToInt( sblb[6].Values[Trim( qry_hyxx.FieldByName( 'brxx' ).AsString )] );
  end
  else
  begin
    cbb_hyxx.ItemIndex := StrToInt( sblb[6].Values['其他'] );
  end;
  cbb_hysf.Text := sblb[1].Names2[Trim( qry_hyxx.FieldByName( 'brsf' ).AsString )];
  cbb_hyjg.Text := sblb[2].Names2[Trim( qry_hyxx.FieldByName( 'brjg' ).AsString )];
  cbb_hymz.Text := sblb[3].Names2[Trim( qry_hyxx.FieldByName( 'brmz' ).AsString )];
  cbb_hylb.Text := sblb[4].Names2[Trim( qry_hyxx.FieldByName( 'fylb' ).AsString )];
  cbb_sblb.Text := sblb[5].Names2[Trim( qry_hyxx.FieldByName( 'sblb' ).AsString )];
end;

procedure Tfrm_xhy_hydj.insert_xj;
begin
  box_nl.Text := '0';
  dtp_csrq.DateTime := Now;
  cbb_hyzy.Text := '';
  cbb_hysf.Text := '';
  cbb_hyjg.Text := '';
  cbb_hymz.Text := '';
  cbb_hylb.Text := '';
  cbb_sblb.Text := '';
  cbb_hyxx.ItemIndex := StrToInt( sblb[6].Values['其他'] );
end;

procedure Tfrm_xhy_hydj.qry_hyxxAfterScroll( DataSet: TDataSet );
begin
  if priv_kzsx and ( not priv_insert ) then
  begin
    if qry_hyxx.Active then
    begin
      e_tmh.Enabled := True;
      dbe_tmh.Enabled := False;
      hydj_xxdq;
    end;
  end;
  priv_insert := False;
end;

procedure Tfrm_xhy_hydj.show_xlksx;
begin
  //加入会员职业选择
  DM_data.qry_pub.Close;
  DM_data.qry_pub.SQL.Text := 'select dm,sm from zysf_brzy order by dm';
  adoqry_open( DM_data.qry_pub, '职业刷新' );
  if DM_data.qry_pub.RecordCount > 0 then
  begin

    while not DM_data.qry_pub.eof do
    begin
      cbb_hyzy.items.Add( trim( DM_data.qry_pub.FieldByName( 'sm' ).AsString ) );
      sblb[0].Add( Format( '%s=%s', [trim( DM_data.qry_pub.FieldByName( 'sm' ).AsString ),
        trim( DM_data.qry_pub.FieldByName( 'dm' ).AsString )] ) ); //获取代码和名称保存进stringlist数组
      DM_data.qry_pub.next;
    end;
    cbb_hyzy.ItemIndex := 0;
  end;
  //加入会员所在省份
  DM_data.qry_pub.Close;
  DM_data.qry_pub.SQL.Text := 'select dm,mc from sys_sf order by sypl';
  adoqry_open( DM_data.qry_pub, '省份刷新' );
  if DM_data.qry_pub.RecordCount > 0 then
  begin
    while not DM_data.qry_pub.eof do
    begin
      cbb_hysf.items.Add( trim( DM_data.qry_pub.FieldByName( 'mc' ).AsString ) );
      sblb[1].Add( Format( '%s=%s', [trim( DM_data.qry_pub.FieldByName( 'mc' ).AsString ),
        trim( DM_data.qry_pub.FieldByName( 'dm' ).AsString )] ) );
      DM_data.qry_pub.next;
    end;
    cbb_hysf.ItemIndex := 0;
  end;
  //加入会员籍贯
  DM_data.qry_pub.Close;
  DM_data.qry_pub.SQL.Text := 'select dm,mc from sys_jg order by sypl';
  adoqry_open( DM_data.qry_pub, '籍贯刷新' );
  if DM_data.qry_pub.RecordCount > 0 then
  begin
    while not DM_data.qry_pub.eof do
    begin
      cbb_hyjg.items.Add( trim( DM_data.qry_pub.FieldByName( 'mc' ).AsString ) );
      sblb[2].Add( Format( '%s=%s', [trim( DM_data.qry_pub.FieldByName( 'mc' ).AsString ),
        trim( DM_data.qry_pub.FieldByName( 'dm' ).AsString )] ) );
      DM_data.qry_pub.next;
    end;
    cbb_hyjg.ItemIndex := 0;
  end;
  //加入会员民族
  DM_data.qry_pub.Close;
  DM_data.qry_pub.SQL.Text := 'select dm,mc from sys_mz order by sypl';
  adoqry_open( DM_data.qry_pub, '民族刷新' );
  if DM_data.qry_pub.RecordCount > 0 then
  begin
    while not DM_data.qry_pub.eof do
    begin
      cbb_hymz.items.Add( trim( DM_data.qry_pub.FieldByName( 'mc' ).AsString ) );
      sblb[3].Add( Format( '%s=%s', [trim( DM_data.qry_pub.FieldByName( 'mc' ).AsString ),
        trim( DM_data.qry_pub.FieldByName( 'dm' ).AsString )] ) );
      DM_data.qry_pub.next;
    end;
    cbb_hymz.ItemIndex := 0;
  end;
  //加入会员种类
  DM_data.qry_pub.Close;
  DM_data.qry_pub.SQL.Text := 'select dm,mc from sys_fylb where len(mzfyblmc)>0 order by dm';
  adoqry_open( DM_data.qry_pub, '会员卡种类刷新' );
  if DM_data.qry_pub.RecordCount > 0 then
  begin
    while not DM_data.qry_pub.eof do
    begin
      cbb_hylb.items.Add( trim( DM_data.qry_pub.FieldByName( 'mc' ).AsString ) );
      sblb[4].Add( Format( '%s=%s', [trim( DM_data.qry_pub.FieldByName( 'mc' ).AsString ),
        trim( DM_data.qry_pub.FieldByName( 'dm' ).AsString )] ) );
      DM_data.qry_pub.next;
    end;
    cbb_hylb.ItemIndex := 0;
  end;
  //加入社保类别
  DM_data.qry_pub.Close;
  DM_data.qry_pub.SQL.Text := 'select lbdm,lbmc from zysf_sbbrlb order by lbdm';
  adoqry_open( DM_data.qry_pub, '社保类别刷新' );
  if DM_data.qry_pub.RecordCount > 0 then
  begin
    while not DM_data.qry_pub.eof do
    begin
      cbb_sblb.items.Add( trim( DM_data.qry_pub.FieldByName( 'lbmc' ).AsString ) );
      sblb[5].Add( Format( '%s=%s', [trim( DM_data.qry_pub.FieldByName( 'lbmc' ).AsString ),
        trim( DM_data.qry_pub.FieldByName( 'lbdm' ).AsString )] ) );
      DM_data.qry_pub.next;
    end;
    //cbb_sblb.ItemIndex := 0;  {社保类别默认为空}
  end;
  sblb[6].Add( Format( '%s=%s', ['A', '0'] ) );
  sblb[6].Add( Format( '%s=%s', ['B', '1'] ) );
  sblb[6].Add( Format( '%s=%s', ['AB', '2'] ) );
  sblb[6].Add( Format( '%s=%s', ['O', '3'] ) );
  sblb[6].Add( Format( '%s=%s', ['其他', '4'] ) );
end;

end.

