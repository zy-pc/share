unit p_jydtmdy;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, cxTextEdit, cxCheckBox, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, StdCtrls, Buttons, ExtCtrls, ADODB,
  ComCtrls, QRCtrls, QuickRpt, uHSBarCodeImage, printers, pBarCode, StrUtils;

type
  Tfzbh_hs = record
    fzbh_array: array of string;
    hs: Integer;
  end;
type
  Tfrm_jydtmdy = class(TForm)
    Panel1: TPanel;
    CheckBox2: TCheckBox;
    Label1: TLabel;
    b_cx: TButton;
    e_tmh: TEdit;
    bb_exit: TBitBtn;
    CheckBox1: TCheckBox;
    bt_Print: TButton;
    bt_can: TButton;
    Panel2: TPanel;
    cxGrid2: TcxGrid;
    // CheckBox2:TCheckbox;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBTableView1yzbz: TcxGridDBColumn;
    cxGridDBTableView1tmh: TcxGridDBColumn;
    cxGridDBTableView1brxm: TcxGridDBColumn;
    cxGridDBTableView1brxb: TcxGridDBColumn;
    cxGridDBTableView1brnl: TcxGridDBColumn;
    cxGridDBTableView1jyxmmc: TcxGridDBColumn;
    cxGridDBTableView1sfjy: TcxGridDBColumn;
    cxGridDBTableView1ybmc: TcxGridDBColumn;
    cxGridDBTableView1yb: TcxGridDBColumn;
    cxGridDBTableView1jyfzbh: TcxGridDBColumn;
    cxGridDBTableView1kdysmc: TcxGridDBColumn;
    cxGridDBTableView1kdksmc: TcxGridDBColumn;
    cxGridDBTableView1yszd: TcxGridDBColumn;
    cxGridDBTableView1jyfzxh: TcxGridDBColumn;
    cxGridDBTableView1cysj: TcxGridDBColumn;
    cxGridDBTableView1dyrq: TcxGridDBColumn;
    cxGridDBTableView1cyry: TcxGridDBColumn;
    cxGridDBTableView1sfrq: TcxGridDBColumn;
    cxGridDBTableView1fyzje: TcxGridDBColumn;
    cxGridDBTableView1sszje: TcxGridDBColumn;
    cxGridDBTableView1sjbh: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    sp_brxx: TADOStoredProc;
    sys_get_jyxh: TADOStoredProc;
    qry_brxx: TADOQuery;
    qry_brxxID: TAutoIncField;
    qry_brxxfyid: TIntegerField;
    qry_brxxtmh: TStringField;
    qry_brxxbrxm: TStringField;
    qry_brxxbrxb: TStringField;
    qry_brxxbrnl: TStringField;
    qry_brxxkdysdm: TStringField;
    qry_brxxkdysmc: TStringField;
    qry_brxxkdksdm: TStringField;
    qry_brxxkdksmc: TStringField;
    qry_brxxyszd: TStringField;
    qry_brxxjyxmdm: TStringField;
    qry_brxxjyxmmc: TStringField;
    qry_brxxjyfzbh: TStringField;
    qry_brxxjyfzxh: TIntegerField;
    qry_brxxcysj: TDateTimeField;
    qry_brxxcyry: TStringField;
    qry_brxxsqrq: TDateTimeField;
    qry_brxxsfdy: TBooleanField;
    qry_brxxdyrq: TDateTimeField;
    qry_brxxma: TStringField;
    qry_brxxybmc: TStringField;
    qry_brxxyb: TStringField;
    qry_brxxsfrq: TDateTimeField;
    qry_brxxfyzje: TBCDField;
    qry_brxxsszje: TBCDField;
    qry_brxxsjbh: TIntegerField;
    qry_brxxdldm: TStringField;
    qry_brxxsfcd: TBooleanField;
    qry_brxxjydlpx: TStringField;
    qry_brxxyzbz: TStringField;
    DS_brxx: TDataSource;
    ds_yb: TDataSource;
    qry_yb: TADOQuery;
    ds_print1: TDataSource;
    Qry_print1: TADOQuery;
    Qry_Print: TADOQuery;
    Qry_Printbrxm: TStringField;
    Qry_Printbrxb: TStringField;
    Qry_Printbrnl: TStringField;
    Qry_Printjyfzbh: TStringField;
    Qry_Printtmh: TStringField;
    Qry_Printxmmc: TStringField;
    Qry_Printcysj: TStringField;
    Qry_Printyb: TStringField;
    qry_in_cyjl: TADOQuery;
    Qry_look: TADOQuery;
    ds_look: TDataSource;
    com_up_dybz: TADOCommand;
    ds_getjysqd_mx: TDataSource;
    ds_getjysqd: TDataSource;
    sp_getjysqd: TADOStoredProc;
    dtp_zxsj: TDateTimePicker;
    Label2: TLabel;
    Button1: TButton;
    qry_update_xseyz: TADOQuery;
    sp_zxjfzb: TADOStoredProc;
    sp_zxjfxr: TADOStoredProc;
    qry_yzxx: TADOQuery;
    QuickRep2: TQuickRep;
    PageFooterBand2: TQRBand;
    dyrq_1: TQRLabel;
    qr_sm_1: TQRLabel;
    qr_yytj_1: TQRLabel;
    PageHeaderBand2: TQRBand;
    QRLabel7: TQRLabel;
    bch_1: TQRLabel;
    QRLabel9: TQRLabel;
    brxm_1: TQRLabel;
    QRSubDetail3: TQRSubDetail;
    QRLabel1: TQRLabel;
    tmh1: TQRLabel;
    QRDBText3: TQRDBText;
    QuickRep3: TQuickRep;
    DetailBand2: TQRBand;
    xmmc3: TQRLabel;
    QRImage3: TQRImage;
    QRDBText11: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText21: TQRDBText;
    QRDBText23: TQRDBText;
    QRDBText1: TQRDBText;
    yzbz: TQRLabel;
    QRDBText2: TQRDBText;
    qrdbtxtbrxm: TQRDBText;
    xmmc1: TQRLabel;
    xmmc2: TQRLabel;
    QRLabel2: TQRLabel;
    QRDBText15: TQRDBText;
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    xmmc_3s: TQRLabel;
    QRImage1: TQRImage;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRLabel4: TQRLabel;
    QRDBText10: TQRDBText;
    QRDBText12: TQRDBText;
    xmmc_1s: TQRLabel;
    xmmc_2s: TQRLabel;
    QRLabel8: TQRLabel;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRLabel3: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRShape1: TQRShape;
    QRLabel5: TQRLabel;
    qry_brxxkdrq: TDateTimeField;
    QuickRep4: TQuickRep;
    QRBand2: TQRBand;
    xmmc33: TQRLabel;
    QRImage2: TQRImage;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    sgys_1: TQRLabel;
    QRDBText24: TQRDBText;
    xmmc11: TQRLabel;
    xmmc22: TQRLabel;
    QRDBText27: TQRDBText;
    qk: TQRLabel;
    strngfld_brxxsgys: TStringField;
    QuickRep5: TQuickRep;
    QRBand3: TQRBand;
    xmmc333: TQRLabel;
    QRDBText26: TQRDBText;
    QRDBText28: TQRDBText;
    QRDBText29: TQRDBText;
    QRDBText30: TQRDBText;
    jjqk: TQRLabel;
    QRDBText31: TQRDBText;
    QRDBText32: TQRDBText;
    xmmc111: TQRLabel;
    xmmc222: TQRLabel;
    QRDBText33: TQRDBText;
    QRDBText34: TQRDBText;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel18: TQRLabel;
    QRDBText25: TQRDBText;
    QRLabel14: TQRLabel;
    QuickRep6: TQuickRep;
    QRBand4: TQRBand;
    xmmc32: TQRLabel;
    QRLabel16: TQRLabel;
    QRDBText22: TQRDBText;
    QRDBText35: TQRDBText;
    QRDBText36: TQRDBText;
    QRDBText37: TQRDBText;
    QRDBText38: TQRDBText;
    yzbz_6: TQRLabel;
    QRDBText39: TQRDBText;
    QRDBText40: TQRDBText;
    xmmc12: TQRLabel;
    xmmc21: TQRLabel;
    QRLabel24: TQRLabel;
    QRDBText42: TQRDBText;
    tmh_6: TQRDBText;
    brcd1: TBarCode;
    QRImage4: TQRImage;
    QRDBText41: TQRDBText;
    Button2: TButton;
    QRDBText4: TQRDBText;
    QuickRep_dyzlyy: TQuickRep;
    QRBand5: TQRBand;
    QRLabel15: TQRLabel;
    Vxmmc3: TQRLabel;
    QRImage5: TQRImage;
    QRDBText43: TQRDBText;
    QRDBText44: TQRDBText;
    QRDBText45: TQRDBText;
    QRDBText46: TQRDBText;
    QRDBText47: TQRDBText;
    Vyzbz: TQRLabel;
    QRDBText48: TQRDBText;
    QRDBText49: TQRDBText;
    Vxmmc1: TQRLabel;
    Vxmmc2: TQRLabel;
    QRDBText50: TQRDBText;
    QRDBText51: TQRDBText;
    gyzhyy: TQuickRep;
    QRBand6: TQRBand;
    g_xmmc3: TQRLabel;
    g_sgys: TQRLabel;
    QRImage6: TQRImage;
    QRDBText52: TQRDBText;
    QRDBText53: TQRDBText;
    QRDBText54: TQRDBText;
    QRDBText55: TQRDBText;
    QRDBText56: TQRDBText;
    QRLabel23: TQRLabel;
    QRDBText57: TQRDBText;
    QRDBText58: TQRDBText;
    g_xmmc1: TQRLabel;
    g_xmmc2: TQRLabel;
    QRLabel27: TQRLabel;
    QRDBText59: TQRDBText;
    QRDBText61: TQRDBText;
    QuickRep_tsyy: TQuickRep;
    QRBand7: TQRBand;
    t_xmmc3: TQRLabel;
    QRImage7: TQRImage;
    QRDBText60: TQRDBText;
    QRDBText62: TQRDBText;
    QRDBText63: TQRDBText;
    QRDBText64: TQRDBText;
    QRDBText65: TQRDBText;
    t_yzbz: TQRLabel;
    QRDBText66: TQRDBText;
    t_qrdbtxtbrxm: TQRDBText;
    t_xmmc1: TQRLabel;
    t_xmmc2: TQRLabel;
    QRLabel29: TQRLabel;
    QRDBText68: TQRDBText;
    QRDBText70: TQRDBText;
    t_sgys: TQRDBText;
    procedure e_tmhKeyPress(Sender: TObject; var Key: Char);
    procedure b_cxClick(Sender: TObject);
    procedure bt_PrintClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure proc_checkyb;
    procedure proc_getfzbh(ado_query: TADOQuery);
    procedure proc_printtmh();
    function func_getfzbh_array: Tfzbh_hs;
    procedure proc_getjysqd(fzbh: string);
    procedure proc_in_cyjl;
    procedure bt_canClick(Sender: TObject);
    procedure bb_exitClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure proc_printtmh1();
    procedure ChangePrinter_syy;
    procedure CheckBox2Click(Sender: TObject);
    procedure cxGridDBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure Button2Click(Sender: TObject);

  private
    { Private declarations }
    procedure ChangePrinter(_index: Integer);
    procedure RevertPrinter;
    procedure ReadInfo(BHint:Boolean=True);
    procedure ReadInfoByCardNo(BHint:Boolean=True);
    procedure ReadInfoByBedNo(BHint:Boolean=True);
  public
    { Public declarations }
    myshift, myCtrl: integer;
    myIme: integer;
    myshape: array[1..39] of TShape;
    myLab: array[1..39] of TLabel;
    fzbh: string;
    function HowManycharacter(Const s:String):Integer;//��������ҽԺ �жϼ�����Ŀ��Ӣ�ļ����ָ���
  end;

var
  frm_jydtmdy: Tfrm_jydtmdy;
  tmh: string;
  zyh: string;
  fzbh_hs: Tfzbh_hs;
  sfqyydhsz: Boolean;

  v_IsPrinterJoin: Boolean;
  v_PrinterIndex_new: Integer;
  v_PrinterIndex_old: Integer;
function ReversePos(SubStr, S: string): Integer;
function getxtlj: string;
procedure proc_down(lj: string);
implementation

{$R *.dfm}
uses p_dm, p_func, p_jytmcd,p_zysf_print_service;

procedure Tfrm_jydtmdy.bb_exitClick(Sender: TObject);
begin
  close;
end;

procedure Tfrm_jydtmdy.bt_canClick(Sender: TObject);
begin
  if pub_yydm <> '0012' then
  begin
    if Trim(e_tmh.Text) <> tmh then
    begin
      if trim(e_tmh.text) = '' then
      begin
        Application.MessageBox('������Ҫ��ѯ���˵��������ţ�', '��Ϣ��ʾ', 48);
        e_tmh.SetFocus;
        Exit;
      end;
      tmh := trim(e_tmh.text);
      DM_data.qry_pub.Close;
      DM_data.qry_pub.SQL.text := 'select * from zysf_zydj where cybz=0 and tmh='
        + '''' + tmh + '''';
      DM_data.qry_pub.Open;
    end;
  end;
  if Trim(tmh) = '' then
  begin
    Application.MessageBox('�������������', '��ʾ', 16);
    e_tmh.SelectAll;
    e_tmh.SetFocus;
  end
  else
  begin
    Application.CreateForm(Tfrm_jytmcd, frm_jytmcd);
    try
      frm_jytmcd.cd_tmh := tmh;
      frm_jytmcd.cd_zyh := zyh;
      frm_jytmcd.Width := frm_jydtmdy.Width;
      frm_jytmcd.Height := frm_jydtmdy.Height;
      frm_jytmcd.ShowModal;
    finally
      frm_jytmcd.Free;
    end;
  end;
end;

procedure Tfrm_jydtmdy.bt_PrintClick(Sender: TObject);
var
  st, zt: string;
begin
  st := '';
  zt := '';
  qry_brxx.DisableControls;
  qry_brxx.First;
  while not qry_brxx.eof do
  begin
    if (qry_brxx.FieldByName('sfjy').AsBoolean = true) then
    begin
      if (Pos(qry_brxx.FieldByName('jyxmdm').asstring + ',', st) > 0) then
      begin
        zt := '1';
        Break;
      end
      else
      begin
        st := st + qry_brxx.FieldByName('jyxmdm').asstring + ',';
      end;
    end;
    qry_brxx.Next;
  end;
  qry_brxx.First;
  qry_brxx.EnableControls;
  if zt = '1' then
  begin
    Application.MessageBox('����ѡ����ͬ��Ŀһ���ӡ��', '��Ϣ��ʾ', 48);
    exit;
  end;
  if qry_brxx.Active and (qry_brxx.RecordCount > 0) then
  begin
    proc_checkyb; //�������
    proc_getfzbh(qry_brxx); //���ɼ��鵥��
    if sfqyydhsz = false then
      proc_printtmh() //��ӡ�����
    else
      proc_printtmh1();
    //proc_in_cyjl; //д�������¼��ʽ��
    qry_brxx.close;
  end;
  ReadInfo(False);
  //bt_can.Click;
end;

procedure Tfrm_jydtmdy.Button1Click(Sender: TObject);
begin
  ReadInfoByBedNo;
end;

procedure Tfrm_jydtmdy.Button2Click(Sender: TObject);
begin
  sp_brxx.Close;
  sp_brxx.Parameters.Refresh;
  sp_brxx.Parameters.ParamByName('@zyh').Value := '';
  sp_brxx.Parameters.ParamByName('@zxsj').Value := FormatDateTime('yyyyMMdd',
    dtp_zxsj.DateTime);
  sp_brxx.Parameters.ParamByName('@jyfzbh').Value := '';
    sp_brxx.Parameters.ParamByName('@bqdm').Value := pub_bqdm;
  sp_brxx.Parameters.ParamByName('@czydm').Value := pub_czydm;
  sp_brxx.ExecProc;
  Qry_brxx.Close;
  if pub_yydm='0266' then //��Ԫ�ѻ�����ҽԺ�����޸�
  begin
     Qry_brxx.SQL.Text :=
    'select a.*,b.kdrq,c.sgys from DZBL_CYJL_zy_ls a,zysf_zyfydx b,sys_yzxm c,zysf_zydj d where a.zyh=b.zyh and ' +
    ' a.fyid=b.id and a.zyh=d.zyh and d.bqdm=:bqdm and a.jyxmdm=c.xmdm order by a.yb,a.dldm,c.sgys asc';
  end else
  begin
      Qry_brxx.SQL.Text :=
    'select a.*,b.kdrq,c.sgys from DZBL_CYJL_zy_ls a,zybl_zyyz b,sys_yzxm c,zysf_zydj d where a.zyh=b.zyh and ' +
    ' a.fyid=b.id and a.zyh=d.zyh and d.bqdm=:bqdm and a.jyxmdm=c.xmdm order by a.yb,a.dldm,c.sgys asc';
  end;

  qry_brxx.Parameters.ParamByName('bqdm').Value:=pub_bqdm;
  Qry_brxx.Open;
  if Qry_brxx.RecordCount > 0 then
  begin
    Qry_brxx.First;
    while not Qry_brxx.Eof do
    begin
      Qry_brxx.Edit;
      Qry_brxx.FieldByName('sfjy').AsBoolean := True;
      Qry_brxx.Post;
      Qry_brxx.Next;
    end;
    bt_Print.Enabled := True;
    bt_Print.SetFocus;
  end
  else
  begin
    Application.MessageBox('���޿ɼ������Ŀ', '��ʾ', 16);
    bt_Print.Enabled := False;
    e_tmh.SetFocus;
    e_tmh.SelectAll;
  end;
end;

procedure Tfrm_jydtmdy.proc_in_cyjl;
begin
  qry_in_cyjl.close;
  qry_in_cyjl.SQL.clear;
  qry_in_cyjl.SQL.Add('Insert DZBL_CYJL_zy(fyid,tmh,zyh,brxm,brxb,brnl,kdysdm,kdysmc,kdksdm,');
  qry_in_cyjl.SQL.Add('kdksmc,yszd,jyxmdm,jyxmmc,dldm,jyfzbh,jyfzxh, cysj,cyry,sfjy,sfcd,yb,ma,jydlpx,yzbz) ');
  qry_in_cyjl.SQL.Add('Select fyid,tmh,zyh,brxm,brxb,brnl,kdysdm,kdysmc,kdksdm,kdksmc,yszd,');
  qry_in_cyjl.SQL.Add('jyxmdm,jyxmmc,dldm,jyfzbh,jyfzxh, Getdate(),cyry,sfjy,sfcd,yb,ma,jydlpx,yzbz ');
  qry_in_cyjl.SQL.Add('from DZBL_CYJL_zy_Ls Where zyh=' + #39 + zyh + #39 +
    ' and sfjy=1');
  qry_in_cyjl.ExecSQL;
  qry_in_cyjl.Close;
  qry_in_cyjl.SQL.clear;
  qry_in_cyjl.SQL.Add('delete DZBL_CYJL_zy_LS where zyh=' + #39 + zyh + #39 +
    ' and sfjy=1');
  qry_in_cyjl.ExecSQL;
end;

procedure Tfrm_jydtmdy.proc_getfzbh(ado_query: TADOQuery);
var
  yb_old, yb_next, dl_old, dl_next, old_brxm, sgys_old: string;
begin

  if (ado_query.Active) and (ado_query.RecordCount > 0) then
  begin
    ado_query.Sort := 'yb,dldm,sgys ASC';
    ado_query.First;
    sys_get_jyxh.close;
    sys_get_jyxh.Parameters.ParamByName('@jyxh').Value := '';
    sys_get_jyxh.ExecProc;
    fzbh := sys_get_jyxh.parameters.parambyname('@jyxh').value;
    dl_old := ado_query.FieldByName('dldm').AsString;
    yb_old := ado_query.FieldByName('yb').AsString;
    old_brxm := ado_query.FieldByName('brxm').AsString;
    sgys_old := ado_query.FieldByName('sgys').AsString;
    while not ado_query.Eof do
    begin
      if ado_query.FieldByName('sfjy').AsBoolean then //�ж��Ƿ����
      begin
        //�ж�������Ϊ��,���ҷ����Ϊ��
        if (trim(ado_query.FieldByName('yb').AsString) <> '') and
          (Trim(ado_query.FieldByName('jyfzbh').AsString) = '') then
        begin
          ado_query.Edit;
          //����������һ��������벻һ��ʹ���±��
          if (pub_yydm <> '0264') and (pub_yydm <> '0263') and
          (ado_query.FieldByName('dldm').AsString <> dl_old) then
          begin
            sys_get_jyxh.close;
            sys_get_jyxh.Parameters.ParamByName('@jyxh').Value := '';
            sys_get_jyxh.ExecProc;
            fzbh := sys_get_jyxh.parameters.parambyname('@jyxh').value;

            dl_old := ado_query.FieldByName('dldm').AsString;
          end;
          //��������һ��������һ��ʹ���±��
          if (pub_yydm <> '0264') and  (pub_yydm <> '0263') and
          (ado_query.FieldByName('yb').AsString <> yb_old) then
          begin
            sys_get_jyxh.close;
            sys_get_jyxh.Parameters.ParamByName('@jyxh').Value := '';
            sys_get_jyxh.ExecProc;
            fzbh := sys_get_jyxh.parameters.parambyname('@jyxh').value;
            yb_old := ado_query.FieldByName('yb').AsString;
          end;
          if ado_query.FieldByName('sgys').AsString <> sgys_old then
          begin
            sys_get_jyxh.close;
            sys_get_jyxh.Parameters.ParamByName('@jyxh').Value := '';
            sys_get_jyxh.ExecProc;
            fzbh := sys_get_jyxh.parameters.parambyname('@jyxh').value;
            sgys_old := ado_query.FieldByName('sgys').AsString;
          end;
          //��������һ��������һ��ʹ���±��
          if ado_query.FieldByName('brxm').AsString <> old_brxm then
          begin
            sys_get_jyxh.close;
            sys_get_jyxh.Parameters.ParamByName('@jyxh').Value := '';
            sys_get_jyxh.ExecProc;
            fzbh := sys_get_jyxh.parameters.parambyname('@jyxh').value;
            old_brxm := ado_query.FieldByName('brxm').AsString;
          end;
          ado_query.FieldByName('jyfzbh').AsString := fzbh;
          ado_query.Post;
        end;
      end;
      if fzbh = '' then
      begin
        Application.MessageBox('��ȡ��������ʧ�ܣ������ԣ�', '������ʾ',
          MB_OK + MB_ICONSTOP);
        abort;
      end;
      ado_query.Next;
    end;
    ado_query.UpdateBatch();
  end;
end;

function ReversePos(SubStr, S: string): Integer;
var
  i: Integer;
begin
  i := Pos(ReverseString(SubStr), ReverseString(S));
  if i > 0 then
    i := Length(S) - i - Length(SubStr) + 2;
  Result := i;
end;

procedure Tfrm_jydtmdy.proc_printtmh();
var
  tmdy: function(bm, xb, kscw, xm, nl, bz, cysj, yb, xmmc1, xmmc2, xmmc3, yzbz,
    dyjmc_1: AnsiString): boolean; stdcall;
  ma,Vtemp: string;
  ii, Printcs,n: integer;
  V1 : array[0..9] of Integer;
  mysz: array of string;
  Getxmmc, lb, Getybmc, getsgys: string;
  _xmmcStr: TStrings;
  OneHandle: THandle; //����һ���������
  dll_1: Cardinal;
  yzbz_1, xmmc_1, xmmc_2, xmmc_3, xb_1, nl_1, xm_1, kscw_1, bm_1, bz_1, cysj_1,
    yb_1, dyjmc_1: string;
begin
  if pub_yydm = '0003' then
  begin
    ChangePrinter_syy;
  end  else if pub_yydm='0271' then
  begin
    ChangePrinter(8);
  end else
  begin
    ChangePrinter(3);
  end;

  if pub_yydm <> '0013' then
  begin
    fzbh_hs := func_getfzbh_array();
    Printcs := fzbh_hs.hs;
    Setlength(mysz, Qry_look.RecordCount);
    for ii := 0 to Printcs do
    begin
      mysz[ii] := fzbh_hs.fzbh_array[ii];
    end;
    for ii := 0 to Printcs do
    begin
      Qry_print1.close;
      Qry_print1.Parameters.ParamByName('fzbh').Value := mysz[ii];
      Qry_print1.Parameters.ParamByName('lb').Value := '1';
      Qry_print1.Parameters.ParamByName('srrq').Value := dtp_zxsj.DateTime;
      Qry_print1.Parameters.ParamByName('jyxmmc').Value := '';
      Qry_print1.Open;
      frm_zysf_print_service.print_jytmzdy(mysz[ii]);
      if pub_yydm <> '0003' then
      begin

        if pub_yydm = '0012' then //��̨��ҽԺ��ӡ������ ��ʼ
        begin

          Getxmmc := trim(Qry_print1.FieldByname('xmmc').AsString);
          getybmc := trim(Qry_print1.FieldByname('yb').AsString);

          if Pos('��', trim(Qry_print1.FieldByname('yzbz').AsString)) > 0 then
          begin
            yzbz.Caption := '��';
          end
          else
          begin
            yzbz.Caption := '';
          end;

          _xmmcStr := TStringList.Create;
          _xmmcStr.Delimiter := ' ';
          _xmmcStr.DelimitedText := Getxmmc;

          //xmmcstr<4�����������ʼ
          if _xmmcStr.Count < 4 then
          begin

            xmmc1.Caption := '';
            xmmc2.Caption := '';
            xmmc3.Caption := '';

            if _xmmcStr.Count > 0 then
              xmmc1.Caption := _xmmcStr.Strings[0];
            if _xmmcStr.Count > 1 then
              xmmc2.Caption := _xmmcStr.Strings[1];
            if _xmmcStr.Count > 2 then
              xmmc3.Caption := _xmmcStr.Strings[2];

            brcd1.BarCode := mysz[ii];
            brcd1.Draw(QRImage3.Canvas, 4, 0, 35, 0);

            QRLabel2.Enabled := False;
          //  QRDBText4.Enabled := False;
            QRImage3.Enabled := true;
            yzbz.Enabled := true;
            proc_getjysqd(mysz[ii]);

            if v_IsPrinterJoin = True then
              if QuickRep3.PrinterSettings.PrinterIndex <> v_PrinterIndex_new
                then
              begin
                QuickRep3.PrinterSettings.PrinterIndex := v_PrinterIndex_new;
              end;
            QuickRep3.print;
          end
          else
          begin //xmmcstr>=4���������
            xmmc1.Caption := '';
            xmmc2.Caption := '';
            xmmc3.Caption := '';

            if _xmmcStr.Count > 0 then
              xmmc1.Caption := _xmmcStr.Strings[0];
            if _xmmcStr.Count > 1 then
              xmmc2.Caption := _xmmcStr.Strings[1];
            if _xmmcStr.Count > 2 then
              xmmc3.Caption := _xmmcStr.Strings[2];
            if _xmmcStr.Count > 3 then
              xmmc3.Caption := Copy(_xmmcStr.Strings[2], 1, ReversePos(',',
                _xmmcStr.Strings[2]) - 1);

            //------------------------------------------------------
            brcd1.BarCode := mysz[ii];
            brcd1.Draw(QRImage3.Canvas, 4, 0, 35, 0);

            QRLabel2.Enabled := False;
         //   QRDBText4.Enabled := False;
            QRImage3.Enabled := true;
            yzbz.Enabled := true;
            proc_getjysqd(mysz[ii]);

            if v_IsPrinterJoin = True then
              if QuickRep3.PrinterSettings.PrinterIndex <> v_PrinterIndex_new
                then
              begin
                QuickRep3.PrinterSettings.PrinterIndex := v_PrinterIndex_new;
              end;
            QuickRep3.print;

            xmmc1.Caption := '';
            xmmc2.Caption := '';
            xmmc3.Caption := '';

            if _xmmcStr.Count > 3 then
            begin
              xmmc1.Caption := Copy(_xmmcStr.Strings[2], ReversePos(',',
                _xmmcStr.Strings[2]) + 1);
              xmmc2.Caption := _xmmcStr.Strings[3];
            end;
            if _xmmcStr.Count > 4 then
              xmmc3.Caption := _xmmcStr.Strings[4];

            //------------------------------------------------------
            brcd1.BarCode := mysz[ii];
            brcd1.Draw(QRImage3.Canvas, 4, 0, 35, 0);

            QRLabel2.Enabled := False;
         //   QRDBText4.Enabled := False;
            QRImage3.Enabled := true;
            yzbz.Enabled := true;

            if v_IsPrinterJoin = True then
              if QuickRep3.PrinterSettings.PrinterIndex <> v_PrinterIndex_new
                then
              begin
                QuickRep3.PrinterSettings.PrinterIndex := v_PrinterIndex_new;
              end;
            QuickRep3.print;

          end;

        end           //��̨��ҽԺ��ӡ����������
        else if pub_yydm = '0234' then
        begin     //��������ҽԺ������ʼ

          Getxmmc := trim(Qry_print1.FieldByname('xmmc').AsString);
          getybmc := trim(Qry_print1.FieldByname('yb').AsString);
          if Pos('��', trim(Qry_print1.FieldByname('yzbz').AsString)) > 0 then
          begin
            yzbz_6.Caption := '��';
          end
          else
          begin
            yzbz_6.Caption := '';
          end;

          //-----------calmhawk-----------------------------------
          _xmmcStr := TStringList.Create;
          _xmmcStr.Delimiter := ' ';
          _xmmcStr.DelimitedText := Getxmmc;
          xmmc12.Caption := '';
          xmmc21.Caption := '';
          xmmc32.Caption := '';
          if _xmmcStr.Count > 0 then
            xmmc12.Caption := _xmmcStr.Strings[0];
          if _xmmcStr.Count > 1 then
            xmmc21.Caption := _xmmcStr.Strings[1];
          if _xmmcStr.Count > 2 then
            xmmc32.Caption := _xmmcStr.Strings[2];

          if Trim(Qry_print1.FieldByName('sgys').AsString) = '' then
            QRLabel16.Caption := ''
          else
            QRLabel16.Caption := '�Թ���ɫ:' + Trim(Qry_print1.FieldByName('sgys').AsString);

          //------------------------------------------------------

          brcd1.BarCode := mysz[ii];
          brcd1.Draw(QRImage4.Canvas, 0, 1, 35, 90);

          QRLabel24.Enabled := False;
          tmh_6.Enabled := False;
          QRImage4.Enabled := true;
          yzbz_6.Enabled := true;

          proc_getjysqd(mysz[ii]);
          if v_IsPrinterJoin = True then
          begin
            if QuickRep6.PrinterSettings.PrinterIndex <> v_PrinterIndex_new then
            begin
              QuickRep6.PrinterSettings.PrinterIndex := v_PrinterIndex_new;
            end;
          end;

          QuickRep6.Print;
        end        //������ҽԺ��������
        else
        begin
          if pub_yydm = '0014' then
          begin
            QRDBText1.Left := QRDBText1.Left + 8;
            QRDBText2.Left := QRDBText2.Left + 8;
            QRDBText4.Left := QRDBText4.Left + 8;
            QRDBText11.Left := QRDBText11.Left + 8;
            QRDBText15.Left := QRDBText15.Left + 8;
            QRDBText20.Left := QRDBText20.Left + 8;
            QRDBText21.Left := QRDBText21.Left + 8;
            QRDBText23.Left := QRDBText23.Left + 8;
            qrdbtxtbrxm.Left := qrdbtxtbrxm.Left + 8;
            QRImage3.Left := QRImage3.Left + 8;
            QRLabel2.Left := QRLabel2.Left + 8;
            xmmc1.Left := xmmc1.Left + 8;
            xmmc2.Left := xmmc2.Left + 8;
            xmmc3.Left := xmmc3.Left + 8;
            yzbz.Left := yzbz.Left + 8;
          end;
          
//          QRDBText4.AutoSize := False;
//          QRDBText23.AutoSize := False;
//          QRDBText41.AutoSize := False;
//          if (pub_yydm = '0263') or (pub_yydm = '0264') then//��������ҽԺ
//          begin
//            QRDBText4.Width :=  Length(Qry_print1.FieldByname('tmh').AsString)* 7 + 2;
//            QRDBText23.Width := Length(Qry_print1.FieldByname('yb').AsString) * 7 - 3;
//            QRDBText23.Top := QRDBText4.Top ;   //yb,tmh+8
//            QRDBText41.Top := QRDBText4.Top ;  //ys,yb+8
//
//            QRDBText23.Left := QRDBText4.Left + QRDBText4.Width  ;   //yb,tmh+8
//            QRDBText41.Left := QRDBText23.Left + QRDBText23.Width ;  //ys,yb+8
//          end;

          Getxmmc := trim(Qry_print1.FieldByname('xmmc').AsString);
          getybmc := trim(Qry_print1.FieldByname('yb').AsString);
          if Pos('��', trim(Qry_print1.FieldByname('yzbz').AsString)) > 0 then
          begin
            yzbz.Caption := '��';
            Vyzbz.Caption := '��';
            t_yzbz.Caption := '��';
          end
          else
          begin
            yzbz.Caption := '';
            Vyzbz.Caption := '';
            t_yzbz.Caption := '';
          end;

          //-----------calmhawk-----------------------------------
          _xmmcStr := TStringList.Create;
          _xmmcStr.Delimiter := ' ';
          _xmmcStr.DelimitedText := Getxmmc;
          xmmc1.Caption := '';
          xmmc2.Caption := '';
          xmmc3.Caption := '';
          Vxmmc1.Caption := '';
          Vxmmc2.Caption := '';
          Vxmmc3.Caption := '';
          g_xmmc1.Caption := '';
          g_xmmc2.Caption := '';
          g_xmmc3.Caption := '';
          t_xmmc1.Caption := '';
          t_xmmc2.Caption := '';
          t_xmmc3.Caption := '';

          if (pub_yydm = '0263') or (pub_yydm = '0264') then//��������ҽԺ
          begin
            _xmmcStr.Delimiter := ',';
            _xmmcStr.DelimitedText := StringReplace(Getxmmc,' ','',[rfReplaceAll]);
            //�����г��ֺ��ֺ�Ӣ�Ļ��ʱ���1�ַ�λ��
            for n := 0 to _xmmcStr.Count - 1 do
            begin
              if HowManycharacter(Copy(_xmmcStr.Strings[n],1,6)) mod 2 = 0 then
                V1[n] := 6
              else
                V1[n] := 7;
            end;
            //������Ŀ����3��ʱ��ѭ�����д�ӡ
            for n := 0 to _xmmcStr.Count - 1 do
            begin
              if (_xmmcStr.Count > 0) and (_xmmcStr.Count <= 3) then
              begin
                Vtemp := Copy(_xmmcStr.Strings[n],1,V1[n]);
                if Vxmmc1.Caption = '' then
                  Vxmmc1.Caption := Vtemp
                else
                  Vxmmc1.Caption := Vxmmc1.Caption + ',' + Vtemp;
                Continue;
              end;
              if (_xmmcStr.Count > 3) and (_xmmcStr.Count <= 6) then
              begin
                if n = 3  then //��ֹ�±�Խ��
                  Break;
                Vtemp := Copy(_xmmcStr.Strings[n],1,V1[n]);
                if Vxmmc1.Caption = '' then
                  Vxmmc1.Caption := Vtemp
                else
                  Vxmmc1.Caption := Vxmmc1.Caption + ',' + Vtemp;
                if n + 3 >= _xmmcStr.Count then //��ĿΪ4-5��ʱ��֤��һ�п��Դ�ӡ��ǰ����
                  Continue;
                Vtemp := Copy(_xmmcStr.Strings[n+3],1,V1[n+3]);
                if Vxmmc2.Caption = '' then
                  Vxmmc2.Caption := Vtemp
                else
                  Vxmmc2.Caption := Vxmmc2.Caption + ',' + Vtemp;
                Continue;
              end;
              if (_xmmcStr.Count > 6) and (_xmmcStr.Count <= 9) then
              begin
                if n = 3  then
                  Break;
                Vtemp := Copy(_xmmcStr.Strings[n],1,V1[n]);
                if Vxmmc1.Caption = '' then
                  Vxmmc1.Caption := Vtemp
                else
                  Vxmmc1.Caption := Vxmmc1.Caption + ',' + Vtemp;
                Vtemp := Copy(_xmmcStr.Strings[n+3],1,V1[n+3]);
                if Vxmmc2.Caption = '' then
                  Vxmmc2.Caption := Vtemp
                else
                  Vxmmc2.Caption := Vxmmc2.Caption + ',' + Vtemp;
                if n + 6 >= _xmmcStr.Count then //��֤ǰ�������Դ�ӡ����Ŀǰ����
                  Continue;
                Vtemp := Copy(_xmmcStr.Strings[n+6],1,V1[n+6]);
                if Vxmmc3.Caption = '' then
                  Vxmmc3.Caption := Vtemp
                else
                  Vxmmc3.Caption := Vxmmc3.Caption + ',' + Vtemp;
                Continue;
              end;
            end;
            brcd1.BarCode := mysz[ii];
            brcd1.BarCode := mysz[ii];
            brcd1.Draw(QRImage5.Canvas, 4, 0, 35, 0);
          end
          else if pub_yydm = '0266' then  //��Ԫ�ٻ�ҽԺ
          begin
            QRLabel27.Enabled := False;
            brcd1.BarCode := mysz[ii];
            brcd1.BarCode := mysz[ii];
            brcd1.Draw(QRImage6.Canvas, 4, 0, 35, 0);
            if _xmmcStr.Count > 0 then
            g_xmmc1.Caption := _xmmcStr.Strings[0];
            if _xmmcStr.Count > 1 then
            g_xmmc2.Caption := _xmmcStr.Strings[1];
            if _xmmcStr.Count > 2 then
            g_xmmc3.Caption := _xmmcStr.Strings[2];
          end
          else if pub_yydm = '0269' then  //̨ɽҽԺ
          begin
            QRLabel29.Enabled := False;
            if _xmmcStr.Count > 0 then
            t_xmmc1.Caption := _xmmcStr.Strings[0];
            if _xmmcStr.Count > 1 then
            t_xmmc2.Caption := _xmmcStr.Strings[1];
            if _xmmcStr.Count > 2 then
            t_xmmc3.Caption := _xmmcStr.Strings[2];
          end
          else
          begin
            if _xmmcStr.Count > 0 then
            xmmc1.Caption := _xmmcStr.Strings[0];
            if _xmmcStr.Count > 1 then
            xmmc2.Caption := _xmmcStr.Strings[1];
            if _xmmcStr.Count > 2 then
            xmmc3.Caption := _xmmcStr.Strings[2];
          end;


          if Trim(Qry_print1.FieldByName('sgys').AsString) = '' then
          begin
            QRLabel14.Caption := '';
            g_sgys.Caption := '';
          end
          else
          begin
            QRLabel14.Caption := '�Թ���ɫ:' + Trim(Qry_print1.FieldByName('sgys').AsString);
            g_sgys.Caption := '�Թ���ɫ:' + Trim(Qry_print1.FieldByName('sgys').AsString);
          end;
          if pub_yydm='0240' then
          begin
            QRLabel14.Caption:=Qry_print1.FieldByName('brxm').AsString+qry_print1.FieldByName('brnl').AsString ;
            QRDBText11.DataField:='';
            QRDBText20.DataField:='';
          end;

          //------------------------------------------------------

          brcd1.BarCode := mysz[ii];
          brcd1.Draw(QRImage3.Canvas, 4, 0, 35, 0);
          // Draw(QRImage3.Canvas, int �����ƶ�, int �����ƶ�, �������򳤶�, ��ת�Ƕ�)
          if pub_yydm = '0269' then
            brcd1.Draw(QRImage7.Canvas, 4, 0, 42, 0);

          if pub_yydm = '0246' then
          begin
            QuickRep3.Page.Width := 52;
            QuickRep3.Page.Length := 31;

            QRDBText2.SendToBack;
            QRDBText2.Width := 100;
            QRDBText11.Left := 100;
            QRDBText20.left := 166;
          end;

          if pub_yydm = '0182' then
          begin
            QRLabel2.Enabled := True;
            QRDBText4.Enabled := True;
            QRImage3.Enabled := False;
            yzbz.Enabled := false;
          end
          else
          begin
            QRLabel2.Enabled := False;
         //   QRDBText4.Enabled := False;
            QRImage3.Enabled := true;
            yzbz.Enabled := true;
          end;
          proc_getjysqd(mysz[ii]);


          if (pub_yydm = '0263') or (pub_yydm = '0264') then//��������ҽԺ
          begin
            if v_IsPrinterJoin = True then
            begin
              if QuickRep_dyzlyy.PrinterSettings.PrinterIndex <> v_PrinterIndex_new then
              begin
                QuickRep_dyzlyy.PrinterSettings.PrinterIndex := v_PrinterIndex_new;
              end;
            end;
            QuickRep_dyzlyy.print;
          end
          else if pub_yydm = '0266' then   //��Ԫ�ٻ�ҽԺ
          begin
            if v_IsPrinterJoin = True then
            begin
              if gyzhyy.PrinterSettings.PrinterIndex <> v_PrinterIndex_new then
              begin
                gyzhyy.PrinterSettings.PrinterIndex := v_PrinterIndex_new;
              end;
            end;
            gyzhyy.print;
          end
          else if pub_yydm = '0269' then
          begin
            if v_IsPrinterJoin = True then
            begin
              if QuickRep_tsyy.PrinterSettings.PrinterIndex <> v_PrinterIndex_new then
              begin
                QuickRep_tsyy.PrinterSettings.PrinterIndex := v_PrinterIndex_new;
              end;
            end;
            QuickRep_tsyy.print;
          end
          else
          begin
            if v_IsPrinterJoin = True then
            begin
              if QuickRep3.PrinterSettings.PrinterIndex <> v_PrinterIndex_new then
              begin
                QuickRep3.PrinterSettings.PrinterIndex := v_PrinterIndex_new;
              end;
            end;
            if Getxtcs('jytmdy_zdybb')='0' then
            begin
              QuickRep3.print;
            end;
          end;
        end
      end
      else if pub_yydm = '0003' then
      begin //��ҽԺ����
        Getxmmc := trim(Qry_print1.FieldByname('xmmc').AsString);
        getybmc := trim(Qry_print1.FieldByname('yb').AsString);
        getsgys := trim(Qry_print1.FieldByname('sgys').AsString);
        DM_data.qry_pub.Close;
        DM_data.qry_pub.SQL.Text :=
          'select * from DZBL_CYJL_zy_LS  where jyfzbh=' + '''' +
          mysz[ii] + '''' + ' and substring(dldm,1,6)=''010111''';
        DM_data.qry_pub.Open;

        if not DM_data.qry_pub.IsEmpty then
        begin
          qk.Caption := '��';
          jjqk.Caption := '��';
        end
        else
        begin
          qk.Caption := '';
          jjqk.Caption := '';
        end;
        //        qry_cx_jc.Close;
        //        qry_cx_jc.SQL.Text:='select * from DZBL_CYJL_zy_LS  where jyfzbh='+''''+
        //        mysz[ii]+''''+' and substring(dldm,1,6)<>''010111''';
        //        qry_cx_jc.Open;
        //        if not qry_cx_jc.IsEmpty then
        //        begin
        //          if (FormatDateTime('hh:mm:ss',Frm_func.curr_date)>='18:00:00') and
        //          (FormatDateTime('hh:mm:ss',Frm_func.curr_date)<='23:59:59') then
        //          begin
        //            Application.MessageBox('����6������6�㲻�ܴ�ӡ�Ǽ�����Ŀ��', '������ʾ',
        //            MB_OK + MB_ICONSTOP);
        //            abort;
        //          end;
        //          if (FormatDateTime('hh:mm:ss',Frm_func.curr_date)>='00:00:00') and
        //          (FormatDateTime('hh:mm:ss',Frm_func.curr_date)<='06:00:00') then
        //          begin
        //            Application.MessageBox('����6������6�㲻�ܴ�ӡ�Ǽ�����Ŀ��', '������ʾ',
        //            MB_OK + MB_ICONSTOP);
        //            abort;
        //          end;
        //
        //        end;

        sgys_1.Caption := getsgys;

        //-----------calmhawk-----------------------------------
        _xmmcStr := TStringList.Create;
        _xmmcStr.Delimiter := ' ';
        _xmmcStr.DelimitedText := Getxmmc;
        if _xmmcStr.Count < 4 then
        begin
          xmmc11.Caption := '';
          xmmc22.Caption := '';
          xmmc33.Caption := '';
          xmmc111.Caption := '';
          xmmc222.Caption := '';
          xmmc333.Caption := '';
          if _xmmcStr.Count > 0 then
            xmmc11.Caption := _xmmcStr.Strings[0];
          if _xmmcStr.Count > 1 then
            xmmc22.Caption := _xmmcStr.Strings[1];
          if _xmmcStr.Count > 2 then
            xmmc33.Caption := _xmmcStr.Strings[2];

          if _xmmcStr.Count > 0 then
            xmmc111.Caption := _xmmcStr.Strings[0];
          if _xmmcStr.Count > 1 then
            xmmc222.Caption := _xmmcStr.Strings[1];
          if _xmmcStr.Count > 2 then
            xmmc333.Caption := _xmmcStr.Strings[2];
          //------------------------------------------------------
          QRLabel20.Caption := mysz[ii];
          QRLabel18.Caption := trim(Qry_print1.FieldByname('tmh').AsString);
          brcd1.BarCode := mysz[ii];
          brcd1.Draw(QRImage2.Canvas, 4, 0, 35, 0);
          QRImage2.Enabled := true;
          qk.Enabled := true;
          proc_getjysqd(mysz[ii]);
          if v_IsPrinterJoin = True then
            if QuickRep4.PrinterSettings.PrinterIndex <> v_PrinterIndex_new then
            begin
              QuickRep4.PrinterSettings.PrinterIndex := v_PrinterIndex_new;
            end;

          //������������4��������С����
          if Length(QRDBText16.DataSet.FieldByName('brxm').AsString)>=4 then

           begin
             QRDBText16.Font.Size:=6;
           end;


          QuickRep4.print;
          QuickRep4.print;
        end
        else
        begin
          xmmc11.Caption := '';
          xmmc22.Caption := '';
          xmmc33.Caption := '';
          xmmc111.Caption := '';
          xmmc222.Caption := '';
          xmmc333.Caption := '';
          if _xmmcStr.Count > 0 then
            xmmc11.Caption := _xmmcStr.Strings[0];
          if _xmmcStr.Count > 1 then
            xmmc22.Caption := _xmmcStr.Strings[1];
          if _xmmcStr.Count > 2 then
            xmmc33.Caption := _xmmcStr.Strings[2];
          if _xmmcStr.Count > 3 then
            xmmc33.Caption := Copy(_xmmcStr.Strings[2], 1, ReversePos(',',
              _xmmcStr.Strings[2]) - 1);

          //------------------------------------------------------
          QRLabel20.Caption := mysz[ii];
          QRLabel18.Caption := trim(Qry_print1.FieldByname('tmh').AsString);
          brcd1.BarCode := mysz[ii];
          brcd1.Draw(QRImage2.Canvas, 4, 0, 35, 0);
          QRImage2.Enabled := true;
          qk.Enabled := true;
          proc_getjysqd(mysz[ii]);
          if v_IsPrinterJoin = True then
            if QuickRep4.PrinterSettings.PrinterIndex <> v_PrinterIndex_new then
            begin
              QuickRep4.PrinterSettings.PrinterIndex := v_PrinterIndex_new;
            end;

          //������������4��������С����
          if Length(QRDBText16.DataSet.FieldByName('brxm').AsString)>=4 then

           begin
             QRDBText16.Font.Size:=6;
           end;

          QuickRep4.print;
          QuickRep4.print;

          xmmc11.Caption := '';
          xmmc22.Caption := '';
          xmmc33.Caption := '';
          xmmc111.Caption := '';
          xmmc222.Caption := '';
          xmmc333.Caption := '';
          if _xmmcStr.Count > 3 then
          begin
            xmmc11.Caption := Copy(_xmmcStr.Strings[2], ReversePos(',',
              _xmmcStr.Strings[2]) + 1);
            xmmc22.Caption := _xmmcStr.Strings[3];
          end;
          if _xmmcStr.Count > 4 then
            xmmc33.Caption := _xmmcStr.Strings[4];

          //------------------------------------------------------
          QRLabel20.Caption := mysz[ii];
          QRLabel18.Caption := trim(Qry_print1.FieldByname('tmh').AsString);
          brcd1.BarCode := mysz[ii];
          brcd1.Draw(QRImage2.Canvas, 4, 0, 35, 0);
          QRImage2.Enabled := true;
          qk.Enabled := true;
          if v_IsPrinterJoin = True then
            if QuickRep4.PrinterSettings.PrinterIndex <> v_PrinterIndex_new then
            begin
              QuickRep4.PrinterSettings.PrinterIndex := v_PrinterIndex_new;
            end;

          //������������4��������С����
          if Length(QRDBText16.DataSet.FieldByName('brxm').AsString)>=4 then

           begin
             QRDBText16.Font.Size:=6;
           end;

          QuickRep4.print;
          QuickRep4.print;

        end;
        //QuickRep5.Print;

      end;
      //�����ҽԺ��ӡ���ֽ�ţ���������ֻ�򿨺�
//      if pub_yydm<>'0003' then
//      proc_getjysqd(mysz[ii]);

    end;
  end
  else
  begin
    dll_1 := LoadLibrary('scsx_tmdy.dll'); //��̬����DLL������������
    try
      if dll_1 <> 0 then //�������ɹ����ȡShowCalendar�����ĵ�ַ
        @tmdy := GetProcAddress(dll_1, 'tmdy');
      if not (@tmdy = nil) then
      begin
        fzbh_hs := func_getfzbh_array();
        Printcs := fzbh_hs.hs;
        Setlength(mysz, Qry_look.RecordCount);
        for ii := 0 to Printcs do
        begin
          mysz[ii] := fzbh_hs.fzbh_array[ii];
        end;
        for ii := 0 to Printcs do
        begin
          Qry_print1.close;
          Qry_print1.Parameters.ParamByName('fzbh').Value := mysz[ii];
          Qry_print1.Parameters.ParamByName('lb').Value := '1';
          Qry_print1.Parameters.ParamByName('srrq').Value := dtp_zxsj.DateTime;
          Qry_print1.Parameters.ParamByName('jyxmmc').Value := '';
          Qry_print1.Open;
          Getxmmc := trim(Qry_print1.FieldByname('xmmc').AsString);
          getybmc := trim(Qry_print1.FieldByname('yb').AsString);
          if Pos('��', trim(Qry_print1.FieldByname('yzbz').AsString)) > 0 then
          begin
            yzbz_1 := '��';
          end
          else
          begin
            yzbz_1 := '';
          end;

          //-----------calmhawk-----------------------------------
          _xmmcStr := TStringList.Create;
          _xmmcStr.Delimiter := ' ';
          _xmmcStr.DelimitedText := Getxmmc;
          xmmc_1 := '';
          xmmc_2 := '';
          xmmc_3 := '';
          if _xmmcStr.Count > 0 then
            xmmc_1 := _xmmcStr.Strings[0];
          if _xmmcStr.Count > 1 then
            xmmc_2 := _xmmcStr.Strings[1];
          if _xmmcStr.Count > 2 then
            xmmc_3 := _xmmcStr.Strings[2];
          bm_1 := mysz[ii];
          xb_1 := Trim(Qry_print1.FieldByName('brxb').AsString);
          xm_1 := Trim(Qry_print1.FieldByName('brxm').AsString);
          kscw_1 := Trim(Qry_print1.FieldByName('ksch').AsString);
          nl_1 := Trim(Qry_print1.FieldByName('brnl').AsString);
          bz_1 := '';
          cysj_1 := Trim(Qry_print1.FieldByName('cysj').AsString);
          yb_1 := Trim(Qry_print1.FieldByName('yb').AsString);
          dyjmc_1 := Printer.Printers[v_PrinterIndex_new];
          proc_getjysqd(mysz[ii]);
          tmdy(AnsiString(bm_1), AnsiString(xb_1), AnsiString(kscw_1),
            AnsiString(xm_1),
            AnsiString(nl_1), AnsiString(bz_1), AnsiString(cysj_1),
            AnsiString(yb_1), AnsiString(xmmc_1),
            AnsiString(xmmc_2), AnsiString(xmmc_3), AnsiString(yzbz_1),
            dyjmc_1);
          //proc_getjysqd(mysz[ii]);
        end;
      end
      else
        RaiseLastWin32Error;
    finally
      FreeLibrary(dll_1);
    end;

  end;

  //RevertPrinter;
end;

procedure Tfrm_jydtmdy.proc_printtmh1();
var
  tmdy: function(bm, xb, kscw, xm, nl, bz, cysj, yb, xmmc1, xmmc2, xmmc3, yzbz,
    dyjmc_1: AnsiString): boolean; stdcall;
  ma: string;
  ii, Printcs: integer;
  mysz: array of string;
  Getxmmc, lb, Getybmc: string;
  _xmmcStr: TStrings;
  OneHandle: THandle; //����һ���������
  dll_1: Cardinal;
  yzbz_1, xmmc_1, xmmc_2, xmmc_3, xb_1, nl_1, xm_1, kscw_1, bm_1, bz_1, cysj_1,
    yb_1, dyjmc_1: string;
begin
  if pub_yydm='0271' then
  begin
    ChangePrinter(8);
  end else
  begin
    ChangePrinter(3);
  end;

  fzbh_hs := func_getfzbh_array();
  Printcs := fzbh_hs.hs;
  Setlength(mysz, Qry_look.RecordCount);
  for ii := 0 to Printcs do
  begin
    mysz[ii] := fzbh_hs.fzbh_array[ii];
  end;
  for ii := 0 to Printcs do
  begin
    Qry_print1.close;
    Qry_print1.Parameters.ParamByName('fzbh').Value := mysz[ii];
    Qry_print1.Parameters.ParamByName('lb').Value := '1';
    Qry_print1.Parameters.ParamByName('srrq').Value := dtp_zxsj.DateTime;
    Qry_print1.Parameters.ParamByName('jyxmmc').Value := '';
    Qry_print1.Open;
    Getxmmc := trim(Qry_print1.FieldByname('xmmc').AsString);
    getybmc := trim(Qry_print1.FieldByname('yb').AsString);
    if Pos('��', trim(Qry_print1.FieldByname('yzbz').AsString)) > 0 then
    begin
      QRLabel3.Caption := '��';
    end
    else
    begin
      QRLabel3.Caption := '';
    end;

    //-----------calmhawk-----------------------------------
    _xmmcStr := TStringList.Create;
    _xmmcStr.Delimiter := ' ';
    _xmmcStr.DelimitedText := Getxmmc;
    xmmc_1s.Caption := '';
    xmmc_2s.Caption := '';
    xmmc_3s.Caption := '';
    if _xmmcStr.Count > 0 then
      xmmc_1s.Caption := _xmmcStr.Strings[0];
    if _xmmcStr.Count > 1 then
      xmmc_2s.Caption := _xmmcStr.Strings[1];
    if _xmmcStr.Count > 2 then
      xmmc_3s.Caption := _xmmcStr.Strings[2];

    if pub_yydm = '0246' then
    begin
      QuickRep1.Page.Width := 52;
      QuickRep1.Page.Length := 31;

      QRDBText24.SendToBack;
      QRDBText24.Width := 100;
    end;

    brcd1.BarCode := mysz[ii];
    brcd1.Draw(QRImage1.Canvas, 15, 0, 55, 0);
    QRLabel8.Enabled := False;
    QRDBText13.Enabled := False;
    QRImage1.Enabled := true;
    QRLabel3.Enabled := true;
    if v_IsPrinterJoin = true then
    begin
      if QuickRep1.PrinterSettings.PrinterIndex <> v_PrinterIndex_new then
      begin
        QuickRep1.PrinterSettings.PrinterIndex := v_PrinterIndex_new;
      end;
    end;
    DM_data.qry_pub.Close;
    DM_data.qry_pub.SQL.text :=
      'select b.sgys from DZBL_CYJL_zy_LS a,sys_yzxm b where jyfzbh=' + '''' +
      mysz[ii] + '''' + ' and a.jyxmdm=b.xmdm';
    DM_data.qry_pub.Open;
    if Trim(DM_data.qry_pub.FieldByName('sgys').AsString) = '' then
      QRLabel5.Caption := ''
    else
      QRLabel5.Caption := '�Թ���ɫ:' +
        Trim(DM_data.qry_pub.FieldByName('sgys').AsString);
    QuickRep1.print;
    proc_getjysqd(mysz[ii]);
  end;

end;

procedure Tfrm_jydtmdy.proc_getjysqd(fzbh: string);
var
  sczt: string;
begin
  sp_getjysqd.Close;
  sp_getjysqd.Parameters.Refresh;
  sp_getjysqd.Parameters.ParamByName('@fzbh').Value := fzbh;
  sp_getjysqd.Parameters.ParamByName('@sczt').Value := '';
  sp_getjysqd.ExecProc;
  sczt := sp_getjysqd.Parameters.ParamByName('@sczt').Value;
  if sczt <> '0' then
  begin
    Application.MessageBox(pchar('�����������Ϊ' + fzbh +
      '�ļ��������ӡʧ�ܣ�'),
      '��ʾ', MB_OK + MB_ICONINFORMATION);
    Abort;
  end;
end;

procedure Tfrm_jydtmdy.proc_checkyb;
var
  kdys, v_zyh, yzid, kdrq, v_kdks: string;
begin
  qry_brxx.First;
  while not qry_brxx.Eof do
  begin
    if qry_brxx.FieldByName('sfjy').AsBoolean then
      if (Trim(qry_brxx.FieldByName('yb').AsString) = '') or
        (Trim(qry_brxx.FieldByName('ybmc').AsString) = '') then
      begin
        Application.MessageBox(pchar('������Ŀδ��������,��������...'),
          '��Ϣ��ʾ', 48);
        cxGrid2.SetFocus;
        Abort;
      end;
    qry_brxx.Next;
  end;
  //�շ�
  qry_brxx.First;
  while not qry_brxx.Eof do
  begin
    if ((pub_yydm = '0013')) and (qry_brxx.FieldByName('sfjy').AsBoolean) then
      //��ʱֻ�����̨ ����
    begin
      qry_yzxx.close;
      qry_yzxx.SQL.Text := 'select * from zybl_zyyz where id=' +
        qry_brxx.FieldByName('fyid').asstring;
      qry_yzxx.Open;
      v_kdks := qry_yzxx.FieldByName('kdks').AsString;
      if qry_yzxx.IsEmpty then
        Exit;
      kdys := qry_yzxx.FieldByName('kdys').AsString;
      v_zyh := qry_yzxx.FieldByName('zyh').AsString;
      yzid := qry_yzxx.FieldByName('id').AsString;
      kdrq := FormatDateTime('yyyyMMdd',
        qry_yzxx.fieldbyname('kdrq').AsDateTime);
      DM_data.qry_pub.Close;
      DM_data.qry_pub.sql.text :=
        'select a.id yzid from zybl_zyyz a,zybl_zyyz_zxjl b where a.id=' +
        qry_brxx.FieldByName('fyid').asstring + ' and a.ph=b.ph  and b.zxsj=' +
        '''' + kdrq + '''';
      DM_data.qry_pub.Open;
      if DM_data.qry_pub.IsEmpty then
      begin
        try
          //׼������
          sp_zxjfzb.Close;
          sp_zxjfzb.Parameters.Refresh;
          sp_zxjfzb.Parameters.ParamByName('@zyh').Value := v_zyh;
          sp_zxjfzb.Parameters.ParamByName('@czydm').Value := pub_czydm;
          sp_zxjfzb.Parameters.ParamByName('@zxsj').Value := kdrq;
          if username = 'sys_tyjf' then
            sp_zxjfzb.Parameters.ParamByName('@ksdm').Value := v_kdks
          else
            sp_zxjfzb.Parameters.ParamByName('@ksdm').Value := pub_ksdm;
          sp_zxjfzb.Parameters.ParamByName('@yzid').Value := Strtoint(yzid);
          sp_zxjfzb.ExecProc;
          //�Ƿ�
          sp_zxjfxr.Close;
          sp_zxjfxr.Parameters.Refresh;
          if username = 'sys_tyjf' then
          begin
            DM_data.qry_pub.close;
            DM_data.qry_pub.sql.Text :=
              'select bqdm from sys_bqzyfl where bqzydm=' + '''' + v_kdks +
              '''';
            DM_data.qry_pub.Open;
            if not DM_data.qry_pub.isempty then
              sp_zxjfxr.Parameters.ParamByName('@bqdm').Value :=
                DM_data.qry_pub.FieldByName('bqdm').AsString
            else
              sp_zxjfxr.Parameters.ParamByName('@bqdm').Value := pub_bqdm;
          end
          else
            sp_zxjfxr.Parameters.ParamByName('@bqdm').Value := pub_bqdm;
          sp_zxjfxr.Parameters.ParamByName('@zyh').Value := v_zyh;
          sp_zxjfxr.Parameters.ParamByName('@czydm').Value := pub_czydm;
          sp_zxjfxr.Parameters.ParamByName('@yzid').Value := Strtoint(yzid);
          sp_zxjfxr.Parameters.ParamByName('@kdys').Value := kdys;
          sp_zxjfxr.Parameters.ParamByName('@zxsj').Value := kdrq;
          sp_zxjfxr.Parameters.ParamByName('@sczt').Value := '';
          sp_zxjfxr.Parameters.ParamByName('@plxh').Value := '1';
          sp_zxjfxr.ExecProc;
        except
          application.MessageBox('�Ƿ�ʧ��!', '��ʾ��Ϣ', 0 + 16);
        end;
      end;

    end;
    qry_brxx.next;
  end;
end;

function Tfrm_jydtmdy.func_getfzbh_array: Tfzbh_hs;
var
  ii, Printcs: integer;
begin
  Qry_look.Close;
  Qry_look.SQL.Clear;
  Qry_look.SQL.Add('Select distinct jyfzbh from DZBL_CYJL_zy_ls Where sfjy=1 And zyh=' + #39 + zyh + #39);
  Qry_look.open;
  Setlength(Result.fzbh_array, Qry_look.RecordCount);
  Printcs := Qry_look.RecordCount - 1;
  for ii := 0 to Printcs do
  begin
    Result.fzbh_array[ii] := trim(Qry_look.fieldByName('jyfzbh').AsString);
    Qry_look.Next;
  end;
  Result.hs := Printcs;
end;


function Tfrm_jydtmdy.HowManycharacter(const s: String): Integer;
var
   SW:WideString;
   C:String;
   i, WCount:Integer;
begin
   SW:=s;
   WCount:=0;
   For i:=1 to Length(SW) do
   begin
      c:=SW[i];
      if (SW[i] in ['a'..'z','A'..'Z','0'..'9']) and (Length(c)<2) then
         Inc(WCount);
   end;
   Result:=WCount;
end;

procedure Tfrm_jydtmdy.b_cxClick(Sender: TObject);
begin
  ReadInfoByCardNo;
end;

procedure Tfrm_jydtmdy.e_tmhKeyPress(Sender: TObject; var Key: Char);
begin
  if not (key = Char(VK_RETURN)) then
    exit;
  ReadInfo;
end;

procedure Tfrm_jydtmdy.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  keybd_event($10, 0, KEYEVENTF_KEYUP, 0);
  keybd_event($11, 0, KEYEVENTF_KEYUP, 0);
end;

function getxtlj: string;
var
  SysDir: array[0..255] of Char;
begin
  GetWindowsDirectory(SysDir, 255);
  Result := StrPas(sysdir);
end;

procedure Tfrm_jydtmdy.FormShow(Sender: TObject);
begin
    if pub_yydm='0257' then
    begin
      QRDBText11.left:=50;
      QRDBText11.Width:=QRDBText11.Width+25;
      QRDBText2.width:=60;
      QRDBText2.Left:=QRDBText2.Left+4;
      QRDBText41.enabled:=False;

    end;


  if (pub_yydm <> '0015') and (pub_yydm <> '0246') then
  begin
    frm_jydtmdy.WindowState := wsMaximized;
  end;
  QuickRep1.Visible := false;
  QuickRep4.Visible := false;
  QuickRep5.Visible := false;
  QuickRep6.Visible := False;
  QuickRep_tsyy.Visible := False;

  DM_data.qry_pub.close;
  DM_data.qry_pub.sql.Text := 'select * from sys_xt_kg';
  DM_data.qry_pub.Open;
  sfqyydhsz := DM_data.qry_pub.FieldByName('sfqyydhsz').AsBoolean;
  e_tmh.SetFocus;
  CheckBox1.Checked := False;
  QuickRep3.Visible := False;
  QuickRep_dyzlyy.Visible := False;
  gyzhyy.Visible := False;
  // QuickRep6.Visible := False;
  dtp_zxsj.DateTime := frm_func.curr_date;
  //  if pub_yydm='0015' then
  //  begin
  //    DM_data.qry_pub.close;
  //    DM_data.qry_pub.SQL.text:='select * from sys_tmcdqx where czydm='+''''+
  //    pub_czydm+'''';
  //    DM_data.qry_pub.Open;
  //    if DM_data.qry_pub.IsEmpty then
  //    begin
  //      bt_can.Visible:=false;
  //    end
  //    else
  //    begin
  //      bt_can.Visible:=true;
  //    end;
  //  end;
end;

procedure proc_down(lj: string);
var
  bbh, bbh1: string;
  b1, b2, b3, b4: integer;
begin
  dm_data.qry_pub.close;
  DM_data.qry_pub.SQL.Text :=
    'select filename,fileversion from sys_update where filename = ' + #39 +
    ExtractFileName(lj) + #39;
  DM_data.qry_pub.Open;

  if dm_data.qry_pub.RecordCount > 0 then
  begin
    GetFileVersion(lj, b1, b2, b3, b4);
    bbh := IntToStr(b1) + IntToStr(b2) + IntToStr(b3) + IntToStr(b4);
    bbh1 := dm_data.qry_pub.FieldByName('fileversion').AsString;
    if bbh1 > bbh then
    begin
      dm_data.qry_pub.close;
      DM_data.qry_pub.SQL.Text := 'select * from sys_update where filename = ' +
        #39 + ExtractFileName(lj) + #39;
      DM_data.qry_pub.Open;
      TBlobfield(dm_data.qry_pub.FieldByName('hisfile')).SaveToFile(lj);
    end;
  end;
end;

{-------------------------------------------------------------------------------
  ������:    Tfrm_jydtmdy.ChangePrinter
  ����:      yangshuai
  ����:      2017.09.19
  ����:      _index: Integer
  ����ֵ:    ��
-------------------------------------------------------------------------------}
procedure Tfrm_jydtmdy.ChangePrinter(_index: Integer);
begin
  //�ж��Ƿ�ʹ�ô�ӡ������ʽ��ȡ�ô�ӡ�����
  try
    v_PrinterIndex_old := Printer.PrinterIndex;
    v_PrinterIndex_new := func_GetPrinterIndex(_index, v_IsPrinterJoin);
    //        if v_IsPrinterJoin then
    //        Proc_ChangePrinter( v_PrinterIndex_new, True );
  except
  end;
end;

procedure Tfrm_jydtmdy.ChangePrinter_syy;
begin
  //�ж��Ƿ�ʹ�ô�ӡ������ʽ��ȡ�ô�ӡ�����
  try
    v_PrinterIndex_old := Printer.PrinterIndex;
    v_PrinterIndex_new := func_GetPrinterIndex(7, v_IsPrinterJoin);
    //        if v_IsPrinterJoin then
    //        Proc_ChangePrinter( v_PrinterIndex_new, True );
  except
  end;
end;

procedure Tfrm_jydtmdy.CheckBox2Click(Sender: TObject);
begin
  if CheckBox2.Checked then
  begin
    qry_brxx.DisableControls;
    qry_brxx.First;
    while not qry_brxx.eof do
    begin
      qry_brxx.Edit;
      qry_brxx.FieldByName('sfjy').AsBoolean := true;
      qry_brxx.Post;
      qry_brxx.Next;
    end;
    qry_brxx.First;
    qry_brxx.EnableControls;
  end
  else
  begin
    qry_brxx.DisableControls;
    qry_brxx.First;
    while not qry_brxx.eof do
    begin
      qry_brxx.Edit;
      qry_brxx.FieldByName('sfjy').AsBoolean := false;
      qry_brxx.Post;
      qry_brxx.Next;
    end;
    qry_brxx.First;
    qry_brxx.EnableControls;
  end;
end;

procedure Tfrm_jydtmdy.cxGridDBTableView1CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  //  if ACellViewInfo.Item.Caption='�Ƿ����' then
  //  begin
  //      if qry_brxx.FieldByName( 'sfjy' ).asboolean then
  //        qry_brxx.FieldByName( 'sfjy' ).AsBoolean := false
  //      else
  //        qry_brxx.FieldByName( 'sfjy' ).AsBoolean := True;
  //      qry_brxx.post;
  //  end;
end;

procedure Tfrm_jydtmdy.ReadInfo(BHint:Boolean=True);
begin
  if Length(Trim(e_tmh.text)) <> 4 then
    ReadInfoByCardNo(Bhint)
  else
    ReadInfoByBedNo(BHint);
end;

procedure Tfrm_jydtmdy.ReadInfoByCardNo(BHint:Boolean=True);
var
  brbq: string;
begin
  if trim(e_tmh.text) = '' then
  begin
    Application.MessageBox('������Ҫ��ѯ���˵��������ţ�', '��Ϣ��ʾ', 48);
    e_tmh.SetFocus;
    Exit;
  end;
  tmh := trim(e_tmh.text);
  DM_data.qry_pub.Close;
  DM_data.qry_pub.SQL.text := 'select * from zysf_zydj where cybz=0 and tmh=' +
    '''' + tmh + '''';
  DM_data.qry_pub.Open;
  if DM_data.qry_pub.RecordCount < 1 then
  begin
    ShowMessage('�޴˿��ţ�������ȷ�Ϻ�����');
    Exit;
  end;
  zyh := Trim(DM_data.qry_pub.FieldByName('zyh').AsString);
  brbq := trim(DM_data.qry_pub.FieldByName('bqdm').asstring);
  sp_brxx.Close;
  sp_brxx.Parameters.Refresh;
  sp_brxx.Parameters.ParamByName('@zyh').Value := zyh;
  sp_brxx.Parameters.ParamByName('@zxsj').Value := FormatDateTime('yyyyMMdd',
    dtp_zxsj.DateTime);
  sp_brxx.Parameters.ParamByName('@jyfzbh').Value := '';
  if username = 'sys_tyjf' then
    sp_brxx.Parameters.ParamByName('@bqdm').Value := brbq
  else
    sp_brxx.Parameters.ParamByName('@bqdm').Value := pub_bqdm;
  sp_brxx.Parameters.ParamByName('@czydm').Value := pub_czydm;
  sp_brxx.ExecProc;
  Qry_brxx.Close;

  //��Ԫ�ѻ�ҽԺҪ�����  wangwei  20170411
  DM_data.qry_pub.Close;
  DM_data.qry_pub.SQL.text := 'select jytmdywjf from sys_xt_kg ';
  DM_data.qry_pub.Open;

  //���������0���ͱ�ʾ����Ҫ�ƷѲ��ܴ�ӡ����ôzysf_zyfydx�������ݣ�
  //�����1���ͱ�ʾ���ӡ��ʱ�򣬿���δ�Ʒѣ���ôzysf_zyfydx����û�����ݣ��Ǿʹ�zybl_zyyzȡ��Ӧ�ֶ�
  if not dM_data.qry_pub.FieldByName('jytmdywjf').AsBoolean then   //Ϊ0ʱ
  begin
    Qry_brxx.SQL.Text :=
    'select a.*,b.sfrq kdrq,c.sgys from DZBL_CYJL_zy_ls a,zysf_zyfydx b,sys_yzxm c where a.zyh=b.zyh and ' +
    ' a.fyid=b.id and a.zyh=:zyh and a.jyxmdm=c.xmdm order by a.yb,a.dldm,c.sgys asc';
  end else
  begin
  Qry_brxx.SQL.Text :=
    'select a.*,b.kdrq,c.sgys from DZBL_CYJL_zy_ls a,zybl_zyyz b,sys_yzxm c where a.zyh=b.zyh and ' +
    ' a.fyid=b.id and a.zyh=:zyh and a.jyxmdm=c.xmdm order by a.yb,a.dldm,c.sgys asc';
  end;
  Qry_brxx.Parameters.ParamByName('zyh').Value := zyh;
  Qry_brxx.Open;
  if Qry_brxx.RecordCount > 0 then
  begin
    Qry_brxx.First;
    while not Qry_brxx.Eof do
    begin
      Qry_brxx.Edit;
      Qry_brxx.FieldByName('sfjy').AsBoolean := True;
      Qry_brxx.Post;
      Qry_brxx.Next;
    end;
    bt_Print.Enabled := True;
    bt_Print.SetFocus;
  end
  else
  begin
    if Bhint then
    Application.MessageBox('�ò������޿ɼ������Ŀ', '��ʾ', 16);
    bt_Print.Enabled := False;
    e_tmh.SetFocus;
    e_tmh.SelectAll;
  end;
end;

procedure Tfrm_jydtmdy.ReadInfoByBedNo(BHint:Boolean=True);
var
  bch: string;
begin
  if trim(e_tmh.text) = '' then
  begin
    Application.MessageBox('������Ҫ��ѯ���˵Ĳ����ţ�', '��Ϣ��ʾ', 48);
    e_tmh.SetFocus;
    Exit;
  end;
  bch := trim(e_tmh.text);
  if pub_yydm <> '0003' then
  begin
    DM_data.qry_pub.Close;
    DM_data.qry_pub.SQL.text :=
      'select * from zysf_zydj where cybz<>1 and zyh in (select zyh from sys_kscwsz where  bqdm=' + ''''
      + pub_bqdm + '''' + ' and yybch=' + '''' + bch + ''')';   //bcbh
    DM_data.qry_pub.Open;
  end
  else
  begin
    DM_data.qry_pub.Close;
    DM_data.qry_pub.SQL.text :=
      'select * from zysf_zydj where cybz<>1 and zyh in (select zyh from sys_kscwsz where  bqdm=' + ''''
      + pub_bqdm + '''' + ' and yybch=' + '''' + bch + ''')';
    DM_data.qry_pub.Open;
  end;
  if DM_data.qry_pub.RecordCount < 1 then
  begin
    ShowMessage('�޴˴��ţ�������ȷ�Ϻ�����');
    Exit;
  end;
  zyh := Trim(DM_data.qry_pub.FieldByName('zyh').AsString);
  tmh := Trim(DM_data.qry_pub.FieldByName('tmh').AsString);
  sp_brxx.Close;
  sp_brxx.Parameters.Refresh;
  sp_brxx.Parameters.ParamByName('@zyh').Value := zyh;
  sp_brxx.Parameters.ParamByName('@zxsj').Value := FormatDateTime('yyyyMMdd',
    dtp_zxsj.DateTime);
  sp_brxx.Parameters.ParamByName('@jyfzbh').Value := '';
  sp_brxx.Parameters.ParamByName('@bqdm').Value := pub_bqdm;
  sp_brxx.Parameters.ParamByName('@czydm').Value := pub_czydm;
  sp_brxx.ExecProc;
  //-----------calmhawk-2011-06-16---����������ҽ��---
  qry_update_xseyz.Close;
  qry_update_xseyz.Parameters.ParamByName('zyh').Value := zyh;
  qry_update_xseyz.ExecSQL;
  Qry_brxx.Close;
  if (pub_yydm='0266') then //��Ԫ�ѻ�����ҽԺ�����޸�
  begin
     Qry_brxx.SQL.Text :=
    'select a.*,b.kdrq,c.sgys from DZBL_CYJL_zy_ls a,'+
    ' (select b.kdrq,a.id,a.zyh from zysf_zyfydx as a left join zybl_zyyz as b on a.tmh=b.tmh and a.zyh=b.zyh and a.ph=b.ph ) as  b,sys_yzxm c,zysf_zydj d where a.zyh=b.zyh and ' +
    ' a.fyid=b.id and a.zyh=d.zyh and a.zyh=:zyh and a.jyxmdm=c.xmdm order by a.yb,a.dldm,c.sgys asc';
    Qry_brxx.Parameters.ParamByName('zyh').Value := zyh;
    Qry_brxx.Open;
  end else if  (pub_yydm='0272')  then  //�������ױ���Ժ
  begin
     Qry_brxx.SQL.Text :=
    'select a.*,b.kdrq,c.sgys from DZBL_CYJL_zy_ls a,zybl_zyyz b,sys_yzxm c,zysf_zydj d where a.zyh=b.zyh and ' +
    ' a.fyid=b.id and a.zyh=d.zyh and a.zyh=:zyh and a.jyxmdm=c.xmdm order by a.yb,a.dldm,c.sgys asc';
    qry_brxx.Parameters.ParamByName('zyh').Value:=zyh;
    Qry_brxx.Open;
  end else
  begin
   Qry_brxx.SQL.Text :=
    'select a.*,b.kdrq,c.sgys from DZBL_CYJL_zy_ls a,zybl_zyyz b,sys_yzxm c,zysf_zydj d where a.zyh=b.zyh and ' +
    ' a.fyid=b.id and a.zyh=d.zyh and d.bqdm=:bqdm and a.jyxmdm=c.xmdm order by a.yb,a.dldm,c.sgys asc';
    qry_brxx.Parameters.ParamByName('bqdm').Value:=pub_bqdm;
    Qry_brxx.Open;
  end;
  if Qry_brxx.RecordCount > 0 then
  begin
    Qry_brxx.First;
    while not Qry_brxx.Eof do
    begin
      Qry_brxx.Edit;
      Qry_brxx.FieldByName('sfjy').AsBoolean := True;
      Qry_brxx.Post;
      Qry_brxx.Next;
    end;
    bt_Print.Enabled := True;
    bt_Print.SetFocus;
  end
  else
  begin
    if BHint then
    Application.MessageBox('�ò������޿ɼ������Ŀ', '��ʾ', 16);
    bt_Print.Enabled := False;
    e_tmh.SetFocus;
    e_tmh.SelectAll;
  end;
end;

procedure Tfrm_jydtmdy.RevertPrinter;
begin
  //��ԭԭ��Ĭ�ϴ�ӡ��
  try
    if v_IsPrinterJoin then
      Proc_ChangePrinter(v_PrinterIndex_old, True);
  except
  end;
end;



end.
