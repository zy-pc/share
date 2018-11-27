unit p_fpdy; //20100827姜超添加----------------------

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, ADODB, cxGridLevel, cxClasses,
  cxControls, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, Printers, QRCtrls, QuickRpt, cxContainer,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, ComCtrls, Menus,
  cxLookAndFeelPainters, cxButtons, cxCheckBox, jkk_func, p_jkk_re;
type
  TInfor_fy = record //收费金额情况
    fyje: Double;
    ssje: Double;
    sjsl: Integer;
    tczf: Double;
    xjzf: Double;
    zhzf: Double;
    zhye: Double;
    jsqye: Double;
    jshye: Double;

  end;
type
  Tfrm_fpdy = class(TForm)
    Button3: TButton;
    Button2: TButton;
    tmh: TEdit;
    Bevel1: TBevel;
    Label1: TLabel;
    Panel1: TPanel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    Label16: TLabel;
    sjbh: TEdit;
    edt_sjsysl: TEdit;
    qry_fymx: TADOQuery;
    ds_fymx: TDataSource;
    sp_fpdy_fymx: TADOStoredProc;
    Label2: TLabel;
    Button1: TButton;
    Label3: TLabel;
    de1: TDateTimePicker;
    de2: TDateTimePicker;
    Memo1: TMemo;
    Panel2: TPanel;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    qry_fymx_ydy: TADOQuery;
    ds_fymx_ydy: TDataSource;
    QuickRep_sc: TQuickRep;
    DetailBand1: TQRBand;
    QRDB_fydymc_sc: TQRDBText;
    QRDB_sszje_sc: TQRDBText;
    QRDB_cfbh_sc: TQRDBText;
    QRLabel1: TQRLabel;
    QRGroup1: TQRGroup;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRDB_ksmc_sc: TQRDBText;
    QRDB_ysmc_sc: TQRDBText;
    QRDB_sjbh_sc: TQRDBText;
    QRDB_tmh_sc: TQRDBText;
    QRL_hint1_sc: TQRLabel;
    QRDB_kdks_sc: TQRDBText;
    QRL_hint2_sc: TQRLabel;
    QRDB_kdys_sc: TQRDBText;
    QRDBText5: TQRDBText;
    QRBand5: TQRBand;
    PageFooterBand1: TQRBand;
    QRL_kyhsfbz_sc: TQRLabel;
    QRL_dxje_sc: TQRLabel;
    QRL_czy_sc: TQRLabel;
    QRL_yymc_sc: TQRLabel;
    QRE_hj1_sc: TQRExpr;
    QRDB_sfrq_sc1: TQRDBText;
    QRL_xxje_sc: TQRLabel;
    QRE_hj2_sc: TQRExpr;
    QRL_sjsl_sc: TQRLabel;
    QRE_yhj_xx: TQRExpr;
    QRE_yhj_dx: TQRExpr;
    cxGrid1DBTableView1tmh: TcxGridDBColumn;
    cxGrid1DBTableView1brxm: TcxGridDBColumn;
    cxGrid1DBTableView1sjbh: TcxGridDBColumn;
    cxGrid1DBTableView1sjbhNew: TcxGridDBColumn;
    cxGrid1DBTableView1fymc: TcxGridDBColumn;
    cxGrid1DBTableView1zje: TcxGridDBColumn;
    cxGrid1DBTableView1sfrq: TcxGridDBColumn;
    qry_fymx_ydyid: TAutoIncField;
    qry_fymx_ydytmh: TStringField;
    qry_fymx_ydybrxm: TStringField;
    qry_fymx_ydysjbh: TIntegerField;
    qry_fymx_ydyfydm: TStringField;
    qry_fymx_ydyzje: TBCDField;
    qry_fymx_ydysfrq: TDateTimeField;
    qry_fymx_ydydybz: TBooleanField;
    qry_fymx_ydysjbhNew: TIntegerField;
    qry_fymx_ydydyrq: TDateTimeField;
    qry_fymx_ydyfymc: TStringField;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBTableView1Column1: TcxGridDBColumn;
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
    cxStyle36: TcxStyle;
    cxStyle37: TcxStyle;
    cxStyle38: TcxStyle;
    cxStyle39: TcxStyle;
    cxStyle40: TcxStyle;
    cxStyle41: TcxStyle;
    cxStyle42: TcxStyle;
    cxStyle43: TcxStyle;
    cxStyle44: TcxStyle;
    cxStyle45: TcxStyle;
    cxStyle46: TcxStyle;
    cxStyle47: TcxStyle;
    cxStyle48: TcxStyle;
    cxStyle49: TcxStyle;
    cxStyle50: TcxStyle;
    cxStyle51: TcxStyle;
    cxStyle52: TcxStyle;
    cxStyle53: TcxStyle;
    cxStyle54: TcxStyle;
    cxStyle55: TcxStyle;
    cxStyle56: TcxStyle;
    cxStyle57: TcxStyle;
    cxStyle58: TcxStyle;
    cxStyle59: TcxStyle;
    cxStyle60: TcxStyle;
    cxStyle61: TcxStyle;
    cxStyle62: TcxStyle;
    cxStyle63: TcxStyle;
    cxStyle64: TcxStyle;
    cxStyle65: TcxStyle;
    cxStyle66: TcxStyle;
    cxStyle67: TcxStyle;
    cxStyle68: TcxStyle;
    cxStyle69: TcxStyle;
    cxStyle70: TcxStyle;
    cxStyle71: TcxStyle;
    cxStyle72: TcxStyle;
    cxStyle73: TcxStyle;
    cxStyle74: TcxStyle;
    cxStyle75: TcxStyle;
    cxStyle76: TcxStyle;
    cxStyle77: TcxStyle;
    cxStyle78: TcxStyle;
    cxStyle79: TcxStyle;
    cxStyle80: TcxStyle;
    cxStyle81: TcxStyle;
    cxStyle82: TcxStyle;
    cxStyle83: TcxStyle;
    cxStyle84: TcxStyle;
    cxStyle85: TcxStyle;
    cxStyle86: TcxStyle;
    cxStyle87: TcxStyle;
    cxStyle88: TcxStyle;
    cxStyle89: TcxStyle;
    cxStyle90: TcxStyle;
    cxStyle91: TcxStyle;
    cxStyle92: TcxStyle;
    cxStyle93: TcxStyle;
    cxStyle94: TcxStyle;
    cxStyle95: TcxStyle;
    cxStyle96: TcxStyle;
    cxStyle97: TcxStyle;
    cxStyle98: TcxStyle;
    cxStyle99: TcxStyle;
    cxStyle100: TcxStyle;
    cxStyle101: TcxStyle;
    cxStyle102: TcxStyle;
    cxStyle103: TcxStyle;
    cxStyle104: TcxStyle;
    cxStyle105: TcxStyle;
    cxStyle106: TcxStyle;
    cxStyle107: TcxStyle;
    cxStyle108: TcxStyle;
    cxStyle109: TcxStyle;
    cxStyle110: TcxStyle;
    cxStyle111: TcxStyle;
    cxStyle112: TcxStyle;
    cxStyle113: TcxStyle;
    cxStyle114: TcxStyle;
    cxStyle115: TcxStyle;
    cxStyle116: TcxStyle;
    cxStyle117: TcxStyle;
    cxStyle118: TcxStyle;
    cxStyle119: TcxStyle;
    cxStyle120: TcxStyle;
    cxStyle121: TcxStyle;
    cxStyle122: TcxStyle;
    cxStyle123: TcxStyle;
    cxStyle124: TcxStyle;
    cxStyle125: TcxStyle;
    GridTableViewStyleSheetUserFormat1: TcxGridTableViewStyleSheet;
    GridTableViewStyleSheetUserFormat2: TcxGridTableViewStyleSheet;
    GridTableViewStyleSheetUserFormat3: TcxGridTableViewStyleSheet;
    GridTableViewStyleSheetSpruce: TcxGridTableViewStyleSheet;
    GridTableViewStyleSheetSlate: TcxGridTableViewStyleSheet;
    cxButton1: TcxButton;
    cxGrid1DBTableView1dybz: TcxGridDBColumn;
    qr_sfrq: TQRLabel;
    qrdbtxtsfrq: TQRDBText;
    QRDB_sjbh_old: TQRDBText;
    qrl_zhzf: TQRLabel;
    qrlbl1: TQRLabel;
    qrl_nhtc_xs: TQRLabel;
    jy_tzzcf_mc: TQRLabel;
    jy_tzzcf_je: TQRLabel;
    Label4: TLabel;
    e_yhckh: TEdit;
    pnl1: TPanel;
    mmo1: TMemo;
    cxGrid3DBTableView1: TcxGridDBTableView;
    cxGrid3Level1: TcxGridLevel;
    cxGrid3: TcxGrid;
    cxgrdbclmnGrid3DBTableView1Column1: TcxGridDBColumn;
    cxgrdbclmnGrid3DBTableView1Column2: TcxGridDBColumn;
    qry_bkjk: TADOQuery;
    ds_bkjk: TDataSource;
    Qry_sjdy1: TADOQuery;
    qry_fymx_fpdy: TADOQuery;
    sp_fpdy_hnsx: TADOStoredProc;
    sp_fpdy_sx: TADOStoredProc;
    qry_pub: TADOQuery;
    procedure tmhKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure tmhEnter(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure QRE_yhj_dxPrint(sender: TObject; var Value: string);
    procedure cxButton1Click(Sender: TObject);
    procedure qr_sfrqPrint(sender: TObject; var Value: string);
    procedure QRDB_sjbh_oldPrint(sender: TObject; var Value: string);
    procedure QRDB_sjbh_scPrint(sender: TObject; var Value: string);
    procedure e_yhckhEnter(Sender: TObject);
    procedure e_yhckhKeyPress(Sender: TObject; var Key: Char);
    procedure tmhDblClick(Sender: TObject);
  private
    v_tzzcf_b: Boolean;
    procedure proc_move(v_D: TQRExpr; v_S: TQRLabel);
    procedure proc_fpdy_sjbh;
    function getfybs(): Integer;
    function func_fyje_Calc(ado: TCustomADODataSet): TInfor_fy;
    procedure prv_print;
    procedure Print_fpdy_sc(ado: TCustomADODataSet; v_brxm: string; v_ShowYe: Boolean; v_IsSbsf: Boolean;
    const v_fyzje, v_sszje, v_kyhye: Double; const v_sjsl: Integer);
    procedure proc_mzsj_sxzyy(ph:string); //睢县中医院打印处理
    procedure Proc_mzsj_sc_kb; //门诊空白自定义报表收据（四川）
    { Private declarations }
  public
    procedure ReadCard_CallBack;
    { Public declarations }
  end;

var
  frm_fpdy: Tfrm_fpdy;
  fpdy_sjbh: string;
  sjbhqh, sjbhzh, fpdy_sjbhzh_real {实际的收据止号}: integer;
  fpdy_tmh: string;

implementation

uses p_dm, p_func, p_fpdy_tj, p_repo_hjsf, p_mzjsbb,bsjk;

{$R *.dfm}

procedure Tfrm_fpdy.Button1Click(Sender: TObject);
var
  i: Integer;
begin
  if edt_sjsysl.Text = '剩余:0张' then
  begin
    Application.MessageBox('收据已用完,请启用新收据!', '系统提示', MB_OK + MB_ICONSTOP);
    Close;
  end;
  fpdy_tmh := Trim(tmh.Text);
  if length(fpdy_tmh) = 0 then
  begin
    Application.MessageBox('请输入正确的条码号', '提示', 0 + 48);
    tmh.SetFocus;
    Button1.Enabled := False;
  end
  else
  begin
    sp_fpdy_fymx.Close;
    sp_fpdy_fymx.Parameters.ParamByName('@tmh').Value := fpdy_tmh;
    sp_fpdy_fymx.Parameters.ParamByName('@date1').Value := de1.Date;
    sp_fpdy_fymx.Parameters.ParamByName('@date2').Value := de2.Date;
    sp_fpdy_fymx.Parameters.ParamByName('@dyczy').Value := pub_czydm;
    sp_fpdy_fymx.ExecProc;
    qry_fymx_ydy.Close;
    qry_fymx_ydy.Parameters.ParamByName('tmh').Value := fpdy_tmh;
    qry_fymx_ydy.Open;
    qry_bkjk.Close;
    qry_bkjk.SQL.Text := 'select a.sjbh,a.sszje from mzsf_mzfymx a join bkjk_fymx b on a.ph=b.sjbh where b.jyckh='+#39+Trim(e_yhckh.Text)+#39;
    qry_bkjk.Open;
    qry_fymx.Close;
    qry_fymx.SQL.Text := 'select * from mzsf_fpdy_mx where zje<>0 and tmh=:tmh and sjbhNew=0 and dybz=0 order by sjbh';
    qry_fymx.Parameters.ParamByName('tmh').Value := fpdy_tmh;
    qry_fymx.Open;
    if qry_fymx.RecordCount > 0 then
    begin
      Button2.Enabled := True;
      qry_fymx.First;
      while not qry_fymx.Eof do
      begin
        qry_fymx.Edit;
        qry_fymx.FieldByName('dybz').AsBoolean := True;
        qry_fymx.Post;
        qry_fymx.Next;
      end;
    end
    else
    begin
      if qry_fymx_ydy.RecordCount <= 0 then
        Application.MessageBox('病人条码号输入错误,或者改病人没有相关费用!', '提示', MB_OK + MB_ICONSTOP);
      Button2.Enabled := False;
    end;
  end;
end;

procedure Tfrm_fpdy.Button2Click(Sender: TObject);
var
  i, y_sjbh, y_sjbh_old: Integer;
  v_dybz, v_ypbz: Boolean;
  v_rq, v_rq_old: string;
  v_sjbh_hnsx:string;
  lssql:string;
  v_czks,v_czks_old:string;
  ii:Integer;
  v_error:string ;
begin
  qrlbl1.Caption := '';
  qrl_zhzf.caption := '';
  if qry_fymx.Active and (qry_fymx.RecordCount > 0) then
  begin
    if getfybs() <= 0 then
    begin
      Application.MessageBox('提示:请选择需要打印的费用项目!', '提示', MB_ICONINFORMATION);
      Abort;
    end;
    if pub_yydm<>'0000' then
    begin
      i := 0;
      qry_fymx.First;
      y_sjbh_old := qry_fymx.FieldByName('sjbh').AsInteger;
      v_rq_old := FormatDateTime('yyyy-MM-dd', qry_fymx.FieldByName('sfrq').AsDateTime);
      proc_fpdy_sjbh;
      sjbhqh := StrToInt(fpdy_sjbh); //收据起号
      sjbhzh := StrToInt(fpdy_sjbh); //收据止号
      while not qry_fymx.Eof do
      begin
        if qry_fymx.FieldByName('dybz').AsBoolean then
        begin
          v_ypbz := True;
        //        DM_data.Qry_pub1.Close;
        //        DM_data.Qry_pub1.SQL.Text := 'select * from sys_kjsfxm where LEFT(dldm,2)=' + #39 + '01' + #39
        //          + ' and fydm=' + #39 + qry_fymx.FieldByName( 'fydm' ).AsString + #39;
        //        DM_data.Qry_pub1.Open;
        //        if DM_data.Qry_pub1.RecordCount > 0 then
        //          v_ypbz := True
        //        else
        //          v_ypbz := False;
          qry_fymx.edit;
          y_sjbh := qry_fymx.FieldByName('sjbh').AsInteger;
          v_rq := FormatDateTime('yyyy-MM-dd', qry_fymx.FieldByName('sfrq').AsDateTime);
         if (pub_yydm = '0046') and v_ypbz then
         begin
          if v_rq = v_rq_old then
            y_sjbh_old := y_sjbh
          else
            v_rq_old := v_rq;
         end;
         if y_sjbh_old = y_sjbh then
         begin
          if I >= 3 then
          begin
            Inc(sjbhzh, 1);
            I := 1;
          end
          else
            Inc(i, 1);
         end
         else
         begin
          if i <> 0 then
            Inc(sjbhzh, 1);
          i := 1;
          y_sjbh_old := qry_fymx.FieldByName('sjbh').AsInteger;
         end;
         qry_fymx.FieldByName('sjbhNew').AsInteger := sjbhzh;
         if fpdy_sjbhzh_real < sjbhzh then //实际收据止号(fpdy_sjbhzh_real)小于计算出止号(sjbhzh)
         begin
          Application.MessageBox('提示:收据编号不足以收取当前费用!', '提示', MB_ICONINFORMATION);
          Abort;
         end;
        end;
        qry_fymx.Next;
      end;
      DM_data.ado_mydata.BeginTrans;
      try
       qry_fymx.UpdateBatch;
       DM_data.qry_pub.Close;
       DM_data.qry_pub.SQL.Text := 'update sys_sjlymx with (ROWLOCK) set sybh=' + IntToStr(sjbhzh) +
        ' where sys_sjlymx.sjlb=' + #39 + '01' + #39 + 'and sys_sjlymx.lyr=' + #39 + pub_czydm + #39 +
        ' and sys_sjlymx.qybz=1 and sys_sjlymx.tybz=0;';
       DM_data.qry_pub.ExecSQL;
       DM_data.ado_mydata.CommitTrans;
       v_dybz := True;
       except
        DM_data.ado_mydata.RollbackTrans;
        v_dybz := False;
      end;
    end
    else   //河南睢县发票打印
    begin
      proc_fpdy_sjbh;
      sjbhqh := StrToInt(fpdy_sjbh); //收据起号
      sjbhzh := StrToInt(fpdy_sjbh); //收据止号
      qry_fymx.First;
      while not qry_fymx.eof do
      begin
        if qry_fymx.FieldByName('dybz').AsBoolean  then
        begin
          if v_sjbh_hnsx='' then
            v_sjbh_hnsx:=qry_fymx.FieldByName('sjbh').AsString
          else if Pos(qry_fymx.FieldByName('sjbh').AsString,v_sjbh_hnsx)<=0 then
            v_sjbh_hnsx:=v_sjbh_hnsx+','+qry_fymx.FieldByName('sjbh').AsString;
        end;
        qry_fymx.Next;
      end;
      if v_sjbh_hnsx=''  then
      begin
        Application.MessageBox('提示:请选择需要打印的费用项目!', '提示', MB_ICONINFORMATION);
        Abort;
      end;
      sp_fpdy_sx.Close;
      sp_fpdy_sx.Parameters.ParamByName('@tmh').Value := Trim(tmh.Text);
      sp_fpdy_sx.Parameters.ParamByName('@czydm').Value := pub_czydm;
      sp_fpdy_sx.Parameters.ParamByName('@sjqh').Value := StrToInt(fpdy_sjbh);
      sp_fpdy_sx.Parameters.ParamByName('@sjzh_real').Value := fpdy_sjbhzh_real;
      sp_fpdy_sx.Parameters.ParamByName('@sjbhcr').Value := v_sjbh_hnsx;
      sp_fpdy_sx.Parameters.ParamByName('@sczt').Value := '';
      sp_fpdy_sx.Parameters.ParamByName('@sjzhout').Value :=0;
      sp_fpdy_sx.ExecProc;
      v_error:=sp_fpdy_sx.Parameters.ParamByName( '@sczt' ).Value;
      if v_error='1' then
      begin
         sjbhzh:=sp_fpdy_sx.Parameters.ParamByName( '@sjzhout' ).Value;
         if (sjbhzh=0)  or (sjbhzh>fpdy_sjbhzh_real)  then
         begin
           Application.MessageBox('提示:收据编号不足以收取当前费用!', '提示', MB_ICONINFORMATION);
           Abort;
         end;
         v_dybz := True;
      end
      else
      begin
         application.MessageBox(pchar('发票打印失败!' + #13 + '错误信息:' + v_error),
         '注意', 16);
          Abort;
      end;
    end ;
    if v_dybz then
      prv_print; //发票打印;
  end;
  qry_fymx.Close;
  qry_fymx.SQL.Text := 'select * from mzsf_fpdy_mx where tmh=:tmh and sjbhNew=0 and dybz=0 order by sjbh';
  qry_fymx.Parameters.ParamByName('tmh').Value := fpdy_tmh;
  qry_fymx.Open;

  qry_fymx_ydy.Close;
  qry_fymx_ydy.Parameters.ParamByName('tmh').Value := fpdy_tmh;
  qry_fymx_ydy.Open;

  qry_fymx.Filter := '';
  qry_fymx.Filtered := False;

  if qry_fymx.RecordCount > 0 then
  begin
    Button2.Enabled := True;
    cxGrid1.SetFocus;
  end
  else
  begin
    Button2.Enabled := False;
    tmh.SetFocus;
  end;
end;

procedure Tfrm_fpdy.Button3Click(Sender: TObject);
begin
  Close;
end;

procedure Tfrm_fpdy.cxButton1Click(Sender: TObject);
begin
  application.CreateForm(Tfrm_fpdy_tj, frm_fpdy_tj); //20101022姜超添加----------------------
  try
    frm_fpdy_tj.ShowModal;
  finally
    frm_fpdy_tj.Free;
  end;
end;

procedure Tfrm_fpdy.e_yhckhEnter(Sender: TObject);
begin
  e_yhckh.Text := '';
end;

procedure Tfrm_fpdy.e_yhckhKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    if Trim(e_yhckh.Text) <> '' then
    begin
      DM_data.qry_pub.Close;
      DM_data.qry_pub.SQL.Text := 'select distinct a.tmh from mzsf_mzfymx a join bkjk_fymx b on a.ph=b.sjbh '+
      'where b.jyckh=:jyckh';
      DM_data.qry_pub.Parameters.ParamByName('jyckh').Value := Trim(e_yhckh.Text);
      DM_data.qry_pub.Open;
      if DM_data.qry_pub.RecordCount=1 then
      begin
        tmh.Text := DM_data.qry_pub.FieldByName('tmh').AsString;
        Button1.Click;
      end
      else
      begin
        Application.MessageBox('提示:未查询到该银行参考号所对应的缴费数据！请确认后在进行查询','提示',MB_ICONHAND);
        e_yhckh.Text := '';
        e_yhckh.SetFocus;
      end;
    end;
  end;
end;

procedure Tfrm_fpdy.FormShow(Sender: TObject);
begin
  QuickRep_sc.Visible := False;
  de1.Date := Frm_func.curr_date;
  de2.Date := Frm_func.curr_date;
   if ( pub_yydm = '0244' ) or ( pub_yydm = '0250' ) or (pub_yydm = '0262') then
  begin
    if LoadbsjkDll then
    begin
     // PAdvConnect_dy( '001', '', '' );
        PAdvConnect_dy(Pchar('010'),PChar(''),PChar(''));
    end;
  end;
  proc_fpdy_sjbh;
  tmh.SetFocus;
end;

function Tfrm_fpdy.func_fyje_Calc(ado: TCustomADODataSet): TInfor_fy;
var
  i, v_sjbh: Integer;
begin
  Result.fyje := 0;
  Result.ssje := 0;
  Result.sjsl := 0;
  ado.First;
  ado.DisableControls;
  for i := 1 to ado.RecordCount do
  begin
    Result.fyje := Result.fyje + ado.FieldByName('zje').AsCurrency;
    Result.ssje := Result.ssje + ado.FieldByName('zje').AsCurrency;
    if v_sjbh <> ado.FieldByName('sjbh').AsInteger then
    begin
      v_sjbh := ado.FieldByName('sjbh').AsInteger;
      Result.sjsl := Result.sjsl + 1;
    end;
    ado.next;
  end;
  ado.EnableControls;
end;

function Tfrm_fpdy.getfybs: Integer;
var
  x: Integer;
begin
  x := 0;
  qry_fymx.First;
  while not qry_fymx.Eof do
  begin
    if qry_fymx.FieldByName('dybz').AsBoolean then
      inc(x, 1);
    qry_fymx.Next();
  end;
  Result := x;
end;

procedure Tfrm_fpdy.Print_fpdy_sc(ado: TCustomADODataSet; v_brxm: string;
  v_ShowYe, v_IsSbsf: Boolean; const v_fyzje, v_sszje, v_kyhye: Double;
  const v_sjsl: Integer);
  procedure ChangeDataSet(aControl: TWinControl);
  var
    i: Integer;
  begin
    for I := 0 to aControl.ControlCount - 1 do
      if aControl.Controls[i] is TQRDBText then
        TQRDBText(aControl.Controls[i]).DataSet := ado;
  end;
begin
  QRL_dxje_sc.Caption := ' ';
  QRL_xxje_sc.Caption := ' ';
  QRL_kyhsfbz_sc.Caption := ' ';
  //qrl_zhzf.Caption := ' ';

  ado.Sort := 'sjbhNew ASC';
  QRL_sjsl_sc.Caption := '收据:' + IntToStr(v_sjsl) + '张';
  QRL_dxje_sc.Caption := '实收:币' + NumberToMoney(v_sszje);
  QRL_xxje_sc.Caption := Format('￥%3.2f', [v_sszje]);

  //---------------------------------------------
  QRL_czy_sc.Caption := ado.FieldByName('sfczy').AsString + '#' + copy(ado.FieldByName('sfczymc').AsString, 1, 2);
  QRL_yymc_sc.caption := pub_yymc;
  //  QRL_dysj_sc.Caption := FormatDateTime( 'yyyy-mm-dd hh:MM:ss', ado.FieldByName( 'sfrq' ).AsDateTime );
  QRE_hj1_sc.Enabled := not v_ShowYe;
  QRE_hj2_sc.Enabled := v_ShowYe;

  //  QRLabel7.Enabled := (pub_yydm <> '0009'); //三台骨科医院不打科室
  //  QRDB_ksmc_sc.Enabled := (pub_yydm <> '0009'); //三台骨科医院不打科室
  QRL_sjsl_sc.Enabled := (pub_mzsjlx = '010101'); //页打印总合计
  QRL_xxje_sc.Enabled := (pub_mzsjlx = '010101'); //页打印总合计
  QRL_dxje_sc.Enabled := (pub_mzsjlx = '010101'); //页打印总合计
  QRE_yhj_xx.Enabled := ((pub_mzsjlx = '010102') or (pub_mzsjlx = '010103')); //页打印页合计
  QRE_yhj_dx.Enabled := ((pub_mzsjlx = '010102') or (pub_mzsjlx = '010103')); //页打印页合计

  if ((pub_mzsjlx = '010102') or (pub_mzsjlx = '010103')) then
  begin
    Proc_move(QRE_yhj_xx, QRL_xxje_sc);
    Proc_move(QRE_yhj_dx, QRL_dxje_sc);
  end;
  QRL_kyhsfbz_sc.caption := '';
  QuickRep_sc.DataSet := ado;
  ChangeDataSet(QRGroup1);
  ChangeDataSet(DetailBand1);
  ChangeDataSet(PageFooterBand1);
  QuickRep_sc.Print;
end;

procedure Tfrm_fpdy.proc_fpdy_sjbh;
var
  v_sysl, v_sjbh, v_sjzh: string;
  S: string;
begin
  S := frm_func.func_get_sjbh(pub_czydm, pub_mzsjlb, '1');
  if S = '' then
  begin
    MessageDlg('收据已用完，请启用新收据！', mtWarning, [mbOK], 0);
    abort;
  end;
  v_sysl := Copy(S, Pos('S', S) + 1, Pos('Q', S) - Pos('S', S) - 2);
  v_sjbh := Copy(S, Pos('C', S) + 1, Pos('S', S) - Pos('C', S) - 2);
  v_sjzh := Copy(S, Pos('Z', S) + 1, Length(S));
  if v_sysl = '0' then
  begin
    edt_sjsysl.Text := '剩余:0张';
    MessageDlg('收据已用完，请启用新收据！', mtWarning, [mbOK], 0);
    abort;
  end
  else
  begin
    edt_sjsysl.Text := '剩余:' + v_sysl + '张';
    fpdy_sjbh := formatex(StrToInt(v_sjbh), 9);
    fpdy_sjbhzh_real := StrToInt(v_sjzh); //获得实际的收据止号
    sjbh.Text := fpdy_sjbh;
  end;
end;

procedure Tfrm_fpdy.proc_move(v_D: TQRExpr; v_S: TQRLabel);
begin
  v_D.Left := v_S.Left;
  v_D.Top := v_S.Top;
  v_D.Width := v_S.Width;
  v_D.Height := v_S.Height;
end;

procedure Tfrm_fpdy.prv_print;
var
  v_IsPrinterJoin: Boolean;
  v_PrinterIndex_new: Integer;
  v_PrinterIndex_old: Integer;
  v_Infor_fy: TInfor_fy;
  fzI: Integer; //辅助标?
  lists: TStringList;
  ZrTxt: string;
  vStr: string;
begin
  //判断是否使用打印关联方式及取得打印机序号
  v_PrinterIndex_old := Printer.PrinterIndex;
  v_PrinterIndex_new := func_GetPrinterIndex(2, v_IsPrinterJoin);
  if v_IsPrinterJoin then
    Proc_ChangePrinter(v_PrinterIndex_new, False);

  if (pub_yydm = '0262') then //博思发票接口 宁安市医院20160308添加 0262
  begin
    qry_pub.Close;
    qry_pub.SQL.Text := 'select distinct a.tmh,a.sjbh,b.mc ksmc,c.mc fylb,d.mc  sfczy,e.mc as kdys  ' +
      'from  (select distinct * from (select id,rtrim(tmh) tmh,rtrim(brxm) brxm,brxb,brnl,fylb,sjbh,rtrim(cfbh) cfbh,fydm,fysl,fydj,fyzje,sszje,zkje,ghks,kdks,czks,kdys,czys,sfbz,tfbz,zfbz,sfczy,tfczy,zfczy,sfrq,tfrq,zfrq,jzbz,ph,mscf from mzsf_mzfymx where tmh=' + #39 + fpdy_tmh + #39
      + ' and sfbz=1 and tfbz=0 and zfbz=0'
      + ' union all'
      + ' select id,rtrim(tmh) tmh,rtrim(brxm) brxm,brxb,brnl,fylb,sjbh,rtrim(cfbh) cfbh,fydm,fysl,fydj,fyzje,sszje,zkje,ghks,kdks,czks,kdys,czys,sfbz,tfbz,zfbz,sfczy,tfczy,zfczy,sfrq,tfrq,zfrq,jzbz,ph,mscf from mzsf_mzfymx_bf where tmh=' + #39 + fpdy_tmh + #39
      + ' and sfbz=1 and tfbz=0 and zfbz=0) lsb) a '+
      'join sys_ksdm b on a.czks=b.dm  ' +
      'join sys_czy d on a.sfczy=d.dm  ' +
      'join sys_czy e on a.kdys=e.dm  ' +
      'join sys_fylb c on a.fylb=c.dm '+
      'join mzsf_fpdy_mx f on f.sjbh=a.sjbh and f.fydm=a.fydm and f.zje=a.sszje and f.sfid=a.id '+
      ' where f.sjbhNew>=' + inttostr(sjbhqh) + ' and f.sjbhNew<=' + inttostr(sjbhzh);
    qry_pub.Open;
    qry_pub.First;

    fzI := 0;
    while not qry_pub.Eof do
    begin
      fzI := fzI + 1;
      SetLength(vStr, 1800);
      DM_data.qry_pub.Close;       //substring(c.kmdm,3,2)
      DM_data.qry_pub.SQL.Text := 'select a.sfczy,a.tmh,a.brxm,c.kmdm kmdm,c.kmmc,SUM(a.sszje) sszje ' +
        'from  (select distinct * from (select id,rtrim(tmh) tmh,rtrim(brxm) brxm,brxb,brnl,fylb,sjbh,rtrim(cfbh) cfbh,fydm,fysl,fydj,fyzje,sszje,zkje,ghks,kdks,czks,kdys,czys,sfbz,tfbz,zfbz,sfczy,tfczy,zfczy,sfrq,tfrq,zfrq,jzbz,ph,mscf from mzsf_mzfymx where tmh=' + #39 + fpdy_tmh + #39
      + ' and sfbz=1 and tfbz=0 and zfbz=0'
      + ' union all'
      + ' select id,rtrim(tmh) tmh,rtrim(brxm) brxm,brxb,brnl,fylb,sjbh,rtrim(cfbh) cfbh,fydm,fysl,fydj,fyzje,sszje,zkje,ghks,kdks,czks,kdys,czys,sfbz,tfbz,zfbz,sfczy,tfczy,zfczy,sfrq,tfrq,zfrq,jzbz,ph,mscf from mzsf_mzfymx_bf where tmh=' + #39 + fpdy_tmh + #39
      + ' and sfbz=1 and tfbz=0 and zfbz=0) lsb) a '+
        'join mzsf_kjkmmx b on a.fydm=b.fydm ' +
        'join mzsf_kjkmzb c on b.kmdm = c.kmdm and left(c.kmdm,2)=' + #39 + '01' + #39 + ' ' +
        'where a.sjbh=:sjbh ' +
//      'where a.ph = :mz_ph ' +
      'group by a.sfczy,a.tmh,a.brxm,c.kmdm,c.kmmc';
//      DM_data.qry_pub.Parameters.ParamByName( 'mz_ph' ).Value := mz_ph;
      DM_data.qry_pub.Parameters.ParamByName('sjbh').Value := qry_pub.FieldByName('sjbh').AsString;
      DM_data.qry_pub.Open;
      if DM_data.qry_pub.RecordCount > 0 then
      begin
        DM_data.qry_pub.First;
        if fzI = 1 then
        begin
          ZrTxt := '<&票据><&票据头>门诊号=' + qry_pub.FieldByName('tmh').AsString + char(VK_TAB)
            + '人员类别=' + qry_pub.FieldByName('fylb').AsString + char(VK_TAB)
            + '就诊号=' + dm_data.qry_pub.FieldByName('tmh').AsString + char(VK_TAB)
            + '姓名=' + dm_data.qry_pub.FieldByName('brxm').AsString + char(VK_TAB)
            + '就诊科室=' + qry_pub.FieldByName('ksmc').AsString + Char(VK_TAB)
            + '收款人员=' + qry_pub.FieldByName('sfczy').AsString + Char(VK_TAB)
            + '医生姓名=' + qry_pub.FieldByName('kdys').AsString + Char(VK_TAB)
            + '</&票据头><&收费项目>';
        end;
        while not DM_data.qry_pub.Eof do
        begin
          ZrTxt := ZrTxt + '收费项目=' + dm_data.qry_pub.FieldByName('kmdm').AsString + char(VK_TAB)
//          + '计费数量=' + dm_data.qry_pub.FieldByName( 'fysl' ).AsString + char( VK_TAB )
//          + '收费标准=' + dm_data.qry_pub.FieldByName( 'fydj' ).AsString + char( VK_TAB )
            + '金额=' + dm_data.qry_pub.FieldByName('sszje').AsString + char(VK_TAB);
          DM_data.qry_pub.Next;
        end;
        if fzI = qry_pub.RecordCount then
        begin
          ZrTxt := ZrTxt + '</&收费项目></&票据>';
  //        if  LoadbsjkDll then
  //          if PAdvConnect_dy = 1 then //登录博思开票系统
                PZrPj_dy(PChar(ZrTxt), 1, '14004003', '无备注', PChar(vStr)); //博思开票
  //          else ShowMessage('登录博思系统失败');

          if Pos('成功', vStr) > 0 then
          begin
            lists := TStringList.Create;
            ExtractStrings([','], [], Pchar(vStr), lists);
            DM_data.qry_pub.Close;
            DM_data.qry_pub.SQL.Text := 'insert into sys_bsjk(pjmc,pjlbh,pjh,je,zch) values (:pjmc,:pjlbh,:pjh,:je,:zch)';
            DM_data.qry_pub.Parameters.ParamByName('pjmc').Value := '门诊发票';
            DM_data.qry_pub.Parameters.ParamByName('pjlbh').Value := lists.Strings[0];
            DM_data.qry_pub.Parameters.ParamByName('pjh').Value := lists.Strings[1];
            DM_data.qry_pub.Parameters.ParamByName('je').Value := StrToFloat(lists.Strings[2]);
            DM_data.qry_pub.Parameters.ParamByName('zch').Value := lists.Strings[3];
            DM_data.qry_pub.ExecSQL;
          end
          else
          begin
            Application.MessageBox(PChar('错误:' + vStr), '发票打印错误', MB_ICONHAND);
          end;
        end;
      end
      else
      begin
        Application.MessageBox('未能查询到缴费信息！', '提示信息', MB_ICONHAND);
      end;
      qry_pub.Next;
    end;
  end
  else if pub_yydm = '0015' then //打印正规发票
  begin
    qry_fymx.Close;
    qry_fymx.SQL.Text := ' select a.sjbhNew,a.fymc,a.zje,a.dyrq,a.dybz,b.tmh,b.brxm,b.brxb,b.brnl,'
      + ' b.fylb,b.sjbh,b.cfbh,b.fydm,b.fysl,b.fydj,b.fyzje,b.sszje,b.zkje,b.ghks,b.kdks,b.czks,b.kdys,b.czys,b.sfbz,b.tfbz,b.zfbz,b.sfczy,'
      + ' b.tfczy,b.zfczy,b.sfrq,b.tfrq,b.zfrq,b.jzbz,b.ph,b.mscf,c.mc sfczymc,d.mc ksmc,isnull(sb.zhzf,0) zhzf,zje-isnull(sb.zhzf,0) xjzf'
      + ' from mzsf_fpdy_mx a '
      + ' join (select distinct * from (select rtrim(tmh) tmh,rtrim(brxm) brxm,brxb,brnl,'
      + ' fylb,sjbh,rtrim(cfbh) cfbh,fydm,fysl,fydj,fyzje,sszje,zkje,ghks,kdks,czks,kdys,czys,sfbz,tfbz,zfbz,sfczy,tfczy,zfczy,sfrq,tfrq,zfrq,'
      + ' jzbz,ph,mscf from mzsf_mzfymx where tmh=' + #39 + fpdy_tmh + #39
      + ' and sfbz=1 and tfbz=0 and zfbz=0'
      + ' union all'
      + ' select rtrim(tmh) tmh,rtrim(brxm) brxm,brxb,brnl,'
      + ' fylb,sjbh,rtrim(cfbh) cfbh,fydm,fysl,fydj,fyzje,sszje,zkje,ghks,kdks,czks,kdys,czys,sfbz,tfbz,zfbz,sfczy,tfczy,zfczy,sfrq,tfrq,zfrq,'
      + ' jzbz,ph,mscf from mzsf_mzfymx_bf where tmh=' + #39 + fpdy_tmh + #39
      + ' and sfbz=1 and tfbz=0 and zfbz=0) lsb) b on a.sjbh=b.sjbh and a.fydm=b.fydm and a.zje=b.sszje'
      + ' join sys_czy c on b.sfczy=c.dm'
      + ' join sys_ksdm d on b.czks=d.dm'
      + ' left join sbjk_sbjs sb on a.sjbh=sb.sjbh and b.ph=sb.ph and sb.fylb=2 and len(sb.sjbh)<12 and sb.yxbz=1'
      + ' where a.sjbhNew>=' + inttostr(sjbhqh) + ' and a.sjbhNew<=' + inttostr(sjbhzh);
    qry_fymx.Open;
    {
    //添加诊查调增费
    DM_data.qry_pub1.Close;
    DM_data.qry_pub1.SQL.Text := 'select a.sjbhNew,a.fymc,a.zje,a.dyrq,a.dybz,a.tmh,b.*,c.dymc from mzsf_fpdy_mx a,mzgh_ghmx b,sys_kjsfxm c'
      + ' where a.sjbhNew>=' + inttostr(sjbhqh) + ' and a.sjbhNew<=' + inttostr(sjbhzh)
      + ' and a.sjbh=b.ghdhm and a.fydm=b.fydm and b.zcf_tc>0 and c.fydm=' + #39 + '8488' + #39;
    DM_data.qry_pub1.Open;
    if DM_data.qry_pub1.RecordCount > 0 then
    begin
      DM_data.qry_pub1.First;
      while not DM_data.qry_pub1.Eof do
      begin
        qry_fymx.Edit;
        qry_fymx.FieldByName('sjbhNew').Value := DM_data.qry_pub1.FieldByName('sjbhNew').Value;
        qry_fymx.FieldByName('fymc').Value := DM_data.qry_pub1.FieldByName('dymc').Value;
        qry_fymx.FieldByName('zje').Value := DM_data.qry_pub1.FieldByName('zcf_tc').Value;
        qry_fymx.FieldByName('dyrq').Value := DM_data.qry_pub1.FieldByName('dyrq').Value;
        qry_fymx.FieldByName('dybz').Value := DM_data.qry_pub1.FieldByName('dybz').Value;
        qry_fymx.FieldByName('tmh').Value := DM_data.qry_pub1.FieldByName('tmh').Value;
        qry_fymx.FieldByName('brxm').Value := DM_data.qry_pub1.FieldByName('brxm').Value;
        qry_fymx.FieldByName('brxb').Value := DM_data.qry_pub1.FieldByName('brxb').Value;
        qry_fymx.FieldByName('brnl').Value := DM_data.qry_pub1.FieldByName('brnl').Value;
        qry_fymx.FieldByName('fylb').Value := '';
        qry_fymx.FieldByName('sjbh').Value := DM_data.qry_pub1.FieldByName('ghdhm').Value;
        qry_fymx.FieldByName('cfbh').Value := '';
        qry_fymx.FieldByName('fydm').Value := '8488';
        qry_fymx.FieldByName('fysl').Value := 1;
        qry_fymx.FieldByName('fydj').Value := DM_data.qry_pub1.FieldByName('zcf_tc').Value;
        qry_fymx.FieldByName('fyzje').Value := DM_data.qry_pub1.FieldByName('zcf_tc').Value;
        qry_fymx.FieldByName('sszje').Value := DM_data.qry_pub1.FieldByName('zcf_tc').Value;
        qry_fymx.FieldByName('zkje').Value := 0;
        qry_fymx.FieldByName('ghks').Value := DM_data.qry_pub1.FieldByName('ghkb').Value;
        qry_fymx.FieldByName('kdks').Value := DM_data.qry_pub1.FieldByName('ghkb').Value;
        qry_fymx.FieldByName('czks').Value := DM_data.qry_pub1.FieldByName('ghkb').Value;
        qry_fymx.FieldByName('kdys').Value := DM_data.qry_pub1.FieldByName('ghys').Value;
        qry_fymx.FieldByName('czys').Value := DM_data.qry_pub1.FieldByName('ghys').Value;
        qry_fymx.FieldByName('sfbz').Value := 1;
        qry_fymx.FieldByName('tfbz').Value := 0;
        qry_fymx.FieldByName('zfbz').Value := 0;
        qry_fymx.FieldByName('sfczy').Value := DM_data.qry_pub1.FieldByName('sfy').Value;
        qry_fymx.FieldByName('tfczy').Value := '';
        qry_fymx.FieldByName('zfczy').Value := '';
        qry_fymx.FieldByName('sfrq').Value := DM_data.qry_pub1.FieldByName('sfrq').Value;
        qry_fymx.FieldByName('tfrq').Value := DM_data.qry_pub1.FieldByName('sfrq').Value;
        qry_fymx.FieldByName('zfrq').Value := DM_data.qry_pub1.FieldByName('sfrq').Value;
        qry_fymx.FieldByName('jzbz').Value := 1;
        qry_fymx.FieldByName('ph').Value := '';
        qry_fymx.FieldByName('mscf').Value := '';
        qry_fymx.FieldByName('sfczymc').Value := '';
        qry_fymx.FieldByName('ksmc').Value := '';
        qry_fymx.FieldByName('zhzf').Value := 0;
        qry_fymx.FieldByName('xjzf').Value := 0;
        qry_fymx.Post;
        DM_data.qry_pub1.Next;
      end;
    end;
    }
  end
  else if pub_yydm='0256' then   //睢县医院代码
  begin
    qry_fymx.Close;
    qry_fymx.SQL.Text := 'select a.sjbhNew,a.fymc,a.zje,a.dyrq,a.dybz,b.*,c.mc sfczymc,d.mc ksmc'
      + ' from mzsf_fpdy_mx a '
      + ' join (select distinct * from (select id,rtrim(tmh) tmh,rtrim(brxm) brxm,brxb,brnl,fylb,sjbh,rtrim(cfbh) cfbh,fydm,fysl,fydj,fyzje,sszje,zkje,ghks,kdks,czks,kdys,czys,sfbz,tfbz,zfbz,sfczy,tfczy,zfczy,sfrq,tfrq,zfrq,jzbz,ph,mscf from mzsf_mzfymx where tmh=' + #39 + fpdy_tmh + #39
      + ' and sfbz=1 and tfbz=0 and zfbz=0'
      + ' union all'
      + ' select id,rtrim(tmh) tmh,rtrim(brxm) brxm,brxb,brnl,fylb,sjbh,rtrim(cfbh) cfbh,fydm,fysl,fydj,fyzje,sszje,zkje,ghks,kdks,czks,kdys,czys,sfbz,tfbz,zfbz,sfczy,tfczy,zfczy,sfrq,tfrq,zfrq,jzbz,ph,mscf from mzsf_mzfymx_bf where tmh=' + #39 + fpdy_tmh + #39
      + ' and sfbz=1 and tfbz=0 and zfbz=0) lsb) b on a.sjbh=b.sjbh and a.fydm=b.fydm and a.zje=b.sszje and  substring(a.sfid,charindex(''b'',a.sfid)+1,len(a.sfid))=convert(varchar,b.id) '
      + ' join sys_czy c on b.sfczy=c.dm'
      + ' join sys_ksdm d on b.czks=d.dm'
      + ' where a.sjbhNew>=' + inttostr(sjbhqh) + ' and a.sjbhNew<=' + inttostr(sjbhzh)
      + ' order by a.sjbhNew';
    qry_fymx.Open;
    //ShowMessage(qry_fymx.SQL.Text );
  end else
  begin
    qry_fymx.Close;
    qry_fymx.SQL.Text := 'select a.sjbhNew,a.fymc,a.zje,a.dyrq,a.dybz,b.*,c.mc sfczymc,d.mc ksmc'
      + ' from mzsf_fpdy_mx a '
      + ' join (select distinct * from (select id,rtrim(tmh) tmh,rtrim(brxm) brxm,brxb,brnl,fylb,sjbh,rtrim(cfbh) cfbh,fydm,fysl,fydj,fyzje,sszje,zkje,ghks,kdks,czks,kdys,czys,sfbz,tfbz,zfbz,sfczy,tfczy,zfczy,sfrq,tfrq,zfrq,jzbz,ph,mscf from mzsf_mzfymx where tmh=' + #39 + fpdy_tmh + #39
      + ' and sfbz=1 and tfbz=0 and zfbz=0'
      + ' union all'
      + ' select id,rtrim(tmh) tmh,rtrim(brxm) brxm,brxb,brnl,fylb,sjbh,rtrim(cfbh) cfbh,fydm,fysl,fydj,fyzje,sszje,zkje,ghks,kdks,czks,kdys,czys,sfbz,tfbz,zfbz,sfczy,tfczy,zfczy,sfrq,tfrq,zfrq,jzbz,ph,mscf from mzsf_mzfymx_bf where tmh=' + #39 + fpdy_tmh + #39
      + ' and sfbz=1 and tfbz=0 and zfbz=0) lsb) b on a.sjbh=b.sjbh and a.fydm=b.fydm and a.zje=b.sszje and a.sfid=convert(varchar,b.id) '
      + ' join sys_czy c on b.sfczy=c.dm'
      + ' join sys_ksdm d on b.czks=d.dm'
      + ' where a.sjbhNew>=' + inttostr(sjbhqh) + ' and a.sjbhNew<=' + inttostr(sjbhzh)
      + ' order by a.sjbhNew';
    qry_fymx.Open;
  end;
  if qry_fymx.RecordCount > 0 then
  begin
    qry_fymx.Sort := 'sjbhNew ASC';
    v_Infor_fy := func_fyje_Calc(qry_fymx); //计算总金额、实收总金额、收据数量

    if Copy(pub_mzsjlx, 1, 4) = '0101' then //打印四川收据
    begin
      //Print_mzsj_sc( qry_fymx, qry_fymx.FieldByName( 'brxm' ).AsString, False, False, v_Infor_fy.fyje,
      //v_Infor_fy.ssje, v_Infor_fy.ssje, v_Infor_fy.sjsl );
      Print_fpdy_sc(qry_fymx, qry_fymx.FieldByName('brxm').AsString, False, False,
        v_Infor_fy.fyje, v_Infor_fy.ssje, 0.0, v_Infor_fy.sjsl);
    end
    else
      if pub_mzsjlx = '020101' then //打印陕西收据
      begin
        //        Proc_mzsj_sx;
      end
      else
        if pub_mzsjlx = '020102' then //打印陕西收据(三打)
        begin
          //          Proc_mzsj_sx3d;
        end
        else
          if pub_mzsjlx = '020103' then //打印陕西收据(汉台区妇幼保健院)
          begin
            //            Proc_mzsj_sx_htqfybjy;
          end
          else
            if pub_mzsjlx = '030101' then //打印新疆收据
            begin
              //              Proc_mzsj_xj;
            end
            else
              if pub_mzsjlx = '040101' then //打印江西收据
              begin
                //                Proc_mzsj_jx;
              end
              else
                if (pub_mzsjlx = '050101') or (pub_mzsjlx = '050104') then //打印湖北收据格式一
                begin
                  //                  Proc_mzsj_hb1;
                  Application.CreateForm(Tfrm_repo_hjsf, frm_repo_hjsf);
                  frm_repo_hjsf.QRL_czy_hb.Caption := ' ';
                  qry_fymx.Sort := 'sjbh ASC';
                  frm_repo_hjsf.QRL_czy_hb.Caption := pub_czydm + '#' + copy(pub_czyxm, 1, 2);
                  frm_repo_hjsf.QuickRep_hb.DataSet := qry_fymx;
                  frm_repo_hjsf.QRDB_yymc_hb.Caption := pub_yymc;
                  frm_repo_hjsf.QRDB_cfbhc_hb.DataSet := qry_fymx;
                  frm_repo_hjsf.QRDB_sfrq_hb.DataSet := qry_fymx;
                  frm_repo_hjsf.QRDB_sjbh_hb.DataSet := qry_fymx;
                  frm_repo_hjsf.QRDB_brxm_hb.DataSet := qry_fymx;
                  frm_repo_hjsf.QRDB_ysmc_hb.DataSet := qry_fymx;
                  frm_repo_hjsf.QRDB_fydymc_hb.DataSet := qry_fymx;
                  frm_repo_hjsf.QRDB_sszje_hb.DataSet := qry_fymx;
                  frm_repo_hjsf.QuickRep_hb.Print;
                  //    frm_repo_hjsf.QuickRep_hb.Preview;
                  try
                    frm_repo_hjsf.Free
                  except
                  end;
                end
                else
                  if pub_mzsjlx = '050102' then //打印湖北收据格式二
                  begin
                    //                    Proc_mzsj_hb2( mz_ph );
                  end
                  else
                    if pub_mzsjlx = '050103' then //打印湖北陨西疾控中心票据
                    begin
                      //                      Proc_mzsj_hb3( mz_ph );
                    end
                    else
                      if pub_mzsjlx = '060101' then //打印西藏收据
                      begin
                        //                        Proc_mzsj_xz;
                      end
                      else
                        if pub_mzsjlx = '070101' then //打印甘肃收据格式二
                        begin
                          //                          Proc_mzsj_gs1;
                        end else
                        if pub_yydm = '0256' then  //睢县中医院打印处理
                        begin
                            proc_mzsj_sxzyy(qry_fymx.FieldByName('ph').AsString);
                        end
                        else
                           if (pub_yydm='0240') and
                           ( pub_mzsjlx = '999999') then
                           begin
                             Proc_mzsj_sc_kb;
                           end
                           else  if (pub_yydm='0225')      //镇坪县医院发票打印
                            and ( pub_mzsjlx = '999999') then
                           begin
                              Proc_mzsj_sc_kb;
                           end;

  end;
  //还原原来默认打印机
  if v_IsPrinterJoin then
    Proc_ChangePrinter(v_PrinterIndex_old, False);
  proc_fpdy_sjbh; //取得新收据编号
  //--------------------------------------------------------------
end;
//
procedure Tfrm_fpdy.proc_mzsj_sxzyy(ph:string); //睢县中医院
var
  v_kmmc,v_kmmc1,v_kmmc2,v_kmmc3,v_czks, v_ksdm1, v_ksdm2, v_ksdm3: string;
  v_dydm,cg1,cg2,cg3,i,j: integer;
  czksje1, czksje2, czksje3: Currency;
  qry_sjdy: tadoquery;
  v_sjbh1,v_sjbh2,v_sjbh3:string;
  v_sjbh_new,v_sjbh1_new,v_sjbh2_new,v_sjbh3_new:string;
begin
  qry_sjdy := tadoquery.Create(nil);
  qry_sjdy.Connection := dm_data.ado_mydata;
  application.createform( tfrm_mzbb, frm_mzbb );
  qry_fymx.First;
  v_sjbh1:='';
  v_sjbh2:='';
  while not  qry_fymx.Eof do
  begin
   v_sjbh1:=qry_fymx.FieldByName( 'sjbh' ).asstring;
   v_sjbh1_new :=qry_fymx.FieldByName( 'sjbhNew' ).asstring;
   if v_sjbh1_new<>v_sjbh2_new then
   begin
    v_czks := '';
    v_kmmc := '';
    v_ksdm1 := '';
    v_ksdm2 := '';
    v_ksdm3 := '';
    v_kmmc1 := '';
    v_kmmc2 := '';
    v_kmmc3 := '';
    czksje1 := 0.00;
    czksje2 := 0.00;
    czksje3 := 0.00;
    cg1 := 0;
    cg2 := 0;
    cg3 := 0;

    frm_mzbb.QRczks1.Caption := '';
    frm_mzbb.qrje1.Caption := '';
    frm_mzbb.qrmemo1.lines.clear;

    frm_mzbb.qrje2.Caption := '';
    frm_mzbb.QRczks2.Caption := '';
    frm_mzbb.qrmemo2.lines.clear;

    frm_mzbb.qrje3.Caption := '';
    frm_mzbb.QRczks3.Caption := '';
    frm_mzbb.qrmemo3.lines.clear;
    frm_mzbb.QRDBText35.DataField:='sjbhNew';
    frm_mzbb.QRDBText35.DataSet:=qry_fymx;
    frm_mzbb.QRDBText37.DataField:='sjbhNew';
    frm_mzbb.QRDBText37.DataSet:=qry_fymx;
    frm_mzbb.QRDBText39.DataField:='sjbhNew';
    frm_mzbb.QRDBText39.DataSet:=qry_fymx;
    frm_mzbb.QRDBText78.DataField:='sjbhNew';
    frm_mzbb.QRDBText78.DataSet:=qry_fymx;
    frm_mzbb.QRDBText79.DataField:='sjbhNew';
    frm_mzbb.QRDBText79.DataSet:=qry_fymx;
    frm_mzbb.QRDBText80.DataField:='sjbhNew';
    frm_mzbb.QRDBText80.DataSet:=qry_fymx;
   // frm_mzbb.QRDBText35.DataSet:=frm_fpdy.Qry_sjdy1;
    //frm_mzbb.QRDBText37.DataSet:=frm_fpdy.Qry_sjdy1;
   // frm_mzbb.QRDBText39.DataSet:=frm_fpdy.Qry_sjdy1;
    //frm_mzbb.QRDBText78.DataSet:=frm_fpdy.Qry_sjdy1;
    //frm_mzbb.QRDBText79.DataSet:=frm_fpdy.Qry_sjdy1;
    //frm_mzbb.QRDBText80.DataSet:=frm_fpdy.Qry_sjdy1;
    frm_mzbb.QRDBText36.DataSet:=frm_fpdy.Qry_sjdy1;
    frm_mzbb.QRDBText34.DataSet:=frm_fpdy.Qry_sjdy1;
    frm_mzbb.QRDBText38.DataSet:=frm_fpdy.Qry_sjdy1;
    frm_mzbb.QRDBText43.DataSet:=frm_fpdy.Qry_sjdy1;
    frm_mzbb.QRDBText52.DataSet:=frm_fpdy.Qry_sjdy1;
    frm_mzbb.QRDBText53.DataSet:=frm_fpdy.Qry_sjdy1;
    frm_mzbb.QRDBText44.DataSet:=frm_fpdy.Qry_sjdy1;
    frm_mzbb.QRDBText48.DataSet:=frm_fpdy.Qry_sjdy1;
    frm_mzbb.QRDBText49.DataSet:=frm_fpdy.Qry_sjdy1;
    frm_mzbb.QRDBText40.DataSet:=frm_fpdy.Qry_sjdy1;
    frm_mzbb.QRDBText41.DataSet:=frm_fpdy.Qry_sjdy1;
    frm_mzbb.QRDBText42.DataSet:=frm_fpdy.Qry_sjdy1;
    frm_mzbb.QRDBTxt_kmmc1.DataSet:=frm_fpdy.Qry_sjdy1;
    frm_mzbb.QRDBTxt_kmmc2.DataSet:=frm_fpdy.Qry_sjdy1;
    frm_mzbb.QRDBTxt_kmmc3.DataSet:=frm_fpdy.Qry_sjdy1;
    frm_mzbb.QRDBTxt_je.DataSet:=frm_fpdy.Qry_sjdy1;

    qry_sjdy.Close;
    qry_sjdy.SQL.Text := 'exec mzsf_mzsj_js_dx_hnsx''' + qry_fymx.FieldByName( 'sjbh' ).asstring + ''',0'+','+#39+v_sjbh1_new+#39;
    qry_sjdy.Open;

    qry_sjdy1.Close;
   // qry_sjdy1.SQL.Text := 'exec mzsf_mzsj_js_dx_hnsx ''' + qry_fymx.FieldByName( 'sjbh' ).asstring + ''',1';
    qry_sjdy1.SQL.Text := 'exec mzsf_mzsj_js_dx_hnsx''' + qry_fymx.FieldByName( 'sjbh' ).asstring + ''',1'+','+#39+v_sjbh1_new+#39;
    qry_sjdy1.Open;
    Qry_sjdy1.First;
    frm_mzbb.QuickRep_sxzyy.dataset := qry_sjdy1;
    v_dydm := 0;
    qry_sjdy.First;
    v_ksdm1 := qry_sjdy.FieldByName( 'czks' ).asstring;
    v_kmmc1 := qry_sjdy.FieldByName( 'kmmc' ).AsString;
    while not qry_sjdy.Eof do
    begin
      v_czks := qry_sjdy.FieldByName( 'czks' ).asstring;
      v_kmmc := qry_sjdy.FieldByName( 'kmmc' ).AsString;
      if v_ksdm1 = v_czks then
      begin
        if ( v_kmmc1 = v_kmmc ) then
        begin
          if (cg1 <= 2 ) then
          begin
            v_dydm := 1;
          end
          else
          if (cg1 > 2 ) and ( cg2 <= 2 ) then
          begin
            v_dydm := 2;
          end
          else
          begin
            v_dydm := 3;
          end;

        end
        else
        if ( v_kmmc2 = '' ) then
        begin
          v_dydm := 2;
        end
        else
        if ( v_kmmc2 = v_kmmc ) then
        begin
          if ( cg2 <= 2 ) then
          begin
            v_dydm := 2;
          end
          else
          if ( cg2 > 2 ) then
          begin
            v_dydm := 3;
          end;

        end
        else
        if ( v_kmmc3 = '' ) then
        begin
          v_dydm := 3;
        end
        else
        if ( v_kmmc3 = v_kmmc ) then
        begin
          if (cg3 <= 2) then
          begin
            v_dydm := 3;
          end;
        end
        else
        begin
          Application.MessageBox('收据联分配错误！！','提示',MB_OK);
          Exit;
        end;          

      end
      else
      if v_ksdm2 = '' then
      begin
        v_dydm := v_dydm+1;
      end
      else
      if v_ksdm2 = v_czks then
      begin
        if ( v_kmmc2 = v_kmmc ) then
        begin
          if ( cg2 <= 2 ) then
          begin
            v_dydm := 2;
          end
          else
          if ( cg2 > 2 ) then
          begin
            v_dydm := 3;
          end;

        end
        else
        if ( v_kmmc3 = '' ) then
        begin
          v_dydm := 3;
        end
        else
        if ( v_kmmc3 = v_kmmc ) then
        begin
          if (cg3 <= 2) then
          begin
            v_dydm := 3;
          end;
        end
        else
        begin
          Application.MessageBox('收据联分配错误！！','提示',MB_OK);
          Exit;
        end;
        
      end
      else
      if v_ksdm3 = '' then
      begin
        v_dydm := v_dydm+1;
      end
      else
      begin
        if ( v_kmmc3 = v_kmmc ) then
        begin
          if (cg3 <= 2) then
          begin
            v_dydm := 3;
          end;
        end
        else
        begin
          Application.MessageBox('收据联分配错误！！','提示',MB_OK);
          Exit;
        end;
      end;

      if v_dydm = 1 then
      begin
        cg1 := cg1 + 1;
        v_ksdm1 := v_czks;
        v_kmmc1 := v_kmmc;
        frm_mzbb.QRkdks1.Caption := qry_sjdy.FieldByName( 'kdksmc' ).asstring;
        frm_mzbb.QRkdys1.Caption := qry_sjdy.FieldByName( 'kdysmc' ).asstring;
        frm_mzbb.QRczks1.Caption := qry_sjdy.FieldByName( 'czksmc' ).asstring;
        if frm_mzbb.QRMemo1.Lines.Count = 0 then
        begin
          if qry_sjdy.FieldByName( 'kmmc' ).asstring <> qry_sjdy.FieldByName( 'xmmc' ).asstring then
          begin
            frm_mzbb.qrmemo1.lines.add( qry_sjdy.FieldByName( 'kmmc' ).asstring );
            frm_mzbb.qrmemo1.lines.add( qry_sjdy.FieldByName( 'xmmc' ).asstring );
          end
          else
            frm_mzbb.qrmemo1.lines.add( qry_sjdy.FieldByName( 'kmmc' ).asstring );
        end
        else
        begin
          frm_mzbb.qrmemo1.lines.add( qry_sjdy.FieldByName( 'xmmc' ).asstring );
        end;
        czksje1 := czksje1 + qry_sjdy.FieldByName( 'sszje' ).AsCurrency;
      end
      else
      if v_dydm = 2 then
      begin
        cg2 := cg2 + 1;
        v_ksdm2 := v_czks;
        v_kmmc2 := v_kmmc;
        frm_mzbb.QRkdks2.Caption := qry_sjdy.FieldByName( 'kdksmc' ).asstring;
        frm_mzbb.QRkdys2.Caption := qry_sjdy.FieldByName( 'kdysmc' ).asstring;
        if frm_mzbb.QRMemo2.Lines.Count = 0 then
        begin
          if qry_sjdy.FieldByName( 'kmmc' ).asstring <> qry_sjdy.FieldByName( 'xmmc' ).asstring then
          begin
            frm_mzbb.qrmemo2.lines.add( qry_sjdy.FieldByName( 'kmmc' ).asstring );
            frm_mzbb.qrmemo2.lines.add( qry_sjdy.FieldByName( 'xmmc' ).asstring );
          end
          else
            frm_mzbb.qrmemo2.lines.add( qry_sjdy.FieldByName( 'kmmc' ).asstring );
        end
        else
        begin
          frm_mzbb.qrmemo2.lines.add( qry_sjdy.FieldByName( 'xmmc' ).asstring );
        end;
        frm_mzbb.QRczks2.Caption := qry_sjdy.FieldByName( 'czksmc' ).asstring;
        czksje2 := czksje2 + qry_sjdy.FieldByName( 'sszje' ).AsCurrency;
      end
      else
      if v_dydm = 3 then
      begin
        cg3 := cg3 + 1;
        v_ksdm3 := v_czks;
        v_kmmc3 := v_kmmc;
        frm_mzbb.QRkdks3.Caption := qry_sjdy.FieldByName( 'kdksmc' ).asstring;
        frm_mzbb.QRkdys3.Caption := qry_sjdy.FieldByName( 'kdysmc' ).asstring;
        frm_mzbb.QRczks3.Caption := qry_sjdy.FieldByName( 'czksmc' ).asstring;
        if frm_mzbb.QRMemo3.Lines.Count = 0 then
        begin
          if qry_sjdy.FieldByName( 'kmmc' ).asstring <> qry_sjdy.FieldByName( 'xmmc' ).asstring then
          begin
            frm_mzbb.qrmemo3.lines.add( qry_sjdy.FieldByName( 'kmmc' ).asstring );
            frm_mzbb.qrmemo3.lines.add( qry_sjdy.FieldByName( 'xmmc' ).asstring );
          end
          else
            frm_mzbb.qrmemo3.lines.add( qry_sjdy.FieldByName( 'kmmc' ).asstring );
        end
        else
        begin
          frm_mzbb.qrmemo3.lines.add( qry_sjdy.FieldByName( 'xmmc' ).asstring );
        end;
        czksje3 := czksje3 + qry_sjdy.FieldByName( 'sszje' ).AsCurrency;
      end;
      qry_sjdy.Next;
    end;

     frm_mzbb.qrje1.Caption := floattostr( czksje1 );
     frm_mzbb.qrje2.Caption := floattostr( czksje2 );
     frm_mzbb.qrje3.Caption := floattostr( czksje3 );
     frm_mzbb.QRL_sfczymc1.Caption := pub_czyxm;
     frm_mzbb.QRL_sfczymc2.Caption := pub_czyxm;
     frm_mzbb.QRL_sfczymc3.Caption := pub_czyxm;
     frm_mzbb.QRL_sfczymc4.Caption := pub_czyxm;
     frm_mzbb.QRL_sfczymc5.Caption := pub_czyxm;
     frm_mzbb.QRL_sfczymc6.Caption := pub_czyxm;
     frm_mzbb.QRLb_dxje.Caption := NumberToMoney( czksje1 + czksje2 + czksje3 );
     frm_mzbb.fpcd1.Caption:='补打';
     frm_mzbb.fpcd2.Caption:='补打';
     frm_mzbb.fpcd3.Caption:='补打';
     frm_mzbb.QuickRep_sxzyy.Print;
     v_sjbh2_new:=v_sjbh1_new;
    end;
    qry_fymx.Next;
  end;

  try
    frm_mzbb.free
  except
  end;
end;

procedure Tfrm_fpdy.QRDB_sjbh_oldPrint(sender: TObject; var Value: string);
var
  qry_sbjs: Tadoquery;
  zfy: real;
begin
//  QRL_kyhsfbz_sc.Caption := '';
//  qrl_zhzf.Caption := '';
//  qry_sbjs := Tadoquery.Create( nil );
//  qry_sbjs.Connection := DM_data.ado_mydata;
//  qry_sbjs.SQL.Text := 'select a.*,b.je-a.zhzf-a.tczf sbxjzf,isnull(a.jshye,0) jshye from sbjk_sbjS a,sbjk_sbjs_mzjsmx b where ' +
//    ' b.ph =' + #39 + value + #39 + ' and b.yxbz=  1 and b.jsbh = a.zyh and a.fylb = 2 and a.yxbz = 1';
//  try
//    qry_sbjs.Open;
//    if qry_sbjs.RecordCount > 0 then
//    begin
//      if qry_sbjs.FieldByName( 'qt1' ).Value = 'SJ' then
//      begin
//        QRL_kyhsfbz_sc.Caption := ' 统筹:￥' + format( '%0.2f', [qry_sbjs.FieldByName( 'tczf' ).AsFloat] ) +
//        ' 现金:￥' + format( '%0.2f', [qry_sbjs.FieldByName( 'sbxjzf' ).AsFloat] ) +
//        ' 卡余额:￥' + format( '%0.2f', [qry_sbjs.FieldByName( 'jshye' ).AsFloat] );
//        qrl_zhzf.Caption := '社保卡支付:￥' + format( '%0.2f', [qry_sbjs.FieldByName( 'zhzf' ).AsFloat] );
//      end;
//    end;
//  except
//  end;
end;

procedure Tfrm_fpdy.QRDB_sjbh_scPrint(sender: TObject; var Value: string);
var
  qry_sbjssj, qry_sbpz: TADOQuery;
  sblb, tcdymc, zhdymc, xjdymc, jsfs, zhye, sjh: string;
  yedy: boolean;
begin
  qry_sbjssj := TADOQuery.Create(nil);
  qry_sbpz := TADOQuery.Create(nil);
  qrlbl1.Caption := '';
  try
    qry_sbjssj.Connection := DM_data.ado_mydata;
    qry_sbpz.Connection := DM_data.ado_mydata;
    dm_data.qry_pub.Close;
    dm_data.qry_pub.SQL.Text := 'select * from mzsf_fpdy_mx a,mzsf_mzfymx b where sjbhnew =' + #39 + value + #39 + ' and a.sjbh =b.sjbh';
    DM_data.qry_pub.Open;
    if DM_data.qry_pub.RecordCount<=0 then
    begin
      dm_data.qry_pub.SQL.Clear;
      dm_data.qry_pub.SQL.Text := 'select * from mzsf_fpdy_mx a,mzsf_mzfymx_bf b where sjbhnew =' + #39 + value + #39 + ' and a.sjbh =b.sjbh';
      DM_data.qry_pub.Open;
    end;
    sjh := dm_data.qry_pub.FieldByName('sjbh').AsString;
    prv_ph := dm_data.qry_pub.FieldByName('ph').AsString;
    qry_sbjssj.SQL.Text := 'select * from sbjk_sbjs where ph =' + #39 + prv_ph +
      #39 + ' and yxbz = 1 and fylb = 2';
    qry_sbjssj.Open;
    if qry_sbjssj.RecordCount > 0 then
    begin
      sblb := qry_sbjssj.FieldByName('sblb').AsString;
      qry_sbpz.SQL.Text := 'select * from sbjk_sbpz where sbxh =' + #39 + sblb + #39;
      qry_sbpz.Open;
      yedy := qry_sbpz.FieldByName('mzyedy').AsBoolean;
      if (qry_sbpz.RecordCount > 0) and qry_sbpz.FieldByName('mzdy').AsBoolean then
      begin
        tcdymc := trim(qry_sbpz.FieldByName('mztcdymc').AsString);
        zhdymc := trim(qry_sbpz.FieldByName('mzzhdymc').AsString);
        xjdymc := trim(qry_sbpz.FieldByName('mzxjdymc').AsString);
        if tcdymc = '' then
        begin
          tcdymc := '统筹:';
        end
        else
        begin
          tcdymc := tcdymc + ':';
        end;
        if zhdymc = '' then
        begin
          zhdymc := '账户:';
        end
        else
        begin
          zhdymc := zhdymc + ':';
        end;
        if xjdymc = '' then
        begin
          xjdymc := '现金:';
        end
        else
        begin
          xjdymc := xjdymc + ':';
        end;
        jsfs := qry_sbjssj.FieldByName('jsfs').AsString;
        if jsfs = 'PH' then
        begin
          jsfs := '社保合计 ' + tcdymc + Format('%0.2f', [qry_sbjssj.FieldByName('tczf').AsFloat]) +
          zhdymc + Format('%0.2f', [qry_sbjssj.FieldByName('zhzf').AsFloat]) +
          xjdymc + Format('%0.2f', [qry_sbjssj.FieldByName('xjzf').AsFloat]);
        end
        else
        begin
          qry_sbjssj.Locate('zyh', sjh, []);
          jsfs := tcdymc + Format('%0.2f', [qry_sbjssj.FieldByName('tczf').AsFloat]) +
          zhdymc + Format('%0.2f', [qry_sbjssj.FieldByName('zhzf').AsFloat]) +
          xjdymc + Format('%0.2f', [qry_sbjssj.FieldByName('xjzf').AsFloat]);
        end;
        qrl_zhzf.Caption := zhdymc + Format('%0.2f', [qry_sbjssj.FieldByName('zhzf').AsFloat]) + '(' +
        Format('%0.2f', [qry_sbjssj.FieldByName('jshye').AsFloat]) + ')';
        qrlbl1.Caption := tcdymc + Format('%0.2f', [qry_sbjssj.FieldByName('tczf').AsFloat]) + ' ' +
        xjdymc + format('%0.2f', [qry_sbjssj.FieldByName('ylzfy').AsFloat -
          qry_sbjssj.FieldByName('zhzf').AsFloat - qry_sbjssj.FieldByName('tczf').AsFloat]);
        qrl_zhzf.Left := qrlbl1.Left;
        qrl_zhzf.Enabled := True;
      end;
    end;
  except
  end;
  qry_sbjssj.Free;
  qry_sbpz.Free;
  if pub_yydm = '0015' then
  begin
    DM_data.qry_pub1.Close;
    DM_data.qry_pub1.SQL.Text := 'select a.sjbhNew,a.fymc,a.zje,a.dyrq,a.dybz,a.tmh,b.*,c.dymc'
      + ' from mzsf_fpdy_mx a,mzgh_ghmx b,sys_kjsfxm c'
      + ' where a.sjbhNew=' + value
      + ' and a.sjbh=b.ghdhm and a.fydm=b.fydm and b.zcf_tc>0 and c.fydm=' + #39 + '8488' + #39
      + ' and b.khzl=' + #39 + '农合' + #39;
    DM_data.qry_pub1.Open;
    if DM_data.qry_pub1.RecordCount > 0 then
    begin
      jy_tzzcf_mc.Caption := Trim(DM_data.qry_pub1.FieldByName('dymc').AsString);
      jy_tzzcf_je.Caption := Format('%0.2f', [DM_data.qry_pub1.FieldByName('zcf_tc').AsFloat]);
      jy_tzzcf_mc.Enabled := True;
      jy_tzzcf_je.Enabled := True;
      qrl_nhtc_xs.Enabled := True;
      qrl_nhtc_xs.Top := QRE_hj1_sc.Top;
    end
    else
    begin
      jy_tzzcf_mc.Enabled := False;
      jy_tzzcf_je.Enabled := False;
      qrl_nhtc_xs.Enabled := False;
    end;
  end;
end;

procedure Tfrm_fpdy.QRE_yhj_dxPrint(sender: TObject; var Value: string);
begin
  Value := '实收:币' + NumberToMoney(StrToFloat(Value));
end;

procedure Tfrm_fpdy.qr_sfrqPrint(sender: TObject; var Value: string);
begin
  if not qry_fymx.Eof then
    qry_fymx.Prior;
  Value := qry_fymx.FieldByName('sfrq').AsString;
  qry_fymx.Next;
end;

procedure Tfrm_fpdy.ReadCard_CallBack;
var
  Key: Char;
begin
  if proc_cx_jzklx( Auto_CardInfo.CardNo, true ) then
  begin
    tmh.Text := pub_bdktmh;
    Key := #13;
    tmhKeyPress( tmh, Key );
  end
  else
  begin
    MessageBox( Handle, '此卡号未登记！', '错误', MB_OK + MB_ICONSTOP );
    Exit;
  end;
end;

procedure Tfrm_fpdy.tmhDblClick(Sender: TObject);
begin
  if Assigned( CardInfo ) then
  begin
    Zddqjjk_Start( 100, ReadCard_CallBack );
  end;
end;

procedure Tfrm_fpdy.tmhEnter(Sender: TObject);
begin
  frm_func.changecolor(Sender);
  tmh.Text := '';
  e_yhckh.Text := '';
end;

procedure Tfrm_fpdy.tmhKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    if Trim(tmh.Text) = '' then
    begin
      Button1.Enabled := False;
      Button2.Enabled := False;
      tmh.SetFocus;
    end
    else
    begin
      Button1.Enabled := True;
      Button1.Click;
    end;
  end;
end;
procedure Tfrm_fpdy.Proc_mzsj_sc_kb;
var
  v_Infor_fy: TInfor_fy;
begin
  qry_fymx.Sort := 'sjbh ASC';
  v_Infor_fy := func_fyje_Calc(qry_fymx); //计算总金额、实收总金额、收据数量
  Print_mzsj_sc_kb(qry_fymx, false, false, v_Infor_fy.ssje, 0,
    v_Infor_fy.sjsl, v_Infor_fy.tczf, v_Infor_fy.xjzf, v_Infor_fy.zhzf, v_Infor_fy.zhye);
end;

end.

