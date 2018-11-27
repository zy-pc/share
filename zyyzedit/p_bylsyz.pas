unit p_bylsyz;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, DB, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxCalendar, ADODB, ExtCtrls,
  QuickRpt, QRCtrls, ComCtrls;

type
  Tfrm_bylsyz = class(TForm)
    Panel1: TPanel;
    rep_dryphz: TQuickRep;
    PageHeaderBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    Panel2: TPanel;
    Button2: TButton;
    Button3: TButton;
    sp_yzmx: TADOStoredProc;
    ds_yzmx: TDataSource;
    Edit1: TEdit;
    Label1: TLabel;
    QRLabel1: TQRLabel;
    QRL_tmh: TQRLabel;
    QRL_bch: TQRLabel;
    QRLabel15: TQRLabel;
    PageFooterBand1: TQRBand;
    QRL_dysj: TQRLabel;
    QRL_ym: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRSubDetail1: TQRSubDetail;
    xmmc: TQRLabel;
    ypyf: TQRLabel;
    QRgrImage1: TQRImage;
    lb: TQRLabel;
    zxsj: TQRLabel;
    zxry: TQRLabel;
    QRLabel14: TQRLabel;
    yzzxrq: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel4: TQRLabel;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape1: TQRShape;
    procedure Button3Click(Sender: TObject);
    procedure rep_dryphzBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRSubDetail1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRSubDetail1NeedData(Sender: TObject; var MoreData: Boolean);
    procedure PageFooterBand1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
  private
    zyhlist: array of string;
    //brcount:integer;
    { Private declarations }
  public

    cxtmh, cxzyh, cxbrxm, cxkdys, cxsfbz, cxyzsx, cxbch: string;
    cxkssj, cxjssj: tdatetime;

    { Public declarations }
  end;

var
  frm_bylsyz: Tfrm_bylsyz;
  rectno:integer;
  paper_size:integer;
   zxrq:string;

implementation
uses p_dm, p_func, p_yzinput;
{$R *.dfm}

procedure Tfrm_bylsyz.PageFooterBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
paper_size:=0;
end;

procedure Tfrm_bylsyz.QRSubDetail1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
     if paper_size>796 then
      begin
        rep_dryphz.NewPage;
        paper_size:=0;
//        qrband1.Enabled:=true;
      end;
end;

procedure Tfrm_bylsyz.QRSubDetail1NeedData(Sender: TObject;
  var MoreData: Boolean);
var
 I: integer;
begin
MoreData := True;
i:=1;
 if sp_yzmx.Eof then
  MoreData := False;
  lb.Caption:='';
  ypyf.Caption:='';
  zxsj.Caption:='';
  xmmc.Caption:='';
  zxry.Caption:='';
  yzzxrq.Caption:='';
  if not sp_yzmx.eof then
  begin
 if zxrq<>sp_yzmx.FieldByName('yzzxrq').Asstring then
     begin
      qrlabel3.enabled:=true;
      qrlabel4.enabled:=true;
      qrlabel5.enabled:=true;
      qrlabel14.enabled:=true;
      qrshape3.enabled:=true;
      qrshape4.enabled:=true;
      yzzxrq.enabled:=true;
      yzzxrq.caption:=sp_yzmx.FieldByName('yzzxrq').Asstring;
      zxrq:= sp_yzmx.FieldByName('yzzxrq').Asstring;
      paper_size:=paper_size+40;
    end
    else
    begin
      qrlabel3.enabled:=false;
      qrlabel4.enabled:=false;
      qrlabel5.enabled:=false;
      qrlabel14.enabled:=false;
      qrshape3.enabled:=false;
      qrshape4.enabled:=false;
      yzzxrq.enabled:=false;
    end;
{     if ((length(sp_yzmx.FieldByName('xmmc').Asstring)*8) div 200)<=2 then
      paper_size:=paper_size+((length(sp_yzmx.FieldByName('zxsj').Asstring)*8) div 60)*20
     else
      paper_size:=paper_size+((length(sp_yzmx.FieldByName('xmmc').Asstring)*8) div 200)*20;  }
      paper_size:=paper_size+sp_yzmx.FieldByName('hs').Asinteger*25;
     if sp_yzmx.FieldByName('fzph').asstring<>'' then
      begin
      I:=(length(sp_yzmx.FieldByName('xmmc').Asstring)*8) div 200;
      qrgrimage1.enabled:=true;
      qrgrimage1.left:=ypyf.left-20;
      qrgrimage1.height:=i*ypyf.height;
      ypyf.Caption:=trim(sp_yzmx.FieldByName('yytj').asstring)+'  '+trim(sp_yzmx.FieldByName('ypyf').asstring);
      xmmc.Width:=200;
      xmmc.caption := sp_yzmx.FieldByName('xmmc').Asstring;
      end
      else
      begin
      qrgrimage1.enabled:=false;
       xmmc.Width:=200;
       ypyf.Caption:='';
       xmmc.caption := sp_yzmx.FieldByName('xmmc').Asstring+'  '+trim(sp_yzmx.FieldByName('yytj').asstring)+'  '+trim(sp_yzmx.FieldByName('ypyf').asstring);
       i:=1;
      end;
     if qrshape4.enabled then
      begin
      qrgrimage1.top:=qrshape4.top+5;
      if i=1 then
      ypyf.top:= qrshape4.top+5
      else
      ypyf.top:= (i*ypyf.height div 2)+qrshape4.top+5;


      lb.top:=qrshape4.top+5;
      xmmc.top:=qrshape4.top+5;
      zxsj.top:=qrshape4.top+5;
      zxry.top:=qrshape4.top+5;
      QRSubDetail1.height:=65;
      if qrgrimage1.enabled then
      qrshape1.Top:=qrgrimage1.top+qrgrimage1.height+3
      else
      qrshape1.Top:=QRSubDetail1.Height-1;

      end
      else
      begin
      qrgrimage1.Top:=1;
      if i=1  then
      ypyf.top:=1
      else
      ypyf.top:= (i*ypyf.height div 2);
      lb.top:=1;
      xmmc.top:=1;
      zxsj.top:=1;
      zxry.top:=1;
      QRSubDetail1.Height:=25;
      if qrgrimage1.enabled then
      qrshape1.Top:=qrgrimage1.top+qrgrimage1.height+3
      else
      qrshape1.Top:=QRSubDetail1.Height-1;

      end;
      
     zxsj.Caption := sp_yzmx.FieldByName('zxsj').Asstring;
     zxry.Caption := sp_yzmx.FieldByName('zxrymc').Asstring;
     sp_yzmx.Next;
  end;
end;

procedure Tfrm_bylsyz.rep_dryphzBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
sp_yzmx.First;
paper_size:=0;
zxrq:='';

end;

procedure Tfrm_bylsyz.Button3Click(Sender: TObject);
begin
  close;
end;

end.

