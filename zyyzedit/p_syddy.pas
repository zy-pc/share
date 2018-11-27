unit p_syddy;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, GridsEh, DBGridEh, ExtCtrls, ADODB, DB, ComCtrls, Buttons,printers;
type Tmyrect=record
         ph:string;
         top,left,right,bottom,sl,height:integer;
         yf,tj:string;
         gtop,gleft,gright,gbottom:integer;
         end;
type TTmyrect=array [0..100] of Tmyrect;

type
  Tfrm_syddy = class(TForm)
    Panel1: TPanel;
    GroupBox2: TGroupBox;
    Panel2: TPanel;
    ds_sybr: TDataSource;
    ds_ypqd: TDataSource;
    sp_dryz: TADOStoredProc;
    Label2: TLabel;
    dt_zxsj: TDateTimePicker;
    sp_yzsj: TADOStoredProc;
    ScrollBox1: TScrollBox;
    DBGridEh2: TDBGridEh;
    Timer1: TTimer;
    Timer2: TTimer;
    SpeedButton1: TSpeedButton;
    DBGridEh1: TDBGridEh;
    sp_sybr: TADOStoredProc;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    qb: TCheckBox;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    Shape1: TShape;
    Shape2: TShape;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    Shape3: TShape;
    Shape4: TShape;
    procedure FormShow(Sender: TObject);
    procedure DBGridEh2ColWidthsChanged(Sender: TObject);
    procedure DBGridEh2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure sp_dryzAfterOpen(DataSet: TDataSet);
    procedure FormResize(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure DBGridEh1CellClick(Column: TColumnEh);
    procedure qbClick(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure dt_zxsjChange(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    rectno:integer;
   procedure createrect(var myrect1:TTmyrect;dataset_rect:Tcustomadodataset;grid_yzlr1:Tdbgrideh;x1,x2,x3:integer);
  end;

var
  frm_syddy: Tfrm_syddy;
  myrect:TTmyrect;
  myrect_cx,myrect_zx_cq,myrect_zx_ls:TTmyrect;
  x:integer;
 function findinarray(myrect:TTmyrect;zd:string):integer;
 procedure initarray(myrect:TTmyrect);


implementation
  uses p_dm,p_func,p_print_syfz, p_print_sybq;
{$R *.dfm}
function findinarray(myrect:TTmyrect;zd:string):integer;
var i:integer;
mark:boolean;
begin
  mark:=true;
  i:=0;
  while (i<99) and mark do
   begin
     if myrect[i].ph=zd then
      begin
      mark:=false;
      end
    else
    i:=i+1;
   end;
  result:=i;
end;

  procedure initarray(myrect:TTmyrect);
  var
   i:integer;
   begin
    for i := 0 to 100 do
      begin
        myrect[i].ph:='';
        myrect[i].top:=0;
        myrect[i].left:=0;
        myrect[i].right:=0;
        myrect[i].bottom:=0;
        myrect[i].sl:=1;
        myrect[i].yf:='';
        myrect[i].tj:='';
        myrect[i].gtop:=0;
        myrect[i].gleft:=0;
        myrect[i].gright:=0;
        myrect[i].gbottom:=0;

      end;
   end;

procedure Tfrm_syddy.BitBtn1Click(Sender: TObject);
begin
if not sp_dryz.isempty then
 begin
  application.CreateForm(Tfrm_print_sybq, frm_print_sybq);
  try
  sp_sybr.DisableControls;
  if not qb.checked then
  begin
    sp_sybr.Filter:='zyh='+#39+sp_sybr.fieldbyname('zyh').asstring+#39;
    sp_sybr.filtered:=true;
  end
  else
  begin
  sp_sybr.Filtered:=false;
  sp_sybr.First;
  end;
  sp_sybr.First;

  while not sp_sybr.eof do
  begin
   frm_print_sybq.dyrq.caption:='日期：'+formatdatetime('yyyy-mm-dd hh:mm:ss',frm_func.curr_date);
   frm_print_sybq.zxsj.caption:='执行日期：'+formatdatetime('yyyymmdd',dt_zxsj.date);
   frm_print_sybq.sp_syfz.close;
   frm_print_sybq.sp_syfz.Parameters.ParamByName('@zyh').value:=sp_sybr.fieldbyname('zyh').asstring;
   frm_print_sybq.sp_syfz.Parameters.ParamByName('@zxsj').value:=formatdatetime('yyyymmdd',dt_zxsj.date);
   frm_print_sybq.sp_syfz.Parameters.ParamByName('@syfzph').value:='';
   frm_print_sybq.sp_syfz.Parameters.ParamByName('@dyfs').value:=1;
   frm_print_sybq.sp_syfz.open;
  if not frm_print_sybq.sp_syfz.IsEmpty then
  begin
   frm_print_sybq.brxm.Caption:=sp_sybr.fieldbyname('brxm').asstring;
   if formatdatetime('yyyymmdd',frm_func.curr_date)>formatdatetime('yyyymmdd',dt_zxsj.date) then
      frm_print_sybq.bch.Caption:= sp_sybr.fieldbyname('bch').asstring+'(★)'
   else
      frm_print_sybq.bch.Caption:= sp_sybr.fieldbyname('bch').asstring;
   frm_print_sybq.quickrep1.PrinterSettings.PrinterIndex:=printer.Printers.IndexOf('sybqprint');
   frm_print_sybq.QuickRep1.print;
  end;
   sp_sybr.Next;
  end;
  finally
    frm_print_sybq.Free;
    sp_sybr.EnableControls;
    sp_sybr.Filtered:=false;
  end;
 end;
end;

procedure Tfrm_syddy.BitBtn2Click(Sender: TObject);
begin
if not sp_dryz.isempty then
 begin
  application.CreateForm(Tfrm_print_sybq, frm_print_sybq);

   frm_print_sybq.dyrq.caption:='日期：'+formatdatetime('yyyy-mm-dd',dt_zxsj.date);
   frm_print_sybq.zxsj.caption:='执行日期：'+formatdatetime('yyyymmdd',dt_zxsj.date);
   //formatdatetime('yyyy-mm-dd hh:mm:ss',frm_func.curr_date);
   frm_print_sybq.sp_syfz.close;
   frm_print_sybq.sp_syfz.Parameters.ParamByName('@zyh').value:=sp_sybr.fieldbyname('zyh').asstring;
   frm_print_sybq.sp_syfz.Parameters.ParamByName('@zxsj').value:=formatdatetime('yyyymmdd',dt_zxsj.date);
   frm_print_sybq.sp_syfz.Parameters.ParamByName('@syfzph').value:=sp_dryz.fieldbyname('fzph').asstring;
   frm_print_sybq.sp_syfz.Parameters.ParamByName('@dyfs').value:=1;
   frm_print_sybq.sp_syfz.open;
  if not frm_print_sybq.sp_syfz.IsEmpty then
  begin
  try
   frm_print_sybq.brxm.Caption:=sp_sybr.fieldbyname('brxm').asstring;
   if formatdatetime('yyyymmdd',frm_func.curr_date)>formatdatetime('yyyymmdd',dt_zxsj.date) then
      frm_print_sybq.bch.Caption:= sp_sybr.fieldbyname('bch').asstring+'(★)'
   else
      frm_print_sybq.bch.Caption:= sp_sybr.fieldbyname('bch').asstring;
   frm_print_sybq.quickrep1.PrinterSettings.PrinterIndex:=printer.Printers.IndexOf('sybqprint');
   frm_print_sybq.QuickRep1.print;
  finally
    frm_print_sybq.Free;
  end;
  end
  else
    frm_print_sybq.Free;
 end;
end;

procedure Tfrm_syddy.BitBtn3Click(Sender: TObject);
begin
self.close;
end;

procedure Tfrm_syddy.BitBtn4Click(Sender: TObject);
begin
if not sp_dryz.isempty then
 begin
  application.CreateForm(Tfrm_print_syfz, frm_print_syfz);
  try
  sp_sybr.DisableControls;
  if not qb.checked then
  begin
    sp_sybr.Filter:='zyh='+#39+sp_sybr.fieldbyname('zyh').asstring+#39;
    sp_sybr.filtered:=true;
  end
  else
  begin
  sp_sybr.Filtered:=false;
  sp_sybr.First;
  end;
  sp_sybr.First;
  while not sp_sybr.eof do
  begin
   frm_print_syfz.bqmc.caption:=pub_ksmc;
   frm_print_syfz.dyrq.caption:='日期：'+formatdatetime('yyyy-mm-dd hh:mm:ss',frm_func.curr_date);
   frm_print_syfz.zxsj.caption:='执行日期：'+formatdatetime('yyyymmdd',dt_zxsj.date);
   frm_print_syfz.sp_syfz.close;
   frm_print_syfz.sp_syfz.Parameters.ParamByName('@zyh').value:=sp_sybr.fieldbyname('zyh').asstring;
   frm_print_syfz.sp_syfz.Parameters.ParamByName('@zxsj').value:=formatdatetime('yyyymmdd',dt_zxsj.date);
   frm_print_syfz.sp_syfz.Parameters.ParamByName('@syfzph').value:='';
   frm_print_syfz.sp_syfz.Parameters.ParamByName('@dyfs').value:=1;
   frm_print_syfz.sp_syfz.open;
  if not frm_print_syfz.sp_syfz.IsEmpty then
  begin
   frm_print_syfz.brxm.Caption:=sp_sybr.fieldbyname('brxm').asstring;
   frm_print_syfz.bch.Caption:= sp_sybr.fieldbyname('bch').asstring;
   frm_print_syfz.zyh.Caption:= sp_sybr.fieldbyname('tmh').asstring;
   if formatdatetime('yyyymmdd',frm_func.curr_date)>formatdatetime('yyyymmdd',dt_zxsj.date) then
   frm_print_syfz.yymc.Caption:= pub_yymc+'输液卡'+'(★)'
   else
   frm_print_syfz.yymc.Caption:= pub_yymc+'输液卡';
   frm_print_syfz.quickrep1.PrinterSettings.PrinterIndex:=printer.Printers.IndexOf('sydprint');
   frm_print_syfz.QuickRep1.print;
  end;
   sp_sybr.Next;
  end;
  finally
    frm_print_syfz.Free;
    sp_sybr.Filtered:=false;
    sp_sybr.EnableControls;
  end;
 end;
end;

procedure Tfrm_syddy.BitBtn5Click(Sender: TObject);
begin
if not sp_dryz.isempty then
 begin
  application.CreateForm(Tfrm_print_syfz, frm_print_syfz);
  try
   frm_print_syfz.bqmc.caption:=pub_ksmc;
   frm_print_syfz.dyrq.caption:='日期：'+formatdatetime('yyyy-mm-dd hh:mm:ss',frm_func.curr_date);
   frm_print_syfz.zxsj.caption:='执行日期：'+formatdatetime('yyyymmdd',dt_zxsj.date);
   frm_print_syfz.sp_syfz.close;
   frm_print_syfz.sp_syfz.Parameters.ParamByName('@zyh').value:=sp_sybr.fieldbyname('zyh').asstring;
   frm_print_syfz.sp_syfz.Parameters.ParamByName('@zxsj').value:=formatdatetime('yyyymmdd',dt_zxsj.date);
   frm_print_syfz.sp_syfz.Parameters.ParamByName('@syfzph').value:='';//sp_dryz.fieldbyname('fzph').asstring;;
   frm_print_syfz.sp_syfz.Parameters.ParamByName('@dyfs').value:=1;
   frm_print_syfz.sp_syfz.open;
  if not frm_print_syfz.sp_syfz.IsEmpty then
  begin
   frm_print_syfz.brxm.Caption:=sp_sybr.fieldbyname('brxm').asstring;
   frm_print_syfz.bch.Caption:= sp_sybr.fieldbyname('bch').asstring;
   frm_print_syfz.zyh.Caption:= sp_sybr.fieldbyname('tmh').asstring;
   if formatdatetime('yyyymmdd',frm_func.curr_date)>formatdatetime('yyyymmdd',dt_zxsj.date) then
   frm_print_syfz.yymc.Caption:= pub_yymc+'输液卡'+'(★)'
   else
   frm_print_syfz.yymc.Caption:= pub_yymc+'输液卡';
   frm_print_syfz.quickrep1.PrinterSettings.PrinterIndex:=printer.Printers.IndexOf('sydprint');
   frm_print_syfz.QuickRep1.print;
  end;
  finally
    frm_print_syfz.Free;
  end;
 end;
end;

procedure Tfrm_syddy.BitBtn6Click(Sender: TObject);
begin
if not sp_dryz.isempty then
 begin
  application.CreateForm(Tfrm_print_syfz, frm_print_syfz);
  try
   frm_print_syfz.bqmc.caption:=pub_ksmc;
   frm_print_syfz.dyrq.caption:='日期：'+formatdatetime('yyyy-mm-dd hh:mm:ss',frm_func.curr_date);
   frm_print_syfz.zxsj.caption:='执行日期：'+formatdatetime('yyyymmdd',dt_zxsj.date);
   frm_print_syfz.sp_syfz.close;
   frm_print_syfz.sp_syfz.Parameters.ParamByName('@zyh').value:=sp_sybr.fieldbyname('zyh').asstring;
   frm_print_syfz.sp_syfz.Parameters.ParamByName('@zxsj').value:=formatdatetime('yyyymmdd',dt_zxsj.date);
   frm_print_syfz.sp_syfz.Parameters.ParamByName('@syfzph').value:='';//sp_dryz.fieldbyname('fzph').asstring;;
   frm_print_syfz.sp_syfz.Parameters.ParamByName('@dyfs').value:=2;
   frm_print_syfz.sp_syfz.open;
  if not frm_print_syfz.sp_syfz.IsEmpty then
  begin
   frm_print_syfz.brxm.Caption:=sp_sybr.fieldbyname('brxm').asstring;
   frm_print_syfz.bch.Caption:= sp_sybr.fieldbyname('bch').asstring;
   frm_print_syfz.zyh.Caption:= sp_sybr.fieldbyname('tmh').asstring;
   if formatdatetime('yyyymmdd',frm_func.curr_date)>formatdatetime('yyyymmdd',dt_zxsj.date) then
   frm_print_syfz.yymc.Caption:= pub_yymc+'输液卡'+'(★)'
   else
   frm_print_syfz.yymc.Caption:= pub_yymc+'输液卡';
   frm_print_syfz.quickrep1.PrinterSettings.PrinterIndex:=printer.Printers.IndexOf('sydprint');
   frm_print_syfz.QuickRep1.print;
  end;
  finally
    frm_print_syfz.Free;
  end;
 end;
end;

procedure Tfrm_syddy.BitBtn7Click(Sender: TObject);
begin
if not sp_dryz.isempty then
 begin
  application.CreateForm(Tfrm_print_syfz, frm_print_syfz);
  try
  sp_sybr.DisableControls;
  if not qb.checked then
  begin
    sp_sybr.Filter:='zyh='+#39+sp_sybr.fieldbyname('zyh').asstring+#39;
    sp_sybr.filtered:=true;
  end
  else
  begin
  sp_sybr.Filtered:=false;
  sp_sybr.First;
  end;
  sp_sybr.First;
  while not sp_sybr.eof do
  begin
   frm_print_syfz.bqmc.caption:=pub_ksmc;
   frm_print_syfz.sp_syfz.close;
   frm_print_syfz.dyrq.caption:='日期：'+formatdatetime('yyyy-mm-dd hh:mm:ss',frm_func.curr_date);
   frm_print_syfz.zxsj.caption:='执行日期：'+formatdatetime('yyyymmdd',dt_zxsj.date);
   frm_print_syfz.sp_syfz.Parameters.ParamByName('@zyh').value:=sp_sybr.fieldbyname('zyh').asstring;
   frm_print_syfz.sp_syfz.Parameters.ParamByName('@zxsj').value:=formatdatetime('yyyymmdd',dt_zxsj.date);
   frm_print_syfz.sp_syfz.Parameters.ParamByName('@syfzph').value:='';
   frm_print_syfz.sp_syfz.Parameters.ParamByName('@dyfs').value:=2;
   frm_print_syfz.sp_syfz.open;
  if not frm_print_syfz.sp_syfz.IsEmpty then
  begin
   frm_print_syfz.brxm.Caption:=sp_sybr.fieldbyname('brxm').asstring;
   frm_print_syfz.bch.Caption:= sp_sybr.fieldbyname('bch').asstring;
   frm_print_syfz.zyh.Caption:= sp_sybr.fieldbyname('tmh').asstring;
   if formatdatetime('yyyymmdd',frm_func.curr_date)>formatdatetime('yyyymmdd',dt_zxsj.date) then
   frm_print_syfz.yymc.Caption:= pub_yymc+'输液卡'+'(★)'
   else
   frm_print_syfz.yymc.Caption:= pub_yymc+'输液卡';
   frm_print_syfz.quickrep1.PrinterSettings.PrinterIndex:=printer.Printers.IndexOf('sydprint');
   frm_print_syfz.QuickRep1.print;
  end;
   sp_sybr.Next;
  end;
  finally
    frm_print_syfz.Free;
    sp_sybr.EnableControls;
  end;
 end;
end;

procedure Tfrm_syddy.BitBtn8Click(Sender: TObject);
begin
if not sp_dryz.isempty then
 begin
  application.CreateForm(Tfrm_print_sybq, frm_print_sybq);
  try
   frm_print_sybq.dyrq.caption:='日期：'+formatdatetime('yyyy-mm-dd',dt_zxsj.date);
   frm_print_sybq.zxsj.caption:='执行日期：'+formatdatetime('yyyymmdd',dt_zxsj.date);
   //formatdatetime('yyyy-mm-dd hh:mm:ss',frm_func.curr_date);
   frm_print_sybq.sp_syfz.close;
   frm_print_sybq.sp_syfz.Parameters.ParamByName('@zyh').value:=sp_sybr.fieldbyname('zyh').asstring;
   frm_print_sybq.sp_syfz.Parameters.ParamByName('@zxsj').value:=formatdatetime('yyyymmdd',dt_zxsj.date);
   frm_print_sybq.sp_syfz.Parameters.ParamByName('@syfzph').value:=sp_dryz.fieldbyname('fzph').asstring;
   frm_print_sybq.sp_syfz.Parameters.ParamByName('@dyfs').value:=2;
   frm_print_sybq.sp_syfz.open;
   if not frm_print_sybq.sp_syfz.IsEmpty then
    begin

   frm_print_sybq.brxm.Caption:=sp_sybr.fieldbyname('brxm').asstring;
   if formatdatetime('yyyymmdd',frm_func.curr_date)>formatdatetime('yyyymmdd',dt_zxsj.date) then
      frm_print_sybq.bch.Caption:= sp_sybr.fieldbyname('bch').asstring+'(★)'
   else
      frm_print_sybq.bch.Caption:= sp_sybr.fieldbyname('bch').asstring;
   frm_print_sybq.quickrep1.PrinterSettings.PrinterIndex:=printer.Printers.IndexOf('sybqprint');
   frm_print_sybq.QuickRep1.print;
    end;
  finally
    frm_print_sybq.Free;
  end;
 end;
end;

procedure Tfrm_syddy.BitBtn9Click(Sender: TObject);
begin
if not sp_dryz.isempty then
 begin
  application.CreateForm(Tfrm_print_sybq, frm_print_sybq);
  try
  sp_sybr.DisableControls;
  if not qb.checked then
  begin
    sp_sybr.Filter:='zyh='+#39+sp_sybr.fieldbyname('zyh').asstring+#39;
    sp_sybr.filtered:=true;
  end
  else
  begin
  sp_sybr.Filtered:=false;
  sp_sybr.First;
  end;
  sp_sybr.First;
  while not sp_sybr.eof do
  begin
   frm_print_sybq.dyrq.caption:='日期：'+formatdatetime('yyyy-mm-dd hh:mm:ss',frm_func.curr_date);
   frm_print_sybq.zxsj.caption:='执行日期：'+formatdatetime('yyyymmdd',dt_zxsj.date);
   frm_print_sybq.sp_syfz.close;
   frm_print_sybq.sp_syfz.Parameters.ParamByName('@zyh').value:=sp_sybr.fieldbyname('zyh').asstring;
   frm_print_sybq.sp_syfz.Parameters.ParamByName('@zxsj').value:=formatdatetime('yyyymmdd',dt_zxsj.date);
   frm_print_sybq.sp_syfz.Parameters.ParamByName('@syfzph').value:='';
   frm_print_sybq.sp_syfz.Parameters.ParamByName('@dyfs').value:=2;
   frm_print_sybq.sp_syfz.open;
  if not frm_print_sybq.sp_syfz.IsEmpty then
  begin
   frm_print_sybq.brxm.Caption:=sp_sybr.fieldbyname('brxm').asstring;
   if formatdatetime('yyyymmdd',frm_func.curr_date)>formatdatetime('yyyymmdd',dt_zxsj.date) then
      frm_print_sybq.bch.Caption:= sp_sybr.fieldbyname('bch').asstring+'(★)'
   else
      frm_print_sybq.bch.Caption:= sp_sybr.fieldbyname('bch').asstring;
    frm_print_sybq.quickrep1.PrinterSettings.PrinterIndex:=printer.Printers.IndexOf('sybqprint');
    frm_print_sybq.QuickRep1.print;
  end;
   sp_sybr.Next;
  end;
  finally
    frm_print_sybq.Free;
    sp_sybr.Filtered:=false;
    sp_sybr.EnableControls;
  end;
 end;
end;

procedure Tfrm_syddy.createrect(var myrect1:TTmyrect;dataset_rect:Tcustomadodataset;grid_yzlr1:Tdbgrideh;x1,x2,x3:integer);
var yzph:string;
i,n:integer;
begin
dataset_rect.DisableControls;
rectno:=0;
dataset_rect.first;
initarray(myrect1);
i:=1;
while not dataset_rect.Eof do
 begin
   if dataset_rect.FieldByName('fzph').AsString<>'' then
    begin
    if (yzph<>'') and (myrect1[rectno].sl=1) and (yzph<>dataset_rect.FieldByName('fzph').AsString) then
       begin
        myrect1[rectno].bottom:=grid_yzlr1.CellRect(x1,i-1).bottom;
        myrect1[rectno].Gbottom:=grid_yzlr1.CellRect(x1,i-1).bottom;
//        myrect_cx[rectno].sl:=myrect_cx[rectno].sl+1;
        yzph:='';
       end;
    if yzph=dataset_rect.FieldByName('fzph').AsString then
     begin
      myrect1[rectno].bottom:=grid_yzlr1.CellRect(x1,i).bottom;
      myrect1[rectno].Gbottom:=grid_yzlr1.CellRect(1,i).bottom;
      myrect1[rectno].sl:=myrect1[rectno].sl+1;

     end
     else
      begin
      rectno:=rectno+1;
      myrect1[rectno].sl:=1;
      myrect1[rectno].ph:=dataset_rect.FieldByName('fzph').AsString;

      myrect1[rectno].left:=grid_yzlr1.CellRect(x1,i).left;
      myrect1[rectno].right:=grid_yzlr1.CellRect(x2,i).right;
      myrect1[rectno].top:=grid_yzlr1.CellRect(x1,i).top;

      myrect1[rectno].Gleft:=grid_yzlr1.CellRect(4,i).left;
      myrect1[rectno].Gright:=grid_yzlr1.CellRect(x3,i).right;
      if grid_yzlr1.CellRect(x3,i).right=0 then
      for n := 0 to x3-1 do
      myrect1[rectno].Gright:=myrect1[rectno].Gright+grid_yzlr1.Columns[n].Width;
      myrect1[rectno].Gtop:=grid_yzlr1.CellRect(1,i).top;
      myrect1[rectno].yf:= dataset_rect.FieldByName('ypyf').AsString;
      myrect1[rectno].tj:= dataset_rect.FieldByName('yytj').AsString;
      myrect1[rectno].height:=grid_yzlr1.CellRect(x1,i).bottom-grid_yzlr1.CellRect(x1,i).top;
      yzph:=dataset_rect.FieldByName('fzph').AsString;
      end;
    end
   else
    begin
      if (yzph<>'') and (myrect1[rectno].sl=1)then
       begin
        myrect1[rectno].bottom:=grid_yzlr1.CellRect(x1,i-1).bottom;;
        myrect1[rectno].Gbottom:=grid_yzlr1.CellRect(x1,i-1).bottom;
//        myrect_cx[rectno].sl:=myrect_cx[rectno].sl+1;
        yzph:='';
       end;
       if (yzph<>'') and (myrect1[rectno].sl>1)  then
        yzph:='';

    end;
    dataset_rect.Next;
   i:=dataset_rect.RecNo;
 end;
 if yzph<>'' then
       begin
        myrect1[rectno].bottom:=grid_yzlr1.CellRect(x1,i).bottom;;
        myrect1[rectno].Gbottom:=grid_yzlr1.CellRect(x1,i).bottom;
//        myrect_cx[rectno].sl:=myrect_cx[rectno].sl+1;
        yzph:='';
       end; 
 dataset_rect.EnableControls;

end;

procedure Tfrm_syddy.DBGridEh1CellClick(Column: TColumnEh);
begin
if not qb.checked then
 begin
  sp_dryz.Filtered := false;
  sp_dryz.Filter := 'bch='+#39+sp_sybr.fieldbyname('bch').asstring+#39;
  sp_dryz.Filtered := true;
  if sp_dryz.Active then
  createrect(myrect_cx,sp_dryz,dbgrideh2,9,10,13);

 end;
end;

procedure Tfrm_syddy.DBGridEh2ColWidthsChanged(Sender: TObject);
begin
if sp_dryz.Active then
  createrect(myrect_cx,sp_dryz,dbgrideh2,9,10,13);

end;

procedure Tfrm_syddy.DBGridEh2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
      var i:integer;
  myrect1:Trect;
begin
 if trim(sP_dryz.fieldbyname('yzsx').asstring) = '临时' then
  begin
    dbgrideh2.Canvas.Brush.Color := clwhite;
    dbgrideh2.Canvas.Font.Color := clGreen;
  end;

    if trim(sp_dryz.fieldbyname('fzph').asstring)<>'' then
   begin
     dbgrideh2.canvas.brush.color := $00E2BC6D;
     i:= findinarray(myrect_cx,sp_dryz.fieldbyname('fzph').asstring);
     dbgrideh2.Canvas.pen.color:=$00E2BC6D;
     dbgrideh2.Canvas.MoveTo(myrect_cx[i].left+20,myrect_cx[i].top);
     dbgrideh2.Canvas.LineTo(myrect_cx[i].left,myrect_cx[i].Bottom);
     dbgrideh2.canvas.Rectangle(myrect_cx[i].left,myrect_cx[i].top,myrect_cx[i].right,myrect_cx[i].bottom);
     dbgrideh2.Canvas.pen.color:=clred;
     dbgrideh2.Canvas.MoveTo(myrect_cx[i].left+20,myrect_cx[i].top);
     dbgrideh2.Canvas.LineTo(myrect_cx[i].left,myrect_cx[i].Bottom);
     with dbgrideh2.Canvas do
      begin
        moveto(myrect_cx[I].gleft,myrect_cx[i].Gtop);
        lineto(myrect_cx[I].gright,myrect_cx[I].gtop);
        lineto(myrect_cx[I].gright,myrect_cx[I].gbottom);
        lineto(myrect_cx[I].gleft,myrect_cx[I].gbottom);
        lineto(myrect_cx[I].gleft,myrect_cx[i].Gtop);
      end;
     myrect1.Left:=myrect_cx[i].left;
     myrect1.top:=myrect_cx[i].top;
     myrect1.right:=myrect_cx[i].right;
     myrect1.bottom:=myrect_cx[i].bottom;
     dbgrideh2.Canvas.TextOut(myrect_cx[i].left+20,
     myrect_cx[i].top+round(myrect_cx[i].height*((myrect_cx[i].sl-0.5)/2)),myrect_cx[i].tj+#13+myrect_cx[i].yf);
   end;
    (Sender as TDbGridEh).DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure Tfrm_syddy.dt_zxsjChange(Sender: TObject);
begin
  sp_sybr.close;
  sp_sybr.Parameters.ParamByName('@bqdm').value:=pub_bqdm;
  sp_sybr.Parameters.ParamByName('@zyh').value:='';
  sp_sybr.Parameters.ParamByName('@zxsj').value:=formatdatetime('yyyymmdd',dT_zxsj.Date);
  sp_sybr.Open;
  
  sp_dryz.close;
  sp_dryz.Parameters.ParamByName('@bqdm').value:=pub_bqdm;
  sp_dryz.Parameters.ParamByName('@zyh').value:='';
  sp_dryz.Parameters.ParamByName('@bz').value:='全部';
  sp_dryz.Parameters.ParamByName('@zxsj').value:=formatdatetime('yyyymmdd',dT_zxsj.Date);
  sp_dryz.Open;
end;

procedure Tfrm_syddy.FormResize(Sender: TObject);
begin
x:=self.Width;
end;

procedure Tfrm_syddy.FormShow(Sender: TObject);
begin
{  qry_ypyf.Open;
  while not qry_ypyf.Eof do
  begin
  sxtj.Items.Add(trim(qry_ypyf.FieldByName('mc').AsString));
  qry_ypyf.Next;
  end;}
//  cxgrid1dbtableview1.DataController.Groups.FullExpand;
  dbgrideh2.Left:=1;
  dbgrideh2.Top:=1;
  dt_zxsj.DateTime:=frm_func.curr_date;
  sp_yzsj.Close;
  sp_yzsj.Parameters.ParamByName('@scyzsj').Value :=dt_zxsj.DateTime;
  sp_yzsj.ExecProc;
  dt_zxsj.DateTime:= sp_yzsj.Parameters.ParamByName('@scyzsj').Value;
  sp_dryz.close;
  sp_dryz.Parameters.ParamByName('@bqdm').value:=pub_bqdm;
  sp_dryz.Parameters.ParamByName('@zyh').value:='';
  sp_dryz.Parameters.ParamByName('@bz').value:='全部';
  sp_dryz.Parameters.ParamByName('@zxsj').value:=formatdatetime('yyyymmdd',dT_zxsj.Date);
  sp_dryz.Open;
  dbgrideh2.Columns[0].Visible:=true;
  dbgrideh2.Columns[1].Visible:=true;

  sp_sybr.close;
  sp_sybr.Parameters.ParamByName('@bqdm').value:=pub_bqdm;
  sp_sybr.Parameters.ParamByName('@zyh').value:='';
  sp_sybr.Parameters.ParamByName('@zxsj').value:=formatdatetime('yyyymmdd',dT_zxsj.Date);
  sp_sybr.Open;
  timer1.enabled:=true;
  timer2.enabled:=true;
end;

procedure Tfrm_syddy.qbClick(Sender: TObject);
begin
if qb.checked then
begin
 sp_dryz.Filtered:=false;
  if sp_dryz.Active then
  createrect(myrect_cx,sp_dryz,dbgrideh2,9,10,13);
end
else
 begin
  sp_dryz.Filtered := false;
  sp_dryz.Filter := 'bch='+#39+sp_sybr.fieldbyname('bch').asstring+#39;
  sp_dryz.Filtered := true;
  if sp_dryz.Active then
  createrect(myrect_cx,sp_dryz,dbgrideh2,9,10,13);
 end;
end;

procedure Tfrm_syddy.SpeedButton1Click(Sender: TObject);
begin
frm_syddy.OnShow(sender);
end;

procedure Tfrm_syddy.sp_dryzAfterOpen(DataSet: TDataSet);
begin
if sp_dryz.RecordCount*30>screen.Height-70 then
  dbgrideh2.Height:=sp_dryz.RecordCount*30
  else
  dbgrideh2.Height:=screen.Height-70;
  createrect(myrect_cx,sp_dryz,dbgrideh2,9,10,13);
end;

end.
