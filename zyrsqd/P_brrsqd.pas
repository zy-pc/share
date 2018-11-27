unit P_brrsqd;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Db, DBTables, ExtCtrls, ComCtrls, Grids, DBGrids,
  ADODB, PrnDbgeh, DBGridEh, Qrctrls, QuickRpt, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGrid, Mask, GridsEh, Menus, cxLookAndFeelPainters,
  cxButtons, DBCtrls, DBGridEhGrouping;

type
  Tfrm_brrsqd = class(TForm)
    ds_yrqd: TDataSource;
    BitBtn1: TBitBtn;
    qdrq: TDateTimePicker;
    Label1: TLabel;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Bevel1: TBevel;
    Label2: TLabel;
    tmh: TEdit;
    sp_yrqd: TADOStoredProc;
    DBGrid2: TDBGrid;
    PrintDBGridEh1: TPrintDBGridEh;
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    bt: TQRLabel;
    QRBand2: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel12: TQRLabel;
    QRBand4: TQRBand;
    QRBand5: TQRBand;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    sp_cx_yymx: TADOStoredProc;
    BitBtn5: TBitBtn;
    ds_yymx: TDataSource;
    PrintDBGridEh2: TPrintDBGridEh;
    QRSysData1: TQRSysData;
    QRLabel10: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRSubDetail1: TQRSubDetail;
    QRBand6: TQRBand;
    QRSubDetail2: TQRSubDetail;
    ypmc1: TQRLabel;
    gg1: TQRLabel;
    dw1: TQRLabel;
    ypsl1: TQRLabel;
    ypdj1: TQRLabel;
    ypmc2: TQRLabel;
    gg2: TQRLabel;
    dw2: TQRLabel;
    ypdj2: TQRLabel;
    fy1: TQRLabel;
    sl1: TQRLabel;
    je1: TQRLabel;
    sfy1: TQRLabel;
    fy2: TQRLabel;
    sl2: TQRLabel;
    je2: TQRLabel;
    sfy2: TQRLabel;
    fy3: TQRLabel;
    sl3: TQRLabel;
    je3: TQRLabel;
    sfy3: TQRLabel;
    QRShape2: TQRShape;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel28: TQRLabel;
    ypsl2: TQRLabel;
    dysj: TQRLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    DBGridEh1: TDBGridEh;
    DBGridEh2: TDBGridEh;
    pldy: TCheckBox;
    ad_bqdm: TADODataSet;
    ds_bq: TDataSource;
    ad_zybr: TADODataSet;
    Panel3: TPanel;
    Label4: TLabel;
    Label3: TLabel;
    DBGridEh4: TDBGridEh;
    ds_zyby: TDataSource;
    QRBand3: TQRBand;
    HJFY: TQRLabel;
    bt1: TQRLabel;
    QRShape1: TQRShape;
    hjyp: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel9: TQRLabel;
    xm: TQRLabel;
    ch: TQRLabel;
    rq: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel33: TQRLabel;
    QRShape6: TQRShape;
    DBGridEh5: TDBGridEh;
    ds_clmx: TDataSource;
    sp_cx_clmx: TADOStoredProc;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    cxButton1: TcxButton;
    sp_brqd: TADOStoredProc;
    sp_qdxx: TADOStoredProc;
    qrdbtxtzfy: TQRDBText;
    qrdbtxtzfy1: TQRDBText;
    qrxpr1: TQRExpr;
    chk_cybd: TCheckBox;
    dblcombobq: TDBLookupComboBox;
    Label5: TLabel;
    CheckBox1: TCheckBox;
    rep_qd: TQuickRep;
    QRGroup2: TQRGroup;
    QRLabel80: TQRLabel;
    QRLabel81: TQRLabel;
    QRLabel82: TQRLabel;
    QRLabel83: TQRLabel;
    QRLabel84: TQRLabel;
    QRLabel85: TQRLabel;
    QRLabel86: TQRLabel;
    QRLabel87: TQRLabel;
    QRLabel88: TQRLabel;
    qrl_yymc: TQRLabel;
    QRLabel66: TQRLabel;
    QRDBText29: TQRDBText;
    QRLabel67: TQRLabel;
    QRDBText30: TQRDBText;
    QRLabel71: TQRLabel;
    QRLabel72: TQRLabel;
    QRDBText32: TQRDBText;
    QRLabel73: TQRLabel;
    QRDBText33: TQRDBText;
    QRLabel74: TQRLabel;
    QRDBText37: TQRDBText;
    QRLabel76: TQRLabel;
    QRDBText39: TQRDBText;
    QRLabel77: TQRLabel;
    QRDBText31: TQRDBText;
    QRLabel79: TQRLabel;
    QRLabel78: TQRLabel;
    QRShape5: TQRShape;
    QRBand8: TQRBand;
    qrl_dyry: TQRLabel;
    qrl_qdrq: TQRLabel;
    qrl_dyrq: TQRLabel;
    QRBand7: TQRBand;
    QRDBText21: TQRDBText;
    QRDBText22: TQRDBText;
    QRDBText23: TQRDBText;
    QRDBText24: TQRDBText;
    QRDBText25: TQRDBText;
    QRDBText26: TQRDBText;
    QRDBText27: TQRDBText;
    QRDBText28: TQRDBText;
    N4: TMenuItem;
    N5: TMenuItem;
    BitBtn4: TBitBtn;
    qrlbl_ye: TQRLabel;
    qrlbl_zfy: TQRLabel;
    qrlbl_zyj: TQRLabel;
    qry_yrqdpub: TADOQuery;
    ds_yrqdpub: TDataSource;
    BitBtn6: TBitBtn;
    sp_yrqd_dx: TADOStoredProc;
    qry_dyxx: TADOQuery;
    btn_dyxz: TButton;
    sp_yrqd_PrintData: TADOStoredProc;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure tmhKeyPress(Sender: TObject; var Key: Char);
    procedure qdrqKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid2KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid2Exit(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure BitBtn5Click(Sender: TObject);
    procedure QRSubDetail1NeedData(Sender: TObject; var MoreData: Boolean);
    procedure QRSubDetail2NeedData(Sender: TObject; var MoreData: Boolean);
    procedure pldyClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ad_bqdmAfterScroll(DataSet: TDataSet);
    procedure cxButton1Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure QRGroup2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure DBGridEh4TitleClick(Column: TColumnEh);
    procedure DBGridEh4DblClick(Sender: TObject);
    procedure chk_cybdClick(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure rep_qdBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure ad_zybrAfterScroll(DataSet: TDataSet);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure print_fyqd_f3;
    procedure BitBtn4Click(Sender: TObject);
    procedure DBGridEh4MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure BitBtn6Click(Sender: TObject);
    procedure DBGridEh4CellClick(Column: TColumnEh);
    procedure btn_dyxzClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    li: integer;
    prv_rep_Scroll: Boolean;
    procedure print_fyqd(const v_type: Integer);
    procedure print_fyqd_f1(v_type:Integer=2);
    procedure print_fyqd_f2;
    procedure qdmx;
    procedure qdmxPrint(zyh:string);//清单打印明细
    procedure pro_cxyrqd;
    procedure cshfysj; //初始化费用数据
  public
    zy_brxm, zy_zyh, zy_tmh, zy_bqmc: string;
    zd_print, DYYP: boolean;
    yrqd_xzdykg:Boolean;//一日清单选择打印开关

    { Public declarations }
  end;

var
  frm_brrsqd: Tfrm_brrsqd;

  _ksrq, _jsrq: TDateTime;

  _brzt: string; //calmhawk,病人状态，在院/出院/历史
  _cxbz: boolean;

  _gdbz: boolean; //是否滚动标志

procedure pro_bryrqd_bq;

implementation
uses p_dm, p_func, p_hzrsqd, p_zysf_print_service;
{$R *.DFM}


procedure Tfrm_brrsqd.cshfysj; //初始化费用数据
begin
  try
    if Trim(tmh.text) <> '' then
      tmh.text := formatex(strtoint(tmh.text), 9);
  except
  end;
  zy_tmh := tmh.Text;

  if chk_cybd.Checked then
  begin
    qry_yrqdpub.Close;
    qry_yrqdpub.SQL.clear;
    qry_yrqdpub.SQL.Text := 'select a.bqdm,a.ryrq,a.brxb,a.brnl,a.tmh,a.brxm,b.mc,a.zyh,a.cybz,isnull(c.yybch,a.bch) bch,a.zfy,a.yjze from zysf_cydj a,sys_ksdm b,sys_kscwsz c,(select zyh,max(id) id from zysf_cyzkzc where xbch is not null group by zyh ) bc,zysf_cyzkzc zc' +
      ' where a.ksdm=b.dm and a.tmh<>' + #39 + '000000001' + #39 + ' and (a.tmh=' + #39 + zy_tmh + #39 + ' or a.brxm like ' +
      #39 + '%' + zy_tmh + '%' + #39 + ' or (a.ksdm in ' +
      '(select dm from sys_ksdm where pym like ' + #39 + copy(zy_tmh, 1, 2) + '%' +
      #39 + ') and a.bch like ' + #39 + '%' + copy(zy_tmh, 3, 2) + #39 + ')) and a.zyh=bc.zyh and bc.zyh=zc.zyh and bc.id=zc.id and zc.xbch=c.bcbh and a.bqdm=c.bqdm ';
    qry_yrqdpub.SQL.Add(' union select a.bqdm,a.ryrq,a.brxb,a.brnl,a.tmh,a.brxm,b.mc,a.zyh,a.cybz,isnull(c.yybch,a.bch) bch,a.zfy,a.yjze from zysf_zydj a,sys_ksdm b,sys_kscwsz c,(select zyh,max(id) id from zysf_zyzkzc where xbch is not null group by zyh ) bc,zysf_zyzkzc zc' +
      ' where  a.ksdm=b.dm and a.tmh<>' + #39 + '000000001' + #39 + ' and (a.tmh=' + #39 + zy_tmh + #39 + ' or a.brxm like ' +
      #39 + '%' + zy_tmh + '%' + #39 + ' or (a.ksdm in ' +
      '(select dm from sys_ksdm where pym like ' + #39 + copy(zy_tmh, 1, 2) + '%' +
      #39 + ') and a.bch like ' + #39 + '%' + copy(zy_tmh, 3, 2) + #39 + ')) and a.jsbz = 1 and a.zyh=bc.zyh and bc.zyh=zc.zyh and bc.id=zc.id and zc.xbch=c.bcbh and a.bqdm=c.bqdm');
    qry_yrqdpub.open;
    _brzt := '出院';
    if qry_yrqdpub.IsEmpty then
    begin
      qry_yrqdpub.Close;
      qry_yrqdpub.SQL.clear;
      qry_yrqdpub.SQL.Text := 'select a.bqdm,a.ryrq,a.brxb,a.brnl,a.tmh,a.brxm,b.mc,a.zyh,a.cybz,a.bch,a.zfy,a.yjze from zyzc_zysf_cydj a,sys_ksdm b' +
        ' where a.ksdm=b.dm and a.tmh<>' + #39 + '000000001' + #39 + ' and (a.tmh=' + #39 + zy_tmh + #39 + ' or a.brxm like ' +
        #39 + '%' + zy_tmh + '%' + #39 + ' or (a.ksdm in ' +
        '(select dm from sys_ksdm where pym like ' + #39 + copy(zy_tmh, 1, 2) + '%' +
        #39 + ') and a.bch like ' + #39 + '%' + copy(zy_tmh, 3, 2) + #39 + '))';
      qry_yrqdpub.open;
      _brzt := '历史';
    end;
  end
  else
  begin
    qry_yrqdpub.Close;
    qry_yrqdpub.SQL.clear;
    qry_yrqdpub.SQL.Text := 'select a.bqdm,a.ryrq,a.brxb,a.brnl,a.tmh,a.brxm,b.mc,a.zyh,a.cybz,isnull(c.yybch,a.bch) bch,a.zfy,a.yjze from zysf_zydj a,sys_ksdm b,sys_kscwsz c,(select zyh,max(id) id from zysf_zyzkzc where xbch is not null group by zyh ) bc,zysf_zyzkzc zc' +
      ' where a.ksdm=b.dm and   a.tmh<>' + #39 + '000000001' + #39 + ' and (a.tmh=' + #39 + zy_tmh + #39 + ' or a.brxm like ' +
      #39 + '%' + zy_tmh + '%' + #39 + ' or (a.ksdm in ' +
      '(select dm from sys_ksdm where pym like ' + #39 + copy(zy_tmh, 1, 2) + '%' +
      #39 + ') and ( a.bch ='''' or  a.bch like ' + #39 + '%' + copy(zy_tmh, 3, 2) + #39 + '))) and a.zyh=bc.zyh and bc.zyh=zc.zyh and bc.id=zc.id and zc.xbch=c.bcbh and a.bqdm=c.bqdm  ';
    qry_yrqdpub.open;
    _brzt := '在院';
  end;
  if qry_yrqdpub.IsEmpty then
  begin
    application.MessageBox('无此卡号！', '提示', 0 + 48);
//    tmh.SetFocus;
//    tmh.SelectAll;
//    abort;
  end
  else
    if qry_yrqdpub.recordcount = 1 then
    begin
      zy_zyh := qry_yrqdpub.fieldbyname('zyh').asstring;
      zy_tmh := qry_yrqdpub.fieldbyname('tmh').asstring;
      zy_brxm := qry_yrqdpub.fieldbyname('brxm').asstring;
      if chk_cybd.Checked then
      begin
        ad_zybr.Close;
        ad_zybr.Parameters.ParamByName('bqdm').value := qry_yrqdpub.fieldbyname('zyh').asstring;
        ad_zybr.Parameters.ParamByName('brzt').value := '出院';
        ad_zybr.Open;
      end;
      qdmx;
    end
    else
    begin
      dbgrid2.DataSource.DataSet:= qry_yrqdpub;
      dbgrid2.left := tmh.left;
      dbgrid2.top := tmh.top + tmh.height;
      dbgrid2.Visible := true;
      dbgrid2.SetFocus;
    end;

end;

procedure Tfrm_brrsqd.BitBtn2Click(Sender: TObject);
begin
    cshfysj;

    cxButton1.Enabled := True;
    BitBtn3.Enabled := True;
    BitBtn4.Enabled := True;
    BitBtn5.Enabled := True;
    BitBtn6.Enabled := True;


    ad_bqdm.AfterScroll := nil;
    ad_bqdm.First;
    while not ad_bqdm.Eof do
    begin
      if Trim(ad_bqdm.FieldByName('BQDM').AsString)=Trim(qry_yrqdpub.FieldByName('BQDM').AsString) then
      begin
        Break;
      end;
      ad_bqdm.Next;
    end;
    DM_data.qry_pub.close;
    DM_data.qry_pub.SQL.Text:='select * from sys_bzkks where dm='+''''+pub_ksdm +'''';
    DM_data.qry_pub.Open;
    if DM_data.qry_pub.IsEmpty then
    begin
      ad_bqdm.AfterScroll := ad_bqdmAfterScroll;
      ad_bqdmAfterScroll(ad_bqdm);
    end;

   ad_zybr.Locate('tmh',zy_tmh,[]);
end;

procedure Tfrm_brrsqd.ad_zybrAfterScroll(DataSet: TDataSet);
begin
  if ad_zybr.Active and _gdbz then
  begin
    if ad_zybr.RecordCount > 0 then
    begin
      tmh.Text := ad_zybr.FieldByName('tmh').Text;
      cshfysj;
    end;
  end;
end;

procedure Tfrm_brrsqd.BitBtn1Click(Sender: TObject);
begin
  close;
end;

procedure Tfrm_brrsqd.tmhKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    qdrq.SetFocus;
    BitBtn2.Click;
  end;
end;

procedure Tfrm_brrsqd.qdrqKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then BitBtn2.Click;
end;

procedure Tfrm_brrsqd.DBGrid2KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    pro_cxyrqd;
  end
end;

procedure Tfrm_brrsqd.DBGridEh4CellClick(Column: TColumnEh);
var hh:Integer;
begin
  if ad_zybr.FieldByName('brzt').Value='在院' then
  begin
    qry_dyxx.Close;
    if ad_zybr.FieldByName('yrqddybz').Value then
    begin
       qry_dyxx.sql.Text:='UPDATE zysf_zydj SET yrqddybz=0 WHERE tmh='''+ad_zybr.FieldByName('tmh').Value+''' AND zyh='''+ad_zybr.FieldByName('zyh').Value+'''';
    end else
    begin
       qry_dyxx.sql.Text:='UPDATE zysf_zydj SET yrqddybz=1 WHERE tmh='''+ad_zybr.FieldByName('tmh').Value+''' AND zyh='''+ad_zybr.FieldByName('zyh').Value+'''';
    end;
    qry_dyxx.ExecSQL;

    hh:=DBGridEh4.DataSource.DataSet.RecNo; //获取当前选中位置
    ad_zybr.Close;
    ad_zybr.Parameters.ParamByName('bqdm').value := ad_bqdm.fieldbyname('bqdm').asstring;
    ad_zybr.Parameters.ParamByName('brzt').value := '在院';
    ad_zybr.Open;
    DBGridEh4.DataSource.DataSet.RecNo:=hh;
  end;
end;

procedure Tfrm_brrsqd.DBGridEh4DblClick(Sender: TObject);
begin
  if ad_zybr.Active then
  begin
    if ad_zybr.RecordCount > 0 then
    begin
      tmh.Text := ad_zybr.FieldByName('tmh').Text;
      BitBtn2.Click;
    end;
  end;
  if not BitBtn3.Enabled then
  begin
    cxButton1.Enabled := True;
    BitBtn3.Enabled := True;
    BitBtn4.Enabled := True;
    BitBtn5.Enabled := True;
    BitBtn6.Enabled := True;
  end;
end;

procedure Tfrm_brrsqd.DBGridEh4MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if dbgrideh4.SelectedRows.Count > 0 then
  begin
    cxButton1.Enabled := True;
    BitBtn3.Enabled := True;
    BitBtn4.Enabled := True;
    BitBtn5.Enabled := True;
    BitBtn6.Enabled := True;
    tmh.Text := ad_zybr.FieldByName('tmh').Text;
  end;
end;

procedure Tfrm_brrsqd.DBGridEh4TitleClick(Column: TColumnEh);
begin
  DBGridEh4.SelectedRows.SelectAll;
end;

procedure Tfrm_brrsqd.DBGrid2DblClick(Sender: TObject);
begin
  pro_cxyrqd;
end;

procedure Tfrm_brrsqd.DBGrid2Exit(Sender: TObject);
begin
  dbgrid2.Visible := false;
end;

procedure Tfrm_brrsqd.BitBtn3Click(Sender: TObject);
begin
 // BitBtn2.Click;
  QRSubDetail1.Enabled := true;
  qrband3.enabled := true;
  qrband2.enabled := true;
  qrband6.Enabled := false;
  QRSubDetail2.Enabled := false;
  qrband5.Enabled := false;
  if yrqd_xzdykg then
  begin
    ad_zybr.First;
    while not ad_zybr.eof  do
    begin
      if ad_zybr.FieldByName('yrqddybz').value then
      begin
          print_fyqd_f1;
      end;
      ad_zybr.Next;
    end;
    application.MessageBox('打印完毕！', '提示', 0 + 48);
  end else
  begin
     print_fyqd_f1;
  end;

end;

procedure Tfrm_brrsqd.BitBtn4Click(Sender: TObject);
var
  v_zyh:string;
  i:Integer;
begin
  _gdbz := true;
  qrband2.enabled := true;
  qrband3.enabled := true;
  qrband6.Enabled := true;
  QRSubDetail1.Enabled := true;
  QRSubDetail2.Enabled := true;
  qrband5.Enabled := true;
  if yrqd_xzdykg then
  begin
    ad_zybr.First;
    while not ad_zybr.eof  do
    begin
      if ad_zybr.FieldByName('yrqddybz').value then
      begin
         if pub_yydm='0271' then
         begin
           v_zyh:= v_zyh +','+ Trim( ad_zybr.fieldbyname( 'zyh' ).asstring );
         end else
         begin
           print_fyqd(5);
         end;
      end;
      ad_zybr.Next;
    end;
    if pub_yydm='0271' then  //掇刀医院
    begin
//      if dbgrideh4.RowCount > 1 then
//      begin
//        dbgrideh4.Enabled := false;
////        i2 := dbgrideh4.SelectedRows.Count;
//        for i := 0 to dbgrideh4.RowCount - 1 do
//        begin
//         ShowMessage(DBGrideh4.Columns.Items[i].Field.Value) ;
//
//
//        end;
//        dbgrideh4.Enabled := true;
//        if not yrqd_xzdykg then
//        begin
//            application.MessageBox('打印完毕！', '提示', 0 + 48);
//        end;
//        label3.Caption := '';
//      end ;
      v_zyh:=Copy(v_zyh,2,length(v_zyh)-1);
//      qdmxPrint(v_zyh);
      sp_yrqd_PrintData.close;
      sp_yrqd_PrintData.Parameters.ParamByName('@zyh').value := v_zyh;
      sp_yrqd_PrintData.Parameters.ParamByName('@ksrq').value := _ksrq;
      sp_yrqd_PrintData.Parameters.ParamByName('@jsrq').value := _jsrq;
      sp_yrqd_PrintData.Parameters.ParamByName('@brzt').Value := _brzt;
      sp_yrqd_PrintData.Open;
      frm_zysf_print_service.Print_ddyy_CountYrqd(sp_yrqd_PrintData);//掇刀医院打印
    end;
    application.MessageBox('打印完毕！', '提示', 0 + 48);
  end else
  begin
    print_fyqd(5);
  end;
  _gdbz := false;
end;

procedure Tfrm_brrsqd.FormShow(Sender: TObject);
begin


  qry_dyxx.Close;
  qry_dyxx.sql.Text:='UPDATE zysf_zydj SET yrqddybz=0';
  qry_dyxx.ExecSQL;

  _gdbz := false;
  QuickRep1.Visible := False;
  rep_qd.Visible := False;
  qdrq.DateTime := frm_func.curr_date;
  prv_rep_Scroll := False;
  _cxbz := true;
  ad_bqdm.open;
  prv_rep_Scroll := True;
  ad_bqdm.First;
  if username = 'sys_bqgl' then
  begin
    dblcombobq.KeyValue := pub_bqdm;
    dblcombobq.Enabled := false;
  end;
  if pub_yydm = '0199' then
  begin
    cxButton1.Visible := False;
    BitBtn4.Caption := '批量打印';
  end;
end;

procedure Tfrm_brrsqd.N1Click(Sender: TObject);
begin
  qrband2.enabled := true;
  qrband3.enabled := true;
  qrband6.Enabled := true;
  QRSubDetail1.Enabled := true;
  QRSubDetail2.Enabled := true;
  qrband5.Enabled := true;
  print_fyqd(2);
end;

procedure Tfrm_brrsqd.N3Click(Sender: TObject);
begin
  print_fyqd(1);
end;

procedure Tfrm_brrsqd.N5Click(Sender: TObject);
begin
  application.CreateForm(Tfrm_brhzqd, frm_brhzqd);
  try
    frm_brhzqd.ShowModal;
  finally
    frm_brhzqd.free;
  end;
end;

procedure Tfrm_brrsqd.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  sp_yrqd.first;
  sp_cx_yymx.First;
  sp_yrqd_dx.first;
end;

procedure Tfrm_brrsqd.rep_qdBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  sp_brqd.first;
end;

procedure Tfrm_brrsqd.print_fyqd(const v_type: Integer);
begin
  if v_type = 1 then
    print_fyqd_f2
  else
    if (v_type = 2) or (v_type=4) or (v_type=5) then    //2只打印费用，4只打印药品，5均打印
      print_fyqd_f1(v_type)
    else if v_type = 3 then
      print_fyqd_f3
end;

procedure Tfrm_brrsqd.print_fyqd_f1(v_type:Integer);
var
  i, i2: integer;
  _ch, _dyrq: string;
  _zfy, _zyj, _ye: real;
begin
  zd_print := false;
  if not pldy.Checked then
  begin
    if qry_yrqdpub.Active then
    begin
      zy_zyh := qry_yrqdpub.fieldbyname('zyh').asstring;
      zy_tmh := qry_yrqdpub.fieldbyname('tmh').asstring;
      zy_brxm := qry_yrqdpub.fieldbyname('brxm').asstring;
      zy_bqmc := qry_yrqdpub.fieldbyname('mc').asstring;
      qdmx;
      if sp_qdxx.RecordCount > 0 then
      begin
        _ch := qry_yrqdpub.FieldByName('bch').asstring;
        _dyrq := formatdatetime('yy-mm-dd hh:mm:ss', _ksrq) + '-' + formatdatetime('yy-mm-dd hh:mm:ss', _jsrq);
        _zfy := sp_qdxx.FieldByName('zfy').AsFloat;
        _zyj := sp_qdxx.FieldByName('zyj').AsFloat;
        _ye := StrToFloat(formatfloat('0.00', _zyj - _zfy));
        //frm_zysf_print_service.PrintYrqd(zy_brxm, _ch, _dyrq, zy_tmh, zy_bqmc, _zfy, _zyj, _ye, sp_yrqd, sp_cx_yymx, sp_cx_clmx);
        if v_type=2 then
        begin
          frm_zysf_print_service.PrintYrqd(zy_brxm, _ch, _dyrq, zy_tmh, zy_bqmc, _zfy, _zyj, _ye, sp_yrqd, nil, nil);
        end
        else if v_type=4 then
        begin
          frm_zysf_print_service.PrintYrqd(zy_brxm, _ch, _dyrq, zy_tmh, zy_bqmc, _zfy, _zyj, _ye, nil, sp_cx_yymx, nil);
        end
        else if v_type=5 then
        begin
          frm_zysf_print_service.PrintYrqd(zy_brxm, _ch, _dyrq, zy_tmh, zy_bqmc, _zfy, _zyj, _ye, sp_yrqd, sp_cx_yymx, sp_cx_clmx);
        end;
      end;
    end
    else
    begin
      application.MessageBox('无此此卡号！', '提示', 0 + 48);
      tmh.SetFocus;
      tmh.SelectAll;
    end
  end
  else
    if dbgrideh4.SelectedRows.Count > 1 then
    begin
      dbgrideh4.Enabled := false;
      i2 := dbgrideh4.SelectedRows.Count;
       for i := 0 to dbgrideh4.SelectedRows.Count - 1 do
      begin
        DBGrideh4.DataSource.DataSet.GotoBookmark(pointer(DBGrideh4.SelectedRows.Items[i]));
        begin
          label3.Caption := inttostr(i+1) + '/' + inttostr(i2);
          zy_zyh := ad_zybr.fieldbyname('zyh').asstring;
          zy_tmh := ad_zybr.fieldbyname('tmh').asstring;
          zy_brxm := ad_zybr.fieldbyname('brxm').asstring;
          //qry_yrqdpub.SQL.Text;
          //ad_zybr.FieldByName('bqmc').AsString;
          if ad_bqdm.Active then
            zy_bqmc := Trim(ad_bqdm.fieldbyname('bqmc').asstring)
          else
            zy_bqmc := pub_ksmc;
          qdmx;
          if (sp_qdxx.RecordCount > 0) and ((sp_yrqd.RecordCount > 0) or (sp_cx_yymx.RecordCount > 0)) then
          begin
            _ch := ad_zybr.fieldbyname('bch').asstring;
            _dyrq := formatdatetime('yy-mm-dd hh:mm:ss', _ksrq) + '-' + formatdatetime('yy-mm-dd hh:mm:ss', _jsrq);
            _zfy := sp_qdxx.FieldByName('zfy').AsFloat;
            _zyj := sp_qdxx.FieldByName('zyj').AsFloat;
            _ye := StrToFloat(formatfloat('0.00', _zyj - _zfy));
            //frm_zysf_print_service.PrintYrqd(zy_brxm, _ch, _dyrq, zy_tmh, zy_bqmc, _zfy, _zyj, _ye, sp_yrqd, sp_cx_yymx, sp_cx_clmx);
            if v_type=2 then
            begin
              frm_zysf_print_service.PrintYrqd(zy_brxm, _ch, _dyrq, zy_tmh, zy_bqmc, _zfy, _zyj, _ye, sp_yrqd, nil, nil);
            end
            else if v_type=4 then
            begin
              frm_zysf_print_service.PrintYrqd(zy_brxm, _ch, _dyrq, zy_tmh, zy_bqmc, _zfy, _zyj, _ye, nil, sp_cx_yymx, nil);
            end
            else if v_type=5 then
            begin
              frm_zysf_print_service.PrintYrqd(zy_brxm, _ch, _dyrq, zy_tmh, zy_bqmc, _zfy, _zyj, _ye, sp_yrqd, sp_cx_yymx, sp_cx_clmx);
            end;
          end;
        end
      end;
      dbgrideh4.Enabled := true;
      if not yrqd_xzdykg then
      begin
          application.MessageBox('打印完毕！', '提示', 0 + 48);
      end;
      label3.Caption := '';
    end
    else
    begin
      i2 := 1;
      begin
        zy_zyh := ad_zybr.fieldbyname('zyh').asstring;
        zy_tmh := ad_zybr.fieldbyname('tmh').asstring;
        zy_brxm := ad_zybr.fieldbyname('brxm').asstring;
        if qry_yrqdpub.Active then
          zy_bqmc := qry_yrqdpub.fieldbyname('mc').asstring
        else
          zy_bqmc := pub_ksmc;
        qdmx;
        if sp_qdxx.RecordCount > 0 then
        begin
          //_ch := qry_yrqdpub.FieldByName('bch').asstring;
          _ch := ad_zybr.FieldByName('bch').asstring;
          _dyrq := formatdatetime('yy-mm-dd hh:mm:ss', _ksrq) + '-' + formatdatetime('yy-mm-dd hh:mm:ss', _jsrq);
          _zfy := sp_qdxx.FieldByName('zfy').AsFloat;
          _zyj := sp_qdxx.FieldByName('zyj').AsFloat;
          _ye := StrToFloat(formatfloat('0.00', _zyj - _zfy));
          //frm_zysf_print_service.PrintYrqd(zy_brxm, _ch, _dyrq, zy_tmh, zy_bqmc, _zfy, _zyj, _ye, sp_yrqd, sp_cx_yymx, sp_cx_clmx);
           if v_type=2 then
          begin
            frm_zysf_print_service.PrintYrqd(zy_brxm, _ch, _dyrq, zy_tmh, zy_bqmc, _zfy, _zyj, _ye, sp_yrqd, nil, nil);   //sp_cx_clmx
          end
          else if v_type=4 then
          begin
            frm_zysf_print_service.PrintYrqd(zy_brxm, _ch, _dyrq, zy_tmh, zy_bqmc, _zfy, _zyj, _ye, nil, sp_cx_yymx, nil);  
          end
          else if v_type=5 then
          begin
            frm_zysf_print_service.PrintYrqd(zy_brxm, _ch, _dyrq, zy_tmh, zy_bqmc, _zfy, _zyj, _ye, sp_yrqd, sp_cx_yymx, sp_cx_clmx);
          end;
      end;
      end;
      if not yrqd_xzdykg then
      begin
       application.MessageBox('打印完毕！', '提示', 0 + 48);
      end;
      label3.Caption := '';
    end
end;

procedure Tfrm_brrsqd.print_fyqd_f3;
var
  i, i2: integer;
  _ch, _dyrq: string;
  _zfy, _zyj, _ye: real;
begin
  zd_print := false;
  if not pldy.Checked then
  begin
    if qry_yrqdpub.Active then
    begin
      zy_zyh := qry_yrqdpub.fieldbyname('zyh').asstring;
      zy_tmh := qry_yrqdpub.fieldbyname('tmh').asstring;
      zy_brxm := qry_yrqdpub.fieldbyname('brxm').asstring;
      zy_bqmc := qry_yrqdpub.fieldbyname('mc').asstring;
      qdmx;
      if sp_qdxx.RecordCount > 0 then
      begin
        _ch := qry_yrqdpub.FieldByName('bch').asstring;
        _dyrq := formatdatetime('yy-mm-dd hh:mm:ss', _ksrq) + '-' + formatdatetime('yy-mm-dd hh:mm:ss', _jsrq);
        _zfy := sp_qdxx.FieldByName('zfy').AsFloat;
        _zyj := sp_qdxx.FieldByName('zyj').AsFloat;
        _ye := StrToFloat(formatfloat('0.00', _zyj - _zfy));
        //frm_zysf_print_service.PrintYrqd(zy_brxm, _ch, _dyrq, zy_tmh, zy_bqmc, _zfy, _zyj, _ye, sp_yrqd_dx, sp_cx_yymx, sp_cx_clmx);
        frm_zysf_print_service.PrintYrqd(zy_brxm, _ch, _dyrq, zy_tmh, zy_bqmc, _zfy, _zyj, _ye, sp_yrqd_dx, nil, sp_cx_clmx);
      end;
    end
    else
    begin
      application.MessageBox('无此此卡号！', '提示', 0 + 48);
      tmh.SetFocus;
      tmh.SelectAll;
    end
  end
  else
    if dbgrideh4.SelectedRows.Count > 1 then
    begin
      dbgrideh4.Enabled := false;
      i2 := dbgrideh4.SelectedRows.Count;
      for i := 0 to dbgrideh4.SelectedRows.Count - 1 do
      begin
        DBGrideh4.DataSource.DataSet.GotoBookmark(pointer(DBGrideh4.SelectedRows.Items[i]));
        begin
          label3.Caption := inttostr(i) + '/' + inttostr(i2);
          zy_zyh := ad_zybr.fieldbyname('zyh').asstring;
          zy_tmh := ad_zybr.fieldbyname('tmh').asstring;
          zy_brxm := ad_zybr.fieldbyname('brxm').asstring;
          if qry_yrqdpub.Active then
            zy_bqmc := qry_yrqdpub.fieldbyname('mc').asstring
          else
            zy_bqmc := pub_ksmc;
          qdmx;
          if (sp_qdxx.RecordCount > 0) and ((sp_yrqd_dx.RecordCount > 0) or (sp_cx_yymx.RecordCount > 0)) then
          begin
            _ch := ad_zybr.fieldbyname('bch').asstring;
            _dyrq := formatdatetime('yy-mm-dd hh:mm:ss', _ksrq) + '-' + formatdatetime('yy-mm-dd hh:mm:ss', _jsrq);
            _zfy := sp_qdxx.FieldByName('zfy').AsFloat;
            _zyj := sp_qdxx.FieldByName('zyj').AsFloat;
            _ye := StrToFloat(formatfloat('0.00', _zyj - _zfy));
//            frm_zysf_print_service.PrintYrqd(zy_brxm, _ch, _dyrq, zy_tmh, zy_bqmc,
//                    _zfy, _zyj, _ye, sp_yrqd_dx, sp_cx_yymx, sp_cx_clmx);
            frm_zysf_print_service.PrintYrqd(zy_brxm, _ch, _dyrq, zy_tmh, zy_bqmc,
                   _zfy, _zyj, _ye, sp_yrqd_dx, nil, sp_cx_clmx);
          end;
        end
      end;
      dbgrideh4.Enabled := true;
      if not yrqd_xzdykg then
      begin
          application.MessageBox('打印完毕！', '提示', 0 + 48);
      end;
      label3.Caption := '';
    end
    else
    begin
      begin
        zy_zyh := ad_zybr.fieldbyname('zyh').asstring;
        zy_tmh := ad_zybr.fieldbyname('tmh').asstring;
        zy_brxm := ad_zybr.fieldbyname('brxm').asstring;
        if qry_yrqdpub.Active then
          zy_bqmc := qry_yrqdpub.fieldbyname('mc').asstring
        else
          zy_bqmc := pub_ksmc;
        qdmx;
        if sp_qdxx.RecordCount > 0 then
        begin
          _ch := qry_yrqdpub.FieldByName('bch').asstring;
          _dyrq := formatdatetime('yy-mm-dd hh:mm:ss', _ksrq) + '-' + formatdatetime('yy-mm-dd hh:mm:ss', _jsrq);
          _zfy := sp_qdxx.FieldByName('zfy').AsFloat;
          _zyj := sp_qdxx.FieldByName('zyj').AsFloat;
          _ye := StrToFloat(formatfloat('0.00', _zyj - _zfy));
//          frm_zysf_print_service.PrintYrqd(zy_brxm, _ch, _dyrq, zy_tmh, zy_bqmc, _zfy, _zyj, _ye, sp_yrqd_dx, sp_cx_yymx, sp_cx_clmx);
          frm_zysf_print_service.PrintYrqd(zy_brxm, _ch, _dyrq, zy_tmh, zy_bqmc, _zfy, _zyj, _ye, sp_yrqd_dx, nil, sp_cx_clmx);
        end;
      end;
      if not yrqd_xzdykg then
      begin
          application.MessageBox('打印完毕！', '提示', 0 + 48);
      end;
      label3.Caption := '';
    end
end;

procedure Tfrm_brrsqd.print_fyqd_f2;
begin
  sp_brqd.Close;
  if pldy.checked then
  begin
    sp_brqd.Parameters.ParamValues['@bqdm'] := Trim(ad_bqdm.FieldByName('bqdm').AsString);
  end
  else
    sp_brqd.Parameters.ParamValues['@bqdm'] := Trim(qry_yrqdpub.FieldByName('zyh').AsString);

  sp_brqd.Parameters.ParamValues['@dyrq'] := qdrq.DateTime;
  ;
  sp_brqd.Parameters.ParamByName('@brzt').Value := _brzt;
  if checkBox1.Checked then
    sp_brqd.Parameters.ParamValues['@isxj'] := 1
  else
    sp_brqd.Parameters.ParamValues['@isxj'] := 0;
  sp_brqd.Open;

  qrl_yymc.Caption := trim(pub_yymc) + '病员一日清单';
  qrl_dyrq.Caption := '打印日期:' + formatdatetime('yyyy-mm-dd ', frm_func.curr_date);
  qrl_dyry.Caption := '制表人:' + pub_czyxm;

  if not pldy.Checked then
  begin
    if ad_zybr.Locate('zyh', qry_yrqdpub.FieldByName('zyh').AsString, []) then
    begin
      QRDBText32.DataSet := ad_zybr;
      QRDBText33.DataSet := ad_zybr;
      QRDBText37.DataSet := ad_zybr;
      QRDBText30.DataSet := ad_zybr;
      QRDBText39.DataSet := ad_zybr;
      QRDBText31.DataSet := ad_zybr;
      sp_brqd.Filtered := false;
      sp_brqd.Filter := 'zyh=' + #39 + qry_yrqdpub.FieldByName('zyh').AsString + #39;
      sp_brqd.Filtered := true;
    end
    else
    begin
      QRDBText32.DataSet := qry_yrqdpub;
      QRDBText33.DataSet := qry_yrqdpub;
      QRDBText37.DataSet := qry_yrqdpub;
      QRDBText30.DataSet := qry_yrqdpub;
      QRDBText39.DataSet := qry_yrqdpub;
      QRDBText31.DataSet := qry_yrqdpub;
    end;

  end
  else
  begin
    QRDBText32.DataSet := ad_zybr;
    QRDBText33.DataSet := ad_zybr;
    QRDBText37.DataSet := ad_zybr;
    QRDBText30.DataSet := ad_zybr;
    QRDBText39.DataSet := ad_zybr;
    QRDBText31.DataSet := ad_zybr;
    sp_brqd.Filtered := false;
  end;
  qrl_qdrq.Caption := '清单日期:' + formatdatetime('yyyy-mm-dd hh:mm:ss', sp_brqd.fieldbyname('ksrq').asdatetime) + '-' +
    formatdatetime('yyyy-mm-dd hh:mm:ss', sp_brqd.fieldbyname('jsrq').asdatetime);
  rep_qd.Preview;
end;

procedure Tfrm_brrsqd.qdmx;
begin
  sp_yrqd.Close;
  sp_cx_yymx.Close;
  sp_cx_clmx.Close;
  sp_yrqd_dx.close;
  sp_qdxx.Close;
  sp_qdxx.Parameters.ParamByName('@zyh').Value := zy_zyh;
  sp_qdxx.Parameters.ParamByName('@dyrq').Value := qdrq.DateTime;
  sp_qdxx.Parameters.ParamByName('@brzt').Value := _brzt;
  sp_qdxx.Open;
  if sp_qdxx.RecordCount > 0 then
  begin
    _ksrq := sp_qdxx.FieldByName('ksrq').AsDateTime;
    _jsrq := sp_qdxx.FieldByName('jsrq').AsDateTime;
    sp_yrqd.Close;
    sp_yrqd.Parameters.ParamByName('@zyh').value := zy_zyh;
    sp_yrqd.Parameters.ParamByName('@ksrq').value := _ksrq;
    sp_yrqd.Parameters.ParamByName('@jsrq').value := _jsrq;
    sp_yrqd.Parameters.ParamByName('@brzt').Value := _brzt;
    sp_yrqd.Open;
    sp_yrqd_dx.Parameters.Refresh;
    sp_yrqd_dx.close;
    sp_yrqd_dx.Parameters.ParamByName('@zyh').value := zy_zyh;
    sp_yrqd_dx.Parameters.ParamByName('@ksrq').value := _ksrq;
    sp_yrqd_dx.Parameters.ParamByName('@jsrq').value := _jsrq;
    sp_yrqd_dx.Parameters.ParamByName('@brzt').Value := _brzt;
    sp_yrqd_dx.Open;
    sp_cx_yymx.Close;
    sp_cx_yymx.Parameters.ParamByName('@zyh').value := zy_zyh;
    sp_cx_yymx.Parameters.ParamByName('@ksrq').value := _ksrq;
    sp_cx_yymx.Parameters.ParamByName('@jsrq').value := _jsrq;
    sp_cx_yymx.Parameters.ParamByName('@brzt').Value := _brzt;
    sp_cx_yymx.Open;
    sp_cx_clmx.Close;
    sp_cx_clmx.Parameters.ParamByName('@zyh').value := zy_zyh;
    sp_cx_clmx.Parameters.ParamByName('@ksrq').value := _ksrq;
    sp_cx_clmx.Parameters.ParamByName('@jsrq').value := _jsrq;
    sp_cx_clmx.Parameters.ParamByName('@brzt').Value := _brzt;
    sp_cx_clmx.Open;
  end
  else
  begin
    //ShowMessage( '请稍等，其他操作员正在处理病人!' );
  end;
end;

procedure Tfrm_brrsqd.qdmxPrint(zyh:string);
begin
  sp_yrqd.Close;
  sp_cx_yymx.Close;
  sp_cx_clmx.Close;
  sp_yrqd_dx.close;
  sp_qdxx.Close;
  sp_qdxx.Parameters.ParamByName('@zyh').Value := zy_zyh;
  sp_qdxx.Parameters.ParamByName('@dyrq').Value := qdrq.DateTime;
  sp_qdxx.Parameters.ParamByName('@brzt').Value := _brzt;
  sp_qdxx.Open;
  if sp_qdxx.RecordCount > 0 then
  begin
    _ksrq := sp_qdxx.FieldByName('ksrq').AsDateTime;
    _jsrq := sp_qdxx.FieldByName('jsrq').AsDateTime;
    sp_yrqd.Close;
    sp_yrqd.Parameters.ParamByName('@zyh').value := zy_zyh;
    sp_yrqd.Parameters.ParamByName('@ksrq').value := _ksrq;
    sp_yrqd.Parameters.ParamByName('@jsrq').value := _jsrq;
    sp_yrqd.Parameters.ParamByName('@brzt').Value := _brzt;
    sp_yrqd.Open;
    sp_yrqd_dx.Parameters.Refresh;
    sp_yrqd_dx.close;
    sp_yrqd_dx.Parameters.ParamByName('@zyh').value := zy_zyh;
    sp_yrqd_dx.Parameters.ParamByName('@ksrq').value := _ksrq;
    sp_yrqd_dx.Parameters.ParamByName('@jsrq').value := _jsrq;
    sp_yrqd_dx.Parameters.ParamByName('@brzt').Value := _brzt;
    sp_yrqd_dx.Open;
    sp_cx_yymx.Close;
    sp_cx_yymx.Parameters.ParamByName('@zyh').value := zy_zyh;
    sp_cx_yymx.Parameters.ParamByName('@ksrq').value := _ksrq;
    sp_cx_yymx.Parameters.ParamByName('@jsrq').value := _jsrq;
    sp_cx_yymx.Parameters.ParamByName('@brzt').Value := _brzt;
    sp_cx_yymx.Open;
    sp_cx_clmx.Close;
    sp_cx_clmx.Parameters.ParamByName('@zyh').value := zy_zyh;
    sp_cx_clmx.Parameters.ParamByName('@ksrq').value := _ksrq;
    sp_cx_clmx.Parameters.ParamByName('@jsrq').value := _jsrq;
    sp_cx_clmx.Parameters.ParamByName('@brzt').Value := _brzt;
    sp_cx_clmx.Open;
  end
  else
  begin
    //ShowMessage( '请稍等，其他操作员正在处理病人!' );
  end;
end;


procedure Tfrm_brrsqd.pro_cxyrqd;
begin
  DBGrid2.Visible := false;

  zy_zyh := qry_yrqdpub.fieldbyname('zyh').asstring;
  zy_tmh := qry_yrqdpub.fieldbyname('tmh').asstring;
  zy_brxm := qry_yrqdpub.fieldbyname('brxm').asstring;
  tmh.Text := zy_tmh;

  if chk_cybd.Checked then
  begin
    ad_zybr.Close;
    ad_zybr.Parameters.ParamByName('bqdm').value := qry_yrqdpub.fieldbyname('zyh').asstring;
    ad_zybr.Parameters.ParamByName('brzt').value := '出院';
    ad_zybr.Open;
  end;
  qdmx;
end;

procedure Tfrm_brrsqd.BitBtn5Click(Sender: TObject);
begin
  _gdbz := true;
  qrband2.enabled := true;
  qrband3.enabled := true;
  qrband6.Enabled := true;
  QRSubDetail1.Enabled := true;
  QRSubDetail2.Enabled := true;
  qrband5.Enabled := true;
  if yrqd_xzdykg then
  begin
    ad_zybr.First;
    while not ad_zybr.eof  do
    begin
      if ad_zybr.FieldByName('yrqddybz').value then
      begin
            print_fyqd(4);
      end;
      ad_zybr.Next;
    end;
    application.MessageBox('打印完毕！', '提示', 0 + 48);
  end else
  begin
   print_fyqd(4);
  end;
  _gdbz := false;
end;

procedure Tfrm_brrsqd.BitBtn6Click(Sender: TObject);
begin
  _gdbz := true;
  qrband2.enabled := true;
  qrband3.enabled := true;
  qrband6.Enabled := true;
  QRSubDetail1.Enabled := true;
  QRSubDetail2.Enabled := true;
  qrband5.Enabled := true;
  if yrqd_xzdykg then
  begin
    ad_zybr.First;
    while not ad_zybr.eof  do
    begin
      if ad_zybr.FieldByName('yrqddybz').value then
      begin
              print_fyqd(3);
      end;
      ad_zybr.Next;
    end;
    application.MessageBox('打印完毕！', '提示', 0 + 48);
  end else
  begin
     print_fyqd(3);
  end;
  _gdbz := false;
end;

procedure Tfrm_brrsqd.btn_dyxzClick(Sender: TObject);
begin
  if ad_zybr.FieldByName('brzt').Value='在院' then
  begin
       ad_zybr.First;
    if btn_dyxz.Caption='全选' then
    begin
     btn_dyxz.Caption:='全不选';
     while not ad_zybr.eof  do
     begin
        qry_dyxx.Close;
        qry_dyxx.sql.Text:='UPDATE zysf_zydj SET yrqddybz=1 WHERE tmh='''+ad_zybr.FieldByName('tmh').Value+''' AND zyh='''+ad_zybr.FieldByName('zyh').Value+'''';
        qry_dyxx.ExecSQL;
        ad_zybr.Next;
     end;
    end else
    begin
     btn_dyxz.Caption:='全选';
     while not ad_zybr.eof  do
     begin
        qry_dyxx.Close;
        qry_dyxx.sql.Text:='UPDATE zysf_zydj SET yrqddybz=0 WHERE tmh='''+ad_zybr.FieldByName('tmh').Value+''' AND zyh='''+ad_zybr.FieldByName('zyh').Value+'''';
        qry_dyxx.ExecSQL;
        ad_zybr.Next;
     end;
    end;

    ad_zybr.Close;
    ad_zybr.Parameters.ParamByName('bqdm').value := ad_bqdm.fieldbyname('bqdm').asstring;
    ad_zybr.Parameters.ParamByName('brzt').value := '在院';
    ad_zybr.Open;
  end;
end;

procedure Tfrm_brrsqd.chk_cybdClick(Sender: TObject);
begin
  pldy.Checked := not chk_cybd.Checked;
  if chk_cybd.checked then
  begin
    ad_zybr.close;
    tmh.setfocus;
    _cxbz := false;
  end
  else
  begin
    _cxbz := true;
    ad_zybr.Close;
    ad_zybr.Parameters.ParamByName('bqdm').value := ad_bqdm.fieldbyname('bqdm').asstring;
    ad_zybr.Parameters.ParamByName('brzt').value := '在院';
    ad_zybr.Open;

  end;

end;

procedure Tfrm_brrsqd.cxButton1Click(Sender: TObject);
begin

  qrband2.enabled := true;
  qrband3.enabled := true;
  qrband6.Enabled := true;
  QRSubDetail1.Enabled := true;
  QRSubDetail2.Enabled := true;
  qrband5.Enabled := true;
  if yrqd_xzdykg then
  begin
    ad_zybr.First;
    while not ad_zybr.eof  do
    begin
      if ad_zybr.FieldByName('yrqddybz').value then
      begin
          print_fyqd(1);
      end;
      ad_zybr.Next;
    end;
    application.MessageBox('打印完毕！', '提示', 0 + 48);
  end else
  begin
     print_fyqd(1);
  end;
end;

procedure Tfrm_brrsqd.QRGroup2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var
  str: string;
begin
  li := 0;
  str := Trim(sp_brqd.FieldByName('zyh').AsString);
  ad_zybr.Locate('zyh', str, []);
  sp_qdxx.Close;
  sp_qdxx.Parameters.Refresh;
  sp_qdxx.Parameters.ParamByName('@zyh').Value := str;
  sp_qdxx.Parameters.ParamByName('@dyrq').Value := qdrq.DateTime;
  sp_qdxx.Parameters.ParamByName('@brzt').Value := _brzt;
  sp_qdxx.Open;
  qrlbl_zyj.Caption := sp_qdxx.FieldByName('zyj').AsString;
  qrlbl_zfy.Caption := sp_qdxx.FieldByName('zfy').AsString;
  qrlbl_ye.Caption := floattostr(sp_qdxx.FieldByName('zyj').AsFloat - sp_qdxx.FieldByName('zfy').AsFloat);
  qrl_qdrq.Caption := '清单日期:' + formatdatetime('yyyy-mm-dd hh:mm:ss', sp_brqd.fieldbyname('ksrq').asdatetime) + '-' +
    formatdatetime('yyyy-mm-dd hh:mm:ss', sp_brqd.fieldbyname('jsrq').asdatetime);

end;

procedure Tfrm_brrsqd.QRSubDetail1NeedData(Sender: TObject;
  var MoreData: Boolean);
var
  I: integer;
begin
  MoreData := True;
  i := 1;
  if sp_yrqd.Eof then

    MoreData := False;
  fy1.Caption := '';
  sl1.Caption := '';
  je1.Caption := '';
  sfy1.Caption := '';
  fy2.Caption := '';
  sl2.Caption := '';
  je2.Caption := '';
  sfy2.Caption := '';
  fy3.Caption := '';
  sl3.Caption := '';
  je3.Caption := '';
  sfy3.Caption := '';
  for i := 1 to 3 do
  begin
    if sp_yrqd.eof then
      break;
    case I of
      1:
        begin
          if length(trim(sp_yrqd.FieldByName('fymc').AsString)) > 16 then
            fy1.Font.Size := 7
          else
            fy1.Font.size := 9;
          fy1.Caption := sp_yrqd.FieldByName('fymc').AsString;
          sl1.Caption := sp_yrqd.FieldByName('fysl').asstring;
          je1.Caption := sp_yrqd.FieldByName('fyje').AsString;
          sfy1.Caption := sp_yrqd.FieldByName('mc').asstring;
        end;
      2:
        begin
          if length(trim(sp_yrqd.FieldByName('fymc').AsString)) > 16 then
            fy2.Font.Size := 7
          else
            fy2.Font.size := 9;
          fy2.Caption := sp_yrqd.FieldByName('fymc').AsString;
          sl2.Caption := sp_yrqd.FieldByName('fysl').asstring;
          je2.Caption := sp_yrqd.FieldByName('fyje').AsString;
          sfy2.Caption := sp_yrqd.FieldByName('mc').asstring;
        end;
      3:
        begin
          if length(trim(sp_yrqd.FieldByName('fymc').AsString)) > 16 then
            fy3.Font.Size := 7
          else
            fy3.Font.size := 9;
          fy3.Caption := sp_yrqd.FieldByName('fymc').AsString;
          sl3.Caption := sp_yrqd.FieldByName('fysl').asstring;
          je3.Caption := sp_yrqd.FieldByName('fyje').AsString;
          sfy3.Caption := sp_yrqd.FieldByName('mc').asstring;
        end;
    end;
    sp_yrqd.Next;
  end;
end;

procedure Tfrm_brrsqd.QRSubDetail2NeedData(Sender: TObject;
  var MoreData: Boolean);
var
  I: integer;
begin
  MoreData := True;

  i := 1;
  if sp_cx_yymx.eof then
    MoreData := False;
  ypmc1.Caption := '';
  gg1.Caption := '';
  dw1.Caption := '';
  ypsl1.Caption := '';
  ypdj1.Caption := '';
  ypmc2.Caption := '';
  gg2.Caption := '';
  dw2.Caption := '';
  ypsl2.Caption := '';
  ypdj2.Caption := '';
  for i := 1 to 2 do
  begin
    if sp_cx_yymx.eof then
      break;
    case I of
      1:
        begin
          if length(trim(sp_yrqd.FieldByName('fymc').AsString)) > 30 then
            ypmc1.Font.Size := 7
          else
            ypmc1.Font.size := 9;
          ypmc1.caption := trim(sp_cx_yymx.fieldbyname('ypmc').asstring);
          gg1.caption := trim(sp_cx_yymx.fieldbyname('ypgg').asstring);
          dw1.caption := trim(sp_cx_yymx.fieldbyname('ypdw').asstring);
          ypsl1.caption := trim(sp_cx_yymx.fieldbyname('ypsl').asstring);
          ypdj1.caption := trim(sp_cx_yymx.fieldbyname('ypje').asstring);
        end;
      2:
        begin
          if length(trim(sp_yrqd.FieldByName('fymc').AsString)) > 30 then
            ypmc2.Font.Size := 7
          else
            ypmc2.Font.size := 9;
          ypmc2.caption := trim(sp_cx_yymx.fieldbyname('ypmc').asstring);
          gg2.caption := trim(sp_cx_yymx.fieldbyname('ypgg').asstring);
          dw2.caption := trim(sp_cx_yymx.fieldbyname('ypdw').asstring);
          ypsl2.caption := trim(sp_cx_yymx.fieldbyname('ypsl').asstring);
          ypdj2.caption := trim(sp_cx_yymx.fieldbyname('ypje').asstring);
        end;
    end;
    sp_cx_yymx.Next;
  end;
end;

procedure Tfrm_brrsqd.pldyClick(Sender: TObject);
begin
  if pldy.Checked then
  begin
    chk_cybd.Checked := false;
  end;
end;

procedure Tfrm_brrsqd.FormCreate(Sender: TObject);
begin
  qry_dyxx.Close;
  qry_dyxx.sql.Text:='SELECT yrqd_xzdy FROM sys_xt_kg';
  qry_dyxx.open;
  yrqd_xzdykg:=qry_dyxx.FieldByName('yrqd_xzdy').Value;
  if not yrqd_xzdykg then
  begin
    DBGridEh4.Columns[0].Free;
    btn_dyxz.Visible:=false;
  end;
  
end;

procedure Tfrm_brrsqd.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = VK_F12) and (ssAlt in Shift) then
    zd_print := true;
end;

procedure Tfrm_brrsqd.ad_bqdmAfterScroll(DataSet: TDataSet);
begin
  if not prv_rep_Scroll then Exit;
  begin
    ad_zybr.Close;
    ad_zybr.Parameters.ParamByName('bqdm').value := ad_bqdm.fieldbyname('bqdm').asstring;
    ad_zybr.Parameters.ParamByName('brzt').value := '在院';
    ad_zybr.Open;
  end;
end;
//病区打印病人一日清单；

procedure pro_bryrqd_bq;
begin
  try
    Application.CreateForm(Tfrm_brrsqd, frm_brrsqd);

    frm_brrsqd.ShowModal;
  finally
    frm_brrsqd.Free;
  end;
end;

initialization
  RegisterClass(Tfrm_brrsqd);
end.

