unit p_bqgl_zxypyz_tyjf;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, StdCtrls, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxControls, cxGridCustomView,
  cxGrid, ExtCtrls, cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, ADODB, Mask, DBCtrls,
  Buttons, cxMemo, Grids, DBGridEh, GridsEh, cxLabel, ComCtrls, Menus,
  cxLookAndFeelPainters, cxButtons, cxCheckBox, DBGrids, QRCtrls, QuickRpt,printers;
type Tmyrect=record
         ph:string;
         top,left,right,bottom,sl,height:integer;
         yf,tj:string;
         gtop,gleft,gright,gbottom:integer;
         end;
type TTmyrect=array [0..100] of Tmyrect;

type
  Tfrm_zxypyz_tyjf = class(TForm)
    qry_pub: TADOQuery;
    ds_jbxx: TDataSource;
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
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    ds_brxx: TDataSource;
    sp_ysdm: TADOStoredProc;
    ds_yf: TDataSource;
    ad_plcl: TADODataSet;
    sp_brxx: TADOStoredProc;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    groupbox8: TPanel;
    DBGridEh1: TDBGridEh;
    groupbox2: TPanel;
    Panel6: TPanel;
    cxButton6: TcxButton;
    bt_jf: TcxButton;
    TabSheet2: TTabSheet;
    ds_fymx: TDataSource;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1sfrq: TcxGridDBColumn;
    cxGrid1DBTableView1fymc: TcxGridDBColumn;
    cxGrid1DBTableView1fyje: TcxGridDBColumn;
    cxGrid1DBTableView1zfje: TcxGridDBColumn;
    cxGrid1DBTableView1mc: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    cxButton5: TcxButton;
    qry_fymx: TADOQuery;
    Panel1: TPanel;
    Label5: TLabel;
    Label1: TLabel;
    ProgressBar1: TProgressBar;
    cxLabel1: TcxLabel;
    Panel2: TPanel;
    cxButton4: TcxButton;
    cxGrid1DBTableView1czks: TcxGridDBColumn;
    cxGrid1DBTableView1dw: TcxGridDBColumn;
    cxGrid1DBTableView1tfbz: TcxGridDBColumn;
    QuickRep1: TQuickRep;
    QRBand4: TQRBand;
    sp_jbxx: TADOStoredProc;
    DetailBand1: TQRBand;
    qry_yjddy: TADOQuery;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText4: TQRDBText;
    ColumnHeaderBand1: TQRBand;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel23: TQRLabel;
    PageHeaderBand1: TQRBand;
    QRLabel22: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel24: TQRLabel;
    QRDBText14: TQRDBText;
    QRLabel13: TQRLabel;
    QRDBText12: TQRDBText;
    QRLabel1: TQRLabel;
    QRDBText13: TQRDBText;
    QRLabel14: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel16: TQRLabel;
    qrl_bqmc: TQRLabel;
    rtl_czks: TQRLabel;
    rtl_sfrq: TQRLabel;
    QRLabel2: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel3: TQRLabel;
    QRDBText6: TQRDBText;
    cxGrid1DBTableView1yjqrbz: TcxGridDBColumn;
    sp_dryz: TADOStoredProc;
    ds_dryz: TDataSource;
    ScrollBox1: TScrollBox;
    DBGridEh4: TDBGridEh;
    SpeedButton1: TSpeedButton;
    Panel3: TPanel;
    Label2: TLabel;
    dt_zxsj: TDateTimePicker;
    Edit1: TEdit;
    sp_yzsj: TADOStoredProc;
    Label3: TLabel;
    Edit2: TEdit;
    cxButton2: TcxButton;
    Edit3: TEdit;
    cxButton7: TcxButton;
    DBEdit1: TDBEdit;
    Label4: TLabel;
    Button1: TButton;
    sp_jypljf: TADOStoredProc;
    Label6: TLabel;
    Panel4: TPanel;
    ProgressBar2: TProgressBar;
    procedure ds_brxxDataChange(Sender: TObject; Field: TField);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure cxButton6Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure bt_jfClick(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure cxGridDBTableView2CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure DBGridEh1KeyPress(Sender: TObject; var Key: Char);
    procedure cxButton5Click(Sender: TObject);
    procedure TabSheet2Show(Sender: TObject);
    procedure cxGrid1DBTableView1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure sp_brxxAfterScroll(DataSet: TDataSet);
    procedure DBGridEh4ColWidthsChanged(Sender: TObject);
    procedure DBGridEh4DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure DBGridEh1CellClick(Column: TColumnEh);
    procedure sp_dryzAfterOpen(DataSet: TDataSet);
    procedure sp_brxxAfterOpen(DataSet: TDataSet);
    procedure SpeedButton1Click(Sender: TObject);
    procedure dt_zxsjChange(Sender: TObject);
    procedure Edit2Enter(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton7Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
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
  frm_zxypyz_tyjf: Tfrm_zxypyz_tyjf;
  yzlb: string; //医嘱类别
  jryzxph: string; //今日已执行医属批号
  isch: boolean;
  _zxbh: string; //执行编号(确定当前执行医嘱的编号)
  myrect:TTmyrect;
  myrect_cx,myrect_zx_cq,myrect_zx_ls:TTmyrect;
 function findinarray(myrect:TTmyrect;zd:string):integer;
 procedure initarray(myrect:TTmyrect);


implementation

{$R *.dfm}
uses p_func, p_dm,  p_syfz, p_yjddy, P_main, p_bylsyz, p_yzfyqd_tyjf,p_dylsyzyp,p_zyyzcljf,p_bqgl_fycl,
  p_zyplcffy,p_jypljf;

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

procedure Tfrm_zxypyz_tyjf.Button1Click(Sender: TObject);
begin
DM_data.qry_pub.close;
DM_data.qry_pub.SQL.text:='delete from zybl_zyyz_brjfd_ls_jypljf where czydm='+''''+pub_czydm+'''';
DM_data.qry_pub.ExecSQL;
Panel4.Visible:=True;
ProgressBar2.Position:=0;
ProgressBar2.Max:= sp_brxx.RecordCount;
sp_brxx.DisableControls;
sp_brxx.First;
while not sp_brxx.eof do
begin
  DM_data.qry_pub.close;
  DM_data.qry_pub.SQL.text:='select * from zysf_zydj where zyh='+''''+sp_brxx.FieldByName('zyh').AsString+
                          ''' and cybz=0 and jsbz=0';
  DM_data.qry_pub.Open;
  if not DM_data.qry_pub.IsEmpty then
  begin
    sp_jypljf.Close;
    sp_jypljf.Parameters.Refresh;
    sp_jypljf.Parameters.ParamByName('@zyh').Value:=sp_brxx.FieldByName('zyh').AsString;
    sp_jypljf.Parameters.ParamByName('@czydm').Value:=pub_czydm;
    sp_jypljf.Parameters.ParamByName('@zxsj').Value:=formatdatetime( 'yyyymmdd',dT_zxsj.Date );
    sp_jypljf.Parameters.ParamByName('@ksdm').Value:=pub_ksdm;
    sp_jypljf.ExecProc;
  end;
  ProgressBar2.Position:=ProgressBar2.Position+1;
  sp_brxx.Next;
end;
sp_brxx.First;
sp_brxx.EnableControls;
Panel4.Visible:=False;

  application.CreateForm(Tfrm_jypljf, frm_jypljf);
  try
    frm_jypljf.ShowModal;
  finally
    frm_jypljf.free;
  end;

end;

procedure Tfrm_zxypyz_tyjf.createrect(var myrect1:TTmyrect;dataset_rect:Tcustomadodataset;grid_yzlr1:Tdbgrideh;x1,x2,x3:integer);
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



procedure Tfrm_zxypyz_tyjf.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
    //关闭时删除执行状态
  qry_pub.Close;
  qry_pub.SQL.Text := 'delete from zybl_zyyz_zxzt where zxbh = ' + #39 + _zxbh + #39;
  qry_pub.ExecSQL;
end;

procedure Tfrm_zxypyz_tyjf.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    selectnext(activecontrol, true, true);
end;

procedure Tfrm_zxypyz_tyjf.FormShow(Sender: TObject);
begin

  
    //病区全部病员
  QuickRep1.Visible := false;
  PageControl1.ActivePage := Tabsheet1;
  isch := false;
  sp_yzsj.Close;
  sp_yzsj.Parameters.ParamByName('@scyzsj').Value :=dt_zxsj.DateTime;
  sp_yzsj.ExecProc;
  dt_zxsj.DateTime:= Now();
  sp_brxx.Close;
  sp_brxx.Parameters.Refresh;
  sp_brxx.Parameters.ParamByName('@sr_bqdm').Value := trim(pub_ksdm);
  sp_brxx.Parameters.ParamByName('@zxsj').Value := formatdatetime('yyyymmdd',dT_zxsj.Date);
  sp_brxx.Parameters.ParamByName('@zyh').Value := '';
  sp_brxx.Open;
  cx_zyh := zyh;
  isch := true;
  _zxbh := pub_czydm + formatdatetime('ss', now);
  dbgrideh4.Left:=1;
  dbgrideh4.Top:=1;
  Edit2.text:= '输入病床号，拼音码或者病人姓名';
  sp_brxx.Locate('zyh',zyh,[]);
//  DBGrideh1.DataSource.DataSet.GotoBookmark(pointer(DBGrideh1.SelectedRows.Items[0]));
  if sp_brxx.RecordCount > 0 then
  begin
    cx_zyh := sp_brxx.FieldByName('zyh').AsString;
    DM_data.qry_pub.Close;
    DM_data.qry_pub.SQL.text:='select * from sys_czy where dm='+''''+trim(sp_brxx.FieldByName('zgys').asstring)+'''';
    DM_data.qry_pub.Open;
    sp_dryz.close;
    sp_dryz.Parameters.ParamByName('@zyh').value:=cx_zyh;
    sp_dryz.Parameters.ParamByName('@zxsj').value:=formatdatetime('yyyymmdd',dT_zxsj.Date);
    sp_dryz.Parameters.ParamByName('@ksdm').value:=pub_ksdm;
    sp_dryz.Open;
    sp_dryz.First;
  end;
  if pub_yydm='0013' then
  begin
   Button1.Visible:=True;
  end
  else
  begin
   Button1.Visible:=false;
  end;

end;



procedure Tfrm_zxypyz_tyjf.SpeedButton1Click(Sender: TObject);
begin
self.FormShow(sender);
end;

procedure Tfrm_zxypyz_tyjf.sp_brxxAfterOpen(DataSet: TDataSet);
begin
sp_brxx.First;
sp_dryz.close;
sp_dryz.Parameters.ParamByName('@zyh').value:=sp_brxx.FieldByName('zyh').asstring;
sp_dryz.Parameters.ParamByName('@zxsj').value:=formatdatetime('yyyymmdd',dT_zxsj.Date);
sp_dryz.Parameters.ParamByName('@ksdm').value:=pub_ksdm;
sp_dryz.Open;
end;

procedure Tfrm_zxypyz_tyjf.sp_brxxAfterScroll(DataSet: TDataSet);
begin
//  if sp_brxx.RecordCount > 0 then
//  begin
//    cx_zyh := sp_brxx.FieldByName('zyh').AsString;
//    DM_data.qry_pub.Close;
//    DM_data.qry_pub.SQL.text:='select * from sys_czy where dm='+''''+trim(sp_brxx.FieldByName('zgys').asstring)+'''';
//    DM_data.qry_pub.Open;
//    if DM_data.qry_pub.RecordCount>0 then
//    Edit3.text:= Trim(DM_data.qry_pub.FieldByName('mc').AsString);
//    sp_dryz.close;
//    sp_dryz.Parameters.ParamByName('@zyh').value:=sp_brxx.FieldByName('zyh').asstring;
//    sp_dryz.Parameters.ParamByName('@zxsj').value:=formatdatetime('yyyymmdd',dT_zxsj.Date);
//    sp_dryz.Parameters.ParamByName('@ksdm').value:=pub_ksdm;
//    sp_dryz.Open;
//    sp_dryz.First;
//  end;
DBGridEh1CellClick(nil);

end;

procedure Tfrm_zxypyz_tyjf.sp_dryzAfterOpen(DataSet: TDataSet);
begin
if sp_dryz.RecordCount*30>screen.Height-70 then
  dbgrideh4.Height:=sp_dryz.RecordCount*30
  else
  dbgrideh4.Height:=screen.Height-70;
  createrect(myrect_cx,sp_dryz,dbgrideh4,11,12,17);
end;

procedure Tfrm_zxypyz_tyjf.TabSheet2Show(Sender: TObject);
begin
  qry_fymx.Close;
  qry_fymx.Parameters.ParamByName('zyh').Value := cx_zyh;
  qry_fymx.Open;
end;



procedure Tfrm_zxypyz_tyjf.cxButton1Click(Sender: TObject);
begin
    try
    application.CreateForm(Tfrm_dylsyzyp, frm_dylsyzyp);
    DM_data.qry_pub.Close;
    DM_data.qry_pub.SQL.text:='select zxph,max(zhzxsj) zxsj  from zybl_zyyz_yzzxqd where zyh='+''''+zyh+''''+' and zxsj='+''''+formatdatetime('yyyyMMdd',dt_zxsj.DateTime)+''''+' group by zxph';
    DM_data.qry_pub.Open;
    frm_dylsyzyp.ShowModal;
    finally
    frm_dylsyzyp.Free;
    end;
end;

procedure Tfrm_zxypyz_tyjf.cxButton2Click(Sender: TObject);
begin
  DM_data.qry_pub.Close;
  DM_data.qry_pub.sql.text:='select * from SYS_BQKFGLFS where bqkfdm='+''''+pub_ksdm+'''';
  DM_data.qry_pub.Open;
  if (DM_data.qry_pub.IsEmpty) then
  begin
    Application.MessageBox('该病区未启用病区库房，材料医嘱将无法计费！','提示',48);
    Exit;
  end;
  try
    application.createform(Tfrm_zyyzcljf, frm_zyyzcljf);
    frm_zyyzcljf.tmh.text := DBEdit19.text;
    p_zyyzcljf.yzsj:= FormatDateTime('yyyyMMdd',dt_zxsj.DateTime);
    frm_zyyzcljf.showmodal;
  finally
    frm_zyyzcljf.free;
  end;
end;

procedure Tfrm_zxypyz_tyjf.cxButton3Click(Sender: TObject);
begin
//  application.CreateForm(Tfrm_bylsyz, frm_bylsyz);
//  try
//   frm_bylsyz.sp_yzmx.close;
//   frm_bylsyz.sp_yzmx.parameters.parambyname('@zyh').value:=sp_brxx.FieldByName('zyh').AsString;
//   frm_bylsyz.sp_yzmx.open;
//   frm_bylsyz.qrlabel12.Caption := sp_brxx.FieldByName('brxm').AsString;
//   frm_bylsyz.QRL_bch.Caption := sp_brxx.FieldByName('bch').AsString;;
//   frm_bylsyz.QRL_tmh.Caption := sp_brxx.FieldByName('tmh').AsString;
//   frm_bylsyz.QRL_dysj.Caption := '打印时间:' + FormatDatetime('yyyy年mm月dd日 HH时MM分SS秒', frm_func.curr_date);
//   frm_bylsyz.rep_dryphz.Prepare;
//   frm_bylsyz.QRL_ym.Caption := '共' + IntToStr( frm_bylsyz.rep_dryphz.Printer.PageCount) + '页';
//   frm_bylsyz.rep_dryphz.PrinterSettings.PrinterIndex:=printer.Printers.IndexOf('zxdprint');
//   frm_bylsyz.rep_dryphz.Preview;
//   finally
//    frm_bylsyz.Free;
//  end;
end;

procedure Tfrm_zxypyz_tyjf.cxButton4Click(Sender: TObject);
var
  czks: string;
begin
  qry_yjddy.Close;
  qry_yjddy.Open;
  qry_fymx.First;
  while not qry_fymx.Eof do
  begin
    if qry_fymx.FieldByName('tfbz').AsBoolean then
    begin
      if qry_fymx.FieldByName('yjqrbz').AsString = '否' then //医技确认标志,否:未确认费用可以重新打印
      begin
        qry_yjddy.Append;
        qry_yjddy.FieldByName('id').AsString := IntToStr(qry_fymx.FieldByName('id').AsInteger);
        qry_yjddy.FieldByName('fymc').AsString := qry_fymx.FieldByName('fymc').AsString;
        qry_yjddy.FieldByName('dw').AsString := qry_fymx.FieldByName('dw').AsString;
        qry_yjddy.FieldByName('fyje').AsFloat := qry_fymx.FieldByName('fyje').AsFloat;
        qry_yjddy.FieldByName('sfrq').AsString := formatdatetime('', qry_fymx.FieldByName('sfrq').AsDateTime);
        czks := qry_fymx.FieldByName('czks').AsString;
        qry_fymx.Edit;
        qry_fymx.FieldByName('tfbz').AsBoolean := false;
      end
      else
        Application.MessageBox('提示:该项目医技科室已经确费,不能再打印!', '提示', MB_ICONINFORMATION);
    end;

    qry_fymx.Next;
  end;
  qrl_bqmc.Caption := pub_bqmc;
  rtl_czks.Caption := czks;
  rtl_sfrq.Caption := formatdatetime('', frm_func.curr_date);
  QRLabel22.Caption := pub_yymc + '医技确认单';
  QuickRep1.Preview;
  qry_yjddy.Close;
end;

procedure Tfrm_zxypyz_tyjf.cxButton5Click(Sender: TObject);
begin
  try
    application.createform(tfrm_zyplcffy, frm_zyplcffy);
    frm_zyplcffy.showmodal;
  finally
    frm_zyplcffy.free;
  end;
end;

procedure Tfrm_zxypyz_tyjf.bt_jfClick(Sender: TObject);
begin
//医嘱预执行
{  iszx := false;
  zxsj := '';
  qyyf := '';
  try
    application.CreateForm(Tfrm_yzyzx, frm_yzyzx);
    frm_yzyzx.ShowModal;
    if iszx then
    begin
      yzzx(zxsj, qyyf);
    end;
  finally
    frm_yzyzx.Free;
  end; }
  DM_data.qry_pub.close;
  DM_data.qry_pub.SQL.text:='select * from zysf_zydj where zyh='+''''+sp_brxx.FieldByName('zyh').AsString+
                          ''' and cybz=0 and jsbz=0';
  DM_data.qry_pub.Open;
  if not DM_data.qry_pub.IsEmpty then
  begin
    try
      application.CreateForm(Tfrm_yzfyqd_tyjf, frm_yzfyqd_tyjf);
      frm_yzfyqd_tyjf.ShowModal;
    finally
      frm_yzfyqd_tyjf.Free;
    end;
  end
  else
  begin
    Application.MessageBox('提示:该病人已出院,不能再记费!', '提示', MB_ICONINFORMATION);
  end;
end;



procedure Tfrm_zxypyz_tyjf.cxButton6Click(Sender: TObject);
begin
  close;
end;


procedure Tfrm_zxypyz_tyjf.cxButton7Click(Sender: TObject);
begin
  try
    application.createform(tfrm_fycl, frm_fycl);
    frm_fycl.tmh.text := DBEdit19.text;
    frm_fycl.showmodal;
  finally
    frm_fycl.free;
    //pub_td := 'a';
  end;
end;

procedure Tfrm_zxypyz_tyjf.cxGrid1DBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if strtofloat(AViewInfo.RecordViewInfo.GridRecord.Values[4]) < 0 then
    ACanvas.Brush.Color := $00808040;

end;

procedure Tfrm_zxypyz_tyjf.cxGridDBTableView2CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if strtoint(AViewInfo.RecordViewInfo.GridRecord.Values[15]) > 0 then
    ACanvas.Brush.Color := $00808040;
end;

procedure Tfrm_zxypyz_tyjf.ds_brxxDataChange(Sender: TObject; Field: TField);
begin
//    if isch then
//    begin
//        if not ds_brxx.DataSet.IsEmpty then
//        begin
//            sp_jbxx.Active := false;
//            sp_jbxx.Parameters.ParamByName('@zyh').Value := sp_brxx.FieldByName('zyh').AsString;
//            sp_jbxx.Open;
//            zyh := sp_brxx.FieldByName('zyh').AsString;
//            tmh := sp_brxx.FieldByName('tmh').AsString;
//        end;
//    end;
end;

procedure Tfrm_zxypyz_tyjf.dt_zxsjChange(Sender: TObject);
var zyh_dq:string;
begin
  zyh_dq:=cx_zyh;
  sp_brxx.Close;
  sp_brxx.Parameters.ParamByName('@sr_bqdm').Value := trim(pub_ksdm);
  sp_brxx.Parameters.ParamByName('@zxsj').Value := formatdatetime('yyyymmdd',dT_zxsj.Date);
  sp_brxx.Parameters.ParamByName('@zyh').Value := '';
  sp_brxx.Open;
  sp_brxx.Locate('zyh',zyh_dq,[]);
end;

procedure Tfrm_zxypyz_tyjf.Edit2Change(Sender: TObject);
begin
if (edit2.Text<>'') and (edit2.Text<>'输入病床号，拼音码或者病人姓名') then
begin
sp_brxx.Filtered:=False;
sp_brxx.Filter:=' bch like ''%'+trim(edit2.text)+'%'' or brxm like ''%'+trim(edit2.text)+'%''';
sp_brxx.Filtered:=True;
end
else
sp_brxx.Filtered:=False;
end;

procedure Tfrm_zxypyz_tyjf.Edit2Enter(Sender: TObject);
begin
Edit2.SetFocus;
Edit2.Clear;
end;

procedure Tfrm_zxypyz_tyjf.DBGridEh1CellClick(Column: TColumnEh);
begin
  if sp_brxx.RecordCount > 0 then
  begin
    cx_zyh := sp_brxx.FieldByName('zyh').AsString;
    DM_data.qry_pub.Close;
    DM_data.qry_pub.SQL.text:='select * from sys_czy where dm='+''''+trim(sp_brxx.FieldByName('zgys').asstring)+'''';
    DM_data.qry_pub.Open;
    if DM_data.qry_pub.RecordCount>0 then
    Edit3.text:= Trim(DM_data.qry_pub.FieldByName('mc').AsString);
    sp_dryz.close;
    sp_dryz.Parameters.ParamByName('@zyh').value:=sp_brxx.FieldByName('zyh').asstring;
    sp_dryz.Parameters.ParamByName('@zxsj').value:=formatdatetime('yyyymmdd',dT_zxsj.Date);
    sp_dryz.Parameters.ParamByName('@ksdm').value:=pub_ksdm;
    sp_dryz.Open;
    sp_dryz.First;
  end;

end;



procedure Tfrm_zxypyz_tyjf.DBGridEh1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    if sp_brxx.Active then
    begin
      if DBGridEh1.Hint = '回车只显示选择病人' then
      begin
        sp_brxx.Filtered := false;
        sp_brxx.Filter := ' xz = 1';
        sp_brxx.Filtered := true;
        DBGridEh1.Hint := '回车显示全部病人';
      end
      else
      begin
        sp_brxx.Filtered := false;
        DBGridEh1.Hint := '回车只显示选择病人';
      end;
    end;
  end;
end;

procedure Tfrm_zxypyz_tyjf.DBGridEh4ColWidthsChanged(Sender: TObject);
begin
if sp_dryz.Active then
  createrect(myrect_cx,sp_dryz,dbgrideh4,11,12,16);

end;

procedure Tfrm_zxypyz_tyjf.DBGridEh4DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
    var i:integer;
  myrect1:Trect;
begin
 if sP_dryz.fieldbyname('drzx').asinteger=1  then
    DBGridEh4.Canvas.Brush.Color := clSkyBlue;

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


end.

