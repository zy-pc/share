unit p_blsj_ypsj;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls, cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, DB, cxDBData, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxCalendar, ADODB, ExtCtrls, QuickRpt, QRCtrls, ComCtrls, DBCtrls, {cxGridExportLink,} cxDBEdit, Mask,
  cxCheckListBox, Menus, cxCheckBox, DBGridEhGrouping, GridsEh, DBGridEh, Grids, DBGrids, cxLookAndFeels, cxLookAndFeelPainters;

type
  Tfrm_ypsj = class(TForm)
    ado_jbxx: TADODataSet;
    ado_jbxxid: TAutoIncField;
    ado_jbxxksdm: TStringField;
    ado_jbxxclczy: TStringField;
    ado_jbxxcljb: TStringField;
    ado_jbxxsfwc: TStringField;
    ado_jbxxsbr: TStringField;
    ado_jbxxsbrdh: TStringField;
    ado_jbxxsbryx: TStringField;
    ado_jbxxsbrzy: TStringField;
    ado_jbxxsbrzyqt: TStringField;
    ado_jbxxsbrq: TDateTimeField;
    ado_jbxxsbdw: TStringField;
    ado_jbxxdwlxr: TStringField;
    ado_jbxxdwdh: TStringField;
    ado_jbxxscqyxxly: TStringField;
    ado_jbxxscqyqtly: TStringField;
    ado_jbxxsjmc: TStringField;
    ado_jbxxfsrq: TDateTimeField;
    ado_jbxxsjbm: TStringField;
    ado_jbxxbgdwlb: TStringField;
    ado_jbxxbgdwlbqt: TStringField;
    ado_jbxxtmh: TStringField;
    ado_jbxxbrxm: TStringField;
    ado_jbxxbrxb: TStringField;
    ado_jbxxbrnl: TStringField;
    ado_jbxxbrmz: TStringField;
    ado_jbxxbrzd: TStringField;
    ado_jbxxbrtz: TStringField;
    ado_jbxxbrlxfs: TStringField;
    ado_jbxxxgzyxx: TStringField;
    ado_jbxxgms: TStringField;
    ado_jbxxxgxxqt: TStringField;
    ado_jbxxjwypblsj: TStringField;
    ado_jbxxjwypsjqk: TStringField;
    ado_jbxxjzypblsj: TStringField;
    ado_jbxxjzypsjqk: TStringField;
    ado_jbxxsjgcms: TMemoField;
    ado_jbxxsjjg: TStringField;
    ado_jbxxhyzyy: TStringField;
    ado_jbxxswrq: TDateTimeField;
    ado_jbxxdyjbyx: TStringField;
    ado_jbxxtyjlhqk: TStringField;
    ado_jbxxzcsyhqk: TStringField;
    ado_jbxxbgrglpj: TStringField;
    ado_jbxxgrglqm: TStringField;
    ado_jbxxbgdwglpj: TStringField;
    ado_jbxxdwglqm: TStringField;
    ado_jbxxbz: TMemoField;
    ds_tmh: TDataSource;
    qry_tmh: TADOQuery;
    qry_temp: TADOQuery;
    qry_insert: TADOQuery;
    qry_pub: TADOQuery;
    qry_xz: TADOQuery;
    qry_xzmc: TStringField;
    qry_xzdm: TStringField;
    ds_xz: TDataSource;
    adohyyp: TADODataSet;
    adohyyppzwh: TStringField;
    adohyypspmc: TStringField;
    adohyypsccj: TStringField;
    adohyypscph: TStringField;
    adohyypyfyl: TStringField;
    adohyypyykssj: TDateTimeField;
    adohyypyyjssj: TDateTimeField;
    adohyypyyyy: TStringField;
    dshyyp: TDataSource;
    ds_lb: TDataSource;
    qry_lb: TADOQuery;
    adobyyp: TADODataSet;
    AutoIncField1: TAutoIncField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    DateTimeField1: TDateTimeField;
    DateTimeField2: TDateTimeField;
    StringField7: TStringField;
    dsbyyp: TDataSource;
    adohyypid: TAutoIncField;
    adohyypsjid: TStringField;
    qry_tmhsbrq: TDateTimeField;
    qry_tmhtmh: TStringField;
    qry_tmhbrxm: TStringField;
    qry_tmhbrnl: TStringField;
    ds_cx: TDataSource;
    sp_cx: TADOStoredProc;
    sp_cxbybh: TStringField;
    sp_cxbrxm: TStringField;
    sp_cxbrnl: TStringField;
    sp_cxbrxb: TStringField;
    sp_cxjzrq: TDateTimeField;
    qry_tmhid: TAutoIncField;
    ado_jbxxlybz: TStringField;
    pc1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel2: TPanel;
    mz: TRadioButton;
    zy: TRadioButton;
    Button5: TButton;
    Button1: TButton;
    Button2: TButton;
    Button6: TButton;
    Button3: TButton;
    Button4: TButton;
    Panel4: TPanel;
    DBGrid3: TDBGrid;
    ScrollBox1: TScrollBox;
    Panel6: TPanel;
    Label45: TLabel;
    Label46: TLabel;
    gr: TRadioButton;
    ks: TRadioButton;
    Button9: TButton;
    dtpksrq: TDateTimePicker;
    dtpjsrq: TDateTimePicker;
    ds_sjcx: TDataSource;
    ado_jbxxsbks: TStringField;
    sp_sjcx: TADOStoredProc;
    sp_sjcxid: TIntegerField;
    sp_sjcxsbks: TStringField;
    sp_sjcxsbr: TStringField;
    sp_sjcxksdm: TStringField;
    sp_sjcxclczy: TStringField;
    sp_sjcxcljb: TStringField;
    sp_sjcxtmh: TStringField;
    sp_sjcxbrxm: TStringField;
    sp_sjcxbrxb: TStringField;
    sp_sjcxbrnl: TStringField;
    sp_sjcxbrzd: TStringField;
    sp_sjcxsfwc: TStringField;
    sp_sjcxlcsfwc: TStringField;
    sp_sjcxsbksmc: TStringField;
    sp_sjcxzhclry: TStringField;
    sp_sjcxzhclks: TStringField;
    sp_sjcxbrly: TStringField;
    sp_sjcxsbrq: TDateTimeField;
    sp_sjcxlybz: TStringField;
    Button7: TButton;
    Button8: TButton;
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    Label10: TLabel;
    Label29: TLabel;
    Label11: TLabel;
    Label31: TLabel;
    Label5: TLabel;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    GroupBox5: TGroupBox;
    DBGrid1: TDBGridEh;
    cxDBDateEdit1: TcxDBDateEdit;
    cxDBDateEdit2: TcxDBDateEdit;
    GroupBox6: TGroupBox;
    DBGrideh2: TDBGridEh;
    cxDBDateEdit3: TcxDBDateEdit;
    cxDBDateEdit4: TcxDBDateEdit;
    DBGrid5: TDBGrid;
    DBGrid6: TDBGrid;
    DBGrid4: TDBGrid;
    ComboBox1: TcxComboBox;
    ComboBox7: TcxComboBox;
    CheckBox1: TcxCheckBox;
    CheckBox2: TcxCheckBox;
    CheckBox3: TcxCheckBox;
    CheckBox4: TcxCheckBox;
    CheckBox5: TcxCheckBox;
    CheckBox6: TcxCheckBox;
    CheckBox7: TcxCheckBox;
    GroupBox4: TGroupBox;
    Label24: TLabel;
    dtpbgrq: TcxDBDateEdit;
    Label22: TLabel;
    DBEdit12: TDBEdit;
    Label23: TLabel;
    DBEdit13: TDBEdit;
    GroupBox7: TGroupBox;
    Label1: TLabel;
    edit1: TEdit;
    Label2: TLabel;
    Editxm: TDBEdit;
    Label3: TLabel;
    DBEdit4: TDBEdit;
    Label19: TLabel;
    DBEdit5: TDBEdit;
    Label8: TLabel;
    DBEdit1: TDBEdit;
    Label6: TLabel;
    DBEdit2: TDBEdit;
    Label7: TLabel;
    Label9: TLabel;
    DBEdit7: TDBEdit;
    Label4: TLabel;
    DBEdit6: TDBEdit;
    jbmc: TLabel;
    Label47: TLabel;
    Label16: TLabel;
    DBEdit8: TDBEdit;
    Label17: TLabel;
    DBEdit9: TDBEdit;
    Label18: TLabel;
    DBEdit10: TDBEdit;
    Label20: TLabel;
    combobox3: TcxComboBox;
    DBEdit15: TDBEdit;
    GroupBox8: TGroupBox;
    cxComboBox1: TcxComboBox;
    ado_jbxxyymc: TStringField;
    cxCheckBox1: TcxCheckBox;
    cxCheckBox2: TcxCheckBox;
    cxCheckBox3: TcxCheckBox;
    cxCheckBox4: TcxCheckBox;
    cxCheckBox5: TcxCheckBox;
    cxCheckBox7: TcxCheckBox;
    cxCheckBox8: TcxCheckBox;
    cxCheckBox9: TcxCheckBox;
    cxCheckBox10: TcxCheckBox;
    cxCheckBox11: TcxCheckBox;
    ado_jbxxfkyj: TStringField;
    cxCheckBox6: TcxCheckBox;
    cxCheckBox12: TcxCheckBox;
    DBEdit25: TDBEdit;
    ado_jbxxfkyjqt: TStringField;
    ado_jbxxzyh: TStringField;
    sp_cxzyh: TStringField;
    GroupBox9: TGroupBox;
    dtpfsrq: TcxDBDateEdit;
    Label28: TLabel;
    GroupBox10: TGroupBox;
    Memo1: TMemo;
    Label42: TLabel;
    ado_jbxxgysj: TStringField;
    DBEdit26: TDBEdit;
    Label43: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    GroupBox3: TGroupBox;
    Label36: TLabel;
    Label37: TLabel;
    ComboBox13: TcxComboBox;
    ComboBox12: TcxComboBox;
    GroupBox2: TGroupBox;
    Memo4: TMemo;
    Label51: TLabel;
    Label52: TLabel;
    Label27: TLabel;
    DBEdit17: TDBEdit;
    Label41: TLabel;
    ComboBox8: TcxComboBox;
    Label44: TLabel;
    DBEdit24: TDBEdit;
    Label32: TLabel;
    DBEdit22: TDBEdit;
    Label33: TLabel;
    dtpswrq: TcxDBDateEdit;
    Label39: TLabel;
    ComboBox6: TcxComboBox;
    Label40: TLabel;
    DBEdit23: TDBEdit;
    Label13: TLabel;
    ComboBox4: TcxComboBox;
    Label15: TLabel;
    ComboBox2: TcxComboBox;
    DBEdit27: TDBEdit;
    dtpfsrq3: TcxDBDateEdit;
    DBEdit28: TDBEdit;
    dtpfsrq2: TcxDBDateEdit;
    ComboBox10: TcxComboBox;
    Label30: TLabel;
    Label34: TLabel;
    ComboBox11: TcxComboBox;
    CheckBox8: TcxCheckBox;
    ado_jbxxfsrq2: TDateTimeField;
    ado_jbxxfsrq3: TDateTimeField;
    ado_jbxxgysj2: TStringField;
    ado_jbxxgysj3: TStringField;
    Label26: TLabel;
    cxComboBox2: TcxComboBox;
    ado_jbxxbglb: TStringField;
    ado_jbxxsfxbg: TStringField;
    ado_jbxxyzcd: TWideStringField;
    Button10: TButton;
    SaveDialog1: TSaveDialog;
    cxGrid1: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    tmh: TcxGridDBColumn;
    xb: TcxGridDBColumn;
    xm: TcxGridDBColumn;
    sbrq: TcxGridDBColumn;
    sbr: TcxGridDBColumn;
    brnl: TcxGridDBColumn;
    sbks: TcxGridDBColumn;
    zhcljb: TcxGridDBColumn;
    zhclry: TcxGridDBColumn;
    zhclks: TcxGridDBColumn;
    lcsfwc: TcxGridDBColumn;
    brly: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    Label12: TLabel;
    Label14: TLabel;
    DBEdit3: TDBEdit;
    Label21: TLabel;
    Label25: TLabel;
    DBEdit11: TDBEdit;
    ado_jbxxjwypsjyw: TWideStringField;
    ado_jbxxjzypsjyw: TWideStringField;
    GroupBox11: TGroupBox;
    Memo2: TMemo;
    ado_jbxxzgqk: TMemoField;
    qry_yp: TADOQuery;
    ds_yp: TDataSource;
    DBGrid2: TDBGrid;
    qry_ypmc: TStringField;
    qry_ypdm: TStringField;
    qry_yppzwh: TStringField;
    qry_ypsccj: TStringField;
    TabSheet3: TTabSheet;
    Panel7: TPanel;
    Label53: TLabel;
    Label54: TLabel;
    Button14: TButton;
    dtptjs: TDateTimePicker;
    dtptje: TDateTimePicker;
    Button15: TButton;
    Button16: TButton;
    sp_cx_ypsj: TADOStoredProc;
    ds_ypsj: TDataSource;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    gr1: TRadioButton;
    ks1: TRadioButton;
    qry_sccj: TADOQuery;
    dbgrdcj: TDBGrid;
    ds_sccj: TDataSource;
    pm_sc: TPopupMenu;
    N_scyp: TMenuItem;
    p_byyp: TPopupMenu;
    m_scby: TMenuItem;
    qry_delbyyp: TADOQuery;
    procedure FormCreate(Sender: TObject);
    procedure edit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid4DblClick(Sender: TObject);
    procedure DBGrid4KeyPress(Sender: TObject; var Key: Char);
    procedure Button5Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure CheckBox7Exit(Sender: TObject);
    procedure ComboBox7Exit(Sender: TObject);
    procedure CheckBox6Exit(Sender: TObject);
    procedure DBEdit8Exit(Sender: TObject);
    procedure DBGrid5KeyPress(Sender: TObject; var Key: Char);
    procedure dtpbgrqExit(Sender: TObject);
    procedure ComboBox3Exit(Sender: TObject);
    procedure mzClick(Sender: TObject);
    procedure zyClick(Sender: TObject);
    procedure ComboBox1Exit(Sender: TObject);
    procedure ComboBox10Exit(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1ColExit(Sender: TObject);
    procedure cxDBDateEdit1Exit(Sender: TObject);
    procedure cxDBDateEdit2Exit(Sender: TObject);
    procedure cxDBDateEdit3Exit(Sender: TObject);
    procedure cxDBDateEdit4Exit(Sender: TObject);
    procedure DBGrideh2ColExit(Sender: TObject);
    procedure DBGrideh2KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit6DblClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure DBGrid6KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid6DblClick(Sender: TObject);
    procedure qry_lbAfterDelete(DataSet: TDataSet);
    procedure DBEdit20Exit(Sender: TObject);
    procedure DBEdit21Exit(Sender: TObject);
    procedure sp_sjcxCalcFields(DataSet: TDataSet);
    procedure Button9Click(Sender: TObject);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Add_xsz(bmc, cxz: string; Cbox: TcxComboBox);
    procedure cxComboBox1Exit(Sender: TObject);
    procedure DBEdit6Exit(Sender: TObject);
    procedure DBEdit17KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid3CellClick(Column: TColumn);
    procedure DBEdit15KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit19KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid3DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure Memo4DblClick(Sender: TObject);
    procedure cxGridDBTableView2DblClick(Sender: TObject);
    procedure DBGrid2KeyPress(Sender: TObject; var Key: Char);
    procedure Button16Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure dbgrdcjKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid2Exit(Sender: TObject);
    procedure dbgrdcjColExit(Sender: TObject);
    procedure N_scypClick(Sender: TObject);
    procedure m_scbyClick(Sender: TObject);
  private
    { Private declarations }
    iii: Integer;
    xzbz: string;
    procedure sjcs; //实际传送
    procedure xgzyxx; //相关重要信息选项保存
    procedure xgzyxxzk; //相关重要信息展开
    procedure Mydate(Mydbgrid: Tdbgrideh; Mydate: TcxDBDateEdit; Key: Char; MYROW: bYTE);
    function get_xsz(bmc, cxz: string): string;
    function ljjc: boolean; //逻辑检查
    procedure cljbkz(s: string); //权限控制
  public
    { Public declarations }
    id: string;
    dqczy: string;
    dqks: string;
    cljb: string;
    value1: string;
    value2: string;
    str_mbct: string;
    procedure qkjm; //清空界面
  end;

var
  kj1: TObject;
  kj2: TObject;
  frm_ypsj: Tfrm_ypsj;

implementation

{$R *.dfm}
uses
  p_dm, p_func, p_main, p_blsjjbcx, p_blsj_checkError, p_tjbg, p_ypsjprint, p_blsj_bqgcyy, p_blsj_gwyspf;

procedure Tfrm_ypsj.Add_xsz(bmc, cxz: string; Cbox: TcxComboBox);
var
  sj: string;
begin
  Qry_pub.close;
  Qry_pub.SQL.clear;
  if bmc = 'sys_ksdm' then
    Qry_pub.sql.add('select * from ' + bmc + ' where kssx=09 order by ' + cxz)
  else
    Qry_pub.sql.add('select * from ' + bmc + ' order by ' + cxz);
  Qry_pub.open;
  Cbox.Properties.Items.clear;
  if (bmc = 'zysf_rybq') or (bmc = 'zysf_rytj') then
  begin
    while not Qry_pub.eof do
    begin
      Cbox.Properties.items.add(trim(Qry_pub.FieldByName('dm').asstring) + '-' + trim(Qry_pub.FieldByName('sm').asstring));
      Qry_pub.next;
    end;
  end
  else
  begin
    while not Qry_pub.eof do
    begin
      Cbox.Properties.items.add(trim(Qry_pub.FieldByName('dm').asstring) + '-' + trim(Qry_pub.FieldByName('mc').asstring));
      Qry_pub.next;
    end;
  end
end;

function Tfrm_ypsj.get_xsz(bmc, cxz: string): string;
var
  sj: string;
begin
  Qry_pub.close;
  Qry_pub.SQL.clear;
  if bmc = 'icd10' then
    Qry_pub.sql.add('select * from ' + bmc + ' where jbbm=' + #39 + cxz + #39 + 'order by jbbm')
  else
    Qry_pub.sql.add('select * from ' + bmc + ' where dm=' + #39 + cxz + #39 + 'order by dm');
  Qry_pub.open;
  if Qry_pub.RecordCount = 1 then
  begin
    if bmc = 'icd10' then
      result := trim(Qry_pub.fieldbyname('jbmc').asstring)
    else
      result := trim(Qry_pub.fieldbyname('mc').asstring)
  end
  else
    result := '';
end;

procedure Tfrm_ypsj.Button14Click(Sender: TObject);
var
  ls, ksrq, jsrq, sjmc, tjlx: string;
  i, ii, select_id: integer;
  NewCombobox: TCombobox;
begin
  cxGrid2DBTableView1.ClearItems;
  ksrq := FormatDateTime('yyyy-mm-dd', dtptjs.Date);
  jsrq := FormatDateTime('yyyy-mm-dd', dtptje.Date);
  cxGrid2DBTableView1.DataController.DataSource := ds_ypsj;
  sp_cx_ypsj.Close;
  ksrq := FormatDateTime('yyyy-mm-dd', dtptjs.Date);
  jsrq := FormatDateTime('yyyy-mm-dd', dtptje.Date);
  sp_cx_ypsj.parameters.ParamByName('@ksrq').value := ksrq;
  sp_cx_ypsj.parameters.ParamByName('@jsrq').value := jsrq;
  sp_cx_ypsj.parameters.ParamByName('@ksdm').value := pub_ksdm;
  sp_cx_ypsj.parameters.ParamByName('@czy').value := pub_czydm;
  if gr1.Checked then
    sp_cx_ypsj.parameters.ParamByName('@cxlx').value := '0'
  else if ks1.Checked then
    sp_cx_ypsj.parameters.ParamByName('@cxlx').value := '1';
  sp_cx_ypsj.parameters.ParamByName('@sjlx').value := '';
  sp_cx_ypsj.open;
  for i := 0 to sp_cx_ypsj.fieldcount - 1 do
  begin
    cxGrid2DBTableView1.CreateColumn;
    cxGrid2DBTableView1.Columns[i].DataBinding.fieldname := sp_cx_ypsj.Fields[i].DisplayName;
    cxGrid2DBTableView1.Columns[i].caption := sp_cx_ypsj.Fields[i].fieldname;
    if i = 0 then
      cxGrid2DBTableView1.Columns[i].width := 100
    else
      cxGrid2DBTableView1.Columns[i].width := 70;
  end;
  sp_cx_ypsj.ExecProc;
  sp_cx_ypsj.active := True;
end;

procedure Tfrm_ypsj.Button15Click(Sender: TObject);
begin
  Self.Close;
end;

procedure Tfrm_ypsj.Button16Click(Sender: TObject);
begin
  if SaveDialog1.Execute then
  begin
   // exportgridtoexcel(SaveDialog1.FileName, cxGrid2, true, true);
    MessageBox(0, '数据导出完毕!', '系统提示', MB_OK + MB_ICONINFORMATION);
  end;
end;

procedure Tfrm_ypsj.Button1Click(Sender: TObject);
var
  s: string;
  i: Integer;
begin
  if not ljjc then
  begin
    qry_temp.Close;
    qry_temp.SQL.Clear;
    qry_temp.SQL.Add('select * from blsj_ypsj_jbxx where id=' + id);
    qry_temp.Open;
    s := Trim(qry_temp.fieldbyname('cljb').asstring);
    if strtoint(s) = 2 then
      application.MessageBox(pchar('其该记录已到最后处理科室或人员，不能提交!'), '注意', 16)
    else
    begin
      application.CreateForm(Tfrm_tjbg, frm_tjbg);
      frm_tjbg.sjid := 'C' + id;
      frm_tjbg.ShowModal;
    end;
  end;
end;

procedure Tfrm_ypsj.Button2Click(Sender: TObject);
var
  ls, qjks, jlid: string;
begin
  if not ljjc then
  begin
    cljb := Trim(ado_jbxx.fieldbyname('cljb').asstring);
    if (StrToInt(cljb) < 2) or (id = '') then
    begin
      Application.MessageBox('处理流程未完成，请核实!', '错误提示', 16);
    end
    else
    begin
      if (application.MessageBox('完成后不能再进行任何修改，是否继续？', '请注意', MB_YESNO + MB_ICONQUESTION) = IDYES) then
      begin
        ls := 'update blsj_ypsj_jbxx set sfwc=1 where id=' + #39 + id + #39;
        qry_temp.Close;
        qry_temp.SQL.Clear;
        qry_temp.SQL.Add(ls);
        qry_temp.ExecSQL;
        application.messagebox('该事件处理流程完成！', '提示', mb_ok + mb_iconinformation);
        qkjm; //清空界面
        ls := 'select * from blsj_ypsj_jbxx where  (sfwc<>1 and clczy=' + #39 + pub_czydm + #39 + ') or (ksdm=' + #39 + pub_ksdm + #39 + ' and sfwc<>1 and clczy=' + #39 + #39 + ')';
        qry_lb.Close;
        qry_lb.SQL.Clear;
        qry_lb.SQL.Add(ls);
        qry_lb.Open;
      end;
    end;
  end;
end;

procedure Tfrm_ypsj.Button3Click(Sender: TObject);
var
  s, s1, rs, ls, sfwc: string;
  Len, i, ii, iii: Integer;
begin
  sfwc := trim(ado_jbxx.fieldbyname('sfwc').asstring);
  cljb := trim(ado_jbxx.fieldbyname('cljb').asstring);
//if ( not ljjc and (cljb='2') ) or (sfwc='1')  then
  if 1 = 1 then
  begin
    try
      application.CreateForm(Typsjprint, ypsjprint);
      s := '  ' + Memo4.Text;  //memo4时间经过打印
      s := s + char(13) + char(10) + '  转归情况:' + memo2.Text;
      if s <> '' then
      begin
        if length(s) < 500 then
        begin
          iii := length(s);
          while iii < 500 do
          begin
            s := s + ' ';
            iii := iii + 1;
          end;
        end;
        value1 := '';
        rs := '';
        len := Length(s);
        while (Len > 112) do
        begin
          ls := Copy(s, 1, 112);
          if pos(''#$D#$A'', ls) = 0 then
          begin
            if ByteType(ls, 112) = mbLeadByte then
            begin
              rs := Copy(s, 1, 111) + char(13) + char(10);
              s := Copy(s, 112, len);
            end
            else
            begin
              rs := Copy(s, 1, 112) + char(13) + char(10);
              s := Copy(s, 113, len);
            end;
            ls := '';
            value1 := value1 + rs;
            len := Length(s);
          end
          else
          begin
            i := pos(''#$D#$A'', ls);
            rs := Copy(ls, 1, i + 1);
            value1 := value1 + rs;
            s := Copy(s, i + 2, len);
          end;
        end;
        value1 := value1 + s;
      end
      else
        value1 := '无';

      s := Memo1.Text;  //memo1备注内容打印
      if s <> '' then
      begin
        value2 := '';
        rs := '';
        len := Length(s);
        while (Len > 112) do
        begin
          ls := Copy(s, 1, 112);
          if pos(''#$D#$A'', ls) = 0 then
          begin
            if ByteType(ls, 112) = mbLeadByte then
            begin
              rs := Copy(s, 1, 111) + char(13) + char(10);
              s := Copy(s, 112, len);
            end
            else
            begin
              rs := Copy(s, 1, 112) + char(13) + char(10);
              s := Copy(s, 113, len);
            end;
            ls := '';
            value2 := value2 + rs;
            len := Length(s);
          end
          else
          begin
            i := pos(''#$D#$A'', ls);
            rs := Copy(ls, 1, i + 1);
            value2 := value2 + rs;
            s := Copy(s, i + 2, len);
          end;
        end;
        value2 := value2 + s;
      end
      else
        value2 := '无';

      if CheckBox8.Checked then
        ypsjprint.QRLabel163.Caption := '√';
      if CheckBox1.Checked then
        ypsjprint.QRLabel81.Caption := '√';
      if CheckBox2.Checked then
        ypsjprint.QRLabel83.Caption := '√';
      if CheckBox3.Checked then
        ypsjprint.QRLabel85.Caption := '√';
      if CheckBox4.Checked then
        ypsjprint.QRLabel87.Caption := '√';
      if CheckBox5.Checked then
        ypsjprint.QRLabel89.Caption := '√';
      if CheckBox6.Checked then
        ypsjprint.QRLabel91.Caption := '√';
      ypsjprint.QRLabel92.Caption := Trim(DBEdit18.Text);
      ypsjprint.QRLabel95.Caption := Trim(DBEdit19.Text);
      if Trim(cxComboBox2.Text) = '首次报告' then
        ypsjprint.QRLabel4.Caption := '√'
      else if Trim(cxComboBox2.Text) = '跟踪报告' then
        ypsjprint.QRLabel55.Caption := '√';
      if Trim(ComboBox4.Text) = '新的' then
        ypsjprint.QRLabel10.Caption := '√';
      if Trim(ComboBox2.Text) = '严重' then
        ypsjprint.QRLabel26.Caption := '√'
      else if Trim(ComboBox2.Text) = '一般' then
        ypsjprint.QRLabel44.Caption := '√';
      ypsjprint.QRLabel67.Caption := Trim(Editxm.Text);
      ypsjprint.QRLabel27.Caption := Trim(DBEdit5.Text);
      ypsjprint.QRLabel69.Caption := Trim(DBEdit4.Text);
      ypsjprint.QRLabel36.Caption := Trim(DBEdit2.Text);
      ypsjprint.QRLabel28.Caption := Trim(DBEdit1.Text);
      ypsjprint.QRLabel30.Caption := Trim(DBEdit7.Text);
      ypsjprint.QRLabel18.Caption := trim(dbedit6.Text) + trim(jbmc.Caption);
      ypsjprint.QRLabel72.Caption := Trim(edit1.Text);
      if CheckBox1.Checked = True then
        ypsjprint.QRLabel81.Caption := '√';
      if CheckBox2.Checked = True then
        ypsjprint.QRLabel83.Caption := '√';
      if CheckBox3.Checked = True then
        ypsjprint.QRLabel85.Caption := '√';
      if CheckBox4.Checked = True then
        ypsjprint.QRLabel87.Caption := '√';
      if CheckBox5.Checked = True then
        ypsjprint.QRLabel89.Caption := '√';
      if CheckBox6.Checked = True then
        ypsjprint.QRLabel91.Caption := '√';
      if CheckBox7.Checked = True then
        ypsjprint.QRLabel94.Caption := '√';
      if Trim(DBEdit18.Text) <> '' then
        ypsjprint.QRLabel92.Caption := trim(DBEdit18.Text);
      if Trim(DBEdit19.Text) <> '' then
        ypsjprint.QRLabel95.Caption := trim(DBEdit19.Text);
      if Trim(ComboBox1.Text) = '无' then
        ypsjprint.QRLabel22.Caption := '√'
      else if Trim(ComboBox1.Text) = '不详' then
        ypsjprint.QRLabel32.Caption := '√'
      else if Trim(ComboBox1.Text) = '有' then
        ypsjprint.QRLabel34.Caption := '√';
      if Trim(DBEdit20.Text) <> '' then
        ypsjprint.QRLabel35.Caption := trim(DBEdit20.Text);
      if Trim(ComboBox7.Text) = '无' then
        ypsjprint.QRLabel74.Caption := '√'
      else if Trim(ComboBox7.Text) = '不详' then
        ypsjprint.QRLabel76.Caption := '√'
      else if Trim(ComboBox7.Text) = '有' then
        ypsjprint.QRLabel78.Caption := '√';
      if Trim(DBEdit21.Text) <> '' then
        ypsjprint.QRLabel79.Caption := trim(DBEdit21.Text);
      if Trim(DBEdit17.Text) <> '' then
        ypsjprint.QRLabel47.Caption := trim(DBEdit17.Text);
      s := '';
      if FormatDateTime('yyyy-mm-dd', dtpfsrq.Date) > '2010-12-30' then
        s := FormatDateTime('yyyy年mm月dd日hh时', dtpfsrq.Date);
      if FormatDateTime('yyyy-mm-dd', dtpfsrq2.Date) > '2010-12-30' then
        s := s + ' ' + FormatDateTime('yyyy年mm月dd日hh时', dtpfsrq2.Date);
      if FormatDateTime('yyyy-mm-dd', dtpfsrq3.Date) > '2010-12-30' then
        s := s + ' ' + FormatDateTime('yyyy年mm月dd日hh时', dtpfsrq3.Date);
      ypsjprint.QRLabel39.Caption := s;
      if Trim(ComboBox10.Text) = '痊愈' then
        ypsjprint.QRLabel97.Caption := '√'
      else if Trim(ComboBox10.Text) = '好转' then
        ypsjprint.QRLabel99.Caption := '√'
      else if Trim(ComboBox10.Text) = '未好转' then
        ypsjprint.QRLabel100.Caption := '√'
      else if Trim(ComboBox10.Text) = '不详' then
        ypsjprint.QRLabel102.Caption := '√'
      else if Trim(ComboBox10.Text) = '有后遗症' then
        ypsjprint.QRLabel104.Caption := '√'
      else if Trim(ComboBox10.Text) = '死亡' then
        ypsjprint.QRLabel106.Caption := '√';
      if (Trim(ComboBox10.Text) = '有后遗症') and (Trim(DBEdit22.Text) <> '') then
        ypsjprint.QRLabel53.Caption := trim(DBEdit22.Text);
      if (Trim(ComboBox10.Text) = '死亡') and (Trim(DBEdit22.Text) <> '') then
        ypsjprint.QRLabel108.Caption := trim(DBEdit22.Text);
      if FormatDateTime('yyyy-mm-dd', dtpswrq.Date) > '2010-12-30' then
        ypsjprint.QRLabel110.Caption := FormatDateTime('yyyy年mm月dd日', dtpswrq.Date);
      if Trim(ComboBox13.Text) = '是' then
        ypsjprint.QRLabel127.Caption := '√'
      else if Trim(ComboBox13.Text) = '否' then
        ypsjprint.QRLabel128.Caption := '√'
      else if Trim(ComboBox13.Text) = '不明' then
        ypsjprint.QRLabel129.Caption := '√'
      else if Trim(ComboBox13.Text) = '未停药或未减量' then
        ypsjprint.QRLabel130.Caption := '√';
      if Trim(ComboBox12.Text) = '是' then
        ypsjprint.QRLabel131.Caption := '√'
      else if Trim(ComboBox12.Text) = '否' then
        ypsjprint.QRLabel132.Caption := '√'
      else if Trim(ComboBox12.Text) = '不明' then
        ypsjprint.QRLabel133.Caption := '√'
      else if Trim(ComboBox12.Text) = '未再使用' then
        ypsjprint.QRLabel134.Caption := '√';
      if Trim(ComboBox11.Text) = '不明显' then
        ypsjprint.QRLabel135.Caption := '√'
      else if Trim(ComboBox11.Text) = '病程延长' then
        ypsjprint.QRLabel136.Caption := '√'
      else if Trim(ComboBox11.Text) = '病情加重' then
        ypsjprint.QRLabel137.Caption := '√'
      else if Trim(ComboBox11.Text) = '导致后遗症' then
        ypsjprint.QRLabel138.Caption := '√'
      else if Trim(ComboBox11.Text) = '导致死亡' then
        ypsjprint.QRLabel139.Caption := '√';
      if Trim(ComboBox6.Text) = '肯定' then
        ypsjprint.QRLabel157.Caption := '√'
      else if Trim(ComboBox6.Text) = '很可能' then
        ypsjprint.QRLabel158.Caption := '√'
      else if Trim(ComboBox6.Text) = '可能' then
        ypsjprint.QRLabel159.Caption := '√'
      else if Trim(ComboBox6.Text) = '可能无关' then
        ypsjprint.QRLabel160.Caption := '√'
      else if Trim(ComboBox6.Text) = '待评价' then
        ypsjprint.QRLabel161.Caption := '√'
      else if Trim(ComboBox6.Text) = '无法评价' then
        ypsjprint.QRLabel162.Caption := '√';
      if Trim(ComboBox8.Text) = '肯定' then
        ypsjprint.QRLabel175.Caption := '√'
      else if Trim(ComboBox8.Text) = '很可能' then
        ypsjprint.QRLabel176.Caption := '√'
      else if Trim(ComboBox8.Text) = '可能' then
        ypsjprint.QRLabel177.Caption := '√'
      else if Trim(ComboBox8.Text) = '可能无关' then
        ypsjprint.QRLabel178.Caption := '√'
      else if Trim(ComboBox8.Text) = '待评价' then
        ypsjprint.QRLabel179.Caption := '√'
      else if Trim(ComboBox8.Text) = '无法评价' then
        ypsjprint.QRLabel180.Caption := '√';
      if Trim(dbedit23.Text) <> '' then
        ypsjprint.QRLabel181.Caption := trim(DBEdit23.Text);
      if Trim(dbedit24.Text) <> '' then
        ypsjprint.QRLabel182.Caption := trim(DBEdit24.Text);
      if Trim(dbedit9.Text) <> '' then
        ypsjprint.QRLabel185.Caption := trim(DBEdit9.Text);
      if Trim(dbedit10.Text) <> '' then
        ypsjprint.QRLabel187.Caption := trim(DBEdit10.Text);
      if Trim(dbedit8.Text) <> '' then
        ypsjprint.QRLabel189.Caption := trim(DBEdit8.Text);
      if Trim(ComboBox3.Text) = '医生' then
        ypsjprint.QRLabel191.Caption := '√'
      else if Trim(ComboBox3.Text) = '药师' then
        ypsjprint.QRLabel193.Caption := '√'
      else if Trim(ComboBox3.Text) = '护士' then
        ypsjprint.QRLabel195.Caption := '√'
      else if Trim(ComboBox3.Text) = '其他' then
        ypsjprint.QRLabel198.Caption := '√';
      if Trim(dbedit15.Text) <> '' then
        ypsjprint.QRLabel197.Caption := trim(DBEdit15.Text);
      if Trim(dbedit12.Text) <> '' then
        ypsjprint.QRLabel203.Caption := trim(DBEdit12.Text);
      if Trim(dbedit13.Text) <> '' then
        ypsjprint.QRLabel205.Caption := trim(DBEdit13.Text);
      if FormatDateTime('yyyy-mm-dd', dtpbgrq.Date) <> '1899-12-30' then
        ypsjprint.QRLabel207.Caption := FormatDateTime('yyyy年mm月dd日', dtpbgrq.Date);
      ypsjprint.QuickRep1.preview;
    finally
      ypsjprint.Free;
    end;
  end
  else if cljb = '1' then
    application.MessageBox(pchar('事件流程未处理完成,不能打印!'), '注意', 16);
end;

procedure Tfrm_ypsj.Button4Click(Sender: TObject);
begin
  Self.Close;
end;

procedure Tfrm_ypsj.Button5Click(Sender: TObject);
begin
  ado_jbxx['sfxbg'] := Trim(ComboBox4.Text);
  ado_jbxx['yzcd'] := Trim(ComboBox2.Text);
  ado_jbxx['sbrzy'] := Trim(ComboBox3.Text);
  ado_jbxx['jwypblsj'] := Trim(ComboBox1.Text);
  ado_jbxx['jzypblsj'] := Trim(ComboBox7.Text);
  ado_jbxx['sjjg'] := Trim(ComboBox10.Text);
  ado_jbxx['dyjbyx'] := Trim(ComboBox11.Text);
  ado_jbxx['tyjlhqk'] := Trim(ComboBox13.Text);
  ado_jbxx['zcsyhqk'] := Trim(ComboBox12.Text);
  ado_jbxx['bgrglpj'] := Trim(ComboBox6.Text);
  ado_jbxx['bgdwglpj'] := Trim(ComboBox8.Text);
  ado_jbxx['bglb'] := Trim(cxComboBox2.Text);
  ado_jbxx['bz'] := Memo1.Text;
  ado_jbxx['sjgcms'] := Memo4.Text;
  ado_jbxx['zgqk'] := Memo2.Text;
  xgzyxx; //相关重要信息选项保存
  ado_jbxx.Post;
  adohyyp.First;
  while not adohyyp.eof do
  begin
    adohyyp.Edit;
    adohyyp['sjid'] := id;
    adohyyp.next;
  end;
  adohyyp.UpdateBatch(arall);
  adobyyp.First;
  while not adobyyp.eof do
  begin
    adobyyp.Edit;
    adobyyp['sjid'] := id;
    adobyyp.next;
  end;
  adobyyp.UpdateBatch(arall);
  qkjm; //清空界面
  dbgrid3.SetFocus;
end;

procedure Tfrm_ypsj.Button6Click(Sender: TObject);
var
  ls, qjks, clczy, jlid, tjks, tjczy, thyy: string;
begin
  dqks := Trim(ado_jbxx.fieldbyname('ksdm').asstring);
  dqczy := Trim(ado_jbxx.fieldbyname('clczy').asstring);
  ls := 'select top 1 * from blsj_ypsj_cljl where sjid=' + #39 + id + #39 + ' order by id desc';
  qry_temp.Close;
  qry_temp.SQL.Clear;
  qry_temp.SQL.Add(ls);
  qry_temp.Open;
  tjczy := Trim(qry_temp.fieldbyname('tjczy').asstring);
  tjks := Trim(qry_temp.fieldbyname('tjksdm').asstring);
  if (qry_temp.RecordCount = 0) or ((tjczy <> '') and (tjczy <> pub_czydm)) or ((tjczy = '') and (tjks <> pub_ksdm)) or (cljb = '1') then
    Application.MessageBox('没有可回退的前级科室或人员，不能回退!', '错误提示', 16)
  else if (qry_temp.RecordCount = 1) then
  begin
    qjks := Trim(qry_temp.fieldbyname('clksdm').asstring);
    jlid := Trim(qry_temp.fieldbyname('id').asstring);
    clczy := Trim(qry_temp.fieldbyname('clczy').asstring);
    cljb := IntToStr((StrToInt(cljb) - 1));
    thyy := trim(INPUTBOX('输入：', '请输入退回原因(100字以内)：    ', ''));
    ls := 'update blsj_ypsj_jbxx set ksdm=' + #39 + qjks + #39 + ',clczy=' + #39 + clczy + #39 + ',cljb=' + #39 + cljb + #39 + ' where id=' + #39 + id + #39;
    qry_temp.Close;
    qry_temp.SQL.Clear;
    qry_temp.SQL.Add(ls);
    qry_temp.ExecSQL;
    ls := 'update   blsj_ypsj_cljl set thbz=1,thrq=Getdate(),thry=' + #39 + pub_czydm + #39 + ',thyy=' + #39 + thyy + #39 + ' where id=' + #39 + jlid + #39;
    qry_temp.Close;
    qry_temp.SQL.Clear;
    qry_temp.SQL.Add(ls);
    qry_temp.ExecSQL;
    application.messagebox('报告退回上级科室成功！', '提示', mb_ok + mb_iconinformation);
    qkjm; //清空界面
    ls := 'select * from blsj_ypsj_jbxx where  (sfwc<>1 and clczy=' + #39 + pub_czydm + #39 + ') or (ksdm=' + #39 + pub_ksdm + #39 + ' and sfwc<>1 and clczy=' + #39 + #39 + ')';
    qry_lb.Close;
    qry_lb.SQL.Clear;
    qry_lb.SQL.Add(ls);
    qry_lb.Open;
    dbgrid3.SetFocus;
  end;
end;

procedure Tfrm_ypsj.Button7Click(Sender: TObject);
begin
  self.close;
end;

procedure Tfrm_ypsj.Button8Click(Sender: TObject);
begin
  qkjm;
  edit1.SetFocus;
end;

procedure Tfrm_ypsj.Button9Click(Sender: TObject);
var
  ls, ksrq, jsrq: string;
begin
  ksrq := FormatDateTime('yyyy-mm-dd', dtpksrq.Date);
  jsrq := FormatDateTime('yyyy-mm-dd', dtpjsrq.Date);
  sp_sjcx.Close;
  if gr.Checked = true then
  begin
    sp_sjcx.parameters.ParamByName('@cxlx').value := '0'; //0-按照个人查询 1-按照科室查询
    sp_sjcx.parameters.ParamByName('@sjlx').value := '3';
    sp_sjcx.parameters.ParamByName('@czy').value := pub_czydm;
    sp_sjcx.parameters.ParamByName('@ksdm').value := pub_ksdm;
    sp_sjcx.parameters.ParamByName('@ksrq').value := ksrq;
    sp_sjcx.parameters.ParamByName('@jsrq').value := jsrq;
    sp_sjcx.Open;
  end
  else
  begin
    sp_sjcx.parameters.ParamByName('@cxlx').value := '1'; //0-按照个人查询 1-按照科室查询
    sp_sjcx.parameters.ParamByName('@sjlx').value := '3';
    sp_sjcx.parameters.ParamByName('@czy').value := pub_czydm;
    sp_sjcx.parameters.ParamByName('@ksdm').value := pub_ksdm;
    sp_sjcx.parameters.ParamByName('@ksrq').value := ksrq;
    sp_sjcx.parameters.ParamByName('@jsrq').value := jsrq;
    sp_sjcx.Open;
  end;
end;

procedure Tfrm_ypsj.CheckBox6Exit(Sender: TObject);
begin
  if CheckBox6.Checked = true then
    DBEdit18.ReadOnly := False
  else
    DBEdit18.ReadOnly := True;
end;

procedure Tfrm_ypsj.CheckBox7Exit(Sender: TObject);
begin
  if CheckBox7.Checked = true then
    DBEdit19.ReadOnly := False
  else
    DBEdit19.ReadOnly := True;
end;

procedure Tfrm_ypsj.ComboBox10Exit(Sender: TObject);
begin
  if (ComboBox10.Text = '有后遗症') or (ComboBox10.Text = '死亡') then
    DBEdit22.ReadOnly := False
  else
    DBEdit22.ReadOnly := True;
end;

procedure Tfrm_ypsj.ComboBox1Exit(Sender: TObject);
begin
  if (ComboBox1.Text = '有') or ((ComboBox1.Text = '无') and (DBEdit20.Text <> '')) then
  begin
    // DBEdit20.visible:=true;
   // dbedit3.visible:=true;
    dbedit3.ReadOnly := false;
    DBEdit20.ReadOnly := false;
  end
  else
  begin
   // DBEdit20.visible:=False;
   // dbedit3.visible:=False;
   // Label12.Visible:=False;
   // Label14.Visible:=False;
    DBEdit20.ReadOnly := true;
    dbedit3.ReadOnly := true;
  end;
end;

procedure Tfrm_ypsj.ComboBox3Exit(Sender: TObject);
begin
  if ComboBox3.Text = '其他' then
    dbedit15.ReadOnly := False
  else
    dbedit15.ReadOnly := True;
end;

procedure Tfrm_ypsj.ComboBox7Exit(Sender: TObject);
begin
  if (ComboBox7.Text = '有') or ((ComboBox7.Text = '无') and (DBEdit21.Text <> '')) then
  begin
   // DBEdit21.visible:=true;
   // DBEdit11.visible:=true;
    DBEdit21.ReadOnly := False;
    DBEdit11.ReadOnly := False;
  end
  else
  begin
   // Label21.Visible:=False;
   // Label25.Visible:=False;
   // DBEdit21.visible:=false;
   // DBEdit11.visible:=false;
    DBEdit21.ReadOnly := True;
    DBEdit11.ReadOnly := True;
  end;
end;

procedure Tfrm_ypsj.cxComboBox1Exit(Sender: TObject);
var
  s, s1, ls: string;
begin
  kj1 := Sender;
  s := uppercase(trim((kj1 as TcxComboBox).text));
  if (Length(s) <= 6) and (Length(s) > 0) and ((s[1] in ['0'..'9']) or (s[1] in ['A'..'z'])) then
  begin
    ls := 'select dm,mc from sys_ksdm where dm=' + #39 + s + #39 + ' and  kssx=09' + ' union select dm,mc from sys_ksdm where Upper(pym) like' + #39 + '%' + s + '%' + #39 + ' and  kssx=09';
    qry_temp.Close;
    qry_temp.SQL.Clear;
    qry_temp.SQL.Add(ls);
    qry_temp.Open;
    if qry_temp.RecordCount = 0 then
    begin
      MessageDlg('没有找到想要查找的内容！', mtError, [mbOk], 0);
      (Sender as TcxComboBox).SetFocus;
    end
    else if qry_temp.RecordCount > 1 then
    begin
      try
        qry_xz.Close;
        qry_xz.SQL.Clear;
        qry_xz.SQL.Add(ls);
        qry_xz.Open;
      except
        Application.MessageBox('拼音码错误”', '错误提示', 16)
      end;

      DBGrid1.left := (kj1 as TcxComboBox).left;
      DBGrid1.top := (kj1 as TcxComboBox).top + (kj1 as TcxComboBox).Height + 1;
      DBGrid1.Visible := true;
      DBGrid1.SetFocus;
    end
    else
    begin
      ado_jbxx['sbks'] := Trim(qry_temp.fieldbyname('dm').asstring);
      cxComboBox1.text := Trim(qry_temp.fieldbyname('mc').asstring);
    end;
  end
  else if (Length(s) > 6) and (s[1] in ['0'..'9']) then
  begin
    ado_jbxx['sbks'] := copy(s, 1, 4);
    cxComboBox1.Text := Copy(s, 6, length(s) - 5);
  end;
end;

procedure Tfrm_ypsj.cxDBDateEdit1Exit(Sender: TObject);
begin
  cxDBDateEdit1.visible := false;
  DBGrid1.SetFocus;
  DBGrid1.SelectedIndex := 5;
end;

procedure Tfrm_ypsj.cxDBDateEdit2Exit(Sender: TObject);
begin
  cxDBDateEdit2.visible := false;
  DBGrid1.SetFocus;
  DBGrid1.SelectedIndex := 6;
end;

procedure Tfrm_ypsj.cxDBDateEdit3Exit(Sender: TObject);
begin
  cxDBDateEdit3.visible := false;
  DBGrideh2.SetFocus;
  DBGrideh2.SelectedIndex := 5;
end;

procedure Tfrm_ypsj.cxDBDateEdit4Exit(Sender: TObject);
begin
  cxDBDateEdit4.visible := false;
  DBGrideh2.SetFocus;
  DBGrideh2.SelectedIndex := 6;
end;

procedure Tfrm_ypsj.cxGridDBTableView2DblClick(Sender: TObject);
var
  sfwc: string;
begin
  pc1.ActivePageIndex := 0;
  qkjm;
  xzbz := '2';
  id := trim(sp_sjcx.FieldByName('id').AsString);
  ado_jbxx.Close;
  ado_jbxx.CommandText := 'select * from blsj_ypsj_jbxx where id=' + #39 + id + #39 + ' order by id';
  ado_jbxx.Open;
  dqks := trim(ado_jbxx.FieldByName('ksdm').AsString);
  sfwc := trim(ado_jbxx.FieldByName('sfwc').AsString);
  cljb := trim(ado_jbxx.fieldbyname('cljb').asstring);
  dqczy := trim(ado_jbxx.fieldbyname('clczy').asstring);
  Memo4.ReadOnly := False;
  if (sfwc = '1') or ((dqczy = '') and (dqks <> pub_ksdm)) or ((dqczy <> '') and (dqczy <> pub_czydm)) then
  begin
    Button1.Enabled := False;
    Button2.Enabled := False;
    Button5.Enabled := False;
    Button6.Enabled := False;
    Memo4.ReadOnly := True;
  end
  else
  begin
    Button1.Enabled := True;
    Button2.Enabled := True;
    Button5.Enabled := True;
    Button6.Enabled := True;
    ado_jbxx.Edit;
  end;
  cljbkz(cljb);
  sjcs;
  edit1.Text := trim(ado_jbxx.FieldByName('tmh').AsString);
  qry_temp.Close;
  qry_temp.SQL.Clear;
  qry_temp.sql.Add('select  * from blsj_ypsj_cljl where sjid=' + #39 + id + #39 + ' and cljb=' + #39 + inttostr(strtoint(cljb) + 1) + #39 + ' and thbz=1 order by thrq desc');
  qry_temp.Open;
  if (qry_temp.RecordCount > 0) and (cljb = '1') then
  begin
    application.CreateForm(Tfrm_blsj_gwyspf, frm_blsj_gwyspf);
    try
      frm_blsj_gwyspf.sjcljb := inttostr(strtoint(cljb) + 1);
      frm_blsj_gwyspf.sjclid := id;
      frm_blsj_gwyspf.pflb := 'ypsjhtyy';
      frm_blsj_gwyspf.ShowModal;
    finally
      frm_blsj_gwyspf.free;
    end;
  end;
end;

procedure Tfrm_ypsj.DBEdit15KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    combobox1.SetFocus;
end;

procedure Tfrm_ypsj.DBEdit17KeyPress(Sender: TObject; var Key: Char);
var
  s, ls: string;
begin
  if key = #13 then
  begin
    kj1 := Sender;
    s := trim(dbedit17.Text);
    ls := 'select mc,dm from blsj_ypsj_blfymc where dm=' + #39 + s + #39 + ' or Upper(pym) like' + #39 + '%' + s + '%' + #39 + ' or mc like' + #39 + '%' + s + '%' + #39;
    qry_temp.Close;
    qry_temp.SQL.Clear;
    qry_temp.SQL.Add(ls);
    qry_temp.Open;
    if qry_temp.RecordCount = 0 then
    begin
      Application.MessageBox('没有找到要查找的内容', '错误提示', 16);
      (kj1 as TDBEdit).SetFocus;
    end
    else if qry_temp.RecordCount > 1 then
    begin
      try
        qry_xz.Close;
        qry_xz.SQL.Clear;
        qry_xz.SQL.Add(ls);
        qry_xz.Open;
      except
        Application.MessageBox('拼音码错误”', '错误提示', 16)
      end;
      DBGrid5.left := (kj1 as Tdbedit).left;
      DBGrid5.top := (kj1 as Tdbedit).top + (kj1 as Tdbedit).Height + 1;
      DBGrid5.Visible := true;
      DBGrid5.SetFocus;
    end
    else
    begin
      ado_jbxx['sjmc'] := Trim(qry_temp.fieldbyname('mc').asstring);
    end;
  end;
end;

procedure Tfrm_ypsj.DBEdit19KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    dbedit17.SetFocus;
end;

procedure Tfrm_ypsj.DBEdit20Exit(Sender: TObject);
begin
  if (trim(ComboBox1.Text) = '有') and (trim(DBEdit20.Text) = '') then
  begin
    Application.MessageBox('既往药品不良反应/事件填"有",则其内容不能为空!', '错误提示', 16);
  end;
  if (trim(ComboBox1.Text) = '无') and (trim(DBEdit20.Text) <> '') then
  begin
    Application.MessageBox('既往药品不良反应/事件填"无",则其内容应为空!', '错误提示', 16);
  end;
end;

procedure Tfrm_ypsj.DBEdit21Exit(Sender: TObject);
begin
{ if (trim(ComboBox7.Text)='有') and (trim(DBEdit21.Text)='') then
 begin
 Application.MessageBox('既往家族药品不良反应/事件填"有",则其内容不能为空!', '错误提示', 16);
 DBEdit21.ReadOnly:=False;
 DBEdit21.SetFocus;
 end;
 if (trim(ComboBox7.Text)='无') and (trim(DBEdit21.Text)<>'') then
 begin
 Application.MessageBox('既往家族药品不良反应/事件填"无",则其内容应为空!', '错误提示', 16);
 DBEdit21.ReadOnly:=False;
 DBEdit21.SetFocus;
 end;  }
end;

procedure Tfrm_ypsj.DBEdit6DblClick(Sender: TObject);
var
  s: string;
begin
  if frm_blsj_jbcx = nil then
    Application.CreateForm(Tfrm_blsj_jbcx, frm_blsj_jbcx);
  frm_blsj_jbcx.sjlx := 'C';
  frm_blsj_jbcx.ysdm := pub_czydm;
  frm_blsj_jbcx.ShowModal;
  s := trim(dbedit6.Text);
  if (s <> '') and (s[1] in ['A'..'Z']) then
    dbedit6.Width := 58
  else
  begin
    dbedit6.Width := 132;
    jbmc.Caption := '';
  end;
  if length(jbmc.Caption) <= 12 then
    jbmc.Top := 13
  else
    jbmc.Top := 6;
end;

procedure Tfrm_ypsj.DBEdit6Exit(Sender: TObject);
var
  s: string;
begin
  s := trim(dbedit6.Text);
  if (s <> '') and (s[1] in ['A'..'Z']) then
    dbedit6.Width := 58
  else
  begin
    dbedit6.Width := 132;
    jbmc.Caption := '';
  end;
  if length(jbmc.Caption) <= 12 then
    jbmc.Top := 13
  else
    jbmc.Top := 6;
end;

procedure Tfrm_ypsj.DBEdit8Exit(Sender: TObject);
var
  s1, ls: string;
begin
  s1 := Uppercase((Sender as TDBEDIT).TEXT);
  if length(trim(s1)) > 0 then
  begin
    if (s1[1] in ['0'..'9']) or (s1[1] in ['A'..'z']) then
    begin
      kj1 := sender;
      if s1[1] in ['0'..'9'] then
        ls := 'select * from sys_czy where dm=' + #39 + s1 + #39
      else
        ls := 'select *  from sys_czy where Upper(pym) like' + #39 + '%' + s1 + '%' + #39;
      qry_temp.Close;
      qry_temp.SQL.Clear;
      qry_temp.SQL.Add(ls);
      qry_temp.Open;
      if qry_temp.RecordCount = 0 then
      begin
        Application.MessageBox('没有找到要查找的内容', '错误提示', 16);
        (kj1 as TDBEdit).SetFocus;
      end
      else if qry_temp.RecordCount > 1 then
      begin
        try
          qry_xz.Close;
          qry_xz.SQL.Clear;
          qry_xz.SQL.Add(ls);
          qry_xz.Open;
        except
          Application.MessageBox('拼音码错误”', '错误提示', 16)
        end;
        if kj1 = DBEdit8 then
        begin
          DBGrid5.left := (kj1 as Tdbedit).left;
          DBGrid5.top := (kj1 as Tdbedit).top + (kj1 as Tdbedit).Height + 1;
          DBGrid5.Visible := true;
          DBGrid5.SetFocus;
        end
        else if kj1 = DBEdit23 then
        begin
          DBGrid5.left := (kj1 as Tdbedit).left;
          DBGrid5.top := (kj1 as Tdbedit).top + (kj1 as Tdbedit).Height + 1 + groupbox9.Top;
          DBGrid5.Visible := true;
          DBGrid5.SetFocus;
        end
        else if kj1 = DBEdit24 then
        begin
          DBGrid5.left := (kj1 as Tdbedit).left;
          ;
          DBGrid5.top := (kj1 as Tdbedit).top + (kj1 as Tdbedit).Height + 1 + groupbox4.Top;
          DBGrid5.Visible := true;
          DBGrid5.SetFocus;
        end
        else if kj1 = DBEdit12 then
        begin
          DBGrid5.left := (kj1 as Tdbedit).left;
          DBGrid5.top := (kj1 as Tdbedit).top + (kj1 as Tdbedit).Height + 1 + groupbox4.Top;
          DBGrid5.Visible := true;
          DBGrid5.SetFocus;
        end
      end
      else
      begin
        if kj1 = DBEdit8 then
          ado_jbxx['sbr'] := Trim(qry_temp.fieldbyname('mc').asstring)
        else if kj1 = DBEdit23 then
          ado_jbxx['grglqm'] := Trim(qry_temp.fieldbyname('mc').asstring)
        else if kj1 = DBEdit24 then
          ado_jbxx['dwglqm'] := Trim(qry_temp.fieldbyname('mc').asstring)
        else if kj1 = DBEdit12 then
          ado_jbxx['dwlxr'] := Trim(qry_temp.fieldbyname('mc').asstring);
      end;
    end
    else if s1[1] < #127 then
    begin
      Application.MessageBox('请输入人员代码或拼音简码', '错误提示', 16);
      (kj1 as TDBEdit).SetFocus;
    end;
  end;
end;

procedure Tfrm_ypsj.dbgrdcjColExit(Sender: TObject);
begin
  dbgrdcj.Visible := False;
end;

procedure Tfrm_ypsj.dbgrdcjKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    if kj1 = DBGrid1 then
    begin
      adohyyp.edit;
      adohyyp['sccj'] := qry_sccj.FieldByName('厂家').AsString;
      dbgrid1.SetFocus;
    end
    else if kj1 = DBGrideh2 then
    begin
      adobyyp.Edit;
      adobyyp['sccj'] := qry_sccj.FieldByName('厂家').AsString;
      DBGrideh2.SetFocus;
    end;
  end;
  dbgrdcj.Visible := False;
end;

procedure Tfrm_ypsj.dtpbgrqExit(Sender: TObject);
begin
  CheckBox1.SetFocus;
end;

procedure Tfrm_ypsj.DBGrid1ColExit(Sender: TObject);
var
  ls, ls1, ls2, zyh, sccj: string;
  sccjsql: string;
  sccjsr: string;
  rect: Trect;
begin
  adohyyp.edit;
  if uppercase(trim(DBGrid1.Columns.Grid.SelectedField.FieldName)) = 'SCCJ' then
  begin
    sccjsr := Trim(DBGrid1.SelectedField.AsString);
    qry_sccj.close;
    qry_sccj.sql.Clear;
    sccjsql := 'select mc as 厂家 from sys_ypcd where pym like ' + #39 + '%' + sccjsr + '%' + #39 + ' or ' + 'mc like' + #39 + '%' + sccjsr + '%' + #39;
   // ShowMessage(sccjsql);
    qry_sccj.SQL.Add(sccjsql);
    qry_sccj.open;
    if qry_sccj.RecordCount = 0 then
    begin
      ShowMessage('该厂家不存在，请手工录入！');
    end
    else if qry_sccj.RecordCount = 1 then
    begin
      DBGrid1.SelectedField.Text := Trim(qry_sccj.FieldByName('厂家').AsString);
      adohyyp['sccj'] := Trim(qry_sccj.FieldByName('厂家').AsString);
    end
    else if qry_sccj.RecordCount > 1 then
    begin
      rect := DBGrid1.cellrect(DBGrid1.Col, DBGrid1.Row);
      dbgrdcj.Left := rect.Left + 1;
      dbgrdcj.Top := rect.Top + 23 + groupbox5.Top + dbgrid1.Top;
      dbgrdcj.Visible := True;
      dbgrdcj.SetFocus;
    end;
  end;
  if (uppercase(trim(DBGrid1.selectedfield.fieldname)) = 'SPMC') then
  begin
    KJ1 := sender;
    ls := trim(DBGrid1.selectedfield.AsString);
    if length(ls) = 0 then
    begin
      if TSTRINGGRID(DBGrid1).ROW = 1 then
        MessageDlg('必须录入商品名称！', mtError, [mbOk], 0);
      DBGrid1.SetFocus;
      DBGrid1.SelectedIndex := 1;
      Abort;
    end
    else if (Length(ls) <> 0) and (ls[1] < #127) and (Length(ls) < 9) then
    begin
      zyh := trim(ado_jbxxzyh.AsString);
      if mz.Checked then
        ls1 := 'select mcjx as mc, ypdm as dm,pzwh,sccj from sys_ypdm where  lbdm=01 and sybz=1  and (zjm like ' + #39 + '%' + Uppercase(ls) + '%' + #39 + 'or' + ' ypmc like ' + #39 + '%' + ls + '%' + #39 + ')'
      else
        ls1 := 'select distinct(xmmc) as mc,xmdm as dm,b.pzwh,b.sccj from zybl_zyyz a,sys_ypdm b  where a.xmdm=b.ypdm and  zyh=' + #39 + trim(ado_jbxxzyh.AsString) + #39 + ' and lb=' + #39 + '药品' + #39 + ' and ( dbo.getpy(xmmc) like ' + #39 + '%' + Uppercase(ls) + '%' + #39 + ' or ' + ' xmmc like ' + #39 + '%' + ls + '%' + #39 + ')';
      qry_yp.Close;
      qry_yp.SQL.Clear;
      qry_yp.SQL.Add(ls1);
      qry_yp.Open;
      if qry_yp.RecordCount = 0 then
      begin
        MessageDlg('医嘱中未找到该药品信息！', mtError, [mbOk], 0);
        DBGrid1.SetFocus;
        DBGrid1.SelectedIndex := DBGrid1.SelectedIndex;
      end
      else if qry_yp.RecordCount = 1 then
      begin
        DBGrid1.selectedfield.Text := trim(qry_yp.fieldbyname('mc').asstring);
        adohyyp['pzwh'] := trim(qry_yp.fieldbyname('pzwh').asstring);
        adohyyp['sccj'] := trim(qry_yp.fieldbyname('sccj').asstring);
      end
      else
      begin
        dbgrid2.Visible := True;
        dbgrid2.SetFocus;
      end;

  //    qry_yp.close;
  //    qry_yp.sql.clear;
    end
    else
    begin
      dbgrid2.Canvas.Font.Size := 9;
      rect := DBGrid1.cellrect(DBGrid1.Col, DBGrid1.Row);
      dbgrid2.Left := rect.Left + 1;
      dbgrid2.Top := rect.Top + 23 + groupbox5.Top + dbgrid1.Top;
      dbgrid2.Visible := True;
      dbgrid2.SetFocus;
    end;
  end;

end;

procedure Tfrm_ypsj.DBGrid1KeyPress(Sender: TObject; var Key: Char);
var
  ls, ls1, ls2: string;
begin

  if (key <> chr(9)) and (key <> #13) then
  begin
    if lowercase(trim(DBGrid1.selectedfield.fieldname)) = 'yykssj' then
      Mydate(DBGrid1, cxDBDateEdit1, key, 6);
    if lowercase(trim(DBGrid1.selectedfield.fieldname)) = 'yyjssj' then
      Mydate(DBGrid1, cxDBDateEdit2, key, 7);
  end;

end;

procedure Tfrm_ypsj.DBGrid2DblClick(Sender: TObject);
var
  sfwc: string;
begin
  pc1.ActivePage := TabSheet1;
  qkjm;
  id := trim(sp_sjcx.FieldByName('id').AsString);
  ado_jbxx.Close;
  ado_jbxx.CommandText := 'select * from blsj_ypsj_jbxx where id=' + #39 + id + #39 + ' order by id';
  ado_jbxx.Open;
  dqks := trim(ado_jbxx.FieldByName('ksdm').AsString);
  sfwc := trim(ado_jbxx.FieldByName('sfwc').AsString);
  cljb := trim(ado_jbxx.fieldbyname('cljb').asstring);
  dqczy := trim(ado_jbxx.fieldbyname('clczy').asstring);
  Memo4.ReadOnly := False;
  if (sfwc = '1') or ((dqczy = '') and (dqks <> pub_ksdm)) or ((dqczy <> '') and (dqczy <> pub_czydm)) then
  begin
    Button1.Enabled := False;
    Button2.Enabled := False;
    Button5.Enabled := False;
    Button6.Enabled := False;
    Memo4.ReadOnly := True;
  end
  else
  begin
    Button1.Enabled := True;
    Button2.Enabled := True;
    Button5.Enabled := True;
    Button6.Enabled := True;
    ado_jbxx.Edit;
  end;
  cljbkz(cljb);
  sjcs;
  edit1.Text := trim(ado_jbxx.FieldByName('tmh').AsString);
  dbgrid3.SetFocus;
end;

procedure Tfrm_ypsj.DBGrid2Exit(Sender: TObject);
begin
  DBGrid2.Visible := False;
end;

procedure Tfrm_ypsj.DBGrid2KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    if kj1 = DBGrid1 then
    begin
      adohyyp.Edit;
      adohyyp['spmc'] := trim(qry_yp.FieldByName('mc').AsString);
      adohyyp['pzwh'] := trim(qry_yp.fieldbyname('pzwh').asstring);
      adohyyp['sccj'] := trim(qry_yp.fieldbyname('sccj').asstring);
      dbgrid1.SetFocus;
    end
    else if kj1 = DBGrideh2 then
    begin
      adobyyp['spmc'] := trim(qry_yp.FieldByName('mc').AsString);
      adobyyp['pzwh'] := trim(qry_yp.FieldByName('pzwh').AsString);
      adobyyp['sccj'] := trim(qry_yp.FieldByName('sccj').AsString);
      DBGrideh2.SetFocus;
    end;
    dbgrid2.Visible := false;
  end
  else if key = #27 then
  begin
    dbgrid2.Visible := false;
  end;
end;

procedure Tfrm_ypsj.DBGrid3CellClick(Column: TColumn);
var
  sfwc: string;
begin
  qkjm;
  xzbz := '2';
  id := trim(qry_lb.FieldByName('id').AsString);
  ado_jbxx.Close;
  ado_jbxx.CommandText := 'select * from blsj_ypsj_jbxx where id=' + #39 + id + #39 + ' order by id';
  ado_jbxx.Open;
  dqks := trim(ado_jbxx.FieldByName('ksdm').AsString);
  sfwc := trim(ado_jbxx.FieldByName('sfwc').AsString);
  cljb := trim(ado_jbxx.fieldbyname('cljb').asstring);
  dqczy := trim(ado_jbxx.fieldbyname('clczy').asstring);
  Memo4.ReadOnly := False;
  if (sfwc = '1') or ((dqczy = '') and (dqks <> pub_ksdm)) or ((dqczy <> '') and (dqczy <> pub_czydm)) then
  begin
    Button1.Enabled := False;
    Button2.Enabled := False;
    Button5.Enabled := False;
    Button6.Enabled := False;
  end
  else
  begin
    Button1.Enabled := True;
    Button2.Enabled := True;
    Button5.Enabled := True;
    Button6.Enabled := True;
    ado_jbxx.Edit;
  end;
  cljbkz(cljb);
  sjcs;
  edit1.Text := trim(ado_jbxx.FieldByName('tmh').AsString);
  qry_temp.Close;
  qry_temp.SQL.Clear;
  qry_temp.sql.Add('select  * from blsj_ypsj_cljl where sjid=' + #39 + id + #39 + ' and cljb=' + #39 + inttostr(strtoint(cljb) + 1) + #39 + ' and thbz=1 order by thrq desc');
  qry_temp.Open;
  if (qry_temp.RecordCount > 0) and (cljb = '1') then
  begin
    application.CreateForm(Tfrm_blsj_gwyspf, frm_blsj_gwyspf);
    try
      frm_blsj_gwyspf.sjcljb := inttostr(strtoint(cljb) + 1);
      frm_blsj_gwyspf.sjclid := id;
      frm_blsj_gwyspf.pflb := 'ypsjhtyy';
      frm_blsj_gwyspf.ShowModal;
    finally
      frm_blsj_gwyspf.free;
    end;
  end;
end;

procedure Tfrm_ypsj.DBGrid3DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if (Trim(qry_lb.fieldbyname('sfxbg').asstring) = '新的') or (Trim(qry_lb.fieldbyname('yzcd').asstring) = '严重') then
  begin
    dbgrid3.Canvas.Brush.Color := RGB(207, 80, 65);
    dbgrid3.Canvas.Font.color := clblack;
  end;
  dbgrid3.DefaultDrawColumnCell(rect, datacol, column, state);
end;

procedure Tfrm_ypsj.DBGrid4DblClick(Sender: TObject);
var
  sfwc: string;
begin
  qkjm;
  id := trim(qry_tmh.FieldByName('id').AsString);
  ado_jbxx.Close;
  ado_jbxx.CommandText := 'select * from blsj_ypsj_jbxx where id=' + #39 + id + #39 + ' order by id';
  ado_jbxx.Open;
  dqks := trim(ado_jbxx.FieldByName('ksdm').AsString);
  sfwc := trim(ado_jbxx.FieldByName('sfwc').AsString);
  cljb := trim(ado_jbxx.fieldbyname('cljb').asstring);
  dqczy := trim(ado_jbxx.fieldbyname('clczy').asstring);
  Memo4.ReadOnly := False;
  if (sfwc = '1') or ((dqczy = '') and (dqks <> pub_ksdm)) or ((dqczy <> '') and (dqczy <> pub_czydm)) then
  begin
    Button1.Enabled := False;
    Button2.Enabled := False;
    Button5.Enabled := False;
    Button6.Enabled := False;
    Memo4.ReadOnly := True;
  end
  else
  begin
    Button1.Enabled := True;
    Button2.Enabled := True;
    Button5.Enabled := True;
    Button6.Enabled := True;
    ado_jbxx.Edit;
  end;
  sjcs;
  DBGrid4.Visible := False;
  edit1.Text := trim(ado_jbxx.FieldByName('tmh').AsString);
  Editxm.SetFocus;
end;

procedure Tfrm_ypsj.DBGrid4KeyPress(Sender: TObject; var Key: Char);
var
  sfwc: string;
begin
  if Key = #13 then
  begin
    qkjm;
    id := trim(qry_tmh.FieldByName('id').AsString);
    ado_jbxx.Close;
    ado_jbxx.CommandText := 'select * from blsj_ypsj_jbxx where id=' + #39 + id + #39 + ' order by id';
    ado_jbxx.Open;
    dqks := trim(ado_jbxx.FieldByName('ksdm').AsString);
    sfwc := trim(ado_jbxx.FieldByName('sfwc').AsString);
    cljb := trim(ado_jbxx.fieldbyname('cljb').asstring);
    dqczy := trim(ado_jbxx.fieldbyname('clczy').asstring);
    Memo4.ReadOnly := False;
    if (sfwc = '1') or ((dqczy = '') and (dqks <> pub_ksdm)) or ((dqczy <> '') and (dqczy <> pub_czydm)) then
    begin
      Button1.Enabled := False;
      Button2.Enabled := False;
      Button5.Enabled := False;
      Button6.Enabled := False;
      Memo4.ReadOnly := True;

    end
    else
    begin
      Button1.Enabled := True;
      Button2.Enabled := True;
      Button5.Enabled := True;
      Button6.Enabled := True;
      ado_jbxx.Edit;
    end;
    sjcs;
    edit1.Text := trim(ado_jbxx.FieldByName('tmh').AsString);
    DBGrid4.Visible := False;
    Editxm.SetFocus;
  end;
end;

procedure Tfrm_ypsj.DBGrid5KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    if kj1 = DBEdit8 then
    begin
      DBEdit8.Text := trim(qry_xz.FieldByName('mc').AsString);
      ado_jbxx['sbr'] := trim(qry_xz.FieldByName('mc').AsString);
      DBEdit9.SetFocus;
    end
    else if kj1 = DBEdit23 then
    begin
      DBEdit23.Text := trim(qry_xz.FieldByName('mc').AsString);
      ado_jbxx['grglqm'] := trim(qry_xz.FieldByName('mc').AsString);
      combobox4.SetFocus;
    end
    else if kj1 = DBEdit24 then
    begin
      DBEdit24.Text := trim(qry_xz.FieldByName('mc').AsString);
      ado_jbxx['dwglqm'] := trim(qry_xz.FieldByName('mc').AsString);
    end
    else if kj1 = DBEdit12 then
    begin
      DBEdit12.Text := trim(qry_xz.FieldByName('mc').AsString);
      ado_jbxx['dwlxr'] := trim(qry_xz.FieldByName('mc').AsString);
      DBEdit13.SetFocus;
    end
    else if kj1 = DBEdit17 then
    begin
      DBEdit17.Text := trim(qry_xz.FieldByName('mc').AsString);
      ado_jbxx['sjmc'] := trim(qry_xz.FieldByName('mc').AsString);
      dtpfsrq.SetFocus;
    end
    else if kj1 = DBGrid1 then
    begin
      adohyyp['spmc'] := trim(qry_xz.FieldByName('mc').AsString);
      adohyyp['pzwh'] := trim(qry_xz.fieldbyname('pzwh').asstring);
      dbgrid1.SetFocus;
    end
    else if kj1 = DBGrideh2 then
    begin
      adobyyp['spmc'] := trim(qry_xz.FieldByName('mc').AsString);
      adobyyp['pzwh'] := trim(qry_xz.FieldByName('pzwh').AsString);
      DBGrideh2.SetFocus;
    end;
    dbgrid5.Visible := false;
  end
  else if key = #27 then
  begin
    dbgrid5.Visible := false;
  end;
end;

procedure Tfrm_ypsj.DBGrid6DblClick(Sender: TObject);
var
  ls, bybh, brxm, brxb, brnl, sfwc, dqks, lybz: string;
begin
  if mz.Checked = True then
    lybz := '0'
  else
    lybz := '1';
  bybh := trim(sp_cx.FieldByName('bybh').AsString);
  brxm := trim(sp_cx.FieldByName('brxm').AsString);
  brxb := trim(sp_cx.FieldByName('brxb').AsString);
  brnl := trim(sp_cx.FieldByName('brnl').AsString);
  ls := 'insert into blsj_ypsj_jbxx(tmh,brxm,brxb,brnl,sbrq,clczy,ksdm,cljb,sfwc,brmz,sbdw,lybz,sbks) select ' + #39 + bybh + #39 + ',' + #39 + brxm + #39 + ',' + #39 + brxb + #39 + ',' + #39 + brnl + #39 + ',GETDATE(),' + #39 + pub_czydm + #39 + ',' + #39 + pub_ksdm + #39 + ',' + #39 + '1' + #39 + ',' + #39 + '0' + #39 + ',' + #39 + '汉族' + #39 + ',' + #39 + pub_yymc + #39 + ',' + #39 + lybz + #39 + ',' + #39 + pub_ksdm + #39;
  qry_insert.Close;
  qry_insert.SQL.Clear;
  qry_insert.SQL.Add(ls);
  qry_insert.ExecSQL;
  ado_jbxx.Close;
  ado_jbxx.CommandText := 'select  top 1 * from blsj_ypsj_jbxx where tmh=' + #39 + bybh + #39 + ' order by id desc';
  ado_jbxx.Open;
  ado_jbxx.Edit;
  sjcs;
  ls := 'select * from blsj_ypsj_jbxx where  (sfwc<>1 and clczy=' + #39 + pub_czydm + #39 + ') or (ksdm=' + #39 + pub_ksdm + #39 + ' and sfwc<>1 and clczy=' + #39 + #39 + ')';
  qry_lb.Close;
  qry_lb.SQL.Clear;
  qry_lb.SQL.Add(ls);
  qry_lb.Open;
  xzbz := '2';
  DBGrid6.Visible := False;
  Editxm.SetFocus;
end;

procedure Tfrm_ypsj.DBGrid6KeyPress(Sender: TObject; var Key: Char);
var
  ls, bybh, brxm, brxb, brnl, sfwc, dqks, lybz, zyh: string;
begin
  if Key = #13 then
  begin
    if mz.Checked = True then
      lybz := '0'
    else
      lybz := '1';
    bybh := trim(sp_cx.FieldByName('bybh').AsString);
    brxm := trim(sp_cx.FieldByName('brxm').AsString);
    brxb := trim(sp_cx.FieldByName('brxb').AsString);
    brnl := trim(sp_cx.FieldByName('brnl').AsString);
    zyh := trim(sp_cx.FieldByName('zyh').AsString);
    ls := 'insert into blsj_ypsj_jbxx(zyh,tmh,brxm,brxb,brnl,sbrq,clczy,ksdm,cljb,sfwc,brmz,sbdw,lybz,sbks) select ' + #39 + zyh + #39 + ',' + #39 + bybh + #39 + ',' + #39 + brxm + #39 + ',' + #39 + brxb + #39 + ',' + #39 + brnl + #39 + ',GETDATE(),' + #39 + pub_czydm + #39 + ',' + #39 + pub_ksdm + #39 + ',' + #39 + '1' + #39 + ',' + #39 + '0' + #39 + ',' + #39 + '汉族' + #39 + ',' + #39 + pub_yymc + #39 + ',' + #39 + lybz + #39 + ',' + #39 + pub_ksdm + #39;
    qry_insert.Close;
    qry_insert.SQL.Clear;
    qry_insert.SQL.Add(ls);
    qry_insert.ExecSQL;
    ado_jbxx.Close;
    ado_jbxx.CommandText := 'select  top 1 * from blsj_ypsj_jbxx where tmh=' + #39 + bybh + #39 + ' order by id desc';
    ado_jbxx.Open;
    ado_jbxx.Edit;
    sjcs;
    ls := 'select * from blsj_ypsj_jbxx where  (sfwc<>1 and clczy=' + #39 + pub_czydm + #39 + ') or (ksdm=' + #39 + pub_ksdm + #39 + ' and sfwc<>1 and clczy=' + #39 + #39 + ')';
    qry_lb.Close;
    qry_lb.SQL.Clear;
    qry_lb.SQL.Add(ls);
    qry_lb.Open;
    xzbz := '2';
    DBGrid6.Visible := False;
    Editxm.SetFocus;
  end
  else if Key = #27 then
    DBGrid6.Visible := False;

end;

procedure Tfrm_ypsj.DBGrideh2ColExit(Sender: TObject);
var
  ls, ls1, ls2: string;
  rect: Trect;
  cjsr: string;
  cjjs: string;
begin
  KJ1 := sender;
  if (UpperCase(Trim(DBGrideh2.SelectedField.FieldName))) = 'SCCJ' then
  begin
    adobyyp.Edit;
    cjsr := DBGrideh2.SelectedField.AsString;
    cjjs := 'select mc as 厂家 from sys_ypcd where mc like' + #39 + '%' + cjsr + '%' + #39 + ' or ' + 'pym like' + #39 + '%' + cjsr + '%' + #39;
    qry_sccj.Close;
    qry_sccj.SQL.Clear;
    qry_sccj.sql.add(cjjs);
    qry_sccj.Open;
    if qry_sccj.RecordCount = 0 then
    begin
      ShowMessage('输入的厂家不存在！请手工录入！');
    end
    else if qry_sccj.RecordCount = 1 then
    begin
      adobyyp['sccj'] := Trim(qry_sccj.FieldByName('厂家').AsString);
    end
    else if qry_sccj.RecordCount > 1 then
    begin
      dbgrdcj.Visible := True;
      rect := DBGrideh2.cellrect(DBGrideh2.Col, DBGrideh2.Row);
      dbgrdcj.Left := rect.Left + 1;
      dbgrdcj.Top := rect.Top + 23 + groupbox6.Top + DBGrideh2.Top;
      dbgrdcj.Visible := True;
      dbgrdcj.SetFocus;
    end;

  end;

  if (uppercase(trim(DBGrideh2.selectedfield.fieldname)) = 'SPMC') then
  begin
    ls := trim(DBGrideh2.selectedfield.AsString);
    if length(ls) = 0 then
    begin
      if TSTRINGGRID(DBGrideh2).ROW = 1 then
        MessageDlg('必须录入商品名称！', mtError, [mbOk], 0);
      DBGrideh2.SetFocus;
      DBGrideh2.SelectedIndex := 1;
      Abort;
    end
    else if (Length(ls) <> 0) and (ls[1] < #127) and (Length(ls) < 9) then
    begin
      if mz.Checked then
        ls1 := 'select mcjx as mc, ypdm as dm,pzwh,sccj  from sys_ypdm where  lbdm=01 and sybz=1  and (zjm like ' + #39 + '%' + Uppercase(ls) + '%' + #39 + 'or' + ' ypmc like ' + #39 + '%' + ls + '%' + #39 + ')'
      else
        ls1 := 'select distinct(xmmc) as mc,xmdm as dm,b.pzwh,b.sccj from zybl_zyyz a,sys_ypdm b  where a.xmdm=b.ypdm and  zyh=' + #39 + trim(ado_jbxxzyh.AsString) + #39 + ' and lb=' + #39 + '药品' + #39 + ' and ( dbo.getpy(xmmc) like ' + #39 + '%' + Uppercase(ls) + '%' + #39 + ' or ' + ' xmmc like ' + #39 + '%' + ls + '%' + #39 + ')';
      qry_yp.Close;
      qry_yp.SQL.Clear;
      qry_yp.SQL.Add(ls1);
      qry_yp.Open;
      if qry_yp.RecordCount = 1 then
      begin
        DBGrideh2.selectedfield.Text := trim(qry_yp.fieldbyname('mc').asstring);
        adobyyp['pzwh'] := trim(qry_yp.fieldbyname('pzwh').asstring);
        adobyyp['sccj'] := trim(qry_yp.fieldbyname('sccj').asstring);
      end
      else if qry_yp.RecordCount > 1 then
      begin
        rect := DBGrideh2.cellrect(DBGrideh2.Col, DBGrideh2.Row);
        DBGrid2.Left := rect.Left + 1;
        DBGrid2.Top := rect.Top + 23 + groupbox6.Top + DBGrideh2.Top;
        DBGrid2.Visible := True;
        DBGrid2.SetFocus;
      end;
    end;
  end;
end;

procedure Tfrm_ypsj.DBGrideh2KeyPress(Sender: TObject; var Key: Char);
var
  ls, ls1, ls2: string;
begin
  if (key <> chr(9)) and (key <> #13) then
  begin
    if lowercase(trim(DBGrideh2.selectedfield.fieldname)) = 'yykssj' then
      Mydate(DBGrideh2, cxDBDateEdit3, key, 6);
    if lowercase(trim(DBGrideh2.selectedfield.fieldname)) = 'yyjssj' then
      Mydate(DBGrideh2, cxDBDateEdit4, key, 7);
  end;
end;

procedure Tfrm_ypsj.edit1KeyPress(Sender: TObject; var Key: Char);
var
  tmh, bybh, brxm, brxb, brnl, sfwc, lybz, zyh: string;
  ls: WideString;
begin
  if key = #13 then
  begin
    tmh := Trim(edit1.Text);
    if tmh <> '' then
    begin
      ls := 'select * from blsj_hlsj_jbxx where tmh=' + #39 + tmh + #39 + ' or brxm=' + #39 + tmh + #39;
      ls := ls + 'union   select a.* from blsj_hlsj_jbxx a,zysf_zydj b where b.bqdm=' + pub_bqdm + '  and rtrim(ltrim(a.tmh))=rtrim(ltrim(b.tmh))  and a.brch=' + #39 + tmh + #39 + ' and a.sbks=' + #39 + pub_ksdm + #39;
      qry_temp.Close;
      qry_temp.SQL.Clear;
      qry_temp.SQL.Add(ls);
      qry_temp.Open;
      if qry_temp.RecordCount > 0 then //该卡号已填报过则提示
      begin
        if (application.MessageBox('已存在该卡号或姓名的上报信息，是否继续？', '请注意', MB_YESNO + MB_ICONQUESTION) = IDYES) then
        begin
          qkjm;
          Button1.Enabled := True;
          Button2.Enabled := True;
          Button5.Enabled := True;
          Button6.Enabled := True;
          sp_cx.Close;
          if mz.Checked = True then  //0-门诊 1-住院
          begin
            sp_cx.parameters.ParamByName('@lybz').value := '0';
            lybz := '0';
          end
          else
          begin
            sp_cx.parameters.ParamByName('@lybz').value := '1';
            sp_cx.parameters.ParamByName('@bqdm').value := pub_bqdm;
            lybz := '1';
          end;
          sp_cx.parameters.ParamByName('@tmh').value := tmh;
          sp_cx.Open;
          if sp_cx.RecordCount = 0 then  //没有该卡号挂号记录 或 住院记录
          begin
            application.MessageBox(pchar('该条码号无就诊记录,请检查!'), '注意', 16);
            Edit1.SetFocus;
          end
          else if sp_cx.RecordCount = 1 then  //有一条就诊记录则导入
          begin
            bybh := trim(sp_cx.FieldByName('bybh').AsString);
            brxm := trim(sp_cx.FieldByName('brxm').AsString);
            brxb := trim(sp_cx.FieldByName('brxb').AsString);
            brnl := trim(sp_cx.FieldByName('brnl').AsString);
            zyh := trim(sp_cx.FieldByName('zyh').AsString);
            ls := 'insert into blsj_ypsj_jbxx(zyh,tmh,brxm,brxb,brnl,sbrq,clczy,ksdm,cljb,sfwc,brmz,sbdw,lybz,sbks,dwlxr,dwdh,sjgcms) select ' + #39 + zyh + #39 + ',' + #39 + bybh + #39 + ',' + #39 + brxm + #39 + ',' + #39 + brxb + #39 + ',' + #39 + brnl + #39 + ',GETDATE(),' + #39 + pub_czydm + #39 + ',' + #39 + pub_ksdm + #39 + ',' + #39 + '1' + #39 + ',' + #39 + '0' + #39 + ',' + #39 + '汉族' + #39 + ',' + #39 + pub_yymc + #39 + ',' + #39 + lybz + #39 + ',' + #39 + pub_ksdm + #39 + ',' + #39 + '王宇' + #39 + ',' + #39 + '0816-2242469' + #39;
            ls := ls + ',' + #39 + '患者因“主诉 ”于“时间 ”入院，考虑（诊断为）“诊断”，给予“什么药什么治疗（大的治疗原则）”。';
            ls := ls + '患者“因为什么，在什么时间，而使用了什么药物”，“在什么时间发生了什么样的症状和体征（严重病例需要描述生命体征）”，“经过了什么处理”，“转归情况如何”，“患者是否再次使用药物”，“若使用了是否再次出现了上述症状”。' + #39;
            qry_insert.Close;
            qry_insert.SQL.Clear;
            qry_insert.SQL.Add(ls);
            qry_insert.ExecSQL;
            ado_jbxx.Close;
            ado_jbxx.CommandText := 'select  top 1 * from blsj_ypsj_jbxx where tmh=' + #39 + bybh + #39 + ' order by id desc';
            ado_jbxx.Open;
            ado_jbxx.Edit;
            sjcs;
            ls := 'select * from blsj_ypsj_jbxx where  (sfwc<>1 and clczy=' + #39 + pub_czydm + #39 + ') or (ksdm=' + #39 + pub_ksdm + #39 + ' and sfwc<>1 and clczy=' + #39 + #39 + ')';
            qry_lb.Close;
            qry_lb.SQL.Clear;
            qry_lb.SQL.Add(ls);
            qry_lb.Open;
            Editxm.SetFocus;
          end
          else
          begin
            DBGrid6.left := edit1.left;
            DBGrid6.top := edit1.top + edit1.Height + 1;
            DBGrid6.Visible := true;
            DBGrid6.SetFocus;
          end;
        end;
      end
      else   //该卡号未填报过
      begin
        qkjm;
        Button1.Enabled := True;
        Button2.Enabled := True;
        Button5.Enabled := True;
        Button6.Enabled := True;
        sp_cx.Close;
        if mz.Checked = True then  //0-门诊 1-住院
        begin
          sp_cx.parameters.ParamByName('@lybz').value := '0';
          lybz := '0';
        end
        else
        begin
          sp_cx.parameters.ParamByName('@lybz').value := '1';
          lybz := '1';
        end;
        sp_cx.parameters.ParamByName('@tmh').value := tmh;
        sp_cx.parameters.ParamByName('@bqdm').value := pub_bqdm;
        sp_cx.Open;
        if sp_cx.RecordCount = 0 then  //没有该卡号挂号记录 或 住院记录
        begin
          application.MessageBox(pchar('该条码号无就诊记录,请检查!'), '注意', 16);
          Edit1.SetFocus;
        end
        else if sp_cx.RecordCount = 1 then //有就诊记录则导入
        begin
          bybh := trim(sp_cx.FieldByName('bybh').AsString);
          brxm := trim(sp_cx.FieldByName('brxm').AsString);
          brxb := trim(sp_cx.FieldByName('brxb').AsString);
          brnl := trim(sp_cx.FieldByName('brnl').AsString);
          zyh := trim(sp_cx.FieldByName('zyh').AsString);
          ls := 'insert into blsj_ypsj_jbxx(zyh,tmh,brxm,brxb,brnl,sbrq,clczy,ksdm,cljb,sfwc,brmz,sbdw,lybz,sbks,dwlxr,dwdh,sjgcms) select ' + #39 + zyh + #39 + ',' + #39 + bybh + #39 + ',' + #39 + brxm + #39 + ',' + #39 + brxb + #39 + ',' + #39 + brnl + #39 + ',GETDATE(),' + #39 + pub_czydm + #39 + ',' + #39 + pub_ksdm + #39 + ',' + #39 + '1' + #39 + ',' + #39 + '0' + #39 + ',' + #39 + '汉族' + #39 + ',' + #39 + pub_yymc + #39 + ',' + #39 + lybz + #39 + ',' + #39 + pub_ksdm + #39 + ',' + #39 + '王宇' + #39 + ',' + #39 + '0816-2242469' + #39;
          ls := ls + ',' + #39 + '患者因“主诉 ”于“时间 ”入院，考虑（诊断为）“诊断”，给予“什么药什么治疗（大的治疗原则）”。';
          ls := ls + '患者“因为什么，在什么时间，而使用了什么药物”，“在什么时间发生了什么样的症状和体征（严重病例需要描述生命体征）”，“经过了什么处理”，“转归情况如何”，“患者是否再次使用药物”，“若使用了是否再次出现了上述症状”。' + #39;
          qry_insert.Close;
          qry_insert.SQL.Clear;
          qry_insert.SQL.Add(ls);
          qry_insert.ExecSQL;
          ado_jbxx.Close;
          ado_jbxx.CommandText := 'select * from blsj_ypsj_jbxx where tmh=' + #39 + bybh + #39 + ' order by id desc';
          ado_jbxx.Open;
          ado_jbxx.Edit;
          Memo1.ReadOnly := True;
          sjcs;
          ls := 'select * from blsj_ypsj_jbxx where  (sfwc<>1 and clczy=' + #39 + pub_czydm + #39 + ') or (ksdm=' + #39 + pub_ksdm + #39 + ' and sfwc<>1 and clczy=' + #39 + #39 + ')';
          qry_lb.Close;
          qry_lb.SQL.Clear;
          qry_lb.SQL.Add(ls);
          qry_lb.Open;
        end
        else
        begin
          DBGrid6.left := edit1.left;
          DBGrid6.top := edit1.top + edit1.Height + 1;
          DBGrid6.Visible := true;
          DBGrid6.SetFocus;
        end;
      end;
    end;
  end;
end;

procedure Tfrm_ypsj.FormCreate(Sender: TObject);
var
  ls: string;
  x: Integer;
begin
  pc1.ActivePage := TabSheet1;
  Add_xsz('sys_ksdm', 'dm', cxComboBox1);
  x := Screen.Height;
  if x < 900 then
    self.windowstate := wsMaximized;
  ls := 'select * from blsj_ypsj_jbxx where  (sfwc<>1 and clczy=' + #39 + pub_czydm + #39 + ') or (ksdm=' + #39 + pub_ksdm + #39 + ' and sfwc<>1 and clczy=' + #39 + #39 + ')';
  qry_lb.Close;
  qry_lb.SQL.Clear;
  qry_lb.SQL.Add(ls);
  qry_lb.Open;
  if frm_blsj_checkerror = nil then
    Application.CreateForm(Tfrm_blsj_checkerror, frm_blsj_checkerror);
  DBGrid1.RowSizingAllowed := True;
  DBGrideh2.RowSizingAllowed := True;
end;

procedure Tfrm_ypsj.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    if (activecontrol is TDBGrideh) then
      TDBGrideh(activecontrol).selectedindex := TDBGrideh(activecontrol).selectedindex + 1
    else if Memo4.Focused = False then
    begin
      SelectNext(activeControl, true, true);
    end;
  end;
end;

procedure Tfrm_ypsj.FormShow(Sender: TObject);
begin
  dtpksrq.Date := Now;
  dtpjsrq.Date := Now;
  dtptjs.Date := Now;
  dtptje.Date := Now;
  edit1.SetFocus
end;

procedure Tfrm_ypsj.mzClick(Sender: TObject);
begin
  qkjm;
  edit1.SetFocus;
end;

procedure Tfrm_ypsj.m_scbyClick(Sender: TObject);
begin
  if not adobyyp.IsEmpty then
  begin
    if application.MessageBox('是否确定删除此条药品', '提示', MB_OKCANCEL) = idok then
    begin
      adobyyp.edit;
      adobyyp.Delete;
      adobyyp.post;
    end;
  end
  else
  begin
    ShowMessage('没有需要删除的药品！');
  end;

end;

procedure Tfrm_ypsj.N_scypClick(Sender: TObject);
var delbyyp,ls1:string;
begin
  if adohyyp.RecordCount > 0 then
  begin
    //messagebox(handle,'是否确定删除此条药品','提示',MB_OKCANCEL);
    if application.MessageBox('是否确定删除此条药品', '提示', MB_OKCANCEL) = idok then
    begin
      //adohyyp.Delete;
      qry_delbyyp.Close;
      qry_delbyyp.SQL.Clear;
      qry_delbyyp.SQL.text:='delete blsj_ypsj_hyyp where id ='+adohyyp.FieldByName('id').AsString;
      qry_delbyyp.ExecSQL;

      ls1 := 'select * from blsj_ypsj_hyyp where sjid=' + #39 + id + #39 + ' order by id';
      adohyyp.close;
      adohyyp.CommandText := ls1;
      adohyyp.open;
      adohyyp.Edit;

    end;
  end
  else
  begin
    ShowMessage('没有需要删除的药品！');
  end;
end;

procedure Tfrm_ypsj.zyClick(Sender: TObject);
begin
  qkjm;
  edit1.SetFocus;
end;

procedure Tfrm_ypsj.sjcs;
var
  ls1, ls2: string;
begin
  if ado_jbxxtmh.asstring <> '' then
    edit1.Text := Trim(ado_jbxx.fieldbyname('tmh').asstring);
  if ado_jbxxsfxbg.AsString <> '' then
    ComboBox4.Text := trim(ado_jbxx.fieldbyname('sfxbg').asstring);
  if ado_jbxxyzcd.AsString <> '' then
    ComboBox2.Text := trim(ado_jbxx.fieldbyname('yzcd').asstring);
  if ado_jbxxsbrzy.AsString <> '' then
    ComboBox3.Text := trim(ado_jbxx.fieldbyname('sbrzy').asstring);
  if ado_jbxxjwypblsj.AsString <> '' then
    ComboBox1.Text := trim(ado_jbxx.fieldbyname('jwypblsj').asstring);
  if ado_jbxxjzypblsj.AsString <> '' then
    ComboBox7.Text := trim(ado_jbxx.fieldbyname('jzypblsj').asstring);
  if ado_jbxxsjjg.AsString <> '' then
    ComboBox10.Text := trim(ado_jbxx.fieldbyname('sjjg').asstring);
  if ado_jbxxdyjbyx.AsString <> '' then
    ComboBox11.Text := trim(ado_jbxx.fieldbyname('dyjbyx').asstring);
  if ado_jbxxtyjlhqk.AsString <> '' then
    ComboBox13.Text := trim(ado_jbxx.fieldbyname('tyjlhqk').asstring);
  if ado_jbxxzcsyhqk.AsString <> '' then
    ComboBox12.Text := trim(ado_jbxx.fieldbyname('zcsyhqk').asstring);
  if ado_jbxxbgrglpj.AsString <> '' then
    ComboBox6.Text := trim(ado_jbxx.fieldbyname('bgrglpj').asstring);
  if ado_jbxxbgdwglpj.AsString <> '' then
    ComboBox8.Text := trim(ado_jbxx.fieldbyname('bgdwglpj').asstring);
  if ado_jbxxbglb.AsString <> '' then
    cxComboBox2.Text := trim(ado_jbxx.fieldbyname('bglb').asstring);
  if ado_jbxxsjgcms.asstring <> '' then
    Memo4.Text := ado_jbxx.fieldbyname('sjgcms').asstring;
  if ado_jbxxbz.asstring <> '' then
    Memo1.Text := ado_jbxx.fieldbyname('bz').asstring;
  if ado_jbxxzgqk.asstring <> '' then
    Memo2.Text := ado_jbxx.fieldbyname('zgqk').asstring;
  if ado_jbxxsbks.asstring > '0' then
    cxComboBox1.Text := get_xsz('sys_ksdm', trim(ado_jbxx.fieldbyname('sbks').asstring));
  if ado_jbxxbrzd.asstring > '0' then
  begin
    ls1 := ado_jbxxbrzd.asstring;
    if (ls1 <> '') and (ls1[1] in ['A'..'Z']) then
      dbedit6.Width := 58
    else
    begin
      dbedit6.Width := 132;
      jbmc.Caption := '';
    end;
    jbmc.Caption := get_xsz('icd10', trim(ado_jbxx.fieldbyname('brzd').asstring));
    if length(jbmc.Caption) <= 12 then
      jbmc.Top := 13
    else
      jbmc.Top := 6;
  end;
  ado_jbxx.Edit;
  if ado_jbxxyymc.AsString = '' then
  begin
    ado_jbxx['yymc'] := pub_yymc;
  end;
  if ado_jbxxsbdw.AsString = '' then
  begin
    ado_jbxx['sbdw'] := pub_yymc;
  end;
  if ComboBox3.Text = '其他' then
    DBEdit15.ReadOnly := False;
  if ComboBox1.Text = '有' then
    DBEdit20.ReadOnly := False;
  if ComboBox7.Text = '其他' then
    DBEdit21.ReadOnly := False;
  if (ComboBox10.Text = '有后遗症') or (ComboBox10.Text = '死亡') then
    DBEdit22.ReadOnly := False;
  xgzyxxzk; //展开选项
  id := trim(ado_jbxxid.AsString);
  ls1 := 'select * from blsj_ypsj_hyyp where sjid=' + #39 + id + #39 + ' order by id';
  adohyyp.close;
  adohyyp.CommandText := ls1;
  adohyyp.open;
  adohyyp.Edit;
  ls2 := 'select * from blsj_ypsj_byyp where sjid=' + #39 + id + #39 + ' order by id';
  adobyyp.close;
  adobyyp.CommandText := ls2;
  adobyyp.open;
  adobyyp.Edit;
end;

procedure Tfrm_ypsj.sp_sjcxCalcFields(DataSet: TDataSet);
var
  s: string;
begin
  s := Trim(sp_sjcx.fieldbyname('sfwc').asstring);
  if s = '1' then
    sp_sjcx['lcsfwc'] := '已完成'
  else if s = '0' then
    sp_sjcx['lcsfwc'] := '未完成';

  s := Trim(sp_sjcx.fieldbyname('lybz').asstring);
  if s = '0' then
    sp_sjcx['brly'] := '门诊'
  else if s = '1' then
    sp_sjcx['brly'] := '住院';

  s := Trim(sp_sjcx.fieldbyname('sbks').asstring);
  s := get_xsz('sys_ksdm', s);
  sp_sjcx['sbksmc'] := s;

  s := Trim(sp_sjcx.fieldbyname('clczy').asstring);
  s := get_xsz('sys_czy', s);
  sp_sjcx['zhclry'] := s;

  s := Trim(sp_sjcx.fieldbyname('ksdm').asstring);
  s := get_xsz('sys_ksdm', s);
  sp_sjcx['zhclks'] := s;
end;

procedure Tfrm_ypsj.qkjm;
var
  i: Integer;
begin
  ado_jbxx.Close;
  adohyyp.Close;
  adobyyp.Close;
  cxcombobox1.Text := '';
  ComboBox1.Text := '';
  ComboBox2.Text := '';
  ComboBox3.Text := '';
  ComboBox4.Text := '';
  ComboBox6.Text := '';
  ComboBox7.Text := '';
  ComboBox8.Text := '';
  ComboBox10.Text := '';
  ComboBox11.Text := '';
  ComboBox12.Text := '';
  ComboBox13.Text := '';
  edit1.Text := '';
  Memo4.Clear;
  Memo1.Clear;
  Memo2.Clear;
  jbmc.Caption := '';
  Button1.Enabled := False;
  Button2.Enabled := False;
  Button5.Enabled := False;
  Button6.Enabled := False;
  for i := 1 to 8 do
  begin
    if TcxCheckBox(FindComponent('checkBox' + inttostr(i))).Checked then
      TcxCheckBox(FindComponent('checkBox' + inttostr(i))).Checked := False;
  end;
  for i := 1 to 12 do
  begin
    if TcxCheckBox(FindComponent('cxcheckBox' + inttostr(i))).Checked then
      TcxCheckBox(FindComponent('cxcheckBox' + inttostr(i))).Checked := False;
  end;
end;

procedure Tfrm_ypsj.qry_lbAfterDelete(DataSet: TDataSet);
var
  ls: string;
begin
  qkjm;
  ls := 'select * from blsj_ypsj_jbxx where  (sfwc<>1 and clczy=' + #39 + pub_czydm + #39 + ') or (ksdm=' + #39 + pub_ksdm + #39 + ' and sfwc<>1 and clczy=' + #39 + #39 + ')';
  qry_lb.Close;
  qry_lb.SQL.Clear;
  qry_lb.SQL.Add(ls);
  qry_lb.Open;
  edit1.SetFocus;
end;

procedure Tfrm_ypsj.xgzyxx;
var
  s: string;
  i: integer;
begin
  s := '';
  for i := 1 to 8 do
  begin
    if TcxCheckBox(FindComponent('checkBox' + inttostr(i))).Checked then
      s := s + '1'
    else
      s := s + '0';
  end;
  ado_jbxx['xgzyxx'] := s;
  s := '';
  for i := 1 to 12 do
  begin
    if TcxCheckBox(FindComponent('cxcheckBox' + inttostr(i))).Checked then
      s := s + '1'
    else
      s := s + '0';
  end;
  ado_jbxx['fkyj'] := s;
end;

procedure Tfrm_ypsj.xgzyxxzk;//勾选项展开
var
  s1, s2: string;
  i: integer;
begin
  if ado_jbxxxgzyxx.AsString <> '' then
  begin
    s1 := ado_jbxxxgzyxx.AsString;
    for i := 1 to 8 do   //相关重要信息展开
    begin
      if Copy(s1, i, 1) = '1' then
        TcxCheckBox(FindComponent('checkBox' + inttostr(i))).Checked := true;
    end;
  end;
  if ado_jbxxfkyj.AsString <> '' then
  begin
    s2 := ado_jbxxfkyj.AsString;
    for i := 1 to 12 do   //反馈意见展开
    begin
      if Copy(s2, i, 1) = '1' then
        TcxCheckBox(FindComponent('cxcheckBox' + inttostr(i))).Checked := true;
    end;
  end;
end;

procedure Tfrm_ypsj.Memo4DblClick(Sender: TObject);
begin
  str_mbct := '';
  if (cljb > '0') or (cljb = '') then
  begin
    application.CreateForm(Tfrm_blsj_bqgcyy, frm_blsj_bqgcyy);
    try
      frm_blsj_bqgcyy.sjlb := '药品事件';
      frm_blsj_bqgcyy.ShowModal;
      if str_mbct <> '' then
        memo4.Lines.Add(str_mbct);
    finally
      frm_blsj_bqgcyy.free;
    end;
  end;
end;

procedure Tfrm_ypsj.Mydate(Mydbgrid: Tdbgrideh; Mydate: TcxDBDateEdit; Key: Char; MYROW: bYTE);
var
  rect: Trect;
begin
  try
    if not (Mydate.visible) then
    begin
      Rect := Mydbgrid.cellrect(Myrow, Mydbgrid.row);
      Mydate.left := rect.left + Mydbgrid.left + 2;
      Mydate.top := rect.top + Mydbgrid.top + 1;
      Mydate.width := rect.right - rect.left + 2;
      Mydate.height := rect.bottom - rect.top + 1;
      Mydate.visible := true;
      Mydate.BringToFront;
    end;
    Mydate.setfocus;
    if key > #127 then

    else
      sendmessage(Mydate.handle, wm_char, word(key), 0);
  except

  end;
end;

function Tfrm_ypsj.ljjc;
var
  s: string;
  i: integer;
begin
  frm_blsj_checkerror.Memo1.Clear;
  iii := 0;
  if Trim(Editxm.Text) = '' then
  begin
    iii := iii + 1;
    frm_blsj_checkerror.Memo1.Lines.Add(trim(inttostr(iii)) + '：病人姓名不能为空');
  end;
  if Trim(DBEdit4.Text) = '' then
  begin
    iii := iii + 1;
    frm_blsj_checkerror.Memo1.Lines.Add(trim(inttostr(iii)) + '：病人年龄不能为空');
  end;
  if Trim(DBEdit5.Text) = '' then
  begin
    iii := iii + 1;
    frm_blsj_checkerror.Memo1.Lines.Add(trim(inttostr(iii)) + '：病人性别不能为空');
  end;
  if Trim(DBEdit2.Text) = '' then
  begin
    iii := iii + 1;
    frm_blsj_checkerror.Memo1.Lines.Add(trim(inttostr(iii)) + '：病人体重不能为空');
  end;
  if Trim(DBEdit1.Text) = '' then
  begin
    iii := iii + 1;
    frm_blsj_checkerror.Memo1.Lines.Add(trim(inttostr(iii)) + '：民族不能为空');
  end;
  if Trim(DBEdit6.Text) = '' then
  begin
    iii := iii + 1;
    frm_blsj_checkerror.Memo1.Lines.Add(trim(inttostr(iii)) + '：病人诊断不能为空');
  end;
  if Trim(DBEdit8.Text) = '' then
  begin
    iii := iii + 1;
    frm_blsj_checkerror.Memo1.Lines.Add(trim(inttostr(iii)) + '：报告人不能为空');
  end;
  if Trim(DBEdit9.Text) = '' then
  begin
    iii := iii + 1;
    frm_blsj_checkerror.Memo1.Lines.Add(trim(inttostr(iii)) + '：报告人电话不能为空');
  end;
  if Trim(ComboBox3.Text) = '' then
  begin
    iii := iii + 1;
    frm_blsj_checkerror.Memo1.Lines.Add(trim(inttostr(iii)) + '：报告人职业不能为空');
  end;
  if (Trim(ComboBox3.Text) = '其他') and (dbedit15.Text = '') then
  begin
    iii := iii + 1;
    frm_blsj_checkerror.Memo1.Lines.Add(trim(inttostr(iii)) + '：报告人职业为其他,则应填写具体内容');
  end;
  if Trim(ComboBox1.Text) = '' then
  begin
    iii := iii + 1;
    frm_blsj_checkerror.Memo1.Lines.Add(trim(inttostr(iii)) + '：既往药品不良反应/事件不能为空');
  end;
  if (Trim(ComboBox1.Text) = '有') and ((Trim(dbedit20.Text) = '') or (Trim(dbedit3.Text) = '')) then
  begin
    iii := iii + 1;
    frm_blsj_checkerror.Memo1.Lines.Add(trim(inttostr(iii)) + '：既往药品不良反应/事件填"有",则应填写药品和表现');
  end;
  if (Trim(ComboBox1.Text) = '无') and ((Trim(dbedit20.Text) <> '') or (Trim(dbedit3.Text) <> '')) then
  begin
    iii := iii + 1;
    frm_blsj_checkerror.Memo1.Lines.Add(trim(inttostr(iii)) + '：既往药品不良反应/事件填"无",则既往药品和表现应该为空');
  end;
  if Trim(ComboBox7.Text) = '' then
  begin
    iii := iii + 1;
    frm_blsj_checkerror.Memo1.Lines.Add(trim(inttostr(iii)) + '：家族药品不良反应/事件不能为空');
  end;
  if (Trim(ComboBox7.Text) = '有') and ((Trim(dbedit21.Text) = '') or (Trim(dbedit11.Text) = '')) then
  begin
    iii := iii + 1;
    frm_blsj_checkerror.Memo1.Lines.Add(trim(inttostr(iii)) + '：家族药品不良反应/事件填"有",则应填写具体内容');
  end;
  if (Trim(ComboBox1.Text) = '无') and ((Trim(dbedit21.Text) <> '') or (Trim(dbedit11.Text) <> '')) then
  begin
    iii := iii + 1;
    frm_blsj_checkerror.Memo1.Lines.Add(trim(inttostr(iii)) + '：家族药品不良反应/事件填"无",则具体药物和表现应该为空');
  end;
  if Trim(cxComboBox2.Text) = '' then
  begin
    iii := iii + 1;
    frm_blsj_checkerror.Memo1.Lines.Add(trim(inttostr(iii)) + '：报告类别不能为空');
  end;
  s := '0';
  for i := 1 to 8 do
  begin
    if TcxCheckBox(FindComponent('checkBox' + inttostr(i))).Checked then
      s := '1';
  end;
  if s = '0' then
  begin
    iii := iii + 1;
    frm_blsj_checkerror.Memo1.Lines.Add(trim(inttostr(iii)) + '：相关重要信息应至少选择一项');
  end;
  if (CheckBox7.Checked) and (trim(dbedit19.Text) = '') then
  begin
    iii := iii + 1;
    frm_blsj_checkerror.Memo1.Lines.Add(trim(inttostr(iii)) + '：相关重要信息选择其他，则应填写具体内容');
  end;
  if (CheckBox6.Checked) and (trim(dbedit18.Text) = '') then
  begin
    iii := iii + 1;
    frm_blsj_checkerror.Memo1.Lines.Add(trim(inttostr(iii)) + '：相关重要信息选择过敏史，则应填写过敏史具体内容');
  end;
  adohyyp.First;
  if (adohyypspmc.IsNull) or (trim(adohyypspmc.AsString) = '') then
  begin
    iii := iii + 1;
    frm_blsj_checkerror.Memo1.Lines.Add(trim(inttostr(iii)) + '：怀疑药品为空或输入错误');
  end;
  if trim(memo4.Text) = '' then
  begin
    iii := iii + 1;
    frm_blsj_checkerror.Memo1.Lines.Add(trim(inttostr(iii)) + '：药品不良反应过程描述及处理情况不能为空');
  end;
  if FormatDateTime('yyyy-mm-dd', dtpfsrq.Date) <= '2000-01-01' then
  begin
    iii := iii + 1;
    frm_blsj_checkerror.Memo1.Lines.Add(trim(inttostr(iii)) + '：发生日期一不能为空');
  end;
  if Trim(DBEdit17.Text) = '' then
  begin
    iii := iii + 1;
    frm_blsj_checkerror.Memo1.Lines.Add(trim(inttostr(iii)) + '：事件名称不能为空');
  end;
  if Trim(ComboBox11.Text) = '' then
  begin
    iii := iii + 1;
    frm_blsj_checkerror.Memo1.Lines.Add(trim(inttostr(iii)) + '：对原患疾病的影响不能为空');
  end;
  if Trim(ComboBox4.Text) = '' then
  begin
    iii := iii + 1;
    frm_blsj_checkerror.Memo1.Lines.Add(trim(inttostr(iii)) + '：是否新报告不能为空');
  end;
  if Trim(ComboBox2.Text) = '' then
  begin
    iii := iii + 1;
    frm_blsj_checkerror.Memo1.Lines.Add(trim(inttostr(iii)) + '：严重程度不能为空');
  end;
  if Trim(ComboBox10.Text) = '' then
  begin
    iii := iii + 1;
    frm_blsj_checkerror.Memo1.Lines.Add(trim(inttostr(iii)) + '：不良反应/事件结果不能为空');
  end;
  if Trim(ComboBox12.Text) = '' then
  begin
    iii := iii + 1;
    frm_blsj_checkerror.Memo1.Lines.Add(trim(inttostr(iii)) + '：再次使用可疑药品后是否再次出现同样反应/事件不能为空');
  end;
  if Trim(ComboBox13.Text) = '' then
  begin
    iii := iii + 1;
    frm_blsj_checkerror.Memo1.Lines.Add(trim(inttostr(iii)) + '：停药减量后反应/事件是否消失或减轻不能为空');
  end;
  if cljb = '2' then    //处理级别为2的判断
  begin
    if FormatDateTime('yyyy-mm-dd', dtpbgrq.Date) <= '2000-01-01' then
    begin
      iii := iii + 1;
      frm_blsj_checkerror.Memo1.Lines.Add(trim(inttostr(iii)) + '：报告日期未填写或填写错误');
    end;
    if Trim(DBEdit12.Text) = '' then
    begin
      iii := iii + 1;
      frm_blsj_checkerror.Memo1.Lines.Add(trim(inttostr(iii)) + '：报告单位联系人不能为空');
    end;
    if Trim(DBEdit13.Text) = '' then
    begin
      iii := iii + 1;
      frm_blsj_checkerror.Memo1.Lines.Add(trim(inttostr(iii)) + '：报告单位电话不能为空');
    end;
    if Trim(ComboBox8.Text) = '' then
    begin
      iii := iii + 1;
      frm_blsj_checkerror.Memo1.Lines.Add(trim(inttostr(iii)) + '：报告单位关联性评价不能为空');
    end;
    if Trim(DBEdit24.Text) = '' then
    begin
      iii := iii + 1;
      frm_blsj_checkerror.Memo1.Lines.Add(trim(inttostr(iii)) + '：报告单位关联性评价签名不能为空');
    end;
    if Trim(Memo2.Text) = '' then
    begin
      iii := iii + 1;
      frm_blsj_checkerror.Memo1.Lines.Add(trim(inttostr(iii)) + '：转归情况不能为空');
    end;

  end;
  if iii > 0 then
  begin
    result := true;
    if frm_blsj_checkerror = nil then
      Application.CreateForm(Tfrm_blsj_checkerror, frm_blsj_checkerror);
    frm_blsj_checkerror.ShowModal;
  end
  else
    result := false;
end;

procedure Tfrm_ypsj.cljbkz(s: string);
begin
  if s = '1' then
  begin
    groupbox7.Enabled := true;
    groupbox1.Enabled := true;
    groupbox5.Enabled := true;
    groupbox6.Enabled := true;
    groupbox2.Enabled := true;
    groupbox9.Enabled := true;
    groupbox3.Enabled := true;
    groupbox4.Enabled := true;
    groupbox8.Enabled := true;
  end
  else if s = '2' then
  begin
    groupbox7.Enabled := false;
    groupbox5.Enabled := true;
    groupbox6.Enabled := true;
    groupbox2.Enabled := true;
    groupbox9.Enabled := true;
    groupbox3.Enabled := true;
    groupbox4.Enabled := true;
    groupbox8.Enabled := true;
  end;
end;

end.

