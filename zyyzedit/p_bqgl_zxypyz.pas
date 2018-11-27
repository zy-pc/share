unit p_bqgl_zxypyz;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, StdCtrls, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxControls, cxGridCustomView,
  cxGrid, ExtCtrls, cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, ADODB, Mask, DBCtrls,
  Buttons, cxMemo, Grids, DBGridEh, GridsEh, cxLabel, ComCtrls, Menus,
  cxLookAndFeelPainters, cxButtons, cxCheckBox, DBGrids, QRCtrls, QuickRpt;

type
  Tfrm_zxypyz = class(TForm)
    qry_pub: TADOQuery;
    ds_kdys: TDataSource;
    qry_kdys: TADOQuery;
    ds_xzzyyz: TDataSource;
    ds_yzph: TDataSource;
    ds_jbxx: TDataSource;
    Panel7: TPanel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    ds_brxx: TDataSource;
    sp_xzzyyz: TADOStoredProc;
    sp_ysdm: TADOStoredProc;
    ds_yf: TDataSource;
    sp_yz_plzx: TADOStoredProc;
    sp_sczbsj: TADOStoredProc;
    sp_sjzb: TADOStoredProc;
    sp_clsjzb: TADOStoredProc;
    Ds_plzx: TDataSource;
    ad_plcl: TADODataSet;
    sp_brxx: TADOStoredProc;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    groupbox8: TPanel;
    Panel8: TPanel;
    Button4: TButton;
    Panel4: TPanel;
    Shape1: TShape;
    cxCheckBox3: TcxCheckBox;
    cxCheckBox6: TcxCheckBox;
    cxCheckBox5: TcxCheckBox;
    cxCheckBox4: TcxCheckBox;
    cxCheckBox7: TcxCheckBox;
    cxCheckBox1: TcxCheckBox;
    cxCheckBox2: TcxCheckBox;
    DBGridEh1: TDBGridEh;
    Panel3: TPanel;
    Button1: TButton;
    Button3: TButton;
    groupbox2: TPanel;
    Panel5: TPanel;
    Label4: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit1: TDBEdit;
    bt_zxjg: TcxButton;
    Panel6: TPanel;
    cxButton1: TcxButton;
    cxButton6: TcxButton;
    cxButton3: TcxButton;
    bt_jf: TcxButton;
    b_move: TcxButton;
    cxGrid2: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridDBColumn12: TcxGridDBColumn;
    cxGridDBTableView2DBzhzxsj: TcxGridDBColumn;
    cxGridDBTablebrxm: TcxGridDBColumn;
    cxGridDBTableView2DBph: TcxGridDBColumn;
    cxGridDByzsx: TcxGridDBColumn;
    cxGridDBTableView2drcs: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    TabSheet2: TTabSheet;
    ds_fymx: TDataSource;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1sfrq: TcxGridDBColumn;
    cxGrid1DBTableView1fymc: TcxGridDBColumn;
    cxGrid1DBTableView1fyje: TcxGridDBColumn;
    cxGrid1DBTableView1zfje: TcxGridDBColumn;
    cxGrid1DBTableView1mc: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    cxButton5: TcxButton;
    qry_fymx: TADOQuery;
    Panel1: TPanel;
    Label5: TLabel;
    Label1: TLabel;
    ProgressBar1: TProgressBar;
    cxLabel1: TcxLabel;
    Panel2: TPanel;
    cxButton4: TcxButton;
    cxGrid1DBTableView1czks: TcxGridDBColumn;
    cxGrid1DBTableView1dw: TcxGridDBColumn;
    cxGrid1DBTableView1tfbz: TcxGridDBColumn;
    QuickRep1: TQuickRep;
    QRBand4: TQRBand;
    sp_jbxx: TADOStoredProc;
    DetailBand1: TQRBand;
    qry_yjddy: TADOQuery;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText4: TQRDBText;
    ColumnHeaderBand1: TQRBand;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel23: TQRLabel;
    PageHeaderBand1: TQRBand;
    QRLabel22: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel24: TQRLabel;
    QRDBText14: TQRDBText;
    QRLabel13: TQRLabel;
    QRDBText12: TQRDBText;
    QRLabel1: TQRLabel;
    QRDBText13: TQRDBText;
    QRLabel14: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel16: TQRLabel;
    qrl_bqmc: TQRLabel;
    rtl_czks: TQRLabel;
    rtl_sfrq: TQRLabel;
    QRLabel2: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel3: TQRLabel;
    QRDBText6: TQRDBText;
    cxGrid1DBTableView1yjqrbz: TcxGridDBColumn;
    procedure Button1Click(Sender: TObject);
    procedure ds_brxxDataChange(Sender: TObject; Field: TField);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure Button3Click(Sender: TObject);
    procedure DBGridEh1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Button4Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure cxButton1Click(Sender: TObject);
    procedure b_moveClick(Sender: TObject);
    procedure cxButton6Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure bt_jfClick(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure bt_zxjgClick(Sender: TObject);
    procedure cxGridDBTableView2CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure cxGridDBTableView2DblClick(Sender: TObject);
    procedure DBGridEh1KeyPress(Sender: TObject; var Key: Char);
    procedure cxButton5Click(Sender: TObject);
    procedure TabSheet2Show(Sender: TObject);
    procedure cxGrid1DBTableView1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure cxCheckBox7MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure sp_brxxAfterScroll(DataSet: TDataSet);
  private
    procedure sjzb;
    procedure sjzb1(zyh, lb: string);
    procedure czxy;
    procedure yzzx(zxsj, qyyf: string);
    procedure pljr(cfph, ypdm: string);
    procedure move_dqph;
    procedure del_zxbh;
    procedure del_yjf;
    procedure p_del_yjf;
        { Private declarations }
  public //y��ʾѡ��,n��ʾδѡ��
    tmh, zyh, xzph, kdys, ysmc, yfmc, str_zyh: string;
    xhlist, zyhlist, phlist, yzsx: string; //zyhlist ���μǷ���Ա  phlist���μǷ����� //���xhlist
    xzbz: string; //y��ʾѡ��,n��ʾδѡ��
    curr_datetime: Tdatetime;

    pldh, _phlist: string;

    zxsj, qyyf: string;
    iszx: boolean;

    cx_zyh, yz_select: string;
    del_curr_ph: string;
    del_bz: integer; //0 ����δɾ����1����ɾ����Ŀ
        { Public declarations }
  end;

var
  frm_zxypyz: Tfrm_zxypyz;
  yzlb: string; //ҽ�����
  jryzxph: string; //������ִ��ҽ������
  isch: boolean;
  _zxbh: string; //ִ�б��(ȷ����ǰִ��ҽ���ı��)

implementation

{$R *.dfm}
uses p_func, p_dm, p_yzzxjg, p_syfz, p_yzzxd, p_yzyzx,
  p_yjddy, p_zyplcffy, P_main, p_bylsyz;

procedure Tfrm_zxypyz.p_del_yjf;
var
  str: string;
begin
//-----���ݿɲ���У��-----
  str := '�Ƿ��Ƴ������ѼǷ�ҽ��?';
  if application.messagebox(pchar(str), '��ʾ��Ϣ', mb_yesNo + mb_iconinformation) = IDyes then
  begin
  //ɾ�������ѼǷ�
    sp_xzzyyz.DisableControls;
    sp_xzzyyz.First;
    del_bz := 0;
    while not sp_xzzyyz.Eof do
    begin
      del_yjf;
      if del_bz = 1 then //ɾ����Ŀ--ɾ����ִ̨������
      begin
        del_curr_ph := sp_xzzyyz.FieldByName('ph').AsString;
        del_zxbh;
      end;
      del_bz := 0;
      sp_xzzyyz.Next;
    end;
    sp_xzzyyz.EnableControls;

    sp_xzzyyz.Close;
    sp_xzzyyz.Parameters.ParamValues['@zxbh'] := _zxbh;
    sp_xzzyyz.Open;
  end;
  frm_zxypyz.cxgriddbtableview2.DataController.Groups.FullExpand;
end;


procedure Tfrm_zxypyz.del_zxbh;
begin
  with dm_data do
  begin
    try
      qry_pub.Close;
      qry_pub.SQL.Text := 'delete zybl_zyyz_zxzt where zxph=' + #39 + del_curr_ph + #39;
      qry_pub.execsql;
    except
      application.MessageBox('ɾ��ûѡ���ִ������״̬ʱ����!', '��ʾ��Ϣ', 0 + 16);
      qry_pub.Close;
    end;
  end;
end;


procedure Tfrm_zxypyz.del_yjf;
begin
//�Ƴ�����ҽ������δѡ���ѼǷ�
  if sp_xzzyyz.FieldByName('drzxcs').AsInteger > 0 then
  begin
    del_bz := 1;
    sp_xzzyyz.Delete;
  end;
end;


procedure Tfrm_zxypyz.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
    //�ر�ʱɾ��ִ��״̬
  qry_pub.Close;
  qry_pub.SQL.Text := 'delete from zybl_zyyz_zxzt where zxbh = ' + #39 + _zxbh + #39;
  qry_pub.ExecSQL;
end;

procedure Tfrm_zxypyz.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    selectnext(activecontrol, true, true);
end;

procedure Tfrm_zxypyz.FormShow(Sender: TObject);
begin
    //����ȫ����Ա
  QuickRep1.Visible := false;
  PageControl1.ActivePage := Tabsheet1;
  isch := false;
  sp_brxx.Close;
  sp_brxx.Parameters.ParamByName('@sr_bqdm').Value := trim(pub_bqdm);
  sp_brxx.Open;
  if zyh <> '' then
  begin
    if sp_brxx.RecordCount > 0 then
    begin
      isch := true;
      if sp_brxx.Locate('zyh', zyh, []) then
      begin
        sp_brxx.Edit;
        sp_brxx.FieldByName('xz').Value := 1;
        sp_brxx.Post;
      end;
    end;
  end;
  cx_zyh := zyh;
  isch := true;
  _zxbh := pub_czydm + formatdatetime('ss', now);
end;

procedure Tfrm_zxypyz.sjzb1(zyh: string; lb: string);
begin
  if zyh <> '' then
  begin
    sp_sjzb.Close;
    sp_sjzb.Parameters.ParamByName('@zyh').Value := zyh;
    sp_sjzb.Parameters.ParamByName('@czydm').Value := pub_czydm;
    sp_sjzb.Parameters.ParamByName('@zxbh').Value := _zxbh;
    sp_sjzb.Parameters.ParamByName('@yzselect').Value := yz_select;
    sp_sjzb.Open;
    if sp_sjzb.FieldByName('jg').AsString <> '0' then
    begin
      showmessage(sp_sjzb.FieldByName('jg').AsString);
      abort;
    end;
  end;
end;

procedure Tfrm_zxypyz.sp_brxxAfterScroll(DataSet: TDataSet);
begin
  if sp_brxx.RecordCount > 0 then
    cx_zyh := sp_brxx.FieldByName('zyh').AsString;
end;

procedure Tfrm_zxypyz.TabSheet2Show(Sender: TObject);
begin
  qry_fymx.Close;
  qry_fymx.Parameters.ParamByName('zyh').Value := cx_zyh;
  qry_fymx.Open;
end;

procedure Tfrm_zxypyz.czxy;
begin
  if not sp_xzzyyz.Active then
  begin
    showMessage('�޿ɲ�������');
    abort;
  end
  else
    if sp_xzzyyz.RecordCount < 1 then
    begin
      showMessage('�޿ɲ�������');
      abort;
    end;

end;

procedure Tfrm_zxypyz.yzzx(zxsj, qyyf: string);
var
  fyph: string;
  dqph: string;
begin
    //-----���ݿɲ���У��-----
  czxy;
    //----��֯ѡ��ִ������-------------
  _phlist := '''' + 'a' + '''';
  sp_xzzyyz.DisableControls;
  sp_xzzyyz.First;

  while not sp_xzzyyz.Eof do
  begin
    if dqph <> sp_xzzyyz.FieldByName('ph').AsString then
    begin
      if trim(sp_xzzyyz.FieldByName('ph').AsString) <> '' then
        _phlist := _phlist + ',' + '''' + sp_xzzyyz.FieldByName('ph').AsString + '''';
    end;
    dqph := sp_xzzyyz.FieldByName('ph').AsString;
    sp_xzzyyz.Next;
  end;
  sp_xzzyyz.EnableControls;
  if _phlist = ('''' + 'a' + '''') then
  begin
    showMessage('�޿�ִ��ҽ��!������ѡ��!');
    abort;
  end;
  //��ѯϵͳ״
  with dm_data.qry_pub do
  begin
    close;
    sql.clear;
    sql.text := 'select * from sys_jzzt';
    open;
  end;
  if dm_data.qry_pub['jzzt'] then
  begin
    application.MessageBox('ϵͳ���ڽ�ת�������Ժ�!', '��ʾ', 0 + 48);
    button1.Enabled := true;
    abort;
  end;
//ҩƷ��������
  ad_plcl.close;
  ad_plcl.commandtext := 'select * from zyxyf_pltzb where ksdm=' + #39 + pub_bqdm + #39 + ' and tzbz=0';
  if qyyf <> '' then
  begin
    ad_plcl.commandtext := ad_plcl.commandtext + ' and yfdm=' + #39 + qyyf + #39;
  end;
  ad_plcl.Open;
  if ad_plcl.isempty then
  begin
    fyph := get_sjh(pub_czydm);
  end
  else
  begin
    fyph := ad_plcl['pldh'];
  end;
  pljr(fyph, qyyf);

  sp_yz_plzx.Close;
  sp_yz_plzx.Parameters.ParamByName('@ph').Value := _phlist;
  sp_yz_plzx.Parameters.ParamByName('@zxbh').Value := _zxbh;
  sp_yz_plzx.Parameters.ParamByName('@pldh').Value := fyph;
  sp_yz_plzx.Parameters.ParamByName('@zxsj').Value := zxsj;
  sp_yz_plzx.Parameters.ParamByName('@qyyf').Value := qyyf;
  sp_yz_plzx.Open;
  try
    application.CreateForm(Tfrm_yzzxjg, frm_yzzxjg);
    frm_yzzxjg.ShowModal;
  finally
    frm_yzzxjg.Free;
  end;
  bt_jf.enabled := false;
  bt_zxjg.enabled := true;
  b_move.enabled := false;

end;

procedure Tfrm_zxypyz.pljr(cfph, ypdm: string);
begin
  if ad_plcl.isempty then
  begin
    ad_plcl.Append;
    ad_plcl['ksdm'] := pub_bqdm;
    ad_plcl['kssj'] := frm_func.curr_date();
    ad_plcl['pldh'] := cfph;
    ad_plcl['tzbz'] := 0;
    ad_plcl['jjtz'] := 0;
    ad_plcl['yfdm'] := ypdm;
    ad_plcl.post;
  end;
end;

procedure Tfrm_zxypyz.cxButton1Click(Sender: TObject);
begin
  application.CreateForm(Tfrm_syfz, frm_syfz);
  try
    frm_syfz.yzsx := yzsx;
    frm_syfz.ShowModal;
  finally
    frm_syfz.Free;
  end;
end;

procedure Tfrm_zxypyz.cxButton3Click(Sender: TObject);
begin
  application.CreateForm(Tfrm_bylsyz, frm_bylsyz);
  try
    frm_bylsyz.cxzyh := sp_brxx.FieldByName('zyh').AsString;
    frm_bylsyz.cxtmh:= sp_brxx.FieldByName('tmh').AsString;
    frm_bylsyz.cxbch:= sp_brxx.FieldByName('bch').AsString;
    frm_bylsyz.edit1.Text := sp_brxx.FieldByName('brxm').AsString;
    frm_bylsyz.ShowModal;
  finally
    frm_bylsyz.Free;
  end;
end;

procedure Tfrm_zxypyz.cxButton4Click(Sender: TObject);
var
  czks: string;
begin
  qry_yjddy.Close;
  qry_yjddy.Open;
  qry_fymx.First;
  while not qry_fymx.Eof do
  begin
    if qry_fymx.FieldByName('tfbz').AsBoolean then
    begin
      if qry_fymx.FieldByName('yjqrbz').AsString = '��' then //ҽ��ȷ�ϱ�־,��:δȷ�Ϸ��ÿ������´�ӡ
      begin
        qry_yjddy.Append;
        qry_yjddy.FieldByName('id').AsString := IntToStr(qry_fymx.FieldByName('id').AsInteger);
        qry_yjddy.FieldByName('fymc').AsString := qry_fymx.FieldByName('fymc').AsString;
        qry_yjddy.FieldByName('dw').AsString := qry_fymx.FieldByName('dw').AsString;
        qry_yjddy.FieldByName('fyje').AsFloat := qry_fymx.FieldByName('fyje').AsFloat;
        qry_yjddy.FieldByName('sfrq').AsString := formatdatetime('', qry_fymx.FieldByName('sfrq').AsDateTime);
        czks := qry_fymx.FieldByName('czks').AsString;
        qry_fymx.Edit;
        qry_fymx.FieldByName('tfbz').AsBoolean := false;
      end
      else
        Application.MessageBox('��ʾ:����Ŀҽ�������Ѿ�ȷ��,�����ٴ�ӡ!', '��ʾ', MB_ICONINFORMATION);
    end;

    qry_fymx.Next;
  end;
  qrl_bqmc.Caption := pub_bqmc;
  rtl_czks.Caption := czks;
  rtl_sfrq.Caption := formatdatetime('', frm_func.curr_date);
  QRLabel22.Caption := pub_yymc + 'ҽ��ȷ�ϵ�';
  QuickRep1.Preview;
  qry_yjddy.Close;
end;

procedure Tfrm_zxypyz.cxButton5Click(Sender: TObject);
begin
  try
    application.createform(tfrm_zyplcffy, frm_zyplcffy);
    frm_zyplcffy.showmodal;
  finally
    frm_zyplcffy.free;
  end;
end;

procedure Tfrm_zxypyz.bt_jfClick(Sender: TObject);
begin
//ҽ��Ԥִ��
  iszx := false;
  zxsj := '';
  qyyf := '';
  try
    application.CreateForm(Tfrm_yzyzx, frm_yzyzx);
    frm_yzyzx.ShowModal;
    if iszx then
    begin
      yzzx(zxsj, qyyf);
    end;
  finally
    frm_yzyzx.Free;
  end;
end;

procedure Tfrm_zxypyz.bt_zxjgClick(Sender: TObject);
begin
  try
    application.CreateForm(Tfrm_yzzxjg, frm_yzzxjg);
    frm_yzzxjg.ShowModal;
  finally
    frm_yzzxjg.Free;
  end;
end;

procedure Tfrm_zxypyz.b_moveClick(Sender: TObject);
var
  str, curr_ph: string;
  len_ph: integer;
begin
  button4.Enabled := true;
     //-----���ݿɲ���У��-----
  czxy;
  sp_xzzyyz.First;
  str := '�Ƿ�ȡ��������ִ�����ŵı��μǷ�?';
  if application.messagebox(pchar(str), '��ʾ��Ϣ', mb_yesNo + mb_iconinformation) = IDyes then
  begin
    qry_pub.Close;
    qry_pub.SQL.Text := 'select * from zybl_zyyz_zxzt where zxbh = ' + #39 + _zxbh + #39;
    dm_data.ado_mydata.BeginTrans;
    try
      qry_pub.open;
      dm_data.ado_mydata.CommitTrans;
            //�Ƴ�ѡ������
      sp_xzzyyz.First;
      while not sp_xzzyyz.Eof do
      begin
        if sp_xzzyyz.FieldByName('drzxcs').AsInteger > 0 then
        begin
          sp_xzzyyz.Delete;
        end
        else
        begin
          sp_xzzyyz.Next;
        end;
      end;
    except
      application.MessageBox('�޸ĸ�ִ������״̬ʱ����!', '��ʾ��Ϣ', 0 + 16);
      dm_data.ado_mydata.RollbackTrans;
      qry_pub.Close;
    end;
    cxgriddbtableview2.DataController.Groups.FullExpand;
  end;
end;

procedure Tfrm_zxypyz.move_dqph;
var
  str, curr_ph: string;
  len_ph: integer;
begin
  button4.Enabled := true;
   //-----���ݿɲ���У��-----
  czxy;
  curr_ph := sp_xzzyyz.FieldByName('ph').AsString;
  str := '�Ƿ�ȡ��ҽ������:' + curr_ph + '�ı��μǷ�?';
  if application.messagebox(pchar(str), '��ʾ��Ϣ', mb_yesNo + mb_iconinformation) = IDyes then
  begin
    qry_pub.Close;
    qry_pub.SQL.Text := 'select * from zybl_zyyz_zxzt where zxph=' + #39 + curr_ph + #39;
    qry_pub.Open;
    dm_data.ado_mydata.BeginTrans;
    try
      if qry_pub.RecordCount > 0 then
        qry_pub.Delete;
      dm_data.ado_mydata.CommitTrans;
      qry_pub.Close;
      sp_xzzyyz.DisableControls;
      sp_xzzyyz.First;
      while not sp_xzzyyz.Eof do
      begin
        if sp_xzzyyz.FieldByName('ph').AsString = curr_ph then
        begin
          sp_xzzyyz.Delete;
        end
        else
        begin
          sp_xzzyyz.Next;
        end;
      end;
      sp_xzzyyz.EnableControls;
    except
      application.MessageBox('�޸ĸ�ִ������״̬ʱ����!', '��ʾ��Ϣ', 0 + 16);
      dm_data.ado_mydata.RollbackTrans;
      qry_pub.Close;
    end;
    cxgriddbtableview2.DataController.Groups.FullExpand;
  end;
end;

procedure Tfrm_zxypyz.cxButton6Click(Sender: TObject);
begin
  close;
end;


procedure Tfrm_zxypyz.cxCheckBox7MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  button4.Enabled := true;
end;

procedure Tfrm_zxypyz.cxGrid1DBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if strtofloat(AViewInfo.RecordViewInfo.GridRecord.Values[4]) < 0 then
    ACanvas.Brush.Color := $00808040;

end;

procedure Tfrm_zxypyz.cxGridDBTableView2CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if strtoint(AViewInfo.RecordViewInfo.GridRecord.Values[15]) > 0 then
    ACanvas.Brush.Color := $00808040;
end;

procedure Tfrm_zxypyz.cxGridDBTableView2DblClick(Sender: TObject);
begin
  move_dqph;
end;

procedure Tfrm_zxypyz.ds_brxxDataChange(Sender: TObject; Field: TField);
begin
//    if isch then
//    begin
//        if not ds_brxx.DataSet.IsEmpty then
//        begin
//            sp_jbxx.Active := false;
//            sp_jbxx.Parameters.ParamByName('@zyh').Value := sp_brxx.FieldByName('zyh').AsString;
//            sp_jbxx.Open;
//            zyh := sp_brxx.FieldByName('zyh').AsString;
//            tmh := sp_brxx.FieldByName('tmh').AsString;
//        end;
//    end;
end;

procedure Tfrm_zxypyz.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if trim(sp_yz_plzx.FieldByName('jg').AsString) = 'ʧ��' then
    DBGridEh1.Canvas.Brush.Color := clskyblue
  else
    DBGridEh1.Canvas.Brush.Color := clMoneyGreen;
  DBGridEh1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure Tfrm_zxypyz.DBGridEh1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    if sp_brxx.Active then
    begin
      if DBGridEh1.Hint = '�س�ֻ��ʾѡ����' then
      begin
        sp_brxx.Filtered := false;
        sp_brxx.Filter := ' xz = 1';
        sp_brxx.Filtered := true;
        DBGridEh1.Hint := '�س���ʾȫ������';
      end
      else
      begin
        sp_brxx.Filtered := false;
        DBGridEh1.Hint := '�س�ֻ��ʾѡ����';
      end;
    end;
  end;
end;

procedure Tfrm_zxypyz.DBGridEh1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  button4.Enabled := true;
  if button = mbleft then
  begin
    if sp_brxx.Active then
    begin
      if sp_brxx.RecordCount > 0 then
      begin
        cx_zyh := sp_brxx.FieldByName('zyh').Value;
        sp_brxx.Edit;
        sp_brxx.FieldByName('xz').Value := not sp_brxx.FieldByName('xz').Value;
        sp_brxx.Post;
      end;
    end;
  end;
end;

procedure Tfrm_zxypyz.Button1Click(Sender: TObject);
begin
  button4.Enabled := true;
  if sp_brxx.Active then
  begin
    sp_brxx.DisableControls;
    sp_brxx.First;
    while not sp_brxx.Eof do
    begin
      sp_brxx.Edit;
      sp_brxx.FieldByName('xz').Value := 1;
      sp_brxx.Post;
      sp_brxx.Next;
    end;
    sp_brxx.EnableControls;
  end;
end;

procedure Tfrm_zxypyz.Button3Click(Sender: TObject);
begin
  button4.Enabled := true;
  if sp_brxx.Active then
  begin
    sp_brxx.Filtered := false;
    sp_brxx.DisableControls;
    sp_brxx.First;
    while not sp_brxx.Eof do
    begin
      sp_brxx.Edit;
      sp_brxx.FieldByName('xz').Value := 0;
      sp_brxx.Post;
      sp_brxx.Next;
    end;
    sp_brxx.EnableControls;
  end;
end;

procedure Tfrm_zxypyz.Button4Click(Sender: TObject);
begin
  yz_select := '';
  if cxCheckBox1.Checked then
    yz_select := trim(cxCheckBox1.Caption + ',');
  if cxCheckBox2.Checked then
    yz_select := yz_select + trim(cxCheckBox2.Caption + ',');
  if cxCheckBox3.Checked then
    yz_select := yz_select + trim(cxCheckBox3.Caption + ',');
  if cxCheckBox4.Checked then
    yz_select := yz_select + trim(cxCheckBox4.Caption + ',');
  if cxCheckBox5.Checked then
    yz_select := yz_select + trim(cxCheckBox5.Caption + ',');
  if cxCheckBox6.Checked then
    yz_select := yz_select + trim(cxCheckBox6.Caption + ',');
  if cxCheckBox7.Checked then
    yz_select := yz_select + trim(cxCheckBox7.Caption);
  button4.Enabled := false;
    //���ݲ�ͬѡ���ѯ��Ӧҽ��,,,�Լ�׼��ִ������
    //-----------calmhawk----2008-09-03---ɾ��׼������-------
  sp_sczbsj.close;
  sp_sczbsj.Parameters.ParamValues['@zxbh'] := _zxbh;
  sp_sczbsj.Parameters.ParamValues['@zyh'] := '';
  sp_sczbsj.ExecProc;

  _phlist := '';
  //--------����׼��-----------------
  sp_brxx.DisableControls;
  sjzb;
  sp_brxx.EnableControls;
  sp_xzzyyz.EnableControls;
  sp_xzzyyz.Close;
  sp_xzzyyz.Parameters.ParamValues['@zxbh'] := _zxbh;
  sp_xzzyyz.Open;
  bt_jf.enabled := true;
  bt_zxjg.enabled := false;
  b_move.enabled := true;
  cxgriddbtableview2.DataController.Groups.FullExpand;
  if sp_brxx.Active then
  begin
    sp_brxx.Locate('zyh', cx_zyh, []);
    DBGridEh1.SetFocus;
  end;
end;

//����׼������

procedure Tfrm_zxypyz.sjzb;
begin
  sp_brxx.Filtered := false;
  sp_brxx.Filter := ' xz = 1';
  sp_brxx.Filtered := true;

  ProgressBar1.Max := sp_brxx.RecordCount;
  ProgressBar1.Position := 0;
  sp_brxx.First;
  while not sp_brxx.Eof do
  begin
    sjzb1(sp_brxx.FieldByName('zyh').AsString, yzlb);
    ProgressBar1.Position := ProgressBar1.Position + 1;
    cxLabel1.Caption := '����׼�������(' + formatfloat('#0.00', ProgressBar1.Position / ProgressBar1.Max * 100) + '%)';
    cxLabel1.Refresh;
    sp_brxx.Next;
  end;
  cxLabel1.Caption := '����׼�������(100%)';
  sp_brxx.Filtered := false;
  bt_jf.Enabled := true;

end;

end.

