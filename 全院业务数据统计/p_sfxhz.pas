unit p_sfxhz;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBGridEhGrouping, DB, ADODB, ImgList, StdCtrls, Mask, DBCtrlsEh,
  GridsEh, DBGridEh, RzButton, ExtCtrls;

type
  Tfrm_sfxhz = class(TForm)
    pnl1: TPanel;
    RzToolButton1: TRzToolButton;
    RzToolButton2: TRzToolButton;
    lbl1: TLabel;
    pnl2: TPanel;
    dbgrdh1: TDBGridEh;
    pnl3: TPanel;
    pnl4: TPanel;
    lbl8: TLabel;
    lbl9: TLabel;
    lbl2: TLabel;
    edt3: TDBDateTimeEditEh;
    edt4: TDBDateTimeEditEh;
    il2: TImageList;
    ds1: TDataSource;
    sp1: TADOStoredProc;
    procedure RzToolButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RzToolButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
     var
    zyh:string;
    lx:Integer;//传入查询方式
  end;

var
  frm_sfxhz: Tfrm_sfxhz;

implementation

{$R *.dfm}
  uses p_dm;
procedure Tfrm_sfxhz.FormShow(Sender: TObject);
begin
 edt3.text:=FormatDateTime('yyyy-mm-dd',now());
  edt4.text:=FormatDateTime('yyyy-mm-dd',now());
  dbgrdh1.FooterRowCount := 1;
  dbgrdh1.FooterColor := cl3DLight;
  dbgrdh1.SumList.Active := True;
  dbgrdh1.Columns[2].Footers.Add;
  dbgrdh1.Columns[2].Footers[0].ValueType:=fvtSum; //合计
  dbgrdh1.Columns[2].Footers[0].FieldName:='数量';
  dbgrdh1.Columns[2].Footers[0].DisplayFormat:='#,###,###.00';
  dbgrdh1.Columns[3].Footers.Add;
  dbgrdh1.Columns[3].Footers[0].ValueType:=fvtSum; //字段值
  dbgrdh1.Columns[3].Footers[0].FieldName:='金额';
  dbgrdh1.Columns[3].Footers[0].DisplayFormat:='#,###,###.00';
  dbgrdh1.Columns[4].Footers.Add;
  dbgrdh1.Columns[4].Footers[0].ValueType:=fvtSum; //字段值
  dbgrdh1.Columns[4].Footers[0].FieldName:='实收金额';
  dbgrdh1.Columns[4].Footers[0].DisplayFormat:='#,###,###.00';
  dbgrdh1.Columns[5].Footers.Add;
  dbgrdh1.Columns[5].Footers[0].ValueType:=fvtSum; //字段值
  dbgrdh1.Columns[5].Footers[0].FieldName:='优惠金额';
  dbgrdh1.Columns[5].Footers[0].DisplayFormat:='#,###,###.00';
  dbgrdh1.SumList.Active:=True;
  RzToolButton1Click(nil);
end;

procedure Tfrm_sfxhz.RzToolButton1Click(Sender: TObject);
begin
  sp1.close;
  sp1.Parameters.ParamByName('@lx').Value:=lx;
  sp1.Parameters.ParamByName('@zyh').Value:=zyh;
  sp1.Parameters.ParamByName('@ksrq').Value:=StrToDate(edt3.text);
  sp1.Parameters.ParamByName('@jsrq').Value:=StrToDate(edt4.text);
  sp1.Open;
  lbl1.Caption:='记录数：'+inttostr(sp1.RecordCount);
end;

procedure Tfrm_sfxhz.RzToolButton2Click(Sender: TObject);
begin
Close;
end;

end.
