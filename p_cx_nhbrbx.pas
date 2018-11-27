unit p_cx_nhbrbx;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, ExtCtrls, DB, ADODB, Grids, DBGrids, GridsEh,
  DBGridEh;

type
  Tfrm_cx_nhbrbx = class( TForm )
    Panel1: TPanel;
    Label10: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label8: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label16: TLabel;
    Label6: TLabel;
    lbmc: TEdit;
    brxm: TEdit;
    bch: TEdit;
    zyj: TEdit;
    zfy: TEdit;
    nhbkbje: TEdit;
    ksmc: TEdit;
    ryrq: TDateTimePicker;
    nhkbje: TEdit;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    ds_zybrjbqk: TDataSource;
    sp_cx_zybrjbqk: TADOStoredProc;
    tmpgrid: TDBGrid;
    sp_cx_kbzfy: TADOStoredProc;
    sp_cx_fymx: TADOStoredProc;
    sp_cx_fymxsfrq: TDateTimeField;
    sp_cx_fymxfyje: TBCDField;
    sp_cx_fymxzfje: TBCDField;
    sp_cx_fymxfymc: TStringField;
    sp_cx_fymxmc: TStringField;
    sp_cx_fymxtfbz: TBooleanField;
    sp_cx_fymxksmc: TStringField;
    qry_cx_nhkbfymx: TADOQuery;
    ds_cx_nhkbfymx: TDataSource;
    qry_cx_nhbyypmx: TADOQuery;
    ds_cx_nhbyypmx: TDataSource;
    qry_cx_nhbkbfymx: TADOQuery;
    ds_cx_nhbkbfymx: TDataSource;
    qry_cx_nhbbyypmx: TADOQuery;
    ds_cx_nhbbyypmx: TDataSource;
    DBGridEh1: TDBGridEh;
    DBGridEh2: TDBGridEh;
    DBGridEh3: TDBGridEh;
    DBGridEh4: TDBGridEh;
    procedure brxmExit( Sender: TObject );
    procedure tmpgridDblClick( Sender: TObject );
    procedure tmpgridKeyDown( Sender: TObject; var Key: Word;
      Shift: TShiftState );
    procedure displayvalue;
    procedure brxmKeyPress( Sender: TObject; var Key: Char );
    procedure FormShow( Sender: TObject );
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_cx_nhbrbx: Tfrm_cx_nhbrbx;

implementation

uses p_dm, p_func;

{$R *.dfm}

procedure Tfrm_cx_nhbrbx.brxmExit( Sender: TObject );
var
  s: string;
begin
  s := trim( brxm.Text );
  if s <> '' then
    if s[1] in ['0'..'9'] then
      s := stringofchar( '0', 9 - length( s ) ) + s;
  brxm.Text := s;
  sp_cx_zybrjbqk.Close;
  sp_cx_zybrjbqk.Parameters.ParamByName( '@tmh' ).value := trim( brxm.text );
  sp_cx_zybrjbqk.Parameters.ParamByName( '@ksdm' ).value := pub_bqdm;
  sp_cx_zybrjbqk.Open;
  if sp_cx_zybrjbqk.IsEmpty then
  begin
    application.MessageBox( '病人信息输入错误，' + #13 + #13 + '请确认输入的是病人的姓名或卡号或病床号', '错误', mb_ok + mb_iconerror );
    brxm.SetFocus;
  end
  else
    if sp_cx_zybrjbqk.RecordCount > 1 then
    begin
      tmpgrid.Visible := true;
      tmpgrid.top := brxm.top + brxm.Height;
      tmpgrid.left := brxm.left;
      tmpgrid.Visible := true;
      tmpgrid.setfocus;
    end
    else
      displayvalue;
end;

procedure Tfrm_cx_nhbrbx.tmpgridDblClick( Sender: TObject );
begin
  displayvalue;
  tmpgrid.Visible := false;
end;

procedure Tfrm_cx_nhbrbx.tmpgridKeyDown( Sender: TObject; var Key: Word;
  Shift: TShiftState );
begin
  if key = 13 then
  begin
    displayvalue;
    tmpgrid.Visible := false;
  end;
end;

procedure Tfrm_cx_nhbrbx.brxmKeyPress( Sender: TObject; var Key: Char );
begin
  if key = #13 then bch.SetFocus;
end;

procedure Tfrm_cx_nhbrbx.displayvalue;
var
  zy_zyh: string;
begin
  brxm.Text := sp_cx_zybrjbqk.fieldbyname( 'brxm' ).asstring;
  //ksmc.Text := sp_cx_zybrjbqk.fieldbyname('ksmc').asstring;
  if sp_cx_zybrjbqk.fieldbyname( 'cyrq' ).AsString = '' then
  begin
    ksmc.Text := inttostr( Trunc( StrToDateTime( FormatDateTime( 'yyyy-MM-dd 00:00:00', frm_func.curr_date ) ) -
      StrToDateTime( FormatDateTime( 'yyyy-MM-dd 00:00:00', sp_cx_zybrjbqk.fieldbyname( 'ryrq' ).AsDateTime ) ) ) );
  end;
  ryrq.datetime := sp_cx_zybrjbqk.fieldbyname( 'ryrq' ).asdatetime;
  bch.Text := sp_cx_zybrjbqk.fieldbyname( 'bch' ).asstring;
  lbmc.Text := sp_cx_zybrjbqk.fieldbyname( 'lbmc' ).asstring;
  sp_cx_kbzfy.Close;
  sp_cx_kbzfy.Parameters.Refresh;
  sp_cx_kbzfy.Parameters.ParamByName( '@zyh' ).Value := sp_cx_zybrjbqk.fieldbyname( 'zyh' ).asstring;
  sp_cx_kbzfy.Open;
  nhkbje.Text := floattostr( sp_cx_kbzfy.fieldbyname( 'nhkbzfy' ).asfloat );
  zfy.Text := floattostr( sp_cx_zybrjbqk.fieldbyname( 'zfy' ).asfloat );
  zyj.Text := floattostr( sp_cx_zybrjbqk.fieldbyname( 'yjze' ).asfloat );
  nhbkbje.Text := floattostr( sp_cx_zybrjbqk.fieldbyname( 'zfy' ).asfloat - sp_cx_kbzfy.fieldbyname( 'nhkbzfy' ).asfloat );
  zy_zyh := sp_cx_zybrjbqk.fieldbyname( 'zyh' ).asstring;
  //panel1.enabled := false;
  qry_cx_nhkbfymx.Close;
  qry_cx_nhkbfymx.SQL.text := 'select a.fydm,c.fymc,a.fysl,a.fyje,a.sfrq from zysf_zyfymx a left join zysf_sb_nhfymxdzb b on a.fydm=b.yybm' +
    ' join sys_kjsfxm c on a.fydm=c.fydm where a.cfbh='''' and a.zyh=' + '''' +
    sp_cx_zybrjbqk.fieldbyname( 'zyh' ).asstring + '''' + ' and  ' +
    ' b.bxbz=1  ';
  qry_cx_nhkbfymx.Open;
  qry_cx_nhbyypmx.Close;
  qry_cx_nhbyypmx.SQL.text := 'select a.cfbh,c.ypsl*isnull(b.cfjl,1) ypsl,e.ypmc,c.ypdm,c.ypdw,ypdj*ypsl*isnull(b.cfjl,1) ypje from zysf_zyfymx a join zyxyf_zycfzb b on a.cfbh=b.cfbh ' +
    ' join zyxyf_zycfmx c on b.cfbh=c.cfbh ' +
    ' join sys_ypdm e on c.ypdm=e.ypdm ' +
    ' left join zysf_sb_nhfymxdzb d on c.ypdm=d.yybm' +
    ' where a.cfbh<>'''' and a.zyh=' + '''' + sp_cx_zybrjbqk.fieldbyname( 'zyh' ).asstring + '''' + ' and  ' +
    ' d.bxbz=1 ';
  qry_cx_nhbyypmx.Open;

  qry_cx_nhbkbfymx.Close;
  qry_cx_nhbkbfymx.SQL.text := 'select a.fydm,c.fymc,a.fysl,a.fyje,a.sfrq from zysf_zyfymx a left join zysf_sb_nhfymxdzb b on a.fydm=b.yybm' +
    ' join sys_kjsfxm c on a.fydm=c.fydm where a.cfbh='''' and a.zyh=' + '''' +
    sp_cx_zybrjbqk.fieldbyname( 'zyh' ).asstring + '''' + ' and  ' +
    ' b.bxbz<>1  ';

  qry_cx_nhbkbfymx.Open;
  qry_cx_nhbbyypmx.Close;
  qry_cx_nhbbyypmx.SQL.text := 'select a.cfbh,c.ypsl*isnull(b.cfjl,1) ypsl,e.ypmc,c.ypdm,c.ypdw,ypdj*ypsl*isnull(b.cfjl,1) ypje from zysf_zyfymx a join zyxyf_zycfzb b on a.cfbh=b.cfbh ' +
    ' join zyxyf_zycfmx c on b.cfbh=c.cfbh ' +
    ' join sys_ypdm e on c.ypdm=e.ypdm ' +
    ' left join zysf_sb_nhfymxdzb d on c.ypdm=d.yybm' +
    ' where a.cfbh<>'''' and a.zyh=' + '''' + sp_cx_zybrjbqk.fieldbyname( 'zyh' ).asstring + '''' + ' and  ' +
    ' d.bxbz<>1 ';
  qry_cx_nhbbyypmx.Open;
end;

procedure Tfrm_cx_nhbrbx.FormShow( Sender: TObject );
begin
  brxm.SetFocus;
end;

end.

