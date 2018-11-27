unit p_hljlddyrq;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, StdCtrls, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue;

type
  Tfrm_hljlddyrq = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    cxdateedit2: TcxDateEdit;
    cxDateEdit1: TcxDateEdit;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    ksrq,jsrq:TDateTime;
    lb:Integer;
    zy_zyh:string;
  end;

var
  frm_hljlddyrq: Tfrm_hljlddyrq;

implementation
uses
p_twb2,p_mobi_twb_display_his;


{$R *.dfm}

procedure Tfrm_hljlddyrq.Button1Click(Sender: TObject);
begin

if lb=1 then
begin
if (ksrq=cxDateEdit1.date) and (jsrq=cxDateEdit2.date) then
begin
frm_hljlddyrq.close;
end
else
begin
    frm_twb2.qry_hljldnr.Close;
    frm_twb2.qry_hljldnr.sql.clear;
    frm_twb2.qry_hljldnr.sql.Add('select CONVERT(varchar(100), jlrq, 20) jlrq1,* from zybl_hljld where zyh=:zyh and jlrq>=:jlrq1 and jlrq<=:jlrq2  order by jlrq');
    frm_twb2.qry_hljldnr.Parameters.ParamByName('jlrq1').Value:=cxDateEdit1.date;
    frm_twb2.qry_hljldnr.Parameters.ParamByName('jlrq2').Value:=cxDateEdit2.date;
    frm_twb2.qry_hljldnr.Parameters.ParamByName('zyh').Value:=zy_zyh;
    frm_twb2.qry_hljldnr.open;
    frm_hljlddyrq.close;
end;
end;

if lb=0 then
begin
if (ksrq=cxDateEdit1.date) and (jsrq=cxDateEdit2.date) then
begin
frm_hljlddyrq.close;
end
else
begin
    frm_twb2.qry_rcl.Close;
    frm_twb2.qry_rcl.sql.clear;
    frm_twb2.qry_rcl.sql.Add('select CONVERT(varchar(100), jlrq, 20) jlrq1,* from zybl_hljld_rcl where zyh=:zyh and jlrq>=:jlrq1 and jlrq<=:jlrq2  order by jlrq');
    frm_twb2.qry_rcl.Parameters.ParamByName('jlrq1').Value:=cxDateEdit1.date;
    frm_twb2.qry_rcl.Parameters.ParamByName('jlrq2').Value:=cxDateEdit2.date;
    frm_twb2.qry_rcl.Parameters.ParamByName('zyh').Value:=zy_zyh;
    frm_twb2.qry_rcl.open;
    frm_hljlddyrq.close;
end;
end;

  if lb=3 then
begin
if (ksrq=cxDateEdit1.date) and (jsrq=cxDateEdit2.date) then
begin
frm_hljlddyrq.close;
end
else
begin
    frm_mobi_twb_display_his.qry_hljldnr.Close;
    frm_mobi_twb_display_his.qry_hljldnr.sql.clear;
    frm_mobi_twb_display_his.qry_hljldnr.sql.Add('select CONVERT(varchar(100), jlrq, 20) jlrq1,* from zybl_hljld '+
    ' where zyh=:zyh1 and jlrq>=:jlrq1 and jlrq<=:jlrq2 union all select CONVERT(varchar(100), jlrq, 20) jlrq1,* from zybl_hljld_cy '+
    ' where zyh=:zyh2 and jlrq>=:jlrq3 and jlrq<=:jlrq4  order by jlrq ');
    frm_mobi_twb_display_his.qry_hljldnr.Parameters.ParamByName('jlrq1').Value:=cxDateEdit1.date;
    frm_mobi_twb_display_his.qry_hljldnr.Parameters.ParamByName('jlrq2').Value:=cxDateEdit2.date;
    frm_mobi_twb_display_his.qry_hljldnr.Parameters.ParamByName('jlrq3').Value:=cxDateEdit1.date;
    frm_mobi_twb_display_his.qry_hljldnr.Parameters.ParamByName('jlrq4').Value:=cxDateEdit2.date;
    frm_mobi_twb_display_his.qry_hljldnr.Parameters.ParamByName('zyh1').Value:=zy_zyh;
    frm_mobi_twb_display_his.qry_hljldnr.Parameters.ParamByName('zyh2').Value:=zy_zyh;
    frm_mobi_twb_display_his.qry_hljldnr.open;
    frm_hljlddyrq.close;
end;
end;

if lb=2 then
begin
if (ksrq=cxDateEdit1.date) and (jsrq=cxDateEdit2.date) then
begin
frm_hljlddyrq.close;
end
else
begin
    frm_mobi_twb_display_his.qry_rcl.Close;
    frm_mobi_twb_display_his.qry_rcl.sql.clear;
    frm_mobi_twb_display_his.qry_rcl.sql.Add('select CONVERT(varchar(100), jlrq, 20) jlrq1,* from zybl_hljld_rcl '+
    ' where zyh=:zyh1 and jlrq>=:jlrq1 and jlrq<=:jlrq2 union all select CONVERT(varchar(100), jlrq, 20) jlrq1,* from zybl_hljld_rcl_cy '+
    ' where zyh=:zyh2 and jlrq>=:jlrq3 and jlrq<=:jlrq4  order by jlrq ');
    frm_mobi_twb_display_his.qry_rcl.Parameters.ParamByName('jlrq1').Value:=cxDateEdit1.date;
    frm_mobi_twb_display_his.qry_rcl.Parameters.ParamByName('jlrq2').Value:=cxDateEdit2.date;
    frm_mobi_twb_display_his.qry_rcl.Parameters.ParamByName('jlrq3').Value:=cxDateEdit1.date;
    frm_mobi_twb_display_his.qry_rcl.Parameters.ParamByName('jlrq4').Value:=cxDateEdit2.date;
    frm_mobi_twb_display_his.qry_rcl.Parameters.ParamByName('zyh1').Value:=zy_zyh;
    frm_mobi_twb_display_his.qry_rcl.Parameters.ParamByName('zyh2').Value:=zy_zyh;
    frm_mobi_twb_display_his.qry_rcl.open;
    frm_hljlddyrq.close;
end;
end;


end;

procedure Tfrm_hljlddyrq.FormShow(Sender: TObject);
begin
if lb=1 then
begin
if frm_twb2.qry_hljldnr.RecordCount>2 then
 begin
frm_twb2.qry_hljldnr.First;
cxDateEdit1.date:=frm_twb2.qry_hljldnr.FieldByName('jlrq').AsDateTime;
ksrq:=frm_twb2.qry_hljldnr.FieldByName('jlrq').AsDateTime;
frm_twb2.qry_hljldnr.last;
cxDateEdit2.date:=frm_twb2.qry_hljldnr.FieldByName('jlrq').AsDateTime;
jsrq:=frm_twb2.qry_hljldnr.FieldByName('jlrq').AsDateTime;
 end;
Button1.SetFocus;
end;

if lb=0 then
begin
if frm_twb2.qry_rcl.RecordCount>2 then
 begin
frm_twb2.qry_rcl.First;
cxDateEdit1.date:=frm_twb2.qry_rcl.FieldByName('jlrq').AsDateTime;
ksrq:=frm_twb2.qry_rcl.FieldByName('jlrq').AsDateTime;
frm_twb2.qry_rcl.last;
cxDateEdit2.date:=frm_twb2.qry_rcl.FieldByName('jlrq').AsDateTime;
jsrq:=frm_twb2.qry_rcl.FieldByName('jlrq').AsDateTime;
 end;
Button1.SetFocus;
end;

   if lb=3 then
begin
if frm_mobi_twb_display_his.qry_hljldnr.RecordCount>2 then
 begin
frm_mobi_twb_display_his.qry_hljldnr.First;
cxDateEdit1.date:=frm_mobi_twb_display_his.qry_hljldnr.FieldByName('jlrq').AsDateTime;
ksrq:=frm_mobi_twb_display_his.qry_hljldnr.FieldByName('jlrq').AsDateTime;
frm_mobi_twb_display_his.qry_hljldnr.last;
cxDateEdit2.date:=frm_mobi_twb_display_his.qry_hljldnr.FieldByName('jlrq').AsDateTime;
jsrq:=frm_mobi_twb_display_his.qry_hljldnr.FieldByName('jlrq').AsDateTime;
 end;
Button1.SetFocus;
end;

if lb=2 then
begin
if frm_mobi_twb_display_his.qry_rcl.RecordCount>2 then
 begin
frm_mobi_twb_display_his.qry_rcl.First;
cxDateEdit1.date:=frm_mobi_twb_display_his.qry_rcl.FieldByName('jlrq').AsDateTime;
ksrq:=frm_mobi_twb_display_his.qry_rcl.FieldByName('jlrq').AsDateTime;
frm_mobi_twb_display_his.qry_rcl.last;
cxDateEdit2.date:=frm_mobi_twb_display_his.qry_rcl.FieldByName('jlrq').AsDateTime;
jsrq:=frm_mobi_twb_display_his.qry_rcl.FieldByName('jlrq').AsDateTime;
 end;
Button1.SetFocus;
end;

end;


end.
