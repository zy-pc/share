unit p_jyspqdy;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, GridsEh, DBGridEh, ExtCtrls, ComCtrls, StdCtrls, Buttons,
  QRCtrls, QuickRpt, uHSBarCodeImage,printers, Grids, DBGrids;

type
  Tfrm_jypqdy = class(TForm)
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
    abq: TRadioButton;
    abr: TRadioButton;
    qbq: TRadioButton;
    ad_zyh: TADODataSet;
    BitBtn4: TBitBtn;
    sp_up_jysqd: TADOStoredProc;
    procedure FormShow(Sender: TObject);
    procedure pqExit(Sender: TObject);
    procedure abrClick(Sender: TObject);
    procedure abqClick(Sender: TObject);
    procedure qbqClick(Sender: TObject);
    procedure dt_zxsjChange(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure pqKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_jypqdy: Tfrm_jypqdy;
  jyfzbh:string;
  cdmark:boolean;
implementation
uses p_func,p_dm, p_jypq,p_print_jybq;
{$R *.dfm}

procedure Tfrm_jypqdy.FormShow(Sender: TObject);
begin
  sp_yzsj.Close;
  sp_yzsj.Parameters.ParamByName('@scyzsj').Value :=dt_zxsj.DateTime;
  sp_yzsj.ExecProc;
  dt_zxsj.DateTime:= sp_yzsj.Parameters.ParamByName('@scyzsj').Value;
end;

procedure Tfrm_jypqdy.pqExit(Sender: TObject);
begin
if not( qbq.focused or bitbtn2.focused or bitbtn3.focused or abq.focused or abr.focused or (bitbtn1.focused and (pq.text=''))) then
begin
if abq.Checked then
begin
if pq.Text<>'' then
begin
sp_jyxm.close;
sp_jyxm.Parameters.ParamByName('@zyh').Value:='';
sp_jyxm.Parameters.ParamByName('@jyfzbh').Value:=pq.text;
sp_jyxm.Parameters.ParamByName('@zxsj').Value:=formatdatetime('yyyymmdd',dT_zxsj.Date);
sp_jyxm.Parameters.ParamByName('@bqdm').Value:=pub_bqdm;
sp_jyxm.Open;
end
else
 begin
   application.messagebox('请录入采血试管上的瓶签！！','提示',mb_ok+mb_iconinformation);
   pq.SetFocus;
 end;
end
else
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
sp_jyxm.Parameters.ParamByName('@jyfzbh').Value:='';
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
  sp_jyxm.Parameters.ParamByName('@jyfzbh').Value:='';
  sp_jyxm.Parameters.ParamByName('@zxsj').Value:=formatdatetime('yyyymmdd',dT_zxsj.Date);
  sp_jyxm.Parameters.ParamByName('@bqdm').Value:=pub_bqdm;
  sp_jyxm.Open;
end;
end;
end;

procedure Tfrm_jypqdy.pqKeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
begin
if pq.text='' then
begin
 if abq.checked then
   application.messagebox('请录入采血试管上的瓶签！！','提示',mb_ok+mb_iconinformation)
else
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

procedure Tfrm_jypqdy.qbqClick(Sender: TObject);
begin
if qbq.Checked then
begin
  sp_jyxm.close;
  sp_jyxm.Parameters.ParamByName('@zyh').Value:='';
  sp_jyxm.Parameters.ParamByName('@jyfzbh').Value:='';
  sp_jyxm.Parameters.ParamByName('@zxsj').Value:=formatdatetime('yyyymmdd',dT_zxsj.Date);
  sp_jyxm.Parameters.ParamByName('@bqdm').Value:=pub_bqdm;
  sp_jyxm.Open;
end;
end;

procedure Tfrm_jypqdy.abqClick(Sender: TObject);
begin
if abq.Checked then
begin
label1.Caption:='瓶签：';
sp_jyxm.close;
pq.SetFocus;
end;
end;

procedure Tfrm_jypqdy.abrClick(Sender: TObject);
begin
if abr.Checked then
begin
label1.Caption:='住院号：';
sp_jyxm.close;
pq.SetFocus;
end;

end;

procedure Tfrm_jypqdy.BitBtn1Click(Sender: TObject);
begin
if not sp_jyxm.isempty then
begin

   application.createform(tfrm_print_jybq, frm_print_jybq);
   frm_print_jybq.sp_jyxm.close;
   frm_print_jybq.sp_jyxm.Parameters.ParamByName('@zyh').Value:=sp_jyxm.Parameters.ParamByName('@zyh').Value ;
   frm_print_jybq.sp_jyxm.Parameters.ParamByName('@jyfzbh').Value:=sp_jyxm.Parameters.ParamByName('@jyfzbh').Value;
   frm_print_jybq.sp_jyxm.Parameters.ParamByName('@zxsj').Value:=sp_jyxm.Parameters.ParamByName('@zxsj').Value;
   frm_print_jybq.sp_jyxm.Parameters.ParamByName('@bqdm').Value:=pub_bqdm;
   frm_print_jybq.sp_jyxm.open;
   frm_print_jybq.sp_jyxm.Filtered:=false;
   frm_print_jybq.sp_jyxm.Filter:='jybqdy=0';
   frm_print_jybq.sp_jyxm.filtered:=true;
  try
   cdmark:=false;
   frm_print_jybq.quickrep1.PrinterSettings.PrinterIndex:=printer.Printers.IndexOf('jybqprint');
   frm_print_jybq.quickrep1.print;
  finally
    frm_print_jybq.sp_jyxm.Filtered:=false;
    frm_print_jybq.free;
    sp_up_jysqd.close;
    sp_up_jysqd.Parameters.ParamByName('@zyh').Value:=sp_jyxm.Parameters.ParamByName('@zyh').Value;
    sp_up_jysqd.Parameters.ParamByName('@jyfzbh').Value:= sp_jyxm.Parameters.ParamByName('@jyfzbh').Value;
    sp_up_jysqd.Parameters.ParamByName('@zxsj').Value:=sp_jyxm.Parameters.ParamByName('@zxsj').Value;
    sp_up_jysqd.Parameters.ParamByName('@bqdm').Value:=pub_bqdm;
    sp_up_jysqd.Parameters.ParamByName('@fs').Value:=2;
    sp_up_jysqd.execproc;
    pq.OnExit(self);
  end
end
else
 begin
  application.messagebox('查询结果为空，请重新查询！','提示',mb_ok+mb_iconinformation);
  pq.setfocus;
 end;
end;

procedure Tfrm_jypqdy.BitBtn2Click(Sender: TObject);
begin
sp_jyxm.Close;
pq.SetFocus;
end;

procedure Tfrm_jypqdy.BitBtn3Click(Sender: TObject);
begin
self.close;
end;

procedure Tfrm_jypqdy.BitBtn4Click(Sender: TObject);
begin
if not sp_jyxm.isempty then
begin

   application.createform(tfrm_print_jybq, frm_print_jybq);
   frm_print_jybq.sp_jyxm.close;
   frm_print_jybq.sp_jyxm.Parameters.ParamByName('@zyh').Value:=sp_jyxm.Parameters.ParamByName('@zyh').Value ;
   frm_print_jybq.sp_jyxm.Parameters.ParamByName('@jyfzbh').Value:=sp_jyxm.Parameters.ParamByName('@jyfzbh').Value;
   frm_print_jybq.sp_jyxm.Parameters.ParamByName('@zxsj').Value:=sp_jyxm.Parameters.ParamByName('@zxsj').Value;
   frm_print_jybq.sp_jyxm.Parameters.ParamByName('@bqdm').Value:=pub_bqdm;
   frm_print_jybq.sp_jyxm.Open;
  try
   cdmark:=true;
   frm_print_jybq.quickrep1.PrinterSettings.PrinterIndex:=printer.Printers.IndexOf('jybqprint');
   frm_print_jybq.quickrep1.print;
  finally
    frm_print_jybq.free;
    sp_up_jysqd.close;
    sp_up_jysqd.Parameters.ParamByName('@zyh').Value:=sp_jyxm.Parameters.ParamByName('@zyh').Value;
    sp_up_jysqd.Parameters.ParamByName('@jyfzbh').Value:= sp_jyxm.Parameters.ParamByName('@jyfzbh').Value;
    sp_up_jysqd.Parameters.ParamByName('@zxsj').Value:=sp_jyxm.Parameters.ParamByName('@zxsj').Value;
    sp_up_jysqd.Parameters.ParamByName('@bqdm').Value:=pub_bqdm;
    sp_up_jysqd.Parameters.ParamByName('@fs').Value:=2;
    sp_up_jysqd.execproc;    
  end
end
else
 begin
  application.messagebox('查询结果为空，请重新查询！','提示',mb_ok+mb_iconinformation);
  pq.setfocus;
 end;
end;

procedure Tfrm_jypqdy.dt_zxsjChange(Sender: TObject);
begin
if abq.Checked or abr.Checked then
pq.SetFocus
else
if qbq.Checked then
qbq.onClick(sender);
end;

end.
