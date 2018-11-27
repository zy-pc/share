unit p_zxdxd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, StdCtrls, DB, QRCtrls, QuickRpt, ExtCtrls,
  DBGridEhGrouping;

type
  Tfrm_zxdxd = class( TForm )
    GroupBox1: TGroupBox;
    DBGridEh1: TDBGridEh;                     
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    ComboBox1: TComboBox;
    Button1: TButton;
    Button2: TButton;
    ds_yzxd: TDataSource;
    QuickRep6: TQuickRep;
    QRBand11: TQRBand;
    QRLabel59: TQRLabel;
    QRBand12: TQRBand;
    QRShape173: TQRShape;
    QRLabeljy2: TQRLabel;
    QRLabeljy3: TQRLabel;
    QRLabeljy7: TQRLabel;
    QRLabeljy18: TQRLabel;
    QRLabeljy19: TQRLabel;
    QRShape196: TQRShape;
    QRShape199: TQRShape;
    QRShape200: TQRShape;
    QRLabeljy20: TQRLabel;
    QRLabeljy21: TQRLabel;
    QRLabeljy26: TQRLabel;
    nyjy: TQRLabel;
    QRShape201: TQRShape;
    QRLabeljy28: TQRLabel;
    QRLabeljy29: TQRLabel;
    QRLabeljy30: TQRLabel;
    QRShape202: TQRShape;
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
    QRLabeljy61: TQRLabel;
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
    QRShape65: TQRShape;
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
    QRLabel61: TQRLabel;
    QRLabel57: TQRLabel;
    Label3: TLabel;
    Button3: TButton;
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
    QRLabel67: TQRLabel;
    QRLabel58: TQRLabel;
    QRShape1: TQRShape;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QuickRep1: TQuickRep;
    QRBand2: TQRBand;
    QRShape2: TQRShape;
    QRLabel2000: TQRLabel;
    QRLabel300: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRLabel200: TQRLabel;
    QRLabel210: TQRLabel;
    QRLabel260: TQRLabel;
    nrjy0: TQRLabel;
    QRShape7: TQRShape;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    DetailBand3: TQRBand;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRShape22: TQRShape;
    QRShape23: TQRShape;
    QRShape24: TQRShape;
    QRShape25: TQRShape;
    QRShape72: TQRShape;
    QRShape73: TQRShape;
    QRShape74: TQRShape;
    QRShape75: TQRShape;
    QRShape76: TQRShape;
    QRShape77: TQRShape;
    QRShape78: TQRShape;
    QRShape79: TQRShape;
    QRShape80: TQRShape;
    QRShape81: TQRShape;
    QRShape82: TQRShape;
    QRShape83: TQRShape;
    QRShape84: TQRShape;
    QRShape85: TQRShape;
    QRShape86: TQRShape;
    QRShape87: TQRShape;
    QRShape98: TQRShape;
    QRShape99: TQRShape;
    QRShape100: TQRShape;
    QRShape101: TQRShape;
    QRShape102: TQRShape;
    kdysm1: TQRLabel;
    ypy1: TQRLabel;
    QRgrImagej3: TQRImage;
    xmm1: TQRLabel;
    ksr2: TQRLabel;
    kdysm2: TQRLabel;
    xmm2: TQRLabel;
    QRgrImagej4: TQRImage;
    ypy2: TQRLabel;
    ksr3: TQRLabel;
    kdysm3: TQRLabel;
    xmm3: TQRLabel;
    QRgrImagej5: TQRImage;
    ypy3: TQRLabel;
    ksr4: TQRLabel;
    kdysm4: TQRLabel;
    xmm4: TQRLabel;
    ypy4: TQRLabel;
    kdysm0: TQRLabel;
    ksr0: TQRLabel;
    xmm0: TQRLabel;
    ypy0: TQRLabel;
    QRgrImagej1: TQRImage;
    ksr1: TQRLabel;
    QRShape103: TQRShape;
    QRShape104: TQRShape;
    QRgrImagej2: TQRImage;
    QRShape106: TQRShape;
    QRShape107: TQRShape;
    QRShape109: TQRShape;
    QRShape111: TQRShape;
    QRShape113: TQRShape;
    QRShape115: TQRShape;
    QRShape118: TQRShape;
    QRShape119: TQRShape;
    QRShape121: TQRShape;
    QRShape123: TQRShape;
    QRShape124: TQRShape;
    QRLabel66: TQRLabel;
    QRLabel68: TQRLabel;
    QRShape88: TQRShape;
    QRShape89: TQRShape;
    QRShape90: TQRShape;
    QRShape91: TQRShape;
    QRShape92: TQRShape;
    QRShape93: TQRShape;
    QRShape94: TQRShape;
    QRShape95: TQRShape;
    QRLabel69: TQRLabel;
    QRLabel70: TQRLabel;
    QRLabel71: TQRLabel;
    qrshp1: TQRShape;
    qrshp2: TQRShape;
    qckrpcqsy: TQuickRep;
    qrbnd4: TQRBand;
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
    qrbndcqsy: TQRBand;
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
    qrbnd6: TQRBand;
    cqsyxmxm: TQRLabel;
    cqsybchbch: TQRLabel;
    cqsykh: TQRLabel;
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
    qrshp126: TQRShape;
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
    qrshp121: TQRShape;
    qrshp124: TQRShape;
    qrshp125: TQRShape;
    qrbnd10: TQRBand;
    cqzlxmxm: TQRLabel;
    cqzlbchbch: TQRLabel;
    cqzlkhkh: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    procedure Button2Click( Sender: TObject );
    procedure DBGridEh1DrawColumnCell( Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState );
    procedure Button1Click( Sender: TObject );
    procedure FormShow( Sender: TObject );
    procedure Button3Click(Sender: TObject);
    procedure DBGridEh1CellClick(Column: TColumnEh);
  private
    procedure pro_xd_a4;
    procedure pro_xd_b5;
    procedure pro_cqxd_a4;
    procedure pro_cqxd_b5;
    procedure pro_xd_b5_ls;
    procedure pro_cqxd_b5_ls;
    procedure pro_xd_b5_zs;
    procedure pro_xd_b5_zs_ls;
    procedure pro_xd_b5_zs_id;
    procedure pro_xd_b5_zs_ls_id;
    procedure pro_xd_b5_cqzl;
    procedure pro_xd_b5_lszl;
    procedure pro_xd_b5_cqzl_id;
    procedure pro_xd_b5_lszl_id;
    procedure pro_xd_b5_cqcfd;
    procedure pro_xd_b5_lscfd;
    procedure pro_xd_b5_cqcfd_id;
    procedure pro_xd_b5_lscfd_id;
    procedure pro_xd_a4_zs;
    procedure pro_xd_a4_zl;
    procedure pro_xd_a4_ls;
    procedure pro_xd_a4_zl_ls;
    procedure pro_xd_a4_zs_ls;
    procedure pro_cqxd_a4_id(m:integer);
    procedure pro_xd_qt_zs(m:Integer);
    procedure pro_xd_cq_zs1;
    procedure pro_xd_cq_zs2;
    procedure pro_xd_cq_zs3;
    procedure pro_xd_ls_zs1;
    procedure pro_xd_ls_zs2;
    procedure pro_xd_ls_zs3;
    procedure pro_xd_qt_zs4;
    procedure pro_xd_qt_zs1;
    procedure pro_xd_qt_zs2;
    procedure pro_xd_qt_zs3;
    procedure pro_xd_qt_zs4_ls;
    procedure pro_xd_qt_zs5;
    procedure pro_xd_qt_zs6;
    procedure pro_xd_qt_zs_k;
    procedure pro_xd_qt_zs_k1;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_zxdxd: Tfrm_zxdxd;
   kdrq : string;
   v_hs :Integer;


  _mydyzs:integer; //calmhawk---每页打印组数---

implementation

uses p_dm, p_func, p_yzinput;

{$R *.dfm}

procedure Tfrm_zxdxd.Button1Click( Sender: TObject );
var dyzd:string;
    zszd:string;
begin
   DM_data.qry_pub.close;
   DM_data.qry_pub.sql.Text:='select * from zybl_zyyz_dytjsz where dyxm=''输液计划单'' ';
   DM_data.qry_pub.Open;
   DM_data.qry_pub.First;
   dyzd:=',';
   while not DM_data.qry_pub.eof do
   begin
     dyzd:= dyzd+trim(DM_data.qry_pub.FieldByName('yytj').asstring)+',';
     DM_data.qry_pub.Next;
   end;
   DM_data.qry_pub.close;
   DM_data.qry_pub.sql.Text:='select * from zybl_zyyz_dytjsz where dyxm=''注射计划单'' ';
   DM_data.qry_pub.Open;
   DM_data.qry_pub.First;
   zszd:=',';
   while not DM_data.qry_pub.eof do
   begin
     zszd:= zszd+trim(DM_data.qry_pub.FieldByName('yytj').asstring)+',';
     DM_data.qry_pub.Next;
   end;
   if frm_yzinput.sp_zxjl_cq_dy.Filter = 'tzrq=null ' then
   begin                                                                                 
    if frm_yzinput.sp_zxjl_cq_dy.Parameters.ParamByName('@fs').Value=0 then
    begin
      pro_xd_b5_cqcfd;     //长期查房单     ,从选择行开始续打
    end
    else
    begin
      pro_xd_b5_lscfd;      //临时查房单     ,从选择行开始续打
    end;

   end
   else
   begin
    if _mydyzs=9 then
    begin
     if frm_yzinput.sp_zxjl_cq_dy.Parameters.ParamByName('@fs').Value=0 then
     begin
      if Pos(','+frm_yzinput.sp_zxjl_cq_dy.FieldByName('yytj').asstring+',',dyzd)>0  then
         pro_xd_b5
      else if (frm_yzinput.sp_zxjl_cq_dy.FieldByName('lb').asstring='治疗') then
         pro_xd_b5_cqzl
      else
         pro_xd_b5_zs;
     end
     else  if frm_yzinput.sp_zxjl_cq_dy.Parameters.ParamByName('@fs').Value=1 then
     begin
      if (Pos(','+frm_yzinput.sp_zxjl_cq_dy.FieldByName('yytj').asstring+',',dyzd)>0) or
       (Pos('皮试',frm_yzinput.sp_zxjl_cq_dy.FieldByName('xmmc').asstring)>0) or
       (Pos('敏试',frm_yzinput.sp_zxjl_cq_dy.FieldByName('xmmc').asstring)>0) then
        pro_xd_b5_ls
      else if (frm_yzinput.sp_zxjl_cq_dy.FieldByName('lb').asstring='治疗') then
        pro_xd_b5_lszl
      else
        pro_xd_b5_zs_ls;
     end;
    end
    else if _mydyzs=5 then
    begin
     if frm_yzinput.sp_zxjl_cq_dy.Parameters.ParamByName('@fs').Value=0 then
     begin
      if Pos(','+frm_yzinput.sp_zxjl_cq_dy.FieldByName('yytj').asstring+',',dyzd)>0  then
      begin
        pro_xd_a4
      end
      else if (frm_yzinput.sp_zxjl_cq_dy.FieldByName('lb').asstring='治疗') then
      begin
        pro_xd_a4_zl
      end
      else
      begin
        pro_xd_a4_zs;
      end

     end
     else  if frm_yzinput.sp_zxjl_cq_dy.Parameters.ParamByName('@fs').Value=1 then
     begin
      if (Pos(','+frm_yzinput.sp_zxjl_cq_dy.FieldByName('yytj').asstring+',',dyzd)>0) or
       (Pos('皮试',frm_yzinput.sp_zxjl_cq_dy.FieldByName('xmmc').asstring)>0) or
       (Pos('敏试',frm_yzinput.sp_zxjl_cq_dy.FieldByName('xmmc').asstring)>0)  then
      begin
        pro_xd_a4_ls
      end
      else if (frm_yzinput.sp_zxjl_cq_dy.FieldByName('lb').asstring='治疗') then
      begin
        pro_xd_a4_zl_ls
      end
      else
      begin
        pro_xd_a4_zs_ls;
      end
     end;
    end
    else
    begin
     if frm_yzinput.sp_zxjl_cq_dy.Parameters.ParamByName('@fs').Value=0 then   //长期
     begin
      if Pos(','+frm_yzinput.sp_zxjl_cq_dy.FieldByName('yytj').asstring+',',dyzd)>0 then
      begin
          pro_xd_qt_zs1;  //长期输液
      end
      else
      if (frm_yzinput.sp_zxjl_cq_dy.FieldByName('lb').asstring='治疗') then
      begin
          pro_xd_qt_zs2;  //长期治疗
      end
      else if (Pos(','+frm_yzinput.sp_zxjl_cq_dy.FieldByName('yytj').asstring+',',zszd)>0 ) then
      begin
        pro_xd_qt_zs3;   //长期注射
      end
      else
      begin
        pro_xd_qt_zs_k;   //长期口服药
      end;

     end
     else  if frm_yzinput.sp_zxjl_cq_dy.Parameters.ParamByName('@fs').Value=1 then
     begin
      if (Pos(','+frm_yzinput.sp_zxjl_cq_dy.FieldByName('yytj').asstring+',',dyzd)>0) or
       (Pos('皮试',frm_yzinput.sp_zxjl_cq_dy.FieldByName('xmmc').asstring)>0) or
       (Pos('敏试',frm_yzinput.sp_zxjl_cq_dy.FieldByName('xmmc').asstring)>0)  then
      begin
        pro_xd_qt_zs4;    //临时输液单
      end
      else if (frm_yzinput.sp_zxjl_cq_dy.FieldByName('lb').asstring='治疗') then
      begin
        pro_xd_qt_zs5;    //临时治疗
      end
      else
      begin
        if pub_yydm ='0260' then
        begin
           pro_xd_qt_zs3;   //长期注射
        end else
        begin
            pro_xd_qt_zs6;   //临时注射
        end;

      end
     end;
    end;
   end;
end;



procedure Tfrm_zxdxd.pro_xd_b5_lscfd_id;
var
  i: Integer;
  hs: Integer;
  x: Integer;
  n: Integer;
  y: Integer;
  j: Integer;
  count: Integer;
  aControl: TControl;
  yzid:string;
begin
  yzid:= frm_yzinput.sp_zxjl_cq_dy.FieldByName('id').AsString;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := False;
  frm_yzinput.sp_zxjl_cq_dy.Filter :='id='+yzid;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := True;
  hs:=StrToInt(ComboBox1.Text)-1;
  if not frm_yzinput.sp_zxjl_cq_dy.IsEmpty then
  begin
    frm_yzinput.sp_zxjl_cq_dy.First;
    if frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs mod 9 <> 0 then
      y := trunc( (frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs) / 9 ) + 1
    else
      y := trunc( (frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs) / 9 );
    count := frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs;
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
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).enabled := false;
          //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
            //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := '';
          end
          else
          begin
            if (i=1) and (j<hs+1) then
            begin
            aControl := QRBand10.FindChildControl( 'ksrqls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            aControl := QRBand10.FindChildControl( 'kdysmcls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).enabled := false;
          //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
            //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := '';
            end
            else
            begin
            aControl := QRBand10.FindChildControl( 'ksrqls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ksrq' ).AsString;
            aControl := QRBand10.FindChildControl( 'kdysmcls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;
            if frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
            begin
              x := ( length( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
              QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).enabled := true;
              QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).Top := TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).top;
              QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).left := QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ).left - 20;
              QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).height := 30;
              TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
              TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
              //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end
            else
            begin
              QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).enabled := false;
              QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ).Width := 235;
              TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
              TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
             // TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end;
            frm_yzinput.sp_zxjl_cq_dy.Next;
            end;
          end;
        end
        else
        begin

          if (i=1) and (j<hs+1) then
          begin
            aControl := QRBand10.FindChildControl( 'ksrqls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            aControl := QRBand10.FindChildControl( 'kdysmcls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).enabled := false;
          //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
            //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := '';
          end
          else
          begin
          aControl := QRBand10.FindChildControl( 'ksrqls_' + IntToStr( j - 1 ) );
          if aControl is TQRLabel then
            TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ksrq' ).asstring;
          aControl := QRBand10.FindChildControl( 'kdysmcls_' + IntToStr( j - 1 ) );
          if aControl is TQRLabel then
            TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;
          if frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
          begin
            x := ( length( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
            QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).enabled := true;
            QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).Top := TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).top;
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).left := QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ).left - 20;
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).height := 30;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
          //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
          end
          else
          begin
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).enabled := false;
            QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ).Width := 235;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
          //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
          end;
          frm_yzinput.sp_zxjl_cq_dy.Next;
          end;
        end;
      end;
      if i=1 then       
      begin

        QRLabel44.Enabled:=false;
        QRLabel58.Enabled:=false;
        QRLabel67.Enabled:=false;
        QRBand8.Enabled:=false;
        QRShape138.Enabled:=false;
         QRLabel9.Enabled:=false;
         QRBand9.Frame.DrawBottom:=false;

      for n := 45 to 56 do
      begin
        QRBand9.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=false;
      end;
      for n := 138 to 145 do
      begin
        QRBand9.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
      end;

      for n := 146 to 172 do
      begin
        QRBand10.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
      end;

      QuickRep5.Preview;
      end
      else
      begin

        QRLabel44.Enabled:=true;
        QRLabel58.Enabled:=true;
        QRLabel67.Enabled:=true;
        QRBand8.Enabled:=true;
        QRShape138.Enabled:=true;
         QRLabel9.Enabled:=true;
         QRBand9.Frame.DrawBottom:=true;


      for n := 45 to 56 do
      begin
        QRBand9.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=false;
      end;
      for n := 138 to 145 do
      begin
        QRBand9.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
      end;

      for n := 146 to 172 do
      begin
        QRBand10.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
      end;


      DM_data.qry_pub.Close;
      DM_data.qry_pub.SQL.text:='select * from sys_kscwsz where bqdm='+''''+pub_bqdm+''''+' and bcbh='+''''+trim(frm_yzinput.sp_jbxx.fieldbyname( 'bch' ).asstring)+'''';
      DM_data.qry_pub.Open;
      QRLabel45.Caption := pub_yymc + '临时查房单';
      QRLabel46.Caption := '姓名:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxm' ).asstring;
      QRLabel50.Caption := '病床号:' + Trim(DM_data.qry_pub.FieldByName('yybch').asstring);
      QRLabel51.Caption := '性别:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxb' ).asstring;
      QRLabel52.Caption := '年龄:' + trim( frm_yzinput.sp_jbxx.fieldbyname( 'brnl' ).asstring );
      QRLabel53.Caption := FormatDateTime( 'yyyy', frm_func.curr_date ) + '年';

      QRLabel67.Caption:='姓名:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxm' ).asstring+'      '+
                         '病床号:' + Trim(DM_data.qry_pub.FieldByName('yybch').asstring)+'      '+
                         '卡号:' + Trim( frm_yzinput.sp_jbxx.fieldbyname( 'tmh' ).asstring  );
                      //   '性别:' + sp_jbxx.fieldbyname( 'brxb' ).asstring+'      '+
                      //   '年龄:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
      //QuickRep3.Prepare;
      QRLabel58.Caption := '审核医生：';
      QuickRep5.Preview;
      end;
     end;
  end;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := False;
  frm_yzinput.sp_zxjl_cq_dy.Filter := 'tzrq=null ' ;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := True;

end;


procedure Tfrm_zxdxd.pro_xd_b5_cqcfd_id;
var
  i: Integer;
  hs: Integer;
  x: Integer;
  n: Integer;
  y: Integer;
  j: Integer;
  count: Integer;
  aControl: TControl;
  yzid:string;
begin
  yzid:= frm_yzinput.sp_zxjl_cq_dy.FieldByName('id').AsString;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := False;
  frm_yzinput.sp_zxjl_cq_dy.Filter :='id='+yzid;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := True;
  hs:=StrToInt(ComboBox1.Text)-1;
  if not frm_yzinput.sp_zxjl_cq_dy.IsEmpty then
  begin
    frm_yzinput.sp_zxjl_cq_dy.First;
    if frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs mod 9 <> 0 then
      y := trunc( (frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs) / 9 ) + 1
    else
      y := trunc( (frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs) / 9 );
    count := frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs;
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
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).enabled := false;
          //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
            //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := '';
          end
          else
          begin
            if (i=1) and (j<hs+1) then
            begin
            aControl := QRBand10.FindChildControl( 'ksrqls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            aControl := QRBand10.FindChildControl( 'kdysmcls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).enabled := false;
          //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
            //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := '';
            end
            else
            begin
            aControl := QRBand10.FindChildControl( 'ksrqls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ksrq' ).AsString;
            aControl := QRBand10.FindChildControl( 'kdysmcls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;
            if frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
            begin
              x := ( length( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
              QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).enabled := true;
              QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).Top := TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).top;
              QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).left := QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ).left - 20;
              QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).height := 30;
              TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
              TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
              //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end
            else
            begin
              QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).enabled := false;
              QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ).Width := 235;
              TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
              TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
             // TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end;
            frm_yzinput.sp_zxjl_cq_dy.Next;
            end;
          end;
        end
        else
        begin

          if (i=1) and (j<hs+1) then
          begin
            aControl := QRBand10.FindChildControl( 'ksrqls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            aControl := QRBand10.FindChildControl( 'kdysmcls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).enabled := false;
          //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
            //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := '';
          end
          else
          begin
          aControl := QRBand10.FindChildControl( 'ksrqls_' + IntToStr( j - 1 ) );
          if aControl is TQRLabel then
            TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ksrq' ).asstring;
          aControl := QRBand10.FindChildControl( 'kdysmcls_' + IntToStr( j - 1 ) );
          if aControl is TQRLabel then
            TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;
          if frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
          begin
            x := ( length( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
            QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).enabled := true;
            QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).Top := TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).top;
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).left := QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ).left - 20;
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).height := 30;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
          //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
          end
          else
          begin
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).enabled := false;
            QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ).Width := 235;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
          //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
          end;
          frm_yzinput.sp_zxjl_cq_dy.Next;
          end;
        end;
      end;
      if i=1 then       
      begin


        QRLabel44.Enabled:=false;
        QRLabel58.Enabled:=false;
        QRLabel67.Enabled:=false;
        QRBand8.Enabled:=false;
        QRShape138.Enabled:=false;
         QRLabel9.Enabled:=false;
         QRBand9.Frame.DrawBottom:=false;

      for n := 45 to 56 do
      begin
        QRBand9.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=false;
      end;
      for n := 138 to 145 do
      begin
        QRBand9.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
      end;

      for n := 146 to 172 do
      begin
        QRBand10.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
      end;

      QuickRep5.Preview;
      end
      else
      begin
        QRLabel44.Enabled:=true;
        QRLabel58.Enabled:=true;
        QRLabel67.Enabled:=true;
        QRBand8.Enabled:=true;
        QRShape138.Enabled:=true;
         QRLabel9.Enabled:=true;
         QRBand9.Frame.DrawBottom:=true;


      for n := 45 to 56 do
      begin
        QRBand9.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=false;
      end;
      for n := 138 to 145 do
      begin
        QRBand9.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
      end;

      for n := 146 to 172 do
      begin
        QRBand10.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
      end;


      DM_data.qry_pub.Close;
      DM_data.qry_pub.SQL.text:='select * from sys_kscwsz where bqdm='+''''+pub_bqdm+''''+' and bcbh='+''''+trim(frm_yzinput.sp_jbxx.fieldbyname( 'bch' ).asstring)+'''';
      DM_data.qry_pub.Open;
      QRLabel45.Caption := pub_yymc + '长期查房单';
      QRLabel46.Caption := '姓名:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxm' ).asstring;
      QRLabel50.Caption := '病床号:' + Trim(DM_data.qry_pub.FieldByName('yybch').asstring);
      QRLabel51.Caption := '性别:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxb' ).asstring;
      QRLabel52.Caption := '年龄:' + trim( frm_yzinput.sp_jbxx.fieldbyname( 'brnl' ).asstring );
      QRLabel53.Caption := FormatDateTime( 'yyyy', frm_func.curr_date ) + '年';

      QRLabel67.Caption:='姓名:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxm' ).asstring+'      '+
                         '病床号:' + Trim(DM_data.qry_pub.FieldByName('yybch').asstring)+'      '+
                         '卡号:' + Trim( frm_yzinput.sp_jbxx.fieldbyname( 'tmh' ).asstring  );
                      //   '性别:' + sp_jbxx.fieldbyname( 'brxb' ).asstring+'      '+
                      //   '年龄:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
      //QuickRep3.Prepare;
      QRLabel58.Caption := '审核医生：';
      QuickRep5.Preview;
      end;
     end;
  end;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := False;
  frm_yzinput.sp_zxjl_cq_dy.Filter := 'tzrq=null ' ;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := True;

end;





procedure Tfrm_zxdxd.pro_xd_b5_lscfd;
var
  i: Integer;
  hs: Integer;
  x: Integer;
  n: Integer;
  y: Integer;
  j: Integer;
  count: Integer;
  aControl: TControl;
begin
  kdrq:= frm_yzinput.sp_zxjl_cq_dy.FieldByName('ksrq').AsString;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := False;
  frm_yzinput.sp_zxjl_cq_dy.Filter := 'tzrq=null  and ksrq>=' + '''' + kdrq + '''';
  frm_yzinput.sp_zxjl_cq_dy.Filtered := True;
  hs:=StrToInt(ComboBox1.Text)-1;
  if not frm_yzinput.sp_zxjl_cq_dy.IsEmpty then
  begin
    frm_yzinput.sp_zxjl_cq_dy.First;
    if frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs mod 9 <> 0 then
      y := trunc( (frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs) / 9 ) + 1
    else
      y := trunc( (frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs) / 9 );
    count := frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs;
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
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).enabled := false;
          //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
            //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := '';
          end
          else
          begin
            if (i=1) and (j<hs+1) then
            begin
            aControl := QRBand10.FindChildControl( 'ksrqls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            aControl := QRBand10.FindChildControl( 'kdysmcls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).enabled := false;
          //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
            //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := '';
            end
            else
            begin
            aControl := QRBand10.FindChildControl( 'ksrqls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ksrq' ).AsString;
            aControl := QRBand10.FindChildControl( 'kdysmcls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;
            if frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
            begin
              x := ( length( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
              QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).enabled := true;
              QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).Top := TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).top;
              QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).left := QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ).left - 20;
              QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).height := 30;
              TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
              TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
              //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end
            else
            begin
              QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).enabled := false;
              QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ).Width := 235;
              TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
              TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
             // TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end;
            frm_yzinput.sp_zxjl_cq_dy.Next;
            end;
          end;
        end
        else
        begin

          if (i=1) and (j<hs+1) then
          begin
            aControl := QRBand10.FindChildControl( 'ksrqls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            aControl := QRBand10.FindChildControl( 'kdysmcls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).enabled := false;
          //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
            //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := '';
          end
          else
          begin
          aControl := QRBand10.FindChildControl( 'ksrqls' + IntToStr( j - 1 ) );
          if aControl is TQRLabel then
            TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ksrq' ).asstring;
          aControl := QRBand10.FindChildControl( 'kdysmcls' + IntToStr( j - 1 ) );
          if aControl is TQRLabel then
            TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;
          if frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
          begin
            x := ( length( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
            QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).enabled := true;
            QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).Top := TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).top;
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).left := QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ).left - 20;
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).height := 30;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
          //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
          end
          else
          begin
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).enabled := false;
            QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ).Width := 235;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
          //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
          end;
          frm_yzinput.sp_zxjl_cq_dy.Next;
          end;
        end;
      end;
      if i=1 then       
      begin
        QRLabel44.Enabled:=false;
        QRLabel58.Enabled:=false;
        QRLabel67.Enabled:=false;
        QRBand8.Enabled:=false;
        QRShape138.Enabled:=false;
         QRLabel9.Enabled:=false;
         QRBand9.Frame.DrawBottom:=false;

      for n := 45 to 56 do
      begin
        QRBand9.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=false;
      end;
      for n := 138 to 145 do
      begin
        QRBand9.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
      end;

      for n := 146 to 172 do
      begin
        QRBand10.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
      end;

      QuickRep5.Preview;
      end
      else
      begin
        QRLabel44.Enabled:=true;
        QRLabel58.Enabled:=true;
        QRLabel67.Enabled:=true;
        QRBand8.Enabled:=true;
        QRShape138.Enabled:=true;
        QRLabel9.Enabled:=true;
        QRBand9.Frame.DrawBottom:=true;


      for n := 45 to 56 do
      begin
        QRBand9.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=true;
      end;
      for n := 138 to 145 do
      begin
        QRBand9.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;
      end;

      for n := 146 to 172 do
      begin
        QRBand10.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;
      end;

      
      DM_data.qry_pub.Close;
      DM_data.qry_pub.SQL.text:='select * from sys_kscwsz where bqdm='+''''+pub_bqdm+''''+' and bcbh='+''''+trim(frm_yzinput.sp_jbxx.fieldbyname( 'bch' ).asstring)+'''';
      DM_data.qry_pub.Open;
      QRLabel45.Caption := pub_yymc + '临时查房单';
      QRLabel46.Caption := '姓名:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxm' ).asstring;
      QRLabel50.Caption := '病床号:' + Trim(DM_data.qry_pub.FieldByName('yybch').asstring);
      QRLabel51.Caption := '性别:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxb' ).asstring;
      QRLabel52.Caption := '年龄:' + trim( frm_yzinput.sp_jbxx.fieldbyname( 'brnl' ).asstring );
      QRLabel53.Caption := FormatDateTime( 'yyyy', frm_func.curr_date ) + '年';

      QRLabel67.Caption:='姓名:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxm' ).asstring+'      '+
                         '病床号:' + Trim(DM_data.qry_pub.FieldByName('yybch').asstring)+'      '+
                         '卡号:' + Trim( frm_yzinput.sp_jbxx.fieldbyname( 'tmh' ).asstring  );
                      //   '性别:' + sp_jbxx.fieldbyname( 'brxb' ).asstring+'      '+
                      //   '年龄:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
      //QuickRep3.Prepare;
      QRLabel58.Caption := '审核医生：';
      QuickRep5.Preview;
      end;
     end;
  end;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := False;
  frm_yzinput.sp_zxjl_cq_dy.Filter := 'tzrq=null ';
  frm_yzinput.sp_zxjl_cq_dy.Filtered := True;

end;

procedure Tfrm_zxdxd.pro_xd_b5_cqcfd;
var
  i: Integer;
  hs: Integer;
  x: Integer;
  n: Integer;
  y: Integer;
  j: Integer;
  count: Integer;
  aControl: TControl;
begin
  kdrq:= frm_yzinput.sp_zxjl_cq_dy.FieldByName('ksrq').AsString;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := False;
  frm_yzinput.sp_zxjl_cq_dy.Filter := 'tzrq=null and ksrq>=' + '''' + kdrq + '''';
  frm_yzinput.sp_zxjl_cq_dy.Filtered := True;
  hs:=StrToInt(ComboBox1.Text)-1;
  if not frm_yzinput.sp_zxjl_cq_dy.IsEmpty then
  begin
    frm_yzinput.sp_zxjl_cq_dy.First;
    if frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs mod 9 <> 0 then
      y := trunc( (frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs) / 9 ) + 1
    else
      y := trunc( (frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs) / 9 );
    count := frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs;
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
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).enabled := false;
          //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
            //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := '';
          end
          else
          begin
            if (i=1) and (j<hs+1) then
            begin
            aControl := QRBand10.FindChildControl( 'ksrqls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            aControl := QRBand10.FindChildControl( 'kdysmcls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).enabled := false;
          //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
            //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := '';
            end
            else
            begin
            aControl := QRBand10.FindChildControl( 'ksrqls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ksrq' ).AsString;
            aControl := QRBand10.FindChildControl( 'kdysmcls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;
            if frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
            begin
              x := ( length( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
              QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).enabled := true;
              QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).Top := TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).top;
              QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).left := QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ).left - 20;
              QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).height := 30;
              TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
              TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
              //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end
            else
            begin
              QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).enabled := false;
              QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ).Width := 235;
              TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
              TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
             // TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end;
            frm_yzinput.sp_zxjl_cq_dy.Next;
            end;
          end;
        end
        else
        begin

          if (i=1) and (j<hs+1) then
          begin
            aControl := QRBand10.FindChildControl( 'ksrqls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            aControl := QRBand10.FindChildControl( 'kdysmcls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).enabled := false;
          //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
            //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := '';
          end
          else
          begin
          aControl := QRBand10.FindChildControl( 'ksrqls' + IntToStr( j - 1 ) );
          if aControl is TQRLabel then
            TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ksrq' ).asstring;
          aControl := QRBand10.FindChildControl( 'kdysmcls' + IntToStr( j - 1 ) );
          if aControl is TQRLabel then
            TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;
          if frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
          begin
            x := ( length( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
            QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).enabled := true;
            QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).Top := TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).top;
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).left := QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ).left - 20;
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).height := 30;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
          //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
          end
          else
          begin
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).enabled := false;
            QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ).Width := 235;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
          //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
          end;
          frm_yzinput.sp_zxjl_cq_dy.Next;
          end;
        end;
      end;
      if i=1 then       
      begin


        QRLabel44.Enabled:=false;
        QRLabel58.Enabled:=false;
        QRLabel67.Enabled:=false;
        QRBand8.Enabled:=false;
        QRShape138.Enabled:=false;
         QRLabel9.Enabled:=false;
         QRBand9.Frame.DrawBottom:=false;


      for n := 45 to 56 do
      begin
        QRBand9.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=false;
      end;
      for n := 138 to 145 do
      begin
        QRBand9.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
      end;

      for n := 146 to 172 do
      begin
        QRBand10.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
      end;

      QuickRep5.Preview;
      end
      else
      begin

        QRLabel44.Enabled:=true;
        QRLabel58.Enabled:=true;
        QRLabel67.Enabled:=true;
        QRBand8.Enabled:=true;
        QRShape138.Enabled:=true;
         QRLabel9.Enabled:=true;
         QRBand9.Frame.DrawBottom:=true;


      for n := 45 to 56 do
      begin
        QRBand9.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=true;
      end;
      for n := 138 to 145 do
      begin
        QRBand9.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;
      end;

      for n := 146 to 172 do
      begin
        QRBand10.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;
      end;
      
      DM_data.qry_pub.Close;
      DM_data.qry_pub.SQL.text:='select * from sys_kscwsz where bqdm='+''''+pub_bqdm+''''+' and bcbh='+''''+trim(frm_yzinput.sp_jbxx.fieldbyname( 'bch' ).asstring)+'''';
      DM_data.qry_pub.Open;
      QRLabel45.Caption := pub_yymc + '长期查房单';
      QRLabel46.Caption := '姓名:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxm' ).asstring;
      QRLabel50.Caption := '病床号:' + Trim(DM_data.qry_pub.FieldByName('yybch').asstring);
      QRLabel51.Caption := '性别:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxb' ).asstring;
      QRLabel52.Caption := '年龄:' + trim( frm_yzinput.sp_jbxx.fieldbyname( 'brnl' ).asstring );
      QRLabel53.Caption := FormatDateTime( 'yyyy', frm_func.curr_date ) + '年';

      QRLabel67.Caption:='姓名:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxm' ).asstring+'      '+
                         '病床号:' + Trim(DM_data.qry_pub.FieldByName('yybch').asstring)+'      '+
                         '卡号:' + Trim( frm_yzinput.sp_jbxx.fieldbyname( 'tmh' ).asstring  );
                      //   '性别:' + sp_jbxx.fieldbyname( 'brxb' ).asstring+'      '+
                      //   '年龄:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
      //QuickRep3.Prepare;
      QRLabel58.Caption := '审核医生：';
      QuickRep5.Preview;
      end;
     end;
  end;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := False;
  frm_yzinput.sp_zxjl_cq_dy.Filter := 'tzrq=null ' ;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := True;

end;



procedure Tfrm_zxdxd.pro_xd_b5_lszl_id;
var
  i: Integer;
  hs: Integer;
  x: Integer;
  n: Integer;
  y: Integer;
  j: Integer;
  count: Integer;
  aControl: TControl;
  yzid:string;
begin
  yzid:= frm_yzinput.sp_zxjl_cq_dy.FieldByName('id').AsString;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := False;
  frm_yzinput.sp_zxjl_cq_dy.Filter := 'id='+yzid;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := True;
  hs:=StrToInt(ComboBox1.Text)-1;
  if not frm_yzinput.sp_zxjl_cq_dy.IsEmpty then
  begin
    frm_yzinput.sp_zxjl_cq_dy.First;
    if frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs mod 9 <> 0 then
      y := trunc( (frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs) / 9 ) + 1
    else
      y := trunc( (frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs) / 9 );
    count := frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs;
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
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).enabled := false;
          //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
            //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := '';
          end
          else
          begin
            if (i=1) and (j<hs+1) then
            begin
            aControl := QRBand10.FindChildControl( 'ksrqls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            aControl := QRBand10.FindChildControl( 'kdysmcls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).enabled := false;
          //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
            //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := '';
            end
            else
            begin
            aControl := QRBand10.FindChildControl( 'ksrqls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ksrq' ).AsString;
            aControl := QRBand10.FindChildControl( 'kdysmcls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;
            if frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
            begin
              x := ( length( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
              QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).enabled := true;
              QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).Top := TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).top;
              QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).left := QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ).left - 20;
              QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).height := 30;
              TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
              TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
              //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end
            else
            begin
              QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).enabled := false;
              QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ).Width := 235;
              TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
              TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
             // TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end;
            frm_yzinput.sp_zxjl_cq_dy.Next;
            end;
          end;
        end
        else
        begin

          if (i=1) and (j<hs+1) then
          begin
            aControl := QRBand10.FindChildControl( 'ksrqls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            aControl := QRBand10.FindChildControl( 'kdysmcls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).enabled := false;
          //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
            //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := '';
          end
          else
          begin
          aControl := QRBand10.FindChildControl( 'ksrqls_' + IntToStr( j - 1 ) );
          if aControl is TQRLabel then
            TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ksrq' ).asstring;
          aControl := QRBand10.FindChildControl( 'kdysmcls_' + IntToStr( j - 1 ) );
          if aControl is TQRLabel then
            TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;
          if frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
          begin
            x := ( length( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
            QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).enabled := true;
            QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).Top := TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).top;
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).left := QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ).left - 20;
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).height := 30;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
          //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
          end
          else
          begin
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).enabled := false;
            QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ).Width := 235;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
          //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
          end;
          frm_yzinput.sp_zxjl_cq_dy.Next;
          end;
        end;
      end;
      if i=1 then       
      begin

        QRLabel44.Enabled:=false;
        QRLabel58.Enabled:=false;
        QRLabel67.Enabled:=false;

      for n := 45 to 56 do
      begin
        QRBand9.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=false;
      end;
      for n := 138 to 145 do
      begin
        QRBand9.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
      end;

      for n := 146 to 172 do
      begin
        QRBand10.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
      end;

      QuickRep5.Preview;
      end
      else
      begin

        QRLabel44.Enabled:=true;
        QRLabel58.Enabled:=true;
        QRLabel67.Enabled:=true;


      for n := 45 to 56 do
      begin
        QRBand9.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=false;
      end;
      for n := 138 to 145 do
      begin
        QRBand9.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
      end;

      for n := 146 to 172 do
      begin
        QRBand10.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
      end;

      
      DM_data.qry_pub.Close;
      DM_data.qry_pub.SQL.text:='select * from sys_kscwsz where bqdm='+''''+pub_bqdm+''''+' and bcbh='+''''+trim(frm_yzinput.sp_jbxx.fieldbyname( 'bch' ).asstring)+'''';
      DM_data.qry_pub.Open;
      QRLabel45.Caption := pub_yymc + '临时治疗执行单';
      QRLabel46.Caption := '姓名:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxm' ).asstring;
      QRLabel50.Caption := '病床号:' + Trim(DM_data.qry_pub.FieldByName('yybch').asstring);
      QRLabel51.Caption := '性别:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxb' ).asstring;
      QRLabel52.Caption := '年龄:' + trim( frm_yzinput.sp_jbxx.fieldbyname( 'brnl' ).asstring );
      QRLabel53.Caption := FormatDateTime( 'yyyy', frm_func.curr_date ) + '年';

      QRLabel67.Caption:='姓名:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxm' ).asstring+'      '+
                         '病床号:' + Trim(DM_data.qry_pub.FieldByName('yybch').asstring)+'      '+
                         '卡号:' + Trim( frm_yzinput.sp_jbxx.fieldbyname( 'tmh' ).asstring  );
                      //   '性别:' + sp_jbxx.fieldbyname( 'brxb' ).asstring+'      '+
                      //   '年龄:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
      //QuickRep3.Prepare;
      QRLabel58.Caption := '审核医生：';
      QuickRep5.Preview;
      end;
     end;
  end;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := False;
  frm_yzinput.sp_zxjl_cq_dy.Filter := 'lb=''治疗'' and ksrq>='+''''+formatdatetime('yy-MM-dd',frm_func.curr_date)+' 00:00'+''''+' and tzrq=null ' ;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := True;

end;


procedure Tfrm_zxdxd.pro_xd_b5_cqzl_id;
var
  i: Integer;
  hs: Integer;
  x: Integer;
  n: Integer;
  y: Integer;
  j: Integer;
  count: Integer;
  aControl: TControl;
  yzid:string;
begin
  yzid:= frm_yzinput.sp_zxjl_cq_dy.FieldByName('id').AsString;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := False;
  frm_yzinput.sp_zxjl_cq_dy.Filter := 'id='+yzid;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := True;
  hs:=StrToInt(ComboBox1.Text)-1;
  if not frm_yzinput.sp_zxjl_cq_dy.IsEmpty then
  begin
    frm_yzinput.sp_zxjl_cq_dy.First;
    if frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs mod 9 <> 0 then
      y := trunc( (frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs) / 9 ) + 1
    else
      y := trunc( (frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs) / 9 );
    count := frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs;
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
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).enabled := false;
          //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
            //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := '';
          end
          else
          begin
            if (i=1) and (j<hs+1) then
            begin
            aControl := QRBand10.FindChildControl( 'ksrqls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            aControl := QRBand10.FindChildControl( 'kdysmcls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).enabled := false;
          //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
            //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := '';
            end
            else
            begin
            aControl := QRBand10.FindChildControl( 'ksrqls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ksrq' ).AsString;
            aControl := QRBand10.FindChildControl( 'kdysmcls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;
            if frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
            begin
              x := ( length( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
              QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).enabled := true;
              QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).Top := TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).top;
              QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).left := QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ).left - 20;
              QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).height := 30;
              TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
              TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
              //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end
            else
            begin
              QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).enabled := false;
              QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ).Width := 235;
              TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
              TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
             // TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end;
            frm_yzinput.sp_zxjl_cq_dy.Next;
            end;
          end;
        end
        else
        begin

          if (i=1) and (j<hs+1) then
          begin
            aControl := QRBand10.FindChildControl( 'ksrqls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            aControl := QRBand10.FindChildControl( 'kdysmcls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).enabled := false;
          //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
            //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := '';
          end
          else
          begin
          aControl := QRBand10.FindChildControl( 'ksrqls_' + IntToStr( j - 1 ) );
          if aControl is TQRLabel then
            TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ksrq' ).asstring;
          aControl := QRBand10.FindChildControl( 'kdysmcls_' + IntToStr( j - 1 ) );
          if aControl is TQRLabel then
            TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;
          if frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
          begin
            x := ( length( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
            QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).enabled := true;
            QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).Top := TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).top;
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).left := QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ).left - 20;
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).height := 30;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
          //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
          end
          else
          begin
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).enabled := false;
            QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ).Width := 235;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
          //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
          end;
          frm_yzinput.sp_zxjl_cq_dy.Next;
          end;
        end;
      end;
      if i=1 then       
      begin

        QRLabel44.Enabled:=false;
        QRLabel58.Enabled:=false;
        QRLabel67.Enabled:=false;

      for n := 45 to 56 do
      begin
        QRBand9.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=false;
      end;
      for n := 138 to 145 do
      begin
        QRBand9.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
      end;

      for n := 146 to 172 do
      begin
        QRBand10.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
      end;

      QuickRep5.Preview;
      end
      else
      begin

        QRLabel44.Enabled:=true;
        QRLabel58.Enabled:=true;
        QRLabel67.Enabled:=true;


      for n := 45 to 56 do
      begin
        QRBand9.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=false;
      end;
      for n := 138 to 145 do
      begin
        QRBand9.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
      end;

      for n := 146 to 172 do
      begin
        QRBand10.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
      end;

      
      DM_data.qry_pub.Close;
      DM_data.qry_pub.SQL.text:='select * from sys_kscwsz where bqdm='+''''+pub_bqdm+''''+' and bcbh='+''''+trim(frm_yzinput.sp_jbxx.fieldbyname( 'bch' ).asstring)+'''';
      DM_data.qry_pub.Open;
      QRLabel45.Caption := pub_yymc + '长期治疗执行单';
      QRLabel46.Caption := '姓名:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxm' ).asstring;
      QRLabel50.Caption := '病床号:' + Trim(DM_data.qry_pub.FieldByName('yybch').asstring);
      QRLabel51.Caption := '性别:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxb' ).asstring;
      QRLabel52.Caption := '年龄:' + trim( frm_yzinput.sp_jbxx.fieldbyname( 'brnl' ).asstring );
      QRLabel53.Caption := FormatDateTime( 'yyyy', frm_func.curr_date ) + '年';

      QRLabel67.Caption:='姓名:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxm' ).asstring+'      '+
                         '病床号:' + Trim(DM_data.qry_pub.FieldByName('yybch').asstring)+'      '+
                         '卡号:' + Trim( frm_yzinput.sp_jbxx.fieldbyname( 'tmh' ).asstring  );
                      //   '性别:' + sp_jbxx.fieldbyname( 'brxb' ).asstring+'      '+
                      //   '年龄:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
      //QuickRep3.Prepare;
      QRLabel58.Caption := '审核医生：';
      QuickRep5.Preview;
      end;
     end;
  end;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := False;
  frm_yzinput.sp_zxjl_cq_dy.Filter := 'lb=''治疗'' and tzrq=null ' ;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := True;

end;


procedure Tfrm_zxdxd.pro_xd_b5_lszl;
var
  i: Integer;
  hs: Integer;
  x: Integer;
  n: Integer;
  y: Integer;
  j: Integer;
  count: Integer;
  aControl: TControl;
begin
  kdrq:= frm_yzinput.sp_zxjl_cq_dy.FieldByName('ksrq').AsString;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := False;
  frm_yzinput.sp_zxjl_cq_dy.Filter := 'lb=''治疗'' and tzrq=null  and ksrq>=' + '''' + kdrq + '''';
  frm_yzinput.sp_zxjl_cq_dy.Filtered := True;
  hs:=StrToInt(ComboBox1.Text)-1;
  if not frm_yzinput.sp_zxjl_cq_dy.IsEmpty then
  begin
    frm_yzinput.sp_zxjl_cq_dy.First;
    if frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs mod 9 <> 0 then
      y := trunc( (frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs) / 9 ) + 1
    else
      y := trunc( (frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs) / 9 );
    count := frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs;
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
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).enabled := false;
          //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
            //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := '';
          end
          else
          begin
            if (i=1) and (j<hs+1) then
            begin
            aControl := QRBand10.FindChildControl( 'ksrqls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            aControl := QRBand10.FindChildControl( 'kdysmcls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).enabled := false;
          //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
            //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := '';
            end
            else
            begin
            aControl := QRBand10.FindChildControl( 'ksrqls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ksrq' ).AsString;
            aControl := QRBand10.FindChildControl( 'kdysmcls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;
            if frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
            begin
              x := ( length( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
              QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).enabled := true;
              QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).Top := TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).top;
              QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).left := QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ).left - 20;
              QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).height := 30;
              TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
              TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
              //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end
            else
            begin
              QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).enabled := false;
              QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ).Width := 235;
              TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
              TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
             // TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end;
            frm_yzinput.sp_zxjl_cq_dy.Next;
            end;
          end;
        end
        else
        begin

          if (i=1) and (j<hs+1) then
          begin
            aControl := QRBand10.FindChildControl( 'ksrqls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            aControl := QRBand10.FindChildControl( 'kdysmcls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).enabled := false;
          //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
            //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := '';
          end
          else
          begin
          aControl := QRBand10.FindChildControl( 'ksrqls_' + IntToStr( j - 1 ) );
          if aControl is TQRLabel then
            TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ksrq' ).asstring;
          aControl := QRBand10.FindChildControl( 'kdysmcls_' + IntToStr( j - 1 ) );
          if aControl is TQRLabel then
            TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;
          if frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
          begin
            x := ( length( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
            QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).enabled := true;
            QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).Top := TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).top;
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).left := QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ).left - 20;
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).height := 30;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
          //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
          end
          else
          begin
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).enabled := false;
            QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ).Width := 235;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
          //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
          end;
          frm_yzinput.sp_zxjl_cq_dy.Next;
          end;
        end;
      end;
      if i=1 then       
      begin

        QRLabel44.Enabled:=false;
        QRLabel58.Enabled:=false;
        QRLabel67.Enabled:=false;

      for n := 45 to 56 do
      begin
        QRBand9.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=false;
      end;
      for n := 138 to 145 do
      begin
        QRBand9.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
      end;

      for n := 146 to 172 do
      begin
        QRBand10.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
      end;

      QuickRep5.Preview;
      end
      else
      begin

        QRLabel44.Enabled:=true;
        QRLabel58.Enabled:=true;
        QRLabel67.Enabled:=true;


      for n := 45 to 56 do
      begin
        QRBand9.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=false;
      end;
      for n := 138 to 145 do
      begin
        QRBand9.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
      end;

      for n := 146 to 172 do
      begin
        QRBand10.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
      end;

      
      DM_data.qry_pub.Close;
      DM_data.qry_pub.SQL.text:='select * from sys_kscwsz where bqdm='+''''+pub_bqdm+''''+' and bcbh='+''''+trim(frm_yzinput.sp_jbxx.fieldbyname( 'bch' ).asstring)+'''';
      DM_data.qry_pub.Open;
      QRLabel45.Caption := pub_yymc + '临时治疗执行单';
      QRLabel46.Caption := '姓名:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxm' ).asstring;
      QRLabel50.Caption := '病床号:' + Trim(DM_data.qry_pub.FieldByName('yybch').asstring);
      QRLabel51.Caption := '性别:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxb' ).asstring;
      QRLabel52.Caption := '年龄:' + trim( frm_yzinput.sp_jbxx.fieldbyname( 'brnl' ).asstring );
      QRLabel53.Caption := FormatDateTime( 'yyyy', frm_func.curr_date ) + '年';

      QRLabel67.Caption:='姓名:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxm' ).asstring+'      '+
                         '病床号:' + Trim(DM_data.qry_pub.FieldByName('yybch').asstring)+'      '+
                         '卡号:' + Trim( frm_yzinput.sp_jbxx.fieldbyname( 'tmh' ).asstring  );
                      //   '性别:' + sp_jbxx.fieldbyname( 'brxb' ).asstring+'      '+
                      //   '年龄:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
      //QuickRep3.Prepare;
      QRLabel58.Caption := '审核医生：';
      QuickRep5.Preview;
      end;
     end;
  end;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := False;
  frm_yzinput.sp_zxjl_cq_dy.Filter := 'lb=''治疗'' and ksrq>='+''''+formatdatetime('yy-MM-dd',frm_func.curr_date)+' 00:00'+''''+' and tzrq=null ' ;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := True;

end;




procedure Tfrm_zxdxd.pro_xd_b5_cqzl;
var
  i: Integer;
  hs: Integer;
  x: Integer;
  n: Integer;
  y: Integer;
  j: Integer;
  count: Integer;
  aControl: TControl;
begin
  kdrq:= frm_yzinput.sp_zxjl_cq_dy.FieldByName('ksrq').AsString;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := False;
  frm_yzinput.sp_zxjl_cq_dy.Filter := 'lb=''治疗'' and tzrq=null  and ksrq>=' + '''' + kdrq + '''';
  frm_yzinput.sp_zxjl_cq_dy.Filtered := True;
  hs:=StrToInt(ComboBox1.Text)-1;
  if not frm_yzinput.sp_zxjl_cq_dy.IsEmpty then
  begin
    frm_yzinput.sp_zxjl_cq_dy.First;
    if frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs mod 9 <> 0 then
      y := trunc( (frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs) / 9 ) + 1
    else
      y := trunc( (frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs) / 9 );
    count := frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs;
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
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).enabled := false;
          //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
            //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := '';
          end
          else
          begin
            if (i=1) and (j<hs+1) then
            begin
            aControl := QRBand10.FindChildControl( 'ksrqls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            aControl := QRBand10.FindChildControl( 'kdysmcls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).enabled := false;
          //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
            //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := '';
            end
            else
            begin
            aControl := QRBand10.FindChildControl( 'ksrqls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ksrq' ).AsString;
            aControl := QRBand10.FindChildControl( 'kdysmcls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;
            if frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
            begin
              x := ( length( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
              QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).enabled := true;
              QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).Top := TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).top;
              QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).left := QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ).left - 20;
              QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).height := 30;
              TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
              TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
              //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end
            else
            begin
              QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).enabled := false;
              QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ).Width := 235;
              TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
              TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
             // TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end;
            frm_yzinput.sp_zxjl_cq_dy.Next;
            end;
          end;
        end
        else
        begin

          if (i=1) and (j<hs+1) then
          begin
            aControl := QRBand10.FindChildControl( 'ksrqls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            aControl := QRBand10.FindChildControl( 'kdysmcls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).enabled := false;
          //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
            //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := '';
          end
          else
          begin
          aControl := QRBand10.FindChildControl( 'ksrqls_' + IntToStr( j - 1 ) );
          if aControl is TQRLabel then
            TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ksrq' ).asstring;
          aControl := QRBand10.FindChildControl( 'kdysmcls_' + IntToStr( j - 1 ) );
          if aControl is TQRLabel then
            TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;
          if frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
          begin
            x := ( length( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
            QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).enabled := true;
            QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).Top := TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).top;
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).left := QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ).left - 20;
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).height := 30;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
          //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
          end
          else
          begin
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).enabled := false;
            QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ).Width := 235;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
          //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
          end;
          frm_yzinput.sp_zxjl_cq_dy.Next;
          end;
        end;
      end;
      if i=1 then       
      begin

        QRLabel44.Enabled:=false;
        QRLabel58.Enabled:=false;
        QRLabel67.Enabled:=false;

      for n := 45 to 56 do
      begin
        QRBand9.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=false;
      end;
      for n := 138 to 145 do
      begin
        QRBand9.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
      end;

      for n := 146 to 172 do
      begin
        QRBand10.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
      end;

      QuickRep5.Preview;
      end
      else
      begin

        QRLabel44.Enabled:=true;
        QRLabel58.Enabled:=true;
        QRLabel67.Enabled:=true;


      for n := 45 to 56 do
      begin
        QRBand9.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=false;
      end;
      for n := 138 to 145 do
      begin
        QRBand9.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
      end;

      for n := 146 to 172 do
      begin
        QRBand10.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
      end;

      
      DM_data.qry_pub.Close;
      DM_data.qry_pub.SQL.text:='select * from sys_kscwsz where bqdm='+''''+pub_bqdm+''''+' and bcbh='+''''+trim(frm_yzinput.sp_jbxx.fieldbyname( 'bch' ).asstring)+'''';
      DM_data.qry_pub.Open;
      QRLabel45.Caption := pub_yymc + '长期治疗执行单';
      QRLabel46.Caption := '姓名:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxm' ).asstring;
      QRLabel50.Caption := '病床号:' + Trim(DM_data.qry_pub.FieldByName('yybch').asstring);
      QRLabel51.Caption := '性别:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxb' ).asstring;
      QRLabel52.Caption := '年龄:' + trim( frm_yzinput.sp_jbxx.fieldbyname( 'brnl' ).asstring );
      QRLabel53.Caption := FormatDateTime( 'yyyy', frm_func.curr_date ) + '年';

      QRLabel67.Caption:='姓名:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxm' ).asstring+'      '+
                         '病床号:' + Trim(DM_data.qry_pub.FieldByName('yybch').asstring)+'      '+
                         '卡号:' + Trim( frm_yzinput.sp_jbxx.fieldbyname( 'tmh' ).asstring  );
                      //   '性别:' + sp_jbxx.fieldbyname( 'brxb' ).asstring+'      '+
                      //   '年龄:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
      //QuickRep3.Prepare;
      QRLabel58.Caption := '审核医生：';
      QuickRep5.Preview;
      end;
     end;
  end;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := False;
  frm_yzinput.sp_zxjl_cq_dy.Filter := 'lb=''治疗'' and tzrq=null ';
  frm_yzinput.sp_zxjl_cq_dy.Filtered := True;

end;

procedure Tfrm_zxdxd.pro_xd_a4;
var
  i: Integer;
  hs: Integer;
  x: Integer;
  n: Integer;
  y: Integer;
  j: Integer;
  count: Integer;
  aControl: TControl;
begin
  kdrq:= frm_yzinput.sp_zxjl_cq_dy.FieldByName('ksrq').AsString;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := False;
  frm_yzinput.sp_zxjl_cq_dy.Filter := '(yytj like ''%静滴%'' and  tzrq=null and ksrq>='+''''+kdrq+''''+')'
     +' or (yytj=''静脉泵入'' and  tzrq=null and ksrq>='+''''
     +kdrq+''')';;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := True;
  hs:=StrToInt(ComboBox1.Text)-1;
  if not frm_yzinput.sp_zxjl_cq_dy.IsEmpty then
  begin
    frm_yzinput.sp_zxjl_cq_dy.First;
    if frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs mod 5 <> 0 then
      y := trunc( (frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs) / 5 ) + 1
    else
      y := trunc( (frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs) / 5 );
    count := frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs;
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
            if (i=1) and (j<hs+1) then
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
              TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ksrq' ).AsString;
            aControl := DetailBand1.FindChildControl( 'kdysmc' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;
            if frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
            begin
              x := ( length( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
              DetailBand1.FindChildControl( 'QRgrImage' + IntToStr( j ) ).enabled := true;
              DetailBand1.FindChildControl( 'QRgrImage' + IntToStr( j ) ).Top := TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).top;
              DetailBand1.FindChildControl( 'QRgrImage' + IntToStr( j ) ).left := DetailBand1.FindChildControl( 'ypyf' + IntToStr( j - 1 ) ).left - 20;
              DetailBand1.FindChildControl( 'qrgrimage' + IntToStr( j ) ).height := 30;
              TQRLabel( DetailBand1.FindChildControl( 'ypyf' + IntToStr( j - 1 ) ) ).Caption := trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
              TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
              //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end
            else
            begin
              DetailBand1.FindChildControl( 'qrgrimage' + IntToStr( j ) ).enabled := false;
              DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ).Width := 235;
              TQRLabel( DetailBand1.FindChildControl( 'ypyf' + IntToStr( j - 1 ) ) ).Caption := '';
              TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
             // TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end;
            frm_yzinput.sp_zxjl_cq_dy.Next;
            end;
          end;
        end
        else
        begin

          if (i=1) and (j<hs+1) then
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
            TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ksrq' ).asstring;
          aControl := DetailBand1.FindChildControl( 'kdysmc' + IntToStr( j - 1 ) );
          if aControl is TQRLabel then
            TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;
          if frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
          begin
            x := ( length( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
            DetailBand1.FindChildControl( 'QRgrImage' + IntToStr( j ) ).enabled := true;
            DetailBand1.FindChildControl( 'QRgrImage' + IntToStr( j ) ).Top := TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).top;
            DetailBand1.FindChildControl( 'qrgrimage' + IntToStr( j ) ).left := DetailBand1.FindChildControl( 'ypyf' + IntToStr( j - 1 ) ).left - 20;
            DetailBand1.FindChildControl( 'qrgrimage' + IntToStr( j ) ).height := 30;
            TQRLabel( DetailBand1.FindChildControl( 'ypyf' + IntToStr( j - 1 ) ) ).Caption := trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
            TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
          //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
          end
          else
          begin
            DetailBand1.FindChildControl( 'qrgrimage' + IntToStr( j ) ).enabled := false;
            DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ).Width := 235;
            TQRLabel( DetailBand1.FindChildControl( 'ypyf' + IntToStr( j - 1 ) ) ).Caption := '';
            TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
          //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
          end;
          frm_yzinput.sp_zxjl_cq_dy.Next;
          end;
        end;
      end;
      if i=1 then       
      begin
//      QRBand4.Enabled:=false;
      QRLabel2.Enabled:=false;
      QRLabel3.Enabled:=false;  
      QRLabel20.Enabled:=false;  
      QRLabel21.Enabled:=false;  
      QRLabel26.Enabled:=false;
      ny.Enabled:=false;  
      QRLabel1.Enabled:=false;  
      QRLabel2.Enabled:=false;  
      QRLabel3.Enabled:=false;  
      QRLabel7.Enabled:=false;
      QRLabel57.Enabled:=false;  
      QRLabel61.Enabled:=false;   

                          //'性别:' + sp_jbxx.fieldbyname( 'brxb' ).asstring +'      '+
                          //'年龄:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
      //QuickRep3.Prepare;
      QRLabel57.Enabled:=false;  

      for n := 175 to 195 do
      begin
        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;          
      end;

      for n := 197 to 198 do
      begin
        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;          
      end;


      for n := 28 to 45 do
      begin
        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;          
      end;

      for n := 47 to 71 do
      begin
        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;          
      end;

      for n := 18 to 21 do
      begin
        QRBand4.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=false;        
      end;

       for n := 26 to 26 do
      begin
        QRBand4.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=false;           
      end;

      for n := 28 to 30 do
      begin
        QRBand4.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=false;            
      end;

      for n := 15 to 15 do
      begin
        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;         
      end;

      for n := 18 to 21 do
      begin
        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;          
      end;

      for n := 46 to 46 do
      begin
        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;          
      end;

      for n := 26 to 27 do
      begin
        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;          
      end;
      
      QuickRep3.Preview;
      end
      else
      begin

//    QRBand4.Enabled:=True;
      QRLabel2.Enabled:=true;  
      QRLabel3.Enabled:=true;  
      QRLabel20.Enabled:=true;  
      QRLabel21.Enabled:=true;  
      QRLabel26.Enabled:=true;  
      ny.Enabled:=true;  
      QRLabel1.Enabled:=true;  
      QRLabel2.Enabled:=true;  
      QRLabel3.Enabled:=true;  
      QRLabel7.Enabled:=true; 
      QRLabel57.Enabled:=true;  
      QRLabel61.Enabled:=true;  

                          //'性别:' + sp_jbxx.fieldbyname( 'brxb' ).asstring +'      '+
                          //'年龄:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
      //QuickRep3.Prepare;
      QRLabel57.Enabled:=true;  

      for n := 175 to 195 do
      begin
        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;          
      end;

      for n := 197 to 198 do
      begin
        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;          
      end;


      for n := 28 to 45 do
      begin
        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;          
      end;

      for n := 47 to 71 do
      begin
        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;          
      end;

      for n := 18 to 21 do
      begin
        QRBand4.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=true;        
      end;

       for n := 26 to 26 do
      begin
        QRBand4.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=true;           
      end;

      for n := 28 to 30 do
      begin
        QRBand4.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=true;            
      end;

      for n := 15 to 15 do
      begin
        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;         
      end;

      for n := 18 to 21 do
      begin
        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;          
      end;

      for n := 46 to 46 do
      begin
        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;          
      end;

      for n := 26 to 27 do
      begin
        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;          
      end;

      
      QRLabel2.Caption := pub_yymc + '长期输液计划执行单';
      DM_data.qry_pub.Close;
      DM_data.qry_pub.SQL.text:='select * from sys_kscwsz where bqdm='+''''+pub_bqdm+''''+' and bcbh='+''''+trim(frm_yzinput.sp_jbxx.fieldbyname( 'bch' ).asstring)+'''';
      DM_data.qry_pub.Open;

      QRLabel3.Caption := '姓名:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxm' ).asstring;
      QRLabel20.Caption := '病床号:' + Trim(DM_data.qry_pub.FieldByName('yybch').asstring);
      QRLabel21.Caption := '性别:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxb' ).asstring;
      QRLabel26.Caption := '年龄:' + trim( frm_yzinput.sp_jbxx.fieldbyname( 'brnl' ).asstring );
      ny.Caption := FormatDateTime( 'yyyy', frm_func.curr_date ) + '年';

      QRLabel61.Caption:='姓名:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxm' ).asstring+'      '+
                          '病床号:' + Trim(DM_data.qry_pub.FieldByName('yybch').asstring)+'      '+
                          '卡号:' + Trim( frm_yzinput.sp_jbxx.fieldbyname( 'tmh' ).asstring  );
                          //'性别:' + sp_jbxx.fieldbyname( 'brxb' ).asstring +'      '+
                          //'年龄:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
      //QuickRep3.Prepare;
      QRLabel57.Caption := '审核医生:';
      QuickRep3.Preview;
      end;
     end;
  end;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := False;
  frm_yzinput.sp_zxjl_cq_dy.Filter := '(yytj like ''%静滴%'' and  tzrq=null )'+' or (yytj=''静脉泵入'' and  tzrq=null )';;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := True;

end;








procedure Tfrm_zxdxd.pro_xd_b5_ls;
var
  i: Integer;
  hs: Integer;
  x: Integer;
  n: Integer;
  y: Integer;
  j: Integer;
  count: Integer;
  aControl: TControl;
  filter_string:string;
begin
  kdrq:= frm_yzinput.sp_zxjl_cq_dy.FieldByName('ksrq').AsString;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := False;
  DM_data.qry_pub.close;
  DM_data.qry_pub.sql.text := 'select yytj from zybl_zyyz_dytjsz where dyxm=''输液计划单''';
  DM_data.qry_pub.Open;
  DM_data.qry_pub.First;
  while not DM_data.qry_pub.eof do
  begin
    filter_string:=filter_string+'(yytj like ''%'+DM_data.qry_pub.FieldByName('yytj').asstring+'%'''+
    ' and tzrq=null and ksrq>=' +'''' + kdrq + '''' + ' )' +' or ';
     DM_data.qry_pub.Next;
  end;
  filter_string:=filter_string+' (xmmc like ''%皮试%''  and ksrq>='+''''+kdrq+''') '+
                          ' or '+' (xmmc like ''%敏试%'' and ksrq>='+''''+kdrq+''') ';
  frm_yzinput.sp_zxjl_cq_dy.Filter := filter_string;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := True;
  hs:=StrToInt(ComboBox1.Text)-1;
  if not frm_yzinput.sp_zxjl_cq_dy.IsEmpty then
  begin
    frm_yzinput.sp_zxjl_cq_dy.First;
    if frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs mod 9 <> 0 then
      y := trunc( (frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs) / 9 ) + 1
    else
      y := trunc( (frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs) / 9 );
    count := frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs;
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
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).enabled := false;
          //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
            //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := '';
          end
          else
          begin
            if (i=1) and (j<hs+1) then
            begin
            aControl := QRBand10.FindChildControl( 'ksrqls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            aControl := QRBand10.FindChildControl( 'kdysmcls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).enabled := false;
          //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
            //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := '';
            end
            else
            begin
            aControl := QRBand10.FindChildControl( 'ksrqls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ksrq' ).AsString;
            aControl := QRBand10.FindChildControl( 'kdysmcls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;
            if frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
            begin
              x := ( length( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
              QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).enabled := true;
              QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).Top := TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).top;
              QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).left := QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ).left - 20;
              QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).height := 30;
              TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
              TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
              //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end
            else
            begin
              QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).enabled := false;
              QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ).Width := 235;
              TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
              TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
             // TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end;
            frm_yzinput.sp_zxjl_cq_dy.Next;
            end;
          end;
        end
        else
        begin

          if (i=1) and (j<hs+1) then
          begin
            aControl := QRBand10.FindChildControl( 'ksrqls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            aControl := QRBand10.FindChildControl( 'kdysmcls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).enabled := false;
          //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
            //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := '';
          end
          else
          begin
          aControl := QRBand10.FindChildControl( 'ksrqls' + IntToStr( j - 1 ) );
          if aControl is TQRLabel then
            TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ksrq' ).asstring;
          aControl := QRBand10.FindChildControl( 'kdysmcls' + IntToStr( j - 1 ) );
          if aControl is TQRLabel then
            TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;
          if frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
          begin
            x := ( length( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
            QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).enabled := true;
            QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).Top := TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).top;
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).left := QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ).left - 20;
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).height := 30;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
          //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
          end
          else
          begin
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).enabled := false;
            QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ).Width := 235;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
          //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
          end;
          frm_yzinput.sp_zxjl_cq_dy.Next;
          end;
        end;
      end;
      if i=1 then       
      begin

        QRLabel44.Enabled:=false;
        QRLabel58.Enabled:=false;
        QRLabel67.Enabled:=false;
        QRBand8.Enabled:=false;
        QRShape138.Enabled:=false;
         QRLabel9.Enabled:=false;
         QRBand9.Frame.DrawBottom:=false;

      for n := 45 to 56 do
      begin
        QRBand9.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=false;
      end;
      for n := 138 to 145 do
      begin
        QRBand9.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
      end;

      for n := 146 to 172 do
      begin
        QRBand10.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
      end;

      QuickRep5.Preview;
      end
      else
      begin

        QRLabel44.Enabled:=true;
        QRLabel58.Enabled:=true;
        QRLabel67.Enabled:=true;
        QRBand8.Enabled:=True;
        QRShape138.Enabled:=true;
        QRLabel9.Enabled:=true;
        QRBand9.Frame.DrawBottom:=true;

      for n := 45 to 56 do
      begin
        QRBand9.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=false;
      end;
      for n := 138 to 145 do
      begin
        QRBand9.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
      end;

      for n := 146 to 172 do
      begin
        QRBand10.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
      end;

      
      DM_data.qry_pub.Close;
      DM_data.qry_pub.SQL.text:='select * from sys_kscwsz where bqdm='+''''+pub_bqdm+''''+' and bcbh='+''''+trim(frm_yzinput.sp_jbxx.fieldbyname( 'bch' ).asstring)+'''';
      DM_data.qry_pub.Open;
      QRLabel45.Caption := pub_yymc + '临时输液计划执行单';
      QRLabel46.Caption := '姓名:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxm' ).asstring;
      QRLabel50.Caption := '病床号:' + Trim(DM_data.qry_pub.FieldByName('yybch').asstring);
      QRLabel51.Caption := '性别:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxb' ).asstring;
      QRLabel52.Caption := '年龄:' + trim( frm_yzinput.sp_jbxx.fieldbyname( 'brnl' ).asstring );
      QRLabel53.Caption := FormatDateTime( 'yyyy', frm_func.curr_date ) + '年';

      QRLabel67.Caption:='姓名:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxm' ).asstring+'      '+
                         '病床号:' + Trim(DM_data.qry_pub.FieldByName('yybch').asstring)+'      '+
                         '卡号:' + Trim( frm_yzinput.sp_jbxx.fieldbyname( 'tmh' ).asstring  );
                      //   '性别:' + sp_jbxx.fieldbyname( 'brxb' ).asstring+'      '+
                      //   '年龄:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
      //QuickRep3.Prepare;
      QRLabel58.Caption := '审核医生：';
      QuickRep5.Preview;
      end;
     end;
  end;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := False;
  frm_yzinput.sp_zxjl_cq_dy.Filter := filter_string;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := True;

end;




procedure Tfrm_zxdxd.pro_xd_b5_zs_ls;
var
  i: Integer;
  hs: Integer;
  x: Integer;
  n: Integer;
  y: Integer;
  j: Integer;
  count: Integer;
  aControl: TControl;
begin
  kdrq:= frm_yzinput.sp_zxjl_cq_dy.FieldByName('ksrq').AsString;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := False;
  frm_yzinput.sp_zxjl_cq_dy.Filter := '(yytj=''静注''   and kdrq>=' + '''' + kdrq + ''')';
  frm_yzinput.sp_zxjl_cq_dy.filter := frm_yzinput.sp_zxjl_cq_dy.filter + ' or ' + '(yytj=''肌注'' and  ksrq>=' + '''' + kdrq+ ''')';
  frm_yzinput.sp_zxjl_cq_dy.filter := frm_yzinput.sp_zxjl_cq_dy.filter + ' or ' + '(yytj=''皮下'' and ksrq>=' + '''' + kdrq + ''')';
  frm_yzinput.sp_zxjl_cq_dy.filter := frm_yzinput.sp_zxjl_cq_dy.filter + ' or ' + '(yytj=''宫颈注射'' and  ksrq>=' + '''' + kdrq + ''')';
  frm_yzinput.sp_zxjl_cq_dy.filter := frm_yzinput.sp_zxjl_cq_dy.filter + ' or ' + '(yytj=''穴注'' and  ksrq>=' + '''' + kdrq + ''')';
  frm_yzinput.sp_zxjl_cq_dy.Filtered := True;
  hs:=StrToInt(ComboBox1.Text)-1;
  if not frm_yzinput.sp_zxjl_cq_dy.IsEmpty then
  begin
    frm_yzinput.sp_zxjl_cq_dy.First;
    if frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs mod 9 <> 0 then
      y := trunc( (frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs) / 9 ) + 1
    else
      y := trunc( (frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs) / 9 );
    count := frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs;
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
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).enabled := false;
          //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
            //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := '';
          end
          else
          begin
            if (i=1) and (j<hs+1) then
            begin
            aControl := QRBand10.FindChildControl( 'ksrqls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            aControl := QRBand10.FindChildControl( 'kdysmcls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).enabled := false;
          //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
            //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := '';
            end
            else
            begin
            aControl := QRBand10.FindChildControl( 'ksrqls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ksrq' ).AsString;
            aControl := QRBand10.FindChildControl( 'kdysmcls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;
            if frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
            begin
              x := ( length( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
              QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).enabled := true;
              QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).Top := TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).top;
              QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).left := QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ).left - 20;
              QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).height := 30;
              TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
              TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
              //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end
            else
            begin
              QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).enabled := false;
              QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ).Width := 235;
              TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
              TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
             // TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end;
            frm_yzinput.sp_zxjl_cq_dy.Next;
            end;
          end;
        end
        else
        begin

          if (i=1) and (j<hs+1) then
          begin
            aControl := QRBand10.FindChildControl( 'ksrqls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            aControl := QRBand10.FindChildControl( 'kdysmcls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).enabled := false;
          //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
            //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := '';
          end
          else
          begin
          aControl := QRBand10.FindChildControl( 'ksrqls_' + IntToStr( j - 1 ) );
          if aControl is TQRLabel then
            TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ksrq' ).asstring;
          aControl := QRBand10.FindChildControl( 'kdysmcls_' + IntToStr( j - 1 ) );
          if aControl is TQRLabel then
            TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;
          if frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
          begin
            x := ( length( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
            QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).enabled := true;
            QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).Top := TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).top;
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).left := QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ).left - 20;
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).height := 30;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
          //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
          end
          else
          begin
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).enabled := false;
            QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ).Width := 235;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
          //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
          end;
          frm_yzinput.sp_zxjl_cq_dy.Next;
          end;
        end;
      end;
      if i=1 then       
      begin

        QRLabel44.Enabled:=false;
        QRLabel58.Enabled:=false;
        QRLabel67.Enabled:=false;

      for n := 45 to 56 do
      begin
        QRBand9.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=false;
      end;
      for n := 138 to 145 do
      begin
        QRBand9.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
      end;

      for n := 146 to 172 do
      begin
        QRBand10.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
      end;

      QuickRep5.Preview;
      end
      else
      begin

        QRLabel44.Enabled:=true;
        QRLabel58.Enabled:=true;
        QRLabel67.Enabled:=true;


      for n := 45 to 56 do
      begin
        QRBand9.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=false;
      end;
      for n := 138 to 145 do
      begin
        QRBand9.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
      end;

      for n := 146 to 172 do
      begin
        QRBand10.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
      end;

      
      DM_data.qry_pub.Close;
      DM_data.qry_pub.SQL.text:='select * from sys_kscwsz where bqdm='+''''+pub_bqdm+''''+' and bcbh='+''''+trim(frm_yzinput.sp_jbxx.fieldbyname( 'bch' ).asstring)+'''';
      DM_data.qry_pub.Open;
      QRLabel45.Caption := pub_yymc + '临时注射计划执行单';
      QRLabel46.Caption := '姓名:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxm' ).asstring;
      QRLabel50.Caption := '病床号:' + Trim(DM_data.qry_pub.FieldByName('yybch').asstring);
      QRLabel51.Caption := '性别:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxb' ).asstring;
      QRLabel52.Caption := '年龄:' + trim( frm_yzinput.sp_jbxx.fieldbyname( 'brnl' ).asstring );
      QRLabel53.Caption := FormatDateTime( 'yyyy', frm_func.curr_date ) + '年';

      QRLabel67.Caption:='姓名:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxm' ).asstring+'      '+
                         '病床号:' + Trim(DM_data.qry_pub.FieldByName('yybch').asstring)+'      '+
                         '卡号:' + Trim( frm_yzinput.sp_jbxx.fieldbyname( 'tmh' ).asstring  );
                      //   '性别:' + sp_jbxx.fieldbyname( 'brxb' ).asstring+'      '+
                      //   '年龄:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
      //QuickRep3.Prepare;
      QRLabel58.Caption := '审核医生：';
      QuickRep5.Preview;
      end;
     end;
  end;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := False;
  frm_yzinput.sp_zxjl_cq_dy.Filter := '(yytj=''静注''  and ksrq>=' + '''' + formatdatetime( 'yy-MM-dd', frm_func.curr_date ) + ' 00:00' + ''')';
  frm_yzinput.sp_zxjl_cq_dy.filter := frm_yzinput.sp_zxjl_cq_dy.filter + ' or ' + '(yytj=''肌注''  and ksrq>=' + '''' + formatdatetime( 'yy-MM-dd', frm_func.curr_date ) + ' 00:00' + ''')';
  frm_yzinput.sp_zxjl_cq_dy.filter := frm_yzinput.sp_zxjl_cq_dy.filter + ' or ' + '(yytj=''皮下'' and ksrq>=' + '''' + formatdatetime( 'yy-MM-dd', frm_func.curr_date ) + ' 00:00' + ''')';
  frm_yzinput.sp_zxjl_cq_dy.filter := frm_yzinput.sp_zxjl_cq_dy.filter + ' or ' + '(yytj=''宫颈注射''  and ksrq>=' + '''' + formatdatetime( 'yy-MM-dd', frm_func.curr_date ) + ' 00:00' + ''')';
  frm_yzinput.sp_zxjl_cq_dy.filter := frm_yzinput.sp_zxjl_cq_dy.filter + ' or ' + '(yytj=''穴注'' and ksrq>=' + '''' + formatdatetime( 'yy-MM-dd', frm_func.curr_date ) + ' 00:00' + ''')';

  frm_yzinput.sp_zxjl_cq_dy.Filtered := True;

end;



procedure Tfrm_zxdxd.pro_xd_b5_zs_ls_id;
var
  i: Integer;
  hs: Integer;
  x: Integer;
  n: Integer;
  y: Integer;
  j: Integer;
  count: Integer;
  aControl: TControl;
  yzid:string;
begin
  yzid:= frm_yzinput.sp_zxjl_cq_dy.FieldByName('id').AsString;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := False;
  frm_yzinput.sp_zxjl_cq_dy.Filter:=' id='+yzid;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := True;
  hs:=StrToInt(ComboBox1.Text)-1;
  if not frm_yzinput.sp_zxjl_cq_dy.IsEmpty then
  begin
    frm_yzinput.sp_zxjl_cq_dy.First;
    if frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs mod 9 <> 0 then
      y := trunc( (frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs) / 9 ) + 1
    else
      y := trunc( (frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs) / 9 );
    count := frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs;
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
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).enabled := false;
          //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
            //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := '';
          end
          else
          begin
            if (i=1) and (j<hs+1) then
            begin
            aControl := QRBand10.FindChildControl( 'ksrqls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            aControl := QRBand10.FindChildControl( 'kdysmcls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).enabled := false;
          //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
            //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := '';
            end
            else
            begin
            aControl := QRBand10.FindChildControl( 'ksrqls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ksrq' ).AsString;
            aControl := QRBand10.FindChildControl( 'kdysmcls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;
            if frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
            begin
              x := ( length( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
              QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).enabled := true;
              QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).Top := TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).top;
              QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).left := QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ).left - 20;
              QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).height := 30;
              TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
              TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
              //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end
            else
            begin
              QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).enabled := false;
              QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ).Width := 235;
              TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
              TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
             // TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end;
            frm_yzinput.sp_zxjl_cq_dy.Next;
            end;
          end;
        end
        else
        begin

          if (i=1) and (j<hs+1) then
          begin
            aControl := QRBand10.FindChildControl( 'ksrqls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            aControl := QRBand10.FindChildControl( 'kdysmcls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).enabled := false;
          //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
            //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := '';
          end
          else
          begin
          aControl := QRBand10.FindChildControl( 'ksrqls_' + IntToStr( j - 1 ) );
          if aControl is TQRLabel then
            TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ksrq' ).asstring;
          aControl := QRBand10.FindChildControl( 'kdysmcls_' + IntToStr( j - 1 ) );
          if aControl is TQRLabel then
            TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;
          if frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
          begin
            x := ( length( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
            QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).enabled := true;
            QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).Top := TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).top;
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).left := QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ).left - 20;
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).height := 30;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
          //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
          end
          else
          begin
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).enabled := false;
            QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ).Width := 235;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
          //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
          end;
          frm_yzinput.sp_zxjl_cq_dy.Next;
          end;
        end;
      end;
      if i=1 then       
      begin

        QRLabel44.Enabled:=false;
        QRLabel58.Enabled:=false;
        QRLabel67.Enabled:=false;

      for n := 45 to 56 do
      begin
        QRBand9.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=false;
      end;
      for n := 138 to 145 do
      begin
        QRBand9.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
      end;

      for n := 146 to 172 do
      begin
        QRBand10.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
      end;

      QuickRep5.Preview;
      end
      else
      begin

        QRLabel44.Enabled:=true;
        QRLabel58.Enabled:=true;
        QRLabel67.Enabled:=true;


      for n := 45 to 56 do
      begin
        QRBand9.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=false;
      end;
      for n := 138 to 145 do
      begin
        QRBand9.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
      end;

      for n := 146 to 172 do
      begin
        QRBand10.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
      end;

      
      DM_data.qry_pub.Close;
      DM_data.qry_pub.SQL.text:='select * from sys_kscwsz where bqdm='+''''+pub_bqdm+''''+' and bcbh='+''''+trim(frm_yzinput.sp_jbxx.fieldbyname( 'bch' ).asstring)+'''';
      DM_data.qry_pub.Open;
      QRLabel45.Caption := pub_yymc + '临时注射计划执行单';
      QRLabel46.Caption := '姓名:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxm' ).asstring;
      QRLabel50.Caption := '病床号:' + Trim(DM_data.qry_pub.FieldByName('yybch').asstring);
      QRLabel51.Caption := '性别:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxb' ).asstring;
      QRLabel52.Caption := '年龄:' + trim( frm_yzinput.sp_jbxx.fieldbyname( 'brnl' ).asstring );
      QRLabel53.Caption := FormatDateTime( 'yyyy', frm_func.curr_date ) + '年';

      QRLabel67.Caption:='姓名:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxm' ).asstring+'      '+
                         '病床号:' + Trim(DM_data.qry_pub.FieldByName('yybch').asstring)+'      '+
                         '卡号:' + Trim( frm_yzinput.sp_jbxx.fieldbyname( 'tmh' ).asstring  );
                      //   '性别:' + sp_jbxx.fieldbyname( 'brxb' ).asstring+'      '+
                      //   '年龄:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
      //QuickRep3.Prepare;
      QRLabel58.Caption := '审核医生：';
      QuickRep5.Preview;
      end;
     end;
  end;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := False;
  frm_yzinput.sp_zxjl_cq_dy.Filter := '(yytj=''静注'' and ksrq>=' + '''' + formatdatetime( 'yy-MM-dd', frm_func.curr_date ) + ' 00:00' + ''')';
  frm_yzinput.sp_zxjl_cq_dy.filter := frm_yzinput.sp_zxjl_cq_dy.filter + ' or ' + '(yytj=''肌注'' and ksrq>=' + '''' + formatdatetime( 'yy-MM-dd', frm_func.curr_date ) + ' 00:00' + ''')';
  frm_yzinput.sp_zxjl_cq_dy.filter := frm_yzinput.sp_zxjl_cq_dy.filter + ' or ' + '(yytj=''皮下'' and ksrq>=' + '''' + formatdatetime( 'yy-MM-dd', frm_func.curr_date ) + ' 00:00' + ''')';
  frm_yzinput.sp_zxjl_cq_dy.filter := frm_yzinput.sp_zxjl_cq_dy.filter + ' or ' + '(yytj=''宫颈注射'' and ksrq>=' + '''' + formatdatetime( 'yy-MM-dd', frm_func.curr_date ) + ' 00:00' + ''')';
  frm_yzinput.sp_zxjl_cq_dy.filter := frm_yzinput.sp_zxjl_cq_dy.filter + ' or ' + '(yytj=''穴注''  and ksrq>=' + '''' + formatdatetime( 'yy-MM-dd', frm_func.curr_date ) + ' 00:00' + ''')';

  frm_yzinput.sp_zxjl_cq_dy.Filtered := True;

end;


procedure Tfrm_zxdxd.pro_cqxd_b5_ls;
var
  i: Integer;
  hs: Integer;
  x: Integer;
  n: Integer;
  y: Integer;
  j: Integer;
  count: Integer;
  aControl: TControl;
  yzid:string;
begin
  yzid:= frm_yzinput.sp_zxjl_cq_dy.FieldByName('id').AsString;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := False;
  frm_yzinput.sp_zxjl_cq_dy.Filter := 'yytj like ''%静滴%'' and  id='+yzid;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := True;
  hs:=StrToInt(ComboBox1.Text)-1;
  if not frm_yzinput.sp_zxjl_cq_dy.IsEmpty then
  begin
    frm_yzinput.sp_zxjl_cq_dy.First;
    if (frm_yzinput.sp_zxjl_cq_dy.RecordCount + (hs mod 9)) <> 0 then
      y := trunc( (frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs) / 9 ) + 1
    else
      y := trunc( (frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs) / 9 );
    count := frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs;
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
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).enabled := false;
          //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
            //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := '';
          end
          else
          begin
            if (i=1) and (j<hs+1) then
            begin
            aControl := QRBand10.FindChildControl( 'ksrqls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            aControl := QRBand10.FindChildControl( 'kdysmcls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).enabled := false;
          //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
            //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := '';
            end
            else
            begin
            aControl := QRBand10.FindChildControl( 'ksrqls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ksrq' ).AsString;
            aControl := QRBand10.FindChildControl( 'kdysmcls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;
            if frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
            begin
              x := ( length( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
              QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).enabled := true;
              QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).Top := TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).top;
              QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).left := QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ).left - 20;
              QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).height := 30;
              TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
              TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
              //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end
            else
            begin
              QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).enabled := false;
              QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ).Width := 235;
              TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
              TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
             // TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end;
            frm_yzinput.sp_zxjl_cq_dy.Next;
            end;
          end;
        end
        else
        begin

          if (i=1) and (j<hs+1) then
          begin
            aControl := QRBand10.FindChildControl( 'ksrqls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            aControl := QRBand10.FindChildControl( 'kdysmcls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).enabled := false;
          //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
            //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := '';
          end
          else
          begin
          aControl := QRBand10.FindChildControl( 'ksrqls' + IntToStr( j - 1 ) );
          if aControl is TQRLabel then
            TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ksrq' ).asstring;
          aControl := QRBand10.FindChildControl( 'kdysmcls' + IntToStr( j - 1 ) );
          if aControl is TQRLabel then
            TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;
          if frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
          begin
            x := ( length( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
            QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).enabled := true;
            QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).Top := TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).top;
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).left := QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ).left - 20;
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).height := 30;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
          //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
          end
          else
          begin
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).enabled := false;
            QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ).Width := 235;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
          //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
          end;
          frm_yzinput.sp_zxjl_cq_dy.Next;
          end;
        end;
      end;
      if i=1 then       
      begin



                QRLabel44.Enabled:=false;
        QRLabel58.Enabled:=false;
        QRLabel67.Enabled:=false;
        QRBand8.Enabled:=false;
        QRShape138.Enabled:=false;
         QRLabel9.Enabled:=false;
         QRBand9.Frame.DrawBottom:=false;

      for n := 45 to 56 do
      begin
        QRBand9.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=false;
      end;
      for n := 138 to 145 do
      begin
        QRBand9.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
      end;

      for n := 146 to 172 do
      begin
        QRBand10.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
      end;

      QuickRep5.Preview;
      end
      else
      begin
        QRLabel44.Enabled:=true;
        QRLabel58.Enabled:=true;
        QRLabel67.Enabled:=true;
        QRBand8.Enabled:=true;
        QRShape138.Enabled:=true;
         QRLabel9.Enabled:=true;
         QRBand9.Frame.DrawBottom:=true;

      for n := 45 to 56 do
      begin
        QRBand9.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=false;
      end;
      for n := 138 to 145 do
      begin
        QRBand9.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
      end;

      for n := 146 to 172 do
      begin
        QRBand10.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
      end;

      
      DM_data.qry_pub.Close;
      DM_data.qry_pub.SQL.text:='select * from sys_kscwsz where bqdm='+''''+pub_bqdm+''''+' and bcbh='+''''+trim(frm_yzinput.sp_jbxx.fieldbyname( 'bch' ).asstring)+'''';
      DM_data.qry_pub.Open;
      QRLabel45.Caption := pub_yymc + '临时输液计划执行单';
      QRLabel46.Caption := '姓名:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxm' ).asstring;
      QRLabel50.Caption := '病床号:' + Trim(DM_data.qry_pub.FieldByName('yybch').asstring);
      QRLabel51.Caption := '性别:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxb' ).asstring;
      QRLabel52.Caption := '年龄:' + trim( frm_yzinput.sp_jbxx.fieldbyname( 'brnl' ).asstring );
      QRLabel53.Caption := FormatDateTime( 'yyyy', frm_func.curr_date ) + '年';

      QRLabel67.Caption:='姓名:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxm' ).asstring+'      '+
                         '病床号:' + Trim(DM_data.qry_pub.FieldByName('yybch').asstring)+'      '+
                         '卡号:' + Trim( frm_yzinput.sp_jbxx.fieldbyname( 'tmh' ).asstring  );
                      //   '性别:' + sp_jbxx.fieldbyname( 'brxb' ).asstring+'      '+
                      //   '年龄:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
      //QuickRep3.Prepare;
      QRLabel58.Caption := '审核医生：';
      QuickRep5.Preview;
      end;
     end;
  end;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := False;
  frm_yzinput.sp_zxjl_cq_dy.Filter := '(yytj like ''%静滴%'' and ksrq>='+''''+formatdatetime('yy-MM-dd',frm_func.curr_date)+' 00:00'+''') or'+
                          ' (yytj=''静脉泵入'' and  ksrq>='+''''+formatdatetime('yy-MM-dd',frm_func.curr_date)+' 00:00'+''') or '+
                          ' (xmmc like ''%皮试%''  and ksrq>='+''''+formatdatetime('yy-MM-dd',frm_func.curr_date)+' 00:00'+''') '+' or '+
                          ' (xmmc like ''%敏试%'' and  ksrq>='+''''+formatdatetime('yy-MM-dd',frm_func.curr_date)+' 00:00'+''') ';
  frm_yzinput.sp_zxjl_cq_dy.Filtered := True;

end;







//--------------calmhawk---2011-06-12----------

procedure Tfrm_zxdxd.pro_xd_b5;
var
  i: Integer;
  hs: Integer;
  x: Integer;
  n: Integer;
  _pageCount: Integer;
  j: Integer;
  count: Integer;
  aControl: TControl;
  _curRow: Integer;//calmhawk---当前行；
  filter_string:string;
begin
  kdrq := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ksrq' ).AsString;
  DM_data.qry_pub.close;
  DM_data.qry_pub.sql.text := 'select yytj from zybl_zyyz_dytjsz where dyxm=''输液计划单''';
  DM_data.qry_pub.Open;
  DM_data.qry_pub.First;
  while not DM_data.qry_pub.eof do
  begin
  if pub_yydm<>'0260' then
   begin
    filter_string:=filter_string+'(yytj like ''%'+DM_data.qry_pub.FieldByName('yytj').asstring+'%'''+
    ' and tzrq=null and ksrq>=' +'''' + kdrq + '''' + ' )' +' or ';
   end
   else
   begin
    filter_string:=filter_string+'(yytj like ''%'+DM_data.qry_pub.FieldByName('yytj').asstring+'%'''+
    '  and ksrq>=' +'''' + kdrq + '''' + ' )' +' or ';
   end;
     DM_data.qry_pub.Next;
  end;
  filter_string:=filter_string+'(yytj like ''%随便%'')';
  
  frm_yzinput.sp_zxjl_cq_dy.Filtered := False;
  frm_yzinput.sp_zxjl_cq_dy.Filter :=filter_string;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := True;

  //开始行数
  hs := StrToInt( ComboBox1.Text ) - 1;
  if not frm_yzinput.sp_zxjl_cq_dy.IsEmpty then
  begin
    //frm_yzinput.sp_zxjl_cq_dy.First;
    //calmhawk---计算页数,(记录数－当前行数+续打开始行数)/页可打印组数
    _pageCount := 0;
    _curRow := frm_yzinput.sp_zxjl_cq_dy.RecNo-1;
     _pageCount := trunc( (frm_yzinput.sp_zxjl_cq_dy.RecordCount-_curRow + hs) / _mydyzs)+1;
    //要打印的行数与开始处相加行数。
    count := frm_yzinput.sp_zxjl_cq_dy.RecordCount-_curRow + hs;
    for I := 1 to _pageCount do
    begin
      for j := 1 to _mydyzs do
      begin
        if count < i * _mydyzs then
        begin
          if j > ( _mydyzs - ( _pageCount * _mydyzs - count ) ) then
          begin
            aControl := DetailBand2.FindChildControl( 'ksrqjy' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            aControl := DetailBand2.FindChildControl( 'kdysmcjy' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            DetailBand2.FindChildControl( 'qrgrimagejy' + IntToStr( j ) ).enabled := false;
            TQRLabel( DetailBand2.FindChildControl( 'ypyfjy' + IntToStr( j - 1 ) ) ).Caption := '';
            TQRLabel( DetailBand2.FindChildControl( 'xmmcjy' + IntToStr( j - 1 ) ) ).caption := '';
          end
          else
          begin
            if ( i = 1 ) and ( j < hs + 1 ) then
            begin
              aControl := DetailBand2.FindChildControl( 'ksrqjy' + IntToStr( j - 1 ) );
              if aControl is TQRLabel then
                TQRLabel( aControl ).Caption := '';
              aControl := DetailBand2.FindChildControl( 'kdysmcjy' + IntToStr( j - 1 ) );
              if aControl is TQRLabel then
                TQRLabel( aControl ).Caption := '';
              DetailBand2.FindChildControl( 'qrgrimagejy' + IntToStr( j ) ).enabled := false;
              TQRLabel( DetailBand2.FindChildControl( 'ypyfjy' + IntToStr( j - 1 ) ) ).Caption := '';
              TQRLabel( DetailBand2.FindChildControl( 'xmmcjy' + IntToStr( j - 1 ) ) ).caption := '';
            end
            else
            begin
              aControl := DetailBand2.FindChildControl( 'ksrqjy' + IntToStr( j - 1 ) );
              if aControl is TQRLabel then
                TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ksrq' ).AsString;
              aControl := DetailBand2.FindChildControl( 'kdysmcjy' + IntToStr( j - 1 ) );
              if aControl is TQRLabel then
                TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;
              if frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
              begin
                x := ( length( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
                DetailBand2.FindChildControl( 'qrgrimagejy' + IntToStr( j ) ).enabled := true;
                DetailBand2.FindChildControl( 'qrgrimagejy' + IntToStr( j ) ).Top := TQRLabel( DetailBand2.FindChildControl( 'xmmcjy' + IntToStr( j - 1 ) ) ).top;
                DetailBand2.FindChildControl( 'qrgrimagejy' + IntToStr( j ) ).left := DetailBand2.FindChildControl( 'ypyfjy' + IntToStr( j - 1 ) ).left - 20;
                DetailBand2.FindChildControl( 'qrgrimagejy' + IntToStr( j ) ).height := 30;
                TQRLabel( DetailBand2.FindChildControl( 'ypyfjy' + IntToStr( j - 1 ) ) ).Caption := trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
                TQRLabel( DetailBand2.FindChildControl( 'xmmcjy' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
              end
              else
                //TQRLabel( DetailBand2.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
              begin
                DetailBand2.FindChildControl( 'qrgrimagejy' + IntToStr( j ) ).enabled := false;
                DetailBand2.FindChildControl( 'xmmcjy' + IntToStr( j - 1 ) ).Width := 235;
                TQRLabel( DetailBand2.FindChildControl( 'ypyfjy' + IntToStr( j - 1 ) ) ).Caption := '';
                TQRLabel( DetailBand2.FindChildControl( 'xmmcjy' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
              end;
              frm_yzinput.sp_zxjl_cq_dy.Next;
            end;
          end;
        end
        else
        begin
          if ( i = 1 ) and ( j < hs + 1 ) then
          begin
            aControl := DetailBand2.FindChildControl( 'ksrqjy' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            aControl := DetailBand2.FindChildControl( 'kdysmcjy' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            DetailBand2.FindChildControl( 'qrgrimagejy' + IntToStr( j ) ).enabled := false;
            //  TQRLabel( DetailBand2.FindChildControl( 'xmmcjy' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel( DetailBand2.FindChildControl( 'ypyfjy' + IntToStr( j - 1 ) ) ).Caption := '';
            //TQRLabel( DetailBand2.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
            TQRLabel( DetailBand2.FindChildControl( 'xmmcjy' + IntToStr( j - 1 ) ) ).caption := '';
          end
          else
          begin
            aControl := DetailBand2.FindChildControl( 'ksrqjy' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ksrq' ).asstring;
            aControl := DetailBand2.FindChildControl( 'kdysmcjy' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;
            if frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
            begin
              x := ( length( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
              DetailBand2.FindChildControl( 'qrgrimagejy' + IntToStr( j ) ).enabled := true;
              DetailBand2.FindChildControl( 'qrgrimagejy' + IntToStr( j ) ).Top := TQRLabel( DetailBand2.FindChildControl( 'xmmcjy' + IntToStr( j - 1 ) ) ).top;
              DetailBand2.FindChildControl( 'qrgrimagejy' + IntToStr( j ) ).left := DetailBand2.FindChildControl( 'ypyfjy' + IntToStr( j - 1 ) ).left - 20;
              DetailBand2.FindChildControl( 'qrgrimagejy' + IntToStr( j ) ).height := 30;
              TQRLabel( DetailBand2.FindChildControl( 'ypyfjy' + IntToStr( j - 1 ) ) ).Caption := trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
              TQRLabel( DetailBand2.FindChildControl( 'xmmcjy' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
            end
            else
            begin
              DetailBand2.FindChildControl( 'qrgrimagejy' + IntToStr( j ) ).enabled := false;
              DetailBand2.FindChildControl( 'xmmcjy' + IntToStr( j - 1 ) ).Width := 235;
              TQRLabel( DetailBand2.FindChildControl( 'ypyfjy' + IntToStr( j - 1 ) ) ).Caption := '';
              TQRLabel( DetailBand2.FindChildControl( 'xmmcjy' + IntToStr( j - 1 ) ) ).caption :=
              frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + ' ' +
              trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + ' ' +
              trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
            end;
            frm_yzinput.sp_zxjl_cq_dy.Next;
          end;
        end;
      end;
      if i = 1 then
      begin
        QRLabeljy2.Enabled := false;
        QRLabeljy3.Enabled := false;
        QRLabeljy20.Enabled := false;
        QRLabeljy21.Enabled := false;
        QRLabeljy26.Enabled := false;
        nyjy.Enabled := false;
        QRLabeljy2.Enabled := false;
        QRLabeljy3.Enabled := false;
        QRLabeljy7.Enabled := false;
        QRLabeljy61.Enabled := false;

        QRLabel57.Enabled := false;

        QRShape173.Enabled := false;

        QRShape196.Enabled := false;
        QRLabeljy28.Enabled := False;
        QRLabeljy29.Enabled := False;
        QRLabeljy30.Enabled := False;
        for n := 199 to 202 do
        begin
          QRBand12.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled := false;
        end;
        for n := 204 to 246 do
        begin
          DetailBand2.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled := false;
        end;
        for n := 18 to 21 do
        begin
          QRBand12.FindChildControl( 'QRlabeljy' + IntToStr( n ) ).Enabled := false;
        end;
        QRLabel4.Enabled:=False;
        QRLabel5.Enabled:=False;
        QRLabel6.Enabled:=False;
        QRShape1.Enabled := false;
        QRBand11.Enabled :=false;
        QuickRep6.Preview;
      end
      else
      begin
        QRLabeljy2.Enabled := true;
        QRLabeljy3.Enabled := true;
        QRLabeljy20.Enabled := true;
        QRLabeljy21.Enabled := true;
        QRLabeljy26.Enabled := true;
        nyjy.Enabled := true;
        QRLabeljy2.Enabled := true;
        QRLabeljy3.Enabled := true;
        QRLabeljy7.Enabled := true;
        QRLabeljy61.Enabled := true;
         QRBand11.Enabled :=true;
        QRLabel57.Enabled := true;

        QRShape173.Enabled := true;

        QRShape196.Enabled := true;
        QRLabeljy28.Enabled := true;
        QRLabeljy29.Enabled := true;
        QRLabeljy30.Enabled := true;
        for n := 199 to 202 do
        begin
          QRBand12.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled := true;
        end;
        for n := 204 to 246 do
        begin
          DetailBand2.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled := true;
        end;
        for n := 18 to 21 do
        begin
          QRBand12.FindChildControl( 'QRlabeljy' + IntToStr( n ) ).Enabled := true;
        end;
        QRLabel4.Enabled:=true;
        QRLabel5.Enabled:=true;
        QRLabel6.Enabled:=true;
        QRShape1.Enabled := true;
        QRLabeljy2.Caption := pub_yymc + '长期输液计划执行单';
        DM_data.qry_pub.Close;
        DM_data.qry_pub.SQL.text := 'select * from sys_kscwsz where bqdm=' + '''' + pub_bqdm + '''' + ' and bcbh=' + '''' + trim( frm_yzinput.sp_jbxx.fieldbyname( 'bch' ).asstring ) + '''';
        DM_data.qry_pub.Open;
        QRLabeljy3.Caption := '姓名:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxm' ).asstring;
        QRLabeljy20.Caption := '病床号:' + Trim( DM_data.qry_pub.FieldByName( 'yybch' ).asstring );
        QRLabeljy21.Caption := '性别:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxb' ).asstring;
        QRLabeljy26.Caption := '年龄:' + trim( frm_yzinput.sp_jbxx.fieldbyname( 'brnl' ).asstring );
        nyjy.Caption := FormatDateTime( 'yyyy', frm_func.curr_date ) + '年';
        QRLabeljy61.Caption := '姓名:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxm' ).asstring + '      ' + '病床号:' + Trim( DM_data.qry_pub.FieldByName( 'yybch' ).asstring ) + '      ' +
        '卡号:' + Trim( frm_yzinput.sp_jbxx.fieldbyname( 'tmh' ).asstring  );
        QuickRep6.Preview;
      end;
    end;
  end;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := False;
  frm_yzinput.sp_zxjl_cq_dy.Filter := filter_string;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := True;
end;



procedure Tfrm_zxdxd.pro_xd_b5_zs;
var
  i: Integer;
  hs: Integer;
  x: Integer;
  n: Integer;
  _pageCount: Integer;
  j: Integer;
  count: Integer;
  aControl: TControl;
  _curRow: Integer;//calmhawk---当前行；
  v_yytj,v_lb,filter:string;
  filter_str :string;

begin
  if (frm_yzinput.sp_zxjl_cq_dy.FieldByName('yytj').asstring<>'口服')  then
  begin

    kdrq := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ksrq' ).AsString;
    frm_yzinput.sp_zxjl_cq_dy.Filtered := False;
    frm_yzinput.sp_zxjl_cq_dy.Filter := '(yytj=''肌注'' and  tzrq=null and  ksrq>='+''''+kdrq+''''+ ')' +
        ' or (yytj=''静注'' and  tzrq=null and  ksrq>='+''''+kdrq+''''+ ')' +
        ' or (yytj=''皮下'' and  tzrq=null and  ksrq>='+''''+kdrq+''''+ ')' +
        ' or (yytj=''宫颈注射'' and  tzrq=null  and ksrq>='+''''+kdrq+''''+ ')' +
        ' or (yytj=''穴注'' and  tzrq=null and ksrq>='+''''+kdrq+''''+ ')' ;

    frm_yzinput.sp_zxjl_cq_dy.Filtered := True;
    if pub_yydm='0249' then
    begin
      frm_yzinput.sp_zxjl_cq_dy.RecNo :=v_hs;
    end;
  end
  else
  begin
    kdrq := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ksrq' ).AsString;
    DM_data.qry_pub.close;
    DM_data.qry_pub.sql.text := 'select yytj from zybl_zyyz_dytjsz where dyxm=''口服药执行单''';
    DM_data.qry_pub.Open;
    if DM_data.qry_pub.IsEmpty then
    begin
      v_yytj := '';
    end
    else
    begin
      DM_data.qry_pub.First;
      while not DM_data.qry_pub.eof do
      begin
        v_yytj := v_yytj + '(yytj=' + '''' + DM_data.qry_pub.FieldByName( 'yytj' ).asstring + '''' +
        ' and ksrq>='+''''+kdrq+''''+
        ' and  tzrq=null  and  lb<>''草药'' )' + ' or ';
        DM_data.qry_pub.Next;
      end;

    end;

    DM_data.qry_pub.close;
    DM_data.qry_pub.sql.text := 'select lbmc from zybl_zyyz_dylbsz where dyxm=''口服药执行单''';
    DM_data.qry_pub.Open;
    if DM_data.qry_pub.IsEmpty then
    begin
      v_lb := '';
    end
    else
    begin
      DM_data.qry_pub.First;
      while not DM_data.qry_pub.eof do
      begin
        v_lb := v_lb + '(lb=' + '''' + DM_data.qry_pub.FieldByName( 'lbmc' ).asstring + '''' + ' and  tzrq=null  and kdrq>=' + '''' + formatdatetime( 'yy-MM-dd', frm_func.curr_date ) + ' 00:00' + ''')' + ' or ';
        DM_data.qry_pub.Next;
      end;

    end;

    if v_yytj + v_lb = '' then
    begin
      filter := ' 1<>1 ';
    end
    else
    begin
      filter := v_yytj + v_lb + ' ( yytj = ''特殊情况'' )';
    end;

    frm_yzinput.sp_zxjl_cq_dy.Filter := filter;

    frm_yzinput.sp_zxjl_cq_dy.Filtered := True;
  end;

  //开始行数
  hs := StrToInt( ComboBox1.Text ) - 1;
  if not frm_yzinput.sp_zxjl_cq_dy.IsEmpty then
  begin
    //frm_yzinput.sp_zxjl_cq_dy.First;
    //calmhawk---计算页数,(记录数－当前行数+续打开始行数)/页可打印组数
    _pageCount := 0;
    _curRow := frm_yzinput.sp_zxjl_cq_dy.RecNo-1;   //v_hs-1;  //记录上要打印上一行的行数
    _pageCount := trunc( (frm_yzinput.sp_zxjl_cq_dy.RecordCount-_curRow + hs) / _mydyzs)+1;   //页数
    //要打印的行数与开始处相加行数。
    count := frm_yzinput.sp_zxjl_cq_dy.RecordCount-_curRow + hs;          //总行数=统计行数-不打印的行数+从页面第一行打的行数
    for I := 1 to _pageCount do
    begin
      for j := 1 to _mydyzs do
      begin
        if count < i * _mydyzs then
        begin
          if j > ( _mydyzs - ( _pageCount * _mydyzs - count ) ) then
          begin
            aControl := DetailBand2.FindChildControl( 'ksrqjy' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            aControl := DetailBand2.FindChildControl( 'kdysmcjy' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            DetailBand2.FindChildControl( 'qrgrimagejy' + IntToStr( j ) ).enabled := false;
            TQRLabel( DetailBand2.FindChildControl( 'ypyfjy' + IntToStr( j - 1 ) ) ).Caption := '';
            TQRLabel( DetailBand2.FindChildControl( 'xmmcjy' + IntToStr( j - 1 ) ) ).caption := '';
          end
          else
          begin
            if ( i = 1 ) and ( j < hs + 1 ) then
            begin
              aControl := DetailBand2.FindChildControl( 'ksrqjy' + IntToStr( j - 1 ) );
              if aControl is TQRLabel then
                TQRLabel( aControl ).Caption := '';
              aControl := DetailBand2.FindChildControl( 'kdysmcjy' + IntToStr( j - 1 ) );
              if aControl is TQRLabel then
                TQRLabel( aControl ).Caption := '';
              DetailBand2.FindChildControl( 'qrgrimagejy' + IntToStr( j ) ).enabled := false;
              TQRLabel( DetailBand2.FindChildControl( 'ypyfjy' + IntToStr( j - 1 ) ) ).Caption := '';
              TQRLabel( DetailBand2.FindChildControl( 'xmmcjy' + IntToStr( j - 1 ) ) ).caption := '';
            end
            else
            begin
              aControl := DetailBand2.FindChildControl( 'ksrqjy' + IntToStr( j - 1 ) );
              if aControl is TQRLabel then
                TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ksrq' ).AsString;
              aControl := DetailBand2.FindChildControl( 'kdysmcjy' + IntToStr( j - 1 ) );
              if aControl is TQRLabel then
                TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;
              if frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
              begin
                x := ( length( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
                DetailBand2.FindChildControl( 'qrgrimagejy' + IntToStr( j ) ).enabled := true;
                DetailBand2.FindChildControl( 'qrgrimagejy' + IntToStr( j ) ).Top := TQRLabel( DetailBand2.FindChildControl( 'xmmcjy' + IntToStr( j - 1 ) ) ).top;
                DetailBand2.FindChildControl( 'qrgrimagejy' + IntToStr( j ) ).left := DetailBand2.FindChildControl( 'ypyfjy' + IntToStr( j - 1 ) ).left - 20;
                DetailBand2.FindChildControl( 'qrgrimagejy' + IntToStr( j ) ).height := 30;
                TQRLabel( DetailBand2.FindChildControl( 'ypyfjy' + IntToStr( j - 1 ) ) ).Caption := trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
                TQRLabel( DetailBand2.FindChildControl( 'xmmcjy' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
              end
              else
                //TQRLabel( DetailBand2.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
              begin
                DetailBand2.FindChildControl( 'qrgrimagejy' + IntToStr( j ) ).enabled := false;
                DetailBand2.FindChildControl( 'xmmcjy' + IntToStr( j - 1 ) ).Width := 235;
                TQRLabel( DetailBand2.FindChildControl( 'ypyfjy' + IntToStr( j - 1 ) ) ).Caption := '';
                TQRLabel( DetailBand2.FindChildControl( 'xmmcjy' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
              end;
              frm_yzinput.sp_zxjl_cq_dy.Next;
            end;
          end;
        end
        else
        begin
          if ( i = 1 ) and ( j < hs + 1 ) then
          begin
            aControl := DetailBand2.FindChildControl( 'ksrqjy' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            aControl := DetailBand2.FindChildControl( 'kdysmcjy' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            DetailBand2.FindChildControl( 'qrgrimagejy' + IntToStr( j ) ).enabled := false;
            //  TQRLabel( DetailBand2.FindChildControl( 'xmmcjy' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel( DetailBand2.FindChildControl( 'ypyfjy' + IntToStr( j - 1 ) ) ).Caption := '';
            //TQRLabel( DetailBand2.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
            TQRLabel( DetailBand2.FindChildControl( 'xmmcjy' + IntToStr( j - 1 ) ) ).caption := '';
          end
          else
          begin
            aControl := DetailBand2.FindChildControl( 'ksrqjy' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ksrq' ).asstring;
            aControl := DetailBand2.FindChildControl( 'kdysmcjy' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;
            if frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
            begin
              x := ( length( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
              DetailBand2.FindChildControl( 'qrgrimagejy' + IntToStr( j ) ).enabled := true;
              DetailBand2.FindChildControl( 'qrgrimagejy' + IntToStr( j ) ).Top := TQRLabel( DetailBand2.FindChildControl( 'xmmcjy' + IntToStr( j - 1 ) ) ).top;
              DetailBand2.FindChildControl( 'qrgrimagejy' + IntToStr( j ) ).left := DetailBand2.FindChildControl( 'ypyfjy' + IntToStr( j - 1 ) ).left - 20;
              DetailBand2.FindChildControl( 'qrgrimagejy' + IntToStr( j ) ).height := 30;
              TQRLabel( DetailBand2.FindChildControl( 'ypyfjy' + IntToStr( j - 1 ) ) ).Caption := trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
              TQRLabel( DetailBand2.FindChildControl( 'xmmcjy' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
            end
            else
            begin
              DetailBand2.FindChildControl( 'qrgrimagejy' + IntToStr( j ) ).enabled := false;
              DetailBand2.FindChildControl( 'xmmcjy' + IntToStr( j - 1 ) ).Width := 235;
              TQRLabel( DetailBand2.FindChildControl( 'ypyfjy' + IntToStr( j - 1 ) ) ).Caption := '';
              TQRLabel( DetailBand2.FindChildControl( 'xmmcjy' + IntToStr( j - 1 ) ) ).caption :=
              frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + ' ' +
              trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + ' ' +
              trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
            end;
            frm_yzinput.sp_zxjl_cq_dy.Next;
          end;
        end;
      end;
      if i = 1 then
      begin
        QRLabeljy2.Enabled := false;
        QRLabeljy3.Enabled := false;
        QRLabeljy20.Enabled := false;
        QRLabeljy21.Enabled := false;
        QRLabeljy26.Enabled := false;
        nyjy.Enabled := false;
        QRLabeljy2.Enabled := false;
        QRLabeljy3.Enabled := false;
        QRLabeljy7.Enabled := false;
        QRLabeljy61.Enabled := false;

        QRLabel57.Enabled := false;

        QRShape173.Enabled := false;

        QRShape196.Enabled := false;
        QRLabeljy28.Enabled := False;
        QRLabeljy29.Enabled := False;
        QRLabeljy30.Enabled := False;
        for n := 199 to 202 do
        begin
          QRBand12.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled := false;
        end;
        for n := 204 to 246 do
        begin
          DetailBand2.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled := false;
        end;
        for n := 18 to 21 do
        begin
          QRBand12.FindChildControl( 'QRlabeljy' + IntToStr( n ) ).Enabled := false;
        end;
        QRLabel4.Enabled:=false;
        QRLabel5.Enabled:=false;
        QRLabel6.Enabled:=false;
        QRShape1.Enabled := false;
        QuickRep6.Preview;
      end
      else
      begin
        QRLabeljy2.Enabled := true;
        QRLabeljy3.Enabled := true;
        QRLabeljy20.Enabled := true;
        QRLabeljy21.Enabled := true;
        QRLabeljy26.Enabled := true;
        nyjy.Enabled := true;
        QRLabeljy2.Enabled := true;
        QRLabeljy3.Enabled := true;
        QRLabeljy7.Enabled := true;
        QRLabeljy61.Enabled := true;

        QRLabel57.Enabled := true;

        QRShape173.Enabled := true;

        QRShape196.Enabled := true;
        QRLabeljy28.Enabled := true;
        QRLabeljy29.Enabled := true;
        QRLabeljy30.Enabled := true;
        for n := 199 to 202 do
        begin
          QRBand12.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled := true;
        end;
        for n := 204 to 246 do
        begin
          DetailBand2.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled := true;
        end;
        for n := 18 to 21 do
        begin
          QRBand12.FindChildControl( 'QRlabeljy' + IntToStr( n ) ).Enabled := true;
        end;
        QRLabel4.Enabled:=true;
        QRLabel5.Enabled:=true;
        QRLabel6.Enabled:=true;
        QRShape1.Enabled := true;
        if (frm_yzinput.sp_zxjl_cq_dy.FieldByName('yytj').asstring<>'口服') then
        QRLabeljy2.Caption := pub_yymc + '长期注射计划执行单'
        else
        QRLabeljy2.Caption := pub_yymc + '口服药计划执行单';
        DM_data.qry_pub.Close;
        DM_data.qry_pub.SQL.text := 'select * from sys_kscwsz where bqdm=' + '''' + pub_bqdm + '''' + ' and bcbh=' + '''' + trim( frm_yzinput.sp_jbxx.fieldbyname( 'bch' ).asstring ) + '''';
        DM_data.qry_pub.Open;
        QRLabeljy3.Caption := '姓名:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxm' ).asstring;
        QRLabeljy20.Caption := '病床号:' + Trim( DM_data.qry_pub.FieldByName( 'yybch' ).asstring );
        QRLabeljy21.Caption := '性别:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxb' ).asstring;
        QRLabeljy26.Caption := '年龄:' + trim( frm_yzinput.sp_jbxx.fieldbyname( 'brnl' ).asstring );
        nyjy.Caption := FormatDateTime( 'yyyy', frm_func.curr_date ) + '年';
        QRLabeljy61.Caption := '姓名:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxm' ).asstring + '      ' + '病床号:' + Trim( DM_data.qry_pub.FieldByName( 'yybch' ).asstring ) + '      '+'卡号:' + Trim( frm_yzinput.sp_jbxx.fieldbyname( 'tmh' ).asstring  );

        QuickRep6.Preview;
      end;
    end;
  end;
   if (frm_yzinput.sp_zxjl_cq_dy.FieldByName('yytj').asstring<>'口服') then
   begin
      frm_yzinput.sp_zxjl_cq_dy.Filtered:=False;
      frm_yzinput.sp_zxjl_cq_dy.Filter := '(yytj=''肌注'' and  tzrq=null )' +
        ' or (yytj=''静注'' and  tzrq=null )' +
        ' or (yytj=''皮下'' and  tzrq=null )' +
        ' or (yytj=''宫颈注射'' and  tzrq=null )' +
        ' or (yytj=''穴注'' and  tzrq=null )';
      frm_yzinput.sp_zxjl_cq_dy.Filtered := True;
   end
   else
   begin
     frm_yzinput.sp_zxjl_cq_dy.Filtered:=False;
     frm_yzinput.sp_zxjl_cq_dy.Filter := filter;
     frm_yzinput.sp_zxjl_cq_dy.Filtered := True;
   end;
end;



procedure Tfrm_zxdxd.pro_xd_b5_zs_id;
var
  i: Integer;
  hs: Integer;
  x: Integer;
  n: Integer;
  _pageCount: Integer;
  j: Integer;
  count: Integer;
  aControl: TControl;
  _curRow: Integer;//calmhawk---当前行；
  yzid,v_yytj,v_lb,filter:string;

begin
  yzid := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'id' ).AsString;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := False;
  frm_yzinput.sp_zxjl_cq_dy.Filter := ' id='+yzid;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := True;

  //开始行数
  hs := StrToInt( ComboBox1.Text ) - 1;
  if not frm_yzinput.sp_zxjl_cq_dy.IsEmpty then
  begin
    //frm_yzinput.sp_zxjl_cq_dy.First;
    //calmhawk---计算页数,(记录数－当前行数+续打开始行数)/页可打印组数
    _pageCount := 0;
    _curRow := frm_yzinput.sp_zxjl_cq_dy.RecNo-1;
     _pageCount := trunc( (frm_yzinput.sp_zxjl_cq_dy.RecordCount-_curRow + hs) / _mydyzs)+1;
    //要打印的行数与开始处相加行数。
    count := frm_yzinput.sp_zxjl_cq_dy.RecordCount-_curRow + hs;
    for I := 1 to _pageCount do
    begin
      for j := 1 to _mydyzs do
      begin
        if count < i * _mydyzs then
        begin
          if j > ( _mydyzs - ( _pageCount * _mydyzs - count ) ) then
          begin
            aControl := DetailBand2.FindChildControl( 'ksrqjy' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            aControl := DetailBand2.FindChildControl( 'kdysmcjy' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            DetailBand2.FindChildControl( 'qrgrimagejy' + IntToStr( j ) ).enabled := false;
            TQRLabel( DetailBand2.FindChildControl( 'ypyfjy' + IntToStr( j - 1 ) ) ).Caption := '';
            TQRLabel( DetailBand2.FindChildControl( 'xmmcjy' + IntToStr( j - 1 ) ) ).caption := '';
          end
          else
          begin
            if ( i = 1 ) and ( j < hs + 1 ) then
            begin
              aControl := DetailBand2.FindChildControl( 'ksrqjy' + IntToStr( j - 1 ) );
              if aControl is TQRLabel then
                TQRLabel( aControl ).Caption := '';
              aControl := DetailBand2.FindChildControl( 'kdysmcjy' + IntToStr( j - 1 ) );
              if aControl is TQRLabel then
                TQRLabel( aControl ).Caption := '';
              DetailBand2.FindChildControl( 'qrgrimagejy' + IntToStr( j ) ).enabled := false;
              TQRLabel( DetailBand2.FindChildControl( 'ypyfjy' + IntToStr( j - 1 ) ) ).Caption := '';
              TQRLabel( DetailBand2.FindChildControl( 'xmmcjy' + IntToStr( j - 1 ) ) ).caption := '';
            end
            else
            begin
              aControl := DetailBand2.FindChildControl( 'ksrqjy' + IntToStr( j - 1 ) );
              if aControl is TQRLabel then
                TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ksrq' ).AsString;
              aControl := DetailBand2.FindChildControl( 'kdysmcjy' + IntToStr( j - 1 ) );
              if aControl is TQRLabel then
                TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;
              if frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
              begin
                x := ( length( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
                DetailBand2.FindChildControl( 'qrgrimagejy' + IntToStr( j ) ).enabled := true;
                DetailBand2.FindChildControl( 'qrgrimagejy' + IntToStr( j ) ).Top := TQRLabel( DetailBand2.FindChildControl( 'xmmcjy' + IntToStr( j - 1 ) ) ).top;
                DetailBand2.FindChildControl( 'qrgrimagejy' + IntToStr( j ) ).left := DetailBand2.FindChildControl( 'ypyfjy' + IntToStr( j - 1 ) ).left - 20;
                DetailBand2.FindChildControl( 'qrgrimagejy' + IntToStr( j ) ).height := 30;
                TQRLabel( DetailBand2.FindChildControl( 'ypyfjy' + IntToStr( j - 1 ) ) ).Caption := trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
                TQRLabel( DetailBand2.FindChildControl( 'xmmcjy' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
              end
              else
                //TQRLabel( DetailBand2.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
              begin
                DetailBand2.FindChildControl( 'qrgrimagejy' + IntToStr( j ) ).enabled := false;
                DetailBand2.FindChildControl( 'xmmcjy' + IntToStr( j - 1 ) ).Width := 235;
                TQRLabel( DetailBand2.FindChildControl( 'ypyfjy' + IntToStr( j - 1 ) ) ).Caption := '';
                TQRLabel( DetailBand2.FindChildControl( 'xmmcjy' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
              end;
              frm_yzinput.sp_zxjl_cq_dy.Next;
            end;
          end;
        end
        else
        begin
          if ( i = 1 ) and ( j < hs + 1 ) then
          begin
            aControl := DetailBand2.FindChildControl( 'ksrqjy' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            aControl := DetailBand2.FindChildControl( 'kdysmcjy' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            DetailBand2.FindChildControl( 'qrgrimagejy' + IntToStr( j ) ).enabled := false;
            //  TQRLabel( DetailBand2.FindChildControl( 'xmmcjy' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel( DetailBand2.FindChildControl( 'ypyfjy' + IntToStr( j - 1 ) ) ).Caption := '';
            //TQRLabel( DetailBand2.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
            TQRLabel( DetailBand2.FindChildControl( 'xmmcjy' + IntToStr( j - 1 ) ) ).caption := '';
          end
          else
          begin
            aControl := DetailBand2.FindChildControl( 'ksrqjy' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ksrq' ).asstring;
            aControl := DetailBand2.FindChildControl( 'kdysmcjy' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;
            if frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
            begin
              x := ( length( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
              DetailBand2.FindChildControl( 'qrgrimagejy' + IntToStr( j ) ).enabled := true;
              DetailBand2.FindChildControl( 'qrgrimagejy' + IntToStr( j ) ).Top := TQRLabel( DetailBand2.FindChildControl( 'xmmcjy' + IntToStr( j - 1 ) ) ).top;
              DetailBand2.FindChildControl( 'qrgrimagejy' + IntToStr( j ) ).left := DetailBand2.FindChildControl( 'ypyfjy' + IntToStr( j - 1 ) ).left - 20;
              DetailBand2.FindChildControl( 'qrgrimagejy' + IntToStr( j ) ).height := 30;
              TQRLabel( DetailBand2.FindChildControl( 'ypyfjy' + IntToStr( j - 1 ) ) ).Caption := trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
              TQRLabel( DetailBand2.FindChildControl( 'xmmcjy' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
            end
            else
            begin
              DetailBand2.FindChildControl( 'qrgrimagejy' + IntToStr( j ) ).enabled := false;
              DetailBand2.FindChildControl( 'xmmcjy' + IntToStr( j - 1 ) ).Width := 235;
              TQRLabel( DetailBand2.FindChildControl( 'ypyfjy' + IntToStr( j - 1 ) ) ).Caption := '';
              TQRLabel( DetailBand2.FindChildControl( 'xmmcjy' + IntToStr( j - 1 ) ) ).caption :=
              frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + ' ' +
              trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + ' ' +
              trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
            end;
            frm_yzinput.sp_zxjl_cq_dy.Next;
          end;
        end;
      end;
      if i = 1 then
      begin
        QRLabeljy2.Enabled := false;
        QRLabeljy3.Enabled := false;
        QRLabeljy20.Enabled := false;
        QRLabeljy21.Enabled := false;
        QRLabeljy26.Enabled := false;
        nyjy.Enabled := false;
        QRLabeljy2.Enabled := false;
        QRLabeljy3.Enabled := false;
        QRLabeljy7.Enabled := false;
        QRLabeljy61.Enabled := false;

        QRLabel57.Enabled := false;

        QRShape173.Enabled := false;

        QRShape196.Enabled := false;
        QRLabeljy28.Enabled := False;
        QRLabeljy29.Enabled := False;
        QRLabeljy30.Enabled := False;
        for n := 199 to 202 do
        begin
          QRBand12.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled := false;
        end;
        for n := 204 to 246 do
        begin
          DetailBand2.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled := false;
        end;
        for n := 18 to 21 do
        begin
          QRBand12.FindChildControl( 'QRlabeljy' + IntToStr( n ) ).Enabled := false;
        end;
        QRLabel4.Enabled:=false;
        QRLabel5.Enabled:=false;
        QRLabel6.Enabled:=false;
        QRShape1.Enabled := false;
        QuickRep6.Preview;
      end
      else
      begin
        QRLabeljy2.Enabled := true;
        QRLabeljy3.Enabled := true;
        QRLabeljy20.Enabled := true;
        QRLabeljy21.Enabled := true;
        QRLabeljy26.Enabled := true;
        nyjy.Enabled := true;
        QRLabeljy2.Enabled := true;
        QRLabeljy3.Enabled := true;
        QRLabeljy7.Enabled := true;
        QRLabeljy61.Enabled := true;

        QRLabel57.Enabled := true;

        QRShape173.Enabled := true;

        QRShape196.Enabled := true;
        QRLabeljy28.Enabled := true;
        QRLabeljy29.Enabled := true;
        QRLabeljy30.Enabled := true;
        for n := 199 to 202 do
        begin
          QRBand12.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled := true;
        end;
        for n := 204 to 246 do
        begin
          DetailBand2.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled := true;
        end;
        for n := 18 to 21 do
        begin
          QRBand12.FindChildControl( 'QRlabeljy' + IntToStr( n ) ).Enabled := true;
        end;
        QRLabel4.Enabled:=true;
        QRLabel5.Enabled:=true;
        QRLabel6.Enabled:=true;
        QRShape1.Enabled := true;
        if  frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).AsString<>'口服药' then
        QRLabeljy2.Caption := pub_yymc + '长期注射计划执行单'
        else
        QRLabeljy2.Caption := pub_yymc + '口服药计划执行单';
        DM_data.qry_pub.Close;
        DM_data.qry_pub.SQL.text := 'select * from sys_kscwsz where bqdm=' + '''' + pub_bqdm + '''' + ' and bcbh=' + '''' + trim( frm_yzinput.sp_jbxx.fieldbyname( 'bch' ).asstring ) + '''';
        DM_data.qry_pub.Open;
        QRLabeljy3.Caption := '姓名:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxm' ).asstring;
        QRLabeljy20.Caption := '病床号:' + Trim( DM_data.qry_pub.FieldByName( 'yybch' ).asstring );
        QRLabeljy21.Caption := '性别:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxb' ).asstring;
        QRLabeljy26.Caption := '年龄:' + trim( frm_yzinput.sp_jbxx.fieldbyname( 'brnl' ).asstring );
        nyjy.Caption := FormatDateTime( 'yyyy', frm_func.curr_date ) + '年';
        QRLabeljy61.Caption := '姓名:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxm' ).asstring + '      ' + '病床号:' + Trim( DM_data.qry_pub.FieldByName( 'yybch' ).asstring ) + '      '+
        '卡号:' + Trim( frm_yzinput.sp_jbxx.fieldbyname( 'tmh' ).asstring  );

        QuickRep6.Preview;
      end;
    end;
  end;
  if   frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).AsString<>'口服'  then
  begin
    frm_yzinput.sp_zxjl_cq_dy.Filtered:=False;
    frm_yzinput.sp_zxjl_cq_dy.Filter := '(yytj=''肌注'' and  tzrq=null )' +
      ' or (yytj=''静注'' and  tzrq=null )' +
      ' or (yytj=''皮下'' and  tzrq=null )' +
      ' or (yytj=''宫颈注射'' and  tzrq=null )' +
      ' or (yytj=''穴注'' and  tzrq=null )';
    frm_yzinput.sp_zxjl_cq_dy.Filtered := True;
  end
  else
  begin
    kdrq := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ksrq' ).AsString;
    DM_data.qry_pub.close;
    DM_data.qry_pub.sql.text := 'select yytj from zybl_zyyz_dytjsz where dyxm=''口服药执行单''';
    DM_data.qry_pub.Open;
    if DM_data.qry_pub.IsEmpty then
    begin
      v_yytj := '';
    end
    else
    begin
      DM_data.qry_pub.First;
      while not DM_data.qry_pub.eof do
      begin
        v_yytj := v_yytj + '(yytj=' + '''' + DM_data.qry_pub.FieldByName( 'yytj' ).asstring + '''' +
        ' and ksrq>='+''''+kdrq+''''+
        ' and  tzrq=null  and  lb<>''草药'' )' + ' or ';
        DM_data.qry_pub.Next;
      end;

    end;

    DM_data.qry_pub.close;
    DM_data.qry_pub.sql.text := 'select lbmc from zybl_zyyz_dylbsz where dyxm=''口服药执行单''';
    DM_data.qry_pub.Open;
    if DM_data.qry_pub.IsEmpty then
    begin
      v_lb := '';
    end
    else
    begin
      DM_data.qry_pub.First;
      while not DM_data.qry_pub.eof do
      begin
        v_lb := v_lb + '(lb=' + '''' + DM_data.qry_pub.FieldByName( 'lbmc' ).asstring + '''' + ' and  tzrq=null  and kdrq>=' + '''' + formatdatetime( 'yy-MM-dd', frm_func.curr_date ) + ' 00:00' + ''')' + ' or ';
        DM_data.qry_pub.Next;
      end;

    end;

    if v_yytj + v_lb = '' then
    begin
      filter := ' 1<>1 ';
    end
    else
    begin
      filter := v_yytj + v_lb + ' ( yytj = ''特殊情况'' )';
    end;

    frm_yzinput.sp_zxjl_cq_dy.Filter := filter;

    frm_yzinput.sp_zxjl_cq_dy.Filtered := True;
  end;
end;



procedure Tfrm_zxdxd.Button2Click( Sender: TObject );
begin
  Close;
end;

procedure Tfrm_zxdxd.Button3Click(Sender: TObject);
var dyzd:string;
    zszd:string;
begin
   DM_data.qry_pub.close;
   DM_data.qry_pub.sql.Text:='select * from zybl_zyyz_dytjsz where dyxm=''输液计划单'' ';
   DM_data.qry_pub.Open;
   DM_data.qry_pub.First;
   dyzd:=',';
   while not DM_data.qry_pub.eof do
   begin
     dyzd:= dyzd+trim(DM_data.qry_pub.FieldByName('yytj').asstring)+',';
     DM_data.qry_pub.Next;
   end;
   DM_data.qry_pub.close;
   DM_data.qry_pub.sql.Text:='select * from zybl_zyyz_dytjsz where dyxm=''注射计划单'' ';
   DM_data.qry_pub.Open;
   DM_data.qry_pub.First;
   zszd:=',';
   while not DM_data.qry_pub.eof do
   begin
     zszd:= zszd+trim(DM_data.qry_pub.FieldByName('yytj').asstring)+',';
     DM_data.qry_pub.Next;
   end;
   if frm_yzinput.sp_zxjl_cq_dy.Filter = 'tzrq=null ' then
   begin
   if frm_yzinput.sp_zxjl_cq_dy.Parameters.ParamByName('@fs').Value=0 then
   begin
   pro_xd_b5_cqcfd_id;  //长期查房单续打
   end
   else
   begin
   pro_xd_b5_lscfd_id;   //临时查房单续打
   end;

   end
   else
   begin
   if _mydyzs=9 then
   begin
    if frm_yzinput.sp_zxjl_cq_dy.Parameters.ParamByName('@fs').Value=0 then
    begin
    if Pos(','+frm_yzinput.sp_zxjl_cq_dy.FieldByName('yytj').asstring+',',dyzd)>0  then
    pro_cqxd_b5
    else if frm_yzinput.sp_zxjl_cq_dy.FieldByName('lb').asstring='治疗' then
    pro_xd_b5_cqzl_id
    else
    pro_xd_b5_zs_id;
    end
    else  if frm_yzinput.sp_zxjl_cq_dy.Parameters.ParamByName('@fs').Value=1 then
    begin
    if ( Pos(','+frm_yzinput.sp_zxjl_cq_dy.FieldByName('yytj').asstring+',',dyzd)>0) or
       (Pos('皮试',frm_yzinput.sp_zxjl_cq_dy.FieldByName('xmmc').asstring)>0) or
       (Pos('敏试',frm_yzinput.sp_zxjl_cq_dy.FieldByName('xmmc').asstring)>0) then
    pro_cqxd_b5_ls
    else if frm_yzinput.sp_zxjl_cq_dy.FieldByName('lb').asstring='治疗' then
    pro_xd_b5_lszl_id
    else
    pro_xd_b5_zs_ls_id;
    end;
   end
   else if _mydyzs=5 then
   begin
    if frm_yzinput.sp_zxjl_cq_dy.Parameters.ParamByName('@fs').Value=0 then
    begin
    if  Pos(','+frm_yzinput.sp_zxjl_cq_dy.FieldByName('yytj').asstring+',',dyzd)>0  then
        pro_cqxd_a4_id(1)
    else if frm_yzinput.sp_zxjl_cq_dy.FieldByName('lb').asstring='治疗' then
        pro_cqxd_a4_id(2)
    else
        pro_cqxd_a4_id(3);
    end
    else  if frm_yzinput.sp_zxjl_cq_dy.Parameters.ParamByName('@fs').Value=1 then
    begin
    if (Pos(','+frm_yzinput.sp_zxjl_cq_dy.FieldByName('yytj').asstring+',',dyzd)>0) or
       (Pos('皮试',frm_yzinput.sp_zxjl_cq_dy.FieldByName('xmmc').asstring)>0) or
       (Pos('敏试',frm_yzinput.sp_zxjl_cq_dy.FieldByName('xmmc').asstring)>0) then
        pro_cqxd_a4_id(4)
    else if frm_yzinput.sp_zxjl_cq_dy.FieldByName('lb').asstring='治疗' then
        pro_cqxd_a4_id(5)
    else
        pro_cqxd_a4_id(6);
    end;
   end
   else
   begin
     if frm_yzinput.sp_zxjl_cq_dy.Parameters.ParamByName('@fs').Value=0 then
     begin
     if Pos(','+frm_yzinput.sp_zxjl_cq_dy.FieldByName('yytj').asstring+',',dyzd)>0 then
         pro_xd_cq_zs1  //长期输液 123pro_xd_qt_zs1
      else if frm_yzinput.sp_zxjl_cq_dy.FieldByName('lb').asstring='治疗' then
        pro_xd_cq_zs2 //长期治疗
      else if Pos(','+frm_yzinput.sp_zxjl_cq_dy.FieldByName('yytj').asstring+',',zszd)>0 then
      begin
        pro_xd_cq_zs3;   //长期注射
      end
      else
      begin
        pro_xd_qt_zs_k1;   //长期口服药
      end;
     end
     else  if frm_yzinput.sp_zxjl_cq_dy.Parameters.ParamByName('@fs').Value=1 then
     begin
     if (Pos(','+frm_yzinput.sp_zxjl_cq_dy.FieldByName('yytj').asstring+',',dyzd)>0) or
       (Pos('皮试',frm_yzinput.sp_zxjl_cq_dy.FieldByName('xmmc').asstring)>0) or
       (Pos('敏试',frm_yzinput.sp_zxjl_cq_dy.FieldByName('xmmc').asstring)>0) then
        pro_xd_ls_zs1   //临时输液
     else if frm_yzinput.sp_zxjl_cq_dy.FieldByName('lb').asstring='治疗' then
        pro_xd_ls_zs2  //临时治疗
     else
      begin
        if pub_yydm ='0260' then
        begin
           pro_xd_cq_zs3;   //长期注射
        end else
        begin
           pro_xd_ls_zs3;  //临时注射
        end;
      end;

     end;
   end
   end;
end;



procedure Tfrm_zxdxd.DBGridEh1CellClick(Column: TColumnEh);

begin
  V_hs:=  frm_yzinput.sp_zxjl_cq_dy.RecNo;
end;

procedure Tfrm_zxdxd.DBGridEh1DrawColumnCell( Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumnEh; State: TGridDrawState );
begin
  //   DBGridEh1.DefaultDrawColumnCell( Rect, DataCol, Column, [gdFixed,gdFocused,gdSelected] );
  if ( Rect.Top = DBGridEh1.CellRect( DBGridEh1.Col, DBGridEh1.Row ).Top ) and ( not ( gdFocused in State ) or not DBGridEh1.Focused ) then
    DBGridEh1.Canvas.Brush.Color := clAqua;
  DBGridEh1.DefaultDrawColumnCell( Rect, DataCol, Column, State );

end;

procedure Tfrm_zxdxd.FormShow( Sender: TObject );
var
  I: Integer;
  v_zzdx:string;
begin
  QuickRep6.Visible := false;
  QuickRep3.Visible := false;
  QuickRep5.Visible := false;
  DM_data.qry_pub.close;
  DM_data.qry_pub.SQL.text := 'select * from sys_xt_kg';
  DM_data.qry_pub.Open;
  v_zzdx := DM_data.qry_pub.FieldByName( 'jhdzz' ).AsString;
  ComboBox1.Items.Clear;

  if zzdx = 'A4' then
  begin
    _mydyzs:=5;
  end
  else if zzdx = 'B5' then
  begin
    _mydyzs:=9;
  end else if zzdx = 'A3' then
  begin
    _mydyzs:=8;
  end
  else
    _mydyzs:=9;
  for I := 0 to _mydyzs - 1 do
  begin
     ComboBox1.Items.Add(IntToStr(i+1));
  end;
  ComboBox1.ItemIndex :=0;



end;






procedure Tfrm_zxdxd.pro_cqxd_a4;
var kdrq,yzid:string;
    i, y, j, count, x,hs,n: Integer;
    aControl: TControl;
begin
  yzid:= frm_yzinput.sp_zxjl_cq_dy.FieldByName('id').AsString;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := False;
  frm_yzinput.sp_zxjl_cq_dy.Filter := 'yytj like ''%静滴%'' and  tzrq=null and id='+yzid;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := True;
  hs:=StrToInt(ComboBox1.Text)-1;
  if not frm_yzinput.sp_zxjl_cq_dy.IsEmpty then
  begin
    frm_yzinput.sp_zxjl_cq_dy.First;
    if frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs mod 5 <> 0 then
      y := trunc( (frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs) / 5 ) + 1
    else
      y := trunc( (frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs) / 5 );
    count := frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs;
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
            if (i=1) and (j<hs+1) then
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
              TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ksrq' ).AsString;
            aControl := DetailBand1.FindChildControl( 'kdysmc' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;
            if frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
            begin
              x := ( length( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
              DetailBand1.FindChildControl( 'QRgrImage' + IntToStr( j ) ).enabled := true;
              DetailBand1.FindChildControl( 'QRgrImage' + IntToStr( j ) ).Top := TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).top;
              DetailBand1.FindChildControl( 'QRgrImage' + IntToStr( j ) ).left := DetailBand1.FindChildControl( 'ypyf' + IntToStr( j - 1 ) ).left - 20;
              DetailBand1.FindChildControl( 'qrgrimage' + IntToStr( j ) ).height := 30;
              TQRLabel( DetailBand1.FindChildControl( 'ypyf' + IntToStr( j - 1 ) ) ).Caption := trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
              TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
              //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end
            else
            begin
              DetailBand1.FindChildControl( 'qrgrimage' + IntToStr( j ) ).enabled := false;
              DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ).Width := 235;
              TQRLabel( DetailBand1.FindChildControl( 'ypyf' + IntToStr( j - 1 ) ) ).Caption := '';
              TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
             // TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end;
            frm_yzinput.sp_zxjl_cq_dy.Next;
            end;
          end;
        end
        else
        begin

          if (i=1) and (j<hs+1) then
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
            TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ksrq' ).asstring;
          aControl := DetailBand1.FindChildControl( 'kdysmc' + IntToStr( j - 1 ) );
          if aControl is TQRLabel then
            TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;
          if frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
          begin
            x := ( length( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
            DetailBand1.FindChildControl( 'QRgrImage' + IntToStr( j ) ).enabled := true;
            DetailBand1.FindChildControl( 'QRgrImage' + IntToStr( j ) ).Top := TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).top;
            DetailBand1.FindChildControl( 'qrgrimage' + IntToStr( j ) ).left := DetailBand1.FindChildControl( 'ypyf' + IntToStr( j - 1 ) ).left - 20;
            DetailBand1.FindChildControl( 'qrgrimage' + IntToStr( j ) ).height := 30;
            TQRLabel( DetailBand1.FindChildControl( 'ypyf' + IntToStr( j - 1 ) ) ).Caption := trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
            TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
          //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
          end
          else
          begin
            DetailBand1.FindChildControl( 'qrgrimage' + IntToStr( j ) ).enabled := false;
            DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ).Width := 235;
            TQRLabel( DetailBand1.FindChildControl( 'ypyf' + IntToStr( j - 1 ) ) ).Caption := '';
            TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
          //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
          end;
          frm_yzinput.sp_zxjl_cq_dy.Next;
          end;
        end;
      end;
      if i=1 then       
      begin
//      QRBand4.Enabled:=false;
      QRLabel2.Enabled:=false;  
      QRLabel3.Enabled:=false;  
      QRLabel20.Enabled:=false;  
      QRLabel21.Enabled:=false;  
      QRLabel26.Enabled:=false;  
      ny.Enabled:=false;  
      QRLabel1.Enabled:=false;  
      QRLabel2.Enabled:=false;
      QRLabel3.Enabled:=false;  
      QRLabel7.Enabled:=false; 
      QRLabel57.Enabled:=false;  
      QRLabel61.Enabled:=false;   

                          //'性别:' + sp_jbxx.fieldbyname( 'brxb' ).asstring +'      '+
                          //'年龄:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
      //QuickRep3.Prepare;
      QRLabel57.Enabled:=false;  

      for n := 175 to 195 do
      begin
        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;          
      end;

      for n := 197 to 198 do
      begin
        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;          
      end;


      for n := 28 to 45 do
      begin
        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
      end;

      for n := 47 to 71 do
      begin
        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;          
      end;

      for n := 18 to 21 do
      begin
        QRBand4.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=false;        
      end;

       for n := 26 to 26 do
      begin
        QRBand4.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=false;           
      end;

      for n := 28 to 30 do
      begin
        QRBand4.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=false;            
      end;

      for n := 15 to 15 do
      begin
        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;         
      end;

      for n := 18 to 21 do
      begin
        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;          
      end;

      for n := 46 to 46 do
      begin
        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;          
      end;

      for n := 26 to 27 do
      begin
        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
      end;
      
      QuickRep3.Preview;
      end
      else
      begin

//    QRBand4.Enabled:=True;
      QRLabel2.Enabled:=true;  
      QRLabel3.Enabled:=true;  
      QRLabel20.Enabled:=true;  
      QRLabel21.Enabled:=true;  
      QRLabel26.Enabled:=true;  
      ny.Enabled:=true;  
      QRLabel1.Enabled:=true;  
      QRLabel2.Enabled:=true;
      QRLabel3.Enabled:=true;  
      QRLabel7.Enabled:=true; 
      QRLabel57.Enabled:=true;  
      QRLabel61.Enabled:=true;  

                          //'性别:' + sp_jbxx.fieldbyname( 'brxb' ).asstring +'      '+
                          //'年龄:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
      //QuickRep3.Prepare;
      QRLabel57.Enabled:=true;  

      for n := 175 to 195 do
      begin
        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;          
      end;

      for n := 197 to 198 do
      begin
        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;          
      end;


      for n := 28 to 45 do
      begin
        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;
      end;

      for n := 47 to 71 do
      begin
        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;          
      end;

      for n := 18 to 21 do
      begin
        QRBand4.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=true;        
      end;

       for n := 26 to 26 do
      begin
        QRBand4.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=true;           
      end;

      for n := 28 to 30 do
      begin
        QRBand4.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=true;            
      end;

      for n := 15 to 15 do
      begin
        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;         
      end;

      for n := 18 to 21 do
      begin
        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;          
      end;

      for n := 46 to 46 do
      begin
        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;          
      end;

      for n := 26 to 27 do
      begin
        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;
      end;

      
      QRLabel2.Caption := pub_yymc + '长期输液计划执行单';
      DM_data.qry_pub.Close;
      DM_data.qry_pub.SQL.text:='select * from sys_kscwsz where bqdm='+''''+pub_bqdm+''''+' and bcbh='+''''+trim(frm_yzinput.sp_jbxx.fieldbyname( 'bch' ).asstring)+'''';
      DM_data.qry_pub.Open;

      QRLabel3.Caption := '姓名:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxm' ).asstring;
      QRLabel20.Caption := '病床号:' + Trim(DM_data.qry_pub.FieldByName('yybch').asstring);
      QRLabel21.Caption := '性别:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxb' ).asstring;
      QRLabel26.Caption := '年龄:' + trim( frm_yzinput.sp_jbxx.fieldbyname( 'brnl' ).asstring );
      ny.Caption := FormatDateTime( 'yyyy', frm_func.curr_date ) + '年';

      QRLabel61.Caption:='姓名:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxm' ).asstring+'      '+
                          '病床号:' + Trim(DM_data.qry_pub.FieldByName('yybch').asstring)+'      '+
                          '卡号:' + Trim( frm_yzinput.sp_jbxx.fieldbyname( 'tmh' ).asstring  );
                          //'性别:' + sp_jbxx.fieldbyname( 'brxb' ).asstring +'      '+
                          //'年龄:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
      //QuickRep3.Prepare;
      QRLabel57.Caption := '审核医生:';
      QuickRep3.Preview;
      end;
     end;
  end;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := False;
  frm_yzinput.sp_zxjl_cq_dy.Filter := '(yytj like ''%静滴%'' and  tzrq=null )'+' or (yytj=''静脉泵入'' and  tzrq=null )';;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := True;

end;



procedure Tfrm_zxdxd.pro_cqxd_b5;
var
  i: Integer;
  hs: Integer;
  x: Integer;
  n: Integer;
  _pageCount: Integer;
  j: Integer;
  count: Integer;
  aControl: TControl;
  _curRow: Integer;//calmhawk---当前行；
  yzid:string;

begin
  yzid:= frm_yzinput.sp_zxjl_cq_dy.FieldByName('id').AsString;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := False;
  frm_yzinput.sp_zxjl_cq_dy.Filter := 'yytj like ''%静滴%'' and  tzrq=null and id='+yzid;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := True;

  //开始行数
  hs := StrToInt( ComboBox1.Text ) - 1;
  if not frm_yzinput.sp_zxjl_cq_dy.IsEmpty then
  begin
    //frm_yzinput.sp_zxjl_cq_dy.First;
    //calmhawk---计算页数,(记录数－当前行数+续打开始行数)/页可打印组数
    _pageCount := 0;
    _curRow := frm_yzinput.sp_zxjl_cq_dy.RecNo-1;
     _pageCount := trunc( (frm_yzinput.sp_zxjl_cq_dy.RecordCount-_curRow + hs) / _mydyzs)+1;
    //要打印的行数与开始处相加行数。
    count := frm_yzinput.sp_zxjl_cq_dy.RecordCount-_curRow + hs;
    for I := 1 to _pageCount do
    begin
      for j := 1 to _mydyzs do
      begin
        if count < i * _mydyzs then
        begin
          if j > ( _mydyzs - ( _pageCount * _mydyzs - count ) ) then
          begin
            aControl := DetailBand2.FindChildControl( 'ksrqjy' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            aControl := DetailBand2.FindChildControl( 'kdysmcjy' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            DetailBand2.FindChildControl( 'qrgrimagejy' + IntToStr( j ) ).enabled := false;
            TQRLabel( DetailBand2.FindChildControl( 'ypyfjy' + IntToStr( j - 1 ) ) ).Caption := '';
            TQRLabel( DetailBand2.FindChildControl( 'xmmcjy' + IntToStr( j - 1 ) ) ).caption := '';
          end
          else
          begin
            if ( i = 1 ) and ( j < hs + 1 ) then
            begin
              aControl := DetailBand2.FindChildControl( 'ksrqjy' + IntToStr( j - 1 ) );
              if aControl is TQRLabel then
                TQRLabel( aControl ).Caption := '';
              aControl := DetailBand2.FindChildControl( 'kdysmcjy' + IntToStr( j - 1 ) );
              if aControl is TQRLabel then
                TQRLabel( aControl ).Caption := '';
              DetailBand2.FindChildControl( 'qrgrimagejy' + IntToStr( j ) ).enabled := false;
              TQRLabel( DetailBand2.FindChildControl( 'ypyfjy' + IntToStr( j - 1 ) ) ).Caption := '';
              TQRLabel( DetailBand2.FindChildControl( 'xmmcjy' + IntToStr( j - 1 ) ) ).caption := '';
            end
            else
            begin
              aControl := DetailBand2.FindChildControl( 'ksrqjy' + IntToStr( j - 1 ) );
              if aControl is TQRLabel then
                TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ksrq' ).AsString;
              aControl := DetailBand2.FindChildControl( 'kdysmcjy' + IntToStr( j - 1 ) );
              if aControl is TQRLabel then
                TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;
              if frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
              begin
                x := ( length( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
                DetailBand2.FindChildControl( 'qrgrimagejy' + IntToStr( j ) ).enabled := true;
                DetailBand2.FindChildControl( 'qrgrimagejy' + IntToStr( j ) ).Top := TQRLabel( DetailBand2.FindChildControl( 'xmmcjy' + IntToStr( j - 1 ) ) ).top;
                DetailBand2.FindChildControl( 'qrgrimagejy' + IntToStr( j ) ).left := DetailBand2.FindChildControl( 'ypyfjy' + IntToStr( j - 1 ) ).left - 20;
                DetailBand2.FindChildControl( 'qrgrimagejy' + IntToStr( j ) ).height := 30;
                TQRLabel( DetailBand2.FindChildControl( 'ypyfjy' + IntToStr( j - 1 ) ) ).Caption := trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
                TQRLabel( DetailBand2.FindChildControl( 'xmmcjy' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
              end
              else
                //TQRLabel( DetailBand2.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
              begin
                DetailBand2.FindChildControl( 'qrgrimagejy' + IntToStr( j ) ).enabled := false;
                DetailBand2.FindChildControl( 'xmmcjy' + IntToStr( j - 1 ) ).Width := 235;
                TQRLabel( DetailBand2.FindChildControl( 'ypyfjy' + IntToStr( j - 1 ) ) ).Caption := '';
                TQRLabel( DetailBand2.FindChildControl( 'xmmcjy' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
              end;
              frm_yzinput.sp_zxjl_cq_dy.Next;
            end;
          end;
        end
        else
        begin
          if ( i = 1 ) and ( j < hs + 1 ) then
          begin
            aControl := DetailBand2.FindChildControl( 'ksrqjy' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            aControl := DetailBand2.FindChildControl( 'kdysmcjy' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            DetailBand2.FindChildControl( 'qrgrimagejy' + IntToStr( j ) ).enabled := false;
            //  TQRLabel( DetailBand2.FindChildControl( 'xmmcjy' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel( DetailBand2.FindChildControl( 'ypyfjy' + IntToStr( j - 1 ) ) ).Caption := '';
            //TQRLabel( DetailBand2.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
            TQRLabel( DetailBand2.FindChildControl( 'xmmcjy' + IntToStr( j - 1 ) ) ).caption := '';
          end
          else
          begin
            aControl := DetailBand2.FindChildControl( 'ksrqjy' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ksrq' ).asstring;
            aControl := DetailBand2.FindChildControl( 'kdysmcjy' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;
            if frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
            begin
              x := ( length( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
              DetailBand2.FindChildControl( 'qrgrimagejy' + IntToStr( j ) ).enabled := true;
              DetailBand2.FindChildControl( 'qrgrimagejy' + IntToStr( j ) ).Top := TQRLabel( DetailBand2.FindChildControl( 'xmmcjy' + IntToStr( j - 1 ) ) ).top;
              DetailBand2.FindChildControl( 'qrgrimagejy' + IntToStr( j ) ).left := DetailBand2.FindChildControl( 'ypyfjy' + IntToStr( j - 1 ) ).left - 20;
              DetailBand2.FindChildControl( 'qrgrimagejy' + IntToStr( j ) ).height := 30;
              TQRLabel( DetailBand2.FindChildControl( 'ypyfjy' + IntToStr( j - 1 ) ) ).Caption := trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
              TQRLabel( DetailBand2.FindChildControl( 'xmmcjy' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
            end
            else
            begin
              DetailBand2.FindChildControl( 'qrgrimagejy' + IntToStr( j ) ).enabled := false;
              DetailBand2.FindChildControl( 'xmmcjy' + IntToStr( j - 1 ) ).Width := 235;
              TQRLabel( DetailBand2.FindChildControl( 'ypyfjy' + IntToStr( j - 1 ) ) ).Caption := '';
              TQRLabel( DetailBand2.FindChildControl( 'xmmcjy' + IntToStr( j - 1 ) ) ).caption :=
              frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + ' ' +
              trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + ' ' +
              trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
            end;
            frm_yzinput.sp_zxjl_cq_dy.Next;
          end;
        end;
      end;
      if i = 1 then
      begin
        QRLabeljy2.Enabled := false;
        QRLabeljy3.Enabled := false;
        QRLabeljy20.Enabled := false;
        QRLabeljy21.Enabled := false;
        QRLabeljy26.Enabled := false;
        nyjy.Enabled := false;
        QRLabeljy2.Enabled := false;
        QRLabeljy3.Enabled := false;
        QRLabeljy7.Enabled := false;
        QRLabeljy61.Enabled := false;

        QRLabel57.Enabled := false;

        QRShape173.Enabled := false;

        QRShape196.Enabled := false;
        QRLabeljy28.Enabled := False;
        QRLabeljy29.Enabled := False;
        QRLabeljy30.Enabled := False;
        for n := 199 to 202 do
        begin
          QRBand12.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled := false;
        end;
        for n := 204 to 246 do
        begin
          DetailBand2.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled := false;
        end;
        for n := 18 to 21 do
        begin
          QRBand12.FindChildControl( 'QRlabeljy' + IntToStr( n ) ).Enabled := false;
        end;
        QRLabel4.Enabled:=false;
        QRLabel5.Enabled:=false;
        QRLabel6.Enabled:=false;
        QRShape1.Enabled := false;
        QuickRep6.Preview;
      end
      else
      begin
        QRLabeljy2.Enabled := true;
        QRLabeljy3.Enabled := true;
        QRLabeljy20.Enabled := true;
        QRLabeljy21.Enabled := true;
        QRLabeljy26.Enabled := true;
        nyjy.Enabled := true;
        QRLabeljy2.Enabled := true;
        QRLabeljy3.Enabled := true;
        QRLabeljy7.Enabled := true;
        QRLabeljy61.Enabled := true;

        QRLabel57.Enabled := true;

        QRShape173.Enabled := true;

        QRShape196.Enabled := true;
        QRLabeljy28.Enabled := true;
        QRLabeljy29.Enabled := true;
        QRLabeljy30.Enabled := true;
        for n := 199 to 202 do
        begin
          QRBand12.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled := true;
        end;
        for n := 204 to 246 do
        begin
          DetailBand2.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled := true;
        end;
        for n := 18 to 21 do
        begin
          QRBand12.FindChildControl( 'QRlabeljy' + IntToStr( n ) ).Enabled := true;
        end;
        QRLabel4.Enabled:=true;
        QRLabel5.Enabled:=true;
        QRLabel6.Enabled:=true;
        QRShape1.Enabled := true;
        QRLabeljy2.Caption := pub_yymc + '长期输液计划执行单';
        DM_data.qry_pub.Close;
        DM_data.qry_pub.SQL.text := 'select * from sys_kscwsz where bqdm=' + '''' + pub_bqdm + '''' + ' and bcbh=' + '''' + trim( frm_yzinput.sp_jbxx.fieldbyname( 'bch' ).asstring ) + '''';
        DM_data.qry_pub.Open;
        QRLabeljy3.Caption := '姓名:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxm' ).asstring;
        QRLabeljy20.Caption := '病床号:' + Trim( DM_data.qry_pub.FieldByName( 'yybch' ).asstring );
        QRLabeljy21.Caption := '性别:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxb' ).asstring;
        QRLabeljy26.Caption := '年龄:' + trim( frm_yzinput.sp_jbxx.fieldbyname( 'brnl' ).asstring );
        nyjy.Caption := FormatDateTime( 'yyyy', frm_func.curr_date ) + '年';
        QRLabeljy61.Caption := '姓名:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxm' ).asstring + '      ' + '病床号:' + Trim( DM_data.qry_pub.FieldByName( 'yybch' ).asstring ) + '      '+'卡号:' + Trim( frm_yzinput.sp_jbxx.fieldbyname( 'tmh' ).asstring  );

        QuickRep6.Preview;
      end;
    end;
  end;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := False;
  frm_yzinput.sp_zxjl_cq_dy.Filter := '(yytj like ''%静滴%'' and  tzrq=null )'+' or (yytj=''静脉泵入'' and  tzrq=null )';;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := True;
end;




procedure Tfrm_zxdxd.pro_xd_a4_zs;
var
  i: Integer;
  hs: Integer;
  x: Integer;
  n: Integer;
  y: Integer;
  j: Integer;
  count: Integer;
  aControl: TControl;
  v_lb,v_yytj,filter:string;
begin
  if (frm_yzinput.sp_zxjl_cq_dy.FieldByName('yytj').asstring<>'口服')  then
  begin
  kdrq := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ksrq' ).AsString;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := False;
  frm_yzinput.sp_zxjl_cq_dy.Filter := '(yytj=''肌注'' and  tzrq=null and  ksrq>='+''''+kdrq+''''+ ')' +
    ' or (yytj=''静注'' and  tzrq=null and  ksrq>='+''''+kdrq+''''+ ')' +
    ' or (yytj=''皮下'' and  tzrq=null and  ksrq>='+''''+kdrq+''''+ ')' +
    ' or (yytj=''宫颈注射'' and  tzrq=null  and ksrq>='+''''+kdrq+''''+ ')' +
    ' or (yytj=''穴注'' and  tzrq=null and ksrq>='+''''+kdrq+''''+ ')' ;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := True;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := True;
  end
  else
  begin
    kdrq := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ksrq' ).AsString;
    DM_data.qry_pub.close;
    DM_data.qry_pub.sql.text := 'select yytj from zybl_zyyz_dytjsz where dyxm=''口服药执行单''';
    DM_data.qry_pub.Open;
    if DM_data.qry_pub.IsEmpty then
    begin
      v_yytj := '';
    end
    else
    begin
      DM_data.qry_pub.First;
      while not DM_data.qry_pub.eof do
      begin
        v_yytj := v_yytj + '(yytj=' + '''' + DM_data.qry_pub.FieldByName( 'yytj' ).asstring + '''' +
        ' and ksrq>='+''''+kdrq+''''+
        ' and  tzrq=null  and  lb<>''草药'' )' + ' or ';
        DM_data.qry_pub.Next;
      end;

    end;

    DM_data.qry_pub.close;
    DM_data.qry_pub.sql.text := 'select lbmc from zybl_zyyz_dylbsz where dyxm=''口服药执行单''';
    DM_data.qry_pub.Open;
    if DM_data.qry_pub.IsEmpty then
    begin
      v_lb := '';
    end
    else
    begin
      DM_data.qry_pub.First;
      while not DM_data.qry_pub.eof do
      begin
        v_lb := v_lb + '(lb=' + '''' + DM_data.qry_pub.FieldByName( 'lbmc' ).asstring + '''' + ' and  tzrq=null  and kdrq>=' + '''' + formatdatetime( 'yy-MM-dd', frm_func.curr_date ) + ' 00:00' + ''')' + ' or ';
        DM_data.qry_pub.Next;
      end;

    end;

    if v_yytj + v_lb = '' then
    begin
      filter := ' 1<>1 ';
    end
    else
    begin
      filter := v_yytj + v_lb + ' ( yytj = ''特殊情况'' )';
    end;

    frm_yzinput.sp_zxjl_cq_dy.Filter := filter;

    frm_yzinput.sp_zxjl_cq_dy.Filtered := True;
  end;

  hs:=StrToInt(ComboBox1.Text)-1;
  if not frm_yzinput.sp_zxjl_cq_dy.IsEmpty then
  begin
    frm_yzinput.sp_zxjl_cq_dy.First;
    if frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs mod 5 <> 0 then
      y := trunc( (frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs) / 5 ) + 1
    else
      y := trunc( (frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs) / 5 );
    count := frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs;
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
            if (i=1) and (j<hs+1) then
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
              TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ksrq' ).AsString;
            aControl := DetailBand1.FindChildControl( 'kdysmc' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;
            if frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
            begin
              x := ( length( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
              DetailBand1.FindChildControl( 'QRgrImage' + IntToStr( j ) ).enabled := true;
              DetailBand1.FindChildControl( 'QRgrImage' + IntToStr( j ) ).Top := TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).top;
              DetailBand1.FindChildControl( 'QRgrImage' + IntToStr( j ) ).left := DetailBand1.FindChildControl( 'ypyf' + IntToStr( j - 1 ) ).left - 20;
              DetailBand1.FindChildControl( 'qrgrimage' + IntToStr( j ) ).height := 30;
              TQRLabel( DetailBand1.FindChildControl( 'ypyf' + IntToStr( j - 1 ) ) ).Caption := trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
              TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
              //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end
            else
            begin
              DetailBand1.FindChildControl( 'qrgrimage' + IntToStr( j ) ).enabled := false;
              DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ).Width := 235;
              TQRLabel( DetailBand1.FindChildControl( 'ypyf' + IntToStr( j - 1 ) ) ).Caption := '';
              TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
             // TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end;
            frm_yzinput.sp_zxjl_cq_dy.Next;
            end;
          end;
        end
        else
        begin

          if (i=1) and (j<hs+1) then
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
            TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ksrq' ).asstring;
          aControl := DetailBand1.FindChildControl( 'kdysmc' + IntToStr( j - 1 ) );
          if aControl is TQRLabel then
            TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;
          if frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
          begin
            x := ( length( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
            DetailBand1.FindChildControl( 'QRgrImage' + IntToStr( j ) ).enabled := true;
            DetailBand1.FindChildControl( 'QRgrImage' + IntToStr( j ) ).Top := TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).top;
            DetailBand1.FindChildControl( 'qrgrimage' + IntToStr( j ) ).left := DetailBand1.FindChildControl( 'ypyf' + IntToStr( j - 1 ) ).left - 20;
            DetailBand1.FindChildControl( 'qrgrimage' + IntToStr( j ) ).height := 30;
            TQRLabel( DetailBand1.FindChildControl( 'ypyf' + IntToStr( j - 1 ) ) ).Caption := trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
            TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
          //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
          end
          else
          begin
            DetailBand1.FindChildControl( 'qrgrimage' + IntToStr( j ) ).enabled := false;
            DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ).Width := 235;
            TQRLabel( DetailBand1.FindChildControl( 'ypyf' + IntToStr( j - 1 ) ) ).Caption := '';
            TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
          //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
          end;
          frm_yzinput.sp_zxjl_cq_dy.Next;
          end;
        end;
      end;
      if i=1 then       
      begin
//      QRBand4.Enabled:=false;
      QRLabel2.Enabled:=false;  
      QRLabel3.Enabled:=false;
      QRLabel20.Enabled:=false;  
      QRLabel21.Enabled:=false;  
      QRLabel26.Enabled:=false;
      ny.Enabled:=false;  
      QRLabel1.Enabled:=false;  
      QRLabel2.Enabled:=false;
      QRLabel3.Enabled:=false;  
      QRLabel7.Enabled:=false; 
      QRLabel57.Enabled:=false;
      QRLabel61.Enabled:=false;   

                          //'性别:' + sp_jbxx.fieldbyname( 'brxb' ).asstring +'      '+
                          //'年龄:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
      //QuickRep3.Prepare;
      QRLabel57.Enabled:=false;

      for n := 175 to 195 do
      begin
        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;          
      end;

      for n := 197 to 198 do
      begin
        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
      end;


      for n := 28 to 45 do
      begin
        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
      end;

      for n := 47 to 71 do
      begin
        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;          
      end;

      for n := 18 to 21 do
      begin
        QRBand4.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=false;        
      end;

       for n := 26 to 26 do
      begin
        QRBand4.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=false;
      end;

      for n := 28 to 30 do
      begin
        QRBand4.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=false;            
      end;

      for n := 15 to 15 do
      begin
        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;         
      end;

      for n := 18 to 21 do
      begin
        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
      end;

      for n := 46 to 46 do
      begin
        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;          
      end;

      for n := 26 to 27 do
      begin
        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;          
      end;

      QuickRep3.Preview;
      end
      else
      begin

//    QRBand4.Enabled:=True;
      QRLabel2.Enabled:=true;  
      QRLabel3.Enabled:=true;  
      QRLabel20.Enabled:=true;
      QRLabel21.Enabled:=true;  
      QRLabel26.Enabled:=true;  
      ny.Enabled:=true;
      QRLabel1.Enabled:=true;  
      QRLabel2.Enabled:=true;  
      QRLabel3.Enabled:=true;
      QRLabel7.Enabled:=true; 
      QRLabel57.Enabled:=true;  
      QRLabel61.Enabled:=true;

                          //'性别:' + sp_jbxx.fieldbyname( 'brxb' ).asstring +'      '+
                          //'年龄:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
      //QuickRep3.Prepare;
      QRLabel57.Enabled:=true;  

      for n := 175 to 195 do
      begin
        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;
      end;

      for n := 197 to 198 do
      begin
        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;          
      end;


      for n := 28 to 45 do
      begin
        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;          
      end;

      for n := 47 to 71 do
      begin
        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;          
      end;

      for n := 18 to 21 do
      begin
        QRBand4.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=true;
      end;

       for n := 26 to 26 do
      begin
        QRBand4.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=true;           
      end;

      for n := 28 to 30 do
      begin
        QRBand4.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=true;            
      end;

      for n := 15 to 15 do
      begin
        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;
      end;

      for n := 18 to 21 do
      begin
        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;          
      end;

      for n := 46 to 46 do
      begin
        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;          
      end;

      for n := 26 to 27 do
      begin
        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;
      end;

      if (frm_yzinput.sp_zxjl_cq_dy.FieldByName('yytj').asstring<>'口服') then
      QRLabel2.Caption := pub_yymc + '长期注射计划执行单'
      else
      QRLabel2.Caption := pub_yymc + '口服药计划执行单';
      DM_data.qry_pub.Close;
      DM_data.qry_pub.SQL.text:='select * from sys_kscwsz where bqdm='+''''+pub_bqdm+''''+' and bcbh='+''''+trim(frm_yzinput.sp_jbxx.fieldbyname( 'bch' ).asstring)+'''';
      DM_data.qry_pub.Open;

      QRLabel3.Caption := '姓名:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxm' ).asstring;
      QRLabel20.Caption := '病床号:' + Trim(DM_data.qry_pub.FieldByName('yybch').asstring);
      QRLabel21.Caption := '性别:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxb' ).asstring;
      QRLabel26.Caption := '年龄:' + trim( frm_yzinput.sp_jbxx.fieldbyname( 'brnl' ).asstring );
      ny.Caption := FormatDateTime( 'yyyy', frm_func.curr_date ) + '年';

      QRLabel61.Caption:='姓名:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxm' ).asstring+'      '+
                          '病床号:' + Trim(DM_data.qry_pub.FieldByName('yybch').asstring)+'      '+
                          '卡号:' + Trim( frm_yzinput.sp_jbxx.fieldbyname( 'tmh' ).asstring  );
                          //'性别:' + sp_jbxx.fieldbyname( 'brxb' ).asstring +'      '+
                          //'年龄:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
      //QuickRep3.Prepare;
      QRLabel57.Caption := '审核医生:';
      QuickRep3.Preview;
      end;
     end;
  end;
  if (frm_yzinput.sp_zxjl_cq_dy.FieldByName('yytj').asstring<>'口服') then
  begin
    frm_yzinput.sp_zxjl_cq_dy.Filtered := False;
    frm_yzinput.sp_zxjl_cq_dy.Filter := '(yytj=''肌注'' and  tzrq=null  and ksrq>='+''''+kdrq+''''+ ')' +
      ' or (yytj=''静注'' and  tzrq=null and  ksrq>='+''''+kdrq+''''+ ')' +
      ' or (yytj=''皮下'' and  tzrq=null and ksrq>='+''''+kdrq+''''+ ')' +
      ' or (yytj=''宫颈注射'' and  tzrq=null and ksrq>='+''''+kdrq+''''+ ')' +
      ' or (yytj=''穴注'' and  tzrq=null and  ksrq>='+''''+kdrq+''''+ ')' ;
    frm_yzinput.sp_zxjl_cq_dy.Filtered := True;
  end
  else
  begin
    frm_yzinput.sp_zxjl_cq_dy.Filtered := False;
    frm_yzinput.sp_zxjl_cq_dy.Filter := Filter;
    frm_yzinput.sp_zxjl_cq_dy.Filtered := True;
  end;

end;

procedure Tfrm_zxdxd.pro_xd_qt_zs(m:integer);
var kdrq,yzid:string;
    i, y, j, count, x,hs,n: Integer;
    aControl: TControl;
    v_Filter:string;
begin
  v_Filter:=frm_yzinput.sp_zxjl_cq_dy.Filter;
  yzid:= frm_yzinput.sp_zxjl_cq_dy.FieldByName('id').AsString;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := False;
  frm_yzinput.sp_zxjl_cq_dy.Filter := 'id='+yzid;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := True;
  hs:=StrToInt(ComboBox1.Text)-1;
  if not frm_yzinput.sp_zxjl_cq_dy.IsEmpty then
  begin
    frm_yzinput.sp_zxjl_cq_dy.First;
    if frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs mod 5 <> 0 then
      y := trunc( (frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs) / 5 ) + 1
    else
      y := trunc( (frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs) / 5 );
    count := frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs;
    for I := 1 to y do
    begin
      for j := 1 to 5 do
      begin
        if count < i * 5 then
        begin
          if j > ( 5 - ( y * 5 - count ) ) then
          begin
            aControl := DetailBand3.FindChildControl( 'ksr' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            aControl := DetailBand3.FindChildControl( 'kdysm' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            DetailBand3.FindChildControl( 'QRgrImagej' + IntToStr( j ) ).enabled := false;
          //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel( DetailBand3.FindChildControl( 'ypy' + IntToStr( j - 1 ) ) ).Caption := '';
            //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
            TQRLabel( DetailBand3.FindChildControl( 'xmm' + IntToStr( j - 1 ) ) ).caption := '';
          end
          else
          begin
            if (i=1) and (j<hs+1) then
            begin
            aControl := DetailBand3.FindChildControl( 'ksr' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            aControl := DetailBand3.FindChildControl( 'kdysm' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            DetailBand3.FindChildControl( 'QRgrImagej' + IntToStr( j ) ).enabled := false;
          //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel( DetailBand3.FindChildControl( 'ypy' + IntToStr( j - 1 ) ) ).Caption := '';
            //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
            TQRLabel( DetailBand3.FindChildControl( 'xmm' + IntToStr( j - 1 ) ) ).caption := '';
            end
            else
            begin
            aControl := DetailBand3.FindChildControl( 'ksr' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ksrq' ).AsString;
            aControl := DetailBand3.FindChildControl( 'kdysm' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;
            if frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
            begin
              x := ( length( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
              DetailBand3.FindChildControl( 'QRgrImagej' + IntToStr( j ) ).enabled := true;
              DetailBand3.FindChildControl( 'QRgrImagej' + IntToStr( j ) ).Top := TQRLabel( DetailBand3.FindChildControl( 'xmm' + IntToStr( j - 1 ) ) ).top;
              DetailBand3.FindChildControl( 'QRgrImagej' + IntToStr( j ) ).left := DetailBand3.FindChildControl( 'ypy' + IntToStr( j - 1 ) ).left - 20;
              DetailBand3.FindChildControl( 'QRgrImagej' + IntToStr( j ) ).height := 30;
              TQRLabel( DetailBand3.FindChildControl( 'ypy' + IntToStr( j - 1 ) ) ).Caption := trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
              TQRLabel( DetailBand3.FindChildControl( 'xmm' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
              //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end
            else
            begin
              DetailBand3.FindChildControl( 'QRgrImagej' + IntToStr( j ) ).enabled := false;
              DetailBand3.FindChildControl( 'xmm' + IntToStr( j - 1 ) ).Width := 235;
              TQRLabel( DetailBand3.FindChildControl( 'ypy' + IntToStr( j - 1 ) ) ).Caption := '';
              TQRLabel( DetailBand3.FindChildControl( 'xmm' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
             // TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end;
            frm_yzinput.sp_zxjl_cq_dy.Next;
            end;
          end;
        end
        else
        begin

          if (i=1) and (j<hs+1) then
          begin
            aControl := DetailBand3.FindChildControl( 'ksr' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            aControl := DetailBand3.FindChildControl( 'kdysm' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            DetailBand3.FindChildControl( 'QRgrImagej' + IntToStr( j ) ).enabled := false;
          //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel( DetailBand3.FindChildControl( 'ypy' + IntToStr( j - 1 ) ) ).Caption := '';
            //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
            TQRLabel( DetailBand3.FindChildControl( 'xmm' + IntToStr( j - 1 ) ) ).caption := '';
          end
          else
          begin
          aControl := DetailBand3.FindChildControl( 'ksr' + IntToStr( j - 1 ) );
          if aControl is TQRLabel then
            TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ksrq' ).asstring;
          aControl := DetailBand3.FindChildControl( 'kdysm' + IntToStr( j - 1 ) );
          if aControl is TQRLabel then
            TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;
          if frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
          begin
            x := ( length( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
            DetailBand3.FindChildControl( 'QRgrImagej' + IntToStr( j ) ).enabled := true;
            DetailBand3.FindChildControl( 'QRgrImagej' + IntToStr( j ) ).Top := TQRLabel( DetailBand3.FindChildControl( 'xmm' + IntToStr( j - 1 ) ) ).top;
            DetailBand3.FindChildControl( 'QRgrImagej' + IntToStr( j ) ).left := DetailBand3.FindChildControl( 'ypy' + IntToStr( j - 1 ) ).left - 20;
            DetailBand3.FindChildControl( 'QRgrImagej' + IntToStr( j ) ).height := 30;
            TQRLabel( DetailBand3.FindChildControl( 'ypy' + IntToStr( j - 1 ) ) ).Caption := trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
            TQRLabel( DetailBand3.FindChildControl( 'xmm' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
          //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
          end
          else
          begin
            DetailBand3.FindChildControl( 'QRgrImagej' + IntToStr( j ) ).enabled := false;
            DetailBand3.FindChildControl( 'xmm' + IntToStr( j - 1 ) ).Width := 235;
            TQRLabel( DetailBand3.FindChildControl( 'ypy' + IntToStr( j - 1 ) ) ).Caption := '';
            TQRLabel( DetailBand3.FindChildControl( 'xmm' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
          //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
          end;
          frm_yzinput.sp_zxjl_cq_dy.Next;
          end;
        end;
      end;
      if i=1 then       
      begin
//      QRBand4.Enabled:=false;
//      QRLabel2.Enabled:=false;
//      QRLabel3.Enabled:=false;  
//      QRLabel20.Enabled:=false;  
//      QRLabel21.Enabled:=false;  
//      QRLabel26.Enabled:=false;  
//      ny.Enabled:=false;  
//      QRLabel1.Enabled:=false;
//      QRLabel2.Enabled:=false;
//      QRLabel3.Enabled:=false;  
//      QRLabel7.Enabled:=false; 
//      QRLabel57.Enabled:=false;  
//      QRLabel61.Enabled:=false;

                          //'性别:' + sp_jbxx.fieldbyname( 'brxb' ).asstring +'      '+
                          //'年龄:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
      //QuickRep3.Prepare;
      //QRLabel57.Enabled:=false;  

//      for n := 175 to 195 do
//      begin
//        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;          
//      end;
//
//      for n := 197 to 198 do
//      begin
//        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;          
//      end;
//
//
//      for n := 28 to 45 do
//      begin
//        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
//      end;
//
//      for n := 47 to 71 do
//      begin
//        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
//      end;
//
//      for n := 18 to 21 do
//      begin
//        QRBand4.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=false;        
//      end;
//
//       for n := 26 to 26 do
//      begin
//        QRBand4.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=false;           
//      end;
//
//      for n := 28 to 30 do
//      begin
//        QRBand4.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=false;            
//      end;
//
//      for n := 15 to 15 do
//      begin
//        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;         
//      end;
//
//      for n := 18 to 21 do
//      begin
//        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;          
//      end;
//
//      for n := 46 to 46 do
//      begin
//        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
//      end;
//
//      for n := 26 to 27 do
//      begin
//        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
//      end;
//      
//      QuickRep3.Preview;
//      end
      if m=1 then
        QRLabel2000.Caption := pub_yymc + '长期输液计划执行单'
      else if m=2 then
       QRLabel2000.Caption := pub_yymc + '长期治疗计划执行单'
      else if m=3 then
       QRLabel2000.Caption := pub_yymc + '长期注射计划执行单'
      else if m=4 then
       QRLabel2000.Caption := pub_yymc + '临时输液计划执行单'
      else if m=5 then
       QRLabel2000.Caption := pub_yymc + '临时治疗计划执行单'
      else if m=6 then
       QRLabel2000.Caption := pub_yymc + '临时注射计划执行单';
      DM_data.qry_pub.Close;
      DM_data.qry_pub.SQL.text:='select * from sys_kscwsz where bqdm='+''''+pub_bqdm+''''+' and bcbh='+''''+trim(frm_yzinput.sp_jbxx.fieldbyname( 'bch' ).asstring)+'''';
      DM_data.qry_pub.Open;

      QRLabel300.Caption := '姓名:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxm' ).asstring;
      QRLabel200.Caption := '病床号:' + Trim(DM_data.qry_pub.FieldByName('yybch').asstring);
      QRLabel210.Caption := '性别:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxb' ).asstring;
      QRLabel260.Caption := '年龄:' + trim( frm_yzinput.sp_jbxx.fieldbyname( 'brnl' ).asstring );
      nrjy0.Caption := FormatDateTime( 'yyyy', frm_func.curr_date ) + '年';
      QRLabel66.Enabled:=False;
      QRLabel68.Enabled:=False;
      QuickRep1.Preview
      end
      else
      begin
//
////    QRBand4.Enabled:=True;
//      QRLabel2.Enabled:=true;  
//      QRLabel3.Enabled:=true;  
//      QRLabel20.Enabled:=true;  
//      QRLabel21.Enabled:=true;
//      QRLabel26.Enabled:=true;  
//      ny.Enabled:=true;  
//      QRLabel1.Enabled:=true;  
//      QRLabel2.Enabled:=true;
//      QRLabel3.Enabled:=true;  
//      QRLabel7.Enabled:=true;
//      QRLabel57.Enabled:=true;  
//      QRLabel61.Enabled:=true;  
//
//                          //'性别:' + sp_jbxx.fieldbyname( 'brxb' ).asstring +'      '+
//                          //'年龄:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
//      //QuickRep3.Prepare;
//      QRLabel57.Enabled:=true;  
//
//      for n := 175 to 195 do
//      begin
//        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;          
//      end;
//
//      for n := 197 to 198 do
//      begin
//        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;          
//      end;
//
//
//      for n := 28 to 45 do
//      begin
//        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;
//      end;
//
//      for n := 47 to 71 do
//      begin
//        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;          
//      end;
//
//      for n := 18 to 21 do
//      begin
//        QRBand4.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=true;        
//      end;
//
//       for n := 26 to 26 do
//      begin
//        QRBand4.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=true;           
//      end;
//
//      for n := 28 to 30 do
//      begin
//        QRBand4.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=true;
//      end;
//
//      for n := 15 to 15 do
//      begin
//        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;         
//      end;
//
//      for n := 18 to 21 do
//      begin
//        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;          
//      end;
//
//      for n := 46 to 46 do
//      begin
//        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;          
//      end;
//
//      for n := 26 to 27 do
//      begin
//        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;
//      end;

      if m=1 then
        QRLabel2000.Caption := pub_yymc + '长期输液计划执行单'
      else if m=2 then
       QRLabel2000.Caption := pub_yymc + '长期治疗计划执行单'
      else if m=3 then
       QRLabel2000.Caption := pub_yymc + '长期注射计划执行单'
      else if m=4 then
       QRLabel2000.Caption := pub_yymc + '临时输液计划执行单'
      else if m=5 then
       QRLabel2000.Caption := pub_yymc + '临时治疗计划执行单'
      else if m=6 then
       QRLabel2000.Caption := pub_yymc + '临时注射计划执行单';

      DM_data.qry_pub.Close;
      DM_data.qry_pub.SQL.text:='select * from sys_kscwsz where bqdm='+''''+pub_bqdm+''''+' and bcbh='+''''+trim(frm_yzinput.sp_jbxx.fieldbyname( 'bch' ).asstring)+'''';
      DM_data.qry_pub.Open;

      QRLabel300.Caption := '姓名:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxm' ).asstring;
      QRLabel200.Caption := '病床号:' + Trim(DM_data.qry_pub.FieldByName('yybch').asstring);
      QRLabel210.Caption := '性别:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxb' ).asstring;
      QRLabel260.Caption := '年龄:' + trim( frm_yzinput.sp_jbxx.fieldbyname( 'brnl' ).asstring );
      nrjy0.Caption := FormatDateTime( 'yyyy', frm_func.curr_date ) + '年';
      QRLabel66.Enabled:=True;
      QRLabel68.Enabled:=True;
      QRLabel66.Caption:='姓名:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxm' ).asstring+'      '+
                          '病床号:' + Trim(DM_data.qry_pub.FieldByName('yybch').asstring)+'      '+
                          '卡号:' + Trim( frm_yzinput.sp_jbxx.fieldbyname( 'tmh' ).asstring  );
                          //'性别:' + sp_jbxx.fieldbyname( 'brxb' ).asstring +'      '+
                          //'年龄:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
      //QuickRep3.Prepare;
      QRLabel68.Caption := '审核医生:';
      QuickRep1.Preview;
      end;
     end;
  end;
    frm_yzinput.sp_zxjl_cq_dy.Filtered := False;
  frm_yzinput.sp_zxjl_cq_dy.Filter := v_Filter;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := True;

end;

procedure Tfrm_zxdxd.pro_xd_qt_zs4;
var
  i: Integer;
  hs: Integer;
  x: Integer;
  n: Integer;
  y: Integer;
  j: Integer;
  count: Integer;
  aControl: TControl;
  v_yytj,v_lb,filter:string;
begin
  kdrq:= frm_yzinput.sp_zxjl_cq_dy.FieldByName('ksrq').AsString;
//  frm_yzinput.sp_zxjl_cq_dy.Filtered := False;
//  frm_yzinput.sp_zxjl_cq_dy.Filter := '(yytj like ''%静滴%'' and kdks='+''''+pub_ksdm+''''+' and ksrq='+''''+kdrq+''') or'+
//                          ' (yytj=''静脉泵入'' and kdks='+''''+pub_ksdm+''''+' and ksrq='+''''+kdrq+''') or '+
//                          ' (xmmc like ''%皮试%'' and kdks='+''''+pub_ksdm+''''+' and ksrq='+''''+kdrq+''') '+
//                          ' or '+ ' (xmmc like ''%敏试%'' and kdks='+''''+pub_ksdm+''''+' and ksrq='+''''+kdrq+''') ';
//  frm_yzinput.sp_zxjl_cq_dy.Filtered := True;
  DM_data.qry_pub.close;
  DM_data.qry_pub.sql.text := 'select yytj from zybl_zyyz_dytjsz where dyxm=''输液计划单''';
  DM_data.qry_pub.Open;
  if DM_data.qry_pub.IsEmpty then
  begin
    v_yytj := '';
  end
  else
  begin
    DM_data.qry_pub.First;
    while not DM_data.qry_pub.eof do
    begin
      v_yytj := v_yytj + '(yytj=' + '''' + DM_data.qry_pub.FieldByName( 'yytj' ).asstring + '''' + ' and  tzrq=null and ksrq='+''''+kdrq+''')'+' or ';
      DM_data.qry_pub.Next;
    end;

  end;

  DM_data.qry_pub.close;
  DM_data.qry_pub.sql.text := 'select lbmc from zybl_zyyz_dylbsz where dyxm=''输液计划单''';
  DM_data.qry_pub.Open;
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
      v_lb := v_lb + '(lb=' + '''' + DM_data.qry_pub.FieldByName( 'lbmc' ).asstring + '''' + ' and  tzrq=null and kdrq>=' + '''' + formatdatetime( 'yy-MM-dd', frm_func.curr_date ) + ' 00:00' + ''')' + ' or ';
      DM_data.qry_pub.Next;
    end;

  end;

  if v_yytj + v_lb = '' then
  begin
    filter := ' 1<>1 ';
  end
  else
  begin
    filter := v_yytj + v_lb +
     ' ( xmmc like ''%皮试%'' and  ksrq=' + '''' + kdrq+''')'+
    ' or '+ ' ( xmmc like ''%敏试%'' and  ksrq=' + '''' + kdrq+''')'+
    ' or '+ ' ( xmmc like ''%输%'' and  xmmc like ''%血%'' and lb<>''检验'' and  ksrq=' + '''' +kdrq+''')';
  end;

  frm_yzinput.sp_zxjl_cq_dy.Filter := filter;

  frm_yzinput.sp_zxjl_cq_dy.Filtered := True;
  hs:=StrToInt(ComboBox1.Text)-1;
  if not frm_yzinput.sp_zxjl_cq_dy.IsEmpty then
  begin
    frm_yzinput.sp_zxjl_cq_dy.First;
    if frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs mod 9 <> 0 then
      y := trunc( (frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs) / 9 ) + 1
    else
      y := trunc( (frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs) / 9 );
    count := frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs;
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
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).enabled := false;
          //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
            //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := '';
          end
          else
          begin
            if (i=1) and (j<hs+1) then
            begin
            aControl := QRBand10.FindChildControl( 'ksrqls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            aControl := QRBand10.FindChildControl( 'kdysmcls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).enabled := false;
          //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
            //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := '';
            end
            else
            begin
            aControl := QRBand10.FindChildControl( 'ksrqls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ksrq' ).AsString;
            aControl := QRBand10.FindChildControl( 'kdysmcls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;
            if frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
            begin
              x := ( length( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
              QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).enabled := true;
              QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).Top := TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).top;
              QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).left := QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ).left - 20;
              QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).height := 30;
              TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
              TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
              //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end
            else
            begin
              QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).enabled := false;
              QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ).Width := 235;
              TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
              TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
             // TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end;
            frm_yzinput.sp_zxjl_cq_dy.Next;
            end;
          end;
        end
        else
        begin

          if (i=1) and (j<hs+1) then
          begin
            aControl := QRBand10.FindChildControl( 'ksrqls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            aControl := QRBand10.FindChildControl( 'kdysmcls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).enabled := false;
          //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
            //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := '';
          end
          else
          begin
          aControl := QRBand10.FindChildControl( 'ksrqls_' + IntToStr( j - 1 ) );
          if aControl is TQRLabel then
            TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ksrq' ).asstring;
          aControl := QRBand10.FindChildControl( 'kdysmcls_' + IntToStr( j - 1 ) );
          if aControl is TQRLabel then
            TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;
          if frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
          begin
            x := ( length( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
            QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).enabled := true;
            QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).Top := TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).top;
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).left := QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ).left - 20;
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).height := 30;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
          //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
          end
          else
          begin
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).enabled := false;
            QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ).Width := 235;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
          //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
          end;
          frm_yzinput.sp_zxjl_cq_dy.Next;
          end;
        end;
      end;
      if i=1 then       
      begin

        QRLabel44.Enabled:=false;
        QRLabel58.Enabled:=false;
        QRLabel67.Enabled:=false;
        QRLabel9.Enabled:=false;
      for n := 45 to 56 do
      begin
        QRBand9.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=false;
      end;
      for n := 138 to 145 do
      begin
        QRBand9.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
      end;

      for n := 146 to 172 do
      begin
        QRBand10.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
      end;
      QRLabel45.Enabled:=false;
      QRLabel46.Enabled:=false;
      QRLabel47.Enabled:=false;
      QRLabel48.Enabled:=false;
      QRLabel49.Enabled:=false;
      QRLabel50.Enabled:=false;
      QRLabel51.Enabled:=false;
      QRLabel52.Enabled:=false;
      QRLabel53.Enabled:=false;
      QRLabel54.Enabled:=false;
      QRLabel55.Enabled:=false;
      QRLabel56.Enabled:=false;
      QRShape138.Enabled:=false;
      QRShape139.Enabled:=false;
      QRShape140.Enabled:=false;
      QRShape141.Enabled:=false;
      QRShape142.Enabled:=false;
      QRShape143.Enabled:=false;
      QRShape144.Enabled:=false;
      QRShape145.Enabled:=false;

      //QRBand9.Enabled:=false;
      DM_data.qry_pub.Close;
      DM_data.qry_pub.SQL.text:='select * from sys_kscwsz where bqdm='+''''+pub_bqdm+''''+' and bcbh='+''''+trim(frm_yzinput.sp_jbxx.fieldbyname( 'bch' ).asstring)+'''';
      DM_data.qry_pub.Open;
      QRLabel45.Caption := pub_yymc + '临时输液计划执行单';
      QRLabel46.Caption := '姓名:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxm' ).asstring;
      QRLabel50.Caption := '病床号:' + Trim(DM_data.qry_pub.FieldByName('yybch').asstring);
      QRLabel51.Caption := '性别:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxb' ).asstring;
      QRLabel52.Caption := '年龄:' + trim( frm_yzinput.sp_jbxx.fieldbyname( 'brnl' ).asstring );
      QRLabel53.Caption := FormatDateTime( 'yyyy', frm_func.curr_date ) + '年';
      QuickRep5.Preview;
      end
      else
      begin

        QRLabel44.Enabled:=true;
        QRLabel58.Enabled:=true;
        QRLabel67.Enabled:=true;
        QRLabel9.Enabled:=true;

      for n := 45 to 56 do
      begin
        QRBand9.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=true;
      end;
      for n := 138 to 145 do
      begin
        QRBand9.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;
      end;

      for n := 146 to 172 do
      begin
        QRBand10.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;
      end;
      QRLabel45.Enabled:=true;
      QRLabel46.Enabled:=true;
      QRLabel47.Enabled:=true;
      QRLabel48.Enabled:=true;
      QRLabel49.Enabled:=true;
      QRLabel50.Enabled:=true;
      QRLabel51.Enabled:=true;
      QRLabel52.Enabled:=true;
      QRLabel53.Enabled:=true;
      QRLabel54.Enabled:=true;
      QRLabel55.Enabled:=true;
      QRLabel56.Enabled:=true;
      QRShape138.Enabled:=true;
      QRShape139.Enabled:=true;
      QRShape140.Enabled:=true;
      QRShape141.Enabled:=true;
      QRShape142.Enabled:=true;
      QRShape143.Enabled:=true;
      QRShape144.Enabled:=true;
      QRShape145.Enabled:=true;
      //QRBand9.Enabled:=true;
      
      DM_data.qry_pub.Close;
      DM_data.qry_pub.SQL.text:='select * from sys_kscwsz where bqdm='+''''+pub_bqdm+''''+' and bcbh='+''''+trim(frm_yzinput.sp_jbxx.fieldbyname( 'bch' ).asstring)+'''';
      DM_data.qry_pub.Open;
      QRLabel45.Caption := pub_yymc + '临时输液计划执行单';
      QRLabel46.Caption := '姓名:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxm' ).asstring;
      QRLabel50.Caption := '病床号:' + Trim(DM_data.qry_pub.FieldByName('yybch').asstring);
      QRLabel51.Caption := '性别:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxb' ).asstring;
      QRLabel52.Caption := '年龄:' + trim( frm_yzinput.sp_jbxx.fieldbyname( 'brnl' ).asstring );
      QRLabel53.Caption := FormatDateTime( 'yyyy', frm_func.curr_date ) + '年';

      QRLabel67.Caption:='姓名:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxm' ).asstring+'      '+
                         '病床号:' + Trim(DM_data.qry_pub.FieldByName('yybch').asstring)+'      '+
                         '卡号:' + Trim( frm_yzinput.sp_jbxx.fieldbyname( 'tmh' ).asstring  );
                      //   '性别:' + sp_jbxx.fieldbyname( 'brxb' ).asstring+'      '+
                      //   '年龄:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
      //QuickRep3.Prepare;
      QRLabel58.Caption := '审核医生：';
      QuickRep5.Preview;
      end;
     end;
  end;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := False;
  frm_yzinput.sp_zxjl_cq_dy.Filter := '(yytj like ''%静滴%''  and ksrq='+''''+kdrq+''') or'+
                          ' (yytj=''静脉泵入''  and ksrq='+''''+kdrq+''') or '+
                          ' (xmmc like ''%皮试%''  and ksrq='+''''+kdrq+''') '+
                          ' or '+ ' (xmmc like ''%敏试%''  and ksrq='+''''+kdrq+''') ';
  frm_yzinput.sp_zxjl_cq_dy.Filtered := True;

end;

procedure Tfrm_zxdxd.pro_xd_ls_zs1;
var
  i: Integer;
  hs: Integer;
  x: Integer;
  n: Integer;
  y: Integer;
  j: Integer;
  count: Integer;
  aControl: TControl;
  yzid:string;
  v_Filter:string;
begin
  v_Filter:=frm_yzinput.sp_zxjl_cq_dy.Filter;
  yzid:= frm_yzinput.sp_zxjl_cq_dy.FieldByName('id').AsString;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := False;
  frm_yzinput.sp_zxjl_cq_dy.Filter :='id='+yzid;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := True;
  hs:=StrToInt(ComboBox1.Text)-1;
  if not frm_yzinput.sp_zxjl_cq_dy.IsEmpty then
  begin
    frm_yzinput.sp_zxjl_cq_dy.First;
    if frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs mod 9 <> 0 then
      y := trunc( (frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs) / 9 ) + 1
    else
      y := trunc( (frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs) / 9 );
    count := frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs;
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
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).enabled := false;
          //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
            //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := '';
          end
          else
          begin
            if (i=1) and (j<hs+1) then
            begin
            aControl := QRBand10.FindChildControl( 'ksrqls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            aControl := QRBand10.FindChildControl( 'kdysmcls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).enabled := false;
          //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
            //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := '';
            end
            else
            begin
            aControl := QRBand10.FindChildControl( 'ksrqls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ksrq' ).AsString;
            aControl := QRBand10.FindChildControl( 'kdysmcls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;
            if frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
            begin
              x := ( length( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
              QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).enabled := true;
              QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).Top := TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).top;
              QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).left := QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ).left - 20;
              QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).height := 30;
              TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
              TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
              //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end
            else
            begin
              QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).enabled := false;
              QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ).Width := 235;
              TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
              TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
             // TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end;
            frm_yzinput.sp_zxjl_cq_dy.Next;
            end;
          end;
        end
        else
        begin

          if (i=1) and (j<hs+1) then
          begin
            aControl := QRBand10.FindChildControl( 'ksrqls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            aControl := QRBand10.FindChildControl( 'kdysmcls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).enabled := false;
          //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
            //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := '';
          end
          else
          begin
          aControl := QRBand10.FindChildControl( 'ksrqls_' + IntToStr( j - 1 ) );
          if aControl is TQRLabel then
            TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ksrq' ).asstring;
          aControl := QRBand10.FindChildControl( 'kdysmcls_' + IntToStr( j - 1 ) );
          if aControl is TQRLabel then
            TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;
          if frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
          begin
            x := ( length( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
            QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).enabled := true;
            QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).Top := TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).top;
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).left := QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ).left - 20;
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).height := 30;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
          //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
          end
          else
          begin
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).enabled := false;
            QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ).Width := 235;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
          //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
          end;
          frm_yzinput.sp_zxjl_cq_dy.Next;
          end;
        end;
      end;
      if i=1 then       
      begin

        QRLabel44.Enabled:=false;
        QRLabel58.Enabled:=false;
        QRLabel67.Enabled:=false;

      for n := 45 to 56 do
      begin
        QRBand9.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=false;
      end;
      for n := 138 to 145 do
      begin
        QRBand9.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
      end;

      for n := 146 to 172 do
      begin
        QRBand10.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
      end;
      DM_data.qry_pub.Close;
      DM_data.qry_pub.SQL.text:='select * from sys_kscwsz where bqdm='+''''+pub_bqdm+''''+' and bcbh='+''''+trim(frm_yzinput.sp_jbxx.fieldbyname( 'bch' ).asstring)+'''';
      DM_data.qry_pub.Open;
      QRLabel45.Caption := pub_yymc + '临时输液计划执行单';
      QRLabel46.Caption := '姓名:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxm' ).asstring;
      QRLabel50.Caption := '病床号:' + Trim(DM_data.qry_pub.FieldByName('yybch').asstring);
      QRLabel51.Caption := '性别:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxb' ).asstring;
      QRLabel52.Caption := '年龄:' + trim( frm_yzinput.sp_jbxx.fieldbyname( 'brnl' ).asstring );
      QRLabel53.Caption := FormatDateTime( 'yyyy', frm_func.curr_date ) + '年';
      
      QuickRep5.Preview;
      end
      else
      begin

        QRLabel44.Enabled:=true;
        QRLabel58.Enabled:=true;
        QRLabel67.Enabled:=true;


      for n := 45 to 56 do
      begin
        QRBand9.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=false;
      end;
      for n := 138 to 145 do
      begin
        QRBand9.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
      end;

      for n := 146 to 172 do
      begin
        QRBand10.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
      end;


      DM_data.qry_pub.Close;
      DM_data.qry_pub.SQL.text:='select * from sys_kscwsz where bqdm='+''''+pub_bqdm+''''+' and bcbh='+''''+trim(frm_yzinput.sp_jbxx.fieldbyname( 'bch' ).asstring)+'''';
      DM_data.qry_pub.Open;
      QRLabel45.Caption := pub_yymc + '临时输液计划执行单';
      QRLabel46.Caption := '姓名:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxm' ).asstring;
      QRLabel50.Caption := '病床号:' + Trim(DM_data.qry_pub.FieldByName('yybch').asstring);
      QRLabel51.Caption := '性别:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxb' ).asstring;
      QRLabel52.Caption := '年龄:' + trim( frm_yzinput.sp_jbxx.fieldbyname( 'brnl' ).asstring );
      QRLabel53.Caption := FormatDateTime( 'yyyy', frm_func.curr_date ) + '年';

      QRLabel67.Caption:='姓名:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxm' ).asstring+'      '+
                         '病床号:' + Trim(DM_data.qry_pub.FieldByName('yybch').asstring)+'      '+
                         '卡号:' + Trim( frm_yzinput.sp_jbxx.fieldbyname( 'tmh' ).asstring  );
                      //   '性别:' + sp_jbxx.fieldbyname( 'brxb' ).asstring+'      '+
                      //   '年龄:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
      //QuickRep3.Prepare;
      QRLabel58.Caption := '审核医生：';
      QuickRep5.Preview;
      end;
     end;
  end;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := False;
  frm_yzinput.sp_zxjl_cq_dy.Filter := v_Filter;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := True;

end;

procedure Tfrm_zxdxd.pro_xd_ls_zs2;
var
  i: Integer;
  hs: Integer;
  x: Integer;
  n: Integer;
  y: Integer;
  j: Integer;
  count: Integer;
  aControl: TControl;
  yzid:string;
  v_Filter:string;
begin
  v_Filter:=frm_yzinput.sp_zxjl_cq_dy.Filter;
  yzid:= frm_yzinput.sp_zxjl_cq_dy.FieldByName('id').AsString;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := False;
  frm_yzinput.sp_zxjl_cq_dy.Filter :='id='+yzid;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := True;
  hs:=StrToInt(ComboBox1.Text)-1;
  if not frm_yzinput.sp_zxjl_cq_dy.IsEmpty then
  begin
    frm_yzinput.sp_zxjl_cq_dy.First;
    if frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs mod 9 <> 0 then
      y := trunc( (frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs) / 9 ) + 1
    else
      y := trunc( (frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs) / 9 );
    count := frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs;
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
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).enabled := false;
          //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
            //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := '';
          end
          else
          begin
            if (i=1) and (j<hs+1) then
            begin
            aControl := QRBand10.FindChildControl( 'ksrqls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            aControl := QRBand10.FindChildControl( 'kdysmcls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).enabled := false;
          //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
            //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := '';
            end
            else
            begin
            aControl := QRBand10.FindChildControl( 'ksrqls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ksrq' ).AsString;
            aControl := QRBand10.FindChildControl( 'kdysmcls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;
            if frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
            begin
              x := ( length( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
              QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).enabled := true;
              QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).Top := TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).top;
              QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).left := QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ).left - 20;
              QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).height := 30;
              TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
              TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
              //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end
            else
            begin
              QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).enabled := false;
              QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ).Width := 235;
              TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
              TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
             // TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end;
            frm_yzinput.sp_zxjl_cq_dy.Next;
            end;
          end;
        end
        else
        begin

          if (i=1) and (j<hs+1) then
          begin
            aControl := QRBand10.FindChildControl( 'ksrqls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            aControl := QRBand10.FindChildControl( 'kdysmcls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).enabled := false;
          //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
            //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := '';
          end
          else
          begin
          aControl := QRBand10.FindChildControl( 'ksrqls_' + IntToStr( j - 1 ) );
          if aControl is TQRLabel then
            TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ksrq' ).asstring;
          aControl := QRBand10.FindChildControl( 'kdysmcls_' + IntToStr( j - 1 ) );
          if aControl is TQRLabel then
            TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;
          if frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
          begin
            x := ( length( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
            QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).enabled := true;
            QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).Top := TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).top;
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).left := QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ).left - 20;
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).height := 30;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
          //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
          end
          else
          begin
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).enabled := false;
            QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ).Width := 235;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
          //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
          end;
          frm_yzinput.sp_zxjl_cq_dy.Next;
          end;
        end;
      end;
      if i=1 then       
      begin

        QRLabel44.Enabled:=false;
        QRLabel58.Enabled:=false;
        QRLabel67.Enabled:=false;

      for n := 45 to 56 do
      begin
        QRBand9.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=false;
      end;
      for n := 138 to 145 do
      begin
        QRBand9.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
      end;

      for n := 146 to 172 do
      begin
        QRBand10.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
      end;
      DM_data.qry_pub.Close;
      DM_data.qry_pub.SQL.text:='select * from sys_kscwsz where bqdm='+''''+pub_bqdm+''''+' and bcbh='+''''+trim(frm_yzinput.sp_jbxx.fieldbyname( 'bch' ).asstring)+'''';
      DM_data.qry_pub.Open;
      QRLabel45.Caption := pub_yymc + '临时治疗计划执行单';
      QRLabel46.Caption := '姓名:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxm' ).asstring;
      QRLabel50.Caption := '病床号:' + Trim(DM_data.qry_pub.FieldByName('yybch').asstring);
      QRLabel51.Caption := '性别:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxb' ).asstring;
      QRLabel52.Caption := '年龄:' + trim( frm_yzinput.sp_jbxx.fieldbyname( 'brnl' ).asstring );
      QRLabel53.Caption := FormatDateTime( 'yyyy', frm_func.curr_date ) + '年';
      
      QuickRep5.Preview;
      end
      else
      begin

        QRLabel44.Enabled:=true;
        QRLabel58.Enabled:=true;
        QRLabel67.Enabled:=true;


      for n := 45 to 56 do
      begin
        QRBand9.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=false;
      end;
      for n := 138 to 145 do
      begin
        QRBand9.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
      end;

      for n := 146 to 172 do
      begin
        QRBand10.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
      end;


      DM_data.qry_pub.Close;
      DM_data.qry_pub.SQL.text:='select * from sys_kscwsz where bqdm='+''''+pub_bqdm+''''+' and bcbh='+''''+trim(frm_yzinput.sp_jbxx.fieldbyname( 'bch' ).asstring)+'''';
      DM_data.qry_pub.Open;
      QRLabel45.Caption := pub_yymc + '临时治疗计划执行单';
      QRLabel46.Caption := '姓名:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxm' ).asstring;
      QRLabel50.Caption := '病床号:' + Trim(DM_data.qry_pub.FieldByName('yybch').asstring);
      QRLabel51.Caption := '性别:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxb' ).asstring;
      QRLabel52.Caption := '年龄:' + trim( frm_yzinput.sp_jbxx.fieldbyname( 'brnl' ).asstring );
      QRLabel53.Caption := FormatDateTime( 'yyyy', frm_func.curr_date ) + '年';

      QRLabel67.Caption:='姓名:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxm' ).asstring+'      '+
                         '病床号:' + Trim(DM_data.qry_pub.FieldByName('yybch').asstring)+'      '+
                         '卡号:' + Trim( frm_yzinput.sp_jbxx.fieldbyname( 'tmh' ).asstring  );
                      //   '性别:' + sp_jbxx.fieldbyname( 'brxb' ).asstring+'      '+
                      //   '年龄:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
      //QuickRep3.Prepare;
      QRLabel58.Caption := '审核医生：';
      QuickRep5.Preview;
      end;
     end;
  end;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := False;
  frm_yzinput.sp_zxjl_cq_dy.Filter := v_Filter;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := True;

end;

procedure Tfrm_zxdxd.pro_xd_ls_zs3;
var
  i: Integer;
  hs: Integer;
  x: Integer;
  n: Integer;
  y: Integer;
  j: Integer;
  count: Integer;
  aControl: TControl;
  yzid:string;
  v_Filter:string;
begin
  v_Filter:=frm_yzinput.sp_zxjl_cq_dy.Filter;
  yzid:= frm_yzinput.sp_zxjl_cq_dy.FieldByName('id').AsString;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := False;
  frm_yzinput.sp_zxjl_cq_dy.Filter :='id='+yzid;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := True;
  hs:=StrToInt(ComboBox1.Text)-1;
  if not frm_yzinput.sp_zxjl_cq_dy.IsEmpty then
  begin
    frm_yzinput.sp_zxjl_cq_dy.First;
    if frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs mod 9 <> 0 then
      y := trunc( (frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs) / 9 ) + 1
    else
      y := trunc( (frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs) / 9 );
    count := frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs;
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
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).enabled := false;
          //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
            //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := '';
          end
          else
          begin
            if (i=1) and (j<hs+1) then
            begin
            aControl := QRBand10.FindChildControl( 'ksrqls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            aControl := QRBand10.FindChildControl( 'kdysmcls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).enabled := false;
          //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
            //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := '';
            end
            else
            begin
            aControl := QRBand10.FindChildControl( 'ksrqls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ksrq' ).AsString;
            aControl := QRBand10.FindChildControl( 'kdysmcls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;
            if frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
            begin
              x := ( length( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
              QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).enabled := true;
              QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).Top := TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).top;
              QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).left := QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ).left - 20;
              QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).height := 30;
              TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
              TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
              //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end
            else
            begin
              QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).enabled := false;
              QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ).Width := 235;
              TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
              TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
             // TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end;
            frm_yzinput.sp_zxjl_cq_dy.Next;
            end;
          end;
        end
        else
        begin

          if (i=1) and (j<hs+1) then
          begin
            aControl := QRBand10.FindChildControl( 'ksrqls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            aControl := QRBand10.FindChildControl( 'kdysmcls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).enabled := false;
          //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
            //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := '';
          end
          else
          begin
          aControl := QRBand10.FindChildControl( 'ksrqls_' + IntToStr( j - 1 ) );
          if aControl is TQRLabel then
            TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ksrq' ).asstring;
          aControl := QRBand10.FindChildControl( 'kdysmcls_' + IntToStr( j - 1 ) );
          if aControl is TQRLabel then
            TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;
          if frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
          begin
            x := ( length( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
            QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).enabled := true;
            QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).Top := TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).top;
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).left := QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ).left - 20;
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).height := 30;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
          //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
          end
          else
          begin
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).enabled := false;
            QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ).Width := 235;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
          //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
          end;
          frm_yzinput.sp_zxjl_cq_dy.Next;
          end;
        end;
      end;
      if i=1 then       
      begin

        QRLabel44.Enabled:=false;
        QRLabel58.Enabled:=false;
        QRLabel67.Enabled:=false;

      for n := 45 to 56 do
      begin
        QRBand9.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=false;
      end;
      for n := 138 to 145 do
      begin
        QRBand9.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
      end;

      for n := 146 to 172 do
      begin
        QRBand10.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
      end;
      DM_data.qry_pub.Close;
      DM_data.qry_pub.SQL.text:='select * from sys_kscwsz where bqdm='+''''+pub_bqdm+''''+' and bcbh='+''''+trim(frm_yzinput.sp_jbxx.fieldbyname( 'bch' ).asstring)+'''';
      DM_data.qry_pub.Open;
      QRLabel45.Caption := pub_yymc + '临时注射计划执行单';
      QRLabel46.Caption := '姓名:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxm' ).asstring;
      QRLabel50.Caption := '病床号:' + Trim(DM_data.qry_pub.FieldByName('yybch').asstring);
      QRLabel51.Caption := '性别:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxb' ).asstring;
      QRLabel52.Caption := '年龄:' + trim( frm_yzinput.sp_jbxx.fieldbyname( 'brnl' ).asstring );
      QRLabel53.Caption := FormatDateTime( 'yyyy', frm_func.curr_date ) + '年';
      
      QuickRep5.Preview;
      end
      else
      begin

        QRLabel44.Enabled:=true;
        QRLabel58.Enabled:=true;
        QRLabel67.Enabled:=true;


      for n := 45 to 56 do
      begin
        QRBand9.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=false;
      end;
      for n := 138 to 145 do
      begin
        QRBand9.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
      end;

      for n := 146 to 172 do
      begin
        QRBand10.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
      end;


      DM_data.qry_pub.Close;
      DM_data.qry_pub.SQL.text:='select * from sys_kscwsz where bqdm='+''''+pub_bqdm+''''+' and bcbh='+''''+trim(frm_yzinput.sp_jbxx.fieldbyname( 'bch' ).asstring)+'''';
      DM_data.qry_pub.Open;
      QRLabel45.Caption := pub_yymc + '临时注射计划执行单';
      QRLabel46.Caption := '姓名:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxm' ).asstring;
      QRLabel50.Caption := '病床号:' + Trim(DM_data.qry_pub.FieldByName('yybch').asstring);
      QRLabel51.Caption := '性别:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxb' ).asstring;
      QRLabel52.Caption := '年龄:' + trim( frm_yzinput.sp_jbxx.fieldbyname( 'brnl' ).asstring );
      QRLabel53.Caption := FormatDateTime( 'yyyy', frm_func.curr_date ) + '年';

      QRLabel67.Caption:='姓名:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxm' ).asstring+'      '+
                         '病床号:' + Trim(DM_data.qry_pub.FieldByName('yybch').asstring)+'      '+
                         '卡号:' + Trim( frm_yzinput.sp_jbxx.fieldbyname( 'tmh' ).asstring  );
                      //   '性别:' + sp_jbxx.fieldbyname( 'brxb' ).asstring+'      '+
                      //   '年龄:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
      //QuickRep3.Prepare;
      QRLabel58.Caption := '审核医生：';
      QuickRep5.Preview;
      end;
     end;
  end;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := False;
  frm_yzinput.sp_zxjl_cq_dy.Filter := v_Filter;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := True;

end;

{-------------------------------------------------------------------------------
  过程名:    Tfrm_zxdxd.pro_xd_cq_zs1
  作者:      yansghuai
  日期:      2016.01.25
  参数:      无
  返回值:    无
-------------------------------------------------------------------------------}
procedure Tfrm_zxdxd.pro_xd_cq_zs1;
var kdrq,yzid:string;
    i, y, j, count, x,hs,n: Integer;
    aControl: TControl;
    v_Filter:string;
begin
  v_Filter:=frm_yzinput.sp_zxjl_cq_dy.Filter;
  yzid:= frm_yzinput.sp_zxjl_cq_dy.FieldByName('id').AsString;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := False;
  frm_yzinput.sp_zxjl_cq_dy.Filter := 'id='+yzid;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := True;
  hs:=StrToInt(ComboBox1.Text)-1;
  if not frm_yzinput.sp_zxjl_cq_dy.IsEmpty then
  begin
    frm_yzinput.sp_zxjl_cq_dy.First;
    if frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs mod 8 <> 0 then
      y := trunc( (frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs) / 8 ) + 1
    else
      y := trunc( (frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs) / 8 );
    count := frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs;
    for I := 1 to y do
    begin
      for j := 1 to 8 do
      begin
        if count < i * 8 then
        begin
          if j > ( 8 - ( y * 8 - count ) ) then
          begin
            aControl := qrbndcqsy.FindChildControl( 'cqsyksrq' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            aControl := qrbndcqsy.FindChildControl( 'cqsykdys' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            qrbndcqsy.FindChildControl( 'QRImagesy' + IntToStr( j ) ).enabled := false;
          //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel( qrbndcqsy.FindChildControl( 'cqsyypyf' + IntToStr( j - 1 ) ) ).Caption := '';
            //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
            TQRLabel( qrbndcqsy.FindChildControl( 'cqsyxmmc' + IntToStr( j - 1 ) ) ).caption := '';
          end
          else
          begin
            if (i=1) and (j<hs+1) then
            begin
            aControl := qrbndcqsy.FindChildControl( 'cqsyksrq' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            aControl := qrbndcqsy.FindChildControl( 'cqsykdys' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            qrbndcqsy.FindChildControl( 'QRImagesy' + IntToStr( j ) ).enabled := false;
          //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel( qrbndcqsy.FindChildControl( 'cqsyypyf' + IntToStr( j - 1 ) ) ).Caption := '';
            //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
            TQRLabel( qrbndcqsy.FindChildControl( 'cqsyxmmc' + IntToStr( j - 1 ) ) ).caption := '';
            end
            else
            begin
            aControl := qrbndcqsy.FindChildControl( 'cqsyksrq' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ksrq' ).AsString;
            aControl := qrbndcqsy.FindChildControl( 'cqsykdys' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;
            if frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
            begin
              x := ( length( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
              qrbndcqsy.FindChildControl( 'QRImagesy' + IntToStr( j ) ).enabled := true;
              qrbndcqsy.FindChildControl( 'QRImagesy' + IntToStr( j ) ).Top := TQRLabel( qrbndcqsy.FindChildControl( 'cqsyxmmc' + IntToStr( j - 1 ) ) ).top;
              qrbndcqsy.FindChildControl( 'QRImagesy' + IntToStr( j ) ).left := qrbndcqsy.FindChildControl( 'cqsyypyf' + IntToStr( j - 1 ) ).left - 20;
              qrbndcqsy.FindChildControl( 'QRImagesy' + IntToStr( j ) ).height := 30;
              TQRLabel( qrbndcqsy.FindChildControl( 'cqsyypyf' + IntToStr( j - 1 ) ) ).Caption := trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
              TQRLabel( qrbndcqsy.FindChildControl( 'cqsyxmmc' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
              //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end
            else
            begin
              qrbndcqsy.FindChildControl( 'QRImagesy' + IntToStr( j ) ).enabled := false;
              //qrbndcqsy.FindChildControl( 'cqsyxmmc' + IntToStr( j - 1 ) ).Width := 235;
              TQRLabel( qrbndcqsy.FindChildControl( 'cqsyypyf' + IntToStr( j - 1 ) ) ).Caption := '';
              TQRLabel( qrbndcqsy.FindChildControl( 'cqsyxmmc' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
             // TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end;
            frm_yzinput.sp_zxjl_cq_dy.Next;
            end;
          end;
        end
        else
        begin

          if (i=1) and (j<hs+1) then
          begin
            aControl := qrbndcqsy.FindChildControl( 'cqsyksrq' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            aControl := qrbndcqsy.FindChildControl( 'cqsykdys' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            qrbndcqsy.FindChildControl( 'QRImagesy' + IntToStr( j ) ).enabled := false;
          //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel( qrbndcqsy.FindChildControl( 'cqsyypyf' + IntToStr( j - 1 ) ) ).Caption := '';
            //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
            TQRLabel( qrbndcqsy.FindChildControl( 'cqsyxmmc' + IntToStr( j - 1 ) ) ).caption := '';
          end
          else
          begin
          aControl := qrbndcqsy.FindChildControl( 'cqsyksrq' + IntToStr( j - 1 ) );
          if aControl is TQRLabel then
            TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ksrq' ).asstring;
          aControl := qrbndcqsy.FindChildControl( 'cqsykdys' + IntToStr( j - 1 ) );
          if aControl is TQRLabel then
            TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;
          if frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
          begin
            x := ( length( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
            qrbndcqsy.FindChildControl( 'QRImagesy' + IntToStr( j ) ).enabled := true;
            qrbndcqsy.FindChildControl( 'QRImagesy' + IntToStr( j ) ).Top := TQRLabel( qrbndcqsy.FindChildControl( 'cqsyxmmc' + IntToStr( j - 1 ) ) ).top;
            qrbndcqsy.FindChildControl( 'QRImagesy' + IntToStr( j ) ).left := qrbndcqsy.FindChildControl( 'cqsyypyf' + IntToStr( j - 1 ) ).left - 20;
            qrbndcqsy.FindChildControl( 'QRImagesy' + IntToStr( j ) ).height := 30;
            TQRLabel( qrbndcqsy.FindChildControl( 'cqsyypyf' + IntToStr( j - 1 ) ) ).Caption := trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
            TQRLabel( qrbndcqsy.FindChildControl( 'cqsyxmmc' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
          //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
          end
          else
          begin
            qrbndcqsy.FindChildControl( 'QRImagesy' + IntToStr( j ) ).enabled := false;
            //qrbndcqsy.FindChildControl( 'cqsyxmmc' + IntToStr( j - 1 ) ).Width := 235;
            TQRLabel( qrbndcqsy.FindChildControl( 'cqsyypyf' + IntToStr( j - 1 ) ) ).Caption := '';
            TQRLabel( qrbndcqsy.FindChildControl( 'cqsyxmmc' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
          //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
          end;
          frm_yzinput.sp_zxjl_cq_dy.Next;
          end;
        end;
      end;
      if i=1 then
      begin
//      QRBand4.Enabled:=false;
//      QRLabel2.Enabled:=false;
//      QRLabel3.Enabled:=false;
//      QRLabel20.Enabled:=false;
//      QRLabel21.Enabled:=false;  
//      QRLabel26.Enabled:=false;  
//      ny.Enabled:=false;
//      QRLabel1.Enabled:=false;
//      QRLabel2.Enabled:=false;
//      QRLabel3.Enabled:=false;
//      QRLabel7.Enabled:=false; 
//      QRLabel57.Enabled:=false;  
//      QRLabel61.Enabled:=false;

                          //'性别:' + sp_jbxx.fieldbyname( 'brxb' ).asstring +'      '+
                          //'年龄:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
      //QuickRep3.Prepare;
      //QRLabel57.Enabled:=false;  

//      for n := 175 to 195 do
//      begin
//        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;          
//      end;
//
//      for n := 197 to 198 do
//      begin
//        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
//      end;
//
//
//      for n := 28 to 45 do
//      begin
//        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
//      end;
//
//      for n := 47 to 71 do
//      begin
//        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
//      end;
//
//      for n := 18 to 21 do
//      begin
//        QRBand4.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=false;
//      end;
//
//       for n := 26 to 26 do
//      begin
//        QRBand4.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=false;           
//      end;
//
//      for n := 28 to 30 do
//      begin
//        QRBand4.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=false;            
//      end;
//
//      for n := 15 to 15 do
//      begin
//        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;         
//      end;
//
//      for n := 18 to 21 do
//      begin
//        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;          
//      end;
//
//      for n := 46 to 46 do
//      begin
//        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
//      end;
//
//      for n := 26 to 27 do
//      begin
//        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
//      end;
//      
//      QuickRep3.Preview;
//      end
        if pub_yydm = '0260'  then  //井研处理
        begin
          for n := 64 to 67 do
          begin
          qrbndcqsy.FindChildControl( 'QRShp' + IntToStr( n ) ).Enabled:=false;
          end;
          for n := 69 to 97 do
          begin
          qrbndcqsy.FindChildControl( 'QRShp' + IntToStr( n ) ).Enabled:=false;
          end;
          cqsybch.Enabled:=false;
          cqsymc.Enabled:=false;
          cqsyn.Enabled:=false;
          cqsynl.Enabled:=false;
          cqsyxb.Enabled:=false;
          cqsyxm.Enabled:=false;
          QRLabel79.Enabled:=false;
          QRLabel80.Enabled:=false;
          QRLabel84.Enabled:=false;
          QRLabel85.Enabled:=false;
          QRLabel86.Enabled:=false;
          QRLabel87.Enabled:=false;
          qrshp26.Enabled:=false;
          qrshp61.Enabled:=false;
          qrshp62.Enabled:=false;
          qrshp63.Enabled:=false;
          QRLabel8.Enabled:=false;
        end;

      cqsymc.Caption := pub_yymc + '长期输液计划执行单';
      DM_data.qry_pub.Close;
      DM_data.qry_pub.SQL.text:='select * from sys_kscwsz where bqdm='+''''+pub_bqdm+''''+' and bcbh='+''''+trim(frm_yzinput.sp_jbxx.fieldbyname( 'bch' ).asstring)+'''';
      DM_data.qry_pub.Open;

      cqsyxm.Caption := '姓名:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxm' ).asstring;
      cqsybch.Caption := '病床号:' + Trim(DM_data.qry_pub.FieldByName('yybch').asstring);
      cqsyxb.Caption := '性别:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxb' ).asstring;
      cqsynl.Caption := '年龄:' + trim( frm_yzinput.sp_jbxx.fieldbyname( 'brnl' ).asstring );
      cqsyn.Caption := FormatDateTime( 'yyyy', frm_func.curr_date ) + '年';
      cqsyxmxm.Enabled:=False;
      cqsybchbch.Enabled:=False;
      cqsykh.Enabled:=False;
      qckrpcqsy.Preview
      end
      else
      begin
//
////    QRBand4.Enabled:=True;
//      QRLabel2.Enabled:=true;  
//      QRLabel3.Enabled:=true;  
//      QRLabel20.Enabled:=true;  
//      QRLabel21.Enabled:=true;
//      QRLabel26.Enabled:=true;  
//      ny.Enabled:=true;  
//      QRLabel1.Enabled:=true;  
//      QRLabel2.Enabled:=true;
//      QRLabel3.Enabled:=true;  
//      QRLabel7.Enabled:=true;
//      QRLabel57.Enabled:=true;  
//      QRLabel61.Enabled:=true;
//
//                          //'性别:' + sp_jbxx.fieldbyname( 'brxb' ).asstring +'      '+
//                          //'年龄:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
//      //QuickRep3.Prepare;
//      QRLabel57.Enabled:=true;  
//
//      for n := 175 to 195 do
//      begin
//        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;          
//      end;
//
//      for n := 197 to 198 do
//      begin
//        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;          
//      end;
//
//
//      for n := 28 to 45 do
//      begin
//        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;
//      end;
//
//      for n := 47 to 71 do
//      begin
//        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;
//      end;
//
//      for n := 18 to 21 do
//      begin
//        QRBand4.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=true;        
//      end;
//
//       for n := 26 to 26 do
//      begin
//        QRBand4.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=true;           
//      end;
//
//      for n := 28 to 30 do
//      begin
//        QRBand4.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=true;
//      end;
//
//      for n := 15 to 15 do
//      begin
//        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;         
//      end;
//
//      for n := 18 to 21 do
//      begin
//        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;          
//      end;
//
//      for n := 46 to 46 do
//      begin
//        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;
//      end;
//
//      for n := 26 to 27 do
//      begin
//        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;
//      end;

        if pub_yydm = '0260'  then  //井研处理
        begin
          for n := 64 to 67 do
          begin
          qrbndcqsy.FindChildControl( 'QRShp' + IntToStr( n ) ).Enabled:=true;
          end;
          for n := 69 to 97 do
          begin
          qrbndcqsy.FindChildControl( 'QRShp' + IntToStr( n ) ).Enabled:=true;
          end;
          cqsybch.Enabled:=true;
          cqsymc.Enabled:=true;
          cqsyn.Enabled:=true;
          cqsynl.Enabled:=true;
          cqsyxb.Enabled:=true;
          cqsyxm.Enabled:=true;
          QRLabel79.Enabled:=true;
          QRLabel80.Enabled:=true;
          QRLabel84.Enabled:=true;
          QRLabel85.Enabled:=true;
          QRLabel86.Enabled:=true;
          QRLabel87.Enabled:=true;
          qrshp26.Enabled:=true;
          qrshp61.Enabled:=true;
          qrshp62.Enabled:=true;
          qrshp63.Enabled:=true;
          QRLabel8.Enabled:=true;
        end;

      cqsymc.Caption := pub_yymc + '长期输液计划执行单';
      DM_data.qry_pub.Close;
      DM_data.qry_pub.SQL.text:='select * from sys_kscwsz where bqdm='+''''+pub_bqdm+''''+' and bcbh='+''''+trim(frm_yzinput.sp_jbxx.fieldbyname( 'bch' ).asstring)+'''';
      DM_data.qry_pub.Open;

      cqsyxm.Caption := '姓名:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxm' ).asstring;
      cqsybch.Caption := '病床号:' + Trim(DM_data.qry_pub.FieldByName('yybch').asstring);
      cqsyxb.Caption := '性别:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxb' ).asstring;
      cqsynl.Caption := '年龄:' + trim( frm_yzinput.sp_jbxx.fieldbyname( 'brnl' ).asstring );
      cqsyn.Caption := FormatDateTime( 'yyyy', frm_func.curr_date ) + '年';
      cqsyxmxm.Enabled:=True;
      cqsybchbch.Enabled:=True;
      cqsykh.Enabled:=True;
      cqsyxmxm.Caption := '姓名:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxm' ).asstring;
      cqsybchbch.Caption := '病床号:' + Trim(DM_data.qry_pub.FieldByName('yybch').asstring);
      cqsykh.Caption := '卡号:' + frm_yzinput.sp_jbxx.fieldbyname( 'tmh' ).asstring;
      qckrpcqsy.Preview;
      end;
     end;
  end;
    frm_yzinput.sp_zxjl_cq_dy.Filtered := False;
  frm_yzinput.sp_zxjl_cq_dy.Filter := v_Filter;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := True;

end;

procedure Tfrm_zxdxd.pro_xd_cq_zs2;
var kdrq,yzid:string;
    i, y, j, count, x,hs,n: Integer;
    aControl: TControl;
    v_Filter:string;
begin
  v_Filter:=frm_yzinput.sp_zxjl_cq_dy.Filter;
  yzid:= frm_yzinput.sp_zxjl_cq_dy.FieldByName('id').AsString;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := False;
  frm_yzinput.sp_zxjl_cq_dy.Filter := 'id='+yzid;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := True;
  hs:=StrToInt(ComboBox1.Text)-1;
  if not frm_yzinput.sp_zxjl_cq_dy.IsEmpty then
  begin
    frm_yzinput.sp_zxjl_cq_dy.First;
    if frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs mod 8 <> 0 then
      y := trunc( (frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs) / 8 ) + 1
    else
      y := trunc( (frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs) / 8 );
    count := frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs;
    for I := 1 to y do
    begin
      for j := 1 to 8 do
      begin
        if count < i * 8 then
        begin
          if j > ( 8 - ( y * 8 - count ) ) then
          begin
            aControl := qrbndcqzl.FindChildControl( 'cqzlksrq' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            aControl := qrbndcqzl.FindChildControl( 'cqzlkdys' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            qrbndcqzl.FindChildControl( 'QRImagezl' + IntToStr( j ) ).enabled := false;
          //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel( qrbndcqzl.FindChildControl( 'cqzlypyf' + IntToStr( j - 1 ) ) ).Caption := '';
            //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
            TQRLabel( qrbndcqzl.FindChildControl( 'cqzlxmmc' + IntToStr( j - 1 ) ) ).caption := '';
          end
          else
          begin
            if (i=1) and (j<hs+1) then
            begin
            aControl := qrbndcqzl.FindChildControl( 'cqzlksrq' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            aControl := qrbndcqzl.FindChildControl( 'cqzlkdys' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            qrbndcqzl.FindChildControl( 'QRImagezl' + IntToStr( j ) ).enabled := false;
          //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel( qrbndcqzl.FindChildControl( 'cqzlypyf' + IntToStr( j - 1 ) ) ).Caption := '';
            //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
            TQRLabel( qrbndcqzl.FindChildControl( 'cqzlxmmc' + IntToStr( j - 1 ) ) ).caption := '';
            end
            else
            begin
            aControl := qrbndcqzl.FindChildControl( 'cqzlksrq' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ksrq' ).AsString;
            aControl := qrbndcqzl.FindChildControl( 'cqzlkdys' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;
            if frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
            begin
              x := ( length( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
              qrbndcqzl.FindChildControl( 'QRImagezl' + IntToStr( j ) ).enabled := true;
              qrbndcqzl.FindChildControl( 'QRImagezl' + IntToStr( j ) ).Top := TQRLabel( qrbndcqzl.FindChildControl( 'cqzlxmmc' + IntToStr( j - 1 ) ) ).top;
              qrbndcqzl.FindChildControl( 'QRImagezl' + IntToStr( j ) ).left := qrbndcqzl.FindChildControl( 'cqzlypyf' + IntToStr( j - 1 ) ).left - 20;
              qrbndcqzl.FindChildControl( 'QRImagezl' + IntToStr( j ) ).height := 30;
              TQRLabel( qrbndcqzl.FindChildControl( 'cqzlypyf' + IntToStr( j - 1 ) ) ).Caption := trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
              TQRLabel( qrbndcqzl.FindChildControl( 'cqzlxmmc' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
              //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end
            else
            begin
              qrbndcqzl.FindChildControl( 'QRImagezl' + IntToStr( j ) ).enabled := false;
              //qrbndcqzl.FindChildControl( 'cqzlxmmc' + IntToStr( j - 1 ) ).Width := 235;
              TQRLabel( qrbndcqzl.FindChildControl( 'cqzlypyf' + IntToStr( j - 1 ) ) ).Caption := '';
              TQRLabel( qrbndcqzl.FindChildControl( 'cqzlxmmc' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
             // TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end;
            frm_yzinput.sp_zxjl_cq_dy.Next;
            end;
          end;
        end
        else
        begin

          if (i=1) and (j<hs+1) then
          begin
            aControl := qrbndcqzl.FindChildControl( 'cqzlksrq' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            aControl := qrbndcqzl.FindChildControl( 'cqzlkdys' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            qrbndcqzl.FindChildControl( 'QRImagezl' + IntToStr( j ) ).enabled := false;
          //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel( qrbndcqzl.FindChildControl( 'cqzlypyf' + IntToStr( j - 1 ) ) ).Caption := '';
            //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
            TQRLabel( qrbndcqzl.FindChildControl( 'cqzlxmmc' + IntToStr( j - 1 ) ) ).caption := '';
          end
          else
          begin
          aControl := qrbndcqzl.FindChildControl( 'cqzlksrq' + IntToStr( j - 1 ) );
          if aControl is TQRLabel then
            TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ksrq' ).asstring;
          aControl := qrbndcqzl.FindChildControl( 'cqzlkdys' + IntToStr( j - 1 ) );
          if aControl is TQRLabel then
            TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;
          if frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
          begin
            x := ( length( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
            qrbndcqzl.FindChildControl( 'QRImagezl' + IntToStr( j ) ).enabled := true;
            qrbndcqzl.FindChildControl( 'QRImagezl' + IntToStr( j ) ).Top := TQRLabel( qrbndcqzl.FindChildControl( 'cqzlxmmc' + IntToStr( j - 1 ) ) ).top;
            qrbndcqzl.FindChildControl( 'QRImagezl' + IntToStr( j ) ).left := qrbndcqzl.FindChildControl( 'cqzlypyf' + IntToStr( j - 1 ) ).left - 20;
            qrbndcqzl.FindChildControl( 'QRImagezl' + IntToStr( j ) ).height := 30;
            TQRLabel( qrbndcqzl.FindChildControl( 'cqzlypyf' + IntToStr( j - 1 ) ) ).Caption := trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
            TQRLabel( qrbndcqzl.FindChildControl( 'cqzlxmmc' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
          //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
          end
          else
          begin
            qrbndcqzl.FindChildControl( 'QRImagezl' + IntToStr( j ) ).enabled := false;
            //qrbndcqzl.FindChildControl( 'cqzlxmmc' + IntToStr( j - 1 ) ).Width := 235;
            TQRLabel( qrbndcqzl.FindChildControl( 'cqzlypyf' + IntToStr( j - 1 ) ) ).Caption := '';
            TQRLabel( qrbndcqzl.FindChildControl( 'cqzlxmmc' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
          //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
          end;
          frm_yzinput.sp_zxjl_cq_dy.Next;
          end;
        end;
      end;
      if i=1 then       
      begin
//      QRBand4.Enabled:=false;
//      QRLabel2.Enabled:=false;
//      QRLabel3.Enabled:=false;  
//      QRLabel20.Enabled:=false;  
//      QRLabel21.Enabled:=false;  
//      QRLabel26.Enabled:=false;  
//      ny.Enabled:=false;  
//      QRLabel1.Enabled:=false;
//      QRLabel2.Enabled:=false;
//      QRLabel3.Enabled:=false;  
//      QRLabel7.Enabled:=false; 
//      QRLabel57.Enabled:=false;  
//      QRLabel61.Enabled:=false;

                          //'性别:' + sp_jbxx.fieldbyname( 'brxb' ).asstring +'      '+
                          //'年龄:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
      //QuickRep3.Prepare;
      //QRLabel57.Enabled:=false;  

//      for n := 175 to 195 do
//      begin
//        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;          
//      end;
//
//      for n := 197 to 198 do
//      begin
//        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;          
//      end;
//
//
//      for n := 28 to 45 do
//      begin
//        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
//      end;
//
//      for n := 47 to 71 do
//      begin
//        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
//      end;
//
//      for n := 18 to 21 do
//      begin
//        QRBand4.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=false;        
//      end;
//
//       for n := 26 to 26 do
//      begin
//        QRBand4.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=false;           
//      end;
//
//      for n := 28 to 30 do
//      begin
//        QRBand4.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=false;            
//      end;
//
//      for n := 15 to 15 do
//      begin
//        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;         
//      end;
//
//      for n := 18 to 21 do
//      begin
//        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;          
//      end;
//
//      for n := 46 to 46 do
//      begin
//        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
//      end;
//
//      for n := 26 to 27 do
//      begin
//        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
//      end;
//      
//      QuickRep3.Preview;
//      end
      cqzlmc.Caption := pub_yymc + '长期治疗计划执行单';
      DM_data.qry_pub.Close;
      DM_data.qry_pub.SQL.text:='select * from sys_kscwsz where bqdm='+''''+pub_bqdm+''''+' and bcbh='+''''+trim(frm_yzinput.sp_jbxx.fieldbyname( 'bch' ).asstring)+'''';
      DM_data.qry_pub.Open;

      cqzlxm.Caption := '姓名:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxm' ).asstring;
      cqzlbch.Caption := '病床号:' + Trim(DM_data.qry_pub.FieldByName('yybch').asstring);
      cqzlxb.Caption := '性别:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxb' ).asstring;
      cqzlnl.Caption := '年龄:' + trim( frm_yzinput.sp_jbxx.fieldbyname( 'brnl' ).asstring );
      cqzln.Caption := FormatDateTime( 'yyyy', frm_func.curr_date ) + '年';
      cqzlxmxm.Enabled:=False;
      cqzlbchbch.Enabled:=False;
      cqzlkhkh.Enabled:=False;
      qckrpcqzl.Preview
      end
      else
      begin
//
////    QRBand4.Enabled:=True;
//      QRLabel2.Enabled:=true;  
//      QRLabel3.Enabled:=true;  
//      QRLabel20.Enabled:=true;  
//      QRLabel21.Enabled:=true;
//      QRLabel26.Enabled:=true;  
//      ny.Enabled:=true;  
//      QRLabel1.Enabled:=true;  
//      QRLabel2.Enabled:=true;
//      QRLabel3.Enabled:=true;  
//      QRLabel7.Enabled:=true;
//      QRLabel57.Enabled:=true;  
//      QRLabel61.Enabled:=true;  
//
//                          //'性别:' + sp_jbxx.fieldbyname( 'brxb' ).asstring +'      '+
//                          //'年龄:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
//      //QuickRep3.Prepare;
//      QRLabel57.Enabled:=true;  
//
//      for n := 175 to 195 do
//      begin
//        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;          
//      end;
//
//      for n := 197 to 198 do
//      begin
//        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;          
//      end;
//
//
//      for n := 28 to 45 do
//      begin
//        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;
//      end;
//
//      for n := 47 to 71 do
//      begin
//        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;          
//      end;
//
//      for n := 18 to 21 do
//      begin
//        QRBand4.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=true;        
//      end;
//
//       for n := 26 to 26 do
//      begin
//        QRBand4.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=true;           
//      end;
//
//      for n := 28 to 30 do
//      begin
//        QRBand4.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=true;
//      end;
//
//      for n := 15 to 15 do
//      begin
//        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;         
//      end;
//
//      for n := 18 to 21 do
//      begin
//        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;          
//      end;
//
//      for n := 46 to 46 do
//      begin
//        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;          
//      end;
//
//      for n := 26 to 27 do
//      begin
//        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;
//      end;

      cqzlmc.Caption := pub_yymc + '长期治疗计划执行单';
      DM_data.qry_pub.Close;
      DM_data.qry_pub.SQL.text:='select * from sys_kscwsz where bqdm='+''''+pub_bqdm+''''+' and bcbh='+''''+trim(frm_yzinput.sp_jbxx.fieldbyname( 'bch' ).asstring)+'''';
      DM_data.qry_pub.Open;

      cqzlxm.Caption := '姓名:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxm' ).asstring;
      cqzlbch.Caption := '病床号:' + Trim(DM_data.qry_pub.FieldByName('yybch').asstring);
      cqzlxb.Caption := '性别:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxb' ).asstring;
      cqzlnl.Caption := '年龄:' + trim( frm_yzinput.sp_jbxx.fieldbyname( 'brnl' ).asstring );
      cqzln.Caption := FormatDateTime( 'yyyy', frm_func.curr_date ) + '年';
      cqzlxmxm.Enabled:=True;
      cqsybchbch.Enabled:=True;
      cqsykh.Enabled:=True;
      cqsyxmxm.Caption := '姓名:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxm' ).asstring;
      cqzlbchbch.Caption := '病床号:' + Trim(DM_data.qry_pub.FieldByName('yybch').asstring);
      cqzlkhkh.Caption := '卡号:' + frm_yzinput.sp_jbxx.fieldbyname( 'tmh' ).asstring;
      qckrpcqzl.Preview;
      end;
     end;
  end;
    frm_yzinput.sp_zxjl_cq_dy.Filtered := False;
  frm_yzinput.sp_zxjl_cq_dy.Filter := v_Filter;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := True;

end;

procedure Tfrm_zxdxd.pro_xd_cq_zs3;
var kdrq,yzid:string;
    i, y, j, count, x,hs,n: Integer;
    aControl: TControl;
    v_Filter:string;
begin
  v_Filter:=frm_yzinput.sp_zxjl_cq_dy.Filter;
  yzid:= frm_yzinput.sp_zxjl_cq_dy.FieldByName('id').AsString;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := False;
  frm_yzinput.sp_zxjl_cq_dy.Filter := 'id='+yzid;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := True;
  hs:=StrToInt(ComboBox1.Text)-1;
  if not frm_yzinput.sp_zxjl_cq_dy.IsEmpty then
  begin
    frm_yzinput.sp_zxjl_cq_dy.First;
    if frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs mod 8 <> 0 then
      y := trunc( (frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs) / 8 ) + 1
    else
      y := trunc( (frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs) / 8 );
    count := frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs;
    for I := 1 to y do
    begin
      for j := 1 to 8 do
      begin
        if count < i * 8 then
        begin
          if j > ( 8 - ( y * 8 - count ) ) then
          begin
            aControl := qrbndcqzs.FindChildControl( 'cqzsksrq' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            aControl := qrbndcqzs.FindChildControl( 'cqzskdys' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            qrbndcqzs.FindChildControl( 'QRImagezs' + IntToStr( j ) ).enabled := false;
          //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel( qrbndcqzs.FindChildControl( 'cqzsypyf' + IntToStr( j - 1 ) ) ).Caption := '';
            //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
            TQRLabel( qrbndcqzs.FindChildControl( 'cqzsxmmc' + IntToStr( j - 1 ) ) ).caption := '';
          end
          else
          begin
            if (i=1) and (j<hs+1) then
            begin
            aControl := qrbndcqzs.FindChildControl( 'cqzsksrq' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            aControl := qrbndcqzs.FindChildControl( 'cqzskdys' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            qrbndcqzs.FindChildControl( 'QRImagezs' + IntToStr( j ) ).enabled := false;
          //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel( qrbndcqzs.FindChildControl( 'cqzsypyf' + IntToStr( j - 1 ) ) ).Caption := '';
            //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
            TQRLabel( qrbndcqzs.FindChildControl( 'cqzsxmmc' + IntToStr( j - 1 ) ) ).caption := '';
            end
            else
            begin
            aControl := qrbndcqzs.FindChildControl( 'cqzsksrq' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ksrq' ).AsString;
            aControl := qrbndcqzs.FindChildControl( 'cqzskdys' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;
            if frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
            begin
              x := ( length( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
              qrbndcqzs.FindChildControl( 'QRImagezs' + IntToStr( j ) ).enabled := true;
              qrbndcqzs.FindChildControl( 'QRImagezs' + IntToStr( j ) ).Top := TQRLabel( qrbndcqzs.FindChildControl( 'cqzsxmmc' + IntToStr( j - 1 ) ) ).top;
              qrbndcqzs.FindChildControl( 'QRImagezs' + IntToStr( j ) ).left := qrbndcqzs.FindChildControl( 'cqzsypyf' + IntToStr( j - 1 ) ).left - 20;
              qrbndcqzs.FindChildControl( 'QRImagezs' + IntToStr( j ) ).height := 30;
              TQRLabel( qrbndcqzs.FindChildControl( 'cqzsypyf' + IntToStr( j - 1 ) ) ).Caption := trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
              TQRLabel( qrbndcqzs.FindChildControl( 'cqzsxmmc' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
              //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end
            else
            begin
              qrbndcqzs.FindChildControl( 'QRImagezs' + IntToStr( j ) ).enabled := false;
              //qrbndcqzs.FindChildControl( 'cqzsxmmc' + IntToStr( j - 1 ) ).Width := 235;
              TQRLabel( qrbndcqzs.FindChildControl( 'cqzsypyf' + IntToStr( j - 1 ) ) ).Caption := '';
              TQRLabel( qrbndcqzs.FindChildControl( 'cqzsxmmc' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
             // TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end;
            frm_yzinput.sp_zxjl_cq_dy.Next;
            end;
          end;
        end
        else
        begin

          if (i=1) and (j<hs+1) then
          begin
            aControl := qrbndcqzs.FindChildControl( 'cqzsksrq' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            aControl := qrbndcqzs.FindChildControl( 'cqzskdys' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            qrbndcqzs.FindChildControl( 'QRImagezs' + IntToStr( j ) ).enabled := false;
          //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel( qrbndcqzs.FindChildControl( 'cqzsypyf' + IntToStr( j - 1 ) ) ).Caption := '';
            //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
            TQRLabel( qrbndcqzs.FindChildControl( 'cqzsxmmc' + IntToStr( j - 1 ) ) ).caption := '';
          end
          else
          begin
          aControl := qrbndcqzs.FindChildControl( 'cqzsksrq' + IntToStr( j - 1 ) );
          if aControl is TQRLabel then
            TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ksrq' ).asstring;
          aControl := qrbndcqzs.FindChildControl( 'cqzskdys' + IntToStr( j - 1 ) );
          if aControl is TQRLabel then
            TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;
          if frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
          begin
            x := ( length( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
            qrbndcqzs.FindChildControl( 'QRImagezs' + IntToStr( j ) ).enabled := true;
            qrbndcqzs.FindChildControl( 'QRImagezs' + IntToStr( j ) ).Top := TQRLabel( qrbndcqzs.FindChildControl( 'cqzsxmmc' + IntToStr( j - 1 ) ) ).top;
            qrbndcqzs.FindChildControl( 'QRImagezs' + IntToStr( j ) ).left := qrbndcqzs.FindChildControl( 'cqzsypyf' + IntToStr( j - 1 ) ).left - 20;
            qrbndcqzs.FindChildControl( 'QRImagezs' + IntToStr( j ) ).height := 30;
            TQRLabel( qrbndcqzs.FindChildControl( 'cqzsypyf' + IntToStr( j - 1 ) ) ).Caption := trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
            TQRLabel( qrbndcqzs.FindChildControl( 'cqzsxmmc' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
          //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
          end
          else
          begin
            qrbndcqzs.FindChildControl( 'QRImagezs' + IntToStr( j ) ).enabled := false;
            //qrbndcqzs.FindChildControl( 'cqzsxmmc' + IntToStr( j - 1 ) ).Width := 235;
            TQRLabel( qrbndcqzs.FindChildControl( 'cqzsypyf' + IntToStr( j - 1 ) ) ).Caption := '';
            TQRLabel( qrbndcqzs.FindChildControl( 'cqzsxmmc' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
          //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
          end;
          frm_yzinput.sp_zxjl_cq_dy.Next;
          end;
        end;
      end;
      if i=1 then
      begin

//       if pub_yydm = '0260'  then  //井研处理
//        begin
//          for n := 64 to 67 do
//          begin
//          qrbndcqsy.FindChildControl( 'QRShp' + IntToStr( n ) ).Enabled:=false;
//          end;
//          for n := 69 to 97 do
//          begin
//          qrbndcqsy.FindChildControl( 'QRShp' + IntToStr( n ) ).Enabled:=false;
//          end;
//          cqsybch.Enabled:=false;
//          cqsymc.Enabled:=false;
//          cqsyn.Enabled:=false;
//          cqsynl.Enabled:=false;
//          cqsyxb.Enabled:=false;
//          cqsyxm.Enabled:=false;
//          QRLabel79.Enabled:=false;
//          QRLabel80.Enabled:=false;
//          QRLabel84.Enabled:=false;
//          QRLabel85.Enabled:=false;
//          QRLabel86.Enabled:=false;
//          QRLabel87.Enabled:=false;
//          qrshp26.Enabled:=false;
//          qrshp61.Enabled:=false;
//          qrshp62.Enabled:=false;
//          qrshp63.Enabled:=false;
//          QRLabel8.Enabled:=false;
//        end;

          if pub_yydm = '0260'  then  //井研处理
          begin
            for n := 156 to 173 do
            begin
             qrbndcqzs.FindChildControl( 'qrshp' + IntToStr( n ) ).Enabled:=false;
            end;
            for n := 175 to 185 do
            begin
             qrbndcqzs.FindChildControl( 'qrshp' + IntToStr( n ) ).Enabled:=false;
            end;
            QRcqzsbch.Enabled := False;
            QRcqzsmc.Enabled := False;
            QRcqzsn.Enabled := False;
            QRcqzsnl.Enabled := False;
            QRcqzsxb.Enabled := False;
            QRcqzsxm.Enabled := False;

            for n := 119 to 124 do
            begin
              qrbnd9.FindChildControl( 'QRLabel' + IntToStr( n ) ).Enabled:=false;
            end;
            qrshp127.Enabled := False;
            qrshp143.Enabled := False;
            qrshp153.Enabled := False;
            qrshp154.Enabled := False;
            qrshp155.Enabled := False;
          end;
//        QRBand4.Enabled:=false;
//        QRLabel2.Enabled:=false;
//        QRLabel3.Enabled:=false;
//        QRLabel20.Enabled:=false;
//        QRLabel21.Enabled:=false;
//        QRLabel26.Enabled:=false;
//        ny.Enabled:=false;
//        QRLabel1.Enabled:=false;
//        QRLabel2.Enabled:=false;
//        QRLabel3.Enabled:=false;
//        QRLabel7.Enabled:=false;
//        QRLabel57.Enabled:=false;
//        QRLabel61.Enabled:=false;

                          //'性别:' + sp_jbxx.fieldbyname( 'brxb' ).asstring +'      '+
                          //'年龄:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
      //QuickRep3.Prepare;
      //QRLabel57.Enabled:=false;  

//      for n := 175 to 195 do
//      begin
//        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;          
//      end;
//
//      for n := 197 to 198 do
//      begin
//        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;          
//      end;
//
//
//      for n := 28 to 45 do
//      begin
//        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
//      end;
//
//      for n := 47 to 71 do
//      begin
//        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
//      end;
//
//      for n := 18 to 21 do
//      begin
//        QRBand4.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=false;        
//      end;
//
//       for n := 26 to 26 do
//      begin
//        QRBand4.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=false;           
//      end;
//
//      for n := 28 to 30 do
//      begin
//        QRBand4.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=false;            
//      end;
//
//      for n := 15 to 15 do
//      begin
//        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;         
//      end;
//
//      for n := 18 to 21 do
//      begin
//        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;          
//      end;
//
//      for n := 46 to 46 do
//      begin
//        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
//      end;
//
//      for n := 26 to 27 do
//      begin
//        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
//      end;
//      
//      QuickRep3.Preview;
//      end
        QRcqzsmc.Caption := pub_yymc + '长期注射计划执行单';
        DM_data.qry_pub.Close;
        DM_data.qry_pub.SQL.text := 'select * from sys_kscwsz where bqdm=' + '''' + pub_bqdm + '''' + ' and bcbh=' + '''' + trim( frm_yzinput.sp_jbxx.fieldbyname( 'bch' ).asstring ) + '''';
        DM_data.qry_pub.Open;

        QRcqzsxm.Caption := '姓名:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxm' ).asstring;
        QRcqzsbch.Caption := '病床号:' + Trim( DM_data.qry_pub.FieldByName( 'yybch' ).asstring );
        QRcqzsxb.Caption := '性别:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxb' ).asstring;
        QRcqzsnl.Caption := '年龄:' + trim( frm_yzinput.sp_jbxx.fieldbyname( 'brnl' ).asstring );
        QRcqzsn.Caption := FormatDateTime( 'yyyy', frm_func.curr_date ) + '年';

      QRcqzsxmxm.Enabled:=False;
      QRcqzsbchbch.Enabled:=False;
      QRcqzskhkh.Enabled:=False;
      qckrp2.Preview
      end
      else
      begin
       if pub_yydm = '0260'  then  //井研处理
        begin
          for n := 156 to 173 do
          begin
           qrbndcqzs.FindChildControl( 'qrshp' + IntToStr( n ) ).Enabled:=true;
          end;
          for n := 175 to 185 do
          begin
           qrbndcqzs.FindChildControl( 'qrshp' + IntToStr( n ) ).Enabled:=true;
          end;
          QRcqzsbch.Enabled := true;
          QRcqzsmc.Enabled := true;
          QRcqzsn.Enabled := true;
          QRcqzsnl.Enabled := true;
          QRcqzsxb.Enabled := true;
          QRcqzsxm.Enabled := true;

          for n := 119 to 124 do
          begin
            qrbnd9.FindChildControl( 'QRLabel' + IntToStr( n ) ).Enabled:=true;
          end;
          qrshp127.Enabled := true;
          qrshp143.Enabled := true;
          qrshp153.Enabled := true;
          qrshp154.Enabled := true;
          qrshp155.Enabled := true;
        end;
//
////    QRBand4.Enabled:=True;
//      QRLabel2.Enabled:=true;  
//      QRLabel3.Enabled:=true;  
//      QRLabel20.Enabled:=true;  
//      QRLabel21.Enabled:=true;
//      QRLabel26.Enabled:=true;  
//      ny.Enabled:=true;  
//      QRLabel1.Enabled:=true;  
//      QRLabel2.Enabled:=true;
//      QRLabel3.Enabled:=true;  
//      QRLabel7.Enabled:=true;
//      QRLabel57.Enabled:=true;  
//      QRLabel61.Enabled:=true;  
//
//                          //'性别:' + sp_jbxx.fieldbyname( 'brxb' ).asstring +'      '+
//                          //'年龄:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
//      //QuickRep3.Prepare;
//      QRLabel57.Enabled:=true;  
//
//      for n := 175 to 195 do
//      begin
//        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;          
//      end;
//
//      for n := 197 to 198 do
//      begin
//        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;          
//      end;
//
//
//      for n := 28 to 45 do
//      begin
//        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;
//      end;
//
//      for n := 47 to 71 do
//      begin
//        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;          
//      end;
//
//      for n := 18 to 21 do
//      begin
//        QRBand4.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=true;        
//      end;
//
//       for n := 26 to 26 do
//      begin
//        QRBand4.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=true;           
//      end;
//
//      for n := 28 to 30 do
//      begin
//        QRBand4.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=true;
//      end;
//
//      for n := 15 to 15 do
//      begin
//        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;         
//      end;
//
//      for n := 18 to 21 do
//      begin
//        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;          
//      end;
//
//      for n := 46 to 46 do
//      begin
//        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;          
//      end;
//
//      for n := 26 to 27 do
//      begin
//        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;
//      end;

      QRcqzsmc.Caption := pub_yymc + '长期注射计划执行单';
      DM_data.qry_pub.Close;
      DM_data.qry_pub.SQL.text:='select * from sys_kscwsz where bqdm='+''''+pub_bqdm+''''+' and bcbh='+''''+trim(frm_yzinput.sp_jbxx.fieldbyname( 'bch' ).asstring)+'''';
      DM_data.qry_pub.Open;

        QRcqzsxm.Caption := '姓名:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxm' ).asstring;
        QRcqzsbch.Caption := '病床号:' + Trim( DM_data.qry_pub.FieldByName( 'yybch' ).asstring );
        QRcqzsxb.Caption := '性别:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxb' ).asstring;
        QRcqzsnl.Caption := '年龄:' + trim( frm_yzinput.sp_jbxx.fieldbyname( 'brnl' ).asstring );
        QRcqzsn.Caption := FormatDateTime( 'yyyy', frm_func.curr_date ) + '年';
      QRcqzsxmxm.Enabled:=True;
      QRcqzsbchbch.Enabled:=True;
      QRcqzskhkh.Enabled:=True;
      QRcqzsxmxm.Caption:= '姓名:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxm' ).asstring;
      QRcqzsbchbch.Caption:= '病床号:' + Trim( DM_data.qry_pub.FieldByName( 'yybch' ).asstring );
      QRcqzskhkh.Caption:= '卡号:' + Trim( frm_yzinput.sp_jbxx.fieldbyname( 'tmh' ).asstring  );
      qckrp2.Preview;
      end;
     end;
  end;
    frm_yzinput.sp_zxjl_cq_dy.Filtered := False;
  frm_yzinput.sp_zxjl_cq_dy.Filter := v_Filter;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := True;

end;

{-------------------------------------------------------------------------------
  过程名:    Tfrm_zxdxd.pro_xd_qt_zs1
  作者:      yansghuai
  日期:      2016.01.21
  参数:      无
  返回值:    无
-------------------------------------------------------------------------------}
procedure Tfrm_zxdxd.pro_xd_qt_zs1;
var
  i: Integer;
  hs: Integer;
  x: Integer;
  n: Integer;
  y: Integer;
  j: Integer;
  count: Integer;
  aControl: TControl;
begin
  kdrq := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ksrq' ).AsString;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := False;
  frm_yzinput.sp_zxjl_cq_dy.Filter := '(yytj like ''%静滴%'' and  tzrq=null and ksrq>='+''''+kdrq+''''+')'
     +' or (yytj=''静脉泵入'' and  tzrq=null and ksrq>='+''''
     +kdrq+''''+')';;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := True;
  hs:=StrToInt(ComboBox1.Text)-1;
  //hs:=StrToInt(ComboBox1.Text); //行数不减
  if not frm_yzinput.sp_zxjl_cq_dy.IsEmpty then
  begin
    frm_yzinput.sp_zxjl_cq_dy.First;
    if frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs mod 8 <> 0 then
      y := trunc( (frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs) / 8 ) + 1
    else
      y := trunc( (frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs) / 8 );
    count := frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs;
    for I := 1 to y do
    begin
      for j := 1 to 8 do
      begin
        if count < i * 8 then
        begin
          if j > ( 8 - ( y * 8 - count ) ) then
          begin
            aControl := qrbndcqsy.FindChildControl( 'cqsyksrq' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            aControl := qrbndcqsy.FindChildControl( 'cqsykdys' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            qrbndcqsy.FindChildControl( 'QRImagesy' + IntToStr( j ) ).enabled := false;
          //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel( qrbndcqsy.FindChildControl( 'cqsyypyf' + IntToStr( j - 1 ) ) ).Caption := '';
            //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
            TQRLabel( qrbndcqsy.FindChildControl( 'cqsyxmmc' + IntToStr( j - 1 ) ) ).caption := '';
          end
          else
          begin
            if (i=1) and (j<hs+1) then
            begin
            aControl := qrbndcqsy.FindChildControl( 'cqsyksrq' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            aControl := qrbndcqsy.FindChildControl( 'cqsykdys' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            qrbndcqsy.FindChildControl( 'QRImagesy' + IntToStr( j ) ).enabled := false;
          //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel( qrbndcqsy.FindChildControl( 'cqsyypyf' + IntToStr( j - 1 ) ) ).Caption := '';
            //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
            TQRLabel( qrbndcqsy.FindChildControl( 'cqsyxmmc' + IntToStr( j - 1 ) ) ).caption := '';
            end
            else
            begin
            aControl := qrbndcqsy.FindChildControl( 'cqsyksrq' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ksrq' ).AsString;
            aControl := qrbndcqsy.FindChildControl( 'cqsykdys' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;
            if frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
            begin
              x := ( length( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
              qrbndcqsy.FindChildControl( 'QRImagesy' + IntToStr( j ) ).enabled := true;
              qrbndcqsy.FindChildControl( 'QRImagesy' + IntToStr( j ) ).Top := TQRLabel( qrbndcqsy.FindChildControl( 'cqsyxmmc' + IntToStr( j - 1 ) ) ).top;
              qrbndcqsy.FindChildControl( 'QRImagesy' + IntToStr( j ) ).left := qrbndcqsy.FindChildControl( 'cqsyypyf' + IntToStr( j - 1 ) ).left - 20;
              qrbndcqsy.FindChildControl( 'QRImagesy' + IntToStr( j ) ).height := 30;
              TQRLabel( qrbndcqsy.FindChildControl( 'cqsyypyf' + IntToStr( j - 1 ) ) ).Caption := trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
              TQRLabel( qrbndcqsy.FindChildControl( 'cqsyxmmc' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
              //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end
            else
            begin
              qrbndcqsy.FindChildControl( 'QRImagesy' + IntToStr( j ) ).enabled := false;
              //qrbndcqsy.FindChildControl( 'cqsyxmmc' + IntToStr( j - 1 ) ).Width := 235;
              TQRLabel( qrbndcqsy.FindChildControl( 'cqsyypyf' + IntToStr( j - 1 ) ) ).Caption := '';
              TQRLabel( qrbndcqsy.FindChildControl( 'cqsyxmmc' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
             // TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end;
            frm_yzinput.sp_zxjl_cq_dy.Next;
            end;
          end;
        end
        else
        begin

          if (i=1) and (j<hs+1) then
          begin
            aControl := qrbndcqsy.FindChildControl( 'cqsyksrq' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            aControl := qrbndcqsy.FindChildControl( 'cqsykdys' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            qrbndcqsy.FindChildControl( 'QRImagesy' + IntToStr( j ) ).enabled := false;
          //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel( qrbndcqsy.FindChildControl( 'cqsyypyf' + IntToStr( j - 1 ) ) ).Caption := '';
            //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
            TQRLabel( qrbndcqsy.FindChildControl( 'cqsyxmmc' + IntToStr( j - 1 ) ) ).caption := '';
          end
          else
          begin
          aControl := qrbndcqsy.FindChildControl( 'cqsyksrq' + IntToStr( j - 1 ) );
          if aControl is TQRLabel then
            TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ksrq' ).asstring;
          aControl := qrbndcqsy.FindChildControl( 'cqsykdys' + IntToStr( j - 1 ) );
          if aControl is TQRLabel then
            TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;
          if frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
          begin
            x := ( length( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
            qrbndcqsy.FindChildControl( 'QRImagesy' + IntToStr( j ) ).enabled := true;
            qrbndcqsy.FindChildControl( 'QRImagesy' + IntToStr( j ) ).Top := TQRLabel( qrbndcqsy.FindChildControl( 'cqsyxmmc' + IntToStr( j - 1 ) ) ).top;
            qrbndcqsy.FindChildControl( 'QRImagesy' + IntToStr( j ) ).left := qrbndcqsy.FindChildControl( 'cqsyypyf' + IntToStr( j - 1 ) ).left - 20;
            qrbndcqsy.FindChildControl( 'QRImagesy' + IntToStr( j ) ).height := 30;
            TQRLabel( qrbndcqsy.FindChildControl( 'cqsyypyf' + IntToStr( j - 1 ) ) ).Caption := trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
            TQRLabel( qrbndcqsy.FindChildControl( 'cqsyxmmc' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
          //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
          end
          else
          begin
            qrbndcqsy.FindChildControl( 'QRImagesy' + IntToStr( j ) ).enabled := false;
            //qrbndcqsy.FindChildControl( 'cqsyxmmc' + IntToStr( j - 1 ) ).Width := 235;
            TQRLabel( qrbndcqsy.FindChildControl( 'cqsyypyf' + IntToStr( j - 1 ) ) ).Caption := '';
            TQRLabel( qrbndcqsy.FindChildControl( 'cqsyxmmc' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
          //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
          end;
          frm_yzinput.sp_zxjl_cq_dy.Next;
          end;
        end;
      end;
      if i=1 then       
      begin
//      QRBand4.Enabled:=false;
//20130419
//      QRLabel2.Enabled:=false;
//      QRLabel3.Enabled:=false;
//      QRLabel20.Enabled:=false;
//      QRLabel21.Enabled:=false;
//      QRLabel26.Enabled:=false;
//      ny.Enabled:=false;
//      QRLabel1.Enabled:=false;
//      QRLabel2.Enabled:=false;
//      QRLabel3.Enabled:=false;
//      QRLabel7.Enabled:=false;
//      QRLabel57.Enabled:=false;
//      QRLabel61.Enabled:=false;
//--------------
                          //'性别:' + sp_jbxx.fieldbyname( 'brxb' ).asstring +'      '+
                          //'年龄:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
      //QuickRep3.Prepare;
      //20130419
//      QRLabel57.Enabled:=false;
//
//      for n := 175 to 195 do
//      begin
//        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
//      end;
//
//      for n := 197 to 198 do
//      begin
//        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
//      end;
//
//
//      for n := 28 to 45 do
//      begin
//        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
//      end;
//
//      for n := 47 to 71 do
//      begin
//        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
//      end;
//
//      for n := 18 to 21 do
//      begin
//        QRBand4.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=false;        
//      end;
//
//       for n := 26 to 26 do
//      begin
//        QRBand4.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=false;
//      end;
//
//      for n := 28 to 30 do
//      begin
//        QRBand4.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=false;            
//      end;
//
//      for n := 15 to 15 do
//      begin
//        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
//      end;
//
//      for n := 18 to 21 do
//      begin
//        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
//      end;
//
//      for n := 46 to 46 do
//      begin
//        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
//      end;
//
//      for n := 26 to 27 do
//      begin
//        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;          
//      end;
      for n := 64 to 67 do
      begin
        qrbndcqsy.FindChildControl( 'QRShp' + IntToStr( n ) ).Enabled:=false;
      end;
      for n := 69 to 97 do
      begin
        qrbndcqsy.FindChildControl( 'QRShp' + IntToStr( n ) ).Enabled:=false;
      end;
        cqsybch.Enabled:=false;
        cqsymc.Enabled:=false;
        cqsyn.Enabled:=false;
        cqsynl.Enabled:=false;
        cqsyxb.Enabled:=false;
        cqsyxm.Enabled:=false;
        QRLabel79.Enabled:=false;
        QRLabel80.Enabled:=false;
        QRLabel84.Enabled:=false;
        QRLabel85.Enabled:=false;
        QRLabel86.Enabled:=false;
        QRLabel87.Enabled:=false;
        qrshp26.Enabled:=false;
        qrshp61.Enabled:=false;
        qrshp62.Enabled:=false;
        qrshp63.Enabled:=false;
        QRLabel8.Enabled:=false;
      cqsymc.Caption := pub_yymc + '长期输液计划执行单';
      DM_data.qry_pub.Close;
      DM_data.qry_pub.SQL.text:='select * from sys_kscwsz where bqdm='+''''+pub_bqdm+''''+' and bcbh='+''''+trim(frm_yzinput.sp_jbxx.fieldbyname( 'bch' ).asstring)+'''';
      DM_data.qry_pub.Open;

      cqsyxm.Caption := '姓名:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxm' ).asstring;
      cqsybch.Caption := '病床号:' + Trim(DM_data.qry_pub.FieldByName('yybch').asstring);
      cqsyxb.Caption := '性别:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxb' ).asstring;
      cqsynl.Caption := '年龄:' + trim( frm_yzinput.sp_jbxx.fieldbyname( 'brnl' ).asstring );
      cqsyn.Caption := FormatDateTime( 'yyyy', frm_func.curr_date ) + '年';
      cqsyxmxm.Enabled:=False;
      cqsybchbch.Enabled:=False;
      cqsykh.Enabled:=False;
      qckrpcqsy.Preview
      end
      else
      begin
//
////    QRBand4.Enabled:=True;
//      QRLabel2.Enabled:=true;
//      QRLabel3.Enabled:=true;
//      QRLabel20.Enabled:=true;
//      QRLabel21.Enabled:=true;
//      QRLabel26.Enabled:=true;
//      ny.Enabled:=true;
//      QRLabel1.Enabled:=true;
//      QRLabel2.Enabled:=true;
//      QRLabel3.Enabled:=true;
//      QRLabel7.Enabled:=true;
//      QRLabel57.Enabled:=true;
//      QRLabel61.Enabled:=true;
//
//                          //'性别:' + sp_jbxx.fieldbyname( 'brxb' ).asstring +'      '+
//                          //'年龄:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
//      //QuickRep3.Prepare;
//      QRLabel57.Enabled:=true;  
//
//      for n := 175 to 195 do
//      begin
//        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;
//      end;
//
//      for n := 197 to 198 do
//      begin
//        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;
//      end;
//
//
//      for n := 28 to 45 do
//      begin
//        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;
//      end;
//
//      for n := 47 to 71 do
//      begin
//        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;
//      end;
//
//      for n := 18 to 21 do
//      begin
//        QRBand4.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=true;
//      end;
//
//       for n := 26 to 26 do
//      begin
//        QRBand4.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=true;           
//      end;
//
//      for n := 28 to 30 do
//      begin
//        QRBand4.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=true;
//      end;
//
//      for n := 15 to 15 do
//      begin
//        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;
//      end;
//
//      for n := 18 to 21 do
//      begin
//        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;          
//      end;
//
//      for n := 46 to 46 do
//      begin
//        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;
//      end;
//
//      for n := 26 to 27 do
//      begin
//        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;
//      end;
   //-------------------------

      for n := 64 to 67 do
      begin
        qrbndcqsy.FindChildControl( 'QRShp' + IntToStr( n ) ).Enabled:=true;
      end;
      for n := 69 to 97 do
      begin
        qrbndcqsy.FindChildControl( 'QRShp' + IntToStr( n ) ).Enabled:=true;
      end;
        cqsybch.Enabled:=true;
        cqsymc.Enabled:=true;
        cqsyn.Enabled:=true;
        cqsynl.Enabled:=true;
        cqsyxb.Enabled:=true;
        cqsyxm.Enabled:=true;
        QRLabel79.Enabled:=true;
        QRLabel80.Enabled:=true;
        QRLabel84.Enabled:=true;
        QRLabel85.Enabled:=true;
        QRLabel86.Enabled:=true;
        QRLabel87.Enabled:=true;
        qrshp26.Enabled:=true;
        qrshp61.Enabled:=true;
        qrshp62.Enabled:=true;
        qrshp63.Enabled:=true;
      QRLabel8.Enabled:=true;
      cqsymc.Caption := pub_yymc + '长期输液计划执行单';
      DM_data.qry_pub.Close;
      DM_data.qry_pub.SQL.text:='select * from sys_kscwsz where bqdm='+''''+pub_bqdm+''''+' and bcbh='+''''+trim(frm_yzinput.sp_jbxx.fieldbyname( 'bch' ).asstring)+'''';
      DM_data.qry_pub.Open;

      cqsyxm.Caption := '姓名:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxm' ).asstring;
      cqsybch.Caption := '病床号:' + Trim(DM_data.qry_pub.FieldByName('yybch').asstring);
      cqsyxb.Caption := '性别:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxb' ).asstring;
      cqsynl.Caption := '年龄:' + trim( frm_yzinput.sp_jbxx.fieldbyname( 'brnl' ).asstring );
      cqsyn.Caption := FormatDateTime( 'yyyy', frm_func.curr_date ) + '年';
      cqsyxmxm.Enabled:=True;
      cqsybchbch.Enabled:=True;
      cqsykh.Enabled:=True;
      cqsyxmxm.Caption := '姓名:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxm' ).asstring;
      cqsybchbch.Caption := '病床号:' + Trim(DM_data.qry_pub.FieldByName('yybch').asstring);
      cqsykh.Caption := '卡号:' + frm_yzinput.sp_jbxx.fieldbyname( 'tmh' ).asstring;
//      QRLabel66.Caption:='姓名:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxm' ).asstring+'      '+
//                          '病床号:' + Trim(DM_data.qry_pub.FieldByName('yybch').asstring)+'      '+
//                          '卡号:' + Trim( frm_yzinput.sp_jbxx.fieldbyname( 'tmh' ).asstring  );
//                          //'性别:' + sp_jbxx.fieldbyname( 'brxb' ).asstring +'      '+
//                          //'年龄:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
//      //QuickRep3.Prepare;
//      QRLabel68.Caption := '审核医生:';
      qckrpcqsy.Preview;
      end;
     end;
  end;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := False;
  frm_yzinput.sp_zxjl_cq_dy.Filter := '(yytj like ''%静滴%'' and  tzrq=null and ksrq>='+''''+kdrq+''''+')'
     +' or (yytj=''静脉泵入'' and  tzrq=null and ksrq>='+''''
     +kdrq+''''+')';;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := True;

end;

procedure Tfrm_zxdxd.pro_xd_qt_zs2;
var
  i: Integer;
  hs: Integer;
  x: Integer;
  n: Integer;
  y: Integer;
  j: Integer;
  count: Integer;
  aControl: TControl;
begin
  kdrq := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ksrq' ).AsString;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := False;
  frm_yzinput.sp_zxjl_cq_dy.Filter := 'lb=''治疗'' and tzrq=null  and ksrq>=' + '''' + kdrq + '''';
  frm_yzinput.sp_zxjl_cq_dy.Filtered := True;

  hs:=StrToInt(ComboBox1.Text)-1;
  if not frm_yzinput.sp_zxjl_cq_dy.IsEmpty then
  begin
    frm_yzinput.sp_zxjl_cq_dy.First;
    if frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs mod 8 <> 0 then
      y := trunc( (frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs) / 8 ) + 1
    else
      y := trunc( (frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs) / 8 );
    count := frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs;
    for I := 1 to y do
    begin
      for j := 1 to 8 do
      begin
        if count < i * 8 then
        begin
          if j > ( 8 - ( y * 8 - count ) ) then
          begin
            aControl := qrbndcqzl.FindChildControl( 'cqzlksrq' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            aControl := qrbndcqzl.FindChildControl( 'cqzlkdys' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            qrbndcqzl.FindChildControl( 'QRImagezl' + IntToStr( j ) ).enabled := false;
          //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel( qrbndcqzl.FindChildControl( 'cqzlypyf' + IntToStr( j - 1 ) ) ).Caption := '';
            //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
            TQRLabel( qrbndcqzl.FindChildControl( 'cqzlxmmc' + IntToStr( j - 1 ) ) ).caption := '';
          end
          else
          begin
            if (i=1) and (j<hs+1) then
            begin
            aControl := qrbndcqzl.FindChildControl( 'cqzlksrq' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            aControl := qrbndcqzl.FindChildControl( 'cqzlkdys' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            qrbndcqzl.FindChildControl( 'QRImagezl' + IntToStr( j ) ).enabled := false;
          //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel( qrbndcqzl.FindChildControl( 'cqzlypyf' + IntToStr( j - 1 ) ) ).Caption := '';
            //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
            TQRLabel( qrbndcqzl.FindChildControl( 'cqzlxmmc' + IntToStr( j - 1 ) ) ).caption := '';
            end
            else
            begin
            aControl := qrbndcqzl.FindChildControl( 'cqzlksrq' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ksrq' ).AsString;
            aControl := qrbndcqzl.FindChildControl( 'cqzlkdys' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;
            if frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
            begin
              x := ( length( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
              qrbndcqzl.FindChildControl( 'QRImagezl' + IntToStr( j ) ).enabled := true;
              qrbndcqzl.FindChildControl( 'QRImagezl' + IntToStr( j ) ).Top := TQRLabel( qrbndcqzl.FindChildControl( 'cqzlxmmc' + IntToStr( j - 1 ) ) ).top;
              qrbndcqzl.FindChildControl( 'QRImagezl' + IntToStr( j ) ).left := qrbndcqzl.FindChildControl( 'cqzlypyf' + IntToStr( j - 1 ) ).left - 20;
              qrbndcqzl.FindChildControl( 'QRImagezl' + IntToStr( j ) ).height := 30;
              TQRLabel( qrbndcqzl.FindChildControl( 'cqzlypyf' + IntToStr( j - 1 ) ) ).Caption := trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
              TQRLabel( qrbndcqzl.FindChildControl( 'cqzlxmmc' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
              //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end
            else
            begin
              qrbndcqzl.FindChildControl( 'QRImagezl' + IntToStr( j ) ).enabled := false;
              //qrbndcqzl.FindChildControl( 'cqzlxmmc' + IntToStr( j - 1 ) ).Width := 235;
              TQRLabel( qrbndcqzl.FindChildControl( 'cqzlypyf' + IntToStr( j - 1 ) ) ).Caption := '';
              TQRLabel( qrbndcqzl.FindChildControl( 'cqzlxmmc' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
             // TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end;
            frm_yzinput.sp_zxjl_cq_dy.Next;
            end;
          end;
        end
        else
        begin

          if (i=1) and (j<hs+1) then
          begin
            aControl := qrbndcqzl.FindChildControl( 'cqzlksrq' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            aControl := qrbndcqzl.FindChildControl( 'cqzlkdys' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            qrbndcqzl.FindChildControl( 'QRImagezl' + IntToStr( j ) ).enabled := false;
          //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel( qrbndcqzl.FindChildControl( 'cqzlypyf' + IntToStr( j - 1 ) ) ).Caption := '';
            //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
            TQRLabel( qrbndcqzl.FindChildControl( 'cqzlxmmc' + IntToStr( j - 1 ) ) ).caption := '';
          end
          else
          begin
          aControl := qrbndcqzl.FindChildControl( 'cqzlksrq' + IntToStr( j - 1 ) );
          if aControl is TQRLabel then
            TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ksrq' ).asstring;
          aControl := qrbndcqzl.FindChildControl( 'cqzlkdys' + IntToStr( j - 1 ) );
          if aControl is TQRLabel then
            TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;
          if frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
          begin
            x := ( length( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
            qrbndcqzl.FindChildControl( 'QRImagezl' + IntToStr( j ) ).enabled := true;
            qrbndcqzl.FindChildControl( 'QRImagezl' + IntToStr( j ) ).Top := TQRLabel( qrbndcqzl.FindChildControl( 'cqzlxmmc' + IntToStr( j - 1 ) ) ).top;
            qrbndcqzl.FindChildControl( 'QRImagezl' + IntToStr( j ) ).left := qrbndcqzl.FindChildControl( 'cqzlypyf' + IntToStr( j - 1 ) ).left - 20;
            qrbndcqzl.FindChildControl( 'QRImagezl' + IntToStr( j ) ).height := 30;
            TQRLabel( qrbndcqzl.FindChildControl( 'cqzlypyf' + IntToStr( j - 1 ) ) ).Caption := trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
            TQRLabel( qrbndcqzl.FindChildControl( 'cqzlxmmc' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
          //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
          end
          else
          begin
            qrbndcqzl.FindChildControl( 'QRImagezl' + IntToStr( j ) ).enabled := false;
            //qrbndcqzl.FindChildControl( 'cqzlxmmc' + IntToStr( j - 1 ) ).Width := 235;
            TQRLabel( qrbndcqzl.FindChildControl( 'cqzlypyf' + IntToStr( j - 1 ) ) ).Caption := '';
            TQRLabel( qrbndcqzl.FindChildControl( 'cqzlxmmc' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
          //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
          end;
          frm_yzinput.sp_zxjl_cq_dy.Next;
          end;
        end;
      end;
      if i=1 then       
      begin
//      QRBand4.Enabled:=false;
//20130419
//      QRLabel2.Enabled:=false;
//      QRLabel3.Enabled:=false;
//      QRLabel20.Enabled:=false;
//      QRLabel21.Enabled:=false;
//      QRLabel26.Enabled:=false;
//      ny.Enabled:=false;
//      QRLabel1.Enabled:=false;
//      QRLabel2.Enabled:=false;
//      QRLabel3.Enabled:=false;
//      QRLabel7.Enabled:=false;
//      QRLabel57.Enabled:=false;
//      QRLabel61.Enabled:=false;
//--------------
                          //'性别:' + sp_jbxx.fieldbyname( 'brxb' ).asstring +'      '+
                          //'年龄:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
      //QuickRep3.Prepare;
      //20130419
//      QRLabel57.Enabled:=false;
//
//      for n := 175 to 195 do
//      begin
//        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
//      end;
//
//      for n := 197 to 198 do
//      begin
//        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
//      end;
//
//
//      for n := 28 to 45 do
//      begin
//        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
//      end;
//
//      for n := 47 to 71 do
//      begin
//        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
//      end;
//
//      for n := 18 to 21 do
//      begin
//        QRBand4.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=false;        
//      end;
//
//       for n := 26 to 26 do
//      begin
//        QRBand4.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=false;
//      end;
//
//      for n := 28 to 30 do
//      begin
//        QRBand4.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=false;            
//      end;
//
//      for n := 15 to 15 do
//      begin
//        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
//      end;
//
//      for n := 18 to 21 do
//      begin
//        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
//      end;
//
//      for n := 46 to 46 do
//      begin
//        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
//      end;
//
//      for n := 26 to 27 do
//      begin
//        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;          
//      end;
//
//      QuickRep3.Preview;
//      end
//      else
      cqzlmc.Caption := pub_yymc + '长期治疗计划执行单';
      DM_data.qry_pub.Close;
      DM_data.qry_pub.SQL.text:='select * from sys_kscwsz where bqdm='+''''+pub_bqdm+''''+' and bcbh='+''''+trim(frm_yzinput.sp_jbxx.fieldbyname( 'bch' ).asstring)+'''';
      DM_data.qry_pub.Open;

      cqzlxm.Caption := '姓名:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxm' ).asstring;
      cqzlbch.Caption := '病床号:' + Trim(DM_data.qry_pub.FieldByName('yybch').asstring);
      cqzlxb.Caption := '性别:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxb' ).asstring;
      cqzlnl.Caption := '年龄:' + trim( frm_yzinput.sp_jbxx.fieldbyname( 'brnl' ).asstring );
      cqzln.Caption := FormatDateTime( 'yyyy', frm_func.curr_date ) + '年';
      cqzlxmxm.Enabled:=False;
      cqzlbchbch.Enabled:=False;
      cqzlkhkh.Enabled:=False;
      qckrpcqzl.Preview
      end
      else
      begin
//
////    QRBand4.Enabled:=True;
//      QRLabel2.Enabled:=true;
//      QRLabel3.Enabled:=true;
//      QRLabel20.Enabled:=true;
//      QRLabel21.Enabled:=true;
//      QRLabel26.Enabled:=true;
//      ny.Enabled:=true;
//      QRLabel1.Enabled:=true;
//      QRLabel2.Enabled:=true;
//      QRLabel3.Enabled:=true;
//      QRLabel7.Enabled:=true;
//      QRLabel57.Enabled:=true;
//      QRLabel61.Enabled:=true;
//
//                          //'性别:' + sp_jbxx.fieldbyname( 'brxb' ).asstring +'      '+
//                          //'年龄:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
//      //QuickRep3.Prepare;
//      QRLabel57.Enabled:=true;  
//
//      for n := 175 to 195 do
//      begin
//        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;
//      end;
//
//      for n := 197 to 198 do
//      begin
//        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;
//      end;
//
//
//      for n := 28 to 45 do
//      begin
//        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;
//      end;
//
//      for n := 47 to 71 do
//      begin
//        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;
//      end;
//
//      for n := 18 to 21 do
//      begin
//        QRBand4.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=true;
//      end;
//
//       for n := 26 to 26 do
//      begin
//        QRBand4.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=true;           
//      end;
//
//      for n := 28 to 30 do
//      begin
//        QRBand4.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=true;
//      end;
//
//      for n := 15 to 15 do
//      begin
//        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;
//      end;
//
//      for n := 18 to 21 do
//      begin
//        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;          
//      end;
//
//      for n := 46 to 46 do
//      begin
//        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;
//      end;
//
//      for n := 26 to 27 do
//      begin
//        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;
//      end;
   //-------------------------

      cqzlmc.Caption := pub_yymc + '长期治疗计划执行单';
      DM_data.qry_pub.Close;
      DM_data.qry_pub.SQL.text:='select * from sys_kscwsz where bqdm='+''''+pub_bqdm+''''+' and bcbh='+''''+trim(frm_yzinput.sp_jbxx.fieldbyname( 'bch' ).asstring)+'''';
      DM_data.qry_pub.Open;

      cqzlxm.Caption := '姓名:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxm' ).asstring;
      cqzlbch.Caption := '病床号:' + Trim(DM_data.qry_pub.FieldByName('yybch').asstring);
      cqzlxb.Caption := '性别:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxb' ).asstring;
      cqzlnl.Caption := '年龄:' + trim( frm_yzinput.sp_jbxx.fieldbyname( 'brnl' ).asstring );
      cqzln.Caption := FormatDateTime( 'yyyy', frm_func.curr_date ) + '年';
      cqzlxmxm.Enabled:=True;
      cqzlbchbch.Enabled:=True;
      cqzlkhkh.Enabled:=True;
      //QRLabel66.Caption:='姓名:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxm' ).asstring+'      '+
      //                    '病床号:' + Trim(DM_data.qry_pub.FieldByName('yybch').asstring)+'      '+
      //                    '卡号:' + Trim( frm_yzinput.sp_jbxx.fieldbyname( 'tmh' ).asstring  );
                          //'性别:' + sp_jbxx.fieldbyname( 'brxb' ).asstring +'      '+
                          //'年龄:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
      //QuickRep3.Prepare;
      //QRLabel68.Caption := '审核医生:';
      qckrpcqzl.Preview;
      end;
     end;
  end;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := False;
  frm_yzinput.sp_zxjl_cq_dy.Filter := 'lb=''治疗'' and tzrq=null  and ksrq>=' + '''' + kdrq + '''';
  frm_yzinput.sp_zxjl_cq_dy.Filtered := True;

end;

procedure Tfrm_zxdxd.pro_xd_qt_zs3;
var
  i: Integer;
  hs: Integer;
  x: Integer;
  n: Integer;
  y: Integer;
  j: Integer;
  count: Integer;
  aControl: TControl;
begin
  kdrq := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ksrq' ).AsString;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := False;
  frm_yzinput.sp_zxjl_cq_dy.Filter := '(yytj=''肌注'' and  tzrq=null and ksrq>='+''''+kdrq+''''+ ')' +
    ' or (yytj=''静注'' and  tzrq=null  and ksrq>='+''''+kdrq+''''+ ')' +
    ' or (yytj=''皮下'' and  tzrq=null  and ksrq>='+''''+kdrq+''''+ ')' +
    ' or (yytj=''宫颈注射'' and  tzrq=null  and ksrq>='+''''+kdrq+''''+ ')' +
    ' or (yytj=''穴注'' and  tzrq=null  and ksrq>='+''''+kdrq+''''+ ')' ;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := True;

  hs:=StrToInt(ComboBox1.Text)-1;
  if not frm_yzinput.sp_zxjl_cq_dy.IsEmpty then
  begin
    frm_yzinput.sp_zxjl_cq_dy.First;
    if frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs mod 8 <> 0 then
      y := trunc( (frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs) / 8 ) + 1
    else
      y := trunc( (frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs) / 8 );
    count := frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs;
    for I := 1 to y do
    begin
      for j := 1 to 8 do
      begin
        if count < i * 8 then
        begin
          if j > ( 8 - ( y * 8 - count ) ) then
          begin
            aControl := qrbndcqzs.FindChildControl( 'cqzsksrq' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            aControl := qrbndcqzs.FindChildControl( 'cqzskdys' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            qrbndcqzs.FindChildControl( 'QRImagezs' + IntToStr( j ) ).enabled := false;
          //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel( qrbndcqzs.FindChildControl( 'cqzsypyf' + IntToStr( j - 1 ) ) ).Caption := '';
            //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
            TQRLabel( qrbndcqzs.FindChildControl( 'cqzsxmmc' + IntToStr( j - 1 ) ) ).caption := '';
          end
          else
          begin
            if (i=1) and (j<hs+1) then
            begin
            aControl := qrbndcqzs.FindChildControl( 'cqzsksrq' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            aControl := qrbndcqzs.FindChildControl( 'cqzskdys' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            qrbndcqzs.FindChildControl( 'QRImagezs' + IntToStr( j ) ).enabled := false;
          //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel( qrbndcqzs.FindChildControl( 'cqzsypyf' + IntToStr( j - 1 ) ) ).Caption := '';
            //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
            TQRLabel( qrbndcqzs.FindChildControl( 'cqzsxmmc' + IntToStr( j - 1 ) ) ).caption := '';
            end
            else
            begin
            aControl := qrbndcqzs.FindChildControl( 'cqzsksrq' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ksrq' ).AsString;
            aControl := qrbndcqzs.FindChildControl( 'cqzskdys' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;
            if frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
            begin
              x := ( length( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
              qrbndcqzs.FindChildControl( 'QRImagezs' + IntToStr( j ) ).enabled := true;
              qrbndcqzs.FindChildControl( 'QRImagezs' + IntToStr( j ) ).Top := TQRLabel( qrbndcqzs.FindChildControl( 'cqzsxmmc' + IntToStr( j - 1 ) ) ).top;
              qrbndcqzs.FindChildControl( 'QRImagezs' + IntToStr( j ) ).left := qrbndcqzs.FindChildControl( 'cqzsypyf' + IntToStr( j - 1 ) ).left - 20;
              qrbndcqzs.FindChildControl( 'QRImagezs' + IntToStr( j ) ).height := 30;
              TQRLabel( qrbndcqzs.FindChildControl( 'cqzsypyf' + IntToStr( j - 1 ) ) ).Caption := trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
              TQRLabel( qrbndcqzs.FindChildControl( 'cqzsxmmc' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
              //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end
            else
            begin
              qrbndcqzs.FindChildControl( 'QRImagezs' + IntToStr( j ) ).enabled := false;
              //qrbndcqzs.FindChildControl( 'cqzsxmmc' + IntToStr( j - 1 ) ).Width := 235;
              TQRLabel( qrbndcqzs.FindChildControl( 'cqzsypyf' + IntToStr( j - 1 ) ) ).Caption := '';
              TQRLabel( qrbndcqzs.FindChildControl( 'cqzsxmmc' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
             // TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end;
            frm_yzinput.sp_zxjl_cq_dy.Next;
            end;
          end;
        end
        else
        begin

          if (i=1) and (j<hs+1) then
          begin
            aControl := qrbndcqzs.FindChildControl( 'cqzsksrq' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            aControl := qrbndcqzs.FindChildControl( 'cqzskdys' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            qrbndcqzs.FindChildControl( 'QRImagezs' + IntToStr( j ) ).enabled := false;
          //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel( qrbndcqzs.FindChildControl( 'cqzsypyf' + IntToStr( j - 1 ) ) ).Caption := '';
            //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
            TQRLabel( qrbndcqzs.FindChildControl( 'cqzsxmmc' + IntToStr( j - 1 ) ) ).caption := '';
          end
          else
          begin
          aControl := qrbndcqzs.FindChildControl( 'cqzsksrq' + IntToStr( j - 1 ) );
          if aControl is TQRLabel then
            TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ksrq' ).asstring;
          aControl := qrbndcqzs.FindChildControl( 'cqzskdys' + IntToStr( j - 1 ) );
          if aControl is TQRLabel then
            TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;
          if frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
          begin
            x := ( length( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
            qrbndcqzs.FindChildControl( 'QRImagezs' + IntToStr( j ) ).enabled := true;
            qrbndcqzs.FindChildControl( 'QRImagezs' + IntToStr( j ) ).Top := TQRLabel( qrbndcqzs.FindChildControl( 'cqzsxmmc' + IntToStr( j - 1 ) ) ).top;
            qrbndcqzs.FindChildControl( 'QRImagezs' + IntToStr( j ) ).left := qrbndcqzs.FindChildControl( 'cqzsypyf' + IntToStr( j - 1 ) ).left - 20;
            qrbndcqzs.FindChildControl( 'QRImagezs' + IntToStr( j ) ).height := 30;
            TQRLabel( qrbndcqzs.FindChildControl( 'cqzsypyf' + IntToStr( j - 1 ) ) ).Caption := trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
            TQRLabel( qrbndcqzs.FindChildControl( 'cqzsxmmc' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
          //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
          end
          else
          begin
            qrbndcqzs.FindChildControl( 'QRImagezs' + IntToStr( j ) ).enabled := false;
            //qrbndcqzs.FindChildControl( 'cqzsxmmc' + IntToStr( j - 1 ) ).Width := 235;
            TQRLabel( qrbndcqzs.FindChildControl( 'cqzsypyf' + IntToStr( j - 1 ) ) ).Caption := '';
            TQRLabel( qrbndcqzs.FindChildControl( 'cqzsxmmc' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
          //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
          end;
          frm_yzinput.sp_zxjl_cq_dy.Next;
          end;
        end;
      end;
      if i=1 then
      begin

        if pub_yydm = '0260'  then  //井研处理
        begin
          for n := 156 to 173 do
          begin
           qrbndcqzs.FindChildControl( 'qrshp' + IntToStr( n ) ).Enabled:=false;
          end;
          for n := 175 to 185 do
          begin
           qrbndcqzs.FindChildControl( 'qrshp' + IntToStr( n ) ).Enabled:=false;
          end;
          QRcqzsbch.Enabled := False;
          QRcqzsmc.Enabled := False;
          QRcqzsn.Enabled := False;
          QRcqzsnl.Enabled := False;
          QRcqzsxb.Enabled := False;
          QRcqzsxm.Enabled := False;

          for n := 119 to 124 do
          begin
            qrbnd9.FindChildControl( 'QRLabel' + IntToStr( n ) ).Enabled:=false;
          end;
          qrshp127.Enabled := False;
          qrshp143.Enabled := False;
          qrshp153.Enabled := False;
          qrshp154.Enabled := False;
          qrshp155.Enabled := False;
        end;
//      QRBand4.Enabled:=false;
//20130419
//      QRLabel2.Enabled:=false;
//      QRLabel3.Enabled:=false;
//      QRLabel20.Enabled:=false;
//      QRLabel21.Enabled:=false;
//      QRLabel26.Enabled:=false;
//      ny.Enabled:=false;
//      QRLabel1.Enabled:=false;
//      QRLabel2.Enabled:=false;
//      QRLabel3.Enabled:=false;
//      QRLabel7.Enabled:=false;
//      QRLabel57.Enabled:=false;
//      QRLabel61.Enabled:=false;
//--------------
                          //'性别:' + sp_jbxx.fieldbyname( 'brxb' ).asstring +'      '+
                          //'年龄:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
      //QuickRep3.Prepare;
      //20130419
//      QRLabel57.Enabled:=false;
//
//      for n := 175 to 195 do
//      begin
//        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
//      end;
//
//      for n := 197 to 198 do
//      begin
//        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
//      end;
//
//
//      for n := 28 to 45 do
//      begin
//        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
//      end;
//
//      for n := 47 to 71 do
//      begin
//        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
//      end;
//
//      for n := 18 to 21 do
//      begin
//        QRBand4.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=false;        
//      end;
//
//       for n := 26 to 26 do
//      begin
//        QRBand4.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=false;
//      end;
//
//      for n := 28 to 30 do
//      begin
//        QRBand4.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=false;
//      end;
//
//      for n := 15 to 15 do
//      begin
//        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
//      end;
//
//      for n := 18 to 21 do
//      begin
//        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
//      end;
//
//      for n := 46 to 46 do
//      begin
//        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
//      end;
//
//      for n := 26 to 27 do
//      begin
//        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;          
//      end;
//
//      QuickRep3.Preview;
//      end
      QRcqzsmc.Caption := pub_yymc + '长期注射计划执行单';
      DM_data.qry_pub.Close;
      DM_data.qry_pub.SQL.text:='select * from sys_kscwsz where bqdm='+''''+pub_bqdm+''''+' and bcbh='+''''+trim(frm_yzinput.sp_jbxx.fieldbyname( 'bch' ).asstring)+'''';
      DM_data.qry_pub.Open;

      QRcqzsxm.Caption := '姓名:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxm' ).asstring;
      QRcqzsbch.Caption := '病床号:' + Trim( DM_data.qry_pub.FieldByName( 'yybch' ).asstring );
      QRcqzsxb.Caption := '性别:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxb' ).asstring;
      QRcqzsnl.Caption := '年龄:' + trim( frm_yzinput.sp_jbxx.fieldbyname( 'brnl' ).asstring );
      QRcqzsn.Caption := FormatDateTime( 'yyyy', frm_func.curr_date ) + '年';
      QRcqzsxmxm.Enabled:=False;
      QRcqzsbchbch.Enabled:=False;
      QRcqzskhkh.Enabled:=False;
      qckrp2.Preview
      end
      else
      begin

        if pub_yydm = '0260'  then  //井研处理
        begin
          for n := 156 to 173 do
          begin
           qrbndcqzs.FindChildControl( 'qrshp' + IntToStr( n ) ).Enabled:=true;
          end;
          for n := 175 to 185 do
          begin
           qrbndcqzs.FindChildControl( 'qrshp' + IntToStr( n ) ).Enabled:=true;
          end;
          QRcqzsbch.Enabled := true;
          QRcqzsmc.Enabled := true;
          QRcqzsn.Enabled := true;
          QRcqzsnl.Enabled := true;
          QRcqzsxb.Enabled := true;
          QRcqzsxm.Enabled := true;

          for n := 119 to 124 do
          begin
            qrbnd9.FindChildControl( 'QRLabel' + IntToStr( n ) ).Enabled:=true;
          end;
          qrshp127.Enabled := true;
          qrshp143.Enabled := true;
          qrshp153.Enabled := true;
          qrshp154.Enabled := true;
          qrshp155.Enabled := true;
        end;
//
////    QRBand4.Enabled:=True;
//      QRLabel2.Enabled:=true;
//      QRLabel3.Enabled:=true;
//      QRLabel20.Enabled:=true;
//      QRLabel21.Enabled:=true;
//      QRLabel26.Enabled:=true;
//      ny.Enabled:=true;
//      QRLabel1.Enabled:=true;
//      QRLabel2.Enabled:=true;
//      QRLabel3.Enabled:=true;
//      QRLabel7.Enabled:=true;
//      QRLabel57.Enabled:=true;
//      QRLabel61.Enabled:=true;
//
//                          //'性别:' + sp_jbxx.fieldbyname( 'brxb' ).asstring +'      '+
//                          //'年龄:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
//      //QuickRep3.Prepare;
//      QRLabel57.Enabled:=true;
//
//      for n := 175 to 195 do
//      begin
//        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;
//      end;
//
//      for n := 197 to 198 do
//      begin
//        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;
//      end;
//
//
//      for n := 28 to 45 do
//      begin
//        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;
//      end;
//
//      for n := 47 to 71 do
//      begin
//        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;
//      end;
//
//      for n := 18 to 21 do
//      begin
//        QRBand4.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=true;
//      end;
//
//       for n := 26 to 26 do
//      begin
//        QRBand4.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=true;
//      end;
//
//      for n := 28 to 30 do
//      begin
//        QRBand4.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=true;
//      end;
//
//      for n := 15 to 15 do
//      begin
//        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;
//      end;
//
//      for n := 18 to 21 do
//      begin
//        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;          
//      end;
//
//      for n := 46 to 46 do
//      begin
//        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;
//      end;
//
//      for n := 26 to 27 do
//      begin
//        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;
//      end;
   //-------------------------

      QRcqzsmc.Caption := pub_yymc + '长期注射计划执行单';
      DM_data.qry_pub.Close;
      DM_data.qry_pub.SQL.text:='select * from sys_kscwsz where bqdm='+''''+pub_bqdm+''''+' and bcbh='+''''+trim(frm_yzinput.sp_jbxx.fieldbyname( 'bch' ).asstring)+'''';
      DM_data.qry_pub.Open;

      QRcqzsxm.Caption := '姓名:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxm' ).asstring;
      QRcqzsbch.Caption := '病床号:' + Trim( DM_data.qry_pub.FieldByName( 'yybch' ).asstring );
      QRcqzsxb.Caption := '性别:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxb' ).asstring;
      QRcqzsnl.Caption := '年龄:' + trim( frm_yzinput.sp_jbxx.fieldbyname( 'brnl' ).asstring );
      QRcqzsn.Caption := FormatDateTime( 'yyyy', frm_func.curr_date ) + '年';
      QRcqzsxmxm.Enabled:=True;
      QRcqzsbchbch.Enabled:=True;
      QRcqzskhkh.Enabled:=True;
      QRcqzsxmxm.Caption := '姓名:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxm' ).asstring;
      QRcqzsbchbch.Caption := '病床号:' + Trim( DM_data.qry_pub.FieldByName( 'yybch' ).asstring );
      QRcqzskhkh.Caption := '卡号:' + frm_yzinput.sp_jbxx.fieldbyname( 'tmh' ).asstring;
      //QRLabel66.Caption:='姓名:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxm' ).asstring+'      '+
      //                    '病床号:' + Trim(DM_data.qry_pub.FieldByName('yybch').asstring)+'      '+
      //                    '卡号:' + Trim( frm_yzinput.sp_jbxx.fieldbyname( 'tmh' ).asstring  );
                          //'性别:' + sp_jbxx.fieldbyname( 'brxb' ).asstring +'      '+
                          //'年龄:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
      //QuickRep3.Prepare;
      //QRLabel68.Caption := '审核医生:';
      qckrp2.Preview;
      end;
     end;
  end;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := False;
  frm_yzinput.sp_zxjl_cq_dy.Filter := '(yytj=''肌注'' and  tzrq=null  and ksrq>='+''''+kdrq+''''+ ')' +
    ' or (yytj=''静注'' and  tzrq=null  and ksrq>='+''''+kdrq+''''+ ')' +
    ' or (yytj=''皮下'' and  tzrq=null  and ksrq>='+''''+kdrq+''''+ ')' +
    ' or (yytj=''宫颈注射'' and  tzrq=null  and ksrq>='+''''+kdrq+''''+ ')' +
    ' or (yytj=''穴注'' and  tzrq=null  and ksrq>='+''''+kdrq+''''+ ')' ;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := True;

end;




procedure Tfrm_zxdxd.pro_xd_qt_zs_k;
var
  i: Integer;
  hs: Integer;
  x: Integer;
  n: Integer;
  y: Integer;
  j: Integer;
  count: Integer;
  aControl: TControl;
  v_yytj,v_lb,filter:string;
begin
  kdrq := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ksrq' ).AsString;
//  frm_yzinput.sp_zxjl_cq_dy.Filtered := False;
//  frm_yzinput.sp_zxjl_cq_dy.Filter := '(yytj=''口服'' and  tzrq=null and kdks=' + '''' + pub_ksdm + '''' + ' and ksrq>='+''''+kdrq+''''+ ')' +
//    ' or (yytj=''口服'' and  tzrq=null and kdks=' + '''' + pub_ksdm + '''' + ' and ksrq>='+''''+kdrq+''''+ ')' +
//    ' or (yytj=''口服'' and  tzrq=null and kdks=' + '''' + pub_ksdm + '''' + ' and ksrq>='+''''+kdrq+''''+ ')' +
//    ' or (yytj=''口服'' and  tzrq=null and kdks=' + '''' + pub_ksdm + '''' + ' and ksrq>='+''''+kdrq+''''+ ')' +
//    ' or (yytj=''口服'' and  tzrq=null and kdks=' + '''' + pub_ksdm + '''' + ' and ksrq>='+''''+kdrq+''''+ ')' ;
//  frm_yzinput.sp_zxjl_cq_dy.Filtered := True;
  //sp_zxjl_cq_dy.Filtered := False;
  DM_data.qry_pub.close;
  DM_data.qry_pub.sql.text := 'select yytj from zybl_zyyz_dytjsz where dyxm=''口服药执行单''';
  DM_data.qry_pub.Open;
  if DM_data.qry_pub.IsEmpty then
  begin
    v_yytj := '';
  end
  else
  begin
    DM_data.qry_pub.First;
    while not DM_data.qry_pub.eof do
    begin
      v_yytj := v_yytj + '(yytj=' + '''' + DM_data.qry_pub.FieldByName( 'yytj' ).asstring + '''' +
      ' and ksrq>='+''''+kdrq+''''+
      ' and  tzrq=null  and  lb<>''草药'' )' + ' or ';
      DM_data.qry_pub.Next;
    end;

  end;

  DM_data.qry_pub.close;
  DM_data.qry_pub.sql.text := 'select lbmc from zybl_zyyz_dylbsz where dyxm=''口服药执行单''';
  DM_data.qry_pub.Open;
  if DM_data.qry_pub.IsEmpty then
  begin
    v_lb := '';
  end
  else
  begin
    DM_data.qry_pub.First;
    while not DM_data.qry_pub.eof do
    begin
      v_lb := v_lb + '(lb=' + '''' + DM_data.qry_pub.FieldByName( 'lbmc' ).asstring + '''' + ' and  tzrq=null  and kdrq>=' + '''' + formatdatetime( 'yy-MM-dd', frm_func.curr_date ) + ' 00:00' + ''')' + ' or ';
      DM_data.qry_pub.Next;
    end;

  end;

  if v_yytj + v_lb = '' then
  begin
    filter := ' 1<>1 ';
  end
  else
  begin
    filter := v_yytj + v_lb + ' ( yytj = ''特殊情况'' )';
  end;

  frm_yzinput.sp_zxjl_cq_dy.Filter := filter;

  frm_yzinput.sp_zxjl_cq_dy.Filtered := True;

  hs:=StrToInt(ComboBox1.Text)-1;
  if not frm_yzinput.sp_zxjl_cq_dy.IsEmpty then
  begin
    frm_yzinput.sp_zxjl_cq_dy.First;
    if frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs mod 8 <> 0 then
      y := trunc( (frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs) / 8 ) + 1
    else
      y := trunc( (frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs) / 8 );
    count := frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs;
    for I := 1 to y do
    begin
      for j := 1 to 8 do
      begin
        if count < i * 8 then
        begin
          if j > ( 8 - ( y * 8 - count ) ) then
          begin
            aControl := qrbndcqzs.FindChildControl( 'cqzsksrq' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            aControl := qrbndcqzs.FindChildControl( 'cqzskdys' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            qrbndcqzs.FindChildControl( 'QRImagezs' + IntToStr( j ) ).enabled := false;
          //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel( qrbndcqzs.FindChildControl( 'cqzsypyf' + IntToStr( j - 1 ) ) ).Caption := '';
            //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
            TQRLabel( qrbndcqzs.FindChildControl( 'cqzsxmmc' + IntToStr( j - 1 ) ) ).caption := '';
          end
          else
          begin
            if (i=1) and (j<hs+1) then
            begin
            aControl := qrbndcqzs.FindChildControl( 'cqzsksrq' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            aControl := qrbndcqzs.FindChildControl( 'cqzskdys' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            qrbndcqzs.FindChildControl( 'QRImagezs' + IntToStr( j ) ).enabled := false;
          //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel( qrbndcqzs.FindChildControl( 'cqzsypyf' + IntToStr( j - 1 ) ) ).Caption := '';
            //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
            TQRLabel( qrbndcqzs.FindChildControl( 'cqzsxmmc' + IntToStr( j - 1 ) ) ).caption := '';
            end
            else
            begin
            aControl := qrbndcqzs.FindChildControl( 'cqzsksrq' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ksrq' ).AsString;
            aControl := qrbndcqzs.FindChildControl( 'cqzskdys' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;
            if frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
            begin
              x := ( length( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
              qrbndcqzs.FindChildControl( 'QRImagezs' + IntToStr( j ) ).enabled := true;
              qrbndcqzs.FindChildControl( 'QRImagezs' + IntToStr( j ) ).Top := TQRLabel( qrbndcqzs.FindChildControl( 'cqzsxmmc' + IntToStr( j - 1 ) ) ).top;
              qrbndcqzs.FindChildControl( 'QRImagezs' + IntToStr( j ) ).left := qrbndcqzs.FindChildControl( 'cqzsypyf' + IntToStr( j - 1 ) ).left - 20;
              qrbndcqzs.FindChildControl( 'QRImagezs' + IntToStr( j ) ).height := 30;
              TQRLabel( qrbndcqzs.FindChildControl( 'cqzsypyf' + IntToStr( j - 1 ) ) ).Caption := trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
              TQRLabel( qrbndcqzs.FindChildControl( 'cqzsxmmc' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
              //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end
            else
            begin
              qrbndcqzs.FindChildControl( 'QRImagezs' + IntToStr( j ) ).enabled := false;
              //qrbndcqzs.FindChildControl( 'cqzsxmmc' + IntToStr( j - 1 ) ).Width := 235;
              TQRLabel( qrbndcqzs.FindChildControl( 'cqzsypyf' + IntToStr( j - 1 ) ) ).Caption := '';
              TQRLabel( qrbndcqzs.FindChildControl( 'cqzsxmmc' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
             // TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end;
            frm_yzinput.sp_zxjl_cq_dy.Next;
            end;
          end;
        end
        else
        begin

          if (i=1) and (j<hs+1) then
          begin
            aControl := qrbndcqzs.FindChildControl( 'cqzsksrq' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            aControl := qrbndcqzs.FindChildControl( 'cqzskdys' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            qrbndcqzs.FindChildControl( 'QRImagezs' + IntToStr( j ) ).enabled := false;
          //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel( qrbndcqzs.FindChildControl( 'cqzsypyf' + IntToStr( j - 1 ) ) ).Caption := '';
            //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
            TQRLabel( qrbndcqzs.FindChildControl( 'cqzsxmmc' + IntToStr( j - 1 ) ) ).caption := '';
          end
          else
          begin
          aControl := qrbndcqzs.FindChildControl( 'cqzsksrq' + IntToStr( j - 1 ) );
          if aControl is TQRLabel then
            TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ksrq' ).asstring;
          aControl := qrbndcqzs.FindChildControl( 'cqzskdys' + IntToStr( j - 1 ) );
          if aControl is TQRLabel then
            TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;
          if frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
          begin
            x := ( length( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
            qrbndcqzs.FindChildControl( 'QRImagezs' + IntToStr( j ) ).enabled := true;
            qrbndcqzs.FindChildControl( 'QRImagezs' + IntToStr( j ) ).Top := TQRLabel( qrbndcqzs.FindChildControl( 'cqzsxmmc' + IntToStr( j - 1 ) ) ).top;
            qrbndcqzs.FindChildControl( 'QRImagezs' + IntToStr( j ) ).left := qrbndcqzs.FindChildControl( 'cqzsypyf' + IntToStr( j - 1 ) ).left - 20;
            qrbndcqzs.FindChildControl( 'QRImagezs' + IntToStr( j ) ).height := 30;
            TQRLabel( qrbndcqzs.FindChildControl( 'cqzsypyf' + IntToStr( j - 1 ) ) ).Caption := trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
            TQRLabel( qrbndcqzs.FindChildControl( 'cqzsxmmc' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
          //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
          end
          else
          begin
            qrbndcqzs.FindChildControl( 'QRImagezs' + IntToStr( j ) ).enabled := false;
            //qrbndcqzs.FindChildControl( 'cqzsxmmc' + IntToStr( j - 1 ) ).Width := 235;
            TQRLabel( qrbndcqzs.FindChildControl( 'cqzsypyf' + IntToStr( j - 1 ) ) ).Caption := '';
            TQRLabel( qrbndcqzs.FindChildControl( 'cqzsxmmc' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
          //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
          end;
          frm_yzinput.sp_zxjl_cq_dy.Next;
          end;
        end;
      end;
      if i=1 then
      begin
//      QRBand4.Enabled:=false;
//20130419
//      QRLabel2.Enabled:=false;
//      QRLabel3.Enabled:=false;
//      QRLabel20.Enabled:=false;
//      QRLabel21.Enabled:=false;
//      QRLabel26.Enabled:=false;
//      ny.Enabled:=false;
//      QRLabel1.Enabled:=false;
//      QRLabel2.Enabled:=false;
//      QRLabel3.Enabled:=false;
//      QRLabel7.Enabled:=false;
//      QRLabel57.Enabled:=false;
//      QRLabel61.Enabled:=false;
//--------------
                          //'性别:' + sp_jbxx.fieldbyname( 'brxb' ).asstring +'      '+
                          //'年龄:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
      //QuickRep3.Prepare;
      //20130419
//      QRLabel57.Enabled:=false;
//
//      for n := 175 to 195 do
//      begin
//        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
//      end;
//
//      for n := 197 to 198 do
//      begin
//        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
//      end;
//
//
//      for n := 28 to 45 do
//      begin
//        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
//      end;
//
//      for n := 47 to 71 do
//      begin
//        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
//      end;
//
//      for n := 18 to 21 do
//      begin
//        QRBand4.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=false;        
//      end;
//
//       for n := 26 to 26 do
//      begin
//        QRBand4.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=false;
//      end;
//
//      for n := 28 to 30 do
//      begin
//        QRBand4.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=false;
//      end;
//
//      for n := 15 to 15 do
//      begin
//        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
//      end;
//
//      for n := 18 to 21 do
//      begin
//        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
//      end;
//
//      for n := 46 to 46 do
//      begin
//        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
//      end;
//
//      for n := 26 to 27 do
//      begin
//        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;          
//      end;
//
//      QuickRep3.Preview;
//      end
      for n := 156 to 173 do
      begin
        qrbndcqzs.FindChildControl( 'QRShp' + IntToStr( n ) ).Enabled:=false;
      end;


      for n := 175 to 185 do
      begin
        qrbndcqzs.FindChildControl( 'QRShp' + IntToStr( n ) ).Enabled:=false;
      end;
      QRcqzsbch.Enabled:=false;
      QRcqzsmc.Enabled:=false;
      QRcqzsn.Enabled:=false;
      QRcqzsnl.Enabled:=false;
      QRcqzsxb.Enabled:=false;
      QRcqzsxm.Enabled:=false;
      QRLabel119.Enabled:=false;
      QRLabel120.Enabled:=false;
      QRLabel121.Enabled:=false;
      QRLabel122.Enabled:=false;
      QRLabel123.Enabled:=false;
      QRLabel124.Enabled:=false;
      qrshp127.Enabled:=false;
      qrshp143.Enabled:=false;
      qrshp153.Enabled:=false;
      qrshp154.Enabled:=false;
      qrshp155.Enabled:=false;

      //qrbnd9.Enabled:=false;
      QRcqzsmc.Caption := pub_yymc + '长期口服计划执行单';
      DM_data.qry_pub.Close;
      DM_data.qry_pub.SQL.text:='select * from sys_kscwsz where bqdm='+''''+pub_bqdm+''''+' and bcbh='+''''+trim(frm_yzinput.sp_jbxx.fieldbyname( 'bch' ).asstring)+'''';
      DM_data.qry_pub.Open;

      QRcqzsxm.Caption := '姓名:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxm' ).asstring;
      QRcqzsbch.Caption := '病床号:' + Trim( DM_data.qry_pub.FieldByName( 'yybch' ).asstring );
      QRcqzsxb.Caption := '性别:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxb' ).asstring;
      QRcqzsnl.Caption := '年龄:' + trim( frm_yzinput.sp_jbxx.fieldbyname( 'brnl' ).asstring );
      QRcqzsn.Caption := FormatDateTime( 'yyyy', frm_func.curr_date ) + '年';
      QRcqzsxmxm.Enabled:=False;
      QRcqzsbchbch.Enabled:=False;
      QRcqzskhkh.Enabled:=False;
      qckrp2.Preview
      end
      else
      begin
//
////    QRBand4.Enabled:=True;
//      QRLabel2.Enabled:=true;
//      QRLabel3.Enabled:=true;
//      QRLabel20.Enabled:=true;
//      QRLabel21.Enabled:=true;
//      QRLabel26.Enabled:=true;
//      ny.Enabled:=true;
//      QRLabel1.Enabled:=true;
//      QRLabel2.Enabled:=true;
//      QRLabel3.Enabled:=true;
//      QRLabel7.Enabled:=true;
//      QRLabel57.Enabled:=true;
//      QRLabel61.Enabled:=true;
//
//                          //'性别:' + sp_jbxx.fieldbyname( 'brxb' ).asstring +'      '+
//                          //'年龄:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
//      //QuickRep3.Prepare;
//      QRLabel57.Enabled:=true;
//
//      for n := 175 to 195 do
//      begin
//        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;
//      end;
//
//      for n := 197 to 198 do
//      begin
//        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;
//      end;
//
//
//      for n := 28 to 45 do
//      begin
//        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;
//      end;
//
//      for n := 47 to 71 do
//      begin
//        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;
//      end;
//
//      for n := 18 to 21 do
//      begin
//        QRBand4.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=true;
//      end;
//
//       for n := 26 to 26 do
//      begin
//        QRBand4.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=true;
//      end;
//
//      for n := 28 to 30 do
//      begin
//        QRBand4.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=true;
//      end;
//
//      for n := 15 to 15 do
//      begin
//        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;
//      end;
//
//      for n := 18 to 21 do
//      begin
//        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;          
//      end;
//
//      for n := 46 to 46 do
//      begin
//        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;
//      end;
//
//      for n := 26 to 27 do
//      begin
//        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;
//      end;
   //-------------------------

      for n := 156 to 173 do
      begin
        qrbndcqzs.FindChildControl( 'QRShp' + IntToStr( n ) ).Enabled:=true;
      end;
      for n := 175 to 185 do
      begin
        qrbndcqzs.FindChildControl( 'QRShp' + IntToStr( n ) ).Enabled:=true;
      end;
      QRcqzsbch.Enabled:=true;
      QRcqzsmc.Enabled:=true;
      QRcqzsn.Enabled:=true;
      QRcqzsnl.Enabled:=true;
      QRcqzsxb.Enabled:=true;
      QRcqzsxm.Enabled:=true;
      QRLabel119.Enabled:=true;
      QRLabel120.Enabled:=true;
      QRLabel121.Enabled:=true;
      QRLabel122.Enabled:=true;
      QRLabel123.Enabled:=true;
      QRLabel124.Enabled:=true;
      qrshp127.Enabled:=true;
      qrshp143.Enabled:=true;
      qrshp153.Enabled:=true;
      qrshp154.Enabled:=true;
      qrshp155.Enabled:=true;
      //qrbnd9.Enabled:=true;
      QRcqzsmc.Caption := pub_yymc + '长期口服计划执行单';
      DM_data.qry_pub.Close;
      DM_data.qry_pub.SQL.text:='select * from sys_kscwsz where bqdm='+''''+pub_bqdm+''''+' and bcbh='+''''+trim(frm_yzinput.sp_jbxx.fieldbyname( 'bch' ).asstring)+'''';
      DM_data.qry_pub.Open;

      QRcqzsxm.Caption := '姓名:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxm' ).asstring;
      QRcqzsbch.Caption := '病床号:' + Trim( DM_data.qry_pub.FieldByName( 'yybch' ).asstring );
      QRcqzsxb.Caption := '性别:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxb' ).asstring;
      QRcqzsnl.Caption := '年龄:' + trim( frm_yzinput.sp_jbxx.fieldbyname( 'brnl' ).asstring );
      QRcqzsn.Caption := FormatDateTime( 'yyyy', frm_func.curr_date ) + '年';
      QRcqzsxmxm.Enabled:=True;
      QRcqzsbchbch.Enabled:=True;
      QRcqzskhkh.Enabled:=True;
      QRcqzsxmxm.Caption := '姓名:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxm' ).asstring;
      QRcqzsbchbch.Caption := '病床号:' + Trim( DM_data.qry_pub.FieldByName( 'yybch' ).asstring );
      QRcqzskhkh.Caption := '卡号:' + frm_yzinput.sp_jbxx.fieldbyname( 'tmh' ).asstring;
      //QRLabel66.Caption:='姓名:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxm' ).asstring+'      '+
      //                    '病床号:' + Trim(DM_data.qry_pub.FieldByName('yybch').asstring)+'      '+
      //                    '卡号:' + Trim( frm_yzinput.sp_jbxx.fieldbyname( 'tmh' ).asstring  );
                          //'性别:' + sp_jbxx.fieldbyname( 'brxb' ).asstring +'      '+
                          //'年龄:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
      //QuickRep3.Prepare;
      //QRLabel68.Caption := '审核医生:';
      qckrp2.Preview;
      end;
     end;
  end;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := False;
  frm_yzinput.sp_zxjl_cq_dy.Filter := filter;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := True;

end;



procedure Tfrm_zxdxd.pro_xd_qt_zs_k1;
var
  i: Integer;
  hs: Integer;
  x: Integer;
  n: Integer;
  y: Integer;
  j: Integer;
  count: Integer;
  aControl: TControl;
  v_yytj,v_lb,filter,v_Filter,yzid:string;
begin
  v_Filter:=frm_yzinput.sp_zxjl_cq_dy.Filter;
  yzid:= frm_yzinput.sp_zxjl_cq_dy.FieldByName('id').AsString;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := False;
  frm_yzinput.sp_zxjl_cq_dy.Filter := 'id='+yzid;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := True;

  hs:=StrToInt(ComboBox1.Text)-1;
  if not frm_yzinput.sp_zxjl_cq_dy.IsEmpty then
  begin
    frm_yzinput.sp_zxjl_cq_dy.First;
    if frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs mod 8 <> 0 then
      y := trunc( (frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs) / 8 ) + 1
    else
      y := trunc( (frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs) / 8 );
    count := frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs;
    for I := 1 to y do
    begin
      for j := 1 to 8 do
      begin
        if count < i * 8 then
        begin
          if j > ( 8 - ( y * 8 - count ) ) then
          begin
            aControl := qrbndcqzs.FindChildControl( 'cqzsksrq' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            aControl := qrbndcqzs.FindChildControl( 'cqzskdys' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            qrbndcqzs.FindChildControl( 'QRImagezs' + IntToStr( j ) ).enabled := false;
          //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel( qrbndcqzs.FindChildControl( 'cqzsypyf' + IntToStr( j - 1 ) ) ).Caption := '';
            //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
            TQRLabel( qrbndcqzs.FindChildControl( 'cqzsxmmc' + IntToStr( j - 1 ) ) ).caption := '';
          end
          else
          begin
            if (i=1) and (j<hs+1) then
            begin
            aControl := qrbndcqzs.FindChildControl( 'cqzsksrq' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            aControl := qrbndcqzs.FindChildControl( 'cqzskdys' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            qrbndcqzs.FindChildControl( 'QRImagezs' + IntToStr( j ) ).enabled := false;
          //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel( qrbndcqzs.FindChildControl( 'cqzsypyf' + IntToStr( j - 1 ) ) ).Caption := '';
            //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
            TQRLabel( qrbndcqzs.FindChildControl( 'cqzsxmmc' + IntToStr( j - 1 ) ) ).caption := '';
            end
            else
            begin
            aControl := qrbndcqzs.FindChildControl( 'cqzsksrq' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ksrq' ).AsString;
            aControl := qrbndcqzs.FindChildControl( 'cqzskdys' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;
            if frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
            begin
              x := ( length( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
              qrbndcqzs.FindChildControl( 'QRImagezs' + IntToStr( j ) ).enabled := true;
              qrbndcqzs.FindChildControl( 'QRImagezs' + IntToStr( j ) ).Top := TQRLabel( qrbndcqzs.FindChildControl( 'cqzsxmmc' + IntToStr( j - 1 ) ) ).top;
              qrbndcqzs.FindChildControl( 'QRImagezs' + IntToStr( j ) ).left := qrbndcqzs.FindChildControl( 'cqzsypyf' + IntToStr( j - 1 ) ).left - 20;
              qrbndcqzs.FindChildControl( 'QRImagezs' + IntToStr( j ) ).height := 30;
              TQRLabel( qrbndcqzs.FindChildControl( 'cqzsypyf' + IntToStr( j - 1 ) ) ).Caption := trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
              TQRLabel( qrbndcqzs.FindChildControl( 'cqzsxmmc' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
              //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end
            else
            begin
              qrbndcqzs.FindChildControl( 'QRImagezs' + IntToStr( j ) ).enabled := false;
              //qrbndcqzs.FindChildControl( 'cqzsxmmc' + IntToStr( j - 1 ) ).Width := 235;
              TQRLabel( qrbndcqzs.FindChildControl( 'cqzsypyf' + IntToStr( j - 1 ) ) ).Caption := '';
              TQRLabel( qrbndcqzs.FindChildControl( 'cqzsxmmc' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
             // TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end;
            frm_yzinput.sp_zxjl_cq_dy.Next;
            end;
          end;
        end
        else
        begin

          if (i=1) and (j<hs+1) then
          begin
            aControl := qrbndcqzs.FindChildControl( 'cqzsksrq' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            aControl := qrbndcqzs.FindChildControl( 'cqzskdys' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            qrbndcqzs.FindChildControl( 'QRImagezs' + IntToStr( j ) ).enabled := false;
          //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel( qrbndcqzs.FindChildControl( 'cqzsypyf' + IntToStr( j - 1 ) ) ).Caption := '';
            //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
            TQRLabel( qrbndcqzs.FindChildControl( 'cqzsxmmc' + IntToStr( j - 1 ) ) ).caption := '';
          end
          else
          begin
          aControl := qrbndcqzs.FindChildControl( 'cqzsksrq' + IntToStr( j - 1 ) );
          if aControl is TQRLabel then
            TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ksrq' ).asstring;
          aControl := qrbndcqzs.FindChildControl( 'cqzskdys' + IntToStr( j - 1 ) );
          if aControl is TQRLabel then
            TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;
          if frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
          begin
            x := ( length( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
            qrbndcqzs.FindChildControl( 'QRImagezs' + IntToStr( j ) ).enabled := true;
            qrbndcqzs.FindChildControl( 'QRImagezs' + IntToStr( j ) ).Top := TQRLabel( qrbndcqzs.FindChildControl( 'cqzsxmmc' + IntToStr( j - 1 ) ) ).top;
            qrbndcqzs.FindChildControl( 'QRImagezs' + IntToStr( j ) ).left := qrbndcqzs.FindChildControl( 'cqzsypyf' + IntToStr( j - 1 ) ).left - 20;
            qrbndcqzs.FindChildControl( 'QRImagezs' + IntToStr( j ) ).height := 30;
            TQRLabel( qrbndcqzs.FindChildControl( 'cqzsypyf' + IntToStr( j - 1 ) ) ).Caption := trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
            TQRLabel( qrbndcqzs.FindChildControl( 'cqzsxmmc' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
          //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
          end
          else
          begin
            qrbndcqzs.FindChildControl( 'QRImagezs' + IntToStr( j ) ).enabled := false;
            //qrbndcqzs.FindChildControl( 'cqzsxmmc' + IntToStr( j - 1 ) ).Width := 235;
            TQRLabel( qrbndcqzs.FindChildControl( 'cqzsypyf' + IntToStr( j - 1 ) ) ).Caption := '';
            TQRLabel( qrbndcqzs.FindChildControl( 'cqzsxmmc' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
          //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
          end;
          frm_yzinput.sp_zxjl_cq_dy.Next;
          end;
        end;
      end;
      if i=1 then
      begin
//      QRBand4.Enabled:=false;
//20130419
//      QRLabel2.Enabled:=false;
//      QRLabel3.Enabled:=false;
//      QRLabel20.Enabled:=false;
//      QRLabel21.Enabled:=false;
//      QRLabel26.Enabled:=false;
//      ny.Enabled:=false;
//      QRLabel1.Enabled:=false;
//      QRLabel2.Enabled:=false;
//      QRLabel3.Enabled:=false;
//      QRLabel7.Enabled:=false;
//      QRLabel57.Enabled:=false;
//      QRLabel61.Enabled:=false;
//--------------
                          //'性别:' + sp_jbxx.fieldbyname( 'brxb' ).asstring +'      '+
                          //'年龄:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
      //QuickRep3.Prepare;
      //20130419
//      QRLabel57.Enabled:=false;
//
//      for n := 175 to 195 do
//      begin
//        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
//      end;
//
//      for n := 197 to 198 do
//      begin
//        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
//      end;
//
//
//      for n := 28 to 45 do
//      begin
//        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
//      end;
//
//      for n := 47 to 71 do
//      begin
//        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
//      end;
//
//      for n := 18 to 21 do
//      begin
//        QRBand4.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=false;        
//      end;
//
//       for n := 26 to 26 do
//      begin
//        QRBand4.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=false;
//      end;
//
//      for n := 28 to 30 do
//      begin
//        QRBand4.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=false;
//      end;
//
//      for n := 15 to 15 do
//      begin
//        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
//      end;
//
//      for n := 18 to 21 do
//      begin
//        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
//      end;
//
//      for n := 46 to 46 do
//      begin
//        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
//      end;
//
//      for n := 26 to 27 do
//      begin
//        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;          
//      end;
//
//      QuickRep3.Preview;
//      end
      for n := 156 to 173 do
      begin
        qrbndcqzs.FindChildControl( 'QRShp' + IntToStr( n ) ).Enabled:=false;
      end;


      for n := 175 to 185 do
      begin
        qrbndcqzs.FindChildControl( 'QRShp' + IntToStr( n ) ).Enabled:=false;
      end;
      QRcqzsbch.Enabled:=false;
      QRcqzsmc.Enabled:=false;
      QRcqzsn.Enabled:=false;
      QRcqzsnl.Enabled:=false;
      QRcqzsxb.Enabled:=false;
      QRcqzsxm.Enabled:=false;
      QRLabel119.Enabled:=false;
      QRLabel120.Enabled:=false;
      QRLabel121.Enabled:=false;
      QRLabel122.Enabled:=false;
      QRLabel123.Enabled:=false;
      QRLabel124.Enabled:=false;
      qrshp127.Enabled:=false;
      qrshp143.Enabled:=false;
      qrshp153.Enabled:=false;
      qrshp154.Enabled:=false;
      qrshp155.Enabled:=false;

      //qrbnd9.Enabled:=false;
      QRcqzsmc.Caption := pub_yymc + '长期口服计划执行单';
      DM_data.qry_pub.Close;
      DM_data.qry_pub.SQL.text:='select * from sys_kscwsz where bqdm='+''''+pub_bqdm+''''+' and bcbh='+''''+trim(frm_yzinput.sp_jbxx.fieldbyname( 'bch' ).asstring)+'''';
      DM_data.qry_pub.Open;

      QRcqzsxm.Caption := '姓名:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxm' ).asstring;
      QRcqzsbch.Caption := '病床号:' + Trim( DM_data.qry_pub.FieldByName( 'yybch' ).asstring );
      QRcqzsxb.Caption := '性别:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxb' ).asstring;
      QRcqzsnl.Caption := '年龄:' + trim( frm_yzinput.sp_jbxx.fieldbyname( 'brnl' ).asstring );
      QRcqzsn.Caption := FormatDateTime( 'yyyy', frm_func.curr_date ) + '年';
      QRcqzsxmxm.Enabled:=False;
      QRcqzsbchbch.Enabled:=False;
      QRcqzskhkh.Enabled:=False;
      qckrp2.Preview
      end
      else
      begin
//
////    QRBand4.Enabled:=True;
//      QRLabel2.Enabled:=true;
//      QRLabel3.Enabled:=true;
//      QRLabel20.Enabled:=true;
//      QRLabel21.Enabled:=true;
//      QRLabel26.Enabled:=true;
//      ny.Enabled:=true;
//      QRLabel1.Enabled:=true;
//      QRLabel2.Enabled:=true;
//      QRLabel3.Enabled:=true;
//      QRLabel7.Enabled:=true;
//      QRLabel57.Enabled:=true;
//      QRLabel61.Enabled:=true;
//
//                          //'性别:' + sp_jbxx.fieldbyname( 'brxb' ).asstring +'      '+
//                          //'年龄:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
//      //QuickRep3.Prepare;
//      QRLabel57.Enabled:=true;
//
//      for n := 175 to 195 do
//      begin
//        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;
//      end;
//
//      for n := 197 to 198 do
//      begin
//        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;
//      end;
//
//
//      for n := 28 to 45 do
//      begin
//        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;
//      end;
//
//      for n := 47 to 71 do
//      begin
//        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;
//      end;
//
//      for n := 18 to 21 do
//      begin
//        QRBand4.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=true;
//      end;
//
//       for n := 26 to 26 do
//      begin
//        QRBand4.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=true;
//      end;
//
//      for n := 28 to 30 do
//      begin
//        QRBand4.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=true;
//      end;
//
//      for n := 15 to 15 do
//      begin
//        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;
//      end;
//
//      for n := 18 to 21 do
//      begin
//        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;          
//      end;
//
//      for n := 46 to 46 do
//      begin
//        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;
//      end;
//
//      for n := 26 to 27 do
//      begin
//        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;
//      end;
   //-------------------------

      for n := 156 to 173 do
      begin
        qrbndcqzs.FindChildControl( 'QRShp' + IntToStr( n ) ).Enabled:=true;
      end;
      for n := 175 to 185 do
      begin
        qrbndcqzs.FindChildControl( 'QRShp' + IntToStr( n ) ).Enabled:=true;
      end;
      QRcqzsbch.Enabled:=true;
      QRcqzsmc.Enabled:=true;
      QRcqzsn.Enabled:=true;
      QRcqzsnl.Enabled:=true;
      QRcqzsxb.Enabled:=true;
      QRcqzsxm.Enabled:=true;
      QRLabel119.Enabled:=true;
      QRLabel120.Enabled:=true;
      QRLabel121.Enabled:=true;
      QRLabel122.Enabled:=true;
      QRLabel123.Enabled:=true;
      QRLabel124.Enabled:=true;
      qrshp127.Enabled:=true;
      qrshp143.Enabled:=true;
      qrshp153.Enabled:=true;
      qrshp154.Enabled:=true;
      qrshp155.Enabled:=true;
      //qrbnd9.Enabled:=true;
      QRcqzsmc.Caption := pub_yymc + '长期口服计划执行单';
      DM_data.qry_pub.Close;
      DM_data.qry_pub.SQL.text:='select * from sys_kscwsz where bqdm='+''''+pub_bqdm+''''+' and bcbh='+''''+trim(frm_yzinput.sp_jbxx.fieldbyname( 'bch' ).asstring)+'''';
      DM_data.qry_pub.Open;

      QRcqzsxm.Caption := '姓名:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxm' ).asstring;
      QRcqzsbch.Caption := '病床号:' + Trim( DM_data.qry_pub.FieldByName( 'yybch' ).asstring );
      QRcqzsxb.Caption := '性别:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxb' ).asstring;
      QRcqzsnl.Caption := '年龄:' + trim( frm_yzinput.sp_jbxx.fieldbyname( 'brnl' ).asstring );
      QRcqzsn.Caption := FormatDateTime( 'yyyy', frm_func.curr_date ) + '年';
      QRcqzsxmxm.Enabled:=True;
      QRcqzsbchbch.Enabled:=True;
      QRcqzskhkh.Enabled:=True;
      QRcqzsxmxm.Caption := '姓名:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxm' ).asstring;
      QRcqzsbchbch.Caption := '病床号:' + Trim( DM_data.qry_pub.FieldByName( 'yybch' ).asstring );
      QRcqzskhkh.Caption := '卡号:' + frm_yzinput.sp_jbxx.fieldbyname( 'tmh' ).asstring;
      //QRLabel66.Caption:='姓名:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxm' ).asstring+'      '+
      //                    '病床号:' + Trim(DM_data.qry_pub.FieldByName('yybch').asstring)+'      '+
      //                    '卡号:' + Trim( frm_yzinput.sp_jbxx.fieldbyname( 'tmh' ).asstring  );
                          //'性别:' + sp_jbxx.fieldbyname( 'brxb' ).asstring +'      '+
                          //'年龄:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
      //QuickRep3.Prepare;
      //QRLabel68.Caption := '审核医生:';
      qckrp2.Preview;
      end;
     end;
  end;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := False;
  frm_yzinput.sp_zxjl_cq_dy.Filter := v_Filter;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := True;

end;



procedure Tfrm_zxdxd.pro_xd_qt_zs4_ls;
var
  i: Integer;
  hs: Integer;
  x: Integer;
  n: Integer;
  y: Integer;
  j: Integer;
  count: Integer;
  aControl: TControl;
begin
  kdrq := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ksrq' ).AsString;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := False;
  frm_yzinput.sp_zxjl_cq_dy.Filter := '(yytj like ''%静滴%''  and ksrq='+''''+kdrq+''') or'+
                          ' (yytj=''静脉泵入'' and  ksrq='+''''+kdrq+''') or '+
                          ' (xmmc like ''%皮试%'' and ksrq='+''''+kdrq+''') '+' or '+
                          ' (xmmc like ''%敏试%''  and ksrq='+''''+kdrq+''') ';
  frm_yzinput.sp_zxjl_cq_dy.Filtered := True;

  hs:=StrToInt(ComboBox1.Text)-1;
  if not frm_yzinput.sp_zxjl_cq_dy.IsEmpty then
  begin
    frm_yzinput.sp_zxjl_cq_dy.First;
    if frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs mod 5 <> 0 then
      y := trunc( (frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs) / 5 ) + 1
    else
      y := trunc( (frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs) / 5 );
    count := frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs;
    for I := 1 to y do
    begin
      for j := 1 to 5 do
      begin
        if count < i * 5 then
        begin
          if j > ( 5 - ( y * 5 - count ) ) then
          begin
            aControl := DetailBand3.FindChildControl( 'ksr' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            aControl := DetailBand3.FindChildControl( 'kdysm' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            DetailBand3.FindChildControl( 'QRgrImagej' + IntToStr( j ) ).enabled := false;
          //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel( DetailBand3.FindChildControl( 'ypy' + IntToStr( j - 1 ) ) ).Caption := '';
            //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
            TQRLabel( DetailBand3.FindChildControl( 'xmm' + IntToStr( j - 1 ) ) ).caption := '';
          end
          else
          begin
            if (i=1) and (j<hs+1) then
            begin
            aControl := DetailBand3.FindChildControl( 'ksr' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            aControl := DetailBand3.FindChildControl( 'kdysm' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            DetailBand3.FindChildControl( 'QRgrImagej' + IntToStr( j ) ).enabled := false;
          //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel( DetailBand3.FindChildControl( 'ypy' + IntToStr( j - 1 ) ) ).Caption := '';
            //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
            TQRLabel( DetailBand3.FindChildControl( 'xmm' + IntToStr( j - 1 ) ) ).caption := '';
            end
            else
            begin
            aControl := DetailBand3.FindChildControl( 'ksr' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ksrq' ).AsString;
            aControl := DetailBand3.FindChildControl( 'kdysm' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;
            if frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
            begin
              x := ( length( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
              DetailBand3.FindChildControl( 'QRgrImagej' + IntToStr( j ) ).enabled := true;
              DetailBand3.FindChildControl( 'QRgrImagej' + IntToStr( j ) ).Top := TQRLabel( DetailBand3.FindChildControl( 'xmm' + IntToStr( j - 1 ) ) ).top;
              DetailBand3.FindChildControl( 'QRgrImagej' + IntToStr( j ) ).left := DetailBand3.FindChildControl( 'ypy' + IntToStr( j - 1 ) ).left - 20;
              DetailBand3.FindChildControl( 'QRgrImagej' + IntToStr( j ) ).height := 30;
              TQRLabel( DetailBand3.FindChildControl( 'ypy' + IntToStr( j - 1 ) ) ).Caption := trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
              TQRLabel( DetailBand3.FindChildControl( 'xmm' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
              //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end
            else
            begin
              DetailBand3.FindChildControl( 'QRgrImagej' + IntToStr( j ) ).enabled := false;
              DetailBand3.FindChildControl( 'xmm' + IntToStr( j - 1 ) ).Width := 235;
              TQRLabel( DetailBand3.FindChildControl( 'ypy' + IntToStr( j - 1 ) ) ).Caption := '';
              TQRLabel( DetailBand3.FindChildControl( 'xmm' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
             // TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end;
            frm_yzinput.sp_zxjl_cq_dy.Next;
            end;
          end;
        end
        else
        begin

          if (i=1) and (j<hs+1) then
          begin
            aControl := DetailBand3.FindChildControl( 'ksr' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            aControl := DetailBand3.FindChildControl( 'kdysm' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            DetailBand3.FindChildControl( 'QRgrImagej' + IntToStr( j ) ).enabled := false;
          //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel( DetailBand3.FindChildControl( 'ypy' + IntToStr( j - 1 ) ) ).Caption := '';
            //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
            TQRLabel( DetailBand3.FindChildControl( 'xmm' + IntToStr( j - 1 ) ) ).caption := '';
          end
          else
          begin
          aControl := DetailBand3.FindChildControl( 'ksr' + IntToStr( j - 1 ) );
          if aControl is TQRLabel then
            TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ksrq' ).asstring;
          aControl := DetailBand3.FindChildControl( 'kdysm' + IntToStr( j - 1 ) );
          if aControl is TQRLabel then
            TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;
          if frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
          begin
            x := ( length( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
            DetailBand3.FindChildControl( 'QRgrImagej' + IntToStr( j ) ).enabled := true;
            DetailBand3.FindChildControl( 'QRgrImagej' + IntToStr( j ) ).Top := TQRLabel( DetailBand3.FindChildControl( 'xmm' + IntToStr( j - 1 ) ) ).top;
            DetailBand3.FindChildControl( 'QRgrImagej' + IntToStr( j ) ).left := DetailBand3.FindChildControl( 'ypy' + IntToStr( j - 1 ) ).left - 20;
            DetailBand3.FindChildControl( 'QRgrImagej' + IntToStr( j ) ).height := 30;
            TQRLabel( DetailBand3.FindChildControl( 'ypy' + IntToStr( j - 1 ) ) ).Caption := trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
            TQRLabel( DetailBand3.FindChildControl( 'xmm' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
          //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
          end
          else
          begin
            DetailBand3.FindChildControl( 'QRgrImagej' + IntToStr( j ) ).enabled := false;
            DetailBand3.FindChildControl( 'xmm' + IntToStr( j - 1 ) ).Width := 235;
            TQRLabel( DetailBand3.FindChildControl( 'ypy' + IntToStr( j - 1 ) ) ).Caption := '';
            TQRLabel( DetailBand3.FindChildControl( 'xmm' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
          //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
          end;
          frm_yzinput.sp_zxjl_cq_dy.Next;
          end;
        end;
      end;
      if i=1 then       
      begin
//      QRBand4.Enabled:=false;
//20130419
//      QRLabel2.Enabled:=false;
//      QRLabel3.Enabled:=false;
//      QRLabel20.Enabled:=false;
//      QRLabel21.Enabled:=false;
//      QRLabel26.Enabled:=false;
//      ny.Enabled:=false;
//      QRLabel1.Enabled:=false;
//      QRLabel2.Enabled:=false;
//      QRLabel3.Enabled:=false;
//      QRLabel7.Enabled:=false;
//      QRLabel57.Enabled:=false;
//      QRLabel61.Enabled:=false;
//--------------
                          //'性别:' + sp_jbxx.fieldbyname( 'brxb' ).asstring +'      '+
                          //'年龄:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
      //QuickRep3.Prepare;
      //20130419
//      QRLabel57.Enabled:=false;
//
//      for n := 175 to 195 do
//      begin
//        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
//      end;
//
//      for n := 197 to 198 do
//      begin
//        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
//      end;
//
//
//      for n := 28 to 45 do
//      begin
//        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
//      end;
//
//      for n := 47 to 71 do
//      begin
//        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
//      end;
//
//      for n := 18 to 21 do
//      begin
//        QRBand4.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=false;        
//      end;
//
//       for n := 26 to 26 do
//      begin
//        QRBand4.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=false;
//      end;
//
//      for n := 28 to 30 do
//      begin
//        QRBand4.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=false;            
//      end;
//
//      for n := 15 to 15 do
//      begin
//        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
//      end;
//
//      for n := 18 to 21 do
//      begin
//        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
//      end;
//
//      for n := 46 to 46 do
//      begin
//        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
//      end;
//
//      for n := 26 to 27 do
//      begin
//        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;          
//      end;
//
//      QuickRep3.Preview;
//      end
        QRLabel2000.Caption := pub_yymc + '临时输液计划执行单';
      DM_data.qry_pub.Close;
      DM_data.qry_pub.SQL.text:='select * from sys_kscwsz where bqdm='+''''+pub_bqdm+''''+' and bcbh='+''''+trim(frm_yzinput.sp_jbxx.fieldbyname( 'bch' ).asstring)+'''';
      DM_data.qry_pub.Open;

      QRLabel300.Caption := '姓名:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxm' ).asstring;
      QRLabel200.Caption := '病床号:' + Trim(DM_data.qry_pub.FieldByName('yybch').asstring);
      QRLabel210.Caption := '性别:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxb' ).asstring;
      QRLabel260.Caption := '年龄:' + trim( frm_yzinput.sp_jbxx.fieldbyname( 'brnl' ).asstring );
      nrjy0.Caption := FormatDateTime( 'yyyy', frm_func.curr_date ) + '年';
      QRLabel66.Enabled:=False;
      QRLabel68.Enabled:=False;
      QuickRep1.Preview
      end
     else
     begin
//
////    QRBand4.Enabled:=True;
//      QRLabel2.Enabled:=true;
//      QRLabel3.Enabled:=true;
//      QRLabel20.Enabled:=true;
//      QRLabel21.Enabled:=true;
//      QRLabel26.Enabled:=true;
//      ny.Enabled:=true;
//      QRLabel1.Enabled:=true;
//      QRLabel2.Enabled:=true;
//      QRLabel3.Enabled:=true;
//      QRLabel7.Enabled:=true;
//      QRLabel57.Enabled:=true;
//      QRLabel61.Enabled:=true;
//
//                          //'性别:' + sp_jbxx.fieldbyname( 'brxb' ).asstring +'      '+
//                          //'年龄:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
//      //QuickRep3.Prepare;
//      QRLabel57.Enabled:=true;  
//
//      for n := 175 to 195 do
//      begin
//        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;
//      end;
//
//      for n := 197 to 198 do
//      begin
//        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;
//      end;
//
//
//      for n := 28 to 45 do
//      begin
//        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;
//      end;
//
//      for n := 47 to 71 do
//      begin
//        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;
//      end;
//
//      for n := 18 to 21 do
//      begin
//        QRBand4.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=true;
//      end;
//
//       for n := 26 to 26 do
//      begin
//        QRBand4.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=true;           
//      end;
//
//      for n := 28 to 30 do
//      begin
//        QRBand4.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=true;
//      end;
//
//      for n := 15 to 15 do
//      begin
//        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;
//      end;
//
//      for n := 18 to 21 do
//      begin
//        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;          
//      end;
//
//      for n := 46 to 46 do
//      begin
//        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;
//      end;
//
//      for n := 26 to 27 do
//      begin
//        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;
//      end;
   //-------------------------

      QRLabel2000.Caption := pub_yymc + '临时输液计划执行单';
      DM_data.qry_pub.Close;
      DM_data.qry_pub.SQL.text:='select * from sys_kscwsz where bqdm='+''''+pub_bqdm+''''+' and bcbh='+''''+trim(frm_yzinput.sp_jbxx.fieldbyname( 'bch' ).asstring)+'''';
      DM_data.qry_pub.Open;

      QRLabel300.Caption := '姓名:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxm' ).asstring;
      QRLabel200.Caption := '病床号:' + Trim(DM_data.qry_pub.FieldByName('yybch').asstring);
      QRLabel210.Caption := '性别:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxb' ).asstring;
      QRLabel260.Caption := '年龄:' + trim( frm_yzinput.sp_jbxx.fieldbyname( 'brnl' ).asstring );
      nrjy0.Caption := FormatDateTime( 'yyyy', frm_func.curr_date ) + '年';
      QRLabel66.Enabled:=True;
      QRLabel68.Enabled:=True;
      QRLabel66.Caption:='姓名:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxm' ).asstring+'      '+
                          '病床号:' + Trim(DM_data.qry_pub.FieldByName('yybch').asstring)+'      '+
                          '卡号:' + Trim( frm_yzinput.sp_jbxx.fieldbyname( 'tmh' ).asstring  );
                          //'性别:' + sp_jbxx.fieldbyname( 'brxb' ).asstring +'      '+
                          //'年龄:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
      //QuickRep3.Prepare;
      QRLabel68.Caption := '审核医生:';
      QuickRep1.Preview;
      end;
     end;
  end;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := False;
  frm_yzinput.sp_zxjl_cq_dy.Filter := '(yytj like ''%静滴%'' and ksrq='+''''+kdrq+''') or'+
                          ' (yytj=''静脉泵入''  and ksrq='+''''+kdrq+''') or '+
                          ' (xmmc like ''%皮试%'' and  ksrq='+''''+kdrq+''') '+
                          ' or '+' (xmmc like ''%敏试%''  and ksrq='+''''+kdrq+''') ';
  frm_yzinput.sp_zxjl_cq_dy.Filtered := True;

end;

procedure Tfrm_zxdxd.pro_xd_qt_zs5;
var
  i: Integer;
  hs: Integer;
  x: Integer;
  n: Integer;
  y: Integer;
  j: Integer;
  count: Integer;
  aControl: TControl;
begin
  kdrq := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ksrq' ).AsString;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := False;
  frm_yzinput.sp_zxjl_cq_dy.Filter := 'lb=''治疗'' and tzrq=null  and ksrq=' + '''' + kdrq + '''';
  frm_yzinput.sp_zxjl_cq_dy.Filtered := True;

  hs:=StrToInt(ComboBox1.Text)-1;
  if not frm_yzinput.sp_zxjl_cq_dy.IsEmpty then
  begin
    frm_yzinput.sp_zxjl_cq_dy.First;
    if frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs mod 9 <> 0 then
      y := trunc( (frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs) / 9 ) + 1
    else
      y := trunc( (frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs) / 9 );
    count := frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs;
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
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).enabled := false;
          //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
            //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := '';
          end
          else
          begin
            if (i=1) and (j<hs+1) then
            begin
            aControl := QRBand10.FindChildControl( 'ksrqls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            aControl := QRBand10.FindChildControl( 'kdysmcls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).enabled := false;
          //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
            //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := '';
            end
            else
            begin
            aControl := QRBand10.FindChildControl( 'ksrqls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ksrq' ).AsString;
            aControl := QRBand10.FindChildControl( 'kdysmcls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;
            if frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
            begin
              x := ( length( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
              QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).enabled := true;
              QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).Top := TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).top;
              QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).left := QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ).left - 20;
              QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).height := 30;
              TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
              TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
              //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end
            else
            begin
              QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).enabled := false;
              QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ).Width := 235;
              TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
              TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
             // TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end;
            frm_yzinput.sp_zxjl_cq_dy.Next;
            end;
          end;
        end
        else
        begin

          if (i=1) and (j<hs+1) then
          begin
            aControl := QRBand10.FindChildControl( 'ksrqls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            aControl := QRBand10.FindChildControl( 'kdysmcls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).enabled := false;
          //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
            //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := '';
          end
          else
          begin
          aControl := QRBand10.FindChildControl( 'ksrqls_' + IntToStr( j - 1 ) );
          if aControl is TQRLabel then
            TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ksrq' ).asstring;
          aControl := QRBand10.FindChildControl( 'kdysmcls_' + IntToStr( j - 1 ) );
          if aControl is TQRLabel then
            TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;
          if frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
          begin
            x := ( length( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
            QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).enabled := true;
            QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).Top := TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).top;
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).left := QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ).left - 20;
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).height := 30;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
          //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
          end
          else
          begin
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).enabled := false;
            QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ).Width := 235;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
          //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
          end;
          frm_yzinput.sp_zxjl_cq_dy.Next;
          end;
        end;
      end;
      if i=1 then       
      begin

        QRLabel44.Enabled:=false;
        QRLabel58.Enabled:=false;
        QRLabel67.Enabled:=false;

      for n := 45 to 56 do
      begin
        QRBand9.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=false;
      end;
      for n := 138 to 145 do
      begin
        QRBand9.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
      end;

      for n := 146 to 172 do
      begin
        QRBand10.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
      end;
      DM_data.qry_pub.Close;
      DM_data.qry_pub.SQL.text:='select * from sys_kscwsz where bqdm='+''''+pub_bqdm+''''+' and bcbh='+''''+trim(frm_yzinput.sp_jbxx.fieldbyname( 'bch' ).asstring)+'''';
      DM_data.qry_pub.Open;
      QRLabel45.Caption := pub_yymc + '临时治疗计划执行单';
      QRLabel46.Caption := '姓名:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxm' ).asstring;
      QRLabel50.Caption := '病床号:' + Trim(DM_data.qry_pub.FieldByName('yybch').asstring);
      QRLabel51.Caption := '性别:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxb' ).asstring;
      QRLabel52.Caption := '年龄:' + trim( frm_yzinput.sp_jbxx.fieldbyname( 'brnl' ).asstring );
      QRLabel53.Caption := FormatDateTime( 'yyyy', frm_func.curr_date ) + '年';
      QuickRep5.Preview;
      end
      else
      begin

        QRLabel44.Enabled:=true;
        QRLabel58.Enabled:=true;
        QRLabel67.Enabled:=true;


      for n := 45 to 56 do
      begin
        QRBand9.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=false;
      end;
      for n := 138 to 145 do
      begin
        QRBand9.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
      end;

      for n := 146 to 172 do
      begin
        QRBand10.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
      end;

      
      DM_data.qry_pub.Close;
      DM_data.qry_pub.SQL.text:='select * from sys_kscwsz where bqdm='+''''+pub_bqdm+''''+' and bcbh='+''''+trim(frm_yzinput.sp_jbxx.fieldbyname( 'bch' ).asstring)+'''';
      DM_data.qry_pub.Open;
      QRLabel45.Caption := pub_yymc + '临时治疗计划执行单';
      QRLabel46.Caption := '姓名:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxm' ).asstring;
      QRLabel50.Caption := '病床号:' + Trim(DM_data.qry_pub.FieldByName('yybch').asstring);
      QRLabel51.Caption := '性别:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxb' ).asstring;
      QRLabel52.Caption := '年龄:' + trim( frm_yzinput.sp_jbxx.fieldbyname( 'brnl' ).asstring );
      QRLabel53.Caption := FormatDateTime( 'yyyy', frm_func.curr_date ) + '年';

      QRLabel67.Caption:='姓名:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxm' ).asstring+'      '+
                         '病床号:' + Trim(DM_data.qry_pub.FieldByName('yybch').asstring)+'      '+
                         '卡号:' + Trim( frm_yzinput.sp_jbxx.fieldbyname( 'tmh' ).asstring  );
                      //   '性别:' + sp_jbxx.fieldbyname( 'brxb' ).asstring+'      '+
                      //   '年龄:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
      //QuickRep3.Prepare;
      QRLabel58.Caption := '审核医生：';
      QuickRep5.Preview;
      end;
    end;
  end;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := False;
  frm_yzinput.sp_zxjl_cq_dy.Filter := 'lb=''治疗'' and tzrq=null and  ksrq=' + '''' + kdrq + '''';
  frm_yzinput.sp_zxjl_cq_dy.Filtered := True;

end;

procedure Tfrm_zxdxd.pro_xd_qt_zs6;
var
  i: Integer;
  hs: Integer;
  x: Integer;
  n: Integer;
  y: Integer;
  j: Integer;
  count: Integer;
  aControl: TControl;
begin
  kdrq := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ksrq' ).AsString;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := False;
  frm_yzinput.sp_zxjl_cq_dy.Filter := '(yytj=''静注'' and kdrq=' + '''' + kdrq + ''')';
  frm_yzinput.sp_zxjl_cq_dy.filter := frm_yzinput.sp_zxjl_cq_dy.filter + ' or ' + '(yytj=''肌注'' and  ksrq=' + '''' + kdrq+ ''')';
  frm_yzinput.sp_zxjl_cq_dy.filter := frm_yzinput.sp_zxjl_cq_dy.filter + ' or ' + '(yytj=''皮下'' and  ksrq=' + '''' + kdrq + ''')';
  frm_yzinput.sp_zxjl_cq_dy.filter := frm_yzinput.sp_zxjl_cq_dy.filter + ' or ' + '(yytj=''宫颈注射''  and ksrq=' + '''' + kdrq + ''')';
  frm_yzinput.sp_zxjl_cq_dy.filter := frm_yzinput.sp_zxjl_cq_dy.filter + ' or ' + '(yytj=''穴注'' and  ksrq=' + '''' + kdrq + ''')';
  frm_yzinput.sp_zxjl_cq_dy.Filtered := True;

  hs:=StrToInt(ComboBox1.Text)-1;
  if not frm_yzinput.sp_zxjl_cq_dy.IsEmpty then
  begin
    frm_yzinput.sp_zxjl_cq_dy.First;
    if frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs mod 9 <> 0 then
      y := trunc( (frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs) / 9 ) + 1
    else
      y := trunc( (frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs) / 9 );
    count := frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs;
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
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).enabled := false;
          //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
            //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := '';
          end
          else
          begin
            if (i=1) and (j<hs+1) then
            begin
            aControl := QRBand10.FindChildControl( 'ksrqls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            aControl := QRBand10.FindChildControl( 'kdysmcls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).enabled := false;
          //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
            //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := '';
            end
            else
            begin
            aControl := QRBand10.FindChildControl( 'ksrqls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ksrq' ).AsString;
            aControl := QRBand10.FindChildControl( 'kdysmcls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;
            if frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
            begin
              x := ( length( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
              QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).enabled := true;
              QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).Top := TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).top;
              QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).left := QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ).left - 20;
              QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).height := 30;
              TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
              TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
              //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end
            else
            begin
              QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).enabled := false;
              QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ).Width := 235;
              TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
              TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
             // TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end;
            frm_yzinput.sp_zxjl_cq_dy.Next;
            end;
          end;
        end
        else
        begin

          if (i=1) and (j<hs+1) then
          begin
            aControl := QRBand10.FindChildControl( 'ksrqls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            aControl := QRBand10.FindChildControl( 'kdysmcls' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := '';
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).enabled := false;
          //  TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).Width := 0;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
            //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := '';
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := '';
          end
          else
          begin
          aControl := QRBand10.FindChildControl( 'ksrqls_' + IntToStr( j - 1 ) );
          if aControl is TQRLabel then
            TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ksrq' ).asstring;
          aControl := QRBand10.FindChildControl( 'kdysmcls_' + IntToStr( j - 1 ) );
          if aControl is TQRLabel then
            TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;
          if frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
          begin
            x := ( length( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
            QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).enabled := true;
            QRBand10.FindChildControl( 'QRImagels_' + IntToStr( j ) ).Top := TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).top;
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).left := QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ).left - 20;
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).height := 30;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
          //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
          end
          else
          begin
            QRBand10.FindChildControl( 'qrimagels_' + IntToStr( j ) ).enabled := false;
            QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ).Width := 235;
            TQRLabel( QRBand10.FindChildControl( 'ypyfls_' + IntToStr( j - 1 ) ) ).Caption := '';
            TQRLabel( QRBand10.FindChildControl( 'xmmcls_' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
          //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
          end;
          frm_yzinput.sp_zxjl_cq_dy.Next;
          end;
        end;
      end;
      if i=1 then       
      begin

        QRLabel44.Enabled:=false;
        QRLabel58.Enabled:=false;
        QRLabel67.Enabled:=false;

      for n := 45 to 56 do
      begin
        QRBand9.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=false;
      end;
      for n := 138 to 145 do
      begin
        QRBand9.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
      end;

      for n := 146 to 172 do
      begin
        QRBand10.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
      end;
      DM_data.qry_pub.Close;
      DM_data.qry_pub.SQL.text:='select * from sys_kscwsz where bqdm='+''''+pub_bqdm+''''+' and bcbh='+''''+trim(frm_yzinput.sp_jbxx.fieldbyname( 'bch' ).asstring)+'''';
      DM_data.qry_pub.Open;
      QRLabel45.Caption := pub_yymc + '临时注射计划执行单';
      QRLabel46.Caption := '姓名:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxm' ).asstring;
      QRLabel50.Caption := '病床号:' + Trim(DM_data.qry_pub.FieldByName('yybch').asstring);
      QRLabel51.Caption := '性别:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxb' ).asstring;
      QRLabel52.Caption := '年龄:' + trim( frm_yzinput.sp_jbxx.fieldbyname( 'brnl' ).asstring );
      QRLabel53.Caption := FormatDateTime( 'yyyy', frm_func.curr_date ) + '年';
      QuickRep5.Preview;
      end
      else
      begin

        QRLabel44.Enabled:=true;
        QRLabel58.Enabled:=true;
        QRLabel67.Enabled:=true;


      for n := 45 to 56 do
      begin
        QRBand9.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=false;
      end;
      for n := 138 to 145 do
      begin
        QRBand9.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
      end;

      for n := 146 to 172 do
      begin
        QRBand10.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
      end;

      
      DM_data.qry_pub.Close;
      DM_data.qry_pub.SQL.text:='select * from sys_kscwsz where bqdm='+''''+pub_bqdm+''''+' and bcbh='+''''+trim(frm_yzinput.sp_jbxx.fieldbyname( 'bch' ).asstring)+'''';
      DM_data.qry_pub.Open;
      QRLabel45.Caption := pub_yymc + '临时注射计划执行单';
      QRLabel46.Caption := '姓名:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxm' ).asstring;
      QRLabel50.Caption := '病床号:' + Trim(DM_data.qry_pub.FieldByName('yybch').asstring);
      QRLabel51.Caption := '性别:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxb' ).asstring;
      QRLabel52.Caption := '年龄:' + trim( frm_yzinput.sp_jbxx.fieldbyname( 'brnl' ).asstring );
      QRLabel53.Caption := FormatDateTime( 'yyyy', frm_func.curr_date ) + '年';

      QRLabel67.Caption:='姓名:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxm' ).asstring+'      '+
                         '病床号:' + Trim(DM_data.qry_pub.FieldByName('yybch').asstring)+'      '+
                         '卡号:' + Trim( frm_yzinput.sp_jbxx.fieldbyname( 'tmh' ).asstring  );
                      //   '性别:' + sp_jbxx.fieldbyname( 'brxb' ).asstring+'      '+
                      //   '年龄:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
      //QuickRep3.Prepare;
      QRLabel58.Caption := '审核医生：';
      QuickRep5.Preview;
      end;
     end;
  end;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := False;
  frm_yzinput.sp_zxjl_cq_dy.Filter := '(yytj=''静注'' and  kdrq=' + '''' + kdrq + ''')';
  frm_yzinput.sp_zxjl_cq_dy.filter := frm_yzinput.sp_zxjl_cq_dy.filter + ' or ' + '(yytj=''肌注''  and ksrq=' + '''' + kdrq+ ''')';
  frm_yzinput.sp_zxjl_cq_dy.filter := frm_yzinput.sp_zxjl_cq_dy.filter + ' or ' + '(yytj=''皮下'' and ksrq=' + '''' + kdrq + ''')';
  frm_yzinput.sp_zxjl_cq_dy.filter := frm_yzinput.sp_zxjl_cq_dy.filter + ' or ' + '(yytj=''宫颈注射''  and ksrq=' + '''' + kdrq + ''')';
  frm_yzinput.sp_zxjl_cq_dy.filter := frm_yzinput.sp_zxjl_cq_dy.filter + ' or ' + '(yytj=''穴注''  and ksrq=' + '''' + kdrq + ''')';
  frm_yzinput.sp_zxjl_cq_dy.Filtered := True;

end;



procedure Tfrm_zxdxd.pro_xd_a4_zl;
var
  i: Integer;
  hs: Integer;
  x: Integer;
  n: Integer;
  y: Integer;
  j: Integer;
  count: Integer;
  aControl: TControl;
begin
  kdrq:= frm_yzinput.sp_zxjl_cq_dy.FieldByName('ksrq').AsString;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := False;
  frm_yzinput.sp_zxjl_cq_dy.Filter := 'lb=''治疗'' and tzrq=null  and ksrq>=' + '''' + kdrq + '''';
  frm_yzinput.sp_zxjl_cq_dy.Filtered := True;
  hs:=StrToInt(ComboBox1.Text)-1;
  if not frm_yzinput.sp_zxjl_cq_dy.IsEmpty then
  begin
    frm_yzinput.sp_zxjl_cq_dy.First;
    if frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs mod 5 <> 0 then
      y := trunc( (frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs) / 5 ) + 1
    else
      y := trunc( (frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs) / 5 );
    count := frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs;
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
            if (i=1) and (j<hs+1) then
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
              TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ksrq' ).AsString;
            aControl := DetailBand1.FindChildControl( 'kdysmc' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;
            if frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
            begin
              x := ( length( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
              DetailBand1.FindChildControl( 'QRgrImage' + IntToStr( j ) ).enabled := true;
              DetailBand1.FindChildControl( 'QRgrImage' + IntToStr( j ) ).Top := TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).top;
              DetailBand1.FindChildControl( 'QRgrImage' + IntToStr( j ) ).left := DetailBand1.FindChildControl( 'ypyf' + IntToStr( j - 1 ) ).left - 20;
              DetailBand1.FindChildControl( 'qrgrimage' + IntToStr( j ) ).height := 30;
              TQRLabel( DetailBand1.FindChildControl( 'ypyf' + IntToStr( j - 1 ) ) ).Caption := trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
              TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
              //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end
            else
            begin
              DetailBand1.FindChildControl( 'qrgrimage' + IntToStr( j ) ).enabled := false;
              DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ).Width := 235;
              TQRLabel( DetailBand1.FindChildControl( 'ypyf' + IntToStr( j - 1 ) ) ).Caption := '';
              TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
             // TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end;
            frm_yzinput.sp_zxjl_cq_dy.Next;
            end;
          end;
        end
        else
        begin

          if (i=1) and (j<hs+1) then
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
            TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ksrq' ).asstring;
          aControl := DetailBand1.FindChildControl( 'kdysmc' + IntToStr( j - 1 ) );
          if aControl is TQRLabel then
            TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;
          if frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
          begin
            x := ( length( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
            DetailBand1.FindChildControl( 'QRgrImage' + IntToStr( j ) ).enabled := true;
            DetailBand1.FindChildControl( 'QRgrImage' + IntToStr( j ) ).Top := TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).top;
            DetailBand1.FindChildControl( 'qrgrimage' + IntToStr( j ) ).left := DetailBand1.FindChildControl( 'ypyf' + IntToStr( j - 1 ) ).left - 20;
            DetailBand1.FindChildControl( 'qrgrimage' + IntToStr( j ) ).height := 30;
            TQRLabel( DetailBand1.FindChildControl( 'ypyf' + IntToStr( j - 1 ) ) ).Caption := trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
            TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
          //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
          end
          else
          begin
            DetailBand1.FindChildControl( 'qrgrimage' + IntToStr( j ) ).enabled := false;
            DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ).Width := 235;
            TQRLabel( DetailBand1.FindChildControl( 'ypyf' + IntToStr( j - 1 ) ) ).Caption := '';
            TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
          //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
          end;
          frm_yzinput.sp_zxjl_cq_dy.Next;
          end;
        end;
      end;
      if i=1 then
      begin
//      QRBand4.Enabled:=false;
      QRLabel2.Enabled:=false;  
      QRLabel3.Enabled:=false;  
      QRLabel20.Enabled:=false;
      QRLabel21.Enabled:=false;  
      QRLabel26.Enabled:=false;  
      ny.Enabled:=false;  
      QRLabel1.Enabled:=false;
      QRLabel2.Enabled:=false;
      QRLabel3.Enabled:=false;  
      QRLabel7.Enabled:=false; 
      QRLabel57.Enabled:=false;
      QRLabel61.Enabled:=false;   

                          //'性别:' + sp_jbxx.fieldbyname( 'brxb' ).asstring +'      '+
                          //'年龄:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
      //QuickRep3.Prepare;
      QRLabel57.Enabled:=false;  

      for n := 175 to 195 do
      begin
        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;          
      end;

      for n := 197 to 198 do
      begin
        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;          
      end;


      for n := 28 to 45 do
      begin
        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;          
      end;

      for n := 47 to 71 do
      begin
        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;          
      end;

      for n := 18 to 21 do
      begin
        QRBand4.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=false;        
      end;

       for n := 26 to 26 do
      begin
        QRBand4.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=false;
      end;

      for n := 28 to 30 do
      begin
        QRBand4.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=false;            
      end;

      for n := 15 to 15 do
      begin
        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;         
      end;

      for n := 18 to 21 do
      begin
        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;          
      end;

      for n := 46 to 46 do
      begin
        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
      end;

      for n := 26 to 27 do
      begin
        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;          
      end;
      
      QuickRep3.Preview;
      end
      else
      begin

//    QRBand4.Enabled:=True;
      QRLabel2.Enabled:=true;  
      QRLabel3.Enabled:=true;  
      QRLabel20.Enabled:=true;
      QRLabel21.Enabled:=true;  
      QRLabel26.Enabled:=true;  
      ny.Enabled:=true;  
      QRLabel1.Enabled:=true;
      QRLabel2.Enabled:=true;
      QRLabel3.Enabled:=true;  
      QRLabel7.Enabled:=true; 
      QRLabel57.Enabled:=true;
      QRLabel61.Enabled:=true;  

                          //'性别:' + sp_jbxx.fieldbyname( 'brxb' ).asstring +'      '+
                          //'年龄:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
      //QuickRep3.Prepare;
      QRLabel57.Enabled:=true;  

      for n := 175 to 195 do
      begin
        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;          
      end;

      for n := 197 to 198 do
      begin
        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;          
      end;


      for n := 28 to 45 do
      begin
        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;          
      end;

      for n := 47 to 71 do
      begin
        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;          
      end;

      for n := 18 to 21 do
      begin
        QRBand4.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=true;        
      end;

       for n := 26 to 26 do
      begin
        QRBand4.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=true;
      end;

      for n := 28 to 30 do
      begin
        QRBand4.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=true;            
      end;

      for n := 15 to 15 do
      begin
        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;         
      end;

      for n := 18 to 21 do
      begin
        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;          
      end;

      for n := 46 to 46 do
      begin
        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;
      end;

      for n := 26 to 27 do
      begin
        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;          
      end;


      QRLabel2.Caption := pub_yymc + '长期治疗计划执行单';
      DM_data.qry_pub.Close;
      DM_data.qry_pub.SQL.text:='select * from sys_kscwsz where bqdm='+''''+pub_bqdm+''''+' and bcbh='+''''+trim(frm_yzinput.sp_jbxx.fieldbyname( 'bch' ).asstring)+'''';
      DM_data.qry_pub.Open;

      QRLabel3.Caption := '姓名:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxm' ).asstring;
      QRLabel20.Caption := '病床号:' + Trim(DM_data.qry_pub.FieldByName('yybch').asstring);
      QRLabel21.Caption := '性别:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxb' ).asstring;
      QRLabel26.Caption := '年龄:' + trim( frm_yzinput.sp_jbxx.fieldbyname( 'brnl' ).asstring );
      ny.Caption := FormatDateTime( 'yyyy', frm_func.curr_date ) + '年';

      QRLabel61.Caption:='姓名:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxm' ).asstring+'      '+
                          '病床号:' + Trim(DM_data.qry_pub.FieldByName('yybch').asstring)+'      '+
                          '卡号:' + Trim( frm_yzinput.sp_jbxx.fieldbyname( 'tmh' ).asstring  );
                          //'性别:' + sp_jbxx.fieldbyname( 'brxb' ).asstring +'      '+
                          //'年龄:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
      //QuickRep3.Prepare;
      QRLabel57.Caption := '审核医生:';
      QuickRep3.Preview;
      end;
     end;
  end;
  kdrq:= frm_yzinput.sp_zxjl_cq_dy.FieldByName('ksrq').AsString;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := False;
  frm_yzinput.sp_zxjl_cq_dy.Filter := 'lb=''治疗'' and tzrq=null  and ksrq>=' + '''' + kdrq + '''';
  frm_yzinput.sp_zxjl_cq_dy.Filtered := True;

end;




procedure Tfrm_zxdxd.pro_xd_a4_ls;
var
  i: Integer;
  hs: Integer;
  x: Integer;
  n: Integer;
  y: Integer;
  j: Integer;
  count: Integer;
  aControl: TControl;
begin
  kdrq:= frm_yzinput.sp_zxjl_cq_dy.FieldByName('ksrq').AsString;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := False;
  frm_yzinput.sp_zxjl_cq_dy.Filter := '(yytj like ''%静滴%''  and ksrq='+''''+kdrq+''') or'+
                          ' (yytj=''静脉泵入''  and ksrq='+''''+kdrq+''') or '+
                          ' (xmmc like ''%皮试%'' and ksrq='+''''+kdrq+''') '+
                          ' or '+' (xmmc like ''%敏试%'' and ksrq='+''''+kdrq+''') ';
  frm_yzinput.sp_zxjl_cq_dy.Filtered := True;
  hs:=StrToInt(ComboBox1.Text)-1;
  if not frm_yzinput.sp_zxjl_cq_dy.IsEmpty then
  begin
    frm_yzinput.sp_zxjl_cq_dy.First;
    if frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs mod 5 <> 0 then
      y := trunc( (frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs) / 5 ) + 1
    else
      y := trunc( (frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs) / 5 );
    count := frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs;
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
            if (i=1) and (j<hs+1) then
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
              TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ksrq' ).AsString;
            aControl := DetailBand1.FindChildControl( 'kdysmc' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;
            if frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
            begin
              x := ( length( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
              DetailBand1.FindChildControl( 'QRgrImage' + IntToStr( j ) ).enabled := true;
              DetailBand1.FindChildControl( 'QRgrImage' + IntToStr( j ) ).Top := TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).top;
              DetailBand1.FindChildControl( 'QRgrImage' + IntToStr( j ) ).left := DetailBand1.FindChildControl( 'ypyf' + IntToStr( j - 1 ) ).left - 20;
              DetailBand1.FindChildControl( 'qrgrimage' + IntToStr( j ) ).height := 30;
              TQRLabel( DetailBand1.FindChildControl( 'ypyf' + IntToStr( j - 1 ) ) ).Caption := trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
              TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
              //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end
            else
            begin
              DetailBand1.FindChildControl( 'qrgrimage' + IntToStr( j ) ).enabled := false;
              DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ).Width := 235;
              TQRLabel( DetailBand1.FindChildControl( 'ypyf' + IntToStr( j - 1 ) ) ).Caption := '';
              TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
             // TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end;
            frm_yzinput.sp_zxjl_cq_dy.Next;
            end;
          end;
        end
        else
        begin

          if (i=1) and (j<hs+1) then
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
            TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ksrq' ).asstring;
          aControl := DetailBand1.FindChildControl( 'kdysmc' + IntToStr( j - 1 ) );
          if aControl is TQRLabel then
            TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;
          if frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
          begin
            x := ( length( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
            DetailBand1.FindChildControl( 'QRgrImage' + IntToStr( j ) ).enabled := true;
            DetailBand1.FindChildControl( 'QRgrImage' + IntToStr( j ) ).Top := TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).top;
            DetailBand1.FindChildControl( 'qrgrimage' + IntToStr( j ) ).left := DetailBand1.FindChildControl( 'ypyf' + IntToStr( j - 1 ) ).left - 20;
            DetailBand1.FindChildControl( 'qrgrimage' + IntToStr( j ) ).height := 30;
            TQRLabel( DetailBand1.FindChildControl( 'ypyf' + IntToStr( j - 1 ) ) ).Caption := trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
            TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
          //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
          end
          else
          begin
            DetailBand1.FindChildControl( 'qrgrimage' + IntToStr( j ) ).enabled := false;
            DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ).Width := 235;
            TQRLabel( DetailBand1.FindChildControl( 'ypyf' + IntToStr( j - 1 ) ) ).Caption := '';
            TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
          //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
          end;
          frm_yzinput.sp_zxjl_cq_dy.Next;
          end;
        end;
      end;
      if i=1 then       
      begin
//      QRBand4.Enabled:=false;
      QRLabel2.Enabled:=false;  
      QRLabel3.Enabled:=false;  
      QRLabel20.Enabled:=false;
      QRLabel21.Enabled:=false;  
      QRLabel26.Enabled:=false;  
      ny.Enabled:=false;  
      QRLabel1.Enabled:=false;
      QRLabel2.Enabled:=false;  
      QRLabel3.Enabled:=false;  
      QRLabel7.Enabled:=false; 
      QRLabel57.Enabled:=false;
      QRLabel61.Enabled:=false;   

                          //'性别:' + sp_jbxx.fieldbyname( 'brxb' ).asstring +'      '+
                          //'年龄:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
      //QuickRep3.Prepare;
      QRLabel57.Enabled:=false;  

      for n := 175 to 195 do
      begin
        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;          
      end;

      for n := 197 to 198 do
      begin
        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;          
      end;


      for n := 28 to 45 do
      begin
        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;          
      end;

      for n := 47 to 71 do
      begin
        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;          
      end;

      for n := 18 to 21 do
      begin
        QRBand4.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=false;        
      end;

       for n := 26 to 26 do
      begin
        QRBand4.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=false;
      end;

      for n := 28 to 30 do
      begin
        QRBand4.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=false;            
      end;

      for n := 15 to 15 do
      begin
        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;         
      end;

      for n := 18 to 21 do
      begin
        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;          
      end;

      for n := 46 to 46 do
      begin
        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
      end;

      for n := 26 to 27 do
      begin
        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;          
      end;
      
      QuickRep3.Preview;
      end
      else
      begin

//    QRBand4.Enabled:=True;
      QRLabel2.Enabled:=true;  
      QRLabel3.Enabled:=true;  
      QRLabel20.Enabled:=true;
      QRLabel21.Enabled:=true;  
      QRLabel26.Enabled:=true;  
      ny.Enabled:=true;  
      QRLabel1.Enabled:=true;
      QRLabel2.Enabled:=true;  
      QRLabel3.Enabled:=true;  
      QRLabel7.Enabled:=true; 
      QRLabel57.Enabled:=true;
      QRLabel61.Enabled:=true;  

                          //'性别:' + sp_jbxx.fieldbyname( 'brxb' ).asstring +'      '+
                          //'年龄:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
      //QuickRep3.Prepare;
      QRLabel57.Enabled:=true;  

      for n := 175 to 195 do
      begin
        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;          
      end;

      for n := 197 to 198 do
      begin
        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;          
      end;


      for n := 28 to 45 do
      begin
        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;          
      end;

      for n := 47 to 71 do
      begin
        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;          
      end;

      for n := 18 to 21 do
      begin
        QRBand4.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=true;        
      end;

       for n := 26 to 26 do
      begin
        QRBand4.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=true;
      end;

      for n := 28 to 30 do
      begin
        QRBand4.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=true;            
      end;

      for n := 15 to 15 do
      begin
        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;         
      end;

      for n := 18 to 21 do
      begin
        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;          
      end;

      for n := 46 to 46 do
      begin
        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;
      end;

      for n := 26 to 27 do
      begin
        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;          
      end;


      QRLabel2.Caption := pub_yymc + '临时输液计划执行单';
      DM_data.qry_pub.Close;
      DM_data.qry_pub.SQL.text:='select * from sys_kscwsz where bqdm='+''''+pub_bqdm+''''+' and bcbh='+''''+trim(frm_yzinput.sp_jbxx.fieldbyname( 'bch' ).asstring)+'''';
      DM_data.qry_pub.Open;

      QRLabel3.Caption := '姓名:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxm' ).asstring;
      QRLabel20.Caption := '病床号:' + Trim(DM_data.qry_pub.FieldByName('yybch').asstring);
      QRLabel21.Caption := '性别:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxb' ).asstring;
      QRLabel26.Caption := '年龄:' + trim( frm_yzinput.sp_jbxx.fieldbyname( 'brnl' ).asstring );
      ny.Caption := FormatDateTime( 'yyyy', frm_func.curr_date ) + '年';

      QRLabel61.Caption:='姓名:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxm' ).asstring+'      '+
                          '病床号:' + Trim(DM_data.qry_pub.FieldByName('yybch').asstring)+'      '+
                          '卡号:' + Trim( frm_yzinput.sp_jbxx.fieldbyname( 'tmh' ).asstring  );
                          //'性别:' + sp_jbxx.fieldbyname( 'brxb' ).asstring +'      '+
                          //'年龄:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
      //QuickRep3.Prepare;
      QRLabel57.Caption := '审核医生:';
      QuickRep3.Preview;
      end;
     end;
  end;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := False;
  frm_yzinput.sp_zxjl_cq_dy.Filter := '(yytj like ''%静滴%'' and  ksrq='+''''+kdrq+''') or'+
                          ' (yytj=''静脉泵入'' and ksrq='+''''+kdrq+''') or '+
                          ' (xmmc like ''%皮试%''  and ksrq='+''''+kdrq+''') '+
                          ' or '+ ' (xmmc like ''%敏试%''  and ksrq='+''''+kdrq+''') ';
  frm_yzinput.sp_zxjl_cq_dy.Filtered := True;

end;



procedure Tfrm_zxdxd.pro_xd_a4_zl_ls;
var
  i: Integer;
  hs: Integer;
  x: Integer;
  n: Integer;
  y: Integer;
  j: Integer;
  count: Integer;
  aControl: TControl;
begin
  kdrq:= frm_yzinput.sp_zxjl_cq_dy.FieldByName('ksrq').AsString;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := False;
  frm_yzinput.sp_zxjl_cq_dy.Filter := 'lb=''治疗'' and tzrq=null  and ksrq=' + '''' + kdrq + '''';
  frm_yzinput.sp_zxjl_cq_dy.Filtered := True;
  hs:=StrToInt(ComboBox1.Text)-1;
  if not frm_yzinput.sp_zxjl_cq_dy.IsEmpty then
  begin
    frm_yzinput.sp_zxjl_cq_dy.First;
    if frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs mod 5 <> 0 then
      y := trunc( (frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs) / 5 ) + 1
    else
      y := trunc( (frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs) / 5 );
    count := frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs;
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
            if (i=1) and (j<hs+1) then
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
              TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ksrq' ).AsString;
            aControl := DetailBand1.FindChildControl( 'kdysmc' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;
            if frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
            begin
              x := ( length( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
              DetailBand1.FindChildControl( 'QRgrImage' + IntToStr( j ) ).enabled := true;
              DetailBand1.FindChildControl( 'QRgrImage' + IntToStr( j ) ).Top := TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).top;
              DetailBand1.FindChildControl( 'QRgrImage' + IntToStr( j ) ).left := DetailBand1.FindChildControl( 'ypyf' + IntToStr( j - 1 ) ).left - 20;
              DetailBand1.FindChildControl( 'qrgrimage' + IntToStr( j ) ).height := 30;
              TQRLabel( DetailBand1.FindChildControl( 'ypyf' + IntToStr( j - 1 ) ) ).Caption := trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
              TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
              //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end
            else
            begin
              DetailBand1.FindChildControl( 'qrgrimage' + IntToStr( j ) ).enabled := false;
              DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ).Width := 235;
              TQRLabel( DetailBand1.FindChildControl( 'ypyf' + IntToStr( j - 1 ) ) ).Caption := '';
              TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
             // TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end;
            frm_yzinput.sp_zxjl_cq_dy.Next;
            end;
          end;
        end
        else
        begin

          if (i=1) and (j<hs+1) then
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
            TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ksrq' ).asstring;
          aControl := DetailBand1.FindChildControl( 'kdysmc' + IntToStr( j - 1 ) );
          if aControl is TQRLabel then
            TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;
          if frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
          begin
            x := ( length( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
            DetailBand1.FindChildControl( 'QRgrImage' + IntToStr( j ) ).enabled := true;
            DetailBand1.FindChildControl( 'QRgrImage' + IntToStr( j ) ).Top := TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).top;
            DetailBand1.FindChildControl( 'qrgrimage' + IntToStr( j ) ).left := DetailBand1.FindChildControl( 'ypyf' + IntToStr( j - 1 ) ).left - 20;
            DetailBand1.FindChildControl( 'qrgrimage' + IntToStr( j ) ).height := 30;
            TQRLabel( DetailBand1.FindChildControl( 'ypyf' + IntToStr( j - 1 ) ) ).Caption := trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
            TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
          //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
          end
          else
          begin
            DetailBand1.FindChildControl( 'qrgrimage' + IntToStr( j ) ).enabled := false;
            DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ).Width := 235;
            TQRLabel( DetailBand1.FindChildControl( 'ypyf' + IntToStr( j - 1 ) ) ).Caption := '';
            TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
          //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
          end;
          frm_yzinput.sp_zxjl_cq_dy.Next;
          end;
        end;
      end;
      if i=1 then       
      begin
//      QRBand4.Enabled:=false;
      QRLabel2.Enabled:=false;
      QRLabel3.Enabled:=false;  
      QRLabel20.Enabled:=false;
      QRLabel21.Enabled:=false;  
      QRLabel26.Enabled:=false;  
      ny.Enabled:=false;  
      QRLabel1.Enabled:=false;
      QRLabel2.Enabled:=false;  
      QRLabel3.Enabled:=false;
      QRLabel7.Enabled:=false; 
      QRLabel57.Enabled:=false;
      QRLabel61.Enabled:=false;   

                          //'性别:' + sp_jbxx.fieldbyname( 'brxb' ).asstring +'      '+
                          //'年龄:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
      //QuickRep3.Prepare;
      QRLabel57.Enabled:=false;

      for n := 175 to 195 do
      begin
        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;          
      end;

      for n := 197 to 198 do
      begin
        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;          
      end;


      for n := 28 to 45 do
      begin
        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;          
      end;

      for n := 47 to 71 do
      begin
        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;          
      end;

      for n := 18 to 21 do
      begin
        QRBand4.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=false;        
      end;

       for n := 26 to 26 do
      begin
        QRBand4.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=false;
      end;

      for n := 28 to 30 do
      begin
        QRBand4.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=false;            
      end;

      for n := 15 to 15 do
      begin
        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
      end;

      for n := 18 to 21 do
      begin
        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;          
      end;

      for n := 46 to 46 do
      begin
        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
      end;

      for n := 26 to 27 do
      begin
        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;          
      end;
      
      QuickRep3.Preview;
      end
      else
      begin

//    QRBand4.Enabled:=True;
      QRLabel2.Enabled:=true;
      QRLabel3.Enabled:=true;
      QRLabel20.Enabled:=true;
      QRLabel21.Enabled:=true;
      QRLabel26.Enabled:=true;  
      ny.Enabled:=true;  
      QRLabel1.Enabled:=true;
      QRLabel2.Enabled:=true;  
      QRLabel3.Enabled:=true;  
      QRLabel7.Enabled:=true;
      QRLabel57.Enabled:=true;
      QRLabel61.Enabled:=true;  

                          //'性别:' + sp_jbxx.fieldbyname( 'brxb' ).asstring +'      '+
                          //'年龄:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
      //QuickRep3.Prepare;
      QRLabel57.Enabled:=true;  

      for n := 175 to 195 do
      begin
        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;          
      end;

      for n := 197 to 198 do
      begin
        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;          
      end;


      for n := 28 to 45 do
      begin
        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;          
      end;

      for n := 47 to 71 do
      begin
        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;          
      end;

      for n := 18 to 21 do
      begin
        QRBand4.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=true;        
      end;

       for n := 26 to 26 do
      begin
        QRBand4.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=true;
      end;

      for n := 28 to 30 do
      begin
        QRBand4.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=true;
      end;

      for n := 15 to 15 do
      begin
        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;         
      end;

      for n := 18 to 21 do
      begin
        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;
      end;

      for n := 46 to 46 do
      begin
        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;
      end;

      for n := 26 to 27 do
      begin
        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;
      end;


      QRLabel2.Caption := pub_yymc + '临时治疗执行单';
      DM_data.qry_pub.Close;
      DM_data.qry_pub.SQL.text:='select * from sys_kscwsz where bqdm='+''''+pub_bqdm+''''+' and bcbh='+''''+trim(frm_yzinput.sp_jbxx.fieldbyname( 'bch' ).asstring)+'''';
      DM_data.qry_pub.Open;

      QRLabel3.Caption := '姓名:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxm' ).asstring;
      QRLabel20.Caption := '病床号:' + Trim(DM_data.qry_pub.FieldByName('yybch').asstring);
      QRLabel21.Caption := '性别:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxb' ).asstring;
      QRLabel26.Caption := '年龄:' + trim( frm_yzinput.sp_jbxx.fieldbyname( 'brnl' ).asstring );
      ny.Caption := FormatDateTime( 'yyyy', frm_func.curr_date ) + '年';

      QRLabel61.Caption:='姓名:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxm' ).asstring+'      '+
                          '病床号:' + Trim(DM_data.qry_pub.FieldByName('yybch').asstring)+'      '+
                          '卡号:' + Trim( frm_yzinput.sp_jbxx.fieldbyname( 'tmh' ).asstring  );
                          //'性别:' + sp_jbxx.fieldbyname( 'brxb' ).asstring +'      '+
                          //'年龄:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
      //QuickRep3.Prepare;
      QRLabel57.Caption := '审核医生:';
      QuickRep3.Preview;
      end;
     end;
  end;
  kdrq:= frm_yzinput.sp_zxjl_cq_dy.FieldByName('ksrq').AsString;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := False;
  frm_yzinput.sp_zxjl_cq_dy.Filter := 'lb=''治疗'' and tzrq=null and ksrq=' + '''' + kdrq + '''';
  frm_yzinput.sp_zxjl_cq_dy.Filtered := True;

end;



procedure Tfrm_zxdxd.pro_xd_a4_zs_ls;
var
  i: Integer;
  hs: Integer;
  x: Integer;
  n: Integer;
  y: Integer;
  j: Integer;
  count: Integer;
  aControl: TControl;
begin
  kdrq:= frm_yzinput.sp_zxjl_cq_dy.FieldByName('ksrq').AsString;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := False;
  frm_yzinput.sp_zxjl_cq_dy.Filter := '(yytj=''静注'' and kdrq=' + '''' + kdrq + ''')';
  frm_yzinput.sp_zxjl_cq_dy.filter := frm_yzinput.sp_zxjl_cq_dy.filter + ' or ' + '(yytj=''肌注'' and  ksrq=' + '''' + kdrq+ ''')';
  frm_yzinput.sp_zxjl_cq_dy.filter := frm_yzinput.sp_zxjl_cq_dy.filter + ' or ' + '(yytj=''皮下'' and  ksrq=' + '''' + kdrq + ''')';
  frm_yzinput.sp_zxjl_cq_dy.filter := frm_yzinput.sp_zxjl_cq_dy.filter + ' or ' + '(yytj=''宫颈注射''  and ksrq=' + '''' + kdrq + ''')';
  frm_yzinput.sp_zxjl_cq_dy.filter := frm_yzinput.sp_zxjl_cq_dy.filter + ' or ' + '(yytj=''穴注''  and ksrq=' + '''' + kdrq + ''')';
  frm_yzinput.sp_zxjl_cq_dy.Filtered := True;
  hs:=StrToInt(ComboBox1.Text)-1;
  if not frm_yzinput.sp_zxjl_cq_dy.IsEmpty then
  begin
    frm_yzinput.sp_zxjl_cq_dy.First;
    if frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs mod 5 <> 0 then
      y := trunc( (frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs) / 5 ) + 1
    else
      y := trunc( (frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs) / 5 );
    count := frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs;
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
            if (i=1) and (j<hs+1) then
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
              TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ksrq' ).AsString;
            aControl := DetailBand1.FindChildControl( 'kdysmc' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;
            if frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
            begin
              x := ( length( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
              DetailBand1.FindChildControl( 'QRgrImage' + IntToStr( j ) ).enabled := true;
              DetailBand1.FindChildControl( 'QRgrImage' + IntToStr( j ) ).Top := TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).top;
              DetailBand1.FindChildControl( 'QRgrImage' + IntToStr( j ) ).left := DetailBand1.FindChildControl( 'ypyf' + IntToStr( j - 1 ) ).left - 20;
              DetailBand1.FindChildControl( 'qrgrimage' + IntToStr( j ) ).height := 30;
              TQRLabel( DetailBand1.FindChildControl( 'ypyf' + IntToStr( j - 1 ) ) ).Caption := trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
              TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
              //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end
            else
            begin
              DetailBand1.FindChildControl( 'qrgrimage' + IntToStr( j ) ).enabled := false;
              DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ).Width := 235;
              TQRLabel( DetailBand1.FindChildControl( 'ypyf' + IntToStr( j - 1 ) ) ).Caption := '';
              TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
             // TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end;
            frm_yzinput.sp_zxjl_cq_dy.Next;
            end;
          end;
        end
        else
        begin

          if (i=1) and (j<hs+1) then
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
            TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ksrq' ).asstring;
          aControl := DetailBand1.FindChildControl( 'kdysmc' + IntToStr( j - 1 ) );
          if aControl is TQRLabel then
            TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;
          if frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
          begin
            x := ( length( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
            DetailBand1.FindChildControl( 'QRgrImage' + IntToStr( j ) ).enabled := true;
            DetailBand1.FindChildControl( 'QRgrImage' + IntToStr( j ) ).Top := TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).top;
            DetailBand1.FindChildControl( 'qrgrimage' + IntToStr( j ) ).left := DetailBand1.FindChildControl( 'ypyf' + IntToStr( j - 1 ) ).left - 20;
            DetailBand1.FindChildControl( 'qrgrimage' + IntToStr( j ) ).height := 30;
            TQRLabel( DetailBand1.FindChildControl( 'ypyf' + IntToStr( j - 1 ) ) ).Caption := trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
            TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
          //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
          end
          else
          begin
            DetailBand1.FindChildControl( 'qrgrimage' + IntToStr( j ) ).enabled := false;
            DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ).Width := 235;
            TQRLabel( DetailBand1.FindChildControl( 'ypyf' + IntToStr( j - 1 ) ) ).Caption := '';
            TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
          //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
          end;
          frm_yzinput.sp_zxjl_cq_dy.Next;
          end;
        end;
      end;
      if i=1 then       
      begin
//      QRBand4.Enabled:=false;
      QRLabel2.Enabled:=false;
      QRLabel3.Enabled:=false;  
      QRLabel20.Enabled:=false;
      QRLabel21.Enabled:=false;  
      QRLabel26.Enabled:=false;  
      ny.Enabled:=false;  
      QRLabel1.Enabled:=false;
      QRLabel2.Enabled:=false;  
      QRLabel3.Enabled:=false;
      QRLabel7.Enabled:=false; 
      QRLabel57.Enabled:=false;
      QRLabel61.Enabled:=false;   

                          //'性别:' + sp_jbxx.fieldbyname( 'brxb' ).asstring +'      '+
                          //'年龄:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
      //QuickRep3.Prepare;
      QRLabel57.Enabled:=false;

      for n := 175 to 195 do
      begin
        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;          
      end;

      for n := 197 to 198 do
      begin
        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;          
      end;


      for n := 28 to 45 do
      begin
        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;          
      end;

      for n := 47 to 71 do
      begin
        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;          
      end;

      for n := 18 to 21 do
      begin
        QRBand4.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=false;        
      end;

       for n := 26 to 26 do
      begin
        QRBand4.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=false;
      end;

      for n := 28 to 30 do
      begin
        QRBand4.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=false;            
      end;

      for n := 15 to 15 do
      begin
        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
      end;

      for n := 18 to 21 do
      begin
        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;          
      end;

      for n := 46 to 46 do
      begin
        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
      end;

      for n := 26 to 27 do
      begin
        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;          
      end;
      
      QuickRep3.Preview;
      end
      else
      begin

//    QRBand4.Enabled:=True;
      QRLabel2.Enabled:=true;  
      QRLabel3.Enabled:=true;  
      QRLabel20.Enabled:=true;
      QRLabel21.Enabled:=true;
      QRLabel26.Enabled:=true;  
      ny.Enabled:=true;  
      QRLabel1.Enabled:=true;
      QRLabel2.Enabled:=true;  
      QRLabel3.Enabled:=true;  
      QRLabel7.Enabled:=true;
      QRLabel57.Enabled:=true;
      QRLabel61.Enabled:=true;  

                          //'性别:' + sp_jbxx.fieldbyname( 'brxb' ).asstring +'      '+
                          //'年龄:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
      //QuickRep3.Prepare;
      QRLabel57.Enabled:=true;  

      for n := 175 to 195 do
      begin
        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;          
      end;

      for n := 197 to 198 do
      begin
        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;          
      end;


      for n := 28 to 45 do
      begin
        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;          
      end;

      for n := 47 to 71 do
      begin
        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;          
      end;

      for n := 18 to 21 do
      begin
        QRBand4.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=true;        
      end;

       for n := 26 to 26 do
      begin
        QRBand4.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=true;
      end;

      for n := 28 to 30 do
      begin
        QRBand4.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=true;
      end;

      for n := 15 to 15 do
      begin
        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;         
      end;

      for n := 18 to 21 do
      begin
        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;
      end;

      for n := 46 to 46 do
      begin
        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;
      end;

      for n := 26 to 27 do
      begin
        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;
      end;


      QRLabel2.Caption := pub_yymc + '临时注射执行单';
      DM_data.qry_pub.Close;
      DM_data.qry_pub.SQL.text:='select * from sys_kscwsz where bqdm='+''''+pub_bqdm+''''+' and bcbh='+''''+trim(frm_yzinput.sp_jbxx.fieldbyname( 'bch' ).asstring)+'''';
      DM_data.qry_pub.Open;

      QRLabel3.Caption := '姓名:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxm' ).asstring;
      QRLabel20.Caption := '病床号:' + Trim(DM_data.qry_pub.FieldByName('yybch').asstring);
      QRLabel21.Caption := '性别:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxb' ).asstring;
      QRLabel26.Caption := '年龄:' + trim( frm_yzinput.sp_jbxx.fieldbyname( 'brnl' ).asstring );
      ny.Caption := FormatDateTime( 'yyyy', frm_func.curr_date ) + '年';

      QRLabel61.Caption:='姓名:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxm' ).asstring+'      '+
                          '病床号:' + Trim(DM_data.qry_pub.FieldByName('yybch').asstring)+'      '+
                          '卡号:' + Trim( frm_yzinput.sp_jbxx.fieldbyname( 'tmh' ).asstring  );
                          //'性别:' + sp_jbxx.fieldbyname( 'brxb' ).asstring +'      '+
                          //'年龄:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
      //QuickRep3.Prepare;
      QRLabel57.Caption := '审核医生:';
      QuickRep3.Preview;
      end;
     end;
  end;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := False;
  frm_yzinput.sp_zxjl_cq_dy.Filter := '(yytj=''静注''  and kdrq=' + '''' + kdrq + ''')';
  frm_yzinput.sp_zxjl_cq_dy.filter := frm_yzinput.sp_zxjl_cq_dy.filter + ' or ' + '(yytj=''肌注''  and ksrq=' + '''' + kdrq+ ''')';
  frm_yzinput.sp_zxjl_cq_dy.filter := frm_yzinput.sp_zxjl_cq_dy.filter + ' or ' + '(yytj=''皮下''  and ksrq=' + '''' + kdrq + ''')';
  frm_yzinput.sp_zxjl_cq_dy.filter := frm_yzinput.sp_zxjl_cq_dy.filter + ' or ' + '(yytj=''宫颈注射'' and ksrq=' + '''' + kdrq + ''')';
  frm_yzinput.sp_zxjl_cq_dy.filter := frm_yzinput.sp_zxjl_cq_dy.filter + ' or ' + '(yytj=''穴注''  and ksrq=' + '''' + kdrq + ''')';
  frm_yzinput.sp_zxjl_cq_dy.Filtered := True;

end;



procedure Tfrm_zxdxd.pro_cqxd_a4_id(m:integer);
var kdrq,yzid:string;
    i, y, j, count, x,hs,n: Integer;
    aControl: TControl;
    v_Filter:string;
begin
  v_Filter:=frm_yzinput.sp_zxjl_cq_dy.Filter;
  yzid:= frm_yzinput.sp_zxjl_cq_dy.FieldByName('id').AsString;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := False;
  frm_yzinput.sp_zxjl_cq_dy.Filter := 'id='+yzid;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := True;
  hs:=StrToInt(ComboBox1.Text)-1;
  if not frm_yzinput.sp_zxjl_cq_dy.IsEmpty then
  begin
    frm_yzinput.sp_zxjl_cq_dy.First;
    if frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs mod 5 <> 0 then
      y := trunc( (frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs) / 5 ) + 1
    else
      y := trunc( (frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs) / 5 );
    count := frm_yzinput.sp_zxjl_cq_dy.RecordCount+hs;
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
            if (i=1) and (j<hs+1) then
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
              TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ksrq' ).AsString;
            aControl := DetailBand1.FindChildControl( 'kdysmc' + IntToStr( j - 1 ) );
            if aControl is TQRLabel then
              TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;
            if frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
            begin
              x := ( length( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
              DetailBand1.FindChildControl( 'QRgrImage' + IntToStr( j ) ).enabled := true;
              DetailBand1.FindChildControl( 'QRgrImage' + IntToStr( j ) ).Top := TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).top;
              DetailBand1.FindChildControl( 'QRgrImage' + IntToStr( j ) ).left := DetailBand1.FindChildControl( 'ypyf' + IntToStr( j - 1 ) ).left - 20;
              DetailBand1.FindChildControl( 'qrgrimage' + IntToStr( j ) ).height := 30;
              TQRLabel( DetailBand1.FindChildControl( 'ypyf' + IntToStr( j - 1 ) ) ).Caption := trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
              TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
              //TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end
            else
            begin
              DetailBand1.FindChildControl( 'qrgrimage' + IntToStr( j ) ).enabled := false;
              DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ).Width := 235;
              TQRLabel( DetailBand1.FindChildControl( 'ypyf' + IntToStr( j - 1 ) ) ).Caption := '';
              TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
             // TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
            end;
            frm_yzinput.sp_zxjl_cq_dy.Next;
            end;
          end;
        end
        else
        begin

          if (i=1) and (j<hs+1) then
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
            TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ksrq' ).asstring;
          aControl := DetailBand1.FindChildControl( 'kdysmc' + IntToStr( j - 1 ) );
          if aControl is TQRLabel then
            TQRLabel( aControl ).Caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'kdysmc' ).asstring;
          if frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'fzph' ).asstring <> '' then
          begin
            x := ( length( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring ) * 8 ) div 200;
            DetailBand1.FindChildControl( 'QRgrImage' + IntToStr( j ) ).enabled := true;
            DetailBand1.FindChildControl( 'QRgrImage' + IntToStr( j ) ).Top := TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).top;
            DetailBand1.FindChildControl( 'qrgrimage' + IntToStr( j ) ).left := DetailBand1.FindChildControl( 'ypyf' + IntToStr( j - 1 ) ).left - 20;
            DetailBand1.FindChildControl( 'qrgrimage' + IntToStr( j ) ).height := 30;
            TQRLabel( DetailBand1.FindChildControl( 'ypyf' + IntToStr( j - 1 ) ) ).Caption := trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + '  ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
            TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring;
          //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
          end
          else
          begin
            DetailBand1.FindChildControl( 'qrgrimage' + IntToStr( j ) ).enabled := false;
            DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ).Width := 235;
            TQRLabel( DetailBand1.FindChildControl( 'ypyf' + IntToStr( j - 1 ) ) ).Caption := '';
            TQRLabel( DetailBand1.FindChildControl( 'xmmc' + IntToStr( j - 1 ) ) ).caption := frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'xmmc' ).Asstring + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'yytj' ).asstring ) + ' ' + trim( frm_yzinput.sp_zxjl_cq_dy.FieldByName( 'ypyf' ).asstring );
          //  TQRLabel( DetailBand1.FindChildControl( 'tzrq' + IntToStr( j - 1 ) ) ).caption := sp_zxjl_cq_dy.FieldByName( 'tzrq' ).Asstring;
          end;
          frm_yzinput.sp_zxjl_cq_dy.Next;
          end;
        end;
      end;
      if i=1 then       
      begin
//      QRBand4.Enabled:=false;
      QRLabel2.Enabled:=false;  
      QRLabel3.Enabled:=false;  
      QRLabel20.Enabled:=false;  
      QRLabel21.Enabled:=false;  
      QRLabel26.Enabled:=false;  
      ny.Enabled:=false;  
      QRLabel1.Enabled:=false;  
      QRLabel2.Enabled:=false;
      QRLabel3.Enabled:=false;  
      QRLabel7.Enabled:=false; 
      QRLabel57.Enabled:=false;  
      QRLabel61.Enabled:=false;   

                          //'性别:' + sp_jbxx.fieldbyname( 'brxb' ).asstring +'      '+
                          //'年龄:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
      //QuickRep3.Prepare;
      QRLabel57.Enabled:=false;  

      for n := 175 to 195 do
      begin
        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;          
      end;

      for n := 197 to 198 do
      begin
        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;          
      end;


      for n := 28 to 45 do
      begin
        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
      end;

      for n := 47 to 71 do
      begin
        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;          
      end;

      for n := 18 to 21 do
      begin
        QRBand4.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=false;        
      end;

       for n := 26 to 26 do
      begin
        QRBand4.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=false;           
      end;

      for n := 28 to 30 do
      begin
        QRBand4.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=false;            
      end;

      for n := 15 to 15 do
      begin
        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;         
      end;

      for n := 18 to 21 do
      begin
        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;          
      end;

      for n := 46 to 46 do
      begin
        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;          
      end;

      for n := 26 to 27 do
      begin
        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=false;
      end;
      
      QuickRep3.Preview;
      end
      else
      begin

//    QRBand4.Enabled:=True;
      QRLabel2.Enabled:=true;  
      QRLabel3.Enabled:=true;  
      QRLabel20.Enabled:=true;  
      QRLabel21.Enabled:=true;  
      QRLabel26.Enabled:=true;  
      ny.Enabled:=true;  
      QRLabel1.Enabled:=true;  
      QRLabel2.Enabled:=true;
      QRLabel3.Enabled:=true;  
      QRLabel7.Enabled:=true; 
      QRLabel57.Enabled:=true;  
      QRLabel61.Enabled:=true;  

                          //'性别:' + sp_jbxx.fieldbyname( 'brxb' ).asstring +'      '+
                          //'年龄:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
      //QuickRep3.Prepare;
      QRLabel57.Enabled:=true;  

      for n := 175 to 195 do
      begin
        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;          
      end;

      for n := 197 to 198 do
      begin
        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;          
      end;


      for n := 28 to 45 do
      begin
        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;
      end;

      for n := 47 to 71 do
      begin
        DetailBand1.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;          
      end;

      for n := 18 to 21 do
      begin
        QRBand4.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=true;        
      end;

       for n := 26 to 26 do
      begin
        QRBand4.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=true;           
      end;

      for n := 28 to 30 do
      begin
        QRBand4.FindChildControl( 'QRlabel' + IntToStr( n ) ).Enabled:=true;            
      end;

      for n := 15 to 15 do
      begin
        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;         
      end;

      for n := 18 to 21 do
      begin
        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;          
      end;

      for n := 46 to 46 do
      begin
        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;          
      end;

      for n := 26 to 27 do
      begin
        QRBand4.FindChildControl( 'QRShape' + IntToStr( n ) ).Enabled:=true;
      end;

      if m=1 then
        QRLabel2.Caption := pub_yymc + '长期输液计划执行单'
      else if m=2 then
       QRLabel2.Caption := pub_yymc + '长期治疗计划执行单'
      else if m=3 then
      begin
        if frm_yzinput.sp_zxjl_cq_dy.FieldByName('yytj').AsString<>'口服' then
        
          QRLabel2.Caption := pub_yymc + '长期注射计划执行单'
        else
          QRLabel2.Caption := pub_yymc + '口服药计划执行单';
      end
      else if m=4 then
       QRLabel2.Caption := pub_yymc + '临时输液计划执行单'
      else if m=5 then
       QRLabel2.Caption := pub_yymc + '临时治疗计划执行单'
      else if m=6 then
       QRLabel2.Caption := pub_yymc + '临时注射计划执行单';

      DM_data.qry_pub.Close;
      DM_data.qry_pub.SQL.text:='select * from sys_kscwsz where bqdm='+''''+pub_bqdm+''''+' and bcbh='+''''+trim(frm_yzinput.sp_jbxx.fieldbyname( 'bch' ).asstring)+'''';
      DM_data.qry_pub.Open;

      QRLabel3.Caption := '姓名:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxm' ).asstring;
      QRLabel20.Caption := '病床号:' + Trim(DM_data.qry_pub.FieldByName('yybch').asstring);
      QRLabel21.Caption := '性别:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxb' ).asstring;
      QRLabel26.Caption := '年龄:' + trim( frm_yzinput.sp_jbxx.fieldbyname( 'brnl' ).asstring );
      ny.Caption := FormatDateTime( 'yyyy', frm_func.curr_date ) + '年';

      QRLabel61.Caption:='姓名:' + frm_yzinput.sp_jbxx.fieldbyname( 'brxm' ).asstring+'      '+
                          '病床号:' + Trim(DM_data.qry_pub.FieldByName('yybch').asstring)+'      '+
                          '卡号:' + Trim( frm_yzinput.sp_jbxx.fieldbyname( 'tmh' ).asstring  );
                          //'性别:' + sp_jbxx.fieldbyname( 'brxb' ).asstring +'      '+
                          //'年龄:' + trim( sp_jbxx.fieldbyname( 'brnl' ).asstring );
      //QuickRep3.Prepare;
      QRLabel57.Caption := '审核医生:';
      QuickRep3.Preview;
      end;
     end;
  end;
    frm_yzinput.sp_zxjl_cq_dy.Filtered := False;
  frm_yzinput.sp_zxjl_cq_dy.Filter := v_Filter;
  frm_yzinput.sp_zxjl_cq_dy.Filtered := True;

end;


end.

