unit p_in_yjfyjf;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, GridsEh, DBGridEh, ExtCtrls, DB, ADODB, Grids, DBGrids,
  Mask, DBCtrls, DBGridEhGrouping;

type
  Tfrm_in_yjfyjf = class(TForm)
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
    kdys: TEdit;
    bz: TEdit;
    zdqf: TEdit;
    Edit1: TEdit;
    Panel4: TPanel;
    DBGridEh4: TDBGridEh;
    DBGridEh5: TDBGridEh;
    Panel2: TPanel;
    Button1: TButton;
    btn_close: TButton;
    sp_cx_zybrjbqk: TADOStoredProc;
    tempgrid1: TDBGrid;
    ds_zybrjbqk: TDataSource;
    ds_ysks: TDataSource;
    sp_cx_czyks: TADOStoredProc;
    ksys_grid: TDBGrid;
    DBEdit1: TDBEdit;
    sp_cx_bdfy: TADOStoredProc;
    sp_cx_bdfy1: TADOStoredProc;
    ds_cx_bdfy: TDataSource;
    ds_cx_bdfy1: TDataSource;
    sp_in_bdfymx: TADOStoredProc;
    procedure tmhEnter(Sender: TObject);
    procedure tmhKeyPress(Sender: TObject; var Key: Char);
    procedure tmhExit(Sender: TObject);
    procedure tempgrid1Exit(Sender: TObject);
    procedure tempgrid1KeyPress(Sender: TObject; var Key: Char);
    procedure displayvalue;
    procedure kdysEnter(Sender: TObject);
    procedure kdysExit(Sender: TObject);
    procedure ysprocess( tempedit: Tedit; var pri_var: string );
    procedure kdyskdks( cledit: Tedit; var dm: string );
    procedure ksys_gridExit(Sender: TObject);
    procedure ksys_gridKeyPress(Sender: TObject; var Key: Char);
    procedure kdysKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure btn_closeClick(Sender: TObject);
  private
    pri_kdys:string;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_in_yjfyjf: Tfrm_in_yjfyjf;

implementation

uses p_dm,p_func;

var FormTitle:String;

{$R *.dfm}

procedure Tfrm_in_yjfyjf.FormShow(Sender: TObject);
begin
  pri_kdys:='';
  tmh.Color := clwindow;
  FormTitle:=self.Caption;
  if trim( tmh.text ) <> '' then
  begin
    tmh.setfocus;
    tmhExit( tmh );
  end;
end;

procedure Tfrm_in_yjfyjf.kdysEnter(Sender: TObject);
begin
  frm_func.changecolor( sender );
end;

procedure Tfrm_in_yjfyjf.kdysExit(Sender: TObject);
begin
  frm_func.restorecolor( sender );
  if (Trim(kdys.text)='') and (not btn_close.Focused) then
  begin
    application.MessageBox( '没有录入开单医生代码！', '错误', mb_ok + mb_iconerror );
    kdys.SetFocus;
    Exit;
  end;
  ysprocess( kdys, pri_kdys );
end;

procedure Tfrm_in_yjfyjf.ysprocess( tempedit: Tedit; var pri_var: string );
begin
  sp_cx_czyks.Close;
  sp_cx_czyks.Parameters.ParamByName( '@srm' ).value := trim( tempedit.Text );
  sp_cx_czyks.Parameters.ParamByName( '@czfs' ).value := 1;
  sp_cx_czyks.Parameters.ParamByName( '@kssx' ).value := '09';
  sp_cx_czyks.Open;
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


procedure Tfrm_in_yjfyjf.kdyskdks( cledit: Tedit; var dm: string );
var
  sender: Tobject;
  ksdm:string;
begin
  cledit.text := sp_cx_czyks['mc'];
  dm := sp_cx_czyks['dm'];
  ksys_grid.visible := false;
end;

procedure Tfrm_in_yjfyjf.kdysKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    DBGridEh5.SetFocus;
  end;

end;

procedure Tfrm_in_yjfyjf.ksys_gridExit(Sender: TObject);
begin
  if ksys_grid.tag = kdys.tag then
  begin
    kdyskdks( kdys, pri_kdys );
    DBGridEh5.SetFocus;
  end;
end;

procedure Tfrm_in_yjfyjf.ksys_gridKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    DBGridEh5.SetFocus;
  end;
end;

procedure Tfrm_in_yjfyjf.tempgrid1Exit(Sender: TObject);
begin
  tmh.text := sp_cx_zybrjbqk['brxm'];
  syj := sp_cx_zybrjbqk['yjbz'];
  tempgrid1.Visible := false;
  displayvalue;
  kdys.SetFocus;
end;

procedure Tfrm_in_yjfyjf.tempgrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    kdys.SetFocus;
  end;
end;

procedure Tfrm_in_yjfyjf.tmhEnter(Sender: TObject);
begin
  frm_func.changecolor( sender );
  bch.Text := '';
  fylb.Text := '';
  ryrq.Text := '';
  zfy.text := '0';
  zyj.text := '0';
  zzf.text := '0';
  syje.text := '0';
  pri_kdys:='';
  kdys.text:='';
end;

procedure Tfrm_in_yjfyjf.tmhExit(Sender: TObject);
begin
  frm_func.restorecolor( sender );
//  if ( length( tmh.text ) < 9 ) and ( trim( tmh.text ) <> '' ) then
//  begin
//    DM_data.qry_pub.close;
//    DM_data.qry_pub.SQL.text := 'select a.* from zysf_zydj a,sys_kscwsz b where a.zyh=b.zyh and b.yybch=' + '''' + trim( tmh.text ) + '''' +
//      ' and a.cybz=0 and b.bqdm=' + '''' + pub_bqdm + ''' order by a.ryrq desc';
//    DM_data.qry_pub.Open;
//    if not DM_data.qry_pub.IsEmpty then
//      tmh.text := DM_data.qry_pub.FieldByName( 'tmh' ).AsString;
//  end;

  if not ( btn_close.Focused ) and ( trim( tmh.text ) <> '' ) then
  begin
    tmh.text := copy( '000000000', 0, 9 - length( tmh.text ) ) + tmh.text;
    sp_cx_zybrjbqk.Filtered := False;
    with sp_cx_zybrjbqk do
    begin
      Close;
      parameters.ParamByName( '@tmh' ).value := trim( tmh.text );
      parameters.ParamByName( '@xm' ).value := trim( tmh.text );
      parameters.ParamByName( '@bch' ).value := trim( tmh.text );
      parameters.ParamByName( '@ksdm' ).value := pub_bqdm;
      active := true;
    end;

    sp_cx_zybrjbqk.First;
    while not sp_cx_zybrjbqk.Eof do
    begin
      DM_data.qry_pub.close;
      DM_data.qry_pub.SQL.text := 'select * from zysf_zydj where cybz=0 and zyh=' + '''' + sp_cx_zybrjbqk.FieldByName( 'zyh' ).asstring + '''';
      DM_data.qry_pub.Open;
      if not DM_data.qry_pub.IsEmpty then
        Break;
      sp_cx_zybrjbqk.Next;
    end;

    DM_data.qry_pub.close;
    DM_data.qry_pub.SQL.text := 'select * from zysf_zydj where cybz=0 and zyh=' + '''' + sp_cx_zybrjbqk.FieldByName( 'zyh' ).asstring + '''';
    DM_data.qry_pub.Open;
    if DM_data.qry_pub.IsEmpty then
    begin
      Application.MessageBox( '没有此病人,或已经出院！', '错误', 0 + 16 );
      tmh.SetFocus;
      Exit;
    end;

    sp_cx_zybrjbqk.Filtered := False;
    sp_cx_zybrjbqk.Filter := ' zyh =' + '''' + sp_cx_zybrjbqk.FieldByName( 'zyh' ).asstring + '''';
    sp_cx_zybrjbqk.Filtered := true;
    sp_cx_zybrjbqk.First;
    if ( sp_cx_zybrjbqk.isempty )  then
    begin
      Application.MessageBox( '没有此病人！', '错误', 0 + 16 );
      tmh.setfocus;
    end
    else
      if sp_cx_zybrjbqk.recordcount > 1 then
      begin
        tempgrid1.Columns.Clear;
        tempgrid1.Columns.add;
        tempgrid1.Columns[0].field := sp_cx_zybrjbqk.fieldlist[0];
        tempgrid1.Columns[0].title.caption := '条码号';
        tempgrid1.Columns.add;
        tempgrid1.Columns[1].field := sp_cx_zybrjbqk.fieldlist[2];
        tempgrid1.Columns[1].title.caption := '姓名';
        tempgrid1.left := tmh.left;
        tempgrid1.top := bz.top;
        tempgrid1.visible := true;
        tempgrid1.setfocus;
      end
      else
      begin
        displayvalue;
        syj := sp_cx_zybrjbqk['yjbz'];
        kdys.setfocus;
      end;
  end
  else
    if ( trim( tmh.text ) = '' ) and ( not ( btn_close.focused ) ) then
    begin
      Application.MessageBox( '请输入条码号或病床号或病人姓名！', '错误', 0 + 16 );
      tmh.setfocus;
    end;

end;

procedure Tfrm_in_yjfyjf.tmhKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    DBGridEh5.SetFocus;
  end;
end;

procedure Tfrm_in_yjfyjf.btn_closeClick(Sender: TObject);
begin
   close;
end;

procedure Tfrm_in_yjfyjf.Button1Click(Sender: TObject);
begin
  if Trim(sp_cx_zybrjbqk.FieldByName( 'zyh' ).asstring)='' then
  begin
    Application.MessageBox('没有选择病人，不能计费！', '错误', MB_OK +
      MB_ICONSTOP);
  end;
  if trim(pri_kdys)='' then
  begin
    Application.MessageBox('开单医生有误，不能计费！', '错误', MB_OK +
    MB_ICONSTOP);
  end;
  if trim(kdys.text)='' then
  begin
    Application.MessageBox('没有录入开单医生，不能计费！', '错误', MB_OK +
    MB_ICONSTOP);
  end;

  try
    sp_cx_bdfy.First;
    while not sp_cx_bdfy.eof do
    begin
      if sp_cx_bdfy.FieldByName('xz').AsBoolean=true then
      begin
        sp_in_bdfymx.Close;
        sp_in_bdfymx.Parameters.Refresh;
        sp_in_bdfymx.Parameters.ParamByName('@czydm').Value:=pub_czydm;
        sp_in_bdfymx.Parameters.ParamByName('@zyh').Value:=sp_cx_zybrjbqk.FieldByName( 'zyh' ).asstring;
        sp_in_bdfymx.Parameters.ParamByName('@kdys').Value:= Trim(pri_kdys);
        sp_in_bdfymx.Parameters.ParamByName('@fydm').Value:= sp_cx_bdfy.FieldByName('fydm').AsString;
        if Trim(sp_cx_bdfy.FieldByName('fysl').AsString)<>'' then
        begin
          sp_in_bdfymx.Parameters.ParamByName('@fysl').Value := sp_cx_bdfy.FieldByName('fysl').AsInteger;
        end
        else
        begin
           sp_in_bdfymx.Parameters.ParamByName('@fysl').Value := 1;
        end;
        sp_in_bdfymx.Parameters.ParamByName('@kdks').Value := Trim(pub_ksdm);
        sp_in_bdfymx.ExecProc;
      end;
      sp_cx_bdfy.Next;
    end;
    sp_cx_bdfy1.First;
    while not sp_cx_bdfy1.eof do
    begin
      if sp_cx_bdfy1.FieldByName('xz').AsBoolean=true then
      begin
        sp_in_bdfymx.Close;
        sp_in_bdfymx.Parameters.Refresh;
        sp_in_bdfymx.Parameters.ParamByName('@czydm').Value:=pub_czydm;
        sp_in_bdfymx.Parameters.ParamByName('@zyh').Value:=sp_cx_zybrjbqk.FieldByName( 'zyh' ).asstring;
        sp_in_bdfymx.Parameters.ParamByName('@kdys').Value:= Trim(pri_kdys);
        sp_in_bdfymx.Parameters.ParamByName('@fydm').Value:= sp_cx_bdfy1.FieldByName('fydm').AsString;
        if Trim(sp_cx_bdfy.FieldByName('fysl').AsString)<>'' then
        begin
          sp_in_bdfymx.Parameters.ParamByName('@fysl').Value := sp_cx_bdfy1.FieldByName('fysl').AsInteger;
        end
        else
        begin
           sp_in_bdfymx.Parameters.ParamByName('@fysl').Value := 1;
        end;
        sp_in_bdfymx.Parameters.ParamByName('@kdks').Value := Trim(pub_ksdm);
        sp_in_bdfymx.ExecProc;
      end;
      sp_cx_bdfy1.Next;
    end;
    Application.MessageBox('计费成功！', '提示', MB_OK + MB_ICONINFORMATION);
  except
    Application.MessageBox('计费失败！请重试!', '错误', MB_OK + MB_ICONSTOP);
  end;
end;

procedure Tfrm_in_yjfyjf.displayvalue;
begin
  tmh.text := sp_cx_zybrjbqk.fieldbyname( 'tmh' ).asstring;
  Edit1.text := Trim(sp_cx_zybrjbqk.fieldbyname( 'brxm' ).asstring);
  Self.Caption:=FormTitle+'   病人姓名：【'+edit1.Text+'】';    //roro
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
  pri_kdys := sp_cx_zybrjbqk.fieldbyname( 'zgys' ).asstring;
  kdys.text := sp_cx_zybrjbqk.fieldbyname( 'ysxm' ).asstring;
  kdys.setfocus;

  sp_cx_bdfy.close;
  sp_cx_bdfy.Parameters.Refresh;
  sp_cx_bdfy.Parameters.ParamByName('@bqdm').Value:=pub_bqdm;
  sp_cx_bdfy.Open;
  sp_cx_bdfy1.close;
  sp_cx_bdfy1.Parameters.Refresh;
  sp_cx_bdfy1.Parameters.ParamByName('@bqdm').Value:=pub_bqdm;
  sp_cx_bdfy1.Open;
end;

end.
