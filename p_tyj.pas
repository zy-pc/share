unit p_tyj;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, DBTables, Db, ComCtrls, Grids, DBGrids, QuickRpt,
  Qrctrls, ExtCtrls, ADODB, Menus, RzButton, RzRadChk;

type
  Tfrm_tyj = class(TForm)
    ok2: TBitBtn;
    ds_yjmxcx: TDataSource;
    Label1: TLabel;
    tmh: TEdit;
    Bevel1: TBevel;
    Label7: TLabel;
    sjbh: TEdit;
    b_save: TBitBtn;
    sp_yjmxcx: TADOStoredProc;
    sp_up_tyj: TADOStoredProc;
    sp_sebrqk: TADOStoredProc;
    Panel1: TPanel;
    Label3: TLabel;
    Label9: TLabel;
    Label8: TLabel;
    Label14: TLabel;
    Label10: TLabel;
    Label2: TLabel;
    Label19: TLabel;
    Label16: TLabel;
    Label4: TLabel;
    ksmc: TEdit;
    zfy: TEdit;
    zyj: TEdit;
    brxm: TEdit;
    lbmc: TEdit;
    syyj: TEdit;
    bch: TEdit;
    ryrq: TDateTimePicker;
    zdjf: TEdit;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    b_print: TBitBtn;
    mmTYJ: TMainMenu;
    mniPzdbbl: TMenuItem;
    edtcsdbje: TEdit;
    lblrate2: TLabel;
    edtRate: TEdit;
    lblRate: TLabel;
    ckbxAutoGen: TRzCheckBox;
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure b_saveClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure tmhEnter(Sender: TObject);
    procedure tmhKeyPress(Sender: TObject; var Key: Char);
    procedure sp_yjmxcxAfterScroll(DataSet: TDataSet);
    procedure tmhExit(Sender: TObject);
    procedure ok2Click(Sender: TObject);
    procedure DBGrid2KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid2Exit(Sender: TObject);
    procedure b_printClick(Sender: TObject);
    procedure mniPzdbblClick(Sender: TObject);
  private
    zy_tmh: string; //条码号
    zy_zyh: string; //住院号
    zy_yjbz: boolean; //押金标志
    zy_yjje: real; //本次退住院押金
    zy_syyj: real; //剩余押金
    zy_sjbh: string; //住院微机号
    zy_sjh: string; //住院收据号
    zy_bz: string;//备注
    zy_zdjf:Real; //自动计费限额
    zy_fylbdm:string;//费用类别代码

    zy_yjscdbbl:Real;//预交生成担保比例
    procedure proc_getbyxx;
    procedure SaveTjySCDBJE;//保存退预交生成担保金额 （负数）沙雅县人民医院
   { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_tyj: Tfrm_tyj;

implementation

uses P_login, p_func, p_main, p_dm,p_zysf_print_service, p_icf, p_zyyj_dbblsz;

{$R *.DFM}

procedure Tfrm_tyj.FormShow(Sender: TObject);
begin
  tmh.text := '';
  sjbh.text := '';
  tmh.SetFocus;
  if pub_tmhxsbz = false then
    tmh.PasswordChar := '*';

  if  (pub_yydm=HN_SYRMYY) and (pub_czydm='9999') then
  begin
    mniPzdbbl.Visible := True;
  end;

  if (pub_yydm<>HN_SYRMYY) then
  begin
    ckbxAutoGen.Visible := False;
    lblRate.Visible := False;
    edtRate.Visible := False;
    lblrate2.Visible := False;
    edtcsdbje.Visible := False;
  end;
end;

procedure Tfrm_tyj.mniPzdbblClick(Sender: TObject);
begin
  try
    Application.CreateForm(Tfrm_zyyj_dbblsz, frm_zyyj_dbblsz);
    frm_zyyj_dbblsz.ShowModal;
  finally
    frm_zyyj_dbblsz.Free;
  end;
end;

procedure Tfrm_tyj.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    selectnext(activecontrol as Twincontrol, true, true);
end;

procedure Tfrm_tyj.b_printClick(Sender: TObject);
begin
  if trim(zy_bz) = '收预交退预交' then
  begin
  if pub_yydm='0214' then      ///代码'0214' 遂宁明康医院
     begin
        frm_zysf_print_service.printtyjp(trim(sp_sebrqk.fieldbyname('ksmc').asstring),
          trim(sp_sebrqk.fieldbyname('brxm').asstring),
          trim(sp_sebrqk.fieldbyname('brxb').asstring),
          trim(sp_sebrqk.fieldbyname('brnl').asstring),
          zy_tmh,'住院费',zy_yjje) ;
     end;
  end;

end;

procedure Tfrm_tyj.b_saveClick(Sender: TObject);
begin
  if application.MessageBox('确定要退预交吗？', '提示', 52) = 6 then
  begin
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
    if sp_yjmxcx['tfbz'] = true then
    begin
      application.MessageBox('已经退了预交，不能再退！', '提示', 0 + 16);
      dbgrid1.SetFocus;
      abort;
    end;
    if zysf_tyj(zy_zyh, pub_czydm, zy_sjbh, zy_sjh, zy_yjje) = '1' then
    begin
      if pub_yydm='0214' then      ///代码'0214' 遂宁明康医院
      begin
        frm_zysf_print_service.printtyjp(trim(sp_sebrqk.fieldbyname('ksmc').asstring),
          trim(sp_sebrqk.fieldbyname('brxm').asstring),
          trim(sp_sebrqk.fieldbyname('brxb').asstring),
          trim(sp_sebrqk.fieldbyname('brnl').asstring),
          zy_tmh,'住院费',zy_yjje) ;
      end;


      sp_yjmxcx.Active := false;
      sp_yjmxcx.Parameters.ParamByName('@zyh').value := zy_zyh;
      sp_yjmxcx.Open;
      sp_sebrqk.Active := false;
      sp_sebrqk.Parameters.ParamByName('@zyh').value := zy_zyh;
      sp_sebrqk.Open;
      zfy.Text := floattostr(sp_sebrqk.fieldbyname('zfy').asfloat);
      zyj.Text := floattostr(sp_sebrqk.fieldbyname('yjze').asfloat);
      syyj.Text := floattostr(sp_sebrqk.fieldbyname('syyj').asfloat);

    end;

    if pub_yydm=HN_SYRMYY then
    begin
      if ckbxAutoGen.Checked then
        SaveTjySCDBJE; //保存退预交生成担保金额 （负数）沙雅县人民医院
    end;
    
    zy_yjje := 0;
    b_save.Enabled := false;
    tmh.Enabled := true;
    tmh.SelectAll;
    tmh.SetFocus;
  end;
end;

procedure Tfrm_tyj.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if sp_yjmxcx['tfbz'] = true then
  begin
    dbgrid1.Canvas.Brush.Color := cllime;
    dbgrid1.Canvas.Font.color := clblue;
  end;
  dbgrid1.DefaultDrawColumnCell(rect, datacol, column, state);
end;

procedure Tfrm_tyj.tmhEnter(Sender: TObject);
begin
  frm_func.changecolor(Sender);
  b_save.Enabled := false;
  b_print.Enabled := false;
end;

procedure Tfrm_tyj.tmhKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    sjbh.Text := '';
    try
      tmh.text := formatex(strtoint(tmh.text), 9);
      if frm_func.istmh(zy_tmh, 'zy') = false then
      begin
        tmh.Clear;
        abort;
      end;
    except
    end;
    zy_tmh := tmh.Text;
    with dm_data.Qry_pub do
    begin
      Close;
      SQL.clear;
      SQL.Text := 'select a.tmh,a.brxm,b.mc,a.brxb,a.brdz,a.brnl,a.zyh,a.cybz ' +
        ' from zysf_zydj a,sys_ksdm b' +
        ' where a.ksdm=b.dm ' +
        ' and (a.tmh=' + #39 + zy_tmh + #39 +
        ' or a.bah='+ #39 + zy_tmh + #39 +
        ' or a.brxm like '+#39 + '%' + zy_tmh + '%' + #39 + ' ) and ' +
        ' jsbz=0 and cybz=0';
      open;
    end;
    if dm_data.Qry_pub.IsEmpty then
    begin
      application.MessageBox('此卡号未登记！', '提示', 0 + 16);
      tmh.SetFocus;
      tmh.SelectAll;
      abort;
    end
    else
      if dm_data.qry_pub.RecordCount = 1 then
        proc_getbyxx
      else
      begin
        dbgrid2.left := tmh.left;
        dbgrid2.top := tmh.top + tmh.height;
        dbgrid2.Visible := true;
        dbgrid2.SetFocus;
      end;

    if pub_yydm=HN_SYRMYY then
      edtcsdbje.Clear;
  end;
end;

procedure Tfrm_tyj.proc_getbyxx;
begin
  if dm_data.Qry_pub.FieldByName('cybz').asboolean = true then
  begin
    application.MessageBox('该病人已办出院登记 不能退押金！', '提示', 0 + 16);
    tmh.SelectAll;
    tmh.SetFocus;
    abort;
  end;
  zy_zyh := dm_data.qry_pub.fieldbyname('zyh').asstring;
  sp_yjmxcx.Active := false;
  sp_yjmxcx.Parameters.ParamByName('@zyh').value := zy_zyh;
  sp_yjmxcx.Parameters.ParamByName('@czydm').value := pub_czydm;
  sp_yjmxcx.Open;
  if sp_yjmxcx.isempty then
    application.messagebox('没有预交纪录！', '提示', mb_ok + mb_iconinformation)
  else
  begin
    sp_sebrqk.Active := false;
    sp_sebrqk.Parameters.ParamByName('@zyh').value := zy_zyh;
    sp_sebrqk.Open;
    zy_yjbz := sp_sebrqk.fieldbyname('yjbz').asboolean;
    zy_tmh := sp_sebrqk.fieldbyname('tmh').asstring;
    ryrq.DateTime := sp_sebrqk.fieldbyname('ryrq').asdatetime;
    brxm.Text := sp_sebrqk.fieldbyname('brxm').asstring;
    bch.Text := sp_sebrqk.fieldbyname('bch').asstring;
    lbmc.Text := sp_sebrqk.fieldbyname('lbmc').asstring;
    ksmc.Text := sp_sebrqk.fieldbyname('ksmc').asstring;
    zfy.Text := floattostr(sp_sebrqk.fieldbyname('zfze').asfloat);
    zyj.Text := floattostr(sp_sebrqk.fieldbyname('yjze').asfloat);
    zdjf.Text := FloatToStr(sp_sebrqk.FieldByName('zdjf').AsFloat);
    zy_syyj := sp_sebrqk.fieldbyname('syyj').asfloat;
    zy_zdjf := sp_sebrqk.FieldByName('zdjf').AsFloat;
    if pub_yydm=HN_SYRMYY then
    begin
      zy_yjscdbbl := sp_sebrqk.fieldbyname('zyyjdbbl').asfloat;
      edtRate.Text := FloatToStr(zy_yjscdbbl);
    end;
    zy_fylbdm := sp_sebrqk.FieldByName('fylb').AsString;
    syyj.Text := floattostr(zy_syyj);
    dbgrid1.SetFocus;
  end;
end;


procedure Tfrm_tyj.sp_yjmxcxAfterScroll(DataSet: TDataSet);
begin
  zy_yjje := sp_yjmxcx.fieldbyname('yjje').asfloat;
  zy_sjbh := sp_yjmxcx.fieldbyname('sjbh').asstring;
  zy_sjh := sp_yjmxcx.fieldbyname('sjh').asstring;
    zy_bz := sp_yjmxcx.fieldbyname('bz').asstring;
  sjbh.Text := zy_sjh;
  if sp_yjmxcx.IsEmpty then
  begin
      b_save.Enabled := false;
      b_print.Enabled := false
  end
  else
  begin
    b_save.Enabled := true;
    b_print.Enabled := true;
  end;
  if (pub_yydm=HN_SYRMYY) and (not sp_yjmxcx.IsEmpty) then
  begin
    if zy_yjscdbbl>0 then
      edtcsdbje.Text := FloatToStr(zy_yjscdbbl*zy_yjje);
  end;
end;

procedure Tfrm_tyj.tmhExit(Sender: TObject);
begin
  frm_func.restorecolor(Sender);
end;

procedure Tfrm_tyj.ok2Click(Sender: TObject);
begin
  close;
end;

procedure Tfrm_tyj.DBGrid2KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    proc_getbyxx;
end;

procedure Tfrm_tyj.SaveTjySCDBJE;
var
  scje:Real;
begin
  DM_data.qry_pub.Close;
  DM_data.qry_pub.SQL.text :=
      'SELECT  dm ,' +
             ' RTRIM(mc) mc ,' +
             ' zyyjdbbl ' +
      'FROM    sys_fylb '+
      'WHERE   dm=' + quotedstr(zy_fylbdm);
  try
    DM_data.qry_pub.Open;
  except
  end;

  if (not DM_data.qry_pub.IsEmpty) and
     (DM_data.qry_pub.FieldByName('zyyjdbbl').AsFloat>0) then
  begin
    scje := -zy_yjje*DM_data.qry_pub.FieldByName('zyyjdbbl').AsFloat;

    //保存担保明细
    save_ZDJF_DB(zy_zyh,'','',pub_czydm,pub_czyxm,scje,'退预交按比例生成');

    scje := zy_zdjf + scje;

    updateZYDJ_zdjf(scje,zy_zyh); //更新住院登记的zdjf
    updateZDJFTZMX(zy_zyh,'-',pub_czyxm,scje,Now); //更新担保总额
  end;
end;

procedure Tfrm_tyj.DBGrid2Exit(Sender: TObject);
begin
  dbgrid2.visible := false;
end;
initialization
  RegisterClass(Tfrm_tyj);
end.

