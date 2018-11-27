unit p_zyplcffy;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Grids, DBGrids, Buttons, Db, DBTables, Mask, DBCtrls,
  ComCtrls, ADODB, DBGridEh, ImgList, Qrctrls, QuickRpt, GridsEh, Menus,
  cxLookAndFeelPainters, cxButtons, DBGridEhGrouping;

type
  TFrm_zyplcffy = class(TForm)
    DS_zb: TDataSource;
    DS_mx: TDataSource;
    Qry_zb: TADOQuery;
    Images: TImageList;
    sp_up_fypl: TADOStoredProc;
    ad_cfmx: TADODataSet;
    ad_plcl: TADODataSet;
    sp_up_jjtz: TADOStoredProc;
    QuickRep3: TQuickRep;
    TitleBand1: TQRBand;
    QRLabel11: TQRLabel;
    QRShape1: TQRShape;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    qr_dysj: TQRLabel;
    qr_pldh: TQRLabel;
    qr_bqmc: TQRLabel;
    qr_plscrq: TQRLabel;
    qr_lyyf: TQRLabel;
    QRLabel19: TQRLabel;
    qr_cfje: TQRLabel;
    qry_sum: TADOQuery;
    QRLabel20: TQRLabel;
    qr_cfsl: TQRLabel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    GroupBox2: TGroupBox;
    DBGridEh2: TDBGridEh;
    Panel3: TPanel;
    Panel4: TPanel;
    b_ok: TBitBtn;
    b_gr: TBitBtn;
    DBGridEh1: TDBGridEh;
    Panel1: TPanel;
    DBGridEh3: TDBGridEh;
    Panel6: TPanel;
    Panel2: TPanel;
    TJGRID: TDBGridEh;
    DBGridEh4: TDBGridEh;
    Panel5: TPanel;
    Panel7: TPanel;
    DBGridEh5: TDBGridEh;
    b_close: TBitBtn;
    B_dylyd: TBitBtn;
    DS_ks: TDataSource;
    ds_cfzb: TDataSource;
    qry_cfzb: TADOQuery;
    ds_cfmx: TDataSource;
    SP_cfmx: TADOStoredProc;
    Splitter1: TSplitter;
    qrl_brxx: TQRLabel;
    CheckBox1: TCheckBox;
    B_refesh: TBitBtn;
    b_byddy: TBitBtn;
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    bt1: TQRLabel;
    ks: TQRLabel;
    qssj: TQRLabel;
    zs: TQRLabel;
    QRLabepldh: TQRLabel;
    QRBand2: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRSubDetail1: TQRSubDetail;
    ypmc: TQRLabel;
    ypgg: TQRLabel;
    ypsl: TQRLabel;
    ypdw: TQRLabel;
    dj: TQRLabel;
    je: TQRLabel;
    xh: TQRLabel;
    QRSubDetail2: TQRSubDetail;
    tmh: TQRLabel;
    ypmc1: TQRLabel;
    ypgg1: TQRLabel;
    ypsl1: TQRLabel;
    ypdw1: TQRLabel;
    ypje: TQRLabel;
    brxm: TQRLabel;
    QRBand4: TQRBand;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRShape2: TQRShape;
    ChildBand1: TQRChildBand;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRShape3: TQRShape;
    QRBand3: TQRBand;
    bt: TQRLabel;
    ks1: TQRLabel;
    dysj: TQRLabel;
    jsbz: TQRLabel;
    QRLabel_pjhj: TQRLabel;
    QRBand5: TQRBand;
    jsbz1: TQRLabel;
    ad_qdybz: TADODataSet;
    adc_dycl: TADOCommand;
    ad_plzb: TADODataSet;
    ad_tzcfmx: TADODataSet;
    Panel8: TPanel;
    QuickRep2: TQuickRep;
    DetailBand1: TQRBand;
    PageHeaderBand1: TQRBand;
    QRLabel30: TQRLabel;
    qrl_brxm: TQRLabel;
    qrl_brnl: TQRLabel;
    qrl_bch: TQRLabel;
    qrl_ksmc: TQRLabel;
    qrl_xb: TQRLabel;
    qrl_cfbh: TQRLabel;
    qrl_dyrq: TQRLabel;
    qrl_tmh: TQRLabel;
    qrl_zgysmc: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRShape4: TQRShape;
    b_xz: TBitBtn;
    Label1: TLabel;
    b_kfy: TBitBtn;
    Panel9: TPanel;
    Label53: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    ADOStoredProc1: TADOStoredProc;
    qry_ks: TADOStoredProc;
    qry_zb1: TADOQuery;
    qry_cfzb_1: TADOQuery;
    sp_xztz: TADOStoredProc;
    BitBtn3: TBitBtn;
    qry_sum1: TADOQuery;
    BitBtn2: TBitBtn;
    qrl_pldh: TQRLabel;
    yzsx: TComboBox;
    Label5: TLabel;
    BitBtn1: TBitBtn;
    Qry_fbqpltzd: TADOQuery;
    procedure Qry_zbAfterScroll(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure b_okClick(Sender: TObject);
    procedure b_closeClick(Sender: TObject);
    procedure b_grClick(Sender: TObject);
    procedure DBGridEh2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure B_dylydClick(Sender: TObject);
    procedure B_refeshClick(Sender: TObject);
    procedure Qry_ksAfterScroll(DataSet: TDataSet);
    procedure qry_cfzbAfterScroll(DataSet: TDataSet);
    procedure CheckBox1Click(Sender: TObject);
    procedure DBGridEh3DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure TabSheet2Show(Sender: TObject);
    procedure b_byddyClick(Sender: TObject);
    procedure QRSubDetail2NeedData(Sender: TObject; var MoreData: Boolean);
    procedure QRSubDetail1NeedData(Sender: TObject; var MoreData: Boolean);
    procedure QRBand3BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure DBGridEh5DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
  //  procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure DBGridEh2CellClick(Column: TColumnEh);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure b_xzClick(Sender: TObject);
    procedure b_kfyClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure yzsxChange(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  //  procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
    prv_plhj: Single; //用于存放批量总额,(ygycxm,06-05-26)
    summer: integer;
    dybz: boolean;
    i: integer;
    zy_brxm, zy_tmh: string;

  public
    { Public declarations }
    ksdm, cfbh: string;
  end;

var
  Frm_zyplcffy: TFrm_zyplcffy;

implementation

uses p_dm, p_login, p_func,p_cx_plbrmx,p_zysf_print_service;

{$R *.DFM}

procedure TFrm_zyplcffy.Qry_ksAfterScroll(DataSet: TDataSet);
begin
  if qry_cfzb.active then
    if qry_ks['pldh'] = qry_cfzb['pldh'] then
      abort;
  begin
    qry_cfzb.close;
    qry_cfzb.Parameters.ParamByName('pldh').value := qry_ks['pldh'];
    qry_cfzb.open;
  end;
  B_dylyd.Enabled := Qry_ks.FieldByName('tzbz').Value;
  if qry_ks.FieldByName('jjtz').AsBoolean then
    b_byddy.Enabled := false
  else
    b_byddy.Enabled := true;
  ad_plzb.Close;
  ad_cfmx.close;
end;


procedure TFrm_zyplcffy.Qry_zbAfterScroll(DataSet: TDataSet);
begin
  if not qry_zb.IsEmpty then
  begin
    b_gr.Enabled := true;
    b_ok.Enabled := true;
    b_xz.Enabled := true;
    b_kfy.Enabled := true;
    ad_tzcfmx.close;
    ad_tzcfmx.Parameters.ParamByName('cfbh').value := qry_zb['cfbh'];
    ad_tzcfmx.open;
  end
  else
  begin
    b_gr.Enabled := false;
    b_ok.Enabled := false;
    b_xz.Enabled := false;
    b_kfy.Enabled := false;
  end;
end;

procedure TFrm_zyplcffy.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  ad_plzb.first;
  ad_cfmx.first;
  zy_tmh := ad_cfmx.FieldByName('tmh').AsString;
  i := 1;
  qrband3.enabled := true;
end;

procedure TFrm_zyplcffy.TabSheet2Show(Sender: TObject);
begin
  checkbox1.Checked := false;
  b_refesh.Click;
end;

procedure TFrm_zyplcffy.yzsxChange(Sender: TObject);
begin
  qry_zb1.close;
//  qry_zb1.SQL.text:='if object_id(''tempdb..#lsb'') is not null'+
//  ' drop table #lsb '+
//  ' select distinct convert(bit,0) xzbz,a.cfzje,a.yzsx,c.kssj,a.cfbh,b.*,c.pldh,c.tzbz,c.jjtz,d.mc yfmc,e.mc ksmc,'+
//  'f.yybch,case when sfjsyp=1 then ''精神药品''  when sfdmyp=1 then  ''毒性药品'' when  sfdmyp=1 then  ''麻醉药品'' else '+
//  '''普通药品'' end yplb'+
//  ' into #lsb '+
//  ' from  zyxyf_zycfzb a,zysf_zydj b,zyxyf_pltzb c ,sys_ksdm d,sys_ksdm e,sys_kscwsz f,zyxyf_zycfmx g,'+
//  '       sys_ypdm h '+
//  'where a.tmh=b.tmh and'+
//  ' sfbz=1 and '+
//  ' fybz=0  and '+
//  ' a.tybz=0  and '+
//  ' c.tzbz=0 and '+
//  ' b.ksdm=e.dm and '+
//  ' a.czks= d.dm  and '+
//  ' a.pldh=c.pldh and '+
//  ' c.ksdm='+''''+pub_bqdm+''''+' and '+
//  '           a.zyh=f.zyh '+
//  ' and a.cfbh=g.cfbh '+
//  ' and g.ypdm=h.ypdm '+
//  ' order by yfmc ';
  if Qry_fbqpltzd.IsEmpty then
  begin
    qry_zb1.SQL.text:='if object_id(''tempdb..#lsb'') is not null'+
    ' drop table #lsb '+
    ' select distinct convert(bit,0) xzbz,a.cfzje,a.yzsx,c.kssj,a.cfbh,b.*,c.pldh,c.tzbz,c.jjtz,d.mc yfmc,e.mc ksmc,'+
    'f.yybch,case when sfjsyp=1 then ''精神药品''  when sfdmyp=1 then  ''毒性药品'' when  sfdmyp=1 then  ''麻醉药品'' else '+
    '''普通药品'' end yplb'+
    ' into #lsb '+
    ' from  zyxyf_zycfzb a,zysf_zydj b,zyxyf_fbqpltzb c ,sys_ksdm d,sys_ksdm e,sys_kscwsz f,zyxyf_zycfmx g,'+
    '       sys_ypdm h '+
    'where a.tmh=b.tmh and'+
    ' sfbz=1 and '+
    ' fybz=0  and '+
    ' a.tybz=0  and '+
    ' c.tzbz=0 and '+
    ' b.ksdm=e.dm and '+
    ' a.czks= d.dm  and '+
    ' a.pldh=c.pldh and '+
    ' c.ksdm='+''''+pub_ksdm+''''+' and '+
    '           a.zyh=f.zyh '+
    ' and a.cfbh=g.cfbh '+
    ' and g.ypdm=h.ypdm '+
    ' order by yfmc ';
  end else
  begin
    qry_zb1.SQL.text:='if object_id(''tempdb..#lsb'') is not null'+
      ' drop table #lsb '+
      ' select distinct convert(bit,0) xzbz,a.cfzje,a.yzsx,c.kssj,a.cfbh,b.*,c.pldh,c.tzbz,c.jjtz,d.mc yfmc,e.mc ksmc,'+
      'f.yybch,case when sfjsyp=1 then ''精神药品''  when sfdmyp=1 then  ''毒性药品'' when  sfdmyp=1 then  ''麻醉药品'' else '+
      '''普通药品'' end yplb'+
      ' into #lsb '+
      ' from  zyxyf_zycfzb a,zysf_zydj b,zyxyf_pltzb c ,sys_ksdm d,sys_ksdm e,sys_kscwsz f,zyxyf_zycfmx g,'+
      '       sys_ypdm h '+
      'where a.tmh=b.tmh and'+
      ' sfbz=1 and '+
      ' fybz=0  and '+
      ' a.tybz=0  and '+
      ' c.tzbz=0 and '+
      ' b.ksdm=e.dm and '+
      ' a.czks= d.dm  and '+
      ' a.pldh=c.pldh and '+
      ' c.ksdm='+''''+pub_bqdm+''''+' and '+
      '           a.zyh=f.zyh '+
      ' and a.cfbh=g.cfbh '+
      ' and g.ypdm=h.ypdm '+
      ' order by yfmc ';
  end;
  qry_zb1.ExecSQL;
  qry_zb.close;
  if Trim(yzsx.text)='' then
  begin
  qry_zb.sql.text:=  ' select * from #lsb order by yfmc,yybch ';
  end
  else
  begin
  qry_zb.sql.text:=  ' select * from #lsb where yzsx=:yzsx order by yfmc,yybch ';
  Qry_zb.Parameters.ParamByName('yzsx').Value:=Trim(yzsx.text);
  end;
  qry_zb.Open;
end;

procedure TFrm_zyplcffy.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DM_data.qry_pub.Close;
  DM_data.qry_pub.SQL.text := 'if object_id(''tempdb..#lsb'') is not null drop table #lsb';
  DM_data.qry_pub.ExecSQL;
end;

procedure TFrm_zyplcffy.FormShow(Sender: TObject);
begin
  Panel8.Visible:= (pub_yydm = '0139');
  QuickRep1.Visible := false;
  QuickRep3.Visible := false;
  PageControl1.ActivePage := TabSheet1;
  Qry_fbqpltzd.Close;
  Qry_fbqpltzd.SQL.Text := 'select * from sys_bqzyfl where bqdm=' + #39+ pub_bqdm + #39;
  Qry_fbqpltzd.Open;
  qry_zb1.close;
  if Qry_fbqpltzd.IsEmpty then
  begin
  qry_zb1.SQL.text:='if object_id(''tempdb..#lsb'') is not null'+
    ' drop table #lsb '+
    ' select distinct convert(bit,0) xzbz,a.cfzje,a.yzsx,c.kssj,a.cfbh,b.*,c.pldh,c.tzbz,c.jjtz,d.mc yfmc,e.mc ksmc,'+
    'f.yybch,case when sfjsyp=1 then ''精神药品''  when sfdmyp=1 then  ''毒性药品'' when  sfdmyp=1 then  ''麻醉药品'' else '+
    '''普通药品'' end yplb'+
    ' into #lsb '+
    ' from  zyxyf_zycfzb a,zysf_zydj b,zyxyf_fbqpltzb c ,sys_ksdm d,sys_ksdm e,sys_kscwsz f,zyxyf_zycfmx g,'+
    '       sys_ypdm h '+
    'where a.tmh=b.tmh and'+
    ' sfbz=1 and '+
    ' fybz=0  and '+
    ' a.tybz=0  and '+
    ' c.tzbz=0 and '+
    ' b.ksdm=e.dm and '+
    ' a.czks= d.dm  and '+
    ' a.pldh=c.pldh and '+
    ' c.ksdm='+''''+pub_ksdm+''''+' and '+
    '           a.zyh=f.zyh '+
    ' and a.cfbh=g.cfbh '+
    ' and g.ypdm=h.ypdm '+
    ' order by yfmc ';
  end else
  begin
    qry_zb1.SQL.text:='if object_id(''tempdb..#lsb'') is not null'+
    ' drop table #lsb '+
    ' select distinct convert(bit,0) xzbz,a.cfzje,a.yzsx,c.kssj,a.cfbh,b.*,c.pldh,c.tzbz,c.jjtz,d.mc yfmc,e.mc ksmc,'+
    'f.yybch,case when sfjsyp=1 then ''精神药品''  when sfdmyp=1 then  ''毒性药品'' when  sfdmyp=1 then  ''麻醉药品'' else '+
    '''普通药品'' end yplb'+
    ' into #lsb '+
    ' from  zyxyf_zycfzb a,zysf_zydj b,zyxyf_pltzb c ,sys_ksdm d,sys_ksdm e,sys_kscwsz f,zyxyf_zycfmx g,'+
    '       sys_ypdm h '+
    'where a.tmh=b.tmh and'+
    ' sfbz=1 and '+
    ' fybz=0  and '+
    ' a.tybz=0  and '+
    ' c.tzbz=0 and '+
    ' b.ksdm=e.dm and '+
    ' a.czks= d.dm  and '+
    ' a.pldh=c.pldh and '+
    ' c.ksdm='+''''+pub_bqdm+''''+' and '+
    '           a.zyh=f.zyh '+
    ' and a.cfbh=g.cfbh '+
    ' and g.ypdm=h.ypdm '+
    ' order by yfmc ';
  end;
  qry_zb1.ExecSQL;
  qry_zb.close;
  if Trim(yzsx.text)='' then
  begin
  qry_zb.sql.text:=  ' select * from #lsb order by yfmc,yybch ';
  end
  else
  begin
  qry_zb.sql.text:=  ' select * from #lsb where yzsx=:yzsx order by yfmc,yybch ';
  Qry_zb.Parameters.ParamByName('yzsx').Value:=Trim(yzsx.text);
  end;
  qry_zb.Open;
  DM_data.qry_pub.Close;
  DM_data.qry_pub.SQL.text:='select * from sys_xt_kg ';
  DM_data.qry_pub.Open;
  if DM_data.qry_pub.FieldByName('yzkfyddjf').AsBoolean=true then
  b_kfy.Visible:=True
  else
  b_kfy.Visible:=False;

end;

procedure TFrm_zyplcffy.QRBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel_pjhj.Caption := '批量合计:' + format('%8.2f', [prv_plhj]); //增加设置批量合计,(ygycxm,06-05-26)
  if ad_cfmx.eof then
    qrband3.enabled := false;
  prv_plhj := 0;
end;

procedure TFrm_zyplcffy.QRSubDetail1NeedData(Sender: TObject;
  var MoreData: Boolean);
begin
  MoreData := True;
  if ad_plzb.Eof then
    MoreData := False
  else
  begin
    xh.caption := inttostr(ad_plzb.recno);
    ypmc.caption := ad_plzb.FieldByName('ypmc').AsString;
    ypgg.caption := ad_plzb.FieldByName('ypgg').AsString;
    ypdw.caption := ad_plzb.FieldByName('ypdw').AsString;
    ypsl.caption := format('%8.2f', [ad_plzb.FieldByName('ypsl').Asfloat]);
    dj.caption := format('%8.4f', [ad_plzb.FieldByName('zylsj').Asfloat]);
    je.caption := format('%8.2f', [ad_plzb.FieldByName('je').Asfloat]);
    prv_plhj := prv_plhj + ad_plzb.FieldByName('je').Asfloat; //存放批量合计(ygycxm,06-05-26)
    ad_plzb.Next;
  end;
end;

procedure TFrm_zyplcffy.QRSubDetail2NeedData(Sender: TObject;
  var MoreData: Boolean);
begin
  if dybz = false then
    moredata := false
  else
    MoreData := True;
  if (ad_cfmx.Eof) and (i <> 1) then
    MoreData := False
  else
  begin
    if zy_tmh = ad_cfmx.FieldByName('tmh').AsString then
    begin
      ypmc1.caption := ad_cfmx.FieldByName('ypmc').AsString;
      ypgg1.caption := ad_cfmx.FieldByName('ypgg').AsString;
      ypdw1.caption := ad_cfmx.FieldByName('ypdw').AsString;
      ypsl1.caption := format('%8.2f', [ad_cfmx.FieldByName('ypsl').Asfloat]);
      ypje.caption := format('%8.2f', [ad_cfmx.FieldByName('je').Asfloat]);
      if i = 1 then
      begin
        tmh.caption := trim(ad_cfmx.FieldByName('tmh').AsString);
        brxm.caption := trim(ad_cfmx.FieldByName('brxm').AsString) + ' ' + copy(ad_cfmx.FieldByName('bch').AsString, 3, 2);
        i := 2;
      end
      else
      begin
        tmh.caption := '';
        brxm.caption := '';
      end;
      childband1.Enabled := false;
      zy_tmh := ad_cfmx.FieldByName('tmh').AsString;
      zy_brxm := ad_cfmx.FieldByName('brxm').AsString;
      ad_cfmx.Next;
    end
    else
    begin
      tmh.caption := '';
      brxm.caption := '';
      ypmc1.caption := '';
      ypgg1.caption := '';
      ypdw1.caption := '';
      ypsl1.caption := '';
      ypje.caption := '';
      childband1.Enabled := true;
      zy_tmh := ad_cfmx.FieldByName('tmh').AsString;
      zy_brxm := ad_cfmx.FieldByName('brxm').AsString;
      i := 1;
    end;
  end;
end;

procedure TFrm_zyplcffy.b_okClick(Sender: TObject);
begin
  if not qry_zb.fieldbyname('tzbz').asboolean then
  begin
    sp_up_fypl.Close;
    with sp_up_fypl do
    begin
      Qry_fbqpltzd.Close;
      Qry_fbqpltzd.SQL.Text := 'select * from sys_bqzyfl where bqdm=' + #39+ pub_bqdm + #39;
      Qry_fbqpltzd.Open;
      if Qry_fbqpltzd.IsEmpty then
      begin
        parameters.parambyname('@ksdm').value := pub_ksdm;
        parameters.parambyname('@ksSJ').value := frm_func.curr_date();
        parameters.parambyname('@pldh').value := qry_zb['pldh'];
        Parameters.ParamByName('@pdbq').Value :='fbq' ;
        parameters.parambyname('@sczt').value := 'a';
      end
      else
      begin
        parameters.parambyname('@ksdm').value := pub_bqdm;
        Parameters.ParamByName('@pdbq').Value :='bq' ;
        parameters.parambyname('@ksSJ').value := frm_func.curr_date();
        parameters.parambyname('@pldh').value := qry_zb['pldh'];
        parameters.parambyname('@sczt').value := 'a';
      end;
    end;
    sp_up_fypl.ExecProc;
    if sp_up_fypl.parameters.parambyname('@sczt').value = 0 then
    begin
      application.MessageBox('批量已生成！', '提示', mb_ok + mb_iconinformation);
    end
    else
    begin
      application.MessageBox('批量生成未成功！', '错误', mb_ok + mb_iconerror);
      b_ok.setfocus;
    end;
    Qry_fbqpltzd.Close;
    Qry_fbqpltzd.SQL.Text := 'select * from sys_bqzyfl where bqdm=' + #39+ pub_bqdm + #39;
    Qry_fbqpltzd.Open;
    qry_zb1.close;
    if Qry_fbqpltzd.IsEmpty then
    begin
      qry_zb1.SQL.text:='if object_id(''tempdb..#lsb'') is not null'+
      ' drop table #lsb '+
      ' select distinct convert(bit,0) xzbz,a.cfzje,a.yzsx,c.kssj,a.cfbh,b.*,c.pldh,c.tzbz,c.jjtz,d.mc yfmc,e.mc ksmc,'+
      'f.yybch,case when sfjsyp=1 then ''精神药品''  when sfdmyp=1 then  ''毒性药品'' when  sfmzyp=1 then  ''麻醉药品'' else '+
      '''普通药品'' end yplb'+
      ' into #lsb '+
      ' from  zyxyf_zycfzb a,zysf_zydj b,zyxyf_fbqpltzb c ,sys_ksdm d,sys_ksdm e,sys_kscwsz f,zyxyf_zycfmx g,'+
      '       sys_ypdm h '+
      'where a.tmh=b.tmh and'+
      ' sfbz=1 and '+
      ' fybz=0  and '+
      ' a.tybz=0  and '+
      ' c.tzbz=0 and '+
      ' b.ksdm=e.dm and '+
      ' a.czks= d.dm  and '+
      ' a.pldh=c.pldh and '+
        ' c.ksdm='+''''+pub_ksdm+''''+' and '+
      '           a.zyh=f.zyh '+
      ' and a.cfbh=g.cfbh '+
      ' and g.ypdm=h.ypdm '+
      ' order by yfmc ';
    end else
    begin
    qry_zb1.SQL.text:='if object_id(''tempdb..#lsb'') is not null'+
      ' drop table #lsb '+
      ' select distinct convert(bit,0) xzbz,a.cfzje,a.yzsx,c.kssj,a.cfbh,b.*,c.pldh,c.tzbz,c.jjtz,d.mc yfmc,e.mc ksmc,'+
      'f.yybch,case when sfjsyp=1 then ''精神药品''  when sfdmyp=1 then  ''毒性药品'' when  sfmzyp=1 then  ''麻醉药品'' else '+
      '''普通药品'' end yplb'+
      ' into #lsb '+
      ' from  zyxyf_zycfzb a,zysf_zydj b,zyxyf_pltzb c ,sys_ksdm d,sys_ksdm e,sys_kscwsz f,zyxyf_zycfmx g,'+
      '       sys_ypdm h '+
      'where a.tmh=b.tmh and'+
      ' sfbz=1 and '+
      ' fybz=0  and '+
      ' a.tybz=0  and '+
      ' c.tzbz=0 and '+
      ' b.ksdm=e.dm and '+
      ' a.czks= d.dm  and '+
      ' a.pldh=c.pldh and '+
        ' c.ksdm='+''''+pub_bqdm+''''+' and '+
      '           a.zyh=f.zyh '+
      ' and a.cfbh=g.cfbh '+
      ' and g.ypdm=h.ypdm '+
      ' order by yfmc ';
    end;
  qry_zb1.ExecSQL;
  qry_zb.close;
  if Trim(yzsx.text)='' then
  begin
  qry_zb.sql.text:=  ' select * from #lsb order by yfmc,yybch ';
  end
  else
  begin
  qry_zb.sql.text:=  ' select * from #lsb where yzsx=:yzsx order by yfmc,yybch ';
  Qry_zb.Parameters.ParamByName('yzsx').Value:=Trim(yzsx.text);
  end;
  qry_zb.Open;

  ad_tzcfmx.close;

    if not qry_zb.IsEmpty then
    begin
      b_gr.Enabled := true;
      b_ok.Enabled := true;
      b_xz.Enabled := true;
      b_kfy.Enabled := true;
      ad_tzcfmx.Parameters.ParamByName('cfbh').value := qry_zb['cfbh'];
      ad_tzcfmx.open;
    end
    else
    begin
      b_gr.Enabled := false;
      b_ok.Enabled := false;
      b_xz.Enabled := false;
      b_kfy.Enabled := false;
    end;
  end
  else
    application.MessageBox('批量已通知过，不能再次通知！', '提示', mb_ok + mb_iconinformation);

end;

procedure TFrm_zyplcffy.DBGridEh2CellClick(Column: TColumnEh);
var v_cfbh:string;
    zb:Integer;
begin
  //zb:=Qry_zb.RecNo;
  if DBGridEh2.Focused then
  begin
    if 0 = Qry_zb.RecordCount then
    begin
      Exit;
    end;
    
    v_cfbh:=qry_zb.FieldByName('cfbh').asstring;
    if qry_zb.FieldByName('xzbz').Value=true then
    begin
      qry_zb.Edit;
      qry_zb.FieldByName('xzbz').Value := not qry_zb.FieldByName('xzbz').Value;
      qry_zb.Post;
    end
    else
    begin
      qry_cfzb_1.Close;
      qry_cfzb_1.Filtered:=false;
      qry_cfzb_1.SQL.text:='select  * from #lsb order by yfmc,yybch';
      qry_cfzb_1.open;
      qry_cfzb_1.Filter:='xzbz=1 and yfmc<>'+''''+qry_zb.FieldByName('yfmc').Value+'''';
      qry_cfzb_1.Filtered:=true;
      if qry_cfzb_1.RecordCount>0 then
      begin
        qry_cfzb_1.Filtered:=False;
        qry_cfzb_1.Locate('cfbh',v_cfbh,[]);
        Application.MessageBox('选择通知不能选择不同药房的处方', '提示', MB_OK +
        MB_ICONSTOP);
        Exit;
      end;
//      qry_cfzb_1.Filtered:=False;
//      qry_zb.Locate('cfbh',v_cfbh,[]);
      //Qry_zb.RecNo:=zb;
      qry_zb.Edit;
      qry_zb.FieldByName('xzbz').Value := not qry_zb.FieldByName('xzbz').Value;
      qry_zb.Post;
      //qry_zb.Locate('cfbh',v_cfbh,[]);
    end;

  end;
end;

procedure TFrm_zyplcffy.DBGridEh2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if (qry_zb.fieldbyname('tzbz').asboolean) and (not qry_zb.fieldbyname('jjtz').asboolean) then
  begin
    DBGridEh2.Canvas.Brush.Color := clwhite;
    DBGridEh2.Canvas.Font.color := clblue;
  end
  else
    if (qry_zb.fieldbyname('tzbz').asboolean) and (qry_zb.fieldbyname('jjtz').asboolean) then
    begin
      DBGridEh2.Canvas.Brush.Color := clwhite;
      DBGridEh2.Canvas.Font.color := clred;
    end;

    if (qry_zb.fieldbyname('yplb').AsString='麻醉药品') or  (qry_zb.fieldbyname('yplb').AsString='毒性药品')  then
    begin
      DBGridEh2.Canvas.Brush.Color := $008080FF;
      DBGridEh2.Canvas.Font.color := clblack;
    end;

    if qry_zb.fieldbyname('yplb').AsString='精神药品' then
    begin
      DBGridEh2.Canvas.Brush.Color := $00FFFF80;
      DBGridEh2.Canvas.Font.color := clblack;
    end;
  DBGridEh2.DefaultDrawColumnCell(rect, datacol, column, state);
end;

procedure TFrm_zyplcffy.DBGridEh3DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if (qry_ks.fieldbyname('jjtz').asboolean) then
  begin
    dbgrideh3.Canvas.Brush.Color := clwhite;
    dbgrideh3.Canvas.Font.color := clred;
  end;
  if (qry_ks.fieldbyname('clbz').asboolean) then
  begin
    if (qry_ks.fieldbyname('jjtz').asboolean) then
    begin
      dbgrideh3.Canvas.Brush.Color := clSkyBlue;
      dbgrideh3.Canvas.Font.color := clred;
    end
    else
    begin
      dbgrideh3.Canvas.Brush.Color := clSkyBlue;
      dbgrideh3.Canvas.Font.color := clblue;
    end;
  end;
  dbgrideh3.DefaultDrawColumnCell(rect, datacol, column, state);
end;

procedure TFrm_zyplcffy.DBGridEh5DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if (qry_cfzb.fieldbyname('fybz').asboolean) then
  begin
    dbgrideh5.Canvas.Brush.Color := clSkyBlue;
    dbgrideh5.Canvas.Font.color := clred;
  end;
  dbgrideh5.DefaultDrawColumnCell(rect, datacol, column, state);
end;

procedure TFrm_zyplcffy.qry_cfzbAfterScroll(DataSet: TDataSet);
begin
  if sp_cfmx.active then
    if qry_cfzb['cfbh'] = sp_cfmx['cfbh'] then
      abort;
  sp_cfmx.close;
  sp_cfmx.Parameters.ParamByName('@cfbh').value := qry_cfzb['cfbh'];
  sp_cfmx.Parameters.ParamByName('@ksdm').value := qry_ks['yfdm'];
  sp_cfmx.Parameters.ParamByName('@bz').value := qry_cfzb.FieldByName('bz').AsInteger;
  sp_cfmx.open;
end;

procedure TFrm_zyplcffy.b_closeClick(Sender: TObject);
begin
  self.close;
end;

procedure TFrm_zyplcffy.b_grClick(Sender: TObject);
var
  s, cfbh, cfbh1,pro_zyh,pro_pldh,pro_cfbh,sftz: string;
  i: integer;
begin
  sftz:='1';
  pro_zyh:=qry_zb.fieldbyname('zyh').asstring;
  pro_pldh:= qry_zb.fieldbyname('pldh').asstring;
  pro_cfbh:= qry_zb.fieldbyname('cfbh').asstring;
  qry_zb.DisableControls;
  qry_zb.First;
  while not qry_zb.eof do
  begin
  if (qry_zb.FieldByName('zyh').AsString=pro_zyh) and  (qry_zb.FieldByName('pldh').AsString=pro_pldh)  then
  begin
    ad_tzcfmx.First;
    while not ad_tzcfmx.eof do
    begin
       if ad_tzcfmx.FieldByName('ypsl').AsInteger<0 then
       sftz:='0';
       ad_tzcfmx.Next;
    end;
  end;
  Qry_zb.Next;
  end;
  Qry_zb.EnableControls;
  Qry_zb.Locate('cfbh',pro_cfbh,[]);
  if sftz='0' then
  begin
    ShowMessage('该病人同一批量中存在退药，不能单独通知，请连同退药处方一并选择通知！');
    Abort;
  end;


  if not qry_zb.IsEmpty then
  begin
    cfbh1 := qry_zb.fieldbyname('pldh').asstring;
    if not qry_zb.fieldbyname('tzbz').asboolean then
    begin
      cfbh := get_sjh(pub_czydm);
      sp_up_jjtz.close;
      if Qry_fbqpltzd.IsEmpty then
      begin
        sp_up_jjtz.Parameters.ParamByName('@ksdm').value := pub_ksdm;
        sp_up_jjtz.Parameters.ParamByName('@pldh').value := cfbh;
        sp_up_jjtz.Parameters.ParamByName('@cfbh').value := DBGridEh2.DataSource.DataSet.fieldbyname('cfbh').asstring;
        sp_up_jjtz.Parameters.ParamByName('@pdbq').value := 'fbq';
        sp_up_jjtz.Parameters.ParamByName('@sczt').value := 'a';
      end else
      begin
        sp_up_jjtz.Parameters.ParamByName('@ksdm').value := pub_bqdm;
        sp_up_jjtz.Parameters.ParamByName('@pldh').value := cfbh;
        sp_up_jjtz.Parameters.ParamByName('@cfbh').value := DBGridEh2.DataSource.DataSet.fieldbyname('cfbh').asstring;
        sp_up_jjtz.Parameters.ParamByName('@pdbq').value := 'bq';
        sp_up_jjtz.Parameters.ParamByName('@sczt').value := 'a';
      end;
      sp_up_jjtz.ExecProc;
      s := sp_up_jjtz.Parameters.ParamByName('@sczt').value;
      if s <> '0' then
      begin
        application.MessageBox('批量生成未成功！', '错误', mb_ok + mb_iconerror);
        b_gr.setfocus;
      end;
      if s = '0' then
        application.MessageBox('紧急批量已生成！', '提示', mb_ok + mb_iconinformation);
    end
    else
      application.MessageBox('批量已通知过，不能再次通知！', '提示', mb_ok + mb_iconinformation);
      DM_data.qry_pub.close;
      DM_data.qry_pub.SQL.text:=' select * from zyxyf_zycfzb where pldh='+''''+pro_pldh+'''';
      DM_data.qry_pub.sql.Add('   union all ');
      DM_data.qry_pub.SQL.Add('   select * from zyxyf_cycfzb where pldh='+''''+pro_pldh+'''' );
      DM_data.qry_pub.Open;

      if DM_data.qry_pub.IsEmpty then
      begin
        DM_data.qry_pub.close;
        if Qry_fbqpltzd.IsEmpty then
        begin
          DM_data.qry_pub.SQL.text:='delete from zyxyf_fbqpltzb where pldh='+''''+pro_pldh+'''';
        end else
        begin
          DM_data.qry_pub.SQL.text:='delete from zyxyf_pltzb where pldh='+''''+pro_pldh+'''';
        end;
        DM_data.qry_pub.ExecSQL;
      end;

    qry_zb1.close;
    if Qry_fbqpltzd.IsEmpty then
    begin
      qry_zb1.SQL.text:='if object_id(''tempdb..#lsb'') is not null'+
      ' drop table #lsb '+
      ' select distinct convert(bit,0) xzbz,a.cfzje,a.yzsx,c.kssj,a.cfbh,b.*,c.pldh,c.tzbz,c.jjtz,d.mc yfmc,e.mc ksmc,'+
      'f.yybch,case when sfjsyp=1 then ''精神药品''  when sfdmyp=1 then  ''毒性药品'' when  sfdmyp=1 then  ''麻醉药品'' else '+
      '''普通药品'' end yplb'+
      ' into #lsb '+
      ' from  zyxyf_zycfzb a,zysf_zydj b,zyxyf_fbqpltzb c ,sys_ksdm d,sys_ksdm e,sys_kscwsz f,zyxyf_zycfmx g,'+
      '       sys_ypdm h '+
      'where a.tmh=b.tmh and'+
      ' sfbz=1 and '+
      ' fybz=0  and '+
      ' a.tybz=0  and '+
      ' c.tzbz=0 and '+
      ' b.ksdm=e.dm and '+
      ' a.czks= d.dm  and '+
      ' a.pldh=c.pldh and '+
      ' c.ksdm='+''''+pub_ksdm+''''+' and '+
      '           a.zyh=f.zyh '+
      ' and a.cfbh=g.cfbh '+
      ' and g.ypdm=h.ypdm '+
      ' order by yfmc ';
    end else
    begin
      qry_zb1.SQL.text:='if object_id(''tempdb..#lsb'') is not null'+
      ' drop table #lsb '+
      ' select distinct convert(bit,0) xzbz,a.cfzje,a.yzsx,c.kssj,a.cfbh,b.*,c.pldh,c.tzbz,c.jjtz,d.mc yfmc,e.mc ksmc,'+
      'f.yybch,case when sfjsyp=1 then ''精神药品''  when sfdmyp=1 then  ''毒性药品'' when  sfdmyp=1 then  ''麻醉药品'' else '+
      '''普通药品'' end yplb'+
      ' into #lsb '+
      ' from  zyxyf_zycfzb a,zysf_zydj b,zyxyf_pltzb c ,sys_ksdm d,sys_ksdm e,sys_kscwsz f,zyxyf_zycfmx g,'+
      '       sys_ypdm h '+
      'where a.tmh=b.tmh and'+
      ' sfbz=1 and '+
      ' fybz=0  and '+
      ' a.tybz=0  and '+
      ' c.tzbz=0 and '+
      ' b.ksdm=e.dm and '+
      ' a.czks= d.dm  and '+
      ' a.pldh=c.pldh and '+
      ' c.ksdm='+''''+pub_bqdm+''''+' and '+
      '           a.zyh=f.zyh '+
      ' and a.cfbh=g.cfbh '+
      ' and g.ypdm=h.ypdm '+
      ' order by yfmc ';
    end;
  qry_zb1.ExecSQL;
  qry_zb.close;
  if Trim(yzsx.text)='' then
  begin
  qry_zb.sql.text:=  ' select * from #lsb order by yfmc,yybch ';
  end
  else
  begin
  qry_zb.sql.text:=  ' select * from #lsb where yzsx=:yzsx order by yfmc,yybch ';
  Qry_zb.Parameters.ParamByName('yzsx').Value:=Trim(yzsx.text);
  end;
  qry_zb.Open;
    if not qry_zb.IsEmpty then
    begin
      b_gr.Enabled := true;
      b_ok.Enabled := true;
      b_xz.Enabled := true;
      b_kfy.Enabled := true;
   //   qry_zb.Locate('cfbh', cfbh1, []);
    end
    else
    begin
      b_gr.Enabled := false;
      b_ok.Enabled := false;
      b_xz.Enabled := false;
      b_kfy.Enabled := false;
    end;

  end
  else
end;

procedure TFrm_zyplcffy.B_dylydClick(Sender: TObject);
begin
  qry_sum.Close;
  qry_sum.Parameters.ParamByName('pldh').Value := qry_ks.fieldbyname('pldh').asstring;
  qry_sum.Parameters.ParamByName('pldh1').Value := qry_ks.fieldbyname('pldh').asstring;
  qry_sum.Open;
  qry_sum1.Close;
  qry_sum1.Parameters.ParamByName('pldh').Value := qry_ks.fieldbyname('pldh').asstring;
  qry_sum1.Parameters.ParamByName('pldh1').Value := qry_ks.fieldbyname('pldh').asstring;
  qry_sum1.Open;
  if qry_ks.FieldByName('jjtz').AsBoolean then
  begin
    QRLabel11.Caption := pub_yymc + '个人领药确认单';
    qrl_brxx.Caption :=
      '   姓名:' + trim(qry_cfzb.FieldByName('brxm').AsString) +
      '   床号:' + trim(qry_cfzb.FieldByName('bch').AsString) +
      '   卡号:'+  trim(qry_cfzb.FieldByName('tmh').AsString) +
      '   主管医生:' + trim(qry_cfzb.FieldByName('zgysmc').AsString);
  end
  else
  begin
    QRLabel11.Caption := pub_yymc + '批量领药确认单';
    qrl_brxx.Caption := '';
  end;
  qr_pldh.Caption := copy(Qry_ks.FieldByName('pldh').AsString, 0, 4) + ' ' +
    copy(Qry_ks.FieldByName('pldh').AsString, 5, 8) + ' ' +
    copy(Qry_ks.FieldByName('pldh').AsString, 13, 4);
  if Qry_fbqpltzd.IsEmpty then
  begin
    qr_bqmc.Caption := pub_ksmc;
  end else
  begin
    qr_bqmc.Caption := pub_bqmc;
  end;
//  qr_bqmc.Caption := pub_bqmc;
  qr_plscrq.Caption := Qry_ks.FieldByName('scsj').AsString;
  qr_lyyf.Caption := Qry_ks.FieldByName('ksmc').AsString;
  if (pub_yydm='0124') or (pub_yydm='0199') or (pub_yydm='0182') or
  (pub_yydm='0205') or (pub_yydm='0256') then
  begin
    qr_cfje.Caption := '¥' + formatfloat('0.00', qry_sum1.FieldByName('cfzje').AsFloat) + '元整';
  end
  else
  begin
    qr_cfje.Caption := '¥' + formatfloat('0.00', qry_sum.FieldByName('cfzje').AsFloat) + '元整';
  end;
  qr_cfsl.Caption := trim(qry_sum.FieldByName('cfsl').AsString) + '张';
  QRLabel16.Caption := '领药人签字:';
  qr_dysj.Caption := '打印时间:' + formatdatetime('', frm_func.curr_date);
  if qry_ks.FieldByName('bqlyddy').AsBoolean then
  begin
      if application.MessageBox('药品领药单已打印过,是否重新打印', '提示', mb_yesno + mb_iconinformation + MB_DEFBUTTON2) = IDYES then
      begin
      if pub_yydm<>'0015' then
      begin
      QuickRep3.Page.Width:=210;
      QuickRep3.Page.Length:=93;
      end
      else
      begin
      QuickRep3.Page.Width:=182;
      QuickRep3.Page.Length:=257;
 //   QuickRep3.Width:=210;
      end;
      QuickRep3.Print;
      end;
  end
  else
  begin
    dm_data.qry_pub.Close;
    if Qry_fbqpltzd.IsEmpty then
    begin
      dm_data.qry_pub.SQL.Text := 'update zyxyf_fbqpltzb set bqlyddy=1 where pldh=' +
        '''' + qry_ks.fieldbyname('pldh').asstring + '''';
    end else
    begin
      dm_data.qry_pub.SQL.Text := 'update zyxyf_pltzb set bqlyddy=1 where pldh=' +
        '''' + qry_ks.fieldbyname('pldh').asstring + '''';
    end;
    dm_data.qry_pub.ExecSQL;
    if pub_yydm<>'0015' then
    begin
    QuickRep3.Page.Width:=210;
    QuickRep3.Page.Length:=93;
    end
    else
    begin
    QuickRep3.Page.Width:=182;
    QuickRep3.Page.Length:=257;
 //   QuickRep3.Width:=210;
    end;
    QuickRep3.Print;
  end;
end;

procedure TFrm_zyplcffy.B_refeshClick(Sender: TObject);
begin
  if checkbox1.Checked then
  begin
    qry_ks.Close;
    qry_ks.Parameters.Refresh;
    if Qry_fbqpltzd.IsEmpty then
    begin
      qry_ks.Parameters.ParamByName('@pdbq').Value :='fbq';
      qry_ks.Parameters.ParamByName('@ksdm').Value:=pub_ksdm;
    end else
    begin
      qry_ks.Parameters.ParamByName('@pdbq').Value :='bq';
      qry_ks.Parameters.ParamByName('@ksdm').Value:=pub_bqdm;
    end;
    qry_ks.Parameters.ParamByName('@lx').Value:='全部';
    qry_ks.Open;
  end ;
  if not(checkbox1.Checked) then
  begin
    qry_ks.Close;
    qry_ks.Parameters.Refresh;
    if Qry_fbqpltzd.IsEmpty then
    begin
      qry_ks.Parameters.ParamByName('@pdbq').Value :='fbq';
      qry_ks.Parameters.ParamByName('@ksdm').Value:=pub_ksdm;
    end else
    begin
      qry_ks.Parameters.ParamByName('@pdbq').Value :='bq';
      qry_ks.Parameters.ParamByName('@ksdm').Value:=pub_bqdm;
    end;
    qry_ks.Parameters.ParamByName('@lx').Value:='';
    qry_ks.Open;
  end;
//  qry_ks.Close;
//  qry_ks.Parameters.Refresh;
//  qry_ks.Parameters.ParamByName('@ksdm').Value:=pub_bqdm;
//  qry_ks.Parameters.ParamByName('@lx').Value:='';
//  qry_ks.Open;
  if qry_ks.IsEmpty then
  begin
    b_dylyd.Enabled := false;
    b_byddy.Enabled := false;
  end
  else
  begin
    b_dylyd.Enabled := true;
    if qry_ks.FieldByName('jjtz').AsBoolean then
      b_byddy.Enabled := false
    else
      b_byddy.Enabled := true;
  end;
  ad_plzb.Close;
  ad_cfmx.Close;
end;

procedure TFrm_zyplcffy.b_xzClick(Sender: TObject);
var
  s, cfbh, cfbh1,h_cfbh,h_pldh,h_pldh1,cfbh2,pldh2,zyh2: string;
  i: integer;
begin
  h_cfbh:='';
  h_pldh:='';
  qry_zb.DisableControls;
  qry_zb.First;
  while not qry_zb.eof do
  begin
    if (qry_zb.FieldByName('xzbz').AsBoolean=true) and (qry_zb.FieldByName('cfzje').AsFloat>0) then
    begin
      cfbh2:=qry_zb.FieldByName('cfbh').AsString;
      pldh2:=qry_zb.FieldByName('pldh').AsString;
      zyh2:= qry_zb.FieldByName('zyh').AsString;
      while not qry_zb.eof do
      begin
        if (qry_zb.FieldByName('xzbz').AsBoolean=false) and (qry_zb.FieldByName('pldh').AsString=pldh2) and
           (qry_zb.FieldByName('zyh').AsString=zyh2) and (qry_zb.FieldByName('cfzje').AsFloat<0) and
           (qry_zb.FieldByName('cfbh').AsString<>cfbh2) then
        begin
          Application.MessageBox('通知失败，有退药处方需要一起选择批量通知！','提示',16);
          qry_zb.EnableControls;
          Exit;
        end;
        qry_zb.Next;
      end;
      qry_zb.Locate('cfbh',cfbh2,[]);
      h_cfbh:=h_cfbh+ ','+qry_zb.FieldByName('cfbh').AsString;
      h_pldh:=h_pldh+qry_zb.FieldByName('pldh').AsString+',';
    end;
    if (qry_zb.FieldByName('xzbz').AsBoolean=true) and (qry_zb.FieldByName('cfzje').AsFloat<0) then
    begin
      cfbh2:=qry_zb.FieldByName('cfbh').AsString;
      pldh2:=qry_zb.FieldByName('pldh').AsString;
      zyh2:= qry_zb.FieldByName('zyh').AsString;
      while not qry_zb.eof do
      begin
        if (qry_zb.FieldByName('xzbz').AsBoolean=false) and (qry_zb.FieldByName('pldh').AsString=pldh2) and
           (qry_zb.FieldByName('zyh').AsString=zyh2) and (qry_zb.FieldByName('cfzje').AsFloat>0) and
           (qry_zb.FieldByName('cfbh').AsString<>cfbh2) then
        begin
          Application.MessageBox('通知失败，负处方不能单独通知，有正数处方需要一起选择批量通知！','提示',16);
          qry_zb.EnableControls;
          Exit;
        end;
        qry_zb.Next;
      end;
      qry_zb.Locate('cfbh',cfbh2,[]);
      h_cfbh:=h_cfbh+ ','+qry_zb.FieldByName('cfbh').AsString;
      h_pldh:=h_pldh+qry_zb.FieldByName('pldh').AsString+',';
    end;
    qry_zb.Next;
  end;
  qry_zb.First;
  qry_zb.EnableControls;

  if (not qry_zb.IsEmpty) and (h_cfbh<>'') then
  begin
    cfbh1 := qry_zb.fieldbyname('pldh').asstring;
    if (not qry_zb.fieldbyname('tzbz').asboolean) and (h_cfbh<>'') then
    begin
      cfbh := get_sjh(pub_czydm);
      qry_zb.First;
      qry_zb.ControlsDisabled;
      while not qry_zb.eof do
      begin
        if qry_zb.FieldByName('xzbz').AsBoolean=True then
        begin
          sp_xztz.close;
          //sp_xztz.Parameters.Refresh;
//          sp_xztz.Parameters.ParamByName('@ksdm').value := pub_bqdm;
//          sp_xztz.Parameters.ParamByName('@pldh').value := cfbh;
//          sp_xztz.Parameters.ParamByName('@cfbh').value := qry_zb.FieldByName('cfbh').asstring;
//          sp_xztz.Parameters.ParamByName('@sczt').value := 'a';
          if Qry_fbqpltzd.IsEmpty then
          begin
            sp_xztz.Parameters.ParamByName('@ksdm').value := pub_ksdm;
            sp_xztz.Parameters.ParamByName('@pldh').value := cfbh;
            sp_xztz.Parameters.ParamByName('@cfbh').value := qry_zb.FieldByName('cfbh').asstring;
            sp_xztz.Parameters.ParamByName('@pdbq').Value :='fbq';
            sp_xztz.Parameters.ParamByName('@sczt').value := 'a';
          end else
          begin
            sp_xztz.Parameters.ParamByName('@ksdm').value := pub_bqdm;
            sp_xztz.Parameters.ParamByName('@pldh').value := cfbh;
            sp_xztz.Parameters.ParamByName('@cfbh').value := qry_zb.FieldByName('cfbh').asstring;
            sp_xztz.Parameters.ParamByName('@pdbq').Value :='bq';
            sp_xztz.Parameters.ParamByName('@sczt').value := 'a';
          end;
          sp_xztz.ExecProc;
          s := sp_xztz.Parameters.ParamByName('@sczt').value;
        end;
        qry_zb.Next;
      end;
      qry_zb.EnableControls;
      if s <> '0' then
      begin
        application.MessageBox('批量生成未成功！', '错误', mb_ok + mb_iconerror);
        b_gr.setfocus;
      end;
      if s = '0' then
        application.MessageBox('选择批量已生成！', '提示', mb_ok + mb_iconinformation);
    end
    else
      application.MessageBox('批量已通知过，不能再次通知或者没有选择通知的处方！', '提示', mb_ok + mb_iconinformation);

      while Pos(',',h_pldh)>0 do
      begin
      h_pldh1:= Copy(h_pldh,1,Pos(',',h_pldh)-1);
      DM_data.qry_pub.close;
      DM_data.qry_pub.SQL.text:=' select * from zyxyf_zycfzb where pldh='+''''+h_pldh1+'''';
      DM_data.qry_pub.sql.Add('   union all ');
      DM_data.qry_pub.SQL.Add('   select * from zyxyf_cycfzb where pldh='+''''+h_pldh1+'''' );
      DM_data.qry_pub.Open;

      if DM_data.qry_pub.IsEmpty then
      begin
        DM_data.qry_pub.close;
        if Qry_fbqpltzd.IsEmpty then
        begin
          DM_data.qry_pub.SQL.text:='delete from zyxyf_fbqpltzb where pldh='+''''+h_pldh1+'''';
        end else
        begin
          DM_data.qry_pub.SQL.text:='delete from zyxyf_pltzb where pldh='+''''+h_pldh1+'''';
        end;
        DM_data.qry_pub.ExecSQL;
      end;
      h_pldh:=  Copy(h_pldh,Pos(',',h_pldh)+1,Length(h_pldh));

      end;
    qry_zb1.close;
    if Qry_fbqpltzd.IsEmpty then
    begin
      qry_zb1.SQL.text:='if object_id(''tempdb..#lsb'') is not null'+
      ' drop table #lsb '+
      ' select distinct convert(bit,0) xzbz,a.cfzje,a.yzsx,c.kssj,a.cfbh,b.*,c.pldh,c.tzbz,c.jjtz,d.mc yfmc,e.mc ksmc,'+
      'f.yybch,case when sfjsyp=1 then ''精神药品''  when sfdmyp=1 then  ''毒性药品'' when  sfdmyp=1 then  ''麻醉药品'' else '+
      '''普通药品'' end yplb'+
      ' into #lsb '+
      ' from  zyxyf_zycfzb a,zysf_zydj b,zyxyf_fbqpltzb c ,sys_ksdm d,sys_ksdm e,sys_kscwsz f,zyxyf_zycfmx g,'+
      '       sys_ypdm h '+
      'where a.tmh=b.tmh and'+
      ' sfbz=1 and '+
      ' fybz=0  and '+
      ' a.tybz=0  and '+
      ' c.tzbz=0 and '+
      ' b.ksdm=e.dm and '+
      ' a.czks= d.dm  and '+
      ' a.pldh=c.pldh and '+
      ' c.ksdm='+''''+pub_ksdm+''''+' and '+
      '           a.zyh=f.zyh '+
      ' and a.cfbh=g.cfbh '+
      ' and g.ypdm=h.ypdm '+
      ' order by yfmc ';
    end
    else
      qry_zb1.SQL.text:='if object_id(''tempdb..#lsb'') is not null'+
      ' drop table #lsb '+
      ' select distinct convert(bit,0) xzbz,a.cfzje,a.yzsx,c.kssj,a.cfbh,b.*,c.pldh,c.tzbz,c.jjtz,d.mc yfmc,e.mc ksmc,'+
      'f.yybch,case when sfjsyp=1 then ''精神药品''  when sfdmyp=1 then  ''毒性药品'' when  sfdmyp=1 then  ''麻醉药品'' else '+
      '''普通药品'' end yplb'+
      ' into #lsb '+
      ' from  zyxyf_zycfzb a,zysf_zydj b,zyxyf_pltzb c ,sys_ksdm d,sys_ksdm e,sys_kscwsz f,zyxyf_zycfmx g,'+
      '       sys_ypdm h '+
      'where a.tmh=b.tmh and'+
      ' sfbz=1 and '+
      ' fybz=0  and '+
      ' a.tybz=0  and '+
      ' c.tzbz=0 and '+
      ' b.ksdm=e.dm and '+
      ' a.czks= d.dm  and '+
      ' a.pldh=c.pldh and '+
      ' c.ksdm='+''''+pub_bqdm+''''+' and '+
      '           a.zyh=f.zyh '+
      ' and a.cfbh=g.cfbh '+
      ' and g.ypdm=h.ypdm '+
      ' order by yfmc ';
  qry_zb1.ExecSQL;
  qry_zb.close;
  if Trim(yzsx.text)='' then
  begin
  qry_zb.sql.text:=  ' select * from #lsb order by yfmc,yybch ';
  end
  else
  begin
  qry_zb.sql.text:=  ' select * from #lsb where yzsx=:yzsx order by yfmc,yybch ';
  Qry_zb.Parameters.ParamByName('yzsx').Value:=Trim(yzsx.text);
  end;
  qry_zb.Open;
    if not qry_zb.IsEmpty then
    begin
      b_gr.Enabled := true;
      b_ok.Enabled := true;
      b_xz.Enabled := true;
      b_kfy.Enabled := true;
      qry_zb.Locate('cfbh', cfbh1, []);
    end
    else
    begin
      b_gr.Enabled := false;
      b_ok.Enabled := false;
      b_xz.Enabled := false;
      b_kfy.Enabled := false;
    end;
  end
end;

procedure TFrm_zyplcffy.CheckBox1Click(Sender: TObject);
begin
  if checkbox1.Checked then
  begin
    qry_ks.Close;
    qry_ks.Parameters.Refresh;
    if Qry_fbqpltzd.IsEmpty then
    begin
      qry_ks.Parameters.ParamByName('@pdbq').Value :='fbq';
      qry_ks.Parameters.ParamByName('@ksdm').Value:=pub_ksdm;
    end else
    begin
      qry_ks.Parameters.ParamByName('@pdbq').Value :='bq';
      qry_ks.Parameters.ParamByName('@ksdm').Value:=pub_bqdm;
    end;
    qry_ks.Parameters.ParamByName('@lx').Value:='全部';
    qry_ks.Open;
  end
  else
  begin
    qry_ks.Close;
    qry_ks.Parameters.Refresh;
    if Qry_fbqpltzd.IsEmpty then
    begin
      qry_ks.Parameters.ParamByName('@pdbq').Value :='fbq';
      qry_ks.Parameters.ParamByName('@ksdm').Value:=pub_ksdm;
    end else
    begin
      qry_ks.Parameters.ParamByName('@pdbq').Value :='bq';
      qry_ks.Parameters.ParamByName('@ksdm').Value:=pub_bqdm;
    end;
    qry_ks.Parameters.ParamByName('@lx').Value:='';
    qry_ks.Open;
  end;
  if qry_ks.IsEmpty then
  begin
    qry_cfzb.close;
    sp_cfmx.close;
    b_dylyd.Enabled := false;
    b_byddy.Enabled := false
  end
  else
  begin
    b_dylyd.Enabled := true;
    if qry_ks.FieldByName('jjtz').AsBoolean then
      b_byddy.Enabled := false
    else
      b_byddy.Enabled := true;
  end;
end;

procedure TFrm_zyplcffy.b_byddyClick(Sender: TObject);
begin
  prv_plhj := 0.00; //初始化用于存放批量合计(ygycxm,06-05-26)
  dybz := false;
  if not ad_plzb.active then
  begin
    ad_plzb.Close;
    ad_plzb.Parameters.ParamByName('pldh').value := qry_ks['pldh'];
    ad_plzb.open;
  end;
  ad_cfmx.close;
  ad_cfmx.Parameters.ParamByName('pldh').value := qry_ks['pldh'];
  ad_cfmx.Open;
  ad_qdybz.close;
  ad_qdybz.Parameters.ParamByName('pldh').value := qry_ks['pldh'];
  ad_qdybz.Open;
  QRLabepldh.Caption := '批量单号:' + qry_ks['pldh'];
  bt1.Caption := trim(pub_yymc) + '批量摆药单';
  ks.Caption := '病区:' + pub_bqmc;
  qssj.Caption := '通知时间：' + datetimetostr(qry_ks.fieldbyname('scsj').asdatetime);
  zs.caption := '(' + inttostr(qry_cfzb.recordcount) + ') 张';
  jsbz.Caption := '------------------------' + pub_bqmc + '   批量摆药单打印完毕';
  jsbz1.Caption := '------------------------' + pub_bqmc + '   批量摆药单打印完毕';
  bt.Caption := trim(pub_yymc) + '批量摆药单处方明细表';
  dysj.Caption := '批量处理时间：' + datetimetostr(frm_func.curr_date());
  ks1.Caption := '病区:' + pub_bqmc;
  dybz := true;
  if ad_plzb.isempty then
  begin
    application.MessageBox('药房未发放药品不能打印!', '错误', mb_ok + mb_iconerror);
    if b_ok.Enabled then
      b_ok.SetFocus;
    abort;
  end
  else
    if qry_ks.FieldByName('bqbyddy').AsBoolean then
    begin
      if application.MessageBox('批量摆药单已打印过,是否重新打印', '提示', mb_yesno + mb_iconinformation + MB_DEFBUTTON2) = IDYES then
        quickrep1.Preview;
    end
    else
    begin
      dm_data.qry_pub.Close;
      if Qry_fbqpltzd.IsEmpty then
      begin
        dm_data.qry_pub.SQL.Text := 'update zyxyf_fbqpltzb set bqbyddy=1 where pldh=' +
        '''' + qry_ks.fieldbyname('pldh').asstring + '''';
      end else
      begin
        dm_data.qry_pub.SQL.Text := 'update zyxyf_pltzb set bqbyddy=1 where pldh=' +
        '''' + qry_ks.fieldbyname('pldh').asstring + '''';
      end;
      dm_data.qry_pub.ExecSQL;
      quickrep1.Preview;
    end;
end;

{procedure TFrm_zyplcffy.BitBtn1Click(Sender: TObject);
begin
if pub_yydm<>'0151' then
begin
qrl_brxm.Caption:='病人姓名：'+qry_zb.FieldByName('brxm').asstring;
qrl_brnl.Caption:='病人年龄：'+qry_zb.FieldByName('brnl').asstring+'岁';
qrl_xb.Caption:='性别：'+qry_zb.FieldByName('brxb').asstring;
qrl_bch.Caption:='床号：'+qry_zb.FieldByName('bch').asstring;
qrl_ksmc.Caption:='科室：'+qry_zb.FieldByName('ksmc').asstring;
qrl_cfbh.Caption:='处方号：'+ qry_zb.FieldByName('cfbh').asstring;
qrl_dyrq.Caption:='打印日期：'+formatdatetime('yyyy-MM-dd',frm_func.curr_date);
QuickRep2.Preview;
end
else
 begin
   frm_zysf_print_service.printzyzycfdymxd(Qry_cfzb,SP_cfmx) ;   //北川中医院打印
 end;

end;  }



procedure TFrm_zyplcffy.BitBtn1Click(Sender: TObject);
begin
    if bitbtn1.Caption='全选' then
    begin
      Qry_zb.First;
      while not Qry_zb.eof do
      begin
        Qry_zb.Edit;
        Qry_zb.FieldByName('xzbz').Value := true;
        Qry_zb.Post;
        Qry_zb.Next;
      end;
      Qry_zb.First;
      bitbtn1.Caption:='全不选';
    end
    else
    begin
           Qry_zb.First;
      while not Qry_zb.eof do
      begin
        Qry_zb.Edit;
        Qry_zb.FieldByName('xzbz').Value := false;
        Qry_zb.Post;
        Qry_zb.Next;
      end;
      Qry_zb.First;
      bitbtn1.Caption:='全选';
    end;
end;

procedure TFrm_zyplcffy.BitBtn2Click(Sender: TObject);
  var
    tmh,brxm,brnl,brxb,bch,ksmc,zgysmc,cfbh,pldh:string;
begin
//if pub_yydm<>'0151' then
//begin
if pub_yydm='0220' then  //白河二医院要求将此打印 作为自定义报表
begin
  tmh:=Trim(qry_cfzb.FieldByName('tmh').asstring);
  brxm:=Trim(qry_cfzb.FieldByName('brxm').asstring);
  brnl:=Trim(qry_cfzb.FieldByName('brnl').asstring);
  brxb:=Trim(qry_cfzb.FieldByName('brxb').asstring);
  bch:=Trim(qry_cfzb.FieldByName('bch').asstring);
  ksmc:=Trim(qry_cfzb.FieldByName('ksmc').asstring);
  zgysmc:=Trim(qry_cfzb.FieldByName('zgysmc').asstring);
  cfbh:=Trim(qry_cfzb.FieldByName('cfbh').asstring);
  pldh:=Trim(qry_cfzb.FieldByName('tmh').asstring);
  frm_zysf_print_service.print_hsgzz_plcfmxdy(SP_cfmx,tmh,brxm,brnl,brxb,bch,ksmc,zgysmc,cfbh,pldh);
end else
begin
  qrl_tmh.Caption:='卡号:'+qry_cfzb.FieldByName('tmh').asstring;
  qrl_brxm.Caption:='病人姓名:'+qry_cfzb.FieldByName('brxm').asstring;
  qrl_brnl.Caption:='年龄:'+qry_cfzb.FieldByName('brnl').asstring+'岁';
  qrl_xb.Caption:='性别:'+qry_cfzb.FieldByName('brxb').asstring;
  qrl_bch.Caption:='床号:'+qry_cfzb.FieldByName('bch').asstring;
  qrl_ksmc.Caption:='科室:'+qry_cfzb.FieldByName('ksmc').asstring;
  qrl_zgysmc.Caption:='主管医生:'+qry_cfzb.FieldByName('zgysmc').AsString;
  qrl_cfbh.Caption:='处方号:'+ qry_cfzb.FieldByName('cfbh').asstring;
  qrl_dyrq.Caption:='打印日期:'+formatdatetime('yyyy-MM-dd',frm_func.curr_date);
  qrl_pldh.Caption:='批量单号:'+ qry_cfzb.FieldByName('pldh').asstring;
  QuickRep2.Preview;
end;
//end
//else
//begin
//  if qry_cfzb.IsEmpty then
//   begin
//     showmessage('没有需要打印的报表，请退出！');
//     exit;
//   end;
//
//  frm_zysf_print_service.printzyzycfdymxd(qry_cfzb,SP_cfmx) ;   //北川中医院打印
//end;
end;

procedure TFrm_zyplcffy.BitBtn3Click(Sender: TObject);
begin
  try
    application.createform( tfrm_cx_plbrmx, frm_cx_plbrmx );
    frm_cx_plbrmx.Edit1.text:=qry_ks.FieldByName('pldh').asstring;
    frm_cx_plbrmx.showmodal;
  finally
    frm_cx_plbrmx.free;
  end;
end;

procedure TFrm_zyplcffy.b_kfyClick(Sender: TObject);
var
  s, cfbh, cfbh1,h_cfbh,h_pldh,h_pldh1,kfbz: string;
  i: integer;
begin
  h_cfbh:='';
  h_pldh:='';
  qry_zb.DisableControls;
  qry_zb.First;
  while not qry_zb.eof do
  begin
    kfbz:='0';
    ad_tzcfmx.First;
    while not ad_tzcfmx.eof do
    begin
    if Trim(ad_tzcfmx.FieldByName('yytj').AsString)<>'口服' then
    begin
      kfbz:='1';
      Break;
    end;
      ad_tzcfmx.Next;
    end;

    if kfbz='0' then
    begin
    h_cfbh:=h_cfbh+ ','+qry_zb.FieldByName('cfbh').AsString;
    h_pldh:=h_pldh+qry_zb.FieldByName('pldh').AsString+',';
    end;
    qry_zb.Next;
  end;
  qry_zb.First;
  qry_zb.EnableControls;
  if (not qry_zb.IsEmpty) and (h_cfbh<>'') then
  begin
    cfbh1 := qry_zb.fieldbyname('pldh').asstring;
    if (not qry_zb.fieldbyname('tzbz').asboolean) and (h_cfbh<>'') then
    begin
      cfbh := get_sjh(pub_czydm);
      h_cfbh:=Copy(h_cfbh,2,Length(h_cfbh)-1)+',';
      while Pos(',',h_cfbh)>0 do
      begin
      sp_xztz.close;
      sp_xztz.Parameters.Refresh;
        if Qry_fbqpltzd.IsEmpty then
        begin
          sp_xztz.Parameters.ParamByName('@ksdm').value := pub_ksdm;
          sp_xztz.Parameters.ParamByName('@pldh').value := cfbh;
          sp_xztz.Parameters.ParamByName('@cfbh').value := Copy(h_cfbh,1,pos(',',h_cfbh)-1);
          sp_xztz.Parameters.ParamByName('@pdbq').Value :='fbq';
          sp_xztz.Parameters.ParamByName('@sczt').value := 'a';
        end else
        begin
          sp_xztz.Parameters.ParamByName('@ksdm').value := pub_bqdm;
          sp_xztz.Parameters.ParamByName('@pldh').value := cfbh;
          sp_xztz.Parameters.ParamByName('@cfbh').value := Copy(h_cfbh,1,pos(',',h_cfbh)-1);
          sp_xztz.Parameters.ParamByName('@pdbq').Value :='bq';
          sp_xztz.Parameters.ParamByName('@sczt').value := 'a';
        end;
        sp_xztz.ExecProc;
        h_cfbh:=Copy(h_cfbh,pos(',',h_cfbh)+1);
        s := sp_xztz.Parameters.ParamByName('@sczt').value;
      end;
      if s <> '0' then
      begin
        application.MessageBox('批量生成未成功！', '错误', mb_ok + mb_iconerror);
        b_gr.setfocus;
      end;
      if s = '0' then
        application.MessageBox('选择批量已生成！', '提示', mb_ok + mb_iconinformation);
    end
    else
      application.MessageBox('批量已通知过，不能再次通知或者没有选择通知的处方！', '提示', mb_ok + mb_iconinformation);

      while Pos(',',h_pldh)>0 do
      begin
      h_pldh1:= Copy(h_pldh,1,Pos(',',h_pldh)-1);
      DM_data.qry_pub.close;
      DM_data.qry_pub.SQL.text:=' select * from zyxyf_zycfzb where pldh='+''''+h_pldh1+'''';
      DM_data.qry_pub.sql.Add('   union all ');
      DM_data.qry_pub.SQL.Add('   select * from zyxyf_cycfzb where pldh='+''''+h_pldh1+'''' );
      DM_data.qry_pub.Open;

      if DM_data.qry_pub.IsEmpty then
      begin
        DM_data.qry_pub.close;
        if Qry_fbqpltzd.IsEmpty then
        begin
          DM_data.qry_pub.SQL.text:='delete from zyxyf_fbqpltzb where pldh='+''''+h_pldh1+'''';
        end
        else
        DM_data.qry_pub.SQL.text:='delete from zyxyf_pltzb where pldh='+''''+h_pldh1+'''';
        DM_data.qry_pub.ExecSQL;
      end;
      h_pldh:=  Copy(h_pldh,Pos(',',h_pldh)+1,Length(h_pldh));

      end;
    qry_zb1.close;
    if Qry_fbqpltzd.IsEmpty then
    begin
      qry_zb1.SQL.text:='if object_id(''tempdb..#lsb'') is not null'+
      ' drop table #lsb '+
      ' select distinct convert(bit,0) xzbz,a.cfzje,a.yzsx,c.kssj,a.cfbh,b.*,c.pldh,c.tzbz,c.jjtz,d.mc yfmc,e.mc ksmc,'+
      'f.yybch,case when sfjsyp=1 then ''精神药品''  when sfdmyp=1 then  ''毒性药品'' when  sfdmyp=1 then  ''麻醉药品'' else '+
      '''普通药品'' end yplb'+
      ' into #lsb '+
      ' from  zyxyf_zycfzb a,zysf_zydj b,zyxyf_fbqpltzb c ,sys_ksdm d,sys_ksdm e,sys_kscwsz f,zyxyf_zycfmx g,'+
      '       sys_ypdm h '+
      'where a.tmh=b.tmh and'+
      ' sfbz=1 and '+
      ' fybz=0  and '+
      ' a.tybz=0  and '+
      ' c.tzbz=0 and '+
      ' b.ksdm=e.dm and '+
      ' a.czks= d.dm  and '+
      ' a.pldh=c.pldh and '+
      ' c.ksdm='+''''+pub_ksdm+''''+' and '+
      '           a.zyh=f.zyh '+
      ' and a.cfbh=g.cfbh '+
      ' and g.ypdm=h.ypdm '+
      ' order by yfmc ';
    end else
    begin
      qry_zb1.SQL.text:='if object_id(''tempdb..#lsb'') is not null'+
      ' drop table #lsb '+
      ' select distinct convert(bit,0) xzbz,a.cfzje,a.yzsx,c.kssj,a.cfbh,b.*,c.pldh,c.tzbz,c.jjtz,d.mc yfmc,e.mc ksmc,'+
      'f.yybch,case when sfjsyp=1 then ''精神药品''  when sfdmyp=1 then  ''毒性药品'' when  sfdmyp=1 then  ''麻醉药品'' else '+
      '''普通药品'' end yplb'+
      ' into #lsb '+
      ' from  zyxyf_zycfzb a,zysf_zydj b,zyxyf_pltzb c ,sys_ksdm d,sys_ksdm e,sys_kscwsz f,zyxyf_zycfmx g,'+
      '       sys_ypdm h '+
      'where a.tmh=b.tmh and'+
      ' sfbz=1 and '+
      ' fybz=0  and '+
      ' a.tybz=0  and '+
      ' c.tzbz=0 and '+
      ' b.ksdm=e.dm and '+
      ' a.czks= d.dm  and '+
      ' a.pldh=c.pldh and '+
      ' c.ksdm='+''''+pub_bqdm+''''+' and '+
      '           a.zyh=f.zyh '+
      ' and a.cfbh=g.cfbh '+
      ' and g.ypdm=h.ypdm '+
      ' order by yfmc ';
    end;
  qry_zb1.ExecSQL;
  qry_zb.close;
  if Trim(yzsx.text)='' then
  begin
  qry_zb.sql.text:=  ' select * from #lsb order by yfmc,yybch ';
  end
  else
  begin
  qry_zb.sql.text:=  ' select * from #lsb where yzsx=:yzsx order by yfmc,yybch ';
  Qry_zb.Parameters.ParamByName('yzsx').Value:=Trim(yzsx.text);
  end;
  qry_zb.Open;
    if not qry_zb.IsEmpty then
    begin
      b_gr.Enabled := true;
      b_ok.Enabled := true;
      b_xz.Enabled := true;
      b_kfy.Enabled := true;
      qry_zb.Locate('cfbh', cfbh1, []);
    end
    else
    begin
      b_gr.Enabled := false;
      b_ok.Enabled := false;
      b_xz.Enabled := false;
      b_kfy.Enabled := false;
    end;
  end

end;

procedure TFrm_zyplcffy.Button1Click(Sender: TObject);
begin
  if Qry_zb.Active then
  begin
    Qry_zb.DisableControls;
    Qry_zb.First;
    while not Qry_zb.Eof do
    begin
      Qry_zb.Edit;
      Qry_zb.FieldByName('xzbz').Value := 1;
      Qry_zb.Post;
      Qry_zb.Next;
    end;
    Qry_zb.EnableControls;
  end;
end;

procedure TFrm_zyplcffy.Button2Click(Sender: TObject);
begin
  if Qry_zb.Active then
  begin
    Qry_zb.DisableControls;
    Qry_zb.First;
    while not Qry_zb.Eof do
    begin
      Qry_zb.Edit;
      Qry_zb.FieldByName('xzbz').Value := 0;
      Qry_zb.Post;
      Qry_zb.Next;
    end;
    Qry_zb.EnableControls;
  end;
end;

end.

