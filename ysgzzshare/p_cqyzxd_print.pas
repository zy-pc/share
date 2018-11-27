unit p_cqyzxd_print;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls;

type
  Tfrm_cqyzxd_print = class(TForm)
    QuickRep1: TQuickRep;
    PageFooterBand1: TQRBand;
    QRLabel13: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel14: TQRLabel;
    QRL_ys_cq: TQRLabel;
    QRL_dysj_cq: TQRLabel;
    QRLabel1: TQRLabel;
    PageHeaderBand1: TQRBand;
    QRShape1: TQRShape;
    QRL_yymc_cq: TQRLabel;
    QRL_brxm_cq: TQRLabel;
    QRL_tmh_cq: TQRLabel;
    sj1: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    sj3: TQRLabel;
    QRShape2: TQRShape;
    QRLabel8: TQRLabel;
    QRShape3: TQRShape;
    QRShape5: TQRShape;
    QRShape8: TQRShape;
    QRLabel9: TQRLabel;
    QRShape9: TQRShape;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRL_bch_cq: TQRLabel;
    xb_cq: TQRLabel;
    nl_cq: TQRLabel;
    zd_cq: TQRLabel;
    QRSubDetail1: TQRSubDetail;
    ksrq: TQRLabel;
    zxhsmc: TQRLabel;
    xmmc: TQRLabel;
    tzrq: TQRLabel;
    tzysmc: TQRLabel;
    zhhsmc: TQRLabel;
    ypyf: TQRLabel;
    kdysmc: TQRLabel;
    QRgrImage1: TQRImage;
    QRBand3: TQRBand;
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep; var PrintReport: Boolean);
    procedure QRSubDetail1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QRSubDetail1NeedData(Sender: TObject; var MoreData: Boolean);
    procedure PageFooterBand1AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
    procedure PageFooterBand1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QRL_dysj_cqPrint(sender: TObject; var Value: string);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_cqyzxd_print: Tfrm_cqyzxd_print;

implementation
   uses p_dm,p_func,p_cqyzxd,p_yzinput;
{$R *.dfm}

procedure Tfrm_cqyzxd_print.PageFooterBand1AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
begin
paper_size:=0;
qrband3.Visible:=false;
pageno:=pageno+1;
end;

procedure Tfrm_cqyzxd_print.PageFooterBand1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
qrlabel14.Caption:=inttostr(pageno)+' 页';
end;

procedure Tfrm_cqyzxd_print.QRL_dysj_cqPrint(sender: TObject; var Value: string);
begin
if not frm_cqyzxd.wzdy.Checked then
if (cspageno=pageno) then
value:='';
end;

procedure Tfrm_cqyzxd_print.QRSubDetail1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
     if paper_size>948 then
      begin
        quickrep1.NewPage;
//        qrband3.Visible:=false;
//        pageno:=pageno+1;
//        paper_size:=0;
      end;
end;

procedure Tfrm_cqyzxd_print.QRSubDetail1NeedData(Sender: TObject; var MoreData: Boolean);
var
 I: integer;
begin
MoreData := True;
i:=1;

if jshs=0 then
begin
 if frm_yzinput.sp_zxjl_cp_zxyy_dy.Eof then
  MoreData := False;
end
else
if hjs>jshs-kshs then
  MoreData := False;
  ksrq.Caption:='';
  kdysmc.Caption:='';
  zxhsmc.Caption:='';
  xmmc.Caption:='';
  tzrq.Caption:='';
  tzysmc.Caption:='';
  zhhsmc.Caption:='';

  if not frm_yzinput.sp_zxjl_cp_zxyy_dy.eof then
  begin
     ksrq.Caption := frm_yzinput.sp_zxjl_cp_zxyy_dy.FieldByName('ksrq').Asstring;
     kdysmc.Caption := frm_yzinput.sp_zxjl_cp_zxyy_dy.FieldByName('kdysmc').Asstring;
     zxhsmc.Caption := frm_yzinput.sp_zxjl_cp_zxyy_dy.FieldByName('zxhsmc').Asstring;
     paper_size1:=paper_size;
      if frm_yzinput.sp_zxjl_cp_zxyy_dy.FieldByName('hs').Asinteger>1 then

      paper_size:=paper_size+21+(frm_yzinput.sp_zxjl_cp_zxyy_dy.FieldByName('hs').Asinteger-1)*16
      else
      paper_size:=paper_size+21;
     if frm_yzinput.sp_zxjl_cp_zxyy_dy.FieldByName('fzph').asstring<>'' then
      begin
      I:=frm_yzinput.sp_zxjl_cp_zxyy_dy.FieldByName('hs').Asinteger;
      qrgrimage1.enabled:=true;
      qrgrimage1.Top:=1;
      qrgrimage1.left:=ypyf.left-20;
      qrgrimage1.height:=i*ypyf.height;
      ypyf.top:= i*ypyf.height div 2;
      ypyf.Caption:=trim(frm_yzinput.sp_zxjl_cp_zxyy_dy.FieldByName('yytj').asstring)+'  '+
      trim(frm_yzinput.sp_zxjl_cp_zxyy_dy.FieldByName('ypyf').asstring);
      xmmc.Width:=200;
      xmmc.caption := frm_yzinput.sp_zxjl_cp_zxyy_dy.FieldByName('xmmc').Asstring;
      end
      else
      begin
      qrgrimage1.enabled:=false;
       xmmc.Width:=257;
       ypyf.Caption:='';
       xmmc.caption := frm_yzinput.sp_zxjl_cp_zxyy_dy.FieldByName('xmmc').Asstring+'  '+
       trim(frm_yzinput.sp_zxjl_cp_zxyy_dy.FieldByName('yytj').asstring)+'  '+
       trim(frm_yzinput.sp_zxjl_cp_zxyy_dy.FieldByName('ypyf').asstring);
       if length(xmmc.caption)*5.509433962 >257 then
       paper_size:=paper_size+16;
      end;
     tzrq.Caption := frm_yzinput.sp_zxjl_cp_zxyy_dy.FieldByName('tzrq').Asstring;
     tzysmc.Caption := frm_yzinput.sp_zxjl_cp_zxyy_dy.FieldByName('tzysmc').Asstring;
     zhhsmc.Caption := frm_yzinput.sp_zxjl_cp_zxyy_dy.FieldByName('zhhsmc').Asstring;
//     zxzxsj.Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName('min_jlsj').Asstring;
//     zhzxsj.Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName('max_jlsj').Asstring;
     if (pos('术后医嘱',frm_yzinput.sp_zxjl_cp_zxyy_dy.FieldByName('xmmc').Asstring)>0) or
        (pos('产后医嘱',frm_yzinput.sp_zxjl_cp_zxyy_dy.FieldByName('xmmc').Asstring)>0) then
      begin
       ksrq.Caption:='';
       kdysmc.Caption:='';
       zxhsmc.Caption:='';
       tzrq.Caption:='';
       tzysmc.Caption:='';
       zhhsmc.Caption:='';
      end;

     frm_yzinput.sp_zxjl_cp_zxyy_dy.Next;
     if (hjs=kshs) and (gbhjs) then
     begin
      if kshs=1 then
       kswz:=1
      else
       kswz:=paper_size1;
       if kswz=0 then
       kswz:=21;
      pageno:=QuickRep1.Printer.PageCount;
      cspageno:=pageno;
     end
     else
     if (hjs=kshs+1) and (gbhjs) then
      begin
        if paper_size1=0 then
        kswz:=1;
      end;
     hjs:=hjs+1;
  end;
end;

procedure Tfrm_cqyzxd_print.QuickRep1BeforePrint(Sender: TCustomQuickRep; var PrintReport: Boolean);
var
s:string;
begin
 hjs:=1;
 if kswz<>0 then
  frm_yzinput.sp_zxjl_cp_zxyy_dy.GotoBookmark(saveplace)
 else
  frm_yzinput.sp_zxjl_cp_zxyy_dy.first;
 s:=frm_yzinput.sp_zxjl_cp_zxyy_dy.FieldByName('xmmc').asstring;
 if kswz<>0 then
  begin
   if kswz=1 then
    qrband3.visible:=false
   else
    begin
     qrband3.Visible:=true;
     qrband3.Height:=kswz+102;
    end;
   paper_size:=kswz;
   recno:=0;
   pageno:=cspageno;
 end;

end;

end.
