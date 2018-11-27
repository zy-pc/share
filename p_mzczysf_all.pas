unit p_mzczysf_all;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, Db, DBTables, ComCtrls, CheckLst, Grids,
  DBGrids, ADODB, DBGridEh, GridsEh, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGrid;

type
  Tfrm_mzczysf_all = class(TForm)
    ok1: TBitBtn;
    Bevel1: TBevel;
    sdate: TDateTimePicker;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    ds_gzl_all: TDataSource;
    edate: TDateTimePicker;
    Label2: TLabel;
    sp_gzl_all: TADOStoredProc;
    Button1: TButton;
    Button2: TButton;
    sp_mx: TADOStoredProc;
    sp_gzl_allmc: TStringField;
    sp_gzl_allczydm: TStringField;
    sp_gzl_allsfrc: TIntegerField;
    sp_gzl_allsfje: TBCDField;
    sp_gzl_alltfrc: TIntegerField;
    sp_gzl_alltfje: TBCDField;
    sp_gzl_allzfrc: TIntegerField;
    sp_gzl_allzfje: TBCDField;
    sp_gzl_allxybs: TIntegerField;
    sp_gzl_allssje: TBCDField;
    CheckBox1: TCheckBox;
    sp_gzl_alljzrq: TDateTimeField;
    sp_gzl_allsjsl: TIntegerField;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1mc: TcxGridDBColumn;
    cxGrid1DBTableView1sfrc: TcxGridDBColumn;
    cxGrid1DBTableView1sfje: TcxGridDBColumn;
    cxGrid1DBTableView1tfrc: TcxGridDBColumn;
    cxGrid1DBTableView1tfje: TcxGridDBColumn;
    cxGrid1DBTableView1zfrc: TcxGridDBColumn;
    cxGrid1DBTableView1zfje: TcxGridDBColumn;
    cxGrid1DBTableView1ssje: TcxGridDBColumn;
    cxGrid1DBTableView1jzrq: TcxGridDBColumn;
    cxGrid1DBTableView1sjsl: TcxGridDBColumn;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ok1Click(Sender: TObject);
    procedure ok2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
   
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_mzczysf_all: Tfrm_mzczysf_all;
implementation
uses  p_main,p_func, p_repo_mzczysf_all,p_dm,P_rpt_czyjzmxhz;
{$R *.DFM}

procedure Tfrm_mzczysf_all.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if key=27 then
        close;
end;

procedure Tfrm_mzczysf_all.BitBtn1Click(Sender: TObject);
begin
  if checkbox1.Checked then
  begin
       sp_gzl_all.Active:=false;
       sp_gzl_all.Parameters.ParamByName('@s_date').value:=sdate.DateTime;
       sp_gzl_all.Parameters.ParamByName('@e_date').value:=edate.DateTime;
       sp_gzl_all.Parameters.ParamByName('@tjfs').value:='1';
       sp_gzl_all.Open;
  end
  else
  begin
       sp_gzl_all.Active:=false;
       sp_gzl_all.Parameters.ParamByName('@s_date').value:=sdate.DateTime;
       sp_gzl_all.Parameters.ParamByName('@e_date').value:=edate.DateTime;
       sp_gzl_all.Parameters.ParamByName('@tjfs').value:='0';
       sp_gzl_all.Open;
  end;
  if sp_gzl_all.RecordCount>0 then
  begin
       Button2.Enabled:=true;
       ok1.Enabled:=true;
  end else begin
       ok1.Enabled:=false;
       Button2.Enabled:=false;
       application.MessageBox('财务科没有结帐记录，请选择结帐','提示',0+16);
  end;
end;

procedure Tfrm_mzczysf_all.FormShow(Sender: TObject);
begin
   sdate.DateTime:=frm_func.curr_date-1;
   edate.DateTime:=frm_func.curr_date-1;
end;

procedure Tfrm_mzczysf_all.ok1Click(Sender: TObject);
begin
   application.CreateForm(Tfrm_repo_mzczysf_all,frm_repo_mzczysf_all);
   if checkbox1.Checked then
      frm_repo_mzczysf_all.yymc.Caption:=trim(pub_yymc)+'操作员缴款汇总表[门诊]'
   else
      frm_repo_mzczysf_all.yymc.Caption:=trim(pub_yymc)+'操作员缴款一览表[门诊]';
   frm_repo_mzczysf_all.zbr.Caption:='制表人:'+pub_czyxm;
  // frm_repo_mzczysf_all.ksrq.Caption:='起止日期:'+copy(datetimetostr(sdate.DateTime),1,10)+' 至 '+copy(datetimetostr(edate.DateTime),1,10);   改为一下代码 cxy,2006-5-10
  frm_repo_mzczysf_all.ksrq.Caption:='起止日期:'+formatdatetime('yyyy年mm月dd日',sdate.DateTime)+' 至 '+formatdatetime('yyyy年mm月dd日',edate.DateTime);
   frm_repo_mzczysf_all.zbrq.Caption:='制表时间:'+datetimetostr(frm_func.curr_date);
   frm_repo_mzczysf_all.QuickRep1.Preview;
   try frm_repo_mzczysf_all.free except end;
end;

procedure Tfrm_mzczysf_all.ok2Click(Sender: TObject);
begin
  close;
end;

procedure Tfrm_mzczysf_all.Button1Click(Sender: TObject);
begin
  close;
end;

procedure Tfrm_mzczysf_all.Button2Click(Sender: TObject);
begin
    if formatdatetime('yyyy-mm-dd',edate.DateTime)>=formatdatetime('yyyy-mm-dd',frm_func.curr_date) then
    begin
      application.MessageBox('统计结束日期不能是当天','提示',0+16);
      abort;
    end;
    sp_mx.Active:=false;
    sp_mx.Parameters.ParamByName('@s_date').value:=sdate.DateTime;
    sp_mx.Parameters.ParamByName('@e_date').value:=edate.DateTime;
    sp_mx.Parameters.ParamByName('@czydm').value:=sp_gzl_all.fieldbyname('czydm').asstring;
    sp_mx.Open;
    application.CreateForm(Tfrm_rtp_czyjzmxhz,frm_rtp_czyjzmxhz);
    frm_rtp_czyjzmxhz.yymc.Caption:=trim(pub_yymc);
    frm_rtp_czyjzmxhz.bt.Caption:='操作员缴款明细表[门诊]';
    frm_rtp_czyjzmxhz.czydm.Caption:='收费员:'+sp_gzl_all.fieldbyname('mc').asstring;
    frm_rtp_czyjzmxhz.ksrq.Caption:='起止日期:'+formatdatetime('yyyy-mm-dd',sdate.DateTime)+' 至 '+formatdatetime('yyyy-mm-dd',edate.DateTime);
    frm_rtp_czyjzmxhz.zbrq.Caption:='制表时间:'+datetimetostr(frm_func.curr_date);
    frm_rtp_czyjzmxhz.QuickRep1.Previewmodal;
    try frm_rtp_czyjzmxhz.free except end;
end;

end.
