unit p_crbbgk;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Db, ADODB, ExtCtrls, Buttons, DBCtrls, Mask, DBCtrlsEh,
  QuickRpt, Qrctrls, ComCtrls, GridsEh, DBGridEh, Grids, DBGrids, SXAgeBox,
  DateUtils, DBGridEhGrouping;

type
  TFrm_crbbgk = class(TForm)
    ADOInsert: TADODataSet;
    DSinsert: TDataSource;
    QryPrint: TADOQuery;
    DSPrint: TDataSource;
    QryLook: TADOQuery;
    Panel1: TPanel;
    ad_sys: TADODataSet;
    DBGridEh1: TDBGridEh;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel7: TPanel;
    B_save: TBitBtn;
    BitBtn6: TBitBtn;
    Button1: TButton;
    Label13: TLabel;
    Label23: TLabel;
    ksrq: TDateTimePicker;
    jsrq: TDateTimePicker;
    BitBtn1: TBitBtn;
    Button2: TButton;
    Panel4: TPanel;
    Panel5: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label41: TLabel;
    DBEdit1: TDBEdit;
    DBComboBox1: TDBComboBox;
    Panel6: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    Label14: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label15: TLabel;
    Label11: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBComboBox2: TDBComboBox;
    DBEdit5: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit9: TDBEdit;
    DBComboBox3: TDBComboBox;
    DBComboBox4: TDBComboBox;
    DBComboBox5: TDBComboBox;
    DBComboBox6: TDBComboBox;
    DBDateTimeEditEh2: TDBDateTimeEditEh;
    DBDateTimeEditEh3: TDBDateTimeEditEh;
    DBDateTimeEditEh4: TDBDateTimeEditEh;
    DBEdit16: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit20: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    DBEdit21: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit4: TDBEdit;
    ADODataSet3: TADODataSet;
    DataSource3: TDataSource;
    DBGrid1: TDBGrid;
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel3: TQRLabel;
    DetailBand1: TQRBand;
    QRLabel2: TQRLabel;
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
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRShape6: TQRShape;
    QRLabel1: TQRLabel;
    QRLabel235: TQRLabel;
    QRLabel236: TQRLabel;
    QRLabel237: TQRLabel;
    QRLabel239: TQRLabel;
    QRLabel238: TQRLabel;
    QRLabel240: TQRLabel;
    QRLabel241: TQRLabel;
    QRLabel242: TQRLabel;
    QRLabel243: TQRLabel;
    QRLabel244: TQRLabel;
    QRLabel245: TQRLabel;
    QRLabel246: TQRLabel;
    QRLabel247: TQRLabel;
    QRLabel248: TQRLabel;
    QRLabel249: TQRLabel;
    QRLabel251: TQRLabel;
    QRLabel252: TQRLabel;
    QRLabel253: TQRLabel;
    QRLabel254: TQRLabel;
    QRLabel255: TQRLabel;
    QRLabel256: TQRLabel;
    QRLabel257: TQRLabel;
    QRLabel258: TQRLabel;
    QRLabel259: TQRLabel;
    QRLabel260: TQRLabel;
    QRLabel261: TQRLabel;
    QRLabel262: TQRLabel;
    QRLabel263: TQRLabel;
    QRLabel264: TQRLabel;
    QRLabel265: TQRLabel;
    QRLabel266: TQRLabel;
    QRLabel267: TQRLabel;
    QRLabel268: TQRLabel;
    Label24: TLabel;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    Label25: TLabel;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    nl: TSXAgeBox;
    dtp1: TDateTimePicker;
    QRLabel250: TQRLabel;
    QRLabel269: TQRLabel;
    QRLabel270: TQRLabel;
    QRLabel271: TQRLabel;
    qry_cx_nl: TADOQuery;
    qry_age: TADOQuery;
    qry_xx: TADOQuery;
    QRLabel272: TQRLabel;
    QRLabel273: TQRLabel;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    edt1: TEdit;
    qckrp2: TQuickRep;
    qrbndPageHeaderBand1: TQRBand;
    qrlbl297: TQRLabel;
    qrlbl298: TQRLabel;
    qrlbl299: TQRLabel;
    qrlbl300: TQRLabel;
    qrlbl301: TQRLabel;
    qrlbl302: TQRLabel;
    qrlbl303: TQRLabel;
    qrlbl304: TQRLabel;
    qrbndDetailBand1: TQRBand;
    qrlbl305: TQRLabel;
    qrlbl306: TQRLabel;
    qrdbtxthzxm1: TQRDBText;
    qrlbl307: TQRLabel;
    qrdbtxtjzxm1: TQRDBText;
    qrlbl308: TQRLabel;
    qrlbl309: TQRLabel;
    qrlbl310: TQRLabel;
    qrlbl311: TQRLabel;
    qrlbl312: TQRLabel;
    qrlbl313: TQRLabel;
    qrlbl314: TQRLabel;
    qrlbl315: TQRLabel;
    qrlbl316: TQRLabel;
    qrlbl317: TQRLabel;
    qrlbl318: TQRLabel;
    qrlbl319: TQRLabel;
    qrlbl320: TQRLabel;
    qrlbl321: TQRLabel;
    qrlbl322: TQRLabel;
    qrlbl323: TQRLabel;
    qrlbl324: TQRLabel;
    qrlbl325: TQRLabel;
    qrlbl326: TQRLabel;
    qrlbl327: TQRLabel;
    qrlbl328: TQRLabel;
    qrlbl329: TQRLabel;
    qrlbl330: TQRLabel;
    qrlbl331: TQRLabel;
    qrlbl332: TQRLabel;
    qrdbtxtcsrq2: TQRDBText;
    qrlbl333: TQRLabel;
    qrdbtxtnl1: TQRDBText;
    qrlbl334: TQRLabel;
    qrlbl335: TQRLabel;
    qrlbl336: TQRLabel;
    qrlbl337: TQRLabel;
    qrlbl338: TQRLabel;
    qrlbl339: TQRLabel;
    qrlbl340: TQRLabel;
    qrlbl341: TQRLabel;
    qrlbl342: TQRLabel;
    qrlbl343: TQRLabel;
    qrlbl344: TQRLabel;
    qrlbl345: TQRLabel;
    qrlbl346: TQRLabel;
    qrlbl347: TQRLabel;
    qrdbtxtxzdzmc1: TQRDBText;
    qrlbl348: TQRLabel;
    qrlbl349: TQRLabel;
    qrlbl350: TQRLabel;
    qrlbl351: TQRLabel;
    qrlbl352: TQRLabel;
    qrlbl353: TQRLabel;
    qrlbl354: TQRLabel;
    qrlbl355: TQRLabel;
    qrlbl356: TQRLabel;
    qrlbl357: TQRLabel;
    qrlbl358: TQRLabel;
    qrlbl359: TQRLabel;
    qrlbl360: TQRLabel;
    qrlbl361: TQRLabel;
    qrlbl362: TQRLabel;
    qrlbl363: TQRLabel;
    qrlbl364: TQRLabel;
    qrlbl365: TQRLabel;
    qrlbl366: TQRLabel;
    qrlbl367: TQRLabel;
    qrlbl368: TQRLabel;
    qrlbl369: TQRLabel;
    qrlbl370: TQRLabel;
    qrlbl371: TQRLabel;
    qrlbl372: TQRLabel;
    qrlbl373: TQRLabel;
    qrlbl374: TQRLabel;
    qrlbl375: TQRLabel;
    qrlbl376: TQRLabel;
    qrlbl377: TQRLabel;
    qrlbl378: TQRLabel;
    qrlbl379: TQRLabel;
    qrlbl380: TQRLabel;
    qrlbl381: TQRLabel;
    qrlbl382: TQRLabel;
    qrlbl383: TQRLabel;
    qrlbl384: TQRLabel;
    qrlbl385: TQRLabel;
    qrdbtxtqtzy1: TQRDBText;
    qrlbl386: TQRLabel;
    qrlbl387: TQRLabel;
    qrlbl388: TQRLabel;
    qrlbl389: TQRLabel;
    qrlbl390: TQRLabel;
    qrlbl391: TQRLabel;
    qrlbl392: TQRLabel;
    qrlbl393: TQRLabel;
    qrlbl394: TQRLabel;
    qrlbl395: TQRLabel;
    qrlbl396: TQRLabel;
    qrlbl397: TQRLabel;
    qrlbl398: TQRLabel;
    qrlbl399: TQRLabel;
    qrlbl400: TQRLabel;
    qrlbl401: TQRLabel;
    qrlbl402: TQRLabel;
    qrlbl403: TQRLabel;
    qrdbtxtfbrq2: TQRDBText;
    qrdbtxtzdrq2: TQRDBText;
    qrlbl404: TQRLabel;
    qrshp8: TQRShape;
    qrlbl405: TQRLabel;
    qrlbl406: TQRLabel;
    qrlbl407: TQRLabel;
    qrlbl408: TQRLabel;
    qrlbl409: TQRLabel;
    qrshp9: TQRShape;
    qrlbl410: TQRLabel;
    qrlbl411: TQRLabel;
    qrlbl412: TQRLabel;
    qrlbl413: TQRLabel;
    qrlbl414: TQRLabel;
    qrlbl415: TQRLabel;
    qrlbl416: TQRLabel;
    qrlbl417: TQRLabel;
    qrlbl418: TQRLabel;
    qrlbl419: TQRLabel;
    qrlbl420: TQRLabel;
    qrlbl421: TQRLabel;
    qrlbl422: TQRLabel;
    qrlbl423: TQRLabel;
    qrlbl424: TQRLabel;
    qrlbl425: TQRLabel;
    qrlbl426: TQRLabel;
    qrlbl427: TQRLabel;
    qrlbl428: TQRLabel;
    qrlbl429: TQRLabel;
    qrlbl430: TQRLabel;
    qrlbl431: TQRLabel;
    qrlbl432: TQRLabel;
    qrlbl433: TQRLabel;
    qrlbl434: TQRLabel;
    qrlbl435: TQRLabel;
    qrlbl436: TQRLabel;
    qrlbl437: TQRLabel;
    qrlbl438: TQRLabel;
    qrlbl439: TQRLabel;
    qrlbl440: TQRLabel;
    qrlbl441: TQRLabel;
    qrlbl442: TQRLabel;
    qrlbl443: TQRLabel;
    qrlbl444: TQRLabel;
    qrlbl445: TQRLabel;
    qrlbl446: TQRLabel;
    qrlbl447: TQRLabel;
    qrlbl448: TQRLabel;
    qrlbl449: TQRLabel;
    qrlbl450: TQRLabel;
    qrlbl451: TQRLabel;
    qrlbl452: TQRLabel;
    qrlbl453: TQRLabel;
    qrlbl454: TQRLabel;
    qrlbl455: TQRLabel;
    qrlbl456: TQRLabel;
    qrlbl457: TQRLabel;
    qrlbl458: TQRLabel;
    qrlbl459: TQRLabel;
    qrlbl460: TQRLabel;
    qrlbl461: TQRLabel;
    qrlbl462: TQRLabel;
    qrlbl463: TQRLabel;
    qrlbl464: TQRLabel;
    qrlbl465: TQRLabel;
    qrlbl466: TQRLabel;
    qrlbl467: TQRLabel;
    qrlbl468: TQRLabel;
    qrlbl469: TQRLabel;
    qrlbl470: TQRLabel;
    qrlbl471: TQRLabel;
    qrlbl472: TQRLabel;
    qrlbl473: TQRLabel;
    qrlbl474: TQRLabel;
    qrlbl475: TQRLabel;
    qrlbl476: TQRLabel;
    qrlbl477: TQRLabel;
    qrlbl478: TQRLabel;
    qrlbl479: TQRLabel;
    qrlbl480: TQRLabel;
    qrlbl481: TQRLabel;
    qrlbl482: TQRLabel;
    qrlbl483: TQRLabel;
    qrlbl484: TQRLabel;
    qrlbl485: TQRLabel;
    qrlbl486: TQRLabel;
    qrlbl487: TQRLabel;
    qrlbl488: TQRLabel;
    qrlbl489: TQRLabel;
    qrlbl490: TQRLabel;
    qrlbl491: TQRLabel;
    qrlbl492: TQRLabel;
    qrlbl493: TQRLabel;
    qrlbl494: TQRLabel;
    qrlbl495: TQRLabel;
    qrlbl496: TQRLabel;
    qrlbl497: TQRLabel;
    qrlbl498: TQRLabel;
    qrlbl499: TQRLabel;
    qrshp10: TQRShape;
    qrlbl500: TQRLabel;
    qrlbl501: TQRLabel;
    qrlbl502: TQRLabel;
    qrlbl503: TQRLabel;
    qrlbl504: TQRLabel;
    qrlbl505: TQRLabel;
    qrlbl506: TQRLabel;
    qrlbl507: TQRLabel;
    qrlbl508: TQRLabel;
    qrlbl509: TQRLabel;
    qrlbl510: TQRLabel;
    qrlbl511: TQRLabel;
    qrlbl512: TQRLabel;
    qrlbl513: TQRLabel;
    qrlbl514: TQRLabel;
    qrlbl515: TQRLabel;
    qrlbl516: TQRLabel;
    qrlbl517: TQRLabel;
    qrlbl518: TQRLabel;
    qrlbl520: TQRLabel;
    qrshp11: TQRShape;
    qrlbl521: TQRLabel;
    qrdbtxtqtcrb1: TQRDBText;
    qrshp12: TQRShape;
    qrlbl522: TQRLabel;
    qrlbl523: TQRLabel;
    qrlbl524: TQRLabel;
    qrlbl525: TQRLabel;
    qrlbl526: TQRLabel;
    qrlbl527: TQRLabel;
    qrlbl528: TQRLabel;
    qrdbtxtdzbm1: TQRDBText;
    qrdbtxttkyy1: TQRDBText;
    qrdbtxtlxdh7: TQRDBText;
    qrdbtxttkrq2: TQRDBText;
    qrdbtxtbz1: TQRDBText;
    qrshp13: TQRShape;
    qrlbl529: TQRLabel;
    qrlbl530: TQRLabel;
    qrlbl531: TQRLabel;
    qrlbl532: TQRLabel;
    qrlbl533: TQRLabel;
    qrlbl534: TQRLabel;
    qrdbtxtgzdw1: TQRDBText;
    qrdbtxtlxdh8: TQRDBText;
    qrlbl274: TQRLabel;
    qrlbl275: TQRLabel;
    qrlbl276: TQRLabel;
    qrshp7: TQRShape;
    qrlbl278: TQRLabel;
    qrlbl277: TQRLabel;
    qrlbl279: TQRLabel;
    qrlbl280: TQRLabel;
    qrlbl281: TQRLabel;
    qrlbl282: TQRLabel;
    qrlbl283: TQRLabel;
    qrdbtxtlxdh2: TQRDBText;
    qrlbl284: TQRLabel;
    qrlbl285: TQRLabel;
    qrlbl286: TQRLabel;
    qrlbl287: TQRLabel;
    qrlbl288: TQRLabel;
    qrlbl289: TQRLabel;
    qrlbl290: TQRLabel;
    qrlbl291: TQRLabel;
    qrlbl292: TQRLabel;
    qrlbl293: TQRLabel;
    qrlbl294: TQRLabel;
    qrdbtxtlxdh3: TQRDBText;
    qrdbtxtlxdh4: TQRDBText;
    qrdbtxtlxdh5: TQRDBText;
    qrdbtxtlxdh6: TQRDBText;
    qrlbl295: TQRLabel;
    qrlbl296: TQRLabel;
    qrlbl1: TQRLabel;
    pnl1: TPanel;
    lbl1: TLabel;
    qrlbl2: TQRLabel;
    qrlbl3: TQRLabel;
    qrlbl4: TQRLabel;
    qrlbl5: TQRLabel;
    qrlbl6: TQRLabel;
    qrlbl7: TQRLabel;
    qrdbtxtxzdzmc: TQRDBText;
    qrdbtxtxzdzmc2: TQRDBText;
    qrdbtxtxzdzmc3: TQRDBText;
    qrdbtxtxzdzmc4: TQRDBText;
    qrdbtxtxzdzmc5: TQRDBText;
    pnl2: TPanel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    dbedtdm: TDBEdit;
    dbedtdm1: TDBEdit;
    dbedtdm2: TDBEdit;
    dbedtdm3: TDBEdit;
    dbedtdm4: TDBEdit;
    dbedtdm5: TDBEdit;
    dbedtmph: TDBEdit;
    dbedtmph1: TDBEdit;
    dbedtmph3: TDBEdit;
    dbedtmph5: TDBEdit;
    dbedtmph6: TDBEdit;
    dbchk1: TDBCheckBox;
    dbcbb1: TDBComboBox;
    dbcbbhbclgm_jg: TDBComboBox;
    qrlbl8: TQRLabel;
    qrlbl9: TQRLabel;
    qrlbl10: TQRLabel;
    qry_jbmc: TADOQuery;
    ds_jbmc: TDataSource;
    dbgrd_jbxx: TDBGrid;
    dbgrd_dz: TDBGrid;
    ds_dz: TDataSource;
    qry_dz: TADOQuery;
    procedure Button1Click(Sender: TObject);
    procedure B_saveClick(Sender: TObject);
    procedure zgcrbbgk;
    procedure ddzgcrbbgk;//掇刀打印
    procedure mycheck;
    procedure FormShow(Sender: TObject);
    procedure DBEdit9DblClick(Sender: TObject);
    procedure DBEdit18DblClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure DBEdit19DblClick(Sender: TObject);
    procedure DBGridEh1CellClick(Column: TColumnEh);
    procedure Button2Click(Sender: TObject);
    procedure ADOInsertAfterScroll(DataSet: TDataSet);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1Exit(Sender: TObject);
    procedure DBEdit9KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit18Exit(Sender: TObject);
    procedure DBEdit18KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit19Exit(Sender: TObject);
    procedure DBEdit19KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit6KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn6Click(Sender: TObject);
    procedure nlExit(Sender: TObject);
    procedure nlKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure dtp1Exit(Sender: TObject);
    procedure dtp1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure setReadOnly();
    procedure Panel6Click(Sender: TObject);
    procedure DBEdit11DblClick(Sender: TObject);
    procedure DBEdit11Exit(Sender: TObject);
    procedure DBEdit11KeyPress(Sender: TObject; var Key: Char);
    procedure dbgrd_jbxxKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit14KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit12KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure dbedtdmKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbedtdm1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbedtdm2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbedtdm3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbgrd_dzKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    brxm, brdm: string;
    pub_sfhc, pub_C, dmzd, mczd, tablename, numf, charf, resultf, info: string;
    tempcom: TCustomEdit;
    procedure sjlr;
    function Func_Null(aControl: TCustomEdit; Msg: string; sfbt: boolean): Boolean;
    procedure finditems(dmzd, mczd, tablename, numf, charf, resultf, info: string; aControl: TCustomEdit; sfbt: boolean);
    procedure diableComponent;
    procedure enableComponent;
  end;

var
  Frm_crbbgk: TFrm_crbbgk;
  xdzt, llzt, xzzt, sfcx, xgzt, crb_bcbz: boolean;
procedure proc_get_crbsbk(Qry_Look: TCustomADODataSet; v_ghid: string);
implementation

uses p_dm, p_func, P_TreeView_dzcx; //,p_mzblinput

{$R *.DFM}

procedure proc_get_crbsbk(Qry_Look: TCustomADODataSet; v_ghid: string);
begin
  application.CreateForm(TFrm_crbbgk, Frm_crbbgk);
  try
    xdzt := false;
    llzt := false;
    xzzt := false;
    Frm_crbbgk.ADOInsert.close;
//    if pub_entrance = 1 then
//    begin
//      Frm_crbbgk.ADOInsert.commandtext := 'Select * from dzbl_crbbgk where czy=' + #39 + pub_czyxm + #39 +
//        ' and ghid=' + v_ghid;
//    end
//    else
    if qry_look.FieldByName('iscrb').AsBoolean then
    begin
      begin
        Frm_crbbgk.ADOInsert.commandtext := 'Select * from dzbl_crbbgk where ghid=' + v_ghid;
      end;
      Frm_crbbgk.ADOInsert.Open;
      if Frm_crbbgk.ADOInsert.IsEmpty then
      begin
        Frm_crbbgk.ADOInsert.Append;
        Frm_crbbgk.ADOInsert['dm'] := qry_look.FieldByName('tmh').asstring;
        Frm_crbbgk.ADOInsert['hzxm'] := qry_look.FieldByName('brxm').asstring;
        Frm_crbbgk.ADOInsert['icd10'] := qry_look.FieldByName('zyzd').asstring;
        Frm_crbbgk.ADOInsert['icd10mc'] := qry_look.FieldByName('zyzdmc').asstring;
        Frm_crbbgk.ADOInsert['xb'] := qry_look.FieldByName('brxb').asstring;
        Frm_crbbgk.ADOInsert['XXxzdz'] := qry_look.FieldByName('jtzz').asstring;
        Frm_crbbgk.ADOInsert.FieldByName('hzsfz').Value := qry_look.FieldByName('sfzhm').asstring;
        Frm_crbbgk.ADOInsert.FieldByName('csrq').Value := qry_look.FieldByName('csrq').AsDateTime;
        Frm_crbbgk.ADOInsert.FieldByName('nl').Value := qry_look.FieldByName('brnl').asstring;
        Frm_crbbgk.ADOInsert.FieldByName('bz').Value := qry_look.FieldByName('bz').asstring;
        Frm_crbbgk.ADOInsert['lrrq'] := frm_func.curr_date;
        Frm_crbbgk.ADOInsert['klb'] := '初次报告';
        Frm_crbbgk.ADOInsert['tkrq'] := frm_func.curr_date;
        Frm_crbbgk.ADOInsert['czy'] := pub_czyxm;
        frm_crbbgk.ADOInsert['fbrq'] := frm_func.curr_date;
        frm_crbbgk.ADOInsert['zdrq'] := frm_func.curr_date;
        frm_crbbgk.ADOInsert['ghid'] := v_ghid;
        frm_crbbgk.ADOInsert.Post;
        xzzt := true;
        Frm_crbbgk.ShowModal;
      end
      else
      begin
        if frm_crbbgk.ADOInsert.fieldbyname('sfxd').asboolean then
        begin
          if application.messagebox('已经填报过该病人的传染病报告卡,' + #13 + #10 + '并且该报告卡已经修订过，只能进行浏览！！' + #13 + #10 + '是否进入', '询问', mb_yesno) = idyes then
          begin
            llzt := true;
            Frm_crbbgk.ShowModal;
          end;
        end
        else
          if frm_crbbgk.ADOInsert.fieldbyname('sfsc').asboolean then
          begin
            if application.messagebox('已经填报过该病人的传染病报告卡,' + #13 + #10 + '并且该报告卡已经上传至管理部门，现在进入修订状态！！' + #13 + #10 + '是否进入', '询问', mb_yesno) = idyes then
            begin
              xdzt := true;
              Frm_crbbgk.ShowModal;
            end;
          end
          else
            if not frm_crbbgk.ADOInsert.fieldbyname('sfxd').asboolean then
            begin
              application.messagebox('已经填报过该病人的传染病报告卡,' + #13 + #10 + '该报告卡还没有上传至管理部门，可以自由修改！！', '提示', mb_ok);
              xgzt := true;
              Frm_crbbgk.ShowModal;
            end;
      end;
    end
    else
      Application.MessageBox('此病人并不是传染病人，请重新选择正确的传染病病人',
        '错误', MB_OK + MB_ICONSTOP);
  finally
    Frm_crbbgk.free;
  end;
end;

procedure TFrm_crbbgk.finditems(dmzd, mczd, tablename, numf, charf, resultf, info: string; aControl: TCustomEdit; sfbt: boolean);
var
  s: string;
begin
  s := Uppercase(trim(aControl.Text));
  if sfbt then
  begin
    if s = '' then
    begin
      messagedlg(info + '是必填项目，不能为空！', mterror, [mbok], 0);
      aControl.setfocus;
      abort;
    end;
  end
  else
  begin
    if s = '' then
      abort;
  end;
  tempcom := aControl;
  if pos('.', s) > 0 then s := copy(s, 1, pos('.', s) - 1);
  ADODataSet3.close;
  ADODataSet3.commandtext := 'select ' + numf + ',' + resultf + ' from ' + tablename + ' where rtrim(' + numf + ')=' + #39 + s + #39 + ' or upper(' + charf + ') like ' + #39 + '%' + s + '%' + #39 + ' or upper(' + resultf + ') like ' + #39 + '%' + s + '%' + #39;
  ADODataSet3.Open;
  if ADODataSet3.IsEmpty then
  begin
    messagedlg('代码输入错误，没有找到相应“' + info + '”', mterror, [mbok], 0);
    aControl.setfocus;
    abort;
  end
  else
    if ADODataSet3.RecordCount = 1 then
      sjlr
    else
    begin
      DBGrid1.Columns.Clear;
      DBGrid1.Columns.add;
      DBGrid1.Columns[0].field := ADODataSet3.fieldlist[0];
      DBGrid1.Columns[0].title.caption := '代码';
      DBGrid1.Columns.add;
      DBGrid1.Columns[1].field := ADODataSet3.fieldlist[1];
      DBGrid1.Columns[1].title.caption := info;
      if Frm_crbbgk.Width - DBEdit18.left > DBGrid1.Width then
        DBGrid1.left := panel3.left + dbedit9.left
      else
        DBGrid1.left := panel3.left + DBEdit18.left + DBEdit18.Width - DBGrid1.Width;
      DBGrid1.top := DBEdit18.top + DBEdit18.Height + panel3.top + 1;
      DBGrid1.visible := true;
      DBGrid1.setfocus;
    end;
end;

function TFrm_crbbgk.Func_Null(aControl: TCustomEdit; Msg: string; sfbt: boolean): Boolean;
begin
  if (trim(aControl.Text) = '') and sfbt then
  begin
    Result := true;
    Application.MessageBox(pchar(Msg), '错误提示', 16);
    aControl.setfocus;
    abort;
  end
  else
    Result := false;
end;

procedure TFrm_crbbgk.ADOInsertAfterScroll(DataSet: TDataSet);
begin
  if sfcx then
    panel4.Enabled := false;
end;

procedure TFrm_crbbgk.BitBtn1Click(Sender: TObject);
begin
  adoinsert.Close;
  adoinsert.CommandText := 'select * from dzbl_crbbgk where convert(char,tkrq,112)>=' + formatdatetime('yyyymmdd', ksrq.Date) +
    ' and convert(char,tkrq,112)<=' + formatdatetime('yyyymmdd', jsrq.Date) +
    ' and czy=' + #39 + pub_czyxm + #39 + ' order by tkrq ';
  adoinsert.Open;
  sfcx := true;
  panel4.Enabled := false;
end;

procedure TFrm_crbbgk.BitBtn6Click(Sender: TObject);
begin
  close;
end;

procedure TFrm_crbbgk.Button1Click(Sender: TObject);
begin
  if pub_yydm='0271' then
  begin
    ddzgcrbbgk;
  end else
    zgcrbbgk;
end;

procedure TFrm_crbbgk.Button2Click(Sender: TObject);
begin
  dbchk1.Enabled:=True;
  pnl2.Enabled:=True;
  pnl1.Enabled:=True;
  edt1.Enabled := true;
  llzt := false;
  xdzt := false;
  xzzt := false;
  xgzt := false;
  B_save.Enabled := True;
  if ADOInsert.Active and (ADOInsert.RecordCount > 0) then
  begin
    if ADOInsert.fieldbyname('sfxd').asboolean then
    begin
      if application.messagebox('已经填报过该病人的传染病报告卡,' + #13 + #10 + '并且该报告卡已经修订过，只能进行浏览！！' + #13 + #10 + '是否进入', '询问', mb_yesno) = idyes then
      begin
        llzt := true;
      end;
    end
    else
      if ADOInsert.fieldbyname('sfsc').asboolean then
      begin
        if application.messagebox('已经填报过该病人的传染病报告卡,' + #13 + #10 + '并且该报告卡已经上传至管理部门，现在进入修订状态！！' + #13 + #10 + '是否进入', '询问', mb_yesno) = idyes then
        begin
          xdzt := true;
        end;
      end
      else
        if not ADOInsert.fieldbyname('sfxd').asboolean then
        begin
          application.messagebox('已经填报过该病人的传染病报告卡,' + #13 + #10 + '该报告卡还没有上传至管理部门，可以自由修改！！', '提示', mb_ok);
          xgzt := true;
        end;
    if xgzt then
    begin
      panel4.enabled := true;
      ADOInsert.Edit;
      enableComponent;
    end;
    if xdzt then
    begin
      adoinsert.Edit;
      adoinsert['klb'] := '订正报告';
      adoinsert['sfxd'] := true;
      adoinsert['xdrq'] := frm_func.curr_date();
      panel4.Enabled := true;
      b_save.Enabled := true;
      enableComponent;
    end;
    if llzt then
    begin
      panel4.Enabled := false;
      adoinsert.LockType := ltreadonly;
      b_save.enabled := true;
    end;
  end;
end;

procedure TFrm_crbbgk.mycheck;
var
  VarPym: string;
  varyuanzhi, _nl: real;
  Varint, showint: integer;
  Varshow: string;
begin
  Varshow := #13;
  showint := 1;
  if trim(DBEdit1.text) = '' then
  begin
    Varshow := Varshow + FormatFloat('00', showint) + '  卡号编号不能为空                 ' + #13#10;
    showint := showint + 1;
  end
  else
  begin
    if xzzt then
    begin
      QryLook.close;
      QryLook.SQL.clear;
      QryLook.SQL.Add('Select * from dzbl_crbbgk Where dm=''' + trim(DBEdit1.text) + '''');
      QryLook.Open;
      if not QryLook.IsEmpty then
      begin
        Varshow := Varshow + FormatFloat('00', showint) + '  卡号编号已经被使用，请确认后重新输入一个                 ' + #13#10;
        showint := showint + 1;
      end;
    end;
  end;
  if trim(DBEdit2.text) = '' then
  begin
    Varshow := Varshow + FormatFloat('00', showint) + '  患者姓名不能为空                 ' + #13#10;
    showint := showint + 1;
  end;
  if trim(DBComboBox2.text) = '' then
  begin
    Varshow := Varshow + FormatFloat('00', showint) + '  患者性别不能为空                 ' + #13#10;
    showint := showint + 1;
  end;
     {
    if (trim(DBDateTimeEditEh1.text) = '-  -') and (trim(dbedit6.text) <> '') then
    begin
      if (uppercase(COPY(dbedit6.Text, LENGTH(dbedit6.Text), 1)) <> 'Y') and
        (uppercase(COPY(dbedit6.Text, LENGTH(dbedit6.Text), 1)) <> 'D') and
        (uppercase(COPY(dbedit6.Text, LENGTH(dbedit6.Text), 1)) <> 'M') then
        Varshow := Varshow + FormatFloat('00', showint) + '  患者的年龄格式错误      ' + #13#10;
      showint := showint + 1;
    end
    else
    begin
      if (trim(DBDateTimeEditEh1.text) <> '-  -') then
      begin
        QryLook.close;
        QryLook.sql.Clear;
        QryLook.SQL.Add('Select nl=DateDiff(yyyy,''' + trim(DBDateTimeEditEh1.text) + '''' + ',GetDate())-14');
        QryLook.Open;
        nl := QryLook.FieldBYName('nl').AsFloat + 14;
      end
      else
      begin
        try
          if uppercase(COPY(dbedit6.Text, LENGTH(dbedit6.Text), 1)) = 'Y' then
            nl := strtofloat(COPY(dbedit6.Text, 1, LENGTH(dbedit6.Text) - 1))
          else
            NL := 1
        except

        end;
      end;
         }
  _nl := YearsBetween(Frm_func.curr_date, dtp1.DateTime);
  if (_nl <= 14) and (trim(DBEdit3.text) = '') then
  begin
    Varshow := Varshow + FormatFloat('00', showint) + '  患者为儿童、请填写家长姓名                 ' + #13#10;
    showint := showint + 1;
  end;
   // end;
  {If trim(DBComboBox3.text)='' Then
    Begin
     Varshow:=Varshow+FormatFloat('00',showint)+'  患者所在的所属地不能为空                '+#13#10;
     showint:=showint+1;
    end; }
  if trim(DBEdit9.text) = '' then
  begin
    Varshow := Varshow + FormatFloat('00', showint) + '  患者的现住地址不能为空                ' + #13#10;
    showint := showint + 1;
  end;
  if trim(DBComboBox4.text) = '' then
  begin
    Varshow := Varshow + FormatFloat('00', showint) + '  患者的职业不能为空                ' + #13#10;
    showint := showint + 1;
  end;
  {If (trim(DBComboBox5.text)='') OR (trim(DBComboBox6.text)='') Then
    Begin
     Varshow:=Varshow+FormatFloat('00',showint)+'  病例分类不能为空                '+#13#10;
     showint:=showint+1;
    end; }
  if trim(DBDateTimeEditEh2.text) = '-  -' then
  begin
    Varshow := Varshow + FormatFloat('00', showint) + '  患者的发病日期不能为空                ' + #13#10;
    showint := showint + 1;
  end;
  if trim(DBDateTimeEditEh3.text) = '-  -' then
  begin
    Varshow := Varshow + FormatFloat('00', showint) + '  患者的诊断日期不能为空                ' + #13#10;
    showint := showint + 1;
  end;
  if (ADOInsert.fieldbyname('icd10').asstring = '') and (ADOInsert.fieldbyname('jbbz').asstring = '') then
  begin
    Varshow := Varshow + FormatFloat('00', showint) + '  患者的诊断名称或传染病病种必须至少填入一个！！' + #13#10;
    showint := showint + 1;
  end;
  if (ADOInsert.fieldbyname('zdlxmc').asstring = '') then
  begin
    Varshow := Varshow + FormatFloat('00', showint) + '  患者的诊断类型必须确定！！' + #13#10;
    showint := showint + 1;
  end;
  if trim(Varshow) <> '' then
  begin
    Application.MessageBox(Pchar(Varshow), '信息提示', 48);
    Abort;
  end;
end;

procedure TFrm_crbbgk.nlExit(Sender: TObject);
begin
  dtp1.DateTime := nl.Csrq;
end;

procedure TFrm_crbbgk.nlKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 13 then
    dtp1.SetFocus;
end;

procedure TFrm_crbbgk.Panel6Click(Sender: TObject);
begin
  if DBEdit1.Enabled = False then
  begin
    Application.MessageBox('请先点击修改按钮！', '提示', MB_OK +
      MB_ICONINFORMATION);
    Exit;
  end;
end;

procedure TFrm_crbbgk.B_saveClick(Sender: TObject);
var
  Yr, Mnth, Day: Word;
  Yr1, Mnth1, Day1: word;
begin
  if ADOInsert.Active and (ADOInsert.RecordCount > 0) then
  begin
    mycheck;
    ADOInsert.Edit;
    if trim(nl.Text) = '' then
      nl.Csrq := dtp1.DateTime;
    ADOInsert['nl'] := nl.Text;
    ADOInsert['csrq'] := dtp1.DateTime;
    ADOInsert.Post;
    ADOInsert.UpdateBatch(Arall);
    //zgcrbbgk;
    B_save.Enabled := False;
    Button1.Enabled := True;
    edt1.Enabled := False;
    pnl1.Enabled:=false;
    pnl2.Enabled:=false;
    dbchk1.Enabled:=false;
    sfcx := false;
    crb_bcbz := True;
    diableComponent;
    Application.MessageBox('保存成功！', '提示', MB_OK +
      MB_ICONINFORMATION);
  end;
end;
procedure TFrm_crbbgk.ddzgcrbbgk;
var
  hzsfz, hzzy, xzdzlx, zdlxmc, zdblfl: string;
begin
  qrlbl300.Caption := '';
  qrlbl302.Caption := '';
  QryPrint.close;
  QryPrint.Parameters.ParamByName('Vardm').Value := trim(DBEdit1.text);
  QryPrint.Open;
  qrlbl304.caption := trim(QryPrint.FieldByName('dm').asString);
  hzzy := Copy(Trim(QryPrint.FieldByName('hzzy').AsString), Pos('-', Trim(QryPrint.FieldByName('hzzy').AsString)) + 1, length(QryPrint.FieldByName('hzzy').AsString));
  if (not QryPrint.FieldByName('xzdzlx').IsNull) and (QryPrint.FieldByName('xzdzlx').AsString <> '') then
  begin
    xzdzlx := Copy(Trim(QryPrint.FieldByName('xzdzlx').AsString), Pos('-', Trim(QryPrint.FieldByName('xzdzlx').AsString)) + 1, length(QryPrint.FieldByName('xzdzlx').AsString));
  end;
  if (not QryPrint.FieldByName('zdlxmc').IsNull) and (QryPrint.FieldByName('zdlxmc').AsString <> '') then
  begin
    zdlxmc := Copy(Trim(QryPrint.FieldByName('zdlxmc').AsString), Pos('-', Trim(QryPrint.FieldByName('zdlxmc').AsString)) + 1, length(QryPrint.FieldByName('zdlxmc').AsString));
  end;
  if (not QryPrint.FieldByName('zdblfl').IsNull) and (QryPrint.FieldByName('zdblfl').AsString <> '') then
  begin
    zdblfl := Copy(Trim(QryPrint.FieldByName('zdblfl').AsString), Pos('-', Trim(QryPrint.FieldByName('zdblfl').AsString)) + 1, length(QryPrint.FieldByName('zdblfl').AsString));
  end;
  if trim(DBComboBox1.text) = '初次报告' then
  begin
    qrlbl300.Caption := '√';
    qrlbl302.Caption := '';
  end
  else
  begin
    qrlbl300.Caption := '';
    qrlbl302.Caption := '√';
  end;
  if trim(QryPrint.FieldByName('hzsfz').asString) <> '' then
  begin
    hzsfz := trim(QryPrint.FieldByName('hzsfz').asString);
    qrlbl309.caption := copy(hzsfz, 1, 1);
    qrlbl310.caption := copy(hzsfz, 2, 1);
    qrlbl311.caption := copy(hzsfz, 3, 1);
    qrlbl312.caption := copy(hzsfz, 4, 1);
    qrlbl313.caption := copy(hzsfz, 5, 1);
    qrlbl314.caption := copy(hzsfz, 6, 1);
    qrlbl315.caption := copy(hzsfz, 7, 1);
    qrlbl316.caption := copy(hzsfz, 8, 1);
    qrlbl317.caption := copy(hzsfz, 9, 1);
    qrlbl318.caption := copy(hzsfz, 10, 1);
    qrlbl319.caption := copy(hzsfz, 11, 1);
    qrlbl320.caption := copy(hzsfz, 12, 1);
    qrlbl321.caption := copy(hzsfz, 13, 1);
    qrlbl322.caption := copy(hzsfz, 14, 1);
    qrlbl323.caption := copy(hzsfz, 15, 1);
    qrlbl324.caption := copy(hzsfz, 16, 1);
    qrlbl325.caption := copy(hzsfz, 17, 1);
    qrlbl326.caption := copy(hzsfz, 18, 1);
  end
  else
  begin
    qrlbl309.caption := '';
    qrlbl310.caption := '';
    qrlbl311.caption := '';
    qrlbl312.caption := '';
    qrlbl313.caption := '';
    qrlbl314.caption := '';
    qrlbl315.caption := '';
    qrlbl316.caption := '';
    qrlbl317.caption := '';
    qrlbl318.caption := '';
    qrlbl319.caption := '';
    qrlbl320.caption := '';
    qrlbl321.caption := '';
    qrlbl322.caption := '';
    qrlbl323.caption := '';
    qrlbl324.caption := '';
    qrlbl325.caption := '';
    qrlbl326.caption := '';
  end;
  qrlbl328.caption := '';
  qrlbl330.caption := '';
  if trim(QryPrint.FieldByName('xb').asString) = '男' then
  begin
    qrlbl328.caption := '√';
  end
  else
  begin
    qrlbl330.caption := '√';
  end;

  qrlbl274.Caption:='';
  qrlbl275.Caption:='';
  qrlbl276.Caption:='';
  if POS('岁',trim(QryPrint.FieldByName('nl').asString))>0 then
  begin
    qrlbl274.caption := '√';
  end;
   if POS('月',trim(QryPrint.FieldByName('nl').asString))>0 then
  begin
    qrlbl275.caption := '√';
  end;
  if POS('天',trim(QryPrint.FieldByName('nl').asString))>0 then
  begin
    qrlbl276.caption := '√';
  end;
  qrlbl335.caption := '';
  qrlbl337.caption := '';
  qrlbl339.caption := '';
  qrlbl341.caption := '';
  qrlbl343.caption := '';
  qrlbl345.caption := '';
  if xzdzlx = '本县区' then
  begin
    qrlbl335.caption := '√';
  end
  else
    if xzdzlx = '本市其他县区' then
    begin
      qrlbl337.caption := '√';
    end
    else
      if xzdzlx = '本省其他地方' then
      begin
        qrlbl339.caption := '√';
      end
      else
        if xzdzlx = '外省' then
        begin
          qrlbl341.caption := '√';
        end
        else
          if xzdzlx = '港澳台' then
          begin
            qrlbl343.caption := '√';
          end
          else
            if xzdzlx = '外籍' then
            begin
              qrlbl345.caption := '√';
            end;

  qrlbl279.caption := '';
  qrlbl280.caption := '';
  if QryPrint.FieldByName('jwsr').AsBoolean then
  begin
     qrlbl279.caption := '√';
  end else
  begin
     qrlbl280.caption := '√';
  end;
  qrlbl349.caption := '';
  qrlbl351.caption := '';
  qrlbl353.caption := '';
  qrlbl355.caption := '';
  qrlbl357.caption := '';
  qrlbl359.caption := '';
  qrlbl361.caption := '';
  qrlbl363.caption := '';
  qrlbl365.caption := '';
  qrlbl367.caption := '';
  qrlbl369.caption := '';
  qrlbl371.caption := '';
  qrlbl373.caption := '';
  qrlbl375.caption := '';
  qrlbl377.caption := '';
  qrlbl379.caption := '';
  qrlbl381.caption := '';
  qrlbl383.caption := '';

  if hzzy = '幼托儿童' then
  begin
    qrlbl349.caption := '√';
  end
  else
    if hzzy = '散居儿童' then
    begin
      qrlbl351.caption := '√';
    end
    else
      if hzzy = '学生（大中小学）' then
      begin
        qrlbl353.caption := '√';
      end
      else
        if hzzy = '教师' then
        begin
          qrlbl355.caption := '√';
        end
        else
          if hzzy = '保育员及保姆' then
          begin
            qrlbl357.caption := '√';
          end
          else
            if hzzy = '餐饮食品业' then
            begin
              qrlbl359.caption := '√';
            end
            else
              if hzzy = '商业服务' then
              begin
                qrlbl361.caption := '√';
              end
              else
                if hzzy = '医务人员' then
                begin
                  qrlbl363.caption := '√';
                end
                else
                  if hzzy = '工人' then
                  begin
                    qrlbl365.caption := '√';
                  end
                  else
                    if hzzy = '民工' then
                    begin
                      qrlbl367.caption := '√';
                    end
                    else
                      if hzzy = '农民' then
                      begin
                        qrlbl369.caption := '√';
                      end
                      else
                        if hzzy = '牧民' then
                        begin
                          qrlbl371.caption := '√';
                        end
                        else
                          if hzzy = '渔（船）民' then
                          begin
                            qrlbl373.caption := '√';
                          end
                          else
                            if hzzy = '干部职员' then
                            begin
                              qrlbl375.caption := '√';
                            end
                            else
                              if hzzy = '离退人员' then
                              begin
                                qrlbl377.caption := '√';
                              end
                              else
                                if hzzy = '家务及待业' then
                                begin
                                  qrlbl379.caption := '√';
                                end
                                else
                                  if hzzy = '其他' then
                                  begin
                                    qrlbl381.caption := '√';
                                  end
                                  else
                                    if hzzy = '不祥' then
                                    begin
                                      qrlbl383.caption := '√';
                                    end;
                                    
  qrlbl387.caption := '';
  qrlbl389.caption := '';
  qrlbl391.caption := '';
  qrlbl393.caption := '';
  if zdlxmc = '疑似病例' then
  begin
    qrlbl387.caption := '√';
  end
  else
    if zdlxmc = '临床诊断病例' then
    begin
      qrlbl389.caption := '√';
    end
    else
      if zdlxmc = '试验室确诊病例' then
      begin
        qrlbl391.caption := '√';
      end
      else
        if zdlxmc = '病原携带者' then
        begin
          qrlbl393.caption := '√';
        end;
  qrlbl396.caption := '';
  qrlbl398.caption := '';
  if zdblfl = '急性' then
  begin
    qrlbl396.caption := '√';
  end
  else
    if Pos('慢性',zdblfl) >0 then
    begin
      qrlbl398.caption := '√';
    end;
  qrlbl406.caption := '';
  qrlbl408.caption := '';
  if trim(edt1.Text) = '鼠疫' then
  begin
    qrlbl406.caption := '√';
  end
  else
    if trim(edt1.Text) = '霍乱' then
    begin
      qrlbl408.caption := '√';
    end;





    
  qrlbl411.caption := '';
  qrlbl413.caption := '';
  qrlbl284.Caption :='';
  //病毒性肝炎
  qrlbl415.caption := '';
  qrlbl417.caption := '';
  qrlbl419.caption := '';
  qrlbl421.caption := '';
  qrlbl423.caption := '';

  qrlbl425.caption := '';
  qrlbl427.caption := '';
  qrlbl429.caption := '';
  qrlbl431.caption := '';
  qrlbl433.caption := '';
  qrlbl435.caption := '';
  qrlbl437.caption := '';
  //炭疽
  qrlbl440.caption := '';
  qrlbl442.caption := '';
  qrlbl444.caption := '';
  //痢疾
  qrlbl447.caption := '';
  qrlbl449.caption := '';
  //肺结核
  qrlbl452.caption := '';
  qrlbl454.caption := '';
  qrlbl456.caption := '';
  qrlbl458.caption := '';
  //伤寒
  qrlbl461.caption := '';
  qrlbl463.caption := '';

  qrlbl465.caption := '';
  qrlbl467.caption := '';
  qrlbl469.caption := '';
  qrlbl471.caption := '';
  qrlbl473.caption := '';
  qrlbl475.caption := '';
  qrlbl477.caption := '';
  //梅毒
  qrlbl480.caption := '';
  qrlbl482.caption := '';
  qrlbl484.caption := '';
  qrlbl486.caption := '';
  qrlbl488.caption := '';

  qrlbl491.caption := '';
  qrlbl511.caption := '';
  //疟疾
  qrlbl494.caption := '';
  qrlbl496.caption := '';
  qrlbl498.caption := '';

  qrlbl531.caption := '';
  //乙肝 检查结果HBSAG  HBCLGM
  qrlbl290.caption := '';
  qrlbl291.caption := '';
  qrlbl289.caption := '';
  qrlbl292.caption := '';
  qrlbl293.caption := '';
  qrlbl294.caption := '';

  
  if trim(QryPrint.FieldByName('jbbzmc').asString) = '传染性非典型肺炎' then
  begin
    qrlbl411.caption := '√';
  end
  else
    if (trim(QryPrint.FieldByName('jbbzmc').asString) = '艾滋病（艾滋病病人）') or (trim(QryPrint.FieldByName('jbbzmc').asString) = '艾滋病') then
    begin
      qrlbl413.caption := '√';
    end
    else
     if (trim(QryPrint.FieldByName('jbbzmc').asString) = '艾滋病（HIV）') or (trim(QryPrint.FieldByName('jbbzmc').asString) = 'hiv') then
    begin
      qrlbl284.caption := '√';
    end
    else
      if (trim(QryPrint.FieldByName('jbbzmc').asString) = '病毒型肝炎（甲型）') or (trim(QryPrint.FieldByName('jbbzmc').asString) = '甲型') then
      begin
        qrlbl415.caption := '√';
      end
      else
        if (trim(QryPrint.FieldByName('jbbzmc').asString) = '病毒型肝炎（乙型）') or (trim(QryPrint.FieldByName('jbbzmc').asString) = '乙型')  then
        begin
          qrlbl417.caption := '√';
        end
        else
          if (trim(QryPrint.FieldByName('jbbzmc').asString) = '病毒型肝炎（丙型）') or (trim(QryPrint.FieldByName('jbbzmc').asString) = '丙型')  then
          begin
            qrlbl419.caption := '√';
          end
          else
            if (trim(QryPrint.FieldByName('jbbzmc').asString) = '病毒型肝炎（戍型）') or (trim(QryPrint.FieldByName('jbbzmc').asString) = '戊型')  then
            begin
              qrlbl421.caption := '√';
            end
            else
              if (trim(QryPrint.FieldByName('jbbzmc').asString) = '病毒型肝炎（未分型）')  then
              begin
                qrlbl423.caption := '√';
              end




              else
                if trim(QryPrint.FieldByName('jbbzmc').asString) = '脊髓灰质炎' then
                begin
                  qrlbl425.caption := '√';
                end
                else
                  if trim(QryPrint.FieldByName('jbbzmc').asString) = '人感染高致病性禽流感' then
                  begin
                    qrlbl427.caption := '√';
                  end
                  else
                    if trim(QryPrint.FieldByName('jbbzmc').asString) = '麻疹' then
                    begin
                      qrlbl429.caption := '√';
                    end
                    else
                      if trim(QryPrint.FieldByName('jbbzmc').asString) = '流行性出血热' then
                      begin
                        qrlbl431.caption := '√';
                      end
                      else
                        if trim(QryPrint.FieldByName('jbbzmc').asString) = '狂犬病' then
                        begin
                          qrlbl433.caption := '√';
                        end
                        else
                          if trim(QryPrint.FieldByName('jbbzmc').asString) = '流行性乙型脑炎' then
                          begin
                            qrlbl435.caption := '√';
                          end
                          else
                            if trim(QryPrint.FieldByName('jbbzmc').asString) = '登革热' then
                            begin
                              qrlbl437.caption := '√';
                            end
                            else
                              if trim(QryPrint.FieldByName('jbbzmc').asString) = '炭疽（肺炭疽）' then
                              begin
                                qrlbl440.caption := '√';
                              end
                              else
                                if trim(QryPrint.FieldByName('jbbzmc').asString) = '炭疽（皮肤炭疽）' then
                                begin
                                  qrlbl442.caption := '√';
                                end
                                else
                                  if trim(QryPrint.FieldByName('jbbzmc').asString) = '炭疽（未分型）' then
                                  begin
                                    qrlbl444.caption := '√';
                                  end
                                  else

                                    if trim(QryPrint.FieldByName('jbbzmc').asString) = '痢疾（细菌性）' then
                                    begin
                                      qrlbl447.caption := '√';
                                    end
                                    else
                                      if trim(QryPrint.FieldByName('jbbzmc').asString) = '痢疾（阿米巴性）' then
                                      begin
                                        qrlbl449.caption := '√';

                                      end
                                      else
                                        if (trim(QryPrint.FieldByName('jbbzmc').asString) = '涂（+）')or (trim(QryPrint.FieldByName('jbbzmc').asString) = '肺结核（涂阳）') then
                                        begin
                                          qrlbl452.caption := '√';

                                        end
                                        else
                                          if trim(QryPrint.FieldByName('jbbzmc').asString) = '肺结核（仅涂阳）' then
                                          begin
                                            qrlbl454.caption := '√';
                                          end
                                          else
                                            if (trim(QryPrint.FieldByName('jbbzmc').asString) = '菌（-）')or (trim(QryPrint.FieldByName('jbbzmc').asString) = '肺结核（菌阴）') then
                                            begin
                                              qrlbl456.caption := '√';
                                            end
                                            else
                                              if trim(QryPrint.FieldByName('jbbzmc').asString) = '肺结核（未痰检）' then
                                              begin
                                                qrlbl458.caption := '√';
                                              end
                                              else
                                                if trim(QryPrint.FieldByName('jbbzmc').asString) = '伤寒（伤寒）' then
                                                begin
                                                  qrlbl461.caption := '√';

                                                end
                                                else
                                                  if trim(QryPrint.FieldByName('jbbzmc').asString) = '伤寒（副伤寒）' then
                                                  begin
                                                    qrlbl463.caption := '√';
                                                  end
                                                  else




                                                    if trim(QryPrint.FieldByName('jbbzmc').asString) = '流行性脑脊髓膜炎' then
                                                    begin
                                                      qrlbl465.caption := '√';
                                                    end
                                                    else
                                                      if trim(QryPrint.FieldByName('jbbzmc').asString) = '百日咳' then
                                                      begin
                                                        qrlbl467.caption := '√';
                                                      end
                                                      else
                                                        if trim(QryPrint.FieldByName('jbbzmc').asString) = '白喉' then
                                                        begin
                                                          qrlbl469.caption := '√';
                                                        end
                                                        else
                                                          if trim(QryPrint.FieldByName('jbbzmc').asString) = '新生儿破伤风' then
                                                          begin
                                                            qrlbl471.caption := '√';
                                                          end
                                                          else
                                                            if trim(QryPrint.FieldByName('jbbzmc').asString) = '猩红热' then
                                                            begin
                                                              qrlbl473.caption := '√';
                                                            end
                                                            else
                                                              if trim(QryPrint.FieldByName('jbbzmc').asString) = '布鲁士菌病' then
                                                              begin
                                                                qrlbl475.caption := '√';
                                                              end
                                                              else
                                                                if (trim(QryPrint.FieldByName('jbbzmc').asString) = '淋    病') or  (trim(QryPrint.FieldByName('jbbzmc').asString) = '淋病')then
                                                                begin
                                                                  qrlbl477.caption := '√';
                                                                end
                                                                else
                                                                  if trim(QryPrint.FieldByName('jbbzmc').asString) = '梅毒（Ⅰ期）' then
                                                                  begin
                                                                    qrlbl488.caption := '√';

                                                                  end
                                                                  else
                                                                    if trim(QryPrint.FieldByName('jbbzmc').asString) = '梅毒（Ⅱ期）' then
                                                                    begin
                                                                      qrlbl482.caption := '√';
                                                                    end
                                                                    else
                                                                      if trim(QryPrint.FieldByName('jbbzmc').asString) = '梅毒（III期）' then
                                                                      begin
                                                                        qrlbl484.caption := '√';
                                                                      end
                                                                      else
                                                                        if trim(QryPrint.FieldByName('jbbzmc').asString) = '梅毒（胎传）' then
                                                                        begin
                                                                          qrlbl486.caption := '√';
                                                                        end
                                                                        else
                                                                          if trim(QryPrint.FieldByName('jbbzmc').asString) = '梅毒（隐性）' then
                                                                          begin
                                                                            qrlbl488.caption := '√';
                                                                          end
                                                                          else
                                                                            if trim(QryPrint.FieldByName('jbbzmc').asString) = '钩端螺旋体病' then
                                                                            begin
                                                                              qrlbl491.caption := '√';
                                                                            end
                                                                            else
                                                                              if trim(QryPrint.FieldByName('jbbzmc').asString) = '血吸虫病' then
                                                                              begin
                                                                                qrlbl511.caption := '√';
                                                                              end
                                                                              else
                                                                                if trim(QryPrint.FieldByName('jbbzmc').asString) = '疟疾（间日疟）' then
                                                                                begin
                                                                                  qrlbl494.caption := '√';

                                                                                end
                                                                                else
                                                                                  if trim(QryPrint.FieldByName('jbbzmc').asString) = '疟疾（恶性虐）' then
                                                                                  begin
                                                                                    qrlbl496.caption := '√';
                                                                                  end
                                                                                  else
                                                                                    if trim(QryPrint.FieldByName('jbbzmc').asString) = '疟疾（未分型）' then
                                                                                    begin
                                                                                      qrlbl498.caption := '√';
                                                                                    end
                                                                                    else
                                                                                      if (trim(QryPrint.FieldByName('jbbzmc').asString) = '人感染H7N9 禽流感')or (trim(QryPrint.FieldByName('jbbzmc').asString) = '人感染H7N9禽流感') then
                                                                                      begin
                                                                                        qrlbl531.caption := '√';
                                                                                      end;



  if trim(QryPrint.FieldByName('hbsag_jg').asString) = '阳性' then
  begin
   qrlbl290.caption := '√';
  end else
  if trim(QryPrint.FieldByName('hbsag_jg').asString) = '阴性' then
  begin
    qrlbl289.caption := '√';
  end else
  if trim(QryPrint.FieldByName('hbsag_jg').asString) = '未查' then
  begin
    qrlbl291.caption := '√';
  end;


  if trim(QryPrint.FieldByName('hbclgm_jg').asString) = '阳性' then
  begin
    qrlbl292.caption := '√';
  end else
  if trim(QryPrint.FieldByName('hbclgm_jg').asString) = '阴性' then
  begin
    qrlbl293.caption := '√';
  end else
  if trim(QryPrint.FieldByName('hbclgm_jg').asString) = '未查' then
  begin
    qrlbl294.caption := '√';
  end;



                                                                                      
  qrlbl501.caption := '';
  qrlbl503.caption := '';
  qrlbl505.caption := '';
  qrlbl507.caption := '';
  qrlbl509.caption := '';
  qrlbl295.caption := '';
  qrlbl513.caption := '';
  qrlbl515.caption := '';
  qrlbl517.caption := '';
  qrlbl529.caption := '';
  qrlbl1.caption := '';
  if trim(QryPrint.FieldByName('blcrb').asString) = '流行性感冒' then
  begin
    qrlbl501.caption := '√';
  end
  else
    if trim(QryPrint.FieldByName('blcrb').asString) = '流行性腮腺炎' then
    begin
      qrlbl503.caption := '√';
    end
    else
      if trim(QryPrint.FieldByName('blcrb').asString) = '风疹' then
      begin
        qrlbl505.caption := '√';
      end
      else
        if trim(QryPrint.FieldByName('blcrb').asString) = '急性出血性结膜炎' then
        begin
          qrlbl507.caption := '√';
        end
        else

          if trim(QryPrint.FieldByName('blcrb').asString) = '麻风病' then
          begin
            qrlbl509.caption := '√';
          end
          else
            if trim(QryPrint.FieldByName('blcrb').asString)='流行性和地方性斑疹伤寒' then
            begin
              qrlbl295.caption := '√';
            end
            else
              if trim(QryPrint.FieldByName('blcrb').asString) = '黑热病' then
              begin
                qrlbl513.caption := '√';
              end
              else
                if trim(QryPrint.FieldByName('blcrb').asString) = '包虫病' then
                begin
                  qrlbl515.caption := '√';
                end
                else
                  if trim(QryPrint.FieldByName('blcrb').asString) = '丝虫病' then
                  begin
                    qrlbl517.caption := '√';
                  end
                  else
                    if pos('除霍乱、细菌性和阿米巴性痢疾',trim(QryPrint.FieldByName('blcrb').asString))>0 then
                    begin
                      qrlbl1.caption := '√';
                    end
                    else
                      if trim(QryPrint.FieldByName('blcrb').asString) = '手足口病' then
                      begin
                        qrlbl529.caption := '√';
                      end;

  qrlbl8.Caption := FormatDateTime('yyyy年mm月dd日',QryPrint.FieldByName('swrq').value);
  qrlbl523.Caption := '报告单位：';
  qrlbl9.Caption :=pub_yymc;
  qrlbl524.Caption := '填卡医生：';
  qry_xx.Close;
  qry_xx.Parameters.ParamByName('dm').Value := Trim(ADOInsert.FieldByName('dm').AsString);
  qry_xx.Open;
  qrlbl10.Caption := qry_xx.FieldByName('czy').AsString;
  qckrp2.Preview;
end;

procedure TFrm_crbbgk.zgcrbbgk;
var
  hzsfz, hzzy, xzdzlx, zdlxmc, zdblfl: string;
begin
  QRLabel1.Caption := '';
  QRLabel236.Caption := '';
  QRLabel239.Caption := '';
  QRLabel240.Caption := '';
  QRLabel243.Caption := '';
  QRLabel244.Caption := '';
  QRLabel246.Caption := '';
  QRLabel248.Caption := '';
  QRLabel251.Caption := '';
  QRLabel253.Caption := '';
  QRLabel255.Caption := '';
  QRLabel257.Caption := '';
  QRLabel259.Caption := '';
  QRLabel261.Caption := '';
  QRLabel263.Caption := '';
  QRLabel265.Caption := '';
  QRLabel267.Caption := '';

  QRLabel13.Caption := '';
  QRLabel15.Caption := '';
  QryPrint.close;
  QryPrint.Parameters.ParamByName('Vardm').Value := trim(DBEdit1.text);
  QryPrint.Open;
  QRLabel3.caption := trim(QryPrint.FieldByName('dm').asString);
  hzzy := Copy(Trim(QryPrint.FieldByName('hzzy').AsString), Pos('-', Trim(QryPrint.FieldByName('hzzy').AsString)) + 1, length(QryPrint.FieldByName('hzzy').AsString));
  if (not QryPrint.FieldByName('xzdzlx').IsNull) and (QryPrint.FieldByName('xzdzlx').AsString <> '') then
  begin
    xzdzlx := Copy(Trim(QryPrint.FieldByName('xzdzlx').AsString), Pos('-', Trim(QryPrint.FieldByName('xzdzlx').AsString)) + 1, length(QryPrint.FieldByName('xzdzlx').AsString));
  end;
  if (not QryPrint.FieldByName('zdlxmc').IsNull) and (QryPrint.FieldByName('zdlxmc').AsString <> '') then
  begin
    zdlxmc := Copy(Trim(QryPrint.FieldByName('zdlxmc').AsString), Pos('-', Trim(QryPrint.FieldByName('zdlxmc').AsString)) + 1, length(QryPrint.FieldByName('zdlxmc').AsString));
  end;
  if (not QryPrint.FieldByName('zdblfl').IsNull) and (QryPrint.FieldByName('zdblfl').AsString <> '') then
  begin
    zdblfl := Copy(Trim(QryPrint.FieldByName('zdblfl').AsString), Pos('-', Trim(QryPrint.FieldByName('zdblfl').AsString)) + 1, length(QryPrint.FieldByName('zdblfl').AsString));
  end;
  if trim(DBComboBox1.text) = '初次报告' then
  begin
    QRLabel13.Caption := '√';
    QRLabel15.Caption := '';
  end
  else
  begin
    QRLabel13.Caption := '';
    QRLabel15.Caption := '√';
  end;
  if trim(QryPrint.FieldByName('hzsfz').asString) <> '' then
  begin
    hzsfz := trim(QryPrint.FieldByName('hzsfz').asString);
    QRLabel6.caption := copy(hzsfz, 1, 1);
    QRLabel7.caption := copy(hzsfz, 2, 1);
    QRLabel8.caption := copy(hzsfz, 3, 1);
    QRLabel9.caption := copy(hzsfz, 4, 1);
    QRLabel17.caption := copy(hzsfz, 5, 1);
    QRLabel18.caption := copy(hzsfz, 6, 1);
    QRLabel19.caption := copy(hzsfz, 7, 1);
    QRLabel20.caption := copy(hzsfz, 8, 1);
    QRLabel21.caption := copy(hzsfz, 9, 1);
    QRLabel22.caption := copy(hzsfz, 10, 1);
    QRLabel23.caption := copy(hzsfz, 11, 1);
    QRLabel24.caption := copy(hzsfz, 12, 1);
    QRLabel25.caption := copy(hzsfz, 13, 1);
    QRLabel26.caption := copy(hzsfz, 14, 1);
    QRLabel27.caption := copy(hzsfz, 15, 1);
    QRLabel28.caption := copy(hzsfz, 16, 1);
    QRLabel29.caption := copy(hzsfz, 17, 1);
    QRLabel30.caption := copy(hzsfz, 18, 1);
  end
  else
  begin
    QRLabel6.caption := '';
    QRLabel7.caption := '';
    QRLabel8.caption := '';
    QRLabel9.caption := '';
    QRLabel17.caption := '';
    QRLabel18.caption := '';
    QRLabel19.caption := '';
    QRLabel20.caption := '';
    QRLabel21.caption := '';
    QRLabel22.caption := '';
    QRLabel23.caption := '';
    QRLabel24.caption := '';
    QRLabel25.caption := '';
    QRLabel26.caption := '';
    QRLabel27.caption := '';
    QRLabel28.caption := '';
    QRLabel29.caption := '';
    QRLabel30.caption := '';
  end;
  QRLabel32.caption := '';
  QRLabel34.caption := '';
  if trim(QryPrint.FieldByName('xb').asString) = '男' then
  begin
    QRLabel32.caption := '√';
  end
  else
  begin
    QRLabel34.caption := '√';
  end;
  QRLabel39.caption := '';
  QRLabel41.caption := '';
  QRLabel43.caption := '';
  QRLabel45.caption := '';
  QRLabel47.caption := '';
  QRLabel49.caption := '';
  if xzdzlx = '本县区' then
  begin
    QRLabel39.caption := '√';
  end
  else
    if xzdzlx = '本市其他县区' then
    begin
      QRLabel41.caption := '√';
    end
    else
      if xzdzlx = '本省其他地方' then
      begin
        QRLabel43.caption := '√';
      end
      else
        if xzdzlx = '外省' then
        begin
          QRLabel45.caption := '√';
        end
        else
          if xzdzlx = '港澳台' then
          begin
            QRLabel47.caption := '√';
          end
          else
            if xzdzlx = '外籍' then
            begin
              QRLabel49.caption := '√';
            end;
  QRLabel53.caption := '';
  QRLabel55.caption := '';
  QRLabel57.caption := '';
  QRLabel59.caption := '';
  QRLabel61.caption := '';
  QRLabel63.caption := '';
  QRLabel65.caption := '';
  QRLabel67.caption := '';
  QRLabel69.caption := '';
  QRLabel71.caption := '';
  QRLabel73.caption := '';
  QRLabel75.caption := '';
  QRLabel77.caption := '';
  QRLabel79.caption := '';
  QRLabel81.caption := '';
  QRLabel83.caption := '';
  QRLabel85.caption := '';
  QRLabel87.caption := '';
  if hzzy = '幼托儿童' then
  begin
    QRLabel53.caption := '√';
  end
  else
    if hzzy = '散居儿童' then
    begin
      QRLabel55.caption := '√';
    end
    else
      if hzzy = '学生（大中小学）' then
      begin
        QRLabel57.caption := '√';
      end
      else
        if hzzy = '教师' then
        begin
          QRLabel59.caption := '√';
        end
        else
          if hzzy = '保育员及保姆' then
          begin
            QRLabel61.caption := '√';
          end
          else
            if hzzy = '餐饮食品业' then
            begin
              QRLabel63.caption := '√';
            end
            else
              if hzzy = '商业服务' then
              begin
                QRLabel65.caption := '√';
              end
              else
                if hzzy = '医务人员' then
                begin
                  QRLabel67.caption := '√';
                end
                else
                  if hzzy = '工人' then
                  begin
                    QRLabel69.caption := '√';
                  end
                  else
                    if hzzy = '民工' then
                    begin
                      QRLabel71.caption := '√';
                    end
                    else
                      if hzzy = '农民' then
                      begin
                        QRLabel73.caption := '√';
                      end
                      else
                        if hzzy = '牧民' then
                        begin
                          QRLabel75.caption := '√';
                        end
                        else
                          if hzzy = '渔（船）民' then
                          begin
                            QRLabel77.caption := '√';
                          end
                          else
                            if hzzy = '干部职员' then
                            begin
                              QRLabel79.caption := '√';
                            end
                            else
                              if hzzy = '离退人员' then
                              begin
                                QRLabel81.caption := '√';
                              end
                              else
                                if hzzy = '家务及待业' then
                                begin
                                  QRLabel83.caption := '√';
                                end
                                else
                                  if hzzy = '其他' then
                                  begin
                                    QRLabel85.caption := '√';
                                  end
                                  else
                                    if hzzy = '不祥' then
                                    begin
                                      QRLabel87.caption := '√';
                                    end;
  QRLabel91.caption := '';
  QRLabel93.caption := '';
  QRLabel95.caption := '';
  QRLabel97.caption := '';
  if zdlxmc = '疑似病例' then
  begin
    QRLabel91.caption := '√';
  end
  else
    if zdlxmc = '临床诊断病例' then
    begin
      QRLabel93.caption := '√';
    end
    else
      if zdlxmc = '试验室确诊病例' then
      begin
        QRLabel95.caption := '√';
      end
      else
        if zdlxmc = '病原携带者' then
        begin
          QRLabel97.caption := '√';
        end;
  QRLabel100.caption := '';
  QRLabel102.caption := '';
  if zdblfl = '急性' then
  begin
    QRLabel100.caption := '√';
  end
  else
    if zdblfl = '慢性' then
    begin
      QRLabel102.caption := '√';
    end;
  QRLabel110.caption := '';
  QRLabel112.caption := '';
  if trim(edt1.Text) = '鼠疫' then
  begin
    QRLabel110.caption := '√';
  end
  else
    if trim(edt1.Text) = '霍乱' then
    begin
      QRLabel112.caption := '√';
    end;
  QRLabel115.caption := '';
  QRLabel117.caption := '';
  //病毒性肝炎
  QRLabel120.caption := '';
  QRLabel122.caption := '';
  QRLabel124.caption := '';
  QRLabel126.caption := '';
  QRLabel128.caption := '';

  QRLabel130.caption := '';
  QRLabel132.caption := '';
  QRLabel134.caption := '';
  QRLabel136.caption := '';
  QRLabel138.caption := '';
  QRLabel140.caption := '';
  QRLabel142.caption := '';
  //炭疽
  QRLabel144.caption := '';
  QRLabel147.caption := '';
  QRLabel149.caption := '';
  //痢疾
  QRLabel152.caption := '';
  QRLabel154.caption := '';
  //肺结核
  QRLabel157.caption := '';
  QRLabel159.caption := '';
  QRLabel161.caption := '';
  QRLabel163.caption := '';
  //伤寒
  QRLabel166.caption := '';
  QRLabel168.caption := '';

  QRLabel170.caption := '';
  QRLabel172.caption := '';
  QRLabel174.caption := '';
  QRLabel176.caption := '';
  QRLabel178.caption := '';
  QRLabel180.caption := '';
  QRLabel182.caption := '';
  //梅毒
  QRLabel185.caption := '';
  QRLabel187.caption := '';
  QRLabel189.caption := '';
  QRLabel191.caption := '';
  QRLabel193.caption := '';

  QRLabel196.caption := '';
  QRLabel197.caption := '';
  //疟疾
  QRLabel200.caption := '';
  QRLabel202.caption := '';
  QRLabel204.caption := '';

  QRLabel270.caption := '';

  if trim(QryPrint.FieldByName('jbbzmc').asString) = '传染性非典型肺炎' then
  begin
    QRLabel115.caption := '√';
  end
  else
    if trim(QryPrint.FieldByName('jbbzmc').asString) = '艾滋病' then
    begin
      QRLabel117.caption := '√';
    end
    else
      if trim(QryPrint.FieldByName('jbbzmc').asString) = '甲肝' then
      begin
        QRLabel120.caption := '√';
      end
      else
        if trim(QryPrint.FieldByName('jbbzmc').asString) = '乙肝' then
        begin
          QRLabel122.caption := '√';
        end
        else
          if trim(QryPrint.FieldByName('jbbzmc').asString) = '丙肝' then
          begin
            QRLabel124.caption := '√';
          end
          else
            if trim(QryPrint.FieldByName('jbbzmc').asString) = '戊肝' then
            begin
              QRLabel126.caption := '√';
            end
            else
              if trim(QryPrint.FieldByName('jbbzmc').asString) = '肝炎（未分型）' then
              begin
                QRLabel128.caption := '√';
              end


        //病毒性肝炎
//        if trim(QryPrint.FieldByName('jtsm').asString) = '甲型' then
//        begin
//          QRLabel120.caption := '√';
//        end
//        else
//          if trim(QryPrint.FieldByName('jtsm').asString) = '乙型' then
//          begin
//            QRLabel122.caption := '√';
//          end
//          else
//            if trim(QryPrint.FieldByName('jtsm').asString) = '丙型' then
//            begin
//              QRLabel124.caption := '√';
//            end
//            else
//              if trim(QryPrint.FieldByName('jtsm').asString) = '戊型' then
//              begin
//                QRLabel126.caption := '√';
//              end
//              else
//                if trim(QryPrint.FieldByName('jtsm').asString) = '未分型' then
//                begin
//                  QRLabel128.caption := '√';
//                end;

              else
                if trim(QryPrint.FieldByName('jbbzmc').asString) = '脊髓灰质炎' then
                begin
                  QRLabel130.caption := '√';
                end
                else
                  if trim(QryPrint.FieldByName('jbbzmc').asString) = '人感染高致病性禽流感' then
                  begin
                    QRLabel132.caption := '√';
                  end
                  else
                    if trim(QryPrint.FieldByName('jbbzmc').asString) = '麻疹' then
                    begin
                      QRLabel134.caption := '√';
                    end
                    else
                      if trim(QryPrint.FieldByName('jbbzmc').asString) = '流行性出血热' then
                      begin
                        QRLabel136.caption := '√';
                      end
                      else
                        if trim(QryPrint.FieldByName('jbbzmc').asString) = '狂犬病' then
                        begin
                          QRLabel138.caption := '√';
                        end
                        else
                          if trim(QryPrint.FieldByName('jbbzmc').asString) = '流行性乙型脑炎' then
                          begin
                            QRLabel140.caption := '√';
                          end
                          else
                            if trim(QryPrint.FieldByName('jbbzmc').asString) = '登革热' then
                            begin
                              QRLabel142.caption := '√';
                            end
                            else
                              if trim(QryPrint.FieldByName('jbbzmc').asString) = '肺炭疽' then
                              begin
                                QRLabel144.caption := '√';
                              end
                              else
                                if trim(QryPrint.FieldByName('jbbzmc').asString) = '皮肤炭疽' then
                                begin
                                  QRLabel147.caption := '√';
                                end
                                else
                                  if trim(QryPrint.FieldByName('jbbzmc').asString) = '炭疽（未分型）' then
                                  begin
                                    QRLabel149.caption := '√';
                                  end
                                  else
 //                        //炭疽
//                        if trim(QryPrint.FieldByName('jtsm').asString) = '肺炭疽' then
//                        begin
//                          QRLabel144.caption := '√';
//                        end
//                        else
//                          if trim(QryPrint.FieldByName('jtsm').asString) = '皮肤炭疽' then
//                          begin
//                            QRLabel147.caption := '√';
//                          end
//                          else
//                            if trim(QryPrint.FieldByName('jtsm').asString) = '未分型' then
//                            begin
//                              QRLabel149.caption := '√';
//                            end;

                                    if trim(QryPrint.FieldByName('jbbzmc').asString) = '细菌性痢疾' then
                                    begin
                                      QRLabel152.caption := '√';
                                    end
                                    else
                                      if trim(QryPrint.FieldByName('jbbzmc').asString) = '阿米巴性痢疾' then
                                      begin
                                        QRLabel154.caption := '√';
//                          //痢疾
//                          if trim(QryPrint.FieldByName('jtsm').asString) = '细菌性' then
//                          begin
//                            QRLabel152.caption := '√';
//                          end
//                          else
//                          begin
//                            QRLabel154.caption := '√';
//                          end;
                                      end
                                      else
                                        if trim(QryPrint.FieldByName('jbbzmc').asString) = '涂（+）' then
                                        begin
                                          QRLabel157.caption := '√';
//                            //肺结核
//                            if trim(QryPrint.FieldByName('jtsm').asString) = '涂阳' then
//                            begin
//                              QRLabel157.caption := '√';
//                            end
//                            else
//                              if trim(QryPrint.FieldByName('jtsm').asString) = '仅培阳' then
//                              begin
//                                QRLabel159.caption := '√';
//                              end
//                              else
//                                if trim(QryPrint.FieldByName('jtsm').asString) = '细菌性' then
//                                begin
//                                  QRLabel161.caption := '√';
//                                end
//                                else
//                                  if trim(QryPrint.FieldByName('jtsm').asString) = '细菌性' then
//                                  begin
//                                    QRLabel163.caption := '√';
//                                  end;
                                        end
                                        else
                                          if trim(QryPrint.FieldByName('jbbzmc').asString) = '仅培阳' then
                                          begin
                                            QRLabel159.caption := '√';
                                          end
                                          else
                                            if trim(QryPrint.FieldByName('jbbzmc').asString) = '菌（-）' then
                                            begin
                                              QRLabel161.caption := '√';
                                            end
                                            else
                                              if trim(QryPrint.FieldByName('jbbzmc').asString) = '未痰检' then
                                              begin
                                                QRLabel163.caption := '√';
                                              end
                                              else
                                                if trim(QryPrint.FieldByName('jbbzmc').asString) = '伤 寒' then
                                                begin
                                                  QRLabel166.caption := '√';
//                              //伤寒
//                              if trim(QryPrint.FieldByName('jtsm').asString) = '伤寒' then
//                              begin
//                                QRLabel166.caption := '√';
//                              end
//                              else
//                                if trim(QryPrint.FieldByName('jtsm').asString) = '副伤寒' then
//                                begin
//                                  QRLabel168.caption := '√';
//                                end;
                                                end
                                                else
                                                  if trim(QryPrint.FieldByName('jbbzmc').asString) = '副伤寒' then
                                                  begin
                                                    QRLabel168.caption := '√';
                                                  end
                                                  else
                                                    if trim(QryPrint.FieldByName('jbbzmc').asString) = '流行性脑脊髓膜炎' then
                                                    begin
                                                      QRLabel170.caption := '√';
                                                    end
                                                    else
                                                      if trim(QryPrint.FieldByName('jbbzmc').asString) = '百日咳' then
                                                      begin
                                                        QRLabel172.caption := '√';
                                                      end
                                                      else
                                                        if trim(QryPrint.FieldByName('jbbzmc').asString) = '白喉' then
                                                        begin
                                                          QRLabel174.caption := '√';
                                                        end
                                                        else
                                                          if trim(QryPrint.FieldByName('jbbzmc').asString) = '新生儿破伤风' then
                                                          begin
                                                            QRLabel176.caption := '√';
                                                          end
                                                          else
                                                            if trim(QryPrint.FieldByName('jbbzmc').asString) = '猩红热' then
                                                            begin
                                                              QRLabel178.caption := '√';
                                                            end
                                                            else
                                                              if trim(QryPrint.FieldByName('jbbzmc').asString) = '布鲁士菌病' then
                                                              begin
                                                                QRLabel180.caption := '√';
                                                              end
                                                              else
                                                                if trim(QryPrint.FieldByName('jbbzmc').asString) = '淋    病' then
                                                                begin
                                                                  QRLabel182.caption := '√';
                                                                end
                                                                else
                                                                  if trim(QryPrint.FieldByName('jbbzmc').asString) = 'Ⅰ期梅毒' then
                                                                  begin
                                                                    QRLabel185.caption := '√';
//                                              if trim(QryPrint.FieldByName('jtsm').asString) = 'Ⅰ期' then
//                                              begin
//                                                QRLabel185.caption := '√';
//                                              end
//                                              else
//                                                if trim(QryPrint.FieldByName('jtsm').asString) = 'Ⅱ期' then
//                                                begin
//                                                  QRLabel187.caption := '√';
//                                                end
//                                                else
//                                                  if trim(QryPrint.FieldByName('jtsm').asString) = 'Ⅲ期' then
//                                                  begin
//                                                    QRLabel189.caption := '√';
//                                                  end
//                                                  else
//                                                    if trim(QryPrint.FieldByName('jtsm').asString) = '胎传' then
//                                                    begin
//                                                      QRLabel191.caption := '√';
//                                                    end
//                                                    else
//                                                      if trim(QryPrint.FieldByName('jtsm').asString) = '隐性' then
//                                                      begin
//                                                        QRLabel193.caption := '√';
//                                                      end;
                                                                  end
                                                                  else
                                                                    if trim(QryPrint.FieldByName('jbbzmc').asString) = 'Ⅱ期梅毒' then
                                                                    begin
                                                                      QRLabel187.caption := '√';
                                                                    end
                                                                    else
                                                                      if trim(QryPrint.FieldByName('jbbzmc').asString) = 'III期梅毒' then
                                                                      begin
                                                                        QRLabel189.caption := '√';
                                                                      end
                                                                      else
                                                                        if trim(QryPrint.FieldByName('jbbzmc').asString) = '胎传梅毒' then
                                                                        begin
                                                                          QRLabel191.caption := '√';
                                                                        end
                                                                        else
                                                                          if trim(QryPrint.FieldByName('jbbzmc').asString) = '隐性梅毒' then
                                                                          begin
                                                                            QRLabel193.caption := '√';
                                                                          end
                                                                          else
                                                                            if trim(QryPrint.FieldByName('jbbzmc').asString) = '钩端螺旋体病' then
                                                                            begin
                                                                              QRLabel196.caption := '√';
                                                                            end
                                                                            else
                                                                              if trim(QryPrint.FieldByName('jbbzmc').asString) = '血吸虫病' then
                                                                              begin
                                                                                QRLabel197.caption := '√';
                                                                              end
                                                                              else
                                                                                if trim(QryPrint.FieldByName('jbbzmc').asString) = '间日疟' then
                                                                                begin
                                                                                  QRLabel200.caption := '√';
//                                                    if trim(QryPrint.FieldByName('jtsm').asString) = '间日疟' then
//                                                    begin
//                                                      QRLabel200.caption := '√';
//                                                    end
//                                                    else
//                                                      if trim(QryPrint.FieldByName('jtsm').asString) = '恶性疟' then
//                                                      begin
//                                                        QRLabel202.caption := '√';
//                                                      end
//                                                      else
//                                                        if trim(QryPrint.FieldByName('jtsm').asString) = '未分型' then
//                                                        begin
//                                                          QRLabel204.caption := '√';
//                                                        end;
                                                                                end
                                                                                else
                                                                                  if trim(QryPrint.FieldByName('jbbzmc').asString) = '恶性疟' then
                                                                                  begin
                                                                                    QRLabel202.caption := '√';
                                                                                  end
                                                                                  else
                                                                                    if trim(QryPrint.FieldByName('jbbzmc').asString) = '疟疾（未分型）' then
                                                                                    begin
                                                                                      QRLabel204.caption := '√';
                                                                                    end
                                                                                    else
                                                                                      if trim(QryPrint.FieldByName('jbbzmc').asString) = '人感染H7N9 禽流感' then
                                                                                      begin
                                                                                        QRLabel270.caption := '√';
                                                                                      end;
  QRLabel207.caption := '';
  QRLabel209.caption := '';
  QRLabel211.caption := '';
  QRLabel213.caption := '';
  QRLabel215.caption := '';
  QRLabel217.caption := '';
  QRLabel219.caption := '';
  QRLabel221.caption := '';
  QRLabel223.caption := '';
  QRLabel225.caption := '';
  if trim(QryPrint.FieldByName('blcrb').asString) = '流行性感冒' then
  begin
    QRLabel207.caption := '√';
  end
  else
    if trim(QryPrint.FieldByName('blcrb').asString) = '流行性腮腺炎' then
    begin
      QRLabel209.caption := '√';
    end
    else
      if trim(QryPrint.FieldByName('blcrb').asString) = '风疹' then
      begin
        QRLabel211.caption := '√';
      end
      else
        if trim(QryPrint.FieldByName('blcrb').asString) = '急性出血性结膜炎' then
        begin
          QRLabel213.caption := '√';
        end
        else

          if trim(QryPrint.FieldByName('blcrb').asString) = '麻风病' then
          begin
            QRLabel215.caption := '√';
          end
          else
            if trim(QryPrint.FieldByName('blcrb').asString) = '流行性和地方性斑疹伤寒' then
            begin
              QRLabel217.caption := '√';
            end
            else
              if trim(QryPrint.FieldByName('blcrb').asString) = '黑热病' then
              begin
                QRLabel219.caption := '√';
              end
              else
                if trim(QryPrint.FieldByName('blcrb').asString) = '包虫病' then
                begin
                  QRLabel221.caption := '√';
                end
                else
                  if trim(QryPrint.FieldByName('blcrb').asString) = '丝虫病' then
                  begin
                    QRLabel223.caption := '√';
                  end
                  else
                    if trim(QryPrint.FieldByName('blcrb').asString) = '除霍乱、细菌性和阿米巴性痢疾、伤寒和副伤寒以外的感染性腹泻病' then
                    begin
                      QRLabel225.caption := '√';
                    end
                    else
                      if trim(QryPrint.FieldByName('blcrb').asString) = '手足口病' then
                      begin
                        QRLabel1.caption := '√';
                      end;
  if trim(QryPrint.FieldByName('blcrb').asString) = '甲型H1N1 流感' then
  begin
    QRLabel250.caption := '√';
  end
  else
    QRLabel250.caption := '';
  QRLabel229.Caption := '报告单位：';
  QRLabel229.Caption := QRLabel229.Caption + pub_yymc;
  QRLabel230.Caption := '报告医生：';
  qry_xx.Close;
  qry_xx.Parameters.ParamByName('dm').Value := Trim(ADOInsert.FieldByName('dm').AsString);
  qry_xx.Open;
  QRLabel230.Caption := QRLabel230.Caption + qry_xx.FieldByName('czy').AsString;
  QuickRep1.Preview;
end;

procedure TFrm_crbbgk.FormClose(Sender: TObject; var Action: TCloseAction);
begin
//  pub_entrance := 1;
end;

procedure TFrm_crbbgk.FormShow(Sender: TObject);
begin
  if pub_yydm='0271' then   //荆门掇刀人民医院
  begin
    pnl1.visible:=True;
    pnl2.visible:=True;
    DBEdit11.Visible:=False;
    DBEdit13.Visible:=false;
    DBEdit12.Left:=85;
    DBEdit14.Left:=85;
  end;

  crb_bcbz := false;
  QuickRep1.Visible := false;
  if xdzt then
  begin
    adoinsert.Edit;
    adoinsert['klb'] := '订正报告';
    adoinsert['sfxd'] := true;
    adoinsert['xdrq'] := frm_func.curr_date();
    adoinsert['mqjz'] := false;
    ADOInsert.post;
    panel4.Enabled := true;
  end;

  if llzt then
  begin
    panel4.Enabled := false;
    adoinsert.LockType := ltreadonly;
  end;

  ksrq.DateTime := frm_func.curr_date();
  jsrq.DateTime := frm_func.curr_date();

  //处理地址类型
  dbcombobox3.Items.Clear;
  ad_sys.Close;
  ad_sys.CommandText := 'select * from jkzx_crb_dzlx order by dm';
  ad_sys.Open;
  ad_sys.First;
  while not ad_sys.Eof do
  begin
    dbcombobox3.Items.Add(ad_sys.FieldByName('dm').AsString + '-' + ad_sys.FieldByName('mc').AsString);
    ad_sys.Next;
  end;

  //处理职业
  dbcombobox4.Items.Clear;
  ad_sys.Close;
  ad_sys.CommandText := 'select * from jkzx_crb_zy order by dm';
  ad_sys.Open;
  ad_sys.First;
  while not ad_sys.Eof do
  begin
    dbcombobox4.Items.Add(ad_sys.FieldByName('dm').AsString + '-' + ad_sys.FieldByName('mc').AsString);
    ad_sys.Next;
  end;

  //处理诊断类型
  dbcombobox5.Items.Clear;
  ad_sys.Close;
  ad_sys.CommandText := 'select * from jkzx_crb_zdlx order by dm';
  ad_sys.Open;
  ad_sys.First;
  while not ad_sys.Eof do
  begin
    dbcombobox5.Items.Add(ad_sys.FieldByName('dm').AsString + '-' + ad_sys.FieldByName('mc').AsString);
    ad_sys.Next;
  end;

  //处理病例分类
  dbcombobox6.Items.Clear;
  ad_sys.Close;
  ad_sys.CommandText := 'select * from jkzx_crb_blfl order by dm';
  ad_sys.Open;
  ad_sys.First;
  while not ad_sys.Eof do
  begin
    dbcombobox6.Items.Add(ad_sys.FieldByName('dm').AsString + '-' + ad_sys.FieldByName('mc').AsString);
    ad_sys.Next;
  end;
//  DBEDIT2.SETFOCUS;
  if not ADOInsert.IsEmpty then
  begin
    qry_age.Close;
    qry_age.Parameters.ParamByName('dm').Value := Trim(ADOInsert.FieldByName('dm').AsString);
    qry_age.Open;
    nl.Text := qry_age.FieldByName('brnl').AsString;
    nl.AgeStr := nl.Text;
  end;
  dtp1.DateTime := nl.Csrq;
  diableComponent;
end;

procedure TFrm_crbbgk.DBEdit9DblClick(Sender: TObject);
begin
  try
    application.CreateForm(Tfrm_treeview_dz, frm_treeview_dz);
    tree_table := 'jkzx_dqbm';
    tree_childcount := 3;
    frm_treeview_dz.srbz := 1;
    frm_treeview_dz.ShowModal;
  finally
    frm_treeview_dz.free;
    ADOInsert.Edit;
    dbedit16.Text := pub_selected;
    DBEdit9.Text := pub_selected;
  end;

end;

procedure TFrm_crbbgk.setReadOnly;
begin
  DBEdit3.ReadOnly := True;
  DBEdit4.ReadOnly := true;
  DBEdit5.ReadOnly := True;
  DBEdit7.ReadOnly := True;
  DBEdit8.ReadOnly := True;
  DBEdit10.ReadOnly := True;
  DBEdit11.ReadOnly := true;
  DBEdit12.ReadOnly := True;
  DBEdit13.ReadOnly := True;
  DBEdit14.ReadOnly := True;
  DBEdit16.ReadOnly := True;
  DBEdit18.ReadOnly := true;
  //DBEdit19.ReadOnly := True;
  DBEdit20.ReadOnly := True;
  DBEdit21.ReadOnly := True;
  DBComboBox3.Enabled := False;
  DBComboBox4.Enabled := False;
  DBComboBox5.Enabled := False;
  DBComboBox6.Enabled := False;
  DBDateTimeEditEh2.Enabled := False;
  DBDateTimeEditEh3.Enabled := False;
  DBDateTimeEditEh4.Enabled := False;
end;

procedure TFrm_crbbgk.sjlr;
begin
  ADOInsert.edit;
  if tempcom.TabOrder = 6 then
  begin
    if ADOInsert.fieldbyname('xxxzdz').asstring = '' then
      ADOInsert['xxxzdz'] := trim(ADODataSet3.fieldbyname('mc').asstring);
    if ADOInsert.fieldbyname('gzdw').asstring = '' then
      ADOInsert['gzdw'] := trim(ADODataSet3.fieldbyname('mc').asstring);
  end;
  if dmzd <> '' then
    ADOInsert[dmzd] := trim(ADODataSet3.fieldbyname(numf).asstring);
  if mczd <> '' then
    ADOInsert[mczd] := trim(ADODataSet3.fieldbyname(resultf).asstring);
  ADOInsert.post;
  // tempcom.text:=trim(ADODataSet3.fieldbyname(resultf).asstring);
end;

procedure TFrm_crbbgk.DBEdit9KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 13 then
    SelectNext(ActiveControl, True, True);
end;

procedure TFrm_crbbgk.dbedtdm1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
  var sql:string;
begin
  if Key=13 then
  begin
    if dbedtdm1.text='' then
   begin
     sql:='SELECT * FROM sys_xzqh WHERE jb=2';
   end else
   sql:='SELECT * FROM sys_xzqh WHERE jb=2  AND (pym LIKE ''%'+trim(dbedtdm1.text)+'%'' OR qhmc LIKE ''%'+trim(dbedtdm1.text)+'%'')';
    qry_dz.close;
    qry_dz.sql.text:=sql;
    qry_dz.open;
    dbgrd_dz.Visible:=True;
    dbgrd_dz.SetFocus;
  end;
end;

procedure TFrm_crbbgk.dbedtdm2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
  var sql:string;
begin
  if Key=13 then
  begin
    if dbedtdm2.text='' then
   begin
     sql:='SELECT * FROM sys_xzqh WHERE jb=3';
   end else
   sql:='SELECT * FROM sys_xzqh WHERE jb=3  AND (pym LIKE ''%'+trim(dbedtdm2.text)+'%'' OR qhmc LIKE ''%'+trim(dbedtdm2.text)+'%'')';
    qry_dz.close;
    qry_dz.sql.text:=sql;
    qry_dz.open;
    dbgrd_dz.Visible:=True;
    dbgrd_dz.SetFocus;
  end;
end;

procedure TFrm_crbbgk.dbedtdm3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
  var sql:string;
begin
  if Key=13 then
  begin
    if dbedtdm3.text='' then
   begin
     sql:='SELECT * FROM sys_xzqh WHERE jb=4';
   end else
   sql:='SELECT * FROM sys_xzqh WHERE jb=4  AND (pym LIKE ''%'+trim(dbedtdm3.text)+'%'' OR qhmc LIKE ''%'+trim(dbedtdm3.text)+'%'')';
    qry_dz.close;
    qry_dz.sql.text:=sql;
    qry_dz.open;
    dbgrd_dz.Visible:=True;
    dbgrd_dz.SetFocus;
  end;
end;

procedure TFrm_crbbgk.dbedtdmKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
  var sql:string;
begin
  if Key=13 then
  begin
    if dbedtdm.text='' then
   begin
     sql:='SELECT * FROM sys_xzqh WHERE jb=1';
   end else
   sql:='SELECT * FROM sys_xzqh WHERE jb=1  AND (pym LIKE ''%'+trim(dbedtdm.text)+'%'' OR qhmc LIKE ''%'+trim(dbedtdm.text)+'%'')';
    qry_dz.close;
    qry_dz.sql.text:=sql;
    qry_dz.open;
    dbgrd_dz.Visible:=True;
    dbgrd_dz.SetFocus;
  end;
end;

procedure TFrm_crbbgk.dbgrd_dzKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
  var qhmc:string;
begin
 if Key=13 then
 begin
    qhmc:= Trim(qry_dz.FieldByName('qhmc').Value);
  if qry_dz.FieldByName('JB').value=1 then
  begin
    qhmc:=StringReplace (qhmc, '省', '', [rfReplaceAll]);
    ADOInsert.FieldByName('sf').value:=qhmc;
    dbgrd_dz.Visible:=false;
    dbedtdm.SetFocus;
  end else
  if qry_dz.FieldByName('JB').value=2 then
  begin
    qhmc:=StringReplace (qhmc, '市', '', [rfReplaceAll]);
    ADOInsert.FieldByName('sq').value:=qhmc;
    dbgrd_dz.Visible:=false;
    dbedtdm1.SetFocus;
  end else
  if qry_dz.FieldByName('JB').value=3 then
  begin
    qhmc:=StringReplace (qhmc, '县', '', [rfReplaceAll]);
    qhmc:=StringReplace (qhmc, '区', '', [rfReplaceAll]);
    ADOInsert.FieldByName('xc').value:=qhmc;
    dbgrd_dz.Visible:=false;
    dbedtdm2.SetFocus;
  end else
  if qry_dz.FieldByName('JB').value=4 then
  begin
    qhmc:=StringReplace (qhmc, '乡', '', [rfReplaceAll]);
    qhmc:=StringReplace (qhmc, '镇', '', [rfReplaceAll]);
    qhmc:=StringReplace (qhmc, '街道', '', [rfReplaceAll]);
    ADOInsert.FieldByName('xz').value:=qhmc;
    dbgrd_dz.Visible:=false;
    dbedtdm3.SetFocus;
  end;
 end;
end;

procedure TFrm_crbbgk.dbgrd_jbxxKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if Key=13 then
 begin
  if qry_jbmc.FieldByName('jbfl').value='甲' then
  begin
    edt1.text:=Trim(qry_jbmc.FieldByName('jbmc').Value);
    dbgrd_jbxx.Visible:=false;
    edt1.SetFocus;
  end else
  if qry_jbmc.FieldByName('jbfl').value='乙' then
  begin
    ADOInsert.FieldByName('jbbzmc').value:=Trim(qry_jbmc.FieldByName('jbmc').Value);
    dbgrd_jbxx.Visible:=false;
    DBEdit12.SetFocus;
  end else
  if qry_jbmc.FieldByName('jbfl').value='丙' then
  begin
    ADOInsert.FieldByName('blcrb').value:=Trim(qry_jbmc.FieldByName('jbmc').Value);
    dbgrd_jbxx.Visible:=false;
    DBEdit14.SetFocus;
  end;
 end;
end;

procedure TFrm_crbbgk.DBGrid1DblClick(Sender: TObject);
begin
  sjlr;
  SelectNext(tempcom, True, True);
end;

procedure TFrm_crbbgk.DBGrid1Exit(Sender: TObject);
begin
  DBGrid1.Visible := false;
end;

procedure TFrm_crbbgk.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    sjlr;
    SelectNext(tempcom, True, True);
  end
  else
    if key = #27 then
      tempcom.SetFocus;

end;

procedure TFrm_crbbgk.DBGridEh1CellClick(Column: TColumnEh);
var age: string;
begin
  llzt := false;
  xdzt := false;
  xzzt := false;
  xgzt := false;
//  ShowMessage(ADOInsert.fieldbyname('dm').AsString);
  age := ADOInsert.FieldByName('nl').asstring;
  if ADOInsert.fieldbyname('sfxd').asboolean then
  begin
    if application.messagebox('已经填报过该病人的传染病报告卡,' + #13 + #10 + '并且该报告卡已经修订过，只能进行浏览！！' + #13 + #10 + '是否进入', '询问', mb_yesno) = idyes then
    begin
      llzt := true;
    end;
  end
  else
    if ADOInsert.fieldbyname('sfsc').asboolean then
    begin
      if application.messagebox('已经填报过该病人的传染病报告卡,' + #13 + #10 + '并且该报告卡已经上传至管理部门，现在进入修订状态！！' + #13 + #10 + '是否进入', '询问', mb_yesno) = idyes then
      begin
        xdzt := true;
      end;
    end
    else
      if not ADOInsert.fieldbyname('sfxd').asboolean then
      begin
        application.messagebox('已经填报过该病人的传染病报告卡,' + #13 + #10 + '该报告卡还没有上传至管理部门，可以自由修改！！', '提示', mb_ok);
        xgzt := true;
      end;
  if xgzt then
  begin
    ADOInsert.Edit;
    panel4.enabled := true;
    if (Trim(nl.Text) = '') or (Trim(nl.Text) <> age) then
    begin
      nl.SetFocus;
      nl.Text := age;
      BitBtn6.SetFocus;
    end;
  end;
  if xdzt then
  begin
    adoinsert.Edit;
    adoinsert['klb'] := '订正报告';
    adoinsert['sfxd'] := true;
    adoinsert['xdrq'] := frm_func.curr_date();
    panel4.Enabled := true;
    if (Trim(nl.Text) = '') or (Trim(nl.Text) <> age) then
    begin
      nl.SetFocus;
      nl.Text := age;
      BitBtn6.SetFocus;
    end;
  end;
  if llzt then
  begin
    panel4.Enabled := false;
    adoinsert.LockType := ltreadonly;
  end;
end;

procedure TFrm_crbbgk.diableComponent;
var
  I: Integer;
begin
  //将界面上的组件设置为不能使用的状态
  for I := 0 to Self.ComponentCount - 1 do
  begin
    if Self.Components[I] is TDBEdit then
    begin
      (Components[I] as TDBEdit).Enabled := False;
    end;
    if Self.Components[I] is TDBComboBox then
    begin
      (Components[I] as TDBComboBox).Enabled := False;
    end;
    if Self.Components[I] is TDBDateTimeEditEh then
    begin
      (Components[I] as TDBDateTimeEditEh).Enabled := False;
    end;
  end;
end;

procedure TFrm_crbbgk.dtp1Exit(Sender: TObject);
begin
  nl.Csrq := dtp1.DateTime;
end;

procedure TFrm_crbbgk.dtp1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 13 then
    B_save.SetFocus;
end;

procedure TFrm_crbbgk.edt1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var sql:string;
begin
  if (Key=13)  and (pub_yydm='0271')then
  begin
    if edt1.Text='' then
    begin
      sql:='select * from jblxmc where jbfl=''甲''';
    end else
    sql:='select * from jblxmc where jbfl=''甲'' and (jbmc like ''%'+Trim(edt1.text)+'%'' or pym like ''%'+LowerCase(Trim(edt1.text))+'%'')';
    qry_jbmc.close;
    qry_jbmc.SQL.text:=sql;
    qry_jbmc.open;
    if qry_jbmc.RecordCount>0 then
    begin
      dbgrd_jbxx.Visible:=True;
      dbgrd_jbxx.SetFocus;
    end;
  end;                                  

end;


procedure TFrm_crbbgk.enableComponent;
var
  I: Integer;
begin
  //将界面上的组件设置为可以使用的状态
  for I := 0 to Self.ComponentCount - 1 do
  begin
    if Self.Components[I] is TDBEdit then
    begin
      (Components[I] as TDBEdit).Enabled := True;
    end;
    if Self.Components[I] is TDBComboBox then
    begin
      (Components[I] as TDBComboBox).Enabled := True;
    end;
    if Self.Components[I] is TDBDateTimeEditEh then
    begin
      (Components[I] as TDBDateTimeEditEh).Enabled := True;
    end;
  end;
end;

procedure TFrm_crbbgk.DBEdit11DblClick(Sender: TObject);
var
  s: string;
begin
  try
    application.CreateForm(Tfrm_treeview_dz, frm_treeview_dz);
    tree_table := 'jkzx_crb_jbbz';
    tree_childcount := 1;
    frm_treeview_dz.srbz := 2;
    frm_treeview_dz.ShowModal;
  finally
    frm_treeview_dz.free;
    delete(pub_selected, 1, pos('-', pub_selected));
    s := copy(pub_selected, pos('-', pub_selected) + 1, 100);
    dbedit12.text := s;
    dbedit11.text := copy(pub_selected, 1, pos('-', pub_selected) - 1);
  end;

end;

procedure TFrm_crbbgk.DBEdit11Exit(Sender: TObject);
begin
//  if ADOInsert.fieldbyname('icd10').asstring = '' then
//    if Func_Null(dbedit11, '疾病病种未填写!', true) then
//      dbedit11.onDblClick(sender)
//    else
//    begin
//      dmzd := 'JBBZ';
//      mczd := 'JBBZMC';
//      numf := 'dm';
//      resultf := 'mc';
//      tempcom := dbedit11;
//      finditems(dmzd, mczd, 'jkzx_crb_jbbz', numf, 'pym+mc+dm', resultf, '疾病病种', tempcom, true);
//    end;
end;

procedure TFrm_crbbgk.DBEdit11KeyPress(Sender: TObject; var Key: Char);
begin
  if KEY = #13 then
    dbedit12.SetFocus;
end;

procedure TFrm_crbbgk.DBEdit12KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
  var sql:string;
begin
  if (Key=13)  and (pub_yydm='0271')then
  begin
    if DBEdit12.Text='' then
    begin
      sql:='select * from jblxmc where jbfl=''乙''';
    end else
    sql:='select * from jblxmc where jbfl=''乙'' and (jbmc like ''%'+Trim(DBEdit12.text)+'%'' or pym like ''%'+LowerCase(Trim(DBEdit12.text))+'%'')';
    qry_jbmc.close;
    qry_jbmc.SQL.text:=sql;
    qry_jbmc.open;
    if qry_jbmc.RecordCount>0 then
    begin
      dbgrd_jbxx.Visible:=True;
      dbgrd_jbxx.SetFocus;
    end;
  end;
end;

procedure TFrm_crbbgk.DBEdit14KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
  var sql:string;
begin
  if (Key=13)  and (pub_yydm='0271')then
  begin
    if DBEdit14.Text='' then
    begin
      sql:='select * from jblxmc where jbfl=''丙''';
    end else
    sql:='select * from jblxmc where jbfl=''丙'' and (jbmc like ''%'+Trim(DBEdit14.text)+'%'' or pym like ''%'+LowerCase(Trim(DBEdit14.text))+'%'')';
    qry_jbmc.close;
    qry_jbmc.SQL.text:=sql;
    qry_jbmc.open;
    if qry_jbmc.RecordCount>0 then
    begin
      dbgrd_jbxx.Visible:=True;
      dbgrd_jbxx.SetFocus;
    end;
  end;
end;

procedure TFrm_crbbgk.DBEdit18DblClick(Sender: TObject);
var
  s: string;
begin
  try
    application.CreateForm(Tfrm_treeview_dz, frm_treeview_dz);
    tree_table := 'jkzx_dqbm';  //   
    tree_childcount := 3;
    frm_treeview_dz.srbz := 2;
    frm_treeview_dz.ShowModal;
  finally
    frm_treeview_dz.free;
//    dbedit16.text := pub_selected;
    s := copy(pub_selected, 1, pos('-', pub_selected) - 1);
    delete(pub_selected, 1, pos('-', pub_selected));
    s := s + copy(pub_selected, pos('-', pub_selected) + 1, 100);
    dbedit16.text := s;

    dbedit18.text := copy(pub_selected, 1, 8);
  end;
end;

procedure TFrm_crbbgk.DBEdit18Exit(Sender: TObject);
var
  ls: string;
begin
  if (DBEdit18.text = '') and (dbedit9.Text = '') then
  begin
    Application.MessageBox('现有地址或详细现住地址必须填写其中一个”', '错误提示', 16);
    DBEdit18.SetFocus
  end
  else
  begin
    ls := trim(DBEdit18.Text);
    if ls <> '' then

      if ls[1] < #126 then
      begin
        ADODataSet3.Close;
        ADODataSet3.CommandText := 'jkzx_dqbm_cx ' + #39 + ls + #39;
        try
          ADODataSet3.Open;
        except
          Application.MessageBox('无法根据填写的代码查找到地址，请重新填写！或者在后面一栏填写！',
            '系统提示', MB_OK + MB_ICONINFORMATION);
          DBEdit18.Clear;
          exit;
        end;
        if ADODataSet3.IsEmpty then
        begin
          Application.MessageBox('未找到相应的“现住地址”', '错误提示', 16);
          DBEdit18.SetFocus;
        end
        else
        begin
          dmzd := 'xzdzbm';
          mczd := 'xzdzmc';
          numf := 'dm';
//          resultf := 'xzmc';
          resultf := 'mc';
          tempcom := DBEdit18;
          if ADODataSet3.RecordCount = 1 then
            sjlr
          else
          begin
            if Frm_crbbgk.Width - DBEdit18.left > DBGrid1.Width then
              DBGrid1.left := panel3.left + dbedit9.left
            else
              DBGrid1.left := panel3.left + DBEdit18.left + DBEdit18.Width - DBGrid1.Width;
            DBGrid1.top := DBEdit18.top + DBEdit18.Height + panel3.top + 1;
            DBGrid1.Visible := true;
            DBGrid1.SetFocus;
          end;
        end;
      end;
  end;
end;
{begin
if copy(adoinsert['xzdzbm'],7,2)='00' then
 begin
   application.MessageBox('现住地址必须准确到乡镇，请重新输入详细现住地址！','提示',mb_ok);
   dbedit9.SetFocus;
 end;

end; }

procedure TFrm_crbbgk.DBEdit18KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    dbedit16.setfocus;
end;

procedure TFrm_crbbgk.DBEdit19DblClick(Sender: TObject);
var
  s: string;
begin
//  try
//    application.CreateForm(Tfrm_treeview_dz, frm_treeview_dz);
//    tree_table := 'jkzx_crb_jbbz';
//    tree_childcount := 1;
//    frm_treeview_dz.srbz := 2;
//    frm_treeview_dz.ShowModal;
//  finally
//    frm_treeview_dz.free;
//    delete(pub_selected, 1, pos('-', pub_selected));
//    s := copy(pub_selected, pos('-', pub_selected) + 1, 100);
//    dbedit20.text := s;
//    dbedit19.text := copy(pub_selected, 1, pos('-', pub_selected) - 1);
//  end;
end;

procedure TFrm_crbbgk.DBEdit19Exit(Sender: TObject);
begin
//  if ADOInsert.fieldbyname('icd10').asstring = '' then
//    if Func_Null(dbedit19, '疾病病种未填写!', true) then
//      dbedit19.onDblClick(sender)
//    else
//    begin
//      dmzd := 'JBBZ';
//      mczd := 'JBBZMC';
//      numf := 'dm';
//      resultf := 'mc';
//      tempcom := dbedit19;
//      finditems(dmzd, mczd, 'jkzx_crb_jbbz', numf, 'pym+mc+dm', resultf, '疾病病种', tempcom, true);
//    end;
end;

procedure TFrm_crbbgk.DBEdit19KeyPress(Sender: TObject; var Key: Char);
begin
//  if KEY = #13 then
//    dbedit20.SetFocus;
end;

procedure TFrm_crbbgk.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    SelectNext(activeControl, true, true);
    key := #0;

  end;
end;

procedure TFrm_crbbgk.DBEdit6KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    b_save.setfocus;
end;

end.
