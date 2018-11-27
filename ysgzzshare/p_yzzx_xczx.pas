unit p_yzzx_xczx;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, StdCtrls, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxControls, cxGridCustomView,
  cxGrid, ExtCtrls, cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, ADODB, Mask, DBCtrls,
  Buttons, cxMemo, Grids, DBGridEh, GridsEh, cxLabel, ComCtrls, Menus,
  cxLookAndFeelPainters, cxButtons, cxCheckBox, DBGrids, QRCtrls, QuickRpt,mmsystem,
  DBGridEhGrouping;
type Tmyrect=record
         ph:string;
         top,left,right,bottom,sl,height:integer;
         yf,tj:string;
         gtop,gleft,gright,gbottom:integer;
         end;
type TTmyrect=array [0..1000] of Tmyrect;

type
  Tfrm_yzzx_xczx = class(TForm)
    Panel7: TPanel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    ds_brxx: TDataSource;
    sp_brxx: TADOStoredProc;
    ds_fymx: TDataSource;
    qry_zyh: TADOQuery;
    sp_dryz: TADOStoredProc;
    ds_dryz: TDataSource;
    sp_yzsj: TADOStoredProc;
    ad_yzzx: TADOCommand;
    sp_in_yzqd: TADOStoredProc;
    groupbox2: TPanel;
    Panel6: TPanel;
    zxyz: TSpeedButton;
    cxButton6: TcxButton;
    Panel3: TPanel;
    Label2: TLabel;
    dt_zxsj: TDateTimePicker;
    Panel1: TPanel;
    DBGridEh4: TDBGridEh;
    e_ls: TEdit;
    e_zyh: TEdit;
    e_fzh: TEdit;
    Label1: TLabel;
    procedure FormShow(Sender: TObject);
    procedure cxButton6Click(Sender: TObject);
    procedure sp_brxxAfterScroll(DataSet: TDataSet);
    procedure DBGridEh4ColWidthsChanged(Sender: TObject);
    procedure DBGridEh4DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure sp_brxxAfterOpen(DataSet: TDataSet);
    procedure dt_zxsjChange(Sender: TObject);
    procedure e_lsKeyPress(Sender: TObject; var Key: Char);
  private
        { Private declarations }
  public //y表示选择,n表示未选择
    tmh, zyh, xzph, kdys, ysmc, yfmc, str_zyh: string;
    xhlist, zyhlist, phlist, yzsx: string; //zyhlist 本次记费人员  phlist本次记费批号 //序号xhlist
    xzbz: string; //y表示选择,n表示未选择
    curr_datetime: Tdatetime;

    pldh, _phlist: string;

    zxsj, qyyf: string;
    iszx: boolean;
    rectno:integer;

    cx_zyh, yz_select: string;
    del_curr_ph: string;
    del_bz: integer; //0 本次未删除，1本次删了项目
    procedure createrect(var myrect1:TTmyrect;dataset_rect:TCustomADODataSet;grid_yzlr1:Tdbgrideh;x1,x2,x3:integer);
    procedure displaynull;

        { Public declarations }
  end;

var
  frm_yzzx_xczx: Tfrm_yzzx_xczx;
  yzlb: string; //医嘱类别
  jryzxph: string; //今日已执行医属批号
  isch: boolean;
  _zxbh: string; //执行编号(确定当前执行医嘱的编号)
  myrect:TTmyrect;
  myrect_cx,myrect_zx_cq,myrect_zx_ls:TTmyrect;
  yzsj:Tdatetime;
  fqyz:boolean;
  bz:integer;//1表示需要输入住院号，2表示需要输入分组号，0表示都需要输入
 function findinarray(myrect:TTmyrect;zd:string):integer;
 procedure initarray(myrect:TTmyrect);


implementation

{$R *.dfm}
uses p_func, p_dm, p_syfz, p_yzzxd,
  p_yjddy, p_zyplcffy, P_main, p_bylsyz, p_yzfyqd, p_yzsj, p_print_syfz, p_yzqd;
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

procedure Tfrm_yzzx_xczx.createrect(var myrect1:TTmyrect;dataset_rect:Tcustomadodataset;grid_yzlr1:Tdbgrideh;x1,x2,x3:integer);
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




procedure Tfrm_yzzx_xczx.FormShow(Sender: TObject);
begin
    //病区全部病员
  dt_zxsj.DateTime:=frm_func.curr_date;
  isch := false;
  sp_yzsj.Close;
  sp_yzsj.Parameters.ParamByName('@scyzsj').Value :=dt_zxsj.DateTime;
  sp_yzsj.ExecProc;
  dt_zxsj.DateTime:= sp_yzsj.Parameters.ParamByName('@scyzsj').Value;

end;


procedure Tfrm_yzzx_xczx.sp_brxxAfterOpen(DataSet: TDataSet);
begin
sp_brxx.First;
sp_dryz.close;
sp_dryz.Parameters.ParamByName('@zyh').value:=sp_brxx.FieldByName('zyh').asstring;
sp_dryz.Parameters.ParamByName('@zxsj').value:=formatdatetime('yyyymmdd',dT_zxsj.Date);
sp_dryz.Open;

end;

procedure Tfrm_yzzx_xczx.sp_brxxAfterScroll(DataSet: TDataSet);
begin
  if sp_brxx.RecordCount > 0 then
    cx_zyh := sp_brxx.FieldByName('zyh').AsString;
end;

procedure Tfrm_yzzx_xczx.cxButton6Click(Sender: TObject);
begin
  close;
end;


procedure Tfrm_yzzx_xczx.DBGridEh4ColWidthsChanged(Sender: TObject);
begin
if sp_dryz.Active then
  createrect(myrect_cx,sp_dryz,dbgrideh4,9,10,14);

end;

procedure Tfrm_yzzx_xczx.DBGridEh4DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
    var i:integer;
  myrect1:Trect;
begin

  if trim(sP_dryz.fieldbyname('yzsx').asstring) = '临时' then
  begin
    DBGridEh4.Canvas.Brush.Color := clwhite;
    DBGridEh4.Canvas.Font.Color := clGreen;
  end;

    if trim(sp_dryz.fieldbyname('fzph').asstring)<>'' then
   begin
     DBGridEh4.canvas.brush.color := $00E2BC6D;
     i:= findinarray(myrect_cx,sp_dryz.fieldbyname('fzph').asstring);
     DBGridEh4.Canvas.pen.color:=$00E2BC6D;
     DBGridEh4.Canvas.MoveTo(myrect_cx[i].left+20,myrect_cx[i].top);
     DBGridEh4.Canvas.LineTo(myrect_cx[i].left,myrect_cx[i].Bottom);
     DBGridEh4.canvas.Rectangle(myrect_cx[i].left,myrect_cx[i].top,myrect_cx[i].right,myrect_cx[i].bottom);
     DBGridEh4.Canvas.pen.color:=clred;
     DBGridEh4.Canvas.MoveTo(myrect_cx[i].left+20,myrect_cx[i].top);
     DBGridEh4.Canvas.LineTo(myrect_cx[i].left,myrect_cx[i].Bottom);
     with DBGridEh4.Canvas do
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
     DBGridEh4.Canvas.TextOut(myrect_cx[i].left+20,
     myrect_cx[i].top+round(myrect_cx[i].height*((myrect_cx[i].sl-0.5)/2)),myrect_cx[i].tj+#13+myrect_cx[i].yf);
   end;
    (Sender as TDbGridEh).DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure Tfrm_yzzx_xczx.dt_zxsjChange(Sender: TObject);
begin
e_ls.setfocus;
end;

procedure Tfrm_yzzx_xczx.e_lsKeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
begin
if e_ls.Text<>'' then
 begin
  if length(e_ls.text)=10 then
  begin
   e_zyh.text:=copy(e_ls.Text,2,9);
  end
  else
  begin
  if length(e_ls.text)=16 then
   e_fzh.text:=e_ls.Text;
  end;
   e_ls.Text:='';
 end;
 if (length(e_zyh.text)=9) and (length(e_fzh.Text)=16 )then
 begin
 //核对医嘱 ;
 qry_zyh.Close;
 qry_zyh.SQL.Text:='select zyh from zysf_zydj where tmh='+#39+e_zyh.text+#39;
 qry_zyh.Open;
 if qry_zyh.IsEmpty then
  begin
  application.MessageBox('请核对病人腕带，重新扫描！！','提示',mb_ok+mb_iconinformation);
  e_zyh.Text:='';
  end
 else
  begin
   sp_brxx.Close;
   sp_brxx.Parameters.ParamByName('@sr_bqdm').Value := trim(pub_bqdm);
   sp_brxx.Parameters.ParamByName('@yzzxsj').value:=formatdatetime('yyyymmdd',dT_zxsj.Date);;
   sp_brxx.Parameters.ParamByName('@zyh').Value := qry_zyh.fieldbyname('zyh').asstring;
   sp_brxx.Open;
    sp_dryz.Close;
    sp_dryz.Parameters.ParamByName('@zyh').value:=qry_zyh.fieldbyname('zyh').asstring;
    sp_dryz.Parameters.ParamByName('@zxsj').value:=formatdatetime('yyyymmdd',dT_zxsj.Date);;
    sp_dryz.Parameters.ParamByName('@fzph').value:=e_fzh.Text;
    sp_dryz.Open;
   if sp_dryz.IsEmpty then
   begin
    try
     sndPlaySound('utopiaas.wav',
                  SND_NODEFAULT Or SND_ASYNC Or SND_LOOP);
                  sleep(1000)
   finally
   sndPlaySound(nil, 0);

   end;
     application.MessageBox(pchar('病人腕带和瓶签不配套，请重新输入;'+char(13)+'   或该医嘱已被医生停止，不能执行！！'),'提示',mb_ok+mb_iconinformation);

   end
    else
    if sp_dryz.FieldByName('zxcs').AsInteger>=sp_dryz.FieldByName('yjzxcs').asinteger then
     begin
       messagebeep(2000);
       application.MessageBox(pchar('提示：'+#13+'已经超过当日最大执行次数，不能再执行！！！'),'提示',mb_ok+mb_iconwarning);
     end
    else
     begin
       sp_in_yzqd.close;
       sp_in_yzqd.Parameters.ParamByName('@zyh').Value:=sp_brxx.FieldByName('zyh').asstring ;
       sp_in_yzqd.Parameters.ParamByName('@yzid').Value:=sp_dryz.FieldByName('yzid').AsInteger  ;
       sp_in_yzqd.Parameters.ParamByName('@zxsj').Value:=formatdatetime('yyyymmdd',dt_zxsj.Date) ;
       sp_in_yzqd.Parameters.ParamByName('@yzsj').Value:= formatdatetime('yyyy-mm-dd hh:mm:ss',frm_func.curr_date);
       sp_in_yzqd.Parameters.ParamByName('@czydm').Value:=pub_czydm  ;
       sp_in_yzqd.Parameters.ParamByName('@jyfzbh').Value:='' ;
       sp_in_yzqd.ExecProc;       //处理执行记录
     end;
     displaynull;
  end;

 end
 else
 begin
  if  (length(e_zyh.text)=0) and (length(e_fzh.Text)=0 ) then
   label1.Caption:='请扫描病人腕带或液体瓶签！！'
  else
  if length(e_zyh.text)=0 then
   label1.Caption:='请扫描病人腕带！！'
  else
 if length(e_fzh.Text)=0 then
   label1.Caption:='请扫描液体瓶签！！'
 end;
end;
end;

procedure Tfrm_yzzx_xczx.displaynull;
begin
  e_ls.SetFocus;
  e_ls.Text:='';
  e_zyh.Text:='';
  e_fzh.Text:='';
  label1.Caption:='请扫描病人腕带或液体瓶签！！';
  sp_dryz.close;
  sp_brxx.close;
end;

end.

