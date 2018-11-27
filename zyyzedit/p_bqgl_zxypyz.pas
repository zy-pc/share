unit p_bqgl_zxypyz;

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

type
  Tfrm_zxypyz = class(TForm)
    qry_pub: TADOQuery;
    ds_kdys: TDataSource;
    qry_kdys: TADOQuery;
    ds_xzzyyz: TDataSource;
    ds_yzph: TDataSource;
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
    sp_xzzyyz: TADOStoredProc;
    sp_ysdm: TADOStoredProc;
    ds_yf: TDataSource;
    sp_yz_plzx: TADOStoredProc;
    sp_sczbsj: TADOStoredProc;
    sp_sjzb: TADOStoredProc;
    sp_clsjzb: TADOStoredProc;
    Ds_plzx: TDataSource;
    ad_plcl: TADODataSet;
    sp_brxx: TADOStoredProc;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    groupbox8: TPanel;
    Panel8: TPanel;
    Button4: TButton;
    Panel4: TPanel;
    Shape1: TShape;
    cxCheckBox3: TcxCheckBox;
    cxCheckBox6: TcxCheckBox;
    cxCheckBox5: TcxCheckBox;
    cxCheckBox4: TcxCheckBox;
    cxCheckBox7: TcxCheckBox;
    cxCheckBox1: TcxCheckBox;
    cxCheckBox2: TcxCheckBox;
    DBGridEh1: TDBGridEh;
    Panel3: TPanel;
    Button1: TButton;
    Button3: TButton;
    groupbox2: TPanel;
    Panel5: TPanel;
    Label4: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit1: TDBEdit;
    bt_zxjg: TcxButton;
    Panel6: TPanel;
    cxButton1: TcxButton;
    cxButton6: TcxButton;
    cxButton3: TcxButton;
    bt_jf: TcxButton;
    b_move: TcxButton;
    cxGrid2: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridDBColumn12: TcxGridDBColumn;
    cxGridDBTableView2DBzhzxsj: TcxGridDBColumn;
    cxGridDBTablebrxm: TcxGridDBColumn;
    cxGridDBTableView2DBph: TcxGridDBColumn;
    cxGridDByzsx: TcxGridDBColumn;
    cxGridDBTableView2drcs: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
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
    procedure Button1Click(Sender: TObject);
    procedure ds_brxxDataChange(Sender: TObject; Field: TField);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure Button3Click(Sender: TObject);
    procedure DBGridEh1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Button4Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure cxButton1Click(Sender: TObject);
    procedure b_moveClick(Sender: TObject);
    procedure cxButton6Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure bt_jfClick(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure bt_zxjgClick(Sender: TObject);
    procedure cxGridDBTableView2CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure cxGridDBTableView2DblClick(Sender: TObject);
    procedure DBGridEh1KeyPress(Sender: TObject; var Key: Char);
    procedure cxButton5Click(Sender: TObject);
    procedure TabSheet2Show(Sender: TObject);
    procedure cxGrid1DBTableView1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure cxCheckBox7MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure sp_brxxAfterScroll(DataSet: TDataSet);
  private
    procedure sjzb;
    procedure sjzb1(zyh, lb: string);
    procedure czxy;
    procedure yzzx(zxsj, qyyf: string);
    procedure pljr(cfph, ypdm: string);
    procedure move_dqph;
    procedure del_zxbh;
    procedure del_yjf;
    procedure p_del_yjf;
        { Private declarations }
  public //y表示选择,n表示未选择
    tmh, zyh, xzph, kdys, ysmc, yfmc, str_zyh: string;
    xhlist, zyhlist, phlist, yzsx: string; //zyhlist 本次记费人员  phlist本次记费批号 //序号xhlist
    xzbz: string; //y表示选择,n表示未选择
    curr_datetime: Tdatetime;

    pldh, _phlist: string;

    zxsj, qyyf: string;
    iszx: boolean;

    cx_zyh, yz_select: string;
    del_curr_ph: string;
    del_bz: integer; //0 本次未删除，1本次删了项目
        { Public declarations }
  end;

var
  frm_zxypyz: Tfrm_zxypyz;
  yzlb: string; //医嘱类别
  jryzxph: string; //今日已执行医属批号
  isch: boolean;
  _zxbh: string; //执行编号(确定当前执行医嘱的编号)

implementation

{$R *.dfm}
uses p_func, p_dm, p_yzzxjg, p_syfz, p_yzzxd, p_yzyzx,
  p_yjddy, p_zyplcffy, P_main, p_bylsyz;

procedure Tfrm_zxypyz.p_del_yjf;
var
  str: string;
begin
//-----数据可操作校验-----
  str := '是否移出当日已记费医嘱?';
  if application.messagebox(pchar(str), '提示信息', mb_yesNo + mb_iconinformation) = IDyes then
  begin
  //删除当日已记费
    sp_xzzyyz.DisableControls;
    sp_xzzyyz.First;
    del_bz := 0;
    while not sp_xzzyyz.Eof do
    begin
      del_yjf;
      if del_bz = 1 then //删除项目--删除后台执行批号
      begin
        del_curr_ph := sp_xzzyyz.FieldByName('ph').AsString;
        del_zxbh;
      end;
      del_bz := 0;
      sp_xzzyyz.Next;
    end;
    sp_xzzyyz.EnableControls;

    sp_xzzyyz.Close;
    sp_xzzyyz.Parameters.ParamValues['@zxbh'] := _zxbh;
    sp_xzzyyz.Open;
  end;
  frm_zxypyz.cxgriddbtableview2.DataController.Groups.FullExpand;
end;


procedure Tfrm_zxypyz.del_zxbh;
begin
  with dm_data do
  begin
    try
      qry_pub.Close;
      qry_pub.SQL.Text := 'delete zybl_zyyz_zxzt where zxph=' + #39 + del_curr_ph + #39;
      qry_pub.execsql;
    except
      application.MessageBox('删除没选择该执行批号状态时出错!', '提示信息', 0 + 16);
      qry_pub.Close;
    end;
  end;
end;


procedure Tfrm_zxypyz.del_yjf;
begin
//移除批号医嘱属性未选择已记费
  if sp_xzzyyz.FieldByName('drzxcs').AsInteger > 0 then
  begin
    del_bz := 1;
    sp_xzzyyz.Delete;
  end;
end;


procedure Tfrm_zxypyz.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
    //关闭时删除执行状态
  qry_pub.Close;
  qry_pub.SQL.Text := 'delete from zybl_zyyz_zxzt where zxbh = ' + #39 + _zxbh + #39;
  qry_pub.ExecSQL;
end;

procedure Tfrm_zxypyz.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    selectnext(activecontrol, true, true);
end;

procedure Tfrm_zxypyz.FormShow(Sender: TObject);
begin
    //病区全部病员
  QuickRep1.Visible := false;
  PageControl1.ActivePage := Tabsheet1;
  isch := false;
  sp_brxx.Close;
  sp_brxx.Parameters.ParamByName('@sr_bqdm').Value := trim(pub_bqdm);
  sp_brxx.Open;
  if zyh <> '' then
  begin
    if sp_brxx.RecordCount > 0 then
    begin
      isch := true;
      if sp_brxx.Locate('zyh', zyh, []) then
      begin
        sp_brxx.Edit;
        sp_brxx.FieldByName('xz').Value := 1;
        sp_brxx.Post;
      end;
    end;
  end;
  cx_zyh := zyh;
  isch := true;
  _zxbh := pub_czydm + formatdatetime('ss', now);
end;

procedure Tfrm_zxypyz.sjzb1(zyh: string; lb: string);
begin
  if zyh <> '' then
  begin
    sp_sjzb.Close;
    sp_sjzb.Parameters.ParamByName('@zyh').Value := zyh;
    sp_sjzb.Parameters.ParamByName('@czydm').Value := pub_czydm;
    sp_sjzb.Parameters.ParamByName('@zxbh').Value := _zxbh;
    sp_sjzb.Parameters.ParamByName('@yzselect').Value := yz_select;
    sp_sjzb.Open;
    if sp_sjzb.FieldByName('jg').AsString <> '0' then
    begin
      showmessage(sp_sjzb.FieldByName('jg').AsString);
      abort;
    end;
  end;
end;

procedure Tfrm_zxypyz.sp_brxxAfterScroll(DataSet: TDataSet);
begin
  if sp_brxx.RecordCount > 0 then
    cx_zyh := sp_brxx.FieldByName('zyh').AsString;
end;

procedure Tfrm_zxypyz.TabSheet2Show(Sender: TObject);
begin
  qry_fymx.Close;
  qry_fymx.Parameters.ParamByName('zyh').Value := cx_zyh;
  qry_fymx.Open;
end;

procedure Tfrm_zxypyz.czxy;
begin
  if not sp_xzzyyz.Active then
  begin
    showMessage('无可操作数据');
    abort;
  end
  else
    if sp_xzzyyz.RecordCount < 1 then
    begin
      showMessage('无可操作数据');
      abort;
    end;

end;

procedure Tfrm_zxypyz.yzzx(zxsj, qyyf: string);
var
  fyph: string;
  dqph: string;
begin
    //-----数据可操作校验-----
  czxy;
    //----组织选择执行批号-------------
  _phlist := '''' + 'a' + '''';
  sp_xzzyyz.DisableControls;
  sp_xzzyyz.First;

  while not sp_xzzyyz.Eof do
  begin
    if dqph <> sp_xzzyyz.FieldByName('ph').AsString then
    begin
      if trim(sp_xzzyyz.FieldByName('ph').AsString) <> '' then
        _phlist := _phlist + ',' + '''' + sp_xzzyyz.FieldByName('ph').AsString + '''';
    end;
    dqph := sp_xzzyyz.FieldByName('ph').AsString;
    sp_xzzyyz.Next;
  end;
  sp_xzzyyz.EnableControls;
  if _phlist = ('''' + 'a' + '''') then
  begin
    showMessage('无可执行医嘱!请重新选择!');
    abort;
  end;
  //查询系统状
  with dm_data.qry_pub do
  begin
    close;
    sql.clear;
    sql.text := 'select * from sys_jzzt';
    open;
  end;
  if dm_data.qry_pub['jzzt'] then
  begin
    application.MessageBox('系统正在结转数据请稍候!', '提示', 0 + 48);
    button1.Enabled := true;
    abort;
  end;
//药品批量处理
  ad_plcl.close;
  ad_plcl.commandtext := 'select * from zyxyf_pltzb where ksdm=' + #39 + pub_bqdm + #39 + ' and tzbz=0';
  if qyyf <> '' then
  begin
    ad_plcl.commandtext := ad_plcl.commandtext + ' and yfdm=' + #39 + qyyf + #39;
  end;
  ad_plcl.Open;
  if ad_plcl.isempty then
  begin
    fyph := get_sjh(pub_czydm);
  end
  else
  begin
    fyph := ad_plcl['pldh'];
  end;
  pljr(fyph, qyyf);

  sp_yz_plzx.Close;
  sp_yz_plzx.Parameters.ParamByName('@ph').Value := _phlist;
  sp_yz_plzx.Parameters.ParamByName('@zxbh').Value := _zxbh;
  sp_yz_plzx.Parameters.ParamByName('@pldh').Value := fyph;
  sp_yz_plzx.Parameters.ParamByName('@zxsj').Value := zxsj;
  sp_yz_plzx.Parameters.ParamByName('@qyyf').Value := qyyf;
  sp_yz_plzx.Open;
  try
    application.CreateForm(Tfrm_yzzxjg, frm_yzzxjg);
    frm_yzzxjg.ShowModal;
  finally
    frm_yzzxjg.Free;
  end;
  bt_jf.enabled := false;
  bt_zxjg.enabled := true;
  b_move.enabled := false;

end;

procedure Tfrm_zxypyz.pljr(cfph, ypdm: string);
begin
  if ad_plcl.isempty then
  begin
    ad_plcl.Append;
    ad_plcl['ksdm'] := pub_bqdm;
    ad_plcl['kssj'] := frm_func.curr_date();
    ad_plcl['pldh'] := cfph;
    ad_plcl['tzbz'] := 0;
    ad_plcl['jjtz'] := 0;
    ad_plcl['yfdm'] := ypdm;
    ad_plcl.post;
  end;
end;

procedure Tfrm_zxypyz.cxButton1Click(Sender: TObject);
begin
  application.CreateForm(Tfrm_syfz, frm_syfz);
  try
    frm_syfz.yzsx := yzsx;
    frm_syfz.ShowModal;
  finally
    frm_syfz.Free;
  end;
end;

procedure Tfrm_zxypyz.cxButton3Click(Sender: TObject);
begin
  application.CreateForm(Tfrm_bylsyz, frm_bylsyz);
  try
    frm_bylsyz.cxzyh := sp_brxx.FieldByName('zyh').AsString;
    frm_bylsyz.cxtmh:= sp_brxx.FieldByName('tmh').AsString;
    frm_bylsyz.cxbch:= sp_brxx.FieldByName('bch').AsString;
    frm_bylsyz.edit1.Text := sp_brxx.FieldByName('brxm').AsString;
    frm_bylsyz.ShowModal;
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
begin
//医嘱预执行
  iszx := false;
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
  end;
end;

procedure Tfrm_zxypyz.bt_zxjgClick(Sender: TObject);
begin
  try
    application.CreateForm(Tfrm_yzzxjg, frm_yzzxjg);
    frm_yzzxjg.ShowModal;
  finally
    frm_yzzxjg.Free;
  end;
end;

procedure Tfrm_zxypyz.b_moveClick(Sender: TObject);
var
  str, curr_ph: string;
  len_ph: integer;
begin
  button4.Enabled := true;
     //-----数据可操作校验-----
  czxy;
  sp_xzzyyz.First;
  str := '是否取消今日已执行批号的本次记费?';
  if application.messagebox(pchar(str), '提示信息', mb_yesNo + mb_iconinformation) = IDyes then
  begin
    qry_pub.Close;
    qry_pub.SQL.Text := 'select * from zybl_zyyz_zxzt where zxbh = ' + #39 + _zxbh + #39;
    dm_data.ado_mydata.BeginTrans;
    try
      qry_pub.open;
      dm_data.ado_mydata.CommitTrans;
            //移除选择批号
      sp_xzzyyz.First;
      while not sp_xzzyyz.Eof do
      begin
        if sp_xzzyyz.FieldByName('drzxcs').AsInteger > 0 then
        begin
          sp_xzzyyz.Delete;
        end
        else
        begin
          sp_xzzyyz.Next;
        end;
      end;
    except
      application.MessageBox('修改该执行批号状态时出错!', '提示信息', 0 + 16);
      dm_data.ado_mydata.RollbackTrans;
      qry_pub.Close;
    end;
    cxgriddbtableview2.DataController.Groups.FullExpand;
  end;
end;

procedure Tfrm_zxypyz.move_dqph;
var
  str, curr_ph: string;
  len_ph: integer;
begin
  button4.Enabled := true;
   //-----数据可操作校验-----
  czxy;
  curr_ph := sp_xzzyyz.FieldByName('ph').AsString;
  str := '是否取消医嘱批号:' + curr_ph + '的本次记费?';
  if application.messagebox(pchar(str), '提示信息', mb_yesNo + mb_iconinformation) = IDyes then
  begin
    qry_pub.Close;
    qry_pub.SQL.Text := 'select * from zybl_zyyz_zxzt where zxph=' + #39 + curr_ph + #39;
    qry_pub.Open;
    dm_data.ado_mydata.BeginTrans;
    try
      if qry_pub.RecordCount > 0 then
        qry_pub.Delete;
      dm_data.ado_mydata.CommitTrans;
      qry_pub.Close;
      sp_xzzyyz.DisableControls;
      sp_xzzyyz.First;
      while not sp_xzzyyz.Eof do
      begin
        if sp_xzzyyz.FieldByName('ph').AsString = curr_ph then
        begin
          sp_xzzyyz.Delete;
        end
        else
        begin
          sp_xzzyyz.Next;
        end;
      end;
      sp_xzzyyz.EnableControls;
    except
      application.MessageBox('修改该执行批号状态时出错!', '提示信息', 0 + 16);
      dm_data.ado_mydata.RollbackTrans;
      qry_pub.Close;
    end;
    cxgriddbtableview2.DataController.Groups.FullExpand;
  end;
end;

procedure Tfrm_zxypyz.cxButton6Click(Sender: TObject);
begin
  close;
end;


procedure Tfrm_zxypyz.cxCheckBox7MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  button4.Enabled := true;
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

procedure Tfrm_zxypyz.cxGridDBTableView2DblClick(Sender: TObject);
begin
  move_dqph;
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

procedure Tfrm_zxypyz.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if trim(sp_yz_plzx.FieldByName('jg').AsString) = '失败' then
    DBGridEh1.Canvas.Brush.Color := clskyblue
  else
    DBGridEh1.Canvas.Brush.Color := clMoneyGreen;
  DBGridEh1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
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

procedure Tfrm_zxypyz.DBGridEh1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  button4.Enabled := true;
  if button = mbleft then
  begin
    if sp_brxx.Active then
    begin
      if sp_brxx.RecordCount > 0 then
      begin
        cx_zyh := sp_brxx.FieldByName('zyh').Value;
        sp_brxx.Edit;
        sp_brxx.FieldByName('xz').Value := not sp_brxx.FieldByName('xz').Value;
        sp_brxx.Post;
      end;
    end;
  end;
end;

procedure Tfrm_zxypyz.Button1Click(Sender: TObject);
begin
  button4.Enabled := true;
  if sp_brxx.Active then
  begin
    sp_brxx.DisableControls;
    sp_brxx.First;
    while not sp_brxx.Eof do
    begin
      sp_brxx.Edit;
      sp_brxx.FieldByName('xz').Value := 1;
      sp_brxx.Post;
      sp_brxx.Next;
    end;
    sp_brxx.EnableControls;
  end;
end;

procedure Tfrm_zxypyz.Button3Click(Sender: TObject);
begin
  button4.Enabled := true;
  if sp_brxx.Active then
  begin
    sp_brxx.Filtered := false;
    sp_brxx.DisableControls;
    sp_brxx.First;
    while not sp_brxx.Eof do
    begin
      sp_brxx.Edit;
      sp_brxx.FieldByName('xz').Value := 0;
      sp_brxx.Post;
      sp_brxx.Next;
    end;
    sp_brxx.EnableControls;
  end;
end;

procedure Tfrm_zxypyz.Button4Click(Sender: TObject);
begin
  yz_select := '';
  if cxCheckBox1.Checked then
    yz_select := trim(cxCheckBox1.Caption + ',');
  if cxCheckBox2.Checked then
    yz_select := yz_select + trim(cxCheckBox2.Caption + ',');
  if cxCheckBox3.Checked then
    yz_select := yz_select + trim(cxCheckBox3.Caption + ',');
  if cxCheckBox4.Checked then
    yz_select := yz_select + trim(cxCheckBox4.Caption + ',');
  if cxCheckBox5.Checked then
    yz_select := yz_select + trim(cxCheckBox5.Caption + ',');
  if cxCheckBox6.Checked then
    yz_select := yz_select + trim(cxCheckBox6.Caption + ',');
  if cxCheckBox7.Checked then
    yz_select := yz_select + trim(cxCheckBox7.Caption);
  button4.Enabled := false;
    //根据不同选择查询对应医嘱,,,以及准备执行数据
    //-----------calmhawk----2008-09-03---删除准备数据-------
  sp_sczbsj.close;
  sp_sczbsj.Parameters.ParamValues['@zxbh'] := _zxbh;
  sp_sczbsj.Parameters.ParamValues['@zyh'] := '';
  sp_sczbsj.ExecProc;

  _phlist := '';
  //--------数据准备-----------------
  sp_brxx.DisableControls;
  sjzb;
  sp_brxx.EnableControls;
  sp_xzzyyz.EnableControls;
  sp_xzzyyz.Close;
  sp_xzzyyz.Parameters.ParamValues['@zxbh'] := _zxbh;
  sp_xzzyyz.Open;
  bt_jf.enabled := true;
  bt_zxjg.enabled := false;
  b_move.enabled := true;
  cxgriddbtableview2.DataController.Groups.FullExpand;
  if sp_brxx.Active then
  begin
    sp_brxx.Locate('zyh', cx_zyh, []);
    DBGridEh1.SetFocus;
  end;
end;

//数据准备过程

procedure Tfrm_zxypyz.sjzb;
begin
  sp_brxx.Filtered := false;
  sp_brxx.Filter := ' xz = 1';
  sp_brxx.Filtered := true;

  ProgressBar1.Max := sp_brxx.RecordCount;
  ProgressBar1.Position := 0;
  sp_brxx.First;
  while not sp_brxx.Eof do
  begin
    sjzb1(sp_brxx.FieldByName('zyh').AsString, yzlb);
    ProgressBar1.Position := ProgressBar1.Position + 1;
    cxLabel1.Caption := '数据准备已完成(' + formatfloat('#0.00', ProgressBar1.Position / ProgressBar1.Max * 100) + '%)';
    cxLabel1.Refresh;
    sp_brxx.Next;
  end;
  cxLabel1.Caption := '数据准备已完成(100%)';
  sp_brxx.Filtered := false;
  bt_jf.Enabled := true;

end;

end.

