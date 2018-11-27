unit p_fjylb;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, StdCtrls, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxControls, cxGridCustomView,
  cxGrid, ExtCtrls, cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, ADODB, Mask, DBCtrls,
  Buttons, cxMemo, Grids, DBGridEh, GridsEh, cxLabel, ComCtrls, Menus,
  cxLookAndFeelPainters, cxButtons, cxCheckBox, DBGrids, QRCtrls, QuickRpt;
type Tmyrect=record
         ph:string;
         top,left,right,bottom,sl,height:integer;
         yf,tj:string;
         gtop,gleft,gright,gbottom:integer;
         end;
type TTmyrect=array [0..1000] of Tmyrect;

type
  Tfrm_fjylb = class(TForm)
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
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    groupbox8: TPanel;
    DBGridEh1: TDBGridEh;
    groupbox2: TPanel;
    Panel6: TPanel;
    cxButton6: TcxButton;
    cxButton3: TcxButton;
    Panel1: TPanel;
    Label5: TLabel;
    Label1: TLabel;
    ProgressBar1: TProgressBar;
    cxLabel1: TcxLabel;
    sp_dryz: TADOStoredProc;
    ds_dryz: TDataSource;
    Panel3: TPanel;
    dt_zxsj: TDateTimePicker;
    Label2: TLabel;
    sp_yzsj: TADOStoredProc;
    Edit1: TEdit;
    ad_yzzx: TADOCommand;
    DBGridEh2: TDBGridEh;
    CheckBox1: TCheckBox;
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure cxButton6Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure sp_brxxAfterScroll(DataSet: TDataSet);
    procedure DBGridEh1CellClick(Column: TColumnEh);
    procedure sp_brxxAfterOpen(DataSet: TDataSet);
    procedure dt_zxsjChange(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
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

        { Public declarations }
  end;

var
  frm_fjylb: Tfrm_fjylb;
  yzlb: string; //医嘱类别
  jryzxph: string; //今日已执行医属批号
  isch: boolean;
  _zxbh: string; //执行编号(确定当前执行医嘱的编号)
  myrect:TTmyrect;
  myrect_cx,myrect_zx_cq,myrect_zx_ls:TTmyrect;
  yzsj:Tdatetime;
  fqyz:boolean;
 function findinarray(myrect:TTmyrect;zd:string):integer;
 procedure initarray(myrect:TTmyrect);


implementation

{$R *.dfm}
uses p_func, p_dm, p_syfz, p_yzzxd,
  p_yjddy, p_zyplcffy, P_main, p_bylsyz, p_yzfyqd, p_yzsj, p_print_syfz;
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

procedure Tfrm_fjylb.CheckBox1Click(Sender: TObject);
begin
if not checkbox1.Checked then
begin
sp_dryz.close;
sp_dryz.Parameters.ParamByName('@zyh').value:=sp_brxx.FieldByName('zyh').asstring;;
sp_dryz.Parameters.ParamByName('@zxsj').value:=formatdatetime('yyyymmdd',dT_zxsj.Date);
sp_dryz.Parameters.ParamByName('@bqdm').value:=pub_bqdm;
sp_dryz.Open;
end
else
begin
sp_dryz.close;
sp_dryz.Parameters.ParamByName('@zyh').value:='';
sp_dryz.Parameters.ParamByName('@zxsj').value:=formatdatetime('yyyymmdd',dT_zxsj.Date);
sp_dryz.Parameters.ParamByName('@bqdm').value:=pub_bqdm;
sp_dryz.Open;
end
end;

procedure Tfrm_fjylb.createrect(var myrect1:TTmyrect;dataset_rect:Tcustomadodataset;grid_yzlr1:Tdbgrideh;x1,x2,x3:integer);
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
        myrect1[rectno].bottom:=grid_yzlr1.CellRect(x1,i).bottom;;
        myrect1[rectno].Gbottom:=grid_yzlr1.CellRect(x1,i).bottom;
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




procedure Tfrm_fjylb.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    selectnext(activecontrol, true, true);
end;

procedure Tfrm_fjylb.FormShow(Sender: TObject);
begin
    //病区全部病员
  dt_zxsj.DateTime:=frm_func.curr_date;    
  PageControl1.ActivePage := Tabsheet1;
  isch := false;
  sp_yzsj.Close;
  sp_yzsj.Parameters.ParamByName('@scyzsj').Value :=dt_zxsj.DateTime;
  sp_yzsj.ExecProc;
  dt_zxsj.DateTime:= sp_yzsj.Parameters.ParamByName('@scyzsj').Value;

  sp_brxx.Close;
  sp_brxx.Parameters.ParamByName('@sr_bqdm').Value := trim(pub_bqdm);
  sp_brxx.Parameters.ParamByName('@yzzxsj').Value := formatdatetime('yyyymmdd',dT_zxsj.Date);
  sp_brxx.Parameters.ParamByName('@zyh').Value := '';
  sp_brxx.Open;
  cx_zyh := zyh;
  isch := true;
  _zxbh := pub_czydm + formatdatetime('ss', now);
   sp_dryz.close;
   sp_dryz.Parameters.ParamByName('@zyh').value:='';
   sp_dryz.Parameters.ParamByName('@zxsj').value:=formatdatetime('yyyymmdd',dT_zxsj.Date);
   sp_dryz.Parameters.ParamByName('@bqdm').value:=pub_bqdm;
   sp_dryz.Open;
end;


procedure Tfrm_fjylb.sp_brxxAfterOpen(DataSet: TDataSet);
begin
sp_brxx.First;
sp_dryz.close;
sp_dryz.Parameters.ParamByName('@zyh').value:=sp_brxx.FieldByName('zyh').asstring;
sp_dryz.Parameters.ParamByName('@zxsj').value:=formatdatetime('yyyymmdd',dT_zxsj.Date);
sp_dryz.Open;

end;

procedure Tfrm_fjylb.sp_brxxAfterScroll(DataSet: TDataSet);
begin
  if sp_brxx.RecordCount > 0 then
    cx_zyh := sp_brxx.FieldByName('zyh').AsString;
end;

procedure Tfrm_fjylb.cxButton3Click(Sender: TObject);
begin
  application.CreateForm(Tfrm_bylsyz, frm_bylsyz);
  try
   frm_bylsyz.sp_yzmx.close;
   frm_bylsyz.sp_yzmx.parameters.parambyname('@zyh').value:=sp_brxx.FieldByName('zyh').AsString;
   frm_bylsyz.sp_yzmx.open;
   frm_bylsyz.qrlabel12.Caption := sp_brxx.FieldByName('brxm').AsString;
   frm_bylsyz.QRL_bch.Caption := sp_brxx.FieldByName('bch').AsString;;
   frm_bylsyz.QRL_tmh.Caption := sp_brxx.FieldByName('tmh').AsString;
   frm_bylsyz.QRL_dysj.Caption := '打印时间:' + FormatDatetime('yyyy年mm月dd日 HH时MM分SS秒', frm_func.curr_date);
   frm_bylsyz.rep_dryphz.Prepare;
   frm_bylsyz.QRL_ym.Caption := '共' + IntToStr( frm_bylsyz.rep_dryphz.Printer.PageCount) + '页';
   frm_bylsyz.rep_dryphz.Preview;
   finally
    frm_bylsyz.Free;
  end;
end;

procedure Tfrm_fjylb.cxButton6Click(Sender: TObject);
begin
  close;
end;


procedure Tfrm_fjylb.DBGridEh1CellClick(Column: TColumnEh);
begin
if not checkbox1.Checked then
begin
sp_dryz.close;
sp_dryz.Parameters.ParamByName('@zyh').value:=sp_brxx.FieldByName('zyh').asstring;
sp_dryz.Parameters.ParamByName('@zxsj').value:=formatdatetime('yyyymmdd',dT_zxsj.Date);
sp_dryz.Parameters.ParamByName('@bqdm').value:=pub_bqdm;
sp_dryz.Open;
end;
end;

procedure Tfrm_fjylb.dt_zxsjChange(Sender: TObject);
begin
sp_brxx.Close;
sp_brxx.Parameters.ParamByName('@sr_bqdm').Value := trim(pub_bqdm);
sp_brxx.Parameters.ParamByName('@yzzxsj').Value := formatdatetime('yyyymmdd',dT_zxsj.Date);
sp_brxx.Parameters.ParamByName('@zyh').Value := '';
sp_brxx.Open;
if not checkbox1.Checked then
begin
sp_dryz.close;
sp_dryz.Parameters.ParamByName('@zyh').value:=sp_brxx.FieldByName('zyh').asstring;
sp_dryz.Parameters.ParamByName('@zxsj').value:=formatdatetime('yyyymmdd',dT_zxsj.Date);
sp_dryz.Parameters.ParamByName('@bqdm').value:=pub_bqdm;
sp_dryz.Open;
end
else
begin
sp_dryz.close;
sp_dryz.Parameters.ParamByName('@zyh').value:='';
sp_dryz.Parameters.ParamByName('@zxsj').value:=formatdatetime('yyyymmdd',dT_zxsj.Date);
sp_dryz.Parameters.ParamByName('@bqdm').value:=pub_bqdm;
sp_dryz.Open;
end
end;

end.

