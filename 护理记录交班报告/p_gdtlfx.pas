unit p_gdtlfx;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBGridEhGrouping, DB, ADODB, GridsEh, DBGridEh, StdCtrls, ExtCtrls;

type
  Tfrm_dgtlfx = class(TForm)
    DBGridEh1: TDBGridEh;
    DataSource1: TDataSource;
    ADOStoredProc1: TADOStoredProc;
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    Memo1: TMemo;
    Label2: TLabel;
    Button1: TButton;
    qry_ins: TADOQuery;
    ADODataSet1: TADODataSet;
    qry_del: TADOQuery;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    zf:Integer;
  end;

var
  frm_dgtlfx: Tfrm_dgtlfx;

implementation
uses
p_dm,p_func,p_twb2;

{$R *.dfm}

procedure Tfrm_dgtlfx.Button1Click(Sender: TObject);
var
i:integer;
begin
          qry_del.Close;
          qry_del.SQL.Clear;
          qry_del.SQL.Add('delete from zybl_hljld_pf where zyh=:zyh and jlrq=:jlrq and sjlb=:sjlb');
          qry_del.Parameters.ParamByName('zyh').Value:=zy_zyh;
          qry_del.Parameters.ParamByName('jlrq').value:=strtodatetime(formatdatetime('yyyy-mm-dd ', da1) + formatdatetime('hh:mm',frm_twb2.sd.time) + ':00');;
          qry_del.Parameters.ParamByName('sjlb').Value:='导管脱落风险';
          Frm_func.exec_dataset_qry(qry_del);
zf:=0;
aDOStoredProc1.First;
for i := 0 to ADOStoredProc1.RecordCount - 1 do
begin
 if ADOStoredProc1.FieldByName('xzbz').AsBoolean=true then
    begin
      zf:=zf+ADOStoredProc1.FieldByName('fz').AsInteger;
      ADODataSet1.close;
      ADODataSet1.Open;
      ADODataSet1.Insert;
      ADODataSet1['id']:=ADOStoredProc1.FieldByName('id').AsString;
      ADODataSet1['zyh']:=zy_zyh;
      ADODataSet1['jlrq']:=strtodatetime(formatdatetime('yyyy-mm-dd ', da1) + formatdatetime('hh:mm',frm_twb2.sd.time) + ':00');;
      ADODataSet1['sjlb']:='导管脱落风险';
      ADODataSet1['pfdx']:=ADOStoredProc1.FieldByName('pfdx').AsString;
      ADODataSet1['pfxx']:=ADOStoredProc1.FieldByName('pfxx').AsString;
//      ADODataSet1['ms']:=ADOStoredProc1.FieldByName('ms').AsString;
      ADODataSet1['fz']:=ADOStoredProc1.FieldByName('fz').AsString;
      ADODataSet1['lrrq']:=frm_func.curr_date;
      ADODataSet1['czy']:=pub_czydm;
      Frm_func.post_dataset(ADODataSet1);
    end;
    ADOStoredProc1.Next;
end;
Edit1.text:=IntToStr(zf);

if zf<10 then
Label2.Caption:='轻度风险,每日评估，可不记录'
else
if (zf>=10) and (zf<=15) then
Label2.Caption:='中度风险,每日评估，每日记录'
else
if zf>15 then
Label2.Caption:='高度风险,每日评估，每日记录'







end;

procedure Tfrm_dgtlfx.FormClose(Sender: TObject; var Action: TCloseAction);
var
i:Integer;
aa:string;
begin
for i := 1 to frm_twb2.ScrollBox3.ControlCount-1 do
    begin
      if (frm_twb2.ScrollBox3.controls[i] is tedit) then
          begin
          aa:=(frm_twb2.ScrollBox3.Controls[i] as tedit).name;
          aa:=Copy(aa,2,10);
          if aa='dgtlfx' then
           begin
             (frm_twb2.ScrollBox3.Controls[i] as tedit).text:=IntToStr(zf);
           end;
          end;
    end;
end;

procedure Tfrm_dgtlfx.FormShow(Sender: TObject);
var
i:Integer;
begin
ADOStoredProc1.close;
ADOStoredProc1.Parameters.ParamByName('@zyh').Value:=zy_zyh;
ADOStoredProc1.Parameters.ParamByName('@jlrq').Value:=strtodatetime(formatdatetime('yyyy-mm-dd ', da1) + formatdatetime('hh:mm',frm_twb2.sd.time) + ':00');;
ADOStoredProc1.Open;
frm_dgtlfx.Left:=0;
frm_dgtlfx.Top:=0;

zf:=0;
aDOStoredProc1.First;
for i := 0 to ADOStoredProc1.RecordCount - 1 do
begin
 if ADOStoredProc1.FieldByName('xzbz').AsBoolean=true then
    begin
      zf:=zf+ADOStoredProc1.FieldByName('fz').AsInteger;
    end;
    ADOStoredProc1.Next;
end;
Edit1.text:=IntToStr(zf);
ADOStoredProc1.First;
end;

end.
