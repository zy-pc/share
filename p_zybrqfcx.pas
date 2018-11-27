unit p_zybrqfcx;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Buttons, Db, DBTables, Grids, DBGrids, ComCtrls,
  ADODB, PrnDbgeh, DBGridEh, GridsEh, DBGridEhGrouping;

type
  Tfrm_zybrqfcx = class(TForm)
    b_close: TBitBtn;
    tmh: TEdit;
    Label1: TLabel;
    ds_cxdj: TDataSource;
    sp_cxdj: TADOStoredProc;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DBGridEh1: TDBGridEh;
    PrintDBGridEh1: TPrintDBGridEh;
    qry_pub: TADOQuery;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
  zy_tmh:string;
  zy_zyh:string;
  bqcx : boolean;//病区查询
    { Public declarations }
  end;

var
  frm_zybrqfcx: Tfrm_zybrqfcx;



implementation
uses p_login,p_dm,p_func;
{$R *.DFM}

procedure Tfrm_zybrqfcx.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if key=27 then  close;
end;

procedure Tfrm_zybrqfcx.FormShow(Sender: TObject);
var temp : string;
begin
 sp_cxdj.active:=false;

 sp_cxdj.open;
 if sp_cxdj.isempty then
  begin
   application.messagebox('没有出院登记病人！','提示',mb_ok+mb_iconinformation);
   tmh.SetFocus;
  end else
  if bqcx then
  begin


       qry_pub.close;
       qry_pub.sql.text := 'select * from sys_bqzyfl where bqdm = '+ #39+pub_bqdm+#39;
       qry_pub.open;
       temp := ' ksdm =';
       while not qry_pub.eof do
       begin
           temp := temp + trim(qry_pub.fieldbyname('bqzydm').asstring) + ' or ksdm = ';
           qry_pub.next;
       end;
       temp := temp + '1';
       sp_cxdj.Filtered := false;
       sp_cxdj.Filter := temp;
       sp_cxdj.Filtered := true;
  end;
end;

procedure Tfrm_zybrqfcx.BitBtn2Click(Sender: TObject);
begin
  close;
end;

procedure Tfrm_zybrqfcx.BitBtn1Click(Sender: TObject);
begin
  printdbgrideh1.title.Text:='打印日期:'+formatdatetime('yy-mm-dd',now);
  printdbgrideh1.PageHeader.centerText.Text:= pub_yymc+'出院登记病人明细'+char(13);
  PrintDBGridEh1.Preview;
end;
initialization
  RegisterClass(Tfrm_zybrqfcx);

end.
