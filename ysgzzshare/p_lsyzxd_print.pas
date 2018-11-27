unit p_lsyzxd_print;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls;

type
  Tfrm_lsyzxd_print = class(TForm)
    QuickRep2: TQuickRep;
    QRBand1: TQRBand;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRL_dysj_ls: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel1: TQRLabel;
    QRBand2: TQRBand;
    QRShape4: TQRShape;
    QRL_yymc_ls: TQRLabel;
    QRL_brxm_ls: TQRLabel;
    QRL_tmh_ls: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel27: TQRLabel;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRShape22: TQRShape;
    QRShape23: TQRShape;
    QRShape24: TQRShape;
    QRShape25: TQRShape;
    QRL_bch_ls: TQRLabel;
    xb_ls: TQRLabel;
    nl_ls: TQRLabel;
    zd_ls: TQRLabel;
    QRSubDetail2: TQRSubDetail;
    ksrq_ls: TQRLabel;
    kdys_ls: TQRLabel;
    zxryxm_ls: TQRLabel;
    zxsj_ls: TQRLabel;
    xmmc_ls: TQRLabel;
    ypyf_ls: TQRLabel;
    QRImage1: TQRImage;
    QRBand3: TQRBand;
    procedure QuickRep2BeforePrint(Sender: TCustomQuickRep; var PrintReport: Boolean);
    procedure QRSubDetail2BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QRSubDetail2NeedData(Sender: TObject; var MoreData: Boolean);
    procedure QRBand1AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QRL_dysj_lsPrint(sender: TObject; var Value: string);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_lsyzxd_print: Tfrm_lsyzxd_print;

implementation
  uses p_dm,p_func,p_lsyzxd,p_yzinput;
{$R *.dfm}

procedure Tfrm_lsyzxd_print.QRBand1AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
begin
paper_size:=0;
qrband3.Visible:=false;
pageno:=pageno+1;

end;

procedure Tfrm_lsyzxd_print.QRBand1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
qrlabel17.Caption:=inttostr(pageno)+' 页';
end;

procedure Tfrm_lsyzxd_print.QRL_dysj_lsPrint(sender: TObject; var Value: string);
begin
if not frm_lsyzxd.wzdy.checked then
if cspageno=pageno then
value:='';
end;

procedure Tfrm_lsyzxd_print.QRSubDetail2BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
     if paper_size>948 then
      begin
        quickrep2.NewPage;
//        qrband3.Visible:=false;
//        pageno:=pageno+1;
//        paper_size:=0;
      end;
end;

procedure Tfrm_lsyzxd_print.QRSubDetail2NeedData(Sender: TObject; var MoreData: Boolean);
var
 I,h: integer;
begin
MoreData := True;
i:=1;
if jshs=0 then
begin
 if frm_yzinput.sp_zxjl_ls_zxyy_dy.Eof then
  MoreData := False;
end
else
if hjs>jshs-kshs then
  MoreData := False;
  ksrq_ls.Caption:='';
  kdys_ls.Caption:='';
  zxryxm_ls.Caption:='';
  xmmc_ls.Caption:='';
  zxsj_ls.caption:='';
  ypyf_ls.caption:='';

  if not frm_yzinput.sp_zxjl_ls_zxyy_dy.eof then
  begin
     ksrq_ls.Caption := frm_yzinput.sp_zxjl_ls_zxyy_dy.FieldByName('ksrq').Asstring;
     kdys_ls.Caption := frm_yzinput.sp_zxjl_ls_zxyy_dy.FieldByName('kdysmc').Asstring;
     zxryxm_ls.Caption := frm_yzinput.sp_zxjl_ls_zxyy_dy.FieldByName('zxhsmc').Asstring;
//     zxsj_ls.Caption := sp_zxjl_ls_dy.FieldByName('gysj').Asstring;
      paper_size1:=paper_size;
      if frm_yzinput.sp_zxjl_ls_zxyy_dy.FieldByName('hs').Asinteger>1 then
      paper_size:=paper_size+21+(frm_yzinput.sp_zxjl_ls_zxyy_dy.FieldByName('hs').Asinteger-1)*16
      else
      paper_size:=paper_size+21;
     if frm_yzinput.sp_zxjl_ls_zxyy_dy.FieldByName('fzph').asstring<>'' then
      begin
      I:=frm_yzinput.sp_zxjl_ls_zxyy_dy.FieldByName('hs').Asinteger;
      QRImage1.enabled:=true;
      QRImage1.top:=1;
      QRImage1.left:=ypyf_ls.left-20;
      QRImage1.height:=i*ypyf_ls.height;
      ypyf_ls.top:= i*ypyf_ls.height div 2;
      ypyf_ls.Caption:=trim(frm_yzinput.sp_zxjl_ls_zxyy_dy.FieldByName('yytj').asstring)+'  '+
      trim(frm_yzinput.sp_zxjl_ls_zxyy_dy.FieldByName('ypyf').asstring);
      xmmc_ls.Width:=272;
      xmmc_ls.caption := frm_yzinput.sp_zxjl_ls_zxyy_dy.FieldByName('xmmc').Asstring;
      end
      else
      begin
       QRImage1.enabled:=false;
       xmmc_ls.Width:=292;
       ypyf_ls.Caption:='';
       xmmc_ls.caption := frm_yzinput.sp_zxjl_ls_zxyy_dy.FieldByName('xmmc').Asstring+'  '+
       trim(frm_yzinput.sp_zxjl_ls_zxyy_dy.FieldByName('yytj').asstring)+'  '+
       trim(frm_yzinput.sp_zxjl_ls_zxyy_dy.FieldByName('ypyf').asstring);
       if length(xmmc_ls.caption)*5.509433962 >292 then
       paper_size:=paper_size+16;

      end;
     zxsj_ls.Caption := frm_yzinput.sp_zxjl_ls_zxyy_dy.FieldByName('gysj').Asstring;
     frm_yzinput.sp_zxjl_ls_zxyy_dy.Next;
     if (hjs=kshs) and (gbhjs) then
     begin
      if kshs=1 then
       kswz:=1
      else
       kswz:=paper_size1;
       if kswz=0 then
       kswz:=21;
      pageno:=QuickRep2.Printer.PageCount;
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

procedure Tfrm_lsyzxd_print.QuickRep2BeforePrint(Sender: TCustomQuickRep; var PrintReport: Boolean);
var
s:string;
begin
 hjs:=1;
 if kswz<>0 then
  frm_yzinput.sp_zxjl_ls_zxyy_dy.GotoBookmark(saveplace)
 else
  frm_yzinput.sp_zxjl_ls_zxyy_dy.first;
 s:=frm_yzinput.sp_zxjl_ls_zxyy_dy.FieldByName('xmmc').asstring;
 if kswz<>0 then
  begin
   if kswz=1 then
    qrband3.visible:=false
   else
    begin
     qrband3.Visible:=true;
     qrband3.Height:=kswz+75;
    end;
   paper_size:=kswz;
   recno:=0;
   pageno:=cspageno;
 end;

end;

end.
