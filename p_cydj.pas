unit p_cydj;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ComCtrls, Db, DBTables, ExtCtrls, ADODB, Grids,
  DBGrids;

type
  Tfrm_cydj = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    tmh: TEdit;
    brxm: TEdit;
    ryrq: TDateTimePicker;
    cyrq: TDateTimePicker;
    b_save: TBitBtn;
    ok2: TBitBtn;
    Bevel1: TBevel;
    ksmc: TEdit;
    Bevel2: TBevel;
    sp_up_cydj: TADOStoredProc;
    DBGrid2: TDBGrid;
    Label4: TLabel;
    zyts: TEdit;
    procedure fyKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure b_saveClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure tmhKeyPress(Sender: TObject; var Key: Char);
    procedure tmhEnter(Sender: TObject);
    procedure ok2Click(Sender: TObject);
    procedure DBGrid2KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid2Exit(Sender: TObject);
    procedure cyrqExit(Sender: TObject);
    procedure cyrqKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
     zy_tmh:string;
     zy_zyh:string;
    { Public declarations }
  end;

var
  frm_cydj: Tfrm_cydj;

implementation
uses p_login, p_dm,p_func;
{$R *.DFM}

procedure Tfrm_cydj.fyKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     if key=13 then
          if  b_save.Enabled=true then b_save.SetFocus;
end;

procedure Tfrm_cydj.b_saveClick(Sender: TObject);
begin
   if cyrq.DateTime-frm_func.curr_date>1 then
     begin
         application.MessageBox('入院日期输入错误！！','提示',0+16);
         cyrq.SetFocus;
         abort;
     end;
     showcursor(true);
     with Sp_up_cydj do
      begin
         close;
         parameters.ParamByName('@tmh').value:=zy_tmh;
         parameters.ParamByName('@zyh').value:=zy_zyh;
         parameters.ParamByName('@cyrq').value:=cyrq.datetime;
         parameters.ParamByName('@czydm').value:=pub_czydm;
         parameters.ParamByName('@sczt').value:='0';
         ExecProc;
      end;

    if Sp_up_cydj.parameters.ParamByName('@sczt').value='3' then
        application.MessageBox('还有操作员未作退预交的费用 不能办理出院！','提示',0+16);

     if Sp_up_cydj.parameters.ParamByName('@sczt').value='2' then
         application.MessageBox('有未下帐，或未取药处方,请先到药房处理后方能办理出院！','提示',0+16);

     if sp_up_cydj.parameters.ParamByName('@sczt').value='1' then
         application.MessageBox('成功！','提示：',0+48)
     else
         application.MessageBox('失败！','提示：',0+16);

     tmh.Text:='';
     brxm.Text:='';
     tmh.SetFocus;
end;

procedure Tfrm_cydj.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if key=27 then
        begin
           close;
        end;
end;

procedure Tfrm_cydj.FormShow(Sender: TObject);
begin
    tmh.SetFocus;
    cyrq.DateTime:=frm_func.curr_date;
    if pub_tmhxsbz=false then
      tmh.PasswordChar:='*';
end;

procedure Tfrm_cydj.tmhKeyPress(Sender: TObject; var Key: Char);
var
s:string;
begin
    if (key=#13) and (trim(tmh.text)<>'') then
      begin
           try
              tmh.text:=formatex(strtoint(tmh.text),9);
           except
           end;
           s:=tmh.text;
           with dm_data.qry_pub do
           begin
                Close;
                SQL.clear;
                SQL.Text:='select zydj.brxm,zydj.tmh,zydj.brxb,zydj.ryrq,zydj.brdz,zydj.zyh,zydj.ksdm,fylb.zfzdmc,zydj.cybz,ksdm.mc ksmc '+
                 ' from zysf_zydj zydj,sys_fylb fylb,sys_ksdm ksdm'+
                 ' where zydj.fylb=fylb.dm and zydj.ksdm=ksdm.dm and zydj.tmh<>'+
                 #39+'000000001'+#39+' and (zydj.tmh='+#39+s+#39+
                 ' or zydj.brxm like '+#39+'%'+s+'%'+#39+') and '+
                 ' jsbz=0 and cybz=0';
                open;
           end;
           if dm_data.qry_pub.IsEmpty then
                begin
                   application.MessageBox('无此此卡号！','提示',0+16);
                   tmh.SetFocus;
                   tmh.SelectAll;
                   abort;
                end
           else
           begin
             if dm_data.qry_pub.RecordCount=1 then
             begin
                if  dm_data.qry_pub.FieldByName('cybz').asboolean=true then
                begin
                   application.MessageBox('此病人已办理出院登记！','提示',0+16);
                   tmh.SetFocus;
                   tmh.SelectAll;
                   abort;
                end;
                brxm.Text:=dm_data.qry_pub.FieldByName('brxm').asstring;
                ksmc.Text:=dm_data.qry_pub.FieldByName('ksmc').asstring;
                ryrq.DateTime:=dm_data.qry_pub.FieldByName('ryrq').asdatetime;
                zy_zyh:=dm_data.qry_pub.FieldByName('zyh').asstring;
                zy_tmh:=dm_data.qry_pub.FieldByName('tmh').asstring;
                cyrq.SetFocus;
                b_save.Enabled:=true;
             end
             else
             begin
               dbgrid2.top:=24;
               dbgrid2.Left:=31;
               dbgrid2.Visible:=true;
               dbgrid2.SetFocus;
             end;
           end;
      end;
end;

procedure Tfrm_cydj.tmhEnter(Sender: TObject);
begin
  b_save.Enabled:=false;
end;

procedure Tfrm_cydj.ok2Click(Sender: TObject);
begin
close;
end;

procedure Tfrm_cydj.DBGrid2KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
begin
  if  dm_data.qry_pub.FieldByName('cybz').asboolean=true then
   begin
    application.MessageBox('此病人已办理出院登记！','提示',0+16);
    tmh.SetFocus;
    tmh.SelectAll;
    abort;
   end;
   brxm.Text:=dm_data.qry_pub.FieldByName('brxm').asstring;
   ksmc.Text:=dm_data.qry_pub.FieldByName('ksmc').asstring;
   ryrq.DateTime:=dm_data.qry_pub.FieldByName('ryrq').asdatetime;
   zy_zyh:=dm_data.qry_pub.FieldByName('zyh').asstring;
   zy_tmh:=dm_data.qry_pub.FieldByName('tmh').asstring;
   cyrq.SetFocus;
   b_save.Enabled:=true;
end;
end;

procedure Tfrm_cydj.DBGrid2Exit(Sender: TObject);
begin
dbgrid2.Visible:=false;
end;

procedure Tfrm_cydj.cyrqExit(Sender: TObject);
begin
 zyts.text:=floattostr(trunc(cyrq.Date-ryrq.Date));
end;

procedure Tfrm_cydj.cyrqKeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then b_save.SetFocus;
end;
initialization
  RegisterClass(Tfrm_cydj);
end.
