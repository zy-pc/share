unit p_zyyzcljf;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, GridsEh, DBGridEh, StdCtrls, Buttons, Mask, DBCtrls,
  ExtCtrls, DB, ADODB, ActnList, DBGridEhGrouping;
type
  THACKDBGRID = class(TCUSTOMGRID);
type
  Tfrm_zyyzcljf = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label8: TLabel;
    Label4: TLabel;
    Label18: TLabel;
    Label16: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label9: TLabel;
    Label15: TLabel;
    Label17: TLabel;
    tmh: TEdit;
    ryzd: TEdit;
    zfy: TEdit;
    bch: TEdit;
    Edit1: TEdit;
    KDYS: TEdit;
    DBEdit11: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit6: TDBEdit;
    syje: TEdit;
    Panel2: TPanel;
    Label14: TLabel;
    Label10: TLabel;
    SBt_wjf: TSpeedButton;
    B_ENTER: TBitBtn;
    B_giveup: TBitBtn;
    B_FINAL: TBitBtn;
    e_bz: TEdit;
    e_fylb: TEdit;
    cfbh: TEdit;
    zdjf: TEdit;
    zfze: TEdit;
    Panel4: TPanel;
    cfmx_input: TDBGridEh;
    ypdw_grid: TDBGrid;
    ypmc_grid: TDBGrid;
    sp_cx_zybrjbqk: TADOStoredProc;
    sp_cx_zybrjbqktmh: TStringField;
    sp_cx_zybrjbqkzyh: TStringField;
    sp_cx_zybrjbqkbrxm: TStringField;
    sp_cx_zybrjbqksbkh: TStringField;
    sp_cx_zybrjbqkcsrq: TDateTimeField;
    sp_cx_zybrjbqkybndzje: TBCDField;
    sp_cx_zybrjbqkbrnl: TBCDField;
    sp_cx_zybrjbqksbdw: TStringField;
    sp_cx_zybrjbqkbrzy: TStringField;
    sp_cx_zybrjbqkbrxb: TStringField;
    sp_cx_zybrjbqkbrsf: TStringField;
    sp_cx_zybrjbqkbrjg: TStringField;
    sp_cx_zybrjbqkbrmz: TStringField;
    sp_cx_zybrjbqkdwdh: TStringField;
    sp_cx_zybrjbqkbrdz: TStringField;
    sp_cx_zybrjbqkdwyb: TStringField;
    sp_cx_zybrjbqkzkze: TBCDField;
    sp_cx_zybrjbqkzfze: TBCDField;
    sp_cx_zybrjbqkdbr: TStringField;
    sp_cx_zybrjbqkdbrdz: TStringField;
    sp_cx_zybrjbqknxrdh: TStringField;
    sp_cx_zybrjbqkhkyb: TStringField;
    sp_cx_zybrjbqkbch: TStringField;
    sp_cx_zybrjbqkryzd: TStringField;
    sp_cx_zybrjbqkksdm: TStringField;
    sp_cx_zybrjbqkzgys: TStringField;
    sp_cx_zybrjbqkzycs: TIntegerField;
    sp_cx_zybrjbqkfylb: TStringField;
    sp_cx_zybrjbqkryks: TStringField;
    sp_cx_zybrjbqksfzhm: TStringField;
    sp_cx_zybrjbqkrybq: TStringField;
    sp_cx_zybrjbqkrytj: TStringField;
    sp_cx_zybrjbqkryrq: TDateTimeField;
    sp_cx_zybrjbqksjyjze: TBCDField;
    sp_cx_zybrjbqkzdjf: TBCDField;
    sp_cx_zybrjbqkbqdm: TStringField;
    sp_cx_zybrjbqkyjze: TBCDField;
    sp_cx_zybrjbqkzfy: TBCDField;
    sp_cx_zybrjbqkybndzje_1: TBCDField;
    sp_cx_zybrjbqkryczy: TStringField;
    sp_cx_zybrjbqkbz: TStringField;
    sp_cx_zybrjbqkksmc: TStringField;
    sp_cx_zybrjbqkfylbmc: TStringField;
    sp_cx_zybrjbqkyjbz: TBooleanField;
    sp_cx_zybrjbqkzfzdmc: TStringField;
    sp_cx_zybrjbqkfyxz: TBCDField;
    sp_cx_zybrjbqkmc: TStringField;
    sp_cx_zybrjbqksyje: TBCDField;
    ds_zybrjbqk: TDataSource;
    tempgrid1: TDBGrid;
    sp_get_cfbh: TADOStoredProc;
    ad_zycfmx: TADODataSet;
    ad_zycfmxcfbh: TStringField;
    ad_zycfmxxh: TIntegerField;
    ad_zycfmxypdm: TStringField;
    ad_zycfmxypdwid: TIntegerField;
    ad_zycfmxypdw: TStringField;
    ad_zycfmxypbzbl: TIntegerField;
    ad_zycfmxypsl: TBCDField;
    ad_zycfmxypdj: TBCDField;
    ad_zycfmxyplb: TStringField;
    ad_zycfmxypmc: TStringField;
    ad_zycfmxypgg: TStringField;
    ad_zycfmxzje: TCurrencyField;
    ad_zycfmxzfje: TCurrencyField;
    ad_zycfmxkccgj: TBCDField;
    ad_zycfmxsbfybl: TFloatField;
    ad_zycfmxhtfybl: TFloatField;
    ad_zycfmxbxfybl: TFloatField;
    ad_zycfmxjlyp: TBooleanField;
    ad_zycfmxylyp: TBooleanField;
    ad_zycfmxjylyp: TStringField;
    ds_zycfmx: TDataSource;
    ds_ypmc: TDataSource;
    sp_cx_xyjg: TADOStoredProc;
    sp_cx_xyjgypdm: TStringField;
    sp_cx_xyjgypmc: TStringField;
    sp_cx_xyjgpym: TStringField;
    sp_cx_xyjgypgg: TStringField;
    sp_cx_xyjgdwid: TIntegerField;
    sp_cx_xyjgypdw: TStringField;
    sp_cx_xyjgzhl: TIntegerField;
    sp_cx_xyjglsj: TBCDField;
    sp_cx_xyjgsybz: TStringField;
    sp_cx_xyjgkcsl: TBCDField;
    sp_cx_xyjgzxdwsl: TBCDField;
    sp_cx_xyjghtfybl: TBCDField;
    sp_cx_xyjgsbfybl: TBCDField;
    sp_cx_xyjgbxfybl: TBCDField;
    sp_cx_xyjgsfjsyp: TBooleanField;
    sp_cx_xyjgsfgzyp: TBooleanField;
    sp_cx_xyjgsfdmyp: TBooleanField;
    sp_cx_xyjgsfzfyp: TBooleanField;
    sp_cx_xyjgkccgj: TBCDField;
    qry_kdys: TADOQuery;
    ad_ypdm: TADODataSet;
    ad_zycfzb: TADODataSet;
    sp_cx_czyks: TADODataSet;
    ds_ysks: TDataSource;
    ADOStoredProc1: TADOStoredProc;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    IntegerField1: TIntegerField;
    StringField5: TStringField;
    IntegerField2: TIntegerField;
    BCDField1: TBCDField;
    StringField6: TStringField;
    BCDField2: TBCDField;
    BCDField3: TBCDField;
    BCDField4: TBCDField;
    BCDField5: TBCDField;
    BCDField6: TBCDField;
    BooleanField1: TBooleanField;
    BooleanField2: TBooleanField;
    BooleanField3: TBooleanField;
    BooleanField4: TBooleanField;
    BCDField7: TBCDField;
    DataSource1: TDataSource;
    sp_cx_syje: TADOStoredProc;
    sp_cx_ypbz: TADOStoredProc;
    sp_cx_ypbzbzbl: TIntegerField;
    sp_cx_ypbzid: TAutoIncField;
    sp_cx_ypbzypdw: TStringField;
    ds_ypdw: TDataSource;
    sp_save: TADOStoredProc;
    ad_ksdm: TADODataSet;
    ds_ksdm: TDataSource;
    ksys_grid: TDBGrid;
    sp_dryz: TADOStoredProc;
    ActionList1: TActionList;
    Act_wjf: TAction;
    sp_cljf: TADOStoredProc;
    StringField7: TStringField;
    StringField8: TStringField;
    StringField9: TStringField;
    StringField10: TStringField;
    DateTimeField1: TDateTimeField;
    BCDField8: TBCDField;
    BCDField9: TBCDField;
    StringField11: TStringField;
    StringField12: TStringField;
    StringField13: TStringField;
    StringField14: TStringField;
    StringField15: TStringField;
    StringField16: TStringField;
    StringField17: TStringField;
    StringField18: TStringField;
    StringField19: TStringField;
    BCDField10: TBCDField;
    BCDField11: TBCDField;
    StringField20: TStringField;
    StringField21: TStringField;
    StringField22: TStringField;
    StringField23: TStringField;
    StringField24: TStringField;
    StringField25: TStringField;
    StringField26: TStringField;
    StringField27: TStringField;
    IntegerField3: TIntegerField;
    StringField28: TStringField;
    StringField29: TStringField;
    StringField30: TStringField;
    StringField31: TStringField;
    StringField32: TStringField;
    DateTimeField2: TDateTimeField;
    BCDField12: TBCDField;
    BCDField13: TBCDField;
    StringField33: TStringField;
    BCDField14: TBCDField;
    BCDField15: TBCDField;
    BCDField16: TBCDField;
    StringField34: TStringField;
    StringField35: TStringField;
    StringField36: TStringField;
    StringField37: TStringField;
    BooleanField5: TBooleanField;
    StringField38: TStringField;
    BCDField17: TBCDField;
    StringField39: TStringField;
    BCDField18: TBCDField;
    p_1: TPanel;
    dbgrd2: TDBGrid;
    edt1: TEdit;
    btn1: TButton;
    dbedt1: TDBEdit;
    dbedt2: TDBEdit;
    dbedt3: TDBEdit;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    cfmx_ddyy: TDBGridEh;
    intgrfld_cx_xyjgypbzbl: TIntegerField;
    dtmfld_cx_xyjgypxq: TDateTimeField;
    p_2: TPanel;
    sp_cx_xyjgph: TStringField;
    ad_zycfmxypph: TStringField;
    qry_jcclkc: TADOQuery;
    procedure FormShow(Sender: TObject);
    procedure tmhExit(Sender: TObject);
    procedure tempgrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure tempgrid1Exit(Sender: TObject);
    procedure displayvalue;
    procedure xyhjinit;
    procedure brlr;
    procedure tmhChange(Sender: TObject);
    procedure tmhEnter(Sender: TObject);
    procedure tmhKeyPress(Sender: TObject; var Key: Char);
    procedure cfmx_inputColExit(Sender: TObject);
    procedure cfmx_inputExit(Sender: TObject);
    procedure cfmx_inputKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cfmx_inputKeyPress(Sender: TObject; var Key: Char);
    procedure ypmcprocess(SP_CX_JG: Tadostoredproc; ksdm: string; row: byte);
    procedure ypdmmcprocess;
    procedure KDYSExit(Sender: TObject);
    procedure ysprocess(tempedit: Tedit; var pri_var: string);
    procedure kdyskdks(cledit: Tedit; var dm: string);
    procedure KDYSKeyPress(Sender: TObject; var Key: Char);
    procedure tempgrid1KeyPress(Sender: TObject; var Key: Char);
    procedure ksys_gridExit(Sender: TObject);
    procedure ksys_gridKeyPress(Sender: TObject; var Key: Char);
    procedure ypmc_gridExit(Sender: TObject);
    procedure ypmc_gridKeyPress(Sender: TObject; var Key: Char);
    procedure ad_zycfmxAfterDelete(DataSet: TDataSet);
    procedure ad_zycfmxAfterEdit(DataSet: TDataSet);
    procedure ad_zycfmxAfterInsert(DataSet: TDataSet);
    procedure ad_zycfmxAfterPost(DataSet: TDataSet);
    procedure calCsum(col: integer);
    procedure ad_zycfmxBeforeDelete(DataSet: TDataSet);
    procedure ad_zycfmxBeforePost(DataSet: TDataSet);
    procedure ad_zycfmxCalcFields(DataSet: TDataSet);
    procedure B_ENTERClick(Sender: TObject);
    procedure datasave(tablename: string);
    procedure SBt_wjfClick(Sender: TObject);
    procedure Act_wjfExecute(Sender: TObject);
    procedure B_giveupClick(Sender: TObject);
    procedure B_FINALClick(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure dbgrd2DblClick(Sender: TObject);
    procedure dbgrd1ColExit(Sender: TObject);
    procedure cfmx_ddyyKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cfmx_ddyyDblClick(Sender: TObject);
    procedure edt1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
  zy_tmh, ysorbq: string;
  v_kcsl : Real;
    { Public declarations }
  end;

var
  deletebz,insertflag,czwcg,cfbz:Boolean;
  SavePlace: TBookmark;
  changedflag: boolean; //表示材料明细有无改变
  hjlb: integer; // 划价列标志，某列出错则将此列计如此变量否则次变量为-1
  ysksischange: boolean; //表示从开单科室出来时科室有无变化
  frm_zyyzcljf: Tfrm_zyyzcljf;
  ph, xycf_bh, v_zyh, ksmc, v_ypmc, pri_kdks, pri_kdys, pri_czks, pri_czys, pri_fylb: string;
  qhbz:Boolean; //表示是否马上求和 true 求和 false 不求
  dispinit: boolean = false; //显示初始化
  yzsj:string;
  zqbcbz: boolean; //zyfymx_ls保存正确时置此标志
  lostsender: Tobject;
  yycfsj: boolean = false; //显示初始化

implementation

{$R *.dfm}

uses p_func,p_dm,p_clhj_wjf;

procedure Tfrm_zyyzcljf.FormShow(Sender: TObject);
var i:Integer;
begin
  qry_kdys.Open;
//-------------------
  deletebz := false;
  tmh.setfocus;
  if trim(tmh.text) <> '' then
  begin
    tmhExit(tmh);
//    sp_dryz.First;
//    while not sp_dryz.eof do
//    begin
//    ad_zycfmx['ypmc'] := trim(sp_dryz.fieldbyname('ypmc').asstring);
//    ad_zycfmx['ypdm'] := trim(sp_cx_xyjg.fieldbyname('ypdm').asstring);
//    ad_zycfmx['ypdw'] := trim(sp_cx_xyjg.fieldbyname('ypdw').asstring);
//    ad_zycfmx['ypdj'] := sp_cx_xyjg.fieldbyname('lsj').asfloat;
//    ad_zycfmx['ypbzbl'] := trim(sp_cx_xyjg.fieldbyname('zhl').asstring);
//    ad_zycfmx['kccgj'] := sp_cx_xyjg.fieldbyname('kccgj').asfloat;
//    ad_zycfmx['ypdwid'] := trim(sp_cx_xyjg.fieldbyname('dwid').asstring);
//    if sp_cx_xyjg.fieldbyname('sfdmyp').asboolean then
//      ad_zycfmx['yplb'] := '毒麻药品';
//    ad_zycfmx['cfbh'] := xycf_bh;
//    v_ypmc := trim(sp_cx_xyjg.fieldbyname('ypmc').asstring);
//    ad_zycfmx['cfbh'] := xycf_bh;
//    sp_dryz.Next;
//    end;
    if sp_dryz.RecordCount>0 then
    begin
      sp_dryz.Filtered:=False;
      sp_dryz.Filter:='sfjf<>''已计费''';
      sp_dryz.Filtered:=True;
      sp_dryz.First;
      i:=1;
      while  not sp_dryz.Eof do
      begin
      //ad_zycfmx.GotoBookmark(saveplace);
      ad_zycfmx.Append;
      ad_zycfmx['ypmc'] := trim(sp_dryz.fieldbyname('xmmc').asstring);
      ad_zycfmx['ypdm'] := trim(sp_dryz.fieldbyname('xmdm').asstring);
      ad_zycfmx['ypdw'] := trim(sp_dryz.fieldbyname('dw').asstring);
      ad_zycfmx['ypdj'] := sp_dryz.fieldbyname('yplsj').asfloat;
      ad_zycfmx['ypbzbl'] := trim(sp_dryz.fieldbyname('ypbzbl').asstring);
      ad_zycfmx['kccgj'] := sp_dryz.fieldbyname('ypcgj').asfloat;
      ad_zycfmx['ypdwid'] := trim(sp_dryz.fieldbyname('ypdwid').asstring);
      ad_zycfmx['ypph'] := trim(sp_dryz.fieldbyname('ph').asstring); //ph
  //    if sp_dryz.fieldbyname('sfdmyp').asboolean then
  //    ad_zycfmx['yplb'] := '毒麻药品';
      ad_zycfmx['cfbh'] := xycf_bh;
      v_ypmc := trim(sp_dryz.fieldbyname('xmmc').asstring);
      ad_zycfmx['cfbh'] := xycf_bh;
      ad_zycfmx['ypgg'] := '';
      ad_zycfmx['ypsl'] := sp_dryz.fieldbyname('sl').asfloat;
      ad_zycfmx['zje'] := sp_dryz.fieldbyname('yplsj').asfloat*sp_dryz.fieldbyname('sl').asfloat;
      ad_zycfmx['zfje'] :=sp_dryz.fieldbyname('yplsj').asfloat*sp_dryz.fieldbyname('sl').asfloat;
      DM_data.qry_pub.Close;
      DM_data.qry_pub.SQL.text:='select case jl+yl when '''' then ''自费'' else  jl+yl end jylyp  from (select case sfjlyp when 1 then ''甲类'' else '''' end jl,case sfylyp when 1 then ''甲类'' else '''' end yl  from sys_ypdm where ypdm='+''''+trim(sp_dryz.fieldbyname('xmdm').asstring)+''''+') as b';
      DM_data.qry_pub.Open;
      ad_zycfmx['jylyp']:=Trim(DM_data.qry_pub.FieldByName('jylyp').AsString);
      ad_zycfmx['xh']:= i;
      i:=i+1;
      ad_zycfmx.post;
      sp_dryz.Next;
      end;
      ad_zycfmx.Last;
      ad_zycfmx.Append;
  //    cfmx_input.SelectedIndex:=4;
      if pub_yydm <> '0271' then
        cfmx_input.SetFocus;

    end;

  end;

  if pub_yydm = '0271' then
  begin
    p_1.Top := 217;
    p_1.Visible := True;
    cfmx_input.Visible := False;
    p_2.Visible := True;
    if edt1.CanFocus then
      edt1.SetFocus;
  end else
  begin
    p_1.Visible := False;
    cfmx_input.Visible := True ;
    p_2.Visible := false;
  end;
end;

procedure Tfrm_zyyzcljf.KDYSExit(Sender: TObject);
begin
  if ysksischange then
    ysprocess(kdys, pri_kdys)
  else
  begin
    if pub_yydm = '0271' then
    begin
      cfmx_ddyy.SetFocus;
    end else
    begin
      cfmx_input.setfocus;
    end;
  end;
  if pub_yydm = '0271' then
    cfmx_ddyy.SelectedIndex := 0
  else
    cfmx_input.SelectedIndex := 0;
  //frm_func.restorecolor(sender);
end;

procedure Tfrm_zyyzcljf.tempgrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  with tempgrid1 do
  begin
    if DataSource.DataSet.FieldByName('syje').AsFloat > 0 then
    begin
      Canvas.Font.Color := ClBlack;
      Canvas.Brush.Color := clWindow;
    end
    else
    begin
      Canvas.Font.Color := clred;
      Canvas.Brush.Color := clWindow;
    end;
//    DefaultDrawColumnCell(Rect, DataCol, Column, State);
  end;
end;

procedure Tfrm_zyyzcljf.tempgrid1Exit(Sender: TObject);
begin
  tmh.text := sp_cx_zybrjbqk['brxm'];
  tempgrid1.Visible := false;
  displayvalue;
end;


procedure Tfrm_zyyzcljf.tempgrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    SelectNext(activeControl, true, true) else
    if (key in ['A'..'z']) or (key in ['0'..'9']) or (ord(key) > 127) then
      ysksischange := true;
end;

procedure Tfrm_zyyzcljf.cfmx_ddyyDblClick(Sender: TObject);
begin
  ad_zycfmx.Delete;
end;

procedure Tfrm_zyyzcljf.cfmx_ddyyKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 46 then
  begin
    ad_zycfmx.Delete;
  end;
end;

procedure Tfrm_zyyzcljf.cfmx_inputColExit(Sender: TObject);
begin
  if ad_zycfmx.State <> dsBrowse then
    ypmcprocess(sp_cx_xyjg, pub_ksdm, 2);
end;


procedure Tfrm_zyyzcljf.ypmcprocess(SP_CX_JG: Tadostoredproc; ksdm: string; row: byte);
var
  ypsl: integer;
  myrect: trect;
begin
  if cfmx_input.SelectedIndex = 0 then //取材料名称
  begin
    begin
      sp_cx_jg.close;
      if trim(ad_zycfmx.fieldbyname('ypdm').asstring) = '' then
        sp_cx_jg.Parameters.ParamByName('@pym').value := ad_zycfmx['ypmc']
      else
        sp_cx_jg.Parameters.ParamByName('@pym').value := ad_zycfmx['ypdm'];

      sp_cx_jg.Parameters.ParamByName('@ksdm').value := ksdm;
      sp_cx_jg.Open;
      if ad_zycfmx.state = dsinsert then
        insertflag := true
      else
        insertflag := false;
      if sp_cx_jg.IsEmpty then
      begin
        messagedlg('材料代码输入错误，请检查后重新输入！', mterror, [mbok], 0);
        cfmx_input.setfocus;
        hjlb := 0;
        cfmx_input.selectedindex := 0;
        v_ypmc := '';
        czwcg := true;
      end //材料代码查找不成功
      else
        if sp_cx_jg.RecordCount = 1 then
        begin
          czwcg := false;
          panel2.enabled := true;
          hjlb := 2;
          ypdmmcprocess; //查找成功
        end
        else
          if (sp_cx_jg.recordcount > 1) and (v_ypmc <> trim(ad_zycfmx.fieldbyname('ypmc').asstring)) then
          begin
            ypmc_grid.visible := true;
            myrect := THACKDBGRID(cfmx_input).cellrect(0, THACKDBGRID(cfmx_input).row);
            ypmc_grid.left := myrect.left;
            if myrect.Bottom + ypmc_grid.height > cfmx_input.height then
              ypmc_grid.top := myrect.top - ypmc_grid.Height
            else
              ypmc_grid.top := myrect.Bottom;
            panel2.enabled := true;
            czwcg := false;
            ypmc_grid.setfocus;
          end; //查找成功但个数大于一
    end
  end
  else
    if cfmx_input.selectedindex = 2 then
      hjlb := 4 //*************
    else
      if (cfmx_input.SelectedIndex = 4) and (trim(ad_zycfmx.fieldbyname('ypmc').asstring) <> '') then
      begin
        if ad_zycfmx.fieldbyname('ypsl').asfloat <= 0 then
        begin
          hjlb := 4;
          cfmx_input.selectedindex := 5;
          messagedlg('材料数量不正确，请输入正确数量', mterror, [mbok], 0)
        end //首先判断材料数量为不为0 (材料库房不进行判断库存)
        else
        begin
{          if (ad_zycfmx['ypsl'] * ad_zycfmx['ypbzbl'] > sp_cx_jg['zxdwsl']) and ((ad_zycfmx.State = dsedit) or (ad_zycfmx.State = dsinsert)) then
          begin
            messagedlg('材料库存数量不足', mterror, [mbok], 0);
            hjlb := 4;
            cfmx_input.selectedindex := 5;
          end
          else
          begin}
          ad_zycfmx.append;
          hjlb := 0;
//          end
        end;
      end
end;



procedure Tfrm_zyyzcljf.ypmc_gridExit(Sender: TObject);
begin
  ypdmmcprocess;
end;

procedure Tfrm_zyyzcljf.ypmc_gridKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    SelectNext(activeControl, true, true) else
    if (key in ['A'..'z']) or (key in ['0'..'9']) or (ord(key) > 127) then
    ysksischange := true;
end;

procedure Tfrm_zyyzcljf.ypdmmcprocess; //处理材料名称代码
var saveplace1: Tbookmark;
begin
  saveplace := ad_zycfmx.GetBookmark;
  if ad_zycfmx.state = dsinsert then
    insertflag := true
  else
    insertflag := false;
//  if sp_cx_xyjg.fieldbyname('zxdwsl').asfloat > 0 then
//  begin
  if trim(ad_zycfmx.FieldByName('ypdm').AsString) = '' then
    ad_zycfmx['ypdm'] := '';
  if not (ad_zycfmx.Locate('ypdm', sp_cx_xyjg['ypdm'], [])) then
  begin
    ad_zycfmx.GotoBookmark(saveplace);
    ad_zycfmx.edit;
    czwcg := false;
    ad_zycfmx['ypmc'] := trim(sp_cx_xyjg.fieldbyname('ypmc').asstring);
    ad_zycfmx['ypdm'] := trim(sp_cx_xyjg.fieldbyname('ypdm').asstring);
    ad_zycfmx['ypdw'] := trim(sp_cx_xyjg.fieldbyname('ypdw').asstring);
    ad_zycfmx['ypdj'] := sp_cx_xyjg.fieldbyname('lsj').asfloat;
    ad_zycfmx['ypbzbl'] := trim(sp_cx_xyjg.fieldbyname('zhl').asstring);
    ad_zycfmx['kccgj'] := sp_cx_xyjg.fieldbyname('kccgj').asfloat;
    ad_zycfmx['ypdwid'] := trim(sp_cx_xyjg.fieldbyname('dwid').asstring);
    if sp_cx_xyjg.fieldbyname('sfdmyp').asboolean then
      ad_zycfmx['yplb'] := '毒麻药品';
    ad_zycfmx['cfbh'] := xycf_bh;
    v_ypmc := trim(sp_cx_xyjg.fieldbyname('ypmc').asstring);
    ad_zycfmx['cfbh'] := xycf_bh;
    ypmc_grid.Visible := false;
    ad_zycfmx.FreeBookmark(saveplace); /////////////
    cfmx_input.SetFocus;
    if pub_yfsfsybz then
      cfmx_input.SelectedIndex := 2
    else
      cfmx_input.SelectedIndex := 4;
    ad_zycfmx.AutoCalcFields := True; //设置自动计算 lookup field 值(ygycxm,06-06-02)
  end
  else
  begin
    saveplace1 := ad_zycfmx.getbookmark;
    if ad_zycfmx.CompareBookmarks(saveplace, saveplace1) <> 0 then
    begin
      application.MessageBox('同一张处方,不能有重复材料', '错误', mb_ok + Mb_iconerror);
      cfmx_input.setfocus;
      cfbz := true;
      if insertflag then
        ad_zycfmx.Last
      else
        ad_zycfmx.GotoBookmark(saveplace);
      ad_zycfmx.FreeBookmark(saveplace); /////////////
    end
    else
    begin
      cfmx_input.SetFocus;
      if pub_yfsfsybz then
        cfmx_input.SelectedIndex := 2
      else
        cfmx_input.SelectedIndex := 4;
    end;
    ypmc_grid.Visible := false;
    ad_zycfmx.FreeBookmark(saveplace1);
  end;
  ypmc_grid.Visible := false;
//  end
//  else
//  begin
//    cfmx_input.setfocus;
//    cfmx_input.SelectedIndex := 0;
//    ypmc_grid.Visible := false;
//    messagedlg('库存数量为零,请重新输入', mtinformation, [mbok], 0);
//  end
end;


procedure Tfrm_zyyzcljf.cfmx_inputExit(Sender: TObject);
begin
  hjlb := 0;
end;

procedure Tfrm_zyyzcljf.cfmx_inputKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  i: integer;
begin
  if cfbz then
    ad_zycfmx.AutoCalcFields := False; //设置不自动计算 lookup field 值(ygycxm,06-06-02)
  if (key = vk_down) or (key = vk_up) or (key = vk_left) or (key = vk_right) or (key = vk_tab) then
    KEY := 0;
  if key = 27 then
  begin
    ad_zycfmx.delete;
    deletebz := true;
    ad_zycfmx.DisableControls;
    cfmx_input.SumList.Active := false;
    ad_zycfmx.First;
    for i := 1 to ad_zycfmx.RecordCount do
    begin
      ad_zycfmx.Edit;
      ad_zycfmx['XH'] := i;
      ad_zycfmx.next;
    end;
    ad_zycfmx.EnableControls;
    deletebz := false;
    cfmx_input.SumList.Active := true;
    ad_zycfmx.AfterPost(ad_zycfmx);
  end;
end;



procedure Tfrm_zyyzcljf.displayvalue;
begin
  dispinit := true;
  qhbz := false;
  b_giveup.enabled := true;
  tmh.text := sp_cx_zybrjbqk.fieldbyname('tmh').asstring;
  Edit1.text := sp_cx_zybrjbqk.fieldbyname('brxm').asstring;
  bch.text := sp_cx_zybrjbqk.fieldbyname('bch').asstring;
  ryzd.text := format('%3.2f', [sp_cx_zybrjbqk.fieldbyname('sjyjze').asfloat]);
  zfy.text := format('%3.2f', [sp_cx_zybrjbqk.fieldbyname('zfy').asfloat]);
  zdjf.Text := format('%3.2f', [sp_cx_zybrjbqk.fieldbyname('zdjf').asfloat]);
  zfze.Text := format('%3.2f', [sp_cx_zybrjbqk.fieldbyname('zfze').asfloat]);
  e_fylb.Text := sp_cx_zybrjbqk.fieldbyname('fylbmc').asstring;
  e_bz.Text := sp_cx_zybrjbqk.fieldbyname('bz').asstring;
  v_zyh := sp_cx_zybrjbqk.fieldbyname('zyh').asstring;
  pri_kdks := sp_cx_zybrjbqk.fieldbyname('ksdm').asstring;
  if trim(sp_cx_zybrjbqk.fieldbyname('zgys').asstring) <> '' then
    pri_kdys := sp_cx_zybrjbqk.fieldbyname('zgys').asstring;
  ph := get_sjh(pub_czydm);
  xyhjinit;
  brlr;
  kdys.setfocus;
  sp_dryz.Close;
  sp_dryz.Parameters.Refresh;
  sp_dryz.Parameters.ParamByName('@zyh').value:=  v_zyh;
  sp_dryz.Parameters.ParamByName('@zxsj').Value:= yzsj;
  sp_dryz.Open;
end;

procedure Tfrm_zyyzcljf.Act_wjfExecute(Sender: TObject);
begin
 SBt_wjf.Click;
end;

procedure Tfrm_zyyzcljf.ad_zycfmxAfterDelete(DataSet: TDataSet);
begin
  sp_cx_syje.close;
  sp_cx_syje.Parameters.ParamByName('@zyh').value := sp_cx_zybrjbqk.fieldbyname('zyh').asstring;
  sp_cx_syje.Open;
  syje.text := format('%3.2f', [sp_cx_syje.fieldbyname('yjze').asfloat + sp_cx_zybrjbqk.fieldbyname('zdjf').asfloat -
  sp_cx_syje.fieldbyname('zfze').asfloat - strtofloat(cfmx_input.GetFooterValue(0, cfmx_input.columns[6]))]);
end;

procedure Tfrm_zyyzcljf.ad_zycfmxAfterEdit(DataSet: TDataSet);
begin
sp_cx_syje.close;
  sp_cx_syje.Parameters.ParamByName('@zyh').value := sp_cx_zybrjbqk.fieldbyname('zyh').asstring;
  sp_cx_syje.Open;
  syje.text := format('%3.2f', [sp_cx_syje.fieldbyname('yjze').asfloat + sp_cx_zybrjbqk.fieldbyname('zdjf').asfloat -
    sp_cx_syje.fieldbyname('zfze').asfloat - strtofloat(cfmx_input.GetFooterValue(0, cfmx_input.columns[6]))]);
end;

procedure Tfrm_zyyzcljf.ad_zycfmxAfterInsert(DataSet: TDataSet);
begin
  cfmx_input.selectedindex := 0;
  sp_cx_syje.close;
  sp_cx_syje.Parameters.ParamByName('@zyh').value := sp_cx_zybrjbqk.fieldbyname('zyh').asstring;
  sp_cx_syje.Open;
  if cfmx_input.GetFooterValue(0, cfmx_input.columns[6]) = '' then
    syje.text := format('%3.2f', [sp_cx_syje.fieldbyname('yjze').asfloat + sp_cx_zybrjbqk.fieldbyname('zdjf').asfloat -
      sp_cx_syje.fieldbyname('zfze').asfloat - strtofloat(cfmx_input.GetFooterValue(0, cfmx_input.columns[6]))])
  else
  syje.text := format('%3.2f', [sp_cx_syje.fieldbyname('yjze').asfloat + sp_cx_zybrjbqk.fieldbyname('zdjf').asfloat -
  sp_cx_syje.fieldbyname('zfze').asfloat - strtofloat(cfmx_input.GetFooterValue(0, cfmx_input.columns[6]))]);
end;

procedure Tfrm_zyyzcljf.ad_zycfmxAfterPost(DataSet: TDataSet);
begin
  calCsum(0);
  calCsum(1);
end;

procedure Tfrm_zyyzcljf.ad_zycfmxBeforeDelete(DataSet: TDataSet);
var
  saveplace2: tbookmark;
begin
  saveplace2 := ad_zycfmx.getbookmark;
  if ad_zycfmx.CompareBookmarks(saveplace, saveplace2) = 0 then
  begin
    czwcg := false;
    panel2.enabled := true;
  end;
end;

procedure Tfrm_zyyzcljf.ad_zycfmxBeforePost(DataSet: TDataSet);
begin
  qhbz := true; //此初增加此标志是为了多表顺序操作时作求和处理
  if (cfmx_input.SelectedIndex = 4) then
    if ad_zycfmx.fieldbyname('ypsl').asfloat <= 0 then
    begin
      messagedlg('材料数量不正确，请输入正确数量', mterror, [mbok], 0)
    end; //首先判断材料数量为不为0

  if ad_zycfmx.fieldbyname('xh').asinteger = 0 then
    if ad_zycfmx.RecNo = -1 then
      ad_zycfmx['XH'] := ad_zycfmx.RecordCount + 1
    else
      ad_zycfmx['XH'] := ad_zycfmx.RecNo + 1;
end;

procedure Tfrm_zyyzcljf.ad_zycfmxCalcFields(DataSet: TDataSet);
begin
//对每一种病人都设有ybndzje（记账限额），如果计费超过了记账限额，则所有费用计为自费
  begin
    ad_zycfmx['zje'] := ad_zycfmx.fieldbyname('ypsl').asfloat * ad_zycfmx.fieldbyname('ypdj').asfloat;
    if trim(sp_cx_zybrjbqk.fieldbyname('zfzdmc').asstring) <> '' then
    begin
      if sp_cx_zybrjbqk.fieldbyname('ybndzje').asfloat - sp_cx_zybrjbqk.fieldbyname('zfy').asfloat > 0 then
        ad_zycfmx['zfje'] := ad_zycfmx.fieldbyname('zje').asfloat *
          ad_zycfmx.fieldbyname(trim(sp_cx_zybrjbqk.fieldbyname('zfzdmc').asstring)).asfloat / 100
      else
        ad_zycfmx['zfje'] := ad_zycfmx.fieldbyname('zje').asfloat;
    end
    else
      ad_zycfmx['zfje'] := ad_zycfmx.fieldbyname('zje').asfloat;
    if ad_zycfmx.fieldbyname('jlyp').asboolean then
      ad_zycfmx['jylyp'] := '甲类'
    else if ad_zycfmx.fieldbyname('ylyp').asboolean then
      ad_zycfmx['jylyp'] := '乙类'
    else
      ad_zycfmx['jylyp'] := '自费';
  end;
end;

procedure Tfrm_zyyzcljf.calCsum(col: integer);
var
  l_cfzje: real;
begin
  if not deletebz then
  begin
    ad_zycfmx.DisableControls;
    ad_zycfmx.First;
    cfmx_input.SumList.SumCollection.Items[col].SumValue := 0;
    while not ad_zycfmx.Eof do
    begin
      cfmx_input.SumList.SumCollection.Items[col].SumValue := cfmx_input.SumList.SumCollection.Items[col].SumValue +
        ad_zycfmx.FieldByName(cfmx_input.SumList.SumCollection.Items[col].FieldName).AsFloat;
      ad_zycfmx.Next;
      l_cfzje := realtot(cfmx_input.SumList.SumCollection.Items[0].SumValue, 2);
      label10.Caption := format('￥%3.2f', [l_cfzje]);
    end;
    ad_zycfmx.EnableControls;
  end;
end;

procedure Tfrm_zyyzcljf.brlr;
var ls: string;
  ye: real;
begin
  panel2.Caption := '';

  ye := sp_cx_zybrjbqk.fieldbyname('yjze').asfloat
    + sp_cx_zybrjbqk.fieldbyname('zdjf').asfloat
    - sp_cx_zybrjbqk.fieldbyname('zfze').asfloat;
  if ye < 0 then
    syje.Font.Color := clred
  else
    syje.Font.Color := clwhite;
  syje.Text := floattostrf(ye, fffixed, 18, 2);
  if pub_cfbrfy = false then
  begin
    if (sp_cx_zybrjbqk['fyxz'] = true) and (ye < 0) then
      application.MessageBox('该病人已欠费，允许划价，但不能发材料!', '注意', 16);
  end;
  zy_tmh := sp_cx_zybrjbqk.fieldbyname('tmh').asstring;
end;

procedure Tfrm_zyyzcljf.edt1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 13 then
    btn1Click(edt1);
end;

procedure Tfrm_zyyzcljf.btn1Click(Sender: TObject);
begin
  sp_cx_xyjg.Close;
  sp_cx_xyjg.Parameters.Refresh;
  sp_cx_xyjg.Parameters.ParamByName('@pym').Value:=edt1.Text;
  sp_cx_xyjg.Parameters.ParamByName('@ksdm').Value:=pub_ksdm;
  sp_cx_xyjg.Parameters.ParamByName('@cxlb').Value:='3';
  sp_cx_xyjg.Open;

end;

procedure Tfrm_zyyzcljf.B_ENTERClick(Sender: TObject);
var i: integer;
  returnvalue: string;
  sffy: boolean;
  czje: real;
  v_ErrorID: string;
  sy_sl :Real;
begin


//写入zysf_zyfymx_ls
//为各划价着手费标志
//将临时表写入正式表
//转入姓名处理下一人
//b_enter.enabled:=true;
  czje := 0;
  b_enter.setfocus;
  if ad_zycfmx.state in [dsedit, dsinsert] then
    ad_zycfmx.post;
  //判断材料库存
  if pub_yydm='0271' then
  begin
    ad_zycfmx.Edit;
//    showmessage(IntToStr(ad_zycfmx.RecordCount));
    ad_zycfmx.First;
    while not ad_zycfmx.Eof do
    begin
      sy_sl:=0;
      sy_sl :=StrToFloat(ad_zycfmx.FieldByName('ypsl').AsString);
//      ShowMessage('计费数量'+ad_zycfmx.FieldByName('ypsl').AsString);
      qry_jcclkc.Close;
      qry_jcclkc.SQL.Text :='select *  from bqkf_ypkc where ypdm ='''+ad_zycfmx.FieldByName('ypdm').AsString+''' and ph ='''+ad_zycfmx.FieldByName('ypph').AsString+''' and ksdm ='''+pub_bqdm+'''';
      qry_jcclkc.Open;
//      ShowMessage('库存数量'+FloatToStr(qry_jcclkc.FieldByName('zxdwsl').AsFloat));
      if sy_sl>qry_jcclkc.FieldByName('zxdwsl').AsFloat then
      begin
        application.MessageBox(PChar(qry_jcclkc.FieldByName('ypmc').asstring+'库存不足,不能计费!'), '注意', 16);
        exit;
      end;
      ad_zycfmx.Next;
    end;
  end;
  if frm_func.Func_CheckPDZT(pub_ksdm) then
  begin
    application.MessageBox('系统正在进行盘点，不能发材料!', '注意', 16);
    exit;
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
  zqbcbz := false;

  if pub_yydm = '0271' then
  begin
    if strtofloat(cfmx_ddyy.GetFooterValue(0, cfmx_ddyy.columns[5])) > 0 then //总金额>0
    begin
      cfmx_ddyy.SelectedIndex := 0;
      datasave('bqkf_zycfzb');
      with sp_cx_syje do //查询余额
      begin
        close;
        Parameters.ParamByName('@zyh').value := sp_cx_zybrjbqk.fieldbyname('zyh').asstring;
        Open;
        syje.text := format('%3.2f', [fieldbyname('yjze').asfloat + sp_cx_zybrjbqk.fieldbyname('zdjf').asfloat -
          fieldbyname('zfze').asfloat - strtofloat(cfmx_ddyy.GetFooterValue(0, cfmx_ddyy.columns[5]))]);
      end;
      b_enter.setfocus;
      i := 1;
      sffy := false;
      if (trim(pri_kdks) = '') or (trim(pri_kdys) = '') then
      begin
        lostsender := b_enter;
        if trim(pri_kdys) = '' then
        begin
          application.MessageBox('没有填入开单医生', '错误', mb_ok + mb_iconerror);
          kdys.setfocus;
          abort;
        end
      end;
      if zqbcbz then //处方已经正确保存
      begin
        if (strtofloat(syje.text) < 0) and (not sffy) then
        begin
          if application.messagebox(pchar('病人账上资金不足，为方便你工作' + #13 + #13 +
            '                   是否使用超记金额记帐！' + #13 + #13 + '  处方号：' + xycf_bh),
            '提示', mb_yesNo + mb_iconinformation + MB_DEFBUTTON2) = IDyes then
            czje := pub_cjje
          else
            czje := 0;
        end;
        if strtofloat(syje.text) + czje >= 0 then
        begin
          sp_save.close;
          sp_save.Parameters.ParamByName('@cfbh').value := xycf_bh;
          sp_save.Parameters.ParamByName('@fyczy').value := pub_czydm;
          sp_save.Parameters.ParamByName('@ksdm').value := pub_ksdm;
          sp_save.Parameters.ParamByName('@sjbh').value := string(get_sjh(pub_czydm));
          sp_save.Parameters.ParamByName('@sc_cg').value := '0';
          sp_save.ExecProc;
          v_ErrorID := sp_save.Parameters.ParamByName('@sc_cg').value;
          if v_ErrorID <> '0' then
            application.MessageBox(Pchar('错误提示:处方发材料失败!' + #13 + '错误号:' +
              v_ErrorID), '错误提示', 16)
          else
          begin
            sp_cljf.Close;
            sp_cljf.Parameters.Refresh;
            sp_cljf.Parameters.ParamByName('@zyh').Value:=v_zyh;
            sp_cljf.Parameters.ParamByName('@czydm').Value:=pub_czydm;
            sp_cljf.Parameters.ParamByName('@yfdm').Value:='';
            sp_cljf.Parameters.ParamByName('@kdys').Value:='';
            sp_cljf.Parameters.ParamByName('@zxsj').Value:=yzsj;
            sp_cljf.ExecProc;
            application.MessageBox('该处方发材料成功，处方已下帐!', '提示', 48);
            yycfsj := true;
            tmh.SetFocus;
          end;
        end
        else
        begin
          if czje > 0 then
            application.MessageBox('处方已保存，你的超记金额不足, 处方未下帐!', '提示', 0 + 48)
          else
            application.MessageBox('处方未下帐!', '提示', 0 + 48);
          tmh.SetFocus;
        end;
      end;
    end;

  end else
  begin
    if strtofloat(cfmx_input.GetFooterValue(0, cfmx_input.columns[5])) > 0 then //总金额>0
    begin
      cfmx_input.SelectedIndex := 0;
      datasave('bqkf_zycfzb');
      with sp_cx_syje do //查询余额
      begin
        close;
        Parameters.ParamByName('@zyh').value := sp_cx_zybrjbqk.fieldbyname('zyh').asstring;
        Open;
        syje.text := format('%3.2f', [fieldbyname('yjze').asfloat + sp_cx_zybrjbqk.fieldbyname('zdjf').asfloat -
          fieldbyname('zfze').asfloat - strtofloat(cfmx_input.GetFooterValue(0, cfmx_input.columns[6]))]);
      end;
      b_enter.setfocus;
      i := 1;
      sffy := false;
      if (trim(pri_kdks) = '') or (trim(pri_kdys) = '') then
      begin
        lostsender := b_enter;
        if trim(pri_kdys) = '' then
        begin
          application.MessageBox('没有填入开单医生', '错误', mb_ok + mb_iconerror);
          kdys.setfocus;
          abort;
        end
      end;
  //病区划材料不进行收费下账判断
  {    if pub_fybz then //药房下帐
      begin
        application.MessageBox('系统设置为收费处记帐后下材料帐,处方保存成功!', '注意', 48);
        tmh.text := '';
        tmh.SetFocus;
        abort;
      end;}
      if zqbcbz then //处方已经正确保存
      begin
        if (strtofloat(syje.text) < 0) and (not sffy) then
        begin
          if application.messagebox(pchar('病人账上资金不足，为方便你工作' + #13 + #13 +
            '                   是否使用超记金额记帐！' + #13 + #13 + '  处方号：' + xycf_bh),
            '提示', mb_yesNo + mb_iconinformation + MB_DEFBUTTON2) = IDyes then
            czje := pub_cjje
          else
            czje := 0;
        end;
        if strtofloat(syje.text) + czje >= 0 then
        begin
          sp_save.close;
          sp_save.Parameters.ParamByName('@cfbh').value := xycf_bh;
          sp_save.Parameters.ParamByName('@fyczy').value := pub_czydm;
          sp_save.Parameters.ParamByName('@ksdm').value := pub_ksdm;
          sp_save.Parameters.ParamByName('@sjbh').value := string(get_sjh(pub_czydm));
          sp_save.Parameters.ParamByName('@sc_cg').value := '0';
          sp_save.ExecProc;
  //        if sp_save.Parameters.ParamByName('@sc_cg').value = 1 then
  //          application.MessageBox('材料库存数不足,不能发药!', '注意', 16)
  //        else
          v_ErrorID := sp_save.Parameters.ParamByName('@sc_cg').value;
          if v_ErrorID <> '0' then
            application.MessageBox(Pchar('错误提示:处方发材料失败!' + #13 + '错误号:' +
              v_ErrorID), '错误提示', 16)
          else
          begin
            sp_cljf.Close;
            sp_cljf.Parameters.Refresh;
            sp_cljf.Parameters.ParamByName('@zyh').Value:=v_zyh;
            sp_cljf.Parameters.ParamByName('@czydm').Value:=pub_czydm;
            sp_cljf.Parameters.ParamByName('@yfdm').Value:='';
            sp_cljf.Parameters.ParamByName('@kdys').Value:='';
            sp_cljf.Parameters.ParamByName('@zxsj').Value:=yzsj;
            sp_cljf.ExecProc;
            application.MessageBox('该处方发材料成功，处方已下帐!', '提示', 48);
            yycfsj := true;
            tmh.SetFocus;
          end;
        end
        else
        begin
          if czje > 0 then
            application.MessageBox('处方已保存，你的超记金额不足, 处方未下帐!', '提示', 0 + 48)
          else
            application.MessageBox('处方未下帐!', '提示', 0 + 48);
          tmh.SetFocus;
        end;
      end;
    end;
  end;

end;


procedure Tfrm_zyyzcljf.B_FINALClick(Sender: TObject);
begin
  close;
end;

procedure Tfrm_zyyzcljf.B_giveupClick(Sender: TObject);
begin
  b_giveup.setfocus;
  tmh.text := '';
  tmh.setfocus;
end;

procedure Tfrm_zyyzcljf.datasave(tablename: string);
var r, cgje, lsje, zfje: real;
begin
  try
    if trim(pri_kdys) = '' then
    begin
      application.MessageBox('没有填入开单医生', '错误', mb_ok + mb_iconerror);
      kdys.SelectAll;
      kdys.setfocus;
      abort;
    end;
    cfmx_input.SumList.RecalcAll;
    if pub_yydm = '0271' then
      r := strtofloat(cfmx_ddyy.GetFooterValue(0, cfmx_ddyy.columns[5]))
    else
      r := strtofloat(cfmx_input.GetFooterValue(0, cfmx_input.columns[5]));
    if r > 0 then
    begin
      if ad_zycfmx.Active then
      begin
        dm_data.ado_mydata.BeginTrans;
        try
          ad_zycfmx.Filtered:=False;
          ad_zycfmx.Filter:=' ypdm='''' or ypsl<=0 ';
          ad_zycfmx.Filtered:=True;
          while not ad_zycfmx.IsEmpty do
          begin
            ad_zycfmx.Delete;
          end;
          ad_zycfmx.Filtered:=False;
          ad_zycfmx.First;
//          while not ad_zycfmx.Eof do
//          begin
//            if (trim(ad_zycfmx.fieldbyname('ypdm').asstring) = '') or (ad_zycfmx.fieldbyname('ypsl').asfloat <= 0) then
//              ad_zycfmx.delete;
//            ad_zycfmx.Next;
//          end;
          ad_zycfmx.First;
          cgje := 0;
          lsje := 0;
          zfje := 0;
          while not ad_zycfmx.Eof do
          begin
//            if (trim(ad_zycfmx.fieldbyname('ypdm').asstring) = '') or (ad_zycfmx.fieldbyname('ypsl').asfloat = 0) then
//              ad_zycfmx.delete
//            else
//            begin
              cgje := cgje + ad_zycfmx.fieldbyname('ypsl').asfloat * ad_zycfmx.fieldbyname('kccgj').asfloat * ad_zycfmx.fieldbyname('ypbzbl').asfloat;
              lsje := lsje + ad_zycfmx.fieldbyname('ypsl').asfloat * ad_zycfmx.fieldbyname('ypdj').asfloat;
              zfje := zfje + ad_zycfmx.fieldbyname('zfje').asfloat;
//              if ad_zycfmx['ypsl'] <= 0 then
//                ad_zycfmx.delete;
              ad_zycfmx.Next;
//            end;
          end;
          if not ad_zycfmx.IsEmpty then
            ad_zycfmx.UpdateBatch(arall); //西药住院处方名细处理完成

          ad_zycfzb.Close;
          ad_zycfzb.commandtext := 'select * from ' + tablename + ' where cfbh=' + #39 + xycf_bh + #39;
          ad_zycfzb.Open;
          if not ad_zycfmx.IsEmpty then
          begin
            if ad_zycfzb.isempty then
              ad_zycfzb.append
            else
              ad_zycfzb.edit;
            ad_zycfzb['tmh'] := sp_cx_zybrjbqk['tmh'];
            ad_zycfzb['zyh'] := sp_cx_zybrjbqk['zyh'];
            ad_zycfzb['cfbh'] := xycf_bh;
            ad_zycfzb['cfzje'] := realtot(lsje, 2);
            ad_zycfzb['zfzje'] := realtot(zfje, 2);
            ad_zycfzb['cgzje'] := cgje;
            ad_zycfzb['ysdm'] := pri_kdys;
            ad_zycfzb['hjczy'] := pub_czydm;
            ad_zycfzb['hjrq'] := frm_func.curr_date();
            ad_zycfzb['kdks'] := pri_kdks;
            ad_zycfzb['czks'] := pri_czks;
            ad_zycfzb['hjks'] := pub_ksdm;
            ad_zycfzb['cflb'] := 'zy';
            ad_zycfzb['pldh'] := '';
            ad_zycfzb.post;
            ad_zycfzb.UpdateBatch(arall); //西药住院处方总表处理完成
          end;
          dm_data.ado_mydata.CommitTrans;
          changedflag := false;
          zqbcbz := true;
        except
          dm_data.ado_mydata.RollbackTrans;
          Application.MessageBox('数据没有正确保存，请再次保存', '错误', MB_Ok + MB_DEFBUTTON1 + MB_ICONERROR)
        end;
      end;
    end
    else
    begin
      Application.MessageBox('空处方1', '错误', MB_Ok + MB_DEFBUTTON1 + MB_ICONERROR);
      cfmx_input.setfocus;
    end
  except
    begin
      if pub_yydm = '0271' then
      begin
        Application.MessageBox(pchar('空处方2 ' + cfmx_ddyy.GetFooterValue(0, cfmx_input.columns[5]) + ' ' + floattostr(lsje)), '错误', MB_Ok + MB_DEFBUTTON1 + MB_ICONERROR);
        cfmx_ddyy.setfocus;
      end else
      begin
        Application.MessageBox(pchar('空处方2 ' + cfmx_input.GetFooterValue(0, cfmx_input.columns[5]) + ' ' + floattostr(lsje)), '错误', MB_Ok + MB_DEFBUTTON1 + MB_ICONERROR);
        cfmx_input.setfocus;
      end;
    end
  end;
end;

procedure Tfrm_zyyzcljf.dbgrd1ColExit(Sender: TObject);
begin
  if (cfmx_input.SelectedIndex = 4) and (trim(ad_zycfmx.fieldbyname('ypmc').asstring) <> '') then
  begin
    if ad_zycfmx.fieldbyname('ypsl').asfloat <= 0 then
    begin
      cfmx_input.selectedindex := 5;
      messagedlg('材料数量不正确，请输入正确数量', mterror, [mbok], 0)
    end //首先判断材料数量为不为0 (材料库房不进行判断库存)
    else
    begin
      ad_zycfmx.append;
    end;
  end
end;

procedure Tfrm_zyyzcljf.dbgrd2DblClick(Sender: TObject);
var v_mc :string;
begin
  v_kcsl :=0;
  if sp_cx_xyjg['kcsl']>0 then
  begin
    ad_zycfmx.Append;
    ad_zycfmx['ypmc']:=sp_cx_xyjg['ypmc'];
    ad_zycfmx['ypdw']:=sp_cx_xyjg['ypdw'];
    ad_zycfmx['ypdj']:=sp_cx_xyjg['lsj'];
    ad_zycfmx['ypgg']:=sp_cx_xyjg['ypgg'];
    ad_zycfmx['ypdm']:=sp_cx_xyjg['ypdm'];
    ad_zycfmx['cfbh'] := xycf_bh;
    ad_zycfmx['ypdwid'] := sp_cx_xyjg['dwid'];
    ad_zycfmx['ypbzbl'] := sp_cx_xyjg['ypbzbl'];
    ad_zycfmx['kccgj'] := sp_cx_xyjg['kccgj'];
    ad_zycfmx['ypph'] := sp_cx_xyjg['ph'];
  //    ad_zycfmx['ypxq'] := sp_cx_xyjg['ypxq'];
  //    ad_zycfmx['rkdh']:=sp_cx_xyjg['rkdh'];
    ad_zycfmx['ypsl'] := 1 ;

    v_kcsl :=sp_cx_xyjg['kcsl'];

    if cfmx_ddyy.CanFocus then
      cfmx_ddyy.SetFocus;       //先定位到cfmx_ddyy页面上
    cfmx_ddyy.SelectedIndex := 4;   // 在定位到可以修改的数量行
  end else
  begin
    v_mc := sp_cx_xyjg.FieldByName('ypmc').AsString;
    Application.MessageBox(PChar('错误提示:'+v_mc+'库存不足，请用联系库房发放材料！'), '错误提示', 16);
    exit;
  end;
end;

procedure Tfrm_zyyzcljf.xyhjinit;
begin
  //处理西药划价计费
 //产生处方号
  pri_czks := pub_ksdm;
  sp_get_cfbh.close;
  sp_get_cfbh.ExecProc;
  xycf_bh := sp_get_cfbh.parameters.parambyname('@cfbh').value;
  cfbh.text := xycf_bh;
  qhbz := false;
  ad_zycfmx.Close;
//  ad_zycfmx.CommandText := 'select * from bqkf_zycfmx where cfbh = '''+xycf_bh+''''; 
  ad_zycfmx.Parameters.ParamByName('cfbh').value := xycf_bh;
  try
    ad_zycfmx.open; //打开处方库
  except
  end;
  if ad_zycfmx.RecordCount >0 then
  begin
    ad_zycfmx.first;
  end;
  ds_ypmc.DataSet := sp_cx_xyjg;
  if pub_yydm = '0271' then    //掇刀医院
  begin
//    cfmx_ddyy.SetFocus;
//    cfmx_ddyy.SelectedIndex := 0;
  end else
  begin
    cfmx_input.SetFocus;
    cfmx_input.SelectedIndex := 0;
  end;
end;

procedure Tfrm_zyyzcljf.tmhChange(Sender: TObject);
begin
  pri_kdys := '';
  kdys.text := '';
end;

procedure Tfrm_zyyzcljf.tmhEnter(Sender: TObject);
begin
  if ad_zycfmx.active then
     ad_zycfmx.close;
     bch.Text := '';
end;

procedure Tfrm_zyyzcljf.tmhExit(Sender: TObject);
var ls: string;
begin
  //frm_func.restorecolor(sender);
  ls := trim(tmh.text);
  if not (B_FINAL.Focused) and (LS <> '') then
  begin
    with sp_cx_zybrjbqk do
    begin
      Close;
      parameters.ParamByName('@tmh').value := trim(tmh.text);
      parameters.ParamByName('@ksdm').value := pub_ksdm;
      active := true;
    end;
    if sp_cx_zybrjbqk.isempty then
    begin
      Application.MessageBox('错误提示:没有此病人或不在本病区！', '错误提示', 16);
      tmh.setfocus;
    end
    else
      if sp_cx_zybrjbqk.recordcount > 1 then
      begin
        tempgrid1.left := tmh.left;
        tempgrid1.top := tmh.top + tmh.Height;
        tempgrid1.visible := true;
        tempgrid1.setfocus;
      end
      else
      begin
//通过主管医生，查询默认开单医生(ygycxm,06-05-12)
        if (sp_cx_zybrjbqk.FieldByName('zgys').AsString <> '') and
          (Length(trim(sp_cx_zybrjbqk.FieldByName('zgys').AsString)) = 4) then
        begin
          qry_kdys.Locate('dm', sp_cx_zybrjbqk.FieldByName('zgys').AsString, []);
          kdys.Text := qry_kdys.FieldByName('mc').AsString;
        end;
//-------------------------------------------------
        displayvalue;
      end;
  end
  else
    if (LS = '') and (not (b_final.focused or B_giveup.focused)) then
    begin
      Application.MessageBox('请输入条码号或病床号或病人姓名！', '错误', 0 + 16);
      tmh.setfocus;
    end;
end;

procedure Tfrm_zyyzcljf.tmhKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    SelectNext(activeControl, true, true) else
    if (key in ['A'..'z']) or (key in ['0'..'9']) or (ord(key) > 127) then
      ysksischange := true;
end;


procedure Tfrm_zyyzcljf.cfmx_inputKeyPress(Sender: TObject; var Key: Char);
var
  myrect: Trect;
begin
  if (key in ['A'..'z', '0'..'9']) or (ord(key) > 127) then
  begin
    cfbz := true;
    changedflag := true;
  end
  else
    if (key = ' ') and (cfmx_input.SelectedIndex = 2) then
    begin
      sp_cx_ypbz.close;
      sp_cx_ypbz.Parameters.ParamByName('@ypdm').value := ad_zycfmx['ypdm'];
      sp_cx_ypbz.Open;
      if sp_cx_ypbz.recordcount > 1 then
      begin
        ypdw_grid.visible := true;
        ypdw_grid.visible := true;
        myrect := THACKDBGRID(cfmx_input).cellrect(3, THACKDBGRID(cfmx_input).row);
        ypdw_grid.left := myrect.left;
        if myrect.Bottom + ypdw_grid.height > cfmx_input.height then
          ypdw_grid.top := myrect.top - ypdw_grid.Height
        else
          ypdw_grid.top := myrect.Bottom;
        ypdw_grid.setfocus;
      end
      else
        messagedlg('该材料只有一个包装', mtinformation, [mbok], 0);
      //处理材料单位和包装比例
    end;
  if (key = #13) and (cfmx_input.SelectedIndex = 4) then //处理数量
  begin
    CFBZ := false;
//病区库房不处理材料数量问题
{    if (ad_zycfmx.fieldbyname('ypsl').asfloat <= 0) or ((trunc(ad_zycfmx.fieldbyname('ypsl').asfloat) - ad_zycfmx.fieldbyname('ypsl').asfloat) * 1000 <> 0) then
    begin
      messagedlg('材料数量不正确，请输入正确数量', mterror, [mbok], 0);
      ad_zycfmx.edit;
      ad_zycfmx['ypsl'] := 0;
    end //首先判断材料数量为不为0
    else
      if (ad_zycfmx['ypsl'] * ad_zycfmx['ypbzbl'] > sp_cx_xyjg['zxdwsl']) and ((ad_zycfmx.State = dsedit) or (ad_zycfmx.State = dsinsert)) then
      begin
        messagedlg('材料库存数量不足', mterror, [mbok], 0);
        ad_zycfmx.edit;
        ad_zycfmx['ypsl'] := 0;
      end
      else
      begin}
    ad_zycfmx.append;
    cfmx_input.selectedindex := 0
//      end
  end
  else
    if (key = #13) and (cfmx_input.selectedfield.FieldName = 'ypmc') and (trim(ad_zycfmx.fieldbyname('ypmc').asstring) <> '') then //处理材料名称
    begin
      sp_cx_xyjg.close;
      cfbz := false;
      sp_cx_xyjg.Parameters.Refresh;
      if (trim(ad_zycfmx.fieldbyname('ypdm').asstring) = '') or (changedflag) then
        sp_cx_xyjg.Parameters.ParamByName('@pym').value := ad_zycfmx['ypmc']
      else
        sp_cx_xyjg.Parameters.ParamByName('@pym').value := ad_zycfmx['ypdm'];
      sp_cx_xyjg.Parameters.ParamByName('@ksdm').value := pub_ksdm;
      if sp_cx_xyjg.Parameters.FindParam('@wym') <> nil then
        sp_cx_xyjg.Parameters.ParamByName('@wym').value := '';
      if sp_cx_xyjg.Parameters.FindParam('@cxlb') <> nil then
        sp_cx_xyjg.Parameters.ParamByName('@cxlb').value := '1';
      if sp_cx_xyjg.Parameters.FindParam('@clfs') <> nil then
        sp_cx_xyjg.Parameters.ParamByName('@clfs').value := '1';
      sp_cx_xyjg.Open;
      changedflag := false;

      if sp_cx_xyjg.IsEmpty then
      begin
        messagedlg('材料代码输入错误 或 该材料已没有库存，请检查后重新输入！', mterror, [mbok], 0);
        cfmx_input.setfocus;
      end //材料代码查找不成功
      else
        if sp_cx_xyjg.RecordCount = 1 then
        begin
          ypdmmcprocess //查找成功
        end
        else
          if (sp_cx_xyjg.recordcount > 1) and (v_ypmc <> trim(ad_zycfmx.fieldbyname('ypmc').asstring)) then
          begin
            ypmc_grid.visible := true;
            myrect := cfmx_input.cellrect(0, cfmx_input.row);
//            ypmc_grid.left := myrect.left;
//            if myrect.Bottom + ypmc_grid.height > cfmx_input.height then
//              ypmc_grid.top := myrect.top - ypmc_grid.Height
//            else
//              ypmc_grid.top := myrect.Bottom;
            panel2.enabled := true;
            czwcg := false;
            ypmc_grid.setfocus;
          end; //查找成功但个数大于一
    end
    else
      if (key = #13) and (cfmx_input.selectedindex = 2) then
      begin
        cfmx_input.selectedindex := 4;
        cfbz := false;
      end;
end;



procedure Tfrm_zyyzcljf.ysprocess(tempedit: Tedit; var pri_var: string);
begin
  sp_cx_czyks.Close;
  sp_cx_czyks.commandtext := 'select a.dm,a.mc,a.pym,a.ksdm,b.mc ksmc,a.zcdm,c.mc zcmc ' +
    ' from sys_czy a,sys_ksdm b,sys_zcdm c ' +
    ' where a.ksdm=b.dm and a.zcdm=c.dm and ' +
    ' a.ysbz=1 and cfbz=1 and ' +
    ' (a.pym like ' + #39 + '%' + trim(tempedit.Text) + '%' + #39 +
    ' or a.mc like ' + #39 + '%' + trim(tempedit.Text) + '%' + #39 + ')';
  sp_cx_czyks.Open;
  ysksischange := false;
  if sp_cx_czyks.IsEmpty then
  begin
    application.MessageBox('医生代码输入错误或没有处方权，请重新输入', '错误', mb_ok + mb_iconerror);
    tempedit.Clear;
    tempedit.setfocus;
  end
  else
    if sp_cx_czyks.recordcount > 1 then
    begin
      ksys_grid.Columns.Clear;
      ksys_grid.Columns.add;
      ksys_grid.Columns[0].field := sp_cx_czyks.fieldlist[0];
      ksys_grid.Columns[0].title.caption := '代码';
      ksys_grid.Columns.add;
      ksys_grid.Columns[1].field := sp_cx_czyks.fieldlist[1];
      ksys_grid.Columns[1].title.caption := '姓名';
      ksys_grid.Columns.add;
      ksys_grid.Columns[2].field := sp_cx_czyks.fieldlist[2];
      ksys_grid.Columns[2].title.caption := '拼音缩写';
      ksys_grid.left := tempedit.left;
      ksys_grid.top := tempedit.top + tempedit.Height;
      ksys_grid.visible := true;
      ksys_grid.setfocus;
    end
    else
      if sp_cx_czyks.recordcount = 1 then
      begin
        kdyskdks(tempedit, pri_var)
      end
end;


procedure Tfrm_zyyzcljf.kdyskdks(cledit: Tedit; var dm: string);
begin
  cledit.text := sp_cx_czyks['mc'];
  dm := sp_cx_czyks['dm'];
  cfmx_input.SetFocus;
  ksys_grid.visible := false;
end;

procedure Tfrm_zyyzcljf.KDYSKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    SelectNext(activeControl, true, true) else
    if (key in ['A'..'z']) or (key in ['0'..'9']) or (ord(key) > 127) then
      ysksischange := true;
end;

procedure Tfrm_zyyzcljf.ksys_gridExit(Sender: TObject);
begin
  if ksys_grid.left = kdys.left then
    kdyskdks(kdys, pri_kdys)
end;

procedure Tfrm_zyyzcljf.ksys_gridKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    SelectNext(activeControl, true, true) else
    if (key in ['A'..'z']) or (key in ['0'..'9']) or (ord(key) > 127) then
      ysksischange := true;
end;

procedure Tfrm_zyyzcljf.SBt_wjfClick(Sender: TObject);
begin
  application.CreateForm(Tfrm_clhj_wjf, frm_clhj_wjf);
  try
    frm_clhj_wjf.Proc_tmh(tmh.Text);
    frm_clhj_wjf.ShowModal;
  finally
    frm_clhj_wjf.Free;
  end;
end;

end.
