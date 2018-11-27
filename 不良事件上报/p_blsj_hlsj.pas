unit p_blsj_hlsj;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
    Dialogs, StdCtrls, cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
    cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxStyles,
    cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, DB, cxDBData,
    cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
    cxGridTableView, cxGridDBTableView, cxGrid, cxCalendar, ADODB, ExtCtrls,
    QuickRpt, QRCtrls, ComCtrls, DBCtrls, cxDBEdit, Mask,
    cxCheckListBox, Grids, DBGrids, Menus, cxLookAndFeels,cxExportGrid4Link,
    cxLookAndFeelPainters;

type
  Tfrm_hlsj = class(TForm)
    ado_jbxx: TADODataSet;
    qry_temp: TADOQuery;
    qry_insert: TADOQuery;
    qry_pub: TADOQuery;
    ds_tmh: TDataSource;
    qry_tmh: TADOQuery;
    ds_jbxx: TDataSource;
    ds_lb: TDataSource;
    qry_lb: TADOQuery;
    qry_xz: TADOQuery;
    qry_xzmc: TStringField;
    qry_xzdm: TStringField;
    ds_xz: TDataSource;
    ado_jbxxid: TAutoIncField;
    ado_jbxxksdm: TStringField;
    ado_jbxxclczy: TStringField;
    ado_jbxxcljb: TStringField;
    ado_jbxxsfwc: TStringField;
    ado_jbxxsbks: TStringField;
    ado_jbxxsbr: TStringField;
    ado_jbxxfxz: TStringField;
    ado_jbxxtmh: TStringField;
    ado_jbxxbrxm: TStringField;
    ado_jbxxbrxb: TStringField;
    ado_jbxxbrnl: TStringField;
    ado_jbxxbrch: TStringField;
    ado_jbxxbrzd: TStringField;
    ado_jbxxhljb: TStringField;
    ado_jbxxhsxm: TStringField;
    ado_jbxxhsnl: TStringField;
    ado_jbxxhszc: TStringField;
    ado_jbxxgznx: TStringField;
    ado_jbxxsfhzss: TStringField;
    ado_jbxxhzssqk: TMemoField;
    ado_jbxxsfhssh: TStringField;
    ado_jbxxhsshqk: TMemoField;
    ado_jbxxsfyhjf: TStringField;
    ado_jbxxyhjfqk: TMemoField;
    ado_jbxxsjjg: TMemoField;
    ado_jbxxhlbyj: TMemoField;
    ado_jbxxhlbqm: TStringField;
    ado_jbxxhlbqmrq: TDateTimeField;
    ds_cx: TDataSource;
    sp_cx: TADOStoredProc;
    sp_cxbybh: TStringField;
    sp_cxbrxm: TStringField;
    sp_cxbrnl: TStringField;
    sp_cxbrxb: TStringField;
    sp_cxjzrq: TDateTimeField;
    qry_tmhsbrq: TDateTimeField;
    qry_tmhtmh: TStringField;
    qry_tmhbrxm: TStringField;
    qry_tmhbrxb: TStringField;
    qry_tmhbrnl: TStringField;
    qry_tmhid: TAutoIncField;
    pc1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel2: TPanel;
    Button5: TButton;
    Button1: TButton;
    Button2: TButton;
    Button6: TButton;
    Button3: TButton;
    Button4: TButton;
    Panel4: TPanel;
    DBGrid3: TDBGrid;
    ScrollBox1: TScrollBox;
    Panel1: TPanel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label7: TLabel;
    GroupBox1: TGroupBox;
    Label22: TLabel;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    CheckBox6: TCheckBox;
    CheckBox7: TCheckBox;
    CheckBox8: TCheckBox;
    CheckBox9: TCheckBox;
    CheckBox10: TCheckBox;
    CheckBox11: TCheckBox;
    CheckBox12: TCheckBox;
    CheckBox13: TCheckBox;
    CheckBox14: TCheckBox;
    CheckBox15: TCheckBox;
    CheckBox16: TCheckBox;
    CheckBox17: TCheckBox;
    CheckBox18: TCheckBox;
    Edit2: TEdit;
    ComboBox6: TComboBox;
    Memo1: TMemo;
    ComboBox7: TComboBox;
    ComboBox8: TComboBox;
    Memo2: TMemo;
    Memo3: TMemo;
    GroupBox2: TGroupBox;
    Memo4: TMemo;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    Memo5: TMemo;
    GroupBox5: TGroupBox;
    Memo6: TMemo;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBGrid1: TDBGrid;
    DBGrid4: TDBGrid;
    ds_sjcx: TDataSource;
    Panel6: TPanel;
    Label27: TLabel;
    Label28: TLabel;
    gr: TRadioButton;
    ks: TRadioButton;
    Button9: TButton;
    dtpksrq: TDateTimePicker;
    dtpjsrq: TDateTimePicker;
    Button7: TButton;
    Button8: TButton;
    dtpks: TcxDBDateEdit;
    dtphlb: TcxDBDateEdit;
    Panel3: TPanel;
    clb: TcxCheckListBox;
    ad_sfxm: TADODataSet;
    ado_jbxxxxbc: TStringField;
    ado_jbxxsbrq: TDateTimeField;
    sp_cxryrq: TDateTimeField;
    ado_jbxxryrq: TDateTimeField;
    ado_jbxxywsjpf: TStringField;
    Label32: TLabel;
    CheckBox19: TCheckBox;
    CheckBox20: TCheckBox;
    ado_jbxxksgjyj: TMemoField;
    ado_jbxxsftjdkb: TStringField;
    ado_jbxxdkbyj: TMemoField;
    ado_jbxxdkbqm: TStringField;
    ado_jbxxdkbqmrq: TDateTimeField;
    ado_jbxxsftjhlb: TStringField;
    ado_jbxxksqm: TStringField;
    ado_jbxxksqmrq: TDateTimeField;
    TabSheet3: TTabSheet;
    Panel5: TPanel;
    Label36: TLabel;
    Label37: TLabel;
    Button10: TButton;
    dtptjs: TDateTimePicker;
    dtptje: TDateTimePicker;
    Button11: TButton;
    sp_tj: TADOStoredProc;
    ds_tj: TDataSource;
    Edit3: TEdit;
    CheckBox23: TCheckBox;
    ado_jbxxsjlx: TStringField;
    Label38: TLabel;
    ComboBox2: TComboBox;
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
    sp_cxbrch: TStringField;
    ado_jbxxqtsjlx: TStringField;
    ado_jbxxzyh: TStringField;
    sp_cxzyh: TStringField;
    GroupBox7: TGroupBox;
    Label1: TLabel;
    Label26: TLabel;
    Label11: TLabel;
    DBEdit2: TDBEdit;
    DBEdit9: TDBEdit;
    edit1: TEdit;
    Label2: TLabel;
    Label9: TLabel;
    Label12: TLabel;
    DBEdit3: TDBEdit;
    ComboBox1: TComboBox;
    Editxm: TDBEdit;
    Label3: TLabel;
    Label5: TLabel;
    Label13: TLabel;
    ComboBox4: TComboBox;
    ComboBox9: TComboBox;
    DBEdit4: TDBEdit;
    Label19: TLabel;
    Label6: TLabel;
    Label14: TLabel;
    DBEdit5: TDBEdit;
    DBEdit1: TDBEdit;
    ComboBox5: TComboBox;
    Label30: TLabel;
    Label10: TLabel;
    Label29: TLabel;
    dtpryrq: TcxDBDateEdit;
    ComboBox3: TComboBox;
    DBEdit10: TDBEdit;
    Label8: TLabel;
    dtpfsrq: TcxDBDateEdit;
    DBEdit6: TDBEdit;
    Label4: TLabel;
    jbmc: TLabel;
    sp_sjcxsjlx: TStringField;
    sp_sjcxsjlxmc: TStringField;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1DBTableView1tmh: TcxGridDBColumn;
    cxGrid1DBTableView1brxm: TcxGridDBColumn;
    cxGrid1DBTableView1brnl: TcxGridDBColumn;
    cxGrid1DBTableView1sbrq: TcxGridDBColumn;
    cxGrid1DBTableView1sbr: TcxGridDBColumn;
    cxGrid1DBTableView1sbks: TcxGridDBColumn;
    cxGrid1DBTableView1cljb: TcxGridDBColumn;
    cxGrid1DBTableView1sjlx: TcxGridDBColumn;
    cxGrid1DBTableView1zhclry: TcxGridDBColumn;
    cxGrid1DBTableView1sfwc: TcxGridDBColumn;
    cxGrid1DBTableView1brly: TcxGridDBColumn;
    SaveDialog1: TSaveDialog;
    Button12: TButton;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    Button13: TButton;
    cxGrid1DBTableView1brxb: TcxGridDBColumn;
    ComboBox10: TComboBox;
    Label39: TLabel;
    ado_jbxxhzshcd: TStringField;
    Label40: TLabel;
    dtpsjfsrq: TcxDBDateEdit;
    ado_jbxxfsrq: TDateTimeField;
    cxGrid1DBTableView1fsrq: TcxGridDBColumn;
    cxtj: TPopupMenu;
    N1: TMenuItem;
    ado_jbxxblsjfj: TStringField;
    Button14: TButton;
    ComboBox12: TComboBox;
    ado_jbxxfsdd: TStringField;
    gdmc: TEdit;
    ado_jbxxgdmc: TStringField;
    cxGrid1DBTableView1sjfj: TcxGridDBColumn;
    sp_sjcxblsjfj: TStringField;
    sp_sjcxfsrq: TDateTimeField;
    cxGrid1DBTableView1brzd: TcxGridDBColumn;
    Label41: TLabel;
    ComboBox13: TComboBox;
    ado_jbxxhsgj: TStringField;
    cxGrid1DBTableView1fsdd: TcxGridDBColumn;
    sp_sjcxfsdd: TStringField;
    Label31: TLabel;
    ComboBox11: TComboBox;
    sjfj: TLabel;
    CheckBox24: TCheckBox;
    ado_jbxxsfgdcz: TStringField;
    ado_jbxxsjyyfx: TStringField;
    CheckBox25: TCheckBox;
    Label42: TLabel;
    ComboBox14: TComboBox;
    ado_jbxxtssj: TStringField;
    sp_cxbrks: TStringField;
    sp_cxryzd: TStringField;
    procedure sjcs;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure edit1KeyPress(Sender: TObject; var Key: Char);
    procedure mzClick(Sender: TObject);
    procedure zyClick(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure Button4Click(Sender: TObject);
    procedure ComboBox6Exit(Sender: TObject);
    procedure ComboBox7Exit(Sender: TObject);
    procedure ComboBox8Exit(Sender: TObject);
    procedure Add_xsz(bmc, cxz: string; Cbox: TComboBox);
    procedure ComboBox9Exit(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure CheckBox18Exit(Sender: TObject);
    procedure DBEdit6DblClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid4KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid4DblClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure qry_lbAfterDelete(DataSet: TDataSet);
    procedure sp_sjcxCalcFields(DataSet: TDataSet);
    procedure Button9Click(Sender: TObject);
    procedure DBGrid5DblClick(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CheckBox3Exit(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure DBEdit10KeyPress(Sender: TObject; var Key: Char);
    procedure CheckBox19Click(Sender: TObject);
    procedure CheckBox20Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Memo5DblClick(Sender: TObject);
    procedure Memo4DblClick(Sender: TObject);
    procedure Memo7DblClick(Sender: TObject);
    procedure Memo1DblClick(Sender: TObject);
    procedure Memo2DblClick(Sender: TObject);
    procedure Memo3DblClick(Sender: TObject);
    procedure Memo6DblClick(Sender: TObject);
    procedure DBEdit1DblClick(Sender: TObject);
    procedure DBEdit7DblClick(Sender: TObject);
    procedure DBEdit11DblClick(Sender: TObject);
    procedure DBEdit10DblClick(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure cxGrid1DBTableView1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure Button11Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure DBGrid3CellClick(Column: TColumn);
    procedure DBEdit3Exit(Sender: TObject);
    procedure ComboBox5Exit(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure ComboBox11Exit(Sender: TObject);
    procedure ComboBox11Change(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure DBEdit10Exit(Sender: TObject);
    procedure CheckBox13Click(Sender: TObject);
    procedure gdmcDblClick(Sender: TObject);
    procedure Edit3Exit(Sender: TObject);
    procedure ComboBox10Exit(Sender: TObject);
    procedure CheckBox23Click(Sender: TObject);
    procedure CheckBox24Click(Sender: TObject);
    procedure CheckBox25Click(Sender: TObject);
  private
    { Private declarations }
    iii: Integer;
    xzbz: string;
    sjjgcsz:string;
    function ljjc:boolean; //逻辑检查
    procedure sjlxyy; //保存事件类型原因
    procedure sjlxyyzk; //查询时展开事件原因类型
    procedure xzxdy; //选择项打印
    procedure hlyyfx; //护理原因分析
    procedure xxsx; //选项刷新，选中或取消事件类型选项时刷新原因选项clb
    procedure xxbc;//保存原因选项选选择值
    procedure blsjfj;//不良事件分级
  public
    { Public declarations }
    id: string;
    dqczy: string;
    dqks: string;
    cljb: string;
    value1: string;
    value2: string;
    value3: string;
    value4: string;
    value5: string;
    value6: string;
    value7: string;
    value8: string;//原因分析字符串
    pub_key:string;
    dldm:string;
    str_mbct:string;//模板词条内容
    firstshow:boolean;
    function get_xsz(bmc, cxz: string): string;
    procedure qkjm; //清空界面
    procedure cljbkz(s:string);//权限控制
    procedure sxlb;//刷新列表
  end;

var
  kj1: TObject;
  frm_hlsj: Tfrm_hlsj;

implementation

{$R *.dfm}
uses p_dm,p_func,p_tjbg, p_blsj_checkError, p_hlsjprint,p_blsj_gwyspf,p_blsj_bqgcyy, p_main,p_blsj_dglx;

procedure Tfrm_hlsj.Button10Click(Sender: TObject);
var
  ls, ksrq, jsrq: string;
  i,ii:integer;
begin
  cxGridDBTableView1.ClearItems;
  sp_tj.Close;
  ksrq := FormatDateTime('yyyy-mm-dd', dtptjs.Date);
  jsrq := FormatDateTime('yyyy-mm-dd', dtptje.Date);
  sp_tj.parameters.ParamByName('@ksrq').value := ksrq;
  sp_tj.parameters.ParamByName('@jsrq').value := jsrq;
  sp_tj.parameters.ParamByName('@ksdm').value := pub_ksdm;
  sp_tj.parameters.ParamByName('@czydm').value := pub_czydm;
  sp_tj.open;
  for i:=0 to sp_tj.fieldcount-1 do
    begin
      cxGridDBTableView1.CreateColumn;
      cxGridDBTableView1.Columns[i].DataBinding.fieldname:=sp_tj.Fields[i].DisplayName;
      cxGridDBTableView1.Columns[i].caption:=sp_tj.Fields[i].fieldname;
      if i=0 then
      cxGridDBTableView1.Columns[i].width:=100
      else
      cxGridDBTableView1.Columns[i].width:=70;
    end;
  sp_tj.ExecProc;
  sp_tj.active:=True;
end;

procedure Tfrm_hlsj.Button11Click(Sender: TObject);
begin
Self.Close;
end;

procedure Tfrm_hlsj.Button12Click(Sender: TObject);
begin
  if SaveDialog1.Execute then
  begin
    ExportGrid4ToEXCEL( SaveDialog1.FileName, cxGrid1, true, true );
    //exportgridtoexcel(SaveDialog1.FileName, cxGrid1, true, true);
    //MessageBox(0, '数据导出完毕!', '系统提示', MB_OK + MB_ICONINFORMATION);
  end;
end;

procedure Tfrm_hlsj.Button13Click(Sender: TObject);
begin
 if SaveDialog1.Execute then
  begin
    ExportGrid4ToEXCEL( SaveDialog1.FileName, cxGrid2, true, true );
    //exportgridtoexcel(SaveDialog1.FileName, cxGrid2, true, true);
   // MessageBox(0, '数据导出完毕!', '系统提示', MB_OK + MB_ICONINFORMATION);
  end;
end;

procedure Tfrm_hlsj.Button14Click(Sender: TObject);
begin
  if frm_blsj_checkerror = nil then
  Application.CreateForm(Tfrm_blsj_checkerror, frm_blsj_checkerror);
  frm_blsj_checkerror.Memo1.Clear;
  frm_blsj_checkerror.Memo1.Lines.Add('患者损伤严重程度分级说明:');
  frm_blsj_checkerror.Memo1.Lines.Add('无: 没有伤害');
  frm_blsj_checkerror.Memo1.Lines.Add('一级：不需要处理或轻微处理的伤害，如轻微的擦伤，挫伤，不需要包扎、缝合');
  frm_blsj_checkerror.Memo1.Lines.Add('二级：需要处理的较为严重的伤害，如大的擦伤，挫伤，皮肤撕裂伤需要包扎、缝合的');
  frm_blsj_checkerror.Memo1.Lines.Add('三级: 需要处理的严重伤害，如果骨折、意识丧失、严重的组织的伤害或功能的损害');
  frm_blsj_checkerror.Memo1.Lines.Add('死亡: 患者因跌倒产生的持续性损伤而最终致死');
  frm_blsj_checkerror.ShowModal;
end;

procedure Tfrm_hlsj.Button1Click(Sender: TObject);
var
  s,sfwc: string;
  i: Integer;
begin
   id := trim(ado_jbxx.FieldByName('id').AsString);
   Button5.Click;
 //保存后展开开始
  qkjm;
  ado_jbxx.Close;
  ado_jbxx.CommandText := 'select * from blsj_hlsj_jbxx where id=' + #39 + id + #39 + ' order by id';
  ado_jbxx.Open;
  dqks := trim(ado_jbxx.FieldByName('ksdm').AsString);
  sfwc := trim(ado_jbxx.FieldByName('sfwc').AsString);
  cljb := trim(ado_jbxx.fieldbyname('cljb').asstring);
  dqczy := trim(ado_jbxx.fieldbyname('clczy').asstring);
  sjcs;
  cljbkz(cljb);
  if (sfwc = '1') or ((dqczy = '') and (dqks <> pub_ksdm)) or ((dqczy <> '') and (dqczy <> pub_czydm)) then
  begin
    Button1.Enabled := False;
    Button2.Enabled := False;
    Button5.Enabled := False;
    Button6.Enabled := False;
    Memo4.ReadOnly := True;
    Memo5.ReadOnly := True;
    Memo6.ReadOnly := True;
  end
  else
  begin
    Button1.Enabled := True;
    Button2.Enabled := True;
    Button5.Enabled := True;
    Button6.Enabled := True;
    ado_jbxx.Edit;
  end;
  if groupbox7.Enabled=true then
  edit1.Text := trim(ado_jbxx.FieldByName('tmh').AsString);
  blsjfj;
  qry_lb.Locate('id',id,[]);
  //保存后展开结束
 if not ljjc then
  begin
    qry_temp.Close;
    qry_temp.SQL.Clear;
    qry_temp.SQL.Add('select * from blsj_hlsj_jbxx where id=' + id);
    qry_temp.Open;
    s := Trim(qry_temp.fieldbyname('cljb').asstring);
    if strtoint(s) = 3 then
      application.MessageBox(pchar('该记录已到最后处理科室或人员,不能提交!'), '注意', 16)
    else
    begin
      application.CreateForm(Tfrm_tjbg, frm_tjbg);
      frm_tjbg.sjid := 'B' + id;
      frm_tjbg.tjcljb :=cljb;
      frm_tjbg.ShowModal;
    end;
  end;
end;

procedure Tfrm_hlsj.Button2Click(Sender: TObject);
var
  ls, qjks, jlid: string;
begin
  if not ljjc then
  begin
    cljb := Trim(ado_jbxx.fieldbyname('cljb').asstring);
    if (StrToInt(cljb) < 3) or (id = '') then
    begin
      Application.MessageBox('处理流程未完成，请核实!', '错误提示', 16);
    end
    else
    begin
      if (application.MessageBox('完成后不能再进行任何修改，是否继续？', '请注意', MB_YESNO + MB_ICONQUESTION) = IDYES) then
      begin
        button5.Click;
        ls := 'update blsj_hlsj_jbxx set sfwc=1 where id=' + #39 + id + #39;
        qry_temp.Close;
        qry_temp.SQL.Clear;
        qry_temp.SQL.Add(ls);
        qry_temp.ExecSQL;
        application.messagebox('该事件处理流程完成！', '提示', mb_ok + mb_iconinformation);
        qkjm; //清空界面
        sxlb;
      end;
    end;
  end;
end;

procedure Tfrm_hlsj.Button3Click(Sender: TObject);
var
  s, s1, rs, ls, ls1, ls2, ls3, sfwc: string;
  Len, i, ii,n: Integer;
begin
  sfwc := trim(ado_jbxx.fieldbyname('sfwc').asstring);
  cljb := trim(ado_jbxx.fieldbyname('cljb').asstring);
  if ((not ljjc) and (cljb = '4')) or (sfwc = '1') then
  begin
    try
      application.CreateForm(Thlsjprint, hlsjprint);
      hlsjprint.QRLabel1.Caption := pub_yymc;
      hlsjprint.QRLabel4.Caption := Trim(ComboBox9.Text);
      hlsjprint.QRLabel6.Caption := FormatDateTime('yyyy年mm月dd日', dtpfsrq.Date);
      hlsjprint.QRLabel107.Caption := FormatDateTime('yyyy年mm月dd日 hh时mm分', dtpryrq.date);
      hlsjprint.QRLabel8.Caption := Trim(DBEdit1.Text);
      hlsjprint.QRLabel33.Caption := Trim(DBEdit2.Text);
      hlsjprint.QRLabel95.Caption := Trim(ComboBox4.Text);
      hlsjprint.QRLabel97.Caption := Trim(ComboBox5.Text);
      hlsjprint.QRLabel31.Caption := Trim(Editxm.Text);
      hlsjprint.QRLabel88.Caption := Trim(dbedit4.Text);
      hlsjprint.QRLabel19.Caption := Trim(dbedit5.Text);
      hlsjprint.QRLabel21.Caption :=trim(dbedit6.Text)+''+ Trim(jbmc.Caption);
      hlsjprint.QRLabel86.Caption := Trim(DBEdit9.Text);
      hlsjprint.QRLabel90.Caption := Trim(ComboBox1.Text);
      hlsjprint.QRLabel92.Caption := Trim(edit1.Text);
      if Pos('岁', Trim(DBEdit3.Text)) = 0 then
        hlsjprint.QRLabel93.Caption := Trim(DBEdit3.Text) + '岁'
      else
        hlsjprint.QRLabel93.Caption := Trim(DBEdit3.Text);
      xzxdy; //选择项打印
      s := Memo1.Text; //memo1打印
      value1 := '';
      if s <> '' then
      begin
        rs := '';
        len := Length(s);
        while (Len > 98) do
        begin
          ls := Copy(s, 1, 98);
          if pos(''#$D#$A'', ls) = 0 then
          begin
            if ByteType(ls, 98) = mbLeadByte then
            begin
              rs := Copy(s, 1, 97) + char(13) + char(10);
              s := Copy(s, 98, len);
            end
            else
            begin
              rs := Copy(s, 1, 98) + char(13) + char(10);
              s := Copy(s, 99, len);
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
      value2 := '';
      s := Memo2.Text; //memo2打印
      if s <> '' then
      begin
        rs := '';
        len := Length(s);
        while (Len > 98) do
        begin
          ls := Copy(s, 1, 98);
          if pos(''#$D#$A'', ls) = 0 then
          begin
            if ByteType(ls, 98) = mbLeadByte then
            begin
              rs := Copy(s, 1, 97) + char(13) + char(10);
              s := Copy(s, 98, len);
            end
            else
            begin
              rs := Copy(s, 1, 98) + char(13) + char(10);
              s := Copy(s, 99, len);
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
      value3 := '';
      s := Memo3.Text; //memo3打印
      if s <> '' then
      begin
        rs := '';
        len := Length(s);
        while (Len > 98) do
        begin
          ls := Copy(s, 1, 98);
          if pos(''#$D#$A'', ls) = 0 then
          begin
            if ByteType(ls, 98) = mbLeadByte then
            begin
              rs := Copy(s, 1, 97) + char(13) + char(10);
              s := Copy(s, 98, len);
            end
            else
            begin
              rs := Copy(s, 1, 98) + char(13) + char(10);
              s := Copy(s, 99, len);
            end;
            ls := '';
            value3 := value3 + rs;
            len := Length(s);
          end
          else
          begin
            i := pos(''#$D#$A'', ls);
            rs := Copy(ls, 1, i + 1);
            value3 := value3 + rs;
            s := Copy(s, i + 2, len);
          end;
        end;
        value3 := value3 + s;
      end
      else
        value3 := '无';
      value4 := '';
      s := Memo4.Text; //memo4事件经过摘要打印
      if s <> '' then
      begin
        rs := '';
        len := Length(s);
        while (Len > 98) do
        begin
          ls := Copy(s, 1, 98);
          if pos(''#$D#$A'', ls) = 0 then
          begin
            if ByteType(ls, 98) = mbLeadByte then
            begin
              rs := Copy(s, 1, 97) + char(13) + char(10);
              s := Copy(s, 98, len);
            end
            else
            begin
              rs := Copy(s, 1, 98) + char(13) + char(10);
              s := Copy(s, 99, len);
            end;
            ls := '';
            value4 := value4 + rs;
            len := Length(s);
          end
          else
          begin
            i := pos(''#$D#$A'', ls);
            rs := Copy(ls, 1, i + 1);
            value4 := value4 + rs;
            s := Copy(s, i + 2, len);
          end;
        end;
        value4 := value4 + s;
      end;
      value5 := '';
      s := Memo5.Text; //memo5科室意见
      if s <> '' then
      begin
        rs := '';
        len := Length(s);
        while (Len > 98) do
        begin
          ls := Copy(s, 1, 98);
          if pos(''#$D#$A'', ls) = 0 then
          begin
            if ByteType(ls, 98) = mbLeadByte then
            begin
              rs := Copy(s, 1, 97) + char(13) + char(10);
              s := Copy(s, 98, len);
            end
            else
            begin
              rs := Copy(s, 1, 98) + char(13) + char(10);
              s := Copy(s, 99, len);
            end;
            ls := '';
            value5 := value5 + rs;
            len := Length(s);
          end
          else
          begin
            i := pos(''#$D#$A'', ls);
            rs := Copy(ls, 1, i + 1);
            value5 := value5 + rs;
            s := Copy(s, i + 2, len);
          end;
        end;
        value5 := value5 + s;
      end;
      if checkbox19.Checked then
       hlsjprint.QRLabel109.Caption:='√'
      else
      if checkbox20.Checked then
      hlsjprint.QRLabel112.Caption:='√';
      if FormatDateTime('yyyy-mm-dd hh:mm:ss', dtpks.Date) > '1900-00-00 00:00:00' then
      hlsjprint.QRLabel142.Caption := FormatDateTime('yyyy年mm月dd日', dtpks.Date); //签名打印
      hlsjprint.QRLabel140.Caption := Trim(DBEdit7.Text);
       value7 := '';
      // s :='' Memo7.Text; //memo7科部意见打印
      if s <> '' then
      begin
        rs := '';
        len := Length(s);
        while (Len > 98) do
        begin
          ls := Copy(s, 1, 98);
          if pos(''#$D#$A'', ls) = 0 then
          begin
            if ByteType(ls, 98) = mbLeadByte then
            begin
              rs := Copy(s, 1, 97) + char(13) + char(10);
              s := Copy(s, 97, len);
            end
            else
            begin
              rs := Copy(s, 1, 97) + char(13) + char(10);
              s := Copy(s, 99, len);
            end;
            ls := '';
            value7 := value7 + rs;
            len := Length(s);
          end
          else
          begin
            i := pos(''#$D#$A'', ls);
            rs := Copy(ls, 1, i + 1);
            value7 := value7 + rs;
            s := Copy(s, i + 2, len);
          end;
        end;
        value7 := value7 + s;
      end;
     { if FormatDateTime('yyyy-mm-dd hh:mm:ss', dtpdkb.Date) > '1900-00-00 00:00:00' then
      hlsjprint.QRLabel53.Caption := FormatDateTime('yyyy年mm月dd日', dtpdkb.Date); //签名打印
        hlsjprint.QRLabel51.Caption := Trim(DBEdit11.Text);
      if checkbox21.Checked then
       hlsjprint.QRLabel120.Caption:='√'
      else
      if checkbox22.Checked then
      hlsjprint.QRLabel122.Caption:='√';}

      s := Memo6.Text; //memo6护理部意见打印
      value6 := '';
      if s <> '' then
      begin
        rs := '';
        len := Length(s);
        while (Len > 98) do
        begin
          ls := Copy(s, 1, 98);
          if pos(''#$D#$A'', ls) = 0 then
          begin
            if ByteType(ls, 98) = mbLeadByte then
            begin
              rs := Copy(s, 1, 97) + char(13) + char(10);
              s := Copy(s, 98, len);
            end
            else
            begin
              rs := Copy(s, 1, 98) + char(13) + char(10);
              s := Copy(s, 99, len);
            end;
            ls := '';
            value6 := value6 + rs;
            len := Length(s);
          end
          else
          begin
            i := pos(''#$D#$A'', ls);
            rs := Copy(ls, 1, i + 1);
            value6 := value6 + rs;
            s := Copy(s, i + 2, len);
          end;
        end;
        value6 := value6 + s;
      end;
        if FormatDateTime('yyyy-mm-dd hh:mm:ss', dtphlb.Date) > '1900-00-00 00:00:00' then
          hlsjprint.QRLabel116.Caption := FormatDateTime('yyyy年mm月dd日', dtphlb.Date);
          hlsjprint.QRLabel114.Caption := Trim(DBEdit8.Text);
        i:=clb.Items.Count;//原因分析打印
        s:='';
        for n:=0  to i-1 do
        begin
        if clb.Items.Items[n].Checked then
        s:=s+'√'+copy(clb.Items.Items[n].Text,6,200)+'   ';
        end;
        if (trim(edit3.Text)<>'') and (checkbox23.Checked) then
         s:=s+'√'+trim(edit3.Text);
       value8 := '';
       if s <> '' then
       begin
        rs := '';
        len := Length(s);
        while (Len > 98) do
        begin
          ls := Copy(s, 1, 98);
          if pos(''#$D#$A'', ls) = 0 then
          begin
            if ByteType(ls, 98) = mbLeadByte then
            begin
              rs := Copy(s, 1, 97) + char(13) + char(10);
              s := Copy(s, 98, len);
            end
            else
            begin
              rs := Copy(s, 1, 98) + char(13) + char(10);
              s := Copy(s, 99, len);
            end;
            ls := '';
            value8 := value8 + rs;
            len := Length(s);
          end
          else
          begin
            i := pos(''#$D#$A'', ls);
            rs := Copy(ls, 1, i + 1);
            value8 := value8+ rs;
            s := Copy(s, i + 2, len);
          end;
        end;
       end;
       value8:=value8+s;
      hlsjprint.QuickRep1.Preview;
    finally
      hlsjprint.Free;
    end;
  end
  else if iii = 0 then
    application.MessageBox(pchar('事件流程未处理完成或填写不完整,不能打印!'), '注意', 16);
end;

procedure Tfrm_hlsj.Button4Click(Sender: TObject);
begin
  Self.Close;
end;

procedure Tfrm_hlsj.Button5Click(Sender: TObject);
begin
  ado_jbxx['hljb'] := Trim(ComboBox1.Text);
  ado_jbxx['fxz'] := Trim(ComboBox3.Text);
  ado_jbxx['hszc'] := Trim(ComboBox4.Text);
  ado_jbxx['gznx'] := Trim(ComboBox5.Text);
  ado_jbxx['sfhzss'] := Trim(ComboBox6.Text);
  ado_jbxx['hzshcd'] := Trim(ComboBox10.Text);
  ado_jbxx['blsjfj'] := Trim(ComboBox11.Text);
  ado_jbxx['sfhssh'] := Trim(ComboBox7.Text);
  ado_jbxx['sfyhjf'] := Trim(ComboBox8.Text);
  ado_jbxx['fsdd'] := Trim(ComboBox12.Text);
  ado_jbxx['hsgj'] := Trim(ComboBox13.Text);
  ado_jbxx['qtsjlx'] := Edit2.Text;
  ado_jbxx['gdmc'] := gdmc.Text;
  ado_jbxx['sjyyfx'] :=Edit3.Text;
  ado_jbxx['hzssqk'] := Memo1.Text;
  ado_jbxx['hsshqk'] := Memo2.Text;
  ado_jbxx['yhjfqk'] := Memo3.Text;
  ado_jbxx['sjjg']  := Memo4.Text;
  ado_jbxx['ksgjyj'] := Memo5.Text;
  ado_jbxx['hlbyj'] := Memo6.Text;
  ado_jbxx['tssj'] := Trim(ComboBox14.Text);
  if CheckBox24.Checked then
    ado_jbxx['sfgdcz'] :='1'
  else
    ado_jbxx['sfgdcz'] :='0';
  if CheckBox19.Checked then  //是否需要提交大科部，护理部保存
  ado_jbxx['sftjdkb'] :='1'
  else
  if CheckBox20.Checked then
  ado_jbxx['sftjdkb'] :='0';
 { if CheckBox21.Checked then
  ado_jbxx['sftjhlb'] :='1'
  else
  if CheckBox22.Checked then
  ado_jbxx['sftjhlb'] :='0';}
  sjlxyy; //事件类型保存
  ado_jbxx.Post;
  xxbc;//原因分析保存
  qkjm; //清空界面
  sxlb;//刷新列表
  edit1.SetFocus;
end;

procedure Tfrm_hlsj.Button6Click(Sender: TObject);
var
  ls, qjks, clczy, jlid, tjks, tjczy,thyy: string;
begin
  dqks := Trim(ado_jbxx.fieldbyname('ksdm').asstring);
  dqczy := Trim(ado_jbxx.fieldbyname('clczy').asstring);
  ls := 'select top 1 * from blsj_hlsj_cljl where sjid=' + #39 + id + #39 + ' and (thbz<>1  or thbz is null) order by id desc';
  qry_temp.Close;
  qry_temp.SQL.Clear;
  qry_temp.SQL.Add(ls);
  qry_temp.Open;
  tjczy := Trim(qry_temp.fieldbyname('tjczy').asstring);
  tjks := Trim(qry_temp.fieldbyname('tjksdm').asstring);
  if (qry_temp.RecordCount = 0) or ((tjczy <> '') and (tjczy <> pub_czydm)) or ((tjczy = '') and (tjks <> pub_ksdm)) then
    Application.MessageBox('没有可回退的前级科室或人员，不能回退!', '错误提示', 16)
  else if (qry_temp.RecordCount = 1) then
  begin
    qjks := Trim(qry_temp.fieldbyname('clksdm').asstring);
    jlid := Trim(qry_temp.fieldbyname('id').asstring);
    clczy := Trim(qry_temp.fieldbyname('clczy').asstring);
    cljb := IntToStr((StrToInt(cljb) - 1));
    thyy:=trim(INPUTBOX('输入：','请输入退回原因(100字以内)：    ',''));
    ls := 'update blsj_hlsj_jbxx set ksdm=' + #39 + qjks + #39 + ',clczy=' + #39 + clczy + #39 + ',cljb=' + #39 + cljb + #39 + ' where id=' + #39 + id + #39;
    qry_temp.Close;
    qry_temp.SQL.Clear;
    qry_temp.SQL.Add(ls);
    qry_temp.ExecSQL;
    ls := 'update   blsj_hlsj_cljl set thbz=1,thrq=Getdate(),thry='+#39+pub_czydm+#39+',thyy='+#39+thyy+#39+' where id=' + #39 + jlid + #39;
    qry_temp.Close;
    qry_temp.SQL.Clear;
    qry_temp.SQL.Add(ls);
    qry_temp.ExecSQL;
    application.messagebox('报告退回上级科室成功！', '提示', mb_ok + mb_iconinformation);
    qkjm; //清空界面
    sxlb;
    edit1.SetFocus;
  end;
end;

procedure Tfrm_hlsj.Button7Click(Sender: TObject);
begin
Self.Close;
end;

procedure Tfrm_hlsj.Button8Click(Sender: TObject);
begin
  qkjm;
  edit1.SetFocus;
end;

procedure Tfrm_hlsj.Button9Click(Sender: TObject);
var
  ls, ksrq, jsrq: string;
begin
  ksrq := FormatDateTime('yyyy-mm-dd', dtpksrq.Date);
  jsrq := FormatDateTime('yyyy-mm-dd', dtpjsrq.Date);
  sp_sjcx.Close;
  if gr.Checked = true then
  begin
    sp_sjcx.parameters.ParamByName('@cxlx').value := '0'; //0-按照个人查询 1-按照科室查询
    sp_sjcx.parameters.ParamByName('@sjlx').value := '2';
    sp_sjcx.parameters.ParamByName('@czy').value := pub_czydm;
    sp_sjcx.parameters.ParamByName('@ksdm').value := pub_ksdm;
    sp_sjcx.parameters.ParamByName('@ksrq').value := ksrq;
    sp_sjcx.parameters.ParamByName('@jsrq').value := jsrq;
    sp_sjcx.parameters.ParamByName('@sjlxmc').value :='['+trim(combobox2.Text)+']';
    sp_sjcx.Open;
  end
  else
  begin
    sp_sjcx.parameters.ParamByName('@cxlx').value := '1'; //0-按照个人查询 1-按照科室查询
    sp_sjcx.parameters.ParamByName('@sjlx').value := '2';
    sp_sjcx.parameters.ParamByName('@czy').value := pub_czydm;
    sp_sjcx.parameters.ParamByName('@ksdm').value := pub_ksdm;
    sp_sjcx.parameters.ParamByName('@ksrq').value := ksrq;
    sp_sjcx.parameters.ParamByName('@jsrq').value := jsrq;
    sp_sjcx.parameters.ParamByName('@sjlxmc').value :='['+trim(combobox2.Text)+']';
    sp_sjcx.Open;
  end;
end;

procedure Tfrm_hlsj.CheckBox13Click(Sender: TObject);
begin
  xxsx;
  if (CheckBox13.Checked) and (CheckBox13.Focused) then
  begin
    try
      application.CreateForm(Tfrm_blsj_dglx, frm_blsj_dglx);
      frm_blsj_dglx.prv_zyh :=ado_jbxx.FieldByName('zyh').AsString;
      frm_blsj_dglx.prv_id :=ado_jbxx.FieldByName('id').AsString;
      frm_blsj_dglx.ShowModal;
    finally
      frm_blsj_dglx.Free;
    end;
  end;
  if not CheckBox13.Checked then
  begin
    gdmc.text:='';
    CheckBox24.Visible:=false;
    CheckBox24.Checked:=false;
    CheckBox25.Visible:=false;
    CheckBox25.Checked:=false;
  end
  else
  begin
    CheckBox24.Visible:=true;
    CheckBox25.Visible:=true;
  end;

  
  
end;

procedure Tfrm_hlsj.CheckBox18Exit(Sender: TObject);
begin
  if CheckBox18.Checked = True then
    Edit2.ReadOnly := False
  else
    Edit2.ReadOnly := True;
end;

procedure Tfrm_hlsj.CheckBox19Click(Sender: TObject);
begin
if CheckBox19.Checked and checkbox20.Checked then
 CheckBox20.Checked:=false;
end;

procedure Tfrm_hlsj.CheckBox1Click(Sender: TObject);
begin
xxsx;
end;

procedure Tfrm_hlsj.CheckBox20Click(Sender: TObject);
begin
if CheckBox19.Checked and checkbox20.Checked then
 CheckBox19.Checked:=false;
end;

procedure Tfrm_hlsj.CheckBox23Click(Sender: TObject);
begin
  if CheckBox3.Checked then
    clb.Columns:=1
  else
    clb.Columns:=3;

end;

procedure Tfrm_hlsj.CheckBox24Click(Sender: TObject);
begin
  if (CheckBox24.Checked) and (CheckBox25.Checked) then
  CheckBox25.Checked:=false;
end;

procedure Tfrm_hlsj.CheckBox25Click(Sender: TObject);
begin
   if (CheckBox24.Checked) and (CheckBox25.Checked) then
  CheckBox24.Checked:=false;
end;

procedure Tfrm_hlsj.CheckBox3Exit(Sender: TObject);
begin
xxsx;
end;

procedure Tfrm_hlsj.ComboBox10Exit(Sender: TObject);
begin
  if trim(ComboBox10.Text)>'' then
  begin
    if frm_blsj_checkerror = nil then
    Application.CreateForm(Tfrm_blsj_checkerror, frm_blsj_checkerror);
    frm_blsj_checkError.Caption:='患者损伤严重程度分级说明-请正确选择严重程度分级';
    frm_blsj_checkerror.Memo1.Clear;
    frm_blsj_checkerror.Memo1.Lines.Add('患者损伤严重程度分级说明:');
    frm_blsj_checkerror.Memo1.Lines.Add('无： 没有伤害');
    frm_blsj_checkerror.Memo1.Lines.Add('一级：不需要处理或轻微处理的伤害，如轻微的擦伤，挫伤，不需要包扎、缝合');
    frm_blsj_checkerror.Memo1.Lines.Add('二级：需要处理的较为严重的伤害，如大的擦伤，挫伤，皮肤撕裂伤需要包扎、缝合的');
    frm_blsj_checkerror.Memo1.Lines.Add('三级:需要处理的严重伤害，如果骨折、意识丧失、严重的组织的伤害或功能的损害');
    frm_blsj_checkerror.ShowModal;
  end;
end;

procedure Tfrm_hlsj.ComboBox11Change(Sender: TObject);
begin
  blsjfj
end;

procedure Tfrm_hlsj.ComboBox11Exit(Sender: TObject);
begin
  blsjfj;
end;
procedure Tfrm_hlsj.blsjfj;
begin
  if trim(ComboBox11.Text)='Ⅰ级事件' then
  begin
    sjfj.Caption:='Ⅰ级事件:严重不良后果事件/警戒事件—— 非预期的死亡，或是非疾病自然进展过程中造成永久性功能丧失';
    sjfj.Top:=242;
    sjfj.Height:=13;
  end
  else if trim(ComboBox11.Text)='Ⅱ级事件' then
  begin
    sjfj.Caption:='Ⅱ级事件:一般不良后果事件—— 在疾病医疗过程中因护理活动而非疾病本身造成的病人机体与功能损害；因工作造成医务人员机体与功能损害';
    sjfj.Top:=234;
    sjfj.Height:=26;
  end
  else if trim(ComboBox11.Text)='Ⅲ级事件' then
  begin
    sjfj.Caption:='Ⅲ级事件:未造成后果或后果轻微事件—— 虽然发生了错误事实，但未给病人或医务人员机体与功能造成任何损害，或有轻微后果而不需任何处理可完全康复。' ;
    sjfj.Top:=234;
    sjfj.Height:=26;
  end
  else if trim(ComboBox11.Text)='Ⅳ级事件' then
  begin
    sjfj.Caption:='Ⅳ级事件:隐患事件—— 由于及时发现错误，未形成错误事实。';
    sjfj.Top:=242;
    sjfj.Height:=13;
  end
  else if trim(ComboBox11.Text)='' then
  begin
    sjfj.Caption:='';
    sjfj.Top:=236;
    sjfj.Height:=13;
  end;

end;

procedure Tfrm_hlsj.ComboBox5Exit(Sender: TObject);
var
s:string;
begin
  if pos('年',trim(ComboBox5.Text))>0  then
  begin
    s:= trim(ComboBox5.Text);
    DELETE(s,POS('年',s),2);
    ComboBox5.Text:=s;
  end;
  if pos('月',trim(ComboBox5.Text))>0  then
  begin
     Application.MessageBox('工作年限未满1年请填1年', '错误提示', 16);
     ComboBox5.SetFocus;
  end;
end;

procedure Tfrm_hlsj.ComboBox6Exit(Sender: TObject);
begin
  if not( CheckBox1.Checked or  CheckBox2.Checked) and (ComboBox6.Text = '是') then
  begin
     Application.MessageBox('只有跌倒坠床才填写患者损伤!','提示', 16);
     ComboBox6.Text := '否';
     ComboBox10.Text := '';
  end;
  if ComboBox6.Text = '否' then
  begin
    Memo1.ReadOnly := True;
    ComboBox10.Text:='';
  end;
  if ComboBox6.Text = '是' then
  begin
    Memo1.ReadOnly := False;
  end;
end;

procedure Tfrm_hlsj.ComboBox7Exit(Sender: TObject);
begin
  if ComboBox7.Text = '否' then
    Memo2.ReadOnly := True;
  if ComboBox7.Text = '是' then
    Memo2.ReadOnly := False;
end;

procedure Tfrm_hlsj.ComboBox8Exit(Sender: TObject);
begin
  if ComboBox8.Text = '否' then
    Memo3.ReadOnly := True;
  if ComboBox8.Text = '是' then
    Memo3.ReadOnly := False;
end;

procedure Tfrm_hlsj.ComboBox9Exit(Sender: TObject);
var
  s, s1, ls: string;
begin
  kj1 := Sender;
  s := uppercase(trim((kj1 as TComboBox).text));
  if (Length(s) <= 6) and (Length(s) > 0) and ((s[1] in ['0'..'9']) or (s[1] in ['A'..'z'])) then
  begin
    ls:='select dm,mc from sys_ksdm where dm='+#39+s+#39+' and  kssx=09' +' union select dm,mc from sys_ksdm where Upper(pym) like'+#39+'%'+s+'%'+#39+' and  kssx=09';
    qry_temp.Close;
    qry_temp.SQL.Clear;
    qry_temp.SQL.Add(ls);
    qry_temp.Open;
    if qry_temp.RecordCount = 0 then
    begin
      MessageDlg('没有找到想要查找的内容！', mtError, [mbOk], 0);
      (Sender as TComboBox).SetFocus;
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

      DBGrid1.left := (kj1 as TComboBox).left;
      DBGrid1.top := (kj1 as TComboBox).top + (kj1 as TComboBox).Height + 1;
      DBGrid1.Visible := true;
      DBGrid1.SetFocus;
    end
    else
    begin
      ado_jbxx['sbks'] := Trim(qry_temp.fieldbyname('dm').asstring);
      ComboBox9.text := Trim(qry_temp.fieldbyname('mc').asstring);
    end;
  end
  else if (Length(s) > 6) and (s[1] in ['0'..'9']) then
  begin
    ado_jbxx['sbks'] := copy(s, 1, 4);
    ComboBox9.Text := Copy(s, 6, length(s) - 5);
  end;
end;

procedure Tfrm_hlsj.cxGrid1DBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
var
  sfwc: string;
begin
  pc1.ActivePage := TabSheet1;
  qkjm;
  id := trim(sp_sjcx.FieldByName('id').AsString);
  ado_jbxx.Close;
  ado_jbxx.CommandText := 'select * from blsj_hlsj_jbxx where id=' + #39 + id + #39 + ' order by id';
  ado_jbxx.Open;
  dqks := trim(ado_jbxx.FieldByName('ksdm').AsString);
  sfwc := trim(ado_jbxx.FieldByName('sfwc').AsString);
  cljb := trim(ado_jbxx.fieldbyname('cljb').asstring);
  dqczy := trim(ado_jbxx.fieldbyname('clczy').asstring);
  sjcs;
  cljbkz(cljb);
  if (sfwc = '1') or ((dqczy = '') and (dqks <> pub_ksdm)) or ((dqczy <> '') and (dqczy <> pub_czydm)) then
  begin
    Button1.Enabled := False;
    Button2.Enabled := False;
    Button5.Enabled := False;
    Button6.Enabled := False;
    Memo4.ReadOnly := True;
    Memo5.ReadOnly := True;
    Memo6.ReadOnly := True;
    GroupBox7.Enabled:=false;
    GroupBox1.Enabled:=false;
    //GroupBox2.Enabled:=false;
    //GroupBox3.Enabled:=false;
    //GroupBox4.Enabled:=false;
    //GroupBox5.Enabled:=false;
  end
  else
  begin
    Button1.Enabled := True;
    Button2.Enabled := True;
    Button5.Enabled := True;
    Button6.Enabled := True;
    ado_jbxx.Edit;
  end;
  edit1.Text := trim(ado_jbxx.FieldByName('tmh').AsString);
  blsjfj;
end;

procedure Tfrm_hlsj.DBEdit10DblClick(Sender: TObject);
begin
application.CreateForm(Tfrm_blsj_gwyspf, frm_blsj_gwyspf);
frm_blsj_gwyspf.zy_zyh:=trim(ado_jbxxzyh.AsString);
frm_blsj_gwyspf.pflb:='hlsj';
frm_blsj_gwyspf.ShowModal;
end;

procedure Tfrm_hlsj.DBEdit10Exit(Sender: TObject);
var
s:string;
begin
  if pos('分',trim(dbedit10.Text))>0  then
  begin
    s:= trim(dbedit10.Text);
    DELETE(s,POS('分',s),2);
    ado_jbxx['ywsjpf']:=s;
  end;

end;

procedure Tfrm_hlsj.DBEdit10KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    CheckBox1.SetFocus;
end;

procedure Tfrm_hlsj.DBEdit11DblClick(Sender: TObject);
begin
 qry_temp.Close;
 qry_temp.SQL.Clear;
 qry_temp.sql.Add('select  * from blsj_hlsj_cljl where sjid=' + #39 + id + #39 +' and cljb='+#39+inttostr(strtoint(cljb)+1)+#39+ ' and thbz=1 order by thrq desc');
 qry_temp.Open;
if (qry_temp.RecordCount>0) and (cljb='3') then
begin
 application.CreateForm(Tfrm_blsj_gwyspf, frm_blsj_gwyspf);
  try
   frm_blsj_gwyspf.sjcljb:=inttostr(strtoint(cljb)+1);
   frm_blsj_gwyspf.sjclid:=id;
   frm_blsj_gwyspf.pflb:='hlsjhtyy';
   frm_blsj_gwyspf.ShowModal;
  finally
   frm_blsj_gwyspf.free;
  end;
end
else
 Application.MessageBox('无回退记录!', '错误提示', 16);
end;

procedure Tfrm_hlsj.DBEdit1DblClick(Sender: TObject);
begin
 qry_temp.Close;
 qry_temp.SQL.Clear;
 qry_temp.sql.Add('select  * from blsj_hlsj_cljl where sjid=' + #39 + id + #39 +' and cljb='+#39+inttostr(strtoint(cljb)+1)+#39+ ' and thbz=1 order by thrq desc');
 qry_temp.Open;
if (qry_temp.RecordCount>0) and (cljb='1') then
begin
 application.CreateForm(Tfrm_blsj_gwyspf, frm_blsj_gwyspf);
  try
   frm_blsj_gwyspf.sjcljb:=inttostr(strtoint(cljb)+1);
   frm_blsj_gwyspf.sjclid:=id;
   frm_blsj_gwyspf.pflb:='hlsjhtyy';
   frm_blsj_gwyspf.ShowModal;
  finally
   frm_blsj_gwyspf.free;
  end;
end
else
 Application.MessageBox('无回退记录!', '错误提示', 16);
end;

procedure Tfrm_hlsj.DBEdit1Exit(Sender: TObject);
var s1, ls: string;
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
        ls := 'select * from sys_czy where Upper(pym) like' + #39 + '%' + s1 + '%' + #39;
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

        DBGrid1.left := (kj1 as Tdbedit).left;
        if (kj1 = DBEdit8) or (kj1 = DBEdit7) then
          DBGrid1.top := 570
        else
          DBGrid1.top := (kj1 as Tdbedit).top + (kj1 as Tdbedit).Height + 1;
        DBGrid1.Visible := true;
        DBGrid1.SetFocus;
      end
      else
      begin
        if kj1 = DBEdit1 then
          ado_jbxx['sbr'] := Trim(qry_temp.fieldbyname('mc').asstring)
        else if kj1 = DBEdit2 then
          ado_jbxx['hsxm'] := Trim(qry_temp.fieldbyname('mc').asstring)
        else if kj1 = DBEdit7 then
          ado_jbxx['ksqm'] := Trim(qry_temp.fieldbyname('mc').asstring)
        else if kj1 = DBEdit8 then
          ado_jbxx['hlbqm'] := Trim(qry_temp.fieldbyname('mc').asstring);
      end;
    end
    else if s1[1] < #127 then
    begin
      Application.MessageBox('请输入人员代码或拼音简码', '错误提示', 16);
      (kj1 as TDBEdit).SetFocus;
    end;
  end;
end;

procedure Tfrm_hlsj.DBEdit3Exit(Sender: TObject);
var
s:string;
begin
  if pos('岁',trim(dbedit3.Text))>0  then
  begin
    s:= trim(dbedit3.Text);
    DELETE(s,POS('岁',s),2);
    ado_jbxx['hsnl']:=s;
  end;
  try
   if (trim(dbedit3.Text)<>'') and (StrToInt(trim(dbedit3.Text))<18)   then
   begin
      Application.MessageBox('护士年龄应大于18岁,且只填数字不能包含中文', '错误提示', 16);
      dbedit3.SetFocus;
   end;
  except
     Application.MessageBox('护士年龄应大于18岁,且只填数字不能包含中文', '错误提示', 16);
  end;
end;

procedure Tfrm_hlsj.DBEdit6DblClick(Sender: TObject);
begin
  {if frm_blsj_jbcx = nil then
    Application.CreateForm(Tfrm_blsj_jbcx, frm_blsj_jbcx);
  frm_blsj_jbcx.sjlx := 'B';
  frm_blsj_jbcx.ysdm := pub_czydm;
  frm_blsj_jbcx.ShowModal; }
end;

procedure Tfrm_hlsj.DBEdit7DblClick(Sender: TObject);
begin
 qry_temp.Close;
 qry_temp.SQL.Clear;
 qry_temp.sql.Add('select  * from blsj_hlsj_cljl where sjid=' + #39 + id + #39 +' and cljb='+#39+inttostr(strtoint(cljb)+1)+#39+ ' and thbz=1 order by thrq desc');
 qry_temp.Open;
if (qry_temp.RecordCount>0) and (cljb='2') then
begin
 application.CreateForm(Tfrm_blsj_gwyspf, frm_blsj_gwyspf);
  try
   frm_blsj_gwyspf.sjcljb:=inttostr(strtoint(cljb)+1);
   frm_blsj_gwyspf.sjclid:=id;
   frm_blsj_gwyspf.pflb:='hlsjhtyy';
   frm_blsj_gwyspf.ShowModal;
  finally
   frm_blsj_gwyspf.free;
  end;
end
else
 Application.MessageBox('无回退记录!', '错误提示', 16);
end;

procedure Tfrm_hlsj.DBGrid1DblClick(Sender: TObject);
begin
  if kj1 = DBEdit1 then
  begin
    DBEdit1.Text := trim(qry_xz.FieldByName('mc').AsString);
    ado_jbxx['sbr'] := trim(qry_xz.FieldByName('mc').AsString);
    ComboBox3.SetFocus;
  end
  else if kj1 = DBEdit2 then
  begin
    DBEdit2.Text := trim(qry_xz.FieldByName('mc').AsString);
    ado_jbxx['hsxm'] := trim(qry_xz.FieldByName('mc').AsString);
    DBEdit3.SetFocus;
  end
  else if kj1 = DBEdit7 then
  begin
    DBEdit7.Text := trim(qry_xz.FieldByName('mc').AsString);
    ado_jbxx['ksqm'] := trim(qry_xz.FieldByName('mc').AsString);
    dtpks.SetFocus;
  end
  else if kj1 = DBEdit8 then
  begin
    DBEdit8.Text := trim(qry_xz.FieldByName('mc').AsString);
    ado_jbxx['hlbqm'] := trim(qry_xz.FieldByName('mc').AsString);
    dtphlb.SetFocus;
  end
  else if kj1 = ComboBox9 then
  begin
    ado_jbxx['sbks'] := Trim(qry_temp.fieldbyname('dm').asstring);
    ComboBox9.text := Trim(qry_temp.fieldbyname('mc').asstring);
    DBEdit1.SetFocus;
  end;
  dbgrid1.Visible := false;
end;

procedure Tfrm_hlsj.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin

  if key = #13 then
  begin
    if kj1 = DBEdit1 then
    begin
      DBEdit1.Text := trim(qry_xz.FieldByName('mc').AsString);
      ado_jbxx['sbr'] := trim(qry_xz.FieldByName('mc').AsString);
      ComboBox3.SetFocus;
    end
    else if kj1 = DBEdit2 then
    begin
      DBEdit2.Text := trim(qry_xz.FieldByName('mc').AsString);
      ado_jbxx['hsxm'] := trim(qry_xz.FieldByName('mc').AsString);
      DBEdit3.SetFocus;
    end
    else if kj1 = DBEdit7 then
    begin
      DBEdit7.Text := trim(qry_xz.FieldByName('mc').AsString);
      ado_jbxx['ksqm'] := trim(qry_xz.FieldByName('mc').AsString);
      dtpks.SetFocus;
    end
    else if kj1 = DBEdit8 then
    begin
      DBEdit8.Text := trim(qry_xz.FieldByName('mc').AsString);
      ado_jbxx['hlbqm'] := trim(qry_xz.FieldByName('mc').AsString);
      dtphlb.SetFocus;
    end
    else if kj1 = ComboBox9 then
    begin
      ado_jbxx['sbks'] := Trim(qry_temp.fieldbyname('dm').asstring);
      ComboBox9.text := Trim(qry_temp.fieldbyname('mc').asstring);
      DBEdit1.SetFocus;
    end;
    dbgrid1.Visible := false;
  end
  else if key = #27 then
  begin
    dbgrid1.Visible := false;
  end;
end;

procedure Tfrm_hlsj.DBGrid3CellClick(Column: TColumn);
var
  sfwc: string;
begin
  qkjm;
  id := trim(qry_lb.FieldByName('id').AsString);
  if qry_lb.IsEmpty then
  begin
    Exit;
  end;
  ado_jbxx.Close;
  ado_jbxx.CommandText := 'select * from blsj_hlsj_jbxx where id=' + #39 + id + #39 + ' order by id';
  ado_jbxx.Open;
  dqks := trim(ado_jbxx.FieldByName('ksdm').AsString);
  sfwc := trim(ado_jbxx.FieldByName('sfwc').AsString);
  cljb := trim(ado_jbxx.fieldbyname('cljb').asstring);
  dqczy := trim(ado_jbxx.fieldbyname('clczy').asstring);
  sjcs;
  cljbkz(cljb);
  if (sfwc = '1') or ((dqczy = '') and (dqks <> pub_ksdm)) or ((dqczy <> '') and (dqczy <> pub_czydm)) then
  begin
    Button1.Enabled := False;
    Button2.Enabled := False;
    Button5.Enabled := False;
    Button6.Enabled := False;
    Memo4.ReadOnly := True;
    Memo5.ReadOnly := True;
    Memo6.ReadOnly := True;
  end
  else
  begin
    Button1.Enabled := True;
    Button2.Enabled := True;
    Button5.Enabled := True;
    Button6.Enabled := True;
    ado_jbxx.Edit;
  end;
  if groupbox7.Enabled=true then
  edit1.Text := trim(ado_jbxx.FieldByName('tmh').AsString);
  qry_temp.Close;
  qry_temp.SQL.Clear;
  qry_temp.sql.Add('select  * from blsj_hlsj_cljl where sjid=' + #39 + id + #39 +' and cljb='+#39+inttostr(strtoint(cljb)+1)+#39+' and clczy='+#39+pub_czydm+#39+ ' and thbz=1 order by thrq desc');
  qry_temp.Open;
  if (qry_temp.RecordCount>0)  then
  begin
  application.CreateForm(Tfrm_blsj_gwyspf, frm_blsj_gwyspf);
  try
   frm_blsj_gwyspf.sjcljb:=inttostr(strtoint(cljb)+1);
   frm_blsj_gwyspf.sjclid:=id;
   frm_blsj_gwyspf.pflb:='hlsjhtyy';
   frm_blsj_gwyspf.ShowModal;
  finally
   frm_blsj_gwyspf.free;
  end;
  end;
  blsjfj;
end;

procedure Tfrm_hlsj.DBGrid4DblClick(Sender: TObject);
var
  ls, bybh, brxm, brxb, brnl, sfwc, dqks  ,brch ,ryrq,zyh: string;
begin
  bybh := trim(sp_cx.FieldByName('bybh').AsString);
  brxm := trim(sp_cx.FieldByName('brxm').AsString);
  brxb := trim(sp_cx.FieldByName('brxb').AsString);
  brnl := trim(sp_cx.FieldByName('brnl').AsString);
  brch := trim(sp_cx.FieldByName('brch').AsString);
  ryrq := trim(sp_cx.FieldByName('ryrq').AsString);
  zyh := trim(sp_cx.FieldByName('zyh').AsString);
  edit1.Text := bybh;
  ls := 'insert into blsj_hlsj_jbxx(tmh,brxm,brxb,brnl,sbks,sbrq,clczy,ksdm,cljb,sfwc,brch,ryrq,sbr,hsxm,sjjg,zyh) select ' + #39 + bybh + #39 + ',' + #39 + brxm + #39 + ',' + #39 + brxb + #39 + ',' + #39 + brnl + #39 + ',' + #39 + pub_ksdm + #39 + ',GETDATE(),' + #39 + pub_czydm + #39 + ',' + #39 + pub_ksdm + #39 + ',' + #39 + '1' + #39 + ',' + #39 + '0' + #39+','+#39+brch+#39+','+#39+ryrq+#39+','+#39+pub_czyxm+#39+','+#39+pub_czyxm+#39+','+#39+sjjgcsz+#39+','+#39+zyh+#39;
  qry_insert.Close;
  qry_insert.SQL.Clear;
  qry_insert.SQL.Add(ls);
  qry_insert.ExecSQL;
  ado_jbxx.Close;
  ado_jbxx.CommandText := 'select  top 1 * from blsj_hlsj_jbxx where tmh=' + #39 + bybh + #39 + ' order by id desc';
  ado_jbxx.Open;
  ado_jbxx.Edit;
  cljbkz('1');
  sjcs;
  sxlb;
  Editxm.SetFocus;
  DBGrid4.Visible := False;
end;

procedure Tfrm_hlsj.DBGrid4KeyPress(Sender: TObject; var Key: Char);
var
  ls, bybh, brxm, brxb, brnl, sfwc, dqks,brch,ryrq,zyh: string;
begin
  if Key = #13 then
  begin
     bybh := trim(sp_cx.FieldByName('bybh').AsString);
     brxm := trim(sp_cx.FieldByName('brxm').AsString);
     brxb := trim(sp_cx.FieldByName('brxb').AsString);
     brnl := trim(sp_cx.FieldByName('brnl').AsString);
     brch := trim(sp_cx.FieldByName('brch').AsString);
     ryrq := trim(sp_cx.FieldByName('ryrq').AsString);
     zyh := trim(sp_cx.FieldByName('zyh').AsString);
     edit1.Text := bybh;
    ls := 'insert into blsj_hlsj_jbxx(tmh,brxm,brxb,brnl,sbks,sbrq,clczy,ksdm,cljb,sfwc,brch,ryrq,sbr,hsxm,sjjg) select ' + #39 + bybh + #39 + ',' + #39 + brxm + #39 + ',' + #39 + brxb + #39 + ',' + #39 + brnl + #39 + ',' + #39 + pub_ksdm + #39 + ',GETDATE(),' + #39 + pub_czydm + #39 + ',' + #39 + pub_ksdm + #39 + ',' + #39 + '1' + #39 + ',' + #39 + '0' + #39+','+#39+brch+#39+','+#39+ryrq+#39+','+#39+pub_czyxm+#39+','+#39+pub_czyxm+#39+','+#39+sjjgcsz+#39+','+#39+zyh+#39;
    qry_insert.Close;
    qry_insert.SQL.Clear;
    qry_insert.SQL.Add(ls);
    qry_insert.ExecSQL;
    ado_jbxx.Close;
    ado_jbxx.CommandText := 'select  top 1 * from blsj_hlsj_jbxx where tmh=' + #39 + bybh + #39 + ' order by id desc';
    ado_jbxx.Open;
    ado_jbxx.Edit;
    cljbkz('1');
    sjcs;
    sxlb;
    Editxm.SetFocus;
    DBGrid4.Visible := False;
    xzbz := '2';
  end
  else if Key = #27 then
  begin
    DBGrid4.Visible := False;
  end;
end;

procedure Tfrm_hlsj.DBGrid5DblClick(Sender: TObject);
var
  sfwc: string;
begin
  pc1.ActivePage := TabSheet1;
  qkjm;
  id := trim(sp_sjcx.FieldByName('id').AsString);
  ado_jbxx.Close;
  ado_jbxx.CommandText := 'select * from blsj_hlsj_jbxx where id=' + #39 + id + #39 + ' order by id';
  ado_jbxx.Open;
  dqks := trim(ado_jbxx.FieldByName('ksdm').AsString);
  sfwc := trim(ado_jbxx.FieldByName('sfwc').AsString);
  cljb := trim(ado_jbxx.fieldbyname('cljb').asstring);
  dqczy := trim(ado_jbxx.fieldbyname('clczy').asstring);
  cljbkz(cljb);
  if (sfwc = '1') or ((dqczy = '') and (dqks <> pub_ksdm)) or ((dqczy <> '') and (dqczy <> pub_czydm)) then
  begin
    Button1.Enabled := False;
    Button2.Enabled := False;
    Button5.Enabled := False;
    Button6.Enabled := False;
    Memo4.ReadOnly := True;
    Memo5.ReadOnly := True;
    Memo6.ReadOnly := True;
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
end;


procedure Tfrm_hlsj.edit1KeyPress(Sender: TObject; var Key: Char);
var tmh, ls, bybh, brxm, brxb, brnl, sfwc, dqks, brch, ryrq ,zyh ,ryzd: string;
begin
  if Key = #13 then
  begin
    tmh := Trim(edit1.Text);
    if tmh <> '' then
    begin
      ls := 'select * from blsj_hlsj_jbxx where tmh=' + #39 + tmh + #39 + ' or brxm=' + #39 + tmh + #39;
      ls :=ls+'union   select a.* from blsj_hlsj_jbxx a,zysf_zydj b where b.bqdm='+pub_bqdm+'  and rtrim(ltrim(a.tmh))=rtrim(ltrim(b.tmh))  and a.brch='+#39+tmh+#39 +' and a.sbks='+#39+pub_ksdm+#39;
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
          sp_cx.parameters.ParamByName('@lybz').value := '1';
          sp_cx.parameters.ParamByName('@tmh').value := tmh;
          sp_cx.parameters.ParamByName('@bqdm').value := pub_bqdm;
          sp_cx.Open;
          if sp_cx.RecordCount = 0 then //没有该卡号挂号记录 或 住院记录
          begin
            application.MessageBox(pchar('该条码号或姓名无就诊记录,请检查!'), '注意', 16);
            Edit1.SetFocus;
          end
          else if sp_cx.RecordCount = 1 then //有就诊记录则导入
          begin
            bybh := trim(sp_cx.FieldByName('bybh').AsString);
            brxm := trim(sp_cx.FieldByName('brxm').AsString);
            brxb := trim(sp_cx.FieldByName('brxb').AsString);
            brnl := trim(sp_cx.FieldByName('brnl').AsString);
            brch := trim(sp_cx.FieldByName('brch').AsString);
            ryrq := trim(sp_cx.FieldByName('ryrq').AsString);
            zyh  := trim(sp_cx.FieldByName('zyh').AsString);
            ryzd := trim(sp_cx.FieldByName('ryzd').AsString);
            edit1.Text := bybh;
            ls := 'insert into blsj_hlsj_jbxx(tmh,brxm,brxb,brnl,sbks,sbrq,clczy,ksdm,cljb,sfwc,brch,ryrq,sbr,hsxm,sjjg,zyh,brzd) select ' + #39 + bybh + #39 + ',' + #39 + brxm + #39 + ',' + #39 + brxb + #39 + ',' + #39 + brnl + #39 + ',' + #39 + pub_ksdm + #39 + ',GETDATE(),' + #39 + pub_czydm + #39 + ',' + #39 + pub_ksdm + #39 + ',' + #39 + '1' + #39 + ',' + #39 + '0' + #39+','+#39+brch+#39+','+#39+ryrq+#39+','+#39+pub_czyxm+#39+','+#39+pub_czyxm+#39+','+#39+sjjgcsz+#39+','+#39+zyh+#39+','+#39+ryzd+#39;
            qry_insert.Close;
            qry_insert.SQL.Clear;
            qry_insert.SQL.Add(ls);
            qry_insert.ExecSQL;
            ado_jbxx.Close;
            ado_jbxx.CommandText := 'select  top 1 * from blsj_hlsj_jbxx where tmh=' + #39 + bybh + #39 + ' order by id desc';
            ado_jbxx.Open;
            ado_jbxx.Edit;
            Button5.Click;
            DBGrid3.OnCellClick(DBGrid3.Columns[0]);
            ado_jbxx.Close;
            ado_jbxx.CommandText := 'select  top 1 * from blsj_hlsj_jbxx where tmh=' + #39 + bybh + #39 + ' order by id desc';
            ado_jbxx.Open;
            ado_jbxx.Edit;
            cljbkz('1');
            edit1.SetFocus;
            sjcs;
            sxlb;
            Editxm.SetFocus;
          end
          else
          begin
            DBGrid4.left := edit1.left;
            DBGrid4.top := edit1.top + edit1.Height + 1;
            DBGrid4.Visible := true;
            DBGrid4.SetFocus;
          end;
        end;
      end
      else //该卡号未填报过
      begin
        qkjm;
        Button1.Enabled := True;
        Button2.Enabled := True;
        Button5.Enabled := True;
        Button6.Enabled := True;
        sp_cx.Close;
        sp_cx.parameters.ParamByName('@lybz').value := '1';
        sp_cx.parameters.ParamByName('@tmh').value := tmh;
        sp_cx.parameters.ParamByName('@bqdm').value :=pub_bqdm;
        sp_cx.Open;
        if sp_cx.RecordCount = 0 then //没有该卡号挂号记录 或 住院记录
        begin
          application.MessageBox(pchar('该条码号或姓名无就诊记录,请检查!'), '注意', 16);
          Edit1.SetFocus;
        end
        else if sp_cx.RecordCount = 1 then //有1条就诊记录则导入
        begin
          bybh := trim(sp_cx.FieldByName('bybh').AsString);
          brxm := trim(sp_cx.FieldByName('brxm').AsString);
          brxb := trim(sp_cx.FieldByName('brxb').AsString);
          brnl := trim(sp_cx.FieldByName('brnl').AsString);
          brch := trim(sp_cx.FieldByName('brch').AsString);
          ryrq := trim(sp_cx.FieldByName('ryrq').AsString);
          zyh := trim(sp_cx.FieldByName('zyh').AsString);
          ryzd := trim(sp_cx.FieldByName('ryzd').AsString);
          edit1.Text := bybh;
          ls := 'insert into blsj_hlsj_jbxx(tmh,brxm,brxb,brnl,sbks,sbrq,clczy,ksdm,cljb,sfwc,brch,ryrq,sbr,hsxm,sjjg,zyh,brzd) select ' + #39 + bybh + #39 + ',' + #39 + brxm + #39 + ',' + #39 + brxb + #39 + ',' + #39 + brnl + #39 + ',' + #39 + pub_ksdm + #39 + ',GETDATE(),' + #39 + pub_czydm + #39 + ',' + #39 + pub_ksdm + #39 + ',' + #39 + '1' + #39 + ',' + #39 + '0' + #39+','+#39+brch+#39+','+#39+ryrq+#39+','+#39+pub_czyxm+#39+','+#39+pub_czyxm+#39+','+#39+sjjgcsz+#39+','+#39+zyh+#39+','+#39+ryzd+#39;
          qry_insert.Close;
          qry_insert.SQL.Clear;
          qry_insert.SQL.Add(ls);
          qry_insert.ExecSQL;
          ado_jbxx.Close;
          ado_jbxx.CommandText := 'select * from blsj_hlsj_jbxx where tmh=' + #39 + bybh + #39 + ' order by id desc';
          ado_jbxx.Open;
          ado_jbxx.Edit;
          Button5.Click;
          DBGrid3.OnCellClick(DBGrid3.Columns[0]);
          ado_jbxx.Close;
          ado_jbxx.CommandText := 'select  top 1 * from blsj_hlsj_jbxx where tmh=' + #39 + bybh + #39 + ' order by id desc';
          ado_jbxx.Open;
          ado_jbxx.Edit;
          edit1.SetFocus;
          cljbkz('1'); //权限控制过程
          sjcs;
          sxlb;
          Editxm.SetFocus;
        end
        else if sp_cx.RecordCount > 1 then
        begin
          DBGrid4.left := edit1.left;
          DBGrid4.top := edit1.top + edit1.Height + 1;
          DBGrid4.Visible := true;
          DBGrid4.SetFocus;
        end;
      end;
    end;
  end;
end;

procedure Tfrm_hlsj.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    ComboBox6.SetFocus;
end;

procedure Tfrm_hlsj.Edit3Exit(Sender: TObject);
begin
  if (CheckBox23.Checked) and (Trim(Edit3.Text)<>'') and (CheckBox18.Checked) then
  begin
   clb.Items.Clear;
   clb.Columns :=1;
   clb.Items.Add;
   clb.Items.Items[0].Text:=Trim(Edit3.Text);
   clb.ReadOnly:=True;
  end
  else
  clb.Columns:=3;
end;

procedure Tfrm_hlsj.FormCreate(Sender: TObject);
var
  ls: string;
  x: Integer;
begin
  Add_xsz('sys_ksdm', 'dm', ComboBox9);
  pc1.ActivePage := TabSheet1;
  x := Screen.Height;
  if x < 900 then
    self.windowstate := wsMaximized;
  if frm_blsj_checkerror = nil then
  Application.CreateForm(Tfrm_blsj_checkerror, frm_blsj_checkerror);
  sxlb;
  sjjgcsz:='';
end;

procedure Tfrm_hlsj.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) and (Memo1.Focused = False) and (Memo2.Focused = False) and (Memo3.Focused = False) and (Memo4.Focused = False) and (Memo5.Focused = False) and (Memo6.Focused = False)  then
    SelectNext(activeControl, true, true);
end;


procedure Tfrm_hlsj.FormShow(Sender: TObject);
begin
  dtpksrq.Date := Now;
  dtpjsrq.Date := Now;
  dtptjs.Date:=Now;
  dtptje.Date:=Now;
  edit1.SetFocus
end;

procedure Tfrm_hlsj.gdmcDblClick(Sender: TObject);
begin
    if (CheckBox13.Checked) then
  begin
    try
      application.CreateForm(Tfrm_blsj_dglx, frm_blsj_dglx);
      frm_blsj_dglx.prv_zyh :=ado_jbxx.FieldByName('zyh').AsString;
      frm_blsj_dglx.ShowModal;
    finally
      frm_blsj_dglx.Free;
    end;
  end;
end;

function Tfrm_hlsj.get_xsz(bmc, cxz: string): string;
var sj: string;
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
    if bmc = 'icd10'
      then
      result := trim(Qry_pub.fieldbyname('jbmc').asstring)
    else
      result := trim(Qry_pub.fieldbyname('mc').asstring)
  end
  else
    result := '';
end;

procedure Tfrm_hlsj.mzClick(Sender: TObject);
begin
  qkjm;
  edit1.SetFocus;
end;

procedure Tfrm_hlsj.N1Click(Sender: TObject);
var
  ls, qjks, clczy, jlid, tjks, tjczy,thyy: string;
begin
  dqks := Trim(ado_jbxx.fieldbyname('ksdm').asstring);
  dqczy := Trim(ado_jbxx.fieldbyname('clczy').asstring);
  ls := 'select top 1 * from blsj_hlsj_cljl where sjid=' + #39 + id + #39 + ' and (thbz<>1  or thbz is null) order by id desc';
  qry_temp.Close;
  qry_temp.SQL.Clear;
  qry_temp.SQL.Add(ls);
  qry_temp.Open;
  tjczy := Trim(qry_temp.fieldbyname('tjczy').asstring);
  tjks := Trim(qry_temp.fieldbyname('tjksdm').asstring);
  if (qry_temp.RecordCount = 0) or (tjczy='') or (id='') then
    Application.MessageBox('没有可回退的前级科室或人员，不能回退!', '错误提示', 16)
  else if (qry_temp.RecordCount = 1) then
  begin
    qjks := Trim(qry_temp.fieldbyname('clksdm').asstring);
    jlid := Trim(qry_temp.fieldbyname('id').asstring);
    clczy := Trim(qry_temp.fieldbyname('clczy').asstring);
    cljb := IntToStr((StrToInt(cljb) - 1));
    thyy:=trim(INPUTBOX('输入：','请输入退回原因(100字以内)：    ',''));
    ls := 'update blsj_hlsj_jbxx set ksdm=' + #39 + qjks + #39 + ',clczy=' + #39 + clczy + #39 + ',cljb=' + #39 + cljb + #39 + ' where id=' + #39 + id + #39;
    qry_temp.Close;
    qry_temp.SQL.Clear;
    qry_temp.SQL.Add(ls);
    qry_temp.ExecSQL;
    ls := 'update   blsj_hlsj_cljl set thbz=1,thrq=Getdate(),thry='+#39+pub_czydm+#39+',thyy='+#39+thyy+#39+' where id=' + #39 + jlid + #39;
    qry_temp.Close;
    qry_temp.SQL.Clear;
    qry_temp.SQL.Add(ls);
    qry_temp.ExecSQL;
    application.messagebox('报告退回上级科室成功！', '提示', mb_ok + mb_iconinformation);
    qkjm; //清空界面
    sxlb;
  end;
end;

procedure Tfrm_hlsj.sjcs;
var sbrq, dhtzrq, s: string;
begin
  if ado_jbxxtmh.asstring <> '' then
    edit1.Text := Trim(ado_jbxx.fieldbyname('tmh').asstring);
  if ado_jbxxhljb.asstring <> '' then
    ComboBox1.Text := trim(ado_jbxx.fieldbyname('hljb').asstring);
  if ado_jbxxsbks.asstring <> '' then
    ComboBox9.Text := trim(ado_jbxx.fieldbyname('sbks').asstring);
  if ado_jbxxfxz.asstring <> '' then
    ComboBox3.Text := trim(ado_jbxx.fieldbyname('fxz').asstring);
  if ado_jbxxhszc.asstring <> '' then
    ComboBox4.Text := trim(ado_jbxx.fieldbyname('hszc').asstring);
  if ado_jbxxgznx.asstring <> '' then
    ComboBox5.Text := trim(ado_jbxx.fieldbyname('gznx').asstring);
  if ado_jbxxqtsjlx.asstring <> '' then
    Edit2.Text := trim(ado_jbxx.fieldbyname('qtsjlx').asstring);
  if ado_jbxxgdmc.asstring <> '' then
    gdmc.Text := trim(ado_jbxx.fieldbyname('gdmc').asstring);
  if ado_jbxxsfhzss.asstring <> '' then
    ComboBox6.Text := trim(ado_jbxx.fieldbyname('sfhzss').asstring);
  if ado_jbxxhzshcd.asstring <> '' then
    ComboBox10.Text := trim(ado_jbxx.fieldbyname('hzshcd').asstring);
  if ado_jbxxsfhssh.asstring <> '' then
    ComboBox7.Text := trim(ado_jbxx.fieldbyname('sfhssh').asstring);
  if ado_jbxxsfyhjf.asstring <> '' then
    ComboBox8.Text := trim(ado_jbxx.fieldbyname('sfyhjf').asstring);
  if ado_jbxxblsjfj.asstring <> '' then
    ComboBox11.Text := trim(ado_jbxx.fieldbyname('blsjfj').asstring);
  if ado_jbxxfsdd.asstring <> '' then
    ComboBox12.Text := trim(ado_jbxx.fieldbyname('fsdd').asstring);
  if ado_jbxxhsgj.asstring <> '' then
    ComboBox13.Text := trim(ado_jbxx.fieldbyname('hsgj').asstring);
  if ado_jbxxtssj.asstring <> '' then
    ComboBox14.Text := trim(ado_jbxx.fieldbyname('tssj').asstring);
  if ado_jbxxsjyyfx.asstring <> '' then
    edit3.Text := trim(ado_jbxx.fieldbyname('sjyyfx').asstring);
  if ado_jbxxhzssqk.asstring <> '' then
    Memo1.Text := ado_jbxx.fieldbyname('hzssqk').asstring;
  if ado_jbxxhsshqk.asstring <> '' then
    Memo2.Text := ado_jbxx.fieldbyname('hsshqk').asstring;
  if ado_jbxxyhjfqk.asstring <> '' then
    Memo3.Text := ado_jbxx.fieldbyname('yhjfqk').asstring;
  if ado_jbxxsjjg.asstring <> '' then
    Memo4.Text := ado_jbxx.fieldbyname('sjjg').asstring;
  if ado_jbxxksgjyj.asstring <> '' then
    Memo5.Text := ado_jbxx.fieldbyname('ksgjyj').asstring;
  if ado_jbxxhlbyj.asstring <> '' then
    Memo6.Text := ado_jbxx.fieldbyname('hlbyj').asstring;
  if ado_jbxxsftjdkb.asstring='1' then
    checkbox19.Checked:=true;
  if ado_jbxxsftjdkb.asstring='0' then
    checkbox20.Checked:=true;
  if ado_jbxxsbks.asstring > '0' then
    ComboBox9.Text := get_xsz('sys_ksdm', trim(ado_jbxx.fieldbyname('sbks').asstring));
  if ado_jbxxbrzd.asstring > '0' then
    jbmc.Caption := get_xsz('icd10', trim(ado_jbxx.fieldbyname('brzd').asstring));
  if ComboBox6.Text = '否' then
    Memo1.ReadOnly := True;
  if ComboBox7.Text = '否' then
    Memo2.ReadOnly := True;
  if ComboBox8.Text = '否' then
    Memo3.ReadOnly := True; ;
  sjlxyyzk; //展开事件类型和原因分析及选项展开
  if (CheckBox23.Checked) and (Trim(Edit3.Text)<>'') and  (CheckBox18.Checked) then
  begin
   clb.Columns:=1;
   clb.Items.Clear;
   clb.Items.Add;
   clb.Items.Items[0].Text:='其他原因分析:'+Trim(Edit3.Text);
   Panel3.Enabled :=false;
  end
  else
   clb.Columns:=3;
end;

procedure Tfrm_hlsj.zyClick(Sender: TObject);
begin
  qkjm;
  edit1.SetFocus;

end;

procedure Tfrm_hlsj.Add_xsz(bmc, cxz: string; Cbox: TComboBox);
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
  else
  begin
    while not Qry_pub.eof do
    begin
      Cbox.items.add(trim(Qry_pub.FieldByName('dm').asstring) + '-' + trim(Qry_pub.FieldByName('mc').asstring));
      Qry_pub.next;
    end;
  end
end;

function Tfrm_hlsj.ljjc;
var
i,ii,i_sjlx,n:integer;
yyfxbz:string;
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
  if Trim(DBEdit6.Text) = '' then
  begin
    iii := iii + 1;
    frm_blsj_checkerror.Memo1.Lines.Add(trim(inttostr(iii)) + '：病人诊断不能为空');
  end;
  if Trim(ComboBox9.Text) = '' then
  begin
    iii := iii + 1;
    frm_blsj_checkerror.Memo1.Lines.Add(trim(inttostr(iii)) + '：填报科室不能为空');
  end;
  if Trim(DBEdit1.Text) = '' then
  begin
    iii := iii + 1;
    frm_blsj_checkerror.Memo1.Lines.Add(trim(inttostr(iii)) + '：填报人不能为空');
  end;
  if Trim(ComboBox1.Text) = '' then
  begin
    iii := iii + 1;
    frm_blsj_checkerror.Memo1.Lines.Add(trim(inttostr(iii)) + '：护理级别不能为空');
  end;
  if (dtpks.Date = StrToDate('1900-01-01')) or (dtphlb.Date = StrToDate('1900-01-01')) then
  begin
    iii := iii + 1;
    frm_blsj_checkerror.Memo1.Lines.Add(trim(inttostr(iii)) + '：科室护士长签名时间不能为空');
  end;
  if (FormatDateTime('yyyy-mm-dd' ,dtpsjfsrq.Date)<='2000-01-01') and (ado_jbxx.FieldByName('cljb').AsString='1') then
  begin
    iii := iii + 1;
    frm_blsj_checkerror.Memo1.Lines.Add(trim(inttostr(iii)) + '：发生时间不能为空');
  end;
  
  if dtpfsrq.Date = StrToDate('1900-01-01') then
  begin
    iii := iii + 1;
    frm_blsj_checkerror.Memo1.Lines.Add(trim(inttostr(iii)) + '：呈报时间不能为空');
  end;
  if Trim(DBEdit2.Text) = '' then
  begin
    iii := iii + 1;
    frm_blsj_checkerror.Memo1.Lines.Add(trim(inttostr(iii)) + '：护士姓名不能为空');
  end;
  if Trim(DBEdit3.Text) = '' then
  begin
    iii := iii + 1;
    frm_blsj_checkerror.Memo1.Lines.Add(trim(inttostr(iii)) + '：护士年龄不能为空');
  end;
  if Trim(ComboBox3.Text) = '' then
  begin
    iii := iii + 1;
    frm_blsj_checkerror.Memo1.Lines.Add(trim(inttostr(iii)) + '：发现者不能为空');
  end;
  if Trim(ComboBox12.Text) = '' then
  begin
    iii := iii + 1;
    frm_blsj_checkerror.Memo1.Lines.Add(trim(inttostr(iii)) + '：发生地点不能为空');
  end;
  if Trim(ComboBox4.Text) = '' then
  begin
    iii := iii + 1;
    frm_blsj_checkerror.Memo1.Lines.Add(trim(inttostr(iii)) + '：护士职称不能为空');
  end;
  if Trim(ComboBox5.Text) = '' then
  begin
    iii := iii + 1;
    frm_blsj_checkerror.Memo1.Lines.Add(trim(inttostr(iii)) + '：护士工作年限不能为空');
  end;
  if Trim(ComboBox6.Text) = '' then
  begin
    iii := iii + 1;
    frm_blsj_checkerror.Memo1.Lines.Add(trim(inttostr(iii)) + '：是否造成患者损伤不能为空');
  end;
  if Trim(ComboBox7.Text) = '' then
  begin
    iii := iii + 1;
    frm_blsj_checkerror.Memo1.Lines.Add(trim(inttostr(iii)) + '：是否造成护士伤害不能为空');
  end;
  if Trim(ComboBox8.Text) = '' then
  begin
    iii := iii + 1;
    frm_blsj_checkerror.Memo1.Lines.Add(trim(inttostr(iii)) + '：是否造成医患纠纷不能为空');
  end;
  if  Trim(ado_jbxxsjlx.AsString)='' then
  begin
    iii := iii + 1;
    frm_blsj_checkerror.Memo1.Lines.Add(trim(inttostr(iii)) + '：事件类型未选择');
  end;
  if  (Trim(ComboBox11.Text)='') and (cljb='1') then
  begin
    iii := iii + 1;
    frm_blsj_checkerror.Memo1.Lines.Add(trim(inttostr(iii)) + '：不良事件分级不能为空');
  end;
  if Trim(Memo4.Text) = '' then
  begin
    iii := iii + 1;
    frm_blsj_checkerror.Memo1.Lines.Add(trim(inttostr(iii)) + '：简要经过及处置要点不能为空');
  end;
  if ado_jbxxcljb.AsString='1' then//判断原因分析选项是否选择
  begin
   if Trim(ComboBox14.Text) = '' then
   begin
    iii := iii + 1;
    frm_blsj_checkerror.Memo1.Lines.Add(trim(inttostr(iii)) + '：是否特殊事件未选择');
   end;
   if (trim(ComboBox6.Text) = '是') and ((trim(memo1.Text) = '') or (trim(ComboBox10.Text) = '')) then
   begin
    iii := iii + 1;
    frm_blsj_checkerror.Memo1.Lines.Add(trim(inttostr(iii)) + '：是否造成患者损伤选“是“，则严重程度和具体情况情况不能为空');
   end;
   if (trim(ComboBox6.Text) = '否') and ((trim(memo1.Text) <>'') or (trim(ComboBox10.Text) <> '')) then
   begin
    iii := iii + 1;
    frm_blsj_checkerror.Memo1.Lines.Add(trim(inttostr(iii)) + '：是否造成患者损伤选“否“，则严重程度和具体情况情况应为空');
   end;
   if (trim(ComboBox7.Text) = '是') and (trim(memo2.Text) = '') then
   begin
    iii := iii + 1;
    frm_blsj_checkerror.Memo1.Lines.Add(trim(inttostr(iii)) + '：是否造成护士伤害选“是“，则伤害不能为空');
   end;
   if (trim(ComboBox8.Text) = '是') and (trim(memo3.Text) = '') then
   begin
    iii := iii + 1;
    frm_blsj_checkerror.Memo1.Lines.Add(trim(inttostr(iii)) + '：是否造成医患纠纷选“是“，则医患纠纷情况不能为空');
   end;
   i:=clb.Items.Count;//原因分析勾选检查
   yyfxbz:='0';
   for n:=0  to i-1  do
   begin
   if clb.Items.Items[n].Checked then
    yyfxbz:='1';
   end;
   if  (yyfxbz='0') and (checkbox18.Checked=false) then
   begin
    iii := iii + 1;
    frm_blsj_checkerror.Memo1.Lines.Add(trim(inttostr(iii)) + '：原因分析应至少勾选一项');
   end;
   ii:=0;
   for n := 1 to 18 do
   begin
     if TCheckBox(FindComponent('checkBox'+inttostr(n))).Checked  then
     ii:=ii+1;
   end;
   if ii>1 then
   begin
    iii := iii + 1;
    frm_blsj_checkerror.Memo1.Lines.Add(trim(inttostr(iii)) + '：一次上报只能选择一个事件类型');
   end;
   if (checkbox23.Checked=false) and (trim(edit3.Text)<>'') then
   begin
    iii := iii + 1;
    frm_blsj_checkerror.Memo1.Lines.Add(trim(inttostr(iii)) + '：有其他原因分析内容则应勾选"其他原因分析"选项');
   end;
   if (checkbox23.Checked=true) and (trim(edit3.Text)='') then
   begin
    iii := iii + 1;
    frm_blsj_checkerror.Memo1.Lines.Add(trim(inttostr(iii)) + '：勾选"其他原因分析"选项则应填写其他原因分析内容');
   end;
   if (CheckBox13.Checked) and (Trim(gdmc.Text)='') then
   begin
    iii := iii + 1;
    frm_blsj_checkerror.Memo1.Lines.Add(trim(inttostr(iii)) + '：选择管道脱落则应选择具体管道类型');
   end;
   if (CheckBox13.Checked) and (not CheckBox24.Checked) and (not CheckBox25.Checked)  then
   begin
    iii := iii + 1;
    frm_blsj_checkerror.Memo1.Lines.Add(trim(inttostr(iii)) + '：选择管道脱落则应选择是否重置管道');
   end;
   if combobox13.Text='' then
   begin
    iii := iii + 1;
    frm_blsj_checkerror.Memo1.Lines.Add(trim(inttostr(iii)) + '：护士岗级不能为空');
   end;
   if not (CheckBox1.Checked or CheckBox2.Checked) and (Trim(ComboBox6.Text)='是') then
   begin
    iii := iii + 1;
    frm_blsj_checkerror.Memo1.Lines.Add(trim(inttostr(iii)) + '：只有跌倒或坠床事件才填写患者损伤情况');
   end;
  end ;
  if ado_jbxxcljb.AsString='2'  then
  begin
   if (DBEdit7.Text='') or (FormatDateTime('yyyy-mm-dd', dtpks.Date) < '2000-00-00') then
   begin
   iii := iii + 1;
   frm_blsj_checkerror.Memo1.Lines.Add(trim(inttostr(iii)) + '：护士长签名为空或日期错误!');
   end;
  end;
  if ado_jbxxcljb.AsString='3' then
  begin
   if  (DBEdit8.Text='') or (FormatDateTime('yyyy-mm-dd', dtphlb.Date) < '2000-00-00') then
   begin
   iii := iii + 1;
   frm_blsj_checkerror.Memo1.Lines.Add(trim(inttostr(iii)) + '：护理部签名为空或日期错误!');
   end;
  end;
  if iii > 0 then
  begin
    result:=true;
    if frm_blsj_checkerror = nil then
      Application.CreateForm(Tfrm_blsj_checkerror, frm_blsj_checkerror);
    frm_blsj_checkerror.ShowModal;
  end
  else
  result:=false;
end;

procedure Tfrm_hlsj.Memo1DblClick(Sender: TObject);
begin
str_mbct:='';
if ((cljb='1') or (cljb='')) and (combobox6.Text='是') then
begin
 application.CreateForm(Tfrm_blsj_bqgcyy, frm_blsj_bqgcyy);
  try
    frm_blsj_bqgcyy.sjlb:='护理不良事件';
    frm_blsj_bqgcyy.ShowModal;
    if  str_mbct<>'' then 
    memo1.Lines.Add(str_mbct);
  finally
    frm_blsj_bqgcyy.free;
  end;
 end;
end;

procedure Tfrm_hlsj.Memo2DblClick(Sender: TObject);
begin
str_mbct:='';
if ((cljb='1') or (cljb=''))  and (combobox7.Text='是') then
begin
 application.CreateForm(Tfrm_blsj_bqgcyy, frm_blsj_bqgcyy);
  try
    frm_blsj_bqgcyy.sjlb:='护理不良事件';
    frm_blsj_bqgcyy.ShowModal;
    if  str_mbct<>'' then
    memo2.Lines.Add(str_mbct);
  finally
    frm_blsj_bqgcyy.free;
  end;
 end;
end;

procedure Tfrm_hlsj.Memo3DblClick(Sender: TObject);
begin
str_mbct:='';
if ((cljb='1') or (cljb=''))  and (combobox8.Text='是') then
begin
 application.CreateForm(Tfrm_blsj_bqgcyy, frm_blsj_bqgcyy);
  try
    frm_blsj_bqgcyy.sjlb:='护理不良事件';
    frm_blsj_bqgcyy.ShowModal;
    if  str_mbct<>'' then
    memo3.Lines.Add(str_mbct);
  finally
    frm_blsj_bqgcyy.free;
  end;
 end;
end;

procedure Tfrm_hlsj.Memo4DblClick(Sender: TObject);
begin
str_mbct:='';
if (cljb='1') or (cljb='') then
begin
 application.CreateForm(Tfrm_blsj_bqgcyy, frm_blsj_bqgcyy);
  try
    frm_blsj_bqgcyy.sjlb:='护理不良事件';
    frm_blsj_bqgcyy.ShowModal;
    if str_mbct<>'' then
    memo4.Lines.Add(str_mbct);
  finally
    frm_blsj_bqgcyy.free;
  end;
 end;
end;

procedure Tfrm_hlsj.Memo5DblClick(Sender: TObject);
begin
str_mbct:='';
if cljb='2' then
 begin
 application.CreateForm(Tfrm_blsj_bqgcyy, frm_blsj_bqgcyy);
  try
    frm_blsj_bqgcyy.sjlb:='护理不良事件';
    frm_blsj_bqgcyy.ShowModal;
    if  str_mbct<>'' then
    memo5.Lines.Add(str_mbct);
  finally
    frm_blsj_bqgcyy.free;
  end;
 end;
end;

procedure Tfrm_hlsj.Memo6DblClick(Sender: TObject);
begin
str_mbct:='';
if (cljb='3') then
 begin
 application.CreateForm(Tfrm_blsj_bqgcyy, frm_blsj_bqgcyy);
  try
    frm_blsj_bqgcyy.sjlb:='护理不良事件';
    frm_blsj_bqgcyy.ShowModal;
    if  str_mbct<>'' then
    memo6.Lines.Add(str_mbct);
  finally
    frm_blsj_bqgcyy.free;
  end;
 end;
end;

procedure Tfrm_hlsj.Memo7DblClick(Sender: TObject);
begin
str_mbct:='';
if (cljb='3') and (checkbox19.Checked=true) then
 begin
 application.CreateForm(Tfrm_blsj_bqgcyy, frm_blsj_bqgcyy);
  try
    frm_blsj_bqgcyy.sjlb:='护理不良事件';
    frm_blsj_bqgcyy.ShowModal;
  finally
    frm_blsj_bqgcyy.free;
  end;
 end;
end;

procedure Tfrm_hlsj.sjlxyy;
var
  s1,sjlxmc: string;
  i:integer;
begin
 s1:='';
  for i := 1 to GroupBox1.ControlCount-1 do
  begin
   if TCheckBox(GroupBox1.Controls[i]).Checked then
   begin
    if TCheckBox(GroupBox1.Controls[i]).Caption<>'' then
    begin
     sjlxmc:='['+TCheckBox(GroupBox1.Controls[i]).Caption+']';
     s1:=s1+sjlxmc;
    end;
   end;
  end;
  ado_jbxx['sjlx'] := s1; //赋值事件类型
end;

procedure Tfrm_hlsj.sjlxyyzk;
var
  s,s1,s2,xxbc,sjlxmc: string;
  i,n:integer;
begin
  s1 := trim(copy(trim(ado_jbxxsjlx.asstring),1,400));
  if s1<>'' then
  begin
  dldm:='dldm like 111111';
  qry_temp.Close;
  qry_temp.SQL.Clear;
  qry_temp.SQL.Add('select * from blsj_hlyyfx_xxdyb');
  qry_temp.Open;
    i:=1;
    for i := 1 to GroupBox1.ControlCount - 1 do
    begin
     sjlxmc:='['+TCheckBox(GroupBox1.Controls[i]).Caption+']';
     qry_temp.Locate('xxmc',sjlxmc,[loCaseInsensitive]);
     if pos(sjlxmc,s1)>0 then
     begin
     TCheckBox(GroupBox1.Controls[i]).Checked:=true;
     s2:=qry_temp.FieldByName('dldm').AsString;
     if s2<>'' then
     dldm:=dldm+' or dldm like '+#39+s2+'%'+#39;
     end
     else
     TCheckBox(GroupBox1.Controls[i]).Checked := False;
     if (TCheckBox(GroupBox1.Controls[i]).Checked) and (TCheckBox(GroupBox1.Controls[i]).Visible=false) then
     begin
        TCheckBox(GroupBox1.Controls[i]).Visible:=True;
       // TCheckBox(GroupBox1.Controls[i]).Top:=33;
       // TCheckBox(GroupBox1.Controls[i]).left:=557;

     end;
    end;
  if (CheckBox23.Checked) and (Trim(Edit3.Text)<>'') and  (CheckBox18.Checked) then
  begin
   clb.Columns:=1;
   clb.Items.Clear;
   clb.Items.Add;
   clb.Items.Items[0].Text:='其他原因分析:'+Trim(Edit3.Text);
   Panel3.Enabled :=false;
  end
  else
   clb.Columns:=3;
    hlyyfx;//显示大类明细项目
    if checkbox13.Checked then
    begin
       CheckBox24.Visible:=True;
       CheckBox25.Visible:=True;
    end
    else
    begin
       CheckBox24.Visible:=false;
       CheckBox25.Visible:=false;
    end;

  end;

  xxbc:=ado_jbxxxxbc.asstring;//勾选明细项目中勾选项
  i:=clb.Items.Count;
  s:='';
  for n:=0  to i-1 do
  begin
  s:='['+copy(clb.Items.Items[n].Text,1,4)+']';
  if pos(s,xxbc)>0 then
  clb.Items.Items[n].Checked:=true;
  end;
end;

procedure Tfrm_hlsj.sp_sjcxCalcFields(DataSet: TDataSet);
var
  s,s1: string;
  i:integer;
begin
  s := Trim(sp_sjcx.fieldbyname('sfwc').asstring);
  if s = '1' then
    sp_sjcx['lcsfwc'] := '已完成'
  else if s = '0' then
    sp_sjcx['lcsfwc'] := '未完成';
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
  s1:=Trim(sp_sjcx.fieldbyname('sjlx').asstring);
  if pos('[其他类型]',s1)>0 then
  begin
   i:=pos('[其他类型]',s1);
   sp_sjcx['sjlxmc'] :=copy(s1,1,i+9);
  end
  else
  sp_sjcx['sjlxmc'] :=s1;
  
end;

procedure Tfrm_hlsj.qkjm; //清空界面
var
  i: Integer;
begin
  ado_jbxx.Close;
  clb.Clear;
  Memo1.Clear;
  Memo2.Clear;
  Memo3.Clear;
  Memo4.Clear;
  Memo5.Clear;
  Memo6.Clear;
  ComboBox1.Text := '';
  ComboBox3.Text := '';
  ComboBox4.Text := '';
  ComboBox5.Text := '';
  ComboBox6.Text := '';
  ComboBox7.Text := '';
  ComboBox8.Text := '';
  ComboBox9.Text := '';
  ComboBox10.Text := '';
  ComboBox11.Text := '';
  ComboBox12.Text := '';
  ComboBox13.Text :='';
  ComboBox14.Text :='';
  edit1.Text := '';
  edit2.Text := '';
  edit3.Text := '';
  gdmc.Text:='';
  jbmc.Caption := '';
  sjfj.Caption:='';
  Button1.Enabled := False;
  Button2.Enabled := False;
  Button5.Enabled := False;
  Button6.Enabled := False;
  CheckBox19.Checked:=False;
  CheckBox20.Checked:=False;
  groupbox7.Enabled:=true;
  for i := 1 to GroupBox1.ControlCount - 1 do
  begin
    if TCheckBox(GroupBox1.Controls[i]).Checked then
      TCheckBox(GroupBox1.Controls[i]).Checked := False;
  end;

end;

procedure Tfrm_hlsj.qry_lbAfterDelete(DataSet: TDataSet);
var
  ls: string;
begin
  qkjm;
  sxlb;
  edit1.SetFocus;
end;

procedure Tfrm_hlsj.xzxdy;
begin
  if ComboBox3.Text = '医生' then
    hlsjprint.QRLabel27.Caption := '√'
  else if ComboBox3.Text = '护士' then
    hlsjprint.QRLabel16.Caption := '√'
  else if ComboBox3.Text = '患者' then
    hlsjprint.QRLabel28.Caption := '√'
  else if ComboBox3.Text = '患者家属' then
    hlsjprint.QRLabel34.Caption := '√';
  if CheckBox1.Checked = true then
    hlsjprint.QRLabel9.Caption := '√';
  if CheckBox2.Checked = true then
    hlsjprint.QRLabel26.Caption := '√';
  if CheckBox3.Checked = true then
    hlsjprint.QRLabel44.Caption := '√';
  if CheckBox4.Checked = true then
    hlsjprint.QRLabel55.Caption := '√';
  if CheckBox5.Checked = true then
    hlsjprint.QRLabel57.Caption := '√';
  if CheckBox6.Checked = true then
    hlsjprint.QRLabel59.Caption := '√';
  if CheckBox7.Checked = true then
    hlsjprint.QRLabel61.Caption := '√';
  if CheckBox8.Checked = true then
    hlsjprint.QRLabel63.Caption := '√';
  if CheckBox9.Checked = true then
    hlsjprint.QRLabel65.Caption := '√';
  if CheckBox10.Checked = true then
    hlsjprint.QRLabel67.Caption := '√';
  if CheckBox11.Checked = true then
    hlsjprint.QRLabel69.Caption := '√';
  if CheckBox12.Checked = true then
    hlsjprint.QRLabel71.Caption := '√';
  if CheckBox13.Checked = true then
    hlsjprint.QRLabel73.Caption := '√';
  if CheckBox14.Checked = true then
    hlsjprint.QRLabel75.Caption := '√';
  if CheckBox15.Checked = true then
    hlsjprint.QRLabel77.Caption := '√';
  if CheckBox16.Checked = true then
    hlsjprint.QRLabel79.Caption := '√';
  if CheckBox17.Checked = true then
    hlsjprint.QRLabel82.Caption := '√';
  if CheckBox18.Checked = true then
  begin
    hlsjprint.QRLabel83.Caption := '√';
  if Trim(Edit2.Text) <> '' then
    hlsjprint.QRLabel38.Caption := Trim(Edit2.Text)
  else
    hlsjprint.QRLabel38.Enabled := False;
  end;
  if ComboBox6.Text = '否' then
    hlsjprint.QRLabel98.Caption := '√'
  else
    hlsjprint.QRLabel100.Caption := '√';
  if ComboBox7.Text = '否' then
    hlsjprint.QRLabel102.Caption := '√'
  else
    hlsjprint.QRLabel104.Caption := '√';
  if ComboBox8.Text = '否' then
    hlsjprint.QRLabel40.Caption := '√'
  else
    hlsjprint.QRLabel43.Caption := '√';
end;
procedure Tfrm_hlsj.hlyyfx;
var
dlmc,fydm,fymc,s:string;
recn:integer;
begin
 ad_sfxm.close;
 ad_sfxm.CommandText:='select a.dm as yydm,a.mc as yymc,a.dldm,b.mc from blsj_hlyyfx_xmmx a,blsj_hlyyfx_fzdl b  where a.dldm=b.dm and ('+dldm+') order by dldm';
 s:=ad_sfxm.CommandText;
 ad_sfxm.open;
 recn:= ad_sfxm.RecordCount;
 //处理选择系统
 ad_sfxm.first;
 clb.Items.Clear;
 i:=0;
while  (not ad_sfxm.Eof) and (recn<500) do
 begin
  clb.Visible:=false;
  dlmc:=ad_sfxm.FieldByName('mc').asstring;
  clb.Items.Add;
  clb.Items.Items[i].Text:=dlmc;
  clb.Items.Items[i].Enabled:=false;
  i:=i+1;
  while (dlmc=ad_sfxm.FieldByName('mc').asstring) and (not ad_sfxm.eof ) do
   begin
     fymc:=ad_sfxm.FieldByName('yymc').asstring;
     fydm:=ad_sfxm.FieldByName('yydm').asstring;
     clb.Items.Add;
     clb.Items.Items[i].Text:=fydm+'_'+fymc;
     i:=i+1;
     ad_sfxm.Next;
   end;
  clb.Visible:=true;
 end;
 end;
 procedure Tfrm_hlsj.xxsx;//选项刷新
 var
 s,s1,s2,sjlxmc:string;
 i,n:integer;
 xxbc:string;
 begin
 clb.Clear;
 dldm:='dldm like 11111';
  qry_temp.Close;
  qry_temp.SQL.Clear;
  qry_temp.SQL.Add('select * from blsj_hlyyfx_xxdyb');
  qry_temp.Open;
  begin
    i:=1;
    for i := 1 to GroupBox1.ControlCount - 1 do
    begin
     if TCheckBox(GroupBox1.Controls[i]).Checked=true then
     begin
      sjlxmc:='['+TCheckBox(GroupBox1.Controls[i]).Caption+']';
      if qry_temp.Locate('xxmc',sjlxmc,[loCaseInsensitive]) then
      s2:=qry_temp.FieldByName('dldm').AsString
      else
      s2:='';
      if s2<>'' then
      dldm:=dldm+' or dldm like '+#39+s2+'%'+#39;
     end
     else
      TCheckBox(GroupBox1.Controls[i]).Checked := False;
     end;
   end;
   hlyyfx;
   xxbc:=ado_jbxxxxbc.asstring;
   i:=clb.Items.Count;
   s:='';
   for n:=0  to i-1 do
   begin
   s:='['+copy(clb.Items.Items[n].Text,1,4)+']';
   if pos(s,xxbc)>0 then
   clb.Items.Items[n].Checked:=true;
  end;
  end;
  procedure Tfrm_hlsj.xxbc;
   var
   i,n:integer;
   s:string;
   begin
     i:=clb.Items.Count;
     s:='';
     for n:=0  to i-1 do
     begin
      if clb.Items.Items[n].Checked then
      s:=s+'['+copy(clb.Items.Items[n].Text,1,4)+']';
     end;
     qry_temp.Close;
     qry_temp.SQL.Clear;
     qry_temp.SQL.add('update blsj_hlsj_jbxx set xxbc='+#39+s+#39+' where id='+#39+id+#39);
     qry_temp.ExecSQL;
   end;
  procedure Tfrm_hlsj.cljbkz(s:string);
  begin
  Memo1.ReadOnly := true;
  Memo2.ReadOnly := true;
  Memo3.ReadOnly := true;
  Memo4.ReadOnly := true;
  Memo5.ReadOnly := true;
  Memo6.ReadOnly := true;
  checkbox19.Enabled:=false;
  checkbox20.Enabled:=false;
  dbedit7.Enabled:=false;

  dbedit8.Enabled:=false;
  combobox6.Enabled:=false;
  combobox7.Enabled:=false;
  combobox8.Enabled:=false;
  ComboBox10.Enabled:= False;
  ComboBox11.Enabled:=false;
  clb.ReadOnly:=true;
  dtpks.Enabled:=false;
  dtphlb.Enabled:=false;
  Groupbox1.Enabled:=false;
  Groupbox4.Enabled:=true;
  if s = '1' then
  begin
    Memo1.ReadOnly := false;
    Memo2.ReadOnly := false;
    Memo3.ReadOnly := false;
    Memo4.ReadOnly := false;
    combobox6.Enabled:=true;
    combobox7.Enabled:=true;
    combobox8.Enabled:=true;
    combobox10.Enabled:=true;
    clb.ReadOnly:=false;
    Groupbox1.Enabled:=true;
    Groupbox7.Enabled:=true;
    ComboBox11.Enabled:=True;
  end
  else if s = '2' then
  begin
    Memo5.ReadOnly := false;
    clb.ReadOnly:=true;
    Memo1.ReadOnly := false;
    Memo2.ReadOnly := false;
    Memo3.ReadOnly := false;
    Memo4.ReadOnly := false;
    combobox6.Enabled:=true;
    combobox7.Enabled:=true;
    combobox8.Enabled:=true;
    combobox10.Enabled:=true;
    combobox11.Enabled:=true;
    Groupbox1.Enabled:=true;
    checkbox19.Enabled:=true;
    checkbox20.Enabled:=true;
    dbedit7.Enabled:=true;
    clb.ReadOnly:=false;
    dtpks.Enabled:=true;
    Groupbox7.Enabled:=false;

  end
  else if s = '3' then
   begin
    Memo6.ReadOnly := false;
    clb.ReadOnly:=true;
    dtphlb.Enabled:=true;
    dbedit8.Enabled:=true;
    Groupbox7.Enabled:=false;
   end;
   if trim(ado_jbxxsfwc.AsString)='1' then
    begin
     Memo6.ReadOnly := true;
     dbedit8.Enabled:=false;
     dtphlb.Enabled:=true;
     dtphlb.Enabled:=false;
    end;
  end;
  procedure Tfrm_hlsj.sxlb;
  var
  ls:string;
  begin
  ls := 'select * from blsj_hlsj_jbxx where  (sfwc<>1 and clczy=' + #39 + pub_czydm + #39 + ') or (ksdm=' + #39 + pub_ksdm + #39 + ' and sfwc<>1 and clczy=' + #39 + #39 + ')'+' order by sbrq';
  qry_lb.Close;
  qry_lb.SQL.Clear;
  qry_lb.SQL.Add(ls);
  qry_lb.Open;
  end;
end.

