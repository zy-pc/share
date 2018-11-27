unit p_yzfyqd_tyjf;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, ExtCtrls, DB, ADODB, GridsEh, DBGridEh,
  Buttons;

type
  Tfrm_yzfyqd_tyjf = class( TForm )
    sp_fyxx: TADOStoredProc;
    ds_fyxx: TDataSource;
    Panel7: TPanel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    Panel1: TPanel;
    DBGridEh1: TDBGridEh;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Panel2: TPanel;
    Label1: TLabel;
    Shape1: TShape;
    Label2: TLabel;
    Label3: TLabel;
    sp_yzjf: TADOStoredProc;
    ad_fyxx: TADODataSet;
    ad_fyxxlb: TStringField;
    ad_fyxxszxz: TBooleanField;
    ad_fyxxxmdm: TStringField;
    ad_fyxxxmmc: TStringField;
    ad_fyxxdw: TStringField;
    ad_fyxxsl: TBCDField;
    ad_fyxxdj: TBCDField;
    ad_fyxxczks: TStringField;
    ad_fyxxksmc: TStringField;
    ad_fyxxzyh: TStringField;
    ad_fyxxfyje: TFloatField;
    ad_fyxxzt: TStringField;
    ad_fyxxbz: TStringField;
    Button1: TButton;
    ad_fyxxzhsfsj: TDateTimeField;
    procedure FormShow( Sender: TObject );
    procedure DBGridEh1DrawColumnCell( Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState );
    procedure BitBtn2Click( Sender: TObject );
    procedure sp_fyxxAfterOpen( DataSet: TDataSet );
    procedure BitBtn1Click( Sender: TObject );
    procedure ad_fyxxCalcFields( DataSet: TDataSet );
    procedure ad_fyxxAfterEdit( DataSet: TDataSet );
    procedure Button1Click( Sender: TObject );
  private
    { Private declarations }
  public
    { Public declarations }
    ysdm: string;
  end;

var
  frm_yzfyqd_tyjf: Tfrm_yzfyqd_tyjf;

implementation
uses p_dm, p_func,p_bqgl_zxypyz_tyjf, p_fygsys_tyjf, p_brcx;
{$R *.dfm}

procedure Tfrm_yzfyqd_tyjf.ad_fyxxAfterEdit( DataSet: TDataSet );
begin
  {if ad_fyxx.fieldbyname('zt').asstring<>'可不领用' then
  begin
  ad_fyxx.Cancel;
  application.messagebox('医生所开医嘱必须产生费用，若需不计费，请停医嘱！！','提示',mb_ok);
  end;  }
end;

procedure Tfrm_yzfyqd_tyjf.ad_fyxxCalcFields( DataSet: TDataSet );
begin
  if ad_fyxx.fieldbyname( 'szxz' ).asboolean then
    ad_fyxx.fieldbyname( 'fyje' ).asfloat := ad_fyxx.fieldbyname( 'sl' ).asfloat * ad_fyxx.fieldbyname( 'dj' ).asfloat;

end;

procedure Tfrm_yzfyqd_tyjf.BitBtn1Click( Sender: TObject );
var
  sczt: string;
begin
  try
    application.createform( Tfrm_fygsys_tyjf, frm_fygsys_tyjf );
    frm_fygsys_tyjf.ad_ysdm.parameters.parambyname( 'bqdm' ).value := frm_zxypyz_tyjf.sp_brxx.fieldbyname( 'bqdm' ).asstring;
    frm_fygsys_tyjf.ad_ysdm.parameters.parambyname( 'ksdm' ).value := frm_zxypyz_tyjf.sp_brxx.fieldbyname( 'ksdm' ).asstring;
    frm_fygsys_tyjf.ad_ysdm.open;
    frm_fygsys_tyjf.DBComboBox1.Items.Clear;
    frm_fygsys_tyjf.ad_ysdm.First;
    while not frm_fygsys_tyjf.ad_ysdm.eof do
    begin
      frm_fygsys_tyjf.dbcombobox1.Items.Add( frm_fygsys_tyjf.ad_ysdm.FieldByName( 'mc' ).asstring );
      frm_fygsys_tyjf.ad_ysdm.Next;
    end;
    frm_fygsys_tyjf.ad_ysdm.Locate( 'mc', frm_zxypyz_tyjf.sp_brxx.fieldbyname( 'zgys' ).asstring, [loPartialKey] );
    frm_fygsys_tyjf.dbComboBox1.ItemIndex := frm_fygsys_tyjf.dbComboBox1.Items.IndexOf( frm_fygsys_tyjf.ad_ysdm.FieldByName( 'mc' ).AsString );
    frm_fygsys_tyjf.showmodal;
  finally
    frm_fygsys_tyjf.free;
  end;
  if ysdm <> '' then
  begin
    if ad_fyxx.State in [dsedit] then
    ad_fyxx.Post;
    sp_yzjf.Close;
    sp_yzjf.Parameters.refresh;
    sp_yzjf.Parameters.ParamByName( '@bqdm' ).value := pub_bqdm;
    sp_yzjf.Parameters.ParamByName( '@zyh' ).value := frm_zxypyz_tyjf.sp_brxx.fieldbyname( 'zyh' ).asstring;
    sp_yzjf.Parameters.ParamByName( '@czydm' ).Value := pub_czydm;
    sp_yzjf.Parameters.ParamByName( '@yfdm' ).Value := pub_zyxyfdm;
    sp_yzjf.Parameters.ParamByName( '@kdys' ).Value := ysdm;
    sp_yzjf.Parameters.ParamByName( '@zxsj' ).Value := formatdatetime( 'yyyymmdd', frm_zxypyz_tyjf.dT_zxsj.Date );
    sp_yzjf.Parameters.ParamByName( '@sczt' ).Value := '1';
    sp_yzjf.Parameters.ParamByName( '@zyfdm' ).Value := '';
    sp_yzjf.Parameters.ParamByName( '@plxh' ).Value := '1';
    sp_yzjf.ExecProc;
    sczt := sp_yzjf.Parameters.ParamByName( '@sczt' ).Value;
    if sczt = '0' then
    begin
      application.MessageBox( '成功计费！！', '提示', mb_ok + mb_iconinformation );
      frm_zxypyz_tyjf.sp_dryz.close;
      frm_zxypyz_tyjf.sp_dryz.Parameters.ParamByName( '@zyh' ).value := frm_zxypyz_tyjf.sp_brxx.FieldByName( 'zyh' ).asstring;
      frm_zxypyz_tyjf.sp_dryz.Open;
      self.close;
    end
    else
      application.MessageBox( pchar( sczt + '！！！' ), '提示', mb_ok + mb_iconwarning )
  end
  else
    application.MessageBox( '请先确定费用归属医生！！', '提示', mb_ok + mb_iconinformation );

end;

procedure Tfrm_yzfyqd_tyjf.BitBtn2Click( Sender: TObject );
begin
  self.close;
end;

procedure Tfrm_yzfyqd_tyjf.Button1Click( Sender: TObject );
begin
  try
    application.createform( tFrm_brcx, Frm_brcx );
    Frm_brcx.brxm.text := DBEdit19.text;
    Frm_brcx.Top := 80;
    Frm_brcx.Left := 2;
    Frm_brcx.showmodal;
  finally
    Frm_brcx.free;
  end;
end;

procedure Tfrm_yzfyqd_tyjf.DBGridEh1DrawColumnCell( Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState );
begin
  if not ad_fyxx.fieldbyname( 'szxz' ).asboolean then
    DBGridEh1.Canvas.Brush.Color := clSkyBlue;
  ( Sender as TDbGridEh ).DefaultDrawColumnCell( Rect, DataCol, Column, State );

end;

procedure Tfrm_yzfyqd_tyjf.FormShow( Sender: TObject );
begin
  DBEdit19.Text:=frm_zxypyz_tyjf.sp_brxx.FieldByName('tmh').asstring;
  DBEdit14.Text:=frm_zxypyz_tyjf.sp_brxx.FieldByName('brxm').asstring;
  DBEdit16.Text:=frm_zxypyz_tyjf.sp_brxx.FieldByName('brxb').asstring;
  DBEdit15.Text:=frm_zxypyz_tyjf.sp_brxx.FieldByName('brnl').asstring;
  DBEdit11.Text:=frm_zxypyz_tyjf.sp_brxx.FieldByName('zgys').asstring;
  DBEdit18.Text:=frm_zxypyz_tyjf.sp_brxx.FieldByName('bz').asstring;
  DBEdit9.Text:=frm_zxypyz_tyjf.sp_brxx.FieldByName('ryrq').asstring;
  DBEdit10.Text:=frm_zxypyz_tyjf.sp_brxx.FieldByName('ryzd').asstring;
  DBEdit12.Text:=frm_zxypyz_tyjf.sp_brxx.FieldByName('yjze').asstring;
  DBEdit13.Text:=frm_zxypyz_tyjf.sp_brxx.FieldByName('zfy').asstring;
  DBEdit17.Text:=frm_zxypyz_tyjf.sp_brxx.FieldByName('lbmc').asstring;
  DBGridEh1.SetFocus;
  sp_fyxx.Close;
  sp_fyxx.Parameters.ParamByName( '@zyh' ).Value := frm_zxypyz_tyjf.sp_brxx.fieldbyname( 'zyh' ).asstring;
  sp_fyxx.Parameters.ParamByName( '@zxsj' ).Value := formatdatetime( 'yyyymmdd', frm_zxypyz_tyjf.dT_zxsj.Date );
  sp_fyxx.Parameters.ParamByName( '@czydm' ).Value := pub_czydm;
  sp_fyxx.Parameters.ParamByName( '@ksdm' ).Value := pub_ksdm;
  sp_fyxx.Open;

  ad_fyxx.Close;
  ad_fyxx.Parameters.ParamByName( 'zyh' ).value := frm_zxypyz_tyjf.sp_brxx.fieldbyname( 'zyh' ).asstring;
  ad_fyxx.Parameters.ParamByName( 'czydm' ).value := pub_czydm;
  ad_fyxx.open;

  if ad_fyxx.RecordCount > 0 then
  begin
    ad_fyxx.First;
    while not ad_fyxx.eof do
    begin
      if ( Trim( ad_fyxx.FieldByName( 'lb' ).Asstring ) = '检查' )  then
      begin
        ad_fyxx.Edit;
        ad_fyxx.FieldByName( 'szxz' ).AsBoolean := False;
        ad_fyxx.Post;
      end;
      ad_fyxx.Next;
    end;
    ad_fyxx.First;
  end;

end;

procedure Tfrm_yzfyqd_tyjf.sp_fyxxAfterOpen( DataSet: TDataSet );
begin
  bitbtn1.Enabled := not sp_fyxx.isempty
end;

end.

