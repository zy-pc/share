unit p_mzcfpldy;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, StdCtrls, Menus, cxLookAndFeelPainters, cxButtons,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit,
  DB, cxDBData, cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, ADODB, cxCheckBox, QuickRpt,
  QRCtrls;

type
  Tfrm_mzcfpldy = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Date1: TDateTimePicker;
    Radio1: TRadioButton;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    RadioButton1: TRadioButton;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    Panel3: TPanel;
    cb_ks: TcxComboBox;
    cb_js: TcxComboBox;
    Label1: TLabel;
    Label2: TLabel;
    DS_cx: TDataSource;
    SP_cx: TADOStoredProc;
    cxGrid1DBTableView1cfbh: TcxGridDBColumn;
    cxGrid1DBTableView1brxm: TcxGridDBColumn;
    cxGrid1DBTableView1tmh: TcxGridDBColumn;
    cxGrid1DBTableView1sfbz: TcxGridDBColumn;
    cxGrid1DBTableView1tfbz: TcxGridDBColumn;
    cxGrid1DBTableView1fybz: TcxGridDBColumn;
    cxGrid1DBTableView1tybz: TcxGridDBColumn;
    cxGrid1DBTableView1hjrq: TcxGridDBColumn;
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
    qr_xy: TQuickRep;
    QRBand1: TQRBand;
    brxm: TQRLabel;
    brxb: TQRLabel;
    brnl: TQRLabel;
    cfbh: TQRLabel;
    zdmc: TQRLabel;
    yymc: TQRLabel;
    cflb: TQRLabel;
    brdz: TQRLabel;
    cfzje: TQRLabel;
    ksmc: TQRLabel;
    QRBand2: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText19: TQRDBText;
    QRBand3: TQRBand;
    ysmc: TQRLabel;
    fhr: TQRLabel;
    fyr: TQRLabel;
    hjrq: TQRLabel;
    QRGroup1: TQRGroup;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRBand5: TQRBand;
    xms: TQRLabel;
    QRL_jlhj: TQRLabel;
    QRL_ylhj: TQRLabel;
    QRL_zfhj: TQRLabel;
    sp_dymx: TADOStoredProc;
    ds_dymx: TDataSource;
    cflx: TQRLabel;
    qr_zy: TQuickRep;
    QRBand4: TQRBand;
    brxm_zy: TQRLabel;
    brxb_zy: TQRLabel;
    brnl_zy: TQRLabel;
    cfbh_zy: TQRLabel;
    zdmc_zy: TQRLabel;
    yymc_zy: TQRLabel;
    cflb_zy: TQRLabel;
    brdz_zy: TQRLabel;
    cfjl: TQRLabel;
    QRBand7: TQRBand;
    ysmc_zy: TQRLabel;
    fhr_zy: TQRLabel;
    fyr_zy: TQRLabel;
    hjrq_zy: TQRLabel;
    QRSubDetail1: TQRSubDetail;
    QRL_ypmc1: TQRLabel;
    QRL_ypsl1: TQRLabel;
    QRL_ypdw1: TQRLabel;
    QRL_ypdj1: TQRLabel;
    QRL_ypmc2: TQRLabel;
    QRL_ypsl2: TQRLabel;
    QRL_ypdw2: TQRLabel;
    QRL_ypdj2: TQRLabel;
    QRL_ypdj3: TQRLabel;
    QRL_ypdw3: TQRLabel;
    QRL_ypsl3: TQRLabel;
    QRL_ypmc3: TQRLabel;
    QRL_ypdj4: TQRLabel;
    QRL_ypdw4: TQRLabel;
    QRL_ypsl4: TQRLabel;
    QRL_ypmc4: TQRLabel;
    QRL_yf1: TQRLabel;
    QRL_yf2: TQRLabel;
    QRL_yf3: TQRLabel;
    QRL_yf4: TQRLabel;
    GroupHeaderBand1: TQRBand;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRLabel43: TQRLabel;
    QRLabel45: TQRLabel;
    QRLabel47: TQRLabel;
    QRLabel48: TQRLabel;
    QRLabel49: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel31: TQRLabel;
    GroupFooterBand1: TQRBand;
    QRLabel34: TQRLabel;
    cfzje_zy: TQRLabel;
    cflx_zy: TQRLabel;
    ksmc_zy: TQRLabel;
    procedure cxButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Date1Change(Sender: TObject);
    procedure cb_ksPropertiesChange(Sender: TObject);
    procedure cb_jsPropertiesChange(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure QRSubDetail1NeedData(Sender: TObject; var MoreData: Boolean);
  private
    v_ks: string;
    v_js: string;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_mzcfpldy: Tfrm_mzcfpldy;

implementation
uses p_dm, p_func;
{$R *.dfm}

procedure Tfrm_mzcfpldy.cb_jsPropertiesChange(Sender: TObject);
begin
  if Length(Trim(cb_js.Text)) = 12 then
    v_js := Trim(cb_js.Text)
  else
  begin
    v_js := '999999999999';
  end;
  if v_js < v_ks then
  begin
    Application.MessageBox('结束处方号不能小于起始处方号', '系统提示', MB_OK + MB_ICONEXCLAMATION);
    cb_js.SetFocus;
    Exit;
  end;
  SP_cx.Close;
  SP_cx.Parameters.ParamByName('@ksdm').Value := pub_ksdm;
  SP_cx.Parameters.ParamByName('@rq').Value := FormatDateTime('yyyyMMdd', Date1.DateTime);
  SP_cx.Parameters.ParamByName('@kscfh').Value := v_ks;
  SP_cx.Parameters.ParamByName('@jscfh').Value := v_js;
  SP_cx.Open;
end;

procedure Tfrm_mzcfpldy.cb_ksPropertiesChange(Sender: TObject);
begin
  if Length(Trim(cb_ks.Text)) = 12 then
    v_ks := Trim(cb_ks.Text)
  else
  begin
    v_ks := '0';
  end;
  if v_ks > v_js then
  begin
    Application.MessageBox('起始处方号不能大于结束处方号', '系统提示', MB_OK + MB_ICONEXCLAMATION);
    cb_ks.SetFocus;
    Exit;
  end;
  SP_cx.Close;
  SP_cx.Parameters.ParamByName('@ksdm').Value := pub_ksdm;
  SP_cx.Parameters.ParamByName('@rq').Value := FormatDateTime('yyyyMMdd', Date1.DateTime);
  SP_cx.Parameters.ParamByName('@kscfh').Value := v_ks;
  SP_cx.Parameters.ParamByName('@jscfh').Value := v_js;
  SP_cx.Open;
end;

procedure Tfrm_mzcfpldy.cxButton1Click(Sender: TObject);
begin
  Close;
end;

procedure Tfrm_mzcfpldy.cxButton2Click(Sender: TObject);
begin
  //打印
  if SP_cx.Active and (SP_cx.RecordCount > 0) then
  begin
    SP_cx.First;
    while not SP_cx.Eof do
    begin
      sp_dymx.Close;
      sp_dymx.Parameters.ParamByName('@cfbh').Value := SP_cx.FieldByName('cfbh').AsString;
      sp_dymx.Parameters.ParamByName('@ksdm').Value := pub_ksdm;
      sp_dymx.Parameters.ParamByName('@ckdm').Value := 0;
      sp_dymx.Parameters.ParamByName('@xh').Value := 0;
      sp_dymx.Parameters.ParamByName('@tmh').Value := '';
      sp_dymx.Parameters.ParamByName('@brxm').Value := '';
      sp_dymx.Parameters.ParamByName('@brxb').Value := '';
      sp_dymx.Parameters.ParamByName('@brnl').Value := '';
      sp_dymx.Parameters.ParamByName('@brdz').Value := '';
      sp_dymx.Parameters.ParamByName('@cfzje').Value := 0.0;
      sp_dymx.Parameters.ParamByName('@sszje').Value := 0.0;
      sp_dymx.Parameters.ParamByName('@ksmc').Value := '';
      sp_dymx.Parameters.ParamByName('@ysmc').Value := '';
      sp_dymx.Parameters.ParamByName('@yszd').Value := '';
      sp_dymx.Parameters.ParamByName('@cflx').Value := '';
      sp_dymx.Parameters.ParamByName('@cflb').Value := '';
      sp_dymx.Parameters.ParamByName('@bz').Value := '';
      sp_dymx.Parameters.ParamByName('@cfjl').Value := 0;
      sp_dymx.Parameters.ParamByName('@hjrq').Value := 0;
      sp_dymx.Open;
      if SP_cx.FieldByName('cflb').AsString = 'MC' then //门诊中药
      begin
        yymc_zy.Caption := trim(pub_yymc) + '门诊处方';
        brxm_zy.Caption := '姓名:' + Trim(sp_dymx.Parameters.ParamByName('@brxm').Value);
        brxb_zy.Caption := '性别:' + Trim(sp_dymx.Parameters.ParamByName('@brxb').Value);
        brnl_zy.Caption := '年龄:' + Trim(sp_dymx.Parameters.ParamByName('@brnl').Value);
        cfbh_zy.Caption := '处方号:' + Trim(sp_dymx.Parameters.ParamByName('@cfbh').Value);
        cfzje_zy.Caption := '处方总金额:' + FormatFloat('0.00', sp_dymx.Parameters.ParamByName('@cfzje').Value);
        cflx_zy.Caption := '' + Trim(sp_dymx.Parameters.ParamByName('@cflx').Value);
        zdmc_zy.Caption := '诊断:' + Trim(sp_dymx.Parameters.ParamByName('@yszd').Value);
        ksmc_zy.Caption := '科室:' + Trim(sp_dymx.Parameters.ParamByName('@ksmc').Value);
        cflb_zy.Caption := '(批量)处方类别:' + Trim(sp_dymx.Parameters.ParamByName('@cflb').Value);
        brdz_zy.Caption := '地址:' + Trim(sp_dymx.Parameters.ParamByName('@brdz').Value);
        ysmc_zy.Caption := '医生:' + Trim(sp_dymx.Parameters.ParamByName('@ysmc').Value);
        fyr_zy.Caption := '发药:';
        fhr_zy.Caption := '复核:';
        cfjl.Caption := '付数:' + Trim(sp_dymx.Parameters.ParamByName('@cfjl').Value);
        hjrq_zy.Caption := '处方日期:' + Trim(sp_dymx.Parameters.ParamByName('@hjrq').Value);
        qr_zy.Print;
      end
      else
      begin
        yymc.Caption := trim(pub_yymc) + '门诊处方';
        brxm.Caption := '姓名:' + Trim(sp_dymx.Parameters.ParamByName('@brxm').Value);
        brxb.Caption := '性别:' + Trim(sp_dymx.Parameters.ParamByName('@brxb').Value);
        brnl.Caption := '年龄:' + Trim(sp_dymx.Parameters.ParamByName('@brnl').Value);
        cfbh.Caption := '处方号:' + Trim(sp_dymx.Parameters.ParamByName('@cfbh').Value);
        cfzje.Caption := '处方总金额:' + FormatFloat('0.00', sp_dymx.Parameters.ParamByName('@cfzje').Value);
        cflx.Caption := '' + Trim(sp_dymx.Parameters.ParamByName('@cflx').Value);
        zdmc.Caption := '诊断:' + Trim(sp_dymx.Parameters.ParamByName('@yszd').Value);
        ksmc.Caption := '科室:' + Trim(sp_dymx.Parameters.ParamByName('@ksmc').Value);
        cflb.Caption := '(批量)处方类别:' + Trim(sp_dymx.Parameters.ParamByName('@cflb').Value);
        brdz.Caption := '地址:' + Trim(sp_dymx.Parameters.ParamByName('@brdz').Value);
        ysmc.Caption := '医生:' + Trim(sp_dymx.Parameters.ParamByName('@ysmc').Value);
        fyr.Caption := '发药:';
        fhr.Caption := '复核:';
        hjrq.Caption := '处方日期:' + Trim(sp_dymx.Parameters.ParamByName('@hjrq').Value);
        qr_xy.Print;
      end;
      SP_cx.Next;
    end;
  end;
end;

procedure Tfrm_mzcfpldy.Date1Change(Sender: TObject);
var
  v_count: Integer;
begin
  if Date1.DateTime + 31 < Frm_func.curr_date then
  begin
    Application.MessageBox('选择日期不能超过一个月', '系统提示', MB_OK + MB_ICONEXCLAMATION);
    Date1.SetFocus;
    Exit;
  end;
  v_ks := '0';
  v_js := '999999999';
  SP_cx.Close;
  SP_cx.Parameters.ParamByName('@ksdm').Value := pub_ksdm;
  SP_cx.Parameters.ParamByName('@rq').Value := FormatDateTime('yyyyMMdd', Date1.DateTime);
  SP_cx.Parameters.ParamByName('@kscfh').Value := v_ks;
  SP_cx.Parameters.ParamByName('@jscfh').Value := v_js;
  SP_cx.Open;
  v_count := SP_cx.RecordCount;
  if v_count > 0 then
  begin
    SP_cx.First;
    cb_ks.Properties.Items.Clear;
    cb_js.Properties.Items.Clear;
    while not SP_cx.Eof do
    begin
      cb_ks.Properties.Items.Add(SP_cx.FieldByName('cfbh').AsString);
      cb_js.Properties.Items.Add(SP_cx.FieldByName('cfbh').AsString);
      SP_cx.Next;
    end;
    cb_ks.Text := cb_ks.Properties.Items[0];
    cb_js.Text := cb_js.Properties.Items[v_count - 1];
    Panel3.Enabled := True;
  end
  else
  begin
    Application.MessageBox('选择日期没有门诊处方', '系统提示', MB_OK + MB_ICONEXCLAMATION);
    Date1.SetFocus;
    Panel3.Enabled := False;
  end;
end;

procedure Tfrm_mzcfpldy.FormShow(Sender: TObject);
begin
  Date1.DateTime := Frm_func.curr_date;
  qr_xy.Visible := False;
  qr_zy.Visible := False;
end;

procedure Tfrm_mzcfpldy.QRSubDetail1NeedData(Sender: TObject;
  var MoreData: Boolean);
  procedure SetCaption(id: Integer; const mc, sl, dw, dj, yf: string);
  var
    aControl: TControl;
  begin
    aControl := QRSubDetail1.FindChildControl('QRL_ypmc' + IntToStr(id));
    if aControl is TQRLabel then
      TQRLabel(aControl).Caption := mc;
    aControl := QRSubDetail1.FindChildControl('QRL_ypsl' + IntToStr(id));
    if aControl is TQRLabel then
      TQRLabel(aControl).Caption := sl;
    aControl := QRSubDetail1.FindChildControl('QRL_ypdw' + IntToStr(id));
    if aControl is TQRLabel then
      TQRLabel(aControl).Caption := dw;
    aControl := QRSubDetail1.FindChildControl('QRL_ypdj' + IntToStr(id));
    if aControl is TQRLabel then
      TQRLabel(aControl).Caption := dj;
    aControl := QRSubDetail1.FindChildControl('QRL_yf' + IntToStr(id));
    if aControl is TQRLabel then
      TQRLabel(aControl).Caption := yf;
  end;
var
  i: Integer;
begin
  MoreData := not sp_dymx.Eof;

  for I := 1 to 4 do
  begin
    if sp_dymx.Eof then
      SetCaption(i, ' ', ' ', ' ', ' ', ' ')
    else
      SetCaption(i, Trim(sp_dymx.FieldByName('ypmc').AsString),
        IntToStr(sp_dymx.FieldByName('ypsl').AsInteger),
        Trim(sp_dymx.FieldByName('ypdw').AsString),
        FormatFloat('0.000', sp_dymx.FieldByName('ypdj').AsFloat),
        Trim(sp_dymx.FieldByName('yplb').AsString));
    sp_dymx.Next;
  end;
end;

end.

