unit p_repo_mzczysf_all;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  QuickRpt, ExtCtrls, Qrctrls, StdCtrls;

type
  Tfrm_repo_mzczysf_all = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    PageHeaderBand1: TQRBand;
    PageFooterBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText7: TQRDBText;
    QRShape3: TQRShape;
    SummaryBand1: TQRBand;
    QRShape4: TQRShape;
    QRExpr6: TQRExpr;
    QRExpr3: TQRExpr;
    QRExpr2: TQRExpr;
    QRLabel14: TQRLabel;
    QRExpr1: TQRExpr;
    yymc: TQRLabel;
    QRLabel9: TQRLabel;
    QRDBText8: TQRDBText;
    QRExpr7: TQRExpr;
    ksrq: TQRLabel;
    zbr: TQRLabel;
    zbrq: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRLabel1: TQRLabel;
    QRDBText5: TQRDBText;
    QRExpr4: TQRExpr;
    procedure QRDBText4Print(sender: TObject; var Value: String);
    procedure QRDBText8Print(sender: TObject; var Value: String);
    procedure QRExpr2Print(sender: TObject; var Value: String);
    procedure QRExpr7Print(sender: TObject; var Value: String);
    procedure QRDBText3Print(sender: TObject; var Value: String);
    procedure QRDBText7Print(sender: TObject; var Value: String);
    procedure QRExpr3Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_repo_mzczysf_all: Tfrm_repo_mzczysf_all;

implementation
uses P_mzczysf_all;
{$R *.DFM}

procedure Tfrm_repo_mzczysf_all.QRDBText4Print(sender: TObject;
  var Value: String);
begin
   if frm_mzczysf_all.sp_gzl_all.FieldByName('tfje').asfloat=0 then
    value:=''
   else
     value:= format('%8.2f',[frm_mzczysf_all.sp_gzl_all.FieldByName('tfje').asfloat]);
end;

procedure Tfrm_repo_mzczysf_all.QRDBText8Print(sender: TObject;
  var Value: String);
begin
   if frm_mzczysf_all.sp_gzl_all.FieldByName('tfrc').asinteger=0 then value:='';
end;

procedure Tfrm_repo_mzczysf_all.QRExpr2Print(sender: TObject;
  var Value: String);
begin
 if value='0' then value:='';
end;

procedure Tfrm_repo_mzczysf_all.QRExpr7Print(sender: TObject;
  var Value: String);
begin
 if value='0' then value:='';
end;

procedure Tfrm_repo_mzczysf_all.QRDBText3Print(sender: TObject;
  var Value: String);
begin
   value:= format('%8.2f',[frm_mzczysf_all.sp_gzl_all.FieldByName('sfje').asfloat]);
end;

procedure Tfrm_repo_mzczysf_all.QRDBText7Print(sender: TObject;
  var Value: String);
begin
   value:= format('%8.2f',[frm_mzczysf_all.sp_gzl_all.FieldByName('ssje').asfloat]);
end;

procedure Tfrm_repo_mzczysf_all.QRExpr3Print(sender: TObject;
  var Value: String);
begin
 if value='0' then value:='';
end;

end.
