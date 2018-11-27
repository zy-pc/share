unit p_wddy;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, QuickRpt, ExtCtrls, StdCtrls, Db, ADODB, Buttons,
  uHSBarCodeImage, Grids, DBGrids, Mask, DBCtrls, printers, pBarCode;

type
  Tfrm_wddy = class(TForm)
    barcode: THSBarCodeImage;
    e_zyh: TEdit;
    BitBtn2: TBitBtn;
    DataSource1: TDataSource;
    BitBtn3: TBitBtn;
    QuickRep2: TQuickRep;
    QRSubDetail2: TQRSubDetail;
    brxm1: TQRLabel;
    brxb1: TQRLabel;
    brnl1: TQRLabel;
    QRImage3: TQRImage;
    QRLabel11: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    Label1: TLabel;
    CardNo: TDBEdit;
    Label2: TLabel;
    Name: TDBEdit;
    Label3: TLabel;
    Gender: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    Age: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    QRImage1: TQRImage;
    QRImage2: TQRImage;
    brcd1: TBarCode;
    QuickRep1: TQuickRep;
    QRSubDetail1: TQRSubDetail;
    QRL_brxm: TQRLabel;
    QRL_brxb: TQRLabel;
    QRL_brnl: TQRLabel;
    QRImage4: TQRImage;
    QRL_yymc: TQRLabel;
    QRImage5: TQRImage;
    QRImage6: TQRImage;
    BitBtn1: TBitBtn;
    QuickRep3: TQuickRep;
    QRSubDetail3: TQRSubDetail;
    QRL_brxm_et: TQRLabel;
    QRL_brxb_et: TQRLabel;
    QRL_brnl_et: TQRLabel;
    QRImage9: TQRImage;
    QRL_ksmc: TQRLabel;
    QRL_ch: TQRLabel;
    QRL_ksmc_et: TQRLabel;
    QRL_ch_et: TQRLabel;
    QRL_yymc_et: TQRLabel;
    QRL_tmh_et: TQRLabel;
    sp_PatientStdInfo: TADOStoredProc;
    procedure BitBtn2Click(Sender: TObject);
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRSubDetail2NeedData(Sender: TObject; var MoreData: Boolean);
    procedure BitBtn3Click(Sender: TObject);
    procedure QuickRep2BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure brnl1Print(sender: TObject; var Value: string);
    procedure e_zyhExit(Sender: TObject);
    procedure e_zyhKeyPress(Sender: TObject; var Key: Char);
    procedure QRLabel1Print(sender: TObject; var Value: string);
    procedure brxm1Print(sender: TObject; var Value: string);
    procedure QRLabel2Print(sender: TObject; var Value: string);
    procedure QRLabel3Print(sender: TObject; var Value: string);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure QRSubDetail1NeedData(Sender: TObject; var MoreData: Boolean);
    procedure BitBtn1Click(Sender: TObject);
    procedure QuickRep3BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRSubDetail3NeedData(Sender: TObject; var MoreData: Boolean);
  private
    { Private declarations }

  public
    { Public declarations }
  end;

var
  frm_wddy: Tfrm_wddy;
  v_IsPrinterJoin: Boolean;
  v_PrinterIndex_new: Integer;
  v_PrinterIndex_old: Integer;
  OfcName: string;{科室名称}
  BedNo: string; {病床号}

implementation
uses p_dm, p_func, p_zysf_print_service;
{$R *.DFM}

procedure Tfrm_wddy.BitBtn1Click(Sender: TObject);
begin
  if (pub_yydm <> '0015') and (pub_yydm <> '0019') then
  begin
    v_PrinterIndex_old := Printer.PrinterIndex;
    v_PrinterIndex_new := func_GetPrinterIndex(6, v_IsPrinterJoin);
    if v_IsPrinterJoin then
    begin
      if quickrep2.PrinterSettings.PrinterIndex <> v_PrinterIndex_new then
      begin
        quickrep2.PrinterSettings.PrinterIndex := v_PrinterIndex_new;
      end;

    end;
    quickrep2.print;
  end
  else
  begin
//    v_PrinterIndex_old := Printer.PrinterIndex;
//    v_PrinterIndex_new := func_GetPrinterIndex(6, v_IsPrinterJoin);
//    if v_IsPrinterJoin then
//    begin
//      if quickrep3.PrinterSettings.PrinterIndex <> v_PrinterIndex_new then
//      begin
//        quickrep3.PrinterSettings.PrinterIndex := v_PrinterIndex_new;
//      end;
//
//    end;
//    quickrep3.print;
    frm_zysf_print_service.PrintSpireLamella(Trim(Name.Text),
      Trim(Gender.Text), Trim(Age.Text), OfcName, Trim(CardNo.Text), BedNo,
      slChildren);
  end;
end;

procedure Tfrm_wddy.BitBtn2Click(Sender: TObject);
var
  v_zyh:string;
begin
  with sp_PatientStdInfo do
  begin
    close;
    Parameters.Refresh;
    parameters.ParamByName('@tmh').value := Trim(e_zyh.text);
    parameters.parambyname('@brxm').value := '';
    active := true;
  end;
  if sp_PatientStdInfo.RecordCount = 1 then
  begin
    if pub_yydm<>'0003' then
    begin
      barcode.BarCode := sp_PatientStdInfo.fieldbyname('tmh').asstring;
    end;
      OfcName := Trim(sp_PatientStdInfo.fieldbyname('ksmc').asstring);
      BedNo := Trim(sp_PatientStdInfo.fieldbyname('bch').asstring);
  end
  else
  begin
    application.messagebox('请输入正确的病人住院号！！', '提示', mb_ok);
    e_zyh.setfocus;
  end
end;

procedure Tfrm_wddy.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  QRL_yymc.Caption := pub_yymc;
  sp_PatientStdInfo.first;
end;

procedure Tfrm_wddy.QRLabel1Print(sender: TObject; var Value: string);
begin
  value := copy(value, 1, 2) + #13 + copy(value, 3, 2);
end;

procedure Tfrm_wddy.QRLabel2Print(sender: TObject; var Value: string);
begin
  value := copy(value, 1, 2) + #13 + copy(value, 3, 2);
end;

procedure Tfrm_wddy.QRLabel3Print(sender: TObject; var Value: string);
begin
  value := copy(value, 1, 2) + #13 + copy(value, 3, 2);
end;

procedure Tfrm_wddy.QRSubDetail1NeedData(Sender: TObject;
  var MoreData: Boolean);
var
  I: integer;
  j: Integer;
begin
  MoreData := True;
  i := 1;
  if sp_PatientStdInfo.Eof then
    MoreData := False
  else
  begin
    barcode.BarCodeAngle := 0;
    barcode.BarCode := sp_PatientStdInfo.fieldbyname('tmh').asstring;
    brcd1.BarCode := sp_PatientStdInfo.fieldbyname('tmh').asstring;
    brcd1.Draw(QRImage5.Canvas, 4, 0, 35, 0);
//    qrimage1.Picture := barcode.Picture;
//    qrimage1.Width := barcode.Width;
//    qrimage1.Height := barcode.Height;
    brcd1.Draw(QRImage4.Canvas, 4, 0, 35, 0);
//    qrimage3.Picture := barcode.Picture;
//    qrimage3.Width := barcode.Width;
//    qrimage3.Height := barcode.Height;
//    barcode.BarCodeAngle := 270;
//    qrimage2.Picture := barcode.Picture;
//    qrimage2.Width := barcode.Width;
//    qrimage2.Height := barcode.Height;

    for I := barcode.Width - 1 downto 0 do
      for j := barcode.Height - 1 downto 0 do
      begin
        QRImage6.Canvas.Pixels[j, barcode.Width - i] :=
          barcode.Canvas.Pixels[i, j];
      end;

    QRL_brxm.Caption := sp_PatientStdInfo.fieldbyname('brxm').asstring;
    QRL_brxb.Caption := sp_PatientStdInfo.fieldbyname('brxb').asstring;
    QRL_brnl.Caption := sp_PatientStdInfo.fieldbyname('brnl').asstring;
    QRL_ksmc.Caption := sp_PatientStdInfo.fieldbyname('ksmc').asstring;
    QRL_ch.Caption := sp_PatientStdInfo.fieldbyname('bch').asstring;
  end;
  sp_PatientStdInfo.next;

end;

procedure Tfrm_wddy.QRSubDetail2NeedData(Sender: TObject;
  var MoreData: Boolean);
var
  I: integer;
  j: Integer;
begin
  MoreData := True;
  i := 1;
  if sp_PatientStdInfo.Eof then
    MoreData := False
  else
  begin
    barcode.BarCodeAngle := 0;
    barcode.BarCode := sp_PatientStdInfo.fieldbyname('tmh').asstring;
    brcd1.BarCode := sp_PatientStdInfo.fieldbyname('tmh').asstring;
    brcd1.Draw(QRImage1.Canvas, 4, 0, 35, 0);
//    qrimage1.Picture := barcode.Picture;
//    qrimage1.Width := barcode.Width;
//    qrimage1.Height := barcode.Height;
    brcd1.Draw(QRImage3.Canvas, 4, 0, 35, 0);
//    qrimage3.Picture := barcode.Picture;
//    qrimage3.Width := barcode.Width;
//    qrimage3.Height := barcode.Height;
//    barcode.BarCodeAngle := 270;
//    qrimage2.Picture := barcode.Picture;
//    qrimage2.Width := barcode.Width;
//    qrimage2.Height := barcode.Height;

    for I := barcode.Width - 1 downto 0 do
      for j := barcode.Height - 1 downto 0 do
      begin
        QRImage2.Canvas.Pixels[j, barcode.Width - i] :=
          barcode.Canvas.Pixels[i, j];
      end;

    brxm1.Caption := sp_PatientStdInfo.fieldbyname('brxm').asstring;
    brxb1.Caption := sp_PatientStdInfo.fieldbyname('brxb').asstring;
    brnl1.Caption := sp_PatientStdInfo.fieldbyname('brnl').asstring;
  end;
  sp_PatientStdInfo.next;

end;


procedure Tfrm_wddy.QRSubDetail3NeedData(Sender: TObject;
  var MoreData: Boolean);
var
  I: integer;
  j: Integer;
begin
  MoreData := True;
  i := 1;
  if sp_PatientStdInfo.Eof then
    MoreData := False
  else
  begin
    barcode.BarCodeAngle := 0;
    barcode.BarCode := sp_PatientStdInfo.fieldbyname('tmh').asstring;
    for I := barcode.Width - 1 downto 0 do
      for j := barcode.Height - 1 downto 0 do
      begin
        QRImage9.Canvas.Pixels[j, barcode.Width - i] :=
          barcode.Canvas.Pixels[i, j];
      end;
    QRL_tmh_et.Caption := sp_PatientStdInfo.fieldbyname('tmh').asstring;
    QRL_brxm_et.Caption := sp_PatientStdInfo.fieldbyname('brxm').asstring;
    QRL_brxb_et.Caption := sp_PatientStdInfo.fieldbyname('brxb').asstring;
    QRL_brnl_et.Caption := sp_PatientStdInfo.fieldbyname('brnl').asstring;
    QRL_ksmc_et.Caption := sp_PatientStdInfo.fieldbyname('ksmc').asstring;
    QRL_ch_et.Caption := '床号:'+sp_PatientStdInfo.fieldbyname('bch').asstring;
  end;
  sp_PatientStdInfo.next;
end;

procedure Tfrm_wddy.BitBtn3Click(Sender: TObject);
begin
  if (pub_yydm <> '0015') and (pub_yydm <> '0019') and  (pub_yydm <> '0003') then
  begin
    v_PrinterIndex_old := Printer.PrinterIndex;
    v_PrinterIndex_new := func_GetPrinterIndex(6, v_IsPrinterJoin);
    if v_IsPrinterJoin then
    begin
      if quickrep2.PrinterSettings.PrinterIndex <> v_PrinterIndex_new then
      begin
        quickrep2.PrinterSettings.PrinterIndex := v_PrinterIndex_new;
      end;
    end;
    quickrep2.print;
  end
  else
  begin
//    v_PrinterIndex_old := Printer.PrinterIndex;
//    v_PrinterIndex_new := func_GetPrinterIndex(6, v_IsPrinterJoin);
//    if v_IsPrinterJoin then
//    begin
//      if quickrep1.PrinterSettings.PrinterIndex <> v_PrinterIndex_new then
//      begin
//        quickrep1.PrinterSettings.PrinterIndex := v_PrinterIndex_new;
//      end;
//
//    end;
//    quickrep1.print;
    frm_zysf_print_service.PrintSpireLamella(Trim(Name.Text),
      Trim(Gender.Text), Trim(Age.Text), OfcName, Trim(CardNo.Text), BedNo,
      slNormal);
  end;
end;

procedure Tfrm_wddy.QuickRep2BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  QRLabel11.Caption := pub_yymc;
  sp_PatientStdInfo.first;
end;

procedure Tfrm_wddy.QuickRep3BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  QRL_yymc_et.Caption := pub_yymc;
  sp_PatientStdInfo.first;
end;

procedure Tfrm_wddy.brnl1Print(sender: TObject; var Value: string);
begin
  value := value + #13 + '岁';
end;

procedure Tfrm_wddy.brxm1Print(sender: TObject; var Value: string);
var
  s, s1: string;
  i: integer;
begin
  s := value;
  s1 := '';
  i := 1;
  while i <= length(s) do
    if s[i] > char(127) then
    begin
      s1 := s1 + copy(s, i, 2) + #13;
      i := i + 2
    end
    else
    begin
      s1 := s1 + copy(s, i, 1) + #13;
      i := i + 1;
    end;
  value := s1;

end;

procedure Tfrm_wddy.e_zyhExit(Sender: TObject);
begin
  bitbtn2.Click;
end;

procedure Tfrm_wddy.e_zyhKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    if e_zyh.text = '' then
    begin
      application.messagebox('请输入病人住院号！！', '提示', mb_ok);
      e_zyh.SetFocus;
      e_zyh.clear;
    end
    else
      bitbtn2.setfocus;
  end
end;

procedure Tfrm_wddy.FormCreate(Sender: TObject);
begin
  username := 'sys_mzsf';
end;

procedure Tfrm_wddy.FormShow(Sender: TObject);
begin
  QuickRep1.Visible := False;
  QuickRep2.Visible := False;
  QuickRep3.Visible := False;
end;

end.

