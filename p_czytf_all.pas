unit p_czytf_all;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, Db, DBTables, ComCtrls, CheckLst, Grids,
  DBGrids, ADODB;

type
  Tfrm_czytf_all = class(TForm)
    ok2: TBitBtn;
    DBGrid1: TDBGrid;
    Bevel1: TBevel;
    sdate: TDateTimePicker;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    ds_gzl_all: TDataSource;
    edate: TDateTimePicker;
    Label2: TLabel;
    sp_gzl_all: TADOStoredProc;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ok2Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_czytf_all: Tfrm_czytf_all;
implementation
uses p_repo_czysyj_all,p_func,p_dm;
{$R *.DFM}

procedure Tfrm_czytf_all.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if key=27 then
        close;
end;

procedure Tfrm_czytf_all.BitBtn1Click(Sender: TObject);
begin
    sp_gzl_all.Active:=false;
    sp_gzl_all.parameters.ParamByName('@s_date').value:=sdate.DateTime;
    sp_gzl_all.parameters.ParamByName('@e_date').value:=edate.DateTime;
    sp_gzl_all.Open;
    if sp_gzl_all.IsEmpty then
    begin
        application.MessageBox('该时间段没有退费记录，请选择日期','提示',0+16);
    end;
end;

procedure Tfrm_czytf_all.FormShow(Sender: TObject);
begin
   sdate.DateTime:=frm_func.curr_date;
   edate.DateTime:=frm_func.curr_date;
end;

procedure Tfrm_czytf_all.ok2Click(Sender: TObject);
begin
close;
end;
initialization
  RegisterClass(Tfrm_czytf_all);
end.
