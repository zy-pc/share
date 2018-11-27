
unit p_yzinput;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Buttons, DBCtrls, Mask, ExtCtrls, Menus, GridsEh,
  QRCtrls, QuickRpt, grimgctrl, ADODB, DB, DBGridEh, cxPC, cxControls, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData,
  cxTextEdit, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid;
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
  Tfrm_yzinput = class( TForm )
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
    cxGrid3Level1: TcxGridLevel;
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
    QRgrImage2: TQRImage;
    xmmc1: TQRLabel;
    ksrq2: TQRLabel;
    kdysmc2: TQRLabel;
    xmmc2: TQRLabel;
    QRgrImage3: TQRImage;
    ypyf2: TQRLabel;
    ksrq3: TQRLabel;
    kdysmc3: TQRLabel;
    xmmc3: TQRLabel;
    QRgrImage4: TQRImage;
    ypyf3: TQRLabel;
    ksrq4: TQRLabel;
    kdysmc4: TQRLabel;
    xmmc4: TQRLabel;
    QRgrImage5: TQRImage;
    ypyf4: TQRLabel;
    ksrq5: TQRLabel;
    kdysmc5: TQRLabel;
    xmmc5: TQRLabel;
    QRgrImage6: TQRImage;
    ypyf5: TQRLabel;
    ksrq6: TQRLabel;
    kdysmc6: TQRLabel;
    xmmc6: TQRLabel;
    QRgrImage7: TQRImage;
    ypyf6: TQRLabel;
    ksrq7: TQRLabel;
    kdysmc7: TQRLabel;
    xmmc7: TQRLabel;
    QRgrImage8: TQRImage;
    ypyf7: TQRLabel;
    ksrq8: TQRLabel;
    kdysmc8: TQRLabel;
    xmmc8: TQRLabel;
    QRgrImage9: TQRImage;
    ypyf8: TQRLabel;
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
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn18: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    Panel4: TPanel;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    bt_ztsave: TBitBtn;
    bt_zt: TBitBtn;
    Button1: TBitBtn;
    cxButton1: TBitBtn;
    BitBtn10: TBitBtn;
    bt_exit: TBitBtn;
    BitBtn11: TBitBtn;
    BitBtn12: TBitBtn;
    BitBtn13: TBitBtn;
    BitBtn14: TBitBtn;
    BitBtn15: TBitBtn;
    BitBtn16: TBitBtn;
    BitBtn17: TBitBtn;
    BitBtn19: TBitBtn;
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
    procedure refresh_yz; //ˢ��ҽ����¼
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
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    function grid_yzlrMoveRecords(Sender: TObject; BookmarkList: TStrings;
      ToRecNo, TreeLevel: Integer; CheckOnly: Boolean): Boolean;
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn18Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);

  private
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
    { Private declarations }
  public
    tmh, zyh, brxm, lszyh: string; //סԺ��
    ls_dm, ls_mc, ls_ks, curr_value: string;
    ls_zylsj: single;
    scbz, ztid: integer;
    clph, xmph, ypph, jcph, jyph, qtph: string; //���ϣ����ƣ�ҩƷ����飬����,����
    zyyz_mbmc: string; //ҽ��ģ������
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
  yzsx, yzys, fzbh: string; //ҽ������ ,ҽ��ҽ��
  kz, bz: boolean; // ����AffterScoll calmhawk - 2007-01-09
  kzfs: string; // ���Ƹ�������
  kzbz, tzbz, wz: integer; //���Ʊ�־,
  p_yzlb: string; //ҽ�����
  tzyzqr: integer;
  tzyzsj, kdyzsj: string;
  maxxh: integer;
  yzxgbz:boolean;
function findinarray( myrect: TTmyrect; zd: string ): integer;
procedure initarray( myrect: TTmyrect );

const
  con_sql_zy = 'select * from zysf_zydj where (zyh=:zyh or tmh like :tmh) and ksdm=:ksdm';
  con_sql_cy = 'select * from zysf_cydj where (zyh=:zyh or tmh like :tmh) and ksdm=:ksdm';
implementation

{$R *.dfm}
uses p_dm, p_func, p_yzzt, p_treeview_ctxz, p_treeview_ctwh, p_bylsyz, p_tjyz, p_yzfz,
  p_zyyzmbmc, p_jyxmwrite_zy, p_tzyzsj, p_xgyzzxsj, p_xz_fyyf, p_cqyzxzdy, p_lsyzxzdy ,p_jcsqd;

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
    Parameters.ParamByName( '@ypdm' ).Value := qry_yz.FieldByName( 'xmdm' ).AsString;
    Parameters.ParamByName( '@ypyf' ).Value := qry_yz.FieldByName( 'ypyf' ).AsString;
    Parameters.ParamByName( '@ypyl' ).Value := qry_yz.FieldByName( 'ypyl' ).AsFloat;
    open;
  end;
  Result := realtomoney1( sp_cx_yzyljssl.fieldbyname( 'ypsl' ).AsFloat / 10 ) * 10;
end;

procedure Tfrm_yzinput.yz_cx_cqph( yzsx: string );
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
      if trim( qry_yz.FieldByName( 'lb' ).AsString ) = 'ҩƷ' then
      begin
        if trim( qry_yz.FieldByName( 'ph' ).AsString ) <> '' then
          ypph := trim( qry_yz.FieldByName( 'ph' ).Value );
      end
      else
        if trim( qry_yz.FieldByName( 'lb' ).AsString ) = '����' then
        begin
          if trim( qry_yz.FieldByName( 'ph' ).AsString ) <> '' then
            clph := trim( qry_yz.FieldByName( 'ph' ).Value );
        end
        else
          if trim( qry_yz.FieldByName( 'lb' ).AsString ) = '����' then
          begin
            if trim( qry_yz.FieldByName( 'ph' ).AsString ) <> '' then
              xmph := trim( qry_yz.FieldByName( 'ph' ).Value );
          end
          else
            if trim( qry_yz.FieldByName( 'lb' ).AsString ) = '����' then
            begin
              if trim( qry_yz.FieldByName( 'ph' ).AsString ) <> '' then
                jyph := trim( qry_yz.FieldByName( 'ph' ).Value );
            end
            else
              if trim( qry_yz.FieldByName( 'lb' ).AsString ) = '���' then
              begin
                if trim( qry_yz.FieldByName( 'ph' ).AsString ) <> '' then
                  jcph := trim( qry_yz.FieldByName( 'ph' ).Value );
              end
              else
                if trim( qry_yz.FieldByName( 'lb' ).AsString ) = '����' then
                begin
                  if trim( qry_yz.FieldByName( 'ph' ).AsString ) <> '' then
                    qtph := trim( qry_yz.FieldByName( 'ph' ).Value );
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
    if Trim(qry_yz.FieldByName( 'kdys' ).asstring)='' then
    begin
    qry_yz.FieldByName( 'kdys' ).Value := pub_czydm;
    end
    else
    begin
    DM_data.qry_pub.Close;
    DM_data.qry_pub.SQL.text:='select * from sys_czy where cfbz=1 and dm='+''''+pub_czydm+'''';
    DM_data.qry_pub.Open;
    if not DM_data.qry_pub.IsEmpty then
    qry_yz.FieldByName( 'kdys' ).Value := pub_czydm;
    
    end;
    qry_yz.FieldByName( 'kdrq' ).Value := frm_func.curr_date;
    qry_yz.post;
    qry_yz.Next;
  end;
  qry_yz.First;
  while not qry_yz.Eof do
  begin
    if ( trim( qry_yz.FieldByName( 'lb' ).AsString ) <> '����' ) and
      ( trim( qry_yz.FieldByName( 'xmdm' ).AsString ) = '' ) or ( trim( qry_yz.FieldByName( 'xmmc' ).AsString ) = '' ) then
    begin
      qry_yz.Delete;
    end
    else
      if ( trim( qry_yz.FieldByName( 'lb' ).AsString ) <> '����' ) then
      begin
        if ( trim( qry_yz.FieldByName( 'lb' ).AsString ) = '' ) then
        begin
          showMessage( '������ҽ�����!' );
          grid_yzlr.SetFocus;
          grid_yzlr.SelectedIndex := 1;
          qry_yz.EnableControls;
          abort;
        end
        else
          if ( trim( qry_yz.FieldByName( 'lb' ).AsString ) <> 'ҩƷ' ) and
            ( trim( qry_yz.FieldByName( 'lb' ).AsString ) <> '����' ) and
            ( trim( qry_yz.FieldByName( 'lb' ).AsString ) <> '����' ) and
            ( trim( qry_yz.FieldByName( 'lb' ).AsString ) <> '����' ) and
            ( trim( qry_yz.FieldByName( 'lb' ).AsString ) <> '���' ) and
            ( trim( qry_yz.FieldByName( 'lb' ).AsString ) <> '��ҩ' ) then
          begin
            showMessage( 'ҽ������������!����������!' );
            grid_yzlr.SetFocus;
            grid_yzlr.SelectedIndex := 1;
            qry_yz.EnableControls;
            abort;
          end;
        if ( trim( qry_yz.FieldByName( 'yzsx' ).AsString ) = '' ) then
        begin
          showMessage( '������ҽ������!' );
          grid_yzlr.SetFocus;
          grid_yzlr.SelectedIndex := 0;
          abort;
        end
        else
          if ( trim( qry_yz.FieldByName( 'yzsx' ).AsString ) <> '����' ) and
            ( trim( qry_yz.FieldByName( 'yzsx' ).AsString ) <> '��ʱ' ) and
            ( trim( qry_yz.FieldByName( 'lb' ).AsString ) <> '����' ) then
          begin
            showMessage( 'ҽ�������������!����������!' );
            grid_yzlr.SetFocus;
            grid_yzlr.SelectedIndex := 1;
            qry_yz.EnableControls;
            abort;
          end;
        //---------------ҩƷ��ҩ;��-----------------------------
        if ( trim( qry_yz.FieldByName( 'lb' ).AsString ) = 'ҩƷ' ) then
        begin
          if not qry_gytj.Locate( 'mc', qry_yz.FieldByName( 'yytj' ).AsString, [] ) then
          begin
            showMessage( '��ҩ;�������������������!' );
            grid_yzlr.SetFocus;
            grid_yzlr.SelectedIndex := 6;
            qry_yz.EnableControls;
            abort;
          end;
        end;
        //----------------ҩƷ�÷�-----------------------------------
        if ( trim( qry_yz.FieldByName( 'lb' ).AsString ) = 'ҩƷ' ) then
        begin
          if not qry_ypyf.Locate( 'mc', qry_yz.FieldByName( 'ypyf' ).AsString, [] ) then
          begin
            showMessage( 'ҩƷ�÷������������������!' );
            grid_yzlr.SetFocus;
            grid_yzlr.SelectedIndex := 5;
            qry_yz.EnableControls;
            abort;
          end;
        end;
        //----------------ҩƷ����-----------------------------------
        if ( trim( qry_yz.FieldByName( 'lb' ).AsString ) = 'ҩƷ' ) then
        begin
          try
            if qry_yz.FieldByName( 'ypyl' ).AsFloat < 0 then
            begin
              showMessage( 'ҩƷ���������������������������!' );
              grid_yzlr.SetFocus;
              grid_yzlr.SelectedIndex := 3;
              qry_yz.EnableControls;
              abort;
            end;
          except
            showMessage( 'ҩƷ���������������������������!' );
            grid_yzlr.SetFocus;
            grid_yzlr.SelectedIndex := 3;
            qry_yz.EnableControls;
            abort;
          end;
        end;
        //------------------ ���ÿ���-------------------------
        qry_ks.Filtered := false;
        if ( trim( qry_yz.FieldByName( 'lb' ).AsString ) <> 'ҩƷ' ) then
        begin
          if ( trim( qry_yz.FieldByName( 'czks' ).AsString ) = '' ) then
          begin
            showMessage( '������ҽ�����ÿ���!' );
            grid_yzlr.SetFocus;
            grid_yzlr.SelectedIndex := 9;
            qry_yz.EnableControls;
            abort;
          end
          else
          begin
            if not qry_ks.Locate( 'dm', trim( qry_yz.FieldByName( 'czks' ).AsString ), [] ) then
            begin
              showMessage( '���ÿ����������!����������!' );
              grid_yzlr.SetFocus;
              grid_yzlr.SelectedIndex := 9;
              qry_yz.EnableControls;
              abort;
            end;
          end;
        end;
        //---------������֤-------------------------
        if ( trim( qry_yz.FieldByName( 'sl' ).AsString ) = '' ) then
        begin
          showMessage( '��������Ϊ��!' );
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
              //  showMessage('��������С�� 1 !');
              grid_yzlr.SetFocus;
              grid_yzlr.SelectedIndex := 7;
              //qry_yz.Edit;
              abort;
            end;
          except
            showMessage( '��������С��1!' );
            grid_yzlr.SetFocus;
            grid_yzlr.SelectedIndex := 7;
            qry_yz.EnableControls;
            abort;
          end;
        end;
        //------------------��Ŀ���������һ����У��-------------------
        if not qry_xmyz.Locate( 'xmmc', trim( qry_yz.FieldByName( 'xmmc' ).AsString ), [] ) then
        begin
          showMessage( 'ҽ����Ŀ�����������!����������!' );
          grid_yzlr.SetFocus;
          grid_yzlr.SelectedIndex := 2;
          qry_yz.EnableControls;
          abort;
        end;
        //------------------��Ŀ�����һ����У��-------------------
        qry_xmyz.Locate( 'xmdm', trim( qry_yz.FieldByName( 'xmdm' ).AsString ), [] );
        if qry_xmyz.FieldByName( 'lb' ).AsString <> qry_yz.FieldByName( 'lb' ).AsString then
        begin
          showMessage( '��Ŀ��ҽ�����һ�´���!����������!' + #13 + '��ǰ��Ŀ���Ϊ "' + qry_xmyz.FieldByName( 'lb' ).AsString + '"' );
          grid_yzlr.SetFocus;
          grid_yzlr.SelectedIndex := 2;
          qry_yz.EnableControls;
          abort;
        end;
      end
      else
      if  ( trim( qry_yz.FieldByName( 'lb' ).AsString ) = '����' ) then
      begin
          if ( trim( qry_yz.FieldByName( 'czks' ).AsString ) = '' ) then
          begin
            showMessage( '������ҽ�����ÿ���!' );
            grid_yzlr.SetFocus;
            grid_yzlr.SelectedIndex := 9;
            qry_yz.EnableControls;
            abort;
          end
          else
          begin
            if not qry_ks.Locate( 'dm', trim( qry_yz.FieldByName( 'czks' ).AsString ), [] ) then
            begin
              showMessage( '���ÿ����������!����������!' );
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

procedure Tfrm_yzinput.sljc( fs: integer );
var
  ypsl: real;
begin
  if yzlb = 'ҩƷ' then
  begin
    if qry_yz.FieldByName( 'sl' ).AsInteger > 1000 then
    begin
      application.MessageBox( '��������̫����ע�⣡', '��ʾ', 0 + 48 );
      qry_yz.FieldByName( 'sl' ).AsInteger := 1;
      grid_yzlr.SelectedIndex := 7;
    end;
    {   if qry_yz.FieldByName('ypyl').AsFloat > 10000 then
       begin
         application.MessageBox('��������̫����ע�⣡', '��ʾ', 0 + 48);
         qry_yz.FieldByName('ypyl').AsFloat := 1;
         grid_yzlr.SelectedIndex := 3;
       end;}
    try

      if qry_yz.FieldByName( 'ypyl' ).AsFloat < 0 then
      begin
        showMessage( 'ҩƷ���������������������������!' );
        grid_yzlr.SetFocus;
        grid_yzlr.SelectedIndex := 3;
        abort;
      end;
    except
      showMessage( 'ҩƷ���������������������������!' );
      grid_yzlr.SetFocus;
      grid_yzlr.SelectedIndex := 3;
      abort;
    end;

    ypsl := yz_cx_yfjsypsl;
    if ( ypsl > 0 ) and ( grid_yzlr.SelectedField.FieldName <> 'sl' ) then
      qry_yz.FieldByName( 'sl' ).AsFloat := ypsl;
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
          //          if (yzlb = 'ҩƷ') or (yzlb = '����') or (yzlb='����') or then
          if ( yzlb <> '����' ) then
          begin
            try
              if ( qry_yz.FieldByName( 'sl' ).AsFloat < 1 ) and ( qry_yz.FieldByName( 'lb' ).asstring <> '����' ) then
              begin
                //showMessage('���������������������������!');
                grid_yzlr.SetFocus;
                grid_yzlr.SelectedIndex := 7;
                abort;
              end;
            except
              showMessage( 'ҩƷ���������������������������!' );
              grid_yzlr.SetFocus;
              grid_yzlr.SelectedIndex := 7;
              abort;
            end;
            yzNew( fs )
          end
          else
            grid_yzlr.SelectedIndex := 9;
        end;
  if ( yzlb = '����' ) and ( Trim( grid_yzlr.Columns[7].DisplayText ) = '' ) then
  begin
    qry_yz.Edit;
    qry_yz.FieldByName( 'sl' ).AsString := '0';
    qry_yz.Post;
  end;

end;

procedure Tfrm_yzinput.sp_dryzAfterOpen( DataSet: TDataSet );
begin
  if sp_dryz.RecordCount * 30 < screen.height - 100 then
    dbgrideh4.Height := screen.height - 50
  else
    dbgrideh4.Height := sp_dryz.RecordCount * 30;
  createrect( myrect_cx, sp_dryz, dbgrideh4, 10, 11, 16 );

end;

procedure Tfrm_yzinput.sp_zxjl_cqAfterOpen( DataSet: TDataSet );
begin
  if sp_zxjl_cq.RecordCount * 30 < screen.height - 100 then
    dbgrideh1.Height := screen.height - 50
  else
    dbgrideh1.Height := sp_zxjl_cq.RecordCount * 30;
  createrect( myrect_zx_cq, sp_zxjl_cq, dbgrideh1, 5, 6, 11 );

end;

procedure Tfrm_yzinput.sp_zxjl_lsAfterOpen( DataSet: TDataSet );
begin
  createrect( myrect_zx_ls, sp_zxjl_ls, dbgrideh3, 7, 8, 9 );

end;

procedure Tfrm_yzinput.TabSheet1Show( Sender: TObject );
begin
  dbgrideh1.OnColWidthsChanged( sender );

end;

procedure Tfrm_yzinput.TabSheet2Show( Sender: TObject );
begin
  dbgrideh3.OnColWidthsChanged( sender );

end;

function Tfrm_yzinput.find_today_yzxm( xmdm: string ): integer;
begin
  //��ѯ���ղ�Աҽ�����Ƿ��и�ҽ����Ŀ���з���1�����򷵻�0
  sp_cx_yzxm.Close;
  sp_cx_yzxm.Open;
  if sp_cx_yzxm.RecordCount = 0 then
    Result := 0;
  if sp_cx_yzxm.Locate( 'xmdm', xmdm, [loCaseInsensitive] ) then
    Result := 1
  else
    Result := 0;
end;

function Tfrm_yzinput.find_current_yzxm( xmdm: string ): integer;
var
  temp: integer;
  r: integer;
begin
  //��ѯ��ǰ�༭ҽ�����Ƿ��и�ҽ����Ŀ���з���1�����򷵻�0
  //-------------calmhawk--2007-01-29--------
  //-----------------------------------------
  //��Һ�������¼�����ִ�У�����ҩƷӦ�������ظ�
  temp := qry_yz.recno;
  if qry_yz.Locate( 'xmdm', xmdm, [loCaseInsensitive] ) then
    r := 1
  else
    r := 0;
  if ( r = 1 ) and ( ( qry_yz.fieldbyname( 'yytj' ).AsString = '����' ) or ( qry_yz.fieldbyname( 'yytj' ).AsString = '��ע' )
    or ( qry_yz.fieldbyname( 'yytj' ).AsString = '������' ) or ( qry_yz.fieldbyname( 'yytj' ).AsString = '����ע' )
    or ( qry_yz.fieldbyname( 'yytj' ).AsString = '�ڷ�' )
    or ( qry_yz.fieldbyname( 'yytj' ).AsString = '��ע' ) ) then
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
  qry_yz.Filter := ' lb = ' + '''' + 'ҩƷ' + '''' + ' and yzsx <> ' + #39 + '����' + #39;
  qry_yz.Filtered := true;
  if qry_yz.RecordCount > 0 then
  begin
    qry_yzlist.Insert;
    qry_yzlist.FieldByName( 'ph' ).Value := ypph;
    qry_yzlist.FieldByName( 'yzzs' ).Value := qry_yz.RecordCount;
    qry_yzlist.FieldByName( 'kssj' ).Value := frm_func.curr_date;

    if yzsx = '��ʱ' then
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
  qry_yz.Filter := ' lb = ' + '''' + '����' + '''' + ' and yzsx <> ' + #39 + '����' + #39;
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
  qry_yz.Filter := ' lb <> ' + '''' + '����' + '''' + ' and lb <> ' + '''' + 'ҩƷ' + '''' + ' and yzsx <> ' + #39 + '����' + #39;
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

procedure Tfrm_yzinput.tjyzfcqyz;
begin
  qry_yz.Edit;
  if trim( qry_yz.FieldByName( 'lb' ).AsString ) = 'ҩƷ' then
  begin
    {    if ypph = '' then
        begin
          ypph := get_sjh(pub_czydm);
        end;   }
    qry_yz.FieldByName( 'ph' ).Value := get_sjh( pub_czydm ); //ypph
  end
  else
    if trim( qry_yz.FieldByName( 'lb' ).AsString ) = '����' then
    begin
      {      if clph = '' then
            begin
              clph := get_sjh(pub_czydm);
            end;   }
      qry_yz.FieldByName( 'ph' ).Value := get_sjh( pub_czydm ); //clph;
    end
    else
      if trim( qry_yz.FieldByName( 'lb' ).AsString ) = '����' then
      begin
        {        if xmph = '' then
                begin
                  xmph := get_sjh(pub_czydm);
                end; }
        qry_yz.FieldByName( 'ph' ).Value := get_sjh( pub_czydm ); //xmph;
      end
      else
        if trim( qry_yz.FieldByName( 'lb' ).AsString ) = '����' then
        begin
          {          if jyph = '' then
                    begin
                      jyph := get_sjh(pub_czydm);
                    end;   }
          qry_yz.FieldByName( 'ph' ).Value := get_sjh( pub_czydm ); // jyph;
        end
        else
          if trim( qry_yz.FieldByName( 'lb' ).AsString ) = '���' then
          begin
            {            if jcph = '' then
                        begin
                          jcph := get_sjh(pub_czydm);
                        end; }
            qry_yz.FieldByName( 'ph' ).Value := get_sjh( pub_czydm ); //jcph;
          end
          else
            if trim( qry_yz.FieldByName( 'lb' ).AsString ) = '��ҩ' then
            begin
              {            if jcph = '' then
                          begin
                            jcph := get_sjh(pub_czydm);
                          end; }
              qry_yz.FieldByName( 'ph' ).Value := get_sjh( pub_czydm ); //jcph;
            end
            else
              if trim( qry_yz.FieldByName( 'lb' ).AsString ) = '����' then
              begin
                {              if qtph = '' then
                              begin
                                qtph := get_sjh(pub_czydm);
                              end;   }
                qry_yz.FieldByName( 'ph' ).Value := get_sjh( pub_czydm ); //qtph;
              end;
  qry_yz.Post;
end;

procedure Tfrm_yzinput.zdkz;
begin
  yzlb := qry_yz.FieldByName( 'lb' ).AsString;
  yzsx := qry_yz.FieldByName( 'yzsx' ).AsString;
  if ( yzlb = 'ҩƷ' ) then
  begin
    grid_yzlr.Columns[3].ReadOnly := false;
    grid_yzlr.Columns[4].ReadOnly := true;
    grid_yzlr.Columns[5].ReadOnly := false;
    grid_yzlr.Columns[6].ReadOnly := false;
    grid_yzlr.Columns[8].ReadOnly := true;
    grid_yzlr.Columns[9].ReadOnly := true;
  end
  else
    if ( ( yzlb = '����' ) and isbqkf ) then
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
      if ( yzlb = '��ҩ' ) then
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
        if ( yzlb = '����' ) then
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
          if ( yzlb = '����' ) then
          begin
            grid_yzlr.Columns[3].ReadOnly := false;
            grid_yzlr.Columns[4].ReadOnly := true;
            grid_yzlr.Columns[5].ReadOnly := true;
            grid_yzlr.Columns[6].ReadOnly := true;
            grid_yzlr.Columns[7].ReadOnly := false;
            grid_yzlr.Columns[8].ReadOnly := true;
            grid_yzlr.Columns[9].ReadOnly := false;
            grid_yzlr.Columns[10].ReadOnly := false;

          end
          else
            if ( yzlb = '���' ) then
            begin
              grid_yzlr.Columns[3].ReadOnly := false;
              grid_yzlr.Columns[4].ReadOnly := true;
              grid_yzlr.Columns[5].ReadOnly := true;
              grid_yzlr.Columns[6].ReadOnly := true;
              grid_yzlr.Columns[7].ReadOnly := false;
              grid_yzlr.Columns[8].ReadOnly := true;
              grid_yzlr.Columns[9].ReadOnly := false;
              grid_yzlr.Columns[10].ReadOnly := false;

            end
            else
              if ( yzlb = '����' ) then
              begin
                grid_yzlr.Columns[3].ReadOnly := false;
                grid_yzlr.Columns[4].ReadOnly := true;
                grid_yzlr.Columns[5].ReadOnly := true;
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
  qry_yz.fieldbyname( 'xmdm' ).value := '';
  qry_yz.Post;
  if find_current_yzxm( sp_cx_yp_yz.FieldByName( 'xmdm' ).AsString ) = 0 then
  begin
    if ( yzlb = '����' ) and isbqkf then
    begin

      ypinyz;
    end
    else
    begin
      if Trim( sp_cx_yp_yz.FieldByName( 'zylsj' ).AsString ) = '' then
      begin
        ShowMessage( '�۸�Ϊ�㣬���ܵ��ã�' );
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
    application.MessageBox( '��ǰҽ�������и���Ŀ,�����ٴ�����!', '��ʾ��Ϣ', 0 + 16 );
    grid_yzlr.SelectedIndex := 7;
    abort;
  end;
  grid_yz.Visible := false;
end;

procedure Tfrm_yzinput.QuickRep1BeforePrint( Sender: TCustomQuickRep;
  var PrintReport: Boolean );
begin
//  sp_zxjl_cq_dy.first;
//  paper_size := 0;
end;

procedure Tfrm_yzinput.QuickRep2BeforePrint( Sender: TCustomQuickRep;
  var PrintReport: Boolean );
begin
  sp_zxjl_ls_dy.first;
  paper_size := 0;
end;

procedure Tfrm_yzinput.ypjs;
begin
  qry_yz.Edit;
  qry_yz.fieldbyname( 'xmdm' ).value := '';
  qry_yz.Post;
  if find_current_yzxm( sp_cx_yp_yz.FieldByName( 'ypdm' ).AsString )  <> 2 then
  begin
    if find_today_yzxm( sp_cx_yp_yz.FieldByName( 'ypdm' ).AsString ) = 1 then
      if application.MessageBox( '��ҩƷ��Ա����ʹ��,�Ƿ�Ҫ����?', '��ʾ��Ϣ', mb_iconquestion + MB_YESNO + mb_defbutton1 ) = IDYES then
      begin
        abort;
      end;
    if Trim( sp_cx_yp_yz.FieldByName( 'zylsj' ).AsString ) = '' then
    begin
      application.MessageBox( '�۸�Ϊ�㣬���ܵ��ã�', '��ʾ��Ϣ', 0 + 16 );
      abort;
    end;

    ypinyz;
  end
  else
  begin
    application.MessageBox( '��ǰҽ�������и�ҩƷ,�����ٴ�����!', '��ʾ��Ϣ', 0 + 16 );
    grid_yzlr.SelectedIndex := 2;
    abort;
  end;
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
    if trim( qry_yz.FieldByName( 'kdys' ).AsString ) = '' then
    begin
      showMessage( '����ҽ������Ϊ��!' );
      abort;
    end;
    if trim( qry_yz.FieldByName( 'czks' ).AsString ) = '' then
    begin
      showMessage( '���ÿ��Ҳ���Ϊ��!' );
    end;
    if ( trim( qry_yz.FieldByName( 'kdks' ).AsString ) <> pub_ksdm ) or ( trim( qry_yz.FieldByName( 'kdys' ).AsString ) <> trim( sp_jbxx.FieldByName( 'zgys' ).AsString ) ) then
    begin
      qry_yz.Edit;
      qry_yz.FieldByName( 'kdks' ).Value := pub_ksdm;
      qry_yz.FieldByName( 'kdys' ).Value := trim( sp_jbxx.FieldByName( 'zgys' ).AsString );
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
      showMessage( '��ҩ�����ݿ�,���ɳ�ͻ��ʾ����ִ��!' );
      jjgx := '';
    end;
  end;
  if jjgx <> '' then
  begin
    if application.MessageBox( pchar( '����ҽ����ϸ�н��ɳ�ͻ' + ''#13'' + jjgx + ''#13'' + '�Ƿ����ִ��?' ), '��ʾ��Ϣ', mb_iconquestion + mb_okcancel + mb_defbutton1 ) = idcancel then
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
    if ( qry_yz.FieldByName( 'lb' ).AsString = 'ҩƷ' ) then
      if ypid = '' then
        //��ȡҩƷID�б�
        ypid := qry_yz.FieldByName( 'id' ).AsString
      else
        ypid := ypid + ',' + qry_yz.FieldByName( 'id' ).AsString
    else
      if ( qry_yz.FieldByName( 'lb' ).AsString = '����' ) and isbqkf then
        if clid = '' then
          //��ȡ����ID�б�
          clid := qry_yz.FieldByName( 'id' ).AsString
        else
          clid := clid + ',' + qry_yz.FieldByName( 'id' ).AsString
      else
        if xmid = '' then
          //��ȡҽ����ĿID�б�
          xmid := qry_yz.FieldByName( 'id' ).AsString
        else
          xmid := xmid + ',' + qry_yz.FieldByName( 'id' ).AsString;
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
  ph := get_sjh( pub_czydm );
  //д�������¼
  qry_pub.Close;
  qry_pub.SQL.Clear;
  qry_pub.SQL.Text := 'insert into zybl_zyyz_czjl values(' + '''' + pub_czydm + '''' + ',' + '''' + pub_czyxm + '''' + ',' + '''' + 'ִ��ҽ��' + '''' + ',getdate(),' + '''' + 'ִ��ҽ��ID:' + xzyz + '''' + ')';
  //д��ҽ����¼�б� zybl_zyyz_list
  qry_yzlist.Close;
  qry_yzlist.SQL.Clear;
  //showmessage(yzlist);
  if yzlb = '����' then
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
  //��ʼ���� ִ�в���
  dm_data.ado_mydata.BeginTrans;
  try
    if yzlb <> '����' then
    begin
      yzinypfymx( zyh, ypid, xmid, clid, ph );
      qry_ypyz.ExecSQL;
    end;
    qry_yz.UpdateBatch( arall );
    qry_pub.ExecSQL;
    qry_yzlist.ExecSQL;
    dm_data.ado_mydata.CommitTrans;
    showMessage( 'ҽ���ύ�ɹ�!' );
    refresh_yz;
    scbz := 0;
  except
    dm_data.ado_mydata.RollbackTrans;
    application.MessageBox( 'ִ��ȫ��ҽ������ʧ��!', '��ʾ��Ϣ', 0 + 16 );
  end;
end;

procedure Tfrm_yzinput.yzlbsr;
begin
  qry_yz.Edit;
  if ( qry_yz.FieldByName( 'lb' ).asstring = '1' ) or ( qry_yz.FieldByName( 'lb' ).asstring = 'cl' ) or ( qry_yz.FieldByName( 'lb' ).asstring = '����' ) then
  begin
    qry_yz.FieldByName( 'lb' ).value := '����';
  end
  else
    if ( qry_yz.FieldByName( 'lb' ).asstring = '2' ) or ( qry_yz.FieldByName( 'lb' ).asstring = 'zl' ) or ( qry_yz.FieldByName( 'lb' ).asstring = '����' ) then
    begin
      qry_yz.FieldByName( 'lb' ).value := '����';
    end
    else
      if ( qry_yz.FieldByName( 'lb' ).asstring = '3' ) or ( qry_yz.FieldByName( 'lb' ).asstring = 'jy' ) or ( qry_yz.FieldByName( 'lb' ).asstring = '����' ) then
      begin
        qry_yz.FieldByName( 'lb' ).value := '����';
      end
      else
        if ( qry_yz.FieldByName( 'lb' ).asstring = '4' ) or ( qry_yz.FieldByName( 'lb' ).asstring = 'jc' ) or ( qry_yz.FieldByName( 'lb' ).asstring = '���' ) then
        begin
          qry_yz.FieldByName( 'lb' ).value := '���';
        end
        else
          if ( qry_yz.FieldByName( 'lb' ).asstring = '5' ) or ( qry_yz.FieldByName( 'lb' ).asstring = 'qt' ) or ( qry_yz.FieldByName( 'lb' ).asstring = '����' ) then
          begin
            qry_yz.FieldByName( 'lb' ).value := '����';
          end
          else
            if ( qry_yz.FieldByName( 'lb' ).asstring = '6' ) or ( qry_yz.FieldByName( 'lb' ).asstring = 'zy' ) or ( qry_yz.FieldByName( 'lb' ).asstring = '��ҩ' ) then
            begin
              qry_yz.FieldByName( 'lb' ).value := '��ҩ';
            end
            else
              qry_yz.FieldByName( 'lb' ).value := 'ҩƷ';
  //�޸�ҽ���������ԭ�����ϸ
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

procedure Tfrm_yzinput.yzsxsr( fs: integer );
begin
  if ( qry_yz.FieldByName( 'yzsx' ).asstring = '1' ) or ( qry_yz.FieldByName( 'yzsx' ).asstring = 'ls' ) or ( qry_yz.FieldByName( 'yzsx' ).asstring = '��ʱ' ) then
  begin
    qry_yz.FieldByName( 'yzsx' ).value := '��ʱ';
  end
  else
  begin
    qry_yz.FieldByName( 'yzsx' ).value := '����';
  end;
  yzsx := qry_yz.FieldByName( 'yzsx' ).AsString;
  if fs <> 0 then
    grid_yzlr.SelectedIndex := grid_yzlr.SelectedIndex + 1;
end;

procedure Tfrm_yzinput.yzXmsr( fs: integer );
var
  ls_cxpym: string;
  lb: string;
begin
  ls_cxpym := trim( grid_yzlr.Columns[2].DisplayText );
  if ( ls_cxpym = '' ) then
  begin
    exit;
  end;
  if ( yzlb = '����' ) then
  begin
    qry_qtyzxm.Close;
    qry_qtyzxm.SQL.text := 'select rtrim(xmdm) ��Ŀ����,rtrim(xmmc) ��Ŀ����,rtrim(dw) ��λ  from sys_yzxm where qybz=1 and zybz=1 and substring(dldm,1,4)=''0106'' and ( xmmc like ''%' + ls_cxpym + '%'' or pym like ''%' + ls_cxpym + '%'' or xmdm like ''%' + ls_cxpym + '%'')';
    qry_qtyzxm.Open;
    if qry_qtyzxm.RecordCount < 1 then
    begin
      ShowMessage( '�޴�������Ŀ' );
      grid_yzlr.SetFocus;
      xminyz;
      grid_yzlr.SelectedIndex := 7;
    end
    else
      if qry_qtyzxm.RecordCount = 1 then
      begin
        ls_cxpym := Trim( qry_qtyzxm.FieldByName( '��Ŀ����' ).AsString );
        qry_yz.Edit;
        qry_yz.FieldByName( 'xmmc' ).asstring := Trim( qry_qtyzxm.FieldByName( '��Ŀ����' ).AsString );
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
  if ( lb = 'ҩƷ' ) then //---ҩƷҽ��¼��----
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
      showMessage( 'ҩƷδ�ҵ�!' );
    end;
  end
  else
    if ( lb = '��ҩ' ) then //---ҩƷҽ��¼��----
    begin
      sp_cx_yp_yz.Close;
      sp_cx_yp_yz.Parameters.ParamValues['@pym'] := ls_cxpym;
      sp_cx_yp_yz.Parameters.ParamValues['@ksdm'] := prv_zyfdm;
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
          grid_yzlr.SelectedIndex := 7;
      end;
      if sp_cx_yp_yz.RecordCount < 1 then
      begin
        tzbz := 0;
        showMessage( 'ҩƷδ�ҵ�!' );
      end;
    end
    else
      if ( lb = '����' ) and isbqkf then
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
          showMessage( '����δ�ҵ�!' );
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
              ShowMessage( '�۸�Ϊ�㣬���ܵ��ã�' );
              Abort;
            end;
            qtjs;
            if fs <> 0 then
              grid_yzlr.SelectedIndex := 7;
          end
          else
            if sp_cx_yp_yz.RecordCount < 1 then
            begin
              tzbz := 0;
              showMessage( '��Ŀδ�ҵ�!' );
            end;
      end;
end;

procedure Tfrm_yzinput.yzNew( fs: integer );
begin
  if (grid_yzlr.SelectedIndex = 11) and (Trim(grid_yzlr.Columns[10].DisplayText)='') then
  begin
    ShowMessage('����д���ÿ��ң�');
    qry_yz.FieldByName('zyh').AsString:=zyh;
    qry_yz.FieldByName('tmh').AsString:=tmh;
    qry_yz.FieldByName('kdks').AsString:=pub_ksdm;
    grid_yzlr.SelectedIndex := 10;
    //qry_yz.FieldByName('tmh').AsString:=tmh;
  end
  else if (grid_yzlr.SelectedIndex = 9) and (Trim(grid_yzlr.Columns[10].DisplayText)='') then
  begin
    ShowMessage('����д���ÿ��ң�');
    qry_yz.FieldByName('zyh').AsString:=zyh;
    qry_yz.FieldByName('tmh').AsString:=tmh;
    qry_yz.FieldByName('kdks').AsString:=pub_ksdm;
    grid_yzlr.SelectedIndex := 10;
    //qry_yz.FieldByName('tmh').AsString:=tmh;
  end

    else if (grid_yzlr.SelectedIndex = 12) and (Trim(grid_yzlr.Columns[10].DisplayText)='') then
  begin
    ShowMessage('����д���ÿ��ң�');
    qry_yz.FieldByName('zyh').AsString:=zyh;
    qry_yz.FieldByName('tmh').AsString:=tmh;
    qry_yz.FieldByName('kdks').AsString:=pub_ksdm;
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
  if fs <> 0 then
  begin
    qry_yz.Next;
    if not qry_yz.Eof then //�����ǰ��¼���м�¼���޸�
    begin
      qry_yz.Edit;
      if fs <> 0 then
        grid_yzlr.SelectedIndex := 1;
    end
    else
    begin //��ǰ��¼����û�м�¼������
      qry_yz.append;
      grid_yzlr.SetFocus;
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
  //������ҽ��
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

    qry_yz.FieldByName( 'xh' ).Asinteger := maxxh + 1;
    maxxh := maxxh + 1;

    if sp_cx_yp_yz.fieldbyname( 'sfdmyp' ).asboolean then
      qry_yz.FieldByName( 'yplb' ).AsString := '����ҩƷ';
    qry_yz.Post;
  end;
end;

procedure Tfrm_yzinput.xzsm( Sender: TDbmemo );
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

procedure Tfrm_yzinput.dbg_ysDblClick( Sender: TObject );
begin
  yzys := qry_ys.FieldByName( 'dm' ).AsString;
  e_yzys.Text := qry_ys.FieldByName( 'mc' ).AsString;
  zz.ActivePage := Tab_yp;
  grid_yzlr.SetFocus;
  grid_yzlr.SelectedIndex := 1;
end;

procedure Tfrm_yzinput.dbg_ysExit( Sender: TObject );
begin
  yzys := qry_ys.FieldByName( 'dm' ).AsString;
  e_yzys.Text := qry_ys.FieldByName( 'mc' ).AsString;
  dbg_ys.Visible := false;
  db_brxx.Visible := false;
end;

procedure Tfrm_yzinput.dbg_ysKeyPress( Sender: TObject; var Key: Char );
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

procedure Tfrm_yzinput.db_brxxDblClick( Sender: TObject );
begin
  e_yzys.SetFocus;
end;

procedure Tfrm_yzinput.db_brxxExit( Sender: TObject );
begin
  dbg_ys.Visible := false;
  db_brxx.Visible := false;
  zyh := sp_jbxx.FieldByName( 'zyh' ).AsString;
  tmh := sp_jbxx.FieldByName( 'tmh' ).AsString;
  brxm := sp_jbxx.FieldByName( 'brxm' ).AsString;
  e_tmh.Text := tmh;
  if trim( dbedit11.Text ) <> '' then
    e_yzys.Text := DBEdit11.Text;
  refresh_yz;
  sp_dryz.Close;
  sp_dryz.Parameters.ParamByName( '@zyh' ).Value := zyh;
  sp_dryz.Parameters.ParamByName( '@yzsx' ).Value := 'ȫ��';
  sp_dryz.Open;
end;

procedure Tfrm_yzinput.db_brxxKeyDown( Sender: TObject; var Key: Word;
  Shift: TShiftState );
begin
  if key = 13 then
  begin
    e_yzys.SetFocus;
  end;
end;

procedure Tfrm_yzinput.delete_yz( key: word );
begin
  if ( key = vk_delete ) and ( qry_yz.RecordCount > 0 ) then
  begin
    if application.MessageBox( '�Ƿ�ɾ����ҽ��?', '��ʾ��Ϣ', mb_iconquestion + mb_okcancel + mb_defbutton1 ) = idok then
    begin
      qry_yz.Edit;
      qry_yz.Delete;
    end;
  end;
end;

procedure Tfrm_yzinput.xminyz;
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
  if yzlb = '����' then
  begin
    qry_yz.FieldByName( 'xmdm' ).AsString := '����';
    qry_yz.FieldByName( 'xmmc' ).AsString := grid_yzlr.Columns[2].DisplayText;
    qry_yz.FieldByName( 'dw' ).AsString := '';
    qry_yz.FieldByName( 'kdks' ).AsString := pub_ksdm;
    qry_yz.FieldByName( 'kdrq' ).AsDateTime := frm_func.curr_date;
    qry_yz.FieldByName( 'kdys' ).AsString := sp_jbxx.FieldByName( 'zgys' ).AsString;
    qry_yz.FieldByName( 'yplsj' ).AsFloat := 0;
    qry_yz.FieldByName( 'sl' ).AsString := '0';
    qry_yz.FieldByName( 'czks' ).value := pub_ksdm;
    qry_xmyz.insert;
    qry_xmyz.FieldByName( 'xmdm' ).AsString := '����';
    qry_xmyz.FieldByName( 'xmmc' ).AsString := grid_yzlr.Columns[2].DisplayText;
    qry_xmyz.FieldByName( 'lb' ).AsString := qry_yz.FieldByName( 'lb' ).AsString;
    qry_yz.FieldByName( 'kdys' ).AsString := sp_jbxx.FieldByName( 'zgys' ).AsString;
    qry_xmyz.post;
    qry_yz.FieldByName( 'yzsx' ).AsString;
    qry_yz.FieldByName( 'xh' ).Asinteger := maxxh + 1;
    maxxh := maxxh + 1;
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
    qry_yz.FieldByName( 'kdys' ).AsString := sp_jbxx.FieldByName( 'zgys' ).AsString;
    qry_yz.FieldByName( 'yplsj' ).AsFloat := sp_cx_yp_yz.FieldByName( 'zylsj' ).AsFloat;
    qry_yz.FieldByName( 'jyyb' ).AsString := sp_cx_yp_yz.FieldByName( 'yb' ).asstring;
    qry_yz.FieldByName( 'sl' ).AsFloat := 1;
    qry_yz.FieldByName( 'jyflbh' ).AsString := sp_cx_yp_yz.FieldByName( 'dldm' ).AsString;

    qry_yz.FieldByName( 'xh' ).Asinteger := maxxh + 1;
    maxxh := maxxh + 1;

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
    grid_yzlr.SelectedIndex := 7;
  end;
end;

procedure Tfrm_yzinput.ypinyz;
begin
  //ҩƷ��Ϣд��ҽ��
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
  qry_yz.FieldByName( 'kdys' ).AsString := sp_jbxx.FieldByName( 'zgys' ).AsString;
  qry_yz.FieldByName( 'xh' ).Asinteger := maxxh + 1;
  maxxh := maxxh + 1;

  if ( isbqkf ) and ( yzlb = '����' ) then
  begin
    qry_yz.FieldByName( 'czks' ).AsString := pub_ksdm;
  end
  else
  begin
    if yzlb = 'ҩƷ' then

      qry_yz.FieldByName( 'czks' ).AsString := pub_zyxyfdm
    else
      qry_yz.FieldByName( 'czks' ).AsString := prv_zyfdm;
  end;
  qry_yz.FieldByName( 'gg' ).AsString := sp_cx_yp_yz.FieldByName( 'ypgg' ).AsString;
  if sp_cx_yp_yz.fieldbyname( 'sfdmyp' ).asboolean then
    qry_yz.FieldByName( 'yplb' ).AsString := '����ҩƷ';
  qry_xmyz.insert;
  qry_xmyz.FieldByName( 'xmdm' ).AsString := sp_cx_yp_yz.FieldByName( 'ypdm' ).AsString;
  qry_xmyz.FieldByName( 'xmmc' ).AsString := trim( sp_cx_yp_yz.FieldByName( 'ypmc' ).AsString );
  qry_xmyz.FieldByName( 'lb' ).AsString := qry_yz.FieldByName( 'lb' ).AsString;
  qry_xmyz.post;
end;

procedure Tfrm_yzinput.refresh_yz;
var
  ls_sql: string;
begin
  ls_sql := 'select * from zybl_zyyz where zyh=:cxzyh and zxbz=0 and tzbz =0 order by xh';
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
  sp_dryz.Parameters.ParamByName( '@yzsx' ).Value := 'ȫ��';
  sp_dryz.Open;

end;

procedure Tfrm_yzinput.BBtn_print_cqClick( Sender: TObject );
begin
  with sp_zxjl_cq_dy do
  begin
    Close;
    Parameters.ParamByName( '@zyh' ).Value := sp_jbxx.FieldByName( 'zyh' ).AsString;
    Parameters.ParamByName( '@fs' ).Value := 0;
    Open;
  end;
  sp_zxjl_cq_dy.first;
  QRL_yymc_cq.Caption := pub_yymc + '����ҽ����¼��';
  QRL_brxm_cq.Caption := '��������:' + sp_jbxx.FieldByName( 'brxm' ).AsString;
  QRL_tmh_cq.Caption := 'סԺ��:' + sp_jbxx.FieldByName( 'tmh' ).AsString;
  QRL_bch_cq.Caption := '������:' + sp_jbxx.FieldByName( 'bch' ).AsString;
  xb_cq.Caption := '�Ա�:' + trim( sp_jbxx.FieldByName( 'brxb' ).AsString );
  nl_cq.Caption := '����:' + trim( sp_jbxx.FieldByName( 'brnl' ).AsString );
  zd_cq.Caption := '���:' + trim( sp_jbxx.FieldByName( 'ryzd' ).AsString );
  QRL_dysj_cq.Caption := '��ӡʱ��:' + FormatDatetime( 'yyyy��mm��dd��', frm_func.curr_date );
  sj1.caption := '����' + #13 + 'ʱ��';
  sj2.caption := 'ִ��' + #13 + 'ʱ��';
  sj3.caption := '����' + #13 + 'ʱ��';
  sj4.caption := 'ִ��' + #13 + 'ʱ��';

  QuickRep1.Prepare;
  paper_size := 0;
  QRL_ys_cq.Caption := '��' + IntToStr( QuickRep1.Printer.PageCount ) + 'ҳ';
  QuickRep1.preview;
end;

procedure Tfrm_yzinput.BBtn_print_lsClick( Sender: TObject );
begin
  with sp_zxjl_ls_dy do
  begin
    Close;
    Parameters.ParamByName( '@zyh' ).Value := sp_jbxx.FieldByName( 'zyh' ).AsString;
    Parameters.ParamByName( '@fs' ).Value := 1;
    Open;
  end;
  sp_zxjl_ls_dy.first;
  QRL_yymc_ls.Caption := pub_yymc + '��ʱҽ����¼��';
  QRL_brxm_ls.Caption := '��������:' + trim( sp_jbxx.FieldByName( 'brxm' ).AsString );
  QRL_tmh_ls.Caption := 'סԺ��:' + trim( sp_jbxx.FieldByName( 'tmh' ).AsString );
  QRL_bch_ls.Caption := '������:' + trim( sp_jbxx.FieldByName( 'bch' ).AsString );
  xb_ls.Caption := '�Ա�:' + trim( sp_jbxx.FieldByName( 'brxb' ).AsString );
  nl_ls.Caption := '����:' + trim( sp_jbxx.FieldByName( 'brnl' ).AsString );
  zd_ls.Caption := '���:' + trim( sp_jbxx.FieldByName( 'ryzd' ).AsString );

  QRL_dysj_ls.Caption := '��ӡʱ��:' + FormatDatetime( 'yyyy��mm��dd��', frm_func.curr_date );
  QuickRep2.Prepare;
  paper_size := 0;
  QRL_ys_ls.Caption := '��' + IntToStr( QuickRep2.Printer.PageCount ) + 'ҳ';
  QuickRep2.Preview;
end;

procedure Tfrm_yzinput.BitBtn18Click(Sender: TObject);
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
  sp_zxjl_cq_dy.Filter := '(yytj=''��ע'' and kdks='+''''+pub_ksdm+''''+' and kdrq>='+''''+formatdatetime('yy-MM-dd',Now)+' 00:00'+''')';

  sp_zxjl_cq_dy.filter:=sp_zxjl_cq_dy.filter+' or '+ '(yytj=''��ע'' and kdks='+''''+pub_ksdm+''''+' and kdrq>='+''''+formatdatetime('yy-MM-dd',Now)+' 00:00'+''')';
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
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).Width := 0;
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
      QRLabel45.Caption := pub_yymc + '��ʱע��ƻ�ִ�е�';
      QRLabel46.Caption := '����:' + sp_jbxx.fieldbyname( 'brxm' ).asstring;
      QRLabel50.Caption := '������:' + Trim(DM_data.qry_pub.FieldByName('yybch').asstring);
      QRLabel51.Caption := '�Ա�:' + sp_jbxx.fieldbyname( 'brxb' ).asstring;
      QRLabel52.Caption := '����:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
      QRLabel53.Caption := FormatDateTime( 'yyyy', now ) + '��';
      QRLabel67.Caption:='����:' + sp_jbxx.fieldbyname( 'brxm' ).asstring+'      '+
                         '������:' + Trim(DM_data.qry_pub.FieldByName('yybch').asstring)+'      '+
                         '�Ա�:' + sp_jbxx.fieldbyname( 'brxb' ).asstring+'      '+
                         '����:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
      //QuickRep3.Prepare;
      QuickRep5.Preview;
    end;
  end;
end;

procedure Tfrm_yzinput.BitBtn1Click( Sender: TObject );
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

procedure Tfrm_yzinput.BitBtn2Click( Sender: TObject );
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
    p_lsyzxzdy.sfxse:='';
    frm_lsyzxzdy.showmodal;
  finally
    frm_lsyzxzdy.free;
  end;
end;

procedure Tfrm_yzinput.BitBtn3Click( Sender: TObject );
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
  sp_zxjl_cq_dy.Filtered := False;
  sp_zxjl_cq_dy.Filter := '(yytj=''����'' and  tzrq=null and kdks='+''''+pub_ksdm+''')'+' or (yytj=''��������'' and  tzrq=null and kdks='+''''+pub_ksdm+''')';;
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
            aControl := DetailBand1.FindChildControl( 'ksrq' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            aControl := DetailBand1.FindChildControl( 'kdysmc' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            DetailBand1.FindChildControl( 'qrgrimage' + IntToStr( j ) ).enabled := false;
            TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
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
      QRLabel2.Caption := pub_yymc + '������Һ�ƻ�ִ�е�';
      DM_data.qry_pub.Close;
      DM_data.qry_pub.SQL.text:='select * from sys_kscwsz where bqdm='+''''+pub_bqdm+''''+' and bcbh='+''''+trim(sp_jbxx.fieldbyname( 'bch' ).asstring)+'''';
      DM_data.qry_pub.Open;

      QRLabel3.Caption := '����:' + sp_jbxx.fieldbyname( 'brxm' ).asstring;
      QRLabel20.Caption := '������:' + Trim(DM_data.qry_pub.FieldByName('yybch').asstring);
      QRLabel21.Caption := '�Ա�:' + sp_jbxx.fieldbyname( 'brxb' ).asstring;
      QRLabel26.Caption := '����:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
      ny.Caption := FormatDateTime( 'yyyy', now ) + '��';

      QRLabel61.Caption:='����:' + sp_jbxx.fieldbyname( 'brxm' ).asstring+'      '+
                          '������:' + Trim(DM_data.qry_pub.FieldByName('yybch').asstring)+'      ';//+
                          //'�Ա�:' + sp_jbxx.fieldbyname( 'brxb' ).asstring +'      '+
                          //'����:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
      //QuickRep3.Prepare;
      QuickRep3.Preview;
    end;
  end;
end;

procedure Tfrm_yzinput.BitBtn4Click( Sender: TObject );
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
  sp_zxjl_cq_dy.Filtered := False;
  sp_zxjl_cq_dy.Filter := 'yytj=''�ڷ�'' and tzrq=null';
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
            TQRLabel( QRBand7.FindChildControl( 'xmmc_' + IntToStr( j - 1 ) ) ).Width := 0;
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
      DM_data.qry_pub.SQL.text:='select * from sys_kscwsz where bqdm='+''''+pub_bqdm+''''+' and bcbh='+''''+trim(sp_jbxx.fieldbyname( 'bch' ).asstring)+'''';
      DM_data.qry_pub.Open;
      QRLabel31.Caption := pub_yymc + 'ҽ��ִ�е�(�ڷ�ҩ)';
      QRLabel32.Caption := '����:' + sp_jbxx.fieldbyname( 'brxm' ).asstring;
      QRLabel36.Caption := '����:' + Trim(DM_data.qry_pub.FieldByName('yybch').asstring);
      qrlbl_nf_tmh.Caption := 'סԺ��:' + sp_jbxx.fieldbyname( 'tmh' ).asstring;
      qrlbl_nfQRL_bq_cq.Caption := '����:' + pub_bqmc;
      QuickRep4.Prepare;
      ys.Caption := '��' + '   ' + inttostr( i ) + '  ҳ';
      qrl_ks.Caption:= '����:' + sp_jbxx.fieldbyname( 'brxm' ).asstring+'   '+
                       '����:' + Trim(DM_data.qry_pub.FieldByName('yybch').asstring)+'   '+
                       '����:' + pub_bqmc;
      QuickRep4.Preview;
    end;
  end;
end;

procedure Tfrm_yzinput.BitBtn5Click(Sender: TObject);
begin
  try
    application.createform(tfrm_jcsqd, frm_jcsqd);
    frm_jcsqd.pq.Text:=sp_jbxx.FieldByName( 'bch' ).AsString;
    frm_jcsqd.showmodal;
  finally
    frm_jcsqd.free;
  end
end;

procedure Tfrm_yzinput.BitBtn6Click(Sender: TObject);
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
  sp_zxjl_cq_dy.Filter := '(yytj=''����'' and kdks='+''''+pub_ksdm+''''+' and kdrq>='+''''+formatdatetime('yy-MM-dd',Now)+' 00:00'+''') or'+
                          ' (yytj=''��������'' and kdks='+''''+pub_ksdm+''''+' and kdrq>='+''''+formatdatetime('yy-MM-dd',Now)+' 00:00'+''')';

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
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).Width := 0;
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
      QRLabel45.Caption := pub_yymc + '��ʱ��Һ�ƻ�ִ�е�';
      QRLabel46.Caption := '����:' + sp_jbxx.fieldbyname( 'brxm' ).asstring;
      QRLabel50.Caption := '������:' + Trim(DM_data.qry_pub.FieldByName('yybch').asstring);
      QRLabel51.Caption := '�Ա�:' + sp_jbxx.fieldbyname( 'brxb' ).asstring;
      QRLabel52.Caption := '����:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
      QRLabel53.Caption := FormatDateTime( 'yyyy', now ) + '��';

      QRLabel67.Caption:='����:' + sp_jbxx.fieldbyname( 'brxm' ).asstring+'      '+
                         '������:' + Trim(DM_data.qry_pub.FieldByName('yybch').asstring)+'      ';//+
                      //   '�Ա�:' + sp_jbxx.fieldbyname( 'brxb' ).asstring+'      '+
                      //   '����:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
      //QuickRep3.Prepare;
      QuickRep5.Preview;
    end;
  end;
end;

procedure Tfrm_yzinput.BitBtn7Click(Sender: TObject);
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
  sp_zxjl_cq_dy.Filtered := False;
  sp_zxjl_cq_dy.Filter := '(yytj=''��ע'' and  tzrq=null and kdks='+''''+pub_ksdm+''')'+' or (yytj=''��ע'' and  tzrq=null and kdks='+''''+pub_ksdm+''')'; //and tzrq=null';
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
            aControl := DetailBand1.FindChildControl( 'ksrq' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            aControl := DetailBand1.FindChildControl( 'kdysmc' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            DetailBand1.FindChildControl( 'qrgrimage' + IntToStr( j ) ).enabled := false;
            TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
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
              //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
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
      DM_data.qry_pub.Close;
      DM_data.qry_pub.SQL.text:='select * from sys_kscwsz where bqdm='+''''+pub_bqdm+''''+' and bcbh='+''''+trim(sp_jbxx.fieldbyname( 'bch' ).asstring)+'''';
      DM_data.qry_pub.Open;
      QRLabel2.Caption := pub_yymc + '����ע��ƻ�ִ�е�';
      QRLabel3.Caption := '����:' + sp_jbxx.fieldbyname( 'brxm' ).asstring;
      QRLabel20.Caption := '������:' + Trim(DM_data.qry_pub.FieldByName('yybch').asstring);
      QRLabel21.Caption := '�Ա�:' + sp_jbxx.fieldbyname( 'brxb' ).asstring;
      QRLabel26.Caption := '����:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
      ny.Caption := FormatDateTime( 'yyyy', now ) + '��';
      QRLabel61.Caption:='����:' + sp_jbxx.fieldbyname( 'brxm' ).asstring+'      '+
                          '������:' + Trim(DM_data.qry_pub.FieldByName('yybch').asstring)+'      '+
                          '�Ա�:' + sp_jbxx.fieldbyname( 'brxb' ).asstring +'      '+
                          '����:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
      //QuickRep3.Prepare;
      QuickRep3.Preview;
    end;
  end;
end;

procedure Tfrm_yzinput.BitBtn8Click( Sender: TObject );
begin
  if qry_yz.FieldByName( 'zxbz' ).AsBoolean then
  begin
    proc_xzyf;
    qry_yz.Edit;
    if yzlb = '��ҩ' then
      qry_yz.FieldByName( 'czks' ).AsString := prv_zyfdm
    else
      if yzlb = '��ҩ' then
        qry_yz.FieldByName( 'czks' ).AsString := prv_xyfdm;
    qry_yz.Post;
  end;
end;

procedure Tfrm_yzinput.proc_xzyf;
begin
  if pub_xyxzyf then //��ҩѡ��ҩ��
  begin
    if yzlb = 'ҩƷ' then
    begin
      Prv_xyfdm := func_Show_yfxz( '02' ); //02 ��ҩ��
      if prv_xyfdm = '' then
      begin
        Application.MessageBox( '��ʾ:��ѡ����ҩ��!', '��ʾ', 16 );
        Exit;
      end;
    end
    else
      if yzlb = '��ҩ' then
      begin
        prv_zyfdm := func_Show_yfxz( '04' ); //04 ��ҩ��
        if prv_zyfdm = '' then
        begin
          Application.MessageBox( '��ʾ:��ѡ����ҩ��!', '��ʾ', 16 );
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
      Application.MessageBox( '���ڱ�רҵ�ϰ���Ӧ����ҩ������ҩ��!', '��ʾ', 0 + 48 );
  end;
end;

procedure Tfrm_yzinput.BitBtn_downClick( Sender: TObject );
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

procedure Tfrm_yzinput.BitBtn_upClick( Sender: TObject );
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

procedure Tfrm_yzinput.bt_exitClick( Sender: TObject );
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

procedure Tfrm_yzinput.FormShow( Sender: TObject );
var z_zyh:string;
begin
z_zyh:='';
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
  yzsx := '����';
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

  qry_yzsx.Open;
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

  if sp_jbxx.RecordCount>1 then
  begin
  sp_jbxx.First;
  while not sp_jbxx.eof do
  begin
  DM_data.qry_pub.Close;
  DM_data.qry_pub.SQL.Text:='select * from zysf_zydj where zyh='+''''+
                                    sp_jbxx.FieldByName('zyh').asstring+'''';
  DM_data.qry_pub.Open;
  if not DM_data.qry_pub.IsEmpty then
  z_zyh:= DM_data.qry_pub.FieldByName('zyh').AsString;
  sp_jbxx.Next;
  end;
  sp_jbxx.Filtered:=False;
  sp_jbxx.Filter:='zyh='+''''+z_zyh+'''';
  sp_jbxx.Filtered:=True;
  end;

  sp_cx_yzxm.Close;
  sp_cx_yzxm.Parameters.ParamValues['@zyh'] := zyh;
  sp_cx_yzxm.Parameters.ParamValues['@yzsx'] := 'δ�ύ';
  sp_cx_yzxm.Parameters.ParamValues['@ksdm'] := pub_ksdm;
  sp_cx_yzxm.Open;
  scbz := 0;
  //------------calmhawk-2008-01-31-----ȡҩ������------
  qry_yfdm.Close;
  qry_yfdm.Parameters.ParamByName( 'ksdm' ).Value := pub_ksdm;
  qry_yfdm.Open;
  //------------------------------------------------------------
  if not sp_jbxx.IsEmpty then
  begin
    zyh := sp_jbxx.FieldByName( 'zyh' ).AsString;
    tmh := sp_jbxx.FieldByName( 'tmh' ).AsString;
    brxm := sp_jbxx.FieldByName( 'brxm' ).AsString;
    e_tmh.Text := tmh;
    refresh_yz;
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
    end
    else
    begin
      if trim( dbedit11.Text ) <> '' then
        e_yzys.Text := DBEdit11.Text;
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
    yzsx := '����';
    yzlb := '��ҩ';
    proc_xzyf;
    yzlb := 'ҩƷ';
    proc_xzyf;
  end;

end;

procedure Tfrm_yzinput.grid_ksDblClick( Sender: TObject );
begin
  grid_yzlr.SetFocus;
end;

procedure Tfrm_yzinput.grid_ksExit( Sender: TObject );
begin
  grid_ks.Visible := false;
  qry_yz.FieldByName( 'czks' ).Value := qry_ks.FieldByName( 'dm' ).AsString;
  yzNew( 1 );
end;

procedure Tfrm_yzinput.grid_ksKeyDown( Sender: TObject; var Key: Word;
  Shift: TShiftState );
begin
  if key = 13 then
  begin
    grid_yzlr.SetFocus;
  end;
end;

procedure Tfrm_yzinput.grid_ypDblClick( Sender: TObject );
begin
  grid_yzlr.SetFocus;
  grid_yp.Visible := false;
end;

procedure Tfrm_yzinput.grid_ypDrawColumnCell( Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumnEh; State: TGridDrawState );
begin
  if sp_cx_yp_yz['zxdwsl'] = true then
  begin
    grid_yp.Canvas.Brush.Color := cllime;
    grid_yp.Canvas.Font.color := clblue;
  end;
  grid_yp.DefaultDrawColumnCell( rect, datacol, Column, state );
end;

procedure Tfrm_yzinput.grid_ypExit( Sender: TObject );
begin
  grid_yp.Visible := false;
  ypjs;
  grid_yzlr.SetFocus;
  if ( yzlb = '����' ) or ( yzlb = '��ҩ' ) then
    grid_yzlr.SelectedIndex := 7
  else
    grid_yzlr.SelectedIndex := 3;
end;

procedure Tfrm_yzinput.grid_ypKeyPress( Sender: TObject; var Key: Char );
begin
  if key = #13 then
  begin
    grid_yzlr.SetFocus;
  end;
  if key = #27 then
    grid_yp.Visible := false;
end;

procedure Tfrm_yzinput.Edit_ypKeyPress( Sender: TObject; var Key: Char );
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

procedure Tfrm_yzinput.edt_tmhKeyDown( Sender: TObject; var Key: Word;
  Shift: TShiftState );
begin
  if key = 13 then
    Proc_Seek_dj( Trim( edt_tmh.Text ) );
end;

procedure Tfrm_yzinput.e_tmhExit( Sender: TObject );
begin
  qry_xmyz.Close;
  qry_xmyz.Open;
  if trim( e_tmh.Text ) <> '' then
  begin
    sp_jbxx.Close;
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
      e_tmh.Text := tmh;
      if trim( dbedit11.Text ) <> '' then
        e_yzys.Text := DBEdit11.Text;
      refresh_yz;
      //calmhawk --����ҽ��
      sp_dryz.Close;
      sp_dryz.Parameters.ParamByName( '@zyh' ).Value := zyh;
      sp_dryz.Parameters.ParamByName( '@yzsx' ).Value := '';
      sp_dryz.Open;

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

procedure Tfrm_yzinput.e_tmhKeyDown( Sender: TObject; var Key: Word;
  Shift: TShiftState );
begin
  if key = 13 then
  begin
    e_yzys.SetFocus;
  end;
end;

procedure Tfrm_yzinput.e_yzysKeyPress( Sender: TObject; var Key: Char );
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
        application.MessageBox( '����������ҽ��', '��ʾ', 0 + 48 );
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

procedure Tfrm_yzinput.Edit_clKeyPress( Sender: TObject; var Key: Char );
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

procedure Tfrm_yzinput.N1Click( Sender: TObject );
var
  _id, _zhzxsj, _yzsx: string;
  _fzph: string;
  _yzsj: string;
  sczt, i: integer;
begin
  tzyzqr := 0;

  DM_data.qry_pub.Close;
  DM_data.qry_pub.SQL.text := 'select * from zybl_zyyz_yzzxqd where yzid='+sp_dryz.FieldByName( 'id' ).asstring+
                              ' and convert(varchar(8),sfsj,112)='+''''+ Formatdatetime('yyyyMMdd',Now)+'''';
  DM_data.qry_pub.Open;
  if (DM_data.qry_pub.IsEmpty) and (sp_dryz.FieldByName( 'yzsx' ).asstring='����') then
  begin
    if application.MessageBox( '��ǰҽ������δ�Ƿѣ��Ƿ����ֹͣ��', '��ʾ', mb_iconquestion + mb_yesno + mb_defbutton2 ) = idno then
      abort;
  end;
  

  DM_data.qry_pub.Close;
  DM_data.qry_pub.SQL.text := 'select * from sys_czy where dm=' + '''' + pub_czydm + '''';
  DM_data.qry_pub.Open;
  if ( DM_data.qry_pub.FieldByName( 'cfbz' ).AsBoolean = false ) and ( Trim( sp_dryz.FieldByName( 'kdys' ).asstring ) <> pub_czydm ) then
  begin
    ShowMessage( '��ǰ����Ա�޷�ֹͣ����ҽ��' );
    Abort;
  end;

  try
    application.Createform( Tfrm_tzyzsj, frm_tzyzsj );
    p_tzyzsj.sfxse:='';
    frm_tzyzsj.showmodal;
  finally
    frm_tzyzsj.free;
  end;
  if sp_dryz.FieldByName( 'yzsx' ).AsString = '��ʱ' then
  begin
    if application.MessageBox( '��ʱҽ��ֹͣ,ֻ������ֹͣ���Ƿ������', '��ʾ', mb_iconquestion + mb_yesno + mb_defbutton1 ) = idno then
      abort
  end;
  //ʱ��ֹͣҽ��
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
        application.MessageBox( 'ҽ��ֹͣδ�ɹ��������²�������', '��ʾ��', mb_ok );
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
        application.MessageBox( 'ҽ��ֹͣδ�ɹ��������²�������', '��ʾ��', mb_ok );
    end;
    if ( _zhzxsj <> '' ) and ( _yzsx = '��ʱ' ) then
    begin
      if _fzph <> '' then
        application.MessageBox( pchar( '��' + #13 + sp_dryz.FieldByName( 'xmmc' ).AsString + #13 + '������Һ���Ѿ�ִ�мƷѣ�����д��Ӧ֪ͨ�칫��ʿ�˷ѣ�����' ), '��ʾ', 0 + 48 )
      else
        application.MessageBox( pchar( '��' + #13 + sp_dryz.FieldByName( 'xmmc' ).AsString + #13 + '�Ѿ�ִ�мƷѣ�����д��Ӧ֪ͨ�칫��ʿ�˷ѣ�����' ), '��ʾ', 0 + 48 );
    end;
    sp_dryz.Close;
    sp_dryz.Parameters.ParamByName( '@zyh' ).Value := zyh;
    sp_dryz.Parameters.ParamByName( '@yzsx' ).Value := '';
    sp_dryz.Open;
  end;
end;

procedure Tfrm_yzinput.N2Click( Sender: TObject );
var
  _ph, _xmdm, _fzph: string;
  _id: integer;
  y: Integer;

begin
  if not sp_dryz.Active then
    exit;



  if not ( sp_dryz.FieldByName( 'tzfs' ).Asstring = '�޸�' ) then
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
          DM_data.qry_pub.SQL.text := 'select * from zybl_zyyz_yzzxqd_mx where yzid='  + sp_dryz.FieldByName('id').asstring ;
          DM_data.qry_pub.Open;

          if (DM_data.qry_pub.RecordCount>0) and (pos('Ƥ��',sp_dryz.FieldByName( 'xmmc' ).Asstring)<1) then
          begin
          ShowMessage('��ִ�е�ҽ�������޸ģ�');
          end
          else
          begin
          DM_data.qry_pub.Close;
          DM_data.qry_pub.SQL.text := 'select * from sys_czy where dm=' + '''' + pub_czydm + '''';
          DM_data.qry_pub.Open;


          if sp_dryz.FieldByName('yzsx').AsString='��ʱ' then
          begin
          ShowMessage( '��ʱҽ���޷��޸ģ�����ֹͣҽ����ȡ������ʱҽ����' );
          end
          else if ( DM_data.qry_pub.FieldByName( 'cfbz' ).AsBoolean = false ) and ( Trim( sp_dryz.FieldByName( 'kdys' ).asstring ) <> pub_czydm ) and (pos('Ƥ��',sp_dryz.FieldByName( 'xmmc' ).Asstring)<1) then
          begin
            ShowMessage( '��ǰ����Ա�޷��޸ı���ҽ��' );
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
              qru_yzxg.sql.text := 'update zybl_zyyz set kdks='+ #39 +pub_ksdm+ #39 +',zxbz = 0,xgrq = ' +
                #39 + datetimetostr( frm_func.curr_date ) + #39 + ',xgry = ' + #39 + pub_czydm + #39 +
                ' where fzph = ' + #39 + _fzph + #39;
              qru_yzxg.ExecSQL;
            end
            else
            begin
              qru_yzxg.close;
              qru_yzxg.sql.text := 'update zybl_zyyz set kdks='+ #39 +pub_ksdm+ #39 +',zxbz = 0,xgrq = ' +
                #39 + datetimetostr( frm_func.curr_date ) + #39 + ',xgry = ' + #39 + pub_czydm + #39 +
                ' where id = ' + inttostr( _id );
              qru_yzxg.ExecSQL;
            end;
          end;
        end;
        end;

        sp_dryz.Close;
        sp_dryz.Parameters.ParamByName( '@zyh' ).Value := zyh;
        sp_dryz.Parameters.ParamByName( '@yzsx' ).Value := '';
        sp_dryz.Open;
        refresh_yz;
        application.MessageBox( '��ҽ���Ѿ������޸�״̬���뵽��¼��ҽ���������޸ģ�', '��ʾ', 0 + 48 );

      end
      else
        application.MessageBox( '��ֹͣ��ҽ�������޸ģ�', '��ʾ', 0 + 48 );
    end
    // else
    //   application.MessageBox('��ִ�е�ҽ�������޸ģ�', '��ʾ', 0 + 48);
  end;

end;

procedure Tfrm_yzinput.N3Click( Sender: TObject );
var
  i, x1, y1, x2, y2: integer;
  ypyf, yytj: string;
  mark: boolean;
  myrect: TRect;

begin
  if grid_yzlr.SelectedRows.Count > 0 then
  begin
    bcbz := false;
    saveyz;
    if application.MessageBox( '�Ƿ�Ҫ�����µķ���?', '��ʾ��Ϣ', mb_iconquestion + mb_okcancel + mb_defbutton1 ) = idok then
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
        fzbh := get_sjh( pub_czydm );
        for i := 0 to grid_yzlr.SelectedRows.Count - 1 do
        begin
          qry_yz.GotoBookmark( pointer( grid_yzlr.SelectedRows.Items[i] ) );
          qry_yz.edit;
          qry_yz['fzph'] := fzbh;
          qry_yz.post;
        end;
        bcbz := false;
        saveyz;
      end
      else
        application.messagebox( 'ҩƷ�÷�����ҩ;����һ�£����ܷ���һ�飡��', '����', mb_ok + mb_iconerror );
    end;
  end
  else
    application.MessageBox( '��ѡ����Ҫ���з�����У���', '��ʾ��Ϣ', mb_iconinformation + mb_ok )

    //    grid_yzlr.DrawColumnCell(sender);
    //grid_yzlr.Refresh;

end;

procedure Tfrm_yzinput.N4Click( Sender: TObject );
var
  i: integer;
  ypyf, yytj: string;
  mark: boolean;
begin
  if grid_yzlr.SelectedRows.Count > 0 then
  begin
    bcbz := false;
    saveyz;
    if application.MessageBox( '�Ƿ�Ҫȡ����ǰ����?', '��ʾ��Ϣ', mb_iconquestion + mb_okcancel + mb_defbutton1 ) = idok then
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
    application.MessageBox( '��ѡ����Ҫȡ��������У���', '��ʾ��Ϣ', mb_iconinformation + mb_ok )
end;

procedure Tfrm_yzinput.N5Click( Sender: TObject );
var
  _id, _zhzxsj, _yzsx: string;
  _fzph: string;
  _yzsj: string;
  sczt, i: integer;
begin


  DM_data.qry_pub.Close;
  DM_data.qry_pub.SQL.text := 'select * from zybl_zyyz_yzzxqd_mx where yzid='  + sp_dryz.FieldByName('id').asstring+' and zxsj>='+''''+sp_dryz.FieldByName('tzrq').asstring+'''' ;
  DM_data.qry_pub.Open;

  if not DM_data.qry_pub.IsEmpty then
  begin
  ShowMessage( '��ǰҽ������ִֹͣ�м�¼������ȡ��ֹͣ��' );
  Abort;
  end;
  
  DM_data.qry_pub.Close;
  DM_data.qry_pub.SQL.text := 'select * from sys_czy where dm=' + '''' + pub_czydm + '''';
  DM_data.qry_pub.Open;
  if ( DM_data.qry_pub.FieldByName( 'cfbz' ).AsBoolean = false ) and ( Trim( sp_dryz.FieldByName( 'kdys' ).asstring ) <> pub_czydm ) then
  begin
    ShowMessage( '��ǰ����Ա�޷�ȡ��ֹͣ����ҽ��' );
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
      application.MessageBox( 'ȡ��ҽ��ֹͣδ�ɹ��������²�������', '��ʾ��', mb_ok );
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
      application.MessageBox( 'quxcҽ��ֹͣδ�ɹ��������²�������', '��ʾ��', mb_ok );
  end;
  sp_dryz.Close;
  sp_dryz.Parameters.ParamByName( '@zyh' ).Value := zyh;
  sp_dryz.Parameters.ParamByName( '@yzsx' ).Value := '';
  sp_dryz.Open;
end;

procedure Tfrm_yzinput.N6Click( Sender: TObject );
var
  sczt: integer;
begin
  DM_data.qry_pub.Close;
  DM_data.qry_pub.SQL.text := 'select * from sys_czy where dm=' + '''' + pub_czydm + '''';
  DM_data.qry_pub.Open;
  if ( DM_data.qry_pub.FieldByName( 'cfbz' ).AsBoolean = false ) and ( Trim( sp_dryz.FieldByName( 'kdys' ).asstring ) <> pub_czydm ) then
  begin
    ShowMessage( '��ǰ����Ա�޷��޸ı���ҽ��ֹͣʱ��' );
    Abort;
  end;

  if application.MessageBox( pchar( '�Ƿ��޸�ҽ��ֹͣ�ƻ�ʱ�䣿' ), '��ʾ', mb_iconquestion + mb_yesno + mb_defbutton1 ) = idyes then
  begin
    if ( sp_dryz.FieldByName( 'yzsx' ).asstring = '����' ) and ( not sp_dryz.FieldByName( 'tzbz' ).asboolean ) then
    begin
      try
        application.Createform( Tfrm_xgyzzxsj, frm_xgyzzxsj );
        if sp_dryz.fieldbyname( 'zfrq' ).asdatetime = 0 then
          frm_xgyzzxsj.maskedit1.text := formatdatetime( 'yyyy-mm-dd hh:mm:ss', frm_func.curr_date( ) )
        else
          frm_xgyzzxsj.maskedit1.text := formatdatetime( 'yyyy-mm-dd hh:mm:ss', sp_dryz.fieldbyname( 'zfrq' ).asdatetime );
        frm_xgyzzxsj.maskedit2.text := formatdatetime( 'yyyy-mm-dd hh:mm:ss', sp_dryz.fieldbyname( 'kdrq' ).asdatetime );
        p_xgyzzxsj.sfxse:='';
        frm_xgyzzxsj.showmodal;
      finally
        frm_xgyzzxsj.free;
      end;
      if not bz then
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
          application.MessageBox( '�޸�ҽ���ƻ�ֹͣʱ��ֹͣδ�ɹ��������²�������', '��ʾ��', mb_ok );
      end
      else
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
          application.MessageBox( '�޸�ҽ���ƻ�ֹͣʱ��ֹͣδ�ɹ��������²�������', '��ʾ��', mb_ok );
      end;
      sp_dryz.Close;
      sp_dryz.Parameters.ParamByName( '@zyh' ).Value := zyh;
      sp_dryz.Parameters.ParamByName( '@yzsx' ).Value := '';
      sp_dryz.Open;
    end
    else
      application.MessageBox( '��ʱҽ�����Ѿ�ֹͣҽ�������޸ļƻ�ֹͣʱ�䣡��', '��ʾ��', mb_ok );
  end;

end;

procedure Tfrm_yzinput.N7Click( Sender: TObject );
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
    ShowMessage( '��ǰ����Ա�޷��Ը���ҽ��������Һ����' );
    Abort;
  end;
  if dbgrideh4.SelectedRows.Count > 0 then
  begin
    if application.MessageBox( '�Ƿ�Ҫ�����µķ���?', '��ʾ��Ϣ', mb_iconquestion + mb_okcancel + mb_defbutton1 ) = idok then
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
          DM_data.qry_pub.SQL.Text:='update zybl_zyyz set fzph='+''''+fzbh+''''+ ' where zyh='+''''+sp_dryz.FieldByName('zyh').asstring+''''+
                                    ' and id='+sp_dryz.FieldByName('id').asstring;
          DM_data.qry_pub.ExecSQL;
        end;
      end
      else
        application.messagebox( 'ҩƷ�÷�����ҩ;����һ�£����ܷ���һ�飡��', '����', mb_ok + mb_iconerror );
    end;
  end
  else
    application.MessageBox( '��ѡ����Ҫ���з�����У���', '��ʾ��Ϣ', mb_iconinformation + mb_ok );
  sp_dryz.Close;
  sp_dryz.Parameters.ParamByName( '@zyh' ).Value := zyh;
  sp_dryz.Parameters.ParamByName( '@yzsx' ).Value := '';
  sp_dryz.Open;
end;

procedure Tfrm_yzinput.N8Click( Sender: TObject );
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
    ShowMessage( '��ǰ����Ա�޷�ȡ������ҽ����Һ����' );
    Abort;
  end;
  if dbgrideh4.SelectedRows.Count > 0 then
  begin
    if application.MessageBox( '�Ƿ�Ҫȡ������?', '��ʾ��Ϣ', mb_iconquestion + mb_okcancel + mb_defbutton1 ) = idok then
    begin
      if sp_dryz.fieldbyname( 'fzph' ).asstring <> '' then
      begin
//        sp_up_qxsyfz.Close;
//        sp_up_qxsyfz.Parameters.ParamByName( '@fzph' ).value := sp_dryz.fieldbyname( 'fzph' ).asstring;
//        sp_up_qxsyfz.Parameters.ParamByName( '@sczt' ).value := 9;
//        sp_up_qxsyfz.ExecProc;
          DM_data.qry_pub.Close;
          DM_data.qry_pub.SQL.Text:='update zybl_zyyz set fzph='''' where zyh='+''''+sp_dryz.FieldByName('zyh').asstring+''''+
                                    ' and fzph='+''''+sp_dryz.fieldbyname( 'fzph' ).asstring+'''';
          DM_data.qry_pub.ExecSQL;
      end;
    end
  end
  else
    application.MessageBox( '��ѡ����Ҫ���з�����У���', '��ʾ��Ϣ', mb_iconinformation + mb_ok );
  sp_dryz.Close;
  sp_dryz.Parameters.ParamByName( '@zyh' ).Value := zyh;
  sp_dryz.Parameters.ParamByName( '@yzsx' ).Value := '';
  sp_dryz.Open;

end;

procedure Tfrm_yzinput.aptzyzClick( Sender: TObject );
var
  _id, _zhzxsj, _yzsx: string;
  _fzph: string;
  _yzsj: string;
  sczt, i: integer;
begin
  tzyzqr := 0;

  try
    application.Createform( Tfrm_tzyzsj, frm_tzyzsj );
    p_tzyzsj.sfxse:='';
    frm_tzyzsj.showmodal;
  finally
    frm_tzyzsj.free;
  end;
  if sp_dryz.FieldByName( 'yzsx' ).AsString = '��ʱ' then
  begin
    if application.MessageBox( '��ʱҽ��ֹͣ,ֻ������ֹͣ���Ƿ������', '��ʾ', mb_iconquestion + mb_yesno + mb_defbutton1 ) = idno then
      abort
  end;
  //ʱ��ֹͣҽ��
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
          DM_data.qry_pub.SQL.text := 'select * from zybl_zyyz_yzzxqd where yzid='+sp_dryz.FieldByName( 'id' ).asstring+
                              ' and convert(varchar(8),sfsj,112)='+''''+ Formatdatetime('yyyyMMdd',Now)+'''';
          DM_data.qry_pub.Open;
          if (DM_data.qry_pub.IsEmpty) and (sp_dryz.FieldByName( 'yzsx' ).asstring='����') then
       begin
       if application.MessageBox( '��ǰҽ������δ�Ƿѣ��Ƿ����ֹͣ��', '��ʾ', mb_iconquestion + mb_yesno + mb_defbutton2 ) = idno then
       abort;
       end;

        DM_data.qry_pub.Close;
        DM_data.qry_pub.SQL.text := 'select * from sys_czy where dm=' + '''' + pub_czydm + '''';
        DM_data.qry_pub.Open;
        if ( DM_data.qry_pub.FieldByName( 'cfbz' ).AsBoolean = false ) and ( Trim( sp_dryz.FieldByName( 'kdys' ).asstring ) <> pub_czydm ) then
        begin
          ShowMessage( '��ǰ����Ա�޷�ֹͣ����ҽ��' );
        end
        else if sp_dryz.FieldByName('kdrq').AsDateTime>strtodatetime( tzyzsj ) then
        begin
          ShowMessage( '��ǰҽ����¼�Ŀ������ڴ���ֹͣ���ڣ�����ֹͣ��' );
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
                application.MessageBox( 'ҽ��ֹͣδ�ɹ��������²�������', '��ʾ��', mb_ok );
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
                application.MessageBox( 'ҽ��ֹͣδ�ɹ��������²�������', '��ʾ��', mb_ok );
            end;
            if ( _zhzxsj <> '' ) and ( _yzsx = '��ʱ' ) then
            begin
              if _fzph <> '' then
                application.MessageBox( pchar( '��' + #13 + sp_dryz.FieldByName( 'xmmc' ).AsString + #13 + '������Һ���Ѿ�ִ�мƷѣ�����д��Ӧ֪ͨ�칫��ʿ�˷ѣ�����' ), '��ʾ', 0 + 48 )
              else
                application.MessageBox( pchar( '��' + #13 + sp_dryz.FieldByName( 'xmmc' ).AsString + #13 + '�Ѿ�ִ�мƷѣ�����д��Ӧ֪ͨ�칫��ʿ�˷ѣ�����' ), '��ʾ', 0 + 48 );
            end;
          end;
        end;
      end;
    end
    else
    begin
      application.MessageBox( '����ҽ��ҽ��ֹͣ����ѡ������һ���������²�������', '��ʾ��', mb_ok );
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
    application.MessageBox(pchar('��'+#13+_tsxx+#13+'�Ѿ�ִ�мƷѣ�����д��Ӧ֪ͨ�칫��ʿ�˷ѣ�����'), '��ʾ', 0 + 48);

  sp_dryz.Close;
  sp_dryz.Parameters.ParamByName('@zyh').Value := zyh;
  sp_dryz.Parameters.ParamByName('@yzsx').Value := '';
  sp_dryz.Open;
end;  }

procedure Tfrm_yzinput.qry_ysAfterScroll( DataSet: TDataSet );
begin
  if ( yzlb <> 'ҩƷ' ) and ( qry_yz.Active ) then
  begin
    if qry_yz.RecordCount > 0 then
    begin
      qry_yz.FieldByName( 'yplb' ).Value := '';
      qry_yz.FieldByName( 'yplsj' ).Value := 0;
      qry_yz.FieldByName( 'gg' ).Value := '';
    end;
  end;
end;

procedure Tfrm_yzinput.qry_yzAfterInsert( DataSet: TDataSet );
begin
  if ( qry_yz.State = dsInsert ) then
  begin
    qry_yz.FieldByName( 'yzsx' ).Value := '����';
    if yzsx = '��ʱ' then
    begin
      qry_yz.FieldByName( 'yzsx' ).Value := '��ʱ';
    end;
    qry_yz.FieldByName( 'lb' ).Value := yzlb;
    qry_yz.FieldByName( 'kdys' ).Value := yzys;
  end;
end;

procedure Tfrm_yzinput.qry_yzAfterOpen( DataSet: TDataSet );
begin
  createrect( myrect, qry_yz, grid_yzlr, 6, 7, 14 );
  sp_get_maxxh.close;
  sp_get_maxxh.parameters.parambyname( '@zyh' ).value := zyh;
  sp_get_maxxh.open;
  maxxh := sp_get_maxxh.fieldbyname( 'maxxh' ).asinteger;
end;

procedure tfrm_yzinput.createrect( var myrect1: TTmyrect; dataset_rect: Tcustomadodataset; grid_yzlr1: Tdbgrideh; x1, x2, x3: integer );
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

procedure Tfrm_yzinput.qry_yzAfterScroll( DataSet: TDataSet );
begin
  zdkz;
end;

procedure Tfrm_yzinput.qry_yzBeforeInsert( DataSet: TDataSet );
begin
  if qry_yz.RecordCount > 0 then
    if trim( qry_yz.FieldByName( 'xmmc' ).AsString ) = '' then
    begin
      qry_yz.Delete;
    end;
end;

procedure Tfrm_yzinput.grid_yzDblClick( Sender: TObject );
begin
  grid_yzlr.SetFocus;
  grid_yz.Visible := false;
end;

procedure Tfrm_yzinput.grid_yzExit( Sender: TObject );
begin
  qtjs;
end;

procedure Tfrm_yzinput.grid_yzKeyPress( Sender: TObject; var Key: Char );
begin
  if key = #13 then
  begin
    grid_yz.Visible := false;
    grid_yzlr.SelectedIndex := 7;
    if Trim( sp_cx_yp_yz.FieldByName( 'zylsj' ).asstring ) = '' then
      grid_yzlr.SelectedIndex := 2;
    grid_yzlr.SetFocus;
  end;
  if key = #27 then
  begin
    grid_yzlr.SetFocus;
    grid_yz.Visible := false;
  end;
end;

procedure Tfrm_yzinput.grid_yzlr_ColExit;
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
      2: yzXmsr( kzbz ); //��ĿҩƷ���������
      3: sljc( kzbz ); //�������
      5: sljc( kzbz ); //�÷�
      6: yytjjs( kzbz ); //��ҩ;��
      7: sljc( kzbz ); //�������
      //      8: yldwjc(kzbz); //������λ���
      9: yznew( kzbz ); //������λ���
      10: czkscl( kzbz );
      11: yzNew( kzbz );
      12: yzNew( kzbz );
      13: yzNew( kzbz );
      14: yzNew( kzbz );
    end;
  end;
end;

procedure Tfrm_yzinput.yldwjc( fs: integer );
var
  i: integer;
  _temp: boolean;
begin
  if qry_yz.FieldByName( 'lb' ).AsString = 'ҩƷ' then
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
      if _temp then //�������ּ���
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

procedure Tfrm_yzinput.grid_yzlrColExit( Sender: TObject );
begin
//  if (grid_yzlr.SelectedIndex = 11) and (grid_yzlr.Columns[10].DisplayText='') then
//  begin
//    ShowMessage('����д���ÿ��ң�');
//    grid_yzlr.SelectedIndex:= 11;
//    Abort;
//  end;
  if grid_yzlr.SelectedIndex = 1 then
    yzlbsr( kzbz );
  if ( yzlb = '����' ) and ( Trim( grid_yzlr.Columns[7].DisplayText ) = '' ) then
  begin
    qry_yz.Edit;
    qry_yz.FieldByName( 'sl' ).AsString := '0';
    qry_yz.Post;
  end;
  if ( yzlb = '����' ) and ( Pos('Ƥ��',Trim( grid_yzlr.Columns[2].DisplayText )) =1  ) then
  begin
  ShowMessage('Ƥ��¼�����Ʋ���ȷ���밴�գ�ҩƷ����+Ƥ�� ���ָ�ʽ¼�룡');
  Abort;
  end;
  if ( yzlb = '����' ) then
  begin
  xminyz;
  if Trim(grid_yzlr.Columns[2].DisplayText)='' then
  grid_yzlr.SelectedIndex := 2;


  end;

end;

procedure Tfrm_yzinput.grid_yzlrColWidthsChanged( Sender: TObject );
begin
  if qry_yz.Active then
    createrect( myrect, qry_yz, grid_yzlr, 6, 7, 14 );

end;

procedure Tfrm_yzinput.grid_yzlrDblClick( Sender: TObject );
begin
  yzlb := qry_yz.fieldbyname( 'lb' ).asstring;
  if ( yzlb = '����' ) or ( yzlb = '���' ) or ( yzlb = '����' ) then
  begin
    application.CreateForm( Tfrm_jyxmwrite_zy, frm_jyxmwrite_zy );
    frm_jyxmwrite_zy.yzlb := yzlb;
    try
      frm_jyxmwrite_zy.ShowModal;
    finally
      frm_jyxmwrite_zy.free;
    end;
  end
  else
    application.messagebox( 'ֻ�м�顢���顢���Ʋ��ܽ���ѡ��������Ŀ������ƴ����д����', '��ʾ', mb_ok )

end;

procedure Tfrm_yzinput.grid_yzlrondrawcolumncell( Sender: TObject;
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
  if trim( qry_yz.FieldByName( 'yzsx' ).AsString ) = '��ʱ' then
  begin
    grid_yzlr.Canvas.Brush.Color := clwhite;
    grid_yzlr.Canvas.Font.Color := clGreen;
  end;
  if trim( qry_yz.FieldByName( 'lb' ).AsString ) = '����' then
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

procedure Tfrm_yzinput.grid_yzlrKeyDown( Sender: TObject; var Key: Word;
  Shift: TShiftState );
begin
  //40��,38��,37��

  if ( key = 37 ) or ( key = 38 ) or ( key = 39 ) or ( key = 40 ) then
  begin
    kzbz := 0;
  end;
  if qry_yz.RecordCount > 0 then
  begin
    if key = 116 then
    begin
      qry_yz.Edit;
      qry_yz.FieldByName( 'yzsx' ).AsString := '����';
      qry_yz.Post;
      grid_yzlr.SelectedIndex := 1;
    end
    else
      if key = 117 then
      begin
        qry_yz.Edit;
        qry_yz.FieldByName( 'yzsx' ).AsString := '��ʱ';
        qry_yz.Post;
        grid_yzlr.SelectedIndex := 1;
      end;
  end;
  if ( key = 13 ) then
  begin
    kzbz := 1;
  end;
  if ( Key = 27 ) then
  begin
    qry_yz.Delete;
  end;
end;

procedure Tfrm_yzinput.grid_yzlrKeyPress( Sender: TObject; var Key: Char );
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

procedure Tfrm_yzinput.grid_yzlrMouseDown( Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer );
begin
  kzbz := 0;
  tzbz := 1;
end;

function Tfrm_yzinput.grid_yzlrMoveRecords(Sender: TObject;
  BookmarkList: TStrings; ToRecNo, TreeLevel: Integer;
  CheckOnly: Boolean): Boolean;
begin
   ShowMessage('1');
end;

procedure Tfrm_yzinput.czkscl( fs: integer );
begin
  if ( qry_yz.FieldByName( 'lb' ).AsString = 'ҩƷ' ) or ( ( qry_yz.FieldByName( 'lb' ).AsString = '����' ) and isbqkf ) then
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
        showMessage( '���ÿ���δ�ҵ�!' );
        grid_yzlr.SetFocus;
      end;
    end;
  end;
end;

procedure Tfrm_yzinput.yytjjs( fs: integer );
var
  i: integer;
  _temp: boolean;
begin

  grid_yzlr.SelectedIndex := 7;
  if qry_yz.FieldByName( 'lb' ).AsString = 'ҩƷ' then
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
    if _temp then //�������ּ���
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

procedure Tfrm_yzinput.Edit3KeyPress( Sender: TObject; var Key: Char );
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

procedure Tfrm_yzinput.Edit4KeyPress( Sender: TObject; var Key: Char );
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

procedure Tfrm_yzinput.bt_ztClick( Sender: TObject );
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

procedure Tfrm_yzinput.bt_ztsaveClick( Sender: TObject );
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
  if Trim( DBEdit10.Text ) = '' then
    Application.MessageBox( 'û����ϲ��ܴ�Ϊģ��!!', '��ʾ', 0 + 48 )
  else
    frm_yzmbsave( qry_yz, Trim( DBEdit10.Text ), 'zy' );



end;



procedure Tfrm_yzinput.saveyz_tj;
var
  p_return: string;
begin
  qry_yz.DisableControls;
  qry_gytj.filtered := false;
  if yzys = '' then
    yzys := pub_czydm;
  //ҽ��¼��������֤
  yz_lr_yz;
  //------------------------------------------------------------------------------
  //ҽ����ѯ��ʷ���ţ����¼�¼������ʷ����
  yz_cx_cqph( '��ʱ' );
  //��ʱҽ���������Ų�ִ��
  qry_yz.First;
  while not qry_yz.Eof do
  begin
    if ( trim( qry_yz.FieldByName( 'yzsx' ).AsString ) <> '����' ) then
    begin
      if trim( qry_yz.FieldByName( 'ph' ).AsString ) = '' then
        tjyzfcqyz; //û�����ŵļ�¼����������
      if islsyzsfzdzx then //��ʱҽ���Զ�ִ��
      begin
        qry_yz.Edit;
        qry_yz.FieldByName( 'zxbz' ).Value := true;
        qry_yz.Post;
      end;
    end;
    qry_yz.Next;
  end;
  //------------------------------------------------------------------------------
  //ҽ����ѯ��ʷ���ţ����¼�¼������ʷ����
  yz_cx_cqph( '����' );
  //����ҽ����������
  qry_yz.First;
  while not qry_yz.Eof do
  begin
    if ( trim( qry_yz.FieldByName( 'yzsx' ).AsString ) = '����' ) then
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
      if ( sp_dryz.FieldByName( 'yzsx' ).asstring = '����' ) and
        ( ( sp_dryz.FieldByName( 'yytj' ).asstring = '�ڷ�' ) or ( sp_dryz.FieldByName( 'yytj' ).asstring = '��ע' ) ) and
        ( ( sp_dryz.fieldbyname( 'tzbz' ).asboolean = false ) or
        ( formatdatetime( 'yyyymmdd', sp_dryz.fieldbyname( 'zfrq' ).asdatetime ) >= formatdatetime( 'yyyymmdd', frm_func.curr_date( ) ) ) ) then
        p_return := p_return + #13 + qry_yz.fieldbyname( 'xmmc' ).AsString;

    end;
    qry_yz.next;
  end;
  if p_return <> '' then
    if application.MessageBox( pchar( p_return + #13 + #13 + '����ҩƷ��Ա����ʹ��,�Ƿ�Ҫ����?' + #13 + '��ע���޸ģ���' ), '��ʾ��Ϣ', mb_iconwarning + MB_YESNO + mb_defbutton2 ) = IDNO then
    begin
      qry_yz.EnableControls;
      abort;
    end;

  p_return := '';
  qry_yz.first;
  while not qry_yz.Eof do
  begin
    if ( qry_yz.FieldByName( 'yzsx' ).asstring = '����' ) and
      ( ( qry_yz.FieldByName( 'lb' ).asstring = '���' ) or ( qry_yz.FieldByName( 'lb' ).asstring = '����' ) ) then
      p_return := p_return + #13 + qry_yz.fieldbyname( 'xmmc' ).AsString;
    qry_yz.next;
  end;

  if p_return <> '' then
    if application.MessageBox( pchar( p_return + #13 + #13 + '���ϼ�������Ŀҽ��Ϊ����ҽ��,�Ƿ�Ҫȷ��?' + #13 + '��ע���޸ģ���' ), '��ʾ��Ϣ', mb_iconwarning + MB_YESNO + mb_defbutton2 ) = IDNO then
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
      application.MessageBox( pchar( p_return ), '��ʾ', 0 + 48 );
    end;
  except
    dm_data.ado_mydata.RollbackTrans;
    application.MessageBox( 'ҽ������ʧ�ܣ������½��иղŲ���!', '��ʾ', 0 + 48 );
  end;
  qry_yz.EnableControls;
end;


procedure Tfrm_yzinput.saveyz;
var
  p_return: string;
begin
  qry_yz.DisableControls;
  qry_gytj.filtered := false;
  if yzys = '' then
    yzys := pub_czydm;
  //ҽ��¼��������֤
  yz_lr_yz;
  //------------------------------------------------------------------------------
  //ҽ����ѯ��ʷ���ţ����¼�¼������ʷ����
  yz_cx_cqph( '��ʱ' );
  //��ʱҽ���������Ų�ִ��
  qry_yz.First;
  while not qry_yz.Eof do
  begin
    if ( trim( qry_yz.FieldByName( 'yzsx' ).AsString ) <> '����' ) then
    begin
      if trim( qry_yz.FieldByName( 'ph' ).AsString ) = '' then
        tjyzfcqyz; //û�����ŵļ�¼����������
      if islsyzsfzdzx then //��ʱҽ���Զ�ִ��
      begin
        qry_yz.Edit;
        qry_yz.FieldByName( 'zxbz' ).Value := true;
        qry_yz.Post;
      end;
    end;
    qry_yz.Next;
  end;
  //------------------------------------------------------------------------------
  //ҽ����ѯ��ʷ���ţ����¼�¼������ʷ����
  yz_cx_cqph( '����' );
  //����ҽ����������
  qry_yz.First;
  while not qry_yz.Eof do
  begin
    if ( trim( qry_yz.FieldByName( 'yzsx' ).AsString ) = '����' ) then
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
      if ( sp_dryz.FieldByName( 'yzsx' ).asstring = '����' ) and
        ( ( sp_dryz.FieldByName( 'yytj' ).asstring = '�ڷ�' ) or ( sp_dryz.FieldByName( 'yytj' ).asstring = '��ע' ) ) and
        ( ( sp_dryz.fieldbyname( 'tzbz' ).asboolean = false ) or
        ( formatdatetime( 'yyyymmdd', sp_dryz.fieldbyname( 'zfrq' ).asdatetime ) >= formatdatetime( 'yyyymmdd', frm_func.curr_date( ) ) ) ) then
        p_return := p_return + #13 + qry_yz.fieldbyname( 'xmmc' ).AsString;

    end;
    qry_yz.next;
  end;
  if p_return <> '' then
    if application.MessageBox( pchar( p_return + #13 + #13 + '����ҩƷ��Ա����ʹ��,�Ƿ�Ҫ����?' + #13 + '��ע���޸ģ���' ), '��ʾ��Ϣ', mb_iconwarning + MB_YESNO + mb_defbutton2 ) = IDNO then
    begin
      qry_yz.EnableControls;
      abort;
    end;

  p_return := '';
  qry_yz.first;
  while not qry_yz.Eof do
  begin
    if ( qry_yz.FieldByName( 'yzsx' ).asstring = '����' ) and
      ( ( qry_yz.FieldByName( 'lb' ).asstring = '���' ) or ( qry_yz.FieldByName( 'lb' ).asstring = '����' ) ) then
      p_return := p_return + #13 + qry_yz.fieldbyname( 'xmmc' ).AsString;
    qry_yz.next;
  end;

  if p_return <> '' then
    if application.MessageBox( pchar( p_return + #13 + #13 + '���ϼ�������Ŀҽ��Ϊ����ҽ��,�Ƿ�Ҫȷ��?' + #13 + '��ע���޸ģ���' ), '��ʾ��Ϣ', mb_iconwarning + MB_YESNO + mb_defbutton2 ) = IDNO then
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
        application.MessageBox( '�������!', '��ʾ', 0 + 48 );
    end
    else
    begin
      dm_data.ado_mydata.RollbackTrans;
      application.MessageBox( pchar( p_return ), '��ʾ', 0 + 48 );
    end;
  except
    dm_data.ado_mydata.RollbackTrans;
    application.MessageBox( 'ҽ������ʧ�ܣ������½��иղŲ���!', '��ʾ', 0 + 48 );
  end;
  qry_yz.EnableControls;
end;

procedure Tfrm_yzinput.Button1Click( Sender: TObject );
begin
  bcbz := true;
  saveyz;
end;

procedure Tfrm_yzinput.ComboBox1Change(Sender: TObject);
begin
if ComboBox1.text='ȫ��' then
begin
  sp_dryz.Filtered:=False;
end;
if ComboBox1.text='����' then
begin
  sp_dryz.Filtered:=False;
  sp_dryz.Filter:='yzsx=''����''';
  sp_dryz.Filtered:=True;
end;
if ComboBox1.text='��ʱ' then
begin
  sp_dryz.Filtered:=False;
  sp_dryz.Filter:='yzsx=''��ʱ''';
  sp_dryz.Filtered:=True;
end;

end;

procedure Tfrm_yzinput.FormCreate( Sender: TObject );
begin
  dbgrideh4.Height := 4000;
  scrollbox1.VertScrollBar.Position := 0;
  scrollbox1.HorzScrollBar.Position := 0;
  scrollbox2.VertScrollBar.Position := 0;
  scrollbox2.HorzScrollBar.Position := 0;
  scrollbox3.VertScrollBar.Position := 0;
  scrollbox3.HorzScrollBar.Position := 0;
  dbgrideh4.Width := 1400;
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
end;

procedure Tfrm_yzinput.FormKeyDown( Sender: TObject; var Key: Word;
  Shift: TShiftState );
begin

  if key = vk_f1 then
    ZZ.ActivePageIndex := 0;
  if key = vk_f2 then
    ZZ.ActivePageIndex := 1;
  if key = vk_f3 then
    ZZ.ActivePageIndex := 2;
end;

procedure Tfrm_yzinput.FormResize( Sender: TObject );
begin
  scrollbox1.Width := self.Width - 10;
  dbgrideh4.Width := 1400;
  dbgrideh3.Width := 1100;
  dbgrideh1.Width := 1100;

end;

procedure Tfrm_yzinput.bt_lsyzClick( Sender: TObject );
begin
  //������ʷҽ��ǰ�����ѱ༭ҽ��
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
      frm_bylsyz.QRL_dysj.Caption := '��ӡʱ��:' + FormatDatetime( 'yyyy��mm��dd�� HHʱMM��SS��', frm_func.curr_date );
      frm_bylsyz.rep_dryphz.Prepare;
      frm_bylsyz.QRL_ym.Caption := '��' + IntToStr( frm_bylsyz.rep_dryphz.Printer.PageCount ) + 'ҳ';
      //      frm_bylsyz.rep_dryphz.PrinterSettings.PrinterIndex:=printer.Printers.IndexOf('zxdprint');
      frm_bylsyz.rep_dryphz.Preview;
    finally
      frm_bylsyz.Free;
    end;
  end
  else
    application.MessageBox( 'û�в�����Ϣ', '��ʾ', 0 + 48 );
end;

procedure Tfrm_yzinput.Edit2KeyPress( Sender: TObject; var Key: Char );
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

procedure Tfrm_yzinput.DBEdit7Exit( Sender: TObject );
begin
  if qry_yz.State in [dsedit, dsinsert] then
    if qry_yz.FieldByName( 'sl' ).AsInteger <= 0 then
    begin
      application.MessageBox( '���������������0!', '��ʾ��Ϣ', 0 + 16 );
    end;
end;

procedure Tfrm_yzinput.DBGridEh1ColWidthsChanged( Sender: TObject );
begin
  if sp_zxjl_cq.Active then
    createrect( myrect_zx_cq, sp_zxjl_cq, dbgrideh1, 5, 6, 11 );

end;

procedure Tfrm_yzinput.DBGridEh1DrawColumnCell( Sender: TObject;
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

procedure Tfrm_yzinput.DBGridEh2DblClick( Sender: TObject );
begin
  Proc_Seek_yzzxjl( qry_dj.FieldByName( 'tmh' ).AsString, qry_dj.FieldByName( 'zyh' ).AsString, qry_dj.FieldByName( 'brxm' ).AsString )
end;

procedure Tfrm_yzinput.DBGridEh2Exit( Sender: TObject );
begin
  DBGridEh2.Visible := False;
end;

procedure Tfrm_yzinput.DBGridEh2KeyDown( Sender: TObject; var Key: Word;
  Shift: TShiftState );
begin
  if key = 13 then
    Proc_Seek_yzzxjl( qry_dj.FieldByName( 'tmh' ).AsString, qry_dj.FieldByName( 'zyh' ).AsString, qry_dj.FieldByName( 'brxm' ).AsString )
  else
    if key = 27 then
      edt_tmh.SetFocus;
end;

procedure Tfrm_yzinput.DBGridEh3ColWidthsChanged( Sender: TObject );
begin
  if sp_zxjl_ls.Active then
    createrect( myrect_zx_ls, sp_zxjl_ls, dbgrideh3, 7, 8, 9 );
end;

procedure Tfrm_yzinput.DBGridEh3DrawColumnCell( Sender: TObject;
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

procedure Tfrm_yzinput.DBGridEh4ColWidthsChanged( Sender: TObject );
begin
  if sp_dryz.Active then
    createrect( myrect_cx, sp_dryz, dbgrideh4, 10, 11, 16 );

end;

procedure Tfrm_yzinput.DBGridEh4DrawColumnCell( Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState );
var
  i: integer;
  myrect1: Trect;

begin
  if not sP_dryz.fieldbyname( 'zxbz' ).asboolean then
    DBGridEh4.Canvas.Brush.Color := clSkyBlue;
  if trim( sP_dryz.fieldbyname( 'tzfs' ).asstring ) = '�޸�' then
  begin
    DBGridEh4.Canvas.Font.Color := clBlue;
  end;

  if ( sP_dryz.fieldbyname( 'tzbz' ).AsBoolean=true ) then
  begin
    if ( pos( '�ƻ�', trim( sP_dryz.fieldbyname( 'tzfs' ).asstring ) ) <= 0 ) then
      DBGridEh4.Canvas.Font.Color := $004F1DD3;
  end;

  if (Pos('Ƥ��',trim( sP_dryz.FieldByName( 'xmmc' ).AsString ))>0) and ((Pos('+',trim( sP_dryz.FieldByName( 'xmmc' ).AsString ))>0) or  (Pos('��',trim( sP_dryz.FieldByName( 'xmmc' ).AsString ))>0) ) then
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

procedure Tfrm_yzinput.DBGridEh5Exit( Sender: TObject );
begin
  DBGridEh5.Visible := False;
end;

procedure Tfrm_yzinput.DBGridEh5KeyPress( Sender: TObject; var Key: Char );
begin
  if Key = #13 then
  begin
    qry_yz.Edit;
    qry_yz.fieldbyname( 'xmmc' ).value := Trim( qry_qtyzxm.FieldByName( '��Ŀ����' ).AsString );
    qry_yz.Post;
    //grid_yzlr.Columns[2].DisplayText:=Trim(qry_qtyzxm.FieldByName('��Ŀ����').AsString);
    grid_yzlr.SetFocus;
    xminyz;
    grid_yzlr.SelectedIndex := 7;

  end
  else
    if Key = #27 then
      grid_yzlr.SetFocus;

end;

procedure Tfrm_yzinput.yzinypfymx( zyh, ypid, xmid, clid, ph: string ); //д��ҽ����ϸ��ҩƷ��ϸ��������Ŀ��ϸ
begin
  if ypid <> '' then
  begin
    qry_ypyz.Close;
    qry_ypyz.SQL.Clear;
    qry_ypyz.SQL.Text := 'insert into zybl_zyyz_ypmx select zyh,id,' + #39 +
      ph + #39 + ',xmdm,ypdwid,dw,ypbzbl,' +
      'sl,yplsj from zybl_zyyz where zyh=' + #39 + zyh + #39 +
      ' and zxbz=0 and tzbz=0 and zfbz=0 and lb=' + #39 + 'ҩƷ' + #39 + ' and id in (' + ypid + ')';
  end;

  if clid <> '' then
  begin
    qry_ypyz.Close;
    qry_ypyz.SQL.Clear;
    qry_ypyz.SQL.Text := 'insert into zybl_zyyz_clmx select zyh,id,' + #39 +
      ph + #39 + ',xmdm,ypdwid,dw,ypbzbl,' +
      'sl,yplsj from zybl_zyyz where zyh=' + #39 + zyh + #39 +
      ' and zxbz=0 and tzbz=0 and zfbz=0 and lb=' + #39 + '����' + #39 + ' and id in (' + clid + ')';
  end;

  if xmid <> '' then
  begin
    qry_ypyz.Close;
    qry_ypyz.SQL.Clear;
    qry_ypyz.SQL.Text := 'insert into zybl_zyyz_fymx(yzid,tmh,zyh,ph,kdks,czks,kdys,fydm,fysl,fyje,zkje,ssje,zfje) select a.id,a.tmh,a.zyh,' +
      quotedstr( ph ) + ' ph,a.kdks,a.czks,a.kdys,b.fydm,a.sl,0 fyje,0 zkje,0 ssje,0 zfje from zybl_zyyz a join sys_yzxm b on a.xmdm=b.xmdm where len(a.xmdm)=4 and a.id in (' + xmid + ')';
  end;
end;

procedure Tfrm_yzinput.cxButton1Click( Sender: TObject );
begin
  //----ҽ���ύ����----
  saveyz_tj;
  try
    application.CreateForm( Tfrm_tjyz, frm_tjyz );
    frm_tjyz.brxm := brxm;
    frm_tjyz.tmh := tmh;
    frm_tjyz.zyh := zyh;
    frm_tjyz.Caption := '����ҽ���ύ ( ��ǰ���ˣ�����:' + tmh + '  ����: ' + trim( brxm ) + ' )';
    frm_tjyz.Top := 80;
    frm_tjyz.Left := 1;
    frm_tjyz.sfxse:='';
    frm_tjyz.ShowModal;
  finally
    frm_tjyz.Free;
  end;
end;

procedure Tfrm_yzinput.cxTabSheet1Show( Sender: TObject );
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
end;

procedure Tfrm_yzinput.Proc_Seek_dj( const v_tmh: string );
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

procedure Tfrm_yzinput.Proc_Seek_yzzxjl( const v_tmh, v_zyh, v_brxm: string );
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

procedure Tfrm_yzinput.QRSubDetail1BeforePrint( Sender: TQRCustomBand;
  var PrintBand: Boolean );
begin
  if paper_size > 27 then
  begin
    quickrep1.NewPage;
    paper_size := 0;
  end;

end;

procedure Tfrm_yzinput.QRSubDetail1NeedData( Sender: TObject;
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

procedure Tfrm_yzinput.QRSubDetail2BeforePrint( Sender: TQRCustomBand;
  var PrintBand: Boolean );
begin
  if paper_size > 31 then
  begin
    quickrep2.NewPage;
    paper_size := 0;
  end;
end;

procedure Tfrm_yzinput.QRSubDetail2NeedData( Sender: TObject;
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

procedure Tfrm_yzinput.cxTabSheet2Show( Sender: TObject );
begin
  Proc_Seek_dj( zyh );
end;

procedure Tfrm_yzinput.cxTabSheet3Show( Sender: TObject );
begin
  qry_cx_jyjg.Close;
  qry_cx_jyjg.Parameters.ParamByName( 'zyh' ).Value := zyh;
//  qry_cx_jyjg.Parameters.ParamByName('zyh1').Value := zyh;
  qry_cx_jyjg.Open;
  if qry_cx_jyjg.RecordCount > 0 then
    cxGrid3DBTableView1.DataController.Groups.FullExpand;
end;

initialization
  RegisterClass( Tfrm_yzinput );
end.
