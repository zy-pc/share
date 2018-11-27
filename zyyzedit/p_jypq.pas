unit p_jypq;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, ExtCtrls, uHSBarCodeImage, DB, ADODB, Grids,
  DBGrids, StdCtrls;

type
  Tfrm_jypq = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    p_zyh: TQRLabel;
    p_xm: TQRLabel;
    p_jyh: TQRImage;
    p_xb: TQRLabel;
    p_nl: TQRLabel;
    p_bch: TQRLabel;
    p_ks: TQRLabel;
    p_ryzd: TQRLabel;
    QRSubDetail1: TQRSubDetail;
    p_jyxm: TQRLabel;
    QRBand2: TQRBand;
    HSBarCodeImage1: THSBarCodeImage;
    sp_jyxm: TADOStoredProc;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    Button1: TButton;
    procedure QRSubDetail1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRSubDetail1NeedData(Sender: TObject; var MoreData: Boolean);
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure Button1Click(Sender: TObject);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_jypq: Tfrm_jypq;
  jyfzbh:string;
implementation

{$R *.dfm}

procedure Tfrm_jypq.Button1Click(Sender: TObject);
begin
quickrep1.Preview;
end;

procedure Tfrm_jypq.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
p_zyh.Caption:='住院号:'+sp_jyxm.FieldByName('tmh').asstring;
p_xm.Caption:='姓名:'+sp_jyxm.FieldByName('brxm').asstring;
p_xb.Caption:='性别:'+sp_jyxm.FieldByName('brxb').asstring;
p_nl.Caption:='年龄:'+sp_jyxm.FieldByName('brnl').asstring;
p_bch.Caption:='病床:'+sp_jyxm.FieldByName('bch').asstring;
p_ks.Caption:='科室:'+sp_jyxm.FieldByName('ksmc').asstring;
p_ryzd.Caption:='入院诊断:'+sp_jyxm.FieldByName('ryzd').asstring;
HSBarCodeImage1.barcode:=sp_jyxm.FieldByName('jyfzbh').asstring;
p_jyh.Width:=HSBarCodeImage1.width;
p_jyh.Height:=HSBarCodeImage1.Height;
p_jyh.Picture:=HSBarCodeImage1.Picture;
end;

procedure Tfrm_jypq.QRSubDetail1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  if jyfzbh<>sp_jyxm.fieldbyname('jyfzbh').asstring then
  begin
  jyfzbh:=sp_jyxm.fieldbyname('jyfzbh').asstring;
  if not sp_jyxm.eof then
  quickrep1.NewPage;
  end;
end;

procedure Tfrm_jypq.QRSubDetail1NeedData(Sender: TObject;
  var MoreData: Boolean);
var
 I: integer;
begin
MoreData := True;
i:=1;
 if sp_jyxm.Eof then
  MoreData := False;
  p_jyxm.Caption:='';
 if not sp_jyxm.eof then
  begin
   p_jyxm.caption := sp_jyxm.FieldByName('xmmc').Asstring;
  end;
  sp_jyxm.next;
end;


procedure Tfrm_jypq.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
sp_jyxm.First;
jyfzbh:=sp_jyxm.fieldbyname('jyfzbh').asstring;
end;

end.
