unit p_jcsqd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, GridsEh, DBGridEh, ExtCtrls, ComCtrls, StdCtrls, Buttons,
  QRCtrls, QuickRpt, uHSBarCodeImage,printers,  ToolCtrlsEh, DBGridEhGrouping;

type
  Tfrm_jcsqd = class(TForm)
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
    QuickRep3: TQuickRep;
    QRBand3: TQRBand;
    QRShape2: TQRShape;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText12: TQRDBText;
    QRBand4: TQRBand;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel15: TQRLabel;
    QRBand5: TQRBand;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    ql_zd: TQRLabel;
    QRLabel1: TQRLabel;
    QRDBText1: TQRDBText;
    QuickRep2: TQuickRep;
    DetailBand1: TQRBand;
    qrl_tmh: TQRLabel;
    QRLabel3: TQRLabel;
    qrl_brnl: TQRLabel;
    qrl_brxb: TQRLabel;
    qrl_brxm: TQRLabel;
    qrl_ksmc: TQRLabel;
    qrl_bch: TQRLabel;
    qrl_ryzd: TQRLabel;
    qrl_xmmc: TQRLabel;
    qrl_sl: TQRLabel;
    qrl_fyje: TQRLabel;
    qrl_kdys: TQRLabel;
    qrl_jcrq: TQRLabel;
    qrl_ysqm: TQRLabel;
    qrl_title: TQRLabel;
    QRLabel4: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabel5: TQRLabel;
    QRDBText3: TQRDBText;
    SummaryBand1: TQRBand;
    QRLabel18: TQRLabel;
    QRLabel2: TQRLabel;
    QRDBText4: TQRDBText;
    qckrp_dy: TQuickRep;
    qrbnd1: TQRBand;
    qrshp1: TQRShape;
    QRDBText6: TQRDBText;
    qrbnd3: TQRBand;
    QRShape1: TQRShape;
    QRDBText5: TQRDBText;
    qrlbl10: TQRLabel;
    QRLabel6: TQRLabel;
    QRBand6: TQRBand;
    QRShape3: TQRShape;
    qrlbl14: TQRLabel;
    QRShape4: TQRShape;
    qrlbl15: TQRLabel;
    qrlbl2: TQRLabel;
    qrlbl1: TQRLabel;
    qrdbtxt1: TQRDBText;
    qrdbtxt2: TQRDBText;
    qrlbl12: TQRLabel;
    qrlbl3: TQRLabel;
    qrlbl4: TQRLabel;
    qrdbtxt4: TQRDBText;
    qrdbtxt3: TQRDBText;
    qrlbl7: TQRLabel;
    qrlbl8: TQRLabel;
    qrdbtxt8: TQRDBText;
    qrdbtxt7: TQRDBText;
    qrlbl11: TQRLabel;
    QRBand7: TQRBand;
    qrch1: TQRRichText;
    qrlbl5: TQRLabel;
    QRShape5: TQRShape;
    qrlbl13: TQRLabel;
    cbbYiDaYin: TComboBox;
    qry_jctmkg: TADOQuery;
    btn_dyjsz: TButton;
    pnl1: TPanel;
    btn_gb: TButton;
    cbbdyjlb: TComboBox;
    lbldyj: TLabel;
    btn_1: TButton;
    rdgrpdyjkg: TRadioGroup;
    procedure FormShow(Sender: TObject);
    procedure pqExit(Sender: TObject);
    procedure abrClick(Sender: TObject);
    procedure qbqClick(Sender: TObject);
    procedure dt_zxsjChange(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure QRSubDetail1NeedData(Sender: TObject; var MoreData: Boolean);
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure BitBtn1Click(Sender: TObject);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QRSubDetail1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure pqKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn4Click(Sender: TObject);
    procedure p_zyhPrint(sender: TObject; var Value: string);
    procedure BitBtn5Click(Sender: TObject);
    procedure DBGridEh1CellClick(Column: TColumnEh);
    procedure cbbYiDaYinChange(Sender: TObject);
    procedure btn_dyjszClick(Sender: TObject);
    procedure btn_gbClick(Sender: TObject);
    procedure rdgrpdyjkgClick(Sender: TObject);
    procedure btn_1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_jcsqd: Tfrm_jcsqd;
  jyfzbh:string;
  cdmark:boolean;
implementation
uses p_func,p_dm, p_zysf_print_service;
{$R *.dfm}

procedure Tfrm_jcsqd.FormShow(Sender: TObject);
begin
if pub_yydm='0240' then //新疆沙雅县功能
  btn_dyjsz.Visible:=True;

  sp_yzsj.Close;
  sp_yzsj.Parameters.ParamByName('@scyzsj').Value :=dt_zxsj.DateTime;
  sp_yzsj.ExecProc;
  dt_zxsj.DateTime:= sp_yzsj.Parameters.ParamByName('@scyzsj').Value;
  quickrep1.Visible:=false;
//  abr.Checked:=True;
qbq.Checked:=True;
qbq.OnClick(Self);

end;

procedure Tfrm_jcsqd.pqExit(Sender: TObject);
begin
if not( qbq.focused or bitbtn2.focused or bitbtn3.focused  or abr.focused or (bitbtn1.focused and (pq.text=''))) then
begin
if abr.Checked then
begin
if pq.Text<>'' then
begin
ad_zyh.Close;
ad_zyh.CommandText:='select a.zyh from zysf_zydj a,sys_kscwsz b where a.zyh=b.zyh and (a.tmh='+#39+pq.Text+#39+' or (b.bcbh='+#39+pq.text+#39+' and b.bqdm='+''''+pub_bqdm+''''+'))'+' and a.cybz=0 order by ryrq desc';
ad_zyh.open;
if ad_zyh.IsEmpty then
begin
  application.MessageBox('该病人不存在，请确定病人住院是否正确！！','提示',mb_ok+mb_iconinformation);
  pq.Clear;
  pq.SetFocus;
end
else
begin
sp_jyxm.close;
sp_jyxm.Parameters.Refresh;
sp_jyxm.Parameters.ParamByName('@zyh').Value:=ad_zyh.fieldbyname('zyh').asstring;
sp_jyxm.Parameters.ParamByName('@zxsj').Value:=formatdatetime('yyyymmdd',dT_zxsj.Date);
sp_jyxm.Parameters.ParamByName('@bqdm').Value:=pub_bqdm;
sp_jyxm.Open;
end;
end
else
 begin
   application.messagebox('请输入病人住院号！','提示',mb_ok+mb_iconinformation);
   pq.setfocus;
 end;
end
else
if qbq.Checked then
begin
  sp_jyxm.close;
  sp_jyxm.Parameters.ParamByName('@zyh').Value:='';
  sp_jyxm.Parameters.ParamByName('@zxsj').Value:=formatdatetime('yyyymmdd',dT_zxsj.Date);
  sp_jyxm.Parameters.ParamByName('@bqdm').Value:=pub_bqdm;
  sp_jyxm.Open;
end;
end;
cbbYiDaYin.OnChange(self);
end;

procedure Tfrm_jcsqd.pqKeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
begin
if pq.text='' then
begin
if abr.checked then
   application.messagebox('请输入病人住院号！','提示',mb_ok+mb_iconinformation)
else
begin
  bitbtn5.SetFocus;
end;
end
else
 bitbtn5.setfocus;
end;

 
end;

procedure Tfrm_jcsqd.p_zyhPrint(sender: TObject; var Value: string);
begin
if sp_jyxm.fieldbyname('jyddy').asboolean then
value:=value+'★'
else
value:=value;
end;

procedure Tfrm_jcsqd.qbqClick(Sender: TObject);
begin
if qbq.Checked then
begin
  sp_jyxm.close;
  sp_jyxm.Parameters.Refresh;
  sp_jyxm.Parameters.ParamByName('@zyh').Value:='';
  sp_jyxm.Parameters.ParamByName('@zxsj').Value:=formatdatetime('yyyymmdd',dT_zxsj.Date);
  sp_jyxm.Parameters.ParamByName('@bqdm').Value:=pub_bqdm;
  sp_jyxm.Open;
  cbbYiDaYinChange(cbbYiDaYin);
end;
end;

procedure Tfrm_jcsqd.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  p_zyh.Caption:='住院号:'+trim(sp_jyxm.FieldByName('tmh').asstring);
  p_xm.Caption:='姓名:'+trim(sp_jyxm.FieldByName('brxm').asstring);
  p_xb.Caption:='性别:'+trim(sp_jyxm.FieldByName('brxb').asstring);
  p_nl.Caption:='年龄:'+trim(sp_jyxm.FieldByName('brnl').asstring);
  p_bch.Caption:='病床:'+trim(sp_jyxm.FieldByName('bch').asstring);
  p_ks.Caption:='科室:'+trim(sp_jyxm.FieldByName('ksmc').asstring);
  p_ryzd.Caption:='入院诊断:'+trim(sp_jyxm.FieldByName('ryzd').asstring);
  jyyb.Caption:=trim(sp_jyxm.FieldByName('jyyb').asstring);
  HSBarCodeImage1.barcode:=jyfzbh;
  //jyfzbh:=trim(sp_jyxm.FieldByName('jyfzbh').asstring);
  p_jyh.Width:=HSBarCodeImage1.width;
  p_jyh.Height:=HSBarCodeImage1.Height;
  p_jyh.Picture:=HSBarCodeImage1.Picture;
end;

procedure Tfrm_jcsqd.QRSubDetail1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  if jyfzbh<>trim(sp_jyxm.fieldbyname('jyfzbh').asstring) then
  begin
  jyfzbh:=trim(sp_jyxm.fieldbyname('jyfzbh').asstring);
  if not sp_jyxm.eof then
  quickrep1.NewPage;
  end;
end;

procedure Tfrm_jcsqd.QRSubDetail1NeedData(Sender: TObject;
  var MoreData: Boolean);
begin
MoreData := True;
 if sp_jyxm.Eof then
  MoreData := False;
  p_jyxm.Caption:='';
 if not sp_jyxm.eof then
  begin
   p_jyxm.caption := sp_jyxm.FieldByName('xmmc').Asstring;
  end;
  sp_jyxm.next;
end;

procedure Tfrm_jcsqd.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
sp_jyxm.First;
jyfzbh:=trim(sp_jyxm.fieldbyname('jyfzbh').asstring);
end;

procedure Tfrm_jcsqd.rdgrpdyjkgClick(Sender: TObject);
var zt :Integer;
begin
 try
  qry_jctmkg.close;
  qry_jctmkg.open;
  qry_jctmkg.Edit;
  zt:=0;
   if rdgrpdyjkg.ItemIndex=0 then
   begin
     zt:=1;
   end;
  qry_jctmkg.FieldByName('jcsqddykg').value:=zt;
  qry_jctmkg.Post;
 except
   ShowMessage('失败');
 end;

end;

procedure Tfrm_jcsqd.abrClick(Sender: TObject);
begin
if abr.Checked then
begin
label1.Caption:='病床号：';
sp_jyxm.close;
pq.SetFocus;
end;

end;

procedure Tfrm_jcsqd.BitBtn1Click(Sender: TObject);
begin
  cdmark:=true;
  sp_brlb.close;
  sp_brlb.Parameters.Refresh;
  sp_brlb.Parameters.ParamByName('@zyh').Value:=sp_jyxm.Parameters.ParamByName('@zyh').Value;
  sp_brlb.Parameters.ParamByName('@zxsj').Value:=formatdatetime('yyyymmdd',dT_zxsj.Date);
  sp_brlb.Parameters.ParamByName('@bqdm').Value:=pub_bqdm;
  if cbbYiDaYin.Text='未打印' then
  begin
  sp_brlb.Open;
  sp_brlb.Filtered:=False;
  sp_brlb.Filter:='jcsqddy=''0''';
  sp_brlb.Filtered:=True;
  sp_jyxm.Filtered:=False;
  sp_jyxm.Filter:='xzbz=''√'' and jcsqddy=0 ';
  sp_jyxm.Filtered:=True;
  end
  else
  begin
  sp_brlb.Open;
  sp_brlb.Filtered:=False;
  sp_brlb.Filter:='jcsqddy=''1''';
  sp_brlb.Filtered:=True;
  sp_jyxm.Filtered:=False;
  sp_jyxm.Filter:='xzbz=''√'' and jcsqddy=1 ';
  sp_jyxm.Filtered:=True;
  end;
 
if not sp_brlb.IsEmpty then
begin
while not sp_brlb.eof do
begin
{  sp_jyxm.close;
  sp_jyxm.Parameters.ParamByName('@zyh').Value:=sp_brlb.fieldbyname('zyh').asstring;
//  sp_jyxm.Parameters.ParamByName('@jyfzbh').Value:=sp_brlb.fieldbyname('jyfzbh').asstring;
  sp_jyxm.Parameters.ParamByName('@zxsj').Value:=sp_brlb.Parameters.ParamByName('@zxsj').Value;
  sp_jyxm.Parameters.ParamByName('@bqdm').Value:=pub_bqdm;
  sp_jyxm.Open;
}
if not sp_jyxm.isempty then
begin
  if pub_yydm = '0240' then
  begin
    frm_zysf_print_service.PrintJCSQD(sp_jyxm);
  end else
  begin
    quickrep1.PrinterSettings.PrinterIndex:=printer.Printers.IndexOf('sydprint');
    quickrep1.print;
  end;
  sp_up_jysqd.close;
  sp_up_jysqd.Parameters.ParamByName('@zyh').Value:=sp_brlb.fieldbyname('zyh').asstring;;
  sp_up_jysqd.Parameters.ParamByName('@jyfzbh').Value:= sp_brlb.fieldbyname('jyfzbh').asstring;;
  sp_up_jysqd.Parameters.ParamByName('@zxsj').Value:=sp_brlb.Parameters.ParamByName('@zxsj').Value;
  sp_up_jysqd.Parameters.ParamByName('@bqdm').Value:=pub_bqdm;
  sp_up_jysqd.Parameters.ParamByName('@fs').Value:=1;
  sp_up_jysqd.execproc;
  pq.OnExit(self);
end;
sp_brlb.Next;
end
end
else
 begin
  application.messagebox('查询结果为空，请重新查询！','提示',mb_ok+mb_iconinformation);
  pq.setfocus;
 end;
end;

procedure Tfrm_jcsqd.BitBtn2Click(Sender: TObject);
begin
sp_jyxm.Close;
pq.SetFocus;
end;

procedure Tfrm_jcsqd.BitBtn3Click(Sender: TObject);
begin
self.close;
end;

procedure Tfrm_jcsqd.BitBtn4Click(Sender: TObject);
begin
  cdmark:=false;
  sp_brlb.close;
  sp_brlb.Parameters.Refresh;
  sp_brlb.Parameters.ParamByName('@zyh').Value:=sp_jyxm.Parameters.ParamByName('@zyh').Value;
  sp_brlb.Parameters.ParamByName('@zxsj').Value:=formatdatetime('yyyymmdd',dT_zxsj.Date);
  sp_brlb.Parameters.ParamByName('@bqdm').Value:=pub_bqdm;
  sp_brlb.Open;
  sp_brlb.Filtered:=false;
  sp_brlb.Filter:='jyddy=0';
  sp_brlb.filtered:=true;
if not sp_brlb.IsEmpty then
begin
while not sp_brlb.eof do
begin
  sp_jyxm.close;
  sp_jyxm.Parameters.ParamByName('@zyh').Value:=sp_brlb.fieldbyname('zyh').asstring;
  sp_jyxm.Parameters.ParamByName('@zxsj').Value:=sp_brlb.Parameters.ParamByName('@zxsj').Value;
  sp_jyxm.Parameters.ParamByName('@bqdm').Value:=pub_bqdm;
  sp_jyxm.Open;
//  sp_jyxm.Filtered:=false;
//  sp_jyxm.Filter:='jyddy=0';
//  sp_jyxm.filtered:=true;
if not sp_jyxm.isempty then
begin
  quickrep1.PrinterSettings.PrinterIndex:=printer.Printers.IndexOf('sydprint');
  quickrep1.print;
  sp_up_jysqd.close;
  sp_up_jysqd.Parameters.ParamByName('@zyh').Value:=sp_brlb.fieldbyname('zyh').asstring;
  sp_up_jysqd.Parameters.ParamByName('@jyfzbh').Value:= sp_brlb.fieldbyname('jyfzbh').asstring;
  sp_up_jysqd.Parameters.ParamByName('@zxsj').Value:=sp_brlb.Parameters.ParamByName('@zxsj').Value;
  sp_up_jysqd.Parameters.ParamByName('@bqdm').Value:=pub_bqdm;
  sp_up_jysqd.Parameters.ParamByName('@fs').Value:=1;
  sp_up_jysqd.execproc;
  pq.OnExit(self);
end;
sp_brlb.Next;
end
end
else
 begin
  application.messagebox('查询结果为空，请重新查询！','提示',mb_ok+mb_iconinformation);
  pq.setfocus;
 end;

end;


procedure Tfrm_jcsqd.BitBtn5Click(Sender: TObject);
var lczz,jy_zyh,zgys,zgysmc:string;
begin
  cdmark:=false;
  sp_brlb.close;
  sp_brlb.Parameters.Refresh;
  sp_brlb.Parameters.ParamByName('@zyh').Value:=sp_jyxm.Parameters.ParamByName('@zyh').Value;
  sp_brlb.Parameters.ParamByName('@zxsj').Value:=formatdatetime('yyyymmdd',dT_zxsj.Date);
  sp_brlb.Parameters.ParamByName('@bqdm').Value:=pub_bqdm;
  if cbbYiDaYin.Text='未打印' then
  begin
    sp_brlb.Open;
    sp_brlb.Filtered:=False;
    sp_brlb.Filter:='jcsqddy=''0''';
    sp_brlb.Filtered:=True;
    sp_jyxm.Filtered:=False;
    sp_jyxm.Filter:='xzbz=''√'' and jcsqddy=0 ';
    sp_jyxm.Filtered:=True;
  end
  else
  begin
    sp_brlb.Open;
    sp_brlb.Filtered:=False;
    sp_brlb.Filter:='jcsqddy=''1''';
    sp_brlb.Filtered:=True;
    sp_jyxm.Filtered:=False;
    sp_jyxm.Filter:='xzbz=''√'' and jcsqddy=1 ';
    sp_jyxm.Filtered:=True;
  end;
  if not sp_brlb.IsEmpty then
  begin
    if pub_yydm='0240' then
    begin
      sp_jyxm.first;
      if pub_yydm='0240' then  //沙雅县特殊需求
      begin
        qry_jctmkg.close;
        qry_jctmkg.open;
        if qry_jctmkg.FieldByName('jcsqddykg').Value=1 then    //开关控制 打开采打印
        begin
          if qry_jctmkg.FieldByName('jcsqddyjxh').Value=null then
          begin
            ShowMessage('条码打印机设置为空，请先设置打印机！');
            abort;
          end else
          begin   //医院要求打印双份
            frm_zysf_print_service.printjcdtm(qry_jctmkg.FieldByName('jcsqddyjxh').Value,sp_jyxm); //沙雅县检查申请单单独打印条码
            frm_zysf_print_service.printjcdtm(qry_jctmkg.FieldByName('jcsqddyjxh').Value,sp_jyxm);
          end;
        end;
      end;
      frm_zysf_print_service.PrintJCSQD(sp_jyxm); //检查申请单打印
      while not sp_jyxm.eof do
      begin
        DM_data.qry_pub.Close;
        DM_data.qry_pub.SQL.text:='update zybl_zyyz_yzzxqd with(rowlock) set jcsqddy=1 where yzid = '+sp_jyxm.FieldByName('yzid').asstring +' and zxsj='+formatdatetime('yyyymmdd',dT_zxsj.Date);
        DM_data.qry_pub.ExecSQL;
        sp_jyxm.Next;
      end;
      qbq.onclick(self);
      Exit;
    end;

    sp_brlb.First;
    jy_zyh:='';
    while not sp_brlb.eof do
    begin
      if jy_zyh<>sp_brlb.fieldbyname('zyh').asstring then
      begin
      sp_jyxm.First;
  //      <<<<-----------大邑人民医院pacs接口代码（2014.6.17）
        if pub_yydm='0019' then
        begin
          DM_data.qry_pub.Close;
          DM_data.qry_pub.SQL.text:='select * from v_topacs  where zyh='+''''+sp_jyxm.FieldByName('zyh').asstring+'''';
          DM_data.qry_pub.open;

          lczz:=DM_data.qry_pub.fieldbyname('lczz').AsString;
          qrch1.Lines.Add(lczz);
          qrlbl11.Caption:='日  期：'+formatdatetime('yyyy-MM-dd',dt_zxsj.DateTime);
          qrlbl12.Caption:='入院诊断：'+ sp_jyxm.FieldByName('ryzd').asstring;
          DM_data.qry_pub.Close;
          DM_data.qry_pub.SQL.text:='select * from zysf_zydj where zyh='+''''+sp_jyxm.FieldByName('zyh').asstring+'''';
          DM_data.qry_pub.open;
          zgys:=DM_data.qry_pub.fieldbyname('zgys').AsString;
          DM_data.qry_pub.Close;
          DM_data.qry_pub.SQL.text:='select * from sys_czy where dm='+''''+trim(zgys)+'''';
          DM_data.qry_pub.open;
          zgysmc:=DM_data.qry_pub.fieldbyname('mc').AsString;
          qrlbl13.Caption:='医生签名：'+zgysmc;
          qckrp_dy.Print;
        end          //   ---------->>>>
        else
        begin
          QRLabel17.Caption:='执行日期:'+formatdatetime('yyyy-MM-dd',dt_zxsj.DateTime);
          ql_zd.Caption:='入院诊断：'+ sp_jyxm.FieldByName('ryzd').asstring;
          DM_data.qry_pub.Close;
          DM_data.qry_pub.SQL.text:='select * from zysf_zydj where zyh='+''''+sp_jyxm.FieldByName('zyh').asstring+'''';
          DM_data.qry_pub.open;
          zgys:=DM_data.qry_pub.fieldbyname('zgys').AsString;
          DM_data.qry_pub.Close;
          DM_data.qry_pub.SQL.text:='select * from sys_czy where dm='+''''+trim(zgys)+'''';
          DM_data.qry_pub.open;
          zgysmc:=DM_data.qry_pub.fieldbyname('mc').AsString;
          QRLabel18.Caption:='医生签名:'+zgysmc;
          if pub_yydm<>'0015' then
          begin
            QuickRep3.Page.Width:=210;
            QuickRep3.Page.Length:=93;
          end
          else
          begin
            QuickRep3.Page.Width:=182;
            QuickRep3.Page.Length:=257;
//            QuickRep3.Width:=210;
          end ;
          QuickRep3.Print;
        end;
        sp_jyxm.First;
        while not sp_jyxm.eof do
        begin
          DM_data.qry_pub.Close;
          DM_data.qry_pub.SQL.text:='update zybl_zyyz_yzzxqd with(rowlock) set jcsqddy=1 where yzid = '+sp_jyxm.FieldByName('yzid').asstring +' and zxsj='+formatdatetime('yyyymmdd',dT_zxsj.Date);
          DM_data.qry_pub.ExecSQL;
          sp_jyxm.Next;
        end;
        sp_jyxm.Filtered:=False;
        jy_zyh:=sp_brlb.fieldbyname('zyh').asstring;
      end;
      sp_brlb.Next;
    end
  end
  else
  begin
    application.messagebox('查询结果为空，请重新查询！','提示',mb_ok+mb_iconinformation);
    pq.setfocus;
  end;
qbq.onclick(self);
end;

procedure Tfrm_jcsqd.btn_1Click(Sender: TObject);
begin
  try
    qry_jctmkg.close;
    qry_jctmkg.open;
    qry_jctmkg.Edit;
    qry_jctmkg.FieldByName('jcsqddyjxh').value:=cbbdyjlb.ItemIndex;
    qry_jctmkg.post;
    ShowMessage('设置成功');
  except
    ShowMessage('设置失败');
  end;
end;

procedure Tfrm_jcsqd.btn_dyjszClick(Sender: TObject);
begin
 try
    pnl1.Visible:=True;
    qry_jctmkg.close;
    qry_jctmkg.open;
   if qry_jctmkg.FieldByName('jcsqddykg').Value=1 then
   begin
     rdgrpdyjkg.ItemIndex:=0;
   end else
     rdgrpdyjkg.ItemIndex:=1;
   cbbdyjlb.Items:=printer.Printers; {populates ComboBox} //取打印机列表
   if qry_jctmkg.FieldByName('jcsqddyjxh').Value = null then
   begin
     cbbdyjlb.ItemIndex:=Printer.PrinterIndex;  //设置当前默认打印机
     showmessage('没有设置条码打印机');
   end else
   begin
    cbbdyjlb.ItemIndex:=qry_jctmkg.FieldByName('jcsqddyjxh').Value;//Printer.PrinterIndex; //获得当前默认打印机(默认选中)
   end;
 except
  ShowMessage('获取打印机失败');

 end;
end;

procedure Tfrm_jcsqd.btn_gbClick(Sender: TObject);
begin
 pnl1.Visible:=False;
end;

procedure Tfrm_jcsqd.cbbYiDaYinChange(Sender: TObject);
var
  GuoLv:string;
begin
  if sp_jyxm.Active then
  begin
    GuoLv := trim(cbbYiDaYin.Text);
    sp_jyxm.Filtered := False;
    if GuoLv='未打印' then
    begin
      sp_jyxm.Filter := 'jcsqddy=0';
      sp_jyxm.Filtered := True;
    end
    else if GuoLv='已打印' then
    begin
      sp_jyxm.Filter := 'jcsqddy=1';
      sp_jyxm.Filtered := True;
    end;
  end;
end;

procedure Tfrm_jcsqd.DBGridEh1CellClick(Column: TColumnEh);
begin
sp_jyxm.Edit;
  if Trim(sp_jyxm.FieldByName('xzbz').AsString)='√' then
  begin
     sp_jyxm.FieldByName('xzbz').AsString:='';
  end
  else
  begin
     sp_jyxm.FieldByName('xzbz').AsString:='√';
  end;
  sp_jyxm.Post;
end;

procedure Tfrm_jcsqd.dt_zxsjChange(Sender: TObject);
begin
  if  abr.Checked then
    pq.SetFocus
  else
  if qbq.Checked then
    qbq.onClick(sender);
end;

end.
