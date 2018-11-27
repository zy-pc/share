unit p_bqgl_xxdisplay;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, GridsEh, DBGridEh, ExtCtrls, ADODB, DB, ComCtrls, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, Buttons;
type Tmyrect=record
         ph:string;
         top,left,right,bottom,sl,height:integer;
         yf,tj:string;
         gtop,gleft,gright,gbottom:integer;
         end;
type TTmyrect=array [0..1000] of Tmyrect;

type
  Tfrm_bqgl_xxdisplay = class(TForm)
    Panel1: TPanel;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    Panel2: TPanel;
    DBGridEh3: TDBGridEh;
    Label1: TLabel;
    sxtj: TComboBox;
    qry_rkjc: TADOQuery;
    qry_wzxyzts: TADOStoredProc;
    ds_cx_cydy: TDataSource;
    ds_rkbr: TDataSource;
    ds_ypqd: TDataSource;
    sp_dryz: TADOStoredProc;
    Label2: TLabel;
    dt_zxsj: TDateTimePicker;
    sp_yzsj: TADOStoredProc;
    qry_ypyf: TADOQuery;
    ds_ypyf: TDataSource;
    sp_ypyf: TADOStoredProc;
    zxsx: TCheckBox;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    ds_fsd: TDataSource;
    sp_sd: TADOStoredProc;
    cxGrid1DBTableView1bch: TcxGridDBColumn;
    cxGrid1DBTableView1brxm: TcxGridDBColumn;
    cxGrid1DBTableView1zyh: TcxGridDBColumn;
    cxGrid1DBTableView1sd: TcxGridDBColumn;
    qb: TCheckBox;
    ScrollBox1: TScrollBox;
    DBGridEh2: TDBGridEh;
    Timer1: TTimer;
    Timer2: TTimer;
    SpeedButton1: TSpeedButton;
    Panel3: TPanel;
    sp_information: TADOStoredProc;
    Label3: TLabel;
    Timer3: TTimer;
    GroupBox1: TGroupBox;
    DBGridEh1: TDBGridEh;
    qry_dtwzxyzbr: TADOStoredProc;
    ds_dtwzxyzbr: TDataSource;
    qry_cx_cydy: TADOQuery;
    procedure FormShow(Sender: TObject);
    procedure sxtjChange(Sender: TObject);
    procedure zxsxClick(Sender: TObject);
    procedure cxGrid1DBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure qbClick(Sender: TObject);
    procedure DBGridEh2ColWidthsChanged(Sender: TObject);
    procedure DBGridEh2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure sp_dryzAfterOpen(DataSet: TDataSet);
    procedure Timer1Timer(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure Timer3Timer(Sender: TObject);
    procedure sp_informationAfterOpen(DataSet: TDataSet);
    procedure dt_zxsjChange(Sender: TObject);
    procedure DBGridEh3DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
    rectno:integer;
   procedure createrect(var myrect1:TTmyrect;dataset_rect:Tcustomadodataset;grid_yzlr1:Tdbgrideh;x1,x2,x3:integer);
  end;

var
  frm_bqgl_xxdisplay: Tfrm_bqgl_xxdisplay;
  myrect:TTmyrect;
  myrect_cx,myrect_zx_cq,myrect_zx_ls:TTmyrect;
  x:integer;
 function findinarray(myrect:TTmyrect;zd:string):integer;
 procedure initarray(myrect:TTmyrect);


implementation
  uses p_dm,p_func;
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

procedure Tfrm_bqgl_xxdisplay.zxsxClick(Sender: TObject);
begin
if zxsx.Checked then
begin
 sp_dryz.Filtered := false;
  if sp_dryz.Active then
  createrect(myrect_cx,sp_dryz,dbgrideh2,9,10,13);
end;

end;

procedure Tfrm_bqgl_xxdisplay.cxGrid1DBTableView1CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if not qb.checked then
  begin
  sp_dryz.close;
  sp_dryz.Parameters.ParamByName('@bqdm').value:=pub_bqdm;
  sp_dryz.Parameters.ParamByName('@zyh').value:=sp_sd.FieldByName('zyh').asstring;
  sp_dryz.Parameters.ParamByName('@bz').value:=sp_sd.FieldByName('sd').asstring;
  sp_dryz.Parameters.ParamByName('@zxsj').value:=formatdatetime('yyyymmdd',dT_zxsj.Date);
  sp_dryz.Open;
  end;
end;
procedure Tfrm_bqgl_xxdisplay.createrect(var myrect1:TTmyrect;dataset_rect:Tcustomadodataset;grid_yzlr1:Tdbgrideh;x1,x2,x3:integer);
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

procedure Tfrm_bqgl_xxdisplay.DBGridEh2ColWidthsChanged(Sender: TObject);
begin
if sp_dryz.Active then
  createrect(myrect_cx,sp_dryz,dbgrideh2,9,10,13);

end;

procedure Tfrm_bqgl_xxdisplay.DBGridEh2DrawColumnCell(Sender: TObject;
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

procedure Tfrm_bqgl_xxdisplay.DBGridEh3DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if (qry_cx_cydy.fieldbyname('tybz').AsString='已退药') then
  begin
    DBGridEh3.Canvas.Brush.Color := clred;
    DBGridEh3.Canvas.Font.color := clBlack;
  end;
  DBGridEh3.DefaultDrawColumnCell(rect, datacol, column, state);
end;

procedure Tfrm_bqgl_xxdisplay.dt_zxsjChange(Sender: TObject);
begin
  qry_cx_cydy.close;
  qry_cx_cydy.SQL.text:='select distinct a.zyh,a.tmh,rtrim(a.brxm) brxm,a.bch,case b.fybz when 1 then ''已发药'''+
                   ' else ''未发药'' end fybz'+',case b.tybz when 1 then ''已退药'' else ''未退药'' end tybz '+
                   ' from zysf_zydj a,zyxyf_zycfzb b'+
                   ' where a.zyh=b.zyh and '+
                   'a.bqdm='+''''+pub_bqdm+''''+' and charindex(''带'',b.tssm)>0'+
                   ' and convert(varchar,hjrq,112)='+''''+formatdatetime('yyyyMMdd',dt_zxsj.DateTime)+'''';
  qry_cx_cydy.open;
end;

procedure Tfrm_bqgl_xxdisplay.FormResize(Sender: TObject);
begin
x:=self.Width;
label3.Left:=x;
end;

procedure Tfrm_bqgl_xxdisplay.FormShow(Sender: TObject);
var s:string;
begin
{  qry_ypyf.Open;
  while not qry_ypyf.Eof do
  begin
  sxtj.Items.Add(trim(qry_ypyf.FieldByName('mc').AsString));
  qry_ypyf.Next;
  end;}
//  cxgrid1dbtableview1.DataController.Groups.FullExpand;
  dt_zxsj.DateTime:=frm_func.curr_date;
  dbgrideh2.Left:=1;
  dbgrideh2.Top:=1;
  qry_cx_cydy.Close;
  qry_cx_cydy.SQL.text:='select distinct a.zyh,a.tmh,rtrim(a.brxm) brxm,a.bch,case b.fybz when 1 then ''已发药'''+
                   ' else ''未发药'' end fybz'+',case b.tybz when 1 then ''已退药'' else ''未退药'' end tybz '+
                   ' from zysf_zydj a,zyxyf_zycfzb b'+
                   ' where a.zyh=b.zyh and '+
                   'a.bqdm='+''''+pub_bqdm+''''+' and charindex(''带'',b.tssm)>0'+
                   ' and convert(varchar,hjrq,112)='+''''+formatdatetime('yyyyMMdd',dt_zxsj.DateTime)+'''';
  qry_cx_cydy.open;

    qry_dtwzxyzbr.Close;
  qry_dtwzxyzbr.Parameters.Refresh;
  qry_dtwzxyzbr.Parameters.ParamByName('@sr_bqdm').Value:=pub_bqdm;
  qry_dtwzxyzbr.Parameters.ParamByName('@zyh').Value:='';
  qry_dtwzxyzbr.Open;

  qry_rkjc.Close;
  qry_rkjc.SQL.Text := 'select a.tmh,a.zyh,a.brxm' +
    ' from zysf_zydj a,sys_bqdm b ' +
    ' where a.bqdm=b.bqdm and ' +
    ' a.zyh not in (select zyh from sys_kscwsz union all select zyh from zysf_zyzkzc) and ' +
    ' a.bch = ' + #39 + #39 + ' and convert(char,a.ryrq,112) = ' +
    #39 + formatdatetime('yyyymmdd', frm_func.curr_date) + #39 +
    ' and a.bqdm=' + #39 + pub_bqdm + #39 +
    ' union all ' +
    ' select a.tmh,a.zyh,a.brxm ' +
    ' from zysf_zydj a,sys_bqdm b,zysf_zyzkzc c' +
    ' where a.bqdm=b.bqdm and ' +
    ' a.zyh not in (select zyh from sys_kscwsz ) and ' +
    ' a.zyh = c.zyh and ' +
    ' a.bch = ' + #39 + #39 + ' and convert(char,c.czrq,112) = ' + #39 + formatdatetime('yyyymmdd', frm_func.curr_date) + #39 +
    ' and a.bqdm=' + #39 + pub_bqdm + #39 +
    ' group by  a.tmh,a.zyh,a.brxm ';
  qry_rkjc.Open;
  sp_yzsj.Close;
  sp_yzsj.Parameters.ParamByName('@scyzsj').Value :=dt_zxsj.DateTime;
  sp_yzsj.ExecProc;
  dt_zxsj.DateTime:= sp_yzsj.Parameters.ParamByName('@scyzsj').Value;
  sp_sd.close;
  sp_sd.Parameters.ParamByName('@bqdm').value:=pub_bqdm;
  sp_sd.Parameters.ParamByName('@zxsj').value:=formatdatetime('yyyymmdd',dT_zxsj.Date);
  sp_sd.Open;
  cxgrid1dbtableview1.DataController.Groups.FullExpand;
  sp_dryz.close;
  sp_dryz.Parameters.ParamByName('@bqdm').value:=pub_bqdm;
  sp_dryz.Parameters.ParamByName('@zyh').value:='';
  sp_dryz.Parameters.ParamByName('@bz').value:='全部';
  sp_dryz.Parameters.ParamByName('@zxsj').value:=formatdatetime('yyyymmdd',dT_zxsj.Date);
  sp_dryz.Open;
  dbgrideh2.Columns[0].Visible:=true;
  dbgrideh2.Columns[1].Visible:=true;

  sp_ypyf.close;
  sp_ypyf.Parameters.ParamByName('@bqdm').value:=pub_bqdm;
  sp_ypyf.Parameters.ParamByName('@zxsj').value:=formatdatetime('yyyymmdd',dT_zxsj.Date);
  sp_ypyf.Open;
  sxtj.items.clear;
   while not sp_ypyf.eof do
   begin
    sxtj.Items.add(sp_ypyf.FieldByName('ypyf').asstring);
    sp_ypyf.Next;
   end;
   timer1.enabled:=true;
   timer2.enabled:=true;
  sp_information.close;
  sp_information.Parameters.ParamByName('@bqdm').value:=pub_bqdm;
  sp_information.Parameters.ParamByName('@zxsj').value:=formatdatetime('yyyymmdd',dT_zxsj.Date);
  sp_information.Parameters.ParamByName('@zyh').value:='';
  sp_information.Open;
end;

procedure Tfrm_bqgl_xxdisplay.qbClick(Sender: TObject);
begin
if qb.Checked then
begin
  dbgrideh2.Columns[0].Visible:=true;
  dbgrideh2.Columns[1].Visible:=true;
  sp_dryz.close;
  sp_dryz.Parameters.ParamByName('@bqdm').value:=pub_bqdm;
  sp_dryz.Parameters.ParamByName('@zyh').value:='';
  sp_dryz.Parameters.ParamByName('@bz').value:='全部';
  sp_dryz.Parameters.ParamByName('@zxsj').value:=formatdatetime('yyyymmdd',dT_zxsj.Date);
  sp_dryz.Open;
end
else
begin
  dbgrideh2.Columns[0].Visible:=true;
  dbgrideh2.Columns[1].Visible:=true;
  sp_dryz.close;
  sp_dryz.Parameters.ParamByName('@bqdm').value:=pub_bqdm;
  sp_dryz.Parameters.ParamByName('@zyh').value:=sp_sd.FieldByName('zyh').asstring;
  sp_dryz.Parameters.ParamByName('@bz').value:=sp_sd.FieldByName('sd').asstring;
  sp_dryz.Parameters.ParamByName('@zxsj').value:=formatdatetime('yyyymmdd',dT_zxsj.Date);
  sp_dryz.Open;
end;
end;

procedure Tfrm_bqgl_xxdisplay.SpeedButton1Click(Sender: TObject);
begin
frm_bqgl_xxdisplay.OnShow(sender);
end;

procedure Tfrm_bqgl_xxdisplay.sp_dryzAfterOpen(DataSet: TDataSet);
begin
if sp_dryz.RecordCount*30>screen.Height-70 then
  dbgrideh2.Height:=sp_dryz.RecordCount*30
  else
  dbgrideh2.Height:=screen.Height-70;
//  createrect(myrect_cx,sp_dryz,dbgrideh2,9,10,13);
end;

procedure Tfrm_bqgl_xxdisplay.sp_informationAfterOpen(DataSet: TDataSet);
var s:string;
begin
  label3.Caption:='';
  s:='';
  while not sp_information.eof do
  begin
    s:=s+';'+sp_information.fieldbyname('bch').asstring+'-'+ sp_information.fieldbyname('brxm').asstring ;
    sp_information.next;
  end;
  label3.Caption:=s;
  label3.Left:=panel3.Width;

end;

procedure Tfrm_bqgl_xxdisplay.sxtjChange(Sender: TObject);
begin
if not zxsx.Checked then
 begin
  sp_dryz.Filtered := false;
  sp_dryz.Filter := 'ypyf='+#39+sxtj.text+#39;
  sp_dryz.Filtered := true;
  if sp_dryz.Active then
  createrect(myrect_cx,sp_dryz,dbgrideh2,9,10,13);

 end;
end;

procedure Tfrm_bqgl_xxdisplay.Timer1Timer(Sender: TObject);
begin
if qry_rkjc.eof then
qry_rkjc.First;
if not qry_rkjc.IsEmpty then
begin
panel1.Caption:=qry_rkjc.fieldbyname('brxm').asstring+'未安置';
qry_rkjc.Next
end;
end;

procedure Tfrm_bqgl_xxdisplay.Timer2Timer(Sender: TObject);
var s:string;
begin
  sp_sd.close;
  sp_sd.Parameters.ParamByName('@bqdm').value:=pub_bqdm;
  sp_sd.Parameters.ParamByName('@zxsj').value:=formatdatetime('yyyymmdd',dT_zxsj.Date);
  sp_sd.Open;
  cxgrid1dbtableview1.DataController.Groups.FullExpand;
  sp_dryz.close;
  sp_dryz.Parameters.ParamByName('@bqdm').value:=pub_bqdm;
  sp_dryz.Parameters.ParamByName('@zyh').value:='';
  sp_dryz.Parameters.ParamByName('@bz').value:='全部';
  sp_dryz.Parameters.ParamByName('@zxsj').value:=formatdatetime('yyyymmdd',dT_zxsj.Date);
  sp_dryz.Open;


end;

procedure Tfrm_bqgl_xxdisplay.Timer3Timer(Sender: TObject);
begin
label3.left:=label3.left-130;
if label3.Left+label3.Width<=0 then
begin
  sp_information.close;
  sp_information.Parameters.ParamByName('@bqdm').value:=pub_bqdm;
  sp_information.Parameters.ParamByName('@zxsj').value:=formatdatetime('yyyymmdd',dT_zxsj.Date);
  sp_information.Parameters.ParamByName('@zyh').value:='';
  sp_information.Open;
end;

end;

end.
