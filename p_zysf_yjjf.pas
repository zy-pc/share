unit p_zysf_yjjf;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, Db, ADODB, DBSumLst, Grids, DBGridEh, Mask, DBCtrls, StdCtrls,
  Buttons, DBGrids, ActnList, Qrctrls, QuickRpt, Menus, variants, GridsEh,
  Printers, DBGridEhGrouping  {$ifdef Maks},p_Dyjgl,ToolCtrlsEh {$endif};
type
  Tfrm_zysf_yjjf = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    fylb: TEdit;
    zfy: TEdit;
    zyj: TEdit;
    Label5: TLabel;
    bch: TEdit;
    Panel3: TPanel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    je: TDBEdit;
    Panel4: TPanel;
    ad_zyfymx_ls: TADODataSet;
    sp_cx_sfxm: TADOStoredProc;
    sp_cx_zybrjbqk: TADOStoredProc;
    ds_sfmx: TDataSource;
    Label11: TLabel;
    Label12: TLabel;
    zzf: TEdit;
    kyje: TEdit;
    ds_zybrjbqk: TDataSource;
    fydm: TEdit;
    ad_zyfymx_lsid: TAutoIncField;
    ad_zyfymx_lstmh: TStringField;
    ad_zyfymx_lszyh: TStringField;
    ad_zyfymx_lskdks: TStringField;
    ad_zyfymx_lsczks: TStringField;
    ad_zyfymx_lskdys: TStringField;
    ad_zyfymx_lsczys: TStringField;
    ad_zyfymx_lsfydm: TStringField;
    ad_zyfymx_lsfysl: TIntegerField;
    ad_zyfymx_lsfyje: TBCDField;
    ad_zyfymx_lszkje: TBCDField;
    ad_zyfymx_lsssje: TBCDField;
    ad_zyfymx_lszfje: TBCDField;
    ad_zyfymx_lssfczy: TStringField;
    ad_zyfymx_lssfrq: TDateTimeField;
    ad_zyfymx_lssjbh: TStringField;
    ad_zyfymx_lscfbh: TStringField;
    ad_zyfymx_lstfbz: TBooleanField;
    ad_zyfymx_lstfczy: TStringField;
    ad_zyfymx_lstfrq: TDateTimeField;
    ad_zyfymx_lsjzbz: TBooleanField;
    ad_zyfymx_lsjsbz: TBooleanField;
    ad_zyfymx_lsjsdh: TStringField;
    ad_zyfymx_lsbz: TStringField;
    ad_zyfymx_lsfydmmc: TStringField;
    ad_sfxm: TADODataSet;
    ds_sfxm: TDataSource;
    ActionList1: TActionList;
    jshj: TAction;
    jf: TAction;
    zf: TAction;
    xg: TAction;
    sfbz: TEdit;
    sl: TDBEdit;
    sp_cx_syje: TADOStoredProc;
    sp_cx_czyks: TADOStoredProc;
    ds_ysks: TDataSource;
    createbatch: TAction;
    Label13: TLabel;
    RYRQ: TEdit;
    ds_cx_sfxm: TDataSource;
    sp_cx_sfxmfydm: TStringField;
    sp_cx_sfxmdldm: TStringField;
    sp_cx_sfxmfymc: TStringField;
    sp_cx_sfxmpym: TStringField;
    sp_cx_sfxmszdm: TStringField;
    sp_cx_sfxmhotkey: TStringField;
    sp_cx_sfxmdymc: TStringField;
    sp_cx_sfxmdw: TStringField;
    sp_cx_sfxmsfbz: TBCDField;
    sp_cx_sfxmsbfybl: TBCDField;
    sp_cx_sfxmmzfy: TBooleanField;
    sp_cx_sfxmzyfy: TBooleanField;
    sp_cx_sfxmqybz: TBooleanField;
    sp_cx_sfxmksgs: TStringField;
    sp_cx_sfxmzyksgs: TStringField;
    sp_cx_sfxmpbbz: TBooleanField;
    sp_cx_sfxmghzl: TStringField;
    Label15: TLabel;
    zyks: TEdit;
    DBGridEh2: TDBGridEh;
    ad_zyfymx_lsph: TStringField;
    Label16: TLabel;
    kdys: TEdit;
    Label17: TLabel;
    czks: TEdit;
    Label18: TLabel;
    czys: TEdit;
    Label14: TLabel;
    zdjf: TEdit;
    Label23: TLabel;
    ybfyxe: TEdit;
    Label19: TLabel;
    kdks: TEdit;
    Label20: TLabel;
    yjje: TEdit;
    sp_se_cfje: TADOStoredProc;
    Label24: TLabel;
    sjbh: TEdit;
    g_empt: TDBGrid;
    ad_zyfymx_lssbfybl: TFloatField;
    ad_zyfymx_lshtfybl: TFloatField;
    ad_zyfymx_lsbxfybl: TFloatField;
    Label25: TLabel;
    sbdw: TEdit;
    fydmgrid: TDBGrid;
    Panel2: TPanel;
    B_ENTER: TBitBtn;
    B_FINAL: TBitBtn;
    B_giveup: TBitBtn;
    Label30: TLabel;
    Panel5: TPanel;
    Label21: TLabel;
    cfn: TEdit;
    cfy: TEdit;
    cfh: TEdit;
    Panel6: TPanel;
    tmh: TEdit;
    Label1: TLabel;
    Label27: TLabel;
    brxm: TEdit;
    Label28: TLabel;
    Label29: TLabel;
    Label26: TLabel;
    bz: TEdit;
    Bevel1: TBevel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    gg: TEdit;
    Label22: TLabel;
    xmbz: TEdit;
    sp_cx_sfxmbak: TStringField;
    Panel7: TPanel;
    Label31: TLabel;
    Label32: TLabel;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    sp_fymx_dy: TADOStoredProc;
    sp_cx_sfxmhtfybl: TIntegerField;
    sp_cx_sfxmbxfybl: TIntegerField;
    sp_cx_sfxmkdksfpbl: TIntegerField;
    sp_cx_sfxmkdysfpbl: TIntegerField;
    Label33: TLabel;
    syje: TEdit;
    ad_zyfymx_lssbfybl01: TFloatField;
    ad_zyfymx_lssbfylb02: TFloatField;
    ad_zyfymx_lssbfybl03: TFloatField;
    ad_zyfymx_lssbfybl04: TFloatField;
    ad_zyfymx_lssbfybl05: TFloatField;
    ad_zyfymx_lssbfybl06: TFloatField;
    ad_zyfymx_lssbfybl07: TFloatField;
    ad_zyfymx_lssbfybl08: TFloatField;
    ad_zyfymx_lssbfybl09: TFloatField;
    ad_zyfymx_lssbfybl10: TFloatField;
    ad_zyfymx_lssbfybl11: TFloatField;
    ad_zyfymx_lssbfybl12: TFloatField;
    ad_zyfymx_lssbfybl13: TFloatField;
    save: TAction;
    qry_jsmx: TADOQuery;
    ds_jsmx: TDataSource;
    sp_SetNewSjbh: TADOStoredProc;
    ds_SetNewSjbh: TDataSource;
    qry_dyfy: TADOQuery;
    ds_dyfy: TDataSource;
    procedure tmhExit(Sender: TObject);
    procedure fydmExit(Sender: TObject);
    procedure slExit(Sender: TObject);
    procedure jeExit(Sender: TObject);
    procedure B_ENTERClick(Sender: TObject);
    procedure ad_zyfymx_lsAfterScroll(DataSet: TDataSet);
    procedure kdysExit(Sender: TObject);
    procedure czksExit(Sender: TObject);
    procedure czysExit(Sender: TObject);
    procedure zyksExit(Sender: TObject);
    procedure fydmEnter(Sender: TObject);
    procedure B_giveupClick(Sender: TObject);
    procedure tmhEnter(Sender: TObject);
    procedure jfExecute(Sender: TObject);
    procedure xgExecute(Sender: TObject);
    procedure fydmgridExit(Sender: TObject);
    procedure fylbEnter(Sender: TObject);
    procedure zyksEnter(Sender: TObject);
    procedure kdysEnter(Sender: TObject);
    procedure czksEnter(Sender: TObject);
    procedure czysEnter(Sender: TObject);
    procedure ggEnter(Sender: TObject);
    procedure sfbzEnter(Sender: TObject);
    procedure slEnter(Sender: TObject);
    procedure jeEnter(Sender: TObject);
    procedure fylbExit(Sender: TObject);
    procedure ggExit(Sender: TObject);
    procedure sfbzExit(Sender: TObject);
    procedure B_FINALClick(Sender: TObject);
    procedure fydmgridKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ad_zyfymx_lsBeforePost(DataSet: TDataSet);
    procedure ad_zyfymx_lsAfterPost(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure cfhKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure proc_setsffs;
    procedure kdksExit(Sender: TObject);
    procedure kdksKeyPress(Sender: TObject; var Key: Char);
    procedure proc_get_sjbh;
    procedure kdksEnter(Sender: TObject);
    procedure kdysKeyPress(Sender: TObject; var Key: Char);
    procedure g_emptKeyPress(Sender: TObject; var Key: Char);
    procedure czysKeyPress(Sender: TObject; var Key: Char);
    procedure czksKeyPress(Sender: TObject; var Key: Char);
    procedure g_emptExit(Sender: TObject);
    procedure tmhKeyPress(Sender: TObject; var Key: Char);
    procedure fydmKeyPress(Sender: TObject; var Key: Char);
    procedure slKeyPress(Sender: TObject; var Key: Char);
    procedure jeKeyPress(Sender: TObject; var Key: Char);
    procedure proc_savexmyz;
    procedure yjjeKeyPress(Sender: TObject; var Key: Char);
    procedure ad_zyfymx_lsAfterDelete(DataSet: TDataSet);
    procedure slKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure jeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGridEh2Exit(Sender: TObject);
    procedure cfhEnter(Sender: TObject);
    procedure cfhExit(Sender: TObject);
    procedure DBGridEh2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure zfExecute(Sender: TObject);
    procedure DBGridEh2KeyPress(Sender: TObject; var Key: Char);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure g_emptDblClick(Sender: TObject);
    procedure saveExecute(Sender: TObject);
  private
        { Private declarations }
  public
        { Public declarations }
    procedure displayvalue;
    procedure dispysks(tempedit: Tedit; dm: string; czfs: integer; var pri_var: string); //显示医生科室
    procedure dispysksonly(tempedit: Tedit; dm: string; czfs: integer; var pri_var: string); //显示医生科室
    procedure datasave(tablename: string); //处理药存盘
    procedure fydmprocess(fydmstr: string); // 收费项目代码查询
    procedure sfxmwriteIn; //收费项目写入
    procedure proc_printyjsj(s: string);
    procedure SetNewsjbh; //设置保存收据编号
  end;

var
      frm_zysf_yjjf: Tfrm_zysf_yjjf;
  ph: string;
  qhbz, //表示是否马上求和 true 求和 false 不求
    csjls: integer;
  zy_tmh: string; //条码号
  zy_zyh: string; //住院号
  zy_fymc: string; //费用名称
  zy_fydm: string; //费用代码
  zy_yjxs: string; //收费形式
  zy_sfbz: real; //收费标准
  zy_zfje: real; //自费金额
  zy_sffs: integer; //1 表示处方收费 2 表示项目收费
  zy_brxm: string; //病人姓名
  zy_brdz:string;
  zy_brlb: integer; //病人类别
  zy_brlbmc: string; //病人类别名称
  zy_sjbh: string; //收据编号
  zy_zje: real; //收费病人应交金额
  zy_ssje: real; //收费项目实收金额
  zy_yjje: real; //收预交金额
  zy_kdks: string; //开单科室
  zy_kdksmc: string; //开单科室名称
  zy_kdys: string; //开单医生
  zy_kdysmc: string; //开单医生名称
  zy_czks: string; //处冶科室
  zy_czksmc: string; //处冶科室名称
  zy_czys: string; //处冶医生
  zy_czysmc: string; //处冶医生名称
  zy_cfbh: string; //现金病人处方编号
  zy_zfzdmc: string; //自费比率字段名称
  zy_zdjf: real; //允许最大欠费
  zy_bcjf: real; //本次记费
  zy_sfcfbh: string; //已收费处方编号
  zy_brnl :string;
  lostsender: Tobject;
  SavePlace: TBookmark;
  esckey, czwcg, insertflag, czcg, syjechanged: boolean; //药品查找成功
  dispinit: boolean = false; //显示初始化
  zy_syj: boolean = false; //每次收预交标志

  cfbh: string; //
implementation

uses P_dm, p_func, p_repo_zyjz, P_syj, p_zyyj, p_tzysf, p_tyj,
  p_czy_yjmxz,p_zysf_print_service,p_repo_zyyj,p_cyjs;
{$R *.DFM}



procedure Tfrm_zysf_yjjf.proc_printyjsj(s: string);
var
    temp: string;
    v_IsPrinterJoin: Boolean;
    v_PrinterIndex_new: Integer;
    v_PrinterIndex_old: Integer;
    nian, yue, ri: word;
    zy_ksmc : string;
begin
    if (syj) and (s = '1') then
    begin
        zy_ksmc := zyks.text;
         //判断是否使用打印关联方式及取得打印机序号
        try
            v_PrinterIndex_old := Printer.PrinterIndex;
            v_PrinterIndex_new := func_GetPrinterIndex(0, v_IsPrinterJoin);
            if v_IsPrinterJoin then
                Proc_ChangePrinter(v_PrinterIndex_new, True);
          //----------------------------------------
        except

        end;

       //按不同医院代码,调用不同预交收据
        if pub_yydm = '0020' then //  '0020' 通江县人民医院'
        begin
            application.CreateForm(Tfrm_repo_zyyj, frm_repo_zyyj);
            frm_repo_zyyj.yjsm13.caption := floattostr(zy_yjje) + '元';
            frm_repo_zyyj.dx13.caption := NumberToMoney(zy_yjje);
            frm_repo_zyyj.tmh13.caption := zy_tmh;
            frm_repo_zyyj.yymc13.Caption := pub_yymc;
            frm_repo_zyyj.brxm13.caption := zy_brxm;
            frm_repo_zyyj.ksmc13.caption := zy_ksmc;
            frm_repo_zyyj.wjbh13.Caption := zy_sjbh;
            frm_repo_zyyj.czy13.caption := trim(pub_czydm) + trim(pub_czyxm);
            frm_repo_zyyj.yjxs13.Caption := '现金';
            frm_repo_zyyj.sfrq13.caption := datetimetostr(frm_func.curr_date);
            frm_repo_zyyj.repo_zyyj10.Print;
        end
        else if pub_yydm = '0022' then //0022 射洪县中医院
        begin
            application.CreateForm(Tfrm_repo_zyyj, frm_repo_zyyj);
            frm_repo_zyyj.yjsm8.caption := floattostr(zy_yjje) + '元';
            frm_repo_zyyj.dx8.caption := NumberToMoney(zy_yjje);
            frm_repo_zyyj.tmh8.caption := zy_tmh;
            frm_repo_zyyj.brxm8.caption := zy_brxm;
            frm_repo_zyyj.ksmc8.caption := zy_ksmc;
            frm_repo_zyyj.wjbh8.Caption := zy_sjbh;
            frm_repo_zyyj.czy8.caption := trim(pub_czydm) + trim(pub_czyxm);
            frm_repo_zyyj.yjxs8.Caption := '现金';
            frm_repo_zyyj.sfrq8.caption := datetimetostr(frm_func.curr_date);
            frm_repo_zyyj.yymc8.caption := pub_yymc;
            frm_repo_zyyj.repo_zyyj6.Print;
        end
        else if pub_yydm = '0003' then //'0003'  绵阳市第三人民医院
        begin
            application.CreateForm(Tfrm_repo_zyyj, frm_repo_zyyj);
            frm_repo_zyyj.yjsm7.caption := floattostr(zy_yjje) + '元';
            frm_repo_zyyj.dx7.caption := NumberToMoney(zy_yjje);
            frm_repo_zyyj.tmh7.caption := zy_tmh;
            frm_repo_zyyj.brxm7.caption := zy_brxm;
            frm_repo_zyyj.ksmc7.caption := zy_ksmc;
            frm_repo_zyyj.yymc7.Caption := pub_yymc;
            frm_repo_zyyj.czy7.caption := trim(pub_czydm) + trim(pub_czyxm);
            frm_repo_zyyj.yjxs7.Caption := '现金';
            frm_repo_zyyj.sfrq7.caption := datetimetostr(frm_func.curr_date);
            frm_repo_zyyj.repo_zyyj5.Print;
        end
        else if pub_yydm = '0046' then //'0046'  罗江县人民医院
        begin
            application.CreateForm(Tfrm_repo_zyyj, frm_repo_zyyj);
            frm_repo_zyyj.yjsm6.caption := floattostr(zy_yjje) + '元';
            frm_repo_zyyj.dx6.caption := NumberToMoney(zy_yjje);
            frm_repo_zyyj.tmh6.caption := zy_tmh;
            frm_repo_zyyj.brxm6.caption := zy_brxm;
            frm_repo_zyyj.ksmc6.caption := zy_ksmc;
            frm_repo_zyyj.wjbh6.Caption := zy_sjbh;
            frm_repo_zyyj.yjxs6.Caption := '现金';
            frm_repo_zyyj.sfrq6.caption := datetimetostr(frm_func.curr_date);
            frm_repo_zyyj.repo_zyyj4.Print;
        end
        else if pub_yydm = '0019' then //'0019'  大邑县人民医院
        begin
            application.CreateForm(Tfrm_repo_zyyj, frm_repo_zyyj);
            frm_repo_zyyj.yymc5.caption := pub_yymc;
            frm_repo_zyyj.yjsm5.caption := floattostr(zy_yjje) + '元';
            frm_repo_zyyj.dx5.caption := NumberToMoney(zy_yjje);
            frm_repo_zyyj.tmh5.caption := zy_tmh;
            frm_repo_zyyj.brxm5.caption := zy_brxm;
            frm_repo_zyyj.ksmc5.caption := zy_ksmc;
            frm_repo_zyyj.wjbh5.Caption := zy_sjbh;
            frm_repo_zyyj.czy5.caption := trim(pub_czydm) + trim(pub_czyxm);
            frm_repo_zyyj.yjxs5.Caption := '现金';
            frm_repo_zyyj.sfrq5.caption := datetimetostr(frm_func.curr_date);
            frm_repo_zyyj.repo_zyyj3.Print;
        end
        else if pub_yydm = '0028' then //'0028'  达州市第二人民医院
        begin
            application.CreateForm(Tfrm_repo_zyyj, frm_repo_zyyj);
            frm_repo_zyyj.yjsm4.caption := floattostr(zy_yjje) + '元';
            frm_repo_zyyj.dx4.caption := NumberToMoney(zy_yjje);
            frm_repo_zyyj.tmh4.caption := zy_tmh;
            frm_repo_zyyj.brxm4.caption := zy_brxm;
            frm_repo_zyyj.ksmc4.caption := zy_ksmc;
            frm_repo_zyyj.wjbh4.Caption := zy_sjbh;
            frm_repo_zyyj.czy4.caption := trim(pub_czydm) + trim(pub_czyxm);
            frm_repo_zyyj.yjxs4.Caption := '现金';
            frm_repo_zyyj.sfrq4.caption := datetimetostr(frm_func.curr_date);
            frm_repo_zyyj.repo_zyyj2.Print;
        end
        else if (pub_yydm = '0026') or (pub_yydm = '0030') then
        begin //'0030' 陕飞第二职工医院 '0026' 南南部县第二人民医院
            application.CreateForm(Tfrm_repo_zyyj, frm_repo_zyyj);
            frm_repo_zyyj.yjsm2.caption := floattostr(zy_yjje) + '元';
            frm_repo_zyyj.dx2.caption := NumberToMoney(zy_yjje);
            frm_repo_zyyj.tmh2.caption := zy_tmh;
            frm_repo_zyyj.brxm2.caption := zy_brxm;
            frm_repo_zyyj.ksmc2.caption := zy_ksmc;
            frm_repo_zyyj.wjbh2.Caption := zy_sjbh;
            frm_repo_zyyj.czy2.caption := trim(pub_czydm) + trim(pub_czyxm);
            frm_repo_zyyj.yjxs2.Caption := '现金';
            frm_repo_zyyj.sfrq2.caption := datetimetostr(frm_func.curr_date);
            frm_repo_zyyj.bch2.Caption := bch.Text;
            frm_repo_zyyj.dwmc2.Caption := pub_yymc;

            frm_repo_zyyj.yjsm1.caption := floattostr(zy_yjje) + '元';
            frm_repo_zyyj.dx1.caption := NumberToMoney(zy_yjje);
            frm_repo_zyyj.tmh1.caption := zy_tmh;
            frm_repo_zyyj.brxm1.caption := zy_brxm;
            frm_repo_zyyj.ksmc1.caption := zy_ksmc;
            frm_repo_zyyj.wjbh1.Caption := zy_sjbh;
            frm_repo_zyyj.czy1.caption := trim(pub_czydm) + trim(pub_czyxm);
            frm_repo_zyyj.yjxs1.Caption := '现金';
            frm_repo_zyyj.sfrq1.caption := datetimetostr(frm_func.curr_date);
            frm_repo_zyyj.bch1.Caption := bch.Text;
            frm_repo_zyyj.dwmc1.Caption := pub_yymc;

            frm_repo_zyyj.repo_zyyj1.Print;
        end
        else if (pub_yydm = '0053') then //''0053'新疆沙湾县人民医院
        begin
            application.CreateForm(Tfrm_repo_zyyj, frm_repo_zyyj);
            frm_repo_zyyj.QRL_ws_bch.caption := bch.Text;
            frm_repo_zyyj.QRL_ws_xx.caption := floattostr(zy_yjje) + '元';
            frm_repo_zyyj.QRL_ws_dx.caption := NumberToMoney(zy_yjje);
            frm_repo_zyyj.QRL_ws_tmh.caption := zy_tmh;
            frm_repo_zyyj.QRL_ws_brxm.caption := zy_brxm;
            frm_repo_zyyj.QRL_ws_ksmc.caption := zy_ksmc;
            frm_repo_zyyj.QRL_ws_sjbh.Caption := zy_sjbh;
            frm_repo_zyyj.QRL_ws_sfy.caption := trim(pub_czydm) + trim(pub_czyxm);
            frm_repo_zyyj.QRL_ws_sfrq.caption := datetimetostr(frm_func.curr_date);
            frm_repo_zyyj.Repo_wszyy.Print;
//    frm_repo_zyyj.Repo_wszyy.Preview;
        end
        else if (pub_yydm = '0102') or (pub_yydm = '0108') or (pub_yydm = '0136') then //0102:蓬溪中医院;0136 石泉
        begin
            application.CreateForm(Tfrm_repo_zyyj, frm_repo_zyyj);
            frm_repo_zyyj.QRL_yjxx_px.caption := '小写:' + floattostr(zy_yjje) + '元';
            frm_repo_zyyj.QRL_yjdx_px.caption := '大写:' + NumberToMoney(zy_yjje);
            frm_repo_zyyj.QRL_tmh_px.caption := '条码号:' + zy_tmh;
            frm_repo_zyyj.QRL_brxm_px.caption := '病人姓名:' + zy_brxm;
            frm_repo_zyyj.QRL_ksmc_px.caption := '科室名称:' + zy_ksmc;
            frm_repo_zyyj.QRL_sjh_px.Caption := '收据号:' + zy_sjbh;
            frm_repo_zyyj.QRL_sfczy_px.caption := '收费员' + trim(pub_czydm) + trim(pub_czyxm);
            frm_repo_zyyj.QRL_yjlx_px.Caption := '现金';
            frm_repo_zyyj.QRL_sfrq_px.caption := '收费日期:' + datetimetostr(frm_func.curr_date);
            frm_repo_zyyj.QRL_yymc_px.caption := pub_yymc;
            if pub_yydm = '0136' then
            begin
                frm_repo_zyyj.QuickRep_px.Page.Length := 93;
            end;
            frm_repo_zyyj.QuickRep_px.Print;
        end
        else if pub_yydm = '0101' then //0101:西充县人民医院
        begin
            application.CreateForm(Tfrm_repo_zyyj, frm_repo_zyyj);
            frm_repo_zyyj.QRL_yjxx_xc.caption := '小写:' + floattostr(zy_yjje) + '元';
            frm_repo_zyyj.QRL_yjdx_xc.caption := '大写:' + NumberToMoney(zy_yjje);
            frm_repo_zyyj.QRL_tmh_xc.caption := '条码号:' + zy_tmh;
            frm_repo_zyyj.QRL_brxm_xc.caption := '病人姓名:' + zy_brxm;
            frm_repo_zyyj.QRL_ksmc_xc.caption := '科室名称:' + zy_ksmc;
            frm_repo_zyyj.QRL_sjh_xc.Caption := '收据号:' + zy_sjbh;
            frm_repo_zyyj.QRL_sfczy_xc.caption := '收费员' + trim(pub_czydm) + trim(pub_czyxm);
            frm_repo_zyyj.QRL_yjlx_xc.Caption := '现金';
            frm_repo_zyyj.QRL_sfrq_xc.caption := '收费日期:' + datetimetostr(frm_func.curr_date);
            frm_repo_zyyj.QRL_yymc_xc.caption := pub_yymc;
            frm_repo_zyyj.QuickRep_xc.Print;
        end
        else if pub_yydm = '0111' then //0111:和布克赛尔县人民医院
        begin
            application.CreateForm(Tfrm_repo_zyyj, frm_repo_zyyj);
            frm_repo_zyyj.QRL_yjxx_hbkse.caption := '小写:' + floattostr(zy_yjje) + '元';
            frm_repo_zyyj.QRL_yjdx_hbkse.caption := '大写:' + NumberToMoney(zy_yjje);
            frm_repo_zyyj.QRL_tmh_hbkse.caption := zy_tmh;
            frm_repo_zyyj.QRL_brxm_hbkse.caption := zy_brxm;
            frm_repo_zyyj.QRL_ksmc_hbkse.caption := zy_ksmc;
            frm_repo_zyyj.QRL_xb_hbkse.caption := dbedit1.Text;
            frm_repo_zyyj.QRL_sjh_hbkse.Caption := '收据号:' + zy_sjbh;
            frm_repo_zyyj.QRL_sfczy_hbkse.caption := trim(pub_czydm) + trim(pub_czyxm);
            frm_repo_zyyj.QRL_sfrq_hbkse.caption := datetimetostr(frm_func.curr_date);
            frm_repo_zyyj.QRL_yymc_hbkse.caption := '';
            frm_repo_zyyj.QuickRep_hbkse.Print;
        end
        else if pub_yydm = '9999' then //9999仪陇县人民医院
        begin
            decodedate(frm_func.curr_date, nian, yue, ri);
            application.CreateForm(Tfrm_repo_zyyj, frm_repo_zyyj);
            frm_repo_zyyj.cfh.Caption := '';
            frm_repo_zyyj.czks.Caption := '';
            frm_repo_zyyj.czks.Caption := zy_ksmc;
            frm_repo_zyyj.sjh.Caption := '收据号:' + zy_sjbh;
            frm_repo_zyyj.name.Caption := zy_brxm;
            frm_repo_zyyj.hj.Caption := floattostr(zy_yjje);
            frm_repo_zyyj.QRL_dx_yl.Caption := NumberToMoney(zy_yjje);
            frm_repo_zyyj.QRL_sfczy_yl.Caption := '[' + pub_czyxm + ']';
            frm_repo_zyyj.nian.Caption := inttostr(nian);
            frm_repo_zyyj.yue.Caption := inttostr(yue);
            frm_repo_zyyj.ri.Caption := inttostr(ri);
            frm_repo_zyyj.fymc.Caption := '住院预交费';
            frm_repo_zyyj.fyje.Caption := floattostr(zy_yjje);
            frm_repo_zyyj.QuickRep_yl.print;
//    frm_repo_zyyj.QuickRep_yl.Preview;
            try frm_repo_zyyj.Free except end;
        end
        else
            if pub_yydm = '0013' then //0013 三台县人民医院
            begin
                frm_repo_zyyj.stxyy_yjsm.caption := formatfloat('0.00', zy_yjje);
                frm_repo_zyyj.stxyy_dx.caption := NumberToMoney(zy_yjje);
            //frm_repo_zyyj.tmh.caption := zy_tmh;
                frm_repo_zyyj.stxyy_brxm.caption := zy_brxm;
                frm_repo_zyyj.stxyy_ksmc.caption := zy_ksmc;
                frm_repo_zyyj.stxyy_sjh.Caption := zy_sjbh;
            //frm_repo_zyyj.stxyy_czy.caption := trim(pub_czydm) + trim(pub_czyxm);
            //frm_repo_zyyj.yjxs.Caption := yjfs;
            //frm_repo_zyyj.sfrq.caption := datetimetostr(frm_func.curr_date);
                frm_repo_zyyj.stxyy_sfy.caption := trim(pub_czydm) + trim(pub_czyxm);
                frm_repo_zyyj.stxyy_bch.Caption := bch.Text;
                frm_repo_zyyj.stxyy_sfrq_n.caption := formatdatetime('yyyy', frm_func.curr_date);
                frm_repo_zyyj.stxyy_sfrq_y.caption := formatdatetime('mm', frm_func.curr_date);
                frm_repo_zyyj.stxyy_sfrq_r.caption := formatdatetime('dd', frm_func.curr_date);
                frm_repo_zyyj.stxyy_sfrq_xs.caption := formatdatetime('hh:mm:ss', frm_func.curr_date);
                frm_repo_zyyj.qr_stxyy.Print;
            end else
                if pub_yydm = '0139' then //----拉萨市人民医院¥
                begin
                    frm_repo_zyyj.ls_yjsm.caption := '¥' + floattostr(zy_yjje) + '元';
                    frm_repo_zyyj.ls_dx.caption := NumberToMoney(zy_yjje);
                    frm_repo_zyyj.ls_tmh.caption := zy_tmh;
                    frm_repo_zyyj.ls_brxm.caption := zy_brxm;
                    frm_repo_zyyj.ls_ksmc.caption := zy_ksmc;
                    frm_repo_zyyj.ls_sjbh.Caption := zy_sjbh;
                    frm_repo_zyyj.ls_czy.caption := trim(pub_czydm) + trim(pub_czyxm);
                    frm_repo_zyyj.ls_yjxs.Caption := '现金';
                    frm_repo_zyyj.ls_sfrq.caption := datetimetostr(frm_func.curr_date);
                    frm_repo_zyyj.repo_zyyj_ls.Print;
                end else
                begin
                    frm_repo_zyyj.yjsm.caption := floattostr(zy_yjje) + '元';
                    frm_repo_zyyj.dx.caption := NumberToMoney(zy_yjje);
                    frm_repo_zyyj.tmh.caption := zy_tmh;
                    frm_repo_zyyj.brxm.caption := zy_brxm;
                    frm_repo_zyyj.ksmc.caption := zy_ksmc;
                    frm_repo_zyyj.wjbh.Caption := zy_sjbh;
                    frm_repo_zyyj.czy.caption := trim(pub_czydm) + trim(pub_czyxm);
                    frm_repo_zyyj.yjxs.Caption := '现金';
                    frm_repo_zyyj.sfrq.caption := datetimetostr(frm_func.curr_date);
                    frm_repo_zyyj.repo_zyyj.Print;
                end;

            //if Assigned(frm_repo_zyyj) then
            //try frm_repo_zyyj.free except end;
            //还原原来默认打印机
        try
            if v_IsPrinterJoin then
                Proc_ChangePrinter(v_PrinterIndex_old, True);
        except

        end;
//--------------------------------------------------------------
    end;
    if s = '2' then
    begin
        //判断是否使用打印关联方式及取得打印机序号
//        try
          v_PrinterIndex_old := Printer.PrinterIndex;
//          v_PrinterIndex_new := func_GetPrinterIndex( 3, v_IsPrinterJoin );
//          if v_IsPrinterJoin then
//            Proc_ChangePrinter( v_PrinterIndex_new, True );
//        except
//        end;
{$ifdef Maks}
        Frm_Dyjgl.ChangeDefaultPrinter(记费明细,True);
        {$ENDIF}


          if not Assigned(frm_repo_zyjz) then
          application.CreateForm(Tfrm_repo_zyjz, frm_repo_zyjz);
        frm_repo_zyjz.sp_fymx_dy.Close;
        frm_repo_zyjz.sp_fymx_dy.Parameters.ParamByName('@ph').value := ph;
        frm_repo_zyjz.sp_fymx_dy.Open;
        //------------calmhawk----2007-10-25-----加安县二医院收费清单-----
        if pub_yydm = '0092' then
        begin
            frm_repo_zyjz.a_yymc.Caption := pub_yymc + '记费单';
            frm_repo_zyjz.a_sfrq.Caption := datetimetostr(frm_func.curr_date);
            //frm_repo_zyjz.brks.Caption := '科室：' + zyks.text;
            frm_repo_zyjz.a_brxm.Caption := brxm.Text;
            frm_repo_zyjz.a_sfy.Caption := pub_czyxm;
            //frm_repo_zyjz.kdysxm.Caption := '医生:' + kdys.Text;
            //frm_repo_zyjz.brl.Caption := '床号:' + bch.Text + '  ' + '卡号:' + zy_tmh;
            //frm_repo_zyjz.brnl.Caption := '年龄：' + dbedit2.Text;
            //frm_repo_zyjz.brxb.Caption := '性别:' + dbedit1.Text;
            frm_repo_zyjz.quickrep2.Print;
        end
        else if pub_yydm = '0101' then //西充县人民医院(只打印部分项目)
        begin
            frm_repo_zyjz.QRL_yymc_xc.Caption := pub_yymc + '记费单';
            frm_repo_zyjz.QRL_sfrq_xc.Caption := '记费日期：' + datetimetostr(frm_func.curr_date);
            frm_repo_zyjz.QRL_brxm_xc.Caption := '病人：' + brxm.Text;
            frm_repo_zyjz.QRL_sfydm_xc.Caption := '收费：' + pub_czyxm;
            frm_repo_zyjz.QRL_brl_xc.Caption := '卡号:' + zy_tmh;
            while not frm_repo_zyjz.sp_fymx_dy.Eof do //删除不打印项目
            begin
                if Pos('打印项目', frm_repo_zyjz.sp_fymx_dy.FieldByName('bak').AsString) = 0 then
                    frm_repo_zyjz.sp_fymx_dy.Delete
                else
                    frm_repo_zyjz.sp_fymx_dy.Next;
            end;
            while not frm_repo_zyjz.sp_fymx_dy.IsEmpty do
            begin
                frm_repo_zyjz.sp_fymx_dy.Filter := ' czks = ' + frm_repo_zyjz.sp_fymx_dy.fieldbyname('czks').asstring;
                frm_repo_zyjz.sp_fymx_dy.Filtered := true;
                frm_repo_zyjz.QRL_ksmc_xc.Caption := '科室：' + frm_repo_zyjz.sp_fymx_dy.fieldbyname('czksmc').asstring;
                frm_repo_zyjz.QuickRep_xc.Print;

                while not frm_repo_zyjz.sp_fymx_dy.IsEmpty do
                    frm_repo_zyjz.sp_fymx_dy.Delete;
                frm_repo_zyjz.sp_fymx_dy.Filtered := false;
            end;
        end
        else if pub_yydm = '0102' then //蓬溪县中医院(打印内容基本一样,只是大小不一样)
        begin
            frm_repo_zyjz.QRL_yymc_px.Caption := pub_yymc + '记费单';
            frm_repo_zyjz.QRL_sfrq_px.Caption := '记费日期：' + datetimetostr(frm_func.curr_date);
            frm_repo_zyjz.QRL_ksmc_px.Caption := '科室：' + zyks.text;
            frm_repo_zyjz.QRL_brxm_px.Caption := '病人：' + brxm.Text;
            frm_repo_zyjz.QRL_sfydm_px.Caption := '收费：' + pub_czyxm;
            frm_repo_zyjz.QRL_ysxm_px.Caption := '医生:' + kdys.Text;
            frm_repo_zyjz.QRL_brl_px.Caption := '床号:' + bch.Text + '  ' + '卡号:' + zy_tmh;
            frm_repo_zyjz.QRL_brnl_px.Caption := '年龄：' + dbedit2.Text;
            frm_repo_zyjz.QRL_brxb_px.Caption := '性别:' + dbedit1.Text;
            //---------calmhawk----2007-11-06----自动按处置科室分页打印-----
            while not frm_repo_zyjz.sp_fymx_dy.IsEmpty do
            begin
                frm_repo_zyjz.sp_fymx_dy.Filter := ' czks = ' + frm_repo_zyjz.sp_fymx_dy.fieldbyname('czks').asstring;
                frm_repo_zyjz.sp_fymx_dy.Filtered := true;
                frm_repo_zyjz.QuickRep_px.Print;

                while not frm_repo_zyjz.sp_fymx_dy.IsEmpty do
                    frm_repo_zyjz.sp_fymx_dy.Delete;
                frm_repo_zyjz.sp_fymx_dy.Filtered := false;
            end;
        end
        else
        begin
            if pub_yydm = '0127' then //仪陇外阜医院
            begin
                frm_repo_zyjz.quickrep1.page.length := 93.5;
                frm_repo_zyjz.quickrep1.page.width := 100;
            end;
            if pub_yydm = '0025' then //名山县中医院
            begin
                frm_repo_zyjz.quickrep1.page.length := 93.5;
                frm_repo_zyjz.quickrep1.page.width := 121;
            end;
            frm_repo_zyjz.yymc.Caption := pub_yymc + '记费单';
            frm_repo_zyjz.sfrq.Caption := '记费日期：' + datetimetostr(frm_func.curr_date);
            frm_repo_zyjz.brks.Caption := '科室：' + zyks.text;
            frm_repo_zyjz.dybrxm.Caption := '病人：' + brxm.Text;
            frm_repo_zyjz.sfydm.Caption := '收费：' + pub_czyxm;
            frm_repo_zyjz.kdysxm.Caption := '医生:' + kdys.Text;
            frm_repo_zyjz.brl.Caption := '床号:' + bch.Text + '  ' + '卡号:' + zy_tmh;
            frm_repo_zyjz.brnl.Caption := '年龄：' + dbedit2.Text;
            frm_repo_zyjz.brxb.Caption := '性别:' + dbedit1.Text;
            //---------calmhawk----2007-11-06----自动按处置科室分页打印-----
            while not frm_repo_zyjz.sp_fymx_dy.IsEmpty do
            begin
                frm_repo_zyjz.sp_fymx_dy.Filter := ' czks = ' + frm_repo_zyjz.sp_fymx_dy.fieldbyname('czks').asstring;
                frm_repo_zyjz.sp_fymx_dy.Filtered := true;
                frm_repo_zyjz.quickrep1.print;

                while not frm_repo_zyjz.sp_fymx_dy.IsEmpty do
                begin
                    frm_repo_zyjz.sp_fymx_dy.Delete;
                end;
                frm_repo_zyjz.sp_fymx_dy.Filtered := false;
            end;

        end;
        try FreeAndNil(frm_repo_zyjz) except
        end;
//         //还原原来默认打印机
//        try
//          if v_IsPrinterJoin then
//            Proc_ChangePrinter( v_PrinterIndex_old, True );
//        except
//        end;
{$ifdef Maks}
        Frm_Dyjgl.RevertDefaultPrinter(True);
        {$endif}
    end;
end;

procedure Tfrm_zysf_yjjf.proc_savexmyz;
begin
  if zy_fydm = '' then
  begin
    application.MessageBox('请输入收费项目！', '提示', 16);
    fydm.SelectAll;
    fydm.SetFocus;
    abort;
  end;
  if zy_kdks = '' then
  begin
    application.MessageBox('请输入开单科室室！', '提示', 16);
    kdks.SelectAll;
    kdks.SetFocus;
    abort;
  end;
  if zy_czks = '' then
  begin
    application.MessageBox('请输入治疗科室！', '提示', 16);
    czks.SelectAll;
    czks.SetFocus;
    abort;
  end;
  if zy_kdys = '' then
  begin
    application.MessageBox('请输入开单人员！', '提示', 16);
    kdys.SelectAll;
    kdys.SetFocus;
    abort;
  end;
  if zy_czys = '' then
  begin
    application.MessageBox('请输入治疗人员！', '提示', 16);
    czys.SelectAll;
    czys.SetFocus;
    abort;
  end;
end;

procedure Tfrm_zysf_yjjf.proc_get_sjbh;
var
  bh: integer;
begin
  try
    with dm_data.qry_pub do
    begin
      close;
      sql.clear;
      sql.text := 'select sjzh-sybh sjsl,sybh,sjqh from sys_sjlymx' +
        ' where lyr=' + '''' + pub_czydm + '''' +
        ' and   qybz=1 ' +
        ' and   tybz=0 ' +
        ' and   sjlb=' + '''' + pub_jssjlb + '''';
      open;
    end;
    if (dm_data.qry_pub['sjsl'] = 0) or (dm_data.qry_pub['sjsl'] = null) then
    begin
      MessageDlg('收据已用完，现在将退出该模块，请启用新收据！', mtWarning, [mbOK], 0);
      postmessage(handle, wm_close, 0, 0);
      abort;
    end
    else
    begin
      if dm_data.qry_pub['sybh'] = 0 then
      begin
        bh := dm_data.qry_pub['sjqh'];
      end
      else
      begin
        bh := dm_data.qry_pub['sybh'] + 1;
      end;
      zy_sjbh := formatex(bh, 9);
      sjbh.Text := zy_sjbh;
    end;
  except
  end;
end;

procedure Tfrm_zysf_yjjf.proc_setsffs;
begin
  if (sp_cx_sfxm['fydm'] = pub_xyfdm) or (sp_cx_sfxm['fydm'] = pub_zychenydm) then
  begin
    zy_sffs := 1; //西药 成药 处方收费记费
    Panel5.Enabled := true;
    kdks.Enabled := false;
    kdys.Enabled := false;
    czks.Enabled := false;
    czys.Enabled := false;
    je.Enabled := false;
    sl.Enabled := false;
    cfh.Enabled := true;
    cfy.Enabled := true;
    cfn.Enabled := true;
    cfh.SelectAll;
    cfh.SetFocus;
  end
  else
    if (sp_cx_sfxm['fydm'] = pub_zychaoydm) then
    begin
      zy_sffs := 3; //中药处方收费记费
      panel5.Enabled := true;
      kdks.Enabled := false;
      kdys.Enabled := false;
      czks.Enabled := false;
      czys.Enabled := false;
      je.Enabled := false;
      sl.Enabled := false;
      cfy.Enabled := true;
      cfn.Enabled := true;
      cfh.Enabled := true;
      cfh.SelectAll;
      cfh.SetFocus;
    end
    else
    begin
      cfy.Enabled := false;
      cfn.Enabled := false;
      cfh.Enabled := false;
      kdks.Enabled := true;
      kdys.Enabled := true;
      czks.Enabled := true;
      czys.Enabled := true;
      sl.Enabled := true;
      je.Enabled := true;
      zy_sffs := 2; //项目收费记费
      if ad_zyfymx_ls.RecordCount >= 1 then
      begin
        sl.SelectAll;
        sl.setfocus;
      end
      else
        kdys.SetFocus;
    end;
  sfxmwriteIn;
end;

procedure Tfrm_zysf_yjjf.displayvalue;
begin
  dispinit := true;
  b_giveup.enabled := true;
  brxm.text := sp_cx_zybrjbqk.fieldbyname('brxm').asstring;
  tmh.text := sp_cx_zybrjbqk.fieldbyname('tmh').asstring;
  zy_tmh := sp_cx_zybrjbqk.fieldbyname('tmh').asstring;
  zy_brxm := sp_cx_zybrjbqk.fieldbyname('brxm').asstring;
  zy_brdz := sp_cx_zybrjbqk.fieldbyname('brdz').asstring;
  bch.text := sp_cx_zybrjbqk.fieldbyname('bch').asstring;
  fylb.text := sp_cx_zybrjbqk.fieldbyname('lbmc').asstring;
  zdjf.Text := sp_cx_zybrjbqk.fieldbyname('zdjf').asstring;
  ybfyxe.Text := sp_cx_zybrjbqk.fieldbyname('ybndzje').asstring;
  RYRQ.TEXT := datetostr(sp_cx_zybrjbqk.fieldbyname('ryrq').asdatetime);
  zyj.text := floattostr(sp_cx_zybrjbqk.fieldbyname('yjze').asfloat);
  zfy.text := floattostr(sp_cx_zybrjbqk.fieldbyname('zfy').asfloat);
  zzf.text := floattostr(sp_cx_zybrjbqk.fieldbyname('zfze').asfloat);
  kyje.text := floattostr(sp_cx_zybrjbqk.fieldbyname('yjze').asfloat
    - sp_cx_zybrjbqk.fieldbyname('zfze').asfloat + sp_cx_zybrjbqk.fieldbyname('zdjf').asfloat);
  syje.text := floattostr(sp_cx_zybrjbqk.fieldbyname('yjze').asfloat
    - sp_cx_zybrjbqk.fieldbyname('zfze').asfloat);
  zy_czks := sp_cx_zybrjbqk.fieldbyname('ksdm').asstring;
  sbdw.text := sp_cx_zybrjbqk.fieldbyname('sbdw').asstring;
  bz.text := sp_cx_zybrjbqk.fieldbyname('bz').asstring;
  zy_zyh := sp_cx_zybrjbqk.fieldbyname('zyh').asstring;
  zy_zfzdmc := sp_cx_zybrjbqk.fieldbyname('zfzdmc').asstring;
  ph := get_sjh(pub_czydm);
  ad_zyfymx_ls.DisableControls;
  ad_zyfymx_ls.Close;
  ad_zyfymx_ls.commandtext := 'select * from zysf_zyfymx_ls where 1=2';
  ad_zyfymx_ls.open;
  ad_zyfymx_ls.EnableControls;
  zy_kdks := sp_cx_zybrjbqk.fieldbyname('ksdm').asstring;
  zy_kdys := sp_cx_zybrjbqk.fieldbyname('zgys').asstring;
  zyks.text := sp_cx_zybrjbqk.fieldbyname('ksmc').asstring;
  kdks.text := sp_cx_zybrjbqk.fieldbyname('ksmc').asstring;
  kdys.text := sp_cx_zybrjbqk.fieldbyname('ysxm').asstring;
  zy_zdjf := sp_cx_zybrjbqk.fieldbyname('zdjf').asfloat;
  zy_brnl := sp_cx_zybrjbqk.fieldbyname('brnl').asstring;
  yjje.text := '0';
end;

procedure Tfrm_zysf_yjjf.tmhExit(Sender: TObject);
begin
{  kdys.Text := '';
  kdks.Text := '';
  czys.Text := '';
  czks.Text := '';
  yjje.Text := '';
  fylb.Text := '';
  ryrq.Text := '';
  zfy.text := '0';
  zyj.text := '0';
  zzf.text := '0';
  syje.text := '0';
  kyje.Text := '0';
  frm_func.restorecolor(sender);
  if not (B_FINAL.Focused) and (trim(tmh.text) <> '') then
  begin
    with sp_cx_zybrjbqk do
    begin
      try
        tmh.text := formatex(strtoint(tmh.text), 9);
        zy_tmh := tmh.Text;
      except
      end;
      zy_tmh := tmh.Text;
      Close;
      parameters.ParamByName('@tmh').value := trim(tmh.text);
      active := true;
    end;
    if sp_cx_zybrjbqk.isempty then
    begin
      Application.MessageBox('没有此病人！', '错误', 0 + 16);
      tmh.setfocus;
    end
    else
      if sp_cx_zybrjbqk.recordcount > 1 then
      begin
        g_empt.Columns.Clear;
        g_empt.DataSource := ds_zybrjbqk;
        g_empt.Columns.add;
        g_empt.Columns[0].field := sp_cx_zybrjbqk.fieldlist.fieldbyname('tmh');
        g_empt.Columns[0].title.caption := '条码号';
        g_empt.Columns[0].Width := 75;
        g_empt.Columns.add;
        g_empt.Columns[1].field := sp_cx_zybrjbqk.fieldlist.fieldbyname('brxm');
        g_empt.Columns[1].title.caption := '姓名';
        g_empt.Columns[1].Width := 80;
        g_empt.Columns.add;
        g_empt.Columns[2].field := sp_cx_zybrjbqk.fieldlist.fieldbyname('brxb');
        g_empt.Columns[2].title.caption := '性别';
        g_empt.Columns.add;
        g_empt.Columns[3].field := sp_cx_zybrjbqk.fieldlist.fieldbyname('brnl');
        g_empt.Columns[3].title.caption := '年龄';
        g_empt.Columns[3].Width := 40;
        g_empt.Columns.add;
        g_empt.Columns[4].field := sp_cx_zybrjbqk.fieldlist.fieldbyname('ksmc');
        g_empt.Columns[4].title.caption := '住院科室';
        g_empt.Columns[4].Width := 90;
        g_empt.Columns.add;
        g_empt.Columns[5].field := sp_cx_zybrjbqk.fieldlist.fieldbyname('brdz');
        g_empt.Columns[5].title.caption := '病人地址';
        g_empt.Tag := 6;
        g_empt.left := tmh.left;
        g_empt.top := tmh.top + tmh.Height + tmh.parent.top;
        g_empt.Show;
        g_empt.SetFocus;
      end
      else
      begin
        displayvalue;
        panel1.enabled := false;
        panel3.enabled := true;
        fydm.setfocus;
      end;
  end
  else
    if (trim(tmh.text) = '') and (not (b_final.focused or B_giveup.focused)) then
    begin
      Application.MessageBox('请输入条码号或病床号或病人姓名！', '错误', 0 + 16);
      tmh.setfocus;
    end;}
end;

procedure Tfrm_zysf_yjjf.fydmExit(Sender: TObject);
begin
  frm_func.restorecolor(sender);
  if not b_enter.Focused then b_enter.Enabled := false;
  if not b_giveup.Focused then B_giveup.Enabled := false;
end;

procedure Tfrm_zysf_yjjf.fydmprocess(fydmstr: string);
begin
end;

procedure Tfrm_zysf_yjjf.datasave(tablename: string);
begin
  dm_data.ado_mydata.BeginTrans;
  try
    dm_data.ado_mydata.CommitTrans;
    fydm.text := '';
    fydm.SetFocus;
    b_enter.Enabled := true;
  except
    dm_data.ado_mydata.RollbackTrans;
    Application.MessageBox('数据没有正确保存，请再次保存', '错误', MB_Ok + MB_DEFBUTTON1 + MB_ICONERROR)
  end;
end;

procedure Tfrm_zysf_yjjf.sfxmwriteIn;
begin
  if not ad_zyfymx_ls.active then
  begin
    ad_zyfymx_ls.Close;
    ad_zyfymx_ls.commandtext := 'select * from zysf_zyfymx_ls where and zyh=' + #39 + zy_zyh + #39 + ' and ph=' + #39 + ph + #39;
    ad_zyfymx_ls.open;
  end;
  if (ad_zyfymx_ls.isempty) or (trim(ad_zyfymx_ls.FieldByName('fydm').asstring) <> '') then
    ad_zyfymx_ls.append
  else
    if (not ad_zyfymx_ls.isempty) and (trim(ad_zyfymx_ls.FieldByName('fydm').asstring) = '') then
      ad_zyfymx_ls.edit;
  ad_zyfymx_ls['fydm'] := sp_cx_sfxm['fydm'];
  ad_zyfymx_ls['zyh'] := sp_cx_zybrjbqk['zyh'];
  ad_zyfymx_ls['tmh'] := sp_cx_zybrjbqk['tmh'];
  ad_zyfymx_ls['kdks'] := zy_kdks;
  ad_zyfymx_ls['kdys'] := zy_kdys;
  if trim(sp_cx_sfxm.fieldbyname('zyksgs').asstring) <> '' then
    zy_czks := trim(sp_cx_sfxm.fieldbyname('zyksgs').asstring)
  else
    if zy_czks = '' then
      zy_czks := sp_cx_zybrjbqk.fieldbyname('ksdm').asstring;
  ad_zyfymx_ls['czks'] := zy_czks;
  dispysks(czks, zy_czks, 2, zy_czks);
  ad_zyfymx_ls['czys'] := zy_czys;
  ad_zyfymx_ls['fysl'] := 1;
  sl.SelectAll;
  ad_zyfymx_ls['sfczy'] := pub_czydm;
  ad_zyfymx_ls['cfbh'] := '';
  ad_zyfymx_ls['sfrq'] := frm_func.curr_date;
  ad_zyfymx_ls['ph'] := ph;
  sfbz.text := floattostr(sp_cx_sfxm['sfbz']);
  if ((sp_cx_sfxm['sfbz'] > 0) and (pub_sfsdsfbz)) or (trim(sp_cx_sfxm['dldm']) = '50') then
  begin
    je.ReadOnly := true;
    ad_zyfymx_ls['bz'] := 'sd';
  end
  else
    je.ReadOnly := false;
  fydm.text := trim(sp_cx_sfxm['fymc']);
end;

procedure Tfrm_zysf_yjjf.slExit(Sender: TObject);
begin
  if strtoint(trim(sl.Text)) > 10 then
    if application.messagebox('费用数量大于 10 ,是否正确？', '提示', mb_yesno + mb_iconquestion) = idno then
    begin
      sl.SetFocus;
      abort;
    end
    else
      if strtofloat(sfbz.text) = 0 then
      begin
        je.SetFocus;
        je.SelectAll;
      end;

  frm_func.restorecolor(sender);

  if not (b_final.Focused) then
  begin
    if ad_zyfymx_ls.fieldbyname('fysl').asinteger > 0 then
    begin
      ad_zyfymx_ls.edit;
      ad_zyfymx_ls['kdys'] := zy_kdys;
      ad_zyfymx_ls['kdks'] := zy_kdks;
      ad_zyfymx_ls['czys'] := zy_czys;
      if zy_czks <> '' then
        ad_zyfymx_ls['czks'] := zy_czks;
      ad_zyfymx_ls['fysl'] := strtofloat(sl.text);
      sl.SelectAll;
      ad_zyfymx_ls['fyje'] := ad_zyfymx_ls['fysl'] * strtofloat(sfbz.text);
      if (trim(zy_zfzdmc) <> '') and (zy_fydm <> pub_xyfdm) then
      begin
        if sp_cx_zybrjbqk.fieldbyname('ybndzje').asfloat - sp_cx_zybrjbqk.fieldbyname('zfy').asfloat > 0 then /////-strtofloat(bcje.text)
          ad_zyfymx_ls['zfje'] := ad_zyfymx_ls['fyje'] * ad_zyfymx_ls[trim(zy_zfzdmc)] / 100
        else
          ad_zyfymx_ls['zfje'] := ad_zyfymx_ls['fyje'];
      end
      else
        ad_zyfymx_ls['zfje'] := ad_zyfymx_ls['fysl'] * strtofloat(sfbz.text);
      ad_zyfymx_ls.Post;
    end
    else
    begin
      if esckey then
      begin

        fydm.SetFocus;
        esckey := false;
      end
      else
      begin
        application.MessageBox('数量为0，请核对无误后重新输入', '提示', MB_OK + MB_ICONINFORMATION);
        sl.SelectAll;
        sl.setfocus;
      end;
    end;
  end;
  if pub_yydm = '0269' then
  begin
    qry_jsmx.Append;
    qry_jsmx['tmh'] := tmh.Text;
    qry_jsmx['zyh'] := sp_cx_zybrjbqk.fieldbyname('zyh').asstring;
    qry_jsmx['ph'] := ph;
    qry_jsmx['kdks'] :=zy_kdks;
    qry_jsmx['czks'] := zy_czks;
    qry_jsmx['kdys'] := zy_kdys;
    qry_jsmx['czys'] := zy_czys;
    qry_jsmx['fydm'] :=zy_fydm;
    qry_jsmx['fysl'] := strtofloat(sl.text);
    qry_jsmx['fyje'] := sfbz.Text;
    qry_jsmx['ssje'] := je.Text;
    qry_jsmx['zfje'] := je.Text;
    qry_jsmx['sfczy'] := pub_czydm;
    qry_jsmx['sfrq'] := frm_func.curr_date;
    qry_jsmx['sjbh'] := zy_sjbh;
    qry_jsmx['jzbz'] := '1';
    qry_jsmx['jsbz'] := '1';
    qry_jsmx['tfbz'] := '0';
    qry_jsmx['bz'] := 'sd';
    qry_jsmx['csfyrq'] := frm_func.curr_date;
    qry_jsmx.Post;
  end;
end;

procedure Tfrm_zysf_yjjf.jeExit(Sender: TObject);
begin
  if strtofloat(je.Text) > 0 then
  begin
    frm_func.restorecolor(sender);
    proc_savexmyz;
    ad_zyfymx_ls.Edit;
    ad_zyfymx_ls.post;
    fydm.Text := '';
    je.Enabled := false;
    fydm.SetFocus;
  end
  else
  begin
    application.MessageBox('注意:金额为0!', '错误', mb_ok + mb_iconerror);
    je.setfocus;
  end
end;

procedure Tfrm_zysf_yjjf.B_ENTERClick(Sender: TObject);
var
  returnvalue:string;
  zqbcbz, yjdy: boolean; //zyfymx_ls保存正确时置此标志
  v_tmh:string;
  v_cyrq:TDateTime;
  v_xyf,v_zyf,v_cyf,v_zcf,v_jcf,v_ssf,v_sxf,v_zlf,v_clf,v_hlf,v_cwf,v_qt,v_zje:real;
begin
    //写入zysf_zyfymx_ls
    //为各划价着手费标志
    //将临时表写入正式表
    //转入姓名处理下一人
    if pub_yydm='0269' then     //台山直接收费
      begin
        IF Application.MessageBox('是否单独结算？','提示',MB_OKCANCEL)=ID_OK
        THEN BEGIN
          dm_data.ado_mydata.BeginTrans;
          try
              v_xyf:=0.00;
              v_zyf:=0.00;
              v_cyf:=0.00;
              v_zcf:=0.00;
              v_jcf:=0.00;
              v_ssf:=0.00;
              v_sxf:=0.00;
              v_zlf:=0.00;
              v_clf:=0.00;
              v_hlf:=0.00;
              v_cwf:=0.00;
              v_qt:=0.00;
              qry_jsmx.UpdateBatch(arAll);
              SetNewsjbh;
               //准备打印数据
              qry_dyfy.Close;
              qry_dyfy.Parameters.ParamByName('sjbh').Value := sjbh.Text;
              qry_dyfy.Open;
              v_cyrq := qry_dyfy.FieldByName('出院日期').AsDateTime;
              qry_dyfy.First;
              while not qry_dyfy.Eof do
              begin
                if trim(qry_dyfy.FieldByName('项目名称').AsString)='西药费' then
                begin
                v_xyf := qry_dyfy.FieldByName('费用金额').AsFloat;
                v_zje := v_zje + qry_dyfy.FieldByName('费用金额').AsFloat;
                end else
                if trim(qry_dyfy.FieldByName('项目名称').AsString)='中成药' then
                begin
                v_zyf := qry_dyfy.FieldByName('费用金额').AsFloat;
                v_zje := v_zje + qry_dyfy.FieldByName('费用金额').AsFloat;
                end else
                if trim(qry_dyfy.FieldByName('项目名称').AsString)='中草药' then
                begin
                v_cyf := qry_dyfy.FieldByName('费用金额').AsFloat;
                v_zje := v_zje + qry_dyfy.FieldByName('费用金额').AsFloat;
                end else
                if trim(qry_dyfy.FieldByName('项目名称').AsString)='诊查费' then
                begin
                v_zcf := qry_dyfy.FieldByName('费用金额').AsFloat;
                v_zje := v_zje + qry_dyfy.FieldByName('费用金额').AsFloat;
                end else
                if trim(qry_dyfy.FieldByName('项目名称').AsString)='检查费' then
                begin
                v_jcf := qry_dyfy.FieldByName('费用金额').AsFloat;
                v_zje := v_zje + qry_dyfy.FieldByName('费用金额').AsFloat;
                end else
                if trim(qry_dyfy.FieldByName('项目名称').AsString)='手术费' then
                begin
                v_ssf := qry_dyfy.FieldByName('费用金额').AsFloat;
                v_zje := v_zje + qry_dyfy.FieldByName('费用金额').AsFloat;
                end else
                if trim(qry_dyfy.FieldByName('项目名称').AsString)='化验费' then
                begin
                v_sxf := qry_dyfy.FieldByName('费用金额').AsFloat;
                v_zje := v_zje + qry_dyfy.FieldByName('费用金额').AsFloat;
                end else
                if trim(qry_dyfy.FieldByName('项目名称').AsString)='治疗费' then
                begin
                v_zlf := qry_dyfy.FieldByName('费用金额').AsFloat;
                v_zje := v_zje + qry_dyfy.FieldByName('费用金额').AsFloat;
                end else
                if trim(qry_dyfy.FieldByName('项目名称').AsString)='材料费' then
                begin
                v_clf := qry_dyfy.FieldByName('费用金额').AsFloat;
                v_zje := v_zje + qry_dyfy.FieldByName('费用金额').AsFloat;
                end else
                if trim(qry_dyfy.FieldByName('项目名称').AsString)='护理费' then
                begin
                v_hlf := qry_dyfy.FieldByName('费用金额').AsFloat;
                v_zje := v_zje + qry_dyfy.FieldByName('费用金额').AsFloat;
                end else
                if trim(qry_dyfy.FieldByName('项目名称').AsString)='床位费' then
                begin
                v_cwf := qry_dyfy.FieldByName('费用金额').AsFloat;
                v_zje := v_zje + qry_dyfy.FieldByName('费用金额').AsFloat;
                end else
                begin
                v_qt :=v_qt+qry_dyfy.FieldByName('费用金额').AsFloat;
                v_zje := v_zje + qry_dyfy.FieldByName('费用金额').AsFloat;
                end;
              qry_dyfy.Next;
              end;
              frm_zysf_print_service.print_jssjdy(v_tmh,qry_dyfy['住院号'],zyks.text,qry_dyfy['住院天数'],brxm.text,DBEdit1.text,sjbh.Text,DBEdit2.Text,fylb.Text,RYRQ.Text,v_cyrq,v_xyf,v_zyf,v_cyf,v_zcf,v_jcf,v_ssf,v_sxf,v_zlf,v_clf,v_hlf,v_cwf,v_qt,v_zje);
              zy_yjje := 0;
              panel1.enabled := true;
              v_tmh:= tmh.text;
              tmh.selectall;
              tmh.SetFocus;
              tmh.text:= v_tmh;
              b_enter.Enabled := false;
              b_giveup.Enabled := false;
              dm_data.ado_mydata.CommitTrans;
          except
            dm_data.ado_mydata.RollbackTrans;
            Application.MessageBox('数据没有正确保存，请再次选择计费功能保存', '错误', MB_ok + MB_DEFBUTTON1 + MB_ICONERROR)
          end;

        END;
        Exit;
      end;
  yjdy := false; //不是单独收费时,不打印预交
  if ad_zyfymx_ls.IsEmpty then
  begin
    application.MessageBox('没有记费，不需保存！', '提示', 0 + 48);
    tmh.SetFocus;
    tmh.SelectAll;
    abort;
  end;
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
    abort;
  end;
  if ad_zyfymx_ls.State in [dsedit, dsinsert] then
    ad_zyfymx_ls.post;
  sp_cx_syje.close;
  sp_cx_syje.Parameters.ParamByName('@zyh').value := sp_cx_zybrjbqk.fieldbyname('zyh').asstring;
  sp_cx_syje.Open;
  if dbgrideh2.GetFooterValue(1, dbgrideh2.columns[2]) = '0' then
    zy_bcjf := strtofloat(dbgrideh2.GetFooterValue(1, dbgrideh2.columns[2]));
  if dbgrideh2.GetFooterValue(1, dbgrideh2.columns[2]) = '0' then
  begin
    syje.text := floattostr(sp_cx_syje.fieldbyname('yjze').asfloat -
      sp_cx_syje.fieldbyname('zfze').asfloat - ad_zyfymx_ls.fieldbyname('ZFje').asfloat);
    kyje.text := floattostr(sp_cx_syje.fieldbyname('yjze').asfloat -
      sp_cx_syje.fieldbyname('zfze').asfloat + zy_zdjf - ad_zyfymx_ls.fieldbyname('ZFje').asfloat);
  end
  else
  begin
    syje.text := floattostr(sp_cx_syje.fieldbyname('yjze').asfloat -
      sp_cx_syje.fieldbyname('zfze').asfloat - strtofloat(dbgrideh2.GetFooterValue(1, dbgrideh2.columns[2])));
    kyje.text := floattostr(sp_cx_syje.fieldbyname('yjze').asfloat -
      sp_cx_syje.fieldbyname('zfze').asfloat + zy_zdjf - strtofloat(dbgrideh2.GetFooterValue(1, dbgrideh2.columns[2])));
  end;
  b_enter.setfocus;
  while not ad_zyfymx_ls.Eof do
  begin
    if (ad_zyfymx_ls.FieldByName('fyje').asfloat = 0) or
      (ad_zyfymx_ls.FieldByName('fysl').asfloat = 0) then
      ad_zyfymx_ls.Delete;
    ad_zyfymx_ls.Edit;
    if syj then ad_zyfymx_ls['sjbh'] := ph;
    ad_zyfymx_ls.Next;
  end;
  if ad_zyfymx_ls.State in [dsEdit, dsinsert] then ad_zyfymx_ls.Post;
  zy_syj := syj;
  if (zy_syj) and (trim(sp_cx_zybrjbqk.FieldByName('fylb').asstring) = '01') then
  begin
    if (sp_cx_syje['yjze'] - sp_cx_syje['zfze'] -
      strtofloat(dbgrideh2.GetFooterValue(0, dbgrideh2.columns[2])) + zy_zdjf + pub_cjje < 0) then
    begin
      application.CreateForm(Tfrm_syj, frm_syj);
      try
        frm_syj.zfy.text := sp_cx_syje['zfy'] + dbgrideh2.GetFooterValue(0, dbgrideh2.columns[1]);
        frm_syj.bcfy.text := dbgrideh2.GetFooterValue(0, dbgrideh2.columns[1]);
        frm_syj.zyj.text := sp_cx_syje['yjze'];
        frm_syj.zzf.text := sp_cx_syje['zfze'] + dbgrideh2.GetFooterValue(0, dbgrideh2.columns[2]);
        frm_syj.zdjf.text := floattostr(sp_cx_zybrjbqk.fieldbyname('zdjf').asfloat);
        if (strtofloat(syje.text) + strtofloat(dbgrideh2.GetFooterValue(0, dbgrideh2.columns[1])) > 0) and
          (strtofloat(syje.text) + strtofloat(dbgrideh2.GetFooterValue(0, dbgrideh2.columns[1])) < zy_bcjf) then
          frm_syj.yjze.text := dbgrideh2.GetFooterValue(0, dbgrideh2.columns[1])
        else
          frm_syj.yjze.text := yjje.text;
        frm_syj.ShowModal;
      finally
        frm_syj.free;
      end;
      b_giveup.Enabled := true;
      if zy_syj then
        proc_get_sjbh
      else
      begin
        application.MessageBox('你已放弃本次操作！', '提示', 0 + 48);
        abort;
      end;
    end
    else
      if application.messagebox('是否单独收本次费用？', '提示', mb_yesno + mb_iconquestion) = idyes then
      begin
        application.CreateForm(Tfrm_syj, frm_syj);
        try
          frm_syj.zfy.text := sp_cx_syje['zfy'] + dbgrideh2.GetFooterValue(0, dbgrideh2.columns[1]);
          frm_syj.bcfy.text := dbgrideh2.GetFooterValue(0, dbgrideh2.columns[1]);
          frm_syj.zyj.text := sp_cx_syje['yjze'];
          frm_syj.zzf.text := sp_cx_syje['zfze'] + dbgrideh2.GetFooterValue(0, dbgrideh2.columns[2]);
          frm_syj.zdjf.text := floattostr(sp_cx_zybrjbqk.fieldbyname('zdjf').asfloat);
          frm_syj.yjze.text := dbgrideh2.GetFooterValue(0, dbgrideh2.columns[1]);
          frm_syj.ShowModal;
        finally
          frm_syj.free;
        end;
        b_giveup.Enabled := true;
        if zy_syj then
        begin
          proc_get_sjbh;
          yjdy := true;
        end
        else
        begin
          zy_yjje := 0;
          application.MessageBox('你已放弃本次操作！', '提示', 0 + 48);
          abort;
        end;
      end
      else
      begin
        zy_yjje := 0;
        yjdy := false;
      end;
  end
  else
  begin
    if (sp_cx_syje['yjze'] - sp_cx_syje['zfze'] -
      strtofloat(dbgrideh2.GetFooterValue(0, dbgrideh2.columns[2])) + zy_zdjf + pub_cjje < 0) then
    begin
      application.MessageBox('帐上资金不足！', '提示', 0 + 16);
      b_giveup.Enabled := true;
      abort;
    end
    else
      zy_yjje := 0;
  end;
  ZQBCBZ := FALSE;

  dm_data.ado_mydata.BeginTrans;
  try
    ad_zyfymx_ls.UpdateBatch(arall);
    zqbcbz := true;
    dm_data.ado_mydata.CommitTrans;
  except
    dm_data.ado_mydata.RollbackTrans;
    Application.MessageBox('数据没有正确保存，请再次选择计费功能保存', '错误', MB_ok + MB_DEFBUTTON1 + MB_ICONERROR)
  end;
  if zqbcbz then // //记入病人费用
  begin
        {参数说明：zysf_upbrfymx(ph,zyh,tmh,ksdm,sjbh,sjlb,sfczy, qtfybs,fyze,zkje,zfje,yjje);}
    returnvalue := zysf_upbrfymx(ph, ad_zyfymx_ls['zyh'], ad_zyfymx_ls['tmh'], zy_kdks, zy_sjbh, pub_yjsjlb, pub_czydm,
      ad_zyfymx_ls.recordcount, strtofloat(dbgrideh2.GetFooterValue(0, dbgrideh2.columns[1])),
      0, strtofloat(dbgrideh2.GetFooterValue(0, dbgrideh2.columns[2])), zy_yjje);
    if returnvalue = '1' then
    begin
      if (pub_yydm='0013') or (pub_yydm='0102') or (pub_yydm='0127') or (pub_yydm='0139')   then
        //三台县医院，蓬溪中医院
      begin
        if pub_yydm<>'0013' then
        begin
          if (pos('01', pub_zydylb) <> 0) and yjdy then
            proc_printyjsj('1');
        end
        else
        begin
          if (pos('01', pub_zydylb) <> 0) and yjdy then
            frm_zysf_print_service.proc_printyjsj(zy_tmh, zy_brxm, '', zyks.text, zy_sjbh, bch.text, '现金',zy_brdz,zy_brnl, zy_yjje);
        end;
        if pos('03', pub_zydylb) <> 0 then
        begin
          proc_printyjsj('2');
        end;
      end
      else
      begin
        if (pos('01', pub_zydylb) <> 0) and yjdy then
          frm_zysf_print_service.proc_printyjsj(zy_tmh, zy_brxm, '', zyks.text, zy_sjbh, bch.text, '现金',zy_brdz,zy_brnl, zy_yjje);
        if pos('03', pub_zydylb) <> 0 then
          frm_zysf_print_service.PrintZyjz( ph, czks.Text, brxm.Text, DBEdit1.text, DBEdit2.Text, kdys.Text, zy_tmh, bch.Text);
      end;
      zy_yjje := 0;
      panel1.enabled := true;
      v_tmh:= tmh.text;
      tmh.selectall;
      tmh.SetFocus;
      tmh.text:= v_tmh;
      b_enter.Enabled := false;
      b_giveup.Enabled := false;
      application.MessageBox('成功记帐', '提示', 0 + 48);
    end;
    if returnvalue = '9' then
      application.MessageBox('药房已无库存不能记帐', '提示', 0 + 48);
  end;
end;

procedure Tfrm_zysf_yjjf.ad_zyfymx_lsAfterScroll(DataSet: TDataSet);
begin
  if not ((ad_zyfymx_ls.state = dsInsert) or (ad_zyfymx_ls.state = dsedit)) then
  begin
    if ad_zyfymx_ls.fieldbyname('kdys').asstring = '' then
      dispysksonly(kdys, sp_cx_zybrjbqk.fieldbyname('zgys').asstring, 1, ZY_kdys)
    else
      dispysksonly(kdys, ad_zyfymx_ls.fieldbyname('kdys').asstring, 1, zy_kdys);
    if ad_zyfymx_ls.fieldbyname('kdks').asstring <> '' then
      dispysksonly(kdks, ad_zyfymx_ls.fieldbyname('kdks').asstring, 2, zy_kdks)
    else
      dispysksonly(kdks, sp_cx_zybrjbqk.fieldbyname('ksdm').asstring, 2, zy_kdks);
    dispysksonly(czys, ad_zyfymx_ls.fieldbyname('czys').asstring, 1, zy_czys);
    dispysksonly(czks, ad_zyfymx_ls.fieldbyname('czks').asstring, 2, zy_czks);
        //-----------------calmhawk---2007-12-13---处理-修改已记费用时,单价不正确问题
    try
      if ad_zyfymx_ls.FieldByName('fysl').AsFloat<>0 then
        sfbz.Text := floattostr(ad_zyfymx_ls.FieldByName('fyje').AsFloat / ad_zyfymx_ls.FieldByName('fysl').AsFloat);
    except

    end;
  end;
end;

procedure Tfrm_zysf_yjjf.kdysExit(Sender: TObject);
var
  CtmpLikeStr,CtmpSql: string;
begin
  frm_func.restorecolor(sender);
  CtmpLikeStr := '%' + uppercase(trim(kdys.text)) + '%';
  if pub_yydm<>'0031' then   //镇巴县医院不控制开单医生必须为医生
  begin
    with dm_data.qry_pub do
    begin
      close;
      sql.Clear;
      CtmpSql:= ' select a.dm,a.mc,a.pym,a.ksdm,c.mc ksmc '
      +' from sys_czy a LEFT JOIN sys_ksdm c ON a.ksdm=c.dm '
      +' where a.sybz=1 and a.txbz=0 AND a.ysbz=1 '
      +' AND a.pym+a.mc+a.dm LIKE '''+CtmpLikeStr+'''';
      sql.add(CtmpSQL);
      open;
    end;
  end
  else
  begin
    with dm_data.qry_pub do
    begin
      close;
      sql.Clear;
      CtmpSql:= ' select a.dm,a.mc,a.pym,a.ksdm,c.mc ksmc '
      +' from sys_czy a LEFT JOIN sys_ksdm c ON a.ksdm=c.dm '
      +' where a.sybz=1 and a.txbz=0  '
      +' AND a.pym+a.mc+a.dm LIKE '''+CtmpLikeStr+'''';
      sql.add(CtmpSQL);
      open;
    end;
  end;
  if dm_data.qry_pub.IsEmpty then
  begin
    application.MessageBox('医师代码输入错误！', '', 16);
    kdys.SelectAll;
    kdys.SetFocus;
    exit;
  end;
  if dm_data.qry_pub.RecordCount > 1 then
  begin
    g_empt.datasource := DM_data.ds_pub;
    g_empt.Left := 87;
    g_empt.Top := 143;
    g_empt.Columns[0].fieldname := 'dm';
    g_empt.Columns[0].title.Caption := '代码';
    g_empt.Columns[1].fieldname := 'mc';
    g_empt.Columns[1].title.Caption := '姓名';
    g_empt.Columns[1].Width:=200+g_empt.Canvas.textwidth(g_empt.columns[1].title.caption);
    g_empt.Columns[2].fieldname := 'pym';
    g_empt.Columns[2].title.Caption := '拼音码';
    g_empt.Columns[3].fieldname := 'ksdm';
    g_empt.Columns[3].title.Caption := '科室代码';
    g_empt.Columns[4].fieldname := 'ksmc';
    g_empt.Columns[4].title.Caption := '科室名称';
    g_empt.Tag := 5; // 5表示GRID显示开单医师
    g_empt.Show;
    g_empt.SetFocus;
  end;
  if dm_data.qry_pub.RecordCount = 1 then
  begin
    zy_kdys := dm_data.qry_pub.FieldByName('dm').AsString;
    //dispysks(kdys, zy_kdys, 1, zy_kdys);
    if trim(zy_kdys) <> '' then
    begin
      kdys.Text := dm_data.qry_pub.FieldByName('mc').AsString;
      if not ad_zyfymx_ls.IsEmpty then
      begin
        ad_zyfymx_ls.Edit;
        ad_zyfymx_ls['kdys'] := zy_kdys;
      end;
    end
    else
    begin
      zy_kdys := '';
      kdys.text := '';
    end;
    zy_kdysmc := dm_data.qry_pub['mc'];
    kdks.Text :=  dm_data.qry_pub.FieldByName('ksdm').AsString;
    kdks.SetFocus;
  end;
end;

procedure Tfrm_zysf_yjjf.czksExit(Sender: TObject);
var
  s: string;
begin
  frm_func.restorecolor(sender);
  s := '%' + trim(czks.text) + '%';
  with dm_data.qry_pub do
  begin
    close;
    sql.Clear;
    sql.add(' select dm,mc,pym from sys_ksdm ');
    sql.Add(' where sybz=1 and (pym like ' + '''' + S + '''');
    sql.Add(' or  dm like ' + '''' + S + '''');
    sql.Add(' or  mc like ' + '''' + S + ''')');
    open;
  end;
  if dm_data.qry_pub.RecordCount = 0 then
  begin
    application.MessageBox('科室代码输入错误！', '', 16);
    czks.SetFocus;
  end;
  if dm_data.qry_pub.RecordCount > 1 then
  begin
    g_empt.Left := 451;
    g_empt.Top := 143;
    g_empt.Columns[0].fieldname := 'mc';
    g_empt.Columns[0].title.Caption := '科室';
    g_empt.Columns[1].fieldname := 'pym';
    g_empt.Columns[1].title.Caption := '拼音码';
    g_empt.Tag := 3; // 2表示GRID显示检查科室
    g_empt.Show;
    g_empt.SetFocus;
  end;
  if dm_data.qry_pub.RecordCount = 1 then
  begin
    czks.Text := dm_data.qry_pub['mc'];
    zy_czks := dm_data.qry_pub['dm'];
    dispysks(czks, zy_czks, 2, zy_czks);
    zy_czksmc := dm_data.qry_pub['mc'];
    sl.SelectAll;
    sl.SetFocus;
  end;
end;

procedure Tfrm_zysf_yjjf.czysExit(Sender: TObject);
var
  s,CTmpSql: string;
begin
  frm_func.restorecolor(sender);
  s := '%' + uppercase(trim(czys.text)) + '%';
  with dm_data.qry_pub do
  begin
    close;
    sql.Clear;
    CTmpSql:=' select a.dm,a.mc,a.pym,a.ksdm,b.mc ksmc '
    +' from sys_czy a LEFT JOIN sys_ksdm b ON a.ksdm=b.dm '
    +' where a.sybz=1 and txbz=0 AND a.pym+a.mc+a.dm LIKE '''+s+''' order by a.dm ';
     sql.add(ctmpsql);
    open;
  end;
  if dm_data.qry_pub.RecordCount = 0 then
  begin
    application.MessageBox('医师代码输入错误！', '', 16);
    czys.SelectAll;
    czys.SetFocus;
  end;
  if dm_data.qry_pub.RecordCount > 1 then
  begin
    g_empt.Left := 261;
    g_empt.Top := 143;
    g_empt.Columns[0].fieldname := 'dm';
    g_empt.Columns[0].title.Caption := '代码';
    g_empt.Columns[1].fieldname := 'mc';
    g_empt.Columns[1].title.Caption := '姓名';
    g_empt.Columns[1].Width:=200+g_empt.Canvas.textwidth(g_empt.columns[1].title.caption);
    g_empt.Columns[2].fieldname := 'pym';
    g_empt.Columns[2].title.Caption := '拼音码';
    g_empt.Columns[3].fieldname := 'ksdm';
    g_empt.Columns[3].title.Caption := '科室代码';
    g_empt.Columns[4].fieldname := 'ksmc';
    g_empt.Columns[4].title.Caption := '科室名称';
    g_empt.Tag := 4; // 4表示GRID显示医师
    g_empt.Show;
    g_empt.SetFocus;
  end;
  if dm_data.qry_pub.RecordCount = 1 then
  begin
    zy_czys := dm_data.qry_pub['dm'];
    //dispysks(czys, zy_czys, 1, zy_czys);
    czys.text:=dm_data.qry_Pub.FieldByName('mc').AsString;
    if trim(zy_czys) <> '' then
    begin
      if not ad_zyfymx_ls.IsEmpty then
      begin
        ad_zyfymx_ls.Edit;
        ad_zyfymx_ls['czys'] := zy_czys;
      end;
      zy_czys := trim(zy_czys);
    end
    else
    begin
      zy_czys := '';
      czys.text := '';
    end;
    zy_czysmc := dm_data.qry_pub['mc'];
    if czks.readonly then
    begin
      sl.SelectAll;
      sl.setfocus;
    end
    else
    begin
      czks.SetFocus;
              //---------calmhawk----2007-11-06----输入处置医生-自动写处置科室
      czks.Text := dm_data.qry_pub.fieldbyname('ksdm').asstring;
    end;
  end;
end;

procedure Tfrm_zysf_yjjf.zyksExit(Sender: TObject);
begin
  frm_func.restorecolor(sender);
end;

procedure Tfrm_zysf_yjjf.fydmEnter(Sender: TObject);
begin
  frm_func.changecolor(sender);
  fydm.Text := '';
  b_enter.Enabled := true;
  B_giveup.Enabled := true;
  czks.readonly := false;
  if ((ad_zyfymx_ls.fieldbyname('fysl').asinteger = 0) or (ad_zyfymx_ls.fieldbyname('fyje').asfloat = 0)) and (not ad_zyfymx_ls.IsEmpty) then
    ad_zyfymx_ls.delete;
  zy_cfbh := '';
end;

procedure Tfrm_zysf_yjjf.B_giveupClick(Sender: TObject);
begin
  panel1.Enabled := true;
  ad_zyfymx_ls.Close;
  qry_jsmx.Close;
  tmh.setfocus;
  tmh.SelectAll;
end;

procedure Tfrm_zysf_yjjf.tmhEnter(Sender: TObject);
begin
  frm_func.changecolor(sender);
  tmh.Text := '';
  if ad_zyfymx_ls.active then
    ad_zyfymx_ls.close;
  b_enter.enabled := false;
  zy_sfcfbh := '';
end;

procedure Tfrm_zysf_yjjf.jfExecute(Sender: TObject);
begin
  if b_enter.enabled then
    B_ENTER.Click
end;

procedure Tfrm_zysf_yjjf.xgExecute(Sender: TObject);
begin
  if b_giveup.enabled then
    B_giveup.Click
end;

procedure Tfrm_zysf_yjjf.dispysks(tempedit: Tedit; dm: string; czfs: integer; var pri_var: string);
begin
  if trim(dm) <> '' then
  begin
    sp_cx_czyks.Close;
    sp_cx_czyks.Parameters.ParamByName('@srm').value := trim(dm);
    sp_cx_czyks.Parameters.ParamByName('@czfs').value := czfs;
    sp_cx_czyks.Parameters.ParamByName('@kssx').value := '09';
    sp_cx_czyks.Open;
    tempedit.text := sp_cx_czyks.fieldbyname('mc').asstring;
    if not ad_zyfymx_ls.IsEmpty then
    begin
      ad_zyfymx_ls.Edit;
      ad_zyfymx_ls[tempedit.name] := dm;
    end;
    pri_var := trim(dm);
  end
  else
  begin
    pri_var := '';
    tempedit.text := '';
  end;
end;

procedure Tfrm_zysf_yjjf.dispysksONLY(tempedit: Tedit; dm: string; czfs: integer; var pri_var: string);
begin
  if trim(dm) <> '' then
  begin
    sp_cx_czyks.Close;
    sp_cx_czyks.Parameters.ParamByName('@srm').value := trim(dm);
    sp_cx_czyks.Parameters.ParamByName('@czfs').value := czfs;
    sp_cx_czyks.Parameters.ParamByName('@kssx').value := '09';
    sp_cx_czyks.Open;
    tempedit.text := sp_cx_czyks.fieldbyname('mc').asstring;
    pri_var := trim(dm);
  end
  else
  begin
    pri_var := '';
    tempedit.text := '';
  end;
end;

procedure Tfrm_zysf_yjjf.fydmgridExit(Sender: TObject);
begin
  if not b_final.focused then
  begin
    fydm.text := trim(sp_cx_sfxm.fieldbyname('fymc').asstring);
    gg.Text := sp_cx_sfxm.fieldbyname('dw').asstring;
    xmbz.text := sp_cx_sfxm.fieldbyname('bak').asstring;
    zy_fymc := sp_cx_sfxm.fieldbyname('fymc').asstring;
    zy_fydm := sp_cx_sfxm.fieldbyname('fydm').asstring;
    zy_sfbz := sp_cx_sfxm.fieldbyname('sfbz').asfloat;
    if trim(sp_cx_sfxm.fieldbyname('zyksgs').asstring) <> '' then
    begin
      zy_czks := sp_cx_sfxm['zyksgs'];
      czks.readonly := true;
    end
    else
      if zy_czks = '' then
        zy_czks := trim(sp_cx_zybrjbqk.fieldbyname('ksdm').asstring);
    proc_setsffs;
  end;
  fydmgrid.Enabled := false;
end;

procedure Tfrm_zysf_yjjf.fylbEnter(Sender: TObject);
begin
  frm_func.changecolor(sender);
end;

procedure Tfrm_zysf_yjjf.zyksEnter(Sender: TObject);
begin
  frm_func.changecolor(sender);
end;

procedure Tfrm_zysf_yjjf.kdysEnter(Sender: TObject);
begin
  frm_func.changecolor(sender);
end;

procedure Tfrm_zysf_yjjf.czksEnter(Sender: TObject);
begin
  frm_func.changecolor(sender);
end;

procedure Tfrm_zysf_yjjf.czysEnter(Sender: TObject);
begin
  frm_func.changecolor(sender);
end;

procedure Tfrm_zysf_yjjf.ggEnter(Sender: TObject);
begin
  frm_func.changecolor(sender);
end;

procedure Tfrm_zysf_yjjf.saveExecute(Sender: TObject);
begin
    if b_enter.enabled then
    B_ENTER.Click
end;

procedure Tfrm_zysf_yjjf.sfbzEnter(Sender: TObject);
begin
  frm_func.changecolor(sender);
end;

procedure Tfrm_zysf_yjjf.slEnter(Sender: TObject);
begin
  frm_func.changecolor(sender);
end;

procedure Tfrm_zysf_yjjf.jeEnter(Sender: TObject);
begin
  frm_func.changecolor(sender);
end;

procedure Tfrm_zysf_yjjf.fylbExit(Sender: TObject);
begin
  frm_func.restorecolor(sender);
end;

procedure Tfrm_zysf_yjjf.ggExit(Sender: TObject);
begin
  frm_func.restorecolor(sender);

end;

procedure Tfrm_zysf_yjjf.sfbzExit(Sender: TObject);
begin
  frm_func.restorecolor(sender);
end;

procedure Tfrm_zysf_yjjf.B_FINALClick(Sender: TObject);
begin
  ad_zyfymx_ls.Close;
  self.close;
end;

procedure Tfrm_zysf_yjjf.fydmgridKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 13 then
  begin
    kdys.Enabled := true;
    kdys.ReadOnly := false;
    kdys.SelectAll;
    kdys.SetFocus;
  end;
  if key = 27 then
  begin
    fydm.setfocus;
  end
end;

procedure Tfrm_zysf_yjjf.ad_zyfymx_lsBeforePost(DataSet: TDataSet);
begin
  if ad_zyfymx_ls['fyje'] = null then
    ad_zyfymx_ls.delete
  else
    if zy_fydm <> pub_xyfdm then
    begin
      if (trim(zy_zfzdmc) <> '') then
      begin
        if sp_cx_zybrjbqk.fieldbyname('ybndzje').asfloat - sp_cx_zybrjbqk.fieldbyname('zfy').asfloat - strtofloat(dbgrideh2.GetFooterValue(1, dbgrideh2.columns[1])) > 0 then /////-strtofloat(bcje.text)
          ad_zyfymx_ls['zfje'] := ad_zyfymx_ls['fyje'] * ad_zyfymx_ls[trim(zy_zfzdmc)] / 100
        else
          ad_zyfymx_ls['zfje'] := ad_zyfymx_ls['fyje'];
      end
      else
        ad_zyfymx_ls['zfje'] := ad_zyfymx_ls['fyje'];
      ad_zyfymx_ls['ssje'] := ad_zyfymx_ls['fyje'];
    end;
end;

procedure Tfrm_zysf_yjjf.ad_zyfymx_lsAfterPost(DataSet: TDataSet);
begin
  if dbgrideh2.GetFooterValue(0, dbgrideh2.columns[2]) <> '0' then
  begin
    sp_cx_syje.Close;
    sp_cx_syje.Parameters.ParamByName('@zyh').value := zy_zyh;
    sp_cx_syje.open;
    zyj.text := floattostr(sp_cx_syje['yjze']);
    zzf.text := floattostr(sp_cx_syje['zfze'] + strtofloat(dbgrideh2.GetFooterValue(0, dbgrideh2.columns[2])));
    syje.text := floattostr(sp_cx_syje['yjze'] - (sp_cx_syje['zfze'] + strtofloat(dbgrideh2.GetFooterValue(0, dbgrideh2.columns[2]))));
    kyje.text := floattostr(sp_cx_syje['yjze'] + zy_zdjf - (sp_cx_syje['zfze'] + strtofloat(dbgrideh2.GetFooterValue(0, dbgrideh2.columns[2]))));

    if (sp_cx_syje['yjze'] - sp_cx_syje['zfze'] -
      strtofloat(dbgrideh2.GetFooterValue(0, dbgrideh2.columns[2])) + zy_zdjf + pub_cjje < 0) then
    begin
      zy_yjje := 0 - (sp_cx_syje['yjze'] - sp_cx_syje['zfze'] -
        strtofloat(dbgrideh2.GetFooterValue(0, dbgrideh2.columns[2])) + zy_zdjf + pub_cjje);
      if (syj) and (sp_cx_zybrjbqk.fieldbyname('fylb').asstring = '01') then
        yjje.Text := floattostr(zy_yjje);
    end;
  end;
end;

procedure Tfrm_zysf_yjjf.FormShow(Sender: TObject);
var
  nian, yue, ri: word;
begin
  decodedate(frm_func.curr_date, nian, yue, ri);
  cfn.Text := inttostr(nian);
  cfy.Text := formatex(yue, 2);

  if pub_yydm = '0269' then
  begin
  proc_get_sjbh;
  qry_jsmx.Close;
  qry_jsmx.Open;
  end;

  if pub_yydm = '0234' then
  begin
    DBGridEh2.FieldColumns['czks'].Visible := false;
  end
  else
  begin
    DBGridEh2.FieldColumns['czks'].Visible := false;
  end;
end;

procedure Tfrm_zysf_yjjf.cfhKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 13 then
  begin
    fydm.Enabled;
    fydm.SetFocus;
  end;
end;

procedure Tfrm_zysf_yjjf.kdksExit(Sender: TObject);
var
  s: string;
begin
  frm_func.restorecolor(sender);
  s := '%' + trim(kdks.text) + '%';
  dm_data.qry_pub.close;
  dm_data.qry_pub.sql.Clear;
  dm_data.qry_pub.sql.add(' select dm,mc,pym from sys_ksdm ');
  dm_data.qry_pub.sql.Add(' where sybz=1 and (pym like ' + '''' + S + '''');
  dm_data.qry_pub.sql.Add(' or  dm like ' + '''' + S + '''');
  dm_data.qry_pub.sql.Add(' or  mc like ' + '''' + S + ''')');
  dm_data.qry_pub.open;
  if dm_data.qry_pub.RecordCount = 0 then
  begin
    application.MessageBox('科室代码输入错误！', '', 16);
    kdks.SelectAll;
    kdks.SetFocus;
  end;
  if dm_data.qry_pub.RecordCount > 1 then
  begin
    g_empt.datasource := DM_data.ds_pub;
    g_empt.Left := 271;
    g_empt.Top := 143;
    g_empt.Columns[0].fieldname := 'mc';
    g_empt.Columns[0].title.Caption := '科室';
    g_empt.Columns[1].fieldname := 'pym';
    g_empt.Columns[1].title.Caption := '拼音码';
    g_empt.Tag := 2; // 2表示GRID显示开单科室
    g_empt.Show;
    g_empt.SetFocus;
  end;
  if dm_data.qry_pub.RecordCount = 1 then
  begin
    zy_kdks := dm_data.qry_pub['dm'];
    dispysks(kdks, zy_kdks, 2, zy_kdks);
    zy_kdksmc := dm_data.qry_pub['mc'];
    czys.SetFocus;
  end;
end;

procedure Tfrm_zysf_yjjf.kdksKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    czys.SetFocus;
  end;
  if ((key = ' ') and (zy_czksmc <> '')) then
  begin
    key := #0;
    kdks.Text := zy_kdksmc;
    czks.SetFocus;
  end;
end;

procedure Tfrm_zysf_yjjf.kdksEnter(Sender: TObject);
begin
  frm_func.changecolor(sender);
end;

procedure Tfrm_zysf_yjjf.kdysKeyPress(Sender: TObject; var Key: Char);
var
  s: string;
begin
  if key = #13 then
  begin
    kdks.SetFocus;
  end;
  if ((key = ' ') and (zy_czysmc <> '')) then
  begin
    key := #0;
    kdys.Text := zy_kdysmc;
    kdks.SetFocus;
  end;
end;

procedure Tfrm_zysf_yjjf.g_emptKeyPress(Sender: TObject; var Key: Char);
begin
  if ((key = #27) and (g_empt.Tag = 1)) then
  begin
    g_empt.Visible := false;
    fydm.SelectAll;
    fydm.SetFocus;
  end;
  if ((key = #27) and (g_empt.Tag = 2)) then
  begin
    g_empt.Visible := false;
    kdks.SelectAll;
    kdks.SetFocus;
  end;
  if ((key = #27) and (g_empt.Tag = 3)) then
  begin
    g_empt.Visible := false;
    czks.SelectAll;
    czks.SetFocus;
  end;
  if ((key = #27) and (g_empt.Tag = 4)) then
  begin
    g_empt.Visible := false;
    czys.SelectAll;
    czys.SetFocus;
  end;
  if ((key = #27) and (g_empt.Tag = 5)) then
  begin
    g_empt.Visible := false;
    kdys.SelectAll;
    kdys.SetFocus;
  end;

  if ((key = #27) and (g_empt.Tag = 6)) then
  begin
    g_empt.Visible := false;
    tmh.SelectAll;
    tmh.SetFocus;
  end;
  if ((key = #13) and (g_empt.Tag = 2)) then
  begin
//    zy_kdks := dm_data.qry_pub['dm'];
//    dispysks(kdks, zy_kdks, 2, zy_kdks);
//    zy_kdksmc := dm_data.qry_pub['mc'];
    czys.SetFocus;
  end;
  if ((key = #13) and (g_empt.Tag = 3)) then
  begin
//    zy_czks := dm_data.qry_pub['dm'];
//    dispysks(czks, zy_czks, 2, zy_czks);
//    zy_czksmc := dm_data.qry_pub['mc'];
//    sl.SelectAll;
    sl.SetFocus;
  end;
  if ((key = #13) and (g_empt.Tag = 4)) then
  begin
//    zy_czys := dm_data.qry_pub['dm'];
//    dispysks(czys, zy_czys, 1, zy_czys);
//    zy_czysmc := dm_data.qry_pub['mc'];
    if czks.readonly then
    begin
      sl.SelectAll;
      sl.setfocus;
    end
    else
    begin
      czks.SetFocus;
            //---------calmhawk----2007-11-06----输入处置医生-自动写处置科室
      czks.text := dm_data.qry_pub.fieldbyname('ksdm').asstring;
    end;
  end;
  if ((key = #13) and (g_empt.Tag = 5)) then
  begin
//    zy_kdys := dm_data.qry_pub['dm'];
//    dispysks(kdys, zy_kdys, 1, zy_kdys);
//    zy_kdysmc := dm_data.qry_pub['mc'];
    kdks.SetFocus;
  end;
  if ((key = #13) and (g_empt.Tag = 6)) then
  begin
//    displayvalue;
//    panel1.enabled := false;
//    panel3.enabled := true;
    fydm.setfocus;
  end;

end;

procedure Tfrm_zysf_yjjf.czysKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    czks.SetFocus;
  end;
  if ((key = ' ') and (zy_czysmc <> '')) then
  begin
    key := #0;
    czys.Text := zy_czysmc;
    kdys.SetFocus;
  end;
end;

procedure Tfrm_zysf_yjjf.czksKeyPress(Sender: TObject; var Key: Char);
begin
  if (czks.readonly = false) and (key = #13) then
  if (trim(czks.text) <> '') then
  begin
    sl.setfocus;
  end
  else
  begin
    zy_czks := sp_cx_zybrjbqk.fieldbyname('ksdm').asstring;
    dispysks(czks, zy_czks, 2, zy_czks);
    sl.SelectAll;
    sl.setfocus;
  end;
  if ((key = ' ') and (zy_czksmc <> '')) then
  begin
    key := #0;
    czks.Text := zy_czksmc;
    sl.SelectAll;
    sl.SetFocus;
  end;
end;

procedure Tfrm_zysf_yjjf.g_emptDblClick(Sender: TObject);
begin
  if g_empt.Tag = 2 then
  begin
    zy_kdks := dm_data.qry_pub['dm'];
    dispysks(kdks, zy_kdks, 2, zy_kdks);
    zy_kdksmc := dm_data.qry_pub['mc'];
    czys.SetFocus;
  end;
  if g_empt.Tag = 3 then
  begin
    zy_czks := dm_data.qry_pub['dm'];
    dispysks(czks, zy_czks, 2, zy_czks);
    zy_czksmc := dm_data.qry_pub['mc'];
    sl.SelectAll;
    sl.SetFocus;
  end;
  if g_empt.Tag = 4 then
  begin
    zy_czys := dm_data.qry_pub['dm'];
    dispysks(czys, zy_czys, 1, zy_czys);
    zy_czysmc := dm_data.qry_pub['mc'];
    if czks.readonly then
    begin
      sl.SelectAll;
      sl.setfocus;
    end
    else
    begin
      czks.SetFocus;
      //---------calmhawk----2007-11-06----输入处置医生-自动写处置科室
      czks.text := dm_data.qry_pub.fieldbyname('ksdm').asstring;
    end;
  end;
  if g_empt.Tag = 5 then
  begin
    zy_kdys := dm_data.qry_pub['dm'];
    dispysks(kdys, zy_kdys, 1, zy_kdys);
    zy_kdysmc := dm_data.qry_pub['mc'];
    kdks.Text := dm_data.qry_pub['ksdm'];
    kdks.SetFocus;
  end;
  if g_empt.Tag = 6 then
  begin
    displayvalue;
    panel1.enabled := false;
    panel3.enabled := true;
    fydm.setfocus;
  end;  
end;

procedure Tfrm_zysf_yjjf.g_emptExit(Sender: TObject);
begin
  g_empt.DataSource := DM_data.ds_pub;
  g_empt.Hide;
  g_emptDblClick(nil);
end;

procedure Tfrm_zysf_yjjf.tmhKeyPress(Sender: TObject; var Key: Char);
begin
  //if key = #13 then fydm.SetFocus;
  if Key <> #13 then Exit;
  kdys.Text := '';
  kdks.Text := '';
  czys.Text := '';
  czks.Text := '';
  yjje.Text := '';
  fylb.Text := '';
  ryrq.Text := '';
  zfy.text := '0';
  zyj.text := '0';
  zzf.text := '0';
  syje.text := '0';
  kyje.Text := '0';
  frm_func.restorecolor(sender);
  if not (B_FINAL.Focused) and (trim(tmh.text) <> '') then
  begin
    with sp_cx_zybrjbqk do
    begin
      try
        tmh.text := formatex(strtoint(tmh.text), 9);
        zy_tmh := tmh.Text;
      except
      end;
      zy_tmh := tmh.Text;
      Close;
      parameters.ParamByName('@tmh').value := trim(tmh.text);
      active := true;
    end;
    if sp_cx_zybrjbqk.isempty then
    begin
      Application.MessageBox('没有此病人！', '错误', 0 + 16);
      tmh.setfocus;
    end
    else
      if sp_cx_zybrjbqk.recordcount > 1 then
      begin
        g_empt.Columns.Clear;
        g_empt.DataSource := ds_zybrjbqk;
        g_empt.Columns.add;
        g_empt.Columns[0].field := sp_cx_zybrjbqk.fieldlist.fieldbyname('tmh');
        g_empt.Columns[0].title.caption := '条码号';
        g_empt.Columns[0].Width := 75;
        g_empt.Columns.add;
        g_empt.Columns[1].field := sp_cx_zybrjbqk.fieldlist.fieldbyname('brxm');
        g_empt.Columns[1].title.caption := '姓名';
        g_empt.Columns[1].Width := 80;
        g_empt.Columns.add;
        g_empt.Columns[2].field := sp_cx_zybrjbqk.fieldlist.fieldbyname('brxb');
        g_empt.Columns[2].title.caption := '性别';
        g_empt.Columns.add;
        g_empt.Columns[3].field := sp_cx_zybrjbqk.fieldlist.fieldbyname('brnl');
        g_empt.Columns[3].title.caption := '年龄';
        g_empt.Columns[3].Width := 40;
        g_empt.Columns.add;
        g_empt.Columns[4].field := sp_cx_zybrjbqk.fieldlist.fieldbyname('ksmc');
        g_empt.Columns[4].title.caption := '住院科室';
        g_empt.Columns[4].Width := 90;
        g_empt.Columns.add;
        g_empt.Columns[5].field := sp_cx_zybrjbqk.fieldlist.fieldbyname('brdz');
        g_empt.Columns[5].title.caption := '病人地址';
        g_empt.Tag := 6;
        g_empt.left := tmh.left;
        g_empt.top := tmh.top + tmh.Height + tmh.parent.top;
        g_empt.Show;
        g_empt.SetFocus;
      end
      else
      begin
        displayvalue;
        panel1.enabled := false;
        panel3.enabled := true;
        fydm.setfocus;
      end;
  end
  else
    if (trim(tmh.text) = '') and (not (b_final.focused or B_giveup.focused)) then
    begin
      Application.MessageBox('请输入条码号或病床号或病人姓名！', '错误', 0 + 16);
      tmh.setfocus;
    end;
end;

procedure Tfrm_zysf_yjjf.fydmKeyPress(Sender: TObject; var Key: Char);
var
  fydmstr: string;
begin
  if key = #13 then
  begin
    if not (b_enter.Focused or b_final.Focused or dbgrideh2.Focused or b_giveup.focused
      or kdks.focused or czks.Focused or czys.focused or B_giveup.focused) then
      fydmstr := trim(fydm.text);
    if fydmstr <> '' then
    begin
      b_giveup.Enabled := false;
      sp_cx_sfxm.Close;
      sp_cx_sfxm.Parameters.ParamByName('@fydm').value := fydmstr;
      sp_cx_sfxm.Parameters.ParamByName('@fymc').value := fydmstr;
      sp_cx_sfxm.Parameters.ParamByName('@pym').value := fydmstr;
      sp_cx_sfxm.Parameters.ParamByName('@brlb').value := sp_cx_zybrjbqk.FieldByName('fylb').AsString;
      sp_cx_sfxm.Open;
      if sp_cx_sfxm.IsEmpty then
      begin
        application.MessageBox('没有找到该收费项目，请验证无误后重新输入！', '错误',
          MB_OK + MB_ICONERROR);
        fydm.setfocus;
        czcg := false;
      end
      else
        if sp_cx_sfxm.recordcount > 1 then
        begin
          fydmgrid.Enabled := true;
          fydmgrid.setfocus;
        end
        else
          if sp_cx_sfxm.recordcount = 1 then
          begin
            fydm.text := trim(sp_cx_sfxm.fieldbyname('fymc').asstring);
            gg.Text := sp_cx_sfxm.fieldbyname('dw').asstring;
            xmbz.text := sp_cx_sfxm.fieldbyname('bak').asstring;
            zy_fymc := sp_cx_sfxm.fieldbyname('fymc').asstring;
            zy_fydm := sp_cx_sfxm.fieldbyname('fydm').asstring;
            zy_sfbz := sp_cx_sfxm.fieldbyname('sfbz').asfloat;
            je.Text := floattostr(zy_sfbz);
            if trim(sp_cx_sfxm.fieldbyname('zyksgs').asstring) <> '' then
            begin
              zy_czks := sp_cx_sfxm['zyksgs'];
              czks.readonly := true;
            end;
            proc_setsffs;
          end
    end
    else
    begin
      if Application.MessageBox('没有输入费用代码，是否输入', '错误',
        MB_YESNO + MB_DEFBUTTON1 + MB_ICONERROR) = IDYES then
        FYDM.SetFocus
      else
        if ad_zyfymx_ls.IsEmpty then
        begin
          panel1.enabled := TRUE;
          tmh.SetFocus;
        end
        else
        begin
          if Application.MessageBox('数据没有保存，是否保存', '错误',
            MB_YESNO + MB_DEFBUTTON1 + MB_ICONERROR) = IDYES then
            b_enter.click //保存
          else
            b_giveup.click //放弃
        end;
    end;
  end;
end;

procedure Tfrm_zysf_yjjf.slKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    je.Enabled := true;
    if strtofloat(sfbz.text) > 0 then
      fydm.SetFocus
    else
      je.SetFocus;
  end;
end;

procedure Tfrm_zysf_yjjf.jeKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then fydm.setfocus;
end;

procedure Tfrm_zysf_yjjf.yjjeKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    b_enter.Enabled := true;
    b_enter.SetFocus;
  end;
end;

procedure Tfrm_zysf_yjjf.ad_zyfymx_lsAfterDelete(DataSet: TDataSet);
begin
  if dbgrideh2.GetFooterValue(1, dbgrideh2.columns[2]) <> '0' then
  begin
    sp_cx_syje.Close;
    sp_cx_syje.Parameters.ParamByName('@zyh').value := zy_zyh;
    sp_cx_syje.open;
    zyj.text := floattostr(sp_cx_syje['yjze']);
    zzf.text := floattostr(sp_cx_syje['zfze'] + strtofloat(dbgrideh2.GetFooterValue(1, dbgrideh2.columns[2])));
    syje.text := floattostr(sp_cx_syje['yjze'] - (sp_cx_syje['zfze'] + strtofloat(dbgrideh2.GetFooterValue(1, dbgrideh2.columns[2]))));
    kyje.text := floattostr(sp_cx_syje['yjze'] + zy_zdjf - (sp_cx_syje['zfze'] + strtofloat(dbgrideh2.GetFooterValue(1, dbgrideh2.columns[2]))));

    if strtofloat(syje.Text) < 0 then
    begin
      if (sp_cx_syje['yjze'] - sp_cx_syje['zfze'] -
        strtofloat(dbgrideh2.GetFooterValue(1, dbgrideh2.columns[2])) + zy_zdjf + pub_cjje < 0) then
      begin
        zy_yjje := 0 - (sp_cx_syje['yjze'] - sp_cx_syje['zfze'] -
          strtofloat(dbgrideh2.GetFooterValue(1, dbgrideh2.columns[2])) + zy_zdjf + pub_cjje);
        if (syj) and (sp_cx_zybrjbqk.fieldbyname('fylb').asstring = '01') then
          yjje.Text := floattostr(zy_yjje);
      end;
    end;
  end;

end;

procedure Tfrm_zysf_yjjf.slKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 27 then
  begin
    esckey := true;
    ad_zyfymx_ls.cancel;
    fydm.SetFocus;
  end

end;

procedure Tfrm_zysf_yjjf.jeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 27 then
  begin
    esckey := true;
    ad_zyfymx_ls.post;
    ad_zyfymx_ls.delete;
        // ad_zyfymx_ls.CancelBatch(arCurrent);
    fydm.SetFocus;
  end
end;

procedure Tfrm_zysf_yjjf.DBGridEh2Exit(Sender: TObject);
begin
  if ad_zyfymx_ls.State = dsedit then ad_zyfymx_ls.Post;
end;

procedure Tfrm_zysf_yjjf.cfhEnter(Sender: TObject);
begin
  frm_func.changecolor(sender);
end;

procedure Tfrm_zysf_yjjf.cfhExit(Sender: TObject);
var
  s: string;
begin
  frm_func.restorecolor(sender);
  if trim(cfh.text) <> '' then
  begin
    try
      s := formatex(strtoint(cfh.text), 6);
      cfh.Text := s;
    except
      cfh.text := '';
      cfh.SelectAll;
      cfh.SetFocus;
      abort;
    end;
    zy_cfbh := trim(cfn.text) + trim(cfy.Text) + s;
    cfbh := zy_cfbh;
    if pos(zy_cfbh, zy_sfcfbh) <> 0 then
    begin
      application.MessageBox('该处方已录入!', '提示', 0 + 48);
      cfh.text := '';
      cfh.SelectAll;
      cfh.SetFocus;
      abort;
    end;
    with sp_se_cfje do
    begin
      active := false;
      parameters.ParamByName('@_cfbh').value := zy_cfbh;
      parameters.ParamByName('@zy_sffs').value := zy_sffs;
      parameters.ParamByName('@zyh').value := zy_zyh;
      open;
    end;
    if sp_se_cfje['sfbz'] = '1' then
    begin
      if application.MessageBox('该处方已记费，要重新记费吗!', '提示', 4 + 256 + 48) = 7 then
      begin
        cfh.text := '';
        cfh.SelectAll;
        cfh.SetFocus;
        abort;
      end;
    end;
    if sp_se_cfje['zt'] = '1' then
    begin
            //---calmhawk--2007-11-06---处方金额四舍五入到角-----
      zy_sfbz := realtomoney1(sp_se_cfje['cfje']);
      zy_zfje := realtomoney1(sp_se_cfje['zfje']);
      zy_kdys := sp_se_cfje['kdys'];
      zy_kdks := sp_se_cfje['kdks'];
      zy_czks := sp_se_cfje['czks'];
      dispysks(czks, zy_czks, 2, zy_czks);
      dispysks(kdys, zy_kdys, 1, zy_kdys);
      dispysks(kdks, zy_kdks, 2, zy_kdks);
      sfbz.text := floattostr(zy_sfbz);
      je.text := floattostr(zy_sfbz);
      ad_zyfymx_ls.Edit;
      ad_zyfymx_ls['cfbh'] := zy_cfbh;
      ad_zyfymx_ls['fysl'] := 1;
      sl.SelectAll;
      ad_zyfymx_ls['fyje'] := zy_sfbz;
      ad_zyfymx_ls['zfje'] := zy_zfje;
      ad_zyfymx_ls['kdys'] := zy_kdys;
      ad_zyfymx_ls.Post;
      if zy_sfcfbh = '' then
        zy_sfcfbh := zy_cfbh + ','
      else
        zy_sfcfbh := zy_sfcfbh + ',' + zy_cfbh;
      fydm.SetFocus;
    end
    else
    begin
      application.MessageBox('无此处方或者处方已收费!', '提示', 0 + 16);
      cfh.SelectAll;
      cfh.SetFocus;
      abort;
    end;
  end;
  cfh.text := '';
end;

procedure Tfrm_zysf_yjjf.DBGridEh2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 13 then
    fydm.SetFocus
  else
    if key = vk_insert then
      key := 0;
  if key = 46 then //'del'
    ad_zyfymx_ls.Delete;

end;

procedure Tfrm_zysf_yjjf.zfExecute(Sender: TObject);
begin
  DBGridEh2.SetFocus;
end;

procedure Tfrm_zysf_yjjf.DBGridEh2KeyPress(Sender: TObject; var Key: Char);
begin
  if (ad_zyfymx_ls.fieldbyname('fydm').asstring = pub_xyfdm) or
    (ad_zyfymx_ls.fieldbyname('fydm').asstring = pub_zychaoydm) or
    (ad_zyfymx_ls.fieldbyname('fydm').asstring = pub_zychenydm) or
    (trim(ad_zyfymx_ls.fieldbyname('bz').asstring) = 'sd') then
    key := chr(0);
end;

procedure Tfrm_zysf_yjjf.N1Click(Sender: TObject);
begin
  application.CreateForm(Tfrm_zyyj, frm_zyyj);
  try
    frm_zyyj.ShowModal;
  finally
    frm_zyyj.free;
  end;
end;

procedure Tfrm_zysf_yjjf.N2Click(Sender: TObject);
begin
  application.CreateForm(Tfrm_tyj, frm_tyj);
  try
    frm_tyj.ShowModal;
  finally
    frm_tyj.free;
  end;
end;

procedure Tfrm_zysf_yjjf.N4Click(Sender: TObject);
begin
  application.CreateForm(Tfrm_tzysf, frm_tzysf);
  try
    frm_tzysf.ShowModal;
  finally
    frm_tzysf.free;
  end;
end;

procedure Tfrm_zysf_yjjf.N5Click(Sender: TObject);
begin
  application.CreateForm(Tfrm_czy_yjmxz, frm_czy_yjmxz);
  try
    frm_czy_yjmxz.ShowModal;
  finally
    frm_czy_yjmxz.free;
  end;
end;

procedure Tfrm_zysf_yjjf.N7Click(Sender: TObject);
begin
   {     application.CreateForm( Tfrm_zybrzhcx, frm_zybrzhcx );
        try
            frm_zybrzhcx.ShowModal;
        finally
            frm_zybrzhcx.free;
        end;  }
end;

procedure Tfrm_zysf_yjjf.SetNewsjbh;
begin
  // frm_cyjs.proc_get_sjbh;
   sp_SetNewSjbh.Close;
   sp_SetNewSjbh.Active := False;
   sp_SetNewSjbh.Connection:=dm_data.ado_mydata;
   sp_SetNewSjbh.ProcedureName:='Set_Newsjbh';
   // sp_SetNewSjbh.Active := true;
  // sp_SetNewSjbh.Refresh;
   sp_SetNewSjbh.Parameters.ParamByName('@sjlb').Value:=pub_jssjlb;   //收据类别
   sp_SetNewSjbh.Parameters.ParamByName('@jsczy').Value:=pub_czydm;
   sp_SetNewSjbh.Parameters.ParamByName('@sjbh').Value:=zy_sjbh;
   sp_SetNewSjbh.Parameters.ParamByName('@sczt').Value:='0';
   sp_SetNewSjbh.ExecProc;
end;


procedure Tfrm_zysf_yjjf.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    //---------calmhawk-------2007-11-06------
    //------------处理输入费用但不保存就退出时出地址址访问错误----------------
  ad_zyfymx_ls.Close;
end;
initialization
  RegisterClass(Tfrm_zysf_yjjf);
end.

