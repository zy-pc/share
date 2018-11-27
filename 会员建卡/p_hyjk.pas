unit p_hyjk;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, DBTables, Db, Grids, DBGrids, ComCtrls, ExtCtrls,
  DBCtrls, DBCGrids, Mask, ADODB, DBCtrlsEh, OleCtrls, IDROCXLib_TLB,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, cxDBEdit, SXAgeBox;

type
  Tfrm_hyjk = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label12: TLabel;
    Label18: TLabel;
    Label17: TLabel;
    brxm: TDBEdit;
    ds_dj: TDataSource;
    brdwdz: TDBEdit;
    sfzhm: TDBEdit;
    Label13: TLabel;
    brzy: TComboBox;
    brxb: TComboBox;
    Label19: TLabel;
    brjg: TComboBox;
    Label20: TLabel;
    brsf: TComboBox;
    Label21: TLabel;
    brmz: TComboBox;
    dstemp: TDataSource;
    jbqk_cx: TADODataSet;
    Label8: TLabel;
    brdh: TDBEdit;
    Label16: TLabel;
    nxrdz: TDBEdit;
    sp_gettmh: TADOStoredProc;
    Label25: TLabel;
    dbr: TDBEdit;
    Panel2: TPanel;
    Label1: TLabel;
    tmh: TEdit;
    Panel3: TPanel;
    b_save: TBitBtn;
    tempgrid: TDBGrid;
    DBMemo1: TDBMemo;
    Label6: TLabel;
    Label7: TLabel;
    Panel4: TPanel;
    DBGrid1: TDBGrid;
    Label9: TLabel;
    Edit1: TEdit;
    qry_dj: TADODataSet;
    sp_cx_brqk: TADOStoredProc;
    Label11: TLabel;
    khlb: TComboBox;
    Label4: TLabel;
    brxx: TComboBox;
    Label5: TLabel;
    DBMemo2: TDBMemo;
    Label10: TLabel;
    DBMemo3: TDBMemo;
    Label15: TLabel;
    bryb: TDBEdit;
    Label14: TLabel;
    qry_sblb: TADOQuery;
    ds_sblb: TDataSource;
    Label22: TLabel;
    DBEdit1: TDBEdit;
    Label23: TLabel;
    DBEdit2: TDBEdit;
    csrq: TcxDBDateEdit;
    bc: TLabel;
    b_cancel: TBitBtn;
    b_close: TBitBtn;
    pnl2: TPanel;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    edtsjbh: TEdit;
    edt_sjsysl: TEdit;
    edtczyxm: TEdit;
    edtczydm: TEdit;
    qry_kgl: TADOQuery;
    ADODataSet1: TADODataSet;
    sp_kgl_fk: TADOStoredProc;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    StringField9: TStringField;
    BCDField1: TBCDField;
    StringField10: TStringField;
    StringField11: TStringField;
    StringField12: TStringField;
    BCDField2: TBCDField;
    StringField13: TStringField;
    StringField14: TStringField;
    qry_kgl_check: TADOQuery;
    ds_kgl_check: TDataSource;
    ds_kgl_fk: TDataSource;
    nl: TSXAgeBox;
    MyIdrOcx1: TMyIdrOcx;
    qry_pub: TADOQuery;
    sbzl: TComboBox;
    Label24: TLabel;
    brdw: TComboBox;
    dbgrd2: TDBGrid;
    qry_dw: TADOQuery;
    ds_dw: TDataSource;
    Label26: TLabel;
    pkrk: TComboBox;
    qry_pkrk: TADOQuery;
    ds_yyjk: TADODataSet;
    qry_cxjbxx: TADOQuery;
    sp_sclsh: TADOStoredProc;
    qry_update: TADOQuery;
    procedure b_close1Click(Sender: TObject);
    procedure tempgridKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tempgridExit(Sender: TObject);
    procedure b_saveClick(Sender: TObject);
    procedure sfzhmKeyPress(Sender: TObject; var Key: Char);
    procedure zydj_yz;
    procedure FormCreate(Sender: TObject);
    procedure brjgExit(Sender: TObject);
    procedure brsfExit(Sender: TObject);
    procedure brmzExit(Sender: TObject);
    procedure brzyExit(Sender: TObject);
    procedure brxbExit(Sender: TObject);
    procedure brxmExit(Sender: TObject);
    procedure dbrExit(Sender: TObject);
    procedure sfzhmExit(Sender: TObject);
    procedure DBMemo2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure csrq1Exit(Sender: TObject);
    procedure tmhExit(Sender: TObject);
    procedure brdwdzExit(Sender: TObject);
    procedure khlbExit(Sender: TObject);
    procedure brxxExit(Sender: TObject);
    procedure brxmEnter(Sender: TObject);
    procedure brybExit(Sender: TObject);
    procedure tmhEnter(Sender: TObject);
    procedure nxrdzExit(Sender: TObject);
    procedure brdhKeyPress(Sender: TObject; var Key: Char);
    procedure brdwdzEnter(Sender: TObject);
    procedure nxrdzEnter(Sender: TObject);
    procedure DBMemo2Enter(Sender: TObject);
    procedure DBMemo1Enter(Sender: TObject);
    procedure DBMemo3Enter(Sender: TObject);
    procedure dbrEnter(Sender: TObject);
    procedure b_cancel1Click(Sender: TObject);
    procedure csrqExit(Sender: TObject);
    procedure b_cancelClick(Sender: TObject);
    procedure b_closeClick(Sender: TObject);
    procedure tmhKeyPress(Sender: TObject; var Key: Char);
    procedure brxmKeyPress(Sender: TObject; var Key: Char);
    procedure brxbKeyPress(Sender: TObject; var Key: Char);
    procedure csrqKeyPress(Sender: TObject; var Key: Char);
    procedure brnlKeyPress(Sender: TObject; var Key: Char);
    procedure brsfKeyPress(Sender: TObject; var Key: Char);
    procedure brjgKeyPress(Sender: TObject; var Key: Char);
    procedure brmzKeyPress(Sender: TObject; var Key: Char);
    procedure brzyKeyPress(Sender: TObject; var Key: Char);
    procedure khlbKeyPress(Sender: TObject; var Key: Char);
    procedure brxxKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure sbzlKeyPress(Sender: TObject; var Key: Char);
    procedure sfzhmEnter(Sender: TObject);
    procedure dbrKeyPress(Sender: TObject; var Key: Char);
    procedure brdwdzKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure nxrdzKeyPress(Sender: TObject; var Key: Char);
    procedure DBMemo2KeyPress(Sender: TObject; var Key: Char);
    procedure DBMemo1KeyPress(Sender: TObject; var Key: Char);
    procedure DBMemo3KeyPress(Sender: TObject; var Key: Char);
    procedure brybKeyPress(Sender: TObject; var Key: Char);
    procedure sbzlExit(Sender: TObject);
    procedure sbzlClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure nlExit(Sender: TObject);
    procedure nlKeyPress(Sender: TObject; var Key: Char);
    procedure nlEnter(Sender: TObject);
    procedure csrqEnter(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure brdhExit(Sender: TObject);
    procedure DBMemo2Exit(Sender: TObject);
    procedure DBMemo1Exit(Sender: TObject);
    procedure DBMemo3Exit(Sender: TObject);
    procedure brdwExit(Sender: TObject);
    procedure dbgrd2DblClick(Sender: TObject);
    procedure dbgrd2KeyPress(Sender: TObject; var Key: Char);
    procedure brdwKeyPress(Sender: TObject; var Key: Char);
    procedure pkrkExit(Sender: TObject);
  private
    IsAdd: Boolean;
    { Private declarations }
    jk_sjbh: string; //门诊收据编号
    sjbhqh, sjbhzh, sjbhzh_real {实际的收据止号}: integer;
    jkbz: Boolean;
    kgl_lydh, kgl_klb, kgl_fydm, kgl_fydm_cq, kgl_fydm_ls, kgl_fymc,
      kgl_fymc_cq, kgl_fymc_ls, kgl_kh, kgl_xm, kgl_xb, kgl_nl: string;
    kgl_sfbz, kgl_sfbz_cq, kgl_sfbz_ls: real; //卡管理使用字段(领用单号,卡类别,费用代码,收费标准)
    procedure proc_get_sjbh;
    procedure proc_tmh_jy;
    procedure proc_mzgh_kgl_check;
    procedure proc_hyjk_print;
    function func_check_kyhlrmm: Boolean;
  public
    resultf: string;
    v_yxlrhylb: Boolean;
    tempcom: Tcombobox;
    procedure gmywlr;
    procedure calcnl;
    function proc_dqSfzxx(MyIdrOcx1: TMyIdrOcx): string;
    procedure finditems(tablename, numf, charf, resultf, info: string; tempcom: Tcombobox);
    procedure Add_xsz(bmc, cxz: string; Cbox: TComboBox);
    { Public declarations }
  end;
procedure Porc_show_hydj(const v_tmh: string);
var
  frm_hyjk: Tfrm_hyjk;
  zy_brsf, zy_brjg, zy_brmz, zy_khlb: string;
  zy_csrq: Tdatetime;
  zy_dwid:Integer;

implementation

uses p_dm, p_func, p_mzgh_print;

{$R *.DFM}

procedure Porc_show_hydj(const v_tmh: string);
begin
  application.CreateForm(Tfrm_hyjk, frm_hyjk);
  try
    frm_hyjk.tmh.Text := v_tmh;
    frm_hyjk.ShowModal;
  finally
    frm_hyjk.FreeOnRelease;
    frm_hyjk.Release;
    frm_hyjk.free;
    frm_hyjk := nil;
  end;
end;

procedure Tfrm_hyjk.finditems(tablename, numf, charf, resultf, info: string; tempcom: Tcombobox);
var
  findfield, s: string;

begin
  s := trim(tempcom.Text);
  if s <> '' then
  begin
    if s[1] in ['0'..'9'] then
      findfield := numf
    else
    if s[1] in ['A'..'z'] then
      findfield := charf
    else
      findfield := resultf;
    jbqk_cx.close;
    if s[1] in ['0'..'9'] then
      jbqk_cx.commandtext := 'select ' + numf + ',' + resultf + ',* from ' + tablename + ' where ' + findfield + '=' + #39 + s + #39
    else
    if s[1] in ['A'..'z'] then
      jbqk_cx.commandtext := 'select ' + numf + ',' + resultf + ',* from ' + tablename + ' where upper(' + findfield + ') like ' + #39 + '%' + uppercase(s) + '%' + #39
    else
      jbqk_cx.commandtext := 'select ' + numf + ',' + resultf + ',* from ' + tablename + ' where upper(' + findfield + ') like ' + #39 + '%' + uppercase(s) + '%' + #39;
    jbqk_cx.Open;
    if jbqk_cx.IsEmpty then
    begin
      messagedlg('代码输入错误，没有找到相应“' + info + '”', mterror, [mbok], 0);
      tempcom.setfocus;
    end
    else
    if jbqk_cx.RecordCount = 1 then
      tempcom.text := jbqk_cx[resultf]
    else
    begin
      tempgrid.Columns.Clear;
      tempgrid.Columns.add;
      tempgrid.Columns[0].field := jbqk_cx.fieldlist[0];
      tempgrid.Columns[0].title.caption := '代码';
      tempgrid.Columns.add;
      tempgrid.Columns[1].field := jbqk_cx.fieldlist[1];
      tempgrid.Columns[1].title.caption := info;
      if frm_hyjk.Width - tempcom.left > tempgrid.Width then
        tempgrid.left := tempcom.left
      else
        tempgrid.left := tempcom.left + tempcom.Width - tempgrid.Width;
      if Panel1.Height - tempcom.top > tempgrid.Height then
        tempgrid.top := tempcom.top + tempcom.Height + Panel1.top + 1
      else
        tempgrid.top := tempcom.top - tempgrid.Height + Panel1.TOP;
      tempgrid.visible := true;
      tempgrid.setfocus;
    end;
  end
end;

procedure Tfrm_hyjk.zydj_yz;
begin
  if trim(qry_dj.FieldByName('brxm').asstring) = '' then
  begin
    application.MessageBox('“病人姓名”不能为空！', '提示', 0 + 16);
    brxm.SelectAll;
    brxm.SetFocus;
    b_save.Enabled := true;
    abort;
  end;
  if trim(qry_dj.FieldByName('brxb').asstring) = '' then
  begin
    application.MessageBox('“病人性别”不能为空！', '提示', 0 + 16);
    brxb.SelectAll;
    brxb.SetFocus;
    b_save.Enabled := true;
    abort;
  end;
  {  if zy_csrq>frm_func.curr_date then
    begin
       application.MessageBox('出生日期输入错误！','提示',0+16);
       csrq.SetFocus;
       abort;
    end;}
  if trim(nl.text) = '' then
  begin
    application.MessageBox('“病人年龄”输入错误！', '提示', 0 + 16);
    nl.SetFocus;
    b_save.Enabled := true;
    abort;
  end;
  {  if trim(qry_dj.FieldByName('brzy').asstring)='' then
    begin
       application.MessageBox('“病人职业”不能为空！','提示',0+16);
       brzy.SelectAll;
       brzy.SetFocus;
       abort;
    end;
    if trim(brdwdz.text)='' then
    begin
       application.MessageBox('“病人住址”不能为空！','提示',0+16);
       brdwdz.SetFocus;
       abort;
    end;}
  if trim(brsf.text) = '' then
  begin
    application.MessageBox('“病人省份”不能为空！', '提示', 0 + 16);
    brsf.SetFocus;
    b_save.Enabled := true;
    abort;
  end;
  if trim(brjg.text) = '' then
  begin
    application.MessageBox('“病人籍贯”不能为空！', '提示', 0 + 16);
    brjg.SetFocus;
    b_save.Enabled := true;
    abort;
  end;
  if trim(brmz.text) = '' then
  begin
    application.MessageBox('“病人民族”不能为空！', '提示', 0 + 16);
    brmz.SetFocus;
    b_save.Enabled := true;
    abort;
  end;
end;

procedure Tfrm_hyjk.b_close1Click(Sender: TObject);
begin
  if qry_dj.Active then qry_dj.Close;
  if jbqk_cx.Active then jbqk_cx.Close;
  if sp_cx_brqk.Active then sp_cx_brqk.Close;
  close;
end;

procedure Tfrm_hyjk.b_closeClick(Sender: TObject);
begin
  if qry_dj.Active then qry_dj.Close;
  Close;
end;

procedure Tfrm_hyjk.tempgridKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 27 then tempgrid.Visible := false;
end;

procedure Tfrm_hyjk.tempgridExit(Sender: TObject);
begin
  tempcom.text := jbqk_cx[resultf];
  tempgrid.Visible := false;
  tempcom.setfocus;
end;

//新建卡号，保存功能

procedure Tfrm_hyjk.b_saveClick(Sender: TObject);
var
  ls: string;
  xbdm : string;
begin
  if IsAdd then
  begin
    //判断新卡身份证已在数据库存在
    DM_data.qry_pub.Close;
    DM_data.qry_pub.SQL.Text := 'select * from sys_kyh where sfzhm=' + #39 + sfzxx.CardNo + #39;
    DM_data.qry_pub.Open;
    if (DM_data.qry_pub.RecordCount > 0) and (trim(sfzxx.CardNo)<>'') then
    begin
      if (pub_yydm='0256') or (pub_yydm='0262') then
       Application.MessageBox(PChar('您在本院已经办理过长期就诊卡' + DM_data.qry_pub.FieldByName('tmh').AsString ), '系统提示', MB_OK + MB_ICONINFORMATION)
      else
      Application.MessageBox(PChar('您在本院已经办理过长期就诊卡' + DM_data.qry_pub.FieldByName('tmh').AsString +
        ',此次办卡需缴纳1元补卡费！'), '系统提示', MB_OK + MB_ICONINFORMATION);
    end;
    {else
    begin
      if (sfzxx.CardNo <> '') and (pub_yydm<>'0262') then
        kgl_sfbz := 0;
    end; }
    b_save.Enabled := False;
  end;
  //必须录入密码
//  if func_check_kyhlrmm then
//  begin
//
//  end;

  if Trim(zy_khlb) = '' then
    zy_khlb := '01';
  qry_dj.edit;
  qry_dj['brxm'] := trim(brxm.text);
  qry_dj['brnl'] := Trim(nl.Text);
  qry_dj['tmh'] := trim(tmh.text);
  qry_dj['zycs'] := 1;
  qry_dj['brxb'] := trim(brxb.text);
  qry_dj['brzy'] := trim(brzy.text);
  qry_dj['brmz'] := trim(zy_brmz);
  qry_dj['brsf'] := trim(zy_brsf);
  qry_dj['brjg'] := trim(zy_brjg);
  qry_dj['brxx'] := trim(brxx.text);
  qry_dj['fylb'] := zy_khlb;
  qry_dj['dwmc'] := trim(brdw.text);
  frm_hyjk.zydj_yz; //验证
  qry_dj.Post;

  if pub_yydm='0228' then
  begin
  if Trim(brxb.Text)='男' then
  begin
    xbdm := '1';
  end
  else
  begin
    xbdm := '2';
  end;
  qry_cxjbxx.Close;
  qry_cxjbxx.SQL.Text := 'select * from PatientInfo where PID ='+#13+tmh.Text+#13;
  qry_cxjbxx.Open;
  if qry_cxjbxx.RecordCount=0 then
  begin
  sp_sclsh.Close;
  sp_sclsh.Parameters.ParamByName('@ccbh').Value := '';
  sp_sclsh.Open;
  ds_yyjk.open;
  ds_yyjk.Append;
  ds_yyjk['RecordFlow'] := sp_sclsh.FieldByName('mzlsh').AsString;
  ds_yyjk['PID'] := Trim(tmh.Text);
  ds_yyjk['PatientName'] := trim(brxm.text);
  ds_yyjk['TmpFlag'] := '正式';
  ds_yyjk['LastName'] := Copy(trim(brxm.text),0,2);
  ds_yyjk['FirstName'] := Copy(trim(brxm.text),3,10);
  ds_yyjk['SexCode'] := xbdm;
  ds_yyjk['Sex'] := trim(brxb.Text);
  ds_yyjk['DateOfBirth'] := FormatDateTime('yyyymmdd',csrq.Date);
  ds_yyjk['TimeOfBirth'] := FormatDateTime('hhmmss',csrq.Date);
  ds_yyjk['Occupation'] := trim(brzy.text);
  ds_yyjk['Nationality'] := trim(brmz.text);
  ds_yyjk['BirthPlace'] := trim(brjg.text);
  ds_yyjk['NativePlace'] := trim(brjg.Text);
  ds_yyjk['BloodType'] := trim(brxx.text);
  ds_yyjk['CertType'] := '身份证';
  ds_yyjk['CertNo'] := trim(sfzhm.text);
  ds_yyjk['FeeTypeCode'] := '01';
  ds_yyjk['FeeType'] := '自费';
  ds_yyjk['Company'] := trim(brdw.text);
  ds_yyjk['ContractUnit'] := trim(brdw.text);
  ds_yyjk['BusinessAddress'] := trim(brdwdz.text);
  ds_yyjk['HomeAddress'] := trim(brdwdz.text);
  ds_yyjk['HomePostCode'] := trim(bryb.text);
  ds_yyjk['MobilePhone'] := trim(brdh.text);
  ds_yyjk['Contact'] := trim(dbr.text);
  ds_yyjk['ContactMethod'] := trim(brdh.text);
  ds_yyjk['OperatorID'] := pub_czydm;
  ds_yyjk['Operator'] := pub_czyxm;
  ds_yyjk['OperatorTime'] := FormatDateTime('yyyymmddhhmmss',Now());
  ds_yyjk['Available'] := 'Y';
  ds_yyjk['ContactAddress'] := trim(nxrdz.text);
  ds_yyjk['ManageType'] := '1';
  ds_yyjk.Post;
  end
  else
  begin
  qry_update.Close;
  qry_update.SQL.Text := 'update PatientInfo set PatientName ='+quotedstr(trim(brxm.text))+','
                          +'LastName ='+quotedstr(Copy(trim(brxm.text),0,2))+','
                          +'FirstName ='+quotedstr(Copy(trim(brxm.text),3,10))+','
                          +'SexCode ='+quotedstr(xbdm)+','
                          +'Sex ='+quotedstr(trim(brxb.Text))+','
                          +'DateOfBirth ='+quotedstr(FormatDateTime('yyyymmdd',csrq.Date))+','
                          +'TimeOfBirth ='+quotedstr(FormatDateTime('hhmmss',csrq.Date))+','
                          +'Occupation ='+quotedstr(trim(brzy.text))+','
                          +'Nationality ='+quotedstr(trim(brmz.text))+','
                          +'BirthPlace ='+quotedstr(trim(brjg.text))+','
                          +'NativePlace ='+quotedstr(trim(brjg.text))+','
                          +'BloodType ='+quotedstr(trim(brxx.text))+','
                          +'CertNo ='+quotedstr(trim(sfzhm.text))+','
                          +'Company ='+quotedstr(trim(brdw.text))+','
                          +'ContractUnit ='+quotedstr(trim(brdw.text))+','
                          +'BusinessAddress ='+quotedstr(trim(brdwdz.text))+','
                          +'HomeAddress ='+quotedstr(trim(brdwdz.text))+','
                          +'HomePostCode ='+quotedstr(trim(bryb.text))+','
                          +'MobilePhone ='+quotedstr(trim(brdh.text))+','
                          +'Contact ='+quotedstr(trim(dbr.text))+','
                          +'ContactMethod ='+quotedstr(trim(brdh.text))+','
                          +'OperatorID ='+quotedstr(pub_czydm)+','
                          +'Operator ='+quotedstr(trim(pub_czyxm))+','
                          +'OperatorTime ='+quotedstr(FormatDateTime('yyyymmddhhmmss',Now()))+','
                          +'ContactAddress ='+quotedstr(trim(nxrdz.text))
                          +'    where PID = '+quotedstr(trim(tmh.text));

   qry_update.ExecSQL;
  end;
  end;

  dm_data.ado_mydata.BeginTrans;
  try
    qry_dj.UpdateBatch;
    if pub_yydm='0228' then
    begin
    ds_yyjk.UpdateBatch;
    end;
    with DM_data do
    begin
      Qry_pub.Close;
      Qry_pub.SQL.Text := 'update mzgh_ghmx set brxm=' + #39 + trim(brxm.text) + #39 +
        ',brnl=' + #39 + trim(nl.text) + #39 + ',brxb=' + #39 + trim(brxb.text) + #39 +
        ' where bybh=' + #39 + trim(tmh.text) + #39;
      Qry_pub.ExecSQL;
    end;
    dm_data.ado_mydata.CommitTrans;
  except
    on E: Exception do
    begin
      application.MessageBox('存盘失败！请重试!', '提示', 0 + 16);
      ShowMessage(e.Message);
      dm_data.ado_mydata.RollbackTrans;
      Abort;
    end; // end
//    dm_data.ado_mydata.RollbackTrans;
//    application.MessageBox('存盘失败！请重试!', '提示', 0 + 16);
//    Abort;
  end;
  //建卡标志
  if jkbz then //jkbz
  begin
    sp_kgl_fk.Close;
    sp_kgl_fk.Parameters.ParamByName('@klydh').Value := kgl_lydh;
    sp_kgl_fk.Parameters.ParamByName('@sjlb').Value := pub_mzsjlb;
    sp_kgl_fk.Parameters.ParamByName('@sjbh').Value := jk_sjbh;
    sp_kgl_fk.Parameters.ParamByName('@klb').Value := kgl_klb;
    sp_kgl_fk.Parameters.ParamByName('@tmh').Value := kgl_kh;
    sp_kgl_fk.Parameters.ParamByName('@czy').Value := pub_czydm;
    sp_kgl_fk.Parameters.ParamByName('@ksdm').Value := pub_ksdm;
    sp_kgl_fk.Parameters.ParamByName('@fydm').Value := kgl_fydm;
    sp_kgl_fk.Parameters.ParamByName('@sfbz').Value := kgl_sfbz;
    sp_kgl_fk.Parameters.ParamByName('@sczt').Value := 'a';
    sp_kgl_fk.ExecProc;
    ls := sp_kgl_fk.Parameters.ParamByName('@sczt').value;
    if ls <> '0' then
    begin
      application.MessageBox(PChar('发卡数据没有正确处理:' + ls), '错误', mb_ok + mb_iconerror);
      abort;
    end;
    proc_hyjk_print;
  end;
  tmh.Enabled := true;
  tmh.SetFocus;
end;

procedure Tfrm_hyjk.sfzhmKeyPress(Sender: TObject; var Key: Char);
begin
  if not ((key in ['0'..'9']) or (key = #8) or (key = '-') or (key = 'X') or
    (key = 'Y') or (key = 'Z') or (key = 'x') or (key = 'y') or (key = 'z') or (key = #13)) then
    key := #0;
  if Key = #13 then
  begin
    brxx.SetFocus;
  end;
end;

procedure Tfrm_hyjk.FormCreate(Sender: TObject);
begin
  qry_sblb.Open;
  //加入职业
  jbqk_cx.Close;
  jbqk_cx.commandtext := 'select * from zysf_brzy order by dm';
  jbqk_cx.Open;
  brZY.Items.Clear;
  while not jbqk_cx.eof do
  begin
    brzy.items.Add(trim(jbqk_cx.fieldbyname('sm').asstring));
    jbqk_cx.next;
  end;
  //加入省份
  jbqk_cx.Close;
  jbqk_cx.commandtext := 'select * from sys_sf order by sypl';
  jbqk_cx.Open;
  brsf.Items.Clear;
  while not jbqk_cx.eof do
  begin
    brsf.items.Add(trim(jbqk_cx['mc']));
    jbqk_cx.next;
  end;
  //加入籍贯
  jbqk_cx.Close;
  jbqk_cx.commandtext := 'select * from sys_jg order by sypl';
  jbqk_cx.Open;
  brjg.Items.Clear;
  while not jbqk_cx.eof do
  begin
    brjg.items.Add(trim(jbqk_cx['mc']));
    jbqk_cx.next;
  end;
  //加入民族
  jbqk_cx.Close;
  jbqk_cx.commandtext := 'select * from sys_mz order by sypl';
  jbqk_cx.Open;
  brmz.Items.Clear;
  while not jbqk_cx.eof do
  begin
    brmz.items.Add(trim(jbqk_cx['mc']));
    jbqk_cx.next;
  end;
  v_yxlrhylb := (pub_yydm = '0229') or (pub_yydm = '0092');
  //加入费用类别
  jbqk_cx.Close;
  if (pub_yydm='0266' )or (pub_yydm='0266') then
  begin
    jbqk_cx.commandtext := 'select * from sys_fylb  order by dm';
  end else
  begin
    jbqk_cx.commandtext := 'select * from sys_fylb where dm=37 order by dm';
  end;
  jbqk_cx.Open;
  if jbqk_cx.RecordCount > 0 then
  begin
    v_yxlrhylb := True;
    khlb.Items.Clear;
    while not jbqk_cx.eof do
    begin
      khlb.items.Add(trim(jbqk_cx['mc']));
      jbqk_cx.next;
    end;
  end;
    Add_xsz('zysf_sbbrlb', 'lbdm', sbzl);
    sbzl.Text:='';
end;

procedure Tfrm_hyjk.FormShow(Sender: TObject);
begin
  if pub_yydm='0182' then
  begin
    pkrk.Visible:=True;
    label26.Visible:=True;
  end;
  khlb.Enabled := v_yxlrhylb;
  ADODataSet1.Close;
  ADODataSet1.CommandText := 'select * from sys_xt_kg';
  ADODataSet1.Open;
  if Assigned(ADODataSet1.FindField('cqjzkgbf')) then //长期就诊卡工本费
  begin
    kgl_fydm_cq := Trim(ADODataSet1.FieldByName('cqjzkgbf').AsString);
    if kgl_fydm_cq <> '' then
    begin
      qry_kgl_check.Close;
      qry_kgl_check.SQL.Text := 'select fymc,sfbz from sys_kjsfxm where fydm=' + #39 + kgl_fydm_cq + #39;
      qry_kgl_check.Open;
      kgl_fymc_cq := qry_kgl_check.FieldByName('fymc').AsString;
      kgl_sfbz_cq := qry_kgl_check.FieldByName('sfbz').AsFloat;
    end;
  end;
  if Assigned(ADODataSet1.FindField('lsjzkyj')) then //临时就诊卡预交
  begin
    kgl_fydm_ls := ADODataSet1.FieldByName('lsjzkyj').AsString;
    if kgl_fydm_ls <> '' then
    begin
      qry_kgl_check.Close;
      qry_kgl_check.SQL.Text := 'select fymc,sfbz from sys_kjsfxm where fydm=' + #39 + kgl_fydm_ls + #39;
      qry_kgl_check.Open;
      kgl_fymc_ls := qry_kgl_check.FieldByName('fymc').AsString;
      kgl_sfbz_ls := qry_kgl_check.FieldByName('sfbz').AsFloat;
    end;
  end;
  proc_get_sjbh;
  tmh.SetFocus;
end;

function Tfrm_hyjk.func_check_kyhlrmm: Boolean;
begin

  try

  except
    Result := False;
  end;
end;

procedure Tfrm_hyjk.brjgExit(Sender: TObject);
begin
  frm_func.restorecolor(Sender);
  if Trim(brjg.Text) = '' then
  begin
    brjg.SetFocus;
  end
  else
  begin
    finditems('sys_jg', 'dm', 'py', 'mc', '籍贯', brjg);
    resultf := 'mc';
    tempcom := brjg;
    try
      zy_brjg := jbqk_cx['dm'];
    except
    end;
  end;
end;

procedure Tfrm_hyjk.brjgKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    brmz.SetFocus;
  end;
end;

procedure Tfrm_hyjk.brsfExit(Sender: TObject);
begin
  frm_func.restorecolor(Sender);
  if Trim(brsf.Text) = '' then
  begin
    brsf.SetFocus;
  end
  else
  begin
    resultf := 'mc';
    tempcom := brsf;
    finditems('sys_sf', 'dm', 'py', 'mc', '省份', brsf);
    try
      zy_brsf := jbqk_cx['dm'];
    except
    end;
  end;
end;

procedure Tfrm_hyjk.brsfKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    brjg.SetFocus;
  end;
end;

procedure Tfrm_hyjk.brmzExit(Sender: TObject);
begin
  frm_func.restorecolor(Sender);
  finditems('sys_mz', 'dm', 'py', 'mc', '民族', brmz);
  resultf := 'mc';
  tempcom := brmz;
  try
    zy_brmz := jbqk_cx['dm'];
  except
  end;
end;

procedure Tfrm_hyjk.brmzKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    brzy.SetFocus;
  end;
end;

procedure Tfrm_hyjk.brzyExit(Sender: TObject);
begin
  frm_func.restorecolor(Sender);
  resultf := 'sm';
  tempcom := brzy;
  finditems('zysf_brzy', 'dm', 'dm', 'sm', '职业', brzy);
end;

procedure Tfrm_hyjk.brzyKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    sfzhm.SetFocus;
  end;
end;

procedure Tfrm_hyjk.brxbExit(Sender: TObject);
begin
  frm_func.restorecolor(Sender);
  if not (b_cancel.Focused or b_close.Focused) then
    if (brxb.Text = '1') or (brxb.Text = '男') then
      brxb.Text := '男'
    else
      if (brxb.Text = '2') or (brxb.Text = '女') then
        brxb.text := '女'
      else
        brxb.Text := '男';
  kgl_xb := Trim(brxb.Text);
end;

procedure Tfrm_hyjk.brxbKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    csrq.SetFocus;
  end;
end;

procedure Tfrm_hyjk.brxmExit(Sender: TObject);
begin
  frm_func.restorecolor(Sender);
  if not (b_cancel.Focused or b_close.Focused) then
    if trim(qry_dj.FieldByName('brxm').asstring) = '' then
    begin
      application.MessageBox('“病人姓名”不能为空！', '提示', 0 + 16);
      brxm.SelectAll;
      brxm.SetFocus;
    end
    else
    begin
      dbr.text := trim(brxm.text);
    end;
  kgl_xm := trim(brxm.text);
end;

procedure Tfrm_hyjk.brxmKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    if Trim(brxm.Text) = '' then
    begin
      brxm.SetFocus;
    end
    else
    begin
      brxb.SetFocus;
    end;
  end;
end;

procedure Tfrm_hyjk.brnlKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    brsf.SetFocus;
  end;
end;

procedure Tfrm_hyjk.dbrExit(Sender: TObject);
begin
  frm_func.restorecolor(Sender);
  dbr.text := trim(dbr.text);
  if length(trim(dbr.text)) = 0 then
  begin
    nxrdz.enabled := false;
    DBMemo2.setfocus;
  end
  else
  begin
    nxrdz.enabled := true;
    nxrdz.setfocus;
  end;
end;

procedure Tfrm_hyjk.dbrKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    brdwdz.SetFocus;
  end;
end;

procedure Tfrm_hyjk.sfzhmEnter(Sender: TObject);
begin
  if (sfzxx <> nil) and (sfzxx.CardNo <> '') then
    sfzhm.Text := sfzxx.CardNo;
  frm_func.changecolor(Sender);
//  sfzhm.SelectAll;
end;

procedure Tfrm_hyjk.sfzhmExit(Sender: TObject);
begin
  frm_func.restorecolor(Sender);
  sfzhm.text := trim(sfzhm.text);
  if length(trim(sfzhm.text)) > 0 then
    if ((length(trim(sfzhm.text)) <> 15) and (length(trim(sfzhm.text)) <> 18)) then
    begin
      application.MessageBox('“身份证号码”长度只能为15位或18位！', '提示', 0 + 16);
      sfzhm.SetFocus;
    end
    else
    begin
      try
      sfzxx.CardNo := sfzhm.text;
      except

      end;
    end;
    //镇巴医院判断贫困人口
  if pub_yydm='0182' then
  begin
    qry_pkrk.Close;
    qry_pkrk.Parameters.ParamByName('sfzh').Value:=trim(sfzhm.text);
    qry_pkrk.Open;
    if qry_pkrk.RecordCount>0 then
      pkrk.Text:='是'
    else
      pkrk.Text:='否';
  end;  
  if ( pub_yydm='0240')or (pub_yydm='0266') then
  khlb.SetFocus; 
end;

procedure Tfrm_hyjk.DBMemo2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 119 then
  begin
    tempgrid.top := 81;
    tempgrid.left := 199;
    tempgrid.visible := true;
  end;
end;

procedure Tfrm_hyjk.DBMemo2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    DBMemo1.SetFocus;
  end;
end;

procedure Tfrm_hyjk.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  ls: string;
begin
  if key = 13 then
  begin
    ls := trim(Edit1.text);
    jbqk_cx.close;
    if ls = '0' then
    begin
      Panel4.visible := false;
      DBMemo2.setfocus;
      abort;
    end
    else
      if ls = '' then
        jbqk_cx.commandtext := 'select * from sys_gmyw order by mc'
      else
        jbqk_cx.commandtext := 'select * from sys_gmyw where dm=' + #39 + ls + #39 + ' or mc like ' + #39 + '%' + ls + '%' + #39 + ' or pym like ' + #39 + '%' + ls + '%' + #39 + ' order by mc';
    jbqk_cx.open;
    if jbqk_cx.isempty then
    begin
      MessageDlg('没有找到此“过敏药物”！', mtError, [mbOk], 0);
      Edit1.setfocus;
    end
    else
      DBGrid1.setfocus;
  end;
end;

procedure Tfrm_hyjk.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    nxrdz.SetFocus;
  end;
end;

procedure Tfrm_hyjk.DBEdit2Exit(Sender: TObject);
begin
  DBEdit2.Text := Trim(DBEdit2.Text);
end;

procedure Tfrm_hyjk.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    //    DBLookupComboBox1.SetFocus;
    brdh.SetFocus;
  end;
end;

procedure Tfrm_hyjk.dbgrd2DblClick(Sender: TObject);
begin
    if qry_dj.State =dsedit then
    begin
      qry_dj['dwmc']:=qry_dw.FieldByName('dwmc').AsString;
      brdw.Text:=qry_dw.FieldByName('dwmc').AsString;
      qry_dj['dwid']:=qry_dw.FieldByName('dwid').AsString;
      dbgrd2.Visible:=false;
    end;
end;

procedure Tfrm_hyjk.dbgrd2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    if qry_dj.State =dsedit then
    begin
      qry_dj['dwmc']:=qry_dw.FieldByName('dwmc').AsString;
      brdw.Text:=qry_dw.FieldByName('dwmc').AsString;
      qry_dj['dwid']:=qry_dw.FieldByName('dwid').AsString;
      dbgrd2.Visible:=false;
    end;
  end
  else
  if key =#27 then
  dbgrd2.Visible:=false;
  
end;

procedure Tfrm_hyjk.DBGrid1DblClick(Sender: TObject);
begin
  gmywlr;
end;

procedure Tfrm_hyjk.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 13 then gmywlr;
end;

procedure Tfrm_hyjk.sbzlClick(Sender: TObject);
begin
  qry_sblb.Close;
  qry_sblb.Open;
end;

procedure Tfrm_hyjk.sbzlExit(Sender: TObject);
var
s:string;
begin
  //qry_dj['sblb'] := qry_sblb['lbmc'];
  s:=Trim(sbzl.Text);
  if (Length(s) > 6) and (s[1] in ['0'..'9']) then
  begin
    qry_dj['sblb'] :=Copy(s, 1, 2);
    sbzl.Text:=Copy(s, 4, 20);
  end;
end;

procedure Tfrm_hyjk.sbzlKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    //sbzl.ReadOnly := False;
    //qry_dj['sblb'] := qry_sblb['lbmc'];
    brdh.SetFocus;
  end;
end;

procedure Tfrm_hyjk.gmywlr;
var
  ls: string;
begin
  ls := trim(qry_dj.fieldbyname('gmyw').asstring);
  qry_dj.edit;
  if ls = '' then
    qry_dj['gmyw'] := trim(jbqk_cx.fieldbyname('mc').asstring)
  else
    qry_dj['gmyw'] := ls + ';' + trim(jbqk_cx.fieldbyname('mc').asstring);
  qry_dj.post;
  Panel4.visible := false;
  DBMemo2.setfocus;
end;

procedure Tfrm_hyjk.csrq1Exit(Sender: TObject);
begin
  frm_func.restorecolor(Sender);
  if not (b_cancel.Focused or b_close.Focused) then
    calcnl;
end;

procedure Tfrm_hyjk.csrqEnter(Sender: TObject);
begin
  frm_func.changecolor(sender);
end;

procedure Tfrm_hyjk.csrqExit(Sender: TObject);
var
tmhxx:string;
nlxx:string;
begin
  frm_func.restorecolor(sender);
  if csrq.Date > Frm_func.curr_date then
  begin
    Application.MessageBox('请输入有效年龄', '系统提示:', MB_OK + MB_ICONEXCLAMATION);
    csrq.SetFocus;
    Exit;
  end;
  nl.Csrq := csrq.Date;
  if sfzxx <> nil then
    sfzxx.Born := FormatDateTime('yyyy-MM-dd', csrq.Date);
  qry_dj['brnl'] := Trim(nl.text);
  kgl_nl := Trim(nl.Text);

  //添加重复卡判断
  nlxx:=FormatDateTime('yyyy-MM-dd', csrq.Date);
  with  DM_data do
  begin
    qry_pub.Close;
    qry_pub.sql.Text:='select * from  sys_kyh where brxm='+#39+trim(brxm.Text)+#39  +' and brxb='+#39+trim(brxb.Text)+#39+' and CONVERT(varchar(10),csrq,120)='+#39+nlxx+#39;
    qry_pub.Open;
    if qry_pub.RecordCount>0 then
    begin
       qry_pub.First;
       while not qry_pub.Eof do
       begin
         tmhxx :=tmhxx+trim(qry_pub.FieldByName('tmh').AsString)+ ' 地址:'+trim(qry_pub.FieldByName('brdz').AsString)+';'+#13;
         qry_pub.Next;
       end;
       Application.MessageBox(pchar('系统已存在姓名、性别、年龄相同的病人信息,卡号:'+#13+tmhxx+' 请确认!'), '系统提示:', MB_OK + MB_ICONEXCLAMATION);
    end;
  end;
  
end;

procedure Tfrm_hyjk.csrqKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    brsf.SetFocus;
  end;
end;

procedure Tfrm_hyjk.calcnl;
var
  cs101, cs102, cs103, cs111, cs112, cs113: Word;
  cs12n, cs12y, cs12r, v_nl: string;
  sj1, sj2: Tdatetime;
begin
  if Trim(csrq.Text) <> '' then
  begin
    qry_dj.Edit;
    sj1 := csrq.Date;
    sj2 := frm_func.curr_date;
    DecodeDate(sj1, cs101, cs102, cs103);
    DecodeDate(sj2, cs111, cs112, cs113);
    cs12n := inttostr(cs111 - cs101);
    cs12y := inttostr(cs112 - cs102);
    cs12r := inttostr(cs113 - cs103);
    qry_dj['csrq'] := sj1;
    v_nl := '';
    if cs12n <> '0' then
      v_nl := v_nl + cs12n + '岁';
    if cs12y <> '0' then
      v_nl := v_nl + cs12y + '月';
    if cs12r <> '0' then
      v_nl := v_nl + cs12r + '天';
    qry_dj['brnl'] := v_nl;
    //  qry_dj.post;
  end;
end;

procedure Tfrm_hyjk.pkrkExit(Sender: TObject);
begin
  if (Trim(pkrk.text)<>'') and (Trim(pkrk.text)<>'是') and (Trim(pkrk.text)<>'否') then
  begin
    application.MessageBox('只能选择"是"或"否",不能输入其他内容！', '提示', 0 + 16);
    pkrk.Text:='';
    abort;
  end ;
  if Trim(pkrk.text)='是' then
    qry_dj['pkrk']:='1'
  else
    qry_dj['pkrk']:='0';
  
end;

procedure Tfrm_hyjk.tmhExit(Sender: TObject);
var
  sfzError: string;
begin
  isadd := False;
  frm_func.restorecolor(Sender);
  //  if ( trim( tmh.text ) <> '' ) and ( Length( trim( tmh.text ) ) <> 12 ) then
  //    if Copy( trim( tmh.text ), 1, 2 ) <> '99' then
  //    begin
  //      application.MessageBox( '无效的卡号,请确认！', '错误', mb_ok + mb_iconerror );
  //      tmh.setfocus;
  //      Exit;
  //    end;
  if not (b_cancel.Focused or b_close.Focused) then
  begin
    jkbz := False;
    //条码号校验
    proc_tmh_jy;
    ds_yyjk.Close;
    ds_yyjk.Open;
    //如果已经存在信息则进行修改操作
    if (qry_dj.Active) and (qry_dj.RecordCount > 0) then
    begin
      if application.MessageBox(pchar('是否修改' + trim(qry_dj.fieldbyname('brxm').asstring) + ' 信息'), '提示', mb_yesno + mb_iconquestion) <> IDYES then
      begin
        tmh.SetFocus;
        tmh.SelectAll;
      end
      else
      begin
        sp_cx_brqk.Close;
        sp_cx_brqk.Parameters.ParamByName('@tmh').value := trim(tmh.text);
        sp_cx_brqk.open;
        brxb.Text := qry_dj.fieldbyname('brxb').asstring;
        brzy.Text := qry_dj.fieldbyname('brzy').asstring;
        brxx.Text := qry_dj.fieldbyname('brxx').asstring;
        if not qry_dj.fieldbyname('csrq').IsNull then
          nl.Csrq := csrq.Date;
        brsf.text := sp_cx_brqk.fieldbyname('sfmc').asstring;
        zy_brsf := sp_cx_brqk.fieldbyname('brsf').asstring;
        brjg.text := sp_cx_brqk.fieldbyname('jgmc').asstring;
        zy_brjg := sp_cx_brqk.fieldbyname('brjg').asstring;
        brmz.text := sp_cx_brqk.fieldbyname('mzmc').asstring;
        zy_brmz := sp_cx_brqk.fieldbyname('brmz').asstring;
        khlb.text := sp_cx_brqk.fieldbyname('fylbmc').asstring;
        zy_khlb := sp_cx_brqk.fieldbyname('fylb').asstring;
        brdw.text:= sp_cx_brqk.fieldbyname('dwmc').asstring;
        zy_dwid:=sp_cx_brqk.fieldbyname('dwid').AsInteger;
        if pub_yydm='0182' then //镇巴中医院显示贫困人口
        begin
          if sp_cx_brqk.fieldbyname('pkrk').AsBoolean then
            pkrk.Text:='是'
          else
            pkrk.Text:='否';
        end;
        
        if True then
        qry_dj.edit;
        if qry_dj.fieldbyname('sfzhm').IsNull then
          qry_dj['sfzhm'] := ''
        else
          qry_dj['sfzhm'] := Trim(qry_dj['sfzhm']);
        b_save.Enabled := true;
        b_cancel.Enabled := true;
        brxm.SetFocus;
      end;
    end
    else //如果不存在进行增加操作
    begin
      //罗江县医院不允许在门诊收费中新增
      if (pub_yydm = '0046') and (username = 'sys_mzsf') then
      begin
        application.MessageBox('卡号不正确或者该卡号不存在！', '提示', 0 + 16);
        tmh.SetFocus;
        Abort;
      end;
      //      if qry_dj.fieldbyname( 'bkbz' ).AsBoolean and ( qry_dj.fieldbyname( 'tkbz' ).AsBoolean ) then
      //      begin
      //        application.MessageBox( '此卡已退卡！', '提示', mb_ok + mb_iconerror );
      //        tmh.setfocus;
      //        Abort;
      //      end;
      if application.MessageBox('此卡未登记，是否增加？', '提示', mb_yesno + mb_iconquestion) <> idyes then
      begin
        tmh.SetFocus;
        tmh.SelectAll;
      end
      else
      begin
        isadd := True;
        kgl_fydm := '';
        kgl_sfbz := 0;
        kgl_fymc := '';
        kgl_kh := Trim(tmh.Text);
        proc_mzgh_kgl_check; //判断是否建卡
        qry_dj.Append;
        b_cancel.Enabled := true;
        b_save.Enabled := true;
        sfzError := proc_dqSfzxx(MyIdrOcx1); //读取身份证信息
        if (sfzError = '') and (sfzxx <> nil) then
        begin
          brxm.Text := Trim(sfzxx.Name);
          kgl_xm := brxm.Text;
          kgl_xb := Trim(brxb.Text);
          kgl_nl := Trim(nl.Text);
          dbr.text := trim(brxm.text);
          brxb.Text := Trim(sfzxx.Sex);
          csrq.Date := encodedate(StrToInt(Copy(sfzxx.Born, 1, 4)),
            StrToInt(Copy(sfzxx.Born, 7, 2)), StrToInt(Copy(sfzxx.Born, 11, 2)));
          nl.Csrq := csrq.Date;
//          nl.text := IntToStr(strtoint(copy(formatdatetime('yyyy-mm-dd', Frm_func.curr_date), 1, 4))
//            - strtoint(copy(sfzxx.Born, 1, 4)));
          brmz.Text := sfzxx.Nation;
          if Pos('族', Trim(brmz.Text)) = 0 then
            brmz.Text := brmz.Text + '族';
          zy_brmz := brmz.Text;
          brdwdz.Text := sfzxx.Address;
          nxrdz.Text := sfzxx.Address;
          sfzhm.Text := sfzxx.CardNo;
          //镇巴判断是否贫困人口
          if pub_yydm='0182' then
          begin
           qry_pkrk.Close;
           qry_pkrk.Parameters.ParamByName('sfzh').Value:=trim(sfzhm.text);
           qry_pkrk.Open;
           if qry_pkrk.RecordCount>0 then
            pkrk.Text:='是'
           else
           pkrk.Text:='否';
          end;
          b_save.SetFocus;
        end
        else
        begin
          bc.Caption := sfzError + '使用手工录入模式';
          brxm.SetFocus;
          brxm.SelectAll;
        end;
      end;
      if pub_yydm='0262' then
      begin
        zy_khlb:='10';
        khlb.Text:='普通会员';
      end;
    end;
  end;
end;

procedure Tfrm_hyjk.tmhKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    brxm.SetFocus;
  end;
end;

procedure Tfrm_hyjk.brdwdzExit(Sender: TObject);
begin
  frm_func.restorecolor(Sender);
  brdwdz.text := trim(brdwdz.text);
  if trim(brdwdz.text) <> '' then
  begin
    qry_dj.Edit;
    qry_dj['dbrdz'] := trim(brdwdz.text);
    qry_dj.Post;
  end;
end;

procedure Tfrm_hyjk.brdwdzKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    DBEdit1.SetFocus;
  end;
end;

procedure Tfrm_hyjk.brdwExit(Sender: TObject);
begin
  if Trim(brdw.text)='' then
  begin
    if qry_dj.State =dsedit then
    begin
      qry_dj['dwmc']:='';
      qry_dj['dwid']:=0;
    end;
    Exit;
  end;
  qry_dw.Close;
  qry_dw.Parameters.ParamByName('pym').Value:=brdw.Text;
  qry_dw.Open;
  if (qry_dw.RecordCount=1)  then
  begin
    if qry_dj.State =dsedit then
    begin
      qry_dj['dwmc']:=qry_dw.FieldByName('dwmc').AsString;
      brdw.Text:=qry_dw.FieldByName('dwmc').AsString;
      qry_dj['dwid']:=qry_dw.FieldByName('dwid').AsString;
    end;
  end
  else
  if  (qry_dw.RecordCount>1) and (qry_dj.State =dsedit) then
  begin
    if qry_dj.State =dsedit then
    begin
      dbgrd2.Visible:=True;
      dbgrd2.SetFocus;
    end;
  end
  else
    MessageDlg('未查找到满足条件的单位!', mtError, [mbOk], 0);
  
  
end;

procedure Tfrm_hyjk.brdwKeyPress(Sender: TObject; var Key: Char);
begin
if Key=#13 then
brdwExit(self);
end;

procedure Tfrm_hyjk.khlbExit(Sender: TObject);
begin
  frm_func.restorecolor(Sender);

  if Trim(khlb.Text) = '' then
  begin
//    khlb.SetFocus ;
    zy_khlb :='';
  end
  else
  begin
    finditems('sys_fylb', 'dm', 'dm', 'mc', '卡号种类', khlb);
    resultf := 'mc';
    tempcom := khlb;
    try
      zy_khlb := jbqk_cx['dm'];
    except
    
    end;
  end;
end;

procedure Tfrm_hyjk.khlbKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    brxx.SetFocus;
  end;
end;

procedure Tfrm_hyjk.brxxExit(Sender: TObject);
var
  ls: string;
begin
  frm_func.restorecolor(Sender);
  ls := trim(Uppercase(brxx.text));
  if (ls <> '') then
  begin
    if ((ls = 'A') or (ls = 'B') or (ls = 'O') or (ls = 'AB') or (ls = '其他')) then
    else
    begin
      MessageDlg('“血型”输入错误！', mtError, [mbOk], 0);
      brxx.setfocus;
    end;
  end;
end;

procedure Tfrm_hyjk.brxxKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    bryb.SetFocus;
  end;
end;

procedure Tfrm_hyjk.brxmEnter(Sender: TObject);
begin
  frm_func.changecolor(Sender);
  brxm.ImeName := pub_czysrf;
  brxm.ImeMode := imChinese;
end;

procedure Tfrm_hyjk.brybExit(Sender: TObject);
begin
  frm_func.restorecolor(Sender);
  bryb.text := trim(bryb.text);
  if length(trim(bryb.text)) > 0 then
    if (length(trim(bryb.text)) <> 6) then
    begin
      application.MessageBox('“邮政编码”长度只能为6位！', '提示', 0 + 16);
      bryb.SetFocus;
    end;
end;

procedure Tfrm_hyjk.brybKeyPress(Sender: TObject; var Key: Char);
begin
  if not ((key in ['0'..'9']) or (key = #8) or (key = '-') or (key = #13)) then
    key := #0;
  if Key = #13 then
  begin
    DBEdit2.SetFocus;
  end;
end;

procedure Tfrm_hyjk.tmhEnter(Sender: TObject);
begin
  frm_func.changecolor(Sender);
  b_save.Enabled := false;
  b_cancel.Enabled := false;
  qry_dj.close;
  brxb.text := '';
  brsf.text := '';
  brjg.text := '';
  brzy.text := '';
  brmz.text := '';
  brxx.text := '';
  khlb.text := '';
  tmh.text := '';
  sbzl.Text :='';
  zy_khlb :='';
  bc.Caption := '';
  nl.Text := '';
  brdw.Text:='';
  IsAdd := False;
  if Assigned(sfzxx) then
  begin
    sfzxx.Name := ''; //姓名
    sfzxx.Sex := ''; //性别
    sfzxx.Nation := ''; //民族
    sfzxx.Born := ''; //出生日期
    sfzxx.Address := ''; //地址
    sfzxx.CardNo := ''; //身份证号
    sfzxx.Police := ''; //发证机关
    sfzxx.Activity := ''; //有效期
  end;
end;

procedure Tfrm_hyjk.nxrdzExit(Sender: TObject);
begin
  frm_func.restorecolor(Sender);
  nxrdz.Text := trim(nxrdz.Text);
end;

procedure Tfrm_hyjk.nxrdzKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    DBMemo2.SetFocus;
  end;
end;

function Tfrm_hyjk.proc_dqSfzxx(MyIdrOcx1: TMyIdrOcx): string;
var
  state, card: Integer;
begin
  try
    sfzxx := new(_sfzxx);
    state := MyIdrOcx1.GetState;
    if state = 0 then
    begin
      card := MyIdrOcx1.ReadCard;
      if card = 0 then
      begin
        MyIdrOcx1.Start;
        sfzxx.Name := Trim(MyIdrOcx1.NameL); //姓名
        sfzxx.Sex := Trim(MyIdrOcx1.SexL); //性别
        sfzxx.Nation := Trim(MyIdrOcx1.NationL); //民族
        sfzxx.Born := Trim(MyIdrOcx1.BornL); //出生日期
        sfzxx.Address := Trim(MyIdrOcx1.Address); //地址
        sfzxx.CardNo := Trim(MyIdrOcx1.CardNo); //身份证号
        sfzxx.Police := Trim(MyIdrOcx1.Police); //发证机关
        sfzxx.Activity := Trim(MyIdrOcx1.ActivityL); //有效期
        MyIdrOcx1.Stop;
        Result := '';
      end
      else
        if card = -4 then
        begin
          Result := '未检测到身份证读卡器！';
        end
        else
          if card = -6 then
          begin
            Result := '未检测到身份证！';
          end
          else
          begin
            Result := '读卡失败！';
          end;
    end
    else
      if state < 0 then
      begin
        Result := '身份证读卡器连接异常！';
      end
      else
      begin
        Result := '请检查身份证读卡器是否连接正常！';
      end;
  except
    on E: Exception do
    begin
      Result := '身份证读卡器异常';
      Abort;
    end;
  end;
end;

procedure Tfrm_hyjk.proc_get_sjbh;
var
  v_sysl, v_sjbh, v_sjzh: string;
  S: string;
begin
  edtczyxm.Text := pub_czyxm;
  edtczydm.text := pub_czydm;
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
    jk_sjbh := formatex(StrToInt(v_sjbh), 9);
    sjbhzh_real := StrToInt(v_sjzh); //获得实际的收据止号
    edtsjbh.Text := jk_sjbh;
  end;
end;

procedure Tfrm_hyjk.proc_hyjk_print;
begin
  if kgl_sfbz > 0 then
  begin
    if pub_yydm = '0013' then //三台县人民医院
      Proc_ghsj_sc(65535, '0', 0, 0, kgl_kh, kgl_xm, '', '', '', jk_sjbh, '0', '0', formatfloat('0.00', kgl_sfbz),
        '', '', False, kgl_fymc, kgl_sfbz, False, False, false, '')
//      Proc_ghsj_sc_st_b(65535, 0, kgl_kh, kgl_xm, '', '', '', jk_sjbh, '0', '0', formatfloat('0.00', kgl_sfbz),
//        '', '', '', False, kgl_fymc, kgl_sfbz, False, False)
    else
      if pub_yydm = '0015' then //江油市人民医院
        Proc_ghsj_sc_jy_b(65535, 0, 0, kgl_kh, kgl_xm, kgl_xb, kgl_nl, '', '', '', jk_sjbh, '0', '0', formatfloat('0.00', kgl_sfbz),
          '', '', '', False, kgl_fymc, kgl_sfbz, False, False, '', '', 0)
      else
        if pub_yydm = '0003' then //绵阳三医院
          Proc_ghsj_sc_syy_b(65535, 0, 0, kgl_kh, kgl_xm, '', '', '', jk_sjbh, '0', '0', formatfloat('0.00', kgl_sfbz),
            '', '', '', False, kgl_fymc, kgl_sfbz, False, False, '', '')
        else
          Proc_ghsj_sc(65535, '0', 0, 0, kgl_kh, kgl_xm, '', '', '', jk_sjbh, '0', '0', formatfloat('0.00', kgl_sfbz),
            '', '', False, kgl_fymc, kgl_sfbz, False, False, false, '');
  end;
  proc_get_sjbh;
end;

procedure Tfrm_hyjk.proc_mzgh_kgl_check;
var
  _klb: string;
begin
  if (Length(kgl_kh) = 12) or
    ((pub_yydm = '0015') and (Length(kgl_kh) = 9) and (Copy(kgl_kh, 1, 1) = '9')) then
  begin
    _klb := '06';
    kgl_fydm := kgl_fydm_ls;
    kgl_sfbz := kgl_sfbz_ls;
    kgl_fymc := kgl_fymc_ls;
    //    SBar1.Panels[10].Text := '临时卡剩余量';
  end
  else
  begin
    _klb := '05';
    kgl_fydm := kgl_fydm_cq;
    kgl_sfbz := kgl_sfbz_cq;
    kgl_fymc := kgl_fymc_cq;
    //    SBar1.Panels[10].Text := '长期卡剩余量';
  end;
  if kgl_fydm <> '' then
  begin
    qry_kgl_check.Close;
    qry_kgl_check.SQL.Text := 'select * from sys_sjlymx where sjlb=' + #39 + _klb + #39 +
      ' and lyr=' + #39 + pub_czydm + #39 + ' and sjsl>0 and qybz=1 and tybz=0';
    qry_kgl_check.Open;
    if qry_kgl_check.RecordCount > 0 then
    begin
      kgl_lydh := qry_kgl_check.FieldByName('lydh').AsString;
      kgl_klb := qry_kgl_check.FieldByName('sjlb').AsString;
      //    SBar1.Panels[11].Text := qry_kgl_check.FieldByName( 'sjsl' ).AsString;
      qry_kgl_check.Close;
      qry_kgl_check.sql.Text := 'select * from sys_kgl_fkmx where kh=' + #39 + kgl_kh + #39 +
        ' and tkbz=1 and datediff(dd,tkrq,getdate())<3';
      qry_kgl_check.Open;
      if qry_kgl_check.RecordCount > 0 then
      begin
        Application.MessageBox('此卡号已退卡,不能继续办卡', '提示:', 0 + 16);
        tmh.SetFocus;
        Abort;
      end
      else
      begin
        jkbz := True;
      end;
    end
    else
    begin
      Application.MessageBox('请确认您已经启用的就诊卡数量', '提示:', 0 + 16);
      tmh.SetFocus;
      Abort;
    end;
  end;
end;

procedure Tfrm_hyjk.proc_tmh_jy;
begin
  tmh.text := trim(tmh.text);
  if trim(tmh.text) = '' then
  begin
    application.MessageBox('请输入卡号！', '提示', 0 + 16);
    tmh.SetFocus;
    tmh.SelectAll;
    abort;
  end;
//  try
    qry_dj.Close;
    if (pub_yydm = '0003') and (Length(Trim(tmh.text)) = 12) then //三医院需要在此建立临时卡
    begin
      tmh.text := formatex(strtoint(tmh.text), 12);
      qry_dj.Commandtext := 'select * from sys_kyh_ls where tmh=' + #39 + trim(tmh.text) + #39;
    end
    else
      if ((pub_yydm = '0015') and (Length(trim(tmh.text)) = 9) and (Copy(trim(tmh.text), 1, 1) = '9'))
        or( (pub_yydm <> '0271') and (Length(trim(tmh.text)) <> 9) ) and  (pub_yydm<>'0269')then  //荆门掇刀医院卡4位补0
      begin
        application.MessageBox('不是长期就诊卡，不能建立！', '提示', 0 + 16);
        tmh.SetFocus;
        tmh.SelectAll;
        Abort;
      end
      else
      begin
        try          //台山中医院要求可以检索姓名
          if trim(tmh.text)=floattostr(strToFloat(Trim(tmh.text))) then
          begin
            tmh.text := formatex(strtoint(tmh.text), 9);
          end
        except

        end;
//        tmh.text := formatex(strtoint(tmh.text), 9);
        if pub_yydm = '0175' then
          qry_dj.Commandtext := 'select * from sys_kyh where tmh=' + #39 + trim(tmh.text) + #39
        else
          qry_dj.Commandtext := 'select a.* from sys_kyh a left join sys_kgl_fkmx b on a.tmh=b.kh and b.bkbz=1 and b.tkbz=0 where A.BRXM LIKE  ' + #39 + '%' + trim(tmh.text) + '%' + #39 + ' or a.tmh=' + #39 + trim(tmh.text) + #39;
      end;
    qry_dj.Open;

//  except
//    application.MessageBox('请录入数字！', '提示', 0 + 16);
//    tmh.SetFocus;
//    tmh.SelectAll;
//    abort;
//  end;
end;

procedure Tfrm_hyjk.brdhExit(Sender: TObject);
var
tmhxx:string;
begin
  brdh.Text := trim(brdh.Text);
  with  DM_data do
  begin
    qry_pub.Close;
    qry_pub.sql.Text:='select * from  sys_kyh where brxm='+#39+trim(brxm.Text)+#39  +' and brxb='+#39+trim(brxb.Text)+#39+' and brdh='+#39+trim(brdh.Text)+#39;
    qry_pub.Open;
    if qry_pub.RecordCount>0 then
    begin
       qry_pub.First;
       while not qry_pub.Eof do
       begin
         tmhxx :=tmhxx+trim(qry_pub.FieldByName('tmh').AsString)+ ' 地址:'+trim(qry_pub.FieldByName('brdz').AsString)+';'+#13;
         qry_pub.Next;
       end;
       Application.MessageBox(pchar('系统已存在姓名、性别、电话号码相同的病人信息,卡号:'+#13+tmhxx+' 请确认!'), '系统提示:', MB_OK + MB_ICONEXCLAMATION);
    end;
  end;
end;

procedure Tfrm_hyjk.brdhKeyPress(Sender: TObject; var Key: Char);
begin
  if not ((key in ['0'..'9']) or (key = #8) or (key = '-') or (key = #13)) then
    key := #0;
  if Key = #13 then
  begin
    dbr.SetFocus;
  end;
end;

procedure Tfrm_hyjk.brdwdzEnter(Sender: TObject);
begin
  frm_func.changecolor(Sender);
  brdwdz.ImeName := pub_czysrf;
  brdwdz.ImeMode := imChinese;
end;

procedure Tfrm_hyjk.nlEnter(Sender: TObject);
begin
  frm_func.changecolor(sender);
end;

procedure Tfrm_hyjk.nlExit(Sender: TObject);
begin
  if nl.Csrq > Frm_func.curr_date then
  begin
    Application.MessageBox('请输入有效年龄', '系统提示:', MB_OK + MB_ICONEXCLAMATION);
    nl.SetFocus;
    Exit;
  end;
  csrq.Date := nl.Csrq;
  if sfzxx <> nil then
    sfzxx.Born := FormatDateTime('yyyy-MM-dd', csrq.Date);
  qry_dj['brnl'] := Trim(nl.text);
  kgl_nl := Trim(nl.Text);
end;

procedure Tfrm_hyjk.nlKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    brsf.SetFocus;
  end;
end;

procedure Tfrm_hyjk.nxrdzEnter(Sender: TObject);
begin
  frm_func.changecolor(Sender);
  nxrdz.ImeName := pub_czysrf;
  nxrdz.ImeMode := imChinese;
end;

procedure Tfrm_hyjk.DBMemo2Enter(Sender: TObject);
begin
  frm_func.changecolor(Sender);
  DBMemo2.ImeName := pub_czysrf;
  DBMemo2.ImeMode := imChinese;
end;

procedure Tfrm_hyjk.DBMemo2Exit(Sender: TObject);
begin
  frm_func.restorecolor(Sender);
  DBMemo2.Text := trim(DBMemo2.Text);
end;

procedure Tfrm_hyjk.DBMemo1Enter(Sender: TObject);
begin
  frm_func.changecolor(Sender);
  DBMemo1.ImeName := pub_czysrf;
  DBMemo1.ImeMode := imChinese;
end;

procedure Tfrm_hyjk.DBMemo1Exit(Sender: TObject);
begin
  frm_func.restorecolor(Sender);
  DBMemo1.Text := trim(DBMemo1.Text);
end;

procedure Tfrm_hyjk.DBMemo1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    DBMemo3.SetFocus;
  end;
end;

procedure Tfrm_hyjk.DBMemo3Enter(Sender: TObject);
begin
  frm_func.changecolor(Sender);
  DBMemo3.ImeName := pub_czysrf;
  DBMemo3.ImeMode := imChinese;
end;

procedure Tfrm_hyjk.DBMemo3Exit(Sender: TObject);
begin
  frm_func.restorecolor(Sender);
  DBMemo3.Text := trim(DBMemo3.Text);
end;

procedure Tfrm_hyjk.DBMemo3KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    b_save.SetFocus;
  end;
end;

procedure Tfrm_hyjk.dbrEnter(Sender: TObject);
begin
  frm_func.changecolor(Sender);
  dbr.ImeName := pub_czysrf;
  dbr.ImeMode := imChinese;
end;

procedure Tfrm_hyjk.b_cancel1Click(Sender: TObject);
begin
  if qry_dj.Active then qry_dj.Close;
  tmh.Enabled := true;
  tmh.SetFocus;
end;

procedure Tfrm_hyjk.b_cancelClick(Sender: TObject);
begin
  if qry_dj.Active then qry_dj.Close;
  tmh.Enabled := true;
  tmh.SetFocus;
end;
procedure Tfrm_hyjk.Add_xsz(bmc, cxz: string; Cbox: TComboBox);
var sj: string;
begin
  Qry_pub.close;
  Qry_pub.SQL.clear;
  if bmc='sys_ksdm' then
  Qry_pub.sql.add('select * from ' + bmc + ' where kssx=09 order by ' + cxz)
  else
  Qry_pub.sql.add('select * from ' + bmc + ' order by ' + cxz);
  Qry_pub.open;
  Cbox.items.clear;
  if (bmc = 'zysf_rybq') or (bmc = 'zysf_rytj') then
  begin
    while not Qry_pub.eof do
    begin
      Cbox.items.add(trim(Qry_pub.FieldByName('dm').asstring) + '-' + trim(Qry_pub.FieldByName('sm').asstring));
      Qry_pub.next;
    end;
  end
  else  if bmc = 'zysf_sbbrlb' then
  begin
    while not Qry_pub.eof do
    begin
      Cbox.items.add(trim(Qry_pub.FieldByName('lbdm').asstring) + '-' + trim(Qry_pub.FieldByName('lbmc').asstring));
      Qry_pub.next;
    end;
  end
  else
  begin
    while not Qry_pub.eof do
    begin
      Cbox.items.add(trim(Qry_pub.FieldByName('dm').asstring) + '-' + trim(Qry_pub.FieldByName('mc').asstring));
      Qry_pub.next;
    end;
  end
end;

end.

