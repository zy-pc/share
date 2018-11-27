unit p_qyxzbr;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, StdCtrls, cxButtons, ExtCtrls, DBCtrls,
  Mask, DBCtrlsEh, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, ADODB, ComCtrls, cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxDBEdit, DBGridEhGrouping, GridsEh, DBGridEh, PrnDbgeh,PrViewEh, Printers, EhLibBDE,DBGridEhImpExp,
  OleServer, ExcelXP, OleCtrls, grproLib_TLB,cxExportGrid4Link,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGridCustomPopupMenu,
  cxGridPopupMenu;//cxGridExportLink 新版本 引用 ExportGridToExcel

type
  Tfrm_qyxzbr = class(TForm)
    Panel52: TPanel;
    Panel46: TPanel;
    btn_sx: TcxButton;
    btn_dc: TcxButton;
    btn_dyyl: TcxButton;
    btn_tc: TcxButton;
    Panel53: TPanel;
    Panel47: TPanel;
    rb2: TRadioButton;
    rb1: TRadioButton;
    lbl1: TLabel;
    Panel1: TPanel;
    lbl8: TLabel;
    lbl9: TLabel;
    edt3: TDBDateTimeEditEh;
    edt4: TDBDateTimeEditEh;
    Panel2: TPanel;
    lbl2: TLabel;
    Panel3: TPanel;
    rb3: TRadioButton;
    rb4: TRadioButton;
    Panel4: TPanel;
    rb5: TRadioButton;
    rb6: TRadioButton;
    stat1: TStatusBar;
    qry_sj: TADOQuery;
    qry_comboxxx: TADOQuery;
    ds_comboxxx: TDataSource;
    dblkcbb1: TDBLookupComboBox;
    dbgrdh_qyxzbr: TDBGridEh;
    dy: TPrintDBGridEh;
    btn_dy: TcxButton;
    Panel5: TPanel;
    chk1: TCheckBox;
    Panel6: TPanel;
    chk2: TCheckBox;
    dlgSave1: TSaveDialog;
    sp_qyxzbr: TADOStoredProc;
    ds_qyxzbr: TDataSource;
    lbl3: TLabel;
    Panel7: TPanel;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyleRepository2: TcxStyleRepository;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxStyleRepository3: TcxStyleRepository;
    cxStyle5: TcxStyle;
    qry_xxsz: TADOQuery;
    rb7: TRadioButton;
    chk3: TCheckBox;
    procedure FormShow(Sender: TObject);
    procedure btn_dyylClick(Sender: TObject);
    procedure btn_dyClick(Sender: TObject);
    procedure chk2Click(Sender: TObject);
    procedure btn_dcClick(Sender: TObject);
    procedure btn_tcClick(Sender: TObject);
    procedure btn_sxClick(Sender: TObject);
    procedure chk3Click(Sender: TObject);

  private
    { Private declarations }
  public
    procedure cksz; //窗口设置
    procedure gcgx(gcmc:String); //过程更新
    procedure ckkjkg_zt;//窗体控制状态开闭
    { Public declarations }
  end;

var
  frm_qyxzbr: Tfrm_qyxzbr;
  ckbh:Integer;  //窗口编号 分别对应 从1 开始
  dysj:string;
  tjsx:integer;

implementation
{$R *.dfm}
  uses
 p_dm,p_main,HmExcel;
procedure Tfrm_qyxzbr.ckkjkg_zt;
begin
  if not Panel1.Enabled then
  begin
     edt3.Enabled:=False;
     edt4.Enabled:=False;
  end;
  if not Panel47.Enabled then
  begin
    rb1.Enabled:=False;
    rb2.Enabled:=False;
  end;
  if not Panel2.Enabled then
  begin
    dblkcbb1.Enabled:=False;
    chk3.Enabled:=False;
  end;
  if not Panel3.Enabled then
  begin
    rb3.Enabled:=False;
    rb4.Enabled:=False;
    rb7.Enabled:=False;
  end;
  if not Panel4.Enabled then
  begin
    rb5.Enabled:=False;
    rb6.Enabled:=False;
  end;
end;


procedure Tfrm_qyxzbr.btn_dcClick(Sender: TObject);
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
          if  ExpToExcel(dbgrdh_qyxzbr,' ',' ',sd.fileName) then
            ShowMessage('导出成功');
      finally
        Screen.Cursor := crDefault;
      end;
    end;
  finally
    sd.Free;
  end;
end;

procedure Tfrm_qyxzbr.btn_dyClick(Sender: TObject);
begin
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

procedure Tfrm_qyxzbr.btn_dyylClick(Sender: TObject);
begin
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

procedure Tfrm_qyxzbr.btn_sxClick(Sender: TObject);
begin

  if Panel1.Enabled then
  begin
      if ckbh=14 then
      begin
         if (edt3.Text='    -  -  ') then
           ShowMessage('请选择时间，时间不能为空！');
      end else
      if (edt3.Text='    -  -  ') or (edt4.Text='    -  -  ') then
      begin
        ShowMessage('请选择时间，时间段不能为空！');
      end;
  end;
  if Panel2.Enabled then
  begin
    if (dblkcbb1.Text='') and (not chk3.Checked) then
    begin
       ShowMessage('请选择查询项！');
       Abort;
    end;
  end;
  FormShow(btn_sx);
end;

procedure Tfrm_qyxzbr.btn_tcClick(Sender: TObject);
begin
  Close;  
end;

procedure Tfrm_qyxzbr.chk2Click(Sender: TObject);
begin
 if chk2.Checked then
 begin
   dbgrdh_qyxzbr.Options:=[dgTitles,dgIndicator,dgColumnResize,dgColLines,dgRowLines,dgTabs,dgRowSelect,dgConfirmDelete,dgCancelOnExit,dgMultiSelect];
 end else
 begin
   dbgrdh_qyxzbr.Options:=[dgTitles,dgIndicator,dgColumnResize,dgColLines,dgRowLines,dgTabs,dgRowSelect,dgConfirmDelete,dgCancelOnExit];
 end;
end;

procedure Tfrm_qyxzbr.chk3Click(Sender: TObject);
begin
  if chk3.Checked then
   dblkcbb1.Enabled:=False
  else
   dblkcbb1.Enabled:=True;
end;

procedure Tfrm_qyxzbr.FormShow(Sender: TObject);
var Col:TColumnEh;
begin
  qry_sj.Close;
  qry_sj.Open;
  stat1.Panels[0].text:=Trim(qry_sj.FieldByName('sj').value);
  stat1.Panels[1].text:='工作组：'+Trim(pub_ksmc);
  stat1.Panels[2].text:='用户管理员：'+Trim(pub_czyxm);
  qry_comboxxx.close;
  if ckbh=16 then
  begin
    lbl2.Caption:='选择身份：';
    chk3.Visible:=True;
    qry_comboxxx.sql.text:='SELECT * FROM sys_fylb WHERE dymzsjbz=1 or dyzysjbz=1';
  end else
  if ckbh=24 then
  begin
    qry_comboxxx.sql.text:='select * from sys_ksdm where kslb=''03''';
  end else
    qry_comboxxx.sql.text:='select * from sys_ksdm where kssx=9';
  if ckbh=22 then
  begin
    rb6.Caption:='科室';
    rb5.Caption:='医生';
  end;
  qry_comboxxx.Open;
  dbgrdh_qyxzbr.UseMultiTitle:=True;
  try
    cksz;   //传入窗口编号 进行不同设置
  except;
    ShowMessage('获取数据失败！');
  end;
  ckkjkg_zt;
end;
procedure Tfrm_qyxzbr.gcgx(gcmc:String);
var
  vCol : TColumnEh;
  I:Integer;
  xz:string;
begin
    qry_xxsz.Close;
    if Panel1.Enabled then
    begin
        dysj:='日期: '+edt3.Text+' 至 '+edt4.Text;
        if Panel3.Enabled then
        begin
          case tjsx of
            0:begin  xz:='(全院)';  end;
            1:begin  xz:='(门诊)';  end;
            2:begin  xz:='(住院)';  end;
          end;
          if ckbh=16 then
          begin
            if rb6.Checked then
             xz:='汇总'+xz
            else if rb5.Checked then
             xz:='明细'+xz;
          end;
          if ckbh=22 then
          begin
            if rb6.Checked then
             xz:='科室'+xz
            else if rb5.Checked then
             xz:='医生'+xz;
          end;
          qry_xxsz.SQL.Text:='SELECT bbid,bbmc+'''+xz+'''+''|'+dysj+'|''+zdzwmc AS zwmc,zdmc,* FROM  qy_xxcx_sz WHERE bbid='+inttostr(ckbh);
        end else
        begin
          if (ckbh=13) or (ckbh=12) then
              dysj:=dysj+'          （注：中药处方及中药使用率的统计不包含“中药颗粒”；基药比=基药总金额/药品收入）';
          if (ckbh=6) or (ckbh=7) or (ckbh=8)then
              dysj:=dysj+'          注：不统计留观病人';
          if (ckbh=9) or (ckbh=10) then
               dysj:=dysj+'          注：同一病人，同一医生，同一天只算一个诊疗人数。';

          if ckbh=14 then    
          if (sp_qyxzbr.Active) and (sp_qyxzbr.RecordCount>0) then
              dysj:='日期: '+edt3.Text+'    原有人数:'+sp_qyxzbr.FieldByName('yyrs').value+'  '
                +'入院人数:'+sp_qyxzbr.FieldByName('ryrs').value+'  '
                +'他科转入:'+sp_qyxzbr.FieldByName('zcks').value+'  '
                +'当日出院人数:'+sp_qyxzbr.FieldByName('cyrs').value+'  '
                +'当日死亡人数:'+sp_qyxzbr.FieldByName('swrs').value+'  '
                +'当日24H内死亡:'+sp_qyxzbr.FieldByName('swrs1').value+'  '
                +'转入他科:'+sp_qyxzbr.FieldByName('zrks').value+'  '
                +'现有人数:'+sp_qyxzbr.FieldByName('dqzyrs').value;
           qry_xxsz.SQL.Text:='SELECT bbid,bbmc+''|'+dysj+'|''+zdzwmc AS zwmc,zdmc,* FROM  qy_xxcx_sz WHERE bbid='+inttostr(ckbh);
        end;
    end else
    begin
        qry_xxsz.SQL.Text:='SELECT bbid,bbmc+''|''+zdzwmc AS zwmc,zdmc,* FROM  qy_xxcx_sz WHERE bbid='+inttostr(ckbh);
    end;
    qry_xxsz.Open;
    qry_xxsz.First;
    dbgrdh_qyxzbr.Columns.Clear;
    if (ckbh=16) or (ckbh=22) then
    begin
     qry_xxsz.Filtered:=false;
     if rb6.Checked then
      qry_xxsz.Filter:='bz=1'
     else if rb5.Checked then
     qry_xxsz.Filter:='bz=2';
     
     qry_xxsz.Filtered:=True;
    end;
    while not qry_xxsz.Eof do
    begin
      vCol := dbgrdh_qyxzbr.Columns.Add;
      vCol.Title.Caption :=trim(qry_xxsz.FieldByName('zwmc').Value);
      vCol.FieldName := trim(qry_xxsz.FieldByName('zdmc').Value);
      qry_xxsz.Next;
    end;
    for I := 0 to dbgrdh_qyxzbr.Columns.Count - 1 do
    begin
       dbgrdh_qyxzbr.Columns[i].Title.Font.Size:=10;
       dbgrdh_qyxzbr.Columns[i].Title.Font.Style:=[];
       dbgrdh_qyxzbr.Columns[i].Title.Font.Color:=clGreen;
    end;
  sp_qyxzbr.Close;
  sp_qyxzbr.ProcedureName:=gcmc;
  sp_qyxzbr.Parameters.Refresh;
end;

procedure Tfrm_qyxzbr.cksz;
var kssj,jssj:TDateTime;
    i:Integer;
begin
  if (ckbh=24) or (ckbh=22) or(ckbh=11) then
  begin
    rb7.Visible:=true;
  end;
  case ckbh of
    2:
    begin
      Panel1.Enabled:=false;
      Panel2.Enabled:=False;
      Panel3.Enabled:=False;
      Panel4.Enabled:=False;
      gcgx('zdybb_qyxzbr');
      sp_qyxzbr.open;

    end;
    3:
    begin
      Panel1.Enabled:=false;
      Panel2.Enabled:=False;
      Panel3.Enabled:=False;
      Panel4.Enabled:=False;
      gcgx('zdybb_xzbrqfqk');
      sp_qyxzbr.open;

    end;
    4:
    begin
      Panel1.Enabled:=false;
      Panel2.Enabled:=False;
      Panel3.Enabled:=False;
      Panel4.Enabled:=False;
      gcgx('zdybb_xzbrfytj');
      sp_qyxzbr.open;
    end;
    5:
    begin
      Panel2.Enabled:=False;
      Panel3.Enabled:=False;
      Panel4.Enabled:=False;
      gcgx('zdybb_cx_ksszbrs');        //更改过程
      if (edt3.Text<>'    -  -  ') and (edt4.Text<>'    -  -  ') then
      begin
        sp_qyxzbr.Parameters.ParamByName('@kssj').Value:=StrToDate(edt3.text);
        sp_qyxzbr.Parameters.ParamByName('@jssj').Value:=StrToDate(edt4.text);
        sp_qyxzbr.open;
      end;
    end;
    6:
    begin
      Panel2.Enabled:=False;
      Panel3.Enabled:=False;
      Panel4.Enabled:=False;
      gcgx('zdybb_cx_ksszbrmx');        //更改过程
      if (edt3.Text<>'    -  -  ') and (edt4.Text<>'    -  -  ') then
      begin
        sp_qyxzbr.Parameters.ParamByName('@kssj').Value:=StrToDate(edt3.text);
        sp_qyxzbr.Parameters.ParamByName('@jssj').Value:=StrToDate(edt4.text);
        sp_qyxzbr.open;
      end;
    end;
    7:
    begin
      Panel2.Enabled:=False;
      Panel3.Enabled:=False;
      Panel4.Enabled:=False;
      gcgx('zdybb_ysszbrs');        //更改过程
      if (edt3.Text<>'    -  -  ') and (edt4.Text<>'    -  -  ') then
      begin
        sp_qyxzbr.Parameters.ParamByName('@kssj').Value:=StrToDate(edt3.text);
        sp_qyxzbr.Parameters.ParamByName('@jssj').Value:=StrToDate(edt4.text);
        sp_qyxzbr.open;
      end;
    end;
    8:
    begin
      Panel2.Enabled:=False;
      Panel3.Enabled:=False;
      Panel4.Enabled:=False;
      gcgx('zdybb_ysszyrs');        //更改过程
      if (edt3.Text<>'    -  -  ') and (edt4.Text<>'    -  -  ') then
      begin
        sp_qyxzbr.Parameters.ParamByName('@kssj').Value:=StrToDate(edt3.text);
        sp_qyxzbr.Parameters.ParamByName('@jssj').Value:=StrToDate(edt4.text);
        sp_qyxzbr.open;
      end;
    end;
    9:
    begin
      Panel2.Enabled:=False;
      Panel3.Enabled:=False;
      Panel4.Enabled:=False;
      gcgx('zdybb_ksmzbrs');        //更改过程
      if (edt3.Text<>'    -  -  ') and (edt4.Text<>'    -  -  ') then
      begin
        sp_qyxzbr.Parameters.ParamByName('@ksrq').Value:=StrToDate(edt3.text);
        sp_qyxzbr.Parameters.ParamByName('@jsrq').Value:=StrToDate(edt4.text);
        sp_qyxzbr.open;
      end;
    end;
    10:
    begin
      Panel2.Enabled:=False;
      Panel3.Enabled:=False;
      Panel4.Enabled:=False;
      gcgx('zdybb_ysmzbrrs');        //更改过程
      if (edt3.Text<>'    -  -  ') and (edt4.Text<>'    -  -  ') then
      begin
        sp_qyxzbr.Parameters.ParamByName('@ksrq').Value:=StrToDate(edt3.text);
        sp_qyxzbr.Parameters.ParamByName('@jsrq').Value:=StrToDate(edt4.text);
        sp_qyxzbr.open;
      end;
    end;
    11:
    begin
      Panel2.Enabled:=False;
      if rb4.Checked then             //判断选取是门诊 还是全院 还是住院部分
      begin
        tjsx:=1;  //门诊
      end
      else if rb3.Checked then
      begin
        tjsx:=2;  //住院
      end
      else if rb7.checked then
      begin
        tjsx:=0; //全院
      end;
      Panel4.Enabled:=False;
      gcgx('zdybb_zyzlxmtj');        //更改过程
      if (edt3.Text<>'    -  -  ') and (edt4.Text<>'    -  -  ') then
      begin
        sp_qyxzbr.Parameters.ParamByName('@ksrq').Value:=StrToDate(edt3.text);
        sp_qyxzbr.Parameters.ParamByName('@jsrq').Value:=StrToDate(edt4.text);
        sp_qyxzbr.Parameters.ParamByName('@mzzy').Value:=tjsx;      
        sp_qyxzbr.open;
      end;
    end;
    12:
    begin
      Panel2.Enabled:=False;
      Panel3.Enabled:=False;
      Panel4.Enabled:=False;
      gcgx('zdybb_ysyjtj');        //更改过程
      if (edt3.Text<>'    -  -  ') and (edt4.Text<>'    -  -  ') then
      begin
        sp_qyxzbr.Parameters.ParamByName('@ksrq').Value:=StrToDate(edt3.text);
        sp_qyxzbr.Parameters.ParamByName('@jsrq').Value:=StrToDate(edt4.text);
        sp_qyxzbr.open;
      end;
    end;
    13:
    begin
      Panel2.Enabled:=False;
      Panel3.Enabled:=False;
      Panel4.Enabled:=False;
      gcgx('zdybb_ksyjtj');        //更改过程
      if (edt3.Text<>'    -  -  ') and (edt4.Text<>'    -  -  ') then
      begin
        sp_qyxzbr.Parameters.ParamByName('@ksrq').Value:=StrToDate(edt3.text);
        sp_qyxzbr.Parameters.ParamByName('@jsrq').Value:=StrToDate(edt4.text);
        sp_qyxzbr.open;
      end;
    end;
    14:
    begin
      for I := 0 to 1 do  //对数据进行刷新
      begin
        edt4.Enabled:=False;
        chk3.Visible:=True;       //全部
        Panel3.Enabled:=False;
        Panel4.Enabled:=False;
        gcgx('zdybb_bfgzrbb');        //更改过程
        if (edt3.Text<>'    -  -  ')  then
        begin
          sp_qyxzbr.Parameters.ParamByName('@rq').Value:=StrToDate(edt3.text);
          if chk3.Checked then
              sp_qyxzbr.Parameters.ParamByName('@ksdm').Value:=''
          else
              sp_qyxzbr.Parameters.ParamByName('@ksdm').Value:=qry_comboxxx.FieldByName('dm').value;
          sp_qyxzbr.open;
        end;
      end;
    end;
    15:
    begin
      Panel2.Enabled:=False;
      Panel3.Enabled:=False;
      Panel4.Enabled:=False;
      gcgx('zdybb_cybrfytj');
      if (edt3.Text<>'    -  -  ') and (edt4.Text<>'    -  -  ') then
      begin
        sp_qyxzbr.Parameters.ParamByName('@ksrq').Value:=StrToDate(edt3.text);
        sp_qyxzbr.Parameters.ParamByName('@jsrq').Value:=StrToDate(edt4.text);
        sp_qyxzbr.open;
      end;
    end;
    16:
    begin
      if rb4.Checked then             //判断选取是门诊 还是全院 还是住院部分
      begin
        tjsx:=1;  //门诊
      end else if rb3.Checked then
      begin
        tjsx:=2;  //住院
      end;
      gcgx('zdybb_brsftj_kxlb');        //更改过程     因过程   0是住院 1是门诊
      if (edt3.Text<>'    -  -  ') and (edt4.Text<>'    -  -  ') then
      begin
        sp_qyxzbr.Parameters.ParamByName('@ksrq').Value:=StrToDate(edt3.text);
        sp_qyxzbr.Parameters.ParamByName('@jsrq').Value:=StrToDate(edt4.text);
        if chk3.Checked then
         sp_qyxzbr.Parameters.ParamByName('@sfxz').Value:=''
        else
        sp_qyxzbr.Parameters.ParamByName('@sfxz').Value:=qry_comboxxx.FieldByName('dm').value;
        sp_qyxzbr.Parameters.ParamByName('@mzzy').Value:=tjsx;
        if rb5.Checked then//明细
          sp_qyxzbr.Parameters.ParamByName('@mxhz').Value:=0
        else if rb6.Checked then  //汇总
          sp_qyxzbr.Parameters.ParamByName('@mxhz').Value:=1;
        sp_qyxzbr.open;
      end;
    end;
    17:
    begin
      Panel1.Enabled:=false;
      Panel2.Enabled:=False;
      Panel3.Enabled:=False;
      Panel4.Enabled:=False;
      gcgx('zdybb_qyycybr');
      sp_qyxzbr.open;
    end;
    18:
    begin
      Panel1.Enabled:=false;
      Panel2.Enabled:=False;
      Panel3.Enabled:=False;
      Panel4.Enabled:=False;
      gcgx('zdybb_ycybrfytj');
      sp_qyxzbr.open;
    end;
    19:
    begin
      Panel2.Enabled:=False;
      Panel3.Enabled:=False;
      Panel4.Enabled:=False;
      gcgx('zdybb_cybrybbxfyqk');
      if (edt3.Text<>'    -  -  ') and (edt4.Text<>'    -  -  ') then
      begin
        sp_qyxzbr.Parameters.ParamByName('@ksrq').Value:=StrToDate(edt3.text);
        sp_qyxzbr.Parameters.ParamByName('@jsrq').Value:=StrToDate(edt4.text);
        sp_qyxzbr.open;
      end;
    end;
    21:
    begin
      Panel2.Enabled:=False;
      Panel3.Enabled:=False;
      Panel4.Enabled:=False;
      gcgx('zdybb_qysrtj');        //更改过程
      if (edt3.Text<>'    -  -  ') and (edt4.Text<>'    -  -  ') then
      begin
        sp_qyxzbr.Parameters.ParamByName('@ksrq').Value:=StrToDate(edt3.text);
        sp_qyxzbr.Parameters.ParamByName('@jsrq').Value:=StrToDate(edt4.text);
        sp_qyxzbr.open;
      end;
    end;
    22:
    begin
      Panel2.Enabled:=False;
      if rb4.Checked then             //判断选取是门诊 还是全院 还是住院部分
      begin
        tjsx:=1;   //门诊
      end else if rb3.Checked then
      begin
        tjsx:=2;      //住院
      end else if rb7.Checked then
        tjsx:=0;              //全院
      gcgx('zdybb_qysrtj_ksys');        //更改过程
      if (edt3.Text<>'    -  -  ') and (edt4.Text<>'    -  -  ') then
      begin
        sp_qyxzbr.Parameters.ParamByName('@ksrq').Value:=StrToDate(edt3.text);
        sp_qyxzbr.Parameters.ParamByName('@jsrq').Value:=StrToDate(edt4.text);
        if rb6.Checked then  //科室
          sp_qyxzbr.Parameters.ParamByName('@yq').Value:=1
        else if rb5.Checked then              //医生
          sp_qyxzbr.Parameters.ParamByName('@yq').Value:=2;
        sp_qyxzbr.Parameters.ParamByName('@lx').Value:=tjsx;
        sp_qyxzbr.open;
      end;
    end;
    
    23:
    begin
      Panel2.Enabled:=False;
      Panel3.Enabled:=False;
      Panel4.Enabled:=False;
      gcgx('zdybb_fzkssrhz');        //更改过程
      if (edt3.Text<>'    -  -  ') and (edt4.Text<>'    -  -  ') then
      begin
        sp_qyxzbr.Parameters.ParamByName('@ksrq').Value:=StrToDate(edt3.text);
        sp_qyxzbr.Parameters.ParamByName('@jsrq').Value:=StrToDate(edt4.text);
        sp_qyxzbr.open;
      end;
    end;
    24:
    begin
      Panel4.Enabled:=False;
      if rb4.Checked then             //判断选取是门诊 还是全院 还是住院部分
      begin
        tjsx:=1;
      end else if rb3.Checked then
      begin
        tjsx:=2;
      end else if rb7.Checked then
        tjsx:=0;
      gcgx('zdybb_fzkssrmx');        //更改过程
      if (edt3.Text<>'    -  -  ') and (edt4.Text<>'    -  -  ') then
      begin
        sp_qyxzbr.Parameters.ParamByName('@ksrq').Value:=StrToDate(edt3.text);
        sp_qyxzbr.Parameters.ParamByName('@jsrq').Value:=StrToDate(edt4.text);
        sp_qyxzbr.Parameters.ParamByName('@ksdm').Value:=qry_comboxxx.FieldByName('dm').value;
        sp_qyxzbr.Parameters.ParamByName('@lx').Value:=tjsx;
        sp_qyxzbr.open;
      end;
    end;
    25:
    begin
      Panel2.Enabled:=False;
      Panel3.Enabled:=False;
      Panel4.Enabled:=False;
      gcgx('zdybb_ssssrtj');        //更改过程
      if (edt3.Text<>'    -  -  ') and (edt4.Text<>'    -  -  ') then
      begin
        sp_qyxzbr.Parameters.ParamByName('@ksrq').Value:=StrToDate(edt3.text);
        sp_qyxzbr.Parameters.ParamByName('@jsrq').Value:=StrToDate(edt4.text);
        sp_qyxzbr.open;
      end;
    end;
    26:
    begin
      Panel2.Enabled:=False;
      Panel3.Enabled:=False;
      Panel4.Enabled:=False;
      gcgx('zdybb_zzytj_ks');        //更改过程
      if (edt3.Text<>'    -  -  ') and (edt4.Text<>'    -  -  ') then
      begin
        sp_qyxzbr.Parameters.ParamByName('@ksrq').Value:=StrToDate(edt3.text);
        sp_qyxzbr.Parameters.ParamByName('@jsrq').Value:=StrToDate(edt4.text);
        sp_qyxzbr.open;
      end;
    end;
    27:
    begin
      Panel2.Enabled:=False;
      Panel3.Enabled:=False;
      Panel4.Enabled:=False;
      gcgx('zdybb_zzytj_ys');        //更改过程
      if (edt3.Text<>'    -  -  ') and (edt4.Text<>'    -  -  ') then
      begin
        sp_qyxzbr.Parameters.ParamByName('@ksrq').Value:=StrToDate(edt3.text);
        sp_qyxzbr.Parameters.ParamByName('@jsrq').Value:=StrToDate(edt4.text);
        sp_qyxzbr.open;
      end;
    end;

    28:
    begin
      Panel2.Enabled:=False;
      Panel3.Enabled:=False;
      Panel4.Enabled:=False;
      gcgx('zdybb_sxftj');        //更改过程
      if (edt3.Text<>'    -  -  ') and (edt4.Text<>'    -  -  ') then
      begin
        sp_qyxzbr.Parameters.ParamByName('@ksrq').Value:=StrToDate(edt3.text);
        sp_qyxzbr.Parameters.ParamByName('@jsrq').Value:=StrToDate(edt4.text);
        sp_qyxzbr.open;
      end;
    end;
    30:
    begin
      Panel2.Enabled:=False;
      Panel3.Enabled:=False;
      Panel4.Enabled:=False;
      gcgx('zdybb_qtkszzzyxksrtj');        //更改过程
      if (edt3.Text<>'    -  -  ') and (edt4.Text<>'    -  -  ') then
      begin
        sp_qyxzbr.Parameters.ParamByName('@ksrq').Value:=StrToDate(edt3.text);
        sp_qyxzbr.Parameters.ParamByName('@jsrq').Value:=StrToDate(edt4.text);
        sp_qyxzbr.open;
      end;
    end;
    31:
    begin
      Panel2.Enabled:=False;
      Panel3.Enabled:=False;
      Panel4.Enabled:=False;
      gcgx('zdybb_ksybbrzICUsrtj');        //更改过程
      if (edt3.Text<>'    -  -  ') and (edt4.Text<>'    -  -  ') then
      begin
        sp_qyxzbr.Parameters.ParamByName('@ksrq').Value:=StrToDate(edt3.text);
        sp_qyxzbr.Parameters.ParamByName('@jsrq').Value:=StrToDate(edt4.text);
        sp_qyxzbr.open;
      end;
    end;
    32:
    begin
      Panel2.Enabled:=False;
      Panel3.Enabled:=False;
      Panel4.Enabled:=False;
      gcgx('zdybb_lcksjcsrdzb');        //更改过程
      if (edt3.Text<>'    -  -  ') and (edt4.Text<>'    -  -  ') then
      begin
        sp_qyxzbr.Parameters.ParamByName('@ksrq').Value:=StrToDate(edt3.text);
        sp_qyxzbr.Parameters.ParamByName('@jsrq').Value:=StrToDate(edt4.text);
        sp_qyxzbr.open;
      end;
    end;
  end;
end;

end.
