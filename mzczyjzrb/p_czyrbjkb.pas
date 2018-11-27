unit p_czyrbjkb;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, CheckLst, Db, DBTables, ExtCtrls, Buttons, ComCtrls, Grids,
  DBGrids, DBCtrls, Mask, ADODB, Menus, cxLookAndFeelPainters, GridsEh,
  DBGridEh, cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxButtons, cxGraphics, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox;

type
  Tfrm_czyrbjkb = class( TForm )
    BitBtn3: TcxButton;
    BitBtn4: TcxButton;
    Bevel1: TBevel;
    dt1: TcxDateEdit;
    ds_cxjz: TDataSource;
    Label4: TLabel;
    qry_cxjz: TADOQuery;
    qry_cwkjzrq: TADOQuery;
    qry_dy: TADOQuery;
    GroupBox1: TGroupBox;
    Label9: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label20: TLabel;
    Label19: TLabel;
    Label14: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    Panel1: TPanel;
    Label1: TLabel;
    DBMemo1: TDBMemo;
    Label2: TLabel;
    DBMemo2: TDBMemo;
    Label3: TLabel;
    DBMemo3: TDBMemo;
    GroupBox2: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label11: TLabel;
    Label15: TLabel;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    cxButton1: TcxButton;
    sp_jzdy: TADOStoredProc;
    qry_dy_sfmx: TADOQuery;
    qry_cxjz_sfmx: TADOQuery;
    GroupBox3: TGroupBox;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label21: TLabel;
    dbedt1: TDBEdit;
    dbedt2: TDBEdit;
    dbedt3: TDBEdit;
    dbedt4: TDBEdit;
    qry_sbjz: TADOQuery;
    Label24: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label22: TLabel;
    DBEdit14: TDBEdit;
    Label23: TLabel;
    Label25: TLabel;
    DBEdit15: TDBEdit;
    zdybb: TCheckBox;
    Label27: TLabel;
    DBEdit17: TDBEdit;
    GroupBox4: TGroupBox;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    Label26: TLabel;
    DBEdit16: TDBEdit;
    Label31: TLabel;
    DBEdit21: TDBEdit;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    DBEdit22: TDBEdit;
    DBEdit23: TDBEdit;
    DBEdit24: TDBEdit;
    DBEdit25: TDBEdit;
    lbl1: TLabel;
    dbedtmzzcf: TDBEdit;
    lbl2: TLabel;
    dbedtmzzcf1: TDBEdit;
    lbl3: TLabel;
    dbedtmzzcf2: TDBEdit;
    lbl4: TLabel;
    dbedtmzzcf3: TDBEdit;
    lbl5: TLabel;
    dbedtmzzcf4: TDBEdit;
    qry_tsbrfy: TADOQuery;
    sp_maindata: TADOStoredProc;
    sp_mxdata: TADOStoredProc;
    chk_jzrq: TCheckBox;
    chk_Allczy: TCheckBox;
    Label36: TLabel;
    db_jzkf: TDBEdit;
    sp_jzkf: TADOStoredProc;
    ds_jzkf: TDataSource;
    procedure BitBtn3Click( Sender: TObject );
    procedure FormShow( Sender: TObject );
    procedure BitBtn4Click( Sender: TObject );
    procedure dt1Change( Sender: TObject );
    procedure cxButton1Click( Sender: TObject );
    procedure chk_AllczyClick(Sender: TObject);
    procedure DBLookupComboBox1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_czyrbjkb: Tfrm_czyrbjkb;

implementation

uses P_login, p_dm, p_func, p_rpt_czyrb,p_rpt_czyrbjkb,p_mzsf_print_service;

{$R *.DFM}

procedure Tfrm_czyrbjkb.BitBtn3Click( Sender: TObject );
begin
  if not qry_cxjz.IsEmpty then
  begin
    with dm_data do
    begin
      qry_cxjz_mx.active := false;
      qry_cxjz_mx.SQL.Text := 'exec mzsf_cx_mzjzqk '''+trim( DBLookupComboBox1.Text )+'''';
      qry_cxjz_mx.open;
    end;
    if (pub_yydm ='0240') and (trim( DBLookupComboBox1.Text )<>'') and zdybb.Checked then
    begin
      frm_mzsf_print_service.print_mzsf_czyjz(DM_data.qry_cxjz_mx,trim( DBLookupComboBox1.Text ));
      abort;
    end;
    with qry_cwkjzrq do
    begin
      active := false;
      parameters.ParamByName( 'jzdh' ).value := qry_cxjz['jzdh'];
      parameters.ParamByName( 'czydm' ).value := pub_czydm;
      open;
    end;
    begin
      Application.CreateForm( Tfrm_rtp_czyrbjkb, frm_rtp_czyrbjkb );
      frm_rtp_czyrbjkb.czydm.Caption := frm_rtp_czyrbjkb.czydm.Caption + pub_czyxm;
      if pub_yydm='0214' then //遂宁民康医院
      begin
        frm_rtp_czyrbjkb.QRLabel5.Caption := '优惠(优抚)';
        frm_rtp_czyrbjkb.QRDBText18.DataField := 'ssje1';
      end
      else  //统一版本均添加预交款
      begin
        frm_rtp_czyrbjkb.QRLabel5.Caption := '其中:卡支付';
        frm_rtp_czyrbjkb.QRDBText18.DataField := 'ssje2';
      end;
      try  //统一版本均添加预交款
       // frm_rtp_czyrbjkb.qrl_sjje.Caption := floattostr( qry_cxjz.fieldbyname( 'ssje2' ).AsFloat );
        frm_rtp_czyrbjkb.qrl_sjje.Caption := floattostr( dm_data.qry_cxjz_mx.fieldbyname( 'ssje2' ).asfloat);
      except
      
      end;
      frm_rtp_czyrbjkb.qrl_sjje.Enabled := False;
      frm_rtp_czyrbjkb.bt.Caption := pub_yymc + frm_rtp_czyrbjkb.bt.Caption;
      frm_rtp_czyrbjkb.star_date.Caption := frm_rtp_czyrbjkb.star_date.Caption + qry_cwkjzrq.fieldbyname( 'ksrq' ).asstring;
      frm_rtp_czyrbjkb.end_date.Caption := frm_rtp_czyrbjkb.end_date.Caption + qry_cwkjzrq.fieldbyname( 'jsrq' ).asstring;
      frm_rtp_czyrbjkb.zbdate.Caption := frm_rtp_czyrbjkb.zbdate.Caption + datetimetostr( now );
      //统一版本均添加预交款
      frm_rtp_czyrbjkb.dxje.Caption := frm_rtp_czyrbjkb.dxje.Caption + NumberToMoney( dm_data.qry_cxjz_mx.fieldbyname( 'ssje2' ).asfloat );
      frm_rtp_czyrbjkb.QuickRep1.Preview;
      try
        frm_rtp_czyrbjkb.Free
      except
      end;
    end;
  end
  else
  begin
    application.MessageBox( '请选择结帐单号!', '提示', 0 + 16 );
  end;
end;

procedure Tfrm_czyrbjkb.FormShow( Sender: TObject );
begin
  dt1.Date := now;
  qry_cxjz.Close;
  qry_cxjz.SQL.Text := 'exec mzsf_cx_mzjzqk_cxjz '''+pub_czydm+''','''+FormatDateTime('yyyyMMdd',dt1.Date)+'''';
  qry_cxjz.Open;
  if  pub_yydm ='0240' then
  zdybb.Visible:=True;
  //宁安医院显示就诊卡办卡金额
  if pub_yydm='0262' then
  begin
    label26.Visible:=True;
    dbedit16.Visible:=True;
    GroupBox4.Visible:=True;
  end
  else
  begin
    GroupBox4.Visible:=False;
    frm_czyrbjkb.Width:=1100;
  end;
  //四会显示四舍五入金额
  if( pub_yydm='0261' ) or (pub_yydm='0269') then
  begin
    label27.Visible:=True;
    label32.Visible:=True;
    label33.Visible:=True;
    label34.Visible:=True;
    label35.Visible:=True;
    dbedit17.Visible:=True;
    dbedit22.Visible:=True;
    dbedit23.Visible:=True;
    dbedit24.Visible:=True;
    dbedit25.Visible:=True;
  end;

  if pub_yydm='0271' then   //掇刀医院
  begin
    chk_jzrq.Visible:=true;
    chk_Allczy.Visible:=True;
  end else
  begin
    chk_jzrq.Visible:=False;
    chk_Allczy.Visible:=False;
  end;
end;

procedure Tfrm_czyrbjkb.BitBtn4Click( Sender: TObject );
begin
  close;
end;

{-------------------------------------------------------------------------------
  过程名:    Tfrm_czyrbjkb.chk_AllczyClick
  作者:      yangshuai
  日期:      2017.09.05
  参数:      Sender: TObject
  返回值:    无
-------------------------------------------------------------------------------}
procedure Tfrm_czyrbjkb.chk_AllczyClick(Sender: TObject);
begin
  if chk_Allczy.Checked then
  begin
    qry_cxjz.Close;
    qry_cxjz.SQL.Text := 'exec mzsf_cx_mzjzqk_cxjz '''+'AAAA'+''','''+FormatDateTime('yyyyMMdd',dt1.Date)+'''';
    //  qry_cxjz.parameters.ParamByName( 'czydm' ).value := pub_czydm;
    //  qry_cxjz.parameters.ParamByName( 'jzrq' ).value := dt1.Date;
    qry_cxjz.Open;
  end else
  begin
    qry_cxjz.Close;
    qry_cxjz.SQL.Text := 'exec mzsf_cx_mzjzqk_cxjz '''+pub_czydm+''','''+FormatDateTime('yyyyMMdd',dt1.Date)+'''';
    //  qry_cxjz.parameters.ParamByName( 'czydm' ).value := pub_czydm;
    //  qry_cxjz.parameters.ParamByName( 'jzrq' ).value := dt1.Date;
    qry_cxjz.Open;
  end;
end;

procedure Tfrm_czyrbjkb.cxButton1Click( Sender: TObject );
var
  v_jzdh:string;
begin
  if pub_yydm='0271' then   //掇刀医院
  begin
    v_jzdh:='';
    if (chk_jzrq.Checked) or (chk_Allczy.Checked) then
    begin
      qry_cxjz.First;
      while  not qry_cxjz.eof do
      begin
        v_jzdh:= v_jzdh +','+Trim(qry_cxjz.FieldByName('jzdh').AsString) ;
        qry_cxjz.Next;
      end;
      v_jzdh:=Copy(v_jzdh,2,length(v_jzdh)-1);
    end else
    begin
      v_jzdh:= trim( DBLookupComboBox1.Text );
    end;
   // v_jzdh:=StringReplace(v_jzdh,'''', #39, [rfReplaceAll]);

    sp_maindata.active := false;
    sp_maindata.parameters.ParamByName( '@jzrq' ).value := dt1.Date;
    sp_maindata.parameters.ParamByName( '@jzdh' ).value := v_jzdh;
    sp_maindata.open;

    sp_mxdata.active := false;
    sp_mxdata.parameters.ParamByName( '@jzrq' ).value := dt1.Date;
    sp_mxdata.parameters.ParamByName( '@jzdh' ).value := v_jzdh;
    sp_mxdata.open;
    frm_mzsf_print_service.printddmzsfmxdy(dt1.Date,sp_maindata,sp_mxdata,True);
    //刷新数据
      if not qry_cxjz.IsEmpty then
    DBLookupComboBox1.KeyValue := qry_cxjz.FieldByName( 'jzdh' ).asstring;
  end else
  begin
    if not qry_cxjz.IsEmpty then
    begin
      with sp_jzdy do
      begin
        active := false;
        parameters.ParamByName( '@czydm' ).value := pub_czydm;
        parameters.ParamByName( '@jzdh' ).value := trim( DBLookupComboBox1.Text );
        open;
      end;
      begin
        Application.CreateForm( Tfrm_rtp_czyrb, frm_rtp_czyrb );
        with dm_data do
        begin
          qry_dy_sfmx.close;
          qry_dy_sfmx.parameters.ParamByName( 'czydm' ).value := pub_czydm;
          qry_dy_sfmx.open;
        end;
        with dm_data do
        begin
          qry_cxjz_mx.close;
          qry_cxjz_mx.SQL.Text := 'exec mzsf_cx_mzjzqk '''+trim( DBLookupComboBox1.Text )+'''';
      //        qry_cxjz_mx.parameters.ParamByName( 'czydm' ).value := pub_czydm;
      //        qry_cxjz_mx.parameters.ParamByName( 'jzdh' ).value := trim( DBLookupComboBox1.Text );
          qry_cxjz_mx.open;
        end;
       { if pub_yydm='0256' then  //睢县添加预交金额部分
        begin
          frm_rtp_czyrb.QRDBText18.DataField := 'ssje2' ;
          frm_rtp_czyrb.QRDBText22.DataField := 'ssje2' ;
        end }
        //else
       // begin
       // end;
          frm_rtp_czyrb.QRDBText18.DataField := 'ssje2';
          frm_rtp_czyrb.QRDBText22.DataField := 'ssje2';

         //四会中医院的诊查费显示
        if pub_yydm='0261' then
        begin
          frm_rtp_czyrb.QRLabel35.Enabled :=True;
          frm_rtp_czyrb.QRLabel36.Enabled :=True;
          frm_rtp_czyrb.QRLabel37.Enabled :=True;
          frm_rtp_czyrb.QRLabel38.Enabled :=True;
          frm_rtp_czyrb.QRLabel39.Enabled :=True;

          frm_rtp_czyrb.QRDBText53.Enabled :=True;
          frm_rtp_czyrb.QRDBText54.Enabled :=True;
          frm_rtp_czyrb.QRDBText55.Enabled :=True;
          frm_rtp_czyrb.QRDBText56.Enabled :=True;
          frm_rtp_czyrb.QRDBText57.Enabled :=True;

          frm_rtp_czyrb.QRShape48.Enabled :=True;
          frm_rtp_czyrb.QRShape40.Enabled :=True;
        end;
        //台山中医院显示特殊病人统筹明细（fylb区分）
        if pub_yydm='0269' then
        begin
          qry_tsbrfy.Close;
          qry_tsbrfy.SQL.Text :='exec mzsf_tj_tsbrfymx '''+pub_czydm+''','''+trim( DBLookupComboBox1.Text )+''' ';
          qry_tsbrfy.Open;
          frm_rtp_czyrb.QRLabel22.Caption :='现金';
          //台山中医院将实收总金额改为应收总金额
          frm_rtp_czyrb.QRLabel19.Caption :='应收总金额';
          frm_rtp_czyrb.QRDBText18.DataField := 'yszje';
          frm_rtp_czyrb.QRLabel21.Caption :='银行卡退现金';
          frm_rtp_czyrb.QRLabel34.Caption :='社保卡退现金';
          frm_rtp_czyrb.QRDBText20.DataField :='yhktfje';
          frm_rtp_czyrb.QRLabel21.Font.Size :=9;
        end else
        begin
          frm_rtp_czyrb.QRDBText33.Enabled :=false ;
          frm_rtp_czyrb.QRDBText34.Enabled :=false ;
          frm_rtp_czyrb.QRDBText35.Enabled :=false ;
          frm_rtp_czyrb.QRDBText36.Enabled :=false ;
          frm_rtp_czyrb.QRDBText37.Enabled :=false ;
          frm_rtp_czyrb.QRDBText38.Enabled :=false ;
          frm_rtp_czyrb.QRDBText39.Enabled :=false ;
          frm_rtp_czyrb.QRDBText40.Enabled :=false ;
          frm_rtp_czyrb.QRDBText41.Enabled :=false ;
          frm_rtp_czyrb.QRDBText42.Enabled :=false ;
          frm_rtp_czyrb.QRDBText43.Enabled :=false ;
          frm_rtp_czyrb.QRDBText44.Enabled :=false ;
          frm_rtp_czyrb.QRDBText45.Enabled :=false ;
          frm_rtp_czyrb.QRDBText46.Enabled :=false ;
          frm_rtp_czyrb.QRDBText47.Enabled :=false ;
          frm_rtp_czyrb.QRDBText48.Enabled :=false ;
          frm_rtp_czyrb.QRDBText49.Enabled :=false ;
          frm_rtp_czyrb.QRDBText50.Enabled :=false ;
          frm_rtp_czyrb.QRDBText51.Enabled :=false ;
          frm_rtp_czyrb.QRDBText52.Enabled :=false ;

          frm_rtp_czyrb.z.Enabled :=False;
          frm_rtp_czyrb.QRShape46.Enabled :=False;
          frm_rtp_czyrb.QRShape47.Enabled :=False;
          if pub_yydm<>'0261' then
          begin
            frm_rtp_czyrb.QRShape48.Enabled :=False;
          end;

        end;
        frm_rtp_czyrb.QRLabel20.Enabled := ( pub_yydm = '0116' ) or ( pub_yydm = '0015' );
        if pub_yydm = '0017' then
          frm_rtp_czyrb.QRLabel21.Caption := NumberToMoney( dm_data.qry_cxjz_mx.FieldByName( 'ssje' ).AsFloat );
        frm_rtp_czyrb.QRShape30.Enabled := frm_rtp_czyrb.QRLabel20.Enabled;
      //      if pub_yydm='' then    //20161229
        if (pub_yydm='0261')or (pub_yydm='0269') then
        begin
          frm_rtp_czyrb.QRLabel21.Enabled := true;
          frm_rtp_czyrb.QRLabel22.Enabled := true;
        end else
        begin
          frm_rtp_czyrb.QRLabel21.Enabled := False;
          frm_rtp_czyrb.QRLabel22.Enabled := False;
        end;
        frm_rtp_czyrb.czydm.Caption := frm_rtp_czyrb.czydm.Caption + pub_czyxm;
        frm_rtp_czyrb.bt.Caption := pub_yymc + frm_rtp_czyrb.bt.Caption;
        frm_rtp_czyrb.star_date.Caption := frm_rtp_czyrb.star_date.Caption + sp_jzdy.fieldbyname( 'ksrq' ).asstring;
        frm_rtp_czyrb.end_date.Caption := frm_rtp_czyrb.end_date.Caption + sp_jzdy.fieldbyname( 'jsrq' ).asstring;
        frm_rtp_czyrb.zbdate.Caption := frm_rtp_czyrb.zbdate.Caption + datetimetostr( now );
        //if pub_yydm='0256' then  //睢县添加预交金额部分
       // frm_rtp_czyrb.dxje.Caption := frm_rtp_czyrb.dxje.Caption + NumberToMoney( dm_data.qry_cxjz_mx.fieldbyname( 'ssje2' ).asfloat )
       // else
       //统一版本后添加预交金额部分
        frm_rtp_czyrb.dxje.Caption := frm_rtp_czyrb.dxje.Caption + NumberToMoney( dm_data.qry_cxjz_mx.fieldbyname( 'ssje2' ).asfloat );
        frm_rtp_czyrb.qrl_sbje.Caption := floattostr( dm_data.qry_cxjz_mx.FieldByName( 'sbsrje' ).AsFloat - dm_data.qry_cxjz_mx.FieldByName( 'sbtfje' ).AsFloat );
        frm_rtp_czyrb.QuickRep1.Preview;
        try frm_rtp_czyrb.Free
        except
        end;
      end;
    end
    else
    begin
      application.MessageBox( '请选择结帐单号!', '提示', 0 + 16 );
    end;
  end;


end;

procedure Tfrm_czyrbjkb.DBLookupComboBox1Click(Sender: TObject);
begin
  sp_jzkf.Close;
  sp_jzkf.parameters.ParamByName( '@jzdh' ).value := DBLookupComboBox1.Text;
  sp_jzkf.Open;
end;

procedure Tfrm_czyrbjkb.dt1Change( Sender: TObject );
begin
  if chk_Allczy.Checked then
  begin
    qry_cxjz.Close;
    qry_cxjz.SQL.Text := 'exec mzsf_cx_mzjzqk_cxjz '''+'AAAA'+''','''+FormatDateTime('yyyyMMdd',dt1.Date)+'''';
    //  qry_cxjz.parameters.ParamByName( 'czydm' ).value := pub_czydm;
    //  qry_cxjz.parameters.ParamByName( 'jzrq' ).value := dt1.Date;
    qry_cxjz.Open;
  end else
  begin
    qry_cxjz.Close;
    qry_cxjz.SQL.Text := 'exec mzsf_cx_mzjzqk_cxjz '''+pub_czydm+''','''+FormatDateTime('yyyyMMdd',dt1.Date)+'''';
    //  qry_cxjz.parameters.ParamByName( 'czydm' ).value := pub_czydm;
    //  qry_cxjz.parameters.ParamByName( 'jzrq' ).value := dt1.Date;
    qry_cxjz.Open;
  end;

  if not qry_cxjz.IsEmpty then
    DBLookupComboBox1.KeyValue := qry_cxjz.FieldByName( 'jzdh' ).asstring;

  qry_cxjz_sfmx.Close;
  qry_cxjz_sfmx.parameters.ParamByName( 'czydm' ).value := pub_czydm;
  qry_cxjz_sfmx.parameters.ParamByName( 'jzrq' ).value := dt1.Date;
  qry_cxjz_sfmx.Open;
  sp_jzkf.Close;
  sp_jzkf.parameters.ParamByName( '@jzdh' ).value := DBLookupComboBox1.Text;
  sp_jzkf.Open;
end;

end.

