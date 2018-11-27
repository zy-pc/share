unit p_cqyzxd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,cxLookAndFeelPainters,
  Dialogs, StdCtrls, Buttons, ExtCtrls, GridsEh, DBGridEh, cxStyles, cxCustomData, cxGraphics, cxFilter,
   cxData, cxDataStorage, cxEdit, DB, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGrid, cxTextEdit, QRCtrls, QuickRpt,printers;

type
  Tfrm_cqyzxd = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    QuickRep2: TQuickRep;
    QRBand1: TQRBand;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRL_dysj_ls: TQRLabel;
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
    QRLabel13: TQRLabel;
    QRLabel1: TQRLabel;
    cxGrid1DBTableView1id: TcxGridDBColumn;
    cxGrid1DBTableView1ksrq: TcxGridDBColumn;
    cxGrid1DBTableView1kdysmc: TcxGridDBColumn;
    cxGrid1DBTableView1zxhsmc: TcxGridDBColumn;
    cxGrid1DBTableView1xmmc: TcxGridDBColumn;
    cxGrid1DBTableView1ypyf: TcxGridDBColumn;
    cxGrid1DBTableView1yytj: TcxGridDBColumn;
    cxGrid1DBTableView1tzrq: TcxGridDBColumn;
    cxGrid1DBTableView1tzysmc: TcxGridDBColumn;
    cxGrid1DBTableView1zhhsmc: TcxGridDBColumn;
    cxGrid1DBTableView1gg: TcxGridDBColumn;
    cxGrid1DBTableView1kdrq: TcxGridDBColumn;
    cxGrid1DBTableView1sl: TcxGridDBColumn;
    cxGrid1DBTableView1dw: TcxGridDBColumn;
    cxGrid1DBTableView1fzph: TcxGridDBColumn;
    cxGrid1DBTableView1min_jlsj: TcxGridDBColumn;
    cxGrid1DBTableView1max_jlsj: TcxGridDBColumn;
    cxGrid1DBTableView1hs: TcxGridDBColumn;
    wzdy: TCheckBox;
    procedure cxGrid1DBTableView1CustomDrawIndicatorCell(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxCustomGridIndicatorItemViewInfo; var ADone: Boolean);
    procedure QuickRep2BeforePrint(Sender: TCustomQuickRep; var PrintReport: Boolean);
    procedure QRSubDetail2BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QRSubDetail2NeedData(Sender: TObject; var MoreData: Boolean);
    procedure BitBtn1Click(Sender: TObject);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure BitBtn2Click(Sender: TObject);
    procedure QRL_dysj_lsPrint(sender: TObject; var Value: string);
    procedure FormShow(Sender: TObject);
    procedure QRBand1AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_cqyzxd: Tfrm_cqyzxd;
  recno:integer;
  paper_size,kshs,jshs,kswz,cspageno,pageno,hjs,paper_size1:integer;
  saveplace:tbookmark;
  sfdy:boolean;
  gbhjs:boolean;
implementation
  uses p_func,p_dm,p_yzinput,p_cqyzxd_print, p_cqyzxdsz;
{$R *.dfm}

procedure Tfrm_cqyzxd.BitBtn1Click(Sender: TObject);
begin
  kswz:=0;
  application.CreateForm(Tfrm_cqyzxdsz, frm_cqyzxdsz);
  try
   frm_cqyzxdsz.ShowModal;
  finally
   frm_cqyzxdsz.free;
  end;
  if sfdy then
  begin
  frm_yzinput.sp_zxjl_cp_zxyy_dy.first;
  frm_yzinput.sp_zxjl_cp_zxyy_dy.MoveBy(kshs-1);
  saveplace:=frm_yzinput.sp_zxjl_cp_zxyy_dy.GetBookmark;
   application.CreateForm(Tfrm_cqyzxd_print, frm_cqyzxd_print);
  try
   frm_cqyzxd_print.qrband3.Visible:=false;
  frm_cqyzxd_print.QRL_yymc_cq.Caption := pub_yymc + '长期医嘱记录单';
  frm_cqyzxd_print.QRL_brxm_cq.Caption := '姓名:' + frm_yzinput.sp_jbxx.FieldByName('brxm').AsString;
  frm_cqyzxd_print.QRL_tmh_cq.Caption := '住院号:' + frm_yzinput.sp_jbxx.FieldByName('tmh').AsString;
  frm_cqyzxd_print.QRL_bch_cq.Caption := '床号:' + frm_yzinput.sp_jbxx.FieldByName('bch').AsString;
//  frm_yzinput.QRL_bch_cq.Caption := '' ;

  frm_cqyzxd_print.xb_cq.Caption := '性别:' + trim(frm_yzinput.sp_jbxx.FieldByName('brxb').AsString);
  frm_cqyzxd_print.nl_cq.Caption := '年龄:' + trim(frm_yzinput.sp_jbxx.FieldByName('brnl').AsString);
  frm_cqyzxd_print.zd_cq.Caption := '诊断:' + trim(frm_yzinput.sp_jbxx.FieldByName('ryzd').AsString);
  frm_cqyzxd_print.QRL_dysj_cq.Caption := '打印时间:' + FormatDatetime('yyyy年mm月dd日', frm_func.curr_date);
    frm_cqyzxd_print.sj1.caption:='日期时间';
//  sj2.caption:='执行'+#13+'时间';
  frm_cqyzxd_print.sj3.caption:='日期时间';
//  sj4.caption:='执行'+#13+'时间';
//  quickrep1.Page.PaperSize:=Executive;
   paper_size:=0;
  frm_cqyzxd_print.quickrep1.Page.Orientation:=poPortrait;
  gbhjs:=true;
  if not wzdy.checked then
   begin
    frm_cqyzxd_print.QuickRep1.Options:=[FirstPageHeader,LastPageFooter];
    frm_cqyzxd_print.QuickRep1.Prepare;
   end
  else
   kswz:=1;
 gbhjs:=false;
 // frm_cqyzxd_print.QRL_ys_cq.Caption := '共' + IntToStr(frm_cqyzxd_print.QuickRep1.Printer.PageCount) + '页';
 frm_cqyzxd_print.QRL_ys_cq.Caption := '';
  paper_size:=0;
  if kswz>1 then
  frm_cqyzxd_print.QuickRep1.Options:=[LastPageFooter];

//  QRL_ys_ls.Caption := '共' + IntToStr(QuickRep2.Printer.PageCount) + '页';
  frm_cqyzxd_print.QuickRep1.preview;
  finally
   frm_cqyzxd_print.free;
  end;


  end;
end;

procedure Tfrm_cqyzxd.BitBtn2Click(Sender: TObject);
begin
frm_yzinput.sp_zxjl_cp_zxyy_dy.FreeBookmark(saveplace);
self.close;
end;

procedure Tfrm_cqyzxd.cxGrid1DBTableView1CustomDrawIndicatorCell(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxCustomGridIndicatorItemViewInfo; var ADone: Boolean);
var
  AIndicatorViewInfo: TcxGridIndicatorRowItemViewInfo;
  ATextRect: TRect;
 // AStyle: TcxStyle;
  aCV:TcxCanvas;
begin
  if not (AViewInfo is TcxGridIndicatorRowItemViewInfo) then
    Exit;
  aCV:=ACanvas ;
  ATextRect := AViewInfo.ContentBounds;
  AIndicatorViewInfo := AViewInfo as TcxGridIndicatorRowItemViewInfo;
  InflateRect(ATextRect, -2, -1);
 
  if AIndicatorViewInfo.GridRecord.Selected then
  begin
    acv.Font.Style:= canvas.Font.Style+[fsbold];
    aCV.Font.Color := clRed;
  end
  else
  begin
   aCV.Font.Style := Canvas.Font.Style - [fsBold];
   acv.Font.Color := Canvas.Font.Color;
  end;
  Sender.LookAndFeelPainter.DrawHeader(ACanvas, AViewInfo.ContentBounds,
    ATextRect, [], cxBordersAll, cxbsNormal, taCenter, vaCenter,
    False, False, IntToStr(AIndicatorViewInfo.GridRecord.Index + 1),
  acv.Font,acv.font.Color,acv.Brush.color );
  ADone := True;
end;



procedure Tfrm_cqyzxd.FormShow(Sender: TObject);
begin
kswz:=0;
end;

procedure Tfrm_cqyzxd.QRBand1AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
begin
paper_size:=0;
end;

procedure Tfrm_cqyzxd.QRBand1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
qrlabel17.Caption:=inttostr(pageno)+' 页';

end;

procedure Tfrm_cqyzxd.QRL_dysj_lsPrint(sender: TObject; var Value: string);
begin
if cspageno=pageno then
value:='';
end;

procedure Tfrm_cqyzxd.QRSubDetail2BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
     if paper_size>948 then
      begin
        quickrep2.NewPage;
        qrband3.Visible:=false;
        pageno:=pageno+1;
        paper_size:=0;
      end;
end;

procedure Tfrm_cqyzxd.QRSubDetail2NeedData(Sender: TObject; var MoreData: Boolean);
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
  ksrq_ls.Caption:='';
  kdys_ls.Caption:='';
  zxryxm_ls.Caption:='';
  xmmc_ls.Caption:='';
  zxsj_ls.caption:='';
  ypyf_ls.caption:='';

  if not frm_yzinput.sp_zxjl_cp_zxyy_dy.eof then
  begin
     ksrq_ls.Caption := frm_yzinput.sp_zxjl_cp_zxyy_dy.FieldByName('ksrq').Asstring;
     kdys_ls.Caption := frm_yzinput.sp_zxjl_cp_zxyy_dy.FieldByName('kdysmc').Asstring;
     zxryxm_ls.Caption := frm_yzinput.sp_zxjl_cp_zxyy_dy.FieldByName('zxhsmc').Asstring;
//     zxsj_ls.Caption := sp_zxjl_cq_dy.FieldByName('gysj').Asstring;
      paper_size1:=paper_size;
      if frm_yzinput.sp_zxjl_cp_zxyy_dy.FieldByName('hs').Asinteger>1 then
      paper_size:=paper_size+21+(frm_yzinput.sp_zxjl_cp_zxyy_dy.FieldByName('hs').Asinteger-1)*16
      else
      paper_size:=paper_size+21;
     if frm_yzinput.sp_zxjl_cp_zxyy_dy.FieldByName('fzph').asstring<>'' then
      begin
      I:=frm_yzinput.sp_zxjl_cp_zxyy_dy.FieldByName('hs').Asinteger;
      QRImage1.enabled:=true;
      QRImage1.top:=1;
      QRImage1.left:=ypyf_ls.left-20;
      QRImage1.height:=i*ypyf_ls.height;
      ypyf_ls.top:= i*ypyf_ls.height div 2;
      ypyf_ls.Caption:=trim(frm_yzinput.sp_zxjl_cp_zxyy_dy.FieldByName('yytj').asstring)+'  '+
      trim(frm_yzinput.sp_zxjl_cp_zxyy_dy.FieldByName('ypyf').asstring);
      xmmc_ls.Width:=272;
      xmmc_ls.caption := frm_yzinput.sp_zxjl_cp_zxyy_dy.FieldByName('xmmc').Asstring;
      end
      else
      begin
       QRImage1.enabled:=false;
       xmmc_ls.Width:=292;
       ypyf_ls.Caption:='';
       xmmc_ls.caption := frm_yzinput.sp_zxjl_cp_zxyy_dy.FieldByName('xmmc').Asstring+'  '+
       trim(frm_yzinput.sp_zxjl_cp_zxyy_dy.FieldByName('yytj').asstring)+'  '+
       trim(frm_yzinput.sp_zxjl_cp_zxyy_dy.FieldByName('ypyf').asstring);
      end;
     zxsj_ls.Caption := frm_yzinput.sp_zxjl_cp_zxyy_dy.FieldByName('gysj').Asstring;
     frm_yzinput.sp_zxjl_cp_zxyy_dy.Next;
     if hjs=kshs then
     begin
      if kshs=1 then
       kswz:=1
      else
       kswz:=paper_size1;
      pageno:=QuickRep2.Printer.PageCount;
      cspageno:=pageno;
     end;
     hjs:=hjs+1;

  end;
end;

procedure Tfrm_cqyzxd.QuickRep2BeforePrint(Sender: TCustomQuickRep; var PrintReport: Boolean);
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
  qrband3.Visible:=true;
  qrband3.Height:=kswz+75;
  paper_size:=kswz;
  recno:=0;
  pageno:=cspageno;
 end;

end;

end.                  
