unit p_mzbrdjb;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Db, ADODB, ExtCtrls, Buttons, DBCtrls, Mask, DBCtrlsEh,
  QuickRpt, Qrctrls, ComCtrls, GridsEh, DBGridEh, Grids, DBGrids, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData,
  cxGridTableView, cxGridLevel, cxGridCustomTableView, cxGridDBTableView,
  cxClasses, cxControls, cxGridCustomView, cxGrid, cxDropDownEdit, cxCheckBox,
  cxContainer; //,zhengduanqingkuang

type
  TFrm_BRDJB = class(TForm)
    ds_look: TDataSource;
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    QRLabel2: TQRLabel;
    PageHeaderBand1: TQRBand;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel3: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel4: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel37: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRLabel43: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRLabel46: TQRLabel;
    QRLabel47: TQRLabel;
    QRLabel48: TQRLabel;
    QRLabel49: TQRLabel;
    QRLabel50: TQRLabel;
    QRLabel51: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel52: TQRLabel;
    QRLabel53: TQRLabel;
    QRLabel54: TQRLabel;
    QRLabel55: TQRLabel;
    QRLabel56: TQRLabel;
    QRLabel57: TQRLabel;
    QRLabel58: TQRLabel;
    QRLabel59: TQRLabel;
    QRLabel60: TQRLabel;
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
    QRLabel73: TQRLabel;
    QRLabel74: TQRLabel;
    QRLabel75: TQRLabel;
    QRLabel76: TQRLabel;
    QRLabel77: TQRLabel;
    QRLabel78: TQRLabel;
    QRLabel79: TQRLabel;
    QRLabel80: TQRLabel;
    QRLabel81: TQRLabel;
    QRLabel82: TQRLabel;
    QRLabel83: TQRLabel;
    QRLabel84: TQRLabel;
    QRLabel85: TQRLabel;
    QRLabel86: TQRLabel;
    QRLabel87: TQRLabel;
    QRLabel88: TQRLabel;
    QRLabel89: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabel90: TQRLabel;
    QRLabel91: TQRLabel;
    QRLabel92: TQRLabel;
    QRLabel93: TQRLabel;
    QRLabel94: TQRLabel;
    QRLabel95: TQRLabel;
    QRLabel96: TQRLabel;
    QRLabel97: TQRLabel;
    QRLabel98: TQRLabel;
    QRLabel99: TQRLabel;
    QRLabel100: TQRLabel;
    QRLabel101: TQRLabel;
    QRLabel102: TQRLabel;
    QRLabel103: TQRLabel;
    QRLabel104: TQRLabel;
    QRLabel105: TQRLabel;
    QRLabel106: TQRLabel;
    QRLabel107: TQRLabel;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRLabel108: TQRLabel;
    QRShape1: TQRShape;
    QRLabel109: TQRLabel;
    QRLabel110: TQRLabel;
    QRLabel111: TQRLabel;
    QRLabel112: TQRLabel;
    QRLabel113: TQRLabel;
    QRShape2: TQRShape;
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
    QRLabel126: TQRLabel;
    QRLabel127: TQRLabel;
    QRLabel128: TQRLabel;
    QRLabel129: TQRLabel;
    QRLabel130: TQRLabel;
    QRLabel131: TQRLabel;
    QRLabel132: TQRLabel;
    QRLabel133: TQRLabel;
    QRLabel134: TQRLabel;
    QRLabel135: TQRLabel;
    QRLabel136: TQRLabel;
    QRLabel137: TQRLabel;
    QRLabel138: TQRLabel;
    QRLabel139: TQRLabel;
    QRLabel140: TQRLabel;
    QRLabel141: TQRLabel;
    QRLabel142: TQRLabel;
    QRLabel143: TQRLabel;
    QRLabel145: TQRLabel;
    QRLabel144: TQRLabel;
    QRLabel146: TQRLabel;
    QRLabel147: TQRLabel;
    QRLabel148: TQRLabel;
    QRLabel149: TQRLabel;
    QRLabel150: TQRLabel;
    QRLabel151: TQRLabel;
    QRLabel152: TQRLabel;
    QRLabel153: TQRLabel;
    QRLabel154: TQRLabel;
    QRLabel155: TQRLabel;
    QRLabel156: TQRLabel;
    QRLabel157: TQRLabel;
    QRLabel158: TQRLabel;
    QRLabel159: TQRLabel;
    QRLabel160: TQRLabel;
    QRLabel161: TQRLabel;
    QRLabel162: TQRLabel;
    QRLabel163: TQRLabel;
    QRLabel164: TQRLabel;
    QRLabel165: TQRLabel;
    QRLabel166: TQRLabel;
    QRLabel167: TQRLabel;
    QRLabel168: TQRLabel;
    QRLabel169: TQRLabel;
    QRLabel170: TQRLabel;
    QRLabel171: TQRLabel;
    QRLabel172: TQRLabel;
    QRLabel173: TQRLabel;
    QRLabel174: TQRLabel;
    QRLabel175: TQRLabel;
    QRLabel176: TQRLabel;
    QRLabel177: TQRLabel;
    QRLabel178: TQRLabel;
    QRLabel179: TQRLabel;
    QRLabel180: TQRLabel;
    QRLabel181: TQRLabel;
    QRLabel182: TQRLabel;
    QRLabel183: TQRLabel;
    QRLabel184: TQRLabel;
    QRLabel185: TQRLabel;
    QRLabel186: TQRLabel;
    QRLabel187: TQRLabel;
    QRLabel188: TQRLabel;
    QRLabel189: TQRLabel;
    QRLabel190: TQRLabel;
    QRLabel191: TQRLabel;
    QRLabel192: TQRLabel;
    QRLabel193: TQRLabel;
    QRLabel194: TQRLabel;
    QRLabel195: TQRLabel;
    QRLabel196: TQRLabel;
    QRLabel197: TQRLabel;
    QRLabel198: TQRLabel;
    QRLabel199: TQRLabel;
    QRLabel200: TQRLabel;
    QRLabel201: TQRLabel;
    QRLabel202: TQRLabel;
    QRLabel203: TQRLabel;
    QRLabel204: TQRLabel;
    QRLabel205: TQRLabel;
    QRShape3: TQRShape;
    QRLabel206: TQRLabel;
    QRLabel207: TQRLabel;
    QRLabel208: TQRLabel;
    QRLabel209: TQRLabel;
    QRLabel210: TQRLabel;
    QRLabel211: TQRLabel;
    QRLabel212: TQRLabel;
    QRLabel213: TQRLabel;
    QRLabel214: TQRLabel;
    QRLabel215: TQRLabel;
    QRLabel216: TQRLabel;
    QRLabel217: TQRLabel;
    QRLabel218: TQRLabel;
    QRLabel219: TQRLabel;
    QRLabel220: TQRLabel;
    QRLabel221: TQRLabel;
    QRLabel222: TQRLabel;
    QRLabel223: TQRLabel;
    QRLabel224: TQRLabel;
    QRLabel225: TQRLabel;
    QRLabel226: TQRLabel;
    QRShape4: TQRShape;
    QRLabel227: TQRLabel;
    QRDBText10: TQRDBText;
    QRShape5: TQRShape;
    QRLabel228: TQRLabel;
    QRLabel229: TQRLabel;
    QRLabel230: TQRLabel;
    QRLabel231: TQRLabel;
    QRLabel232: TQRLabel;
    QRLabel233: TQRLabel;
    QRLabel234: TQRLabel;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRShape6: TQRShape;
    qry_cx_brbl: TADOQuery;
    Panel2: TPanel;
    Panel3: TPanel;
    Label13: TLabel;
    Label23: TLabel;
    ksrq: TDateTimePicker;
    jsrq: TDateTimePicker;
    BitBtn1: TBitBtn;
    btn_bg: TBitBtn;
    BitBtn3: TBitBtn;
    edtbrdjb: TEdit;
    lbl1: TLabel;
    ysmc_grid: TDBGrid;
    ds_czy: TDataSource;
    qry_czy: TADOQuery;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxStyle5: TcxStyle;
    cxStyle6: TcxStyle;
    cxStyle7: TcxStyle;
    cxStyle8: TcxStyle;
    cxStyle9: TcxStyle;
    cxStyle10: TcxStyle;
    cxStyle11: TcxStyle;
    cxStyle12: TcxStyle;
    cxStyle13: TcxStyle;
    cxStyle14: TcxStyle;
    cxStyle15: TcxStyle;
    cxStyle16: TcxStyle;
    cxStyle17: TcxStyle;
    cxStyle18: TcxStyle;
    cxStyle19: TcxStyle;
    cxStyle20: TcxStyle;
    cxStyle21: TcxStyle;
    cxStyle22: TcxStyle;
    cxStyle23: TcxStyle;
    cxStyle24: TcxStyle;
    cxStyle25: TcxStyle;
    cxStyle26: TcxStyle;
    cxStyle27: TcxStyle;
    cxStyle28: TcxStyle;
    cxStyle29: TcxStyle;
    cxStyle30: TcxStyle;
    cxStyle31: TcxStyle;
    cxStyle32: TcxStyle;
    cxStyle33: TcxStyle;
    cxStyle34: TcxStyle;
    cxStyle35: TcxStyle;
    cxGridTableViewStyleSheet1: TcxGridTableViewStyleSheet;
    sp_look: TADOStoredProc;
    ds_cx_brbl: TDataSource;
    pan_xg: TPanel;
    Panel4: TPanel;
    Label1: TLabel;
    e_tmh: TDBEdit;
    Label2: TLabel;
    e_brxm: TDBEdit;
    Label3: TLabel;
    e_xb: TDBEdit;
    Label4: TLabel;
    e_nl: TDBEdit;
    Label5: TLabel;
    e_jtzz: TDBEdit;
    Label6: TLabel;
    zyzd: TEdit;
    zyzdmc: TEdit;
    Label7: TLabel;
    cyzd: TEdit;
    ad_jbcx: TADODataSet;
    ds_jbbm: TDataSource;
    cb_crb: TcxCheckBox;
    cb_fz: TcxCheckBox;
    Panel1: TPanel;
    b_bc: TBitBtn;
    b_bj: TBitBtn;
    DBGrid_Jb: TDBGrid;
    qckrp1: TQuickRep;
    qrbnd1: TQRBand;
    qrbnd3: TQRBand;
    qrbnd4: TQRBand;
    qrlbltitle: TQRLabel;
    qrbnd5: TQRBand;
    qrlbl2: TQRLabel;
    qrlbl3: TQRLabel;
    qrlbl5: TQRLabel;
    qrlbl6: TQRLabel;
    qrlbl7: TQRLabel;
    qrlbl8: TQRLabel;
    qrlbl9: TQRLabel;
    qrlbl10: TQRLabel;
    qrdbtxtzdcs: TQRDBText;
    qrdbtxttmh: TQRDBText;
    qrdbtxtczysmc: TQRDBText;
    s: TQRDBText;
    qrdbtxtzyzdmc: TQRDBText;
    qrdbtxtbrnl: TQRDBText;
    qrdbtxtbrxb: TQRDBText;
    qrdbtxtzdrq: TQRDBText;
    btn_djb: TBitBtn;
    p_cz: TLabel;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    cxGridDBTableView1Column2: TcxGridDBColumn;
    cxGridDBTableView1tmh: TcxGridDBColumn;
    cxGridDBTableView1brxm: TcxGridDBColumn;
    cxGridDBTableView1brxb: TcxGridDBColumn;
    cxGridDBTableView1brnl: TcxGridDBColumn;
    cxgrdbclmnGridDBTableView1Column4: TcxGridDBColumn;
    cxGridDBTableView1zyzdmc: TcxGridDBColumn;
    cxGridDBTableView1cyzd: TcxGridDBColumn;
    cxGridDBTableView1czysmc: TcxGridDBColumn;
    cxGridDBTableView1zdrq: TcxGridDBColumn;
    cxGridDBTableView1jtzz: TcxGridDBColumn;
    cxGridDBTableView1ks: TcxGridDBColumn;
    cxGridDBTableView1tkys: TcxGridDBColumn;
    cxGridDBTableView1jzxm: TcxGridDBColumn;
    cxGridDBTableView1lxdh: TcxGridDBColumn;
    cxGridDBTableView1gzdw: TcxGridDBColumn;
    cxGridDBTableView1rqfldm: TcxGridDBColumn;
    cxGridDBTableView1fbrq: TcxGridDBColumn;
    cxGridDBTableView1swrq: TcxGridDBColumn;
    cxGridDBTableView1jbbh: TcxGridDBColumn;
    cxGridDBTableView1Column3: TcxGridDBColumn;
    cxGridDBTableView1bz: TcxGridDBColumn;
    cxgrdbclmnGridDBTableView1tw: TcxGridDBColumn;
    cxgrdbclmnGridDBTableView1jzdz: TcxGridDBColumn;
    cxgrdbclmnGridDBTableView1jhr: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    p_cxcz: TEdit;
    sp_cxcz: TADOStoredProc;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure btn_bgClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure edtbrdjbKeyPress(Sender: TObject; var Key: Char);
    procedure edtbrdjbExit(Sender: TObject);
    procedure ysmc_gridDblClick(Sender: TObject);
    procedure ysmc_gridExit(Sender: TObject);
    procedure ysmc_gridKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxGridDBTableView1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure sp_lookAfterScroll(DataSet: TDataSet);
    procedure cxGridDBTableView1DblClick(Sender: TObject);
    procedure b_bjClick(Sender: TObject);
    procedure zyzdKeyPress(Sender: TObject; var Key: Char);
    procedure zyzdExit(Sender: TObject);
    procedure DBGrid_JbDblClick(Sender: TObject);
    procedure DBGrid_JbKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid_JbExit(Sender: TObject);
    procedure b_bcClick(Sender: TObject);
    procedure btn_djbClick(Sender: TObject);
    procedure qrdbtxtiscrbPrint(sender: TObject; var Value: string);
  private
    { Private declarations }
  public
    { Public declarations }
    brxm, brdm: string;
    pub_xgbz: Boolean;
  end;

var
  Frm_BRDJB: TFrm_BRDJB;
implementation

uses p_dm, p_func, P_TreeView_dzcx, p_crbbgk, p_byzlcx;

{$R *.DFM}

procedure TFrm_BRDJB.BitBtn1Click(Sender: TObject);
begin
  sp_look.Close;
  sp_look.Parameters.ParamByName('@ksrq').Value := formatdatetime('yyyymmdd', ksrq.DateTime);
  sp_look.Parameters.ParamByName('@jsrq').Value := formatdatetime('yyyymmdd', jsrq.DateTime);
  sp_look.Parameters.ParamByName('@ysmc').Value := '%' + trim(edtbrdjb.Text) + '%';
  sp_look.Open;
  if sp_look.RecordCount <= 0 then
  begin
    Application.MessageBox('没有查询到信息！！', '系统提示：', MB_OK + MB_ICONEXCLAMATION);
  end;

  sp_cxcz.Close;
  sp_cxcz.Parameters.ParamByName('@ksrq').Value := formatdatetime('yyyymmdd', ksrq.DateTime);
  sp_cxcz.Parameters.ParamByName('@jsrq').Value := formatdatetime('yyyymmdd', jsrq.DateTime);
  sp_cxcz.Parameters.ParamByName('@ysmc').Value := '%' + trim(edtbrdjb.Text) + '%';
  sp_cxcz.Parameters.ParamByName('@fs').value:='1' ;
  sp_cxcz.Open;
  p_cxcz.text:= sp_cxcz.FieldByName('sj').AsString;
end;

procedure TFrm_BRDJB.btn_bgClick(Sender: TObject);
begin
//  pub_entrance := 2;
  proc_get_crbsbk(sp_look, sp_look.FieldByName('ghid').AsString);
end;

procedure TFrm_BRDJB.btn_djbClick(Sender: TObject);
begin
  qrlbltitle.Caption := '门诊病人登记薄(' + formatdatetime('yyyy-mm-dd', ksrq.date) + '至' + formatdatetime('yyyy-mm-dd', jsrq.date) + ')';
  qckrp1.print;
end;

procedure TFrm_BRDJB.b_bcClick(Sender: TObject);
begin
  try
    qry_cx_brbl.Edit;
    qry_cx_brbl.FieldByName('iscrb').Value := cb_crb.Checked;
    qry_cx_brbl.FieldByName('sfcz').Value := not cb_fz.Checked;
    qry_cx_brbl.FieldByName('zyzd').Value := Trim(zyzd.Text);
    qry_cx_brbl.FieldByName('zyzdmc').Value := Trim(zyzdmc.Text);
    qry_cx_brbl.FieldByName('yszd').Value := Trim(cyzd.Text);
    if not cb_fz.Checked then
      qry_cx_brbl.FieldByName('zdcs').Value := 1
    else
      qry_cx_brbl.FieldByName('zdcs').Value := 2;
    qry_cx_brbl.Post;
    Application.MessageBox('修改成功！', '系统提示', MB_OK + MB_ICONINFORMATION);
    pan_xg.Visible := False;
    DBGrid_Jb.Visible := False;
    BitBtn1.Click;
  except on e: Exception do
    begin
      Application.MessageBox(PChar('错误，错误信息：' + e.Message), '系统提示',
        MB_OK + MB_ICONSTOP);
    end;
  end;
end;

procedure TFrm_BRDJB.b_bjClick(Sender: TObject);
begin
  pan_xg.Visible := False;
  DBGrid_Jb.Visible := False;
end;

procedure TFrm_BRDJB.cxGridDBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if AViewInfo.RecordViewInfo.GridRecord.Values[0] = '1' then
    ACanvas.Canvas.Font.Color := clRed;
  ACanvas.FillRect(AViewInfo.Bounds);
end;

procedure TFrm_BRDJB.cxGridDBTableView1DblClick(Sender: TObject);
begin
  if pub_xgbz and (sp_look.Active) and (sp_look.FieldByName('id').AsInteger > 0) then
  begin
    qry_cx_brbl.close;
    qry_cx_brbl.SQL.Text := 'select iscrb,sfcz,tmh,brxm,brxb,brnl,jtzz,zyzd,zyzdmc,yszd,zdcs ' +
      'from dzbl_brbl_last where id=' + sp_look.FieldByName('id').AsString;
    qry_cx_brbl.Open;
    if qry_cx_brbl.RecordCount <= 0 then
    begin
      qry_cx_brbl.close;
      qry_cx_brbl.SQL.Text := 'select iscrb,sfcz,tmh,brxm,brxb,brnl,jtzz,zyzd,zyzdmc,yszd,zdcs ' +
        'from dzbl_brbl where id=' + sp_look.FieldByName('id').AsString;
      qry_cx_brbl.Open;
    end;
    if qry_cx_brbl.RecordCount > 0 then
    begin
      qry_cx_brbl.Edit;
      if qry_cx_brbl.FieldByName('zdcs').AsInteger > 1 then
      begin
        qry_cx_brbl.FieldByName('sfcz').Value := 0;
      end
      else
      begin
        qry_cx_brbl.FieldByName('sfcz').Value := 1;
      end;
      qry_cx_brbl.Post;
      pan_xg.Visible := True;
      cb_crb.Checked := qry_cx_brbl.FieldByName('iscrb').AsBoolean;
      cb_fz.Checked := not qry_cx_brbl.FieldByName('sfcz').AsBoolean;
      zyzd.Text := qry_cx_brbl.FieldByName('zyzd').AsString;
      zyzdmc.Text := qry_cx_brbl.FieldByName('zyzdmc').AsString;
      cyzd.Text := qry_cx_brbl.FieldByName('yszd').AsString;
    end
    else
    begin
      pan_xg.Visible := False;
    end;
  end;
end;

procedure TFrm_BRDJB.DBGrid_JbDblClick(Sender: TObject);
begin
  cyzd.SetFocus;
end;

procedure TFrm_BRDJB.DBGrid_JbExit(Sender: TObject);
begin
  cb_crb.Checked := ad_jbcx.FieldByName('crbsb').Asboolean;
  zyzd.Text := Trim(ad_jbcx.FieldByName('jbbm').AsString);
  zyzdmc.Text := Trim(ad_jbcx.FieldByName('jbmc').AsString);
  dbgrid_Jb.visible := false;
end;

procedure TFrm_BRDJB.DBGrid_JbKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    cyzd.SetFocus;
end;

procedure TFrm_BRDJB.edtbrdjbExit(Sender: TObject);
begin
  if not (BitBtn1.Focused or BitBtn3.Focused or (trim((sender as Tedit).text) = '')) then
  begin
    qry_czy.Close;
    qry_czy.Parameters.ParamByName('pym').Value := '%' + trim((sender as Tedit).text) + '%';
    qry_czy.Open;
    if qry_czy.RecordCount <= 0 then
    begin
      application.MessageBox('代码输入错误', '错误', mb_ok + mb_iconerror);
      edtbrdjb.setfocus;
    end
    else
      if qry_czy.RecordCount = 1 then
      begin
        edtbrdjb.Text := qry_czy.FieldByName('mc').AsString;
      end
      else
      begin
        ysmc_grid.Top := edtbrdjb.Top + edtbrdjb.Height;
        ysmc_grid.Left := edtbrdjb.Left;
        ysmc_grid.Visible := True;
        ysmc_grid.SetFocus;
      end
  end;
end;

procedure TFrm_BRDJB.edtbrdjbKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    BitBtn1.SetFocus;
  end;
end;

procedure TFrm_BRDJB.BitBtn3Click(Sender: TObject);
begin
  self.close;
end;

procedure TFrm_BRDJB.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    SelectNext(activeControl, true, true);
    key := #0;
  end;
end;

procedure TFrm_BRDJB.FormShow(Sender: TObject);
begin
  ksrq.DateTime := frm_func.curr_date();
  jsrq.DateTime := frm_func.curr_date();
end;

procedure TFrm_BRDJB.qrdbtxtiscrbPrint(sender: TObject; var Value: string);
begin
//  if Value='True' then
//  qrdbtxtiscrb.Caption:='是'
//  else  qrdbtxtiscrb.Caption:='否';
end;

procedure TFrm_BRDJB.sp_lookAfterScroll(DataSet: TDataSet);
begin
  btn_bg.Enabled := not sp_look.IsEmpty;
  btn_djb.Enabled := not sp_look.IsEmpty;
end;

procedure TFrm_BRDJB.ysmc_gridDblClick(Sender: TObject);
begin
  BitBtn1.SetFocus;
end;

procedure TFrm_BRDJB.ysmc_gridExit(Sender: TObject);
begin
  ysmc_grid.Visible := False;
  edtbrdjb.text := qry_czy.fieldbyname('mc').asstring;
  BitBtn1.SetFocus;
end;

procedure TFrm_BRDJB.ysmc_gridKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 13 then
  begin
    BitBtn1.SetFocus;
  end;
end;

procedure TFrm_BRDJB.zyzdExit(Sender: TObject);
begin
  if trim(zyzd.text) <> '' then
  begin
    ad_jbcx.Close;
    ad_jbcx.Parameters.ParamByName('jbmc').value := '%' + trim(zyzd.text) + '%';
    ad_jbcx.Parameters.ParamByName('pym').value := '%' + trim(zyzd.text) + '%';
    ad_jbcx.Parameters.ParamByName('jbbm').value := trim(zyzd.text) + '%';
    ad_jbcx.Open;
    if ad_jbcx.IsEmpty then
    begin
      application.MessageBox('未找到疾病，请重新输入', '提示', mb_ok);
      zyzd.setfocus;
    end
    else
      if ad_jbcx.RecordCount > 1 then
      begin
        DBGrid_Jb.Visible := true;
        DBGrid_Jb.DataSource := ds_jbbm;
        DBGrid_Jb.setfocus;
      end
      else
      begin
        cb_crb.Checked := ad_jbcx.FieldByName('crbsb').Asboolean;
        zyzd.Text := Trim(ad_jbcx.FieldByName('jbbm').AsString);
        zyzdmc.Text := Trim(ad_jbcx.FieldByName('jbmc').AsString);
      end;
  end;
end;

procedure TFrm_BRDJB.zyzdKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    cyzd.SetFocus;
  end;
end;

end.
