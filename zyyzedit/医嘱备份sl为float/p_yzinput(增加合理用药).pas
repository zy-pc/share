
unit p_yzinput;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Buttons, DBCtrls, Mask, ExtCtrls, Menus, GridsEh,
  QRCtrls, QuickRpt, ADODB, DB, DBGridEh, cxPC, cxControls,
  cxCustomData, cxGraphics, cxEdit, cxDBData,
  cxTextEdit, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, cxLookAndFeelPainters,
  cxButtons, PassInterfaceClass, OleCtrls, SHDocVw, ImgList, ToolWin,
  cxGridBandedTableView, dateutils, cxCheckBox, EMRPAD30Lib_TLB, p_obj,
  OleServer,
  grproLib_TLB, Printers, p_zyyzjcbw, RzEdit, ShellAPI, cxSplitter,StrUtils,
  p_FrmAdoReconBase, cxStyles, cxFilter, cxData, cxDataStorage,ToolCtrlsEh,
  DBGridEhGrouping;
type
  Tmyrect = record
    ph: string;
    top, left, right, bottom, sl, height: integer;
    yf, tj: string;
    gtop, gleft, gright, gbottom: integer;
  end;
type
  TTmyrect = array[0..100] of Tmyrect;
type
  Tfrm_yzinput = class(TfrmAdoReconBase)
    ds_ypyf: TDataSource;
    qry_ypyf: TADOQuery;
    ds_gytj: TDataSource;
    qry_gytj: TADOQuery;
    qry_yz: TADOQuery;
    ds_yz: TDataSource;
    grid_yz: TDBGridEh;
    grid_yp: TDBGridEh;
    ds_cx_yp_yz: TDataSource;
    qry_yldw: TADOQuery;
    ds_yldw: TDataSource;
    qry_mb: TADOQuery;
    qry_ks: TADOQuery;
    ds_ks: TDataSource;
    sp_cx_yzxm: TADOStoredProc;
    ds_cx_yzxm: TDataSource;
    sp_jbxx: TADOStoredProc;
    ds_jbxx: TDataSource;
    qry_pub: TADOQuery;
    ds_brxx: TDataSource;
    sp_dryz: TADOStoredProc;
    ds_dryz: TDataSource;
    qry_yfdm: TADOQuery;
    qry_yzlist: TADOQuery;
    qry_ypyz: TADOQuery;
    Panel12: TPanel;
    qry_ys: TADOQuery;
    ds_ys: TDataSource;
    ZZ: TcxPageControl;
    Tab_yp: TcxTabSheet;
    cxTabSheet1: TcxTabSheet;
    Panel10: TPanel;
    db_brxx: TDBGridEh;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    sp_cx_yp_yz: TADOStoredProc;
    qry_ztyz: TADOQuery;
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
    DBEdit20: TDBEdit;
    e_tmh: TEdit;
    Label1: TLabel;
    e_yzys: TEdit;
    qry_yzsx: TADOQuery;
    ds_yzsx: TDataSource;
    dbg_ys: TDBGridEh;
    qry_yzid: TAutoIncField;
    qry_yzph: TStringField;
    qry_yztmh: TStringField;
    qry_yzzyh: TStringField;
    qry_yzxmdm: TStringField;
    qry_yzxmmc: TStringField;
    qry_yzlb: TStringField;
    qry_yzdw: TStringField;
    qry_yzypdwid: TIntegerField;
    qry_yzypbzbl: TIntegerField;
    qry_yzyplsj: TBCDField;
    qry_yzypcgj: TBCDField;
    qry_yzypyf: TStringField;
    qry_yzypyl: TStringField;
    qry_yzyldw: TStringField;
    qry_yzyytj: TStringField;
    qry_yzyplb: TStringField;
    qry_yzjcmd: TStringField;
    qry_yztzbz: TBooleanField;
    qry_yzzfbz: TBooleanField;
    qry_yzzxbz: TBooleanField;
    qry_yzfzbz: TIntegerField;
    qry_yztzrq: TDateTimeField;
    qry_yztzry: TStringField;
    qry_yzzfrq: TDateTimeField;
    qry_yzzfry: TStringField;
    qry_yzzxrq: TDateTimeField;
    qry_yzzxry: TStringField;
    qry_yzxgrq: TDateTimeField;
    qry_yzxgry: TStringField;
    qry_yzczks: TStringField;
    qry_yzkdks: TStringField;
    qry_yzkdrq: TDateTimeField;
    qry_yzkdys: TStringField;
    qry_yzyzrq: TDateTimeField;
    qry_yzyzsx: TStringField;
    qry_yzshbz: TBooleanField;
    qry_yzshry: TStringField;
    qry_yzjcbw: TStringField;
    qry_yzjcff: TStringField;
    qry_yzypkcbz: TBooleanField;
    qry_yzczys: TStringField;
    qry_yzgg: TStringField;
    qry_yzczksmc: TStringField;
    grid_ks: TDBGridEh;
    qry_xmyz: TADOQuery;
    Label2: TLabel;
    Label3: TLabel;
    qru_yzxg: TADOQuery;
    sp_yzup_list: TADOStoredProc;
    aptzyz: TMenuItem;
    Panel1: TPanel;
    Label52: TLabel;
    Label54: TLabel;
    Label56: TLabel;
    Label21: TLabel;
    Label53: TLabel;
    Label55: TLabel;
    Label4: TLabel;
    cxTabSheet2: TcxTabSheet;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel2: TPanel;
    Label5: TLabel;
    edt_tmh: TEdit;
    sp_zxjl_ls: TADOStoredProc;
    ds_zxjl_ls: TDataSource;
    ds_zxjl_cq: TDataSource;
    sp_zxjl_cq: TADOStoredProc;
    QuickRep2: TQuickRep;
    QRBand1: TQRBand;
    QRLabel15: TQRLabel;
    QRSysData2: TQRSysData;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRL_ys_ls: TQRLabel;
    QRBand2: TQRBand;
    QRShape4: TQRShape;
    QRL_yymc_ls: TQRLabel;
    QRL_brxm_ls: TQRLabel;
    QRL_tmh_ls: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel27: TQRLabel;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRShape22: TQRShape;
    QRShape23: TQRShape;
    QRShape24: TQRShape;
    QRShape25: TQRShape;
    QRL_bch_ls: TQRLabel;
    DBGridEh2: TDBGridEh;
    qry_dj: TADOQuery;
    ds_dj: TDataSource;
    Label6: TLabel;
    QRL_dysj_ls: TQRLabel;
    sp_cx_yzyljssl: TADOStoredProc;
    qry_yzmbmx: TADOQuery;
    sp_cx_tzyz_xx: TADOStoredProc;
    PopupMenu2: TPopupMenu;
    N3: TMenuItem;
    qry_yzfzph: TStringField;
    N4: TMenuItem;
    BBtn_print_cq: TBitBtn;
    BBtn_print_ls: TBitBtn;
    sp_zxjl_cq_dy: TADOStoredProc;
    ScrollBox1: TScrollBox;
    DBGridEh4: TDBGridEh;
    QRSubDetail2: TQRSubDetail;
    ksrq_ls: TQRLabel;
    kdys_ls: TQRLabel;
    zxryxm_ls: TQRLabel;
    zxsj_ls: TQRLabel;
    xmmc_ls: TQRLabel;
    ypyf_ls: TQRLabel;
    sp_zxjl_ls_dy: TADOStoredProc;
    xb_ls: TQRLabel;
    nl_ls: TQRLabel;
    zd_ls: TQRLabel;
    QuickRep1: TQuickRep;
    PageFooterBand1: TQRBand;
    QRLabel13: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel12: TQRLabel;
    QRLabel14: TQRLabel;
    QRL_ys_cq: TQRLabel;
    QRL_dysj_cq: TQRLabel;
    PageHeaderBand1: TQRBand;
    QRShape1: TQRShape;
    QRL_yymc_cq: TQRLabel;
    QRL_brxm_cq: TQRLabel;
    QRL_tmh_cq: TQRLabel;
    sj1: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    sj3: TQRLabel;
    QRShape2: TQRShape;
    QRLabel8: TQRLabel;
    QRShape3: TQRShape;
    QRShape5: TQRShape;
    QRShape8: TQRShape;
    QRLabel9: TQRLabel;
    QRShape9: TQRShape;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRL_bch_cq: TQRLabel;
    QRShape6: TQRShape;
    sj2: TQRLabel;
    QRShape7: TQRShape;
    sj4: TQRLabel;
    xb_cq: TQRLabel;
    nl_cq: TQRLabel;
    zd_cq: TQRLabel;
    QRSubDetail1: TQRSubDetail;
    ksrq: TQRLabel;
    zxhsmc: TQRLabel;
    xmmc: TQRLabel;
    tzrq: TQRLabel;
    tzysmc: TQRLabel;
    zhhsmc: TQRLabel;
    ypyf: TQRLabel;
    zxzxsj: TQRLabel;
    zhzxsj: TQRLabel;
    kdysmc: TQRLabel;
    QRgrIma1: TQRImage;
    QRImage1: TQRImage;
    ScrollBox2: TScrollBox;
    DBGridEh1: TDBGridEh;
    ScrollBox3: TScrollBox;
    DBGridEh3: TDBGridEh;
    qry_yzbz: TStringField;
    qry_yzjyyb: TStringField;
    Panel3: TPanel;
    BitBtn_up: TSpeedButton;
    BitBtn_down: TSpeedButton;
    sp_get_maxxh: TADOStoredProc;
    sp_set_xh: TADOStoredProc;
    qry_yzxh: TIntegerField;
    bt_lsyz: TBitBtn;
    qry_yzjyflbh: TStringField;
    sp_yzsj: TADOStoredProc;
    sp_tzyz: TADOStoredProc;
    ADODataSet1: TADODataSet;
    Label7: TLabel;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    sp_qxtzyz: TADOStoredProc;
    sp_up_yjjssj: TADOStoredProc;
    N8: TMenuItem;
    sp_syfz_cxfz: TADOStoredProc;
    sp_up_qxsyfz: TADOStoredProc;
    DBGridEh5: TDBGridEh;
    qry_qtyzxm: TADOQuery;
    ds_qtyzxm: TDataSource;
    cxTabSheet3: TcxTabSheet;
    qry_cx_jyjg: TADOQuery;
    ds_cx_jyjg: TDataSource;
    QuickRep3: TQuickRep;
    QRBand3: TQRBand;
    QRLabel1: TQRLabel;
    QRBand4: TQRBand;
    QRShape15: TQRShape;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRShape18: TQRShape;
    QRShape19: TQRShape;
    QRShape20: TQRShape;
    QRShape21: TQRShape;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel26: TQRLabel;
    ny: TQRLabel;
    QRShape26: TQRShape;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRShape27: TQRShape;
    QRShape46: TQRShape;
    DetailBand1: TQRBand;
    QRShape28: TQRShape;
    QRShape29: TQRShape;
    QRShape30: TQRShape;
    QRShape31: TQRShape;
    QRShape32: TQRShape;
    QRShape33: TQRShape;
    QRShape34: TQRShape;
    QRShape35: TQRShape;
    QRShape36: TQRShape;
    QRShape37: TQRShape;
    QRShape38: TQRShape;
    QRShape39: TQRShape;
    QRShape40: TQRShape;
    QRShape41: TQRShape;
    QRShape42: TQRShape;
    QRShape43: TQRShape;
    QRShape44: TQRShape;
    QRShape45: TQRShape;
    QRShape47: TQRShape;
    QRShape48: TQRShape;
    QRShape49: TQRShape;
    QRShape50: TQRShape;
    QRShape51: TQRShape;
    QRShape52: TQRShape;
    QRShape53: TQRShape;
    QRShape54: TQRShape;
    QRShape55: TQRShape;
    QRShape56: TQRShape;
    QRShape57: TQRShape;
    QRShape58: TQRShape;
    QRShape59: TQRShape;
    QRShape60: TQRShape;
    QRShape61: TQRShape;
    QRShape62: TQRShape;
    QRShape63: TQRShape;
    QRShape64: TQRShape;
    QRShape66: TQRShape;
    QRShape67: TQRShape;
    QRShape68: TQRShape;
    QRShape69: TQRShape;
    QRShape70: TQRShape;
    QRShape71: TQRShape;
    kdysmc1: TQRLabel;
    ypyf1: TQRLabel;
    QRgrImage3: TQRImage;
    xmmc1: TQRLabel;
    ksrq2: TQRLabel;
    kdysmc2: TQRLabel;
    xmmc2: TQRLabel;
    QRgrImage4: TQRImage;
    ypyf2: TQRLabel;
    ksrq3: TQRLabel;
    kdysmc3: TQRLabel;
    xmmc3: TQRLabel;
    QRgrImage5: TQRImage;
    ypyf3: TQRLabel;
    ksrq4: TQRLabel;
    kdysmc4: TQRLabel;
    xmmc4: TQRLabel;
    ypyf4: TQRLabel;
    kdysmc0: TQRLabel;
    ksrq0: TQRLabel;
    xmmc0: TQRLabel;
    ypyf0: TQRLabel;
    QRgrImage1: TQRImage;
    ksrq1: TQRLabel;
    QuickRep4: TQuickRep;
    QRBand5: TQRBand;
    ys: TQRLabel;
    QRBand6: TQRBand;
    QRShape72: TQRShape;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRShape73: TQRShape;
    QRShape74: TQRShape;
    QRShape75: TQRShape;
    QRShape76: TQRShape;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRShape77: TQRShape;
    QRShape78: TQRShape;
    QRLabel40: TQRLabel;
    QRShape79: TQRShape;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRLabel43: TQRLabel;
    qrlbl_nfQRL_bq_cq: TQRLabel;
    qrlbl_nf_tmh: TQRLabel;
    QRBand7: TQRBand;
    QRShape80: TQRShape;
    QRShape81: TQRShape;
    QRShape82: TQRShape;
    QRShape83: TQRShape;
    QRShape84: TQRShape;
    QRShape85: TQRShape;
    QRShape86: TQRShape;
    QRShape87: TQRShape;
    QRShape88: TQRShape;
    QRShape89: TQRShape;
    QRShape90: TQRShape;
    QRShape91: TQRShape;
    QRShape92: TQRShape;
    QRShape93: TQRShape;
    QRShape94: TQRShape;
    QRShape95: TQRShape;
    QRShape96: TQRShape;
    QRShape97: TQRShape;
    QRShape98: TQRShape;
    QRShape99: TQRShape;
    QRShape100: TQRShape;
    QRShape101: TQRShape;
    QRShape102: TQRShape;
    QRShape103: TQRShape;
    QRShape104: TQRShape;
    QRShape105: TQRShape;
    QRShape106: TQRShape;
    QRShape107: TQRShape;
    QRShape108: TQRShape;
    QRShape109: TQRShape;
    QRShape110: TQRShape;
    QRShape111: TQRShape;
    QRShape112: TQRShape;
    QRShape113: TQRShape;
    QRShape114: TQRShape;
    QRShape115: TQRShape;
    QRShape116: TQRShape;
    QRShape117: TQRShape;
    QRShape118: TQRShape;
    QRShape119: TQRShape;
    kdysmc_1: TQRLabel;
    xmmc_1: TQRLabel;
    ksrq_2: TQRLabel;
    kdysmc_2: TQRLabel;
    xmmc_2: TQRLabel;
    ksrq_3: TQRLabel;
    kdysmc_3: TQRLabel;
    xmmc_3: TQRLabel;
    ksrq_4: TQRLabel;
    kdysmc_4: TQRLabel;
    xmmc_4: TQRLabel;
    ksrq_5: TQRLabel;
    kdysmc_5: TQRLabel;
    xmmc_5: TQRLabel;
    ksrq_6: TQRLabel;
    kdysmc_6: TQRLabel;
    xmmc_6: TQRLabel;
    ksrq_7: TQRLabel;
    kdysmc_7: TQRLabel;
    xmmc_7: TQRLabel;
    ksrq_8: TQRLabel;
    kdysmc_8: TQRLabel;
    xmmc_8: TQRLabel;
    kdysmc_0: TQRLabel;
    ksrq_0: TQRLabel;
    xmmc_0: TQRLabel;
    ksrq_1: TQRLabel;
    QRShape120: TQRShape;
    QRShape121: TQRShape;
    QRShape122: TQRShape;
    QRShape123: TQRShape;
    QRShape124: TQRShape;
    QRShape125: TQRShape;
    QRShape126: TQRShape;
    QRShape127: TQRShape;
    QRShape128: TQRShape;
    QRShape129: TQRShape;
    QRShape130: TQRShape;
    QRShape131: TQRShape;
    QRShape132: TQRShape;
    ksrq_9: TQRLabel;
    kdysmc_9: TQRLabel;
    xmmc_9: TQRLabel;
    ksrq_10: TQRLabel;
    kdysmc_10: TQRLabel;
    xmmc_10: TQRLabel;
    ksrq_11: TQRLabel;
    kdysmc_11: TQRLabel;
    xmmc_11: TQRLabel;
    ksrq_12: TQRLabel;
    kdysmc_12: TQRLabel;
    xmmc_12: TQRLabel;
    ksrq_13: TQRLabel;
    kdysmc_13: TQRLabel;
    xmmc_13: TQRLabel;
    ksrq_14: TQRLabel;
    kdysmc_14: TQRLabel;
    xmmc_14: TQRLabel;
    ksrq_15: TQRLabel;
    kdysmc_15: TQRLabel;
    xmmc_15: TQRLabel;
    ksrq_16: TQRLabel;
    kdysmc_16: TQRLabel;
    xmmc_16: TQRLabel;
    ksrq_17: TQRLabel;
    kdysmc_17: TQRLabel;
    xmmc_17: TQRLabel;
    ksrq_18: TQRLabel;
    kdysmc_18: TQRLabel;
    xmmc_18: TQRLabel;
    ksrq_19: TQRLabel;
    kdysmc_19: TQRLabel;
    xmmc_19: TQRLabel;
    QRShape133: TQRShape;
    QRShape134: TQRShape;
    QRShape135: TQRShape;
    QRShape136: TQRShape;
    QRShape137: TQRShape;
    qrl_ks: TQRLabel;
    QuickRep5: TQuickRep;
    QRBand8: TQRBand;
    QRLabel44: TQRLabel;
    QRBand9: TQRBand;
    QRShape138: TQRShape;
    QRLabel45: TQRLabel;
    QRLabel46: TQRLabel;
    QRLabel47: TQRLabel;
    QRLabel48: TQRLabel;
    QRLabel49: TQRLabel;
    QRShape139: TQRShape;
    QRShape140: TQRShape;
    QRShape141: TQRShape;
    QRShape142: TQRShape;
    QRLabel50: TQRLabel;
    QRLabel51: TQRLabel;
    QRLabel52: TQRLabel;
    QRLabel53: TQRLabel;
    QRShape143: TQRShape;
    QRLabel54: TQRLabel;
    QRLabel55: TQRLabel;
    QRLabel56: TQRLabel;
    QRShape144: TQRShape;
    QRShape145: TQRShape;
    QRBand10: TQRBand;
    QRShape146: TQRShape;
    QRShape147: TQRShape;
    QRShape148: TQRShape;
    QRShape149: TQRShape;
    QRShape150: TQRShape;
    QRShape151: TQRShape;
    QRShape152: TQRShape;
    QRShape153: TQRShape;
    QRShape154: TQRShape;
    QRShape155: TQRShape;
    QRShape156: TQRShape;
    QRShape157: TQRShape;
    QRShape158: TQRShape;
    QRShape159: TQRShape;
    QRShape160: TQRShape;
    QRShape161: TQRShape;
    QRShape162: TQRShape;
    QRShape163: TQRShape;
    QRShape164: TQRShape;
    QRShape165: TQRShape;
    QRShape166: TQRShape;
    QRShape167: TQRShape;
    QRShape168: TQRShape;
    QRShape169: TQRShape;
    QRShape170: TQRShape;
    QRShape171: TQRShape;
    QRShape172: TQRShape;
    kdysmcls1: TQRLabel;
    ypyfls_1: TQRLabel;
    QRImagels_2: TQRImage;
    xmmcls_1: TQRLabel;
    ksrqls2: TQRLabel;
    kdysmcls2: TQRLabel;
    xmmcls_2: TQRLabel;
    QRImagels_3: TQRImage;
    ypyfls_2: TQRLabel;
    ksrqls3: TQRLabel;
    kdysmcls3: TQRLabel;
    xmmcls_3: TQRLabel;
    QRImagels_4: TQRImage;
    ypyfls_3: TQRLabel;
    ksrqls4: TQRLabel;
    kdysmcls4: TQRLabel;
    xmmcls_4: TQRLabel;
    QRImagels_5: TQRImage;
    ypyfls_4: TQRLabel;
    ksrqls5: TQRLabel;
    kdysmcls5: TQRLabel;
    xmmcls_5: TQRLabel;
    QRImagels_6: TQRImage;
    ypyfls_5: TQRLabel;
    ksrqls6: TQRLabel;
    kdysmcls6: TQRLabel;
    xmmcls_6: TQRLabel;
    QRImagels_7: TQRImage;
    ypyfls_6: TQRLabel;
    ksrqls7: TQRLabel;
    kdysmcls7: TQRLabel;
    xmmcls_7: TQRLabel;
    QRImagels_8: TQRImage;
    ypyfls_7: TQRLabel;
    ksrqls8: TQRLabel;
    kdysmcls8: TQRLabel;
    xmmcls_8: TQRLabel;
    QRImagels_9: TQRImage;
    ypyfls_8: TQRLabel;
    kdysmcls0: TQRLabel;
    ksrqls0: TQRLabel;
    xmmcls_0: TQRLabel;
    ypyfls_0: TQRLabel;
    QRImagels_1: TQRImage;
    ksrqls1: TQRLabel;
    ScrollBox4: TScrollBox;
    QRLabel61: TQRLabel;
    QRLabel67: TQRLabel;
    ComboBox1: TComboBox;
    QRShape65: TQRShape;
    bt_ztsave: TButton;
    bt_zt: TButton;
    BitBtn5: TBitBtn;
    BitBtn1: TBitBtn;
    Button1: TButton;
    cxButton1: TcxButton;
    bt_exit: TBitBtn;
    QRLabel57: TQRLabel;
    QRLabel58: TQRLabel;
    QRShape175: TQRShape;
    QRgrImage2: TQRImage;
    QRShape176: TQRShape;
    QRShape177: TQRShape;
    QRShape178: TQRShape;
    QRShape179: TQRShape;
    QRShape180: TQRShape;
    QRShape181: TQRShape;
    QRShape182: TQRShape;
    QRShape183: TQRShape;
    QRShape184: TQRShape;
    QRShape185: TQRShape;
    QRShape186: TQRShape;
    QRShape187: TQRShape;
    QRShape188: TQRShape;
    QRShape189: TQRShape;
    QRShape190: TQRShape;
    QRShape191: TQRShape;
    QRShape192: TQRShape;
    QRShape193: TQRShape;
    QRShape194: TQRShape;
    QRShape195: TQRShape;
    QRShape197: TQRShape;
    QRShape198: TQRShape;
    QuickRep6: TQuickRep;
    QRBand11: TQRBand;
    QRLabel59: TQRLabel;
    QRBand12: TQRBand;
    QRShape173: TQRShape;
    QRLabel2jy: TQRLabel;
    QRLabel3jy: TQRLabel;
    QRLabel60: TQRLabel;
    QRLabel62: TQRLabel;
    QRLabel63: TQRLabel;
    QRShape174: TQRShape;
    QRShape196: TQRShape;
    QRShape199: TQRShape;
    QRShape200: TQRShape;
    QRLabel20jy: TQRLabel;
    QRLabel21jy: TQRLabel;
    QRLabel26jy: TQRLabel;
    nyjy: TQRLabel;
    QRShape201: TQRShape;
    QRLabel64: TQRLabel;
    QRLabel65: TQRLabel;
    QRLabel66: TQRLabel;
    QRShape202: TQRShape;
    QRShape203: TQRShape;
    DetailBand2: TQRBand;
    QRShape204: TQRShape;
    QRShape205: TQRShape;
    QRShape206: TQRShape;
    QRShape207: TQRShape;
    QRShape208: TQRShape;
    QRShape209: TQRShape;
    QRShape210: TQRShape;
    QRShape211: TQRShape;
    QRShape212: TQRShape;
    QRShape213: TQRShape;
    QRShape214: TQRShape;
    QRShape215: TQRShape;
    QRShape216: TQRShape;
    QRShape217: TQRShape;
    QRShape218: TQRShape;
    QRShape219: TQRShape;
    QRShape220: TQRShape;
    QRShape221: TQRShape;
    QRShape222: TQRShape;
    QRShape223: TQRShape;
    QRShape224: TQRShape;
    QRShape225: TQRShape;
    QRShape226: TQRShape;
    QRShape227: TQRShape;
    QRShape228: TQRShape;
    QRShape229: TQRShape;
    QRShape230: TQRShape;
    QRShape231: TQRShape;
    QRShape232: TQRShape;
    QRShape233: TQRShape;
    QRShape234: TQRShape;
    QRShape235: TQRShape;
    QRShape236: TQRShape;
    QRShape237: TQRShape;
    QRShape238: TQRShape;
    QRShape239: TQRShape;
    QRShape240: TQRShape;
    QRShape241: TQRShape;
    QRShape242: TQRShape;
    QRShape243: TQRShape;
    QRShape244: TQRShape;
    QRShape245: TQRShape;
    kdysmcjy1: TQRLabel;
    ypyfjy1: TQRLabel;
    QRgrImagejy2: TQRImage;
    xmmcjy1: TQRLabel;
    ksrqjy2: TQRLabel;
    kdysmcjy2: TQRLabel;
    xmmcjy2: TQRLabel;
    QRgrImagejy3: TQRImage;
    ypyfjy2: TQRLabel;
    ksrqjy3: TQRLabel;
    kdysmcjy3: TQRLabel;
    xmmcjy3: TQRLabel;
    QRgrImagejy4: TQRImage;
    ypyfjy3: TQRLabel;
    ksrqjy4: TQRLabel;
    kdysmcjy4: TQRLabel;
    xmmcjy4: TQRLabel;
    QRgrImagejy5: TQRImage;
    ypyfjy4: TQRLabel;
    ksrqjy5: TQRLabel;
    kdysmcjy5: TQRLabel;
    xmmcjy5: TQRLabel;
    QRgrImagejy6: TQRImage;
    ypyfjy5: TQRLabel;
    ksrqjy6: TQRLabel;
    kdysmcjy6: TQRLabel;
    xmmcjy6: TQRLabel;
    QRgrImagejy7: TQRImage;
    ypyfjy6: TQRLabel;
    ksrqjy7: TQRLabel;
    kdysmcjy7: TQRLabel;
    xmmcjy7: TQRLabel;
    QRgrImagejy8: TQRImage;
    ypyfjy7: TQRLabel;
    ksrqjy8: TQRLabel;
    kdysmcjy8: TQRLabel;
    xmmcjy8: TQRLabel;
    QRgrImagejy9: TQRImage;
    ypyfjy8: TQRLabel;
    kdysmcjy0: TQRLabel;
    ksrqjy0: TQRLabel;
    xmmcjy0: TQRLabel;
    ypyfjy0: TQRLabel;
    QRgrImagejy1: TQRImage;
    ksrqjy1: TQRLabel;
    QRShape246: TQRShape;
    QRLabel61jy: TQRLabel;
    cxButton2: TcxButton;
    PopupMenu3: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    btn1: TButton;
    cxButton3: TcxButton;
    PopupMenu4: TPopupMenu;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    PopupMenu5: TPopupMenu;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    cxButton4: TcxButton;
    cxButton5: TcxButton;
    PopupMenu6: TPopupMenu;
    MenuItem7: TMenuItem;
    MenuItem8: TMenuItem;
    cxButton6: TcxButton;
    PopupMenu7: TPopupMenu;
    MenuItem9: TMenuItem;
    MenuItem10: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    cxButton7: TcxButton;
    PopupMenu8: TPopupMenu;
    MenuItem11: TMenuItem;
    MenuItem12: TMenuItem;
    MenuItem13: TMenuItem;
    MenuItem14: TMenuItem;
    DateTimePicker1: TDateTimePicker;
    Label8: TLabel;
    DateTimePicker2: TDateTimePicker;
    Button2: TButton;
    Label9: TLabel;
    Button3: TButton;
    qry_yzxyzbz: TBooleanField;
    N11: TMenuItem;
    qry_cx: TADOQuery;
    sp_ty_ypcx: TADOStoredProc;
    sp_lsyztf: TADOStoredProc;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    QRShape247: TQRShape;
    QRLabel68: TQRLabel;
    QRLabel69: TQRLabel;
    QRLabel70: TQRLabel;
    Button7: TButton;
    Button8: TButton;
    N12: TMenuItem;
    ywxxcx: TMenuItem;
    m_pass101: TMenuItem;
    m_pass102: TMenuItem;
    m_pass103: TMenuItem;
    m_pass107: TMenuItem;
    m_pass104: TMenuItem;
    m_pass220: TMenuItem;
    m_pass30: TMenuItem;
    m_pass201: TMenuItem;
    m_pass202: TMenuItem;
    m_pass203: TMenuItem;
    m_pass204: TMenuItem;
    m_pass205: TMenuItem;
    m_pass206: TMenuItem;
    m_pass207: TMenuItem;
    m_pass208: TMenuItem;
    m_pass209: TMenuItem;
    m_pass210: TMenuItem;
    N30: TMenuItem;
    N31: TMenuItem;
    N32: TMenuItem;
    m_pass106: TMenuItem;
    m_pass13: TMenuItem;
    m_pass14: TMenuItem;
    m_pass105: TMenuItem;
    m_pass11: TMenuItem;
    m_pass22: TMenuItem;
    m_pass50: TMenuItem;
    m_pass60: TMenuItem;
    m_pass70: TMenuItem;
    m_pass301: TMenuItem;
    N43: TMenuItem;
    N44: TMenuItem;
    N45: TMenuItem;
    N46: TMenuItem;
    N47: TMenuItem;
    N48: TMenuItem;
    N49: TMenuItem;
    qry_yf: TADOQuery;
    ds_yf: TDataSource;
    Timer1: TTimer;
    cxTabSheet4: TcxTabSheet;
    Panel4: TPanel;
    Label11: TLabel;
    Edt_pass_tmh: TEdit;
    WebBrowser1: TWebBrowser;
    pnl_lclj: TPanel;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton4: TToolButton;
    ToolButton3: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    ToolButton9: TToolButton;
    ToolButton8: TToolButton;
    N13: TMenuItem;
    N14: TMenuItem;
    N15: TMenuItem;
    N16: TMenuItem;
    N17: TMenuItem;
    N18: TMenuItem;
    cxButton8: TcxButton;
    PopupMenu9: TPopupMenu;
    N19: TMenuItem;
    N20: TMenuItem;
    qry_yzssid: TIntegerField;
    cxTabSheet5: TcxTabSheet;
    Panel5: TPanel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1: TcxGrid;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1BandedTableView1: TcxGridBandedTableView;
    qry_brljjd: TADOQuery;
    Panel6: TPanel;
    btn_drlj: TButton;
    Button9: TButton;
    qry_ljzxmx: TADOQuery;
    qry_lcljmbjc: TADOQuery;
    sp_lcljdr: TADOStoredProc;
    qry_ljxmjc: TADOQuery;
    qry_jyyb: TADOQuery;
    GroupBox1: TGroupBox;
    cxGrid3: TcxGrid;
    cxGrid3DBTableView1: TcxGridDBTableView;
    cxGrid3DBTableView1tmh: TcxGridDBColumn;
    cxGrid3DBTableView1brxm: TcxGridDBColumn;
    cxGrid3DBTableView1fzbh: TcxGridDBColumn;
    cxGrid3DBTableView1ybmc: TcxGridDBColumn;
    cxGrid3DBTableView1barcode: TcxGridDBColumn;
    cxGrid3DBTableView1itemCName: TcxGridDBColumn;
    cxGrid3DBTableView1ItemEname: TcxGridDBColumn;
    cxGrid3DBTableView1ItemValue: TcxGridDBColumn;
    cxGrid3DBTableView1ItemDesc: TcxGridDBColumn;
    cxGrid3DBTableView1ItemRange: TcxGridDBColumn;
    cxGrid3DBTableView1ResultStatus: TcxGridDBColumn;
    cxGrid3DBTableView1Itemunit: TcxGridDBColumn;
    cxGrid3DBTableView1sqrq: TcxGridDBColumn;
    cxGrid3DBTableView1Column1: TcxGridDBColumn;
    cxGrid3Level1: TcxGridLevel;
    GroupBox2: TGroupBox;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridDBColumn11: TcxGridDBColumn;
    cxGridDBColumn12: TcxGridDBColumn;
    cxGridDBColumn13: TcxGridDBColumn;
    cxGridDBColumn14: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    qry_cx_jyjg_wsw: TADOQuery;
    ds_cx_jyjg_wsw: TDataSource;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    qry_hjjl: TADOQuery;
    N21: TMenuItem;
    N22: TMenuItem;
    Button10: TButton;
    Panel8: TPanel;
    Panel9: TPanel;
    Edit1: TEdit;
    DBGridEh8: TDBGridEh;
    Label12: TLabel;
    Label13: TLabel;
    Edit2: TEdit;
    qry_icd10: TADOQuery;
    ds_icd10: TDataSource;
    Button11: TButton;
    Button12: TButton;
    Edit3: TEdit;
    Label14: TLabel;
    qry_ljcx: TADOQuery;
    Label15: TLabel;
    Label16: TLabel;
    btnyxsq: TButton;
    cxTabSheet6: TcxTabSheet;
    Panel11: TPanel;
    cxGrid4: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGridDBTableView2Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxGrid1DBTableView1Column3: TcxGridDBColumn;
    cxGrid1DBTableView1Column4: TcxGridDBColumn;
    cxGrid1DBTableView1Column6: TcxGridDBColumn;
    cxGrid1DBTableView1Column5: TcxGridDBColumn;
    cxGrid1DBTableView1Column7: TcxGridDBColumn;
    cxGrid1DBTableView1Column8: TcxGridDBColumn;
    cxGridDBTableView2Column2: TcxGridDBColumn;
    cxGridDBTableView2Column3: TcxGridDBColumn;
    cxGrid1DBTableView1Column9: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    qry_lxd: TADOQuery;
    ds_lxd: TDataSource;
    Panel13: TPanel;
    Button13: TButton;
    cxButton9: TcxButton;
    PopupMenu10: TPopupMenu;
    MenuItem15: TMenuItem;
    MenuItem16: TMenuItem;
    qry_dzblmbcx: TADOQuery;
    qry_brbl: TADOQuery;
    qry_up_dlbl: TADOQuery;
    sp_up_bcjlmx: TADOStoredProc;
    Button14: TButton;
    Label17: TLabel;
    Edit4: TEdit;
    cxTabSheet7: TcxTabSheet;
    GridppReport11: TGridppReport;
    QuickRep9: TQuickRep;
    QRBand15: TQRBand;
    QRLabel590: TQRLabel;
    QRBand16: TQRBand;
    QRShape1730: TQRShape;
    QRLabel2jy0: TQRLabel;
    QRLabel3jy0: TQRLabel;
    QRShape1740: TQRShape;
    QRShape1960: TQRShape;
    QRShape2000: TQRShape;
    QRLabel20jy0: TQRLabel;
    QRLabel21jy0: TQRLabel;
    QRLabel26jy0: TQRLabel;
    nyjy0: TQRLabel;
    QRLabel640: TQRLabel;
    QRLabel650: TQRLabel;
    QRLabel660: TQRLabel;
    QRShape2020: TQRShape;
    QRShape2470: TQRShape;
    QRLabel680: TQRLabel;
    QRLabel690: TQRLabel;
    QRLabel700: TQRLabel;
    qrshp1: TQRShape;
    QRLabel125: TQRLabel;
    QRLabel126: TQRLabel;
    qrshp2: TQRShape;
    qrshp3: TQRShape;
    qrshp4: TQRShape;
    QRLabel127: TQRLabel;
    qrshp5: TQRShape;
    qrshp6: TQRShape;
    DetailBand4: TQRBand;
    QRShape300: TQRShape;
    QRShape301: TQRShape;
    QRShape2060: TQRShape;
    QRShape2080: TQRShape;
    QRShape302: TQRShape;
    QRShape303: TQRShape;
    QRShape304: TQRShape;
    QRShape305: TQRShape;
    QRShape306: TQRShape;
    QRShape307: TQRShape;
    QRShape308: TQRShape;
    QRShape309: TQRShape;
    QRShape310: TQRShape;
    QRShape311: TQRShape;
    QRShape312: TQRShape;
    QRShape313: TQRShape;
    QRShape314: TQRShape;
    QRShape315: TQRShape;
    QRShape316: TQRShape;
    kdysmcj1: TQRLabel;
    ypyfj1: TQRLabel;
    QRgrImagej2: TQRImage;
    xmmcj1: TQRLabel;
    ksrqj2: TQRLabel;
    kdysmcj2: TQRLabel;
    xmmcj2: TQRLabel;
    QRgrImagej3: TQRImage;
    ypyfj2: TQRLabel;
    ksrqj3: TQRLabel;
    kdysmcj3: TQRLabel;
    xmmcj3: TQRLabel;
    QRgrImagej4: TQRImage;
    ypyfj3: TQRLabel;
    ksrqj4: TQRLabel;
    kdysmcj4: TQRLabel;
    xmmcj4: TQRLabel;
    QRgrImagej5: TQRImage;
    ypyfj4: TQRLabel;
    kdysmcj0: TQRLabel;
    ksrqj0: TQRLabel;
    xmmcj0: TQRLabel;
    ypyfj0: TQRLabel;
    QRgrImagej1: TQRImage;
    ksrqj1: TQRLabel;
    QRShape317: TQRShape;
    QRShape318: TQRShape;
    QRShape319: TQRShape;
    QRShape320: TQRShape;
    QRShape321: TQRShape;
    QRShape322: TQRShape;
    QRShape323: TQRShape;
    QRShape324: TQRShape;
    QRShape325: TQRShape;
    QRShape326: TQRShape;
    QRLabel62jy: TQRLabel;
    QRLabel171: TQRLabel;
    qckrp1: TQuickRep;
    qrbnd1: TQRBand;
    QRLabel71: TQRLabel;
    qrbnd2: TQRBand;
    qrshp7: TQRShape;
    QRcq: TQRLabel;
    QRcqxm: TQRLabel;
    QRLabel74: TQRLabel;
    QRLabel75: TQRLabel;
    QRLabel76: TQRLabel;
    qrshp8: TQRShape;
    qrshp9: TQRShape;
    qrshp10: TQRShape;
    qrshp11: TQRShape;
    QRcqbch: TQRLabel;
    QRcqxb: TQRLabel;
    QRcqnl: TQRLabel;
    QRcqn: TQRLabel;
    qrshp12: TQRShape;
    QRLabel81: TQRLabel;
    QRLabel82: TQRLabel;
    QRLabel83: TQRLabel;
    qrshp14: TQRShape;
    qrshp15: TQRShape;
    qrshp42: TQRShape;
    QRLabel106: TQRLabel;
    QRLabel107: TQRLabel;
    qrshp29: TQRShape;
    qrshp17: TQRShape;
    qrbnd3: TQRBand;
    qrshp19: TQRShape;
    qrshp20: TQRShape;
    qrshp22: TQRShape;
    qrshp25: TQRShape;
    qrshp30: TQRShape;
    qrshp31: TQRShape;
    qrshp36: TQRShape;
    qrshp37: TQRShape;
    qrshp39: TQRShape;
    qrshp40: TQRShape;
    qrshp45: TQRShape;
    qrshp46: TQRShape;
    qrshp51: TQRShape;
    qrshp52: TQRShape;
    qrshp53: TQRShape;
    qrshp54: TQRShape;
    qrshp55: TQRShape;
    qrshp56: TQRShape;
    QRcqysmc1: TQRLabel;
    QRcqypyf1: TQRLabel;
    QRcq2: TQRImage;
    QRcqxmmx1: TQRLabel;
    QRcqksrq2: TQRLabel;
    QRcqysmc2: TQRLabel;
    QRcqxmmx2: TQRLabel;
    QRcq3: TQRImage;
    QRcqypyf2: TQRLabel;
    QRcqksrq3: TQRLabel;
    QRcqysmc3: TQRLabel;
    QRcqxmmx4: TQRLabel;
    QRcq4: TQRImage;
    QRcqypyf3: TQRLabel;
    QRcqksrq4: TQRLabel;
    QRcqysmc4: TQRLabel;
    QRcqxmmx5: TQRLabel;
    QRcqypyf4: TQRLabel;
    QRcqysmc0: TQRLabel;
    QRcqksrq0: TQRLabel;
    QRcqxmmx0: TQRLabel;
    QRcqypyf0: TQRLabel;
    QRcq0: TQRImage;
    QRcqksrq1: TQRLabel;
    QRcq1: TQRImage;
    qrshp68: TQRShape;
    qrshp21: TQRShape;
    qrshp23: TQRShape;
    qrshp24: TQRShape;
    qrshp27: TQRShape;
    qrshp28: TQRShape;
    qrshp32: TQRShape;
    qrshp33: TQRShape;
    qrshp34: TQRShape;
    QRcqksrq5: TQRLabel;
    QRcqysmc5: TQRLabel;
    qrshp35: TQRShape;
    qrshp38: TQRShape;
    QRcqxmmx6: TQRLabel;
    QRcqypyf5: TQRLabel;
    QRcq5: TQRImage;
    qrshp41: TQRShape;
    qrshp43: TQRShape;
    qrshp44: TQRShape;
    qrshp47: TQRShape;
    qrshp48: TQRShape;
    QRcqksrq6: TQRLabel;
    QRcqksrq7: TQRLabel;
    QRcqysmc6: TQRLabel;
    QRcqysmc7: TQRLabel;
    qrshp49: TQRShape;
    QRcqxmmx7: TQRLabel;
    QRcqypyf6: TQRLabel;
    QRcq6: TQRImage;
    qrshp50: TQRShape;
    QRLabel118: TQRLabel;
    QRcq7: TQRImage;
    QRcqypyf7: TQRLabel;
    qrshp57: TQRShape;
    qrshp58: TQRShape;
    qrshp59: TQRShape;
    qrshp60: TQRShape;
    qrshp16: TQRShape;
    qrshp13: TQRShape;
    qrshp18: TQRShape;
    QRcqxmxm: TQRLabel;
    QRcqkh: TQRLabel;
    QRcqbchbch: TQRLabel;
    qckrpcqsy: TQuickRep;
    qrbnd4: TQRBand;
    qrbndcqsy: TQRBand;
    qrbnd6: TQRBand;
    cqsyxmxm: TQRLabel;
    cqsybchbch: TQRLabel;
    cqsykh: TQRLabel;
    cqsymc: TQRLabel;
    cqsybch: TQRLabel;
    cqsyxm: TQRLabel;
    cqsyxb: TQRLabel;
    cqsynl: TQRLabel;
    cqsyn: TQRLabel;
    qrshp26: TQRShape;
    qrshp61: TQRShape;
    QRLabel79: TQRLabel;
    QRLabel80: TQRLabel;
    QRLabel84: TQRLabel;
    qrshp62: TQRShape;
    qrshp63: TQRShape;
    QRLabel85: TQRLabel;
    QRLabel86: TQRLabel;
    QRLabel87: TQRLabel;
    qrshp64: TQRShape;
    qrshp65: TQRShape;
    qrshp66: TQRShape;
    qrshp67: TQRShape;
    qrshp69: TQRShape;
    qrshp70: TQRShape;
    qrshp71: TQRShape;
    qrshp72: TQRShape;
    qrshp73: TQRShape;
    qrshp74: TQRShape;
    qrshp75: TQRShape;
    qrshp76: TQRShape;
    qrshp77: TQRShape;
    qrshp78: TQRShape;
    qrshp79: TQRShape;
    qrshp80: TQRShape;
    qrshp81: TQRShape;
    qrshp82: TQRShape;
    qrshp83: TQRShape;
    qrshp84: TQRShape;
    qrshp85: TQRShape;
    qrshp86: TQRShape;
    qrshp87: TQRShape;
    qrshp88: TQRShape;
    qrshp89: TQRShape;
    qrshp90: TQRShape;
    qrshp91: TQRShape;
    qrshp92: TQRShape;
    qrshp93: TQRShape;
    qrshp94: TQRShape;
    qrshp95: TQRShape;
    qrshp96: TQRShape;
    qrshp97: TQRShape;
    cqsyksrq0: TQRLabel;
    cqsyksrq1: TQRLabel;
    cqsyksrq2: TQRLabel;
    cqsyksrq3: TQRLabel;
    cqsyksrq4: TQRLabel;
    cqsyksrq5: TQRLabel;
    cqsyksrq6: TQRLabel;
    cqsyksrq7: TQRLabel;
    cqsykdys0: TQRLabel;
    cqsykdys1: TQRLabel;
    cqsykdys2: TQRLabel;
    cqsykdys3: TQRLabel;
    cqsykdys4: TQRLabel;
    cqsykdys5: TQRLabel;
    cqsykdys6: TQRLabel;
    cqsykdys7: TQRLabel;
    cqsyxmmc0: TQRLabel;
    cqsyxmmc1: TQRLabel;
    cqsyxmmc2: TQRLabel;
    cqsyxmmc3: TQRLabel;
    cqsyxmmc4: TQRLabel;
    cqsyxmmc5: TQRLabel;
    cqsyxmmc6: TQRLabel;
    cqsyxmmc7: TQRLabel;
    QRImagesy1: TQRImage;
    QRImagesy2: TQRImage;
    QRImagesy3: TQRImage;
    QRImagesy4: TQRImage;
    QRImagesy5: TQRImage;
    QRImagesy6: TQRImage;
    QRImagesy7: TQRImage;
    QRImagesy8: TQRImage;
    cqsyypyf0: TQRLabel;
    cqsyypyf1: TQRLabel;
    cqsyypyf2: TQRLabel;
    cqsyypyf3: TQRLabel;
    cqsyypyf4: TQRLabel;
    cqsyypyf5: TQRLabel;
    cqsyypyf6: TQRLabel;
    cqsyypyf7: TQRLabel;
    qckrplssy: TQuickRep;
    qrbnd5: TQRBand;
    QRLabel88: TQRLabel;
    QRLabel89: TQRLabel;
    QRLabel90: TQRLabel;
    QRLabel91: TQRLabel;
    QRLabel92: TQRLabel;
    QRLabel93: TQRLabel;
    qrshp98: TQRShape;
    qrshp99: TQRShape;
    QRLabel94: TQRLabel;
    QRLabel95: TQRLabel;
    QRLabel96: TQRLabel;
    qrshp101: TQRShape;
    QRLabel99: TQRLabel;
    qrbndlssy: TQRBand;
    qrshp102: TQRShape;
    qrshp103: TQRShape;
    qrshp105: TQRShape;
    qrshp111: TQRShape;
    qrshp112: TQRShape;
    qrshp113: TQRShape;
    qrshp114: TQRShape;
    qrshp115: TQRShape;
    qrshp116: TQRShape;
    qrshp117: TQRShape;
    qrshp118: TQRShape;
    qrshp119: TQRShape;
    qrshp120: TQRShape;
    qrshp122: TQRShape;
    lssyksrq0: TQRLabel;
    lssyksrq1: TQRLabel;
    lssyksrq2: TQRLabel;
    lssyksrq3: TQRLabel;
    lssyksrq4: TQRLabel;
    lssyksrq5: TQRLabel;
    lssyksrq6: TQRLabel;
    lssyksrq7: TQRLabel;
    lssykdys0: TQRLabel;
    lssykdys1: TQRLabel;
    lssykdys2: TQRLabel;
    lssykdys3: TQRLabel;
    lssykdys4: TQRLabel;
    lssykdys5: TQRLabel;
    lssykdys6: TQRLabel;
    lssykdys7: TQRLabel;
    lssyxmmc0: TQRLabel;
    lssyxmmc1: TQRLabel;
    lssyxmmc2: TQRLabel;
    lssyxmmc3: TQRLabel;
    lssyxmmc4: TQRLabel;
    lssyxmmc5: TQRLabel;
    lssyxmmc6: TQRLabel;
    lssyxmmc7: TQRLabel;
    QRImagels1: TQRImage;
    QRImagels2: TQRImage;
    QRImagels3: TQRImage;
    QRImagels4: TQRImage;
    QRImagels5: TQRImage;
    QRImagels6: TQRImage;
    QRImagels7: TQRImage;
    QRImagels8: TQRImage;
    lssyypyf0: TQRLabel;
    lssyypyf1: TQRLabel;
    lssyypyf2: TQRLabel;
    lssyypyf3: TQRLabel;
    lssyypyf4: TQRLabel;
    lssyypyf5: TQRLabel;
    lssyypyf6: TQRLabel;
    lssyypyf7: TQRLabel;
    qrbnd8: TQRBand;
    QRLabel138: TQRLabel;
    QRLabel139: TQRLabel;
    QRLabel140: TQRLabel;
    qrshp100: TQRShape;
    qckrpcqzl: TQuickRep;
    qrbnd7: TQRBand;
    cqzlmc: TQRLabel;
    cqzlbch: TQRLabel;
    cqzlxm: TQRLabel;
    cqzlxb: TQRLabel;
    cqzlnl: TQRLabel;
    cqzln: TQRLabel;
    qrshp104: TQRShape;
    qrshp106: TQRShape;
    QRLabel104: TQRLabel;
    QRLabel105: TQRLabel;
    QRLabel108: TQRLabel;
    qrshp107: TQRShape;
    qrshp108: TQRShape;
    QRLabel109: TQRLabel;
    QRLabel110: TQRLabel;
    QRLabel111: TQRLabel;
    qrbndcqzl: TQRBand;
    qrshp109: TQRShape;
    qrshp110: TQRShape;
    qrshp123: TQRShape;
    qrshp128: TQRShape;
    qrshp129: TQRShape;
    qrshp130: TQRShape;
    qrshp131: TQRShape;
    qrshp132: TQRShape;
    qrshp133: TQRShape;
    qrshp134: TQRShape;
    qrshp135: TQRShape;
    qrshp136: TQRShape;
    qrshp137: TQRShape;
    qrshp138: TQRShape;
    qrshp139: TQRShape;
    qrshp140: TQRShape;
    qrshp141: TQRShape;
    qrshp142: TQRShape;
    qrshp144: TQRShape;
    qrshp145: TQRShape;
    qrshp146: TQRShape;
    qrshp147: TQRShape;
    qrshp148: TQRShape;
    qrshp149: TQRShape;
    qrshp150: TQRShape;
    qrshp151: TQRShape;
    qrshp152: TQRShape;
    cqzlksrq0: TQRLabel;
    cqzlksrq1: TQRLabel;
    cqzlksrq2: TQRLabel;
    cqzlksrq3: TQRLabel;
    cqzlksrq4: TQRLabel;
    cqzlksrq5: TQRLabel;
    cqzlksrq6: TQRLabel;
    cqzlksrq7: TQRLabel;
    cqzlkdys0: TQRLabel;
    cqzlkdys1: TQRLabel;
    cqzlkdys2: TQRLabel;
    cqzlkdys3: TQRLabel;
    cqzlkdys4: TQRLabel;
    cqzlkdys5: TQRLabel;
    cqzlkdys6: TQRLabel;
    cqzlkdys7: TQRLabel;
    cqzlxmmc0: TQRLabel;
    cqzlxmmc1: TQRLabel;
    cqzlxmmc2: TQRLabel;
    cqzlxmmc3: TQRLabel;
    cqzlxmmc4: TQRLabel;
    cqzlxmmc5: TQRLabel;
    cqzlxmmc6: TQRLabel;
    cqzlxmmc7: TQRLabel;
    QRImagezl1: TQRImage;
    QRImagezl2: TQRImage;
    QRImagezl3: TQRImage;
    QRImagezl4: TQRImage;
    QRImagezl5: TQRImage;
    QRImagezl6: TQRImage;
    QRImagezl7: TQRImage;
    QRImagezl8: TQRImage;
    cqzlypyf0: TQRLabel;
    cqzlypyf1: TQRLabel;
    cqzlypyf2: TQRLabel;
    cqzlypyf3: TQRLabel;
    cqzlypyf4: TQRLabel;
    cqzlypyf5: TQRLabel;
    cqzlypyf6: TQRLabel;
    cqzlypyf7: TQRLabel;
    qrbnd10: TQRBand;
    cqzlxmxm: TQRLabel;
    cqzlbchbch: TQRLabel;
    cqzlkhkh: TQRLabel;
    qrshp121: TQRShape;
    qrshp124: TQRShape;
    qrshp125: TQRShape;
    qrshp126: TQRShape;
    qckrp2: TQuickRep;
    qrbnd9: TQRBand;
    QRcqzsmc: TQRLabel;
    QRcqzsbch: TQRLabel;
    QRcqzsxm: TQRLabel;
    QRcqzsxb: TQRLabel;
    QRcqzsnl: TQRLabel;
    QRcqzsn: TQRLabel;
    qrshp127: TQRShape;
    qrshp143: TQRShape;
    QRLabel119: TQRLabel;
    QRLabel120: TQRLabel;
    QRLabel121: TQRLabel;
    qrshp153: TQRShape;
    qrshp154: TQRShape;
    QRLabel122: TQRLabel;
    QRLabel123: TQRLabel;
    QRLabel124: TQRLabel;
    qrshp155: TQRShape;
    qrbndcqzs: TQRBand;
    qrshp156: TQRShape;
    qrshp157: TQRShape;
    qrshp158: TQRShape;
    qrshp159: TQRShape;
    qrshp160: TQRShape;
    qrshp161: TQRShape;
    qrshp162: TQRShape;
    qrshp163: TQRShape;
    qrshp164: TQRShape;
    qrshp165: TQRShape;
    qrshp166: TQRShape;
    qrshp167: TQRShape;
    qrshp168: TQRShape;
    qrshp169: TQRShape;
    qrshp170: TQRShape;
    qrshp171: TQRShape;
    qrshp172: TQRShape;
    qrshp173: TQRShape;
    qrshp175: TQRShape;
    qrshp176: TQRShape;
    qrshp177: TQRShape;
    qrshp178: TQRShape;
    qrshp179: TQRShape;
    qrshp180: TQRShape;
    qrshp181: TQRShape;
    qrshp182: TQRShape;
    cqzsksrq0: TQRLabel;
    cqzsksrq1: TQRLabel;
    cqzsksrq2: TQRLabel;
    cqzsksrq3: TQRLabel;
    cqzsksrq4: TQRLabel;
    cqzsksrq5: TQRLabel;
    cqzsksrq6: TQRLabel;
    cqzsksrq7: TQRLabel;
    cqzskdys0: TQRLabel;
    cqzskdys1: TQRLabel;
    cqzskdys2: TQRLabel;
    cqzskdys3: TQRLabel;
    cqzskdys4: TQRLabel;
    cqzskdys5: TQRLabel;
    cqzskdys6: TQRLabel;
    cqzskdys7: TQRLabel;
    cqzsxmmc0: TQRLabel;
    cqzsxmmc1: TQRLabel;
    cqzsxmmc2: TQRLabel;
    cqzsxmmc3: TQRLabel;
    cqzsxmmc4: TQRLabel;
    cqzsxmmc5: TQRLabel;
    cqzsxmmc6: TQRLabel;
    cqzsxmmc7: TQRLabel;
    QRImagezs1: TQRImage;
    QRImagezs2: TQRImage;
    QRImagezs3: TQRImage;
    QRImagezs4: TQRImage;
    QRImagezs5: TQRImage;
    QRImagezs6: TQRImage;
    QRImagezs7: TQRImage;
    QRImagezs8: TQRImage;
    cqzsypyf0: TQRLabel;
    cqzsypyf1: TQRLabel;
    cqzsypyf2: TQRLabel;
    cqzsypyf3: TQRLabel;
    cqzsypyf4: TQRLabel;
    cqzsypyf5: TQRLabel;
    cqzsypyf6: TQRLabel;
    cqzsypyf7: TQRLabel;
    qrshp183: TQRShape;
    qrshp184: TQRShape;
    qrshp185: TQRShape;
    qrbnd12: TQRBand;
    QRcqzsxmxm: TQRLabel;
    QRcqzsbchbch: TQRLabel;
    QRcqzskhkh: TQRLabel;
    sp_cx_drjyxm: TADOStoredProc;
    ds_cx_drjyxm: TDataSource;
    qry_save_yyznr: TADOQuery;
    QRLabel72: TQRLabel;
    QRLabel73: TQRLabel;
    QRLabel77: TQRLabel;
    QRLabel78: TQRLabel;
    Button17: TButton;
    qry_yzPacsjcbw: TStringField;
    btBZGL: TButton;
    Label19: TLabel;
    QRLabel97: TQRLabel;
    N23: TMenuItem;
    QRLabel98: TQRLabel;
    Label20: TLabel;
    ComboBox2: TComboBox;
    Label22: TLabel;
    Panel16: TPanel;
    GroupBox4: TGroupBox;
    describes: TRzRichEdit;
    GroupBox6: TGroupBox;
    diagnosis: TRzRichEdit;
    N24: TMenuItem;
    ChangePharnacy: TMenuItem;
    PnlJY: TPanel;
    Panel14: TPanel;
    Label18: TLabel;
    dtp_JY: TDateTimePicker;
    chkJY: TCheckBox;
    btnPrintJYSQD: TButton;
    btnReadJY: TButton;
    Panel15: TPanel;
    GroupBox3: TGroupBox;
    DBGridEh9: TDBGridEh;
    ds_cx_drjcxm: TDataSource;
    DBGridEh6: TDBGridEh;
    cxtbshtJC: TcxTabSheet;
    PnlJC: TPanel;
    Panel17: TPanel;
    Label23: TLabel;
    dtp_jc: TDateTimePicker;
    chkJC: TCheckBox;
    btnPrintJCSQD: TButton;
    btnReadJC: TButton;
    pnl1: TPanel;
    grp1: TGroupBox;
    DBGridEh10: TDBGridEh;
    chkAllJY: TCheckBox;
    chkALLJC: TCheckBox;
    sp_cx_drjcxm: TADOStoredProc;
    btnPathPrt: TButton;
    sp_pacs_jg: TADOStoredProc;
    btn2: TButton;
    N26: TMenuItem;
    N27: TMenuItem;
    N28: TMenuItem;
    qry_yzje: TFloatField;
    ImageList1: TImageList;
    grid_yzlr: TDBGridEh;
    DBGridEh7: TDBGridEh;
    sp_cx_yz_xmzhmx: TADOStoredProc;
    sp_yzxmpx: TADOStoredProc;
    pm_LongTimeYzdy: TPopupMenu;
    MenuItem17: TMenuItem;
    MenuItem18: TMenuItem;
    pm_Tempyzdy: TPopupMenu;
    MenuItem20: TMenuItem;
    MenuItem21: TMenuItem;
    pm1: TPopupMenu;
    MenuItem19: TMenuItem;
    MenuItem22: TMenuItem;
    MenuItem23: TMenuItem;
    cxButton10: TcxButton;
    cxButton11: TcxButton;
    ds_cq_print: TDataSource;
    ds_lsyz_print: TDataSource;
    sp_zxjl_ls_zxyy_dy: TADOStoredProc;
    sp_zxjl_cp_zxyy_dy: TADOStoredProc;
    qry_yzzhdm: TStringField;
    qckrpcqjy: TQuickRep;
    qrbnd14: TQRBand;
    jycqsymc: TQRLabel;
    jycqsybch: TQRLabel;
    jycqsyxm: TQRLabel;
    jycqsyxb: TQRLabel;
    jycqsynl: TQRLabel;
    jycqsyn: TQRLabel;
    qrshp191: TQRShape;
    qrshp192: TQRShape;
    jy1: TQRLabel;
    jy2: TQRLabel;
    jy3: TQRLabel;
    qrshp200: TQRShape;
    qrshp204: TQRShape;
    jy4: TQRLabel;
    jy5: TQRLabel;
    jy6: TQRLabel;
    qrshp206: TQRShape;
    qrshp207: TQRShape;
    qrshp210: TQRShape;
    qrshp211: TQRShape;
    qrshp216: TQRShape;
    qrbndcqjy: TQRBand;
    qrshp217: TQRShape;
    qrshp225: TQRShape;
    qrshp226: TQRShape;
    qrshp227: TQRShape;
    qrshp228: TQRShape;
    qrshp229: TQRShape;
    qrshp231: TQRShape;
    qrshp241: TQRShape;
    qrshp242: TQRShape;
    qrshp243: TQRShape;
    qrshp245: TQRShape;
    qrshp246: TQRShape;
    qrshp247: TQRShape;
    qrshp250: TQRShape;
    qrshp251: TQRShape;
    qrshp253: TQRShape;
    qrshp255: TQRShape;
    qrshp260: TQRShape;
    qrshp261: TQRShape;
    qrshp262: TQRShape;
    qrshp263: TQRShape;
    qrshp264: TQRShape;
    qrshp265: TQRShape;
    qrshp266: TQRShape;
    qrshp267: TQRShape;
    qrshp268: TQRShape;
    qrshp269: TQRShape;
    qrshp270: TQRShape;
    qrshp271: TQRShape;
    qrshp272: TQRShape;
    qrshp273: TQRShape;
    qrshp274: TQRShape;
    qrshp275: TQRShape;
    jycqsyksrq0: TQRLabel;
    jycqsyksrq1: TQRLabel;
    jycqsyksrq2: TQRLabel;
    jycqsyksrq3: TQRLabel;
    jycqsyksrq4: TQRLabel;
    jycqsyksrq5: TQRLabel;
    jycqsyksrq6: TQRLabel;
    jycqsyksrq7: TQRLabel;
    jycqsykdys0: TQRLabel;
    jycqsykdys1: TQRLabel;
    jycqsykdys2: TQRLabel;
    jycqsykdys3: TQRLabel;
    jycqsykdys4: TQRLabel;
    jycqsykdys5: TQRLabel;
    jycqsykdys6: TQRLabel;
    jycqsykdys7: TQRLabel;
    jycqsyxmmc0: TQRLabel;
    jycqsyxmmc1: TQRLabel;
    jycqsyxmmc2: TQRLabel;
    jycqsyxmmc3: TQRLabel;
    jycqsyxmmc4: TQRLabel;
    jycqsyxmmc5: TQRLabel;
    jycqsyxmmc6: TQRLabel;
    jycqsyxmmc7: TQRLabel;
    QRImagejy1: TQRImage;
    QRImagejy2: TQRImage;
    QRImagejy3: TQRImage;
    QRImagejy4: TQRImage;
    QRImagejy5: TQRImage;
    QRImagejy6: TQRImage;
    QRImagejy7: TQRImage;
    QRImagejy8: TQRImage;
    jycqsyypyf0: TQRLabel;
    jycqsyypyf1: TQRLabel;
    jycqsyypyf2: TQRLabel;
    jycqsyypyf3: TQRLabel;
    jycqsyypyf4: TQRLabel;
    jycqsyypyf5: TQRLabel;
    jycqsyypyf6: TQRLabel;
    jycqsyypyf7: TQRLabel;
    qrshp276: TQRShape;
    qrshp277: TQRShape;
    qrshp278: TQRShape;
    qrshp279: TQRShape;
    qrshp280: TQRShape;
    qrshp281: TQRShape;
    qrshp282: TQRShape;
    qrshp283: TQRShape;
    qrshp284: TQRShape;
    qrshp285: TQRShape;
    qrshp286: TQRShape;
    qrshp287: TQRShape;
    qrshp288: TQRShape;
    qrshp289: TQRShape;
    qrshp290: TQRShape;
    qrshp291: TQRShape;
    qrbnd16: TQRBand;
    jycqsyxmxm: TQRLabel;
    jycqsybchbch: TQRLabel;
    jycqsykh: TQRLabel;
    jy7: TQRLabel;
    qry_yzsl: TFloatField;
    procedure DBEdit7Exit(Sender: TObject);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure bt_lsyzClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure bt_ztClick(Sender: TObject);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure grid_yzKeyPress(Sender: TObject; var Key: Char);
    procedure grid_yzExit(Sender: TObject);
    procedure Edit_clKeyPress(Sender: TObject; var Key: Char);
    procedure Edit_ypKeyPress(Sender: TObject; var Key: Char);
    procedure grid_ypKeyPress(Sender: TObject; var Key: Char);
    procedure grid_ypExit(Sender: TObject);
    procedure bt_exitClick(Sender: TObject);
    procedure refresh_yz; //ˢ��ҽ����¼
    procedure refresh_yz_lclj;
    procedure ypinyz;
    procedure xminyz;
    procedure delete_yz(key: word);
    procedure xzsm(Sender: TDbmemo);
    procedure Button1Click(Sender: TObject);
    procedure db_brxxExit(Sender: TObject);
    procedure e_tmhExit(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure grid_yzlrKeyPress(Sender: TObject; var Key: Char);
    procedure grid_yzlrKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure e_tmhKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure dbg_ysDblClick(Sender: TObject);
    procedure qry_yzAfterScroll(DataSet: TDataSet);
    procedure qry_yzAfterInsert(DataSet: TDataSet);
    procedure qry_yzBeforeInsert(DataSet: TDataSet);
    procedure grid_ksExit(Sender: TObject);
    procedure grid_ksDblClick(Sender: TObject);
    procedure grid_ksKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grid_yzDblClick(Sender: TObject);
    procedure grid_ypDblClick(Sender: TObject);
    procedure grid_yzlr_ColExit;
    procedure grid_yzlrMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure db_brxxDblClick(Sender: TObject);
    procedure db_brxxKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grid_yzlrondrawcolumncell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure aptzyzClick(Sender: TObject);
    procedure dbg_ysExit(Sender: TObject);
    procedure cxTabSheet1Show(Sender: TObject);
    procedure grid_ypDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure cxTabSheet2Show(Sender: TObject);
    procedure BBtn_print_cqClick(Sender: TObject);
    procedure BBtn_print_lsClick(Sender: TObject);
    procedure edt_tmhKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGridEh2DblClick(Sender: TObject);
    procedure DBGridEh2Exit(Sender: TObject);
    procedure DBGridEh2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure DBGridEh3DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure qry_ysAfterScroll(DataSet: TDataSet);
    procedure grid_yzlrColExit(Sender: TObject);
    procedure e_yzysKeyPress(Sender: TObject; var Key: Char);
    procedure dbg_ysKeyPress(Sender: TObject; var Key: Char);
    procedure bt_ztsaveClick(Sender: TObject);
    procedure grid_yzlrDblClick(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure newyzfzbh;
    procedure N4Click(Sender: TObject);
    procedure DBGridEh4DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure QRSubDetail1NeedData(Sender: TObject; var MoreData: Boolean);
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRSubDetail1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure DBGridEh4ColWidthsChanged(Sender: TObject);
    procedure grid_yzlrColWidthsChanged(Sender: TObject);
    procedure qry_yzAfterOpen(DataSet: TDataSet);
    procedure sp_dryzAfterOpen(DataSet: TDataSet);
    procedure QRSubDetail2NeedData(Sender: TObject; var MoreData: Boolean);
    procedure QRSubDetail2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRep2BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure DBGridEh1ColWidthsChanged(Sender: TObject);
    procedure sp_zxjl_cqAfterOpen(DataSet: TDataSet);
    procedure sp_zxjl_lsAfterOpen(DataSet: TDataSet);
    procedure DBGridEh3ColWidthsChanged(Sender: TObject);
    procedure TabSheet1Show(Sender: TObject);
    procedure TabSheet2Show(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure BitBtn_upClick(Sender: TObject);
    procedure BitBtn_downClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure DBGridEh5KeyPress(Sender: TObject; var Key: Char);
    procedure DBGridEh5Exit(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure cxTabSheet3Show(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn18Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure MenuItem4Click(Sender: TObject);
    procedure MenuItem5Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure MenuItem6Click(Sender: TObject);
    procedure MenuItem7Click(Sender: TObject);
    procedure MenuItem8Click(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure MenuItem9Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure MenuItem10Click(Sender: TObject);
    procedure N10Click(Sender: TObject);
    procedure MenuItem11Click(Sender: TObject);
    procedure MenuItem12Click(Sender: TObject);
    procedure MenuItem13Click(Sender: TObject);
    procedure MenuItem14Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure sp_jbxxAfterOpen(DataSet: TDataSet);
    procedure Button5Click(Sender: TObject);
    procedure DBGridEh4CellClick(Column: TColumnEh);
    procedure Button6Click(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure DBGridEh4Enter(Sender: TObject);
    procedure DBGridEh4Exit(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure grid_yzlrCellClick(Column: TColumnEh);
    procedure grid_yzlrEnter(Sender: TObject);
    procedure m_pass101Click(Sender: TObject);
    procedure m_pass102Click(Sender: TObject);
    procedure m_pass103Click(Sender: TObject);
    procedure m_pass107Click(Sender: TObject);
    procedure m_pass104Click(Sender: TObject);
    procedure m_pass220Click(Sender: TObject);
    procedure m_pass30Click(Sender: TObject);
    procedure m_pass201Click(Sender: TObject);
    procedure m_pass202Click(Sender: TObject);
    procedure m_pass203Click(Sender: TObject);
    procedure m_pass204Click(Sender: TObject);
    procedure m_pass205Click(Sender: TObject);
    procedure m_pass206Click(Sender: TObject);
    procedure m_pass207Click(Sender: TObject);
    procedure m_pass208Click(Sender: TObject);
    procedure m_pass209Click(Sender: TObject);
    procedure m_pass210Click(Sender: TObject);
    procedure m_pass106Click(Sender: TObject);
    procedure m_pass13Click(Sender: TObject);
    procedure m_pass14Click(Sender: TObject);
    procedure m_pass105Click(Sender: TObject);
    procedure m_pass11Click(Sender: TObject);
    procedure m_pass22Click(Sender: TObject);
    procedure m_pass50Click(Sender: TObject);
    procedure m_pass60Click(Sender: TObject);
    procedure m_pass70Click(Sender: TObject);
    procedure m_pass301Click(Sender: TObject);
    procedure PopupMenu2Popup(Sender: TObject);
    procedure DBGridEh6ColWidthsChanged(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure DBGridEh7ColWidthsChanged(Sender: TObject);
    procedure cxTabSheet4Show(Sender: TObject);
    procedure Edt_pass_tmhKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure ToolButton4Click(Sender: TObject);
    procedure ToolButton7Click(Sender: TObject);
    procedure ToolButton8Click(Sender: TObject);
    procedure N13Click(Sender: TObject);
    procedure N14Click(Sender: TObject);
    procedure N15Click(Sender: TObject);
    procedure N16Click(Sender: TObject);
    procedure N17Click(Sender: TObject);
    procedure N18Click(Sender: TObject);
    procedure N19Click(Sender: TObject);
    procedure N20Click(Sender: TObject);
    procedure cxButton8Click(Sender: TObject);
    procedure btn_drljClick(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure N21Click(Sender: TObject);
    procedure N22Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure btnyxsqClick(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure btn_cyClick(Sender: TObject);
    procedure MenuItem15Click(Sender: TObject);
    procedure MenuItem16Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure btnPrintJYSQDClick(Sender: TObject);
    procedure ypyfjy0Print(sender: TObject; var Value: string);
    procedure ypyfjy1Print(sender: TObject; var Value: string);
    procedure Tab_ypShow(Sender: TObject);
    procedure cxButton9Click(Sender: TObject);
    procedure grid_yzlrExit(Sender: TObject);
    procedure Button17Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btBZGLClick(Sender: TObject);
    procedure N23Click(Sender: TObject);
    procedure grid_yzlrColumns5UpdateData(Sender: TObject; var Text: string;
      var Value: Variant; var UseText, Handled: Boolean);
    procedure grid_yzlrColumns6UpdateData(Sender: TObject; var Text: string;
      var Value: Variant; var UseText, Handled: Boolean);
    procedure cxGrid3DBTableView1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure grid_yzlrColumns0UpdateData(Sender: TObject; var Text: string;
      var Value: Variant; var UseText, Handled: Boolean);
    procedure grid_yzlrColumns1UpdateData(Sender: TObject; var Text: string;
      var Value: Variant; var UseText, Handled: Boolean);
    procedure cxTabSheet5Show(Sender: TObject);
    procedure ChangePharnacyClick(Sender: TObject);
    procedure btnReadJYClick(Sender: TObject);
    procedure btnReadJCClick(Sender: TObject);
    procedure btnPrintJCSQDClick(Sender: TObject);
    procedure chkALLJCClick(Sender: TObject);
    procedure chkAllJYClick(Sender: TObject);
    procedure btnPathPrtClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormShow(Sender: TObject);
    procedure grid_yzlrColEnter(Sender: TObject);
	procedure qry_yzslSetText(Sender: TField; const Text: string);
	 procedure N25Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure N26Click(Sender: TObject);
    procedure N28Click(Sender: TObject);
    procedure qry_yzCalcFields(DataSet: TDataSet);
    procedure MenuItem17Click(Sender: TObject);
    procedure MenuItem18Click(Sender: TObject);
    procedure MenuItem20Click(Sender: TObject);
    procedure MenuItem21Click(Sender: TObject);
    procedure cxButton10Click(Sender: TObject);
    procedure cxButton11Click(Sender: TObject);    //procedure qrbnd3AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
  private
    { Private declarations }
    v_IsPrinterJoin: Boolean;
    jybz: Boolean;
    pass_bz:Boolean;
    ktqsj, bl_bcid, blbcpdid, bc_count: integer;
    v_fylbmc, locatename: string;
    pub_blys, pub_zzys, pub_zgys, pub_ssys, pub_jfys, pub_hzys, bl_zgys,
      addbcjl: string;
    pub_blysbz, pub_zzysbz, pub_zgysbz, bl_blysbz, bl_zzysbz, bl_zgysbz:
    Boolean;
    procedure yzinypfymx(zyh, ypid, xmid, clid, ph: string);
    procedure zyzadd;
    procedure yzNew(fs: integer);
    procedure yzXmsr(fs: integer);
    procedure yzsxsr(fs: integer);
    procedure yzlbsr(fs: integer);
    procedure yytjjs(fs: integer);
    procedure czkscl(fs: integer);
    procedure tjyz;
    procedure yldwjc(fs: integer);
    procedure ypjs;
    procedure qtjs;
    procedure zdkz;
    procedure tjyzfcqyz;
    procedure fcqyzlb;
    procedure sljc(fs: integer);
    procedure yz_lr_yz;
    procedure yz_cx_cqph(yzsx: string);
    procedure Proc_Seek_dj(const v_tmh: string);
    procedure Proc_Seek_yzzxjl(const v_tmh, v_zyh, v_brxm: string);
    function yz_cx_yfjsypsl: real;
    procedure proc_xzyf;
    procedure shyz;
    procedure chyz;
    procedure zryz;
    procedure czyz;
    procedure OnMouseWheel_yzzx(var Msg: TMsg; var Handled: Boolean);
    procedure OnMouseWheel_yzlr(var Msg: TMsg; var Handled: Boolean);
    procedure setmode(mode, mblb, mbdm, mbmc: string);
    procedure openbcjl(mblb: string);
    procedure savedzbl(mbdm, mblb: string);
    procedure savedzblbcjl;
    procedure proc_zysave(xszy: boolean = true; xsxy: boolean = false; zysl:
      integer = 1);
    procedure proc_yf_filer;
    procedure SetGrid;
    procedure WMAdoReStore(var message: TMessage); message WM_ADOReCon;
    procedure xhcl(fs: Integer); {��ţ�ҽ���������ţ�����}
    function isXhNull():Boolean; inline; {Ϊtrue��ʾ���Ϊ��}
    procedure xmmxinyz; //ҽ����Ŀ���

  protected
    procedure showForm;
  public
    tmh, zyh, brxm, lszyh, xzljyzid: string; //סԺ��
    ls_dm, ls_mc, ls_ks, curr_value: string;
    ls_zylsj: single;
    scbz, ztid: integer;
    clph, xmph, ypph, jcph, jyph, qtph, bl_bllb: string;
    //���ϣ����ƣ�ҩƷ����飬����,����
    zyyz_mbmc: string; //ҽ��ģ������
    rectno: integer;
    paper_size: integer;
    mbdy: Boolean;
    prv_zyfdm, prv_xyfdm, prv_cyfdm: string;
    br_tz: string; //����
    yz_kdks: string;
    yzsx, yzys: string;
    // by.co
    passAddr: string; //�����ȡ��pass��ַ
    lcljms: boolean; //�ٴ�·��ģʽ
    lclj_mblb: string;
    lclj_mbid: integer; //�����ģ��id
    lclj_mbmc: string; //ģ������
    byyy, yzbyyy: string; //����ԭ��
    sfjrdytlj: string; // �Ƿ�����һ��·��
    P_zycfje: Real;
    pass_i: Integer;
    sfchange:boolean;
    procedure ad_ggdisplay;

    function find_today_yzxm(xmdm: string): integer;
    function find_current_yzxm(xmdm: string): integer;
    procedure saveyz;
    procedure saveyz_tj;
    procedure saveyz_lcljtj;
    procedure dzblmbdr(mbdm: string); //�ٴ�·������ģ�嵼��
    procedure createrect(var myrect1: TTmyrect; dataset_rect: TCustomADODataSet;
      grid_yzlr1: Tdbgrideh; x1, x2, x3: integer);
    procedure yzqxtf(var id: integer; var kdys: string);
    procedure yzblys(mblb: string);
    procedure getpub_blys(mblb: string);
    //by.co
    procedure yzxy;
    procedure HideSomething();
    function proc_AddMedCond: Boolean;
    function proc_AddScreenDrug: Boolean;
    procedure proc_crbrjbxxinpass;
    procedure refresh_show;
    { Public declarations }
  end;

var
  myrect: TTmyrect;
  myrect_cx, myrect_zx_cq, myrect_zx_ls: TTmyrect;
  bcbz: boolean;
  frm_yzinput: Tfrm_yzinput;
  yzlb: string; //ҽ�����
  clfs: string; //������ʽ ҩƷ,ҽ��
  zy_czks: string; //���ÿ���
  fzbh: string; //ҽ������ ,ҽ��ҽ��
  kz, bz, sgtzbz: boolean; // ����AffterScoll calmhawk\ - 2007-01-09
  kzfs: string; // ���Ƹ�������
  kzbz, tzbz, wz: integer; //���Ʊ�־,
  p_yzlb: string; //ҽ�����
  tzyzqr: integer;
  tzyzsj, kdyzsj: string;
  maxxh: integer;
  yzxgbz: boolean;
  zzdx: string;
  MedicomPass: TMedicomPass;
  lcljkdrq: string;
  p_date: string;
  recno: Integer;
  bl_blys, bl_ssys, bl_jfys, bl_hzys, bl_mzys, bl_zzys: string;
  xyfBeforeChange: string;
function findinarray(myrect: TTmyrect; zd: string): integer;
procedure initarray(myrect: TTmyrect);
type
  TMedCond = record
    firstxh: integer;
    firstcode: string;
    firstname: string;
    secondxh: integer;
    secondcode: string;
    secondname: string;
  end;
const
  con_sql_zy =
    'select * from zysf_zydj where (zyh=:zyh or tmh like :tmh) and ksdm=:ksdm';
  con_sql_cy =
    'select * from zysf_cydj where (zyh=:zyh or tmh like :tmh) and ksdm=:ksdm';
implementation

{$R *.dfm}
uses p_dm, p_func, p_yzzt, p_treeview_ctxz, p_bylsyz, p_tjyz,
  p_zyyzmbmc, p_jyxmwrite_zy, p_tzyzsj, p_xgyzzxsj, p_xz_fyyf, p_cqyzxzdy,
  p_lsyzxzdy, p_jcsqd, p_dslr, p_zxdxd, p_xgyl, p_xbs, p_pub_sj, p_PassDllClare,
  p_bqgl_sssq, p_LCLJSJ, p_ljzxxz, p_lcljzx, p_xz_jhddy, p_yxsq,
  p_zysf_print_service, p_main, p_lcljyzxzdr, p_zyjs, p_dzjcsqd, //p_cqyzxd,
  p_lsyzxd, p_cqyzxd;

var
  FormTitle: string;
  md: TMedCond;
procedure initarray(myrect: TTmyrect);
var
  i: integer;
begin
  for i := 0 to 100 do
  begin
    myrect[i].ph := '';
    myrect[i].top := 0;
    myrect[i].left := 0;
    myrect[i].right := 0;
    myrect[i].bottom := 0;
    myrect[i].sl := 1;
    myrect[i].yf := '';
    myrect[i].tj := '';
    myrect[i].gtop := 0;
    myrect[i].gleft := 0;
    myrect[i].gright := 0;
    myrect[i].gbottom := 0;

  end;
end;

procedure Tfrm_yzinput.newyzfzbh; //ȡ���µķ���ID��
begin
  //
  {    yzfzbm := 0;
      qry_pub.Close;
      qry_pub.SQL.Clear;
      qry_pub.SQL.Text := 'select isnull(max(fzhm),0)+1 as yzfzbm from zybl_zyyz_syfz where zyh=:cxzyh';
      qry_pub.Parameters.ParamValues['cxzyh'] := zyh;
      qry_pub.Open;
      yzfzbm := qry_pub.FieldByName('yzfzbm').AsInteger;  }
end;

function Tfrm_yzinput.yz_cx_yfjsypsl: real;
begin
  with sp_cx_yzyljssl do
  begin
    close;
    Parameters.ParamByName('@ypdm').Value :=
      qry_yz.FieldByName('xmdm').AsString;
    Parameters.ParamByName('@ypyf').Value :=
      qry_yz.FieldByName('ypyf').AsString;
    Parameters.ParamByName('@ypyl').Value := qry_yz.FieldByName('ypyl').AsFloat;
    open;
  end;
  Result := realtomoney1(sp_cx_yzyljssl.fieldbyname('ypsl').AsFloat / 10) * 10;
end;

procedure Tfrm_yzinput.yz_cx_cqph(yzsx: string);
begin
  ypph := '';
  jcph := '';
  jyph := '';
  clph := '';
  xmph := '';
  qry_yz.first;
  while not qry_yz.Eof do
  begin
    if (trim(qry_yz.FieldByName('yzsx').AsString) = yzsx) then
    begin
      if (trim(qry_yz.FieldByName('lb').AsString) = 'ҩƷ') or
        (trim(qry_yz.FieldByName('lb').AsString) = '��ҩ') or
        (trim(qry_yz.FieldByName('lb').AsString) = 'ҩһ') or
        (trim(qry_yz.FieldByName('lb').AsString) = '��ҩ') then
      begin
        if trim(qry_yz.FieldByName('ph').AsString) <> '' then
          ypph := trim(qry_yz.FieldByName('ph').Value);
      end
      else if trim(qry_yz.FieldByName('lb').AsString) = '����' then
      begin
        if trim(qry_yz.FieldByName('ph').AsString) <> '' then
          clph := trim(qry_yz.FieldByName('ph').Value);
      end
      else if trim(qry_yz.FieldByName('lb').AsString) = '����' then
      begin
        if trim(qry_yz.FieldByName('ph').AsString) <> '' then
          xmph := trim(qry_yz.FieldByName('ph').Value);
      end
      else if trim(qry_yz.FieldByName('lb').AsString) = '����' then
      begin
        if trim(qry_yz.FieldByName('ph').AsString) <> '' then
          jyph := trim(qry_yz.FieldByName('ph').Value);
      end
      else if trim(qry_yz.FieldByName('lb').AsString) = '���' then
      begin
        if trim(qry_yz.FieldByName('ph').AsString) <> '' then
          jcph := trim(qry_yz.FieldByName('ph').Value);
      end
      else if trim(qry_yz.FieldByName('lb').AsString) = '����' then
      begin
        if trim(qry_yz.FieldByName('ph').AsString) <> '' then
          qtph := trim(qry_yz.FieldByName('ph').Value);
      end;
    end;
    qry_yz.Next;
  end;

end;

procedure Tfrm_yzinput.yz_lr_yz;
begin
  qry_yz.First;
  while not qry_yz.Eof do
  begin
    qry_yz.edit;
    //    if Trim( qry_yz.FieldByName( 'kdys' ).asstring ) = '' then
    //    begin
    //      qry_yz.FieldByName( 'kdys' ).Value := pub_czydm;
    //    end
    //    else
    //    begin
    //      DM_data.qry_pub.Close;
    //      DM_data.qry_pub.SQL.text := 'select * from sys_czy where cfbz=1 and dm=' + '''' + pub_czydm + '''';
    //      DM_data.qry_pub.Open;
    //      if not DM_data.qry_pub.IsEmpty then
    //        qry_yz.FieldByName( 'kdys' ).Value := pub_czydm;
    //
    //    end;
    qry_yz.FieldByName('kdys').Value := pub_czydm;
    if trim(qry_yz.FieldByName('kdks').asstring) = '' then
    begin
      if yz_kdks = '' then
        qry_yz.FieldByName('kdks').Value := pub_ksdm
      else
        qry_yz.FieldByName('kdks').Value := yz_kdks;
    end;
    qry_yz.FieldByName('kdys').Value := pub_czydm;
    qry_yz.FieldByName('kdrq').Value := frm_func.curr_date;
    qry_yz.post;
    qry_yz.Next;
  end;
  qry_yz.First;
  while not qry_yz.Eof do
  begin
    if (trim(qry_yz.FieldByName('lb').AsString) <> '����') and
      (trim(qry_yz.FieldByName('xmdm').AsString) = '') or
      (trim(qry_yz.FieldByName('xmmc').AsString) = '') then
    begin
      qry_yz.Delete;
    end
    else if (trim(qry_yz.FieldByName('lb').AsString) <> '����') then
    begin
      if (trim(qry_yz.FieldByName('lb').AsString) = '') then
      begin
        showMessage('������ҽ�����!');
        recno := ScrollBox4.VertScrollBar.Position;
        grid_yzlr.SetFocus;
        ScrollBox4.VertScrollBar.Position := recno;
        grid_yzlr.SelectedIndex := 1;
        qry_yz.EnableControls;
        abort;
      end
      else if (trim(qry_yz.FieldByName('lb').AsString) <> 'ҩƷ') and
        (trim(qry_yz.FieldByName('lb').AsString) <> '����') and
        (trim(qry_yz.FieldByName('lb').AsString) <> '����') and
        (trim(qry_yz.FieldByName('lb').AsString) <> '����') and
        (trim(qry_yz.FieldByName('lb').AsString) <> '���') and
        (trim(qry_yz.FieldByName('lb').AsString) <> '��ҩ') and
        (trim(qry_yz.FieldByName('lb').AsString) <> '��ҩ') and
        (trim(qry_yz.FieldByName('lb').AsString) <> 'ҩһ') then
      begin
        showMessage('ҽ������������!����������!');
        recno := ScrollBox4.VertScrollBar.Position;
        grid_yzlr.SetFocus;
        ScrollBox4.VertScrollBar.Position := recno;
        grid_yzlr.SelectedIndex := 1;
        qry_yz.EnableControls;
        abort;
      end;
      if (trim(qry_yz.FieldByName('yzsx').AsString) = '') then
      begin
        showMessage('������ҽ������!');
        recno := ScrollBox4.VertScrollBar.Position;
        grid_yzlr.SetFocus;
        ScrollBox4.VertScrollBar.Position := recno;
        grid_yzlr.SelectedIndex := 0;
        abort;
      end
      else if (trim(qry_yz.FieldByName('yzsx').AsString) <> '����') and
        (trim(qry_yz.FieldByName('yzsx').AsString) <> '��ʱ') and
        (trim(qry_yz.FieldByName('lb').AsString) <> '����') then
      begin
        showMessage('ҽ�������������!����������!');
        recno := ScrollBox4.VertScrollBar.Position;
        grid_yzlr.SetFocus;
        ScrollBox4.VertScrollBar.Position := recno;
        grid_yzlr.SelectedIndex := 1;
        qry_yz.EnableControls;
        abort;
      end;
      //---------------ҩƷ��ҩ;��-----------------------------
      if (trim(qry_yz.FieldByName('lb').AsString) = 'ҩƷ') or
        (trim(qry_yz.FieldByName('lb').AsString) = '��ҩ') or
        (trim(qry_yz.FieldByName('lb').AsString) = 'ҩһ') //or
      {// ( trim( qry_yz.FieldByName( 'lb' ).AsString ) = '��ҩ' )}then
      begin
        if not qry_gytj.Locate('mc', qry_yz.FieldByName('yytj').AsString, [])
          then
        begin
          showMessage('��ҩ;�������������������!');
          recno := ScrollBox4.VertScrollBar.Position;
          grid_yzlr.SetFocus;
          ScrollBox4.VertScrollBar.Position := recno;
          grid_yzlr.SelectedIndex := 6;
          qry_yz.EnableControls;
          abort;
        end;
      end;
      //----------------ҩƷ�÷�-----------------------------------
      if (trim(qry_yz.FieldByName('lb').AsString) = 'ҩƷ') or
        (trim(qry_yz.FieldByName('lb').AsString) = '��ҩ') or
        (trim(qry_yz.FieldByName('lb').AsString) = 'ҩһ') then
      begin
        if (qry_ypyf.Locate('mc', qry_yz.FieldByName('ypyf').AsString, []) =
          false) and (Trim(qry_yz.FieldByName('yzsx').AsString) = '����') then
        begin
          showMessage('ҩƷ�÷������������������!');
          recno := ScrollBox4.VertScrollBar.Position;
          grid_yzlr.SetFocus;
          ScrollBox4.VertScrollBar.Position := recno;
          grid_yzlr.SelectedIndex := 5;
          qry_yz.EnableControls;
          abort;
        end
        else if (qry_ypyf.Locate('mc', qry_yz.FieldByName('ypyf').AsString, [])
          = false) and (Trim(qry_yz.FieldByName('yzsx').AsString) = '��ʱ')
          and (Trim(qry_yz.FieldByName('ypyf').AsString) <> '') then
        begin
          showMessage('ҩƷ�÷������������������!');
          recno := ScrollBox4.VertScrollBar.Position;
          grid_yzlr.SetFocus;
          ScrollBox4.VertScrollBar.Position := recno;
          grid_yzlr.SelectedIndex := 5;
          qry_yz.EnableControls;
          abort;
        end;

      end;
      //----------------ҩƷ����-----------------------------------
      if (trim(qry_yz.FieldByName('lb').AsString) = '����') then
      begin
        try
          if (qry_yz.FieldByName('ypyl').AsString <> '')
            and (qry_yz.FieldByName('ypyl').AsFloat < 0) then
          begin
            showMessage('���������������������������!');
            recno := ScrollBox4.VertScrollBar.Position;
            grid_yzlr.SetFocus;
            ScrollBox4.VertScrollBar.Position := recno;
            grid_yzlr.SelectedIndex := 3;
            qry_yz.EnableControls;
            abort;
          end;
        except
          showMessage('���������������������������!');
          recno := ScrollBox4.VertScrollBar.Position;
          grid_yzlr.SetFocus;
          ScrollBox4.VertScrollBar.Position := recno;
          grid_yzlr.SelectedIndex := 3;
          qry_yz.EnableControls;
          abort;
        end;
      end;

      if (trim(qry_yz.FieldByName('lb').AsString) = 'ҩƷ') or
        (trim(qry_yz.FieldByName('lb').AsString) = '��ҩ') or
        (trim(qry_yz.FieldByName('lb').AsString) = 'ҩһ') then
      begin
        try
          if qry_yz.FieldByName('ypyl').AsFloat < 0 then
          begin
            showMessage('ҩƷ���������������������������!');
            recno := ScrollBox4.VertScrollBar.Position;
            grid_yzlr.SetFocus;
            ScrollBox4.VertScrollBar.Position := recno;
            grid_yzlr.SelectedIndex := 3;
            qry_yz.EnableControls;
            abort;
          end;
        except
          showMessage('ҩƷ���������������������������!');
          recno := ScrollBox4.VertScrollBar.Position;
          grid_yzlr.SetFocus;
          ScrollBox4.VertScrollBar.Position := recno;
          grid_yzlr.SelectedIndex := 3;
          qry_yz.EnableControls;
          abort;
        end;
      end;
      //------------------ ���ÿ���-------------------------
      qry_ks.Filtered := false;
      if trim(qry_yz.FieldByName('lb').AsString) <> '����' then
      begin
        if (trim(qry_yz.FieldByName('czks').AsString) = '') then
        begin
          showMessage('������ҽ�����ÿ���!');
          recno := ScrollBox4.VertScrollBar.Position;
          grid_yzlr.SetFocus;
          ScrollBox4.VertScrollBar.Position := recno;
          grid_yzlr.SelectedIndex := 9;
          qry_yz.EnableControls;
          abort;
        end
        else
        begin
          if not qry_ks.Locate('dm', trim(qry_yz.FieldByName('czks').AsString),
            []) then
          begin
            showMessage('���ÿ����������!����������!');
            recno := ScrollBox4.VertScrollBar.Position;
            grid_yzlr.SetFocus;
            ScrollBox4.VertScrollBar.Position := recno;
            grid_yzlr.SelectedIndex := 9;
            qry_yz.EnableControls;
            abort;
          end;
        end;
      end;

      //---------������֤-------------------------
      if (trim(qry_yz.FieldByName('sl').AsString) = '') then
      begin
        showMessage('��������Ϊ��!');
        recno := ScrollBox4.VertScrollBar.Position;
        grid_yzlr.SetFocus;
        ScrollBox4.VertScrollBar.Position := recno;
        grid_yzlr.SelectedIndex := 7;
        qry_yz.EnableControls;
        abort;
      end
      else
      begin
        try
          if (StrToFloat(trim(qry_yz.FieldByName('sl').AsString)) < 0) then
          begin
            //  showMessage('��������С�� 1 !');
            if (pub_yydm <> '0234') and (pub_yydm <> '0092') then
            begin
              recno := ScrollBox4.VertScrollBar.Position;
              grid_yzlr.SetFocus;
              ScrollBox4.VertScrollBar.Position := recno;
              grid_yzlr.SelectedIndex := 7;
              //qry_yz.Edit;
              abort;
            end
            else
            begin
              if (StrToFloat(trim(qry_yz.FieldByName('sl').AsString)) <> 0) then
              begin
                recno := ScrollBox4.VertScrollBar.Position;
                grid_yzlr.SetFocus;
                ScrollBox4.VertScrollBar.Position := recno;
                grid_yzlr.SelectedIndex := 7;
                //qry_yz.Edit;
                abort;
              end;
            end;
          end;
        except
          showMessage('��������С��1!');
          recno := ScrollBox4.VertScrollBar.Position;
          grid_yzlr.SetFocus;
          ScrollBox4.VertScrollBar.Position := recno;
          grid_yzlr.SelectedIndex := 7;
          qry_yz.EnableControls;
          abort;
        end;
      end;
      if ((pub_yydm = '0013') and (qry_yz.FieldByName('xmdm').asstring =
        '01000001000357')
        and (qry_yz.FieldByName('yzsx').asstring = '��ʱ') and
        (qry_yz.FieldByName('bz').asstring = '����')) or
        ((pub_yydm = '0013') and (qry_yz.FieldByName('lb').asstring = '����')
        and
        ((Pos('Ƥ��', qry_yz.FieldByName('xmmc').asstring) > 0) or
        (Pos('����', qry_yz.FieldByName('xmmc').asstring) > 0) or
        ((Pos('��', qry_yz.FieldByName('xmmc').asstring) > 0)
        and (Pos('��', qry_yz.FieldByName('xmmc').asstring) > 0)) or
        (Pos('��������', qry_yz.FieldByName('xmmc').asstring) > 0) or
        (Pos('�Ҹ�����', qry_yz.FieldByName('xmmc').asstring) > 0) or
        (Pos('��ҩ', qry_yz.FieldByName('xmmc').asstring) > 0)
        )) then
      begin
        //��̨��ҽԺ�ȵ��ؿ����ò���Ҫ��֤ ,�����࿪Ƥ�Ժ���Ѫ���������벻��֤
      end
      else
      begin
        //------------------��Ŀ���������һ����У��-------------------
        if not qry_xmyz.Locate('xmmc',
          trim(qry_yz.FieldByName('xmmc').AsString),
          []) then
        begin
          showMessage('ҽ����Ŀ�����������!����������!');
          recno := ScrollBox4.VertScrollBar.Position;
          grid_yzlr.SetFocus;
          ScrollBox4.VertScrollBar.Position := recno;
          grid_yzlr.SelectedIndex := 2;
          qry_yz.EnableControls;
          abort;
        end;
        //------------------��Ŀ�����һ����У��-------------------
        qry_xmyz.Locate('xmdm', trim(qry_yz.FieldByName('xmdm').AsString), []);
        if (qry_xmyz.FieldByName('lb').AsString <>
          qry_yz.FieldByName('lb').AsString) and
          (qry_yz.FieldByName('lb').AsString
          <> 'ҩһ') then
        begin
          showMessage('��Ŀ��ҽ�����һ�´���!����������!' + #13 +
            '��ǰ��Ŀ���Ϊ "' + qry_xmyz.FieldByName('lb').AsString + '"');
          recno := ScrollBox4.VertScrollBar.Position;
          grid_yzlr.SetFocus;
          ScrollBox4.VertScrollBar.Position := recno;
          grid_yzlr.SelectedIndex := 2;
          qry_yz.EnableControls;
          abort;
        end;
      end;
    end
    else if (trim(qry_yz.FieldByName('lb').AsString) = '����') then
    begin
      if (trim(qry_yz.FieldByName('czks').AsString) = '') then
      begin
        showMessage('������ҽ�����ÿ���!');
        recno := ScrollBox4.VertScrollBar.Position;
        grid_yzlr.SetFocus;
        ScrollBox4.VertScrollBar.Position := recno;
        grid_yzlr.SelectedIndex := 9;
        qry_yz.EnableControls;
        abort;
      end
      else
      begin
        if not qry_ks.Locate('dm', trim(qry_yz.FieldByName('czks').AsString), [])
          then
        begin
          showMessage('���ÿ����������!����������!');
          recno := ScrollBox4.VertScrollBar.Position;
          grid_yzlr.SetFocus;
          ScrollBox4.VertScrollBar.Position := recno;
          grid_yzlr.SelectedIndex := 9;
          qry_yz.EnableControls;
          abort;
        end;
      end;

    end;
    qry_yz.next;
  end;
end;

procedure Tfrm_yzinput.sljc(fs: integer);
var
  ypsl: real;
begin
  if (yzlb = '����') then
  begin
    try
      if (qry_yz.FieldByName('ypyl').AsString <> '')
        and (qry_yz.FieldByName('ypyl').AsFloat < 0) then
      begin
        showMessage('���������������������������!');
        recno := ScrollBox4.VertScrollBar.Position;
        grid_yzlr.SetFocus;
        ScrollBox4.VertScrollBar.Position := recno;
        grid_yzlr.SelectedIndex := 3;
        qry_yz.EnableControls;
        abort;
      end;
    except
      showMessage('���������������������������!');
      recno := ScrollBox4.VertScrollBar.Position;
      grid_yzlr.SetFocus;
      ScrollBox4.VertScrollBar.Position := recno;
      grid_yzlr.SelectedIndex := 3;
      qry_yz.EnableControls;
      abort;
    end;
  end;
  if (yzlb = 'ҩƷ') or (yzlb = 'ҩһ') or (yzlb = '��ҩ') then
  begin
    if qry_yz.FieldByName('sl').AsFloat > 1000 then
    begin
      application.MessageBox('��������������ע�⣡', '��ʾ', 0 + 48);
      qry_yz.FieldByName('sl').AsFloat := 1;
      grid_yzlr.SelectedIndex := 7;
    end;
    if pub_yydm = '0015' then
    begin
      DM_data.qry_pub.close;
      DM_data.qry_pub.sql.text :=
        'select a.ypdm,round(a.zxdwsl/zyyfzhl,2) sl from xyf_ypkc a,sys_ypdm b where a.ypdm=' + ''''
        +
        qry_yz.FieldByName('xmdm').asstring + '''' +
        ' and a.ypdm=b.ypdm and a.ksdm=' + '''' +
        sp_cx_yp_yz.Parameters.ParamByName('@ksdm').value + '''';
      try
        DM_data.qry_pub.open;
      except

      end;
      if qry_yz.FieldByName('sl').AsFloat >
        DM_data.qry_pub.FieldByName('sl').asfloat then
      begin
        application.MessageBox('�����������ڿ�棬���������룡', '��ʾ', 0 +
          48);
        qry_yz.FieldByName('sl').AsInteger := 1;
        grid_yzlr.SelectedIndex := 7;
      end;
    end;
    {   if qry_yz.FieldByName('ypyl').AsFloat > 10000 then
       begin
         application.MessageBox('��������̫����ע�⣡', '��ʾ', 0 + 48);
         qry_yz.FieldByName('ypyl').AsFloat := 1;
         grid_yzlr.SelectedIndex := 3;
       end;}
    try

      if qry_yz.FieldByName('ypyl').AsFloat < 0 then
      begin
        showMessage('ҩƷ���������������������������!');
        recno := ScrollBox4.VertScrollBar.Position;
        grid_yzlr.SetFocus;
        ScrollBox4.VertScrollBar.Position := recno;
        grid_yzlr.SelectedIndex := 3;
        abort;
      end;
    except
      showMessage('ҩƷ���������������������������!');
      recno := ScrollBox4.VertScrollBar.Position;
      grid_yzlr.SetFocus;
      ScrollBox4.VertScrollBar.Position := recno;
      grid_yzlr.SelectedIndex := 3;
      abort;
    end;

    ypsl := yz_cx_yfjsypsl;

    if (qry_yz.fieldbyname('yzsx').asstring = '��ʱ') and
      ((qry_yz.fieldbyname('lb').asstring = 'ҩƷ') or
      (qry_yz.fieldbyname('lb').asstring = 'ҩһ'))
      and (Trim(qry_yz.fieldbyname('ypyf').asstring) = '') then
    begin
      with sp_cx_yzyljssl do
      begin
        close;
        Parameters.ParamByName('@ypdm').Value :=
          qry_yz.FieldByName('xmdm').AsString;
        Parameters.ParamByName('@ypyf').Value := 'qd';
        Parameters.ParamByName('@ypyl').Value :=
          qry_yz.FieldByName('ypyl').AsFloat;
        open;
      end;
      ypsl := realtomoney1(sp_cx_yzyljssl.fieldbyname('ypsl').AsFloat / 10) *
        10;
    end;

    if (ypsl > 0) and (grid_yzlr.SelectedField.FieldName <> 'sl') then
      qry_yz.FieldByName('sl').AsFloat := ypsl;
  end
  else if ((yzlb = '����') or (yzlb = '����') or (yzlb = '���')) and
    (grid_yzlr.SelectedField.FieldName = 'ypyf') then
  begin
    DM_data.qry_pub.Close;
    DM_data.qry_pub.sql.text := 'select * from sys_ypyf where mc=' + '''' +
      trim(qry_yz.FieldByName('ypyf').asstring) + '''';
    try
      DM_data.qry_pub.open;
    except

    end;
    if (DM_data.qry_pub.IsEmpty = False) and
      ((Trim(qry_yz.FieldByName('lb').asstring) = '����') or
      (Trim(qry_yz.FieldByName('lb').asstring) = '����') or
      (Trim(qry_yz.FieldByName('lb').asstring) = '���')) then
    begin
      qry_yz.Edit;
      qry_yz.FieldByName('sl').AsString :=
        DM_data.qry_pub.FieldByName('sl').asstring;
      qry_yz.Post;
    end;

  end;

  if grid_yzlr.SelectedField.FieldName = 'sl' then
  begin
    if (qry_yz.State = dsInsert) or (qry_yz.State = dsedit) then
      qry_yz.Post;
  end;

  if grid_yzlr.SelectedField.FieldName = 'ypyl' then
    grid_yzlr.SelectedIndex := 5
  else if grid_yzlr.SelectedField.FieldName = 'ypyf' then
    grid_yzlr.SelectedIndex := 6
  else if grid_yzlr.SelectedField.FieldName = 'yytj' then
    grid_yzlr.SelectedIndex := 7
  else if grid_yzlr.SelectedField.FieldName = 'sl' then
  begin
    //          if (yzlb = 'ҩƷ') or (yzlb = '����') or (yzlb='����') or then
    if (yzlb <> '����') then
    begin
      try
        if (qry_yz.FieldByName('sl').AsFloat < 1) and
          (qry_yz.FieldByName('lb').asstring <> '����') then
          //������ҽԺ��������Ϊ0��ҩƷ
        begin
          if (pub_yydm <> '0234') and (pub_yydm <> '0092') then
          begin
            //showMessage('���������������������������!');
            recno := ScrollBox4.VertScrollBar.Position;
            grid_yzlr.SetFocus;
            ScrollBox4.VertScrollBar.Position := recno;
            grid_yzlr.SelectedIndex := 7;
            abort;
          end
          else
          begin
            if (qry_yz.FieldByName('sl').AsFloat <> 0) then
            begin
              recno := ScrollBox4.VertScrollBar.Position;
              grid_yzlr.SetFocus;
              ScrollBox4.VertScrollBar.Position := recno;
              grid_yzlr.SelectedIndex := 7;
              abort;
            end;
          end;
        end;
      except
        showMessage('ҩƷ���������������������������!');
        recno := ScrollBox4.VertScrollBar.Position;
        grid_yzlr.SetFocus;
        ScrollBox4.VertScrollBar.Position := recno;
        grid_yzlr.SelectedIndex := 7;
        abort;
      end;
      yzNew(fs)
    end
    else
      grid_yzlr.SelectedIndex := 9;
  end;
  if (yzlb = '����') and (Trim(grid_yzlr.Columns[7].DisplayText) = '') then
  begin
    //    qry_yz.Edit;
    //    qry_yz.FieldByName( 'sl' ).AsString := '0';
    //    qry_yz.Post;
  end;

end;

procedure Tfrm_yzinput.sp_dryzAfterOpen(DataSet: TDataSet);
begin
  if sp_dryz.RecordCount * 30 < screen.height - 100 then
    dbgrideh4.Height := screen.height - 50
  else
    dbgrideh4.Height := sp_dryz.RecordCount * 30;
  if sp_dryz.RecordCount < 1000 then
    createrect(myrect_cx, sp_dryz, dbgrideh4, 10, 11, 16);

end;

procedure Tfrm_yzinput.sp_jbxxAfterOpen(DataSet: TDataSet);
begin
  if username <> 'sys_tyjf' then
  begin
    if Trim(sp_jbxx.FieldByName('ysxm').asstring) = '' then
    begin
      ShowMessage('δ��������ҽ��������¼��ҽ����');
      grid_yzlr.ReadOnly := true;
    end
    else
    begin
      grid_yzlr.ReadOnly := false;
    end;
  end;
end;

procedure Tfrm_yzinput.sp_zxjl_cqAfterOpen(DataSet: TDataSet);
begin
  if sp_zxjl_cq.RecordCount * 30 < screen.height - 100 then
    dbgrideh1.Height := screen.height - 50
  else
    dbgrideh1.Height := sp_zxjl_cq.RecordCount * 30;
  if sp_zxjl_cq.RecordCount < 1000 then
    createrect(myrect_zx_cq, sp_zxjl_cq, dbgrideh1, 5, 6, 11);

end;

procedure Tfrm_yzinput.sp_zxjl_lsAfterOpen(DataSet: TDataSet);
begin
  if sp_zxjl_ls.RecordCount < 1000 then
    createrect(myrect_zx_ls, sp_zxjl_ls, dbgrideh3, 7, 8, 9);

end;

procedure Tfrm_yzinput.TabSheet1Show(Sender: TObject);
begin
  dbgrideh1.OnColWidthsChanged(sender);

end;

procedure Tfrm_yzinput.TabSheet2Show(Sender: TObject);
begin
  dbgrideh3.OnColWidthsChanged(sender);

end;

procedure Tfrm_yzinput.Tab_ypShow(Sender: TObject);

begin

  qry_pub.Close;
  qry_pub.sql.clear;
  qry_pub.sql.add(' select b.MC,a.ljid from LCLJ_brlclj a,lclj_lcljml b WHERE a.LJID=b.LJID and  a.zyh=''' + pub_zyh + ''' and a.zt=1');
  try
    qry_pub.Open;
  except

  end;
  if qry_pub.RecordCount > 0 then
    showmessage('�ò����ǽ���' + qry_pub.fieldbyname('mc').asstring +
      '�Ĳ��ˣ�����ѭ·����ҽ����');

  recno := ScrollBox4.VertScrollBar.Position;
  grid_yzlr.SetFocus;
  ScrollBox4.VertScrollBar.Position := recno;
  grid_yzlr.SelectedIndex := 2;
end;

procedure Tfrm_yzinput.Timer1Timer(Sender: TObject);
begin
  DBGridEh6.left := 1 - ScrollBox1.HorzScrollBar.Position;
  if lcljms then
  begin
    DBGridEh7.left := 2 - ScrollBox4.HorzScrollBar.Position;
  end
  else
  begin
    DBGridEh7.left := Panel3.Width + 3 - ScrollBox4.HorzScrollBar.Position;
  end;
end;

function Tfrm_yzinput.find_today_yzxm(xmdm: string): integer;
begin
  //��ѯ���ղ�Աҽ�����Ƿ��и�ҽ����Ŀ���з���1�����򷵻�0
  sp_cx_yzxm.Close;
  sp_cx_yzxm.Open;
  if sp_cx_yzxm.RecordCount = 0 then
    Result := 0;
  if sp_cx_yzxm.Locate('xmdm', xmdm, [loCaseInsensitive]) then
    Result := 1
  else
    Result := 0;
end;

function Tfrm_yzinput.find_current_yzxm(xmdm: string): integer;
var
  temp: integer;
  r: integer;
begin
  //��ѯ��ǰ�༭ҽ�����Ƿ��и�ҽ����Ŀ���з���1�����򷵻�0
  //-------------calmhawk--2007-01-29--------
  //-----------------------------------------
  //��Һ�������¼�����ִ�У�����ҩƷӦ�������ظ�
  temp := qry_yz.recno;
  if qry_yz.Locate('xmdm', xmdm, [loCaseInsensitive]) then
    r := 1
  else
    r := 0;
  if (r = 1) and ((Pos('����', qry_yz.fieldbyname('yytj').AsString) > 0) or
    (qry_yz.fieldbyname('yytj').AsString = '��ע')
    or (qry_yz.fieldbyname('yytj').AsString = '������') or
    (qry_yz.fieldbyname('yytj').AsString = '����ע')
    or (qry_yz.fieldbyname('yytj').AsString = '�ڷ�')
    or (qry_yz.fieldbyname('yytj').AsString = '��ע')) then
    r := 0;
  if (qry_yz.fieldbyname('lb').AsString = '����') or
    (qry_yz.fieldbyname('lb').AsString = '���') or
    (qry_yz.fieldbyname('lb').AsString = '����') then
    r := 0;
  if temp = -1 then
    qry_yz.recno := qry_yz.RecordCount
  else
    qry_yz.recno := temp;
  result := r;
end;

procedure Tfrm_yzinput.fcqyzlb;
begin
  qry_yzlist.Close;
  qry_yzlist.SQL.Text := 'select * from zybl_zyyz_list where 1=2';
  qry_yzlist.Open;
  qry_yz.Filtered := false;
  qry_yz.Filter := ' (lb = ' + '''' + 'ҩƷ' + '''' + ' and yzsx <> ' + #39 +
    '����' + #39 + ') or ' +
    ' (lb = ' + '''' + 'ҩһ' + '''' + ' and yzsx <> ' + #39 + '����' + #39 +
    ')  ';
  qry_yz.Filtered := true;
  if qry_yz.RecordCount > 0 then
  begin
    qry_yzlist.Insert;
    qry_yzlist.FieldByName('ph').Value := ypph;
    qry_yzlist.FieldByName('yzzs').Value := qry_yz.RecordCount;
    qry_yzlist.FieldByName('kssj').Value := frm_func.curr_date;

    if yzsx = '��ʱ' then
    begin
      qry_yzlist.FieldByName('yjjssj').Value := frm_func.curr_date + 1;
    end;
    qry_yzlist.FieldByName('zxry').Value := pub_czydm;
    qry_yzlist.FieldByName('zxcs').Value := 0;
    qry_yzlist.FieldByName('yzxcs').Value := 0;
    qry_yzlist.FieldByName('zyh').Value := zyh;
    qry_yzlist.FieldByName('yzsx').Value :=
      trim(qry_yz.FieldByName('yzsx').AsString);
    qry_yzlist.FieldByName('drzxcs').Value := 0;
    qry_yzlist.Post;
  end;
  qry_yz.Filtered := false;
  qry_yz.Filter := ' lb = ' + '''' + '����' + '''' + ' and yzsx <> ' + #39 +
    '����' + #39;
  qry_yz.Filtered := true;
  if qry_yz.RecordCount > 0 then
  begin
    qry_yzlist.Insert;
    qry_yzlist.FieldByName('ph').Value := clph;
    qry_yzlist.FieldByName('yzzs').Value := qry_yz.RecordCount;
    qry_yzlist.FieldByName('kssj').Value := frm_func.curr_date;
    qry_yzlist.FieldByName('zxry').Value := pub_czydm;
    qry_yzlist.FieldByName('zxcs').Value := 0;
    qry_yzlist.FieldByName('yzxcs').Value := 0;
    qry_yzlist.FieldByName('zyh').Value := zyh;
    qry_yzlist.FieldByName('yzsx').Value :=
      trim(qry_yz.FieldByName('yzsx').AsString);
    qry_yzlist.FieldByName('drzxcs').Value := 0;
    qry_yzlist.Post;
  end;
  qry_yz.Filtered := false;
  qry_yz.Filter := ' lb <> ' + '''' + '����' + '''' + ' and lb <> ' + '''' +
    'ҩƷ' + '''' + ' and lb<>''ҩһ'' and yzsx <> ' + #39 + '����' + #39;
  qry_yz.Filtered := true;
  if qry_yz.RecordCount > 0 then
  begin
    qry_yzlist.Insert;
    qry_yzlist.FieldByName('ph').Value := xmph;
    qry_yzlist.FieldByName('yzzs').Value := qry_yz.RecordCount;
    qry_yzlist.FieldByName('kssj').Value := frm_func.curr_date;
    qry_yzlist.FieldByName('zxry').Value := pub_czydm;
    qry_yzlist.FieldByName('zxcs').Value := 0;
    qry_yzlist.FieldByName('yzxcs').Value := 0;
    qry_yzlist.FieldByName('zyh').Value := zyh;
    qry_yzlist.FieldByName('yzsx').Value :=
      trim(qry_yz.FieldByName('yzsx').AsString);
    qry_yzlist.FieldByName('drzxcs').Value := 0;
    qry_yzlist.Post;
  end;
  qry_yzlist.UpdateBatch(arall);
  qry_yz.Filtered := false;
end;

procedure Tfrm_yzinput.tjyzfcqyz;
begin
  qry_yz.Edit;
  if (trim(qry_yz.FieldByName('lb').AsString) = 'ҩƷ') or
    (trim(qry_yz.FieldByName('lb').AsString) = 'ҩһ') then
  begin
    qry_yz.FieldByName('ph').Value := GetSJH(pub_czydm); //ypph
  end
  else if trim(qry_yz.FieldByName('lb').AsString) = '����' then
  begin
    qry_yz.FieldByName('ph').Value := GetSJH(pub_czydm); //clph;
  end
  else if trim(qry_yz.FieldByName('lb').AsString) = '����' then
  begin
    qry_yz.FieldByName('ph').Value := GetSJH(pub_czydm); //xmph;
  end
  else if trim(qry_yz.FieldByName('lb').AsString) = '����' then
  begin
    qry_yz.FieldByName('ph').Value := GetSJH(pub_czydm); // jyph;
  end
  else if trim(qry_yz.FieldByName('lb').AsString) = '���' then
  begin
    qry_yz.FieldByName('ph').Value := GetSJH(pub_czydm); //jcph;
  end
  else if trim(qry_yz.FieldByName('lb').AsString) = '��ҩ' then
  begin
    qry_yz.FieldByName('ph').Value := GetSJH(pub_czydm); //jcph;
  end
  else if trim(qry_yz.FieldByName('lb').AsString) = '��ҩ' then
  begin
    qry_yz.FieldByName('ph').Value := GetSJH(pub_czydm); //jcph;
  end
  else if trim(qry_yz.FieldByName('lb').AsString) = '����' then
  begin
    qry_yz.FieldByName('ph').Value := GetSJH(pub_czydm); //qtph;
  end;
  qry_yz.Post;
end;

procedure Tfrm_yzinput.ToolButton1Click(Sender: TObject);
begin
  if (qry_yz.State <> dsEdit) and (qry_yz.State <> dsInsert) then
  begin
    qry_yz.Edit;
  end;
  yzNew(1);
end;

procedure Tfrm_yzinput.ToolButton2Click(Sender: TObject);
begin
  if (qry_yz.State <> dsEdit) and (qry_yz.State <> dsInsert) then
  begin
    qry_yz.Edit;
  end;
  yzNew(3);
end;

procedure Tfrm_yzinput.ToolButton4Click(Sender: TObject);
begin
  if Application.MessageBox('ɾ����ǰ��¼��', '��ʾ', MB_OKCANCEL +
    MB_ICONINFORMATION) = mrOk then
    qry_yz.DeleteRecords(arCurrent);
end;

procedure Tfrm_yzinput.ToolButton7Click(Sender: TObject);
var
  zyyz_mbmc, zyyz_mblb: string;
begin
  yzxy; //����Ч��

  ToolButton7.Enabled := false;
  zyyz_mbmc := lclj_mbmc;
  if trim(zyyz_mbmc) = '' then
    zyyz_mbmc := pub_czydm + '__' + FormatDateTime('yyyyMMddHHmmss', now);
  zyyz_mblb := lclj_mblb;

  if qry_yz.RecordCount = 0 then
    exit;
  dm_data.qry_pub.Close;
  dm_data.qry_pub.SQL.Text := 'select * from lclj_blmbdx where ztmc=' + #39 +
    zyyz_mbmc + #39 + ' and ' +
    'czy=' + #39 + pub_czydm + #39;
  try
    DM_data.qry_pub.open;
  except

  end;
  if not dm_data.qry_pub.isempty then
  begin
    application.MessageBox('�Ѿ�������ͬ���Ƶ�ģ�壬����������ģ�����ƣ�����',
      '��ʾ', 0 + 48);
    abort;
  end;
  dm_data.qry_pub.Close;
  dm_data.qry_pub.SQL.Text :=
    'insert into lclj_blmbdx(bqdm,ksdm,ysdm,ztmc,czy,mzbz,zybz,mblb,bqmc,ksmc) values(' +
    #39 + pub_bqdm + #39 + ',' + #39 + pub_ksdm + #39 + ',' + #39 + pub_czydm +
    #39 +
    ',' + #39 + zyyz_mbmc + #39 + ',' + #39 + pub_czydm + #39 + ',' + inttostr(0)
    + ',' + inttostr(0) + ',' +
    #39 + zyyz_mblb + #39 + ',' + #39 + pub_bqmc + #39 + ',' + #39 + pub_ksmc +
    #39 + ')';
  dm_data.qry_pub.ExecSQL;
  dm_data.qry_pub.Close;
  dm_data.qry_pub.SQL.Text := 'select ztid from lclj_blmbdx where ztmc=' + #39 +
    zyyz_mbmc + #39 +
    ' and czy=' + #39 + pub_czydm + #39;
  try
    DM_data.qry_pub.open;
  except

  end;
  ztid := dm_data.qry_pub.FieldByName('ztid').AsInteger;
  lclj_mbid := ztid;
  qry_yzmbmx.Close;
  qry_yzmbmx.Sql.Text := 'select * from lclj_blmbmx where 1=2';
  qry_yzmbmx.Open;
  qry_yz.First;
  while not qry_yz.Eof do
  begin
    if (qry_yz.FieldByName('xmmc').AsString <> '') and
      (qry_yz.FieldByName('sl').AsString <> '') then
    begin
      qry_yzmbmx.Append;

      qry_yzmbmx.FieldByName('ztid').AsInteger := ztid;
      qry_yzmbmx.FieldByName('yzsx').AsString :=
        qry_yz.FieldByName('yzsx').AsString;
      qry_yzmbmx.FieldByName('lb').AsString :=
        qry_yz.FieldByName('lb').AsString;
      qry_yzmbmx.FieldByName('xmdm').AsString :=
        qry_yz.FieldByName('xmdm').AsString;
      qry_yzmbmx.FieldByName('xmmc').AsString :=
        qry_yz.FieldByName('xmmc').AsString;
      qry_yzmbmx.FieldByName('ypyf').AsString :=
        qry_yz.FieldByName('ypyf').AsString;
      qry_yzmbmx.FieldByName('ypyl').AsString :=
        qry_yz.FieldByName('ypyl').AsString;
      qry_yzmbmx.FieldByName('yldw').AsString :=
        qry_yz.FieldByName('yldw').AsString;
      qry_yzmbmx.FieldByName('dw').AsString :=
        qry_yz.FieldByName('dw').AsString;
      qry_yzmbmx.FieldByName('sl').AsFloat :=
        qry_yz.FieldByName('sl').AsFloat;
      qry_yzmbmx.FieldByName('yytj').AsString :=
        qry_yz.FieldByName('yytj').AsString;
      qry_yzmbmx.FieldByName('czks').AsString :=
        qry_yz.FieldByName('czks').AsString;
      qry_yzmbmx.FieldByName('kdks').AsString :=
        qry_yz.FieldByName('kdks').AsString;
      qry_yzmbmx.FieldByName('yplb').AsString :=
        qry_yz.FieldByName('yplb').AsString;
      qry_yzmbmx.FieldByName('gg').AsString :=
        qry_yz.FieldByName('gg').AsString;
      qry_yzmbmx.FieldByName('yplsj').AsString :=
        qry_yz.FieldByName('yplsj').AsString;
      qry_yzmbmx.FieldByName('ypbzbl').AsInteger :=
        qry_yz.FieldByName('ypbzbl').AsInteger;
      qry_yzmbmx.FieldByName('bz').AsString :=
        qry_yz.FieldByName('bz').AsString;
      qry_yzmbmx.FieldByName('jyyb').AsString :=
        qry_yz.FieldByName('jyyb').AsString;
      qry_yzmbmx.FieldByName('jyflbh').AsString :=
        qry_yz.FieldByName('jyflbh').AsString;
      //  qry_yzmbmx.FieldByName('id').AsString := qry_yz.FieldByName('id').AsString;
      qry_yzmbmx.FieldByName('ypdwid').AsString :=
        qry_yz.FieldByName('ypdwid').AsString;
      qry_yzmbmx.FieldByName('fzbz').AsString :=
        qry_yz.FieldByName('fzbz').AsString;
      qry_yzmbmx.FieldByName('syfzbh').AsString :=
        qry_yz.FieldByName('fzph').AsString;
      qry_yzmbmx.Post;
    end;
    qry_yz.Next;
  end;
  qry_yzmbmx.UpdateBatch(arall);
  Application.MessageBox('����ɹ�', '��ʾ', MB_OK + MB_ICONINFORMATION);
  ToolButton7.Enabled := true;

  qry_yz.first;
  while not qry_yz.eof do
  begin
    qry_yz.DeleteRecords(arCurrent);
  end;
  qry_yz.UpdateBatch(arall);
end;

procedure Tfrm_yzinput.ToolButton8Click(Sender: TObject);
begin
  Self.Close;
end;

procedure Tfrm_yzinput.WMAdoReStore(var message: TMessage);
begin
  ShowForm;
end;

procedure Tfrm_yzinput.zdkz;
begin
  yzlb := qry_yz.FieldByName('lb').AsString;
  yzsx := qry_yz.FieldByName('yzsx').AsString;
  if (yzlb = 'ҩƷ') or (yzlb = 'ҩһ') then
  begin
    grid_yzlr.Columns[3].ReadOnly := false;
    grid_yzlr.Columns[4].ReadOnly := true;
    grid_yzlr.Columns[5].ReadOnly := false;
    grid_yzlr.Columns[6].ReadOnly := false;
    grid_yzlr.Columns[8].ReadOnly := true;
    grid_yzlr.Columns[9].ReadOnly := true;
  end
  else if ((yzlb = '����') and isbqkf) then
  begin
    grid_yzlr.Columns[3].ReadOnly := true;
    grid_yzlr.Columns[4].ReadOnly := true;
    grid_yzlr.Columns[5].ReadOnly := true;
    grid_yzlr.Columns[6].ReadOnly := true;
    grid_yzlr.Columns[8].ReadOnly := true;
    grid_yzlr.Columns[9].ReadOnly := true;
    grid_yzlr.Columns[10].ReadOnly := false;
  end
  else if (yzlb = '��ҩ') then
  begin
    grid_yzlr.Columns[3].ReadOnly := false;
    grid_yzlr.Columns[4].ReadOnly := true;
    grid_yzlr.Columns[5].ReadOnly := false;
    grid_yzlr.Columns[6].ReadOnly := false;
    grid_yzlr.Columns[8].ReadOnly := true;
    grid_yzlr.Columns[9].ReadOnly := true;
    grid_yzlr.Columns[10].ReadOnly := false;
  end
  else if (yzlb = '��ҩ') then
  begin

    grid_yzlr.Columns[3].ReadOnly := true;
    grid_yzlr.Columns[4].ReadOnly := true;
    grid_yzlr.Columns[5].ReadOnly := false;
    grid_yzlr.Columns[6].ReadOnly := false;
    grid_yzlr.Columns[8].ReadOnly := true;
    grid_yzlr.Columns[9].ReadOnly := true;
    grid_yzlr.Columns[10].ReadOnly := false;
  end
  else if (yzlb = '����') then
  begin
    grid_yzlr.Columns[3].ReadOnly := false;
    grid_yzlr.Columns[4].ReadOnly := false;
    grid_yzlr.Columns[5].ReadOnly := false;
    grid_yzlr.Columns[6].ReadOnly := false;
    grid_yzlr.Columns[7].ReadOnly := false;
    grid_yzlr.Columns[8].ReadOnly := false;
    grid_yzlr.Columns[9].ReadOnly := false;
    grid_yzlr.Columns[10].ReadOnly := false;
  end
  else if (yzlb = '����') then
  begin
    grid_yzlr.Columns[3].ReadOnly := false;
    grid_yzlr.Columns[4].ReadOnly := true;
    grid_yzlr.Columns[5].ReadOnly := false;
    grid_yzlr.Columns[6].ReadOnly := true;
    grid_yzlr.Columns[7].ReadOnly := false;
    grid_yzlr.Columns[8].ReadOnly := true;
    grid_yzlr.Columns[9].ReadOnly := false;
    grid_yzlr.Columns[10].ReadOnly := false;

  end
  else if (yzlb = '���') then
  begin
    grid_yzlr.Columns[3].ReadOnly := false;
    grid_yzlr.Columns[4].ReadOnly := true;
    grid_yzlr.Columns[5].ReadOnly := false;
    grid_yzlr.Columns[6].ReadOnly := true;
    grid_yzlr.Columns[7].ReadOnly := false;
    grid_yzlr.Columns[8].ReadOnly := true;
    grid_yzlr.Columns[9].ReadOnly := false;
    grid_yzlr.Columns[10].ReadOnly := false;

  end
  else if (yzlb = '����') then
  begin
    grid_yzlr.Columns[3].ReadOnly := false;
    grid_yzlr.Columns[4].ReadOnly := true;
    grid_yzlr.Columns[5].ReadOnly := false;
    grid_yzlr.Columns[6].ReadOnly := true;
    grid_yzlr.Columns[7].ReadOnly := false;
    grid_yzlr.Columns[8].ReadOnly := true;
    grid_yzlr.Columns[9].ReadOnly := false;
    grid_yzlr.Columns[10].ReadOnly := false;

  end;
end;


procedure Tfrm_yzinput.qtjs;
begin
  qry_yz.Edit;
  qry_yz.fieldbyname('xmdm').value := '';
  qry_yz.Post;
  if find_current_yzxm(sp_cx_yp_yz.FieldByName('xmdm').AsString) = 0 then
  begin
    if (yzlb = '����') and isbqkf then
    begin

      ypinyz;
    end else
    begin
      if (Trim(sp_cx_yp_yz.FieldByName('zylsj').AsString) = '') and (pub_yydm <>
        '0013') then
      begin
        ShowMessage('�۸�Ϊ�㣬���ܵ��ã�');
        grid_yzlr.SelectedIndex := 2;
        recno := ScrollBox4.VertScrollBar.Position;
        grid_yzlr.SetFocus;
        ScrollBox4.VertScrollBar.Position := recno;
        Abort;
      end
      else
      begin
       //����ϵͳ���������Ƿ���¼��ҽ����ʱ��¼��ҽ����ϸ����ҽ�������Ҫ��ָ����  yangshuai20151111
      if pub_sfqymzyzdb then
       begin
         xmmxinyz
       end else
       begin
         xminyz;
       end;

      end;
    end;
  end
  else
  begin
    application.MessageBox('��ǰҽ�������и���Ŀ,�����ٴ����!', '��ʾ��Ϣ', 0 +
      16);
    grid_yzlr.SelectedIndex := 7;
    abort;
  end;
  grid_yz.Visible := false;
end;

procedure Tfrm_yzinput.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  //  sp_zxjl_cq_dy.first;
  //  paper_size := 0;
end;

procedure Tfrm_yzinput.QuickRep2BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  sp_zxjl_ls_dy.first;
  paper_size := 0;
end;

{-------------------------------------------------------------------------------
  ������:    Tfrm_yzinput.ypjs
  ����:      yansghuai
  ����:      2016.01.13
  ����:      ��
  ����ֵ:    ��
-------------------------------------------------------------------------------}
procedure Tfrm_yzinput.ypjs;
var
  p_ypmc: string;
  sbnhbryykz: Boolean;
begin
  if pub_yydm = '0031' then //��������ж�Ƥ��ҩƷ
  begin
    DM_data.qry_pub.Close;
    DM_data.qry_pub.SQL.Text :=
      ' select count(*) as count from sys_psypdm where ypdm=''' +
      sp_cx_yp_yz.FieldByName('ypdm').AsString + '''';
    try
      DM_data.qry_pub.open;
    except

    end;
    if DM_data.qry_pub.FieldByName('count').AsInteger > 0 then
      ShowMessage('��ҩƷ����Ҫ��Ƥ�Ե�ҩƷ��');
  end;

  DM_data.qry_pub.Close;
  DM_data.qry_pub.SQL.Text := 'select * from sys_xt_kg ';
  try
    DM_data.qry_pub.open;
  except

  end;
  sbnhbryykz := DM_data.qry_pub.FieldByName('sbnhbryykz').AsBoolean;
  if pub_yydm = '0015' then
  begin
    if (Pos('ũ�ϲ���', v_fylbmc) > 0) and
      (sp_cx_yp_yz.FieldByName('nhlb').AsBoolean = false) then
    begin
      if sbnhbryykz = true then
      begin
        Application.MessageBox('ũ�ϲ��˲��ܷ�ũ����ҩ��', '�����ʾ', MB_OK +
          MB_ICONSTOP);
        Exit;
      end
      else
      begin
        if Application.MessageBox('ũ�ϲ��˲��ܿ���ũ��ҩƷ���Ƿ��Կ���ҩ��',
          'ѯ��', MB_OKCANCEL + MB_ICONQUESTION) = IDCANCEL then
        begin
          Exit;
        end;

      end;
    end
    else if ((Pos('����', v_fylbmc) > 0) or (Pos('�籣', v_fylbmc) > 0)) and
      (StrTofloat(sp_cx_yp_yz.FieldByName('bxbl').Asstring + '0') < 1) then
    begin
      if sbnhbryykz = true then
      begin
        Application.MessageBox('�籣���˲��ܿ��籣�Է�ҩ��', '�����ʾ', MB_OK +
          MB_ICONSTOP);
        Exit;
      end
      else
      begin
        if Application.MessageBox('�籣���˲��ܿ��籣�Է�ҩƷ���Ƿ��Կ���ҩ��',
          'ѯ��', MB_OKCANCEL + MB_ICONQUESTION) = IDCANCEL then
        begin
          Exit;
        end;

      end;
    end;
    if sp_cx_yp_yz.FieldByName('gwyp').asboolean = true then
    begin
      Application.MessageBox('��ҩΪ��Σ���綾��ҩƷ��������ʹ�ã�', '����',
        MB_OK + MB_ICONWARNING);
    end;

  end;

  qry_yz.Edit;
  qry_yz.fieldbyname('xmdm').value := '';
  qry_yz.Post;

  if pub_ysypcan = '1' then
  begin
    if Pos(Trim(sp_cx_yp_yz.FieldByName('ypdm').AsString), pub_kssypdm) > 0 then
    begin
      if find_current_yzxm(sp_cx_yp_yz.FieldByName('ypdm').AsString) <> 2 then
      begin
        if find_today_yzxm(sp_cx_yp_yz.FieldByName('ypdm').AsString) = 1 then
          if application.MessageBox('��ҩƷ��Ա����ʹ��,�Ƿ�Ҫ����?',
            '��ʾ��Ϣ',
            mb_iconquestion + MB_YESNO + mb_defbutton1) = IDYES then
          begin
            abort;
          end;
        if Trim(sp_cx_yp_yz.FieldByName('zylsj').AsString) = '' then
        begin
          application.MessageBox('�۸�Ϊ�㣬���ܵ��ã�', '��ʾ��Ϣ', 0 + 16);
          abort;
        end;
        ypinyz;
      end
      else
      begin
        application.MessageBox('��ǰҽ�������и�ҩƷ,�����ٴ����!', '��ʾ��Ϣ',
          0
          + 16);
        grid_yzlr.SelectedIndex := 2;
        abort;
      end;
    end
    else
    begin
      p_ypmc := '����ϵͳ�е�ְ���޷�ʹ�ã�' +
        Trim(sp_cx_yp_yz.FieldByName('ypmc').AsString);
      application.MessageBox(PChar(p_ypmc), '��ʾ��Ϣ', 0 + 48);
    end;
  end
  else
  begin
    if Pos(Trim(sp_cx_yp_yz.FieldByName('ypdm').AsString), pub_kssypdm) = 0 then
    begin
      if find_current_yzxm(sp_cx_yp_yz.FieldByName('ypdm').AsString) <> 2 then
      begin
        if find_today_yzxm(sp_cx_yp_yz.FieldByName('ypdm').AsString) = 1 then
          if application.MessageBox('��ҩƷ��Ա����ʹ��,�Ƿ�Ҫ����?',
            '��ʾ��Ϣ',
            mb_iconquestion + MB_YESNO + mb_defbutton1) = IDYES then
          begin
            abort;
          end;
        if Trim(sp_cx_yp_yz.FieldByName('zylsj').AsString) = '' then
        begin
          application.MessageBox('�۸�Ϊ�㣬���ܵ��ã�', '��ʾ��Ϣ', 0 + 16);
          abort;
        end;
        ypinyz;
      end
      else
      begin
        application.MessageBox('��ǰҽ�������и�ҩƷ,�����ٴ����!', '��ʾ��Ϣ',
          0
          + 16);
        grid_yzlr.SelectedIndex := 2;
        abort;
      end;
    end
    else
    begin
      p_ypmc := '����ϵͳ�е�ְ���޷�ʹ�ã�' +
        Trim(sp_cx_yp_yz.FieldByName('ypmc').AsString);
      application.MessageBox(PChar(p_ypmc), '��ʾ��Ϣ', 0 + 48);
    end;
  end;

end;

procedure Tfrm_yzinput.ypyfjy0Print(sender: TObject; var Value: string);
begin
  // Value := Value +#10#13+'12354';
end;

procedure Tfrm_yzinput.ypyfjy1Print(sender: TObject; var Value: string);
begin
  //  Value := Value +#10#13+'12354';
end;

procedure Tfrm_yzinput.tjyz;
var
  jjgx: string;
  hisypdm: string;
  zxcs: string;
  xmid: string;
  zs: Integer;
  yzlist: string;
  ypid: string;
  xzyz: string;
  ph: string;
  li_sj: Integer;
  clid: string;
begin
  qry_yz.First;
  while not qry_yz.Eof do
  begin
    if trim(qry_yz.FieldByName('kdys').AsString) = '' then
    begin
      showMessage('����ҽ������Ϊ��!');
      abort;
    end;
    if trim(qry_yz.FieldByName('czks').AsString) = '' then
    begin
      showMessage('���ÿ��Ҳ���Ϊ��!');
    end;
    if (trim(qry_yz.FieldByName('kdks').AsString) <> pub_ksdm) then
      //or ( trim( qry_yz.FieldByName( 'kdys' ).AsString ) <> trim( sp_jbxx.FieldByName( 'zgys' ).AsString ) ) then
    begin
      qry_yz.Edit;
      qry_yz.FieldByName('kdks').Value := yz_kdks;
      //qry_yz.FieldByName( 'kdys' ).Value := trim( sp_jbxx.FieldByName( 'zgys' ).AsString );
      qry_yz.Post;
    end;
    qry_yz.Next;
  end;
  try
    qry_yz.UpdateBatch(arall);
  except
  end;
  refresh_yz;
  hisypdm := '';
  jjgx := '';
  if qry_yz.Active and (zz.ActivePage = tab_yp) then
  begin
    qry_yz.First;
    while not qry_yz.Eof do
    begin
      hisypdm := hisypdm + qry_yz.fieldbyname('xmdm').asstring + ',';
      qry_yz.Next;
    end;
    try
      jjgx := xyyd_jj_js(hisypdm);
    except
      showMessage('��ҩ�����ݿ�,���ɳ�ͻ��ʾ����ִ��!');
      jjgx := '';
    end;
  end;
  if jjgx <> '' then
  begin
    if application.MessageBox(pchar('����ҽ����ϸ�н��ɳ�ͻ' + ''#13'' + jjgx +
      ''#13'' + '�Ƿ����ִ��?'), '��ʾ��Ϣ', mb_iconquestion + mb_okcancel +
      mb_defbutton1) = idcancel then
      abort;
  end;
  if qry_yz.RecordCount = 0 then
    abort;
  ypid := '';
  xmid := '';
  zs := qry_yz.RecordCount;
  qry_yz.First;
  while not qry_yz.Eof do
  begin
    if ((qry_yz.FieldByName('lb').AsString = 'ҩƷ')) or
      (qry_yz.FieldByName('lb').AsString = 'ҩһ') then
      if ypid = '' then
        //��ȡҩƷID�б�
        ypid := qry_yz.FieldByName('id').AsString
      else
        ypid := ypid + ',' + qry_yz.FieldByName('id').AsString
    else if (qry_yz.FieldByName('lb').AsString = '����') and isbqkf then
      if clid = '' then
        //��ȡ����ID�б�
        clid := qry_yz.FieldByName('id').AsString
      else
        clid := clid + ',' + qry_yz.FieldByName('id').AsString
    else if xmid = '' then
      //��ȡҽ����ĿID�б�
      xmid := qry_yz.FieldByName('id').AsString
    else
      xmid := xmid + ',' + qry_yz.FieldByName('id').AsString;
    qry_yz.Next;
  end;
  yzlist := '';
  //���ҩƷҽ��ID�ͷ�ҩƷҽ��ID
  if ypid <> '' then
    yzlist := ypid;
  if yzlist <> '' then
  begin
    if xmid <> '' then
      yzlist := yzlist + ',' + xmid;
  end
  else
  begin
    yzlist := xmid;
  end;
  //---calmhawk--
  if yzlist <> '' then
  begin
    if clid <> '' then
      yzlist := yzlist + ',' + clid;
  end
  else
  begin
    yzlist := clid;
  end;
  //�������
  ph := GetSJH(pub_czydm);
  //д�������¼
  qry_pub.Close;
  qry_pub.SQL.Clear;
  qry_pub.SQL.Text := 'insert into zybl_zyyz_czjl values(' + '''' + pub_czydm +
    '''' + ',' + '''' + pub_czyxm + '''' + ',' + '''' + 'ִ��ҽ��' + '''' +
    ',getdate(),' + '''' + 'ִ��ҽ��ID:' + xzyz + '''' + ')';
  //д��ҽ����¼�б� zybl_zyyz_list
  qry_yzlist.Close;
  qry_yzlist.SQL.Clear;
  //showmessage(yzlist);
  if yzlb = '����' then
    qry_yzlist.SQL.Text := 'insert into zybl_zyyz_list(ph,yzzs,kssj,jssj' +
      ',zxry,zxcs,yzxcs,zxsjd,fzsm,ypzxcs,fyzxcs,yzlist,zyh,yzsx) values(' +
      quotedstr(ph) + ',' + inttostr(zs) + ',' + '''' +
      datetimetostr(frm_func.curr_date) + '''' + ',null,' + quotedstr(pub_czydm)
      +
      ',' + quotedstr(zxcs) + ',' + quotedstr(zxcs) + ',' + inttostr(li_sj) + ','
      +
      '''' + '''' + ',' + quotedstr(zxcs) + ',' + quotedstr(zxcs) + ',' + '''' +
      yzlist + '''' + ',' + '''' + zyh + '''' + ',' + '''' + yzsx + '''' + ')'
  else
    qry_yzlist.SQL.Text := 'insert into zybl_zyyz_list(ph,yzzs,kssj,jssj,' +
      'zxry,zxcs,yzxcs,zxsjd,fzsm,ypzxcs,fyzxcs,yzlist,zyh,yzsx) values(' +
      quotedstr(ph) + ',' + inttostr(zs) + ',' + '''' +
      datetimetostr(frm_func.curr_date) + '''' + ',null,' + quotedstr(pub_czydm)
      +
      ',' + quotedstr(zxcs) + ',0,' + inttostr(li_sj) + ',' + '''' + '''' +
      ',0,0,'
      + '''' + yzlist + '''' + ',' + '''' + zyh + '''' + ',' + '''' + yzsx + ''''
      +
      ')';
  qry_yz.RecordCount;
  qry_yz.first;
  while not qry_yz.eof do
  begin
    qry_yz.Edit;
    qry_yz.FieldByName('zxbz').Value := 1;
    qry_yz.FieldByName('tzbz').Value := 0;
    qry_yz.FieldByName('zxrq').Value := trim(DateTimeTostr(frm_func.curr_date));
    qry_yz.FieldByName('zxry').Value := pub_czydm;
    qry_yz.FieldByName('yzrq').Value := frm_func.curr_date;
    qry_yz.FieldByName('shbz').Value := 1;
    qry_yz.Post;
    qry_yz.next;
  end;
  //��ʼ���� ִ�в���
  dm_data.ado_mydata.BeginTrans;
  try
    if yzlb <> '����' then
    begin
      yzinypfymx(zyh, ypid, xmid, clid, ph);
      qry_ypyz.ExecSQL;
    end;
    qry_yz.UpdateBatch(arall);
    qry_pub.ExecSQL;
    qry_yzlist.ExecSQL;
    dm_data.ado_mydata.CommitTrans;
    showMessage('ҽ���ύ�ɹ�!');
    refresh_yz;
    scbz := 0;
  except
    dm_data.ado_mydata.RollbackTrans;
    application.MessageBox('ִ��ȫ��ҽ������ʧ��!', '��ʾ��Ϣ', 0 + 16);
  end;
end;

procedure Tfrm_yzinput.yzlbsr;
begin
  with qry_pub do
  begin
    close;
    SQL.text := 'select hskkyz from sys_xt_kg';
    try
      Open;
    except

    end;
    qry_yz.Edit;
    if FieldByName('hskkyz').AsBoolean then
    begin
      if (qry_yz.FieldByName('lb').asstring = '1') or
        (qry_yz.FieldByName('lb').asstring = 'cl') or
        (qry_yz.FieldByName('lb').asstring = '����') then
      begin
        qry_yz.FieldByName('lb').value := '����';
      end
      else if (qry_yz.FieldByName('lb').asstring = '2') or
        (qry_yz.FieldByName('lb').asstring = 'zl') or
        (qry_yz.FieldByName('lb').asstring = '����') then
      begin
        qry_yz.FieldByName('lb').value := '����';
      end
      else if (qry_yz.FieldByName('lb').asstring = '3') or
        (qry_yz.FieldByName('lb').asstring = 'jy') or
        (qry_yz.FieldByName('lb').asstring = '����') then
      begin
        qry_yz.FieldByName('lb').value := '����';
      end
      else if (qry_yz.FieldByName('lb').asstring = '4') or
        (qry_yz.FieldByName('lb').asstring = 'jc') or
        (qry_yz.FieldByName('lb').asstring = '���') then
      begin
        qry_yz.FieldByName('lb').value := '���';
      end
      else if (qry_yz.FieldByName('lb').asstring = '5') or
        (qry_yz.FieldByName('lb').asstring = 'qt') or
        (qry_yz.FieldByName('lb').asstring = '����') then
      begin
        qry_yz.FieldByName('lb').value := '����';
      end
      else if (qry_yz.FieldByName('lb').asstring = '6') or
        (qry_yz.FieldByName('lb').asstring = 'cy') or
        (qry_yz.FieldByName('lb').asstring = '��ҩ') then
      begin
        qry_yz.FieldByName('lb').value := '��ҩ';
      end
      else if (qry_yz.FieldByName('lb').asstring = '7') or
        (qry_yz.FieldByName('lb').asstring = 'cy') or
        (qry_yz.FieldByName('lb').asstring = '��ҩ') then
      begin
        qry_yz.FieldByName('lb').value := '��ҩ';
      end
      else if (qry_yz.FieldByName('lb').asstring = '8') or
        (qry_yz.FieldByName('lb').asstring = 'y1') or
        (qry_yz.FieldByName('lb').asstring = 'ҩһ') then
      begin
        if pub_yydm = '0015' then
          qry_yz.FieldByName('lb').value := 'ҩһ'
        else
          qry_yz.FieldByName('lb').value := 'ҩƷ';
      end
      else
        qry_yz.FieldByName('lb').value := 'ҩƷ';
    end
    else
    begin
      close;
      SQL.text := 'select * from sys_czy where dm= ' + '''' +
        pub_czydm + '''';
      try
        Open;
      except

      end;
      if not FieldByName('cfbz').AsBoolean then
      begin
        if (qry_yz.FieldByName('lb').asstring = '1') or
          (qry_yz.FieldByName('lb').asstring = 'cl') or
          (qry_yz.FieldByName('lb').asstring = '����') then
        begin
          qry_yz.FieldByName('lb').value := '����';
        end
        else
          qry_yz.FieldByName('lb').value := '����';
      end
      else
      begin
        if (qry_yz.FieldByName('lb').asstring = '1') or
          (qry_yz.FieldByName('lb').asstring = 'cl') or
          (qry_yz.FieldByName('lb').asstring = '����') then
        begin
          qry_yz.FieldByName('lb').value := '����';
        end
        else if (qry_yz.FieldByName('lb').asstring = '2') or
          (qry_yz.FieldByName('lb').asstring = 'zl') or
          (qry_yz.FieldByName('lb').asstring = '����') then
        begin
          qry_yz.FieldByName('lb').value := '����';
        end
        else if (qry_yz.FieldByName('lb').asstring = '3') or
          (qry_yz.FieldByName('lb').asstring = 'jy') or
          (qry_yz.FieldByName('lb').asstring = '����') then
        begin
          qry_yz.FieldByName('lb').value := '����';
        end
        else if (qry_yz.FieldByName('lb').asstring = '4') or
          (qry_yz.FieldByName('lb').asstring = 'jc') or
          (qry_yz.FieldByName('lb').asstring = '���') then
        begin
          qry_yz.FieldByName('lb').value := '���';
        end
        else if (qry_yz.FieldByName('lb').asstring = '5') or
          (qry_yz.FieldByName('lb').asstring = 'qt') or
          (qry_yz.FieldByName('lb').asstring = '����') then
        begin
          qry_yz.FieldByName('lb').value := '����';
        end
        else if (qry_yz.FieldByName('lb').asstring = '6') or
          (qry_yz.FieldByName('lb').asstring = 'cy') or
          (qry_yz.FieldByName('lb').asstring = '��ҩ') then
        begin
          qry_yz.FieldByName('lb').value := '��ҩ';
        end
        else if (qry_yz.FieldByName('lb').asstring = '7') or
          (qry_yz.FieldByName('lb').asstring = 'cy') or
          (qry_yz.FieldByName('lb').asstring = '��ҩ') then
        begin
          qry_yz.FieldByName('lb').value := '��ҩ';
        end
        else if (qry_yz.FieldByName('lb').asstring = '8') or
          (qry_yz.FieldByName('lb').asstring = 'y1') or
          (qry_yz.FieldByName('lb').asstring = 'ҩһ') then
        begin
          if pub_yydm = '0015' then
            qry_yz.FieldByName('lb').value := 'ҩһ'
          else
            qry_yz.FieldByName('lb').value := 'ҩƷ';
        end
        else
          qry_yz.FieldByName('lb').value := 'ҩƷ';
      end;
    end;
  end;
  //�޸�ҽ���������ԭ�����ϸ
  if yzlb <> qry_yz.FieldByName('lb').AsString then
  begin
    qry_yz.FieldByName('xmdm').Value := '';
    qry_yz.FieldByName('xmmc').Value := '';
    qry_yz.FieldByName('sl').Value := 1;
    qry_yz.FieldByName('dw').Value := '';
    qry_yz.FieldByName('ypyf').Value := '';
    qry_yz.FieldByName('ypyl').Value := '';
    qry_yz.FieldByName('yldw').Value := '';
    qry_yz.FieldByName('yytj').Value := '';
    qry_yz.FieldByName('czks').Value := '';
    qry_yz.FieldByName('yplb').Value := '';
    qry_yz.FieldByName('yplsj').Value := 0;
    qry_yz.FieldByName('gg').Value := '';
  end;
  qry_yz.Post;
  proc_yf_filer;
  zdkz;
  recno := ScrollBox4.VertScrollBar.Position;
  grid_yzlr.SetFocus;
  ScrollBox4.VertScrollBar.Position := recno;
  if kzbz = 0 then
    grid_yzlr.SelectedIndex := 1
  else
    grid_yzlr.SelectedIndex := 2;
end;

procedure Tfrm_yzinput.yzsxsr(fs: integer);
begin
  if (qry_yz.FieldByName('yzsx').asstring = '1') or
    (qry_yz.FieldByName('yzsx').asstring = 'ls') or
    (qry_yz.FieldByName('yzsx').asstring = '��ʱ') then
  begin
    qry_yz.FieldByName('yzsx').value := '��ʱ';
  end
  else
  begin
    qry_yz.FieldByName('yzsx').value := '����';
  end;
  yzsx := qry_yz.FieldByName('yzsx').AsString;
  if fs <> 0 then
    grid_yzlr.SelectedIndex := grid_yzlr.SelectedIndex + 1;
end;

{-------------------------------------------------------------------------------
  ������:    Tfrm_yzinput.yzXmsr
  ����:      yansghuai
  ����:      2016.01.13
  ����:      fs: integer
  ����ֵ:    ��
-------------------------------------------------------------------------------}
procedure Tfrm_yzinput.yzXmsr(fs: integer);
var
  ls_cxpym: string;
  lb: string;
begin
  ls_cxpym := trim(grid_yzlr.Columns[2].DisplayText);
  if (ls_cxpym = '') then
  begin
    exit;
  end;
  if (yzlb = '����') then
  begin
    qry_qtyzxm.Close;
    qry_qtyzxm.SQL.text :=
      'select rtrim(xmdm) ��Ŀ����,rtrim(xmmc) ��Ŀ����,rtrim(dw) ��λ  from sys_yzxm where qybz=1 and zybz=1 and substring(dldm,1,4)=''0106'' and ( xmmc like ''%' + ls_cxpym
      + '%'' or pym like ''%' + ls_cxpym + '%'' or xmdm like ''%' + ls_cxpym +
      '%'')';
    qry_qtyzxm.Open;
    if qry_qtyzxm.RecordCount < 1 then
    begin
      ShowMessage('�޴�������Ŀ');
      recno := ScrollBox4.VertScrollBar.Position;
      grid_yzlr.SetFocus;
      ScrollBox4.VertScrollBar.Position := recno;
      xminyz;
      grid_yzlr.SelectedIndex := 7;
    end
    else if qry_qtyzxm.RecordCount = 1 then
    begin
      ls_cxpym := Trim(qry_qtyzxm.FieldByName('��Ŀ����').AsString);
      qry_yz.Edit;
      qry_yz.FieldByName('xmmc').asstring :=
        Trim(qry_qtyzxm.FieldByName('��Ŀ����').AsString);
      qry_yz.Post;
      recno := ScrollBox4.VertScrollBar.Position;
      grid_yzlr.SetFocus;
      ScrollBox4.VertScrollBar.Position := recno;
      xminyz;
      if yzlb = '��ҩ' then
      begin
        if pub_yydm = '0012' then

          grid_yzlr.SelectedIndex := 5
        else
          grid_yzlr.SelectedIndex := 7;
      end; //add by zl end

    end
    else if qry_qtyzxm.RecordCount > 1 then
    begin
      DBGridEh5.Visible := True;
      DBGridEh5.SetFocus;
    end;
    //grid_yzlr.SelectedIndex := 7;
//        yzNew(kzbz);
    exit;
  end;


  lb := trim(qry_yz.FieldByName('lb').AsString);
  if (lb = 'ҩƷ') or (lb = 'ҩһ') then //---ҩƷҽ��¼��----
  begin
    sp_cx_yp_yz.Close;
    sp_cx_yp_yz.Parameters.ParamValues['@pym'] := ls_cxpym;
    sp_cx_yp_yz.Parameters.ParamValues['@ksdm'] := pub_zyxyfdm;
    sp_cx_yp_yz.Parameters.ParamValues['@jsfs'] := '0';
    sp_cx_yp_yz.Parameters.ParamValues['@ls'] := '1';
    sp_cx_yp_yz.Parameters.ParamValues['@brfylb'] := sp_jbxx.fieldbyname('fylb').asstring;//21Ϊ��ɫͨ����ɳ��
    sp_cx_yp_yz.Open;
    if sp_cx_yp_yz.RecordCount > 1 then
    begin
      grid_yp.Visible := true;
      grid_yp.SetFocus;
    end ;
    if sp_cx_yp_yz.RecordCount = 1 then
    begin
      ypjs;
      if (fs <> 0) then
      begin
        grid_yzlr.SelectedIndex := 3;
      end;
    end;
    if sp_cx_yp_yz.RecordCount < 1 then
    begin
      tzbz := 0;
      showMessage('ҩƷδ�ҵ�!');
    end;
  end
  else if (lb = '��ҩ') then //---ҩƷҽ��¼��----
  begin
    sp_cx_yp_yz.Close;
    sp_cx_yp_yz.Parameters.ParamValues['@pym'] := ls_cxpym;
    sp_cx_yp_yz.Parameters.ParamValues['@ksdm'] := prv_zyfdm;
    sp_cx_yp_yz.Parameters.ParamValues['@jsfs'] := '0';
    sp_cx_yp_yz.Parameters.ParamValues['@ls'] := '2';
    sp_cx_yp_yz.Parameters.ParamValues['@brfylb'] := sp_jbxx.fieldbyname('fylb').asstring;//21Ϊ��ɫͨ����ɳ��
    sp_cx_yp_yz.Open;
    if sp_cx_yp_yz.RecordCount > 1 then
    begin
      grid_yp.Visible := true;
      grid_yp.SetFocus;
    end;
    if sp_cx_yp_yz.RecordCount = 1 then
    begin
      ypjs;
      if fs <> 0 then
        grid_yzlr.SelectedIndex := 3;
    end;
    if sp_cx_yp_yz.RecordCount < 1 then
    begin
      tzbz := 0;
      showMessage('ҩƷδ�ҵ�!');
    end;
  end
  else if (lb = '��ҩ') then //---ҩƷҽ��¼��----
  begin
    sp_cx_yp_yz.Close;
    sp_cx_yp_yz.Parameters.ParamValues['@pym'] := ls_cxpym;
    sp_cx_yp_yz.Parameters.ParamValues['@ksdm'] := prv_cyfdm;
    sp_cx_yp_yz.Parameters.ParamValues['@jsfs'] := '0';
    sp_cx_yp_yz.Parameters.ParamValues['@ls'] := '3';
    sp_cx_yp_yz.Parameters.ParamValues['@brfylb'] := sp_jbxx.fieldbyname('fylb').asstring;//21Ϊ��ɫͨ����ɳ��
    sp_cx_yp_yz.Open;
    if sp_cx_yp_yz.RecordCount > 1 then
    begin
      grid_yp.Visible := true;
      grid_yp.SetFocus;
    end;
    if sp_cx_yp_yz.RecordCount = 1 then
    begin
      ypjs;
      if (fs <> 0) then
        grid_yzlr.SelectedIndex := 7;
    end;
    if sp_cx_yp_yz.RecordCount < 1 then
    begin
      tzbz := 0;
      showMessage('ҩƷδ�ҵ�!');
    end;
  end
  else if (lb = '����') and isbqkf then
  begin
    sp_cx_yp_yz.Close;
    sp_cx_yp_yz.Parameters.ParamValues['@pym'] := ls_cxpym;
    sp_cx_yp_yz.Parameters.ParamValues['@jsfs'] := '1';
    sp_cx_yp_yz.Parameters.ParamValues['@lb'] := lb;
    sp_cx_yp_yz.Parameters.ParamValues['@ls'] := '1';

    if isbqkf then //ҩƷʹ�ò����ⷿ,
    begin
      sp_cx_yp_yz.Parameters.ParamValues['@jsfs'] := '2';
      sp_cx_yp_yz.Parameters.ParamValues['@ksdm'] := pub_ksdm;
    end
    else
      sp_cx_yp_yz.Parameters.ParamValues['@ksdm'] := pub_zyxyfdm;
      sp_cx_yp_yz.Parameters.ParamValues['@brfylb'] := sp_jbxx.fieldbyname('fylb').asstring;//21Ϊ��ɫͨ����ɳ��
    sp_cx_yp_yz.Open;
    if sp_cx_yp_yz.RecordCount > 1 then
    begin
      grid_yp.Visible := true;
      grid_yp.SetFocus;
    end;
    if sp_cx_yp_yz.RecordCount = 1 then
    begin
      ypjs;
      if fs <> 0 then
        grid_yzlr.SelectedIndex := 7;
    end;
    if sp_cx_yp_yz.RecordCount < 1 then
    begin
      tzbz := 0;
      showMessage('����δ�ҵ�!');
    end;
  end
  else
  begin
    //--����ҽ��¼��
    sp_cx_yp_yz.Close;
    sp_cx_yp_yz.Parameters.ParamValues['@pym'] := ls_cxpym;
    if isbqkf then
      //ҩƷʹ�ò����ⷿ
      sp_cx_yp_yz.Parameters.ParamValues['@ksdm'] := pub_ksdm
    else
      sp_cx_yp_yz.Parameters.ParamValues['@ksdm'] := pub_zyxyfdm;
    sp_cx_yp_yz.Parameters.ParamValues['@jsfs'] := '1';
    sp_cx_yp_yz.Parameters.ParamValues['@lb'] := lb;
    sp_cx_yp_yz.Parameters.ParamValues['@ls'] := '1';
    sp_cx_yp_yz.Parameters.ParamValues['@brfylb'] := sp_jbxx.fieldbyname('fylb').asstring;//21Ϊ��ɫͨ����ɳ��
    sp_cx_yp_yz.Open;

    if sp_cx_yp_yz.RecordCount > 1 then
    begin
      grid_yz.Visible := true;
      grid_yz.SetFocus;
    end
    else if sp_cx_yp_yz.RecordCount = 1 then
    begin
      if Trim(sp_cx_yp_yz.FieldByName('zylsj').AsString) = '' then
      begin
        ShowMessage('�۸�Ϊ�㣬���ܵ��ã�');
        Abort;
      end;
      DM_data.qry_pub.close;
      DM_data.qry_pub.SQL.text := 'select * from sys_yzxm where xmdm=' + '''' +
        sp_cx_yp_yz.FieldByName('xmdm').asstring + ''' AND  qybz=1 AND zybz=1 and xsbz=1';
      try
        DM_data.qry_pub.open;
      except

      end;
      if DM_data.qry_pub.FieldByName('jsyz').AsBoolean = true then
      begin
        DM_data.qry_pub.close;
        DM_data.qry_pub.SQL.text := 'select * from sys_czy where dm=' + '''' +
          pub_czydm + '''' + ' and jslys=1';
        try
          DM_data.qry_pub.open;
        except

        end;
        if DM_data.qry_pub.IsEmpty then
        begin
          Application.MessageBox('�Ǿ����ҽ�����ܿ�������ҽ��', '����', MB_OK +
            MB_ICONSTOP);
          Exit;
        end;

      end;
      qtjs;
      if fs <> 0 then
        if (qry_yz.FieldByName('lb').AsString <> '����') and
          (qry_yz.FieldByName('lb').AsString <> '����') and
          (qry_yz.FieldByName('lb').AsString <> '���') then
          grid_yzlr.SelectedIndex := 7
        else if qry_yz.FieldByName('lb').AsString = '����' then
          grid_yzlr.SelectedIndex := 9
        else
          grid_yzlr.SelectedIndex := 5;
    end
    else if sp_cx_yp_yz.RecordCount < 1 then
    begin
      tzbz := 0;
      showMessage('��Ŀδ�ҵ�!');
    end;
  end;
end;

procedure Tfrm_yzinput.yzNew(fs: integer);
begin
  if (grid_yzlr.SelectedIndex in [16])  and
    (Trim(grid_yzlr.Columns[2].DisplayText) = '') then
  begin
    ShowMessage('����ҽ����Ŀ��');
    qry_yz.FieldByName('zyh').AsString := zyh;
    qry_yz.FieldByName('tmh').AsString := tmh;
    qry_yz.FieldByName('kdks').AsString := yz_kdks;
    grid_yzlr.SelectedIndex := 2;
  end
  else if (grid_yzlr.SelectedIndex in [16,11,9,12])  and
    (Trim(grid_yzlr.Columns[10].DisplayText) = '') then
  begin
    ShowMessage('����д���ÿ��ң�');
    qry_yz.FieldByName('zyh').AsString := zyh;
    qry_yz.FieldByName('tmh').AsString := tmh;
    qry_yz.FieldByName('kdks').AsString := yz_kdks;
    grid_yzlr.SelectedIndex := 10;
  end
  else
  begin
    if (grid_yzlr.SelectedIndex = 9) and
      (Trim(grid_yzlr.Columns[10].DisplayText) <> '') and
      (Trim(grid_yzlr.Columns[1].DisplayText) = '����') then //������������
    begin
      if not qry_jyyb.active then
      begin
        qry_jyyb.Open;
      end;
      qry_jyyb.First;
      while not qry_jyyb.eof do
      begin
        if Pos(lowercase(qry_yz.FieldByName('jyyb').AsString),
          lowercase(GetPym(qry_jyyb.FieldByName('ybmc').asstring))
          ) > 0 then
        begin
          qry_yz.FieldByName('jyyb').AsString :=
            qry_jyyb.FieldByName('ybmc').asstring;
          Break;
        end;
        qry_jyyb.Next;
      end;
    end;

    if (qry_yz.State = dsEdit) or (qry_yz.State = dsInsert) then
    begin
      qry_yz.Post;
    end;
    yzlb := qry_yz.FieldByName('lb').AsString;
    if grid_yzlr.SelectedIndex = 16 then
      saveyz;
    if fs <> 0 then
    begin
      qry_yz.Next;
      if not qry_yz.Eof then //�����ǰ��¼���м�¼���޸�
      begin
        if fs = 3 then
          qry_yz.insert
        else
          qry_yz.Edit;
        if fs <> 0 then
          grid_yzlr.SelectedIndex := 1;
      end
      else
      begin //��ǰ��¼����û�м�¼�����
        qry_yz.append;
        recno := ScrollBox4.VertScrollBar.Position;
        grid_yzlr.SetFocus;
        ScrollBox4.VertScrollBar.Position := recno;
        if fs <> 0 then
          grid_yzlr.SelectedIndex := 1;
      end;
    end;
  end;

end;

procedure Tfrm_yzinput.zyzadd;
var
  _ypdm: string;
  _ypyf: string;
  _yzsx: string;
  _ypyl: string;
  _sl: string;
  _yldw: string;
  _yytj: string;
  _ypmc: string;
begin
  //�����ҽ��
  if qry_yz.RecordCount > 0 then
  begin
    _ypdm := qry_yz.FieldByName('xmdm').AsString;
    _ypmc := qry_yz.FieldByName('xmmc').AsString;
    qry_yz.Delete;
    _sl := qry_yz.FieldByName('sl').AsString;
    _ypyf := qry_yz.FieldByName('ypyf').AsString;
    _ypyl := qry_yz.FieldByName('ypyl').AsString;
    _yldw := qry_yz.FieldByName('yldw').AsString;
    _yytj := qry_yz.FieldByName('yytj').AsString;
    _yzsx := qry_yz.FieldByName('yzsx').AsString;
    qry_yz.Append;
    qry_yz.FieldByName('lb').AsString := yzlb;
    qry_yz.FieldByName('yzsx').AsString := yzsx;
    qry_yz.FieldByName('tmh').AsString := tmh;
    qry_yz.FieldByName('zyh').AsString := zyh;
    qry_yz.FieldByName('xmdm').AsString := _ypdm;
    qry_yz.FieldByName('xmmc').AsString := _ypmc;
    qry_yz.FieldByName('sl').AsString := _sl;
    qry_yz.FieldByName('ypyf').AsString := _ypyf;
    qry_yz.FieldByName('ypyl').AsString := _ypyl;
    qry_yz.FieldByName('yldw').AsString := _yldw;
    qry_yz.FieldByName('yytj').AsString := _yytj;
    qry_yz.FieldByName('yzsx').AsString := _yzsx;
    qry_yz.FieldByName('dw').AsString :=
      sp_cx_yp_yz.FieldByName('zyyfdw').AsString;
    qry_yz.FieldByName('ypdwid').AsInteger :=
      sp_cx_yp_yz.FieldByName('zydwid').AsInteger;
    qry_yz.FieldByName('ypbzbl').AsInteger :=
      sp_cx_yp_yz.FieldByName('zyyfzhl').AsInteger;
    qry_yz.FieldByName('yplsj').AsFloat :=
      sp_cx_yp_yz.FieldByName('zylsj').AsFloat;
    qry_yz.FieldByName('ypcgj').AsFloat :=
      sp_cx_yp_yz.FieldByName('zypfj').AsFloat;
    qry_yz.FieldByName('yldw').AsString :=
      sp_cx_yp_yz.FieldByName('zyyfdw').AsString;
    qry_yz.FieldByName('kdks').AsString := yz_kdks;
    qry_yz.FieldByName('kdrq').AsDateTime := frm_func.curr_date;
    qry_yz.FieldByName('kdys').AsString := sp_jbxx.FieldByName('zgys').AsString;
    qry_yz.FieldByName('czks').AsString := pub_zyxyfdm;
    qry_yz.FieldByName('jyyb').AsString :=
      sp_cx_yp_yz.FieldByName('yb').AsString;
    qry_yz.FieldByName('jyflbh').AsString :=
      sp_cx_yp_yz.FieldByName('dldm').AsString;
    //calmhawk
    if qry_yz.FieldByName('xh').AsString = '' then
    begin
      qry_yz.FieldByName('xh').Asinteger := maxxh + 1;
      maxxh := maxxh + 1;
    end;
    if sp_cx_yp_yz.fieldbyname('sfdmyp').asboolean then
      qry_yz.FieldByName('yplb').AsString := '����ҩƷ';
    qry_yz.Post;
  end;
end;

procedure Tfrm_yzinput.xzsm(Sender: TDbmemo);
begin
  //Application.OnMessage := nil;
  if qry_yz.RecordCount > 0 then
  begin
    application.CreateForm(Tfrm_treeview_ctxz, frm_treeview_ctxz);
    try
      frm_treeview_ctxz.ShowModal;
    except
      frm_treeview_ctxz.Free;
    end;
    if qry_yz.DataSource.DataSet.State <> dsedit then
      qry_yz.Edit;
    sender.Text := frm_treeview_ctxz.pub_selectword;
  end;
  //Application.onm
end;

procedure Tfrm_yzinput.dbg_ysDblClick(Sender: TObject);
begin
  yzys := qry_ys.FieldByName('dm').AsString;
  e_yzys.Text := qry_ys.FieldByName('mc').AsString;
  zz.ActivePage := Tab_yp;
  recno := ScrollBox4.VertScrollBar.Position;
  grid_yzlr.SetFocus;
  ScrollBox4.VertScrollBar.Position := recno;
  grid_yzlr.SelectedIndex := 1;
end;

procedure Tfrm_yzinput.dbg_ysExit(Sender: TObject);
begin
  yzys := qry_ys.FieldByName('dm').AsString;
  e_yzys.Text := qry_ys.FieldByName('mc').AsString;
  dbg_ys.Visible := false;
  db_brxx.Visible := false;
end;

procedure Tfrm_yzinput.dbg_ysKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    yzys := qry_ys.FieldByName('dm').AsString;
    e_yzys.Text := qry_ys.FieldByName('mc').AsString;
    zz.ActivePage := Tab_yp;
    recno := ScrollBox4.VertScrollBar.Position;
    grid_yzlr.SetFocus;
    ScrollBox4.VertScrollBar.Position := recno;
    grid_yzlr.SelectedIndex := 1;
  end;

end;

procedure Tfrm_yzinput.db_brxxDblClick(Sender: TObject);
begin
  e_yzys.SetFocus;
end;

procedure Tfrm_yzinput.db_brxxExit(Sender: TObject);
var
  sjxz: Integer;
begin
  DM_data.qry_pub.close;
  DM_data.qry_pub.sql.Text := 'select * from sys_xt_kg';
  try
    DM_data.qry_pub.open;
  except

  end;
  sjxz := DM_data.qry_pub.FieldByName('zyblcykxgsj').AsInteger;

  dbg_ys.Visible := false;
  db_brxx.Visible := false;
  zyh := sp_jbxx.FieldByName('zyh').AsString;
  dm_data.qry_pub.close;
  dm_data.qry_pub.sql.text :=
    'select a.*,b.mc fylbmc from zysf_zydj a,sys_fylb b where a.zyh=' + '''' +
    zyh
    + '''' + ' and a.fylb=b.dm';
  try
    DM_data.qry_pub.open;
  except

  end;
  v_fylbmc := dm_data.qry_pub.FieldByName('fylbmc').AsString;
  tmh := sp_jbxx.FieldByName('tmh').AsString;
  brxm := sp_jbxx.FieldByName('brxm').AsString;
  e_tmh.Text := tmh;
  if trim(dbedit11.Text) <> '' then
    e_yzys.Text := DBEdit11.Text;
  //���˻�����Ϣ����pass  2011-11-23 jc
  try
    if gi_PassEnabled = 1 then
    begin
      proc_brjbxx(tmh, '1', brxm, sp_jbxx.FieldByName('brxb').AsString,
        FormatDateTime('yyyy-MM-dd', sp_jbxx.FieldByName('csrq').AsDateTime),
        br_tz, '', pub_ksdm, pub_ksmc, pub_czydm, pub_czyxm, '');
    end;
  except
  end;
  dm_data.qry_pub.close;
  dm_data.qry_pub.sql.text := 'select * from zysf_zydj where zyh=' + '''' + zyh
    +
    '''';
  try
    DM_data.qry_pub.open;
  except

  end;
  if dm_data.qry_pub.isempty then
  begin
    dm_data.qry_pub.close;
    dm_data.qry_pub.sql.text :=
      'select *,datediff(day,cyrq,getdate()) cyts from zysf_cydj where zyh=' + ''''
      + zyh + '''';
    try
      DM_data.qry_pub.open;
    except

    end;
    if dm_data.qry_pub.IsEmpty then
      Exit
    else
    begin
      if dm_data.qry_pub.FieldByName('cyts').AsInteger > sjxz then
      begin
        dm_data.qry_pub.close;
        dm_data.qry_pub.sql.text := 'select * from sys_bljy where zyh=' + '''' +
          zyh + ''' and ' +
          ' datediff(day,jyrq,getdate())<=jyts';
        try
          DM_data.qry_pub.open;
        except

        end;
        if (not dm_data.qry_pub.IsEmpty) and
          (dm_data.qry_pub.FieldByName('ysdm').AsString = pub_czydm) then
        begin
          jybz := True;
          qry_hjjl.close;
          qry_hjjl.sql.Text :=
            'insert into zybl_jyjl(tmh,brxm,jyys,ysdm,cxsj,cknr)' +
            ' select ' + '''' + sp_jbxx.FieldByName('tmh').AsString + '''' + ','
            + '''' +
            sp_jbxx.FieldByName('brxm').AsString + '''' + ',' + '''' + pub_czyxm
            + '''' + ',' +
            '''' + pub_czydm + '''' + ',' + '''' +
            formatdatetime('yyyy-MM-dd hh:mm:ss', Frm_func.curr_date) + '''' +
            ',' + '''ҽ��''';
          qry_hjjl.ExecSQL;
        end
        else
        begin
          Application.MessageBox('��Ժ�������������Ʋ鿴ҽ������������ϵ�ʿ���Ա�������',
            '��ʾ', MB_OK + MB_ICONWARNING);
          exit;
        end;
      end;
    end;
  end;
  refresh_yz;
  sp_dryz.Close;
  sp_dryz.Parameters.ParamByName('@zyh').Value := zyh;
  sp_dryz.Parameters.ParamByName('@yzsx').Value := 'ȫ��';
  sp_dryz.Open;
  DM_data.qry_pub.close;
  DM_data.qry_pub.sql.text :=
    'select * from lclj_bricd10 a,icd10 b where a.icd_10=b.jbbm and zyh=' + ''''
    +
    zyh + '''';
  try
    DM_data.qry_pub.open;
  except

  end;
  if not DM_data.qry_pub.IsEmpty then
  begin
    Edit3.text := Trim(DM_data.qry_pub.FieldByName('jbbm').asstring) + '|' +
      Trim(DM_data.qry_pub.FieldByName('jbmc').asstring);
  end
  else
  begin
    Edit3.text := '';
  end;
end;

procedure Tfrm_yzinput.db_brxxKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_RETURN then
  begin
    e_yzys.SetFocus;
  end;
end;

procedure Tfrm_yzinput.delete_yz(key: word);
begin
  if (key = vk_delete) and (qry_yz.RecordCount > 0) then
  begin
    if application.MessageBox('�Ƿ�ɾ����ҽ��?', '��ʾ��Ϣ', mb_iconquestion +
      mb_okcancel + mb_defbutton1) = idok then
    begin
      qry_yz.Edit;
      qry_yz.Delete;
    end;
  end;
end;

procedure Tfrm_yzinput.xminyz;
begin
  qry_yz.FieldByName('yzsx').AsString;
  qry_yz.Edit;
  if trim(tmh) = '' then
  begin
    tmh := sp_jbxx.FieldByName('tmh').AsString;
  end;
  qry_yz.FieldByName('yzsx').AsString;
  qry_yz.FieldByName('tmh').AsString := tmh;
  qry_yz.FieldByName('zyh').AsString := zyh;
  if yzlb = '����' then
  begin
    qry_yz.FieldByName('xmdm').AsString := '����';
    qry_yz.FieldByName('xmmc').AsString := grid_yzlr.Columns[2].DisplayText;
    qry_yz.FieldByName('dw').AsString := '';
    qry_yz.FieldByName('kdks').AsString := yz_kdks;
    qry_yz.FieldByName('kdrq').AsDateTime := frm_func.curr_date;
    qry_yz.FieldByName('kdys').AsString := pub_czydm;
    qry_yz.FieldByName('yplsj').AsFloat := 0;
    //qry_yz.FieldByName( 'sl' ).AsString := '0';
    qry_yz.FieldByName('czks').value := yz_kdks;
    qry_xmyz.insert;
    qry_xmyz.FieldByName('xmdm').AsString := '����';
    qry_xmyz.FieldByName('xmmc').AsString := grid_yzlr.Columns[2].DisplayText;
    qry_xmyz.FieldByName('lb').AsString := qry_yz.FieldByName('lb').AsString;
    qry_yz.FieldByName('kdys').AsString := pub_czydm;
    qry_xmyz.post;
    qry_yz.FieldByName('yzsx').AsString;
    //calmhawk---
    if qry_yz.FieldByName('xh').AsString = '' then
    begin
      qry_yz.FieldByName('xh').Asinteger := maxxh + 1;
      maxxh := maxxh + 1;
    end;
    recno := ScrollBox4.VertScrollBar.Position;
    grid_yzlr.SetFocus;
    ScrollBox4.VertScrollBar.Position := recno;
    grid_yzlr.SelectedIndex := 7;
  end
  else
  begin
    qry_yz.FieldByName('xmdm').AsString :=
      sp_cx_yp_yz.FieldByName('xmdm').AsString;
    qry_yz.FieldByName('xmmc').AsString :=
      sp_cx_yp_yz.FieldByName('xmmc').AsString;
    qry_yz.FieldByName('dw').AsString := sp_cx_yp_yz.FieldByName('dw').AsString;
    qry_yz.FieldByName('kdks').AsString := yz_kdks;
    qry_yz.FieldByName('kdrq').AsDateTime := frm_func.curr_date;
    qry_yz.FieldByName('kdys').AsString := pub_czydm;
    qry_yz.FieldByName('yplsj').AsFloat :=
      sp_cx_yp_yz.FieldByName('zylsj').AsFloat;
    qry_yz.FieldByName('jyyb').AsString :=
      sp_cx_yp_yz.FieldByName('yb').asstring;

    qry_yz.FieldByName('sl').AsFloat := 1;
    qry_yz.FieldByName('jyflbh').AsString :=
      sp_cx_yp_yz.FieldByName('dldm').AsString;

    //calmhawk---
    if qry_yz.FieldByName('xh').AsString = '' then
    begin
      qry_yz.FieldByName('xh').Asinteger := maxxh + 1;
      maxxh := maxxh + 1;
    end;

    if trim(sp_cx_yp_yz.fieldbyname('zyks').asstring) <> '' then
      zy_czks := sp_cx_yp_yz.FieldByName('zyks').AsString
    else
      zy_czks := yz_kdks;
    qry_yz.FieldByName('czks').AsString := zy_czks;
    qry_xmyz.insert;
    qry_xmyz.FieldByName('xmdm').AsString :=
      sp_cx_yp_yz.FieldByName('xmdm').AsString;
    qry_xmyz.FieldByName('xmmc').AsString :=
      sp_cx_yp_yz.FieldByName('xmmc').AsString;
    qry_xmyz.FieldByName('lb').AsString := qry_yz.FieldByName('lb').AsString;
    qry_xmyz.post;
    recno := ScrollBox4.VertScrollBar.Position;
    grid_yzlr.SetFocus;
    ScrollBox4.VertScrollBar.Position := recno;
    if (qry_yz.FieldByName('lb').AsString = '����') or
      (qry_yz.FieldByName('lb').AsString = '����') or
      (qry_yz.FieldByName('lb').AsString = '���') then
      grid_yzlr.SelectedIndex := 5
    else
      grid_yzlr.SelectedIndex := 7;
  end;
end;

//����ҽ����Ŀ���yangshuai20151111
procedure Tfrm_yzinput.xmmxinyz;
var
  yzlb, txmdm: string;
  i: Integer;
begin
  yzlb := trim(qry_yz.FieldByName('lb').AsString);
  txmdm := trim(sp_cx_yp_yz.FieldByName('xmdm').AsString);
//wangbing20151030ҽ����Ϲ����ж�
  sp_cx_yz_xmzhmx.Close;
  sp_cx_yz_xmzhmx.Parameters.ParamByName('@xmdm').Value := txmdm;
  sp_cx_yz_xmzhmx.Open;
  if sp_cx_yz_xmzhmx.RecordCount = 0 then
  begin
    xminyz;
    exit;
  end else
  begin
    sp_cx_yz_xmzhmx.First;
    i := 0;
    while not sp_cx_yz_xmzhmx.Eof do
    begin
      if i = 0 then
        qry_yz.Edit else qry_yz.Append;
      i := 1;
      qry_yz.FieldByName('yzsx').AsString;
     // qry_yz.Edit;
      if trim(tmh) = '' then
      begin
        tmh := sp_jbxx.FieldByName('tmh').AsString;
      end;
      qry_yz.FieldByName('yzsx').AsString;
      qry_yz.FieldByName('tmh').AsString := tmh;
      qry_yz.FieldByName('zyh').AsString := zyh;
      qry_yz.FieldByName('zhdm').AsString := txmdm;
      if yzlb = '����' then
      begin
        qry_yz.FieldByName('xmdm').AsString := '����';
        qry_yz.FieldByName('xmmc').AsString := grid_yzlr.Columns[2].DisplayText;
        qry_yz.FieldByName('dw').AsString := '';
        qry_yz.FieldByName('kdks').AsString := yz_kdks;
        qry_yz.FieldByName('kdrq').AsDateTime := frm_func.curr_date;
        qry_yz.FieldByName('kdys').AsString := pub_czydm;
        qry_yz.FieldByName('yplsj').AsFloat := 0;
        //qry_yz.FieldByName( 'sl' ).AsString := '0';
        qry_yz.FieldByName('czks').value := yz_kdks;
        qry_xmyz.insert;
        qry_xmyz.FieldByName('xmdm').AsString := '����';
        qry_xmyz.FieldByName('xmmc').AsString := grid_yzlr.Columns[2].DisplayText;
        qry_xmyz.FieldByName('lb').AsString := qry_yz.FieldByName('lb').AsString;
        qry_yz.FieldByName('kdys').AsString := pub_czydm;
        qry_xmyz.post;
        qry_yz.FieldByName('yzsx').AsString;
        //calmhawk---
        if qry_yz.FieldByName('xh').AsString = '' then
        begin
          qry_yz.FieldByName('xh').Asinteger := maxxh + 1;
          maxxh := maxxh + 1;
        end;
        recno := ScrollBox4.VertScrollBar.Position;
        grid_yzlr.SetFocus;
        ScrollBox4.VertScrollBar.Position := recno;
        grid_yzlr.SelectedIndex := 7;
      end
      else
      begin
        qry_yz.FieldByName('xmdm').AsString :=  sp_cx_yz_xmzhmx.FieldByName('xmdm').AsString;
         // sp_cx_yp_yz.FieldByName('xmdm').AsString;
        qry_yz.FieldByName('xmmc').AsString :=   sp_cx_yz_xmzhmx.FieldByName('xmmc').AsString;
         // sp_cx_yp_yz.FieldByName('xmmc').AsString;
        qry_yz.FieldByName('dw').AsString := sp_cx_yz_xmzhmx.FieldByName('dw').AsString;
        ;//sp_cx_yp_yz.FieldByName('dw').AsString;
        qry_yz.FieldByName('kdks').AsString := yz_kdks;
        qry_yz.FieldByName('kdrq').AsDateTime := frm_func.curr_date;
        qry_yz.FieldByName('kdys').AsString := pub_czydm;
        qry_yz.FieldByName('yplsj').AsFloat :=  sp_cx_yz_xmzhmx.FieldByName('zylsj').AsFloat ;
         // sp_cx_yp_yz.FieldByName('zylsj').AsFloat;
        qry_yz.FieldByName('jyyb').AsString := sp_cx_yz_xmzhmx.FieldByName('yb').AsString ;
         // sp_cx_yp_yz.FieldByName('yb').asstring;

        qry_yz.FieldByName('sl').AsFloat := 1;
        qry_yz.FieldByName('jyflbh').AsString :=  sp_cx_yz_xmzhmx.FieldByName('dldm').AsString ;
         // sp_cx_yp_yz.FieldByName('dldm').AsString;

        //calmhawk---
        if qry_yz.FieldByName('xh').AsString = '' then
        begin
          qry_yz.FieldByName('xh').Asinteger := maxxh + 1;
          maxxh := maxxh + 1;
        end;

        if trim(sp_cx_yp_yz.fieldbyname('zyks').asstring) <> '' then
          zy_czks := sp_cx_yz_xmzhmx.FieldByName('zyks').AsString //sp_cx_yp_yz.FieldByName('zyks').AsString
        else
          zy_czks := yz_kdks;
        qry_yz.FieldByName('czks').AsString := zy_czks;
        qry_xmyz.insert;
        qry_xmyz.FieldByName('xmdm').AsString :=  sp_cx_yz_xmzhmx.FieldByName('xmdm').AsString; ;
         // sp_cx_yp_yz.FieldByName('xmdm').AsString;
        qry_xmyz.FieldByName('xmmc').AsString :=   sp_cx_yz_xmzhmx.FieldByName('xmmc').AsString; ;
         // sp_cx_yp_yz.FieldByName('xmmc').AsString;
        qry_xmyz.FieldByName('lb').AsString := qry_yz.FieldByName('lb').AsString;
        qry_xmyz.post;
        recno := ScrollBox4.VertScrollBar.Position;
        grid_yzlr.SetFocus;
        ScrollBox4.VertScrollBar.Position := recno;
        if (qry_yz.FieldByName('lb').AsString = '����') or
          (qry_yz.FieldByName('lb').AsString = '����') or
          (qry_yz.FieldByName('lb').AsString = '���') then
          grid_yzlr.SelectedIndex := 5
        else
          grid_yzlr.SelectedIndex := 7;
      end;
      sp_cx_yz_xmzhmx.Next;
    end;
  end;
end;
//---------------------ҩƷ���뵽ҽ�����溯��--------------------------------------------
procedure Tfrm_yzinput.ypinyz;
var
  ypxx: string;
begin
  //ҩƷ��Ϣд��ҽ��
  DM_data.qry_pub.close;
  DM_data.qry_pub.sql.Text := 'select * from sys_ypfjxx where ypdm=' + '''' +
    sp_cx_yp_yz.FieldByName('ypdm').asstring + '''' + ' and �����ɹ�=1';
  try
    DM_data.qry_pub.open;
  except

  end;
  if not DM_data.qry_pub.IsEmpty then
  begin
    Application.MessageBox('���ҩƷ�������ɹ�ҩƷ��Ҫ����ʹ�ã�', '��ʾ',
      MB_OK + MB_ICONINFORMATION);
  end;
  ypxx := '';
  qry_yz.edit;
  qry_yz.FieldByName('tmh').AsString := tmh;
  qry_yz.FieldByName('zyh').AsString := zyh;
  qry_yz.FieldByName('xmdm').AsString :=
    sp_cx_yp_yz.FieldByName('ypdm').AsString;
  qry_yz.FieldByName('xmmc').AsString :=
    trim(sp_cx_yp_yz.FieldByName('ypmc').AsString);
  qry_yz.FieldByName('dw').AsString :=
    trim(sp_cx_yp_yz.FieldByName('zyyfdw').AsString);
  qry_yz.FieldByName('sl').value := 1;
  qry_yz.FieldByName('ypdwid').AsInteger :=
    sp_cx_yp_yz.FieldByName('zydwid').AsInteger;
  qry_yz.FieldByName('ypbzbl').AsInteger :=
    sp_cx_yp_yz.FieldByName('zyyfzhl').AsInteger;
  qry_yz.FieldByName('yplsj').AsFloat :=
    sp_cx_yp_yz.FieldByName('zylsj').AsFloat;
  qry_yz.FieldByName('ypcgj').AsFloat :=
    sp_cx_yp_yz.FieldByName('zypfj').AsFloat;
  qry_yz.FieldByName('yldw').AsString :=
    trim(sp_cx_yp_yz.FieldByName('yzyldw').AsString);
  qry_yz.FieldByName('kdks').AsString := yz_kdks;
  qry_yz.FieldByName('kdrq').AsDateTime := frm_func.curr_date;
  qry_yz.FieldByName('kdys').AsString := pub_czydm;

  //calmhawk---
  if qry_yz.FieldByName('xh').AsString = '' then
  begin
    qry_yz.FieldByName('xh').Asinteger := maxxh + 1;
    maxxh := maxxh + 1;
  end;

  if (isbqkf) and (yzlb = '����') then
  begin
    qry_yz.FieldByName('czks').AsString := yz_kdks;
  end
  else
  begin
    if (yzlb = 'ҩƷ') or (yzlb = 'ҩһ') then
      qry_yz.FieldByName('czks').AsString := pub_zyxyfdm
    else if (yzlb = '��ҩ') then
      qry_yz.FieldByName('czks').AsString := prv_cyfdm
    else
      qry_yz.FieldByName('czks').AsString := prv_zyfdm;
  end;
  qry_yz.FieldByName('gg').AsString := sp_cx_yp_yz.FieldByName('ypgg').AsString;

  if Pos('��', sp_cx_yp_yz.FieldByName('ypsm').asstring) > 0 then
  begin
    ypxx := '��';
  end
  else if Pos('��', sp_cx_yp_yz.FieldByName('ypsm').asstring) > 0 then
  begin
    ypxx := '��';
  end;
  if Pos('ũ��', sp_cx_yp_yz.FieldByName('ypsm').asstring) > 0 then
  begin
    ypxx := ypxx + 'ũ';
  end;
  if Pos('��', sp_cx_yp_yz.FieldByName('ypsm').asstring) > 0 then
  begin
    ypxx := ypxx + '��';
  end;
  if Pos('��', sp_cx_yp_yz.FieldByName('ypsm').asstring) > 0 then
  begin
    ypxx := ypxx + '��';
  end;
  qry_yz.FieldByName('yplb').AsString := ypxx;
  if sp_cx_yp_yz.fieldbyname('sfdmyp').asboolean then
    qry_yz.FieldByName('yplb').AsString := '����ҩƷ';
  qry_xmyz.insert;
  qry_xmyz.FieldByName('xmdm').AsString :=
    sp_cx_yp_yz.FieldByName('ypdm').AsString;
  qry_xmyz.FieldByName('xmmc').AsString :=
    trim(sp_cx_yp_yz.FieldByName('ypmc').AsString);
  qry_xmyz.FieldByName('lb').AsString := qry_yz.FieldByName('lb').AsString;
  qry_xmyz.post;
  if (pub_yydm = '0012') and (xyfBeforeChange <> '') then
  begin
    pub_zyxyfdm := xyfBeforeChange;
    xyfBeforeChange := '';
  end;
end;

procedure Tfrm_yzinput.refresh_show;
var
  ls_sql: string;
begin
  ls_sql :=
    'select * from zybl_zyyz where jcff is null and zyh=:cxzyh and zxbz=0 and tzbz =0 order by xh';
  if lcljms then
    ls_sql := 'select * from lclj_tmp_yzmb where zyh=:cxzyh order by xh';
  qry_yz.Close;
  qry_yz.SQL.Clear;
  qry_yz.SQL.Text := ls_sql;
  qry_yz.Parameters.ParamValues['cxzyh'] := zyh;
  try
    qry_yz.Open;
  except

  end;

  //----------------------------------------------------
  qry_xmyz.Close;
  qry_xmyz.Open;
  frm_yzinput.qry_yz.First;
  while not frm_yzinput.qry_yz.Eof do
  begin
    qry_xmyz.Insert;
    qry_xmyz.FieldByName('xmdm').Value := qry_yz.FieldByName('xmdm').AsString;
    qry_xmyz.FieldByName('xmmc').Value := qry_yz.FieldByName('xmmc').AsString;
    qry_xmyz.FieldByName('lb').AsString := qry_yz.FieldByName('lb').AsString;
    qry_xmyz.Post;
    frm_yzinput.qry_yz.Next;
  end;
  //--------------------------------------------------
  frm_yzinput.qry_yz.Append;
end;

procedure Tfrm_yzinput.refresh_yz;
var
  ls_sql, ljid, dqrq, mrrq: string;
  BBH: Integer;
  Frm_LCLJSJ: Tfrm_LCLJSJ;
begin
  ls_sql :=
    'select * from zybl_zyyz where jcff is null and zyh=:cxzyh and zxbz=0 and tzbz =0 order by xh';
  if lcljms then
    ls_sql := 'select * from lclj_tmp_yzmb where zyh=:cxzyh order by xh';
  qry_yz.Close;
  qry_yz.SQL.Clear;
  qry_yz.SQL.Text := ls_sql;
  qry_yz.Parameters.ParamValues['cxzyh'] := zyh;
  qry_yz.Open;

  //----------------------------------------------------
  qry_xmyz.Close;
  qry_xmyz.Open;
  frm_yzinput.qry_yz.First;
  while not frm_yzinput.qry_yz.Eof do
  begin
    qry_xmyz.Insert;
    qry_xmyz.FieldByName('xmdm').Value := qry_yz.FieldByName('xmdm').AsString;
    qry_xmyz.FieldByName('xmmc').Value := qry_yz.FieldByName('xmmc').AsString;
    qry_xmyz.FieldByName('lb').AsString := qry_yz.FieldByName('lb').AsString;
    qry_xmyz.Post;
    frm_yzinput.qry_yz.Next;
  end;
  //--------------------------------------------------
  frm_yzinput.qry_yz.Append;
  sp_dryz.Close;
  sp_dryz.Parameters.ParamByName('@zyh').Value := zyh;
  sp_dryz.Parameters.ParamByName('@yzsx').Value := 'ȫ��';
  sp_dryz.Open;
  //  DM_data.qry_pub.Close;
  //  DM_data.qry_pub.sql.text:='select * from LCLJ_brlclj where zt=1 and zyh='+''''+zyh+'''';
  //  DM_data.qry_pub.Open;
  //  if not DM_data.qry_pub.IsEmpty then
  //  begin
  //    dqrq:=FormatDateTime('yyyyMMdd',Frm_func.curr_date);
  //    mrrq:=FormatDateTime('yyyyMMdd',Frm_func.curr_date+1);
  //    ljid:=DM_data.qry_pub.FieldByName('ljid').asstring;
  //    bbh:= DM_data.qry_pub.FieldByName('bbh').AsInteger;
  //    Frm_LCLJSJ := TFrm_LCLJSJ.Create(Application);
  //    Frm_LCLJSJ.ShowMXData_rq(ljid, BBH,frm_yzinput.cxGrid1BandedTableView1,mrrq,zyh,frm_yzinput);
  //  end;
end;

procedure Tfrm_yzinput.refresh_yz_lclj;
var
  ls_sql, ljid, dqrq, mrrq: string;
  BBH: Integer;
  Frm_LCLJSJ: Tfrm_LCLJSJ;
begin
  ls_sql :=
    'select * from zybl_zyyz where jcff is null and zyh=:cxzyh and zxbz=0 and tzbz =0 order by xh';
  if lcljms then
    ls_sql := 'select * from lclj_tmp_yzmb where zyh=:cxzyh order by xh';
  qry_yz.Close;
  qry_yz.SQL.Clear;
  qry_yz.SQL.Text := ls_sql;
  qry_yz.Parameters.ParamValues['cxzyh'] := zyh;
  qry_yz.Open;

  //----------------------------------------------------
  qry_xmyz.Close;
  qry_xmyz.Open;
  frm_yzinput.qry_yz.First;
  while not frm_yzinput.qry_yz.Eof do
  begin
    qry_xmyz.Insert;
    qry_xmyz.FieldByName('xmdm').Value := qry_yz.FieldByName('xmdm').AsString;
    qry_xmyz.FieldByName('xmmc').Value := qry_yz.FieldByName('xmmc').AsString;
    qry_xmyz.FieldByName('lb').AsString := qry_yz.FieldByName('lb').AsString;
    qry_xmyz.Post;
    frm_yzinput.qry_yz.Next;
  end;
  //--------------------------------------------------
  frm_yzinput.qry_yz.Append;
  sp_dryz.Close;
  sp_dryz.Parameters.ParamByName('@zyh').Value := zyh;
  sp_dryz.Parameters.ParamByName('@yzsx').Value := 'ȫ��';
  sp_dryz.Open;
  DM_data.qry_pub.Close;
  DM_data.qry_pub.sql.text := 'select * from LCLJ_brlclj where zt=1 and zyh=' +
    '''' + zyh + '''';
  try
    DM_data.qry_pub.open;
  except

  end;
  if not DM_data.qry_pub.IsEmpty then
  begin
    dqrq := FormatDateTime('yyyyMMdd', Frm_func.curr_date);
    mrrq := FormatDateTime('yyyyMMdd', Frm_func.curr_date + 1);
    ljid := DM_data.qry_pub.FieldByName('ljid').asstring;
    bbh := DM_data.qry_pub.FieldByName('bbh').AsInteger;
    Frm_LCLJSJ := TFrm_LCLJSJ.Create(Application);
    Frm_LCLJSJ.ShowMXData_rq(ljid, BBH, frm_yzinput.cxGrid1BandedTableView1,
      mrrq, zyh, frm_yzinput);
  end;
end;

procedure Tfrm_yzinput.BBtn_print_cqClick(Sender: TObject);
begin
  with sp_zxjl_cq_dy do
  begin
    Close;
    Parameters.ParamByName('@zyh').Value := sp_jbxx.FieldByName('zyh').AsString;
    Parameters.ParamByName('@fs').Value := 0;
    Open;
  end;
  sp_zxjl_cq_dy.first;
  QRL_yymc_cq.Caption := pub_yymc + '����ҽ����¼��';
  QRL_brxm_cq.Caption := '��������:' + sp_jbxx.FieldByName('brxm').AsString;
  QRL_tmh_cq.Caption := 'סԺ��:' + sp_jbxx.FieldByName('tmh').AsString;
  QRL_bch_cq.Caption := '������:' + sp_jbxx.FieldByName('bch').AsString;
  xb_cq.Caption := '�Ա�:' + trim(sp_jbxx.FieldByName('brxb').AsString);
  nl_cq.Caption := '����:' + trim(sp_jbxx.FieldByName('brnl').AsString);
  zd_cq.Caption := '���:' + trim(sp_jbxx.FieldByName('ryzd').AsString);
  QRL_dysj_cq.Caption := '��ӡʱ��:' + FormatDatetime('yyyy��mm��dd��',
    frm_func.curr_date);
  sj1.caption := '����' + #13 + 'ʱ��';
  sj2.caption := 'ִ��' + #13 + 'ʱ��';
  sj3.caption := '����' + #13 + 'ʱ��';
  sj4.caption := 'ִ��' + #13 + 'ʱ��';

  QuickRep1.Prepare;
  paper_size := 0;
  QRL_ys_cq.Caption := '��' + IntToStr(QuickRep1.Printer.PageCount) + 'ҳ';
  QuickRep1.preview;
end;

procedure Tfrm_yzinput.BBtn_print_lsClick(Sender: TObject);
begin
  with sp_zxjl_ls_dy do
  begin
    Close;
    Parameters.ParamByName('@zyh').Value := sp_jbxx.FieldByName('zyh').AsString;
    Parameters.ParamByName('@fs').Value := 1;
    Open;
  end;
  sp_zxjl_ls_dy.first;
  QRL_yymc_ls.Caption := pub_yymc + '��ʱҽ����¼��';
  QRL_brxm_ls.Caption := '��������:' +
    trim(sp_jbxx.FieldByName('brxm').AsString);
  QRL_tmh_ls.Caption := 'סԺ��:' + trim(sp_jbxx.FieldByName('tmh').AsString);
  QRL_bch_ls.Caption := '������:' + trim(sp_jbxx.FieldByName('bch').AsString);
  xb_ls.Caption := '�Ա�:' + trim(sp_jbxx.FieldByName('brxb').AsString);
  nl_ls.Caption := '����:' + trim(sp_jbxx.FieldByName('brnl').AsString);
  zd_ls.Caption := '���:' + trim(sp_jbxx.FieldByName('ryzd').AsString);

  QRL_dysj_ls.Caption := '��ӡʱ��:' + FormatDatetime('yyyy��mm��dd��',
    frm_func.curr_date);
  QuickRep2.Prepare;
  paper_size := 0;
  QRL_ys_ls.Caption := '��' + IntToStr(QuickRep2.Printer.PageCount) + 'ҳ';
  QuickRep2.Preview;
end;

procedure Tfrm_yzinput.BitBtn18Click(Sender: TObject);
var
  i, y, j, count: Integer;
  aControl: TControl;
begin
  with sp_zxjl_cq_dy do
  begin
    Filtered := False;
    Close;
    Parameters.ParamByName('@zyh').Value :=
      Trim(sp_jbxx.fieldbyname('zyh').asstring);
    Parameters.ParamByName('@fs').Value := 1;
    Open;
  end;
  //sp_zxjl_cq_dy.Filtered := False;
  sp_zxjl_cq_dy.Filter := '(yytj=''��ע''  and kdrq>=' + '''' +
    formatdatetime('yy-MM-dd', frm_func.curr_date) + ' 00:00' + ''')';
  sp_zxjl_cq_dy.filter := sp_zxjl_cq_dy.filter + ' or ' +
    '(yytj=''��ע'' and   kdrq>=' + '''' + formatdatetime('yy-MM-dd',
    frm_func.curr_date) + ' 00:00' + ''')';
  sp_zxjl_cq_dy.filter := sp_zxjl_cq_dy.filter + ' or ' +
    '(yytj=''Ƥ��'' and  kdrq>=' + '''' + formatdatetime('yy-MM-dd',
    frm_func.curr_date) + ' 00:00' + ''')';
  sp_zxjl_cq_dy.filter := sp_zxjl_cq_dy.filter + ' or ' +
    '(yytj=''����ע��'' and kdrq>=' + '''' + formatdatetime('yy-MM-dd',
    frm_func.curr_date) + ' 00:00' + ''')';
  sp_zxjl_cq_dy.filter := sp_zxjl_cq_dy.filter + ' or ' +
    '(yytj=''Ѩע'' and  kdrq>=' + '''' + formatdatetime('yy-MM-dd',
    frm_func.curr_date) + ' 00:00' + ''')';

  sp_zxjl_cq_dy.Filtered := True;

  if not sp_zxjl_cq_dy.IsEmpty then
  begin
    sp_zxjl_cq_dy.First;
    if sp_zxjl_cq_dy.RecordCount mod 9 <> 0 then
      y := trunc(sp_zxjl_cq_dy.RecordCount / 9) + 1
    else
      y := trunc(sp_zxjl_cq_dy.RecordCount / 9);
    count := sp_zxjl_cq_dy.RecordCount;
    for I := 1 to y do
    begin
      for j := 1 to 9 do
      begin
        if count < i * 9 then
        begin
          if j > (9 - (y * 9 - count)) then
          begin
            aControl := QRBand10.FindChildControl('ksrqls' + IntToStr(j - 1));
            if aControl is TQRLabel then
              TQRLabel(aControl).Caption := '';
            aControl := QRBand10.FindChildControl('kdysmcls' + IntToStr(j - 1));
            if aControl is TQRLabel then
              TQRLabel(aControl).Caption := '';
            QRBand10.FindChildControl('QRImagels_' + IntToStr(j)).enabled :=
              false;
            //TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel(QRBand10.FindChildControl('ypyfls_' + IntToStr(j -
              1))).Caption := '';
            TQRLabel(QRBand10.FindChildControl('xmmcls_' + IntToStr(j -
              1))).caption := '';
          end
          else
          begin
            aControl := QRBand10.FindChildControl('ksrqls' + IntToStr(j - 1));
            if aControl is TQRLabel then
              TQRLabel(aControl).Caption :=
                sp_zxjl_cq_dy.FieldByName('ksrq').AsString;
            aControl := QRBand10.FindChildControl('kdysmcls' + IntToStr(j - 1));
            if aControl is TQRLabel then
              TQRLabel(aControl).Caption :=
                sp_zxjl_cq_dy.FieldByName('kdysmc').asstring;
            if sp_zxjl_cq_dy.FieldByName('fzph').asstring <> '' then
            begin
              QRBand10.FindChildControl('QRImagels_' + IntToStr(j)).enabled :=
                true;
              QRBand10.FindChildControl('QRImagels_' + IntToStr(j)).Top :=
                TQRLabel(QRBand10.FindChildControl('xmmcls_' + IntToStr(j -
                1))).top;
              QRBand10.FindChildControl('QRImagels_' + IntToStr(j)).left :=
                QRBand10.FindChildControl('ypyfls_' + IntToStr(j - 1)).left -
                20;
              QRBand10.FindChildControl('QRImagels_' + IntToStr(j)).height :=
                30;
              TQRLabel(QRBand10.FindChildControl('ypyfls_' + IntToStr(j -
                1))).Caption := trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring)
                +
                '  ' + trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
              TQRLabel(QRBand10.FindChildControl('xmmcls_' + IntToStr(j -
                1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring;
            end
            else
            begin
              QRBand10.FindChildControl('QRImagels_' + IntToStr(j)).enabled :=
                false;
              QRBand10.FindChildControl('xmmcls_' + IntToStr(j - 1)).Width :=
                235;
              TQRLabel(QRBand10.FindChildControl('ypyfls_' + IntToStr(j -
                1))).Caption := '';
              TQRLabel(QRBand10.FindChildControl('xmmcls_' + IntToStr(j -
                1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring + ' '
                +
                trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring) + ' ' +
                trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
            end;
            sp_zxjl_cq_dy.Next;
          end;
        end
        else
        begin
          aControl := QRBand10.FindChildControl('ksrqls' + IntToStr(j - 1));
          if aControl is TQRLabel then
            TQRLabel(aControl).Caption :=
              sp_zxjl_cq_dy.FieldByName('ksrq').asstring;
          aControl := QRBand10.FindChildControl('kdysmcls' + IntToStr(j - 1));
          if aControl is TQRLabel then
            TQRLabel(aControl).Caption :=
              sp_zxjl_cq_dy.FieldByName('kdysmc').asstring;
          if sp_zxjl_cq_dy.FieldByName('fzph').asstring <> '' then
          begin
            QRBand10.FindChildControl('QRImagels_' + IntToStr(j)).enabled :=
              true;
            QRBand10.FindChildControl('QRImagels_' + IntToStr(j)).Top :=
              TQRLabel(QRBand10.FindChildControl('xmmcls_' + IntToStr(j -
              1))).top;
            QRBand10.FindChildControl('QRImagels_' + IntToStr(j)).left :=
              QRBand10.FindChildControl('ypyfls_' + IntToStr(j - 1)).left - 20;
            QRBand10.FindChildControl('QRImagels_' + IntToStr(j)).height := 30;
            TQRLabel(QRBand10.FindChildControl('ypyfls_' + IntToStr(j -
              1))).Caption := trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring) +
              '  ' + trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
            TQRLabel(QRBand10.FindChildControl('xmmcls_' + IntToStr(j -
              1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring;
          end
          else
          begin
            QRBand10.FindChildControl('QRImagels_' + IntToStr(j)).enabled :=
              false;
            QRBand10.FindChildControl('xmmcls_' + IntToStr(j - 1)).Width := 235;
            TQRLabel(QRBand10.FindChildControl('ypyfls_' + IntToStr(j -
              1))).Caption := '';
            TQRLabel(QRBand10.FindChildControl('xmmcls_' + IntToStr(j -
              1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring + ' ' +
              trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring) + ' ' +
              trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
          end;
          sp_zxjl_cq_dy.Next;
        end;
      end;
      DM_data.qry_pub.Close;
      DM_data.qry_pub.SQL.text := 'select * from sys_kscwsz where bqdm=' + ''''
        + pub_bqdm + '''' + ' and bcbh=' + '''' +
        trim(sp_jbxx.fieldbyname('bch').asstring) + '''';
      try
        DM_data.qry_pub.open;
      except

      end;
      QRLabel45.Caption := pub_yymc + '��ʱע��ƻ�ִ�е�';
      QRLabel46.Caption := '����:' + sp_jbxx.fieldbyname('brxm').asstring;
      QRLabel50.Caption := '������:' +
        Trim(DM_data.qry_pub.FieldByName('yybch').asstring);
      QRLabel51.Caption := '�Ա�:' + sp_jbxx.fieldbyname('brxb').asstring;
      QRLabel52.Caption := '����:' + trim(sp_jbxx.fieldbyname('brnl').asstring);
      QRLabel53.Caption := FormatDateTime('yyyy', frm_func.curr_date) + '��';
      QRLabel67.Caption := '����:' + sp_jbxx.fieldbyname('brxm').asstring +
        '      ' +
        '������:' + Trim(DM_data.qry_pub.FieldByName('yybch').asstring) +
        '      ' +
        '�Ա�:' + sp_jbxx.fieldbyname('brxb').asstring + '      ' +
        '����:' + trim(sp_jbxx.fieldbyname('brnl').asstring);
      //QuickRep3.Prepare;
      QRLabel58.Caption := '���ҽ����';
      QuickRep5.Preview;
    end;
  end;
end;
// ����ҽ��
procedure Tfrm_yzinput.BitBtn1Click(Sender: TObject);
begin
  Application.OnMessage := nil;
  if pub_yydm = '0240' then   //�ж�ҽԺ��ɳ����0240
  begin
    Application.CreateForm(Tfrm_cqyzxd, frm_cqyzxd);
    try
      frm_cqyzxd.QRBand3.Visible:=false;
      frm_cqyzxd.ShowModal;
    finally
    frm_cqyzxd.Free;
    end;
  end else
  begin
    try
      application.createform(Tfrm_cqyzxzdy, frm_cqyzxzdy);
      p_cqyzxzdy.v_zyh := sp_jbxx.FieldByName('zyh').asstring;
      p_cqyzxzdy.v_brxm := sp_jbxx.FieldByName('brxm').asstring;
      p_cqyzxzdy.v_bch := sp_jbxx.FieldByName('bch').asstring;
      p_cqyzxzdy.v_brxb := sp_jbxx.FieldByName('brxb').asstring;
      p_cqyzxzdy.v_brnl := sp_jbxx.FieldByName('brnl').asstring;
      p_cqyzxzdy.v_ryzd := sp_jbxx.FieldByName('ryzd').asstring;
      p_cqyzxzdy.v_tmh := sp_jbxx.FieldByName('tmh').asstring;
      p_cqyzxzdy.v_bah := sp_jbxx.FieldByName('bah').asstring;
      p_cqyzxzdy.sfxse := '';
      frm_cqyzxzdy.showmodal;
    finally
      frm_cqyzxzdy.free;
    end;
  end;
end;
//��ʱҽ��
procedure Tfrm_yzinput.btn3Click(Sender: TObject);
begin
  Application.OnMessage := nil;
  if pub_yydm = '0240' then   //�ж�ҽԺ��ɳ����
  begin
    Application.CreateForm(Tfrm_lsyzxd, frm_lsyzxd);
    try
      frm_lsyzxd.QRBand3.Visible:=false;
      frm_lsyzxd.ShowModal;
    finally
      frm_lsyzxd.Free;
    end;
  end else
  begin
    try
      application.createform(Tfrm_lsyzxzdy, frm_lsyzxzdy);
      p_lsyzxzdy.v_zyh := sp_jbxx.FieldByName('zyh').asstring;
      p_lsyzxzdy.v_brxm := sp_jbxx.FieldByName('brxm').asstring;
      p_lsyzxzdy.v_bch := sp_jbxx.FieldByName('bch').asstring;
      p_lsyzxzdy.v_brxb := sp_jbxx.FieldByName('brxb').asstring;
      p_lsyzxzdy.v_brnl := sp_jbxx.FieldByName('brnl').asstring;
      p_lsyzxzdy.v_ryzd := sp_jbxx.FieldByName('ryzd').asstring;
      p_lsyzxzdy.v_tmh := sp_jbxx.FieldByName('tmh').asstring;
      p_lsyzxzdy.v_bah := sp_jbxx.FieldByName('bah').asstring;
      p_lsyzxzdy.sfxse := '';
      frm_lsyzxzdy.showmodal;
    finally
      frm_lsyzxzdy.free;
    end;
  end;

end;

procedure Tfrm_yzinput.BitBtn3Click(Sender: TObject);
var
  i, y, j, count, x: Integer;
  aControl: TControl;
  v_yytj, v_lb, filter: string;
begin
  with sp_zxjl_cq_dy do
  begin
    Filtered := False;
    Close;
    Parameters.ParamByName('@zyh').Value :=
      Trim(sp_jbxx.fieldbyname('zyh').asstring);
    Parameters.ParamByName('@fs').Value := 0;
    Open;
  end;
  DM_data.qry_pub.close;
  DM_data.qry_pub.sql.text :=
    'select yytj from zybl_zyyz_dytjsz where dyxm=''��Һ�ƻ���''';
  try
    DM_data.qry_pub.open;
  except

  end;
  if DM_data.qry_pub.IsEmpty then
  begin
    v_yytj := '';
  end
  else
  begin
    DM_data.qry_pub.First;
    while not DM_data.qry_pub.eof do
    begin
     if pub_yydm<>'0260' then
      begin
      v_yytj := v_yytj + '(yytj=' + '''' +
        DM_data.qry_pub.FieldByName('yytj').asstring + '''' + ' and  tzrq=null )'+' or ';
      end
      else
      begin
      v_yytj := v_yytj + '(yytj=' + '''' +
        DM_data.qry_pub.FieldByName('yytj').asstring + ''' )'+' or ';
      end;

      DM_data.qry_pub.Next;
    end;

  end;

  DM_data.qry_pub.close;
  DM_data.qry_pub.sql.text :=
    'select lbmc from zybl_zyyz_dylbsz where dyxm=''��Һ�ƻ���''';
  try
    DM_data.qry_pub.open;
  except

  end;
  if DM_data.qry_pub.IsEmpty then
  begin
    v_lb := '';
  end
  else
  begin
    DM_data.qry_pub.First;
    while not DM_data.qry_pub.eof do
    begin
      v_lb := v_lb + '(lb=' + '''' + DM_data.qry_pub.FieldByName('lbmc').asstring
        + '''' + ' and  tzrq=null ) ' + ' or ';
      DM_data.qry_pub.Next;
    end;

  end;

  if v_yytj + v_lb = '' then
  begin
    filter := ' 1<>1 ';
  end
  else
  begin
    filter := v_yytj + v_lb + ' ( yytj=''�������'' )';
  end;

  sp_zxjl_cq_dy.Filter := filter;
  sp_zxjl_cq_dy.Filtered := True;
  if sp_zxjl_cq_dy.IsEmpty then
  begin
    Application.MessageBox('û�м�¼��', '��ʾ', 0 + 48);
    Exit;
  end;
  if not sp_zxjl_cq_dy.IsEmpty then
  begin
    if zzdx = 'A4' then
    begin
      sp_zxjl_cq_dy.First;
      if sp_zxjl_cq_dy.RecordCount mod 5 <> 0 then
        y := trunc(sp_zxjl_cq_dy.RecordCount / 5) + 1
      else
        y := trunc(sp_zxjl_cq_dy.RecordCount / 5);
      count := sp_zxjl_cq_dy.RecordCount;
      for I := 1 to y do
      begin
        for j := 1 to 5 do
        begin
          if count < i * 5 then
          begin
            if j > (5 - (y * 5 - count)) then
            begin
              aControl := DetailBand1.FindChildControl('ksrq' + IntToStr(j -
                1));
              if aControl is TQRLabel then
                TQRLabel(aControl).Caption := '';
              aControl := DetailBand1.FindChildControl('kdysmc' + IntToStr(j -
                1));
              if aControl is TQRLabel then
                TQRLabel(aControl).Caption := '';
              DetailBand1.FindChildControl('qrgrimage' + IntToStr(j)).enabled :=
                false;
              //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
              TQRLabel(DetailBand1.FindChildControl('ypyf' + IntToStr(j -
                1))).Caption := '';
              //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
              TQRLabel(DetailBand1.FindChildControl('xmmc' + IntToStr(j -
                1))).caption := '';
            end
            else
            begin
              aControl := DetailBand1.FindChildControl('ksrq' + IntToStr(j -
                1));
              if aControl is TQRLabel then
                TQRLabel(aControl).Caption :=
                  sp_zxjl_cq_dy.FieldByName('ksrq').AsString;
              aControl := DetailBand1.FindChildControl('kdysmc' + IntToStr(j -
                1));
              if aControl is TQRLabel then
                TQRLabel(aControl).Caption :=
                  sp_zxjl_cq_dy.FieldByName('kdysmc').asstring;
              if sp_zxjl_cq_dy.FieldByName('fzph').asstring <> '' then
              begin
                DetailBand1.FindChildControl('QRgrImage' + IntToStr(j)).enabled
                  := true;
                DetailBand1.FindChildControl('QRgrImage' + IntToStr(j)).Top :=
                  TQRLabel(DetailBand1.FindChildControl('xmmc' + IntToStr(j -
                  1))).top;
                DetailBand1.FindChildControl('QRgrImage' + IntToStr(j)).left :=
                  DetailBand1.FindChildControl('ypyf' + IntToStr(j - 1)).left -
                  20;
                DetailBand1.FindChildControl('qrgrimage' + IntToStr(j)).height
                  := 30;
                TQRLabel(DetailBand1.FindChildControl('ypyf' + IntToStr(j -
                  1))).Caption :=
                  trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring)
                  + '  ' + trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
                TQRLabel(DetailBand1.FindChildControl('xmmc' + IntToStr(j -
                  1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring;
                //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
              end
              else
              begin
                DetailBand1.FindChildControl('qrgrimage' + IntToStr(j)).enabled
                  := false;
                DetailBand1.FindChildControl('xmmc' + IntToStr(j - 1)).Width :=
                  235;
                TQRLabel(DetailBand1.FindChildControl('ypyf' + IntToStr(j -
                  1))).Caption := '';
                TQRLabel(DetailBand1.FindChildControl('xmmc' + IntToStr(j -
                  1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring +
                  ' '
                  + trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring) + ' ' +
                  trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
                // TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
              end;
              sp_zxjl_cq_dy.Next;
            end;
          end
          else
          begin
            aControl := DetailBand1.FindChildControl('ksrq' + IntToStr(j - 1));
            if aControl is TQRLabel then
              TQRLabel(aControl).Caption :=
                sp_zxjl_cq_dy.FieldByName('ksrq').asstring;
            aControl := DetailBand1.FindChildControl('kdysmc' + IntToStr(j -
              1));
            if aControl is TQRLabel then
              TQRLabel(aControl).Caption :=
                sp_zxjl_cq_dy.FieldByName('kdysmc').asstring;
            if sp_zxjl_cq_dy.FieldByName('fzph').asstring <> '' then
            begin
              DetailBand1.FindChildControl('QRgrImage' + IntToStr(j)).enabled :=
                true;
              DetailBand1.FindChildControl('QRgrImage' + IntToStr(j)).Top :=
                TQRLabel(DetailBand1.FindChildControl('xmmc' + IntToStr(j -
                1))).top;
              DetailBand1.FindChildControl('qrgrimage' + IntToStr(j)).left :=
                DetailBand1.FindChildControl('ypyf' + IntToStr(j - 1)).left -
                20;
              DetailBand1.FindChildControl('qrgrimage' + IntToStr(j)).height :=
                30;
              TQRLabel(DetailBand1.FindChildControl('ypyf' + IntToStr(j -
                1))).Caption := trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring)
                +
                '  ' + trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
              TQRLabel(DetailBand1.FindChildControl('xmmc' + IntToStr(j -
                1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring;
              //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end
            else
            begin
              DetailBand1.FindChildControl('qrgrimage' + IntToStr(j)).enabled :=
                false;
              DetailBand1.FindChildControl('xmmc' + IntToStr(j - 1)).Width :=
                235;
              TQRLabel(DetailBand1.FindChildControl('ypyf' + IntToStr(j -
                1))).Caption := '';
              TQRLabel(DetailBand1.FindChildControl('xmmc' + IntToStr(j -
                1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring + ' '
                +
                trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring) + ' ' +
                trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
              //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end;
            sp_zxjl_cq_dy.Next;
          end;
        end;
        QRLabel2.Caption := pub_yymc + '������Һ�ƻ�ִ�е�';
        DM_data.qry_pub.Close;
        DM_data.qry_pub.SQL.text := 'select * from sys_kscwsz where bqdm=' + ''''
          + pub_bqdm + '''' + ' and bcbh=' + '''' +
          trim(sp_jbxx.fieldbyname('bch').asstring) + '''';
        try
          DM_data.qry_pub.open;
        except

        end;

        QRLabel3.Caption := '����:' + Trim(sp_jbxx.fieldbyname('brxm').asstring);
        QRLabel20.Caption := '������:' +
          Trim(DM_data.qry_pub.FieldByName('yybch').asstring);
        QRLabel21.Caption := '�Ա�:' + Trim(sp_jbxx.fieldbyname('brxb').asstring);
        QRLabel26.Caption := '����:' +
          trim(sp_jbxx.fieldbyname('brnl').asstring);
        ny.Caption := FormatDateTime('yyyy', frm_func.curr_date) + '��';

        QRLabel61.Caption := '����:' + trim(sp_jbxx.fieldbyname('brxm').asstring) +
          '      ' +
          '������:' + Trim(DM_data.qry_pub.FieldByName('yybch').asstring) +
          '      ' +
          '����:' + Trim(sp_jbxx.fieldbyname('tmh').asstring);
        //'�Ա�:' + sp_jbxx.fieldbyname( 'brxb' ).asstring +'      '+
        //'����:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
//QuickRep3.Prepare;
        QRLabel57.Caption := '���ҽ��:';
        QRLabel72.Caption:='';
        QuickRep3.Preview;
      end;
    end
    else if zzdx = 'B5' then  //B5
    begin
      sp_zxjl_cq_dy.First;
      if sp_zxjl_cq_dy.RecordCount mod 9 <> 0 then
        y := trunc(sp_zxjl_cq_dy.RecordCount / 9) + 1
      else
        y := trunc(sp_zxjl_cq_dy.RecordCount / 9);
      count := sp_zxjl_cq_dy.RecordCount;
      for I := 1 to y do
      begin
        for j := 1 to 9 do
        begin
          if count < i * 9 then
          begin
            if j > (9 - (y * 9 - count)) then
            begin
              aControl := DetailBand2.FindChildControl('ksrqjy' + IntToStr(j -
                1));
              if aControl is TQRLabel then
                TQRLabel(aControl).Caption := '';
              aControl := DetailBand2.FindChildControl('kdysmcjy' + IntToStr(j -
                1));
              if aControl is TQRLabel then
                TQRLabel(aControl).Caption := '';
              DetailBand2.FindChildControl('qrgrimagejy' + IntToStr(j)).enabled
                := false;
              //  TQRLabel( DetailBand2.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
              TQRLabel(DetailBand2.FindChildControl('ypyfjy' + IntToStr(j -
                1))).Caption := '';
              //TQRLabel( DetailBand2.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
              TQRLabel(DetailBand2.FindChildControl('xmmcjy' + IntToStr(j -
                1))).caption := '';
            end
            else
            begin
              aControl := DetailBand2.FindChildControl('ksrqjy' + IntToStr(j -
                1));
              if aControl is TQRLabel then
                TQRLabel(aControl).Caption :=
                  sp_zxjl_cq_dy.FieldByName('ksrq').AsString;
              aControl := DetailBand2.FindChildControl('kdysmcjy' + IntToStr(j -
                1));
              if aControl is TQRLabel then
                TQRLabel(aControl).Caption :=
                  sp_zxjl_cq_dy.FieldByName('kdysmc').asstring;
              if sp_zxjl_cq_dy.FieldByName('fzph').asstring <> '' then
              begin
                DetailBand2.FindChildControl('QRgrImagejy' + IntToStr(j)).enabled
                  := true;
                DetailBand2.FindChildControl('QRgrImagejy' + IntToStr(j)).Top :=
                  TQRLabel(DetailBand2.FindChildControl('xmmcjy' + IntToStr(j -
                  1))).top;
                DetailBand2.FindChildControl('QRgrImagejy' + IntToStr(j)).left
                  := DetailBand2.FindChildControl('ypyfjy' + IntToStr(j -
                  1)).left
                  - 20;
                DetailBand2.FindChildControl('qrgrimagejy' + IntToStr(j)).height
                  := 30;
                TQRLabel(DetailBand2.FindChildControl('ypyfjy' + IntToStr(j -
                  1))).Caption :=
                  trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring)
                  + '  ' + trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
                TQRLabel(DetailBand2.FindChildControl('xmmcjy' + IntToStr(j -
                  1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring;
                //TQRLabel( DetailBand2.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
              end
              else
              begin
                DetailBand2.FindChildControl('qrgrimagejy' + IntToStr(j)).enabled
                  := false;
                DetailBand2.FindChildControl('xmmcjy' + IntToStr(j - 1)).Width
                  := 235;
                TQRLabel(DetailBand2.FindChildControl('ypyfjy' + IntToStr(j -
                  1))).Caption := '';
                TQRLabel(DetailBand2.FindChildControl('xmmcjy' + IntToStr(j -
                  1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring +
                  ' '
                  + trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring) + ' ' +
                  trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
                // TQRLabel( DetailBand2.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
              end;
              sp_zxjl_cq_dy.Next;
            end;
          end
          else
          begin
            aControl := DetailBand2.FindChildControl('ksrqjy' + IntToStr(j -
              1));
            if aControl is TQRLabel then
              TQRLabel(aControl).Caption :=
                sp_zxjl_cq_dy.FieldByName('ksrq').asstring;
            aControl := DetailBand2.FindChildControl('kdysmcjy' + IntToStr(j -
              1));
            if aControl is TQRLabel then
              TQRLabel(aControl).Caption :=
                sp_zxjl_cq_dy.FieldByName('kdysmc').asstring;
            if sp_zxjl_cq_dy.FieldByName('fzph').asstring <> '' then
            begin
              DetailBand2.FindChildControl('QRgrImagejy' + IntToStr(j)).enabled
                := true;
              DetailBand2.FindChildControl('QRgrImagejy' + IntToStr(j)).Top :=
                TQRLabel(DetailBand2.FindChildControl('xmmcjy' + IntToStr(j -
                1))).top;
              DetailBand2.FindChildControl('qrgrimagejy' + IntToStr(j)).left :=
                DetailBand2.FindChildControl('ypyfjy' + IntToStr(j - 1)).left -
                20;
              DetailBand2.FindChildControl('qrgrimagejy' + IntToStr(j)).height
                := 30;
              TQRLabel(DetailBand2.FindChildControl('ypyfjy' + IntToStr(j -
                1))).Caption := trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring)
                +
                '  ' + trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
              TQRLabel(DetailBand2.FindChildControl('xmmcjy' + IntToStr(j -
                1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring;
              //  TQRLabel( DetailBand2.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end
            else
            begin
              DetailBand2.FindChildControl('qrgrimagejy' + IntToStr(j)).enabled
                := false;
              DetailBand2.FindChildControl('xmmcjy' + IntToStr(j - 1)).Width :=
                235;
              TQRLabel(DetailBand2.FindChildControl('ypyfjy' + IntToStr(j -
                1))).Caption := '';
              TQRLabel(DetailBand2.FindChildControl('xmmcjy' + IntToStr(j -
                1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring + ' '
                +
                trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring) + ' ' +
                trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
              //  TQRLabel( DetailBand2.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end;
            sp_zxjl_cq_dy.Next;
          end;
        end;
        QRLabel2jy.Caption := pub_yymc + '������Һ�ƻ�ִ�е�';
        DM_data.qry_pub.Close;
        DM_data.qry_pub.SQL.text := 'select * from sys_kscwsz where bqdm=' + ''''
          + pub_bqdm + '''' + ' and bcbh=' + '''' +
          trim(sp_jbxx.fieldbyname('bch').asstring) + '''';
        try
          DM_data.qry_pub.open;
        except

        end;

        QRLabel3jy.Caption := '����:' + sp_jbxx.fieldbyname('brxm').asstring;
        QRLabel20jy.Caption := '������:' +
          Trim(DM_data.qry_pub.FieldByName('yybch').asstring);
        QRLabel21jy.Caption := '�Ա�:' + sp_jbxx.fieldbyname('brxb').asstring;
        QRLabel26jy.Caption := '����:' +
          trim(sp_jbxx.fieldbyname('brnl').asstring);
        nyjy.Caption := FormatDateTime('yyyy', frm_func.curr_date) + '��';

        QRLabel61jy.Caption := '����:' + sp_jbxx.fieldbyname('brxm').asstring +
          '      ' +
          '������:' + Trim(DM_data.qry_pub.FieldByName('yybch').asstring) +
          '      ' +
          '����:' + Trim(sp_jbxx.fieldbyname('tmh').asstring);
        //'�Ա�:' + sp_jbxx.fieldbyname( 'brxb' ).asstring +'      '+
        //'����:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
//QuickRep3.Prepare;
//QRLabel57.Caption := '���ҽ��:';
        QuickRep6.Preview;
      end;
    end else
    if zzdx = 'A3' then   //------------------------------------�����������޸�A3 ---------------
    begin
      sp_zxjl_cq_dy.First;
      if sp_zxjl_cq_dy.RecordCount mod 8 <> 0 then
        y := trunc(sp_zxjl_cq_dy.RecordCount / 8) + 1
      else
        y := trunc(sp_zxjl_cq_dy.RecordCount / 8);
      count := sp_zxjl_cq_dy.RecordCount;
      for I := 1 to y do
      begin
        for j := 1 to 8 do
        begin
          if count < i * 8 then
          begin
            if j > (8 - (y * 8 - count)) then
            begin
              aControl := qrbndcqjy.FindChildControl('jycqsyksrq' + IntToStr(j -
                1));
              if aControl is TQRLabel then
                TQRLabel(aControl).Caption := '';
              aControl := qrbndcqjy.FindChildControl('jycqsykdys' + IntToStr(j -
                1));
              if aControl is TQRLabel then
                TQRLabel(aControl).Caption := '';
              qrbndcqjy.FindChildControl('QRImagejy' + IntToStr(j)).enabled :=
                false;
              //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
              TQRLabel(qrbndcqjy.FindChildControl('jycqsyypyf' + IntToStr(j -
                1))).Caption := '';
              //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
              TQRLabel(qrbndcqjy.FindChildControl('jycqsyxmmc' + IntToStr(j -
                1))).caption := '';
            end
            else
            begin
              aControl := qrbndcqjy.FindChildControl('jycqsyksrq' + IntToStr(j -
                1));
              if aControl is TQRLabel then
                TQRLabel(aControl).Caption :=
                  sp_zxjl_cq_dy.FieldByName('ksrq').AsString;
              aControl := qrbndcqjy.FindChildControl('jycqsykdys' + IntToStr(j -
                1));
              if aControl is TQRLabel then
                TQRLabel(aControl).Caption :=
                  sp_zxjl_cq_dy.FieldByName('kdysmc').asstring;
              if sp_zxjl_cq_dy.FieldByName('fzph').asstring <> '' then
              begin
                qrbndcqjy.FindChildControl('QRImagejy' + IntToStr(j)).enabled :=
                  true;
                qrbndcqjy.FindChildControl('QRImagejy' + IntToStr(j)).Top :=
                  TQRLabel(qrbndcqjy.FindChildControl('jycqsyxmmc' + IntToStr(j -
                  1))).top;
                qrbndcqjy.FindChildControl('QRImagejy' + IntToStr(j)).left :=
                  qrbndcqjy.FindChildControl('jycqsyypyf' + IntToStr(j - 1)).left
                  -
                  20;
                qrbndcqjy.FindChildControl('QRImagejy' + IntToStr(j)).height :=
                  30;
                TQRLabel(qrbndcqjy.FindChildControl('jycqsyypyf' + IntToStr(j -
                  1))).Caption :=
                  trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring)
                  + '  ' + trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
                TQRLabel(qrbndcqjy.FindChildControl('jycqsyxmmc' + IntToStr(j -
                  1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring;
                //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
              end
              else
              begin
                qrbndcqjy.FindChildControl('QRImagejy' + IntToStr(j)).enabled :=
                  false;
                //qrbndcqsy.FindChildControl( 'cqsyxmmc' + IntToStr( j - 1 ) ).Width := 235;
                TQRLabel(qrbndcqjy.FindChildControl('jycqsyypyf' + IntToStr(j -
                  1))).Caption := '';
                TQRLabel(qrbndcqjy.FindChildControl('jycqsyxmmc' + IntToStr(j -
                  1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring +
                  ' '
                  + trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring) + ' ' +
                  trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
                // TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
              end;
              sp_zxjl_cq_dy.Next;
            end;
          end
          else
          begin
            aControl := qrbndcqjy.FindChildControl('jycqsyksrq' + IntToStr(j -
              1));
            if aControl is TQRLabel then
              TQRLabel(aControl).Caption :=
                sp_zxjl_cq_dy.FieldByName('ksrq').asstring;
            aControl := qrbndcqjy.FindChildControl('jycqsykdys' + IntToStr(j -
              1));
            if aControl is TQRLabel then
              TQRLabel(aControl).Caption :=
                sp_zxjl_cq_dy.FieldByName('kdysmc').asstring;
            if sp_zxjl_cq_dy.FieldByName('fzph').asstring <> '' then
            begin
              qrbndcqjy.FindChildControl('QRImagejy' + IntToStr(j)).enabled :=
                true;
              qrbndcqjy.FindChildControl('QRImagejy' + IntToStr(j)).Top :=
                TQRLabel(qrbndcqjy.FindChildControl('jycqsyxmmc' + IntToStr(j -
                1))).top;
              qrbndcqjy.FindChildControl('QRImagejy' + IntToStr(j)).left :=
                qrbndcqjy.FindChildControl('jycqsyypyf' + IntToStr(j - 1)).left -
                20;
              qrbndcqjy.FindChildControl('QRImagejy' + IntToStr(j)).height :=
                30;
              TQRLabel(qrbndcqjy.FindChildControl('jycqsyypyf' + IntToStr(j -
                1))).Caption := trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring)
                +
                '  ' + trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
              TQRLabel(qrbndcqjy.FindChildControl('jycqsyxmmc' + IntToStr(j -
                1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring;
              //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end
            else
            begin
              qrbndcqjy.FindChildControl('QRImagejy' + IntToStr(j)).enabled :=
                false;
              //qrbndcqsy.FindChildControl( 'cqsyxmmc' + IntToStr( j - 1 ) ).Width := 235;
              TQRLabel(qrbndcqjy.FindChildControl('jycqsyypyf' + IntToStr(j -
                1))).Caption := '';
              TQRLabel(qrbndcqjy.FindChildControl('jycqsyxmmc' + IntToStr(j -
                1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring + ' '
                +
                trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring) + ' ' +
                trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
              //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end;
            sp_zxjl_cq_dy.Next;
          end;
        end;
        jycqsymc.Caption := pub_yymc + '������Һ�ƻ�ִ�е�';
        DM_data.qry_pub.Close;
        DM_data.qry_pub.SQL.text := 'select * from sys_kscwsz where bqdm=' + ''''
          + pub_bqdm + '''' + ' and bcbh=' + '''' +
          trim(sp_jbxx.fieldbyname('bch').asstring) + '''';
        try
          DM_data.qry_pub.open;
        except

        end;

        jycqsyxm.Caption := '����:' + sp_jbxx.fieldbyname('brxm').asstring;
        jycqsybch.Caption := '������:' +
          Trim(DM_data.qry_pub.FieldByName('yybch').asstring);
        jycqsyxb.Caption := '�Ա�:' + sp_jbxx.fieldbyname('brxb').asstring;
        jycqsynl.Caption := '����:' + trim(sp_jbxx.fieldbyname('brnl').asstring);
        jycqsyn.Caption := FormatDateTime('yyyy', frm_func.curr_date) + '��';

        jycqsyxmxm.Caption := '����:' + sp_jbxx.fieldbyname('brxm').asstring;
        jycqsybchbch.Caption := '������:' +
          Trim(DM_data.qry_pub.FieldByName('yybch').asstring);
        jycqsykh.Caption := '����:' + Trim(sp_jbxx.fieldbyname('tmh').asstring);
        //QRLabel62jy.Caption := '����:' + sp_jbxx.fieldbyname( 'brxm' ).asstring + '      ' +
        //  '������:' + Trim( DM_data.qry_pub.FieldByName( 'yybch' ).asstring ) + '      '+
        //  '����:' + Trim( sp_jbxx.fieldbyname( 'tmh' ).asstring  );
        //'�Ա�:' + sp_jbxx.fieldbyname( 'brxb' ).asstring +'      '+
        //'����:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
         //QuickRep3.Prepare;
        //QRLabel71.Caption := '���ҽ��:';
        qckrpcqjy.Preview;
      end;
    end else //----------------------------------------- A5-----------------
    begin
      sp_zxjl_cq_dy.First;
      if sp_zxjl_cq_dy.RecordCount mod 8 <> 0 then
        y := trunc(sp_zxjl_cq_dy.RecordCount / 8) + 1
      else
        y := trunc(sp_zxjl_cq_dy.RecordCount / 8);
      count := sp_zxjl_cq_dy.RecordCount;
      for I := 1 to y do
      begin
        for j := 1 to 8 do
        begin
          if count < i * 8 then
          begin
            if j > (8 - (y * 8 - count)) then
            begin
              aControl := qrbndcqsy.FindChildControl('cqsyksrq' + IntToStr(j -
                1));
              if aControl is TQRLabel then
                TQRLabel(aControl).Caption := '';
              aControl := qrbndcqsy.FindChildControl('cqsykdys' + IntToStr(j -
                1));
              if aControl is TQRLabel then
                TQRLabel(aControl).Caption := '';
              qrbndcqsy.FindChildControl('QRImagesy' + IntToStr(j)).enabled :=
                false;
              //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
              TQRLabel(qrbndcqsy.FindChildControl('cqsyypyf' + IntToStr(j -
                1))).Caption := '';
              //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
              TQRLabel(qrbndcqsy.FindChildControl('cqsyxmmc' + IntToStr(j -
                1))).caption := '';
            end
            else
            begin
              aControl := qrbndcqsy.FindChildControl('cqsyksrq' + IntToStr(j -
                1));
              if aControl is TQRLabel then
                TQRLabel(aControl).Caption :=
                  sp_zxjl_cq_dy.FieldByName('ksrq').AsString;
              aControl := qrbndcqsy.FindChildControl('cqsykdys' + IntToStr(j -
                1));
              if aControl is TQRLabel then
                TQRLabel(aControl).Caption :=
                  sp_zxjl_cq_dy.FieldByName('kdysmc').asstring;
              if sp_zxjl_cq_dy.FieldByName('fzph').asstring <> '' then
              begin
                qrbndcqsy.FindChildControl('QRImagesy' + IntToStr(j)).enabled :=
                  true;
                qrbndcqsy.FindChildControl('QRImagesy' + IntToStr(j)).Top :=
                  TQRLabel(qrbndcqsy.FindChildControl('cqsyxmmc' + IntToStr(j -
                  1))).top;
                qrbndcqsy.FindChildControl('QRImagesy' + IntToStr(j)).left :=
                  qrbndcqsy.FindChildControl('cqsyypyf' + IntToStr(j - 1)).left
                  -
                  20;
                qrbndcqsy.FindChildControl('QRImagesy' + IntToStr(j)).height :=
                  30;
                TQRLabel(qrbndcqsy.FindChildControl('cqsyypyf' + IntToStr(j -
                  1))).Caption :=
                  trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring)
                  + '  ' + trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
                TQRLabel(qrbndcqsy.FindChildControl('cqsyxmmc' + IntToStr(j -
                  1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring;
                //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
              end
              else
              begin
                qrbndcqsy.FindChildControl('QRImagesy' + IntToStr(j)).enabled :=
                  false;
                //qrbndcqsy.FindChildControl( 'cqsyxmmc' + IntToStr( j - 1 ) ).Width := 235;
                TQRLabel(qrbndcqsy.FindChildControl('cqsyypyf' + IntToStr(j -
                  1))).Caption := '';
                TQRLabel(qrbndcqsy.FindChildControl('cqsyxmmc' + IntToStr(j -
                  1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring +
                  ' '
                  + trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring) + ' ' +
                  trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
                // TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
              end;
              sp_zxjl_cq_dy.Next;
            end;
          end
          else
          begin
            aControl := qrbndcqsy.FindChildControl('cqsyksrq' + IntToStr(j -
              1));
            if aControl is TQRLabel then
              TQRLabel(aControl).Caption :=
                sp_zxjl_cq_dy.FieldByName('ksrq').asstring;
            aControl := qrbndcqsy.FindChildControl('cqsykdys' + IntToStr(j -
              1));
            if aControl is TQRLabel then
              TQRLabel(aControl).Caption :=
                sp_zxjl_cq_dy.FieldByName('kdysmc').asstring;
            if sp_zxjl_cq_dy.FieldByName('fzph').asstring <> '' then
            begin
              qrbndcqsy.FindChildControl('QRImagesy' + IntToStr(j)).enabled :=
                true;
              qrbndcqsy.FindChildControl('QRImagesy' + IntToStr(j)).Top :=
                TQRLabel(qrbndcqsy.FindChildControl('cqsyxmmc' + IntToStr(j -
                1))).top;
              qrbndcqsy.FindChildControl('QRImagesy' + IntToStr(j)).left :=
                qrbndcqsy.FindChildControl('cqsyypyf' + IntToStr(j - 1)).left -
                20;
              qrbndcqsy.FindChildControl('QRImagesy' + IntToStr(j)).height :=
                30;
              TQRLabel(qrbndcqsy.FindChildControl('cqsyypyf' + IntToStr(j -
                1))).Caption := trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring)
                +
                '  ' + trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
              TQRLabel(qrbndcqsy.FindChildControl('cqsyxmmc' + IntToStr(j -
                1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring;
              //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end
            else
            begin
              qrbndcqsy.FindChildControl('QRImagesy' + IntToStr(j)).enabled :=
                false;
              //qrbndcqsy.FindChildControl( 'cqsyxmmc' + IntToStr( j - 1 ) ).Width := 235;
              TQRLabel(qrbndcqsy.FindChildControl('cqsyypyf' + IntToStr(j -
                1))).Caption := '';
              TQRLabel(qrbndcqsy.FindChildControl('cqsyxmmc' + IntToStr(j -
                1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring + ' '
                +
                trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring) + ' ' +
                trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
              //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end;
            sp_zxjl_cq_dy.Next;
          end;
        end;
        cqsymc.Caption := pub_yymc + '������Һ�ƻ�ִ�е�';
        DM_data.qry_pub.Close;
        DM_data.qry_pub.SQL.text := 'select * from sys_kscwsz where bqdm=' + ''''
          + pub_bqdm + '''' + ' and bcbh=' + '''' +
          trim(sp_jbxx.fieldbyname('bch').asstring) + '''';
        try
          DM_data.qry_pub.open;
        except

        end;

        cqsyxm.Caption := '����:' + sp_jbxx.fieldbyname('brxm').asstring;
        cqsybch.Caption := '������:' +
          Trim(DM_data.qry_pub.FieldByName('yybch').asstring);
        cqsyxb.Caption := '�Ա�:' + sp_jbxx.fieldbyname('brxb').asstring;
        cqsynl.Caption := '����:' + trim(sp_jbxx.fieldbyname('brnl').asstring);
        cqsyn.Caption := FormatDateTime('yyyy', frm_func.curr_date) + '��';

        cqsyxmxm.Caption := '����:' + sp_jbxx.fieldbyname('brxm').asstring;
        cqsybchbch.Caption := '������:' +
          Trim(DM_data.qry_pub.FieldByName('yybch').asstring);
        cqsykh.Caption := '����:' + Trim(sp_jbxx.fieldbyname('tmh').asstring);
        //QRLabel62jy.Caption := '����:' + sp_jbxx.fieldbyname( 'brxm' ).asstring + '      ' +
        //  '������:' + Trim( DM_data.qry_pub.FieldByName( 'yybch' ).asstring ) + '      '+
        //  '����:' + Trim( sp_jbxx.fieldbyname( 'tmh' ).asstring  );
        //'�Ա�:' + sp_jbxx.fieldbyname( 'brxb' ).asstring +'      '+
        //'����:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
//QuickRep3.Prepare;
        //QRLabel71.Caption := '���ҽ��:';
        qckrpcqsy.Preview;
      end;
    end;
  end;
end;

procedure Tfrm_yzinput.BitBtn4Click(Sender: TObject);
var
  i, y, j, count: Integer;
  aControl: TControl;
  v_yytj, v_lb, filter: string;
begin
  with sp_zxjl_cq_dy do
  begin
    Filtered := False;
    Close;
    Parameters.ParamByName('@zyh').Value :=
      Trim(sp_jbxx.fieldbyname('zyh').asstring);
    Parameters.ParamByName('@fs').Value := 0;
    Open;
  end;

  DM_data.qry_pub.close;
  DM_data.qry_pub.sql.text :=
    'select yytj from zybl_zyyz_dytjsz where dyxm=''�ڷ�ҩִ�е�''';
  try
    DM_data.qry_pub.open;
  except

  end;
  if DM_data.qry_pub.IsEmpty then
  begin
    v_yytj := '';
  end
  else
  begin
    DM_data.qry_pub.First;
    while not DM_data.qry_pub.eof do
    begin
      v_yytj := v_yytj + '(yytj=' + '''' +
        DM_data.qry_pub.FieldByName('yytj').asstring + '''' + ' and  tzrq=null )'
        +
        ' or ';
      DM_data.qry_pub.Next;
    end;

  end;
  DM_data.qry_pub.close;
  DM_data.qry_pub.sql.text :=
    'select lbmc from zybl_zyyz_dylbsz where dyxm=''�ڷ�ҩִ�е�''';
  try
    DM_data.qry_pub.open;
  except

  end;
  if DM_data.qry_pub.IsEmpty then
  begin
    v_lb := '';
  end
  else
  begin
    DM_data.qry_pub.First;
    while not DM_data.qry_pub.eof do
    begin
      v_lb := v_lb + '(lb=' + '''' + DM_data.qry_pub.FieldByName('lbmc').asstring
        + '''' + ' and  tzrq=null)' + ' or ';
      DM_data.qry_pub.Next;
    end;

  end;

  if v_yytj + v_lb = '' then
  begin
    filter := ' 1<>1 ';
  end
  else
  begin
    filter := v_yytj + v_lb + ' ( yytj=''�������'' )';
  end;

  sp_zxjl_cq_dy.Filter := filter;
  sp_zxjl_cq_dy.Filtered := True;
  if sp_zxjl_cq_dy.IsEmpty then
  begin
    Application.MessageBox('û�м�¼��', '��ʾ', 0 + 48);
    Exit;
  end;
  if not sp_zxjl_cq_dy.IsEmpty then
  begin
    sp_zxjl_cq_dy.First;
    if sp_zxjl_cq_dy.RecordCount mod 20 <> 0 then
      y := trunc(sp_zxjl_cq_dy.RecordCount / 20) + 1
    else
      y := trunc(sp_zxjl_cq_dy.RecordCount / 20);
    count := sp_zxjl_cq_dy.RecordCount;
    for I := 1 to y do
    begin
      for j := 1 to 20 do
      begin
        if count < y * 20 then
        begin
          if j > (20 - (i * 20 - count)) then
          begin
            aControl := QRBand7.FindChildControl('ksrq_' + IntToStr(j - 1));
            if aControl is TQRLabel then
              TQRLabel(aControl).Caption := '';
            aControl := QRBand7.FindChildControl('kdysmc_' + IntToStr(j - 1));
            if aControl is TQRLabel then
              TQRLabel(aControl).Caption := '';
            //TQRLabel( QRBand7.FindChildControl( 'xmmc_' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel(QRBand7.FindChildControl('xmmc_' + IntToStr(j - 1))).caption
              := '';
          end
          else
          begin
            aControl := QRBand7.FindChildControl('ksrq_' + IntToStr(j - 1));
            if aControl is TQRLabel then
              TQRLabel(aControl).Caption :=
                sp_zxjl_cq_dy.FieldByName('ksrq').AsString;
            aControl := QRBand7.FindChildControl('kdysmc_' + IntToStr(j - 1));
            if aControl is TQRLabel then
              TQRLabel(aControl).Caption :=
                sp_zxjl_cq_dy.FieldByName('kdysmc').asstring;
            if sp_zxjl_cq_dy.FieldByName('fzph').asstring <> '' then
            begin
              TQRLabel(QRBand7.FindChildControl('xmmc_' + IntToStr(j -
                1))).caption :=
                sp_zxjl_cq_dy.FieldByName('xmmc').Asstring;
            end
            else
            begin
              QRBand7.FindChildControl('xmmc_' + IntToStr(j - 1)).Width := 190;
              TQRLabel(QRBand7.FindChildControl('xmmc_' + IntToStr(j -
                1))).caption :=
                sp_zxjl_cq_dy.FieldByName('xmmc').Asstring + '  ' +
                trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
            end;
            sp_zxjl_cq_dy.Next;
          end;
        end
        else
        begin
          aControl := QRBand7.FindChildControl('ksrq_' + IntToStr(j - 1));
          if aControl is TQRLabel then
            TQRLabel(aControl).Caption :=
              sp_zxjl_cq_dy.FieldByName('ksrq').asstring;
          aControl := QRBand7.FindChildControl('kdysmc_' + IntToStr(j - 1));
          if aControl is TQRLabel then
            TQRLabel(aControl).Caption :=
              sp_zxjl_cq_dy.FieldByName('kdysmc').asstring;
          if sp_zxjl_cq_dy.FieldByName('fzph').asstring <> '' then
          begin

            TQRLabel(QRBand7.FindChildControl('xmmc_' + IntToStr(j - 1))).caption
              := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring;
          end
          else
          begin
            QRBand7.FindChildControl('xmmc_' + IntToStr(j - 1)).Width := 190;
            TQRLabel(QRBand7.FindChildControl('xmmc_' + IntToStr(j - 1))).caption
              :=
              sp_zxjl_cq_dy.FieldByName('xmmc').Asstring + '  ' +
              trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
          end;
          sp_zxjl_cq_dy.Next;
        end;
      end;
      DM_data.qry_pub.Close;
      DM_data.qry_pub.SQL.text := 'select * from sys_kscwsz where bqdm=' + ''''
        + pub_bqdm + '''' + ' and bcbh=' + '''' +
        trim(sp_jbxx.fieldbyname('bch').asstring) + '''';
      try
        DM_data.qry_pub.open;
      except

      end;
      QRLabel31.Caption := pub_yymc + 'ҽ��ִ�е�(�ڷ�ҩ)';
      QRLabel32.Caption := '����:' + sp_jbxx.fieldbyname('brxm').asstring;
      QRLabel36.Caption := '����:' +
        Trim(DM_data.qry_pub.FieldByName('yybch').asstring);
      qrlbl_nf_tmh.Caption := 'סԺ��:' + sp_jbxx.fieldbyname('tmh').asstring;
      qrlbl_nfQRL_bq_cq.Caption := '����:' + pub_bqmc;
      QuickRep4.Prepare;
      ys.Caption := '��' + '   ' + inttostr(i) + '  ҳ';
      qrl_ks.Caption := '����:' + sp_jbxx.fieldbyname('brxm').asstring + '   ' +
        '����:' + Trim(DM_data.qry_pub.FieldByName('yybch').asstring) + '   ' +
        '����:' + pub_bqmc + '   ' + '����:' +
        Trim(sp_jbxx.fieldbyname('tmh').asstring);
      QuickRep4.Preview;
    end;
  end;
end;

procedure Tfrm_yzinput.BitBtn5Click(Sender: TObject);
begin
  try
    application.createform(tfrm_jcsqd, frm_jcsqd);
    frm_jcsqd.pq.Text := sp_jbxx.FieldByName('bch').AsString;
    frm_jcsqd.showmodal;
  finally
    frm_jcsqd.free;
  end
end;

procedure Tfrm_yzinput.BitBtn6Click(Sender: TObject);
var
  i, y, j, count: Integer;
  aControl: TControl;
begin
  with sp_zxjl_cq_dy do
  begin
    Filtered := False;
    Close;
    Parameters.ParamByName('@zyh').Value :=
      Trim(sp_jbxx.fieldbyname('zyh').asstring);
    Parameters.ParamByName('@fs').Value := 1;
    Open;
  end;
  sp_zxjl_cq_dy.Filtered := False;
  sp_zxjl_cq_dy.Filter := '(yytj like ''%����%'' and  kdrq>=' + '''' +
    formatdatetime('yy-MM-dd', frm_func.curr_date) + ' 00:00' + ''') or' +
    ' (yytj=''��������''  and kdrq>=' +
    '''' + formatdatetime('yy-MM-dd', frm_func.curr_date) + ' 00:00' + ''')';

  sp_zxjl_cq_dy.Filtered := True;

  if not sp_zxjl_cq_dy.IsEmpty then
  begin
    sp_zxjl_cq_dy.First;
    if sp_zxjl_cq_dy.RecordCount mod 9 <> 0 then
      y := trunc(sp_zxjl_cq_dy.RecordCount / 9) + 1
    else
      y := trunc(sp_zxjl_cq_dy.RecordCount / 9);
    count := sp_zxjl_cq_dy.RecordCount;
    for I := 1 to y do
    begin
      for j := 1 to 9 do
      begin
        if count < i * 9 then
        begin
          if j > (9 - (y * 9 - count)) then
          begin
            aControl := QRBand10.FindChildControl('ksrqls' + IntToStr(j - 1));
            if aControl is TQRLabel then
              TQRLabel(aControl).Caption := '';
            aControl := QRBand10.FindChildControl('kdysmcls' + IntToStr(j - 1));
            if aControl is TQRLabel then
              TQRLabel(aControl).Caption := '';
            QRBand10.FindChildControl('QRImagels_' + IntToStr(j)).enabled :=
              false;
            //TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel(QRBand10.FindChildControl('ypyfls_' + IntToStr(j -
              1))).Caption := '';
            TQRLabel(QRBand10.FindChildControl('xmmcls_' + IntToStr(j -
              1))).caption := '';
          end
          else
          begin
            aControl := QRBand10.FindChildControl('ksrqls' + IntToStr(j - 1));
            if aControl is TQRLabel then
              TQRLabel(aControl).Caption :=
                sp_zxjl_cq_dy.FieldByName('ksrq').AsString;
            aControl := QRBand10.FindChildControl('kdysmcls' + IntToStr(j - 1));
            if aControl is TQRLabel then
              TQRLabel(aControl).Caption :=
                sp_zxjl_cq_dy.FieldByName('kdysmc').asstring;
            if sp_zxjl_cq_dy.FieldByName('fzph').asstring <> '' then
            begin
              QRBand10.FindChildControl('QRImagels_' + IntToStr(j)).enabled :=
                true;
              QRBand10.FindChildControl('QRImagels_' + IntToStr(j)).Top :=
                TQRLabel(QRBand10.FindChildControl('xmmcls_' + IntToStr(j -
                1))).top;
              QRBand10.FindChildControl('QRImagels_' + IntToStr(j)).left :=
                QRBand10.FindChildControl('ypyfls_' + IntToStr(j - 1)).left -
                20;
              QRBand10.FindChildControl('QRImagels_' + IntToStr(j)).height :=
                30;
              TQRLabel(QRBand10.FindChildControl('ypyfls_' + IntToStr(j -
                1))).Caption := trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring)
                +
                '  ' + trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
              TQRLabel(QRBand10.FindChildControl('xmmcls_' + IntToStr(j -
                1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring;
            end
            else
            begin
              QRBand10.FindChildControl('QRImagels_' + IntToStr(j)).enabled :=
                false;
              QRBand10.FindChildControl('xmmcls_' + IntToStr(j - 1)).Width :=
                235;
              TQRLabel(QRBand10.FindChildControl('ypyfls_' + IntToStr(j -
                1))).Caption := '';
              TQRLabel(QRBand10.FindChildControl('xmmcls_' + IntToStr(j -
                1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring + ' '
                +
                trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring) + ' ' +
                trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
            end;
            sp_zxjl_cq_dy.Next;
          end;
        end
        else
        begin
          aControl := QRBand10.FindChildControl('ksrqls' + IntToStr(j - 1));
          if aControl is TQRLabel then
            TQRLabel(aControl).Caption :=
              sp_zxjl_cq_dy.FieldByName('ksrq').asstring;
          aControl := QRBand10.FindChildControl('kdysmcls' + IntToStr(j - 1));
          if aControl is TQRLabel then
            TQRLabel(aControl).Caption :=
              sp_zxjl_cq_dy.FieldByName('kdysmc').asstring;
          if sp_zxjl_cq_dy.FieldByName('fzph').asstring <> '' then
          begin
            QRBand10.FindChildControl('QRImagels_' + IntToStr(j)).enabled :=
              true;
            QRBand10.FindChildControl('QRImagels_' + IntToStr(j)).Top :=
              TQRLabel(QRBand10.FindChildControl('xmmcls_' + IntToStr(j -
              1))).top;
            QRBand10.FindChildControl('QRImagels_' + IntToStr(j)).left :=
              QRBand10.FindChildControl('ypyfls_' + IntToStr(j - 1)).left - 20;
            QRBand10.FindChildControl('QRImagels_' + IntToStr(j)).height := 30;
            TQRLabel(QRBand10.FindChildControl('ypyfls_' + IntToStr(j -
              1))).Caption := trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring) +
              '  ' + trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
            TQRLabel(QRBand10.FindChildControl('xmmcls_' + IntToStr(j -
              1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring;
          end
          else
          begin
            QRBand10.FindChildControl('QRImagels_' + IntToStr(j)).enabled :=
              false;
            QRBand10.FindChildControl('xmmcls_' + IntToStr(j - 1)).Width := 235;
            TQRLabel(QRBand10.FindChildControl('ypyfls_' + IntToStr(j -
              1))).Caption := '';
            TQRLabel(QRBand10.FindChildControl('xmmcls_' + IntToStr(j -
              1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring + ' ' +
              trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring) + ' ' +
              trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
          end;
          sp_zxjl_cq_dy.Next;
        end;
      end;
      DM_data.qry_pub.Close;
      DM_data.qry_pub.SQL.text := 'select * from sys_kscwsz where bqdm=' + ''''
        + pub_bqdm + '''' + ' and bcbh=' + '''' +
        trim(sp_jbxx.fieldbyname('bch').asstring) + '''';
      try
        DM_data.qry_pub.open;
      except

      end;
      QRLabel45.Caption := pub_yymc + '��ʱ��Һ�ƻ�ִ�е�';
      QRLabel46.Caption := '����:' + sp_jbxx.fieldbyname('brxm').asstring;
      QRLabel50.Caption := '������:' +
        Trim(DM_data.qry_pub.FieldByName('yybch').asstring);
      QRLabel51.Caption := '�Ա�:' + sp_jbxx.fieldbyname('brxb').asstring;
      QRLabel52.Caption := '����:' + trim(sp_jbxx.fieldbyname('brnl').asstring);
      QRLabel53.Caption := FormatDateTime('yyyy', frm_func.curr_date) + '��';

      QRLabel67.Caption := '����:' + sp_jbxx.fieldbyname('brxm').asstring +
        '      ' +
        '������:' + Trim(DM_data.qry_pub.FieldByName('yybch').asstring) +
        '      ' +
        '����:' + Trim(sp_jbxx.fieldbyname('tmh').asstring);
      //   '����:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
//QuickRep3.Prepare;
      QRLabel58.Caption := '���ҽ����';
      QuickRep5.Preview;
    end;
  end;
end;

procedure Tfrm_yzinput.BitBtn7Click(Sender: TObject);
var
  i, y, j, count: Integer;
  aControl: TControl;
begin
  with sp_zxjl_cq_dy do
  begin
    Filtered := False;
    Close;
    Parameters.ParamByName('@zyh').Value :=
      Trim(sp_jbxx.fieldbyname('zyh').asstring);
    Parameters.ParamByName('@fs').Value := 0;
    Open;
  end;
  //sp_zxjl_cq_dy.Filtered := False;
  sp_zxjl_cq_dy.Filter := '(yytj=''��ע'' and  tzrq=null  )' +
    ' or (yytj=''��ע'' and  tzrq=null )' +
    ' or (yytj=''Ƥ��'' and  tzrq=null )' +
    ' or (yytj=''����ע��'' and  tzrq=null )' +
    ' or (yytj=''Ѩע'' and  tzrq=null and )';
  sp_zxjl_cq_dy.Filtered := True;

  if not sp_zxjl_cq_dy.IsEmpty then
  begin
    if zzdx = 'A4' then
    begin
      sp_zxjl_cq_dy.First;
      if sp_zxjl_cq_dy.RecordCount mod 5 <> 0 then
        y := trunc(sp_zxjl_cq_dy.RecordCount / 5) + 1
      else
        y := trunc(sp_zxjl_cq_dy.RecordCount / 5);
      count := sp_zxjl_cq_dy.RecordCount;
      for I := 1 to y do
      begin
        for j := 1 to 5 do
        begin
          if count < i * 5 then
          begin
            if j > (5 - (y * 5 - count)) then
            begin
              aControl := DetailBand1.FindChildControl('ksrq' + IntToStr(j -
                1));
              if aControl is TQRLabel then
                TQRLabel(aControl).Caption := '';
              aControl := DetailBand1.FindChildControl('kdysmc' + IntToStr(j -
                1));
              if aControl is TQRLabel then
                TQRLabel(aControl).Caption := '';
              DetailBand1.FindChildControl('qrgrimage' + IntToStr(j)).enabled :=
                false;
              //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
              TQRLabel(DetailBand1.FindChildControl('ypyf' + IntToStr(j -
                1))).Caption := '';
              //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
              TQRLabel(DetailBand1.FindChildControl('xmmc' + IntToStr(j -
                1))).caption := '';
            end
            else
            begin
              aControl := DetailBand1.FindChildControl('ksrq' + IntToStr(j -
                1));
              if aControl is TQRLabel then
                TQRLabel(aControl).Caption :=
                  sp_zxjl_cq_dy.FieldByName('ksrq').AsString;
              aControl := DetailBand1.FindChildControl('kdysmc' + IntToStr(j -
                1));
              if aControl is TQRLabel then
                TQRLabel(aControl).Caption :=
                  sp_zxjl_cq_dy.FieldByName('kdysmc').asstring;
              if sp_zxjl_cq_dy.FieldByName('fzph').asstring <> '' then
              begin
                DetailBand1.FindChildControl('QRgrImage' + IntToStr(j)).enabled
                  := true;
                DetailBand1.FindChildControl('QRgrImage' + IntToStr(j)).Top :=
                  TQRLabel(DetailBand1.FindChildControl('xmmc' + IntToStr(j -
                  1))).top;
                DetailBand1.FindChildControl('QRgrImage' + IntToStr(j)).left :=
                  DetailBand1.FindChildControl('ypyf' + IntToStr(j - 1)).left -
                  20;
                DetailBand1.FindChildControl('qrgrimage' + IntToStr(j)).height
                  := 30;
                TQRLabel(DetailBand1.FindChildControl('ypyf' + IntToStr(j -
                  1))).Caption :=
                  trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring)
                  + '  ' + trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
                TQRLabel(DetailBand1.FindChildControl('xmmc' + IntToStr(j -
                  1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring;
                //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
              end
              else
              begin
                DetailBand1.FindChildControl('qrgrimage' + IntToStr(j)).enabled
                  := false;
                DetailBand1.FindChildControl('xmmc' + IntToStr(j - 1)).Width :=
                  235;
                TQRLabel(DetailBand1.FindChildControl('ypyf' + IntToStr(j -
                  1))).Caption := '';
                TQRLabel(DetailBand1.FindChildControl('xmmc' + IntToStr(j -
                  1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring +
                  ' '
                  + trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring) + ' ' +
                  trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
                // TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
              end;
              sp_zxjl_cq_dy.Next;
            end;
          end
          else
          begin
            aControl := DetailBand1.FindChildControl('ksrq' + IntToStr(j - 1));
            if aControl is TQRLabel then
              TQRLabel(aControl).Caption :=
                sp_zxjl_cq_dy.FieldByName('ksrq').asstring;
            aControl := DetailBand1.FindChildControl('kdysmc' + IntToStr(j -
              1));
            if aControl is TQRLabel then
              TQRLabel(aControl).Caption :=
                sp_zxjl_cq_dy.FieldByName('kdysmc').asstring;
            if sp_zxjl_cq_dy.FieldByName('fzph').asstring <> '' then
            begin
              DetailBand1.FindChildControl('QRgrImage' + IntToStr(j)).enabled :=
                true;
              DetailBand1.FindChildControl('QRgrImage' + IntToStr(j)).Top :=
                TQRLabel(DetailBand1.FindChildControl('xmmc' + IntToStr(j -
                1))).top;
              DetailBand1.FindChildControl('qrgrimage' + IntToStr(j)).left :=
                DetailBand1.FindChildControl('ypyf' + IntToStr(j - 1)).left -
                20;
              DetailBand1.FindChildControl('qrgrimage' + IntToStr(j)).height :=
                30;
              TQRLabel(DetailBand1.FindChildControl('ypyf' + IntToStr(j -
                1))).Caption := trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring)
                +
                '  ' + trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
              TQRLabel(DetailBand1.FindChildControl('xmmc' + IntToStr(j -
                1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring;
              //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end
            else
            begin
              DetailBand1.FindChildControl('qrgrimage' + IntToStr(j)).enabled :=
                false;
              DetailBand1.FindChildControl('xmmc' + IntToStr(j - 1)).Width :=
                235;
              TQRLabel(DetailBand1.FindChildControl('ypyf' + IntToStr(j -
                1))).Caption := '';
              TQRLabel(DetailBand1.FindChildControl('xmmc' + IntToStr(j -
                1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring + ' '
                +
                trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring) + ' ' +
                trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
              //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end;
            sp_zxjl_cq_dy.Next;
          end;
        end;
        QRLabel2.Caption := pub_yymc + '����ע��ƻ�ִ�е�';
        DM_data.qry_pub.Close;
        DM_data.qry_pub.SQL.text := 'select * from sys_kscwsz where bqdm=' + ''''
          + pub_bqdm + '''' + ' and bcbh=' + '''' +
          trim(sp_jbxx.fieldbyname('bch').asstring) + '''';
        try
          DM_data.qry_pub.open;
        except

        end;

        QRLabel3.Caption := '����:' + sp_jbxx.fieldbyname('brxm').asstring;
        QRLabel20.Caption := '������:' +
          Trim(DM_data.qry_pub.FieldByName('yybch').asstring);
        QRLabel21.Caption := '�Ա�:' + sp_jbxx.fieldbyname('brxb').asstring;
        QRLabel26.Caption := '����:' +
          trim(sp_jbxx.fieldbyname('brnl').asstring);
        ny.Caption := FormatDateTime('yyyy', frm_func.curr_date) + '��';

        QRLabel61.Caption := '����:' + sp_jbxx.fieldbyname('brxm').asstring +
          '      ' +
          '������:' + Trim(DM_data.qry_pub.FieldByName('yybch').asstring) +
          '      ' +
          '����:' + Trim(sp_jbxx.fieldbyname('tmh').asstring);
        //'����:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
//QuickRep3.Prepare;
        QRLabel57.Caption := '���ҽ��:';
        QuickRep3.Preview;
      end;
    end
    else
    begin
      sp_zxjl_cq_dy.First;
      if sp_zxjl_cq_dy.RecordCount mod 9 <> 0 then
        y := trunc(sp_zxjl_cq_dy.RecordCount / 9) + 1
      else
        y := trunc(sp_zxjl_cq_dy.RecordCount / 9);
      count := sp_zxjl_cq_dy.RecordCount;
      for I := 1 to y do
      begin
        for j := 1 to 9 do
        begin
          if count < i * 9 then
          begin
            if j > (9 - (y * 9 - count)) then
            begin
              aControl := DetailBand2.FindChildControl('ksrqjy' + IntToStr(j -
                1));
              if aControl is TQRLabel then
                TQRLabel(aControl).Caption := '';
              aControl := DetailBand2.FindChildControl('kdysmcjy' + IntToStr(j -
                1));
              if aControl is TQRLabel then
                TQRLabel(aControl).Caption := '';
              DetailBand2.FindChildControl('qrgrimagejy' + IntToStr(j)).enabled
                := false;
              //  TQRLabel( DetailBand2.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
              TQRLabel(DetailBand2.FindChildControl('ypyfjy' + IntToStr(j -
                1))).Caption := '';
              //TQRLabel( DetailBand2.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
              TQRLabel(DetailBand2.FindChildControl('xmmcjy' + IntToStr(j -
                1))).caption := '';
            end
            else
            begin
              aControl := DetailBand2.FindChildControl('ksrqjy' + IntToStr(j -
                1));
              if aControl is TQRLabel then
                TQRLabel(aControl).Caption :=
                  sp_zxjl_cq_dy.FieldByName('ksrq').AsString;
              aControl := DetailBand2.FindChildControl('kdysmcjy' + IntToStr(j -
                1));
              if aControl is TQRLabel then
                TQRLabel(aControl).Caption :=
                  sp_zxjl_cq_dy.FieldByName('kdysmc').asstring;
              if sp_zxjl_cq_dy.FieldByName('fzph').asstring <> '' then
              begin
                DetailBand2.FindChildControl('QRgrImagejy' + IntToStr(j)).enabled
                  := true;
                DetailBand2.FindChildControl('QRgrImagejy' + IntToStr(j)).Top :=
                  TQRLabel(DetailBand2.FindChildControl('xmmcjy' + IntToStr(j -
                  1))).top;
                DetailBand2.FindChildControl('QRgrImagejy' + IntToStr(j)).left
                  := DetailBand2.FindChildControl('ypyfjy' + IntToStr(j -
                  1)).left
                  - 20;
                DetailBand2.FindChildControl('qrgrimagejy' + IntToStr(j)).height
                  := 30;
                TQRLabel(DetailBand2.FindChildControl('ypyfjy' + IntToStr(j -
                  1))).Caption :=
                  trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring)
                  + '  ' + trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
                TQRLabel(DetailBand2.FindChildControl('xmmcjy' + IntToStr(j -
                  1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring;
                //TQRLabel( DetailBand2.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
              end
              else
              begin
                DetailBand2.FindChildControl('qrgrimagejy' + IntToStr(j)).enabled
                  := false;
                DetailBand2.FindChildControl('xmmcjy' + IntToStr(j - 1)).Width
                  := 235;
                TQRLabel(DetailBand2.FindChildControl('ypyfjy' + IntToStr(j -
                  1))).Caption := '';
                TQRLabel(DetailBand2.FindChildControl('xmmcjy' + IntToStr(j -
                  1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring +
                  ' '
                  + trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring) + ' ' +
                  trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
                // TQRLabel( DetailBand2.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
              end;
              sp_zxjl_cq_dy.Next;
            end;
          end
          else
          begin
            aControl := DetailBand2.FindChildControl('ksrqjy' + IntToStr(j -
              1));
            if aControl is TQRLabel then
              TQRLabel(aControl).Caption :=
                sp_zxjl_cq_dy.FieldByName('ksrq').asstring;
            aControl := DetailBand2.FindChildControl('kdysmcjy' + IntToStr(j -
              1));
            if aControl is TQRLabel then
              TQRLabel(aControl).Caption :=
                sp_zxjl_cq_dy.FieldByName('kdysmc').asstring;
            if sp_zxjl_cq_dy.FieldByName('fzph').asstring <> '' then
            begin
              DetailBand2.FindChildControl('QRgrImagejy' + IntToStr(j)).enabled
                := true;
              DetailBand2.FindChildControl('QRgrImagejy' + IntToStr(j)).Top :=
                TQRLabel(DetailBand2.FindChildControl('xmmcjy' + IntToStr(j -
                1))).top;
              DetailBand2.FindChildControl('qrgrimagejy' + IntToStr(j)).left :=
                DetailBand2.FindChildControl('ypyfjy' + IntToStr(j - 1)).left -
                20;
              DetailBand2.FindChildControl('qrgrimagejy' + IntToStr(j)).height
                := 30;
              TQRLabel(DetailBand2.FindChildControl('ypyfjy' + IntToStr(j -
                1))).Caption := trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring)
                +
                '  ' + trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
              TQRLabel(DetailBand2.FindChildControl('xmmcjy' + IntToStr(j -
                1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring;
              //  TQRLabel( DetailBand2.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end
            else
            begin
              DetailBand2.FindChildControl('qrgrimagejy' + IntToStr(j)).enabled
                := false;
              DetailBand2.FindChildControl('xmmcjy' + IntToStr(j - 1)).Width :=
                235;
              TQRLabel(DetailBand2.FindChildControl('ypyfjy' + IntToStr(j -
                1))).Caption := '';
              TQRLabel(DetailBand2.FindChildControl('xmmcjy' + IntToStr(j -
                1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring + ' '
                +
                trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring) + ' ' +
                trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
              //  TQRLabel( DetailBand2.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end;
            sp_zxjl_cq_dy.Next;
          end;
        end;
        QRLabel2jy.Caption := pub_yymc + '����ע��ƻ�ִ�е�';
        DM_data.qry_pub.Close;
        DM_data.qry_pub.SQL.text := 'select * from sys_kscwsz where bqdm=' + ''''
          + pub_bqdm + '''' + ' and bcbh=' + '''' +
          trim(sp_jbxx.fieldbyname('bch').asstring) + '''';
        try
          DM_data.qry_pub.open;
        except

        end;

        QRLabel3jy.Caption := '����:' + sp_jbxx.fieldbyname('brxm').asstring;
        QRLabel20jy.Caption := '������:' +
          Trim(DM_data.qry_pub.FieldByName('yybch').asstring);
        QRLabel21jy.Caption := '�Ա�:' + sp_jbxx.fieldbyname('brxb').asstring;
        QRLabel26jy.Caption := '����:' +
          trim(sp_jbxx.fieldbyname('brnl').asstring);
        nyjy.Caption := FormatDateTime('yyyy', frm_func.curr_date) + '��';

        QRLabel61jy.Caption := '����:' + sp_jbxx.fieldbyname('brxm').asstring +
          '      ' +
          '������:' + Trim(DM_data.qry_pub.FieldByName('yybch').asstring) +
          '      ' +
          '����:' + Trim(sp_jbxx.fieldbyname('tmh').asstring);
        //'����:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
//QuickRep3.Prepare;
//QRLabel57.Caption := '���ҽ��:';
        QuickRep6.Preview;
      end;
    end;
  end;
end;

procedure Tfrm_yzinput.BitBtn8Click(Sender: TObject);
begin
  if qry_yz.FieldByName('zxbz').AsBoolean then
  begin
    proc_xzyf;
    qry_yz.Edit;
    if yzlb = '��ҩ' then
      qry_yz.FieldByName('czks').AsString := prv_zyfdm
    else if yzlb = '��ҩ' then
      qry_yz.FieldByName('czks').AsString := prv_cyfdm
    else if yzlb = '��ҩ' then
      qry_yz.FieldByName('czks').AsString := prv_xyfdm;
    qry_yz.Post;
  end;
end;

procedure Tfrm_yzinput.proc_xzyf;
begin
  if pub_xyxzyf then //��ҩѡ��ҩ��
  begin
    if (yzlb = 'ҩƷ') or (yzlb = 'ҩһ') then
    begin
      Prv_xyfdm := func_Show_yfxz('02'); //02 ��ҩ��
      if prv_xyfdm = '' then
      begin
        Application.MessageBox('��ʾ:��ѡ����ҩ��!', '��ʾ', 16);
        Exit;
      end;
    end
    else if (yzlb = '��ҩ') then
    begin
      prv_zyfdm := func_Show_yfxz('04'); //04 ��ҩ��
      if prv_zyfdm = '' then
      begin
        Application.MessageBox('��ʾ:��ѡ����ҩ��!', '��ʾ', 16);
        Exit;
      end;
    end
    else if (yzlb = '��ҩ') then
    begin
      prv_cyfdm := func_Show_yfxz('05'); //05 ��ҩ��
      if prv_cyfdm = '' then
      begin
        Application.MessageBox('��ʾ:��ѡ���ҩ��!', '��ʾ', 16);
        Exit;
      end;
    end;
  end
  else
  begin
    with qry_pub do
    begin
      Close;
      SQL.Text := 'select * from sys_ksdm where dm =' + #39 + pub_ksdm + #39;
      try
        open;
      except

      end;
      prv_xyfdm := FieldByName('xgks').AsString;
      prv_zyfdm := FieldByName('chyf').AsString;
      prv_cyfdm := FieldByName('cyyf').AsString;
    end;
    if (prv_zyfdm = '') or (prv_xyfdm = '') then
      Application.MessageBox('���ڱ�רҵ�ϰ���Ӧ����ҩ������ҩ��!', '��ʾ', 0
        + 48);
  end;
end;

procedure Tfrm_yzinput.BitBtn_downClick(Sender: TObject);
var
  id, xh: integer;
  sbookmark: Tbookmark;
begin
  qry_yz.DisableControls;
  sbookmark := qry_yz.GetBookmark;
  saveyz;
  qry_yz.GotoBookmark(Sbookmark);
  qry_yz.FreeBookmark(sbookmark);
  id := qry_yz.FieldByName('id').asinteger; //ҽ��ID
  xh := qry_yz.FieldByName('xh').asinteger;
  sp_set_xh.Close;
  sp_set_xh.Parameters.ParamByName('@zyh').value := zyh;
  sp_set_xh.Parameters.ParamByName('@dqid').value := id;
  sp_set_xh.Parameters.ParamByName('@dqxh').value := xh;
  sp_set_xh.Parameters.ParamByName('@tzfx').value := 2;
  sp_set_xh.execproc;
  refresh_yz;
  qry_yz.EnableControls;
  qry_yz.Locate('id', id, []);

end;

procedure Tfrm_yzinput.BitBtn_upClick(Sender: TObject);
var
  id, xh: integer;
  sbookmark: Tbookmark;
begin
  qry_yz.DisableControls;
  sbookmark := qry_yz.GetBookmark;
  saveyz;
  qry_yz.GotoBookmark(Sbookmark);
  qry_yz.FreeBookmark(sbookmark);
  id := qry_yz.FieldByName('id').asinteger;
  xh := qry_yz.FieldByName('xh').asinteger;
  sp_set_xh.Close;
  sp_set_xh.Parameters.ParamByName('@zyh').value := zyh;
  sp_set_xh.Parameters.ParamByName('@dqid').value := id;
  sp_set_xh.Parameters.ParamByName('@dqxh').value := xh;
  sp_set_xh.Parameters.ParamByName('@tzfx').value := 1;
  sp_set_xh.execproc;
  refresh_yz;
  qry_yz.EnableControls;
  qry_yz.Locate('id', id, []);

end;

procedure Tfrm_yzinput.btBZGLClick(Sender: TObject);
begin
  if zyh = '' then
  begin
    Application.MessageBox('û����Ҫ���뵥������������Ĳ���!', '��ʾ', 0 + 48);
    Exit;
  end;
  if Application.MessageBox('�Ƿ���뵥������������?',
    'ѯ��', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON1) = IDYES then
  begin
    try
      with DM_data.qry_pub do
      begin
        Close;
        SQL.Text := ' select *  from  zybl_dbzzlgl  where zyh = ''' + zyh +
          '''  ';
        try
          open;
        except

        end;
        if not IsEmpty then
        begin
          Application.MessageBox('�ò����Ѵ��ڵ�������Ϣ!', '��ʾ', 0 + 48);
          Exit;
        end;
        Append;
        FieldByName('zyh').AsString := zyh;
        FieldByName('tmh').AsString := tmh;
        FieldByName('brxm').AsString := brxm;
        FieldByName('brxb').AsString := sp_jbxx.FieldByName('brxb').AsString;
        FieldByName('brnl').AsString := sp_jbxx.FieldByName('brnl').AsString;
        FieldByName('ksdm').AsString := pub_ksdm;
        FieldByName('ksmc').AsString := pub_ksmc;
        FieldByName('ryrq').AsString := sp_jbxx.FieldByName('ryrq').AsString;
        FieldByName('ryzd').AsString := sp_jbxx.FieldByName('ryzd').AsString;
        FieldByName('ysxm').AsString := sp_jbxx.FieldByName('ysxm').AsString;
        //FieldByName( 'ysdm' ).AsString := sp_jbxx.FieldByName( 'dm' ).AsString;
        Post;
      end;
    except
      Application.MessageBox('���˵�������Ϣ����ʧ��!', '��ʾ', 0 + 48);
      Exit;
    end;
    Application.MessageBox('���˵�������Ϣ����ɹ�!', '��ʾ', 0 + 48);
  end;

end;

procedure Tfrm_yzinput.btn1Click(Sender: TObject);
begin
  if not sp_dryz.Active then
  begin
    sp_dryz.Close;
    sp_dryz.Parameters.ParamByName('@zyh').Value := zyh;
    sp_dryz.Parameters.ParamByName('@yzsx').Value := '';
    sp_dryz.Open;
  end;
  shyz;
end;

procedure Tfrm_yzinput.btn2Click(Sender: TObject);
var
  _id, _zhzxsj, _yzsx: string;
  _fzph: string;
  _yzsj: string;
  sczt: integer;
  yztzsj: TDateTime;
begin
  if
    Application.MessageBox( 'ֹͣԭ���г���ҽ������һ��ѡ��ֹͣҽ��ʱ�䣬' + '�Ƿ�ȷ��?', 'ѯ��', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON1 ) = IDYES
  then
  begin
    yztzsj := p_pub_sj.func_sjxz( );
    if yztzsj = strtodatetime( '1900-01-01' ) then
      Exit
    else
      tzyzsj := formatdatetime( 'yyyy-mm-dd hh:mm:ss', yztzsj );
    //ʱ��ֹͣҽ��
    sp_yzsj.Close;
    sp_yzsj.Parameters.ParamByName( '@scyzsj' ).Value := tzyzsj;
    sp_yzsj.ExecProc;
    _yzsj := formatdatetime( 'yyyymmdd',
      sp_yzsj.Parameters.ParamByName( '@scyzsj' ).Value );
    //ֹͣ���г���ҽ��
    if sp_dryz.State = dsInactive then
      sp_dryz.open;
    sp_dryz.First;
    while not sp_dryz.Eof do
    begin
      _yzsx := Trim( sp_dryz.FieldByName( 'yzsx' ).AsString );
      if ( not sp_dryz.FieldByName( 'tzbz' ).asboolean ) and
        ( sp_dryz.fieldbyname( 'zfrq' ).asdatetime <= 0 ) and
        ( sp_dryz.fieldbyname( 'id' ).AsString <> '' ) and
        //(sp_dryz.fieldbyname('kdrq').asdatetime <= yztzsj) and
      ( _yzsx = '����' ) then
      begin
        _id := sp_dryz.FieldByName( 'id' ).AsString;
        _zhzxsj := sp_dryz.FieldByName( 'zhzxsj' ).AsString;

        _fzph := sp_dryz.FieldByName( 'fzph' ).AsString;
        if _fzph <> '' then
        begin
          sp_tzyz.Close;
          sp_tzyz.Parameters.ParamByName( '@zyh' ).Value := zyh;
          sp_tzyz.Parameters.ParamByName( '@zxsj' ).Value := _yzsj;
          sp_tzyz.Parameters.ParamByName( '@tzyzsj' ).Value :=
            strtodatetime( tzyzsj );
          sp_tzyz.Parameters.ParamByName( '@czydm' ).Value := pub_czydm;
          sp_tzyz.Parameters.ParamByName( '@id' ).Value := 0;
          sp_tzyz.Parameters.ParamByName( '@fzph' ).Value := _fzph;
          sp_tzyz.Parameters.ParamByName( '@sczt' ).Value := 8;
          sp_tzyz.ExecProc;
          sczt := sp_tzyz.Parameters.ParamByName( '@sczt' ).Value;
          if sczt <> 0 then
            application.MessageBox( 'ҽ��ֹͣδ�ɹ��������²�������', '��ʾ��',
              mb_ok );
        end
        else
        begin
          sp_tzyz.Close;
          sp_tzyz.Parameters.ParamByName( '@zyh' ).Value := zyh;
          sp_tzyz.Parameters.ParamByName( '@zxsj' ).Value := _yzsj;
          sp_tzyz.Parameters.ParamByName( '@tzyzsj' ).Value :=
            strtodatetime( tzyzsj );
          sp_tzyz.Parameters.ParamByName( '@czydm' ).Value := pub_czydm;
          sp_tzyz.Parameters.ParamByName( '@id' ).Value := _id;
          sp_tzyz.Parameters.ParamByName( '@fzph' ).Value := '';
          sp_tzyz.Parameters.ParamByName( '@sczt' ).Value := 8;
          sp_tzyz.ExecProc;
          sczt := sp_tzyz.Parameters.ParamByName( '@sczt' ).Value;
          if sczt <> 0 then
            application.MessageBox( 'ҽ��ֹͣδ�ɹ��������²�������', '��ʾ��',
              mb_ok );
        end;

      end;
      sp_dryz.Next;
    end;
  end;
end;

procedure Tfrm_yzinput.btnReadJCClick(Sender: TObject);
begin
  sp_cx_drjcxm.ProcedureName := 'zyyz_cx_drjcxm';
  sp_cx_drjcxm.close;
  sp_cx_drjcxm.Parameters.Refresh;
  sp_cx_drjcxm.Parameters.ParamByName('@zyh').Value := zyh;
  sp_cx_drjcxm.Parameters.ParamByName('@kdsj').Value := dtp_Jc.DateTime;
  sp_cx_drjcxm.Open;
  if sp_cx_drjcxm.IsEmpty then
    Application.MessageBox('�޼�����뵥��', '����', MB_OK +
      MB_ICONINFORMATION);
end;

procedure Tfrm_yzinput.btnReadJYClick(Sender: TObject);
begin
  sp_cx_drjyxm.close;
  sp_cx_drjyxm.Parameters.Refresh;
  sp_cx_drjyxm.Parameters.ParamByName('@zyh').Value := zyh;
  sp_cx_drjyxm.Parameters.ParamByName('@kssqrq').Value := dtp_JY.DateTime;
  sp_cx_drjyxm.Parameters.ParamByName('@bqdm').Value := pub_bqdm;
  sp_cx_drjyxm.Parameters.ParamByName('@czydm').Value := pub_czydm;
  sp_cx_drjyxm.Open;
  if sp_cx_drjyxm.IsEmpty then
    Application.MessageBox('�޼������뵥��', '����', MB_OK +
      MB_ICONINFORMATION);
end;

procedure Tfrm_yzinput.btnyxsqClick(Sender: TObject);
begin
  Application.OnMessage := nil;
  try
    application.createform(Tfrm_yxsq, frm_yxsq);
    p_yxsq.zy_zyh := zyh;
    frm_yxsq.showmodal;
  finally
    qry_lxd.Close;
    qry_lxd.SQL.Text :=
      'select a.*,c.*,b.BLOOD_TYPE_NAME  ,case Rh when ''1'' then ''��'' else' +
      '''��'' end Rh_Rh,isnull(d.smallint,0) dybz,convert(bit,a.sign) sign_1,convert(bit,a.cancel_flag) cancel_flag_1  from BLOOD_APPLY a,BLOOD_COMPONENT b,sys_ksdm c,BLOOD_test d where a.DEPT_CODE=c.dm and a.PATIENT_ID=' + #39
      +
      zyh + #39 + 'and a.BLOOD_TYPE=b.BLOOD_TYPE and a.APPLY_NUM*=d.APPLY_NUM';
    qry_lxd.Open;
    frm_yxsq.free;
  end;
end;

procedure Tfrm_yzinput.btn_cyClick(Sender: TObject);
var
  i, y, j, count: Integer;
  aControl: TControl;
  v_yytj, v_lb, filter: string;
begin
  with sp_zxjl_cq_dy do
  begin
    Filtered := False;
    Close;
    Parameters.ParamByName('@zyh').Value :=
      Trim(sp_jbxx.fieldbyname('zyh').asstring);
    Parameters.ParamByName('@fs').Value := 0;
    Open;
  end;

  v_yytj := '';
  v_lb := '(lb=' + '''' + '��ҩ' + '''' + ' and  tzrq=null )' + ' or ';

  if v_yytj + v_lb = '' then
  begin
    filter := ' 1<>1 ';
  end
  else
  begin
    filter := v_yytj + v_lb + ' ( yytj=''�������'' )';
  end;

  sp_zxjl_cq_dy.Filter := filter;
  sp_zxjl_cq_dy.Filtered := True;
  if sp_zxjl_cq_dy.IsEmpty then
  begin
    Application.MessageBox('û�м�¼��', '��ʾ', 0 + 48);
    Exit;
  end;
  if not sp_zxjl_cq_dy.IsEmpty then
  begin
    sp_zxjl_cq_dy.First;
    if sp_zxjl_cq_dy.RecordCount mod 20 <> 0 then
      y := trunc(sp_zxjl_cq_dy.RecordCount / 20) + 1
    else
      y := trunc(sp_zxjl_cq_dy.RecordCount / 20);
    count := sp_zxjl_cq_dy.RecordCount;
    for I := 1 to y do
    begin
      for j := 1 to 20 do
      begin
        if count < y * 20 then
        begin
          if j > (20 - (i * 20 - count)) then
          begin
            aControl := QRBand7.FindChildControl('ksrq_' + IntToStr(j - 1));
            if aControl is TQRLabel then
              TQRLabel(aControl).Caption := '';
            aControl := QRBand7.FindChildControl('kdysmc_' + IntToStr(j - 1));
            if aControl is TQRLabel then
              TQRLabel(aControl).Caption := '';
            //TQRLabel( QRBand7.FindChildControl( 'xmmc_' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel(QRBand7.FindChildControl('xmmc_' + IntToStr(j - 1))).caption
              := '';
          end
          else
          begin
            aControl := QRBand7.FindChildControl('ksrq_' + IntToStr(j - 1));
            if aControl is TQRLabel then
              TQRLabel(aControl).Caption :=
                sp_zxjl_cq_dy.FieldByName('ksrq').AsString;
            aControl := QRBand7.FindChildControl('kdysmc_' + IntToStr(j - 1));
            if aControl is TQRLabel then
              TQRLabel(aControl).Caption :=
                sp_zxjl_cq_dy.FieldByName('kdysmc').asstring;
            if sp_zxjl_cq_dy.FieldByName('fzph').asstring <> '' then
            begin
              TQRLabel(QRBand7.FindChildControl('xmmc_' + IntToStr(j -
                1))).caption :=
                sp_zxjl_cq_dy.FieldByName('xmmc').Asstring;
            end
            else
            begin
              QRBand7.FindChildControl('xmmc_' + IntToStr(j - 1)).Width := 190;
              TQRLabel(QRBand7.FindChildControl('xmmc_' + IntToStr(j -
                1))).caption :=
                sp_zxjl_cq_dy.FieldByName('xmmc').Asstring + '  ' +
                trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
            end;
            sp_zxjl_cq_dy.Next;
          end;
        end
        else
        begin
          aControl := QRBand7.FindChildControl('ksrq_' + IntToStr(j - 1));
          if aControl is TQRLabel then
            TQRLabel(aControl).Caption :=
              sp_zxjl_cq_dy.FieldByName('ksrq').asstring;
          aControl := QRBand7.FindChildControl('kdysmc_' + IntToStr(j - 1));
          if aControl is TQRLabel then
            TQRLabel(aControl).Caption :=
              sp_zxjl_cq_dy.FieldByName('kdysmc').asstring;
          if sp_zxjl_cq_dy.FieldByName('fzph').asstring <> '' then
          begin
            TQRLabel(QRBand7.FindChildControl('xmmc_' + IntToStr(j - 1))).caption
              := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring;
          end
          else
          begin
            QRBand7.FindChildControl('xmmc_' + IntToStr(j - 1)).Width := 190;
            TQRLabel(QRBand7.FindChildControl('xmmc_' + IntToStr(j - 1))).caption
              :=
              sp_zxjl_cq_dy.FieldByName('xmmc').Asstring + '  ' +
              trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
          end;
          sp_zxjl_cq_dy.Next;
        end;
      end;
      DM_data.qry_pub.Close;
      DM_data.qry_pub.SQL.text := 'select * from sys_kscwsz where bqdm=' + ''''
        + pub_bqdm + '''' + ' and bcbh=' + '''' +
        trim(sp_jbxx.fieldbyname('bch').asstring) + '''';
      try
        DM_data.qry_pub.open;
      except

      end;
      QRLabel31.Caption := pub_yymc + 'ҽ��ִ�е�(��ҩ)';
      QRLabel32.Caption := '����:' + sp_jbxx.fieldbyname('brxm').asstring;
      QRLabel36.Caption := '����:' +
        Trim(DM_data.qry_pub.FieldByName('yybch').asstring);
      qrlbl_nf_tmh.Caption := 'סԺ��:' + sp_jbxx.fieldbyname('tmh').asstring;
      qrlbl_nfQRL_bq_cq.Caption := '����:' + pub_bqmc;
      QuickRep4.Prepare;
      ys.Caption := '��' + '   ' + inttostr(i) + '  ҳ';
      qrl_ks.Caption := '����:' + sp_jbxx.fieldbyname('brxm').asstring + '   ' +
        '����:' + Trim(DM_data.qry_pub.FieldByName('yybch').asstring) + '   ' +
        '����:' + pub_bqmc + '   ' + '����:' +
        Trim(sp_jbxx.fieldbyname('tmh').asstring);
      QuickRep4.Preview;
    end;
  end;

end;

{-------------------------------------------------------------------------------
  ������:    Tfrm_yzinput.btn_drljClick
  ����:      yansghuai
  ����:      2015.12.23
  ����:      Sender: TObject
  ����ֵ:    ��
-------------------------------------------------------------------------------}
procedure Tfrm_yzinput.btn_drljClick(Sender: TObject);
var
  zyzd, icd_10, ljid, sSql, dqrq, ljrq, jdid, dqjdid, mrrq, ljdrsj, mbdm,
    zgysdm: string;
  Frm_LCLJSJ: TFrm_LCLJSJ;
  vBBH, ljts, zxts, sczt, qnl, znl: Integer;
  zxrq, ljxzjg, _yzsj, _yzsx, _id, _zhzxsj, _fzph, _brxb, _brnl1, _brnl2,
    _brnl3, _ryts, _synl, zhrq: string;
  yztzsj: TDateTime;
  v_ksdm: string;
begin
  DM_data.qry_pub.close;
  DM_data.qry_pub.SQL.text := 'select * from zysf_zydj where  zyh=' + '''' + zyh
    + '''';
  try
    DM_data.qry_pub.open;
  except

  end;
  zgysdm := trim(DM_data.qry_pub.FieldByName('zgys').asstring);
  if Pos(pub_czydm, zgysdm) < 1 then
  begin
    Application.MessageBox('������ҽ�����ܵ���·��', '��ʾ', MB_OK +
      MB_ICONSTOP + MB_DEFBUTTON2);
    Exit;
  end;
  DM_data.qry_pub.close;
  DM_data.qry_pub.SQL.Text := 'select max(rq) rq from lclj_brljzx_mx where  zyh='
    + '''' + zyh + '''';
  try
    DM_data.qry_pub.open;
  except

  end;
  if trim(DM_data.qry_pub.FieldByName('rq').asstring) <> '' then
  begin
    zhrq := Trim(DM_data.qry_pub.FieldByName('rq').asstring);
    if zhrq > FormatDateTime('yyyyMMdd', Frm_func.curr_date) then
    begin
      Application.MessageBox('�Ѿ���ǰ���������·���������ٵ������·����',
        '��ʾ', MB_OK + MB_ICONWARNING);
      Exit;
    end
    else
    begin
      DM_data.qry_pub.close;
      DM_data.qry_pub.SQL.Text :=
        'select * from sys_xt_kg where rtrim(isnull(lcljdrsj,''''))<>''''';
      try
        DM_data.qry_pub.open;
      except

      end;
      if not DM_data.qry_pub.IsEmpty then
      begin
        ljdrsj := Copy(DM_data.qry_pub.FieldByName('lcljdrsj').asstring, 1, 2) +
          ':' +
          Copy(DM_data.qry_pub.FieldByName('lcljdrsj').asstring, 3, 2) + ':00';
        if FormatDateTime('hh:mm:ss', Frm_func.curr_date) < ljdrsj then
        begin
          Application.MessageBox(pchar('�ڵ���' + ljdrsj +
            '֮ǰ������ǰ����ڶ���·����'),
            '��ʾ', MB_OK + MB_ICONWARNING);
          Exit;
        end;

      end;

    end;

  end;
  byyy := '';
  yzbyyy := '';
  ljxzjg := '3';
  DM_data.qry_pub.close;
  DM_data.qry_pub.SQL.Text := 'select * from LCLJ_brlclj where zt=1 and zyh=' +
    '''' + zyh + '''';
  try
    DM_data.qry_pub.open;
  except

  end;
  if not DM_data.qry_pub.IsEmpty then
  begin
    ljid := DM_data.qry_pub.FieldByName('ljid').AsString;
  end
  else
  begin
    DM_data.qry_pub.close;
    DM_data.qry_pub.SQL.Text := 'select *,datediff(year,csrq,getdate()) brnl1,'
      +
      'datediff(month,csrq,getdate()) brnl2,datediff(day,csrq,getdate()) brnl3,' +
      'datediff(day,ryrq,getdate()) ryts from zysf_zydj where zyh=' + '''' + zyh
      + '''';
    try
      DM_data.qry_pub.open;
    except

    end;
    _brxb := Trim(DM_data.qry_pub.FieldByName('brxb').AsString);
    _brnl1 := Trim(DM_data.qry_pub.FieldByName('brnl1').AsString);
    _brnl2 := Trim(DM_data.qry_pub.FieldByName('brnl2').AsString);
    _brnl3 := Trim(DM_data.qry_pub.FieldByName('brnl3').AsString);
    _ryts := Trim(DM_data.qry_pub.FieldByName('ryts').AsString);
    qry_ljcx.Close;
    qry_ljcx.sql.text := 'select * from lclj_bricd10 where zyh=' + '''' + zyh +
      '''';
    qry_ljcx.Open;
    //    DM_data.qry_pub.close;
    //    DM_data.qry_pub.SQL.Text:='select * from sys_jbbm where icd_10='+
    //    ''''+trim(qry_ljcx.FieldByName('icd_10').AsString)+'''';
    //    DM_data.qry_pub.Open;
    icd_10 := trim(qry_ljcx.FieldByName('ICD_10').AsString);
    if icd_10 = '' then
    begin
      application.MessageBox('δ���ò���ICD10���֣����ܵ�����Ӧ·����', '��ʾ', 0
        + 48);
      Exit;
    end;
    DM_data.qry_pub.close;
    DM_data.qry_pub.SQL.Text := 'select * from LCLJ_LCLJBZ  where jbid=' + ''''
      + icd_10 + '''';
    try
      DM_data.qry_pub.open;
    except

    end;
    if DM_data.qry_pub.IsEmpty then
    begin
      application.MessageBox('�˲���û�ж�Ӧ���ٴ�·�������ܵ���·����', '��ʾ',
        0 + 48);
      Exit;
    end;
    ljid := DM_data.qry_pub.FieldByName('ljid').AsString;
    DM_data.qry_pub.close;
    DM_data.qry_pub.SQL.Text := 'select * from LCLJ_LCLJML  where ljid=' + ''''
      + ljid + '''';
    try
      DM_data.qry_pub.open;
    except

    end;
    if (DM_data.qry_pub.FieldByName('syxb').AsString = '1') and (_brxb = 'Ů')
      then
    begin
      application.MessageBox('�Ա�ƥ�䣬���ܵ���·����', '��ʾ', 0 + 48);
      exit;
    end
    else if (DM_data.qry_pub.FieldByName('syxb').AsString = '2') and (_brxb =
      '��') then
    begin
      application.MessageBox('�Ա�ƥ�䣬���ܵ���·����', '��ʾ', 0 + 48);
      exit;
    end;
    if trim(DM_data.qry_pub.FieldByName('synl').AsString) <> '' then
    begin
      _synl := trim(DM_data.qry_pub.FieldByName('synl').AsString);
      qnl := strtoint(copy(_synl, 1, pos('-', _synl) - 1));
      if Pos('��', _synl) > 0 then
      begin
        znl := strtoint(copy(_synl, pos('-', _synl) + 1, pos('��', _synl) -
          pos('-', _synl) - 1));
        if (strtoint(_brnl1) < qnl) or (strtoint(_brnl1) > znl) then
        begin
          application.MessageBox('���䲻ƥ�䣬���ܵ���·����', '��ʾ', 0 + 48);
          exit;
        end;
      end
      else if Pos('��', _synl) > 0 then
      begin
        znl := strtoint(copy(_synl, pos('-', _synl) + 1, pos('��', _synl) -
          pos('-', _synl) - 1));
        if (strtoint(_brnl2) < qnl) or (strtoint(_brnl2) > znl) then
        begin
          application.MessageBox('���䲻ƥ�䣬���ܵ���·����', '��ʾ', 0 + 48);
          exit;
        end;
      end
      else if Pos('��', _synl) > 0 then
      begin
        znl := strtoint(copy(_synl, pos('-', _synl) + 1, pos('��', _synl) -
          pos('-', _synl) - 1));
        if (strtoint(_brnl3) < qnl) or (strtoint(_brnl3) > znl) then
        begin
          application.MessageBox('���䲻ƥ�䣬���ܵ���·����', '��ʾ', 0 + 48);
          exit;
        end;
      end;

    end;
    if trim(DM_data.qry_pub.FieldByName('qzts').AsString) <> '0' then
    begin
      if DM_data.qry_pub.FieldByName('qzts').AsInteger < StrToInt(_ryts) then
      begin
        application.MessageBox('�����˵����޶����������ܵ���·����', '��ʾ', 0 +
          48);
        exit;
      end;
    end;
  end;

  v_ksdm := '';
  DM_data.qry_pub.close;
  DM_data.qry_pub.SQL.Text := 'select * from LCLJ_LCLJKS  where ljid=' + '''' +
    ljid + '''';
  try
    DM_data.qry_pub.open;
  except

  end;
  DM_data.qry_pub.First;
  while not DM_data.qry_pub.Eof do
  begin
    v_ksdm := v_ksdm + DM_data.qry_pub.FieldByName('ksid').AsString + ',';
    DM_data.qry_pub.Next;
  end;
  if v_ksdm <> '' then
  begin
    v_ksdm := ',' + v_ksdm;
  end;
  if (DM_data.qry_pub.IsEmpty) or (Pos(',' + pub_ksdm + ',', v_ksdm) > 0) then
  begin
    cxGrid1.Visible := True;
    cxGrid1.Align := alClient;
    sSql := 'Select * from LCLJ_LCLJBB where  ISNULL(SHSJ,0)<>0 and LJID=' + #39
      + ljid + #39;
    DM_data.qry_pub.Close;
    DM_data.qry_pub.SQL.text := sSql;
    try
      DM_data.qry_pub.open;
    except

    end;
    if DM_data.qry_pub.IsEmpty then
    begin
      application.MessageBox('�˲���·��û����ˣ�����ʹ�ã�', '��ʾ', 0 + 48);
      exit;
    end;
    vbbh := DM_data.qry_pub.FieldByName('bbh').AsInteger;
    dqrq := FormatDateTime('yyyyMMdd', Frm_func.curr_date);
    mrrq := FormatDateTime('yyyyMMdd', Frm_func.curr_date + 1);
    DM_data.qry_pub.Close;
    DM_data.qry_pub.SQL.text :=
      'select max(convert(datetime,rq)) rq,count(*) ts from lclj_brljzx where zyh=' + ''''
      + zyh + '''';
    try
      DM_data.qry_pub.open;
    except

    end;
    if Trim(DM_data.qry_pub.FieldByName('rq').AsString) = '' then
    begin
      ljrq := FormatDateTime('yyyyMMdd', Frm_func.curr_date);
      ljts := 1;
    end
    else
    begin
      ljrq := FormatDateTime('yyyyMMdd',
        DM_data.qry_pub.FieldByName('rq').AsDateTime + 1);
      ljts := DM_data.qry_pub.FieldByName('ts').AsInteger + 1;
      zxrq := FormatDateTime('yyyyMMdd',
        DM_data.qry_pub.FieldByName('rq').AsDateTime);
      zxts := DM_data.qry_pub.FieldByName('ts').AsInteger;
      //��ʼ�ж�ͷһ��·��ִ�����
      DM_data.qry_pub.Close;
      DM_data.qry_pub.SQL.text := 'select * from lclj_lcljjd where ljid=' + ''''
        + ljid + '''' +
        ' and ksts<=' + inttostr(zxts) +
        ' and case jsts when 0 then ksts else jsts end >=' + inttostr(zxts);
      try
        DM_data.qry_pub.open;
      except

      end;
      dqjdid := DM_data.qry_pub.FieldByName('jdid').AsString;
      DM_data.qry_pub.close;
      DM_data.qry_pub.SQL.text := 'select * from LCLJ_LCLJXM where ljid=' + ''''
        + ljid + '''' +
        ' and jdid=' + '''' + dqjdid + '''' +
        ' and zxfs=1 and xmid not in (select xmid from lclj_brljzx_mx where zyh='
        + '''' + zyh + '''' + ' and ' + ' rq=' + '''' + zxrq +
        ''' and zxjg=''1'') ';
      try
        DM_data.qry_pub.open;
      except

      end;
      if not DM_data.qry_pub.IsEmpty then
      begin
        Application.MessageBox('·�����ֱ����������ѡ�����', '����',
          MB_OK + MB_ICONWARNING);
        DM_data.qry_pub.close;
        DM_data.qry_pub.SQL.text := 'select * from LCLJ_LCLJXM where ljid=' +
          '''' + ljid + '''' +
          ' and jdid=' + '''' + dqjdid + '''' +
          ' and zxfs=1 and xmid not in (select xmid from lclj_brljzx_mx where zyh='
          + '''' + zyh + '''' + ' and ' + ' rq=' + '''' + zxrq +
          ''' and zxjg=''1'') ';
        try
          DM_data.qry_pub.open;
        except

        end;
        DM_data.qry_pub.First;
        while not DM_data.qry_pub.eof do
        begin
          byyy := byyy + DM_data.qry_pub.FieldByName('xmnr').asstring +
            '��δִ�С�' + #13 + #10;
          DM_data.qry_pub.Next;
        end;
        DM_data.qry_pub.close;
        DM_data.qry_pub.SQL.text := 'select * from LCLJ_LCLJXM where ljid=' +
          '''' + ljid + '''' +
          ' and jdid=' + '''' + dqjdid + '''' +
          ' and zxfs=4 and xmid in (select xmid from lclj_brljzx_mx where zyh='
          + '''' + zyh + '''' +
          ' and zxjg=''1'' group by xmid having count(*)>1) ';
        try
          DM_data.qry_pub.open;
        except

        end;
        DM_data.qry_pub.First;
        while not DM_data.qry_pub.eof do
        begin
          byyy := byyy + DM_data.qry_pub.FieldByName('xmnr').asstring +
            '��δִ�С�' + #13 + #10;
          DM_data.qry_pub.Next;
        end;
        DM_data.qry_pub.close;
        DM_data.qry_pub.SQL.text := 'select * from lclj_yzby where rq=' + '''' +
          zxrq + '''' + ' and zyh='
          + '''' + zyh + '''';
        try
          DM_data.qry_pub.open;
        except

        end;
        DM_data.qry_pub.First;
        while not DM_data.qry_pub.eof do
        begin
          if DM_data.qry_pub.FieldByName('bz').asstring = '����ҽ��' then
          begin
            yzbyyy := yzbyyy + '����ҽ����' +
              DM_data.qry_pub.FieldByName('yznr').asstring + #13 + #10;
          end;
          if DM_data.qry_pub.FieldByName('bz').asstring = 'δ��ҽ��' then
          begin
            yzbyyy := yzbyyy + '��������ҽ��δ�ã�' +
              DM_data.qry_pub.FieldByName('yyznr').asstring + #13 + #10;
          end;
          if DM_data.qry_pub.FieldByName('bz').asstring = '�޸�ҽ��' then
          begin
            yzbyyy := yzbyyy + '��ԭҽ����' +
              DM_data.qry_pub.FieldByName('yyznr').asstring + '  �޸�Ϊ��ҽ����'
              +
              DM_data.qry_pub.FieldByName('yznr').asstring + #13 + #10;
          end;
          DM_data.qry_pub.Next;
        end;
        ljxzjg := func_ljxz();
      end
      else
      begin
        DM_data.qry_pub.close;
        DM_data.qry_pub.SQL.text := 'select * from LCLJ_LCLJXM where ljid=' +
          '''' + ljid + '''' +
          ' and jdid=' + '''' + dqjdid + '''' +
          ' and zxfs=4 and xmid in (select xmid from lclj_brljzx_mx where zyh='
          + '''' + zyh + '''' +
          ' and zxjg=''1'' group by xmid having count(*)>1) ';
        try
          DM_data.qry_pub.open;
        except

        end;
        if not DM_data.qry_pub.IsEmpty then
        begin
          Application.MessageBox('·�����ֱ����������ѡ�����', '����',
            MB_OK + MB_ICONWARNING);
          DM_data.qry_pub.close;
          DM_data.qry_pub.SQL.text := 'select * from LCLJ_LCLJXM where ljid=' +
            '''' + ljid + '''' +
            ' and jdid=' + '''' + dqjdid + '''' +
            ' and zxfs=1 and xmid not in (select xmid from lclj_brljzx_mx where zyh='
            + '''' + zyh + '''' + ' and ' + ' rq=' + '''' + zxrq +
            ''' and zxjg=''1'') ';
          try
            DM_data.qry_pub.open;
          except

          end;
          DM_data.qry_pub.First;
          while not DM_data.qry_pub.eof do
          begin
            byyy := byyy + DM_data.qry_pub.FieldByName('xmnr').asstring +
              '��δִ�С�' + #13 + #10;
            DM_data.qry_pub.Next;
          end;
          DM_data.qry_pub.close;
          DM_data.qry_pub.SQL.text := 'select * from LCLJ_LCLJXM where ljid=' +
            '''' + ljid + '''' +
            ' and jdid=' + '''' + dqjdid + '''' +
            ' and zxfs=4 and xmid in (select xmid from lclj_brljzx_mx where zyh='
            + '''' + zyh + '''' +
            ' and zxjg=''1'' group by xmid having count(*)>1) ';
          try
            DM_data.qry_pub.open;
          except

          end;
          DM_data.qry_pub.First;
          while not DM_data.qry_pub.eof do
          begin
            byyy := byyy + DM_data.qry_pub.FieldByName('xmnr').asstring +
              '��δִ�С�' + #13 + #10;
            DM_data.qry_pub.Next;
          end;
          DM_data.qry_pub.close;
          DM_data.qry_pub.SQL.text := 'select * from lclj_yzby where rq=' + ''''
            + zxrq + '''' + ' and zyh='
            + '''' + zyh + '''';
          try
            DM_data.qry_pub.open;
          except

          end;
          DM_data.qry_pub.First;
          while not DM_data.qry_pub.eof do
          begin
            if DM_data.qry_pub.FieldByName('bz').asstring = '����ҽ��' then
            begin
              yzbyyy := yzbyyy + '����ҽ����' +
                DM_data.qry_pub.FieldByName('yznr').asstring + #13 + #10;
            end;
            if DM_data.qry_pub.FieldByName('bz').asstring = 'δ��ҽ��' then
            begin
              yzbyyy := yzbyyy + '��������ҽ��δ�ã�' +
                DM_data.qry_pub.FieldByName('yyznr').asstring + #13 + #10;
            end;
            if DM_data.qry_pub.FieldByName('bz').asstring = '�޸�ҽ��' then
            begin
              yzbyyy := yzbyyy + '��ԭҽ����' +
                DM_data.qry_pub.FieldByName('yyznr').asstring +
                '  �޸�Ϊ��ҽ����'
                +
                DM_data.qry_pub.FieldByName('yznr').asstring + #13 + #10;
            end;
            DM_data.qry_pub.Next;
          end;
          ljxzjg := func_ljxz();
        end
        else
        begin
          DM_data.qry_pub.close;
          DM_data.qry_pub.SQL.text := 'select * from lclj_yzby where rq=' + ''''
            + zxrq + '''' + ' and zyh='
            + '''' + zyh + '''';
          try
            DM_data.qry_pub.open;
          except

          end;
          if not DM_data.qry_pub.IsEmpty then
          begin
            DM_data.qry_pub.First;
            while not DM_data.qry_pub.eof do
            begin
              if DM_data.qry_pub.FieldByName('bz').asstring = '����ҽ��' then
              begin
                yzbyyy := yzbyyy + '����ҽ����' +
                  DM_data.qry_pub.FieldByName('yznr').asstring + #13 + #10;
              end;
              if DM_data.qry_pub.FieldByName('bz').asstring = 'δ��ҽ��' then
              begin
                yzbyyy := yzbyyy + '��������ҽ��δ�ã�' +
                  DM_data.qry_pub.FieldByName('yyznr').asstring + #13 + #10;
              end;
              if DM_data.qry_pub.FieldByName('bz').asstring = '�޸�ҽ��' then
              begin
                yzbyyy := yzbyyy + '��ԭҽ����' +
                  DM_data.qry_pub.FieldByName('yyznr').asstring +
                  '  �޸�Ϊ��ҽ����' +
                  DM_data.qry_pub.FieldByName('yznr').asstring + #13 + #10;
              end;
              DM_data.qry_pub.Next;
            end;
            Application.MessageBox('·�����ֱ����������ѡ�����', '����',
              MB_OK + MB_ICONWARNING);
            ljxzjg := func_ljxz();
          end
          else
          begin //�ޱ������
            ljxzjg := func_ljxz();
          end;
        end;
      end;
      //�����ж�ͷһ��·��ִ�����
    end;
    if ljxzjg = '0' then
    begin
      DM_data.qry_pub.close;
      DM_data.qry_pub.SQL.text := 'delete from lclj_brljby where zyh=' + '''' +
        zyh + '''' +
        ' and rq=' + '''' + zxrq + '''';
      DM_data.qry_pub.ExecSQL;
      DM_data.qry_pub.close;
      DM_data.qry_pub.SQL.text := 'insert into lclj_brljby select ' + '''' + zyh
        + '''' +
        ',' + '''' + zxrq + '''' + ',' + '''' + byyy + 'ҽ�����죺' + yzbyyy +
        '''' + ',' + '''�����˳�''';
      DM_data.qry_pub.ExecSQL;
      DM_data.qry_pub.close;
      DM_data.qry_pub.SQL.text := 'update lclj_brlclj set zt=0 where zyh=' + ''''
        + zyh + '''';
      DM_data.qry_pub.ExecSQL;
      DM_data.qry_pub.close;
      DM_data.qry_pub.SQL.text := 'insert into lclj_brljtc select ' + '''' + zyh
        + '''' +
        ',' + '''' + zxrq + '''' + ',' + '''' + byyy + 'ҽ�����죺' + yzbyyy +
        '''' + ',' + '''·�����˳�''';
      DM_data.qry_pub.ExecSQL;
      Exit;
    end
    else if ljxzjg = '1' then
    begin
      if Application.MessageBox('ѡ�����ֹͣ��ֹͣ���г���ҽ�����Ƿ����?',
        'ѯ��', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON1) = IDYES then
      begin
        DM_data.qry_pub.close;
        DM_data.qry_pub.SQL.text := 'delete from lclj_brljby where zyh=' + ''''
          + zyh + '''' +
          ' and rq=' + '''' + zxrq + '''';
        DM_data.qry_pub.ExecSQL;
        DM_data.qry_pub.close;
        DM_data.qry_pub.SQL.text := 'insert into lclj_brljby select ' + '''' +
          zyh + '''' +
          ',' + '''' + zxrq + '''' + ',' + '''' + byyy + 'ҽ�����죺' + yzbyyy +
          '''' + ',' + '''����ֹͣ''';
        DM_data.qry_pub.ExecSQL;
        yztzsj := p_pub_sj.func_sjxz();
        if yztzsj = strtodatetime('1900-01-01') then
          Exit
        else
          tzyzsj := formatdatetime('yyyy-mm-dd hh:mm:ss', yztzsj);
        //ʱ��ֹͣҽ��
        sp_yzsj.Close;
        sp_yzsj.Parameters.ParamByName('@scyzsj').Value := tzyzsj;
        sp_yzsj.ExecProc;
        _yzsj := formatdatetime('yyyymmdd',
          sp_yzsj.Parameters.ParamByName('@scyzsj').Value);

        //ֹͣ���г���ҽ��
        sp_dryz.First;
        while not sp_dryz.Eof do
        begin
          _yzsx := Trim(sp_dryz.FieldByName('yzsx').AsString);
          if (not sp_dryz.FieldByName('tzbz').asboolean) and
            (sp_dryz.fieldbyname('zfrq').asdatetime <= 0) and
            (sp_dryz.fieldbyname('id').AsString <> '') and
            (_yzsx = '����') then
          begin
            _id := sp_dryz.FieldByName('id').AsString;
            _zhzxsj := sp_dryz.FieldByName('zhzxsj').AsString;

            _fzph := sp_dryz.FieldByName('fzph').AsString;
            if _fzph <> '' then
            begin
              sp_tzyz.Close;
              sp_tzyz.Parameters.ParamByName('@zyh').Value := zyh;
              sp_tzyz.Parameters.ParamByName('@zxsj').Value := _yzsj;
              sp_tzyz.Parameters.ParamByName('@tzyzsj').Value :=
                strtodatetime(tzyzsj);
              sp_tzyz.Parameters.ParamByName('@czydm').Value := pub_czydm;
              sp_tzyz.Parameters.ParamByName('@id').Value := 0;
              sp_tzyz.Parameters.ParamByName('@fzph').Value := _fzph;
              sp_tzyz.Parameters.ParamByName('@sczt').Value := 8;
              sp_tzyz.ExecProc;
              sczt := sp_tzyz.Parameters.ParamByName('@sczt').Value;
              if sczt <> 0 then
                application.MessageBox('ҽ��ֹͣδ�ɹ��������²�������',
                  '��ʾ��', mb_ok);
            end
            else
            begin
              sp_tzyz.Close;
              sp_tzyz.Parameters.ParamByName('@zyh').Value := zyh;
              sp_tzyz.Parameters.ParamByName('@zxsj').Value := _yzsj;
              sp_tzyz.Parameters.ParamByName('@tzyzsj').Value :=
                strtodatetime(tzyzsj);
              sp_tzyz.Parameters.ParamByName('@czydm').Value := pub_czydm;
              sp_tzyz.Parameters.ParamByName('@id').Value := _id;
              sp_tzyz.Parameters.ParamByName('@fzph').Value := '';
              sp_tzyz.Parameters.ParamByName('@sczt').Value := 8;
              sp_tzyz.ExecProc;
              sczt := sp_tzyz.Parameters.ParamByName('@sczt').Value;
              if sczt <> 0 then
                application.MessageBox('ҽ��ֹͣδ�ɹ��������²�������',
                  '��ʾ��', mb_ok);
            end;

          end;
          sp_dryz.Next;
        end;

        if not qry_yz.active then
        begin
          refresh_yz;
        end;
        Exit;
      end;
    end
    else if ljxzjg = '2' then
    begin
      DM_data.qry_pub.close;
      DM_data.qry_pub.SQL.text := 'delete from lclj_brljby where zyh=' + '''' +
        zyh + '''' +
        ' and rq=' + '''' + zxrq + '''';
      DM_data.qry_pub.ExecSQL;
      DM_data.qry_pub.close;
      DM_data.qry_pub.SQL.text := 'insert into lclj_brljby select ' + '''' + zyh
        + '''' +
        ',' + '''' + zxrq + '''' + ',' + '''' + byyy + 'ҽ�����죺' + yzbyyy +
        '''' + ',' + '''�������''';
      DM_data.qry_pub.ExecSQL;
    end
    else if ljxzjg = '' then
    begin
      DM_data.qry_pub.close;
      DM_data.qry_pub.SQL.text := 'delete from lclj_brljby where zyh=' + '''' +
        zyh + '''' +
        ' and rq=' + '''' + zxrq + '''';
      DM_data.qry_pub.ExecSQL;
      Exit;
    end
    else if ljxzjg = '3' then
    begin
      DM_data.qry_pub.close;
      DM_data.qry_pub.SQL.text := 'delete from lclj_brljby where zyh=' + '''' +
        zyh + '''' +
        ' and rq=' + '''' + zxrq + '''';
      DM_data.qry_pub.ExecSQL;
      DM_data.qry_pub.close;
      DM_data.qry_pub.SQL.text := 'insert into lclj_brljby select ' + '''' + zyh
        + '''' +
        ',' + '''' + zxrq + '''' + ',' + '''' + byyy + '''' + ',' +
        '''�׶�����''';
      DM_data.qry_pub.ExecSQL;
    end;

    DM_data.qry_pub.Close;
    DM_data.qry_pub.SQL.text := 'select * from lclj_lcljjd where ljid=' + '''' +
      ljid + '''' +
      ' and ksts<=' + inttostr(ljts) +
      ' and case jsts when 0 then ksts else jsts end >=' + inttostr(ljts);
    try
      DM_data.qry_pub.open;
    except

    end;
    if DM_data.qry_pub.IsEmpty then
    begin
      application.MessageBox('סԺ�����ѳ���·��������·��������', '��ʾ', 0 +
        48);
      exit;
    end
    else
    begin
      jdid := DM_data.qry_pub.FieldByName('jdid').AsString;
    end;
    try
      qry_brljjd.Close;
      qry_brljjd.sql.Text := 'select * from lclj_brljzx where 1<>1';
      qry_brljjd.Open;
      qry_brljjd.Append;
      qry_brljjd['zyh'] := zyh;
      qry_brljjd['ljid'] := ljid;
      qry_brljjd['jdid'] := jdid;
      qry_brljjd['rq'] := ljrq;
      qry_brljjd['djr'] := pub_czydm;
      qry_brljjd['djrq'] := Frm_func.curr_date;
      qry_brljjd.Post;
      qry_brljjd.UpdateBatch(arall);

      DM_data.qry_pub.close;
      DM_data.qry_pub.sql.text := 'select * from LCLJ_brlclj where zt=1 and zyh='
        + '''' + zyh + '''';
      try
        DM_data.qry_pub.open;
      except

      end;
      if DM_data.qry_pub.IsEmpty then
      begin
        DM_data.qry_pub.close;
        DM_data.qry_pub.sql.Text := 'insert into LCLJ_brlclj select ' + '''' +
          ljid + '''' + ',' +
          '''' + zyh + '''' + ',1,' + inttostr(vbbh);
        DM_data.qry_pub.ExecSQL;
        refresh_yz_lclj;
      end;
      qry_ljzxmx.Close;
      qry_ljzxmx.SQL.Text := 'select * from lclj_brljzx_mx where 1<>1';
      qry_ljzxmx.open;
      qry_ljxmjc.close;
      qry_ljxmjc.sql.text := 'exec lclj_xz_lcljxm ' + '''' + ljid + '''' + ',' +
        '''' + jdid + '''' + ',' + inttostr(vbbh);
      qry_ljxmjc.open;
      qry_ljxmjc.Filtered := False;
      qry_ljxmjc.Filter := ' xmfl=0';
      qry_ljxmjc.Filtered := true;
      xzljyzid := '';
      if not qry_ljxmjc.IsEmpty then
      begin
        try
          application.createform(Tfrm_lcljyzxzdr, frm_lcljyzxzdr);
          frm_lcljyzxzdr.showmodal;
        finally
          frm_lcljyzxzdr.free;
        end;
      end;
      qry_ljxmjc.Filtered := False;
      qry_ljxmjc.First;
      while not qry_ljxmjc.eof do
      begin
        qry_lcljmbjc.Close;
        qry_lcljmbjc.SQL.text := 'select * from lclj_blmbdx where ztmc=' + ''''
          + ljid + '''' + ' and ' +
          'mblb=' + '''' + qry_ljxmjc.fieldbyname('xmid').asstring + '''';
        qry_lcljmbjc.open;
        if (not qry_lcljmbjc.IsEmpty) then
        begin
          sp_lcljdr.Close;
          sp_lcljdr.Parameters.Refresh;
          sp_lcljdr.Parameters.ParamByName('@mbh').value := ljid;
          sp_lcljdr.Parameters.ParamByName('@xmid').value :=
            qry_ljxmjc.fieldbyname('xmid').asstring;
          sp_lcljdr.Parameters.ParamByName('@tmh').value := tmh;
          sp_lcljdr.Parameters.ParamByName('@zyh').value := zyh;
          sp_lcljdr.Parameters.ParamByName('@ksdm').value := pub_ksdm;
          sp_lcljdr.Parameters.ParamByName('@xyfksdm').value := pub_zyxyfdm;
          sp_lcljdr.Parameters.ParamByName('@zyfksdm').value := pub_zyzyfdm;
          sp_lcljdr.Parameters.ParamByName('@kdys').value := pub_czydm;
          sp_lcljdr.Parameters.ParamByName('@cyfksdm').value := pub_zyzyfdm;
          sp_lcljdr.Parameters.ParamByName('@xzyzid').value := xzljyzid;
          sp_lcljdr.ExecProc;
          qry_cx.Close;
          qry_cx.SQL.text := 'select distinct fzph from zybl_zyyz where zyh=' +
            '''' + Trim(zyh) + '''' + ' and rtrim(fzph)<>'''' and zxbz=0';
          qry_cx.open;
          qry_cx.First;
          while not qry_cx.eof do
          begin
            fzbh := GetSJH(pub_czydm);
            DM_data.qry_pub.Close;
            DM_data.qry_pub.SQL.Text := 'update zybl_zyyz set fzph=' + '''' +
              fzbh + '''' + ' where zyh=' + '''' + Trim(zyh) + ''''
              + ' and fzph=' + '''' + trim(qry_cx.FieldByName('fzph').asstring)
              +
              '''';

            DM_data.qry_pub.ExecSQL;
            qry_cx.Next;
          end;
          lcljkdrq := Copy(ljrq, 1, 4) + '-' + Copy(ljrq, 5, 2) + '-' +
            Copy(ljrq, 7, 2) + ' 00:00:00';
          //refresh_yz_lclj;
          //saveyz_tj;
          //saveyz_lcljtj;
        end;
        qry_ljzxmx.Append;
        qry_ljzxmx['zyh'] := zyh;
        qry_ljzxmx['ljid'] := ljid;
        qry_ljzxmx['jdid'] := jdid;
        qry_ljzxmx['rq'] := ljrq;
        qry_ljzxmx['xmid'] := qry_ljxmjc.fieldbyname('xmid').asstring;
        qry_ljzxmx.Post;
        qry_dzblmbcx.Close;
        qry_dzblmbcx.SQL.text := 'select * from lclj_lcljxm where xmid=' + ''''
          +
          qry_ljxmjc.fieldbyname('xmid').asstring + '''' + ' and ' + 'ljid=' +
          '''' +
          ljid + '''' + ' and jdid=' + '''' + jdid +
          ''' and rtrim(isnull(mbdm,0))<>0';
        qry_dzblmbcx.Open;
        if not qry_dzblmbcx.IsEmpty then
        begin
          mbdm := qry_dzblmbcx.FieldByName('mbdm').AsString;
          dzblmbdr(mbdm);
        end;
        qry_ljxmjc.Next;
      end;
      refresh_yz_lclj;
      saveyz_tj;
      qry_ljzxmx.UpdateBatch(arall);
      application.MessageBox('�ò��˱���·���ɹ���', '��ʾ', 0 + 48);
    except
      application.MessageBox('�ò��˱���·��ʧ�ܣ�', '��ʾ', 0 + 48);
      DM_data.qry_pub.Close;
      DM_data.qry_pub.sql.text := 'delete from lclj_brljzx where zyh=' + '''' +
        zyh + '''' + ' and ' +
        ' rq=' + '''' + ljrq + '''';
      DM_data.qry_pub.ExecSQL;
      DM_data.qry_pub.Close;
      DM_data.qry_pub.sql.text := 'delete from lclj_brljzx_mx where zyh=' + ''''
        + zyh + '''' + ' and ' +
        ' rq=' + '''' + ljrq + '''';
      DM_data.qry_pub.ExecSQL;
      DM_data.qry_pub.Close;
      DM_data.qry_pub.sql.text := 'delete from lclj_yzby where zyh=' + '''' + zyh
        + '''' + ' and ' +
        ' rq=' + '''' + ljrq + '''';
      DM_data.qry_pub.ExecSQL;
      DM_data.qry_pub.Close;
      DM_data.qry_pub.sql.text := 'select * from lclj_brljzx where zyh=' + ''''
        + zyh + '''';
      try
        DM_data.qry_pub.open;
      except

      end;
      if DM_data.qry_pub.IsEmpty then
      begin
        DM_data.qry_pub.Close;
        DM_data.qry_pub.sql.text := 'delete from LCLJ_brlclj where zyh=' + ''''
          + zyh + '''' + ' and ' +
          ' zt=1 ';
        DM_data.qry_pub.ExecSQL;
      end;

    end;
    Frm_LCLJSJ := TFrm_LCLJSJ.Create(Application);
    Frm_LCLJSJ.ShowMXData_rq(ljid, vBBH, frm_yzinput.cxGrid1BandedTableView1,
      mrrq, zyh, frm_yzinput);
  end
  else
  begin
    application.MessageBox('û���ʺϱ�����ʹ�õ�·�������ܵ���·����', '��ʾ', 0
      + 48);
    Exit;
  end;
end;

procedure Tfrm_yzinput.dzblmbdr(mbdm: string);
var
  stream: TADOBlobStream;
  stream1: TFileStream;
  filename, mbsx: string;
  dqxdpd: string;
  kszg: string;
  mblb, mbmc: string;
begin
  if mbdm <> '' then
  begin
    DM_data.qry_pub.close;
    DM_data.qry_pub.SQL.text :=
      'select left(rtrim(dm),2) mblb,mbmc from sys_dzbl_mbmx where qybz=1 and zybz=1 and  mbdm=' +
      mbdm;
    try
      DM_data.qry_pub.open;
    except

    end;
    if DM_data.qry_pub.IsEmpty then
      Exit;
    mblb := DM_data.qry_pub.FieldByName('mblb').AsString;
    mbmc := DM_data.qry_pub.FieldByName('mbmc').AsString;
    kszg := '';
    if pub_yydm = '0147' then
    begin
      DM_data.qry_pub.close;
      DM_data.qry_pub.sql.Text :=
        'select * from sys_ksdm where rtrim(kszg)<>''''';
      try
        DM_data.qry_pub.open;
      except

      end;
      while not DM_data.qry_pub.eof do
      begin
        kszg := kszg + ',' + Trim(DM_data.qry_pub.FieldByName('kszg').AsString);
        DM_data.qry_pub.Next;
      end;
      if Pos(pub_czydm, kszg) > 0 then
      begin

      end
      else
      begin
        yzblys(mblb);
      end;
    end
    else
      yzblys(mblb);
    //��֤�����ǲ�����������ת��,����ҽ���Ƿ���������,��ȡ������ҽ��,���໤ҽ��
    if (mblb = '02') or (mblb = '11') then
    begin
      getpub_blys(mblb); //���̼�¼ȡ����ҽ��,������ҽ��
      if not pub_zgysbz then
      begin
        qry_brbl.Close;
        qry_brbl.SQL.Text := 'select * from zydzbl_zydzblmx where fldm=' + ''''
          + mblb + '''' +
          ' and zyh=' + '''' + zyh + '''';
        qry_brbl.Open;
        pub_blid := qry_brbl.FieldByName('blid').AsString;
        if qry_brbl.IsEmpty then
          setmode('add', mblb, mbdm, mbmc)
        else
        begin
          setmode('edit', mblb, mbdm, mbmc);
          openbcjl(mblb); //����Ѵ��ڲ��̼�¼,�ȴ򿪲��̼�¼�ں��������ģ��
        end;
        addbcjl := 'add'; //���̼�¼��Ϊ����״̬
        qry_brbl.Close;
      end
      else
      begin
        application.MessageBox('����������ǩ��ȷ����ɲ��̣�������ͨ��ģ�巽ʽ���Ӳ���,ֻ��ͨ���ϼ�ҽ���޸Ĳ���!', '��ʾ', 0 + 48);
        exit;
      end;
    end
    else
      setmode('add', mblb, mbdm, mbmc); //������¼��Ϊ����״̬
    if (pub_czyxm = bl_blys) or (pos(mblb, bl_bllb) > 0) or
      ((pub_yydm = '0147') and (Pos(pub_czydm, kszg) > 0)) or
      (pub_czyxm = bl_zzys) or ((pub_yydm = '0198') and (mblb = '03')) then
    begin
      filename := GetCurrentDir + '\' + 'otemp';
      frm_main.EMRPad301.CleanUndoBuffer; //��ձ༭������
      frm_main.EMRPad301.CleanClipboard; //��ռ�����
      try
        DM_data.qry_pub.Close;
        DM_data.qry_pub.sql.Text := 'select * from sys_dzbl_mbmx where mbdm=' +
          mbdm;
        try
          DM_data.qry_pub.open;
        except

        end;
        mbsx := DM_data.qry_pub.FieldByName('mbsx').AsString;
        stream := TADOBlobStream.Create(DM_data.qry_pub.FieldByName('mbwj') as
          TBlobField, bmRead);
        stream.Position := 0;
        stream1 := TFileStream.Create(filename, fmCreate);
        stream1.Position := 0;
        stream1.CopyFrom(stream, stream.Size);
      finally
        stream1.Free;
        stream.Free;
      end;
      if (mblb = '02') or (mblb = '11') then
      begin
        frm_main.EMRPad301.SetDocumentMode(1); //����༭״̬
        frm_main.EMRPad301.SetSel(-1, -1, 0, 0, 0, -1, -1, 0, 0, 0); //���ļ�β
        blbcpdid := frm_main.EMRPad301.GetBaseLineCount;
        //���ص�ǰ�ĵ���������¼����Ƭ��ID
        if editmode = 'add' then
          frm_main.EMRPad301.FileOpen(filename, 0)
        else
          frm_main.EMRPad301.FileInsert(filename, 0);
      end
      else
        frm_main.EMRPad301.FileOpen(filename, 0);
      savedzbl(mbdm, mblb);
      frm_func.func_in_zyblmx_blsjzkmx(tmh, zyh, mbsx);
    end
    else
    begin
      if (bl_bllb = '02') then
        application.MessageBox(pchar('���ǣ�[' + trim(brxm) +
          ']����ִ��ҽ��,��ֻ���ڲ�������м��벡��!'), '��ʾ', 0 + 48)
      else if bl_bllb = ',03,07' then
        application.MessageBox(pchar('���ǣ�[' + trim(brxm) +
          ']������ҽ��,��ֻ��������,֪��ͬ����������м��벡��!'), '��ʾ', 0 +
          48)
      else if bl_bllb = '04' then
        application.MessageBox(pchar('���ǣ�[' + trim(brxm) +
          ']�Ļ���ҽ��,��ֻ���ڻ��ﲡ������м��벡��!'), '��ʾ', 0 + 48)
      else if bl_bllb = ',05,06' then
        application.MessageBox(pchar('���ǣ�[' + trim(brxm) +
          ']��ICUҽ��,��ֻ���ڻ���������м��벡��!'), '��ʾ', 0 + 48)
      else
        application.MessageBox(pchar('�㲻�ǣ�[' + trim(brxm) + ']�Ĳ���ҽ��!'),
          '��ʾ', 0 + 48);
    end;
  end
  else
    application.MessageBox('û��ģ�岻�����ɲ���!', '��ʾ', 0 + 48);
end;

procedure Tfrm_yzinput.savedzbl(mbdm, mblb: string);
var
  stream, streamxml: TADOBlobStream;
  filename: string;
  linecount: integer;
  tsxx, zklb, lbdm, kszg: string;
  v_mbdm: string;
  xh: Real;
const
  hc = Chr(13) + chr(10);
begin
  //  v_zksm:='';
  //  DM_data.qry_pub.close;
  //  DM_data.qry_pub.SQL.text:='select * from zydzbl_zydzblmx where zyh='+''''+pub_zyh+
  //  ''''+' and blid='+''''+pub_blid+'''';
  //  DM_data.qry_pub.Open;
  //  mbdm:=DM_data.qry_pub.FieldByName('mbdm').AsString;
  //  DM_data.qry_pub.close;
  //  DM_data.qry_pub.SQL.text:='select * from sys_dzbl_mbmx where mbdm='+''''+mbdm+'''';
  //  DM_data.qry_pub.Open;
  //  zklb:=DM_data.qry_pub.FieldByName('psdm').AsString;
  //  if zklb='' then
  //  begin
  //    zklb:='00';
  //    xh:=0;
  //    jkjc(0,'00',pub_brxb);
  //  end
  //  else
  //  begin
  //    jkjc(0,'00',pub_brxb);
  //    DM_data.qry_pub.close;
  //    DM_data.qry_pub.SQL.text:='select * from zydzbl_psbz_xx where lb='+''''+zklb+''' order by xh';
  //    DM_data.qry_pub.Open;
  //    DM_data.qry_pub.First;
  //    while not DM_data.qry_pub.eof do
  //    begin
  //      jkjc(DM_data.qry_pub.FieldByName('xh').AsFloat,zklb,pub_brxb);
  //      DM_data.qry_pub.Next;
  //    end;
  //  end;
  //  tsxx:=Trim(v_zksm);
  //  if tsxx=''  then
  //  begin
  //  end
  //  else
  //  begin
  //     application.messagebox(PChar(tsxx), '��ʾ', mb_ok);
  //  end;

  filename := GetCurrentDir + '\' + 'stemp';
  if (mblb = '02') and (addbcjl = 'add') then //���̼�¼����Ƭ�λ���
  begin
    DM_data.qry_pub.Close;
    DM_data.qry_pub.SQL.Text :=
      'select max(bcid) maxid from zydzbl_zybcjlmx where zyh=' + '''' + zyh +
      '''';
    try
      DM_data.qry_pub.open;
    except

    end;
    if DM_data.qry_pub.FieldByName('maxid').asstring = '' then
      bl_bcid := 1
    else
      bl_bcid := DM_data.qry_pub.FieldByName('maxid').asinteger + 1;
    frm_main.EMRPad301.universalboolfunction('', '', 15, 1); //�����޶�����
    frm_main.EMRPad301.universalboolfunction('', '', 47, bl_bcid);
    //���ò���Ƭ�κ�
  end;
  linecount := frm_main.EMRPad301.GetBaseLineCount;
  frm_main.EMRPad301.SetSel(0, -1, 0, 0, 0, linecount - 1, -1, linecount - 1, 0,
    0); //ѡ��ȫ���ĵ�
  frm_main.EMRPad301.EditLineEditMode; //��ȫ���ĵ���ɿɱ༭״̬
  frm_main.EMRPad301.FileSaveAs(FileName, 0, 0);
  frm_main.EMRPad301.FileSaveAs(FileName + 'xml', 4, 0);
  qry_up_dlbl.Close;
  qry_up_dlbl.Parameters.ParamByName('zy_blid').Value := pub_blid;
  qry_up_dlbl.Parameters.ParamByName('zy_zyh').Value := zyh;
  qry_up_dlbl.Open;
  if editmode = 'add' then
  begin
    qry_up_dlbl.Append;
    qry_up_dlbl['fldm'] := pub_mbdldm;
    qry_up_dlbl['mbdm'] := pub_mbid;
    qry_up_dlbl['blys'] := pub_czyxm;
    DM_data.qry_pub.Close;
    DM_data.qry_pub.SQL.Text :=
      'select max(blid) maxid from zydzbl_zydzblmx where zyh=' + '''' + zyh +
      '''';
    try
      DM_data.qry_pub.open;
    except

    end;
    if DM_data.qry_pub.FieldByName('maxid').AsString = '' then
      pub_blid := '001'
    else
      pub_blid :=
        formatex(strtoint(DM_data.qry_pub.FieldByName('maxid').AsString) + 1,
        3);
    if (mblb = '02') then
      qry_up_dlbl['blmc'] := '���̼�¼' + '.' + pub_blid
    else if (mblb = '11') then
      qry_up_dlbl['blmc'] := '����������'
    else
      qry_up_dlbl['blmc'] := pub_filename + '.' + pub_blid;
    locatename := pub_filename + '.' + pub_blid;
    qry_up_dlbl['zyh'] := zyh;
    qry_up_dlbl['blid'] := pub_blid;
    qry_up_dlbl['tmh'] := tmh;
    qry_up_dlbl['brxm'] := brxm;
    qry_up_dlbl['blrq'] := Frm_func.curr_date;
  end
  else if editmode = 'edit' then
    qry_up_dlbl.edit;
  //ȡ����Ȩҽ��
  DM_data.qry_pub.Close;
  DM_data.qry_pub.SQL.Text := 'select * from zydzbl_blys where zyh=' + '''' + zyh
    + '''';
  try
    DM_data.qry_pub.open;
  except

  end;
  if mblb >= '02' then
    bl_blys := pub_czyxm
  else
    bl_blys := trim(DM_data.qry_pub.FieldByName('blys').AsString);
  bl_zzys := trim(DM_data.qry_pub.FieldByName('zzys').AsString);
  bl_zgys := trim(DM_data.qry_pub.FieldByName('zgys').AsString);
  if (mblb <> '02') then
  begin
    if ((pub_yydm = '0015') or (pub_yydm = '0013')) and (mblb = '04') then
    begin

    end
    else
    begin
      if (qry_up_dlbl.FieldByName('blys').asstring <> pub_czyxm) and (editmode
        <>
        'add') then
      begin
        if pub_yydm = '0147' then
        begin
          DM_data.qry_pub.close;
          DM_data.qry_pub.sql.Text :=
            'select * from sys_ksdm where rtrim(kszg)<>''''';
          try
            DM_data.qry_pub.open;
          except

          end;
          while not DM_data.qry_pub.eof do
          begin
            kszg := kszg + ',' +
              Trim(DM_data.qry_pub.FieldByName('kszg').AsString);
            DM_data.qry_pub.Next;
          end;
          if Pos(pub_czydm, kszg) > 0 then
          begin

          end
          else
          begin
            Exit;
          end;
        end
        else
          Exit;
      end;

    end;
  end;
  if ((pub_yydm = '0015') or (pub_yydm = '0013')) and (mblb = '04') then
  begin

  end
  else
    qry_up_dlbl['blys'] := bl_blys;
  qry_up_dlbl['zzys'] := bl_zzys;
  qry_up_dlbl['zgys'] := bl_zgys;
  try
    stream := TADOBlobStream.Create(qry_up_dlbl.FieldByName('blwj') as
      TBlobField, bmWrite);
    stream.LoadFromFile(filename);
    streamxml := TADOBlobStream.Create(qry_up_dlbl.FieldByName('xmlwj') as
      TBlobField, bmWrite);
    streamxml.LoadFromFile(filename + 'xml');
  finally
    stream.Free;
    streamxml.Free;
  end;
  qry_up_dlbl.Post;
  frm_main.EMRPad301.SetDocumentMode(3);
  if mblb = '02' then
    savedzblbcjl; //д�벡�̼�¼
  if mblb = '11' then
    locatename := '����������';
  //locatedzbl; // ��λ�༭��Ӧ���Ӳ���
  //onshowbz := false;
  //if copy(pub_key, 1, 2) = '02' then
 //   locatebcpd; //��λ���̼�¼
  addbcjl := 'edit';
end;

procedure Tfrm_yzinput.savedzblbcjl;
var
  sctext: string;
  qh: integer;
begin
  qh := frm_main.EMRPad301.GetBaseLineCount - bc_count;
  sp_up_bcjlmx.Close;
  sp_up_bcjlmx.Parameters.ParamByName('@zyh').Value := zyh;
  sp_up_bcjlmx.Parameters.ParamByName('@blid').Value := pub_blid;
  sp_up_bcjlmx.Parameters.ParamByName('@blbcpdid').Value := blbcpdid;
  sp_up_bcjlmx.Parameters.ParamByName('@blbcmc').Value := pub_filename + '.' +
    inttostr(bl_bcid);
  sp_up_bcjlmx.Parameters.ParamByName('@blczy').Value := pub_czyxm;
  if addbcjl = 'add' then
  begin
    sp_up_bcjlmx.Parameters.ParamByName('@clfs').Value := '11';
    locatename := pub_filename + '.' + inttostr(bl_bcid);
  end
  else
  begin
    sp_up_bcjlmx.Parameters.ParamByName('@clfs').Value := '22';
    sp_up_bcjlmx.Parameters.ParamByName('@blbcpdid').Value := qh;
  end;
  sp_up_bcjlmx.Parameters.ParamByName('@bcid').Value := bl_bcid;
  sp_up_bcjlmx.Parameters.ParamByName('@sctext').Value := '';
  sp_up_bcjlmx.ExecProc;
  sctext := sp_up_bcjlmx.Parameters.ParamByName('@sctext').Value;
  if sctext <> '' then
    application.MessageBox(pchar(sctext), '��ʾ', 0 + 16);
end;

procedure Tfrm_yzinput.openbcjl(mblb: string);
var
  stream: TADOBlobStream;
  stream1: TFileStream;
  filename: string;
begin
  filename := GetCurrentDir + '\' + 'etemp';
  DM_data.qry_pub.Close;
  DM_data.qry_pub.SQL.Text := 'select * from zydzbl_zydzblmx where fldm=' + ''''
    + mblb + '''' +
    ' and zyh=' + '''' + zyh + '''';
  try
    DM_data.qry_pub.open;
  except

  end;
  try
    stream := TADOBlobStream.Create(DM_data.qry_pub.FieldByName('blwj') as
      TBlobField, bmRead);
    stream.Position := 0;
    stream1 := TFileStream.Create(filename, fmCreate);
    stream1.Position := 0;
    stream1.CopyFrom(stream, stream.Size);
  finally
    stream1.Free;
    stream.Free;
  end;
  frm_main.EMRPad301.FileOpen(filename, 0);
end;

procedure Tfrm_yzinput.setmode(mode, mblb, mbdm, mbmc: string);
begin
  if mode = 'add' then
  begin
    editmode := 'add';
    frm_main.EMRPad301.FileNew;
    pub_mbdldm := mblb;
    pub_mbid := StrToInt(mbdm);
    pub_filename := mbmc;
  end;
  if mode = 'edit' then
  begin
    editmode := 'edit';
    pub_mbdldm := qry_brbl.FieldByName('fldm').AsString;
    pub_mbid := qry_brbl.FieldByName('mbdm').Asinteger;
    //    qry_brbl.SQL.Text;
    //    qry_mbmx.sql.Text;
    if mblb = '02' then
      pub_filename := mbmc
    else
      pub_filename := qry_brbl.FieldByName('blmc').AsString;
  end;
  frm_main.EMRPad301.universalboolfunction('', '', 46, 1);
end;

procedure Tfrm_yzinput.getpub_blys(mblb: string);
begin
  if (mblb = '02') then
  begin
    DM_data.qry_pub.Close;
    DM_data.qry_pub.SQL.Text := 'select * from zydzbl_blys where zyh=' + '''' +
      zyh + '''';
    try
      DM_data.qry_pub.open;
    except

    end;
    if DM_data.Qry_pub.IsEmpty then
    begin
      Application.MessageBox('û������ҽ����Ȩ!���Ƚ��벡��ҽ������ҽ����Ȩ!',
        '��ʾ', 0 + 48);
      exit;
    end;
    pub_blys := trim(DM_data.qry_pub.FieldByName('blys').AsString);
    pub_zzys := trim(DM_data.qry_pub.FieldByName('zzys').AsString);
    pub_zgys := trim(DM_data.qry_pub.FieldByName('zgys').AsString);
    pub_ssys := trim(DM_data.qry_pub.FieldByName('ssysdm').AsString);
    pub_jfys := trim(DM_data.qry_pub.FieldByName('jfysdm').AsString);
    pub_hzys := trim(DM_data.qry_pub.FieldByName('hzysdm').AsString);
    DM_data.qry_pub.Close;
    DM_data.qry_pub.SQL.Text := 'select * from zydzbl_zydzblmx where fldm=' +
      '''' + mblb + '''' +
      ' and zyh=' + '''' + zyh + '''';
    try
      DM_data.qry_pub.open;
    except

    end;
    pub_blysbz := DM_data.qry_pub.FieldByName('blysqmbz').AsBoolean;
    pub_zzysbz := DM_data.qry_pub.FieldByName('zzysqmbz').AsBoolean;
    pub_zgysbz := DM_data.qry_pub.FieldByName('zgysqmbz').AsBoolean;
  end
  else
  begin
    pub_blysbz := bl_blysbz;
    pub_zzysbz := bl_zzysbz;
    pub_zgysbz := bl_zgysbz;
    pub_blys := bl_blys;
    pub_zzys := bl_zzys;
    pub_zgys := bl_zgys;
  end;
end;

procedure Tfrm_yzinput.yzblys(mblb: string);
var
  blysdm, zzysdm, zgysdm, ksdm, bqdm: string;
begin
  DM_data.qry_pub.Close;
  DM_data.qry_pub.SQL.Text := 'select * from zydzbl_blys where zyh=' + '''' + zyh
    + '''';
  try
    DM_data.qry_pub.open;
  except

  end;
  bl_blys := trim(DM_data.qry_pub.FieldByName('blys').AsString);
  bl_zzys := trim(DM_data.qry_pub.FieldByName('zzys').AsString);
  blysdm := trim(DM_data.qry_pub.FieldByName('blysdm').AsString);
  zzysdm := trim(DM_data.qry_pub.FieldByName('zzysdm').AsString);
  zgysdm := trim(DM_data.qry_pub.FieldByName('zgysdm').AsString);
  bl_ssys := trim(DM_data.qry_pub.FieldByName('ssysdm').AsString);
  bl_jfys := trim(DM_data.qry_pub.FieldByName('jfysdm').AsString);
  bl_hzys := trim(DM_data.qry_pub.FieldByName('hzysdm').AsString);
  bl_mzys := trim(DM_data.qry_pub.FieldByName('mzysdm').AsString);
  DM_data.qry_pub.close;
  DM_data.qry_pub.SQL.Text := 'select * from sys_czy where dm in (' + #39 +
    zzysdm + #39 + ',' + #39 + zgysdm + #39 +
    ',' + #39 + blysdm + #39 + ',' + #39 + pub_czydm + #39 + ',' + #39 + bl_mzys
    + #39 + ')';
  try
    DM_data.qry_pub.Open;
  except

  end;
  if not ((pos(pub_czydm, bl_mzys) > 0) or (pos(pub_czydm, bl_ssys) > 0) or
    (pos(pub_czydm, bl_jfys) > 0)
    or (pos(pub_czydm, bl_hzys) > 0)) then
    //��ǰҽ�����ǲ�������,������icuҽ��,����ҽ��
  begin
    if (mblb = '03') and (pub_yydm = '0198') then
    begin

    end
    else
    begin
      DM_data.qry_pub.Locate('dm', blysdm, []);
      if pub_ksdm <> trim(DM_data.qry_pub.FieldByName('ksdm').AsString) then
      begin
        application.MessageBox('����ҽ����������ҵ���,��������������ת�벡��,���ȵ�������ҽ��', '��ʾ', 0 + 48);
        Exit;
      end;
      DM_data.qry_pub.Locate('dm', zzysdm, []);
      if pub_ksdm <> trim(DM_data.qry_pub.FieldByName('ksdm').AsString) then
      begin
        application.MessageBox('����ҽ����������ҵ���,��������������ת�벡��,���ȵ�������ҽ��', '��ʾ', 0 + 48);
        exit;
      end;
      DM_data.qry_pub.Locate('dm', zgysdm, []);
      if pub_ksdm <> trim(DM_data.qry_pub.FieldByName('ksdm').AsString) then
      begin
        application.MessageBox('�������ܲ�������ҵ���,��������������ת�벡��,���ȵ�����������', '��ʾ', 0 + 48);
        abort;
      end;
    end;
  end;
  DM_data.qry_pub.Locate('dm', pub_czydm, []);
  ksdm := trim(DM_data.qry_pub.FieldByName('ksdm').AsString);
  //����Ա��ǰ���Ҵ���
  DM_data.qry_pub.Close;
  DM_data.qry_pub.SQL.Text := 'select * from sys_bqzyfl where bqzydm=' + #39 +
    ksdm + #39;
  try
    DM_data.qry_pub.Open;
  except

  end;
  bqdm := trim(DM_data.qry_pub.FieldByName('bqdm').AsString);
  bl_bllb := '';
  if (pub_czydm = zzysdm) or (pub_czydm = blysdm) or (pub_czyxm = bl_blys) or
    (pub_czyxm = bl_zzys) then
  else
  begin
    if (mblb = '03') and (pub_yydm = '0198') then
    begin
      bl_bllb := '03';
    end
    else
    begin
      if ((pub_bqdm = bqdm) and (pub_czydm <> bl_mzys)) and ((mblb = '02') or
        (mblb = '11')) then
      begin
        bl_bllb := ',02,11';
      end
      else if ((pos(pub_czydm, bl_ssys) > 0) or (pub_czydm = bl_mzys)) and ((mblb
        = '03') or (mblb = '07')) then
        //�ǲ�������ҽ����������ҽ����ʹ��03�����ģ��
        bl_bllb := ',03,07,02'
      else if (pos(pub_czydm, bl_jfys) > 0) then
        //and  ((copy(pub_key, 1, 2) = '05') or (copy(pub_key, 1, 2) = '06') ) then
        bl_bllb := ',05,06,02'
      else if (pos(pub_czydm, bl_hzys) > 0) and (mblb = '04') then
        bl_bllb := '04,02'
      else if (mblb = '05') then
        bl_bllb := '05'
      else
      begin
        application.MessageBox('�ò��˵�����ҽ��û������������ò��˲�����Ȩ��,����Ȩ¼�벡��!', '��ʾ', 0 + 48);
        exit;
      end;
    end;
  end;
end;

procedure Tfrm_yzinput.bt_exitClick(Sender: TObject);
begin
  close;
end;

procedure Tfrm_yzinput.ad_ggdisplay;
begin

  //  try
  //    richedit2.Lines.Clear;
  //    richedit1.readonly := false;
  //    richedit1.lines.clear;
  //    adodataset1.First;
  //    while not ADODataSet1.eof do
  //    begin
  //      try
  //        richedit2.lines.LoadFromStream( TADOBlobStream.Create( ADODataSet1.FieldByName( 'tsnr' ) as TBlobField, bmRead ) );
  //        richedit2.SelectAll;
  //        richedit2.CopyToClipboard;
  //        richedit1.PasteFromClipboard;
  //        adodataset1.next;
  //      except
  //      end
  //    end;
  //  except
  //  end;
  //  RichEdit1.ReadOnly := True;
  //  richedit1.SelStart := richedit1.Lines.Count;
  //  adodataset1.close;
end;

procedure Tfrm_yzinput.HideSomething();
var
  i: integer;
begin
  self.WindowState := wsNormal;
  //
  for I := 0 to zz.PageCount - 1 do
  begin
    if zz.Pages[i].Name <> 'Tab_yp' then
      zz.Pages[i].tabVisible := false;
  end;
  Panel7.Visible := false; //��
  panel3.Visible := false; //��
  panel12.visible := false; //��

  pnl_lclj.visible := true;

  self.Width := 1000;
  self.Height := 600;
  self.Left := (Screen.Width - self.Width) div 2;
  self.Top := (Screen.Height - self.Height) div 2;
end;

procedure Tfrm_yzinput.FormShow(Sender: TObject);
begin
  showForm;
end;

procedure Tfrm_yzinput.grid_ksDblClick(Sender: TObject);
begin
  recno := ScrollBox4.VertScrollBar.Position;
  grid_yzlr.SetFocus;
  ScrollBox4.VertScrollBar.Position := recno;
end;

procedure Tfrm_yzinput.grid_ksExit(Sender: TObject);
begin
  grid_ks.Visible := false;
  qry_yz.FieldByName('czks').Value := qry_ks.FieldByName('dm').AsString;
  yzNew(1);
end;

procedure Tfrm_yzinput.grid_ksKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_RETURN then
  begin
    recno := ScrollBox4.VertScrollBar.Position;
    grid_yzlr.SetFocus;
    ScrollBox4.VertScrollBar.Position := recno;
  end;
end;

procedure Tfrm_yzinput.grid_ypDblClick(Sender: TObject);
begin
  recno := ScrollBox4.VertScrollBar.Position;
  grid_yzlr.SetFocus;
  ScrollBox4.VertScrollBar.Position := recno;
  grid_yp.Visible := false;
end;

procedure Tfrm_yzinput.grid_ypDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
begin
  if sp_cx_yp_yz['zxdwsl'] = true then
  begin
    grid_yp.Canvas.Brush.Color := cllime;
    grid_yp.Canvas.Font.color := clblue;
  end;
  grid_yp.DefaultDrawColumnCell(rect, datacol, Column, state);
end;

procedure Tfrm_yzinput.grid_ypExit(Sender: TObject);
begin
  grid_yp.Visible := false;
  ypjs;
  recno := ScrollBox4.VertScrollBar.Position;
  grid_yzlr.SetFocus;
  ScrollBox4.VertScrollBar.Position := recno;
  if (yzlb = '����') or (yzlb = '��ҩ') then
    grid_yzlr.SelectedIndex := 7
  else
    grid_yzlr.SelectedIndex := 3;
end;

procedure Tfrm_yzinput.grid_ypKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    recno := ScrollBox4.VertScrollBar.Position;
    grid_yzlr.SetFocus;
    ScrollBox4.VertScrollBar.Position := recno;
  end;
  if key = #27 then
    grid_yp.Visible := false;
end;

procedure Tfrm_yzinput.Edit_ypKeyPress(Sender: TObject; var Key: Char);
var
  ls_cxpym: string;
begin
  if key = #13 then
  begin
    sp_cx_yp_yz.Close;
    sp_cx_yp_yz.Parameters.ParamValues['@pym'] := ls_cxpym;
    if isbqkf then //ҩƷʹ�ò����ⷿ,
      sp_cx_yp_yz.Parameters.ParamValues['@ksdm'] := pub_ksdm
    else
      sp_cx_yp_yz.Parameters.ParamValues['@ksdm'] := pub_zyxyfdm;
    sp_cx_yp_yz.Parameters.ParamValues['@jsfs'] := '0';
    sp_cx_yp_yz.Parameters.ParamValues['@ls'] := '1';
    sp_cx_yp_yz.Open;
    if sp_cx_yp_yz.RecordCount >= 1 then
    begin
      grid_yp.Visible := true;
      grid_yp.SetFocus;
    end;
  end;

end;

procedure Tfrm_yzinput.Edt_pass_tmhKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  visitAddr: string;
begin
  if key = VK_RETURN then
  begin
    if passAddr = '' then
      exit;

    visitAddr := 'http://' + passAddr + '/webviewer/query.do?inHospitalNo=' +
      inttostr(strtoint(Edt_pass_tmh.Text));
    WebBrowser1.Navigate(visitAddr);
  end;
end;

procedure Tfrm_yzinput.edt_tmhKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_RETURN then
    Proc_Seek_dj(Trim(edt_tmh.Text));
end;

procedure Tfrm_yzinput.e_tmhExit(Sender: TObject);
var
  sjxz: Integer;
begin
  qry_xmyz.Close;
  qry_xmyz.Open;
  if trim(e_tmh.Text) <> '' then
  begin
    sp_jbxx.Filtered := False;
    sp_jbxx.Close;
    sp_jbxx.Parameters.ParamValues['@tmh'] := trim(e_tmh.Text);
    sp_jbxx.Parameters.ParamValues['@xm'] := trim(e_tmh.Text);
    sp_jbxx.Parameters.ParamValues['@bch'] := trim(e_tmh.Text);
    sp_jbxx.Parameters.ParamValues['@ksdm'] := '';
    sp_jbxx.Open;
    if sp_jbxx.RecordCount = 1 then
    begin
      zyh := sp_jbxx.FieldByName('zyh').AsString;
      dm_data.qry_pub.close;
      dm_data.qry_pub.sql.text :=
        'select a.*,b.mc fylbmc from zysf_zydj a,sys_fylb b where a.zyh=' + ''''
        +
        zyh + '''' + ' and a.fylb=b.dm';
      try
        DM_data.qry_pub.Open;
      except

      end;
      v_fylbmc := dm_data.qry_pub.FieldByName('fylbmc').AsString;
      tmh := sp_jbxx.FieldByName('tmh').AsString;
      brxm := trim(sp_jbxx.FieldByName('brxm').AsString);
      Self.Caption := FormTitle + '   ������������' + brxm + '��'; //roro
      e_tmh.Text := tmh;
      DM_data.qry_pub.close;
      DM_data.qry_pub.sql.Text := 'select * from sys_xt_kg';
      try
        DM_data.qry_pub.Open;
      except

      end;
      sjxz := DM_data.qry_pub.FieldByName('zyblcykxgsj').AsInteger;
      dm_data.qry_pub.close;
      dm_data.qry_pub.sql.text := 'select * from zysf_zydj where zyh=' + '''' +
        zyh + '''';
      try
        DM_data.qry_pub.Open;
      except

      end;
      if dm_data.qry_pub.isempty then
      begin
        dm_data.qry_pub.close;
        dm_data.qry_pub.sql.text :=
          'select *,datediff(day,cyrq,getdate()) cyts from zysf_cydj where zyh=' + ''''
          + zyh + '''';
        try
          DM_data.qry_pub.Open;
        except

        end;
        if dm_data.qry_pub.IsEmpty then
          Exit
        else
        begin
          if dm_data.qry_pub.FieldByName('cyts').AsInteger > sjxz then
          begin
            dm_data.qry_pub.close;
            dm_data.qry_pub.sql.text := 'select * from sys_bljy where zyh=' +
              '''' + zyh + ''' and ' +
              ' datediff(day,jyrq,getdate())<=jyts';
            try
              DM_data.qry_pub.Open;
            except

            end;
            if (not dm_data.qry_pub.IsEmpty) and
              (dm_data.qry_pub.FieldByName('ysdm').AsString = pub_czydm) then
            begin
              jybz := True;
              qry_hjjl.close;
              qry_hjjl.sql.Text :=
                'insert into zybl_jyjl(tmh,brxm,jyys,ysdm,cxsj,cknr)' +
                ' select ' + '''' + sp_jbxx.FieldByName('tmh').AsString + '''' +
                ',' + '''' +
                sp_jbxx.FieldByName('brxm').AsString + '''' + ',' + '''' +
                pub_czyxm + '''' + ',' +
                '''' + pub_czydm + '''' + ',' + '''' +
                formatdatetime('yyyy-MM-dd hh:mm:ss', Frm_func.curr_date) + ''''
                +
                ',' + '''ҽ��''';
              qry_hjjl.ExecSQL;
            end
            else
            begin
              Application.MessageBox('��Ժ�������������Ʋ鿴ҽ������������ϵ�ʿ���Ա�������',
                '��ʾ', MB_OK + MB_ICONWARNING);
              exit;
            end;
          end;
        end;
      end;
      if trim(dbedit11.Text) <> '' then
        e_yzys.Text := DBEdit11.Text;
      //���˻�����Ϣ����pass  2011-11-23 jc ------------------
//      try
//        if gi_PassEnabled = 1 then
//        begin
//          proc_brjbxx(tmh, '1', brxm, sp_jbxx.FieldByName('brxb').AsString,
//            FormatDateTime('yyyy-MM-dd',
//            sp_jbxx.FieldByName('csrq').AsDateTime),
//            br_tz, '', pub_ksdm, pub_ksmc, pub_czydm, pub_czyxm, '');
//        end;
//      except
//      end;
//----------------- 2011-11-23-------------------------
      refresh_yz;
      //calmhawk --����ҽ��

      sp_dryz.Close;
      sp_dryz.Parameters.ParamByName('@zyh').Value := zyh;
      sp_dryz.Parameters.ParamByName('@yzsx').Value := '';
      sp_dryz.Open;
      DM_data.qry_pub.close;
      DM_data.qry_pub.sql.text :=
        'select * from lclj_bricd10 a,icd10 b where a.icd_10=b.jbbm and zyh=' + ''''
        + zyh + '''';
      try
        DM_data.qry_pub.Open;
      except

      end;
      if not DM_data.qry_pub.IsEmpty then
      begin
        Edit3.text := Trim(DM_data.qry_pub.FieldByName('jbbm').asstring) + '|' +
          Trim(DM_data.qry_pub.FieldByName('jbmc').asstring);
      end
      else
      begin
        Edit3.text := '';
      end;
    end;
    if sp_jbxx.RecordCount > 1 then
    begin
      db_brxx.Top := e_tmh.Top + 38;
      db_brxx.Left := e_tmh.Left;
      db_brxx.Visible := true;
      db_brxx.SetFocus;
    end;
    if sp_jbxx.RecordCount < 1 then
    begin
      e_tmh.SetFocus;
    end;
  end;
  if yz_kdks <> '' then
  else
    yz_kdks := pub_ksdm;

end;

procedure Tfrm_yzinput.e_tmhKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_RETURN then
  begin
    e_yzys.SetFocus;
  end;
end;

procedure Tfrm_yzinput.e_yzysKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    qry_ys.Filtered := false;
    if trim(e_yzys.Text) <> '' then
    begin
      qry_ys.Filter := ' dm = ' + #39 + e_yzys.Text + #39;
      qry_ys.Filter := qry_ys.Filter + ' or mc like ' + #39 + '%' + e_yzys.Text
        +
        '%' + #39;
      qry_ys.Filter := qry_ys.Filter + ' or pym like ' + #39 + '%' + e_yzys.Text
        + '%' + #39;
      qry_ys.Filtered := true;
      if qry_ys.RecordCount >= 1 then
      begin
        dbg_ys.Top := e_yzys.Top + 38;
        dbg_ys.Left := e_yzys.Left;
        dbg_ys.Visible := true;
        dbg_ys.SetFocus;
      end
      else
      begin
        application.MessageBox('����������ҽ��', '��ʾ', 0 + 48);
        e_yzys.SetFocus;
      end;
    end;
  end;
  if key = #27 then
  begin
    if dbg_ys.Visible then
    begin
      dbg_ys.SetFocus;
    end;
  end;
end;

procedure Tfrm_yzinput.Edit_clKeyPress(Sender: TObject; var Key: Char);
var
  ls_cxyz: string;
begin
  if key = #13 then
  begin
    sp_cx_yp_yz.Close;
    sp_cx_yp_yz.Parameters.ParamValues['@pym'] := ls_cxyz;
    sp_cx_yp_yz.Parameters.ParamValues['@ksdm'] := pub_ksdm;
    if isbqkf then //�Ƿ������˲����ⷿ
      sp_cx_yp_yz.Parameters.ParamValues['@jsfs'] := '2'
    else
      sp_cx_yp_yz.Parameters.ParamValues['@jsfs'] := '1';
    sp_cx_yp_yz.Parameters.ParamValues['@ls'] := '1';
    sp_cx_yp_yz.Open;
    if sp_cx_yp_yz.RecordCount >= 1 then
    begin
      grid_yz.Visible := true;
      grid_yz.SetFocus;
    end;

  end;
end;

procedure Tfrm_yzinput.N10Click(Sender: TObject);
var
  v_lb, v_yytj, filter: string;
begin
  Application.OnMessage := nil;
  with sp_zxjl_cq_dy do
  begin
    Filtered := False;
    Close;
    Parameters.ParamByName('@zyh').Value :=
      Trim(sp_jbxx.fieldbyname('zyh').asstring);
    Parameters.ParamByName('@fs').Value := 1;
    Open;
  end;
  //sp_zxjl_cq_dy.Filtered := False;
  DM_data.qry_pub.close;
  DM_data.qry_pub.sql.text :=
    'select yytj from zybl_zyyz_dytjsz where dyxm=''���Ƽƻ���''';
  try
    DM_data.qry_pub.Open;
  except

  end;
  if DM_data.qry_pub.IsEmpty then
  begin
    v_yytj := '';
  end
  else
  begin
    DM_data.qry_pub.First;
    while not DM_data.qry_pub.eof do
    begin
      v_yytj := v_yytj + '(yytj=' + '''' +
        DM_data.qry_pub.FieldByName('yytj').asstring + '''' +
        ' and  tzrq=null and  kdrq>='
        + '''' + formatdatetime('yy-MM-dd', frm_func.curr_date) + ' 00:00' +
        ''')' + ' or ';
      DM_data.qry_pub.Next;
    end;

  end;

  DM_data.qry_pub.close;
  DM_data.qry_pub.sql.text :=
    'select lbmc from zybl_zyyz_dylbsz where dyxm=''���Ƽƻ���''';
  try
    DM_data.qry_pub.Open;
  except

  end;
  if DM_data.qry_pub.IsEmpty then
  begin
    v_lb := '';
  end
  else
  begin
    DM_data.qry_pub.First;
    while not DM_data.qry_pub.eof do
    begin
      v_lb := v_lb + '(lb=' + '''' + DM_data.qry_pub.FieldByName('lbmc').asstring
        + '''' + ' and  tzrq=null ' +
        ' and kdrq>=' + '''' + formatdatetime('yy-MM-dd', frm_func.curr_date) +
        ' 00:00' + ''')' + ' or ';
      DM_data.qry_pub.Next;
    end;

  end;

  if v_yytj + v_lb = '' then
  begin
    filter := ' 1<>1 ';
  end
  else
  begin
    filter := v_yytj + v_lb + ' ( yytj = ''�������'' )';
  end;

  sp_zxjl_cq_dy.Filter := filter;

  sp_zxjl_cq_dy.Filtered := True;
  if sp_zxjl_cq_dy.IsEmpty then
  begin
    Application.MessageBox('û�м�¼��', '��ʾ', 0 + 48);
    Exit;
  end;
  application.CreateForm(Tfrm_zxdxd, frm_zxdxd);
  try
    frm_zxdxd.ShowModal;
  finally
    frm_zxdxd.free;
  end;
end;

procedure Tfrm_yzinput.N11Click(Sender: TObject);
var
  ylly: string;
begin
  dM_data.qry_pub.close;
  DM_data.qry_pub.sql.Text := 'select * from sys_jzzt';
  try
    DM_data.qry_pub.Open;
  except

  end;
  if DM_data.qry_pub.FieldByName('yzzdjfzt').AsBoolean = true then
  begin
    application.MessageBox('���ڽ���ҽ���Զ��Ƿ���ҵ,���Ժ����ԣ�', '��ʾ', 0 +
      48);
    Abort;
  end;
  if sp_dryz.FieldByName('kdys').asstring = pub_czydm then
  begin
    if (sp_dryz.FieldByName('lb').asstring = 'ҩƷ') or
      (sp_dryz.FieldByName('lb').asstring = '��ҩ') or
      (sp_dryz.FieldByName('lb').asstring = 'ҩһ') then
    begin
      ylly := p_xgyl.func_yllr();
      if ylly <> '' then
      begin
        try
          dm_data.qry_pub.Close;
          dm_data.qry_pub.sql.text := 'update zybl_zyyz set ypyl=' + ylly +
            ' where id=' + sp_dryz.FieldByName('id').asstring;
          dm_data.qry_pub.ExecSQL;
          ShowMessage('�޸������ɹ�!');
          sp_dryz.Close;
          sp_dryz.Parameters.ParamByName('@zyh').Value := zyh;
          sp_dryz.Parameters.ParamByName('@yzsx').Value := 'ȫ��';
          sp_dryz.Open;
        except
          ShowMessage('�޸�����ʧ��!�����ԣ�');
        end;

      end;
    end;

  end
  else
  begin
    ShowMessage('�㲻�Ǹ�ҽ������ҽ������Ȩ�޸ģ�');
  end;
end;

procedure Tfrm_yzinput.N13Click(Sender: TObject);
var
  i, y, j, count, x: Integer;
  aControl: TControl;
  v_yytj, v_lb, filter: string;
begin
  with sp_zxjl_cq_dy do
  begin
    Filtered := False;
    Close;
    Parameters.ParamByName('@zyh').Value :=
      Trim(sp_jbxx.fieldbyname('zyh').asstring);
    Parameters.ParamByName('@fs').Value := 0;
    Open;
  end;
  DM_data.qry_pub.close;
  DM_data.qry_pub.sql.text :=
    'select yytj from zybl_zyyz_dytjsz where dyxm=''��Һ�ƻ���''';
  try
    DM_data.qry_pub.Open;
  except

  end;
  if DM_data.qry_pub.IsEmpty then
  begin
    v_yytj := '';
  end
  else
  begin
    DM_data.qry_pub.First;
    while not DM_data.qry_pub.eof do
    begin
      //v_yytj := v_yytj + '(yytj=' + '''' + DM_data.qry_pub.FieldByName( 'yytj' ).asstring + '''' + ' and  tzrq=null and kdks=' + '''' + pub_ksdm + ''')' + ' or ';
      v_yytj := v_yytj + '(yytj=' + '''' +
        DM_data.qry_pub.FieldByName('yytj').asstring + '''' + ' and  tzrq=null )'
        +
        ' or ';
      DM_data.qry_pub.Next;
    end;

  end;

  DM_data.qry_pub.close;
  DM_data.qry_pub.sql.text :=
    'select lbmc from zybl_zyyz_dylbsz where dyxm=''��Һ�ƻ���''';
  try
    DM_data.qry_pub.Open;
  except

  end;
  if DM_data.qry_pub.IsEmpty then
  begin
    v_lb := '';
  end
  else
  begin
    DM_data.qry_pub.First;
    while not DM_data.qry_pub.eof do
    begin
      //v_lb := v_lb + '(lb=' + '''' + DM_data.qry_pub.FieldByName( 'lbmc' ).asstring + '''' + ' and  tzrq=null and kdks=' + '''' + pub_ksdm + ''')' + ' or ';
      v_lb := v_lb + '(lb=' + '''' + DM_data.qry_pub.FieldByName('lbmc').asstring
        + '''' + ' and  tzrq=null )' + ' or ';
      DM_data.qry_pub.Next;
    end;

  end;

  if v_yytj + v_lb = '' then
  begin
    filter := ' 1<>1 ';
  end
  else
  begin
    filter := v_yytj + v_lb + ' ( yytj=''�������'' )';
  end;
  sp_zxjl_cq_dy.Filtered := False;
  sp_zxjl_cq_dy.Filter := 'yytj=''�������''';
  sp_zxjl_cq_dy.Filtered := True;
  if sp_zxjl_cq_dy.RecordCount = 0 then
  begin
    count := 1;
    if zzdx = 'A4' then
    begin
      sp_zxjl_cq_dy.First;
      if count mod 5 <> 0 then
        y := trunc(count / 5) + 1
      else
        y := trunc(count / 5);
      count := 1;
      for I := 1 to y do
      begin
        for j := 1 to 5 do
        begin
          if count < i * 5 then
          begin
            if j > (5 - (y * 5 - count)) then
            begin
              aControl := DetailBand1.FindChildControl('ksrq' + IntToStr(j -
                1));
              if aControl is TQRLabel then
                TQRLabel(aControl).Caption := '';
              aControl := DetailBand1.FindChildControl('kdysmc' + IntToStr(j -
                1));
              if aControl is TQRLabel then
                TQRLabel(aControl).Caption := '';
              DetailBand1.FindChildControl('qrgrimage' + IntToStr(j)).enabled :=
                false;
              //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
              TQRLabel(DetailBand1.FindChildControl('ypyf' + IntToStr(j -
                1))).Caption := '';
              //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
              TQRLabel(DetailBand1.FindChildControl('xmmc' + IntToStr(j -
                1))).caption := '';
            end
            else
            begin
              aControl := DetailBand1.FindChildControl('ksrq' + IntToStr(j -
                1));
              if aControl is TQRLabel then
                TQRLabel(aControl).Caption :=
                  sp_zxjl_cq_dy.FieldByName('ksrq').AsString;
              aControl := DetailBand1.FindChildControl('kdysmc' + IntToStr(j -
                1));
              if aControl is TQRLabel then
                TQRLabel(aControl).Caption :=
                  sp_zxjl_cq_dy.FieldByName('kdysmc').asstring;
              if sp_zxjl_cq_dy.FieldByName('fzph').asstring <> '' then
              begin
                DetailBand1.FindChildControl('QRgrImage' + IntToStr(j)).enabled
                  := true;
                DetailBand1.FindChildControl('QRgrImage' + IntToStr(j)).Top :=
                  TQRLabel(DetailBand1.FindChildControl('xmmc' + IntToStr(j -
                  1))).top;
                DetailBand1.FindChildControl('QRgrImage' + IntToStr(j)).left :=
                  DetailBand1.FindChildControl('ypyf' + IntToStr(j - 1)).left -
                  20;
                DetailBand1.FindChildControl('qrgrimage' + IntToStr(j)).height
                  := 30;
                TQRLabel(DetailBand1.FindChildControl('ypyf' + IntToStr(j -
                  1))).Caption :=
                  trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring)
                  + '  ' + trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
                TQRLabel(DetailBand1.FindChildControl('xmmc' + IntToStr(j -
                  1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring;
                //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
              end
              else
              begin
                DetailBand1.FindChildControl('qrgrimage' + IntToStr(j)).enabled
                  := false;
                DetailBand1.FindChildControl('xmmc' + IntToStr(j - 1)).Width :=
                  235;
                TQRLabel(DetailBand1.FindChildControl('ypyf' + IntToStr(j -
                  1))).Caption := '';
                TQRLabel(DetailBand1.FindChildControl('xmmc' + IntToStr(j -
                  1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring +
                  ' '
                  + trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring) + ' ' +
                  trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
                // TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
              end;
              sp_zxjl_cq_dy.Next;
            end;
          end
          else
          begin
            aControl := DetailBand1.FindChildControl('ksrq' + IntToStr(j - 1));
            if aControl is TQRLabel then
              TQRLabel(aControl).Caption :=
                sp_zxjl_cq_dy.FieldByName('ksrq').asstring;
            aControl := DetailBand1.FindChildControl('kdysmc' + IntToStr(j -
              1));
            if aControl is TQRLabel then
              TQRLabel(aControl).Caption :=
                sp_zxjl_cq_dy.FieldByName('kdysmc').asstring;
            if sp_zxjl_cq_dy.FieldByName('fzph').asstring <> '' then
            begin
              DetailBand1.FindChildControl('QRgrImage' + IntToStr(j)).enabled :=
                true;
              DetailBand1.FindChildControl('QRgrImage' + IntToStr(j)).Top :=
                TQRLabel(DetailBand1.FindChildControl('xmmc' + IntToStr(j -
                1))).top;
              DetailBand1.FindChildControl('qrgrimage' + IntToStr(j)).left :=
                DetailBand1.FindChildControl('ypyf' + IntToStr(j - 1)).left -
                20;
              DetailBand1.FindChildControl('qrgrimage' + IntToStr(j)).height :=
                30;
              TQRLabel(DetailBand1.FindChildControl('ypyf' + IntToStr(j -
                1))).Caption := trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring)
                +
                '  ' + trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
              TQRLabel(DetailBand1.FindChildControl('xmmc' + IntToStr(j -
                1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring;
              //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end
            else
            begin
              DetailBand1.FindChildControl('qrgrimage' + IntToStr(j)).enabled :=
                false;
              DetailBand1.FindChildControl('xmmc' + IntToStr(j - 1)).Width :=
                235;
              TQRLabel(DetailBand1.FindChildControl('ypyf' + IntToStr(j -
                1))).Caption := '';
              TQRLabel(DetailBand1.FindChildControl('xmmc' + IntToStr(j -
                1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring + ' '
                +
                trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring) + ' ' +
                trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
              //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end;
            sp_zxjl_cq_dy.Next;
          end;
        end;
        QRLabel2.Caption := pub_yymc + '������Һ�ƻ�ִ�е�';
        DM_data.qry_pub.Close;
        DM_data.qry_pub.SQL.text := 'select * from sys_kscwsz where bqdm=' + ''''
          + pub_bqdm + '''' + ' and bcbh=' + '''' +
          trim(sp_jbxx.fieldbyname('bch').asstring) + '''';
        try
          DM_data.qry_pub.Open;
        except

        end;

        QRLabel3.Caption := '����:' + sp_jbxx.fieldbyname('brxm').asstring;
        QRLabel20.Caption := '������:' +
          Trim(DM_data.qry_pub.FieldByName('yybch').asstring);
        QRLabel21.Caption := '�Ա�:' + sp_jbxx.fieldbyname('brxb').asstring;
        QRLabel26.Caption := '����:' +
          trim(sp_jbxx.fieldbyname('brnl').asstring);
        ny.Caption := FormatDateTime('yyyy', frm_func.curr_date) + '��';

        QRLabel61.Caption := '����:' + sp_jbxx.fieldbyname('brxm').asstring +
          '      ' +
          '������:' + Trim(DM_data.qry_pub.FieldByName('yybch').asstring) +
          '      ' +
          '����:' + Trim(sp_jbxx.fieldbyname('tmh').asstring);
        //'�Ա�:' + sp_jbxx.fieldbyname( 'brxb' ).asstring +'      '+
        //'����:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
//QuickRep3.Prepare;
        QRLabel57.Caption := '���ҽ��:';
        QuickRep3.Preview;
      end;
    end
    else if zzdx = 'B5' then
    begin
      sp_zxjl_cq_dy.First;
      if count mod 9 <> 0 then
        y := trunc(count / 9) + 1
      else
        y := trunc(count / 9);
      count := 1;
      for I := 1 to y do
      begin
        for j := 1 to 9 do
        begin
          if count < i * 9 then
          begin
            if j > (9 - (y * 9 - count)) then
            begin
              aControl := DetailBand2.FindChildControl('ksrqjy' + IntToStr(j -
                1));
              if aControl is TQRLabel then
                TQRLabel(aControl).Caption := '';
              aControl := DetailBand2.FindChildControl('kdysmcjy' + IntToStr(j -
                1));
              if aControl is TQRLabel then
                TQRLabel(aControl).Caption := '';
              DetailBand2.FindChildControl('qrgrimagejy' + IntToStr(j)).enabled
                := false;
              //  TQRLabel( DetailBand2.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
              TQRLabel(DetailBand2.FindChildControl('ypyfjy' + IntToStr(j -
                1))).Caption := '';
              //TQRLabel( DetailBand2.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
              TQRLabel(DetailBand2.FindChildControl('xmmcjy' + IntToStr(j -
                1))).caption := '';
            end
            else
            begin
              aControl := DetailBand2.FindChildControl('ksrqjy' + IntToStr(j -
                1));
              if aControl is TQRLabel then
                TQRLabel(aControl).Caption :=
                  sp_zxjl_cq_dy.FieldByName('ksrq').AsString;
              aControl := DetailBand2.FindChildControl('kdysmcjy' + IntToStr(j -
                1));
              if aControl is TQRLabel then
                TQRLabel(aControl).Caption :=
                  sp_zxjl_cq_dy.FieldByName('kdysmc').asstring;
              if sp_zxjl_cq_dy.FieldByName('fzph').asstring <> '' then
              begin
                DetailBand2.FindChildControl('QRgrImagejy' + IntToStr(j)).enabled
                  := true;
                DetailBand2.FindChildControl('QRgrImagejy' + IntToStr(j)).Top :=
                  TQRLabel(DetailBand2.FindChildControl('xmmcjy' + IntToStr(j -
                  1))).top;
                DetailBand2.FindChildControl('QRgrImagejy' + IntToStr(j)).left
                  := DetailBand2.FindChildControl('ypyfjy' + IntToStr(j -
                  1)).left
                  - 20;
                DetailBand2.FindChildControl('qrgrimagejy' + IntToStr(j)).height
                  := 30;
                TQRLabel(DetailBand2.FindChildControl('ypyfjy' + IntToStr(j -
                  1))).Caption :=
                  trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring)
                  + '  ' + trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
                TQRLabel(DetailBand2.FindChildControl('xmmcjy' + IntToStr(j -
                  1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring;
                //TQRLabel( DetailBand2.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
              end
              else
              begin
                DetailBand2.FindChildControl('qrgrimagejy' + IntToStr(j)).enabled
                  := false;
                DetailBand2.FindChildControl('xmmcjy' + IntToStr(j - 1)).Width
                  := 235;
                TQRLabel(DetailBand2.FindChildControl('ypyfjy' + IntToStr(j -
                  1))).Caption := '';
                TQRLabel(DetailBand2.FindChildControl('xmmcjy' + IntToStr(j -
                  1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring +
                  ' '
                  + trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring) + ' ' +
                  trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
                // TQRLabel( DetailBand2.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
              end;
              sp_zxjl_cq_dy.Next;
            end;
          end
          else
          begin
            aControl := DetailBand2.FindChildControl('ksrqjy' + IntToStr(j -
              1));
            if aControl is TQRLabel then
              TQRLabel(aControl).Caption :=
                sp_zxjl_cq_dy.FieldByName('ksrq').asstring;
            aControl := DetailBand2.FindChildControl('kdysmcjy' + IntToStr(j -
              1));
            if aControl is TQRLabel then
              TQRLabel(aControl).Caption :=
                sp_zxjl_cq_dy.FieldByName('kdysmc').asstring;
            if sp_zxjl_cq_dy.FieldByName('fzph').asstring <> '' then
            begin
              DetailBand2.FindChildControl('QRgrImagejy' + IntToStr(j)).enabled
                := true;
              DetailBand2.FindChildControl('QRgrImagejy' + IntToStr(j)).Top :=
                TQRLabel(DetailBand2.FindChildControl('xmmcjy' + IntToStr(j -
                1))).top;
              DetailBand2.FindChildControl('qrgrimagejy' + IntToStr(j)).left :=
                DetailBand2.FindChildControl('ypyfjy' + IntToStr(j - 1)).left -
                20;
              DetailBand2.FindChildControl('qrgrimagejy' + IntToStr(j)).height
                := 30;
              TQRLabel(DetailBand2.FindChildControl('ypyfjy' + IntToStr(j -
                1))).Caption := trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring)
                +
                '  ' + trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
              TQRLabel(DetailBand2.FindChildControl('xmmcjy' + IntToStr(j -
                1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring;
              //  TQRLabel( DetailBand2.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end
            else
            begin
              DetailBand2.FindChildControl('qrgrimagejy' + IntToStr(j)).enabled
                := false;
              DetailBand2.FindChildControl('xmmcjy' + IntToStr(j - 1)).Width :=
                235;
              TQRLabel(DetailBand2.FindChildControl('ypyfjy' + IntToStr(j -
                1))).Caption := '';
              TQRLabel(DetailBand2.FindChildControl('xmmcjy' + IntToStr(j -
                1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring + ' '
                +
                trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring) + ' ' +
                trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
              //  TQRLabel( DetailBand2.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end;
            sp_zxjl_cq_dy.Next;
          end;
        end;
        QRLabel2jy.Caption := pub_yymc + '������Һ�ƻ�ִ�е�';
        DM_data.qry_pub.Close;
        DM_data.qry_pub.SQL.text := 'select * from sys_kscwsz where bqdm=' + ''''
          + pub_bqdm + '''' + ' and bcbh=' + '''' +
          trim(sp_jbxx.fieldbyname('bch').asstring) + '''';
        try
          DM_data.qry_pub.Open;
        except

        end;

        QRLabel3jy.Caption := '����:' + sp_jbxx.fieldbyname('brxm').asstring;
        QRLabel20jy.Caption := '������:' +
          Trim(DM_data.qry_pub.FieldByName('yybch').asstring);
        QRLabel21jy.Caption := '�Ա�:' + sp_jbxx.fieldbyname('brxb').asstring;
        QRLabel26jy.Caption := '����:' +
          trim(sp_jbxx.fieldbyname('brnl').asstring);
        nyjy.Caption := FormatDateTime('yyyy', frm_func.curr_date) + '��';

        QRLabel61jy.Caption := '����:' + sp_jbxx.fieldbyname('brxm').asstring +
          '      ' +
          '������:' + Trim(DM_data.qry_pub.FieldByName('yybch').asstring) +
          '      ' +
          '����:' + Trim(sp_jbxx.fieldbyname('tmh').asstring);
        //'�Ա�:' + sp_jbxx.fieldbyname( 'brxb' ).asstring +'      '+
        //'����:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
//QuickRep3.Prepare;
//QRLabel57.Caption := '���ҽ��:';
        QuickRep6.Preview;
      end;
    end else if zzdx = 'A3' then   //------------------------------------�����������޸�A3 ---------------
    begin
      sp_zxjl_cq_dy.First;
      if count mod 8 <> 0 then
        y := trunc(count / 8) + 1
      else
        y := trunc(count / 8);
     // count := sp_zxjl_cq_dy.RecordCount;
      count := 1;
      for I := 1 to y do
      begin
        for j := 1 to 8 do
        begin
          if count < i * 8 then
          begin
            if j > (8 - (y * 8 - count)) then
            begin
              aControl := qrbndcqjy.FindChildControl('jycqsyksrq' + IntToStr(j -
                1));
              if aControl is TQRLabel then
                TQRLabel(aControl).Caption := '';
              aControl := qrbndcqjy.FindChildControl('jycqsykdys' + IntToStr(j -
                1));
              if aControl is TQRLabel then
                TQRLabel(aControl).Caption := '';
              qrbndcqjy.FindChildControl('QRImagejy' + IntToStr(j)).enabled :=
                false;
              //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
              TQRLabel(qrbndcqjy.FindChildControl('jycqsyypyf' + IntToStr(j -
                1))).Caption := '';
              //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
              TQRLabel(qrbndcqjy.FindChildControl('jycqsyxmmc' + IntToStr(j -
                1))).caption := '';
            end
            else
            begin
              aControl := qrbndcqjy.FindChildControl('jycqsyksrq' + IntToStr(j -
                1));
              if aControl is TQRLabel then
                TQRLabel(aControl).Caption :=
                  sp_zxjl_cq_dy.FieldByName('ksrq').AsString;
              aControl := qrbndcqjy.FindChildControl('jycqsykdys' + IntToStr(j -
                1));
              if aControl is TQRLabel then
                TQRLabel(aControl).Caption :=
                  sp_zxjl_cq_dy.FieldByName('kdysmc').asstring;
              if sp_zxjl_cq_dy.FieldByName('fzph').asstring <> '' then
              begin
                qrbndcqjy.FindChildControl('QRImagejy' + IntToStr(j)).enabled :=
                  true;
                qrbndcqjy.FindChildControl('QRImagejy' + IntToStr(j)).Top :=
                  TQRLabel(qrbndcqjy.FindChildControl('jycqsyxmmc' + IntToStr(j -
                  1))).top;
                qrbndcqjy.FindChildControl('QRImagejy' + IntToStr(j)).left :=
                  qrbndcqjy.FindChildControl('jycqsyypyf' + IntToStr(j - 1)).left
                  -
                  20;
                qrbndcqjy.FindChildControl('QRImagejy' + IntToStr(j)).height :=
                  30;
                TQRLabel(qrbndcqjy.FindChildControl('jycqsyypyf' + IntToStr(j -
                  1))).Caption :=
                  trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring)
                  + '  ' + trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
                TQRLabel(qrbndcqjy.FindChildControl('jycqsyxmmc' + IntToStr(j -
                  1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring;
                //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
              end
              else
              begin
                qrbndcqjy.FindChildControl('QRImagejy' + IntToStr(j)).enabled :=
                  false;
                //qrbndcqsy.FindChildControl( 'cqsyxmmc' + IntToStr( j - 1 ) ).Width := 235;
                TQRLabel(qrbndcqjy.FindChildControl('jycqsyypyf' + IntToStr(j -
                  1))).Caption := '';
                TQRLabel(qrbndcqjy.FindChildControl('jycqsyxmmc' + IntToStr(j -
                  1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring +
                  ' '
                  + trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring) + ' ' +
                  trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
                // TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
              end;
              sp_zxjl_cq_dy.Next;
            end;
          end
          else
          begin
            aControl := qrbndcqjy.FindChildControl('jycqsyksrq' + IntToStr(j -
              1));
            if aControl is TQRLabel then
              TQRLabel(aControl).Caption :=
                sp_zxjl_cq_dy.FieldByName('ksrq').asstring;
            aControl := qrbndcqjy.FindChildControl('jycqsykdys' + IntToStr(j -
              1));
            if aControl is TQRLabel then
              TQRLabel(aControl).Caption :=
                sp_zxjl_cq_dy.FieldByName('kdysmc').asstring;
            if sp_zxjl_cq_dy.FieldByName('fzph').asstring <> '' then
            begin
              qrbndcqjy.FindChildControl('QRImagejy' + IntToStr(j)).enabled :=
                true;
              qrbndcqjy.FindChildControl('QRImagejy' + IntToStr(j)).Top :=
                TQRLabel(qrbndcqjy.FindChildControl('jycqsyxmmc' + IntToStr(j -
                1))).top;
              qrbndcqjy.FindChildControl('QRImagejy' + IntToStr(j)).left :=
                qrbndcqjy.FindChildControl('jycqsyypyf' + IntToStr(j - 1)).left -
                20;
              qrbndcqjy.FindChildControl('QRImagejy' + IntToStr(j)).height :=
                30;
              TQRLabel(qrbndcqjy.FindChildControl('jycqsyypyf' + IntToStr(j -
                1))).Caption := trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring)
                +
                '  ' + trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
              TQRLabel(qrbndcqjy.FindChildControl('jycqsyxmmc' + IntToStr(j -
                1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring;
              //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end
            else
            begin
              qrbndcqjy.FindChildControl('QRImagejy' + IntToStr(j)).enabled :=
                false;
              //qrbndcqsy.FindChildControl( 'cqsyxmmc' + IntToStr( j - 1 ) ).Width := 235;
              TQRLabel(qrbndcqjy.FindChildControl('jycqsyypyf' + IntToStr(j -
                1))).Caption := '';
              TQRLabel(qrbndcqjy.FindChildControl('jycqsyxmmc' + IntToStr(j -
                1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring + ' '
                +
                trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring) + ' ' +
                trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
              //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end;
            sp_zxjl_cq_dy.Next;
          end;
        end;
        jycqsymc.Caption := pub_yymc + '������Һ�ƻ�ִ�е�';
        DM_data.qry_pub.Close;
        DM_data.qry_pub.SQL.text := 'select * from sys_kscwsz where bqdm=' + ''''
          + pub_bqdm + '''' + ' and bcbh=' + '''' +
          trim(sp_jbxx.fieldbyname('bch').asstring) + '''';
        try
          DM_data.qry_pub.open;
        except

        end;

        jycqsyxm.Caption := '����:' + sp_jbxx.fieldbyname('brxm').asstring;
        jycqsybch.Caption := '������:' +
          Trim(DM_data.qry_pub.FieldByName('yybch').asstring);
        jycqsyxb.Caption := '�Ա�:' + sp_jbxx.fieldbyname('brxb').asstring;
        jycqsynl.Caption := '����:' + trim(sp_jbxx.fieldbyname('brnl').asstring);
        jycqsyn.Caption := FormatDateTime('yyyy', frm_func.curr_date) + '��';

        jycqsyxmxm.Caption := '����:' + sp_jbxx.fieldbyname('brxm').asstring;
        jycqsybchbch.Caption := '������:' +
          Trim(DM_data.qry_pub.FieldByName('yybch').asstring);
        jycqsykh.Caption := '����:' + Trim(sp_jbxx.fieldbyname('tmh').asstring);
        //QRLabel62jy.Caption := '����:' + sp_jbxx.fieldbyname( 'brxm' ).asstring + '      ' +
        //  '������:' + Trim( DM_data.qry_pub.FieldByName( 'yybch' ).asstring ) + '      '+
        //  '����:' + Trim( sp_jbxx.fieldbyname( 'tmh' ).asstring  );
        //'�Ա�:' + sp_jbxx.fieldbyname( 'brxb' ).asstring +'      '+
        //'����:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
         //QuickRep3.Prepare;
        //QRLabel71.Caption := '���ҽ��:';
        qckrpcqjy.Preview;
      end;
    end else //----------------------------------------- A3-----------------
    begin
      sp_zxjl_cq_dy.First;
      if count mod 8 <> 0 then
        y := trunc(count / 8) + 1
      else
        y := trunc(count / 8);
      count := 1;
      for I := 1 to y do
      begin
        for j := 1 to 8 do
        begin
          if count < i * 8 then
          begin
            if j > (8 - (y * 8 - count)) then
            begin
              aControl := qrbndcqsy.FindChildControl('cqsyksrq' + IntToStr(j -
                1));
              if aControl is TQRLabel then
                TQRLabel(aControl).Caption := '';
              aControl := qrbndcqsy.FindChildControl('cqsykdys' + IntToStr(j -
                1));
              if aControl is TQRLabel then
                TQRLabel(aControl).Caption := '';
              qrbndcqsy.FindChildControl('QRImagesy' + IntToStr(j)).enabled :=
                false;
              //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
              TQRLabel(qrbndcqsy.FindChildControl('cqsyypyf' + IntToStr(j -
                1))).Caption := '';
              //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
              TQRLabel(qrbndcqsy.FindChildControl('cqsyxmmc' + IntToStr(j -
                1))).caption := '';
            end
            else
            begin
              aControl := qrbndcqsy.FindChildControl('cqsyksrq' + IntToStr(j -
                1));
              if aControl is TQRLabel then
                TQRLabel(aControl).Caption :=
                  sp_zxjl_cq_dy.FieldByName('ksrq').AsString;
              aControl := qrbndcqsy.FindChildControl('cqsykdys' + IntToStr(j -
                1));
              if aControl is TQRLabel then
                TQRLabel(aControl).Caption :=
                  sp_zxjl_cq_dy.FieldByName('kdysmc').asstring;
              if sp_zxjl_cq_dy.FieldByName('fzph').asstring <> '' then
              begin
                qrbndcqsy.FindChildControl('QRImagesy' + IntToStr(j)).enabled :=
                  true;
                qrbndcqsy.FindChildControl('QRImagesy' + IntToStr(j)).Top :=
                  TQRLabel(qrbndcqsy.FindChildControl('cqsyxmmc' + IntToStr(j -
                  1))).top;
                qrbndcqsy.FindChildControl('QRImagesy' + IntToStr(j)).left :=
                  qrbndcqsy.FindChildControl('cqsyypyf' + IntToStr(j - 1)).left
                  -
                  20;
                qrbndcqsy.FindChildControl('QRImagesy' + IntToStr(j)).height :=
                  30;
                TQRLabel(qrbndcqsy.FindChildControl('cqsyypyf' + IntToStr(j -
                  1))).Caption :=
                  trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring)
                  + '  ' + trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
                TQRLabel(qrbndcqsy.FindChildControl('cqsyxmmc' + IntToStr(j -
                  1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring;
                //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
              end
              else
              begin
                qrbndcqsy.FindChildControl('QRImagesy' + IntToStr(j)).enabled :=
                  false;
                //qrbndcqsy.FindChildControl( 'cqsyxmmc' + IntToStr( j - 1 ) ).Width := 235;
                TQRLabel(qrbndcqsy.FindChildControl('cqsyypyf' + IntToStr(j -
                  1))).Caption := '';
                TQRLabel(qrbndcqsy.FindChildControl('cqsyxmmc' + IntToStr(j -
                  1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring +
                  ' '
                  + trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring) + ' ' +
                  trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
                // TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
              end;
              sp_zxjl_cq_dy.Next;
            end;
          end
          else
          begin
            aControl := qrbndcqsy.FindChildControl('cqsyksrq' + IntToStr(j -
              1));
            if aControl is TQRLabel then
              TQRLabel(aControl).Caption :=
                sp_zxjl_cq_dy.FieldByName('ksrq').asstring;
            aControl := qrbndcqsy.FindChildControl('cqsykdys' + IntToStr(j -
              1));
            if aControl is TQRLabel then
              TQRLabel(aControl).Caption :=
                sp_zxjl_cq_dy.FieldByName('kdysmc').asstring;
            if sp_zxjl_cq_dy.FieldByName('fzph').asstring <> '' then
            begin
              qrbndcqsy.FindChildControl('QRImagesy' + IntToStr(j)).enabled :=
                true;
              qrbndcqsy.FindChildControl('QRImagesy' + IntToStr(j)).Top :=
                TQRLabel(qrbndcqsy.FindChildControl('cqsyxmmc' + IntToStr(j -
                1))).top;
              qrbndcqsy.FindChildControl('QRImagesy' + IntToStr(j)).left :=
                qrbndcqsy.FindChildControl('cqsyypyf' + IntToStr(j - 1)).left -
                20;
              qrbndcqsy.FindChildControl('QRImagesy' + IntToStr(j)).height :=
                30;
              TQRLabel(qrbndcqsy.FindChildControl('cqsyypyf' + IntToStr(j -
                1))).Caption := trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring)
                +
                '  ' + trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
              TQRLabel(qrbndcqsy.FindChildControl('cqsyxmmc' + IntToStr(j -
                1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring;
              //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end
            else
            begin
              qrbndcqsy.FindChildControl('QRImagesy' + IntToStr(j)).enabled :=
                false;
              //qrbndcqsy.FindChildControl( 'cqsyxmmc' + IntToStr( j - 1 ) ).Width := 235;
              TQRLabel(qrbndcqsy.FindChildControl('cqsyypyf' + IntToStr(j -
                1))).Caption := '';
              TQRLabel(qrbndcqsy.FindChildControl('cqsyxmmc' + IntToStr(j -
                1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring + ' '
                +
                trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring) + ' ' +
                trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
              //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end;
            sp_zxjl_cq_dy.Next;
          end;
        end;
        cqsymc.Caption := pub_yymc + '������Һ�ƻ�ִ�е�';
        DM_data.qry_pub.Close;
        DM_data.qry_pub.SQL.text := 'select * from sys_kscwsz where bqdm=' + ''''
          + pub_bqdm + '''' + ' and bcbh=' + '''' +
          trim(sp_jbxx.fieldbyname('bch').asstring) + '''';
        try
          DM_data.qry_pub.Open;
        except

        end;

        cqsyxm.Caption := '����:' + sp_jbxx.fieldbyname('brxm').asstring;
        cqsybch.Caption := '������:' +
          Trim(DM_data.qry_pub.FieldByName('yybch').asstring);
        cqsyxb.Caption := '�Ա�:' + sp_jbxx.fieldbyname('brxb').asstring;
        cqsynl.Caption := '����:' + trim(sp_jbxx.fieldbyname('brnl').asstring);
        cqsyn.Caption := FormatDateTime('yyyy', frm_func.curr_date) + '��';

        cqsyxmxm.Caption := '����:' + sp_jbxx.fieldbyname('brxm').asstring;
        cqsybchbch.Caption := '������:' +
          Trim(DM_data.qry_pub.FieldByName('yybch').asstring);
        cqsykh.Caption := '����:' + Trim(sp_jbxx.fieldbyname('tmh').asstring);

        //QRLabel62jy.Caption := '����:' + sp_jbxx.fieldbyname( 'brxm' ).asstring + '      ' +
        //  '������:' + Trim( DM_data.qry_pub.FieldByName( 'yybch' ).asstring ) + '      '+
        //  '����:' + Trim( sp_jbxx.fieldbyname( 'tmh' ).asstring  );
        //'�Ա�:' + sp_jbxx.fieldbyname( 'brxb' ).asstring +'      '+
        //'����:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
//QuickRep3.Prepare;
        //QRLabel71.Caption := '���ҽ��:';
        qckrpcqsy.Preview;
      end;
    end;
  end;

end;

procedure Tfrm_yzinput.N14Click(Sender: TObject);
var
  i, y, j, count, x: Integer;
  aControl: TControl;
  v_yytj, v_lb, filter: string;
begin
  with sp_zxjl_cq_dy do
  begin
    Filtered := False;
    Close;
    Parameters.ParamByName('@zyh').Value :=
      Trim(sp_jbxx.fieldbyname('zyh').asstring);
    Parameters.ParamByName('@fs').Value := 1;
    Open;
  end;
  DM_data.qry_pub.close;
  DM_data.qry_pub.sql.text :=
    'select yytj from zybl_zyyz_dytjsz where dyxm=''��Һ�ƻ���''';
  try
    DM_data.qry_pub.Open;
  except

  end;
  if DM_data.qry_pub.IsEmpty then
  begin
    v_yytj := '';
  end
  else
  begin
    DM_data.qry_pub.First;
    while not DM_data.qry_pub.eof do
    begin
      v_yytj := v_yytj + '(bqdm=''' + pub_bqdm + ''' and yytj=' + '''' +
        DM_data.qry_pub.FieldByName('yytj').asstring + '''' +
        ' and  tzrq=null  and kdrq>=' + '''' + formatdatetime('yy-MM-dd',
        frm_func.curr_date) + ' 00:00' + ''')' + ' or ';
      DM_data.qry_pub.Next;
    end;

  end;

  DM_data.qry_pub.close;
  DM_data.qry_pub.sql.text :=
    'select lbmc from zybl_zyyz_dylbsz where dyxm=''��Һ�ƻ���''';
  try
    DM_data.qry_pub.Open;
  except

  end;
  if DM_data.qry_pub.IsEmpty then
  begin
    v_lb := '';
  end
  else
  begin
    DM_data.qry_pub.First;
    while not DM_data.qry_pub.eof do
    begin
      v_lb := v_lb + '(bqdm=''' + pub_bqdm + ''' and lb=' + ''''
        + DM_data.qry_pub.FieldByName('lbmc').asstring
        + '''' + ' and  tzrq=null ' +
        ' and  kdrq>=' + '''' + formatdatetime('yy-MM-dd', frm_func.curr_date) +
        ' 00:00' + ''')' + ' or ';
      DM_data.qry_pub.Next;
    end;

  end;

  if v_yytj + v_lb = '' then
  begin
    filter := ' 1<>1 ';
  end
  else
  begin
    filter := v_yytj + v_lb + ' (bqdm=''' + pub_bqdm +
      ''' and xmmc like ''%Ƥ��%'')';
  end;
  sp_zxjl_cq_dy.Filtered := false;
  sp_zxjl_cq_dy.Filter := 'yytj=''�������''';
  sp_zxjl_cq_dy.Filtered := True;
  if sp_zxjl_cq_dy.RecordCount = 0 then
  begin
    count := 1;
    if zzdx = 'A3' then   //------------------------------------�����������޸�A3 ---------------
    begin
      sp_zxjl_cq_dy.First;
      if Count mod 8 <> 0 then
        y := trunc(count / 8) + 1
      else
        y := trunc(count / 8);
     // count := sp_zxjl_cq_dy.RecordCount;
      count := 1;
      for I := 1 to y do
      begin
        for j := 1 to 8 do
        begin
          if count < i * 8 then
          begin
            if j > (8 - (y * 8 - count)) then
            begin
              aControl := qrbndcqjy.FindChildControl('jycqsyksrq' + IntToStr(j -
                1));
              if aControl is TQRLabel then
                TQRLabel(aControl).Caption := '';
              aControl := qrbndcqjy.FindChildControl('jycqsykdys' + IntToStr(j -
                1));
              if aControl is TQRLabel then
                TQRLabel(aControl).Caption := '';
              qrbndcqjy.FindChildControl('QRImagejy' + IntToStr(j)).enabled :=
                false;
              //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
              TQRLabel(qrbndcqjy.FindChildControl('jycqsyypyf' + IntToStr(j -
                1))).Caption := '';
              //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
              TQRLabel(qrbndcqjy.FindChildControl('jycqsyxmmc' + IntToStr(j -
                1))).caption := '';
            end
            else
            begin
              aControl := qrbndcqjy.FindChildControl('jycqsyksrq' + IntToStr(j -
                1));
              if aControl is TQRLabel then
                TQRLabel(aControl).Caption :=
                  sp_zxjl_cq_dy.FieldByName('ksrq').AsString;
              aControl := qrbndcqjy.FindChildControl('jycqsykdys' + IntToStr(j -
                1));
              if aControl is TQRLabel then
                TQRLabel(aControl).Caption :=
                  sp_zxjl_cq_dy.FieldByName('kdysmc').asstring;
              if sp_zxjl_cq_dy.FieldByName('fzph').asstring <> '' then
              begin
                qrbndcqjy.FindChildControl('QRImagejy' + IntToStr(j)).enabled :=
                  true;
                qrbndcqjy.FindChildControl('QRImagejy' + IntToStr(j)).Top :=
                  TQRLabel(qrbndcqjy.FindChildControl('jycqsyxmmc' + IntToStr(j -
                  1))).top;
                qrbndcqjy.FindChildControl('QRImagejy' + IntToStr(j)).left :=
                  qrbndcqjy.FindChildControl('jycqsyypyf' + IntToStr(j - 1)).left
                  -
                  20;
                qrbndcqjy.FindChildControl('QRImagejy' + IntToStr(j)).height :=
                  30;
                TQRLabel(qrbndcqjy.FindChildControl('jycqsyypyf' + IntToStr(j -
                  1))).Caption :=
                  trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring)
                  + '  ' + trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
                TQRLabel(qrbndcqjy.FindChildControl('jycqsyxmmc' + IntToStr(j -
                  1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring;
                //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
              end
              else
              begin
                qrbndcqjy.FindChildControl('QRImagejy' + IntToStr(j)).enabled :=
                  false;
                //qrbndcqsy.FindChildControl( 'cqsyxmmc' + IntToStr( j - 1 ) ).Width := 235;
                TQRLabel(qrbndcqjy.FindChildControl('jycqsyypyf' + IntToStr(j -
                  1))).Caption := '';
                TQRLabel(qrbndcqjy.FindChildControl('jycqsyxmmc' + IntToStr(j -
                  1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring +
                  ' '
                  + trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring) + ' ' +
                  trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
                // TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
              end;
              sp_zxjl_cq_dy.Next;
            end;
          end
          else
          begin
            aControl := qrbndcqjy.FindChildControl('jycqsyksrq' + IntToStr(j -
              1));
            if aControl is TQRLabel then
              TQRLabel(aControl).Caption :=
                sp_zxjl_cq_dy.FieldByName('ksrq').asstring;
            aControl := qrbndcqjy.FindChildControl('jycqsykdys' + IntToStr(j -
              1));
            if aControl is TQRLabel then
              TQRLabel(aControl).Caption :=
                sp_zxjl_cq_dy.FieldByName('kdysmc').asstring;
            if sp_zxjl_cq_dy.FieldByName('fzph').asstring <> '' then
            begin
              qrbndcqjy.FindChildControl('QRImagejy' + IntToStr(j)).enabled :=
                true;
              qrbndcqjy.FindChildControl('QRImagejy' + IntToStr(j)).Top :=
                TQRLabel(qrbndcqjy.FindChildControl('jycqsyxmmc' + IntToStr(j -
                1))).top;
              qrbndcqjy.FindChildControl('QRImagejy' + IntToStr(j)).left :=
                qrbndcqjy.FindChildControl('jycqsyypyf' + IntToStr(j - 1)).left -
                20;
              qrbndcqjy.FindChildControl('QRImagejy' + IntToStr(j)).height :=
                30;
              TQRLabel(qrbndcqjy.FindChildControl('jycqsyypyf' + IntToStr(j -
                1))).Caption := trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring)
                +
                '  ' + trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
              TQRLabel(qrbndcqjy.FindChildControl('jycqsyxmmc' + IntToStr(j -
                1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring;
              //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end
            else
            begin
              qrbndcqjy.FindChildControl('QRImagejy' + IntToStr(j)).enabled :=
                false;
              //qrbndcqsy.FindChildControl( 'cqsyxmmc' + IntToStr( j - 1 ) ).Width := 235;
              TQRLabel(qrbndcqjy.FindChildControl('jycqsyypyf' + IntToStr(j -
                1))).Caption := '';
              TQRLabel(qrbndcqjy.FindChildControl('jycqsyxmmc' + IntToStr(j -
                1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring + ' '
                +
                trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring) + ' ' +
                trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
              //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end;
            sp_zxjl_cq_dy.Next;
          end;
        end;
        jycqsymc.Caption := pub_yymc + '��ʱ��Һ�ƻ�ִ�е�';
        DM_data.qry_pub.Close;
        DM_data.qry_pub.SQL.text := 'select * from sys_kscwsz where bqdm=' + ''''
          + pub_bqdm + '''' + ' and bcbh=' + '''' +
          trim(sp_jbxx.fieldbyname('bch').asstring) + '''';
        try
          DM_data.qry_pub.open;
        except

        end;

        jycqsyxm.Caption := '����:' + sp_jbxx.fieldbyname('brxm').asstring;
        jycqsybch.Caption := '������:' +
          Trim(DM_data.qry_pub.FieldByName('yybch').asstring);
        jycqsyxb.Caption := '�Ա�:' + sp_jbxx.fieldbyname('brxb').asstring;
        jycqsynl.Caption := '����:' + trim(sp_jbxx.fieldbyname('brnl').asstring);
        jycqsyn.Caption := FormatDateTime('yyyy', frm_func.curr_date) + '��';

        jycqsyxmxm.Caption := '����:' + sp_jbxx.fieldbyname('brxm').asstring;
        jycqsybchbch.Caption := '������:' +
          Trim(DM_data.qry_pub.FieldByName('yybch').asstring);
        jycqsykh.Caption := '����:' + Trim(sp_jbxx.fieldbyname('tmh').asstring);
        //QRLabel62jy.Caption := '����:' + sp_jbxx.fieldbyname( 'brxm' ).asstring + '      ' +
        //  '������:' + Trim( DM_data.qry_pub.FieldByName( 'yybch' ).asstring ) + '      '+
        //  '����:' + Trim( sp_jbxx.fieldbyname( 'tmh' ).asstring  );
        //'�Ա�:' + sp_jbxx.fieldbyname( 'brxb' ).asstring +'      '+
        //'����:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
         //QuickRep3.Prepare;
        //QRLabel71.Caption := '���ҽ��:';
        qckrpcqjy.Preview;
      end;
    end else //----------------------------------------- A3-----------------
    begin
    sp_zxjl_cq_dy.First;
    if count mod 9 <> 0 then
      y := trunc(count / 9) + 1
    else
      y := trunc(count / 9);
    count := 1;
    for I := 1 to y do
    begin
      for j := 1 to 9 do
      begin
        if count < i * 9 then
        begin
          if j > (9 - (y * 9 - count)) then
          begin
            aControl := QRBand10.FindChildControl('ksrqls' + IntToStr(j - 1));
            if aControl is TQRLabel then
              TQRLabel(aControl).Caption := '';
            aControl := QRBand10.FindChildControl('kdysmcls' + IntToStr(j - 1));
            if aControl is TQRLabel then
              TQRLabel(aControl).Caption := '';
            QRBand10.FindChildControl('QRImagels_' + IntToStr(j)).enabled :=
              false;
            //TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel(QRBand10.FindChildControl('ypyfls_' + IntToStr(j -
              1))).Caption := '';
            TQRLabel(QRBand10.FindChildControl('xmmcls_' + IntToStr(j -
              1))).caption := '';
          end
          else
          begin
            aControl := QRBand10.FindChildControl('ksrqls' + IntToStr(j - 1));
            if aControl is TQRLabel then
              TQRLabel(aControl).Caption :=
                sp_zxjl_cq_dy.FieldByName('ksrq').AsString;
            aControl := QRBand10.FindChildControl('kdysmcls' + IntToStr(j - 1));
            if aControl is TQRLabel then
              TQRLabel(aControl).Caption :=
                sp_zxjl_cq_dy.FieldByName('kdysmc').asstring;
            if sp_zxjl_cq_dy.FieldByName('fzph').asstring <> '' then
            begin
              QRBand10.FindChildControl('QRImagels_' + IntToStr(j)).enabled :=
                true;
              QRBand10.FindChildControl('QRImagels_' + IntToStr(j)).Top :=
                TQRLabel(QRBand10.FindChildControl('xmmcls_' + IntToStr(j -
                1))).top;
              QRBand10.FindChildControl('QRImagels_' + IntToStr(j)).left :=
                QRBand10.FindChildControl('ypyfls_' + IntToStr(j - 1)).left -
                20;
              QRBand10.FindChildControl('QRImagels_' + IntToStr(j)).height :=
                30;
              TQRLabel(QRBand10.FindChildControl('ypyfls_' + IntToStr(j -
                1))).Caption := trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring)
                +
                '  ' + trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
              TQRLabel(QRBand10.FindChildControl('xmmcls_' + IntToStr(j -
                1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring;
            end
            else
            begin
              QRBand10.FindChildControl('QRImagels_' + IntToStr(j)).enabled :=
                false;
              QRBand10.FindChildControl('xmmcls_' + IntToStr(j - 1)).Width :=
                235;
              TQRLabel(QRBand10.FindChildControl('ypyfls_' + IntToStr(j -
                1))).Caption := '';
              TQRLabel(QRBand10.FindChildControl('xmmcls_' + IntToStr(j -
                1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring + ' '
                +
                trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring) + ' ' +
                trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
            end;
            sp_zxjl_cq_dy.Next;
          end;
        end
        else
        begin
          aControl := QRBand10.FindChildControl('ksrqls' + IntToStr(j - 1));
          if aControl is TQRLabel then
            TQRLabel(aControl).Caption :=
              sp_zxjl_cq_dy.FieldByName('ksrq').asstring;
          aControl := QRBand10.FindChildControl('kdysmcls' + IntToStr(j - 1));
          if aControl is TQRLabel then
            TQRLabel(aControl).Caption :=
              sp_zxjl_cq_dy.FieldByName('kdysmc').asstring;
          if sp_zxjl_cq_dy.FieldByName('fzph').asstring <> '' then
          begin
            QRBand10.FindChildControl('QRImagels_' + IntToStr(j)).enabled :=
              true;
            QRBand10.FindChildControl('QRImagels_' + IntToStr(j)).Top :=
              TQRLabel(QRBand10.FindChildControl('xmmcls_' + IntToStr(j -
              1))).top;
            QRBand10.FindChildControl('QRImagels_' + IntToStr(j)).left :=
              QRBand10.FindChildControl('ypyfls_' + IntToStr(j - 1)).left - 20;
            QRBand10.FindChildControl('QRImagels_' + IntToStr(j)).height := 30;
            TQRLabel(QRBand10.FindChildControl('ypyfls_' + IntToStr(j -
              1))).Caption := trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring) +
              '  ' + trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
            TQRLabel(QRBand10.FindChildControl('xmmcls_' + IntToStr(j -
              1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring;
          end
          else
          begin
            QRBand10.FindChildControl('QRImagels_' + IntToStr(j)).enabled :=
              false;
            QRBand10.FindChildControl('xmmcls_' + IntToStr(j - 1)).Width := 235;
            TQRLabel(QRBand10.FindChildControl('ypyfls_' + IntToStr(j -
              1))).Caption := '';
            TQRLabel(QRBand10.FindChildControl('xmmcls_' + IntToStr(j -
              1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring + ' ' +
              trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring) + ' ' +
              trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
          end;
          sp_zxjl_cq_dy.Next;
        end;
      end;
      DM_data.qry_pub.Close;
      DM_data.qry_pub.SQL.text := 'select * from sys_kscwsz where bqdm=' + ''''
        + pub_bqdm + '''' + ' and bcbh=' + '''' +
        trim(sp_jbxx.fieldbyname('bch').asstring) + '''';
      try
        DM_data.qry_pub.Open;
      except

      end;
      QRLabel45.Caption := pub_yymc + '��ʱ��Һ�ƻ�ִ�е�';
      QRLabel46.Caption := '����:' + sp_jbxx.fieldbyname('brxm').asstring;
      QRLabel50.Caption := '������:' +
        Trim(DM_data.qry_pub.FieldByName('yybch').asstring);
      QRLabel51.Caption := '�Ա�:' + sp_jbxx.fieldbyname('brxb').asstring;
      QRLabel52.Caption := '����:' + trim(sp_jbxx.fieldbyname('brnl').asstring);
      QRLabel53.Caption := FormatDateTime('yyyy', frm_func.curr_date) + '��';

      QRLabel67.Caption := '����:' + sp_jbxx.fieldbyname('brxm').asstring +
        '      ' +
        '������:' + Trim(DM_data.qry_pub.FieldByName('yybch').asstring) +
        '      ' +
        '����:' + Trim(sp_jbxx.fieldbyname('tmh').asstring);
      //   '�Ա�:' + sp_jbxx.fieldbyname( 'brxb' ).asstring+'      '+
      //   '����:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
//QuickRep3.Prepare;
      if pub_yydm <> '0237' then
      begin
        QRLabel58.Caption := '���ҽ����';
      end
      else
      begin
        QRLabel58.Caption := '';
      end;
      QuickRep5.Preview;
    end;
  end;
end;
end;

procedure Tfrm_yzinput.N15Click(Sender: TObject);
var
  i, y, j, count, x: Integer;
  aControl: TControl;
  v_lb, v_yytj, filter: string;
begin
  with sp_zxjl_cq_dy do
  begin
    Filtered := False;
    Close;
    Parameters.ParamByName('@zyh').Value :=
      Trim(sp_jbxx.fieldbyname('zyh').asstring);
    Parameters.ParamByName('@fs').Value := 0;
    Open;
  end;
  //sp_zxjl_cq_dy.Filtered := False;
  DM_data.qry_pub.close;
  DM_data.qry_pub.sql.text :=
    'select yytj from zybl_zyyz_dytjsz where dyxm=''ע��ƻ���''';
  try
    DM_data.qry_pub.Open;
  except

  end;
  if DM_data.qry_pub.IsEmpty then
  begin
    v_yytj := '';
  end
  else
  begin
    DM_data.qry_pub.First;
    while not DM_data.qry_pub.eof do
    begin
      v_yytj := v_yytj + '(yytj=' + '''' +
        DM_data.qry_pub.FieldByName('yytj').asstring + '''' + ' and  tzrq=null)'
        +
        ' or ';
      DM_data.qry_pub.Next;
    end;

  end;

  DM_data.qry_pub.close;
  DM_data.qry_pub.sql.text :=
    'select lbmc from zybl_zyyz_dylbsz where dyxm=''ע��ƻ���''';
  try
    DM_data.qry_pub.Open;
  except

  end;
  if DM_data.qry_pub.IsEmpty then
  begin
    v_lb := '';
  end
  else
  begin
    DM_data.qry_pub.First;
    while not DM_data.qry_pub.eof do
    begin
      v_lb := v_lb + '(lb=' + '''' + DM_data.qry_pub.FieldByName('lbmc').asstring
        + '''' + ' and  tzrq=null )' + ' or ';
      DM_data.qry_pub.Next;
    end;

  end;

  if v_yytj + v_lb = '' then
  begin
    filter := ' 1<>1 ';
  end
  else
  begin
    filter := v_yytj + v_lb + ' ( yytj=''�������'' )';
  end;
  sp_zxjl_cq_dy.Filtered := false;
  sp_zxjl_cq_dy.Filter := 'yytj=''�������''';
  sp_zxjl_cq_dy.Filtered := True;
  if sp_zxjl_cq_dy.RecordCount = 0 then
  begin
    count := 1;
    if zzdx = 'A4' then
    begin
      sp_zxjl_cq_dy.First;
      if count mod 5 <> 0 then
        y := trunc(count / 5) + 1
      else
        y := trunc(count / 5);
      count := 1;
      for I := 1 to y do
      begin
        for j := 1 to 5 do
        begin
          if count < i * 5 then
          begin
            if j > (5 - (y * 5 - count)) then
            begin
              aControl := DetailBand1.FindChildControl('ksrq' + IntToStr(j -
                1));
              if aControl is TQRLabel then
                TQRLabel(aControl).Caption := '';
              aControl := DetailBand1.FindChildControl('kdysmc' + IntToStr(j -
                1));
              if aControl is TQRLabel then
                TQRLabel(aControl).Caption := '';
              DetailBand1.FindChildControl('qrgrimage' + IntToStr(j)).enabled :=
                false;
              //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
              TQRLabel(DetailBand1.FindChildControl('ypyf' + IntToStr(j -
                1))).Caption := '';
              //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
              TQRLabel(DetailBand1.FindChildControl('xmmc' + IntToStr(j -
                1))).caption := '';
            end
            else
            begin
              aControl := DetailBand1.FindChildControl('ksrq' + IntToStr(j -
                1));
              if aControl is TQRLabel then
                TQRLabel(aControl).Caption :=
                  sp_zxjl_cq_dy.FieldByName('ksrq').AsString;
              aControl := DetailBand1.FindChildControl('kdysmc' + IntToStr(j -
                1));
              if aControl is TQRLabel then
                TQRLabel(aControl).Caption :=
                  sp_zxjl_cq_dy.FieldByName('kdysmc').asstring;
              if sp_zxjl_cq_dy.FieldByName('fzph').asstring <> '' then
              begin
                DetailBand1.FindChildControl('QRgrImage' + IntToStr(j)).enabled
                  := true;
                DetailBand1.FindChildControl('QRgrImage' + IntToStr(j)).Top :=
                  TQRLabel(DetailBand1.FindChildControl('xmmc' + IntToStr(j -
                  1))).top;
                DetailBand1.FindChildControl('QRgrImage' + IntToStr(j)).left :=
                  DetailBand1.FindChildControl('ypyf' + IntToStr(j - 1)).left -
                  20;
                DetailBand1.FindChildControl('qrgrimage' + IntToStr(j)).height
                  := 30;
                TQRLabel(DetailBand1.FindChildControl('ypyf' + IntToStr(j -
                  1))).Caption :=
                  trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring)
                  + '  ' + trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
                TQRLabel(DetailBand1.FindChildControl('xmmc' + IntToStr(j -
                  1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring;
                //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
              end
              else
              begin
                DetailBand1.FindChildControl('qrgrimage' + IntToStr(j)).enabled
                  := false;
                DetailBand1.FindChildControl('xmmc' + IntToStr(j - 1)).Width :=
                  235;
                TQRLabel(DetailBand1.FindChildControl('ypyf' + IntToStr(j -
                  1))).Caption := '';
                TQRLabel(DetailBand1.FindChildControl('xmmc' + IntToStr(j -
                  1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring +
                  ' '
                  + trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring) + ' ' +
                  trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
                // TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
              end;
              sp_zxjl_cq_dy.Next;
            end;
          end
          else
          begin
            aControl := DetailBand1.FindChildControl('ksrq' + IntToStr(j - 1));
            if aControl is TQRLabel then
              TQRLabel(aControl).Caption :=
                sp_zxjl_cq_dy.FieldByName('ksrq').asstring;
            aControl := DetailBand1.FindChildControl('kdysmc' + IntToStr(j -
              1));
            if aControl is TQRLabel then
              TQRLabel(aControl).Caption :=
                sp_zxjl_cq_dy.FieldByName('kdysmc').asstring;
            if sp_zxjl_cq_dy.FieldByName('fzph').asstring <> '' then
            begin
              DetailBand1.FindChildControl('QRgrImage' + IntToStr(j)).enabled :=
                true;
              DetailBand1.FindChildControl('QRgrImage' + IntToStr(j)).Top :=
                TQRLabel(DetailBand1.FindChildControl('xmmc' + IntToStr(j -
                1))).top;
              DetailBand1.FindChildControl('qrgrimage' + IntToStr(j)).left :=
                DetailBand1.FindChildControl('ypyf' + IntToStr(j - 1)).left -
                20;
              DetailBand1.FindChildControl('qrgrimage' + IntToStr(j)).height :=
                30;
              TQRLabel(DetailBand1.FindChildControl('ypyf' + IntToStr(j -
                1))).Caption := trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring)
                +
                '  ' + trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
              TQRLabel(DetailBand1.FindChildControl('xmmc' + IntToStr(j -
                1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring;
              //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end
            else
            begin
              DetailBand1.FindChildControl('qrgrimage' + IntToStr(j)).enabled :=
                false;
              DetailBand1.FindChildControl('xmmc' + IntToStr(j - 1)).Width :=
                235;
              TQRLabel(DetailBand1.FindChildControl('ypyf' + IntToStr(j -
                1))).Caption := '';
              TQRLabel(DetailBand1.FindChildControl('xmmc' + IntToStr(j -
                1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring + ' '
                +
                trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring) + ' ' +
                trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
              //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end;
            sp_zxjl_cq_dy.Next;
          end;
        end;
        QRLabel2.Caption := pub_yymc + '����ע��ƻ�ִ�е�';
        DM_data.qry_pub.Close;
        DM_data.qry_pub.SQL.text := 'select * from sys_kscwsz where bqdm=' + ''''
          + pub_bqdm + '''' + ' and bcbh=' + '''' +
          trim(sp_jbxx.fieldbyname('bch').asstring) + '''';
        try
          DM_data.qry_pub.Open;
        except

        end;

        QRLabel3.Caption := '����:' + sp_jbxx.fieldbyname('brxm').asstring;
        QRLabel20.Caption := '������:' +
          Trim(DM_data.qry_pub.FieldByName('yybch').asstring);
        QRLabel21.Caption := '�Ա�:' + sp_jbxx.fieldbyname('brxb').asstring;
        QRLabel26.Caption := '����:' +
          trim(sp_jbxx.fieldbyname('brnl').asstring);
        ny.Caption := FormatDateTime('yyyy', frm_func.curr_date) + '��';

        QRLabel61.Caption := '����:' + sp_jbxx.fieldbyname('brxm').asstring +
          '      ' +
          '������:' + Trim(DM_data.qry_pub.FieldByName('yybch').asstring) +
          '      ' +
          '����:' + Trim(sp_jbxx.fieldbyname('tmh').asstring);
        //'�Ա�:' + sp_jbxx.fieldbyname( 'brxb' ).asstring +'      '+
        //'����:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
//QuickRep3.Prepare;
        QRLabel57.Caption := '���ҽ��:';
        QuickRep3.Preview;
      end;
    end
    else if zzdx = 'B5' then
    begin
      sp_zxjl_cq_dy.First;
      if count mod 9 <> 0 then
        y := trunc(count / 9) + 1
      else
        y := trunc(count / 9);
      count := 1;
      for I := 1 to y do
      begin
        for j := 1 to 9 do
        begin
          if count < i * 9 then
          begin
            if j > (9 - (y * 9 - count)) then
            begin
              aControl := DetailBand2.FindChildControl('ksrqjy' + IntToStr(j -
                1));
              if aControl is TQRLabel then
                TQRLabel(aControl).Caption := '';
              aControl := DetailBand2.FindChildControl('kdysmcjy' + IntToStr(j -
                1));
              if aControl is TQRLabel then
                TQRLabel(aControl).Caption := '';
              DetailBand2.FindChildControl('qrgrimagejy' + IntToStr(j)).enabled
                := false;
              //  TQRLabel( DetailBand2.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
              TQRLabel(DetailBand2.FindChildControl('ypyfjy' + IntToStr(j -
                1))).Caption := '';
              //TQRLabel( DetailBand2.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
              TQRLabel(DetailBand2.FindChildControl('xmmcjy' + IntToStr(j -
                1))).caption := '';
            end
            else
            begin
              aControl := DetailBand2.FindChildControl('ksrqjy' + IntToStr(j -
                1));
              if aControl is TQRLabel then
                TQRLabel(aControl).Caption :=
                  sp_zxjl_cq_dy.FieldByName('ksrq').AsString;
              aControl := DetailBand2.FindChildControl('kdysmcjy' + IntToStr(j -
                1));
              if aControl is TQRLabel then
                TQRLabel(aControl).Caption :=
                  sp_zxjl_cq_dy.FieldByName('kdysmc').asstring;
              if sp_zxjl_cq_dy.FieldByName('fzph').asstring <> '' then
              begin
                DetailBand2.FindChildControl('QRgrImagejy' + IntToStr(j)).enabled
                  := true;
                DetailBand2.FindChildControl('QRgrImagejy' + IntToStr(j)).Top :=
                  TQRLabel(DetailBand2.FindChildControl('xmmcjy' + IntToStr(j -
                  1))).top;
                DetailBand2.FindChildControl('QRgrImagejy' + IntToStr(j)).left
                  := DetailBand2.FindChildControl('ypyfjy' + IntToStr(j -
                  1)).left
                  - 20;
                DetailBand2.FindChildControl('qrgrimagejy' + IntToStr(j)).height
                  := 30;
                TQRLabel(DetailBand2.FindChildControl('ypyfjy' + IntToStr(j -
                  1))).Caption :=
                  trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring)
                  + '  ' + trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
                TQRLabel(DetailBand2.FindChildControl('xmmcjy' + IntToStr(j -
                  1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring;
                //TQRLabel( DetailBand2.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
              end
              else
              begin
                DetailBand2.FindChildControl('qrgrimagejy' + IntToStr(j)).enabled
                  := false;
                DetailBand2.FindChildControl('xmmcjy' + IntToStr(j - 1)).Width
                  := 235;
                TQRLabel(DetailBand2.FindChildControl('ypyfjy' + IntToStr(j -
                  1))).Caption := '';
                TQRLabel(DetailBand2.FindChildControl('xmmcjy' + IntToStr(j -
                  1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring +
                  ' '
                  + trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring) + ' ' +
                  trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
                // TQRLabel( DetailBand2.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
              end;
              sp_zxjl_cq_dy.Next;
            end;
          end
          else
          begin
            aControl := DetailBand2.FindChildControl('ksrqjy' + IntToStr(j -
              1));
            if aControl is TQRLabel then
              TQRLabel(aControl).Caption :=
                sp_zxjl_cq_dy.FieldByName('ksrq').asstring;
            aControl := DetailBand2.FindChildControl('kdysmcjy' + IntToStr(j -
              1));
            if aControl is TQRLabel then
              TQRLabel(aControl).Caption :=
                sp_zxjl_cq_dy.FieldByName('kdysmc').asstring;
            if sp_zxjl_cq_dy.FieldByName('fzph').asstring <> '' then
            begin
              DetailBand2.FindChildControl('QRgrImagejy' + IntToStr(j)).enabled
                := true;
              DetailBand2.FindChildControl('QRgrImagejy' + IntToStr(j)).Top :=
                TQRLabel(DetailBand2.FindChildControl('xmmcjy' + IntToStr(j -
                1))).top;
              DetailBand2.FindChildControl('qrgrimagejy' + IntToStr(j)).left :=
                DetailBand2.FindChildControl('ypyfjy' + IntToStr(j - 1)).left -
                20;
              DetailBand2.FindChildControl('qrgrimagejy' + IntToStr(j)).height
                := 30;
              TQRLabel(DetailBand2.FindChildControl('ypyfjy' + IntToStr(j -
                1))).Caption := trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring)
                +
                '  ' + trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
              TQRLabel(DetailBand2.FindChildControl('xmmcjy' + IntToStr(j -
                1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring;
              //  TQRLabel( DetailBand2.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end
            else
            begin
              DetailBand2.FindChildControl('qrgrimagejy' + IntToStr(j)).enabled
                := false;
              DetailBand2.FindChildControl('xmmcjy' + IntToStr(j - 1)).Width :=
                235;
              TQRLabel(DetailBand2.FindChildControl('ypyfjy' + IntToStr(j -
                1))).Caption := '';
              TQRLabel(DetailBand2.FindChildControl('xmmcjy' + IntToStr(j -
                1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring + ' '
                +
                trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring) + ' ' +
                trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
              //  TQRLabel( DetailBand2.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end;
            sp_zxjl_cq_dy.Next;
          end;
        end;
        QRLabel2jy.Caption := pub_yymc + '����ע��ƻ�ִ�е�';
        DM_data.qry_pub.Close;
        DM_data.qry_pub.SQL.text := 'select * from sys_kscwsz where bqdm=' + ''''
          + pub_bqdm + '''' + ' and bcbh=' + '''' +
          trim(sp_jbxx.fieldbyname('bch').asstring) + '''';
        try
          DM_data.qry_pub.Open;
        except

        end;

        QRLabel3jy.Caption := '����:' + sp_jbxx.fieldbyname('brxm').asstring;
        QRLabel20jy.Caption := '������:' +
          Trim(DM_data.qry_pub.FieldByName('yybch').asstring);
        QRLabel21jy.Caption := '�Ա�:' + sp_jbxx.fieldbyname('brxb').asstring;
        QRLabel26jy.Caption := '����:' +
          trim(sp_jbxx.fieldbyname('brnl').asstring);
        nyjy.Caption := FormatDateTime('yyyy', frm_func.curr_date) + '��';

        QRLabel61jy.Caption := '����:' + sp_jbxx.fieldbyname('brxm').asstring +
          '      ' +
          '������:' + Trim(DM_data.qry_pub.FieldByName('yybch').asstring) +
          '      ' +
          '����:' + Trim(sp_jbxx.fieldbyname('tmh').asstring);

        QuickRep6.Preview;
      end;
    end
    else
    begin
      sp_zxjl_cq_dy.First;
      if count mod 8 <> 0 then
        y := trunc(count / 8) + 1
      else
        y := trunc(count / 8);
      count := 1;
      for I := 1 to y do
      begin
        for j := 1 to 8 do
        begin
          if count < i * 8 then
          begin
            if j > (8 - (y * 8 - count)) then
            begin
              aControl := qrbndcqzs.FindChildControl('cqzsksrq' + IntToStr(j -
                1));
              if aControl is TQRLabel then
                TQRLabel(aControl).Caption := '';
              aControl := qrbndcqzs.FindChildControl('cqzskdys' + IntToStr(j -
                1));
              if aControl is TQRLabel then
                TQRLabel(aControl).Caption := '';
              qrbndcqzs.FindChildControl('QRImagezs' + IntToStr(j)).enabled :=
                false;
              //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
              TQRLabel(qrbndcqzs.FindChildControl('cqzsypyf' + IntToStr(j -
                1))).Caption := '';
              //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
              TQRLabel(qrbndcqzs.FindChildControl('cqzsxmmc' + IntToStr(j -
                1))).caption := '';
            end
            else
            begin
              aControl := qrbndcqzs.FindChildControl('cqzsksrq' + IntToStr(j -
                1));
              if aControl is TQRLabel then
                TQRLabel(aControl).Caption :=
                  sp_zxjl_cq_dy.FieldByName('ksrq').AsString;
              aControl := qrbndcqzs.FindChildControl('cqzskdys' + IntToStr(j -
                1));
              if aControl is TQRLabel then
                TQRLabel(aControl).Caption :=
                  sp_zxjl_cq_dy.FieldByName('kdysmc').asstring;
              if sp_zxjl_cq_dy.FieldByName('fzph').asstring <> '' then
              begin
                qrbndcqzs.FindChildControl('QRImagezs' + IntToStr(j)).enabled :=
                  true;
                qrbndcqzs.FindChildControl('QRImagezs' + IntToStr(j)).Top :=
                  TQRLabel(qrbndcqzs.FindChildControl('cqzsxmmc' + IntToStr(j -
                  1))).top;
                qrbndcqzs.FindChildControl('QRImagezs' + IntToStr(j)).left :=
                  qrbndcqzs.FindChildControl('cqzsypyf' + IntToStr(j - 1)).left
                  -
                  20;
                qrbndcqzs.FindChildControl('QRImagezs' + IntToStr(j)).height :=
                  30;
                TQRLabel(qrbndcqzs.FindChildControl('cqzsypyf' + IntToStr(j -
                  1))).Caption :=
                  trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring)
                  + '  ' + trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
                TQRLabel(qrbndcqzs.FindChildControl('cqzsxmmc' + IntToStr(j -
                  1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring;
                //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
              end
              else
              begin
                qrbndcqzs.FindChildControl('QRImagezs' + IntToStr(j)).enabled :=
                  false;
                //qrbndcqzs.FindChildControl( 'cqzsxmmc' + IntToStr( j - 1 ) ).Width := 235;
                TQRLabel(qrbndcqzs.FindChildControl('cqzsypyf' + IntToStr(j -
                  1))).Caption := '';
                TQRLabel(qrbndcqzs.FindChildControl('cqzsxmmc' + IntToStr(j -
                  1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring +
                  ' '
                  + trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring) + ' ' +
                  trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
                // TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
              end;
              sp_zxjl_cq_dy.Next;
            end;
          end
          else
          begin
            aControl := qrbndcqzs.FindChildControl('cqzsksrq' + IntToStr(j -
              1));
            if aControl is TQRLabel then
              TQRLabel(aControl).Caption :=
                sp_zxjl_cq_dy.FieldByName('ksrq').asstring;
            aControl := qrbndcqzs.FindChildControl('cqzskdys' + IntToStr(j -
              1));
            if aControl is TQRLabel then
              TQRLabel(aControl).Caption :=
                sp_zxjl_cq_dy.FieldByName('kdysmc').asstring;
            if sp_zxjl_cq_dy.FieldByName('fzph').asstring <> '' then
            begin
              qrbndcqzs.FindChildControl('QRImagezs' + IntToStr(j)).enabled :=
                true;
              qrbndcqzs.FindChildControl('QRImagezs' + IntToStr(j)).Top :=
                TQRLabel(qrbndcqzs.FindChildControl('cqzsxmmc' + IntToStr(j -
                1))).top;
              qrbndcqzs.FindChildControl('QRImagezs' + IntToStr(j)).left :=
                qrbndcqzs.FindChildControl('cqzsypyf' + IntToStr(j - 1)).left -
                20;
              qrbndcqzs.FindChildControl('QRImagezs' + IntToStr(j)).height :=
                30;
              TQRLabel(qrbndcqzs.FindChildControl('cqzsypyf' + IntToStr(j -
                1))).Caption := trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring)
                +
                '  ' + trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
              TQRLabel(qrbndcqzs.FindChildControl('cqzsxmmc' + IntToStr(j -
                1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring;
              //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end
            else
            begin
              qrbndcqzs.FindChildControl('QRImagezs' + IntToStr(j)).enabled :=
                false;
              //qrbndcqzs.FindChildControl( 'cqzsxmmc' + IntToStr( j - 1 ) ).Width := 235;
              TQRLabel(qrbndcqzs.FindChildControl('cqzsypyf' + IntToStr(j -
                1))).Caption := '';
              TQRLabel(qrbndcqzs.FindChildControl('cqzsxmmc' + IntToStr(j -
                1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring + ' '
                +
                trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring) + ' ' +
                trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
              //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end;
            sp_zxjl_cq_dy.Next;
          end;
        end;
        QRcqzsmc.Caption := pub_yymc + '����ע��ƻ�ִ�е�';
        DM_data.qry_pub.Close;
        DM_data.qry_pub.SQL.text := 'select * from sys_kscwsz where bqdm=' + ''''
          + pub_bqdm + '''' + ' and bcbh=' + '''' +
          trim(sp_jbxx.fieldbyname('bch').asstring) + '''';
        try
          DM_data.qry_pub.Open;
        except

        end;

        QRcqzsxm.Caption := '����:' + sp_jbxx.fieldbyname('brxm').asstring;
        QRcqzsbch.Caption := '������:' +
          Trim(DM_data.qry_pub.FieldByName('yybch').asstring);
        QRcqzsxb.Caption := '�Ա�:' + sp_jbxx.fieldbyname('brxb').asstring;
        QRcqzsnl.Caption := '����:' +
          trim(sp_jbxx.fieldbyname('brnl').asstring);
        QRcqzsn.Caption := FormatDateTime('yyyy', frm_func.curr_date) + '��';
        QRcqzsxmxm.Caption := '����:' + sp_jbxx.fieldbyname('brxm').asstring;
        QRcqzsbchbch.Caption := '������:' +
          Trim(DM_data.qry_pub.FieldByName('yybch').asstring);
        QRcqzskhkh.Caption := '����:' +
          Trim(sp_jbxx.fieldbyname('tmh').asstring);

        ////QRLabel62jy.Caption := '����:' + sp_jbxx.fieldbyname( 'brxm' ).asstring + '      ' +
        //  '������:' + Trim( DM_data.qry_pub.FieldByName( 'yybch' ).asstring ) + '      '+
        //  '����:' + Trim( sp_jbxx.fieldbyname( 'tmh' ).asstring  );
        //'�Ա�:' + sp_jbxx.fieldbyname( 'brxb' ).asstring +'      '+
        //'����:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
//QuickRep3.Prepare;
        //QRLabel71.Caption := '���ҽ��:';
        qckrp2.Preview;
      end;
    end;
  end;

end;

procedure Tfrm_yzinput.N16Click(Sender: TObject);
var
  i, y, j, count, x: Integer;
  aControl: TControl;
  v_yytj, v_lb, filter: string;
begin
  with sp_zxjl_cq_dy do
  begin
    Filtered := False;
    Close;
    Parameters.ParamByName('@zyh').Value :=
      Trim(sp_jbxx.fieldbyname('zyh').asstring);
    Parameters.ParamByName('@fs').Value := 1;
    Open;
  end;
  //sp_zxjl_cq_dy.Filtered := False;
  DM_data.qry_pub.close;
  DM_data.qry_pub.sql.text :=
    'select yytj from zybl_zyyz_dytjsz where dyxm=''ע��ƻ���''';
  try
    DM_data.qry_pub.Open;
  except

  end;
  if DM_data.qry_pub.IsEmpty then
  begin
    v_yytj := '';
  end
  else
  begin
    DM_data.qry_pub.First;
    while not DM_data.qry_pub.eof do
    begin
      v_yytj := v_yytj + '(yytj=' + '''' +
        DM_data.qry_pub.FieldByName('yytj').asstring + '''' +
        ' and  tzrq=null and kdrq>=' + '''' + formatdatetime('yy-MM-dd',
        frm_func.curr_date) + ' 00:00' + ''')' + ' or ';
      DM_data.qry_pub.Next;
    end;

  end;

  DM_data.qry_pub.close;
  DM_data.qry_pub.sql.text :=
    'select lbmc from zybl_zyyz_dylbsz where dyxm=''ע��ƻ���''';
  try
    DM_data.qry_pub.Open;
  except

  end;
  if DM_data.qry_pub.IsEmpty then
  begin
    v_lb := '';
  end
  else
  begin
    DM_data.qry_pub.First;
    while not DM_data.qry_pub.eof do
    begin
      v_lb := v_lb + '(lb=' + '''' + DM_data.qry_pub.FieldByName('lbmc').asstring
        + '''' + ' and  tzrq=null and kdrq>=' + '''' +
        formatdatetime('yy-MM-dd',
        frm_func.curr_date) + ' 00:00' + ''')' + ' or ';
      DM_data.qry_pub.Next;
    end;

  end;

  if v_yytj + v_lb = '' then
  begin
    filter := ' 1<>1 ';
  end
  else
  begin
    filter := v_yytj + v_lb + ' ( yytj = ''�������'' )';
  end;
  sp_zxjl_cq_dy.Filtered := false;
  sp_zxjl_cq_dy.Filter := ' yytj = ''�������'' ';
  sp_zxjl_cq_dy.Filtered := True;
  if sp_zxjl_cq_dy.RecordCount = 0 then
  begin
    count := 1;
    sp_zxjl_cq_dy.First;
    if count mod 9 <> 0 then
      y := trunc(count / 9) + 1
    else
      y := trunc(count / 9);
    count := 1;
    for I := 1 to y do
    begin
      for j := 1 to 9 do
      begin
        if count < i * 9 then
        begin
          if j > (9 - (y * 9 - count)) then
          begin
            aControl := QRBand10.FindChildControl('ksrqls' + IntToStr(j - 1));
            if aControl is TQRLabel then
              TQRLabel(aControl).Caption := '';
            aControl := QRBand10.FindChildControl('kdysmcls' + IntToStr(j - 1));
            if aControl is TQRLabel then
              TQRLabel(aControl).Caption := '';
            QRBand10.FindChildControl('QRImagels_' + IntToStr(j)).enabled :=
              false;
            //TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel(QRBand10.FindChildControl('ypyfls_' + IntToStr(j -
              1))).Caption := '';
            TQRLabel(QRBand10.FindChildControl('xmmcls_' + IntToStr(j -
              1))).caption := '';
          end
          else
          begin
            aControl := QRBand10.FindChildControl('ksrqls' + IntToStr(j - 1));
            if aControl is TQRLabel then
              TQRLabel(aControl).Caption :=
                sp_zxjl_cq_dy.FieldByName('ksrq').AsString;
            aControl := QRBand10.FindChildControl('kdysmcls' + IntToStr(j - 1));
            if aControl is TQRLabel then
              TQRLabel(aControl).Caption :=
                sp_zxjl_cq_dy.FieldByName('kdysmc').asstring;
            if sp_zxjl_cq_dy.FieldByName('fzph').asstring <> '' then
            begin
              QRBand10.FindChildControl('QRImagels_' + IntToStr(j)).enabled :=
                true;
              QRBand10.FindChildControl('QRImagels_' + IntToStr(j)).Top :=
                TQRLabel(QRBand10.FindChildControl('xmmcls_' + IntToStr(j -
                1))).top;
              QRBand10.FindChildControl('QRImagels_' + IntToStr(j)).left :=
                QRBand10.FindChildControl('ypyfls_' + IntToStr(j - 1)).left -
                20;
              QRBand10.FindChildControl('QRImagels_' + IntToStr(j)).height :=
                30;
              TQRLabel(QRBand10.FindChildControl('ypyfls_' + IntToStr(j -
                1))).Caption := trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring)
                +
                '  ' + trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
              TQRLabel(QRBand10.FindChildControl('xmmcls_' + IntToStr(j -
                1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring;
            end
            else
            begin
              QRBand10.FindChildControl('QRImagels_' + IntToStr(j)).enabled :=
                false;
              QRBand10.FindChildControl('xmmcls_' + IntToStr(j - 1)).Width :=
                235;
              TQRLabel(QRBand10.FindChildControl('ypyfls_' + IntToStr(j -
                1))).Caption := '';
              TQRLabel(QRBand10.FindChildControl('xmmcls_' + IntToStr(j -
                1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring + ' '
                +
                trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring) + ' ' +
                trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
            end;
            sp_zxjl_cq_dy.Next;
          end;
        end
        else
        begin
          aControl := QRBand10.FindChildControl('ksrqls' + IntToStr(j - 1));
          if aControl is TQRLabel then
            TQRLabel(aControl).Caption :=
              sp_zxjl_cq_dy.FieldByName('ksrq').asstring;
          aControl := QRBand10.FindChildControl('kdysmcls' + IntToStr(j - 1));
          if aControl is TQRLabel then
            TQRLabel(aControl).Caption :=
              sp_zxjl_cq_dy.FieldByName('kdysmc').asstring;
          if sp_zxjl_cq_dy.FieldByName('fzph').asstring <> '' then
          begin
            QRBand10.FindChildControl('QRImagels_' + IntToStr(j)).enabled :=
              true;
            QRBand10.FindChildControl('QRImagels_' + IntToStr(j)).Top :=
              TQRLabel(QRBand10.FindChildControl('xmmcls_' + IntToStr(j -
              1))).top;
            QRBand10.FindChildControl('QRImagels_' + IntToStr(j)).left :=
              QRBand10.FindChildControl('ypyfls_' + IntToStr(j - 1)).left - 20;
            QRBand10.FindChildControl('QRImagels_' + IntToStr(j)).height := 30;
            TQRLabel(QRBand10.FindChildControl('ypyfls_' + IntToStr(j -
              1))).Caption := trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring) +
              '  ' + trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
            TQRLabel(QRBand10.FindChildControl('xmmcls_' + IntToStr(j -
              1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring;
          end
          else
          begin
            QRBand10.FindChildControl('QRImagels_' + IntToStr(j)).enabled :=
              false;
            QRBand10.FindChildControl('xmmcls_' + IntToStr(j - 1)).Width := 235;
            TQRLabel(QRBand10.FindChildControl('ypyfls_' + IntToStr(j -
              1))).Caption := '';
            TQRLabel(QRBand10.FindChildControl('xmmcls_' + IntToStr(j -
              1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring + ' ' +
              trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring) + ' ' +
              trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
          end;
          sp_zxjl_cq_dy.Next;
        end;
      end;
      DM_data.qry_pub.Close;
      DM_data.qry_pub.SQL.text := 'select * from sys_kscwsz where bqdm=' + ''''
        + pub_bqdm + '''' + ' and bcbh=' + '''' +
        trim(sp_jbxx.fieldbyname('bch').asstring) + '''';
      try
        DM_data.qry_pub.Open;
      except

      end;
      QRLabel45.Caption := pub_yymc + '��ʱע��ƻ�ִ�е�';
      QRLabel46.Caption := '����:' + sp_jbxx.fieldbyname('brxm').asstring;
      QRLabel50.Caption := '������:' +
        Trim(DM_data.qry_pub.FieldByName('yybch').asstring);
      QRLabel51.Caption := '�Ա�:' + sp_jbxx.fieldbyname('brxb').asstring;
      QRLabel52.Caption := '����:' + trim(sp_jbxx.fieldbyname('brnl').asstring);
      QRLabel53.Caption := FormatDateTime('yyyy', frm_func.curr_date) + '��';
      QRLabel67.Caption := '����:' + sp_jbxx.fieldbyname('brxm').asstring +
        '      ' +
        '������:' + Trim(DM_data.qry_pub.FieldByName('yybch').asstring) +
        '      ' +
        '�Ա�:' + sp_jbxx.fieldbyname('brxb').asstring + '      ' +
        '����:' + trim(sp_jbxx.fieldbyname('brnl').asstring) + '   ' + '����:' +
        Trim(sp_jbxx.fieldbyname('tmh').asstring);
      //QuickRep3.Prepare;
      QRLabel58.Caption := '���ҽ����';
      QuickRep5.Preview;
    end;
  end;

end;

procedure Tfrm_yzinput.N17Click(Sender: TObject);
var
  i, y, j, count, x: Integer;
  aControl: TControl;
  v_lb, v_yytj, filter: string;
begin
  with sp_zxjl_cq_dy do
  begin
    Filtered := False;
    Close;
    Parameters.ParamByName('@zyh').Value :=
      Trim(sp_jbxx.fieldbyname('zyh').asstring);
    Parameters.ParamByName('@fs').Value := 0;
    Open;
  end;
  //sp_zxjl_cq_dy.Filtered := False;
  DM_data.qry_pub.close;
  DM_data.qry_pub.sql.text :=
    'select yytj from zybl_zyyz_dytjsz where dyxm=''���Ƽƻ���''';
  try
    DM_data.qry_pub.Open;
  except

  end;
  if DM_data.qry_pub.IsEmpty then
  begin
    v_yytj := '';
  end
  else
  begin
    DM_data.qry_pub.First;
    while not DM_data.qry_pub.eof do
    begin
      v_yytj := v_yytj + '(yytj=' + '''' +
        DM_data.qry_pub.FieldByName('yytj').asstring + '''' + ' and  tzrq=null )'
        +
        ' or ';
      DM_data.qry_pub.Next;
    end;

  end;
  DM_data.qry_pub.close;
  DM_data.qry_pub.sql.text :=
    'select lbmc from zybl_zyyz_dylbsz where dyxm=''���Ƽƻ���''';
  try
    DM_data.qry_pub.Open;
  except

  end;
  if DM_data.qry_pub.IsEmpty then
  begin
    v_lb := '';
  end
  else
  begin
    DM_data.qry_pub.First;
    while not DM_data.qry_pub.eof do
    begin
      v_lb := v_lb + '(lb=' + '''' + DM_data.qry_pub.FieldByName('lbmc').asstring
        + '''' + ' and  tzrq=null )' + ' or ';
      DM_data.qry_pub.Next;
    end;

  end;

  if v_yytj + v_lb = '' then
  begin
    filter := ' 1<>1 ';
  end
  else
  begin
    filter := v_yytj + v_lb + ' ( yytj=''�������'' )';
  end;
  sp_zxjl_cq_dy.Filtered := false;
  sp_zxjl_cq_dy.Filter := 'yytj=''�������''';
  sp_zxjl_cq_dy.Filtered := True;
  if sp_zxjl_cq_dy.RecordCount = 0 then
  begin
    count := 1;
    if (zzdx = 'A4') or (zzdx = 'B5') then
    begin
      sp_zxjl_cq_dy.First;
      if count mod 9 <> 0 then
        y := trunc(count / 9) + 1
      else
        y := trunc(count / 9);
      count := 1;
      for I := 1 to y do
      begin
        for j := 1 to 9 do
        begin
          if count < i * 9 then
          begin
            if j > (9 - (y * 9 - count)) then
            begin
              aControl := QRBand10.FindChildControl('ksrqls' + IntToStr(j - 1));
              if aControl is TQRLabel then
                TQRLabel(aControl).Caption := '';
              aControl := QRBand10.FindChildControl('kdysmcls' + IntToStr(j -
                1));
              if aControl is TQRLabel then
                TQRLabel(aControl).Caption := '';
              QRBand10.FindChildControl('QRImagels_' + IntToStr(j)).enabled :=
                false;
              //TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).Width := 0;
              TQRLabel(QRBand10.FindChildControl('ypyfls_' + IntToStr(j -
                1))).Caption := '';
              TQRLabel(QRBand10.FindChildControl('xmmcls_' + IntToStr(j -
                1))).caption := '';
            end
            else
            begin
              aControl := QRBand10.FindChildControl('ksrqls' + IntToStr(j - 1));
              if aControl is TQRLabel then
                TQRLabel(aControl).Caption :=
                  sp_zxjl_cq_dy.FieldByName('ksrq').AsString;
              aControl := QRBand10.FindChildControl('kdysmcls' + IntToStr(j -
                1));
              if aControl is TQRLabel then
                TQRLabel(aControl).Caption :=
                  sp_zxjl_cq_dy.FieldByName('kdysmc').asstring;
              if sp_zxjl_cq_dy.FieldByName('fzph').asstring <> '' then
              begin
                QRBand10.FindChildControl('QRImagels_' + IntToStr(j)).enabled :=
                  true;
                QRBand10.FindChildControl('QRImagels_' + IntToStr(j)).Top :=
                  TQRLabel(QRBand10.FindChildControl('xmmcls_' + IntToStr(j -
                  1))).top;
                QRBand10.FindChildControl('QRImagels_' + IntToStr(j)).left :=
                  QRBand10.FindChildControl('ypyfls_' + IntToStr(j - 1)).left -
                  20;
                QRBand10.FindChildControl('QRImagels_' + IntToStr(j)).height :=
                  30;
                TQRLabel(QRBand10.FindChildControl('ypyfls_' + IntToStr(j -
                  1))).Caption :=
                  trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring)
                  + '  ' + trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
                TQRLabel(QRBand10.FindChildControl('xmmcls_' + IntToStr(j -
                  1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring;
              end
              else
              begin
                QRBand10.FindChildControl('QRImagels_' + IntToStr(j)).enabled :=
                  false;
                QRBand10.FindChildControl('xmmcls_' + IntToStr(j - 1)).Width :=
                  235;
                TQRLabel(QRBand10.FindChildControl('ypyfls_' + IntToStr(j -
                  1))).Caption := '';
                TQRLabel(QRBand10.FindChildControl('xmmcls_' + IntToStr(j -
                  1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring +
                  ' '
                  + trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring) + ' ' +
                  trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
              end;
              sp_zxjl_cq_dy.Next;
            end;
          end
          else
          begin
            aControl := QRBand10.FindChildControl('ksrqls' + IntToStr(j - 1));
            if aControl is TQRLabel then
              TQRLabel(aControl).Caption :=
                sp_zxjl_cq_dy.FieldByName('ksrq').asstring;
            aControl := QRBand10.FindChildControl('kdysmcls' + IntToStr(j - 1));
            if aControl is TQRLabel then
              TQRLabel(aControl).Caption :=
                sp_zxjl_cq_dy.FieldByName('kdysmc').asstring;
            if sp_zxjl_cq_dy.FieldByName('fzph').asstring <> '' then
            begin
              QRBand10.FindChildControl('QRImagels_' + IntToStr(j)).enabled :=
                true;
              QRBand10.FindChildControl('QRImagels_' + IntToStr(j)).Top :=
                TQRLabel(QRBand10.FindChildControl('xmmcls_' + IntToStr(j -
                1))).top;
              QRBand10.FindChildControl('QRImagels_' + IntToStr(j)).left :=
                QRBand10.FindChildControl('ypyfls_' + IntToStr(j - 1)).left -
                20;
              QRBand10.FindChildControl('QRImagels_' + IntToStr(j)).height :=
                30;
              TQRLabel(QRBand10.FindChildControl('ypyfls_' + IntToStr(j -
                1))).Caption := trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring)
                +
                '  ' + trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
              TQRLabel(QRBand10.FindChildControl('xmmcls_' + IntToStr(j -
                1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring;
            end
            else
            begin
              QRBand10.FindChildControl('QRImagels_' + IntToStr(j)).enabled :=
                false;
              QRBand10.FindChildControl('xmmcls_' + IntToStr(j - 1)).Width :=
                235;
              TQRLabel(QRBand10.FindChildControl('ypyfls_' + IntToStr(j -
                1))).Caption := '';
              TQRLabel(QRBand10.FindChildControl('xmmcls_' + IntToStr(j -
                1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring + ' '
                +
                trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring) + ' ' +
                trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
            end;
            sp_zxjl_cq_dy.Next;
          end;
        end;
        DM_data.qry_pub.Close;
        DM_data.qry_pub.SQL.text := 'select * from sys_kscwsz where bqdm=' + ''''
          + pub_bqdm + '''' + ' and bcbh=' + '''' +
          trim(sp_jbxx.fieldbyname('bch').asstring) + '''';
        try
          DM_data.qry_pub.Open;
        except

        end;
        QRLabel45.Caption := pub_yymc + '��������ִ�е�';
        QRLabel46.Caption := '����:' + sp_jbxx.fieldbyname('brxm').asstring;
        QRLabel50.Caption := '������:' +
          Trim(DM_data.qry_pub.FieldByName('yybch').asstring);
        QRLabel51.Caption := '�Ա�:' + sp_jbxx.fieldbyname('brxb').asstring;
        QRLabel52.Caption := '����:' +
          trim(sp_jbxx.fieldbyname('brnl').asstring);
        QRLabel53.Caption := FormatDateTime('yyyy', frm_func.curr_date) + '��';
        QRLabel67.Caption := '����:' + sp_jbxx.fieldbyname('brxm').asstring +
          '      ' +
          '������:' + Trim(DM_data.qry_pub.FieldByName('yybch').asstring) +
          '      ' +
          '�Ա�:' + sp_jbxx.fieldbyname('brxb').asstring + '      ' +
          '����:' + trim(sp_jbxx.fieldbyname('brnl').asstring) + '  ' + '����:'
          + Trim(sp_jbxx.fieldbyname('tmh').asstring);
        //QuickRep3.Prepare;
        QRLabel58.Caption := '���ҽ����';
        QuickRep5.Preview;
      end;
    end
    else
    begin
      sp_zxjl_cq_dy.First;
      if count mod 8 <> 0 then
        y := trunc(count / 8) + 1
      else
        y := trunc(count / 8);
      count := 1;
      for I := 1 to y do
      begin
        for j := 1 to 8 do
        begin
          if count < i * 8 then
          begin
            if j > (8 - (y * 8 - count)) then
            begin
              aControl := qrbndcqzl.FindChildControl('cqzlksrq' + IntToStr(j -
                1));
              if aControl is TQRLabel then
                TQRLabel(aControl).Caption := '';
              aControl := qrbndcqzl.FindChildControl('cqzlkdys' + IntToStr(j -
                1));
              if aControl is TQRLabel then
                TQRLabel(aControl).Caption := '';
              qrbndcqzl.FindChildControl('QRImagezl' + IntToStr(j)).enabled :=
                false;
              //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
              TQRLabel(qrbndcqzl.FindChildControl('cqzlypyf' + IntToStr(j -
                1))).Caption := '';
              //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
              TQRLabel(qrbndcqzl.FindChildControl('cqzlxmmc' + IntToStr(j -
                1))).caption := '';
            end
            else
            begin
              aControl := qrbndcqzl.FindChildControl('cqzlksrq' + IntToStr(j -
                1));
              if aControl is TQRLabel then
                TQRLabel(aControl).Caption :=
                  sp_zxjl_cq_dy.FieldByName('ksrq').AsString;
              aControl := qrbndcqzl.FindChildControl('cqzlkdys' + IntToStr(j -
                1));
              if aControl is TQRLabel then
                TQRLabel(aControl).Caption :=
                  sp_zxjl_cq_dy.FieldByName('kdysmc').asstring;
              if sp_zxjl_cq_dy.FieldByName('fzph').asstring <> '' then
              begin
                qrbndcqzl.FindChildControl('QRImagezl' + IntToStr(j)).enabled :=
                  true;
                qrbndcqzl.FindChildControl('QRImagezl' + IntToStr(j)).Top :=
                  TQRLabel(qrbndcqzl.FindChildControl('cqzlxmmc' + IntToStr(j -
                  1))).top;
                qrbndcqzl.FindChildControl('QRImagezl' + IntToStr(j)).left :=
                  qrbndcqzl.FindChildControl('cqzlypyf' + IntToStr(j - 1)).left
                  -
                  20;
                qrbndcqzl.FindChildControl('QRImagezl' + IntToStr(j)).height :=
                  30;
                TQRLabel(qrbndcqzl.FindChildControl('cqzlypyf' + IntToStr(j -
                  1))).Caption :=
                  trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring)
                  + '  ' + trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
                TQRLabel(qrbndcqzl.FindChildControl('cqzlxmmc' + IntToStr(j -
                  1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring;
                //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
              end
              else
              begin
                qrbndcqzl.FindChildControl('QRImagezl' + IntToStr(j)).enabled :=
                  false;
                //qrbndcqzl.FindChildControl( 'cqzlxmmc' + IntToStr( j - 1 ) ).Width := 235;
                TQRLabel(qrbndcqzl.FindChildControl('cqzlypyf' + IntToStr(j -
                  1))).Caption := '';
                TQRLabel(qrbndcqzl.FindChildControl('cqzlxmmc' + IntToStr(j -
                  1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring +
                  ' '
                  + trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring) + ' ' +
                  trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
                // TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
              end;
              sp_zxjl_cq_dy.Next;
            end;
          end
          else
          begin
            aControl := qrbndcqzl.FindChildControl('cqzlksrq' + IntToStr(j -
              1));
            if aControl is TQRLabel then
              TQRLabel(aControl).Caption :=
                sp_zxjl_cq_dy.FieldByName('ksrq').asstring;
            aControl := qrbndcqzl.FindChildControl('cqzlkdys' + IntToStr(j -
              1));
            if aControl is TQRLabel then
              TQRLabel(aControl).Caption :=
                sp_zxjl_cq_dy.FieldByName('kdysmc').asstring;
            if sp_zxjl_cq_dy.FieldByName('fzph').asstring <> '' then
            begin
              qrbndcqzl.FindChildControl('QRImagezl' + IntToStr(j)).enabled :=
                true;
              qrbndcqzl.FindChildControl('QRImagezl' + IntToStr(j)).Top :=
                TQRLabel(qrbndcqzl.FindChildControl('cqzlxmmc' + IntToStr(j -
                1))).top;
              qrbndcqzl.FindChildControl('QRImagezl' + IntToStr(j)).left :=
                qrbndcqzl.FindChildControl('cqzlypyf' + IntToStr(j - 1)).left -
                20;
              qrbndcqzl.FindChildControl('QRImagezl' + IntToStr(j)).height :=
                30;
              TQRLabel(qrbndcqzl.FindChildControl('cqzlypyf' + IntToStr(j -
                1))).Caption := trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring)
                +
                '  ' + trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
              TQRLabel(qrbndcqzl.FindChildControl('cqzlxmmc' + IntToStr(j -
                1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring;
              //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end
            else
            begin
              qrbndcqzl.FindChildControl('QRImagezl' + IntToStr(j)).enabled :=
                false;
              //qrbndcqzl.FindChildControl( 'cqzlxmmc' + IntToStr( j - 1 ) ).Width := 235;
              TQRLabel(qrbndcqzl.FindChildControl('cqzlypyf' + IntToStr(j -
                1))).Caption := '';
              TQRLabel(qrbndcqzl.FindChildControl('cqzlxmmc' + IntToStr(j -
                1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring + ' '
                +
                trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring) + ' ' +
                trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
              //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end;
            sp_zxjl_cq_dy.Next;
          end;
        end;
        cqzlmc.Caption := pub_yymc + '�������Ƽƻ�ִ�е�';
        DM_data.qry_pub.Close;
        DM_data.qry_pub.SQL.text := 'select * from sys_kscwsz where bqdm=' + ''''
          + pub_bqdm + '''' + ' and bcbh=' + '''' +
          trim(sp_jbxx.fieldbyname('bch').asstring) + '''';
        try
          DM_data.qry_pub.Open;
        except

        end;

        cqzlxm.Caption := '����:' + sp_jbxx.fieldbyname('brxm').asstring;
        cqzlbch.Caption := '������:' +
          Trim(DM_data.qry_pub.FieldByName('yybch').asstring);
        cqzlxb.Caption := '�Ա�:' + sp_jbxx.fieldbyname('brxb').asstring;
        cqzlnl.Caption := '����:' + trim(sp_jbxx.fieldbyname('brnl').asstring);
        cqzln.Caption := FormatDateTime('yyyy', frm_func.curr_date) + '��';
        cqzlxmxm.Caption := '����:' + sp_jbxx.fieldbyname('brxm').asstring;
        cqzlbchbch.Caption := '������:' +
          Trim(DM_data.qry_pub.FieldByName('yybch').asstring);
        cqzlkhkh.Caption := '����:' + Trim(sp_jbxx.fieldbyname('tmh').asstring);

        //QRLabel62jy.Caption := '����:' + sp_jbxx.fieldbyname( 'brxm' ).asstring + '      ' +
        //  '������:' + Trim( DM_data.qry_pub.FieldByName( 'yybch' ).asstring ) + '      '+
        //  '����:' + Trim( sp_jbxx.fieldbyname( 'tmh' ).asstring  );
        //'�Ա�:' + sp_jbxx.fieldbyname( 'brxb' ).asstring +'      '+
        //'����:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
//QuickRep3.Prepare;
        //QRLabel71.Caption := '���ҽ��:';
        qckrpcqzl.Preview;
      end;
    end;
  end;

end;

procedure Tfrm_yzinput.N18Click(Sender: TObject);
var
  i, y, j, count, x: Integer;
  aControl: TControl;
  v_yytj, v_lb, filter: string;
begin
  with sp_zxjl_cq_dy do
  begin
    Filtered := False;
    Close;
    Parameters.ParamByName('@zyh').Value :=
      Trim(sp_jbxx.fieldbyname('zyh').asstring);
    Parameters.ParamByName('@fs').Value := 1;
    Open;
  end;

  DM_data.qry_pub.close;
  DM_data.qry_pub.sql.text :=
    'select yytj from zybl_zyyz_dytjsz where dyxm=''���Ƽƻ���''';
  try
    DM_data.qry_pub.Open;
  except

  end;
  if DM_data.qry_pub.IsEmpty then
  begin
    v_yytj := '';
  end
  else
  begin
    DM_data.qry_pub.First;
    while not DM_data.qry_pub.eof do
    begin
      v_yytj := v_yytj + '(yytj=' + '''' +
        DM_data.qry_pub.FieldByName('yytj').asstring + '''' +
        ' and  tzrq=null   and kdrq>=' + '''' + formatdatetime('yy-MM-dd',
        frm_func.curr_date) + ' 00:00' + ''')' + ' or ';
      DM_data.qry_pub.Next;
    end;

  end;

  DM_data.qry_pub.close;
  DM_data.qry_pub.sql.text :=
    'select lbmc from zybl_zyyz_dylbsz where dyxm=''���Ƽƻ���''';
  try
    DM_data.qry_pub.Open;
  except

  end;
  if DM_data.qry_pub.IsEmpty then
  begin
    v_lb := '';
  end
  else
  begin
    DM_data.qry_pub.First;
    while not DM_data.qry_pub.eof do
    begin
      v_lb := v_lb + '(lb=' + '''' + DM_data.qry_pub.FieldByName('lbmc').asstring
        + '''' + ' and  tzrq=null and kdrq>=' + '''' +
        formatdatetime('yy-MM-dd',
        frm_func.curr_date) + ' 00:00' + ''')' + ' or ';
      DM_data.qry_pub.Next;
    end;

  end;

  if v_yytj + v_lb = '' then
  begin
    filter := ' 1<>1 ';
  end
  else
  begin
    filter := v_yytj + v_lb + ' ( yytj = ''�������'' )';
  end;
  sp_zxjl_cq_dy.Filtered := false;
  sp_zxjl_cq_dy.Filter := 'yytj = ''�������''';
  sp_zxjl_cq_dy.Filtered := True;
  if sp_zxjl_cq_dy.RecordCount = 0 then
  begin
    count := 1;
    sp_zxjl_cq_dy.First;
    if count mod 9 <> 0 then
      y := trunc(count / 9) + 1
    else
      y := trunc(count / 9);
    count := 1;
    for I := 1 to y do
    begin
      for j := 1 to 9 do
      begin
        if count < i * 9 then
        begin
          if j > (9 - (y * 9 - count)) then
          begin
            aControl := QRBand10.FindChildControl('ksrqls' + IntToStr(j - 1));
            if aControl is TQRLabel then
              TQRLabel(aControl).Caption := '';
            aControl := QRBand10.FindChildControl('kdysmcls' + IntToStr(j - 1));
            if aControl is TQRLabel then
              TQRLabel(aControl).Caption := '';
            QRBand10.FindChildControl('QRImagels_' + IntToStr(j)).enabled :=
              false;
            //TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel(QRBand10.FindChildControl('ypyfls_' + IntToStr(j -
              1))).Caption := '';
            TQRLabel(QRBand10.FindChildControl('xmmcls_' + IntToStr(j -
              1))).caption := '';
          end
          else
          begin
            aControl := QRBand10.FindChildControl('ksrqls' + IntToStr(j - 1));
            if aControl is TQRLabel then
              TQRLabel(aControl).Caption :=
                sp_zxjl_cq_dy.FieldByName('ksrq').AsString;
            aControl := QRBand10.FindChildControl('kdysmcls' + IntToStr(j - 1));
            if aControl is TQRLabel then
              TQRLabel(aControl).Caption :=
                sp_zxjl_cq_dy.FieldByName('kdysmc').asstring;
            if sp_zxjl_cq_dy.FieldByName('fzph').asstring <> '' then
            begin
              QRBand10.FindChildControl('QRImagels_' + IntToStr(j)).enabled :=
                true;
              QRBand10.FindChildControl('QRImagels_' + IntToStr(j)).Top :=
                TQRLabel(QRBand10.FindChildControl('xmmcls_' + IntToStr(j -
                1))).top;
              QRBand10.FindChildControl('QRImagels_' + IntToStr(j)).left :=
                QRBand10.FindChildControl('ypyfls_' + IntToStr(j - 1)).left -
                20;
              QRBand10.FindChildControl('QRImagels_' + IntToStr(j)).height :=
                30;
              TQRLabel(QRBand10.FindChildControl('ypyfls_' + IntToStr(j -
                1))).Caption := trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring)
                +
                '  ' + trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
              TQRLabel(QRBand10.FindChildControl('xmmcls_' + IntToStr(j -
                1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring;
            end
            else
            begin
              QRBand10.FindChildControl('QRImagels_' + IntToStr(j)).enabled :=
                false;
              QRBand10.FindChildControl('xmmcls_' + IntToStr(j - 1)).Width :=
                235;
              TQRLabel(QRBand10.FindChildControl('ypyfls_' + IntToStr(j -
                1))).Caption := '';
              TQRLabel(QRBand10.FindChildControl('xmmcls_' + IntToStr(j -
                1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring + ' '
                +
                trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring) + ' ' +
                trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
            end;
            sp_zxjl_cq_dy.Next;
          end;
        end
        else
        begin
          aControl := QRBand10.FindChildControl('ksrqls' + IntToStr(j - 1));
          if aControl is TQRLabel then
            TQRLabel(aControl).Caption :=
              sp_zxjl_cq_dy.FieldByName('ksrq').asstring;
          aControl := QRBand10.FindChildControl('kdysmcls' + IntToStr(j - 1));
          if aControl is TQRLabel then
            TQRLabel(aControl).Caption :=
              sp_zxjl_cq_dy.FieldByName('kdysmc').asstring;
          if sp_zxjl_cq_dy.FieldByName('fzph').asstring <> '' then
          begin
            QRBand10.FindChildControl('QRImagels_' + IntToStr(j)).enabled :=
              true;
            QRBand10.FindChildControl('QRImagels_' + IntToStr(j)).Top :=
              TQRLabel(QRBand10.FindChildControl('xmmcls_' + IntToStr(j -
              1))).top;
            QRBand10.FindChildControl('QRImagels_' + IntToStr(j)).left :=
              QRBand10.FindChildControl('ypyfls_' + IntToStr(j - 1)).left - 20;
            QRBand10.FindChildControl('QRImagels_' + IntToStr(j)).height := 30;
            TQRLabel(QRBand10.FindChildControl('ypyfls_' + IntToStr(j -
              1))).Caption := trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring) +
              '  ' + trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
            TQRLabel(QRBand10.FindChildControl('xmmcls_' + IntToStr(j -
              1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring;
          end
          else
          begin
            QRBand10.FindChildControl('QRImagels_' + IntToStr(j)).enabled :=
              false;
            QRBand10.FindChildControl('xmmcls_' + IntToStr(j - 1)).Width := 235;
            TQRLabel(QRBand10.FindChildControl('ypyfls_' + IntToStr(j -
              1))).Caption := '';
            TQRLabel(QRBand10.FindChildControl('xmmcls_' + IntToStr(j -
              1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring + ' ' +
              trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring) + ' ' +
              trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
          end;
          sp_zxjl_cq_dy.Next;
        end;
      end;
      DM_data.qry_pub.Close;
      DM_data.qry_pub.SQL.text := 'select * from sys_kscwsz where bqdm=' + ''''
        + pub_bqdm + '''' + ' and bcbh=' + '''' +
        trim(sp_jbxx.fieldbyname('bch').asstring) + '''';
      try
        DM_data.qry_pub.Open;
      except
      end;
      QRLabel45.Caption := pub_yymc + '��ʱ����ִ�е�';
      QRLabel46.Caption := '����:' + sp_jbxx.fieldbyname('brxm').asstring;
      QRLabel50.Caption := '������:' +
        Trim(DM_data.qry_pub.FieldByName('yybch').asstring);
      QRLabel51.Caption := '�Ա�:' + sp_jbxx.fieldbyname('brxb').asstring;
      QRLabel52.Caption := '����:' + trim(sp_jbxx.fieldbyname('brnl').asstring);
      QRLabel53.Caption := FormatDateTime('yyyy', frm_func.curr_date) + '��';
      QRLabel67.Caption := '����:' + sp_jbxx.fieldbyname('brxm').asstring +
        '      ' +
        '������:' + Trim(DM_data.qry_pub.FieldByName('yybch').asstring) +
        '      ' +
        '�Ա�:' + sp_jbxx.fieldbyname('brxb').asstring + '      ' +
        '����:' + trim(sp_jbxx.fieldbyname('brnl').asstring) + '  ' + '����:' +
        Trim(sp_jbxx.fieldbyname('tmh').asstring);
      //QuickRep3.Prepare;
      QRLabel58.Caption := '���ҽ����';
      QuickRep5.Preview;
    end;
  end;

end;

procedure Tfrm_yzinput.N19Click(Sender: TObject);
var
  i, y, j, count, x: Integer;
  aControl: TControl;
  v_yytj, v_lb, filter: string;
begin
  with sp_zxjl_cq_dy do
  begin
    Filtered := False;
    Close;
    Parameters.ParamByName('@zyh').Value :=
      Trim(sp_jbxx.fieldbyname('zyh').asstring);
    Parameters.ParamByName('@fs').Value := 0;
    Open;
  end;

  DM_data.qry_pub.close;
  DM_data.qry_pub.sql.text :=
    'select yytj from zybl_zyyz_dytjsz where dyxm=''�ڷ�ҩִ�е�''';
  try
    DM_data.qry_pub.Open;
  except
  end;
  if DM_data.qry_pub.IsEmpty then
  begin
    v_yytj := '';
  end
  else
  begin
    DM_data.qry_pub.First;
    while not DM_data.qry_pub.eof do
    begin
      v_yytj := v_yytj + '(yytj=' + '''' +
        DM_data.qry_pub.FieldByName('yytj').asstring + '''' +
        ' and lb<>''��ҩ'' and  tzrq=null )' + ' or ';
      DM_data.qry_pub.Next;
    end;

  end;
  DM_data.qry_pub.close;
  DM_data.qry_pub.sql.text :=
    'select lbmc from zybl_zyyz_dylbsz where dyxm=''�ڷ�ҩִ�е�''';
  try
    DM_data.qry_pub.Open;
  except
  end;
  if DM_data.qry_pub.IsEmpty then
  begin
    v_lb := '';
  end
  else
  begin
    DM_data.qry_pub.First;
    while not DM_data.qry_pub.eof do
    begin
      v_lb := v_lb + '(lb=' + '''' + DM_data.qry_pub.FieldByName('lbmc').asstring
        + '''' + ' and  tzrq=null )' + ' or ';
      DM_data.qry_pub.Next;
    end;

  end;

  if v_yytj + v_lb = '' then
  begin
    filter := ' 1<>1 ';
  end
  else
  begin
    filter := v_yytj + v_lb + ' ( yytj=''�������'' )';
  end;

  sp_zxjl_cq_dy.Filter := filter;
  sp_zxjl_cq_dy.Filtered := True;
  if sp_zxjl_cq_dy.IsEmpty then
  begin
    Application.MessageBox('û�м�¼��', '��ʾ', 0 + 48);
    Exit;
  end;
//  if not sp_zxjl_cq_dy.IsEmpty then
//  begin
//    if (zzdx = 'A4') or (zzdx = 'B5') then
//    begin
//      sp_zxjl_cq_dy.First;
//      if sp_zxjl_cq_dy.RecordCount mod 20 <> 0 then
//        y := trunc(sp_zxjl_cq_dy.RecordCount / 20) + 1
//      else
//        y := trunc(sp_zxjl_cq_dy.RecordCount / 20);
//      count := sp_zxjl_cq_dy.RecordCount;
//      for I := 1 to y do
//      begin
//        for j := 1 to 20 do
//        begin
//          if count < y * 20 then
//          begin
//            if j > (20 - (i * 20 - count)) then
//            begin
//              aControl := QRBand7.FindChildControl('ksrq_' + IntToStr(j - 1));
//              if aControl is TQRLabel then
//                TQRLabel(aControl).Caption := '';
//              aControl := QRBand7.FindChildControl('kdysmc_' + IntToStr(j - 1));
//              if aControl is TQRLabel then
//                TQRLabel(aControl).Caption := '';
//              //TQRLabel( QRBand7.FindChildControl( 'xmmc_' + IntToStr( j - 1 ) ) ).Width := 0;
//              TQRLabel(QRBand7.FindChildControl('xmmc_' + IntToStr(j -
//                1))).caption := '';
//            end
//            else
//            begin
//              aControl := QRBand7.FindChildControl('ksrq_' + IntToStr(j - 1));
//              if aControl is TQRLabel then
//                TQRLabel(aControl).Caption :=
//                  sp_zxjl_cq_dy.FieldByName('ksrq').AsString;
//              aControl := QRBand7.FindChildControl('kdysmc_' + IntToStr(j - 1));
//              if aControl is TQRLabel then
//                TQRLabel(aControl).Caption :=
//                  sp_zxjl_cq_dy.FieldByName('kdysmc').asstring;
//              if sp_zxjl_cq_dy.FieldByName('fzph').asstring <> '' then
//              begin
//                TQRLabel(QRBand7.FindChildControl('xmmc_' + IntToStr(j -
//                  1))).caption :=
//                  sp_zxjl_cq_dy.FieldByName('xmmc').Asstring;
//              end
//              else
//              begin
//                QRBand7.FindChildControl('xmmc_' + IntToStr(j - 1)).Width :=
//                  190;
//                TQRLabel(QRBand7.FindChildControl('xmmc_' + IntToStr(j -
//                  1))).caption :=
//                  sp_zxjl_cq_dy.FieldByName('xmmc').Asstring +
//                  '  ' +
//                  trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
//              end;
//              sp_zxjl_cq_dy.Next;
//            end;
//          end
//          else
//          begin
//            aControl := QRBand7.FindChildControl('ksrq_' + IntToStr(j - 1));
//            if aControl is TQRLabel then
//              TQRLabel(aControl).Caption :=
//                sp_zxjl_cq_dy.FieldByName('ksrq').asstring;
//            aControl := QRBand7.FindChildControl('kdysmc_' + IntToStr(j - 1));
//            if aControl is TQRLabel then
//              TQRLabel(aControl).Caption :=
//                sp_zxjl_cq_dy.FieldByName('kdysmc').asstring;
//            if sp_zxjl_cq_dy.FieldByName('fzph').asstring <> '' then
//            begin
//              TQRLabel(QRBand7.FindChildControl('xmmc_' + IntToStr(j -
//                1))).caption :=
//                sp_zxjl_cq_dy.FieldByName('xmmc').Asstring;
//            end
//            else
//            begin
//              QRBand7.FindChildControl('xmmc_' + IntToStr(j - 1)).Width := 190;
//              TQRLabel(QRBand7.FindChildControl('xmmc_' + IntToStr(j -
//                1))).caption :=
//                sp_zxjl_cq_dy.FieldByName('xmmc').Asstring + '  ' +
//                trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
//            end;
//            sp_zxjl_cq_dy.Next;
//          end;
//        end;
//        DM_data.qry_pub.Close;
//        DM_data.qry_pub.SQL.text := 'select * from sys_kscwsz where bqdm=' + ''''
//          + pub_bqdm + '''' + ' and bcbh=' + '''' +
//          trim(sp_jbxx.fieldbyname('bch').asstring) + '''';
//        try
//          DM_data.qry_pub.Open;
//        except
//        end;
//        QRLabel31.Caption := pub_yymc + 'ҽ��ִ�е�(�ڷ�ҩ)';
//        QRLabel32.Caption := '����:' + sp_jbxx.fieldbyname('brxm').asstring;
//        QRLabel36.Caption := '����:' +
//          Trim(DM_data.qry_pub.FieldByName('yybch').asstring);
//        qrlbl_nf_tmh.Caption := 'סԺ��:' + sp_jbxx.fieldbyname('tmh').asstring;
//        qrlbl_nfQRL_bq_cq.Caption := '����:' + pub_bqmc;
//        QuickRep4.Prepare;
//        ys.Caption := '��' + '   ' + inttostr(i) + '  ҳ';
//        qrl_ks.Caption := '����:' + sp_jbxx.fieldbyname('brxm').asstring + '   '
//          +
//          '����:' + Trim(DM_data.qry_pub.FieldByName('yybch').asstring) + '   '
//          +
//          '����:' + pub_bqmc + '   ' + '����:' +
//          Trim(sp_jbxx.fieldbyname('tmh').asstring);
//        QuickRep4.Preview;
//      end;
//    end
//    else
//    begin
//      sp_zxjl_cq_dy.First;
//      if sp_zxjl_cq_dy.RecordCount mod 8 <> 0 then
//        y := trunc(sp_zxjl_cq_dy.RecordCount / 8) + 1
//      else
//        y := trunc(sp_zxjl_cq_dy.RecordCount / 8);
//      count := sp_zxjl_cq_dy.RecordCount;
//      for I := 1 to y do
//      begin
//        for j := 1 to 8 do
//        begin
//          if count < i * 8 then
//          begin
//            if j > (8 - (y * 8 - count)) then
//            begin
//              aControl := qrbndcqzs.FindChildControl('cqzsksrq' + IntToStr(j -
//                1));
//              if aControl is TQRLabel then
//                TQRLabel(aControl).Caption := '';
//              aControl := qrbndcqzs.FindChildControl('cqzskdys' + IntToStr(j -
//                1));
//              if aControl is TQRLabel then
//                TQRLabel(aControl).Caption := '';
//              qrbndcqzs.FindChildControl('QRImagezs' + IntToStr(j)).enabled :=
//                false;
//              //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
//              TQRLabel(qrbndcqzs.FindChildControl('cqzsypyf' + IntToStr(j -
//                1))).Caption := '';
//              //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
//              TQRLabel(qrbndcqzs.FindChildControl('cqzsxmmc' + IntToStr(j -
//                1))).caption := '';
//            end
//            else
//            begin
//              aControl := qrbndcqzs.FindChildControl('cqzsksrq' + IntToStr(j -
//                1));
//              if aControl is TQRLabel then
//                TQRLabel(aControl).Caption :=
//                  sp_zxjl_cq_dy.FieldByName('ksrq').AsString;
//              aControl := qrbndcqzs.FindChildControl('cqzskdys' + IntToStr(j -
//                1));
//              if aControl is TQRLabel then
//                TQRLabel(aControl).Caption :=
//                  sp_zxjl_cq_dy.FieldByName('kdysmc').asstring;
//              if sp_zxjl_cq_dy.FieldByName('fzph').asstring <> '' then
//              begin
//                qrbndcqzs.FindChildControl('QRImagezs' + IntToStr(j)).enabled :=
//                  true;
//                qrbndcqzs.FindChildControl('QRImagezs' + IntToStr(j)).Top :=
//                  TQRLabel(qrbndcqzs.FindChildControl('cqzsxmmc' + IntToStr(j -
//                  1))).top;
//                qrbndcqzs.FindChildControl('QRImagezs' + IntToStr(j)).left :=
//                  qrbndcqzs.FindChildControl('cqzsypyf' + IntToStr(j - 1)).left
//                  -
//                  20;
//                qrbndcqzs.FindChildControl('QRImagezs' + IntToStr(j)).height :=
//                  30;
//                TQRLabel(qrbndcqzs.FindChildControl('cqzsypyf' + IntToStr(j -
//                  1))).Caption :=
//                  trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring)
//                  + '  ' + trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
//                TQRLabel(qrbndcqzs.FindChildControl('cqzsxmmc' + IntToStr(j -
//                  1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring;
//                //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
//              end
//              else
//              begin
//                qrbndcqzs.FindChildControl('QRImagezs' + IntToStr(j)).enabled :=
//                  false;
//                //qrbndcqsy.FindChildControl( 'cqzsxmmc' + IntToStr( j - 1 ) ).Width := 235;
//                TQRLabel(qrbndcqzs.FindChildControl('cqzsypyf' + IntToStr(j -
//                  1))).Caption := '';
//                TQRLabel(qrbndcqzs.FindChildControl('cqzsxmmc' + IntToStr(j -
//                  1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring +
//                  ' '
//                  + trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring) + ' ' +
//                  trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
//                // TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
//              end;
//              sp_zxjl_cq_dy.Next;
//            end;
//          end
//          else
//          begin
//            aControl := qrbndcqzs.FindChildControl('cqzsksrq' + IntToStr(j -
//              1));
//            if aControl is TQRLabel then
//              TQRLabel(aControl).Caption :=
//                sp_zxjl_cq_dy.FieldByName('ksrq').asstring;
//            aControl := qrbndcqzs.FindChildControl('cqzskdys' + IntToStr(j -
//              1));
//            if aControl is TQRLabel then
//              TQRLabel(aControl).Caption :=
//                sp_zxjl_cq_dy.FieldByName('kdysmc').asstring;
//            if sp_zxjl_cq_dy.FieldByName('fzph').asstring <> '' then
//            begin
//              qrbndcqzs.FindChildControl('QRImagezs' + IntToStr(j)).enabled :=
//                true;
//              qrbndcqzs.FindChildControl('QRImagezs' + IntToStr(j)).Top :=
//                TQRLabel(qrbndcqzs.FindChildControl('cqzsxmmc' + IntToStr(j -
//                1))).top;
//              qrbndcqzs.FindChildControl('QRImagezs' + IntToStr(j)).left :=
//                qrbndcqzs.FindChildControl('cqzsypyf' + IntToStr(j - 1)).left -
//                20;
//              qrbndcqzs.FindChildControl('QRImagezs' + IntToStr(j)).height :=
//                30;
//              TQRLabel(qrbndcqzs.FindChildControl('cqzsypyf' + IntToStr(j -
//                1))).Caption := trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring)
//                +
//                '  ' + trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
//              TQRLabel(qrbndcqzs.FindChildControl('cqzsxmmc' + IntToStr(j -
//                1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring;
//              //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
//            end
//            else
//            begin
//              qrbndcqzs.FindChildControl('QRImagezs' + IntToStr(j)).enabled :=
//                false;
//              //qrbndcqsy.FindChildControl( 'cqzsxmmc' + IntToStr( j - 1 ) ).Width := 235;
//              TQRLabel(qrbndcqzs.FindChildControl('cqzsypyf' + IntToStr(j -
//                1))).Caption := '';
//              TQRLabel(qrbndcqzs.FindChildControl('cqzsxmmc' + IntToStr(j -
//                1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring + ' '
//                +
//                trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring) + ' ' +
//                trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
//              //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
//            end;
//            sp_zxjl_cq_dy.Next;
//          end;
//        end;
//        QRcqzsmc.Caption := pub_yymc + 'ҽ��ִ�е�(�ڷ�ҩ)';
//        DM_data.qry_pub.Close;
//        DM_data.qry_pub.SQL.text := 'select * from sys_kscwsz where bqdm=' + ''''
//          + pub_bqdm + '''' + ' and bcbh=' + '''' +
//          trim(sp_jbxx.fieldbyname('bch').asstring) + '''';
//        try
//          DM_data.qry_pub.Open;
//        except
//        end;
//
//        QRcqzsxm.Caption := '����:' + sp_jbxx.fieldbyname('brxm').asstring;
//        QRcqzsbch.Caption := '������:' +
//          Trim(DM_data.qry_pub.FieldByName('yybch').asstring);
//        QRcqzsxb.Caption := '�Ա�:' + sp_jbxx.fieldbyname('brxb').asstring;
//        QRcqzsnl.Caption := '����:' +
//          trim(sp_jbxx.fieldbyname('brnl').asstring);
//        QRcqzsn.Caption := FormatDateTime('yyyy', frm_func.curr_date) + '��';
//        QRcqzsxmxm.Caption := '����:' + sp_jbxx.fieldbyname('brxm').asstring;
//        QRcqzsbchbch.Caption := '������:' +
//          Trim(DM_data.qry_pub.FieldByName('yybch').asstring);
//        QRcqzskhkh.Caption := '����:' +
//          Trim(sp_jbxx.fieldbyname('tmh').asstring);
//
//        //QRLabel62jy.Caption := '����:' + sp_jbxx.fieldbyname( 'brxm' ).asstring + '      ' +
//        //  '������:' + Trim( DM_data.qry_pub.FieldByName( 'yybch' ).asstring ) + '      '+
//        //  '����:' + Trim( sp_jbxx.fieldbyname( 'tmh' ).asstring  );
//        //'�Ա�:' + sp_jbxx.fieldbyname( 'brxb' ).asstring +'      '+
//        //'����:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
////QuickRep3.Prepare;
//        //QRLabel71.Caption := '���ҽ��:';
//        qckrp2.Preview;
//      end;
//    end;
//  end;
  if not sp_zxjl_cq_dy.IsEmpty then
  begin
    if zzdx = 'A4' then
    begin
      sp_zxjl_cq_dy.First;
      if sp_zxjl_cq_dy.RecordCount mod 5 <> 0 then
        y := trunc(sp_zxjl_cq_dy.RecordCount / 5) + 1
      else
        y := trunc(sp_zxjl_cq_dy.RecordCount / 5);
      count := sp_zxjl_cq_dy.RecordCount;
      for I := 1 to y do
      begin
        for j := 1 to 5 do
        begin
          if count < i * 5 then
          begin
            if j > (5 - (y * 5 - count)) then
            begin
              aControl := DetailBand1.FindChildControl('ksrq' + IntToStr(j -
                1));
              if aControl is TQRLabel then
                TQRLabel(aControl).Caption := '';
              aControl := DetailBand1.FindChildControl('kdysmc' + IntToStr(j -
                1));
              if aControl is TQRLabel then
                TQRLabel(aControl).Caption := '';
              DetailBand1.FindChildControl('qrgrimage' + IntToStr(j)).enabled :=
                false;
              //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
              TQRLabel(DetailBand1.FindChildControl('ypyf' + IntToStr(j -
                1))).Caption := '';
              //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
              TQRLabel(DetailBand1.FindChildControl('xmmc' + IntToStr(j -
                1))).caption := '';
            end
            else
            begin
              aControl := DetailBand1.FindChildControl('ksrq' + IntToStr(j -
                1));
              if aControl is TQRLabel then
                TQRLabel(aControl).Caption :=
                  sp_zxjl_cq_dy.FieldByName('ksrq').AsString;
              aControl := DetailBand1.FindChildControl('kdysmc' + IntToStr(j -
                1));
              if aControl is TQRLabel then
                TQRLabel(aControl).Caption :=
                  sp_zxjl_cq_dy.FieldByName('kdysmc').asstring;
              if sp_zxjl_cq_dy.FieldByName('fzph').asstring <> '' then
              begin
                DetailBand1.FindChildControl('QRgrImage' + IntToStr(j)).enabled
                  := true;
                DetailBand1.FindChildControl('QRgrImage' + IntToStr(j)).Top :=
                  TQRLabel(DetailBand1.FindChildControl('xmmc' + IntToStr(j -
                  1))).top;
                DetailBand1.FindChildControl('QRgrImage' + IntToStr(j)).left :=
                  DetailBand1.FindChildControl('ypyf' + IntToStr(j - 1)).left -
                  20;
                DetailBand1.FindChildControl('qrgrimage' + IntToStr(j)).height
                  := 30;
                TQRLabel(DetailBand1.FindChildControl('ypyf' + IntToStr(j -
                  1))).Caption :=
                  trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring)
                  + '  ' + trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
                TQRLabel(DetailBand1.FindChildControl('xmmc' + IntToStr(j -
                  1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring;
                //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
              end
              else
              begin
                DetailBand1.FindChildControl('qrgrimage' + IntToStr(j)).enabled
                  := false;
                DetailBand1.FindChildControl('xmmc' + IntToStr(j - 1)).Width :=
                  235;
                TQRLabel(DetailBand1.FindChildControl('ypyf' + IntToStr(j -
                  1))).Caption := '';
                TQRLabel(DetailBand1.FindChildControl('xmmc' + IntToStr(j -
                  1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring +
                  ' '
                  + trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring) + ' ' +
                  trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
                // TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
              end;
              sp_zxjl_cq_dy.Next;
            end;
          end
          else
          begin
            aControl := DetailBand1.FindChildControl('ksrq' + IntToStr(j - 1));
            if aControl is TQRLabel then
              TQRLabel(aControl).Caption :=
                sp_zxjl_cq_dy.FieldByName('ksrq').asstring;
            aControl := DetailBand1.FindChildControl('kdysmc' + IntToStr(j -
              1));
            if aControl is TQRLabel then
              TQRLabel(aControl).Caption :=
                sp_zxjl_cq_dy.FieldByName('kdysmc').asstring;
            if sp_zxjl_cq_dy.FieldByName('fzph').asstring <> '' then
            begin
              DetailBand1.FindChildControl('QRgrImage' + IntToStr(j)).enabled :=
                true;
              DetailBand1.FindChildControl('QRgrImage' + IntToStr(j)).Top :=
                TQRLabel(DetailBand1.FindChildControl('xmmc' + IntToStr(j -
                1))).top;
              DetailBand1.FindChildControl('qrgrimage' + IntToStr(j)).left :=
                DetailBand1.FindChildControl('ypyf' + IntToStr(j - 1)).left -
                20;
              DetailBand1.FindChildControl('qrgrimage' + IntToStr(j)).height :=
                30;
              TQRLabel(DetailBand1.FindChildControl('ypyf' + IntToStr(j -
                1))).Caption := trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring)
                +
                '  ' + trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
              TQRLabel(DetailBand1.FindChildControl('xmmc' + IntToStr(j -
                1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring;
              //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end
            else
            begin
              DetailBand1.FindChildControl('qrgrimage' + IntToStr(j)).enabled :=
                false;
              DetailBand1.FindChildControl('xmmc' + IntToStr(j - 1)).Width :=
                235;
              TQRLabel(DetailBand1.FindChildControl('ypyf' + IntToStr(j -
                1))).Caption := '';
              TQRLabel(DetailBand1.FindChildControl('xmmc' + IntToStr(j -
                1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring + ' '
                +
                trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring) + ' ' +
                trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
              //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end;
            sp_zxjl_cq_dy.Next;
          end;
        end;
        QRLabel2.Caption := pub_yymc + '�ڷ�ҩִ�е�';
        DM_data.qry_pub.Close;
        DM_data.qry_pub.SQL.text := 'select * from sys_kscwsz where bqdm=' + ''''
          + pub_bqdm + '''' + ' and bcbh=' + '''' +
          trim(sp_jbxx.fieldbyname('bch').asstring) + '''';
        try
          DM_data.qry_pub.Open;
        except
        end;

        QRLabel3.Caption := '����:' + sp_jbxx.fieldbyname('brxm').asstring;
        QRLabel20.Caption := '������:' +
          Trim(DM_data.qry_pub.FieldByName('yybch').asstring);
        QRLabel21.Caption := '�Ա�:' + sp_jbxx.fieldbyname('brxb').asstring;
        QRLabel26.Caption := '����:' +
          trim(sp_jbxx.fieldbyname('brnl').asstring);
        ny.Caption := FormatDateTime('yyyy', frm_func.curr_date) + '��';

        QRLabel61.Caption := '����:' + sp_jbxx.fieldbyname('brxm').asstring +
          '      ' +
          '������:' + Trim(DM_data.qry_pub.FieldByName('yybch').asstring) +
          '      ' +
          '����:' + Trim(sp_jbxx.fieldbyname('tmh').asstring);
        //'�Ա�:' + sp_jbxx.fieldbyname( 'brxb' ).asstring +'      '+
        //'����:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
//QuickRep3.Prepare;
        QRLabel57.Caption := '���ҽ��:';
        QuickRep3.Preview;
      end;
    end
    else if zzdx = 'B5' then
    begin
      sp_zxjl_cq_dy.First;
      if sp_zxjl_cq_dy.RecordCount mod 9 <> 0 then
        y := trunc(sp_zxjl_cq_dy.RecordCount / 9) + 1
      else
        y := trunc(sp_zxjl_cq_dy.RecordCount / 9);
      count := sp_zxjl_cq_dy.RecordCount;
      for I := 1 to y do
      begin
        for j := 1 to 9 do
        begin
          if count < i * 9 then
          begin
            if j > (9 - (y * 9 - count)) then
            begin
              aControl := DetailBand2.FindChildControl('ksrqjy' + IntToStr(j -
                1));
              if aControl is TQRLabel then
                TQRLabel(aControl).Caption := '';
              aControl := DetailBand2.FindChildControl('kdysmcjy' + IntToStr(j -
                1));
              if aControl is TQRLabel then
                TQRLabel(aControl).Caption := '';
              DetailBand2.FindChildControl('qrgrimagejy' + IntToStr(j)).enabled
                := false;
              //  TQRLabel( DetailBand2.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
              TQRLabel(DetailBand2.FindChildControl('ypyfjy' + IntToStr(j -
                1))).Caption := '';
              //TQRLabel( DetailBand2.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
              TQRLabel(DetailBand2.FindChildControl('xmmcjy' + IntToStr(j -
                1))).caption := '';
            end
            else
            begin
              aControl := DetailBand2.FindChildControl('ksrqjy' + IntToStr(j -
                1));
              if aControl is TQRLabel then
                TQRLabel(aControl).Caption :=
                  sp_zxjl_cq_dy.FieldByName('ksrq').AsString;
              aControl := DetailBand2.FindChildControl('kdysmcjy' + IntToStr(j -
                1));
              if aControl is TQRLabel then
                TQRLabel(aControl).Caption :=
                  sp_zxjl_cq_dy.FieldByName('kdysmc').asstring;
              if sp_zxjl_cq_dy.FieldByName('fzph').asstring <> '' then
              begin
                DetailBand2.FindChildControl('QRgrImagejy' + IntToStr(j)).enabled
                  := true;
                DetailBand2.FindChildControl('QRgrImagejy' + IntToStr(j)).Top :=
                  TQRLabel(DetailBand2.FindChildControl('xmmcjy' + IntToStr(j -
                  1))).top;
                DetailBand2.FindChildControl('QRgrImagejy' + IntToStr(j)).left
                  := DetailBand2.FindChildControl('ypyfjy' + IntToStr(j -
                  1)).left
                  - 20;
                DetailBand2.FindChildControl('qrgrimagejy' + IntToStr(j)).height
                  := 30;
                TQRLabel(DetailBand2.FindChildControl('ypyfjy' + IntToStr(j -
                  1))).Caption :=
                  trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring)
                  + '  ' + trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
                TQRLabel(DetailBand2.FindChildControl('xmmcjy' + IntToStr(j -
                  1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring;
                //TQRLabel( DetailBand2.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
              end
              else
              begin
                DetailBand2.FindChildControl('qrgrimagejy' + IntToStr(j)).enabled
                  := false;
                DetailBand2.FindChildControl('xmmcjy' + IntToStr(j - 1)).Width
                  := 235;
                TQRLabel(DetailBand2.FindChildControl('ypyfjy' + IntToStr(j -
                  1))).Caption := '';
                TQRLabel(DetailBand2.FindChildControl('xmmcjy' + IntToStr(j -
                  1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring +
                  ' '
                  + trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring) + ' ' +
                  trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
                // TQRLabel( DetailBand2.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
              end;
              sp_zxjl_cq_dy.Next;
            end;
          end
          else
          begin
            aControl := DetailBand2.FindChildControl('ksrqjy' + IntToStr(j -
              1));
            if aControl is TQRLabel then
              TQRLabel(aControl).Caption :=
                sp_zxjl_cq_dy.FieldByName('ksrq').asstring;
            aControl := DetailBand2.FindChildControl('kdysmcjy' + IntToStr(j -
              1));
            if aControl is TQRLabel then
              TQRLabel(aControl).Caption :=
                sp_zxjl_cq_dy.FieldByName('kdysmc').asstring;
            if sp_zxjl_cq_dy.FieldByName('fzph').asstring <> '' then
            begin
              DetailBand2.FindChildControl('QRgrImagejy' + IntToStr(j)).enabled
                := true;
              DetailBand2.FindChildControl('QRgrImagejy' + IntToStr(j)).Top :=
                TQRLabel(DetailBand2.FindChildControl('xmmcjy' + IntToStr(j -
                1))).top;
              DetailBand2.FindChildControl('qrgrimagejy' + IntToStr(j)).left :=
                DetailBand2.FindChildControl('ypyfjy' + IntToStr(j - 1)).left -
                20;
              DetailBand2.FindChildControl('qrgrimagejy' + IntToStr(j)).height
                := 30;
              TQRLabel(DetailBand2.FindChildControl('ypyfjy' + IntToStr(j -
                1))).Caption := trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring)
                +
                '  ' + trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
              TQRLabel(DetailBand2.FindChildControl('xmmcjy' + IntToStr(j -
                1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring;
              //  TQRLabel( DetailBand2.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end
            else
            begin
              DetailBand2.FindChildControl('qrgrimagejy' + IntToStr(j)).enabled
                := false;
              DetailBand2.FindChildControl('xmmcjy' + IntToStr(j - 1)).Width :=
                235;
              TQRLabel(DetailBand2.FindChildControl('ypyfjy' + IntToStr(j -
                1))).Caption := '';
              TQRLabel(DetailBand2.FindChildControl('xmmcjy' + IntToStr(j -
                1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring + ' '
                +
                trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring) + ' ' +
                trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
              //  TQRLabel( DetailBand2.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end;
            sp_zxjl_cq_dy.Next;
          end;
        end;
        QRLabel2jy.Caption := pub_yymc + '�ڷ�ҩִ�е�';
        DM_data.qry_pub.Close;
        DM_data.qry_pub.SQL.text := 'select * from sys_kscwsz where bqdm=' + ''''
          + pub_bqdm + '''' + ' and bcbh=' + '''' +
          trim(sp_jbxx.fieldbyname('bch').asstring) + '''';
        try
          DM_data.qry_pub.Open;
        except
        end;

        QRLabel3jy.Caption := '����:' + sp_jbxx.fieldbyname('brxm').asstring;
        QRLabel20jy.Caption := '������:' +
          Trim(DM_data.qry_pub.FieldByName('yybch').asstring);
        QRLabel21jy.Caption := '�Ա�:' + sp_jbxx.fieldbyname('brxb').asstring;
        QRLabel26jy.Caption := '����:' +
          trim(sp_jbxx.fieldbyname('brnl').asstring);
        nyjy.Caption := FormatDateTime('yyyy', frm_func.curr_date) + '��';

        QRLabel61jy.Caption := '����:' + sp_jbxx.fieldbyname('brxm').asstring +
          '      ' +
          '������:' + Trim(DM_data.qry_pub.FieldByName('yybch').asstring) +
          '      ' +
          '����:' + Trim(sp_jbxx.fieldbyname('tmh').asstring);
        QuickRep6.Preview;
      end;
    end else
    if zzdx = 'A3' then   //------------------------------------�����������޸�A3 ---------------
    begin
      sp_zxjl_cq_dy.First;
      if sp_zxjl_cq_dy.RecordCount mod 8 <> 0 then
        y := trunc(sp_zxjl_cq_dy.RecordCount / 8) + 1
      else
        y := trunc(sp_zxjl_cq_dy.RecordCount / 8);
      count := sp_zxjl_cq_dy.RecordCount;
      for I := 1 to y do
      begin
        for j := 1 to 8 do
        begin
          if count < i * 8 then
          begin
            if j > (8 - (y * 8 - count)) then
            begin
              aControl := qrbndcqjy.FindChildControl('jycqsyksrq' + IntToStr(j -
                1));
              if aControl is TQRLabel then
                TQRLabel(aControl).Caption := '';
              aControl := qrbndcqjy.FindChildControl('jycqsykdys' + IntToStr(j -
                1));
              if aControl is TQRLabel then
                TQRLabel(aControl).Caption := '';
              qrbndcqjy.FindChildControl('QRImagejy' + IntToStr(j)).enabled :=
                false;
              //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
              TQRLabel(qrbndcqjy.FindChildControl('jycqsyypyf' + IntToStr(j -
                1))).Caption := '';
              //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
              TQRLabel(qrbndcqjy.FindChildControl('jycqsyxmmc' + IntToStr(j -
                1))).caption := '';
            end
            else
            begin
              aControl := qrbndcqjy.FindChildControl('jycqsyksrq' + IntToStr(j -
                1));
              if aControl is TQRLabel then
                TQRLabel(aControl).Caption :=
                  sp_zxjl_cq_dy.FieldByName('ksrq').AsString;
              aControl := qrbndcqjy.FindChildControl('jycqsykdys' + IntToStr(j -
                1));
              if aControl is TQRLabel then
                TQRLabel(aControl).Caption :=
                  sp_zxjl_cq_dy.FieldByName('kdysmc').asstring;
              if sp_zxjl_cq_dy.FieldByName('fzph').asstring <> '' then
              begin
                qrbndcqjy.FindChildControl('QRImagejy' + IntToStr(j)).enabled :=
                  true;
                qrbndcqjy.FindChildControl('QRImagejy' + IntToStr(j)).Top :=
                  TQRLabel(qrbndcqjy.FindChildControl('jycqsyxmmc' + IntToStr(j -
                  1))).top;
                qrbndcqjy.FindChildControl('QRImagejy' + IntToStr(j)).left :=
                  qrbndcqjy.FindChildControl('jycqsyypyf' + IntToStr(j - 1)).left
                  -
                  20;
                qrbndcqjy.FindChildControl('QRImagejy' + IntToStr(j)).height :=
                  30;
                TQRLabel(qrbndcqjy.FindChildControl('jycqsyypyf' + IntToStr(j -
                  1))).Caption :=
                  trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring)
                  + '  ' + trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
                TQRLabel(qrbndcqjy.FindChildControl('jycqsyxmmc' + IntToStr(j -
                  1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring;
                //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
              end
              else
              begin
                qrbndcqjy.FindChildControl('QRImagejy' + IntToStr(j)).enabled :=
                  false;
                //qrbndcqsy.FindChildControl( 'cqsyxmmc' + IntToStr( j - 1 ) ).Width := 235;
                TQRLabel(qrbndcqjy.FindChildControl('jycqsyypyf' + IntToStr(j -
                  1))).Caption := '';
                TQRLabel(qrbndcqjy.FindChildControl('jycqsyxmmc' + IntToStr(j -
                  1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring +
                  ' '
                  + trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring) + ' ' +
                  trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
                // TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
              end;
              sp_zxjl_cq_dy.Next;
            end;
          end
          else
          begin
            aControl := qrbndcqjy.FindChildControl('jycqsyksrq' + IntToStr(j -
              1));
            if aControl is TQRLabel then
              TQRLabel(aControl).Caption :=
                sp_zxjl_cq_dy.FieldByName('ksrq').asstring;
            aControl := qrbndcqjy.FindChildControl('jycqsykdys' + IntToStr(j -
              1));
            if aControl is TQRLabel then
              TQRLabel(aControl).Caption :=
                sp_zxjl_cq_dy.FieldByName('kdysmc').asstring;
            if sp_zxjl_cq_dy.FieldByName('fzph').asstring <> '' then
            begin
              qrbndcqjy.FindChildControl('QRImagejy' + IntToStr(j)).enabled :=
                true;
              qrbndcqjy.FindChildControl('QRImagejy' + IntToStr(j)).Top :=
                TQRLabel(qrbndcqjy.FindChildControl('jycqsyxmmc' + IntToStr(j -
                1))).top;
              qrbndcqjy.FindChildControl('QRImagejy' + IntToStr(j)).left :=
                qrbndcqjy.FindChildControl('jycqsyypyf' + IntToStr(j - 1)).left -
                20;
              qrbndcqjy.FindChildControl('QRImagejy' + IntToStr(j)).height :=
                30;
              TQRLabel(qrbndcqjy.FindChildControl('jycqsyypyf' + IntToStr(j -
                1))).Caption := trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring)
                +
                '  ' + trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
              TQRLabel(qrbndcqjy.FindChildControl('jycqsyxmmc' + IntToStr(j -
                1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring;
              //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end
            else
            begin
              qrbndcqjy.FindChildControl('QRImagejy' + IntToStr(j)).enabled :=
                false;
              //qrbndcqsy.FindChildControl( 'cqsyxmmc' + IntToStr( j - 1 ) ).Width := 235;
              TQRLabel(qrbndcqjy.FindChildControl('jycqsyypyf' + IntToStr(j -
                1))).Caption := '';
              TQRLabel(qrbndcqjy.FindChildControl('jycqsyxmmc' + IntToStr(j -
                1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring + ' '
                +
                trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring) + ' ' +
                trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
              //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end;
            sp_zxjl_cq_dy.Next;
          end;
        end;
        jycqsymc.Caption := pub_yymc + '�ڷ�ҩִ�е�';
        DM_data.qry_pub.Close;
        DM_data.qry_pub.SQL.text := 'select * from sys_kscwsz where bqdm=' + ''''
          + pub_bqdm + '''' + ' and bcbh=' + '''' +
          trim(sp_jbxx.fieldbyname('bch').asstring) + '''';
        try
          DM_data.qry_pub.open;
        except

        end;

        jycqsyxm.Caption := '����:' + sp_jbxx.fieldbyname('brxm').asstring;
        jycqsybch.Caption := '������:' +
          Trim(DM_data.qry_pub.FieldByName('yybch').asstring);
        jycqsyxb.Caption := '�Ա�:' + sp_jbxx.fieldbyname('brxb').asstring;
        jycqsynl.Caption := '����:' + trim(sp_jbxx.fieldbyname('brnl').asstring);
        jycqsyn.Caption := FormatDateTime('yyyy', frm_func.curr_date) + '��';

        jycqsyxmxm.Caption := '����:' + sp_jbxx.fieldbyname('brxm').asstring;
        jycqsybchbch.Caption := '������:' +
          Trim(DM_data.qry_pub.FieldByName('yybch').asstring);
        jycqsykh.Caption := '����:' + Trim(sp_jbxx.fieldbyname('tmh').asstring);
        //QRLabel62jy.Caption := '����:' + sp_jbxx.fieldbyname( 'brxm' ).asstring + '      ' +
        //  '������:' + Trim( DM_data.qry_pub.FieldByName( 'yybch' ).asstring ) + '      '+
        //  '����:' + Trim( sp_jbxx.fieldbyname( 'tmh' ).asstring  );
        //'�Ա�:' + sp_jbxx.fieldbyname( 'brxb' ).asstring +'      '+
        //'����:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
         //QuickRep3.Prepare;
        //QRLabel71.Caption := '���ҽ��:';
        qckrpcqjy.Preview;
      end;
    end else //----------------------------------------- A5-----------------
    begin
      sp_zxjl_cq_dy.First;
      if sp_zxjl_cq_dy.RecordCount mod 8 <> 0 then
        y := trunc(sp_zxjl_cq_dy.RecordCount / 8) + 1
      else
        y := trunc(sp_zxjl_cq_dy.RecordCount / 8);
      count := sp_zxjl_cq_dy.RecordCount;
      for I := 1 to y do
      begin
        for j := 1 to 8 do
        begin
          if count < i * 8 then
          begin
            if j > (8 - (y * 8 - count)) then
            begin
              aControl := qrbndcqzs.FindChildControl('cqzsksrq' + IntToStr(j -
                1));
              if aControl is TQRLabel then
                TQRLabel(aControl).Caption := '';
              aControl := qrbndcqzs.FindChildControl('cqzskdys' + IntToStr(j -
                1));
              if aControl is TQRLabel then
                TQRLabel(aControl).Caption := '';
              qrbndcqzs.FindChildControl('QRImagezs' + IntToStr(j)).enabled :=
                false;
              //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
              TQRLabel(qrbndcqzs.FindChildControl('cqzsypyf' + IntToStr(j -
                1))).Caption := '';
              //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
              TQRLabel(qrbndcqzs.FindChildControl('cqzsxmmc' + IntToStr(j -
                1))).caption := '';
            end
            else
            begin
              aControl := qrbndcqzs.FindChildControl('cqzsksrq' + IntToStr(j -
                1));
              if aControl is TQRLabel then
                TQRLabel(aControl).Caption :=
                  sp_zxjl_cq_dy.FieldByName('ksrq').AsString;
              aControl := qrbndcqzs.FindChildControl('cqzskdys' + IntToStr(j -
                1));
              if aControl is TQRLabel then
                TQRLabel(aControl).Caption :=
                  sp_zxjl_cq_dy.FieldByName('kdysmc').asstring;
              if sp_zxjl_cq_dy.FieldByName('fzph').asstring <> '' then
              begin
                qrbndcqzs.FindChildControl('QRImagezs' + IntToStr(j)).enabled :=
                  true;
                qrbndcqzs.FindChildControl('QRImagezs' + IntToStr(j)).Top :=
                  TQRLabel(qrbndcqzs.FindChildControl('cqzsxmmc' + IntToStr(j -
                  1))).top;
                qrbndcqzs.FindChildControl('QRImagezs' + IntToStr(j)).left :=
                  qrbndcqzs.FindChildControl('cqzsypyf' + IntToStr(j - 1)).left
                  -
                  20;
                qrbndcqzs.FindChildControl('QRImagezs' + IntToStr(j)).height :=
                  30;
                TQRLabel(qrbndcqzs.FindChildControl('cqzsypyf' + IntToStr(j -
                  1))).Caption :=
                  trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring)
                  + '  ' + trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
                TQRLabel(qrbndcqzs.FindChildControl('cqzsxmmc' + IntToStr(j -
                  1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring;
                //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
              end
              else
              begin
                qrbndcqzs.FindChildControl('QRImagezs' + IntToStr(j)).enabled :=
                  false;
                //qrbndcqzs.FindChildControl( 'cqzsxmmc' + IntToStr( j - 1 ) ).Width := 235;
                TQRLabel(qrbndcqzs.FindChildControl('cqzsypyf' + IntToStr(j -
                  1))).Caption := '';
                TQRLabel(qrbndcqzs.FindChildControl('cqzsxmmc' + IntToStr(j -
                  1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring +
                  ' '
                  + trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring) + ' ' +
                  trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
                // TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
              end;
              sp_zxjl_cq_dy.Next;
            end;
          end
          else
          begin
            aControl := qrbndcqzs.FindChildControl('cqzsksrq' + IntToStr(j -
              1));
            if aControl is TQRLabel then
              TQRLabel(aControl).Caption :=
                sp_zxjl_cq_dy.FieldByName('ksrq').asstring;
            aControl := qrbndcqzs.FindChildControl('cqzskdys' + IntToStr(j -
              1));
            if aControl is TQRLabel then
              TQRLabel(aControl).Caption :=
                sp_zxjl_cq_dy.FieldByName('kdysmc').asstring;
            if sp_zxjl_cq_dy.FieldByName('fzph').asstring <> '' then
            begin
              qrbndcqzs.FindChildControl('QRImagezs' + IntToStr(j)).enabled :=
                true;
              qrbndcqzs.FindChildControl('QRImagezs' + IntToStr(j)).Top :=
                TQRLabel(qrbndcqzs.FindChildControl('cqzsxmmc' + IntToStr(j -
                1))).top;
              qrbndcqzs.FindChildControl('QRImagezs' + IntToStr(j)).left :=
                qrbndcqzs.FindChildControl('cqzsypyf' + IntToStr(j - 1)).left -
                20;
              qrbndcqzs.FindChildControl('QRImagezs' + IntToStr(j)).height :=
                30;
              TQRLabel(qrbndcqzs.FindChildControl('cqzsypyf' + IntToStr(j -
                1))).Caption := trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring)
                +
                '  ' + trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
              TQRLabel(qrbndcqzs.FindChildControl('cqzsxmmc' + IntToStr(j -
                1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring;
              //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end
            else
            begin
              qrbndcqzs.FindChildControl('QRImagezs' + IntToStr(j)).enabled :=
                false;
              //qrbndcqzs.FindChildControl( 'cqzsxmmc' + IntToStr( j - 1 ) ).Width := 235;
              TQRLabel(qrbndcqzs.FindChildControl('cqzsypyf' + IntToStr(j -
                1))).Caption := '';
              TQRLabel(qrbndcqzs.FindChildControl('cqzsxmmc' + IntToStr(j -
                1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring + ' '
                +
                trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring) + ' ' +
                trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
              //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end;
            sp_zxjl_cq_dy.Next;
          end;
        end;
        QRcqzsmc.Caption := pub_yymc + '�ڷ�ҩִ�е�';
        DM_data.qry_pub.Close;
        DM_data.qry_pub.SQL.text := 'select * from sys_kscwsz where bqdm=' + ''''
          + pub_bqdm + '''' + ' and bcbh=' + '''' +
          trim(sp_jbxx.fieldbyname('bch').asstring) + '''';
        try
          DM_data.qry_pub.Open;
        except
        end;

        QRcqzsxm.Caption := '����:' + sp_jbxx.fieldbyname('brxm').asstring;
        QRcqzsbch.Caption := '������:' +
          Trim(DM_data.qry_pub.FieldByName('yybch').asstring);
        QRcqzsxb.Caption := '�Ա�:' + sp_jbxx.fieldbyname('brxb').asstring;
        QRcqzsnl.Caption := '����:' +
          trim(sp_jbxx.fieldbyname('brnl').asstring);
        QRcqzsn.Caption := FormatDateTime('yyyy', frm_func.curr_date) + '��';
        QRcqzsxmxm.Caption := '����:' + sp_jbxx.fieldbyname('brxm').asstring;
        QRcqzsbchbch.Caption := '������:' +
          Trim(DM_data.qry_pub.FieldByName('yybch').asstring);
        QRcqzskhkh.Caption := '����:' +
          Trim(sp_jbxx.fieldbyname('tmh').asstring);
        qckrp2.Preview;
      end;
    end;
  end;

end;

procedure Tfrm_yzinput.N1Click(Sender: TObject);
var
  _id, _zhzxsj, _yzsx: string;
  _fzph: string;
  _yzsj: string;
  sczt: integer;
  yzid: Integer;
  kdys: string;
begin
  Application.OnMessage := nil;
  dM_data.qry_pub.close;
  DM_data.qry_pub.sql.Text := 'select * from sys_jzzt';
  try
    DM_data.qry_pub.Open;
  except
  end;
  if DM_data.qry_pub.FieldByName('yzzdjfzt').AsBoolean = true then
  begin
    application.MessageBox('���ڽ���ҽ���Զ��Ƿ���ҵ,���Ժ����ԣ�', '��ʾ', 0 +
      48);
    Abort;
  end;
  tzyzqr := 0;

  DM_data.qry_pub.Close;
  DM_data.qry_pub.SQL.text :=
    'select a.id yzid,b.zxcs,isnull(c.zxsj,''20000101'') sj from  zybl_zyyz a, ' +
    '(select yzid,count(*) zxcs from zybl_zyyz_yzzxqd_mx where yzid=' +
    sp_dryz.FieldByName('id').asstring + ' group by yzid) b,zybl_zyyz_zxjl c' +
    ' where a.id=' +
    sp_dryz.FieldByName('id').asstring + ' and  a.id=b.yzid and a.ph*=c.ph  ';
  // ' and convert(varchar(8),sfsj,112)=' + '''' + Formatdatetime( 'yyyyMMdd', Now ) + '''';
  try
    DM_data.qry_pub.Open;
  except
  end;
  DM_data.qry_pub.Filter := 'zxcs<>0';
  DM_data.qry_pub.Filtered := true;
  //-------------------------calmhawk--��ִ����ʱҽ������ֹͣ-------
  if (not DM_data.qry_pub.IsEmpty) and (sp_dryz.FieldByName('yzsx').asstring =
    '��ʱ') then
  begin
    DM_data.qry_pub.Filtered := false;
    application.MessageBox('��ִ����ʱҽ��������ֹͣ��', '��ʾ', mb_iconquestion
      + mb_ok);
    abort;
  end;
  DM_data.qry_pub.Filter := 'sj=' + #39 + Formatdatetime('yyyyMMdd',
    frm_func.curr_date) + #39;
  DM_data.qry_pub.Filtered := true;

  if (DM_data.qry_pub.RecordCount = 0) and (sp_dryz.FieldByName('yzsx').asstring
    = '����') then
  begin
    if application.MessageBox('��ǰҽ������δ�Ƿѣ��Ƿ����ֹͣ��', '��ʾ',
      mb_iconquestion + mb_yesno + mb_defbutton2) = idno then
    begin
      DM_data.qry_pub.Filtered := false;
      abort;
    end;
  end;
  DM_data.qry_pub.Filtered := false;
  DM_data.qry_pub.Close;
  DM_data.qry_pub.SQL.text := 'select * from sys_czy where dm=' + #39 + pub_czydm
    + #39;
  try
    DM_data.qry_pub.Open;
  except
  end;
  if (DM_data.qry_pub.FieldByName('cfbz').AsBoolean = false) and
    (Trim(sp_dryz.FieldByName('kdys').asstring) <> pub_czydm) and (pub_yydm <>
    '0237') then
  begin
    ShowMessage('��ǰ����Ա�޷�ֹͣ����ҽ��');
    Abort;
  end;

  try
    application.Createform(Tfrm_tzyzsj, frm_tzyzsj);
    p_tzyzsj.sfxse := '';
    frm_tzyzsj.showmodal;
  finally
    frm_tzyzsj.free;
  end;
  if sp_dryz.FieldByName('yzsx').AsString = '��ʱ' then
  begin
    if application.MessageBox('��ʱҽ��ֹͣ,ֻ������ֹͣ���Ƿ������', '��ʾ',
      mb_iconquestion + mb_yesno + mb_defbutton1) = idno then
      abort
  end;
  //ʱ��ֹͣҽ��

  DM_data.qry_pub.close;
  DM_data.qry_pub.SQL.text := 'select * from zybl_zyyz where id=' +
    sp_dryz.FieldByName('id').asstring;
  try
    DM_data.qry_pub.Open;
  except
  end;
  if (sp_dryz.FieldByName('yzsx').AsString = '��ʱ') and
    ((DM_data.qry_pub.FieldByName('shry').AsString = 'δ��')
    or (sp_dryz.FieldByName('tzbz').AsBoolean = true)) then
  begin
    application.MessageBox('��ʱҽ����ȡ�����ʶΪδ�õĲ�����ȡ���ˣ�',
      '��ʾ');
    abort;
  end;

  sp_yzsj.Close;
  sp_yzsj.Parameters.ParamByName('@scyzsj').Value := tzyzsj;
  sp_yzsj.ExecProc;
  _yzsj := formatdatetime('yyyymmdd',
    sp_yzsj.Parameters.ParamByName('@scyzsj').Value);
  //  dt_zxsj.DateTime:= sp_yzsj.Parameters.ParamByName('@scyzsj').Value;

  if tzyzqr = 1 then
  begin
    if not sp_dryz.Active then
      exit;
    if sp_dryz.RecordCount < 1 then
      exit;
    //    datetimetostr(frm_func.curr_date)

    _id := sp_dryz.FieldByName('id').AsString;
    _zhzxsj := sp_dryz.FieldByName('zhzxsj').AsString;
    _yzsx := sp_dryz.FieldByName('yzsx').AsString;
    _fzph := sp_dryz.FieldByName('fzph').AsString;
    if FormatDateTime('yyyy-MM-dd hh:mm:ss', strtodatetime(tzyzsj)) <=
      FormatDateTime('yyyy-MM-dd hh:mm:ss',
      sp_dryz.FieldByName('kdrq').asdatetime) then
    begin
      application.MessageBox('ֹͣ���ڲ����ڿ�������֮ǰ����ڿ������ڣ�',
        '��ʾ');
      exit;
    end;
    if _fzph <> '' then
    begin
      sp_tzyz.Close;
      sp_tzyz.Parameters.ParamByName('@zyh').Value := zyh;
      sp_tzyz.Parameters.ParamByName('@zxsj').Value := _yzsj;
      sp_tzyz.Parameters.ParamByName('@tzyzsj').Value := strtodatetime(tzyzsj);
      sp_tzyz.Parameters.ParamByName('@czydm').Value := pub_czydm;
      sp_tzyz.Parameters.ParamByName('@id').Value := 0;
      sp_tzyz.Parameters.ParamByName('@fzph').Value := _fzph;
      sp_tzyz.Parameters.ParamByName('@sczt').Value := 9;
      sp_tzyz.ExecProc;
      sczt := sp_tzyz.Parameters.ParamByName('@sczt').Value;
      if sczt <> 0 then
        application.MessageBox('ҽ��ֹͣδ�ɹ��������²�������', '��ʾ��',
          mb_ok);
    end
    else
    begin
      sp_tzyz.Close;
      sp_tzyz.Parameters.ParamByName('@zyh').Value := zyh;
      sp_tzyz.Parameters.ParamByName('@zxsj').Value := _yzsj;
      sp_tzyz.Parameters.ParamByName('@tzyzsj').Value := strtodatetime(tzyzsj);
      sp_tzyz.Parameters.ParamByName('@czydm').Value := pub_czydm;
      sp_tzyz.Parameters.ParamByName('@id').Value := _id;
      sp_tzyz.Parameters.ParamByName('@fzph').Value := '';
      sp_tzyz.Parameters.ParamByName('@sczt').Value := 9;
      sp_tzyz.ExecProc;
      DM_data.qry_pub.close;
      DM_data.qry_pub.SQL.text := 'select * from sys_xt_kg ';
      try
        DM_data.qry_pub.Open;
      except
      end;
      if (DM_data.qry_pub.FieldByName('qyzdjf').AsBoolean = true) and
        (DM_data.qry_pub.FieldByName('yztjjf').AsBoolean = true) then
      begin
        DM_data.qry_pub.close;
        DM_data.qry_pub.SQL.Text := 'select * from zybl_zyyz where id=' +
          sp_dryz.FieldByName('id').asstring;
        try
          DM_data.qry_pub.Open;
        except
        end;
        yzid := sp_dryz.FieldByName('id').AsInteger;
        kdys := DM_data.qry_pub.FieldByName('kdys').asstring;
        if sp_dryz.FieldByName('yzsx').AsString = '��ʱ' then
          yzqxtf(yzid, kdys);
      end;
      sczt := sp_tzyz.Parameters.ParamByName('@sczt').Value;
      if sczt <> 0 then
        application.MessageBox('ҽ��ֹͣδ�ɹ��������²�������', '��ʾ��',
          mb_ok);
    end;
    //    if ( _zhzxsj <> '' ) and ( _yzsx = '��ʱ' ) and  (( sp_dryz.FieldByName('lb').asstring = 'ҩƷ' )
    //       or  ( sp_dryz.FieldByName('lb').asstring = '��ҩ' ) or  ( sp_dryz.FieldByName('lb').asstring = '����' ))  then
    //    begin
    //      if _fzph <> '' then
    //        application.MessageBox( pchar( '��' + #13 + sp_dryz.FieldByName( 'xmmc' ).AsString + #13 + '������Һ���Ѿ�ִ�мƷѣ�����д��Ӧ֪ͨ�칫��ʿ�˷ѣ�����' ), '��ʾ', 0 + 48 )
    //      else
    //        application.MessageBox( pchar( '��' + #13 + sp_dryz.FieldByName( 'xmmc' ).AsString + #13 + '�Ѿ�ִ�мƷѣ�����д��Ӧ֪ͨ�칫��ʿ�˷ѣ�����' ), '��ʾ', 0 + 48 );
    //    end;
    sp_dryz.Close;
    sp_dryz.Parameters.ParamByName('@zyh').Value := zyh;
    sp_dryz.Parameters.ParamByName('@yzsx').Value := '';
    sp_dryz.Open;
  end;
end;

procedure Tfrm_yzinput.N20Click(Sender: TObject);
var
  i, y, j, count, x: Integer;
  aControl: TControl;
  v_yytj, v_lb, filter: string;
begin
  with sp_zxjl_cq_dy do
  begin
    Filtered := False;
    Close;
    Parameters.ParamByName('@zyh').Value :=
      Trim(sp_jbxx.fieldbyname('zyh').asstring);
    Parameters.ParamByName('@fs').Value := 0;
    Open;
  end;

  DM_data.qry_pub.close;
  DM_data.qry_pub.sql.text :=
    'select yytj from zybl_zyyz_dytjsz where dyxm=''�ڷ�ҩִ�е�''';
  try
    DM_data.qry_pub.Open;
  except
  end;
  if DM_data.qry_pub.IsEmpty then
  begin
    v_yytj := '';
  end
  else
  begin
    DM_data.qry_pub.First;
    while not DM_data.qry_pub.eof do
    begin
      v_yytj := v_yytj + '(yytj=' + '''' +
        DM_data.qry_pub.FieldByName('yytj').asstring + '''' + ' and  tzrq=null )'
        +
        ' or ';
      DM_data.qry_pub.Next;
    end;

  end;
  DM_data.qry_pub.close;
  DM_data.qry_pub.sql.text :=
    'select lbmc from zybl_zyyz_dylbsz where dyxm=''�ڷ�ҩִ�е�''';
  try
    DM_data.qry_pub.Open;
  except
  end;
  if DM_data.qry_pub.IsEmpty then
  begin
    v_lb := '';
  end
  else
  begin
    DM_data.qry_pub.First;
    while not DM_data.qry_pub.eof do
    begin
      v_lb := v_lb + '(lb=' + '''' + DM_data.qry_pub.FieldByName('lbmc').asstring
        + '''' + ' and  tzrq=null )' + ' or ';
      DM_data.qry_pub.Next;
    end;

  end;

  if v_yytj + v_lb = '' then
  begin
    filter := ' 1<>1 ';
  end
  else
  begin
    filter := v_yytj + v_lb + ' ( yytj=''�������'' )';
  end;
  sp_zxjl_cq_dy.Filtered := false;
  sp_zxjl_cq_dy.Filter := 'yytj=''�������''';
  sp_zxjl_cq_dy.Filtered := True;
  if sp_zxjl_cq_dy.RecordCount = 0 then
  begin
    count := 1;
    if (zzdx = 'A4') or (zzdx = 'B5') then
    begin
      sp_zxjl_cq_dy.First;
      if count mod 20 <> 0 then
        y := trunc(count / 20) + 1
      else
        y := trunc(count / 20);
      count := 1;
      for I := 1 to y do
      begin
        for j := 1 to 20 do
        begin
          if count < y * 20 then
          begin
            if j > (20 - (i * 20 - count)) then
            begin
              aControl := QRBand7.FindChildControl('ksrq_' + IntToStr(j - 1));
              if aControl is TQRLabel then
                TQRLabel(aControl).Caption := '';
              aControl := QRBand7.FindChildControl('kdysmc_' + IntToStr(j - 1));
              if aControl is TQRLabel then
                TQRLabel(aControl).Caption := '';
              //TQRLabel( QRBand7.FindChildControl( 'xmmc_' + IntToStr( j - 1 ) ) ).Width := 0;
              TQRLabel(QRBand7.FindChildControl('xmmc_' + IntToStr(j -
                1))).caption := '';
            end
            else
            begin
              aControl := QRBand7.FindChildControl('ksrq_' + IntToStr(j - 1));
              if aControl is TQRLabel then
                TQRLabel(aControl).Caption :=
                  sp_zxjl_cq_dy.FieldByName('ksrq').AsString;
              aControl := QRBand7.FindChildControl('kdysmc_' + IntToStr(j - 1));
              if aControl is TQRLabel then
                TQRLabel(aControl).Caption :=
                  sp_zxjl_cq_dy.FieldByName('kdysmc').asstring;
              if sp_zxjl_cq_dy.FieldByName('fzph').asstring <> '' then
              begin
                TQRLabel(QRBand7.FindChildControl('xmmc_' + IntToStr(j -
                  1))).caption :=
                  sp_zxjl_cq_dy.FieldByName('xmmc').Asstring;
              end
              else
              begin
                QRBand7.FindChildControl('xmmc_' + IntToStr(j - 1)).Width :=
                  190;
                TQRLabel(QRBand7.FindChildControl('xmmc_' + IntToStr(j -
                  1))).caption :=
                  sp_zxjl_cq_dy.FieldByName('xmmc').Asstring + '  ' +
                  trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
              end;
              sp_zxjl_cq_dy.Next;
            end;
          end
          else
          begin
            aControl := QRBand7.FindChildControl('ksrq_' + IntToStr(j - 1));
            if aControl is TQRLabel then
              TQRLabel(aControl).Caption :=
                sp_zxjl_cq_dy.FieldByName('ksrq').asstring;
            aControl := QRBand7.FindChildControl('kdysmc_' + IntToStr(j - 1));
            if aControl is TQRLabel then
              TQRLabel(aControl).Caption :=
                sp_zxjl_cq_dy.FieldByName('kdysmc').asstring;
            if sp_zxjl_cq_dy.FieldByName('fzph').asstring <> '' then
            begin
              TQRLabel(QRBand7.FindChildControl('xmmc_' + IntToStr(j -
                1))).caption :=
                sp_zxjl_cq_dy.FieldByName('xmmc').Asstring;
            end
            else
            begin
              QRBand7.FindChildControl('xmmc_' + IntToStr(j - 1)).Width := 190;
              TQRLabel(QRBand7.FindChildControl('xmmc_' + IntToStr(j -
                1))).caption :=
                sp_zxjl_cq_dy.FieldByName('xmmc').Asstring + '  ' +
                trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
            end;
            sp_zxjl_cq_dy.Next;
          end;
        end;
        DM_data.qry_pub.Close;
        DM_data.qry_pub.SQL.text := 'select * from sys_kscwsz where bqdm=' + ''''
          + pub_bqdm + '''' + ' and bcbh=' + '''' +
          trim(sp_jbxx.fieldbyname('bch').asstring) + '''';
        try
          DM_data.qry_pub.Open;
        except
        end;
        QRLabel31.Caption := pub_yymc + 'ҽ��ִ�е�(�ڷ�ҩ)';
        QRLabel32.Caption := '����:' + sp_jbxx.fieldbyname('brxm').asstring;
        QRLabel36.Caption := '����:' +
          Trim(DM_data.qry_pub.FieldByName('yybch').asstring);
        qrlbl_nf_tmh.Caption := 'סԺ��:' + sp_jbxx.fieldbyname('tmh').asstring;
        qrlbl_nfQRL_bq_cq.Caption := '����:' + pub_bqmc;
        QuickRep4.Prepare;
        ys.Caption := '��' + '   ' + inttostr(i) + '  ҳ';
        qrl_ks.Caption := '����:' + sp_jbxx.fieldbyname('brxm').asstring + '   '
          +
          '����:' + Trim(DM_data.qry_pub.FieldByName('yybch').asstring) + '   '
          +
          '����:' + pub_bqmc + '   ' + '����:' +
          Trim(sp_jbxx.fieldbyname('tmh').asstring);
        QuickRep4.Preview;
      end;
    end else
    if zzdx = 'A3' then   //------------------------------------�����������޸�A3 ---------------
    begin
      sp_zxjl_cq_dy.First;
      if Count mod 8 <> 0 then
        y := trunc(count / 8) + 1
      else
        y := trunc(count / 8);
     // count := sp_zxjl_cq_dy.RecordCount;
      count := 1;
      for I := 1 to y do
      begin
        for j := 1 to 8 do
        begin
          if count < i * 8 then
          begin
            if j > (8 - (y * 8 - count)) then
            begin
              aControl := qrbndcqjy.FindChildControl('jycqsyksrq' + IntToStr(j -
                1));
              if aControl is TQRLabel then
                TQRLabel(aControl).Caption := '';
              aControl := qrbndcqjy.FindChildControl('jycqsykdys' + IntToStr(j -
                1));
              if aControl is TQRLabel then
                TQRLabel(aControl).Caption := '';
              qrbndcqjy.FindChildControl('QRImagejy' + IntToStr(j)).enabled :=
                false;
              //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
              TQRLabel(qrbndcqjy.FindChildControl('jycqsyypyf' + IntToStr(j -
                1))).Caption := '';
              //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
              TQRLabel(qrbndcqjy.FindChildControl('jycqsyxmmc' + IntToStr(j -
                1))).caption := '';
            end
            else
            begin
              aControl := qrbndcqjy.FindChildControl('jycqsyksrq' + IntToStr(j -
                1));
              if aControl is TQRLabel then
                TQRLabel(aControl).Caption :=
                  sp_zxjl_cq_dy.FieldByName('ksrq').AsString;
              aControl := qrbndcqjy.FindChildControl('jycqsykdys' + IntToStr(j -
                1));
              if aControl is TQRLabel then
                TQRLabel(aControl).Caption :=
                  sp_zxjl_cq_dy.FieldByName('kdysmc').asstring;
              if sp_zxjl_cq_dy.FieldByName('fzph').asstring <> '' then
              begin
                qrbndcqjy.FindChildControl('QRImagejy' + IntToStr(j)).enabled :=
                  true;
                qrbndcqjy.FindChildControl('QRImagejy' + IntToStr(j)).Top :=
                  TQRLabel(qrbndcqjy.FindChildControl('jycqsyxmmc' + IntToStr(j -
                  1))).top;
                qrbndcqjy.FindChildControl('QRImagejy' + IntToStr(j)).left :=
                  qrbndcqjy.FindChildControl('jycqsyypyf' + IntToStr(j - 1)).left
                  -
                  20;
                qrbndcqjy.FindChildControl('QRImagejy' + IntToStr(j)).height :=
                  30;
                TQRLabel(qrbndcqjy.FindChildControl('jycqsyypyf' + IntToStr(j -
                  1))).Caption :=
                  trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring)
                  + '  ' + trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
                TQRLabel(qrbndcqjy.FindChildControl('jycqsyxmmc' + IntToStr(j -
                  1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring;
                //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
              end
              else
              begin
                qrbndcqjy.FindChildControl('QRImagejy' + IntToStr(j)).enabled :=
                  false;
                //qrbndcqsy.FindChildControl( 'cqsyxmmc' + IntToStr( j - 1 ) ).Width := 235;
                TQRLabel(qrbndcqjy.FindChildControl('jycqsyypyf' + IntToStr(j -
                  1))).Caption := '';
                TQRLabel(qrbndcqjy.FindChildControl('jycqsyxmmc' + IntToStr(j -
                  1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring +
                  ' '
                  + trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring) + ' ' +
                  trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
                // TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
              end;
              sp_zxjl_cq_dy.Next;
            end;
          end
          else
          begin
            aControl := qrbndcqjy.FindChildControl('jycqsyksrq' + IntToStr(j -
              1));
            if aControl is TQRLabel then
              TQRLabel(aControl).Caption :=
                sp_zxjl_cq_dy.FieldByName('ksrq').asstring;
            aControl := qrbndcqjy.FindChildControl('jycqsykdys' + IntToStr(j -
              1));
            if aControl is TQRLabel then
              TQRLabel(aControl).Caption :=
                sp_zxjl_cq_dy.FieldByName('kdysmc').asstring;
            if sp_zxjl_cq_dy.FieldByName('fzph').asstring <> '' then
            begin
              qrbndcqjy.FindChildControl('QRImagejy' + IntToStr(j)).enabled :=
                true;
              qrbndcqjy.FindChildControl('QRImagejy' + IntToStr(j)).Top :=
                TQRLabel(qrbndcqjy.FindChildControl('jycqsyxmmc' + IntToStr(j -
                1))).top;
              qrbndcqjy.FindChildControl('QRImagejy' + IntToStr(j)).left :=
                qrbndcqjy.FindChildControl('jycqsyypyf' + IntToStr(j - 1)).left -
                20;
              qrbndcqjy.FindChildControl('QRImagejy' + IntToStr(j)).height :=
                30;
              TQRLabel(qrbndcqjy.FindChildControl('jycqsyypyf' + IntToStr(j -
                1))).Caption := trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring)
                +
                '  ' + trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
              TQRLabel(qrbndcqjy.FindChildControl('jycqsyxmmc' + IntToStr(j -
                1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring;
              //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end
            else
            begin
              qrbndcqjy.FindChildControl('QRImagejy' + IntToStr(j)).enabled :=
                false;
              //qrbndcqsy.FindChildControl( 'cqsyxmmc' + IntToStr( j - 1 ) ).Width := 235;
              TQRLabel(qrbndcqjy.FindChildControl('jycqsyypyf' + IntToStr(j -
                1))).Caption := '';
              TQRLabel(qrbndcqjy.FindChildControl('jycqsyxmmc' + IntToStr(j -
                1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring + ' '
                +
                trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring) + ' ' +
                trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
              //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end;
            sp_zxjl_cq_dy.Next;
          end;
        end;
        jycqsymc.Caption := pub_yymc + 'ҽ��ִ�е�(�ڷ�ҩ)';
        DM_data.qry_pub.Close;
        DM_data.qry_pub.SQL.text := 'select * from sys_kscwsz where bqdm=' + ''''
          + pub_bqdm + '''' + ' and bcbh=' + '''' +
          trim(sp_jbxx.fieldbyname('bch').asstring) + '''';
        try
          DM_data.qry_pub.open;
        except

        end;

        jycqsyxm.Caption := '����:' + sp_jbxx.fieldbyname('brxm').asstring;
        jycqsybch.Caption := '������:' +
          Trim(DM_data.qry_pub.FieldByName('yybch').asstring);
        jycqsyxb.Caption := '�Ա�:' + sp_jbxx.fieldbyname('brxb').asstring;
        jycqsynl.Caption := '����:' + trim(sp_jbxx.fieldbyname('brnl').asstring);
        jycqsyn.Caption := FormatDateTime('yyyy', frm_func.curr_date) + '��';

        jycqsyxmxm.Caption := '����:' + sp_jbxx.fieldbyname('brxm').asstring;
        jycqsybchbch.Caption := '������:' +
          Trim(DM_data.qry_pub.FieldByName('yybch').asstring);
        jycqsykh.Caption := '����:' + Trim(sp_jbxx.fieldbyname('tmh').asstring);
        //QRLabel62jy.Caption := '����:' + sp_jbxx.fieldbyname( 'brxm' ).asstring + '      ' +
        //  '������:' + Trim( DM_data.qry_pub.FieldByName( 'yybch' ).asstring ) + '      '+
        //  '����:' + Trim( sp_jbxx.fieldbyname( 'tmh' ).asstring  );
        //'�Ա�:' + sp_jbxx.fieldbyname( 'brxb' ).asstring +'      '+
        //'����:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
         //QuickRep3.Prepare;
        //QRLabel71.Caption := '���ҽ��:';
        qckrpcqjy.Preview;
      end;
    end else //----------------------------------------- A3-----------------
    begin
      sp_zxjl_cq_dy.First;
      if count mod 8 <> 0 then
        y := trunc(count / 8) + 1
      else
        y := trunc(count / 8);
      count := 1;
      for I := 1 to y do
      begin
        for j := 1 to 8 do
        begin
          if count < i * 8 then
          begin
            if j > (8 - (y * 8 - count)) then
            begin
              aControl := qrbndcqzs.FindChildControl('cqzsksrq' + IntToStr(j -
                1));
              if aControl is TQRLabel then
                TQRLabel(aControl).Caption := '';
              aControl := qrbndcqzs.FindChildControl('cqzskdys' + IntToStr(j -
                1));
              if aControl is TQRLabel then
                TQRLabel(aControl).Caption := '';
              qrbndcqzs.FindChildControl('QRImagezs' + IntToStr(j)).enabled :=
                false;
              //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
              TQRLabel(qrbndcqzs.FindChildControl('cqzsypyf' + IntToStr(j -
                1))).Caption := '';
              //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
              TQRLabel(qrbndcqzs.FindChildControl('cqzsxmmc' + IntToStr(j -
                1))).caption := '';
            end
            else
            begin
              aControl := qrbndcqzs.FindChildControl('cqzsksrq' + IntToStr(j -
                1));
              if aControl is TQRLabel then
                TQRLabel(aControl).Caption :=
                  sp_zxjl_cq_dy.FieldByName('ksrq').AsString;
              aControl := qrbndcqzs.FindChildControl('cqzskdys' + IntToStr(j -
                1));
              if aControl is TQRLabel then
                TQRLabel(aControl).Caption :=
                  sp_zxjl_cq_dy.FieldByName('kdysmc').asstring;
              if sp_zxjl_cq_dy.FieldByName('fzph').asstring <> '' then
              begin
                qrbndcqzs.FindChildControl('QRImagezs' + IntToStr(j)).enabled :=
                  true;
                qrbndcqzs.FindChildControl('QRImagezs' + IntToStr(j)).Top :=
                  TQRLabel(qrbndcqzs.FindChildControl('cqzsxmmc' + IntToStr(j -
                  1))).top;
                qrbndcqzs.FindChildControl('QRImagezs' + IntToStr(j)).left :=
                  qrbndcqzs.FindChildControl('cqzsypyf' + IntToStr(j - 1)).left
                  -
                  20;
                qrbndcqzs.FindChildControl('QRImagezs' + IntToStr(j)).height :=
                  30;
                TQRLabel(qrbndcqzs.FindChildControl('cqzsypyf' + IntToStr(j -
                  1))).Caption :=
                  trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring)
                  + '  ' + trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
                TQRLabel(qrbndcqzs.FindChildControl('cqzsxmmc' + IntToStr(j -
                  1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring;
                //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
              end
              else
              begin
                qrbndcqzs.FindChildControl('QRImagezs' + IntToStr(j)).enabled :=
                  false;
                //qrbndcqzs.FindChildControl( 'cqzsxmmc' + IntToStr( j - 1 ) ).Width := 235;
                TQRLabel(qrbndcqzs.FindChildControl('cqzsypyf' + IntToStr(j -
                  1))).Caption := '';
                TQRLabel(qrbndcqzs.FindChildControl('cqzsxmmc' + IntToStr(j -
                  1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring +
                  ' '
                  + trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring) + ' ' +
                  trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
                // TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
              end;
              sp_zxjl_cq_dy.Next;
            end;
          end
          else
          begin
            aControl := qrbndcqzs.FindChildControl('cqzsksrq' + IntToStr(j -
              1));
            if aControl is TQRLabel then
              TQRLabel(aControl).Caption :=
                sp_zxjl_cq_dy.FieldByName('ksrq').asstring;
            aControl := qrbndcqzs.FindChildControl('cqzskdys' + IntToStr(j -
              1));
            if aControl is TQRLabel then
              TQRLabel(aControl).Caption :=
                sp_zxjl_cq_dy.FieldByName('kdysmc').asstring;
            if sp_zxjl_cq_dy.FieldByName('fzph').asstring <> '' then
            begin
              qrbndcqzs.FindChildControl('QRImagezs' + IntToStr(j)).enabled :=
                true;
              qrbndcqzs.FindChildControl('QRImagezs' + IntToStr(j)).Top :=
                TQRLabel(qrbndcqzs.FindChildControl('cqzsxmmc' + IntToStr(j -
                1))).top;
              qrbndcqzs.FindChildControl('QRImagezs' + IntToStr(j)).left :=
                qrbndcqzs.FindChildControl('cqzsypyf' + IntToStr(j - 1)).left -
                20;
              qrbndcqzs.FindChildControl('QRImagezs' + IntToStr(j)).height :=
                30;
              TQRLabel(qrbndcqzs.FindChildControl('cqzsypyf' + IntToStr(j -
                1))).Caption := trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring)
                +
                '  ' + trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
              TQRLabel(qrbndcqzs.FindChildControl('cqzsxmmc' + IntToStr(j -
                1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring;
              //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end
            else
            begin
              qrbndcqzs.FindChildControl('QRImagezs' + IntToStr(j)).enabled :=
                false;
              //qrbndcqzs.FindChildControl( 'cqzsxmmc' + IntToStr( j - 1 ) ).Width := 235;
              TQRLabel(qrbndcqzs.FindChildControl('cqzsypyf' + IntToStr(j -
                1))).Caption := '';
              TQRLabel(qrbndcqzs.FindChildControl('cqzsxmmc' + IntToStr(j -
                1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring + ' '
                +
                trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring) + ' ' +
                trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
              //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end;
            sp_zxjl_cq_dy.Next;
          end;
        end;
        QRcqzsmc.Caption := pub_yymc + 'ҽ��ִ�е�(�ڷ�ҩ)';
        DM_data.qry_pub.Close;
        DM_data.qry_pub.SQL.text := 'select * from sys_kscwsz where bqdm=' + ''''
          + pub_bqdm + '''' + ' and bcbh=' + '''' +
          trim(sp_jbxx.fieldbyname('bch').asstring) + '''';
        try
          DM_data.qry_pub.Open;
        except
        end;

        QRcqzsxm.Caption := '����:' + sp_jbxx.fieldbyname('brxm').asstring;
        QRcqzsbch.Caption := '������:' +
          Trim(DM_data.qry_pub.FieldByName('yybch').asstring);
        QRcqzsxb.Caption := '�Ա�:' + sp_jbxx.fieldbyname('brxb').asstring;
        QRcqzsnl.Caption := '����:' +
          trim(sp_jbxx.fieldbyname('brnl').asstring);
        QRcqzsn.Caption := FormatDateTime('yyyy', frm_func.curr_date) + '��';
        QRcqzsxmxm.Caption := '����:' + sp_jbxx.fieldbyname('brxm').asstring;
        QRcqzsbchbch.Caption := '������:' +
          Trim(DM_data.qry_pub.FieldByName('yybch').asstring);
        QRcqzskhkh.Caption := '����:' +
          Trim(sp_jbxx.fieldbyname('tmh').asstring);

        ////QRLabel62jy.Caption := '����:' + sp_jbxx.fieldbyname( 'brxm' ).asstring + '      ' +
        //  '������:' + Trim( DM_data.qry_pub.FieldByName( 'yybch' ).asstring ) + '      '+
        //  '����:' + Trim( sp_jbxx.fieldbyname( 'tmh' ).asstring  );
        //'�Ա�:' + sp_jbxx.fieldbyname( 'brxb' ).asstring +'      '+
        //'����:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
//QuickRep3.Prepare;
        //QRLabel71.Caption := '���ҽ��:';
        qckrp2.Preview;
      end;
    end;
  end;
end;

procedure Tfrm_yzinput.N21Click(Sender: TObject);
var
  i, y, j, count, x: Integer;
  aControl: TControl;
  v_yytj, v_lb, filter: string;
begin
  Application.OnMessage := nil;
  with sp_zxjl_cq_dy do
  begin
    Filtered := False;
    Close;
    Parameters.ParamByName('@zyh').Value :=
      Trim(sp_jbxx.fieldbyname('zyh').asstring);
    Parameters.ParamByName('@fs').Value := 0;
    Open;
  end;
  DM_data.qry_pub.close;
  DM_data.qry_pub.sql.text :=
    'select yytj from zybl_zyyz_dytjsz where dyxm=''��Һ�ƻ���''';
  try
    DM_data.qry_pub.Open;
  except
  end;
  if DM_data.qry_pub.IsEmpty then
  begin
    v_yytj := '';
  end
  else
  begin
    DM_data.qry_pub.First;
    while not DM_data.qry_pub.eof do
    begin
      // v_yytj := v_yytj + '(yytj=' + '''' + DM_data.qry_pub.FieldByName( 'yytj' ).asstring + '''' + ' and  tzrq=null and kdks=' + '''' + pub_ksdm + ''')' + ' or ';
      if pub_yydm<>'0260' then
     begin
      v_yytj := v_yytj + '(yytj=' + '''' +
        DM_data.qry_pub.FieldByName('yytj').asstring + '''' +
        ' and  tzrq=null and xmmc<>'''' )' + ' or ';
     end
     else
     begin
            v_yytj := v_yytj + '(yytj=' + '''' +
        DM_data.qry_pub.FieldByName('yytj').asstring + '''' +
        ' and xmmc<>'''' )' + ' or ';
     end;
      DM_data.qry_pub.Next;
    end;

  end;

  DM_data.qry_pub.close;
  DM_data.qry_pub.sql.text :=
    'select lbmc from zybl_zyyz_dylbsz where dyxm=''��Һ�ƻ���''';
  try
    DM_data.qry_pub.Open;
  except
  end;
  if DM_data.qry_pub.IsEmpty then
  begin
    v_lb := '';
  end
  else
  begin
    DM_data.qry_pub.First;
    while not DM_data.qry_pub.eof do
    begin
      // v_lb := v_lb + '(lb=' + '''' + DM_data.qry_pub.FieldByName( 'lbmc' ).asstring + '''' + ' and  tzrq=null and kdks=' + '''' + pub_ksdm + ''')' + ' or ';
      v_lb := v_lb + '(lb=' + '''' + DM_data.qry_pub.FieldByName('lbmc').asstring
        + '''' + ' and  tzrq=null )' + ' or ';
      DM_data.qry_pub.Next;
    end;

  end;

  if v_yytj + v_lb = '' then
  begin
    filter := ' 1<>1 ';
  end
  else
  begin
    filter := v_yytj + v_lb + ' ( yytj=''�������'' )';
  end;
  sp_zxjl_cq_dy.Filter := filter;
  sp_zxjl_cq_dy.Filtered := True;
  try
    application.createform(Tfrm_xz_jhddy, frm_xz_jhddy);
    frm_xz_jhddy.showmodal;
  finally
    frm_xz_jhddy.free;
  end;
  v_yytj := '';
  v_lb := '';
  filter := '';
  DM_data.qry_pub.close;
  DM_data.qry_pub.sql.text :=
    'select yytj from zybl_zyyz_dytjsz where dyxm=''��Һ�ƻ���''';
  try
    DM_data.qry_pub.Open;
  except
  end;
  if DM_data.qry_pub.IsEmpty then
  begin
    v_yytj := '';
  end
  else
  begin
    DM_data.qry_pub.First;
    while not DM_data.qry_pub.eof do
    begin
    if pub_yydm<>'0260' then
     begin
      v_yytj := v_yytj + '(yytj=' + '''' +
        DM_data.qry_pub.FieldByName('yytj').asstring + '''' +
        ' and  xzbz=1 and tzrq=null )' + ' or ';
     end
     else
     begin
           v_yytj := v_yytj + '(yytj=' + '''' +
        DM_data.qry_pub.FieldByName('yytj').asstring + '''' +
        ' and  xzbz=1  )' + ' or ';
     end;
      DM_data.qry_pub.Next;
    end;

  end;

  DM_data.qry_pub.close;
  DM_data.qry_pub.sql.text :=
    'select lbmc from zybl_zyyz_dylbsz where dyxm=''��Һ�ƻ���''';
  try
    DM_data.qry_pub.Open;
  except
  end;
  if DM_data.qry_pub.IsEmpty then
  begin
    v_lb := '';
  end
  else
  begin
    DM_data.qry_pub.First;
    while not DM_data.qry_pub.eof do
    begin
      v_lb := v_lb + '(lb=' + '''' + DM_data.qry_pub.FieldByName('lbmc').asstring
        + '''' + ' and  tzrq=null and xzbz=1 )' + ' or ';
      DM_data.qry_pub.Next;
    end;

  end;

  if v_yytj + v_lb = '' then
  begin
    filter := ' 1<>1 ';
  end
  else
  begin
    filter := v_yytj + v_lb + ' ( yytj=''�������'' )';
  end;
  sp_zxjl_cq_dy.Filter := filter;
  sp_zxjl_cq_dy.Filtered := True;

  if sp_zxjl_cq_dy.IsEmpty then
  begin
    Application.MessageBox('û�м�¼��', '��ʾ', 0 + 48);
    Exit;
  end;
  if not sp_zxjl_cq_dy.IsEmpty then
  begin
    if zzdx = 'A4' then
    begin
      sp_zxjl_cq_dy.First;
      if sp_zxjl_cq_dy.RecordCount mod 5 <> 0 then
        y := trunc(sp_zxjl_cq_dy.RecordCount / 5) + 1
      else
        y := trunc(sp_zxjl_cq_dy.RecordCount / 5);
      count := sp_zxjl_cq_dy.RecordCount;
      for I := 1 to y do
      begin
        for j := 1 to 5 do
        begin
          if count < i * 5 then
          begin
            if j > (5 - (y * 5 - count)) then
            begin
              aControl := DetailBand1.FindChildControl('ksrq' + IntToStr(j -
                1));
              if aControl is TQRLabel then
                TQRLabel(aControl).Caption := '';
              aControl := DetailBand1.FindChildControl('kdysmc' + IntToStr(j -
                1));
              if aControl is TQRLabel then
                TQRLabel(aControl).Caption := '';
              DetailBand1.FindChildControl('qrgrimage' + IntToStr(j)).enabled :=
                false;
              //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
              TQRLabel(DetailBand1.FindChildControl('ypyf' + IntToStr(j -
                1))).Caption := '';
              //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
              TQRLabel(DetailBand1.FindChildControl('xmmc' + IntToStr(j -
                1))).caption := '';
            end
            else
            begin
              aControl := DetailBand1.FindChildControl('ksrq' + IntToStr(j -
                1));
              if aControl is TQRLabel then
                TQRLabel(aControl).Caption :=
                  sp_zxjl_cq_dy.FieldByName('ksrq').AsString;
              aControl := DetailBand1.FindChildControl('kdysmc' + IntToStr(j -
                1));
              if aControl is TQRLabel then
                TQRLabel(aControl).Caption :=
                  sp_zxjl_cq_dy.FieldByName('kdysmc').asstring;
              if sp_zxjl_cq_dy.FieldByName('fzph').asstring <> '' then
              begin
                DetailBand1.FindChildControl('QRgrImage' + IntToStr(j)).enabled
                  := true;
                DetailBand1.FindChildControl('QRgrImage' + IntToStr(j)).Top :=
                  TQRLabel(DetailBand1.FindChildControl('xmmc' + IntToStr(j -
                  1))).top;
                DetailBand1.FindChildControl('QRgrImage' + IntToStr(j)).left :=
                  DetailBand1.FindChildControl('ypyf' + IntToStr(j - 1)).left -
                  20;
                DetailBand1.FindChildControl('qrgrimage' + IntToStr(j)).height
                  := 30;
                TQRLabel(DetailBand1.FindChildControl('ypyf' + IntToStr(j -
                  1))).Caption :=
                  trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring)
                  + '  ' + trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
                TQRLabel(DetailBand1.FindChildControl('xmmc' + IntToStr(j -
                  1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring;
                //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
              end
              else
              begin
                DetailBand1.FindChildControl('qrgrimage' + IntToStr(j)).enabled
                  := false;
                DetailBand1.FindChildControl('xmmc' + IntToStr(j - 1)).Width :=
                  235;
                TQRLabel(DetailBand1.FindChildControl('ypyf' + IntToStr(j -
                  1))).Caption := '';
                TQRLabel(DetailBand1.FindChildControl('xmmc' + IntToStr(j -
                  1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring +
                  ' '
                  + trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring) + ' ' +
                  trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
                // TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
              end;
              sp_zxjl_cq_dy.Next;
            end;
          end
          else
          begin
            aControl := DetailBand1.FindChildControl('ksrq' + IntToStr(j - 1));
            if aControl is TQRLabel then
              TQRLabel(aControl).Caption :=
                sp_zxjl_cq_dy.FieldByName('ksrq').asstring;
            aControl := DetailBand1.FindChildControl('kdysmc' + IntToStr(j -
              1));
            if aControl is TQRLabel then
              TQRLabel(aControl).Caption :=
                sp_zxjl_cq_dy.FieldByName('kdysmc').asstring;
            if sp_zxjl_cq_dy.FieldByName('fzph').asstring <> '' then
            begin
              DetailBand1.FindChildControl('QRgrImage' + IntToStr(j)).enabled :=
                true;
              DetailBand1.FindChildControl('QRgrImage' + IntToStr(j)).Top :=
                TQRLabel(DetailBand1.FindChildControl('xmmc' + IntToStr(j -
                1))).top;
              DetailBand1.FindChildControl('qrgrimage' + IntToStr(j)).left :=
                DetailBand1.FindChildControl('ypyf' + IntToStr(j - 1)).left -
                20;
              DetailBand1.FindChildControl('qrgrimage' + IntToStr(j)).height :=
                30;
              TQRLabel(DetailBand1.FindChildControl('ypyf' + IntToStr(j -
                1))).Caption := trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring)
                +
                '  ' + trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
              TQRLabel(DetailBand1.FindChildControl('xmmc' + IntToStr(j -
                1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring;
              //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end
            else
            begin
              DetailBand1.FindChildControl('qrgrimage' + IntToStr(j)).enabled :=
                false;
              DetailBand1.FindChildControl('xmmc' + IntToStr(j - 1)).Width :=
                235;
              TQRLabel(DetailBand1.FindChildControl('ypyf' + IntToStr(j -
                1))).Caption := '';
              TQRLabel(DetailBand1.FindChildControl('xmmc' + IntToStr(j -
                1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring + ' '
                +
                trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring) + ' ' +
                trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
              //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end;
            sp_zxjl_cq_dy.Next;
          end;
        end;
        QRLabel2.Caption := pub_yymc + '������Һ�ƻ�ִ�е�';
        DM_data.qry_pub.Close;
        DM_data.qry_pub.SQL.text := 'select * from sys_kscwsz where bqdm=' + ''''
          + pub_bqdm + '''' + ' and bcbh=' + '''' +
          trim(sp_jbxx.fieldbyname('bch').asstring) + '''';
        try
          DM_data.qry_pub.Open;
        except
        end;

        QRLabel3.Caption := '����:' + sp_jbxx.fieldbyname('brxm').asstring;
        QRLabel20.Caption := '������:' +
          Trim(DM_data.qry_pub.FieldByName('yybch').asstring);
        QRLabel21.Caption := '�Ա�:' + sp_jbxx.fieldbyname('brxb').asstring;
        QRLabel26.Caption := '����:' +
          trim(sp_jbxx.fieldbyname('brnl').asstring);
        ny.Caption := FormatDateTime('yyyy', frm_func.curr_date) + '��';

        QRLabel61.Caption := '����:' + trim(sp_jbxx.fieldbyname('brxm').asstring) +
          '      ' +
          '������:' + Trim(DM_data.qry_pub.FieldByName('yybch').asstring) +
          '      ' +
          '����:' + Trim(sp_jbxx.fieldbyname('tmh').asstring);
        //'�Ա�:' + sp_jbxx.fieldbyname( 'brxb' ).asstring +'      '+
        //'����:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
//QuickRep3.Prepare;
        QRLabel57.Caption := '���ҽ��:';
        QRLabel72.Caption:='';
        QuickRep3.Preview;
      end;
    end
    else if zzdx = 'B5' then
    begin
      sp_zxjl_cq_dy.First;
      if sp_zxjl_cq_dy.RecordCount mod 9 <> 0 then
        y := trunc(sp_zxjl_cq_dy.RecordCount / 9) + 1
      else
        y := trunc(sp_zxjl_cq_dy.RecordCount / 9);
      count := sp_zxjl_cq_dy.RecordCount;
      for I := 1 to y do
      begin
        for j := 1 to 9 do
        begin
          if count < i * 9 then
          begin
            if j > (9 - (y * 9 - count)) then
            begin
              aControl := DetailBand2.FindChildControl('ksrqjy' + IntToStr(j -
                1));
              if aControl is TQRLabel then
                TQRLabel(aControl).Caption := '';
              aControl := DetailBand2.FindChildControl('kdysmcjy' + IntToStr(j -
                1));
              if aControl is TQRLabel then
                TQRLabel(aControl).Caption := '';
              DetailBand2.FindChildControl('qrgrimagejy' + IntToStr(j)).enabled
                := false;
              //  TQRLabel( DetailBand2.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
              TQRLabel(DetailBand2.FindChildControl('ypyfjy' + IntToStr(j -
                1))).Caption := '';
              //TQRLabel( DetailBand2.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
              TQRLabel(DetailBand2.FindChildControl('xmmcjy' + IntToStr(j -
                1))).caption := '';
            end
            else
            begin
              aControl := DetailBand2.FindChildControl('ksrqjy' + IntToStr(j -
                1));
              if aControl is TQRLabel then
                TQRLabel(aControl).Caption :=
                  sp_zxjl_cq_dy.FieldByName('ksrq').AsString;
              aControl := DetailBand2.FindChildControl('kdysmcjy' + IntToStr(j -
                1));
              if aControl is TQRLabel then
                TQRLabel(aControl).Caption :=
                  sp_zxjl_cq_dy.FieldByName('kdysmc').asstring;
              if sp_zxjl_cq_dy.FieldByName('fzph').asstring <> '' then
              begin
                DetailBand2.FindChildControl('QRgrImagejy' + IntToStr(j)).enabled
                  := true;
                DetailBand2.FindChildControl('QRgrImagejy' + IntToStr(j)).Top :=
                  TQRLabel(DetailBand2.FindChildControl('xmmcjy' + IntToStr(j -
                  1))).top;
                DetailBand2.FindChildControl('QRgrImagejy' + IntToStr(j)).left
                  := DetailBand2.FindChildControl('ypyfjy' + IntToStr(j -
                  1)).left
                  - 20;
                DetailBand2.FindChildControl('qrgrimagejy' + IntToStr(j)).height
                  := 30;
                TQRLabel(DetailBand2.FindChildControl('ypyfjy' + IntToStr(j -
                  1))).Caption :=
                  trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring)
                  + '  ' + trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
                TQRLabel(DetailBand2.FindChildControl('xmmcjy' + IntToStr(j -
                  1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring;
                //TQRLabel( DetailBand2.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
              end
              else
              begin
                DetailBand2.FindChildControl('qrgrimagejy' + IntToStr(j)).enabled
                  := false;
                DetailBand2.FindChildControl('xmmcjy' + IntToStr(j - 1)).Width
                  := 235;
                TQRLabel(DetailBand2.FindChildControl('ypyfjy' + IntToStr(j -
                  1))).Caption := '';
                TQRLabel(DetailBand2.FindChildControl('xmmcjy' + IntToStr(j -
                  1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring +
                  ' '
                  + trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring) + ' ' +
                  trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
                // TQRLabel( DetailBand2.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
              end;
              sp_zxjl_cq_dy.Next;
            end;
          end
          else
          begin
            aControl := DetailBand2.FindChildControl('ksrqjy' + IntToStr(j -
              1));
            if aControl is TQRLabel then
              TQRLabel(aControl).Caption :=
                sp_zxjl_cq_dy.FieldByName('ksrq').asstring;
            aControl := DetailBand2.FindChildControl('kdysmcjy' + IntToStr(j -
              1));
            if aControl is TQRLabel then
              TQRLabel(aControl).Caption :=
                sp_zxjl_cq_dy.FieldByName('kdysmc').asstring;
            if sp_zxjl_cq_dy.FieldByName('fzph').asstring <> '' then
            begin
              DetailBand2.FindChildControl('QRgrImagejy' + IntToStr(j)).enabled
                := true;
              DetailBand2.FindChildControl('QRgrImagejy' + IntToStr(j)).Top :=
                TQRLabel(DetailBand2.FindChildControl('xmmcjy' + IntToStr(j -
                1))).top;
              DetailBand2.FindChildControl('qrgrimagejy' + IntToStr(j)).left :=
                DetailBand2.FindChildControl('ypyfjy' + IntToStr(j - 1)).left -
                20;
              DetailBand2.FindChildControl('qrgrimagejy' + IntToStr(j)).height
                := 30;
              TQRLabel(DetailBand2.FindChildControl('ypyfjy' + IntToStr(j -
                1))).Caption := trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring)
                +
                '  ' + trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
              TQRLabel(DetailBand2.FindChildControl('xmmcjy' + IntToStr(j -
                1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring;
              //  TQRLabel( DetailBand2.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end
            else
            begin
              DetailBand2.FindChildControl('qrgrimagejy' + IntToStr(j)).enabled
                := false;
              DetailBand2.FindChildControl('xmmcjy' + IntToStr(j - 1)).Width :=
                235;
              TQRLabel(DetailBand2.FindChildControl('ypyfjy' + IntToStr(j -
                1))).Caption := '';
              TQRLabel(DetailBand2.FindChildControl('xmmcjy' + IntToStr(j -
                1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring + ' '
                +
                trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring) + ' ' +
                trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
              //  TQRLabel( DetailBand2.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end;
            sp_zxjl_cq_dy.Next;
          end;
        end;
        QRLabel2jy.Caption := pub_yymc + '������Һ�ƻ�ִ�е�';
        DM_data.qry_pub.Close;
        DM_data.qry_pub.SQL.text := 'select * from sys_kscwsz where bqdm=' + ''''
          + pub_bqdm + '''' + ' and bcbh=' + '''' +
          trim(sp_jbxx.fieldbyname('bch').asstring) + '''';
        try
          DM_data.qry_pub.Open;
        except
        end;

        QRLabel3jy.Caption := '����:' + sp_jbxx.fieldbyname('brxm').asstring;
        QRLabel20jy.Caption := '������:' +
          Trim(DM_data.qry_pub.FieldByName('yybch').asstring);
        QRLabel21jy.Caption := '�Ա�:' + sp_jbxx.fieldbyname('brxb').asstring;
        QRLabel26jy.Caption := '����:' +
          trim(sp_jbxx.fieldbyname('brnl').asstring);
        nyjy.Caption := FormatDateTime('yyyy', frm_func.curr_date) + '��';

        QRLabel61jy.Caption := '����:' + sp_jbxx.fieldbyname('brxm').asstring +
          '      ' +
          '������:' + Trim(DM_data.qry_pub.FieldByName('yybch').asstring) +
          '      ' +
          '����:' + Trim(sp_jbxx.fieldbyname('tmh').asstring);
        //'�Ա�:' + sp_jbxx.fieldbyname( 'brxb' ).asstring +'      '+
        //'����:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
//QuickRep3.Prepare;
//QRLabel57.Caption := '���ҽ��:';
        QuickRep6.Preview;
      end;
    end  else
    if zzdx = 'A3' then   //------------------------------------�����������޸�A3 ---------------
    begin
      sp_zxjl_cq_dy.First;
      if sp_zxjl_cq_dy.RecordCount mod 8 <> 0 then
        y := trunc(sp_zxjl_cq_dy.RecordCount / 8) + 1
      else
        y := trunc(sp_zxjl_cq_dy.RecordCount / 8);
      count := sp_zxjl_cq_dy.RecordCount;
      for I := 1 to y do
      begin
        for j := 1 to 8 do
        begin
          if count < i * 8 then
          begin
            if j > (8 - (y * 8 - count)) then
            begin
              aControl := qrbndcqjy.FindChildControl('jycqsyksrq' + IntToStr(j -
                1));
              if aControl is TQRLabel then
                TQRLabel(aControl).Caption := '';
              aControl := qrbndcqjy.FindChildControl('jycqsykdys' + IntToStr(j -
                1));
              if aControl is TQRLabel then
                TQRLabel(aControl).Caption := '';
              qrbndcqjy.FindChildControl('QRImagejy' + IntToStr(j)).enabled :=
                false;
              //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
              TQRLabel(qrbndcqjy.FindChildControl('jycqsyypyf' + IntToStr(j -
                1))).Caption := '';
              //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
              TQRLabel(qrbndcqjy.FindChildControl('jycqsyxmmc' + IntToStr(j -
                1))).caption := '';
            end
            else
            begin
              aControl := qrbndcqjy.FindChildControl('jycqsyksrq' + IntToStr(j -
                1));
              if aControl is TQRLabel then
                TQRLabel(aControl).Caption :=
                  sp_zxjl_cq_dy.FieldByName('ksrq').AsString;
              aControl := qrbndcqjy.FindChildControl('jycqsykdys' + IntToStr(j -
                1));
              if aControl is TQRLabel then
                TQRLabel(aControl).Caption :=
                  sp_zxjl_cq_dy.FieldByName('kdysmc').asstring;
              if sp_zxjl_cq_dy.FieldByName('fzph').asstring <> '' then
              begin
                qrbndcqjy.FindChildControl('QRImagejy' + IntToStr(j)).enabled :=
                  true;
                qrbndcqjy.FindChildControl('QRImagejy' + IntToStr(j)).Top :=
                  TQRLabel(qrbndcqjy.FindChildControl('jycqsyxmmc' + IntToStr(j -
                  1))).top;
                qrbndcqjy.FindChildControl('QRImagejy' + IntToStr(j)).left :=
                  qrbndcqjy.FindChildControl('jycqsyypyf' + IntToStr(j - 1)).left
                  -
                  20;
                qrbndcqjy.FindChildControl('QRImagejy' + IntToStr(j)).height :=
                  30;
                TQRLabel(qrbndcqjy.FindChildControl('jycqsyypyf' + IntToStr(j -
                  1))).Caption :=
                  trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring)
                  + '  ' + trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
                TQRLabel(qrbndcqjy.FindChildControl('jycqsyxmmc' + IntToStr(j -
                  1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring;
                //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
              end
              else
              begin
                qrbndcqjy.FindChildControl('QRImagejy' + IntToStr(j)).enabled :=
                  false;
                //qrbndcqsy.FindChildControl( 'cqsyxmmc' + IntToStr( j - 1 ) ).Width := 235;
                TQRLabel(qrbndcqjy.FindChildControl('jycqsyypyf' + IntToStr(j -
                  1))).Caption := '';
                TQRLabel(qrbndcqjy.FindChildControl('jycqsyxmmc' + IntToStr(j -
                  1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring +
                  ' '
                  + trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring) + ' ' +
                  trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
                // TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
              end;
              sp_zxjl_cq_dy.Next;
            end;
          end
          else
          begin
            aControl := qrbndcqjy.FindChildControl('jycqsyksrq' + IntToStr(j -
              1));
            if aControl is TQRLabel then
              TQRLabel(aControl).Caption :=
                sp_zxjl_cq_dy.FieldByName('ksrq').asstring;
            aControl := qrbndcqjy.FindChildControl('jycqsykdys' + IntToStr(j -
              1));
            if aControl is TQRLabel then
              TQRLabel(aControl).Caption :=
                sp_zxjl_cq_dy.FieldByName('kdysmc').asstring;
            if sp_zxjl_cq_dy.FieldByName('fzph').asstring <> '' then
            begin
              qrbndcqjy.FindChildControl('QRImagejy' + IntToStr(j)).enabled :=
                true;
              qrbndcqjy.FindChildControl('QRImagejy' + IntToStr(j)).Top :=
                TQRLabel(qrbndcqjy.FindChildControl('jycqsyxmmc' + IntToStr(j -
                1))).top;
              qrbndcqjy.FindChildControl('QRImagejy' + IntToStr(j)).left :=
                qrbndcqjy.FindChildControl('jycqsyypyf' + IntToStr(j - 1)).left -
                20;
              qrbndcqjy.FindChildControl('QRImagejy' + IntToStr(j)).height :=
                30;
              TQRLabel(qrbndcqjy.FindChildControl('jycqsyypyf' + IntToStr(j -
                1))).Caption := trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring)
                +
                '  ' + trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
              TQRLabel(qrbndcqjy.FindChildControl('jycqsyxmmc' + IntToStr(j -
                1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring;
              //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end
            else
            begin
              qrbndcqjy.FindChildControl('QRImagejy' + IntToStr(j)).enabled :=
                false;
              //qrbndcqsy.FindChildControl( 'cqsyxmmc' + IntToStr( j - 1 ) ).Width := 235;
              TQRLabel(qrbndcqjy.FindChildControl('jycqsyypyf' + IntToStr(j -
                1))).Caption := '';
              TQRLabel(qrbndcqjy.FindChildControl('jycqsyxmmc' + IntToStr(j -
                1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring + ' '
                +
                trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring) + ' ' +
                trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
              //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end;
            sp_zxjl_cq_dy.Next;
          end;
        end;
        jycqsymc.Caption := pub_yymc + '������Һ�ƻ�ִ�е�';
        DM_data.qry_pub.Close;
        DM_data.qry_pub.SQL.text := 'select * from sys_kscwsz where bqdm=' + ''''
          + pub_bqdm + '''' + ' and bcbh=' + '''' +
          trim(sp_jbxx.fieldbyname('bch').asstring) + '''';
        try
          DM_data.qry_pub.open;
        except

        end;

        jycqsyxm.Caption := '����:' + sp_jbxx.fieldbyname('brxm').asstring;
        jycqsybch.Caption := '������:' +
          Trim(DM_data.qry_pub.FieldByName('yybch').asstring);
        jycqsyxb.Caption := '�Ա�:' + sp_jbxx.fieldbyname('brxb').asstring;
        jycqsynl.Caption := '����:' + trim(sp_jbxx.fieldbyname('brnl').asstring);
        jycqsyn.Caption := FormatDateTime('yyyy', frm_func.curr_date) + '��';

        jycqsyxmxm.Caption := '����:' + sp_jbxx.fieldbyname('brxm').asstring;
        jycqsybchbch.Caption := '������:' +
          Trim(DM_data.qry_pub.FieldByName('yybch').asstring);
        jycqsykh.Caption := '����:' + Trim(sp_jbxx.fieldbyname('tmh').asstring);
        //QRLabel62jy.Caption := '����:' + sp_jbxx.fieldbyname( 'brxm' ).asstring + '      ' +
        //  '������:' + Trim( DM_data.qry_pub.FieldByName( 'yybch' ).asstring ) + '      '+
        //  '����:' + Trim( sp_jbxx.fieldbyname( 'tmh' ).asstring  );
        //'�Ա�:' + sp_jbxx.fieldbyname( 'brxb' ).asstring +'      '+
        //'����:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
         //QuickRep3.Prepare;
        //QRLabel71.Caption := '���ҽ��:';
        qckrpcqjy.Preview;
      end;
    end else //----------------------------------------- A5-----------------
    begin
      sp_zxjl_cq_dy.First;
      if sp_zxjl_cq_dy.RecordCount mod 8 <> 0 then
        y := trunc(sp_zxjl_cq_dy.RecordCount / 8) + 1
      else
        y := trunc(sp_zxjl_cq_dy.RecordCount / 8);
      count := sp_zxjl_cq_dy.RecordCount;
      for I := 1 to y do
      begin
        for j := 1 to 8 do
        begin
          if count < i * 8 then
          begin
            if j > (8 - (y * 8 - count)) then
            begin
              aControl := qrbndcqsy.FindChildControl('cqsyksrq' + IntToStr(j -
                1));
              if aControl is TQRLabel then
                TQRLabel(aControl).Caption := '';
              aControl := qrbndcqsy.FindChildControl('cqsykdys' + IntToStr(j -
                1));
              if aControl is TQRLabel then
                TQRLabel(aControl).Caption := '';
              qrbndcqsy.FindChildControl('QRImagesy' + IntToStr(j)).enabled :=
                false;
              //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
              TQRLabel(qrbndcqsy.FindChildControl('cqsyypyf' + IntToStr(j -
                1))).Caption := '';
              //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
              TQRLabel(qrbndcqsy.FindChildControl('cqsyxmmc' + IntToStr(j -
                1))).caption := '';
            end
            else
            begin
              aControl := qrbndcqsy.FindChildControl('cqsyksrq' + IntToStr(j -
                1));
              if aControl is TQRLabel then
                TQRLabel(aControl).Caption :=
                  sp_zxjl_cq_dy.FieldByName('ksrq').AsString;
              aControl := qrbndcqsy.FindChildControl('cqsykdys' + IntToStr(j -
                1));
              if aControl is TQRLabel then
                TQRLabel(aControl).Caption :=
                  sp_zxjl_cq_dy.FieldByName('kdysmc').asstring;
              if sp_zxjl_cq_dy.FieldByName('fzph').asstring <> '' then
              begin
                qrbndcqsy.FindChildControl('QRImagesy' + IntToStr(j)).enabled :=
                  true;
                qrbndcqsy.FindChildControl('QRImagesy' + IntToStr(j)).Top :=
                  TQRLabel(qrbndcqsy.FindChildControl('cqsyxmmc' + IntToStr(j -
                  1))).top;
                qrbndcqsy.FindChildControl('QRImagesy' + IntToStr(j)).left :=
                  qrbndcqsy.FindChildControl('cqsyypyf' + IntToStr(j - 1)).left
                  -
                  20;
                qrbndcqsy.FindChildControl('QRImagesy' + IntToStr(j)).height :=
                  30;
                TQRLabel(qrbndcqsy.FindChildControl('cqsyypyf' + IntToStr(j -
                  1))).Caption :=
                  trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring)
                  + '  ' + trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
                TQRLabel(qrbndcqsy.FindChildControl('cqsyxmmc' + IntToStr(j -
                  1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring;
                //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
              end
              else
              begin
                qrbndcqsy.FindChildControl('QRImagesy' + IntToStr(j)).enabled :=
                  false;
                //qrbndcqsy.FindChildControl( 'cqsyxmmc' + IntToStr( j - 1 ) ).Width := 235;
                TQRLabel(qrbndcqsy.FindChildControl('cqsyypyf' + IntToStr(j -
                  1))).Caption := '';
                TQRLabel(qrbndcqsy.FindChildControl('cqsyxmmc' + IntToStr(j -
                  1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring +
                  ' '
                  + trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring) + ' ' +
                  trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
                // TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
              end;
              sp_zxjl_cq_dy.Next;
            end;
          end
          else
          begin
            aControl := qrbndcqsy.FindChildControl('cqsyksrq' + IntToStr(j -
              1));
            if aControl is TQRLabel then
              TQRLabel(aControl).Caption :=
                sp_zxjl_cq_dy.FieldByName('ksrq').asstring;
            aControl := qrbndcqsy.FindChildControl('cqsykdys' + IntToStr(j -
              1));
            if aControl is TQRLabel then
              TQRLabel(aControl).Caption :=
                sp_zxjl_cq_dy.FieldByName('kdysmc').asstring;
            if sp_zxjl_cq_dy.FieldByName('fzph').asstring <> '' then
            begin
              qrbndcqsy.FindChildControl('QRImagesy' + IntToStr(j)).enabled :=
                true;
              qrbndcqsy.FindChildControl('QRImagesy' + IntToStr(j)).Top :=
                TQRLabel(qrbndcqsy.FindChildControl('cqsyxmmc' + IntToStr(j -
                1))).top;
              qrbndcqsy.FindChildControl('QRImagesy' + IntToStr(j)).left :=
                qrbndcqsy.FindChildControl('cqsyypyf' + IntToStr(j - 1)).left -
                20;
              qrbndcqsy.FindChildControl('QRImagesy' + IntToStr(j)).height :=
                30;
              TQRLabel(qrbndcqsy.FindChildControl('cqsyypyf' + IntToStr(j -
                1))).Caption := trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring)
                +
                '  ' + trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
              TQRLabel(qrbndcqsy.FindChildControl('cqsyxmmc' + IntToStr(j -
                1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring;
              //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end
            else
            begin
              qrbndcqsy.FindChildControl('QRImagesy' + IntToStr(j)).enabled :=
                false;
              //qrbndcqsy.FindChildControl( 'cqsyxmmc' + IntToStr( j - 1 ) ).Width := 235;
              TQRLabel(qrbndcqsy.FindChildControl('cqsyypyf' + IntToStr(j -
                1))).Caption := '';
              TQRLabel(qrbndcqsy.FindChildControl('cqsyxmmc' + IntToStr(j -
                1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring + ' '
                +
                trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring) + ' ' +
                trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
              //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end;
            sp_zxjl_cq_dy.Next;
          end;
        end;
        cqsymc.Caption := pub_yymc + '������Һ�ƻ�ִ�е�';
        DM_data.qry_pub.Close;
        DM_data.qry_pub.SQL.text := 'select * from sys_kscwsz where bqdm=' + ''''
          + pub_bqdm + '''' + ' and bcbh=' + '''' +
          trim(sp_jbxx.fieldbyname('bch').asstring) + '''';
        try
          DM_data.qry_pub.Open;
        except
        end;

        cqsyxm.Caption := '����:' + sp_jbxx.fieldbyname('brxm').asstring;
        cqsybch.Caption := '������:' +
          Trim(DM_data.qry_pub.FieldByName('yybch').asstring);
        cqsyxb.Caption := '�Ա�:' + sp_jbxx.fieldbyname('brxb').asstring;
        cqsynl.Caption := '����:' + trim(sp_jbxx.fieldbyname('brnl').asstring);
        cqsyn.Caption := FormatDateTime('yyyy', frm_func.curr_date) + '��';

        cqsyxmxm.Caption := '����:' + sp_jbxx.fieldbyname('brxm').asstring;
        cqsybchbch.Caption := '������:' +
          Trim(DM_data.qry_pub.FieldByName('yybch').asstring);
        cqsykh.Caption := '����:' + Trim(sp_jbxx.fieldbyname('tmh').asstring);

        //QRLabel62jy.Caption := '����:' + sp_jbxx.fieldbyname( 'brxm' ).asstring + '      ' +
        //  '������:' + Trim( DM_data.qry_pub.FieldByName( 'yybch' ).asstring ) + '      '+
        //  '����:' + Trim( sp_jbxx.fieldbyname( 'tmh' ).asstring  );
        //'�Ա�:' + sp_jbxx.fieldbyname( 'brxb' ).asstring +'      '+
        //'����:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
//QuickRep3.Prepare;
        //QRLabel71.Caption := '���ҽ��:';
        qckrpcqsy.Preview;
      end;
    end;
  end;

end;

procedure Tfrm_yzinput.N22Click(Sender: TObject);
var
  i, y, j, count, x: Integer;
  aControl: TControl;
  v_yytj, v_lb, filter: string;
begin
  Application.OnMessage := nil;
  with sp_zxjl_cq_dy do
  begin
    Filtered := False;
    Close;
    Parameters.ParamByName('@zyh').Value :=
      Trim(sp_jbxx.fieldbyname('zyh').asstring);
    Parameters.ParamByName('@fs').Value := 1;
    Open;
  end;
  DM_data.qry_pub.close;
  DM_data.qry_pub.sql.text :=
    'select yytj from zybl_zyyz_dytjsz where dyxm=''��Һ�ƻ���''';
  try
    DM_data.qry_pub.Open;
  except
  end;
  if DM_data.qry_pub.IsEmpty then
  begin
    v_yytj := '';
  end
  else
  begin
    DM_data.qry_pub.First;
    while not DM_data.qry_pub.eof do
    begin
      v_yytj := v_yytj + '(bqdm=''' + pub_bqdm + ''' and yytj=' + '''' +
        DM_data.qry_pub.FieldByName('yytj').asstring + '''' +
        ' and  tzrq=null  and kdrq>=' + '''' + formatdatetime('yy-MM-dd',
        frm_func.curr_date) + ' 00:00' + ''')' + ' or ';
      DM_data.qry_pub.Next;
    end;

  end;

  DM_data.qry_pub.close;
  DM_data.qry_pub.sql.text :=
    'select lbmc from zybl_zyyz_dylbsz where dyxm=''��Һ�ƻ���''';
  try
    DM_data.qry_pub.Open;
  except
  end;
  if DM_data.qry_pub.IsEmpty then
  begin
    v_lb := '';
  end
  else
  begin
    DM_data.qry_pub.First;
    while not DM_data.qry_pub.eof do
    begin
      v_lb := v_lb + '(bqdm=''' + pub_bqdm + ''' and lb=' + '''' +
        DM_data.qry_pub.FieldByName('lbmc').asstring
        + '''' + ' and  tzrq=null and kdrq>=' + '''' +
        formatdatetime('yy-MM-dd',
        frm_func.curr_date) + ' 00:00' + ''')' + ' or ';
      DM_data.qry_pub.Next;
    end;

  end;

  if v_yytj + v_lb = '' then
  begin
    filter := ' 1<>1 ';
  end
  else
  begin
    filter := v_yytj + v_lb + ' (bqdm=''' + pub_bqdm +
      ''' and xmmc like ''%Ƥ��%'''
      + ' and kdrq>=' + ''''
      + formatdatetime('yy-MM-dd', frm_func.curr_date) + ' 00:00'')' + ' or ' +
      ' (bqdm=''' + pub_bqdm + ''' and xmmc like ''%����%''' + ' and kdrq>=' +
      ''''
      + formatdatetime('yy-MM-dd', frm_func.curr_date) + ' 00:00'')' +
      ' or ' + ' (bqdm=''' + pub_bqdm
      + ''' and xmmc like ''%��%'' and  xmmc like ''%Ѫ%'' and  kdrq>=' + ''''
      + formatdatetime('yy-MM-dd', frm_func.curr_date) + ' 00:00' + ''')';
    ;
  end;

  sp_zxjl_cq_dy.Filter := filter;

  sp_zxjl_cq_dy.Filtered := True;
  try
    application.createform(Tfrm_xz_jhddy, frm_xz_jhddy);
    frm_xz_jhddy.showmodal;
  finally
    frm_xz_jhddy.free;
  end;
  v_yytj := '';
  v_lb := '';
  filter := '';

  DM_data.qry_pub.close;
  DM_data.qry_pub.sql.text :=
    'select yytj from zybl_zyyz_dytjsz where dyxm=''��Һ�ƻ���''';
  try
    DM_data.qry_pub.Open;
  except
  end;
  if DM_data.qry_pub.IsEmpty then
  begin
    v_yytj := '';
  end
  else
  begin
    DM_data.qry_pub.First;
    while not DM_data.qry_pub.eof do
    begin
      v_yytj := v_yytj + '(bqdm=''' + pub_bqdm + ''' and yytj=' + '''' +
        DM_data.qry_pub.FieldByName('yytj').asstring + '''' +
        ' and  tzrq=null and xzbz=1 and kdrq>=' + '''' +
        formatdatetime('yy-MM-dd', frm_func.curr_date) + ' 00:00' + ''')' +
        ' or ';
      DM_data.qry_pub.Next;
    end;

  end;

  DM_data.qry_pub.close;
  DM_data.qry_pub.sql.text :=
    'select lbmc from zybl_zyyz_dylbsz where dyxm=''��Һ�ƻ���''';
  try
    DM_data.qry_pub.Open;
  except
  end;
  if DM_data.qry_pub.IsEmpty then
  begin
    v_lb := '';
  end
  else
  begin
    DM_data.qry_pub.First;
    while not DM_data.qry_pub.eof do
    begin
      v_lb := v_lb + '(bqdm=''' + pub_bqdm + ''' and lb=' + '''' +
        DM_data.qry_pub.FieldByName('lbmc').asstring
        + '''' + ' and  xzbz=1 and tzrq=null and  kdrq>=' + '''' +
        formatdatetime('yy-MM-dd', frm_func.curr_date) + ' 00:00' + ''')' +
        ' or ';
      DM_data.qry_pub.Next;
    end;

  end;

  if v_yytj + v_lb = '' then
  begin
    filter := ' 1<>1 ';
  end
  else
  begin
    filter := v_yytj + v_lb + ' (bqdm=''' + pub_bqdm +
      ''' and xmmc like ''%Ƥ��%'' and xzbz=1 ' +
      ' and kdrq>=' + ''''
      + formatdatetime('yy-MM-dd', frm_func.curr_date) + ' 00:00'')' + ' or ' +
      ' ( xmmc like ''%����%'' and xzbz=1 ' + ' and kdrq>=' + ''''
      + formatdatetime('yy-MM-dd', frm_func.curr_date) + ' 00:00'')';
  end;

  sp_zxjl_cq_dy.Filter := filter;

  sp_zxjl_cq_dy.Filtered := True;

  if sp_zxjl_cq_dy.IsEmpty then
  begin
    Application.MessageBox('û�м�¼��', '��ʾ', 0 + 48);
    Exit;
  end;
  if not sp_zxjl_cq_dy.IsEmpty then
  begin
    //if (zzdx='A4') or (zzdx='B5') then
    // begin
    if zzdx = 'A3' then   //------------------------------------�����������޸�A3 ---------------
    begin
      sp_zxjl_cq_dy.First;
      if sp_zxjl_cq_dy.RecordCount mod 8 <> 0 then
        y := trunc(sp_zxjl_cq_dy.RecordCount / 8) + 1
      else
        y := trunc(sp_zxjl_cq_dy.RecordCount / 8);
      count := sp_zxjl_cq_dy.RecordCount;
      for I := 1 to y do
      begin
        for j := 1 to 8 do
        begin
          if count < i * 8 then
          begin
            if j > (8 - (y * 8 - count)) then
            begin
              aControl := qrbndcqjy.FindChildControl('jycqsyksrq' + IntToStr(j -
                1));
              if aControl is TQRLabel then
                TQRLabel(aControl).Caption := '';
              aControl := qrbndcqjy.FindChildControl('jycqsykdys' + IntToStr(j -
                1));
              if aControl is TQRLabel then
                TQRLabel(aControl).Caption := '';
              qrbndcqjy.FindChildControl('QRImagejy' + IntToStr(j)).enabled :=
                false;
              //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
              TQRLabel(qrbndcqjy.FindChildControl('jycqsyypyf' + IntToStr(j -
                1))).Caption := '';
              //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
              TQRLabel(qrbndcqjy.FindChildControl('jycqsyxmmc' + IntToStr(j -
                1))).caption := '';
            end
            else
            begin
              aControl := qrbndcqjy.FindChildControl('jycqsyksrq' + IntToStr(j -
                1));
              if aControl is TQRLabel then
                TQRLabel(aControl).Caption :=
                  sp_zxjl_cq_dy.FieldByName('ksrq').AsString;
              aControl := qrbndcqjy.FindChildControl('jycqsykdys' + IntToStr(j -
                1));
              if aControl is TQRLabel then
                TQRLabel(aControl).Caption :=
                  sp_zxjl_cq_dy.FieldByName('kdysmc').asstring;
              if sp_zxjl_cq_dy.FieldByName('fzph').asstring <> '' then
              begin
                qrbndcqjy.FindChildControl('QRImagejy' + IntToStr(j)).enabled :=
                  true;
                qrbndcqjy.FindChildControl('QRImagejy' + IntToStr(j)).Top :=
                  TQRLabel(qrbndcqjy.FindChildControl('jycqsyxmmc' + IntToStr(j -
                  1))).top;
                qrbndcqjy.FindChildControl('QRImagejy' + IntToStr(j)).left :=
                  qrbndcqjy.FindChildControl('jycqsyypyf' + IntToStr(j - 1)).left
                  -
                  20;
                qrbndcqjy.FindChildControl('QRImagejy' + IntToStr(j)).height :=
                  30;
                TQRLabel(qrbndcqjy.FindChildControl('jycqsyypyf' + IntToStr(j -
                  1))).Caption :=
                  trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring)
                  + '  ' + trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
                TQRLabel(qrbndcqjy.FindChildControl('jycqsyxmmc' + IntToStr(j -
                  1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring;
                //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
              end
              else
              begin
                qrbndcqjy.FindChildControl('QRImagejy' + IntToStr(j)).enabled :=
                  false;
                //qrbndcqsy.FindChildControl( 'cqsyxmmc' + IntToStr( j - 1 ) ).Width := 235;
                TQRLabel(qrbndcqjy.FindChildControl('jycqsyypyf' + IntToStr(j -
                  1))).Caption := '';
                TQRLabel(qrbndcqjy.FindChildControl('jycqsyxmmc' + IntToStr(j -
                  1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring +
                  ' '
                  + trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring) + ' ' +
                  trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
                // TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
              end;
              sp_zxjl_cq_dy.Next;
            end;
          end
          else
          begin
            aControl := qrbndcqjy.FindChildControl('jycqsyksrq' + IntToStr(j -
              1));
            if aControl is TQRLabel then
              TQRLabel(aControl).Caption :=
                sp_zxjl_cq_dy.FieldByName('ksrq').asstring;
            aControl := qrbndcqjy.FindChildControl('jycqsykdys' + IntToStr(j -
              1));
            if aControl is TQRLabel then
              TQRLabel(aControl).Caption :=
                sp_zxjl_cq_dy.FieldByName('kdysmc').asstring;
            if sp_zxjl_cq_dy.FieldByName('fzph').asstring <> '' then
            begin
              qrbndcqjy.FindChildControl('QRImagejy' + IntToStr(j)).enabled :=
                true;
              qrbndcqjy.FindChildControl('QRImagejy' + IntToStr(j)).Top :=
                TQRLabel(qrbndcqjy.FindChildControl('jycqsyxmmc' + IntToStr(j -
                1))).top;
              qrbndcqjy.FindChildControl('QRImagejy' + IntToStr(j)).left :=
                qrbndcqjy.FindChildControl('jycqsyypyf' + IntToStr(j - 1)).left -
                20;
              qrbndcqjy.FindChildControl('QRImagejy' + IntToStr(j)).height :=
                30;
              TQRLabel(qrbndcqjy.FindChildControl('jycqsyypyf' + IntToStr(j -
                1))).Caption := trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring)
                +
                '  ' + trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
              TQRLabel(qrbndcqjy.FindChildControl('jycqsyxmmc' + IntToStr(j -
                1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring;
              //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end
            else
            begin
              qrbndcqjy.FindChildControl('QRImagejy' + IntToStr(j)).enabled :=
                false;
              //qrbndcqsy.FindChildControl( 'cqsyxmmc' + IntToStr( j - 1 ) ).Width := 235;
              TQRLabel(qrbndcqjy.FindChildControl('jycqsyypyf' + IntToStr(j -
                1))).Caption := '';
              TQRLabel(qrbndcqjy.FindChildControl('jycqsyxmmc' + IntToStr(j -
                1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring + ' '
                +
                trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring) + ' ' +
                trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
              //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end;
            sp_zxjl_cq_dy.Next;
          end;
        end;
        jycqsymc.Caption := pub_yymc + '��ʱ��Һ�ƻ�ִ�е�';
        DM_data.qry_pub.Close;
        DM_data.qry_pub.SQL.text := 'select * from sys_kscwsz where bqdm=' + ''''
          + pub_bqdm + '''' + ' and bcbh=' + '''' +
          trim(sp_jbxx.fieldbyname('bch').asstring) + '''';
        try
          DM_data.qry_pub.open;
        except

        end;

        jycqsyxm.Caption := '����:' + sp_jbxx.fieldbyname('brxm').asstring;
        jycqsybch.Caption := '������:' +
          Trim(DM_data.qry_pub.FieldByName('yybch').asstring);
        jycqsyxb.Caption := '�Ա�:' + sp_jbxx.fieldbyname('brxb').asstring;
        jycqsynl.Caption := '����:' + trim(sp_jbxx.fieldbyname('brnl').asstring);
        jycqsyn.Caption := FormatDateTime('yyyy', frm_func.curr_date) + '��';

        jycqsyxmxm.Caption := '����:' + sp_jbxx.fieldbyname('brxm').asstring;
        jycqsybchbch.Caption := '������:' +
          Trim(DM_data.qry_pub.FieldByName('yybch').asstring);
        jycqsykh.Caption := '����:' + Trim(sp_jbxx.fieldbyname('tmh').asstring);
        //QRLabel62jy.Caption := '����:' + sp_jbxx.fieldbyname( 'brxm' ).asstring + '      ' +
        //  '������:' + Trim( DM_data.qry_pub.FieldByName( 'yybch' ).asstring ) + '      '+
        //  '����:' + Trim( sp_jbxx.fieldbyname( 'tmh' ).asstring  );
        //'�Ա�:' + sp_jbxx.fieldbyname( 'brxb' ).asstring +'      '+
        //'����:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
         //QuickRep3.Prepare;
        //QRLabel71.Caption := '���ҽ��:';
        qckrpcqjy.Preview;
      end;
    end else //----------------------------------------- A5-----------------
    begin
      sp_zxjl_cq_dy.First;
      if sp_zxjl_cq_dy.RecordCount mod 9 <> 0 then
        y := trunc(sp_zxjl_cq_dy.RecordCount / 9) + 1
      else
        y := trunc(sp_zxjl_cq_dy.RecordCount / 9);
      count := sp_zxjl_cq_dy.RecordCount;
      for I := 1 to y do
      begin
        for j := 1 to 9 do
        begin
          if count < i * 9 then
          begin
            if j > (9 - (y * 9 - count)) then
            begin
              aControl := QRBand10.FindChildControl('ksrqls' + IntToStr(j - 1));
              if aControl is TQRLabel then
                TQRLabel(aControl).Caption := '';
              aControl := QRBand10.FindChildControl('kdysmcls' + IntToStr(j - 1));
              if aControl is TQRLabel then
                TQRLabel(aControl).Caption := '';
              QRBand10.FindChildControl('QRImagels_' + IntToStr(j)).enabled :=
                false;
              //TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).Width := 0;
              TQRLabel(QRBand10.FindChildControl('ypyfls_' + IntToStr(j -
                1))).Caption := '';
              TQRLabel(QRBand10.FindChildControl('xmmcls_' + IntToStr(j -
                1))).caption := '';
            end
            else
            begin
              aControl := QRBand10.FindChildControl('ksrqls' + IntToStr(j - 1));
              if aControl is TQRLabel then
                TQRLabel(aControl).Caption :=
                  sp_zxjl_cq_dy.FieldByName('ksrq').AsString;
              aControl := QRBand10.FindChildControl('kdysmcls' + IntToStr(j - 1));
              if aControl is TQRLabel then
                TQRLabel(aControl).Caption :=
                  sp_zxjl_cq_dy.FieldByName('kdysmc').asstring;
              if sp_zxjl_cq_dy.FieldByName('fzph').asstring <> '' then
              begin
                QRBand10.FindChildControl('QRImagels_' + IntToStr(j)).enabled :=
                  true;
                QRBand10.FindChildControl('QRImagels_' + IntToStr(j)).Top :=
                  TQRLabel(QRBand10.FindChildControl('xmmcls_' + IntToStr(j -
                  1))).top;
                QRBand10.FindChildControl('QRImagels_' + IntToStr(j)).left :=
                  QRBand10.FindChildControl('ypyfls_' + IntToStr(j - 1)).left -
                  20;
                QRBand10.FindChildControl('QRImagels_' + IntToStr(j)).height :=
                  30;
                TQRLabel(QRBand10.FindChildControl('ypyfls_' + IntToStr(j -
                  1))).Caption := trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring)
                  +
                  '  ' + trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
                TQRLabel(QRBand10.FindChildControl('xmmcls_' + IntToStr(j -
                  1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring;
              end
              else
              begin
                QRBand10.FindChildControl('QRImagels_' + IntToStr(j)).enabled :=
                  false;
                QRBand10.FindChildControl('xmmcls_' + IntToStr(j - 1)).Width :=
                  235;
                TQRLabel(QRBand10.FindChildControl('ypyfls_' + IntToStr(j -
                  1))).Caption := '';
                TQRLabel(QRBand10.FindChildControl('xmmcls_' + IntToStr(j -
                  1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring + ' '
                  +
                  trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring) + ' ' +
                  trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
              end;
              sp_zxjl_cq_dy.Next;
            end;
          end
          else
          begin
            aControl := QRBand10.FindChildControl('ksrqls' + IntToStr(j - 1));
            if aControl is TQRLabel then
              TQRLabel(aControl).Caption :=
                sp_zxjl_cq_dy.FieldByName('ksrq').asstring;
            aControl := QRBand10.FindChildControl('kdysmcls' + IntToStr(j - 1));
            if aControl is TQRLabel then
              TQRLabel(aControl).Caption :=
                sp_zxjl_cq_dy.FieldByName('kdysmc').asstring;
            if sp_zxjl_cq_dy.FieldByName('fzph').asstring <> '' then
            begin
              QRBand10.FindChildControl('QRImagels_' + IntToStr(j)).enabled :=
                true;
              QRBand10.FindChildControl('QRImagels_' + IntToStr(j)).Top :=
                TQRLabel(QRBand10.FindChildControl('xmmcls_' + IntToStr(j -
                1))).top;
              QRBand10.FindChildControl('QRImagels_' + IntToStr(j)).left :=
                QRBand10.FindChildControl('ypyfls_' + IntToStr(j - 1)).left - 20;
              QRBand10.FindChildControl('QRImagels_' + IntToStr(j)).height := 30;
              TQRLabel(QRBand10.FindChildControl('ypyfls_' + IntToStr(j -
                1))).Caption := trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring) +
                '  ' + trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
              TQRLabel(QRBand10.FindChildControl('xmmcls_' + IntToStr(j -
                1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring;
            end
            else
            begin
              QRBand10.FindChildControl('QRImagels_' + IntToStr(j)).enabled :=
                false;
              QRBand10.FindChildControl('xmmcls_' + IntToStr(j - 1)).Width := 235;
              TQRLabel(QRBand10.FindChildControl('ypyfls_' + IntToStr(j -
                1))).Caption := '';
              TQRLabel(QRBand10.FindChildControl('xmmcls_' + IntToStr(j -
                1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring + ' ' +
                trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring) + ' ' +
                trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
            end;
            sp_zxjl_cq_dy.Next;
          end;
        end;
        DM_data.qry_pub.Close;
        DM_data.qry_pub.SQL.text := 'select * from sys_kscwsz where bqdm=' + ''''
          + pub_bqdm + '''' + ' and bcbh=' + '''' +
          trim(sp_jbxx.fieldbyname('bch').asstring) + '''';
        try
          DM_data.qry_pub.Open;
        except
        end;
        QRLabel45.Caption := pub_yymc + '��ʱ��Һ�ƻ�ִ�е�';
        QRLabel46.Caption := '����:' + sp_jbxx.fieldbyname('brxm').asstring;
        QRLabel50.Caption := '������:' +
          Trim(DM_data.qry_pub.FieldByName('yybch').asstring);
        QRLabel51.Caption := '�Ա�:' + sp_jbxx.fieldbyname('brxb').asstring;
        QRLabel52.Caption := '����:' + trim(sp_jbxx.fieldbyname('brnl').asstring);
        QRLabel53.Caption := FormatDateTime('yyyy', frm_func.curr_date) + '��';

        QRLabel67.Caption := '����:' + sp_jbxx.fieldbyname('brxm').asstring +
          '      ' +
          '������:' + Trim(DM_data.qry_pub.FieldByName('yybch').asstring) +
          '      ' +
          '����:' + Trim(sp_jbxx.fieldbyname('tmh').asstring);
        //   '�Ա�:' + sp_jbxx.fieldbyname( 'brxb' ).asstring+'      '+
        //   '����:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
  //QuickRep3.Prepare;
        QRLabel58.Caption := '���ҽ����';
        QuickRep5.Preview;
      end;
    end;
    //   end
    //   else
    //   begin
    //      sp_zxjl_cq_dy.First;
    //      if sp_zxjl_cq_dy.RecordCount mod 5 <> 0 then
    //        y := trunc( sp_zxjl_cq_dy.RecordCount / 5 ) + 1
    //      else
    //        y := trunc( sp_zxjl_cq_dy.RecordCount / 5 );
    //      count := sp_zxjl_cq_dy.RecordCount;
    //      for I := 1 to y do
    //      begin
    //        for j := 1 to 5 do
    //        begin
    //          if count < i * 5 then
    //          begin
    //            if j > ( 5 - ( y * 5 - count ) ) then
    //            begin
    //              aControl := DetailBand4.FindChildControl( 'ksrqj' + IntToStr( j - 1 ) );
    //              if aControl is TQRLabel then
    //                TQRLabel( aControl ).Caption := '';
    //              aControl := DetailBand4.FindChildControl( 'kdysmcj' + IntToStr( j - 1 ) );
    //              if aControl is TQRLabel then
    //                TQRLabel( aControl ).Caption := '';
    //              DetailBand4.FindChildControl( 'qrgrimagej' + IntToStr( j ) ).enabled := false;
    //              //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
    //              TQRLabel( DetailBand4.FindChildControl( 'ypyfj' + IntToStr( j - 1 ) ) ).Caption := '';
    //              //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
    //              TQRLabel( DetailBand4.FindChildControl( 'xmmcj' + IntToStr( j - 1 ) ) ).caption := '';
    //            end
    //            else
    //            begin
    //              aControl := DetailBand4.FindChildControl( 'ksrqj' + IntToStr( j - 1 ) );
    //              if aControl is TQRLabel then
    //                TQRLabel( aControl ).Caption := sp_zxjl_cq_dy.FieldByName( 'ksrq' ).AsString;
    //              aControl := DetailBand4.FindChildControl( 'kdysmcj' + IntToStr( j - 1 ) );
    //              if aControl is TQRLabel then
    //                TQRLabel( aControl ).Caption := sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;
    //              if sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
    //              begin
    //                x := ( length( sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
    //                DetailBand4.FindChildControl( 'QRgrImagej' + IntToStr( j ) ).enabled := true;
    //                DetailBand4.FindChildControl( 'QRgrImagej' + IntToStr( j ) ).Top := TQRLabel( DetailBand4.FindChildControl( 'xmmcj' + IntToStr( j - 1 ) ) ).top;
    //                DetailBand4.FindChildControl( 'QRgrImagej' + IntToStr( j ) ).left := DetailBand4.FindChildControl( 'ypyfj' + IntToStr( j - 1 ) ).left - 20;
    //                DetailBand4.FindChildControl( 'qrgrimagej' + IntToStr( j ) ).height := 30;
    //                TQRLabel( DetailBand4.FindChildControl( 'ypyfj' + IntToStr( j - 1 ) ) ).Caption := trim( sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
    //                TQRLabel( DetailBand4.FindChildControl( 'xmmcj' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
    //                //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
    //              end
    //              else
    //              begin
    //                DetailBand4.FindChildControl( 'qrgrimagej' + IntToStr( j ) ).enabled := false;
    //                DetailBand4.FindChildControl( 'xmmcj' + IntToStr( j - 1 ) ).Width := 235;
    //                TQRLabel( DetailBand4.FindChildControl( 'ypyfj' + IntToStr( j - 1 ) ) ).Caption := '';
    //                TQRLabel( DetailBand4.FindChildControl( 'xmmcj' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + ' ' + trim( sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + ' ' + trim( sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
    //                // TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
    //              end;
    //              sp_zxjl_cq_dy.Next;
    //            end;
    //          end
    //          else
    //          begin
    //            aControl := DetailBand4.FindChildControl( 'ksrqj' + IntToStr( j - 1 ) );
    //            if aControl is TQRLabel then
    //              TQRLabel( aControl ).Caption := sp_zxjl_cq_dy.FieldByName( 'ksrq' ).asstring;
    //            aControl := DetailBand4.FindChildControl( 'kdysmcj' + IntToStr( j - 1 ) );
    //            if aControl is TQRLabel then
    //              TQRLabel( aControl ).Caption := sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;
    //            if sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
    //            begin
    //              x := ( length( sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
    //              DetailBand4.FindChildControl( 'QRgrImagej' + IntToStr( j ) ).enabled := true;
    //              DetailBand4.FindChildControl( 'QRgrImagej' + IntToStr( j ) ).Top := TQRLabel( DetailBand4.FindChildControl( 'xmmcj' + IntToStr( j - 1 ) ) ).top;
    //              DetailBand4.FindChildControl( 'qrgrimagej' + IntToStr( j ) ).left := DetailBand4.FindChildControl( 'ypyfj' + IntToStr( j - 1 ) ).left - 20;
    //              DetailBand4.FindChildControl( 'qrgrimagej' + IntToStr( j ) ).height := 30;
    //              TQRLabel( DetailBand4.FindChildControl( 'ypyfj' + IntToStr( j - 1 ) ) ).Caption := trim( sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
    //              TQRLabel( DetailBand4.FindChildControl( 'xmmcj' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
    //              //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
    //            end
    //            else
    //            begin
    //              DetailBand4.FindChildControl( 'qrgrimagej' + IntToStr( j ) ).enabled := false;
    //              DetailBand4.FindChildControl( 'xmmcj' + IntToStr( j - 1 ) ).Width := 235;
    //              TQRLabel( DetailBand4.FindChildControl( 'ypyfj' + IntToStr( j - 1 ) ) ).Caption := '';
    //              TQRLabel( DetailBand4.FindChildControl( 'xmmcj' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + ' ' + trim( sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + ' ' + trim( sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
    //              //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
    //            end;
    //            sp_zxjl_cq_dy.Next;
    //          end;
    //        end;
    //        QRLabel2jy0.Caption := pub_yymc + '��ʱ��Һ�ƻ�ִ�е�';
    //        DM_data.qry_pub.Close;
    //        DM_data.qry_pub.SQL.text := 'select * from sys_kscwsz where bqdm=' + '''' + pub_bqdm + '''' + ' and bcbh=' + '''' + trim( sp_jbxx.fieldbyname( 'bch' ).asstring ) + '''';
    //        DM_data.qry_pub.Open;
    //
    //        QRLabel3jy0.Caption := '����:' + sp_jbxx.fieldbyname( 'brxm' ).asstring;
    //        QRLabel20jy0.Caption := '������:' + Trim( DM_data.qry_pub.FieldByName( 'yybch' ).asstring );
    //        QRLabel21jy0.Caption := '�Ա�:' + sp_jbxx.fieldbyname( 'brxb' ).asstring;
    //        QRLabel26jy0.Caption := '����:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
    //        nyjy0.Caption := FormatDateTime( 'yyyy', frm_func.curr_date ) + '��';
    //
    //        QRLabel62jy.Caption := '����:' + sp_jbxx.fieldbyname( 'brxm' ).asstring + '      ' +
    //          '������:' + Trim( DM_data.qry_pub.FieldByName( 'yybch' ).asstring ) + '      '+
    //          '����:' + Trim( sp_jbxx.fieldbyname( 'tmh' ).asstring  );
    //        //'�Ա�:' + sp_jbxx.fieldbyname( 'brxb' ).asstring +'      '+
    //        //'����:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
    ////QuickRep3.Prepare;
    //        //QRLabel71.Caption := '���ҽ��:';
    //        QuickRep9.Preview;
    //      end;
    //    end;
  end;
end;

procedure Tfrm_yzinput.N23Click(Sender: TObject);
var
  v_yytj, v_lb, filter: string;
begin
  Application.OnMessage := nil;
  with sp_zxjl_cq_dy do
  begin
    Filtered := False;
    Close;
    Parameters.ParamByName('@zyh').Value :=
      Trim(sp_jbxx.fieldbyname('zyh').asstring);
    Parameters.ParamByName('@fs').Value := 0;
    Open;
  end;
  //sp_zxjl_cq_dy.Filtered := False;
  DM_data.qry_pub.close;
  DM_data.qry_pub.sql.text :=
    'select yytj from zybl_zyyz_dytjsz where dyxm=''�ڷ�ҩִ�е�''';
  try
    DM_data.qry_pub.Open;
  except
  end;
  if DM_data.qry_pub.IsEmpty then
  begin
    v_yytj := '';
  end
  else
  begin
    DM_data.qry_pub.First;
    while not DM_data.qry_pub.eof do
    begin
      v_yytj := v_yytj + '(yytj=' + '''' +
        DM_data.qry_pub.FieldByName('yytj').asstring + '''' +
        ' and  tzrq=null  and lb<>''��ҩ'' )' + ' or ';
      DM_data.qry_pub.Next;
    end;

  end;

  DM_data.qry_pub.close;
  DM_data.qry_pub.sql.text :=
    'select lbmc from zybl_zyyz_dylbsz where dyxm=''�ڷ�ҩִ�е�''';
  try
    DM_data.qry_pub.Open;
  except
  end;
  if DM_data.qry_pub.IsEmpty then
  begin
    v_lb := '';
  end
  else
  begin
    DM_data.qry_pub.First;
    while not DM_data.qry_pub.eof do
    begin
      v_lb := v_lb + '(lb=' + '''' + DM_data.qry_pub.FieldByName('lbmc').asstring
        + '''' + ' and  tzrq=null  and kdrq>=' + '''' +
        formatdatetime('yy-MM-dd',
        frm_func.curr_date) + ' 00:00' + ''')' + ' or ';
      DM_data.qry_pub.Next;
    end;

  end;

  if v_yytj + v_lb = '' then
  begin
    filter := ' 1<>1 ';
  end
  else
  begin
    filter := v_yytj + v_lb + ' ( yytj = ''�������'' )';
  end;

  sp_zxjl_cq_dy.Filter := filter;

  sp_zxjl_cq_dy.Filtered := True;
  if sp_zxjl_cq_dy.IsEmpty then
  begin
    Application.MessageBox('û�м�¼��', '��ʾ', 0 + 48);
    Exit;
  end;
  application.CreateForm(Tfrm_zxdxd, frm_zxdxd);
  try
    frm_zxdxd.ShowModal;
  finally
    frm_zxdxd.free;
  end;

end;

procedure Tfrm_yzinput.N25Click(Sender: TObject);
var
  i, y, j, count, x: Integer;
  aControl: TControl;
  v_yytj, v_lb, filter: string;
begin
  with sp_zxjl_cq_dy do
  begin
    Filtered := False;
    Close;
    Parameters.ParamByName('@zyh').Value :=
      Trim(sp_jbxx.fieldbyname('zyh').asstring);
    Parameters.ParamByName('@fs').Value := 1;
    Open;
  end;
  DM_data.qry_pub.close;
  DM_data.qry_pub.sql.text :=
    'select yytj from zybl_zyyz_dytjsz where dyxm=''��Һ�ƻ���''';
  try
    DM_data.qry_pub.Open;
  except
  end;
  if DM_data.qry_pub.IsEmpty then
  begin
    v_yytj := '';
  end
  else
  begin
    DM_data.qry_pub.First;
    while not DM_data.qry_pub.eof do
    begin
      v_yytj := v_yytj + '(bqdm=''' + pub_bqdm + ''' and yytj=' + '''' +
        DM_data.qry_pub.FieldByName('yytj').asstring + '''' +
        ' and  tzrq=null and kdrq>=' + '''' + formatdatetime('yy-MM-dd',
        frm_func.curr_date - 1) + ' 00:00' + ''' and kdrq<' + ''''
        + formatdatetime('yy-MM-dd', frm_func.curr_date) + ' 00:00' + ''') or ';
      DM_data.qry_pub.Next;
    end;

  end;

  DM_data.qry_pub.close;
  DM_data.qry_pub.sql.text :=
    'select lbmc from zybl_zyyz_dylbsz where dyxm=''��Һ�ƻ���''';
  try
    DM_data.qry_pub.Open;
  except
  end;
  if DM_data.qry_pub.IsEmpty then
  begin
    v_lb := '';
  end
  else
  begin
    DM_data.qry_pub.First;
    while not DM_data.qry_pub.eof do
    begin
      // v_lb := v_lb + '(lb=' + '''' + DM_data.qry_pub.FieldByName( 'lbmc' ).asstring + '''' + ' and  tzrq=null and kdks=' + '''' + pub_ksdm +
      v_lb := v_lb + '(lb=' + '''' + DM_data.qry_pub.FieldByName('lbmc').asstring
        + '''' + ' and  tzrq =null and kdrq>=' + '''' +
        formatdatetime('yy-MM-dd',
        frm_func.curr_date -1) + ' 00:00' + ''' kdrq<' + ''''
        + formatdatetime('yy-MM-dd',frm_func.curr_date) + ' 00:00'
        + ''' and bqdm=''' + pub_bqdm + ''')' +
        ' or ';
      DM_data.qry_pub.Next;
    end;

  end;

  if v_yytj + v_lb = '' then
  begin
    filter := ' 1<>1 ';
  end
  else
  begin
    filter:= v_yytj + v_lb +

      ' ( xmmc like ''%Ƥ��%'' and kdrq>=' + '''' + formatdatetime('yy-MM-dd',
      frm_func.curr_date-1) + ' 00:00' + ''' and kdrq<' + ''''
      + formatdatetime('yy-MM-dd',frm_func.curr_date) + ' 00:00'
      + '''  and bqdm=' + #39 + pub_bqdm + #39 + ')' +
      ' or ' + ' ( xmmc like ''%����%'' and  kdrq>=' + '''' +
      formatdatetime('yy-MM-dd', frm_func.curr_date-1) + ' 00:00' + ''' and kdrq<'
      + '''' + formatdatetime('yy-MM-dd',frm_func.curr_date) + ' 00:00'
      + ''' and bqdm='+ #39 + pub_bqdm + #39 + ')' +
      ' or ' + ' ( xmmc like ''%��%'' and  xmmc like ''%Ѫ%'' and lb<>''����'' and  kdrq>='
      + '''' + formatdatetime('yy-MM-dd', frm_func.curr_date-1) + ' 00:00' +
      ''' and kdrq<' + '''' + formatdatetime('yy-MM-dd',frm_func.curr_date) + ' 00:00'
      + ''' and bqdm=' + #39 + pub_bqdm + #39 + ')';
  end;

  sp_zxjl_cq_dy.Filter := filter;



  sp_zxjl_cq_dy.Filtered := True;
  if sp_zxjl_cq_dy.IsEmpty then
  begin
    Application.MessageBox('û�м�¼��', '��ʾ', 0 + 48);
    Exit;
  end;
  if not sp_zxjl_cq_dy.IsEmpty then
  begin
    //if (zzdx='A4') or (zzdx='B5') then
    //  begin
    sp_zxjl_cq_dy.First;
    if sp_zxjl_cq_dy.RecordCount mod 9 <> 0 then
      y := trunc(sp_zxjl_cq_dy.RecordCount / 9) + 1
    else
      y := trunc(sp_zxjl_cq_dy.RecordCount / 9);
    count := sp_zxjl_cq_dy.RecordCount;
    for I := 1 to y do
    begin
      for j := 1 to 9 do
      begin
        if count < i * 9 then
        begin
          if j > (9 - (y * 9 - count)) then
          begin
            aControl := QRBand10.FindChildControl('ksrqls' + IntToStr(j - 1));
            if aControl is TQRLabel then
              TQRLabel(aControl).Caption := '';
            aControl := QRBand10.FindChildControl('kdysmcls' + IntToStr(j - 1));
            if aControl is TQRLabel then
              TQRLabel(aControl).Caption := '';
            QRBand10.FindChildControl('QRImagels_' + IntToStr(j)).enabled :=
              false;
            //TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel(QRBand10.FindChildControl('ypyfls_' + IntToStr(j -
              1))).Caption := '';
            TQRLabel(QRBand10.FindChildControl('xmmcls_' + IntToStr(j -
              1))).caption := '';
          end
          else
          begin
            aControl := QRBand10.FindChildControl('ksrqls' + IntToStr(j - 1));
            if aControl is TQRLabel then
              TQRLabel(aControl).Caption :=
                sp_zxjl_cq_dy.FieldByName('ksrq').AsString;
            aControl := QRBand10.FindChildControl('kdysmcls' + IntToStr(j - 1));
            if aControl is TQRLabel then
              TQRLabel(aControl).Caption :=
                sp_zxjl_cq_dy.FieldByName('kdysmc').asstring;
            if sp_zxjl_cq_dy.FieldByName('fzph').asstring <> '' then
            begin
              QRBand10.FindChildControl('QRImagels_' + IntToStr(j)).enabled :=
                true;
              QRBand10.FindChildControl('QRImagels_' + IntToStr(j)).Top :=
                TQRLabel(QRBand10.FindChildControl('xmmcls_' + IntToStr(j -
                1))).top;
              QRBand10.FindChildControl('QRImagels_' + IntToStr(j)).left :=
                QRBand10.FindChildControl('ypyfls_' + IntToStr(j - 1)).left -
                20;
              QRBand10.FindChildControl('QRImagels_' + IntToStr(j)).height :=
                30;
              TQRLabel(QRBand10.FindChildControl('ypyfls_' + IntToStr(j -
                1))).Caption := trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring)
                +
                '  ' + trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
              TQRLabel(QRBand10.FindChildControl('xmmcls_' + IntToStr(j -
                1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring;
            end
            else
            begin
              QRBand10.FindChildControl('QRImagels_' + IntToStr(j)).enabled :=
                false;
              QRBand10.FindChildControl('xmmcls_' + IntToStr(j - 1)).Width :=
                235;
              TQRLabel(QRBand10.FindChildControl('ypyfls_' + IntToStr(j -
                1))).Caption := '';
              TQRLabel(QRBand10.FindChildControl('xmmcls_' + IntToStr(j -
                1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring + ' '
                +
                trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring) + ' ' +
                trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
            end;
            sp_zxjl_cq_dy.Next;
          end;
        end
        else
        begin
          aControl := QRBand10.FindChildControl('ksrqls' + IntToStr(j - 1));
          if aControl is TQRLabel then
            TQRLabel(aControl).Caption :=
              sp_zxjl_cq_dy.FieldByName('ksrq').asstring;
          aControl := QRBand10.FindChildControl('kdysmcls' + IntToStr(j - 1));
          if aControl is TQRLabel then
            TQRLabel(aControl).Caption :=
              sp_zxjl_cq_dy.FieldByName('kdysmc').asstring;
          if sp_zxjl_cq_dy.FieldByName('fzph').asstring <> '' then
          begin
            QRBand10.FindChildControl('QRImagels_' + IntToStr(j)).enabled :=
              true;
            QRBand10.FindChildControl('QRImagels_' + IntToStr(j)).Top :=
              TQRLabel(QRBand10.FindChildControl('xmmcls_' + IntToStr(j -
              1))).top;
            QRBand10.FindChildControl('QRImagels_' + IntToStr(j)).left :=
              QRBand10.FindChildControl('ypyfls_' + IntToStr(j - 1)).left - 20;
            QRBand10.FindChildControl('QRImagels_' + IntToStr(j)).height := 30;
            TQRLabel(QRBand10.FindChildControl('ypyfls_' + IntToStr(j -
              1))).Caption := trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring) +
              '  ' + trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
            TQRLabel(QRBand10.FindChildControl('xmmcls_' + IntToStr(j -
              1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring;
          end
          else
          begin
            QRBand10.FindChildControl('QRImagels_' + IntToStr(j)).enabled :=
              false;
            QRBand10.FindChildControl('xmmcls_' + IntToStr(j - 1)).Width := 235;
            TQRLabel(QRBand10.FindChildControl('ypyfls_' + IntToStr(j -
              1))).Caption := '';
            TQRLabel(QRBand10.FindChildControl('xmmcls_' + IntToStr(j -
              1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring + ' ' +
              trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring) + ' ' +
              trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
          end;
          sp_zxjl_cq_dy.Next;
        end;
      end;
      DM_data.qry_pub.Close;
      DM_data.qry_pub.SQL.text := 'select * from sys_kscwsz where bqdm=' + ''''
        + pub_bqdm + '''' + ' and bcbh=' + '''' +
        trim(sp_jbxx.fieldbyname('bch').asstring) + '''';
      try
        DM_data.qry_pub.Open;
      except
      end;
      QRLabel45.Caption := pub_yymc + '��ʱ��Һ�ƻ�ִ�е�';
      QRLabel46.Caption := '����:' + sp_jbxx.fieldbyname('brxm').asstring;
      QRLabel50.Caption := '������:' +
        Trim(DM_data.qry_pub.FieldByName('yybch').asstring);
      QRLabel51.Caption := '�Ա�:' + sp_jbxx.fieldbyname('brxb').asstring;
      QRLabel52.Caption := '����:' + trim(sp_jbxx.fieldbyname('brnl').asstring);
      QRLabel53.Caption := FormatDateTime('yyyy', frm_func.curr_date) + '��';
      if pub_yydm <> '0237' then
      begin
        QRLabel67.Caption := '����:' + sp_jbxx.fieldbyname('brxm').asstring +
          '      ' +
          '������:' + Trim(DM_data.qry_pub.FieldByName('yybch').asstring) +
          '      ' +
          '����:' + Trim(sp_jbxx.fieldbyname('tmh').asstring);
        //   '�Ա�:' + sp_jbxx.fieldbyname( 'brxb' ).asstring+'      '+
        //   '����:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
  //QuickRep3.Prepare;
        QRLabel58.Caption := '���ҽ����';
      end
      else
      begin
        QRLabel67.Caption := '����:' + sp_jbxx.fieldbyname('brxm').asstring +
          '      ' +
          '������:' + Trim(DM_data.qry_pub.FieldByName('yybch').asstring) +
          '      ' +
          '����:' + Trim(sp_jbxx.fieldbyname('tmh').asstring);
        QRLabel58.Caption := '';
      end;
      //QRLabel77.Caption:='';
      QuickRep5.Preview;
    end;
  end;
end;

procedure Tfrm_yzinput.N26Click(Sender: TObject);
var
ts:string;
fzph,fzph1:string;
i:integer;
begin
  if dbgrideh4.SelectedRows.Count<=0 then
  begin
    application.MessageBox('����ѡ����Ҫ���Ƶ�ҽ������','��ʾ',mb_ok)
  end else
  begin
    DBGrideh4.DataSource.DataSet.GotoBookmark(pointer(DBGrideh4.SelectedRows.Items[0]));
    ts:='';
    fzph1:=sp_dryz.FieldByName('fzph').AsString;
    if fzph1<>'' then        
      fzph:=GetSJH(pub_czydm)
    else
      fzph:='';
    for i:= 0 to dbgrideh4.SelectedRows.Count - 1 do
    begin
      DBGrideh4.DataSource.DataSet.GotoBookmark(pointer(DBGrideh4.SelectedRows.Items[i]));
      sfchange:=true;
      frm_yzinput.qry_yz.Append;
      frm_yzinput.qry_yz.edit;
      frm_yzinput.qry_yz.FieldByName('lb').AsString := sp_dryz.FieldByName('lb').AsString;
      frm_yzinput.qry_yz.FieldByName('yzsx').AsString := sp_dryz.FieldByName('yzsx').AsString;
      frm_yzinput.qry_yz.FieldByName('tmh').AsString := frm_yzinput.tmh;
      frm_yzinput.qry_yz.FieldByName('zyh').AsString := frm_yzinput.zyh;
      frm_yzinput.qry_yz.FieldByName('xmdm').AsString := sp_dryz.FieldByName('xmdm').AsString;
      frm_yzinput.qry_yz.FieldByName('xmmc').AsString := sp_dryz.FieldByName('xmmc').AsString;
      frm_yzinput.qry_yz.FieldByName('sl').AsFloat := sp_dryz.FieldByName('sl').AsFloat;
      frm_yzinput.qry_yz.FieldByName('dw').AsString := sp_dryz.FieldByName('dw').AsString;
      frm_yzinput.qry_yz.FieldByName('ypyf').AsString := sp_dryz.FieldByName('ypyf').AsString;
      frm_yzinput.qry_yz.FieldByName('yytj').AsString := sp_dryz.FieldByName('yytj').AsString;
      frm_yzinput.qry_yz.FieldByName('gg').AsString := sp_dryz.FieldByName('gg').AsString;
      frm_yzinput.qry_yz.FieldByName('yplb').AsString := sp_dryz.FieldByName('yplb').AsString;
      frm_yzinput.qry_yz.FieldByName('bz').AsString := sp_dryz.FieldByName('bz').AsString;
      frm_yzinput.qry_yz.FieldByName('jyyb').AsString := sp_dryz.FieldByName('jyyb').AsString;
      frm_yzinput.qry_yz.FieldByName('jyflbh').AsString := sp_dryz.FieldByName('jyflbh').AsString;
      frm_yzinput.qry_yz.fieldbyname('xh').asinteger:=maxxh+1;
      maxxh:=maxxh+1;
      if sp_dryz.fieldbyname('lb').asstring='ҩƷ' then
        frm_yzinput.qry_yz.FieldByName('ypyl').AsFloat := sp_dryz.FieldByName('ypyl').AsFloat;
      frm_yzinput.qry_yz.FieldByName('yplsj').AsFloat := sp_dryz.FieldByName('yplsj').AsFloat;
      frm_yzinput.qry_yz.FieldByName('yldw').AsString := sp_dryz.FieldByName('yldw').AsString;
      frm_yzinput.qry_yz.FieldByName('kdks').AsString := frm_yzinput.sp_jbxx.FieldByName('ksdm').AsString;;
      frm_yzinput.qry_yz.FieldByName('kdrq').AsDateTime := frm_func.curr_date;
      frm_yzinput.qry_yz.FieldByName('kdys').AsString := pub_czydm;
      frm_yzinput.qry_yz.FieldByName('czks').AsString := sp_dryz.FieldByName('czks').AsString;
    if sp_dryz.FieldByName('fzph').AsString<>'' then
    begin
      if fzph1=sp_dryz.FieldByName('fzph').AsString  then
        frm_yzinput.qry_yz.FieldByName('fzph').AsString:=fzph
      else
      begin
        if sp_dryz.FieldByName('fzph').AsString<>'' then
        begin
          fzph1:=sp_dryz.FieldByName('fzph').AsString;
          fzph:=GetSJH(pub_czydm);
          frm_yzinput.qry_yz.FieldByName('fzph').AsString:=fzph
        end;
      end;
    end else
    begin
     fzph1:='';
     fzph:='';
    end;
      frm_yzinput.qry_xmyz.insert;
      if sp_dryz.FieldByName('lb').AsString='����' then
        frm_yzinput.qry_xmyz.FieldByName('xmdm').AsString := '����'
      else
      frm_yzinput.qry_xmyz.FieldByName('xmdm').AsString := sp_dryz.FieldByName('xmdm').AsString;
      frm_yzinput.qry_xmyz.FieldByName('xmmc').AsString := sp_dryz.FieldByName('xmmc').AsString;
      frm_yzinput.qry_xmyz.FieldByName('lb').AsString := sp_dryz.FieldByName('lb').AsString;
      frm_yzinput.qry_xmyz.post;
    end;
    saveyz;

//      application.MessageBox('ѡ��ҽ���Ѿ����Ƶ���¼��ҽ�������뵽��¼��ҽ��������ȷ�ϣ�', '��ʾ', 0 + 48);
  end;

end;

procedure Tfrm_yzinput.N28Click(Sender: TObject);
var
  y: integer;
begin
  if qry_yz.RecordCount > 0 then
  begin
    if application.MessageBox( '�Ƿ�ɾ����ҽ��?', '��ʾ��Ϣ', mb_iconquestion +
      mb_okcancel + mb_defbutton1 ) = idok then
    begin
      if grid_yzlr.SelectedRows.Count > 0 then
      begin
        for y := 0 to grid_yzlr.SelectedRows.Count - 1 do
        begin
          grid_yzlr.DataSource.DataSet.GotoBookmark( pointer( grid_yzlr.SelectedRows.Items[y] ) );
          qry_yz.edit;
          qry_yz.Delete;
        end;
      end
      else
      begin
        qry_yz.edit;
        qry_yz.Delete;
      end;
      saveyz;
      // ����˳�� ʹͬһ��������
//        frm_func.ReorderInGroup(zyh, fzbh);
//        refresh_show;
    end;
  end;
end;

procedure Tfrm_yzinput.N2Click(Sender: TObject);
var
  _ph, _xmdm, _fzph: string;
  _id: integer;
  y: Integer;
  zt: string;
  yhxnr: string;
begin

  zt := '2';
  dM_data.qry_pub.close;
  DM_data.qry_pub.sql.Text := 'select * from sys_jzzt';
  try
    DM_data.qry_pub.Open;
  except
  end;
  if DM_data.qry_pub.FieldByName('yzzdjfzt').AsBoolean = true then
  begin
    application.MessageBox('���ڽ���ҽ���Զ��Ƿ���ҵ,���Ժ����ԣ�', '��ʾ', 0 +
      48);
    Abort;
  end;
  if not sp_dryz.Active then
    exit;

  if not (sp_dryz.FieldByName('tzfs').Asstring = '�޸�') then
  begin
    //  if sp_dryz.FieldByName('zhzxsj').Asstring='' then
    begin
      if not sp_dryz.FieldByName('tzbz').AsBoolean then
      begin
        if sp_dryz.RecordCount < 1 then
          exit;
        for y := 0 to dbgrideh4.SelectedRows.Count - 1 do
        begin

          DBGrideh4.DataSource.DataSet.GotoBookmark(pointer(DBGrideh4.SelectedRows.Items[y]));
          DM_data.qry_pub.Close;
          DM_data.qry_pub.SQL.text := 'select * from zybl_zyyz_zxjl where ph=' +
            '''' +
            sp_dryz.FieldByName('ph').asstring + '''';
          try
            DM_data.qry_pub.Open;
          except
          end;
          if not DM_data.qry_pub.isempty then
          begin
            ShowMessage('�ѼƷѵ�ҽ�������޸ģ�');
            if zt <> '0' then
              zt := '1';
          end
          else
          begin
            DM_data.qry_pub.Close;
            DM_data.qry_pub.SQL.text :=
              'select * from zybl_zyyz_syddy where yzid=' +
              sp_dryz.FieldByName('id').asstring;
            try
              DM_data.qry_pub.Open;
            except
            end;
            if not DM_data.qry_pub.isempty then
            begin
              ShowMessage('�Ѵ�ӡִ�е���ҽ�������޸ģ�');
              if zt <> '0' then
                zt := '1';
            end
            else
            begin
              DM_data.qry_pub.Close;
              DM_data.qry_pub.SQL.text :=
                'select * from zybl_zyyz_yzzxqd_mx where yzid=' +
                sp_dryz.FieldByName('id').asstring;
              try
                DM_data.qry_pub.Open;
              except
              end;

              if (DM_data.qry_pub.RecordCount > 0) and (pos('Ƥ��',
                sp_dryz.FieldByName('xmmc').Asstring) < 1)
                and (pos('����', sp_dryz.FieldByName('xmmc').Asstring) < 1) then
              begin
                ShowMessage('��ִ�е�ҽ�������޸ģ�');
                if zt <> '0' then
                  zt := '1';
              end
              else
              begin
                DM_data.qry_pub.Close;
                DM_data.qry_pub.SQL.text := 'select * from sys_czy where dm=' +
                  '''' + pub_czydm + '''';
                try
                  DM_data.qry_pub.Open;
                except
                end;

                //                if (sp_dryz.FieldByName('yzsx').AsString = '��ʱ') and
                //                  (sp_dryz.FieldByName('lb').AsString <> '����') then
                //                begin
                //                  ShowMessage('��ʱҽ���޷��޸ģ�����ֹͣҽ����ȡ������ʱҽ����');
                //                  if zt <> '0' then
                //                    zt := '1';
                //                end
                //                else
                if (DM_data.qry_pub.FieldByName('cfbz').AsBoolean = false)
                  and (Trim(sp_dryz.FieldByName('kdys').asstring) <> pub_czydm)
                  and (pos('Ƥ��', sp_dryz.FieldByName('xmmc').Asstring) < 1)
                  and (pos('����', sp_dryz.FieldByName('xmmc').Asstring) < 1)
                  and (Trim(sp_dryz.FieldByName('lb').asstring) <> '����') then
                begin
                  ShowMessage('��ǰ����Ա�޷��޸ı���ҽ��');
                  if zt <> '0' then
                    zt := '1';
                end
                else
                begin
                  ///  �������ʱҽ���������Ǽ���ҽ���������Ѿ���ӡ�������룬����ҽ����id�����ڸ��� zyh���dzbl_cyjl_zy��fyid�С���ô���ҽ���Ѿ���ӡ�������������޸�
                  DM_data.qry_pub.Close;
                  DM_data.qry_pub.SQL.Text :=
                    'select * from dzbl_cyjl_zy where fyid=' + #39 +
                    sp_dryz.FieldByName('id').asstring + #39
                    + ' and zyh=' + #39 + sp_dryz.FieldByName('zyh').Asstring +
                    #39;
                  try
                    DM_data.qry_pub.Open;
                  except
                  end;
                  if (sp_dryz.FieldByName('yzsx').Asstring = '��ʱ')
                    and (sp_dryz.FieldByName('lb').Asstring = '����')
                    and not DM_data.qry_pub.IsEmpty then
                  begin
                    application.MessageBox('��ҽ������ʱҽ���������Ǽ���ҽ�����Ѿ���ӡ�������룬�������޸ģ�', '��ʾ', 0 + 48);
                    if zt <> '0' then
                      zt := '1';
                  end
                  else
                  begin
                    ///
                    yhxnr := '';
                    qry_save_yyznr.close;
                    qry_save_yyznr.sql.Text :=
                      'select * from zybl_zyyz_xgnr where 1<>1';
                    qry_save_yyznr.Open;
                    if (Trim(sp_dryz.FieldByName('lb').asstring) = 'ҩƷ') or
                      (Trim(sp_dryz.FieldByName('lb').asstring) = '��ҩ') or
                      (Trim(sp_dryz.FieldByName('lb').asstring) = 'ҩһ') then
                      yhxnr := trim(sp_dryz.FieldByName('xmmc').asstring) +
                        ' ҩƷ�÷�:' +
                        trim(sp_dryz.FieldByName('ypyf').asstring) + ' ' +
                        ' ҩƷ����:' + trim(sp_dryz.FieldByName('ypyl').asstring)
                        +
                        trim(sp_dryz.FieldByName('yldw').asstring) + ' ' +
                        ' ��ҩ;��:' +
                        trim(sp_dryz.FieldByName('yytj').asstring);

                    if (Trim(sp_dryz.FieldByName('lb').asstring) = '����') then
                      yhxnr := trim(sp_dryz.FieldByName('xmmc').asstring) +
                        ' ��������Ϊ:' +
                        trim(sp_dryz.FieldByName('jyyb').asstring);

                    if (Trim(sp_dryz.FieldByName('lb').asstring) = '���') or
                      (Trim(sp_dryz.FieldByName('lb').asstring) = '����') or
                      (Trim(sp_dryz.FieldByName('lb').asstring) = '����') or
                      (Trim(sp_dryz.FieldByName('lb').asstring) = '��ҩ') then
                      yhxnr := trim(sp_dryz.FieldByName('xmmc').asstring) +
                        ' ����Ϊ:' +
                        trim(sp_dryz.FieldByName('sl').asstring) +
                        trim(sp_dryz.FieldByName('dw').asstring);

                    if (Trim(sp_dryz.FieldByName('lb').asstring) = '����') then
                      yhxnr := trim(sp_dryz.FieldByName('xmmc').asstring);
                    qry_save_yyznr.Append;
                    qry_save_yyznr.FieldByName('zyh').asstring := zyh;
                    qry_save_yyznr.FieldByName('yzid').asstring :=
                      Trim(sp_dryz.FieldByName('id').asstring);
                    qry_save_yyznr.FieldByName('yyznr').asstring :=
                      Trim(sp_dryz.FieldByName('yzsx').asstring) +
                      trim(sp_dryz.FieldByName('lb').asstring) + '��ҽ��,' +
                      yhxnr
                      + '  ' +
                      '��ʼʱ��Ϊ��' + sp_dryz.FieldByName('kdrq').asstring;
                    qry_save_yyznr.FieldByName('xyznr').asstring := '';
                    qry_save_yyznr.FieldByName('xgsj').AsDateTime :=
                      Frm_func.curr_date;
                    qry_save_yyznr.Post;

                    _ph := sp_dryz.FieldByName('ph').AsString;
                    _xmdm := sp_dryz.FieldByName('xmdm').AsString;
                    _fzph := sp_dryz.FieldByName('fzph').AsString;
                    _id := sp_dryz.FieldByName('id').Asinteger;
                    if sp_dryz.fieldbyname('fzph').asstring <> '' then
                    begin
                      qru_yzxg.close;
                      qru_yzxg.sql.text :=
                        'update zybl_zyyz with(rowlock) set kdks=' + #39 +
                        yz_kdks
                        +
                        #39 + ',zxbz = 0,xgrq = ' +
                        #39 + datetimetostr(frm_func.curr_date) + #39 +
                        ',xgry = '
                        + #39 + pub_czydm + #39 +
                        ' where fzph = ' + #39 + _fzph + #39;
                      qru_yzxg.ExecSQL;
                    end
                    else
                    begin
                      qru_yzxg.close;
                      qru_yzxg.sql.text :=
                        'update zybl_zyyz with(rowlock) set kdks=' + #39 +
                        yz_kdks
                        +
                        #39 + ',zxbz = 0,xgrq = ' +
                        #39 + datetimetostr(frm_func.curr_date) + #39 +
                        ',xgry = '
                        + #39 + pub_czydm + #39 +
                        ' where id = ' + inttostr(_id);
                      qru_yzxg.ExecSQL;
                    end;
                    zt := '0';
                  end;
                end;
              end;
            end;
          end;
        end;

        sp_dryz.Close;
        sp_dryz.Parameters.ParamByName('@zyh').Value := zyh;
        sp_dryz.Parameters.ParamByName('@yzsx').Value := '';
        sp_dryz.Open;
        refresh_yz;
        if zt = '0' then
          application.MessageBox('��ҽ���Ѿ������޸�״̬���뵽��¼��ҽ���������޸ģ�', '��ʾ', 0 + 48);

      end
      else
        application.MessageBox('��ֹͣ��ҽ�������޸ģ�', '��ʾ', 0 + 48);
    end
    // else
    //   application.MessageBox('��ִ�е�ҽ�������޸ģ�', '��ʾ', 0 + 48);
  end;

end;

procedure Tfrm_yzinput.proc_zysave(xszy: boolean = true; xsxy: boolean = false;
  zysl: integer = 1);
begin
  try
    application.CreateForm(Tfrm_zyjs, frm_zyjs);
    frm_zyjs.pub_cfje := P_zycfje;
    frm_zyjs.GroupBox1.Visible := xszy;
    frm_zyjs.GroupBox3.Visible := xsxy;
    frm_zyjs.edt_wjjg.Value := zysl;
    frm_zyjs.edt_sjjg.Value := zysl;
    frm_zyjs.ShowModal;
    if frm_zyjs.ModalResult <> mrOk then
    begin
      Abort;
    end;
  finally
    frm_zyjs.free;
  end;
  qry_yz.First;
  {// while not qry_yz.Eof do
   begin
     //----calmhawk--2011-06-09---and (trim(qry_yz.FieldByName('ypyf').AsString) = '')
     if (not qry_yz.FieldByName('zxbz').AsBoolean) and (qry_yz.FieldByName('lb').AsString = '��ҩ') then
     begin
       qry_yz.Edit;
       //qry_yz.FieldByName('bz').AsString := _zycl + zyff; //��ҩ�÷�
       qry_yz['bz']  := _zycl + zyff;
       //qry_yz.FieldByName('ypyl').AsFloat := StrToFloat(zyjs); //��������
      // qry_yz.FieldByName('ypcgj').AsFloat := qry_yz.FieldByName('sl').AsInteger * qry_yz.FieldByName('yplsj').AsFloat * qry_yz.FieldByName('ypyl').AsFloat;
       qry_yz.Post;
     //  if not qry_yz.IsEmpty then
        // proc_kcjc(True); //�����
     end;
     qry_yz.Next;
   end;  }
end;

procedure Tfrm_yzinput.N3Click(Sender: TObject);
var
  i: integer;
  ypyf, yytj: string;
  mark: boolean;
  _ds, yplb, yplbTmp: string;
  gtt: string;
begin
  if grid_yzlr.SelectedRows.Count > 0 then
  begin
    bcbz := false;
    saveyz;
    if application.MessageBox('�Ƿ�Ҫ����µķ���?', '��ʾ��Ϣ', mb_iconquestion
      + mb_okcancel + mb_defbutton1) = idok then
    begin
      mark := true;
      qry_yz.GotoBookmark(pointer(grid_yzlr.SelectedRows.Items[0]));
      ypyf := qry_yz.fieldbyname('ypyf').asstring;
      yytj := qry_yz.fieldbyname('yytj').asstring;
      yplb := Trim(qry_yz.FieldByName('lb').AsString);
      yplbTmp := Trim(qry_yz.FieldByName('lb').AsString);
      while (i <= grid_yzlr.SelectedRows.Count - 1) and mark do
      begin
        qry_yz.GotoBookmark(pointer(grid_yzlr.SelectedRows.Items[i]));

        if (ypyf <> qry_yz.fieldbyname('ypyf').asstring)
          or (yytj <> qry_yz.fieldbyname('yytj').asstring) then
        begin

          if (yplb <> '��ҩ') then
            mark := false;
        end;
        //else
        begin
          ypyf := qry_yz.fieldbyname('ypyf').asstring;
          yytj := qry_yz.fieldbyname('yytj').asstring;
          yplbTmp := qry_yz.fieldbyname('lb').asstring;
        end;
        if (yplbTmp <> yplb) and ((yplbTmp = '��ҩ') or (yplb = '��ҩ')) then
          mark := false;
        i := i + 1;
      end;
      if mark then
      begin
        P_zycfje := 0;
        qry_yz.First;
        while not qry_yz.Eof do
        begin
          if (Trim(qry_yz.FieldByName('lb').AsString) = '��ҩ') and
            (qry_yz.FieldByName('zxbz').AsBoolean = False) then
          begin
            P_zycfje := P_zycfje + qry_yz.FieldByName('sl').AsFloat *
              qry_yz.FieldByName('yplsj').AsFloat;
            // p_zysl := p_zysl + qry_yz.FieldByName('sl').AsInteger;
          end;

          qry_yz.Next;
        end;

        if yplb = '��ҩ' then
        begin
          proc_zysave;
          // _ds := p_dslr.func_dslr('2')
        end
        else if Trim(qry_yz.FieldByName('yytj').asstring) = '����' then
          _ds := p_dslr.func_dslr('1')
        else if Pos('����', Trim(yytj)) > 0 then
          _ds := p_dslr.func_dslr('4')
        else if (Trim(yytj) <> '����') and
          (pub_yydm = '0003') then
          _ds := p_dslr.func_dslr('3')
        else

          _ds := p_dslr.func_dslr('1');
        fzbh := GetSJH(pub_czydm);
        if (pub_yydm = '0003') then
        begin
          if Trim(yytj) = '����' then
          begin
            gtt := 'gtt/min';
          end
          else if Pos('����', Trim(yytj)) > 0 then
            gtt := 'ml/h'
          else
          begin
            gtt := '';
          end;
        end
        else
        begin
          if Pos('����', Trim(yytj)) > 0 then
            gtt := 'ml/h'
          else
          begin
            gtt := 'gtt/min';
          end;

        end;
        for i := 0 to grid_yzlr.SelectedRows.Count - 1 do
        begin
          qry_yz.GotoBookmark(pointer(grid_yzlr.SelectedRows.Items[i]));
          qry_yz.edit;
          qry_yz['fzph'] := fzbh;
          if (i = 0) and (Trim(qry_yz.FieldByName('lb').asstring) <> '��ҩ')
            then
            qry_yz['bz'] := _ds + gtt;

          if (Trim(qry_yz.FieldByName('lb').asstring) = '��ҩ') and (i = 0) then
          begin
            qry_yz['bz'] := zyff;
          end;

          //��ҩ����ǰ�б�ע��Ϣ�ģ��������
          if (Trim(qry_yz.FieldByName('lb').asstring) = '��ҩ') and (i > 0) and
            (qry_yz.FieldByName('bz').AsString <> '') then
          begin
            qry_yz['bz'] := '';
          end;

          if (Trim(qry_yz.FieldByName('lb').asstring) = '��ҩ') then
          begin
            qry_yz['ypyl'] := zyjs;
          end;

          qry_yz.post;
        end;
        bcbz := false;
        saveyz;

        // ����˳�� ʹͬһ��������
        frm_func.ReorderInGroup(zyh, fzbh);
        refresh_show;
        //application.MessageBox( '�����Һ������˵����ע����Һ�ٶ�!', '��ʾ��Ϣ', mb_iconinformation + mb_ok );

      end
      else
        application.messagebox('ҩƷ�÷�����ҩ;����һ�£����ܷ���һ�飡��',
          '����', mb_ok + mb_iconerror);
    end;
  end
  else
    application.MessageBox('��ѡ����Ҫ���з�����У���', '��ʾ��Ϣ',
      mb_iconinformation + mb_ok)

    //    grid_yzlr.DrawColumnCell(sender);
    //grid_yzlr.Refresh;

end;

procedure Tfrm_yzinput.N4Click(Sender: TObject);
var
  i: integer;
begin
  if grid_yzlr.SelectedRows.Count > 0 then
  begin
    bcbz := false;
    saveyz;
    if application.MessageBox('�Ƿ�Ҫȡ����ǰ����?', '��ʾ��Ϣ', mb_iconquestion
      + mb_okcancel + mb_defbutton1) = idok then
    begin
      for i := 0 to grid_yzlr.SelectedRows.Count - 1 do
      begin
        qry_yz.GotoBookmark(pointer(grid_yzlr.SelectedRows.Items[i]));
        qry_yz.edit;
        qry_yz['fzph'] := '';
        qry_yz['bz'] := '';
        qry_yz.post;
      end;
    end;
    bcbz := false;
    saveyz;
  end
  else
    application.MessageBox('��ѡ����Ҫȡ��������У���', '��ʾ��Ϣ',
      mb_iconinformation + mb_ok)
end;

procedure Tfrm_yzinput.N5Click(Sender: TObject);
var
  _id, _zhzxsj, _yzsx: string;
  _fzph: string;
  _yzsj: string;
  sczt: integer;
begin
  dM_data.qry_pub.close;
  DM_data.qry_pub.sql.Text := 'select * from sys_jzzt';
  try
    DM_data.qry_pub.Open;
  except
  end;
  if DM_data.qry_pub.FieldByName('yzzdjfzt').AsBoolean = true then
  begin
    application.MessageBox('���ڽ���ҽ���Զ��Ƿ���ҵ,���Ժ����ԣ�', '��ʾ', 0 +
      48);
    Abort;
  end;
  DM_data.qry_pub.Close;
  DM_data.qry_pub.SQL.text := 'select * from zybl_zyyz_yzzxqd_mx where yzid=' +
    sp_dryz.FieldByName('id').asstring + ' and zxsj>=' + '''' +
    sp_dryz.FieldByName('tzrq').asstring + '''';
  try
    DM_data.qry_pub.Open;
  except
  end;

  if not DM_data.qry_pub.IsEmpty then
  begin
    ShowMessage('��ǰҽ������ִֹͣ�м�¼������ȡ��ֹͣ��');
    Abort;
  end;

  DM_data.qry_pub.Close;
  DM_data.qry_pub.SQL.text := 'select * from sys_czy where dm=' + '''' +
    pub_czydm + '''';
  try
    DM_data.qry_pub.Open;
  except
  end;
  if (DM_data.qry_pub.FieldByName('cfbz').AsBoolean = false) and
    (Trim(sp_dryz.FieldByName('kdys').asstring) <> pub_czydm) then
  begin
    ShowMessage('��ǰ����Ա�޷�ȡ��ֹͣ����ҽ��');
    Abort;
  end;

  if not sp_dryz.Active then
    exit;
  if sp_dryz.RecordCount < 1 then
    exit;
  tzyzsj := formatdatetime('yyyy-mm-dd hh:mm:ss',
    sp_dryz.fieldbyname('tzrq').asdatetime);
  sp_yzsj.Close;
  sp_yzsj.Parameters.ParamByName('@scyzsj').Value := tzyzsj;
  sp_yzsj.ExecProc;
  _yzsj := formatdatetime('yyyymmdd',
    sp_yzsj.Parameters.ParamByName('@scyzsj').Value);
  //  dt_zxsj.DateTime:= sp_yzsj.Parameters.ParamByName('@scyzsj').Value;

  //    datetimetostr(frm_func.curr_date)

  _id := sp_dryz.FieldByName('id').AsString;
  _zhzxsj := sp_dryz.FieldByName('zhzxsj').AsString;
  _yzsx := sp_dryz.FieldByName('yzsx').AsString;
  _fzph := sp_dryz.FieldByName('fzph').AsString;
  if _fzph <> '' then
  begin
    sp_qxtzyz.Close;
    sp_qxtzyz.Parameters.ParamByName('@zyh').Value := zyh;
    sp_qxtzyz.Parameters.ParamByName('@zxsj').Value := _yzsj;
    sp_qxtzyz.Parameters.ParamByName('@tzyzsj').Value := strtodatetime(tzyzsj);
    sp_qxtzyz.Parameters.ParamByName('@czydm').Value := pub_czydm;
    sp_qxtzyz.Parameters.ParamByName('@id').Value := 0;
    sp_qxtzyz.Parameters.ParamByName('@fzph').Value := _fzph;
    sp_qxtzyz.Parameters.ParamByName('@sczt').Value := 9;
    sp_qxtzyz.ExecProc;
    sczt := sp_qxtzyz.Parameters.ParamByName('@sczt').Value;
    if sczt <> 0 then
      application.MessageBox('ȡ��ҽ��ֹͣδ�ɹ��������²�������', '��ʾ��',
        mb_ok);
  end
  else
  begin
    sp_qxtzyz.Close;
    sp_qxtzyz.Parameters.ParamByName('@zyh').Value := zyh;
    sp_qxtzyz.Parameters.ParamByName('@zxsj').Value := _yzsj;
    sp_qxtzyz.Parameters.ParamByName('@tzyzsj').Value := strtodatetime(tzyzsj);
    sp_qxtzyz.Parameters.ParamByName('@czydm').Value := pub_czydm;
    sp_qxtzyz.Parameters.ParamByName('@id').Value := _id;
    sp_qxtzyz.Parameters.ParamByName('@fzph').Value := '';
    sp_qxtzyz.Parameters.ParamByName('@sczt').Value := 9;
    sp_qxtzyz.ExecProc;
    sczt := sp_qxtzyz.Parameters.ParamByName('@sczt').Value;
    if sczt <> 0 then
      application.MessageBox('quxcҽ��ֹͣδ�ɹ��������²�������', '��ʾ��',
        mb_ok);
  end;
  sp_dryz.Close;
  sp_dryz.Parameters.ParamByName('@zyh').Value := zyh;
  sp_dryz.Parameters.ParamByName('@yzsx').Value := '';
  sp_dryz.Open;
end;

procedure Tfrm_yzinput.N6Click(Sender: TObject);
var
  sczt: integer;
begin
  Application.OnMessage := nil;
  dM_data.qry_pub.close;
  DM_data.qry_pub.sql.Text := 'select * from sys_jzzt';
  try
    DM_data.qry_pub.Open;
  except
  end;
  if DM_data.qry_pub.FieldByName('yzzdjfzt').AsBoolean = true then
  begin
    application.MessageBox('���ڽ���ҽ���Զ��Ƿ���ҵ,���Ժ����ԣ�', '��ʾ', 0 +
      48);
    Abort;
  end;
  DM_data.qry_pub.Close;
  DM_data.qry_pub.SQL.text := 'select * from sys_czy where dm=' + '''' +
    pub_czydm + '''';
  try
    DM_data.qry_pub.Open;
  except
  end;
  if (DM_data.qry_pub.FieldByName('cfbz').AsBoolean = false) and
    (Trim(sp_dryz.FieldByName('kdys').asstring) <> pub_czydm) then
  begin
    ShowMessage('��ǰ����Ա�޷��޸ı���ҽ��ֹͣʱ��');
    Abort;
  end;

  if application.MessageBox(pchar('�Ƿ��޸�ҽ��ֹͣ�ƻ�ʱ�䣿'), '��ʾ',
    mb_iconquestion + mb_yesno + mb_defbutton1) = idyes then
  begin
    if (sp_dryz.FieldByName('yzsx').asstring = '����') and (not
      sp_dryz.FieldByName('tzbz').asboolean) then
    begin
      try
        application.Createform(Tfrm_xgyzzxsj, frm_xgyzzxsj);
        if sp_dryz.fieldbyname('zfrq').asdatetime = 0 then
          frm_xgyzzxsj.maskedit1.text := formatdatetime('yyyy-mm-dd hh:mm:ss',
            frm_func.curr_date())
        else
          frm_xgyzzxsj.maskedit1.text := formatdatetime('yyyy-mm-dd hh:mm:ss',
            sp_dryz.fieldbyname('zfrq').asdatetime);
        frm_xgyzzxsj.maskedit2.text := formatdatetime('yyyy-mm-dd hh:mm:ss',
          sp_dryz.fieldbyname('kdrq').asdatetime);
        p_xgyzzxsj.sfxse := '';
        frm_xgyzzxsj.showmodal;
      finally
        frm_xgyzzxsj.free;
      end;
      if (bz = false) and (sgtzbz = true) then
      begin
        sp_up_yjjssj.close;
        sp_up_yjjssj.Parameters.ParamByName('@ph').Value :=
          sp_dryz.FieldByName('ph').asstring;
        sp_up_yjjssj.Parameters.ParamByName('@id').Value :=
          sp_dryz.FieldByName('id').asinteger;
        sp_up_yjjssj.Parameters.ParamByName('@fzph').Value :=
          sp_dryz.FieldByName('fzph').asstring;
        sp_up_yjjssj.Parameters.ParamByName('@zfrq').Value := tzyzsj;
        sp_up_yjjssj.Parameters.ParamByName('@kdrq').Value := kdyzsj;
        sp_up_yjjssj.Parameters.ParamByName('@czydm').Value := pub_czydm;
        sp_up_yjjssj.Parameters.ParamByName('@qxbz').Value := 0;
        sp_up_yjjssj.Parameters.ParamByName('@sczt').Value := 9;
        sp_up_yjjssj.ExecProc;
        sczt := sp_up_yjjssj.Parameters.ParamByName('@sczt').Value;
        if sczt <> 0 then
          application.MessageBox('�޸�ҽ���ƻ�ֹͣʱ��ֹͣδ�ɹ��������²�������', '��ʾ��', mb_ok);
      end
      else if (bz = false) and (sgtzbz = false) then
      begin
        sp_up_yjjssj.close;
        sp_up_yjjssj.Parameters.ParamByName('@ph').Value :=
          sp_dryz.FieldByName('ph').asstring;
        sp_up_yjjssj.Parameters.ParamByName('@id').Value :=
          sp_dryz.FieldByName('id').asinteger;
        sp_up_yjjssj.Parameters.ParamByName('@fzph').Value :=
          sp_dryz.FieldByName('fzph').asstring;
        sp_up_yjjssj.Parameters.ParamByName('@zfrq').Value := tzyzsj;
        sp_up_yjjssj.Parameters.ParamByName('@kdrq').Value := kdyzsj;
        sp_up_yjjssj.Parameters.ParamByName('@czydm').Value := pub_czydm;
        sp_up_yjjssj.Parameters.ParamByName('@qxbz').Value := 1;
        sp_up_yjjssj.Parameters.ParamByName('@sczt').Value := 9;
        sp_up_yjjssj.ExecProc;
        sczt := sp_up_yjjssj.Parameters.ParamByName('@sczt').Value;
        if sczt <> 0 then
          application.MessageBox('�޸�ҽ���ƻ�ֹͣʱ��ֹͣδ�ɹ��������²�������', '��ʾ��', mb_ok);
      end;
      sp_dryz.Close;
      sp_dryz.Parameters.ParamByName('@zyh').Value := zyh;
      sp_dryz.Parameters.ParamByName('@yzsx').Value := '';
      sp_dryz.Open;
    end
    else
      application.MessageBox('��ʱҽ�����Ѿ�ֹͣҽ�������޸ļƻ�ֹͣʱ�䣡��',
        '��ʾ��', mb_ok);
  end;

end;

procedure Tfrm_yzinput.N7Click(Sender: TObject);
var
  i: integer;
  ypyf, yytj: string;
  mark: boolean;
  kdrq: TDateTime;
begin
  DM_data.qry_pub.Close;
  DM_data.qry_pub.SQL.text := 'select * from sys_czy where dm=' + '''' +
    pub_czydm + '''';
  try
    DM_data.qry_pub.Open;
  except
  end;
  if (DM_data.qry_pub.FieldByName('cfbz').AsBoolean = false) and
    (Trim(sp_dryz.FieldByName('kdys').asstring) <> pub_czydm) then
  begin
    ShowMessage('��ǰ����Ա�޷��Ը���ҽ��������Һ����');
    Exit;
  end;
  if dbgrideh4.SelectedRows.Count > 0 then
  begin
    sp_dryz.GotoBookmark(pointer(dbgrideh4.SelectedRows.Items[0]));
    kdrq := sp_dryz.fieldbyname('kdrq').AsDateTime;
    ypyf := sp_dryz.fieldbyname('ypyf').asstring;
    yytj := sp_dryz.fieldbyname('yytj').asstring;
    if dbgrideh4.SelectedRows.Count = 1 then
      i := 0
    else
      i := 1;
    while (i <= dbgrideh4.SelectedRows.Count - 1) do
    begin
      sp_dryz.GotoBookmark(pointer(dbgrideh4.SelectedRows.Items[i]));
      if sp_dryz.fieldbyname('tzbz').AsBoolean then
      begin
        ShowMessage('��ֹͣ��ҽ�������ٷ���');
        Exit;
      end;
      if kdrq <> sp_dryz.fieldbyname('kdrq').AsDateTime then
      begin
        ShowMessage('��ʼʱ�䲻һ�£����ܷ���ͬһ����');
        Exit;
      end;
      if ypyf <> sp_dryz.fieldbyname('ypyf').asstring then
      begin
        ShowMessage('�÷���һ�£����ܷ���ͬһ����');
        Exit;
      end;
      if yytj <> sp_dryz.fieldbyname('yytj').asstring then
      begin
        ShowMessage('��ҩ;����һ�£����ܷ���ͬһ����');
        Exit;
      end;
      kdrq := sp_dryz.fieldbyname('kdrq').AsDateTime;
      ypyf := sp_dryz.fieldbyname('ypyf').asstring;
      yytj := sp_dryz.fieldbyname('yytj').asstring;
      i := i + 1;
    end;

    if application.MessageBox('�Ƿ�Ҫ����µķ���?', '��ʾ��Ϣ', mb_iconquestion
      + mb_okcancel + mb_defbutton1) = idok then
    begin
      mark := true;
      sp_dryz.GotoBookmark(pointer(dbgrideh4.SelectedRows.Items[0]));
      ypyf := sp_dryz.fieldbyname('ypyf').asstring;
      yytj := sp_dryz.fieldbyname('yytj').asstring;
      while (i <= dbgrideh4.SelectedRows.Count - 1) and mark do
      begin
        sp_dryz.GotoBookmark(pointer(dbgrideh4.SelectedRows.Items[i]));
        if (ypyf <> sp_dryz.fieldbyname('ypyf').asstring) or (yytj <>
          sp_dryz.fieldbyname('yytj').asstring) then
          mark := false
        else
        begin
          ypyf := sp_dryz.fieldbyname('ypyf').asstring;
          yytj := sp_dryz.fieldbyname('yytj').asstring;
        end;
        i := i + 1;
      end;
      if mark then
      begin
        fzbh := GetSJH(pub_czydm);
        for i := 0 to dbgrideh4.SelectedRows.Count - 1 do
        begin
          //          sp_dryz.GotoBookmark( pointer( dbgrideh4.SelectedRows.Items[i] ) );
          //          sp_syfz_cxfz.Close;
          //          sp_syfz_cxfz.Parameters.ParamByName( '@id' ).value := sp_dryz.fieldbyname( 'id' ).asinteger;
          //          sp_syfz_cxfz.Parameters.ParamByName( '@fzph' ).value := fzbh;
          //          sp_syfz_cxfz.Parameters.ParamByName( '@sczt' ).value := 9;
          //          sp_syfz_cxfz.ExecProc;
          sp_dryz.GotoBookmark(pointer(dbgrideh4.SelectedRows.Items[i]));
          DM_data.qry_pub.Close;
          DM_data.qry_pub.SQL.Text := 'update zybl_zyyz set fzph=' + '''' + fzbh
            + '''' + ' where zyh=' + '''' + sp_dryz.FieldByName('zyh').asstring
            +
            '''' +
            ' and id=' + sp_dryz.FieldByName('id').asstring;
          DM_data.qry_pub.ExecSQL;

          // ����˳�� ʹͬһ��������
          frm_func.ReorderInGroup(zyh, fzbh);
        end;
      end
      else
        application.messagebox('ҩƷ�÷�����ҩ;����һ�£����ܷ���һ�飡��',
          '����', mb_ok + mb_iconerror);
    end;
  end
  else
    application.MessageBox('��ѡ����Ҫ���з�����У���', '��ʾ��Ϣ',
      mb_iconinformation + mb_ok);
  sp_dryz.Close;
  sp_dryz.Parameters.ParamByName('@zyh').Value := zyh;
  sp_dryz.Parameters.ParamByName('@yzsx').Value := '';
  sp_dryz.Open;
end;

procedure Tfrm_yzinput.N8Click(Sender: TObject);
begin
  DM_data.qry_pub.Close;
  DM_data.qry_pub.SQL.text := 'select * from sys_czy where dm=' + '''' +
    pub_czydm + '''';
  try
    DM_data.qry_pub.Open;
  except
  end;
  if (DM_data.qry_pub.FieldByName('cfbz').AsBoolean = false) and
    (Trim(sp_dryz.FieldByName('kdys').asstring) <> pub_czydm) then
  begin
    ShowMessage('��ǰ����Ա�޷�ȡ������ҽ����Һ����');
    Exit;
  end;
  if dbgrideh4.SelectedRows.Count > 0 then
  begin
    if sp_dryz.FieldByName('tzbz').AsBoolean then
    begin
      MessageDlg('��ֹͣҽ��������ȡ������', mtInformation, [mbYes], 0);
      Exit;
    end;
    DM_data.qry_pub.Close;
    DM_data.qry_pub.SQL.Text :=
      'SELECT zxsj FROM zybl_zyyz_yzzxqd_mx WHERE yzid = '
      + #39 + sp_dryz.FieldByName('id').AsString + #39;
    try
      DM_data.qry_pub.Open;
    except
    end;
    if Dm_data.qry_pub.recordCount > 0 then
    begin
      MessageDlg('��ִ��ҽ��������ȡ������', mtInformation, [mbYes], 0);
      Exit;
    end;

    if application.MessageBox('�Ƿ�Ҫȡ������?', '��ʾ��Ϣ', mb_iconquestion +
      mb_okcancel + mb_defbutton1) = idok then
    begin
      if sp_dryz.fieldbyname('fzph').asstring <> '' then
      begin
        //        sp_up_qxsyfz.Close;
        //        sp_up_qxsyfz.Parameters.ParamByName( '@fzph' ).value := sp_dryz.fieldbyname( 'fzph' ).asstring;
        //        sp_up_qxsyfz.Parameters.ParamByName( '@sczt' ).value := 9;
        //        sp_up_qxsyfz.ExecProc;
        DM_data.qry_pub.Close;
        DM_data.qry_pub.SQL.Text := 'update zybl_zyyz set fzph='''' where zyh='
          +
          '''' + sp_dryz.FieldByName('zyh').asstring + '''' +
          ' and fzph=' + '''' + sp_dryz.fieldbyname('fzph').asstring + '''';
        DM_data.qry_pub.ExecSQL;
      end;
    end
  end
  else
    application.MessageBox('��ѡ����Ҫ���з�����У���', '��ʾ��Ϣ',
      mb_iconinformation + mb_ok);
  sp_dryz.Close;
  sp_dryz.Parameters.ParamByName('@zyh').Value := zyh;
  sp_dryz.Parameters.ParamByName('@yzsx').Value := '';
  sp_dryz.Open;
end;

procedure Tfrm_yzinput.N9Click(Sender: TObject);
var
  i, y, j, count, x: Integer;
  aControl: TControl;
  v_yytj, v_lb, filter: string;
begin
  with sp_zxjl_cq_dy do
  begin
    Filtered := False;
    Close;
    Parameters.ParamByName('@zyh').Value :=
      Trim(sp_jbxx.fieldbyname('zyh').asstring);
    Parameters.ParamByName('@fs').Value := 1;
    Open;
  end;

  DM_data.qry_pub.close;
  DM_data.qry_pub.sql.text :=
    'select yytj from zybl_zyyz_dytjsz where dyxm=''���Ƽƻ���''';
  try
    DM_data.qry_pub.Open;
  except
  end;
  if DM_data.qry_pub.IsEmpty then
  begin
    v_yytj := '';
  end
  else
  begin
    DM_data.qry_pub.First;
    while not DM_data.qry_pub.eof do
    begin
      v_yytj := v_yytj + '(yytj=' + '''' +
        DM_data.qry_pub.FieldByName('yytj').asstring + '''' +
        ' and  tzrq=null  and kdrq>=' + '''' + formatdatetime('yy-MM-dd',
        frm_func.curr_date) + ' 00:00' + ''')' + ' or ';
      DM_data.qry_pub.Next;
    end;

  end;

  DM_data.qry_pub.close;
  DM_data.qry_pub.sql.text :=
    'select lbmc from zybl_zyyz_dylbsz where dyxm=''���Ƽƻ���''';
  try
    DM_data.qry_pub.Open;
  except
  end;
  if DM_data.qry_pub.IsEmpty then
  begin
    v_lb := '';
  end
  else
  begin
    DM_data.qry_pub.First;
    while not DM_data.qry_pub.eof do
    begin
      v_lb := v_lb + '(lb=' + '''' + DM_data.qry_pub.FieldByName('lbmc').asstring
        + '''' + ' and  tzrq=null and kdrq>=' + '''' +
        formatdatetime('yy-MM-dd',
        frm_func.curr_date) + ' 00:00' + ''')' + ' or ';
      DM_data.qry_pub.Next;
    end;

  end;

  if v_yytj + v_lb = '' then
  begin
    filter := ' 1<>1 ';
  end
  else
  begin
    filter := v_yytj + v_lb + ' ( yytj = ''�������'' )';
  end;

  sp_zxjl_cq_dy.Filter := filter;

  sp_zxjl_cq_dy.Filtered := True;
  if sp_zxjl_cq_dy.IsEmpty then
  begin
    Application.MessageBox('û�м�¼��', '��ʾ', 0 + 48);
    Exit;
  end;
  if not sp_zxjl_cq_dy.IsEmpty then
  begin
    sp_zxjl_cq_dy.First;
    if sp_zxjl_cq_dy.RecordCount mod 9 <> 0 then
      y := trunc(sp_zxjl_cq_dy.RecordCount / 9) + 1
    else
      y := trunc(sp_zxjl_cq_dy.RecordCount / 9);
    count := sp_zxjl_cq_dy.RecordCount;
    for I := 1 to y do
    begin
      for j := 1 to 9 do
      begin
        if count < i * 9 then
        begin
          if j > (9 - (y * 9 - count)) then
          begin
            aControl := QRBand10.FindChildControl('ksrqls' + IntToStr(j - 1));
            if aControl is TQRLabel then
              TQRLabel(aControl).Caption := '';
            aControl := QRBand10.FindChildControl('kdysmcls' + IntToStr(j - 1));
            if aControl is TQRLabel then
              TQRLabel(aControl).Caption := '';
            QRBand10.FindChildControl('QRImagels_' + IntToStr(j)).enabled :=
              false;
            //TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel(QRBand10.FindChildControl('ypyfls_' + IntToStr(j -
              1))).Caption := '';
            TQRLabel(QRBand10.FindChildControl('xmmcls_' + IntToStr(j -
              1))).caption := '';
          end
          else
          begin
            aControl := QRBand10.FindChildControl('ksrqls' + IntToStr(j - 1));
            if aControl is TQRLabel then
              TQRLabel(aControl).Caption :=
                sp_zxjl_cq_dy.FieldByName('ksrq').AsString;
            aControl := QRBand10.FindChildControl('kdysmcls' + IntToStr(j - 1));
            if aControl is TQRLabel then
              TQRLabel(aControl).Caption :=
                sp_zxjl_cq_dy.FieldByName('kdysmc').asstring;
            if sp_zxjl_cq_dy.FieldByName('fzph').asstring <> '' then
            begin
              QRBand10.FindChildControl('QRImagels_' + IntToStr(j)).enabled :=
                true;
              QRBand10.FindChildControl('QRImagels_' + IntToStr(j)).Top :=
                TQRLabel(QRBand10.FindChildControl('xmmcls_' + IntToStr(j -
                1))).top;
              QRBand10.FindChildControl('QRImagels_' + IntToStr(j)).left :=
                QRBand10.FindChildControl('ypyfls_' + IntToStr(j - 1)).left -
                20;
              QRBand10.FindChildControl('QRImagels_' + IntToStr(j)).height :=
                30;
              TQRLabel(QRBand10.FindChildControl('ypyfls_' + IntToStr(j -
                1))).Caption := trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring)
                +
                '  ' + trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
              TQRLabel(QRBand10.FindChildControl('xmmcls_' + IntToStr(j -
                1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring;
            end
            else
            begin
              QRBand10.FindChildControl('QRImagels_' + IntToStr(j)).enabled :=
                false;
              QRBand10.FindChildControl('xmmcls_' + IntToStr(j - 1)).Width :=
                235;
              TQRLabel(QRBand10.FindChildControl('ypyfls_' + IntToStr(j -
                1))).Caption := '';
              TQRLabel(QRBand10.FindChildControl('xmmcls_' + IntToStr(j -
                1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring + ' '
                +
                trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring) + ' ' +
                trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
            end;
            sp_zxjl_cq_dy.Next;
          end;
        end
        else
        begin
          aControl := QRBand10.FindChildControl('ksrqls' + IntToStr(j - 1));
          if aControl is TQRLabel then
            TQRLabel(aControl).Caption :=
              sp_zxjl_cq_dy.FieldByName('ksrq').asstring;
          aControl := QRBand10.FindChildControl('kdysmcls' + IntToStr(j - 1));
          if aControl is TQRLabel then
            TQRLabel(aControl).Caption :=
              sp_zxjl_cq_dy.FieldByName('kdysmc').asstring;
          if sp_zxjl_cq_dy.FieldByName('fzph').asstring <> '' then
          begin
            QRBand10.FindChildControl('QRImagels_' + IntToStr(j)).enabled :=
              true;
            QRBand10.FindChildControl('QRImagels_' + IntToStr(j)).Top :=
              TQRLabel(QRBand10.FindChildControl('xmmcls_' + IntToStr(j -
              1))).top;
            QRBand10.FindChildControl('QRImagels_' + IntToStr(j)).left :=
              QRBand10.FindChildControl('ypyfls_' + IntToStr(j - 1)).left - 20;
            QRBand10.FindChildControl('QRImagels_' + IntToStr(j)).height := 30;
            TQRLabel(QRBand10.FindChildControl('ypyfls_' + IntToStr(j -
              1))).Caption := trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring) +
              '  ' + trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
            TQRLabel(QRBand10.FindChildControl('xmmcls_' + IntToStr(j -
              1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring;
          end
          else
          begin
            QRBand10.FindChildControl('QRImagels_' + IntToStr(j)).enabled :=
              false;
            QRBand10.FindChildControl('xmmcls_' + IntToStr(j - 1)).Width := 235;
            TQRLabel(QRBand10.FindChildControl('ypyfls_' + IntToStr(j -
              1))).Caption := '';
            TQRLabel(QRBand10.FindChildControl('xmmcls_' + IntToStr(j -
              1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring + ' ' +
              trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring) + ' ' +
              trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
          end;
          sp_zxjl_cq_dy.Next;
        end;
      end;
      DM_data.qry_pub.Close;
      DM_data.qry_pub.SQL.text := 'select * from sys_kscwsz where bqdm=' + ''''
        + pub_bqdm + '''' + ' and bcbh=' + '''' +
        trim(sp_jbxx.fieldbyname('bch').asstring) + '''';
      try
        DM_data.qry_pub.Open;
      except
      end;
      QRLabel45.Caption := pub_yymc + '��ʱ����ִ�е�';
      QRLabel46.Caption := '����:' + sp_jbxx.fieldbyname('brxm').asstring;
      QRLabel50.Caption := '������:' +
        Trim(DM_data.qry_pub.FieldByName('yybch').asstring);
      QRLabel51.Caption := '�Ա�:' + sp_jbxx.fieldbyname('brxb').asstring;
      QRLabel52.Caption := '����:' + trim(sp_jbxx.fieldbyname('brnl').asstring);
      QRLabel53.Caption := FormatDateTime('yyyy', frm_func.curr_date) + '��';
      QRLabel67.Caption := '����:' + sp_jbxx.fieldbyname('brxm').asstring +
        '      ' +
        '������:' + Trim(DM_data.qry_pub.FieldByName('yybch').asstring) +
        '      ' +
        '�Ա�:' + sp_jbxx.fieldbyname('brxb').asstring + '      ' +
        '����:' + trim(sp_jbxx.fieldbyname('brnl').asstring) + '  ' + '����:' +
        Trim(sp_jbxx.fieldbyname('tmh').asstring);
      //QuickRep3.Prepare;
      QRLabel58.Caption := '���ҽ����';
      QuickRep5.Preview;
    end;
  end;
end;

procedure Tfrm_yzinput.aptzyzClick(Sender: TObject);
var
  _id, _zhzxsj, _yzsx: string;
  _fzph: string;
  _yzsj: string;
  sczt, i: integer;
  yzid: Integer;
  kdys: string;
begin
  Application.OnMessage := nil;
  dM_data.qry_pub.close;
  DM_data.qry_pub.sql.Text := 'select * from sys_jzzt';
  try
    DM_data.qry_pub.Open;
  except
  end;
  if DM_data.qry_pub.FieldByName('yzzdjfzt').AsBoolean = true then
  begin
    application.MessageBox('���ڽ���ҽ���Զ��Ƿ���ҵ,���Ժ����ԣ�', '��ʾ', 0 +
      48);
    Abort;
  end;
  tzyzqr := 0;

  try
    application.Createform(Tfrm_tzyzsj, frm_tzyzsj);
    p_tzyzsj.sfxse := '';
    frm_tzyzsj.showmodal;
  finally
    frm_tzyzsj.free;
  end;
  if sp_dryz.FieldByName('yzsx').AsString = '��ʱ' then
  begin
    if application.MessageBox('��ʱҽ��ֹͣ,ֻ������ֹͣ���Ƿ������', '��ʾ',
      mb_iconquestion + mb_yesno + mb_defbutton1) = idno then
      abort
  end;
  //ʱ��ֹͣҽ��
  DM_data.qry_pub.close;
  DM_data.qry_pub.SQL.text := 'select * from zybl_zyyz where id=' +
    sp_dryz.FieldByName('id').asstring;
  try
    DM_data.qry_pub.Open;
  except
  end;
  if (sp_dryz.FieldByName('yzsx').AsString = '��ʱ') and
    ((DM_data.qry_pub.FieldByName('shry').AsString = 'δ��')
    or (sp_dryz.FieldByName('tzbz').AsBoolean = true)) then
  begin
    application.MessageBox('��ʱҽ����ȡ�����ʶΪδ�õĲ�����ȡ���ˣ�',
      '��ʾ');
    abort;
  end;

  sp_yzsj.Close;
  sp_yzsj.Parameters.ParamByName('@scyzsj').Value := tzyzsj;
  sp_yzsj.ExecProc;
  _yzsj := formatdatetime('yyyymmdd',
    sp_yzsj.Parameters.ParamByName('@scyzsj').Value);
  //  dt_zxsj.DateTime:= sp_yzsj.Parameters.ParamByName('@scyzsj').Value;

  if tzyzqr = 1 then
  begin
    if not sp_dryz.Active then
      exit;
    if sp_dryz.RecordCount < 1 then
      exit;
    //    datetimetostr(frm_func.curr_date)
    if dbgrideh4.SelectedRows.Count > 0 then
    begin
      for I := 0 to dbgrideh4.SelectedRows.Count - 1 do
      begin
        DBGrideh4.DataSource.DataSet.GotoBookmark(pointer(DBGrideh4.SelectedRows.Items[i]));
        DM_data.qry_pub.Close;
        DM_data.qry_pub.SQL.text :=
          'select a.id yzid,b.zxcs,isnull(c.zxsj,''20000101'') sj from  zybl_zyyz a, ' +
          '(select yzid,count(*) zxcs from zybl_zyyz_yzzxqd_mx where yzid=' +
          sp_dryz.FieldByName('id').asstring +
          ' group by yzid) b,zybl_zyyz_zxjl c' +
          ' where a.id=' +
          sp_dryz.FieldByName('id').asstring +
          ' and  a.id=b.yzid and a.ph*=c.ph  ';
        try
          DM_data.qry_pub.Open;
        except
        end;
        DM_data.qry_pub.Filter := 'zxcs<>0';
        DM_data.qry_pub.Filtered := true;
        //-------------------------calmhawk--��ִ����ʱҽ������ֹͣ-------
        if (not DM_data.qry_pub.IsEmpty) and
          (sp_dryz.FieldByName('yzsx').asstring = '��ʱ') then
        begin
          application.MessageBox('��ִ����ʱҽ��������ֹͣ��', '��ʾ',
            mb_iconquestion + mb_ok);
          abort;
        end;
        DM_data.qry_pub.Filtered := false;
        DM_data.qry_pub.Filter := 'sj=' + #39 + Formatdatetime('yyyyMMdd',
          frm_func.curr_date) + #39;
        DM_data.qry_pub.Filtered := true;

        if (DM_data.qry_pub.RecordCount = 0) and
          (sp_dryz.FieldByName('yzsx').asstring = '����') then
        begin
          if application.MessageBox('��ǰҽ������δ�Ƿѣ��Ƿ����ֹͣ��',
            '��ʾ', mb_iconquestion + mb_yesno + mb_defbutton2) = idno then
          begin
            DM_data.qry_pub.Filtered := false;
            abort;
          end;
        end;
        DM_data.qry_pub.Filtered := false;
        DM_data.qry_pub.Close;
        DM_data.qry_pub.SQL.text := 'select * from sys_czy where dm=' + '''' +
          pub_czydm + '''';
        try
          DM_data.qry_pub.Open;
        except
        end;
        if (DM_data.qry_pub.FieldByName('cfbz').AsBoolean = false) and
          (Trim(sp_dryz.FieldByName('kdys').asstring) <> pub_czydm) and
          (pub_yydm <> '0237') then
        begin
          ShowMessage('��ǰ����Ա�޷�ֹͣ����ҽ��');
        end
        else if sp_dryz.FieldByName('kdrq').AsDateTime >= strtodatetime(tzyzsj)
          then
        begin
          ShowMessage('��ǰҽ����¼�Ŀ������ڴ��ڻ��ߵ���ֹͣ���ڣ�����ֹͣ��');
          sp_dryz.Close;
          sp_dryz.Parameters.ParamByName('@zyh').Value := zyh;
          sp_dryz.Parameters.ParamByName('@yzsx').Value := '';
          sp_dryz.Open;
          Exit;
        end
        else
        begin
          if (not sp_dryz.FieldByName('tzbz').asboolean) and
            (sp_dryz.fieldbyname('zfrq').asdatetime <= 0) then
          begin
            _id := sp_dryz.FieldByName('id').AsString;
            _zhzxsj := sp_dryz.FieldByName('zhzxsj').AsString;
            _yzsx := sp_dryz.FieldByName('yzsx').AsString;
            _fzph := sp_dryz.FieldByName('fzph').AsString;
            if _fzph <> '' then
            begin
              sp_tzyz.Close;
              sp_tzyz.Parameters.ParamByName('@zyh').Value := zyh;
              sp_tzyz.Parameters.ParamByName('@zxsj').Value := _yzsj;
              sp_tzyz.Parameters.ParamByName('@tzyzsj').Value :=
                strtodatetime(tzyzsj);
              sp_tzyz.Parameters.ParamByName('@czydm').Value := pub_czydm;
              sp_tzyz.Parameters.ParamByName('@id').Value := 0;
              sp_tzyz.Parameters.ParamByName('@fzph').Value := _fzph;
              sp_tzyz.Parameters.ParamByName('@sczt').Value := 9;
              sp_tzyz.ExecProc;
              sczt := sp_tzyz.Parameters.ParamByName('@sczt').Value;
              if sczt <> 0 then
                application.MessageBox('ҽ��ֹͣδ�ɹ��������²�������',
                  '��ʾ��', mb_ok);
            end
            else
            begin
              sp_tzyz.Close;
              sp_tzyz.Parameters.ParamByName('@zyh').Value := zyh;
              sp_tzyz.Parameters.ParamByName('@zxsj').Value := _yzsj;
              sp_tzyz.Parameters.ParamByName('@tzyzsj').Value :=
                strtodatetime(tzyzsj);
              sp_tzyz.Parameters.ParamByName('@czydm').Value := pub_czydm;
              sp_tzyz.Parameters.ParamByName('@id').Value := _id;
              sp_tzyz.Parameters.ParamByName('@fzph').Value := '';
              sp_tzyz.Parameters.ParamByName('@sczt').Value := 9;
              sp_tzyz.ExecProc;
              DM_data.qry_pub.close;
              DM_data.qry_pub.SQL.text := 'select * from sys_xt_kg ';
              try
                DM_data.qry_pub.Open;
              except
              end;
              if (DM_data.qry_pub.FieldByName('qyzdjf').AsBoolean = true) and
                (DM_data.qry_pub.FieldByName('yztjjf').AsBoolean = true) then
              begin
                DM_data.qry_pub.close;
                DM_data.qry_pub.SQL.Text := 'select * from zybl_zyyz where id='
                  + sp_dryz.FieldByName('id').asstring;
                try
                  DM_data.qry_pub.Open;
                except
                end;
                yzid := sp_dryz.FieldByName('id').AsInteger;
                kdys := DM_data.qry_pub.FieldByName('kdys').asstring;
                if sp_dryz.FieldByName('yzsx').AsString = '��ʱ' then
                  yzqxtf(yzid, kdys);
              end;
              sczt := sp_tzyz.Parameters.ParamByName('@sczt').Value;
              if sczt <> 0 then
                application.MessageBox('ҽ��ֹͣδ�ɹ��������²�������',
                  '��ʾ��', mb_ok);
            end;
            //              if ( _zhzxsj <> '' ) and ( _yzsx = '��ʱ' ) and (( sp_dryz.FieldByName('lb').asstring = 'ҩƷ' )
            //              or  ( sp_dryz.FieldByName('lb').asstring = '��ҩ' ) or  ( sp_dryz.FieldByName('lb').asstring = '����' )) then
            //              begin
            //                if _fzph <> '' then
            //                  application.MessageBox( pchar( '��' + #13 + sp_dryz.FieldByName( 'xmmc' ).AsString + #13 + '������Һ���Ѿ�ִ�мƷѣ�����д��Ӧ֪ͨ�칫��ʿ�˷ѣ�����' ), '��ʾ', 0 + 48 )
            //                else
            //                  application.MessageBox( pchar( '��' + #13 + sp_dryz.FieldByName( 'xmmc' ).AsString + #13 + '�Ѿ�ִ�мƷѣ�����д��Ӧ֪ͨ�칫��ʿ�˷ѣ�����' ), '��ʾ', 0 + 48 );
            //              end;
          end;
        end;
      end;
    end
    else
    begin
      application.MessageBox('����ҽ��ҽ��ֹͣ����ѡ������һ���������²�������',
        '��ʾ��', mb_ok);
      abort;
    end;

    sp_dryz.Close;
    sp_dryz.Parameters.ParamByName('@zyh').Value := zyh;
    sp_dryz.Parameters.ParamByName('@yzsx').Value := '';
    sp_dryz.Open;
  end;
end;
{var
  _ph,_tsxx: string;
begin
  if not sp_dryz.Active then
    exit;
  if sp_dryz.RecordCount < 1 then
    exit;
  _ph := sp_dryz.FieldByName('ph').AsString;
  qru_yzxg.close;
  qru_yzxg.sql.text := 'update zybl_zyyz set tzbz = 1,tzrq = ' +
    #39 + datetimetostr(frm_func.curr_date) + #39 + ' ,tzry = ' + #39 + pub_czydm + #39 +
    ' where ph = ' + #39 + _ph + #39;
  qru_yzxg.ExecSQL;
  sp_cx_tzyz_xx.Close;
  sp_cx_tzyz_xx.Parameters.ParamByName('@ph').value:=_ph;
  sp_cx_tzyz_xx.Parameters.ParamByName('@xmdm').value:='';
  sp_cx_tzyz_xx.open;
  _tsxx:=sp_cx_tzyz_xx.FieldByName('yxxm').asstring;
  if _tsxx<>'' then
    application.MessageBox(pchar('��'+#13+_tsxx+#13+'�Ѿ�ִ�мƷѣ�����д��Ӧ֪ͨ�칫��ʿ�˷ѣ�����'), '��ʾ', 0 + 48);

  sp_dryz.Close;
  sp_dryz.Parameters.ParamByName('@zyh').Value := zyh;
  sp_dryz.Parameters.ParamByName('@yzsx').Value := '';
  sp_dryz.Open;
end;  }

procedure Tfrm_yzinput.qry_ysAfterScroll(DataSet: TDataSet);
begin
  if (yzlb <> 'ҩƷ') and (yzlb <> 'ҩһ') and (qry_yz.Active) then
  begin
    if qry_yz.RecordCount > 0 then
    begin
      qry_yz.FieldByName('yplb').Value := '';
      qry_yz.FieldByName('yplsj').Value := 0;
      qry_yz.FieldByName('gg').Value := '';
    end;
  end;
end;

procedure Tfrm_yzinput.qry_yzAfterInsert(DataSet: TDataSet);
begin
  if (qry_yz.State = dsInsert) then
  begin
    qry_yz.FieldByName('yzsx').Value := '����';
    if yzsx = '��ʱ' then
    begin
      qry_yz.FieldByName('yzsx').Value := '��ʱ';
    end;
    qry_yz.FieldByName('lb').Value := yzlb;
    qry_yz.FieldByName('kdys').Value := yzys;
  end;
end;

procedure Tfrm_yzinput.qry_yzAfterOpen(DataSet: TDataSet);
begin
  createrect(myrect, qry_yz, grid_yzlr, 6, 7, 14);
  sp_get_maxxh.close;
  sp_get_maxxh.parameters.parambyname('@zyh').value := zyh;
  sp_get_maxxh.open;
  maxxh := sp_get_maxxh.fieldbyname('maxxh').asinteger;
end;

procedure tfrm_yzinput.createrect(var myrect1: TTmyrect; dataset_rect:
  Tcustomadodataset; grid_yzlr1: Tdbgrideh; x1, x2, x3: integer);
var
  yzph: string;
  i, n: integer;
begin
  try
    dataset_rect.DisableControls;
    rectno := 0;
    dataset_rect.first;
    initarray(myrect1);
    i := 1;

    while not dataset_rect.Eof do
    begin
      if dataset_rect.FieldByName('fzph').AsString <> '' then
      begin
        if (yzph <> '') and (myrect1[rectno].sl = 1) and (yzph <>
          dataset_rect.FieldByName('fzph').AsString) then
        begin
          myrect1[rectno].bottom := grid_yzlr1.CellRect(x1, i - 1).bottom;
          myrect1[rectno].Gbottom := grid_yzlr1.CellRect(x1, i - 1).bottom;
          //        myrect_cx[rectno].sl:=myrect_cx[rectno].sl+1;
          yzph := '';
        end;
        if yzph = dataset_rect.FieldByName('fzph').AsString then
        begin
          myrect1[rectno].bottom := grid_yzlr1.CellRect(x1, i).bottom;
          myrect1[rectno].Gbottom := grid_yzlr1.CellRect(1, i).bottom;
          myrect1[rectno].sl := myrect1[rectno].sl + 1;

        end
        else
        begin
          rectno := rectno + 1;
          myrect1[rectno].sl := 1;
          myrect1[rectno].ph := dataset_rect.FieldByName('fzph').AsString;

          myrect1[rectno].left := grid_yzlr1.CellRect(x1, i).left;
          myrect1[rectno].right := grid_yzlr1.CellRect(x2, i).right;
          myrect1[rectno].top := grid_yzlr1.CellRect(x1, i).top;

          myrect1[rectno].Gleft := grid_yzlr1.CellRect(1, i).left;
          myrect1[rectno].Gright := grid_yzlr1.CellRect(x3, i).right;
          if grid_yzlr1.CellRect(x3, i).right = 0 then
            for n := 0 to x3 - 1 do
              myrect1[rectno].Gright := myrect1[rectno].Gright +
                grid_yzlr1.Columns[n].Width;
          myrect1[rectno].Gtop := grid_yzlr1.CellRect(1, i).top;
          myrect1[rectno].yf := dataset_rect.FieldByName('ypyf').AsString;
          myrect1[rectno].tj := dataset_rect.FieldByName('yytj').AsString;
          myrect1[rectno].height := grid_yzlr1.CellRect(x1, i).bottom -
            grid_yzlr1.CellRect(x1, i).top;
          yzph := dataset_rect.FieldByName('fzph').AsString;
        end;
      end
      else
      begin
        if (yzph <> '') and (myrect1[rectno].sl = 1) then
        begin
          myrect1[rectno].bottom := grid_yzlr1.CellRect(x1, i - 1).bottom;
          myrect1[rectno].Gbottom := grid_yzlr1.CellRect(x1, i - 1).bottom;
          //        myrect_cx[rectno].sl:=myrect_cx[rectno].sl+1;
          yzph := '';
        end;
        if (yzph <> '') and (myrect1[rectno].sl > 1) then
          yzph := '';

      end;
      dataset_rect.Next;
      i := dataset_rect.RecNo;
    end;
    if yzph <> '' then
    begin
      myrect1[rectno].bottom := grid_yzlr1.CellRect(x1, i).bottom;
      myrect1[rectno].Gbottom := grid_yzlr1.CellRect(x1, i).bottom;
      //        myrect_cx[rectno].sl:=myrect_cx[rectno].sl+1;
      yzph := '';
    end;
    dataset_rect.EnableControls;

  except

  end;

end;

procedure Tfrm_yzinput.qry_yzAfterScroll(DataSet: TDataSet);
begin
  zdkz;
end;

procedure Tfrm_yzinput.qry_yzBeforeInsert(DataSet: TDataSet);
begin
  if qry_yz.RecordCount > 0 then
    if trim(qry_yz.FieldByName('xmmc').AsString) = '' then
    begin
      qry_yz.Delete;
    end;
end;

procedure Tfrm_yzinput.qry_yzCalcFields(DataSet: TDataSet);
begin
  qry_yz['je']:=qry_yz['sl']*qry_yz['yplsj'];
end;

procedure Tfrm_yzinput.qry_yzslSetText(Sender: TField; const Text: string);
begin
  if trim(Text)='' then
  begin
    Sender.value:=1;
  end
  else
  begin
    Sender.Value:=StrToInt(Text);
  end;
end;

procedure Tfrm_yzinput.grid_yzDblClick(Sender: TObject);
begin
  recno := ScrollBox4.VertScrollBar.Position;
  grid_yzlr.SetFocus;
  ScrollBox4.VertScrollBar.Position := recno;
  grid_yz.Visible := false;
end;

procedure Tfrm_yzinput.grid_yzExit(Sender: TObject);
begin
  DM_data.qry_pub.close;
  DM_data.qry_pub.SQL.text := 'select * from sys_yzxm where xmdm=' + '''' +
    sp_cx_yp_yz.FieldByName('xmdm').asstring + '''';
  try
    DM_data.qry_pub.Open;
  except
  end;
  if DM_data.qry_pub.FieldByName('jsyz').AsBoolean = true then
  begin
    DM_data.qry_pub.close;
    DM_data.qry_pub.SQL.text := 'select * from sys_czy where dm=' + '''' +
      pub_czydm + '''' + ' and jslys=1';
    try
      DM_data.qry_pub.Open;
    except
    end;
    if DM_data.qry_pub.IsEmpty then
    begin
      Application.MessageBox('�Ǿ����ҽ�����ܿ�������ҽ��', '����', MB_OK +
        MB_ICONSTOP);
      Exit;
    end;

  end;
  qtjs;
end;

procedure Tfrm_yzinput.grid_yzKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    grid_yz.Visible := false;
    if (qry_yz.FieldByName('lb').AsString <> '����') and
      (qry_yz.FieldByName('lb').AsString <> '����') and
      (qry_yz.FieldByName('lb').AsString <> '���') then
      grid_yzlr.SelectedIndex := 7
    else if qry_yz.FieldByName('lb').AsString = '����' then
      grid_yzlr.SelectedIndex := 9
    else
      grid_yzlr.SelectedIndex := 5;
    //    if Trim( sp_cx_yp_yz.FieldByName( 'zylsj' ).asstring ) = '' then
    //      grid_yzlr.SelectedIndex := 2;
    recno := ScrollBox4.VertScrollBar.Position;
    grid_yzlr.SetFocus;
    ScrollBox4.VertScrollBar.Position := recno;
  end;
  if key = #27 then
  begin
    recno := ScrollBox4.VertScrollBar.Position;
    grid_yzlr.SetFocus;
    ScrollBox4.VertScrollBar.Position := recno;
    grid_yz.Visible := false;
  end;
end;

procedure Tfrm_yzinput.grid_yzlr_ColExit;
begin
  if (qry_yz.State <> dsEdit) and (qry_yz.State <> dsInsert) then
  begin
    qry_yz.Edit;
  end;
  if tzbz <> 0 then
  begin

    case grid_yzlr.SelectedIndex of
      0: yzsxsr(kzbz);
      1: yzlbsr(kzbz);
      2: yzXmsr(kzbz); //��ĿҩƷ���������
      3: sljc(kzbz); //�������
      5: sljc(kzbz); //�÷�

      6: yytjjs(kzbz); //��ҩ;��
      7: sljc(kzbz); //�������
      //      8: yldwjc(kzbz); //������λ���
      9: yznew(kzbz); //������λ���
      10: czkscl(kzbz);
      11: yzNew(kzbz);
      12: yzNew(kzbz);
      13: yzNew(kzbz);
      14: yzNew(kzbz);
      15: yzNew(kzbz);
      16: xhcl(kzbz);
    end;
  end;
end;

procedure Tfrm_yzinput.MenuItem10Click(Sender: TObject);
var
  v_lb, v_yytj, fliter: string;
begin
  Application.OnMessage := nil;
  with sp_zxjl_cq_dy do
  begin
    Filtered := False;
    Close;
    Parameters.ParamByName('@zyh').Value :=
      Trim(sp_jbxx.fieldbyname('zyh').asstring);
    Parameters.ParamByName('@fs').Value := 0;
    Open;
  end;
  //sp_zxjl_cq_dy.Filtered := False;
  DM_data.qry_pub.close;
  DM_data.qry_pub.sql.text :=
    'select yytj from zybl_zyyz_dytjsz where dyxm=''���Ƽƻ���''';
  try
    DM_data.qry_pub.Open;
  except
  end;
  if DM_data.qry_pub.IsEmpty then
  begin
    v_yytj := '';
  end
  else
  begin
    DM_data.qry_pub.First;
    while not DM_data.qry_pub.eof do
    begin
      v_yytj := v_yytj + '(yytj=' + '''' +
        DM_data.qry_pub.FieldByName('yytj').asstring + '''' + ' and  tzrq=null )'
        +
        ' or ';
      DM_data.qry_pub.Next;
    end;

  end;
  DM_data.qry_pub.close;
  DM_data.qry_pub.sql.text :=
    'select lbmc from zybl_zyyz_dylbsz where dyxm=''���Ƽƻ���''';
  try
    DM_data.qry_pub.Open;
  except
  end;
  if DM_data.qry_pub.IsEmpty then
  begin
    v_lb := '';
  end
  else
  begin
    DM_data.qry_pub.First;
    while not DM_data.qry_pub.eof do
    begin
      v_lb := v_lb + '(lb=' + '''' + DM_data.qry_pub.FieldByName('lbmc').asstring
        + '''' + ' and  tzrq=null )' + ' or ';
      DM_data.qry_pub.Next;
    end;

  end;

  if v_yytj + v_lb = '' then
  begin
    fliter := ' 1<>1 ';
  end
  else
  begin
    fliter := v_yytj + v_lb + ' ( yytj=''�������'' )';
  end;

  sp_zxjl_cq_dy.Filter := fliter;
  sp_zxjl_cq_dy.Filtered := True;
  if sp_zxjl_cq_dy.IsEmpty then
  begin
    Application.MessageBox('û�м�¼��', '��ʾ', 0 + 48);
    Exit;
  end;
  application.CreateForm(Tfrm_zxdxd, frm_zxdxd);
  try
    frm_zxdxd.ShowModal;
  finally
    frm_zxdxd.free;
  end;
end;

procedure Tfrm_yzinput.MenuItem11Click(Sender: TObject);
var
  i, y, j, count, x: Integer;
  aControl: TControl;
begin
  with sp_zxjl_cq_dy do
  begin
    Filtered := False;
    Close;
    Parameters.ParamByName('@zyh').Value :=
      Trim(sp_jbxx.fieldbyname('zyh').asstring);
    Parameters.ParamByName('@fs').Value := 0;
    Open;
  end;
  //sp_zxjl_cq_dy.Filtered := False;
  sp_zxjl_cq_dy.Filter := 'tzrq=null ';
  sp_zxjl_cq_dy.Filtered := True;
  if sp_zxjl_cq_dy.IsEmpty then
  begin
    Application.MessageBox('û�м�¼��', '��ʾ', 0 + 48);
    Exit;
  end;
  if not sp_zxjl_cq_dy.IsEmpty then
  begin
    //if (zzdx='A4') or (zzdx='B5') then
    //begin
    sp_zxjl_cq_dy.First;
    if sp_zxjl_cq_dy.RecordCount mod 9 <> 0 then
      y := trunc(sp_zxjl_cq_dy.RecordCount / 9) + 1
    else
      y := trunc(sp_zxjl_cq_dy.RecordCount / 9);
    count := sp_zxjl_cq_dy.RecordCount;
    for I := 1 to y do
    begin
      for j := 1 to 9 do
      begin
        if count < i * 9 then
        begin
          if j > (9 - (y * 9 - count)) then
          begin
            aControl := QRBand10.FindChildControl('ksrqls' + IntToStr(j - 1));
            if aControl is TQRLabel then
              TQRLabel(aControl).Caption := '';
            aControl := QRBand10.FindChildControl('kdysmcls' + IntToStr(j - 1));
            if aControl is TQRLabel then
              TQRLabel(aControl).Caption := '';
            QRBand10.FindChildControl('QRImagels_' + IntToStr(j)).enabled :=
              false;
            //TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel(QRBand10.FindChildControl('ypyfls_' + IntToStr(j -
              1))).Caption := '';
            TQRLabel(QRBand10.FindChildControl('xmmcls_' + IntToStr(j -
              1))).caption := '';
          end
          else
          begin
            aControl := QRBand10.FindChildControl('ksrqls' + IntToStr(j - 1));
            if aControl is TQRLabel then
              TQRLabel(aControl).Caption :=
                sp_zxjl_cq_dy.FieldByName('ksrq').AsString;
            aControl := QRBand10.FindChildControl('kdysmcls' + IntToStr(j - 1));
            if aControl is TQRLabel then
              TQRLabel(aControl).Caption :=
                sp_zxjl_cq_dy.FieldByName('kdysmc').asstring;
            if sp_zxjl_cq_dy.FieldByName('fzph').asstring <> '' then
            begin
              QRBand10.FindChildControl('QRImagels_' + IntToStr(j)).enabled :=
                true;
              QRBand10.FindChildControl('QRImagels_' + IntToStr(j)).Top :=
                TQRLabel(QRBand10.FindChildControl('xmmcls_' + IntToStr(j -
                1))).top;
              QRBand10.FindChildControl('QRImagels_' + IntToStr(j)).left :=
                QRBand10.FindChildControl('ypyfls_' + IntToStr(j - 1)).left -
                20;
              QRBand10.FindChildControl('QRImagels_' + IntToStr(j)).height :=
                30;
              TQRLabel(QRBand10.FindChildControl('ypyfls_' + IntToStr(j -
                1))).Caption := trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring)
                +
                '  ' + trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
              TQRLabel(QRBand10.FindChildControl('xmmcls_' + IntToStr(j -
                1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring;
            end
            else
            begin
              QRBand10.FindChildControl('QRImagels_' + IntToStr(j)).enabled :=
                false;
              QRBand10.FindChildControl('xmmcls_' + IntToStr(j - 1)).Width :=
                235;
              TQRLabel(QRBand10.FindChildControl('ypyfls_' + IntToStr(j -
                1))).Caption := '';
              TQRLabel(QRBand10.FindChildControl('xmmcls_' + IntToStr(j -
                1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring + ' '
                +
                trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring) + ' ' +
                trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
            end;
            sp_zxjl_cq_dy.Next;
          end;
        end
        else
        begin
          aControl := QRBand10.FindChildControl('ksrqls' + IntToStr(j - 1));
          if aControl is TQRLabel then
            TQRLabel(aControl).Caption :=
              sp_zxjl_cq_dy.FieldByName('ksrq').asstring;
          aControl := QRBand10.FindChildControl('kdysmcls' + IntToStr(j - 1));
          if aControl is TQRLabel then
            TQRLabel(aControl).Caption :=
              sp_zxjl_cq_dy.FieldByName('kdysmc').asstring;
          if sp_zxjl_cq_dy.FieldByName('fzph').asstring <> '' then
          begin
            QRBand10.FindChildControl('QRImagels_' + IntToStr(j)).enabled :=
              true;
            QRBand10.FindChildControl('QRImagels_' + IntToStr(j)).Top :=
              TQRLabel(QRBand10.FindChildControl('xmmcls_' + IntToStr(j -
              1))).top;
            QRBand10.FindChildControl('QRImagels_' + IntToStr(j)).left :=
              QRBand10.FindChildControl('ypyfls_' + IntToStr(j - 1)).left - 20;
            QRBand10.FindChildControl('QRImagels_' + IntToStr(j)).height := 30;
            TQRLabel(QRBand10.FindChildControl('ypyfls_' + IntToStr(j -
              1))).Caption := trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring) +
              '  ' + trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
            TQRLabel(QRBand10.FindChildControl('xmmcls_' + IntToStr(j -
              1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring;
          end
          else
          begin
            QRBand10.FindChildControl('QRImagels_' + IntToStr(j)).enabled :=
              false;
            QRBand10.FindChildControl('xmmcls_' + IntToStr(j - 1)).Width := 235;
            TQRLabel(QRBand10.FindChildControl('ypyfls_' + IntToStr(j -
              1))).Caption := '';
            TQRLabel(QRBand10.FindChildControl('xmmcls_' + IntToStr(j -
              1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring + ' ' +
              trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring) + ' ' +
              trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
          end;
          sp_zxjl_cq_dy.Next;
        end;
      end;
      DM_data.qry_pub.Close;
      DM_data.qry_pub.SQL.text := 'select * from sys_kscwsz where bqdm=' + ''''
        + pub_bqdm + '''' + ' and bcbh=' + '''' +
        trim(sp_jbxx.fieldbyname('bch').asstring) + '''';
      try
        DM_data.qry_pub.Open;
      except
      end;
      QRLabel45.Caption := pub_yymc + '���ڲ鷿��';
      QRLabel46.Caption := '����:' + sp_jbxx.fieldbyname('brxm').asstring;
      QRLabel50.Caption := '������:' +
        Trim(DM_data.qry_pub.FieldByName('yybch').asstring);
      QRLabel51.Caption := '�Ա�:' + sp_jbxx.fieldbyname('brxb').asstring;
      QRLabel52.Caption := '����:' + trim(sp_jbxx.fieldbyname('brnl').asstring);
      QRLabel53.Caption := FormatDateTime('yyyy', frm_func.curr_date) + '��';
      QRLabel67.Caption := '����:' + Trim(sp_jbxx.fieldbyname('brxm').asstring) +
        '  ' +
         Trim(DM_data.qry_pub.FieldByName('yybch').asstring) + '��'+
        '  ' +
         sp_jbxx.fieldbyname('brxb').asstring + '  ' +
         trim(sp_jbxx.fieldbyname('brnl').asstring) + '  ' + '����:' +
        Trim(sp_jbxx.fieldbyname('tmh').asstring);
      //QuickRep3.Prepare;
      QRLabel58.Caption := '���ҽ����';
      QuickRep5.Preview;
    end;
    //   end
    //   else
    //   begin
    //      sp_zxjl_cq_dy.First;
    //      if sp_zxjl_cq_dy.RecordCount mod 8 <> 0 then
    //        y := trunc( sp_zxjl_cq_dy.RecordCount / 8 ) + 1
    //      else
    //        y := trunc( sp_zxjl_cq_dy.RecordCount / 8 );
    //      count := sp_zxjl_cq_dy.RecordCount;
    //      for I := 1 to y do
    //      begin
    //        for j := 1 to 8 do
    //        begin
    //          if count < i * 8 then
    //          begin
    //            if j > ( 8 - ( y * 8 - count ) ) then
    //            begin
    //              aControl := qrbndcqsy.FindChildControl( 'cqzsksrq' + IntToStr( j - 1 ) );
    //              if aControl is TQRLabel then
    //                TQRLabel( aControl ).Caption := '';
    //              aControl := qrbndcqsy.FindChildControl( 'cqzskdys' + IntToStr( j - 1 ) );
    //              if aControl is TQRLabel then
    //                TQRLabel( aControl ).Caption := '';
    //              qrbndcqsy.FindChildControl( 'QRImagezs' + IntToStr( j ) ).enabled := false;
    //              //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
    //              TQRLabel( qrbndcqsy.FindChildControl( 'cqzsypyf' + IntToStr( j - 1 ) ) ).Caption := '';
    //              //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
    //              TQRLabel( qrbndcqsy.FindChildControl( 'cqzsxmmc' + IntToStr( j - 1 ) ) ).caption := '';
    //            end
    //            else
    //            begin
    //              aControl := qrbndcqsy.FindChildControl( 'cqzsksrq' + IntToStr( j - 1 ) );
    //              if aControl is TQRLabel then
    //                TQRLabel( aControl ).Caption := sp_zxjl_cq_dy.FieldByName( 'ksrq' ).AsString;
    //              aControl := qrbndcqsy.FindChildControl( 'cqzskdys' + IntToStr( j - 1 ) );
    //              if aControl is TQRLabel then
    //                TQRLabel( aControl ).Caption := sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;
    //              if sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
    //              begin
    //                x := ( length( sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
    //                qrbndcqsy.FindChildControl( 'QRImagezs' + IntToStr( j ) ).enabled := true;
    //                qrbndcqsy.FindChildControl( 'QRImagezs' + IntToStr( j ) ).Top := TQRLabel( qrbndcqsy.FindChildControl( 'cqzsxmmc' + IntToStr( j - 1 ) ) ).top;
    //                qrbndcqsy.FindChildControl( 'QRImagezs' + IntToStr( j ) ).left := qrbndcqsy.FindChildControl( 'cqzsypyf' + IntToStr( j - 1 ) ).left - 20;
    //                qrbndcqsy.FindChildControl( 'QRImagezs' + IntToStr( j ) ).height := 30;
    //                TQRLabel( qrbndcqsy.FindChildControl( 'cqzsypyf' + IntToStr( j - 1 ) ) ).Caption := trim( sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
    //                TQRLabel( qrbndcqsy.FindChildControl( 'cqzsxmmc' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
    //                //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
    //              end
    //              else
    //              begin
    //                qrbndcqsy.FindChildControl( 'QRImagezs' + IntToStr( j ) ).enabled := false;
    //                qrbndcqsy.FindChildControl( 'cqzsxmmc' + IntToStr( j - 1 ) ).Width := 235;
    //                TQRLabel( qrbndcqsy.FindChildControl( 'cqzsypyf' + IntToStr( j - 1 ) ) ).Caption := '';
    //                TQRLabel( qrbndcqsy.FindChildControl( 'cqzsxmmc' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + ' ' + trim( sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + ' ' + trim( sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
    //                // TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
    //              end;
    //              sp_zxjl_cq_dy.Next;
    //            end;
    //          end
    //          else
    //          begin
    //            aControl := qrbndcqsy.FindChildControl( 'cqzsksrq' + IntToStr( j - 1 ) );
    //            if aControl is TQRLabel then
    //              TQRLabel( aControl ).Caption := sp_zxjl_cq_dy.FieldByName( 'ksrq' ).asstring;
    //            aControl := qrbndcqsy.FindChildControl( 'cqzskdys' + IntToStr( j - 1 ) );
    //            if aControl is TQRLabel then
    //              TQRLabel( aControl ).Caption := sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;
    //            if sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
    //            begin
    //              x := ( length( sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
    //              qrbndcqsy.FindChildControl( 'QRImagezs' + IntToStr( j ) ).enabled := true;
    //              qrbndcqsy.FindChildControl( 'QRImagezs' + IntToStr( j ) ).Top := TQRLabel( qrbndcqsy.FindChildControl( 'cqzsxmmc' + IntToStr( j - 1 ) ) ).top;
    //              qrbndcqsy.FindChildControl( 'QRImagezs' + IntToStr( j ) ).left := qrbndcqsy.FindChildControl( 'cqzsypyf' + IntToStr( j - 1 ) ).left - 20;
    //              qrbndcqsy.FindChildControl( 'QRImagezs' + IntToStr( j ) ).height := 30;
    //              TQRLabel( qrbndcqsy.FindChildControl( 'cqzsypyf' + IntToStr( j - 1 ) ) ).Caption := trim( sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
    //              TQRLabel( qrbndcqsy.FindChildControl( 'cqzsxmmc' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
    //              //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
    //            end
    //            else
    //            begin
    //              qrbndcqsy.FindChildControl( 'QRImagezs' + IntToStr( j ) ).enabled := false;
    //              qrbndcqsy.FindChildControl( 'cqzsxmmc' + IntToStr( j - 1 ) ).Width := 235;
    //              TQRLabel( qrbndcqsy.FindChildControl( 'cqzsypyf' + IntToStr( j - 1 ) ) ).Caption := '';
    //              TQRLabel( qrbndcqsy.FindChildControl( 'cqzsxmmc' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + ' ' + trim( sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + ' ' + trim( sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
    //              //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
    //            end;
    //            sp_zxjl_cq_dy.Next;
    //          end;
    //        end;
    //        QRcqzsmc.Caption := pub_yymc + '���ڲ鷿��';
    //        DM_data.qry_pub.Close;
    //        DM_data.qry_pub.SQL.text := 'select * from sys_kscwsz where bqdm=' + '''' + pub_bqdm + '''' + ' and bcbh=' + '''' + trim( sp_jbxx.fieldbyname( 'bch' ).asstring ) + '''';
    //        DM_data.qry_pub.Open;
    //
    //        QRcqzsxm.Caption := '����:' + sp_jbxx.fieldbyname( 'brxm' ).asstring;
    //        QRcqzsbch.Caption := '������:' + Trim( DM_data.qry_pub.FieldByName( 'yybch' ).asstring );
    //        QRcqzsxb.Caption := '�Ա�:' + sp_jbxx.fieldbyname( 'brxb' ).asstring;
    //        QRcqzsnl.Caption := '����:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
    //        QRcqzsn.Caption := FormatDateTime( 'yyyy', frm_func.curr_date ) + '��';
    //        QRcqzsxmxm.Caption:= '����:' + sp_jbxx.fieldbyname( 'brxm' ).asstring;
    //        QRcqzsbchbch.Caption:= '������:' + Trim( DM_data.qry_pub.FieldByName( 'yybch' ).asstring );
    //        QRcqzskhkh.Caption:= '����:' + Trim( sp_jbxx.fieldbyname( 'tmh' ).asstring  );
    //
    //        //QRLabel62jy.Caption := '����:' + sp_jbxx.fieldbyname( 'brxm' ).asstring + '      ' +
    //        //  '������:' + Trim( DM_data.qry_pub.FieldByName( 'yybch' ).asstring ) + '      '+
    //        //  '����:' + Trim( sp_jbxx.fieldbyname( 'tmh' ).asstring  );
    //        //'�Ա�:' + sp_jbxx.fieldbyname( 'brxb' ).asstring +'      '+
    //        //'����:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
    ////QuickRep3.Prepare;
    //        //QRLabel71.Caption := '���ҽ��:';
    //        qckrp2.Preview;
    //      end;
    //    end;
  end;
end;

procedure Tfrm_yzinput.MenuItem12Click(Sender: TObject);
var
  i, y, j, count, x: Integer;
  aControl: TControl;
begin
  with sp_zxjl_cq_dy do
  begin
    Filtered := False;
    Close;
    Parameters.ParamByName('@zyh').Value :=
      Trim(sp_jbxx.fieldbyname('zyh').asstring);
    Parameters.ParamByName('@fs').Value := 1;
    Open;
  end;
  //sp_zxjl_cq_dy.Filtered := False;
  sp_zxjl_cq_dy.Filter := 'tzrq=null ';
  sp_zxjl_cq_dy.Filtered := True;
  if sp_zxjl_cq_dy.IsEmpty then
  begin
    Application.MessageBox('û�м�¼��', '��ʾ', 0 + 48);
    Exit;
  end;
  if not sp_zxjl_cq_dy.IsEmpty then
  begin
    sp_zxjl_cq_dy.First;
    if sp_zxjl_cq_dy.RecordCount mod 9 <> 0 then
      y := trunc(sp_zxjl_cq_dy.RecordCount / 9) + 1
    else
      y := trunc(sp_zxjl_cq_dy.RecordCount / 9);
    count := sp_zxjl_cq_dy.RecordCount;
    for I := 1 to y do
    begin
      for j := 1 to 9 do
      begin
        if count < i * 9 then
        begin
          if j > (9 - (y * 9 - count)) then
          begin
            aControl := QRBand10.FindChildControl('ksrqls' + IntToStr(j - 1));
            if aControl is TQRLabel then
              TQRLabel(aControl).Caption := '';
            aControl := QRBand10.FindChildControl('kdysmcls' + IntToStr(j - 1));
            if aControl is TQRLabel then
              TQRLabel(aControl).Caption := '';
            QRBand10.FindChildControl('QRImagels_' + IntToStr(j)).enabled :=
              false;
            //TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel(QRBand10.FindChildControl('ypyfls_' + IntToStr(j -
              1))).Caption := '';
            TQRLabel(QRBand10.FindChildControl('xmmcls_' + IntToStr(j -
              1))).caption := '';
          end
          else
          begin
            aControl := QRBand10.FindChildControl('ksrqls' + IntToStr(j - 1));
            if aControl is TQRLabel then
              TQRLabel(aControl).Caption :=
                sp_zxjl_cq_dy.FieldByName('ksrq').AsString;
            aControl := QRBand10.FindChildControl('kdysmcls' + IntToStr(j - 1));
            if aControl is TQRLabel then
              TQRLabel(aControl).Caption :=
                sp_zxjl_cq_dy.FieldByName('kdysmc').asstring;
            if sp_zxjl_cq_dy.FieldByName('fzph').asstring <> '' then
            begin
              QRBand10.FindChildControl('QRImagels_' + IntToStr(j)).enabled :=
                true;
              QRBand10.FindChildControl('QRImagels_' + IntToStr(j)).Top :=
                TQRLabel(QRBand10.FindChildControl('xmmcls_' + IntToStr(j -
                1))).top;
              QRBand10.FindChildControl('QRImagels_' + IntToStr(j)).left :=
                QRBand10.FindChildControl('ypyfls_' + IntToStr(j - 1)).left -
                20;
              QRBand10.FindChildControl('QRImagels_' + IntToStr(j)).height :=
                30;
              TQRLabel(QRBand10.FindChildControl('ypyfls_' + IntToStr(j -
                1))).Caption := trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring)
                +
                '  ' + trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
              TQRLabel(QRBand10.FindChildControl('xmmcls_' + IntToStr(j -
                1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring;
            end
            else
            begin
              QRBand10.FindChildControl('QRImagels_' + IntToStr(j)).enabled :=
                false;
              QRBand10.FindChildControl('xmmcls_' + IntToStr(j - 1)).Width :=
                235;
              TQRLabel(QRBand10.FindChildControl('ypyfls_' + IntToStr(j -
                1))).Caption := '';
              TQRLabel(QRBand10.FindChildControl('xmmcls_' + IntToStr(j -
                1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring + ' '
                +
                trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring) + ' ' +
                trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
            end;
            sp_zxjl_cq_dy.Next;
          end;
        end
        else
        begin
          aControl := QRBand10.FindChildControl('ksrqls' + IntToStr(j - 1));
          if aControl is TQRLabel then
            TQRLabel(aControl).Caption :=
              sp_zxjl_cq_dy.FieldByName('ksrq').asstring;
          aControl := QRBand10.FindChildControl('kdysmcls' + IntToStr(j - 1));
          if aControl is TQRLabel then
            TQRLabel(aControl).Caption :=
              sp_zxjl_cq_dy.FieldByName('kdysmc').asstring;
          if sp_zxjl_cq_dy.FieldByName('fzph').asstring <> '' then
          begin
            QRBand10.FindChildControl('QRImagels_' + IntToStr(j)).enabled :=
              true;
            QRBand10.FindChildControl('QRImagels_' + IntToStr(j)).Top :=
              TQRLabel(QRBand10.FindChildControl('xmmcls_' + IntToStr(j -
              1))).top;
            QRBand10.FindChildControl('QRImagels_' + IntToStr(j)).left :=
              QRBand10.FindChildControl('ypyfls_' + IntToStr(j - 1)).left - 20;
            QRBand10.FindChildControl('QRImagels_' + IntToStr(j)).height := 30;
            TQRLabel(QRBand10.FindChildControl('ypyfls_' + IntToStr(j -
              1))).Caption := trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring) +
              '  ' + trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
            TQRLabel(QRBand10.FindChildControl('xmmcls_' + IntToStr(j -
              1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring;
          end
          else
          begin
            QRBand10.FindChildControl('QRImagels_' + IntToStr(j)).enabled :=
              false;
            QRBand10.FindChildControl('xmmcls_' + IntToStr(j - 1)).Width := 235;
            TQRLabel(QRBand10.FindChildControl('ypyfls_' + IntToStr(j -
              1))).Caption := '';
            TQRLabel(QRBand10.FindChildControl('xmmcls_' + IntToStr(j -
              1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring + ' ' +
              trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring) + ' ' +
              trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
          end;
          sp_zxjl_cq_dy.Next;
        end;
      end;
      DM_data.qry_pub.Close;
      DM_data.qry_pub.SQL.text := 'select * from sys_kscwsz where bqdm=' + ''''
        + pub_bqdm + '''' + ' and bcbh=' + '''' +
        trim(sp_jbxx.fieldbyname('bch').asstring) + '''';
      try
        DM_data.qry_pub.Open;
      except
      end;
      QRLabel45.Caption := pub_yymc + '��ʱ�鷿��';
      QRLabel46.Caption := '����:' + sp_jbxx.fieldbyname('brxm').asstring;
      QRLabel50.Caption := '������:' +
        Trim(DM_data.qry_pub.FieldByName('yybch').asstring);
      QRLabel51.Caption := '�Ա�:' + sp_jbxx.fieldbyname('brxb').asstring;
      QRLabel52.Caption := '����:' + trim(sp_jbxx.fieldbyname('brnl').asstring);
      QRLabel53.Caption := FormatDateTime('yyyy', frm_func.curr_date) + '��';
      QRLabel67.Caption := '����:' + Trim(sp_jbxx.fieldbyname('brxm').asstring) +
        '  ' +
         Trim(DM_data.qry_pub.FieldByName('yybch').asstring) + '��'+
        '  ' +
         sp_jbxx.fieldbyname('brxb').asstring + '  ' +
         trim(sp_jbxx.fieldbyname('brnl').asstring) + '  ' + '����:' +
        Trim(sp_jbxx.fieldbyname('tmh').asstring);
      //QuickRep3.Prepare;
      QRLabel58.Caption := '���ҽ����';
      QuickRep5.Preview;
    end;
  end;
end;

procedure Tfrm_yzinput.MenuItem13Click(Sender: TObject);

begin
  Application.OnMessage := nil;
  with sp_zxjl_cq_dy do
  begin
    Filtered := False;
    Close;
    Parameters.ParamByName('@zyh').Value :=
      Trim(sp_jbxx.fieldbyname('zyh').asstring);
    Parameters.ParamByName('@fs').Value := 0;
    Open;
  end;
  //sp_zxjl_cq_dy.Filtered := False;
  sp_zxjl_cq_dy.Filter := 'tzrq=null ';
  sp_zxjl_cq_dy.Filtered := True;
  if sp_zxjl_cq_dy.IsEmpty then
  begin
    Application.MessageBox('û�м�¼��', '��ʾ', 0 + 48);
    Exit;
  end;
  application.CreateForm(Tfrm_zxdxd, frm_zxdxd);
  try
    frm_zxdxd.ShowModal;
  finally
    frm_zxdxd.free;
  end;
end;

procedure Tfrm_yzinput.MenuItem14Click(Sender: TObject);
begin
  Application.OnMessage := nil;
  with sp_zxjl_cq_dy do
  begin
    Filtered := False;
    Close;
    Parameters.ParamByName('@zyh').Value :=
      Trim(sp_jbxx.fieldbyname('zyh').asstring);
    Parameters.ParamByName('@fs').Value := 1;
    Open;
  end;
  //sp_zxjl_cq_dy.Filtered := False;
  sp_zxjl_cq_dy.Filter := 'tzrq=null ';
  sp_zxjl_cq_dy.Filtered := True;
  if sp_zxjl_cq_dy.IsEmpty then
  begin
    Application.MessageBox('û�м�¼��', '��ʾ', 0 + 48);
    Exit;
  end;
  application.CreateForm(Tfrm_zxdxd, frm_zxdxd);
  try
    frm_zxdxd.ShowModal;
  finally
    frm_zxdxd.free;
  end;
end;

procedure Tfrm_yzinput.MenuItem15Click(Sender: TObject);
var
  i, y, j, count, x: Integer;
  aControl: TControl;
  v_yytj, v_lb, filter: string;
begin
  with sp_zxjl_cq_dy do
  begin
    Filtered := False;
    Close;
    Parameters.ParamByName('@zyh').Value :=
      Trim(sp_jbxx.fieldbyname('zyh').asstring);
    Parameters.ParamByName('@fs').Value := 0;
    Open;
  end;

  v_yytj := '';
  v_lb := '(lb=' + '''' + '��ҩ' + '''' + ' and  tzrq=null )' + ' or ';

  if v_yytj + v_lb = '' then
  begin
    filter := ' 1<>1 ';
  end
  else
  begin
    filter := v_yytj + v_lb + ' ( yytj=''�������'' )';
  end;

  sp_zxjl_cq_dy.Filter := filter;
  sp_zxjl_cq_dy.Filtered := True;
  if sp_zxjl_cq_dy.IsEmpty then
  begin
    Application.MessageBox('û�м�¼��', '��ʾ', 0 + 48);
    Exit;
  end;
  sp_zxjl_cq_dy.First;
  if sp_zxjl_cq_dy.RecordCount mod 5 <> 0 then
    y := trunc(sp_zxjl_cq_dy.RecordCount / 5) + 1
  else
    y := trunc(sp_zxjl_cq_dy.RecordCount / 5);
  count := sp_zxjl_cq_dy.RecordCount;
  for I := 1 to y do
  begin
    for j := 1 to 5 do
    begin
      if count < i * 5 then
      begin
        if j > (5 - (y * 5 - count)) then
        begin
          aControl := DetailBand1.FindChildControl('ksrq' + IntToStr(j - 1));
          if aControl is TQRLabel then
            TQRLabel(aControl).Caption := '';
          aControl := DetailBand1.FindChildControl('kdysmc' + IntToStr(j - 1));
          if aControl is TQRLabel then
            TQRLabel(aControl).Caption := '';
          DetailBand1.FindChildControl('qrgrimage' + IntToStr(j)).enabled :=
            false;
          //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
          TQRLabel(DetailBand1.FindChildControl('ypyf' + IntToStr(j -
            1))).Caption := '';
          //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
          TQRLabel(DetailBand1.FindChildControl('xmmc' + IntToStr(j -
            1))).caption := '';
        end
        else
        begin
          aControl := DetailBand1.FindChildControl('ksrq' + IntToStr(j - 1));
          if aControl is TQRLabel then
            TQRLabel(aControl).Caption :=
              sp_zxjl_cq_dy.FieldByName('ksrq').AsString;
          aControl := DetailBand1.FindChildControl('kdysmc' + IntToStr(j - 1));
          if aControl is TQRLabel then
            TQRLabel(aControl).Caption :=
              sp_zxjl_cq_dy.FieldByName('kdysmc').asstring;
          if sp_zxjl_cq_dy.FieldByName('fzph').asstring <> '' then
          begin
            DetailBand1.FindChildControl('QRgrImage' + IntToStr(j)).enabled :=
              true;
            DetailBand1.FindChildControl('QRgrImage' + IntToStr(j)).Top :=
              TQRLabel(DetailBand1.FindChildControl('xmmc' + IntToStr(j -
              1))).top;
            DetailBand1.FindChildControl('QRgrImage' + IntToStr(j)).left :=
              DetailBand1.FindChildControl('ypyf' + IntToStr(j - 1)).left - 20;
            DetailBand1.FindChildControl('qrgrimage' + IntToStr(j)).height :=
              30;
            TQRLabel(DetailBand1.FindChildControl('ypyf' + IntToStr(j -
              1))).Caption := trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring) +
              '  ' + trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
            TQRLabel(DetailBand1.FindChildControl('xmmc' + IntToStr(j -
              1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring;
            //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
          end
          else
          begin
            DetailBand1.FindChildControl('qrgrimage' + IntToStr(j)).enabled :=
              false;
            DetailBand1.FindChildControl('xmmc' + IntToStr(j - 1)).Width := 235;
            TQRLabel(DetailBand1.FindChildControl('ypyf' + IntToStr(j -
              1))).Caption := '';
            TQRLabel(DetailBand1.FindChildControl('xmmc' + IntToStr(j -
              1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring + ' ' +
              trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring) + ' ' +
              trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
            // TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
          end;
          sp_zxjl_cq_dy.Next;
        end;
      end
      else
      begin
        aControl := DetailBand1.FindChildControl('ksrq' + IntToStr(j - 1));
        if aControl is TQRLabel then
          TQRLabel(aControl).Caption :=
            sp_zxjl_cq_dy.FieldByName('ksrq').asstring;
        aControl := DetailBand1.FindChildControl('kdysmc' + IntToStr(j - 1));
        if aControl is TQRLabel then
          TQRLabel(aControl).Caption :=
            sp_zxjl_cq_dy.FieldByName('kdysmc').asstring;
        if sp_zxjl_cq_dy.FieldByName('fzph').asstring <> '' then
        begin
          DetailBand1.FindChildControl('QRgrImage' + IntToStr(j)).enabled :=
            true;
          DetailBand1.FindChildControl('QRgrImage' + IntToStr(j)).Top :=
            TQRLabel(DetailBand1.FindChildControl('xmmc' + IntToStr(j -
            1))).top;
          DetailBand1.FindChildControl('qrgrimage' + IntToStr(j)).left :=
            DetailBand1.FindChildControl('ypyf' + IntToStr(j - 1)).left - 20;
          DetailBand1.FindChildControl('qrgrimage' + IntToStr(j)).height := 30;
          TQRLabel(DetailBand1.FindChildControl('ypyf' + IntToStr(j -
            1))).Caption := trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring) +
            '  '
            + trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
          TQRLabel(DetailBand1.FindChildControl('xmmc' + IntToStr(j -
            1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring;
          //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
        end
        else
        begin
          DetailBand1.FindChildControl('qrgrimage' + IntToStr(j)).enabled :=
            false;
          DetailBand1.FindChildControl('xmmc' + IntToStr(j - 1)).Width := 235;
          TQRLabel(DetailBand1.FindChildControl('ypyf' + IntToStr(j -
            1))).Caption := '';
          TQRLabel(DetailBand1.FindChildControl('xmmc' + IntToStr(j -
            1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring + ' ' +
            trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring) + ' ' +
            trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
          //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
        end;
        sp_zxjl_cq_dy.Next;
      end;
    end;
    QRLabel2.Caption := pub_yymc + '���ڲ�ҩִ�е�';
    DM_data.qry_pub.Close;
    DM_data.qry_pub.SQL.text := 'select * from sys_kscwsz where bqdm=' + '''' +
      pub_bqdm + '''' + ' and bcbh=' + '''' +
      trim(sp_jbxx.fieldbyname('bch').asstring) + '''';
    try
      DM_data.qry_pub.Open;
    except
    end;

    QRLabel3.Caption := '����:' + sp_jbxx.fieldbyname('brxm').asstring;
    QRLabel20.Caption := '������:' +
      Trim(DM_data.qry_pub.FieldByName('yybch').asstring);
    QRLabel21.Caption := '�Ա�:' + sp_jbxx.fieldbyname('brxb').asstring;
    QRLabel26.Caption := '����:' + trim(sp_jbxx.fieldbyname('brnl').asstring);
    ny.Caption := FormatDateTime('yyyy', frm_func.curr_date) + '��';

    QRLabel61.Caption := '����:' + sp_jbxx.fieldbyname('brxm').asstring +
      '      ' +
      '������:' + Trim(DM_data.qry_pub.FieldByName('yybch').asstring) + '      '
      +
      '����:' + Trim(sp_jbxx.fieldbyname('tmh').asstring);
    //'�Ա�:' + sp_jbxx.fieldbyname( 'brxb' ).asstring +'      '+
    //'����:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
//QuickRep3.Prepare;
    QRLabel57.Caption := '���ҽ��:';
    QuickRep3.Preview;
  end;

end;

procedure Tfrm_yzinput.MenuItem16Click(Sender: TObject);
var
  i, y, j, count, x: Integer;
  aControl: TControl;
  v_yytj, v_lb, filter: string;
begin
  with sp_zxjl_cq_dy do
  begin
    Filtered := False;
    Close;
    Parameters.ParamByName('@zyh').Value :=
      Trim(sp_jbxx.fieldbyname('zyh').asstring);
    Parameters.ParamByName('@fs').Value := 1;
    Open;
  end;

  v_yytj := '';
  v_lb := '(lb=' + '''' + '��ҩ' + '''' + ' and  tzrq=null and kdrq>=' + '''' +
    formatdatetime('yy-MM-dd', frm_func.curr_date) + ' 00:00' + ''')' + ' or ';

  if v_yytj + v_lb = '' then
  begin
    filter := ' 1<>1 ';
  end
  else
  begin
    filter := v_yytj + v_lb + ' ( yytj=''�������'' )';
  end;

  sp_zxjl_cq_dy.Filter := filter;
  sp_zxjl_cq_dy.Filtered := True;
  if sp_zxjl_cq_dy.IsEmpty then
  begin
    Application.MessageBox('û�м�¼��', '��ʾ', 0 + 48);
    Exit;
  end;
  sp_zxjl_cq_dy.First;
  if sp_zxjl_cq_dy.RecordCount mod 5 <> 0 then
    y := trunc(sp_zxjl_cq_dy.RecordCount / 5) + 1
  else
    y := trunc(sp_zxjl_cq_dy.RecordCount / 5);
  count := sp_zxjl_cq_dy.RecordCount;
  for I := 1 to y do
  begin
    for j := 1 to 5 do
    begin
      if count < i * 5 then
      begin
        if j > (5 - (y * 5 - count)) then
        begin
          aControl := DetailBand1.FindChildControl('ksrq' + IntToStr(j - 1));
          if aControl is TQRLabel then
            TQRLabel(aControl).Caption := '';
          aControl := DetailBand1.FindChildControl('kdysmc' + IntToStr(j - 1));
          if aControl is TQRLabel then
            TQRLabel(aControl).Caption := '';
          DetailBand1.FindChildControl('qrgrimage' + IntToStr(j)).enabled :=
            false;
          //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
          TQRLabel(DetailBand1.FindChildControl('ypyf' + IntToStr(j -
            1))).Caption := '';
          //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
          TQRLabel(DetailBand1.FindChildControl('xmmc' + IntToStr(j -
            1))).caption := '';
        end
        else
        begin
          aControl := DetailBand1.FindChildControl('ksrq' + IntToStr(j - 1));
          if aControl is TQRLabel then
            TQRLabel(aControl).Caption :=
              sp_zxjl_cq_dy.FieldByName('ksrq').AsString;
          aControl := DetailBand1.FindChildControl('kdysmc' + IntToStr(j - 1));
          if aControl is TQRLabel then
            TQRLabel(aControl).Caption :=
              sp_zxjl_cq_dy.FieldByName('kdysmc').asstring;
          if sp_zxjl_cq_dy.FieldByName('fzph').asstring <> '' then
          begin
            DetailBand1.FindChildControl('QRgrImage' + IntToStr(j)).enabled :=
              true;
            DetailBand1.FindChildControl('QRgrImage' + IntToStr(j)).Top :=
              TQRLabel(DetailBand1.FindChildControl('xmmc' + IntToStr(j -
              1))).top;
            DetailBand1.FindChildControl('QRgrImage' + IntToStr(j)).left :=
              DetailBand1.FindChildControl('ypyf' + IntToStr(j - 1)).left - 20;
            DetailBand1.FindChildControl('qrgrimage' + IntToStr(j)).height :=
              30;
            TQRLabel(DetailBand1.FindChildControl('ypyf' + IntToStr(j -
              1))).Caption := trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring) +
              '  ' + trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
            TQRLabel(DetailBand1.FindChildControl('xmmc' + IntToStr(j -
              1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring;
            //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
          end
          else
          begin
            DetailBand1.FindChildControl('qrgrimage' + IntToStr(j)).enabled :=
              false;
            DetailBand1.FindChildControl('xmmc' + IntToStr(j - 1)).Width := 235;
            TQRLabel(DetailBand1.FindChildControl('ypyf' + IntToStr(j -
              1))).Caption := '';
            TQRLabel(DetailBand1.FindChildControl('xmmc' + IntToStr(j -
              1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring + ' ' +
              trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring) + ' ' +
              trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
            // TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
          end;
          sp_zxjl_cq_dy.Next;
        end;
      end
      else
      begin
        aControl := DetailBand1.FindChildControl('ksrq' + IntToStr(j - 1));
        if aControl is TQRLabel then
          TQRLabel(aControl).Caption :=
            sp_zxjl_cq_dy.FieldByName('ksrq').asstring;
        aControl := DetailBand1.FindChildControl('kdysmc' + IntToStr(j - 1));
        if aControl is TQRLabel then
          TQRLabel(aControl).Caption :=
            sp_zxjl_cq_dy.FieldByName('kdysmc').asstring;
        if sp_zxjl_cq_dy.FieldByName('fzph').asstring <> '' then
        begin
          DetailBand1.FindChildControl('QRgrImage' + IntToStr(j)).enabled :=
            true;
          DetailBand1.FindChildControl('QRgrImage' + IntToStr(j)).Top :=
            TQRLabel(DetailBand1.FindChildControl('xmmc' + IntToStr(j -
            1))).top;
          DetailBand1.FindChildControl('qrgrimage' + IntToStr(j)).left :=
            DetailBand1.FindChildControl('ypyf' + IntToStr(j - 1)).left - 20;
          DetailBand1.FindChildControl('qrgrimage' + IntToStr(j)).height := 30;
          TQRLabel(DetailBand1.FindChildControl('ypyf' + IntToStr(j -
            1))).Caption := trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring) +
            '  '
            + trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
          TQRLabel(DetailBand1.FindChildControl('xmmc' + IntToStr(j -
            1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring;
          //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
        end
        else
        begin
          DetailBand1.FindChildControl('qrgrimage' + IntToStr(j)).enabled :=
            false;
          DetailBand1.FindChildControl('xmmc' + IntToStr(j - 1)).Width := 235;
          TQRLabel(DetailBand1.FindChildControl('ypyf' + IntToStr(j -
            1))).Caption := '';
          TQRLabel(DetailBand1.FindChildControl('xmmc' + IntToStr(j -
            1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring + ' ' +
            trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring) + ' ' +
            trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
          //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
        end;
        sp_zxjl_cq_dy.Next;
      end;
    end;
    QRLabel2.Caption := pub_yymc + '��ʱ��ҩִ�е�';
    DM_data.qry_pub.Close;
    DM_data.qry_pub.SQL.text := 'select * from sys_kscwsz where bqdm=' + '''' +
      pub_bqdm + '''' + ' and bcbh=' + '''' +
      trim(sp_jbxx.fieldbyname('bch').asstring) + '''';
    try
      DM_data.qry_pub.Open;
    except
    end;

    QRLabel3.Caption := '����:' + sp_jbxx.fieldbyname('brxm').asstring;
    QRLabel20.Caption := '������:' +
      Trim(DM_data.qry_pub.FieldByName('yybch').asstring);
    QRLabel21.Caption := '�Ա�:' + sp_jbxx.fieldbyname('brxb').asstring;
    QRLabel26.Caption := '����:' + trim(sp_jbxx.fieldbyname('brnl').asstring);
    ny.Caption := FormatDateTime('yyyy', frm_func.curr_date) + '��';

    QRLabel61.Caption := '����:' + sp_jbxx.fieldbyname('brxm').asstring +
      '      ' +
      '������:' + Trim(DM_data.qry_pub.FieldByName('yybch').asstring) + '      '
      +
      '����:' + Trim(sp_jbxx.fieldbyname('tmh').asstring);
    //'�Ա�:' + sp_jbxx.fieldbyname( 'brxb' ).asstring +'      '+
    //'����:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
//QuickRep3.Prepare;
    QRLabel57.Caption := '���ҽ��:';
    QuickRep3.Preview;
  end;

end;
 //����ҽ����ӡ
procedure Tfrm_yzinput.MenuItem17Click(Sender: TObject);
begin
  inherited;
   Application.OnMessage := nil;
//   try
//      application.createform(Tfrm_cqyzxzdy, frm_cqyzxzdy);
//      p_cqyzxzdy.v_zyh := sp_jbxx.FieldByName('zyh').asstring;
//      p_cqyzxzdy.v_brxm := sp_jbxx.FieldByName('brxm').asstring;
//      p_cqyzxzdy.v_bch := sp_jbxx.FieldByName('bch').asstring;
//      p_cqyzxzdy.v_brxb := sp_jbxx.FieldByName('brxb').asstring;
//      p_cqyzxzdy.v_brnl := sp_jbxx.FieldByName('brnl').asstring;
//      p_cqyzxzdy.v_ryzd := sp_jbxx.FieldByName('ryzd').asstring;
//      p_cqyzxzdy.v_tmh := sp_jbxx.FieldByName('tmh').asstring;
//      p_cqyzxzdy.v_bah := sp_jbxx.FieldByName('bah').asstring;
//      p_cqyzxzdy.sfxse := '';
//      frm_cqyzxzdy.showmodal;
//    finally
//      frm_cqyzxzdy.free;
//    end;
 if pub_yydm = '0258' then   //�ж�ҽԺ�Ǵ���ҽԺ2058
  begin
    with sp_zxjl_cq_dy do
    begin
      Close;
      Parameters.ParamByName('@zyh').Value := sp_jbxx.FieldByName('zyh').AsString;
      Parameters.ParamByName('@fs').Value := 0;
      Open;
    end;
    sp_zxjl_cq_dy.first;
    QRL_yymc_cq.Caption := pub_yymc + '����ҽ����¼��';
    QRL_brxm_cq.Caption := '��������:' + sp_jbxx.FieldByName('brxm').AsString;
    QRL_tmh_cq.Caption := 'סԺ��:' + sp_jbxx.FieldByName('tmh').AsString;
    QRL_bch_cq.Caption := '������:' + sp_jbxx.FieldByName('bch').AsString;
    xb_cq.Caption := '�Ա�:' + trim(sp_jbxx.FieldByName('brxb').AsString);
    nl_cq.Caption := '����:' + trim(sp_jbxx.FieldByName('brnl').AsString);
    zd_cq.Caption := '���:' + trim(sp_jbxx.FieldByName('ryzd').AsString);
    QRL_dysj_cq.Caption := '��ӡʱ��:' + FormatDatetime('yyyy��mm��dd��',
    frm_func.curr_date);
    sj1.caption := '����' + #13 + 'ʱ��';
    sj2.caption := 'ִ��' + #13 + 'ʱ��';
    sj3.caption := '����' + #13 + 'ʱ��';
    sj4.caption := 'ִ��' + #13 + 'ʱ��';

    QuickRep1.Prepare;
    paper_size := 0;
    QRL_ys_cq.Caption := '��' + IntToStr(QuickRep1.Printer.PageCount) + 'ҳ';
    QuickRep1.preview;
  end else
  begin
    try
      application.createform(Tfrm_cqyzxzdy, frm_cqyzxzdy);
      p_cqyzxzdy.v_zyh := sp_jbxx.FieldByName('zyh').asstring;
      p_cqyzxzdy.v_brxm := sp_jbxx.FieldByName('brxm').asstring;
      p_cqyzxzdy.v_bch := sp_jbxx.FieldByName('bch').asstring;
      p_cqyzxzdy.v_brxb := sp_jbxx.FieldByName('brxb').asstring;
      p_cqyzxzdy.v_brnl := sp_jbxx.FieldByName('brnl').asstring;
      p_cqyzxzdy.v_ryzd := sp_jbxx.FieldByName('ryzd').asstring;
      p_cqyzxzdy.v_tmh := sp_jbxx.FieldByName('tmh').asstring;
      p_cqyzxzdy.v_bah := sp_jbxx.FieldByName('bah').asstring;
      p_cqyzxzdy.sfxse := '';
      frm_cqyzxzdy.showmodal;
    finally
      frm_cqyzxzdy.free;
    end;
  end;
end;
 //����ҽ������
procedure Tfrm_yzinput.MenuItem18Click(Sender: TObject);
begin
  inherited;
  Application.OnMessage := nil;
//  try
//      application.createform(Tfrm_cqyzxzdy, frm_cqyzxzdy);
//      p_cqyzxzdy.v_zyh := sp_jbxx.FieldByName('zyh').asstring;
//      p_cqyzxzdy.v_brxm := sp_jbxx.FieldByName('brxm').asstring;
//      p_cqyzxzdy.v_bch := sp_jbxx.FieldByName('bch').asstring;
//      p_cqyzxzdy.v_brxb := sp_jbxx.FieldByName('brxb').asstring;
//      p_cqyzxzdy.v_brnl := sp_jbxx.FieldByName('brnl').asstring;
//      p_cqyzxzdy.v_ryzd := sp_jbxx.FieldByName('ryzd').asstring;
//      p_cqyzxzdy.v_tmh := sp_jbxx.FieldByName('tmh').asstring;
//      p_cqyzxzdy.v_bah := sp_jbxx.FieldByName('bah').asstring;
//      p_cqyzxzdy.sfxse := '';
//      frm_cqyzxzdy.showmodal;
//    finally
//      frm_cqyzxzdy.free;
//    end;
  if pub_yydm = '0258' then   //�ж�ҽԺ�Ǵ���ҽԺ2058
  begin
    with sp_zxjl_cp_zxyy_dy do
    begin
      Close;
      Parameters.ParamByName('@zyh').Value := sp_jbxx.FieldByName('zyh').AsString;
      Parameters.ParamByName('@fs').Value := 0;
      Parameters.ParamByName('@bqdm').Value := pub_bqdm;
      Open;
    end;
    sp_zxjl_cp_zxyy_dy.first;
    Application.CreateForm(Tfrm_cqyzxd, frm_cqyzxd);
    try
      frm_cqyzxd.QRBand3.Visible:=false;
      frm_cqyzxd.ShowModal;
    finally
    frm_cqyzxd.Free;
    end;
  end else
  begin
    try
      application.createform(Tfrm_cqyzxzdy, frm_cqyzxzdy);
      p_cqyzxzdy.v_zyh := sp_jbxx.FieldByName('zyh').asstring;
      p_cqyzxzdy.v_brxm := sp_jbxx.FieldByName('brxm').asstring;
      p_cqyzxzdy.v_bch := sp_jbxx.FieldByName('bch').asstring;
      p_cqyzxzdy.v_brxb := sp_jbxx.FieldByName('brxb').asstring;
      p_cqyzxzdy.v_brnl := sp_jbxx.FieldByName('brnl').asstring;
      p_cqyzxzdy.v_ryzd := sp_jbxx.FieldByName('ryzd').asstring;
      p_cqyzxzdy.v_tmh := sp_jbxx.FieldByName('tmh').asstring;
      p_cqyzxzdy.v_bah := sp_jbxx.FieldByName('bah').asstring;
      p_cqyzxzdy.sfxse := '';
      frm_cqyzxzdy.showmodal;
    finally
      frm_cqyzxzdy.free;
    end;
  end;
end;
//��ʱҽ����ӡ
procedure Tfrm_yzinput.MenuItem20Click(Sender: TObject);
begin
  inherited;
   Application.OnMessage := nil;
//    try
//      application.createform(Tfrm_lsyzxzdy, frm_lsyzxzdy);
//      p_lsyzxzdy.v_zyh := sp_jbxx.FieldByName('zyh').asstring;
//      p_lsyzxzdy.v_brxm := sp_jbxx.FieldByName('brxm').asstring;
//      p_lsyzxzdy.v_bch := sp_jbxx.FieldByName('bch').asstring;
//      p_lsyzxzdy.v_brxb := sp_jbxx.FieldByName('brxb').asstring;
//      p_lsyzxzdy.v_brnl := sp_jbxx.FieldByName('brnl').asstring;
//      p_lsyzxzdy.v_ryzd := sp_jbxx.FieldByName('ryzd').asstring;
//      p_lsyzxzdy.v_tmh := sp_jbxx.FieldByName('tmh').asstring;
//      p_lsyzxzdy.v_bah := sp_jbxx.FieldByName('bah').asstring;
//      p_lsyzxzdy.sfxse := '';
//      frm_lsyzxzdy.showmodal;
//    finally
//      frm_lsyzxzdy.free;
//    end;
  if pub_yydm = '0258' then   //�ж�ҽԺ�Ǵ���ҽԺ2058
  begin
    with sp_zxjl_ls_dy do
    begin
      Close;
      Parameters.ParamByName('@zyh').Value := sp_jbxx.FieldByName('zyh').AsString;
      Parameters.ParamByName('@fs').Value := 1;
      Open;
    end;
    sp_zxjl_ls_dy.first;
    QRL_yymc_ls.Caption := pub_yymc + '��ʱҽ����¼��';
    QRL_brxm_ls.Caption := '��������:' +
    trim(sp_jbxx.FieldByName('brxm').AsString);
    QRL_tmh_ls.Caption := 'סԺ��:' + trim(sp_jbxx.FieldByName('tmh').AsString);
    QRL_bch_ls.Caption := '������:' + trim(sp_jbxx.FieldByName('bch').AsString);
    xb_ls.Caption := '�Ա�:' + trim(sp_jbxx.FieldByName('brxb').AsString);
    nl_ls.Caption := '����:' + trim(sp_jbxx.FieldByName('brnl').AsString);
    zd_ls.Caption := '���:' + trim(sp_jbxx.FieldByName('ryzd').AsString);

    QRL_dysj_ls.Caption := '��ӡʱ��:' + FormatDatetime('yyyy��mm��dd��',
    frm_func.curr_date);
    QuickRep2.Prepare;
    paper_size := 0;
    QRL_ys_ls.Caption := '��' + IntToStr(QuickRep2.Printer.PageCount) + 'ҳ';
    QuickRep2.Preview;
  end else
  begin
    try
      application.createform(Tfrm_lsyzxzdy, frm_lsyzxzdy);
      p_lsyzxzdy.v_zyh := sp_jbxx.FieldByName('zyh').asstring;
      p_lsyzxzdy.v_brxm := sp_jbxx.FieldByName('brxm').asstring;
      p_lsyzxzdy.v_bch := sp_jbxx.FieldByName('bch').asstring;
      p_lsyzxzdy.v_brxb := sp_jbxx.FieldByName('brxb').asstring;
      p_lsyzxzdy.v_brnl := sp_jbxx.FieldByName('brnl').asstring;
      p_lsyzxzdy.v_ryzd := sp_jbxx.FieldByName('ryzd').asstring;
      p_lsyzxzdy.v_tmh := sp_jbxx.FieldByName('tmh').asstring;
      p_lsyzxzdy.v_bah := sp_jbxx.FieldByName('bah').asstring;
      p_lsyzxzdy.sfxse := '';
      frm_lsyzxzdy.showmodal;
    finally
      frm_lsyzxzdy.free;
    end;
  end;
end;
//��ʱҽ������
procedure Tfrm_yzinput.MenuItem21Click(Sender: TObject);
begin
  inherited;
  Application.OnMessage := nil;
//  try
//      application.createform(Tfrm_lsyzxzdy, frm_lsyzxzdy);
//      p_lsyzxzdy.v_zyh := sp_jbxx.FieldByName('zyh').asstring;
//      p_lsyzxzdy.v_brxm := sp_jbxx.FieldByName('brxm').asstring;
//      p_lsyzxzdy.v_bch := sp_jbxx.FieldByName('bch').asstring;
//      p_lsyzxzdy.v_brxb := sp_jbxx.FieldByName('brxb').asstring;
//      p_lsyzxzdy.v_brnl := sp_jbxx.FieldByName('brnl').asstring;
//      p_lsyzxzdy.v_ryzd := sp_jbxx.FieldByName('ryzd').asstring;
//      p_lsyzxzdy.v_tmh := sp_jbxx.FieldByName('tmh').asstring;
//      p_lsyzxzdy.v_bah := sp_jbxx.FieldByName('bah').asstring;
//      p_lsyzxzdy.sfxse := '';
//      frm_lsyzxzdy.showmodal;
//  finally
//      frm_lsyzxzdy.free;
//  end;
  if pub_yydm = '0258' then   //�ж�ҽԺ�Ǵ���ҽԺ2058
  begin
    with sp_zxjl_ls_zxyy_dy do
    begin
      Close;
      Parameters.ParamByName('@zyh').Value := sp_jbxx.FieldByName('zyh').AsString;
      Parameters.ParamByName('@fs').Value := 1;
      Parameters.ParamByName('@bqdm').Value := pub_bqdm;
      Open;
    end;
    sp_zxjl_ls_zxyy_dy.first;
    Application.CreateForm(Tfrm_lsyzxd, frm_lsyzxd);
    try
      frm_lsyzxd.QRBand3.Visible:=false;
      frm_lsyzxd.ShowModal;
    finally
      frm_lsyzxd.Free;
    end;
  end else
  begin
    try
      application.createform(Tfrm_lsyzxzdy, frm_lsyzxzdy);
      p_lsyzxzdy.v_zyh := sp_jbxx.FieldByName('zyh').asstring;
      p_lsyzxzdy.v_brxm := sp_jbxx.FieldByName('brxm').asstring;
      p_lsyzxzdy.v_bch := sp_jbxx.FieldByName('bch').asstring;
      p_lsyzxzdy.v_brxb := sp_jbxx.FieldByName('brxb').asstring;
      p_lsyzxzdy.v_brnl := sp_jbxx.FieldByName('brnl').asstring;
      p_lsyzxzdy.v_ryzd := sp_jbxx.FieldByName('ryzd').asstring;
      p_lsyzxzdy.v_tmh := sp_jbxx.FieldByName('tmh').asstring;
      p_lsyzxzdy.v_bah := sp_jbxx.FieldByName('bah').asstring;
      p_lsyzxzdy.sfxse := '';
      frm_lsyzxzdy.showmodal;
    finally
      frm_lsyzxzdy.free;
    end;
  end;
end;

procedure Tfrm_yzinput.MenuItem2Click(Sender: TObject);
var
  v_yytj, v_lb, filter: string;
begin
  Application.OnMessage := nil;
  with sp_zxjl_cq_dy do
  begin
    Filtered := False;
    Close;
    Parameters.ParamByName('@zyh').Value :=
      Trim(sp_jbxx.fieldbyname('zyh').asstring);
    Parameters.ParamByName('@fs').Value := 0;
    Open;
  end;
  DM_data.qry_pub.close;
  DM_data.qry_pub.sql.text :=
    'select yytj from zybl_zyyz_dytjsz where dyxm=''��Һ�ƻ���''';
  try
    DM_data.qry_pub.Open;
  except
  end;
  if DM_data.qry_pub.IsEmpty then
  begin
    v_yytj := '';
  end
  else
  begin
    DM_data.qry_pub.First;
    while not DM_data.qry_pub.eof do
    begin
    if pub_yydm<>'0260' then
      begin
      v_yytj := v_yytj + '(yytj=' + '''' +
        DM_data.qry_pub.FieldByName('yytj').asstring + '''' + ' and  tzrq=null )'+ ' or ';
      end
      else
      begin
          v_yytj := v_yytj + '(yytj=' + '''' +
        DM_data.qry_pub.FieldByName('yytj').asstring + '''  )'+ ' or ';
      end;
      // v_yytj := v_yytj + '(yytj=' + '''' + DM_data.qry_pub.FieldByName( 'yytj' ).asstring + '''' + ' and  tzrq=null )' + ' or ';
      DM_data.qry_pub.Next;
    end;

  end;

  DM_data.qry_pub.close;
  DM_data.qry_pub.sql.text :=
    'select lbmc from zybl_zyyz_dylbsz where dyxm=''��Һ�ƻ���''';
  try
    DM_data.qry_pub.Open;
  except
  end;
  if DM_data.qry_pub.IsEmpty then
  begin
    v_lb := '';
  end
  else
  begin
    DM_data.qry_pub.First;
    while not DM_data.qry_pub.eof do
    begin
      v_lb := v_lb + '(lb=' + '''' + DM_data.qry_pub.FieldByName('lbmc').asstring
        + '''' + ' and  tzrq=null )' + ' or ';
      //v_lb := v_lb + '(lb=' + '''' + DM_data.qry_pub.FieldByName( 'lbmc' ).asstring + '''' + ' and  tzrq=null )' + ' or ';
      DM_data.qry_pub.Next;
    end;

  end;

  if v_yytj + v_lb = '' then
  begin
    filter := ' 1<>1 ';
  end
  else
  begin
    filter := v_yytj + v_lb + ' ( yytj=''�������'' )';
  end;
  sp_zxjl_cq_dy.Filtered := False;
  sp_zxjl_cq_dy.Filter := filter;
  sp_zxjl_cq_dy.Filtered := True;
  if sp_zxjl_cq_dy.IsEmpty then
  begin
    Application.MessageBox('û�м�¼��', '��ʾ', 0 + 48);
    Exit;
  end;
  application.CreateForm(Tfrm_zxdxd, frm_zxdxd);
  try
    frm_zxdxd.ShowModal;
  finally
    frm_zxdxd.free;
  end;
end;

procedure Tfrm_yzinput.MenuItem3Click(Sender: TObject);
var
  i, y, j, count, x: Integer;
  aControl: TControl;
  v_yytj, v_lb, filter: string;
begin
  with sp_zxjl_cq_dy do
  begin
    Filtered := False;
    Close;
    Parameters.ParamByName('@zyh').Value :=
      Trim(sp_jbxx.fieldbyname('zyh').asstring);
    Parameters.ParamByName('@fs').Value := 1;
    Open;
  end;
  DM_data.qry_pub.close;
  DM_data.qry_pub.sql.text :=
    'select yytj from zybl_zyyz_dytjsz where dyxm=''��Һ�ƻ���''';
  try
    DM_data.qry_pub.Open;
  except
  end;
  if DM_data.qry_pub.IsEmpty then
  begin
    v_yytj := '';
  end
  else
  begin
    DM_data.qry_pub.First;
    while not DM_data.qry_pub.eof do
    begin
      v_yytj := v_yytj + '(bqdm=''' + pub_bqdm + ''' and yytj=' + '''' +
        DM_data.qry_pub.FieldByName('yytj').asstring + '''' +
        ' and  tzrq=null and kdrq>=' + '''' + formatdatetime('yy-MM-dd',
        frm_func.curr_date) + ' 00:00' + ''' ) or ';
      DM_data.qry_pub.Next;
    end;

  end;

  DM_data.qry_pub.close;
  DM_data.qry_pub.sql.text :=
    'select lbmc from zybl_zyyz_dylbsz where dyxm=''��Һ�ƻ���''';
  try
    DM_data.qry_pub.Open;
  except
  end;
  if DM_data.qry_pub.IsEmpty then
  begin
    v_lb := '';
  end
  else
  begin
    DM_data.qry_pub.First;
    while not DM_data.qry_pub.eof do
    begin
      // v_lb := v_lb + '(lb=' + '''' + DM_data.qry_pub.FieldByName( 'lbmc' ).asstring + '''' + ' and  tzrq=null and kdks=' + '''' + pub_ksdm +
      v_lb := v_lb + '(lb=' + '''' + DM_data.qry_pub.FieldByName('lbmc').asstring
        + '''' + ' and  tzrq =null and kdrq>=' + '''' +
        formatdatetime('yy-MM-dd',
        frm_func.curr_date) + ' 00:00' + ''' and bqdm=''' + pub_bqdm + ''')' +
        ' or ';
      DM_data.qry_pub.Next;
    end;

  end;

  if v_yytj + v_lb = '' then
  begin
    filter := ' 1<>1 ';
  end
  else
  begin
    filter:= v_yytj + v_lb +

      ' ( xmmc like ''%Ƥ��%'' and kdrq>=' + '''' + formatdatetime('yy-MM-dd',
      frm_func.curr_date) + ' 00:00' + '''  and bqdm=' + #39 + pub_bqdm + #39 +
      ')' +
      ' or ' + ' ( xmmc like ''%����%'' and  kdrq>=' + '''' +
      formatdatetime('yy-MM-dd', frm_func.curr_date) + ' 00:00' + ''' and bqdm='
      + #39 + pub_bqdm + #39 + ')' +
      ' or ' + ' ( xmmc like ''%��%'' and  xmmc like ''%Ѫ%'' and lb<>''����'' and  kdrq>='
      + '''' + formatdatetime('yy-MM-dd', frm_func.curr_date) + ' 00:00' +
      '''  and bqdm=' + #39 + pub_bqdm + #39 + ')';
  end;

  sp_zxjl_cq_dy.Filter := filter;



  sp_zxjl_cq_dy.Filtered := True;
  if sp_zxjl_cq_dy.IsEmpty then
  begin
    Application.MessageBox('û�м�¼��', '��ʾ', 0 + 48);
    Exit;
  end;
  if not sp_zxjl_cq_dy.IsEmpty then
  begin
    //if (zzdx='A4') or (zzdx='B5') then
    //  begin
    if zzdx = 'A3' then   //------------------------------------�����������޸�A3 ---------------
    begin
      sp_zxjl_cq_dy.First;
      if sp_zxjl_cq_dy.RecordCount mod 8 <> 0 then
        y := trunc(sp_zxjl_cq_dy.RecordCount / 8) + 1
      else
        y := trunc(sp_zxjl_cq_dy.RecordCount / 8);
      count := sp_zxjl_cq_dy.RecordCount;
      for I := 1 to y do
      begin
        for j := 1 to 8 do
        begin
          if count < i * 8 then
          begin
            if j > (8 - (y * 8 - count)) then
            begin
              aControl := qrbndcqjy.FindChildControl('jycqsyksrq' + IntToStr(j -
                1));
              if aControl is TQRLabel then
                TQRLabel(aControl).Caption := '';
              aControl := qrbndcqjy.FindChildControl('jycqsykdys' + IntToStr(j -
                1));
              if aControl is TQRLabel then
                TQRLabel(aControl).Caption := '';
              qrbndcqjy.FindChildControl('QRImagejy' + IntToStr(j)).enabled :=
                false;
              //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
              TQRLabel(qrbndcqjy.FindChildControl('jycqsyypyf' + IntToStr(j -
                1))).Caption := '';
              //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
              TQRLabel(qrbndcqjy.FindChildControl('jycqsyxmmc' + IntToStr(j -
                1))).caption := '';
            end
            else
            begin
              aControl := qrbndcqjy.FindChildControl('jycqsyksrq' + IntToStr(j -
                1));
              if aControl is TQRLabel then
                TQRLabel(aControl).Caption :=
                  sp_zxjl_cq_dy.FieldByName('ksrq').AsString;
              aControl := qrbndcqjy.FindChildControl('jycqsykdys' + IntToStr(j -
                1));
              if aControl is TQRLabel then
                TQRLabel(aControl).Caption :=
                  sp_zxjl_cq_dy.FieldByName('kdysmc').asstring;
              if sp_zxjl_cq_dy.FieldByName('fzph').asstring <> '' then
              begin
                qrbndcqjy.FindChildControl('QRImagejy' + IntToStr(j)).enabled :=
                  true;
                qrbndcqjy.FindChildControl('QRImagejy' + IntToStr(j)).Top :=
                  TQRLabel(qrbndcqjy.FindChildControl('jycqsyxmmc' + IntToStr(j -
                  1))).top;
                qrbndcqjy.FindChildControl('QRImagejy' + IntToStr(j)).left :=
                  qrbndcqjy.FindChildControl('jycqsyypyf' + IntToStr(j - 1)).left
                  -
                  20;
                qrbndcqjy.FindChildControl('QRImagejy' + IntToStr(j)).height :=
                  30;
                TQRLabel(qrbndcqjy.FindChildControl('jycqsyypyf' + IntToStr(j -
                  1))).Caption :=
                  trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring)
                  + '  ' + trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
                TQRLabel(qrbndcqjy.FindChildControl('jycqsyxmmc' + IntToStr(j -
                  1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring;
                //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
              end
              else
              begin
                qrbndcqjy.FindChildControl('QRImagejy' + IntToStr(j)).enabled :=
                  false;
                //qrbndcqsy.FindChildControl( 'cqsyxmmc' + IntToStr( j - 1 ) ).Width := 235;
                TQRLabel(qrbndcqjy.FindChildControl('jycqsyypyf' + IntToStr(j -
                  1))).Caption := '';
                TQRLabel(qrbndcqjy.FindChildControl('jycqsyxmmc' + IntToStr(j -
                  1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring +
                  ' '
                  + trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring) + ' ' +
                  trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
                // TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
              end;
              sp_zxjl_cq_dy.Next;
            end;
          end
          else
          begin
            aControl := qrbndcqjy.FindChildControl('jycqsyksrq' + IntToStr(j -
              1));
            if aControl is TQRLabel then
              TQRLabel(aControl).Caption :=
                sp_zxjl_cq_dy.FieldByName('ksrq').asstring;
            aControl := qrbndcqjy.FindChildControl('jycqsykdys' + IntToStr(j -
              1));
            if aControl is TQRLabel then
              TQRLabel(aControl).Caption :=
                sp_zxjl_cq_dy.FieldByName('kdysmc').asstring;
            if sp_zxjl_cq_dy.FieldByName('fzph').asstring <> '' then
            begin
              qrbndcqjy.FindChildControl('QRImagejy' + IntToStr(j)).enabled :=
                true;
              qrbndcqjy.FindChildControl('QRImagejy' + IntToStr(j)).Top :=
                TQRLabel(qrbndcqjy.FindChildControl('jycqsyxmmc' + IntToStr(j -
                1))).top;
              qrbndcqjy.FindChildControl('QRImagejy' + IntToStr(j)).left :=
                qrbndcqjy.FindChildControl('jycqsyypyf' + IntToStr(j - 1)).left -
                20;
              qrbndcqjy.FindChildControl('QRImagejy' + IntToStr(j)).height :=
                30;
              TQRLabel(qrbndcqjy.FindChildControl('jycqsyypyf' + IntToStr(j -
                1))).Caption := trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring)
                +
                '  ' + trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
              TQRLabel(qrbndcqjy.FindChildControl('jycqsyxmmc' + IntToStr(j -
                1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring;
              //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end
            else
            begin
              qrbndcqjy.FindChildControl('QRImagejy' + IntToStr(j)).enabled :=
                false;
              //qrbndcqsy.FindChildControl( 'cqsyxmmc' + IntToStr( j - 1 ) ).Width := 235;
              TQRLabel(qrbndcqjy.FindChildControl('jycqsyypyf' + IntToStr(j -
                1))).Caption := '';
              TQRLabel(qrbndcqjy.FindChildControl('jycqsyxmmc' + IntToStr(j -
                1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring + ' '
                +
                trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring) + ' ' +
                trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
              //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end;
            sp_zxjl_cq_dy.Next;
          end;
        end;
        jycqsymc.Caption := pub_yymc + '��ʱ��Һ�ƻ�ִ�е�';
        DM_data.qry_pub.Close;
        DM_data.qry_pub.SQL.text := 'select * from sys_kscwsz where bqdm=' + ''''
          + pub_bqdm + '''' + ' and bcbh=' + '''' +
          trim(sp_jbxx.fieldbyname('bch').asstring) + '''';
        try
          DM_data.qry_pub.open;
        except

        end;

        jycqsyxm.Caption := '����:' + sp_jbxx.fieldbyname('brxm').asstring;
        jycqsybch.Caption := '������:' +
          Trim(DM_data.qry_pub.FieldByName('yybch').asstring);
        jycqsyxb.Caption := '�Ա�:' + sp_jbxx.fieldbyname('brxb').asstring;
        jycqsynl.Caption := '����:' + trim(sp_jbxx.fieldbyname('brnl').asstring);
        jycqsyn.Caption := FormatDateTime('yyyy', frm_func.curr_date) + '��';

        jycqsyxmxm.Caption := '����:' + sp_jbxx.fieldbyname('brxm').asstring;
        jycqsybchbch.Caption := '������:' +
          Trim(DM_data.qry_pub.FieldByName('yybch').asstring);
        jycqsykh.Caption := '����:' + Trim(sp_jbxx.fieldbyname('tmh').asstring);
        //QRLabel62jy.Caption := '����:' + sp_jbxx.fieldbyname( 'brxm' ).asstring + '      ' +
        //  '������:' + Trim( DM_data.qry_pub.FieldByName( 'yybch' ).asstring ) + '      '+
        //  '����:' + Trim( sp_jbxx.fieldbyname( 'tmh' ).asstring  );
        //'�Ա�:' + sp_jbxx.fieldbyname( 'brxb' ).asstring +'      '+
        //'����:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
         //QuickRep3.Prepare;
        //QRLabel71.Caption := '���ҽ��:';
        qckrpcqjy.Preview;
      end;
    end else //----------------------------------------- A5-----------------
    begin
      sp_zxjl_cq_dy.First;
      if sp_zxjl_cq_dy.RecordCount mod 9 <> 0 then
        y := trunc(sp_zxjl_cq_dy.RecordCount / 9) + 1
      else
        y := trunc(sp_zxjl_cq_dy.RecordCount / 9);
      count := sp_zxjl_cq_dy.RecordCount;
      for I := 1 to y do
      begin
        for j := 1 to 9 do
        begin
          if count < i * 9 then
          begin
            if j > (9 - (y * 9 - count)) then
            begin
              aControl := QRBand10.FindChildControl('ksrqls' + IntToStr(j - 1));
              if aControl is TQRLabel then
                TQRLabel(aControl).Caption := '';
              aControl := QRBand10.FindChildControl('kdysmcls' + IntToStr(j - 1));
              if aControl is TQRLabel then
                TQRLabel(aControl).Caption := '';
              QRBand10.FindChildControl('QRImagels_' + IntToStr(j)).enabled :=
                false;
              //TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).Width := 0;
              TQRLabel(QRBand10.FindChildControl('ypyfls_' + IntToStr(j -
                1))).Caption := '';
              TQRLabel(QRBand10.FindChildControl('xmmcls_' + IntToStr(j -
                1))).caption := '';
            end
            else
            begin
              aControl := QRBand10.FindChildControl('ksrqls' + IntToStr(j - 1));
              if aControl is TQRLabel then
                TQRLabel(aControl).Caption :=
                  sp_zxjl_cq_dy.FieldByName('ksrq').AsString;
              aControl := QRBand10.FindChildControl('kdysmcls' + IntToStr(j - 1));
              if aControl is TQRLabel then
                TQRLabel(aControl).Caption :=
                  sp_zxjl_cq_dy.FieldByName('kdysmc').asstring;
              if sp_zxjl_cq_dy.FieldByName('fzph').asstring <> '' then
              begin
                QRBand10.FindChildControl('QRImagels_' + IntToStr(j)).enabled :=
                  true;
                QRBand10.FindChildControl('QRImagels_' + IntToStr(j)).Top :=
                  TQRLabel(QRBand10.FindChildControl('xmmcls_' + IntToStr(j -
                  1))).top;
                QRBand10.FindChildControl('QRImagels_' + IntToStr(j)).left :=
                  QRBand10.FindChildControl('ypyfls_' + IntToStr(j - 1)).left -
                  20;
                QRBand10.FindChildControl('QRImagels_' + IntToStr(j)).height :=
                  30;
                TQRLabel(QRBand10.FindChildControl('ypyfls_' + IntToStr(j -
                  1))).Caption := trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring)
                  +
                  '  ' + trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
                TQRLabel(QRBand10.FindChildControl('xmmcls_' + IntToStr(j -
                  1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring;
              end
              else
              begin
                QRBand10.FindChildControl('QRImagels_' + IntToStr(j)).enabled :=
                  false;
                QRBand10.FindChildControl('xmmcls_' + IntToStr(j - 1)).Width :=
                  235;
                TQRLabel(QRBand10.FindChildControl('ypyfls_' + IntToStr(j -
                  1))).Caption := '';
                TQRLabel(QRBand10.FindChildControl('xmmcls_' + IntToStr(j -
                  1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring + ' '
                  +
                  trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring) + ' ' +
                  trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
              end;
              sp_zxjl_cq_dy.Next;
            end;
          end
          else
          begin
            aControl := QRBand10.FindChildControl('ksrqls' + IntToStr(j - 1));
            if aControl is TQRLabel then
              TQRLabel(aControl).Caption :=
                sp_zxjl_cq_dy.FieldByName('ksrq').asstring;
            aControl := QRBand10.FindChildControl('kdysmcls' + IntToStr(j - 1));
            if aControl is TQRLabel then
              TQRLabel(aControl).Caption :=
                sp_zxjl_cq_dy.FieldByName('kdysmc').asstring;
            if sp_zxjl_cq_dy.FieldByName('fzph').asstring <> '' then
            begin
              QRBand10.FindChildControl('QRImagels_' + IntToStr(j)).enabled :=
                true;
              QRBand10.FindChildControl('QRImagels_' + IntToStr(j)).Top :=
                TQRLabel(QRBand10.FindChildControl('xmmcls_' + IntToStr(j -
                1))).top;
              QRBand10.FindChildControl('QRImagels_' + IntToStr(j)).left :=
                QRBand10.FindChildControl('ypyfls_' + IntToStr(j - 1)).left - 20;
              QRBand10.FindChildControl('QRImagels_' + IntToStr(j)).height := 30;
              TQRLabel(QRBand10.FindChildControl('ypyfls_' + IntToStr(j -
                1))).Caption := trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring) +
                '  ' + trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
              TQRLabel(QRBand10.FindChildControl('xmmcls_' + IntToStr(j -
                1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring;
            end
            else
            begin
              QRBand10.FindChildControl('QRImagels_' + IntToStr(j)).enabled :=
                false;
              QRBand10.FindChildControl('xmmcls_' + IntToStr(j - 1)).Width := 235;
              TQRLabel(QRBand10.FindChildControl('ypyfls_' + IntToStr(j -
                1))).Caption := '';
              TQRLabel(QRBand10.FindChildControl('xmmcls_' + IntToStr(j -
                1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring + ' ' +
                trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring) + ' ' +
                trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
            end;
            sp_zxjl_cq_dy.Next;
          end;
        end;
        DM_data.qry_pub.Close;
        DM_data.qry_pub.SQL.text := 'select * from sys_kscwsz where bqdm=' + ''''
          + pub_bqdm + '''' + ' and bcbh=' + '''' +
          trim(sp_jbxx.fieldbyname('bch').asstring) + '''';
        try
          DM_data.qry_pub.Open;
        except
        end;
        QRLabel45.Caption := pub_yymc + '��ʱ��Һ�ƻ�ִ�е�';
        QRLabel46.Caption := '����:' + sp_jbxx.fieldbyname('brxm').asstring;
        QRLabel50.Caption := '������:' +
          Trim(DM_data.qry_pub.FieldByName('yybch').asstring);
        QRLabel51.Caption := '�Ա�:' + sp_jbxx.fieldbyname('brxb').asstring;
        QRLabel52.Caption := '����:' + trim(sp_jbxx.fieldbyname('brnl').asstring);
        QRLabel53.Caption := FormatDateTime('yyyy', frm_func.curr_date) + '��';
        if pub_yydm <> '0237' then
        begin
          QRLabel67.Caption := '����:' + sp_jbxx.fieldbyname('brxm').asstring +
            '      ' +
            '������:' + Trim(DM_data.qry_pub.FieldByName('yybch').asstring) +
            '      ' +
            '����:' + Trim(sp_jbxx.fieldbyname('tmh').asstring);
          //   '�Ա�:' + sp_jbxx.fieldbyname( 'brxb' ).asstring+'      '+
          //   '����:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
    //QuickRep3.Prepare;
          QRLabel58.Caption := '���ҽ����';
        end
        else
        begin
          QRLabel67.Caption := '����:' + sp_jbxx.fieldbyname('brxm').asstring +
            '      ' +
            '������:' + Trim(DM_data.qry_pub.FieldByName('yybch').asstring) +
            '      ' +
            '����:' + Trim(sp_jbxx.fieldbyname('tmh').asstring);
          QRLabel58.Caption := '';
        end;
        //QRLabel77.Caption:='';
        QuickRep5.Preview;
      end;
    end;
{$REGION '��α�ע�ʹ���'}
    //     end
    //     else
    //     begin
    //        sp_zxjl_cq_dy.First;
    //        if sp_zxjl_cq_dy.RecordCount mod 5 <> 0 then
    //          y := trunc( sp_zxjl_cq_dy.RecordCount / 5 ) + 1
    //        else
    //          y := trunc( sp_zxjl_cq_dy.RecordCount / 5 );
    //        count := sp_zxjl_cq_dy.RecordCount;
    //        for I := 1 to y do
    //        begin
    //          for j := 1 to 5 do
    //          begin
    //            if count < i * 5 then
    //            begin
    //              if j > ( 5 - ( y * 5 - count ) ) then
    //              begin
    //                aControl := DetailBand4.FindChildControl( 'ksrqj' + IntToStr( j - 1 ) );
    //                if aControl is TQRLabel then
    //                  TQRLabel( aControl ).Caption := '';
    //                aControl := DetailBand4.FindChildControl( 'kdysmcj' + IntToStr( j - 1 ) );
    //                if aControl is TQRLabel then
    //                  TQRLabel( aControl ).Caption := '';
    //                DetailBand4.FindChildControl( 'qrgrimagej' + IntToStr( j ) ).enabled := false;
    //                //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
    //                TQRLabel( DetailBand4.FindChildControl( 'ypyfj' + IntToStr( j - 1 ) ) ).Caption := '';
    //                //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
    //                TQRLabel( DetailBand4.FindChildControl( 'xmmcj' + IntToStr( j - 1 ) ) ).caption := '';
    //              end
    //              else
    //              begin
    //                aControl := DetailBand4.FindChildControl( 'ksrqj' + IntToStr( j - 1 ) );
    //                if aControl is TQRLabel then
    //                  TQRLabel( aControl ).Caption := sp_zxjl_cq_dy.FieldByName( 'ksrq' ).AsString;
    //                aControl := DetailBand4.FindChildControl( 'kdysmcj' + IntToStr( j - 1 ) );
    //                if aControl is TQRLabel then
    //                  TQRLabel( aControl ).Caption := sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;
    //                if sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
    //                begin
    //                  x := ( length( sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
    //                  DetailBand4.FindChildControl( 'QRgrImagej' + IntToStr( j ) ).enabled := true;
    //                  DetailBand4.FindChildControl( 'QRgrImagej' + IntToStr( j ) ).Top := TQRLabel( DetailBand4.FindChildControl( 'xmmcj' + IntToStr( j - 1 ) ) ).top;
    //                  DetailBand4.FindChildControl( 'QRgrImagej' + IntToStr( j ) ).left := DetailBand4.FindChildControl( 'ypyfj' + IntToStr( j - 1 ) ).left - 20;
    //                  DetailBand4.FindChildControl( 'qrgrimagej' + IntToStr( j ) ).height := 30;
    //                  TQRLabel( DetailBand4.FindChildControl( 'ypyfj' + IntToStr( j - 1 ) ) ).Caption := trim( sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
    //                  TQRLabel( DetailBand4.FindChildControl( 'xmmcj' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
    //                  //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
    //                end
    //                else
    //                begin
    //                  DetailBand4.FindChildControl( 'qrgrimagej' + IntToStr( j ) ).enabled := false;
    //                  DetailBand4.FindChildControl( 'xmmcj' + IntToStr( j - 1 ) ).Width := 235;
    //                  TQRLabel( DetailBand4.FindChildControl( 'ypyfj' + IntToStr( j - 1 ) ) ).Caption := '';
    //                  TQRLabel( DetailBand4.FindChildControl( 'xmmcj' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + ' ' + trim( sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + ' ' + trim( sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
    //                  // TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
    //                end;
    //                sp_zxjl_cq_dy.Next;
    //              end;
    //            end
    //            else
    //            begin
    //              aControl := DetailBand4.FindChildControl( 'ksrqj' + IntToStr( j - 1 ) );
    //              if aControl is TQRLabel then
    //                TQRLabel( aControl ).Caption := sp_zxjl_cq_dy.FieldByName( 'ksrq' ).asstring;
    //              aControl := DetailBand4.FindChildControl( 'kdysmcj' + IntToStr( j - 1 ) );
    //              if aControl is TQRLabel then
    //                TQRLabel( aControl ).Caption := sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;
    //              if sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
    //              begin
    //                x := ( length( sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
    //                DetailBand4.FindChildControl( 'QRgrImagej' + IntToStr( j ) ).enabled := true;
    //                DetailBand4.FindChildControl( 'QRgrImagej' + IntToStr( j ) ).Top := TQRLabel( DetailBand4.FindChildControl( 'xmmcj' + IntToStr( j - 1 ) ) ).top;
    //                DetailBand4.FindChildControl( 'qrgrimagej' + IntToStr( j ) ).left := DetailBand4.FindChildControl( 'ypyfj' + IntToStr( j - 1 ) ).left - 20;
    //                DetailBand4.FindChildControl( 'qrgrimagej' + IntToStr( j ) ).height := 30;
    //                TQRLabel( DetailBand4.FindChildControl( 'ypyfj' + IntToStr( j - 1 ) ) ).Caption := trim( sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
    //                TQRLabel( DetailBand4.FindChildControl( 'xmmcj' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
    //                //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
    //              end
    //              else
    //              begin
    //                DetailBand4.FindChildControl( 'qrgrimagej' + IntToStr( j ) ).enabled := false;
    //                DetailBand4.FindChildControl( 'xmmcj' + IntToStr( j - 1 ) ).Width := 235;
    //                TQRLabel( DetailBand4.FindChildControl( 'ypyfj' + IntToStr( j - 1 ) ) ).Caption := '';
    //                TQRLabel( DetailBand4.FindChildControl( 'xmmcj' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + ' ' + trim( sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + ' ' + trim( sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
    //                //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
    //              end;
    //              sp_zxjl_cq_dy.Next;
    //            end;
    //          end;
    //          QRLabel2jy0.Caption := pub_yymc + '��ʱ��Һ�ƻ�ִ�е�';
    //          DM_data.qry_pub.Close;
    //          DM_data.qry_pub.SQL.text := 'select * from sys_kscwsz where bqdm=' + '''' + pub_bqdm + '''' + ' and bcbh=' + '''' + trim( sp_jbxx.fieldbyname( 'bch' ).asstring ) + '''';
    //          DM_data.qry_pub.Open;
    //
    //          QRLabel3jy0.Caption := '����:' + sp_jbxx.fieldbyname( 'brxm' ).asstring;
    //          QRLabel20jy0.Caption := '������:' + Trim( DM_data.qry_pub.FieldByName( 'yybch' ).asstring );
    //          QRLabel21jy0.Caption := '�Ա�:' + sp_jbxx.fieldbyname( 'brxb' ).asstring;
    //          QRLabel26jy0.Caption := '����:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
    //          nyjy0.Caption := FormatDateTime( 'yyyy', frm_func.curr_date ) + '��';
    //
    //          QRLabel62jy.Caption := '����:' + sp_jbxx.fieldbyname( 'brxm' ).asstring + '      ' +
    //            '������:' + Trim( DM_data.qry_pub.FieldByName( 'yybch' ).asstring ) + '      '+
    //            '����:' + Trim( sp_jbxx.fieldbyname( 'tmh' ).asstring  );
    //          //'�Ա�:' + sp_jbxx.fieldbyname( 'brxb' ).asstring +'      '+
    //          //'����:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
    //  //QuickRep3.Prepare;
    //          //QRLabel71.Caption := '���ҽ��:';
    //          QuickRep9.Preview;
    //        end;
    //     end;
{$ENDREGION}
  end;
end;

procedure Tfrm_yzinput.MenuItem4Click(Sender: TObject);
var
  v_yytj, v_lb, filter: string;
begin
  Application.OnMessage := nil;
  with sp_zxjl_cq_dy do
  begin
    Filtered := False;
    Close;
    Parameters.ParamByName('@zyh').Value :=
      Trim(sp_jbxx.fieldbyname('zyh').asstring);
    Parameters.ParamByName('@fs').Value := 1;
    Open;
  end;
  DM_data.qry_pub.close;
  DM_data.qry_pub.sql.text :=
    'select yytj from zybl_zyyz_dytjsz where dyxm=''��Һ�ƻ���''';
  try
    DM_data.qry_pub.Open;
  except
  end;
  if DM_data.qry_pub.IsEmpty then
  begin
    v_yytj := '';
  end
  else
  begin
    DM_data.qry_pub.First;
    while not DM_data.qry_pub.eof do
    begin
      v_yytj := v_yytj + '(bqdm=''' + pub_bqdm + ''' and yytj=' + '''' +
        DM_data.qry_pub.FieldByName('yytj').asstring + '''' +
        ' and  tzrq=null and xmmc<>''''  and kdrq>=' + '''' +
        formatdatetime('yy-MM-dd', frm_func.curr_date) + ' 00:00' + ''')' +
        ' or ';
      DM_data.qry_pub.Next;
    end;
  end;

  DM_data.qry_pub.close;
  DM_data.qry_pub.sql.text :=
    'select lbmc from zybl_zyyz_dylbsz where dyxm=''��Һ�ƻ���''';
  try
    DM_data.qry_pub.Open;
  except
  end;
  if DM_data.qry_pub.IsEmpty then
  begin
    v_lb := '';
  end
  else
  begin
    DM_data.qry_pub.First;
    while not DM_data.qry_pub.eof do
    begin
      v_lb := v_lb + '(bqdm=''' + pub_bqdm + ''' and lb=' + ''''
        + DM_data.qry_pub.FieldByName('lbmc').asstring
        + '''' + ' and  tzrq=null  and kdrq>=' + '''' +
        formatdatetime('yy-MM-dd',
        frm_func.curr_date) + ' 00:00' + ''')' + ' or ';
      DM_data.qry_pub.Next;
    end;
  end;

  if v_yytj + v_lb = '' then
  begin
    filter := ' 1<>1 ';
  end
  else
  begin
    filter := v_yytj + v_lb + ' (bqdm=''' + pub_bqdm +
      ''' and xmmc like ''%Ƥ��%'' )' +
      ' or ' + ' (bqdm=''' + pub_bqdm + ''' and xmmc like ''%����%'' )' +
      ' or ' + ' (bqdm=''' + pub_bqdm +
      ''' and xmmc like ''%��%'' and  xmmc like ''%Ѫ%'' and lb<>''����'' and  kdrq>='
      + '''' + formatdatetime('yy-MM-dd', frm_func.curr_date) + ' 00:00' +
      ''')';
  end;

  sp_zxjl_cq_dy.Filter := filter;
  sp_zxjl_cq_dy.Filtered := True;
  if sp_zxjl_cq_dy.IsEmpty then
  begin
    Application.MessageBox('û�м�¼��', '��ʾ', 0 + 48);
    Exit;
  end;
  application.CreateForm(Tfrm_zxdxd, frm_zxdxd);
  try
    frm_zxdxd.ShowModal;
  finally
    frm_zxdxd.free;
  end;
end;

procedure Tfrm_yzinput.MenuItem5Click(Sender: TObject);
var
  i, y, j, count, x: Integer;
  aControl: TControl;
  v_lb, v_yytj, filter: string;
begin
  with sp_zxjl_cq_dy do
  begin
    Filtered := False;
    Close;
    Parameters.ParamByName('@zyh').Value :=
      Trim(sp_jbxx.fieldbyname('zyh').asstring);
    Parameters.ParamByName('@fs').Value := 0;
    Open;
  end;
  //sp_zxjl_cq_dy.Filtered := False;
  DM_data.qry_pub.close;
  DM_data.qry_pub.sql.text :=
    'select yytj from zybl_zyyz_dytjsz where dyxm=''ע��ƻ���''';
  try
    DM_data.qry_pub.Open;
  except
  end;
  if DM_data.qry_pub.IsEmpty then
  begin
    v_yytj := '';
  end
  else
  begin
    DM_data.qry_pub.First;
    while not DM_data.qry_pub.eof do
    begin
      v_yytj := v_yytj + '(yytj=' + '''' +
        DM_data.qry_pub.FieldByName('yytj').asstring + '''' + ' and  tzrq=null )'
        +
        ' or ';
      DM_data.qry_pub.Next;
    end;

  end;

  DM_data.qry_pub.close;
  DM_data.qry_pub.sql.text :=
    'select lbmc from zybl_zyyz_dylbsz where dyxm=''ע��ƻ���''';
  try
    DM_data.qry_pub.Open;
  except
  end;
  if DM_data.qry_pub.IsEmpty then
  begin
    v_lb := '';
  end
  else
  begin
    DM_data.qry_pub.First;
    while not DM_data.qry_pub.eof do
    begin
      v_lb := v_lb + '(lb=' + '''' + DM_data.qry_pub.FieldByName('lbmc').asstring
        + '''' + ' and  tzrq=null )' + ' or ';
      DM_data.qry_pub.Next;
    end;

  end;

  if v_yytj + v_lb = '' then
  begin
    filter := ' 1<>1 ';
  end
  else
  begin
    filter := v_yytj + v_lb + ' ( yytj=''�������'' )';
  end;
  sp_zxjl_cq_dy.Filter := filter;
  sp_zxjl_cq_dy.Filtered := True;
  if sp_zxjl_cq_dy.IsEmpty then
  begin
    Application.MessageBox('û�м�¼��', '��ʾ', 0 + 48);
    Exit;
  end;
  if not sp_zxjl_cq_dy.IsEmpty then
  begin
    if zzdx = 'A4' then
    begin
      sp_zxjl_cq_dy.First;
      if sp_zxjl_cq_dy.RecordCount mod 5 <> 0 then
        y := trunc(sp_zxjl_cq_dy.RecordCount / 5) + 1
      else
        y := trunc(sp_zxjl_cq_dy.RecordCount / 5);
      count := sp_zxjl_cq_dy.RecordCount;
      for I := 1 to y do
      begin
        for j := 1 to 5 do
        begin
          if count < i * 5 then
          begin
            if j > (5 - (y * 5 - count)) then
            begin
              aControl := DetailBand1.FindChildControl('ksrq' + IntToStr(j -
                1));
              if aControl is TQRLabel then
                TQRLabel(aControl).Caption := '';
              aControl := DetailBand1.FindChildControl('kdysmc' + IntToStr(j -
                1));
              if aControl is TQRLabel then
                TQRLabel(aControl).Caption := '';
              DetailBand1.FindChildControl('qrgrimage' + IntToStr(j)).enabled :=
                false;
              //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
              TQRLabel(DetailBand1.FindChildControl('ypyf' + IntToStr(j -
                1))).Caption := '';
              //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
              TQRLabel(DetailBand1.FindChildControl('xmmc' + IntToStr(j -
                1))).caption := '';
            end
            else
            begin
              aControl := DetailBand1.FindChildControl('ksrq' + IntToStr(j -
                1));
              if aControl is TQRLabel then
                TQRLabel(aControl).Caption :=
                  sp_zxjl_cq_dy.FieldByName('ksrq').AsString;
              aControl := DetailBand1.FindChildControl('kdysmc' + IntToStr(j -
                1));
              if aControl is TQRLabel then
                TQRLabel(aControl).Caption :=
                  sp_zxjl_cq_dy.FieldByName('kdysmc').asstring;
              if sp_zxjl_cq_dy.FieldByName('fzph').asstring <> '' then
              begin
                DetailBand1.FindChildControl('QRgrImage' + IntToStr(j)).enabled
                  := true;
                DetailBand1.FindChildControl('QRgrImage' + IntToStr(j)).Top :=
                  TQRLabel(DetailBand1.FindChildControl('xmmc' + IntToStr(j -
                  1))).top;
                DetailBand1.FindChildControl('QRgrImage' + IntToStr(j)).left :=
                  DetailBand1.FindChildControl('ypyf' + IntToStr(j - 1)).left -
                  20;
                DetailBand1.FindChildControl('qrgrimage' + IntToStr(j)).height
                  := 30;
                TQRLabel(DetailBand1.FindChildControl('ypyf' + IntToStr(j -
                  1))).Caption :=
                  trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring)
                  + '  ' + trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
                TQRLabel(DetailBand1.FindChildControl('xmmc' + IntToStr(j -
                  1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring;
                //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
              end
              else
              begin
                DetailBand1.FindChildControl('qrgrimage' + IntToStr(j)).enabled
                  := false;
                DetailBand1.FindChildControl('xmmc' + IntToStr(j - 1)).Width :=
                  235;
                TQRLabel(DetailBand1.FindChildControl('ypyf' + IntToStr(j -
                  1))).Caption := '';
                TQRLabel(DetailBand1.FindChildControl('xmmc' + IntToStr(j -
                  1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring +
                  ' '
                  + trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring) + ' ' +
                  trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
                // TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
              end;
              sp_zxjl_cq_dy.Next;
            end;
          end
          else
          begin
            aControl := DetailBand1.FindChildControl('ksrq' + IntToStr(j - 1));
            if aControl is TQRLabel then
              TQRLabel(aControl).Caption :=
                sp_zxjl_cq_dy.FieldByName('ksrq').asstring;
            aControl := DetailBand1.FindChildControl('kdysmc' + IntToStr(j -
              1));
            if aControl is TQRLabel then
              TQRLabel(aControl).Caption :=
                sp_zxjl_cq_dy.FieldByName('kdysmc').asstring;
            if sp_zxjl_cq_dy.FieldByName('fzph').asstring <> '' then
            begin
              DetailBand1.FindChildControl('QRgrImage' + IntToStr(j)).enabled :=
                true;
              DetailBand1.FindChildControl('QRgrImage' + IntToStr(j)).Top :=
                TQRLabel(DetailBand1.FindChildControl('xmmc' + IntToStr(j -
                1))).top;
              DetailBand1.FindChildControl('qrgrimage' + IntToStr(j)).left :=
                DetailBand1.FindChildControl('ypyf' + IntToStr(j - 1)).left -
                20;
              DetailBand1.FindChildControl('qrgrimage' + IntToStr(j)).height :=
                30;
              TQRLabel(DetailBand1.FindChildControl('ypyf' + IntToStr(j -
                1))).Caption := trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring)
                +
                '  ' + trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
              TQRLabel(DetailBand1.FindChildControl('xmmc' + IntToStr(j -
                1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring;
              //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end
            else
            begin
              DetailBand1.FindChildControl('qrgrimage' + IntToStr(j)).enabled :=
                false;
              DetailBand1.FindChildControl('xmmc' + IntToStr(j - 1)).Width :=
                235;
              TQRLabel(DetailBand1.FindChildControl('ypyf' + IntToStr(j -
                1))).Caption := '';
              TQRLabel(DetailBand1.FindChildControl('xmmc' + IntToStr(j -
                1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring + ' '
                +
                trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring) + ' ' +
                trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
              //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end;
            sp_zxjl_cq_dy.Next;
          end;
        end;
        QRLabel2.Caption := pub_yymc + '����ע��ƻ�ִ�е�';
        DM_data.qry_pub.Close;
        DM_data.qry_pub.SQL.text := 'select * from sys_kscwsz where bqdm=' + ''''
          + pub_bqdm + '''' + ' and bcbh=' + '''' +
          trim(sp_jbxx.fieldbyname('bch').asstring) + '''';
        try
          DM_data.qry_pub.Open;
        except
        end;

        QRLabel3.Caption := '����:' + sp_jbxx.fieldbyname('brxm').asstring;
        QRLabel20.Caption := '������:' +
          Trim(DM_data.qry_pub.FieldByName('yybch').asstring);
        QRLabel21.Caption := '�Ա�:' + sp_jbxx.fieldbyname('brxb').asstring;
        QRLabel26.Caption := '����:' +
          trim(sp_jbxx.fieldbyname('brnl').asstring);
        ny.Caption := FormatDateTime('yyyy', frm_func.curr_date) + '��';

        QRLabel61.Caption := '����:' + sp_jbxx.fieldbyname('brxm').asstring +
          '      ' +
          '������:' + Trim(DM_data.qry_pub.FieldByName('yybch').asstring) +
          '      ' +
          '����:' + Trim(sp_jbxx.fieldbyname('tmh').asstring);
        //'�Ա�:' + sp_jbxx.fieldbyname( 'brxb' ).asstring +'      '+
        //'����:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
//QuickRep3.Prepare;
        QRLabel57.Caption := '���ҽ��:';
        QuickRep3.Preview;
      end;
    end
    else if zzdx = 'B5' then
    begin
      sp_zxjl_cq_dy.First;
      if sp_zxjl_cq_dy.RecordCount mod 9 <> 0 then
        y := trunc(sp_zxjl_cq_dy.RecordCount / 9) + 1
      else
        y := trunc(sp_zxjl_cq_dy.RecordCount / 9);
      count := sp_zxjl_cq_dy.RecordCount;
      for I := 1 to y do
      begin
        for j := 1 to 9 do
        begin
          if count < i * 9 then
          begin
            if j > (9 - (y * 9 - count)) then
            begin
              aControl := DetailBand2.FindChildControl('ksrqjy' + IntToStr(j -
                1));
              if aControl is TQRLabel then
                TQRLabel(aControl).Caption := '';
              aControl := DetailBand2.FindChildControl('kdysmcjy' + IntToStr(j -
                1));
              if aControl is TQRLabel then
                TQRLabel(aControl).Caption := '';
              DetailBand2.FindChildControl('qrgrimagejy' + IntToStr(j)).enabled
                := false;
              //  TQRLabel( DetailBand2.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
              TQRLabel(DetailBand2.FindChildControl('ypyfjy' + IntToStr(j -
                1))).Caption := '';
              //TQRLabel( DetailBand2.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
              TQRLabel(DetailBand2.FindChildControl('xmmcjy' + IntToStr(j -
                1))).caption := '';
            end
            else
            begin
              aControl := DetailBand2.FindChildControl('ksrqjy' + IntToStr(j -
                1));
              if aControl is TQRLabel then
                TQRLabel(aControl).Caption :=
                  sp_zxjl_cq_dy.FieldByName('ksrq').AsString;
              aControl := DetailBand2.FindChildControl('kdysmcjy' + IntToStr(j -
                1));
              if aControl is TQRLabel then
                TQRLabel(aControl).Caption :=
                  sp_zxjl_cq_dy.FieldByName('kdysmc').asstring;
              if sp_zxjl_cq_dy.FieldByName('fzph').asstring <> '' then
              begin
                DetailBand2.FindChildControl('QRgrImagejy' + IntToStr(j)).enabled
                  := true;
                DetailBand2.FindChildControl('QRgrImagejy' + IntToStr(j)).Top :=
                  TQRLabel(DetailBand2.FindChildControl('xmmcjy' + IntToStr(j -
                  1))).top;
                DetailBand2.FindChildControl('QRgrImagejy' + IntToStr(j)).left
                  := DetailBand2.FindChildControl('ypyfjy' + IntToStr(j -
                  1)).left
                  - 20;
                DetailBand2.FindChildControl('qrgrimagejy' + IntToStr(j)).height
                  := 30;
                TQRLabel(DetailBand2.FindChildControl('ypyfjy' + IntToStr(j -
                  1))).Caption :=
                  trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring)
                  + '  ' + trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
                TQRLabel(DetailBand2.FindChildControl('xmmcjy' + IntToStr(j -
                  1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring;
                //TQRLabel( DetailBand2.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
              end
              else
              begin
                DetailBand2.FindChildControl('qrgrimagejy' + IntToStr(j)).enabled
                  := false;
                DetailBand2.FindChildControl('xmmcjy' + IntToStr(j - 1)).Width
                  := 235;
                TQRLabel(DetailBand2.FindChildControl('ypyfjy' + IntToStr(j -
                  1))).Caption := '';
                TQRLabel(DetailBand2.FindChildControl('xmmcjy' + IntToStr(j -
                  1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring +
                  ' '
                  + trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring) + ' ' +
                  trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
                // TQRLabel( DetailBand2.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
              end;
              sp_zxjl_cq_dy.Next;
            end;
          end
          else
          begin
            aControl := DetailBand2.FindChildControl('ksrqjy' + IntToStr(j -
              1));
            if aControl is TQRLabel then
              TQRLabel(aControl).Caption :=
                sp_zxjl_cq_dy.FieldByName('ksrq').asstring;
            aControl := DetailBand2.FindChildControl('kdysmcjy' + IntToStr(j -
              1));
            if aControl is TQRLabel then
              TQRLabel(aControl).Caption :=
                sp_zxjl_cq_dy.FieldByName('kdysmc').asstring;
            if sp_zxjl_cq_dy.FieldByName('fzph').asstring <> '' then
            begin
              DetailBand2.FindChildControl('QRgrImagejy' + IntToStr(j)).enabled
                := true;
              DetailBand2.FindChildControl('QRgrImagejy' + IntToStr(j)).Top :=
                TQRLabel(DetailBand2.FindChildControl('xmmcjy' + IntToStr(j -
                1))).top;
              DetailBand2.FindChildControl('qrgrimagejy' + IntToStr(j)).left :=
                DetailBand2.FindChildControl('ypyfjy' + IntToStr(j - 1)).left -
                20;
              DetailBand2.FindChildControl('qrgrimagejy' + IntToStr(j)).height
                := 30;
              TQRLabel(DetailBand2.FindChildControl('ypyfjy' + IntToStr(j -
                1))).Caption := trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring)
                +
                '  ' + trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
              TQRLabel(DetailBand2.FindChildControl('xmmcjy' + IntToStr(j -
                1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring;
              //  TQRLabel( DetailBand2.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end
            else
            begin
              DetailBand2.FindChildControl('qrgrimagejy' + IntToStr(j)).enabled
                := false;
              DetailBand2.FindChildControl('xmmcjy' + IntToStr(j - 1)).Width :=
                235;
              TQRLabel(DetailBand2.FindChildControl('ypyfjy' + IntToStr(j -
                1))).Caption := '';
              TQRLabel(DetailBand2.FindChildControl('xmmcjy' + IntToStr(j -
                1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring + ' '
                +
                trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring) + ' ' +
                trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
              //  TQRLabel( DetailBand2.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end;
            sp_zxjl_cq_dy.Next;
          end;
        end;
        QRLabel2jy.Caption := pub_yymc + '����ע��ƻ�ִ�е�';
        DM_data.qry_pub.Close;
        DM_data.qry_pub.SQL.text := 'select * from sys_kscwsz where bqdm=' + ''''
          + pub_bqdm + '''' + ' and bcbh=' + '''' +
          trim(sp_jbxx.fieldbyname('bch').asstring) + '''';
        try
          DM_data.qry_pub.Open;
        except
        end;

        QRLabel3jy.Caption := '����:' + sp_jbxx.fieldbyname('brxm').asstring;
        QRLabel20jy.Caption := '������:' +
          Trim(DM_data.qry_pub.FieldByName('yybch').asstring);
        QRLabel21jy.Caption := '�Ա�:' + sp_jbxx.fieldbyname('brxb').asstring;
        QRLabel26jy.Caption := '����:' +
          trim(sp_jbxx.fieldbyname('brnl').asstring);
        nyjy.Caption := FormatDateTime('yyyy', frm_func.curr_date) + '��';

        QRLabel61jy.Caption := '����:' + sp_jbxx.fieldbyname('brxm').asstring +
          '      ' +
          '������:' + Trim(DM_data.qry_pub.FieldByName('yybch').asstring) +
          '      ' +
          '����:' + Trim(sp_jbxx.fieldbyname('tmh').asstring);
        QuickRep6.Preview;
      end;
    end
    else
    begin
      sp_zxjl_cq_dy.First;
      if sp_zxjl_cq_dy.RecordCount mod 8 <> 0 then
        y := trunc(sp_zxjl_cq_dy.RecordCount / 8) + 1
      else
        y := trunc(sp_zxjl_cq_dy.RecordCount / 8);
      count := sp_zxjl_cq_dy.RecordCount;
      for I := 1 to y do
      begin
        for j := 1 to 8 do
        begin
          if count < i * 8 then
          begin
            if j > (8 - (y * 8 - count)) then
            begin
              aControl := qrbndcqzs.FindChildControl('cqzsksrq' + IntToStr(j -
                1));
              if aControl is TQRLabel then
                TQRLabel(aControl).Caption := '';
              aControl := qrbndcqzs.FindChildControl('cqzskdys' + IntToStr(j -
                1));
              if aControl is TQRLabel then
                TQRLabel(aControl).Caption := '';
              qrbndcqzs.FindChildControl('QRImagezs' + IntToStr(j)).enabled :=
                false;
              //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
              TQRLabel(qrbndcqzs.FindChildControl('cqzsypyf' + IntToStr(j -
                1))).Caption := '';
              //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
              TQRLabel(qrbndcqzs.FindChildControl('cqzsxmmc' + IntToStr(j -
                1))).caption := '';
            end
            else
            begin
              aControl := qrbndcqzs.FindChildControl('cqzsksrq' + IntToStr(j -
                1));
              if aControl is TQRLabel then
                TQRLabel(aControl).Caption :=
                  sp_zxjl_cq_dy.FieldByName('ksrq').AsString;
              aControl := qrbndcqzs.FindChildControl('cqzskdys' + IntToStr(j -
                1));
              if aControl is TQRLabel then
                TQRLabel(aControl).Caption :=
                  sp_zxjl_cq_dy.FieldByName('kdysmc').asstring;
              if sp_zxjl_cq_dy.FieldByName('fzph').asstring <> '' then
              begin
                qrbndcqzs.FindChildControl('QRImagezs' + IntToStr(j)).enabled :=
                  true;
                qrbndcqzs.FindChildControl('QRImagezs' + IntToStr(j)).Top :=
                  TQRLabel(qrbndcqzs.FindChildControl('cqzsxmmc' + IntToStr(j -
                  1))).top;
                qrbndcqzs.FindChildControl('QRImagezs' + IntToStr(j)).left :=
                  qrbndcqzs.FindChildControl('cqzsypyf' + IntToStr(j - 1)).left
                  -
                  20;
                qrbndcqzs.FindChildControl('QRImagezs' + IntToStr(j)).height :=
                  30;
                TQRLabel(qrbndcqzs.FindChildControl('cqzsypyf' + IntToStr(j -
                  1))).Caption :=
                  trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring)
                  + '  ' + trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
                TQRLabel(qrbndcqzs.FindChildControl('cqzsxmmc' + IntToStr(j -
                  1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring;
                //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
              end
              else
              begin
                qrbndcqzs.FindChildControl('QRImagezs' + IntToStr(j)).enabled :=
                  false;
                //qrbndcqzs.FindChildControl( 'cqzsxmmc' + IntToStr( j - 1 ) ).Width := 235;
                TQRLabel(qrbndcqzs.FindChildControl('cqzsypyf' + IntToStr(j -
                  1))).Caption := '';
                TQRLabel(qrbndcqzs.FindChildControl('cqzsxmmc' + IntToStr(j -
                  1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring +
                  ' '
                  + trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring) + ' ' +
                  trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
                // TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
              end;
              sp_zxjl_cq_dy.Next;
            end;
          end
          else
          begin
            aControl := qrbndcqzs.FindChildControl('cqzsksrq' + IntToStr(j -
              1));
            if aControl is TQRLabel then
              TQRLabel(aControl).Caption :=
                sp_zxjl_cq_dy.FieldByName('ksrq').asstring;
            aControl := qrbndcqzs.FindChildControl('cqzskdys' + IntToStr(j -
              1));
            if aControl is TQRLabel then
              TQRLabel(aControl).Caption :=
                sp_zxjl_cq_dy.FieldByName('kdysmc').asstring;
            if sp_zxjl_cq_dy.FieldByName('fzph').asstring <> '' then
            begin
              qrbndcqzs.FindChildControl('QRImagezs' + IntToStr(j)).enabled :=
                true;
              qrbndcqzs.FindChildControl('QRImagezs' + IntToStr(j)).Top :=
                TQRLabel(qrbndcqzs.FindChildControl('cqzsxmmc' + IntToStr(j -
                1))).top;
              qrbndcqzs.FindChildControl('QRImagezs' + IntToStr(j)).left :=
                qrbndcqzs.FindChildControl('cqzsypyf' + IntToStr(j - 1)).left -
                20;
              qrbndcqzs.FindChildControl('QRImagezs' + IntToStr(j)).height :=
                30;
              TQRLabel(qrbndcqzs.FindChildControl('cqzsypyf' + IntToStr(j -
                1))).Caption := trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring)
                +
                '  ' + trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
              TQRLabel(qrbndcqzs.FindChildControl('cqzsxmmc' + IntToStr(j -
                1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring;
              //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end
            else
            begin
              qrbndcqzs.FindChildControl('QRImagezs' + IntToStr(j)).enabled :=
                false;
              //qrbndcqzs.FindChildControl( 'cqzsxmmc' + IntToStr( j - 1 ) ).Width := 235;
              TQRLabel(qrbndcqzs.FindChildControl('cqzsypyf' + IntToStr(j -
                1))).Caption := '';
              TQRLabel(qrbndcqzs.FindChildControl('cqzsxmmc' + IntToStr(j -
                1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring + ' '
                +
                trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring) + ' ' +
                trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
              //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end;
            sp_zxjl_cq_dy.Next;
          end;
        end;
        QRcqzsmc.Caption := pub_yymc + '����ע��ƻ�ִ�е�';
        DM_data.qry_pub.Close;
        DM_data.qry_pub.SQL.text := 'select * from sys_kscwsz where bqdm=' + ''''
          + pub_bqdm + '''' + ' and bcbh=' + '''' +
          trim(sp_jbxx.fieldbyname('bch').asstring) + '''';
        try
          DM_data.qry_pub.Open;
        except
        end;

        QRcqzsxm.Caption := '����:' + sp_jbxx.fieldbyname('brxm').asstring;
        QRcqzsbch.Caption := '������:' +
          Trim(DM_data.qry_pub.FieldByName('yybch').asstring);
        QRcqzsxb.Caption := '�Ա�:' + sp_jbxx.fieldbyname('brxb').asstring;
        QRcqzsnl.Caption := '����:' +
          trim(sp_jbxx.fieldbyname('brnl').asstring);
        QRcqzsn.Caption := FormatDateTime('yyyy', frm_func.curr_date) + '��';
        QRcqzsxmxm.Caption := '����:' + sp_jbxx.fieldbyname('brxm').asstring;
        QRcqzsbchbch.Caption := '������:' +
          Trim(DM_data.qry_pub.FieldByName('yybch').asstring);
        QRcqzskhkh.Caption := '����:' +
          Trim(sp_jbxx.fieldbyname('tmh').asstring);

        //QRLabel62jy.Caption := '����:' + sp_jbxx.fieldbyname( 'brxm' ).asstring + '      ' +
        //  '������:' + Trim( DM_data.qry_pub.FieldByName( 'yybch' ).asstring ) + '      '+
        //  '����:' + Trim( sp_jbxx.fieldbyname( 'tmh' ).asstring  );
        //'�Ա�:' + sp_jbxx.fieldbyname( 'brxb' ).asstring +'      '+
        //'����:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
//QuickRep3.Prepare;
        //QRLabel71.Caption := '���ҽ��:';
        qckrp2.Preview;
      end;
    end;
  end;
end;

procedure Tfrm_yzinput.MenuItem6Click(Sender: TObject);
var
  v_yytj, v_lb, filter: string;
begin
  with sp_zxjl_cq_dy do
  begin
    Filtered := False;
    Close;
    Parameters.ParamByName('@zyh').Value :=
      Trim(sp_jbxx.fieldbyname('zyh').asstring);
    Parameters.ParamByName('@fs').Value := 0;
    Open;
  end;
  //sp_zxjl_cq_dy.Filtered := False;
  DM_data.qry_pub.close;
  DM_data.qry_pub.sql.text :=
    'select yytj from zybl_zyyz_dytjsz where dyxm=''ע��ƻ���''';
  try
    DM_data.qry_pub.Open;
  except
  end;
  if DM_data.qry_pub.IsEmpty then
  begin
    v_yytj := '';
  end
  else
  begin
    DM_data.qry_pub.First;
    while not DM_data.qry_pub.eof do
    begin
      v_yytj := v_yytj + '(yytj=' + '''' +
        DM_data.qry_pub.FieldByName('yytj').asstring + '''' + ' and  tzrq=null )'
        +
        ' or ';
      DM_data.qry_pub.Next;
    end;

  end;

  DM_data.qry_pub.close;
  DM_data.qry_pub.sql.text :=
    'select lbmc from zybl_zyyz_dylbsz where dyxm=''ע��ƻ���''';
  try
    DM_data.qry_pub.Open;
  except
  end;
  if DM_data.qry_pub.IsEmpty then
  begin
    v_lb := '';
  end
  else
  begin
    DM_data.qry_pub.First;
    while not DM_data.qry_pub.eof do
    begin
      v_lb := v_lb + '(lb=' + '''' + DM_data.qry_pub.FieldByName('lbmc').asstring
        + '''' + ' and  tzrq=null )' + ' or ';
      DM_data.qry_pub.Next;
    end;

  end;

  if v_yytj + v_lb = '' then
  begin
    filter := ' 1<>1 ';
  end
  else
  begin
    filter := v_yytj + v_lb + ' ( yytj=''�������'' )';
  end;
  sp_zxjl_cq_dy.Filter := filter;
  sp_zxjl_cq_dy.Filtered := True;
  if sp_zxjl_cq_dy.IsEmpty then
  begin
    Application.MessageBox('û�м�¼��', '��ʾ', 0 + 48);
    Exit;
  end;
  application.CreateForm(Tfrm_zxdxd, frm_zxdxd);
  try
    frm_zxdxd.ShowModal;
  finally
    frm_zxdxd.free;
  end;
end;

procedure Tfrm_yzinput.MenuItem7Click(Sender: TObject);
var
  i, y, j, count, x: Integer;
  aControl: TControl;
  v_yytj, v_lb, filter: string;
begin
  with sp_zxjl_cq_dy do
  begin
    Filtered := False;
    Close;
    Parameters.ParamByName('@zyh').Value :=
      Trim(sp_jbxx.fieldbyname('zyh').asstring);
    Parameters.ParamByName('@fs').Value := 1;
    Open;
  end;
  //sp_zxjl_cq_dy.Filtered := False;
  DM_data.qry_pub.close;
  DM_data.qry_pub.sql.text :=
    'select yytj from zybl_zyyz_dytjsz where dyxm=''ע��ƻ���''';
  try
    DM_data.qry_pub.Open;
  except
  end;
  if DM_data.qry_pub.IsEmpty then
  begin
    v_yytj := '';
  end
  else
  begin
    DM_data.qry_pub.First;
    while not DM_data.qry_pub.eof do
    begin
      v_yytj := v_yytj + '(yytj=' + '''' +
        DM_data.qry_pub.FieldByName('yytj').asstring + '''' +
        ' and  tzrq=null  and kdrq>=' + '''' + formatdatetime('yy-MM-dd',
        frm_func.curr_date) + ' 00:00' + ''')' + ' or ';
      DM_data.qry_pub.Next;
    end;

  end;

  DM_data.qry_pub.close;
  DM_data.qry_pub.sql.text :=
    'select lbmc from zybl_zyyz_dylbsz where dyxm=''ע��ƻ���''';
  try
    DM_data.qry_pub.Open;
  except
  end;
  if DM_data.qry_pub.IsEmpty then
  begin
    v_lb := '';
  end
  else
  begin
    DM_data.qry_pub.First;
    while not DM_data.qry_pub.eof do
    begin
      v_lb := v_lb + '(lb=' + '''' + DM_data.qry_pub.FieldByName('lbmc').asstring
        + '''' + ' and  tzrq=null  and kdrq>=' + '''' +
        formatdatetime('yy-MM-dd',
        frm_func.curr_date) + ' 00:00' + ''')' + ' or ';
      DM_data.qry_pub.Next;
    end;

  end;

  if v_yytj + v_lb = '' then
  begin
    filter := ' 1<>1 ';
  end
  else
  begin
    filter := v_yytj + v_lb + ' ( yytj = ''�������'' )';
  end;

  sp_zxjl_cq_dy.Filter := filter;

  sp_zxjl_cq_dy.Filtered := True;
  if sp_zxjl_cq_dy.IsEmpty then
  begin
    Application.MessageBox('û�м�¼��', '��ʾ', 0 + 48);
    Exit;
  end;

  if not sp_zxjl_cq_dy.IsEmpty then
  begin
    //if (zzdx='A4') or (zzdx='B5')then
    //begin
    sp_zxjl_cq_dy.First;
    if sp_zxjl_cq_dy.RecordCount mod 9 <> 0 then
      y := trunc(sp_zxjl_cq_dy.RecordCount / 9) + 1
    else
      y := trunc(sp_zxjl_cq_dy.RecordCount / 9);
    count := sp_zxjl_cq_dy.RecordCount;
    for I := 1 to y do
    begin
      for j := 1 to 9 do
      begin
        if count < i * 9 then
        begin
          if j > (9 - (y * 9 - count)) then
          begin
            aControl := QRBand10.FindChildControl('ksrqls' + IntToStr(j - 1));
            if aControl is TQRLabel then
              TQRLabel(aControl).Caption := '';
            aControl := QRBand10.FindChildControl('kdysmcls' + IntToStr(j - 1));
            if aControl is TQRLabel then
              TQRLabel(aControl).Caption := '';
            QRBand10.FindChildControl('QRImagels_' + IntToStr(j)).enabled :=
              false;
            //TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel(QRBand10.FindChildControl('ypyfls_' + IntToStr(j -
              1))).Caption := '';
            TQRLabel(QRBand10.FindChildControl('xmmcls_' + IntToStr(j -
              1))).caption := '';
          end
          else
          begin
            aControl := QRBand10.FindChildControl('ksrqls' + IntToStr(j - 1));
            if aControl is TQRLabel then
              TQRLabel(aControl).Caption :=
                sp_zxjl_cq_dy.FieldByName('ksrq').AsString;
            aControl := QRBand10.FindChildControl('kdysmcls' + IntToStr(j - 1));
            if aControl is TQRLabel then
              TQRLabel(aControl).Caption :=
                sp_zxjl_cq_dy.FieldByName('kdysmc').asstring;
            if sp_zxjl_cq_dy.FieldByName('fzph').asstring <> '' then
            begin
              QRBand10.FindChildControl('QRImagels_' + IntToStr(j)).enabled :=
                true;
              QRBand10.FindChildControl('QRImagels_' + IntToStr(j)).Top :=
                TQRLabel(QRBand10.FindChildControl('xmmcls_' + IntToStr(j -
                1))).top;
              QRBand10.FindChildControl('QRImagels_' + IntToStr(j)).left :=
                QRBand10.FindChildControl('ypyfls_' + IntToStr(j - 1)).left -
                20;
              QRBand10.FindChildControl('QRImagels_' + IntToStr(j)).height :=
                30;
              TQRLabel(QRBand10.FindChildControl('ypyfls_' + IntToStr(j -
                1))).Caption := trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring)
                +
                '  ' + trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
              TQRLabel(QRBand10.FindChildControl('xmmcls_' + IntToStr(j -
                1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring;
            end
            else
            begin
              QRBand10.FindChildControl('QRImagels_' + IntToStr(j)).enabled :=
                false;
              QRBand10.FindChildControl('xmmcls_' + IntToStr(j - 1)).Width :=
                235;
              TQRLabel(QRBand10.FindChildControl('ypyfls_' + IntToStr(j -
                1))).Caption := '';
              TQRLabel(QRBand10.FindChildControl('xmmcls_' + IntToStr(j -
                1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring + ' '
                +
                trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring) + ' ' +
                trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
            end;
            sp_zxjl_cq_dy.Next;
          end;
        end
        else
        begin
          aControl := QRBand10.FindChildControl('ksrqls' + IntToStr(j - 1));
          if aControl is TQRLabel then
            TQRLabel(aControl).Caption :=
              sp_zxjl_cq_dy.FieldByName('ksrq').asstring;
          aControl := QRBand10.FindChildControl('kdysmcls' + IntToStr(j - 1));
          if aControl is TQRLabel then
            TQRLabel(aControl).Caption :=
              sp_zxjl_cq_dy.FieldByName('kdysmc').asstring;
          if sp_zxjl_cq_dy.FieldByName('fzph').asstring <> '' then
          begin
            QRBand10.FindChildControl('QRImagels_' + IntToStr(j)).enabled :=
              true;
            QRBand10.FindChildControl('QRImagels_' + IntToStr(j)).Top :=
              TQRLabel(QRBand10.FindChildControl('xmmcls_' + IntToStr(j -
              1))).top;
            QRBand10.FindChildControl('QRImagels_' + IntToStr(j)).left :=
              QRBand10.FindChildControl('ypyfls_' + IntToStr(j - 1)).left - 20;
            QRBand10.FindChildControl('QRImagels_' + IntToStr(j)).height := 30;
            TQRLabel(QRBand10.FindChildControl('ypyfls_' + IntToStr(j -
              1))).Caption := trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring) +
              '  ' + trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
            TQRLabel(QRBand10.FindChildControl('xmmcls_' + IntToStr(j -
              1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring;
          end
          else
          begin
            QRBand10.FindChildControl('QRImagels_' + IntToStr(j)).enabled :=
              false;
            QRBand10.FindChildControl('xmmcls_' + IntToStr(j - 1)).Width := 235;
            TQRLabel(QRBand10.FindChildControl('ypyfls_' + IntToStr(j -
              1))).Caption := '';
            TQRLabel(QRBand10.FindChildControl('xmmcls_' + IntToStr(j -
              1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring + ' ' +
              trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring) + ' ' +
              trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
          end;
          sp_zxjl_cq_dy.Next;
        end;
      end;
      DM_data.qry_pub.Close;
      DM_data.qry_pub.SQL.text := 'select * from sys_kscwsz where bqdm=' + ''''
        + pub_bqdm + '''' + ' and bcbh=' + '''' +
        trim(sp_jbxx.fieldbyname('bch').asstring) + '''';
      try
        DM_data.qry_pub.Open;
      except
      end;
      QRLabel45.Caption := pub_yymc + '��ʱע��ƻ�ִ�е�';
      QRLabel46.Caption := '����:' + sp_jbxx.fieldbyname('brxm').asstring;
      QRLabel50.Caption := '������:' +
        Trim(DM_data.qry_pub.FieldByName('yybch').asstring);
      QRLabel51.Caption := '�Ա�:' + sp_jbxx.fieldbyname('brxb').asstring;
      QRLabel52.Caption := '����:' + trim(sp_jbxx.fieldbyname('brnl').asstring);
      QRLabel53.Caption := FormatDateTime('yyyy', frm_func.curr_date) + '��';
      QRLabel67.Caption := '����:' + sp_jbxx.fieldbyname('brxm').asstring +
        '      ' +
        '������:' + Trim(DM_data.qry_pub.FieldByName('yybch').asstring) +
        '      ' +
        '�Ա�:' + sp_jbxx.fieldbyname('brxb').asstring + '      ' +
        '����:' + trim(sp_jbxx.fieldbyname('brnl').asstring) + '   ' + '����:' +
        Trim(sp_jbxx.fieldbyname('tmh').asstring);
      //QuickRep3.Prepare;
      QRLabel58.Caption := '���ҽ����';
      QuickRep5.Preview;
    end;
    //   end
    //   else
    //   begin
    //      sp_zxjl_cq_dy.First;
    //      if sp_zxjl_cq_dy.RecordCount mod 5 <> 0 then
    //        y := trunc( sp_zxjl_cq_dy.RecordCount / 5 ) + 1
    //      else
    //        y := trunc( sp_zxjl_cq_dy.RecordCount / 5 );
    //      count := sp_zxjl_cq_dy.RecordCount;
    //      for I := 1 to y do
    //      begin
    //        for j := 1 to 5 do
    //        begin
    //          if count < i * 5 then
    //          begin
    //            if j > ( 5 - ( y * 5 - count ) ) then
    //            begin
    //              aControl := DetailBand4.FindChildControl( 'ksrqj' + IntToStr( j - 1 ) );
    //              if aControl is TQRLabel then
    //                TQRLabel( aControl ).Caption := '';
    //              aControl := DetailBand4.FindChildControl( 'kdysmcj' + IntToStr( j - 1 ) );
    //              if aControl is TQRLabel then
    //                TQRLabel( aControl ).Caption := '';
    //              DetailBand4.FindChildControl( 'qrgrimagej' + IntToStr( j ) ).enabled := false;
    //              //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
    //              TQRLabel( DetailBand4.FindChildControl( 'ypyfj' + IntToStr( j - 1 ) ) ).Caption := '';
    //              //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
    //              TQRLabel( DetailBand4.FindChildControl( 'xmmcj' + IntToStr( j - 1 ) ) ).caption := '';
    //            end
    //            else
    //            begin
    //              aControl := DetailBand4.FindChildControl( 'ksrqj' + IntToStr( j - 1 ) );
    //              if aControl is TQRLabel then
    //                TQRLabel( aControl ).Caption := sp_zxjl_cq_dy.FieldByName( 'ksrq' ).AsString;
    //              aControl := DetailBand4.FindChildControl( 'kdysmcj' + IntToStr( j - 1 ) );
    //              if aControl is TQRLabel then
    //                TQRLabel( aControl ).Caption := sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;
    //              if sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
    //              begin
    //                x := ( length( sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
    //                DetailBand4.FindChildControl( 'QRgrImagej' + IntToStr( j ) ).enabled := true;
    //                DetailBand4.FindChildControl( 'QRgrImagej' + IntToStr( j ) ).Top := TQRLabel( DetailBand4.FindChildControl( 'xmmcj' + IntToStr( j - 1 ) ) ).top;
    //                DetailBand4.FindChildControl( 'QRgrImagej' + IntToStr( j ) ).left := DetailBand4.FindChildControl( 'ypyfj' + IntToStr( j - 1 ) ).left - 20;
    //                DetailBand4.FindChildControl( 'qrgrimagej' + IntToStr( j ) ).height := 30;
    //                TQRLabel( DetailBand4.FindChildControl( 'ypyfj' + IntToStr( j - 1 ) ) ).Caption := trim( sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
    //                TQRLabel( DetailBand4.FindChildControl( 'xmmcj' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
    //                //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
    //              end
    //              else
    //              begin
    //                DetailBand4.FindChildControl( 'qrgrimagej' + IntToStr( j ) ).enabled := false;
    //                DetailBand4.FindChildControl( 'xmmcj' + IntToStr( j - 1 ) ).Width := 235;
    //                TQRLabel( DetailBand4.FindChildControl( 'ypyfj' + IntToStr( j - 1 ) ) ).Caption := '';
    //                TQRLabel( DetailBand4.FindChildControl( 'xmmcj' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + ' ' + trim( sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + ' ' + trim( sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
    //                // TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
    //              end;
    //              sp_zxjl_cq_dy.Next;
    //            end;
    //          end
    //          else
    //          begin
    //            aControl := DetailBand4.FindChildControl( 'ksrqj' + IntToStr( j - 1 ) );
    //            if aControl is TQRLabel then
    //              TQRLabel( aControl ).Caption := sp_zxjl_cq_dy.FieldByName( 'ksrq' ).asstring;
    //            aControl := DetailBand4.FindChildControl( 'kdysmcj' + IntToStr( j - 1 ) );
    //            if aControl is TQRLabel then
    //              TQRLabel( aControl ).Caption := sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;
    //            if sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
    //            begin
    //              x := ( length( sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
    //              DetailBand4.FindChildControl( 'QRgrImagej' + IntToStr( j ) ).enabled := true;
    //              DetailBand4.FindChildControl( 'QRgrImagej' + IntToStr( j ) ).Top := TQRLabel( DetailBand4.FindChildControl( 'xmmcj' + IntToStr( j - 1 ) ) ).top;
    //              DetailBand4.FindChildControl( 'qrgrimagej' + IntToStr( j ) ).left := DetailBand4.FindChildControl( 'ypyfj' + IntToStr( j - 1 ) ).left - 20;
    //              DetailBand4.FindChildControl( 'qrgrimagej' + IntToStr( j ) ).height := 30;
    //              TQRLabel( DetailBand4.FindChildControl( 'ypyfj' + IntToStr( j - 1 ) ) ).Caption := trim( sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
    //              TQRLabel( DetailBand4.FindChildControl( 'xmmcj' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
    //              //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
    //            end
    //            else
    //            begin
    //              DetailBand4.FindChildControl( 'qrgrimagej' + IntToStr( j ) ).enabled := false;
    //              DetailBand4.FindChildControl( 'xmmcj' + IntToStr( j - 1 ) ).Width := 235;
    //              TQRLabel( DetailBand4.FindChildControl( 'ypyfj' + IntToStr( j - 1 ) ) ).Caption := '';
    //              TQRLabel( DetailBand4.FindChildControl( 'xmmcj' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + ' ' + trim( sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + ' ' + trim( sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
    //              //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
    //            end;
    //            sp_zxjl_cq_dy.Next;
    //          end;
    //        end;
    //        QRLabel2jy0.Caption := pub_yymc + '��ʱע��ƻ�ִ�е�';
    //        DM_data.qry_pub.Close;
    //        DM_data.qry_pub.SQL.text := 'select * from sys_kscwsz where bqdm=' + '''' + pub_bqdm + '''' + ' and bcbh=' + '''' + trim( sp_jbxx.fieldbyname( 'bch' ).asstring ) + '''';
    //        DM_data.qry_pub.Open;
    //
    //        QRLabel3jy0.Caption := '����:' + sp_jbxx.fieldbyname( 'brxm' ).asstring;
    //        QRLabel20jy0.Caption := '������:' + Trim( DM_data.qry_pub.FieldByName( 'yybch' ).asstring );
    //        QRLabel21jy0.Caption := '�Ա�:' + sp_jbxx.fieldbyname( 'brxb' ).asstring;
    //        QRLabel26jy0.Caption := '����:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
    //        nyjy0.Caption := FormatDateTime( 'yyyy', frm_func.curr_date ) + '��';
    //
    //        QRLabel62jy.Caption := '����:' + sp_jbxx.fieldbyname( 'brxm' ).asstring + '      ' +
    //          '������:' + Trim( DM_data.qry_pub.FieldByName( 'yybch' ).asstring ) + '      '+
    //          '����:' + Trim( sp_jbxx.fieldbyname( 'tmh' ).asstring  );
    //        //'�Ա�:' + sp_jbxx.fieldbyname( 'brxb' ).asstring +'      '+
    //        //'����:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
    ////QuickRep3.Prepare;
    //       // QRLabel71.Caption := '���ҽ��:';
    //        QuickRep9.Preview;
    //      end;
    //    end;
  end;
end;

procedure Tfrm_yzinput.MenuItem8Click(Sender: TObject);
var
  v_yytj, v_lb, filter: string;
begin
  Application.OnMessage := nil;
  with sp_zxjl_cq_dy do
  begin
    Filtered := False;
    Close;
    Parameters.ParamByName('@zyh').Value :=
      Trim(sp_jbxx.fieldbyname('zyh').asstring);
    Parameters.ParamByName('@fs').Value := 1;
    Open;
  end;
  //sp_zxjl_cq_dy.Filtered := False;
  DM_data.qry_pub.close;
  DM_data.qry_pub.sql.text :=
    'select yytj from zybl_zyyz_dytjsz where dyxm=''ע��ƻ���''';
  try
    DM_data.qry_pub.Open;
  except
  end;
  if DM_data.qry_pub.IsEmpty then
  begin
    v_yytj := '';
  end
  else
  begin
    DM_data.qry_pub.First;
    while not DM_data.qry_pub.eof do
    begin
      v_yytj := v_yytj + '(yytj=' + '''' +
        DM_data.qry_pub.FieldByName('yytj').asstring + '''' +
        ' and  tzrq=null  and kdrq>=' + '''' + formatdatetime('yy-MM-dd',
        frm_func.curr_date) + ' 00:00' + ''')' + ' or ';
      DM_data.qry_pub.Next;
    end;

  end;

  DM_data.qry_pub.close;
  DM_data.qry_pub.sql.text :=
    'select lbmc from zybl_zyyz_dylbsz where dyxm=''ע��ƻ���''';
  try
    DM_data.qry_pub.Open;
  except
  end;
  if DM_data.qry_pub.IsEmpty then
  begin
    v_lb := '';
  end
  else
  begin
    DM_data.qry_pub.First;
    while not DM_data.qry_pub.eof do
    begin
      v_lb := v_lb + '(lb=' + '''' + DM_data.qry_pub.FieldByName('lbmc').asstring
        + '''' + ' and  tzrq=null  and kdrq>=' + '''' +
        formatdatetime('yy-MM-dd',
        frm_func.curr_date) + ' 00:00' + ''')' + ' or ';
      DM_data.qry_pub.Next;
    end;

  end;

  if v_yytj + v_lb = '' then
  begin
    filter := ' 1<>1 ';
  end
  else
  begin
    filter := v_yytj + v_lb + ' ( yytj = ''�������'' )';
  end;

  sp_zxjl_cq_dy.Filter := filter;

  sp_zxjl_cq_dy.Filtered := True;
  if sp_zxjl_cq_dy.IsEmpty then
  begin
    Application.MessageBox('û�м�¼��', '��ʾ', 0 + 48);
    Exit;
  end;
  application.CreateForm(Tfrm_zxdxd, frm_zxdxd);
  try
    frm_zxdxd.ShowModal;
  finally
    frm_zxdxd.free;
  end;
end;

procedure Tfrm_yzinput.MenuItem9Click(Sender: TObject);
var
  i, y, j, count, x: Integer;
  aControl: TControl;
  v_lb, v_yytj, filter: string;
begin
  with sp_zxjl_cq_dy do
  begin
    Filtered := False;
    Close;
    Parameters.ParamByName('@zyh').Value :=
      Trim(sp_jbxx.fieldbyname('zyh').asstring);
    Parameters.ParamByName('@fs').Value := 0;
    Open;
  end;
  //sp_zxjl_cq_dy.Filtered := False;
  DM_data.qry_pub.close;
  DM_data.qry_pub.sql.text :=
    'select yytj from zybl_zyyz_dytjsz where dyxm=''���Ƽƻ���''';
  try
    DM_data.qry_pub.Open;
  except
  end;
  if DM_data.qry_pub.IsEmpty then
  begin
    v_yytj := '';
  end
  else
  begin
    DM_data.qry_pub.First;
    while not DM_data.qry_pub.eof do
    begin
      v_yytj := v_yytj + '(yytj=' + '''' +
        DM_data.qry_pub.FieldByName('yytj').asstring + '''' + ' and  tzrq=null )'
        +
        ' or ';
      DM_data.qry_pub.Next;
    end;

  end;
  DM_data.qry_pub.close;
  DM_data.qry_pub.sql.text :=
    'select lbmc from zybl_zyyz_dylbsz where dyxm=''���Ƽƻ���''';
  try
    DM_data.qry_pub.Open;
  except
  end;
  if DM_data.qry_pub.IsEmpty then
  begin
    v_lb := '';
  end
  else
  begin
    DM_data.qry_pub.First;
    while not DM_data.qry_pub.eof do
    begin
      v_lb := v_lb + '(lb=' + '''' + DM_data.qry_pub.FieldByName('lbmc').asstring
        + '''' + ' and  tzrq=null )' + ' or ';
      DM_data.qry_pub.Next;
    end;

  end;

  if v_yytj + v_lb = '' then
  begin
    filter := ' 1<>1 ';
  end
  else
  begin
    filter := v_yytj + v_lb + ' ( yytj=''�������'' )';
  end;

  sp_zxjl_cq_dy.Filter := filter;
  sp_zxjl_cq_dy.Filtered := True;
  if sp_zxjl_cq_dy.IsEmpty then
  begin
    Application.MessageBox('û�м�¼��', '��ʾ', 0 + 48);
    Exit;
  end;
  if not sp_zxjl_cq_dy.IsEmpty then
  begin
    if zzdx = 'A4' then
    begin
      sp_zxjl_cq_dy.First;
      if sp_zxjl_cq_dy.RecordCount mod 5 <> 0 then
        y := trunc(sp_zxjl_cq_dy.RecordCount / 5) + 1
      else
        y := trunc(sp_zxjl_cq_dy.RecordCount / 5);
      count := sp_zxjl_cq_dy.RecordCount;
      for I := 1 to y do
      begin
        for j := 1 to 5 do
        begin
          if count < i * 5 then
          begin
            if j > (5 - (y * 5 - count)) then
            begin
              aControl := DetailBand1.FindChildControl('ksrq' + IntToStr(j -
                1));
              if aControl is TQRLabel then
                TQRLabel(aControl).Caption := '';
              aControl := DetailBand1.FindChildControl('kdysmc' + IntToStr(j -
                1));
              if aControl is TQRLabel then
                TQRLabel(aControl).Caption := '';
              DetailBand1.FindChildControl('qrgrimage' + IntToStr(j)).enabled :=
                false;
              //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
              TQRLabel(DetailBand1.FindChildControl('ypyf' + IntToStr(j -
                1))).Caption := '';
              //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
              TQRLabel(DetailBand1.FindChildControl('xmmc' + IntToStr(j -
                1))).caption := '';
            end
            else
            begin
              aControl := DetailBand1.FindChildControl('ksrq' + IntToStr(j -
                1));
              if aControl is TQRLabel then
                TQRLabel(aControl).Caption :=
                  sp_zxjl_cq_dy.FieldByName('ksrq').AsString;
              aControl := DetailBand1.FindChildControl('kdysmc' + IntToStr(j -
                1));
              if aControl is TQRLabel then
                TQRLabel(aControl).Caption :=
                  sp_zxjl_cq_dy.FieldByName('kdysmc').asstring;
              if sp_zxjl_cq_dy.FieldByName('fzph').asstring <> '' then
              begin
                DetailBand1.FindChildControl('QRgrImage' + IntToStr(j)).enabled
                  := true;
                DetailBand1.FindChildControl('QRgrImage' + IntToStr(j)).Top :=
                  TQRLabel(DetailBand1.FindChildControl('xmmc' + IntToStr(j -
                  1))).top;
                DetailBand1.FindChildControl('QRgrImage' + IntToStr(j)).left :=
                  DetailBand1.FindChildControl('ypyf' + IntToStr(j - 1)).left -
                  20;
                DetailBand1.FindChildControl('qrgrimage' + IntToStr(j)).height
                  := 30;
                TQRLabel(DetailBand1.FindChildControl('ypyf' + IntToStr(j -
                  1))).Caption :=
                  trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring)
                  + '  ' + trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
                TQRLabel(DetailBand1.FindChildControl('xmmc' + IntToStr(j -
                  1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring;
                //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
              end
              else
              begin
                DetailBand1.FindChildControl('qrgrimage' + IntToStr(j)).enabled
                  := false;
                DetailBand1.FindChildControl('xmmc' + IntToStr(j - 1)).Width :=
                  235;
                TQRLabel(DetailBand1.FindChildControl('ypyf' + IntToStr(j -
                  1))).Caption := '';
                TQRLabel(DetailBand1.FindChildControl('xmmc' + IntToStr(j -
                  1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring +
                  ' '
                  + trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring) + ' ' +
                  trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
                // TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
              end;
              sp_zxjl_cq_dy.Next;
            end;
          end
          else
          begin
            aControl := DetailBand1.FindChildControl('ksrq' + IntToStr(j - 1));
            if aControl is TQRLabel then
              TQRLabel(aControl).Caption :=
                sp_zxjl_cq_dy.FieldByName('ksrq').asstring;
            aControl := DetailBand1.FindChildControl('kdysmc' + IntToStr(j -
              1));
            if aControl is TQRLabel then
              TQRLabel(aControl).Caption :=
                sp_zxjl_cq_dy.FieldByName('kdysmc').asstring;
            if sp_zxjl_cq_dy.FieldByName('fzph').asstring <> '' then
            begin
              DetailBand1.FindChildControl('QRgrImage' + IntToStr(j)).enabled :=
                true;
              DetailBand1.FindChildControl('QRgrImage' + IntToStr(j)).Top :=
                TQRLabel(DetailBand1.FindChildControl('xmmc' + IntToStr(j -
                1))).top;
              DetailBand1.FindChildControl('qrgrimage' + IntToStr(j)).left :=
                DetailBand1.FindChildControl('ypyf' + IntToStr(j - 1)).left -
                20;
              DetailBand1.FindChildControl('qrgrimage' + IntToStr(j)).height :=
                30;
              TQRLabel(DetailBand1.FindChildControl('ypyf' + IntToStr(j -
                1))).Caption := trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring)
                +
                '  ' + trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
              TQRLabel(DetailBand1.FindChildControl('xmmc' + IntToStr(j -
                1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring;
              //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end
            else
            begin
              DetailBand1.FindChildControl('qrgrimage' + IntToStr(j)).enabled :=
                false;
              DetailBand1.FindChildControl('xmmc' + IntToStr(j - 1)).Width :=
                235;
              TQRLabel(DetailBand1.FindChildControl('ypyf' + IntToStr(j -
                1))).Caption := '';
              TQRLabel(DetailBand1.FindChildControl('xmmc' + IntToStr(j -
                1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring + ' '
                +
                trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring) + ' ' +
                trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
              //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end;
            sp_zxjl_cq_dy.Next;
          end;
        end;
        QRLabel2.Caption := pub_yymc + '����ע��ƻ�ִ�е�';
        DM_data.qry_pub.Close;
        DM_data.qry_pub.SQL.text := 'select * from sys_kscwsz where bqdm=' + ''''
          + pub_bqdm + '''' + ' and bcbh=' + '''' +
          trim(sp_jbxx.fieldbyname('bch').asstring) + '''';
        try
          DM_data.qry_pub.Open;
        except
        end;

        QRLabel3.Caption := '����:' + sp_jbxx.fieldbyname('brxm').asstring;
        QRLabel20.Caption := '������:' +
          Trim(DM_data.qry_pub.FieldByName('yybch').asstring);
        QRLabel21.Caption := '�Ա�:' + sp_jbxx.fieldbyname('brxb').asstring;
        QRLabel26.Caption := '����:' +
          trim(sp_jbxx.fieldbyname('brnl').asstring);
        ny.Caption := FormatDateTime('yyyy', frm_func.curr_date) + '��';

        QRLabel61.Caption := '����:' + sp_jbxx.fieldbyname('brxm').asstring +
          '      ' +
          '������:' + Trim(DM_data.qry_pub.FieldByName('yybch').asstring) +
          '      ' +
          '����:' + Trim(sp_jbxx.fieldbyname('tmh').asstring);
        //'�Ա�:' + sp_jbxx.fieldbyname( 'brxb' ).asstring +'      '+
        //'����:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
//QuickRep3.Prepare;
        QRLabel57.Caption := '���ҽ��:';
        QuickRep3.Preview;
      end;
    end
    else if zzdx = 'B5' then
    begin
      sp_zxjl_cq_dy.First;
      if sp_zxjl_cq_dy.RecordCount mod 9 <> 0 then
        y := trunc(sp_zxjl_cq_dy.RecordCount / 9) + 1
      else
        y := trunc(sp_zxjl_cq_dy.RecordCount / 9);
      count := sp_zxjl_cq_dy.RecordCount;
      for I := 1 to y do
      begin
        for j := 1 to 9 do
        begin
          if count < i * 9 then
          begin
            if j > (9 - (y * 9 - count)) then
            begin
              aControl := DetailBand2.FindChildControl('ksrqjy' + IntToStr(j -
                1));
              if aControl is TQRLabel then
                TQRLabel(aControl).Caption := '';
              aControl := DetailBand2.FindChildControl('kdysmcjy' + IntToStr(j -
                1));
              if aControl is TQRLabel then
                TQRLabel(aControl).Caption := '';
              DetailBand2.FindChildControl('qrgrimagejy' + IntToStr(j)).enabled
                := false;
              //  TQRLabel( DetailBand2.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
              TQRLabel(DetailBand2.FindChildControl('ypyfjy' + IntToStr(j -
                1))).Caption := '';
              //TQRLabel( DetailBand2.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
              TQRLabel(DetailBand2.FindChildControl('xmmcjy' + IntToStr(j -
                1))).caption := '';
            end
            else
            begin
              aControl := DetailBand2.FindChildControl('ksrqjy' + IntToStr(j -
                1));
              if aControl is TQRLabel then
                TQRLabel(aControl).Caption :=
                  sp_zxjl_cq_dy.FieldByName('ksrq').AsString;
              aControl := DetailBand2.FindChildControl('kdysmcjy' + IntToStr(j -
                1));
              if aControl is TQRLabel then
                TQRLabel(aControl).Caption :=
                  sp_zxjl_cq_dy.FieldByName('kdysmc').asstring;
              if sp_zxjl_cq_dy.FieldByName('fzph').asstring <> '' then
              begin
                DetailBand2.FindChildControl('QRgrImagejy' + IntToStr(j)).enabled
                  := true;
                DetailBand2.FindChildControl('QRgrImagejy' + IntToStr(j)).Top :=
                  TQRLabel(DetailBand2.FindChildControl('xmmcjy' + IntToStr(j -
                  1))).top;
                DetailBand2.FindChildControl('QRgrImagejy' + IntToStr(j)).left
                  := DetailBand2.FindChildControl('ypyfjy' + IntToStr(j -
                  1)).left
                  - 20;
                DetailBand2.FindChildControl('qrgrimagejy' + IntToStr(j)).height
                  := 30;
                TQRLabel(DetailBand2.FindChildControl('ypyfjy' + IntToStr(j -
                  1))).Caption :=
                  trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring)
                  + '  ' + trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
                TQRLabel(DetailBand2.FindChildControl('xmmcjy' + IntToStr(j -
                  1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring;
                //TQRLabel( DetailBand2.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
              end
              else
              begin
                DetailBand2.FindChildControl('qrgrimagejy' + IntToStr(j)).enabled
                  := false;
                DetailBand2.FindChildControl('xmmcjy' + IntToStr(j - 1)).Width
                  := 235;
                TQRLabel(DetailBand2.FindChildControl('ypyfjy' + IntToStr(j -
                  1))).Caption := '';
                TQRLabel(DetailBand2.FindChildControl('xmmcjy' + IntToStr(j -
                  1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring +
                  ' '
                  + trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring) + ' ' +
                  trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
                // TQRLabel( DetailBand2.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
              end;
              sp_zxjl_cq_dy.Next;
            end;
          end
          else
          begin
            aControl := DetailBand2.FindChildControl('ksrqjy' + IntToStr(j -
              1));
            if aControl is TQRLabel then
              TQRLabel(aControl).Caption :=
                sp_zxjl_cq_dy.FieldByName('ksrq').asstring;
            aControl := DetailBand2.FindChildControl('kdysmcjy' + IntToStr(j -
              1));
            if aControl is TQRLabel then
              TQRLabel(aControl).Caption :=
                sp_zxjl_cq_dy.FieldByName('kdysmc').asstring;
            if sp_zxjl_cq_dy.FieldByName('fzph').asstring <> '' then
            begin
              DetailBand2.FindChildControl('QRgrImagejy' + IntToStr(j)).enabled
                := true;
              DetailBand2.FindChildControl('QRgrImagejy' + IntToStr(j)).Top :=
                TQRLabel(DetailBand2.FindChildControl('xmmcjy' + IntToStr(j -
                1))).top;
              DetailBand2.FindChildControl('qrgrimagejy' + IntToStr(j)).left :=
                DetailBand2.FindChildControl('ypyfjy' + IntToStr(j - 1)).left -
                20;
              DetailBand2.FindChildControl('qrgrimagejy' + IntToStr(j)).height
                := 30;
              TQRLabel(DetailBand2.FindChildControl('ypyfjy' + IntToStr(j -
                1))).Caption := trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring)
                +
                '  ' + trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
              TQRLabel(DetailBand2.FindChildControl('xmmcjy' + IntToStr(j -
                1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring;
              //  TQRLabel( DetailBand2.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end
            else
            begin
              DetailBand2.FindChildControl('qrgrimagejy' + IntToStr(j)).enabled
                := false;
              DetailBand2.FindChildControl('xmmcjy' + IntToStr(j - 1)).Width :=
                235;
              TQRLabel(DetailBand2.FindChildControl('ypyfjy' + IntToStr(j -
                1))).Caption := '';
              TQRLabel(DetailBand2.FindChildControl('xmmcjy' + IntToStr(j -
                1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring + ' '
                +
                trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring) + ' ' +
                trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
              //  TQRLabel( DetailBand2.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end;
            sp_zxjl_cq_dy.Next;
          end;
        end;
        QRLabel2jy.Caption := pub_yymc + '�������Ƽƻ�ִ�е�';
        DM_data.qry_pub.Close;
        DM_data.qry_pub.SQL.text := 'select * from sys_kscwsz where bqdm=' + ''''
          + pub_bqdm + '''' + ' and bcbh=' + '''' +
          trim(sp_jbxx.fieldbyname('bch').asstring) + '''';
        try
          DM_data.qry_pub.Open;
        except
        end;

        QRLabel3jy.Caption := '����:' + sp_jbxx.fieldbyname('brxm').asstring;
        QRLabel20jy.Caption := '������:' +
          Trim(DM_data.qry_pub.FieldByName('yybch').asstring);
        QRLabel21jy.Caption := '�Ա�:' + sp_jbxx.fieldbyname('brxb').asstring;
        QRLabel26jy.Caption := '����:' +
          trim(sp_jbxx.fieldbyname('brnl').asstring);
        nyjy.Caption := FormatDateTime('yyyy', frm_func.curr_date) + '��';

        QRLabel61jy.Caption := '����:' + sp_jbxx.fieldbyname('brxm').asstring +
          '      ' +
          '������:' + Trim(DM_data.qry_pub.FieldByName('yybch').asstring) +
          '      ' +
          '����:' + Trim(sp_jbxx.fieldbyname('tmh').asstring);
        QuickRep6.Preview;
      end;
    end
    else
    begin
      sp_zxjl_cq_dy.First;
      if sp_zxjl_cq_dy.RecordCount mod 8 <> 0 then
        y := trunc(sp_zxjl_cq_dy.RecordCount / 8) + 1
      else
        y := trunc(sp_zxjl_cq_dy.RecordCount / 8);
      count := sp_zxjl_cq_dy.RecordCount;
      for I := 1 to y do
      begin
        for j := 1 to 8 do
        begin
          if count < i * 8 then
          begin
            if j > (8 - (y * 8 - count)) then
            begin
              aControl := qrbndcqzs.FindChildControl('cqzsksrq' + IntToStr(j -
                1));
              if aControl is TQRLabel then
                TQRLabel(aControl).Caption := '';
              aControl := qrbndcqzs.FindChildControl('cqzskdys' + IntToStr(j -
                1));
              if aControl is TQRLabel then
                TQRLabel(aControl).Caption := '';
              qrbndcqzs.FindChildControl('QRImagezs' + IntToStr(j)).enabled :=
                false;
              //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
              TQRLabel(qrbndcqzs.FindChildControl('cqzsypyf' + IntToStr(j -
                1))).Caption := '';
              //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
              TQRLabel(qrbndcqzs.FindChildControl('cqzsxmmc' + IntToStr(j -
                1))).caption := '';
            end
            else
            begin
              aControl := qrbndcqzs.FindChildControl('cqzsksrq' + IntToStr(j -
                1));
              if aControl is TQRLabel then
                TQRLabel(aControl).Caption :=
                  sp_zxjl_cq_dy.FieldByName('ksrq').AsString;
              aControl := qrbndcqzs.FindChildControl('cqzskdys' + IntToStr(j -
                1));
              if aControl is TQRLabel then
                TQRLabel(aControl).Caption :=
                  sp_zxjl_cq_dy.FieldByName('kdysmc').asstring;
              if sp_zxjl_cq_dy.FieldByName('fzph').asstring <> '' then
              begin
                qrbndcqzs.FindChildControl('QRImagezs' + IntToStr(j)).enabled :=
                  true;
                qrbndcqzs.FindChildControl('QRImagezs' + IntToStr(j)).Top :=
                  TQRLabel(qrbndcqzs.FindChildControl('cqzsxmmc' + IntToStr(j -
                  1))).top;
                qrbndcqzs.FindChildControl('QRImagezs' + IntToStr(j)).left :=
                  qrbndcqzs.FindChildControl('cqzsypyf' + IntToStr(j - 1)).left
                  -
                  20;
                qrbndcqzs.FindChildControl('QRImagezs' + IntToStr(j)).height :=
                  30;
                TQRLabel(qrbndcqzs.FindChildControl('cqzsypyf' + IntToStr(j -
                  1))).Caption :=
                  trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring)
                  + '  ' + trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
                TQRLabel(qrbndcqzs.FindChildControl('cqzsxmmc' + IntToStr(j -
                  1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring;
                //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
              end
              else
              begin
                qrbndcqzs.FindChildControl('QRImagezs' + IntToStr(j)).enabled :=
                  false;
                //qrbndcqzs.FindChildControl( 'cqzsxmmc' + IntToStr( j - 1 ) ).Width := 235;
                TQRLabel(qrbndcqzs.FindChildControl('cqzsypyf' + IntToStr(j -
                  1))).Caption := '';
                TQRLabel(qrbndcqzs.FindChildControl('cqzsxmmc' + IntToStr(j -
                  1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring +
                  ' '
                  + trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring) + ' ' +
                  trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
                // TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
              end;
              sp_zxjl_cq_dy.Next;
            end;
          end
          else
          begin
            aControl := qrbndcqzs.FindChildControl('cqzsksrq' + IntToStr(j -
              1));
            if aControl is TQRLabel then
              TQRLabel(aControl).Caption :=
                sp_zxjl_cq_dy.FieldByName('ksrq').asstring;
            aControl := qrbndcqzs.FindChildControl('cqzskdys' + IntToStr(j -
              1));
            if aControl is TQRLabel then
              TQRLabel(aControl).Caption :=
                sp_zxjl_cq_dy.FieldByName('kdysmc').asstring;
            if sp_zxjl_cq_dy.FieldByName('fzph').asstring <> '' then
            begin
              qrbndcqzs.FindChildControl('QRImagezs' + IntToStr(j)).enabled :=
                true;
              qrbndcqzs.FindChildControl('QRImagezs' + IntToStr(j)).Top :=
                TQRLabel(qrbndcqzs.FindChildControl('cqzsxmmc' + IntToStr(j -
                1))).top;
              qrbndcqzs.FindChildControl('QRImagezs' + IntToStr(j)).left :=
                qrbndcqzs.FindChildControl('cqzsypyf' + IntToStr(j - 1)).left -
                20;
              qrbndcqzs.FindChildControl('QRImagezs' + IntToStr(j)).height :=
                30;
              TQRLabel(qrbndcqzs.FindChildControl('cqzsypyf' + IntToStr(j -
                1))).Caption := trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring)
                +
                '  ' + trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
              TQRLabel(qrbndcqzs.FindChildControl('cqzsxmmc' + IntToStr(j -
                1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring;
              //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end
            else
            begin
              qrbndcqzs.FindChildControl('QRImagezs' + IntToStr(j)).enabled :=
                false;
              //qrbndcqzs.FindChildControl( 'cqzsxmmc' + IntToStr( j - 1 ) ).Width := 235;
              TQRLabel(qrbndcqzs.FindChildControl('cqzsypyf' + IntToStr(j -
                1))).Caption := '';
              TQRLabel(qrbndcqzs.FindChildControl('cqzsxmmc' + IntToStr(j -
                1))).caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring + ' '
                +
                trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring) + ' ' +
                trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
              //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end;
            sp_zxjl_cq_dy.Next;
          end;
        end;
        QRcqzsmc.Caption := pub_yymc + '�������Ƽƻ�ִ�е�';
        DM_data.qry_pub.Close;
        DM_data.qry_pub.SQL.text := 'select * from sys_kscwsz where bqdm=' + ''''
          + pub_bqdm + '''' + ' and bcbh=' + '''' +
          trim(sp_jbxx.fieldbyname('bch').asstring) + '''';
        try
          DM_data.qry_pub.Open;
        except
        end;

        QRcqzsxm.Caption := '����:' + sp_jbxx.fieldbyname('brxm').asstring;
        QRcqzsbch.Caption := '������:' +
          Trim(DM_data.qry_pub.FieldByName('yybch').asstring);
        QRcqzsxb.Caption := '�Ա�:' + sp_jbxx.fieldbyname('brxb').asstring;
        QRcqzsnl.Caption := '����:' +
          trim(sp_jbxx.fieldbyname('brnl').asstring);
        QRcqzsn.Caption := FormatDateTime('yyyy', frm_func.curr_date) + '��';
        QRcqzsxmxm.Caption := '����:' + sp_jbxx.fieldbyname('brxm').asstring;
        QRcqzsbchbch.Caption := '������:' +
          Trim(DM_data.qry_pub.FieldByName('yybch').asstring);
        QRcqzskhkh.Caption := '����:' +
          Trim(sp_jbxx.fieldbyname('tmh').asstring);

        //QRLabel62jy.Caption := '����:' + sp_jbxx.fieldbyname( 'brxm' ).asstring + '      ' +
        //  '������:' + Trim( DM_data.qry_pub.FieldByName( 'yybch' ).asstring ) + '      '+
        //  '����:' + Trim( sp_jbxx.fieldbyname( 'tmh' ).asstring  );
        //'�Ա�:' + sp_jbxx.fieldbyname( 'brxb' ).asstring +'      '+
        //'����:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
//QuickRep3.Prepare;
        //QRLabel71.Caption := '���ҽ��:';
        qckrp2.Preview;
      end;
    end;
  end;
end;

procedure Tfrm_yzinput.m_pass101Click(Sender: TObject);
begin
  PassDoCommand(101);
end;

procedure Tfrm_yzinput.m_pass102Click(Sender: TObject);
begin
  PassDoCommand(102);
end;

procedure Tfrm_yzinput.m_pass103Click(Sender: TObject);
begin
  PassDoCommand(103);
end;

procedure Tfrm_yzinput.m_pass104Click(Sender: TObject);
begin
  PassDoCommand(104);
end;

procedure Tfrm_yzinput.m_pass105Click(Sender: TObject);
begin
  PassDoCommand(105);
end;

procedure Tfrm_yzinput.m_pass106Click(Sender: TObject);
begin
  PassDoCommand(106);
end;

procedure Tfrm_yzinput.m_pass107Click(Sender: TObject);
begin
  PassDoCommand(107);
end;

procedure Tfrm_yzinput.m_pass11Click(Sender: TObject);
begin
  PassDoCommand(11);
end;

procedure Tfrm_yzinput.m_pass13Click(Sender: TObject);
begin
  PassDoCommand(13);
end;

procedure Tfrm_yzinput.m_pass14Click(Sender: TObject);
begin
  PassDoCommand(14);
end;

procedure Tfrm_yzinput.m_pass201Click(Sender: TObject);
begin
  PassDoCommand(201);
end;

procedure Tfrm_yzinput.m_pass202Click(Sender: TObject);
begin
  PassDoCommand(202);
end;

procedure Tfrm_yzinput.m_pass203Click(Sender: TObject);
begin
  PassDoCommand(203);
end;

procedure Tfrm_yzinput.m_pass204Click(Sender: TObject);
begin
  PassDoCommand(204);
end;

procedure Tfrm_yzinput.m_pass205Click(Sender: TObject);
begin
  PassDoCommand(205);
end;

procedure Tfrm_yzinput.m_pass206Click(Sender: TObject);
begin
  PassDoCommand(206);
end;

procedure Tfrm_yzinput.m_pass207Click(Sender: TObject);
begin
  PassDoCommand(207);
end;

procedure Tfrm_yzinput.m_pass208Click(Sender: TObject);
begin
  PassDoCommand(208);
end;

procedure Tfrm_yzinput.m_pass209Click(Sender: TObject);
begin
  PassDoCommand(209);
end;

procedure Tfrm_yzinput.m_pass210Click(Sender: TObject);
begin
  PassDoCommand(210);
end;

procedure Tfrm_yzinput.m_pass220Click(Sender: TObject);
begin
  PassDoCommand(220);
end;

procedure Tfrm_yzinput.m_pass22Click(Sender: TObject);
begin
  PassDoCommand(22);
end;

procedure Tfrm_yzinput.m_pass301Click(Sender: TObject);
begin
  PassDoCommand(3101);
end;

procedure Tfrm_yzinput.m_pass30Click(Sender: TObject);
begin
  PassDoCommand(30);
end;

procedure Tfrm_yzinput.m_pass50Click(Sender: TObject);
begin
  PassDoCommand(12);
end;

procedure Tfrm_yzinput.m_pass60Click(Sender: TObject);
begin
  PassDoCommand(60);
end;

procedure Tfrm_yzinput.m_pass70Click(Sender: TObject);
begin
  PassDoCommand(3);
end;

procedure Tfrm_yzinput.yldwjc(fs: integer);
var
  i: integer;
  _temp: boolean;
begin
  if (qry_yz.FieldByName('lb').AsString = 'ҩƷ') or
    (qry_yz.FieldByName('lb').AsString = 'ҩһ') then
  begin
    if trim(grid_yzlr.Columns[7].DisplayText) = '' then
    begin
      if fs <> 0 then
        yzNew(fs);
    end
    else
    begin
      try
        i := strtoint(trim(grid_yzlr.Columns[7].DisplayText));
        if (i > 0) and (i < qry_yldw.RecordCount) then
        begin
          _temp := true;
        end
        else
        begin
          _temp := false;
        end;
      except
        _temp := false;
      end;
      if _temp then //�������ּ���
      begin
        qry_yldw.Filtered := false;
        qry_yldw.RecNo := i;
        qry_yz.FieldByName('yldw').Value :=
          qry_yldw.FieldByName('yldw').AsString;
        if fs <> 0 then
          yzNew(fs);
      end
      else
      begin
        qry_yldw.Filtered := false;
        if trim(grid_yzlr.Columns[7].DisplayText) <> '' then
        begin
          qry_yldw.Filter := 'pym like ' + #39 + '%' +
            grid_yzlr.Columns[7].DisplayText + '%' + #39;
          qry_yldw.Filter := qry_yldw.Filter + ' or yldw like ' + #39 + '%' +
            grid_yzlr.Columns[7].DisplayText + '%' + #39;
          qry_yldw.Filtered := true;
        end;
        if qry_yldw.RecordCount > 0 then
        begin
          qry_yz.FieldByName('yldw').Value :=
            qry_yldw.FieldByName('yldw').AsString;
          qry_yldw.Filtered := false;
        end
        else
        begin
          qry_yldw.Filtered := false;
        end;
      end;
    end;
  end;

end;

procedure Tfrm_yzinput.grid_yzlrCellClick(Column: TColumnEh);
begin
  //��ȡ������ҩ������  2011-11-23 jc
//  if (gi_PassEnabled = 0) or (PassGetState('0') = 0) or
//    (not qry_yz.Active) or (qry_yz.RecordCount <= 0) then
//    Exit;
//  PassDoCommand(402);
//  if (grid_yzlr.SelectedIndex = 2) and (trim(qry_yz.FieldByName('xmmc').AsString)
//    <> '') then
//    MedicomPass.PassPopWindow(qry_yz.FieldByName('xmdm').AsString,
//      qry_yz.FieldByName('xmmc').AsString, 0, 0, 0, 0);
//--------------------------- 2011-11-23 jc-------------------------

  //������ҩ-yansghuai2016-03-02�¼�----------------------------------
  if (gi_passenabled = 1) then
  begin
    if MDC_DoSetDrug(PChar(trim(qry_yz.FieldByName('xmdm').AsString)), PChar(trim(qry_yz.FieldByName('xmmc').AsString))) <> 1 then
    begin
      exit;
    end;
  end;

end;

procedure Tfrm_yzinput.grid_yzlrColEnter(Sender: TObject);
var
  tsxm:string; //��ʾ��Ϣ
begin
  {������ û��¼��ҽ����Ŀ��ֱ������������������� ��������Ȳ���}
  if grid_yzlr.SelectedIndex = 16 then
  begin
    if Trim(grid_yzlr.Columns[2].DisplayText) = '' then
    begin
      grid_yzlr.SelectedIndex := 2; //ҽ����Ŀ
    end;
  end;
  if pub_yydm = '0004' then
  begin
    if grid_yzlr.SelectedIndex = 3 then
    begin
      if not (Trim(grid_yzlr.Columns[2].DisplayText) = '')  then
      begin
      //ҽ����ҽ��ʱ�������ࡢ������ҩƷ����һ����ʾ����ʾҽ����д�ֹ�����
        DM_data.qry_pub.Close;
        DM_data.qry_pub.SQL.Text:='select ypdm,ypmc,sfdmyp,sfmzyp,sfjsyp '
              +' from sys_ypdm where ypmc like '+#39+'%'
              + grid_yzlr.Columns[2].DisplayText + '%'+#39 ;
        DM_data.qry_pub.Open;
        if not dm_data.qry_pub.IsEmpty then
        begin
          tsxm := '';
          if DM_data.qry_pub.FieldByName('sfdmyp').AsBoolean then
            tsxm := tsxm + '����ҩƷ��';
          if DM_data.qry_pub.FieldByName('sfmzyp').AsBoolean then
            tsxm := tsxm + '����ҩƷ��';
          if DM_data.qry_pub.FieldByName('sfjsyp').AsBoolean then
            tsxm := tsxm + '����ҩƷ��';

          if not (Trim(tsxm) = '') then
          begin
            tsxm := Trim(DM_data.qry_pub.FieldByName('ypmc').AsString) +
                  '��' + tsxm + '��ʾҽ����¼�ֹ���������';
            ShowMessage(tsxm);
          end;
        end;
      end;
    end;
  end;

end;

procedure Tfrm_yzinput.grid_yzlrColExit(Sender: TObject);
var
  vIndex:Integer;
  ypyf, yytj: string;
begin
  //  if (grid_yzlr.SelectedIndex = 11) and (grid_yzlr.Columns[10].DisplayText='') then
  //  begin
  //    ShowMessage('����д���ÿ��ң�');
  //    grid_yzlr.SelectedIndex:= 11;
  //    Abort;
  //  end;
  //Application.OnMessage := nil;


  if qry_yz.Active = false then
    exit;
  if grid_yzlr.SelectedIndex = 1 then
    yzlbsr(kzbz);
 
  if (grid_yzlr.SelectedIndex = 7) and (pub_yydm = '0015') then
  begin
    qry_yz.prior;
    if (Pos('ҩ', yzlb) > 0) then
      yzlbsr(kzbz);
    qry_yz.next;
  end;
  if (yzlb = '����') and (Trim(grid_yzlr.Columns[7].DisplayText) = '') then
  begin
    //    qry_yz.Edit;
    //    qry_yz.FieldByName( 'sl' ).AsString := '0';
    //    qry_yz.Post;
  end;
  if (yzlb = '����') and ((Pos('Ƥ��', Trim(grid_yzlr.Columns[2].DisplayText)) =
    1)
    or (Pos('����', Trim(grid_yzlr.Columns[2].DisplayText)) = 1)) then
  begin
    ShowMessage('Ƥ��¼�����Ʋ���ȷ���밴�գ�ҩƷ����+Ƥ��/���� ���ָ�ʽ¼�룡');
    Abort;
  end;
  if (yzlb = '����') then
  begin

    if ((pos('zyysgzzt03', lowercase(pub_czyqx)) <> 0) or (pub_czydm = '9999'))
      and
      (yzlb = '����') and (pub_yydm <> '0151') and
      ((Pos('��', Trim(grid_yzlr.Columns[2].DisplayText)) <> 0) or
      (False) //zksx='����'
      ) and
      (grid_yzlr.SelectedIndex = 2) then
    begin
      case
        Application.MessageBox('ҽ���г��֡������֣��Ƿ�������������������룿'
        + #13#10#13#10 + '���  ���ǡ������������������ų���' + #13#10 +
        '        ���񡱣�Ϊ������������ԭ��ʽ����', '��ʾ', MB_YESNO +
        MB_ICONQUESTION) of
        IDYES:
          begin
            try
              Application.CreateForm(Tfrm_sssq, frm_sssq);
              frm_sssq.v_yzmod := True;
              frm_sssq.v_tmh := tmh;
              frm_sssq.showmodal;
            finally
              if not (qry_yz.State in [dsEdit, dsInsert, dsSetKey]) then
              begin
                qry_yz.Edit;
              end;
              qry_yz.FieldByName('ssid').Value := frm_sssq.v_insid;
              frm_sssq.free;
              qry_yz.post;
            end;
          end;
        IDNO:
          begin
            //            try
            //              Application.CreateForm(Tfrm_sssq, frm_sssq);
            //              frm_sssq.v_yzmod := True;
            //              frm_sssq.v_tmh := tmh;
            //              frm_sssq.e_sslx.ItemIndex := 1;
            //              frm_sssq.showmodal;
            //            finally
            //              if not (qry_yz.State in [dsEdit, dsInsert, dsSetKey]) then begin
            //                 qry_yz.Edit;
            //              end;
            //              qry_yz.FieldByName( 'ssid' ).Value:=frm_sssq.v_insid;
            //              frm_sssq.free;
            //            end;
          end;
      end;

    end;

    xminyz;
    if Trim(grid_yzlr.Columns[2].DisplayText) = '' then
      grid_yzlr.SelectedIndex := 2;
  end;
{$REGION '��α�ע�ʹ���'}
  //  if ( yzlb = '���' ) then
  //  begin
  //    if (grid_yzlr.SelectedIndex = 2) and
  //       (trim(grid_yzlr.Columns[2].DisplayText)<>'') then begin
  //      DM_data.qry_pub.close;
  //      DM_data.qry_pub.SQL.Text:='select sysyszxxt from sys_xt_kg';
  //      DM_data.qry_pub.Open;
  //      if DM_data.qry_pub.FieldByName('sysyszxxt').AsBoolean then
  //      try
  //        Application.CreateForm( Tfrm_yszx_yzinput, frm_yszx_yzinput);
  //        frm_yszx_yzinput.edt_xmmc.Text := grid_yzlr.Columns[2].DisplayText;
  //        //frm_yszx_yzinput.edt_jyyb.Text := grid_yzlr.Columns[9].DisplayText;
  //        //frm_yszx_yzinput.edt_jcyq.Text := '';
  //        frm_yszx_yzinput.edt_zysx.Text := '';
  //
  //        frm_yszx_yzinput.ShowModal;
  //        if frm_yszx_yzinput.ModalResult <> mrOk then exit;
  //        if not (qry_yz.State in [dsEdit, dsInsert, dsSetKey]) then begin
  //          qry_yz.Edit;
  //        end;
  //        //qry_yz.FieldByName( 'jyyb' ).Value := frm_yszx_yzinput.edt_jyyb.Text;
  //        frm_yszx_yzinput.edt_zysx.Text :=
  //           Trim(StringReplace(frm_yszx_yzinput.edt_zysx.Text,',','��',[rfReplaceAll]));
  //        frm_yszx_yzinput.edt_jcyq.Text :=
  //           Trim(StringReplace(frm_yszx_yzinput.edt_jcyq.Text,',','��',[rfReplaceAll]));
  //        qry_yz.FieldByName( 'bz' ).Value := '';
  //        if frm_yszx_yzinput.edt_sfjj.itemindex = 1 then begin//����
  //          qry_yz.FieldByName( 'bz' ).Value := '��';
  //        end;
  //        qry_yz.FieldByName( 'bz' ).Value := qry_yz.FieldByName( 'bz' ).Value + ','+
  //                                            frm_yszx_yzinput.edt_zysx.Text + ','+
  //                                            frm_yszx_yzinput.edt_jcyq.Text ;
  //        //��ע = [����] + ע������ + ���Ҫ��
  //        qry_yz.post;
  //
  //        DM_data.qry_pub.close;
  //        DM_data.qry_pub.SQL.Text:='select * from Yszx_brys where zyh='''+zyh+
  //                                  ''' and yzbh='''+qry_yz.FieldByName( 'xh' ).AsString+'''';
  //        DM_data.qry_pub.open;
  //        if DM_data.qry_pub.RecordCount = 0 then begin
  //          DM_data.qry_pub.Append;
  //        end else begin
  //          DM_data.qry_pub.Edit;
  //        end;
  //        DM_data.qry_pub.FieldByName('yzbh').Value:=qry_yz.FieldByName( 'xh' ).Value;
  //        DM_data.qry_pub.FieldByName('zyh').Value:=zyh;
  //        DM_data.qry_pub.FieldByName('yzsj').Value:=now();
  //        DM_data.qry_pub.FieldByName('ysfs').Value:=frm_yszx_yzinput.edt_ysfs.Text;
  //        DM_data.qry_pub.FieldByName('brszks').Value:=sp_jbxx.FieldByName('ryksmc').Value;
  //        DM_data.qry_pub.FieldByName('ch').Value:=sp_jbxx.FieldByName('bch').Value;
  //        DM_data.qry_pub.FieldByName('zysx').Value:=frm_yszx_yzinput.edt_zysx.Text;
  //        DM_data.qry_pub.FieldByName('jcxm').Value:=grid_yzlr.Columns[2].DisplayText;
  //        DM_data.qry_pub.FieldByName('jcxq').Value:=frm_yszx_yzinput.edt_jcyq.Text;
  //        DM_data.qry_pub.FieldByName('jcks').Value:=grid_yzlr.Columns[11].DisplayText;
  //        DM_data.qry_pub.FieldByName('blid').Value:=1;
  //        DM_data.qry_pub.FieldByName('kdys').Value:=pub_czydm;
  //        if frm_yszx_yzinput.edt_sfjj.itemindex = 1 then begin//����
  //          DM_data.qry_pub.FieldByName('sfjz').Value:=True;
  //        end else begin
  //          DM_data.qry_pub.FieldByName('sfjz').Value:=False;
  //        end;
  //        DM_data.qry_pub.Post;
  //        DM_data.qry_pub.UpdateBatch(arAll);
  //
  //      finally
  //        frm_yszx_yzinput.Free;
  //      end;
  //
  //
{$ENDREGION}

  if ( yzlb = '���' ) and (grid_yzlr.SelectedIndex = 2) then
  begin
{$REGION '��鲿λ'}
  DM_data.qry_pub.close;
  DM_data.qry_pub.SQL.text := 'select jcbwsz from sys_xt_kg ';
  try
    DM_data.qry_pub.Open;
  except
  end;
  if DM_data.qry_pub.FieldByName('jcbwsz').AsBoolean = true then
  begin
    if not Assigned(frm_yzjcbw) then
      frm_yzjcbw := Tfrm_yzjcbw.Create(application);
    if sp_cx_yp_yz.FieldByName('dldm').AsString <> '010203' then //�ĵ�ͼ
    begin
      frm_yzjcbw.ShowModal;
      if frm_yzjcbw.ModalResult <> mrok then
      begin
        grid_yzlr.SelectedIndex := 2;
        abort;
      end
      else
      begin
        qry_yz.Edit;
        qry_yz.FieldByName('Pacsjcbw').Value := frm_yzjcbw.ComboBox1.text;
        qry_yz.FieldByName('bz').Value := '��鲿λ��' +
          frm_yzjcbw.ComboBox1.text;
        qry_yz.Post;
      end;
    end
    else
    begin
      qry_yz.Edit;
      qry_yz.FieldByName('Pacsjcbw').Value := '��';
      qry_yz.Post;
    end;
  end;
{$ENDREGION '��鲿λ'}

    if pub_yydm = '0139' then
    begin
      if not Assigned(frm_dzjcsqd) then
      frm_dzjcsqd := Tfrm_dzjcsqd.Create(Self);
      try
        frm_dzjcsqd.edt_tmh.Text := tmh;
        frm_dzjcsqd.edt_xm.Text := brxm;
        frm_dzjcsqd.edt_xb.Text := DBEdit20.Text;
        frm_dzjcsqd.edt_nl.Text := DBEdit15.Text;
        frm_dzjcsqd.edt_dz.Text := '';
        frm_dzjcsqd.edt_xmmc.Text := qry_yz.FieldByName('xmmc').AsString;
        frm_dzjcsqd.zyh := zyh;

        frm_dzjcsqd.edt_jcmd.Text := '';
        frm_dzjcsqd.edt_jcbw.Text := '';

        frm_dzjcsqd.edt_sqys.Text := Trim(pub_czyxm) + '(' + pub_czydm + ')';
        frm_dzjcsqd.ShowModal;
      finally
        FreeAndNil(frm_dzjcsqd)
      end;

    end;
  end;
  //�ж�,ɳ���ؾͲ�Ĭ��st
  if (pub_yydm ='0240') then
  begin
  end else if (pub_yydm ='0260') then //����
   begin
   end else
   begin
    if (qry_yz.FieldByName('yzsx').AsString='��ʱ') and
    ((qry_yz.FieldByName('lb').AsString='ҩƷ') or
    (qry_yz.FieldByName('lb').AsString='��ҩ')
    ) and (grid_yzlr.SelectedIndex = 2) then
    begin
      qry_yz.Edit;
      qry_yz.FieldByName('ypyf').AsString := 'st';
      qry_yz.Post;
    end;
   end;

  //
  if (grid_yzlr.Columns[2].DisplayText <> '') and
     ((qry_yz.FieldByName('lb').AsString='ҩƷ') or
      (qry_yz.FieldByName('lb').AsString='��ҩ')
     ) and (grid_yzlr.SelectedIndex = 2) then
  begin

    if  grid_yzlr.RowCount > 2 then
    begin
      //��ǰ��
      ypyf := qry_yz.fieldbyname('ypyf').asstring;
      yytj := qry_yz.fieldbyname('yytj').asstring;
      if (ypyf = '') and  (yytj = '' ) then
      begin
         //��һ������
        qry_yz.prior;
        ypyf := qry_yz.fieldbyname('ypyf').asstring;
        yytj := qry_yz.fieldbyname('yytj').asstring;
        //��ǰѡ����
        qry_yz.next;
        qry_yz.Edit;
        qry_yz['ypyf'] := ypyf;
        qry_yz['yytj'] := yytj;
        qry_yz.Post;
      end;
      

//      for vIndex := 0 to grid_yzlr.SelectedRows.Count - 1 do
//      begin
//        //��һ������
//        grid_yzlr.DataSource.DataSet.
//        GotoBookmark(pointer( grid_yzlr.SelectedRows.Items[vIndex -1] ));
//        ypyf := qry_yz.fieldbyname('ypyf').asstring;
//        yytj := qry_yz.fieldbyname('yytj').asstring;
//        //��ǰѡ����
//        grid_yzlr.DataSource.DataSet.
//        GotoBookmark(pointer( grid_yzlr.SelectedRows.Items[vIndex] ));
//        qry_yz.Edit;
//        qry_yz['ypyf'] := ypyf;
//        qry_yz['yytj'] := yytj;
//        qry_yz.Post;
//      end;
    end;

  end;

end;

procedure Tfrm_yzinput.grid_yzlrColumns0UpdateData(Sender: TObject;
  var Text: string; var Value: Variant; var UseText, Handled: Boolean);
begin
  if Trim(qry_yz.FieldByName('fzph').asstring) <> '' then
  begin
    application.messagebox('��ȡ��������ٽ����޸ģ���', '��ʾ', mb_ok);
    Handled := true;
  end;
end;

procedure Tfrm_yzinput.grid_yzlrColumns1UpdateData(Sender: TObject;
  var Text: string; var Value: Variant; var UseText, Handled: Boolean);
begin
  if Trim(qry_yz.FieldByName('fzph').asstring) <> '' then
  begin
    application.messagebox('��ȡ��������ٽ����޸ģ���', '��ʾ', mb_ok);
    Handled := true;
  end;
end;

procedure Tfrm_yzinput.grid_yzlrColumns5UpdateData(Sender: TObject;
  var Text: string; var Value: Variant; var UseText, Handled: Boolean);
begin
  if Trim(qry_yz.FieldByName('fzph').asstring) <> '' then
  begin
    application.messagebox('��ȡ��������ٽ����޸ģ���', '��ʾ', mb_ok);
    Handled := true;
  end;
end;

procedure Tfrm_yzinput.grid_yzlrColumns6UpdateData(Sender: TObject;
  var Text: string; var Value: Variant; var UseText, Handled: Boolean);
begin
  if Trim(qry_yz.FieldByName('fzph').asstring) <> '' then
  begin
    application.messagebox('��ȡ��������ٽ����޸ģ���', '��ʾ', mb_ok);
    Handled := true;
  end;
end;

procedure Tfrm_yzinput.grid_yzlrColWidthsChanged(Sender: TObject);
begin
  if qry_yz.Active then
  begin
    createrect(myrect, qry_yz, grid_yzlr, 6, 7, 14);
  end;
end;

procedure Tfrm_yzinput.grid_yzlrDblClick(Sender: TObject);
begin
  yzlb := qry_yz.fieldbyname('lb').asstring;
  if (yzlb = '����') or (yzlb = '���') or (yzlb = '����') then
  begin
    p_jyxmwrite_zy.pro_ptyz_load(yzlb);
  end
  else
    application.messagebox('ֻ�м�顢���顢���Ʋ��ܽ���ѡ��������Ŀ������ƴ����д����', '��ʾ', mb_ok) ;
  //������ҩ---------------------------------
   if (gi_passenabled = 1) then
  begin
    MDC_CloseDrugHint();
    if MDC_DoSetDrug(PChar(trim(qry_yz.FieldByName('xmdm').AsString)), PChar(trim(qry_yz.FieldByName('xmmc').AsString))) <> 1 then
    begin
      exit;
    end;
    if MDC_DoRefDrug(51) <> 1 then
    begin
      exit;
    end;
  end;
  //������ҩ�����β---------------------------------
end;

procedure Tfrm_yzinput.grid_yzlrEnter(Sender: TObject);
begin
  // ������ҩ�Ҽ��˵� --2011-11-23 --jc

  if (qry_yz.Active) and (qry_yz.RecordCount > 0) and (gi_PassEnabled = 1) then
    ywxxcx.Enabled := True
  else
    ywxxcx.Enabled := False;
  Application.OnMessage := frm_yzinput.OnMouseWheel_yzlr;
end;

procedure Tfrm_yzinput.grid_yzlrExit(Sender: TObject);
begin
  Application.OnMessage := nil;
end;

procedure Tfrm_yzinput.grid_yzlrondrawcolumncell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
var
  i: integer;
  myrect1: Trect;
begin
  try

    with Sender as TDbGridEh do
    begin
      if (gdSelected in State) or (gdFixed in State) then
        Canvas.Brush.Color := clblue
      else
      begin
        Canvas.Brush.Color := clwhite;
        Canvas.Font.Color := clblack;
      end;
    end;
    if trim(qry_yz.FieldByName('yzsx').AsString) = '��ʱ' then
    begin
      grid_yzlr.Canvas.Brush.Color := clwhite;
      grid_yzlr.Canvas.Font.Color := clGreen;
    end;
    if trim(qry_yz.FieldByName('lb').AsString) = '����' then
    begin
      grid_yzlr.Canvas.Brush.Color := clwhite;
      grid_yzlr.Canvas.Font.Color := clRed;
    end;

    if trim(qry_yz.fieldbyname('fzph').asstring) <> '' then
    begin
      grid_yzlr.canvas.brush.color := $00E2BC6D;
      i := findinarray(myrect, qry_yz.fieldbyname('fzph').asstring);
      grid_yzlr.Canvas.pen.color := $00E2BC6D;

      grid_yzlr.Canvas.MoveTo(myrect[i].left + 20, myrect[i].top); //
      grid_yzlr.Canvas.LineTo(myrect[i].left, myrect[i].Bottom);
      if trim(qry_yz.FieldByName('lb').AsString) <> '��ҩ' then
        grid_yzlr.canvas.Rectangle(myrect[i].left, myrect[i].top,
          myrect[i].right, myrect[i].bottom);
      grid_yzlr.Canvas.pen.color := clred;
      if trim(qry_yz.FieldByName('lb').AsString) <> '��ҩ' then
      begin
        grid_yzlr.Canvas.MoveTo(myrect[i].left + 20, myrect[i].top); //
        grid_yzlr.Canvas.LineTo(myrect[i].left, myrect[i].Bottom);
      end;
      with grid_yzlr.Canvas do
      begin
        moveto(myrect[I].gleft, myrect[i].Gtop);
        lineto(myrect[I].gright, myrect[I].gtop);
        lineto(myrect[I].gright, myrect[I].gbottom);
        lineto(myrect[I].gleft, myrect[I].gbottom);
        lineto(myrect[I].gleft, myrect[i].Gtop);
      end;
      myrect1.Left := myrect[i].left;
      myrect1.top := myrect[i].top;
      myrect1.right := myrect[i].right;
      myrect1.bottom := myrect[i].bottom;
      if trim(qry_yz.FieldByName('lb').AsString) <> '��ҩ' then
        grid_yzlr.Canvas.TextOut(myrect[i].left + 20, //
          myrect[i].top + round(myrect[i].height * ((myrect[i].sl - 0.5) / 2)),
          myrect[i].tj + #13 + myrect[i].yf);

    end;
    (Sender as TDbGridEh).DefaultDrawColumnCell(Rect, DataCol, Column, State);

  except
  end;
end;

function findinarray(myrect: TTmyrect; zd: string): integer;
var
  i: integer;
  mark: boolean;
begin
  mark := true;
  i := 0;
  while (i < 99) and mark do
  begin
    if myrect[i].ph = zd then
    begin
      mark := false;

    end
    else
      i := i + 1;
  end;
  result := i;
end;

procedure Tfrm_yzinput.grid_yzlrKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  yzid,vIndex: Integer;
  kdys: string;

begin
 // cl := Columns[SelectedIndex];

  if (key = VK_LEFT) or (key = VK_UP) or (key = VK_RIGHT) or (key = VK_DOWN) then
  begin
    kzbz := 0;
  end;


  if qry_yz.RecordCount > 0 then
  begin
    if key = VK_F5 then
    begin
      qry_yz.Edit;
      qry_yz.FieldByName('yzsx').AsString := '����';
      qry_yz.Post;
      grid_yzlr.SelectedIndex := 1;
    end
    else if key = VK_F6 then
    begin
      qry_yz.Edit;
      qry_yz.FieldByName('yzsx').AsString := '��ʱ';
      qry_yz.Post;
      grid_yzlr.SelectedIndex := 1;
    end;
  end;

  if (key = VK_RETURN) then
  begin
    kzbz := 1;
//    if (cl.ButtonStyle=cbsAuto) and ((grid_yzlr.PickList.Count>0)
//    or (cl.Field.FieldKind=fkLookup))
//     and not (ssShift in Shift) then
//    begin
     if (grid_yzlr.SelectedIndex = 3 )  then
      begin
        if grid_yzlr.Columns[5].PickList.Count > 0 then
        begin
          keybd_event(VK_MENU,0,0,0);
          keybd_event(VK_DOWN,0,0,0);
          keybd_event(VK_DOWN,0,KEYEVENTF_KEYUP,0);
          keybd_event(VK_MENU,0,KEYEVENTF_KEYUP,0);
        end;
      end;

      if  (grid_yzlr.SelectedIndex = 5 ) then
      begin
        if grid_yzlr.Columns[6].PickList.Count > 0 then
        begin
          keybd_event(VK_MENU,0,0,0);
          keybd_event(VK_DOWN,0,0,0);
          keybd_event(VK_DOWN,0,KEYEVENTF_KEYUP,0);
          keybd_event(VK_MENU,0,KEYEVENTF_KEYUP,0);
        end;
      end;
//    end;

  end
  else
  begin
    //---calmhawk-2011-05-21---�����޸��÷�ʱ����ֻ��ʾ��һ�ν�����⡣
    case grid_yzlr.SelectedIndex of
      6:
      begin
        if Trim(qry_yz.FieldByName('yytj').AsString) <> '' then
        begin
          qry_yz.Edit;
          qry_yz.FieldByName('yytj').Value := '';
          //grid_yzlr.Columns[6].
        end;
      end;
    end;
  end;

  if (Key = VK_ESCAPE) then
  begin
    DM_data.qry_pub.close;
    DM_data.qry_pub.SQL.text := 'select * from sys_xt_kg ';
    try
      DM_data.qry_pub.Open;
    except
    end;
    if (DM_data.qry_pub.FieldByName('qyzdjf').AsBoolean = true) and
      (DM_data.qry_pub.FieldByName('yztjjf').AsBoolean = true) then
    begin
      if (qry_yz.FieldByName('id').asstring <> '') and
        (qry_yz.FieldByName('yzsx').asstring = '����') then
      begin
        if application.MessageBox('�Ƿ�Ҫɾ�������ѱ���ĳ���ҽ����Ϣ?',
          '��ʾ��Ϣ', mb_iconquestion + mb_okcancel + mb_defbutton1) = idcancel
            then
          Exit;
        DM_data.qry_pub.close;
        DM_data.qry_pub.SQL.Text := 'select * from zybl_zyyz where id=' +
          qry_yz.FieldByName('id').asstring;
        try
          DM_data.qry_pub.Open;
        except
        end;
        yzid := sp_dryz.FieldByName('id').AsInteger;
        kdys := DM_data.qry_pub.FieldByName('kdys').asstring;
        yzqxtf(yzid, kdys);
      end;
    end;
    qry_yz.Delete;
              
   // saveyz;
  end
  else
  begin
    //
    //    recno:=ScrollBox4.VertScrollBar.Position;
    //    grid_yzlr.SetFocus;
    //    ScrollBox4.VertScrollBar.Position:=recno;
  end;
  //  try
  //    ScrollBox4.VertScrollBar.Position:=s;
  //  finally
  //    ScrollBox4.VertScrollBar.Position:=s;
  //  end;

//   vIndex:=grid_yzlr.Columns[grid_yzlr.SelectedIndex].PickList.IndexOf(grid_yzlr.Columns[grid_yzlr.SelectedIndex].Field.AsString);
//     if vIndex=-1 then
//       grid_yzlr.Columns[grid_yzlr.SelectedIndex].Field.AsString:=grid_yzlr.Columns[grid_yzlr.SelectedIndex].PickList.Strings[0] ;
  recno := ScrollBox4.VertScrollBar.Position;
end;

procedure Tfrm_yzinput.grid_yzlrKeyPress(Sender: TObject; var Key: Char);
var
  s: Integer;
begin
  //  if Trim(qry_yz.fieldbyname('fzph').asstring)<>'' then
  //  begin
  //    if (Key<>#27) and  (Key<>#13)  then
  //    begin
  //      Key:=#0;
  //      application.messagebox( '����ȡ�����飬�����޸ģ���', '��ʾ', mb_ok );
  //      Exit;
  //    end;
  //
  //  end;
  s := recno;

  if (grid_yzlr.SelectedIndex = 15) and (qry_yz.fieldbyname('lb').asstring =
    '��ҩ')
    and (Trim(qry_yz.fieldbyname('fzph').asstring) <> '') then
  begin
    key := #0;
  end;
  if key = #13 then
  begin
    wz := grid_yzlr.SelectedIndex;
    tzbz := 1;

    grid_yzlr_ColExit;
    if tzbz = 0 then
    begin
      grid_yzlr.SelectedIndex := wz;
    end;
  end;
  if key = #27 then
  begin
    DBGridEh7.Columns[3].Width := DBGridEh7.Columns[3].Width + 1;
    DBGridEh7.Columns[3].Width := DBGridEh7.Columns[3].Width - 1;
  end;
  ScrollBox4.VertScrollBar.Position := s;
end;

procedure Tfrm_yzinput.grid_yzlrMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  kzbz := 0;
  tzbz := 1;
  //  if (Trim(qry_yz.fieldbyname('fzph').asstring)<>'') and
  //  (grid_yzlr.SelectedIndex>=0) and   (grid_yzlr.SelectedIndex<=6) then
  //  begin
  //      application.messagebox( '����ȡ�����飬�����޸ģ���', '��ʾ', mb_ok );
  //      Exit;
  //  end;
end;

procedure Tfrm_yzinput.czkscl(fs: integer);
begin
  if (qry_yz.FieldByName('lb').AsString = 'ҩƷ') or
    (qry_yz.FieldByName('lb').AsString = 'ҩһ') or
    ((qry_yz.FieldByName('lb').AsString = '����') and isbqkf) then
  begin
    yzNew(fs);
  end
  else
  begin
    if trim(qry_yz.FieldByName('xmmc').AsString) <> '' then
    begin
      qry_ks.Filtered := false;
      if trim(grid_yzlr.Columns[10].DisplayText) <> '' then
      begin
        qry_ks.Filter := 'dm = ' + #39 + grid_yzlr.Columns[10].DisplayText +
          #39;
        qry_ks.Filter := qry_ks.Filter + ' or pym like ' + #39 + '%' +
          grid_yzlr.Columns[10].DisplayText + '%' + #39;
        qry_ks.Filter := qry_ks.Filter + ' or mc like ' + #39 + '%' +
          grid_yzlr.Columns[10].DisplayText + '%' + #39;
        qry_ks.Filtered := true;
      end;
      if qry_ks.RecordCount > 1 then
      begin
        grid_ks.Visible := true;
        grid_ks.SetFocus;
        abort;
      end;
      if qry_ks.RecordCount = 1 then
      begin
        qry_yz.FieldByName('czks').Value := qry_ks.FieldByName('dm').AsString;
        yzNew(fs);
      end;
      if qry_ks.RecordCount < 1 then
      begin
        tzbz := 0;
        showMessage('���ÿ���δ�ҵ�!');
        recno := ScrollBox4.VertScrollBar.Position;
        grid_yzlr.SetFocus;
        ScrollBox4.VertScrollBar.Position := recno;
      end;
    end;
  end;
end;

procedure Tfrm_yzinput.yytjjs(fs: integer);
var
  i: integer;
  _temp: boolean;
begin

  grid_yzlr.SelectedIndex := 7;
  if (qry_yz.FieldByName('lb').AsString = 'ҩƷ') or
    (trim(qry_yz.FieldByName('lb').AsString) = '��ҩ') or
    (qry_yz.FieldByName('lb').AsString = 'ҩһ') or
    (qry_yz.FieldByName('lb').AsString = '��ҩ') then
    // begin then
  begin
    try
      i := strtoint(trim(grid_yzlr.Columns[6].DisplayText));
      if (i > 0) and (i < qry_gytj.RecordCount) then
      begin
        _temp := true;
      end
      else
      begin
        _temp := false;
      end;
    except
      _temp := false;
    end;
    if _temp then //�������ּ���
    begin
      qry_gytj.Filtered := false;
      qry_gytj.RecNo := i;
      qry_yz.FieldByName('yytj').Value := qry_gytj.FieldByName('mc').AsString;
    end
    else
    begin
      if (qry_yz.FieldByName('lb').AsString = 'ҩƷ') or
        (trim(qry_yz.FieldByName('lb').AsString) = '��ҩ') or
        (qry_yz.FieldByName('lb').AsString = 'ҩһ') then
        //����Ƿ�Χ�ڵ��ַ��Ĵ���
      begin
        qry_gytj.Filtered := false;
        if trim(grid_yzlr.Columns[6].DisplayText) <> '' then
        begin
          qry_gytj.Filter := 'pym like ' + #39 + '%' +
            Trim(qry_yz.FieldByName('yytj').asstring) + '%' + #39;
          qry_gytj.Filter := qry_gytj.Filter + ' or mc like ' + #39 + '%' +
            Trim(qry_yz.FieldByName('yytj').asstring) + '%' + #39;
          //grid_yzlr.Columns[6].DisplayText
          qry_gytj.Filtered := true;
        end;

        if qry_gytj.RecordCount > 0 then
        begin
          qry_yz.FieldByName('yytj').Value :=
            qry_gytj.FieldByName('mc').AsString;
        end
      end;

      if (qry_yz.FieldByName('lb').AsString = '��ҩ') and
        (trim(grid_yzlr.Columns[6].DisplayText) = '') then
      begin
        qry_yz.FieldByName('yytj').Value := '';
      end
      else if (qry_yz.FieldByName('lb').AsString = '��ҩ') and
        (trim(grid_yzlr.Columns[6].DisplayText) <> '') then
      begin
        qry_gytj.Filtered := false;
        qry_gytj.Filter := 'pym like ' + #39 + '%' +
          Trim(qry_yz.FieldByName('yytj').asstring) + '%' + #39;
        qry_gytj.Filter := qry_gytj.Filter + ' or mc like ' + #39 + '%' +
          Trim(qry_yz.FieldByName('yytj').asstring) + '%' + #39;
        //grid_yzlr.Columns[6].DisplayText
        qry_gytj.Filtered := true;
        if qry_gytj.RecordCount > 0 then
        begin
          qry_yz.FieldByName('yytj').Value :=
            qry_gytj.FieldByName('mc').AsString;
        end
      end;
    end;
  end;
end;

procedure Tfrm_yzinput.Edit3KeyPress(Sender: TObject; var Key: Char);
var
  ls_cxyz: string;
begin
  if key = #13 then
  begin
    sp_cx_yp_yz.Close;
    sp_cx_yp_yz.Parameters.ParamValues['@pym'] := ls_cxyz;
    sp_cx_yp_yz.Parameters.ParamValues['@ksdm'] := pub_zyxyfdm;
    sp_cx_yp_yz.Parameters.ParamValues['@jsfs'] := '1';
    sp_cx_yp_yz.Parameters.ParamValues['@ls'] := '1';
    sp_cx_yp_yz.Open;
    if sp_cx_yp_yz.RecordCount >= 1 then
    begin
      grid_yz.Visible := true;
      grid_yz.SetFocus;
    end;
  end;
end;

procedure Tfrm_yzinput.Edit4KeyPress(Sender: TObject; var Key: Char);
var
  ls_cxyz: string;
begin
  if key = #13 then
  begin
    sp_cx_yp_yz.Close;
    sp_cx_yp_yz.Parameters.ParamValues['@pym'] := ls_cxyz;
    sp_cx_yp_yz.Parameters.ParamValues['@ksdm'] := pub_zyxyfdm;
    sp_cx_yp_yz.Parameters.ParamValues['@jsfs'] := '1';
    sp_cx_yp_yz.Parameters.ParamValues['@ls'] := '1';
    sp_cx_yp_yz.Open;
    if sp_cx_yp_yz.RecordCount >= 1 then
    begin
      grid_yz.Visible := true;
      grid_yz.SetFocus;
    end;
  end;
end;

procedure Tfrm_yzinput.bt_ztClick(Sender: TObject);
begin
  // //����ģ��ǰ�����ѱ༭ҽ��
  //    bcbz:=false;
  //  application.CreateForm(TFrm_yzzt, Frm_yzzt);
  //  try
  //    Frm_yzzt.ShowModal;
  //  finally
  //    Frm_yzzt.free;
  //  end;
  //  saveyz;
  //  refresh_yz;

   //����ģ��ǰ�����ѱ༭ҽ��

  if Trim(DBEdit11.text) = '' then
  begin
    Application.MessageBox('δ��������ҽ�������ܵ���ģ�壡', '����', MB_OK +
      MB_ICONSTOP);
    Exit;
  end;
  mbdy := True;
  button1.Click;
  mbdy := False;
  Application.OnMessage := nil;
  application.CreateForm(TFrm_yzzt, Frm_yzzt);
  try
    frm_yzzt.dymk := 'zy';
    frm_yzzt.tmh := tmh;
    frm_yzzt.zyh := zyh;
    frm_yzzt.xyfdm := pub_zyxyfdm;
    frm_yzzt.zyfdm := pub_zyxyfdm;
    frm_yzzt.brfylb := sp_jbxx.fieldbyname('fylb').asstring;
    Frm_yzzt.ShowModal;
  finally
    Frm_yzzt.free;
  end;
  refresh_yz;
  qry_yz.Append;
  saveyz;

end;

procedure Tfrm_yzinput.bt_ztsaveClick(Sender: TObject);
var
  ztid: integer;
begin
  //  application.CreateForm(Tfrm_zyyzmbmc, frm_zyyzmbmc);
  //  try
  //    frm_zyyzmbmc.ShowModal;
  //  finally
  //    frm_zyyzmbmc.free;
  //  end;
  //  if zyyz_mbmc = '' then
  //  begin
  //    zyyz_mbmc := pub_czyxm + formatdatetime('yymmddhhnnsszzz', frm_func.curr_date);
  //    application.MessageBox(pchar('��û����ģ������ϵͳ�Զ�����Ϊ:' + zyyz_mbmc), '��ʾ', 0 + 48);
  //  end
  //  else
  //   begin
  //    dm_data.qry_pub.Close;
  //    dm_data.qry_pub.SQL.Text := 'select * from zybl_ztdm where ztmc='+#39+zyyz_mbmc+#39+' and '+
  //                                'czy='+#39+pub_czydm+#39;
  //    dm_data.qry_pub.open;
  //   end;
  //
  // if not dm_data.qry_pub.isempty then
  // begin
  // if application.MessageBox('�Ѿ�������ͬ���Ƶ�ģ�壬�Ƿ�ɾ��ԭ���ף���', '��ʾ', mb_yesno+MB_DEFBUTTON2	)=idyes then
  //  begin
  //    dm_data.qry_pub1.SQL.Clear;
  //    dm_data.qry_pub1.SQL.Add('delete zybl_ztmx where ztid='+ dm_data.qry_pub.fieldbyname('ztid').asstring);
  //    dm_data.qry_pub1.ExecSQL;
  //
  //    dm_data.qry_pub1.SQL.Clear;
  //    dm_data.qry_pub1.SQL.Add('delete zybl_ztdm where ztid='+ dm_data.qry_pub.fieldbyname('ztid').asstring);
  //    dm_data.qry_pub1.ExecSQL;
  //  end
  //  else
  //  abort;
  // end;
  //  if qry_yz.RecordCount > 1 then
  //  begin
  //    dm_data.qry_pub.Close;
  //    dm_data.qry_pub.SQL.Text := 'insert into zybl_ztdm(bqdm,ksdm,ysdm,ztmc,czy) values(' +
  //      #39 + pub_bqdm + #39 + ',' + #39 + pub_ksdm + #39 + ',' + #39 + pub_czyxm + #39 +
  //      ',' + #39 + zyyz_mbmc + #39 + ',' + #39 + pub_czydm + #39 + ')';
  //    dm_data.qry_pub.ExecSQL;
  //    dm_data.qry_pub.Close;
  //    dm_data.qry_pub.SQL.Text := 'select ztid from zybl_ztdm where ztmc=' + #39 + zyyz_mbmc + #39+
  //                                 ' and czy='+#39+pub_czydm+#39;
  //    dm_data.qry_pub.Open;
  //    ztid := dm_data.qry_pub.FieldByName('ztid').AsInteger;
  //    qry_yzmbmx.Close;
  //    qry_yzmbmx.Open;
  //    qry_yz.First;
  //    while not qry_yz.Eof do
  //    begin
  //      if (qry_yz.FieldByName('xmmc').AsString <> '') and
  //        (qry_yz.FieldByName('sl').AsString <> '') then
  //      begin
  //        qry_yzmbmx.Append;
  //        qry_yzmbmx.FieldByName('ztid').AsInteger := ztid;
  //        qry_yzmbmx.FieldByName('yzsx').AsString := qry_yz.FieldByName('yzsx').AsString;
  //        qry_yzmbmx.FieldByName('lb').AsString := qry_yz.FieldByName('lb').AsString;
  //        qry_yzmbmx.FieldByName('xmdm').AsString := qry_yz.FieldByName('xmdm').AsString;
  //        qry_yzmbmx.FieldByName('xmmc').AsString := qry_yz.FieldByName('xmmc').AsString;
  //        qry_yzmbmx.FieldByName('ypyf').AsString := qry_yz.FieldByName('ypyf').AsString;
  //        qry_yzmbmx.FieldByName('ypyl').AsString := qry_yz.FieldByName('ypyl').AsString;
  //        qry_yzmbmx.FieldByName('yldw').AsString := qry_yz.FieldByName('yldw').AsString;
  //        qry_yzmbmx.FieldByName('ypbzbl').AsString := qry_yz.FieldByName('ypbzbl').AsString;
  //        qry_yzmbmx.FieldByName('dw').AsString := qry_yz.FieldByName('dw').AsString;
  //        qry_yzmbmx.FieldByName('sl').AsInteger := qry_yz.FieldByName('sl').AsInteger;
  //        qry_yzmbmx.FieldByName('yytj').AsString := qry_yz.FieldByName('yytj').AsString;
  //        qry_yzmbmx.FieldByName('czks').AsString := qry_yz.FieldByName('czks').AsString;
  //        qry_yzmbmx.FieldByName('kdks').AsString := qry_yz.FieldByName('kdks').AsString;
  //        qry_yzmbmx.FieldByName('yplb').AsString := qry_yz.FieldByName('yplb').AsString;
  //        qry_yzmbmx.FieldByName('gg').AsString := qry_yz.FieldByName('gg').AsString;
  //        qry_yzmbmx.FieldByName('yplsj').AsString := qry_yz.FieldByName('yplsj').AsString;
  //        qry_yzmbmx.FieldByName('bz').AsString := qry_yz.FieldByName('bz').AsString;
  //        qry_yzmbmx.FieldByName('jyyb').AsString := qry_yz.FieldByName('jyyb').AsString;
  //        qry_yzmbmx.FieldByName('jyflbh').AsString := qry_yz.FieldByName('jyflbh').AsString;
  //        qry_yzmbmx.FieldByName('fzbh').AsString := qry_yz.FieldByName('fzph').AsString;
  //        qry_yzmbmx.Post;
  //      end;
  //      qry_yz.Next;
  //    end;
  //    qry_yzmbmx.UpdateBatch(arall);
  //  end
  //  else
  //    application.MessageBox('û����ϸ�޷���Ϊģ��', '��ʾ', 0 + 48);

  mbdy := True;
  button1.Click;
  mbdy := False;

  //  if Trim( DBEdit10.Text ) = '' then
  //    Application.MessageBox( 'û����ϲ��ܴ�Ϊģ��!!', '��ʾ', 0 + 48 )
  //  else

  frm_yzmbsave(qry_yz, Trim(DBEdit10.Text), 'zy');

end;

procedure Tfrm_yzinput.saveyz_tj;
var
  p_return, p_ypmc: string;
begin
  DM_data.qry_pub.close;
  DM_data.qry_pub.SQL.text :=
    'select * from zysf_zydj where cybz=0 and jsbz=0 and zyh=' + '''' + zyh +
    '''';
  try
    DM_data.qry_pub.Open;
  except
  end;
  if DM_data.qry_pub.IsEmpty then
  begin
    application.MessageBox('�ò����ѳ�Ժ�����ܱ���ҽ����', '������ʾ', 16);
    abort;
  end;
  qry_yz.DisableControls;
  qry_gytj.filtered := false;
  if yzys = '' then
    yzys := pub_czydm;
  //ҽ��¼��������֤
  yz_lr_yz;
  //------------------------------------------------------------------------------
  //ҽ����ѯ��ʷ���ţ����¼�¼������ʷ����
  yz_cx_cqph('��ʱ');
  //��ʱҽ���������Ų�ִ��
  qry_yz.First;
  while not qry_yz.Eof do
  begin
    if (Trim(qry_yz.FieldByName('lb').AsString) = 'ҩƷ') or
      (Trim(qry_yz.FieldByName('lb').AsString) = 'ҩһ') then
    begin
      DM_data.qry_pub.close;
      DM_data.qry_pub.sql.text :=
        'select b.ypdm from xyf_ypkc a,sys_ypdm b where' +
        ' a.ypdm=b.ypdm and b.sybz=1  and b.ypdm=' + '''' +
        Trim(qry_yz.FieldByName('xmdm').AsString) + '''' +
        ' and a.zxdwsl>0 and ksdm=' +
        '''' + pub_zyxyfdm + '''';
      try
        DM_data.qry_pub.Open;
      except
      end;
      if DM_data.qry_pub.IsEmpty then
      begin
        p_ypmc := '��ҩƷû�п�棺' +
          Trim(qry_yz.FieldByName('xmmc').AsString);
        application.MessageBox(PChar(p_ypmc), '��ʾ��Ϣ', 0 + 48);
        qry_yz.EnableControls;
        abort;
      end;

    end;

    if (Trim(qry_yz.FieldByName('lb').AsString) = '��ҩ') then
    begin
      DM_data.qry_pub.close;
      DM_data.qry_pub.sql.text :=
        'select b.ypdm from xyf_ypkc a,sys_ypdm b where' +
        ' a.ypdm=b.ypdm and b.sybz=1 and  b.ypdm=' + '''' +
        Trim(qry_yz.FieldByName('xmdm').AsString) + '''' +
        ' and a.zxdwsl>0 and ksdm=' +
        '''' + prv_zyfdm + '''';
      try
        DM_data.qry_pub.Open;
      except
      end;
      if DM_data.qry_pub.IsEmpty then
      begin
        p_ypmc := '��ҩƷû�п�棺' +
          Trim(qry_yz.FieldByName('xmmc').AsString);
        application.MessageBox(PChar(p_ypmc), '��ʾ��Ϣ', 0 + 48);
        qry_yz.EnableControls;
        abort;
      end;

    end;

    if (Trim(qry_yz.FieldByName('lb').AsString) = '��ҩ') then
    begin
      DM_data.qry_pub.close;
      DM_data.qry_pub.sql.text :=
        'select b.ypdm from xyf_ypkc a,sys_ypdm b where' +
        ' a.ypdm=b.ypdm and b.sybz=1 and  b.ypdm=' + '''' +
        Trim(qry_yz.FieldByName('xmdm').AsString) + '''' +
        ' and a.zxdwsl>0 and ksdm=' +
        '''' + prv_cyfdm + '''';
      try
        DM_data.qry_pub.Open;
      except
      end;
      if DM_data.qry_pub.IsEmpty then
      begin
        p_ypmc := '��ҩƷû�п�棺' +
          Trim(qry_yz.FieldByName('xmmc').AsString);
        application.MessageBox(PChar(p_ypmc), '��ʾ��Ϣ', 0 + 48);
        qry_yz.EnableControls;
        abort;
      end;

    end;

    if (Pos(Trim(qry_yz.FieldByName('xmdm').AsString), pub_kssypdm) > 0) and
      ((Trim(qry_yz.FieldByName('lb').AsString) = 'ҩƷ') or
      (Trim(qry_yz.FieldByName('lb').AsString) = '��ҩ') or
      (Trim(qry_yz.FieldByName('lb').AsString) = '��ҩ') or
      (Trim(qry_yz.FieldByName('lb').AsString) = 'ҩһ')) then
    begin
      p_ypmc := '����ϵͳ�е�ְ���޷�ʹ�ã�' +
        Trim(qry_yz.FieldByName('xmmc').AsString);
      application.MessageBox(PChar(p_ypmc), '��ʾ��Ϣ', 0 + 48);
      qry_yz.EnableControls;
      abort;
    end;

    if (trim(qry_yz.FieldByName('yzsx').AsString) <> '����') then
    begin
      if trim(qry_yz.FieldByName('ph').AsString) = '' then
        tjyzfcqyz; //û�����ŵļ�¼����������
      if islsyzsfzdzx then //��ʱҽ���Զ�ִ��
      begin
        qry_yz.Edit;
        qry_yz.FieldByName('zxbz').Value := true;
        qry_yz.Post;
      end;
    end;
    qry_yz.Next;
  end;
  //------------------------------------------------------------------------------
  //ҽ����ѯ��ʷ���ţ����¼�¼������ʷ����
  yz_cx_cqph('����');
  //����ҽ����������
  qry_yz.First;
  while not qry_yz.Eof do
  begin
    if (trim(qry_yz.FieldByName('yzsx').AsString) = '����') then
      if trim(qry_yz.FieldByName('ph').AsString) = '' then
        tjyzfcqyz;
    qry_yz.Next;
  end;
  qry_yz.first;
  p_return := '';

  //  while not qry_yz.Eof do
  //  begin
  //    if sp_dryz.Locate( 'xmdm', qry_yz.FieldByName( 'xmdm' ).AsString, [] ) then
  //    begin
  //      if ( sp_dryz.FieldByName( 'yzsx' ).asstring = '����' ) and ( sp_dryz.FieldByName( 'zxbz' ).AsBoolean = true ) and
  //        ( ( sp_dryz.FieldByName( 'yytj' ).asstring = '�ڷ�' ) or ( sp_dryz.FieldByName( 'yytj' ).asstring = '��ע' ) ) and
  //        ( ( sp_dryz.fieldbyname( 'tzbz' ).asboolean = false ) or
  //        ( formatdatetime( 'yyyymmdd', sp_dryz.fieldbyname( 'zfrq' ).asdatetime ) >= formatdatetime( 'yyyymmdd', frm_func.curr_date( ) ) ) ) then
  //        p_return := p_return + #13 + qry_yz.fieldbyname( 'xmmc' ).AsString;
  //
  //    end;
  //    qry_yz.next;
  //  end;
  //  if p_return <> '' then
  //    if application.MessageBox( pchar( p_return + #13 + #13 + '����ҩƷ��Ա����ʹ��,�Ƿ�Ҫ����?' + #13 + '��ע���޸ģ���' ), '��ʾ��Ϣ', mb_iconwarning + MB_YESNO + mb_defbutton2 ) = IDNO then
  //    begin
  //      qry_yz.EnableControls;
  //      abort;
  //    end;

  p_return := '';
  qry_yz.first;
  while not qry_yz.Eof do
  begin
    if (qry_yz.FieldByName('yzsx').asstring = '����') and
      ((qry_yz.FieldByName('lb').asstring = '���') or
      (qry_yz.FieldByName('lb').asstring = '����')) then
      p_return := p_return + #13 + qry_yz.fieldbyname('xmmc').AsString;
    qry_yz.next;
  end;

  if p_return <> '' then
    if application.MessageBox(pchar(p_return + #13 + #13 +
      '���ϼ�������Ŀҽ��Ϊ����ҽ��,�Ƿ�Ҫȷ��?' + #13 + '��ע���޸ģ���'),
      '��ʾ��Ϣ', mb_iconwarning + MB_YESNO + mb_defbutton2) = IDNO then
    begin
      qry_yz.EnableControls;
      abort;
    end;
  p_return := '';
  //------------------------------------------------------------------------------
  dm_data.ado_mydata.BeginTrans;
  try
    qry_yz.UpdateBatch(arall);
    sp_yzup_list.Close;
    sp_yzup_list.Parameters.ParamByName('@czydm').Value := pub_czydm;
    sp_yzup_list.Parameters.ParamByName('@zyh').Value := zyh;
    sp_yzup_list.Parameters.ParamByName('@sczt').Value := 0;
    sp_yzup_list.ExecProc;
    p_return := sp_yzup_list.Parameters.ParamByName('@sczt').Value;
    if p_return = '1' then
    begin
      dm_data.ado_mydata.CommitTrans;
      refresh_show;
    end
    else
    begin
      dm_data.ado_mydata.RollbackTrans;
      application.MessageBox(pchar(p_return), '��ʾ', 0 + 48);
    end;
  except
    dm_data.ado_mydata.RollbackTrans;
    application.MessageBox('ҽ������ʧ�ܣ������½��иղŲ���!', '��ʾ', 0 + 48);
    qry_yz.EnableControls;
    abort;
  end;
  qry_yz.EnableControls;
end;

procedure Tfrm_yzinput.SetGrid;
var
  L_Width, L_Top, L_Left: Integer;
begin
  DBGridEh4.Align := alClient;

  L_Width := DBGridEh4.Width;
  L_Top := DBGridEh4.Top;
  L_Left := DBGridEh4.Left;

  DBGridEh4.Align := alNone;
  DBGridEh4.Left := L_Left;
  DBGridEh4.top := L_Top;
  DBGridEh4.Width := L_Width;

  DBGridEh6.Align := alNone;
  DBGridEh6.Width := L_Width;
  DBGridEh6.Left := L_Left;
  DBGridEh6.top := Panel10.Height+L_Top;
end;

procedure Tfrm_yzinput.saveyz_lcljtj;
var
  p_return, p_ypmc: string;
begin
  DM_data.qry_pub.close;
  DM_data.qry_pub.SQL.text :=
    'select * from zysf_zydj where cybz=0 and jsbz=0 and zyh=' + '''' + zyh +
    '''';
  try
    DM_data.qry_pub.Open;
  except
  end;
  if DM_data.qry_pub.IsEmpty then
  begin
    application.MessageBox('�ò����ѳ�Ժ�����ܱ���ҽ����', '������ʾ', 16);
    Exit;
  end;
  qry_yz.DisableControls;
  qry_gytj.filtered := false;
  if yzys = '' then
    yzys := pub_czydm;
  //ҽ��¼��������֤
  yz_lr_yz;
  //------------------------------------------------------------------------------
  //ҽ����ѯ��ʷ���ţ����¼�¼������ʷ����
  yz_cx_cqph('��ʱ');
  //��ʱҽ���������Ų�ִ��
  qry_yz.First;
  while not qry_yz.Eof do
  begin
    if (Pos(Trim(qry_yz.FieldByName('xmdm').AsString), pub_kssypdm) > 0) and
      ((Trim(qry_yz.FieldByName('lb').AsString) = 'ҩƷ') or
      (Trim(qry_yz.FieldByName('lb').AsString) = '��ҩ') or
      (Trim(qry_yz.FieldByName('lb').AsString) = '��ҩ') or
      (Trim(qry_yz.FieldByName('lb').AsString) = 'ҩһ')) then
    begin
      p_ypmc := '����ϵͳ�е�ְ���޷�ʹ�ã�' +
        Trim(qry_yz.FieldByName('xmmc').AsString);
      application.MessageBox(PChar(p_ypmc), '��ʾ��Ϣ', 0 + 48);
      qry_yz.EnableControls;
      abort;
    end;

    if (trim(qry_yz.FieldByName('yzsx').AsString) <> '����') then
    begin
      if trim(qry_yz.FieldByName('ph').AsString) = '' then
        tjyzfcqyz; //û�����ŵļ�¼����������
      if islsyzsfzdzx then //��ʱҽ���Զ�ִ��
      begin
        qry_yz.Edit;
        qry_yz.FieldByName('zxbz').Value := true;
        qry_yz.Post;
      end;
    end;
    qry_yz.Next;
  end;
  //------------------------------------------------------------------------------
  //ҽ����ѯ��ʷ���ţ����¼�¼������ʷ����
  yz_cx_cqph('����');
  //����ҽ����������
  qry_yz.First;
  while not qry_yz.Eof do
  begin
    if (trim(qry_yz.FieldByName('yzsx').AsString) = '����') then
      if trim(qry_yz.FieldByName('ph').AsString) = '' then
        tjyzfcqyz;
    qry_yz.Next;
  end;
  qry_yz.first;
  p_return := '';
  while not qry_yz.Eof do
  begin
    if sp_dryz.Locate('xmdm', qry_yz.FieldByName('xmdm').AsString, []) then
    begin
      if (sp_dryz.FieldByName('yzsx').asstring = '����') and
        (sp_dryz.FieldByName('zxbz').AsBoolean = true) and
        ((sp_dryz.FieldByName('yytj').asstring = '�ڷ�') or
        (sp_dryz.FieldByName('yytj').asstring = '��ע')) and
        ((sp_dryz.fieldbyname('tzbz').asboolean = false) or
        (formatdatetime('yyyymmdd', sp_dryz.fieldbyname('zfrq').asdatetime) >=
        formatdatetime('yyyymmdd', frm_func.curr_date()))) then
        p_return := p_return + #13 + qry_yz.fieldbyname('xmmc').AsString;

    end;
    qry_yz.next;
  end;
  if p_return <> '' then
    if application.MessageBox(pchar(p_return + #13 + #13 +
      '����ҩƷ��Ա����ʹ��,�Ƿ�Ҫ����?' + #13 + '��ע���޸ģ���'), '��ʾ��Ϣ',
      mb_iconwarning + MB_YESNO + mb_defbutton2) = IDNO then
    begin
      qry_yz.EnableControls;
      abort;
    end;

  p_return := '';
  qry_yz.first;
  while not qry_yz.Eof do
  begin
    if (qry_yz.FieldByName('yzsx').asstring = '����') and
      ((qry_yz.FieldByName('lb').asstring = '���') or
      (qry_yz.FieldByName('lb').asstring = '����')) then
      p_return := p_return + #13 + qry_yz.fieldbyname('xmmc').AsString;
    qry_yz.next;
  end;

  if p_return <> '' then
    if application.MessageBox(pchar(p_return + #13 + #13 +
      '���ϼ�������Ŀҽ��Ϊ����ҽ��,�Ƿ�Ҫȷ��?' + #13 + '��ע���޸ģ���'),
      '��ʾ��Ϣ', mb_iconwarning + MB_YESNO + mb_defbutton2) = IDNO then
    begin
      qry_yz.EnableControls;
      abort;
    end;
  p_return := '';
  //------------------------------------------------------------------------------
  dm_data.ado_mydata.BeginTrans;
  try
    qry_yz.UpdateBatch(arall);
    sp_yzup_list.Close;
    sp_yzup_list.Parameters.ParamByName('@czydm').Value := pub_czydm;
    sp_yzup_list.Parameters.ParamByName('@zyh').Value := zyh;
    sp_yzup_list.Parameters.ParamByName('@sczt').Value := 0;
    sp_yzup_list.ExecProc;
    qry_yz.First;
    while not qry_yz.eof do
    begin
      qry_yz.edit;
      qry_yz.FieldByName('kdrq').asstring := lcljkdrq;
      qry_yz.FieldByName('zxbz').asboolean := true;
      qry_yz.FieldByName('xgrq').AsDateTime := Frm_func.curr_date;
      qry_yz.post;
      qry_yz.Next;
    end;
    qry_yz.UpdateBatch(arall);
    p_return := sp_yzup_list.Parameters.ParamByName('@sczt').Value;
    if p_return = '1' then
    begin
      dm_data.ado_mydata.CommitTrans;
      refresh_yz;
    end
    else
    begin
      dm_data.ado_mydata.RollbackTrans;
      application.MessageBox(pchar(p_return), '��ʾ', 0 + 48);
    end;
  except
    dm_data.ado_mydata.RollbackTrans;
    application.MessageBox('ҽ������ʧ�ܣ������½��иղŲ���!', '��ʾ', 0 + 48);
  end;
  qry_yz.EnableControls;
end;

procedure Tfrm_yzinput.saveyz;
var
  p_return, p_ypmc: string;
begin
  DM_data.qry_pub.close;
  DM_data.qry_pub.SQL.text :=
    'select * from zysf_zydj where cybz=0 and jsbz=0 and zyh=' + '''' + zyh +
    '''';
  try
    DM_data.qry_pub.Open;
  except
  end;
  if DM_data.qry_pub.IsEmpty then
  begin
    application.MessageBox('�ò����ѳ�Ժ�����ܱ���ҽ����', '������ʾ', 16);
    Exit;
  end;
  qry_yz.DisableControls;
  qry_gytj.filtered := false;
  if yzys = '' then
    yzys := pub_czydm;
  //ҽ��¼��������֤
  yz_lr_yz;
  //------------------------------------------------------------------------------
  //ҽ����ѯ��ʷ���ţ����¼�¼������ʷ����
  yz_cx_cqph('��ʱ');
  //��ʱҽ���������Ų�ִ��
  qry_yz.First;
  while not qry_yz.Eof do
  begin
    if (Trim(qry_yz.FieldByName('lb').AsString) = 'ҩƷ') or
      (Trim(qry_yz.FieldByName('lb').AsString) = 'ҩһ') then
    begin
      DM_data.qry_pub.close;
      DM_data.qry_pub.sql.text :=
        'select b.ypdm from xyf_ypkc a,sys_ypdm b where' +
        ' a.ypdm=b.ypdm and b.sybz=1 and  b.ypdm=' + '''' +
        Trim(qry_yz.FieldByName('xmdm').AsString) + '''' +
        ' and a.zxdwsl>0 and ksdm=' +
        '''' + pub_zyxyfdm + '''';
      try
        DM_data.qry_pub.Open;
      except
      end;
      if DM_data.qry_pub.IsEmpty then
      begin
        p_ypmc := '��ҩƷû�п�棺' +
          Trim(qry_yz.FieldByName('xmmc').AsString);
        application.MessageBox(PChar(p_ypmc), '��ʾ��Ϣ', 0 + 48);
        qry_yz.EnableControls;
        Abort;
      end;                         
    end;

    if (Trim(qry_yz.FieldByName('lb').AsString) = '��ҩ') then
    begin
      DM_data.qry_pub.close;
      DM_data.qry_pub.sql.text :=
        'select b.ypdm from xyf_ypkc a,sys_ypdm b where' +
        ' a.ypdm=b.ypdm and b.sybz=1  and b.ypdm=' + '''' +
        Trim(qry_yz.FieldByName('xmdm').AsString) + '''' +
        ' and a.zxdwsl>0 and ksdm=' +
        '''' + prv_zyfdm + '''';
      try
        DM_data.qry_pub.Open;
      except
      end;
      if DM_data.qry_pub.IsEmpty then
      begin
        p_ypmc := '��ҩƷû�п�棺' +
          Trim(qry_yz.FieldByName('xmmc').AsString);
        application.MessageBox(PChar(p_ypmc), '��ʾ��Ϣ', 0 + 48);
        qry_yz.EnableControls;
        Abort;
      end;

    end;

    if (Trim(qry_yz.FieldByName('lb').AsString) = '��ҩ') then
    begin
      DM_data.qry_pub.close;
      DM_data.qry_pub.sql.text :=
        'select b.ypdm from xyf_ypkc a,sys_ypdm b where' +
        ' a.ypdm=b.ypdm and b.sybz=1 and  b.ypdm=' + '''' +
        Trim(qry_yz.FieldByName('xmdm').AsString) + '''' +
        ' and a.zxdwsl>0 and ksdm=' +
        '''' + prv_cyfdm + '''';
      try
        DM_data.qry_pub.Open;
      except
      end;
      if DM_data.qry_pub.IsEmpty then
      begin
        p_ypmc := '��ҩƷû�п�棺' +
          Trim(qry_yz.FieldByName('xmmc').AsString);
        application.MessageBox(PChar(p_ypmc), '��ʾ��Ϣ', 0 + 48);
        qry_yz.EnableControls;
        Abort;
      end;

    end;

    if (Pos(Trim(qry_yz.FieldByName('xmdm').AsString), pub_kssypdm) > 0) and
      ((Trim(qry_yz.FieldByName('lb').AsString) = 'ҩƷ') or
      (Trim(qry_yz.FieldByName('lb').AsString) = '��ҩ') or
      (Trim(qry_yz.FieldByName('lb').AsString) = '��ҩ') or
      (Trim(qry_yz.FieldByName('lb').AsString) = 'ҩһ')) then
    begin
      p_ypmc := '����ϵͳ�е�ְ���޷�ʹ�ã�' +
        Trim(qry_yz.FieldByName('xmmc').AsString);
      application.MessageBox(PChar(p_ypmc), '��ʾ��Ϣ', 0 + 48);
      qry_yz.EnableControls;
      Abort;
    end;
    if (trim(qry_yz.FieldByName('yzsx').AsString) <> '����') then
    begin
      if trim(qry_yz.FieldByName('ph').AsString) = '' then
        tjyzfcqyz; //û�����ŵļ�¼����������
      if islsyzsfzdzx then //��ʱҽ���Զ�ִ��
      begin
        qry_yz.Edit;
        qry_yz.FieldByName('zxbz').Value := true;
        qry_yz.Post;
      end;
    end;
    qry_yz.Next;
  end;
  //------------------------------------------------------------------------------
  //ҽ����ѯ��ʷ���ţ����¼�¼������ʷ����
  yz_cx_cqph('����');
  //����ҽ����������
  qry_yz.First;
  while not qry_yz.Eof do
  begin
    if (trim(qry_yz.FieldByName('yzsx').AsString) = '����') then
      if trim(qry_yz.FieldByName('ph').AsString) = '' then
        tjyzfcqyz;
    qry_yz.Next;
  end;
  qry_yz.first;
  p_return := '';

  //  while not qry_yz.Eof do
  //  begin
  //    if sp_dryz.Locate( 'xmdm', qry_yz.FieldByName( 'xmdm' ).AsString, [] ) then
  //    begin
  //      if ( sp_dryz.FieldByName( 'yzsx' ).asstring = '����' ) and ( sp_dryz.FieldByName( 'zxbz' ).asboolean = true ) and
  //        ( ( sp_dryz.FieldByName( 'yytj' ).asstring = '�ڷ�' ) or ( sp_dryz.FieldByName( 'yytj' ).asstring = '��ע' ) ) and
  //        ( ( sp_dryz.fieldbyname( 'tzbz' ).asboolean = false ) or
  //        ( formatdatetime( 'yyyymmdd', sp_dryz.fieldbyname( 'zfrq' ).asdatetime ) >= formatdatetime( 'yyyymmdd', frm_func.curr_date( ) ) ) ) then
  //        p_return := p_return + #13 + qry_yz.fieldbyname( 'xmmc' ).AsString;
  //
  //    end;
  //    qry_yz.next;
  //  end;
  //  if p_return <> '' then
  //    if application.MessageBox( pchar( p_return + #13 + #13 + '����ҩƷ��Ա����ʹ��,�Ƿ�Ҫ����?' + #13 + '��ע���޸ģ���' ), '��ʾ��Ϣ', mb_iconwarning + MB_YESNO + mb_defbutton2 ) = IDNO then
  //    begin
  //      qry_yz.EnableControls;
  //      abort;
  //    end;

  p_return := '';
  qry_yz.first;
  while not qry_yz.Eof do
  begin
    if (qry_yz.FieldByName('yzsx').asstring = '����') and
      ((qry_yz.FieldByName('lb').asstring = '���') or
      (qry_yz.FieldByName('lb').asstring = '����')) then
      p_return := p_return + #13 + qry_yz.fieldbyname('xmmc').AsString;
    qry_yz.next;
  end;

  if p_return <> '' then
    if application.MessageBox(pchar(p_return + #13 + #13 +
      '���ϼ�������Ŀҽ��Ϊ����ҽ��,�Ƿ�Ҫȷ��?' + #13 + '��ע���޸ģ���'),
      '��ʾ��Ϣ', mb_iconwarning + MB_YESNO + mb_defbutton2) = IDNO then
    begin
      qry_yz.EnableControls;
      abort;
    end;
  p_return := '';
  //------------------------------------------------------------------------------
  dm_data.ado_mydata.BeginTrans;
  try
    qry_yz.UpdateBatch(arall);
    sp_yzup_list.Close;
    sp_yzup_list.Parameters.ParamByName('@czydm').Value := pub_czydm;
    sp_yzup_list.Parameters.ParamByName('@zyh').Value := zyh;
    sp_yzup_list.Parameters.ParamByName('@sczt').Value := 0;
    sp_yzup_list.ExecProc;
    p_return := sp_yzup_list.Parameters.ParamByName('@sczt').Value;
    if p_return = '1' then
    begin
      dm_data.ado_mydata.CommitTrans;
      refresh_show;
      if bcbz then
        application.MessageBox('�������!', '��ʾ', 0 + 48);
    end
    else
    begin
      dm_data.ado_mydata.RollbackTrans;
      application.MessageBox(pchar(p_return), '��ʾ', 0 + 48);
    end;
  except on e1: Exception do
    begin
      dm_data.ado_mydata.RollbackTrans;
      application.MessageBox(pchar('ҽ������ʧ�ܣ������½��иղŲ���!' +
        e1.Message), '��ʾ', 0 + 48);
    end;
  end;
  qry_yz.EnableControls;
  DM_data.qry_pub.close;
  DM_data.qry_pub.SQL.text :=
    'update zybl_zyyz with (rowlock) set tzrq=null where convert(varchar,tzrq,112)=''19000101''' +
    ' and zyh=' + '''' + zyh + '''';
  DM_data.qry_pub.ExecSQL;

  //  DM_data.qry_pub.close;
  //  DM_data.qry_pub.SQL.text:='update zybl_zyyz  with (rowlock) set ypyf=null where rtrim(ypyf)='''''+
  //                               ' and zyh='+''''+zyh+'''';
  //  DM_data.qry_pub.ExecSQL;
  qry_yz.Edit;
end;



{-------------------------------------------------------------------------------
  ������:    Tfrm_yzinput.proc_crbrjbxxinpass
  ����:      yansghuai
  ����:      2016.03.02
  ����:      ��
  ����ֵ:    ��
-------------------------------------------------------------------------------}
procedure Tfrm_yzinput.proc_crbrjbxxinpass;
var
  vbr_tz: string;
  res: string;
begin
//  try
//    if Pos('Kg', edt_tz.Text) > 0 then
//      br_tz := inttostr(StrToInt(Copy(edt_tz.Text, 1, Pos('Kg', edt_tz.Text) - 1)))
//    else
//      br_tz := Trim(edt_tz.Text);
//    if br_tz = '' then
//      br_tz := '0';
//    if (StrToInt(br_tz) <= 0) and (StrToInt(br_tz) >= 1000) then
//      br_tz := '';
//      if br_tz = '0' then
//      br_tz:='';
//  except
//    br_tz := '';
//  end;
  vbr_tz := '';//��������
  {proc_brjbxx(mz_tmh, '1', ad_wczbr.fieldbyname('brxm').asstring,
    ad_wczbr.fieldbyname('brxb').asstring, FormatDateTime('yyyy-MM-dd', sp_cx_byjbxx.fieldbyname('csrq').AsDateTime),
    br_tz, '', pub_ksdm, pub_ksmc, pub_czydm, pub_czyxm, '');   }


  //PASS4���˻�����Ϣ����      pass4_brjbxx
  res := IntToStr(MDC_SetPatient(PChar(tmh),
    PChar(zyh),
    '1',
    PChar(sp_jbxx.fieldbyname('brxm').asstring),
    PChar(sp_jbxx.fieldbyname('brxb').asstring),
    PChar(FormatDateTime('yyyy-MM-dd', sp_jbxx.fieldbyname('csrq').AsDateTime)),
    '',
    PChar(vbr_tz),
    PChar(pub_ksdm),
    PChar(pub_ksmc),
    PChar(pub_czydm),
    PChar(pub_czyxm),
    2,
    -1,
    -1,
    '',
    -1,
    -1));
    if res<>'1' then
    begin
      //gi_passenabled := 0;
      ShowMessage('������ҩ������ע��!');
    end;

end;


{-------------------------------------------------------------------------------
  ������:    Tfrm_yzinput.proc_addmedcond
  ����:      yansghuai
  ����:      2016.03.02
  ����:      ��
  ����ֵ:    Boolean
-------------------------------------------------------------------------------}
function Tfrm_yzinput.proc_addmedcond: Boolean;
var
  l_cfbh, l_yzlb, l_icd, l_icdname, icds: string;
  i, ti: integer;
begin
  md.firstxh := 1;
  qry_icd10.close;
  qry_icd10.sql.Text := 'select * from icd10';
  qry_icd10.Open;
  qry_icd10.Filtered := false;
  qry_icd10.Filter := 'jbbm = ''+ DBEdit10.text + ''' ;
  qry_icd10.Filtered := true;

  md.firstcode := Trim(  qry_icd10.FieldByName('JBBM').AsString);
  md.firstname := Trim(  qry_icd10.FieldByName('JBMC').AsString);
  result := True;
  icds := 'a';
  i := 1;
  try
    qry_yz.First;
    l_yzlb := trim(qry_yz.FieldByName('lb').AsString);
    l_cfbh := trim(qry_yz.FieldByName('jyflbh').AsString);
//    l_icd := trim(qry_yz.FieldByName('icd').AsString);
//    l_icdname := trim(qry_yz.FieldByName('icdname').AsString);
    l_icd :=   md.firstcode;
    l_icdname := md.firstname;
    if Trim(md.firstcode) <> '' then
    begin
      if MDC_AddMedCond(PChar(IntToStr(i)), PChar(md.firstcode), PChar(md.firstname), '') <> 1 then
      begin
        Result := False;
        exit;
      end else
        Inc(i);
    end;
//    if Trim(md.secondcode) <> '' then
//    begin
//      if MDC_AddMedCond(PChar(IntToStr(i)), PChar(md.secondcode), PChar(md.secondname), '') <> 1 then
//      begin
//        Result := False;
//        exit;
//      end else
//        Inc(i);
//    end;
//    ti := i;
//    for I := ti to qry_yz.RecordCount + ti do
//    begin
//      qry_yz.Next;
//      if not ((l_yzlb = '��ҩ') or (l_yzlb = '��ҩ') or (l_yzlb = '��ҩ')) then
//        Continue;
//      if (l_icd = '') then
//        Continue;
//      if Pos(l_icd, icds) > 0 then
//        Continue;
//      if MDC_AddMedCond(PChar(IntToStr(i)), PChar(l_icd), PChar(l_icdname), '') <> 1 then
//      begin
//        Result := False;
//        exit;
//      end;
//      l_yzlb := trim(qry_yz.FieldByName('yzlb').AsString);
//      l_cfbh := trim(qry_yz.FieldByName('jyflbh').AsString);
//      l_icd :=   md.firstcode;
//      l_icdname := md.firstname;
////      l_icd := trim(qry_yz.FieldByName('icd').AsString);
////      l_icdname := trim(qry_yz.FieldByName('icdname').AsString);
//      icds := icds + l_icd;
//    end;
  except
    Result := False;
  end;
  result := true;
end;

{-------------------------------------------------------------------------------
  ������:    Tfrm_yzinput.proc_AddScreenDrug
  ����:      yansghuai
  ����:      2016.03.02
  ����:      ��
  ����ֵ:    Boolean
-------------------------------------------------------------------------------}
function Tfrm_yzinput.proc_AddScreenDrug: Boolean;
var
  l_cfbh, l_yzlb, icds, l_xmdm, l_xmmc, l_ypyl, l_yldw, l_ypyf, l_yytj,
    l_yytjcode, l_fzph, l_ypsl, l_sldw, l_bz,vyzsx: string;

begin
  DM_data.qry_pub.Close;
  DM_data.qry_pub.SQL.text := 'select * from sys_ypyf';
  DM_data.qry_pub.Open;
  result := True;
  icds := 'a';
  pass_i := 1;
  try
    qry_yz.First;
    while (not qry_yz.Eof) do
    begin
      if qry_yz.FieldByName('xmdm').AsString <> '' then
      begin
        l_yzlb := trim(qry_yz.FieldByName('lb').AsString);
        l_xmdm := trim(qry_yz.FieldByName('xmdm').AsString);
        l_xmmc := trim(qry_yz.FieldByName('xmmc').AsString);
        l_ypyl := trim(qry_yz.FieldByName('ypyl').AsString);
        l_yldw := trim(qry_yz.FieldByName('yldw').AsString);
        l_ypyf := trim(qry_yz.FieldByName('ypyf').AsString);
        l_yytj := trim(qry_yz.FieldByName('yytj').AsString);
        //ҽ������
        if trim(qry_yz.FieldByName('yzsx').AsString) = '����' then
        begin
          vyzsx := '0';
        end else
        begin
          vyzsx := '1';
        end;
        DM_data.qry_pub.Locate('mc', l_yytj, []);
        l_yytjcode := trim(DM_data.qry_pub.FieldByName('id').AsString);
        l_fzph := trim(qry_yz.FieldByName('fzph').AsString);
        if l_fzph='' then
          l_fzph:=l_xmdm;
        l_cfbh := trim(qry_yz.FieldByName('jyflbh').AsString);
        l_ypsl := trim(qry_yz.FieldByName('sl').AsString);
        l_sldw := trim(qry_yz.FieldByName('yldw').AsString);
        l_bz := trim(qry_yz.FieldByName('bz').AsString);
        if not ((l_yzlb = 'ҩƷ') or (l_yzlb = '��ҩ') or (l_yzlb = '��ҩ')) then
          break;
        if MDC_AddScreenDrug(PChar(IntToStr(pass_i)), pass_i, PChar(l_xmdm), PChar(l_xmmc), PChar(l_ypyl),
          PChar(l_yldw), PChar(l_ypyf), PChar(l_yytj), PChar(l_yytj), PChar(FormatDateTime('yyyy-MM-dd',frm_tjyz.cxDateEdit1.Value)),
          PChar(FormatDateTime('yyyy-MM-dd',frm_tjyz.cxDateEdit2.Value)),PChar(frm_func.func_getServerDate), PChar(l_fzph), PChar(vyzsx),'0',PChar(pub_ksdm),PChar(pub_ksmc),
           PChar(pub_czydm), PChar(pub_czyxm),'', PChar(l_ypsl), PChar(l_sldw),
          '', '0', '0', PChar(l_bz)) <> 1 then
        begin
          result := false;
          break;
        end;
        inc(pass_i);
      end;
      qry_yz.Next;
    end;
  except
    Result := False;
  end;
  result := true;
end;

{-------------------------------------------------------------------------------
  ������:    Tfrm_yzinput.yzxy
  ����:      yansghuai
  ����:      2016.03.02
  ����:      ��
  ����ֵ:    ��
-------------------------------------------------------------------------------}
procedure Tfrm_yzinput.yzxy;
var
  jy: boolean;
begin
  jy := false;
  qry_yz.Next;
  if not qry_yz.Eof then //�����ǰ��¼���м�¼���޸�
  begin
    qry_yz.Edit;
    grid_yzlr.SelectedIndex := 1;
  end
  else
  begin //��ǰ��¼����û�м�¼�����
    qry_yz.append;
    recno := ScrollBox4.VertScrollBar.Position;
    if grid_yzlr.CanFocus then
      grid_yzlr.SetFocus;
    ScrollBox4.VertScrollBar.Position := recno;
    grid_yzlr.SelectedIndex := 1;

  end;

  bcbz := true;
  qry_yz.DisableControls;
  qry_yz.First;
  DM_data.qry_pub.Close;
  DM_data.qry_pub.SQL.text := 'select top 1 * from dzbl_jysqd';
  try
    DM_data.qry_pub.Open;
  except
  end;
  if not DM_data.qry_pub.IsEmpty then
  begin
    jy := true;
  end;
  while not qry_yz.Eof do
  begin
    if (qry_yz.FieldByName('lb').AsString = '����') and
      (Trim(qry_yz.FieldByName('jyyb').AsString) = '')
      and (Trim(qry_yz.FieldByName('xmmc').AsString) <> '') and (jy = true) then
    begin
      showMessage('������Ŀ����ѡ����������!');
      qry_yz.EnableControls;
      Abort;
    end;

    //������֤
    if (qry_yz.FieldByName('yytj').AsString = '����') and
      (Trim(qry_yz.FieldByName('fzph').AsString) = '') then
    begin
      showMessage('����ҩƷ������з��飬�о���ҩƷû�з���!');
      recno := ScrollBox4.VertScrollBar.Position;
      grid_yzlr.SetFocus;
      ScrollBox4.VertScrollBar.Position := recno;
      grid_yzlr.SelectedIndex := 1;
      qry_yz.EnableControls;
      abort;
    end;
    if (qry_yz.FieldByName('lb').AsString = '��ҩ') and
      (Trim(qry_yz.FieldByName('fzph').AsString) = '')
      and (Trim(qry_yz.FieldByName('xmmc').AsString) <> '') then
    begin
      showMessage('��ҩ������з��������������в�ҩû�з�������봦������!');
      recno := ScrollBox4.VertScrollBar.Position;
      grid_yzlr.SetFocus;
      ScrollBox4.VertScrollBar.Position := recno;
      grid_yzlr.SelectedIndex := 1;
      qry_yz.EnableControls;
      abort;
    end;
    qry_yz.Next;
  end;
  //������ҩ��� --2011-11-23 jc
//  try
//    if (gi_passenabled = 1) and (qry_yz.RecordCount > 0) then
//      if not proc_save_pass(1, qry_yz, qry_yf) then
//        Exit;
//  except
//  end;

  
  //������ҩ���---------
//  try
//    if (gi_passenabled = 1) and (qry_yz.RecordCount > 0) then   // and (pass_bz)
//    begin
//      //if not proc_save_pass(33, qry_yz, qry_yf) then exit;
//      //PASS4
//      //���˻�����Ϣ����pass
//      if gi_PassEnabled = 1 then
//      begin
//        proc_crbrjbxxinpass;
//      end;
//      proc_AddMedCond; //��������б�
//      proc_AddScreenDrug; //����ҩƷ�б�
//      if not proc_save_pass4(1, qry_yz, qry_yf, pass_i-1) then exit; //ִ�����
//    end;
//  except
//  end;

 //������ҩ���---------
//      try
//        if (gi_passenabled = 1) and (qry_yz.RecordCount > 0) then   // and (pass_bz)
//        begin
//          //if not proc_save_pass(33, qry_yz, qry_yf) then exit;
//          //PASS4
//          //���˻�����Ϣ����pass
//          if gi_PassEnabled = 1 then
//          begin
//            proc_crbrjbxxinpass;
//          end;
//          proc_AddMedCond; //��������б�
//          proc_AddScreenDrug; //����ҩƷ�б�
//          if not proc_save_pass4(1, qry_yz, qry_yf, pass_i-1) then exit; //ִ�����
//        end;
//      except
//      end;

  //������ҩ���---------
  qry_yz.EnableControls;
end;

procedure Tfrm_yzinput.Button10Click(Sender: TObject);
begin
  DM_data.qry_pub.close;
  dm_data.qry_pub.sql.text := 'select * from lclj_bricd10 where zyh=' + '''' +
    zyh + '''';
  try
    DM_data.qry_pub.Open;
  except
  end;
  if dm_data.qry_pub.IsEmpty then
  begin
    Edit2.text := 'δ���ò��ֶ�ӦICD10����';
  end
  else
  begin
    Edit2.text := dm_data.qry_pub.FieldByName('icd_10').asstring;
  end;
  if qry_icd10.Active = false then
  begin
    qry_icd10.close;
    qry_icd10.sql.Text := 'select * from icd10';
    qry_icd10.Open;
  end;
  Panel8.Visible := true;
end;

procedure Tfrm_yzinput.Button11Click(Sender: TObject);
begin
  DM_data.qry_pub.close;
  DM_data.qry_pub.sql.text := 'delete from lclj_bricd10 where zyh=' + '''' + zyh
    + '''';
  DM_data.qry_pub.ExecSQL;
  DM_data.qry_pub.close;
  DM_data.qry_pub.sql.text := 'insert into lclj_bricd10 select ' + '''' + zyh +
    '''' +
    ',' + '''' + qry_icd10.FieldByName('jbbm').asstring + '''';
  DM_data.qry_pub.ExecSQL;
  DM_data.qry_pub.close;
  dm_data.qry_pub.sql.text := 'select * from lclj_bricd10 where zyh=' + '''' +
    zyh + '''';
  try
    DM_data.qry_pub.Open;
  except
  end;
  if dm_data.qry_pub.IsEmpty then
  begin
    Edit2.text := 'δ���ò��ֶ�ӦICD10����';
  end
  else
  begin
    Edit2.text := dm_data.qry_pub.FieldByName('icd_10').asstring;
  end;
  DM_data.qry_pub.close;
  DM_data.qry_pub.sql.text :=
    'select * from lclj_bricd10 a,icd10 b where a.icd_10=b.jbbm and zyh=' + ''''
    +
    zyh + '''';
  try
    DM_data.qry_pub.Open;
  except
  end;
  if not DM_data.qry_pub.IsEmpty then
  begin
    Edit3.text := Trim(DM_data.qry_pub.FieldByName('jbbm').asstring) + '|' +
      Trim(DM_data.qry_pub.FieldByName('jbmc').asstring);
  end
  else
  begin
    Edit3.text := '';
  end;
end;

procedure Tfrm_yzinput.Button12Click(Sender: TObject);
begin
  qry_icd10.Filtered := false;
  Panel8.Visible := false;
end;

procedure Tfrm_yzinput.Button13Click(Sender: TObject);
begin
  try
    frm_zysf_print_service.PrintLxd(sp_jbxx, qry_lxd);
    //  DM_data.qry_pub.Close;
    //  DM_data.qry_pub.SQL.text:='delete from BLOOD_test where APPLY_NUM='+#39+qry_lxd.FieldByName('APPLY_NUM').AsString+#39;
    //  DM_data.qry_pub.ExecSQL;
    DM_data.qry_pub.Close;
    DM_data.qry_pub.SQL.text := 'select * from BLOOD_test where apply_num=' + #39
      +
      qry_lxd.FieldByName('APPLY_NUM').AsString + #39;
    try
      DM_data.qry_pub.Open;
    except
    end;
    if DM_data.qry_pub.IsEmpty then
    begin
      DM_data.qry_pub.Close;
      DM_data.qry_pub.SQL.text := 'insert into BLOOD_test values(' + #39 +
        qry_lxd.FieldByName('APPLY_NUM').AsString + #39 + ',' +
        #39 + zyh + #39 + ',' + '1,0)';
      DM_data.qry_pub.ExecSQL;
    end
    else
    begin
      DM_data.qry_pub.Close;
      DM_data.qry_pub.SQL.text :=
        'update BLOOD_test set smallint=1 where apply_num=' + #39 +
        qry_lxd.FieldByName('APPLY_NUM').AsString + #39;
      DM_data.qry_pub.ExecSQL;
    end;
    //���°�ˢ��
    qry_lxd.Close;
    qry_lxd.SQL.Text :=
      'select a.*,c.*,b.BLOOD_TYPE_NAME  ,case Rh when ''1'' then ''��'' else' +
      '''��'' end Rh_Rh,isnull(d.smallint,0) dybz,convert(bit,a.sign) sign_1,convert(bit,a.cancel_flag) cancel_flag_1  from BLOOD_APPLY a,BLOOD_COMPONENT b,sys_ksdm c,BLOOD_test d where a.DEPT_CODE=c.dm and a.PATIENT_ID=' + #39
      +
      zyh + #39 + 'and a.BLOOD_TYPE=b.BLOOD_TYPE and a.APPLY_NUM*=d.APPLY_NUM';
    qry_lxd.Open;
  except
    Application.MessageBox('��ӡ����', '', MB_OK + MB_ICONINFORMATION);
  end;
end;

procedure Tfrm_yzinput.Button14Click(Sender: TObject);
var
  tcrq: string;
begin
  try
    if Trim(Edit4.text) <> '' then
    begin
      DM_data.qry_pub.close;
      DM_data.qry_pub.SQL.text :=
        'select * from  lclj_brlclj where zt=1 and zyh=' + '''' + zyh + '''';
      try
        DM_data.qry_pub.Open;
      except
      end;
      if DM_data.qry_pub.IsEmpty then
      begin
        Application.MessageBox('δ��·���У������˳���', '��ʾ', MB_OK +
          MB_ICONSTOP);
        Exit;
      end;
      DM_data.qry_pub.Close;
      DM_data.qry_pub.SQL.text :=
        'select max(rq) rq,count(*) ts from lclj_brljzx where zyh=' + '''' + zyh
        +
        '''';
      try
        DM_data.qry_pub.Open;
      except
      end;
      tcrq := DM_data.qry_pub.FieldByName('rq').AsString;
      DM_data.qry_pub.close;
      DM_data.qry_pub.SQL.text := 'update lclj_brlclj set zt=0 where zyh=' + ''''
        + zyh + '''';
      DM_data.qry_pub.ExecSQL;
      DM_data.qry_pub.close;
      DM_data.qry_pub.SQL.text := 'insert into lclj_brljtc select ' + '''' + zyh
        + '''' +
        ',' + '''' + tcrq + '''' + ',' + '''' + '�˳�ԭ��' + trim(edit4.text)
        +
        '''' + ',' + '''ֱ���˳�''';
      DM_data.qry_pub.ExecSQL;
      Application.MessageBox('�����Ѿ��ɹ��˳�·����', '��ʾ', MB_OK +
        MB_ICONINFORMATION);

    end
    else
    begin
      Application.MessageBox('����ԭ����Ϊ�գ�', '��ʾ', MB_OK +
        MB_ICONSTOP);
    end;

  except
    Application.MessageBox('�����˳�·��ʧ�ܣ�', '��ʾ', MB_OK +
      MB_ICONINFORMATION);

  end;
end;

procedure Tfrm_yzinput.btnPathPrtClick(Sender: TObject);
begin
  //���ô�ӡ����
  frm_zysf_print_service.printPathway(zyh);
end;

procedure Tfrm_yzinput.btnPrintJCSQDClick(Sender: TObject);
var
  yzid: string;
begin
  if not sp_cx_drjcxm.Active then
  begin
    Application.MessageBox('���Ȳ�ѯ��������뵥�ٴ�ӡ��', '����', MB_OK +
      MB_ICONINFORMATION);
    Exit;
  end;
  yzid := ',';
  sp_cx_drjcxm.First;
  while not sp_cx_drjcxm.eof do
  begin
    if sp_cx_drjcxm.FieldByName('xzbz').asboolean then
      yzid := yzid + sp_cx_drjcxm.FieldByName('id').AsString + ',';
    sp_cx_drjcxm.Next;
  end;
  if yzid = ',' then
  begin
    Application.MessageBox('����ѡ����Ҫ��ӡ����Ŀ��', '����', MB_OK +
      MB_ICONSTOP);
    Exit;
  end;

  frm_zysf_print_service.PrintJCSQD(zyh, yzid, dtp_jc.DateTime, chkJC.Checked);

  btnReadJCClick(Sender);
end;

procedure Tfrm_yzinput.btnPrintJYSQDClick(Sender: TObject);
var
  yzid: string;
begin
  sp_cx_drjyxm.First;
  yzid := ',';
  while not sp_cx_drjyxm.eof do
  begin
    if sp_cx_drjyxm.FieldByName('xzbz').asboolean = true then
    begin
      yzid := yzid + sp_cx_drjyxm.FieldByName('id').AsString + ',';
    end;
    sp_cx_drjyxm.Next;
  end;
  if yzid = ',' then
  begin
    Application.MessageBox('û��ѡ����Ҫ��ӡ����Ŀ��', '����', MB_OK +
      MB_ICONSTOP);
    Exit;
  end;
  
  frm_zysf_print_service.PrintJYSQD(zyh,yzid,DTP_JY.DateTime,ChkJY.Checked);

  sp_cx_drjyxm.close;
  sp_cx_drjyxm.Parameters.Refresh;
  sp_cx_drjyxm.Parameters.ParamByName('@zyh').Value := zyh;
  sp_cx_drjyxm.Parameters.ParamByName('@kssqrq').Value := DTP_JY.DateTime;
  sp_cx_drjyxm.Parameters.ParamByName('@bqdm').Value := pub_bqdm;
  sp_cx_drjyxm.Parameters.ParamByName('@czydm').Value := pub_czydm;
  sp_cx_drjyxm.Open;
end;

procedure Tfrm_yzinput.Button17Click(Sender: TObject);
var
  visitAddr: string;
  id: string;
begin
  if pub_yydm = '0003' then //�����ǿ�ҽԺ
  begin
    visitAddr := 'http://10.0.0.21:9000/default.aspx?HISID=' +
      trim(Edt_pass_tmh.text);
    WebBrowser1.Navigate(visitAddr);
  end
  else if (pub_yydm = '0012') or (pub_yydm='0229') then //��̨��ҽԺ
  begin
    if pub_yydm<>'0229' then
    begin
      id := Copy(trim(ComboBox2.text), 1, Pos('_', trim(ComboBox2.text)) - 1);
    end
    else
    begin
      id := 'zy'+Copy(trim(ComboBox2.text), 1, Pos('_', trim(ComboBox2.text)) - 1);
    end;
    DM_data.qry_pub.close;
    DM_data.qry_pub.SQL.text := 'select * from HIS_REPORT where rid=''' + id +
      '''';
    try
      DM_data.qry_pub.Open;
    except
    end;
    if DM_data.qry_pub.IsEmpty then
    begin
      ShowMessage('�˼�黹δ����鱨�棡����');
      Exit;
    end;
    visitAddr := DM_data.qry_pub.FieldByName('image_url').asstring;
    describes.Text :=
      TrimRight(DM_data.qry_pub.FieldByName('describes').asstring);
    diagnosis.Text :=
      TrimRight(DM_data.qry_pub.FieldByName('diagnosis').asstring);
    //    ShellExecute(Handle, pchar('open'), pchar(visitAddr), nil, nil,
    //      SW_SHOWNORMAL);
    WebBrowser1.Navigate(visitAddr);
  end
  else if pub_yydm = '0019' then // <<<<------����������ҽԺ(2014.6.17)
  begin
    id := Copy(trim(ComboBox2.text), 1, Pos('_', trim(ComboBox2.text)) - 1);
    if id = '' then
    begin
      Exit;
    end;
    DM_data.qry_pub.close;
    DM_data.qry_pub.SQL.text := 'select * from pacs_result where sqdh=''' + id +
      '''';
    try
      DM_data.qry_pub.Open;
    except
    end;
    if DM_data.qry_pub.IsEmpty then
    begin
      ShowMessage('�˼�黹δ����鱨�棡����');
      Exit;
    end;
    visitAddr := 'http://10.36.161.2:82/xds/index.php?appuser=1&type=hiscode1&value='
      + tmh + '&type2=hiscode2&value2 like ''%' + id + '%''';
    describes.Text := TrimRight(DM_data.qry_pub.FieldByName('jcms').asstring);
    diagnosis.Text := TrimRight(DM_data.qry_pub.FieldByName('jcjl').asstring);
    WebBrowser1.Navigate(visitAddr);
    ShellExecute(Handle, pchar('open'), pchar(visitAddr), nil, nil,
      SW_SHOWNORMAL);
  end
  else
  begin
    id := Copy(trim(ComboBox2.text), 1, Pos('_', trim(ComboBox2.text)) - 1);
    if id = '' then
    begin
      Exit;
    end;
    sp_pacs_jg.Close;
    sp_pacs_jg.Parameters.ParamByName('@tmh').Value := tmh;
    sp_pacs_jg.Parameters.ParamByName('@id').Value := id;
    sp_pacs_jg.Parameters.ParamByName('@lb').Value := 'zy';
    sp_pacs_jg.Open;
    visitAddr := sp_pacs_jg.FieldByName('addr').AsString;
    describes.Text := TrimRight(sp_pacs_jg.FieldByName('dsc').asstring);
    diagnosis.Text := TrimRight(sp_pacs_jg.FieldByName('diag').asstring);
    WebBrowser1.Navigate(visitAddr);
    ShellExecute(Handle, pchar('open'), pchar(visitAddr), nil, nil, SW_SHOWNORMAL);
  end;
end;

procedure Tfrm_yzinput.Button1Click(Sender: TObject);
begin
  yzxy;
  saveyz;
  //�����¼Ƶ�ʴ���
  qry_yz.First;
  while not qry_yz.Eof do
  begin
    if qry_yz.FieldByName('xmdm').AsString <> '' then
    begin
      sp_yzxmpx.Close;
      sp_yzxmpx.Parameters.ParamByName('@czydm').Value := pub_czydm;
      sp_yzxmpx.Parameters.ParamValues['@ksdm'] := pub_ksdm;
      sp_yzxmpx.Parameters.ParamByName('@xmdm').Value := qry_yz.FieldByName('xmdm').AsString;
      sp_yzxmpx.ExecProc;
    end;
    qry_yz.Next;
  end;
end;

procedure Tfrm_yzinput.Button2Click(Sender: TObject);
begin
  if (Button2.Caption = 'ʱ�����') and (ComboBox1.text = 'ȫ��') then
  begin
    sp_dryz.Filtered := False;
    sp_dryz.Filter := ' kdrq>=' + '''' + formatdatetime('yyyy-MM-dd',
      DateTimePicker1.DateTime) + ' 00:00:00' + ''''
      + ' and  kdrq<=' + '''' + formatdatetime('yyyy-MM-dd',
      DateTimePicker2.DateTime) + ' 23:59:59' + '''';
    sp_dryz.Filtered := True;
    Button2.Caption := 'ȡ������';
  end
  else if (Button2.Caption = 'ʱ�����') and (ComboBox1.text = '����') then
  begin
    sp_dryz.Filtered := False;
    sp_dryz.Filter := ' yzsx=''����'' and kdrq>=' + '''' +
      formatdatetime('yyyy-MM-dd', DateTimePicker1.DateTime) + ' 00:00:00' + ''''
      + ' and  kdrq<=' + '''' + formatdatetime('yyyy-MM-dd',
      DateTimePicker2.DateTime) + '  23:59:59' + '''';
    sp_dryz.Filtered := True;
    Button2.Caption := 'ȡ������';
  end
  else if (Button2.Caption = 'ʱ�����') and (ComboBox1.text = '��ʱ') then
  begin
    sp_dryz.Filtered := False;
    sp_dryz.Filter := ' yzsx=''��ʱ'' and kdrq>=' + '''' +
      formatdatetime('yyyy-MM-dd', DateTimePicker1.DateTime) + ' 00:00:00' + ''''
      + ' and  kdrq<=' + '''' + formatdatetime('yyyy-MM-dd',
      DateTimePicker2.DateTime) + '  23:59:59' + '''';
    sp_dryz.Filtered := True;
    Button2.Caption := 'ȡ������';
  end
  else
  begin
    Button2.Caption := 'ʱ�����';
    sp_dryz.Filtered := False;
  end;
  DBGridEh6.Columns[10].Width := DBGridEh6.Columns[10].Width + 1;
  DBGridEh6.Columns[10].Width := DBGridEh6.Columns[10].Width - 1;

end;

procedure Tfrm_yzinput.Button3Click(Sender: TObject);
begin
  if Button3.Caption = '�ȵ��ر���' then
  begin
    DM_data.qry_pub.close;
    DM_data.qry_pub.sql.text :=
      'select * from sys_ypdm where ypdm=''01000001000357''';
    try
      DM_data.qry_pub.Open;
    except
    end;

    if not DM_data.qry_pub.isempty then
    begin
      qry_yz.Insert;
      qry_yz.FieldByName('yzsx').Value := '��ʱ';
      qry_yz.FieldByName('lb').Value := 'ҩƷ';
      qry_yz.FieldByName('xmmc').Value :=
        trim(DM_data.qry_pub.FieldByName('ypmc').asstring);
      qry_yz.FieldByName('sl').Value := 1;
      qry_yz.FieldByName('czks').Value := pub_zyxyfdm;
      qry_yz.FieldByName('kdks').Value := yz_kdks;
      qry_yz.FieldByName('zyh').Value := zyh;
      qry_yz.FieldByName('tmh').Value := tmh;
      qry_yz.FieldByName('xmdm').Value := '01000001000357';
      qry_yz.FieldByName('dw').Value :=
        trim(DM_data.qry_pub.FieldByName('zxdw').asstring);
      qry_yz.FieldByName('ypdwid').Value :=
        DM_data.qry_pub.FieldByName('zydwid').AsInteger;
      qry_yz.FieldByName('ypbzbl').Value := 1;
      qry_yz.FieldByName('yplsj').Value :=
        DM_data.qry_pub.FieldByName('zylsj').AsFloat;
      qry_yz.FieldByName('ypcgj').Value :=
        DM_data.qry_pub.FieldByName('zypfj').AsFloat;
      qry_yz.FieldByName('ypyl').Value := 400;
      qry_yz.FieldByName('yldw').Value := 'U';
      qry_yz.FieldByName('yytj').Value := '����';
      qry_yz.FieldByName('ypyf').Value := '';
      qry_yz.FieldByName('yplb').Value := '';
      qry_yz.FieldByName('gg').Value := '400u:10ml';
      qry_yz.FieldByName('xyzbz').Value := 1;
      qry_yz.FieldByName('bz').Value := '����';

      qry_yz.Post;

      qry_yz.Append;
      recno := ScrollBox4.VertScrollBar.Position;
      grid_yzlr.SetFocus;
      ScrollBox4.VertScrollBar.Position := recno;
      grid_yzlr.SelectedIndex := 2;
    end;
  end
  else
  begin
    DM_data.qry_pub.Close;
    DM_data.qry_pub.SQL.text :=
      'select c.* from zyxyf_zycfzb a,zysf_zyfymx b,zyxyf_zycfmx c' +
      ' where a.zyh=b.zyh and a.fybz=0 and a.cfbh=b.cfbh and tssm = ''���ڷ�ҩ(��)''' +
      ' and a.cfbh=c.cfbh and a.zyh=' + '''' + zyh + '''';
    try
      DM_data.qry_pub.Open;
    except
    end;
    if not DM_data.qry_pub.IsEmpty then
    begin
      DM_data.qry_pub.First;
      while not DM_data.qry_pub.eof do
      begin
        qry_yz.Insert;
        qry_yz.FieldByName('yzsx').Value := '��ʱ';
        qry_yz.FieldByName('lb').Value := '����';
        qry_yz.FieldByName('xmmc').Value :=
          trim(DM_data.qry_pub.FieldByName('ypmc').asstring);
        qry_yz.FieldByName('sl').Value :=
          DM_data.qry_pub.FieldByName('ypsl').AsFloat;
        qry_yz.FieldByName('czks').Value := pub_zyxyfdm;
        qry_yz.FieldByName('kdks').Value := yz_kdks;
        qry_yz.FieldByName('zyh').Value := zyh;
        qry_yz.FieldByName('tmh').Value := tmh;
        qry_yz.FieldByName('xmdm').Value :=
          trim(DM_data.qry_pub.FieldByName('ypdm').asstring);
        qry_yz.FieldByName('dw').Value :=
          trim(DM_data.qry_pub.FieldByName('ypdw').asstring);
        qry_yz.FieldByName('ypdwid').Value :=
          DM_data.qry_pub.FieldByName('ypdwid').AsInteger;
        qry_yz.FieldByName('ypbzbl').Value :=
          DM_data.qry_pub.FieldByName('ypbzbl').AsFloat;
        qry_yz.FieldByName('yplsj').Value :=
          DM_data.qry_pub.FieldByName('ypdj').AsFloat;
        qry_yz.FieldByName('ypcgj').Value :=
          DM_data.qry_pub.FieldByName('kccgj').AsFloat;
        qry_yz.FieldByName('ypyl').Value :=
          DM_data.qry_pub.FieldByName('yl').AsFloat;
        qry_yz.FieldByName('yldw').Value :=
          DM_data.qry_pub.FieldByName('yldw').asstring;
        qry_yz.FieldByName('yytj').Value :=
          DM_data.qry_pub.FieldByName('yytj').asstring;
        qry_yz.FieldByName('ypyf').Value :=
          DM_data.qry_pub.FieldByName('yf').asstring;
        qry_yz.FieldByName('yplb').Value := '';
        qry_yz.FieldByName('gg').Value := '';
        qry_yz.FieldByName('xyzbz').Value := 0;
        qry_yz.FieldByName('bz').Value := '��Ժ��ҩ';
        qry_yz.Post;
        DM_data.qry_pub.Next;
      end;
      qry_yz.Append;
      recno := ScrollBox4.VertScrollBar.Position;
      grid_yzlr.SetFocus;
      ScrollBox4.VertScrollBar.Position := recno;
      grid_yzlr.SelectedIndex := 2;
    end;
  end;

  //sp_dryz.UpdateBatch( arall );

end;

procedure Tfrm_yzinput.Button4Click(Sender: TObject);
begin
  sp_dryz.Close;
  sp_dryz.Parameters.ParamByName('@zyh').Value := zyh;
  sp_dryz.Parameters.ParamByName('@yzsx').Value := '';
  sp_dryz.Open;
end;

procedure Tfrm_yzinput.Button5Click(Sender: TObject);
begin
  proc_show_xbs(trim(e_tmh.text), trim(DBEdit14.text), trim(DBEdit20.text),
    trim(DBEdit15.text));
end;

procedure Tfrm_yzinput.Button6Click(Sender: TObject);
begin
  if not sp_dryz.Active then
  begin
    sp_dryz.Close;
    sp_dryz.Parameters.ParamByName('@zyh').Value := zyh;
    sp_dryz.Parameters.ParamByName('@yzsx').Value := '';
    sp_dryz.Open;
  end;
  chyz;
end;

procedure Tfrm_yzinput.Button7Click(Sender: TObject);
begin
  if not sp_dryz.Active then
  begin
    sp_dryz.Close;
    sp_dryz.Parameters.ParamByName('@zyh').Value := zyh;
    sp_dryz.Parameters.ParamByName('@yzsx').Value := '';
    sp_dryz.Open;
  end;
  zryz;
end;

procedure Tfrm_yzinput.Button8Click(Sender: TObject);
begin
  if not sp_dryz.Active then
  begin
    sp_dryz.Close;
    sp_dryz.Parameters.ParamByName('@zyh').Value := zyh;
    sp_dryz.Parameters.ParamByName('@yzsx').Value := '';
    sp_dryz.Open;
  end;
  czyz;
end;

procedure Tfrm_yzinput.Button9Click(Sender: TObject);
begin
  Application.OnMessage := nil;
  DM_data.qry_pub.close;
  DM_data.qry_pub.SQL.text := 'select * from lclj_brljzx_mx where zyh=' + '''' +
    zyh + '''';
  try
    DM_data.qry_pub.Open;
  except
  end;
  if DM_data.qry_pub.IsEmpty then
  begin
    Application.MessageBox('��δ����·��������ִ��', '����', MB_OK +
      MB_ICONWARNING);
    exit;
  end
  else
  begin
    try
      application.createform(Tfrm_lcljzx, frm_lcljzx);
      frm_lcljzx.v_zyh := zyh;
      frm_lcljzx.showmodal;
    finally
      frm_lcljzx.free;
    end;
  end;
end;

procedure Tfrm_yzinput.ChangePharnacyClick(Sender: TObject);
begin
  frm_func.proc_xzyf;
  xyfBeforeChange := pub_zyxyfdm;
  if (yzlb = 'ҩƷ') or (yzlb = 'ҩһ') then
  begin
    pub_zyxyfdm := func_Show_yfxz('02'); //02 ��ҩ��
    if pub_zyxyfdm = '' then
    begin
      Application.MessageBox('��ʾ:��ѡ����ҩ��!', '��ʾ', 16);
      Exit;
    end;
  end
  else
  if (yzlb = '��ҩ') then
  begin
    prv_cyfdm := func_Show_yfxz('04');
  end;
  
end;

procedure Tfrm_yzinput.ComboBox1Change(Sender: TObject);
begin
  if ComboBox1.text = 'ȫ��' then
  begin
    sp_dryz.Filtered := False;
  end;
  if ComboBox1.text = '����' then
  begin
    sp_dryz.Filtered := False;
    sp_dryz.Filter := 'yzsx=''����''';
    sp_dryz.Filtered := True;
  end;
  if ComboBox1.text = '��ʱ' then
  begin
    sp_dryz.Filtered := False;
    sp_dryz.Filter := 'yzsx=''��ʱ''';
    sp_dryz.Filtered := True;
  end;
  if ComboBox1.text = 'δֹͣҽ��' then
  begin
    sp_dryz.Filtered := False;
    sp_dryz.Filter := 'yzsx=''����'' and tzbz=0';
    sp_dryz.Filtered := True;
  end;
  if ComboBox1.text = '����ҽ��' then
  begin
    sp_dryz.Filtered := False;
    sp_dryz.Filter := 'kdys=' + '''' + pub_czydm + '''';
    sp_dryz.Filtered := True;
  end;
  DBGridEh6.Columns[10].Width := DBGridEh6.Columns[10].Width + 1;
  DBGridEh6.Columns[10].Width := DBGridEh6.Columns[10].Width - 1;
end;

procedure Tfrm_yzinput.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
var
  p_return: string;
begin
  if qry_yz.Active and (
    (qry_yz.RecordCount > 1) or (
    (qry_yz.RecordCount = 1) and (Trim(qry_yz.FieldByName('xmmc').asstring) <>
    ''))
    ) then
  begin
    case Application.MessageBox('��δҽ��δ�ύ���Ƿ񱣴���˳���', 'ҽ��',
      MB_OKCANCEL + MB_ICONQUESTION) of
      IDOK:
        begin
          Button1.Click;
          p_return := sp_yzup_list.Parameters.ParamByName('@sczt').Value;
          if p_return = '1' then
          begin
            CanClose := True;
            Self.OnCloseQuery := nil;
            Self.close;
          end
          else
          begin
            CanClose := False;
          end;
        end;
      IDCANCEL:
        begin
          CanClose := False;
        end;
    end;
  end;
end;

procedure Tfrm_yzinput.FormCreate(Sender: TObject);
begin
  sfjrdytlj := '0';
  dbgrideh4.Height := 4000;
  scrollbox1.VertScrollBar.Position := 0;
  scrollbox1.HorzScrollBar.Position := 0;
  scrollbox2.VertScrollBar.Position := 0;
  scrollbox2.HorzScrollBar.Position := 0;
  scrollbox3.VertScrollBar.Position := 0;
  scrollbox3.HorzScrollBar.Position := 0;
  dbgrideh4.Width := 1550;
  dbgrideh4.Top := 0;
  dbgrideh4.Left := 0;
  dbgrideh1.Height := 4000;
  dbgrideh1.Width := 1100;
  dbgrideh1.Top := 0;
  dbgrideh1.Left := 0;
  dbgrideh3.Height := 4000;
  dbgrideh3.Width := 1100;
  dbgrideh3.Top := 0;
  dbgrideh3.Left := 0;
  QuickRep1.Visible := False;
  QuickRep2.Visible := False;
  QuickRep3.Visible := False;
  QuickRep4.Visible := False;
  //------2011-11-23-jc ������ҩ��ʼ��------------
//  try
//    if LoadPassDll then
//    begin
//      proc_csh(pub_ksdm, pub_ksmc, pub_czydm, pub_czyxm);
//      MedicomPass := TMedicomPass.Create(pub_czydm, pub_czyxm, pub_ksdm,
//        pub_ksmc, true);
//    end
//    else
//      gi_passenabled := 0;
//  except
//    gi_passenabled := 0;
//  end;

   
  //Application.OnMessage := OnMouseWheel_yzzx;
  //  grid_yzlr.Height:=scrollbox4.Height-1;
  //  grid_yzlr.width:=scrollbox4.width-1;
  Application.OnMessage := frm_yzinput.OnMouseWheel_yzlr;

  //for ����pacs����ͼ��Ĳ鿴 ע�͵��޷��鿴
  Set8087CW(Longword($133F));
end;

procedure Tfrm_yzinput.FormDeactivate(Sender: TObject);
begin
  Application.OnMessage := nil;
end;

procedure Tfrm_yzinput.FormDestroy(Sender: TObject);
begin
  if Assigned(frm_yzjcbw) then
    FreeAndNil(frm_yzjcbw);
end;

procedure Tfrm_yzinput.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

  if key = vk_f1 then
    ZZ.ActivePageIndex := 0;
  if key = vk_f2 then
    ZZ.ActivePageIndex := 1;
  if key = vk_f3 then
    ZZ.ActivePageIndex := 2;
end;

procedure Tfrm_yzinput.FormResize(Sender: TObject);
begin
  scrollbox1.Width := self.Width - 10;
  //dbgrideh4.Width := 1500;
  dbgrideh3.Width := 1100;
  dbgrideh1.Width := 1100;
  SetGrid;
end;

procedure Tfrm_yzinput.bt_lsyzClick(Sender: TObject);
begin
  //������ʷҽ��ǰ�����ѱ༭ҽ��
  if ds_yz.State in [dsedit, dsinsert] then
  begin
    dm_data.ado_mydata.BeginTrans;
    try
      qry_yz.UpdateBatch();
      dm_data.ado_mydata.CommitTrans;
      scbz := 0;
    except
      dm_data.ado_mydata.RollbackTrans;
    end;
  end;
  if sp_jbxx.Active then
  begin
    frm_bylsyz := Tfrm_bylsyz.Create(self);
    try
      frm_bylsyz.cxzyh := zyh;
      frm_bylsyz.cxtmh := sp_jbxx.FieldByName('tmh').AsString;
      frm_bylsyz.cxbch := sp_jbxx.FieldByName('bch').AsString;
      frm_bylsyz.edit1.Text := brxm;
      frm_bylsyz.sp_yzmx.close;
      frm_bylsyz.sp_yzmx.parameters.parambyname('@zyh').value :=
        sp_jbxx.FieldByName('zyh').AsString;
      frm_bylsyz.sp_yzmx.open;
      frm_bylsyz.qrlabel12.Caption := sp_jbxx.FieldByName('brxm').AsString;
      frm_bylsyz.QRL_bch.Caption := sp_jbxx.FieldByName('bch').AsString;
      ;
      frm_bylsyz.QRL_tmh.Caption := sp_jbxx.FieldByName('tmh').AsString;
      frm_bylsyz.QRL_dysj.Caption := '��ӡʱ��:' +
        FormatDatetime('yyyy��mm��dd�� HHʱMM��SS��', frm_func.curr_date);
      frm_bylsyz.rep_dryphz.Prepare;
      frm_bylsyz.QRL_ym.Caption := '��' +
        IntToStr(frm_bylsyz.rep_dryphz.Printer.PageCount) + 'ҳ';
      //      frm_bylsyz.rep_dryphz.PrinterSettings.PrinterIndex:=printer.Printers.IndexOf('zxdprint');
      frm_bylsyz.rep_dryphz.Preview;
    finally
      frm_bylsyz.Free;
    end;
  end
  else
    application.MessageBox('û�в�����Ϣ', '��ʾ', 0 + 48);
end;

procedure Tfrm_yzinput.Edit1Change(Sender: TObject);
begin
  if trim(Edit1.text) <> '' then
  begin
    qry_icd10.Filtered := false;
    qry_icd10.Filter := 'jbbm like ''%' + Edit1.text + '%'' or jbmc like ''%' +
      Edit1.text + '%'' or pybm like ''%' + Edit1.text + '%''';
    qry_icd10.Filtered := true;
  end
  else
  begin
    qry_icd10.Filtered := false;
  end;
end;

procedure Tfrm_yzinput.Edit2KeyPress(Sender: TObject; var Key: Char);
var
  ls_cxyz: string;
begin
  if key = #13 then
  begin
    sp_cx_yp_yz.Close;
    sp_cx_yp_yz.Parameters.ParamValues['@pym'] := ls_cxyz;
    sp_cx_yp_yz.Parameters.ParamValues['@ksdm'] := pub_zyxyfdm;
    sp_cx_yp_yz.Parameters.ParamValues['@jsfs'] := '1';
    sp_cx_yp_yz.Parameters.ParamValues['@ls'] := '1';
    sp_cx_yp_yz.Open;
    if sp_cx_yp_yz.RecordCount >= 1 then
    begin
      grid_yz.Visible := true;
      grid_yz.SetFocus;
    end;

  end;
end;

procedure Tfrm_yzinput.DBEdit7Exit(Sender: TObject);
begin
  if qry_yz.State in [dsedit, dsinsert] then
    if qry_yz.FieldByName('sl').AsFloat <= 0 then
    begin
      application.MessageBox('���������������0!', '��ʾ��Ϣ', 0 + 16);
    end;
end;

procedure Tfrm_yzinput.DBGridEh1ColWidthsChanged(Sender: TObject);
begin
  if sp_zxjl_cq.Active then
  begin
    if sp_zxjl_cq.RecordCount < 1000 then
      createrect(myrect_zx_cq, sp_zxjl_cq, dbgrideh1, 5, 6, 11);
  end;

end;

procedure Tfrm_yzinput.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
var
  i: integer;
  myrect1: Trect;
begin
  if Trim(sp_zxjl_cq.FieldByName('zhhsmc').AsString) <> '' then
  begin
    DBGridEh1.Canvas.Font.Color := $004F1DD3;
  end
  else
  begin
    DBGridEh1.Canvas.Font.Color := clBlack;
  end;

  if trim(sp_zxjl_cq.fieldbyname('fzph').asstring) <> '' then
  begin
    DBGridEh1.canvas.brush.color := $00E2BC6D;
    i := findinarray(myrect_zx_cq, sp_zxjl_cq.fieldbyname('fzph').asstring);
    DBGridEh1.Canvas.pen.color := $00E2BC6D;
    DBGridEh1.Canvas.MoveTo(myrect_zx_cq[i].left + 20, myrect_zx_cq[i].top);
    DBGridEh1.Canvas.LineTo(myrect_zx_cq[i].left, myrect_zx_cq[i].Bottom);
    DBGridEh1.canvas.Rectangle(myrect_zx_cq[i].left, myrect_zx_cq[i].top,
      myrect_zx_cq[i].right, myrect_zx_cq[i].bottom);
    DBGridEh1.Canvas.pen.color := clred;
    DBGridEh1.Canvas.MoveTo(myrect_zx_cq[i].left + 20, myrect_zx_cq[i].top);
    DBGridEh1.Canvas.LineTo(myrect_zx_cq[i].left, myrect_zx_cq[i].Bottom);
    with DBGridEh1.Canvas do
    begin
      moveto(myrect_zx_cq[I].gleft, myrect_zx_cq[i].Gtop);
      lineto(myrect_zx_cq[I].gright, myrect_zx_cq[I].gtop);
      lineto(myrect_zx_cq[I].gright, myrect_zx_cq[I].gbottom);
      lineto(myrect_zx_cq[I].gleft, myrect_zx_cq[I].gbottom);
      lineto(myrect_zx_cq[I].gleft, myrect_zx_cq[i].Gtop);
    end;
    myrect1.Left := myrect_zx_cq[i].left;
    myrect1.top := myrect_zx_cq[i].top;
    myrect1.right := myrect_zx_cq[i].right;
    myrect1.bottom := myrect_zx_cq[i].bottom;
    DBGridEh1.Canvas.TextOut(myrect_zx_cq[i].left + 20,
      myrect_zx_cq[i].top + round(myrect_zx_cq[i].height * ((myrect_zx_cq[i].sl
      - 0.5) / 2)), myrect_zx_cq[i].tj + #13 + myrect_zx_cq[i].yf);
  end;

  DBGridEh1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure Tfrm_yzinput.DBGridEh2DblClick(Sender: TObject);
begin
  Proc_Seek_yzzxjl(qry_dj.FieldByName('tmh').AsString,
    qry_dj.FieldByName('zyh').AsString, qry_dj.FieldByName('brxm').AsString)
end;

procedure Tfrm_yzinput.DBGridEh2Exit(Sender: TObject);
begin
  DBGridEh2.Visible := False;
end;

procedure Tfrm_yzinput.DBGridEh2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_RETURN then
    Proc_Seek_yzzxjl(qry_dj.FieldByName('tmh').AsString,
      qry_dj.FieldByName('zyh').AsString, qry_dj.FieldByName('brxm').AsString)
  else if key = VK_ESCAPE then
    edt_tmh.SetFocus;
end;

procedure Tfrm_yzinput.DBGridEh3ColWidthsChanged(Sender: TObject);
begin
  if sp_zxjl_ls.Active then
  begin
    if sp_zxjl_ls.RecordCount < 500 then
      createrect(myrect_zx_ls, sp_zxjl_ls, dbgrideh3, 7, 8, 9);
  end;
end;

procedure Tfrm_yzinput.DBGridEh3DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
var
  i: integer;
  myrect1: Trect;
begin
  if sp_zxjl_ls.RecordCount < 500 then
  begin
    if Trim(sp_zxjl_ls.FieldByName('gysj').AsString) <> '' then
    begin
      DBGridEh3.Canvas.Font.Color := $004F1DD3;
    end
    else
    begin
      DBGridEh3.Canvas.Font.Color := clBlack;
    end;
    if trim(sp_zxjl_ls.fieldbyname('fzph').asstring) <> '' then
    begin
      DBGridEh3.canvas.brush.color := $00E2BC6D;
      i := findinarray(myrect_zx_ls, sp_zxjl_ls.fieldbyname('fzph').asstring);
      DBGridEh3.Canvas.pen.color := $00E2BC6D;
      DBGridEh3.Canvas.MoveTo(myrect_zx_ls[i].left + 20, myrect_zx_ls[i].top);
      DBGridEh3.Canvas.LineTo(myrect_zx_ls[i].left, myrect_zx_ls[i].Bottom);
      DBGridEh3.canvas.Rectangle(myrect_zx_ls[i].left, myrect_zx_ls[i].top,
        myrect_zx_ls[i].right, myrect_zx_ls[i].bottom);
      DBGridEh3.Canvas.pen.color := clred;
      DBGridEh3.Canvas.MoveTo(myrect_zx_ls[i].left + 20, myrect_zx_ls[i].top);
      DBGridEh3.Canvas.LineTo(myrect_zx_ls[i].left, myrect_zx_ls[i].Bottom);
      with DBGridEh3.Canvas do
      begin
        moveto(myrect_zx_ls[I].gleft, myrect_zx_ls[i].Gtop);
        lineto(myrect_zx_ls[I].gright, myrect_zx_ls[I].gtop);
        lineto(myrect_zx_ls[I].gright, myrect_zx_ls[I].gbottom);
        lineto(myrect_zx_ls[I].gleft, myrect_zx_ls[I].gbottom);
        lineto(myrect_zx_ls[I].gleft, myrect_zx_ls[i].Gtop);
      end;
      myrect1.Left := myrect_zx_ls[i].left;
      myrect1.top := myrect_zx_ls[i].top;
      myrect1.right := myrect_zx_ls[i].right;
      myrect1.bottom := myrect_zx_ls[i].bottom;
      DBGridEh3.Canvas.TextOut(myrect_zx_ls[i].left + 20,
        myrect_zx_ls[i].top + round(myrect_zx_ls[i].height * ((myrect_zx_ls[i].sl
        - 0.5) / 2)), myrect_zx_ls[i].tj + #13 + myrect_zx_ls[i].yf);
    end;
    DBGridEh3.DefaultDrawColumnCell(Rect, DataCol, Column, State);
  end;
end;

procedure Tfrm_yzinput.DBGridEh4CellClick(Column: TColumnEh);
begin
  DBGrideh4.Options := DBGrideh4.Options + [dgrowselect]; //����ѡ��
end;

procedure Tfrm_yzinput.DBGridEh4ColWidthsChanged(Sender: TObject);
begin
  if sp_dryz.Active then
  begin
        if sp_dryz.RecordCount < 800 then
        begin
          createrect(myrect_cx, sp_dryz, dbgrideh4, 10, 11, 16);
        end;
  end;

end;

procedure Tfrm_yzinput.DBGridEh4DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
var
  i: integer;
  myrect1: Trect;

begin
  if sP_dryz.RecordCount < 1000 then
  begin
    try
      if not sP_dryz.fieldbyname('zxbz').asboolean then
        DBGridEh4.Canvas.Brush.Color := clSkyBlue;
      if trim(sP_dryz.fieldbyname('tzfs').asstring) = '�޸�' then
      begin
        DBGridEh4.Canvas.Font.Color := clBlue;
      end;

      if (sP_dryz.fieldbyname('tzbz').AsBoolean = true) then
      begin
        if (pos('�ƻ�', trim(sP_dryz.fieldbyname('tzfs').asstring)) <= 0) then
          DBGridEh4.Canvas.Font.Color := $004F1DD3;
      end;

      if ((Pos('Ƥ��', trim(sP_dryz.FieldByName('xmmc').AsString)) > 0)
        or (Pos('����', trim(sP_dryz.FieldByName('xmmc').AsString)) > 0)) and
        ((Pos('+', trim(sP_dryz.FieldByName('xmmc').AsString)) > 0) or
        (Pos('��', trim(sP_dryz.FieldByName('xmmc').AsString)) > 0)) then
      begin
        DBGridEh4.Canvas.Brush.Color := clRed;
        DBGridEh4.Canvas.Font.Color := clBlack;
      end;

      if trim(sp_dryz.fieldbyname('fzph').asstring) <> '' then
      begin
        DBGridEh4.canvas.brush.color := $00E2BC6D;
        i := findinarray(myrect_cx, sp_dryz.fieldbyname('fzph').asstring);
        DBGridEh4.Canvas.pen.color := $00E2BC6D;

        DBGridEh4.Canvas.MoveTo(myrect_cx[i].left + 20, myrect_cx[i].top);
        DBGridEh4.Canvas.LineTo(myrect_cx[i].left, myrect_cx[i].Bottom);
        if trim(sP_dryz.FieldByName('lb').AsString) <> '��ҩ' then
          DBGridEh4.canvas.Rectangle(myrect_cx[i].left, myrect_cx[i].top,
            myrect_cx[i].right, myrect_cx[i].bottom);
        DBGridEh4.Canvas.pen.color := clred;
        if trim(sP_dryz.FieldByName('lb').AsString) <> '��ҩ' then //
        begin
          DBGridEh4.Canvas.MoveTo(myrect_cx[i].left + 20, myrect_cx[i].top);
          DBGridEh4.Canvas.LineTo(myrect_cx[i].left, myrect_cx[i].Bottom);
        end;

        with DBGridEh4.Canvas do
        begin
          moveto(myrect_cx[I].gleft, myrect_cx[i].Gtop);
          lineto(myrect_cx[I].gright, myrect_cx[I].gtop);
          lineto(myrect_cx[I].gright, myrect_cx[I].gbottom);
          lineto(myrect_cx[I].gleft, myrect_cx[I].gbottom);
          lineto(myrect_cx[I].gleft, myrect_cx[i].Gtop);
        end;
        myrect1.Left := myrect_cx[i].left;
        myrect1.top := myrect_cx[i].top;
        myrect1.right := myrect_cx[i].right;
        myrect1.bottom := myrect_cx[i].bottom;
        if trim(sP_dryz.FieldByName('lb').AsString) <> '��ҩ' then
          DBGridEh4.Canvas.TextOut(myrect_cx[i].left + 20,
            myrect_cx[i].top + round(myrect_cx[i].height * ((myrect_cx[i].sl -
            0.5) / 2)), myrect_cx[i].tj + #13 + myrect_cx[i].yf);
      end;
      if pub_yydm = '0046' then
      begin
        if (sP_dryz.fieldbyname('kdrq').AsDateTime <
          sP_dryz.fieldbyname('xgrq').AsDateTime) and
          (hoursbetween(sP_dryz.fieldbyname('kdrq').AsDateTime,
          sP_dryz.fieldbyname('xgrq').AsDateTime) > ktqsj) then
        begin
          DBGridEh4.Canvas.Brush.Color := clOlive;
          DBGridEh4.Canvas.Font.Color := clBlack;
        end;
      end;

      (Sender as TDbGridEh).DefaultDrawColumnCell(Rect, DataCol, Column, State);
    except

    end;
  end;
end;

procedure Tfrm_yzinput.DBGridEh4Enter(Sender: TObject);
begin
  Application.OnMessage := OnMouseWheel_yzzx;
end;

procedure Tfrm_yzinput.DBGridEh4Exit(Sender: TObject);
begin
  Application.OnMessage := nil;
end;

procedure Tfrm_yzinput.DBGridEh5Exit(Sender: TObject);
begin
  DBGridEh5.Visible := False;
end;

procedure Tfrm_yzinput.DBGridEh5KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    qry_yz.Edit;
    qry_yz.fieldbyname('xmmc').value :=
      Trim(qry_qtyzxm.FieldByName('��Ŀ����').AsString);
    qry_yz.Post;
    //grid_yzlr.Columns[2].DisplayText:=Trim(qry_qtyzxm.FieldByName('��Ŀ����').AsString);
    recno := ScrollBox4.VertScrollBar.Position;

    grid_yzlr.SetFocus;
    ScrollBox4.VertScrollBar.Position := recno;
    xminyz;
    //grid_yzlr.SelectedIndex := 7;

  end
  else if Key = #27 then
  begin
    recno := ScrollBox4.VertScrollBar.Position;
    grid_yzlr.SetFocus;
    ScrollBox4.VertScrollBar.Position := recno;
  end;

end;

procedure Tfrm_yzinput.DBGridEh6ColWidthsChanged(Sender: TObject);
var
  i: Integer;
begin
  for I := 0 to DBGridEh6.Columns.Count - 1 do
  begin
    DBGridEh4.Columns[i].Width := DBGridEh6.Columns[i].Width;
  end;
end;

procedure Tfrm_yzinput.DBGridEh7ColWidthsChanged(Sender: TObject);
var
  i: Integer;
begin
  for I := 0 to DBGridEh7.Columns.Count - 1 do
  begin
    grid_yzlr.Columns[i].Width := DBGridEh7.Columns[i].Width;
  end;
end;

procedure Tfrm_yzinput.yzinypfymx(zyh, ypid, xmid, clid, ph: string);
//д��ҽ����ϸ��ҩƷ��ϸ��������Ŀ��ϸ
begin
  if ypid <> '' then
  begin
    qry_ypyz.Close;
    qry_ypyz.SQL.Clear;
    qry_ypyz.SQL.Text := 'insert into zybl_zyyz_ypmx select zyh,id,' + #39 +
      ph + #39 + ',xmdm,ypdwid,dw,ypbzbl,' +
      'sl,yplsj from zybl_zyyz where zyh=' + #39 + zyh + #39 +
      ' and zxbz=0 and tzbz=0 and zfbz=0 and lb=' + #39 + 'ҩƷ' + #39 +
      ' and id in (' + ypid + ')';
  end;

  if clid <> '' then
  begin
    qry_ypyz.Close;
    qry_ypyz.SQL.Clear;
    qry_ypyz.SQL.Text := 'insert into zybl_zyyz_clmx select zyh,id,' + #39 +
      ph + #39 + ',xmdm,ypdwid,dw,ypbzbl,' +
      'sl,yplsj from zybl_zyyz where zyh=' + #39 + zyh + #39 +
      ' and zxbz=0 and tzbz=0 and zfbz=0 and lb=' + #39 + '����' + #39 +
      ' and id in (' + clid + ')';
  end;

  if xmid <> '' then
  begin
    qry_ypyz.Close;
    qry_ypyz.SQL.Clear;
    qry_ypyz.SQL.Text :=
      'insert into zybl_zyyz_fymx(yzid,tmh,zyh,ph,kdks,czks,kdys,fydm,fysl,fyje,zkje,ssje,zfje) select a.id,a.tmh,a.zyh,' +
      quotedstr(ph) +
      ' ph,a.kdks,a.czks,a.kdys,b.fydm,a.sl,0 fyje,0 zkje,0 ssje,0 zfje from zybl_zyyz a join sys_yzxm b on a.xmdm=b.xmdm where len(a.xmdm)=4 and a.id in (' + xmid
      + ')';
  end;
end;

procedure Tfrm_yzinput.cxButton10Click(Sender: TObject);
begin
  //inherited;
 MenuItem17.Click;
end;

procedure Tfrm_yzinput.cxButton11Click(Sender: TObject);
begin
 // inherited;
MenuItem20.Click;
end;

procedure Tfrm_yzinput.cxButton1Click(Sender: TObject);
var
  v_count: Integer;
  jy: boolean;
begin
  jy := False;
  v_count := 0; //����pacs�ӿڣ�2014.6.17��

  Application.OnMessage := nil;
  qry_yz.Next;
  if not qry_yz.Eof then //�����ǰ��¼���м�¼���޸�
  begin
    qry_yz.Edit;
    grid_yzlr.SelectedIndex := 1;
  end
  else
  begin //��ǰ��¼����û�м�¼�����
    qry_yz.append;
    recno := ScrollBox4.VertScrollBar.Position;
    grid_yzlr.SetFocus;
    ScrollBox4.VertScrollBar.Position := recno;
    grid_yzlr.SelectedIndex := 1;
  end;
  //----ҽ���ύ����----
  qry_yz.DisableControls;
  qry_yz.First;
  DM_data.qry_pub.Close;
  DM_data.qry_pub.SQL.text := 'select top 1 * from dzbl_jysqd';
  try
    DM_data.qry_pub.Open;
  except
  end;
  if not DM_data.qry_pub.IsEmpty then
  begin
    jy := true;
  end;
  while not qry_yz.Eof do
  begin

    if (qry_yz.FieldByName('lb').AsString = '����') and
      (Trim(qry_yz.FieldByName('jyyb').AsString) = '') and
      (Trim(qry_yz.FieldByName('xmmc').AsString) <> '') and (jy = true) then
    begin
      showMessage('������Ŀ����ѡ����������!');
      qry_yz.EnableControls;
      Abort;
    end;
    //������֤
    if (qry_yz.FieldByName('yytj').AsString = '����') and
      (Trim(qry_yz.FieldByName('fzph').AsString) = '') then
    begin
      showMessage('����ҩƷ������з��飬�о���ҩƷû�з���!');
      recno := ScrollBox4.VertScrollBar.Position;
      grid_yzlr.SetFocus;
      ScrollBox4.VertScrollBar.Position := recno;
      grid_yzlr.SelectedIndex := 1;
      qry_yz.EnableControls;
      abort;
    end;
    if (qry_yz.FieldByName('lb').AsString = '��ҩ') and
      (Trim(qry_yz.FieldByName('fzph').AsString) = '')
      and (Trim(qry_yz.FieldByName('xmmc').AsString) <> '') then
    begin
      showMessage('��ҩ������з��������������в�ҩû�з�������봦������!');
      recno := ScrollBox4.VertScrollBar.Position;
      grid_yzlr.SetFocus;
      ScrollBox4.VertScrollBar.Position := recno;
      grid_yzlr.SelectedIndex := 1;
      qry_yz.EnableControls;
      abort;
    end;
    //  <<<<<-----���ؽӿڼ������(2014.6.17)
    if qry_yz.FieldByName('lb').AsString = '���' then
    begin
      v_count := v_count + 1;
    end;
    //  ------->>>>>

    qry_yz.Next;
  end;

  //  <<<<<------����ҽԺpacs����ж�(2014.6.16)
  if (pub_yydm = '0019') then
  begin
    if v_count > 0 then
    begin
      DM_data.qry_pub.Close;
      DM_data.qry_pub.SQL.Text :=
        'select * from sys_kyh_xbs where convert(date,czrq,102) = convert(date,getdate(),102) and czrq=(select max(czrq) from sys_kyh_xbs where tmh=''' + tmh
        + ''')';
      try
        DM_data.qry_pub.Open;
      except
      end;
      if (DM_data.qry_pub.RecordCount <= 0) or (trim(DM_data.qry_pub['nr']) = '')
        then
      begin
        Application.MessageBox('��⵽ҽ�����м����Ŀ�������ֲ�ʷ��¼�벡���ٴ�֢״���Թ�ҽ�����Ҳ���', '��ʾ', MB_OK);
        Button5.Click;
        Abort;
      end;
    end;
  end;
  //  ----->>>>>>

    //������ҩ��� --2011-11-23 jc
//  try
//    if (gi_passenabled = 1) and (qry_yz.RecordCount > 0) then
//      if not proc_save_pass(1, qry_yz, qry_yf) then
//        Exit;
//  except
//  end;
  //------------------------2011-11-23 -----------------------------
  qry_yz.EnableControls;
  saveyz_tj;
  //�����¼Ƶ�ʴ���
  qry_yz.First;
  while not qry_yz.Eof do
  begin
    if qry_yz.FieldByName('xmdm').AsString <> '' then
    begin
      sp_yzxmpx.Close;
      sp_yzxmpx.Parameters.ParamByName('@czydm').Value := pub_czydm;
      sp_yzxmpx.Parameters.ParamValues['@ksdm'] := pub_ksdm;
      sp_yzxmpx.Parameters.ParamByName('@xmdm').Value := qry_yz.FieldByName('xmdm').AsString;
      sp_yzxmpx.ExecProc;
    end;
    qry_yz.Next;
  end;

  try
    Application.CreateForm(Tfrm_tjyz, frm_tjyz);
    frm_tjyz.brxm := brxm;
    frm_tjyz.tmh := tmh;
    frm_tjyz.zyh := zyh;
    frm_tjyz.Caption := '����ҽ���ύ ( ��ǰ���ˣ�����:' + tmh + '  ����: ' +
      trim(brxm) + ' )';
    frm_tjyz.Top := 80;
    frm_tjyz.Left := 1;
    frm_tjyz.sfxse := '';
    frm_tjyz.ShowModal;
  finally
    frm_tjyz.Free;
  end;
end;

procedure Tfrm_yzinput.cxButton2Click(Sender: TObject);
begin
  MenuItem1.click;
end;

procedure Tfrm_yzinput.cxButton3Click(Sender: TObject);
begin
  MenuItem3.Click;
end;

procedure Tfrm_yzinput.cxButton4Click(Sender: TObject);
begin
  MenuItem5.Click;
end;

procedure Tfrm_yzinput.cxButton5Click(Sender: TObject);
begin
  MenuItem7.Click;
end;

procedure Tfrm_yzinput.cxButton8Click(Sender: TObject);
begin
  N19.Click;
end;

procedure Tfrm_yzinput.cxButton9Click(Sender: TObject);
begin
  MenuItem15.Click;
end;

procedure Tfrm_yzinput.cxGrid3DBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  //  if (qry_cx_jyjg.FieldByName('ResultStatus').asstring='LL')
  //    or  (qry_cx_jyjg.FieldByName('ResultStatus').asstring='HH') then
  //  begin
  //    ACanvas.Canvas.Brush.Color:=clLime;
  //  end;

  if (AViewInfo.GridRecord.Values[10] = 'LL')
    or (AViewInfo.GridRecord.Values[10] = 'HH') then
    ACanvas.Canvas.Font.Color := clfuchsia;
  if (AViewInfo.GridRecord.Values[10] = 'L') then
    ACanvas.Canvas.Font.Color := clBlue;
  if (AViewInfo.GridRecord.Values[10] = 'H') then
    ACanvas.Canvas.Font.Color := clred;

end;

procedure Tfrm_yzinput.cxTabSheet1Show(Sender: TObject);
begin
  sp_dryz.Close;
  sp_dryz.Parameters.ParamByName('@zyh').Value := zyh;
  sp_dryz.Parameters.ParamByName('@yzsx').Value := '';
  sp_dryz.Open;
  dbgrideh4.OnColWidthsChanged(sender);
  DBGridEh4.SetFocus;
  if pub_yydm='0246' then //���������޸ģ�Ĭ��δֹͣҽ����ʾ
  begin
    ComboBox1.ItemIndex:=3;
    ComboBox1Change(nil);
  end;
end;

procedure Tfrm_yzinput.PopupMenu2Popup(Sender: TObject);
var
  ls_DrugCode: string; //��ǰ��ҩƷΨһ��
  ls_DrugName: string; //��ǰ��ҩƷ����
  ls_Unit: string; //��ǰ��ҩƷ��ҩ��λ
  ls_RouteName: string; //��ǰ��ҩƷ��ҩ;��
  li_Warn: Integer; //��ǰ�о�ʾֵ
begin
  if qry_yz.fieldbyname('lb').asstring = '��ҩ' then
  begin
    N3.Caption := '��ҩ����';
  end
  else
  begin
    N3.Caption := '��Һ����';
  end;
  if (gi_passenabled = 0) then
  begin
    //PASSϵͳ�����û��쳣����PASSϵͳ�˵���Ч��Ϊ��ЧFALSE
 //   ע��:�������ʾ,�ɽ�PASS��ز˵����visible��ΪFALSE
    m_pass101.Enabled := false;
    m_pass102.Enabled := false;
    m_pass103.Enabled := false;
    m_pass107.Enabled := false;
    m_pass104.Enabled := false;
    m_pass30.Enabled := false;
    m_pass13.Enabled := false;
    m_pass14.Enabled := false;
    m_pass105.Enabled := false;
    m_pass11.Enabled := false;
    m_pass22.Enabled := false;
    m_pass50.Enabled := false;
    m_pass60.Enabled := false;
    m_pass70.Enabled := false;
    m_pass301.Enabled := false;
  end
  else if (PassGetState('0') = 0) then
  begin
    m_pass101.Enabled := false;
    m_pass102.Enabled := false;
    m_pass103.Enabled := false;
    m_pass107.Enabled := false;
    m_pass104.Enabled := false;
    m_pass30.Enabled := false;
    m_pass13.Enabled := false;
    m_pass14.Enabled := false;
    m_pass105.Enabled := false;
    m_pass11.Enabled := false;
    m_pass22.Enabled := false;
    m_pass50.Enabled := false;
    m_pass60.Enabled := false;
    m_pass70.Enabled := false;
    m_pass301.Enabled := false;
  end
  else
  begin
    if qry_yz.Active and (qry_yz.RecordCount > 0) then
    begin
      if (qry_yz.FieldByName('lb').AsString = '��ҩ') or
        (qry_yz.FieldByName('lb').AsString = '��ҩ') or
        (qry_yz.FieldByName('lb').AsString = '��ҩ') or
        (qry_yz.FieldByName('lb').AsString = 'ҩƷ') or
        (qry_yz.FieldByName('lb').AsString = '��ҩ') or
        (qry_yz.FieldByName('lb').AsString = 'ҩһ') then
      begin
        //ȡ��ǰ��ҩƷΨһ�뵽ls_DrugCode��ע���ҩƷ��ҽ����Ҫ��""��
        ls_DrugCode := qry_yz.FieldByName('xmdm').AsString;

        //ȡ��ǰ��ҩƷ���Ƶ�ls_DrugName
        ls_DrugName := qry_yz.FieldByName('xmmc').AsString;

        //ȡ��ǰ�и�ҩ��λ���Ƶ�ls_Unit��ע�⣬�����ƣ����Ǵ��룬һ��ɴ���
        ls_Unit := qry_yz.FieldByName('yldw').AsString;

        //ȡ��ǰ�и�ҩ��;�����Ƶ�ls_RouteName��ע�⣬�����ƣ����Ǵ���
        ls_RouteName := qry_yz.FieldByName('yytj').AsString;

        //ȡ��ǰ��PASS���������ֵ��li_Warn
//          li_Warn := qry_yz.FieldByName( 'pass_warn' ).AsInteger; //'[��ǰ�����������ֵ]'

        //����PassSetSearchDrugInfo()����ǰҩ����Ϣ����PASSϵͳ�����ô˺���ʱ��Ҫ����ҩƷΨһ�롢
        //ҩƷ���ơ���ҩ;�����ơ�����ֵ��Ϣ��
        PassSetQueryDrug(PChar(ls_DrugCode), PChar(ls_DrugName), PChar(ls_Unit),
          PChar(ls_RouteName));

        //��ȡ"ҩ���ٴ���Ϣ�ο�"�˵�����Ч״̬��PassGetState() = 1����˵���EnabledΪTrue
        m_pass101.Enabled := (PassGetState('101') = 1);

        //��ȡ"ҩƷ˵����"�˵�����Ч״̬��PassGetState() = 1����˵���EnabledΪTrue
        m_pass102.Enabled := (PassGetState('102') = 1);

        //��ȡ"������ҩ����"�˵�����Ч״̬��PassGetState() = 1����˵���EnabledΪTrue
        m_pass103.Enabled := (PassGetState('103') = 1);

        //��ȡ"�й�ҩ��"�˵�����Ч״̬��PassGetState() = 1����˵���EnabledΪTrue
        m_pass107.Enabled := (PassGetState('107') = 1);

        //��ȡ"����ֵ"�˵�����Ч״̬��PassGetState() = 1����˵���EnabledΪTrue
        m_pass104.Enabled := (PassGetState('104') = 1);

        //��ȡ"ר����Ϣ"�˵�����Ч״̬��PassGetState() = 1����˵���EnabledΪTrue
        m_pass30.Enabled := (PassGetState('0') = 1);

        //��ȡ"ҽҩ��Ϣ����"�˵�����Ч״̬��PassGetState() = 1����˵���EnabledΪTrue
        m_pass106.Enabled := (PassGetState('0') = 1);

        //��ȡ"ҩƷ�����Ϣ��ѯ"�˵�����Ч״̬��PassGetState() = 1����˵���EnabledΪTrue
        m_pass13.Enabled := (PassGetState('13') = 1);

        //��ȡ"��ҩ;�������Ϣ��ѯ"�˵�����Ч״̬��PassGetState() = 1����˵���EnabledΪTrue
        m_pass14.Enabled := (PassGetState('14') = 1);

        //��ȡ"ҽԺҩƷ��Ϣ"�˵�����Ч״̬��PassGetState() = 1����˵���EnabledΪTrue
        m_pass105.Enabled := (PassGetState('105') = 1);

        //��ȡ"ϵͳ����"�˵�����Ч״̬��PassGetState() = 1����˵���EnabledΪTrue
//          m_pass11.Enabled := ( PassGetState( '0' ) = 1 );

        //��ȡ"����ʷ/����״̬"�˵�����Ч״̬��PassGetState() = 1����˵���EnabledΪTrue
        m_pass22.Enabled := (PassGetState('0') = 1);

        //��ȡ"��ҩ�о�"�˵�����Ч״̬��PassGetState() = 1����˵���EnabledΪTrue
        m_pass50.Enabled := (PassGetState('0') = 1);

        //��ȡ"��ҩ����"�˵�����Ч״̬��li_Warn > 0��˵���EnabledΪTrue
        m_pass60.Enabled := (li_Warn > 0);

        //��ȡ"���"�˵�����Ч״̬��PassGetState() = 1����˵���EnabledΪTrue
        m_pass70.Enabled := (PassGetState('0') = 1);

        //��ȡ"����"�˵�����Ч״̬��PassGetState() = 1����˵���EnabledΪTrue
        m_pass301.Enabled := (PassGetState('0') = 1);

        //��ȡ"ҩ����ҩ���໥����"�˵�����Ч״̬��PassGetState() = 1����˵���EnabledΪTrue
        m_pass201.Enabled := (PassGetState('201') = 1);

        //��ȡ"ҩ����ʳ���໥����"�˵�����Ч״̬��PassGetState() = 1����˵���EnabledΪTrue
        m_pass202.Enabled := (PassGetState('202') = 1);

        //��ȡ"����ע�����������"�˵�����Ч״̬��PassGetState() = 1����˵���EnabledΪTrue
        m_pass203.Enabled := (PassGetState('203') = 1);

        //��ȡ"����ע�����������"�˵�����Ч״̬��PassGetState() = 1����˵���EnabledΪTrue
        m_pass204.Enabled := (PassGetState('204') = 1);

        //��ȡ"����֢"�˵�����Ч״̬��PassGetState() = 1����˵���EnabledΪTrue
        m_pass205.Enabled := (PassGetState('205') = 1);

        //��ȡ"������"�˵�����Ч״̬��PassGetState() = 1����˵���EnabledΪTrue
        m_pass206.Enabled := (PassGetState('206') = 1);

        //��ȡ"��������ҩ����"�˵�����Ч״̬��PassGetState() = 1����˵���EnabledΪTrue
        m_pass207.Enabled := (PassGetState('207') = 1);

        //��ȡ"��ͯ��ҩ����"�˵�����Ч״̬��PassGetState() = 1����˵���EnabledΪTrue
        m_pass208.Enabled := (PassGetState('208') = 1);

        //��ȡ"��������ҩ����"�˵�����Ч״̬��PassGetState() = 1����˵���EnabledΪTrue
        m_pass209.Enabled := (PassGetState('209') = 1);

        //��ȡ"��������ҩ����"�˵�����Ч״̬��PassGetState() = 1����˵���EnabledΪTrue
        m_pass210.Enabled := (PassGetState('210') = 1);
      end;
    end;
  end;
end;

procedure Tfrm_yzinput.Proc_Seek_dj(const v_tmh: string);
  procedure Proc_Seek_SQL(const v_SQL: string);
  begin
    qry_dj.Close;
    qry_dj.SQL.Text := v_SQL;
    qry_dj.Parameters.ParamByName('zyh').Value := v_tmh;
    qry_dj.Parameters.ParamByName('tmh').Value := '%' + v_tmh + '%';
    qry_dj.Parameters.ParamByName('ksdm').Value := Pub_ksdm;
    qry_dj.Open;
  end;
begin
  Proc_Seek_SQL(con_sql_zy);
  if qry_dj.RecordCount > 1 then
  begin
    DBGridEh2.Visible := True;
    DBGridEh2.SetFocus;
  end
  else if qry_dj.RecordCount = 1 then
    Proc_Seek_yzzxjl(qry_dj.FieldByName('tmh').AsString,
      qry_dj.FieldByName('zyh').AsString, qry_dj.FieldByName('brxm').AsString);
  //  else
  //  begin
  //    Proc_Seek_SQL(con_sql_cy);
  //    if qry_dj.RecordCount > 1 then
  //    begin
  //      DBGridEh2.Visible := True;
  //      DBGridEh2.SetFocus;
  //    end
  //    else if qry_dj.RecordCount = 1 then
  //      Proc_Seek_yzzxjl(qry_dj.FieldByName('tmh').AsString, qry_dj.FieldByName('zyh').AsString, qry_dj.FieldByName('brxm').AsString);
  //  end;
end;

procedure Tfrm_yzinput.Proc_Seek_yzzxjl(const v_tmh, v_zyh, v_brxm: string);
begin
  with sp_zxjl_cq do
  begin
    Close;
    Parameters.ParamByName('@zyh').Value := v_zyh;
    Parameters.ParamByName('@fs').Value := 0;
    Open;
  end;

  with sp_zxjl_ls do
  begin
    Close;
    Parameters.ParamByName('@zyh').Value := v_zyh;
    Parameters.ParamByName('@fs').Value := 1;
    Open;
  end;

  edt_tmh.Text := v_tmh;
  BitBtn1.SetFocus;
end;

procedure Tfrm_yzinput.QRSubDetail1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
//  if paper_size > 27 then     //27,37
//  begin
//    quickrep1.NewPage;
//    paper_size := 0;
//  end;

end;

procedure Tfrm_yzinput.QRSubDetail1NeedData(Sender: TObject;
  var MoreData: Boolean);
var
  I: Integer;
begin
  MoreData := True;
  if sp_zxjl_cq_dy.Eof then
    MoreData := False;
  ksrq.Caption := '';
  kdysmc.Caption := '';
  zxhsmc.Caption := '';
  xmmc.Caption := '';
  tzrq.Caption := '';
  tzysmc.Caption := '';
  zhhsmc.Caption := '';
  zxzxsj.caption := '';
  zhzxsj.caption := '';

  if not sp_zxjl_cq_dy.eof then
  begin
    ksrq.Caption := sp_zxjl_cq_dy.FieldByName('ksrq').Asstring;
    kdysmc.Caption := sp_zxjl_cq_dy.FieldByName('kdysmc').Asstring;
    zxhsmc.Caption := sp_zxjl_cq_dy.FieldByName('zxhsmc').Asstring;
    if ((length(sp_zxjl_cq_dy.FieldByName('xmmc').Asstring) * 8) div 200) <= 2
      then
      paper_size := paper_size +
        ((length(sp_zxjl_cq_dy.FieldByName('min_jlsj').Asstring) * 8) div 46)
    else
      paper_size := paper_size +
        ((length(sp_zxjl_cq_dy.FieldByName('xmmc').Asstring) * 8) div 200);
    if sp_zxjl_cq_dy.FieldByName('fzph').asstring <> '' then
    begin
      I := (length(sp_zxjl_cq_dy.FieldByName('xmmc').Asstring) * 8) div 200;
      qrgrimage1.enabled := true;
      qrgrimage1.Top := 1;
      qrgrimage1.left := ypyf.left - 20;
      qrgrimage1.height := i * ypyf.height;
      ypyf.top := i * ypyf.height div 2;
      ypyf.Caption := trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring) + '  ' +
        trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
      xmmc.Width := 200;
      xmmc.caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring;
    end
    else
    begin
      qrgrimage1.enabled := false;
      xmmc.Width := 257;
      ypyf.Caption := '';
      xmmc.caption := sp_zxjl_cq_dy.FieldByName('xmmc').Asstring + '  ' +
        trim(sp_zxjl_cq_dy.FieldByName('yytj').asstring) + '  ' +
        trim(sp_zxjl_cq_dy.FieldByName('ypyf').asstring);
    end;
    tzrq.Caption := sp_zxjl_cq_dy.FieldByName('tzrq').Asstring;
    tzysmc.Caption := sp_zxjl_cq_dy.FieldByName('tzysmc').Asstring;
    zhhsmc.Caption := sp_zxjl_cq_dy.FieldByName('zhhsmc').Asstring;
    zxzxsj.Caption := sp_zxjl_cq_dy.FieldByName('min_jlsj').Asstring;
    zhzxsj.Caption := sp_zxjl_cq_dy.FieldByName('max_jlsj').Asstring;
    sp_zxjl_cq_dy.Next;

  end;
end;

procedure Tfrm_yzinput.QRSubDetail2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
//  if paper_size > 31 then    //31,37
//  begin
//    quickrep2.NewPage;
//    paper_size := 0;
//  end;
end;

procedure Tfrm_yzinput.QRSubDetail2NeedData(Sender: TObject;
  var MoreData: Boolean);
var
  I: integer;
begin
  MoreData := True;
  if sp_zxjl_ls_dy.Eof then
    MoreData := False;
  ksrq_ls.Caption := '';
  kdys_ls.Caption := '';
  zxryxm_ls.Caption := '';
  xmmc_ls.Caption := '';
  zxsj_ls.caption := '';
  ypyf_ls.caption := '';

  if not sp_zxjl_ls_dy.eof then
  begin
    ksrq_ls.Caption := sp_zxjl_ls_dy.FieldByName('ksrq').Asstring;
    kdys_ls.Caption := sp_zxjl_ls_dy.FieldByName('kdysmc').Asstring;
    zxryxm_ls.Caption := sp_zxjl_ls_dy.FieldByName('zxhsmc').Asstring;
    //     zxsj_ls.Caption := sp_zxjl_ls_dy.FieldByName('gysj').Asstring;
    if ((length(sp_zxjl_ls_dy.FieldByName('xmmc').Asstring) * 8) div 292) <= 2
      then
      paper_size := paper_size +
        ((length(sp_zxjl_ls_dy.FieldByName('gysj').Asstring) * 8) div 53)
    else
      paper_size := paper_size +
        ((length(sp_zxjl_ls_dy.FieldByName('xmmc').Asstring) * 8) div 292);
    if sp_zxjl_ls_dy.FieldByName('fzph').asstring <> '' then
    begin
      I := (length(sp_zxjl_ls_dy.FieldByName('xmmc').Asstring) * 8) div 272;
      QRImage1.enabled := true;
      QRImage1.top := 1;
      QRImage1.left := ypyf_ls.left - 20;
      QRImage1.height := i * ypyf_ls.height;
      ypyf_ls.top := i * ypyf.height div 2;
      ypyf_ls.Caption := trim(sp_zxjl_ls_dy.FieldByName('yytj').asstring) + '  '
        + trim(sp_zxjl_ls_dy.FieldByName('ypyf').asstring);
      xmmc_ls.Width := 272;
      xmmc_ls.caption := sp_zxjl_ls_dy.FieldByName('xmmc').Asstring;
    end
    else
    begin
      QRImage1.enabled := false;
      xmmc_ls.Width := 292;
      ypyf_ls.Caption := '';
      xmmc_ls.caption := sp_zxjl_ls_dy.FieldByName('xmmc').Asstring + '  ' +
        trim(sp_zxjl_ls_dy.FieldByName('yytj').asstring) + '  ' +
        trim(sp_zxjl_ls_dy.FieldByName('ypyf').asstring);
    end;
    zxsj_ls.Caption := sp_zxjl_ls_dy.FieldByName('gysj').Asstring;
    sp_zxjl_ls_dy.Next;

  end;
end;

procedure Tfrm_yzinput.cxTabSheet2Show(Sender: TObject);
begin
  Proc_Seek_dj(zyh);
end;

procedure Tfrm_yzinput.cxTabSheet3Show(Sender: TObject);
begin
  qry_cx_jyjg.Close;
  qry_cx_jyjg.Parameters.ParamByName('zyh').Value := zyh;
  //  qry_cx_jyjg.Parameters.ParamByName('zyh1').Value := zyh;
  qry_cx_jyjg.Open;
  qry_cx_jyjg.First;
  qry_cx_jyjg.Sort := 'JSRQ DESC ';
  if qry_cx_jyjg.RecordCount > 0 then
    cxGrid3DBTableView1.DataController.Groups.FullExpand;

  qry_cx_jyjg_wsw.Close;
  qry_cx_jyjg_wsw.Parameters.ParamByName('zyh').Value := zyh;
  //  qry_cx_jyjg.Parameters.ParamByName('zyh1').Value := zyh;
  qry_cx_jyjg_wsw.Open;
  qry_cx_jyjg_wsw.First;
  qry_cx_jyjg_wsw.Sort := 'JSRQ DESC ';
  if qry_cx_jyjg_wsw.RecordCount > 0 then
    cxGridDBTableView1.DataController.Groups.FullExpand;
end;

procedure Tfrm_yzinput.cxTabSheet4Show(Sender: TObject);
var
  visitAddr: string;
begin
  ////  passAddr:=ReadPropFile('url');
  //  passAddr:='192.168.0.20:8080';
  //  if trim(passAddr)='' then exit;
  //  Edt_pass_tmh.Text := tmh;
  //  visitAddr:='http://'+passAddr+'/webviewer/query.do?inHospitalNo='+inttostr(strtoint(tmh))+
  //             '&patientName='+trim(DBEdit14.Text)+
  //             '&sex='+trim(DBEdit20.Text);
  //  WebBrowser1.Navigate(visitAddr);

  if pub_yydm = '0003' then
  begin
    Button17.Visible := True;
    Edt_pass_tmh.text := e_tmh.Text;
  end
  else if (pub_yydm = '0012') or (pub_yydm = '0229') then
  begin
    Panel16.Visible := True;
    describes.readonly := true;
    diagnosis.readonly := true;
    describes.Text := '';
    diagnosis.Text := '';
    Edt_pass_tmh.Visible := false;
    Button17.Visible := True;
    //Edt_pass_tmh.text:=e_tmh.Text;
    Label11.Visible := False;
    Label20.Visible := True;
    ComboBox2.Visible := true;
    ComboBox2.Items.Clear;
    DM_data.qry_pub.close;
    DM_data.qry_pub.sql.Text := 'select * from zybl_zyyz where zyh=' + '''' + zyh
      + '''' +
      ' and zxbz=1 and tzbz=0 and lb=''���'' order by kdrq desc';
    try
      DM_data.qry_pub.Open;
    except
    end;
    DM_data.qry_pub.first;
    while not DM_data.qry_pub.eof do
    begin
      ComboBox2.Items.Add(DM_data.qry_pub.FieldByName('id').asstring + '_' +
        DM_data.qry_pub.FieldByName('xmmc').asstring + '_' +
        formatdatetime('yyyyMMdd'
        , DM_data.qry_pub.FieldByName('kdrq').AsDateTime));
      DM_data.qry_pub.Next;
    end;

  end
  else if pub_yydm = '0067' then //�����ǿ�ҽԺ
  begin
    Panel4.Visible := false;
    visitAddr := 'http://192.168.30.105:8888/default.aspx?hisid=' + zyh;
    WebBrowser1.Navigate(visitAddr);
  end
  else if pub_yydm = '0101' then //����������ҽԺ  �������̽ӿ�
  begin
    Panel4.Visible := false;
    visitAddr := 'http://192.168.1.25:8090/cwp/ViewPatientInfoAction!viewPatient.xhtml?hospital_cardid='
      + tmh;
    WebBrowser1.Navigate(visitAddr);
  end
  else if pub_yydm = '0147' then //����ҽԺ  �������̽ӿ�
  begin
    Panel4.Visible := false;
    visitAddr := 'http://192.168.100.107:8090/cwp/ViewPatientInfoAction!viewPatient.xhtml?hospital_cardid='
      + tmh;
    WebBrowser1.Navigate(visitAddr);
  end
  else if pub_yydm = '0237' then //�н�  �������̽ӿ�
  begin
    Panel4.Visible := false;
    visitAddr := 'http://192.1.1.226:8090/cwp/ViewPatientInfoAction!viewPatient.xhtml?hospital_cardid='
      + tmh;
    WebBrowser1.Navigate(visitAddr);
  end
  else if pub_yydm = '0108' then //��Ϫ������ҽԺ  �������̽ӿ�
  begin
    Panel4.Visible := false;
    visitAddr := 'http://192.168.80.20:8090/cwp/ViewPatientInfoAction!viewPatient.xhtml?hospital_cardid='
      + trim(e_tmh.text);
    WebBrowser1.Navigate(visitAddr);
  end
  else if pub_yydm = '0033' then //����������ҽԺ�������̽ӿ�
  begin
    Panel4.Visible := false;
    visitAddr := 'http://192.168.0.8:8090/cwp/ViewPatientInfoAction!viewPatient.xhtml?hospital_cardid='
      + trim(e_tmh.text);
    WebBrowser1.Navigate(visitAddr);
  end
  else if pub_yydm = '0019' then
    // <<<-----����������ҽԺ�������Ͻӿ� (2014.6.17)
  begin
    Edt_pass_tmh.Visible := false;
    Button17.Visible := True;
    //Edt_pass_tmh.text:=e_tmh.Text;
    Label11.Visible := False;
    Label20.Visible := True;
    ComboBox2.Visible := true;
    ComboBox2.Items.Clear;
    DM_data.qry_pub.close;
    DM_data.qry_pub.sql.Text := 'select * from zybl_zyyz where zyh=' + '''' +
      zyh
      + '''' +
      ' and zxbz=1 and tzbz=0 and lb=''���'' order by kdrq desc';
    try
      DM_data.qry_pub.Open;
    except
    end;
    DM_data.qry_pub.first;
    while not DM_data.qry_pub.eof do
    begin
      ComboBox2.Items.Add(DM_data.qry_pub.FieldByName('id').asstring + '_' +
        DM_data.qry_pub.FieldByName('xmmc').asstring + '_' +
        formatdatetime('yyyyMMdd'
        , DM_data.qry_pub.FieldByName('kdrq').AsDateTime));
      DM_data.qry_pub.Next;
    end;
    ComboBox2.ItemIndex := 0;
  end
  else
  begin
    sp_pacs_jg.Close;
    sp_pacs_jg.Parameters.ParamByName('@tmh').Value := tmh;
    sp_pacs_jg.Parameters.ParamByName('@id').Value := '0';
    sp_pacs_jg.Parameters.ParamByName('@lb').Value := 'zy';
    sp_pacs_jg.Open;
    visitAddr := sp_pacs_jg.FieldByName('addr').AsString;
    if sp_pacs_jg.FieldByName('zt').AsString = 'N' then
    begin
      WebBrowser1.Navigate(visitAddr);
    end
    else
    begin
      Edt_pass_tmh.Visible := false;
      Label11.Visible := False;
      Button17.Visible := True;
      Label20.Visible := True;
      ComboBox2.Visible := true;
      ComboBox2.Items.Clear;
      sp_pacs_jg.first;
      while not sp_pacs_jg.eof do
      begin
        ComboBox2.Items.Add(sp_pacs_jg.FieldByName('id').asstring + '_' +
          sp_pacs_jg.FieldByName('xmmc').asstring + '_' +
          formatdatetime('yyyyMMdd'
          , sp_pacs_jg.FieldByName('kdrq').AsDateTime));
        sp_pacs_jg.Next;
      end;
      ComboBox2.ItemIndex := 0;
    end;

    {
    passAddr := '192.168.0.20:8080';
    if trim(passAddr) = '' then
      exit;
    Edt_pass_tmh.Text := tmh;
    visitAddr := 'http://' + passAddr + '/webviewer/query.do?inHospitalNo=' + tmh
      +
      '&patientName=' + trim(DBEdit14.Text) +
      '&sex=' + trim(DBEdit20.Text);
      }
  end;
end;

procedure Tfrm_yzinput.cxTabSheet5Show(Sender: TObject);
var
  ljid, dqrq, mrrq: string;
  BBH: Integer;
  Frm_LCLJSJ: Tfrm_LCLJSJ;
begin
  try
    DM_data.qry_pub.Close;
    DM_data.qry_pub.sql.text := 'select * from LCLJ_brlclj where zt=1 and zyh='
      +
      '''' + zyh + '''';
    try
      DM_data.qry_pub.Open;
    except
    end;
    if not DM_data.qry_pub.IsEmpty then
    begin
      dqrq := FormatDateTime('yyyyMMdd', Frm_func.curr_date);
      mrrq := FormatDateTime('yyyyMMdd', Frm_func.curr_date + 1);
      ljid := DM_data.qry_pub.FieldByName('ljid').asstring;
      bbh := DM_data.qry_pub.FieldByName('bbh').AsInteger;
      Frm_LCLJSJ := TFrm_LCLJSJ.Create(Application);
      Frm_LCLJSJ.ShowMXData_rq(ljid, BBH, frm_yzinput.cxGrid1BandedTableView1,
        mrrq, zyh, frm_yzinput);
      //      Frm_LCLJSJ.ShowPathDetails(ljid, BBH, frm_yzinput.cxGrid1BandedTableView1,
      //        mrrq, zyh, frm_yzinput);
      //      btnPathPrt.Visible := True;
      //    end
      //    else
      //    begin
      //      btnPathPrt.Visible := False;
    end;
    //btnPathPrt.Visible := False; //2014-08-25 XML
  finally
  end;
end;

//----calmhawk---2011-05-21----����ҽ��----

procedure Tfrm_yzinput.showForm;
var
  z_zyh: string;
begin
  FormTitle := self.Caption;
  DTP_JY.DateTime := Frm_func.curr_date;
  DTP_JC.DateTime := Frm_func.Curr_date;
  with DM_data.qry_pub do
  begin
    close;
    sql.Text := 'select SYSYSZXXT,yzktqsj,hskkyz from sys_xt_kg';
    Open;
    DbGridEh4.Columns.Items[53].Visible :=
      DM_data.qry_pub.FieldByName('SYSYSZXXT').asBoolean;
    DbGridEh6.Columns.Items[53].Visible := DbGridEh4.Columns.Items[53].Visible;
    ktqsj := FieldByName('yzktqsj').AsInteger;
  end;
  jybz := False;
  if lcljms then
    HideSomething; //�ٴ�·��ģ��

  DBGridEh7.Left := Panel3.Width + 3;
  DBGridEh7.top := Panel1.height + 2;

  if DM_data.qry_pub.FieldByName('hskkyz').AsBoolean then
  begin
    grid_yzlr.Columns[1].PickList.Clear;
    grid_yzlr.Columns[1].PickList.Add('ҩƷ');
    grid_yzlr.Columns[1].PickList.Add('����');
    grid_yzlr.Columns[1].PickList.Add('����');
    grid_yzlr.Columns[1].PickList.Add('����');
    grid_yzlr.Columns[1].PickList.Add('���');
    grid_yzlr.Columns[1].PickList.Add('����');
    grid_yzlr.Columns[1].PickList.Add('��ҩ');
    grid_yzlr.Columns[1].PickList.Add('��ҩ');
    if pub_yydm = '0015' then
    begin
      grid_yzlr.Columns[1].PickList.Add('ҩһ');
    end;
    N1.Enabled := True;
    N2.Enabled := True;
    N5.Enabled := True;
    N6.Enabled := True;
    N7.Enabled := True;
    N8.Enabled := True;
    N11.Enabled := True;
    aptzyz.Enabled := True;
    btn1.Visible := true;
  end
  else
  begin
    DM_data.qry_pub.close;
    DM_data.qry_pub.SQL.text := 'select * from sys_czy where dm=' + '''' +
      pub_czydm + '''';
    try
      DM_data.qry_pub.Open;
    except
    end;
    if DM_data.qry_pub.FieldByName('ysbz').AsBoolean = False then
    begin
      btn1.Enabled := False;
      Button6.Enabled := False;
      Button7.Enabled := False;
      Button8.Enabled := False;
      Button3.Enabled := False;
      grid_yzlr.Columns[1].PickList.Clear;
      grid_yzlr.Columns[1].PickList.Add('����');
      N1.Enabled := false;
      N2.Enabled := false;
      N5.Enabled := false;
      N6.Enabled := false;
      N7.Enabled := false;
      N8.Enabled := false;
      N11.Enabled := false;
      aptzyz.Enabled := false;
      btn1.Visible := false;
      if pub_yydm = '0015' then
      begin
        N1.Enabled := true;
        N2.Enabled := true;
        aptzyz.Enabled := true;
      end;
    end
    else
    begin
      btn1.Enabled := True;
      Button6.Enabled := True;
      Button7.Enabled := True;
      Button8.Enabled := True;
      Button3.Enabled := True;
      grid_yzlr.Columns[1].PickList.Clear;
      grid_yzlr.Columns[1].PickList.Add('ҩƷ');
      grid_yzlr.Columns[1].PickList.Add('����');
      grid_yzlr.Columns[1].PickList.Add('����');
      grid_yzlr.Columns[1].PickList.Add('����');
      grid_yzlr.Columns[1].PickList.Add('���');
      grid_yzlr.Columns[1].PickList.Add('����');
      grid_yzlr.Columns[1].PickList.Add('��ҩ');
      grid_yzlr.Columns[1].PickList.Add('��ҩ');
      if pub_yydm = '0015' then
      begin
        grid_yzlr.Columns[1].PickList.Add('ҩһ');
      end;
      N1.Enabled := True;
      N2.Enabled := True;
      N5.Enabled := True;
      N6.Enabled := True;
      N7.Enabled := True;
      N8.Enabled := True;
      N11.Enabled := True;
      aptzyz.Enabled := True;
      btn1.Visible := true;
    end;
  end;

  if ( pub_yydm = '0012' ) or ( pub_yydm = '0256' ) then //��̨��ҽԺ ҩƷ�����л�ҩ��
  begin
    N24.Visible := true;
    ChangePharnacy.Visible := True;
  end;

  z_zyh := '';
  adodataset1.close;
  adodataset1.commandtext :=
    'select * from zybl_tsnr Where jsrq>=GetDate()-2 and ' +
    ' (bqdm=' + #39 + pub_bqdm + #39 + ' or isnull(bqdm,' + #39 + #39 + ')=' +
    #39 + #39 + ') order by id';
  adodataset1.open;
  ad_ggdisplay;
  QuickRep1.Visible := False;
  QuickRep2.Visible := False;
  if tmh = '' then
    tmh := pub_tmh;
  qry_xmyz.Close;
  qry_xmyz.Open;
  yzsx := '����';
  qry_ys.close;
  qry_ys.Parameters.ParamByName('ksdm').Value := pub_ksdm;
  qry_ys.Open;
  qry_ks.Open;
  qry_gytj.Open;
  while not qry_gytj.Eof do
  begin
    grid_yzlr.Columns[6].PickList.Add(trim(qry_gytj.FieldByName('mc').AsString));
    qry_gytj.Next;
  end;
  qry_ypyf.Open;
  proc_yf_filer;
  while not qry_ypyf.Eof do
  begin
    grid_yzlr.Columns[5].PickList.Add(trim(qry_ypyf.FieldByName('mc').AsString));
    qry_ypyf.Next;
  end;
  qry_jyyb.close;
  qry_jyyb.Open;
  grid_yzlr.Columns[9].PickList.Clear;
  while not qry_jyyb.Eof do
  begin
    grid_yzlr.Columns[9].PickList.Add(trim(qry_jyyb.FieldByName('ybmc').AsString));
    qry_jyyb.Next;
  end;

  yzlb := 'ҩƷ';

  zz.ActivePageIndex := 0;
  kz := false;
  if tmh <> '' then
  begin
    sp_jbxx.Close;
    sp_jbxx.Parameters.ParamValues['@tmh'] := tmh;
    sp_jbxx.Parameters.ParamValues['@xm'] := tmh;
    sp_jbxx.Parameters.ParamValues['@bch'] := tmh;
    sp_jbxx.Parameters.ParamValues['@ksdm'] := pub_bqdm;
    sp_jbxx.Open;
  end;
  DM_data.qry_pub.close;
  DM_data.qry_pub.SQL.text := 'select * from zysf_zydj where tmh=' + '''' + tmh
    +
    '''';
  try
    DM_data.qry_pub.Open;
  except
  end;

  if (not lcljms) and sp_jbxx.Active then
  begin
    if (sp_jbxx.RecordCount > 1) and (DM_data.qry_pub.RecordCount > 1) then
    begin
      sp_jbxx.First;
      while not sp_jbxx.eof do
      begin
        DM_data.qry_pub.Close;
        DM_data.qry_pub.SQL.Text := 'select * from zysf_zydj where zyh=' + ''''
          +
          sp_jbxx.FieldByName('zyh').asstring +
          ''' and cybz=0 order by ryrq desc';
        try
          DM_data.qry_pub.Open;
        except
        end;
        if not DM_data.qry_pub.IsEmpty then
          z_zyh := DM_data.qry_pub.FieldByName('zyh').AsString;
        sp_jbxx.Next;
      end;
      sp_jbxx.Filtered := False;
      sp_jbxx.Filter := 'zyh=' + '''' + z_zyh + '''';
      sp_jbxx.Filtered := True;
    end
    else if (sp_jbxx.RecordCount > 1) and (DM_data.qry_pub.RecordCount = 1) then
    begin
      sp_jbxx.First;
      while not sp_jbxx.eof do
      begin
        with DM_data.qry_pub do
        begin
          Close;
          SQL.Text := 'select * from zysf_zydj where zyh=' + ''''
            +
            sp_jbxx.FieldByName('zyh').asstring + ''' order by ryrq desc';
          Open;
          if not IsEmpty then
            z_zyh := FieldByName('zyh').AsString;
        end;
        sp_jbxx.Next;
      end;
      sp_jbxx.Filtered := False;
      sp_jbxx.Filter := 'zyh=' + '''' + z_zyh + '''';
      sp_jbxx.Filtered := True;
    end;
  end;

  //  DM_data.qry_pub.close;
  //  DM_data.qry_pub.sql.text:='delete from zybl_zyyz where zyh='+''''+
  //  sp_jbxx.FieldByName( 'zyh' ).asstring+''''+' and zxbz=0 and kdks not in (select '+
  //  ' bqzydm from sys_bqzyfl where bqdm='+''''+pub_bqdm+''')';
  //  DM_data.qry_pub.ExecSQL;

  sp_cx_yzxm.Close;
  sp_cx_yzxm.Parameters.ParamValues['@zyh'] := zyh;
  sp_cx_yzxm.Parameters.ParamValues['@yzsx'] := 'δ�ύ';
  sp_cx_yzxm.Parameters.ParamValues['@ksdm'] := pub_ksdm;
  sp_cx_yzxm.Open;
  scbz := 0;
  //------------calmhawk-2008-01-31-----ȡҩ������------
  qry_yfdm.Close;
  qry_yfdm.Parameters.ParamByName('ksdm').Value := pub_ksdm;
  qry_yfdm.Open;
  //------------------------------------------------------------
  if (not lcljms) and sp_jbxx.Active then
  begin
    if not sp_jbxx.IsEmpty then
    begin
      zyh := sp_jbxx.FieldByName('zyh').AsString;
      tmh := sp_jbxx.FieldByName('tmh').AsString;
      brxm := sp_jbxx.FieldByName('brxm').AsString;
      e_tmh.Text := tmh;
      //���˻�����Ϣ����pass  2011-11-23 jc
//      try
//        if gi_PassEnabled = 1 then
//        begin
//          proc_brjbxx(tmh, '1', brxm, sp_jbxx.FieldByName('brxb').AsString,
//            FormatDateTime('yyyy-MM-dd',
//            sp_jbxx.FieldByName('csrq').AsDateTime),
//            br_tz, '', pub_ksdm, pub_ksmc, pub_czydm, pub_czyxm, '');
//        end;
//      except
//      end;
      refresh_show;
    end;
  end;

  if zyh = '' then
  begin
    if lcljms then
    begin
      zyh := pub_czydm;
      refresh_yz;
    end
    else
    begin
      e_tmh.SetFocus;
    end;
  end
  else
  begin
    if trim(sp_jbxx.FieldByName('zgys').AsString) = '' then
    begin
      e_yzys.SetFocus;
      e_yzys.Text := pub_czyxm;
      yzlbsr(kzbz);
    end
    else
    begin
      if trim(dbedit11.Text) <> '' then
        e_yzys.Text := DBEdit11.Text;
      e_yzys.Text := pub_czyxm;
      yzlbsr(kzbz);
    end;
  end;
  with DM_data.qry_pub do
  begin
    Close;
    SQL.Text := 'select * from sys_ksdm where dm =' + #39 + pub_ksdm + #39;
    Open;
    prv_xyfdm := Trim(FieldByName('xgks').AsString);
    prv_zyfdm := Trim(FieldByName('chyf').AsString);
    prv_cyfdm := Trim(FieldByName('cyyf').AsString);
  end;
  if (prv_xyfdm = '') or (prv_zyfdm = '') then
  begin
    yzsx := '����';
    yzlb := '��ҩ';
    proc_xzyf;
    yzlb := 'ҩƷ';
    proc_xzyf;
  end;
  DateTimePicker1.DateTime := frm_func.curr_date;
  DateTimePicker2.DateTime := frm_func.curr_date;
  if (pub_yydm = '0013') then
  begin
    Button3.Visible := true;
    Button3.Caption := '�ȵ��ر���';
  end
  else if pub_yydm = '0015' then
  begin
    Button3.Visible := true;
    Button3.Caption := '��Ժ��ҩ';
  end
  else
  begin
    Button3.Visible := false;
  end;
  with DM_data.qry_pub do
  begin
    close;
    SQL.text := 'select jhdzz from sys_xt_kg';
    Open;
    zzdx := FieldByName('jhdzz').AsString;
    close;
    sql.text :=
      'select * from lclj_bricd10 a,icd10 b where a.icd_10=b.jbbm and zyh=' + ''''
      + zyh + '''';
    Open;
    if not IsEmpty then
      Edit3.text := Trim(FieldByName('jbbm').asstring) + '|' +
        Trim(FieldByName('jbmc').asstring)
    else
      Edit3.text := '';

    close;
    sql.text :=
      'select a.*,b.mc fylbmc from zysf_zydj a,sys_fylb b where a.zyh=' + '''' +
      zyh
      + '''' + ' and a.fylb=b.dm';
    Open;
    v_fylbmc := FieldByName('fylbmc').AsString;
  end;
  qry_lxd.Close;
  try
    qry_lxd.SQL.Text :=
      'select a.*,c.*,b.BLOOD_TYPE_NAME  ,case Rh when ''1'' then ''��'' else' +
      '''��'' end Rh_Rh,isnull(d.smallint,0) dybz,convert(bit,a.sign) sign_1,convert(bit,a.cancel_flag) cancel_flag_1  from BLOOD_APPLY a,BLOOD_COMPONENT b,sys_ksdm c,BLOOD_test d where a.DEPT_CODE=c.dm and a.PATIENT_ID=' + #39
      +
      zyh + #39 + 'and a.BLOOD_TYPE=b.BLOOD_TYPE and a.APPLY_NUM*=d.APPLY_NUM';
    qry_lxd.Open;
  except

  end;
  if sfjrdytlj = '1' then
    btn_drlj.Click;

  if (sp_jbxx.Active) and (Trim(sp_jbxx.FieldByName('zgys').AsString) <>
    pub_czydm) then
  begin
    Button10.Enabled := false;
    btn_drlj.Enabled := false;
    Button14.Enabled := false;
  end;
  SetGrid;
end;

procedure Tfrm_yzinput.shyz;
var
  _id, _zhzxsj, _yzsx: string;
  _fzph: string;
  _yzsj: string;
  sczt: integer;
  yztzsj: TDateTime;
begin

  DM_data.qry_pub.close;
  DM_data.qry_pub.sql.text := 'select * from zybl_zyyz where zyh=' + '''' + zyh
    +
    '''' +
    ' and xyzbz=0 and (yzsx=''����'' or (yzsx=''��ʱ'' and tzbz=0 and isnull(shry,'''')<>''δ��''))';
  try
    DM_data.qry_pub.Open;
  except
  end;
  if DM_data.qry_pub.RecordCount > 0 then
  begin
    if application.MessageBox('��ǰ��ҽ��δִ�У��Ƿ�Ҫ������ҽ��?',
      '��ʾ��Ϣ', mb_iconquestion + mb_okcancel + mb_defbutton1) = idcancel then
      abort;
  end
  else
  begin
    if pub_yydm = '0015' then
    begin
      if application.MessageBox('��ǰ����ҽ������ִ�У��Ƿ�Ҫ������ҽ��?',
        '��ʾ��Ϣ', mb_iconquestion + mb_okcancel + mb_defbutton1) = idcancel
          then
        abort;
    end;
  end;

  if
    Application.MessageBox('�������ҽ������ֹͣԭ���г���ҽ������һ��ѡ��ֹͣҽ��ʱ�䣬' + '�Ƿ�ȷ�����?', 'ѯ��', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON1) = IDYES
      then
  begin
    yztzsj := p_pub_sj.func_sjxz();
    if yztzsj = strtodatetime('1900-01-01') then
      Exit
    else
      tzyzsj := formatdatetime('yyyy-mm-dd hh:mm:ss', yztzsj);
    //ʱ��ֹͣҽ��
    sp_yzsj.Close;
    sp_yzsj.Parameters.ParamByName('@scyzsj').Value := tzyzsj;
    sp_yzsj.ExecProc;
    _yzsj := formatdatetime('yyyymmdd',
      sp_yzsj.Parameters.ParamByName('@scyzsj').Value);

    //ֹͣ���г���ҽ��
    sp_dryz.First;
    while not sp_dryz.Eof do
    begin
      _yzsx := Trim(sp_dryz.FieldByName('yzsx').AsString);
      if (not sp_dryz.FieldByName('tzbz').asboolean) and
        (sp_dryz.fieldbyname('zfrq').asdatetime <= 0) and
        (sp_dryz.fieldbyname('id').AsString <> '') and
        (sp_dryz.fieldbyname('kdrq').asdatetime <= yztzsj) and
        (_yzsx = '����') then
      begin
        _id := sp_dryz.FieldByName('id').AsString;
        _zhzxsj := sp_dryz.FieldByName('zhzxsj').AsString;

        _fzph := sp_dryz.FieldByName('fzph').AsString;
        if _fzph <> '' then
        begin
          sp_tzyz.Close;
          sp_tzyz.Parameters.ParamByName('@zyh').Value := zyh;
          sp_tzyz.Parameters.ParamByName('@zxsj').Value := _yzsj;
          sp_tzyz.Parameters.ParamByName('@tzyzsj').Value :=
            strtodatetime(tzyzsj);
          sp_tzyz.Parameters.ParamByName('@czydm').Value := pub_czydm;
          sp_tzyz.Parameters.ParamByName('@id').Value := 0;
          sp_tzyz.Parameters.ParamByName('@fzph').Value := _fzph;
          sp_tzyz.Parameters.ParamByName('@sczt').Value := 8;
          sp_tzyz.ExecProc;
          sczt := sp_tzyz.Parameters.ParamByName('@sczt').Value;
          if sczt <> 0 then
            application.MessageBox('ҽ��ֹͣδ�ɹ��������²�������', '��ʾ��',
              mb_ok);
        end
        else
        begin
          sp_tzyz.Close;
          sp_tzyz.Parameters.ParamByName('@zyh').Value := zyh;
          sp_tzyz.Parameters.ParamByName('@zxsj').Value := _yzsj;
          sp_tzyz.Parameters.ParamByName('@tzyzsj').Value :=
            strtodatetime(tzyzsj);
          sp_tzyz.Parameters.ParamByName('@czydm').Value := pub_czydm;
          sp_tzyz.Parameters.ParamByName('@id').Value := _id;
          sp_tzyz.Parameters.ParamByName('@fzph').Value := '';
          sp_tzyz.Parameters.ParamByName('@sczt').Value := 8;
          sp_tzyz.ExecProc;
          sczt := sp_tzyz.Parameters.ParamByName('@sczt').Value;
          if sczt <> 0 then
            application.MessageBox('ҽ��ֹͣδ�ɹ��������²�������', '��ʾ��',
              mb_ok);
        end;

      end;
      sp_dryz.Next;
    end;
    //�������ҽ��
    if not qry_yz.active then
    begin
      refresh_show;
    end;
    //if qry_yz. then

    qry_yz.Insert;
    qry_yz.FieldByName('yzsx').Value := '����';
    qry_yz.FieldByName('lb').Value := '����';
    qry_yz.FieldByName('xmmc').Value := '����ҽ��';
    qry_yz.FieldByName('sl').Value := 0;
    qry_yz.FieldByName('czks').Value := yz_kdks;
    qry_yz.FieldByName('kdks').Value := yz_kdks;
    qry_yz.FieldByName('zyh').Value := zyh;
    qry_yz.FieldByName('tmh').Value := tmh;
    qry_yz.FieldByName('xmdm').Value := '';
    qry_yz.Post;
     //���ҽԺ����0004������Ҫ����� ԭ��ע�͵���û�м�ҽԺ����
     if pub_yydm='0004' then
     begin
        qry_yz.Insert;
        qry_yz.FieldByName( 'yzsx' ).Value := '��ʱ';
        qry_yz.FieldByName( 'lb' ).Value := '����';
        qry_yz.FieldByName( 'xmmc' ).Value := '����ҽ��';
        qry_yz.FieldByName( 'sl' ).Value := 0;
        qry_yz.FieldByName( 'czks' ).Value := pub_ksdm;
        qry_yz.FieldByName( 'kdks' ).Value := pub_ksdm;
        qry_yz.FieldByName( 'zyh' ).Value := zyh;
        qry_yz.FieldByName( 'tmh' ).Value := tmh;
        qry_yz.FieldByName( 'xmdm' ).Value := '';
        qry_yz.Post;
      end;
    qry_yz.Append;
    recno := ScrollBox4.VertScrollBar.Position;
    grid_yzlr.SetFocus;
    ScrollBox4.VertScrollBar.Position := recno;
    grid_yzlr.SelectedIndex := 2;

    //sp_dryz.UpdateBatch( arall );
  end;
end;

procedure Tfrm_yzinput.zryz;
var
  _id, _zhzxsj, _yzsx: string;
  _fzph: string;
  _yzsj: string;
  sczt: integer;
  yztzsj: TDateTime;
begin

  DM_data.qry_pub.close;
  DM_data.qry_pub.sql.text := 'select * from zybl_zyyz where zyh=' + '''' + zyh
    +
    '''' +
    ' and xyzbz=0 and (yzsx=''����'' or (yzsx=''��ʱ'' and tzbz=0 and isnull(shry,'''')<>''δ��''))';
  try
    DM_data.qry_pub.Open;
  except
  end;
  if DM_data.qry_pub.RecordCount > 0 then
  begin
    if application.MessageBox('��ǰ��ҽ��δִ�У��Ƿ�Ҫ��ת��ҽ��?',
      '��ʾ��Ϣ', mb_iconquestion + mb_okcancel + mb_defbutton1) = idcancel then
      abort;
  end
  else
  begin
    if pub_yydm = '0015' then
    begin
      if application.MessageBox('��ǰ����ҽ������ִ�У��Ƿ�Ҫ��ת��ҽ��?',
        '��ʾ��Ϣ', mb_iconquestion + mb_okcancel + mb_defbutton1) = idcancel
          then
        abort;
    end;
  end;

  if
    Application.MessageBox('���ת��ҽ������ֹͣԭ���г���ҽ������һ��ѡ��ֹͣҽ��ʱ�䣬' + '�Ƿ�ȷ�����?', 'ѯ��', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON1) = IDYES
      then
  begin
    yztzsj := p_pub_sj.func_sjxz();
    if yztzsj = strtodatetime('1900-01-01') then
      Exit
    else
      tzyzsj := formatdatetime('yyyy-mm-dd hh:mm:ss', yztzsj);
    //ʱ��ֹͣҽ��
    sp_yzsj.Close;
    sp_yzsj.Parameters.ParamByName('@scyzsj').Value := tzyzsj;
    sp_yzsj.ExecProc;
    _yzsj := formatdatetime('yyyymmdd',
      sp_yzsj.Parameters.ParamByName('@scyzsj').Value);

    //ֹͣ���г���ҽ��
    sp_dryz.First;
    while not sp_dryz.Eof do
    begin
      _yzsx := Trim(sp_dryz.FieldByName('yzsx').AsString);
      if (not sp_dryz.FieldByName('tzbz').asboolean) and
        (sp_dryz.fieldbyname('zfrq').asdatetime <= 0) and
        (sp_dryz.fieldbyname('id').AsString <> '') and
        (sp_dryz.fieldbyname('kdrq').asdatetime <= yztzsj) and
        (_yzsx = '����') then
      begin
        _id := sp_dryz.FieldByName('id').AsString;
        _zhzxsj := sp_dryz.FieldByName('zhzxsj').AsString;

        _fzph := sp_dryz.FieldByName('fzph').AsString;
        if _fzph <> '' then
        begin
          sp_tzyz.Close;
          sp_tzyz.Parameters.ParamByName('@zyh').Value := zyh;
          sp_tzyz.Parameters.ParamByName('@zxsj').Value := _yzsj;
          sp_tzyz.Parameters.ParamByName('@tzyzsj').Value :=
            strtodatetime(tzyzsj);
          sp_tzyz.Parameters.ParamByName('@czydm').Value := pub_czydm;
          sp_tzyz.Parameters.ParamByName('@id').Value := 0;
          sp_tzyz.Parameters.ParamByName('@fzph').Value := _fzph;
          sp_tzyz.Parameters.ParamByName('@sczt').Value := 8;
          sp_tzyz.ExecProc;
          sczt := sp_tzyz.Parameters.ParamByName('@sczt').Value;
          if sczt <> 0 then
            application.MessageBox('ҽ��ֹͣδ�ɹ��������²�������', '��ʾ��',
              mb_ok);
        end
        else
        begin
          sp_tzyz.Close;
          sp_tzyz.Parameters.ParamByName('@zyh').Value := zyh;
          sp_tzyz.Parameters.ParamByName('@zxsj').Value := _yzsj;
          sp_tzyz.Parameters.ParamByName('@tzyzsj').Value :=
            strtodatetime(tzyzsj);
          sp_tzyz.Parameters.ParamByName('@czydm').Value := pub_czydm;
          sp_tzyz.Parameters.ParamByName('@id').Value := _id;
          sp_tzyz.Parameters.ParamByName('@fzph').Value := '';
          sp_tzyz.Parameters.ParamByName('@sczt').Value := 8;
          sp_tzyz.ExecProc;
          sczt := sp_tzyz.Parameters.ParamByName('@sczt').Value;
          if sczt <> 0 then
            application.MessageBox('ҽ��ֹͣδ�ɹ��������²�������', '��ʾ��',
              mb_ok);
        end;

      end;
      sp_dryz.Next;
    end;
    //�������ҽ��
    if not qry_yz.active then
    begin
      refresh_show;
    end;
    //if qry_yz. then

    qry_yz.Insert;
    qry_yz.FieldByName('yzsx').Value := '����';
    qry_yz.FieldByName('lb').Value := '����';
    qry_yz.FieldByName('xmmc').Value := 'ת��ҽ��';
    qry_yz.FieldByName('sl').Value := 0;
    qry_yz.FieldByName('czks').Value := yz_kdks;
    qry_yz.FieldByName('kdks').Value := yz_kdks;
    qry_yz.FieldByName('zyh').Value := zyh;
    qry_yz.FieldByName('tmh').Value := tmh;
    qry_yz.FieldByName('xmdm').Value := '';
    qry_yz.Post;
    //���ҽԺ����0004���������
    if pub_yydm='0004' then
    begin
        qry_yz.Insert;
        qry_yz.FieldByName( 'yzsx' ).Value := '��ʱ';
        qry_yz.FieldByName( 'lb' ).Value := '����';
        qry_yz.FieldByName( 'xmmc' ).Value := 'ת��ҽ��';
        qry_yz.FieldByName( 'sl' ).Value := 0;
        qry_yz.FieldByName( 'czks' ).Value := pub_ksdm;
        qry_yz.FieldByName( 'kdks' ).Value := pub_ksdm;
        qry_yz.FieldByName( 'zyh' ).Value := zyh;
        qry_yz.FieldByName( 'tmh' ).Value := tmh;
        qry_yz.FieldByName( 'xmdm' ).Value := '';
        qry_yz.Post;
     end;
    //���ҽԺ����0004���������

    qry_yz.Append;
    recno := ScrollBox4.VertScrollBar.Position;
    grid_yzlr.SetFocus;
    ScrollBox4.VertScrollBar.Position := recno;
    grid_yzlr.SelectedIndex := 2;

    //sp_dryz.UpdateBatch( arall );
  end;
end;

procedure Tfrm_yzinput.czyz;
var
  _id, _zhzxsj, _yzsx: string;
  _fzph: string;
  _yzsj: string;
  sczt: integer;
  yztzsj: TDateTime;
begin

  DM_data.qry_pub.close;
  DM_data.qry_pub.sql.text := 'select * from zybl_zyyz where zyh=' + '''' + zyh
    +
    '''' +
    ' and xyzbz=0 and (yzsx=''����'' or (yzsx=''��ʱ'' and tzbz=0 and isnull(shry,'''')<>''δ��''))';
  try
    DM_data.qry_pub.Open;
  except
  end;
  if DM_data.qry_pub.RecordCount > 0 then
  begin
    if application.MessageBox('��ǰ��ҽ��δִ�У��Ƿ�Ҫ����ҽ��?', '��ʾ��Ϣ',
      mb_iconquestion + mb_okcancel + mb_defbutton1) = idcancel then
      abort;
  end
  else
  begin
    if pub_yydm = '0015' then
    begin
      if application.MessageBox('��ǰ����ҽ������ִ�У��Ƿ�Ҫ����ҽ��?',
        '��ʾ��Ϣ', mb_iconquestion + mb_okcancel + mb_defbutton1) = idcancel
          then
        abort;
    end;
  end;

  if
    Application.MessageBox('����ҽ������ֹͣԭ���г���ҽ������һ��ѡ��ֹͣҽ��ʱ�䣬'
    + '�Ƿ�ȷ�����?', 'ѯ��', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON1) =
    IDYES then
  begin
    yztzsj := p_pub_sj.func_sjxz();
    if yztzsj = strtodatetime('1900-01-01') then
      Exit
    else
      tzyzsj := formatdatetime('yyyy-mm-dd hh:mm:ss', yztzsj);
    //ʱ��ֹͣҽ��
    sp_yzsj.Close;
    sp_yzsj.Parameters.ParamByName('@scyzsj').Value := tzyzsj;
    sp_yzsj.ExecProc;
    _yzsj := formatdatetime('yyyymmdd',
      sp_yzsj.Parameters.ParamByName('@scyzsj').Value);

    //ֹͣ���г���ҽ��
    if sp_dryz.State = dsInactive then
      sp_dryz.open;
    sp_dryz.First;
    while not sp_dryz.Eof do
    begin
      _yzsx := Trim(sp_dryz.FieldByName('yzsx').AsString);
      if (not sp_dryz.FieldByName('tzbz').asboolean) and
        (sp_dryz.fieldbyname('zfrq').asdatetime <= 0) and
        (sp_dryz.fieldbyname('id').AsString <> '') and
        (_yzsx = '����') then
      begin
        _id := sp_dryz.FieldByName('id').AsString;
        _zhzxsj := sp_dryz.FieldByName('zhzxsj').AsString;

        _fzph := sp_dryz.FieldByName('fzph').AsString;
        if _fzph <> '' then
        begin
          sp_tzyz.Close;
          sp_tzyz.Parameters.ParamByName('@zyh').Value := zyh;
          sp_tzyz.Parameters.ParamByName('@zxsj').Value := _yzsj;
          sp_tzyz.Parameters.ParamByName('@tzyzsj').Value :=
            strtodatetime(tzyzsj);
          sp_tzyz.Parameters.ParamByName('@czydm').Value := pub_czydm;
          sp_tzyz.Parameters.ParamByName('@id').Value := 0;
          sp_tzyz.Parameters.ParamByName('@fzph').Value := _fzph;
          sp_tzyz.Parameters.ParamByName('@sczt').Value := 8;
          sp_tzyz.ExecProc;
          sczt := sp_tzyz.Parameters.ParamByName('@sczt').Value;
          if sczt <> 0 then
            application.MessageBox('ҽ��ֹͣδ�ɹ��������²�������', '��ʾ��',
              mb_ok);
        end
        else
        begin
          sp_tzyz.Close;
          sp_tzyz.Parameters.ParamByName('@zyh').Value := zyh;
          sp_tzyz.Parameters.ParamByName('@zxsj').Value := _yzsj;
          sp_tzyz.Parameters.ParamByName('@tzyzsj').Value :=
            strtodatetime(tzyzsj);
          sp_tzyz.Parameters.ParamByName('@czydm').Value := pub_czydm;
          sp_tzyz.Parameters.ParamByName('@id').Value := _id;
          sp_tzyz.Parameters.ParamByName('@fzph').Value := '';
          sp_tzyz.Parameters.ParamByName('@sczt').Value := 8;
          sp_tzyz.ExecProc;
          sczt := sp_tzyz.Parameters.ParamByName('@sczt').Value;
          if sczt <> 0 then
            application.MessageBox('ҽ��ֹͣδ�ɹ��������²�������', '��ʾ��',
              mb_ok);
        end;

      end;
      sp_dryz.Next;
    end;
    //�������ҽ��
    if not qry_yz.active then
    begin
      refresh_show;
    end;
    //if qry_yz. then

    qry_yz.Insert;
    qry_yz.FieldByName('yzsx').Value := '����';
    qry_yz.FieldByName('lb').Value := '����';
    qry_yz.FieldByName('xmmc').Value := '����ҽ��';
    qry_yz.FieldByName('sl').Value := 0;
    qry_yz.FieldByName('czks').Value := yz_kdks;
    qry_yz.FieldByName('kdks').Value := yz_kdks;
    qry_yz.FieldByName('zyh').Value := zyh;
    qry_yz.FieldByName('tmh').Value := tmh;
    qry_yz.FieldByName('xmdm').Value := '';
    qry_yz.Post;
    //�����޸� 0004ҽԺ
    if pub_yydm='0004'  then
    begin
        qry_yz.Insert;
        qry_yz.FieldByName( 'yzsx' ).Value := '��ʱ';
        qry_yz.FieldByName( 'lb' ).Value := '����';
        qry_yz.FieldByName( 'xmmc' ).Value := '����ҽ��';
        qry_yz.FieldByName( 'sl' ).Value := 0;
        qry_yz.FieldByName( 'czks' ).Value := pub_ksdm;
        qry_yz.FieldByName( 'kdks' ).Value := pub_ksdm;
        qry_yz.FieldByName( 'zyh' ).Value := zyh;
        qry_yz.FieldByName( 'tmh' ).Value := tmh;
        qry_yz.FieldByName( 'xmdm' ).Value := '';
        qry_yz.Post;
    end;
    qry_yz.Append;
    recno := ScrollBox4.VertScrollBar.Position;
    grid_yzlr.SetFocus;
    ScrollBox4.VertScrollBar.Position := recno;
    grid_yzlr.SelectedIndex := 2;

    //sp_dryz.UpdateBatch( arall );
  end;
end;

procedure Tfrm_yzinput.chkALLJCClick(Sender: TObject);
var
  OldCurrent: TBookmark;
begin
  OldCurrent := sp_cx_drjcxm.GetBookmark;
  sp_cx_drjcxm.DisableControls;
  if sp_cx_drjcxm.IsEmpty then
  begin
    if chkALLJC.Checked then
      ShowMessage('�޼�����뵥��ѡ��');
    chkALLJC.Checked := False;
  end
  else
  begin
    sp_cx_drjcxm.First;
    while not sp_cx_drjcxm.Eof do
    begin
      if not (sp_cx_drjcxm.State in [dsEdit, dsInsert]) then
      begin
        sp_cx_drjcxm.Edit;
        sp_cx_drjcxm.FieldByName('xzbz').AsBoolean := chkALLJC.Checked;
        sp_cx_drjcxm.post;
      end;
      sp_cx_drjcxm.Next;
    end;
  end;
  sp_cx_drjcxm.GotoBookmark(OldCurrent);
  sp_cx_drjcxm.EnableControls;
end;

procedure Tfrm_yzinput.chkAllJYClick(Sender: TObject);
var
  OldCurrent: TBookmark;
begin
  OldCurrent := sp_cx_drjyxm.GetBookmark;
  sp_cx_drjyxm.DisableControls;
  if sp_cx_drjyxm.IsEmpty then
  begin
    if chkAllJY.Checked then
      ShowMessage('�޼������뵥��ѡ��');
    chkAllJY.Checked := False;
  end
  else
  begin
    sp_cx_drjyxm.First;
    while not sp_cx_drjyxm.Eof do
    begin
      if not (sp_cx_drjyxm.State in [dsEdit, dsInsert]) then
      begin
        sp_cx_drjyxm.Edit;
        sp_cx_drjyxm.FieldByName('xzbz').AsBoolean := chkALLJY.Checked;
        sp_cx_drjyxm.post;
      end;
      sp_cx_drjyxm.Next;
    end;
  end;
  sp_cx_drjyxm.GotoBookmark(OldCurrent);
  sp_cx_drjyxm.EnableControls;
end;

procedure Tfrm_yzinput.chyz;
var
  _id, _zhzxsj, _yzsx: string;
  _fzph: string;
  _yzsj: string;
  sczt: integer;
  yztzsj: TDateTime;
begin

  DM_data.qry_pub.close;
  DM_data.qry_pub.sql.text := 'select * from zybl_zyyz where zyh=' + '''' + zyh
    +
    '''' +
    ' and xyzbz=0 and (yzsx=''����'' or (yzsx=''��ʱ'' and tzbz=0 and isnull(shry,'''')<>''δ��''))';
  try
    DM_data.qry_pub.Open;
  except
  end;
  if DM_data.qry_pub.RecordCount > 0 then
  begin
    if application.MessageBox('��ǰ��ҽ��δִ�У��Ƿ�Ҫ������ҽ��?',
      '��ʾ��Ϣ', mb_iconquestion + mb_okcancel + mb_defbutton1) = idcancel then
      Exit;
  end
  else
  begin
    if pub_yydm = '0015' then
    begin
      if application.MessageBox('��ǰ����ҽ������ִ�У��Ƿ�Ҫ������ҽ��?',
        '��ʾ��Ϣ', mb_iconquestion + mb_okcancel + mb_defbutton1) = idcancel
          then
        exit;
    end;
  end;

  if
    Application.MessageBox('��Ӳ���ҽ������ֹͣԭ���г���ҽ������һ��ѡ��ֹͣҽ��ʱ�䣬' + '�Ƿ�ȷ�����?', 'ѯ��', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON1) = IDYES
      then
  begin
    yztzsj := p_pub_sj.func_sjxz();
    if yztzsj = strtodatetime('1900-01-01') then
      Exit
    else
      tzyzsj := formatdatetime('yyyy-mm-dd hh:mm:ss', yztzsj);
    //ʱ��ֹͣҽ��
    sp_yzsj.Close;
    sp_yzsj.Parameters.ParamByName('@scyzsj').Value := tzyzsj;
    sp_yzsj.ExecProc;
    _yzsj := formatdatetime('yyyymmdd',
      sp_yzsj.Parameters.ParamByName('@scyzsj').Value);

    //ֹͣ���г���ҽ��
    sp_dryz.First;
    while not sp_dryz.Eof do
    begin
      _yzsx := Trim(sp_dryz.FieldByName('yzsx').AsString);
      if (not sp_dryz.FieldByName('tzbz').asboolean) and
        (sp_dryz.fieldbyname('zfrq').asdatetime <= 0) and
        (sp_dryz.fieldbyname('id').AsString <> '') and
        (sp_dryz.fieldbyname('kdrq').asdatetime <= yztzsj) and
        (_yzsx = '����') then
      begin
        _id := sp_dryz.FieldByName('id').AsString;
        _zhzxsj := sp_dryz.FieldByName('zhzxsj').AsString;

        _fzph := sp_dryz.FieldByName('fzph').AsString;
        if _fzph <> '' then
        begin
          sp_tzyz.Close;
          sp_tzyz.Parameters.ParamByName('@zyh').Value := zyh;
          sp_tzyz.Parameters.ParamByName('@zxsj').Value := _yzsj;
          sp_tzyz.Parameters.ParamByName('@tzyzsj').Value :=
            strtodatetime(tzyzsj);
          sp_tzyz.Parameters.ParamByName('@czydm').Value := pub_czydm;
          sp_tzyz.Parameters.ParamByName('@id').Value := 0;
          sp_tzyz.Parameters.ParamByName('@fzph').Value := _fzph;
          sp_tzyz.Parameters.ParamByName('@sczt').Value := 8;
          sp_tzyz.ExecProc;
          sczt := sp_tzyz.Parameters.ParamByName('@sczt').Value;
          if sczt <> 0 then
            application.MessageBox('ҽ��ֹͣδ�ɹ��������²�������', '��ʾ��',
              mb_ok);
        end
        else
        begin
          sp_tzyz.Close;
          sp_tzyz.Parameters.ParamByName('@zyh').Value := zyh;
          sp_tzyz.Parameters.ParamByName('@zxsj').Value := _yzsj;
          sp_tzyz.Parameters.ParamByName('@tzyzsj').Value :=
            strtodatetime(tzyzsj);
          sp_tzyz.Parameters.ParamByName('@czydm').Value := pub_czydm;
          sp_tzyz.Parameters.ParamByName('@id').Value := _id;
          sp_tzyz.Parameters.ParamByName('@fzph').Value := '';
          sp_tzyz.Parameters.ParamByName('@sczt').Value := 8;
          sp_tzyz.ExecProc;
          sczt := sp_tzyz.Parameters.ParamByName('@sczt').Value;
          if sczt <> 0 then
            application.MessageBox('ҽ��ֹͣδ�ɹ��������²�������', '��ʾ��',
              mb_ok);
        end;

      end;
      sp_dryz.Next;
    end;
    //��Ӳ���ҽ��
    if not qry_yz.active then
    begin
      refresh_show;
    end;
    //if qry_yz. then

    qry_yz.Insert;
    qry_yz.FieldByName('yzsx').Value := '����';
    qry_yz.FieldByName('lb').Value := '����';
    qry_yz.FieldByName('xmmc').Value := '����ҽ��';
    qry_yz.FieldByName('sl').Value := 0;
    qry_yz.FieldByName('czks').Value := yz_kdks;
    qry_yz.FieldByName('kdks').Value := yz_kdks;
    qry_yz.FieldByName('zyh').Value := zyh;
    qry_yz.FieldByName('tmh').Value := tmh;
    qry_yz.FieldByName('xmdm').Value := '';
    qry_yz.Post;

    //���ҽԺ����0004�����޸�

    if pub_yydm='0004' then
     begin
        qry_yz.Insert;
        qry_yz.FieldByName( 'yzsx' ).Value := '��ʱ';
        qry_yz.FieldByName( 'lb' ).Value := '����';
        qry_yz.FieldByName( 'xmmc' ).Value := '����ҽ��';
        qry_yz.FieldByName( 'sl' ).Value := 0;
        qry_yz.FieldByName( 'czks' ).Value := pub_ksdm;
        qry_yz.FieldByName( 'kdks' ).Value := pub_ksdm;
        qry_yz.FieldByName( 'zyh' ).Value := zyh;
        qry_yz.FieldByName( 'tmh' ).Value := tmh;
        qry_yz.FieldByName( 'xmdm' ).Value := '';
        qry_yz.Post;
    end;


    qry_yz.Append;
    recno := ScrollBox4.VertScrollBar.Position;
    grid_yzlr.SetFocus;
    ScrollBox4.VertScrollBar.Position := recno;
    grid_yzlr.SelectedIndex := 2;

    //sp_dryz.UpdateBatch( arall );
  end;
end;

procedure Tfrm_yzinput.OnMouseWheel_yzzx(var Msg: TMsg; var Handled: Boolean);
begin
  if Msg.message = WM_MouseWheel then
  begin
    if Msg.wParam < 0 then
      SendMessage(ScrollBox1.Handle, WM_VSCROLL, SB_LINEDOWN, 0)
    else
      SendMessage(ScrollBox1.Handle, WM_VSCROLL, SB_LINEUP, 0);
    Handled := True;
  end;
end;

procedure Tfrm_yzinput.OnMouseWheel_yzlr(var Msg: TMsg; var Handled: Boolean);
begin
  if Msg.message = WM_MouseWheel then
  begin
    if Msg.wParam < 0 then
      SendMessage(ScrollBox4.Handle, WM_VSCROLL, SB_LINEDOWN, 0)
    else
      SendMessage(ScrollBox4.Handle, WM_VSCROLL, SB_LINEUP, 0);
    Handled := True;
  end;
end;

procedure Tfrm_yzinput.proc_yf_filer;
begin
  if yzlb = '��ҩ' then
  begin
    qry_ypyf.Sort := 'lb DESC';
  end
  else
  begin
    qry_ypyf.Sort := 'lb ASC';
  end;
end;

procedure Tfrm_yzinput.yzqxtf(var id: integer; var kdys: string);
var
  sftf: string;
begin
  sftf := '1';
  DM_data.qry_pub.close;
  DM_data.qry_pub.SQL.Text :=
    'select * from zybl_zyyz a,zybl_zyyz_zxjl b where a.ph=b.ph and a.id=' +
    inttostr(id);
  try
    DM_data.qry_pub.Open;
  except
  end;
  if DM_data.qry_pub.IsEmpty then
  begin
    sftf := '0';
  end
  else
  begin
    DM_data.qry_pub.close;
    DM_data.qry_pub.SQL.Text :=
      'select a.*,b.fydm from zybl_zyyz a,sys_yzxm b where a.xmdm*=b.xmdm and id=' +
      inttostr(id);
    try
      DM_data.qry_pub.Open;
    except
    end;
    qry_cx.Close;
    qry_cx.SQL.text := 'select * from zybl_bsflb where lbmc=' + '''' +
      DM_data.qry_pub.FieldByName('lb').AsString + '''';
    qry_cx.Open;

    if (DM_data.qry_pub.FieldByName('lb').AsString = 'ҩƷ') or
      (DM_data.qry_pub.FieldByName('lb').AsString = 'ҩһ') then
    begin
      ShowMessage('ȡ��ҩƷҽ����֪ͨ��ʿ��ҩƷ��' +
        DM_data.qry_pub.FieldByName('xmmc').asstring + ' ' +
        DM_data.qry_pub.FieldByName('sl').asstring + ' ' +
        DM_data.qry_pub.FieldByName('dw').asstring);
    end
    else if (qry_cx.IsEmpty) and
      (DM_data.qry_pub.FieldByName('lb').AsString <> '����') then
    begin
      if DM_data.qry_pub.FieldByName('lb').AsString = '����' then
      begin
        sp_ty_ypcx.close;
        sp_ty_ypcx.Parameters.Refresh;
        sp_ty_ypcx.Parameters.ParamByName('@zyh').Value := zyh;
        sp_ty_ypcx.Open;
        sp_ty_ypcx.Locate('ypdm', DM_data.qry_pub.FieldByName('xmdm').asstring,
          []);
        if not sp_ty_ypcx.Locate('ypdm',
          DM_data.qry_pub.FieldByName('xmdm').asstring, []) then
        begin
          sftf := '0';
        end
        else if DM_data.qry_pub.FieldByName('sl').asfloat >
          sp_ty_ypcx.FieldByName('ypsyzxsl').asfloat then
        begin
          sftf := '0';
        end;

      end
      else
      begin
        qry_cx.Close;
        qry_cx.SQL.text :=
          'select fydm,sum(fysl*(fyje/abs(fyje))) sl from zysf_zyfydx where zyh=' + ''''
          + zyh + ''' group by fydm';
        qry_cx.Open;
        qry_cx.Locate('fydm', DM_data.qry_pub.FieldByName('fydm').asstring, []);
        if not qry_cx.Locate('fydm',
          DM_data.qry_pub.FieldByName('fydm').asstring, []) then
        begin
          sftf := '0';
        end
        else if DM_data.qry_pub.FieldByName('sl').asfloat >
          qry_cx.FieldByName('sl').asfloat then
        begin
          sftf := '0';
        end;
      end;
      if sftf <> '0' then
      begin
        sp_lsyztf.Close;
        sp_lsyztf.Parameters.Refresh;
        sp_lsyztf.Parameters.ParamByName('@yzid').Value := id;
        sp_lsyztf.Parameters.ParamByName('@bqdm').Value := pub_bqdm;
        sp_lsyztf.Parameters.ParamByName('@zyh').Value := zyh;
        sp_lsyztf.Parameters.ParamByName('@czydm').Value := pub_czydm;
        sp_lsyztf.Parameters.ParamByName('@kdys').Value := kdys;
        sp_lsyztf.Parameters.ParamByName('@zxsj').Value :=
          FormatDateTime('yyyyMMdd', frm_func.curr_date);
        sp_lsyztf.Parameters.ParamByName('@sczt').Value := '1';
        sp_lsyztf.ExecProc;
        ShowMessage('��ҽ�����óɹ���');
      end;
    end;
  end;
end;

function Tfrm_yzinput.isXhNull():Boolean;
begin
  Result := (grid_yzlr.SelectedIndex = 16) and
            (Trim(grid_yzlr.Columns[16].DisplayText) = '');
end;

procedure Tfrm_yzinput.xhcl(fs: Integer);
begin
  if not isXhNull then
  begin
    yzNew(fs);
  end
  else
  begin
    MessageDlg('��Ų���Ϊ��',  mtInformation, [mbOK], 0);
    grid_yzlr.SelectedIndex := 16;
    qry_yz.Edit;
  end;
end;

initialization
  RegisterClass(Tfrm_yzinput);
end.

