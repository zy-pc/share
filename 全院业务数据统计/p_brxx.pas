unit p_brxx;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, StdCtrls, cxControls, cxContainer, cxEdit,
  cxLabel, cxDBLabel, Menus, cxLookAndFeelPainters, cxButtons, Grids, DBGrids,
  cxPC, Mask, DBCtrlsEh, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  RzDTP, RzDBEdit, RzEdit, cxDBEdit, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, DB, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, ADODB, RzButton, ImgList, ToolWin, PrnDbgeh,PrViewEh, Printers,
  DBGridEhGrouping, GridsEh, DBGridEh;

type
  Tfrm_brxx = class(TForm)
    stat1: TStatusBar;
    Panel1: TPanel;
    GridPanel1: TGridPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;
    Panel11: TPanel;
    Panel12: TPanel;
    Panel13: TPanel;
    Panel14: TPanel;
    Panel15: TPanel;
    Panel16: TPanel;
    Panel17: TPanel;
    Panel18: TPanel;
    Panel19: TPanel;
    Panel20: TPanel;
    Panel21: TPanel;
    Panel22: TPanel;
    Panel23: TPanel;
    Panel24: TPanel;
    Panel25: TPanel;
    Panel26: TPanel;
    Panel27: TPanel;
    Panel28: TPanel;
    Panel29: TPanel;
    Panel30: TPanel;
    Panel31: TPanel;
    Panel32: TPanel;
    Panel33: TPanel;
    Panel34: TPanel;
    Panel35: TPanel;
    Panel36: TPanel;
    Panel37: TPanel;
    Panel38: TPanel;
    Panel39: TPanel;
    Panel40: TPanel;
    Panel41: TPanel;
    Panel42: TPanel;
    Panel43: TPanel;
    Panel44: TPanel;
    Panel45: TPanel;
    lbl1: TLabel;
    lbl2: TLabel;
    cxdblbl_zlkh: TcxDBLabel;
    cxdblbl_zljl: TcxDBLabel;
    cxdblbl_zyh: TcxDBLabel;
    cxdblbl_lsh: TcxDBLabel;
    cxdblbl_xm: TcxDBLabel;
    cxdblbl_fylb: TcxDBLabel;
    cxdblbl_dwmc: TcxDBLabel;
    cxdblbl_rysj: TcxDBLabel;
    cxdblbl_zyts: TcxDBLabel;
    cxdblbl_ryzd: TcxDBLabel;
    cxdblbl_cyzd: TcxDBLabel;
    cxdblbl_zfy: TcxDBLabel;
    cxdblbl_dqfy: TcxDBLabel;
    cxdblbl_yqfy: TcxDBLabel;
    cxdblbl_qzrq: TcxDBLabel;
    cxdblbl_ysk: TcxDBLabel;
    cxdblbl_ybtc: TcxDBLabel;
    cxdblbl_ybkh: TcxDBLabel;
    cxdblbl_tzxx: TcxDBLabel;
    cxdblbl_bz: TcxDBLabel;
    cxdblbl_xb: TcxDBLabel;
    cxdblbl_nl: TcxDBLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    cxdblbl_zf: TcxDBLabel;
    cxdblbl_dj: TcxDBLabel;
    cxdblbl_cs: TcxDBLabel;
    Panel48: TPanel;
    Panel50: TPanel;
    Panel49: TPanel;
    cxPageControl1: TcxPageControl;
    cxtbsht1: TcxTabSheet;
    cxtbsht2: TcxTabSheet;
    cxtbsht3: TcxTabSheet;
    Panel52: TPanel;
    Panel47: TPanel;
    rb2: TRadioButton;
    rb1: TRadioButton;
    Panel46: TPanel;
    btn_sx: TcxButton;
    btn_dc: TcxButton;
    btn_dy: TcxButton;
    btn_tc: TcxButton;
    Panel53: TPanel;
    Panel54: TPanel;
    Panel55: TPanel;
    Panel58: TPanel;
    lbl6: TLabel;
    lbl7: TLabel;
    btn_4: TcxButton;
    btn_5: TcxButton;
    lbl8: TLabel;
    lbl9: TLabel;
    edt1: TDBDateTimeEditEh;
    edt2: TDBDateTimeEditEh;
    edt3: TDBDateTimeEditEh;
    edt4: TDBDateTimeEditEh;
    cxdblbl_rycs: TcxDBLabel;
    qry_sj: TADOQuery;
    cxdblbl_jy: TcxDBLabel;
    il1: TImageList;
    RzToolButton1: TRzToolButton;
    btn_dyyl: TcxButton;
    dbgrdh_mzbrlb: TDBGridEh;
    dbgrdh_cfyz: TDBGridEh;
    sp_cybrlb: TADOStoredProc;
    sp_brzlxx: TADOStoredProc;
    ds_cybrlb: TDataSource;
    dbgrdh_cybrlb: TDBGridEh;
    qrybbl: TADOQuery;
    sp_mzbrlb: TADOStoredProc;
    ds_mzbrlb: TDataSource;
    ds_brjbxx: TDataSource;
    lbl10: TLabel;
    lbl11: TLabel;
    lbl12: TLabel;
    lbl13: TLabel;
    cxdblbl1: TcxDBLabel;
    dy: TPrintDBGridEh;
    dlgSave1: TSaveDialog;
    chk1: TCheckBox;
    sp_yz: TADOStoredProc;
    ds_yz: TDataSource;
    pm1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    Panel51: TPanel;
    Panel56: TPanel;
    dbgrd1: TDBGrid;
    dbgrd2: TDBGrid;
    qry_ks_br: TADOQuery;
    ds_ks_br: TDataSource;
    ds_ch: TDataSource;
    sp_ch: TADOStoredProc;
    Panel57: TPanel;
    lbl15: TLabel;
    Panel59: TPanel;
    lbl14: TLabel;
    procedure btn_tcClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn_dyylClick(Sender: TObject);
    procedure btn_dyClick(Sender: TObject);
    procedure cxtbsht3Show(Sender: TObject);
    procedure cxtbsht2Show(Sender: TObject);
    procedure cxtbsht1Show(Sender: TObject);
    procedure btn_5Click(Sender: TObject);
    procedure btn_4Click(Sender: TObject);
    procedure dbgrdh_cybrlbDblClick(Sender: TObject);
    procedure dbgrdh_mzbrlbDblClick(Sender: TObject);
    procedure btn_dcClick(Sender: TObject);
    procedure lbl14Click(Sender: TObject);
    procedure lbl15Click(Sender: TObject);
    procedure dbgrd2DblClick(Sender: TObject);
    procedure dbgrd2KeyPress(Sender: TObject; var Key: Char);
    procedure dbgrd1DblClick(Sender: TObject);
    procedure dbgrd1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure szdy;      //设置打印
    procedure brxxcx(zyh:String);//病人信息查询

  end;

var
  frm_brxx: Tfrm_brxx;
  xh:Integer;//打印序号 1明细 2门诊 3 离院  

implementation

{$R *.dfm}
 uses
 p_dm,p_main,HmExcel;

 procedure Tfrm_brxx.brxxcx(zyh: string);
 begin
    sp_brzlxx.Close;
    sp_brzlxx.Parameters.ParamByName('@zyh').Value:=zyh;
    sp_brzlxx.Parameters.ParamByName('@sjbh').Value:='';
    sp_brzlxx.Parameters.ParamByName('@tmh').Value:='';
    sp_brzlxx.Parameters.ParamByName('@lb').Value:=2;
    sp_brzlxx.Open;
    if sp_brzlxx.RecordCount=0 then
    begin
      ShowMessage('没有病人资料数据');
    end else begin
      lbl14.Caption:=Trim(sp_brzlxx.FieldByName('dqbq').value);
      lbl15.Caption:=Trim(sp_brzlxx.FieldByName('bch').value);
      if Trim(sp_brzlxx.FieldByName('bch').value)='' then
        lbl2.Caption:='（离床）';
    end;
    sp_yz.Close;
    sp_yz.Parameters.ParamByName('@zyh').Value:=zyh;
    sp_yz.Open;
    cxtbsht1Show(nil);
    if sp_yz.RecordCount=0 then
      ShowMessage('没有明细数据')
    else
    begin
      cxPageControl1.ActivePage:=cxtbsht1;

    end;
 end;
procedure Tfrm_brxx.szdy;
begin
  case xh of
    1:
    begin
      dy.DBGridEh:=dbgrdh_cfyz;
    end;
    2:
    begin
      dy.DBGridEh:=dbgrdh_mzbrlb;
    end;
    3:
    begin
      dy.DBGridEh:=dbgrdh_cybrlb;
    end;
  end;
end;
procedure Tfrm_brxx.btn_4Click(Sender: TObject);
begin   //门诊病人     EXEC [zdybb_brsftj_kxlb] '2013-11-11','2017-12-12','',1,0
  cxtbsht2Show(nil);
  if (edt1.Text='    -  -  ') or (edt2.Text='    -  -  ') then
  begin
    ShowMessage('请选择时间，时间段不能为空！');
    abort;
  end;
  sp_mzbrlb.Close;
  sp_mzbrlb.Parameters.ParamByName('@ksrq').Value:=StrToDate(edt1.text);
  sp_mzbrlb.Parameters.ParamByName('@jsrq').Value:=StrToDate(edt2.text);
  sp_mzbrlb.Parameters.ParamByName('@sfxz').Value:='';
  sp_mzbrlb.Parameters.ParamByName('@mzzy').Value:=1;
  sp_mzbrlb.Parameters.ParamByName('@mxhz').Value:=0;
  sp_mzbrlb.Open;
end;

procedure Tfrm_brxx.btn_5Click(Sender: TObject);
begin   //出院病人     EXEC [zdybb_brsftj_kxlb] '2013-11-11','2017-12-12','',2,0
  cxtbsht3Show(nil);
  if (edt3.Text='    -  -  ') or (edt4.Text='    -  -  ') then
  begin
    ShowMessage('请选择时间，时间段不能为空！');
    Abort;
  end;
  sp_cybrlb.Close;
  sp_cybrlb.Parameters.ParamByName('@ksrq').Value:=StrToDate(edt3.text);
  sp_cybrlb.Parameters.ParamByName('@jsrq').Value:=StrToDate(edt4.text);
  sp_cybrlb.Parameters.ParamByName('@sfxz').Value:='';
  sp_cybrlb.Parameters.ParamByName('@mzzy').Value:=2;
  sp_cybrlb.Parameters.ParamByName('@mxhz').Value:=0;
  sp_cybrlb.Open;
end;

procedure Tfrm_brxx.btn_dcClick(Sender: TObject);
var
  sd: TSaveDialog;
begin
  sd := TSaveDialog.Create(nil);
  try
    sd.Filter := '*.xls|*.xls';
    sd.fileName := '.xls';
    if sd.Execute then
    begin
      Screen.Cursor := crSQLWait;
      try
        case xh of
          1:
          begin
            ExpToExcel(dbgrdh_cfyz,' ',' ',sd.fileName)
          end;
          2:
          begin
            ExpToExcel(dbgrdh_mzbrlb,' ',' ',sd.fileName)
          end;
          3:
          begin
            ExpToExcel(dbgrdh_cybrlb,' ',' ',sd.fileName)
          end;
        end;
        ShowMessage('导出成功');
      finally
        Screen.Cursor := crDefault;
      end;
    end;
  finally
    sd.Free;
  end;
end;

procedure Tfrm_brxx.btn_dyClick(Sender: TObject);
begin
  szdy;
  if rb1.Checked then
  begin
     printer.Orientation := poLandscape;
  end else
    printer.Orientation := poPortrait;
  if  chk1.Checked   then
  begin
    dy.Options:=[pghFitGridToPageWidth,pghColored,pghRowAutoStretch,pghOptimalColWidths];
  end else
  dy.Options:=[];
  dy.Print;
end;

procedure Tfrm_brxx.btn_dyylClick(Sender: TObject);
begin
  szdy;
  if rb1.Checked then
  begin
     PrinterPreview.Orientation := poLandscape;
  end else
    PrinterPreview.Orientation := poPortrait;
  if  chk1.Checked   then
  begin
    dy.Options:=[pghFitGridToPageWidth,pghColored,pghRowAutoStretch,pghOptimalColWidths];
  end   
   else
  dy.Options:=[];
  dy.Preview;
end;

procedure Tfrm_brxx.btn_tcClick(Sender: TObject);
begin
 close;
end;


procedure Tfrm_brxx.cxtbsht1Show(Sender: TObject);
var btl:string;
  vCol : TColumnEh;
  i:integer;
begin
 xh:=1;
 if (sp_brzlxx.active) and (sp_brzlxx.RecordCount>0) and (sp_yz.active) and(sp_yz.RecordCount>0) then
 begin
  btl:='姓名: '+sp_brzlxx.FieldByName('brxm').Value+ '  '+
       '住院号：'+sp_brzlxx.FieldByName('tmh').Value+'  '+
       '医保卡号：'+sp_brzlxx.FieldByName('ybkh').Value+ '  '+
       '打印日期：'+FormatDateTime('yyyy年mm月dd日',now());

 end else
 btl:='姓名:  住院号： 医保卡号： 打印日期：';
 qrybbl.Close;
 qrybbl.SQL.Text:='SELECT bbid,bbmc+''|'+btl+'|''+zdzwmc AS zwmc,zdmc,* FROM  qy_xxcx_sz WHERE bbid=100';
 qrybbl.Open;
 dbgrdh_cfyz.Columns.Clear;
 while not qrybbl.Eof do
  begin
    vCol := dbgrdh_cfyz.Columns.Add;
    vCol.Title.Caption :=trim(qrybbl.FieldByName('zwmc').Value);
    vCol.FieldName := trim(qrybbl.FieldByName('zdmc').Value);
    qrybbl.Next;
  end;
  for I := 0 to dbgrdh_cfyz.Columns.Count - 1 do
  begin
     dbgrdh_cfyz.Columns[i].Title.Font.Size:=10;
     dbgrdh_cfyz.Columns[i].Title.Font.Style:=[];
     dbgrdh_cfyz.Columns[i].Title.Font.Color:=clGreen;
  end;
end;

procedure Tfrm_brxx.cxtbsht2Show(Sender: TObject);
var dysj:string;
  vCol : TColumnEh;
  i:integer;
begin
 xh:=2;
 dysj:='日期: '+edt1.Text+' 至 '+edt2.Text;
 qrybbl.Close;
 qrybbl.SQL.Text:='SELECT bbid,bbmc+''|'+dysj+'|''+zdzwmc AS zwmc,zdmc,* FROM  qy_xxcx_sz WHERE bbid=101';
 qrybbl.Open;
 dbgrdh_mzbrlb.Columns.Clear;
 while not qrybbl.Eof do
  begin
    vCol := dbgrdh_mzbrlb.Columns.Add;
    vCol.Title.Caption :=trim(qrybbl.FieldByName('zwmc').Value);
    vCol.FieldName := trim(qrybbl.FieldByName('zdmc').Value);
    qrybbl.Next;
  end;
  for I := 0 to dbgrdh_mzbrlb.Columns.Count - 1 do
  begin
     dbgrdh_mzbrlb.Columns[i].Title.Font.Size:=10;
     dbgrdh_mzbrlb.Columns[i].Title.Font.Style:=[];
     dbgrdh_mzbrlb.Columns[i].Title.Font.Color:=clGreen;
  end;
end;

procedure Tfrm_brxx.cxtbsht3Show(Sender: TObject);
var dysj:string;
  vCol : TColumnEh;
  i:integer;
begin
 xh:=3;
 dysj:='日期: '+edt3.Text+' 至 '+edt4.Text;
 qrybbl.Close;
 qrybbl.SQL.Text:='SELECT bbid,bbmc+''|'+dysj+'|''+zdzwmc AS zwmc,zdmc,* FROM  qy_xxcx_sz WHERE bbid=102';
 qrybbl.Open;
 dbgrdh_cybrlb.Columns.Clear;
 while not qrybbl.Eof do
  begin
    vCol := dbgrdh_cybrlb.Columns.Add;
    vCol.Title.Caption :=trim(qrybbl.FieldByName('zwmc').Value);
    vCol.FieldName := trim(qrybbl.FieldByName('zdmc').Value);
    qrybbl.Next;
  end;
  for I := 0 to dbgrdh_cybrlb.Columns.Count - 1 do
  begin
     dbgrdh_cybrlb.Columns[i].Title.Font.Size:=10;
     dbgrdh_cybrlb.Columns[i].Title.Font.Style:=[];
     dbgrdh_cybrlb.Columns[i].Title.Font.Color:=clGreen;
  end;
end;

procedure Tfrm_brxx.dbgrd1DblClick(Sender: TObject);
begin
    lbl15.Caption:=Trim(sp_ch.FieldByName('bch').value);
    Panel56.Visible:=false;
    brxxcx(Trim(sp_ch.FieldByName('zyh').value));
end;

procedure Tfrm_brxx.dbgrd1KeyPress(Sender: TObject; var Key: Char);
begin
  if  Key=#13 then
  begin
    lbl14.Caption:=Trim(sp_ch.FieldByName('bch').value);
    Panel56.Visible:=false;
    brxxcx(Trim(sp_ch.FieldByName('zyh').value));
  end;
end;

procedure Tfrm_brxx.dbgrd2DblClick(Sender: TObject);
begin
    lbl14.Caption:=Trim(qry_ks_br.FieldByName('ksmc').value);
    Panel51.Visible:=false;
end;

procedure Tfrm_brxx.dbgrd2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    lbl14.Caption:=Trim(qry_ks_br.FieldByName('ksmc').value);
    Panel51.Visible:=false;
  end;
end;

procedure Tfrm_brxx.dbgrdh_cybrlbDblClick(Sender: TObject);
begin
  if  (sp_cybrlb.Active) and (sp_cybrlb.RecordCount>0) then
  begin
    sp_brzlxx.Close;
    sp_brzlxx.Parameters.ParamByName('@zyh').Value:=sp_cybrlb.FieldByName('zyh').Value;
    sp_brzlxx.Parameters.ParamByName('@sjbh').Value:='';
    sp_brzlxx.Parameters.ParamByName('@tmh').Value:='';
    sp_brzlxx.Parameters.ParamByName('@lb').Value:=2;
    sp_brzlxx.Open;
    if sp_brzlxx.RecordCount=0 then
    begin
      ShowMessage('没有病人资料数据');
    end else
    begin
      lbl14.Caption:=Trim(sp_brzlxx.FieldByName('dqbq').value);
      lbl15.Caption:=Trim(sp_brzlxx.FieldByName('bch').value);
      if Trim(sp_brzlxx.FieldByName('bch').value)='' then
        lbl2.Caption:='（离床）';
    end;

    sp_yz.Close;
    sp_yz.Parameters.ParamByName('@zyh').Value:=sp_cybrlb.FieldByName('zyh').Value;
    sp_yz.Open;
    if sp_yz.RecordCount=0 then
      ShowMessage('没有明细数据')
    else
    begin
      cxPageControl1.ActivePage:=cxtbsht1;
    end;
  end;
end;

procedure Tfrm_brxx.dbgrdh_mzbrlbDblClick(Sender: TObject);
begin
  if (sp_mzbrlb.Active) and (sp_mzbrlb.RecordCount>0) then
  begin
    sp_brzlxx.Close;
    sp_brzlxx.Parameters.ParamByName('@zyh').Value:='';
    sp_brzlxx.Parameters.ParamByName('@sjbh').Value:=sp_mzbrlb.FieldByName('sjbh').Value;
    sp_brzlxx.Parameters.ParamByName('@tmh').Value:=sp_mzbrlb.FieldByName('tmh').Value;
    sp_brzlxx.Parameters.ParamByName('@lb').Value:=1;
    sp_brzlxx.Open;
    if sp_brzlxx.RecordCount=0 then
    Abort;
    if Trim(sp_brzlxx.FieldByName('bch').value)='' then
     lbl2.Caption:='（离床）';
  end;
end;

procedure Tfrm_brxx.FormShow(Sender: TObject);
begin
  xh:=0;
  qry_sj.Close;
  qry_sj.Open;
  stat1.Panels[0].text:=Trim(qry_sj.FieldByName('sj').value);
  stat1.Panels[1].text:='工作组：'+Trim(pub_ksmc);
  stat1.Panels[2].text:='用户管理员：'+Trim(pub_czyxm);
  edt1.text:=FormatDateTime('yyyy-mm-dd',now());
  edt2.text:=FormatDateTime('yyyy-mm-dd',now());
  edt3.text:=FormatDateTime('yyyy-mm-dd',now());
  edt4.text:=FormatDateTime('yyyy-mm-dd',now());
end;

procedure Tfrm_brxx.lbl14Click(Sender: TObject);
begin
   qry_ks_br.Close;
  qry_ks_br.SQL.text:='select dm,mc ksmc from sys_ksdm where kssx=9';
  qry_ks_br.Open;
  Panel51.Visible:=True;
  Panel56.Visible:=false;
end;

procedure Tfrm_brxx.lbl15Click(Sender: TObject);
begin
  if lbl14.Caption<>'<病区选择>'then
  begin
    qry_ks_br.Filtered:=false;
    qry_ks_br.Filter:='ksmc='''+trim(lbl14.Caption)+'''';
    qry_ks_br.Filtered:=True;
    sp_ch.Close;
    sp_ch.Parameters.ParamByName('@ksdm').value:=qry_ks_br.FieldByName('dm').Value;
    sp_ch.Open;
    if sp_ch.RecordCount>0 then
    begin
      Panel56.Visible:=True;
      Panel51.Visible:=false;

    end else
    ShowMessage('当前科室没有信息');

    qry_ks_br.Filtered:=false;
    qry_ks_br.Filter:='';
  end else
  begin
    ShowMessage('请选择科室！');
  end;
end;

end.
