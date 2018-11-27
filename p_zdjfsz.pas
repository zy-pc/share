unit p_zdjfsz;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, GridsEh, DBGridEh, Grids, DBGrids, Mask, DBCtrls, ExtCtrls,
  DB, ADODB, Buttons, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, cxCheckBox, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, DBGridEhGrouping;

type
  Tfrm_zdjfsz = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label14: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    tmh: TEdit;
    fylb: TEdit;
    zfy: TEdit;
    zyj: TEdit;
    bch: TEdit;
    zzf: TEdit;
    syje: TEdit;
    RYRQ: TEdit;
    kdks: TEdit;
    kdys: TEdit;
    czks: TEdit;
    czys: TEdit;
    bz: TEdit;
    zdqf: TEdit;
    Edit1: TEdit;
    Panel3: TPanel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    fydm: TEdit;
    gg: TDBEdit;
    sfbz: TEdit;
    sl: TDBEdit;
    je: TDBEdit;
    fydmgrid: TDBGrid;
    DBGridEh2: TDBGridEh;
    ds_brxx: TDataSource;
    qry_brxx: TADOQuery;
    sp_cx_zybrjbqk: TADOStoredProc;
    ds_sfmx: TDataSource;
    ad_zyfymx_ls: TADODataSet;
    ad_zyfymx_lsid: TAutoIncField;
    ad_zyfymx_lstmh: TStringField;
    ad_zyfymx_lszyh: TStringField;
    ad_zyfymx_lskdks: TStringField;
    ad_zyfymx_lsczks: TStringField;
    ad_zyfymx_lskdys: TStringField;
    ad_zyfymx_lsczys: TStringField;
    ad_zyfymx_lsfydm: TStringField;
    ad_zyfymx_lsfysl: TIntegerField;
    ad_zyfymx_lsfyje: TBCDField;
    ad_zyfymx_lszkje: TBCDField;
    ad_zyfymx_lsssje: TBCDField;
    ad_zyfymx_lszfje: TBCDField;
    ad_zyfymx_lssfczy: TStringField;
    ad_zyfymx_lssfrq: TDateTimeField;
    ad_zyfymx_lssjbh: TStringField;
    ad_zyfymx_lscfbh: TStringField;
    ad_zyfymx_lstfbz: TBooleanField;
    ad_zyfymx_lstfczy: TStringField;
    ad_zyfymx_lstfrq: TDateTimeField;
    ad_zyfymx_lsjzbz: TBooleanField;
    ad_zyfymx_lsjsbz: TBooleanField;
    ad_zyfymx_lsjsdh: TStringField;
    ad_zyfymx_lsbz: TStringField;
    ad_zyfymx_lsfydmmc: TStringField;
    ad_zyfymx_lsph: TStringField;
    ad_zyfymx_lssbfybl: TFloatField;
    ad_zyfymx_lsbxfybl: TFloatField;
    ad_zyfymx_lshtfybl: TFloatField;
    ad_zyfymx_lssbfybl01: TFloatField;
    ad_zyfymx_lssbfybl02: TFloatField;
    ad_sfxm: TADODataSet;
    sp_cx_czyks: TADOStoredProc;
    ksys_grid: TDBGrid;
    ds_ysks: TDataSource;
    B_ENTER: TBitBtn;
    B_giveup: TBitBtn;
    B_FINAL: TBitBtn;
    ds_cx_sfxm: TDataSource;
    sp_cx_sfxm: TADOStoredProc;
    dbgrideh1: TcxGrid;
    dbgrideh1DBTableView1: TcxGridDBTableView;
    dbgrideh1DBTableView1Column7: TcxGridDBColumn;
    dbgrideh1DBTableView1Column1: TcxGridDBColumn;
    dbgrideh1DBTableView1Column2: TcxGridDBColumn;
    dbgrideh1DBTableView1Column3: TcxGridDBColumn;
    dbgrideh1DBTableView1Column4: TcxGridDBColumn;
    dbgrideh1DBTableView1Column5: TcxGridDBColumn;
    dbgrideh1DBTableView1Column6: TcxGridDBColumn;
    dbgrideh1Level1: TcxGridLevel;
    procedure FormShow(Sender: TObject);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure displayvalue;
    procedure kdksKeyPress(Sender: TObject; var Key: Char);
    procedure kdksExit(Sender: TObject);
    procedure ksprocess( tempedit: Tedit; var pri_var: string );
    procedure ksys_gridExit(Sender: TObject);
    procedure ksys_gridKeyPress(Sender: TObject; var Key: Char);
    procedure kdyskdks( cledit: Tedit; var dm: string );
    procedure kdysExit(Sender: TObject);
    procedure kdysKeyPress(Sender: TObject; var Key: Char);
    procedure ysprocess( tempedit: Tedit; var pri_var: string );
    procedure czksExit(Sender: TObject);
    procedure czksKeyPress(Sender: TObject; var Key: Char);
    procedure czysExit(Sender: TObject);
    procedure czysKeyPress(Sender: TObject; var Key: Char);
    procedure fydmEnter(Sender: TObject);
    procedure fydmExit(Sender: TObject);
    procedure fydmKeyPress(Sender: TObject; var Key: Char);
    procedure sfxmwriteIn;
    procedure dispysks( tempedit: Tedit; dm: string; czfs: integer; var pri_var: string );
    procedure fydmgridKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure fydmgridDblClick(Sender: TObject);
    procedure fydmgridExit(Sender: TObject);
    procedure ggKeyPress(Sender: TObject; var Key: Char);
    procedure sfbzExit(Sender: TObject);
    procedure sfbzKeyPress(Sender: TObject; var Key: Char);
    procedure slEnter(Sender: TObject);
    procedure slExit(Sender: TObject);
    procedure slKeyPress(Sender: TObject; var Key: Char);
    procedure jeEnter(Sender: TObject);
    procedure jeExit(Sender: TObject);
    procedure jeKeyPress(Sender: TObject; var Key: Char);
    procedure B_FINALClick(Sender: TObject);
    procedure B_ENTERClick(Sender: TObject);
    procedure B_giveupClick(Sender: TObject);
    procedure qry_brxxBeforeScroll(DataSet: TDataSet);
    procedure DBGridEh2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbgrideh1DBTableView1CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure dbgrideh1DBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_zdjfsz: Tfrm_zdjfsz;
  lskey, ph, xycf_bh, v_zyh, v_ypmc, pri_kdks, pri_kdys, pri_czks, pri_czys, pri_fylb: string;
  ysksischange: boolean; //表示从开单科室出来时科室有无变化


implementation
uses p_dm,p_func;


{$R *.dfm}

procedure Tfrm_zdjfsz.B_ENTERClick(Sender: TObject);
var
  i: integer;
  returnvalue: string;
  zqbcbz: boolean; //zyfymx_ls保存正确时置此标志
begin
  //写入zysf_zyfymx_ls
  //为各划价着手费标志
  //将临时表写入正式表
  //转入姓名处理下一人
  if ad_zyfymx_ls.Active=true then
  begin
    if ad_zyfymx_ls.RecordCount<1  then
    begin
      DBGridEh1.SetFocus;
      Exit;
    end;
  end
  else
  begin
    DBGridEh1.SetFocus;
    Exit;
  end;
  
  if ( ad_zyfymx_ls.fieldbyname( 'fysl' ).asinteger = 0 ) or ( ad_zyfymx_ls.fieldbyname( 'fyje' ).asfloat = 0 ) then
  begin
    application.MessageBox( '数量或金额为0，请核对无误后重新输入', '提示', MB_OK + MB_ICONINFORMATION );
    sl.SetFocus;
  end
  else
  begin
    if ( ad_zyfymx_ls.state = dsedit ) or ( ad_zyfymx_ls.state = dsinsert ) then
      ad_zyfymx_ls.post;

    ad_zyfymx_ls.First;
    while not ad_zyfymx_ls.eof do
    begin
      if (ad_zyfymx_ls.FieldByName('czks').asstring='0000') or
       (trim(ad_zyfymx_ls.FieldByName('czks').asstring)='')  then
      begin
        ad_zyfymx_ls.Edit;
        ad_zyfymx_ls.FieldByName('czks').asstring:=ad_zyfymx_ls.FieldByName('kdks').asstring;
        ad_zyfymx_ls.Post;
      end;
      ad_zyfymx_ls.Next;
    end;

    dm_data.ado_mydata.BeginTrans;
    try
      ad_zyfymx_ls.UpdateBatch( arall );
      zqbcbz := true;
      dm_data.ado_mydata.CommitTrans;
    except
      dm_data.ado_mydata.RollbackTrans;
      Application.MessageBox( '数据没有正确保存，请再次选择计费功能保存', '错误', MB_ok + MB_DEFBUTTON1 + MB_ICONERROR )
    end;
  end;
  DBGridEh1.SetFocus;
  qry_brxx.close;
  qry_brxx.SQL.text:='select a.zyh,a.tmh,a.brxm,a.brxb,b.yybch,isnull(c.sfsz,''否'') sfsz,d.mc zgysmc,brnl from zysf_zydj a,sys_kscwsz b,(select distinct zyh,''是'' sfsz'+
  ' from zysf_zyfymx_zdjf ) c,sys_czy d'+
  ' where a.zyh=b.zyh and b.bqdm='+''''+pub_bqdm+''''+' and a.zyh*=c.zyh and a.zgys*=d.dm and a.cybz=0 order by b.yybch';
  qry_brxx.Open;
  qry_brxx.Locate('zyh',v_zyh,[]);
end;

procedure Tfrm_zdjfsz.B_FINALClick(Sender: TObject);
begin
  close;
end;

procedure Tfrm_zdjfsz.B_giveupClick(Sender: TObject);
begin
  if ad_zyfymx_ls.RecordCount > 0 then
  begin
    if application.messagebox( '是否清除临时表数据？', '提示', mb_yesNo + mb_iconinformation ) = IDyes then
    begin
      ad_zyfymx_ls.First;
      while not ad_zyfymx_ls.Eof do
      begin
        ad_zyfymx_ls.Delete;
      end;
      ad_zyfymx_ls.UpdateBatch( arall );
    end;
  end;
  DBGridEh1.SetFocus;
////  b_giveup.setfocus;
//  B_ENTER.Enabled := false;
//  b_giveup.Enabled := false;
//  panel1.Enabled := true;
//  fydm.text := '';
////  tmh.text := '';
//  tmh.setfocus;
end;

procedure Tfrm_zdjfsz.czksExit(Sender: TObject);
begin
//  if ( pub_yydm = '0124' ) or ( pub_yydm = '0137' ) or ( pub_yydm = '0013' )
//      or (pub_yydm = '0031') then
    ysksischange := true;
  if ysksischange then
    ksprocess( czks, pri_czks );
end;

procedure Tfrm_zdjfsz.czksKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
        SelectNext( activeControl, true, true );
  end;
end;

procedure Tfrm_zdjfsz.czysExit(Sender: TObject);
begin
  if ysksischange then
    ysprocess( czys, pri_czys )
  else
    fydm.setfocus;
end;

procedure Tfrm_zdjfsz.czysKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
      SelectNext( activeControl, true, true );
  end
  else
    if ( key in ['A'..'z'] ) or ( key in ['0'..'9'] ) or ( ord( key ) > 127 ) then
    begin
      ysksischange := true;
    end
end;

procedure Tfrm_zdjfsz.dbgrideh1DBTableView1CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  bch.Text := '';
  fylb.Text := '';
  ryrq.Text := '';
  zfy.text := '0';
  zyj.text := '0';
  zzf.text := '0';
  syje.text := '0';
  fydm.Text := '';
  with sp_cx_zybrjbqk do
  begin
    Close;
    sp_cx_zybrjbqk.parameters.ParamByName( '@tmh' ).value := trim( qry_brxx.FieldByName('tmh').asstring );
    sp_cx_zybrjbqk.parameters.ParamByName( '@xm' ).value := trim(qry_brxx.FieldByName('brxm').asstring);
    sp_cx_zybrjbqk.parameters.ParamByName( '@bch' ).value := trim( qry_brxx.FieldByName('yybch').asstring );
    sp_cx_zybrjbqk.parameters.ParamByName( '@ksdm' ).value := pub_bqdm;
    sp_cx_zybrjbqk.parameters.ParamByName( '@zyh' ).value := trim( qry_brxx.FieldByName('zyh').asstring );
    active := true;
  end;
  sp_cx_zybrjbqk.Filtered:=false;
  sp_cx_zybrjbqk.Filter:=' zyh ='+''''+trim( qry_brxx.FieldByName('zyh').asstring )+'''';
  sp_cx_zybrjbqk.Filtered:=true;
  displayvalue;
end;

procedure Tfrm_zdjfsz.dbgrideh1DBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if AViewInfo.GridRecord.Values[6]='是' then
    ACanvas.Canvas.brush.color := clGreen;
end;

procedure Tfrm_zdjfsz.displayvalue;
begin
//  dispinit := true;
//  qhbz := false;
  tmh.text := sp_cx_zybrjbqk.fieldbyname( 'tmh' ).asstring;
  Edit1.text := sp_cx_zybrjbqk.fieldbyname( 'brxm' ).asstring;
  DM_data.qry_pub.Close;
  DM_data.qry_pub.SQL.text := 'select * from sys_kscwsz where bqdm=' + '''' + pub_bqdm + '''' + ' and bcbh=' + '''' + trim( sp_cx_zybrjbqk.fieldbyname( 'bch' ).asstring ) + '''';
  DM_data.qry_pub.Open;
  bch.text := DM_data.qry_pub.fieldbyname( 'yybch' ).asstring;
  fylb.text := sp_cx_zybrjbqk.fieldbyname( 'lbmc' ).asstring;
  RYRQ.TEXT := datetostr( sp_cx_zybrjbqk.fieldbyname( 'ryrq' ).asdatetime );
  zyj.text := format( '%3.2f', [sp_cx_zybrjbqk.fieldbyname( 'yjze' ).asfloat] );
  zfy.text := format( '%3.2f', [sp_cx_zybrjbqk.fieldbyname( 'zfy' ).asfloat] );
  zzf.text := format( '%3.2f', [sp_cx_zybrjbqk.fieldbyname( 'zfze' ).asfloat] );
  syje.text := format( '%3.2f', [sp_cx_zybrjbqk.fieldbyname( 'yjze' ).asfloat - sp_cx_zybrjbqk.fieldbyname( 'zfze' ).asfloat] );
  bz.text := sp_cx_zybrjbqk.fieldbyname( 'ryzd' ).asstring;
  if sp_cx_zybrjbqk.fieldbyname( 'zdjf' ).asfloat > 100000 then
    zdqf.text := '*********'
  else
    zdqf.text := format( '%3.2f', [sp_cx_zybrjbqk.fieldbyname( 'zdjf' ).asfloat] );
  v_zyh := sp_cx_zybrjbqk.fieldbyname( 'zyh' ).asstring;
  ad_zyfymx_ls.DisableControls;
  ph := get_sjh( pub_czydm );
  ad_zyfymx_ls.Close;
  ad_zyfymx_ls.commandtext := 'select * from zysf_zyfymx_zdjf where zyh=' + #39 + v_zyh + #39;
  ad_zyfymx_ls.open;

  while not ad_zyfymx_ls.Eof do
  begin
    ad_zyfymx_ls.Edit;
    ad_zyfymx_ls.FieldByName( 'ph' ).Value := ph;
    ad_zyfymx_ls.FieldByName( 'sfrq' ).Value := frm_func.curr_date;
    ad_zyfymx_ls.Post;
    ad_zyfymx_ls.Next;
  end;
  ad_zyfymx_ls.EnableControls;
  pri_kdks := sp_cx_zybrjbqk.fieldbyname( 'ksdm' ).asstring;
  pri_kdys := sp_cx_zybrjbqk.fieldbyname( 'zgys' ).asstring;
  kdks.text := sp_cx_zybrjbqk.fieldbyname( 'ksmc' ).asstring;
  kdys.text := sp_cx_zybrjbqk.fieldbyname( 'ysxm' ).asstring;
  kdys.setfocus;

end;

procedure Tfrm_zdjfsz.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if ( Trim(frm_zdjfsz.qry_brxx.fieldbyname( 'yybch' ).asstring) = '0001' ) then
  begin
    DBGridEh1.canvas.brush.color := $00E2BC6D;
  end;

//    if Trim(DBGridEh1.Columns[5].DisplayText)='是' then
//    DBGridEh1.canvas.brush.color := $00E2BC6D;
end;

procedure Tfrm_zdjfsz.DBGridEh2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 27 then
  begin
    if ad_zyfymx_ls.state = dsedit then
      ad_zyfymx_ls.Post;
    if not ad_zyfymx_ls.isempty then
    begin
      ad_zyfymx_ls.delete;
    end;
  end;
  if key = 46 then
  begin
    ad_zyfymx_ls.Delete;
  end;
end;

procedure Tfrm_zdjfsz.FormShow(Sender: TObject);
begin
  qry_brxx.close;
  qry_brxx.SQL.text:='select a.zyh,a.tmh,a.brxm,a.brxb,b.yybch,isnull(c.sfsz,''否'') sfsz,d.mc zgysmc,brnl from zysf_zydj a,sys_kscwsz b,(select distinct zyh,''是'' sfsz'+
  ' from zysf_zyfymx_zdjf ) c,sys_czy d'+
  ' where a.zyh=b.zyh and b.bqdm='+''''+pub_bqdm+''''+' and a.zyh*=c.zyh and a.zgys*=d.dm and a.cybz=0 order by b.yybch';
  qry_brxx.Open;

end;

procedure Tfrm_zdjfsz.fydmEnter(Sender: TObject);
begin
  if ( ( ad_zyfymx_ls.fieldbyname( 'fysl' ).asinteger = 0 ) or ( ad_zyfymx_ls.fieldbyname( 'fyje' ).asfloat = 0 ) ) and ( not ad_zyfymx_ls.IsEmpty ) then
    ad_zyfymx_ls.delete;
end;

procedure Tfrm_zdjfsz.fydmExit(Sender: TObject);
var
  fydmstr: string;
begin
  if  b_enter.Focused or B_giveup.Focused or ( trim( fydm.text ) = '' ) then
  begin
    abort;
  end;
  fydmstr := trim( fydm.text );
  if not ( b_enter.Focused or b_final.Focused or dbgrideh2.Focused or b_giveup.focused
    or kdys.focused or kdks.focused or czks.Focused or czys.focused or B_giveup.focused or tmh.focused ) then
    sp_cx_sfxm.Close;
  sp_cx_sfxm.Parameters.ParamByName( '@fydm' ).value := fydmstr;
  sp_cx_sfxm.Parameters.ParamByName( '@fymc' ).value := fydmstr;
  sp_cx_sfxm.Parameters.ParamByName( '@bqdm' ).value := pub_bqdm;
  sp_cx_sfxm.Parameters.ParamByName( '@pym' ).value := fydmstr;
  sp_cx_sfxm.Open;
  if sp_cx_sfxm.IsEmpty then
  begin
    application.MessageBox( '没有找到该收费项目，请验证无误后重新输入！', '错误',
      MB_OK + MB_ICONERROR );
    fydm.setfocus;
  end
  else
    if sp_cx_sfxm.recordcount > 1 then
      fydmgrid.setfocus
    else
      if sp_cx_sfxm.recordcount = 1 then
      begin
        fydmstr := sp_cx_sfxm['fydm'];
        if trim(sp_cx_sfxm.fieldbyname( 'zyksgs' ).asstring) <> '' then
          pri_czks := sp_cx_sfxm['zyksgs']
        else
        begin
          DM_data.qry_pub.Close;
          DM_data.qry_pub.SQL.text:='select * from sys_ksdm where sybz=1 and rtrim(mc)='+''''+
                                    Trim(czks.text)+'''';
          DM_data.qry_pub.open;
          if DM_data.qry_pub.IsEmpty then
            pri_czks := pri_kdks
          else
            pri_czks := Trim(DM_data.qry_pub.FieldByName('dm').asstring);
        end;
        sfxmwriteIn;
      end;
  fydm.Text := '';
end;

procedure Tfrm_zdjfsz.fydmgridDblClick(Sender: TObject);
begin
  if not sp_cx_sfxm.IsEmpty then sl.setfocus;
end;

procedure Tfrm_zdjfsz.fydmgridExit(Sender: TObject);
var
  fydmstr: string;
begin

  if not ( b_final.focused or fydm.Focused ) then
  begin
      fydmstr := sp_cx_sfxm['fydm'];
        if trim(sp_cx_sfxm.fieldbyname( 'zyksgs' ).asstring) <> '' then
          pri_czks := sp_cx_sfxm['zyksgs']
        else
        begin
          DM_data.qry_pub.Close;
          DM_data.qry_pub.SQL.text:='select * from sys_ksdm where sybz=1 and rtrim(mc)='+''''+
                                    Trim(czks.text)+'''';
          DM_data.qry_pub.open;
          if DM_data.qry_pub.IsEmpty then
            pri_czks := pri_kdks
          else
            pri_czks := Trim(DM_data.qry_pub.FieldByName('dm').asstring);
        end;
    sfxmwriteIn;
  end;

end;

procedure Tfrm_zdjfsz.fydmgridKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  ls: integer;
begin
  ls := key;
  if key = 27 then
  begin
    fydm.setfocus;
    lskey := '';
  end
  else
    if key = 13 then
    begin
        SelectNext( activeControl, true, true );
      lskey := '';
    end
    else
      if ( ls >= 48 ) and ( ls <= 57 ) then
      begin
        lskey := lskey + inttostr( ls - 48 );
        if sp_cx_sfxm.Locate( 'fydm', lskey, [] ) then
        begin
          fydm.setfocus;
          lskey := '';
        end;
      end
      else
        if ( ls >= 96 ) and ( ls <= 105 ) then
        begin
          lskey := lskey + inttostr( ls - 96 );
          if sp_cx_sfxm.Locate( 'fydm', lskey, [] ) then
          begin
            fydm.setfocus;
            lskey := '';
          end;
        end;
end;


procedure Tfrm_zdjfsz.sfbzExit(Sender: TObject);
begin
  try
    if sl.Text <> '' then
    begin
      je.Text := floattostr( strtofloat( sl.Text ) * strtofloat( sfbz.Text ) );

    end;
  finally

  end;
end;

procedure Tfrm_zdjfsz.sfbzKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
   sl.SetFocus;
  end;
end;

procedure Tfrm_zdjfsz.sfxmwriteIn;
begin
  if not ad_zyfymx_ls.active then
  begin
    ad_zyfymx_ls.Close;
    ad_zyfymx_ls.commandtext := 'select * from zysf_zyfymx_zdjf where  zyh=' + #39 + sp_cx_zybrjbqk['zyh'] + #39;
    ad_zyfymx_ls.open;
  end;
  if ( ad_zyfymx_ls.isempty ) or ( trim( ad_zyfymx_ls.FieldByName( 'fydm' ).asstring ) <> '' ) then
    ad_zyfymx_ls.append
  else
    if ( not ad_zyfymx_ls.isempty ) and ( trim( ad_zyfymx_ls.FieldByName( 'fydm' ).asstring ) = '' ) then
      ad_zyfymx_ls.edit;
  ad_zyfymx_ls['fydm'] := sp_cx_sfxm['fydm'];
  ad_zyfymx_ls['zyh'] := sp_cx_zybrjbqk['zyh'];
  ad_zyfymx_ls['tmh'] := sp_cx_zybrjbqk['tmh'];
  ad_zyfymx_ls['kdks'] := pri_kdks;
  ad_zyfymx_ls['kdys'] := pri_kdys;
//  if trim( sp_cx_sfxm.fieldbyname( 'zyksgs' ).asstring ) <> '' then
//    ad_zyfymx_ls['czks'] := sp_cx_sfxm['zyksgs']
//  else
//  begin
////    if pri_czks<>'' then
////    ad_zyfymx_ls['czks'] := pri_czks
////    else
////    ad_zyfymx_ls['czks'] := pri_kdks;
//    if pri_czys<>'' then
//    begin
//      DM_data.qry_pub.close;
//      DM_data.qry_pub.SQL.text:='select * from sys_czy where sybz=1 and dm='+''''+pri_czys+'''';
//      DM_data.qry_pub.Open;
//      ad_zyfymx_ls['czks'] := DM_data.qry_pub['ksdm'];
//    end
//    else
//    begin
//      ad_zyfymx_ls['czks'] := pri_kdks;
//    end;
//  end;
  ad_zyfymx_ls['czks'] := pri_czks;
  dispysks( czks, pri_czks, 2, pri_czks );
  ad_zyfymx_ls['czys'] := pri_czys;
  ad_zyfymx_ls['sfczy'] := pub_czydm;
  ad_zyfymx_ls['cfbh'] := xycf_bh;
  ad_zyfymx_ls['sfrq'] := frm_func.curr_date( );
  ad_zyfymx_ls['ph'] := ph;
  sfbz.text := format( '%3.2f', [sp_cx_sfxm.fieldbyname( 'sfbz' ).asfloat] );

  if ( sp_cx_sfxm['sfbz'] > 0 ) and ( pub_sfsdsfbz ) then
  begin
    sfbz.ReadOnly := True;
    je.ReadOnly := true;
  end
  else
  begin
    sfbz.ReadOnly := false;
    je.ReadOnly := false;
  end;
  sl.SetFocus;
// fydm.text := trim(sp_cx_sfxm['fymc']);
//  xmbz.text := trim( sp_cx_sfxm.fieldbyname( 'bak' ).asstring );
end;

procedure Tfrm_zdjfsz.slEnter(Sender: TObject);
begin
  sl.text := '1';
  sl.SelectAll;
  sl.SetFocus;
  ad_zyfymx_ls.edit;
  ad_zyfymx_ls.FieldByName( 'bz' ).Value := sp_cx_sfxm.FieldByName( 'sfbz' ).AsString;
end;

procedure Tfrm_zdjfsz.slExit(Sender: TObject);
begin
  if not ( b_final.Focused or fydm.Focused or B_giveup.Focused) then
  begin
    if ( sl.Text <> '' ) and ( sl.Text <> '0' )  then
    begin
      ad_zyfymx_ls.edit;
      ad_zyfymx_ls['fysl'] := strtofloat( sl.text );
      ad_zyfymx_ls['fyje'] := ad_zyfymx_ls['fysl'] * StrToFloat(sfbz.text);
      if trim( sp_cx_zybrjbqk.fieldbyname( 'zfzdmc' ).asstring ) <> '' then
      begin
        if sp_cx_zybrjbqk.fieldbyname( 'ybndzje' ).asfloat - sp_cx_zybrjbqk.fieldbyname( 'zfy' ).asfloat > 0 then /////-strtofloat(bcje.text)
          ad_zyfymx_ls['zfje'] := ad_zyfymx_ls['fyje'] * ad_zyfymx_ls[trim( sp_cx_zybrjbqk.fieldbyname( 'zfzdmc' ).asstring )] / 100
        else
          ad_zyfymx_ls['zfje'] := ad_zyfymx_ls['fyje'];
      end
      else
        ad_zyfymx_ls['zfje'] := ad_zyfymx_ls['fysl'] * strtofloat( sfbz.text );
    end
    else
    begin
      application.MessageBox( '数量为0，请核对无误后重新输入', '提示', MB_OK + MB_ICONINFORMATION );
      sl.SelectAll;
      sl.setfocus;
    end;
  end;

end;

procedure Tfrm_zdjfsz.slKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
      SelectNext( activeControl, true, true );
  end
  else
    if ( key in ['A'..'z'] ) or ( key in ['0'..'9'] ) or ( ord( key ) > 127 ) then
    begin
      ysksischange := true;
    end
    else
      if ( key = #27 ) and ( ( rsNew in ad_zyfymx_ls.RecordStatus ) or ( rsModified in ad_zyfymx_ls.RecordStatus ) ) then
      begin
        ad_zyfymx_ls.post;
        ad_zyfymx_ls.delete;
        fydm.SetFocus;
      end
end;

procedure Tfrm_zdjfsz.dispysks( tempedit: Tedit; dm: string; czfs: integer; var pri_var: string );
begin
  if trim( dm ) <> '' then
  begin
    sp_cx_czyks.Close;
    sp_cx_czyks.Parameters.ParamByName( '@srm' ).value := trim( dm );
    sp_cx_czyks.Parameters.ParamByName( '@czfs' ).value := czfs;
    sp_cx_czyks.Parameters.ParamByName( '@kssx' ).value := '09';
    sp_cx_czyks.Open;
    tempedit.text := sp_cx_czyks.fieldbyname( 'mc' ).asstring;
    pri_var := trim( dm );
  end
  else
  begin
    pri_var := '';
    tempedit.text := '';
  end;
end;

procedure Tfrm_zdjfsz.fydmKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
        SelectNext( activeControl, true, true );
  end;
end;

procedure Tfrm_zdjfsz.ggKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
        SelectNext( activeControl, true, true );
  end;
end;

procedure Tfrm_zdjfsz.jeEnter(Sender: TObject);
begin
  if ( ad_zyfymx_ls.FieldByName( 'bz' ).AsFloat <> 0 ) and ( pub_sfsdsfbz ) then
  begin
    je.ReadOnly := true;
  end
  else
  begin
    je.ReadOnly := false;
  end;
end;

procedure Tfrm_zdjfsz.jeExit(Sender: TObject);
begin
  if not ( b_final.Focused or fydm.focused or tmh.focused ) then
  begin
    if length( trim( je.text ) ) = 0 then
    begin
      application.MessageBox( '注意:金额不能为空!', '错误', mb_ok + mb_iconerror );
      je.SelectAll;
      je.setfocus;
      abort;
    end;
    if strtofloat( je.Text ) > 0 then
    begin
      fydm.setfocus;

      ad_zyfymx_ls.post;
      //   sp_cx_sfxm.close;
    end
    else
    begin
      application.MessageBox( '注意:金额为0!', '错误', mb_ok + mb_iconerror );
      je.SelectAll;
      je.setfocus;
    end;
  end
  else // 当金额为零又把输入点切换到费用代码，条码号，退出地方时，检查金额
  begin
    if ( ad_zyfymx_ls.FieldByName( 'fyje' ).AsFloat <= 0 ) then
      ad_zyfymx_ls.Delete;
  end;
  fydm.setfocus;
end;

procedure Tfrm_zdjfsz.jeKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
      SelectNext( activeControl, true, true );
  end
  else
    if ( key in ['A'..'z'] ) or ( key in ['0'..'9'] ) or ( ord( key ) > 127 ) then
    begin
      ysksischange := true;
    end
    else
      if ( key = #27 ) and ( ( rsNew in ad_zyfymx_ls.RecordStatus ) or ( rsModified in ad_zyfymx_ls.RecordStatus ) ) then
      begin
        ad_zyfymx_ls.post;
        ad_zyfymx_ls.delete;
        fydm.SetFocus;
      end
end;

procedure Tfrm_zdjfsz.kdksExit(Sender: TObject);
begin
  ysksischange:=True;
  if ysksischange then ksprocess( kdks, pri_kdks );
end;

procedure Tfrm_zdjfsz.ksprocess( tempedit: Tedit; var pri_var: string );
begin
  sp_cx_czyks.Close;
  sp_cx_czyks.Parameters.ParamByName( '@srm' ).value := trim( tempedit.Text );
  sp_cx_czyks.Parameters.ParamByName( '@czfs' ).value := 2;
  sp_cx_czyks.Parameters.ParamByName( '@kssx' ).value := '09';
  sp_cx_czyks.Open;
  ysksischange := false;
  if sp_cx_czyks.IsEmpty then
  begin
    application.MessageBox( '科室代码输入错误，请重新输入', '错误', mb_ok + mb_iconerror );
    tempedit.setfocus;
  end
  else
    if sp_cx_czyks.recordcount > 1 then
    begin
      ksys_grid.Columns.Clear;
      ksys_grid.Columns.add;
      ksys_grid.Columns[0].field := sp_cx_czyks.fieldlist[0];
      ksys_grid.Columns[0].title.caption := '代码';
      ksys_grid.Columns.add;
      ksys_grid.Columns[1].field := sp_cx_czyks.fieldlist[1];
      ksys_grid.Columns[1].title.caption := '科室名称';
      ksys_grid.Columns.add;
      ksys_grid.Columns[2].field := sp_cx_czyks.fieldlist[2];
      ksys_grid.Columns[2].title.caption := '拼音缩写';
      ksys_grid.tag := tempedit.tag;
      ksys_grid.left := tempedit.left;
      ksys_grid.top := tempedit.top + tempedit.Height + Panel3.top;
      ksys_grid.visible := true;
      ksys_grid.setfocus;
    end
    else
      if sp_cx_czyks.recordcount = 1 then
      begin
        kdyskdks( tempedit, pri_var )

      end
end;

procedure Tfrm_zdjfsz.ksys_gridExit(Sender: TObject);
begin
  if ksys_grid.tag = kdks.tag then
    kdyskdks( kdks, pri_kdks )
  else
    if ksys_grid.tag = kdys.tag then
    begin
      kdyskdks( kdys, pri_kdys );
      czys.setfocus;
    end
    else
      if ksys_grid.tag = CZKS.tag then
      begin
        kdyskdks( CZKS, pri_CZKS );
        czys.setfocus;
      end

      else
        if ksys_grid.tag = CZYS.tag then
        begin
          kdyskdks( CZYS, pri_CZys );
          fydm.setfocus;
        end
end;

procedure Tfrm_zdjfsz.kdysExit(Sender: TObject);
begin
  if (Trim(kdys.text)='') and (not B_FINAL.Focused) then
  begin
    application.MessageBox( '没有录入开单医生代码！', '错误', mb_ok + mb_iconerror );
    kdys.SetFocus;
    Exit;
  end;
  if ysksischange then
    ysprocess( kdys, pri_kdys );
end;


procedure Tfrm_zdjfsz.ysprocess( tempedit: Tedit; var pri_var: string );
begin
  sp_cx_czyks.Close;
  sp_cx_czyks.Parameters.ParamByName( '@srm' ).value := trim( tempedit.Text );
  sp_cx_czyks.Parameters.ParamByName( '@czfs' ).value := 1;
  sp_cx_czyks.Parameters.ParamByName( '@kssx' ).value := '09';
  sp_cx_czyks.Open;
  ysksischange := false;
  if sp_cx_czyks.IsEmpty then
  begin
    application.MessageBox( '医生代码输入错误，请重新输入', '错误', mb_ok + mb_iconerror );
    tempedit.setfocus;
  end
  else
    if sp_cx_czyks.recordcount > 1 then
    begin
      ksys_grid.Columns.Clear;
      ksys_grid.Columns.add;
      ksys_grid.Columns[0].field := sp_cx_czyks.fieldlist[0];
      ksys_grid.Columns[0].title.caption := '代码';
      ksys_grid.Columns.add;
      ksys_grid.Columns[1].field := sp_cx_czyks.fieldlist[1];
      ksys_grid.Columns[1].title.caption := '姓名';
      ksys_grid.Columns.add;
      ksys_grid.Columns[2].field := sp_cx_czyks.fieldlist[2];
      ksys_grid.Columns[2].title.caption := '拼音缩写';
      if ksys_grid.width + tempedit.left > panel1.width then
        ksys_grid.left := tempedit.left - ksys_grid.width + tempedit.width
      else
        ksys_grid.left := tempedit.left;
      ksys_grid.tag := tempedit.tag;
      ksys_grid.top := tempedit.top + tempedit.Height;
      ksys_grid.visible := true;
      ksys_grid.setfocus;
    end
    else
      if sp_cx_czyks.recordcount = 1 then
      begin
        kdyskdks( tempedit, pri_var )
      end
end;

procedure Tfrm_zdjfsz.kdyskdks( cledit: Tedit; var dm: string );
var
  sender: Tobject;
  ksdm:string;
begin
  cledit.text := sp_cx_czyks['mc'];
  dm := sp_cx_czyks['dm'];
  ksys_grid.visible := false;
  if cledit=kdks then
  begin
    kdys.SetFocus;
  end;
  if cledit=kdys then
  begin
    czks.SetFocus;
  end;
  if cledit=czys then
  begin
    DM_data.qry_pub.Close;
    DM_data.qry_pub.SQL.text:='select * from sys_czy where sybz=1 and dm='+''''+dm+'''';
    DM_data.qry_pub.Open;
    ksdm:= DM_data.qry_pub.FieldByName('ksdm').AsString;
    DM_data.qry_pub.Close;
    DM_data.qry_pub.SQL.text:='select * from sys_ksdm where sybz=1 and dm='+''''+ksdm+'''';
    DM_data.qry_pub.Open;
    czks.text:=DM_data.qry_pub.FieldByName('mc').AsString;
    pri_czks:= DM_data.qry_pub.FieldByName('dm').AsString;
    if (ad_zyfymx_ls.State<>dsInsert) and  (ad_zyfymx_ls.State<>dsEdit)   then
    ad_zyfymx_ls.Edit;
    ad_zyfymx_ls['czks']:= pri_czks;
    ad_zyfymx_ls['czys']:= dm;
    ad_zyfymx_ls.Post;
    fydm.SetFocus;
  end;
  if cledit=czks then
  begin
    if (ad_zyfymx_ls.State<>dsInsert) and  (ad_zyfymx_ls.State<>dsEdit)   then
    ad_zyfymx_ls.Edit;
    ad_zyfymx_ls['czks']:= dm;
    ad_zyfymx_ls.Post;
    czys.SetFocus;
  end;
  
end;

procedure Tfrm_zdjfsz.kdysKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
      SelectNext( activeControl, true, true );
  end
  else
    if ( key in ['A'..'z'] ) or ( key in ['0'..'9'] ) or ( ord( key ) > 127 ) then
    begin
      ysksischange := true;
    end
end;

procedure Tfrm_zdjfsz.ksys_gridKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    SelectNext( activeControl, true, true );
  end;
end;

procedure Tfrm_zdjfsz.qry_brxxBeforeScroll(DataSet: TDataSet);
begin
//  if ad_zyfymx_ls.Active=true then
//  begin
//    if  ad_zyfymx_ls.RecordCount>0 then
//    B_ENTER.Click;
//  end;
  
end;

procedure Tfrm_zdjfsz.kdksKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    SelectNext( activeControl, true, true );

  end;
end;

end.
