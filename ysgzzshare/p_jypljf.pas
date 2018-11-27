unit p_jypljf;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, ExtCtrls, StdCtrls, DB, ADODB, ComCtrls;

type
  Tfrm_jypljf = class(TForm)
    Panel1: TPanel;
    DBGridEh1: TDBGridEh;
    Panel2: TPanel;
    Button1: TButton;
    Button2: TButton;
    ds_fymx: TDataSource;
    GroupBox1: TGroupBox;
    DBGridEh2: TDBGridEh;
    ds_brlb: TDataSource;
    qry_brlb: TADOQuery;
    sp_jypljf: TADOStoredProc;
    qry_fymx: TADODataSet;
    qry_fymxlb: TStringField;
    qry_fymxszxz: TBooleanField;
    qry_fymxxmdm: TStringField;
    qry_fymxxmmc: TStringField;
    qry_fymxdw: TStringField;
    qry_fymxsl: TBCDField;
    qry_fymxdj: TBCDField;
    qry_fymxczks: TStringField;
    qry_fymxksmc: TStringField;
    qry_fymxzyh: TStringField;
    qry_fymxfyje: TFloatField;
    qry_fymxzt: TStringField;
    qry_fymxbz: TStringField;
    Panel4: TPanel;
    ProgressBar2: TProgressBar;
    procedure FormShow(Sender: TObject);
    procedure qry_brlbAfterOpen(DataSet: TDataSet);
    procedure DBGridEh2CellClick(Column: TColumnEh);
    procedure Button1Click(Sender: TObject);
    procedure DBGridEh1Exit(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure qry_brlbAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_jypljf: Tfrm_jypljf;

implementation
uses p_dm,p_func,p_bqgl_zxypyz_tyjf;

{$R *.dfm}

procedure Tfrm_jypljf.Button1Click(Sender: TObject);
begin
//  DM_data.qry_pub.close;
//  DM_data.qry_pub.SQL.Text:='select * from sys_jzzt';
//  DM_data.qry_pub.ExecSQL;
//  if DM_data.qry_pub.fieldbyname('jykjf').asboolean=true then
//  begin
//    application.MessageBox( pchar('正在批量记费，请稍等！'), '注意', 16 );
//    Exit;
//  end;
  DM_data.qry_pub.close;
  DM_data.qry_pub.SQL.Text:='update sys_jzzt set jykjf=1';
  DM_data.qry_pub.ExecSQL;
  DM_data.qry_pub.close;
  DM_data.qry_pub.SQL.Text:='select distinct zyh from zybl_zyyz_brjfd_ls_jypljf where czydm='+''''+
                   pub_czydm+''''+' and szxz=1';
  DM_data.qry_pub.open;
  DM_data.qry_pub.close;
  DM_data.qry_pub.SQL.Text:='select distinct zyh from zybl_zyyz_brjfd_ls_jypljf where czydm='+''''+
                   pub_czydm+''''+' and szxz=1';
  DM_data.qry_pub.open;
  Panel4.Visible:=True;
  ProgressBar2.Position:=0;
  ProgressBar2.Max:= DM_data.qry_pub.RecordCount;
  DM_data.qry_pub.First;
  while not DM_data.qry_pub.eof do
  begin
    sp_jypljf.Close;
    sp_jypljf.Parameters.Refresh;
    sp_jypljf.Parameters.ParamByName('@zyh').Value:= DM_data.qry_pub.FieldByName('zyh').AsString;
    sp_jypljf.Parameters.ParamByName('@czydm').Value:=pub_czydm;
    sp_jypljf.Parameters.ParamByName('@zxsj').Value:=formatdatetime( 'yyyymmdd', frm_zxypyz_tyjf.dT_zxsj.Date );
    sp_jypljf.Parameters.ParamByName( '@sczt' ).Value := '1';
    sp_jypljf.ExecProc;
    ProgressBar2.Position:=ProgressBar2.Position+1;
    DM_data.qry_pub.Next;
  end;
  Panel4.Visible:=False;
  ShowMessage('记费完成！');
//  DM_data.qry_pub.close;
//  DM_data.qry_pub.SQL.Text:='update sys_jzzt set jykjf=0';
//  DM_data.qry_pub.ExecSQL;
  Close;
end;

procedure Tfrm_jypljf.Button2Click(Sender: TObject);
begin
Close;
end;

procedure Tfrm_jypljf.DBGridEh1Exit(Sender: TObject);
begin
if not Button2.Focused then
begin
qry_fymx.Edit;
qry_fymx.Post;
end;
end;

procedure Tfrm_jypljf.DBGridEh2CellClick(Column: TColumnEh);
begin
//qry_fymx.Close;
//qry_fymx.Parameters.ParamByName('zyh').Value:=qry_brlb.FieldByName('zyh').asstring;
//qry_fymx.Parameters.ParamByName('czydm').Value:=pub_czydm;
//qry_fymx.Open;
end;

procedure Tfrm_jypljf.FormShow(Sender: TObject);
begin
qry_brlb.Close;
qry_brlb.SQL.Text:='select distinct a.zyh,b.tmh,b.bch,c.mc ksmc,b.brxm from zybl_zyyz_brjfd_ls_jypljf a,zysf_zydj b,sys_ksdm c'+
                   ' where a.zyh=b.zyh and b.ksdm=c.dm order by c.mc,b.bch';
qry_brlb.Open;

end;

procedure Tfrm_jypljf.qry_brlbAfterOpen(DataSet: TDataSet);
begin
qry_brlb.First;
qry_fymx.Close;
qry_fymx.Parameters.ParamByName('zyh').Value:=qry_brlb.FieldByName('zyh').asstring;
qry_fymx.Parameters.ParamByName('czydm').Value:=pub_czydm;
qry_fymx.Open;

end;

procedure Tfrm_jypljf.qry_brlbAfterScroll(DataSet: TDataSet);
begin
qry_fymx.Close;
qry_fymx.Parameters.ParamByName('zyh').Value:=qry_brlb.FieldByName('zyh').asstring;
qry_fymx.Parameters.ParamByName('czydm').Value:=pub_czydm;
qry_fymx.Open;
end;

end.
