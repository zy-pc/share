unit p_mzgh;

interface

uses
  Windows, Messages, SysUtils, StrUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, ComCtrls, Buttons, ExtCtrls, Db, ADODB, Grids,
  DBGrids, DBCGrids, ActnList, QuickRpt, Qrctrls, cxControls, cxContainer,
  cxEdit, cxCheckBox, OleCtrls, IDROCXLib_TLB, SXAgeBox, SXXzqhBox, DateUtils,
  Menus, cxGroupBox, cxLookAndFeelPainters, cxButtons, jkk_func, p_jkk_re;
type
  Tdsbdll_yy = function(ComPort: Integer; QutString: string): Integer; stdcall; //������������������
type
  Tfrm_mzgh = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    GroupBox2: TGroupBox;
    Label4: TLabel;
    Label7: TLabel;
    Label13: TLabel;
    ks: TEdit;
    ys: TEdit;
    ssf: TEdit;
    kh: TEdit;
    xm: TEdit;
    sp_cx_kyh: TADOStoredProc;
    sp_cx_rsfy: TADOStoredProc;
    sp_cx_yspb: TADOStoredProc;
    sp_cx_ghxm: TADOStoredProc;
    ds_ghxm: TDataSource;
    ds_ghlb: TDataSource;
    ds_yspb: TDataSource;
    ds_ghf: TDataSource;
    sp_cx_ysgcrs: TADOStoredProc;
    ad_fpbhcl: TADODataSet;
    sp_cx_dryzks: TADOStoredProc;
    ds_dryzks: TDataSource;
    Panel2: TPanel;
    sp_cx_ys: TADOStoredProc;
    ds_ys: TDataSource;
    sp_up_ghfy: TADOStoredProc;
    zb: TEdit;
    Label6: TLabel;
    ActionList1: TActionList;
    Action1: TAction;
    Action2: TAction;
    xb: TComboBox;
    Action3: TAction;
    SBar1: TStatusBar;
    Panel3: TPanel;
    cbbl: TCheckBox;
    CheckBox1: TCheckBox;
    BitBtn3: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    dbctl: TDBCtrlGrid;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText4: TDBText;
    ksgrid: TDBGrid;
    ysgrid: TDBGrid;
    ysGrid2: TDBGrid;
    ad_xtkg: TADODataSet;
    sp_get_kh: TADOStoredProc;
    sp_cx_ksgcrs: TADOStoredProc;
    qry_ksdm: TADOQuery;
    qry_srf: TADOQuery;
    bbtn_yybj: TBitBtn;
    pnl_ks: TPanel;
    qry_fydm: TADODataSet;
    Label_kye: TLabel;
    lab_jzbz: TLabel;
    lab_bl: TLabel;
    sp_up_blfycl: TADOStoredProc;
    BitBtn6: TBitBtn;
    lbl1: TLabel;
    ghf: TEdit;
    CheckBox2: TCheckBox;
    btn1: TBitBtn;
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
    ds_kgl_fk: TDataSource;
    qry_kgl_check: TADOQuery;
    ds_kgl_check: TDataSource;
    btn2: TBitBtn;
    btn3: TButton;
    bc: TLabel;
    b_xxcx: TButton;
    Label9: TLabel;
    nl: TSXAgeBox;
    dtp1: TDateTimePicker;
    combox_jmlb: TComboBox;
    Label11: TLabel;
    brdz: TSXXzqhBox;
    jbqk_cx: TADODataSet;
    Label12: TLabel;
    MyIdrOcx1: TMyIdrOcx;
    lab_yyh: TLabel;
    sp_cx_yyghjbxx: TADOStoredProc;
    ds_cx_yyghjbxx: TDataSource;
    DBText3: TDBText;
    pm_sxxs: TPopupMenu;
    N1: TMenuItem;
    gb_zcf: TcxGroupBox;
    Label8: TLabel;
    zcf: TEdit;
    Label14: TLabel;
    zcf_tc: TEdit;
    b_sbhk: TBitBtn;
    lb_khy: TLabel;
    combox_khlb: TComboBox;
    Label15: TLabel;
    Label10: TLabel;
    Label16: TLabel;
    lxdh: TEdit;
    mzsf_updatesjh: TADOQuery;
    sp_in_tzzcf: TADOStoredProc;
    StringField15: TStringField;
    StringField16: TStringField;
    StringField17: TStringField;
    StringField18: TStringField;
    StringField19: TStringField;
    StringField20: TStringField;
    StringField21: TStringField;
    StringField22: TStringField;
    StringField23: TStringField;
    BCDField3: TBCDField;
    StringField24: TStringField;
    StringField25: TStringField;
    StringField26: TStringField;
    BCDField4: TBCDField;
    StringField27: TStringField;
    StringField28: TStringField;
    ds_in_tzzcf: TDataSource;
    procedure bbtn_yybjClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure khExit(Sender: TObject);
    procedure xmExit(Sender: TObject);
    procedure ksExit(Sender: TObject);
    procedure ksEnter(Sender: TObject);
    procedure ksgridExit(Sender: TObject);
    procedure ysExit(Sender: TObject);
    procedure ysgridExit(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure SBar1DrawPanel(StatusBar: TStatusBar; Panel: TStatusPanel;
      const Rect: TRect);
    procedure FormShow(Sender: TObject);
    procedure khEnter(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure xbExit(Sender: TObject);
    procedure cbblClick(Sender: TObject);
    procedure ksKeyPress(Sender: TObject; var Key: Char);
    procedure ysKeyPress(Sender: TObject; var Key: Char);
    procedure ysGrid2Exit(Sender: TObject);
    procedure zbExit(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure Action2Execute(Sender: TObject);
    procedure xmEnter(Sender: TObject);
    procedure xbEnter(Sender: TObject);
    procedure ysEnter(Sender: TObject);
    procedure zbEnter(Sender: TObject);
    procedure nlEnter(Sender: TObject);
    procedure nlExit(Sender: TObject);
    procedure BitBtn3Enter(Sender: TObject);
    procedure ksgridDblClick(Sender: TObject);
    procedure dbctlClick(Sender: TObject);
    procedure ysgridDblClick(Sender: TObject);
    procedure ysGrid2DblClick(Sender: TObject);
    procedure khKeyPress(Sender: TObject; var Key: Char);
    procedure zcfKeyPress(Sender: TObject; var Key: Char);
    procedure ssfKeyPress(Sender: TObject; var Key: Char);
    procedure zbKeyPress(Sender: TObject; var Key: Char);
    procedure ysGrid2KeyPress(Sender: TObject; var Key: Char);
    procedure ksgridKeyPress(Sender: TObject; var Key: Char);
    procedure ysgridKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn6Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure xmKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure xbKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure nlKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure zcfEnter(Sender: TObject);
    procedure zcfExit(Sender: TObject);
    procedure b_xxcxClick(Sender: TObject);
    procedure combox_jmlbEnter(Sender: TObject);
    procedure combox_jmlbKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure combox_jmlbExit(Sender: TObject);
    procedure dtp1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure dtp1Enter(Sender: TObject);
    procedure dtp1Exit(Sender: TObject);
    procedure brdzEnter(Sender: TObject);
    procedure brdzKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure brdzExit(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure b_sbhkClick(Sender: TObject);
    procedure combox_khlbChange(Sender: TObject);
    procedure combox_khlbKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure combox_khlbExit(Sender: TObject);
    procedure khDblClick(Sender: TObject);
  private
    prv_value: string;
    prv_is_kyh, v_esc: Boolean; //���û��Һ�
    Prv_mzfybl: string; //�Żݱ����ֶ�����
    ghftext: string;
    khzl, czwz: string; //����������ҽԺ������ʾ����������,����λ��
    jy_gcrs: Word;
    prv_fylb: string;
    jkbz: Boolean; //������־
    jzbz: Boolean; //�����־
    v_sjlb: string; //ʹ���վ����
    blf: real; //������
    v_sfzhm: string; //���֤����
    sfzpdbz: boolean;
    Prv_ghsymzfp: Boolean; //����Һ�ʹ�����﷢Ʊ
    Prv_ghsjlb, Prv_mzsjlb: string; //����Һ��վ���������շ��վ����
    //--------������ʹ���ֶ�(���õ���,�����,���ô���,�շѱ�׼)
    kgl_lydh, kgl_klb, kgl_fydm, kgl_fydm_cq, kgl_fydm_ls, kgl_fymc,
      kgl_fymc_cq, kgl_fymc_ls, kgl_kh, kgl_xm, kgl_xb, kgl_nl: string;
    kgl_sfbz, kgl_sfbz_cq, kgl_sfbz_ls: real;
    yygh_id: Integer;
    //--------
    //--------ԤԼ�Һ�ʹ���ֶ�
    yygh_yyh, yygh_brxm, yygh_brxb, yygh_ghks, yygh_ghks_mc, yygh_ghys, yygh_ghys_mc,
      yygh_brzy, yygh_brnl, yygh_brdz, yygh_jzkh: string;
    yygh_yyrq, yygh_djrq: TDateTime;
    v_yybz, yygh_sfbz: Boolean;
    //--------
    v_sfyxxgzcbdfy: Boolean; //�Ƿ������޸�ְ�ư󶨷���
    v_mzzcftcje_sb, v_mzzcftcje_nh: Real; //��������ͳ���� (�籣,ũ��)
    v_mzghxstcbz: Boolean; //����ͳ������ͳ���־
    jy_ghtzfmc: string; //���͵�������
    jy_ghtzf: real;
    v_qtzjhm: string; //����֤������
    erci: Boolean;
    ercigh: Boolean; //���ιҺ� 20140625
    mzgh_sfxe: Real; //�����޶�20140625
    mzgh_dyzjzkmf: Boolean; //����Һŵ�һ�ž��￨��ѿ���
    procedure pdsfjz; //�ж��Ƿ���
    procedure saveKyhNl(str: string); //���濨�û�����
    procedure dqsfz; //��ȡ���֤
    procedure proc_maxg;
    procedure ysprocess(czfs: integer); //����ҽ��ѡ��
    procedure ghxmlr;
    function brcount(sxwbz: string; rs: integer): boolean;
    function sfxm_yz: boolean;
    procedure ysprocess2; //ѡ���ֵ��ҽ��

    procedure proc_get_sjbh;
    procedure proc_save_mzgh;
    procedure proc_save_kgl; //��������Ϣ�洢
    procedure proc_save_tzzcg(_tzzcf, _tcje: Real); //�������Ѵ洢
    procedure proc_mzgh_fpdy(ghrs, ghrs1: Word);
    procedure proc_mzgh_print(const ghrs, ghrs1: Integer);
    procedure proc_mzgh_ghjs(const ghrs: Integer);
    procedure proc_ys_process_ys;
    procedure proc_ys_proess_yspb;
    procedure proc_jmxs;
    procedure proc_mzgh_kgl_check;
    procedure proc_xtkg; //��ȡϵͳ����
    function func_get_yybz(jzhh: string): boolean;
    procedure proc_set_yyghjbxx;
    function proc_get_yyghxh(tmh: string; ysdm: string): string;
    { Private declarations }
  public
    sfqykgl: Boolean;
    fpywbz: Boolean;
    fpzzh, fpdqh, v_ysgcrs: integer;
    zjhm: string;
    pub_is_zhsb: boolean; //�ۺ��籣�շ�
    mz_ph: string; //����
    function proc_dqSfzxx(MyIdrOcx1: TMyIdrOcx): string;
    procedure jkkd_hd;
    { Public declarations }
  end;

var
  frm_mzgh: Tfrm_mzgh;

  frmtop: integer;
  pri_week, ysgcrs, czygcrs: integer;
  czyzfy, fybl: real;
  choicedoctor, pbbz, rskz, iskyh, mzysbz, tmhsc, SXBZ: boolean;
  sxwbz, v_sxw, fydm, fymc1, fymc2, ghdhm, ghks, ghzl, ksdm, ysdm, KSMC, ZLMC, YSXM: string;
  zydm, zymc: string;
  nh_grbm: string;

  //���������� ���ڴ�ģ�������������۹��ܣ������£�2006-4-12
  //function dsbdll(ComPort:integer;QutString:string):integer;stdcall;far;external 'cky32.dll' name 'dsbdll';
  //dsbdll_yy: Tdsbdll_yy; //������������������
  pub_mzgh_bl: Boolean = False; //���ڲ�¼״̬(True: ��;False: ��)
  //yybjUnit: TYybj; //�������۵�Ԫ
  //function func_ini_func_yy( var v_error: string ): Boolean; //����������������ʼ��
implementation

uses p_dm, p_func, printers, p_yyghdy, P_masrck, P_hymaxg, p_hyjk,
  p_mfgh, p_mzgh_print, p_lstk, p_cx_kyhjbxx, p_yyghbdjzkh, p_hisyydj, p_fylbxz,
  p_mzsb;

{$R *.DFM}

procedure Tfrm_mzgh.ysprocess2; //ѡ���ֵ��ҽ��
var
  hour, min, sec, msec: word;
begin
  DecodeTime(frm_func.curr_date(), Hour, Min, Sec, MSec);
  sp_cx_ys.Close;
  if pub_mzgh_bl then //��¼
  begin
    sp_cx_ys.Parameters.ParamByName('@ghrq').value := inttostr(pri_week - 1) + '3';
  end
  else
  begin
    if hour >= 12 then
      sp_cx_ys.Parameters.ParamByName('@ghrq').value := inttostr(pri_week - 1) + '2'
    else
      sp_cx_ys.Parameters.ParamByName('@ghrq').value := inttostr(pri_week - 1) + '1';
  end;
  sp_cx_ys.Parameters.ParamByName('@srm').value := ys.text;

  if (trim(ys.text) = '9997') or ((pub_yydm = '0048') and (trim(ys.text) = '8888'))
    or ((pub_yydm = '0028') and (trim(ys.text) = '9996'))
    then
    sp_cx_ys.Parameters.ParamByName('@zydm').value := ''
  else
    sp_cx_ys.Parameters.ParamByName('@zydm').value := zydm;
  sp_cx_ys.Open;
  if sp_cx_ys.IsEmpty then
  begin
    if zydm <> '' then
    begin
      application.MessageBox('�ÿ�������ҽ����', '����', mb_ok + mb_iconerror);
    end
    else
    begin
      application.MessageBox('ҽ����������������������룡', '����', mb_ok + mb_iconerror);
    end;
    ys.setfocus;
    ys.SelectAll;
  end
  else
    if sp_cx_ys.recordcount > 1 then
    begin
      ysgrid2.visible := true;
      ysgrid2.top := groupbox2.top + ys.top + ys.height;
      ysgrid2.left := ys.left;
      ysgrid2.setfocus;
    end
    else
    begin
      proc_ys_process_ys;
    end;
end;

procedure Tfrm_mzgh.ysprocess(czfs: integer);
var
  info: string; //��ʾ������ı���
  hour, min, sec, msec: word;
  v_yzrq1, v_yzrq2: string;
begin
  DecodeTime(frm_func.curr_date(), Hour, Min, Sec, MSec);
  if hour >= 12 then
  begin
    v_yzrq1 := inttostr(pri_week - 1) + '2';
    v_yzrq2 := v_yzrq1;
  end
  else
  begin
    v_yzrq1 := inttostr(pri_week - 1) + '1';
    v_yzrq2 := inttostr(pri_week - 1) + '2';
  end;
  if (czfs = 1) and ((pub_yydm = '0003') or (pub_yydm = '0015') or (pub_yydm = '0028')) then
    pbbz := False;
  if pbbz then
  begin
    sp_cx_yspb.Close;
    if czfs = 1 then //��רҵѡ��ҽ��
    begin
      sp_cx_yspb.Parameters.ParamByName('@yzrq').value := v_yzrq1;
      sp_cx_yspb.Parameters.ParamByName('@yzrq1').value := v_yzrq2;
      sp_cx_yspb.Parameters.ParamByName('@zydm').value := zydm;
      sp_cx_yspb.Parameters.ParamByName('@ysdm').value := '';
      sp_cx_yspb.Parameters.ParamByName('@czfs').value := 1;
    end
    else
    begin //����ѡ�Ű�ҽ��
      sp_cx_yspb.Parameters.ParamByName('@yzrq').value := sp_cx_dryzks.fieldbyname('yzrq').asstring;
      sp_cx_yspb.Parameters.ParamByName('@yzrq1').value := sp_cx_dryzks.fieldbyname('yzrq').asstring;
      sp_cx_yspb.Parameters.ParamByName('@zydm').value := zydm;
      sp_cx_yspb.Parameters.ParamByName('@ysdm').value := sp_cx_dryzks.fieldbyname('ysdm').asstring;
      sp_cx_yspb.Parameters.ParamByName('@czfs').value := 2;
    end;
    sp_cx_yspb.Open;
    if sp_cx_yspb.IsEmpty then
    begin
      if czfs = 1 then
        info := trim(ks.text) + '����û��ҽ��Ӧ��Ƿ�ѡ��ǵ���ҽ����'
      else
        info := trim(ks.text) + '��ѡ����Ƿǵ���ҽ�����Ƿ������';
      if messagedlg(info, mterror, [mbyes, mbno], 0) = mryes then
      begin
        ys.setfocus;
        ys.SelectAll;
      end
      else
      begin
        ks.setfocus;
        ks.SelectAll;
      end;
    end
    else
      if sp_cx_yspb.recordcount > 1 then
      begin
        ysgrid.visible := true;
        ysgrid.top := groupbox2.top + ys.top + ys.height + 1;
        ysgrid.left := ys.left;
        ysgrid.setfocus;
      end
      else
      begin
        proc_ys_proess_yspb;
      end;
  end
  else
  begin
    if hour >= 12 then
      SXWBZ := '2'
    else
      SXWBZ := '1';
    ghks := zydm;
    //ghks := sp_cx_ghxm.fieldbyname('zydm').asstring;
    ys.setfocus;
    ys.SelectAll;
  end;
end;

procedure Tfrm_mzgh.CheckBox1Click(Sender: TObject);
begin
  if checkbox1.checked then
  begin
    frm_mzgh.height := groupbox1.height + groupbox2.height + SBar1.height + 30 +
      panel2.height + pnl_ks.height + panel3.height - 3;
    frmtop := frm_mzgh.top;
    frm_mzgh.top := 260;
  end
  else
  begin
    frm_mzgh.height := groupbox1.height + groupbox2.height +
      SBar1.height + 30 + panel2.height + pnl_ks.height + panel3.height - 3 + dbctl.Height;
    frm_mzgh.top := frmtop;
  end;
  frm_mzgh.Refresh;
end;

procedure Tfrm_mzgh.CheckBox2Click(Sender: TObject);
begin
  if CheckBox2.Checked then
  begin
    ghftext := ghf.Text;
    ghf.Text := '0';
    ssf.text := floattostr(strtofloat(Trim(ssf.text)) - strtofloat(ghftext));
  end
  else
  begin
    ghf.Text := ghftext;
    ssf.text := floattostr(strtofloat(Trim(ssf.text)) + strtofloat(ghftext));
  end;
  proc_jmxs;
  zcf.SetFocus;
end;

procedure Tfrm_mzgh.combox_jmlbEnter(Sender: TObject);
begin
  frm_func.changecolor(sender);
end;

procedure Tfrm_mzgh.combox_jmlbExit(Sender: TObject);
begin
  frm_func.restorecolor(sender);
end;

procedure Tfrm_mzgh.combox_jmlbKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 13 then
  begin
    brdz.SetFocus;
  end;
  if Key = 27 then
    kh.SetFocus;
end;

procedure Tfrm_mzgh.combox_khlbChange(Sender: TObject);
begin
  if pub_yydm = '0046' then
  begin
    if combox_khlb.Text = '�������' then
    begin
      v_mzghxstcbz := true;
      zcf_tc.Text := formatfloat('0.00', v_mzzcftcje_sb);
    end
    else
      if combox_khlb.Text = '��ũ��' then
      begin
        v_mzghxstcbz := True;
        zcf_tc.Text := formatfloat('0.00', v_mzzcftcje_nh);
      end
      else
        if combox_khlb.Text = '����ְ��' then
        begin
          v_mzghxstcbz := True;
          zcf_tc.Text := formatfloat('0.00', v_mzzcftcje_sb);
        end
        else
        begin
          zcf_tc.Text := '0';
        end;
    if combox_khlb.Text <> '����' then
    begin
      ssf.Text := formatfloat('0.00', StrToFloat(Trim(zcf.Text)) + StrToFloat(Trim(ghf.Text)) - StrToFloat(Trim(zcf_tc.Text)) + kgl_sfbz + blf);
    end
    else
    begin
      ssf.Text := formatfloat('0.00', StrToFloat(Trim(zcf.Text)) + StrToFloat(Trim(ghf.Text)) + kgl_sfbz + blf);
    end;
  end
  else
  begin
    if combox_khlb.Text = '�籣' then
    begin
      v_mzghxstcbz := True;
      zcf_tc.Text := formatfloat('0.00', v_mzzcftcje_sb);
    end
    else
      if combox_khlb.Text = 'ũ��' then
      begin
        v_mzghxstcbz := True;
        zcf_tc.Text := formatfloat('0.00', v_mzzcftcje_nh);
      end
      else
      begin
        if ercigh then //����������ҽԺ�������ιҺ� START 20140625
        begin
            //�ж϶��ιҺ�
            //����������ҽԺ�������ιҺ��жϹ���
          DM_data.qry_pub1.Close;
          DM_data.qry_pub1.SQL.Text := 'select * from mzgh_ghmx where CONVERT(char,sfrq,112)=CONVERT(char,GETDATE(),112)'
            + 'and tfbz=0 and (ghf>0 or zcf>0) and bybh=' + #39 + trim(kh.text) + #39;
          DM_data.qry_pub1.Open;
          if DM_data.qry_pub1.RecordCount > 0 then
          begin
            v_mzghxstcbz := True;
            zcf_tc.Text := formatfloat('0.00', v_mzzcftcje_sb);
          end
          else
          begin
            v_mzghxstcbz := False;
            zcf_tc.Text := '0';
          end;
        end ////����������ҽԺ�������ιҺ� START 20140625
        else
        begin
          v_mzghxstcbz := False;
          zcf_tc.Text := '0';
        end;
      end;

    if pub_yydm = '0015' then
    begin
      if combox_khlb.Text = 'ũ��' then
      begin
        b_sbhk.Enabled := True;
        b_sbhk.Caption := 'ũ��';
      end
      else
      begin
        b_sbhk.Caption := '�籣';
      end;
      ssf.Text := formatfloat('0.00', StrToFloat(Trim(ghf.Text)) + StrToFloat(Trim(zcf.Text))
        + jy_ghtzf - StrToFloat(Trim(zcf_tc.Text)) + kgl_sfbz + blf);
    end
    else
    begin
          //����ҽԺ:�籣�ӿ�
      ssf.Text := formatfloat('0.00', StrToFloat(Trim(zcf.Text)) + StrToFloat(Trim(ghf.Text)) + kgl_sfbz + blf);
    end;
  end;
  proc_jmxs;
end;

procedure Tfrm_mzgh.combox_khlbExit(Sender: TObject);
begin
  if (combox_khlb.Items.Count > 1) and (Trim(combox_khlb.Text) = '') then
  begin
    Application.MessageBox('��ѡ�񿨺�����!', '��ʾ', MB_OK + MB_ICONSTOP);
    combox_khlb.SetFocus;
  end;
end;

procedure Tfrm_mzgh.combox_khlbKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 13 then
  begin
    combox_jmlb.SetFocus;
  end;
  if Key = 27 then
    kh.SetFocus;

  if (Key = 49) or (key = 97) then
  begin
    combox_khlb.ItemIndex := 0;
    zcf_tc.Text := formatfloat('0.00', v_mzzcftcje_sb);
  end;
  if (Key = 50) or (key = 98) then
  begin
    combox_khlb.ItemIndex := 1;
    if pub_yydm = '0046' then
      zcf_tc.Text := formatfloat('0.00', v_mzzcftcje_sb)
    else
      zcf_tc.Text := formatfloat('0.00', v_mzzcftcje_nh);
  end;

  if (Key = 51) or (key = 99) then
  begin
    combox_khlb.ItemIndex := 2;
    if pub_yydm = '0046' then
      zcf_tc.Text := formatfloat('0.00', v_mzzcftcje_nh)
    else
      zcf_tc.Text := '0';
  end;

  if (Key = 52) or (key = 100) then
  begin
    combox_khlb.ItemIndex := 3;
    if pub_yydm = '0046' then
      zcf_tc.Text := '0';
  end;

end;

procedure Tfrm_mzgh.BitBtn2Click(Sender: TObject);
begin
  bitbtn2.setfocus;
  self.close;
end;

procedure Tfrm_mzgh.proc_maxg;
var
  Getma: string;
begin
  prv_is_kyh := False; //��ʾ���û��Һ�
  Application.CreateForm(TFrm_masrck, Frm_masrck);
  try
    Frm_masrck.ShowModal;
  finally
    Getma := Trim(Frm_masrck.Edit1.Text);
    Frm_masrck.free;
  end;
  Getma := Trim(getmm(Trim(Getma)));
  with dm_data do
  begin
    qry_czy.Close;
    qry_czy.SQL.Clear;
    qry_czy.SQL.Add('select * from sys_kyh where tmh=''' + Trim(kh.Text) + '''');
    qry_czy.open;
    if Trim(qry_czy.FieldByName('ma').AsString) <> Getma then
    begin
      Application.MessageBox('����������������䣡', 'ע��', 16);
      kh.SetFocus;
      Abort;
    end
    else
    begin
      prv_is_kyh := True; //��ʾ���û��Һ�
    end;

    if Application.MessageBox('�Ƿ��޸���Ļ�Ա������?', '��Ϣ��ʾ��', MB_OKCANCEL + MB_DEFBUTTON2 + 32) = IDOK then
    begin
      Application.CreateForm(TFrm_hymaxg, Frm_hymaxg);
      try
        Frm_hymaxg.mz_brxm := xm.Text;
        Frm_hymaxg.mz_tmh := Trim(kh.Text);
        Frm_hymaxg.ShowModal;
      finally
        Frm_hymaxg.free;
      end;
    end;
  end;
end;

procedure Tfrm_mzgh.proc_mzgh_fpdy(ghrs, ghrs1: Word);
begin
  proc_mzgh_print(ghrs, ghrs1);
    //sbar1.Panels[7].text := inttostr(ghrs);
end;

procedure Tfrm_mzgh.proc_mzgh_ghjs(const ghrs: Integer);
begin
  czygcrs := czygcrs + 1;
  czyzfy := czyzfy + strtofloat(ssf.text);
  sfje := sfje + strtofloat(Trim(ssf.text));
  sjje := sjje + strtofloat(trim(ssf.text));
  SFRC := SFRC + 1;
  sbar1.Panels[3].text := inttostr(czygcrs);
  sbar1.Panels[5].text := floattostr(czyzfy);
  //  sbar1.Panels[7].text := inttostr(ghrs);
end;

procedure Tfrm_mzgh.proc_mzgh_kgl_check;
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
    SBar1.Panels[10].Text := '��ʱ��ʣ����';
  end
  else
  begin
    _klb := '05';
    kgl_fydm := kgl_fydm_cq;
    kgl_sfbz := kgl_sfbz_cq;
    kgl_fymc := kgl_fymc_cq;
    SBar1.Panels[10].Text := '���ڿ�ʣ����';
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
      SBar1.Panels[11].Text := qry_kgl_check.FieldByName('sjsl').AsString;
      qry_kgl_check.Close;
      qry_kgl_check.sql.Text := 'select * from sys_kgl_fkmx where kh=' + #39 + kgl_kh + #39 +
        ' and tkbz=1 and datediff(dd,tkrq,getdate())<3';
      qry_kgl_check.Open;
      if qry_kgl_check.RecordCount > 0 then
      begin
        Application.MessageBox('�˿������˿�,���ܼ����쿨', '��ʾ:', 0 + 16);
        kh.SetFocus;
        Abort;
      end
      else
      begin
        jkbz := True;
        if mzgh_dyzjzkmf then
        begin
        //�ж��¿����֤�������ݿ����
          DM_data.qry_pub.Close;
          DM_data.qry_pub.SQL.Text := 'select * from sys_kyh where sfzhm <> ' + #39 + '' + #39 + ' and sfzhm=' + #39 + sfzxx.CardNo + #39;
          DM_data.qry_pub.Open;
          if DM_data.qry_pub.RecordCount > 0 then
          begin
            Application.MessageBox(PChar('���ڱ�Ժ�Ѿ���������ھ��￨' + DM_data.qry_pub.FieldByName('tmh').AsString +
              ',�˴ΰ쿨����ɲ����ѣ�'), 'ϵͳ��ʾ', MB_OK + MB_ICONINFORMATION);
          end
          else
          begin
            if sfzxx.CardNo <> '' then
              kgl_sfbz := 0;
          end;
        end;
      end;
    end
    else
    begin
      Application.MessageBox('��ȷ�����Ѿ����õľ��￨����', '��ʾ:', 0 + 16);
      kh.SetFocus;
      Abort;
    end;
  end;
end;

procedure Tfrm_mzgh.proc_mzgh_print(const ghrs, ghrs1: Integer);
var
  v_IsPrinterJoin: Boolean;
  v_PrinterIndex_new: Integer;
  v_PrinterIndex_old: Integer;
  _yybz: Boolean;
  v_yyxh: string;
begin
  if pub_mzghdyfp and (not pub_mzgh_bl) then
  begin
    if yygh_brxm <> '' then
      _yybz := True
    else
      _yybz := False;
    //��ȡԤԼ�Һ����
    v_yyxh := '0';
    if _yybz then
      v_yyxh := proc_get_yyghxh(kgl_kh, ysdm);
    //�ж��Ƿ�ʹ�ô�ӡ������ʽ��ȡ�ô�ӡ�����
    v_PrinterIndex_old := Printer.PrinterIndex;
    v_PrinterIndex_new := func_GetPrinterIndex(4, v_IsPrinterJoin);
    if v_IsPrinterJoin then
      Proc_ChangePrinter(v_PrinterIndex_new, true);
    if Copy(pub_mzsjlx, 1, 4) = '0101' then //��ӡ�Ĵ��վ�
    begin
      if pub_mzsjlx = '010103' then //�����ӡ��ƱƱ�����
      begin
        if pub_yydm = '0046' then //�޽�������ҽԺ
          Proc_ghsj_sc_lj_b(ghrs, blf, strtofloat(trim(zcf_tc.text)), kgl_kh, kgl_xm, trim(ks.text), ysdm, trim(ys.text),
            inttostr(fpdqh), trim(ghf.text), floattostr(strtofloat(trim(zcf.text)) -
            strtofloat(trim(zcf_tc.text))), floattostr(strtofloat(trim(ssf.text))
            - kgl_sfbz), ksdm, fymc1, fymc2, cbbl.checked, kgl_fymc, kgl_sfbz,
            prv_is_kyh, _yybz)
        else
          if pub_yydm = '0015' then //����������ҽԺ
          begin
            Proc_ghsj_sc_jy_b(ghrs1, blf, strtofloat(trim(zcf_tc.text)), kgl_kh, kgl_xm, kgl_xb, kgl_nl, trim(ks.text), ysdm, trim(ys.text),
              inttostr(fpdqh), trim(ghf.text), trim(zcf.text), floattostr(strtofloat(trim(ssf.text)) - kgl_sfbz), ksdm, fymc1, fymc2,
              cbbl.checked, kgl_fymc, kgl_sfbz, prv_is_kyh, _yybz, Trim(combox_khlb.Text), jy_ghtzfmc, jy_ghtzf, czwz);
          end
          else //������ҽԺ,����\��Ԫ���ۿ�ҽԺ
            if (pub_yydm = '0003') or (pub_yydm = '0051') or (pub_yydm = '0196') or (pub_yydm = '0223') then
              Proc_ghsj_sc_syy_b(ghrs, ghrs1, blf, kgl_kh, kgl_xm, trim(ks.text), ysdm, trim(ys.text),
                inttostr(fpdqh), trim(ghf.text), trim(zcf.text),
                floattostr(strtofloat(trim(ssf.text)) - kgl_sfbz), ksdm, fymc1, fymc2,
                cbbl.checked, kgl_fymc, kgl_sfbz, prv_is_kyh, _yybz, v_yyxh, mz_ph)
            else //��̨������ҽԺ0013 `
              Proc_ghsj_sc_st_b(ghrs, blf, kgl_kh, kgl_xm, trim(ks.text), ysdm, trim(ys.text),
                inttostr(fpdqh), trim(ghf.text), trim(zcf.text), floattostr(strtofloat(trim(ssf.text)) - kgl_sfbz),
                ksdm, fymc1, fymc2, strtofloat(trim(zcf_tc.text)),
                cbbl.checked, kgl_fymc, kgl_sfbz, prv_is_kyh, _yybz, mz_ph);
      end
      else //�����ӡ��ʽƱ�����
      begin
        if pub_yydm = '0028' then //���ݶ�ҽԺ��ӡ����ͳһ�Һż�
          Proc_ghsj_sc_dz(ghrs, floattostr(strtofloat(trim(ssf.text)) - kgl_sfbz), trim(ks.text), ysdm, ghks, trim(ys.text), inttostr(fpdqh),
            trim(xm.text), trim(kh.text))
        else
          if (pub_yydm = '0016') or (pub_yydm = '0091') then //��������Ժ,������ҽԺ�Һż�
            Proc_ghsj_sc_zt(ghrs, blf, kgl_kh, kgl_xm, trim(ks.text), ysdm, trim(ys.text),
              inttostr(fpdqh), trim(ghf.text), trim(zcf.text), floattostr(strtofloat(trim(ssf.text)) - kgl_sfbz), fymc1, fymc2,
              cbbl.checked, kgl_fymc, kgl_sfbz, prv_is_kyh, _yybz, mz_ph)
          else //2014-09-19 �������ҽԺ
            if (pub_yydm = '0230') then
              Proc_ghsj_sc_st_b(ghrs, blf, kgl_kh, kgl_xm, trim(ks.text), ysdm, trim(ys.text),
                inttostr(fpdqh), trim(ghf.text), trim(zcf.text), floattostr(strtofloat(trim(ssf.text)) - kgl_sfbz),
                ksdm, fymc1, fymc2, strtofloat(trim(zcf_tc.text)),
                cbbl.checked, kgl_fymc, kgl_sfbz, prv_is_kyh, _yybz, mz_ph)
            else
              if pub_yydm = '0237' then
                Proc_ghsj_sc_st_b(ghrs, blf, kgl_kh, kgl_xm, trim(ks.text), ysdm, trim(ys.text),
                  inttostr(fpdqh), trim(ghf.text), trim(zcf.text), floattostr(strtofloat(trim(ssf.text)) - kgl_sfbz),
                  ksdm, fymc1, fymc2, strtofloat(trim(zcf_tc.text)),
                  cbbl.checked, kgl_fymc, kgl_sfbz, prv_is_kyh, _yybz, mz_ph)
              else
                Proc_ghsj_sc(ghrs, v_yyxh, blf, strtofloat(trim(zcf_tc.text)), kgl_kh, kgl_xm, trim(ks.text), ysdm, trim(ys.text),
                  inttostr(fpdqh), trim(ghf.text), trim(zcf.text), floattostr(strtofloat(trim(ssf.text)) - kgl_sfbz), fymc1, fymc2,
                  cbbl.checked, kgl_fymc, kgl_sfbz, prv_is_kyh, _yybz, Pub_Is_zhsb, pub_re.zhye, ghrs1, mz_ph, khzl, czwz, erci);
      end;
    end
    else
      if Copy(pub_mzsjlx, 1, 4) = '0201' then //������ʽ
        Proc_ghsj_sx(ghrs, fpdqh, kgl_kh)
      else
        if Copy(pub_mzsjlx, 1, 4) = '0601' then //��ӡ�����վ�
          Proc_ghsj_xz(ghrs, fpdqh, trim(ys.text), trim(ks.text))
        else
          if Copy(pub_mzsjlx, 1, 4) = '0501' then //��ӡ�����վ�;
          begin
            if pub_mzsjlx = '050104' then //��ӡ�����վݸ�ʽ(��Ʊ),����������ҽԺ
            begin
              Proc_ghsj_sc_jy_b(ghrs, blf, 0, kgl_kh, kgl_xm, kgl_xb, kgl_nl, trim(ks.text), ysdm, trim(ys.text),
                inttostr(fpdqh), trim(ghf.text), trim(zcf.text), floattostr(strtofloat(trim(ssf.text)) - kgl_sfbz), ksdm, fymc1, fymc2,
                cbbl.checked, kgl_fymc, kgl_sfbz, prv_is_kyh, _yybz, '', '', 0)
            end
            else
            begin
              if (pub_yydm <> '0124') and (pub_yydm <> '0175') then
                Proc_ghsj_hb(ghrs, fpdqh, trim(ys.text), trim(ks.text));
            end;
          end
          else
            if Copy(pub_mzsjlx, 1, 4) = '0701' then //��ӡ�����վ�;
            begin
              Proc_ghsj_gs1(ghrs, fpdqh, trim(ys.text), trim(ks.text));
            end
            else
              if pub_mzsjlx = '999999' then
              begin
                if pub_yydm = '0230' then
                begin
                  Proc_ghsj_sc_st_b(ghrs, blf, kgl_kh, kgl_xm, trim(ks.text), ysdm, trim(ys.text),
                    inttostr(fpdqh), trim(ghf.text), trim(zcf.text), floattostr(strtofloat(trim(ssf.text)) - kgl_sfbz),
                    ksdm, fymc1, fymc2, strtofloat(trim(zcf_tc.text)),
                    cbbl.checked, kgl_fymc, kgl_sfbz, prv_is_kyh, _yybz, mz_ph)
                end
                else if pub_yydm = '0219' then //ۯ��ҽԺ
                begin
                  Proc_ghsj_sc(ghrs, v_yyxh, blf, strtofloat(trim(zcf_tc.text)), kgl_kh, kgl_xm, trim(ks.text), ysdm, trim(ys.text),
                    inttostr(fpdqh), trim(ghf.text), trim(zcf.text), floattostr(strtofloat(trim(ssf.text)) - kgl_sfbz), fymc1, fymc2,
                    cbbl.checked, kgl_fymc, kgl_sfbz, prv_is_kyh, _yybz, Pub_Is_zhsb, mz_ph);
                end
                else
                begin
                  Proc_ghsj_zdy(ghrs, blf, kgl_kh, kgl_xm, kgl_xb, kgl_nl, trim(ks.text), ysdm, trim(ys.text),
                    inttostr(fpdqh), trim(ghf.text), trim(zcf.text), floattostr(strtofloat(trim(ssf.text)) - kgl_sfbz), ksdm, fymc1, fymc2,
                    cbbl.checked, kgl_fymc, kgl_sfbz, prv_is_kyh, _yybz, czwz, ghrs1, Trim(combox_khlb.Text));
                end;
              end;

    if v_IsPrinterJoin then
      Proc_ChangePrinter(v_PrinterIndex_old, true);
  end;
  frm_mzgh.proc_get_sjbh; //�����վݺ�
end;

procedure Tfrm_mzgh.proc_save_kgl;
var
  ls: string;
begin
  sp_kgl_fk.Close;
  sp_kgl_fk.Parameters.ParamByName('@klydh').Value := kgl_lydh;
  sp_kgl_fk.Parameters.ParamByName('@sjlb').Value := v_sjlb;
  sp_kgl_fk.Parameters.ParamByName('@sjbh').Value := fpdqh;
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
    application.MessageBox(PChar('����û����ȷ����:' + ls), '����', mb_ok + mb_iconerror);
    BitBtn3.Click;
    abort;
  end;
  if kgl_sfbz > 0 then
    proc_mzgh_print(StrToInt('65535'), StrToInt('65535'));
end;

procedure Tfrm_mzgh.proc_save_mzgh;
var
  ls, ls1, zlrq, zlrq1, TableName: string;
  ghrs, ghrs1, Hour, Min, Sec, MSec: word;
  qry_blf: TADOQuery;
  lsdate, date_ls: Tdatetime;
begin
  //����kh�Ƿ�Ϊ�յ��жϣ����Ϊ����Ҫ�󴰿����¹Һ� 20140624 START
  if Trim(kh.Text) = '' then
  begin
    ShowMessage('��Ϣ���������¹Һ�');
    Exit;
  end;
  //����kh�Ƿ�Ϊ�յ��жϣ����Ϊ����Ҫ�󴰿����¹Һ� 20140624 END
  kgl_xm := Trim(xm.Text);
  kgl_xb := Trim(xb.Text);
  kgl_nl := Trim(nl.Text);
  DecodeTime(frm_func.curr_date(), Hour, Min, Sec, MSec);
  if hour >= 12 then
    v_sxw := '2'
  else
    v_sxw := '1';
  if trim(ghks) = '' then ghks := '0000';
  if trim(ysdm) = '' then ysdm := '0000';

  //ȡ����
  sp_cx_ysgcrs.Close;
  sp_cx_ysgcrs.Parameters.ParamByName('@ghrq').value := frm_func.curr_date();
  sp_cx_ysgcrs.Parameters.ParamByName('@ysdm').value := ysdm;
  sp_cx_ysgcrs.Parameters.ParamByName('@zydm').value := zydm;
  sp_cx_ysgcrs.Parameters.ParamByName('@sxwbz').value := sxwbz;
  sp_cx_ysgcrs.Parameters.ParamByName('@gcrs').value := 1;
  sp_cx_ysgcrs.Open;
  ghrs := Sp_cx_ysgcrs.fieldbyname('gcrs').asinteger; //ȫԺ���
  ghrs1 := Sp_cx_ysgcrs.fieldbyname('gcrs1').asinteger; //ҽ�����
  if (ghrs1 >= v_ysgcrs) and (v_ysgcrs <> 0) then
  begin
    application.messagebox('ҽ���ҳ������Ѿ��������ƣ�', 'ϵͳ��ʾ', mb_ok + MB_ICONWARNING);
    Exit;
  end;
  sp_up_ghfy.Close;
  sp_up_ghfy.Parameters.ParamByName('@czy').value := pub_czydm;
  sp_up_ghfy.Parameters.ParamByName('@tmh').value := trim(kh.text);
  sp_up_ghfy.Parameters.ParamByName('@brxm').value := trim(xm.text);
  sp_up_ghfy.Parameters.ParamByName('@brxb').value := trim(xb.text);
  sp_up_ghfy.Parameters.ParamByName('@brnl').value := trim(nl.text);
  if prv_is_kyh then //���û��Һ�
    sp_up_ghfy.Parameters.ParamByName('@fylb').value := prv_fylb //�������
  else
  begin
    if mzsfsffylb and (pub_yydm = '0131') then //�������ҽԺ
    begin
      sp_up_ghfy.Parameters.ParamByName('@fylb').value := func_brlbxz; //�������
    end
    else
    begin
      sp_up_ghfy.Parameters.ParamByName('@fylb').value := '01'; //�������
    end;
  end;
  sp_up_ghfy.Parameters.ParamByName('@brdz').value := sfzxx.Address;
  sp_up_ghfy.Parameters.ParamByName('@sfzhm').value := sfzxx.CardNo;

  sp_up_ghfy.Parameters.ParamByName('@csrq').value := FormatDateTime('yyyy-MM-dd', dtp1.DateTime); //sfzxx.Born
  sp_up_ghfy.Parameters.ParamByName('@brzy').value := trim(combox_jmlb.Text);
  sp_up_ghfy.Parameters.ParamByName('@sjbh').value := inttostr(fpdqh); //�Һŵ�����
  sp_up_ghfy.Parameters.ParamByName('@cfbh').value := inttostr(fpdqh);
  sp_up_ghfy.Parameters.ParamByName('@fydm').value := trim(fydm);
  sp_up_ghfy.Parameters.ParamByName('@ghf').value := strtofloat(ghf.text);
  sp_up_ghfy.Parameters.ParamByName('@zcf').value := strtofloat(zcf.text);
  sp_up_ghfy.Parameters.ParamByName('@blf').value := blf;
  sp_up_ghfy.Parameters.ParamByName('@ssfy').value := strtofloat(ssf.text) - kgl_sfbz;
  sp_up_ghfy.Parameters.ParamByName('@ghks').value := ghks;
  sp_up_ghfy.Parameters.ParamByName('@kdks').value := ksdm; //�Һŷѣ������鴦�ÿ���
  sp_up_ghfy.Parameters.ParamByName('@czks').value := ksdm;
  sp_up_ghfy.Parameters.ParamByName('@czys').value := ysdm;
  sp_up_ghfy.Parameters.ParamByName('@sfbz').value := 1;
  if yygh_brxm <> '' then
  begin
    zlrq := formatdatetime('yyyy-MM-dd hh:mm:ss', yygh_yyrq);
    zlrq1 := formatdatetime('yyyy-MM-dd hh:mm:ss', yygh_yyrq);
  end
  else
  begin
    zlrq := formatdatetime('yyyy-MM-dd hh:mm:ss', strtodatetime(formatdatetime('yyyy-MM-dd', frm_func.curr_date()) + ' 00:00:00'));
    zlrq1 := formatdatetime('yyyy-MM-dd hh:mm:ss', strtodatetime(formatdatetime('yyyy-MM-dd', frm_func.curr_date()) + ' 12:00:00'));
  end;
  if pbbz then
  begin
    sp_up_ghfy.Parameters.ParamByName('@sxwbz').value := sxwbz;
    if sxwbz = '1' then
      sp_up_ghfy.Parameters.ParamByName('@zlrq').value := zlrq
    else
      sp_up_ghfy.Parameters.ParamByName('@zlrq').value := zlrq1;
  end
  else
  begin
    if ysdm <> '0000' then
    begin
      sp_up_ghfy.Parameters.ParamByName('@sxwbz').value := sxwbz;
      if sxwbz = '1' then
        sp_up_ghfy.Parameters.ParamByName('@zlrq').value := zlrq
      else
        sp_up_ghfy.Parameters.ParamByName('@zlrq').value := zlrq1;
    end
    else
    begin
      sp_up_ghfy.Parameters.ParamByName('@sxwbz').value := v_sxw;
      if v_sxw = '1' then
        sp_up_ghfy.Parameters.ParamByName('@zlrq').value := zlrq
      else
        sp_up_ghfy.Parameters.ParamByName('@zlrq').value := zlrq1;
    end;
  end;

  if pub_mzgh_bl then //��¼��ʽ
  begin
    sp_up_ghfy.Parameters.ParamByName('@czfs').value := 3;
  end
  else
  begin
    if pbbz then
      sp_up_ghfy.Parameters.ParamByName('@czfs').value := 1
    else
      sp_up_ghfy.Parameters.ParamByName('@czfs').value := 2;
  end;
  //  sp_up_ghfy.Parameters.ParamByName('@zlrq').value := zlrq;
  sp_up_ghfy.Parameters.ParamByName('@ghzl').value := ghzl;
  sp_up_ghfy.Parameters.ParamByName('@sczt').value := 'a';
  sp_up_ghfy.Parameters.ParamByName('@kyhze').value := 'a';
  sp_up_ghfy.Parameters.ParamByName('@ghrs').value := ghrs;
  sp_up_ghfy.Parameters.ParamByName('@ghrs1').value := ghrs1;
  sp_up_ghfy.Parameters.ParamByName('@yyghid').value := yygh_id;
  sp_up_ghfy.Parameters.ParamByName('@zcf_tc').value := strtofloat(zcf_tc.text);
  sp_up_ghfy.Parameters.ParamByName('@lxdh').value := Trim(lxdh.text);
  sp_up_ghfy.Parameters.ParamByName('@ph').value := mz_ph;
  sp_up_ghfy.Parameters.ParamByName('@khzl').value := Trim(combox_khlb.Text);
  sp_up_ghfy.Parameters.ParamByName('@qtzjhm').value := v_qtzjhm;
  sp_up_ghfy.ExecProc;

  ls1 := sp_up_ghfy.Parameters.ParamByName('@sczt').value;
  ls := sp_up_ghfy.Parameters.ParamByName('@kyhze').value;
  if ls1 <> '0' then
  begin
    if ls1 = 'a' then
      Application.MessageBox('��ʾ:��Ա��������,�Һ�δ�ɹ�!', '��ʾ', MB_ICONINFORMATION)
    else
      application.MessageBox('�Һ�����û����ȷ����,�����±���', '����', mb_ok + mb_iconerror);
  end
  else
  begin
      // Added by JiangChao 2014-01-13 16:09:18
      // �¼ӹҺ��շ����˹���
    if Pub_Is_zhsb then
    begin
      if not func_pub_sbjs('�ҺŽ���', mz_ph) then
      begin
        Application.MessageBox('ҽ��������ʧ��,�˴��շ�תΪ�ֽ�!', 'ϵͳ��ʾ', MB_OK + MB_ICONWARNING);
        Pub_Is_zhsb := False;
        zcf_tc.text := '0';
        dm_data.Qry_pub1.close;
        dm_data.Qry_pub1.SQL.Text := 'update mzgh_ghmx set zcf_tc=0,khzl=' + #39 + '����' + #39 + ' where ghdhm=' + inttostr(fpdqh);
        dm_data.Qry_pub1.ExecSQL;
        if Length(Trim(kh.Text)) = 9 then
        begin
          TableName := 'sys_kyh';
        end
        else if Length(Trim(kh.Text)) = 12 then
        begin
          TableName := 'sys_kyh_ls';
        end;
        try
          dm_data.Qry_pub1.close;
          dm_data.Qry_pub1.SQL.Text := 'update ' + TableName +
            ' set sbkh = ' + #39 + v_qtzjhm + #39 +
            ',sfzhm = ' + #39 + sfzxx.CardNo + #39 + ' where tmh=' + #39 + Trim(kh.Text) + #39;
          dm_data.Qry_pub1.ExecSQL;
        except
        end;
      end;
    end;
    proc_mzgh_fpdy(ghrs, ghrs1); //��ӡ��Ʊ
    jy_gcrs := ghrs1;
    //�ж��Ƿ񱣴��������
    if jy_ghtzf > 0 then
    begin
      proc_save_tzzcg(jy_ghtzf, strtofloat(zcf_tc.text));
    end;
    if jkbz then
    begin
      proc_save_kgl; //������
    end;
    proc_mzgh_ghjs(ghrs); //�ҺŽ���
    if ((not iskyh) or (ls <> '0')) and (length(trim(kh.text)) = 9) then
      application.MessageBox('�����ֽ�!', '��ʾ', mb_ok + mb_iconinformation);
  end;
end;

procedure Tfrm_mzgh.proc_save_tzzcg(_tzzcf, _tcje: Real);
var
  ls: string;
begin
  sp_in_tzzcf.Close;
  sp_in_tzzcf.Parameters.ParamByName('@sjlb').Value := v_sjlb;
  sp_in_tzzcf.Parameters.ParamByName('@sjbh').Value := fpdqh;
  sp_in_tzzcf.Parameters.ParamByName('@tmh').Value := kgl_kh;
  sp_in_tzzcf.Parameters.ParamByName('@czy').Value := pub_czydm;
  sp_in_tzzcf.Parameters.ParamByName('@ksdm').Value := ksdm;
  sp_in_tzzcf.Parameters.ParamByName('@ysdm').Value := ysdm;
  sp_in_tzzcf.Parameters.ParamByName('@fydm').Value := '8488';
  sp_in_tzzcf.Parameters.ParamByName('@ph').Value := mz_ph;
  sp_in_tzzcf.Parameters.ParamByName('@sfbz').Value := _tzzcf;
  sp_in_tzzcf.Parameters.ParamByName('@tcfy').Value := _tcje;
  sp_in_tzzcf.Parameters.ParamByName('@sczt').Value := 'a';
  sp_in_tzzcf.ExecProc;
  ls := sp_in_tzzcf.Parameters.ParamByName('@sczt').value;
  if ls <> '0' then
  begin
    application.MessageBox(PChar('����û����ȷ����:' + ls), '����', mb_ok + mb_iconerror);
    BitBtn3.Click;
    abort;
  end;
//  if pub_yydm='0015' then
//     proc_mzgh_print(jy_gcrs, StrToInt('65534'));
  proc_mzgh_print(StrToInt('65534'), StrToInt('65534'));
end;

procedure Tfrm_mzgh.proc_set_yyghjbxx;
var
  yysj: Integer;
begin
  xm.text := Trim(yygh_brxm);
  xb.text := Trim(yygh_brxb);
  nl.text := Trim(yygh_brnl);
  if Trim(yygh_brzy) = '' then
    combox_jmlb.Text := '����'
  else
    combox_jmlb.Text := Trim(yygh_brzy);
  if Trim(yygh_brdz) = '' then
    brdz.Text := '��'
  else
    brdz.Text := Trim(yygh_brdz);
  ysdm := yygh_ghys;
  ys.Text := yygh_ghys_mc;
  ghks := yygh_ghks;
  ksdm := yygh_ghks;
  ks.Text := yygh_ghks_mc;
  with DM_data do //��������ԤԼ�Һ�
  begin
    qry_pub.Close;
    qry_pub.SQL.Text := 'select tmh,brxm,ghfdm,b.fymc ghffymc,b.sfbz ghfsfbz,zcfdm,c.fymc,c.sfbz from mzsf_mzgh a left join sys_kjsfxm b on a.ghfdm=b.fydm' +
      ' left join sys_kjsfxm c  ' +
      ' on a.zcfdm=c.fydm where  yxbz=1 and tmh  =' + #39 + trim(kh.Text) + #39;
    qry_pub.Open;
    ghf.Text := floattostr(qry_pub.fieldbyname('ghfsfbz').asfloat);
    fymc1 := qry_pub.fieldbyname('ghffymc').AsString;
    fymc2 := qry_pub.fieldbyname('fymc').AsString;
    zcf.text := floattostr(qry_pub.fieldbyname('sfbz').asfloat);
  end;

  yysj := strtoint(Copy(FormatDateTime('yyyy-MM-dd hh:mm:ss', yygh_yyrq), 12, 2));
  if (yysj > 0) and (yysj < 12) then
  begin
    sxwbz := '1'
  end
  else
    sxwbz := '2';
  DM_data.qry_pub.Close;
  DM_data.qry_pub.SQL.Text := 'select a.yyghfdm,b.sfbz from sys_yyxtsz a left join sys_kjsfxm b on a.yyghfdm=b.fydm';
  DM_data.qry_pub.Open;
  if DM_data.qry_pub.RecordCount > 0 then
    ghf.text := DM_data.qry_pub.FieldByName('sfbz').AsString
  else
  begin
    Application.MessageBox('ϵͳ��δ����ԤԼ�ҺŷѴ���,����ϵϵͳ����Ա!', 'ϵͳ��ʾ:', MB_OK + MB_ICONHAND);
    exit;
  end;
  DM_data.qry_pub.Close;
  DM_data.qry_pub.SQL.Text := 'select czy.dm ysdm,czy.mc ysmc,zc.ghfdm,xm1.sfbz,xm1.ghzl,xm1.fymc ' +
    'from sys_zcdm zc ' +
    'join sys_czy czy on zc.dm=czy.zcdm and czy.ysbz=1 and czy.dm=' + #39 + ysdm + #39 +
    'left join sys_kjsfxm xm1 on zc.ghfdm=xm1.fydm';
  DM_data.qry_pub.Open;
  if DM_data.qry_pub.RecordCount > 0 then
  begin
    fydm := DM_data.qry_pub.FieldByName('ghfdm').AsString;
    zcf.text := DM_data.qry_pub.FieldByName('sfbz').AsString;
    ghzl := DM_data.qry_pub.FieldByName('ghzl').AsString;
    ssf.text := floattostr(StrToFloat(ghf.text) + StrToFloat(zcf.text));
  end
  else
  begin
    Application.MessageBox('ϵͳ��δ���ùҺŷѴ���,����ϵϵͳ����Ա!', 'ϵͳ��ʾ:', MB_OK + MB_ICONHAND);
    exit;
  end;
  kgl_kh := Trim(kh.Text);
  if xm.text = '' then
    xm.setfocus
  else
    if xb.text = '' then
      xb.setfocus
    else
      if nl.text = '' then
        nl.setfocus
      else
        if combox_jmlb.Text = '' then
          combox_jmlb.setfocus
        else
          if combox_khlb.Text = '' then
            combox_khlb.setfocus
          else
            if brdz.Text = '' then
              brdz.setfocus
            else
              if ks.Text = '' then
              begin
                ks.setfocus;
                ks.SelectAll;
              end
              else
                if ys.Text = '' then
                begin
                  ys.setfocus;
                  ys.SelectAll;
                end
                else
                  if zcf.Text = '' then
                  begin
                    zcf.setfocus;
                    zcf.SelectAll;
                  end
                  else
                  begin
                    ssf.Enabled := True;
                    ssf.setfocus;
                    proc_jmxs;
                    bitbtn1.enabled := true;
                  end;
end;

procedure Tfrm_mzgh.proc_xtkg;
begin
  //����ũ��ͳ�������޸�
  if pub_yydm = '0015' then
  begin
    DM_data.qry_pub1.Close;
    DM_data.qry_pub1.SQL.Text := 'select fydm,dymc,sfbz from sys_kjsfxm where fydm=' + #39 + '8488' + #39;
    DM_data.qry_pub1.Open;
    jy_ghtzfmc := trim(DM_data.qry_pub1.FieldByName('dymc').AsString);
    jy_ghtzf := DM_data.qry_pub1.FieldByName('sfbz').AsFloat;
  end
  else
  begin
    jy_ghtzfmc := '';
    jy_ghtzf := 0;
  end;

  ad_xtkg.Close;
  ad_xtkg.CommandText := 'select * from sys_xt_kg';
  ad_xtkg.Open;
  v_sjlb := Trim(ad_xtkg.FieldByName('mzghsjlb').AsString); //pub_ghsjlb
  if Assigned(ad_xtkg.FindField('ghf')) then //�Һŷ�
  begin
    if Trim(ad_xtkg.FieldByName('ghf').AsString) = '' then
    begin
      lbl1.Visible := False;
      ghf.Visible := False;
      CheckBox2.Visible := False;
      Label8.Caption := '�Һŷ�:';
      Label8.Top := ys.Top;
      zcf.Top := ys.Top;
    end;
  end
  else
  begin
    application.MessageBox('ϵͳ������ȫ,�����������ر�', '����', mb_ok + mb_iconerror);
    BitBtn2.Click;
    Exit;
  end;

  if Assigned(ad_xtkg.FindField('cqjzkgbf')) then //���ھ��￨������
  begin
    kgl_fydm_cq := Trim(ad_xtkg.FieldByName('cqjzkgbf').AsString);
    if kgl_fydm_cq <> '' then
    begin
      qry_kgl_check.Close;
      qry_kgl_check.SQL.Text := 'select fymc,sfbz from sys_kjsfxm where fydm=' + #39 + kgl_fydm_cq + #39;
      qry_kgl_check.Open;
      kgl_fymc_cq := Trim(qry_kgl_check.FieldByName('fymc').AsString);
      kgl_sfbz_cq := qry_kgl_check.FieldByName('sfbz').AsFloat;
    end;
  end;

  if Assigned(ad_xtkg.FindField('lsjzkyj')) then //��ʱ���￨Ԥ��
  begin
    kgl_fydm_ls := Trim(ad_xtkg.FieldByName('lsjzkyj').AsString);
    if kgl_fydm_ls <> '' then
    begin
      qry_kgl_check.Close;
      qry_kgl_check.SQL.Text := 'select fymc,sfbz from sys_kjsfxm where fydm=' + #39 + kgl_fydm_ls + #39;
      qry_kgl_check.Open;
      kgl_fymc_ls := Trim(qry_kgl_check.FieldByName('fymc').AsString);
      kgl_sfbz_ls := qry_kgl_check.FieldByName('sfbz').AsFloat;
    end;
  end;

  v_sfyxxgzcbdfy := True;
  if Assigned(ad_xtkg.FindField('mzgh_sfyxxgzcbdfy')) then //����Һ��Ƿ������޸�ְ�ư󶨷���
  begin
    if not ad_xtkg.FieldByName('mzgh_sfyxxgzcbdfy').IsNull then
      v_sfyxxgzcbdfy := ad_xtkg.FieldByName('mzgh_sfyxxgzcbdfy').AsBoolean;
  end;

  v_mzzcftcje_sb := 0;
  if Assigned(ad_xtkg.FindField('mzgh_zcftcje_sb')) then //��������ͳ����_�籣
  begin
    if not ad_xtkg.FieldByName('mzgh_zcftcje_sb').IsNull then
    begin
      try
        v_mzzcftcje_sb := ad_xtkg.FieldByName('mzgh_zcftcje_sb').AsFloat;
      except
        v_mzzcftcje_sb := 0;
      end;
    end;
  end;
  b_sbhk.Enabled := True;
  v_mzzcftcje_nh := 0;
  if Assigned(ad_xtkg.FindField('mzgh_zcftcje_nh')) then //��������ͳ����_ũ��
  begin
    if not ad_xtkg.FieldByName('mzgh_zcftcje_nh').IsNull then
      v_mzzcftcje_nh := ad_xtkg.FieldByName('mzgh_zcftcje_nh').AsFloat;
  end;

  //��ʼ�����ιҺź��շ��޶� START 20140625
  ercigh := False;
  if Assigned(ad_xtkg.FindField('ercigh')) then //������ιҺ�
  begin
    if not ad_xtkg.FieldByName('ercigh').IsNull then
      ercigh := ad_xtkg.FieldByName('ercigh').AsBoolean;
  end;
  mzgh_sfxe := 0.0;
  if Assigned(ad_xtkg.FindField('mzgh_sfxe')) then //����Һ��շ��޶�
  begin
    if not ad_xtkg.FieldByName('mzgh_sfxe').IsNull then
      mzgh_sfxe := ad_xtkg.FieldByName('mzgh_sfxe').AsFloat;
  end;
  mzgh_dyzjzkmf := False;
  if Assigned(ad_xtkg.FindField('mzgh_dyzjzkmf')) then //����Һŵ�һ�ž��￨��ѿ���
  begin
    if not ad_xtkg.FieldByName('mzgh_dyzjzkmf').IsNull then
      mzgh_dyzjzkmf := ad_xtkg.FieldByName('mzgh_dyzjzkmf').AsBoolean;
  end;

  combox_khlb.Items.Clear;
  if v_mzzcftcje_sb > 0 then
    combox_khlb.items.Add('�籣');
  if v_mzzcftcje_nh > 0 then
    combox_khlb.items.Add('ũ��');
  combox_khlb.items.Add('����');
  //��������ҽԺ,���ӡ�����ҽ����
  if pub_yydm = '0015' then
    combox_khlb.Items.Add('����ҽ��');
  combox_khlb.Text := '';
  mzysbz := pub_mzdzbl;
  tmhsc := pub_sfsctmh;
end;

procedure Tfrm_mzgh.proc_ys_process_ys;
begin
  ysdm := sp_cx_ys.fieldbyname('ysdm').asstring;
  ys.text := sp_cx_ys.fieldbyname('ysmc').asstring;
  ghf.Text := sp_cx_ys.fieldbyname('ghfsfbz').asstring;
  CheckBox2.Checked := False;
  fymc1 := sp_cx_ys.fieldbyname('ghffymc').AsString;
  if sp_cx_ys.fieldbyname('pbbz').asinteger = 0 then
  begin
    pbbz := false;
    sxwbz := v_sxw;
  end
  else
  begin
    pbbz := true;
    sxwbz := copy(trim(sp_cx_ys.fieldbyname('yzrq').asstring), 2, 1);
  end;
  if zydm = '' then
  begin
    ks.text := Trim(sp_cx_ys.fieldbyname('zymc').asstring);
    ksdm := sp_cx_ys.fieldbyname('ksdm').asstring;
    ghks := sp_cx_ys.fieldbyname('ksdm').asstring;
  end
  else
  begin
    ks.text := zymc;
    ksdm := zydm;
    ghks := zydm;
  end;
  pdsfjz; //�ж��Ƿ���ʱ��
  if not jzbz then
  begin
    fydm := sp_cx_ys.fieldbyname('ghfdm').asstring;
    fymc2 := sp_cx_ys.fieldbyname('fymc').AsString;
    zcf.text := floattostr(sp_cx_ys.fieldbyname('sfbz').asfloat);
    if trim(Prv_mzfybl) <> '' then
    begin
      zcf.text := floattostr(sp_cx_ys.fieldbyname('sfbz').asfloat *
        (1 - sp_cx_ys.fieldbyname(Prv_mzfybl).asfloat / 100));
      ssf.text := floattostr(sp_cx_ys.fieldbyname('ghfsfbz').asfloat + kgl_sfbz + blf +
        sp_cx_ys.fieldbyname('sfbz').asfloat * (1 - sp_cx_ys.fieldbyname(Prv_mzfybl).asfloat / 100));
    end
    else
    begin
      ssf.text := floattostr(sp_cx_ys.fieldbyname('ghfsfbz').asfloat +
        sp_cx_ys.fieldbyname('sfbz').asfloat + kgl_sfbz + blf);
    end;
    lab_jzbz.Visible := False;
  end
  else
  begin
    fydm := sp_cx_ys.fieldbyname('jzghfdm').asstring;
    fymc2 := sp_cx_ys.fieldbyname('jzfymc').AsString;
    zcf.text := floattostr(sp_cx_ys.fieldbyname('jzsfbz').asfloat);
    if trim(Prv_mzfybl) <> '' then
    begin
      zcf.text := floattostr(sp_cx_ys.fieldbyname('jzsfbz').asfloat *
        (1 - sp_cx_ys.fieldbyname('jz' + Prv_mzfybl).asfloat / 100));
      ssf.text := floattostr(sp_cx_ys.fieldbyname('ghfsfbz').asfloat + kgl_sfbz + blf +
        sp_cx_ys.fieldbyname('jzsfbz').asfloat * (1 - sp_cx_ys.fieldbyname('jz' + Prv_mzfybl).asfloat / 100));
    end
    else
    begin
      ssf.text := floattostr(sp_cx_ys.fieldbyname('ghfsfbz').asfloat +
        sp_cx_ys.fieldbyname('jzsfbz').asfloat + kgl_sfbz + blf);
    end;
    lab_jzbz.Visible := True;
  end;
  proc_jmxs;
  if brcount(sxwbz, sp_cx_ys.fieldbyname('rs').asinteger) then
  begin
    zcf.setfocus;
    zcf.SelectAll;
  end
  else
  begin
    ks.setfocus;
    ks.SelectAll;
  end;
end;

procedure Tfrm_mzgh.proc_ys_proess_yspb;
begin
  v_ysgcrs := 0;
  v_ysgcrs := sp_cx_yspb.fieldbyname('rs').asinteger;
  sbar1.Panels[7].text := inttostr(v_ysgcrs);
  sxwbz := copy(trim(sp_cx_yspb.fieldbyname('yzrq').asstring), 2, 1);
  ysdm := sp_cx_yspb.fieldbyname('ysdm').asstring;
  zydm := sp_cx_yspb.fieldbyname('zydm').asstring;
  zymc := sp_cx_yspb.fieldbyname('zymc').asstring;
  ghks := zydm;
  ys.text := sp_cx_yspb.fieldbyname('ysmc').asstring;
  ghf.Text := sp_cx_yspb.fieldbyname('ghfsfbz').asstring;
  CheckBox2.Checked := False;
  fymc1 := sp_cx_yspb.fieldbyname('ghffymc').AsString;
  pdsfjz; //�ж��Ƿ���ʱ��
  if not jzbz then
  begin
    zcf.text := floattostr(sp_cx_yspb.fieldbyname('sfbz').asfloat);
    fydm := Trim(sp_cx_yspb.fieldbyname('ghfdm').AsString);
    fymc2 := sp_cx_yspb.fieldbyname('fymc').AsString;
    if trim(Prv_mzfybl) <> '' then
    begin
      zcf.text := floattostr(sp_cx_yspb.fieldbyname('sfbz').asfloat *
        (1 - sp_cx_yspb.fieldbyname(Prv_mzfybl).asfloat / 100));
      ssf.text := floattostr(sp_cx_yspb.fieldbyname('ghfsfbz').asfloat + kgl_sfbz + blf +
        sp_cx_yspb.fieldbyname('sfbz').asfloat * (1 - sp_cx_yspb.fieldbyname(Prv_mzfybl).asfloat / 100));
    end
    else
    begin
      ssf.text := floattostr(sp_cx_yspb.fieldbyname('ghfsfbz').asfloat +
        sp_cx_yspb.fieldbyname('sfbz').asfloat + kgl_sfbz + blf);
    end;
    lab_jzbz.Visible := False;
  end
  else
  begin
    zcf.text := floattostr(sp_cx_yspb.fieldbyname('jzsfbz').asfloat);
    fydm := sp_cx_yspb.fieldbyname('jzghfdm').AsString;
    fymc2 := Trim(sp_cx_yspb.fieldbyname('jzfymc').AsString);
    if trim(Prv_mzfybl) <> '' then
    begin
      zcf.text := floattostr(sp_cx_yspb.fieldbyname('jzsfbz').asfloat *
        (1 - sp_cx_yspb.fieldbyname('jz' + Prv_mzfybl).asfloat / 100));
      ssf.text := floattostr((sp_cx_yspb.fieldbyname('ghfsfbz').asfloat + kgl_sfbz + blf +
        sp_cx_yspb.fieldbyname('jzsfbz').asfloat) * (1 - sp_cx_yspb.fieldbyname('jz' + Prv_mzfybl).asfloat / 100));
    end
    else
    begin
      ssf.text := floattostr(sp_cx_yspb.fieldbyname('ghfsfbz').asfloat +
        sp_cx_yspb.fieldbyname('jzsfbz').asfloat + kgl_sfbz + blf);
    end;
    lab_jzbz.Visible := True;
  end;
  proc_jmxs;
  if brcount(copy(sp_cx_yspb.fieldbyname('yzrq').asstring, 2, 1), v_ysgcrs) then
  begin
    ys.setfocus;
    ys.SelectAll;
  end
  else
  begin
    ks.setfocus;
    ks.SelectAll;
  end;
end;

procedure Tfrm_mzgh.saveKyhNl(str: string);
begin
  with DM_data do
  begin
    qry_pub.Close;
    qry_pub.SQL.Text := 'update sys_kyh set brnl=' + #39 + str + #39
      + ' where tmh=' + #39 + trim(kh.text) + #39;
    qry_pub.ExecSQL;
  end;
end;

procedure Tfrm_mzgh.khExit(Sender: TObject);
begin
  //  if ( trim( kh.text ) <> '' ) and ( Length( trim( kh.text ) ) <> 12 ) then
  //    if Copy( trim( kh.text ), 1, 2 ) <> '99' then
  //    begin
  //      application.MessageBox( '��Ч�Ŀ���,��ȷ�ϣ�', '����', mb_ok + mb_iconerror );
  //      kh.setfocus;
  //      Exit;
  //    end;
  sfzpdbz := False;
  mz_ph := get_sjh(pub_czydm);
  if dbctl.Focused then
    Exit;
  if sfzxx <> nil then
    sfzxx := nil;
  xm.Enabled := True;
  xb.Enabled := True;
  nl.Enabled := True;
  panel2.Caption := '';
  pnl_ks.Caption := '';
  Label_kye.Visible := False;
  jkbz := False;

  sfzxx := new(_sfzxx);
  if not (b_xxcx.Focused or cbbl.Focused or checkbox1.Focused
    or checkbox2.Focused or bitbtn2.Focused or bitbtn3.Focused or btn2.Focused
    or btn3.Focused or bitbtn6.Focused or bbtn_yybj.Focused or btn1.Focused) then
  begin
    if trim(kh.text) = '' then
    begin
      //      if pub_yydm = '0046' then
      //        tmhsc := False; //�޽�������ҽԺ��ʹ���Զ����ɵ���ʱ��
      if tmhsc then
      begin
        sp_get_kh.close;
        sp_get_kh.ExecProc;
        kh.text := sp_get_kh.parameters.parambyname('@lstmh').value;
        dqsfz; //��ȡ���֤��Ϣ 20100827�������----------------------
      end
      else
      begin
        application.MessageBox('�������뿨�ţ�', '����', mb_ok + mb_iconerror);
        kh.setfocus;
        Exit;
      end;
      kgl_kh := Trim(kh.text);
      kgl_fydm := '';
      kgl_sfbz := 0;
      kgl_fymc := '';
      Label_kye.Visible := False;
    end
    else
    begin
      if length(trim(kh.text)) <= 9 then
      begin
        kh.text := stringofchar('0', 9 - length(trim(kh.text))) + trim(kh.text);
      end;
      //2012-03-01 jc ���ԤԼ�Һź�����ж�
      lab_yyh.Caption := '';
      if yygh_yyh = '' then
        yygh_yyh := Trim(kh.text);
      if not v_yybz then
        v_yybz := func_get_yybz(yygh_yyh);
      if v_yybz then
      begin
        proc_set_yyghjbxx;
        //        proc_mzgh_kgl_check;
        if (length(trim(kh.text)) = 12) and (Copy(trim(kh.text), 1, 2) = 'yy') then //������ʱԤԼ
        begin
          kh.SetFocus;
          lab_yyh.Caption := '��������ԤԼ��Ϊ:' + yygh_yyh;
          kh.Text := proc_get_yyghhk(yygh_yyh);
          yygh_jzkh := kh.Text;
        end;
      end;
      kgl_kh := Trim(kh.text);
      kgl_fydm := '';
      kgl_sfbz := 0;
      kgl_fymc := '';
      sp_cx_kyh.Close;
      sp_cx_kyh.Parameters.ParamByName('@tmh').value := trim(kh.text);
      sp_cx_kyh.Open;
      if (not sp_cx_kyh.IsEmpty) then
      begin
        if (pub_yydm = '0019') and (Trim(sp_cx_kyh.fieldbyname('sfzhm').asstring) = '') then
        begin
          Application.MessageBox('�˲������֤����δ¼�룬��������ͳ�'
            + #13#13#10 + '���貹¼�����û�Ա�������ƻ�����Ϣ��', 'ϵͳ��ʾ',
            MB_OK + MB_ICONWARNING);
        end;
        xm.text := Trim(sp_cx_kyh.fieldbyname('brxm').asstring);
        xb.text := Trim(sp_cx_kyh.fieldbyname('brxb').asstring);
        nl.text := Trim(sp_cx_kyh.fieldbyname('brnl').asstring);
        lxdh.Text := Trim(sp_cx_kyh.FieldByName('brdh').AsString); //�����˻�ȡ���˵绰 20140624
        dtp1.DateTime := sp_cx_kyh.fieldbyname('csrq').AsDateTime;
        combox_jmlb.Text := Trim(sp_cx_kyh.FieldByName('brzy').AsString);
        brdz.Text := Trim(sp_cx_kyh.FieldByName('brdz').AsString);
        Prv_mzfybl := Trim(sp_cx_kyh.FieldByName('mzfyblmc').Asstring);
        kgl_kh := Trim(kh.Text);
        if trim(Prv_mzfybl) <> '' then
        begin
          prv_fylb := Trim(sp_cx_kyh.fieldbyname('fylb').asstring);
          iskyh := true;
          if (length(trim(kh.text)) = 9) then
            proc_maxg;
          Label_kye.Caption := '�����:' + FormatFloat('0.00', sp_cx_kyh.FieldByName('syje').AsFloat);
          Label_kye.Visible := prv_is_kyh;
        end;
        if xm.text = '' then
          xm.setfocus
        else
          if xb.text = '' then
            xb.setfocus
          else
            if nl.text = '' then
              nl.setfocus
            else
              if combox_jmlb.Text = '' then
                combox_jmlb.setfocus
              else
                if combox_khlb.Items.Count > 0 then
                begin
                  combox_khlb.setfocus
                end
                else
                  if brdz.Text = '' then
                    brdz.setfocus
                  else
                  begin
                    ks.setfocus;
                    ks.SelectAll;
                  end;
      end
      else
      begin
        kgl_kh := Trim(kh.Text);
        dqsfz; //��ȡ���֤��Ϣ 20100827�������----------------------
        proc_mzgh_kgl_check;
      end;
    end;
  end;
  kh.Enabled := false;
  bitbtn3.enabled := true;
  yygh_yyh := '';
  v_yybz := False;
//  frm_func.restorecolor(sender);
end;

procedure Tfrm_mzgh.khKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    combox_khlb.SetFocus;
  end;
  if Key = #27 then
    kh.SetFocus;
end;

procedure Tfrm_mzgh.xmExit(Sender: TObject);
begin
  //����������ȵ��ж�20140715 START
  if Length(Trim(xm.Text)) > 50 then
  begin
    Application.MessageBox('�������ܳ�25������', '��ʾ', MB_ICONHAND);
    xm.SetFocus;
    Exit;
  end;
  //����������ȵ��ж�20140715 END
  frm_func.restorecolor(sender);
  if not (xm.Focused or b_xxcx.Focused or bitbtn2.focused or bitbtn3.focused or btn2.focused or btn3.focused or btn1.Focused or
    bitbtn6.focused or bbtn_yybj.Focused or cbbl.Focused or checkbox1.Focused or checkbox2.Focused or b_sbhk.Focused) then
  begin
    if trim(xm.text) = '' then
    begin
      application.messagebox('��������Ϊ�գ�����������', '����', mb_ok + mb_iconerror);
      //      xm.Enabled := True;
      xm.setfocus;
    end
    else
    begin
      kgl_xm := Trim(xm.Text);
      if pub_yydm = '0028' then //���ݶ�ҽԺ�������벡��������Ա�
      begin
        ks.Enabled := True;
        ks.SetFocus;
      end
      else
      begin
        xb.setfocus;
        xb.SelectAll;
        xb.DroppedDown;
      end;
    end;
  end;
end;

procedure Tfrm_mzgh.xmKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 13 then
  begin
    xb.Enabled := True;
    xb.SetFocus;
  end;
  if Key = 27 then
    kh.SetFocus;
  if Key = VK_ESCAPE then //ESC������
  begin
    BitBtn3.Click;
  end;
end;

procedure Tfrm_mzgh.ksExit(Sender: TObject);
begin
  frm_func.restorecolor(sender);
  if not (b_xxcx.Focused or dbctl.Focused or bitbtn2.focused or bitbtn3.focused or btn2.focused or btn3.focused or
    bitbtn6.focused or bbtn_yybj.Focused or cbbl.Focused or checkbox1.Focused or checkbox2.Focused or btn1.Focused or
    combox_jmlb.focused or brdz.focused or kh.focused or xm.focused or xb.focused or nl.focused or dtp1.focused) then
    if trim(ks.text) <> '' then
    begin
      sp_cx_ghxm.close;
      sp_cx_ghxm.Parameters.ParamByName('@srm').value := trim(ks.text);
      sp_cx_ghxm.Open;
      if sp_cx_ghxm.IsEmpty then
      begin
        application.messagebox('�Һ�רҵ�����������������', '����', mb_ok + mb_iconerror);
        ks.setfocus;
        ks.SelectAll;
      end
      else
        if sp_cx_ghxm.recordcount > 1 then
        begin
          ksgrid.Visible := true;
          ksgrid.top := groupbox2.top + ks.top + ks.height + 1;
          ksgrid.left := ks.left;
          ksgrid.setfocus;
        end
        else
        begin
          ghxmlr;
        end;
    end
    else
    begin
      pbbz := false;
      zydm := '';
      ys.setfocus;
      ys.SelectAll;
    end;
    //����������ҽԺ������ԡ�5����ͷ�Ŀ�ѧ��ҽ������ô�ҺŷѺ����Ѷ�Ϊ0
  if (pub_yydm = '0015') and (copy(trim(kh.text), 1, 1) = '5') then
  begin
    ghf.Text := '0';
    zcf.Text := '0';
  end;
end;

procedure Tfrm_mzgh.ksEnter(Sender: TObject);
begin
  if trim(kh.text) = '' then
  begin
    application.MessageBox('����û�л�������ϵͳû���Զ�������ʱ����', '��ʾ', 0 + 16);
    kh.setfocus;
  end
  else
  begin
    frm_func.changecolor(sender);
    fydm := '';
    ks.SelectAll;
  end;
end;

procedure Tfrm_mzgh.zcfEnter(Sender: TObject);
begin
  frm_func.changecolor(sender);
  zcf.SelectAll;
  bitbtn1.enabled := true;
//  cbbl.enabled := true;
end;

procedure Tfrm_mzgh.zcfExit(Sender: TObject);
begin
  frm_func.restorecolor(sender);
  if pub_yydm = '0046' then
  begin
    if combox_khlb.Text = '�������' then
    begin
      v_mzghxstcbz := True;
      zcf_tc.Text := formatfloat('0.00', v_mzzcftcje_sb);
    end
    else
      if combox_khlb.Text = '��ũ��' then
      begin
        v_mzghxstcbz := True;
        zcf_tc.Text := formatfloat('0.00', v_mzzcftcje_nh);
      end
      else
        if combox_khlb.Text = '����ְ��' then
        begin
          v_mzghxstcbz := True;
          zcf_tc.Text := formatfloat('0.00', v_mzzcftcje_sb);
        end
        else
        begin
          zcf_tc.Text := '0';
        end;
  end;

  if ercigh then //����������ҽԺ�������ιҺ� 20140625  START
  begin
    DM_data.qry_pub1.Close;
    DM_data.qry_pub1.SQL.Text := 'select * from mzgh_ghmx where CONVERT(char,sfrq,112)=CONVERT(char,GETDATE(),112)'
      + 'and tfbz=0 and ghdhm>0 and bybh=' + #39 + trim(kh.text) + #39;
    DM_data.qry_pub1.Open;

    if DM_data.qry_pub1.RecordCount > 0 then
    begin
      v_mzghxstcbz := True;
      zcf_tc.Text := formatfloat('0.00', v_mzzcftcje_sb);
    end;
  end; //����������ҽԺ�������ιҺ� 20140625     END

  if pub_yydm = '0015' then
  begin
    ssf.Text := formatfloat('0.00', StrToFloat(Trim(zcf.Text)) + jy_ghtzf + StrToFloat(Trim(ghf.Text)) - StrToFloat(Trim(zcf_tc.Text)) + kgl_sfbz + blf);
  end
  else
  begin
    ssf.Text := formatfloat('0.00', StrToFloat(Trim(zcf.Text)) + StrToFloat(Trim(ghf.Text)) + kgl_sfbz + blf);
  end;
  proc_jmxs;
end;

procedure Tfrm_mzgh.zcfKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    zb.Enabled := True;
    zb.SetFocus;
  end;
end;

procedure Tfrm_mzgh.ghxmlr;
begin
  if ksgrid.Visible then
    ksgrid.Visible := false;
  ksdm := Trim(sp_cx_ghxm.fieldbyname('zydm').asstring);
  zydm := Trim(sp_cx_ghxm.fieldbyname('zydm').asstring);
  zymc := Trim(sp_cx_ghxm.fieldbyname('zymc').asstring);
  ks.Text := zymc;
  if pub_mzgh_bl then
  begin
    pbbz := False;
  end
  else
  begin
    pbbz := True;
  end;
  ysprocess(1);
end;

procedure Tfrm_mzgh.jkkd_hd;
var
  _str: string;
  jkk_PsnBaseInfo: Tjkk_PsnBaseInfo;
  jkk_AddressInfo: Tjkk_AddressInfo;
  jkk_PayTypeInfo: Tjkk_PayTypeInfo;
begin
  try
    _str := Trim(Auto_CardInfo.CardNo);
    if _str = '' then
    begin
      Exit;
    end;
    //��ѯ����   �Ѱ�
    if proc_cx_jzklx(_str) then
    begin
      kh.Text := pub_bdktmh;
    end
    else //δ���Զ�������ʱ�Ų���
    begin
      //���أ������Ƿ�ʹ�ôſ������ƺ���ʾ
      if tmhsc then
      begin
        if Application.MessageBox('�˿�δ�󶨣�' + #13#10#13#10 +
          'ϵͳ��������ʱ�ţ��Ƿ��Զ���ϵͳ��ʱ�ţ�' + #13#10#13#10 +
          '��������ʾ�û����������Ͻ��а󶨲������ٴιҺţ�', 'ϵͳ��ʾ',
          MB_YESNO + MB_ICONQUESTION) <> IDYES then
        begin
          Exit;
        end;

        DM_data.qry_pub.Close;
        DM_data.qry_pub.SQL.Text := 'select * from sys_kyh where sfzhm=''' + _str + '''';
        DM_data.qry_pub.Open;
        if DM_data.qry_pub.RecordCount = 0 then
        begin
//          'yyt_in_kyhdb'

//          sp_get_kh.close;
//          sp_get_kh.ExecProc;
//          kh.text := trim(sp_get_kh.parameters.parambyname('@lstmh').value);
            //��ȡ������Ϣ
          if PsnBaseInfo(jkk_PsnBaseInfo) then
          begin
            xm.Text := jkk_PsnBaseInfo.PsnName; //����
            if jkk_PsnBaseInfo.PsnGen = '1' then //�Ա�
              xb.Text := '��'
            else if jkk_PsnBaseInfo.PsnGen = '2' then
              xb.Text := 'Ů'
            else
              xb.Text := 'δ֪';
            dtp1.DateTime := StrToDateTime(func_zh_csrq(jkk_PsnBaseInfo.BirthDay)); //��������
            nl.Csrq := dtp1.DateTime;
            sfzxx := new(_sfzxx);
            sfzxx.Born := func_zh_csrq(jkk_PsnBaseInfo.BirthDay);
            sfzxx.CardNo := jkk_PsnBaseInfo.PsnID; //���֤����
            if AddressInfo(jkk_AddressInfo) then
            begin
              brdz.Text := trim(jkk_AddressInfo.Address1);
              if brdz.Text = '' then
                brdz.Text := trim(jkk_AddressInfo.Address2);
              sfzxx.Address := brdz.Text;
            end;
            dm_data.sp_pub.Close;
            dm_data.sp_pub.ProcedureName := 'yyt_in_kyhdb';
            dm_data.sp_pub.Parameters.Refresh;
            dm_data.sp_pub.Parameters.ParamByName('@kh').Value := Auto_CardInfo.CardNo;
            dm_data.sp_pub.Parameters.ParamByName('@bdlb').Value := '03';
            dm_data.sp_pub.Parameters.ParamByName('@brxm').Value := jkk_PsnBaseInfo.PsnName;
            dm_data.sp_pub.Parameters.ParamByName('@brxb').Value := jkk_PsnBaseInfo.PsnGen;
            dm_data.sp_pub.Parameters.ParamByName('@brmz').Value := '��';

            dm_data.sp_pub.Parameters.ParamByName('@csrq').Value := dtp1.DateTime;
            dm_data.sp_pub.Parameters.ParamByName('@brdz').Value := sfzxx.Address;
            dm_data.sp_pub.Parameters.ParamByName('@sfzh').Value := sfzxx.CardNo;
            if PayTypeInfo(jkk_PayTypeInfo) then
            begin
              dm_data.sp_pub.Parameters.ParamByName('@lxdh').Value := jkk_PayTypeInfo.PhoneNo1;
            end else begin
              dm_data.sp_pub.Parameters.ParamByName('@lxdh').Value := '';
            end;
            dm_data.sp_pub.Parameters.ParamByName('@czrq').Value := Now;
            dm_data.sp_pub.Parameters.ParamByName('@jylsh').Value := '';
            dm_data.sp_pub.Parameters.ParamByName('@fhtmh').Value := '';
            dm_data.sp_pub.Parameters.ParamByName('@zt').Value := '';
            try
              dm_data.sp_pub.ExecProc;
            except
              on e: Exception do
              begin
                Application.MessageBox(pchar('�������Ű�ʧ�ܣ�' + e.Message), 'ϵͳ��ʾ',
                  MB_OK + MB_ICONWARNING);
                Exit;
              end;
            end;
            if (dm_data.sp_pub.Parameters.ParamByName('@zt').Value <> '�ɹ�') then
            begin
              _str := dm_data.sp_pub.Parameters.ParamByName('@zt').Value;
              Application.MessageBox(pchar('�������Ű�ʧ�ܣ�' + _str), 'ϵͳ��ʾ',
                MB_OK + MB_ICONWARNING);
              Exit;
            end;
            kh.text := dm_data.sp_pub.Parameters.ParamByName('@fhtmh').Value;
//            dm_data.sp_pub.Parameters.ParamByName('@fhtmh').Value;
//            dm_data.sp_pub.Parameters.ParamByName('@zt').Value;
//            //�Զ����Ҵ洢������Ϣ
//            if not proc_up_jkkbd(kh.text, xm.Text, xb.Text, nl.Text, brdz.Text, sfzxx.CardNo, sfzxx.Born, _str, '03') then
//            begin
//              Application.MessageBox(pchar('����������ϵͳ��ʱ�Ű�ʧ�ܣ�'), 'ϵͳ��ʾ',
//                MB_OK + MB_ICONWARNING);
//              kh.Enabled := True;
//              kh.SetFocus;
//              Exit;
//            end;
          end
          else
          begin
            _str := Trim(cwxx);
            Application.MessageBox(pchar('�������Ŷ�ȡʧ�ܣ�ʧ��ԭ��' + _str), 'ϵͳ��ʾ',
              MB_OK + MB_ICONWARNING);
            kh.Enabled := True;
            kh.SetFocus;
            Exit;
          end;

        end else begin
          kh.text := Trim(DM_data.qry_pub.FieldByName('tmh').AsString);
          DM_data.qry_pub.Close;
          DM_data.qry_pub.SQL.Text := 'insert sys_kyhbd(tmh,bdkh,bdlb,czrq,jylsh,yxbz)' +
            'values(:tmh,:bdkh,''03'',GETDATE(),NULL,1)';
          DM_data.qry_pub.Parameters.ParamByName('tmh').Value := kh.text;
          DM_data.qry_pub.Parameters.ParamByName('bdkh').Value := Auto_CardInfo.CardNo;
          DM_data.qry_pub.ExecSQL;
        end;
      end
      else //�����������ʱ������ʾ�Ȱ쿨
      begin
        Application.MessageBox('��ȡ���Ľ�������δ�󶨣���δ����ϵͳ��ʱ����ţ����ȵ��������Ͻ��а󶨲�����', 'ϵͳ��ʾ',
          MB_OK + MB_ICONWARNING);
        kh.Enabled := True;
        kh.SetFocus;
        Exit;
      end;
      kgl_kh := Trim(kh.text);
      kgl_fydm := '';
      kgl_sfbz := 0;
      kgl_fymc := '';
      Label_kye.Visible := False;
    end;
    lb_khy.Caption := '�󶨾��񽡿����ţ�' + _str;
    lb_khy.Visible := true;
    xm.Enabled := True;
    xm.SetFocus;
    khExit(Self);
  except
    Application.MessageBox('�������Ŷ�ȡʧ�ܣ������²�����', 'ϵͳ��ʾ',
      MB_OK + MB_ICONWARNING);
    kh.Enabled := True;
    kh.SetFocus;
  end;
end;

procedure Tfrm_mzgh.ksgridExit(Sender: TObject);
begin
  ghxmlr;
end;

procedure Tfrm_mzgh.ksgridKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    ys.SetFocus;
end;

procedure Tfrm_mzgh.ysExit(Sender: TObject);
begin
  frm_func.restorecolor(sender);
  if not (b_xxcx.Focused or dbctl.Focused or bitbtn2.focused or bitbtn3.focused or btn2.focused or btn3.focused or btn1.Focused or
    bitbtn6.focused or ks.focused or bbtn_yybj.Focused or cbbl.Focused or checkbox1.Focused or checkbox2.Focused or
    combox_jmlb.focused or brdz.focused or kh.focused or xm.focused or xb.focused or nl.focused or dtp1.focused) then
  begin
    if (Trim(zydm) = '') and (Trim(ys.Text) = '9997') then
    begin
      application.messagebox('Ҫʹ��9997����ѡ��רҵ��', 'ϵͳ��ʾ', mb_ok + mb_iconerror);
      ks.SetFocus;
      Abort;
    end;
    if pbbz then
    begin
      if trim(ys.text) = '' then
      begin
        if pub_yydm <> '0028' then //���ݶ�ҽԺ��ͨҽ����¼����
        begin
          application.messagebox('��ѡ��ҽ����', 'ϵͳ��ʾ', mb_ok + mb_iconerror);
          ys.setfocus;
        end;
      end
      else
      begin
        if Length(trim(ys.text)) > 30 then
        begin
          application.messagebox('ҽ���������������', 'ϵͳ��ʾ', mb_ok + mb_iconerror);
          ys.setfocus;
          Abort;
        end;
        if sp_cx_yspb.Active and ((ys.text) = trim(sp_cx_yspb.fieldbyname('ysmc').asstring)) then
          if brcount(copy(sp_cx_yspb.fieldbyname('yzrq').asstring, 2, 1), sp_cx_yspb.fieldbyname('rs').asinteger) then
          begin
            zcf.setfocus;
            zcf.SelectAll;
          end
          else
          begin
            ks.setfocus;
            ks.SelectAll;
          end
        else
          ysprocess2;
      end;
    end
    else //���Ű�
    begin
      ysprocess2;
    end;
  end;
  //����ԡ�5����ͷ�Ŀ�ѧ��ҽ������ô�ҺŷѺ����Ѷ�Ϊ0
  if (pub_yydm = '0015') and (copy(trim(kh.text), 1, 1) = '5') then
  begin
    ghf.Text := '0';
    zcf.Text := '0';
  end;
end;

procedure Tfrm_mzgh.ysgridExit(Sender: TObject);
begin
  proc_ys_proess_yspb;
  ysgrid.Visible := false;
end;

procedure Tfrm_mzgh.ysgridKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    if ghf.Visible then
      ghf.SetFocus
    else
      zcf.SetFocus;
  end;
end;

function tfrm_mzgh.brcount(sxwbz: string; rs: integer): boolean;
var
  ls: string;
  gcrs: integer;
begin
  result := false;
  if pbbz then
  begin
    ls := '��ҽ��';
    sp_cx_ysgcrs.Close;
    sp_cx_ysgcrs.Parameters.ParamByName('@ghrq').value := frm_func.curr_date();
    sp_cx_ysgcrs.Parameters.ParamByName('@ysdm').value := ysdm;
    sp_cx_ysgcrs.Parameters.ParamByName('@zydm').value := zydm;
    sp_cx_ysgcrs.Parameters.ParamByName('@sxwbz').value := sxwbz;
    sp_cx_ysgcrs.Parameters.ParamByName('@gcrs').value := 0;
    sp_cx_ysgcrs.Open;
    gcrs := Sp_cx_ysgcrs.fieldbyname('gcrs').asinteger;
  end
  else
  begin
    ls := '��רҵ';
    sp_cx_ksgcrs.Close;
    sp_cx_ksgcrs.Parameters.ParamByName('@ghrq').value := frm_func.curr_date();
    sp_cx_ksgcrs.Parameters.ParamByName('@fydm').value := fydm;
    sp_cx_ksgcrs.Parameters.ParamByName('@sxwbz').value := sxwbz;
    sp_cx_ksgcrs.Open;
    gcrs := Sp_cx_ksgcrs.fieldbyname('gcrs').asinteger + 1;
  end;
  sbar1.Panels[7].text := inttostr(gcrs);
  if trim(ys.Text) <> '' then
  begin
    if (gcrs >= rs) and (rs <> 0) then
    begin
      application.messagebox('�ҳ������Ѿ��������ƣ�', 'ϵͳ��ʾ', mb_ok + MB_ICONWARNING);
      result := false;
    end
    else
    begin
      result := true;
    end;
  end;
end;

procedure Tfrm_mzgh.brdzEnter(Sender: TObject);
begin
  frm_func.changecolor(sender);
end;

procedure Tfrm_mzgh.brdzExit(Sender: TObject);
begin
  frm_func.restorecolor(sender);
  sfzxx.Address := Trim(brdz.Text);
end;

procedure Tfrm_mzgh.brdzKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 13 then
  begin
    if ((brdz.value <> '') and (brdz.value = prv_value)) or ((brdz.value = '') and (trim(brdz.text) <> '')) then
      ks.SetFocus;
    prv_value := brdz.value;
  end;
  if Key = 27 then
    kh.SetFocus;
end;

procedure Tfrm_mzgh.btn1Click(Sender: TObject);
begin
  BitBtn3.Click;
  Application.CreateForm(Tfrm_lstk, frm_lstk);
  try
    frm_lstk.showmodal;
  finally
    frm_lstk.free;
  end;
end;

procedure Tfrm_mzgh.btn2Click(Sender: TObject);
begin
  application.CreateForm(Tfrm_hisyydj, frm_hisyydj);
  try
    frm_hisyydj.ShowModal;
  finally
    frm_hisyydj.free;
  end;
end;

procedure Tfrm_mzgh.btn3Click(Sender: TObject);
begin
  BitBtn3.Click;
  Application.CreateForm(Tfrm_hyjk, frm_hyjk);
  try
    frm_hyjk.showmodal;
  finally
    frm_hyjk.free;
    frm_mzgh.proc_get_sjbh;
  end;
end;

procedure Tfrm_mzgh.b_sbhkClick(Sender: TObject);
var
  v_str: string;
begin
//  if (pub_yydm = '0019') or (pub_yydm = '0034') or (pub_yydm = '0055') or (pub_yydm = '0219') then
//  begin
//    v_str := ; //�ɶ�����
//  end
//  else
//  begin
//    v_str := '����';
//  end;
  lb_khy.Caption := '';
  if b_sbhk.Caption = 'ũ��' then
  begin
    //1.�ж�ũ���Ƿ���Է���   Pub_Is_zhsb
    if Trim(xm.Text) = '' then
    begin
      Application.MessageBox('����¼������', 'ϵͳ��ʾ', MB_OK + MB_ICONINFORMATION);
      xm.SetFocus;
      Exit;
    end;
  end;
  if func_pub_sbjs('�ҺŶ���', trim(kh.text)) then
  begin
    if pub_re.sblb = '1901' then //����ũ��
    begin
      xm.Text := pub_re.brxm; //��������
      xb.Text := Copy(pub_re.brxb, 0, 1); //�����Ա�
      dtp1.DateTime := StrToDateTime(pub_re.csrq); //��������
      sfzxx.Born := FormatDateTime('yyyy-MM-dd', dtp1.DateTime);
      nl.text := IntToStr(strtoint(copy(formatdatetime('yyyy-mm-dd', Frm_func.curr_date), 1, 4))
        - strtoint(copy(sfzxx.Born, 1, 4)));
      brdz.Text := pub_re.jtdz; //��ͥ��ַ
      sfzxx.Address := pub_re.jtdz; //��ֵ����֤���� 20140709 ���ơ�
      sfzxx.CardNo := pub_re.sfzh; //���֤��
      v_qtzjhm := pub_re.nhzh; //ũ��֤��
      Pub_Is_zhsb := True;
      combox_khlb.ItemIndex := combox_khlb.Items.IndexOf('ũ��');
      combox_jmlb.ItemIndex := combox_jmlb.Items.IndexOf('ũ��');
      zcf_tc.Text := formatfloat('0.00', v_mzzcftcje_nh);
    end
    else
    begin
      lb_khy.Caption := trim(pub_re.zhye);
      if Copy(lb_khy.Caption, pos('|', lb_khy.Caption) + 1, Length(lb_khy.Caption)) = '����' then //�ж��Ƿ�Ϊ�籣,��δ����
      begin
        v_mzghxstcbz := True;
        Pub_Is_zhsb := True;
        combox_khlb.ItemIndex := combox_khlb.Items.IndexOf('�籣');
        zcf_tc.Text := formatfloat('0.00', 6);
        xm.Text := pub_re.ybkxm;
      end;
      xm.SetFocus;
    end;
  end
end;

procedure Tfrm_mzgh.b_xxcxClick(Sender: TObject);
begin
  proc_get_kyhjbxx;
end;

//�ҳ�

procedure Tfrm_mzgh.BitBtn1Click(Sender: TObject);
begin
  zjhm := '';
  if pub_yydm = '0046' then
  begin
    if combox_khlb.Text = '�������' then
    begin
      v_mzghxstcbz := True;
      zcf_tc.Text := formatfloat('0.00', v_mzzcftcje_sb);
    end
    else
      if combox_khlb.Text = '��ũ��' then
      begin
        v_mzghxstcbz := True;
        zcf_tc.Text := formatfloat('0.00', v_mzzcftcje_nh);
      end
      else
        if combox_khlb.Text = '����ְ��' then
        begin
          v_mzghxstcbz := True;
          zcf_tc.Text := formatfloat('0.00', v_mzzcftcje_sb);
        end
        else
        begin
          zcf_tc.Text := '0';
        end;
  end;
  if ercigh then //����������ҽ�������ιҺ� 20140625 START
  begin
    erci := false;
    DM_data.qry_pub1.Close;
    DM_data.qry_pub1.SQL.Text := 'select * from mzgh_ghmx where CONVERT(char,sfrq,112)=CONVERT(char,GETDATE(),112)'
      + 'and tfbz=0 and ghdhm > 0 and bybh=' + #39 + trim(kh.text) + #39;
    DM_data.qry_pub1.Open;
    if DM_data.qry_pub1.RecordCount > 0 then
    begin
      erci := true;
      v_mzghxstcbz := True;
      zcf_tc.Text := formatfloat('0.00', v_mzzcftcje_sb);
    end;
  end; //����������ҽ�������ιҺ� 20140625 END
  if pub_yydm = '0015' then
  begin
    ssf.Text := formatfloat('0.00', StrToFloat(Trim(zcf.Text)) + jy_ghtzf + StrToFloat(Trim(ghf.Text)) - StrToFloat(Trim(zcf_tc.Text)) + kgl_sfbz + blf);
  end
  else
  begin
    ssf.Text := formatfloat('0.00', StrToFloat(Trim(zcf.Text)) + StrToFloat(Trim(ghf.Text)) + kgl_sfbz + blf);
  end;
  bitbtn1.Enabled := false;
  dm_data.qry_pub.close;
  dm_data.qry_pub.sql.text := 'select * from sys_jzzt';
  dm_data.qry_pub.open;
  if dm_data.qry_pub['jzzt'] then
  begin
    application.MessageBox('ϵͳ���ڽ�ת���ݣ����Ժ�!', '��ʾ', 0 + 48);
    Exit;
  end;
  if trim(nl.text) = '' then
    nl.text := '0';
  khzl := combox_khlb.text; //��������
  if sfxm_yz then
  begin
    proc_save_mzgh; // ����ҺŲ���ӡ�վ�
  end;
  BitBtn3.Click;
end;

procedure Tfrm_mzgh.SBar1DrawPanel(StatusBar: TStatusBar;
  Panel: TStatusPanel; const Rect: TRect);
begin
  if fpywbz then
    self.close;
  if panel.index = 9 then
  begin
    sbar1.Canvas.Font.color := clred;
    sbar1.Canvas.Font.size := 15;
    sbar1.Canvas.TextOut(Rect.Left, Rect.Top, inttostr(fpdqh));
  end;
end;

procedure Tfrm_mzgh.FormShow(Sender: TObject);
var
  v_yzrq1, v_yzrq2: string;
  hour, min, sec, msec: word;
  v_error: string;
  v_IsOk: Boolean;

begin
  //������������������
  if mzsfsfsyyy then
  begin
    v_error := '';
    //    v_IsOk := yybjUnit.func_ini_func_yy( v_error );
   //    if not v_IsOK then
   //      Application.MessageBox(PChar('������ʾ:' + v_error + ',�������Ա��ϵ!'), '������ʾ', 16);
  end;
  pnl_ks.Caption := '       ';
  Panel2.Caption := '       ';
  lab_yyh.Caption := '';
  lab_bl.Visible := pub_mzgh_bl; //��ʾ�Ƿ�Ϊ��¼
  KSMC := '';
  YSXM := '';
  ZLmc := '';
  SXBZ := FALSE;
  fpywbz := false;
  v_mzghxstcbz := false;
  Pub_Is_zhsb := false;
  BitBtn6.Visible := pub_yydm = '0028';
  proc_xtkg; //��ȡϵͳ����ֵ������combox_khlb����
  frm_mzgh.proc_get_sjbh; //�����վݺ�
  sp_cx_rsfy.close;
  sp_cx_rsfy.Parameters.ParamByName('@czy').value := pub_czydm;
  sp_cx_rsfy.Open;
  czygcrs := sp_cx_rsfy.fieldbyname('rs').asinteger;
  czyzfy := sp_cx_rsfy.fieldbyname('zfy').asfloat;
  sp_cx_rsfy.close;
  pri_week := dayofweek(frm_func.curr_date());
  if pri_week = 1 then pri_week := 8;
  DecodeTime(frm_func.curr_date(), Hour, Min, Sec, MSec);
  if hour >= 12 then //�����ȫ��,����ֻ������
  begin
    v_yzrq1 := inttostr(pri_week - 1) + '2';
    v_yzrq2 := v_yzrq1;
    v_sxw := '2';
  end
  else
  begin
    v_yzrq1 := inttostr(pri_week - 1) + '1';
    v_yzrq2 := inttostr(pri_week - 1) + '2';
    v_sxw := '1';
  end;

  sp_cx_dryzks.Close;
  sp_cx_dryzks.Parameters.ParamByName('@yzrq1').value := v_yzrq1;
  sp_cx_dryzks.Parameters.ParamByName('@yzrq2').value := v_yzrq2;
  sp_cx_dryzks.Open;
  case dayofweek(frm_func.curr_date()) of
    2: frm_mzgh.Caption := frm_mzgh.caption + '--����һ';
    3: frm_mzgh.Caption := frm_mzgh.caption + '--���ڶ�';
    4: frm_mzgh.Caption := frm_mzgh.caption + '--������';
    5: frm_mzgh.Caption := frm_mzgh.caption + '--������';
    6: frm_mzgh.Caption := frm_mzgh.caption + '--������';
    7: frm_mzgh.Caption := frm_mzgh.caption + '--������';
    1: frm_mzgh.Caption := frm_mzgh.caption + '--������';
  end;
  sbar1.Panels[9].text := inttostr(fpdqh);
  sbar1.Panels[1].text := pub_czyxm;
  sbar1.Panels[3].text := inttostr(czygcrs);
  sbar1.Panels[5].text := floattostr(czyzfy);

  //��ѯ��ǰ����Ա��ǰ���õ����뷨===================================================
  with qry_srf do
  begin
    close;
    sql.Clear;
    sql.Add('select srf from sys_czy where dm=''' + p_dm.pub_czydm + '''');
    open;
    if recordcount > 0 then
    begin
      xm.ImeName := trim(fieldbyname('srf').AsString);
    end;
    close;
  end;
  //====================================================================================
  kh.SetFocus;
  ssf.Enabled := False;
  zcf_tc.Enabled := False;
  zcf.Enabled := True;
  ghf.ReadOnly := not v_sfyxxgzcbdfy;
  zcf.ReadOnly := not v_sfyxxgzcbdfy;
  if pub_yydm = '0199' then
    CheckBox2.Checked := False;
  if pub_yydm = '0046' then
  begin
    brdz.Text := '�Ĵ�ʡ�������޽���';
    brdz.value := '�Ĵ�ʡ�������޽���';
    b_sbhk.Enabled := False;
    combox_khlb.Items.Clear;
    combox_khlb.items.Add('�������');
    combox_khlb.items.Add('����ְ��');
    combox_khlb.items.Add('��ũ��');
    combox_khlb.items.Add('����');
    zcf_tc.Text := '6.00';
  end;
  if pub_yydm = '0243' then
  begin
    brdz.Text := '�Ĵ�ʡ��ɽ��ɳ����';
    brdz.value := '�Ĵ�ʡ��ɽ��ɳ����';
  end;
  combox_jmlb.Text := '����';
end;

function Tfrm_mzgh.func_get_yybz(jzhh: string): boolean;
var
  s: Integer;
begin
  try
    DM_data.qry_pub.Close;
    DM_data.qry_pub.SQL.Text := 'select * from sys_yyxtsz ';
    DM_data.qry_pub.Open;
    if DM_data.qry_pub.RecordCount > 0 then
    begin
      s := DM_data.qry_pub.FieldByName('yysjjg').Value;
    end;
  except
  end;
  Result := False;
  DM_data.qry_pub.Close;
  DM_data.qry_pub.SQL.Text := 'select a.*,b.mc ghksmc,c.mc ghysmc,d.brnl,d.brdz,d.brzy from mzsf_mzgh a ' +
    'left join sys_ksdm b on a.ghks=b.dm ' +
    'left join sys_czy c on a.ghys=c.dm ' +
    'left join sys_kyh d on a.tmh=d.tmh ' +
    'where a.sfbz=0 and yxbz= 1 and a.tmh=' + #39 + jzhh + #39 +
    ' and dateadd(mi,' + inttostr(s) + ',yyrq)>=' + #39 + FormatDateTime('yyyy-MM-dd HH:mm:ss', Frm_func.curr_date) + #39 +
    ' order by a.yyrq';
  DM_data.qry_pub.Open;
  if DM_data.qry_pub.RecordCount > 0 then
  begin
    if application.MessageBox('��ѯ����ԤԼ�Һ�δ�շ���Ϣ,�Ƿ���ȡ?', 'ϵͳѡ��', mb_yesno + MB_ICONEXCLAMATION) = idyes then
    begin
      DM_data.qry_pub.First;
      yygh_id := DM_data.qry_pub.FieldByName('id').AsInteger;
      yygh_brxm := Trim(DM_data.qry_pub.FieldByName('brxm').AsString);
      yygh_brxb := Trim(DM_data.qry_pub.FieldByName('brxb').AsString);
      yygh_ghks := Trim(DM_data.qry_pub.FieldByName('ghks').AsString);
      yygh_ghks_mc := Trim(DM_data.qry_pub.FieldByName('ghksmc').AsString);
      yygh_ghys := Trim(DM_data.qry_pub.FieldByName('ghys').AsString);
      yygh_ghys_mc := Trim(DM_data.qry_pub.FieldByName('ghysmc').AsString);
      yygh_yyrq := DM_data.qry_pub.FieldByName('yyrq').AsDateTime;
      yygh_sfbz := DM_data.qry_pub.FieldByName('sfbz').AsBoolean;
      yygh_djrq := DM_data.qry_pub.FieldByName('djrq').AsDateTime;
      yygh_brnl := DM_data.qry_pub.FieldByName('brnl').AsString;
      yygh_brdz := DM_data.qry_pub.FieldByName('brdz').AsString;
      yygh_brzy := DM_data.qry_pub.FieldByName('brzy').AsString;
      prv_is_kyh := False;
      Result := True;
    end;
  end
  else
  begin
    if (length(trim(kh.text)) = 12) and (Copy(trim(kh.text), 1, 2) = 'yy') then
    begin
      application.MessageBox('δ��ѯ������ԤԼ�Һ���Ϣ,�����ԤԼ�շ�ʱ���ѹ�����ȷ���������ԤԼ��', 'ϵͳ��ʾ', mb_ok + MB_ICONHAND);
      kh.SetFocus;
      Exit;
    end;
  end;
end;

procedure Tfrm_mzgh.khDblClick(Sender: TObject);
begin
  //���������񽡿�����
  if Assigned(cwxx) then
    Zddqjjk_Start(100, jkkd_hd);
end;

procedure Tfrm_mzgh.khEnter(Sender: TObject);
var
  hour, min, sec, msec: word;
  v_yzrq1, v_yzrq2: string;
begin
  bc.Caption := '';
  lab_yyh.Caption := '';
  v_mzghxstcbz := False;
  Pub_Is_zhsb := false;
  combox_khlb.ItemIndex := -1;
  combox_khlb.Text := '';
  zcf_tc.Text := '0';
  v_qtzjhm := '';
  lb_khy.Caption := '';
  DecodeTime(frm_func.curr_date(), Hour, Min, Sec, MSec);
  if (SXBZ = FALSE) or (pub_yydm = '0003') then
  begin
    SXBZ := TRUE;
    if hour >= 12 then
    begin
      v_yzrq1 := inttostr(pri_week - 1) + '2';
      v_yzrq2 := v_yzrq1;
      v_sxw := '2';
    end
    else
    begin
      v_yzrq1 := inttostr(pri_week - 1) + '1';
      v_yzrq2 := inttostr(pri_week - 1) + '2';
      v_sxw := '1';
    end;
    sp_cx_dryzks.Close;
    sp_cx_dryzks.Parameters.ParamByName('@yzrq1').value := v_yzrq1;
    sp_cx_dryzks.Parameters.ParamByName('@yzrq2').value := v_yzrq2;
    sp_cx_dryzks.Open;
  end;
  KSMC := KS.TEXT;
  YSXM := YS.TEXT;
  pbbz := false;
  zb.text := '0';
  xb.text := '';
  xm.text := '';
  nl.text := '';
  brdz.Text := '';
  iskyh := false;
  ks.text := '';
  ys.text := '';
  ghf.text := '0.00';
  zcf.text := '0.00';
  ssf.text := '0.00';
  cbbl.checked := false;
  CheckBox2.Checked := False;
  blf := 0.00;
  fydm := '';
  ghdhm := '';
  ghks := '';
  ksdm := '';
  ysdm := '';
  kh.text := '';
  prv_is_kyh := False;
  Prv_mzfybl := '';
  if sp_cx_yspb.active then
    sp_cx_yspb.close;

  bitbtn3.Enabled := false;
  bitbtn1.enabled := false;
  btn3.Enabled := True;
  zydm := '';
  zymc := '';
  combox_jmlb.Text := '����';
  if pub_yydm = '0046' then
  begin
    brdz.Text := '�Ĵ�ʡ�������޽���';
    brdz.value := '�Ĵ�ʡ�������޽���';
  end;
  if pub_yydm = '0243' then
  begin
    brdz.Text := '�Ĵ�ʡ��ɽ��ɳ����';
    brdz.value := '�Ĵ�ʡ��ɽ��ɳ����';
  end;
  //���������񽡿�����
  if Assigned(cwxx) then
    Zddqjjk_Start(100, jkkd_hd);
//  frm_func.changecolor(sender);
end;

procedure Tfrm_mzgh.BitBtn3Click(Sender: TObject);
begin
  yygh_brxm := '';
  yygh_id := 0;
//  cbbl.enabled := false;
  xm.Enabled := False;
  xb.Enabled := False;
  nl.Enabled := False;
  btn3.Enabled := True;
  v_mzghxstcbz := False;
  Pub_Is_zhsb := false;
  combox_khlb.Text := '';
  zcf_tc.Text := '0';
  v_qtzjhm := '';
  lb_khy.Caption := '˫�������ɽ��н������Զ�ˢ������';
  combox_jmlb.Text := '����';
  if pub_yydm = '0046' then
  begin
    brdz.Text := '�Ĵ�ʡ�������޽���';
    brdz.value := '�Ĵ�ʡ�������޽���';
  end;
  kh.Enabled := true;
  kh.setfocus;
end;

procedure Tfrm_mzgh.xbExit(Sender: TObject);
begin
  frm_func.restorecolor(sender);
  if not (xb.Focused or b_xxcx.Focused or bitbtn2.focused or bitbtn3.focused or btn2.focused or btn3.focused or btn1.Focused or
    bitbtn6.focused or bbtn_yybj.Focused or cbbl.Focused or checkbox1.Focused or checkbox2.Focused) then
    if trim(xb.text) = '' then
    begin
      application.messagebox('�Ա���Ϊ�գ�����������', '����', mb_ok + mb_iconerror);
      //      xb.Enabled := True;
      xb.setfocus;
      xb.DroppedDown;
    end
    else
    begin
      if not ((Trim(xb.text) = '��') or (trim(xb.text) = 'Ů')) then
      begin
        if trim(xb.text) = '1' then
          xb.text := '��'
        else
          if trim(xb.text) = '2' then
            xb.text := 'Ů'
          else
          begin
            application.messagebox('�Ա������������������', '����', mb_ok + mb_iconerror);
            xb.setfocus;
            xb.SelectAll;
          end;
      end;
    end;
end;

procedure Tfrm_mzgh.xbKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 13 then
  begin
    dtp1.Enabled := True;
    dtp1.SetFocus;
  end;
  if Key = 27 then
    kh.SetFocus;
  if Key = VK_ESCAPE then //ESC������
  begin
    v_esc := True;
    BitBtn3.Click;
  end;
end;

procedure Tfrm_mzgh.cbblClick(Sender: TObject);
var
  qry_blf: TADOQuery;
begin
  if blf = 0 then
  begin
    try
      qry_blf := TADOQuery.Create(nil);
      with qry_blf do
      begin
        Connection := dm_data.ado_mydata;
        close;
        sql.Clear;
        sql.Add('select b.sfbz as blf from sys_xt_kg a,sys_kjsfxm b where a.Mzsfsfsblf = b.fydm');
        open;
        if recordcount = 0 then
        begin
          Application.MessageBox('������ϸ��û�����ò�����!', 'ϵͳ��ʾ', MB_OK + MB_ICONSTOP);
          if cbbl.Checked then cbbl.Checked := false;
          abort;
        end
        else
        begin
          blf := fieldbyname('blf').AsCurrency;
        end;
      end;
    finally
      qry_blf.Free;
    end;
  end;
  if cbbl.focused then
  begin
    if cbbl.checked then
    begin
      ssf.text := floattostr(strtofloat(ssf.text) + blf);
    end
    else
    begin
      ssf.text := floattostr(strtofloat(ssf.text) - blf);
      blf := 0;
    end;
    proc_jmxs;
  end;
  zcf.SetFocus;
end;

procedure Tfrm_mzgh.ksKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #32 then
  begin
    if ksmc <> '' then
      ks.text := ksmc;
  end
  else
    if Key = #13 then
      ys.SetFocus;
end;

procedure Tfrm_mzgh.N1Click(Sender: TObject);
var
  v_yzrq1, v_yzrq2: string;
  hour, min, sec, msec: word;
begin
  pri_week := dayofweek(frm_func.curr_date());
  if pri_week = 1 then pri_week := 8;
  DecodeTime(frm_func.curr_date(), Hour, Min, Sec, MSec);
  if hour >= 12 then
  begin
    v_yzrq1 := inttostr(pri_week - 1) + '2';
    v_yzrq2 := v_yzrq1;
    v_sxw := '2';
  end
  else
  begin
    v_yzrq1 := inttostr(pri_week - 1) + '1';
    v_yzrq2 := inttostr(pri_week - 1) + '2';
    v_sxw := '1';
  end;
  sp_cx_dryzks.Close;
  sp_cx_dryzks.Parameters.ParamByName('@yzrq1').value := v_yzrq1;
  sp_cx_dryzks.Parameters.ParamByName('@yzrq2').value := v_yzrq2;
  sp_cx_dryzks.Open;
end;

procedure Tfrm_mzgh.ysKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #27 then
    ks.SetFocus;
  if key = #32 then
  begin
    if ysxm <> '' then
      ys.text := ysxm;
  end
  else
    if key = #13 then
    begin
      if (trim(ys.text) = '') and (Trim(ks.Text) = '') then
        ks.SetFocus
      else
      begin
        if ghf.Visible then
          ghf.SetFocus
        else
          zcf.SetFocus;
      end;
    end;
end;

procedure Tfrm_mzgh.ysGrid2Exit(Sender: TObject);
begin
  proc_ys_process_ys;
  ysgrid2.Visible := false;
end;

procedure Tfrm_mzgh.ysGrid2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    if ghf.Visible then
      ghf.SetFocus
    else
      zcf.SetFocus;
  end;
end;

procedure Tfrm_mzgh.zbExit(Sender: TObject);
begin
  if not (ks.Focused or CheckBox2.Focused or cbbl.Focused) then
    proc_jmxs;
end;

procedure Tfrm_mzgh.zbKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    BitBtn1.SetFocus;
end;

procedure Tfrm_mzgh.Action1Execute(Sender: TObject);
begin
  if bitbtn1.Enabled then bitbtn1.click;
end;

procedure Tfrm_mzgh.Action2Execute(Sender: TObject);
begin
  if bitbtn3.Enabled then bitbtn3.click;
end;

procedure Tfrm_mzgh.xmEnter(Sender: TObject);
begin
  frm_func.changecolor(sender);
end;

procedure Tfrm_mzgh.xbEnter(Sender: TObject);
begin
  frm_func.changecolor(sender);
end;

procedure Tfrm_mzgh.ysEnter(Sender: TObject);
begin
  frm_func.changecolor(sender);
end;

procedure Tfrm_mzgh.zbEnter(Sender: TObject);
begin
  frm_func.changecolor(sender);
end;

procedure Tfrm_mzgh.nlEnter(Sender: TObject);
begin
  frm_func.changecolor(sender);
end;

procedure Tfrm_mzgh.nlExit(Sender: TObject);
var
  ls1, ls2, ageStr, agelenth: string;
  age, mon: Integer;
  b, c, temp: TDateTime;
  n, y, r: integer;
  d, e, f: integer;
begin
  frm_func.restorecolor(sender);
  //������Ϊ��ʱ����ʾ��ǰ��ݵĵ�һ��  20140619      START
  ageStr := Trim(nl.Text);
  
  if (ageStr = '') then
  begin
    dtp1.DateTime := StartOfTheYear(Now);
  end
  else //������Ϊ��ʱ����ʾ��ǰ��ݵĵ�һ��  20140619    END
  begin
    age := Pos('��', ageStr);
    if age > 0 then
    begin
      agelenth := LeftStr(ageStr, Pos('��', ageStr) - 1);
    //age := StrToInt(Copy(ageStr,0,(Length(ageStr)-2)));//���Ӷ������С���жϣ����ܳ�140
      age := StrToInt(agelenth);
      if age > 140 then
      begin
        nl.Clear;
        ShowMessage('���䲻�ܳ���140��');
        nl.SetFocus;
      end
      else
      begin
        dtp1.DateTime := nl.Csrq;
      end;
    end;

    /////////////////20140928  ZT  ��ӹ�������ĳ��ĳ��ʱ�����������Զ����//////////////////////////////
    mon := Pos('��', ageStr);
    b := now;
    if mon > 0 then
    begin
      ageStr := StringReplace(ageStr, '��', '|', [rfReplaceAll]);
      if Pos('|', ageStr) > 0 then
      begin
        n := StrToInt(Copy(ageStr, 1, Pos('|', ageStr) - 1));
      end
      else
      begin
        n := 0;
      end;
      ageStr := Copy(ageStr, Pos('|', ageStr) + 1, Length(ageStr));
      ageStr := StringReplace(ageStr, '��', '|', [rfReplaceAll]);
      if Pos('|', ageStr) > 0 then
      begin
        y := StrToInt(Copy(ageStr, 1, Pos('|', ageStr) - 1));
      end
      else
      begin
        y := 0;
      end;
      ageStr := Copy(ageStr, Pos('|', ageStr) + 1, Length(ageStr));
      ageStr := StringReplace(ageStr, '��', '|', [rfReplaceAll]);
      if Pos('|', ageStr) > 0 then
      begin
        r := StrToInt(Copy(ageStr, 1, Pos('|', ageStr) - 1));
      end
      else
      begin
        r := 0;
      end;
      n := StrToInt(FormatDateTime('yyyy', b)) - n;
      y := StrToInt(FormatDateTime('mm', b)) - y;
      r := StrToInt(FormatDateTime('dd', b)) - r;
      if r <= 0 then
      begin
        y := y - 1;
        if y <= 0 then
        begin
          y := 12 + y;
          n := n - 1;
        end;
        r := DaysInMonth(StrToDateTime(IntToStr(n) + '-' + inttostr(y) + '-1')) + r;
      end
      else
        if y <= 0 then
        begin
          y := 12 + y;
          n := n - 1;
        end;
      c := StrToDateTime(IntToStr(n) + '-' + inttostr(y) + '-' + inttostr(r));
      dtp1.DateTime := c;
    end;
  end;
  sfzxx.Born := FormatDateTime('yyyy-MM-dd', dtp1.DateTime);
end;

procedure Tfrm_mzgh.nlKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 13 then
    combox_khlb.SetFocus;
  if Key = 27 then
    kh.SetFocus;
end;

procedure Tfrm_mzgh.pdsfjz;
var
  dqsj, jzkssj, jzjssj: TDateTime; //��ǰʱ�䣬���￪ʼʱ�䣬����ʱ��
  I: Integer;
begin
  with DM_data do
  begin
    qry_pub.Close;
    qry_pub.SQL.Text := 'select * from sys_mzgh_jzsjsz ' +
      'where ((convert(char(10),kssj,108)<convert(char(10),getdate(),108)) and (convert(char(10),getdate(),108)<convert(char(10),jssj,108)) and bc=' + #39 + 'zw' + #39 + ')' +
      'or ' +
      '((convert(char(10), kssj, 108) < convert(char(10), getdate(), 108)) and (convert(char(10), getdate(), 108) < convert(char(10), ' + #39 + '23:59:59' + #39 + ', 108)) and bc = ' + #39 + 'ws' + #39 + ')' +
      'or ' +
      '((convert(char(10), ' + #39 + '00:00:00' + #39 + ', 108) < convert(char(10), getdate(), 108)) and (convert(char(10), getdate(), 108) < convert(char(10), jssj, 108)) and bc = ' + #39 + 'ws' + #39 + ')';
    qry_pub.Open;
    if (qry_pub.RecordCount > 0) or (Pos('����', Trim(ks.Text)) > 0) then
    begin
      jzbz := True;
    end
    else
    begin
      jzbz := False;
    end;
  end;
end;

function Tfrm_mzgh.proc_dqSfzxx(MyIdrOcx1: TMyIdrOcx): string;
var
  state, card: Integer;
begin
  try
    state := MyIdrOcx1.GetState;
    if state = 0 then
    begin
      card := MyIdrOcx1.ReadCard;
      if card = 0 then
      begin
        MyIdrOcx1.Start;
        sfzxx.Name := Trim(MyIdrOcx1.NameL); //����
        sfzxx.Sex := Trim(MyIdrOcx1.SexL); //�Ա�
        sfzxx.Nation := Trim(MyIdrOcx1.NationL); //����
        sfzxx.Born := Trim(MyIdrOcx1.BornL); //��������
        sfzxx.Address := Trim(MyIdrOcx1.Address); //��ַ
        sfzxx.CardNo := Trim(MyIdrOcx1.CardNo); //���֤��
        sfzxx.Police := Trim(MyIdrOcx1.Police); //��֤����
        sfzxx.Activity := Trim(MyIdrOcx1.ActivityL); //��Ч��
        MyIdrOcx1.Stop;
        Result := '';
      end
      else
        if card = -4 then
        begin
          Result := 'δ��⵽�豸��';
        end
        else
          if card = -6 then
          begin
            Result := 'δ��⵽���֤��';
          end
          else
          begin
            Result := '����ʧ�ܣ�';
          end;
    end
    else
      if state < 0 then
      begin
        Result := '���֤�����豸δ���ӣ�';
      end
      else
      begin
        Result := '�����豸�Ƿ�����������';
      end;
  except
    on E: Exception do
    begin
      Result := '�����쳣����';
      Abort;
    end;
  end;
end;

//�����վݺ�

procedure Tfrm_mzgh.proc_get_sjbh;
var
  v_sysl, v_sjbh, v_sjzh: string;
  S: string;
begin
  if pub_mzgh_bl then //�Ƿ�¼�վ�
    S := frm_func.func_get_sjbh(pub_czydm, v_sjlb, '2')
  else
    S := frm_func.func_get_sjbh(pub_czydm, v_sjlb, '1');

  if S = '' then
  begin
    MessageDlg('�վ������꣬���������վݣ�', mtWarning, [mbOK], 0);
    BitBtn2.Click;
    abort;
  end;
  v_sysl := Copy(S, Pos('S', S) + 1, Pos('Q', S) - Pos('S', S) - 2);
  v_sjbh := Copy(S, Pos('C', S) + 1, Pos('S', S) - Pos('C', S) - 2);
  v_sjzh := Copy(S, Pos('Z', S) + 1, Length(S));
  if v_sysl = '0' then
  begin
    fpywbz := true;
    MessageDlg('�վ������꣬���������վݣ�', mtWarning, [mbOK], 0);
    BitBtn2.Click;
    abort;
  end
  else
  begin
    fpzzh := StrToInt(v_sjzh);
    fpdqh := StrToInt(v_sjbh);
    sbar1.Panels[9].text := v_sjbh;
  end;
end;

function Tfrm_mzgh.proc_get_yyghxh(tmh: string; ysdm: string): string;
begin
  Result := '0';
  try
    DM_data.qry_pub1.Close;
    DM_data.qry_pub1.SQL.Text := 'exec mzgh_cx_bryyxx ' + #39 + tmh + #39 + ',' + #39 + ysdm + #39;
    DM_data.qry_pub1.open;
    if DM_data.qry_pub1.RecordCount > 0 then
      Result := DM_data.qry_pub1.FieldByName('xh').AsString;
  except
  end;
end;

procedure Tfrm_mzgh.proc_jmxs;
var
  zbje: real;
begin
  if not (b_xxcx.Focused or kh.Focused or BitBtn3.Focused or ks.Focused or ys.Focused or CheckBox2.Focused or cbbl.Focused) then
  begin
    try
      if Trim(zcf.Text) = '' then
        zcf.Text := '0';
      if Trim(zb.Text) = '' then
        zb.Text := '0';
      if Trim(ghf.Text) = '' then
        ghf.Text := '0';
      zbje := strtofloat(Trim(zb.Text));
      if not jkbz then
        kgl_sfbz := 0;
      if zbje > strtofloat(Trim(ssf.Text)) then
      begin
        pnl_ks.Caption := Trim(KS.TEXT) + '-' + Trim(fymc1) + '-' + Trim(fymc2);
        if cbbl.Checked = false then //��ȡ������
        begin
          panel2.Caption := '����:' + formatfloat('0.00', strtofloat(Trim(ssf.Text))) + 'Ԫ,' +
            '�Ҳ�' + formatfloat('0.00', zbje - strtofloat(Trim(ssf.Text))) + 'Ԫ';
        end
        else
        begin
          panel2.Caption := '����:' + formatfloat('0.00', strtofloat(Trim(ssf.Text))) + 'Ԫ,' +
            '�Ҳ�' + formatfloat('0.00', zbje - strtofloat(Trim(ssf.Text))) + 'Ԫ';
        end;
      end
      else
      begin
        pnl_ks.Caption := Trim(KS.TEXT) + '-' + Trim(fymc1) + '-' + Trim(fymc2);
        if cbbl.Checked = false then //��ȡ������
        begin
          if kgl_sfbz > 0 then
            panel2.Caption := '�Һŷ�' + formatfloat('0.00', strtofloat(Trim(ghf.Text))) + 'Ԫ,' +
              '����' + formatfloat('0.00', strtofloat(Trim(ssf.Text)) - strtofloat(Trim(ghf.Text)) - kgl_sfbz) + 'Ԫ,' +
              '���￨��' + formatfloat('0.00', kgl_sfbz) + 'Ԫ,' +
              '����:' + formatfloat('0.00', strtofloat(Trim(ssf.Text))) + 'Ԫ'
          else
            panel2.Caption := '�Һŷ�' + formatfloat('0.00', strtofloat(Trim(ghf.Text))) + 'Ԫ,' +
              '����' + formatfloat('0.00', strtofloat(Trim(ssf.Text)) - strtofloat(Trim(ghf.Text)) - kgl_sfbz) + 'Ԫ,' +
              '����:' + formatfloat('0.00', strtofloat(Trim(ssf.Text))) + 'Ԫ'
        end
        else
        begin
          if kgl_sfbz > 0 then
            panel2.Caption := '�Һŷ�' + formatfloat('0.00', strtofloat(Trim(ghf.Text))) + 'Ԫ,' +
              '����' + formatfloat('0.00', strtofloat(Trim(ssf.Text)) - strtofloat(Trim(ghf.Text)) - kgl_sfbz - blf) + 'Ԫ,' +
              '������' + formatfloat('0.00', blf) + 'Ԫ,' +
              '���￨��' + formatfloat('0.00', kgl_sfbz) + 'Ԫ,' +
              '����:' + formatfloat('0.00', strtofloat(Trim(ssf.Text))) + 'Ԫ'
          else
            panel2.Caption := '�Һŷ�' + formatfloat('0.00', strtofloat(Trim(ghf.Text))) + 'Ԫ,' +
              '����' + formatfloat('0.00', strtofloat(Trim(ssf.Text)) - strtofloat(Trim(ghf.Text)) - kgl_sfbz - blf) + 'Ԫ,' +
              '������' + formatfloat('0.00', blf) + 'Ԫ,' +
              '����:' + formatfloat('0.00', strtofloat(Trim(ssf.Text))) + 'Ԫ'
        end;
      end;
    except
      application.MessageBox('����������!������(���ֻ���С����)', '��ʾ:', mb_ok + mb_iconerror);
      zb.SetFocus;
      zb.SelectAll;
    end;

    if pub_yydm <> '0175' then
      if StrToFloat(Trim(zcf.Text)) < 0 then
      begin
        if not iskyh then
        begin
          application.MessageBox('�����������!', '��ʾ:', mb_ok + mb_iconerror);
          zcf.setfocus;
          zcf.SelectAll;
          Abort;
        end;
      end;
    //    if ( strtofloat( Trim( ssf.Text ) ) >= 10 ) and ( zb.Focused or BitBtn1.Focused ) then
    //    begin
    //      if application.MessageBox( 'Ӧ�ս�����10,�Ƿ����?', '����', mb_yesno + mb_iconerror ) = idyes then
    //      else
    //      begin
    //        zcf.setfocus;
    //        zcf.SelectAll;
    //        Abort;
    //      end;
    //    end;
  end;
  //�жϹҺ��Ƿ����20Ԫ START 20140625
  if (mzgh_sfxe > 0) and (StrToFloat(ssf.Text) > mzgh_sfxe) then
  begin
    BitBtn1.Enabled := false;
    Application.MessageBox(pchar('�Һŷ������Ѳ��ܴ���' + FloatToStr(mzgh_sfxe) + 'Ԫ�������¹Һ�'),
      'ϵͳ��ʾ', MB_OK + MB_ICONWARNING);
    Exit;
  end;
  //�жϹҺ��Ƿ����20Ԫ END 20140625
end;

procedure Tfrm_mzgh.BitBtn3Enter(Sender: TObject);
begin
//  cbbl.enabled := false;
end;

function Tfrm_mzgh.sfxm_yz: boolean;
var
  i: real;
begin
  result := true;
  if Trim(xm.text) = '' then
  begin
    application.messagebox('�����벡������', '����', mb_ok + mb_iconerror);
    xm.SetFocus;
    result := false;
    exit;
  end;
  if (pub_yydm <> '0028') and (Trim(xb.text) = '') then //���ݶ�ҽԺ�������벡���Ա�
  begin
    application.messagebox('�����벡���Ա�', '����', mb_ok + mb_iconerror);
    xb.SetFocus;
    result := false;
    exit;
  end;
  if fydm = '' then
  begin
    application.messagebox('������Һſ��һ�ָ��ҽ��', '����', mb_ok + mb_iconerror);
    result := false;
    exit;
  end;
  try
    i := strtofloat(trim(zcf.text));
  except
    application.messagebox('����������������䣡', '����', mb_ok + mb_iconerror);
    zcf.setfocus;
    result := false;
    exit;
  end;
  if (i < 0) and (not iskyh) then
  begin
    application.messagebox('����������������䣡', '����', mb_ok + mb_iconerror);
    zcf.setfocus;
    result := false;
  end;
  if (pub_yydm = '0046') and (Trim(combox_khlb.Text) = '') then
  begin
    application.messagebox('Ҫ�����¼�뿨�����࣡', '����', mb_ok + mb_iconerror);
    combox_khlb.setfocus;
    result := false;
  end;
  if (pub_yydm = '0015') and (Trim(combox_jmlb.Text) = '') then
  begin
    application.messagebox('Ҫ�����¼�����ְҵ��', '����', mb_ok + mb_iconerror);
    combox_jmlb.setfocus;
    result := false;
  end;
end;

procedure Tfrm_mzgh.ksgridDblClick(Sender: TObject);
begin
  ksgrid.OnExit(sender);
end;

procedure Tfrm_mzgh.BitBtn6Click(Sender: TObject);
begin
  application.CreateForm(Tfrm_mfgh, frm_mfgh);
  try
    frm_mfgh.ShowModal;
  finally
    frm_mfgh.free;
  end;
end;

procedure Tfrm_mzgh.ssfKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    zb.SetFocus;
  if Key = #27 then
    ks.SetFocus;
end;

procedure Tfrm_mzgh.dbctlClick(Sender: TObject);
begin
  dbctl.SetFocus;
  PBBZ := true;
  ks.text := Trim(sp_cx_dryzks.fieldbyname('zymc').asstring);
  ksdm := Trim(sp_cx_dryzks.fieldbyname('zydm').asstring);
  zydm := Trim(sp_cx_dryzks.fieldbyname('zydm').asstring);
  if not jzbz then
  begin
    fydm := Trim(sp_cx_dryzks.fieldbyname('ghfdm').asstring);
    ghzl := sp_cx_dryzks.fieldbyname('ghzl').asstring;
    if fydm = '' then
    begin
      Application.MessageBox('��ҽ����δ����ͨ�Һŷ�', '��ʾ', 16);
      ys.SetFocus;
      Exit;
    end;
  end
  else
  begin
    fydm := Trim(sp_cx_dryzks.fieldbyname('jzghfdm').asstring);
    ghzl := sp_cx_dryzks.fieldbyname('jzghzl').asstring;
    if fydm = '' then
    begin
      Application.MessageBox('��ҽ����δ�󶨼���Һŷ�', '��ʾ', 16);
      ys.SetFocus;
      Exit;
    end;
  end;
  ysprocess(2);
  //����ԡ�5����ͷ�Ŀ�ѧ��ҽ������ô�ҺŷѺ����Ѷ�Ϊ0
  if (pub_yydm = '0015') and (copy(trim(kh.text), 1, 1) = '5') then
  begin
    ghf.Text := '0';
    zcf.Text := '0';
  end;
end;

procedure Tfrm_mzgh.dqsfz;
var
  res: string;
begin
  try
    res := proc_dqSfzxx(MyIdrOcx1);
    if res = '' then
    begin
      if Trim(sfzxx.Name) <> '' then
      begin
        xm.Text := Trim(sfzxx.Name);
      end
      else
      begin
        xm.SetFocus;
        Exit;
      end;

      if Trim(sfzxx.Sex) <> '' then
      begin
        xb.Text := Trim(sfzxx.Sex);
      end
      else
      begin
        xb.SetFocus;
        Exit;
      end;

      if Trim(sfzxx.Born) <> '' then
      begin
        dtp1.DateTime := encodedate(StrToInt(Copy(sfzxx.Born, 1, 4)),
          StrToInt(Copy(sfzxx.Born, 7, 2)), StrToInt(Copy(sfzxx.Born, 11, 2)));
        nl.Csrq := dtp1.DateTime;
//        nl.text := IntToStr(strtoint(copy(formatdatetime('yyyy-mm-dd', Frm_func.curr_date), 1, 4))
//          - strtoint(copy(sfzxx.Born, 1, 4)));
        if combox_khlb.Items.Count > 0 then
        begin
          combox_khlb.setfocus;
        end
        else
          ks.SetFocus;
      end
      else
      begin
        nl.SetFocus;
      end;

      if Trim(sfzxx.Address) <> '' then
      begin
        brdz.text := Trim(sfzxx.Address);
        if combox_khlb.Items.Count > 0 then
        begin
          combox_khlb.setfocus
        end
        else
          ks.SetFocus;
      end;
    end
    else
    begin
      bc.Caption := res + 'ʹ���ֹ�¼��ģʽ';
      xm.SetFocus;
    end;
  except
    xm.SetFocus;
  end;
end;

procedure Tfrm_mzgh.dtp1Enter(Sender: TObject);
begin
  frm_func.changecolor(sender);
end;

procedure Tfrm_mzgh.dtp1Exit(Sender: TObject);
begin
  frm_func.restorecolor(sender);
  nl.Csrq := dtp1.DateTime;
  sfzxx.Born := FormatDateTime('yyyy-MM-dd', dtp1.DateTime);
end;

procedure Tfrm_mzgh.dtp1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 13 then
    nl.SetFocus;
  if Key = 27 then
    kh.SetFocus;
end;

procedure Tfrm_mzgh.ysgridDblClick(Sender: TObject);
begin
  ysgrid.OnExit(sender);
end;

procedure Tfrm_mzgh.ysGrid2DblClick(Sender: TObject);
begin
  ysGrid2.OnExit(sender);
end;

procedure Tfrm_mzgh.FormCreate(Sender: TObject);
begin
  if not qry_ksdm.Active then
  begin
    qry_ksdm.Open;
  end;

  //���� ������ 2006-4-13 ===============�յ���ϵͳ����,�Ƿ�ʹ����������
  DM_data.qry_pub.Close;
  DM_data.qry_pub.sql.Clear;
  DM_data.qry_pub.sql.Add('select mzsfsfsyyy from sys_xt_kg');
  DM_data.qry_pub.open;
  if DM_data.qry_pub.fieldbyname('mzsfsfsyyy').AsBoolean then
  begin
    bbtn_yybj.Visible := true;
  end
  else
  begin
    bbtn_yybj.Visible := false;
  end;
  DM_data.qry_pub.close;

  //����ְҵ
  jbqk_cx.Close;
  jbqk_cx.commandtext := 'select * from zysf_brzy order by dm';
  jbqk_cx.Open;
  combox_jmlb.Items.Clear;
  while not jbqk_cx.eof do
  begin
    combox_jmlb.items.Add(trim(jbqk_cx.fieldbyname('sm').asstring));
    jbqk_cx.next;
  end;
  qry_fydm.Open;
  jzbz := False;
end;

procedure Tfrm_mzgh.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  //�����������۹���,�����£�2006-4-12
  if bbtn_yybj.Visible = true then
    if Key = 118 then
      bbtn_yybjClick(nil);
  if Key = 117 then
    BitBtn6Click(nil);
  if Key = 27 then
    kh.SetFocus;
  if Key = VK_ESCAPE then //ESC������
  begin
    BitBtn3.Click;
  end;
end;

procedure Tfrm_mzgh.bbtn_yybjClick(Sender: TObject);
begin
  if mzsfsfsyyy then
  begin
    //����
//    yybjUnit.yybj( '', ClearSc );
  end;
  //  dsbdll_yy( 1, trim( formatfloat( '0.00', strtofloat( trim( ssf.Text ) ) ) ) + 'J' );
end;

end.

