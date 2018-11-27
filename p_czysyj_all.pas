unit p_czysyj_all;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, Db, DBTables, ComCtrls, CheckLst, Grids,
  DBGrids, ADODB, DBGridEh, GridsEh;

type
  Tfrm_czysyj_all = class(TForm)
    ok1: TBitBtn;
    ok2: TBitBtn;
    Bevel1: TBevel;
    sdate: TDateTimePicker;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    ds_gzl_all: TDataSource;
    edate: TDateTimePicker;
    Label2: TLabel;
    sp_gzl_all: TADOStoredProc;
    CheckBox1: TCheckBox;
    DBGridEh1: TDBGridEh;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ok1Click(Sender: TObject);
    procedure ok2Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_czysyj_all: Tfrm_czysyj_all;
implementation
uses p_repo_czysyj_all,p_func,p_dm;
{$R *.DFM}

procedure Tfrm_czysyj_all.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if key=27 then
        close;
end;

procedure Tfrm_czysyj_all.BitBtn1Click(Sender: TObject);
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
   if sp_gzl_all.IsEmpty then
   begin
       application.MessageBox('财务科没有结帐记录，请选择结帐','提示',0+16);
   end;
end;

procedure Tfrm_czysyj_all.FormShow(Sender: TObject);
begin
   sdate.DateTime:=frm_func.curr_date;
   edate.DateTime:=frm_func.curr_date;
end;

procedure Tfrm_czysyj_all.ok1Click(Sender: TObject);
begin
   application.CreateForm(Tfrm_repo_czysyj_all,frm_repo_czysyj_all);
   frm_repo_czysyj_all.yymc.Caption:=pub_yymc;
   if checkbox1.Checked then
       frm_repo_czysyj_all.QRLabel1.Caption:='操作员缴款汇总表[住院]'
   else
       frm_repo_czysyj_all.QRLabel1.Caption:='操作员缴款一览表[住院]';
   frm_repo_czysyj_all.zbr.Caption:='制表人:'+pub_czyxm;
   frm_repo_czysyj_all.ksrq.Caption:='开始日期:'+datetimetostr(sdate.DateTime);
   frm_repo_czysyj_all.jsrq.Caption:='结束日期:'+datetimetostr(edate.DateTime);
   frm_repo_czysyj_all.QuickRep1.Preview;
   try frm_repo_czysyj_all.free except end;
end;

procedure Tfrm_czysyj_all.ok2Click(Sender: TObject);
begin
  close;
end;
initialization
  RegisterClass(Tfrm_czysyj_all);
end.
