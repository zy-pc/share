
unit p_yzinput_lishi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Buttons, DBCtrls, Mask, ExtCtrls, Menus, GridsEh,
  QRCtrls, QuickRpt, grimgctrl, ADODB, DB, DBGridEh, cxPC, cxControls, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData,
  cxTextEdit, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, cxLookAndFeelPainters,
  cxButtons;
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
  Tfrm_yzinput_lishi = class( TForm )
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
    qry_yzsl: TIntegerField;
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
    Label26: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
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
    grid_yzlr: TDBGridEh;
    QRLabel61: TQRLabel;
    QRLabel67: TQRLabel;
    ComboBox1: TComboBox;
    QRShape65: TQRShape;
    bt_ztsave: TButton;
    bt_zt: TButton;
    BitBtn5: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn2: TBitBtn;
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
    sp_lsyzzh: TADOStoredProc;
    qry_cx_jyjg_wsw: TADOQuery;
    ds_cx_jyjg_wsw: TDataSource;
    qry_cx_jyjg: TADOQuery;
    ds_cx_jyjg: TDataSource;
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
    cxGridDBTableView1Column1: TcxGridDBColumn;
    cxGridDBColumn13: TcxGridDBColumn;
    cxGridDBColumn14: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    qry_hjjl: TADOQuery;
    procedure DBEdit7Exit( Sender: TObject );
    procedure Edit2KeyPress( Sender: TObject; var Key: Char );
    procedure bt_lsyzClick( Sender: TObject );
    procedure FormKeyDown( Sender: TObject; var Key: Word; Shift: TShiftState );
    procedure bt_ztClick( Sender: TObject );
    procedure Edit4KeyPress( Sender: TObject; var Key: Char );
    procedure Edit3KeyPress( Sender: TObject; var Key: Char );
    procedure grid_yzKeyPress( Sender: TObject; var Key: Char );
    procedure grid_yzExit( Sender: TObject );
    procedure Edit_clKeyPress( Sender: TObject; var Key: Char );
    procedure Edit_ypKeyPress( Sender: TObject; var Key: Char );
    procedure grid_ypKeyPress( Sender: TObject; var Key: Char );
    procedure grid_ypExit( Sender: TObject );
    procedure FormShow( Sender: TObject );
    procedure bt_exitClick( Sender: TObject );
    procedure refresh_yz; //刷新医嘱记录
    procedure ypinyz;
    procedure xminyz;
    procedure delete_yz( key: word );
    procedure xzsm( Sender: TDbmemo );
    procedure Button1Click( Sender: TObject );
    procedure db_brxxExit( Sender: TObject );
    procedure e_tmhExit( Sender: TObject );
    procedure N1Click( Sender: TObject );
    procedure N2Click( Sender: TObject );
    procedure grid_yzlrKeyPress( Sender: TObject; var Key: Char );
    procedure grid_yzlrKeyDown( Sender: TObject; var Key: Word;
      Shift: TShiftState );
    procedure e_tmhKeyDown( Sender: TObject; var Key: Word; Shift: TShiftState );
    procedure dbg_ysDblClick( Sender: TObject );
    procedure qry_yzAfterScroll( DataSet: TDataSet );
    procedure qry_yzAfterInsert( DataSet: TDataSet );
    procedure qry_yzBeforeInsert( DataSet: TDataSet );
    procedure grid_ksExit( Sender: TObject );
    procedure grid_ksDblClick( Sender: TObject );
    procedure grid_ksKeyDown( Sender: TObject; var Key: Word;
      Shift: TShiftState );
    procedure grid_yzDblClick( Sender: TObject );
    procedure grid_ypDblClick( Sender: TObject );
    procedure grid_yzlr_ColExit;
    procedure grid_yzlrMouseDown( Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer );
    procedure db_brxxDblClick( Sender: TObject );
    procedure db_brxxKeyDown( Sender: TObject; var Key: Word;
      Shift: TShiftState );
    procedure grid_yzlrondrawcolumncell( Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState );
    procedure aptzyzClick( Sender: TObject );
    procedure dbg_ysExit( Sender: TObject );
    procedure cxTabSheet1Show( Sender: TObject );
    procedure grid_ypDrawColumnCell( Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState );
    procedure cxTabSheet2Show( Sender: TObject );
    procedure BBtn_print_cqClick( Sender: TObject );
    procedure BBtn_print_lsClick( Sender: TObject );
    procedure edt_tmhKeyDown( Sender: TObject; var Key: Word;
      Shift: TShiftState );
    procedure DBGridEh2DblClick( Sender: TObject );
    procedure DBGridEh2Exit( Sender: TObject );
    procedure DBGridEh2KeyDown( Sender: TObject; var Key: Word;
      Shift: TShiftState );
    procedure DBGridEh1DrawColumnCell( Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState );
    procedure DBGridEh3DrawColumnCell( Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState );
    procedure qry_ysAfterScroll( DataSet: TDataSet );
    procedure grid_yzlrColExit( Sender: TObject );
    procedure e_yzysKeyPress( Sender: TObject; var Key: Char );
    procedure dbg_ysKeyPress( Sender: TObject; var Key: Char );
    procedure bt_ztsaveClick( Sender: TObject );
    procedure grid_yzlrDblClick( Sender: TObject );
    procedure N3Click( Sender: TObject );
    procedure newyzfzbh;
    procedure N4Click( Sender: TObject );
    procedure DBGridEh4DrawColumnCell( Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState );
    procedure QRSubDetail1NeedData( Sender: TObject; var MoreData: Boolean );
    procedure QuickRep1BeforePrint( Sender: TCustomQuickRep;
      var PrintReport: Boolean );
    procedure QRSubDetail1BeforePrint( Sender: TQRCustomBand;
      var PrintBand: Boolean );
    procedure FormCreate( Sender: TObject );
    procedure DBGridEh4ColWidthsChanged( Sender: TObject );
    procedure grid_yzlrColWidthsChanged( Sender: TObject );
    procedure qry_yzAfterOpen( DataSet: TDataSet );
    procedure sp_dryzAfterOpen( DataSet: TDataSet );
    procedure QRSubDetail2NeedData( Sender: TObject; var MoreData: Boolean );
    procedure QRSubDetail2BeforePrint( Sender: TQRCustomBand;
      var PrintBand: Boolean );
    procedure QuickRep2BeforePrint( Sender: TCustomQuickRep;
      var PrintReport: Boolean );
    procedure DBGridEh1ColWidthsChanged( Sender: TObject );
    procedure sp_zxjl_cqAfterOpen( DataSet: TDataSet );
    procedure sp_zxjl_lsAfterOpen( DataSet: TDataSet );
    procedure DBGridEh3ColWidthsChanged( Sender: TObject );
    procedure TabSheet1Show( Sender: TObject );
    procedure TabSheet2Show( Sender: TObject );
    procedure FormResize( Sender: TObject );
    procedure BitBtn_upClick( Sender: TObject );
    procedure BitBtn_downClick( Sender: TObject );
    procedure cxButton1Click( Sender: TObject );
    procedure BitBtn8Click( Sender: TObject );
    procedure N5Click( Sender: TObject );
    procedure N6Click( Sender: TObject );
    procedure N7Click( Sender: TObject );
    procedure N8Click( Sender: TObject );
    procedure DBGridEh5KeyPress( Sender: TObject; var Key: Char );
    procedure DBGridEh5Exit( Sender: TObject );
    procedure BitBtn2Click( Sender: TObject );
    procedure BitBtn1Click( Sender: TObject );
    procedure cxTabSheet3Show( Sender: TObject );
    procedure BitBtn3Click( Sender: TObject );
    procedure BitBtn4Click( Sender: TObject );
    procedure BitBtn5Click( Sender: TObject );
    procedure BitBtn6Click( Sender: TObject );
    function grid_yzlrMoveRecords( Sender: TObject; BookmarkList: TStrings;
      ToRecNo, TreeLevel: Integer; CheckOnly: Boolean ): Boolean;
    procedure BitBtn7Click( Sender: TObject );
    procedure BitBtn18Click( Sender: TObject );
    procedure ComboBox1Change( Sender: TObject );
    procedure cxButton2Click( Sender: TObject );
    procedure btn1Click( Sender: TObject );
    procedure MenuItem2Click( Sender: TObject );
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

  private
    jybz:Boolean;
    procedure yzinypfymx( zyh, ypid, xmid, clid, ph: string );
    procedure zyzadd;
    procedure yzNew( fs: integer );
    procedure yzXmsr( fs: integer );
    procedure yzsxsr( fs: integer );
    procedure yzlbsr( fs: integer );
    procedure yytjjs( fs: integer );
    procedure czkscl( fs: integer );
    procedure tjyz;
    procedure yldwjc( fs: integer );
    procedure ypjs;
    procedure qtjs;
    procedure zdkz;
    procedure tjyzfcqyz;
    procedure fcqyzlb;
    procedure sljc( fs: integer );
    procedure yz_lr_yz;
    procedure yz_cx_cqph( yzsx: string );
    procedure Proc_Seek_dj( const v_tmh: string );
    procedure Proc_Seek_yzzxjl( const v_tmh, v_zyh, v_brxm: string );
    function yz_cx_yfjsypsl: real;
    procedure proc_xzyf;
    procedure shyz;
    procedure chyz;
    procedure OnMouseWheel_yzzx( var Msg: TMsg; var Handled: Boolean );
    { Private declarations }
  public
    tmh, zyh, brxm, lszyh: string; //住院号
    ls_dm, ls_mc, ls_ks, curr_value: string;
    ls_zylsj: single;
    scbz, ztid: integer;
    clph, xmph, ypph, jcph, jyph, qtph: string; //材料，治疗，药品，检查，检验,其它
    zyyz_mbmc: string; //医嘱模板名称
    rectno: integer;
    paper_size: integer;
    mbdy: Boolean;
    prv_zyfdm, prv_xyfdm: string;
    procedure ad_ggdisplay;

    function find_today_yzxm( xmdm: string ): integer;
    function find_current_yzxm( xmdm: string ): integer;
    procedure saveyz;
    procedure saveyz_tj;
    procedure createrect( var myrect1: TTmyrect; dataset_rect: TCustomADODataSet; grid_yzlr1: Tdbgrideh; x1, x2, x3: integer );
    procedure yzqxtf(var id:integer;var kdys:string);
    { Public declarations }
  end;

var
  myrect: TTmyrect;
  myrect_cx, myrect_zx_cq, myrect_zx_ls: TTmyrect;
  bcbz: boolean;
  frm_yzinput_lishi: Tfrm_yzinput_lishi;
  yzlb: string; //医嘱类别
  clfs: string; //检索方式 药品,医嘱
  zy_czks: string; //处置科室
  yzsx, yzys, fzbh: string; //医嘱属性 ,医嘱医生
  kz, bz, sgtzbz: boolean; // 控制AffterScoll calmhawk\ - 2007-01-09
  kzfs: string; // 控制负数输入
  kzbz, tzbz, wz: integer; //控制标志,
  p_yzlb: string; //医嘱类别
  tzyzqr: integer;
  tzyzsj, kdyzsj: string;
  maxxh: integer;
  yzxgbz: boolean;
  zzdx:string;
function findinarray( myrect: TTmyrect; zd: string ): integer;
procedure initarray( myrect: TTmyrect );

const
  con_sql_zy = 'select * from zysf_zydj where (zyh=:zyh or tmh like :tmh) and ksdm=:ksdm';
  con_sql_cy = 'select * from zysf_cydj where (zyh=:zyh or tmh like :tmh) and ksdm=:ksdm';
implementation

{$R *.dfm}
uses p_dm, p_func, p_yzzt, p_treeview_ctxz, p_treeview_ctwh, p_bylsyz, p_tjyz, p_yzfz,
  p_zyyzmbmc, p_jyxmwrite_zy, p_tzyzsj, p_xgyzzxsj, p_xz_fyyf, p_cqyzxzdy,
  p_lsyzxzdy, p_jcsqd, p_dslr, p_zxdxd,p_xgyl,p_xbs,p_pub_sj;

procedure initarray( myrect: TTmyrect );
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

procedure Tfrm_yzinput_lishi.newyzfzbh; //取得新的分组ID号
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

function Tfrm_yzinput_lishi.yz_cx_yfjsypsl: real;
begin
  with sp_cx_yzyljssl do
  begin
    close;
    Parameters.ParamByName( '@ypdm' ).Value := qry_yz.FieldByName( 'xmdm' ).AsString;
    Parameters.ParamByName( '@ypyf' ).Value := qry_yz.FieldByName( 'ypyf' ).AsString;
    Parameters.ParamByName( '@ypyl' ).Value := qry_yz.FieldByName( 'ypyl' ).AsFloat;
    open;
  end;
  Result := realtomoney1( sp_cx_yzyljssl.fieldbyname( 'ypsl' ).AsFloat / 10 ) * 10;
end;

procedure Tfrm_yzinput_lishi.yz_cx_cqph( yzsx: string );
begin
  ypph := '';
  jcph := '';
  jyph := '';
  clph := '';
  xmph := '';
  qry_yz.first;
  while not qry_yz.Eof do
  begin
    if ( trim( qry_yz.FieldByName( 'yzsx' ).AsString ) = yzsx ) then
    begin
      if trim( qry_yz.FieldByName( 'lb' ).AsString ) = '药品' then
      begin
        if trim( qry_yz.FieldByName( 'ph' ).AsString ) <> '' then
          ypph := trim( qry_yz.FieldByName( 'ph' ).Value );
      end
      else
        if trim( qry_yz.FieldByName( 'lb' ).AsString ) = '材料' then
        begin
          if trim( qry_yz.FieldByName( 'ph' ).AsString ) <> '' then
            clph := trim( qry_yz.FieldByName( 'ph' ).Value );
        end
        else
          if trim( qry_yz.FieldByName( 'lb' ).AsString ) = '治疗' then
          begin
            if trim( qry_yz.FieldByName( 'ph' ).AsString ) <> '' then
              xmph := trim( qry_yz.FieldByName( 'ph' ).Value );
          end
          else
            if trim( qry_yz.FieldByName( 'lb' ).AsString ) = '检验' then
            begin
              if trim( qry_yz.FieldByName( 'ph' ).AsString ) <> '' then
                jyph := trim( qry_yz.FieldByName( 'ph' ).Value );
            end
            else
              if trim( qry_yz.FieldByName( 'lb' ).AsString ) = '检查' then
              begin
                if trim( qry_yz.FieldByName( 'ph' ).AsString ) <> '' then
                  jcph := trim( qry_yz.FieldByName( 'ph' ).Value );
              end
              else
                if trim( qry_yz.FieldByName( 'lb' ).AsString ) = '其它' then
                begin
                  if trim( qry_yz.FieldByName( 'ph' ).AsString ) <> '' then
                    qtph := trim( qry_yz.FieldByName( 'ph' ).Value );
                end;
    end;
    qry_yz.Next;
  end;

end;

procedure Tfrm_yzinput_lishi.yz_lr_yz;
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
    qry_yz.FieldByName( 'kdys' ).Value := pub_czydm;
    qry_yz.FieldByName( 'kdrq' ).Value := frm_func.curr_date;
    qry_yz.post;
    qry_yz.Next;
  end;
  qry_yz.First;
  while not qry_yz.Eof do
  begin
    if ( trim( qry_yz.FieldByName( 'lb' ).AsString ) <> '其它' ) and
      ( trim( qry_yz.FieldByName( 'xmdm' ).AsString ) = '' ) or ( trim( qry_yz.FieldByName( 'xmmc' ).AsString ) = '' ) then
    begin
      qry_yz.Delete;
    end
    else
      if ( trim( qry_yz.FieldByName( 'lb' ).AsString ) <> '其它' ) then
      begin
        if ( trim( qry_yz.FieldByName( 'lb' ).AsString ) = '' ) then
        begin
          showMessage( '请输入医嘱类别!' );
          grid_yzlr.SetFocus;
          grid_yzlr.SelectedIndex := 1;
          qry_yz.EnableControls;
          abort;
        end
        else
          if ( trim( qry_yz.FieldByName( 'lb' ).AsString ) <> '药品' ) and
            ( trim( qry_yz.FieldByName( 'lb' ).AsString ) <> '材料' ) and
            ( trim( qry_yz.FieldByName( 'lb' ).AsString ) <> '治疗' ) and
            ( trim( qry_yz.FieldByName( 'lb' ).AsString ) <> '检验' ) and
            ( trim( qry_yz.FieldByName( 'lb' ).AsString ) <> '检查' ) and
            ( trim( qry_yz.FieldByName( 'lb' ).AsString ) <> '成药' ) then
          begin
            showMessage( '医嘱类别输入错误!请重新输入!' );
            grid_yzlr.SetFocus;
            grid_yzlr.SelectedIndex := 1;
            qry_yz.EnableControls;
            abort;
          end;
        if ( trim( qry_yz.FieldByName( 'yzsx' ).AsString ) = '' ) then
        begin
          showMessage( '请输入医嘱属性!' );
          grid_yzlr.SetFocus;
          grid_yzlr.SelectedIndex := 0;
          abort;
        end
        else
          if ( trim( qry_yz.FieldByName( 'yzsx' ).AsString ) <> '长期' ) and
            ( trim( qry_yz.FieldByName( 'yzsx' ).AsString ) <> '临时' ) and
            ( trim( qry_yz.FieldByName( 'lb' ).AsString ) <> '其它' ) then
          begin
            showMessage( '医嘱属性输入错误!请重新输入!' );
            grid_yzlr.SetFocus;
            grid_yzlr.SelectedIndex := 1;
            qry_yz.EnableControls;
            abort;
          end;
        //---------------药品用药途径-----------------------------
        if ( trim( qry_yz.FieldByName( 'lb' ).AsString ) = '药品' ) or ( trim( qry_yz.FieldByName( 'lb' ).AsString ) = '成药' ) then
        begin
          if not qry_gytj.Locate( 'mc', qry_yz.FieldByName( 'yytj' ).AsString, [] ) then
          begin
            showMessage( '用药途径输入错误，请重新输入!' );
            grid_yzlr.SetFocus;
            grid_yzlr.SelectedIndex := 6;
            qry_yz.EnableControls;
            abort;
          end;
        end;
        //----------------药品用法-----------------------------------
        if ( trim( qry_yz.FieldByName( 'lb' ).AsString ) = '药品' ) or ( trim( qry_yz.FieldByName( 'lb' ).AsString ) = '成药' ) then
        begin
          if ( qry_ypyf.Locate( 'mc', qry_yz.FieldByName( 'ypyf' ).AsString, [] ) = false ) and ( Trim( qry_yz.FieldByName( 'yzsx' ).AsString ) = '长期' ) then
          begin
            showMessage( '药品用法输入错误，请重新输入!' );
            grid_yzlr.SetFocus;
            grid_yzlr.SelectedIndex := 5;
            qry_yz.EnableControls;
            abort;
          end
          else
            if ( qry_ypyf.Locate( 'mc', qry_yz.FieldByName( 'ypyf' ).AsString, [] ) = false ) and ( Trim( qry_yz.FieldByName( 'yzsx' ).AsString ) = '临时' )
              and ( Trim( qry_yz.FieldByName( 'ypyf' ).AsString ) <> '' ) then
            begin
              showMessage( '药品用法输入错误，请重新输入!' );
              grid_yzlr.SetFocus;
              grid_yzlr.SelectedIndex := 5;
              qry_yz.EnableControls;
              abort;
            end;

        end;
        //----------------药品用量-----------------------------------
        if ( trim( qry_yz.FieldByName( 'lb' ).AsString ) = '药品' ) or ( trim( qry_yz.FieldByName( 'lb' ).AsString ) = '成药' ) then
        begin
          try
            if qry_yz.FieldByName( 'ypyl' ).AsFloat < 0 then
            begin
              showMessage( '药品用量输入错误，请输入大于零的数字!' );
              grid_yzlr.SetFocus;
              grid_yzlr.SelectedIndex := 3;
              qry_yz.EnableControls;
              abort;
            end;
          except
            showMessage( '药品用量输入错误，请输入大于零的数字!' );
            grid_yzlr.SetFocus;
            grid_yzlr.SelectedIndex := 3;
            qry_yz.EnableControls;
            abort;
          end;
        end;
        //------------------ 处置科室-------------------------
        qry_ks.Filtered := false;
        if ( trim( qry_yz.FieldByName( 'lb' ).AsString ) <> '药品' ) then
        begin
          if ( trim( qry_yz.FieldByName( 'czks' ).AsString ) = '' ) then
          begin
            showMessage( '请输入医嘱处置科室!' );
            grid_yzlr.SetFocus;
            grid_yzlr.SelectedIndex := 9;
            qry_yz.EnableControls;
            abort;
          end
          else
          begin
            if not qry_ks.Locate( 'dm', trim( qry_yz.FieldByName( 'czks' ).AsString ), [] ) then
            begin
              showMessage( '处置科室输入错误!请重新输入!' );
              grid_yzlr.SetFocus;
              grid_yzlr.SelectedIndex := 9;
              qry_yz.EnableControls;
              abort;
            end;
          end;
        end;
        //---------数量验证-------------------------
        if ( trim( qry_yz.FieldByName( 'sl' ).AsString ) = '' ) then
        begin
          showMessage( '数量不能为空!' );
          grid_yzlr.SetFocus;
          grid_yzlr.SelectedIndex := 7;
          qry_yz.EnableControls;
          abort;
        end
        else
        begin
          try
            if strtoint( trim( qry_yz.FieldByName( 'sl' ).AsString ) ) < 1 then
            begin
              //  showMessage('数量不能小于 1 !');
              grid_yzlr.SetFocus;
              grid_yzlr.SelectedIndex := 7;
              //qry_yz.Edit;
              abort;
            end;
          except
            showMessage( '数量不能小于1!' );
            grid_yzlr.SetFocus;
            grid_yzlr.SelectedIndex := 7;
            qry_yz.EnableControls;
            abort;
          end;
        end;
        if ((pub_yydm='0013') and (qry_yz.FieldByName('xmdm').asstring='01000001000357')
            and (qry_yz.FieldByName('yzsx').asstring='临时') and (qry_yz.FieldByName('bz').asstring='备用')) or
            ((pub_yydm='0013') and (Pos('皮试', qry_yz.FieldByName('xmmc').asstring)>0) and
             (qry_yz.FieldByName('lb').asstring='治疗') )  then
        begin
         //三台县医院胰岛素开备用不需要验证 ,治疗类开皮试不验证
        end
        else
        begin
        //------------------项目名称与代码一致性校验-------------------
        if not qry_xmyz.Locate( 'xmmc', trim( qry_yz.FieldByName( 'xmmc' ).AsString ), [] ) then
        begin
          showMessage( '医嘱项目名称输入错误!请重新输入!' );
          grid_yzlr.SetFocus;
          grid_yzlr.SelectedIndex := 2;
          qry_yz.EnableControls;
          abort;
        end;
        //------------------项目与类别一致性校验-------------------
        qry_xmyz.Locate( 'xmdm', trim( qry_yz.FieldByName( 'xmdm' ).AsString ), [] );
        if qry_xmyz.FieldByName( 'lb' ).AsString <> qry_yz.FieldByName( 'lb' ).AsString then
        begin
          showMessage( '项目与医嘱类别不一致错误!请重新输入!' + #13 + '当前项目类别为 "' + qry_xmyz.FieldByName( 'lb' ).AsString + '"' );
          grid_yzlr.SetFocus;
          grid_yzlr.SelectedIndex := 2;
          qry_yz.EnableControls;
          abort;
        end;
        end;
      end
      else
        if ( trim( qry_yz.FieldByName( 'lb' ).AsString ) = '其它' ) then
        begin
          if ( trim( qry_yz.FieldByName( 'czks' ).AsString ) = '' ) then
          begin
            showMessage( '请输入医嘱处置科室!' );
            grid_yzlr.SetFocus;
            grid_yzlr.SelectedIndex := 9;
            qry_yz.EnableControls;
            abort;
          end
          else
          begin
            if not qry_ks.Locate( 'dm', trim( qry_yz.FieldByName( 'czks' ).AsString ), [] ) then
            begin
              showMessage( '处置科室输入错误!请重新输入!' );
              grid_yzlr.SetFocus;
              grid_yzlr.SelectedIndex := 9;
              qry_yz.EnableControls;
              abort;
            end;
          end;

        end;
    qry_yz.next;
  end;
end;

procedure Tfrm_yzinput_lishi.sljc( fs: integer );
var
  ypsl: real;
begin
  if yzlb = '药品' then
  begin
    if qry_yz.FieldByName( 'sl' ).AsInteger > 1000 then
    begin
      application.MessageBox( '输入数量太大，请注意！', '提示', 0 + 48 );
      qry_yz.FieldByName( 'sl' ).AsInteger := 1;
      grid_yzlr.SelectedIndex := 7;
    end;
    {   if qry_yz.FieldByName('ypyl').AsFloat > 10000 then
       begin
         application.MessageBox('输入用量太大，请注意！', '提示', 0 + 48);
         qry_yz.FieldByName('ypyl').AsFloat := 1;
         grid_yzlr.SelectedIndex := 3;
       end;}
    try

      if qry_yz.FieldByName( 'ypyl' ).AsFloat < 0 then
      begin
        showMessage( '药品用量输入错误，请输入大于零的数字!' );
        grid_yzlr.SetFocus;
        grid_yzlr.SelectedIndex := 3;
        abort;
      end;
    except
      showMessage( '药品用量输入错误，请输入大于零的数字!' );
      grid_yzlr.SetFocus;
      grid_yzlr.SelectedIndex := 3;
      abort;
    end;

    ypsl := yz_cx_yfjsypsl;

    if (qry_yz.fieldbyname('yzsx').asstring='临时') and (qry_yz.fieldbyname('lb').asstring='药品')
       and (Trim(qry_yz.fieldbyname('ypyf').asstring)='') then
    begin
      with sp_cx_yzyljssl do
        begin
         close;
          Parameters.ParamByName( '@ypdm' ).Value := qry_yz.FieldByName( 'xmdm' ).AsString;
          Parameters.ParamByName( '@ypyf' ).Value := 'qd';
          Parameters.ParamByName( '@ypyl' ).Value := qry_yz.FieldByName( 'ypyl' ).AsFloat;
          open;
         end;
       ypsl := realtomoney1( sp_cx_yzyljssl.fieldbyname( 'ypsl' ).AsFloat / 10 ) * 10;
    end;


    if ( ypsl > 0 ) and ( grid_yzlr.SelectedField.FieldName <> 'sl' ) then
      qry_yz.FieldByName( 'sl' ).AsFloat := ypsl;
  end
  else  if ((yzlb='治疗') or (yzlb='检验') or (yzlb='检查')) and (grid_yzlr.SelectedField.FieldName='ypyf') then
  begin
  DM_data.qry_pub.Close;
  DM_data.qry_pub.sql.text:='select * from sys_ypyf where mc='+''''+trim(qry_yz.FieldByName('ypyf').asstring)+'''';
  DM_data.qry_pub.open;
  if (DM_data.qry_pub.IsEmpty=False) and ((Trim(qry_yz.FieldByName('lb').asstring)='治疗') or
      (Trim(qry_yz.FieldByName('lb').asstring)='检验') or
      (Trim(qry_yz.FieldByName('lb').asstring)='检查'))   then
  begin
    qry_yz.Edit;
    qry_yz.FieldByName( 'sl' ).AsString := DM_data.qry_pub.FieldByName('sl').asstring;
    qry_yz.Post;
  end;
  
  end;

  if grid_yzlr.SelectedField.FieldName='sl'  then
  begin
    if (qry_yz.State=dsInsert) or (qry_yz.State=dsedit) then
    qry_yz.Post;
  end;
        

  if grid_yzlr.SelectedField.FieldName = 'ypyl' then
    grid_yzlr.SelectedIndex := 5
  else
    if grid_yzlr.SelectedField.FieldName = 'ypyf' then
      grid_yzlr.SelectedIndex := 6
    else
      if grid_yzlr.SelectedField.FieldName = 'yytj' then
        grid_yzlr.SelectedIndex := 7
      else
        if grid_yzlr.SelectedField.FieldName = 'sl' then
        begin
          //          if (yzlb = '药品') or (yzlb = '材料') or (yzlb='治疗') or then
          if ( yzlb <> '其它' ) then
          begin
            try
              if ( qry_yz.FieldByName( 'sl' ).AsFloat < 1 ) and ( qry_yz.FieldByName( 'lb' ).asstring <> '其它' ) then
              begin
                //showMessage('数量输入错误，请输入大于零的数字!');
                grid_yzlr.SetFocus;
                grid_yzlr.SelectedIndex := 7;
                abort;
              end;
            except
              showMessage( '药品数量输入错误，请输入大于零的数字!' );
              grid_yzlr.SetFocus;
              grid_yzlr.SelectedIndex := 7;
              abort;
            end;
            yzNew( fs )
          end
          else
            grid_yzlr.SelectedIndex := 9;
        end;
  if ( yzlb = '其它' ) and ( Trim( grid_yzlr.Columns[7].DisplayText ) = '' ) then
  begin
    qry_yz.Edit;
    qry_yz.FieldByName( 'sl' ).AsString := '0';
    qry_yz.Post;
  end;

end;

procedure Tfrm_yzinput_lishi.sp_dryzAfterOpen( DataSet: TDataSet );
begin
  if sp_dryz.RecordCount * 30 < screen.height - 100 then
    dbgrideh4.Height := screen.height - 50
  else
    dbgrideh4.Height := sp_dryz.RecordCount * 30;
  createrect( myrect_cx, sp_dryz, dbgrideh4, 10, 11, 16 );

end;

procedure Tfrm_yzinput_lishi.sp_jbxxAfterOpen(DataSet: TDataSet);
begin
if Trim(sp_jbxx.FieldByName('ysxm').asstring)='' then
begin
   ShowMessage('未设置主管医生，不能录入医嘱！');
   grid_yzlr.ReadOnly:=true;
end
else
begin
   grid_yzlr.ReadOnly:=false;
end;
end;

procedure Tfrm_yzinput_lishi.sp_zxjl_cqAfterOpen( DataSet: TDataSet );
begin
  if sp_zxjl_cq.RecordCount * 30 < screen.height - 100 then
    dbgrideh1.Height := screen.height - 50
  else
    dbgrideh1.Height := sp_zxjl_cq.RecordCount * 30;
  createrect( myrect_zx_cq, sp_zxjl_cq, dbgrideh1, 5, 6, 11 );

end;

procedure Tfrm_yzinput_lishi.sp_zxjl_lsAfterOpen( DataSet: TDataSet );
begin
  createrect( myrect_zx_ls, sp_zxjl_ls, dbgrideh3, 7, 8, 9 );

end;

procedure Tfrm_yzinput_lishi.TabSheet1Show( Sender: TObject );
begin
  dbgrideh1.OnColWidthsChanged( sender );

end;

procedure Tfrm_yzinput_lishi.TabSheet2Show( Sender: TObject );
begin
  dbgrideh3.OnColWidthsChanged( sender );

end;

function Tfrm_yzinput_lishi.find_today_yzxm( xmdm: string ): integer;
begin
  //查询当日病员医嘱中是否有该医嘱项目，有返回1，否则返回0
  sp_cx_yzxm.Close;
  sp_cx_yzxm.Open;
  if sp_cx_yzxm.RecordCount = 0 then
    Result := 0;
  if sp_cx_yzxm.Locate( 'xmdm', xmdm, [loCaseInsensitive] ) then
    Result := 1
  else
    Result := 0;
end;

function Tfrm_yzinput_lishi.find_current_yzxm( xmdm: string ): integer;
var
  temp: integer;
  r: integer;
begin
  //查询当前编辑医嘱中是否有该医嘱项目，有返回1，否则返回0
  //-------------calmhawk--2007-01-29--------
  //-----------------------------------------
  //输液分组该在录入界面执行，静滴药品应该允许重复
  temp := qry_yz.recno;
  if qry_yz.Locate( 'xmdm', xmdm, [loCaseInsensitive] ) then
    r := 1
  else
    r := 0;
  if ( r = 1 ) and ( ( Pos('静滴',qry_yz.fieldbyname( 'yytj' ).AsString)>0  ) or ( qry_yz.fieldbyname( 'yytj' ).AsString = '静注' )
    or ( qry_yz.fieldbyname( 'yytj' ).AsString = '化静滴' ) or ( qry_yz.fieldbyname( 'yytj' ).AsString = '化静注' )
    or ( qry_yz.fieldbyname( 'yytj' ).AsString = '口服' )
    or ( qry_yz.fieldbyname( 'yytj' ).AsString = '肌注' ) ) then
    r := 0;
  if (qry_yz.fieldbyname( 'lb' ).AsString='检验') or
     (qry_yz.fieldbyname( 'lb' ).AsString='检查') or
     (qry_yz.fieldbyname( 'lb' ).AsString='治疗') then
    r := 0;
  if temp = -1 then
    qry_yz.recno := qry_yz.RecordCount
  else
    qry_yz.recno := temp;
  result := r;
end;

procedure Tfrm_yzinput_lishi.fcqyzlb;
begin
  qry_yzlist.Close;
  qry_yzlist.SQL.Text := 'select * from zybl_zyyz_list where 1=2';
  qry_yzlist.Open;
  qry_yz.Filtered := false;
  qry_yz.Filter := ' lb = ' + '''' + '药品' + '''' + ' and yzsx <> ' + #39 + '长期' + #39;
  qry_yz.Filtered := true;
  if qry_yz.RecordCount > 0 then
  begin
    qry_yzlist.Insert;
    qry_yzlist.FieldByName( 'ph' ).Value := ypph;
    qry_yzlist.FieldByName( 'yzzs' ).Value := qry_yz.RecordCount;
    qry_yzlist.FieldByName( 'kssj' ).Value := frm_func.curr_date;

    if yzsx = '临时' then
    begin
      qry_yzlist.FieldByName( 'yjjssj' ).Value := frm_func.curr_date + 1;
    end;
    qry_yzlist.FieldByName( 'zxry' ).Value := pub_czydm;
    qry_yzlist.FieldByName( 'zxcs' ).Value := 0;
    qry_yzlist.FieldByName( 'yzxcs' ).Value := 0;
    qry_yzlist.FieldByName( 'zyh' ).Value := zyh;
    qry_yzlist.FieldByName( 'yzsx' ).Value := trim( qry_yz.FieldByName( 'yzsx' ).AsString );
    qry_yzlist.FieldByName( 'drzxcs' ).Value := 0;
    qry_yzlist.Post;
  end;
  qry_yz.Filtered := false;
  qry_yz.Filter := ' lb = ' + '''' + '材料' + '''' + ' and yzsx <> ' + #39 + '长期' + #39;
  qry_yz.Filtered := true;
  if qry_yz.RecordCount > 0 then
  begin
    qry_yzlist.Insert;
    qry_yzlist.FieldByName( 'ph' ).Value := clph;
    qry_yzlist.FieldByName( 'yzzs' ).Value := qry_yz.RecordCount;
    qry_yzlist.FieldByName( 'kssj' ).Value := frm_func.curr_date;
    qry_yzlist.FieldByName( 'zxry' ).Value := pub_czydm;
    qry_yzlist.FieldByName( 'zxcs' ).Value := 0;
    qry_yzlist.FieldByName( 'yzxcs' ).Value := 0;
    qry_yzlist.FieldByName( 'zyh' ).Value := zyh;
    qry_yzlist.FieldByName( 'yzsx' ).Value := trim( qry_yz.FieldByName( 'yzsx' ).AsString );
    qry_yzlist.FieldByName( 'drzxcs' ).Value := 0;
    qry_yzlist.Post;
  end;
  qry_yz.Filtered := false;
  qry_yz.Filter := ' lb <> ' + '''' + '材料' + '''' + ' and lb <> ' + '''' + '药品' + '''' + ' and yzsx <> ' + #39 + '长期' + #39;
  qry_yz.Filtered := true;
  if qry_yz.RecordCount > 0 then
  begin
    qry_yzlist.Insert;
    qry_yzlist.FieldByName( 'ph' ).Value := xmph;
    qry_yzlist.FieldByName( 'yzzs' ).Value := qry_yz.RecordCount;
    qry_yzlist.FieldByName( 'kssj' ).Value := frm_func.curr_date;
    qry_yzlist.FieldByName( 'zxry' ).Value := pub_czydm;
    qry_yzlist.FieldByName( 'zxcs' ).Value := 0;
    qry_yzlist.FieldByName( 'yzxcs' ).Value := 0;
    qry_yzlist.FieldByName( 'zyh' ).Value := zyh;
    qry_yzlist.FieldByName( 'yzsx' ).Value := trim( qry_yz.FieldByName( 'yzsx' ).AsString );
    qry_yzlist.FieldByName( 'drzxcs' ).Value := 0;
    qry_yzlist.Post;
  end;
  qry_yzlist.UpdateBatch( arall );
  qry_yz.Filtered := false;
end;

procedure Tfrm_yzinput_lishi.tjyzfcqyz;
begin
  qry_yz.Edit;
  if trim( qry_yz.FieldByName( 'lb' ).AsString ) = '药品' then
  begin
    {    if ypph = '' then
        begin
          ypph := get_sjh(pub_czydm);
        end;   }
    qry_yz.FieldByName( 'ph' ).Value := get_sjh( pub_czydm ); //ypph
  end
  else
    if trim( qry_yz.FieldByName( 'lb' ).AsString ) = '材料' then
    begin
      {      if clph = '' then
            begin
              clph := get_sjh(pub_czydm);
            end;   }
      qry_yz.FieldByName( 'ph' ).Value := get_sjh( pub_czydm ); //clph;
    end
    else
      if trim( qry_yz.FieldByName( 'lb' ).AsString ) = '治疗' then
      begin
        {        if xmph = '' then
                begin
                  xmph := get_sjh(pub_czydm);
                end; }
        qry_yz.FieldByName( 'ph' ).Value := get_sjh( pub_czydm ); //xmph;
      end
      else
        if trim( qry_yz.FieldByName( 'lb' ).AsString ) = '检验' then
        begin
          {          if jyph = '' then
                    begin
                      jyph := get_sjh(pub_czydm);
                    end;   }
          qry_yz.FieldByName( 'ph' ).Value := get_sjh( pub_czydm ); // jyph;
        end
        else
          if trim( qry_yz.FieldByName( 'lb' ).AsString ) = '检查' then
          begin
            {            if jcph = '' then
                        begin
                          jcph := get_sjh(pub_czydm);
                        end; }
            qry_yz.FieldByName( 'ph' ).Value := get_sjh( pub_czydm ); //jcph;
          end
          else
            if trim( qry_yz.FieldByName( 'lb' ).AsString ) = '成药' then
            begin
              {            if jcph = '' then
                          begin
                            jcph := get_sjh(pub_czydm);
                          end; }
              qry_yz.FieldByName( 'ph' ).Value := get_sjh( pub_czydm ); //jcph;
            end
            else
              if trim( qry_yz.FieldByName( 'lb' ).AsString ) = '其它' then
              begin
                {              if qtph = '' then
                              begin
                                qtph := get_sjh(pub_czydm);
                              end;   }
                qry_yz.FieldByName( 'ph' ).Value := get_sjh( pub_czydm ); //qtph;
              end;
  qry_yz.Post;
end;

procedure Tfrm_yzinput_lishi.zdkz;
begin
  yzlb := qry_yz.FieldByName( 'lb' ).AsString;
  yzsx := qry_yz.FieldByName( 'yzsx' ).AsString;
  if ( yzlb = '药品' ) then
  begin
    grid_yzlr.Columns[3].ReadOnly := false;
    grid_yzlr.Columns[4].ReadOnly := true;
    grid_yzlr.Columns[5].ReadOnly := false;
    grid_yzlr.Columns[6].ReadOnly := false;
    grid_yzlr.Columns[8].ReadOnly := true;
    grid_yzlr.Columns[9].ReadOnly := true;
  end
  else
    if ( ( yzlb = '材料' ) and isbqkf ) then
    begin
      grid_yzlr.Columns[3].ReadOnly := true;
      grid_yzlr.Columns[4].ReadOnly := true;
      grid_yzlr.Columns[5].ReadOnly := true;
      grid_yzlr.Columns[6].ReadOnly := true;
      grid_yzlr.Columns[8].ReadOnly := true;
      grid_yzlr.Columns[9].ReadOnly := true;
      grid_yzlr.Columns[10].ReadOnly := false;
    end
    else
      if ( yzlb = '成药' ) then
      begin
        grid_yzlr.Columns[3].ReadOnly := false;
        grid_yzlr.Columns[4].ReadOnly := true;
        grid_yzlr.Columns[5].ReadOnly := false;
        grid_yzlr.Columns[6].ReadOnly := false;
        grid_yzlr.Columns[8].ReadOnly := true;
        grid_yzlr.Columns[9].ReadOnly := true;
        grid_yzlr.Columns[10].ReadOnly := false;
      end
      else
        if ( yzlb = '其它' ) then
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
        else
          if ( yzlb = '检验' ) then
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
          else
            if ( yzlb = '检查' ) then
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
            else
              if ( yzlb = '治疗' ) then
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

procedure Tfrm_yzinput_lishi.qtjs;
begin
  qry_yz.Edit;
  qry_yz.fieldbyname( 'xmdm' ).value := '';
  qry_yz.Post;
  if find_current_yzxm( sp_cx_yp_yz.FieldByName( 'xmdm' ).AsString ) = 0 then
  begin
    if ( yzlb = '材料' ) and isbqkf then
    begin

      ypinyz;
    end
    else
    begin
      if ( Trim( sp_cx_yp_yz.FieldByName( 'zylsj' ).AsString ) = '' ) and ( pub_yydm <> '0013' ) then
      begin
        ShowMessage( '价格为零，不能调用！' );
        grid_yzlr.SelectedIndex := 2;
        grid_yzlr.SetFocus;
        Abort;
      end
      else
      begin
        xminyz;
      end;
    end;
  end
  else
  begin
    application.MessageBox( '当前医嘱中已有该项目,不能再次添加!', '提示信息', 0 + 16 );
    grid_yzlr.SelectedIndex := 7;
    abort;
  end;
  grid_yz.Visible := false;
end;

procedure Tfrm_yzinput_lishi.QuickRep1BeforePrint( Sender: TCustomQuickRep;
  var PrintReport: Boolean );
begin
  //  sp_zxjl_cq_dy.first;
  //  paper_size := 0;
end;

procedure Tfrm_yzinput_lishi.QuickRep2BeforePrint( Sender: TCustomQuickRep;
  var PrintReport: Boolean );
begin
  sp_zxjl_ls_dy.first;
  paper_size := 0;
end;

procedure Tfrm_yzinput_lishi.ypjs;
var p_ypmc:string;
begin
  qry_yz.Edit;
  qry_yz.fieldbyname( 'xmdm' ).value := '';
  qry_yz.Post;
  if Pos( Trim( sp_cx_yp_yz.FieldByName( 'ypdm' ).AsString ), pub_kssypdm ) = 0 then
  begin
  if find_current_yzxm( sp_cx_yp_yz.FieldByName( 'ypdm' ).AsString ) <> 2 then
  begin
    if find_today_yzxm( sp_cx_yp_yz.FieldByName( 'ypdm' ).AsString ) = 1 then
      if application.MessageBox( '该药品病员正在使用,是否要增加?', '提示信息', mb_iconquestion + MB_YESNO + mb_defbutton1 ) = IDYES then
      begin
        abort;
      end;
    if Trim( sp_cx_yp_yz.FieldByName( 'zylsj' ).AsString ) = '' then
    begin
      application.MessageBox( '价格为零，不能调用！', '提示信息', 0 + 16 );
      abort;
    end;
    ypinyz;
  end
  else
  begin
    application.MessageBox( '当前医嘱中已有该药品,不能再次添加!', '提示信息', 0 + 16 );
    grid_yzlr.SelectedIndex := 2;
    abort;
  end;
  end
  else
  begin
    p_ypmc := '你在系统中的职称无法使用：' + Trim( sp_cx_yp_yz.FieldByName( 'ypmc' ).AsString );
    application.MessageBox( PChar( p_ypmc ), '提示信息', 0 + 48 );
  end;
end;

procedure Tfrm_yzinput_lishi.tjyz;
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
    if trim( qry_yz.FieldByName( 'kdys' ).AsString ) = '' then
    begin
      showMessage( '开单医生不能为空!' );
      abort;
    end;
    if trim( qry_yz.FieldByName( 'czks' ).AsString ) = '' then
    begin
      showMessage( '处置科室不能为空!' );
    end;
    if ( trim( qry_yz.FieldByName( 'kdks' ).AsString ) <> pub_ksdm ) then//or ( trim( qry_yz.FieldByName( 'kdys' ).AsString ) <> trim( sp_jbxx.FieldByName( 'zgys' ).AsString ) ) then
    begin
      qry_yz.Edit;
      qry_yz.FieldByName( 'kdks' ).Value := pub_ksdm;
      //qry_yz.FieldByName( 'kdys' ).Value := trim( sp_jbxx.FieldByName( 'zgys' ).AsString );
      qry_yz.Post;
    end;
    qry_yz.Next;
  end;
  try
    qry_yz.UpdateBatch( arall );
  except
  end;
  refresh_yz;
  hisypdm := '';
  jjgx := '';
  if qry_yz.Active and ( zz.ActivePage = tab_yp ) then
  begin
    qry_yz.First;
    while not qry_yz.Eof do
    begin
      hisypdm := hisypdm + qry_yz.fieldbyname( 'xmdm' ).asstring + ',';
      qry_yz.Next;
    end;
    try
      jjgx := xyyd_jj_js( hisypdm );
    except
      showMessage( '无药典数据库,禁忌冲突提示不能执行!' );
      jjgx := '';
    end;
  end;
  if jjgx <> '' then
  begin
    if application.MessageBox( pchar( '该批医嘱明细有禁忌冲突' + ''#13'' + jjgx + ''#13'' + '是否继续执行?' ), '提示信息', mb_iconquestion + mb_okcancel + mb_defbutton1 ) = idcancel then
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
    if ( qry_yz.FieldByName( 'lb' ).AsString = '药品' ) then
      if ypid = '' then
        //获取药品ID列表
        ypid := qry_yz.FieldByName( 'id' ).AsString
      else
        ypid := ypid + ',' + qry_yz.FieldByName( 'id' ).AsString
    else
      if ( qry_yz.FieldByName( 'lb' ).AsString = '材料' ) and isbqkf then
        if clid = '' then
          //获取材料ID列表
          clid := qry_yz.FieldByName( 'id' ).AsString
        else
          clid := clid + ',' + qry_yz.FieldByName( 'id' ).AsString
      else
        if xmid = '' then
          //获取医嘱项目ID列表
          xmid := qry_yz.FieldByName( 'id' ).AsString
        else
          xmid := xmid + ',' + qry_yz.FieldByName( 'id' ).AsString;
    qry_yz.Next;
  end;
  yzlist := '';
  //组合药品医嘱ID和非药品医嘱ID
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
  //获得批号
  ph := get_sjh( pub_czydm );
  //写入操作记录
  qry_pub.Close;
  qry_pub.SQL.Clear;
  qry_pub.SQL.Text := 'insert into zybl_zyyz_czjl values(' + '''' + pub_czydm + '''' + ',' + '''' + pub_czyxm + '''' + ',' + '''' + '执行医嘱' + '''' + ',getdate(),' + '''' + '执行医嘱ID:' + xzyz + '''' + ')';
  //写入医嘱记录列表 zybl_zyyz_list
  qry_yzlist.Close;
  qry_yzlist.SQL.Clear;
  //showmessage(yzlist);
  if yzlb = '其它' then
    qry_yzlist.SQL.Text := 'insert into zybl_zyyz_list(ph,yzzs,kssj,jssj' + ',zxry,zxcs,yzxcs,zxsjd,fzsm,ypzxcs,fyzxcs,yzlist,zyh,yzsx) values(' + quotedstr( ph ) + ',' + inttostr( zs ) + ',' + '''' + datetimetostr( frm_func.curr_date ) + '''' + ',null,' + quotedstr( pub_czydm ) + ',' + quotedstr( zxcs ) + ',' + quotedstr( zxcs ) + ',' + inttostr( li_sj ) + ',' + '''' + '''' + ',' + quotedstr( zxcs ) + ',' + quotedstr( zxcs ) + ',' + '''' + yzlist + '''' + ',' + '''' + zyh + '''' + ',' + '''' + yzsx + '''' + ')'
  else
    qry_yzlist.SQL.Text := 'insert into zybl_zyyz_list(ph,yzzs,kssj,jssj,' + 'zxry,zxcs,yzxcs,zxsjd,fzsm,ypzxcs,fyzxcs,yzlist,zyh,yzsx) values(' + quotedstr( ph ) + ',' + inttostr( zs ) + ',' + '''' + datetimetostr( frm_func.curr_date ) + '''' + ',null,' + quotedstr( pub_czydm ) + ',' + quotedstr( zxcs ) + ',0,' + inttostr( li_sj ) + ',' + '''' + '''' + ',0,0,' + '''' + yzlist + '''' + ',' + '''' + zyh + '''' + ',' + '''' + yzsx + '''' + ')';
  qry_yz.RecordCount;
  qry_yz.first;
  while not qry_yz.eof do
  begin
    qry_yz.Edit;
    qry_yz.FieldByName( 'zxbz' ).Value := 1;
    qry_yz.FieldByName( 'tzbz' ).Value := 0;
    qry_yz.FieldByName( 'zxrq' ).Value := trim( DateTimeTostr( frm_func.curr_date ) );
    qry_yz.FieldByName( 'zxry' ).Value := pub_czydm;
    qry_yz.FieldByName( 'yzrq' ).Value := frm_func.curr_date;
    qry_yz.FieldByName( 'shbz' ).Value := 1;
    qry_yz.Post;
    qry_yz.next;
  end;
  //开始事务 执行操作
  dm_data.ado_mydata.BeginTrans;
  try
    if yzlb <> '其它' then
    begin
      yzinypfymx( zyh, ypid, xmid, clid, ph );
      qry_ypyz.ExecSQL;
    end;
    qry_yz.UpdateBatch( arall );
    qry_pub.ExecSQL;
    qry_yzlist.ExecSQL;
    dm_data.ado_mydata.CommitTrans;
    showMessage( '医嘱提交成功!' );
    refresh_yz;
    scbz := 0;
  except
    dm_data.ado_mydata.RollbackTrans;
    application.MessageBox( '执行全部医嘱操作失败!', '提示信息', 0 + 16 );
  end;
end;

procedure Tfrm_yzinput_lishi.yzlbsr;
begin
  DM_data.qry_pub.close;
  DM_data.qry_pub.SQL.text:='select * from sys_xt_kg ';
  DM_data.qry_pub.Open;
  qry_yz.Edit;
  if DM_data.qry_pub.FieldByName('hskkyz').AsBoolean then
  begin
  if ( qry_yz.FieldByName( 'lb' ).asstring = '1' ) or ( qry_yz.FieldByName( 'lb' ).asstring = 'cl' ) or ( qry_yz.FieldByName( 'lb' ).asstring = '材料' ) then
  begin
    qry_yz.FieldByName( 'lb' ).value := '材料';
  end
  else
    if ( qry_yz.FieldByName( 'lb' ).asstring = '2' ) or ( qry_yz.FieldByName( 'lb' ).asstring = 'zl' ) or ( qry_yz.FieldByName( 'lb' ).asstring = '治疗' ) then
    begin
      qry_yz.FieldByName( 'lb' ).value := '治疗';
    end
    else
      if ( qry_yz.FieldByName( 'lb' ).asstring = '3' ) or ( qry_yz.FieldByName( 'lb' ).asstring = 'jy' ) or ( qry_yz.FieldByName( 'lb' ).asstring = '检验' ) then
      begin
        qry_yz.FieldByName( 'lb' ).value := '检验';
      end
      else
        if ( qry_yz.FieldByName( 'lb' ).asstring = '4' ) or ( qry_yz.FieldByName( 'lb' ).asstring = 'jc' ) or ( qry_yz.FieldByName( 'lb' ).asstring = '检查' ) then
        begin
          qry_yz.FieldByName( 'lb' ).value := '检查';
        end
        else
          if ( qry_yz.FieldByName( 'lb' ).asstring = '5' ) or ( qry_yz.FieldByName( 'lb' ).asstring = 'qt' ) or ( qry_yz.FieldByName( 'lb' ).asstring = '其它' ) then
          begin
            qry_yz.FieldByName( 'lb' ).value := '其它';
          end
          else
            if ( qry_yz.FieldByName( 'lb' ).asstring = '6' ) or ( qry_yz.FieldByName( 'lb' ).asstring = 'cy' ) or ( qry_yz.FieldByName( 'lb' ).asstring = '成药' ) then
            begin
              qry_yz.FieldByName( 'lb' ).value := '成药';
            end
            else
              qry_yz.FieldByName( 'lb' ).value := '药品';
  end
  else
  begin
       DM_data.qry_pub.close;
       DM_data.qry_pub.SQL.text:='select * from sys_czy where dm= '+''''+pub_czydm+'''';
       DM_data.qry_pub.Open;
       if DM_data.qry_pub.FieldByName('cfbz').AsBoolean=false then
       begin
         if ( qry_yz.FieldByName( 'lb' ).asstring = '1' ) or ( qry_yz.FieldByName( 'lb' ).asstring = 'cl' ) or ( qry_yz.FieldByName( 'lb' ).asstring = '材料' ) then
         begin
            qry_yz.FieldByName( 'lb' ).value := '材料';
         end
         else
            qry_yz.FieldByName( 'lb' ).value := '材料';
       end
       else
       begin
       if ( qry_yz.FieldByName( 'lb' ).asstring = '1' ) or ( qry_yz.FieldByName( 'lb' ).asstring = 'cl' ) or ( qry_yz.FieldByName( 'lb' ).asstring = '材料' ) then
       begin
         qry_yz.FieldByName( 'lb' ).value := '材料';
       end
       else
       if ( qry_yz.FieldByName( 'lb' ).asstring = '2' ) or ( qry_yz.FieldByName( 'lb' ).asstring = 'zl' ) or ( qry_yz.FieldByName( 'lb' ).asstring = '治疗' ) then
       begin
         qry_yz.FieldByName( 'lb' ).value := '治疗';
       end
       else
       if ( qry_yz.FieldByName( 'lb' ).asstring = '3' ) or ( qry_yz.FieldByName( 'lb' ).asstring = 'jy' ) or ( qry_yz.FieldByName( 'lb' ).asstring = '检验' ) then
       begin
         qry_yz.FieldByName( 'lb' ).value := '检验';
       end
       else
       if ( qry_yz.FieldByName( 'lb' ).asstring = '4' ) or ( qry_yz.FieldByName( 'lb' ).asstring = 'jc' ) or ( qry_yz.FieldByName( 'lb' ).asstring = '检查' ) then
       begin
         qry_yz.FieldByName( 'lb' ).value := '检查';
       end
       else
       if ( qry_yz.FieldByName( 'lb' ).asstring = '5' ) or ( qry_yz.FieldByName( 'lb' ).asstring = 'qt' ) or ( qry_yz.FieldByName( 'lb' ).asstring = '其它' ) then
       begin
         qry_yz.FieldByName( 'lb' ).value := '其它';
       end
       else
       if ( qry_yz.FieldByName( 'lb' ).asstring = '6' ) or ( qry_yz.FieldByName( 'lb' ).asstring = 'cy' ) or ( qry_yz.FieldByName( 'lb' ).asstring = '成药' ) then
       begin
         qry_yz.FieldByName( 'lb' ).value := '成药';
       end
       else
         qry_yz.FieldByName( 'lb' ).value := '药品';
       end;
  end;
  //修改医嘱类别后，清除原类别明细
  if yzlb <> qry_yz.FieldByName( 'lb' ).AsString then
  begin
    qry_yz.FieldByName( 'xmdm' ).Value := '';
    qry_yz.FieldByName( 'xmmc' ).Value := '';
    qry_yz.FieldByName( 'sl' ).Value := 1;
    qry_yz.FieldByName( 'dw' ).Value := '';
    qry_yz.FieldByName( 'ypyf' ).Value := '';
    qry_yz.FieldByName( 'ypyl' ).Value := '';
    qry_yz.FieldByName( 'yldw' ).Value := '';
    qry_yz.FieldByName( 'yytj' ).Value := '';
    qry_yz.FieldByName( 'czks' ).Value := '';
    qry_yz.FieldByName( 'yplb' ).Value := '';
    qry_yz.FieldByName( 'yplsj' ).Value := 0;
    qry_yz.FieldByName( 'gg' ).Value := '';
  end;
  qry_yz.Post;
  zdkz;
  grid_yzlr.SetFocus;
  if kzbz = 0 then
    grid_yzlr.SelectedIndex := 1
  else
    grid_yzlr.SelectedIndex := 2;
end;

procedure Tfrm_yzinput_lishi.yzsxsr( fs: integer );
begin
  if ( qry_yz.FieldByName( 'yzsx' ).asstring = '1' ) or ( qry_yz.FieldByName( 'yzsx' ).asstring = 'ls' ) or ( qry_yz.FieldByName( 'yzsx' ).asstring = '临时' ) then
  begin
    qry_yz.FieldByName( 'yzsx' ).value := '临时';
  end
  else
  begin
    qry_yz.FieldByName( 'yzsx' ).value := '长期';
  end;
  yzsx := qry_yz.FieldByName( 'yzsx' ).AsString;
  if fs <> 0 then
    grid_yzlr.SelectedIndex := grid_yzlr.SelectedIndex + 1;
end;

procedure Tfrm_yzinput_lishi.yzXmsr( fs: integer );
var
  ls_cxpym: string;
  lb: string;
begin
  ls_cxpym := trim( grid_yzlr.Columns[2].DisplayText );
  if ( ls_cxpym = '' ) then
  begin
    exit;
  end;
  if ( yzlb = '其它' ) then
  begin
    qry_qtyzxm.Close;
    qry_qtyzxm.SQL.text := 'select rtrim(xmdm) 项目代码,rtrim(xmmc) 项目名称,rtrim(dw) 单位  from sys_yzxm where qybz=1 and zybz=1 and substring(dldm,1,4)=''0106'' and ( xmmc like ''%' + ls_cxpym + '%'' or pym like ''%' + ls_cxpym + '%'' or xmdm like ''%' + ls_cxpym + '%'')';
    qry_qtyzxm.Open;
    if qry_qtyzxm.RecordCount < 1 then
    begin
      ShowMessage( '无此嘱托项目' );
      grid_yzlr.SetFocus;
      xminyz;
      grid_yzlr.SelectedIndex := 7;
    end
    else
      if qry_qtyzxm.RecordCount = 1 then
      begin
        ls_cxpym := Trim( qry_qtyzxm.FieldByName( '项目名称' ).AsString );
        qry_yz.Edit;
        qry_yz.FieldByName( 'xmmc' ).asstring := Trim( qry_qtyzxm.FieldByName( '项目名称' ).AsString );
        qry_yz.Post;
        grid_yzlr.SetFocus;
        xminyz;
        grid_yzlr.SelectedIndex := 7;
      end
      else
        if qry_qtyzxm.RecordCount > 1 then
        begin
          DBGridEh5.Visible := True;
          DBGridEh5.SetFocus;
        end;
    //grid_yzlr.SelectedIndex := 7;
//        yzNew(kzbz);
    exit;
  end;
  lb := trim( qry_yz.FieldByName( 'lb' ).AsString );
  if ( lb = '药品' ) then //---药品医嘱录入----
  begin
    sp_cx_yp_yz.Close;
    sp_cx_yp_yz.Parameters.ParamValues['@pym'] := ls_cxpym;
    sp_cx_yp_yz.Parameters.ParamValues['@ksdm'] := pub_zyxyfdm;
    sp_cx_yp_yz.Parameters.ParamValues['@jsfs'] := '0';
    sp_cx_yp_yz.Parameters.ParamValues['@ls'] := '1';
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
      showMessage( '药品未找到!' );
    end;
  end
  else
    if ( lb = '成药' ) then //---药品医嘱录入----
    begin
      sp_cx_yp_yz.Close;
      sp_cx_yp_yz.Parameters.ParamValues['@pym'] := ls_cxpym;
      sp_cx_yp_yz.Parameters.ParamValues['@ksdm'] := prv_zyfdm;
      sp_cx_yp_yz.Parameters.ParamValues['@jsfs'] := '0';
      sp_cx_yp_yz.Parameters.ParamValues['@ls'] := '2';
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
        showMessage( '药品未找到!' );
      end;
    end
    else
      if ( lb = '材料' ) and isbqkf then
      begin
        sp_cx_yp_yz.Close;
        sp_cx_yp_yz.Parameters.ParamValues['@pym'] := ls_cxpym;
        sp_cx_yp_yz.Parameters.ParamValues['@jsfs'] := '1';
        sp_cx_yp_yz.Parameters.ParamValues['@lb'] := lb;
        sp_cx_yp_yz.Parameters.ParamValues['@ls'] := '1';

        if isbqkf then //药品使用病区库房,
        begin
          sp_cx_yp_yz.Parameters.ParamValues['@jsfs'] := '2';
          sp_cx_yp_yz.Parameters.ParamValues['@ksdm'] := pub_ksdm;
        end
        else
          sp_cx_yp_yz.Parameters.ParamValues['@ksdm'] := pub_zyxyfdm;

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
          showMessage( '材料未找到!' );
        end;
      end
      else
      begin
        //--其它医嘱录入
        sp_cx_yp_yz.Close;
        sp_cx_yp_yz.Parameters.ParamValues['@pym'] := ls_cxpym;
        if isbqkf then
          //药品使用病区库房
          sp_cx_yp_yz.Parameters.ParamValues['@ksdm'] := pub_ksdm
        else
          sp_cx_yp_yz.Parameters.ParamValues['@ksdm'] := pub_zyxyfdm;
        sp_cx_yp_yz.Parameters.ParamValues['@jsfs'] := '1';
        sp_cx_yp_yz.Parameters.ParamValues['@lb'] := lb;
        sp_cx_yp_yz.Parameters.ParamValues['@ls'] := '1';
        sp_cx_yp_yz.Open;

        if sp_cx_yp_yz.RecordCount > 1 then
        begin
          grid_yz.Visible := true;
          grid_yz.SetFocus;
        end
        else
          if sp_cx_yp_yz.RecordCount = 1 then
          begin
            if Trim( sp_cx_yp_yz.FieldByName( 'zylsj' ).AsString ) = '' then
            begin
              ShowMessage( '价格为零，不能调用！' );
              Abort;
            end;
            qtjs;
            if fs <> 0 then
            if (qry_yz.FieldByName('lb').AsString<>'治疗') and
               (qry_yz.FieldByName('lb').AsString<>'检验') and
               (qry_yz.FieldByName('lb').AsString<>'检查')
            then
              grid_yzlr.SelectedIndex := 7
            else
              grid_yzlr.SelectedIndex := 5;
          end
          else
            if sp_cx_yp_yz.RecordCount < 1 then
            begin
              tzbz := 0;
              showMessage( '项目未找到!' );
            end;
      end;
end;

procedure Tfrm_yzinput_lishi.yzNew( fs: integer );
begin
   if ( grid_yzlr.SelectedIndex = 16 ) and ( Trim( grid_yzlr.Columns[10].DisplayText ) = '' ) then
  begin
    ShowMessage( '请填写处置科室！' );
    qry_yz.FieldByName( 'zyh' ).AsString := zyh;
    qry_yz.FieldByName( 'tmh' ).AsString := tmh;
    qry_yz.FieldByName( 'kdks' ).AsString := pub_ksdm;
    grid_yzlr.SelectedIndex := 10;
    //qry_yz.FieldByName('tmh').AsString:=tmh;
  end
  else
  if ( grid_yzlr.SelectedIndex = 11 ) and ( Trim( grid_yzlr.Columns[10].DisplayText ) = '' ) then
  begin
    ShowMessage( '请填写处置科室！' );
    qry_yz.FieldByName( 'zyh' ).AsString := zyh;
    qry_yz.FieldByName( 'tmh' ).AsString := tmh;
    qry_yz.FieldByName( 'kdks' ).AsString := pub_ksdm;
    grid_yzlr.SelectedIndex := 10;
    //qry_yz.FieldByName('tmh').AsString:=tmh;
  end
  else
    if ( grid_yzlr.SelectedIndex = 9 ) and ( Trim( grid_yzlr.Columns[10].DisplayText ) = '' ) then
    begin
      ShowMessage( '请填写处置科室！' );
      qry_yz.FieldByName( 'zyh' ).AsString := zyh;
      qry_yz.FieldByName( 'tmh' ).AsString := tmh;
      qry_yz.FieldByName( 'kdks' ).AsString := pub_ksdm;
      grid_yzlr.SelectedIndex := 10;
      //qry_yz.FieldByName('tmh').AsString:=tmh;
    end

    else
      if ( grid_yzlr.SelectedIndex = 12 ) and ( Trim( grid_yzlr.Columns[10].DisplayText ) = '' ) then
      begin
        ShowMessage( '请填写处置科室！' );
        qry_yz.FieldByName( 'zyh' ).AsString := zyh;
        qry_yz.FieldByName( 'tmh' ).AsString := tmh;
        qry_yz.FieldByName( 'kdks' ).AsString := pub_ksdm;
        grid_yzlr.SelectedIndex := 10;
        //qry_yz.FieldByName('tmh').AsString:=tmh;
      end
      else
      begin
        if ( qry_yz.State = dsEdit ) or ( qry_yz.State = dsInsert ) then
        begin
          qry_yz.Post;
        end;
        yzlb := qry_yz.FieldByName( 'lb' ).AsString;
        if grid_yzlr.SelectedIndex = 16 then
        saveyz;
        if fs <> 0 then
        begin
          qry_yz.Next;
          if not qry_yz.Eof then //如果当前记录下有记录，修改
          begin
            qry_yz.Edit;
            if fs <> 0 then
              grid_yzlr.SelectedIndex := 1;
          end
          else
          begin //当前记录下面没有记录，添加
            qry_yz.append;
            grid_yzlr.SetFocus;
            if fs <> 0 then
              grid_yzlr.SelectedIndex := 1;
          end;
        end;
      end;

end;

procedure Tfrm_yzinput_lishi.zyzadd;
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
  //添加子医嘱
  if qry_yz.RecordCount > 0 then
  begin
    _ypdm := qry_yz.FieldByName( 'xmdm' ).AsString;
    _ypmc := qry_yz.FieldByName( 'xmmc' ).AsString;
    qry_yz.Delete;
    _sl := qry_yz.FieldByName( 'sl' ).AsString;
    _ypyf := qry_yz.FieldByName( 'ypyf' ).AsString;
    _ypyl := qry_yz.FieldByName( 'ypyl' ).AsString;
    _yldw := qry_yz.FieldByName( 'yldw' ).AsString;
    _yytj := qry_yz.FieldByName( 'yytj' ).AsString;
    _yzsx := qry_yz.FieldByName( 'yzsx' ).AsString;
    qry_yz.Append;
    qry_yz.FieldByName( 'lb' ).AsString := yzlb;
    qry_yz.FieldByName( 'yzsx' ).AsString := yzsx;
    qry_yz.FieldByName( 'tmh' ).AsString := tmh;
    qry_yz.FieldByName( 'zyh' ).AsString := zyh;
    qry_yz.FieldByName( 'xmdm' ).AsString := _ypdm;
    qry_yz.FieldByName( 'xmmc' ).AsString := _ypmc;
    qry_yz.FieldByName( 'sl' ).AsString := _sl;
    qry_yz.FieldByName( 'ypyf' ).AsString := _ypyf;
    qry_yz.FieldByName( 'ypyl' ).AsString := _ypyl;
    qry_yz.FieldByName( 'yldw' ).AsString := _yldw;
    qry_yz.FieldByName( 'yytj' ).AsString := _yytj;
    qry_yz.FieldByName( 'yzsx' ).AsString := _yzsx;
    qry_yz.FieldByName( 'dw' ).AsString := sp_cx_yp_yz.FieldByName( 'zyyfdw' ).AsString;
    qry_yz.FieldByName( 'ypdwid' ).AsInteger := sp_cx_yp_yz.FieldByName( 'zydwid' ).AsInteger;
    qry_yz.FieldByName( 'ypbzbl' ).AsInteger := sp_cx_yp_yz.FieldByName( 'zyyfzhl' ).AsInteger;
    qry_yz.FieldByName( 'yplsj' ).AsFloat := sp_cx_yp_yz.FieldByName( 'zylsj' ).AsFloat;
    qry_yz.FieldByName( 'ypcgj' ).AsFloat := sp_cx_yp_yz.FieldByName( 'zypfj' ).AsFloat;
    qry_yz.FieldByName( 'yldw' ).AsString := sp_cx_yp_yz.FieldByName( 'zyyfdw' ).AsString;
    qry_yz.FieldByName( 'kdks' ).AsString := pub_ksdm;
    qry_yz.FieldByName( 'kdrq' ).AsDateTime := frm_func.curr_date;
    qry_yz.FieldByName( 'kdys' ).AsString := sp_jbxx.FieldByName( 'zgys' ).AsString;
    qry_yz.FieldByName( 'czks' ).AsString := pub_zyxyfdm;
    qry_yz.FieldByName( 'jyyb' ).AsString := sp_cx_yp_yz.FieldByName( 'yb' ).AsString;
    qry_yz.FieldByName( 'jyflbh' ).AsString := sp_cx_yp_yz.FieldByName( 'dldm' ).AsString;
    //calmhawk
    if qry_yz.FieldByName( 'xh' ).AsString = '' then
    begin
      qry_yz.FieldByName( 'xh' ).Asinteger := maxxh + 1;
      maxxh := maxxh + 1;
    end;
    if sp_cx_yp_yz.fieldbyname( 'sfdmyp' ).asboolean then
      qry_yz.FieldByName( 'yplb' ).AsString := '毒麻药品';
    qry_yz.Post;          
  end;
end;

procedure Tfrm_yzinput_lishi.xzsm( Sender: TDbmemo );
begin
  if qry_yz.RecordCount > 0 then
  begin
    application.CreateForm( Tfrm_treeview_ctxz, frm_treeview_ctxz );
    try
      frm_treeview_ctxz.ShowModal;
    except
      frm_treeview_ctxz.Free;
    end;
    if qry_yz.DataSource.DataSet.State <> dsedit then
      qry_yz.Edit;
    sender.Text := frm_treeview_ctxz.pub_selectword;
  end;
end;

procedure Tfrm_yzinput_lishi.dbg_ysDblClick( Sender: TObject );
begin
  yzys := qry_ys.FieldByName( 'dm' ).AsString;
  e_yzys.Text := qry_ys.FieldByName( 'mc' ).AsString;
  zz.ActivePage := Tab_yp;
  grid_yzlr.SetFocus;
  grid_yzlr.SelectedIndex := 1;
end;

procedure Tfrm_yzinput_lishi.dbg_ysExit( Sender: TObject );
begin
  yzys := qry_ys.FieldByName( 'dm' ).AsString;
  e_yzys.Text := qry_ys.FieldByName( 'mc' ).AsString;
  dbg_ys.Visible := false;
  db_brxx.Visible := false;
end;

procedure Tfrm_yzinput_lishi.dbg_ysKeyPress( Sender: TObject; var Key: Char );
begin
  if key = #13 then
  begin
    yzys := qry_ys.FieldByName( 'dm' ).AsString;
    e_yzys.Text := qry_ys.FieldByName( 'mc' ).AsString;
    zz.ActivePage := Tab_yp;
    grid_yzlr.SetFocus;
    grid_yzlr.SelectedIndex := 1;
  end;

end;

procedure Tfrm_yzinput_lishi.db_brxxDblClick( Sender: TObject );
begin
  e_yzys.SetFocus;
end;

procedure Tfrm_yzinput_lishi.db_brxxExit( Sender: TObject );
var zt:string;
    sjxz:Integer;
begin
  DM_data.qry_pub.close;
  DM_data.qry_pub.sql.Text:='select * from sys_xt_kg';
  DM_data.qry_pub.Open;
  sjxz:= DM_data.qry_pub.FieldByName('zyblcykxgsj').AsInteger;
  dbg_ys.Visible := false;
  db_brxx.Visible := false;
  zyh := sp_jbxx.FieldByName( 'zyh' ).AsString;
  tmh := sp_jbxx.FieldByName( 'tmh' ).AsString;
  brxm := sp_jbxx.FieldByName( 'brxm' ).AsString;
  dm_data.qry_pub.close;
  dm_data.qry_pub.sql.text:='select *,datediff(day,cyrq,getdate()) cyts from zysf_cydj where zyh='+''''+zyh+'''';
  dm_data.qry_pub.open;
  if dm_data.qry_pub.IsEmpty then
  begin
    dm_data.qry_pub.close;
    dm_data.qry_pub.sql.text:='select *,datediff(day,cyrq,getdate()) cyts from zysf_zydj where zyh='+''''+zyh+''' and cybz=1';
    dm_data.qry_pub.open;
    if dm_data.qry_pub.IsEmpty then
      Exit
    else
    begin
      if dm_data.qry_pub.FieldByName('cyts').AsInteger>sjxz then
      begin
        dm_data.qry_pub.close;
        dm_data.qry_pub.sql.text:='select * from sys_bljy where zyh='+''''+zyh+''' and '+
        ' datediff(day,jyrq,getdate())<=jyts';
        dm_data.qry_pub.open;
        if (not dm_data.qry_pub.IsEmpty) and (dm_data.qry_pub.FieldByName('ysdm').AsString=pub_czydm) then
        begin
          jybz:=True;
          qry_hjjl.close;
          qry_hjjl.sql.Text:='insert into zybl_jyjl(tmh,brxm,jyys,ysdm,cxsj,cknr)'+
          ' select '+''''+sp_jbxx.FieldByName('tmh').AsString+''''+','+''''+
          sp_jbxx.FieldByName('brxm').AsString+''''+','+''''+pub_czyxm+''''+','+
          ''''+pub_czydm+''''+','+''''+formatdatetime('yyyy-MM-dd hh:mm:ss',Frm_func.curr_date)+''''+
          ','+'''医嘱''';
          qry_hjjl.ExecSQL;
        end
        else
        begin
          Application.MessageBox('出院天数超过了限制查看医嘱天数，请联系质控人员申请借阅',
          '提示', MB_OK + MB_ICONWARNING);
          exit;
        end;
      end;
    end;  
  end
  else
  begin
    if dm_data.qry_pub.FieldByName('cyts').AsInteger>sjxz then
    begin
      dm_data.qry_pub.close;
      dm_data.qry_pub.sql.text:='select * from sys_bljy where zyh='+''''+zyh+''' and '+
      ' datediff(day,jyrq,getdate())<=jyts';
      dm_data.qry_pub.open;
      if (not dm_data.qry_pub.IsEmpty) and (dm_data.qry_pub.FieldByName('ysdm').AsString=pub_czydm) then
      begin
        jybz:=True;
        qry_hjjl.close;
        qry_hjjl.sql.Text:='insert into zybl_jyjl(tmh,brxm,jyys,ysdm,cxsj,cknr)'+
        ' select '+''''+sp_jbxx.FieldByName('tmh').AsString+''''+','+''''+
        sp_jbxx.FieldByName('brxm').AsString+''''+','+''''+pub_czyxm+''''+','+
        ''''+pub_czydm+''''+','+''''+formatdatetime('yyyy-MM-dd hh:mm:ss',Frm_func.curr_date)+''''+
        ','+'''医嘱''';
        qry_hjjl.ExecSQL;
      end
      else
      begin
        Application.MessageBox('出院天数超过了限制查看医嘱天数，请联系质控人员申请借阅',
        '提示', MB_OK + MB_ICONWARNING);
        exit;
      end;
    end;
  end;
  e_tmh.Text := tmh;
  if trim( dbedit11.Text ) <> '' then
    e_yzys.Text := DBEdit11.Text;
  refresh_yz;
  sp_dryz.Close;
  sp_dryz.Parameters.ParamByName( '@zyh' ).Value := zyh;
  sp_dryz.Parameters.ParamByName( '@yzsx' ).Value := '全部';
  sp_dryz.Open;
  if sp_dryz.RecordCount<1 then
  begin
    if application.MessageBox( '当前病人可能已经出院20天，是否把转出库的医嘱信息重新导回？注意：此操作很消耗服务器资源，请在中午或下午下班之后进行此操作,执行时间会很久请务必耐心等待！', '提示信息', mb_iconquestion + mb_okcancel + mb_defbutton1 ) = idcancel then
      Exit
    else
    begin
      sp_lsyzzh.Close;
      sp_lsyzzh.Parameters.Refresh;
      sp_lsyzzh.Parameters.ParamByName( '@zyh' ).Value := zyh;
      sp_lsyzzh.Parameters.ParamByName( '@sczt' ).Value := '1';
      sp_lsyzzh.ExecProc;
      zt := sp_lsyzzh.Parameters.ParamByName( '@sczt' ).Value;
      Application.MessageBox(pchar(zt),'提示',MB_ICONINFORMATION);
      sp_dryz.Close;
      sp_dryz.Parameters.ParamByName( '@zyh' ).Value := zyh;
      sp_dryz.Parameters.ParamByName( '@yzsx' ).Value := '全部';
      sp_dryz.Open;
    end;


  end;
end;

procedure Tfrm_yzinput_lishi.db_brxxKeyDown( Sender: TObject; var Key: Word;
  Shift: TShiftState );
begin
  if key = 13 then
  begin
    e_yzys.SetFocus;
  end;
end;

procedure Tfrm_yzinput_lishi.delete_yz( key: word );
begin
  if ( key = vk_delete ) and ( qry_yz.RecordCount > 0 ) then
  begin
    if application.MessageBox( '是否删除该医嘱?', '提示信息', mb_iconquestion + mb_okcancel + mb_defbutton1 ) = idok then
    begin
      qry_yz.Edit;
      qry_yz.Delete;
    end;
  end;
end;

procedure Tfrm_yzinput_lishi.xminyz;
begin
  qry_yz.FieldByName( 'yzsx' ).AsString;
  qry_yz.Edit;
  if trim( tmh ) = '' then
  begin
    tmh := sp_jbxx.FieldByName( 'tmh' ).AsString;
  end;
  qry_yz.FieldByName( 'yzsx' ).AsString;
  qry_yz.FieldByName( 'tmh' ).AsString := tmh;
  qry_yz.FieldByName( 'zyh' ).AsString := zyh;
  if yzlb = '其它' then
  begin
    qry_yz.FieldByName( 'xmdm' ).AsString := '其它';
    qry_yz.FieldByName( 'xmmc' ).AsString := grid_yzlr.Columns[2].DisplayText;
    qry_yz.FieldByName( 'dw' ).AsString := '';
    qry_yz.FieldByName( 'kdks' ).AsString := pub_ksdm;
    qry_yz.FieldByName( 'kdrq' ).AsDateTime := frm_func.curr_date;
    qry_yz.FieldByName( 'kdys' ).AsString := sp_jbxx.FieldByName( 'zgys' ).AsString;
    qry_yz.FieldByName( 'yplsj' ).AsFloat := 0;
    qry_yz.FieldByName( 'sl' ).AsString := '0';
    qry_yz.FieldByName( 'czks' ).value := pub_ksdm;
    qry_xmyz.insert;
    qry_xmyz.FieldByName( 'xmdm' ).AsString := '其它';
    qry_xmyz.FieldByName( 'xmmc' ).AsString := grid_yzlr.Columns[2].DisplayText;
    qry_xmyz.FieldByName( 'lb' ).AsString := qry_yz.FieldByName( 'lb' ).AsString;
    qry_yz.FieldByName( 'kdys' ).AsString := sp_jbxx.FieldByName( 'zgys' ).AsString;
    qry_xmyz.post;
    qry_yz.FieldByName( 'yzsx' ).AsString;
    //calmhawk---
    if qry_yz.FieldByName( 'xh' ).AsString = '' then
    begin
      qry_yz.FieldByName( 'xh' ).Asinteger := maxxh + 1;
      maxxh := maxxh + 1;
    end;
    grid_yzlr.SetFocus;
    grid_yzlr.SelectedIndex := 7;
  end
  else
  begin
    qry_yz.FieldByName( 'xmdm' ).AsString := sp_cx_yp_yz.FieldByName( 'xmdm' ).AsString;
    qry_yz.FieldByName( 'xmmc' ).AsString := sp_cx_yp_yz.FieldByName( 'xmmc' ).AsString;
    qry_yz.FieldByName( 'dw' ).AsString := sp_cx_yp_yz.FieldByName( 'dw' ).AsString;
    qry_yz.FieldByName( 'kdks' ).AsString := pub_ksdm;
    qry_yz.FieldByName( 'kdrq' ).AsDateTime := frm_func.curr_date;
    qry_yz.FieldByName( 'kdys' ).AsString := pub_czydm;
    qry_yz.FieldByName( 'yplsj' ).AsFloat := sp_cx_yp_yz.FieldByName( 'zylsj' ).AsFloat;
    qry_yz.FieldByName( 'jyyb' ).AsString := sp_cx_yp_yz.FieldByName( 'yb' ).asstring;

    qry_yz.FieldByName( 'sl' ).AsFloat := 1;
    qry_yz.FieldByName( 'jyflbh' ).AsString := sp_cx_yp_yz.FieldByName( 'dldm' ).AsString;

    //calmhawk---
    if qry_yz.FieldByName( 'xh' ).AsString = '' then
    begin
      qry_yz.FieldByName( 'xh' ).Asinteger := maxxh + 1;
      maxxh := maxxh + 1;
    end;

    if trim( sp_cx_yp_yz.fieldbyname( 'zyks' ).asstring ) <> '' then
      zy_czks := sp_cx_yp_yz.FieldByName( 'zyks' ).AsString
    else
      zy_czks := pub_ksdm;
    qry_yz.FieldByName( 'czks' ).AsString := zy_czks;
    qry_xmyz.insert;
    qry_xmyz.FieldByName( 'xmdm' ).AsString := sp_cx_yp_yz.FieldByName( 'xmdm' ).AsString;
    qry_xmyz.FieldByName( 'xmmc' ).AsString := sp_cx_yp_yz.FieldByName( 'xmmc' ).AsString;
    qry_xmyz.FieldByName( 'lb' ).AsString := qry_yz.FieldByName( 'lb' ).AsString;
    qry_xmyz.post;
    grid_yzlr.SetFocus;
    if (qry_yz.FieldByName( 'lb' ).AsString='治疗') or
       (qry_yz.FieldByName( 'lb' ).AsString='检验') or
       (qry_yz.FieldByName( 'lb' ).AsString='检查')  then
    grid_yzlr.SelectedIndex := 5
    else
    grid_yzlr.SelectedIndex := 7;
  end;
end;

procedure Tfrm_yzinput_lishi.ypinyz;
begin
  //药品信息写入医嘱
  qry_yz.edit;
  qry_yz.FieldByName( 'tmh' ).AsString := tmh;
  qry_yz.FieldByName( 'zyh' ).AsString := zyh;
  qry_yz.FieldByName( 'xmdm' ).AsString := sp_cx_yp_yz.FieldByName( 'ypdm' ).AsString;
  qry_yz.FieldByName( 'xmmc' ).AsString := trim( sp_cx_yp_yz.FieldByName( 'ypmc' ).AsString );
  qry_yz.FieldByName( 'dw' ).AsString := trim( sp_cx_yp_yz.FieldByName( 'zyyfdw' ).AsString );
  qry_yz.FieldByName( 'sl' ).value := 1;
  qry_yz.FieldByName( 'ypdwid' ).AsInteger := sp_cx_yp_yz.FieldByName( 'zydwid' ).AsInteger;
  qry_yz.FieldByName( 'ypbzbl' ).AsInteger := sp_cx_yp_yz.FieldByName( 'zyyfzhl' ).AsInteger;
  qry_yz.FieldByName( 'yplsj' ).AsFloat := sp_cx_yp_yz.FieldByName( 'zylsj' ).AsFloat;
  qry_yz.FieldByName( 'ypcgj' ).AsFloat := sp_cx_yp_yz.FieldByName( 'zypfj' ).AsFloat;
  qry_yz.FieldByName( 'yldw' ).AsString := trim( sp_cx_yp_yz.FieldByName( 'yzyldw' ).AsString );
  qry_yz.FieldByName( 'kdks' ).AsString := pub_ksdm;
  qry_yz.FieldByName( 'kdrq' ).AsDateTime := frm_func.curr_date;
  qry_yz.FieldByName( 'kdys' ).AsString := pub_czydm;

  //calmhawk---
  if qry_yz.FieldByName( 'xh' ).AsString = '' then
  begin
    qry_yz.FieldByName( 'xh' ).Asinteger := maxxh + 1;
    maxxh := maxxh + 1;
  end;

  if ( isbqkf ) and ( yzlb = '材料' ) then
  begin
    qry_yz.FieldByName( 'czks' ).AsString := pub_ksdm;
  end
  else
  begin
    if yzlb = '药品' then

      qry_yz.FieldByName( 'czks' ).AsString := pub_zyxyfdm
    else
      qry_yz.FieldByName( 'czks' ).AsString := prv_zyfdm;
  end;
  qry_yz.FieldByName( 'gg' ).AsString := sp_cx_yp_yz.FieldByName( 'ypgg' ).AsString;
  if sp_cx_yp_yz.fieldbyname( 'sfdmyp' ).asboolean then
    qry_yz.FieldByName( 'yplb' ).AsString := '毒麻药品';
  qry_xmyz.insert;
  qry_xmyz.FieldByName( 'xmdm' ).AsString := sp_cx_yp_yz.FieldByName( 'ypdm' ).AsString;
  qry_xmyz.FieldByName( 'xmmc' ).AsString := trim( sp_cx_yp_yz.FieldByName( 'ypmc' ).AsString );
  qry_xmyz.FieldByName( 'lb' ).AsString := qry_yz.FieldByName( 'lb' ).AsString;
  qry_xmyz.post;
end;

procedure Tfrm_yzinput_lishi.refresh_yz;
var
  ls_sql: string;
begin
  ls_sql := 'select * from zybl_zyyz where jcff is null and zyh=:cxzyh and zxbz=0 and tzbz =0 order by xh';
  qry_yz.Close;
  qry_yz.SQL.Clear;
  qry_yz.SQL.Text := ls_sql;
  qry_yz.Parameters.ParamValues['cxzyh'] := zyh;
  qry_yz.Open;

  //----------------------------------------------------
  qry_xmyz.Close;
  qry_xmyz.Open;
  qry_yz.First;
  while not qry_yz.Eof do
  begin
    qry_xmyz.Insert;
    qry_xmyz.FieldByName( 'xmdm' ).Value := qry_yz.FieldByName( 'xmdm' ).AsString;
    qry_xmyz.FieldByName( 'xmmc' ).Value := qry_yz.FieldByName( 'xmmc' ).AsString;
    qry_xmyz.FieldByName( 'lb' ).AsString := qry_yz.FieldByName( 'lb' ).AsString;
    qry_xmyz.Post;
    qry_yz.Next;
  end;
  //--------------------------------------------------
  qry_yz.Append;
  sp_dryz.Close;
  sp_dryz.Parameters.ParamByName( '@zyh' ).Value := zyh;
  sp_dryz.Parameters.ParamByName( '@yzsx' ).Value := '全部';
  sp_dryz.Open;

end;

procedure Tfrm_yzinput_lishi.BBtn_print_cqClick( Sender: TObject );
begin
  with sp_zxjl_cq_dy do
  begin
    Close;
    Parameters.ParamByName( '@zyh' ).Value := sp_jbxx.FieldByName( 'zyh' ).AsString;
    Parameters.ParamByName( '@fs' ).Value := 0;
    Open;
  end;
  sp_zxjl_cq_dy.first;
  QRL_yymc_cq.Caption := pub_yymc + '长期医嘱记录单';
  QRL_brxm_cq.Caption := '病人姓名:' + sp_jbxx.FieldByName( 'brxm' ).AsString;
  QRL_tmh_cq.Caption := '住院号:' + sp_jbxx.FieldByName( 'tmh' ).AsString;
  QRL_bch_cq.Caption := '病床号:' + sp_jbxx.FieldByName( 'bch' ).AsString;
  xb_cq.Caption := '性别:' + trim( sp_jbxx.FieldByName( 'brxb' ).AsString );
  nl_cq.Caption := '年龄:' + trim( sp_jbxx.FieldByName( 'brnl' ).AsString );
  zd_cq.Caption := '诊断:' + trim( sp_jbxx.FieldByName( 'ryzd' ).AsString );
  QRL_dysj_cq.Caption := '打印时间:' + FormatDatetime( 'yyyy年mm月dd日', frm_func.curr_date );
  sj1.caption := '日期' + #13 + '时间';
  sj2.caption := '执行' + #13 + '时间';
  sj3.caption := '日期' + #13 + '时间';
  sj4.caption := '执行' + #13 + '时间';

  QuickRep1.Prepare;
  paper_size := 0;
  QRL_ys_cq.Caption := '共' + IntToStr( QuickRep1.Printer.PageCount ) + '页';
  QuickRep1.preview;
end;

procedure Tfrm_yzinput_lishi.BBtn_print_lsClick( Sender: TObject );
begin
  with sp_zxjl_ls_dy do
  begin
    Close;
    Parameters.ParamByName( '@zyh' ).Value := sp_jbxx.FieldByName( 'zyh' ).AsString;
    Parameters.ParamByName( '@fs' ).Value := 1;
    Open;
  end;
  sp_zxjl_ls_dy.first;
  QRL_yymc_ls.Caption := pub_yymc + '临时医嘱记录单';
  QRL_brxm_ls.Caption := '病人姓名:' + trim( sp_jbxx.FieldByName( 'brxm' ).AsString );
  QRL_tmh_ls.Caption := '住院号:' + trim( sp_jbxx.FieldByName( 'tmh' ).AsString );
  QRL_bch_ls.Caption := '病床号:' + trim( sp_jbxx.FieldByName( 'bch' ).AsString );
  xb_ls.Caption := '性别:' + trim( sp_jbxx.FieldByName( 'brxb' ).AsString );
  nl_ls.Caption := '年龄:' + trim( sp_jbxx.FieldByName( 'brnl' ).AsString );
  zd_ls.Caption := '诊断:' + trim( sp_jbxx.FieldByName( 'ryzd' ).AsString );

  QRL_dysj_ls.Caption := '打印时间:' + FormatDatetime( 'yyyy年mm月dd日', frm_func.curr_date );
  QuickRep2.Prepare;
  paper_size := 0;
  QRL_ys_ls.Caption := '共' + IntToStr( QuickRep2.Printer.PageCount ) + '页';
  QuickRep2.Preview;
end;

procedure Tfrm_yzinput_lishi.BitBtn18Click( Sender: TObject );
var
  i, y, j, count, x: Integer;
  aControl: TControl;
begin
  with sp_zxjl_cq_dy do
  begin
    Filtered := False;
    Close;
    Parameters.ParamByName( '@zyh' ).Value := Trim( sp_jbxx.fieldbyname( 'zyh' ).asstring );
    Parameters.ParamByName( '@fs' ).Value := 1;
    Open;
  end;
  //sp_zxjl_cq_dy.Filtered := False;
  sp_zxjl_cq_dy.Filter := '(yytj=''静注'' and kdks=' + '''' + pub_ksdm + '''' + ' and kdrq>=' + '''' + formatdatetime( 'yy-MM-dd', frm_func.curr_date ) + ' 00:00' + ''')';
  sp_zxjl_cq_dy.filter := sp_zxjl_cq_dy.filter + ' or ' + '(yytj=''肌注'' and kdks=' + '''' + pub_ksdm + '''' + ' and kdrq>=' + '''' + formatdatetime( 'yy-MM-dd', frm_func.curr_date ) + ' 00:00' + ''')';
  sp_zxjl_cq_dy.filter := sp_zxjl_cq_dy.filter + ' or ' + '(yytj=''皮下'' and kdks=' + '''' + pub_ksdm + '''' + ' and kdrq>=' + '''' + formatdatetime( 'yy-MM-dd', frm_func.curr_date ) + ' 00:00' + ''')';
  sp_zxjl_cq_dy.filter := sp_zxjl_cq_dy.filter + ' or ' + '(yytj=''宫颈注射'' and kdks=' + '''' + pub_ksdm + '''' + ' and kdrq>=' + '''' + formatdatetime( 'yy-MM-dd', frm_func.curr_date ) + ' 00:00' + ''')';
  sp_zxjl_cq_dy.filter := sp_zxjl_cq_dy.filter + ' or ' + '(yytj=''穴注'' and kdks=' + '''' + pub_ksdm + '''' + ' and kdrq>=' + '''' + formatdatetime( 'yy-MM-dd', frm_func.curr_date ) + ' 00:00' + ''')';

  sp_zxjl_cq_dy.Filtered := True;

  if not sp_zxjl_cq_dy.IsEmpty then
  begin
    sp_zxjl_cq_dy.First;
    if sp_zxjl_cq_dy.RecordCount mod 9 <> 0 then
      y := trunc( sp_zxjl_cq_dy.RecordCount / 9 ) + 1
    else
      y := trunc( sp_zxjl_cq_dy.RecordCount / 9 );
    count := sp_zxjl_cq_dy.RecordCount;
    for I := 1 to y do
    begin
      for j := 1 to 9 do
      begin
        if count < i * 9 then
        begin
          if j > ( 9 - ( y * 9 - count ) ) then
          begin
            aControl := QRBand10.FindChildControl( 'ksrqls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            aControl := QRBand10.FindChildControl( 'kdysmcls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).enabled := false;
            //TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := '';
          end
          else
          begin
            aControl := QRBand10.FindChildControl( 'ksrqls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := sp_zxjl_cq_dy.FieldByName( 'ksrq' ).AsString;
            aControl := QRBand10.FindChildControl( 'kdysmcls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;
            if sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
            begin
              x := ( length( sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
              QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).enabled := true;
              QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).Top := TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).top;
              QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).left := QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ).left - 20;
              QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).height := 30;
              TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := trim( sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
              TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
            end
            else
            begin
              QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).enabled := false;
              QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ).Width := 235;
              TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
              TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + ' ' + trim( sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + ' ' + trim( sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
            end;
            sp_zxjl_cq_dy.Next;
          end;
        end
        else
        begin
          aControl := QRBand10.FindChildControl( 'ksrqls' + IntToStr( j - 1 ) );
          if aControl is TQRLabel then
            TQRLabel( aControl ).Caption := sp_zxjl_cq_dy.FieldByName( 'ksrq' ).asstring;
          aControl := QRBand10.FindChildControl( 'kdysmcls' + IntToStr( j - 1 ) );
          if aControl is TQRLabel then
            TQRLabel( aControl ).Caption := sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;
          if sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
          begin
            x := ( length( sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
            QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).enabled := true;
            QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).Top := TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).top;
            QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).left := QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ).left - 20;
            QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).height := 30;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := trim( sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
          end
          else
          begin
            QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).enabled := false;
            QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ).Width := 235;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + ' ' + trim( sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + ' ' + trim( sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
          end;
          sp_zxjl_cq_dy.Next;
        end;
      end;
      DM_data.qry_pub.Close;
      DM_data.qry_pub.SQL.text := 'select * from sys_kscwsz where bqdm=' + '''' + pub_bqdm + '''' + ' and bcbh=' + '''' + trim( sp_jbxx.fieldbyname( 'bch' ).asstring ) + '''';
      DM_data.qry_pub.Open;
      QRLabel45.Caption := pub_yymc + '临时注射计划执行单';
      QRLabel46.Caption := '姓名:' + sp_jbxx.fieldbyname( 'brxm' ).asstring;
      QRLabel50.Caption := '病床号:' + Trim( DM_data.qry_pub.FieldByName( 'yybch' ).asstring );
      QRLabel51.Caption := '性别:' + sp_jbxx.fieldbyname( 'brxb' ).asstring;
      QRLabel52.Caption := '年龄:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
      QRLabel53.Caption := FormatDateTime( 'yyyy', frm_func.curr_date ) + '年';
      QRLabel67.Caption := '姓名:' + sp_jbxx.fieldbyname( 'brxm' ).asstring + '      ' +
        '病床号:' + Trim( DM_data.qry_pub.FieldByName( 'yybch' ).asstring ) + '      ' +
        '性别:' + sp_jbxx.fieldbyname( 'brxb' ).asstring + '      ' +
        '年龄:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
      //QuickRep3.Prepare;
      QRLabel58.Caption := '审核医生：';
      QuickRep5.Preview;
    end;
  end;
end;

procedure Tfrm_yzinput_lishi.BitBtn1Click( Sender: TObject );
begin
  try
    application.createform( Tfrm_cqyzxzdy, frm_cqyzxzdy );
    p_cqyzxzdy.v_zyh := sp_jbxx.FieldByName( 'zyh' ).asstring;
    p_cqyzxzdy.v_brxm := sp_jbxx.FieldByName( 'brxm' ).asstring;
    p_cqyzxzdy.v_bch := sp_jbxx.FieldByName( 'bch' ).asstring;
    p_cqyzxzdy.v_brxb := sp_jbxx.FieldByName( 'brxb' ).asstring;
    p_cqyzxzdy.v_brnl := sp_jbxx.FieldByName( 'brnl' ).asstring;
    p_cqyzxzdy.v_ryzd := sp_jbxx.FieldByName( 'ryzd' ).asstring;
    p_cqyzxzdy.v_tmh := sp_jbxx.FieldByName( 'tmh' ).asstring;
    p_cqyzxzdy.sfxse := '';
    frm_cqyzxzdy.showmodal;
  finally
    frm_cqyzxzdy.free;
  end;
end;

procedure Tfrm_yzinput_lishi.BitBtn2Click( Sender: TObject );
begin
  try
    application.createform( Tfrm_lsyzxzdy, frm_lsyzxzdy );
    p_lsyzxzdy.v_zyh := sp_jbxx.FieldByName( 'zyh' ).asstring;
    p_lsyzxzdy.v_brxm := sp_jbxx.FieldByName( 'brxm' ).asstring;
    p_lsyzxzdy.v_bch := sp_jbxx.FieldByName( 'bch' ).asstring;
    p_lsyzxzdy.v_brxb := sp_jbxx.FieldByName( 'brxb' ).asstring;
    p_lsyzxzdy.v_brnl := sp_jbxx.FieldByName( 'brnl' ).asstring;
    p_lsyzxzdy.v_ryzd := sp_jbxx.FieldByName( 'ryzd' ).asstring;
    p_lsyzxzdy.v_tmh := sp_jbxx.FieldByName( 'tmh' ).asstring;
    p_lsyzxzdy.sfxse := '';
    frm_lsyzxzdy.showmodal;
  finally
    frm_lsyzxzdy.free;
  end;
end;

procedure Tfrm_yzinput_lishi.BitBtn3Click( Sender: TObject );
var
  i, y, j, count, x: Integer;
  aControl: TControl;
  v_yytj,v_lb,filter:string;
begin
  with sp_zxjl_cq_dy do
  begin
    Filtered := False;
    Close;
    Parameters.ParamByName( '@zyh' ).Value := Trim( sp_jbxx.fieldbyname( 'zyh' ).asstring );
    Parameters.ParamByName( '@fs' ).Value := 0;
    Open;
  end;

  DM_data.qry_pub.close;
  DM_data.qry_pub.sql.text:='select yytj from zybl_zyyz_dytjsz where dyxm=''输液计划单''';
  DM_data.qry_pub.Open;
  if DM_data.qry_pub.IsEmpty then
  begin
  v_yytj:='';
  end
  else
  begin
  DM_data.qry_pub.First;
  while not DM_data.qry_pub.eof do
  begin
  v_yytj:=v_yytj+ '(yytj='+''''+DM_data.qry_pub.FieldByName('yytj').asstring+''''+' and  tzrq=null and kdks=' + '''' + pub_ksdm + ''')' +' or ';
  DM_data.qry_pub.Next;
  end;

  end;


  DM_data.qry_pub.close;
  DM_data.qry_pub.sql.text:='select lbmc from zybl_zyyz_dylbsz where dyxm=''输液计划单''';
  DM_data.qry_pub.Open;
  if DM_data.qry_pub.IsEmpty then
  begin
  v_lb:='';
  end
  else
  begin
  DM_data.qry_pub.First;
  while not DM_data.qry_pub.eof do
  begin
  v_lb:=v_lb+ '(lb='+''''+DM_data.qry_pub.FieldByName('lbmc').asstring+''''+' and  tzrq=null and kdks=' + '''' + pub_ksdm + ''')' +' or ';
  DM_data.qry_pub.Next;
  end;

  end;

  if v_yytj+ v_lb='' then
  begin
  filter:=' 1<>1 ';
  end
  else
  begin
  filter:= v_yytj+ v_lb+' ( yytj=''特殊情况'' )';
  end;

  sp_zxjl_cq_dy.Filter := filter;
  sp_zxjl_cq_dy.Filtered := True;

  if not sp_zxjl_cq_dy.IsEmpty then
  begin
    if zzdx='A4' then
    begin
      sp_zxjl_cq_dy.First;
      if sp_zxjl_cq_dy.RecordCount mod 5 <> 0 then
        y := trunc( sp_zxjl_cq_dy.RecordCount / 5 ) + 1
      else
        y := trunc( sp_zxjl_cq_dy.RecordCount / 5 );
      count := sp_zxjl_cq_dy.RecordCount;
      for I := 1 to y do
      begin
        for j := 1 to 5 do
        begin
          if count < i * 5 then
          begin
            if j > ( 5 - ( y * 5 - count ) ) then
            begin
              aControl := DetailBand1.FindChildControl( 'ksrq' + IntToStr( j - 1 ) );
              if aControl is TQRLabel then
                TQRLabel( aControl ).Caption := '';
              aControl := DetailBand1.FindChildControl( 'kdysmc' + IntToStr( j - 1 ) );
              if aControl is TQRLabel then
                TQRLabel( aControl ).Caption := '';
              DetailBand1.FindChildControl( 'qrgrimage' + IntToStr( j ) ).enabled := false;
              //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
              TQRLabel( DetailBand1.FindChildControl( 'ypyf' + IntToStr( j - 1 ) ) ).Caption := '';
              //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
              TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).caption := '';
            end
            else
            begin
              aControl := DetailBand1.FindChildControl( 'ksrq' + IntToStr( j - 1 ) );
              if aControl is TQRLabel then
                TQRLabel( aControl ).Caption := sp_zxjl_cq_dy.FieldByName( 'ksrq' ).AsString;
              aControl := DetailBand1.FindChildControl( 'kdysmc' + IntToStr( j - 1 ) );
              if aControl is TQRLabel then
                TQRLabel( aControl ).Caption := sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;
              if sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
              begin
                x := ( length( sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
                DetailBand1.FindChildControl( 'QRgrImage' + IntToStr( j ) ).enabled := true;
                DetailBand1.FindChildControl( 'QRgrImage' + IntToStr( j ) ).Top := TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).top;
                DetailBand1.FindChildControl( 'QRgrImage' + IntToStr( j ) ).left := DetailBand1.FindChildControl( 'ypyf' + IntToStr( j - 1 ) ).left - 20;
                DetailBand1.FindChildControl( 'qrgrimage' + IntToStr( j ) ).height := 30;
                TQRLabel( DetailBand1.FindChildControl( 'ypyf' + IntToStr( j - 1 ) ) ).Caption := trim( sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
                TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
                //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
              end
              else
              begin
                DetailBand1.FindChildControl( 'qrgrimage' + IntToStr( j ) ).enabled := false;
                DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ).Width := 235;
                TQRLabel( DetailBand1.FindChildControl( 'ypyf' + IntToStr( j - 1 ) ) ).Caption := '';
                TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + ' ' + trim( sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + ' ' + trim( sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
                // TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
              end;
              sp_zxjl_cq_dy.Next;
            end;
          end
          else
          begin
            aControl := DetailBand1.FindChildControl( 'ksrq' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := sp_zxjl_cq_dy.FieldByName( 'ksrq' ).asstring;
            aControl := DetailBand1.FindChildControl( 'kdysmc' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;
            if sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
            begin
              x := ( length( sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
              DetailBand1.FindChildControl( 'QRgrImage' + IntToStr( j ) ).enabled := true;
              DetailBand1.FindChildControl( 'QRgrImage' + IntToStr( j ) ).Top := TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).top;
              DetailBand1.FindChildControl( 'qrgrimage' + IntToStr( j ) ).left := DetailBand1.FindChildControl( 'ypyf' + IntToStr( j - 1 ) ).left - 20;
              DetailBand1.FindChildControl( 'qrgrimage' + IntToStr( j ) ).height := 30;
              TQRLabel( DetailBand1.FindChildControl( 'ypyf' + IntToStr( j - 1 ) ) ).Caption := trim( sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
              TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
              //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end
            else
            begin
              DetailBand1.FindChildControl( 'qrgrimage' + IntToStr( j ) ).enabled := false;
              DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ).Width := 235;
              TQRLabel( DetailBand1.FindChildControl( 'ypyf' + IntToStr( j - 1 ) ) ).Caption := '';
              TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + ' ' + trim( sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + ' ' + trim( sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
              //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end;
            sp_zxjl_cq_dy.Next;
          end;
        end;
        QRLabel2.Caption := pub_yymc + '长期输液计划执行单';
        DM_data.qry_pub.Close;
        DM_data.qry_pub.SQL.text := 'select * from sys_kscwsz where bqdm=' + '''' + pub_bqdm + '''' + ' and bcbh=' + '''' + trim( sp_jbxx.fieldbyname( 'bch' ).asstring ) + '''';
        DM_data.qry_pub.Open;

        QRLabel3.Caption := '姓名:' + sp_jbxx.fieldbyname( 'brxm' ).asstring;
        QRLabel20.Caption := '病床号:' + Trim( DM_data.qry_pub.FieldByName( 'yybch' ).asstring );
        QRLabel21.Caption := '性别:' + sp_jbxx.fieldbyname( 'brxb' ).asstring;
        QRLabel26.Caption := '年龄:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
        ny.Caption := FormatDateTime( 'yyyy', frm_func.curr_date ) + '年';

        QRLabel61.Caption := '姓名:' + sp_jbxx.fieldbyname( 'brxm' ).asstring + '      ' +
          '病床号:' + Trim( DM_data.qry_pub.FieldByName( 'yybch' ).asstring ) + '      '+
          '卡号:' + Trim( sp_jbxx.fieldbyname( 'tmh' ).asstring  );
        //'性别:' + sp_jbxx.fieldbyname( 'brxb' ).asstring +'      '+
        //'年龄:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
//QuickRep3.Prepare;
        QRLabel57.Caption := '审核医生:';
        QuickRep3.Preview;
      end;
    end
    else
    begin
      sp_zxjl_cq_dy.First;
      if sp_zxjl_cq_dy.RecordCount mod 9 <> 0 then
        y := trunc( sp_zxjl_cq_dy.RecordCount / 9 ) + 1
      else
        y := trunc( sp_zxjl_cq_dy.RecordCount / 9 );
      count := sp_zxjl_cq_dy.RecordCount;
      for I := 1 to y do
      begin
        for j := 1 to 9 do
        begin
          if count < i * 9 then
          begin
            if j > ( 9 - ( y * 9 - count ) ) then
            begin
              aControl := DetailBand2.FindChildControl( 'ksrqjy' + IntToStr( j - 1 ) );
              if aControl is TQRLabel then
                TQRLabel( aControl ).Caption := '';
              aControl := DetailBand2.FindChildControl( 'kdysmcjy' + IntToStr( j - 1 ) );
              if aControl is TQRLabel then
                TQRLabel( aControl ).Caption := '';
              DetailBand2.FindChildControl( 'qrgrimagejy' + IntToStr( j ) ).enabled := false;
              //  TQRLabel( DetailBand2.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
              TQRLabel( DetailBand2.FindChildControl( 'ypyfjy' + IntToStr( j - 1 ) ) ).Caption := '';
              //TQRLabel( DetailBand2.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
              TQRLabel( DetailBand2.FindChildControl( 'xmmcjy' + IntToStr( j - 1 ) ) ).caption := '';
            end
            else
            begin
              aControl := DetailBand2.FindChildControl( 'ksrqjy' + IntToStr( j - 1 ) );
              if aControl is TQRLabel then
                TQRLabel( aControl ).Caption := sp_zxjl_cq_dy.FieldByName( 'ksrq' ).AsString;
              aControl := DetailBand2.FindChildControl( 'kdysmcjy' + IntToStr( j - 1 ) );
              if aControl is TQRLabel then
                TQRLabel( aControl ).Caption := sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;
              if sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
              begin
                x := ( length( sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
                DetailBand2.FindChildControl( 'QRgrImagejy' + IntToStr( j ) ).enabled := true;
                DetailBand2.FindChildControl( 'QRgrImagejy' + IntToStr( j ) ).Top := TQRLabel( DetailBand2.FindChildControl( 'xmmcjy' + IntToStr( j - 1 ) ) ).top;
                DetailBand2.FindChildControl( 'QRgrImagejy' + IntToStr( j ) ).left := DetailBand2.FindChildControl( 'ypyfjy' + IntToStr( j - 1 ) ).left - 20;
                DetailBand2.FindChildControl( 'qrgrimagejy' + IntToStr( j ) ).height := 30;
                TQRLabel( DetailBand2.FindChildControl( 'ypyfjy' + IntToStr( j - 1 ) ) ).Caption := trim( sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
                TQRLabel( DetailBand2.FindChildControl( 'xmmcjy' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
                //TQRLabel( DetailBand2.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
              end
              else
              begin
                DetailBand2.FindChildControl( 'qrgrimagejy' + IntToStr( j ) ).enabled := false;
                DetailBand2.FindChildControl( 'xmmcjy' + IntToStr( j - 1 ) ).Width := 235;
                TQRLabel( DetailBand2.FindChildControl( 'ypyfjy' + IntToStr( j - 1 ) ) ).Caption := '';
                TQRLabel( DetailBand2.FindChildControl( 'xmmcjy' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + ' ' + trim( sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + ' ' + trim( sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
                // TQRLabel( DetailBand2.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
              end;
              sp_zxjl_cq_dy.Next;
            end;
          end
          else
          begin
            aControl := DetailBand2.FindChildControl( 'ksrqjy' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := sp_zxjl_cq_dy.FieldByName( 'ksrq' ).asstring;
            aControl := DetailBand2.FindChildControl( 'kdysmcjy' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;
            if sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
            begin
              x := ( length( sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
              DetailBand2.FindChildControl( 'QRgrImagejy' + IntToStr( j ) ).enabled := true;
              DetailBand2.FindChildControl( 'QRgrImagejy' + IntToStr( j ) ).Top := TQRLabel( DetailBand2.FindChildControl( 'xmmcjy' + IntToStr( j - 1 ) ) ).top;
              DetailBand2.FindChildControl( 'qrgrimagejy' + IntToStr( j ) ).left := DetailBand2.FindChildControl( 'ypyfjy' + IntToStr( j - 1 ) ).left - 20;
              DetailBand2.FindChildControl( 'qrgrimagejy' + IntToStr( j ) ).height := 30;
              TQRLabel( DetailBand2.FindChildControl( 'ypyfjy' + IntToStr( j - 1 ) ) ).Caption := trim( sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
              TQRLabel( DetailBand2.FindChildControl( 'xmmcjy' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
              //  TQRLabel( DetailBand2.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end
            else
            begin
              DetailBand2.FindChildControl( 'qrgrimagejy' + IntToStr( j ) ).enabled := false;
              DetailBand2.FindChildControl( 'xmmcjy' + IntToStr( j - 1 ) ).Width := 235;
              TQRLabel( DetailBand2.FindChildControl( 'ypyfjy' + IntToStr( j - 1 ) ) ).Caption := '';
              TQRLabel( DetailBand2.FindChildControl( 'xmmcjy' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + ' ' + trim( sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + ' ' + trim( sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
              //  TQRLabel( DetailBand2.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end;
            sp_zxjl_cq_dy.Next;
          end;
        end;
        QRLabel2jy.Caption := pub_yymc + '长期输液计划执行单';
        DM_data.qry_pub.Close;
        DM_data.qry_pub.SQL.text := 'select * from sys_kscwsz where bqdm=' + '''' + pub_bqdm + '''' + ' and bcbh=' + '''' + trim( sp_jbxx.fieldbyname( 'bch' ).asstring ) + '''';
        DM_data.qry_pub.Open;

        QRLabel3jy.Caption := '姓名:' + sp_jbxx.fieldbyname( 'brxm' ).asstring;
        QRLabel20jy.Caption := '病床号:' + Trim( DM_data.qry_pub.FieldByName( 'yybch' ).asstring );
        QRLabel21jy.Caption := '性别:' + sp_jbxx.fieldbyname( 'brxb' ).asstring;
        QRLabel26jy.Caption := '年龄:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
        nyjy.Caption := FormatDateTime( 'yyyy', frm_func.curr_date ) + '年';

        QRLabel61jy.Caption := '姓名:' + sp_jbxx.fieldbyname( 'brxm' ).asstring + '      ' +
          '病床号:' + Trim( DM_data.qry_pub.FieldByName( 'yybch' ).asstring ) + '      '+
                   '卡号:' + Trim( sp_jbxx.fieldbyname( 'tmh' ).asstring  );
        //'性别:' + sp_jbxx.fieldbyname( 'brxb' ).asstring +'      '+
        //'年龄:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
//QuickRep3.Prepare;
//QRLabel57.Caption := '审核医生:';
        QuickRep6.Preview;
      end;
    end;
  end;
end;

procedure Tfrm_yzinput_lishi.BitBtn4Click( Sender: TObject );
var
  i, y, j, count, x: Integer;
  aControl: TControl;
  v_yytj,v_lb,filter:string;
begin
  with sp_zxjl_cq_dy do
  begin
    Filtered := False;
    Close;
    Parameters.ParamByName( '@zyh' ).Value := Trim( sp_jbxx.fieldbyname( 'zyh' ).asstring );
    Parameters.ParamByName( '@fs' ).Value := 0;
    Open;
  end;

  DM_data.qry_pub.close;
  DM_data.qry_pub.sql.text:='select yytj from zybl_zyyz_dytjsz where dyxm=''口服药执行单''';
  DM_data.qry_pub.Open;
  if DM_data.qry_pub.IsEmpty then
  begin
  v_yytj:='';
  end
  else
  begin
  DM_data.qry_pub.First;
  while not DM_data.qry_pub.eof do
  begin
  v_yytj:=v_yytj+ '(yytj='+''''+DM_data.qry_pub.FieldByName('yytj').asstring+''''+' and  tzrq=null and kdks=' + '''' + pub_ksdm + ''')' +' or ';
  DM_data.qry_pub.Next;
  end;

  end;
  DM_data.qry_pub.close;
  DM_data.qry_pub.sql.text:='select lbmc from zybl_zyyz_dylbsz where dyxm=''口服药执行单''';
  DM_data.qry_pub.Open;
  if DM_data.qry_pub.IsEmpty then
  begin
  v_lb:='';
  end
  else
  begin
  DM_data.qry_pub.First;
  while not DM_data.qry_pub.eof do
  begin
  v_lb:=v_lb+ '(lb='+''''+DM_data.qry_pub.FieldByName('lbmc').asstring+''''+' and  tzrq=null and kdks=' + '''' + pub_ksdm + ''')' +' or ';
  DM_data.qry_pub.Next;
  end;

  end;

  if v_yytj+ v_lb='' then
  begin
  filter:=' 1<>1 ';
  end
  else
  begin
  filter:= v_yytj+ v_lb+' ( yytj=''特殊情况'' )';
  end;

  sp_zxjl_cq_dy.Filter := filter;
  sp_zxjl_cq_dy.Filtered := True;

  if not sp_zxjl_cq_dy.IsEmpty then
  begin
    sp_zxjl_cq_dy.First;
    if sp_zxjl_cq_dy.RecordCount mod 20 <> 0 then
      y := trunc( sp_zxjl_cq_dy.RecordCount / 20 ) + 1
    else
      y := trunc( sp_zxjl_cq_dy.RecordCount / 20 );
    count := sp_zxjl_cq_dy.RecordCount;
    for I := 1 to y do
    begin
      for j := 1 to 20 do
      begin
        if count < y * 20 then
        begin
          if j > ( 20 - ( i * 20 - count ) ) then
          begin
            aControl := QRBand7.FindChildControl( 'ksrq_' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            aControl := QRBand7.FindChildControl( 'kdysmc_' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            //TQRLabel( QRBand7.FindChildControl( 'xmmc_' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel( QRBand7.FindChildControl( 'xmmc_' + IntToStr( j - 1 ) ) ).caption := '';
          end
          else
          begin
            aControl := QRBand7.FindChildControl( 'ksrq_' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := sp_zxjl_cq_dy.FieldByName( 'ksrq' ).AsString;
            aControl := QRBand7.FindChildControl( 'kdysmc_' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;
            if sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
            begin
              x := ( length( sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
              TQRLabel( QRBand7.FindChildControl( 'xmmc_' + IntToStr( j - 1 ) ) ).caption :=
                sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
            end
            else
            begin
              QRBand7.FindChildControl( 'xmmc_' + IntToStr( j - 1 ) ).Width := 190;
              TQRLabel( QRBand7.FindChildControl( 'xmmc_' + IntToStr( j - 1 ) ) ).caption :=
                sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + '  ' + trim( sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
            end;
            sp_zxjl_cq_dy.Next;
          end;
        end
        else
        begin
          aControl := QRBand7.FindChildControl( 'ksrq_' + IntToStr( j - 1 ) );
          if aControl is TQRLabel then
            TQRLabel( aControl ).Caption := sp_zxjl_cq_dy.FieldByName( 'ksrq' ).asstring;
          aControl := QRBand7.FindChildControl( 'kdysmc_' + IntToStr( j - 1 ) );
          if aControl is TQRLabel then
            TQRLabel( aControl ).Caption := sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;
          if sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
          begin
            x := ( length( sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
            TQRLabel( QRBand7.FindChildControl( 'xmmc_' + IntToStr( j - 1 ) ) ).caption :=
              sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
          end
          else
          begin
            QRBand7.FindChildControl( 'xmmc_' + IntToStr( j - 1 ) ).Width := 190;
            TQRLabel( QRBand7.FindChildControl( 'xmmc_' + IntToStr( j - 1 ) ) ).caption :=
              sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + '  ' + trim( sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
          end;
          sp_zxjl_cq_dy.Next;
        end;
      end;
      DM_data.qry_pub.Close;
      DM_data.qry_pub.SQL.text := 'select * from sys_kscwsz where bqdm=' + '''' + pub_bqdm + '''' + ' and bcbh=' + '''' + trim( sp_jbxx.fieldbyname( 'bch' ).asstring ) + '''';
      DM_data.qry_pub.Open;
      QRLabel31.Caption := pub_yymc + '医嘱执行单(口服药)';
      QRLabel32.Caption := '姓名:' + sp_jbxx.fieldbyname( 'brxm' ).asstring;
      QRLabel36.Caption := '床号:' + Trim( DM_data.qry_pub.FieldByName( 'yybch' ).asstring );
      qrlbl_nf_tmh.Caption := '住院号:' + sp_jbxx.fieldbyname( 'tmh' ).asstring;
      qrlbl_nfQRL_bq_cq.Caption := '病区:' + pub_bqmc;
      QuickRep4.Prepare;
      ys.Caption := '第' + '   ' + inttostr( i ) + '  页';
      qrl_ks.Caption := '姓名:' + sp_jbxx.fieldbyname( 'brxm' ).asstring + '   ' +
        '床号:' + Trim( DM_data.qry_pub.FieldByName( 'yybch' ).asstring ) + '   ' +
        '病区:' + pub_bqmc +'   '+ '卡号:' + Trim( sp_jbxx.fieldbyname( 'tmh' ).asstring  );
      QuickRep4.Preview;
    end;
  end;
end;

procedure Tfrm_yzinput_lishi.BitBtn5Click( Sender: TObject );
begin
  try
    application.createform( tfrm_jcsqd, frm_jcsqd );
    frm_jcsqd.pq.Text := sp_jbxx.FieldByName( 'bch' ).AsString;
    frm_jcsqd.showmodal;
  finally
    frm_jcsqd.free;
  end
end;

procedure Tfrm_yzinput_lishi.BitBtn6Click( Sender: TObject );
var
  i, y, j, count, x: Integer;
  aControl: TControl;
begin
  with sp_zxjl_cq_dy do
  begin
    Filtered := False;
    Close;
    Parameters.ParamByName( '@zyh' ).Value := Trim( sp_jbxx.fieldbyname( 'zyh' ).asstring );
    Parameters.ParamByName( '@fs' ).Value := 1;
    Open;
  end;
  sp_zxjl_cq_dy.Filtered := False;
  sp_zxjl_cq_dy.Filter := '(yytj like ''%静滴%'' and kdks=' + '''' + pub_ksdm + '''' + ' and kdrq>=' + '''' + formatdatetime( 'yy-MM-dd', frm_func.curr_date ) + ' 00:00' + ''') or' +
    ' (yytj=''静脉泵入'' and kdks=' + '''' + pub_ksdm + '''' + ' and kdrq>=' +
    '''' + formatdatetime( 'yy-MM-dd', frm_func.curr_date ) + ' 00:00' + ''')';

  sp_zxjl_cq_dy.Filtered := True;

  if not sp_zxjl_cq_dy.IsEmpty then
  begin
    sp_zxjl_cq_dy.First;
    if sp_zxjl_cq_dy.RecordCount mod 9 <> 0 then
      y := trunc( sp_zxjl_cq_dy.RecordCount / 9 ) + 1
    else
      y := trunc( sp_zxjl_cq_dy.RecordCount / 9 );
    count := sp_zxjl_cq_dy.RecordCount;
    for I := 1 to y do
    begin
      for j := 1 to 9 do
      begin
        if count < i * 9 then
        begin
          if j > ( 9 - ( y * 9 - count ) ) then
          begin
            aControl := QRBand10.FindChildControl( 'ksrqls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            aControl := QRBand10.FindChildControl( 'kdysmcls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).enabled := false;
            //TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := '';
          end
          else
          begin
            aControl := QRBand10.FindChildControl( 'ksrqls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := sp_zxjl_cq_dy.FieldByName( 'ksrq' ).AsString;
            aControl := QRBand10.FindChildControl( 'kdysmcls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;
            if sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
            begin
              x := ( length( sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
              QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).enabled := true;
              QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).Top := TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).top;
              QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).left := QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ).left - 20;
              QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).height := 30;
              TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := trim( sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
              TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
            end
            else
            begin
              QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).enabled := false;
              QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ).Width := 235;
              TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
              TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + ' ' + trim( sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + ' ' + trim( sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
            end;
            sp_zxjl_cq_dy.Next;
          end;
        end
        else
        begin
          aControl := QRBand10.FindChildControl( 'ksrqls' + IntToStr( j - 1 ) );
          if aControl is TQRLabel then
            TQRLabel( aControl ).Caption := sp_zxjl_cq_dy.FieldByName( 'ksrq' ).asstring;
          aControl := QRBand10.FindChildControl( 'kdysmcls' + IntToStr( j - 1 ) );
          if aControl is TQRLabel then
            TQRLabel( aControl ).Caption := sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;
          if sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
          begin
            x := ( length( sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
            QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).enabled := true;
            QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).Top := TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).top;
            QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).left := QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ).left - 20;
            QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).height := 30;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := trim( sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
          end
          else
          begin
            QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).enabled := false;
            QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ).Width := 235;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + ' ' + trim( sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + ' ' + trim( sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
          end;
          sp_zxjl_cq_dy.Next;
        end;
      end;
      DM_data.qry_pub.Close;
      DM_data.qry_pub.SQL.text := 'select * from sys_kscwsz where bqdm=' + '''' + pub_bqdm + '''' + ' and bcbh=' + '''' + trim( sp_jbxx.fieldbyname( 'bch' ).asstring ) + '''';
      DM_data.qry_pub.Open;
      QRLabel45.Caption := pub_yymc + '临时输液计划执行单';
      QRLabel46.Caption := '姓名:' + sp_jbxx.fieldbyname( 'brxm' ).asstring;
      QRLabel50.Caption := '病床号:' + Trim( DM_data.qry_pub.FieldByName( 'yybch' ).asstring );
      QRLabel51.Caption := '性别:' + sp_jbxx.fieldbyname( 'brxb' ).asstring;
      QRLabel52.Caption := '年龄:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
      QRLabel53.Caption := FormatDateTime( 'yyyy', frm_func.curr_date ) + '年';

      QRLabel67.Caption := '姓名:' + sp_jbxx.fieldbyname( 'brxm' ).asstring + '      ' +
        '病床号:' + Trim( DM_data.qry_pub.FieldByName( 'yybch' ).asstring ) + '      '+
        '卡号:' + Trim( sp_jbxx.fieldbyname( 'tmh' ).asstring  );
      //   '年龄:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
//QuickRep3.Prepare;
      QRLabel58.Caption := '审核医生：';
      QuickRep5.Preview;
    end;
  end;
end;

procedure Tfrm_yzinput_lishi.BitBtn7Click( Sender: TObject );
var
  i, y, j, count, x: Integer;
  aControl: TControl;
begin
  with sp_zxjl_cq_dy do
  begin
    Filtered := False;
    Close;
    Parameters.ParamByName( '@zyh' ).Value := Trim( sp_jbxx.fieldbyname( 'zyh' ).asstring );
    Parameters.ParamByName( '@fs' ).Value := 0;
    Open;
  end;
  //sp_zxjl_cq_dy.Filtered := False;
  sp_zxjl_cq_dy.Filter := '(yytj=''肌注'' and  tzrq=null and kdks=' + '''' + pub_ksdm + ''')' +
    ' or (yytj=''静注'' and  tzrq=null and kdks=' + '''' + pub_ksdm + ''')' +
    ' or (yytj=''皮下'' and  tzrq=null and kdks=' + '''' + pub_ksdm + ''')' +
    ' or (yytj=''宫颈注射'' and  tzrq=null and kdks=' + '''' + pub_ksdm + ''')' +
    ' or (yytj=''穴注'' and  tzrq=null and kdks=' + '''' + pub_ksdm + ''')';
  sp_zxjl_cq_dy.Filtered := True;

  if not sp_zxjl_cq_dy.IsEmpty then
  begin
    if zzdx='A4' then
    begin
      sp_zxjl_cq_dy.First;
      if sp_zxjl_cq_dy.RecordCount mod 5 <> 0 then
        y := trunc( sp_zxjl_cq_dy.RecordCount / 5 ) + 1
      else
        y := trunc( sp_zxjl_cq_dy.RecordCount / 5 );
      count := sp_zxjl_cq_dy.RecordCount;
      for I := 1 to y do
      begin
        for j := 1 to 5 do
        begin
          if count < i * 5 then
          begin
            if j > ( 5 - ( y * 5 - count ) ) then
            begin
              aControl := DetailBand1.FindChildControl( 'ksrq' + IntToStr( j - 1 ) );
              if aControl is TQRLabel then
                TQRLabel( aControl ).Caption := '';
              aControl := DetailBand1.FindChildControl( 'kdysmc' + IntToStr( j - 1 ) );
              if aControl is TQRLabel then
                TQRLabel( aControl ).Caption := '';
              DetailBand1.FindChildControl( 'qrgrimage' + IntToStr( j ) ).enabled := false;
              //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
              TQRLabel( DetailBand1.FindChildControl( 'ypyf' + IntToStr( j - 1 ) ) ).Caption := '';
              //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
              TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).caption := '';
            end
            else
            begin
              aControl := DetailBand1.FindChildControl( 'ksrq' + IntToStr( j - 1 ) );
              if aControl is TQRLabel then
                TQRLabel( aControl ).Caption := sp_zxjl_cq_dy.FieldByName( 'ksrq' ).AsString;
              aControl := DetailBand1.FindChildControl( 'kdysmc' + IntToStr( j - 1 ) );
              if aControl is TQRLabel then
                TQRLabel( aControl ).Caption := sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;
              if sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
              begin
                x := ( length( sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
                DetailBand1.FindChildControl( 'QRgrImage' + IntToStr( j ) ).enabled := true;
                DetailBand1.FindChildControl( 'QRgrImage' + IntToStr( j ) ).Top := TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).top;
                DetailBand1.FindChildControl( 'QRgrImage' + IntToStr( j ) ).left := DetailBand1.FindChildControl( 'ypyf' + IntToStr( j - 1 ) ).left - 20;
                DetailBand1.FindChildControl( 'qrgrimage' + IntToStr( j ) ).height := 30;
                TQRLabel( DetailBand1.FindChildControl( 'ypyf' + IntToStr( j - 1 ) ) ).Caption := trim( sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
                TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
                //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
              end
              else
              begin
                DetailBand1.FindChildControl( 'qrgrimage' + IntToStr( j ) ).enabled := false;
                DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ).Width := 235;
                TQRLabel( DetailBand1.FindChildControl( 'ypyf' + IntToStr( j - 1 ) ) ).Caption := '';
                TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + ' ' + trim( sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + ' ' + trim( sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
                // TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
              end;
              sp_zxjl_cq_dy.Next;
            end;
          end
          else
          begin
            aControl := DetailBand1.FindChildControl( 'ksrq' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := sp_zxjl_cq_dy.FieldByName( 'ksrq' ).asstring;
            aControl := DetailBand1.FindChildControl( 'kdysmc' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;
            if sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
            begin
              x := ( length( sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
              DetailBand1.FindChildControl( 'QRgrImage' + IntToStr( j ) ).enabled := true;
              DetailBand1.FindChildControl( 'QRgrImage' + IntToStr( j ) ).Top := TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).top;
              DetailBand1.FindChildControl( 'qrgrimage' + IntToStr( j ) ).left := DetailBand1.FindChildControl( 'ypyf' + IntToStr( j - 1 ) ).left - 20;
              DetailBand1.FindChildControl( 'qrgrimage' + IntToStr( j ) ).height := 30;
              TQRLabel( DetailBand1.FindChildControl( 'ypyf' + IntToStr( j - 1 ) ) ).Caption := trim( sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
              TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
              //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end
            else
            begin
              DetailBand1.FindChildControl( 'qrgrimage' + IntToStr( j ) ).enabled := false;
              DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ).Width := 235;
              TQRLabel( DetailBand1.FindChildControl( 'ypyf' + IntToStr( j - 1 ) ) ).Caption := '';
              TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + ' ' + trim( sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + ' ' + trim( sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
              //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end;
            sp_zxjl_cq_dy.Next;
          end;
        end;
        QRLabel2.Caption := pub_yymc + '长期注射计划执行单';
        DM_data.qry_pub.Close;
        DM_data.qry_pub.SQL.text := 'select * from sys_kscwsz where bqdm=' + '''' + pub_bqdm + '''' + ' and bcbh=' + '''' + trim( sp_jbxx.fieldbyname( 'bch' ).asstring ) + '''';
        DM_data.qry_pub.Open;

        QRLabel3.Caption := '姓名:' + sp_jbxx.fieldbyname( 'brxm' ).asstring;
        QRLabel20.Caption := '病床号:' + Trim( DM_data.qry_pub.FieldByName( 'yybch' ).asstring );
        QRLabel21.Caption := '性别:' + sp_jbxx.fieldbyname( 'brxb' ).asstring;
        QRLabel26.Caption := '年龄:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
        ny.Caption := FormatDateTime( 'yyyy', frm_func.curr_date ) + '年';

        QRLabel61.Caption := '姓名:' + sp_jbxx.fieldbyname( 'brxm' ).asstring + '      ' +
          '病床号:' + Trim( DM_data.qry_pub.FieldByName( 'yybch' ).asstring ) + '      '+
                 '卡号:' + Trim( sp_jbxx.fieldbyname( 'tmh' ).asstring  );
        //'年龄:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
//QuickRep3.Prepare;
        QRLabel57.Caption := '审核医生:';
        QuickRep3.Preview;
      end;
    end
    else
    begin
      sp_zxjl_cq_dy.First;
      if sp_zxjl_cq_dy.RecordCount mod 9 <> 0 then
        y := trunc( sp_zxjl_cq_dy.RecordCount / 9 ) + 1
      else
        y := trunc( sp_zxjl_cq_dy.RecordCount / 9 );
      count := sp_zxjl_cq_dy.RecordCount;
      for I := 1 to y do
      begin
        for j := 1 to 9 do
        begin
          if count < i * 9 then
          begin
            if j > ( 9 - ( y * 9 - count ) ) then
            begin
              aControl := DetailBand2.FindChildControl( 'ksrqjy' + IntToStr( j - 1 ) );
              if aControl is TQRLabel then
                TQRLabel( aControl ).Caption := '';
              aControl := DetailBand2.FindChildControl( 'kdysmcjy' + IntToStr( j - 1 ) );
              if aControl is TQRLabel then
                TQRLabel( aControl ).Caption := '';
              DetailBand2.FindChildControl( 'qrgrimagejy' + IntToStr( j ) ).enabled := false;
              //  TQRLabel( DetailBand2.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
              TQRLabel( DetailBand2.FindChildControl( 'ypyfjy' + IntToStr( j - 1 ) ) ).Caption := '';
              //TQRLabel( DetailBand2.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
              TQRLabel( DetailBand2.FindChildControl( 'xmmcjy' + IntToStr( j - 1 ) ) ).caption := '';
            end
            else
            begin
              aControl := DetailBand2.FindChildControl( 'ksrqjy' + IntToStr( j - 1 ) );
              if aControl is TQRLabel then
                TQRLabel( aControl ).Caption := sp_zxjl_cq_dy.FieldByName( 'ksrq' ).AsString;
              aControl := DetailBand2.FindChildControl( 'kdysmcjy' + IntToStr( j - 1 ) );
              if aControl is TQRLabel then
                TQRLabel( aControl ).Caption := sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;
              if sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
              begin
                x := ( length( sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
                DetailBand2.FindChildControl( 'QRgrImagejy' + IntToStr( j ) ).enabled := true;
                DetailBand2.FindChildControl( 'QRgrImagejy' + IntToStr( j ) ).Top := TQRLabel( DetailBand2.FindChildControl( 'xmmcjy' + IntToStr( j - 1 ) ) ).top;
                DetailBand2.FindChildControl( 'QRgrImagejy' + IntToStr( j ) ).left := DetailBand2.FindChildControl( 'ypyfjy' + IntToStr( j - 1 ) ).left - 20;
                DetailBand2.FindChildControl( 'qrgrimagejy' + IntToStr( j ) ).height := 30;
                TQRLabel( DetailBand2.FindChildControl( 'ypyfjy' + IntToStr( j - 1 ) ) ).Caption := trim( sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
                TQRLabel( DetailBand2.FindChildControl( 'xmmcjy' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
                //TQRLabel( DetailBand2.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
              end
              else
              begin
                DetailBand2.FindChildControl( 'qrgrimagejy' + IntToStr( j ) ).enabled := false;
                DetailBand2.FindChildControl( 'xmmcjy' + IntToStr( j - 1 ) ).Width := 235;
                TQRLabel( DetailBand2.FindChildControl( 'ypyfjy' + IntToStr( j - 1 ) ) ).Caption := '';
                TQRLabel( DetailBand2.FindChildControl( 'xmmcjy' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + ' ' + trim( sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + ' ' + trim( sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
                // TQRLabel( DetailBand2.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
              end;
              sp_zxjl_cq_dy.Next;
            end;
          end
          else
          begin
            aControl := DetailBand2.FindChildControl( 'ksrqjy' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := sp_zxjl_cq_dy.FieldByName( 'ksrq' ).asstring;
            aControl := DetailBand2.FindChildControl( 'kdysmcjy' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;
            if sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
            begin
              x := ( length( sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
              DetailBand2.FindChildControl( 'QRgrImagejy' + IntToStr( j ) ).enabled := true;
              DetailBand2.FindChildControl( 'QRgrImagejy' + IntToStr( j ) ).Top := TQRLabel( DetailBand2.FindChildControl( 'xmmcjy' + IntToStr( j - 1 ) ) ).top;
              DetailBand2.FindChildControl( 'qrgrimagejy' + IntToStr( j ) ).left := DetailBand2.FindChildControl( 'ypyfjy' + IntToStr( j - 1 ) ).left - 20;
              DetailBand2.FindChildControl( 'qrgrimagejy' + IntToStr( j ) ).height := 30;
              TQRLabel( DetailBand2.FindChildControl( 'ypyfjy' + IntToStr( j - 1 ) ) ).Caption := trim( sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
              TQRLabel( DetailBand2.FindChildControl( 'xmmcjy' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
              //  TQRLabel( DetailBand2.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end
            else
            begin
              DetailBand2.FindChildControl( 'qrgrimagejy' + IntToStr( j ) ).enabled := false;
              DetailBand2.FindChildControl( 'xmmcjy' + IntToStr( j - 1 ) ).Width := 235;
              TQRLabel( DetailBand2.FindChildControl( 'ypyfjy' + IntToStr( j - 1 ) ) ).Caption := '';
              TQRLabel( DetailBand2.FindChildControl( 'xmmcjy' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + ' ' + trim( sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + ' ' + trim( sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
              //  TQRLabel( DetailBand2.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end;
            sp_zxjl_cq_dy.Next;
          end;
        end;
        QRLabel2jy.Caption := pub_yymc + '长期注射计划执行单';
        DM_data.qry_pub.Close;
        DM_data.qry_pub.SQL.text := 'select * from sys_kscwsz where bqdm=' + '''' + pub_bqdm + '''' + ' and bcbh=' + '''' + trim( sp_jbxx.fieldbyname( 'bch' ).asstring ) + '''';
        DM_data.qry_pub.Open;

        QRLabel3jy.Caption := '姓名:' + sp_jbxx.fieldbyname( 'brxm' ).asstring;
        QRLabel20jy.Caption := '病床号:' + Trim( DM_data.qry_pub.FieldByName( 'yybch' ).asstring );
        QRLabel21jy.Caption := '性别:' + sp_jbxx.fieldbyname( 'brxb' ).asstring;
        QRLabel26jy.Caption := '年龄:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
        nyjy.Caption := FormatDateTime( 'yyyy', frm_func.curr_date ) + '年';

        QRLabel61jy.Caption := '姓名:' + sp_jbxx.fieldbyname( 'brxm' ).asstring + '      ' +
          '病床号:' + Trim( DM_data.qry_pub.FieldByName( 'yybch' ).asstring ) + '      '+
                '卡号:' + Trim( sp_jbxx.fieldbyname( 'tmh' ).asstring  );
        //'年龄:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
//QuickRep3.Prepare;
//QRLabel57.Caption := '审核医生:';
        QuickRep6.Preview;
      end;
    end;
  end;
end;

procedure Tfrm_yzinput_lishi.BitBtn8Click( Sender: TObject );
begin
  if qry_yz.FieldByName( 'zxbz' ).AsBoolean then
  begin
    proc_xzyf;
    qry_yz.Edit;
    if yzlb = '成药' then
      qry_yz.FieldByName( 'czks' ).AsString := prv_zyfdm
    else
      if yzlb = '西药' then
        qry_yz.FieldByName( 'czks' ).AsString := prv_xyfdm;
    qry_yz.Post;
  end;
end;

procedure Tfrm_yzinput_lishi.proc_xzyf;
begin
  if pub_xyxzyf then //西药选择药房
  begin
    if yzlb = '药品' then
    begin
      Prv_xyfdm := func_Show_yfxz( '02' ); //02 西药房
      if prv_xyfdm = '' then
      begin
        Application.MessageBox( '提示:请选择西药房!', '提示', 16 );
        Exit;
      end;
    end
    else
      if yzlb = '成药' then
      begin
        prv_zyfdm := func_Show_yfxz( '04' ); //04 中药房
        if prv_zyfdm = '' then
        begin
          Application.MessageBox( '提示:请选择中药房!', '提示', 16 );
          Exit;
        end;
      end;
  end
  else
  begin
    with DM_data.qry_pub do
    begin
      Close;
      SQL.Text := 'select * from sys_ksdm where dm =' + #39 + pub_ksdm + #39;
      Open;
    end;
    prv_xyfdm := DM_data.qry_pub.FieldByName( 'xgks' ).AsString;
    prv_zyfdm := DM_data.qry_pub.FieldByName( 'chyf' ).AsString;
    if ( prv_zyfdm = '' ) or ( prv_xyfdm = '' ) then
      Application.MessageBox( '请在本专业上绑定相应的西药房和中药房!', '提示', 0 + 48 );
  end;
end;

procedure Tfrm_yzinput_lishi.BitBtn_downClick( Sender: TObject );
var
  id, xh: integer;
  sbookmark: Tbookmark;
begin
  qry_yz.DisableControls;
  sbookmark := qry_yz.GetBookmark;
  saveyz;
  qry_yz.GotoBookmark( Sbookmark );
  qry_yz.FreeBookmark( sbookmark );
  id := qry_yz.FieldByName( 'id' ).asinteger;
  xh := qry_yz.FieldByName( 'xh' ).asinteger;
  sp_set_xh.Close;
  sp_set_xh.Parameters.ParamByName( '@zyh' ).value := zyh;
  sp_set_xh.Parameters.ParamByName( '@dqid' ).value := id;
  sp_set_xh.Parameters.ParamByName( '@dqxh' ).value := xh;
  sp_set_xh.Parameters.ParamByName( '@tzfx' ).value := 2;
  sp_set_xh.execproc;
  refresh_yz;
  qry_yz.EnableControls;
  qry_yz.Locate( 'id', id, [] );

end;

procedure Tfrm_yzinput_lishi.BitBtn_upClick( Sender: TObject );
var
  id, xh: integer;
  sbookmark: Tbookmark;
begin
  qry_yz.DisableControls;
  sbookmark := qry_yz.GetBookmark;
  saveyz;
  qry_yz.GotoBookmark( Sbookmark );
  qry_yz.FreeBookmark( sbookmark );
  id := qry_yz.FieldByName( 'id' ).asinteger;
  xh := qry_yz.FieldByName( 'xh' ).asinteger;
  sp_set_xh.Close;
  sp_set_xh.Parameters.ParamByName( '@zyh' ).value := zyh;
  sp_set_xh.Parameters.ParamByName( '@dqid' ).value := id;
  sp_set_xh.Parameters.ParamByName( '@dqxh' ).value := xh;
  sp_set_xh.Parameters.ParamByName( '@tzfx' ).value := 1;
  sp_set_xh.execproc;
  refresh_yz;
  qry_yz.EnableControls;
  qry_yz.Locate( 'id', id, [] );

end;

procedure Tfrm_yzinput_lishi.btn1Click( Sender: TObject );
begin
  shyz;
end;

procedure Tfrm_yzinput_lishi.bt_exitClick( Sender: TObject );
begin
  close;
end;

procedure Tfrm_yzinput_lishi.ad_ggdisplay;
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

procedure Tfrm_yzinput_lishi.FormShow( Sender: TObject );
var
  z_zyh: string;
begin
  jybz:=false;
  DM_data.qry_pub.close;
  DM_data.qry_pub.SQL.text:='select * from sys_xt_kg ';
  DM_data.qry_pub.Open;
  if DM_data.qry_pub.FieldByName('hskkyz').AsBoolean then
  begin
  grid_yzlr.Columns[1].PickList.Clear;
  grid_yzlr.Columns[1].PickList.Add('药品');
  grid_yzlr.Columns[1].PickList.Add('材料');
  grid_yzlr.Columns[1].PickList.Add('治疗');
  grid_yzlr.Columns[1].PickList.Add('检验');
  grid_yzlr.Columns[1].PickList.Add('检查');
  grid_yzlr.Columns[1].PickList.Add('其它');
  grid_yzlr.Columns[1].PickList.Add('成药');
  N1.Enabled:=True;
  N2.Enabled:=True;
  N5.Enabled:=True;
  N6.Enabled:=True;
  N7.Enabled:=True;
  N8.Enabled:=True;
  N11.Enabled:=True;
  aptzyz.Enabled:=True;
  btn1.Visible:=true;
  end
  else
  begin
  DM_data.qry_pub.close;
  DM_data.qry_pub.SQL.text:='select * from sys_czy where dm='+''''+pub_czydm+'''';
  DM_data.qry_pub.Open;
  if DM_data.qry_pub.FieldByName('ysbz').AsBoolean=False then
  begin
  grid_yzlr.Columns[1].PickList.Clear;
  grid_yzlr.Columns[1].PickList.Add('材料');
  N1.Enabled:=true;
  N2.Enabled:=true;
  N5.Enabled:=false;
  N6.Enabled:=false;
  N7.Enabled:=false;
  N8.Enabled:=false;
  N11.Enabled:=false;
  aptzyz.Enabled:=true;
  btn1.Visible:=false;
  end
  else
  begin
  grid_yzlr.Columns[1].PickList.Clear;
  grid_yzlr.Columns[1].PickList.Add('药品');
  grid_yzlr.Columns[1].PickList.Add('材料');
  grid_yzlr.Columns[1].PickList.Add('治疗');
  grid_yzlr.Columns[1].PickList.Add('检验');
  grid_yzlr.Columns[1].PickList.Add('检查');
  grid_yzlr.Columns[1].PickList.Add('其它');
  grid_yzlr.Columns[1].PickList.Add('成药');
  N1.Enabled:=True;
  N2.Enabled:=True;
  N5.Enabled:=True;
  N6.Enabled:=True;
  N7.Enabled:=True;
  N8.Enabled:=True;
  N11.Enabled:=True;
  aptzyz.Enabled:=True;
  btn1.Visible:=true;
  end;
  end;

  z_zyh := '';
  adodataset1.close;
  adodataset1.commandtext := 'select * from zybl_tsnr Where jsrq>=GetDate()-2 and ' +
    ' (bqdm=' + #39 + pub_bqdm + #39 + ' or isnull(bqdm,' + #39 + #39 + ')=' + #39 + #39 + ') order by id';
  adodataset1.open;
  ad_ggdisplay;
  QuickRep1.Visible := False;
  QuickRep2.Visible := False;
  if tmh = '' then
    tmh := pub_tmh;
  qry_xmyz.Close;
  qry_xmyz.Open;
  yzsx := '长期';
  qry_ys.close;
  qry_ys.Parameters.ParamByName( 'ksdm' ).Value := pub_ksdm;
  qry_ys.Open;
  qry_ks.Open;
  qry_gytj.Open;
  while not qry_gytj.Eof do
  begin
    grid_yzlr.Columns[6].PickList.Add( trim( qry_gytj.FieldByName( 'mc' ).AsString ) );
    qry_gytj.Next;
  end;
  qry_ypyf.Open;
  while not qry_ypyf.Eof do
  begin
    grid_yzlr.Columns[5].PickList.Add( trim( qry_ypyf.FieldByName( 'mc' ).AsString ) );
    qry_ypyf.Next;
  end;
  {
   qry_yldw.Open;
   while not qry_yldw.Eof do
   begin
     grid_yzlr.Columns[4].PickList.Add(trim(qry_yldw.FieldByName('yldw').AsString));
     qry_yldw.Next;
   end;
              }

  yzlb := '药品' ;

  zz.ActivePageIndex := 0;
  kz := false;
  tmh:='';
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
  DM_data.qry_pub.SQL.text:='select * from zysf_zydj where tmh='+''''+tmh+'''';
  DM_data.qry_pub.Open;

  if sp_jbxx.Active then
  begin
    if (sp_jbxx.RecordCount > 1) and (DM_data.qry_pub.RecordCount>1) then
    begin
      sp_jbxx.First;
      while not sp_jbxx.eof do
      begin
        DM_data.qry_pub.Close;
        DM_data.qry_pub.SQL.Text := 'select * from zysf_zydj where zyh=' + '''' +
          sp_jbxx.FieldByName( 'zyh' ).asstring + ''' and cybz=0 order by ryrq desc';
        DM_data.qry_pub.Open;
        if not DM_data.qry_pub.IsEmpty then
          z_zyh := DM_data.qry_pub.FieldByName( 'zyh' ).AsString;
        sp_jbxx.Next;
      end;
      sp_jbxx.Filtered := False;
      sp_jbxx.Filter := 'zyh=' + '''' + z_zyh + '''';
      sp_jbxx.Filtered := True;
    end
    else if (sp_jbxx.RecordCount > 1) and (DM_data.qry_pub.RecordCount=1)  then
    begin
        sp_jbxx.First;
      while not sp_jbxx.eof do
      begin
        DM_data.qry_pub.Close;
        DM_data.qry_pub.SQL.Text := 'select * from zysf_zydj where zyh=' + '''' +
          sp_jbxx.FieldByName( 'zyh' ).asstring + ''' order by ryrq desc';
        DM_data.qry_pub.Open;
        if not DM_data.qry_pub.IsEmpty then
          z_zyh := DM_data.qry_pub.FieldByName( 'zyh' ).AsString;
        sp_jbxx.Next;
      end;
      sp_jbxx.Filtered := False;
      sp_jbxx.Filter := 'zyh=' + '''' + z_zyh + '''';
      sp_jbxx.Filtered := True;
    end;     
  end;

//  sp_cx_yzxm.Close;
//  sp_cx_yzxm.Parameters.ParamValues['@zyh'] := zyh;
//  sp_cx_yzxm.Parameters.ParamValues['@yzsx'] := '未提交';
//  sp_cx_yzxm.Parameters.ParamValues['@ksdm'] := pub_ksdm;
//  sp_cx_yzxm.Open;
  scbz := 0;
  //------------calmhawk-2008-01-31-----取药房代码------
  qry_yfdm.Close;
  qry_yfdm.Parameters.ParamByName( 'ksdm' ).Value := pub_ksdm;
  qry_yfdm.Open;
  //------------------------------------------------------------
  if sp_jbxx.Active then
  begin
    if not sp_jbxx.IsEmpty then
    begin
      zyh := sp_jbxx.FieldByName( 'zyh' ).AsString;
      tmh := sp_jbxx.FieldByName( 'tmh' ).AsString;
      brxm := sp_jbxx.FieldByName( 'brxm' ).AsString;
      e_tmh.Text := '';
      refresh_yz;
    end;
  end;
  if zyh = '' then
  begin
    e_tmh.SetFocus;
  end
  else
  begin
    if trim( sp_jbxx.FieldByName( 'zgys' ).AsString ) = '' then
    begin
      e_yzys.SetFocus;
      e_yzys.Text := pub_czyxm;
      yzlbsr( kzbz );
    end
    else
    begin
      if trim( dbedit11.Text ) <> '' then
        e_yzys.Text := DBEdit11.Text;
      e_yzys.Text := pub_czyxm;
      yzlbsr( kzbz );
    end;
  end;
  with DM_data.qry_pub do
  begin
    Close;
    SQL.Text := 'select * from sys_ksdm where dm =' + #39 + pub_ksdm + #39;
    Open;
  end;
  prv_xyfdm := Trim( DM_data.qry_pub.FieldByName( 'xgks' ).AsString );
  prv_zyfdm := Trim( DM_data.qry_pub.FieldByName( 'chyf' ).AsString );
  if ( prv_xyfdm = '' ) or ( prv_zyfdm = '' ) then
  begin
    yzsx := '长期';
    yzlb := '成药';
    proc_xzyf;
    yzlb := '药品';
    proc_xzyf;
  end;
  DateTimePicker1.DateTime:=frm_func.curr_date;
  DateTimePicker2.DateTime:=frm_func.curr_date;
  if pub_yydm='0013' then
  begin
      Button3.Visible:=true;
  end
  else
  begin
      Button3.Visible:=false;
  end;
  DM_data.qry_pub.close;
  DM_data.qry_pub.SQL.text:='select * from sys_xt_kg';
  DM_data.qry_pub.Open;
  zzdx:=DM_data.qry_pub.FieldByName('jhdzz').AsString;

end;

procedure Tfrm_yzinput_lishi.grid_ksDblClick( Sender: TObject );
begin
  grid_yzlr.SetFocus;
end;

procedure Tfrm_yzinput_lishi.grid_ksExit( Sender: TObject );
begin
  grid_ks.Visible := false;
  qry_yz.FieldByName( 'czks' ).Value := qry_ks.FieldByName( 'dm' ).AsString;
  yzNew( 1 );
end;

procedure Tfrm_yzinput_lishi.grid_ksKeyDown( Sender: TObject; var Key: Word;
  Shift: TShiftState );
begin
  if key = 13 then
  begin
    grid_yzlr.SetFocus;
  end;
end;

procedure Tfrm_yzinput_lishi.grid_ypDblClick( Sender: TObject );
begin
  grid_yzlr.SetFocus;
  grid_yp.Visible := false;
end;

procedure Tfrm_yzinput_lishi.grid_ypDrawColumnCell( Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumnEh; State: TGridDrawState );
begin
  if sp_cx_yp_yz['zxdwsl'] = true then
  begin
    grid_yp.Canvas.Brush.Color := cllime;
    grid_yp.Canvas.Font.color := clblue;
  end;
  grid_yp.DefaultDrawColumnCell( rect, datacol, Column, state );
end;

procedure Tfrm_yzinput_lishi.grid_ypExit( Sender: TObject );
begin
  grid_yp.Visible := false;
  ypjs;
  grid_yzlr.SetFocus;
  if ( yzlb = '材料' ) then
    grid_yzlr.SelectedIndex := 7
  else
    grid_yzlr.SelectedIndex := 3;
end;

procedure Tfrm_yzinput_lishi.grid_ypKeyPress( Sender: TObject; var Key: Char );
begin
  if key = #13 then
  begin
    grid_yzlr.SetFocus;
  end;
  if key = #27 then
    grid_yp.Visible := false;
end;

procedure Tfrm_yzinput_lishi.Edit_ypKeyPress( Sender: TObject; var Key: Char );
var
  ls_cxpym: string;
begin
  if key = #13 then
  begin
    sp_cx_yp_yz.Close;
    sp_cx_yp_yz.Parameters.ParamValues['@pym'] := ls_cxpym;
    if isbqkf then //药品使用病区库房,
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

procedure Tfrm_yzinput_lishi.edt_tmhKeyDown( Sender: TObject; var Key: Word;
  Shift: TShiftState );
begin
  if key = 13 then
    Proc_Seek_dj( Trim( edt_tmh.Text ) );
end;

procedure Tfrm_yzinput_lishi.e_tmhExit( Sender: TObject );
var zt:string;
sjxz:Integer;
begin
  DM_data.qry_pub.close;
  DM_data.qry_pub.sql.Text:='select * from sys_xt_kg';
  DM_data.qry_pub.Open;
  sjxz:= DM_data.qry_pub.FieldByName('zyblcykxgsj').AsInteger;
  qry_xmyz.Close;
  qry_xmyz.Open;
  if trim( e_tmh.Text ) <> '' then
  begin
    sp_jbxx.Filtered:=False;
    sp_jbxx.Close;
    sp_jbxx.Parameters.Refresh;
    sp_jbxx.Parameters.ParamValues['@tmh'] := trim( e_tmh.Text );
    sp_jbxx.Parameters.ParamValues['@xm'] := trim( e_tmh.Text );
    sp_jbxx.Parameters.ParamValues['@bch'] := trim( e_tmh.Text );
    sp_jbxx.Parameters.ParamValues['@ksdm'] := '';
    sp_jbxx.Open;
    if sp_jbxx.RecordCount = 1 then
    begin
      zyh := sp_jbxx.FieldByName( 'zyh' ).AsString;
      tmh := sp_jbxx.FieldByName( 'tmh' ).AsString;
      brxm := sp_jbxx.FieldByName( 'brxm' ).AsString;


      dm_data.qry_pub.close;
      dm_data.qry_pub.sql.text:='select *,datediff(day,cyrq,getdate()) cyts from zysf_cydj where zyh='+''''+zyh+'''';
      dm_data.qry_pub.open;
      if dm_data.qry_pub.IsEmpty then
        Exit
      else
      begin
        if dm_data.qry_pub.FieldByName('cyts').AsInteger>sjxz then
        begin
          dm_data.qry_pub.close;
          dm_data.qry_pub.sql.text:='select * from sys_bljy where zyh='+''''+zyh+''' and '+
          ' datediff(day,jyrq,getdate())<=jyts';
          dm_data.qry_pub.open;
          if (not dm_data.qry_pub.IsEmpty) and (dm_data.qry_pub.FieldByName('ysdm').AsString=pub_czydm) then
          begin
            jybz:=True;
            qry_hjjl.close;
            qry_hjjl.sql.Text:='insert into zybl_jyjl(tmh,brxm,jyys,ysdm,cxsj,cknr)'+
            ' select '+''''+sp_jbxx.FieldByName('tmh').AsString+''''+','+''''+
            sp_jbxx.FieldByName('brxm').AsString+''''+','+''''+pub_czyxm+''''+','+
            ''''+pub_czydm+''''+','+''''+formatdatetime('yyyy-MM-dd hh:mm:ss',Frm_func.curr_date)+''''+
            ','+'''医嘱''';
            qry_hjjl.ExecSQL;
          end
          else
          begin
             Application.MessageBox('出院天数超过了限制查看医嘱天数，请联系质控人员申请借阅',
            '提示', MB_OK + MB_ICONWARNING);
            exit;
          end;
        end;
      end;



      e_tmh.Text := tmh;
      if trim( dbedit11.Text ) <> '' then
        e_yzys.Text := DBEdit11.Text;
      refresh_yz;
      //calmhawk --当日医嘱
      sp_dryz.Close;
      sp_dryz.Parameters.ParamByName( '@zyh' ).Value := zyh;
      sp_dryz.Parameters.ParamByName( '@yzsx' ).Value := '';
      sp_dryz.Open;

      if sp_dryz.RecordCount<1 then
      begin
        if application.MessageBox( '当前病人可能已经出院20天，是否把转出库的医嘱信息重新导回？注意：此操作很消耗服务器资源，请在中午或下午下班之后进行此操作,执行时间会很久请务必耐心等待！', '提示信息', mb_iconquestion + mb_okcancel + mb_defbutton1 ) = idcancel then
          Exit
        else
        begin
          sp_lsyzzh.Close;
          sp_lsyzzh.Parameters.Refresh;
          sp_lsyzzh.Parameters.ParamByName( '@zyh' ).Value := zyh;
          sp_lsyzzh.Parameters.ParamByName( '@sczt' ).Value := '1';
          sp_lsyzzh.ExecProc;
          zt := sp_lsyzzh.Parameters.ParamByName( '@sczt' ).Value;
          Application.MessageBox(pchar(zt),'提示',MB_ICONINFORMATION);
          sp_dryz.Close;
          sp_dryz.Parameters.ParamByName( '@zyh' ).Value := zyh;
          sp_dryz.Parameters.ParamByName( '@yzsx' ).Value := '';
          sp_dryz.Open;

        end;


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
end;

procedure Tfrm_yzinput_lishi.e_tmhKeyDown( Sender: TObject; var Key: Word;
  Shift: TShiftState );
begin
  if key = 13 then
  begin
    e_yzys.SetFocus;
  end;
end;

procedure Tfrm_yzinput_lishi.e_yzysKeyPress( Sender: TObject; var Key: Char );
begin
  if key = #13 then
  begin
    qry_ys.Filtered := false;
    if trim( e_yzys.Text ) <> '' then
    begin
      qry_ys.Filter := ' dm = ' + #39 + e_yzys.Text + #39;
      qry_ys.Filter := qry_ys.Filter + ' or mc like ' + #39 + '%' + e_yzys.Text + '%' + #39;
      qry_ys.Filter := qry_ys.Filter + ' or pym like ' + #39 + '%' + e_yzys.Text + '%' + #39;
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
        application.MessageBox( '请输入主管医生', '提示', 0 + 48 );
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

procedure Tfrm_yzinput_lishi.Edit_clKeyPress( Sender: TObject; var Key: Char );
var
  ls_cxyz: string;
begin
  if key = #13 then
  begin
    sp_cx_yp_yz.Close;
    sp_cx_yp_yz.Parameters.ParamValues['@pym'] := ls_cxyz;
    sp_cx_yp_yz.Parameters.ParamValues['@ksdm'] := pub_ksdm;
    if isbqkf then //是否启用了病区库房
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

procedure Tfrm_yzinput_lishi.N10Click(Sender: TObject);
var v_lb,v_yytj,filter:string;
begin
  with sp_zxjl_cq_dy do
  begin
    Filtered := False;
    Close;
    Parameters.ParamByName( '@zyh' ).Value := Trim( sp_jbxx.fieldbyname( 'zyh' ).asstring );
    Parameters.ParamByName( '@fs' ).Value := 1;
    Open;
  end;
  //sp_zxjl_cq_dy.Filtered := False;
  DM_data.qry_pub.close;
  DM_data.qry_pub.sql.text:='select yytj from zybl_zyyz_dytjsz where dyxm=''治疗计划单''';
  DM_data.qry_pub.Open;
  if DM_data.qry_pub.IsEmpty then
  begin
  v_yytj:='';
  end
  else
  begin
  DM_data.qry_pub.First;
  while not DM_data.qry_pub.eof do
  begin
  v_yytj:=v_yytj+ '(yytj='+''''+DM_data.qry_pub.FieldByName('yytj').asstring+''''+' and  tzrq=null and kdks=' + '''' + pub_ksdm +
                  ''''+' and kdrq>=' + '''' + formatdatetime( 'yy-MM-dd', frm_func.curr_date ) + ' 00:00' +  ''')' +' or ';
  DM_data.qry_pub.Next;
  end;

  end;


  DM_data.qry_pub.close;
  DM_data.qry_pub.sql.text:='select lbmc from zybl_zyyz_dylbsz where dyxm=''治疗计划单''';
  DM_data.qry_pub.Open;
  if DM_data.qry_pub.IsEmpty then
  begin
  v_lb:='';
  end
  else
  begin
  DM_data.qry_pub.First;
  while not DM_data.qry_pub.eof do
  begin
  v_lb:=v_lb+ '(lb='+''''+DM_data.qry_pub.FieldByName('lbmc').asstring+''''+' and  tzrq=null and kdks=' + '''' + pub_ksdm +
                  ''''+' and kdrq>=' + '''' + formatdatetime( 'yy-MM-dd', frm_func.curr_date ) + ' 00:00' +  ''')' +' or ';
  DM_data.qry_pub.Next;
  end;

  end;

  if v_yytj+ v_lb='' then
  begin
  filter:=' 1<>1 ';
  end
  else
  begin
  filter:= v_yytj+ v_lb+' ( yytj = ''特殊情况'' )';
  end;

  sp_zxjl_cq_dy.Filter := filter;

  sp_zxjl_cq_dy.Filtered := True;
  application.CreateForm(Tfrm_zxdxd, frm_zxdxd);
  try
    frm_zxdxd.ShowModal;
  finally
    frm_zxdxd.free;
  end;
end;

procedure Tfrm_yzinput_lishi.N11Click(Sender: TObject);
var ylly:string;
begin
  dM_data.qry_pub.close;
  DM_data.qry_pub.sql.Text:='select * from sys_jzzt';
  DM_data.qry_pub.Open;
  if DM_data.qry_pub.FieldByName('yzzdjfzt').AsBoolean=true then
  begin
     application.MessageBox( '正在进行医嘱自动记费作业,请稍后再试！', '提示', 0 + 48 );
     Abort;
  end;
   if sp_dryz.FieldByName('kdys').asstring=pub_czydm then
   begin
   if (sp_dryz.FieldByName('lb').asstring='药品') or  (sp_dryz.FieldByName('lb').asstring='成药') then
   begin
   ylly := p_xgyl.func_yllr( );
   if ylly<>'' then
   begin
     try
     dm_data.qry_pub.Close;
     dm_data.qry_pub.sql.text:='update zybl_zyyz set ypyl='+ylly+ ' where id='+sp_dryz.FieldByName('id').asstring;
     dm_data.qry_pub.ExecSQL;
     ShowMessage('修改用量成功!');
     sp_dryz.Close;
     sp_dryz.Parameters.ParamByName( '@zyh' ).Value := zyh;
     sp_dryz.Parameters.ParamByName( '@yzsx' ).Value := '全部';
     sp_dryz.Open;
     except
      ShowMessage('修改用量失败!请重试！');
     end;

   end;
   end;


   end
   else
   begin
      ShowMessage('你不是该医嘱开单医生，无权修改！');
   end;
end;

procedure Tfrm_yzinput_lishi.N1Click( Sender: TObject );
var
  _id, _zhzxsj, _yzsx: string;
  _fzph: string;
  _yzsj: string;
  sczt, i: integer;
  yzid:Integer;
  kdys:string;
begin
  dM_data.qry_pub.close;
  DM_data.qry_pub.sql.Text:='select * from sys_jzzt';
  DM_data.qry_pub.Open;
  if DM_data.qry_pub.FieldByName('yzzdjfzt').AsBoolean=true then
  begin
     application.MessageBox( '正在进行医嘱自动记费作业,请稍后再试！', '提示', 0 + 48 );
     Abort;
  end;
  tzyzqr := 0;

  DM_data.qry_pub.Close;
  DM_data.qry_pub.SQL.text := 'select convert(varchar(8),sfsj,112) sj,* from zybl_zyyz_yzzxqd where yzid=' +
    sp_dryz.FieldByName( 'id' ).asstring;
  // ' and convert(varchar(8),sfsj,112)=' + '''' + Formatdatetime( 'yyyyMMdd', Now ) + '''';
  DM_data.qry_pub.Open;
  DM_data.qry_pub.Filter := 'zxcs<>0';
  DM_data.qry_pub.Filtered := true;
  //-------------------------calmhawk--已执行临时医嘱不能停止-------
  if ( not DM_data.qry_pub.IsEmpty ) and ( sp_dryz.FieldByName( 'yzsx' ).asstring = '临时' ) then
  begin
    DM_data.qry_pub.Filtered := false;
    application.MessageBox( '已执行临时医嘱，不能停止！', '提示', mb_iconquestion + mb_ok );
    abort;
  end;
  DM_data.qry_pub.Filter := 'sj=' + #39 + Formatdatetime( 'yyyyMMdd', frm_func.curr_date ) + #39;
  DM_data.qry_pub.Filtered := true;

  if ( DM_data.qry_pub.RecordCount=0 ) and ( sp_dryz.FieldByName( 'yzsx' ).asstring = '长期' ) then
  begin
    if application.MessageBox( '当前医嘱今天未记费，是否继续停止？', '提示', mb_iconquestion + mb_yesno + mb_defbutton2 ) = idno then
    begin
      DM_data.qry_pub.Filtered := false;
      abort;
    end;
  end;
  DM_data.qry_pub.Filtered := false;
  DM_data.qry_pub.Close;
  DM_data.qry_pub.SQL.text := 'select * from sys_czy where dm=' + #39 + pub_czydm + #39;
  DM_data.qry_pub.Open;
  if ( DM_data.qry_pub.FieldByName( 'cfbz' ).AsBoolean = false ) and
    ( Trim( sp_dryz.FieldByName( 'kdys' ).asstring ) <> pub_czydm ) then
  begin
    ShowMessage( '当前操作员无法停止本条医瞩' );
    Abort;
  end;

  try
    application.Createform( Tfrm_tzyzsj, frm_tzyzsj );
    p_tzyzsj.sfxse := '';
    frm_tzyzsj.showmodal;
  finally
    frm_tzyzsj.free;
  end;
  if sp_dryz.FieldByName( 'yzsx' ).AsString = '临时' then
  begin
    if application.MessageBox( '临时医嘱停止,只能立即停止，是否继续？', '提示', mb_iconquestion + mb_yesno + mb_defbutton1 ) = idno then
      abort
  end;
  //时间停止医嘱




  DM_data.qry_pub.close;
  DM_data.qry_pub.SQL.text:='select * from zybl_zyyz where id='+sp_dryz.FieldByName( 'id' ).asstring;
  DM_data.qry_pub.Open;
  if (sp_dryz.FieldByName( 'yzsx' ).AsString = '临时') and ((DM_data.qry_pub.FieldByName( 'shry' ).AsString = '未用')
     or (sp_dryz.FieldByName( 'tzbz' ).AsBoolean=true)) then
  begin
    application.MessageBox( '临时医嘱已取消或标识为未用的不能再取消了！','提示') ;
    abort;
  end;

  
  sp_yzsj.Close;
  sp_yzsj.Parameters.ParamByName( '@scyzsj' ).Value := tzyzsj;
  sp_yzsj.ExecProc;
  _yzsj := formatdatetime( 'yyyymmdd', sp_yzsj.Parameters.ParamByName( '@scyzsj' ).Value );
  //  dt_zxsj.DateTime:= sp_yzsj.Parameters.ParamByName('@scyzsj').Value;

  if tzyzqr = 1 then
  begin
    if not sp_dryz.Active then
      exit;
    if sp_dryz.RecordCount < 1 then
      exit;
    //    datetimetostr(frm_func.curr_date)

    _id := sp_dryz.FieldByName( 'id' ).AsString;
    _zhzxsj := sp_dryz.FieldByName( 'zhzxsj' ).AsString;
    _yzsx := sp_dryz.FieldByName( 'yzsx' ).AsString;
    _fzph := sp_dryz.FieldByName( 'fzph' ).AsString;
    if _fzph <> '' then
    begin
      sp_tzyz.Close;
      sp_tzyz.Parameters.ParamByName( '@zyh' ).Value := zyh;
      sp_tzyz.Parameters.ParamByName( '@zxsj' ).Value := _yzsj;
      sp_tzyz.Parameters.ParamByName( '@tzyzsj' ).Value := strtodatetime( tzyzsj );
      sp_tzyz.Parameters.ParamByName( '@czydm' ).Value := pub_czydm;
      sp_tzyz.Parameters.ParamByName( '@id' ).Value := 0;
      sp_tzyz.Parameters.ParamByName( '@fzph' ).Value := _fzph;
      sp_tzyz.Parameters.ParamByName( '@sczt' ).Value := 9;
      sp_tzyz.ExecProc;
      sczt := sp_tzyz.Parameters.ParamByName( '@sczt' ).Value;
      if sczt <> 0 then
      application.MessageBox( '医嘱停止未成功，请重新操作！！', '提示！', mb_ok );
    end
    else
    begin
      sp_tzyz.Close;
      sp_tzyz.Parameters.ParamByName( '@zyh' ).Value := zyh;
      sp_tzyz.Parameters.ParamByName( '@zxsj' ).Value := _yzsj;
      sp_tzyz.Parameters.ParamByName( '@tzyzsj' ).Value := strtodatetime( tzyzsj );
      sp_tzyz.Parameters.ParamByName( '@czydm' ).Value := pub_czydm;
      sp_tzyz.Parameters.ParamByName( '@id' ).Value := _id;
      sp_tzyz.Parameters.ParamByName( '@fzph' ).Value := '';
      sp_tzyz.Parameters.ParamByName( '@sczt' ).Value := 9;
      sp_tzyz.ExecProc;
      DM_data.qry_pub.close;
      DM_data.qry_pub.SQL.text:='select * from sys_xt_kg ';
      DM_data.qry_pub.Open;
      if (DM_data.qry_pub.FieldByName('qyzdjf').AsBoolean=true) and
         (DM_data.qry_pub.FieldByName('yztjjf').AsBoolean=true) then
      begin
      DM_data.qry_pub.close;
      DM_data.qry_pub.SQL.Text:='select * from zybl_zyyz where id='+sp_dryz.FieldByName( 'id' ).asstring;
      DM_data.qry_pub.Open;
      yzid:=sp_dryz.FieldByName( 'id' ).AsInteger;
      kdys:=DM_data.qry_pub.FieldByName('kdys').asstring;
      if sp_dryz.FieldByName('yzsx').AsString='临时' then
      yzqxtf(yzid,kdys);
      end;
      sczt := sp_tzyz.Parameters.ParamByName( '@sczt' ).Value;
      if sczt <> 0 then
        application.MessageBox( '医嘱停止未成功，请重新操作！！', '提示！', mb_ok );
    end;
//    if ( _zhzxsj <> '' ) and ( _yzsx = '临时' ) and  (( sp_dryz.FieldByName('lb').asstring = '药品' )
//       or  ( sp_dryz.FieldByName('lb').asstring = '成药' ) or  ( sp_dryz.FieldByName('lb').asstring = '检验' ))  then
//    begin
//      if _fzph <> '' then
//        application.MessageBox( pchar( '此' + #13 + sp_dryz.FieldByName( 'xmmc' ).AsString + #13 + '所在输液组已经执行计费，请填写相应通知办公护士退费！！！' ), '提示', 0 + 48 )
//      else
//        application.MessageBox( pchar( '此' + #13 + sp_dryz.FieldByName( 'xmmc' ).AsString + #13 + '已经执行计费，请填写相应通知办公护士退费！！！' ), '提示', 0 + 48 );
//    end;
    sp_dryz.Close;
    sp_dryz.Parameters.ParamByName( '@zyh' ).Value := zyh;
    sp_dryz.Parameters.ParamByName( '@yzsx' ).Value := '';
    sp_dryz.Open;
  end;
end;

procedure Tfrm_yzinput_lishi.N2Click( Sender: TObject );
var
  _ph, _xmdm, _fzph: string;
  _id: integer;
  y: Integer;
  zt:string;
begin
   zt:='2';
  dM_data.qry_pub.close;
  DM_data.qry_pub.sql.Text:='select * from sys_jzzt';
  DM_data.qry_pub.Open;
  if DM_data.qry_pub.FieldByName('yzzdjfzt').AsBoolean=true then
  begin
     application.MessageBox( '正在进行医嘱自动记费作业,请稍后再试！', '提示', 0 + 48 );
     Abort;
  end;
  if not sp_dryz.Active then
    exit;

  if not ( sp_dryz.FieldByName( 'tzfs' ).Asstring = '修改' ) then
  begin
    //  if sp_dryz.FieldByName('zhzxsj').Asstring='' then
    begin
      if not sp_dryz.FieldByName( 'tzbz' ).AsBoolean then
      begin
        if sp_dryz.RecordCount < 1 then
          exit;
        for y := 0 to dbgrideh4.SelectedRows.Count - 1 do
        begin

          DBGrideh4.DataSource.DataSet.GotoBookmark( pointer( DBGrideh4.SelectedRows.Items[y] ) );
          DM_data.qry_pub.Close;
          DM_data.qry_pub.SQL.text := 'select * from zybl_zyyz_yzzxqd_mx where yzid=' + sp_dryz.FieldByName( 'id' ).asstring;
          DM_data.qry_pub.Open;

          if ( DM_data.qry_pub.RecordCount > 0 ) and ( pos( '皮试', sp_dryz.FieldByName( 'xmmc' ).Asstring ) < 1 ) then
          begin
            ShowMessage( '已执行的医嘱不能修改！' );
            if zt<>'0' then
            zt:='1';
          end
          else
          begin
            DM_data.qry_pub.Close;
            DM_data.qry_pub.SQL.text := 'select * from sys_czy where dm=' + '''' + pub_czydm + '''';
            DM_data.qry_pub.Open;

            if (sp_dryz.FieldByName( 'yzsx' ).AsString = '临时') and  (sp_dryz.FieldByName( 'lb' ).AsString <> '材料') then
            begin
              ShowMessage( '临时医嘱无法修改，请用停止医嘱来取消该临时医嘱！' );
              if zt<>'0' then
              zt:='1';
            end
            else
              if ( DM_data.qry_pub.FieldByName( 'cfbz' ).AsBoolean = false ) and ( Trim( sp_dryz.FieldByName( 'kdys' ).asstring ) <> pub_czydm )
                  and ( pos( '皮试', sp_dryz.FieldByName( 'xmmc' ).Asstring ) < 1 )
                  and ( Trim( sp_dryz.FieldByName( 'lb' ).asstring ) <> '材料' ) then
              begin
                ShowMessage( '当前操作员无法修改本条医瞩' );
                 if zt<>'0' then
                 zt:='1';
              end
              else
              begin
                _ph := sp_dryz.FieldByName( 'ph' ).AsString;
                _xmdm := sp_dryz.FieldByName( 'xmdm' ).AsString;
                _fzph := sp_dryz.FieldByName( 'fzph' ).AsString;
                _id := sp_dryz.FieldByName( 'id' ).Asinteger;
                if sp_dryz.fieldbyname( 'fzph' ).asstring <> '' then
                begin
                  qru_yzxg.close;
                  qru_yzxg.sql.text := 'update zybl_zyyz set kdks=' + #39 + pub_ksdm + #39 + ',zxbz = 0,xgrq = ' +
                    #39 + datetimetostr( frm_func.curr_date ) + #39 + ',xgry = ' + #39 + pub_czydm + #39 +
                    ' where fzph = ' + #39 + _fzph + #39;
                  qru_yzxg.ExecSQL;
                end
                else
                begin
                  qru_yzxg.close;
                  qru_yzxg.sql.text := 'update zybl_zyyz set kdks=' + #39 + pub_ksdm + #39 + ',zxbz = 0,xgrq = ' +
                    #39 + datetimetostr( frm_func.curr_date ) + #39 + ',xgry = ' + #39 + pub_czydm + #39 +
                    ' where id = ' + inttostr( _id );
                  qru_yzxg.ExecSQL;
                end;
                zt:='0';
              end;
          end;
        end;

        sp_dryz.Close;
        sp_dryz.Parameters.ParamByName( '@zyh' ).Value := zyh;
        sp_dryz.Parameters.ParamByName( '@yzsx' ).Value := '';
        sp_dryz.Open;
        refresh_yz;
        if zt='0' then
        application.MessageBox( '本医嘱已经进入修改状态，请到“录入医嘱”界面修改！', '提示', 0 + 48 );

      end
      else
        application.MessageBox( '已停止的医嘱不能修改！', '提示', 0 + 48 );
    end
    // else
    //   application.MessageBox('已执行的医嘱不能修改！', '提示', 0 + 48);
  end;
  
end;

procedure Tfrm_yzinput_lishi.N3Click( Sender: TObject );
var
  i, x1, y1, x2, y2: integer;
  ypyf, yytj: string;
  mark: boolean;
  myrect: TRect;
  _ds: string;
begin
  if grid_yzlr.SelectedRows.Count > 0 then
  begin
    bcbz := false;
    saveyz;
    if application.MessageBox( '是否要添加新的分组?', '提示信息', mb_iconquestion + mb_okcancel + mb_defbutton1 ) = idok then
    begin
      mark := true;
      qry_yz.GotoBookmark( pointer( grid_yzlr.SelectedRows.Items[0] ) );
      ypyf := qry_yz.fieldbyname( 'ypyf' ).asstring;
      yytj := qry_yz.fieldbyname( 'yytj' ).asstring;
      while ( i <= grid_yzlr.SelectedRows.Count - 1 ) and mark do
      begin
        qry_yz.GotoBookmark( pointer( grid_yzlr.SelectedRows.Items[i] ) );
        if ( ypyf <> qry_yz.fieldbyname( 'ypyf' ).asstring ) or ( yytj <> qry_yz.fieldbyname( 'yytj' ).asstring ) then
          mark := false
        else
        begin
          ypyf := qry_yz.fieldbyname( 'ypyf' ).asstring;
          yytj := qry_yz.fieldbyname( 'yytj' ).asstring;
        end;
        i := i + 1;
      end;
      if mark then
      begin
        //---calmhawk---
        _ds := p_dslr.func_dslr( );
        fzbh := get_sjh( pub_czydm );
        for i := 0 to grid_yzlr.SelectedRows.Count - 1 do
        begin
          qry_yz.GotoBookmark( pointer( grid_yzlr.SelectedRows.Items[i] ) );
          qry_yz.edit;
          qry_yz['fzph'] := fzbh;
          if i = 0 then
            qry_yz['bz'] := _ds + 'gtt/min';
          qry_yz.post;
        end;
        bcbz := false;
        saveyz;
        //application.MessageBox( '分组的液体请在说明处注明输液速度!', '提示信息', mb_iconinformation + mb_ok );

      end
      else
        application.messagebox( '药品用法或用药途径不一致，不能分在一组！！', '错误', mb_ok + mb_iconerror );
    end;
  end
  else
    application.MessageBox( '请选定需要进行分组的行！！', '提示信息', mb_iconinformation + mb_ok )

    //    grid_yzlr.DrawColumnCell(sender);
    //grid_yzlr.Refresh;

end;

procedure Tfrm_yzinput_lishi.N4Click( Sender: TObject );
var
  i: integer;
  ypyf, yytj: string;
  mark: boolean;
begin
  if grid_yzlr.SelectedRows.Count > 0 then
  begin
    bcbz := false;
    saveyz;
    if application.MessageBox( '是否要取消当前分组?', '提示信息', mb_iconquestion + mb_okcancel + mb_defbutton1 ) = idok then
    begin
      for i := 0 to grid_yzlr.SelectedRows.Count - 1 do
      begin
        qry_yz.GotoBookmark( pointer( grid_yzlr.SelectedRows.Items[i] ) );
        qry_yz.edit;
        qry_yz['fzph'] := '';
        qry_yz.post;
      end;
    end;
    bcbz := false;
    saveyz;
  end
  else
    application.MessageBox( '请选定需要取消分组的行！！', '提示信息', mb_iconinformation + mb_ok )
end;

procedure Tfrm_yzinput_lishi.N5Click( Sender: TObject );
var
  _id, _zhzxsj, _yzsx: string;
  _fzph: string;
  _yzsj: string;
  sczt, i: integer;
begin
  dM_data.qry_pub.close;
  DM_data.qry_pub.sql.Text:='select * from sys_jzzt';
  DM_data.qry_pub.Open;
  if DM_data.qry_pub.FieldByName('yzzdjfzt').AsBoolean=true then
  begin
     application.MessageBox( '正在进行医嘱自动记费作业,请稍后再试！', '提示', 0 + 48 );
     Abort;
  end;
  DM_data.qry_pub.Close;
  DM_data.qry_pub.SQL.text := 'select * from zybl_zyyz_yzzxqd_mx where yzid=' + sp_dryz.FieldByName( 'id' ).asstring + ' and zxsj>=' + '''' + sp_dryz.FieldByName( 'tzrq' ).asstring + '''';
  DM_data.qry_pub.Open;

  if not DM_data.qry_pub.IsEmpty then
  begin
    ShowMessage( '当前医嘱已有停止执行记录，不能取消停止！' );
    Abort;
  end;

  DM_data.qry_pub.Close;
  DM_data.qry_pub.SQL.text := 'select * from sys_czy where dm=' + '''' + pub_czydm + '''';
  DM_data.qry_pub.Open;
  if ( DM_data.qry_pub.FieldByName( 'cfbz' ).AsBoolean = false ) and ( Trim( sp_dryz.FieldByName( 'kdys' ).asstring ) <> pub_czydm ) then
  begin
    ShowMessage( '当前操作员无法取消停止本条医瞩' );
    Abort;
  end;

  if not sp_dryz.Active then
    exit;
  if sp_dryz.RecordCount < 1 then
    exit;
  tzyzsj := formatdatetime( 'yyyy-mm-dd hh:mm:ss', sp_dryz.fieldbyname( 'tzrq' ).asdatetime );
  sp_yzsj.Close;
  sp_yzsj.Parameters.ParamByName( '@scyzsj' ).Value := tzyzsj;
  sp_yzsj.ExecProc;
  _yzsj := formatdatetime( 'yyyymmdd', sp_yzsj.Parameters.ParamByName( '@scyzsj' ).Value );
  //  dt_zxsj.DateTime:= sp_yzsj.Parameters.ParamByName('@scyzsj').Value;

  //    datetimetostr(frm_func.curr_date)

  _id := sp_dryz.FieldByName( 'id' ).AsString;
  _zhzxsj := sp_dryz.FieldByName( 'zhzxsj' ).AsString;
  _yzsx := sp_dryz.FieldByName( 'yzsx' ).AsString;
  _fzph := sp_dryz.FieldByName( 'fzph' ).AsString;
  if _fzph <> '' then
  begin
    sp_qxtzyz.Close;
    sp_qxtzyz.Parameters.ParamByName( '@zyh' ).Value := zyh;
    sp_qxtzyz.Parameters.ParamByName( '@zxsj' ).Value := _yzsj;
    sp_qxtzyz.Parameters.ParamByName( '@tzyzsj' ).Value := strtodatetime( tzyzsj );
    sp_qxtzyz.Parameters.ParamByName( '@czydm' ).Value := pub_czydm;
    sp_qxtzyz.Parameters.ParamByName( '@id' ).Value := 0;
    sp_qxtzyz.Parameters.ParamByName( '@fzph' ).Value := _fzph;
    sp_qxtzyz.Parameters.ParamByName( '@sczt' ).Value := 9;
    sp_qxtzyz.ExecProc;
    sczt := sp_qxtzyz.Parameters.ParamByName( '@sczt' ).Value;
    if sczt <> 0 then
      application.MessageBox( '取消医嘱停止未成功，请重新操作！！', '提示！', mb_ok );
  end
  else
  begin
    sp_qxtzyz.Close;
    sp_qxtzyz.Parameters.ParamByName( '@zyh' ).Value := zyh;
    sp_qxtzyz.Parameters.ParamByName( '@zxsj' ).Value := _yzsj;
    sp_qxtzyz.Parameters.ParamByName( '@tzyzsj' ).Value := strtodatetime( tzyzsj );
    sp_qxtzyz.Parameters.ParamByName( '@czydm' ).Value := pub_czydm;
    sp_qxtzyz.Parameters.ParamByName( '@id' ).Value := _id;
    sp_qxtzyz.Parameters.ParamByName( '@fzph' ).Value := '';
    sp_qxtzyz.Parameters.ParamByName( '@sczt' ).Value := 9;
    sp_qxtzyz.ExecProc;
    sczt := sp_qxtzyz.Parameters.ParamByName( '@sczt' ).Value;
    if sczt <> 0 then
      application.MessageBox( 'quxc医嘱停止未成功，请重新操作！！', '提示！', mb_ok );
  end;
  sp_dryz.Close;
  sp_dryz.Parameters.ParamByName( '@zyh' ).Value := zyh;
  sp_dryz.Parameters.ParamByName( '@yzsx' ).Value := '';
  sp_dryz.Open;
end;

procedure Tfrm_yzinput_lishi.N6Click( Sender: TObject );
var
  sczt: integer;
begin
  dM_data.qry_pub.close;
  DM_data.qry_pub.sql.Text:='select * from sys_jzzt';
  DM_data.qry_pub.Open;
  if DM_data.qry_pub.FieldByName('yzzdjfzt').AsBoolean=true then
  begin
     application.MessageBox( '正在进行医嘱自动记费作业,请稍后再试！', '提示', 0 + 48 );
     Abort;
  end;
  DM_data.qry_pub.Close;
  DM_data.qry_pub.SQL.text := 'select * from sys_czy where dm=' + '''' + pub_czydm + '''';
  DM_data.qry_pub.Open;
  if ( DM_data.qry_pub.FieldByName( 'cfbz' ).AsBoolean = false ) and ( Trim( sp_dryz.FieldByName( 'kdys' ).asstring ) <> pub_czydm ) then
  begin
    ShowMessage( '当前操作员无法修改本条医瞩停止时间' );
    Abort;
  end;

  if application.MessageBox( pchar( '是否修改医嘱停止计划时间？' ), '提示', mb_iconquestion + mb_yesno + mb_defbutton1 ) = idyes then
  begin
    if ( sp_dryz.FieldByName( 'yzsx' ).asstring = '长期' ) and ( not sp_dryz.FieldByName( 'tzbz' ).asboolean ) then
    begin
      try
        application.Createform( Tfrm_xgyzzxsj, frm_xgyzzxsj );
        if sp_dryz.fieldbyname( 'zfrq' ).asdatetime = 0 then
          frm_xgyzzxsj.maskedit1.text := formatdatetime( 'yyyy-mm-dd hh:mm:ss', frm_func.curr_date( ) )
        else
          frm_xgyzzxsj.maskedit1.text := formatdatetime( 'yyyy-mm-dd hh:mm:ss', sp_dryz.fieldbyname( 'zfrq' ).asdatetime );
        frm_xgyzzxsj.maskedit2.text := formatdatetime( 'yyyy-mm-dd hh:mm:ss', sp_dryz.fieldbyname( 'kdrq' ).asdatetime );
        p_xgyzzxsj.sfxse := '';
        frm_xgyzzxsj.showmodal;
      finally
        frm_xgyzzxsj.free;
      end;
      if ( bz = false ) and ( sgtzbz = true ) then
      begin
        sp_up_yjjssj.close;
        sp_up_yjjssj.Parameters.ParamByName( '@ph' ).Value := sp_dryz.FieldByName( 'ph' ).asstring;
        sp_up_yjjssj.Parameters.ParamByName( '@id' ).Value := sp_dryz.FieldByName( 'id' ).asinteger;
        sp_up_yjjssj.Parameters.ParamByName( '@fzph' ).Value := sp_dryz.FieldByName( 'fzph' ).asstring;
        sp_up_yjjssj.Parameters.ParamByName( '@zfrq' ).Value := tzyzsj;
        sp_up_yjjssj.Parameters.ParamByName( '@kdrq' ).Value := kdyzsj;
        sp_up_yjjssj.Parameters.ParamByName( '@czydm' ).Value := pub_czydm;
        sp_up_yjjssj.Parameters.ParamByName( '@qxbz' ).Value := 0;
        sp_up_yjjssj.Parameters.ParamByName( '@sczt' ).Value := 9;
        sp_up_yjjssj.ExecProc;
        sczt := sp_up_yjjssj.Parameters.ParamByName( '@sczt' ).Value;
        if sczt <> 0 then
          application.MessageBox( '修改医嘱计划停止时间停止未成功，请重新操作！！', '提示！', mb_ok );
      end
      else
        if ( bz = false ) and ( sgtzbz = false ) then
        begin
          sp_up_yjjssj.close;
          sp_up_yjjssj.Parameters.ParamByName( '@ph' ).Value := sp_dryz.FieldByName( 'ph' ).asstring;
          sp_up_yjjssj.Parameters.ParamByName( '@id' ).Value := sp_dryz.FieldByName( 'id' ).asinteger;
          sp_up_yjjssj.Parameters.ParamByName( '@fzph' ).Value := sp_dryz.FieldByName( 'fzph' ).asstring;
          sp_up_yjjssj.Parameters.ParamByName( '@zfrq' ).Value := tzyzsj;
          sp_up_yjjssj.Parameters.ParamByName( '@kdrq' ).Value := kdyzsj;
          sp_up_yjjssj.Parameters.ParamByName( '@czydm' ).Value := pub_czydm;
          sp_up_yjjssj.Parameters.ParamByName( '@qxbz' ).Value := 1;
          sp_up_yjjssj.Parameters.ParamByName( '@sczt' ).Value := 9;
          sp_up_yjjssj.ExecProc;
          sczt := sp_up_yjjssj.Parameters.ParamByName( '@sczt' ).Value;
          if sczt <> 0 then
            application.MessageBox( '修改医嘱计划停止时间停止未成功，请重新操作！！', '提示！', mb_ok );
        end;
      sp_dryz.Close;
      sp_dryz.Parameters.ParamByName( '@zyh' ).Value := zyh;
      sp_dryz.Parameters.ParamByName( '@yzsx' ).Value := '';
      sp_dryz.Open;
    end
    else
      application.MessageBox( '临时医嘱或已经停止医嘱不能修改计划停止时间！！', '提示！', mb_ok );
  end;

end;

procedure Tfrm_yzinput_lishi.N7Click( Sender: TObject );
var
  i, x1, y1, x2, y2: integer;
  ypyf, yytj: string;
  mark: boolean;
  myrect: TRect;

begin
  DM_data.qry_pub.Close;
  DM_data.qry_pub.SQL.text := 'select * from sys_czy where dm=' + '''' + pub_czydm + '''';
  DM_data.qry_pub.Open;
  if ( DM_data.qry_pub.FieldByName( 'cfbz' ).AsBoolean = false ) and ( Trim( sp_dryz.FieldByName( 'kdys' ).asstring ) <> pub_czydm ) then
  begin
    ShowMessage( '当前操作员无法对该条医嘱进行输液分组' );
    Abort;
  end;
  if dbgrideh4.SelectedRows.Count > 0 then
  begin
    if application.MessageBox( '是否要添加新的分组?', '提示信息', mb_iconquestion + mb_okcancel + mb_defbutton1 ) = idok then
    begin
      mark := true;
      sp_dryz.GotoBookmark( pointer( dbgrideh4.SelectedRows.Items[0] ) );
      ypyf := sp_dryz.fieldbyname( 'ypyf' ).asstring;
      yytj := sp_dryz.fieldbyname( 'yytj' ).asstring;
      while ( i <= dbgrideh4.SelectedRows.Count - 1 ) and mark do
      begin
        sp_dryz.GotoBookmark( pointer( dbgrideh4.SelectedRows.Items[i] ) );
        if ( ypyf <> sp_dryz.fieldbyname( 'ypyf' ).asstring ) or ( yytj <> sp_dryz.fieldbyname( 'yytj' ).asstring ) then
          mark := false
        else
        begin
          ypyf := sp_dryz.fieldbyname( 'ypyf' ).asstring;
          yytj := sp_dryz.fieldbyname( 'yytj' ).asstring;
        end;
        i := i + 1;
      end;
      if mark then
      begin
        fzbh := get_sjh( pub_czydm );
        for i := 0 to dbgrideh4.SelectedRows.Count - 1 do
        begin
          //          sp_dryz.GotoBookmark( pointer( dbgrideh4.SelectedRows.Items[i] ) );
          //          sp_syfz_cxfz.Close;
          //          sp_syfz_cxfz.Parameters.ParamByName( '@id' ).value := sp_dryz.fieldbyname( 'id' ).asinteger;
          //          sp_syfz_cxfz.Parameters.ParamByName( '@fzph' ).value := fzbh;
          //          sp_syfz_cxfz.Parameters.ParamByName( '@sczt' ).value := 9;
          //          sp_syfz_cxfz.ExecProc;
          sp_dryz.GotoBookmark( pointer( dbgrideh4.SelectedRows.Items[i] ) );
          DM_data.qry_pub.Close;
          DM_data.qry_pub.SQL.Text := 'update zybl_zyyz set fzph=' + '''' + fzbh + '''' + ' where zyh=' + '''' + sp_dryz.FieldByName( 'zyh' ).asstring + '''' +
            ' and id=' + sp_dryz.FieldByName( 'id' ).asstring;
          DM_data.qry_pub.ExecSQL;
        end;
      end
      else
        application.messagebox( '药品用法或用药途径不一致，不能分在一组！！', '错误', mb_ok + mb_iconerror );
    end;
  end
  else
    application.MessageBox( '请选定需要进行分组的行！！', '提示信息', mb_iconinformation + mb_ok );
  sp_dryz.Close;
  sp_dryz.Parameters.ParamByName( '@zyh' ).Value := zyh;
  sp_dryz.Parameters.ParamByName( '@yzsx' ).Value := '';
  sp_dryz.Open;
end;

procedure Tfrm_yzinput_lishi.N8Click( Sender: TObject );
var
  i, x1, y1, x2, y2: integer;
  ypyf, yytj: string;
  mark: boolean;
  myrect: TRect;
begin
  DM_data.qry_pub.Close;
  DM_data.qry_pub.SQL.text := 'select * from sys_czy where dm=' + '''' + pub_czydm + '''';
  DM_data.qry_pub.Open;
  if ( DM_data.qry_pub.FieldByName( 'cfbz' ).AsBoolean = false ) and ( Trim( sp_dryz.FieldByName( 'kdys' ).asstring ) <> pub_czydm ) then
  begin
    ShowMessage( '当前操作员无法取消本条医瞩输液分组' );
    Abort;
  end;
  if dbgrideh4.SelectedRows.Count > 0 then
  begin
    if application.MessageBox( '是否要取消分组?', '提示信息', mb_iconquestion + mb_okcancel + mb_defbutton1 ) = idok then
    begin
      if sp_dryz.fieldbyname( 'fzph' ).asstring <> '' then
      begin
        //        sp_up_qxsyfz.Close;
        //        sp_up_qxsyfz.Parameters.ParamByName( '@fzph' ).value := sp_dryz.fieldbyname( 'fzph' ).asstring;
        //        sp_up_qxsyfz.Parameters.ParamByName( '@sczt' ).value := 9;
        //        sp_up_qxsyfz.ExecProc;
        DM_data.qry_pub.Close;
        DM_data.qry_pub.SQL.Text := 'update zybl_zyyz set fzph='''' where zyh=' + '''' + sp_dryz.FieldByName( 'zyh' ).asstring + '''' +
          ' and fzph=' + '''' + sp_dryz.fieldbyname( 'fzph' ).asstring + '''';
        DM_data.qry_pub.ExecSQL;
      end;
    end
  end
  else
    application.MessageBox( '请选定需要进行分组的行！！', '提示信息', mb_iconinformation + mb_ok );
  sp_dryz.Close;
  sp_dryz.Parameters.ParamByName( '@zyh' ).Value := zyh;
  sp_dryz.Parameters.ParamByName( '@yzsx' ).Value := '';
  sp_dryz.Open;

end;

procedure Tfrm_yzinput_lishi.N9Click(Sender: TObject);
var
  i, y, j, count, x: Integer;
  aControl: TControl;
  v_yytj,v_lb,filter:string;
begin
  with sp_zxjl_cq_dy do
  begin
    Filtered := False;
    Close;
    Parameters.ParamByName( '@zyh' ).Value := Trim( sp_jbxx.fieldbyname( 'zyh' ).asstring );
    Parameters.ParamByName( '@fs' ).Value := 1;
    Open;
  end;

  DM_data.qry_pub.close;
  DM_data.qry_pub.sql.text:='select yytj from zybl_zyyz_dytjsz where dyxm=''治疗计划单''';
  DM_data.qry_pub.Open;
  if DM_data.qry_pub.IsEmpty then
  begin
  v_yytj:='';
  end
  else
  begin
  DM_data.qry_pub.First;
  while not DM_data.qry_pub.eof do
  begin
  v_yytj:=v_yytj+ '(yytj='+''''+DM_data.qry_pub.FieldByName('yytj').asstring+''''+' and  tzrq=null and kdks=' + '''' + pub_ksdm +
                  ''''+' and kdrq>=' + '''' + formatdatetime( 'yy-MM-dd', frm_func.curr_date ) + ' 00:00' +  ''')' +' or ';
  DM_data.qry_pub.Next;
  end;

  end;


  DM_data.qry_pub.close;
  DM_data.qry_pub.sql.text:='select lbmc from zybl_zyyz_dylbsz where dyxm=''治疗计划单''';
  DM_data.qry_pub.Open;
  if DM_data.qry_pub.IsEmpty then
  begin
  v_lb:='';
  end
  else
  begin
  DM_data.qry_pub.First;
  while not DM_data.qry_pub.eof do
  begin
  v_lb:=v_lb+ '(lb='+''''+DM_data.qry_pub.FieldByName('lbmc').asstring+''''+' and  tzrq=null and kdks=' + '''' + pub_ksdm +
                  ''''+' and kdrq>=' + '''' + formatdatetime( 'yy-MM-dd', frm_func.curr_date ) + ' 00:00' +  ''')' +' or ';
  DM_data.qry_pub.Next;
  end;

  end;

  if v_yytj+ v_lb='' then
  begin
  filter:=' 1<>1 ';
  end
  else
  begin
  filter:= v_yytj+ v_lb+' ( yytj = ''特殊情况'' )';
  end;

  sp_zxjl_cq_dy.Filter := filter;

  sp_zxjl_cq_dy.Filtered := True;

  if not sp_zxjl_cq_dy.IsEmpty then
  begin
    sp_zxjl_cq_dy.First;
    if sp_zxjl_cq_dy.RecordCount mod 9 <> 0 then
      y := trunc( sp_zxjl_cq_dy.RecordCount / 9 ) + 1
    else
      y := trunc( sp_zxjl_cq_dy.RecordCount / 9 );
    count := sp_zxjl_cq_dy.RecordCount;
    for I := 1 to y do
    begin
      for j := 1 to 9 do
      begin
        if count < i * 9 then
        begin
          if j > ( 9 - ( y * 9 - count ) ) then
          begin
            aControl := QRBand10.FindChildControl( 'ksrqls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            aControl := QRBand10.FindChildControl( 'kdysmcls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).enabled := false;
            //TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := '';
          end
          else
          begin
            aControl := QRBand10.FindChildControl( 'ksrqls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := sp_zxjl_cq_dy.FieldByName( 'ksrq' ).AsString;
            aControl := QRBand10.FindChildControl( 'kdysmcls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;
            if sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
            begin
              x := ( length( sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
              QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).enabled := true;
              QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).Top := TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).top;
              QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).left := QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ).left - 20;
              QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).height := 30;
              TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := trim( sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
              TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
            end
            else
            begin
              QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).enabled := false;
              QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ).Width := 235;
              TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
              TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + ' ' + trim( sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + ' ' + trim( sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
            end;
            sp_zxjl_cq_dy.Next;
          end;
        end
        else
        begin
          aControl := QRBand10.FindChildControl( 'ksrqls' + IntToStr( j - 1 ) );
          if aControl is TQRLabel then
            TQRLabel( aControl ).Caption := sp_zxjl_cq_dy.FieldByName( 'ksrq' ).asstring;
          aControl := QRBand10.FindChildControl( 'kdysmcls' + IntToStr( j - 1 ) );
          if aControl is TQRLabel then
            TQRLabel( aControl ).Caption := sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;
          if sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
          begin
            x := ( length( sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
            QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).enabled := true;
            QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).Top := TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).top;
            QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).left := QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ).left - 20;
            QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).height := 30;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := trim( sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
          end
          else
          begin
            QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).enabled := false;
            QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ).Width := 235;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + ' ' + trim( sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + ' ' + trim( sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
          end;
          sp_zxjl_cq_dy.Next;
        end;
      end;
      DM_data.qry_pub.Close;
      DM_data.qry_pub.SQL.text := 'select * from sys_kscwsz where bqdm=' + '''' + pub_bqdm + '''' + ' and bcbh=' + '''' + trim( sp_jbxx.fieldbyname( 'bch' ).asstring ) + '''';
      DM_data.qry_pub.Open;
      QRLabel45.Caption := pub_yymc + '临时治疗执行单';
      QRLabel46.Caption := '姓名:' + sp_jbxx.fieldbyname( 'brxm' ).asstring;
      QRLabel50.Caption := '病床号:' + Trim( DM_data.qry_pub.FieldByName( 'yybch' ).asstring );
      QRLabel51.Caption := '性别:' + sp_jbxx.fieldbyname( 'brxb' ).asstring;
      QRLabel52.Caption := '年龄:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
      QRLabel53.Caption := FormatDateTime( 'yyyy', frm_func.curr_date ) + '年';
      QRLabel67.Caption := '姓名:' + sp_jbxx.fieldbyname( 'brxm' ).asstring + '      ' +
        '病床号:' + Trim( DM_data.qry_pub.FieldByName( 'yybch' ).asstring ) + '      ' +
        '性别:' + sp_jbxx.fieldbyname( 'brxb' ).asstring + '      ' +
        '年龄:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring )+'  '+ '卡号:' + Trim( sp_jbxx.fieldbyname( 'tmh' ).asstring  );
      //QuickRep3.Prepare;
      QRLabel58.Caption := '审核医生：';
      QuickRep5.Preview;
    end;
  end;
end;

procedure Tfrm_yzinput_lishi.aptzyzClick( Sender: TObject );
var
  _id, _zhzxsj, _yzsx: string;
  _fzph: string;
  _yzsj: string;
  sczt, i: integer;
  yzid:Integer;
  kdys:string;
begin
  dM_data.qry_pub.close;
  DM_data.qry_pub.sql.Text:='select * from sys_jzzt';
  DM_data.qry_pub.Open;
  if DM_data.qry_pub.FieldByName('yzzdjfzt').AsBoolean=true then
  begin
     application.MessageBox( '正在进行医嘱自动记费作业,请稍后再试！', '提示', 0 + 48 );
     Abort;
  end;
  tzyzqr := 0;

  try
    application.Createform( Tfrm_tzyzsj, frm_tzyzsj );
    p_tzyzsj.sfxse := '';
    frm_tzyzsj.showmodal;
  finally
    frm_tzyzsj.free;
  end;
  if sp_dryz.FieldByName( 'yzsx' ).AsString = '临时' then
  begin
    if application.MessageBox( '临时医嘱停止,只能立即停止，是否继续？', '提示', mb_iconquestion + mb_yesno + mb_defbutton1 ) = idno then
      abort
  end;
  //时间停止医嘱
  DM_data.qry_pub.close;
  DM_data.qry_pub.SQL.text:='select * from zybl_zyyz where id='+sp_dryz.FieldByName( 'id' ).asstring;
  DM_data.qry_pub.Open;
  if (sp_dryz.FieldByName( 'yzsx' ).AsString = '临时') and ((DM_data.qry_pub.FieldByName( 'shry' ).AsString = '未用')
     or (sp_dryz.FieldByName( 'tzbz' ).AsBoolean=true)) then
  begin
    application.MessageBox( '临时医嘱已取消或标识为未用的不能再取消了！','提示') ;
    abort;
  end;

  sp_yzsj.Close;
  sp_yzsj.Parameters.ParamByName( '@scyzsj' ).Value := tzyzsj;
  sp_yzsj.ExecProc;
  _yzsj := formatdatetime( 'yyyymmdd', sp_yzsj.Parameters.ParamByName( '@scyzsj' ).Value );
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
        DBGrideh4.DataSource.DataSet.GotoBookmark( pointer( DBGrideh4.SelectedRows.Items[i] ) );
        DM_data.qry_pub.Close;
        DM_data.qry_pub.SQL.text := 'select convert(varchar(8),sfsj,112) sj,* from zybl_zyyz_yzzxqd where yzid=' +
        sp_dryz.FieldByName( 'id' ).asstring;
        DM_data.qry_pub.Open;
        DM_data.qry_pub.Filter := 'zxcs<>0';
        DM_data.qry_pub.Filtered := true;
        //-------------------------calmhawk--已执行临时医嘱不能停止-------
        if ( not DM_data.qry_pub.IsEmpty ) and ( sp_dryz.FieldByName( 'yzsx' ).asstring = '临时' ) then
        begin
          application.MessageBox( '已执行临时医嘱，不能停止！', '提示', mb_iconquestion + mb_ok );
          abort;
        end;
        DM_data.qry_pub.Filtered := false;
        DM_data.qry_pub.Filter := 'sj=' + #39 + Formatdatetime( 'yyyyMMdd', frm_func.curr_date ) + #39;
        DM_data.qry_pub.Filtered := true;

        if ( DM_data.qry_pub.RecordCount=0 ) and ( sp_dryz.FieldByName( 'yzsx' ).asstring = '长期' ) then
        begin
          if application.MessageBox( '当前医嘱今天未记费，是否继续停止？', '提示', mb_iconquestion + mb_yesno + mb_defbutton2 ) = idno then
          begin
            DM_data.qry_pub.Filtered := false;
            abort;
          end;
        end;
        DM_data.qry_pub.Filtered := false;
        DM_data.qry_pub.Close;
        DM_data.qry_pub.SQL.text := 'select * from sys_czy where dm=' + '''' + pub_czydm + '''';
        DM_data.qry_pub.Open;
        if ( DM_data.qry_pub.FieldByName( 'cfbz' ).AsBoolean = false ) and ( Trim( sp_dryz.FieldByName( 'kdys' ).asstring ) <> pub_czydm ) then
        begin
          ShowMessage( '当前操作员无法停止本条医瞩' );
        end
        else
          if sp_dryz.FieldByName( 'kdrq' ).AsDateTime > strtodatetime( tzyzsj ) then
          begin
            ShowMessage( '当前医嘱记录的开单日期大于停止日期，不能停止！' );
          end
          else
          begin
            if ( not sp_dryz.FieldByName( 'tzbz' ).asboolean ) and ( sp_dryz.fieldbyname( 'zfrq' ).asdatetime <= 0 ) then
            begin
              _id := sp_dryz.FieldByName( 'id' ).AsString;
              _zhzxsj := sp_dryz.FieldByName( 'zhzxsj' ).AsString;
              _yzsx := sp_dryz.FieldByName( 'yzsx' ).AsString;
              _fzph := sp_dryz.FieldByName( 'fzph' ).AsString;
              if _fzph <> '' then
              begin
                sp_tzyz.Close;
                sp_tzyz.Parameters.ParamByName( '@zyh' ).Value := zyh;
                sp_tzyz.Parameters.ParamByName( '@zxsj' ).Value := _yzsj;
                sp_tzyz.Parameters.ParamByName( '@tzyzsj' ).Value := strtodatetime( tzyzsj );
                sp_tzyz.Parameters.ParamByName( '@czydm' ).Value := pub_czydm;
                sp_tzyz.Parameters.ParamByName( '@id' ).Value := 0;
                sp_tzyz.Parameters.ParamByName( '@fzph' ).Value := _fzph;
                sp_tzyz.Parameters.ParamByName( '@sczt' ).Value := 9;
                sp_tzyz.ExecProc;
                sczt := sp_tzyz.Parameters.ParamByName( '@sczt' ).Value;
                if sczt <> 0 then
                  application.MessageBox( '医嘱停止未成功，请重新操作！！', '提示！', mb_ok );
              end
              else
              begin
                sp_tzyz.Close;
                sp_tzyz.Parameters.ParamByName( '@zyh' ).Value := zyh;
                sp_tzyz.Parameters.ParamByName( '@zxsj' ).Value := _yzsj;
                sp_tzyz.Parameters.ParamByName( '@tzyzsj' ).Value := strtodatetime( tzyzsj );
                sp_tzyz.Parameters.ParamByName( '@czydm' ).Value := pub_czydm;
                sp_tzyz.Parameters.ParamByName( '@id' ).Value := _id;
                sp_tzyz.Parameters.ParamByName( '@fzph' ).Value := '';
                sp_tzyz.Parameters.ParamByName( '@sczt' ).Value := 9;
                sp_tzyz.ExecProc;
                DM_data.qry_pub.close;
                DM_data.qry_pub.SQL.text:='select * from sys_xt_kg ';
                DM_data.qry_pub.Open;
                if (DM_data.qry_pub.FieldByName('qyzdjf').AsBoolean=true) and
                   (DM_data.qry_pub.FieldByName('yztjjf').AsBoolean=true) then
                begin
                DM_data.qry_pub.close;
                DM_data.qry_pub.SQL.Text:='select * from zybl_zyyz where id='+sp_dryz.FieldByName( 'id' ).asstring;
                DM_data.qry_pub.Open;
                yzid:=sp_dryz.FieldByName( 'id' ).AsInteger;
                kdys:=DM_data.qry_pub.FieldByName('kdys').asstring;
                if sp_dryz.FieldByName('yzsx').AsString='临时' then
                yzqxtf(yzid,kdys);
                end;
                sczt := sp_tzyz.Parameters.ParamByName( '@sczt' ).Value;
                if sczt <> 0 then
                  application.MessageBox( '医嘱停止未成功，请重新操作！！', '提示！', mb_ok );
              end;
//              if ( _zhzxsj <> '' ) and ( _yzsx = '临时' ) and (( sp_dryz.FieldByName('lb').asstring = '药品' )
//              or  ( sp_dryz.FieldByName('lb').asstring = '成药' ) or  ( sp_dryz.FieldByName('lb').asstring = '检验' )) then
//              begin
//                if _fzph <> '' then
//                  application.MessageBox( pchar( '此' + #13 + sp_dryz.FieldByName( 'xmmc' ).AsString + #13 + '所在输液组已经执行计费，请填写相应通知办公护士退费！！！' ), '提示', 0 + 48 )
//                else
//                  application.MessageBox( pchar( '此' + #13 + sp_dryz.FieldByName( 'xmmc' ).AsString + #13 + '已经执行计费，请填写相应通知办公护士退费！！！' ), '提示', 0 + 48 );
//              end;
            end;
          end;
      end;
    end
    else
    begin
      application.MessageBox( '批量医嘱医嘱停止必须选择至少一个，请重新操作！！', '提示！', mb_ok );
      abort;
    end;

    sp_dryz.Close;
    sp_dryz.Parameters.ParamByName( '@zyh' ).Value := zyh;
    sp_dryz.Parameters.ParamByName( '@yzsx' ).Value := '';
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
    application.MessageBox(pchar('此'+#13+_tsxx+#13+'已经执行计费，请填写相应通知办公护士退费！！！'), '提示', 0 + 48);

  sp_dryz.Close;
  sp_dryz.Parameters.ParamByName('@zyh').Value := zyh;
  sp_dryz.Parameters.ParamByName('@yzsx').Value := '';
  sp_dryz.Open;
end;  }

procedure Tfrm_yzinput_lishi.qry_ysAfterScroll( DataSet: TDataSet );
begin
  if ( yzlb <> '药品' ) and ( qry_yz.Active ) then
  begin
    if qry_yz.RecordCount > 0 then
    begin
      qry_yz.FieldByName( 'yplb' ).Value := '';
      qry_yz.FieldByName( 'yplsj' ).Value := 0;
      qry_yz.FieldByName( 'gg' ).Value := '';
    end;
  end;
end;

procedure Tfrm_yzinput_lishi.qry_yzAfterInsert( DataSet: TDataSet );
begin
  if ( qry_yz.State = dsInsert ) then
  begin
    qry_yz.FieldByName( 'yzsx' ).Value := '长期';
    if yzsx = '临时' then
    begin
      qry_yz.FieldByName( 'yzsx' ).Value := '临时';
    end;
    qry_yz.FieldByName( 'lb' ).Value := yzlb;
    qry_yz.FieldByName( 'kdys' ).Value := yzys;
  end;
end;

procedure Tfrm_yzinput_lishi.qry_yzAfterOpen( DataSet: TDataSet );
begin
  createrect( myrect, qry_yz, grid_yzlr, 6, 7, 14 );
  sp_get_maxxh.close;
  sp_get_maxxh.parameters.parambyname( '@zyh' ).value := zyh;
  sp_get_maxxh.open;
  maxxh := sp_get_maxxh.fieldbyname( 'maxxh' ).asinteger;
end;

procedure tfrm_yzinput_lishi.createrect( var myrect1: TTmyrect; dataset_rect: Tcustomadodataset; grid_yzlr1: Tdbgrideh; x1, x2, x3: integer );
var
  yzph: string;
  i, n: integer;
begin
  dataset_rect.DisableControls;
  rectno := 0;
  dataset_rect.first;
  initarray( myrect1 );
  i := 1;
  while not dataset_rect.Eof do
  begin
    if dataset_rect.FieldByName( 'fzph' ).AsString <> '' then
    begin
      if ( yzph <> '' ) and ( myrect1[rectno].sl = 1 ) and ( yzph <> dataset_rect.FieldByName( 'fzph' ).AsString ) then
      begin
        myrect1[rectno].bottom := grid_yzlr1.CellRect( x1, i - 1 ).bottom;
        myrect1[rectno].Gbottom := grid_yzlr1.CellRect( x1, i - 1 ).bottom;
        //        myrect_cx[rectno].sl:=myrect_cx[rectno].sl+1;
        yzph := '';
      end;
      if yzph = dataset_rect.FieldByName( 'fzph' ).AsString then
      begin
        myrect1[rectno].bottom := grid_yzlr1.CellRect( x1, i ).bottom;
        myrect1[rectno].Gbottom := grid_yzlr1.CellRect( 1, i ).bottom;
        myrect1[rectno].sl := myrect1[rectno].sl + 1;

      end
      else
      begin
        rectno := rectno + 1;
        myrect1[rectno].sl := 1;
        myrect1[rectno].ph := dataset_rect.FieldByName( 'fzph' ).AsString;

        myrect1[rectno].left := grid_yzlr1.CellRect( x1, i ).left;
        myrect1[rectno].right := grid_yzlr1.CellRect( x2, i ).right;
        myrect1[rectno].top := grid_yzlr1.CellRect( x1, i ).top;

        myrect1[rectno].Gleft := grid_yzlr1.CellRect( 1, i ).left;
        myrect1[rectno].Gright := grid_yzlr1.CellRect( x3, i ).right;
        if grid_yzlr1.CellRect( x3, i ).right = 0 then
          for n := 0 to x3 - 1 do
            myrect1[rectno].Gright := myrect1[rectno].Gright + grid_yzlr1.Columns[n].Width;
        myrect1[rectno].Gtop := grid_yzlr1.CellRect( 1, i ).top;
        myrect1[rectno].yf := dataset_rect.FieldByName( 'ypyf' ).AsString;
        myrect1[rectno].tj := dataset_rect.FieldByName( 'yytj' ).AsString;
        myrect1[rectno].height := grid_yzlr1.CellRect( x1, i ).bottom - grid_yzlr1.CellRect( x1, i ).top;
        yzph := dataset_rect.FieldByName( 'fzph' ).AsString;
      end;
    end
    else
    begin
      if ( yzph <> '' ) and ( myrect1[rectno].sl = 1 ) then
      begin
        myrect1[rectno].bottom := grid_yzlr1.CellRect( x1, i - 1 ).bottom;
        ;
        myrect1[rectno].Gbottom := grid_yzlr1.CellRect( x1, i - 1 ).bottom;
        //        myrect_cx[rectno].sl:=myrect_cx[rectno].sl+1;
        yzph := '';
      end;
      if ( yzph <> '' ) and ( myrect1[rectno].sl > 1 ) then
        yzph := '';

    end;
    dataset_rect.Next;
    i := dataset_rect.RecNo;
  end;
  if yzph <> '' then
  begin
    myrect1[rectno].bottom := grid_yzlr1.CellRect( x1, i ).bottom;
    ;
    myrect1[rectno].Gbottom := grid_yzlr1.CellRect( x1, i ).bottom;
    //        myrect_cx[rectno].sl:=myrect_cx[rectno].sl+1;
    yzph := '';
  end;
  dataset_rect.EnableControls;

end;

procedure Tfrm_yzinput_lishi.qry_yzAfterScroll( DataSet: TDataSet );
begin
  zdkz;
end;

procedure Tfrm_yzinput_lishi.qry_yzBeforeInsert( DataSet: TDataSet );
begin
  if qry_yz.RecordCount > 0 then
    if trim( qry_yz.FieldByName( 'xmmc' ).AsString ) = '' then
    begin
      qry_yz.Delete;
    end;
end;

procedure Tfrm_yzinput_lishi.grid_yzDblClick( Sender: TObject );
begin
  grid_yzlr.SetFocus;
  grid_yz.Visible := false;
end;

procedure Tfrm_yzinput_lishi.grid_yzExit( Sender: TObject );
begin
  qtjs;
end;

procedure Tfrm_yzinput_lishi.grid_yzKeyPress( Sender: TObject; var Key: Char );
begin
  if key = #13 then
  begin
    grid_yz.Visible := false;
    if (qry_yz.FieldByName('lb').asstring='治疗') or
      (qry_yz.FieldByName('lb').asstring='检验') or
       (qry_yz.FieldByName('lb').asstring='检查') then
    grid_yzlr.SelectedIndex := 5
    else
    grid_yzlr.SelectedIndex := 7;
    //    if Trim( sp_cx_yp_yz.FieldByName( 'zylsj' ).asstring ) = '' then
    //      grid_yzlr.SelectedIndex := 2;
    grid_yzlr.SetFocus;
  end;
  if key = #27 then
  begin
    grid_yzlr.SetFocus;
    grid_yz.Visible := false;
  end;
end;

procedure Tfrm_yzinput_lishi.grid_yzlr_ColExit;
begin
  if ( qry_yz.State <> dsEdit ) and ( qry_yz.State <> dsInsert ) then
  begin
    qry_yz.Edit;
  end;
  if tzbz <> 0 then
  begin
    case grid_yzlr.SelectedIndex of
      0: yzsxsr( kzbz );
      1: yzlbsr( kzbz );
      2: yzXmsr( kzbz ); //项目药品其他类检索
      3: sljc( kzbz ); //数量检查
      5: sljc( kzbz ); //用法
      6: yytjjs( kzbz ); //用药途径
      7: sljc( kzbz ); //数量检查
      //      8: yldwjc(kzbz); //用量单位检查
      9: yznew( kzbz ); //用量单位检查
      10: czkscl( kzbz );
      11: yzNew( kzbz );
      12: yzNew( kzbz );
      13: yzNew( kzbz );
      14: yzNew( kzbz );
      15: yzNew( kzbz );
      16: yzNew( kzbz );
    end;
  end;
end;

procedure Tfrm_yzinput_lishi.MenuItem10Click(Sender: TObject);
var v_lb,v_yytj,fliter:string;
begin
  with sp_zxjl_cq_dy do
  begin
    Filtered := False;
    Close;
    Parameters.ParamByName( '@zyh' ).Value := Trim( sp_jbxx.fieldbyname( 'zyh' ).asstring );
    Parameters.ParamByName( '@fs' ).Value := 0;
    Open;
  end;
  //sp_zxjl_cq_dy.Filtered := False;
  DM_data.qry_pub.close;
  DM_data.qry_pub.sql.text:='select yytj from zybl_zyyz_dytjsz where dyxm=''治疗计划单''';
  DM_data.qry_pub.Open;
  if DM_data.qry_pub.IsEmpty then
  begin
  v_yytj:='';
  end
  else
  begin
  DM_data.qry_pub.First;
  while not DM_data.qry_pub.eof do
  begin
  v_yytj:=v_yytj+ '(yytj='+''''+DM_data.qry_pub.FieldByName('yytj').asstring+''''+' and  tzrq=null and kdks=' + '''' + pub_ksdm + ''')' +' or ';
  DM_data.qry_pub.Next;
  end;

  end;
  DM_data.qry_pub.close;
  DM_data.qry_pub.sql.text:='select lbmc from zybl_zyyz_dylbsz where dyxm=''治疗计划单''';
  DM_data.qry_pub.Open;
  if DM_data.qry_pub.IsEmpty then
  begin
  v_lb:='';
  end
  else
  begin
  DM_data.qry_pub.First;
  while not DM_data.qry_pub.eof do
  begin
  v_lb:=v_lb+ '(lb='+''''+DM_data.qry_pub.FieldByName('lbmc').asstring+''''+' and  tzrq=null and kdks=' + '''' + pub_ksdm + ''')' +' or ';
  DM_data.qry_pub.Next;
  end;

  end;

  if v_yytj+ v_lb='' then
  begin
  fliter:=' 1<>1 ';
  end
  else
  begin
  fliter:= v_yytj+ v_lb+' ( yytj=''特殊情况'' )';
  end;

  sp_zxjl_cq_dy.Filter := fliter;
  sp_zxjl_cq_dy.Filtered := True;
  application.CreateForm(Tfrm_zxdxd, frm_zxdxd);
  try
    frm_zxdxd.ShowModal;
  finally
    frm_zxdxd.free;
  end;
end;

procedure Tfrm_yzinput_lishi.MenuItem11Click(Sender: TObject);
var
  i, y, j, count, x: Integer;
  aControl: TControl;
begin
  with sp_zxjl_cq_dy do
  begin
    Filtered := False;
    Close;
    Parameters.ParamByName( '@zyh' ).Value := Trim( sp_jbxx.fieldbyname( 'zyh' ).asstring );
    Parameters.ParamByName( '@fs' ).Value := 0;
    Open;
  end;
  //sp_zxjl_cq_dy.Filtered := False;
  sp_zxjl_cq_dy.Filter := 'tzrq=null and kdks=' + '''' + pub_ksdm + '''' ;
  sp_zxjl_cq_dy.Filtered := True;

  if not sp_zxjl_cq_dy.IsEmpty then
  begin
    sp_zxjl_cq_dy.First;
    if sp_zxjl_cq_dy.RecordCount mod 9 <> 0 then
      y := trunc( sp_zxjl_cq_dy.RecordCount / 9 ) + 1
    else
      y := trunc( sp_zxjl_cq_dy.RecordCount / 9 );
    count := sp_zxjl_cq_dy.RecordCount;
    for I := 1 to y do
    begin
      for j := 1 to 9 do
      begin
        if count < i * 9 then
        begin
          if j > ( 9 - ( y * 9 - count ) ) then
          begin
            aControl := QRBand10.FindChildControl( 'ksrqls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            aControl := QRBand10.FindChildControl( 'kdysmcls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).enabled := false;
            //TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := '';
          end
          else
          begin
            aControl := QRBand10.FindChildControl( 'ksrqls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := sp_zxjl_cq_dy.FieldByName( 'ksrq' ).AsString;
            aControl := QRBand10.FindChildControl( 'kdysmcls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;
            if sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
            begin
              x := ( length( sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
              QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).enabled := true;
              QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).Top := TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).top;
              QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).left := QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ).left - 20;
              QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).height := 30;
              TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := trim( sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
              TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
            end
            else
            begin
              QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).enabled := false;
              QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ).Width := 235;
              TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
              TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + ' ' + trim( sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + ' ' + trim( sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
            end;
            sp_zxjl_cq_dy.Next;
          end;
        end
        else
        begin
          aControl := QRBand10.FindChildControl( 'ksrqls' + IntToStr( j - 1 ) );
          if aControl is TQRLabel then
            TQRLabel( aControl ).Caption := sp_zxjl_cq_dy.FieldByName( 'ksrq' ).asstring;
          aControl := QRBand10.FindChildControl( 'kdysmcls' + IntToStr( j - 1 ) );
          if aControl is TQRLabel then
            TQRLabel( aControl ).Caption := sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;
          if sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
          begin
            x := ( length( sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
            QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).enabled := true;
            QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).Top := TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).top;
            QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).left := QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ).left - 20;
            QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).height := 30;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := trim( sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
          end
          else
          begin
            QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).enabled := false;
            QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ).Width := 235;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + ' ' + trim( sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + ' ' + trim( sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
          end;
          sp_zxjl_cq_dy.Next;
        end;
      end;
      DM_data.qry_pub.Close;
      DM_data.qry_pub.SQL.text := 'select * from sys_kscwsz where bqdm=' + '''' + pub_bqdm + '''' + ' and bcbh=' + '''' + trim( sp_jbxx.fieldbyname( 'bch' ).asstring ) + '''';
      DM_data.qry_pub.Open;
      QRLabel45.Caption := pub_yymc + '长期查房单';
      QRLabel46.Caption := '姓名:' + sp_jbxx.fieldbyname( 'brxm' ).asstring;
      QRLabel50.Caption := '病床号:' + Trim( DM_data.qry_pub.FieldByName( 'yybch' ).asstring );
      QRLabel51.Caption := '性别:' + sp_jbxx.fieldbyname( 'brxb' ).asstring;
      QRLabel52.Caption := '年龄:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
      QRLabel53.Caption := FormatDateTime( 'yyyy', frm_func.curr_date ) + '年';
      QRLabel67.Caption := '姓名:' + sp_jbxx.fieldbyname( 'brxm' ).asstring + '      ' +
        '病床号:' + Trim( DM_data.qry_pub.FieldByName( 'yybch' ).asstring ) + '      ' +
        '性别:' + sp_jbxx.fieldbyname( 'brxb' ).asstring + '      ' +
        '年龄:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring )+'  '+  '卡号:' + Trim( sp_jbxx.fieldbyname( 'tmh' ).asstring  );
      //QuickRep3.Prepare;
      QRLabel58.Caption := '审核医生：';
      QuickRep5.Preview;
    end;
  end;
end;

procedure Tfrm_yzinput_lishi.MenuItem12Click(Sender: TObject);
var
  i, y, j, count, x: Integer;
  aControl: TControl;
begin
  with sp_zxjl_cq_dy do
  begin
    Filtered := False;
    Close;
    Parameters.ParamByName( '@zyh' ).Value := Trim( sp_jbxx.fieldbyname( 'zyh' ).asstring );
    Parameters.ParamByName( '@fs' ).Value := 1;
    Open;
  end;
  //sp_zxjl_cq_dy.Filtered := False;
  sp_zxjl_cq_dy.Filter := 'tzrq=null and kdks=' + '''' + pub_ksdm + '''' ;
  sp_zxjl_cq_dy.Filtered := True;

  if not sp_zxjl_cq_dy.IsEmpty then
  begin
    sp_zxjl_cq_dy.First;
    if sp_zxjl_cq_dy.RecordCount mod 9 <> 0 then
      y := trunc( sp_zxjl_cq_dy.RecordCount / 9 ) + 1
    else
      y := trunc( sp_zxjl_cq_dy.RecordCount / 9 );
    count := sp_zxjl_cq_dy.RecordCount;
    for I := 1 to y do
    begin
      for j := 1 to 9 do
      begin
        if count < i * 9 then
        begin
          if j > ( 9 - ( y * 9 - count ) ) then
          begin
            aControl := QRBand10.FindChildControl( 'ksrqls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            aControl := QRBand10.FindChildControl( 'kdysmcls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).enabled := false;
            //TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := '';
          end
          else
          begin
            aControl := QRBand10.FindChildControl( 'ksrqls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := sp_zxjl_cq_dy.FieldByName( 'ksrq' ).AsString;
            aControl := QRBand10.FindChildControl( 'kdysmcls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;
            if sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
            begin
              x := ( length( sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
              QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).enabled := true;
              QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).Top := TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).top;
              QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).left := QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ).left - 20;
              QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).height := 30;
              TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := trim( sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
              TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
            end
            else
            begin
              QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).enabled := false;
              QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ).Width := 235;
              TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
              TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + ' ' + trim( sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + ' ' + trim( sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
            end;
            sp_zxjl_cq_dy.Next;
          end;
        end
        else
        begin
          aControl := QRBand10.FindChildControl( 'ksrqls' + IntToStr( j - 1 ) );
          if aControl is TQRLabel then
            TQRLabel( aControl ).Caption := sp_zxjl_cq_dy.FieldByName( 'ksrq' ).asstring;
          aControl := QRBand10.FindChildControl( 'kdysmcls' + IntToStr( j - 1 ) );
          if aControl is TQRLabel then
            TQRLabel( aControl ).Caption := sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;
          if sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
          begin
            x := ( length( sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
            QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).enabled := true;
            QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).Top := TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).top;
            QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).left := QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ).left - 20;
            QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).height := 30;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := trim( sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
          end
          else
          begin
            QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).enabled := false;
            QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ).Width := 235;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + ' ' + trim( sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + ' ' + trim( sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
          end;
          sp_zxjl_cq_dy.Next;
        end;
      end;
      DM_data.qry_pub.Close;
      DM_data.qry_pub.SQL.text := 'select * from sys_kscwsz where bqdm=' + '''' + pub_bqdm + '''' + ' and bcbh=' + '''' + trim( sp_jbxx.fieldbyname( 'bch' ).asstring ) + '''';
      DM_data.qry_pub.Open;
      QRLabel45.Caption := pub_yymc + '临时查房单';
      QRLabel46.Caption := '姓名:' + sp_jbxx.fieldbyname( 'brxm' ).asstring;
      QRLabel50.Caption := '病床号:' + Trim( DM_data.qry_pub.FieldByName( 'yybch' ).asstring );
      QRLabel51.Caption := '性别:' + sp_jbxx.fieldbyname( 'brxb' ).asstring;
      QRLabel52.Caption := '年龄:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
      QRLabel53.Caption := FormatDateTime( 'yyyy', frm_func.curr_date ) + '年';
      QRLabel67.Caption := '姓名:' + sp_jbxx.fieldbyname( 'brxm' ).asstring + '      ' +
        '病床号:' + Trim( DM_data.qry_pub.FieldByName( 'yybch' ).asstring ) + '      ' +
        '性别:' + sp_jbxx.fieldbyname( 'brxb' ).asstring + '      ' +
        '年龄:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring )+'   '+'卡号:' + Trim( sp_jbxx.fieldbyname( 'tmh' ).asstring  );
      //QuickRep3.Prepare;
      QRLabel58.Caption := '审核医生：';
      QuickRep5.Preview;
    end;
  end;
end;

procedure Tfrm_yzinput_lishi.MenuItem13Click(Sender: TObject);

begin
  with sp_zxjl_cq_dy do
  begin
    Filtered := False;
    Close;
    Parameters.ParamByName( '@zyh' ).Value := Trim( sp_jbxx.fieldbyname( 'zyh' ).asstring );
    Parameters.ParamByName( '@fs' ).Value := 0;
    Open;
  end;
  //sp_zxjl_cq_dy.Filtered := False;
  sp_zxjl_cq_dy.Filter :=  'tzrq=null and kdks=' + '''' + pub_ksdm + '''';
  sp_zxjl_cq_dy.Filtered := True;
  application.CreateForm(Tfrm_zxdxd, frm_zxdxd);
  try
    frm_zxdxd.ShowModal;
  finally
    frm_zxdxd.free;
  end;
end;

procedure Tfrm_yzinput_lishi.MenuItem14Click(Sender: TObject);
begin
  with sp_zxjl_cq_dy do
  begin
    Filtered := False;
    Close;
    Parameters.ParamByName( '@zyh' ).Value := Trim( sp_jbxx.fieldbyname( 'zyh' ).asstring );
    Parameters.ParamByName( '@fs' ).Value := 1;
    Open;
  end;
  //sp_zxjl_cq_dy.Filtered := False;
  sp_zxjl_cq_dy.Filter :=  'tzrq=null and kdks=' + '''' + pub_ksdm + '''';
  sp_zxjl_cq_dy.Filtered := True;
  application.CreateForm(Tfrm_zxdxd, frm_zxdxd);
  try
    frm_zxdxd.ShowModal;
  finally
    frm_zxdxd.free;
  end;
end;

procedure Tfrm_yzinput_lishi.MenuItem2Click( Sender: TObject );
var v_yytj,v_lb,filter:string;
begin
  with sp_zxjl_cq_dy do
  begin
    Filtered := False;
    Close;
    Parameters.ParamByName( '@zyh' ).Value := Trim( sp_jbxx.fieldbyname( 'zyh' ).asstring );
    Parameters.ParamByName( '@fs' ).Value := 0;
    Open;
  end;
  DM_data.qry_pub.close;
  DM_data.qry_pub.sql.text:='select yytj from zybl_zyyz_dytjsz where dyxm=''输液计划单''';
  DM_data.qry_pub.Open;
  if DM_data.qry_pub.IsEmpty then
  begin
  v_yytj:='';
  end
  else
  begin
  DM_data.qry_pub.First;
  while not DM_data.qry_pub.eof do
  begin
  v_yytj:=v_yytj+ '(yytj='+''''+DM_data.qry_pub.FieldByName('yytj').asstring+''''+' and  tzrq=null and kdks=' + '''' + pub_ksdm + ''')' +' or ';
  DM_data.qry_pub.Next;
  end;

  end;


  DM_data.qry_pub.close;
  DM_data.qry_pub.sql.text:='select lbmc from zybl_zyyz_dylbsz where dyxm=''输液计划单''';
  DM_data.qry_pub.Open;
  if DM_data.qry_pub.IsEmpty then
  begin
  v_lb:='';
  end
  else
  begin
  DM_data.qry_pub.First;
  while not DM_data.qry_pub.eof do
  begin
  v_lb:=v_lb+ '(lb='+''''+DM_data.qry_pub.FieldByName('lbmc').asstring+''''+' and  tzrq=null and kdks=' + '''' + pub_ksdm + ''')' +' or ';
  DM_data.qry_pub.Next;
  end;

  end;

  if v_yytj+ v_lb='' then
  begin
  filter:=' 1<>1 ';
  end
  else
  begin
  filter:= v_yytj+ v_lb+' ( yytj=''特殊情况'' )';
  end;
  sp_zxjl_cq_dy.Filtered := False;
  sp_zxjl_cq_dy.Filter := filter;
  sp_zxjl_cq_dy.Filtered := True;

  application.CreateForm( Tfrm_zxdxd, frm_zxdxd );
  try
    frm_zxdxd.ShowModal;
  finally
    frm_zxdxd.free;
  end;
end;

procedure Tfrm_yzinput_lishi.MenuItem3Click(Sender: TObject);
var
  i, y, j, count, x: Integer;
  aControl: TControl;
  v_yytj,v_lb,filter:string;
begin
  with sp_zxjl_cq_dy do
  begin
    Filtered := False;
    Close;
    Parameters.ParamByName( '@zyh' ).Value := Trim( sp_jbxx.fieldbyname( 'zyh' ).asstring );
    Parameters.ParamByName( '@fs' ).Value := 1;
    Open;
  end;
  DM_data.qry_pub.close;
  DM_data.qry_pub.sql.text:='select yytj from zybl_zyyz_dytjsz where dyxm=''输液计划单''';
  DM_data.qry_pub.Open;
  if DM_data.qry_pub.IsEmpty then
  begin
  v_yytj:='';
  end
  else
  begin
  DM_data.qry_pub.First;
  while not DM_data.qry_pub.eof do
  begin
  v_yytj:=v_yytj+ '(yytj='+''''+DM_data.qry_pub.FieldByName('yytj').asstring+''''+' and  tzrq=null and kdks=' + '''' + pub_ksdm +
                  ''''+' and kdrq>=' + '''' + formatdatetime( 'yy-MM-dd', frm_func.curr_date ) + ' 00:00' +  ''')' +' or ';
  DM_data.qry_pub.Next;
  end;

  end;


  DM_data.qry_pub.close;
  DM_data.qry_pub.sql.text:='select lbmc from zybl_zyyz_dylbsz where dyxm=''输液计划单''';
  DM_data.qry_pub.Open;
  if DM_data.qry_pub.IsEmpty then
  begin
  v_lb:='';
  end
  else
  begin
  DM_data.qry_pub.First;
  while not DM_data.qry_pub.eof do
  begin
  v_lb:=v_lb+ '(lb='+''''+DM_data.qry_pub.FieldByName('lbmc').asstring+''''+' and  tzrq=null and kdks=' + '''' + pub_ksdm +
                  ''''+' and kdrq>=' + '''' + formatdatetime( 'yy-MM-dd', frm_func.curr_date ) + ' 00:00' +  ''')' +' or ';
  DM_data.qry_pub.Next;
  end;

  end;

  if v_yytj+ v_lb='' then
  begin
  filter:=' 1<>1 ';
  end
  else
  begin
  filter:= v_yytj+ v_lb+' ( xmmc like ''%皮试%'' )';
  end;

  sp_zxjl_cq_dy.Filter := filter;

  sp_zxjl_cq_dy.Filtered := True;

  if not sp_zxjl_cq_dy.IsEmpty then
  begin
    sp_zxjl_cq_dy.First;
    if sp_zxjl_cq_dy.RecordCount mod 9 <> 0 then
      y := trunc( sp_zxjl_cq_dy.RecordCount / 9 ) + 1
    else
      y := trunc( sp_zxjl_cq_dy.RecordCount / 9 );
    count := sp_zxjl_cq_dy.RecordCount;
    for I := 1 to y do
    begin
      for j := 1 to 9 do
      begin
        if count < i * 9 then
        begin
          if j > ( 9 - ( y * 9 - count ) ) then
          begin
            aControl := QRBand10.FindChildControl( 'ksrqls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            aControl := QRBand10.FindChildControl( 'kdysmcls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).enabled := false;
            //TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := '';
          end
          else
          begin
            aControl := QRBand10.FindChildControl( 'ksrqls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := sp_zxjl_cq_dy.FieldByName( 'ksrq' ).AsString;
            aControl := QRBand10.FindChildControl( 'kdysmcls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;
            if sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
            begin
              x := ( length( sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
              QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).enabled := true;
              QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).Top := TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).top;
              QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).left := QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ).left - 20;
              QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).height := 30;
              TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := trim( sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
              TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
            end
            else
            begin
              QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).enabled := false;
              QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ).Width := 235;
              TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
              TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + ' ' + trim( sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + ' ' + trim( sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
            end;
            sp_zxjl_cq_dy.Next;
          end;
        end
        else
        begin
          aControl := QRBand10.FindChildControl( 'ksrqls' + IntToStr( j - 1 ) );
          if aControl is TQRLabel then
            TQRLabel( aControl ).Caption := sp_zxjl_cq_dy.FieldByName( 'ksrq' ).asstring;
          aControl := QRBand10.FindChildControl( 'kdysmcls' + IntToStr( j - 1 ) );
          if aControl is TQRLabel then
            TQRLabel( aControl ).Caption := sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;
          if sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
          begin
            x := ( length( sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
            QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).enabled := true;
            QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).Top := TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).top;
            QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).left := QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ).left - 20;
            QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).height := 30;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := trim( sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
          end
          else
          begin
            QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).enabled := false;
            QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ).Width := 235;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + ' ' + trim( sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + ' ' + trim( sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
          end;
          sp_zxjl_cq_dy.Next;
        end;
      end;
      DM_data.qry_pub.Close;
      DM_data.qry_pub.SQL.text:='select * from sys_kscwsz where bqdm='+''''+pub_bqdm+''''+' and bcbh='+''''+trim(sp_jbxx.fieldbyname( 'bch' ).asstring)+'''';
      DM_data.qry_pub.Open;
      QRLabel45.Caption := pub_yymc + '临时输液计划执行单';
      QRLabel46.Caption := '姓名:' + sp_jbxx.fieldbyname( 'brxm' ).asstring;
      QRLabel50.Caption := '病床号:' + Trim(DM_data.qry_pub.FieldByName('yybch').asstring);
      QRLabel51.Caption := '性别:' + sp_jbxx.fieldbyname( 'brxb' ).asstring;
      QRLabel52.Caption := '年龄:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
      QRLabel53.Caption := FormatDateTime( 'yyyy', frm_func.curr_date ) + '年';

      QRLabel67.Caption:='姓名:' + sp_jbxx.fieldbyname( 'brxm' ).asstring+'      '+
                         '病床号:' + Trim(DM_data.qry_pub.FieldByName('yybch').asstring)+'      '+
                          '卡号:' + Trim( sp_jbxx.fieldbyname( 'tmh' ).asstring  );
                      //   '性别:' + sp_jbxx.fieldbyname( 'brxb' ).asstring+'      '+
                      //   '年龄:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
      //QuickRep3.Prepare;
      QRLabel58.Caption := '审核医生：';
      QuickRep5.Preview;
    end;
  end;
end;

procedure Tfrm_yzinput_lishi.MenuItem4Click(Sender: TObject);
var v_yytj,v_lb,filter:string;
begin
  with sp_zxjl_cq_dy do
  begin
    Filtered := False;
    Close;
    Parameters.ParamByName( '@zyh' ).Value := Trim( sp_jbxx.fieldbyname( 'zyh' ).asstring );
    Parameters.ParamByName( '@fs' ).Value := 1;
    Open;
  end;
  DM_data.qry_pub.close;
  DM_data.qry_pub.sql.text:='select yytj from zybl_zyyz_dytjsz where dyxm=''输液计划单''';
  DM_data.qry_pub.Open;
  if DM_data.qry_pub.IsEmpty then
  begin
  v_yytj:='';
  end
  else
  begin
  DM_data.qry_pub.First;
  while not DM_data.qry_pub.eof do
  begin
  v_yytj:=v_yytj+ '(yytj='+''''+DM_data.qry_pub.FieldByName('yytj').asstring+''''+' and  tzrq=null and kdks=' + '''' + pub_ksdm +
                  ''''+' and kdrq>=' + '''' + formatdatetime( 'yy-MM-dd', frm_func.curr_date ) + ' 00:00' +  ''')' +' or ';
  DM_data.qry_pub.Next;
  end;

  end;


  DM_data.qry_pub.close;
  DM_data.qry_pub.sql.text:='select lbmc from zybl_zyyz_dylbsz where dyxm=''输液计划单''';
  DM_data.qry_pub.Open;
  if DM_data.qry_pub.IsEmpty then
  begin
  v_lb:='';
  end
  else
  begin
  DM_data.qry_pub.First;
  while not DM_data.qry_pub.eof do
  begin
  v_lb:=v_lb+ '(lb='+''''+DM_data.qry_pub.FieldByName('lbmc').asstring+''''+' and  tzrq=null and kdks=' + '''' + pub_ksdm +
                  ''''+' and kdrq>=' + '''' + formatdatetime( 'yy-MM-dd', frm_func.curr_date ) + ' 00:00' +  ''')' +' or ';
  DM_data.qry_pub.Next;
  end;

  end;

  if v_yytj+ v_lb='' then
  begin
  filter:=' 1<>1 ';
  end
  else
  begin
  filter:= v_yytj+ v_lb+' ( xmmc like ''%皮试%'' )';
  end;

  sp_zxjl_cq_dy.Filter := filter;
  sp_zxjl_cq_dy.Filtered := True;
  application.CreateForm(Tfrm_zxdxd, frm_zxdxd);
  try
    frm_zxdxd.ShowModal;
  finally
    frm_zxdxd.free;
  end;
end;

procedure Tfrm_yzinput_lishi.MenuItem5Click(Sender: TObject);
var
  i, y, j, count, x: Integer;
  aControl: TControl;
  v_lb,v_yytj,filter:string;
begin
  with sp_zxjl_cq_dy do
  begin
    Filtered := False;
    Close;
    Parameters.ParamByName( '@zyh' ).Value := Trim( sp_jbxx.fieldbyname( 'zyh' ).asstring );
    Parameters.ParamByName( '@fs' ).Value := 0;
    Open;
  end;
  //sp_zxjl_cq_dy.Filtered := False;
  DM_data.qry_pub.close;
  DM_data.qry_pub.sql.text:='select yytj from zybl_zyyz_dytjsz where dyxm=''注射计划单''';
  DM_data.qry_pub.Open;
  if DM_data.qry_pub.IsEmpty then
  begin
  v_yytj:='';
  end
  else
  begin
  DM_data.qry_pub.First;
  while not DM_data.qry_pub.eof do
  begin
  v_yytj:=v_yytj+ '(yytj='+''''+DM_data.qry_pub.FieldByName('yytj').asstring+''''+' and  tzrq=null and kdks=' + '''' + pub_ksdm + ''')' +' or ';
  DM_data.qry_pub.Next;
  end;

  end;

  DM_data.qry_pub.close;
  DM_data.qry_pub.sql.text:='select lbmc from zybl_zyyz_dylbsz where dyxm=''注射计划单''';
  DM_data.qry_pub.Open;
  if DM_data.qry_pub.IsEmpty then
  begin
  v_lb:='';
  end
  else
  begin
  DM_data.qry_pub.First;
  while not DM_data.qry_pub.eof do
  begin
  v_lb:=v_lb+ '(lb='+''''+DM_data.qry_pub.FieldByName('lbmc').asstring+''''+' and  tzrq=null and kdks=' + '''' + pub_ksdm + ''')' +' or ';
  DM_data.qry_pub.Next;
  end;

  end;

  if v_yytj+ v_lb='' then
  begin
  filter:=' 1<>1 ';
  end
  else
  begin
  filter:= v_yytj+ v_lb+' ( yytj=''特殊情况'' )';
  end;
  sp_zxjl_cq_dy.Filter:= filter ;
  sp_zxjl_cq_dy.Filtered:=True;

  if not sp_zxjl_cq_dy.IsEmpty then
  begin
    if zzdx='A4' then
    begin
      sp_zxjl_cq_dy.First;
      if sp_zxjl_cq_dy.RecordCount mod 5 <> 0 then
        y := trunc( sp_zxjl_cq_dy.RecordCount / 5 ) + 1
      else
        y := trunc( sp_zxjl_cq_dy.RecordCount / 5 );
      count := sp_zxjl_cq_dy.RecordCount;
      for I := 1 to y do
      begin
        for j := 1 to 5 do
        begin
          if count < i * 5 then
          begin
            if j > ( 5 - ( y * 5 - count ) ) then
            begin
              aControl := DetailBand1.FindChildControl( 'ksrq' + IntToStr( j - 1 ) );
              if aControl is TQRLabel then
                TQRLabel( aControl ).Caption := '';
              aControl := DetailBand1.FindChildControl( 'kdysmc' + IntToStr( j - 1 ) );
              if aControl is TQRLabel then
                TQRLabel( aControl ).Caption := '';
              DetailBand1.FindChildControl( 'qrgrimage' + IntToStr( j ) ).enabled := false;
              //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
              TQRLabel( DetailBand1.FindChildControl( 'ypyf' + IntToStr( j - 1 ) ) ).Caption := '';
              //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
              TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).caption := '';
            end
            else
            begin
              aControl := DetailBand1.FindChildControl( 'ksrq' + IntToStr( j - 1 ) );
              if aControl is TQRLabel then
                TQRLabel( aControl ).Caption := sp_zxjl_cq_dy.FieldByName( 'ksrq' ).AsString;
              aControl := DetailBand1.FindChildControl( 'kdysmc' + IntToStr( j - 1 ) );
              if aControl is TQRLabel then
                TQRLabel( aControl ).Caption := sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;
              if sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
              begin
                x := ( length( sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
                DetailBand1.FindChildControl( 'QRgrImage' + IntToStr( j ) ).enabled := true;
                DetailBand1.FindChildControl( 'QRgrImage' + IntToStr( j ) ).Top := TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).top;
                DetailBand1.FindChildControl( 'QRgrImage' + IntToStr( j ) ).left := DetailBand1.FindChildControl( 'ypyf' + IntToStr( j - 1 ) ).left - 20;
                DetailBand1.FindChildControl( 'qrgrimage' + IntToStr( j ) ).height := 30;
                TQRLabel( DetailBand1.FindChildControl( 'ypyf' + IntToStr( j - 1 ) ) ).Caption := trim( sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
                TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
                //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
              end
              else
              begin
                DetailBand1.FindChildControl( 'qrgrimage' + IntToStr( j ) ).enabled := false;
                DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ).Width := 235;
                TQRLabel( DetailBand1.FindChildControl( 'ypyf' + IntToStr( j - 1 ) ) ).Caption := '';
                TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + ' ' + trim( sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + ' ' + trim( sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
                // TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
              end;
              sp_zxjl_cq_dy.Next;
            end;
          end
          else
          begin
            aControl := DetailBand1.FindChildControl( 'ksrq' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := sp_zxjl_cq_dy.FieldByName( 'ksrq' ).asstring;
            aControl := DetailBand1.FindChildControl( 'kdysmc' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;
            if sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
            begin
              x := ( length( sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
              DetailBand1.FindChildControl( 'QRgrImage' + IntToStr( j ) ).enabled := true;
              DetailBand1.FindChildControl( 'QRgrImage' + IntToStr( j ) ).Top := TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).top;
              DetailBand1.FindChildControl( 'qrgrimage' + IntToStr( j ) ).left := DetailBand1.FindChildControl( 'ypyf' + IntToStr( j - 1 ) ).left - 20;
              DetailBand1.FindChildControl( 'qrgrimage' + IntToStr( j ) ).height := 30;
              TQRLabel( DetailBand1.FindChildControl( 'ypyf' + IntToStr( j - 1 ) ) ).Caption := trim( sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
              TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
              //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end
            else
            begin
              DetailBand1.FindChildControl( 'qrgrimage' + IntToStr( j ) ).enabled := false;
              DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ).Width := 235;
              TQRLabel( DetailBand1.FindChildControl( 'ypyf' + IntToStr( j - 1 ) ) ).Caption := '';
              TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + ' ' + trim( sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + ' ' + trim( sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
              //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end;
            sp_zxjl_cq_dy.Next;
          end;
        end;
        QRLabel2.Caption := pub_yymc + '长期注射计划执行单';
        DM_data.qry_pub.Close;
        DM_data.qry_pub.SQL.text := 'select * from sys_kscwsz where bqdm=' + '''' + pub_bqdm + '''' + ' and bcbh=' + '''' + trim( sp_jbxx.fieldbyname( 'bch' ).asstring ) + '''';
        DM_data.qry_pub.Open;

        QRLabel3.Caption := '姓名:' + sp_jbxx.fieldbyname( 'brxm' ).asstring;
        QRLabel20.Caption := '病床号:' + Trim( DM_data.qry_pub.FieldByName( 'yybch' ).asstring );
        QRLabel21.Caption := '性别:' + sp_jbxx.fieldbyname( 'brxb' ).asstring;
        QRLabel26.Caption := '年龄:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
        ny.Caption := FormatDateTime( 'yyyy', frm_func.curr_date ) + '年';

        QRLabel61.Caption := '姓名:' + sp_jbxx.fieldbyname( 'brxm' ).asstring + '      ' +
          '病床号:' + Trim( DM_data.qry_pub.FieldByName( 'yybch' ).asstring ) + '      '+
          '卡号:' + Trim( sp_jbxx.fieldbyname( 'tmh' ).asstring  );
        //'性别:' + sp_jbxx.fieldbyname( 'brxb' ).asstring +'      '+
        //'年龄:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
//QuickRep3.Prepare;
        QRLabel57.Caption := '审核医生:';
        QuickRep3.Preview;
      end;
    end
    else
    begin
      sp_zxjl_cq_dy.First;
      if sp_zxjl_cq_dy.RecordCount mod 9 <> 0 then
        y := trunc( sp_zxjl_cq_dy.RecordCount / 9 ) + 1
      else
        y := trunc( sp_zxjl_cq_dy.RecordCount / 9 );
      count := sp_zxjl_cq_dy.RecordCount;
      for I := 1 to y do
      begin
        for j := 1 to 9 do
        begin
          if count < i * 9 then
          begin
            if j > ( 9 - ( y * 9 - count ) ) then
            begin
              aControl := DetailBand2.FindChildControl( 'ksrqjy' + IntToStr( j - 1 ) );
              if aControl is TQRLabel then
                TQRLabel( aControl ).Caption := '';
              aControl := DetailBand2.FindChildControl( 'kdysmcjy' + IntToStr( j - 1 ) );
              if aControl is TQRLabel then
                TQRLabel( aControl ).Caption := '';
              DetailBand2.FindChildControl( 'qrgrimagejy' + IntToStr( j ) ).enabled := false;
              //  TQRLabel( DetailBand2.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
              TQRLabel( DetailBand2.FindChildControl( 'ypyfjy' + IntToStr( j - 1 ) ) ).Caption := '';
              //TQRLabel( DetailBand2.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
              TQRLabel( DetailBand2.FindChildControl( 'xmmcjy' + IntToStr( j - 1 ) ) ).caption := '';
            end
            else
            begin
              aControl := DetailBand2.FindChildControl( 'ksrqjy' + IntToStr( j - 1 ) );
              if aControl is TQRLabel then
                TQRLabel( aControl ).Caption := sp_zxjl_cq_dy.FieldByName( 'ksrq' ).AsString;
              aControl := DetailBand2.FindChildControl( 'kdysmcjy' + IntToStr( j - 1 ) );
              if aControl is TQRLabel then
                TQRLabel( aControl ).Caption := sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;
              if sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
              begin
                x := ( length( sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
                DetailBand2.FindChildControl( 'QRgrImagejy' + IntToStr( j ) ).enabled := true;
                DetailBand2.FindChildControl( 'QRgrImagejy' + IntToStr( j ) ).Top := TQRLabel( DetailBand2.FindChildControl( 'xmmcjy' + IntToStr( j - 1 ) ) ).top;
                DetailBand2.FindChildControl( 'QRgrImagejy' + IntToStr( j ) ).left := DetailBand2.FindChildControl( 'ypyfjy' + IntToStr( j - 1 ) ).left - 20;
                DetailBand2.FindChildControl( 'qrgrimagejy' + IntToStr( j ) ).height := 30;
                TQRLabel( DetailBand2.FindChildControl( 'ypyfjy' + IntToStr( j - 1 ) ) ).Caption := trim( sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
                TQRLabel( DetailBand2.FindChildControl( 'xmmcjy' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
                //TQRLabel( DetailBand2.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
              end
              else
              begin
                DetailBand2.FindChildControl( 'qrgrimagejy' + IntToStr( j ) ).enabled := false;
                DetailBand2.FindChildControl( 'xmmcjy' + IntToStr( j - 1 ) ).Width := 235;
                TQRLabel( DetailBand2.FindChildControl( 'ypyfjy' + IntToStr( j - 1 ) ) ).Caption := '';
                TQRLabel( DetailBand2.FindChildControl( 'xmmcjy' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + ' ' + trim( sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + ' ' + trim( sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
                // TQRLabel( DetailBand2.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
              end;
              sp_zxjl_cq_dy.Next;
            end;
          end
          else
          begin
            aControl := DetailBand2.FindChildControl( 'ksrqjy' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := sp_zxjl_cq_dy.FieldByName( 'ksrq' ).asstring;
            aControl := DetailBand2.FindChildControl( 'kdysmcjy' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;
            if sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
            begin
              x := ( length( sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
              DetailBand2.FindChildControl( 'QRgrImagejy' + IntToStr( j ) ).enabled := true;
              DetailBand2.FindChildControl( 'QRgrImagejy' + IntToStr( j ) ).Top := TQRLabel( DetailBand2.FindChildControl( 'xmmcjy' + IntToStr( j - 1 ) ) ).top;
              DetailBand2.FindChildControl( 'qrgrimagejy' + IntToStr( j ) ).left := DetailBand2.FindChildControl( 'ypyfjy' + IntToStr( j - 1 ) ).left - 20;
              DetailBand2.FindChildControl( 'qrgrimagejy' + IntToStr( j ) ).height := 30;
              TQRLabel( DetailBand2.FindChildControl( 'ypyfjy' + IntToStr( j - 1 ) ) ).Caption := trim( sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
              TQRLabel( DetailBand2.FindChildControl( 'xmmcjy' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
              //  TQRLabel( DetailBand2.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end
            else
            begin
              DetailBand2.FindChildControl( 'qrgrimagejy' + IntToStr( j ) ).enabled := false;
              DetailBand2.FindChildControl( 'xmmcjy' + IntToStr( j - 1 ) ).Width := 235;
              TQRLabel( DetailBand2.FindChildControl( 'ypyfjy' + IntToStr( j - 1 ) ) ).Caption := '';
              TQRLabel( DetailBand2.FindChildControl( 'xmmcjy' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + ' ' + trim( sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + ' ' + trim( sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
              //  TQRLabel( DetailBand2.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end;
            sp_zxjl_cq_dy.Next;
          end;
        end;
        QRLabel2jy.Caption := pub_yymc + '长期注射计划执行单';
        DM_data.qry_pub.Close;
        DM_data.qry_pub.SQL.text := 'select * from sys_kscwsz where bqdm=' + '''' + pub_bqdm + '''' + ' and bcbh=' + '''' + trim( sp_jbxx.fieldbyname( 'bch' ).asstring ) + '''';
        DM_data.qry_pub.Open;

        QRLabel3jy.Caption := '姓名:' + sp_jbxx.fieldbyname( 'brxm' ).asstring;
        QRLabel20jy.Caption := '病床号:' + Trim( DM_data.qry_pub.FieldByName( 'yybch' ).asstring );
        QRLabel21jy.Caption := '性别:' + sp_jbxx.fieldbyname( 'brxb' ).asstring;
        QRLabel26jy.Caption := '年龄:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
        nyjy.Caption := FormatDateTime( 'yyyy', frm_func.curr_date ) + '年';

        QRLabel61jy.Caption := '姓名:' + sp_jbxx.fieldbyname( 'brxm' ).asstring + '      ' +
          '病床号:' + Trim( DM_data.qry_pub.FieldByName( 'yybch' ).asstring ) + '      '+
          '卡号:' + Trim( sp_jbxx.fieldbyname( 'tmh' ).asstring  );

        QuickRep6.Preview;
      end;
    end;
  end;
end;

procedure Tfrm_yzinput_lishi.MenuItem6Click(Sender: TObject);
var v_yytj,v_lb,filter:string;
begin
  with sp_zxjl_cq_dy do
  begin
    Filtered := False;
    Close;
    Parameters.ParamByName( '@zyh' ).Value := Trim( sp_jbxx.fieldbyname( 'zyh' ).asstring );
    Parameters.ParamByName( '@fs' ).Value := 0;
    Open;
  end;
  //sp_zxjl_cq_dy.Filtered := False;
  DM_data.qry_pub.close;
  DM_data.qry_pub.sql.text:='select yytj from zybl_zyyz_dytjsz where dyxm=''注射计划单''';
  DM_data.qry_pub.Open;
  if DM_data.qry_pub.IsEmpty then
  begin
  v_yytj:='';
  end
  else
  begin
  DM_data.qry_pub.First;
  while not DM_data.qry_pub.eof do
  begin
  v_yytj:=v_yytj+ '(yytj='+''''+DM_data.qry_pub.FieldByName('yytj').asstring+''''+' and  tzrq=null and kdks=' + '''' + pub_ksdm + ''')' +' or ';
  DM_data.qry_pub.Next;
  end;

  end;

  DM_data.qry_pub.close;
  DM_data.qry_pub.sql.text:='select lbmc from zybl_zyyz_dylbsz where dyxm=''注射计划单''';
  DM_data.qry_pub.Open;
  if DM_data.qry_pub.IsEmpty then
  begin
  v_lb:='';
  end
  else
  begin
  DM_data.qry_pub.First;
  while not DM_data.qry_pub.eof do
  begin
  v_lb:=v_lb+ '(lb='+''''+DM_data.qry_pub.FieldByName('lbmc').asstring+''''+' and  tzrq=null and kdks=' + '''' + pub_ksdm + ''')' +' or ';
  DM_data.qry_pub.Next;
  end;

  end;

  if v_yytj+ v_lb='' then
  begin
  filter:=' 1<>1 ';
  end
  else
  begin
  filter:= v_yytj+ v_lb+' ( yytj=''特殊情况'' )';
  end;
  sp_zxjl_cq_dy.Filter:= filter ;
  sp_zxjl_cq_dy.Filtered:=True;
  application.CreateForm(Tfrm_zxdxd, frm_zxdxd);
  try
    frm_zxdxd.ShowModal;
  finally
    frm_zxdxd.free;
  end;
end;

procedure Tfrm_yzinput_lishi.MenuItem7Click(Sender: TObject);
var
  i, y, j, count, x: Integer;
  aControl: TControl;
  v_yytj,v_lb,filter:string;
begin
  with sp_zxjl_cq_dy do
  begin
    Filtered := False;
    Close;
    Parameters.ParamByName( '@zyh' ).Value := Trim( sp_jbxx.fieldbyname( 'zyh' ).asstring );
    Parameters.ParamByName( '@fs' ).Value := 1;
    Open;
  end;
  //sp_zxjl_cq_dy.Filtered := False;
  DM_data.qry_pub.close;
  DM_data.qry_pub.sql.text:='select yytj from zybl_zyyz_dytjsz where dyxm=''注射计划单''';
  DM_data.qry_pub.Open;
  if DM_data.qry_pub.IsEmpty then
  begin
  v_yytj:='';
  end
  else
  begin
  DM_data.qry_pub.First;
  while not DM_data.qry_pub.eof do
  begin
  v_yytj:=v_yytj+ '(yytj='+''''+DM_data.qry_pub.FieldByName('yytj').asstring+''''+' and  tzrq=null and kdks=' + '''' + pub_ksdm +
                  ''''+' and kdrq>=' + '''' + formatdatetime( 'yy-MM-dd', frm_func.curr_date ) + ' 00:00' +  ''')' +' or ';
  DM_data.qry_pub.Next;
  end;

  end;


  DM_data.qry_pub.close;
  DM_data.qry_pub.sql.text:='select lbmc from zybl_zyyz_dylbsz where dyxm=''注射计划单''';
  DM_data.qry_pub.Open;
  if DM_data.qry_pub.IsEmpty then
  begin
  v_lb:='';
  end
  else
  begin
  DM_data.qry_pub.First;
  while not DM_data.qry_pub.eof do
  begin
  v_lb:=v_lb+ '(lb='+''''+DM_data.qry_pub.FieldByName('lbmc').asstring+''''+' and  tzrq=null and kdks=' + '''' + pub_ksdm +
                  ''''+' and kdrq>=' + '''' + formatdatetime( 'yy-MM-dd', frm_func.curr_date ) + ' 00:00' +  ''')' +' or ';
  DM_data.qry_pub.Next;
  end;

  end;

  if v_yytj+ v_lb='' then
  begin
  filter:=' 1<>1 ';
  end
  else
  begin
  filter:= v_yytj+ v_lb+' ( yytj = ''特殊情况'' )';
  end;

  sp_zxjl_cq_dy.Filter := filter;

  sp_zxjl_cq_dy.Filtered := True;

  if not sp_zxjl_cq_dy.IsEmpty then
  begin
    sp_zxjl_cq_dy.First;
    if sp_zxjl_cq_dy.RecordCount mod 9 <> 0 then
      y := trunc( sp_zxjl_cq_dy.RecordCount / 9 ) + 1
    else
      y := trunc( sp_zxjl_cq_dy.RecordCount / 9 );
    count := sp_zxjl_cq_dy.RecordCount;
    for I := 1 to y do
    begin
      for j := 1 to 9 do
      begin
        if count < i * 9 then
        begin
          if j > ( 9 - ( y * 9 - count ) ) then
          begin
            aControl := QRBand10.FindChildControl( 'ksrqls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            aControl := QRBand10.FindChildControl( 'kdysmcls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).enabled := false;
            //TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := '';
          end
          else
          begin
            aControl := QRBand10.FindChildControl( 'ksrqls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := sp_zxjl_cq_dy.FieldByName( 'ksrq' ).AsString;
            aControl := QRBand10.FindChildControl( 'kdysmcls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;
            if sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
            begin
              x := ( length( sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
              QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).enabled := true;
              QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).Top := TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).top;
              QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).left := QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ).left - 20;
              QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).height := 30;
              TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := trim( sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
              TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
            end
            else
            begin
              QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).enabled := false;
              QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ).Width := 235;
              TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
              TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + ' ' + trim( sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + ' ' + trim( sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
            end;
            sp_zxjl_cq_dy.Next;
          end;
        end
        else
        begin
          aControl := QRBand10.FindChildControl( 'ksrqls' + IntToStr( j - 1 ) );
          if aControl is TQRLabel then
            TQRLabel( aControl ).Caption := sp_zxjl_cq_dy.FieldByName( 'ksrq' ).asstring;
          aControl := QRBand10.FindChildControl( 'kdysmcls' + IntToStr( j - 1 ) );
          if aControl is TQRLabel then
            TQRLabel( aControl ).Caption := sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;
          if sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
          begin
            x := ( length( sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
            QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).enabled := true;
            QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).Top := TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).top;
            QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).left := QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ).left - 20;
            QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).height := 30;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := trim( sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
          end
          else
          begin
            QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).enabled := false;
            QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ).Width := 235;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + ' ' + trim( sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + ' ' + trim( sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
          end;
          sp_zxjl_cq_dy.Next;
        end;
      end;
      DM_data.qry_pub.Close;
      DM_data.qry_pub.SQL.text := 'select * from sys_kscwsz where bqdm=' + '''' + pub_bqdm + '''' + ' and bcbh=' + '''' + trim( sp_jbxx.fieldbyname( 'bch' ).asstring ) + '''';
      DM_data.qry_pub.Open;
      QRLabel45.Caption := pub_yymc + '临时注射计划执行单';
      QRLabel46.Caption := '姓名:' + sp_jbxx.fieldbyname( 'brxm' ).asstring;
      QRLabel50.Caption := '病床号:' + Trim( DM_data.qry_pub.FieldByName( 'yybch' ).asstring );
      QRLabel51.Caption := '性别:' + sp_jbxx.fieldbyname( 'brxb' ).asstring;
      QRLabel52.Caption := '年龄:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
      QRLabel53.Caption := FormatDateTime( 'yyyy', frm_func.curr_date ) + '年';
      QRLabel67.Caption := '姓名:' + sp_jbxx.fieldbyname( 'brxm' ).asstring + '      ' +
        '病床号:' + Trim( DM_data.qry_pub.FieldByName( 'yybch' ).asstring ) + '      ' +
        '性别:' + sp_jbxx.fieldbyname( 'brxb' ).asstring + '      ' +
        '年龄:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring )+'   '+         '卡号:' + Trim( sp_jbxx.fieldbyname( 'tmh' ).asstring  );
      //QuickRep3.Prepare;
      QRLabel58.Caption := '审核医生：';
      QuickRep5.Preview;
    end;
  end;
end;

procedure Tfrm_yzinput_lishi.MenuItem8Click(Sender: TObject);
var v_yytj,v_lb,filter:string;
begin
  with sp_zxjl_cq_dy do
  begin
    Filtered := False;
    Close;
    Parameters.ParamByName( '@zyh' ).Value := Trim( sp_jbxx.fieldbyname( 'zyh' ).asstring );
    Parameters.ParamByName( '@fs' ).Value := 1;
    Open;
  end;
  //sp_zxjl_cq_dy.Filtered := False;
  DM_data.qry_pub.close;
  DM_data.qry_pub.sql.text:='select yytj from zybl_zyyz_dytjsz where dyxm=''注射计划单''';
  DM_data.qry_pub.Open;
  if DM_data.qry_pub.IsEmpty then
  begin
  v_yytj:='';
  end
  else
  begin
  DM_data.qry_pub.First;
  while not DM_data.qry_pub.eof do
  begin
  v_yytj:=v_yytj+ '(yytj='+''''+DM_data.qry_pub.FieldByName('yytj').asstring+''''+' and  tzrq=null and kdks=' + '''' + pub_ksdm +
                  ''''+' and kdrq>=' + '''' + formatdatetime( 'yy-MM-dd', frm_func.curr_date ) + ' 00:00' +  ''')' +' or ';
  DM_data.qry_pub.Next;
  end;

  end;


  DM_data.qry_pub.close;
  DM_data.qry_pub.sql.text:='select lbmc from zybl_zyyz_dylbsz where dyxm=''注射计划单''';
  DM_data.qry_pub.Open;
  if DM_data.qry_pub.IsEmpty then
  begin
  v_lb:='';
  end
  else
  begin
  DM_data.qry_pub.First;
  while not DM_data.qry_pub.eof do
  begin
  v_lb:=v_lb+ '(lb='+''''+DM_data.qry_pub.FieldByName('lbmc').asstring+''''+' and  tzrq=null and kdks=' + '''' + pub_ksdm +
                  ''''+' and kdrq>=' + '''' + formatdatetime( 'yy-MM-dd', frm_func.curr_date ) + ' 00:00' +  ''')' +' or ';
  DM_data.qry_pub.Next;
  end;

  end;

  if v_yytj+ v_lb='' then
  begin
  filter:=' 1<>1 ';
  end
  else
  begin
  filter:= v_yytj+ v_lb+' ( yytj = ''特殊情况'' )';
  end;

  sp_zxjl_cq_dy.Filter := filter;

  sp_zxjl_cq_dy.Filtered := True;
  application.CreateForm(Tfrm_zxdxd, frm_zxdxd);
  try
    frm_zxdxd.ShowModal;
  finally
    frm_zxdxd.free;
  end;
end;

procedure Tfrm_yzinput_lishi.MenuItem9Click(Sender: TObject);
var
  i, y, j, count, x: Integer;
  aControl: TControl;
  v_lb,v_yytj,filter:string;
begin
  with sp_zxjl_cq_dy do
  begin
    Filtered := False;
    Close;
    Parameters.ParamByName( '@zyh' ).Value := Trim( sp_jbxx.fieldbyname( 'zyh' ).asstring );
    Parameters.ParamByName( '@fs' ).Value := 0;
    Open;
  end;
  //sp_zxjl_cq_dy.Filtered := False;
  DM_data.qry_pub.close;
  DM_data.qry_pub.sql.text:='select yytj from zybl_zyyz_dytjsz where dyxm=''治疗计划单''';
  DM_data.qry_pub.Open;
  if DM_data.qry_pub.IsEmpty then
  begin
  v_yytj:='';
  end
  else
  begin
  DM_data.qry_pub.First;
  while not DM_data.qry_pub.eof do
  begin
  v_yytj:=v_yytj+ '(yytj='+''''+DM_data.qry_pub.FieldByName('yytj').asstring+''''+' and  tzrq=null and kdks=' + '''' + pub_ksdm + ''')' +' or ';
  DM_data.qry_pub.Next;
  end;

  end;
  DM_data.qry_pub.close;
  DM_data.qry_pub.sql.text:='select lbmc from zybl_zyyz_dylbsz where dyxm=''治疗计划单''';
  DM_data.qry_pub.Open;
  if DM_data.qry_pub.IsEmpty then
  begin
  v_lb:='';
  end
  else
  begin
  DM_data.qry_pub.First;
  while not DM_data.qry_pub.eof do
  begin
  v_lb:=v_lb+ '(lb='+''''+DM_data.qry_pub.FieldByName('lbmc').asstring+''''+' and  tzrq=null and kdks=' + '''' + pub_ksdm + ''')' +' or ';
  DM_data.qry_pub.Next;
  end;

  end;

  if v_yytj+ v_lb='' then
  begin
  filter:=' 1<>1 ';
  end
  else
  begin
  filter:= v_yytj+ v_lb+' ( yytj=''特殊情况'' )';
  end;

  sp_zxjl_cq_dy.Filter := filter;
  sp_zxjl_cq_dy.Filtered := True;

  if not sp_zxjl_cq_dy.IsEmpty then
  begin
    sp_zxjl_cq_dy.First;
    if sp_zxjl_cq_dy.RecordCount mod 9 <> 0 then
      y := trunc( sp_zxjl_cq_dy.RecordCount / 9 ) + 1
    else
      y := trunc( sp_zxjl_cq_dy.RecordCount / 9 );
    count := sp_zxjl_cq_dy.RecordCount;
    for I := 1 to y do
    begin
      for j := 1 to 9 do
      begin
        if count < i * 9 then
        begin
          if j > ( 9 - ( y * 9 - count ) ) then
          begin
            aControl := QRBand10.FindChildControl( 'ksrqls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            aControl := QRBand10.FindChildControl( 'kdysmcls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).enabled := false;
            //TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := '';
          end
          else
          begin
            aControl := QRBand10.FindChildControl( 'ksrqls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := sp_zxjl_cq_dy.FieldByName( 'ksrq' ).AsString;
            aControl := QRBand10.FindChildControl( 'kdysmcls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;
            if sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
            begin
              x := ( length( sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
              QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).enabled := true;
              QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).Top := TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).top;
              QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).left := QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ).left - 20;
              QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).height := 30;
              TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := trim( sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
              TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
            end
            else
            begin
              QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).enabled := false;
              QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ).Width := 235;
              TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
              TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + ' ' + trim( sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + ' ' + trim( sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
            end;
            sp_zxjl_cq_dy.Next;
          end;
        end
        else
        begin
          aControl := QRBand10.FindChildControl( 'ksrqls' + IntToStr( j - 1 ) );
          if aControl is TQRLabel then
            TQRLabel( aControl ).Caption := sp_zxjl_cq_dy.FieldByName( 'ksrq' ).asstring;
          aControl := QRBand10.FindChildControl( 'kdysmcls' + IntToStr( j - 1 ) );
          if aControl is TQRLabel then
            TQRLabel( aControl ).Caption := sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;
          if sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
          begin
            x := ( length( sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
            QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).enabled := true;
            QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).Top := TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).top;
            QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).left := QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ).left - 20;
            QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).height := 30;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := trim( sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
          end
          else
          begin
            QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).enabled := false;
            QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ).Width := 235;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + ' ' + trim( sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + ' ' + trim( sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
          end;
          sp_zxjl_cq_dy.Next;
        end;
      end;
      DM_data.qry_pub.Close;
      DM_data.qry_pub.SQL.text := 'select * from sys_kscwsz where bqdm=' + '''' + pub_bqdm + '''' + ' and bcbh=' + '''' + trim( sp_jbxx.fieldbyname( 'bch' ).asstring ) + '''';
      DM_data.qry_pub.Open;
      QRLabel45.Caption := pub_yymc + '长期治疗执行单';
      QRLabel46.Caption := '姓名:' + sp_jbxx.fieldbyname( 'brxm' ).asstring;
      QRLabel50.Caption := '病床号:' + Trim( DM_data.qry_pub.FieldByName( 'yybch' ).asstring );
      QRLabel51.Caption := '性别:' + sp_jbxx.fieldbyname( 'brxb' ).asstring;
      QRLabel52.Caption := '年龄:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
      QRLabel53.Caption := FormatDateTime( 'yyyy', frm_func.curr_date ) + '年';
      QRLabel67.Caption := '姓名:' + sp_jbxx.fieldbyname( 'brxm' ).asstring + '      ' +
        '病床号:' + Trim( DM_data.qry_pub.FieldByName( 'yybch' ).asstring ) + '      ' +
        '性别:' + sp_jbxx.fieldbyname( 'brxb' ).asstring + '      ' +
        '年龄:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring )+'  '+         '卡号:' + Trim( sp_jbxx.fieldbyname( 'tmh' ).asstring  );
      //QuickRep3.Prepare;
      QRLabel58.Caption := '审核医生：';
      QuickRep5.Preview;
    end;
  end;
end;
procedure Tfrm_yzinput_lishi.yldwjc( fs: integer );
var
  i: integer;
  _temp: boolean;
begin
  if qry_yz.FieldByName( 'lb' ).AsString = '药品' then
  begin
    if trim( grid_yzlr.Columns[7].DisplayText ) = '' then
    begin
      if fs <> 0 then
        yzNew( fs );
    end
    else
    begin
      try
        i := strtoint( trim( grid_yzlr.Columns[7].DisplayText ) );
        if ( i > 0 ) and ( i < qry_yldw.RecordCount ) then
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
      if _temp then //输入数字检索
      begin
        qry_yldw.Filtered := false;
        qry_yldw.RecNo := i;
        qry_yz.FieldByName( 'yldw' ).Value := qry_yldw.FieldByName( 'yldw' ).AsString;
        if fs <> 0 then
          yzNew( fs );
      end
      else
      begin
        qry_yldw.Filtered := false;
        if trim( grid_yzlr.Columns[7].DisplayText ) <> '' then
        begin
          qry_yldw.Filter := 'pym like ' + #39 + '%' + grid_yzlr.Columns[7].DisplayText + '%' + #39;
          qry_yldw.Filter := qry_yldw.Filter + ' or yldw like ' + #39 + '%' + grid_yzlr.Columns[7].DisplayText + '%' + #39;
          qry_yldw.Filtered := true;
        end;
        if qry_yldw.RecordCount > 0 then
        begin
          qry_yz.FieldByName( 'yldw' ).Value := qry_yldw.FieldByName( 'yldw' ).AsString;
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

procedure Tfrm_yzinput_lishi.grid_yzlrColExit( Sender: TObject );
begin
  //  if (grid_yzlr.SelectedIndex = 11) and (grid_yzlr.Columns[10].DisplayText='') then
  //  begin
  //    ShowMessage('请填写处置科室！');
  //    grid_yzlr.SelectedIndex:= 11;
  //    Abort;
  //  end;
  if grid_yzlr.SelectedIndex = 1 then
    yzlbsr( kzbz );
  if ( yzlb = '其它' ) and ( Trim( grid_yzlr.Columns[7].DisplayText ) = '' ) then
  begin
    qry_yz.Edit;
    qry_yz.FieldByName( 'sl' ).AsString := '0';
    qry_yz.Post;
  end;
  if ( yzlb = '其它' ) and ( Pos( '皮试', Trim( grid_yzlr.Columns[2].DisplayText ) ) = 1 ) then
  begin
    ShowMessage( '皮试录入名称不正确，请按照：药品名称+皮试 这种格式录入！' );
    Abort;
  end;
  if ( yzlb = '其它' ) then
  begin
    xminyz;
    if Trim( grid_yzlr.Columns[2].DisplayText ) = '' then
      grid_yzlr.SelectedIndex := 2;

  end;

end;

procedure Tfrm_yzinput_lishi.grid_yzlrColWidthsChanged( Sender: TObject );
begin
  if qry_yz.Active then
    createrect( myrect, qry_yz, grid_yzlr, 6, 7, 14 );

end;

procedure Tfrm_yzinput_lishi.grid_yzlrDblClick( Sender: TObject );
begin
  yzlb := qry_yz.fieldbyname( 'lb' ).asstring;
  if ( yzlb = '检验' ) or ( yzlb = '检查' ) or ( yzlb = '治疗' ) then
  begin
    p_jyxmwrite_zy.pro_ptyz_load(yzlb );
  end
  else
    application.messagebox( '只有检查、检验、治疗才能进行选择，其他项目请输入拼音缩写！！', '提示', mb_ok )

end;

procedure Tfrm_yzinput_lishi.grid_yzlrondrawcolumncell( Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState );
var
  i: integer;
  myrect1: Trect;
  Bitmap: TBitmap;

begin
  with Sender as TDbGridEh do
  begin
    if ( gdSelected in State ) or ( gdFixed in State ) then
      Canvas.Brush.Color := clblue
    else
    begin
      Canvas.Brush.Color := clwhite;
      Canvas.Font.Color := clblack;
    end;
  end;
  if trim( qry_yz.FieldByName( 'yzsx' ).AsString ) = '临时' then
  begin
    grid_yzlr.Canvas.Brush.Color := clwhite;
    grid_yzlr.Canvas.Font.Color := clGreen;
  end;
  if trim( qry_yz.FieldByName( 'lb' ).AsString ) = '其它' then
  begin
    grid_yzlr.Canvas.Brush.Color := clwhite;
    grid_yzlr.Canvas.Font.Color := clRed;
  end;

  if trim( qry_yz.fieldbyname( 'fzph' ).asstring ) <> '' then
  begin
    grid_yzlr.canvas.brush.color := $00E2BC6D;
    i := findinarray( myrect, qry_yz.fieldbyname( 'fzph' ).asstring );
    grid_yzlr.Canvas.pen.color := $00E2BC6D;
    grid_yzlr.Canvas.MoveTo( myrect[i].left + 20, myrect[i].top ); //
    grid_yzlr.Canvas.LineTo( myrect[i].left, myrect[i].Bottom );
    grid_yzlr.canvas.Rectangle( myrect[i].left, myrect[i].top, myrect[i].right, myrect[i].bottom );
    grid_yzlr.Canvas.pen.color := clred;
    grid_yzlr.Canvas.MoveTo( myrect[i].left + 20, myrect[i].top ); //
    grid_yzlr.Canvas.LineTo( myrect[i].left, myrect[i].Bottom );
    with grid_yzlr.Canvas do
    begin
      moveto( myrect[I].gleft, myrect[i].Gtop );
      lineto( myrect[I].gright, myrect[I].gtop );
      lineto( myrect[I].gright, myrect[I].gbottom );
      lineto( myrect[I].gleft, myrect[I].gbottom );
      lineto( myrect[I].gleft, myrect[i].Gtop );
    end;
    myrect1.Left := myrect[i].left;
    myrect1.top := myrect[i].top;
    myrect1.right := myrect[i].right;
    myrect1.bottom := myrect[i].bottom;
    grid_yzlr.Canvas.TextOut( myrect[i].left + 20, //
      myrect[i].top + round( myrect[i].height * ( ( myrect[i].sl - 0.5 ) / 2 ) ), myrect[i].tj + #13 + myrect[i].yf );
  end;

  ( Sender as TDbGridEh ).DefaultDrawColumnCell( Rect, DataCol, Column, State );
end;

function findinarray( myrect: TTmyrect; zd: string ): integer;
var
  i: integer;
  mark: boolean;
begin
  mark := true;
  i := 0;
  while ( i < 99 ) and mark do
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

procedure Tfrm_yzinput_lishi.grid_yzlrKeyDown( Sender: TObject; var Key: Word;
  Shift: TShiftState );
  var yzid:Integer;
      kdys:string;
begin
  //40下,38上,37左

  if ( key = 37 ) or ( key = 38 ) or ( key = 39 ) or ( key = 40 ) then
  begin
    kzbz := 0;
  end;
  if qry_yz.RecordCount > 0 then
  begin
    if key = 116 then
    begin
      qry_yz.Edit;
      qry_yz.FieldByName( 'yzsx' ).AsString := '长期';
      qry_yz.Post;
      grid_yzlr.SelectedIndex := 1;
    end
    else
      if key = 117 then
      begin
        qry_yz.Edit;
        qry_yz.FieldByName( 'yzsx' ).AsString := '临时';
        qry_yz.Post;
        grid_yzlr.SelectedIndex := 1;
      end;
  end;
  if ( key = 13 ) then
  begin
    kzbz := 1;
  end
  else
  begin
    //---calmhawk-2011-05-21---处理修改用法时输入只显示第一次结果问题。
    if grid_yzlr.SelectedIndex = 6 then
    begin
      if Trim( qry_yz.FieldByName( 'yytj' ).AsString ) <> '' then
      begin
        qry_yz.Edit;
        qry_yz.FieldByName( 'yytj' ).Value := '';
        //grid_yzlr.Columns[6].
      end;
    end;
  end;

  if ( Key = 27 ) then
  begin
     DM_data.qry_pub.close;
     DM_data.qry_pub.SQL.text:='select * from sys_xt_kg ';
     DM_data.qry_pub.Open;
     if (DM_data.qry_pub.FieldByName('qyzdjf').AsBoolean=true) and
        (DM_data.qry_pub.FieldByName('yztjjf').AsBoolean=true) then
     begin
      if (qry_yz.FieldByName( 'id' ).asstring<>'') and  (qry_yz.FieldByName( 'yzsx' ).asstring='长期') then
        begin
        if application.MessageBox('是否要删除该条已保存的长期医嘱信息?', '提示信息', mb_iconquestion + mb_okcancel + mb_defbutton1) = idcancel then
        Exit;
        DM_data.qry_pub.close;
        DM_data.qry_pub.SQL.Text:='select * from zybl_zyyz where id='+qry_yz.FieldByName( 'id' ).asstring;
        DM_data.qry_pub.Open;
        yzid:=sp_dryz.FieldByName( 'id' ).AsInteger;
        kdys:=DM_data.qry_pub.FieldByName('kdys').asstring;
        yzqxtf(yzid,kdys);
        end;
     end;
    qry_yz.Delete;
  end;
end;

procedure Tfrm_yzinput_lishi.grid_yzlrKeyPress( Sender: TObject; var Key: Char );
begin
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
end;

procedure Tfrm_yzinput_lishi.grid_yzlrMouseDown( Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer );
begin
  kzbz := 0;
  tzbz := 1;
end;

function Tfrm_yzinput_lishi.grid_yzlrMoveRecords( Sender: TObject;
  BookmarkList: TStrings; ToRecNo, TreeLevel: Integer;
  CheckOnly: Boolean ): Boolean;
begin
  ShowMessage( '1' );
end;

procedure Tfrm_yzinput_lishi.czkscl( fs: integer );
begin
  if ( qry_yz.FieldByName( 'lb' ).AsString = '药品' ) or ( ( qry_yz.FieldByName( 'lb' ).AsString = '材料' ) and isbqkf ) then
  begin
    yzNew( fs );
  end
  else
  begin
    if trim( qry_yz.FieldByName( 'xmmc' ).AsString ) <> '' then
    begin
      qry_ks.Filtered := false;
      if trim( grid_yzlr.Columns[10].DisplayText ) <> '' then
      begin
        qry_ks.Filter := 'dm = ' + #39 + grid_yzlr.Columns[10].DisplayText + #39;
        qry_ks.Filter := qry_ks.Filter + ' or pym like ' + #39 + '%' + grid_yzlr.Columns[10].DisplayText + '%' + #39;
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
        qry_yz.FieldByName( 'czks' ).Value := qry_ks.FieldByName( 'dm' ).AsString;
        yzNew( fs );
      end;
      if qry_ks.RecordCount < 1 then
      begin
        tzbz := 0;
        showMessage( '处置科室未找到!' );
        grid_yzlr.SetFocus;
      end;
    end;
  end;
end;

procedure Tfrm_yzinput_lishi.yytjjs( fs: integer );
var
  i: integer;
  _temp: boolean;
begin

  grid_yzlr.SelectedIndex := 7;
  if ( qry_yz.FieldByName( 'lb' ).AsString = '药品' ) or ( trim( qry_yz.FieldByName( 'lb' ).AsString ) = '成药' ) then
  begin
    try
      i := strtoint( trim( grid_yzlr.Columns[6].DisplayText ) );
      if ( i > 0 ) and ( i < qry_gytj.RecordCount ) then
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
    if _temp then //输入数字检索
    begin
      qry_gytj.Filtered := false;
      qry_gytj.RecNo := i;
      qry_yz.FieldByName( 'yytj' ).Value := qry_gytj.FieldByName( 'mc' ).AsString;
    end
    else
    begin
      qry_gytj.Filtered := false;
      if trim( grid_yzlr.Columns[6].DisplayText ) <> '' then
      begin
        qry_gytj.Filter := 'pym like ' + #39 + '%' + Trim( qry_yz.FieldByName( 'yytj' ).asstring ) + '%' + #39;
        qry_gytj.Filter := qry_gytj.Filter + ' or mc like ' + #39 + '%' + Trim( qry_yz.FieldByName( 'yytj' ).asstring ) + '%' + #39; //grid_yzlr.Columns[6].DisplayText
        qry_gytj.Filtered := true;
      end;
      if qry_gytj.RecordCount > 0 then
      begin
        qry_yz.FieldByName( 'yytj' ).Value := qry_gytj.FieldByName( 'mc' ).AsString;
      end
    end;
  end;
end;

procedure Tfrm_yzinput_lishi.Edit3KeyPress( Sender: TObject; var Key: Char );
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

procedure Tfrm_yzinput_lishi.Edit4KeyPress( Sender: TObject; var Key: Char );
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

procedure Tfrm_yzinput_lishi.bt_ztClick( Sender: TObject );
begin
  // //调用模板前保存已编辑医嘱
  //    bcbz:=false;
  //  application.CreateForm(TFrm_yzzt, Frm_yzzt);
  //  try
  //    Frm_yzzt.ShowModal;
  //  finally
  //    Frm_yzzt.free;
  //  end;
  //  saveyz;
  //  refresh_yz;

   //调用模板前保存已编辑医嘱
  mbdy := True;
  button1.Click;
  mbdy := False;
  application.CreateForm( TFrm_yzzt, Frm_yzzt );
  try
    frm_yzzt.dymk := 'zy';
    frm_yzzt.tmh := tmh;
    frm_yzzt.zyh := zyh;
    frm_yzzt.xyfdm := pub_zyxyfdm;
    frm_yzzt.zyfdm := pub_zyxyfdm;
    Frm_yzzt.ShowModal;
  finally
    Frm_yzzt.free;
  end;
  refresh_yz;
  qry_yz.Append;
  saveyz;

end;

procedure Tfrm_yzinput_lishi.bt_ztsaveClick( Sender: TObject );
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
  //    application.MessageBox(pchar('你没输入模板名称系统自动命名为:' + zyyz_mbmc), '提示', 0 + 48);
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
  // if application.MessageBox('已经存在相同名称的模板，是否删除原组套？？', '提示', mb_yesno+MB_DEFBUTTON2	)=idyes then
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
  //    application.MessageBox('没有明细无法存为模板', '提示', 0 + 48);

  mbdy := True;
  button1.Click;
  mbdy := False;
  //  if Trim( DBEdit10.Text ) = '' then
  //    Application.MessageBox( '没有诊断不能存为模板!!', '提示', 0 + 48 )
  //  else
  frm_yzmbsave( qry_yz, Trim( DBEdit10.Text ), 'zy' );

end;

procedure Tfrm_yzinput_lishi.saveyz_tj;
var
  p_return,p_ypmc: string;
begin
  qry_yz.DisableControls;
  qry_gytj.filtered := false;
  if yzys = '' then
    yzys := pub_czydm;
  //医嘱录入数据验证
  yz_lr_yz;
  //------------------------------------------------------------------------------
  //医嘱查询历史批号，将新记录加入历史批量
  yz_cx_cqph( '临时' );
  //临时医嘱生成批号并执行
  qry_yz.First;
  while not qry_yz.Eof do
  begin
    if (Pos( Trim( qry_yz.FieldByName( 'xmdm' ).AsString ), pub_kssypdm ) > 0) and
       ((Trim( qry_yz.FieldByName( 'lb' ).AsString )='药品') or
       (Trim( qry_yz.FieldByName( 'lb' ).AsString )='成药')) then
    begin
      p_ypmc := '你在系统中的职称无法使用：' + Trim( qry_yz.FieldByName( 'xmmc' ).AsString );
      application.MessageBox( PChar( p_ypmc ), '提示信息', 0 + 48 );
      qry_yz.EnableControls;
      abort;
    end;

    if ( trim( qry_yz.FieldByName( 'yzsx' ).AsString ) <> '长期' ) then
    begin
      if trim( qry_yz.FieldByName( 'ph' ).AsString ) = '' then
        tjyzfcqyz; //没有批号的记录生成新批号
      if islsyzsfzdzx then //临时医嘱自动执行
      begin
        qry_yz.Edit;
        qry_yz.FieldByName( 'zxbz' ).Value := true;
        qry_yz.Post;
      end;
    end;
    qry_yz.Next;
  end;
  //------------------------------------------------------------------------------
  //医嘱查询历史批号，将新记录加入历史批量
  yz_cx_cqph( '长期' );
  //长期医嘱生成批号
  qry_yz.First;
  while not qry_yz.Eof do
  begin
    if ( trim( qry_yz.FieldByName( 'yzsx' ).AsString ) = '长期' ) then
      if trim( qry_yz.FieldByName( 'ph' ).AsString ) = '' then
        tjyzfcqyz;
    qry_yz.Next;
  end;
  qry_yz.first;
  p_return := '';
  while not qry_yz.Eof do
  begin
    if sp_dryz.Locate( 'xmdm', qry_yz.FieldByName( 'xmdm' ).AsString, [] ) then
    begin
      if ( sp_dryz.FieldByName( 'yzsx' ).asstring = '长期' ) and  ( sp_dryz.FieldByName( 'zxbz' ).AsBoolean=true) and
        ( ( sp_dryz.FieldByName( 'yytj' ).asstring = '口服' ) or ( sp_dryz.FieldByName( 'yytj' ).asstring = '肌注' ) ) and
        ( ( sp_dryz.fieldbyname( 'tzbz' ).asboolean = false ) or
        ( formatdatetime( 'yyyymmdd', sp_dryz.fieldbyname( 'zfrq' ).asdatetime ) >= formatdatetime( 'yyyymmdd', frm_func.curr_date( ) ) ) ) then
        p_return := p_return + #13 + qry_yz.fieldbyname( 'xmmc' ).AsString;

    end;
    qry_yz.next;
  end;
  if p_return <> '' then
    if application.MessageBox( pchar( p_return + #13 + #13 + '以上药品病员正在使用,是否要增加?' + #13 + '请注意修改！！' ), '提示信息', mb_iconwarning + MB_YESNO + mb_defbutton2 ) = IDNO then
    begin
      qry_yz.EnableControls;
      abort;
    end;

  p_return := '';
  qry_yz.first;
  while not qry_yz.Eof do
  begin
    if ( qry_yz.FieldByName( 'yzsx' ).asstring = '长期' ) and
      ( ( qry_yz.FieldByName( 'lb' ).asstring = '检查' ) or ( qry_yz.FieldByName( 'lb' ).asstring = '检验' ) ) then
      p_return := p_return + #13 + qry_yz.fieldbyname( 'xmmc' ).AsString;
    qry_yz.next;
  end;

  if p_return <> '' then
    if application.MessageBox( pchar( p_return + #13 + #13 + '以上检验检查项目医嘱为长期医嘱,是否要确认?' + #13 + '请注意修改！！' ), '提示信息', mb_iconwarning + MB_YESNO + mb_defbutton2 ) = IDNO then
    begin
      qry_yz.EnableControls;
      abort;
    end;
  p_return := '';
  //------------------------------------------------------------------------------
  dm_data.ado_mydata.BeginTrans;
  try
    qry_yz.UpdateBatch( arall );
    sp_yzup_list.Close;
    sp_yzup_list.Parameters.ParamByName( '@czydm' ).Value := pub_czydm;
    sp_yzup_list.Parameters.ParamByName( '@zyh' ).Value := zyh;
    sp_yzup_list.Parameters.ParamByName( '@sczt' ).Value := 0;
    sp_yzup_list.ExecProc;
    p_return := sp_yzup_list.Parameters.ParamByName( '@sczt' ).Value;
    if p_return = '1' then
    begin
      dm_data.ado_mydata.CommitTrans;
      refresh_yz;
    end
    else
    begin
      dm_data.ado_mydata.RollbackTrans;
      application.MessageBox( pchar( p_return ), '提示', 0 + 48 );
    end;
  except
    dm_data.ado_mydata.RollbackTrans;
    application.MessageBox( '医嘱保存失败，请重新进行刚才操作!', '提示', 0 + 48 );
  end;
  qry_yz.EnableControls;
end;

procedure Tfrm_yzinput_lishi.saveyz;
var
  p_return,p_ypmc: string;
begin
  qry_yz.DisableControls;
  qry_gytj.filtered := false;
  if yzys = '' then
    yzys := pub_czydm;
  //医嘱录入数据验证
  yz_lr_yz;
  //------------------------------------------------------------------------------
  //医嘱查询历史批号，将新记录加入历史批量
  yz_cx_cqph( '临时' );
  //临时医嘱生成批号并执行
  qry_yz.First;
  while not qry_yz.Eof do
  begin
    if (Pos( Trim( qry_yz.FieldByName( 'xmdm' ).AsString ), pub_kssypdm ) > 0) and
       ((Trim( qry_yz.FieldByName( 'lb' ).AsString )='药品') or
       (Trim( qry_yz.FieldByName( 'lb' ).AsString )='成药')) then
    begin
      p_ypmc := '你在系统中的职称无法使用：' + Trim( qry_yz.FieldByName( 'xmmc' ).AsString );
      application.MessageBox( PChar( p_ypmc ), '提示信息', 0 + 48 );
      qry_yz.EnableControls;
      Exit;
    end;
    if ( trim( qry_yz.FieldByName( 'yzsx' ).AsString ) <> '长期' ) then
    begin
      if trim( qry_yz.FieldByName( 'ph' ).AsString ) = '' then
         tjyzfcqyz; //没有批号的记录生成新批号
      if islsyzsfzdzx then //临时医嘱自动执行
      begin
        qry_yz.Edit;
        qry_yz.FieldByName( 'zxbz' ).Value := true;
        qry_yz.Post;
      end;
    end;
    qry_yz.Next;
  end;
  //------------------------------------------------------------------------------
  //医嘱查询历史批号，将新记录加入历史批量
  yz_cx_cqph( '长期' );
  //长期医嘱生成批号
  qry_yz.First;
  while not qry_yz.Eof do
  begin
    if ( trim( qry_yz.FieldByName( 'yzsx' ).AsString ) = '长期' ) then
      if trim( qry_yz.FieldByName( 'ph' ).AsString ) = '' then
        tjyzfcqyz;
    qry_yz.Next;
  end;
  qry_yz.first;
  p_return := '';
  while not qry_yz.Eof do
  begin
    if sp_dryz.Locate( 'xmdm', qry_yz.FieldByName( 'xmdm' ).AsString, [] ) then
    begin
      if ( sp_dryz.FieldByName( 'yzsx' ).asstring = '长期' ) and    ( sp_dryz.FieldByName( 'zxbz' ).asboolean = true ) and
        ( ( sp_dryz.FieldByName( 'yytj' ).asstring = '口服' ) or ( sp_dryz.FieldByName( 'yytj' ).asstring = '肌注' ) ) and
        ( ( sp_dryz.fieldbyname( 'tzbz' ).asboolean = false ) or
        ( formatdatetime( 'yyyymmdd', sp_dryz.fieldbyname( 'zfrq' ).asdatetime ) >= formatdatetime( 'yyyymmdd', frm_func.curr_date( ) ) ) ) then
        p_return := p_return + #13 + qry_yz.fieldbyname( 'xmmc' ).AsString;

    end;
    qry_yz.next;
  end;
  if p_return <> '' then
    if application.MessageBox( pchar( p_return + #13 + #13 + '以上药品病员正在使用,是否要增加?' + #13 + '请注意修改！！' ), '提示信息', mb_iconwarning + MB_YESNO + mb_defbutton2 ) = IDNO then
    begin
      qry_yz.EnableControls;
      abort;
    end;

  p_return := '';
  qry_yz.first;
  while not qry_yz.Eof do
  begin
    if ( qry_yz.FieldByName( 'yzsx' ).asstring = '长期' ) and
      ( ( qry_yz.FieldByName( 'lb' ).asstring = '检查' ) or ( qry_yz.FieldByName( 'lb' ).asstring = '检验' ) ) then
      p_return := p_return + #13 + qry_yz.fieldbyname( 'xmmc' ).AsString;
    qry_yz.next;
  end;

  if p_return <> '' then
    if application.MessageBox( pchar( p_return + #13 + #13 + '以上检验检查项目医嘱为长期医嘱,是否要确认?' + #13 + '请注意修改！！' ), '提示信息', mb_iconwarning + MB_YESNO + mb_defbutton2 ) = IDNO then
    begin
      qry_yz.EnableControls;
      abort;
    end;
  p_return := '';
  //------------------------------------------------------------------------------
  dm_data.ado_mydata.BeginTrans;
  try
    qry_yz.UpdateBatch( arall );
    sp_yzup_list.Close;
    sp_yzup_list.Parameters.ParamByName( '@czydm' ).Value := pub_czydm;
    sp_yzup_list.Parameters.ParamByName( '@zyh' ).Value := zyh;
    sp_yzup_list.Parameters.ParamByName( '@sczt' ).Value := 0;
    sp_yzup_list.ExecProc;
    p_return := sp_yzup_list.Parameters.ParamByName( '@sczt' ).Value;
    if p_return = '1' then
    begin
      dm_data.ado_mydata.CommitTrans;
      refresh_yz;
      if bcbz then
        application.MessageBox( '保存完成!', '提示', 0 + 48 );
    end
    else
    begin
      dm_data.ado_mydata.RollbackTrans;
      application.MessageBox( pchar( p_return ), '提示', 0 + 48 );
    end;
  except on e1: Exception do
    begin
      dm_data.ado_mydata.RollbackTrans;
      application.MessageBox( pchar( '医嘱保存失败，请重新进行刚才操作!' + e1.Message ), '提示', 0 + 48 );
    end;
  end;
  qry_yz.EnableControls;
  DM_data.qry_pub.close;
  DM_data.qry_pub.SQL.text := 'update zybl_zyyz with (rowlock) set tzrq=null where convert(varchar,tzrq,112)=''19000101''' +
    ' and zyh=' + '''' + zyh + '''';
  DM_data.qry_pub.ExecSQL;
  //  DM_data.qry_pub.close;
  //  DM_data.qry_pub.SQL.text:='update zybl_zyyz  with (rowlock) set ypyf=null where rtrim(ypyf)='''''+
  //                               ' and zyh='+''''+zyh+'''';
  //  DM_data.qry_pub.ExecSQL;
end;

procedure Tfrm_yzinput_lishi.Button1Click( Sender: TObject );
begin
  bcbz := true;
  qry_yz.DisableControls;
  qry_yz.First;
  while not qry_yz.Eof do
  begin
    //分组验证
    if (qry_yz.FieldByName('yytj').AsString='静滴') and  (Trim(qry_yz.FieldByName('fzph').AsString)='')  then
    begin
              showMessage( '静滴药品必须进行分组，有静滴药品没有分组!' );
              grid_yzlr.SetFocus;
              grid_yzlr.SelectedIndex := 1;
              qry_yz.EnableControls;
              abort;

    end;
    qry_yz.Next;
  end;
  qry_yz.EnableControls;
  saveyz;
end;

procedure Tfrm_yzinput_lishi.Button2Click(Sender: TObject);
begin
if (Button2.Caption='时间过滤') and (ComboBox1.text='全部') then
begin
    sp_dryz.Filtered := False;
    sp_dryz.Filter := ' kdrq>='+''''+formatdatetime('yyyy-MM-dd',DateTimePicker1.DateTime)+' 00:00:00'+''''
                      +' and  kdrq<='+''''+formatdatetime('yyyy-MM-dd',DateTimePicker2.DateTime)+' 23:59:59'+'''';
    sp_dryz.Filtered := True;
    Button2.Caption:='取消过滤';
end
else if (Button2.Caption='时间过滤') and (ComboBox1.text='长期') then
begin
      sp_dryz.Filtered := False;
    sp_dryz.Filter := ' yzsx=''长期'' and kdrq>='+''''+formatdatetime('yyyy-MM-dd',DateTimePicker1.DateTime)+' 00:00:00'+''''
                      +' and  kdrq<='+''''+formatdatetime('yyyy-MM-dd',DateTimePicker2.DateTime)+'  23:59:59'+'''';
    sp_dryz.Filtered := True;
    Button2.Caption:='取消过滤';
end
else if (Button2.Caption='时间过滤') and (ComboBox1.text='临时') then
begin
    sp_dryz.Filtered := False;
    sp_dryz.Filter := ' yzsx=''临时'' and kdrq>='+''''+formatdatetime('yyyy-MM-dd',DateTimePicker1.DateTime)+' 00:00:00'+''''
                      +' and  kdrq<='+''''+formatdatetime('yyyy-MM-dd',DateTimePicker2.DateTime)+'  23:59:59'+'''';
    sp_dryz.Filtered := True;
    Button2.Caption:='取消过滤';
end
else
begin
   Button2.Caption:='时间过滤';
   sp_dryz.Filtered := False;
end;

end;

procedure Tfrm_yzinput_lishi.Button3Click(Sender: TObject);
var
  _id, _zhzxsj, _yzsx: string;
  _fzph: string;
  _yzsj: string;
  sczt, i: integer;
begin

    DM_data.qry_pub.close;
    DM_data.qry_pub.sql.text:='select * from sys_ypdm where ypdm=''01000001000357''';
    DM_data.qry_pub.Open;

    if not DM_data.qry_pub.isempty then
    begin
    qry_yz.Insert;
    qry_yz.FieldByName( 'yzsx' ).Value := '临时';
    qry_yz.FieldByName( 'lb' ).Value := '药品';
    qry_yz.FieldByName( 'xmmc' ).Value := trim(DM_data.qry_pub.FieldByName('ypmc').asstring);
    qry_yz.FieldByName( 'sl' ).Value := 1;
    qry_yz.FieldByName( 'czks' ).Value := pub_zyxyfdm;
    qry_yz.FieldByName( 'kdks' ).Value := pub_ksdm;
    qry_yz.FieldByName( 'zyh' ).Value := zyh;
    qry_yz.FieldByName( 'tmh' ).Value := tmh;
    qry_yz.FieldByName( 'xmdm' ).Value := '01000001000357';
    qry_yz.FieldByName( 'dw' ).Value :=trim(DM_data.qry_pub.FieldByName('zxdw').asstring);
    qry_yz.FieldByName( 'ypdwid' ).Value := DM_data.qry_pub.FieldByName('zydwid').AsInteger;
    qry_yz.FieldByName( 'ypbzbl' ).Value := 1;
    qry_yz.FieldByName( 'yplsj' ).Value := DM_data.qry_pub.FieldByName('zylsj').AsFloat;
    qry_yz.FieldByName( 'ypcgj' ).Value := DM_data.qry_pub.FieldByName('zypfj').AsFloat;
    qry_yz.FieldByName( 'ypyl' ).Value := 400;
    qry_yz.FieldByName( 'yldw' ).Value := 'U';
    qry_yz.FieldByName( 'yytj' ).Value := '静滴';
    qry_yz.FieldByName( 'ypyf' ).Value := '';
    qry_yz.FieldByName( 'yplb' ).Value := '';
    qry_yz.FieldByName( 'gg' ).Value := '400u:10ml';
    qry_yz.FieldByName( 'xyzbz' ).Value :=1 ;
    qry_yz.FieldByName( 'bz' ).Value := '备用';

    qry_yz.Post;


    qry_yz.Append;
    grid_yzlr.SetFocus;
    grid_yzlr.SelectedIndex := 2;
    end;

    //sp_dryz.UpdateBatch( arall );


end;

procedure Tfrm_yzinput_lishi.Button4Click(Sender: TObject);
begin
   sp_dryz.Close;
   sp_dryz.Parameters.ParamByName( '@zyh' ).Value := zyh;
   sp_dryz.Parameters.ParamByName( '@yzsx' ).Value := '';
   sp_dryz.Open;
end;

procedure Tfrm_yzinput_lishi.Button5Click(Sender: TObject);
begin
proc_show_xbs( trim(e_tmh.text), trim( DBEdit14.text ), trim( DBEdit20.text ), trim( DBEdit15.text ) );
end;

procedure Tfrm_yzinput_lishi.Button6Click(Sender: TObject);
begin
chyz;
end;

procedure Tfrm_yzinput_lishi.ComboBox1Change( Sender: TObject );
begin
  if ComboBox1.text = '全部' then
  begin
    sp_dryz.Filtered := False;
  end;
  if ComboBox1.text = '长期' then
  begin
    sp_dryz.Filtered := False;
    sp_dryz.Filter := 'yzsx=''长期''';
    sp_dryz.Filtered := True;
  end;
  if ComboBox1.text = '临时' then
  begin
    sp_dryz.Filtered := False;
    sp_dryz.Filter := 'yzsx=''临时''';
    sp_dryz.Filtered := True;
  end;
  if ComboBox1.text = '未停止医嘱' then
  begin
    sp_dryz.Filtered := False;
    sp_dryz.Filter := 'yzsx=''长期'' and tzbz=0';
    sp_dryz.Filtered := True;
  end;
  if ComboBox1.text = '本人医嘱' then
  begin
    sp_dryz.Filtered := False;
    sp_dryz.Filter := 'kdys='+''''+pub_czydm+'''';
    sp_dryz.Filtered := True;
  end;

end;

procedure Tfrm_yzinput_lishi.FormCreate( Sender: TObject );
begin
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
//  grid_yzlr.Height:=scrollbox4.Height-1;
//  grid_yzlr.width:=scrollbox4.width-1;
 // Application.OnMessage := frm_yzinput_lishi.OnMouseWheel_yzzx;
end;

procedure Tfrm_yzinput_lishi.FormDeactivate(Sender: TObject);
begin
  Application.OnMessage := nil;
end;

procedure Tfrm_yzinput_lishi.FormKeyDown( Sender: TObject; var Key: Word;
  Shift: TShiftState );
begin

  if key = vk_f1 then
    ZZ.ActivePageIndex := 0;
  if key = vk_f2 then
    ZZ.ActivePageIndex := 1;
  if key = vk_f3 then
    ZZ.ActivePageIndex := 2;
end;

procedure Tfrm_yzinput_lishi.FormResize( Sender: TObject );
begin
  scrollbox1.Width := self.Width - 10;
  dbgrideh4.Width := 1500;
  dbgrideh3.Width := 1100;
  dbgrideh1.Width := 1100;

end;

procedure Tfrm_yzinput_lishi.bt_lsyzClick( Sender: TObject );
begin
  //调用历史医嘱前保存已编辑医嘱
  if ds_yz.State in [dsedit, dsinsert] then
  begin
    dm_data.ado_mydata.BeginTrans;
    try
      qry_yz.UpdateBatch( );
      dm_data.ado_mydata.CommitTrans;
      scbz := 0;
    except
      dm_data.ado_mydata.RollbackTrans;
    end;
  end;
  if sp_jbxx.Active then
  begin
    frm_bylsyz := Tfrm_bylsyz.Create( self );
    try
      frm_bylsyz.cxzyh := zyh;
      frm_bylsyz.cxtmh := sp_jbxx.FieldByName( 'tmh' ).AsString;
      frm_bylsyz.cxbch := sp_jbxx.FieldByName( 'bch' ).AsString;
      frm_bylsyz.edit1.Text := brxm;
      frm_bylsyz.sp_yzmx.close;
      frm_bylsyz.sp_yzmx.parameters.parambyname( '@zyh' ).value := sp_jbxx.FieldByName( 'zyh' ).AsString;
      frm_bylsyz.sp_yzmx.open;
      frm_bylsyz.qrlabel12.Caption := sp_jbxx.FieldByName( 'brxm' ).AsString;
      frm_bylsyz.QRL_bch.Caption := sp_jbxx.FieldByName( 'bch' ).AsString;
      ;
      frm_bylsyz.QRL_tmh.Caption := sp_jbxx.FieldByName( 'tmh' ).AsString;
      frm_bylsyz.QRL_dysj.Caption := '打印时间:' + FormatDatetime( 'yyyy年mm月dd日 HH时MM分SS秒', frm_func.curr_date );
      frm_bylsyz.rep_dryphz.Prepare;
      frm_bylsyz.QRL_ym.Caption := '共' + IntToStr( frm_bylsyz.rep_dryphz.Printer.PageCount ) + '页';
      //      frm_bylsyz.rep_dryphz.PrinterSettings.PrinterIndex:=printer.Printers.IndexOf('zxdprint');
      frm_bylsyz.rep_dryphz.Preview;
    finally
      frm_bylsyz.Free;
    end;
  end
  else
    application.MessageBox( '没有病人信息', '提示', 0 + 48 );
end;

procedure Tfrm_yzinput_lishi.Edit2KeyPress( Sender: TObject; var Key: Char );
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

procedure Tfrm_yzinput_lishi.DBEdit7Exit( Sender: TObject );
begin
  if qry_yz.State in [dsedit, dsinsert] then
    if qry_yz.FieldByName( 'sl' ).AsInteger <= 0 then
    begin
      application.MessageBox( '输入数量必须大于0!', '提示信息', 0 + 16 );
    end;
end;

procedure Tfrm_yzinput_lishi.DBGridEh1ColWidthsChanged( Sender: TObject );
begin
  if sp_zxjl_cq.Active then
    createrect( myrect_zx_cq, sp_zxjl_cq, dbgrideh1, 5, 6, 11 );

end;

procedure Tfrm_yzinput_lishi.DBGridEh1DrawColumnCell( Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState );
var
  i: integer;
  myrect1: Trect;
begin
  if Trim( sp_zxjl_cq.FieldByName( 'zhhsmc' ).AsString ) <> '' then
  begin
    DBGridEh1.Canvas.Font.Color := $004F1DD3;
  end
  else
  begin
    DBGridEh1.Canvas.Font.Color := clBlack;
  end;

  if trim( sp_zxjl_cq.fieldbyname( 'fzph' ).asstring ) <> '' then
  begin
    DBGridEh1.canvas.brush.color := $00E2BC6D;
    i := findinarray( myrect_zx_cq, sp_zxjl_cq.fieldbyname( 'fzph' ).asstring );
    DBGridEh1.Canvas.pen.color := $00E2BC6D;
    DBGridEh1.Canvas.MoveTo( myrect_zx_cq[i].left + 20, myrect_zx_cq[i].top );
    DBGridEh1.Canvas.LineTo( myrect_zx_cq[i].left, myrect_zx_cq[i].Bottom );
    DBGridEh1.canvas.Rectangle( myrect_zx_cq[i].left, myrect_zx_cq[i].top, myrect_zx_cq[i].right, myrect_zx_cq[i].bottom );
    DBGridEh1.Canvas.pen.color := clred;
    DBGridEh1.Canvas.MoveTo( myrect_zx_cq[i].left + 20, myrect_zx_cq[i].top );
    DBGridEh1.Canvas.LineTo( myrect_zx_cq[i].left, myrect_zx_cq[i].Bottom );
    with DBGridEh1.Canvas do
    begin
      moveto( myrect_zx_cq[I].gleft, myrect_zx_cq[i].Gtop );
      lineto( myrect_zx_cq[I].gright, myrect_zx_cq[I].gtop );
      lineto( myrect_zx_cq[I].gright, myrect_zx_cq[I].gbottom );
      lineto( myrect_zx_cq[I].gleft, myrect_zx_cq[I].gbottom );
      lineto( myrect_zx_cq[I].gleft, myrect_zx_cq[i].Gtop );
    end;
    myrect1.Left := myrect_zx_cq[i].left;
    myrect1.top := myrect_zx_cq[i].top;
    myrect1.right := myrect_zx_cq[i].right;
    myrect1.bottom := myrect_zx_cq[i].bottom;
    DBGridEh1.Canvas.TextOut( myrect_zx_cq[i].left + 20,
      myrect_zx_cq[i].top + round( myrect_zx_cq[i].height * ( ( myrect_zx_cq[i].sl - 0.5 ) / 2 ) ), myrect_zx_cq[i].tj + #13 + myrect_zx_cq[i].yf );
  end;

  DBGridEh1.DefaultDrawColumnCell( Rect, DataCol, Column, State );
end;

procedure Tfrm_yzinput_lishi.DBGridEh2DblClick( Sender: TObject );
begin
  Proc_Seek_yzzxjl( qry_dj.FieldByName( 'tmh' ).AsString, qry_dj.FieldByName( 'zyh' ).AsString, qry_dj.FieldByName( 'brxm' ).AsString )
end;

procedure Tfrm_yzinput_lishi.DBGridEh2Exit( Sender: TObject );
begin
  DBGridEh2.Visible := False;
end;

procedure Tfrm_yzinput_lishi.DBGridEh2KeyDown( Sender: TObject; var Key: Word;
  Shift: TShiftState );
begin
  if key = 13 then
    Proc_Seek_yzzxjl( qry_dj.FieldByName( 'tmh' ).AsString, qry_dj.FieldByName( 'zyh' ).AsString, qry_dj.FieldByName( 'brxm' ).AsString )
  else
    if key = 27 then
      edt_tmh.SetFocus;
end;

procedure Tfrm_yzinput_lishi.DBGridEh3ColWidthsChanged( Sender: TObject );
begin
  if sp_zxjl_ls.Active then
    createrect( myrect_zx_ls, sp_zxjl_ls, dbgrideh3, 7, 8, 9 );
end;

procedure Tfrm_yzinput_lishi.DBGridEh3DrawColumnCell( Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState );
var
  i: integer;
  myrect1: Trect;
begin
  if Trim( sp_zxjl_ls.FieldByName( 'gysj' ).AsString ) <> '' then
  begin
    DBGridEh3.Canvas.Font.Color := $004F1DD3;
  end
  else
  begin
    DBGridEh3.Canvas.Font.Color := clBlack;
  end;
  if trim( sp_zxjl_ls.fieldbyname( 'fzph' ).asstring ) <> '' then
  begin
    DBGridEh3.canvas.brush.color := $00E2BC6D;
    i := findinarray( myrect_zx_ls, sp_zxjl_ls.fieldbyname( 'fzph' ).asstring );
    DBGridEh3.Canvas.pen.color := $00E2BC6D;
    DBGridEh3.Canvas.MoveTo( myrect_zx_ls[i].left + 20, myrect_zx_ls[i].top );
    DBGridEh3.Canvas.LineTo( myrect_zx_ls[i].left, myrect_zx_ls[i].Bottom );
    DBGridEh3.canvas.Rectangle( myrect_zx_ls[i].left, myrect_zx_ls[i].top, myrect_zx_ls[i].right, myrect_zx_ls[i].bottom );
    DBGridEh3.Canvas.pen.color := clred;
    DBGridEh3.Canvas.MoveTo( myrect_zx_ls[i].left + 20, myrect_zx_ls[i].top );
    DBGridEh3.Canvas.LineTo( myrect_zx_ls[i].left, myrect_zx_ls[i].Bottom );
    with DBGridEh3.Canvas do
    begin
      moveto( myrect_zx_ls[I].gleft, myrect_zx_ls[i].Gtop );
      lineto( myrect_zx_ls[I].gright, myrect_zx_ls[I].gtop );
      lineto( myrect_zx_ls[I].gright, myrect_zx_ls[I].gbottom );
      lineto( myrect_zx_ls[I].gleft, myrect_zx_ls[I].gbottom );
      lineto( myrect_zx_ls[I].gleft, myrect_zx_ls[i].Gtop );
    end;
    myrect1.Left := myrect_zx_ls[i].left;
    myrect1.top := myrect_zx_ls[i].top;
    myrect1.right := myrect_zx_ls[i].right;
    myrect1.bottom := myrect_zx_ls[i].bottom;
    DBGridEh3.Canvas.TextOut( myrect_zx_ls[i].left + 20,
      myrect_zx_ls[i].top + round( myrect_zx_ls[i].height * ( ( myrect_zx_ls[i].sl - 0.5 ) / 2 ) ), myrect_zx_ls[i].tj + #13 + myrect_zx_ls[i].yf );
  end;
  DBGridEh3.DefaultDrawColumnCell( Rect, DataCol, Column, State );
end;

procedure Tfrm_yzinput_lishi.DBGridEh4CellClick(Column: TColumnEh);
begin
DBGrideh4.Options:=DBGrideh4.Options+[dgrowselect];//整行选择
end;

procedure Tfrm_yzinput_lishi.DBGridEh4ColWidthsChanged( Sender: TObject );
begin
  if sp_dryz.Active then
    createrect( myrect_cx, sp_dryz, dbgrideh4, 10, 11, 16 );

end;

procedure Tfrm_yzinput_lishi.DBGridEh4DrawColumnCell( Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState );
var
  i: integer;
  myrect1: Trect;

begin
  if not sP_dryz.fieldbyname( 'zxbz' ).asboolean then
    DBGridEh4.Canvas.Brush.Color := clSkyBlue;
  if trim( sP_dryz.fieldbyname( 'tzfs' ).asstring ) = '修改' then
  begin
    DBGridEh4.Canvas.Font.Color := clBlue;
  end;

  if ( sP_dryz.fieldbyname( 'tzbz' ).AsBoolean = true ) then
  begin
    if ( pos( '计划', trim( sP_dryz.fieldbyname( 'tzfs' ).asstring ) ) <= 0 ) then
      DBGridEh4.Canvas.Font.Color := $004F1DD3;
  end;

  if ( Pos( '皮试', trim( sP_dryz.FieldByName( 'xmmc' ).AsString ) ) > 0 ) and ( ( Pos( '+', trim( sP_dryz.FieldByName( 'xmmc' ).AsString ) ) > 0 ) or ( Pos( '阳', trim( sP_dryz.FieldByName( 'xmmc' ).AsString ) ) > 0 ) ) then
  begin
    DBGridEh4.Canvas.Brush.Color := clRed;
    DBGridEh4.Canvas.Font.Color := clBlack;
  end;

  if trim( sp_dryz.fieldbyname( 'fzph' ).asstring ) <> '' then
  begin
    DBGridEh4.canvas.brush.color := $00E2BC6D;
    i := findinarray( myrect_cx, sp_dryz.fieldbyname( 'fzph' ).asstring );
    DBGridEh4.Canvas.pen.color := $00E2BC6D;
    DBGridEh4.Canvas.MoveTo( myrect_cx[i].left + 20, myrect_cx[i].top );
    DBGridEh4.Canvas.LineTo( myrect_cx[i].left, myrect_cx[i].Bottom );
    DBGridEh4.canvas.Rectangle( myrect_cx[i].left, myrect_cx[i].top, myrect_cx[i].right, myrect_cx[i].bottom );
    DBGridEh4.Canvas.pen.color := clred;
    DBGridEh4.Canvas.MoveTo( myrect_cx[i].left + 20, myrect_cx[i].top );
    DBGridEh4.Canvas.LineTo( myrect_cx[i].left, myrect_cx[i].Bottom );
    with DBGridEh4.Canvas do
    begin
      moveto( myrect_cx[I].gleft, myrect_cx[i].Gtop );
      lineto( myrect_cx[I].gright, myrect_cx[I].gtop );
      lineto( myrect_cx[I].gright, myrect_cx[I].gbottom );
      lineto( myrect_cx[I].gleft, myrect_cx[I].gbottom );
      lineto( myrect_cx[I].gleft, myrect_cx[i].Gtop );
    end;
    myrect1.Left := myrect_cx[i].left;
    myrect1.top := myrect_cx[i].top;
    myrect1.right := myrect_cx[i].right;
    myrect1.bottom := myrect_cx[i].bottom;
    DBGridEh4.Canvas.TextOut( myrect_cx[i].left + 20,
      myrect_cx[i].top + round( myrect_cx[i].height * ( ( myrect_cx[i].sl - 0.5 ) / 2 ) ), myrect_cx[i].tj + #13 + myrect_cx[i].yf );
  end;

  ( Sender as TDbGridEh ).DefaultDrawColumnCell( Rect, DataCol, Column, State );

end;

procedure Tfrm_yzinput_lishi.DBGridEh4Enter(Sender: TObject);
begin
  Application.OnMessage := OnMouseWheel_yzzx;
end;

procedure Tfrm_yzinput_lishi.DBGridEh4Exit(Sender: TObject);
begin
    Application.OnMessage := nil;
end;

procedure Tfrm_yzinput_lishi.DBGridEh5Exit( Sender: TObject );
begin
  DBGridEh5.Visible := False;
end;

procedure Tfrm_yzinput_lishi.DBGridEh5KeyPress( Sender: TObject; var Key: Char );
begin
  if Key = #13 then
  begin
    qry_yz.Edit;
    qry_yz.fieldbyname( 'xmmc' ).value := Trim( qry_qtyzxm.FieldByName( '项目名称' ).AsString );
    qry_yz.Post;
    //grid_yzlr.Columns[2].DisplayText:=Trim(qry_qtyzxm.FieldByName('项目名称').AsString);
    grid_yzlr.SetFocus;
    xminyz;
    //grid_yzlr.SelectedIndex := 7;

  end
  else
    if Key = #27 then
      grid_yzlr.SetFocus;

end;

procedure Tfrm_yzinput_lishi.yzinypfymx( zyh, ypid, xmid, clid, ph: string ); //写入医嘱明细到药品明细及费用项目明细
begin
  if ypid <> '' then
  begin
    qry_ypyz.Close;
    qry_ypyz.SQL.Clear;
    qry_ypyz.SQL.Text := 'insert into zybl_zyyz_ypmx select zyh,id,' + #39 +
      ph + #39 + ',xmdm,ypdwid,dw,ypbzbl,' +
      'sl,yplsj from zybl_zyyz where zyh=' + #39 + zyh + #39 +
      ' and zxbz=0 and tzbz=0 and zfbz=0 and lb=' + #39 + '药品' + #39 + ' and id in (' + ypid + ')';
  end;

  if clid <> '' then
  begin
    qry_ypyz.Close;
    qry_ypyz.SQL.Clear;
    qry_ypyz.SQL.Text := 'insert into zybl_zyyz_clmx select zyh,id,' + #39 +
      ph + #39 + ',xmdm,ypdwid,dw,ypbzbl,' +
      'sl,yplsj from zybl_zyyz where zyh=' + #39 + zyh + #39 +
      ' and zxbz=0 and tzbz=0 and zfbz=0 and lb=' + #39 + '材料' + #39 + ' and id in (' + clid + ')';
  end;

  if xmid <> '' then
  begin
    qry_ypyz.Close;
    qry_ypyz.SQL.Clear;
    qry_ypyz.SQL.Text := 'insert into zybl_zyyz_fymx(yzid,tmh,zyh,ph,kdks,czks,kdys,fydm,fysl,fyje,zkje,ssje,zfje) select a.id,a.tmh,a.zyh,' +
      quotedstr( ph ) + ' ph,a.kdks,a.czks,a.kdys,b.fydm,a.sl,0 fyje,0 zkje,0 ssje,0 zfje from zybl_zyyz a join sys_yzxm b on a.xmdm=b.xmdm where len(a.xmdm)=4 and a.id in (' + xmid + ')';
  end;
end;

procedure Tfrm_yzinput_lishi.cxButton1Click( Sender: TObject );
begin
  //----医嘱提交窗口----
  qry_yz.DisableControls;
  qry_yz.First;
  while not qry_yz.Eof do
  begin
    //分组验证
    if (qry_yz.FieldByName('yytj').AsString='静滴') and  (Trim(qry_yz.FieldByName('fzph').AsString)='')  then
    begin
              showMessage( '静滴药品必须进行分组，有静滴药品没有分组!' );
              grid_yzlr.SetFocus;
              grid_yzlr.SelectedIndex := 1;
              qry_yz.EnableControls;
              abort;

    end;
    qry_yz.Next;
  end;
  qry_yz.EnableControls;
  saveyz_tj;
  try
    application.CreateForm( Tfrm_tjyz, frm_tjyz );
    frm_tjyz.brxm := brxm;
    frm_tjyz.tmh := tmh;
    frm_tjyz.zyh := zyh;
    frm_tjyz.Caption := '长期医嘱提交 ( 当前病人：卡号:' + tmh + '  姓名: ' + trim( brxm ) + ' )';
    frm_tjyz.Top := 80;
    frm_tjyz.Left := 1;
    frm_tjyz.sfxse := '';
    frm_tjyz.ShowModal;
  finally
    frm_tjyz.Free;
  end;
end;

procedure Tfrm_yzinput_lishi.cxButton2Click( Sender: TObject );
begin
  MenuItem1.click;
end;

procedure Tfrm_yzinput_lishi.cxButton3Click(Sender: TObject);
begin
MenuItem3.Click;
end;

procedure Tfrm_yzinput_lishi.cxButton4Click(Sender: TObject);
begin
MenuItem5.Click;
end;

procedure Tfrm_yzinput_lishi.cxButton5Click(Sender: TObject);
begin
MenuItem7.Click;
end;

procedure Tfrm_yzinput_lishi.cxTabSheet1Show( Sender: TObject );
begin
  if not sp_dryz.Active then
  begin
    sp_dryz.Close;
    sp_dryz.Parameters.ParamByName( '@zyh' ).Value := zyh;
    sp_dryz.Parameters.ParamByName( '@yzsx' ).Value := '';
    sp_dryz.Open;
  end
  else
    dbgrideh4.OnColWidthsChanged( sender );
  DBGridEh4.SetFocus;  

end;

procedure Tfrm_yzinput_lishi.Proc_Seek_dj( const v_tmh: string );
  procedure Proc_Seek_SQL( const v_SQL: string );
  begin
    qry_dj.Close;
    qry_dj.SQL.Text := v_SQL;
    qry_dj.Parameters.ParamByName( 'zyh' ).Value := v_tmh;
    qry_dj.Parameters.ParamByName( 'tmh' ).Value := '%' + v_tmh + '%';
    qry_dj.Parameters.ParamByName( 'ksdm' ).Value := Pub_ksdm;
    qry_dj.Open;
  end;
begin
  Proc_Seek_SQL( con_sql_zy );
  if qry_dj.RecordCount > 1 then
  begin
    DBGridEh2.Visible := True;
    DBGridEh2.SetFocus;
  end
  else
    if qry_dj.RecordCount = 1 then
      Proc_Seek_yzzxjl( qry_dj.FieldByName( 'tmh' ).AsString, qry_dj.FieldByName( 'zyh' ).AsString, qry_dj.FieldByName( 'brxm' ).AsString );
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

procedure Tfrm_yzinput_lishi.Proc_Seek_yzzxjl( const v_tmh, v_zyh, v_brxm: string );
begin
  with sp_zxjl_cq do
  begin
    Close;
    Parameters.ParamByName( '@zyh' ).Value := v_zyh;
    Parameters.ParamByName( '@fs' ).Value := 0;
    Open;
  end;

  with sp_zxjl_ls do
  begin
    Close;
    Parameters.ParamByName( '@zyh' ).Value := v_zyh;
    Parameters.ParamByName( '@fs' ).Value := 1;
    Open;
  end;

  edt_tmh.Text := v_tmh;
  BitBtn1.SetFocus;
end;

procedure Tfrm_yzinput_lishi.QRSubDetail1BeforePrint( Sender: TQRCustomBand;
  var PrintBand: Boolean );
begin
  if paper_size > 27 then
  begin
    quickrep1.NewPage;
    paper_size := 0;
  end;

end;

procedure Tfrm_yzinput_lishi.QRSubDetail1NeedData( Sender: TObject;
  var MoreData: Boolean );
var
  I: integer;
begin
  MoreData := True;
  i := 1;
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
    ksrq.Caption := sp_zxjl_cq_dy.FieldByName( 'ksrq' ).Asstring;
    kdysmc.Caption := sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).Asstring;
    zxhsmc.Caption := sp_zxjl_cq_dy.FieldByName( 'zxhsmc' ).Asstring;
    if ( ( length( sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200 ) <= 2 then
      paper_size := paper_size + ( ( length( sp_zxjl_cq_dy.FieldByName( 'min_jlsj' ).Asstring ) * 8 ) div 46 )
    else
      paper_size := paper_size + ( ( length( sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200 );
    if sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
    begin
      I := ( length( sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
      qrgrimage1.enabled := true;
      qrgrimage1.Top := 1;
      qrgrimage1.left := ypyf.left - 20;
      qrgrimage1.height := i * ypyf.height;
      ypyf.top := i * ypyf.height div 2;
      ypyf.Caption := trim( sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
      xmmc.Width := 200;
      xmmc.caption := sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
    end
    else
    begin
      qrgrimage1.enabled := false;
      xmmc.Width := 257;
      ypyf.Caption := '';
      xmmc.caption := sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + '  ' + trim( sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
    end;
    tzrq.Caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
    tzysmc.Caption := sp_zxjl_cq_dy.FieldByName( 'tzysmc' ).Asstring;
    zhhsmc.Caption := sp_zxjl_cq_dy.FieldByName( 'zhhsmc' ).Asstring;
    zxzxsj.Caption := sp_zxjl_cq_dy.FieldByName( 'min_jlsj' ).Asstring;
    zhzxsj.Caption := sp_zxjl_cq_dy.FieldByName( 'max_jlsj' ).Asstring;
    sp_zxjl_cq_dy.Next;

  end;
end;

procedure Tfrm_yzinput_lishi.QRSubDetail2BeforePrint( Sender: TQRCustomBand;
  var PrintBand: Boolean );
begin
  if paper_size > 31 then
  begin
    quickrep2.NewPage;
    paper_size := 0;
  end;
end;

procedure Tfrm_yzinput_lishi.QRSubDetail2NeedData( Sender: TObject;
  var MoreData: Boolean );
var
  I: integer;
begin
  MoreData := True;
  i := 1;
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
    ksrq_ls.Caption := sp_zxjl_ls_dy.FieldByName( 'ksrq' ).Asstring;
    kdys_ls.Caption := sp_zxjl_ls_dy.FieldByName( 'kdysmc' ).Asstring;
    zxryxm_ls.Caption := sp_zxjl_ls_dy.FieldByName( 'zxhsmc' ).Asstring;
    //     zxsj_ls.Caption := sp_zxjl_ls_dy.FieldByName('gysj').Asstring;
    if ( ( length( sp_zxjl_ls_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 292 ) <= 2 then
      paper_size := paper_size + ( ( length( sp_zxjl_ls_dy.FieldByName( 'gysj' ).Asstring ) * 8 ) div 53 )
    else
      paper_size := paper_size + ( ( length( sp_zxjl_ls_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 292 );
    if sp_zxjl_ls_dy.FieldByName( 'fzph' ).asstring <> '' then
    begin
      I := ( length( sp_zxjl_ls_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 272;
      QRImage1.enabled := true;
      QRImage1.top := 1;
      QRImage1.left := ypyf_ls.left - 20;
      QRImage1.height := i * ypyf_ls.height;
      ypyf_ls.top := i * ypyf.height div 2;
      ypyf_ls.Caption := trim( sp_zxjl_ls_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( sp_zxjl_ls_dy.FieldByName( 'ypyf' ).asstring );
      xmmc_ls.Width := 272;
      xmmc_ls.caption := sp_zxjl_ls_dy.FieldByName( 'xmmc' ).Asstring;
    end
    else
    begin
      QRImage1.enabled := false;
      xmmc_ls.Width := 292;
      ypyf_ls.Caption := '';
      xmmc_ls.caption := sp_zxjl_ls_dy.FieldByName( 'xmmc' ).Asstring + '  ' + trim( sp_zxjl_ls_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( sp_zxjl_ls_dy.FieldByName( 'ypyf' ).asstring );
    end;
    zxsj_ls.Caption := sp_zxjl_ls_dy.FieldByName( 'gysj' ).Asstring;
    sp_zxjl_ls_dy.Next;

  end;
end;

procedure Tfrm_yzinput_lishi.cxTabSheet2Show( Sender: TObject );
begin
  Proc_Seek_dj( zyh );
end;

procedure Tfrm_yzinput_lishi.cxTabSheet3Show( Sender: TObject );
begin
  qry_cx_jyjg.Close;
  qry_cx_jyjg.Parameters.ParamByName( 'zyh' ).Value := zyh;
  qry_cx_jyjg.Parameters.ParamByName('zyh1').Value := zyh;
  qry_cx_jyjg.Open;
  qry_cx_jyjg_wsw.Close;
  qry_cx_jyjg_wsw.Parameters.ParamByName( 'zyh' ).Value := zyh;
  qry_cx_jyjg_wsw.Parameters.ParamByName('zyh1').Value := zyh;
  qry_cx_jyjg_wsw.Open;
  if qry_cx_jyjg.RecordCount > 0 then
    cxGrid3DBTableView1.DataController.Groups.FullExpand;
  if qry_cx_jyjg_wsw.RecordCount > 0 then
    cxGridDBTableView1.DataController.Groups.FullExpand;
end;

//----calmhawk---2011-05-21----术后医嘱----

procedure Tfrm_yzinput_lishi.shyz;
var
  _id, _zhzxsj, _yzsx: string;
  _fzph: string;
  _yzsj: string;
  sczt, i: integer;
  yztzsj:TDateTime;
begin

  DM_data.qry_pub.close;
  DM_data.qry_pub.sql.text:='select * from zybl_zyyz where zyh='+''''+zyh+''''+
                              ' and xyzbz=0 and (yzsx=''长期'' or (yzsx=''临时'' and tzbz=0 and isnull(shry,'''')<>''未用''))';
  DM_data.qry_pub.open;
  if DM_data.qry_pub.RecordCount>0 then
  begin
  if application.MessageBox( '当前有医嘱未执行，是否还要开术后医嘱?', '提示信息', mb_iconquestion + mb_okcancel + mb_defbutton1 ) = idcancel then
    abort;
  end
  else
  begin
  if pub_yydm='0015' then
  begin
    if application.MessageBox( '当前所有医嘱都已执行，是否要开术后医嘱?', '提示信息', mb_iconquestion + mb_okcancel + mb_defbutton1 ) = idcancel then
    abort;
  end;
  end;

  if Application.MessageBox( '添加术后医嘱，会停止原所有长期医嘱。下一步选择停止医嘱时间，' + '是否确认添加?', '询问', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON1 ) = IDYES then
  begin
    yztzsj:=p_pub_sj.func_sjxz();
    if yztzsj=strtodatetime('1900-01-01') then
     Exit
     else
    tzyzsj := formatdatetime( 'yyyy-mm-dd hh:mm:ss', yztzsj );
    //时间停止医嘱
    sp_yzsj.Close;
    sp_yzsj.Parameters.ParamByName( '@scyzsj' ).Value := tzyzsj;
    sp_yzsj.ExecProc;
    _yzsj := formatdatetime( 'yyyymmdd', sp_yzsj.Parameters.ParamByName( '@scyzsj' ).Value );

    //停止所有长期医嘱
    sp_dryz.First;
    while not sp_dryz.Eof do
    begin
      _yzsx := Trim( sp_dryz.FieldByName( 'yzsx' ).AsString );
      if ( not sp_dryz.FieldByName( 'tzbz' ).asboolean ) and
        ( sp_dryz.fieldbyname( 'zfrq' ).asdatetime <= 0 ) and
        ( sp_dryz.fieldbyname( 'id' ).AsString <> '' ) and
        ( _yzsx = '长期' )
        then
      begin
        _id := sp_dryz.FieldByName( 'id' ).AsString;
        _zhzxsj := sp_dryz.FieldByName( 'zhzxsj' ).AsString;

        _fzph := sp_dryz.FieldByName( 'fzph' ).AsString;
        if _fzph <> '' then
        begin
          sp_tzyz.Close;
          sp_tzyz.Parameters.ParamByName( '@zyh' ).Value := zyh;
          sp_tzyz.Parameters.ParamByName( '@zxsj' ).Value := _yzsj;
          sp_tzyz.Parameters.ParamByName( '@tzyzsj' ).Value := strtodatetime( tzyzsj );
          sp_tzyz.Parameters.ParamByName( '@czydm' ).Value := pub_czydm;
          sp_tzyz.Parameters.ParamByName( '@id' ).Value := 0;
          sp_tzyz.Parameters.ParamByName( '@fzph' ).Value := _fzph;
          sp_tzyz.Parameters.ParamByName( '@sczt' ).Value := 9;
          sp_tzyz.ExecProc;
          sczt := sp_tzyz.Parameters.ParamByName( '@sczt' ).Value;
          if sczt <> 0 then
            application.MessageBox( '医嘱停止未成功，请重新操作！！', '提示！', mb_ok );
        end
        else
        begin
          sp_tzyz.Close;
          sp_tzyz.Parameters.ParamByName( '@zyh' ).Value := zyh;
          sp_tzyz.Parameters.ParamByName( '@zxsj' ).Value := _yzsj;
          sp_tzyz.Parameters.ParamByName( '@tzyzsj' ).Value := strtodatetime( tzyzsj );
          sp_tzyz.Parameters.ParamByName( '@czydm' ).Value := pub_czydm;
          sp_tzyz.Parameters.ParamByName( '@id' ).Value := _id;
          sp_tzyz.Parameters.ParamByName( '@fzph' ).Value := '';
          sp_tzyz.Parameters.ParamByName( '@sczt' ).Value := 9;
          sp_tzyz.ExecProc;
          sczt := sp_tzyz.Parameters.ParamByName( '@sczt' ).Value;
          if sczt <> 0 then
            application.MessageBox( '医嘱停止未成功，请重新操作！！', '提示！', mb_ok );
        end;

      end;
      sp_dryz.Next;
    end;
    //添加术后医嘱
    if not qry_yz.active then
    begin
      refresh_yz;
    end;
    //if qry_yz. then

    qry_yz.Insert;
    qry_yz.FieldByName( 'yzsx' ).Value := '长期';
    qry_yz.FieldByName( 'lb' ).Value := '其它';
    qry_yz.FieldByName( 'xmmc' ).Value := '术后医嘱';
    qry_yz.FieldByName( 'sl' ).Value := 0;
    qry_yz.FieldByName( 'czks' ).Value := pub_ksdm;
    qry_yz.FieldByName( 'kdks' ).Value := pub_ksdm;
    qry_yz.FieldByName( 'zyh' ).Value := zyh;
    qry_yz.FieldByName( 'tmh' ).Value := tmh;
    qry_yz.FieldByName( 'xmdm' ).Value := '';
    qry_yz.Post;

//    qry_yz.Insert;
//    qry_yz.FieldByName( 'yzsx' ).Value := '临时';
//    qry_yz.FieldByName( 'lb' ).Value := '其它';
//    qry_yz.FieldByName( 'xmmc' ).Value := '术后医嘱';
//    qry_yz.FieldByName( 'sl' ).Value := 0;
//    qry_yz.FieldByName( 'czks' ).Value := pub_ksdm;
//    qry_yz.FieldByName( 'kdks' ).Value := pub_ksdm;
//    qry_yz.FieldByName( 'zyh' ).Value := zyh;
//    qry_yz.FieldByName( 'tmh' ).Value := tmh;
//    qry_yz.FieldByName( 'xmdm' ).Value := '';
//    qry_yz.Post;

    qry_yz.Append;
    grid_yzlr.SetFocus;
    grid_yzlr.SelectedIndex := 2;

    //sp_dryz.UpdateBatch( arall );
  end;
end;



procedure Tfrm_yzinput_lishi.chyz;
var
  _id, _zhzxsj, _yzsx: string;
  _fzph: string;
  _yzsj: string;
  sczt, i: integer;
  yztzsj:TDateTime;
begin

  DM_data.qry_pub.close;
  DM_data.qry_pub.sql.text:='select * from zybl_zyyz where zyh='+''''+zyh+''''+
                              ' and xyzbz=0 and (yzsx=''长期'' or (yzsx=''临时'' and tzbz=0 and isnull(shry,'''')<>''未用''))';
  DM_data.qry_pub.open;
  if DM_data.qry_pub.RecordCount>0 then
  begin
  if application.MessageBox( '当前有医嘱未执行，是否还要开产后医嘱?', '提示信息', mb_iconquestion + mb_okcancel + mb_defbutton1 ) = idcancel then
    abort;
  end
  else
  begin
  if pub_yydm='0015' then
  begin
    if application.MessageBox( '当前所有医嘱都已执行，是否要开产后医嘱?', '提示信息', mb_iconquestion + mb_okcancel + mb_defbutton1 ) = idcancel then
    abort;
  end;
  end;

  if Application.MessageBox( '添加产后医嘱，会停止原所有长期医嘱。下一步选择停止医嘱时间，' + '是否确认添加?', '询问', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON1 ) = IDYES then
  begin
    yztzsj:=p_pub_sj.func_sjxz();
    if yztzsj=strtodatetime('1900-01-01') then
     Exit
     else
     tzyzsj := formatdatetime( 'yyyy-mm-dd hh:mm:ss', yztzsj );
    //时间停止医嘱
    sp_yzsj.Close;
    sp_yzsj.Parameters.ParamByName( '@scyzsj' ).Value := tzyzsj;
    sp_yzsj.ExecProc;
    _yzsj := formatdatetime( 'yyyymmdd', sp_yzsj.Parameters.ParamByName( '@scyzsj' ).Value );

    //停止所有长期医嘱
    sp_dryz.First;
    while not sp_dryz.Eof do
    begin
      _yzsx := Trim( sp_dryz.FieldByName( 'yzsx' ).AsString );
      if ( not sp_dryz.FieldByName( 'tzbz' ).asboolean ) and
        ( sp_dryz.fieldbyname( 'zfrq' ).asdatetime <= 0 ) and
        ( sp_dryz.fieldbyname( 'id' ).AsString <> '' ) and
        ( _yzsx = '长期' )
        then
      begin
        _id := sp_dryz.FieldByName( 'id' ).AsString;
        _zhzxsj := sp_dryz.FieldByName( 'zhzxsj' ).AsString;

        _fzph := sp_dryz.FieldByName( 'fzph' ).AsString;
        if _fzph <> '' then
        begin
          sp_tzyz.Close;
          sp_tzyz.Parameters.ParamByName( '@zyh' ).Value := zyh;
          sp_tzyz.Parameters.ParamByName( '@zxsj' ).Value := _yzsj;
          sp_tzyz.Parameters.ParamByName( '@tzyzsj' ).Value := strtodatetime( tzyzsj );
          sp_tzyz.Parameters.ParamByName( '@czydm' ).Value := pub_czydm;
          sp_tzyz.Parameters.ParamByName( '@id' ).Value := 0;
          sp_tzyz.Parameters.ParamByName( '@fzph' ).Value := _fzph;
          sp_tzyz.Parameters.ParamByName( '@sczt' ).Value := 9;
          sp_tzyz.ExecProc;
          sczt := sp_tzyz.Parameters.ParamByName( '@sczt' ).Value;
          if sczt <> 0 then
            application.MessageBox( '医嘱停止未成功，请重新操作！！', '提示！', mb_ok );
        end
        else
        begin
          sp_tzyz.Close;
          sp_tzyz.Parameters.ParamByName( '@zyh' ).Value := zyh;
          sp_tzyz.Parameters.ParamByName( '@zxsj' ).Value := _yzsj;
          sp_tzyz.Parameters.ParamByName( '@tzyzsj' ).Value := strtodatetime( tzyzsj );
          sp_tzyz.Parameters.ParamByName( '@czydm' ).Value := pub_czydm;
          sp_tzyz.Parameters.ParamByName( '@id' ).Value := _id;
          sp_tzyz.Parameters.ParamByName( '@fzph' ).Value := '';
          sp_tzyz.Parameters.ParamByName( '@sczt' ).Value := 9;
          sp_tzyz.ExecProc;
          sczt := sp_tzyz.Parameters.ParamByName( '@sczt' ).Value;
          if sczt <> 0 then
            application.MessageBox( '医嘱停止未成功，请重新操作！！', '提示！', mb_ok );
        end;

      end;
      sp_dryz.Next;
    end;
    //添加产后医嘱
    if not qry_yz.active then
    begin
      refresh_yz;
    end;
    //if qry_yz. then

    qry_yz.Insert;
    qry_yz.FieldByName( 'yzsx' ).Value := '长期';
    qry_yz.FieldByName( 'lb' ).Value := '其它';
    qry_yz.FieldByName( 'xmmc' ).Value := '产后医嘱';
    qry_yz.FieldByName( 'sl' ).Value := 0;
    qry_yz.FieldByName( 'czks' ).Value := pub_ksdm;
    qry_yz.FieldByName( 'kdks' ).Value := pub_ksdm;
    qry_yz.FieldByName( 'zyh' ).Value := zyh;
    qry_yz.FieldByName( 'tmh' ).Value := tmh;
    qry_yz.FieldByName( 'xmdm' ).Value := '';
    qry_yz.Post;

//    qry_yz.Insert;
//    qry_yz.FieldByName( 'yzsx' ).Value := '临时';
//    qry_yz.FieldByName( 'lb' ).Value := '其它';
//    qry_yz.FieldByName( 'xmmc' ).Value := '术后医嘱';
//    qry_yz.FieldByName( 'sl' ).Value := 0;
//    qry_yz.FieldByName( 'czks' ).Value := pub_ksdm;
//    qry_yz.FieldByName( 'kdks' ).Value := pub_ksdm;
//    qry_yz.FieldByName( 'zyh' ).Value := zyh;
//    qry_yz.FieldByName( 'tmh' ).Value := tmh;
//    qry_yz.FieldByName( 'xmdm' ).Value := '';
//    qry_yz.Post;

    qry_yz.Append;
    grid_yzlr.SetFocus;
    grid_yzlr.SelectedIndex := 2;

    //sp_dryz.UpdateBatch( arall );
  end;
end;


procedure Tfrm_yzinput_lishi.OnMouseWheel_yzzx( var Msg: TMsg; var Handled: Boolean );
begin
  if Msg.message = WM_MouseWheel then
  begin
    if Msg.wParam < 0 then
      SendMessage( ScrollBox1.Handle, WM_VSCROLL, SB_LINEDOWN, 0 )
    else
      SendMessage( ScrollBox1.Handle, WM_VSCROLL, SB_LINEUP, 0 );
    Handled := True;
  end;
end;


procedure Tfrm_yzinput_lishi.yzqxtf(var id:integer;var kdys:string);
var sftf:string;
begin
   sftf:='1';
   DM_data.qry_pub.close;
   DM_data.qry_pub.SQL.Text:='select * from zybl_zyyz a,zybl_zyyz_zxjl b where a.ph=b.ph and a.id='+inttostr(id);
   DM_data.qry_pub.Open;
   if DM_data.qry_pub.IsEmpty then
   begin
   sftf:='0';
   end
   else
   begin
   DM_data.qry_pub.close;
   DM_data.qry_pub.SQL.Text:='select a.*,b.fydm from zybl_zyyz a,sys_yzxm b where a.xmdm*=b.xmdm and id='+inttostr(id);
   DM_data.qry_pub.Open;
   qry_cx.Close;
   qry_cx.SQL.text:='select * from zybl_bsflb where lbmc='+''''+DM_data.qry_pub.FieldByName('lb').AsString+'''';
   qry_cx.Open;

   if DM_data.qry_pub.FieldByName('lb').AsString='药品' then
   begin
   ShowMessage('取消药品医嘱请通知护士退药品！'+DM_data.qry_pub.FieldByName('xmmc').asstring+' '+
   DM_data.qry_pub.FieldByName('sl').asstring+' '+DM_data.qry_pub.FieldByName('dw').asstring);
   end
   else if (qry_cx.IsEmpty) and
           (DM_data.qry_pub.FieldByName('lb').AsString<>'其它')  then
   begin
   if DM_data.qry_pub.FieldByName('lb').AsString='材料' then
   begin
   sp_ty_ypcx.close;
   sp_ty_ypcx.Parameters.Refresh;
   sp_ty_ypcx.Parameters.ParamByName('@zyh').Value:=zyh;
   sp_ty_ypcx.Open;
   sp_ty_ypcx.Locate('ypdm', DM_data.qry_pub.FieldByName('xmdm').asstring, []);
    if not sp_ty_ypcx.Locate('ypdm', DM_data.qry_pub.FieldByName('xmdm').asstring, []) then
    begin
     sftf:='0';
    end
    else if DM_data.qry_pub.FieldByName('sl').asfloat>sp_ty_ypcx.FieldByName('ypsyzxsl').asfloat then
    begin
     sftf:='0';
    end;

   end
   else
   begin
    qry_cx.Close;
    qry_cx.SQL.text:='select fydm,sum(fysl*(fyje/abs(fyje))) sl from zysf_zyfydx where zyh='+''''+zyh+''' group by fydm';
    qry_cx.Open;
    qry_cx.Locate('fydm', DM_data.qry_pub.FieldByName('fydm').asstring, []);
    if not qry_cx.Locate('fydm', DM_data.qry_pub.FieldByName('fydm').asstring, []) then
    begin
     sftf:='0';
    end
    else if DM_data.qry_pub.FieldByName('sl').asfloat>qry_cx.FieldByName('sl').asfloat then
    begin
     sftf:='0';
    end;
   end;
   if sftf<>'0' then
   begin
   sp_lsyztf.Close;
   sp_lsyztf.Parameters.Refresh;
   sp_lsyztf.Parameters.ParamByName('@yzid').Value:=id;
   sp_lsyztf.Parameters.ParamByName('@bqdm').Value:=pub_bqdm;
   sp_lsyztf.Parameters.ParamByName('@zyh').Value:=zyh;
   sp_lsyztf.Parameters.ParamByName('@czydm').Value:=pub_czydm;
   sp_lsyztf.Parameters.ParamByName('@kdys').Value:=kdys;
   sp_lsyztf.Parameters.ParamByName('@zxsj').Value:=FormatDateTime('yyyyMMdd',frm_func.curr_date);
   sp_lsyztf.Parameters.ParamByName('@sczt').Value:='1';
   sp_lsyztf.ExecProc;
   ShowMessage('退医嘱费用成功！');
   end;
   end;
   end;



end;

initialization
  RegisterClass( Tfrm_yzinput_lishi );
end.

