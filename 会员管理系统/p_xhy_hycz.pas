unit p_xhy_hycz;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, DB, ADODB, ComCtrls, Menus,
  cxLookAndFeelPainters, cxButtons, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, cxGridLevel, cxClasses,
  cxControls, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, QRCtrls, QuickRpt, cxCheckBox, cxButtonEdit;

type
  Tfrm_xhy_hycz = class( TForm )
    pnl1: TPanel;
    pnl2: TPanel;
    pnl3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    e_tmh: TEdit;
    grp1: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label5: TLabel;
    Label8: TLabel;
    Label13: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    e_brxm: TEdit;
    e_fylb: TEdit;
    e_brdh: TEdit;
    e_brxb: TEdit;
    e_sfzhm: TEdit;
    e_brnl: TEdit;
    e_brdz: TEdit;
    e_zfy: TEdit;
    e_zyj: TEdit;
    e_ye: TEdit;
    dtp_csrq: TDateTimePicker;
    qry_fkfs: TADOQuery;
    ds_fkfs: TDataSource;
    cxbut_tc: TcxButton;
    grp2: TGroupBox;
    Label14: TLabel;
    cbb_fkfs: TComboBox;
    Label15: TLabel;
    e_fkje: TEdit;
    cxbut_save: TcxButton;
    cxbut_close: TcxButton;
    cxbut_dy: TcxButton;
    cxGrid_yjmxDBTableView1: TcxGridDBTableView;
    cxGrid_yjmxLevel1: TcxGridLevel;
    cxGrid_yjmx: TcxGrid;
    sp_yjmxcx: TADOStoredProc;
    ds_yjmxcx: TDataSource;
    cxgrdbclmnGrid1DBTableView1Column1: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column2: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column3: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column4: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column5: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column6: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column7: TcxGridDBColumn;
    cxgrid_xzlbDBTableView1: TcxGridDBTableView;
    cxgrid_xzlbLevel1: TcxGridLevel;
    cxgrid_xzlb: TcxGrid;
    ds_jbxx: TDataSource;
    cxgrdbclmnGrid2DBTableView1Column1: TcxGridDBColumn;
    cxgrdbclmnGrid2DBTableView1Column2: TcxGridDBColumn;
    cxgrdbclmnGrid2DBTableView1Column3: TcxGridDBColumn;
    cxgrdbclmnGrid2DBTableView1Column4: TcxGridDBColumn;
    chk_sjbl: TCheckBox;
    Label16: TLabel;
    e_pjlb: TEdit;
    sp_in_yj: TADOStoredProc;
    repo_hyyj: TQuickRep;
    DetailBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    brxm: TQRLabel;
    QRLabel3: TQRLabel;
    zye: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel8: TQRLabel;
    bcyj: TQRLabel;
    dwmc: TQRLabel;
    sfrq: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    zyj: TQRLabel;
    zfy: TQRLabel;
    QRShape1: TQRShape;
    QRLabel11: TQRLabel;
    dx: TQRLabel;
    QRLabel14: TQRLabel;
    QRShape2: TQRShape;
    QRLabel15: TQRLabel;
    czy: TQRLabel;
    QRLabel12: TQRLabel;
    yjxs: TQRLabel;
    procedure FormShow( Sender: TObject );
    procedure cxbut_tcClick( Sender: TObject );
    procedure e_tmhKeyDown( Sender: TObject; var Key: Word; Shift: TShiftState );
    procedure cxgrid_xzlbDBTableView1KeyDown( Sender: TObject; var Key: Word;
      Shift: TShiftState );
    procedure e_tmhEnter( Sender: TObject );
    procedure cbb_fkfsKeyDown( Sender: TObject; var Key: Word;
      Shift: TShiftState );
    procedure e_fkjeKeyDown( Sender: TObject; var Key: Word; Shift: TShiftState );
    procedure cxgrid_xzlbDBTableView1DblClick( Sender: TObject );
    procedure cxgrid_xzlbExit( Sender: TObject );
    procedure cxbut_closeClick( Sender: TObject );
    procedure e_fkjeExit( Sender: TObject );
    procedure cxbut_saveClick( Sender: TObject );
    procedure cxbut_dyClick( Sender: TObject );
  private
    czfplb, yjsjdm, fkfs, priv_tmh: string;
    procedure qk; //清空
    procedure jz; //加载
    function yz: Boolean; //验证
    { Private declarations }
  public

    { Public declarations }
  end;

var
  frm_xhy_hycz: Tfrm_xhy_hycz;

implementation
uses
  p_dm, p_func, p_repo_yjmx;
{$R *.dfm}

procedure Tfrm_xhy_hycz.cbb_fkfsKeyDown( Sender: TObject; var Key: Word;
  Shift: TShiftState );
begin
  if key = 13 then
  begin
    e_fkje.SetFocus;
  end;
end;

procedure Tfrm_xhy_hycz.cxbut_closeClick( Sender: TObject );
begin
  DM_data.hy_jbxx.Close;
  qk;
end;

procedure Tfrm_xhy_hycz.cxbut_dyClick( Sender: TObject );
begin
  if DM_data.hy_jbxx.Active and ( DM_data.hy_jbxx.RecordCount > 0 ) then
  begin
    application.CreateForm( Tfrm_repo_yjmx, frm_repo_yjmx );
    frm_repo_yjmx.QRLabel1.Caption := pub_yymc + '会员预交明细清单';
    frm_repo_yjmx.QRLabel2.Caption := trim( e_zyj.text );
    frm_repo_yjmx.QRLabel5.Caption := trim( e_zfy.text );
    frm_repo_yjmx.QRLabel6.Caption := trim( e_ye.text );
    frm_repo_yjmx.QRLabel14.Caption := trim( e_brxm.text );
    frm_repo_yjmx.QuickRep1.DataSet := sp_yjmxcx;
    frm_repo_yjmx.QRDBText1.DataSet := sp_yjmxcx;
    frm_repo_yjmx.QRDBText1.DataField := 'yjje';
    frm_repo_yjmx.QRDBText2.DataSet := sp_yjmxcx;
    frm_repo_yjmx.QRDBText2.DataField := 'fkfsmc';
    frm_repo_yjmx.QRDBText3.DataSet := sp_yjmxcx;
    frm_repo_yjmx.QRDBText3.DataField := 'czymc';
    frm_repo_yjmx.QRDBText4.DataSet := sp_yjmxcx;
    frm_repo_yjmx.QRDBText4.DataField := 'sfrq';
    frm_repo_yjmx.QRDBText5.DataSet := sp_yjmxcx;
    frm_repo_yjmx.QRDBText5.DataField := 'tfbz';
    frm_repo_yjmx.QuickRep1.Preview;
    try
      frm_repo_yjmx.Free
    except
    end;
  end;
end;

procedure Tfrm_xhy_hycz.cxbut_saveClick( Sender: TObject );
var
  getsjh, sysl, sjbh, sjzh, zt: string;
begin
  if yz then
  begin
    if yjsjdm = '' then //判断是否使用收据 如果为空 则是不使用
    begin
      sp_in_yj.Close;
      sp_in_yj.Parameters.ParamByName( '@tmh' ).Value := DM_data.hy_jbxx.FieldByName( 'tmh' ).AsString;
      sp_in_yj.Parameters.ParamByName( '@yjfsdm' ).Value := 0;
      sp_in_yj.Parameters.ParamByName( '@sjbh' ).Value := '';
      sp_in_yj.Parameters.ParamByName( '@yjje' ).Value := FormatFloat( '0.00', StrToFloat( e_fkje.Text ) );
      sp_in_yj.Parameters.ParamByName( '@yjxs' ).Value := fkfs;
      sp_in_yj.Parameters.ParamByName( '@sfczy' ).Value := pub_czydm;
      sp_in_yj.Parameters.ParamByName( '@sczt' ).Value := '';
      try
        sp_in_yj.ExecProc;
        zt := sp_in_yj.Parameters.ParamByName( '@sczt' ).Value;
        if zt = '成功' then
        begin
          Application.MessageBox( '提示:充值成功！', '充值信息', MB_OK );
          if czfplb = '白票' then
          begin
            DM_data.hy_jbxx.Close;
            DM_data.hy_jbxx.Parameters.ParamByName( '@tmh' ).Value := priv_tmh;
            DM_data.hy_jbxx.Open;
            //程序内部凭证
            dwmc.Caption := pub_yymc;
            brxm.Caption := DM_data.hy_jbxx.FieldByName( 'brxm' ).AsString;
            bcyj.Caption := FormatFloat( '0.00', StrToFloat( Trim( e_fkje.Text ) ) );
            dx.Caption := NumberToMoney( StrToFloat( Trim( e_fkje.Text ) ) );
            yjxs.Caption := cbb_fkfs.Text;
            czy.Caption := pub_czyxm;
            sfrq.Caption := FormatDateTime( 'yyyy-MM-dd', Frm_func.curr_date );
            zyj.Caption := DM_data.hy_jbxx.FieldByName( 'yjze' ).AsString;
            zfy.Caption := DM_data.hy_jbxx.FieldByName( 'zfy' ).AsString;
            zye.Caption := DM_data.hy_jbxx.FieldByName( 'syje' ).AsString;
            repo_hyyj.Preview;
            e_tmh.SetFocus;
          end;
        end
        else
        begin
          Application.MessageBox( PChar( '提示:充值失败！错误信息为:' + zt ), '提示', MB_ICONHAND );
        end;
      except on e: Exception do
        begin
          Application.MessageBox( PChar( '错误信息:进行会员卡充值操作失败！失败原因:' + e.Message ), '错误信息', MB_ICONHAND );
        end;
      end;
    end
    else
    begin
      //      开发中。暂且注释
//      if not chk_sjbl.Checked then //判断是否补录
//      begin
//        getsjh := Frm_func.func_get_sjbh( pub_czydm, yjsjdm, '1' );
//      end
//      else
//      begin
//        getsjh := Frm_func.func_get_sjbh( pub_czydm, yjsjdm, '2' );
//      end;
//      if getsjh = '' then
//      begin
//        Application.MessageBox( '提示:收据已用完！请重起收据！', '提示', MB_ICONHAND );
//        Exit;
//      end;
//      sysl := Copy( getsjh, Pos( 'S', getsjh ) + 1, Pos( 'Q', getsjh ) - Pos( 'S', getsjh ) - 2 );
//      sjbh := Copy( getsjh, Pos( 'C', getsjh ) + 1, Pos( 'S', getsjh ) - Pos( 'C', getsjh ) - 2 );
//      sjzh := Copy( getsjh, Pos( 'Z', getsjh ) + 1, Length( getsjh ) );
//      if sysl = '0' then
//      begin
//        Application.MessageBox('提示:收据已用完，请重启新收据！','提示',MB_ICONHAND);
//        Exit;
//      end;
      Application.MessageBox( '目前版本暂不支持打印收据。暂只支持打印无收据白票！', '提示', MB_ICONHAND );
    end;
  end;
end;

procedure Tfrm_xhy_hycz.cxbut_tcClick( Sender: TObject );
begin
  Close;
end;

procedure Tfrm_xhy_hycz.cxgrid_xzlbDBTableView1DblClick( Sender: TObject );
begin
  if DM_data.hy_jbxx.Active and ( DM_data.hy_jbxx.RecordCount > 0 ) then
  begin
    jz;
    cxgrid_xzlb.Visible := False;
    cbb_fkfs.SetFocus;
  end;
end;

procedure Tfrm_xhy_hycz.cxgrid_xzlbDBTableView1KeyDown( Sender: TObject;
  var Key: Word; Shift: TShiftState );
begin
  if key = 13 then
  begin
    if DM_data.hy_jbxx.Active and ( DM_data.hy_jbxx.RecordCount > 0 ) then
    begin
      jz;
      cxgrid_xzlb.Visible := False;
      cbb_fkfs.SetFocus;
    end;
  end;
end;

procedure Tfrm_xhy_hycz.cxgrid_xzlbExit( Sender: TObject );
begin
  if DM_data.hy_jbxx.Active and ( DM_data.hy_jbxx.RecordCount > 0 ) then
  begin
    jz;
    cxgrid_xzlb.Visible := False;
    cbb_fkfs.SetFocus;
  end;
end;

procedure Tfrm_xhy_hycz.e_fkjeExit( Sender: TObject );
var
  yjje: Real;
begin
  try
    if Trim( e_fkje.Text ) <> '' then
    begin
      yjje := StrToFloat( e_fkje.Text );
      if yjje >= 0 then
      begin
        e_fkje.Text := FormatFloat( '0.00', yjje );
      end
      else
      begin
        Application.MessageBox( '提示:输入的充值金额错误1！请正确输入！', '提示', MB_ICONHAND );
        e_fkje.SetFocus;
      end;
    end
    else
    begin
      e_fkje.Text := '0.00';
    end;
  except
    Application.MessageBox( '提示:输入的充值金额错误2！请正确输入！', '提示', MB_ICONHAND );
    e_fkje.SetFocus;
  end;
end;

procedure Tfrm_xhy_hycz.e_fkjeKeyDown( Sender: TObject; var Key: Word;
  Shift: TShiftState );
begin
  if key = 13 then
  begin
    if cxbut_save.Enabled then
    begin
      cxbut_save.SetFocus;
    end
    else
    begin
      Application.MessageBox( '提示:未进行会员打票设置！无法进行充值操作！', '提示', MB_ICONHAND );
    end;
  end;
end;

procedure Tfrm_xhy_hycz.e_tmhEnter( Sender: TObject );
begin
  DM_data.hy_jbxx.Close;
  qk;
end;

procedure Tfrm_xhy_hycz.e_tmhKeyDown( Sender: TObject; var Key: Word;
  Shift: TShiftState );
begin
  if key = 13 then
  begin
    priv_tmh := Trim( e_tmh.Text );
    DM_data.hy_jbxx.Close;
    DM_data.hy_jbxx.Parameters.ParamByName( '@tmh' ).Value := priv_tmh;
    try
      DM_data.hy_jbxx.Open;
    except on e: Exception do
      begin
        Application.MessageBox( PChar( '错误提示:查询会员信息错误！错误信息:' + e.Message ), '提示', MB_ICONHAND );
      end;
    end;
    if DM_data.hy_jbxx.RecordCount = 1 then
    begin
      jz;
      cbb_fkfs.SetFocus;
    end
    else
      if DM_data.hy_jbxx.RecordCount > 1 then
      begin
        cxgrid_xzlb.Top := 120;
        cxgrid_xzlb.Left := 100;
        cxgrid_xzlb.Visible := True;
        cxgrid_xzlb.SetFocus;
      end
      else
      begin
        Application.MessageBox( '提示:未能查询到有效的数据。请确认后在进行查询操作！', '提示', MB_ICONHAND );
      end;
  end;
end;

procedure Tfrm_xhy_hycz.FormShow( Sender: TObject );
begin
  DM_data.qry_pub.Close;
  DM_data.qry_pub.SQL.Text := 'select czfplb,yjsjdm from hy_xtsz';
  try
    DM_data.qry_pub.Open;
    if DM_data.qry_pub.RecordCount = 0 then
    begin
      cxbut_save.Enabled := False;
      Application.MessageBox( '提示:请先进行设置会员系统设置操作！', '提示', MB_ICONHAND );
    end
    else
    begin
      czfplb := DM_data.qry_pub.FieldByName( 'czfplb' ).AsString;
      yjsjdm := DM_data.qry_pub.FieldByName( 'yjsjdm' ).AsString;
      e_pjlb.Text := czfplb + '-' + yjsjdm;
    end;
  except
    Application.MessageBox( '提示:系统缺少表补丁hy_xtsz', '提示', MB_ICONHAND );
  end;
  qry_fkfs.Close;
  qry_fkfs.Open;
  if qry_fkfs.RecordCount > 0 then
  begin
    while not qry_fkfs.Eof do
    begin
      cbb_fkfs.Items.Add( qry_fkfs.FieldByName( 'dm' ).AsString + '-' + qry_fkfs.FieldByName( 'mc' ).AsString );
      qry_fkfs.Next;
    end;
    cbb_fkfs.ItemIndex := 0;
  end
  else
  begin
    Application.MessageBox( '提示:系统未设置相应的付款方式,请设置后在进行预交操作', '提示', MB_ICONHAND );
  end;
end;

procedure Tfrm_xhy_hycz.jz;
begin
  priv_tmh := DM_data.hy_jbxx.FieldByName( 'tmh' ).AsString;
  e_tmh.Text := priv_tmh;
  e_brxm.Text := DM_data.hy_jbxx.FieldByName( 'brxm' ).AsString;
  e_brnl.Text := DM_data.hy_jbxx.FieldByName( 'brnl' ).AsString;
  e_brxb.Text := DM_data.hy_jbxx.FieldByName( 'brxb' ).AsString;
  e_brdh.Text := DM_data.hy_jbxx.FieldByName( 'brdh' ).AsString;
  e_fylb.Text := DM_data.hy_jbxx.FieldByName( 'fylb' ).AsString;
  dtp_csrq.DateTime := DM_data.hy_jbxx.FieldByName( 'csrq' ).AsDateTime;
  e_sfzhm.Text := DM_data.hy_jbxx.FieldByName( 'sfzhm' ).AsString;
  e_brdz.Text := DM_data.hy_jbxx.FieldByName( 'brdz' ).AsString;
  e_zfy.Text := FormatFloat( '0.00', DM_data.hy_jbxx.FieldByName( 'zfy' ).AsFloat );
  e_zyj.Text := FormatFloat( '0.00', DM_data.hy_jbxx.FieldByName( 'yjze' ).AsFloat );
  e_ye.Text := FormatFloat( '0.00', DM_data.hy_jbxx.FieldByName( 'syje' ).AsFloat );
  sp_yjmxcx.Close;
  sp_yjmxcx.Parameters.ParamByName( '@tmh' ).Value := DM_data.hy_jbxx.FieldByName( 'tmh' ).AsString;
  sp_yjmxcx.Open;
end;

procedure Tfrm_xhy_hycz.qk;
begin
  sp_yjmxcx.Close;
  priv_tmh := '';
  e_tmh.Text := '';
  e_brxm.Text := '';
  e_brnl.Text := '';
  e_brxb.Text := '';
  e_brdh.Text := '';
  e_fylb.Text := '';
  dtp_csrq.DateTime := Now;
  e_sfzhm.Text := '';
  e_brdz.Text := '';
  e_zfy.Text := '0.00';
  e_zyj.Text := '0.00';
  e_ye.Text := '0.00';
  e_fkje.Text := '0.00';
  chk_sjbl.Checked := False;
  cbb_fkfs.ItemIndex := 0;
end;

function Tfrm_xhy_hycz.yz: Boolean;
begin
  Result := False;
  if Trim( cbb_fkfs.Text ) <> '' then
  begin
    fkfs := Copy( Trim( cbb_fkfs.Text ), 0, Pos( '-', Trim( cbb_fkfs.Text ) ) - 1 );
    Result := True;
  end
  else
  begin
    Application.MessageBox( '提示:付款方式不能为空！未找到付款方式选择', '提示', MB_ICONHAND );
  end;
  if StrToFloat( Trim( e_fkje.Text ) ) = 0.00 then
  begin
    Result := False;
    Application.MessageBox( '提示:充值金额不能为0元！请重新输入后进行充值操作', '提示', MB_ICONHAND );
  end;
end;

end.

