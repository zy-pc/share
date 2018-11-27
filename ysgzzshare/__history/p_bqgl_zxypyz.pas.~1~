Unit p_bqgl_zxypyz;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, StdCtrls, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxControls, cxGridCustomView,
  cxGrid, ExtCtrls, cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, ADODB, Mask, DBCtrls,
  Buttons, cxMemo, Grids, DBGridEh, GridsEh, cxLabel, ComCtrls, Menus,
  cxLookAndFeelPainters, cxButtons, cxCheckBox, DBGrids, QRCtrls, QuickRpt,printers,
  DBGridEhGrouping;
type Tmyrect=record
         ph:string;
         top,left,right,bottom,sl,height:integer;
         yf,tj:string;
         gtop,gleft,gright,gbottom:integer;
         end;
type TTmyrect=array [0..1000] of Tmyrect;

type
  Tfrm_zxypyz = class(TForm)
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
    cxButton3: TcxButton;
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
    SpeedButton1: TSpeedButton;
    Panel3: TPanel;
    Label2: TLabel;
    dt_zxsj: TDateTimePicker;
    Edit1: TEdit;
    sp_yzsj: TADOStoredProc;
    Label3: TLabel;
    Edit2: TEdit;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxButton7: TcxButton;
    ScrollBox1: TScrollBox;
    DBGridEh4: TDBGridEh;
    Label4: TLabel;
    Button1: TButton;
    cxButton8: TcxButton;
    DBGridEh2: TDBGridEh;
    Timer1: TTimer;
    DBEdit1: TDBEdit;
    Button2: TButton;
    Button3: TButton;
    cxButton9: TcxButton;
    Panel4: TPanel;
    Panel5: TPanel;
    Label10: TLabel;
    Button4: TButton;
    Panel8: TPanel;
    CheckBox1: TCheckBox;
    pm1: TPopupMenu;
    N1: TMenuItem;
    Button5: TButton;
    N2: TMenuItem;
    Label6: TLabel;
    Label7: TLabel;
    CheckBox2: TCheckBox;
    Label8: TLabel;
    bah: TDBEdit;
    cxGrid1DBTableView1sl: TcxGridDBColumn;
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
    procedure SpeedButton1Click(Sender: TObject);
    procedure dt_zxsjChange(Sender: TObject);
    procedure Edit2Enter(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton7Click(Sender: TObject);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGridEh4CellClick(Column: TColumnEh);
    procedure DBGridEh4Exit(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure cxButton8Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure DBGridEh2ColWidthsChanged(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure cxButton9Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure TabSheet1Show(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure DBEdit14Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    procedure OnMouseWheel_yzjf(var Msg: TMsg; var Handled: Boolean);
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
  frm_zxypyz: Tfrm_zxypyz;
  yzlb: string; //医嘱类别
  jryzxph: string; //今日已执行医属批号
  isch: boolean;
  _zxbh: string; //执行编号(确定当前执行医嘱的编号)
  myrect:TTmyrect;
  myrect_cx,myrect_zx_cq,myrect_zx_ls:TTmyrect;
  chag:Boolean;
  isBqjfOpened:Boolean=False;
 function findinarray(myrect:TTmyrect;zd:string):integer;
 procedure initarray(myrect:TTmyrect);



implementation

{$R *.dfm}
uses p_func, p_dm,  p_syfz, p_yjddy, p_zyplcffy, P_main, p_bylsyz, p_yzfyqd,p_dylsyzyp,
p_zyyzcljf,p_bqgl_fycl,p_zdjfqd,p_bqtycfhj,p_jysqdjf,p_jcsqdjf,
p_bqgl_yzpljf,p_bqgl_yzck,p_brcx,p_yzzx,p_bqgl_bqjf;

var FormTitle:String;

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
    for i := 0 to 1000 do
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

procedure Tfrm_zxypyz.Button1Click(Sender: TObject);
begin
 try
    application.createform(Tfrm_zdjfqd, frm_zdjfqd);
    frm_zdjfqd.showmodal;
  finally
    frm_zdjfqd.free;
  end;
end;

procedure Tfrm_zxypyz.Button2Click(Sender: TObject);
begin
  try
    application.createform( tfrm_jysqdjf, frm_jysqdjf );
    frm_jysqdjf.showmodal;
  finally
    frm_jysqdjf.free;
  end
end;

procedure Tfrm_zxypyz.Button3Click(Sender: TObject);
begin
  try
    application.createform( tfrm_jcsqdjf, frm_jcsqdjf );
    frm_jcsqdjf.showmodal;
  finally
    frm_jcsqdjf.free;
  end;
end;

procedure Tfrm_zxypyz.Button4Click(Sender: TObject);
begin
  Panel4.Visible:=false;
  ScrollBox1.Align:=alClient;
  CheckBox1.Checked:=false;
end;

procedure Tfrm_zxypyz.Button5Click(Sender: TObject);
begin
  try
    application.createform( Tfrm_yzzx, frm_yzzx );
    frm_yzzx.zyh := sp_brxx.FieldByName('zyh').AsString;
    frm_yzzx.showmodal;
  finally
    if frm_zxypyz.Parent=frm_main then
    frm_yzzx.free;
  end;
end;

procedure Tfrm_zxypyz.CheckBox1Click(Sender: TObject);
begin
  if CheckBox1.Checked=true then
  begin
    if Panel8.ControlCount = 0 then
    begin
      Panel4.Visible:=True;
      application.createform( tFrm_brcx, Frm_brcx );
      Frm_brcx.Panel1.Visible:=True;
      Frm_brcx.Panel7.Visible:=false;
      Frm_brcx.brxm.text := Trim(DBEdit19.text);
      Frm_brcx.Parent := Panel8;
      Frm_brcx.BorderStyle := bsnone;
      Frm_brcx.Position:=poDefault;
      Frm_brcx.Top := 10;
      Frm_brcx.Left :=10;
//      Frm_brcx.WindowState := wsmaximized;
      Frm_brcx.Visible:=true;
      Frm_brcx.Panel1.Visible:=false;
      ScrollBox1.Align:=alCustom;
      ScrollBox1.Width:=frm_zxypyz.Width-200;
      ScrollBox1.Height:=535-panel4.Height;
    end
    else
    begin
      Frm_brcx.Free;
      Panel4.Visible:=True;
      application.createform( tFrm_brcx, Frm_brcx );
      Frm_brcx.Panel1.Visible:=True;
      Frm_brcx.Panel7.Visible:=false;
      Frm_brcx.brxm.text := Trim(DBEdit19.text);
      Frm_brcx.Parent := Panel8;
      Frm_brcx.BorderStyle := bsnone;
//      Frm_brcx.WindowState := wsmaximized;
      Frm_brcx.Position:=poDefault;
       Frm_brcx.Top := 10;
      Frm_brcx.Left := 2;
      Frm_brcx.Visible:=true;
      Frm_brcx.Panel1.Visible:=false;
      ScrollBox1.Align:=alCustom;
      ScrollBox1.Width:=frm_zxypyz.Width-200;
      ScrollBox1.Height:=535-panel4.Height;
    end;
  end
  else
  begin
    Panel4.Visible:=false;
    ScrollBox1.Align:=alClient;
  end;
end;

procedure Tfrm_zxypyz.CheckBox2Click(Sender: TObject);
var
  BeginTime,EndDTime:string;
begin
  if CheckBox2.Checked = True then
  begin
    BeginTime := FormatDateTime('yyyy-MM-dd 00:00:00',dt_zxsj.Date);
    EndDTime  := FormatDateTime('yyyy-MM-dd 00:00:00',dt_zxsj.Date + 1);
    sp_dryz.Filtered := False;
    sp_dryz.Filter := ' (kdrq >= ''' + BeginTime + ''' and kdrq < ''' + EndDTime +''') or' +
                      ' (tzrq >= ''' + BeginTime + ''' and tzrq < ''' + EndDTime +''')';
    sp_dryz.Filtered := True;
  end
  else
  begin
    sp_dryz.Filtered := False;
  end;
end;

procedure Tfrm_zxypyz.createrect(var myrect1:TTmyrect;dataset_rect:Tcustomadodataset;grid_yzlr1:Tdbgrideh;x1,x2,x3:integer);
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



procedure Tfrm_zxypyz.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Application.OnMessage:=nil;
end;

procedure Tfrm_zxypyz.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
    //关闭时删除执行状态
//  if Assigned(frm_bqjf) then
//  begin
//    frm_bqjf.close;
////    FreeAndNil(frm_bqjf);
//  end;
  qry_pub.Close;
  qry_pub.SQL.Text := 'delete from zybl_zyyz_zxzt where zxbh = ' + #39 + _zxbh + #39;
  qry_pub.ExecSQL;
end;

procedure Tfrm_zxypyz.FormCreate(Sender: TObject);
begin
   if pub_yydm = '0257' then
   begin
     DBGridEh2.Columns[55].Visible:=True;
     DBGridEh2.Columns[56].Visible:=True;
     DBGridEh4.Columns[55].Visible:=True;
     DBGridEh4.Columns[56].Visible:=True;
   end;
end;

procedure Tfrm_zxypyz.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    selectnext(activecontrol, true, true);
end;

procedure Tfrm_zxypyz.FormShow(Sender: TObject);
begin
  FormTitle:=Self.Caption;
  if (pub_yydm ='0015') then
  begin
    bt_jf.Caption := '药品计费';
    cxButton7.Caption := '病区计费';
  end;
  if pub_yydm='0234' then
  begin
    DBGridEh1.PopupMenu:=pm1;
  end;
        if( pub_yydm='0263') or( pub_yydm='0264') then
    begin
      label8.Visible:=true;
      bah.Visible:=true;
    end;
    //病区全部病员
//  if (pub_yydm='0228') or (pub_yydm='0240') or (pub_yydm='0246') then
//  begin
//    cxButton9.Visible:=True;
//  end
//  else
//  begin
//    cxButton9.Visible:=false;
//  end;
  chag:=False;
  cx_zyh:='';
  if sp_brxx.Active then
  cx_zyh:=sp_brxx.FieldByName('zyh').AsString;
  QuickRep1.Visible := false;
  PageControl1.ActivePage := Tabsheet1;
  isch := false;
  sp_yzsj.Close;
  sp_yzsj.Parameters.ParamByName('@scyzsj').Value :=dt_zxsj.DateTime;
  sp_yzsj.ExecProc;
  dt_zxsj.DateTime:= sp_yzsj.Parameters.ParamByName('@scyzsj').Value;
  sp_brxx.Close;
  sp_brxx.Parameters.Refresh;
  sp_brxx.Parameters.ParamByName('@sr_bqdm').Value := trim(pub_bqdm);
  sp_brxx.Parameters.ParamByName('@zxsj').Value := formatdatetime('yyyymmdd',dT_zxsj.Date);
  sp_brxx.Parameters.ParamByName('@zyh').Value := '';
  sp_brxx.Open;
  if cx_zyh='' then
  cx_zyh := zyh;
  isch := true;
  _zxbh := pub_czydm + formatdatetime('ss', frm_func.curr_date);
  dbgrideh4.Left:=1;
  dbgrideh4.Top:=1;
  Edit2.text:= '输入病床号，拼音码或者病人姓名';
  if not sp_brxx.Locate('zyh',cx_zyh,[]) then
  begin
    sp_brxx.First;
    cx_zyh:=sp_brxx.FieldByName('zyh').asstring;
  end;
 // DBGrideh1.DataSource.DataSet.GotoBookmark(pointer(DBGrideh1.SelectedRows.Items[0]));

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

  DM_data.qry_pub.Close;
  DM_data.qry_pub.sql.text:='select * from sys_xt_kg';
  DM_data.qry_pub.Open;
  if DM_data.qry_pub.FieldByName('yzkfyddjf').AsBoolean=true then
  begin
    cxButton1.Visible:=True;
    bt_jf.Width:=90;
    bt_jf.Caption:='非口服药记费';
  end;
  chag:=True;
end;



procedure Tfrm_zxypyz.N1Click(Sender: TObject);
var zyh:string;
begin
  zyh:=sp_brxx.FieldByName('zyh').AsString;
  if sp_brxx.FieldByName('sfbz').AsString='0' then
  begin
    try
      DM_data.qry_pub.Close;
      DM_data.qry_pub.SQL.text:='select *  from   zybl_zyjfbz  where  1=2 ' ;
      DM_data.qry_pub.Open ;
      DM_data.qry_pub.Append;
      DM_data.qry_pub.FieldByName('tmh').AsString :=  sp_brxx.FieldByName('tmh').AsString ;
      DM_data.qry_pub.FieldByName('zyh').AsString := sp_brxx.FieldByName('zyh').AsString ;
      DM_data.qry_pub.FieldByName('bqdm').AsString :=  pub_bqdm ;
      DM_data.qry_pub.FieldByName('brxm').AsString :=  sp_brxx.FieldByName('brxm').AsString;
      DM_data.qry_pub.FieldByName('rq').AsDateTime := dt_zxsj.DateTime;
      DM_data.qry_pub.FieldByName('bz').AsString := '1';
      DM_data.qry_pub.Post;
      Application.MessageBox('标记成功！', '提示', MB_OK + MB_ICONINFORMATION);
    except
      Application.MessageBox('标记失败，请重试！', '提示', MB_OK + MB_ICONINFORMATION);
    end;
    sp_brxx.Close;
    sp_brxx.Parameters.Refresh;
    sp_brxx.Parameters.ParamByName('@sr_bqdm').Value := trim(pub_bqdm);
    sp_brxx.Parameters.ParamByName('@zxsj').Value := formatdatetime('yyyymmdd',dT_zxsj.Date);
    sp_brxx.Parameters.ParamByName('@zyh').Value := '';
    sp_brxx.Open;
    sp_brxx.Locate('zyh',zyh,[]);
  end
  else
  begin
    Application.MessageBox('该病人已经计费，不需要再进行标记！', '错误', MB_OK 
      + MB_ICONSTOP);
  end;
end;

procedure Tfrm_zxypyz.N2Click(Sender: TObject);
var rq:string;
begin
  DM_data.qry_pub.close;
  DM_data.qry_pub.SQL.text:='select * from zybl_qfgzbr where zyh='+''''+sp_brxx.FieldByName('zyh').asstring+'''';
  DM_data.qry_pub.Open;
  if DM_data.qry_pub.IsEmpty then
  begin
    Application.MessageBox('该病人没有欠费挂账记录！', '错误！', MB_OK + 
      MB_ICONSTOP);
    Exit;
  end;
  try
    zyh:=sp_brxx.FieldByName('zyh').asstring;
    rq:=FormatDateTime('yyyyMMdd',dt_zxsj.DateTime);
    dt_zxsj.DateTime:= StrToDateTime(copy(DM_data.qry_pub.FieldByName('rq').asstring,1,4)+'-'+
    Copy(DM_data.qry_pub.FieldByName('rq').asstring,5,2)+'-'+
    Copy(DM_data.qry_pub.FieldByName('rq').asstring,7,2));
    sp_brxx.Locate('zyh',zyh,[]);
    application.CreateForm(Tfrm_yzfyqd, frm_yzfyqd);
    frm_yzfyqd.zyh_now:=sp_brxx.FieldByName('zyh').AsString;
    frm_yzfyqd.jffs:='0';
    frm_yzfyqd.ShowModal;
  finally
    frm_yzfyqd.Free;
    dt_zxsj.DateTime:= StrToDateTime(copy(rq,1,4)+'-'+
    Copy(rq,5,2)+'-'+
    Copy(rq,7,2));
    sp_brxx.Close;
    sp_brxx.Parameters.Refresh;
    sp_brxx.Parameters.ParamByName('@sr_bqdm').Value := trim(pub_bqdm);
    sp_brxx.Parameters.ParamByName('@zxsj').Value := formatdatetime('yyyymmdd',dT_zxsj.Date);
    sp_brxx.Parameters.ParamByName('@zyh').Value := '';
    sp_brxx.Open;
    sp_brxx.Locate('zyh',zyh,[]);
  end;
end;

procedure Tfrm_zxypyz.SpeedButton1Click(Sender: TObject);
begin
self.FormShow(sender);
end;

procedure Tfrm_zxypyz.sp_brxxAfterScroll(DataSet: TDataSet);
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
//     sp_dryz.Parameters.ParamByName('@ksdm').value:=pub_ksdm;
//    sp_dryz.Open;
//    sp_dryz.First;
//  end;

end;

procedure Tfrm_zxypyz.sp_dryzAfterOpen(DataSet: TDataSet);
begin
if sp_dryz.RecordCount*30>screen.Height-70 then
  dbgrideh4.Height:=sp_dryz.RecordCount*30
  else
  dbgrideh4.Height:=screen.Height-70;
  createrect(myrect_cx,sp_dryz,dbgrideh4,11,12,17);
end;

procedure Tfrm_zxypyz.TabSheet1Show(Sender: TObject);
begin
  //add by 夏茂林 20140425 for 江油人民医院 医嘱计费界面宽度调整
  if pub_yydm = '0015' then
  begin
    groupbox8.Width := 120;
    DBGridEh2.Columns[0].Width := 35;
    DBGridEh2.Columns[1].Width := 35;
    DBGridEh2.Columns[2].Width := 35;
    DBGridEh2.Columns[3].Width := 130;
    DBGridEh2.Columns[5].Width := 220;
    DBGridEh2.Columns[6].Width := 44;
    DBGridEh2.Columns[7].Width := 35;
    DBGridEh2.Columns[8].Width := 40;
    DBGridEh2.Columns[9].Width := 17;
    DBGridEh2.Columns[10].Width := 40;
    DBGridEh2.Columns[11].Width := 40;
    DBGridEh2.Columns[12].Width := 130;
    DBGridEh4.Columns[0].Width := 35;
    DBGridEh4.Columns[1].Width := 35;
    DBGridEh4.Columns[2].Width := 35;
    DBGridEh4.Columns[3].Width := 130;
    DBGridEh4.Columns[5].Width := 220;
    DBGridEh4.Columns[6].Width := 44;
    DBGridEh4.Columns[7].Width := 35;
    DBGridEh4.Columns[8].Width := 40;
    DBGridEh4.Columns[9].Width := 17;
    DBGridEh4.Columns[10].Width := 40;
    DBGridEh4.Columns[11].Width := 40;
    DBGridEh4.Columns[12].Width := 130;
  end;
  //end by 夏茂林 20140425
end;

procedure Tfrm_zxypyz.TabSheet2Show(Sender: TObject);
begin
  qry_fymx.Close;
  qry_fymx.Parameters.ParamByName('zyh').Value := cx_zyh;
  qry_fymx.Open;
end;



procedure Tfrm_zxypyz.Timer1Timer(Sender: TObject);
begin
  DBGridEh2.left:=3-ScrollBox1.HorzScrollBar.Position;
end;

procedure Tfrm_zxypyz.cxButton1Click(Sender: TObject);
begin
//    try
//    application.CreateForm(Tfrm_dylsyzyp, frm_dylsyzyp);
//    DM_data.qry_pub.Close;
//    DM_data.qry_pub.SQL.text:='select zxph,max(zhzxsj) zxsj  from zybl_zyyz_yzzxqd where zyh='+''''+zyh+''''+' and zxsj='+''''+formatdatetime('yyyyMMdd',dt_zxsj.DateTime)+''''+' group by zxph';
//    DM_data.qry_pub.Open;
//    frm_dylsyzyp.ShowModal;
//    finally
//    frm_dylsyzyp.Free;
//    end;
    try
      application.CreateForm(Tfrm_yzfyqd, frm_yzfyqd);
      frm_yzfyqd.zyh_now:=sp_brxx.FieldByName('zyh').asstring;
      frm_yzfyqd.jffs:='1';
      frm_yzfyqd.ShowModal;
    finally
      frm_yzfyqd.Free;
    end;


end;

procedure Tfrm_zxypyz.cxButton2Click(Sender: TObject);
begin
  DM_data.qry_pub.Close;
  DM_data.qry_pub.sql.text:='select isbqkf from sys_xt_kg';
  DM_data.qry_pub.Open;
  if (DM_data.qry_pub.FieldByName('isbqkf').AsBoolean<>true) then
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

procedure Tfrm_zxypyz.cxButton3Click(Sender: TObject);
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
   frm_bylsyz.rep_dryphz.PrinterSettings.PrinterIndex:=printer.Printers.IndexOf('zxdprint');
   frm_bylsyz.rep_dryphz.Preview;
   finally
    frm_bylsyz.Free;
  end;
end;

procedure Tfrm_zxypyz.cxButton4Click(Sender: TObject);
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

procedure Tfrm_zxypyz.cxButton5Click(Sender: TObject);
begin
  try
    application.createform(tfrm_zyplcffy, frm_zyplcffy);
    frm_zyplcffy.showmodal;
  finally
    frm_zyplcffy.free;
  end;
end;

procedure Tfrm_zxypyz.bt_jfClick(Sender: TObject);
var zyh:string;
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
  try
    zyh:=sp_brxx.FieldByName('zyh').asstring;
    application.CreateForm(Tfrm_yzfyqd, frm_yzfyqd);
    frm_yzfyqd.zyh_now:=sp_brxx.FieldByName('zyh').asstring;
    frm_yzfyqd.jffs:='0';
    frm_yzfyqd.ShowModal;
  finally
    frm_yzfyqd.Free;
//    sp_brxx.Close;
//    sp_brxx.Parameters.Refresh;
//    sp_brxx.Parameters.ParamByName('@sr_bqdm').Value := trim(pub_bqdm);
//    sp_brxx.Parameters.ParamByName('@zxsj').Value := formatdatetime('yyyymmdd',dT_zxsj.Date);
//    sp_brxx.Parameters.ParamByName('@zyh').Value := '';
//    sp_brxx.Open;
//    sp_brxx.Locate('zyh',zyh,[]);
  end;
end;

procedure Tfrm_zxypyz.cxButton6Click(Sender: TObject);
begin
  close;
end;

procedure Tfrm_zxypyz.cxButton7Click(Sender: TObject);
begin
  if pub_yydm<>'0015' then
  begin
    try
      application.createform(tfrm_fycl, frm_fycl);
      frm_fycl.tmh.text := DBEdit19.text;
      frm_fycl.showmodal;
    finally
      frm_fycl.free;
    end;
  end
  else
  begin
    //frm_zxypyz.BorderIcons:=[];
    CreateOrShowBqjf(DBEdit19.Text, StrToDateTime(FormatDateTime('YYYY-MM-DD', dt_zxsj.DateTime)));
  end;
end;

procedure Tfrm_zxypyz.cxButton8Click(Sender: TObject);
begin
  application.CreateForm( TFrm_bqtycfhj, Frm_bqtycfhj );
  try
    Frm_bqtycfhj.ShowModal;
  finally
    Frm_bqtycfhj.free;
  end;
end;

procedure Tfrm_zxypyz.cxButton9Click(Sender: TObject);
begin
  application.CreateForm( TFrm_bqgl_yzpljf, Frm_bqgl_yzpljf );
  try
    Frm_bqgl_yzpljf.zf_Date:=dt_zxsj.DateTime;
    Frm_bqgl_yzpljf.ShowModal;
  finally
    Frm_bqgl_yzpljf.free;
  end;
end;

procedure Tfrm_zxypyz.cxGrid1DBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if strtofloat(AViewInfo.RecordViewInfo.GridRecord.Values[4]) < 0 then
    ACanvas.Brush.Color := $00808040;

end;

procedure Tfrm_zxypyz.cxGridDBTableView2CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if strtoint(AViewInfo.RecordViewInfo.GridRecord.Values[15]) > 0 then
    ACanvas.Brush.Color := $00808040;
end;

procedure Tfrm_zxypyz.ds_brxxDataChange(Sender: TObject; Field: TField);
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

procedure Tfrm_zxypyz.dt_zxsjChange(Sender: TObject);
var zyh_dq:string;
begin
  if chag=true then
  begin
    zyh_dq:=cx_zyh;
    sp_brxx.Close;
    sp_brxx.Parameters.ParamByName('@sr_bqdm').Value := trim(pub_bqdm);
    sp_brxx.Parameters.ParamByName('@zxsj').Value := formatdatetime('yyyymmdd',dT_zxsj.Date);
    sp_brxx.Parameters.ParamByName('@zyh').Value := '';
    sp_brxx.Open;
    sp_brxx.Locate('zyh',zyh_dq,[]);
    sp_dryz.close;
    sp_dryz.Parameters.ParamByName('@zyh').value:=sp_brxx.FieldByName('zyh').asstring;
    sp_dryz.Parameters.ParamByName('@zxsj').value:=formatdatetime('yyyymmdd',dT_zxsj.Date);
    sp_dryz.Parameters.ParamByName('@ksdm').value:=pub_ksdm;
    sp_dryz.Open;
    CheckBox2Click(Sender);
  end;

end;

procedure Tfrm_zxypyz.Edit2Change(Sender: TObject);
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

procedure Tfrm_zxypyz.Edit2Enter(Sender: TObject);
begin
Edit2.SetFocus;
Edit2.Clear;
end;

procedure Tfrm_zxypyz.DBEdit14Change(Sender: TObject);
begin
  Self.caption:=FormTitle+'   病人姓名：【' + trim( DBEDIT14.Text ) + '】'
end;

procedure Tfrm_zxypyz.DBGridEh1CellClick(Column: TColumnEh);
begin
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
    if isBqjfOpened then
    begin
      frm_bqjf.ChangePatient(sp_brxx.FieldByName('tmh').AsString);
    end;
  end;
  if Panel4.Visible=true then
  begin
    if Panel8.ControlCount = 0 then
    begin
      Panel4.Visible:=True;
      application.createform( tFrm_brcx, Frm_brcx );
      Frm_brcx.Panel1.Visible:=True;
      Frm_brcx.Panel7.Visible:=false;
      Frm_brcx.brxm.text := Trim(DBEdit19.text);
      Frm_brcx.Parent := Panel8;
      Frm_brcx.BorderStyle := bsnone;
      Frm_brcx.Top := 10;
      Frm_brcx.Left :=10;
      Frm_brcx.Position:=poDefault;
//      Frm_brcx.WindowState := wsmaximized;
      Frm_brcx.Visible:=true;
      Frm_brcx.Panel1.Visible:=false;
      ScrollBox1.Align:=alCustom;
      ScrollBox1.Width:=frm_zxypyz.Width-200;
      ScrollBox1.Height:=535-panel4.Height;
    end
    else
    begin
      Frm_brcx.Free;
      Panel4.Visible:=True;
      application.createform( tFrm_brcx, Frm_brcx );
      Frm_brcx.Panel1.Visible:=True;
      Frm_brcx.Panel7.Visible:=false;
      Frm_brcx.brxm.text := Trim(DBEdit19.text);
      Frm_brcx.Parent := Panel8;
      Frm_brcx.BorderStyle := bsnone;
      Frm_brcx.Top := 10;
      Frm_brcx.Left := 10;
      Frm_brcx.Position:=poDefault;
//      Frm_brcx.WindowState := wsmaximized;
      Frm_brcx.Visible:=true;
      Frm_brcx.Panel1.Visible:=false;
      ScrollBox1.Align:=alCustom;
      ScrollBox1.Width:=frm_zxypyz.Width-200;
      ScrollBox1.Height:=535-panel4.Height;
    end;
  end;

end;



procedure Tfrm_zxypyz.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if pub_yydm='0234' then
  begin
    if Trim(sp_brxx.FieldByName('sfbz').asstring)='0' then
      DBGridEh1.Canvas.Font.Color := clred;
    (Sender as TDbGridEh).DefaultDrawColumnCell(Rect, DataCol, Column, State);
    if Trim(sp_brxx.FieldByName('sfgf').asstring)<>'0' then
      DBGridEh1.Canvas.Font.Color := clblue;
    (Sender as TDbGridEh).DefaultDrawColumnCell(Rect, DataCol, Column, State);
  end
  else
  begin
    if Trim(sp_brxx.FieldByName('jfbz').asstring)='自动记费失败' then
      DBGridEh1.Canvas.Font.Color := clred;
    (Sender as TDbGridEh).DefaultDrawColumnCell(Rect, DataCol, Column, State);
  //-- add by XML 2014-07-08 for 江油人民医院转科病人在原科室显示单日有效医嘱
    if ( pub_yydm ='0015' ) and
      ( Trim ( sp_brxx.FieldByName('ksdm').asstring ) <> pub_ksdm ) then
    begin
      DbGridEh1.Canvas.Font.Color := clRed;
    end;
  end;
  DbGridEh1.DefaultDrawColumnCell (Rect, DataCol, Column, State);
  //-- end by XML 2014-07-08
end;

procedure Tfrm_zxypyz.DBGridEh1KeyPress(Sender: TObject; var Key: Char);
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

procedure Tfrm_zxypyz.DBGridEh2ColWidthsChanged(Sender: TObject);
var i:Integer;
begin
  if (cx_zyh<>'')  then
  begin
     for I := 0 to DBGridEh2.Columns.Count - 1 do
     begin
        DBGridEh4.Columns[i].Width := DBGridEh2.Columns[i].Width;
     end;
  end;

//  for I := 0 to DBGridEh2.Columns.Count - 1 do
//  begin
//    DBGridEh4.Columns[i].Width := DBGridEh2.Columns[i].Width;
//  end;
end;

procedure Tfrm_zxypyz.DBGridEh4CellClick(Column: TColumnEh);
begin
Application.OnMessage:=OnMouseWheel_yzjf;
end;

procedure Tfrm_zxypyz.DBGridEh4ColWidthsChanged(Sender: TObject);
begin
if sp_dryz.Active then
  createrect(myrect_cx,sp_dryz,dbgrideh4,11,12,16);

end;

procedure Tfrm_zxypyz.DBGridEh4DrawColumnCell(Sender: TObject;
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
     if trim( sP_dryz.FieldByName( 'lb' ).AsString ) <> '草药' then
     DBGridEh4.canvas.Rectangle(myrect_cx[i].left,myrect_cx[i].top,myrect_cx[i].right,myrect_cx[i].bottom);
     DBGridEh4.Canvas.pen.color:=clred;
     if trim( sP_dryz.FieldByName( 'lb' ).AsString ) <> '草药' then
     begin
     DBGridEh4.Canvas.MoveTo(myrect_cx[i].left+20,myrect_cx[i].top);
     DBGridEh4.Canvas.LineTo(myrect_cx[i].left,myrect_cx[i].Bottom);
     end;
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
     if trim( sP_dryz.FieldByName( 'lb' ).AsString ) <> '草药' then
     DBGridEh4.Canvas.TextOut(myrect_cx[i].left+20,
     myrect_cx[i].top+round(myrect_cx[i].height*((myrect_cx[i].sl-0.5)/2)),myrect_cx[i].tj+#13+myrect_cx[i].yf);
   end;

    //--add by 夏茂林--2014-04-25----已经停止医嘱 显示红色
   if (pub_yydm='0015') and sp_dryz.FieldByName('tzbz').AsBoolean then begin
     DBGridEh4.Canvas.Font.Color := $004F1DD3;
   end;
   //--end add by 夏茂林--2014-04-25----
    (Sender as TDbGridEh).DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure Tfrm_zxypyz.DBGridEh4Exit(Sender: TObject);
begin
Application.OnMessage:=nil;
end;

//-----calmhawk--2011-05-24----滚动
Procedure Tfrm_zxypyz.OnMouseWheel_yzjf(Var Msg :TMsg;var Handled:Boolean);
begin
 if Msg.message = WM_MouseWheel  then
 begin
       if   Msg.wParam   <   0   then
      SendMessage(ScrollBox1.Handle,WM_VSCROLL,   SB_LINEDOWN,   0)
    else
      SendMessage(ScrollBox1.Handle,WM_VSCROLL,   SB_LINEUP,   0);
   Handled:= True;
 end;
end;


end.

