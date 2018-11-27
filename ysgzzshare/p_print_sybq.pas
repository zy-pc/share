unit p_print_sybq;

interface

uses   
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, DB, ADODB, uHSBarCodeImage, pBarCode,
  QRCode, grimgctrl;

type
  Tfrm_print_sybq = class(TForm)
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    QRSubDetail1: TQRSubDetail;
    xmmc: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel30: TQRLabel;
    dyrq: TQRLabel;
    brxm: TQRLabel;
    bch: TQRLabel;
    QRImage1: TQRImage;
    zxsj: TQRLabel;
    QuickRep3: TQuickRep;
    PageHeaderBand3: TQRBand;
    brxm1: TQRLabel;
    bch1: TQRLabel;
    QRSubDetail2: TQRSubDetail;
    xmmc1: TQRLabel;
    PageFooterBand1: TQRBand;
    dyrq1: TQRLabel;
    qr_sm: TQRLabel;
    sp_syfz: TADOStoredProc;
    qr_yytj: TQRLabel;
    QuickRep2: TQuickRep;
    PageFooterBand2: TQRBand;
    PageHeaderBand2: TQRBand;
    QRSubDetail3: TQRSubDetail;
    dyrq_1: TQRLabel;
    qr_sm_1: TQRLabel;
    qr_yytj_1: TQRLabel;
    xmmc_1: TQRLabel;
    QRLabel7: TQRLabel;
    bch_1: TQRLabel;
    QRLabel9: TQRLabel;
    brxm_1: TQRLabel;
    QuickRep4: TQuickRep;
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRSubDetail4: TQRSubDetail;
    QRLabel3: TQRLabel;
    QRBand2: TQRBand;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRImage2: TQRImage;
    brnl: TQRLabel;
    brcd1: TBarCode;
    barcode: THSBarCodeImage;
    QRLabel8: TQRLabel;
    QRLabel10: TQRLabel;
    QuickRep5: TQuickRep;
    QRBand3: TQRBand;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRSubDetail5: TQRSubDetail;
    QRLabel13: TQRLabel;
    QRBand4: TQRBand;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRImage3: TQRImage;
    QRLabel17: TQRLabel;
    BarCode1: TBarCode;
    brnl1: TQRLabel;
    QuickRep6: TQuickRep;
    QRBand5: TQRBand;
    brxm1_1: TQRLabel;
    bch1_1: TQRLabel;
    brnl1_1: TQRLabel;
    QRSubDetail6: TQRSubDetail;
    xmmc1_1: TQRLabel;
    QRBand6: TQRBand;
    dyrq1_1: TQRLabel;
    qr_sm_1_1: TQRLabel;
    qr_yytj_1_1: TQRLabel;
    qr_bqmc: TQRLabel;
    qrlbl18: TQRLabel;
    QRCode1: TQRCode;
    qr_pl: TQRLabel;
    qmby: TQRLabel;
    qmpy: TQRLabel;
    qmhd: TQRLabel;
    ryks: TQRLabel;
    tmh: TQRLabel;
    yf: TQRLabel;
    qmby1: TQRLabel;
    qmby2: TQRLabel;
    qmby3: TQRLabel;
    qmby4: TQRLabel;
    qmby5: TQRLabel;
    qmby6: TQRLabel;
    qmby7: TQRLabel;
    procedure QRSubDetail1NeedData(Sender: TObject; var MoreData: Boolean);
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure PageHeaderBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRSubDetail1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QuickRep3BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure DetailBand2AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRSubDetail2AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRSubDetail2NeedData(Sender: TObject; var MoreData: Boolean);
    procedure QRSubDetail3AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRSubDetail3NeedData(Sender: TObject; var MoreData: Boolean);
    procedure QRSubDetail4AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRSubDetail4NeedData(Sender: TObject; var MoreData: Boolean);
    procedure QRSubDetail5NeedData(Sender: TObject; var MoreData: Boolean);
    procedure QRSubDetail5AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRBand3BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure PageFooterBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QRSubDetail4BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRep4AfterPrint(Sender: TObject);
    procedure QuickRep5AfterPrint(Sender: TObject);
    procedure QuickRep1AfterPrint(Sender: TObject);
    procedure QRSubDetail6NeedData(Sender: TObject; var MoreData: Boolean);
    procedure QRSubDetail6AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRBand6BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QuickRep6BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRBand4BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure PageHeaderBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRep3AfterPrint(Sender: TObject);
    procedure QRLabel2Print(sender: TObject; var Value: string);
    procedure QRCode1ChangeCode(Sender: TObject; Watch: Boolean);
    procedure FormCreate(Sender: TObject);
  private

    { Private declarations }
    function aLineWidth(Line : string) : integer;
    function GetLine(Line : string;Width:Integer) : integer;
  public
    { Public declarations }
  end;

var
  frm_print_sybq: Tfrm_print_sybq;
  fs: integer;
  fzph: string;
  bz: string;
  xp,xp2: integer;
implementation
uses p_dm, p_func, p_yzzx;
{$R *.dfm}

function Tfrm_print_sybq.aLineWidth(Line : string) : integer;
begin
  result := Muldiv(Longint(QuickRep5.TextWidth(QRLabel13.Font, Line)),100,100)
end;
function Tfrm_print_sybq.GetLine(Line : string;Width:Integer) : integer;
var
  tls : Tstringlist;
  lineCount:integer;
  linelen:integer;
  I: Integer;
begin
  lineCount := 0;
  tls := Tstringlist.Create;
  try
    tls.Text := Line;
    for I := 0 to tls.count - 1 do
    begin
      linelen := aLineWidth(tls[i]);
      inc(lineCount ,linelen div Width);
      if (linelen mod Width)>0 then
        inc(lineCount);
    end;
  finally
    Tls.Free;
  end;
  Result := lineCount;
end;

procedure Tfrm_print_sybq.DetailBand2AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  if not sp_syfz.eof then
    quickrep3.NewPage;
end;

procedure Tfrm_print_sybq.FormCreate(Sender: TObject);
begin
  if pub_yydm='0269' then
  begin
    xmmc1.AutoSize:=true;
  end else
  begin
    if pub_yydm<>'0260' then
    begin
      tmh.Free;
      qmpy.Free;
      qmhd.Free;
    end;
    yf.Free;
    qmby.Free;
    ryks.free;
  end;
  if pub_yydm<>'0257' then
  begin
    frm_print_sybq.qmby7.Free;
    frm_print_sybq.qmby2.Free;
    frm_print_sybq.qmby3.Free;
    frm_print_sybq.qmby1.Free;
    frm_print_sybq.qmby4.Free;
    frm_print_sybq.qmby5.Free;
    frm_print_sybq.qmby6.Free;
  end;
end;

procedure Tfrm_print_sybq.PageFooterBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
  var fzh,bz:string;
begin
  if sp_syfz.RecordCount = 1 then
  begin
    frm_print_sybq.qr_sm.Caption := sp_syfz.FieldByName('bz').AsString;
    frm_print_sybq.qr_yytj.Caption := sp_syfz.FieldByName('yytj').AsString;
  end
  else
  begin
    if xp = 1 then
    begin
      fzh := sp_syfz.FieldByName('fzph').AsString;
      sp_syfz.First;
      frm_print_sybq.qr_sm.Caption := sp_syfz.FieldByName('bz').AsString;
      frm_print_sybq.qr_yytj.Caption := sp_syfz.FieldByName('yytj').AsString;
      sp_syfz.Locate('fzph', fzh, []);
      xp := xp + 1;
    end
    else
    begin
      frm_print_sybq.qr_sm.Caption := sp_syfz.FieldByName('bz').AsString;
      frm_print_sybq.qr_yytj.Caption := sp_syfz.FieldByName('yytj').AsString;
      xp := xp + 1;
    end;
  end;
end;

procedure Tfrm_print_sybq.PageHeaderBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var fzh: string;
begin
  if sp_syfz.RecordCount = 1 then
  begin
    frm_print_sybq.brcd1.BarCode := sp_syfz.FieldByName('fzph').AsString;
    frm_print_sybq.brcd1.Draw(frm_print_sybq.QRImage2.Canvas, 7, 0, 38, 0);
  end
  else
  begin
    if xp = 1 then
    begin
      fzh := sp_syfz.FieldByName('fzph').AsString;
      sp_syfz.First;
      frm_print_sybq.brcd1.BarCode := sp_syfz.FieldByName('fzph').AsString;
      frm_print_sybq.brcd1.Draw(frm_print_sybq.QRImage2.Canvas, 7, 0, 38, 0);
      sp_syfz.Locate('fzph', fzh, []);
      xp := xp + 1;
    end
    else
    begin
      frm_print_sybq.brcd1.BarCode := sp_syfz.FieldByName('fzph').AsString;
      frm_print_sybq.brcd1.Draw(frm_print_sybq.QRImage2.Canvas, 7, 0, 38, 0);
      xp := xp + 1;
    end;
  end;
end;

procedure Tfrm_print_sybq.PageHeaderBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var fzh: string;
begin
  if sp_syfz.RecordCount = 1 then
  begin
//    frm_print_sybq.brcd1.BarCode := sp_syfz.FieldByName('fzph').AsString;
//    frm_print_sybq.brcd1.Draw(frm_print_sybq.QRImage2.Canvas, 7, 0, 53, 0);
      frm_print_sybq.QRCode1.code := sp_syfz.FieldByName('fzph').AsString;
      QRCode1.Picture.Graphic.SetSize(100,100);      
      QRImage2.Canvas.Draw(0,0,frm_print_sybq.QRCode1.Picture.Graphic);
  end
  else
  begin
    if xp = 1 then
    begin
      fzh := sp_syfz.FieldByName('fzph').AsString;
      sp_syfz.First;

//      frm_print_sybq.brcd1.BarCode := sp_syfz.FieldByName('fzph').AsString;
//      frm_print_sybq.brcd1.Draw(frm_print_sybq.QRImage2.Canvas, 7, 0, 53, 0);
      frm_print_sybq.QRCode1.code := sp_syfz.FieldByName('fzph').AsString;
      QRCode1.Picture.Graphic.SetSize(100,100);
      QRImage2.Canvas.Draw(0,0,frm_print_sybq.QRCode1.Picture.Graphic);      
      sp_syfz.Locate('fzph', fzh, []);
      xp := xp + 1;
    end
    else
    begin
//      frm_print_sybq.brcd1.BarCode := sp_syfz.FieldByName('fzph').AsString;
//      frm_print_sybq.brcd1.Draw(frm_print_sybq.QRImage2.Canvas, 7, 0, 53, 0);
      frm_print_sybq.QRCode1.code := sp_syfz.FieldByName('fzph').AsString;
      QRCode1.Picture.Graphic.SetSize(100,100);
      QRImage2.Canvas.Draw(0,0,frm_print_sybq.QRCode1.Picture.Graphic);      
      xp := xp + 1;
    end;
  end;

end;

procedure Tfrm_print_sybq.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var fzh: string;
begin
  if sp_syfz.RecordCount = 1 then
  begin
    frm_print_sybq.brcd1.BarCode := sp_syfz.FieldByName('fzph').AsString;
    frm_print_sybq.QRCode1.code := sp_syfz.FieldByName('fzph').AsString;
    //frm_print_sybq.QRCode1.Width:=200;
    //frm_print_sybq.QRCode1.Height:=200;
    QRCode1.Picture.Graphic.SetSize(100,100);
    QRImage2.Canvas.Draw(7,0,frm_print_sybq.QRCode1.Picture.Graphic);
//    frm_print_sybq.Barcode2D_AztecCode1.BarcodeHeight:=53;
//    frm_print_sybq.Barcode2D_AztecCode1.BarcodeWidth:=64;
    //frm_print_sybq.brcd1.Draw(frm_print_sybq.QRImage2.Canvas, 7, 0, 53, 0);
  end
  else
  begin
    if xp = 1 then
    begin
      fzh := sp_syfz.FieldByName('fzph').AsString;
      sp_syfz.First;
      frm_print_sybq.QRCode1.code := sp_syfz.FieldByName('fzph').AsString;
      //frm_print_sybq.QRCode1.Width:=200;
      //frm_print_sybq.QRCode1.Height:=200;
      QRCode1.Picture.Graphic.SetSize(100,100);
      QRImage2.Canvas.Draw(7,0,frm_print_sybq.QRCode1.Picture.Graphic);
      //frm_print_sybq.brcd1.BarCode := sp_syfz.FieldByName('fzph').AsString;
      //frm_print_sybq.Barcode2D_QRCode1.Barcode := sp_syfz.FieldByName('fzph').AsString;
//      frm_print_sybq.Barcode2D_AztecCode1.BarcodeHeight:=53;
//      frm_print_sybq.Barcode2D_AztecCode1.BarcodeWidth:=64;
      //frm_print_sybq.brcd1.Draw(frm_print_sybq.QRImage2.Canvas, 7, 0, 53, 0);
      sp_syfz.Locate('fzph', fzh, []);
      xp := xp + 1;
    end
    else
    begin
      //frm_print_sybq.brcd1.BarCode := sp_syfz.FieldByName('fzph').AsString;
      frm_print_sybq.QRCode1.code := sp_syfz.FieldByName('fzph').AsString;
      //frm_print_sybq.QRCode1.Width:=200;
      //frm_print_sybq.QRCode1.Height:=200;
      //frm_print_sybq.Barcode2D_QRCode1.Barcode := sp_syfz.FieldByName('fzph').AsString;
      QRCode1.Picture.Graphic.SetSize(100,100);
      QRImage2.Canvas.Draw(7,0,frm_print_sybq.QRCode1.Picture.Graphic);
//      frm_print_sybq.Barcode2D_AztecCode1.BarcodeHeight:=53;
//      frm_print_sybq.Barcode2D_AztecCode1.BarcodeWidth:=64;
      //frm_print_sybq.brcd1.Draw(frm_print_sybq.QRImage2.Canvas, 7, 0, 53, 0);
      xp := xp + 1;
    end;
  end;
end;

procedure Tfrm_print_sybq.QRBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var fzh: string;

  ccdd: string;
begin
  if xp<=xp2 then
  begin
    ccdd := fzph;
    Inc(xp);
  end
  else
  begin
    ccdd := sp_syfz.FieldByName('fzph').AsString;
  end;

  if ccdd <> '' then
  begin
    DM_data.qry_pub.Close;
    DM_data.qry_pub.SQL.Text := 'select id from zyyz_fzbh where fzbh=''' +
      ccdd + '''';
    DM_data.qry_pub.Open;
    if DM_data.qry_pub.RecordCount = 0 then
    begin
      DM_data.qry_pub.Close;
      DM_data.qry_pub.SQL.Text := 'insert zyyz_fzbh(fzbh) ' +
        'values(''' + ccdd + ''');select @@IDENTITY id ';
      DM_data.qry_pub.Open;
    end;

    frm_print_sybq.BarCode1.BarCode := DM_data.qry_pub.FieldByName('id').AsString;
    frm_print_sybq.BarCode1.Draw(frm_print_sybq.QRImage3.Canvas, 4, 0, 32, 0);
  end else
    frm_print_sybq.QRImage3.Canvas.FillRect(frm_print_sybq.QRImage3.ClientRect);

  
  QRImage3.Canvas.TextOut(0, QRImage3.Height-10, ccdd);


end;

procedure Tfrm_print_sybq.QRBand4BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
  var fzh,bz:string;
begin
//  if sp_syfz.RecordCount = 1 then
//  begin
//    frm_print_sybq.QRLabel15.Caption := sp_syfz.FieldByName('bz').AsString;
//    frm_print_sybq.QRLabel16.Caption := sp_syfz.FieldByName('yytj').AsString;
//  end
//  else
//  begin
//    if xp = 1 then
//    begin
//      fzh := sp_syfz.FieldByName('fzph').AsString;
//      sp_syfz.First;
//      frm_print_sybq.QRLabel15.Caption := sp_syfz.FieldByName('bz').AsString;
//      frm_print_sybq.QRLabel16.Caption := sp_syfz.FieldByName('yytj').AsString;
//      sp_syfz.Locate('fzph', fzh, []);
//      xp := xp + 1;
//    end
//    else
//    begin
//      frm_print_sybq.QRLabel15.Caption := sp_syfz.FieldByName('bz').AsString;
//      frm_print_sybq.QRLabel16.Caption := sp_syfz.FieldByName('yytj').AsString;
//      xp := xp + 1;
//    end;
//  end;
end;

procedure Tfrm_print_sybq.QRBand6BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
qr_sm_1_1.Caption := sp_syfz.FieldByName('bz').AsString;
end;

procedure Tfrm_print_sybq.QRCode1ChangeCode(Sender: TObject; Watch: Boolean);
begin
//  QRCode1.Width:=100;
//  QRCode1.Height:=100;
end;

procedure Tfrm_print_sybq.QRLabel2Print(sender: TObject; var Value: string);
begin

end;

//100 01 01 01

procedure Tfrm_print_sybq.QRSubDetail1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  if not sp_syfz.eof then
    quickrep1.NewPage;
end;

procedure Tfrm_print_sybq.QRSubDetail1NeedData(Sender: TObject;
  var MoreData: Boolean);
var
  I: integer;
begin
  MoreData := True;
  i := 1;
  if sp_syfz.Eof then
    MoreData := False;
  xmmc.Caption := '';
  //QRLabel6.Caption :='';
  if not sp_syfz.eof then
  begin
    xmmc.caption := sp_syfz.FieldByName('xmmc').Asstring;
//   QRLabel6.Caption :=sp_syfz.FieldByName('yytj').Asstring;
//   QRLabel5.Caption:=  sp_syfz.FieldByName('bz').Asstring;
    fzph := sp_syfz.FieldByName('fzph').asstring;
  end;
  fs := fs - 1;
  if fs <= 0 then
  begin
{   if not sp_syfz.eof then
    quickrep1.NewPage;}
    sp_syfz.Next;
    fs := sp_syfz.FieldByName('sycs').asinteger;
  end;


end;

procedure Tfrm_print_sybq.QRSubDetail2AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  if not sp_syfz.eof then
    quickrep3.NewPage;
end;

procedure Tfrm_print_sybq.QRSubDetail2NeedData(Sender: TObject;
  var MoreData: Boolean);
var
  I: integer;
begin
//  MoreData := True;
//  i := 1;
//  if sp_syfz.Eof then
//    MoreData := False;
//  xmmc1.Caption := '';
//  //qr_yytj.Caption :='';
//  if not sp_syfz.eof then
//  begin
//    xmmc1.caption := sp_syfz.FieldByName('xmmc').Asstring;
//    qr_yytj.Caption := sp_syfz.FieldByName('yytj').Asstring;
//    qr_sm.Caption := sp_syfz.FieldByName('bz').Asstring;
//  end;
//  fs := fs - 1;
//  if fs <= 0 then
//  begin
//{   if not sp_syfz.eof then
//    quickrep1.NewPage;}
//    sp_syfz.Next;
//    fs := sp_syfz.FieldByName('sycs').asinteger;
//    fzph := sp_syfz.FieldByName('fzph').asstring;
//    bz := sp_syfz.FieldByName('bz').asstring;
//  end;

    MoreData := True;
  i := 1;
  if sp_syfz.Eof then
    MoreData := False;
  xmmc1.Caption := '';
  //QRLabel6.Caption :='';
  if not sp_syfz.eof then
  begin
    xmmc1.caption := sp_syfz.FieldByName('xmmc').Asstring;
    qr_yytj.Caption := sp_syfz.FieldByName('yytj').Asstring;
    qr_sm.Caption := sp_syfz.FieldByName('bz').Asstring;
    fzph := sp_syfz.FieldByName('fzph').asstring;
    if pub_yydm='0269' then
       yf.Caption:=Trim(sp_syfz.FieldByName('ypyf').Asstring);
  end;
  if (pub_yydm='0240') or (pub_yydm='0256') then
  begin
    qr_pl.Caption:=TRIM(frm_print_sybq.sp_syfz.FieldByName( 'ypyf' ).AsString);
  end;
  fs := fs - 1;
  if fs <= 0 then
  begin
{   if not sp_syfz.eof then
    quickrep1.NewPage;}
 //   Sleep(200);
    sp_syfz.Next;
    fs := sp_syfz.FieldByName('sycs').asinteger;
  end;

end;

procedure Tfrm_print_sybq.QRSubDetail3AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  if not sp_syfz.eof then
    quickrep2.NewPage;
end;

procedure Tfrm_print_sybq.QRSubDetail3NeedData(Sender: TObject;
  var MoreData: Boolean);
var
  I: integer;
begin
  MoreData := True;
  i := 1;
  if sp_syfz.Eof then
    MoreData := False;
  xmmc_1.Caption := '';
  //qr_yytj.Caption :='';
  if not sp_syfz.eof then
  begin
    xmmc_1.caption := sp_syfz.FieldByName('xmmc').Asstring;
    qr_yytj_1.Caption := sp_syfz.FieldByName('yytj').Asstring;
  end;
  fs := fs - 1;
  if fs <= 0 then
  begin
{   if not sp_syfz.eof then
    quickrep1.NewPage;}
    sp_syfz.Next;
    fs := sp_syfz.FieldByName('sycs').asinteger;
    fzph := sp_syfz.FieldByName('fzph').asstring;
  end;


end;

procedure Tfrm_print_sybq.QRSubDetail4AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  if not sp_syfz.eof then
  begin
    quickrep4.NewPage;
  end;
end;

procedure Tfrm_print_sybq.QRSubDetail4BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var fzh: string;
begin
//  if xp=1 then
//  begin
//    fzh:=sp_syfz.FieldByName('fzph').asstring;
//    sp_syfz.First;
//    frm_print_sybq.brcd1.BarCode:=sp_syfz.FieldByName('fzph').asstring;
//    frm_print_sybq.brcd1.Draw(frm_print_sybq.QRImage2.Canvas,7,0,53,0);
//    sp_syfz.Locate('fzph',fzh,[]);
//    xp:=xp+1;
//  end
//  else
//  begin
//    frm_print_sybq.brcd1.BarCode:=sp_syfz.FieldByName('fzph').asstring;
//    frm_print_sybq.brcd1.Draw(frm_print_sybq.QRImage2.Canvas,7,0,53,0);
//    xp:=xp+1;
//  end;
end;

procedure Tfrm_print_sybq.QRSubDetail4NeedData(Sender: TObject;
  var MoreData: Boolean);
var
  I: integer;
begin
  MoreData := True;
  i := 1;
  if sp_syfz.Eof then
    MoreData := False;
  QRLabel3.Caption := '';
  //QRLabel6.Caption :='';
  if not sp_syfz.eof then
  begin
    QRLabel3.caption := sp_syfz.FieldByName('xmmc').Asstring;
    QRLabel6.Caption := sp_syfz.FieldByName('yytj').Asstring;
    QRLabel5.Caption := sp_syfz.FieldByName('bz').Asstring;
    fzph := sp_syfz.FieldByName('fzph').asstring;
    
  end;
  fs := fs - 1;
  if fs <= 0 then
  begin
{   if not sp_syfz.eof then
    quickrep1.NewPage;}
    sp_syfz.Next;
    fs := sp_syfz.FieldByName('sycs').asinteger;
  end;
end;

procedure Tfrm_print_sybq.QRSubDetail5AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  if not sp_syfz.eof then
    quickrep5.NewPage;
end;

procedure Tfrm_print_sybq.QRSubDetail5NeedData(Sender: TObject;
  var MoreData: Boolean);
var
  i,uu: integer;
begin
  MoreData := True;
  if sp_syfz.Eof then
    MoreData := False;
  QRLabel13.Caption := '';
  //QRLabel6.Caption :='';
  if not sp_syfz.eof then
  begin
    QRLabel13.caption := sp_syfz.FieldByName('xmmc').Asstring;
    QRLabel16.Caption := sp_syfz.FieldByName('yytj').Asstring;
    QRLabel15.Caption := sp_syfz.FieldByName('bz').Asstring;
    fzph := sp_syfz.FieldByName('fzph').asstring;
    uu := GetLine(QRLabel13.Caption, QRLabel13.Width);
    xp2 := uu div 4;
    if (uu mod 4)>0 then
      Inc(xp2);
  end;
  fs := fs - 1;
  if fs <= 0 then
  begin
{   if not sp_syfz.eof then
    quickrep1.NewPage;}
    sp_syfz.Next;
    fs := sp_syfz.FieldByName('sycs').asinteger;
  end;

//  MoreData := True;
//  i := 1;
//  if sp_syfz.Eof then
//    MoreData := False;
//  QRLabel13.Caption := '';
//  //qr_yytj.Caption :='';
//  if not sp_syfz.eof then
//  begin
//    QRLabel13.caption := sp_syfz.FieldByName('xmmc').Asstring;
//    QRLabel16.Caption := sp_syfz.FieldByName('yytj').Asstring;
//    QRLabel15.Caption := sp_syfz.FieldByName('bz').Asstring;
//  end;
//  fs := fs - 1;
//  if fs <= 0 then
//  begin
//{   if not sp_syfz.eof then
//    quickrep1.NewPage;}
//    sp_syfz.Next;
//    fs := sp_syfz.FieldByName('sycs').asinteger;
//    fzph := sp_syfz.FieldByName('fzph').asstring;
//    bz := sp_syfz.FieldByName('bz').asstring;
//  end;

//  MoreData := True;
//  i := 1;
//  if sp_syfz.Eof then
//    MoreData := False;
//  QRLabel13.Caption := '';
//  //QRLabel6.Caption :='';
//  if not sp_syfz.eof then
//  begin
//    QRLabel13.caption := sp_syfz.FieldByName('xmmc').Asstring;
////    QRLabel16.Caption := sp_syfz.FieldByName('yytj').Asstring;
////    QRLabel15.Caption := sp_syfz.FieldByName('bz').Asstring;
//    fzph := sp_syfz.FieldByName('fzph').asstring;
//  end;
//  fs := fs - 1;
//  if fs <= 0 then
//  begin
//{   if not sp_syfz.eof then
//    quickrep1.NewPage;}
//    sp_syfz.Next;
//    fs := sp_syfz.FieldByName('sycs').asinteger;
//  end;

end;

procedure Tfrm_print_sybq.QRSubDetail6AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  if not sp_syfz.eof then
    quickrep6.NewPage;
end;

procedure Tfrm_print_sybq.QRSubDetail6NeedData(Sender: TObject;
  var MoreData: Boolean);
var
  I: integer;
begin
  MoreData := True;
  i := 1;
  if sp_syfz.Eof then
    MoreData := False;
  xmmc1_1.Caption := '';
  //qr_yytj.Caption :='';
  if not sp_syfz.eof then
  begin
    xmmc1_1.caption := sp_syfz.FieldByName('xmmc').Asstring;
    qr_yytj_1_1.Caption := Trim(sp_syfz.FieldByName('yytj').Asstring)+sp_syfz.FieldByName('ypyf').Asstring;
    qr_sm_1_1.Caption := sp_syfz.FieldByName('bz').Asstring;
  end;
  fs := fs - 1;
  if fs <= 0 then
  begin
{   if not sp_syfz.eof then
    quickrep1.NewPage;}
    sp_syfz.Next;
    fs := sp_syfz.FieldByName('sycs').asinteger;
    fzph := sp_syfz.FieldByName('fzph').asstring;
    bz := sp_syfz.FieldByName('bz').asstring;
  end;

end;

procedure Tfrm_print_sybq.QuickRep1AfterPrint(Sender: TObject);
begin
  xp := 1;
end;

procedure Tfrm_print_sybq.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  sp_syfz.First;
  fs := sp_syfz.FieldByName('sycs').asinteger;
  fzph := sp_syfz.FieldByName('fzph').asstring;
end;

procedure Tfrm_print_sybq.QuickRep3AfterPrint(Sender: TObject);
begin
  xp := 1;
end;

procedure Tfrm_print_sybq.QuickRep3BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  sp_syfz.First;
  fs := sp_syfz.FieldByName('sycs').asinteger;
  fzph := sp_syfz.FieldByName('fzph').asstring;
  xp := 1;
  xp2 := 1;
//frm_print_sybq.brcd1.BarCode:=fzph;
//frm_print_sybq.brcd1.Draw(frm_print_sybq.QRImage2.Canvas,7,0,53,0);
end;

procedure Tfrm_print_sybq.QuickRep4AfterPrint(Sender: TObject);
begin
  xp := 1;
end;

procedure Tfrm_print_sybq.QuickRep5AfterPrint(Sender: TObject);
begin
  xp := 1;
end;

procedure Tfrm_print_sybq.QuickRep6BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  sp_syfz.First;
  fs := sp_syfz.FieldByName('sycs').asinteger;
  fzph := sp_syfz.FieldByName('fzph').asstring;
  xp := 1;
  xp2 := 1;
//frm_print_sybq.brcd1.BarCode:=fzph;
//frm_print_sybq.brcd1.Draw(frm_print_sybq.QRImage2.Canvas,7,0,53,0);
end;

end.

