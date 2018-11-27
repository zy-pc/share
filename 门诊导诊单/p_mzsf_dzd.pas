unit p_mzsf_dzd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, Menus, cxLookAndFeelPainters, StdCtrls,
  cxButtons, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxContainer, cxLabel, ADODB, cxCheckBox;

type
  Tfrm_mzsf_dzd = class(TForm)
    pnl1: TPanel;
    pnl2: TPanel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    lab_xx: TcxLabel;
    ds_cx_dzd: TDataSource;
    sp_cx_dzd: TADOStoredProc;
    cxGrid1DBTableView1xmmc: TcxGridDBColumn;
    cxGrid1DBTableView1gg: TcxGridDBColumn;
    cxGrid1DBTableView1sl: TcxGridDBColumn;
    cxGrid1DBTableView1yplsj: TcxGridDBColumn;
    cxGrid1DBTableView1ypyf: TcxGridDBColumn;
    cxGrid1DBTableView1ypyl: TcxGridDBColumn;
    cxGrid1DBTableView1yytj: TcxGridDBColumn;
    cxGrid1DBTableView1yplb: TcxGridDBColumn;
    cxGrid1DBTableView1msbz: TcxGridDBColumn;
    cxGrid1DBTableView1czks: TcxGridDBColumn;
    cxGrid1DBTableView1bz: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    GridTableViewStyleSheetUserFormat2: TcxGridTableViewStyleSheet;
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
    cb_dyyl: TcxCheckBox;
    cxGrid1DBTableView1dybz: TcxGridDBColumn;
    sp_cx_mzyszcfdy: TADOStoredProc;
    but_yncf: TcxButton;
    cb_fs: TcxCheckBox;
    cxGrid1DBTableView1cfbh: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
    procedure sp_cx_dzdAfterScroll(DataSet: TDataSet);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure but_yncfClick(Sender: TObject);
    procedure cb_fsClick(Sender: TObject);
    procedure cxGrid1DBTableView1dybzPropertiesChange(Sender: TObject);
  private
    v_bdcflb: string;
    v_yncflbxg: Boolean;
    prv_ghrq: TDateTime;
    v_zt: string; //zt=0导诊单1处方单
    v_fs: Integer; //0未收费,1已收费
    function proc_prv_cxdzd(fs: Integer): Boolean;
    function func_prv_checksl: Integer;
    function proc_ts_cfys(v_cfbh: string): string;
    { Private declarations }
  public
    prv_tmh: string;
    procedure proc_pub_dzddy(tmh: string; ghrq: TDateTime; zt: string; bdcflbxgbz: Boolean = False); //zt=0导诊单1处方单
    { Public declarations }
  end;

var
  frm_mzsf_dzd: Tfrm_mzsf_dzd;


implementation
uses p_dm, p_func, p_mzsf_print_service, p_yncflbxg;
{$R *.dfm}

procedure Tfrm_mzsf_dzd.proc_pub_dzddy(tmh: string; ghrq: TDateTime; zt: string; bdcflbxgbz: Boolean = False);
begin
//  try
//    application.CreateForm(Tfrm_mzsf_dzd, frm_mzsf_dzd);
//    frm_mzsf_dzd.prv_tmh := tmh;
//    frm_mzsf_dzd.prv_ghrq := ghrq;
//    frm_mzsf_dzd.v_zt := zt; //0导诊单1处方单
//    frm_mzsf_dzd.v_yncflbxg := bdcflbxgbz;
//
//    if frm_mzsf_dzd.proc_prv_cxdzd(2) then
//      frm_mzsf_dzd.ShowModal;
//  finally
//    frm_mzsf_dzd.free;
//  end;


    frm_mzsf_dzd.prv_tmh := tmh;
    frm_mzsf_dzd.prv_ghrq := ghrq;
    frm_mzsf_dzd.v_zt := zt; //0导诊单1处方单
    frm_mzsf_dzd.v_yncflbxg := bdcflbxgbz;
    if frm_mzsf_dzd.proc_prv_cxdzd(2) then //2导诊单
    begin
      frm_mzsf_dzd.cxButton1Click(nil);
    end;

end;

procedure Tfrm_mzsf_dzd.but_yncfClick(Sender: TObject);
begin
  if not proc_se_bdcflb(prv_tmh, v_fs) then
  begin
    Application.MessageBox('无其他处方类别选择项,请先设置', '系统提示', MB_OK + MB_ICONEXCLAMATION);
  end;
end;

procedure Tfrm_mzsf_dzd.cb_fsClick(Sender: TObject);
begin
  if cb_fs.Checked then
  begin
    v_fs := 1;
    proc_prv_cxdzd(v_fs);
  end
  else
  begin
    v_fs := 0;
    proc_prv_cxdzd(v_fs);
  end;
end;

procedure Tfrm_mzsf_dzd.cxButton1Click(Sender: TObject);
var
  v_cfbh: string;
  print_xh, print_tmh, print_cfbh, print_brxm, print_brxb, print_brnl, print_brdz,
    print_ksmc, print_ysmc, print_yszd, print_cflx, print_cflb, print_bz: string;
  print_cfzje, print_sszje: Double;
  print_cfjl: Integer;
  print_hjrq: TDateTime;
  v_first: Boolean;
begin
  if v_yncflbxg then
  begin
    proc_se_bdcflb(prv_tmh, v_fs);
  end;

  sp_cx_dzd.Edit;
  sp_cx_dzd.Post;
  sp_cx_dzd.Filter := ' dybz=1';
  sp_cx_dzd.Filtered := True;
  if func_prv_checksl <= 0 then
    Application.MessageBox('请选择需要打印的药品', '系统提示:', MB_OK + MB_ICONEXCLAMATION)
  else
  begin
    if v_zt = '0' then //导诊单
      frm_mzsf_print_service.print_mzysgzz_dzd(sp_cx_dzd, cb_dyyl.Checked)
    else
    begin
      //从 sp_cx_dzd 中取出处方编号
      sp_cx_dzd.First;
      v_first := True;
      v_cfbh := sp_cx_dzd.FieldByName('cfbh').AsString;
      while not sp_cx_dzd.Eof do
      begin
        if v_first or (v_cfbh <> sp_cx_dzd.FieldByName('cfbh').AsString) then
        begin
          v_cfbh := sp_cx_dzd.FieldByName('cfbh').AsString;
          sp_cx_mzyszcfdy.Close;
          sp_cx_mzyszcfdy.Parameters.ParamByName('@kdys').Value := pub_czydm;
          sp_cx_mzyszcfdy.Parameters.ParamByName('@ksdm').Value := pub_ksdm;
          sp_cx_mzyszcfdy.Parameters.ParamByName('@ghrq').Value := Frm_func.curr_date;
          sp_cx_mzyszcfdy.Parameters.ParamByName('@cfbh').Value := v_cfbh;
          sp_cx_mzyszcfdy.Parameters.ParamByName('@tmh').Value := frm_mzsf_dzd.prv_tmh;
          sp_cx_mzyszcfdy.Parameters.ParamByName('@xh').Value := 0;
          sp_cx_mzyszcfdy.Parameters.ParamByName('@brxm').Value := '';
          sp_cx_mzyszcfdy.Parameters.ParamByName('@brxb').Value := '';
          sp_cx_mzyszcfdy.Parameters.ParamByName('@brnl').Value := '';
          sp_cx_mzyszcfdy.Parameters.ParamByName('@brdz').Value := '';
          sp_cx_mzyszcfdy.Parameters.ParamByName('@cfzje').Value := 0.0;
          sp_cx_mzyszcfdy.Parameters.ParamByName('@sszje').Value := 0.0;
          sp_cx_mzyszcfdy.Parameters.ParamByName('@ksmc').Value := '';
          sp_cx_mzyszcfdy.Parameters.ParamByName('@ysmc').Value := '';
          sp_cx_mzyszcfdy.Parameters.ParamByName('@yszd').Value := '';
          sp_cx_mzyszcfdy.Parameters.ParamByName('@cflx').Value := '';
          sp_cx_mzyszcfdy.Parameters.ParamByName('@cflb').Value := '';
          sp_cx_mzyszcfdy.Parameters.ParamByName('@bz').Value := '';
          sp_cx_mzyszcfdy.Parameters.ParamByName('@cfjl').Value := 0;
          sp_cx_mzyszcfdy.Parameters.ParamByName('@hjrq').Value := 0;
          sp_cx_mzyszcfdy.Open;
          if sp_cx_mzyszcfdy.RecordCount > 0 then
          begin
            print_cfbh := Trim(sp_cx_mzyszcfdy.Parameters.ParamByName('@cfbh').Value);
            print_xh := Trim(sp_cx_mzyszcfdy.Parameters.ParamByName('@xh').Value);
            print_tmh := Trim(sp_cx_mzyszcfdy.Parameters.ParamByName('@tmh').Value);
            print_brxm := Trim(sp_cx_mzyszcfdy.Parameters.ParamByName('@brxm').Value);
            print_brxb := Trim(sp_cx_mzyszcfdy.Parameters.ParamByName('@brxb').Value);
            print_brnl := Trim(sp_cx_mzyszcfdy.Parameters.ParamByName('@brnl').Value);
            print_brdz := Trim(sp_cx_mzyszcfdy.Parameters.ParamByName('@brdz').Value);
            print_cfzje := sp_cx_mzyszcfdy.Parameters.ParamByName('@cfzje').Value;
            print_sszje := sp_cx_mzyszcfdy.Parameters.ParamByName('@sszje').Value;
            print_ksmc := Trim(sp_cx_mzyszcfdy.Parameters.ParamByName('@ksmc').Value);
            print_ysmc := Trim(sp_cx_mzyszcfdy.Parameters.ParamByName('@ysmc').Value);
            print_yszd := Trim(sp_cx_mzyszcfdy.Parameters.ParamByName('@yszd').Value);
            print_cflx := Trim(sp_cx_mzyszcfdy.Parameters.ParamByName('@cflx').Value);
            print_cflb := Trim(sp_cx_mzyszcfdy.Parameters.ParamByName('@cflb').Value);
            print_bz := Trim(sp_cx_mzyszcfdy.Parameters.ParamByName('@bz').Value);
            print_cfjl := sp_cx_mzyszcfdy.Parameters.ParamByName('@cfjl').Value;
            print_hjrq := sp_cx_mzyszcfdy.Parameters.ParamByName('@hjrq').Value;
            if (print_cflx <> '') then
            begin
              //处方颜色提示
              v_bdcflb := proc_ts_cfys(v_cfbh);
              if print_cflb = '中药' then //医生站中药处方
              begin
                frm_mzsf_print_service.printmzyszzycf(sp_cx_mzyszcfdy, print_xh, print_tmh, print_cfbh, print_brxm, print_brxb, print_brnl, print_brdz,
                  print_ksmc, print_ysmc, print_yszd, print_cflx, print_cflb, print_bz, print_cfzje,
                  print_sszje, print_cfjl, print_hjrq, cb_dyyl.Checked);
              end
              else //医生站西药处方
              begin
                frm_mzsf_print_service.printmzyszxycf(sp_cx_mzyszcfdy, print_xh, print_tmh, print_cfbh, print_brxm, print_brxb, print_brnl, print_brdz,
                  print_ksmc, print_ysmc, print_yszd, print_cflx, print_cflb, print_bz, v_bdcflb,
                  print_cfzje, print_sszje, print_cfjl, print_hjrq, cb_dyyl.Checked);
              end;
            end;
          end;
        end;
        v_first := False;
        sp_cx_dzd.Next;
      end;
    end;
  end;
end;

procedure Tfrm_mzsf_dzd.cxButton2Click(Sender: TObject);
begin
  Close;
end;

procedure Tfrm_mzsf_dzd.cxGrid1DBTableView1dybzPropertiesChange(Sender: TObject);
var
  _cfbh: string;
  _dybz: Boolean;
begin
  _cfbh := trim(sp_cx_dzd.FieldByName('cfbh').AsString);
  _dybz := sp_cx_dzd.FieldByName('dybz').AsBoolean;
  if (_cfbh <> '') then
  begin
    sp_cx_dzd.First;
    while not sp_cx_dzd.Eof do
    begin
      if sp_cx_dzd.FieldByName('cfbh').AsString = _cfbh then
      begin
        sp_cx_dzd.Edit;
        sp_cx_dzd.FieldByName('dybz').AsBoolean := not _dybz;
        sp_cx_dzd.Post;
      end;
      sp_cx_dzd.Next;
    end;
  end;
end;

procedure Tfrm_mzsf_dzd.FormShow(Sender: TObject);
begin
  if v_zt <> '0' then
  begin
    frm_mzsf_dzd.Caption := '门诊医生工作站-处方打印';
    proc_prv_cxdzd(0);
    if not v_yncflbxg then
    begin
      but_yncf.Visible := False;
    end;
  end;
end;

function Tfrm_mzsf_dzd.func_prv_checksl: Integer;
var
  x: Integer;
begin
  x := 0;
  sp_cx_dzd.First;
  while not sp_cx_dzd.Eof do
  begin
    if sp_cx_dzd.FieldByName('dybz').AsBoolean then
    begin

      inc(x, 1);
    end;
    sp_cx_dzd.Next();
  end;
  Result := x;
end;

function Tfrm_mzsf_dzd.proc_prv_cxdzd(fs: Integer): Boolean;
begin
  Result := False;
  sp_cx_dzd.Close;
  sp_cx_dzd.Parameters.ParamByName('@cxfs').Value := fs; //1.当天所有包括已计费2.已执行未收费
  //sp_cx_dzd.Parameters.ParamByName('@cxlb').Value := '1'; //1药品2项目
  sp_cx_dzd.Parameters.ParamByName('@cxlb').Value := v_zt;
  sp_cx_dzd.Parameters.ParamByName('@tmh').Value := prv_tmh;
  sp_cx_dzd.Parameters.ParamByName('@kdys').Value := pub_czydm;
  sp_cx_dzd.Parameters.ParamByName('@ghrq').Value := prv_ghrq;
  sp_cx_dzd.Open;
  if sp_cx_dzd.RecordCount <= 0 then
  begin
    lab_xx.Caption := '';
    if fs <> 2 then
      Application.MessageBox('没有查询到相关信息!请先计费', '系统提示:', MB_OK + MB_ICONEXCLAMATION);
  end
  else
  begin
    lab_xx.Caption := '姓名:' + sp_cx_dzd.FieldByName('brxm').AsString +
      '  卡号:' + sp_cx_dzd.FieldByName('tmh').AsString +
      '  年龄:' + sp_cx_dzd.FieldByName('brnl').AsString +
      '  性别:' + sp_cx_dzd.FieldByName('brxb').AsString;
    Result := True;
  end;
end;

function Tfrm_mzsf_dzd.proc_ts_cfys(v_cfbh: string): string;
var
  v_lbdm, v_lbmc, v_cfys: string;
begin
  Result := '';
  DM_data.qry_pub1.Close;
  DM_data.qry_pub1.sql.Text := 'select lbdm,lbmc,cfys from mzdzbl_yncflbmx a join mzdzbl_lbsz b'
    + ' on case when isnull(a.yncflb,' + #39 + #39 + ')=' + #39 + #39 + ' then ' + #39 + '01' + #39
    + ' else a.yncflb end=b.lbdm'
    + ' where cfbh=' + #39 + v_cfbh + #39;
  DM_data.qry_pub1.Open;
  v_lbdm := trim(DM_data.qry_pub1.FieldByName('lbdm').AsString);
  v_lbmc := trim(DM_data.qry_pub1.FieldByName('lbmc').AsString);
  v_cfys := trim(DM_data.qry_pub1.FieldByName('cfys').AsString);
  if (v_lbmc <> '') and (v_cfys <> '') and (v_lbdm <> v_bdcflb) and (pub_yydm <> '0261') then
  begin
    Application.MessageBox(pchar(v_lbmc + '请使用' + v_cfys), '系统提示', MB_OK + MB_ICONEXCLAMATION);
  end;
  Result := v_lbdm;
end;

procedure Tfrm_mzsf_dzd.sp_cx_dzdAfterScroll(DataSet: TDataSet);
begin
  cxGrid1DBTableView1.DataController.Groups.FullExpand;
end;

end.
