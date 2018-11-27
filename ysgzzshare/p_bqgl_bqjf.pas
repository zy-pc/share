unit p_bqgl_bqjf;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, Db, ADODB, DBSumLst, Grids, DBGridEh, Mask, DBCtrls, StdCtrls,
  Buttons, DBGrids, ActnList, GridsEh, RzShellDialogs, ComCtrls,
  DBGridEhGrouping;

type
  Tfrm_bqjf = class(TForm)
    sp_cx_zybrjbqk: TADOStoredProc;
    ds_bqjf: TDataSource;
    ds_zybrjbqk: TDataSource;
    ad_sfxm: TADODataSet;
    ds_sfxm: TDataSource;
    ad_zycfzb: TADODataSet;
    sp_cx_syje: TADOStoredProc;
    spWriteToBill: TADOStoredProc;
    sp_cx_czyks: TADOStoredProc;
    ds_ysks: TDataSource;
    btnSave: TBitBtn;
    btnClose: TBitBtn;
    btnGiveup: TBitBtn;
    dbgrd_bqjf: TDBGridEh;
    ds_cx_sfxm: TDataSource;
    spFeeItems: TADOStoredProc;
    adCharges: TADODataSet;
    adChargesid: TAutoIncField;
    adChargestmh: TStringField;
    adChargeszyh: TStringField;
    adChargeskdks: TStringField;
    adChargesczks: TStringField;
    adChargeskdys: TStringField;
    adChargesczys: TStringField;
    adChargesfydm: TStringField;
    adChargesfysl: TIntegerField;
    adChargesfyje: TBCDField;
    adChargeszkje: TBCDField;
    adChargesssje: TBCDField;
    adChargeszfje: TBCDField;
    adChargessfczy: TStringField;
    adChargessfrq: TDateTimeField;
    adChargessjbh: TStringField;
    adChargescfbh: TStringField;
    adChargestfbz: TBooleanField;
    adChargestfczy: TStringField;
    adChargestfrq: TDateTimeField;
    adChargesjzbz: TBooleanField;
    adChargesjsbz: TBooleanField;
    adChargesjsdh: TStringField;
    adChargesbz: TStringField;
    adChargesfydmmc: TStringField;
    adChargesph: TStringField;
    adChargessbfybl: TFloatField;
    adChargesbxfybl: TFloatField;
    adChargeshtfybl: TFloatField;
    adChargessbfybl01: TFloatField;
    adChargessbfybl02: TFloatField;
    ad_czy: TADODataSet;
    adChargessfczyxm: TStringField;
    adChargesdw: TStringField;
    adChargessfbz: TFloatField;
    adChargesyzsx: TStringField;
    adChargesyjf: TStringField;
    adChargesxz: TBooleanField;
    btnCharge: TButton;
    sp_refresh_zyfymx_ls: TADOStoredProc;
    pnl1: TPanel;
    lblbrxm: TLabel;
    lblbch: TLabel;
    lblryrq: TLabel;
    lblzyks: TLabel;
    lblzgys: TLabel;
    lblczks: TLabel;
    lblczry: TLabel;
    lblkh: TLabel;
    tmh: TEdit;
    ebch: TEdit;
    e_kdks: TEdit;
    e_kdys: TEdit;
    e_czks: TEdit;
    e_czys: TEdit;
    JiFeiXianE: TEdit;
    ebrxm: TEdit;
    pnl2: TPanel;
    FeeItems: TDBGridEh;
    qry_date: TADOQuery;
    adChargesbakrq: TDateTimeField;
    bqjf_jfrq: TDateTimePicker;
    QryPub: TADOQuery;
    adChargesxh: TIntegerField;
    procedure tmhExit(Sender: TObject);
    procedure tmhEnter(Sender: TObject);
    procedure fylbEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure tmhKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure b_newClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure btnGiveupClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure dbgrd_bqjfCellClick(Column: TColumnEh);
    procedure dbgrd_bqjfDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure btnChargeClick(Sender: TObject);
    procedure FeeItemsKeyDown(Sender: TObject; var Key: Word; Shift:
      TShiftState);
    procedure FeeItemsDblClick(Sender: TObject);
    procedure dbgrd_bqjfKeyPress(Sender: TObject; var Key: Char);
    procedure dbgrd_bqjfKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure adChargesAfterDelete(DataSet: TDataSet);
    procedure adChargesAfterInsert(DataSet: TDataSet);
    procedure bqjf_jfrqChange(Sender: TObject);
    procedure dbgrd_bqjfColEnter(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    iss: boolean; //保存
    Fxh: Integer; //收费项目的序号
    { 输入处理过程 }
    procedure WriteAttribute(); //属性输入 长期，临时
    procedure WriteFeeCode(); //费用代码输入
    procedure WriteQuantity(iQuantity: Integer); //费用数量输入
    procedure WriteFeeAmount(fyje: Real); //费用金额输入
    procedure AddNewFeeItem; // 增加收费条目
    procedure CalcFeePerRecord;  //将每条收费条目的费用计算出 并写入临时表
    procedure Crete_zyfymx_lsjy(str_zyh: string; bakrq: TDateTime);
    function IndirectImportExport():Boolean;{为返回值为true表示系统正在结转数据}
    procedure initXH(xh: Integer); {初始化序号值}
  public
    { Public declarations }
    procedure DisplayValue;
    procedure ChangePatient(CardNo{tmh}: string);
  end;

{创建或show 病区计费窗体}
procedure CreateOrShowBqjf(CardNo: string; Dt: TDateTime);

var
  frm_bqjf: Tfrm_bqjf;
  ph, v_zyh, pri_kdks, pri_kdys, pri_czks, pri_czys: string;
  ysksischange: boolean; //表示从开单科室出来时科室有无变化
  syje, sfbz: string; //剩余金额,收费标志（单价）
  pre_yzsx, pre_fydm, pre_fysl: string;   // 修改前的费用代码，费用数量
  lookupDt: TDateTime; //查询日期
  dqrq: TDateTime; //当前日期 只保存年月日
  qbscbz: Boolean = False; //收费项目全部删除
  v_yzsx: string = '长期'; //医嘱属性
implementation

uses P_dm, p_func, p_bqgl_clhj, p_bqgl_zxypyz;
{$R *.DFM}

procedure Tfrm_bqjf.ChangePatient(CardNo: string);
begin
   tmh.Text := Trim(CardNo);
   tmh.OnExit(Self);
end;

procedure Tfrm_bqjf.Crete_zyfymx_lsjy(str_zyh: string; bakrq: TDateTime);
begin
  //--刷新临时表记录
  sp_refresh_zyfymx_ls.Close;
  sp_refresh_zyfymx_ls.Parameters.ParamByName('@zyh').Value := str_zyh;
  sp_refresh_zyfymx_ls.Parameters.ParamByName('@bakrq').Value := bakrq;
  sp_refresh_zyfymx_ls.ExecProc;
end;

procedure Tfrm_bqjf.CalcFeePerRecord;
begin
  adCharges.Edit;
  if adCharges.FieldByname('sfbz').AsFloat > 0.00 then
  begin
    adCharges.FieldByname('fyje').Value := adCharges.FieldByname('sfbz').AsFloat
    * adCharges.FieldByname('fysl').AsInteger;
  end;

  if Trim(sp_cx_zybrjbqk.FieldByname('zfzdmc').AsString) <> '' then
  begin
    if sp_cx_zybrjbqk.FieldByname('ybndzje').AsFloat -
      sp_cx_zybrjbqk.FieldByname('zfy').AsFloat > 0 then
    begin
      adCharges['zfje'] := adCharges['fyje'] *
        adCharges[Trim(sp_cx_zybrjbqk.FieldByname('zfzdmc').AsString)] / 100
    end
    else
      adCharges['zfje'] := adCharges['fyje'];
  end
  else
  begin
    adCharges['zfje'] := adCharges['fyje'];
  end;
  if Trim(adCharges.FieldByname('czys').AsString) = '' then
  begin
    adCharges['czys'] := '0000';
  end;
  adCharges.Post;
end;

procedure Tfrm_bqjf.AddNewFeeItem;
begin
  adCharges.Next;
  if not adCharges.Eof then
  begin
    dbgrd_bqjf.SelectedIndex := 1;
  end
  else
  begin
    adCharges.append;
    adCharges['tmh'] := sp_cx_zybrjbqk['tmh'];
    adCharges['zyh'] := sp_cx_zybrjbqk['zyh'];
    adCharges['ph'] := '';
    adCharges['kdks'] := pri_kdks;
    adCharges['kdys'] := pri_kdys;
    adCharges['czks'] := pub_ksdm;
    adCharges['czys'] := pub_czydm;
    adCharges['yzsx'] := v_yzsx;
    adCharges['fysl'] := 1;
    adCharges['xz'] := True;
    adCharges['fyje'] := 0;
    adCharges['zfje'] := 0;
    adCharges['zkje'] := 0;
    adCharges['ssje'] := 0;
    adCharges['sfczy'] := '';
    adCharges['sjbh'] := '';
    adCharges['cfbh'] := '';
    adCharges['tfbz'] := 0;
    adCharges['tfczy'] := '';
    adCharges['jzbz'] := 0;
    adCharges['jsbz'] := 0;
    adCharges['jsdh'] := '';
    adCharges['bakrq'] := DateTimeToStr(lookupDt);
    Inc(Fxh);
    adCharges['xh'] := Fxh;     
    adCharges.Post;
    adCharges.Edit;
    dbgrd_bqjf.SetFocus;
    dbgrd_bqjf.SelectedIndex := 1;

    //----------------------------------
    btnSave.Enabled := True;
  end;
end;

procedure Tfrm_bqjf.WriteAttribute();
begin
  if ((Trim(adCharges.FieldByname('yzsx').AsString) <> '')) then
  begin
    if pre_yzsx = Trim(adCharges.FieldByname('yzsx').AsString) then
      Exit;
    if (adCharges.FieldByname('yzsx').AsString = '1')
      or (adCharges.FieldByname('yzsx').AsString = 'ls')
      or (adCharges.FieldByname('yzsx').AsString = '临时') then
    begin
      v_yzsx := '临时';
    end
    else
    begin
      v_yzsx := '长期';
    end;
    if adCharges.FieldByname('yzsx').AsString <> v_yzsx then
    begin
      adCharges.Edit;
      adCharges.FieldByname('yzsx').value := v_yzsx;
      adCharges.Post;
    end;
  end;
end;

procedure Tfrm_bqjf.WriteFeeCode();
var
  strfydm: string;
begin
  strfydm := Trim(adCharges.FieldByname('fydm').AsString);
  if (strfydm <> '') and ((IsNumberic(strfydm) and (4 = Length(strfydm))) or (not
    IsNumberic(strfydm))) then
  begin
    if pre_fydm = strfydm then
      Exit;
    spFeeItems.Close;
    spFeeItems.Parameters.ParamByName('@fydm').value := strfydm;
    spFeeItems.Parameters.ParamByName('@fymc').value := strfydm;
    spFeeItems.Parameters.ParamByName('@bqdm').value := pub_bqdm;
    spFeeItems.Parameters.ParamByName('@pym').value  := strfydm;
    spFeeItems.Open;
    if spFeeItems.IsEmpty then
    begin
      adCharges.FieldByname('fydm').Value := pre_fydm;
      Exit;
    end;
    if spFeeItems.recordcount > 1 then
    begin
      FeeItems.Top := dbgrd_bqjf.Top + 50;
      FeeItems.Left := dbgrd_bqjf.Left + 25;
      FeeItems.Visible := True;
      FeeItems.setfocus;
    end
    else if spFeeItems.recordcount = 1 then
    begin
      adCharges.Edit;
      adCharges.FieldByname('fydm').Value := spFeeItems['fydm'];
      adCharges.FieldByname('bz').Value   := spFeeItems['sfbz'];
      adCharges.Post;
      CalcFeePerRecord;
    end;
  end;
end;

procedure Tfrm_bqjf.WriteQuantity(iQuantity: Integer);
begin
  if (0 < iQuantity) then
  begin
    if adCharges.FieldByname('fydm').AsString <> '' then
    begin
      adCharges.Edit;
      adCharges.FieldByname('fysl').Value := iQuantity;
      adCharges.FieldByname('fyje').Value :=
        adCharges.FieldByname('sfbz').AsFloat * iQuantity;
      if Trim(sp_cx_zybrjbqk.FieldByname('zfzdmc').AsString) <> '' then
      begin
        if sp_cx_zybrjbqk.FieldByname('ybndzje').AsFloat -
          sp_cx_zybrjbqk.FieldByname('zfy').AsFloat > 0 then
          adCharges['zfje'] := adCharges['fyje'] *
            adCharges[Trim(sp_cx_zybrjbqk.FieldByname('zfzdmc').AsString)] / 100
        else
          adCharges['zfje'] := adCharges['fyje'];
      end
      else
        adCharges['zfje'] := iQuantity * strtofloat(adCharges['sfbz']);
    end;
  end;
end;

procedure Tfrm_bqjf.WriteFeeAmount(fyje: Real);
begin
  adCharges.Edit;
  adCharges.FieldByname('fyje').Value := fyje;
  adCharges.Post;
end;

procedure Tfrm_bqjf.adChargesAfterDelete(DataSet: TDataSet);
begin
  if adCharges.RecNo = -1 then //全部删除
    qbscbz := True;
end;

procedure Tfrm_bqjf.adChargesAfterInsert(DataSet: TDataSet);
begin
  if qbscbz and (adCharges.RecNo > -1) then
    qbscbz := False;
end;

procedure Tfrm_bqjf.btnChargeClick(Sender: TObject);
var
  returnvalue: string;
  v_fyze, v_zfje: Real;
  dt_sfrq: TDateTime;
  qtfybs: Integer; //费用笔数
begin
  if (adCharges.RecordCount < 1) then
    Exit;

  {若系统正在结转数据 则退出}
  if IndirectImportExport() then
    Exit;

  sp_cx_syje.Close;
  sp_cx_syje.Parameters.ParamByName('@zyh').value :=
    sp_cx_zybrjbqk.FieldByname('zyh').AsString;
  sp_cx_syje.Open;
  if dbgrd_bqjf.GetFooterValue(1, dbgrd_bqjf.columns[7]) = '0' then
  begin
    syje := format('%3.2f', [sp_cx_syje.FieldByname('yjze').AsFloat -
      sp_cx_syje.FieldByname('zfze').AsFloat -
        adCharges.FieldByname('ZFje').AsFloat])
  end
  else
  begin
    syje := format('%3.2f', [sp_cx_syje.FieldByname('yjze').AsFloat -
      sp_cx_syje.FieldByname('zfze').AsFloat -
        strtofloat(dbgrd_bqjf.GetFooterValue(1, dbgrd_bqjf.columns[7]))]);
  end;

  v_fyze := 0.0;
  v_zfje := 0.0;
  qtfybs := 0;
  adCharges.First;
  while (not adCharges.Eof) do
  begin
    if (adCharges.FieldByname('xz').AsBoolean) and
      (adCharges.FieldByname('yjf').IsNull) then
    begin
      qtfybs := qtfybs + 1;
      v_fyze := adCharges.FieldByname('fyje').AsFloat + v_fyze;
      v_zfje := adCharges.FieldByname('zfje').AsFloat + v_zfje;
    end;
    adCharges.Next;
  end;

  if ((StrToFloat(syje) + sp_cx_zybrjbqk.FieldByname('zdjf').AsFloat +
    pub_czje - v_zfje) >= 0) then
  begin
    ph := get_sjh(pub_czydm);
    dt_sfrq := Frm_func.curr_date;
    adCharges.First;
    while (not adCharges.Eof) do
    begin
      if (adCharges.FieldByname('xz').AsBoolean) and
        (adCharges.FieldByname('yjf').IsNull) then
      begin
        adCharges.Edit;
        adCharges.FieldByname('ph').Value := ph;
        adCharges.FieldByname('sfrq').Value := dt_sfrq;
        adCharges.FieldByname('sfczy').Value := pub_czydm;
        adCharges.Post;
      end;
      adCharges.Next;
    end;
    adCharges.UpdateBatch(arAll);
    if qtfybs < 1 then
      Exit;
    spWriteToBill.Close;
    spWriteToBill.Parameters.ParamByName('@ph').value := ph;
    spWriteToBill.Parameters.ParamByName('@zyh').value :=
      adCharges.FieldByname('zyh').AsString;
    spWriteToBill.Parameters.ParamByName('@fyze').value := v_fyze;
    spWriteToBill.Parameters.ParamByName('@zkje').value := 0;
    spWriteToBill.Parameters.ParamByName('@zfje').value := v_zfje;
    spWriteToBill.Parameters.ParamByName('@qtfybs').value := qtfybs;
    spWriteToBill.Parameters.ParamByName('@sczt').value := '';
    spWriteToBill.ExecProc;
    returnvalue := spWriteToBill.Parameters.ParamByName('@sczt').value;
    if returnvalue = '1' then
    begin
      Application.MessageBox('记费成功!!!', '提示', MB_ok + MB_DEFBUTTON1
        + MB_ICONwarning);
      adCharges.Requery;  {刷新数据}
      Close;
    end
    else
    begin
      Application.MessageBox('数据没有正确保存，请再次选择计费功能保存', '错误',
        MB_ok + MB_DEFBUTTON1 + MB_ICONERROR)
    end;
  end
  else
  begin
    if
      Application.messagebox('病人账上资金不足，不能计费，处方数据已经保存，但该药品不会发出'
        + #13 + #13 + '                      请病人补充资金或删除处方数据！'
        + #13 + #13 + '                              是否删除费用？',
        '提示', mb_yesNo + mb_iconinformation) = IDyes then
    begin
      adCharges.First;
      while adCharges.RecordCount > 0 do
      begin
        adCharges.Delete;
        adCharges.Next;
      end;
      adCharges.Delete;
      adCharges.UpdateBatch(arall);
      Self.Close;
    end;
  end
end;

procedure Tfrm_bqjf.btnSaveClick(Sender: TObject);
begin
  //写入zysf_zyfymx_lsjy

  if (adCharges.RecordCount < 1) or
    ((adCharges.RecordCount = 1) and (adCharges.FieldByname('fydm').AsString ='')) then
  begin
    adCharges.UpdateBatch(arall);
    Application.MessageBox('数据保存成功！', '提示', MB_ok +
      MB_DEFBUTTON1 + MB_ICONwarning);
    exit;
  end;

  adCharges.First;
  while not adCharges.eof do
  begin
    if (adCharges.FieldByname('fydm').AsString = '')
      or (adCharges.FieldByname('fyje').AsFloat = 0.00) then
    begin
      adCharges.Delete;
    end;
    adCharges.Next;
  end;

  adCharges.First;
  while not adCharges.eof do
  begin
    CalcFeePerRecord;
    if (adCharges.FieldByname('fyje').AsFloat < 0) then
    begin
      Application.MessageBox('注意:金额小于等于0!', '错误', mb_ok +
        mb_iconerror);
      Exit;
    end;
    adCharges.Next;
  end;

  if (not qbscbz) and ((adCharges.FieldByname('fysl').asinteger = 0)
    or (adCharges.FieldByname('fyje').AsFloat = 0.00)) then
  begin
    Application.MessageBox('数量或金额为0，请核对无误后重新输入', '提示',
      MB_OK + MB_ICONINFORMATION);
    dbgrd_bqjf.SelectedIndex := 4;
  end
  else
  begin
    if (adCharges.state = dsEdit) or (adCharges.state = dsinsert) then
    begin
      adCharges.post;
    end;

    adCharges.First;
    while (not adCharges.eof) and (not qbscbz) do
    begin
      if (Trim(adCharges.FieldByname('czks').AsString) = '') then
      begin
        adCharges.Edit;
        adCharges.FieldByname('czks').AsString := pub_ksdm;
        adCharges.Post;
      end;
      adCharges.Next;
    end;

    try
      adCharges.UpdateBatch(arall);
      Application.MessageBox('数据保存成功！', '提示', MB_ok +
        MB_DEFBUTTON1 + MB_ICONwarning);
      adCharges.First;
      while not adCharges.Eof do
      begin
        if adCharges.FieldByname('xz').AsBoolean then
        begin
          btnCharge.Enabled := True;
          Break;
        end;
        adCharges.Next;
      end;
      btnSave.Enabled := False;
    except
      Application.MessageBox('数据没有正确保存，请再次选择计费功能保存', '错误',
        MB_ok + MB_DEFBUTTON1 + MB_ICONERROR);
    end;
  end;
end;

procedure Tfrm_bqjf.btnCloseClick(Sender: TObject);
begin
  btnClose.setfocus;
  Close;
end;

procedure Tfrm_bqjf.btnGiveupClick(Sender: TObject);
begin
  if adCharges.RecordCount > 0 then
  begin
    if Application.messagebox('是否清除临时表数据？', '提示',
      mb_yesNo + mb_iconinformation) = IDyes then
    begin
      adCharges.First;
      while not adCharges.Eof do
      begin
        adCharges.Delete;
      end;
      adCharges.UpdateBatch(arall);
    end;
  end;
  btnSave.Enabled := false;
  btnGiveup.Enabled := false;
  pnl1.Enabled := true;
  tmh.setfocus;
end;

procedure Tfrm_bqjf.b_newClick(Sender: TObject);
begin
  adCharges.Edit;
  dbgrd_bqjf.SelectedIndex := 2;
end;

procedure Tfrm_bqjf.DisplayValue;
begin
  tmh.Text := sp_cx_zybrjbqk.FieldByname('tmh').AsString;
  ebrxm.Text := sp_cx_zybrjbqk.FieldByname('brxm').AsString;
  QryPub.Close;
  QryPub.SQL.Text := 'select * from sys_kscwsz where bqdm=' + #39 +
    pub_bqdm + #39 + ' and bcbh=' + #39 +
    Trim(sp_cx_zybrjbqk.FieldByname('bch').AsString) + #39;
  QryPub.Open;
  ebch.Text := QryPub.FieldByname('yybch').AsString;
  bqjf_jfrq.DateTime := lookupDt;
  v_zyh := sp_cx_zybrjbqk.FieldByname('zyh').AsString;
  ph := get_sjh(pub_czydm);

  pri_kdks := sp_cx_zybrjbqk.FieldByname('ksdm').AsString;
  pri_kdys := sp_cx_zybrjbqk.FieldByname('zgys').AsString;
  e_kdks.Text := sp_cx_zybrjbqk.FieldByname('ksmc').AsString;
  e_kdys.Text := sp_cx_zybrjbqk.FieldByname('ysxm').AsString;
  if sp_cx_zybrjbqk.FieldByname('zdjf').AsFloat > 100000 then
    JiFeiXianE.Text := '*********'
  else
    JiFeiXianE.Text := format('%3.2f',
      [sp_cx_zybrjbqk.FieldByname('zdjf').AsFloat]);
  e_czks.Text := pub_ksmc;
  e_czys.Text := pub_czyxm;
  e_kdys.setfocus;
end;

procedure Tfrm_bqjf.tmhExit(Sender: TObject);
var
  bqdm: string; //转科病人时有用，bqdm和pub_bqdm不同
begin
  frm_func.restorecolor(Sender);
  if (length(tmh.Text) < 9) and (Trim(tmh.Text) <> '') then
  begin
    QryPub.Close;
    QryPub.SQL.Text :=
      'select a.* from zysf_zydj a,sys_kscwsz b where a.zyh=b.zyh and b.yybch=' +
      #39 + Trim(tmh.Text) + #39 + ' and a.cybz=0 and b.bqdm=' + #39 +
      pub_bqdm + ''' order by a.ryrq desc';
    QryPub.Open;
    if not QryPub.IsEmpty then
      tmh.Text := QryPub.FieldByname('tmh').AsString;
  end;
  if not (btnClose.Focused) and (Trim(tmh.Text) <> '') then
  begin
    QryPub.Close;
    QryPub.SQL.Clear;
    QryPub.SQL.Text := 'select top 1 bqdm from zysf_zydj where tmh = ''' +
      Trim(tmh.Text) + #39;
    QryPub.Open;
    if not QryPub.IsEmpty then
    begin
      bqdm := Trim(QryPub.FieldByname('bqdm').AsString);
    end;
    tmh.Text := copy('000000000', 0, 9 - length(tmh.Text)) + tmh.Text;
    sp_cx_zybrjbqk.Filtered := False;
    with sp_cx_zybrjbqk do
    begin
      Close;
      parameters.ParamByName('@tmh').value := Trim(tmh.Text);
      parameters.ParamByName('@xm').value := Trim(tmh.Text);
      parameters.ParamByName('@bch').value := Trim(tmh.Text);
      if bqdm <> '' then
        parameters.ParamByName('@ksdm').value := bqdm
      else
        parameters.ParamByName('@ksdm').value := pub_bqdm;
      Active := true;
    end;

    sp_cx_zybrjbqk.First;
    while not sp_cx_zybrjbqk.Eof do
    begin
      QryPub.Close;
      QryPub.SQL.Text := 'select * from zysf_zydj where cybz=0 and zyh=' +
        #39 + sp_cx_zybrjbqk.FieldByname('zyh').AsString + #39;
      QryPub.Open;
      if not QryPub.IsEmpty then
        Break;
      sp_cx_zybrjbqk.Next;
    end;

    QryPub.Close;
    QryPub.SQL.Text := 'select * from zysf_zydj where cybz=0 and zyh=' +
      #39 + sp_cx_zybrjbqk.FieldByname('zyh').AsString + #39;
    QryPub.Open;
    if QryPub.IsEmpty then
    begin
      Application.MessageBox('没有此病人,或已经出院！', '错误', 0 +
        16);
      tmh.SetFocus;
      Exit;
    end;

    sp_cx_zybrjbqk.Filtered := False;
    sp_cx_zybrjbqk.Filter := ' zyh =' + #39 +
      sp_cx_zybrjbqk.FieldByname('zyh').AsString + #39;
    sp_cx_zybrjbqk.Filtered := true;
    sp_cx_zybrjbqk.First;
    if sp_cx_zybrjbqk.isempty then
    begin
      Application.MessageBox('没有此病人！', '错误', 0 + 16);
      tmh.setfocus;
    end
    else
    begin
      //--刷新临时表记录
      Crete_zyfymx_lsjy(sp_cx_zybrjbqk.FieldByname('zyh').AsString, lookupDt);

      displayvalue; //显示基本信息
      syj := sp_cx_zybrjbqk['yjbz'];

      adCharges.Close;
      adCharges.CommandText := 'select * from zysf_zyfymx_lsjy where zyh=' +
        #39 + v_zyh + #39 + ' and bakrq = ''' +
        DateTimeToStr(lookupDt) + ''' order by xh ASC';
      adCharges.open;

      initXH(adCharges.RecordCount);

      if adCharges.RecordCount < 1 then
      begin
        AddNewFeeItem;
      end
      else
      begin
        adCharges.First;
        while not adCharges.Eof do
        begin
          if adCharges.FieldByname('xz').AsBoolean then
          begin
            btnCharge.Enabled := True;
            Break;
          end;
          adCharges.Next;
        end;
      end;
      dbgrd_bqjf.setfocus;
    end;
    dbgrd_bqjf.SetFocus;
  end
  else if (Trim(tmh.Text) = '') and (not (btnClose.focused or btnGiveup.focused)) then
  begin
    Application.MessageBox('请输入条码号或病床号或病人姓名！',
      '错误', 0 + 16);
    tmh.setfocus;
  end;
  iss := false;
end;

procedure Tfrm_bqjf.tmhKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    tmhExit(Sender);
  end;
end;

procedure Tfrm_bqjf.FeeItemsDblClick(Sender: TObject);
begin
  adCharges.Edit;
  adCharges.FieldByname('fydm').Value := spFeeItems['fydm'];
  adCharges.FieldByname('bz').Value := spFeeItems['sfbz'];
  adCharges.FieldByname('fyje').Value := adCharges.FieldByname('sfbz').AsFloat
    * adCharges.FieldByname('fysl').AsInteger;

  if Trim(sp_cx_zybrjbqk.FieldByname('zfzdmc').AsString) <> '' then
  begin
    if sp_cx_zybrjbqk.FieldByname('ybndzje').AsFloat -
      sp_cx_zybrjbqk.FieldByname('zfy').AsFloat > 0 then
    begin
      adCharges['zfje'] := adCharges['fyje'] *
        adCharges[Trim(sp_cx_zybrjbqk.FieldByname('zfzdmc').AsString)] / 100;
    end
    else
    begin
      adCharges['zfje'] := adCharges['fyje'];
    end;
  end
  else
  begin
    adCharges['zfje'] := adCharges['fyje'];
  end;
  if Trim(adCharges.FieldByname('czys').AsString) = '' then
  begin
    adCharges['czys'] := '0000';
  end;
  adCharges.Post;
  FeeItems.Visible := False;
  dbgrd_bqjf.SetFocus;
  dbgrd_bqjf.SelectedIndex := 4; //费用数量
  adCharges.Edit;
end;

procedure Tfrm_bqjf.FeeItemsKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    FeeItemsDblClick(Self);
  end;
end;

procedure Tfrm_bqjf.dbgrd_bqjfCellClick(Column: TColumnEh);
begin
  case dbgrd_bqjf.SelectedIndex of
    1:  {医嘱属性：长期，临时}
      begin
        pre_yzsx := Trim(adCharges.FieldByname('yzsx').AsString);
        try
          adCharges.Edit;
        finally
          WriteAttribute();
        end;
      end;
    2: {费用代码}
      begin
        pre_fydm := Trim(adCharges.FieldByname('fydm').AsString);
        try
          adCharges.Edit;
        finally
          WriteFeeCode();
        end;
      end;
    4: {费用数量}
      begin
        pre_fysl := Trim(adCharges.FieldByname('fysl').AsString);
        try
          adCharges.Edit;
        finally
          WriteQuantity(StrToInt(adCharges.FieldByname('fysl').AsString));
        end;
      end;
    7: {费用金额}
      begin
        try
          adCharges.Edit;
        finally
          WriteFeeAmount(adCharges.FieldByName('fyje').AsFloat);
        end;
        adCharges.Edit;
      end;
    8: {已计费标志}
      begin
        if adCharges.FieldByname('yjf').IsNull then
        begin
          adCharges.Edit;
          adCharges.FieldByname('xz').Value := not
            adCharges.FieldByname('xz').Value;
          adCharges.Post;
        end;
      end;
  end;
  btnCharge.Enabled := False;
  btnSave.Enabled := True;
end;

procedure Tfrm_bqjf.dbgrd_bqjfColEnter(Sender: TObject);
begin
  pre_yzsx := Trim(adCharges.FieldByname('yzsx').AsString);
end;

procedure Tfrm_bqjf.dbgrd_bqjfDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
begin
  with dbgrd_bqjf do
  begin
    if Trim(adCharges.FieldByname('yzsx').AsString) = '临时' then
    begin
      Canvas.Font.Color := clGreen;
    end;
    if Trim(adCharges.FieldByname('yjf').AsString) = '已计' then
    begin
      Canvas.Brush.Color := clSkyBlue;
    end;
    DefaultDrawColumnCell(rect, datacol, column, state);
  end;
end;

procedure Tfrm_bqjf.dbgrd_bqjfKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    VK_ESCAPE:
      begin
        //非空且未计费的项目才可以删除
        if (not adCharges.IsEmpty) and
          (Trim(adCharges.FieldByname('yjf').AsString) <> '已计') then
        begin
          btnSave.Enabled := True;
          adCharges.Delete;
        end;
      end;
  end;
end;

procedure Tfrm_bqjf.dbgrd_bqjfKeyPress(Sender: TObject; var Key: Char);
var
  FeeCode: string;
  iQuantity: Integer;
  Amount: Real;
begin
  if Key = #13 then
  begin
    case dbgrd_bqjf.SelectedIndex of
      0:
        begin
          if (Trim(adCharges.FieldByname('yzsx').AsString) <> '') and
            (Trim(adCharges.FieldByname('fydm').AsString) <> '') and
            (adCharges.FieldByname('fysl').AsInteger > 0) and
            (adCharges.Eof) then
          begin
            AddNewFeeItem;
          end
          else
          begin
            dbgrd_bqjf.SelectedIndex := 1;
            adCharges.Edit;
          end;
        end;
      1: {医嘱属性：长期，临时}
        begin
          WriteAttribute();
          if (adCharges.FieldByname('yzsx').AsString = '长期') or
            (adCharges.FieldByname('yzsx').AsString = '临时') then
          begin
            dbgrd_bqjf.SelectedIndex := 2;
            adCharges.Edit;
          end;
          if (Trim(adCharges.FieldByname('yzsx').AsString) <> '') and
            (Trim(adCharges.FieldByname('fydm').AsString) <> '') and
            (adCharges.FieldByname('fysl').AsInteger > 0) then
          begin
            AddNewFeeItem;
          end;
        end;
      2: {费用代码}
        begin
          FeeCode := Trim(adCharges.FieldByname('fydm').AsString);
          if not ((FeeCode <> '') and ((IsNumberic(FeeCode) and (4 =
            Length(FeeCode))) or (not IsNumberic(FeeCode)))) then
          begin
            Application.MessageBox('代码或名称输入错误', '提示', MB_OK
              + MB_ICONINFORMATION);
            Exit;
          end;
          WriteFeeCode();
          if adCharges.FieldByname('fydm').AsString <> '' then
          begin
            dbgrd_bqjf.SelectedIndex := 4;
            adCharges.Edit;
          end;
          if (Trim(adCharges.FieldByname('yzsx').AsString) <> '') and
            (Trim(adCharges.FieldByname('fydm').AsString) <> '') and
            (adCharges.FieldByname('fysl').AsInteger > 1) then
          begin
            AddNewFeeItem;
          end;
        end;
      3, 5, 6:
        begin
          if (Trim(adCharges.FieldByname('fydm').AsString) <> '') then
          begin
            dbgrd_bqjf.SelectedIndex := 4;
          end
          else
          begin
            dbgrd_bqjf.SelectedIndex := 2;
          end;
          if (Trim(adCharges.FieldByname('yzsx').AsString) <> '') and
            (Trim(adCharges.FieldByname('fydm').AsString) <> '') and
            (adCharges.FieldByname('fysl').AsInteger > 0) then
          begin
            AddNewFeeItem;
          end;
        end;
      4: { 费用数量 }
        begin
          iQuantity := StrToInt(adCharges.FieldByname('fysl').AsString);
          if (iQuantity < 0) or (MaxQuantitytyPerItem < iQuantity) then
          begin
            Application.MessageBox('数量超出允许范围', '', MB_OK +
              MB_ICONINFORMATION);
            Exit;
          end;
          WriteQuantity(iQuantity);
          if (Trim(adCharges.FieldByname('yzsx').AsString) <> '') and
            (Trim(adCharges.FieldByname('fydm').AsString) <> '') and
            (adCharges.FieldByname('fysl').AsInteger > 0) then
          begin
            AddNewFeeItem;
          end;
        end;
      7: {费用金额}
        begin
          Amount := adCharges.FieldByname('fyje').AsFloat;
          if Amount <= 0 then
          begin
            Application.MessageBox('金额必须大于0', '', MB_OK + MB_ICONINFORMATION);
            Exit;
          end;
          WriteFeeAmount(Amount);
        end;
      8, 9:
        begin
          if (Trim(adCharges.FieldByname('yzsx').AsString) <> '') and
            (Trim(adCharges.FieldByname('fydm').AsString) <> '') and
            (adCharges.FieldByname('fysl').AsInteger > 0) then
          begin
            AddNewFeeItem;
          end;
        end;
    end;
  end;
end;

procedure Tfrm_bqjf.bqjf_jfrqChange(Sender: TObject);
begin
  lookupDt := bqjf_jfrq.DateTime;
  adCharges.Close;
  adCharges.CommandText := 'select * from zysf_zyfymx_lsjy where zyh=' + #39 +
                    v_zyh + #39 + ' and bakrq = ''' + DateTimeToStr(lookupDt) +
                    ''' order by xh ASC';
  adCharges.open;

  initXH(adCharges.RecordCount);
  
  Crete_zyfymx_lsjy(sp_cx_zybrjbqk.FieldByname('zyh').AsString, lookupDt);
  frm_zxypyz.dt_zxsj.DateTime := lookupDt;
  frm_zxypyz.dt_zxsjChange(Sender);
end;

procedure Tfrm_bqjf.tmhEnter(Sender: TObject);
begin
  frm_func.changecolor(Sender);
  if adCharges.Active then
    adCharges.Close;
  ebch.Text := '';
  iss := false;
  pri_czks := '';
  pri_czys := '';
  e_czks.Text := '';
  e_czys.Text := '';
end;

procedure Tfrm_bqjf.fylbEnter(Sender: TObject);
begin
  frm_func.changecolor(Sender);
end;

procedure Tfrm_bqjf.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  isBqjfOpened := False;
end;

procedure Tfrm_bqjf.FormShow(Sender: TObject);
begin
  pri_czks := '';
  pri_czys := '';
  tmh.Color := clWindow;
  if Trim(tmh.Text) <> '' then
  begin
    qry_date.Close;
    qry_date.Open;
    dqrq := qry_date.FieldByname('curr_date').AsDateTime;
    qry_date.Close;
    Height := frm_zxypyz.Height - 40;
    tmh.setfocus;
    tmhExit(tmh);
    v_yzsx := '长期';
    EnableWindow(frm_zxypyz.Handle, True);
    isBqjfOpened := True;
  end;
end;

procedure CreateOrShowBqjf(CardNo: string; Dt: TDateTime);
begin
  if not Assigned(frm_bqjf) then
  begin
    try
      Application.CreateForm(Tfrm_bqjf, Frm_bqjf);
      Frm_bqjf.tmh.text := Trim(CardNo);
      lookupDt := Dt;
      frm_bqjf.ShowModal;
    finally
     // frm_zxypyz.BorderIcons:= [biSystemMenu];
    end;
  end
  else
  begin
    try
      Frm_bqjf.tmh.text := CardNo;
      lookupDt := Dt;
      SetWindowPos(Frm_bqjf.Handle, HWND_TopMost, 0, 0, 0, 0, 3) ;
      if Frm_bqjf.Showing=false then
        Frm_bqjf.ShowModal
      else
        frm_bqjf.BringToFront;
    finally
     //  frm_zxypyz.BorderIcons:= [biSystemMenu];
      //FreeAndNil(frm_bqjf);
    end;
  end;
end;

function Tfrm_bqjf.IndirectImportExport():Boolean;
begin
  QryPub.Close;
  QryPub.sql.clear;
  QryPub.sql.Text := 'select * from sys_jzzt';
  QryPub.open;
  if QryPub.FieldByName('jzzt').AsBoolean then
  begin
    Application.MessageBox('系统正在结转数据请稍候!', '提示', 0 +
      48);
  end;
  Result := QryPub.FieldByName('jzzt').AsBoolean;
end;

procedure Tfrm_bqjf.initXH(xh: Integer);
begin
  Fxh := xh;
end;

end.

