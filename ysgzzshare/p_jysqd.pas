unit p_jysqd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, GridsEh, DBGridEh, ExtCtrls, ComCtrls, StdCtrls, Buttons,
  QRCtrls, QuickRpt, uHSBarCodeImage, printers, ToolCtrlsEh, DBGridEhGrouping,
  Menus;

type
  Tfrm_jysqd = class( TForm )
    Panel1: TPanel;
    DBGridEh1: TDBGridEh;
    sp_jyxm: TADOStoredProc;
    ds_jyxm: TDataSource;
    Label1: TLabel;
    pq: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    dt_zxsj: TDateTimePicker;
    Label2: TLabel;
    sp_yzsj: TADOStoredProc;
    abr: TRadioButton;
    qbq: TRadioButton;
    ad_zyh: TADODataSet;
    QuickRep1: TQuickRep;
    HSBarCodeImage1: THSBarCodeImage;
    QRBand1: TQRBand;
    QRSubDetail1: TQRSubDetail;
    QRBand2: TQRBand;
    p_zyh: TQRLabel;
    p_xm: TQRLabel;
    p_jyxm: TQRLabel;
    p_jyh: TQRImage;
    p_xb: TQRLabel;
    p_nl: TQRLabel;
    p_bch: TQRLabel;
    p_ks: TQRLabel;
    p_ryzd: TQRLabel;
    BitBtn4: TBitBtn;
    sp_up_jysqd: TADOStoredProc;
    sp_brlb: TADOStoredProc;
    jyyb: TQRLabel;
    BitBtn5: TBitBtn;
    QuickRep2: TQuickRep;
    PageHeaderBand1: TQRBand;
    QRSubDetail2: TQRSubDetail;
    QRL_yymc_zy: TQRLabel;
    ql_tmh: TQRLabel;
    ql_brxm: TQRLabel;
    ql_brxb: TQRLabel;
    ql_bch: TQRLabel;
    xm1: TQRLabel;
    dw1: TQRLabel;
    yb1: TQRLabel;
    xm2: TQRLabel;
    dw2: TQRLabel;
    yb2: TQRLabel;
    QRBand7: TQRBand;
    QRLabel22: TQRLabel;
    QRLabel19: TQRLabel;
    GroupHeaderBand1: TQRBand;
    QRLabel26: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel20: TQRLabel;
    GroupFooterBand1: TQRBand;
    QRLabel2: TQRLabel;
    ql_zd: TQRLabel;
    cbbYiDaYin: TComboBox;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    sp_jysq_dy: TADOStoredProc;
    procedure FormShow( Sender: TObject );
    procedure pqExit( Sender: TObject );
    procedure abrClick( Sender: TObject );
    procedure qbqClick( Sender: TObject );
    procedure dt_zxsjChange( Sender: TObject );
    procedure BitBtn2Click( Sender: TObject );
    procedure BitBtn3Click( Sender: TObject );
    procedure QRSubDetail1NeedData( Sender: TObject; var MoreData: Boolean );
    procedure QuickRep1BeforePrint( Sender: TCustomQuickRep;
      var PrintReport: Boolean );
    procedure BitBtn1Click( Sender: TObject );
    procedure QRBand1BeforePrint( Sender: TQRCustomBand; var PrintBand: Boolean );
    procedure QRSubDetail1AfterPrint( Sender: TQRCustomBand;
      BandPrinted: Boolean );
    procedure pqKeyPress( Sender: TObject; var Key: Char );
    procedure BitBtn4Click( Sender: TObject );
    procedure p_zyhPrint( sender: TObject; var Value: string );
    procedure BitBtn5Click( Sender: TObject );
    procedure QRSubDetail2NeedData( Sender: TObject; var MoreData: Boolean );
    procedure FormCreate( Sender: TObject );
    procedure DBGridEh1CellClick(Column: TColumnEh);
    procedure cbbYiDaYinChange(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_jysqd: Tfrm_jysqd;
  jyfzbh: string;
  cdmark: boolean;
implementation
uses p_func, p_dm, p_zysf_print_service;
{$R *.dfm}

procedure Tfrm_jysqd.FormCreate( Sender: TObject );
begin
  QuickRep1.Visible := false;
  QuickRep2.Visible := false;
end;

procedure Tfrm_jysqd.FormShow( Sender: TObject );
begin
  sp_yzsj.Close;
  sp_yzsj.Parameters.ParamByName( '@scyzsj' ).Value := dt_zxsj.DateTime;
  sp_yzsj.ExecProc;
  dt_zxsj.DateTime := sp_yzsj.Parameters.ParamByName( '@scyzsj' ).Value;
  quickrep1.Visible := false;
 // abr.Checked:=True;

 qbq.Checked:=True;
qbq.OnClick(Self);

 // if pub_yydm=HN_SYRMYY then cbbYiDaYin.ItemIndex := 2;//全部
  
end;

procedure Tfrm_jysqd.N1Click(Sender: TObject);
begin
  sp_jyxm.First;
  while not sp_jyxm.Eof do
  begin
    sp_jyxm.Edit;
    sp_jyxm.FieldByName('dybz').AsString:='√';
    sp_jyxm.Post;
    sp_jyxm.Next;
  end;
end;

procedure Tfrm_jysqd.N2Click(Sender: TObject);
begin
  sp_jyxm.First;
  while not sp_jyxm.Eof do
  begin
    sp_jyxm.Edit;
    if Trim(sp_jyxm.FieldByName('dybz').AsString)='√' then
    begin
       sp_jyxm.FieldByName('dybz').AsString:='';
    end
    else
    begin
       sp_jyxm.FieldByName('dybz').AsString:='√';
    end;
    sp_jyxm.Post;
    sp_jyxm.Next;
  end;
end;

procedure Tfrm_jysqd.pqExit( Sender: TObject );
begin
  if not ( qbq.focused or bitbtn2.focused or bitbtn3.focused or abr.focused or ( bitbtn1.focused and ( pq.text = '' ) ) ) then
  begin
  {  if abq.Checked then
    begin
      if pq.Text <> '' then
      begin
        sp_jyxm.close;
        sp_jyxm.Parameters.ParamByName( '@zyh' ).Value := '';
        sp_jyxm.Parameters.ParamByName( '@jyfzbh' ).Value := pq.text;
        sp_jyxm.Parameters.ParamByName( '@zxsj' ).Value := formatdatetime( 'yyyymmdd', dT_zxsj.Date );
        sp_jyxm.Parameters.ParamByName( '@bqdm' ).Value := pub_bqdm;
        sp_jyxm.Open;
      end
      else
      begin
        application.messagebox( '请录入采血试管上的瓶签！！', '提示', mb_ok + mb_iconinformation );
        pq.SetFocus;
      end;
    end
    else    }
      if abr.Checked then
      begin
        if pq.Text <> '' then
        begin
          ad_zyh.Close;
          ad_zyh.CommandText := 'select zyh from zysf_zydj where (tmh=' + #39 + pq.Text + #39 + ' or bch=' + #39 + pq.text + #39 + ') and bqdm=' + #39 + pub_bqdm + #39 + ' and cybz=0';
          ad_zyh.open;
          if ad_zyh.IsEmpty then
          begin
            application.MessageBox( '该病人不存在，请确定病人住院是否正确！！', '提示', mb_ok + mb_iconinformation );
            pq.Clear;
            pq.SetFocus;
          end
          else
          begin
            sp_jyxm.close;
            sp_jyxm.Parameters.ParamByName( '@zyh' ).Value := ad_zyh.fieldbyname( 'zyh' ).asstring;
            sp_jyxm.Parameters.ParamByName( '@zxsj' ).Value := formatdatetime( 'yyyymmdd', dT_zxsj.Date );
            sp_jyxm.Parameters.ParamByName( '@bqdm' ).Value := pub_bqdm;
            sp_jyxm.Open;
          end;
        end
        else
        begin
          application.messagebox( '请输入病人住院号！', '提示', mb_ok + mb_iconinformation );
          pq.setfocus;
        end;
      end
      else
        if qbq.Checked then
        begin
          sp_jyxm.close;
          sp_jyxm.Parameters.ParamByName( '@zyh' ).Value := '';
          sp_jyxm.Parameters.ParamByName( '@zxsj' ).Value := formatdatetime( 'yyyymmdd', dT_zxsj.Date );
          sp_jyxm.Parameters.ParamByName( '@bqdm' ).Value := pub_bqdm;
          sp_jyxm.Open;
        end;
  end;
  cbbYiDaYinChange(cbbYiDaYin);
end;

procedure Tfrm_jysqd.pqKeyPress( Sender: TObject; var Key: Char );
begin
  if key = #13 then
  begin
    if pq.text = '' then
    begin
     { if abq.checked then
        application.messagebox( '请录入采血试管上的瓶签！！', '提示', mb_ok + mb_iconinformation )
      else  }
        if abr.checked then
          application.messagebox( '请输入病人住院号！', '提示', mb_ok + mb_iconinformation )
        else
        begin
          bitbtn5.SetFocus;
        end;
    end
    else
      bitbtn5.setfocus;
  end;

end;

procedure Tfrm_jysqd.p_zyhPrint( sender: TObject; var Value: string );
begin
  if sp_jyxm.fieldbyname( 'jyddy' ).asboolean then
    value := value + '★'
  else
    value := value;
end;

procedure Tfrm_jysqd.qbqClick( Sender: TObject );
begin
  if qbq.Checked then
  begin
    sp_jyxm.close;
    sp_jyxm.Parameters.Refresh;
    sp_jyxm.Parameters.ParamByName( '@zyh' ).Value := '';
    sp_jyxm.Parameters.ParamByName( '@zxsj' ).Value := formatdatetime( 'yyyymmdd', dT_zxsj.Date );
    sp_jyxm.Parameters.ParamByName( '@bqdm' ).Value := pub_bqdm;
    sp_jyxm.Open;
    cbbYiDaYinChange(cbbYiDaYin);
  end;
end;

procedure Tfrm_jysqd.QRBand1BeforePrint( Sender: TQRCustomBand;
  var PrintBand: Boolean );
begin
  p_zyh.Caption := '住院号:' + trim( sp_jyxm.FieldByName( 'tmh' ).asstring );
  p_xm.Caption := '姓名:' + trim( sp_jyxm.FieldByName( 'brxm' ).asstring );
  p_xb.Caption := '性别:' + trim( sp_jyxm.FieldByName( 'brxb' ).asstring );
  p_nl.Caption := '年龄:' + trim( sp_jyxm.FieldByName( 'brnl' ).asstring );
  p_bch.Caption := '病床:' + trim( sp_jyxm.FieldByName( 'bch' ).asstring );
  p_ks.Caption := '科室:' + trim( sp_jyxm.FieldByName( 'ksmc' ).asstring );
  p_ryzd.Caption := '入院诊断:' + trim( sp_jyxm.FieldByName( 'ryzd' ).asstring );
  jyyb.Caption := trim( sp_jyxm.FieldByName( 'jyyb' ).asstring );
  HSBarCodeImage1.barcode := jyfzbh;
  //jyfzbh:=trim(sp_jyxm.FieldByName('jyfzbh').asstring);
  p_jyh.Width := HSBarCodeImage1.width;
  p_jyh.Height := HSBarCodeImage1.Height;
  p_jyh.Picture := HSBarCodeImage1.Picture;

end;

procedure Tfrm_jysqd.QRSubDetail1AfterPrint( Sender: TQRCustomBand;
  BandPrinted: Boolean );
begin
  if jyfzbh <> trim( sp_jyxm.fieldbyname( 'jyfzbh' ).asstring ) then
  begin
    jyfzbh := trim( sp_jyxm.fieldbyname( 'jyfzbh' ).asstring );
    if not sp_jyxm.eof then
      quickrep1.NewPage;
  end;
end;

procedure Tfrm_jysqd.QRSubDetail1NeedData( Sender: TObject;
  var MoreData: Boolean );
var
  I: integer;
begin
  MoreData := True;
  i := 1;
  if sp_jyxm.Eof then
    MoreData := False;
  p_jyxm.Caption := '';
  if not sp_jyxm.eof then
  begin
    p_jyxm.caption := sp_jyxm.FieldByName( 'xmmc' ).Asstring;
  end;
  sp_jyxm.next;
end;

procedure Tfrm_jysqd.QRSubDetail2NeedData( Sender: TObject;
  var MoreData: Boolean );
  procedure SetCaption( id: Integer; const xm, dw, yb, jf: string );
  var
    aControl: TControl;
  begin
    aControl := QRSubDetail2.FindChildControl( 'xm' + IntToStr( id ) );
    if aControl is TQRLabel then
      TQRLabel( aControl ).Caption := xm+'('+jf+')';
    aControl := QRSubDetail2.FindChildControl( 'dw' + IntToStr( id ) );
    if aControl is TQRLabel then
      TQRLabel( aControl ).Caption := dw;
    aControl := QRSubDetail2.FindChildControl( 'yb' + IntToStr( id ) );
    if aControl is TQRLabel then
      TQRLabel( aControl ).Caption := yb;
//    aControl := QRSubDetail2.FindChildControl( 'jf' + IntToStr( id ) );
//    if aControl is TQRLabel then
//      TQRLabel( aControl ).Caption := jf;
  end;
var
  i: Integer;
begin
  MoreData := not sp_jyxm.Eof;

  for I := 1 to 2 do
  begin
    if sp_jyxm.Eof then
      SetCaption( i, ' ', ' ', ' ', ' ' )
    else
      SetCaption( i, Trim( sp_jyxm.FieldByName( 'xmmc' ).AsString ),
        Trim( sp_jyxm.FieldByName( 'dw' ).AsString ),
        Trim( sp_jyxm.FieldByName( 'jyyb' ).AsString ),
        Trim( sp_jyxm.FieldByName( 'jfbz' ).AsString ) );
    sp_jyxm.Next;
  end;

end;

procedure Tfrm_jysqd.QuickRep1BeforePrint( Sender: TCustomQuickRep;
  var PrintReport: Boolean );
begin
  sp_jyxm.First;
  jyfzbh := trim( sp_jyxm.fieldbyname( 'jyfzbh' ).asstring );
end;

procedure Tfrm_jysqd.abrClick( Sender: TObject );
begin
  if abr.Checked then
  begin
    label1.Caption := '住院号：';
    sp_jyxm.close;
    pq.SetFocus;
  end;

end;

procedure Tfrm_jysqd.BitBtn1Click( Sender: TObject );
begin
  cdmark := true;
  sp_brlb.close;
  sp_brlb.Parameters.Refresh;
  sp_brlb.Parameters.ParamByName( '@zyh' ).Value := sp_jyxm.Parameters.ParamByName( '@zyh' ).Value;
  sp_brlb.Parameters.ParamByName( '@zxsj' ).Value := formatdatetime( 'yyyymmdd', dT_zxsj.Date );
  sp_brlb.Parameters.ParamByName( '@bqdm' ).Value := pub_bqdm;
  sp_brlb.Open;
  if not sp_brlb.IsEmpty then
  begin
    while not sp_brlb.eof do
    begin
      sp_jyxm.close;
      sp_jyxm.Parameters.ParamByName( '@zyh' ).Value := sp_brlb.fieldbyname( 'zyh' ).asstring;
      sp_jyxm.Parameters.ParamByName( '@zxsj' ).Value := sp_brlb.Parameters.ParamByName( '@zxsj' ).Value;
      sp_jyxm.Parameters.ParamByName( '@bqdm' ).Value := pub_bqdm;
      sp_jyxm.Open;
      if not sp_jyxm.isempty then
      begin
        if pub_yydm='0240' then frm_zysf_print_service.PrintJYSQD(sp_jyxm)
        else
        begin
          quickrep1.PrinterSettings.PrinterIndex := printer.Printers.IndexOf( 'sydprint' );
          quickrep1.print;
          sp_up_jysqd.close;
          sp_up_jysqd.Parameters.ParamByName( '@zyh' ).Value := sp_brlb.fieldbyname( 'zyh' ).asstring;
          ;
          sp_up_jysqd.Parameters.ParamByName( '@jyfzbh' ).Value := sp_brlb.fieldbyname( 'jyfzbh' ).asstring;
          ;
          sp_up_jysqd.Parameters.ParamByName( '@zxsj' ).Value := sp_brlb.Parameters.ParamByName( '@zxsj' ).Value;
          sp_up_jysqd.Parameters.ParamByName( '@bqdm' ).Value := pub_bqdm;
          sp_up_jysqd.Parameters.ParamByName( '@fs' ).Value := 1;
          sp_up_jysqd.execproc;
          pq.OnExit( self );
        end;
      end;
      sp_brlb.Next;
    end
  end
  else
  begin
    application.messagebox( '查询结果为空，请重新查询！', '提示', mb_ok + mb_iconinformation );
    pq.setfocus;
  end;
end;

procedure Tfrm_jysqd.BitBtn2Click( Sender: TObject );
begin
  sp_jyxm.Close;
  pq.SetFocus;
end;

procedure Tfrm_jysqd.BitBtn3Click( Sender: TObject );
begin
  self.close;
end;

procedure Tfrm_jysqd.BitBtn4Click( Sender: TObject );
begin
  cdmark := false;
  sp_brlb.close;
  sp_brlb.Parameters.ParamByName( '@zyh' ).Value := sp_jyxm.Parameters.ParamByName( '@zyh' ).Value;
  sp_brlb.Parameters.ParamByName( '@zxsj' ).Value := formatdatetime( 'yyyymmdd', dT_zxsj.Date );
  sp_brlb.Parameters.ParamByName( '@bqdm' ).Value := pub_bqdm;
  sp_brlb.Open;
  sp_brlb.Filtered := false;
  sp_brlb.Filter := 'jyddy=0';
  sp_brlb.filtered := true;
  if not sp_brlb.IsEmpty then
  begin
    while not sp_brlb.eof do
    begin
      sp_jyxm.close;
      sp_jyxm.Parameters.ParamByName( '@zyh' ).Value := sp_brlb.fieldbyname( 'zyh' ).asstring;
      sp_jyxm.Parameters.ParamByName( '@zxsj' ).Value := sp_brlb.Parameters.ParamByName( '@zxsj' ).Value;
      sp_jyxm.Parameters.ParamByName( '@bqdm' ).Value := pub_bqdm;
      sp_jyxm.Open;
      //  sp_jyxm.Filtered:=false;
      //  sp_jyxm.Filter:='jyddy=0';
      //  sp_jyxm.filtered:=true;
      if not sp_jyxm.isempty then
      begin
        quickrep1.PrinterSettings.PrinterIndex := printer.Printers.IndexOf( 'sydprint' );
        quickrep1.print;
        sp_up_jysqd.close;
        sp_up_jysqd.Parameters.ParamByName( '@zyh' ).Value := sp_brlb.fieldbyname( 'zyh' ).asstring;
        sp_up_jysqd.Parameters.ParamByName( '@jyfzbh' ).Value := sp_brlb.fieldbyname( 'jyfzbh' ).asstring;
        sp_up_jysqd.Parameters.ParamByName( '@zxsj' ).Value := sp_brlb.Parameters.ParamByName( '@zxsj' ).Value;
        sp_up_jysqd.Parameters.ParamByName( '@bqdm' ).Value := pub_bqdm;
        sp_up_jysqd.Parameters.ParamByName( '@fs' ).Value := 1;
        sp_up_jysqd.execproc;
        pq.OnExit( self );
      end;
      sp_brlb.Next;
    end
  end
  else
  begin
    application.messagebox( '查询结果为空，请重新查询！', '提示', mb_ok + mb_iconinformation );
    pq.setfocus;
  end;

end;

procedure Tfrm_jysqd.BitBtn5Click( Sender: TObject );
var
  jy_zyh: string;
var
  str1: string;
var
  str2: string;
    v_jybz,v_jybz1: string;
begin
  cdmark := false;
    if pub_yydm='0258' then
  begin
    sp_jysq_dy.Close;
    sp_jysq_dy.Parameters.Refresh;
    sp_jysq_dy.Parameters.ParamByName( '@zyh' ).Value := sp_jyxm.Parameters.ParamByName( '@zyh' ).Value ;
    sp_jysq_dy.Parameters.ParamByName( '@jyfzbh' ).Value := sp_jyxm.Parameters.ParamByName( '@jyfzbh' ).Value;
    sp_jysq_dy.Parameters.ParamByName( '@zxsj' ).Value := sp_jyxm.Parameters.ParamByName( '@zxsj' ).Value;
    sp_jysq_dy.Parameters.ParamByName( '@bqdm' ).Value := sp_jyxm.Parameters.ParamByName( '@bqdm' ).Value;
    sp_jysq_dy.Open;

    sp_jyxm.Filtered:=False;
    sp_jyxm.Filter:='dybz=''√''';
    sp_jyxm.Filtered:=True;

//    sp_jysq_dy1.Close;
//    sp_jysq_dy1.Recordset:=sp_jyxm.Recordset;
//    sp_jysq_dy1.Open;

    sp_jysq_dy.First;
    v_jybz1 := sp_jysq_dy.FieldByName('jybz').AsString;
    while not sp_jysq_dy.Eof do
    begin  
      if v_jybz <> v_jybz1 then
      begin
        sp_jyxm.Filtered:=False;
        sp_jyxm.Filter:='dybz=''√'' and jybz='''+ v_jybz1 +'''';
        sp_jyxm.Filtered:=True;

        if sp_jyxm.RecordCount > 0 then
        begin
          try
            Application.CreateForm(Tfrm_zysf_print_service,frm_zysf_print_service);
            frm_zysf_print_service.printjysqd_dy(sp_jyxm);
          finally
            frm_zysf_print_service.Free;
          end;
          sp_jyxm.First;
          while not sp_jyxm.Eof do
          begin
            DM_data.qry_pub.Close;
            DM_data.qry_pub.SQL.text:='update zybl_zyyz with(rowlock) set ypkcbz=1 where id = '+sp_jyxm.FieldByName('yzid').asstring;
            DM_data.qry_pub.ExecSQL;
            sp_jyxm.Next;
          end;
        end;
        
      end;
      v_jybz := sp_jysq_dy.FieldByName('jybz').AsString;
      sp_jysq_dy.Next;
      v_jybz1 := sp_jysq_dy.FieldByName('jybz').AsString;
    end;
    sp_jyxm.Filtered:=False;
    sp_jyxm.Close;
    sp_jyxm.Parameters.ParamByName( '@zyh' ).Value := sp_jysq_dy.Parameters.ParamByName( '@zyh' ).Value;
    sp_jyxm.Parameters.ParamByName( '@jyfzbh' ).Value := sp_jysq_dy.Parameters.ParamByName( '@jyfzbh' ).Value;
    sp_jyxm.Parameters.ParamByName( '@zxsj' ).Value := sp_jysq_dy.Parameters.ParamByName( '@zxsj' ).Value;
    sp_jyxm.Parameters.ParamByName( '@bqdm' ).Value := sp_jysq_dy.Parameters.ParamByName( '@bqdm' ).Value;
    sp_jyxm.Open;
    Exit;
  end;
  sp_brlb.close;
  sp_brlb.Parameters.Refresh;
  sp_brlb.Parameters.ParamByName( '@zyh' ).Value := sp_jyxm.Parameters.ParamByName( '@zyh' ).Value;
  sp_brlb.Parameters.ParamByName( '@zxsj' ).Value := formatdatetime( 'yyyymmdd', dT_zxsj.Date );
  sp_brlb.Parameters.ParamByName( '@bqdm' ).Value := pub_bqdm;
  if cbbYiDaYin.Text='未打印' then
  begin
  sp_brlb.Open;
  sp_brlb.Filtered:=False;
  sp_brlb.Filter:='jysqddy=''0''';
  sp_brlb.Filtered:=True;
  sp_jyxm.Filtered:=False;
  sp_jyxm.Filter:='dybz=''√'' and jysqddy=0 ';
  sp_jyxm.Filtered:=True;
  end
  else
  begin
  sp_brlb.Open;
  sp_brlb.Filtered:=False;
  sp_brlb.Filter:='jysqddy=''1''';
  sp_brlb.Filtered:=True;
  sp_jyxm.Filtered:=False;
  sp_jyxm.Filter:='dybz=''√'' and jysqddy=1 ';
  sp_jyxm.Filtered:=True;
  end;
  if not sp_brlb.IsEmpty then
  begin
    if pub_yydm=HN_SYRMYY then
    begin
      sp_jyxm.first;
      frm_zysf_print_service.PrintJYSQD(sp_jyxm);
        while not sp_jyxm.eof do
        begin
          DM_data.qry_pub.Close;
          DM_data.qry_pub.SQL.text:='update zybl_zyyz_yzzxqd with(rowlock) set jysqddy=1 where yzid = '+sp_jyxm.FieldByName('yzid').asstring +' and zxsj='+formatdatetime('yyyymmdd',dT_zxsj.Date);
          DM_data.qry_pub.ExecSQL;
          sp_jyxm.Next;
        end;
qbq.onclick(self);
      Exit;
    end;
    sp_brlb.First;
    jy_zyh := '';
    while not sp_brlb.eof do
    begin
      if jy_zyh <> sp_brlb.fieldbyname( 'zyh' ).asstring then
      begin
        if sp_jyxm.RecordCount > 0 then
        begin
          if pub_yydm='0240' then
            frm_zysf_print_service.PrintJYSQD(sp_jyxm)
          else begin
          ql_tmh.Caption := '住院号：' + sp_jyxm.FieldByName( 'tmh' ).AsString;
          ql_brxm.Caption := '姓名：' + sp_jyxm.FieldByName( 'brxm' ).AsString;
          ql_brxb.Caption := '性别：' + sp_jyxm.FieldByName( 'brxb' ).AsString;
          ql_bch.Caption := '病床号：' + sp_jyxm.FieldByName( 'bch' ).AsString;
          QRLabel2.Caption := '科室：' + pub_ksmc;
          ql_zd.Caption := '入院诊断:' + sp_jyxm.FieldByName( 'ryzd' ).AsString;
          QRL_yymc_zy.Caption := pub_yymc + '检验申请单';
          QRLabel19.Caption := '执行日期:' + formatdatetime( 'yyyy-MM-dd', dt_zxsj.DateTime );
          DM_data.qry_pub.Close;
          DM_data.qry_pub.SQL.text:='select a.*,b.mc zgysmc from zysf_zydj a,sys_czy b where a.zyh='+''''+sp_brlb.fieldbyname( 'zyh' ).asstring+''''+' and a.zgys=b.dm';
          DM_data.qry_pub.Open;
          QRLabel22.Caption := '医生签名：'+DM_data.qry_pub.FieldByName('zgysmc').AsString;
          QuickRep2.Print;
          end;
        end;
        sp_jyxm.First;
        while not sp_jyxm.eof do
        begin
          DM_data.qry_pub.Close;
          DM_data.qry_pub.SQL.text:='update zybl_zyyz_yzzxqd with(rowlock) set jysqddy=1 where yzid = '+sp_jyxm.FieldByName('yzid').asstring +' and zxsj='+formatdatetime('yyyymmdd',dT_zxsj.Date);
          DM_data.qry_pub.ExecSQL;
          sp_jyxm.Next;
        end;
        sp_jyxm.Filtered:=False;
        jy_zyh := sp_brlb.fieldbyname( 'zyh' ).asstring;
      end;
      sp_brlb.Next;
    end
  end
  else
  begin
    application.messagebox( '查询结果为空，请重新查询！', '提示', mb_ok + mb_iconinformation );
    pq.setfocus;
  end;
qbq.onclick(self);

  

end;

procedure Tfrm_jysqd.cbbYiDaYinChange(Sender: TObject);
var
  GuoLv:string;
begin
  if sp_jyxm.Active then
  begin
    GuoLv := trim(cbbYiDaYin.Text);
    sp_jyxm.Filtered := False;
    if GuoLv='未打印' then
    begin
      sp_jyxm.Filter := 'jysqddy=0';
      sp_jyxm.Filtered := True;
      sp_brlb.Filter:='jysqddy=0';
      sp_brlb.Filtered := True;
    end
    else if GuoLv='已打印' then
    begin
      sp_jyxm.Filter := 'jysqddy=1';
      sp_jyxm.Filtered := True;
      sp_brlb.Filter:='jysqddy=1';
      sp_brlb.Filtered := True;
    end;
  end;
end;

procedure Tfrm_jysqd.DBGridEh1CellClick(Column: TColumnEh);
begin
sp_jyxm.Edit;
if Trim(sp_jyxm.FieldByName('dybz').AsString)='√' then
begin
   sp_jyxm.FieldByName('dybz').AsString:='';
end
else
begin
   sp_jyxm.FieldByName('dybz').AsString:='√';
end;
sp_jyxm.Post;


end;

procedure Tfrm_jysqd.dt_zxsjChange( Sender: TObject );
begin
  if  abr.Checked then
    pq.SetFocus
  else
    if qbq.Checked then
      qbq.onClick( sender );
end;

end.

