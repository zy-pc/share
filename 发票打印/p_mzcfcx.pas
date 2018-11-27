unit p_mzcfcx;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, ExtCtrls, Db, DBTables, Grids, DBGrids, Menus,
  Buttons, ADODB, QuickRpt, Qrctrls, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGrid, cxSplitter;

type
  TFrm_mzcfcx = class(TForm)
    Panel1: TPanel;
    DS_zb: TDataSource;
    DS_mx: TDataSource;
    Menu1: TPopupMenu;
    GroupBox1: TGroupBox;
    Radio1: TRadioButton;
    Date1: TDateTimePicker;
    Label1: TLabel;
    Date2: TDateTimePicker;
    Radio3: TRadioButton;
    e_bh1: TEdit;
    e_bh2: TEdit;
    e_bh3: TEdit;
    Check1: TCheckBox;
    B_cx: TBitBtn;
    N3: TMenuItem;
    N4: TMenuItem;
    N6: TMenuItem;
    Radio2: TRadioButton;
    E_tmh: TEdit;
    Qry_zb_ls: TADOQuery;
    Qry_zb_bf_ls: TADOQuery;
    SP_mx: TADOStoredProc;
    radio4: TRadioButton;
    e_xm: TEdit;
    Panel2: TPanel;
    GroupBox2: TGroupBox;
    RB1: TRadioButton;
    RB2: TRadioButton;
    RB3: TRadioButton;
    RB5: TRadioButton;
    RB4: TRadioButton;
    sp_zb: TADOStoredProc;
    Label2: TLabel;
    mbmc: TEdit;
    BitBtn2: TBitBtn;
    b_close: TBitBtn;
    BitBtn1: TBitBtn;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1tmh: TcxGridDBColumn;
    cxGrid1DBTableView1cfbh: TcxGridDBColumn;
    cxGrid1DBTableView1brxm: TcxGridDBColumn;
    cxGrid1DBTableView1cfzje: TcxGridDBColumn;
    cxGrid1DBTableView1sszje: TcxGridDBColumn;
    cxGrid1DBTableView1hjczy: TcxGridDBColumn;
    cxGrid1DBTableView1sfczy: TcxGridDBColumn;
    cxGrid1DBTableView1fyczy: TcxGridDBColumn;
    cxGrid1DBTableView1tyczy: TcxGridDBColumn;
    cxGrid1DBTableView1sfbz: TcxGridDBColumn;
    cxGrid1DBTableView1fybz: TcxGridDBColumn;
    cxGrid1DBTableView1tfbz: TcxGridDBColumn;
    cxGrid1DBTableView1tybz: TcxGridDBColumn;
    cxGrid1DBTableView1hjrq: TcxGridDBColumn;
    cxGrid1DBTableView1sfrq: TcxGridDBColumn;
    cxGrid1DBTableView1fyrq: TcxGridDBColumn;
    cxGrid1DBTableView1tyrq: TcxGridDBColumn;
    cxGrid1DBTableView1cfjl: TcxGridDBColumn;
    cxGrid1DBTableView1cflb: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    sp_save_cfmb: TADOStoredProc;
    cxSplitter1: TcxSplitter;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    cxGrid2DBTableView1xh: TcxGridDBColumn;
    cxGrid2DBTableView1ypdw: TcxGridDBColumn;
    cxGrid2DBTableView1ypsl: TcxGridDBColumn;
    cxGrid2DBTableView1ypdj: TcxGridDBColumn;
    cxGrid2DBTableView1ypje: TcxGridDBColumn;
    cxGrid2DBTableView1ypmc1: TcxGridDBColumn;
    cxGrid2DBTableView1ypgg: TcxGridDBColumn;
    cxGrid2DBTableView1yf: TcxGridDBColumn;
    cxGrid2DBTableView1yl: TcxGridDBColumn;
    cxGrid2DBTableView1yytj: TcxGridDBColumn;
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    xm: TQRLabel;
    xb: TQRLabel;
    nl: TQRLabel;
    cfh: TQRLabel;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRLabel4: TQRLabel;
    QRDBText11: TQRDBText;
    yymc: TQRLabel;
    QRLabel2: TQRLabel;
    QRDBText15: TQRDBText;
    QRDBText14: TQRDBText;
    QRLabel5: TQRLabel;
    QRDBText16: TQRDBText;
    QRBand2: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRBand3: TQRBand;
    ysxm: TQRLabel;
    fhr: TQRLabel;
    fyr: TQRLabel;
    QRLabel1: TQRLabel;
    QRDBText13: TQRDBText;
    QRGroup1: TQRGroup;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QuickRep_zy: TQuickRep;
    QRBand4: TQRBand;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRDBText21: TQRDBText;
    QRDBText22: TQRDBText;
    QRDBText23: TQRDBText;
    QRDBText24: TQRDBText;
    QRLabel16: TQRLabel;
    QRDBText25: TQRDBText;
    QRL_yymc_zy: TQRLabel;
    QRLabel17: TQRLabel;
    QRDBText26: TQRDBText;
    QRLabel18: TQRLabel;
    QRDBText27: TQRDBText;
    QRDBText38: TQRDBText;
    QRLabel23: TQRLabel;
    QRLabel19: TQRLabel;
    QRDBText28: TQRDBText;
    QRBand7: TQRBand;
    QRL_ysxm_ysxm: TQRLabel;
    QRL_fhr_zy: TQRLabel;
    QRL_fyr_zy: TQRLabel;
    QRLabel22: TQRLabel;
    QRDBText37: TQRDBText;
    QRSubDetail1: TQRSubDetail;
    GroupHeaderBand1: TQRBand;
    qrdbtxt_cflx: TQRDBText;
    QRLabel3: TQRLabel;
    QRDBText18: TQRDBText;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    cxGrid2DBTableView1yldw: TcxGridDBColumn;
    cb_yl: TCheckBox;
    QRDBText29: TQRDBText;
    QRLabel37: TQRLabel;
    QuickRep_zy_lj: TQuickRep;
    QRBand6: TQRBand;
    QRL_yymc_zy_lj: TQRLabel;
    QRLabel44: TQRLabel;
    QRDBText30: TQRDBText;
    QRLabel46: TQRLabel;
    QRDBText31: TQRDBText;
    QRLabel81: TQRLabel;
    QRDBText32: TQRDBText;
    QRLabel82: TQRLabel;
    QRDBText33: TQRDBText;
    QRLabel83: TQRLabel;
    QRDBText34: TQRDBText;
    QRLabel84: TQRLabel;
    QRDBText35: TQRDBText;
    QRLabel85: TQRLabel;
    QRDBText72: TQRDBText;
    QRLabel86: TQRLabel;
    QRDBText73: TQRDBText;
    QRLabel87: TQRLabel;
    QRDBText74: TQRDBText;
    QRBand16: TQRBand;
    QRShape25: TQRShape;
    QRLabel88: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel89: TQRLabel;
    QRL_ysxm_ysxm_lj: TQRLabel;
    QRL_fhr_zy_lj: TQRLabel;
    QRL_fyr_zy_lj: TQRLabel;
    QRLabel97: TQRLabel;
    QRDBText75: TQRDBText;
    QRSubDetail3: TQRSubDetail;
    QRL_ypmc_lj1: TQRLabel;
    QRL_ypsl_lj1: TQRLabel;
    QRL_ypdw_lj1: TQRLabel;
    QRL_ypdj_lj1: TQRLabel;
    QRL_ypmc_lj2: TQRLabel;
    QRL_ypsl_lj2: TQRLabel;
    QRL_ypdw_lj2: TQRLabel;
    QRL_ypdj_lj2: TQRLabel;
    QRL_ypdj_lj3: TQRLabel;
    QRL_ypdw_lj3: TQRLabel;
    QRL_ypsl_lj3: TQRLabel;
    QRL_ypmc_lj3: TQRLabel;
    QRL_ypdj_lj4: TQRLabel;
    QRL_ypdw_lj4: TQRLabel;
    QRL_ypsl_lj4: TQRLabel;
    QRL_ypmc_lj4: TQRLabel;
    QRBand17: TQRBand;
    QRLabel114: TQRLabel;
    QRLabel115: TQRLabel;
    QRLabel116: TQRLabel;
    QRLabel117: TQRLabel;
    QRLabel118: TQRLabel;
    QRLabel119: TQRLabel;
    QRLabel120: TQRLabel;
    QRLabel121: TQRLabel;
    QRLabel122: TQRLabel;
    QRLabel123: TQRLabel;
    QRLabel124: TQRLabel;
    QRLabel125: TQRLabel;
    QRShape26: TQRShape;
    QRShape32: TQRShape;
    QRBand18: TQRBand;
    QRLabel126: TQRLabel;
    QRShape33: TQRShape;
    bt_pldy: TBitBtn;
    lable_mc1: TQRLabel;
    lable_yl1: TQRLabel;
    lable_bz1: TQRLabel;
    lable_mc2: TQRLabel;
    lable_yl2: TQRLabel;
    lable_bz2: TQRLabel;
    lable_mc3: TQRLabel;
    lable_yl3: TQRLabel;
    lable_bz3: TQRLabel;
    lable_mc4: TQRLabel;
    lable_yl4: TQRLabel;
    lable_bz4: TQRLabel;
    QRL_ypmc1: TQRLabel;
    QRL_ypsl1: TQRLabel;
    QRL_ypdw1: TQRLabel;
    QRL_ypdj1: TQRLabel;
    QRL_ypmc2: TQRLabel;
    QRL_ypsl2: TQRLabel;
    QRL_ypdw2: TQRLabel;
    QRL_ypdj2: TQRLabel;
    QRL_ypmc3: TQRLabel;
    QRL_ypsl3: TQRLabel;
    QRL_ypdw3: TQRLabel;
    QRL_ypdj3: TQRLabel;
    QRL_ypmc4: TQRLabel;
    QRL_ypsl4: TQRLabel;
    QRL_ypdw4: TQRLabel;
    QRL_ypdj4: TQRLabel;
    QRShape27: TQRShape;
    QRShape31: TQRShape;
    QRLabel20: TQRLabel;
    QRShape24: TQRShape;
    QRL_jffqz: TQRLabel;
    QRDBText36: TQRDBText;
    qckrp1: TQuickRep;
    qrbnd1: TQRBand;
    QRLabel21: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRDBText39: TQRDBText;
    QRDBText40: TQRDBText;
    QRDBText41: TQRDBText;
    QRDBText42: TQRDBText;
    QRLabel27: TQRLabel;
    QRDBText43: TQRDBText;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRDBText44: TQRDBText;
    QRLabel30: TQRLabel;
    QRDBText45: TQRDBText;
    QRDBText46: TQRDBText;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRDBText47: TQRDBText;
    QRDBText48: TQRDBText;
    QRLabel33: TQRLabel;
    qrshp1: TQRShape;
    QRDBText49: TQRDBText;
    qrbnd2: TQRBand;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRDBText50: TQRDBText;
    QRLabel42: TQRLabel;
    QRSubDetail2: TQRSubDetail;
    QRLabel43: TQRLabel;
    QRLabel45: TQRLabel;
    QRLabel47: TQRLabel;
    QRLabel48: TQRLabel;
    QRLabel49: TQRLabel;
    QRLabel50: TQRLabel;
    QRLabel51: TQRLabel;
    QRLabel52: TQRLabel;
    QRLabel53: TQRLabel;
    QRLabel54: TQRLabel;
    QRLabel55: TQRLabel;
    QRLabel56: TQRLabel;
    QRLabel57: TQRLabel;
    QRLabel58: TQRLabel;
    QRLabel59: TQRLabel;
    QRLabel60: TQRLabel;
    qrbnd3: TQRBand;
    QRLabel61: TQRLabel;
    QRLabel62: TQRLabel;
    QRLabel63: TQRLabel;
    QRLabel64: TQRLabel;
    QRLabel65: TQRLabel;
    QRLabel66: TQRLabel;
    QRLabel67: TQRLabel;
    QRLabel68: TQRLabel;
    QRLabel69: TQRLabel;
    QRLabel70: TQRLabel;
    QRLabel71: TQRLabel;
    QRLabel72: TQRLabel;
    qrshp2: TQRShape;
    qrshp3: TQRShape;
    qrbnd4: TQRBand;
    QRLabel73: TQRLabel;
    qrshp4: TQRShape;
    QRLabel34: TQRLabel;
    QRLabel74: TQRLabel;
    QRLabel75: TQRLabel;
    QRLabel76: TQRLabel;
    qckrp2: TQuickRep;
    qrbnd5: TQRBand;
    QRLabel77: TQRLabel;
    QRLabel78: TQRLabel;
    QRLabel79: TQRLabel;
    QRLabel80: TQRLabel;
    QRDBText51: TQRDBText;
    QRDBText52: TQRDBText;
    QRDBText53: TQRDBText;
    QRDBText54: TQRDBText;
    QRLabel90: TQRLabel;
    QRDBText55: TQRDBText;
    QRLabel91: TQRLabel;
    QRLabel92: TQRLabel;
    QRDBText56: TQRDBText;
    QRDBText57: TQRDBText;
    QRLabel93: TQRLabel;
    QRDBText58: TQRDBText;
    QRLabel94: TQRLabel;
    QRDBText59: TQRDBText;
    QRDBText60: TQRDBText;
    QRLabel95: TQRLabel;
    qrbnd6: TQRBand;
    QRDBText61: TQRDBText;
    QRDBText62: TQRDBText;
    QRDBText63: TQRDBText;
    QRDBText64: TQRDBText;
    QRDBText65: TQRDBText;
    QRDBText66: TQRDBText;
    QRDBText67: TQRDBText;
    QRDBText68: TQRDBText;
    QRDBText69: TQRDBText;
    QRDBText70: TQRDBText;
    qrbnd7: TQRBand;
    QRLabel96: TQRLabel;
    QRLabel98: TQRLabel;
    QRLabel99: TQRLabel;
    QRLabel100: TQRLabel;
    QRDBText71: TQRDBText;
    QRLabel101: TQRLabel;
    QRLabel102: TQRLabel;
    QRGroup2: TQRGroup;
    QRLabel103: TQRLabel;
    QRLabel104: TQRLabel;
    QRLabel105: TQRLabel;
    QRLabel106: TQRLabel;
    QRLabel107: TQRLabel;
    QRLabel108: TQRLabel;
    QRLabel109: TQRLabel;
    QRLabel110: TQRLabel;
    qrbnd8: TQRBand;
    QRLabel111: TQRLabel;
    QRLabel112: TQRLabel;
    QRLabel113: TQRLabel;
    QRLabel127: TQRLabel;
    procedure Date1Change(Sender: TObject);
    procedure Date3Change(Sender: TObject);
    procedure e_bh1Change(Sender: TObject);
    procedure Radio1Click(Sender: TObject);
    procedure Radio2Click(Sender: TObject);
    procedure Radio3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Check1Click(Sender: TObject);
    procedure B_cxClick(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure e_bh3KeyPress(Sender: TObject; var Key: Char);
    procedure E_sjbhKeyPress(Sender: TObject; var Key: Char);
    procedure e_bh1KeyPress(Sender: TObject; var Key: Char);
    procedure e_bh2KeyPress(Sender: TObject; var Key: Char);
    procedure N6Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure N10Click(Sender: TObject);
    procedure E_tmhChange(Sender: TObject);
    procedure E_tmhKeyPress(Sender: TObject; var Key: Char);
    procedure RB2Click(Sender: TObject);
    procedure RB3Click(Sender: TObject);
    procedure RB1Click(Sender: TObject);
    procedure radio4Click(Sender: TObject);
    procedure QRDBText1Print(sender: TObject; var Value: string);
    procedure QRDBText3Print(sender: TObject; var Value: string);
    procedure BitBtn1Click(Sender: TObject);
    procedure b_closeClick(Sender: TObject);
    procedure QRDBText5Print(sender: TObject; var Value: string);
    procedure RB5Click(Sender: TObject);
    procedure RB4Click(Sender: TObject);
    procedure cxGrid1DBTableView1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure BitBtn2Click(Sender: TObject);
    procedure cxGrid2DBTableView1xhCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGrid1DBTableView1tmhCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure QRSubDetail1NeedData(Sender: TObject; var MoreData: Boolean);
    procedure cxGrid1DBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxGrid1DBTableView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure QRSubDetail3NeedData(Sender: TObject; var MoreData: Boolean);
    procedure bt_pldyClick(Sender: TObject);
  private
    { Private declarations }
    p_sql, p_bf_sql, p_order, p_cxtj: string;
    p_cxbf: Integer;
    {p_sql 存放原qry_zb的SQL语句
     p_bf_sql 存放原qry_zb_bf的SQL语句
     p_order 存放排序语句
     p_cxtj 存放查询条件 }
    prv_rep: Boolean;
  public
    v_yfqyzdybb: Boolean;
    { Public declarations }
  end;

var
  Frm_mzcfcx: TFrm_mzcfcx;

implementation

uses p_dm, p_login, p_select, p_print_xyjkd, p_func, p_print_mzcf,
  p_mzsf_print_service, p_mzcfpldy, p_zysf_print_service;//, p_print_mzcf_fy;

{$R *.DFM}

procedure TFrm_mzcfcx.Date1Change(Sender: TObject);
begin
  radio1.Checked := true;
  radio1.Font.Color := clred;
  radio2.Font.Color := clblack;
  radio3.Font.Color := clblack;
  sp_zb.close;
  sp_mx.close;
end;

procedure TFrm_mzcfcx.Date3Change(Sender: TObject);
begin
  radio2.Checked := true;
  radio2.Font.Color := clred;
  radio1.Font.Color := clblack;
  radio3.Font.Color := clblack;
  sp_zb.close;
  sp_mx.close;
end;

procedure TFrm_mzcfcx.e_bh1Change(Sender: TObject);
begin
  radio3.Checked := true;
  radio3.Font.Color := clred;
  radio1.Font.Color := clblack;
  radio2.Font.Color := clblack;
  sp_zb.close;
  sp_mx.close;
end;

procedure TFrm_mzcfcx.Radio1Click(Sender: TObject);
begin
  radio1.Font.Color := clred;
  radio2.Font.Color := clblack;
  radio3.Font.Color := clblack;
  sp_zb.close;
  sp_mx.close;
end;

procedure TFrm_mzcfcx.Radio2Click(Sender: TObject);
begin
  radio2.Font.Color := clred;
  radio1.Font.Color := clblack;
  radio3.Font.Color := clblack;
  sp_zb.close;
  sp_mx.close;
  e_tmh.SetFocus;
end;

procedure TFrm_mzcfcx.Radio3Click(Sender: TObject);
begin
  radio3.Font.Color := clred;
  radio1.Font.Color := clblack;
  radio2.Font.Color := clblack;
  sp_zb.close;
  sp_mx.close;
  e_bh3.SetFocus;

end;

procedure TFrm_mzcfcx.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
  procedure ClearEditText(aControl: TEdit);
  begin
    if aControl <> nil then
    begin
      aControl.Text := '';
    end;
  end;
begin
  if key = 27 then
  begin
    if ActiveControl is TEdit then
      ClearEditText(TEdit(ActiveControl));
  end;
end;

procedure TFrm_mzcfcx.FormShow(Sender: TObject);
begin
  //罗江县人民医院特殊处理
  //  DBGrid1.Columns.Items[5].Visible := (pub_yydm <> '0046');
  //  DBGrid1.Columns.Items[7].Visible := (pub_yydm <> '0046');
  //--------------------------------------------------
  bt_pldy.Visible := ((pub_yydm = '0003') and (username = 'sys_zyyf'));
  QuickRep1.Visible := False;
  QuickRep_zy.Visible := False;
  QuickRep_zy_lj.Visible := False;
  //  p_sql := qry_zb.sql.Text;
  //  p_bf_sql := qry_zb_bf.sql.Text;
  p_order := '';
  p_cxtj := '';
  e_bh1.Text := formatdatetime('yyyy', frm_func.curr_date);
  e_bh2.Text := formatdatetime('mm', frm_func.curr_date);
  radio1.Checked := true;
  cb_yl.Checked := True;
  date1.DateTime := frm_func.curr_date;
  date2.DateTime := frm_func.curr_date;
  b_cx.SetFocus;
  DM_data.qry_pub.Close;
  DM_data.qry_pub.SQL.Text := 'select * from sys_xt_kg';
  DM_data.qry_pub.Open;
  if not Assigned(DM_data.qry_pub.FindField('yfqyzdybb')) then
  begin
    DM_data.qry_pub.Close;
    DM_data.qry_pub.SQL.Text := 'alter table sys_xt_kg add yfqyzdybb bit default 0';
    DM_data.qry_pub.ExecSQL;
    v_yfqyzdybb := False;
  end
  else
  begin
    v_yfqyzdybb := DM_data.qry_pub.FieldByName('yfqyzdybb').AsBoolean;
  end;
end;

procedure TFrm_mzcfcx.Check1Click(Sender: TObject);
begin
  sp_zb.close;
  sp_mx.close;
end;

procedure TFrm_mzcfcx.cxGrid1DBTableView1CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  //sp_zb.RecNo:=cxgrid1dbtableview1.datacontroller.FocusedRowIndex+1;
  //ShowMessage(IntToStr(cxgrid1dbtableview1.datacontroller.FocusedRowIndex));
  //ShowMessage(inttostr(sp_zb.RecNo));
  //ShowMessage(sp_zb.FieldByName('cfbh').asstring);
  //Exit;
  if prv_rep then
  begin
    sp_mx.close;
    if sp_zb.RecordCount <> 0 then
    begin
      if (sp_zb['fybz'] = '否') and (sp_zb['sfbz'] = '否') and (pub_jkddybz = true) then
        n6.Enabled := true
      else
        n6.Enabled := false;
      if check1.Checked then //历史处方
      begin
        sp_mx.close;
        sp_mx.Parameters.ParamByName('@cfbh').value := sp_zb['cfbh'];
        sp_mx.Parameters.ParamByName('@cflb').value := 1;
        sp_mx.open;
      end
      else
      begin
        sp_mx.close;
        sp_mx.Parameters.ParamByName('@cfbh').value := sp_zb['cfbh'];
        sp_mx.Parameters.ParamByName('@cflb').value := 0;
        sp_mx.open;
      end;
    end;
    bitbtn1.Enabled := not sp_mx.IsEmpty;
  end;
end;

procedure TFrm_mzcfcx.cxGrid1DBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if sp_zb.RecordCount <> 0 then
    if sp_zb.FieldByName('tybz').asstring = '是' then
    begin
      ACanvas.Brush.Color := cllime;
      ACanvas.Font.Color := clblue;
    end;
end;

procedure TFrm_mzcfcx.cxGrid1DBTableView1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = 40) or (Key = 38) then
    key := 0;
end;

procedure TFrm_mzcfcx.cxGrid1DBTableView1tmhCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  ACanvas.Brush.Color := clGreen;
end;

procedure TFrm_mzcfcx.cxGrid2DBTableView1xhCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  ACanvas.Brush.Color := clGreen;
end;

procedure TFrm_mzcfcx.BitBtn2Click(Sender: TObject);
var
  sczt: string;
begin
  if sp_zb.Active then
    if sp_zb.RecordCount >= 1 then
      if trim(mbmc.Text) = '' then
      begin
        application.MessageBox('提示:模板名称不能为空!', '提示', 0 + 48);
        mbmc.SetFocus;
        mbmc.SelectAll;
      end
      else
      begin
        sp_save_cfmb.Active := false;
        sp_save_cfmb.Parameters.ParamByName('@cfbh').Value := sp_zb.FieldByName('cfbh').AsString;
        sp_save_cfmb.Parameters.ParamByName('@mbmc').Value := mbmc.Text;
        sp_save_cfmb.Parameters.ParamByName('@czy').Value := pub_czydm;
        sp_save_cfmb.Parameters.ParamByName('@ksdm').Value := pub_ksdm;
        sp_save_cfmb.Parameters.ParamByName('@pym').Value := getpym(mbmc.Text);
        sp_save_cfmb.Parameters.ParamByName('@sczt').Value := '';
        sp_save_cfmb.ExecProc;
        sczt := sp_save_cfmb.Parameters.ParamByName('@sczt').Value;
        application.MessageBox(pchar(sczt), '提示', 0 + 48);
        mbmc.Clear;
      end;
end;

procedure TFrm_mzcfcx.bt_pldyClick(Sender: TObject);
begin
  application.CreateForm(Tfrm_mzcfpldy, frm_mzcfpldy);
  try
    frm_mzcfpldy.ShowModal;
  finally
    frm_mzcfpldy.free;
  end;
end;

procedure TFrm_mzcfcx.b_closeClick(Sender: TObject);
begin
  Close;
end;

procedure TFrm_mzcfcx.B_cxClick(Sender: TObject);
var
  cfbh: string;
  ksrq, jsrq: string;
begin
  rb1.Checked := true;
  p_cxtj := '';
  if radio1.Checked then
  begin
    ksrq := formatdatetime('yyyy-mm-dd', date1.datetime);
    jsrq := formatdatetime('yyyy-mm-dd', date2.datetime);
    p_cxtj := ' and (convert(char(10),hjrq,120)>=' + '''' + ksrq + '''';
    p_cxtj := p_cxtj + ' and convert(char(10),hjrq,120)<dateadd(day,1,' + '''' + jsrq + '''' + ')' + ')';
  end;
  if radio2.Checked then
  begin
    try
      strtoint(trim(e_tmh.text));
    except
      application.MessageBox('请输入正确的门诊号!', '注意', 16);
      e_tmh.SelectAll;
      e_tmh.SetFocus;
      abort;
    end;
    p_cxtj := ' and (zb.tmh like' + '''' + '%' + e_tmh.text + '''' + ')';
  end;
  if radio3.Checked then
  begin
    if (trim(e_bh1.text) = '') or (trim(e_bh2.text) = '') or (trim(e_bh3.text) = '') then
    begin
      application.MessageBox('请输入处方号!', '注意', 16);
      e_bh3.SetFocus;
      abort;
    end;
    try
      cfbh := trim(e_bh1.text) + trim(e_bh2.text) + formatex(strtoint(e_bh3.text), 6);
    except
      application.MessageBox('请输入正确的处方号!', '注意', 16);
      e_bh3.SetFocus;
      abort;
    end;
    p_cxtj := ' and cfbh=' + '''' + cfbh + '''';
  end;
  if radio4.Checked then
    p_cxtj := ' and (zb.brxm like' + '''' + e_xm.text + '%' + '''' + ')';

  sp_zb.close;
  sp_zb.Filtered := false;
  if (UserName = 'sys_mzsf') or (UserName = 'sys_fwzx') then
  begin
    sp_zb.Parameters.ParamByName('@ksdm').value := '';
  end
  else
  begin
    sp_zb.Parameters.ParamByName('@ksdm').value := pub_ksdm;
  end;
  sp_zb.Parameters.ParamByName('@cxtj').Value := p_cxtj;
  if check1.Checked then //查询历史数据
    p_cxbf := 1
  else
    p_cxbf := 0;
  sp_zb.Parameters.ParamByName('@cxbf').Value := p_cxbf;
  prv_rep := False;
  sp_zb.open;
  prv_rep := True;

  sp_mx.close;
  sp_mx.Parameters.ParamByName('@cfbh').value := Trim(sp_zb.FieldByName('cfbh').AsString);
  sp_mx.Parameters.ParamByName('@cflb').value := p_cxbf;
  sp_mx.open;

  if sp_zb.RecordCount = 0 then
  begin
    sp_zb.close;
    if radio1.Checked then
    begin
      application.MessageBox('没有该日期范围内的处方记录!', '注意', 16);
      date1.SetFocus;
      abort;
    end;
    if radio2.Checked then
    begin
      application.MessageBox('没有该门诊号的处方记录!', '注意', 16);
      e_tmh.SelectAll;
      e_tmh.SetFocus;
      abort;
    end;
    if radio3.Checked then
    begin
      application.MessageBox('没有该处方号的处方记录!', '注意', 16);
      e_bh3.SelectAll;
      e_bh3.SetFocus;
      abort;
    end;
  end
  else
  begin
    cxGrid1.SetFocus;
  end;

end;

procedure TFrm_mzcfcx.N3Click(Sender: TObject);
begin
  //  application.CreateForm(Tfrm_select, frm_select);
  //  try
  //    frm_select.select_grid := dbgrid1;
  //    frm_select.ShowModal;
  //  finally
  //    frm_select.free;
  //  end;
end;

procedure TFrm_mzcfcx.e_bh3KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    b_cx.SetFocus;
end;

procedure TFrm_mzcfcx.E_sjbhKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    b_cx.SetFocus;
end;

procedure TFrm_mzcfcx.e_bh1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    e_bh2.SetFocus;
end;

procedure TFrm_mzcfcx.e_bh2KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    e_bh3.SetFocus;
end;

procedure TFrm_mzcfcx.N6Click(Sender: TObject);
begin
  frm_print_xyjkd.Lb_tmh.Caption := '门诊号:  ' + trim(sp_zb.fieldbyname('tmh').asstring);
  frm_print_xyjkd.Lb_cfbh.Caption := '处方号:  ' + trim(sp_zb.fieldbyname('cfbh').asstring);
  frm_print_xyjkd.Lb_je.Caption := '西药金额:  ' + floattostr(sp_zb['sszje']);
  frm_print_xyjkd.lb_czy.Caption := '操作员:  ' + pub_czydm;
  frm_print_xyjkd.QuickRep1.print;
end;

procedure TFrm_mzcfcx.N8Click(Sender: TObject);
begin
  sp_zb.Filtered := false;
  sp_zb.Filter := 'fybz=' + '''' + '是' + '''';
  sp_zb.Filtered := true;
end;

procedure TFrm_mzcfcx.N9Click(Sender: TObject);
begin
  sp_zb.Filtered := false;
  sp_zb.Filter := 'fybz=' + '''' + '否' + '''';
  sp_zb.Filtered := true;
end;

procedure TFrm_mzcfcx.N10Click(Sender: TObject);
begin
  sp_zb.Filtered := false;
end;

procedure TFrm_mzcfcx.E_tmhChange(Sender: TObject);
begin
  radio2.Checked := true;
  radio3.Font.Color := clred;
  radio1.Font.Color := clblack;
  sp_zb.close;
  sp_mx.close;
end;

procedure TFrm_mzcfcx.E_tmhKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    b_cx.SetFocus;
end;

procedure TFrm_mzcfcx.RB2Click(Sender: TObject);
begin
  sp_zb.Filtered := false;
  sp_zb.Filter := 'fybz=' + '''' + '是' + '''';
  sp_zb.Filtered := true;
end;

procedure TFrm_mzcfcx.RB3Click(Sender: TObject);
begin
  sp_zb.Filtered := false;
  sp_zb.Filter := 'fybz=' + '''' + '否' + '''';
  sp_zb.Filtered := true;
end;

procedure TFrm_mzcfcx.RB4Click(Sender: TObject);
begin
  sp_zb.Filtered := false;
  sp_zb.Filter := 'tfbz=' + '''' + '是' + '''';
  sp_zb.Filtered := true;
end;

procedure TFrm_mzcfcx.RB5Click(Sender: TObject);
begin
  sp_zb.Filtered := false;
  sp_zb.Filter := 'tybz=' + '''' + '是' + '''';
  sp_zb.Filtered := true;
end;

procedure TFrm_mzcfcx.RB1Click(Sender: TObject);
begin
  sp_zb.Filtered := false;
end;

procedure TFrm_mzcfcx.radio4Click(Sender: TObject);
begin
  radio4.Font.Color := clred;
  radio1.Font.Color := clblack;
  radio2.Font.Color := clblack;
  radio3.Font.Color := clblack;

  sp_zb.close;
  sp_mx.close;
  e_xm.SetFocus;
end;

procedure TFrm_mzcfcx.QRDBText1Print(sender: TObject; var Value: string);
begin
  value := '  ' + trim(value) + '㊣';
end;

procedure TFrm_mzcfcx.QRDBText3Print(sender: TObject; var Value: string);
begin
  value := trim(value) + trim(sp_mx.FieldByName('ypdw').asstring);
end;

procedure TFrm_mzcfcx.QRDBText5Print(sender: TObject; var Value: string);
begin
  Value := Trim(Value);
end;

procedure TFrm_mzcfcx.QRSubDetail1NeedData(Sender: TObject;
  var MoreData: Boolean);
  procedure SetCaption(id: Integer; const mc, sl, dw, dj: string);
  var
    aControl: TControl;
  begin
    aControl := QRSubDetail1.FindChildControl('QRL_ypmc' + IntToStr(id));
    if aControl is TQRLabel then
      TQRLabel(aControl).Caption := mc;
    aControl := QRSubDetail1.FindChildControl('QRL_ypsl' + IntToStr(id));
    if aControl is TQRLabel then
      TQRLabel(aControl).Caption := sl;
    aControl := QRSubDetail1.FindChildControl('QRL_ypdw' + IntToStr(id));
    if aControl is TQRLabel then
      TQRLabel(aControl).Caption := dw;
    aControl := QRSubDetail1.FindChildControl('QRL_ypdj' + IntToStr(id));
    if aControl is TQRLabel then
      TQRLabel(aControl).Caption := dj;
    //    aControl := QRSubDetail1.FindChildControl( 'QRL_yf' + IntToStr( id ) );
    //    if aControl is TQRLabel then
    //      TQRLabel( aControl ).Caption := yf;
  end;
var
  I, J: Integer;
begin
  MoreData := not sp_mx.Eof;
  if pub_yydm = '0234' then
    J := 3
  else
    J := 4;
  for I := 1 to J do
  begin
    if sp_mx.Eof then
      SetCaption(i, ' ', ' ', ' ', ' ')
    else
      SetCaption(i, Trim(sp_mx.FieldByName('ypmc').AsString),
        IntToStr(sp_mx.FieldByName('ypsl').AsInteger),
        Trim(sp_mx.FieldByName('ypdw').AsString),
        //sp_mx.FieldByName('bz').AsString);
        sp_mx.FieldByName('bz1').AsString);
    sp_mx.Next;
  end;

end;

procedure TFrm_mzcfcx.QRSubDetail3NeedData(Sender: TObject;
  var MoreData: Boolean);
  procedure SetCaption(id: Integer; const mc, sl, dw, dj: string);
  var
    aControl: TControl;
  begin
    aControl := QRSubDetail3.FindChildControl('QRL_ypmc_lj' + IntToStr(id));
    if aControl is TQRLabel then
      TQRLabel(aControl).Caption := mc;
    aControl := QRSubDetail3.FindChildControl('QRL_ypsl_lj' + IntToStr(id));
    if aControl is TQRLabel then
      TQRLabel(aControl).Caption := sl;
    aControl := QRSubDetail3.FindChildControl('QRL_ypdw_lj' + IntToStr(id));
    if aControl is TQRLabel then
      TQRLabel(aControl).Caption := dw;
    aControl := QRSubDetail3.FindChildControl('QRL_ypdj_lj' + IntToStr(id));
    if aControl is TQRLabel then
      TQRLabel(aControl).Caption := dj;
  end;
var
  i: Integer;
begin
  MoreData := not sp_mx.Eof;
  for I := 1 to 4 do
  begin
    if sp_mx.Eof then
      SetCaption(i, ' ', ' ', ' ', ' ')
    else
      SetCaption(i, Trim(sp_mx.FieldByName('ypmc').AsString),
        IntToStr(sp_mx.FieldByName('ypsl').AsInteger),
        Trim(sp_mx.FieldByName('ypdw').AsString),
        sp_mx.FieldByName('ypdj').AsString);
    sp_mx.Next;
  end;
end;

procedure TFrm_mzcfcx.BitBtn1Click(Sender: TObject);
  function sum_data(S: string): Real;
  begin
    Result := 0.00;
    sp_mx.Filtered := False;
    sp_mx.Filter := 'sfjylyp=' + #39 + S + #39;
    sp_mx.Filtered := True;
    SP_mx.First;
    while not SP_mx.Eof do
    begin
      Result := sp_mx.FieldByName('ypje').AsFloat + Result;
      sp_mx.Next;
    end;
  end;
var
  v_jlhj, v_ylhj, v_zfhj: Real;
  v_fyczymc,v_tpczymc: string;   //发药操作员，调配操作员
  sl:TStringList;
  bz,bz1,bz2:string;
  I: Integer;
begin
  if (not sp_zb.Active) or (sp_zb.RecordCount = 0) then Exit;
  //if not SP_mx.Active then Exit;
  //jc20131202修改 :打印时重新按处方总表中的处方号提取明细,
  //杜绝打印的时候处方总表和处方明细的数据不一致问题
  sp_mx.close;
  sp_mx.Parameters.ParamByName('@cfbh').value := sp_zb['cfbh'];
  if check1.Checked then //历史处方
  begin
    sp_mx.Parameters.ParamByName('@cflb').value := 1;
  end
  else
  begin
    sp_mx.Parameters.ParamByName('@cflb').value := 0;
  end;
  sp_mx.open;
  if sp_mx.IsEmpty then Exit;
  v_fyczymc := Trim(sp_zb.FieldByName('fyczy').AsString);  //发药操作员
  v_tpczymc := Trim(sp_zb.FieldByName('tpry').AsString);  //调配操作员
  if (Trim(sp_zb.FieldByName('cflx').AsString) = '中药处方') or
    (Trim(sp_zb.FieldByName('cflb').AsString) = '门诊草药') then
  begin
    //正式处方签格式(服务中心,0046,0019)
    if (username <> 'sys_zyyf') then
    begin
      if (pub_yydm = '0234') or (pub_yydm = '0151') or v_yfqyzdybb then //自定义报表(遂宁中医院)
        frm_mzsf_print_service.printmzzyfyd(sp_zb, SP_mx, cb_yl.Checked)
      else
      begin
        frm_print_mzcf.pub_print_mzcf_zy();
      end;
    end
    else
    begin
      if (pub_yydm = '0234') or (pub_yydm = '0158')  or v_yfqyzdybb then //自定义报表
      begin
        frm_mzsf_print_service.printmzzyfyd(sp_zb, SP_mx, cb_yl.Checked);
      end
      else
        if (pub_yydm = '0046') or (pub_yydm = '0019') then
        begin
          frm_print_mzcf.pub_print_mzcf_zy();
        end
        else
        begin
          sp_mx.First;
          QRL_yymc_zy.Caption := trim(pub_yymc) + '门诊处方';
          QRL_fyr_zy.Caption := '核对、发药：' + v_fyczymc;
          QRL_fhr_zy.Caption := '审核、调配：' + v_fyczymc;
          QRL_ysxm_ysxm.Caption := '医生：' + sp_zb.fieldbyname('ysxm').asstring;
          if pub_yydm = '0151' then //北川中医院要求医生签名为空，添加煎服法与用法用量
          begin
             QRL_fyr_zy.Caption := '            调配：';
             QRL_fhr_zy.Caption := '            审核、核对、发药：';
             //QRL_ysxm_ysxm.Caption := '医生：';
             sl:=TStringList.Create;
             sl.Delimiter:='.';
             sl.CommaText:=sp_zb.FieldByName('bz').AsString;
             bz:=sp_zb.FieldByName('bz').AsString;
             //ShowMessage(IntToStr(Length(bz)));   //判断bz内容长度，截取字符串
             if Length(bz)<=35 then
             begin
                bz1:='每次服'+'     '+'ml';bz2:='一日'+'      '+'次';
             end
             else
             begin
                bz1:=sl.Strings[4];bz2:=sl.Strings[5];
             end;
             //QRL_jffqz.Caption:='水煎服，加水'+'      '+'ml；取汁'+'      '+'ml;每次服'+'     '+'ml,一日'+'      '+'次';
             QRL_jffqz.Caption:='水煎服，加水'+'      '+'ml；取汁'+'      '+'ml;'+ bz1+'   '+bz2;//sl.Strings[4]+'  '+sl.Strings[5] ;
             QRL_jffqz.Top:=6;
             QRL_ysxm_ysxm.top:=26;
             QRL_fhr_zy.Top:=26;
             QRL_fyr_zy.top:=26;
             QRLabel22.top:=26;
             QRDBText37.top:=26;
             //quickrep_zy显示‘以下无数据’已删除，备份报表名为：QuickRep1
          end
          else
          begin
             QRL_jffqz.Top:=26;
             QRL_ysxm_ysxm.top:=6;
             QRL_fhr_zy.Top:=6;
             QRL_fyr_zy.top:=6;
             QRLabel22.top:=6;
             QRDBText37.top:=6;
             QRL_jffqz.Caption:='';
          end;
//          if pub_yydm = '0151' then
//          begin
//            QRL_fyr_zy.Caption := '核对     发药:' + v_fyczymc;
//            QRL_fhr_zy.Caption := '审核     调配:';
//            QRLabel16.Caption := '中医诊断:';
//          end;
//          //北川中医院显示手工输入证型
//          QRShape24.Enabled := (pub_yydm = '0151');
//          QRLabel16.Caption := (pub_yydm = '0151');
        //调整位置
          lable_mc1.Left := 0;
          lable_yl1.Left := 104;
          lable_bz1.Left := 149;
          lable_mc2.Left := 186;
          lable_yl2.Left := 290;
          lable_bz2.Left := 334;
          lable_mc3.Left := 372;
          lable_yl3.Left := 475;
          lable_bz3.Left := 520;
          lable_mc4.Left := 558;
          lable_yl4.Left := 662;
          lable_bz4.Left := 703;

          QRL_ypmc1.Left := 0;
          QRL_ypsl1.Left := 95;
          QRL_ypdw1.Left := 130;
          QRL_ypdj1.Left := 148;
          QRL_ypmc2.Left := 0 + 186;
          QRL_ypsl2.Left := 95 + 186;
          QRL_ypdw2.Left := 130 + 186;
          QRL_ypdj2.Left := 148 + 186;
          QRL_ypmc3.Left := 0 + 186 * 2;
          QRL_ypsl3.Left := 95 + 186 * 2;
          QRL_ypdw3.Left := 130 + 186 * 2;
          QRL_ypdj3.Left := 148 + 186 * 2;
          QRL_ypmc4.Left := 0 + 186 * 3;
          QRL_ypsl4.Left := 95 + 186 * 3;
          QRL_ypdw4.Left := 130 + 186 * 3;
          QRL_ypdj4.Left := 148 + 186 * 3;
          if pub_yydm = '0151' then
          begin
            QRL_ypdw1.Left := 120;
            QRL_ypdw2.Left := 120 + 186;
            QRL_ypdw3.Left := 120 + 186 * 2;
            QRL_ypdw4.Left := 120 + 186 * 3;
          end;

          if pub_yydm = '0234' then
          begin
            lable_bz1.Caption := '位置';
            lable_bz1.Left := 0; //68
            lable_mc1.Left := 0 + 68; //125
            lable_yl1.Left := 125 + 68;
            lable_bz2.Caption := '位置';
            lable_bz2.Left := 0 + 248;
            lable_mc2.Left := 68 + 248;
            lable_yl2.Left := 125 + 68 + 248;
            lable_bz3.Caption := '位置';
            lable_bz3.Left := 0 + 248 * 2;
            lable_mc3.Left := 68 + 248 * 2;
            lable_yl3.Left := 125 + 68 + 248 * 2;

            lable_bz4.Enabled := False;
            lable_mc4.Enabled := False;
            lable_yl4.Enabled := False;

            QRL_ypdj1.Left := 0;
            QRL_ypmc1.Left := 0 + 68;
            QRL_ypsl1.Left := 125 + 68;
            QRL_ypdw1.Left := 160 + 68;
            QRL_ypdj2.Left := 0 + 248;
            QRL_ypmc2.Left := 0 + 68 + 248;
            QRL_ypsl2.Left := 125 + 68 + 248;
            QRL_ypdw2.Left := 160 + 68 + 248;
            QRL_ypdj3.Left := 0 + 248 * 2;
            QRL_ypmc3.Left := 0 + 68 + 248 * 2;
            QRL_ypsl3.Left := 125 + 68 + 248 * 2;
            QRL_ypdw3.Left := 160 + 68 + 248 * 2;

            QRL_ypdj1.Width := 68;
            QRL_ypdj2.Width := 68;
            QRL_ypdj3.Width := 68;
            QRL_ypmc1.Width := 125;
            QRL_ypmc2.Width := 125;
            QRL_ypmc3.Width := 125;

            QRL_ypdj4.Enabled := False;
            QRL_ypmc4.Enabled := False;
            QRL_ypsl4.Enabled := False;
            QRL_ypdw4.Enabled := False;
          end;
          if cb_yl.Checked then
            quickrep_zy.Preview
          else
            quickrep_zy.Print;

//          if pub_yydm = '0151' then
//          begin
//            //frm_zysf_print_service.proc_pring_mzzycf(sp_zb, SP_mx, True); //089801
//            frm_mzsf_print_service.printmzcffycx(sp_zb,sp_mx,True); //089801
//          end;
        end;
    end;
  end
  else
  begin
    if (username <> 'sys_zyyf') or (pub_yydm = '0046') or (pub_yydm = '0019') or v_yfqyzdybb then // or (pub_yydm = '0151')北川中医院不要此格式
    begin
    //荆门市掇刀人民医院  特殊修改
      if pub_yydm='0271' then
      begin
        frm_mzsf_print_service.print_mzfy_cfdy(sp_zb, SP_mx, true,sp_zb.FieldByName('cflx').Value);
      end
      else
      frm_mzsf_print_service.printmzxyfyd(sp_zb, SP_mx, cb_yl.Checked);
      //frm_zysf_print_service.proc_pring_zyxycf(SP_zb, SP_mx, True);
      //frm_print_mzcf_fy.Proc_print_cf(sp_zb, sp_mx, '1');
    end
    else
    begin
      v_jlhj := sum_data('甲');
      v_ylhj := sum_data('乙');
      v_zfhj := sum_data('自');
      sp_mx.Filtered := False;
      sp_mx.Filter := '';
//      QRL_dyrq.Caption := '打印日期:' + FormatDateTime( 'yyyy-mm-dd hh:mm:ss', Frm_func.curr_date );
      yymc.Caption := trim(pub_yymc) + '门诊处方';
      if pub_yydm = '0046' then
        fyr.Caption := '发药:'
      else
        fyr.Caption := '核对、发药：' + v_fyczymc;
      ysxm.Caption := '医生：' + trim(sp_zb.fieldbyname('ysxm').asstring);
      fhr.Caption := '审核、调配：' + v_fyczymc;
      //QRL_jlhj.Caption := '甲类合计:' + FormatFloat('0.00', v_jlhj);
      //QRL_ylhj.Caption := '乙类合计:' + FormatFloat('0.00', v_ylhj);
      //QRL_zfhj.Caption := '自费合计:' + FormatFloat('0.00', v_zfhj);
      if pub_yydm = '0151' then
      begin
        //ysxm.Caption:='医生：';
        fhr.Caption:='       审核、核对、发药：';
        fyr.Caption:='            调配：';
        QRLabel2.Caption:='(手)处方类别:';
      end;
      if (username='sys_fwzx') and (pub_yydm='0198') then  //勉县医院，门诊服务中心处方打印显示发药人，调配人
      begin
        fhr.Caption := '审核、调配：' + v_tpczymc;
        fyr.Caption := '核对、发药：' + v_fyczymc;
      end;


      //2012-10-18取消甲乙类自费合计
      QRDBText20.Enabled := False;
      //QRL_ylhj.Enabled := QRDBText20.Enabled;
      //QRL_zfhj.Enabled := QRDBText20.Enabled;
      //if not QRDBText20.Enabled then
      //  QRL_jlhj.Caption := '合计:' + FormatFloat('0.00', v_jlhj + v_ylhj + v_zfhj);
      if cb_yl.Checked then
        QuickRep1.Preview
      else
        QuickRep1.Print;
//          if pub_yydm = '0151' then
//          begin
//            frm_zysf_print_service.proc_pring_mzxycf(sp_zb, SP_mx, True);  //089803
//          end;
    end;
  end;
end;
initialization
  RegisterClass(TFrm_mzcfcx);
end.

