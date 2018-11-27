unit p_byd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, GridsEh, DBGridEh, ExtCtrls, ComCtrls, StdCtrls, Buttons,
  QRCtrls, QuickRpt, uHSBarCodeImage,printers;

type
  Tfrm_byd = class(TForm)
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
    QRBand1: TQRBand;
    QRSubDetail1: TQRSubDetail;
    QRBand2: TQRBand;
    p_zyh: TQRLabel;
    p_xm: TQRLabel;
    p_jyxm: TQRLabel;
    p_xb: TQRLabel;
    p_nl: TQRLabel;
    p_bch: TQRLabel;
    BitBtn4: TBitBtn;
    sp_up_jysqd: TADOStoredProc;
    sp_brlb: TADOStoredProc;
    p_ks: TQRLabel;
    p_zxsj: TQRLabel;
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
    procedure pqKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn4Click(Sender: TObject);
    procedure p_zyhPrint(sender: TObject; var Value: string);
    procedure QRSubDetail1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_byd: Tfrm_byd;
  jyfzbh:string;
  cdmark:boolean;
implementation
uses p_func,p_dm;
{$R *.dfm}

procedure Tfrm_byd.FormShow(Sender: TObject);
begin
  sp_yzsj.Close;
  sp_yzsj.Parameters.ParamByName('@scyzsj').Value :=dt_zxsj.DateTime;
  sp_yzsj.ExecProc;
  dt_zxsj.DateTime:= sp_yzsj.Parameters.ParamByName('@scyzsj').Value;
  quickrep1.Visible:=false;

  if pub_yydm = HN_SYRMYY then
  begin
    QRSubDetail1.Height := 25;
    QRBand2.Height := 30;
  end;
end;

procedure Tfrm_byd.pqExit(Sender: TObject);
begin
if not( qbq.focused or bitbtn2.focused or bitbtn3.focused  or abr.focused or (bitbtn1.focused and (pq.text=''))) then
begin
if abr.Checked then
begin
if pq.Text<>'' then
begin
ad_zyh.Close;
ad_zyh.CommandText:='select zyh from zysf_zydj where (tmh='+#39+pq.Text+#39+' or bch='+#39+pq.text+#39+') and bqdm='+#39+pub_bqdm+#39+' and cybz=0';
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
sp_jyxm.Parameters.ParamByName('@zyh').Value:=ad_zyh.fieldbyname('zyh').asstring;
sp_jyxm.Parameters.ParamByName('@zxsj').Value:=formatdatetime('yyyymmdd',dT_zxsj.Date);
sp_jyxm.Parameters.ParamByName('@bqdm').Value:=pub_bqdm;
sp_jyxm.Parameters.ParamByName('@ksdm').Value:=pub_ksdm;
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
  sp_jyxm.Parameters.ParamByName('@ksdm').Value:=pub_ksdm;
  sp_jyxm.Open;
end;
end;
end;

procedure Tfrm_byd.pqKeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
begin
if pq.text='' then
begin
if abr.checked then
   application.messagebox('请输入病人住院号！','提示',mb_ok+mb_iconinformation)
else
begin
  bitbtn1.SetFocus;
end;
end
else
 bitbtn1.setfocus;
end;

 
end;

procedure Tfrm_byd.p_zyhPrint(sender: TObject; var Value: string);
begin
if sp_jyxm.fieldbyname('syddy').asboolean then
value:=value+'★'
else
value:=value;
end;

procedure Tfrm_byd.qbqClick(Sender: TObject);
begin
if qbq.Checked then
begin
  sp_jyxm.close;
  sp_jyxm.Parameters.ParamByName('@zyh').Value:='';
  sp_jyxm.Parameters.ParamByName('@zxsj').Value:=formatdatetime('yyyymmdd',dT_zxsj.Date);
  sp_jyxm.Parameters.ParamByName('@bqdm').Value:=pub_bqdm;
  sp_jyxm.Parameters.ParamByName('@ksdm').Value:=pub_ksdm;
  sp_jyxm.Open;
end;
end;

procedure Tfrm_byd.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
p_zyh.Caption:='住院号:'+trim(sp_jyxm.FieldByName('tmh').asstring);
p_xm.Caption:='姓名:'+trim(sp_jyxm.FieldByName('brxm').asstring);
p_xb.Caption:='性别:'+trim(sp_jyxm.FieldByName('brxb').asstring);
p_nl.Caption:='年龄:'+trim(sp_jyxm.FieldByName('brnl').asstring);
p_bch.Caption:='病床:'+trim(sp_jyxm.FieldByName('bch').asstring);
p_ks.Caption:='科室:'+trim(sp_jyxm.FieldByName('ksmc').asstring);
p_zxsj.Caption:='执行时间:'+trim(sp_jyxm.FieldByName('zxsj').asstring);
//jyyb.Caption:=trim(sp_jyxm.FieldByName('jyyb').asstring);

end;

procedure Tfrm_byd.QRSubDetail1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  if jyfzbh<>trim(sp_jyxm.fieldbyname('tmh').asstring) then
  begin
  jyfzbh:=trim(sp_jyxm.fieldbyname('tmh').asstring);
  if not sp_jyxm.eof then
  quickrep1.NewPage;
  end;
end;

procedure Tfrm_byd.QRSubDetail1NeedData(Sender: TObject;
  var MoreData: Boolean);
var
 I: integer;
 s:string;
begin
MoreData := True;
i:=1;
 if sp_jyxm.Eof then
  MoreData := False;
  p_jyxm.Caption:='';
 if not sp_jyxm.eof then
  begin
   s:=trim(sp_jyxm.FieldByName('xmmc').Asstring);
   p_jyxm.caption := trim(sp_jyxm.FieldByName('xmmc').Asstring)+char(13)+trim(sp_jyxm.FieldByName('ypyl').Asstring)+
                     trim(sp_jyxm.FieldByName('yldw').Asstring)+'  /'+trim(sp_jyxm.FieldByName('yytj').Asstring)+'  /'+
                     trim(sp_jyxm.FieldByName('ypyf').Asstring)+'  '+trim(sp_jyxm.FieldByName('bz').Asstring);
  end;
  sp_jyxm.next;

end;

procedure Tfrm_byd.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
sp_jyxm.First;
jyfzbh:=trim(sp_jyxm.fieldbyname('tmh').asstring);
if not sp_jyxm.IsEmpty then
begin
   QuickRep1.Height:=QuickRep1.Height+QRSubDetail1.Height*sp_jyxm.RecordCount;
end;
end;

procedure Tfrm_byd.abrClick(Sender: TObject);
begin
if abr.Checked then
begin
label1.Caption:='住院号：';
sp_jyxm.close;
pq.SetFocus;
end;

end;

procedure Tfrm_byd.BitBtn1Click(Sender: TObject);
begin
  cdmark:=true;
  sp_brlb.close;
  sp_brlb.Parameters.ParamByName('@zyh').Value:=sp_jyxm.Parameters.ParamByName('@zyh').Value;
  sp_brlb.Parameters.ParamByName('@zxsj').Value:=formatdatetime('yyyymmdd',dT_zxsj.Date);
  sp_brlb.Parameters.ParamByName('@bqdm').Value:=pub_bqdm;
  sp_brlb.Open;
  sp_brlb.Filtered:=false;

if not sp_brlb.IsEmpty then
begin
while not sp_brlb.eof do
begin
  sp_jyxm.close;
  sp_jyxm.Parameters.ParamByName('@zyh').Value:=sp_brlb.fieldbyname('zyh').asstring;
  sp_jyxm.Parameters.ParamByName('@zxsj').Value:=sp_brlb.Parameters.ParamByName('@zxsj').Value;
  sp_jyxm.Parameters.ParamByName('@bqdm').Value:=pub_bqdm;
   sp_jyxm.Parameters.ParamByName('@ksdm').Value:=pub_ksdm;
  sp_jyxm.Open;
if not sp_jyxm.isempty then
begin
  quickrep1.PrinterSettings.PrinterIndex:=printer.Printers.IndexOf('sydprint');
  quickrep1.print;
//  sp_up_jysqd.close;
//  sp_up_jysqd.Parameters.ParamByName('@zyh').Value:=sp_brlb.fieldbyname('zyh').asstring;;
//  sp_up_jysqd.Parameters.ParamByName('@yzid').Value:= 0;
//  sp_up_jysqd.Parameters.ParamByName('@zxsj').Value:=sp_brlb.Parameters.ParamByName('@zxsj').Value;
//  sp_up_jysqd.Parameters.ParamByName('@bqdm').Value:=pub_bqdm;
//  sp_up_jysqd.execproc;
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

procedure Tfrm_byd.BitBtn2Click(Sender: TObject);
begin
sp_jyxm.Close;
pq.SetFocus;
end;

procedure Tfrm_byd.BitBtn3Click(Sender: TObject);
begin
self.close;
end;

procedure Tfrm_byd.BitBtn4Click(Sender: TObject);
begin
  cdmark:=false;
  sp_brlb.close;
  sp_brlb.Parameters.ParamByName('@zyh').Value:=sp_jyxm.Parameters.ParamByName('@zyh').Value;
  sp_brlb.Parameters.ParamByName('@zxsj').Value:=formatdatetime('yyyymmdd',dT_zxsj.Date);
  sp_brlb.Parameters.ParamByName('@bqdm').Value:=pub_bqdm;
  sp_brlb.Open;
//  sp_brlb.Filtered:=false;
//  sp_brlb.Filter:='syddy=0';
//  sp_brlb.filtered:=true;
if not sp_brlb.IsEmpty then
begin
while not sp_brlb.eof do
begin
  sp_jyxm.close;
  sp_jyxm.Parameters.ParamByName('@zyh').Value:=sp_brlb.fieldbyname('zyh').asstring;
  sp_jyxm.Parameters.ParamByName('@zxsj').Value:=sp_brlb.Parameters.ParamByName('@zxsj').Value;
  sp_jyxm.Parameters.ParamByName('@bqdm').Value:=pub_bqdm;
  sp_jyxm.Parameters.ParamByName('@ksdm').Value:=pub_ksdm;
  sp_jyxm.Open;
//  sp_jyxm.Filtered:=false;
//  sp_jyxm.Filter:='syddy=0';
//  sp_jyxm.filtered:=true;
if not sp_jyxm.isempty then
begin
  quickrep1.PrinterSettings.PrinterIndex:=printer.Printers.IndexOf('sydprint');
  quickrep1.print;
//  sp_up_jysqd.close;
//  sp_up_jysqd.Parameters.ParamByName('@zyh').Value:=sp_brlb.fieldbyname('zyh').asstring;
//  sp_up_jysqd.Parameters.ParamByName('@yzid').Value:= 0;
//  sp_up_jysqd.Parameters.ParamByName('@zxsj').Value:=sp_brlb.Parameters.ParamByName('@zxsj').Value;
//  sp_up_jysqd.Parameters.ParamByName('@bqdm').Value:=pub_bqdm;
//  sp_up_jysqd.execproc;
//    DM_data.qry_pub.Close;
//    DM_data.qry_pub.SQL.text:='update zybl_zyyz_yzzxqd set syddy=1 from zybl_zyyz b where zybl_zyyz_yzzxqd.zyh=b.zyh and zybl_zyyz_yzzxqd.yzid=b.id and b.zyh='+''''+
//                              sp_brlb.fieldbyname('zyh').asstring+''''+
//                              ' and zxsj=convert(char(8),getdate(),112) ';
//    DM_data.qry_pub.ExecSQL;
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
  sp_brlb.Filtered:=false;

end;


procedure Tfrm_byd.dt_zxsjChange(Sender: TObject);
begin
if abr.Checked then
pq.SetFocus
else
if qbq.Checked then
qbq.onClick(sender);
end;

end.
