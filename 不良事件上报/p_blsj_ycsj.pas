unit p_blsj_ycsj;

interface

uses
    Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
    Dialogs, StdCtrls, cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
    cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxStyles,
    cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, DB, cxDBData,
    cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
    cxGridTableView, cxGridDBTableView, cxGrid, cxCalendar, ADODB, ExtCtrls,
    QuickRpt, QRCtrls, ComCtrls, DBCtrls, cxDBEdit, Mask, cxExportGrid4Link,
    cxCheckListBox, Grids, DBGrids, Menus, ActnList, cxLookAndFeels,
  cxLookAndFeelPainters;

type
  Tfrm_ycsj = class(TForm)
    ado_jbxx: TADODataSet;
    ds_jbxx: TDataSource;
    qry_insert: TADOQuery;
    qry_temp: TADOQuery;
    ds_xz: TDataSource;
    qry_xz: TADOQuery;
    qry_xzmc: TStringField;
    qry_xzdm: TStringField;
    qry_lb: TADOQuery;
    ds_lb: TDataSource;
    ds_cx: TDataSource;
    sp_cx: TADOStoredProc;
    sp_cxbybh: TStringField;
    sp_cxbrxm: TStringField;
    sp_cxbrnl: TStringField;
    sp_cxbrxb: TStringField;
    sp_cxjzrq: TDateTimeField;
    qry_pub: TADOQuery;
    pc1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel4: TPanel;
    DBGrid3: TDBGrid;
    Panel5: TPanel;
    Button5: TButton;
    Button1: TButton;
    Button2: TButton;
    Button6: TButton;
    Button3: TButton;
    Button4: TButton;
    ScrollBox1: TScrollBox;
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    Label18: TLabel;
    Memo1: TMemo;
    GroupBox4: TGroupBox;
    Label8: TLabel;
    Label9: TLabel;
    Label34: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label22: TLabel;
    Label33: TLabel;
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
    ComboBox1: TComboBox;
    ComboBox3: TComboBox;
    ComboBox4: TComboBox;
    ComboBox5: TComboBox;
    ComboBox6: TComboBox;
    ComboBox7: TComboBox;
    DBEdit8: TDBEdit;
    DBGrid1: TDBGrid;
    DBGrid4: TDBGrid;
    Panel6: TPanel;
    Label35: TLabel;
    Label36: TLabel;
    gr: TRadioButton;
    ks: TRadioButton;
    Button9: TButton;
    dtpksrq: TDateTimePicker;
    dtpjsrq: TDateTimePicker;
    ds_sjcx: TDataSource;
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
    sp_sjcxsfwc: TStringField;
    sp_sjcxlcsfwc: TStringField;
    sp_sjcxsbksmc: TStringField;
    sp_sjcxzhclry: TStringField;
    sp_sjcxzhclks: TStringField;
    sp_sjcxbrly: TStringField;
    sp_sjcxsbrq: TDateTimeField;
    Button7: TButton;
    Button8: TButton;
    dtphsz: TcxDBDateEdit;
    sp_cxbrch: TStringField;
    sp_cxryrq: TDateTimeField;
    Label16: TLabel;
    DBEdit3: TDBEdit;
    Label20: TLabel;
    DBEdit10: TDBEdit;
    dtpfhz: TcxDBDateEdit;
    Label21: TLabel;
    GroupBox2: TGroupBox;
    Memo2: TMemo;
    ado_jbxxid: TAutoIncField;
    ado_jbxxsbks: TStringField;
    ado_jbxxsbr: TStringField;
    ado_jbxxsbrq: TDateTimeField;
    ado_jbxxksdm: TStringField;
    ado_jbxxclczy: TStringField;
    ado_jbxxcljb: TStringField;
    ado_jbxxsfwc: TStringField;
    ado_jbxxtmh: TStringField;
    ado_jbxxbrxm: TStringField;
    ado_jbxxbrxb: TStringField;
    ado_jbxxbrnl: TStringField;
    ado_jbxxryzd: TStringField;
    ado_jbxxbrch: TStringField;
    ado_jbxxhljb: TStringField;
    ado_jbxxryrq: TDateTimeField;
    ado_jbxxgj: TStringField;
    ado_jbxxcs: TStringField;
    ado_jbxxhdd: TStringField;
    ado_jbxxkdx: TStringField;
    ado_jbxxyy: TStringField;
    ado_jbxxmcjql: TStringField;
    ado_jbxxpgzf: TStringField;
    ado_jbxxhzzt: TStringField;
    ado_jbxxyszt: TStringField;
    ado_jbxxzkks: TStringField;
    ado_jbxxmqhlcs: TMemoField;
    ado_jbxxzrzzqm: TStringField;
    ado_jbxxhszqm: TStringField;
    ado_jbxxhszqmrq: TDateTimeField;
    ado_jbxxfhzqm: TStringField;
    ado_jbxxsffsyc: TStringField;
    ado_jbxxckrq: TDateTimeField;
    ado_jbxxckqk: TStringField;
    ado_jbxxycfsrq: TDateTimeField;
    ado_jbxxycbgrq: TDateTimeField;
    ado_jbxxbz: TMemoField;
    ado_jbxxfhzqmrq: TDateTimeField;
    ado_jbxxsbrqm: TStringField;
    ado_jbxxcyxxhsqm: TStringField;
    Label1: TLabel;
    edit1: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit4: TDBEdit;
    Label19: TLabel;
    DBEdit5: TDBEdit;
    Label4: TLabel;
    DBEdit9: TDBEdit;
    DBEdit6: TDBEdit;
    ComboBox9: TComboBox;
    jbmc: TLabel;
    Label23: TLabel;
    DBEdit1: TDBEdit;
    Label24: TLabel;
    dtpryrq: TcxDBDateEdit;
    Editxm: TDBEdit;
    Label7: TLabel;
    ComboBox2: TComboBox;
    Label6: TLabel;
    Label5: TLabel;
    ckqk: TPopupMenu;
    N1: TMenuItem;
    ado_jbxxsfck: TStringField;
    ado_jbxxzyh: TStringField;
    sp_cxzyh: TStringField;
    qry_lbid: TAutoIncField;
    qry_lbsbks: TStringField;
    qry_lbsbr: TStringField;
    qry_lbsbrq: TDateTimeField;
    qry_lbksdm: TStringField;
    qry_lbclczy: TStringField;
    qry_lbcljb: TStringField;
    qry_lbsfwc: TStringField;
    qry_lbtmh: TStringField;
    qry_lbzyh: TStringField;
    qry_lbbrxm: TStringField;
    qry_lbbrxb: TStringField;
    qry_lbbrnl: TStringField;
    qry_lbryzd: TStringField;
    qry_lbbrch: TStringField;
    qry_lbhljb: TStringField;
    qry_lbryrq: TDateTimeField;
    qry_lbgj: TStringField;
    qry_lbcs: TStringField;
    qry_lbhdd: TStringField;
    qry_lbkdx: TStringField;
    qry_lbyy: TStringField;
    qry_lbmcjql: TStringField;
    qry_lbpgzf: TStringField;
    qry_lbhzzt: TStringField;
    qry_lbyszt: TStringField;
    qry_lbzkks: TStringField;
    qry_lbmqhlcs: TMemoField;
    qry_lbsbrqm: TStringField;
    qry_lbzrzzqm: TStringField;
    qry_lbhszqm: TStringField;
    qry_lbhszqmrq: TDateTimeField;
    qry_lbfhzqm: TStringField;
    qry_lbfhzqmrq: TDateTimeField;
    qry_lbsffsyc: TStringField;
    qry_lbckrq: TDateTimeField;
    qry_lbckqk: TStringField;
    qry_lbycfsrq: TDateTimeField;
    qry_lbycbgrq: TDateTimeField;
    qry_lbcyxxhsqm: TStringField;
    qry_lbbz: TMemoField;
    qry_lbsfck: TStringField;
    GroupBox3: TGroupBox;
    Label26: TLabel;
    Label29: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label25: TLabel;
    Label30: TLabel;
    CheckBox14: TCheckBox;
    CheckBox15: TCheckBox;
    dtpckrq: TcxDBDateEdit;
    dtpycfsrq: TcxDBDateEdit;
    ComboBox10: TComboBox;
    dtpbgrq: TcxDBDateEdit;
    ComboBox8: TComboBox;
    DBEdit11: TDBEdit;
    Label15: TLabel;
    DBEdit7: TDBEdit;
    Label17: TLabel;
    TabSheet3: TTabSheet;
    Panel2: TPanel;
    Label31: TLabel;
    Label37: TLabel;
    Button10: TButton;
    dtptjs: TDateTimePicker;
    dtptje: TDateTimePicker;
    Button11: TButton;
    Button13: TButton;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    sp_tj: TADOStoredProc;
    ds_tj: TDataSource;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1tmh: TcxGridDBColumn;
    cxGrid1DBTableView1brxm: TcxGridDBColumn;
    cxGrid1DBTableView1brnl: TcxGridDBColumn;
    cxGrid1DBTableView1sbrq: TcxGridDBColumn;
    cxGrid1DBTableView1sbr: TcxGridDBColumn;
    cxGrid1DBTableView1sbks: TcxGridDBColumn;
    cxGrid1DBTableView1cljb: TcxGridDBColumn;
    cxGrid1DBTableView1zhclry: TcxGridDBColumn;
    cxGrid1DBTableView1sfwc: TcxGridDBColumn;
    cxGrid1DBTableView1brly: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    Button12: TButton;
    SaveDialog1: TSaveDialog;
    cxGrid1DBTableView1pgzf: TcxGridDBColumn;
    sp_sjcxpgzf: TStringField;
    cxGrid1DBTableView1brxb: TcxGridDBColumn;
    qry_lbsfcy: TStringField;
    sp_cxbrks: TStringField;
    Label32: TLabel;
    cxtj: TPopupMenu;
    MenuItem1: TMenuItem;
    sp_cxryzd: TStringField;
    procedure Button4Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure Add_xsz(bmc,cxz:string;Cbox:TComboBox);
    procedure FormCreate(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure Button5Click(Sender: TObject);
    procedure DBEdit6DblClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBGrid3DblClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure ComboBox5Exit(Sender: TObject);
    procedure ComboBox9Exit(Sender: TObject);
    procedure ComboBox7KeyPress(Sender: TObject; var Key: Char);
    procedure sjcs;
    procedure ztysbc;//状态意识选项保存
    procedure ztyszk;//状态意识选项保存
    procedure qkjm;//情况界面
    procedure sxlb;//刷新列表
    procedure pgzfjs;//评估总分计算
    procedure cljbqxkz(cljb:string;sfwc:string;sfck:string);//处理级别权限控制
    procedure ComboBox11KeyPress(Sender: TObject; var Key: Char);
    procedure Button7Click(Sender: TObject);
    procedure edit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid4DblClick(Sender: TObject);
    procedure DBGrid4KeyPress(Sender: TObject; var Key: Char);
    procedure qry_lbAfterDelete(DataSet: TDataSet);
    procedure Button9Click(Sender: TObject);
    procedure DBGrid5DblClick(Sender: TObject);
    procedure sp_sjcxCalcFields(DataSet: TDataSet);
    procedure Button8Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CheckBox14Click(Sender: TObject);
    procedure CheckBox15Click(Sender: TObject);
    procedure ComboBox4Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure Button3Exit(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure Memo1DblClick(Sender: TObject);
    procedure Memo2DblClick(Sender: TObject);
    procedure DBEdit7DblClick(Sender: TObject);
    procedure DBEdit3DblClick(Sender: TObject);
    procedure DBEdit8DblClick(Sender: TObject);
    procedure cxGrid1DBTableView1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure ComboBox10KeyPress(Sender: TObject; var Key: Char);
    procedure ComboBox1KeyPress(Sender: TObject; var Key: Char);
    procedure ComboBox3KeyPress(Sender: TObject; var Key: Char);
    procedure ComboBox4KeyPress(Sender: TObject; var Key: Char);
    procedure ComboBox5KeyPress(Sender: TObject; var Key: Char);
    procedure ComboBox6KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid3DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid3CellClick(Column: TColumn);
    procedure MenuItem1Click(Sender: TObject);
    procedure DBEdit8Exit(Sender: TObject);
    procedure dtpckrqEnter(Sender: TObject);
    procedure dtpckrqExit(Sender: TObject);
  private
    { Private declarations }
     iii:Integer;
     xzbz:string;
     gbbz:Boolean;//解决时间控件报错问题
    function ljjc:boolean;//逻辑检查

  public
    { Public declarations }
    id:string;
    dqczy:string;
    dqks:string;
    cljb:string;
    value1:string;
    value2:string;
    value3:string;
    str_mbct:string;
    function get_xsz(bmc,cxz:string):string;
  end;

var
  kj1:TObject;
  frm_ycsj: Tfrm_ycsj;

implementation
uses p_dm,p_func,p_tjbg,p_blsj_checkError,p_main,p_ycsjprint,p_blsj_gwyspf,p_blsj_bqgcyy;

{$R *.dfm}

procedure Tfrm_ycsj.Button10Click(Sender: TObject);
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

procedure Tfrm_ycsj.Button11Click(Sender: TObject);
begin
Self.Close;
end;

procedure Tfrm_ycsj.Button12Click(Sender: TObject);
begin
 if SaveDialog1.Execute then
  begin
    ExportGrid4ToEXCEL( SaveDialog1.FileName, cxGrid1, true, true );
//   exportgridtoexcel(SaveDialog1.FileName, cxGrid1, true, true);
    MessageBox(0, '数据导出完毕!', '系统提示', MB_OK + MB_ICONINFORMATION);
  end;
end;

procedure Tfrm_ycsj.Button13Click(Sender: TObject);
begin
  if SaveDialog1.Execute then
  begin
     ExportGrid4ToEXCEL( SaveDialog1.FileName, cxGrid2, true, true );
   // exportgridtoexcel(SaveDialog1.FileName, cxGrid2, true, true);
    MessageBox(0, '数据导出完毕!', '系统提示', MB_OK + MB_ICONINFORMATION); 
  end;
end;

procedure Tfrm_ycsj.Button1Click(Sender: TObject);
var
s,sfwc,sfck:string;
i:Integer;
begin
 id:=trim(ado_jbxx.FieldByName('id').AsString);
 Button5.Click;
 //展开开始
 qkjm;
 xzbz:='2';
 ado_jbxx.Close;
 ado_jbxx.CommandText:='select * from blsj_ycsj_jbxx where id='+#39+id+#39+' order by id';
 ado_jbxx.Open;
 dqks:=trim(ado_jbxx.FieldByName('ksdm').AsString);
 sfwc:=trim(ado_jbxx.FieldByName('sfwc').AsString);
 cljb:=trim(ado_jbxx.fieldbyname('cljb').asstring);
 dqczy:=trim(ado_jbxx.fieldbyname('clczy').asstring);
 sfck:=trim(ado_jbxx.FieldByName('sfck').AsString);
 cljbqxkz(cljb,sfwc,sfck);
 sjcs;
 edit1.Text:=trim(ado_jbxx.FieldByName('tmh').AsString);
 {qry_temp.Close;  提交不再弹出回退原因
 qry_temp.SQL.Clear;
 qry_temp.sql.Add('select  * from blsj_ycsj_cljl where sjid=' + #39 + id + #39 +' and cljb='+#39+inttostr(strtoint(cljb)+1)+#39+ ' and thbz=1 order by thrq desc');
 qry_temp.Open;
 if (qry_temp.RecordCount>0)  then
 begin
 application.CreateForm(Tfrm_blsj_gwyspf, frm_blsj_gwyspf);
  try
   frm_blsj_gwyspf.sjcljb:=inttostr(strtoint(cljb)+1);
   frm_blsj_gwyspf.sjclid:=id;
   frm_blsj_gwyspf.pflb:='ycfxhtyy';
   frm_blsj_gwyspf.ShowModal;
  finally
    frm_blsj_gwyspf.free;
  end;
 end; }
 qry_lb.Locate('id',id,[]);
 // 展开结束
if not ljjc then
 begin
  qry_temp.Close;
  qry_temp.SQL.Clear;
  qry_temp.SQL.Add('select * from blsj_ycsj_jbxx where id='+id);
  qry_temp.Open;
  s:=Trim(qry_temp.fieldbyname('cljb').asstring);
  if strtoint(s)=3 then
  application.MessageBox(pchar('该记录已到最后处理科室或人员，不能提交!'),'注意',16)
  else
  begin
   application.CreateForm(Tfrm_tjbg, frm_tjbg);
   frm_tjbg.sjid:='D'+id;
   frm_tjbg.tjcljb :=cljb;
   frm_tjbg.ShowModal;
  end;
 end;
end;

procedure Tfrm_ycsj.Button2Click(Sender: TObject);
var
ls,qjks,jlid:string;
begin
if not ljjc then
begin
 cljb:=Trim(ado_jbxx.fieldbyname('cljb').asstring);
 if (StrToInt(cljb)<3) or (id='') then
 begin
   Application.MessageBox('处理流程未完成，请核实!', '错误提示', 16);
 end
 else
 begin
 if (application.MessageBox('完成后不能再进行任何修改，是否继续？','请注意',MB_YESNO + MB_ICONQUESTION) =IDYES) then
 begin
 button5.Click;
 ls:='update blsj_ycsj_jbxx set sfwc=1 where id='+#39+id+#39 ;
 qry_temp.Close;
 qry_temp.SQL.Clear;
 qry_temp.SQL.Add(ls);
 qry_temp.ExecSQL;
 application.messagebox('该事件记录处理流程完成！', '提示', mb_ok + mb_iconinformation);
 qkjm;
 sxlb;
 end;
 end;
end;
end;

procedure Tfrm_ycsj.Button3Click(Sender: TObject);
var
s,s1,rs,ls,sfwc:string;
Len,i,ii:Integer;
begin
if not ljjc then
begin
sfwc:=trim(ado_jbxx.fieldbyname('sfwc').asstring);
cljb:=trim(ado_jbxx.fieldbyname('cljb').asstring);
if ((iii=0) and (cljb='3') ) or (sfwc='1')  then
begin
application.CreateForm(Tycsjprint,ycsjprint);
try
 ycsjprint.QRLabel1.Caption:=pub_yymc+'压疮风险评估（压疮高危）报告表';
 ycsjprint.QRLabel25.Caption:=Trim(Editxm.Text);
 ycsjprint.QRLabel2.Caption:=Trim(DBEdit4.Text);
 ycsjprint.QRLabel26.Caption:=Trim(DBEdit9.Text);
 ycsjprint.QRLabel44.Caption:=Trim(edit1.Text);
 ycsjprint.QRLabel8.Caption:=Trim(ComboBox2.Text);
 ycsjprint.QRLabel149.Caption:=Trim(dbedit5.Text);
 ycsjprint.QRLabel147.Caption:=Trim(combobox9.Text);
 ycsjprint.QRLabel13.Caption:=trim(dbedit6.Text)+''+Trim(jbmc.Caption);
 ycsjprint.QRLabel142.Caption:=Trim(DBEdit8.Text);
 ycsjprint.QRLabel15.Caption:=FormatDateTime('yyyy年mm月dd日',dtpryrq.Date);
 ycsjprint.QRLabel48.Caption:=Trim(dbedit7.Text);//申报人签名
 ycsjprint.QRLabel45.Caption:=Trim(dbedit3.Text); //护士长签名
 if FormatDateTime('yyyy-mm-dd ',dtphsz.Date)>'1900-00-00' then
 ycsjprint.QRLabel50.Caption:=FormatDateTime('yyyy年mm月dd日 hh时',dtphsz.Date);
 ycsjprint.QRLabel47.Caption:=Trim(dbedit10.text); //复核者签名
 if FormatDateTime('yyyy-mm-dd ',dtpfhz.Date)>'1900-00-00' then
 ycsjprint.QRLabel52.Caption:=FormatDateTime('yyyy年mm月dd日 hh时',dtpfhz.Date);
 if checkbox15.Checked then //出院是否发生压疮
 ycsjprint.QRLabel85.Caption:='√';
 if checkbox14.Checked then //出院是否发生压疮
 ycsjprint.QRLabel87.Caption:='√';
 if FormatDateTime('yyyy-mm-dd ',dtpckrq.Date)>'1900-00-00' then //出科时间
 ycsjprint.QRLabel91.Caption:=FormatDateTime('yyyy年mm月dd日 hh时',dtpckrq.Date);
 if FormatDateTime('yyyy-mm-dd ',dtpycfsrq.Date)>'1900-00-00' then //压疮发生日期
 ycsjprint.QRLabel83.Caption:=FormatDateTime('yyyy年mm月dd日 hh时',dtpycfsrq.Date);
 if FormatDateTime('yyyy-mm-dd ',dtpbgrq.Date)>'1900-00-00' then //压疮发生日期
 ycsjprint.QRLabel92.Caption:=FormatDateTime('yyyy年mm月dd日 hh时',dtpbgrq.Date);//报告时间
 ycsjprint.QRLabel151.Caption:=Trim(dbedit11.Text);
 if trim(combobox10.Text)='出院' then
 ycsjprint.QRLabel144.Caption:='√';
 if trim(combobox10.Text)='死亡' then
 ycsjprint.QRLabel97.Caption:='√';
 if trim(combobox10.Text)='转科' then
 begin
 ycsjprint.QRLabel145.Caption:='√';
  ycsjprint.QRLabel95.Caption:=trim(combobox8.text);
 end;
 if CheckBox1.Checked=True then
 ycsjprint.QRLabel129.Caption:='√';
 if CheckBox2.Checked=True then
 ycsjprint.QRLabel130.Caption:='√';
 if CheckBox3.Checked=True then
 ycsjprint.QRLabel131.Caption:='√';
 if CheckBox4.Checked=True then
 ycsjprint.QRLabel132.Caption:='√';
 if CheckBox5.Checked=True then
 ycsjprint.QRLabel133.Caption:='√';
 if CheckBox6.Checked=True then
 ycsjprint.QRLabel134.Caption:='√';
 if CheckBox7.Checked=True then
 ycsjprint.QRLabel135.Caption:='√';
 if CheckBox8.Checked=True then
 ycsjprint.QRLabel136.Caption:='√';
 if CheckBox9.Checked=True then
 ycsjprint.QRLabel137.Caption:='√';
 if CheckBox10.Checked=True then
 ycsjprint.QRLabel138.Caption:='√';
 if CheckBox11.Checked=True then
 ycsjprint.QRLabel139.Caption:='√';
 if CheckBox12.Checked=True then
 ycsjprint.QRLabel140.Caption:='√';
 if CheckBox13.Checked=True then
 ycsjprint.QRLabel141.Caption:='√';
 if (Trim(ComboBox1.text)='完全丧失') or (Trim(ComboBox1.text)='完全丧失-1分')   then
 ycsjprint.QRLabel71.Caption:='√'
 else if (Trim(ComboBox1.text)='严重丧失') or (Trim(ComboBox1.text)='严重丧失-2分') then
 ycsjprint.QRLabel72.Caption:='√'
 else if (Trim(ComboBox1.text)='轻度丧失') or  (Trim(ComboBox1.text)='轻度丧失-3分') then
 ycsjprint.QRLabel73.Caption:='√'
 else if (Trim(ComboBox1.text)='不受损坏') or (Trim(ComboBox1.text)='不受损坏-4分') then
 ycsjprint.QRLabel74.Caption:='√';

 if (Trim(ComboBox3.text)='持久潮湿') or  (Trim(ComboBox3.text)='持久潮湿-1分') then
 ycsjprint.QRLabel75.Caption:='√'
 else if (Trim(ComboBox3.text)='十分潮湿') or (Trim(ComboBox3.text)='十分潮湿-2分') then
 ycsjprint.QRLabel77.Caption:='√'
 else if (Trim(ComboBox3.text)='偶然潮湿') or (Trim(ComboBox3.text)='偶然潮湿-3分' ) then
 ycsjprint.QRLabel79.Caption:='√'
 else if (Trim(ComboBox3.text)='很少发生潮湿') or (Trim(ComboBox3.text)='很少发生潮湿-4分')  then
 ycsjprint.QRLabel81.Caption:='√';

 if (Trim(ComboBox4.text)='卧床不起') or (Trim(ComboBox4.text)='卧床不起-1分')  then
 ycsjprint.QRLabel99.Caption:='√'
 else if (Trim(ComboBox4.text)='局限于椅上') or (Trim(ComboBox4.text)='局限于椅上-2分') then
 ycsjprint.QRLabel101.Caption:='√'
 else if (Trim(ComboBox4.text)='偶然步行') or (Trim(ComboBox4.text)='偶然步行-3分') then
 ycsjprint.QRLabel103.Caption:='√'
 else if (Trim(ComboBox4.text)='经常步行') or ((Trim(ComboBox4.text)='经常步行-4分'))  then
 ycsjprint.QRLabel105.Caption:='√';

 if (Trim(ComboBox5.text)='完全不能') or (Trim(ComboBox5.text)='完全不能-1分')then
 ycsjprint.QRLabel107.Caption:='√'
 else if (trim(ComboBox5.text)='严重限制') or (Trim(ComboBox5.text)='严重限制-2分') then
 ycsjprint.QRLabel109.Caption:='√'
 else if (Trim(ComboBox5.text)='轻度限制') or (Trim(ComboBox5.text)='轻度限制-3分') then
 ycsjprint.QRLabel111.Caption:='√'
 else if (Trim(ComboBox5.text)='不限制') or (Trim(ComboBox5.text)='不限制-4分' ) then
 ycsjprint.QRLabel113.Caption:='√';

  if (trim(ComboBox6.text)='非常差') or (Trim(ComboBox6.text)='非常差-1分') then
 ycsjprint.QRLabel115.Caption:='√'
 else if (Trim(ComboBox6.text)='不足') or ( Trim(ComboBox6.text)='不足-2') then
 ycsjprint.QRLabel117.Caption:='√'
 else if (Trim(ComboBox6.text)='适当') or ( (Trim(ComboBox6.text)='适当-3分') ) then
 ycsjprint.QRLabel119.Caption:='√'
 else if (Trim(ComboBox6.text)='良好') or  (Trim(ComboBox6.text)='良好-4分') then
 ycsjprint.QRLabel121.Caption:='√';

 if (Trim(ComboBox7.text)='有明显问题') or ( Trim(ComboBox7.text)='有明显问题-1分') then
 ycsjprint.QRLabel123.Caption:='√'
 else if (Trim(ComboBox7.text)='有潜在问题') or (Trim(ComboBox7.text)='有潜在问题-2分')  then
 ycsjprint.QRLabel125.Caption:='√'
 else if (Trim(ComboBox7.text)='无') or (Trim(ComboBox7.text)='无-3分') then
 ycsjprint.QRLabel127.Caption:='√';
 ycsjprint.QRLabel48.Caption:=Trim(DBEdit7.Text);
 s:=Memo1.Text;  //memo1打印
 if s<>'' then
 begin
  value1:='';
  rs:='';
  len:=Length(s);
  while(Len>94) do
  begin
  ls:=Copy(s,1,94);
  if pos(''#$D#$A'',ls)=0 then
   begin
   if  ByteType(ls,94)=mbLeadByte then
    begin
     rs:=Copy(s,1,93)+char(13)+char(10);
     s:=Copy(s,94,len);
    end
   else
    begin
     rs:=Copy(s,1,94)+char(13)+char(10);
     s:=Copy(s,95,len);
    end;
    ls:='';
    value1:=value1+rs;
    len:=Length(s);
   end
   else
  begin
  i:=pos(''#$D#$A'',ls);
  rs:=Copy(ls,1,i+1);
  value1:=value1+rs;
  s:=Copy(s,i+2,len);
  end;
  end;
  value1:=value1+s;
  end;
  s:=Memo2.Text;  //memo2备注打印
 if s<>'' then
 begin
  value2:='';
  rs:='';
  len:=Length(s);
  while(Len>94) do
  begin
  ls:=Copy(s,1,94);
  if pos(''#$D#$A'',ls)=0 then
   begin
   if  ByteType(ls,94)=mbLeadByte then
    begin
     rs:=Copy(s,1,93)+char(13)+char(10);
     s:=Copy(s,94,len);
    end
   else
    begin
     rs:=Copy(s,1,94)+char(13)+char(10);
     s:=Copy(s,95,len);
    end;
    ls:='';
    value2:=value2+rs;
    len:=Length(s);
   end
   else
  begin
  i:=pos(''#$D#$A'',ls);
  rs:=Copy(ls,1,i+1);
  value2:=value2+rs;
  s:=Copy(s,i+2,len);
  end;
  end;
  value2:=value2+s;
  end;
  ycsjprint.QuickRep1.preview;
  groupbox4.Enabled:=true;
  finally
  ycsjprint.Free;
  end;
 end
 else if iii=0 then
 application.MessageBox(pchar('事件流程未处理完成或填写不完整,不能打印!'),'注意',16);
 end;
end;

procedure Tfrm_ycsj.Button3Exit(Sender: TObject);
begin
groupbox4.Enabled:=false;;
end;

procedure Tfrm_ycsj.Button4Click(Sender: TObject);
begin
Self.Close;
end;

procedure Tfrm_ycsj.Button5Click(Sender: TObject);
begin
  ado_jbxx['hljb']:=Trim(ComboBox2.Text);
  ado_jbxx['ckqk']:=Trim(ComboBox10.Text);
  ado_jbxx['gj']:=Trim(ComboBox1.Text);
  ado_jbxx['cs']:=Trim(ComboBox3.Text);
  ado_jbxx['hdd']:=Trim(ComboBox4.Text);
  ado_jbxx['kdx']:=Trim(ComboBox5.Text);
  ado_jbxx['yy']:=Trim(ComboBox6.Text);
  ado_jbxx['mcjql']:=Trim(ComboBox7.Text);
  ado_jbxx['mqhlcs']:=Memo1.Text;
  ado_jbxx['bz']:=Memo2.Text;
  ztysbc;//患者状态、意识保存,是否发生压疮保存
  ado_jbxx.Post;
  qkjm;//清空界面
  sxlb;//刷新列表
  if groupbox4.Enabled=true then
  edit1.SetFocus;
end;

procedure Tfrm_ycsj.Button6Click(Sender: TObject);
var
ls,qjks,clczy,jlid,tjks,tjczy,thyy:string;
begin
 dqks:=Trim(ado_jbxx.fieldbyname('ksdm').asstring);
 dqczy:=Trim(ado_jbxx.fieldbyname('clczy').asstring);
 ls := 'select top 1 * from blsj_ycsj_cljl where sjid=' + #39 + id + #39 + ' and (thbz<>1  or thbz is null) order by id desc';
 qry_temp.Close;
 qry_temp.SQL.Clear;
 qry_temp.SQL.Add(ls);
 qry_temp.Open;
 tjczy:=Trim(qry_temp.fieldbyname('tjczy').asstring);
 tjks:=Trim(qry_temp.fieldbyname('tjksdm').asstring);
 if (qry_temp.RecordCount=0) or ((tjczy<>'') and (tjczy<>pub_czydm)) or ((tjczy='') and (tjks<>pub_ksdm))  then
 Application.MessageBox('没有可回退的前级科室或人员，不能回退!', '错误提示', 16)
 else  if (qry_temp.RecordCount=1)  then
 begin
 qjks:=Trim(qry_temp.fieldbyname('clksdm').asstring);
 jlid:=Trim(qry_temp.fieldbyname('id').asstring);
 clczy:=Trim(qry_temp.fieldbyname('clczy').asstring);
 cljb:=IntToStr((StrToInt(cljb)-1));
 thyy:=trim(INPUTBOX('输入：','请输入退回原因(100字以内)：    ',''));
 ls:='update blsj_ycsj_jbxx set ksdm='+#39+qjks+#39+',clczy='+#39+clczy+#39+',cljb='+#39+cljb+#39+' where id='+#39+id+#39;
 qry_temp.Close;
 qry_temp.SQL.Clear;
 qry_temp.SQL.Add(ls);
 qry_temp.ExecSQL;
 ls := 'update   blsj_ycsj_cljl set thbz=1,thrq=Getdate(),thry='+#39+pub_czydm+#39+',thyy='+#39+thyy+#39+' where id=' + #39 + jlid + #39;
 qry_temp.Close;
 qry_temp.SQL.Clear;
 qry_temp.SQL.Add(ls);
 qry_temp.ExecSQL;
 application.messagebox('报告退回上级科室成功！', '提示', mb_ok + mb_iconinformation);
 qkjm;
 sxlb;
 if groupbox4.Enabled=true then
 edit1.SetFocus;
 end;
end;

procedure Tfrm_ycsj.Button7Click(Sender: TObject);
begin
Self.Close;
end;

procedure Tfrm_ycsj.Button8Click(Sender: TObject);
begin
qkjm;
sxlb;
groupbox4.Enabled:=true;
edit1.SetFocus;
end;

procedure Tfrm_ycsj.Button9Click(Sender: TObject);
var
ls,ksrq,jsrq:string;
begin
ksrq:=FormatDateTime('yyyy-mm-dd',dtpksrq.Date);
jsrq:=FormatDateTime('yyyy-mm-dd',dtpjsrq.Date);
sp_sjcx.Close;
if gr.Checked=true then
begin
 sp_sjcx.parameters.ParamByName('@cxlx').value:='0';//0-按照个人查询 1-按照科室查询
 sp_sjcx.parameters.ParamByName('@sjlx').value:='4';
 sp_sjcx.parameters.ParamByName('@czy').value:=pub_czydm;
 sp_sjcx.parameters.ParamByName('@ksdm').value:=pub_ksdm;
 sp_sjcx.parameters.ParamByName('@ksrq').value:=ksrq;
 sp_sjcx.parameters.ParamByName('@jsrq').value:=jsrq;
 sp_sjcx.Open;
end
else
begin
 sp_sjcx.parameters.ParamByName('@cxlx').value:='1';//0-按照个人查询 1-按照科室查询
 sp_sjcx.parameters.ParamByName('@sjlx').value:='4';
 sp_sjcx.parameters.ParamByName('@czy').value:=pub_czydm;
 sp_sjcx.parameters.ParamByName('@ksdm').value:=pub_ksdm;
 sp_sjcx.parameters.ParamByName('@ksrq').value:=ksrq;
 sp_sjcx.parameters.ParamByName('@jsrq').value:=jsrq;
 sp_sjcx.Open;
end;
end;

procedure Tfrm_ycsj.CheckBox14Click(Sender: TObject);
begin
if CheckBox14.Checked and checkbox15.Checked then
 CheckBox15.Checked:=false;
end;

procedure Tfrm_ycsj.CheckBox15Click(Sender: TObject);
begin
if CheckBox14.Checked and checkbox15.Checked then
 CheckBox14.Checked:=false;
end;

procedure Tfrm_ycsj.ComboBox10KeyPress(Sender: TObject; var Key: Char);
begin
key := #0;
end;

procedure Tfrm_ycsj.ComboBox11KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
CheckBox1.SetFocus;
end;

procedure Tfrm_ycsj.ComboBox1KeyPress(Sender: TObject; var Key: Char);
begin
key := #0;
end;

procedure Tfrm_ycsj.ComboBox3KeyPress(Sender: TObject; var Key: Char);
begin
key := #0;
end;

procedure Tfrm_ycsj.ComboBox4Click(Sender: TObject);
var
zf:integer;
begin

end;

procedure Tfrm_ycsj.ComboBox4KeyPress(Sender: TObject; var Key: Char);
begin
key := #0;
end;

procedure Tfrm_ycsj.ComboBox5Exit(Sender: TObject);
begin
if ((ComboBox4.Text='') or (ComboBox4.Text='无')) and (ComboBox5.Text<>'') then
Application.MessageBox('有无损害后果为无或为空,则不能填损害程度!', '错误提示', 16);
if (ComboBox4.Text='有') and (ComboBox5.Text='') then
Application.MessageBox('有无损害后果为有,则应填损害程度!', '错误提示', 16);
end;

procedure Tfrm_ycsj.ComboBox5KeyPress(Sender: TObject; var Key: Char);
begin
key := #0;
end;

procedure Tfrm_ycsj.ComboBox6KeyPress(Sender: TObject; var Key: Char);
begin
key := #0;
end;

procedure Tfrm_ycsj.ComboBox7KeyPress(Sender: TObject; var Key: Char);
begin
if Key=#13 then
Memo1.SetFocus
else
key := #0;
end;

procedure Tfrm_ycsj.ComboBox9Exit(Sender: TObject);
var
s,s1,ls:string;
begin
kj1:=Sender;
s:=uppercase(trim((kj1 as TComboBox).text));
if (Length(s)<=6) and (Length(s)>0) and  ((s[1] in ['0'..'9']) or (s[1] in ['A'..'z'])) then
begin
 ls:='select dm,mc from sys_ksdm where dm='+#39+s+#39+' and kssx=09' +' union select dm,mc from sys_ksdm where Upper(pym) like'+#39+'%'+s+'%'+#39+' and  kssx=09';
 qry_temp.Close;
 qry_temp.SQL.Clear;
 qry_temp.SQL.Add(ls);
 qry_temp.Open;
 if qry_temp.RecordCount=0 then
 begin
  MessageDlg('没有找到想要查找的内容！',mtError,[mbOk],0);
 (Sender as TComboBox).SetFocus;
 end
 else if qry_temp.RecordCount>1 then
 begin
  try
     qry_xz.Close;
     qry_xz.SQL.Clear;
     qry_xz.SQL.Add(ls);
     qry_xz.Open;
    except
    Application.MessageBox('拼音码错误”', '错误提示', 16)
    end;
     DBGrid1.left:=(kj1 as TComboBox).left;
     DBGrid1.top:=(kj1 as TComboBox).top+(kj1 as TComboBox).Height+1;
     if kj1=combobox8 then
     DBGrid1.top:=(kj1 as TComboBox).top+groupbox3.Top-150;
     DBGrid1.Visible:=true;
     DBGrid1.SetFocus;
 end
 else
 begin
 if kj1=ComboBox9 then
  begin
  ado_jbxx['sbks']:=Trim(qry_temp.fieldbyname('dm').asstring);
  ComboBox9.text:=Trim(qry_temp.fieldbyname('mc').asstring);
  end
  else if kj1=ComboBox8 then
  begin
  ado_jbxx['zkks']:=Trim(qry_temp.fieldbyname('dm').asstring);
  ComboBox8.text:=Trim(qry_temp.fieldbyname('mc').asstring);
  end;
 end;
end
else if (Length(s)>6) and (s[1] in ['0'..'9']) then
begin
 if kj1=ComboBox9 then
 begin
 ado_jbxx['sbks']:=copy(s,1,4);
 ComboBox9.Text:=Copy(s,6,length(s)-5);
 end
 else if kj1=ComboBox8 then
 begin
 ado_jbxx['zkks']:=copy(s,1,4);
 ComboBox8.Text:=Copy(s,6,length(s)-5);
 end;
end;

end;

procedure Tfrm_ycsj.cxGrid1DBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
var
sfwc,sfck:string;
begin
pc1.ActivePage:=TabSheet1;
qkjm;
id:=trim(sp_sjcx.FieldByName('id').AsString);
ado_jbxx.Close;
ado_jbxx.CommandText:='select * from blsj_ycsj_jbxx where id='+#39+id+#39+' order by id';
ado_jbxx.Open;
dqks:=trim(ado_jbxx.FieldByName('ksdm').AsString);
sfwc:=trim(ado_jbxx.FieldByName('sfwc').AsString);
cljb:=trim(ado_jbxx.fieldbyname('cljb').asstring);
dqczy:=trim(ado_jbxx.fieldbyname('clczy').asstring);
sfck:=trim(ado_jbxx.fieldbyname('sfck').asstring);
cljbqxkz(cljb,sfwc,sfck);
sjcs;
edit1.Text:=trim(ado_jbxx.FieldByName('tmh').AsString);
if (sfwc = '1') or ((dqczy = '') and (dqks <> pub_ksdm)) or ((dqczy <> '') and (dqczy <> pub_czydm)) then
begin
 GroupBox4.Enabled:=False;
 GroupBox1.Enabled:=False;
 GroupBox3.Enabled:=False;
 GroupBox2.Enabled:=False;

end;
if groupbox4.Enabled=true then
editxm.SetFocus;
end;

procedure Tfrm_ycsj.DBEdit1Exit(Sender: TObject);
var s1,ls:string;
begin
 s1:=Uppercase((Sender as TDBEDIT).TEXT);
 if length(trim(s1))>0 then
 begin
  if (s1[1] in ['0'..'9']) or (s1[1] in ['A'..'z']) then
  begin
   kj1:=sender;
   if s1[1] in ['0'..'9'] then
    ls:='select * from sys_czy where dm='+#39+s1+#39
   else
    ls:='select * from sys_czy where Upper(pym) like'+#39+'%'+s1+'%'+#39;
   qry_temp.Close;
   qry_temp.SQL.Clear;
   qry_temp.SQL.Add(ls);
   qry_temp.Open;
   if qry_temp.RecordCount=0 then
   begin
     Application.MessageBox('没有找到要查找的内容', '错误提示', 16);
    (kj1 as TDBEdit).SetFocus;
   end
   else if qry_temp.RecordCount>1 then
   begin
    try
     qry_xz.Close;
     qry_xz.SQL.Clear;
     qry_xz.SQL.Add(ls);
     qry_xz.Open;
    except
    Application.MessageBox('拼音码错误”', '错误提示', 16)
    end;
     DBGrid1.left:=(kj1 as Tdbedit).left;
     DBGrid1.top := (kj1 as Tdbedit).top + (kj1 as Tdbedit).Height + 1;
     if (kj1=dbedit3) or (kj1=dbedit10) then
     DBGrid1.top:=(kj1 as Tdbedit).top+150;
     if kj1=dbedit11 then
     DBGrid1.top:=(kj1 as Tdbedit).top+groupbox3.Top-150;
     DBGrid1.Visible:=true;
     DBGrid1.SetFocus;
   end
   else
   begin
   if kj1=DBEdit1 then
   ado_jbxx['sbr']:=Trim(qry_temp.fieldbyname('mc').asstring)
   else if kj1=DBEdit7 then
   begin
   ado_jbxx['sbrqm']:=Trim(qry_temp.fieldbyname('mc').asstring);
   Memo1.SetFocus;
   end
   else if kj1=DBEdit3 then
   ado_jbxx['hszqm']:=Trim(qry_temp.fieldbyname('mc').asstring)
   else if kj1=DBEdit10 then
   ado_jbxx['fhzqm']:=Trim(qry_temp.fieldbyname('mc').asstring)
   else if kj1=DBEdit11 then
   ado_jbxx['cyxxhsqm']:=Trim(qry_temp.fieldbyname('mc').asstring)
   end;
  end
  else if s1[1]<#127 then
  begin
    Application.MessageBox('请输入人员代码或拼音简码', '错误提示', 16);
   (kj1 as TDBEdit).SetFocus;
  end;
 end;
end;


procedure Tfrm_ycsj.DBEdit3DblClick(Sender: TObject);
begin
 qry_temp.Close;
 qry_temp.SQL.Clear;
 qry_temp.sql.Add('select  * from blsj_ycsj_cljl where sjid=' + #39 + id + #39 +' and cljb='+#39+inttostr(strtoint(cljb)+1)+#39+ ' and thbz=1 order by thrq desc');
 qry_temp.Open;
if (qry_temp.RecordCount>0) and (cljb='2') then
begin
 application.CreateForm(Tfrm_blsj_gwyspf, frm_blsj_gwyspf);
  try
   frm_blsj_gwyspf.sjcljb:=inttostr(strtoint(cljb)+1);
   frm_blsj_gwyspf.sjclid:=id;
   frm_blsj_gwyspf.pflb:='ycfxhtyy';
   frm_blsj_gwyspf.ShowModal;
  finally
    frm_blsj_gwyspf.free;
  end;
end
else
 Application.MessageBox('无退回记录!', '错误提示', 16);
end;

procedure Tfrm_ycsj.DBEdit6DblClick(Sender: TObject);
begin
{if frm_blsj_jbcx=nil then
 Application.CreateForm(Tfrm_blsj_jbcx, frm_blsj_jbcx);
 frm_blsj_jbcx.sjlx:='D';
 frm_blsj_jbcx.ysdm:=pub_czydm;
 frm_blsj_jbcx.ShowModal;  }
end;

procedure Tfrm_ycsj.DBEdit7DblClick(Sender: TObject);
begin
 qry_temp.Close;
 qry_temp.SQL.Clear;
 qry_temp.sql.Add('select  * from blsj_ycsj_cljl where sjid=' + #39 + id + #39 +' and cljb='+#39+inttostr(strtoint(cljb)+1)+#39+ ' and thbz=1 order by thrq desc');
 qry_temp.Open;
if (qry_temp.RecordCount>0) and (cljb='1') then
begin
 application.CreateForm(Tfrm_blsj_gwyspf, frm_blsj_gwyspf);
  try
   frm_blsj_gwyspf.sjcljb:=inttostr(strtoint(cljb)+1);
   frm_blsj_gwyspf.sjclid:=id;
   frm_blsj_gwyspf.pflb:='ycfxhtyy';
   frm_blsj_gwyspf.ShowModal;
  finally
    frm_blsj_gwyspf.free;
  end;
end
else
 Application.MessageBox('无回退记录!', '错误提示', 16);
end;

procedure Tfrm_ycsj.DBEdit8DblClick(Sender: TObject);
begin
 qry_temp.close;
 qry_temp.sql.Clear;
 qry_temp.SQL.add('select top 6 a.pfdx as '+'评分大项'+',a.pfxx as '+'评分细目'+',a.jg as '+'病人情况'+',b.fz as '+'分值'+' from zybl_hljld_pf a,zybl_hljld_pfdz b where a.pfxx=b.pfxx and a.jg=b.jg and a.pfdx='+#39+'压疮风险'+#39+' and zyh='+#39+trim(ado_jbxxzyh.AsString)+#39+' order by a.jlrq desc');
 qry_temp.Open;
 if qry_temp.RecordCount>0 then
 begin
  try
  application.CreateForm(Tfrm_blsj_gwyspf, frm_blsj_gwyspf);
  frm_blsj_gwyspf.zy_zyh:=trim(ado_jbxxzyh.AsString);
  frm_blsj_gwyspf.pflb:='ycfx';
  frm_blsj_gwyspf.ShowModal;
  finally
  frm_blsj_gwyspf.free;
  end
 end
 else
 pgzfjs;//评估总分计算
end;

procedure Tfrm_ycsj.DBEdit8Exit(Sender: TObject);
var
s:string;
begin
  if pos('分',trim(dbedit8.Text))>0  then
  begin
    s:= trim(dbedit8.Text);
    DELETE(s,POS('分',s),2);
    ado_jbxx['ywsjpf']:=s;
  end;
end;

procedure Tfrm_ycsj.DBGrid1DblClick(Sender: TObject);
begin
 if kj1=DBEdit1 then
  begin
  DBEdit1.Text:=trim(qry_xz.FieldByName('mc').AsString);
  ado_jbxx['sbr']:=trim(qry_xz.FieldByName('mc').AsString);
  end
  else  if kj1=DBEdit7 then
  begin
  DBEdit7.Text:=trim(qry_xz.FieldByName('mc').AsString);
  ado_jbxx['sbrqm']:=trim(qry_xz.FieldByName('mc').AsString);
  end
  else  if kj1=DBEdit3 then
  begin
  DBEdit3.Text:=trim(qry_xz.FieldByName('mc').AsString);
  ado_jbxx['hszqm']:=trim(qry_xz.FieldByName('mc').AsString);
  dtphsz.SetFocus;
  end
   else  if kj1=DBEdit10 then
  begin
  DBEdit10.Text:=trim(qry_xz.FieldByName('mc').AsString);
  ado_jbxx['fhzqm']:=trim(qry_xz.FieldByName('mc').AsString);
  dtpfhz.SetFocus;
  end
  else  if kj1=DBEdit11 then
  begin
  DBEdit11.Text:=trim(qry_xz.FieldByName('mc').AsString);
  ado_jbxx['cyxxhsqm']:=trim(qry_xz.FieldByName('mc').AsString);
  DBEdit11.SetFocus;
  end
  else if kj1=ComboBox8 then
  begin
  ado_jbxx['zkks']:=Trim(qry_temp.fieldbyname('dm').asstring);
  ComboBox8.text:=Trim(qry_temp.fieldbyname('mc').asstring);
  end
  else if kj1=ComboBox9 then
  begin
  ado_jbxx['sbks']:=Trim(qry_temp.fieldbyname('dm').asstring);
  ComboBox9.text:=Trim(qry_temp.fieldbyname('mc').asstring);
  end;
  dbgrid1.Visible:=false;
end;

procedure Tfrm_ycsj.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
 if key=#13 then
 begin
  if kj1=DBEdit1 then
  begin
  DBEdit1.Text:=trim(qry_xz.FieldByName('mc').AsString);
  ado_jbxx['sbr']:=trim(qry_xz.FieldByName('mc').AsString);
  end
  else  if kj1=DBEdit7 then
  begin
  DBEdit7.Text:=trim(qry_xz.FieldByName('mc').AsString);
  ado_jbxx['sbrqm']:=trim(qry_xz.FieldByName('mc').AsString);
  end
  else  if kj1=DBEdit3 then
  begin
  DBEdit3.Text:=trim(qry_xz.FieldByName('mc').AsString);
  ado_jbxx['hszqm']:=trim(qry_xz.FieldByName('mc').AsString);
  dtphsz.SetFocus;
  end
   else  if kj1=DBEdit10 then
  begin
  DBEdit10.Text:=trim(qry_xz.FieldByName('mc').AsString);
  ado_jbxx['fhzqm']:=trim(qry_xz.FieldByName('mc').AsString);
  dtpfhz.SetFocus;
  end
  else  if kj1=DBEdit11 then
  begin
  DBEdit11.Text:=trim(qry_xz.FieldByName('mc').AsString);
  ado_jbxx['cyxxhsqm']:=trim(qry_xz.FieldByName('mc').AsString);
  DBEdit11.SetFocus;
  end
  else if kj1=ComboBox8 then
  begin
  ado_jbxx['zkks']:=Trim(qry_temp.fieldbyname('dm').asstring);
  ComboBox8.text:=Trim(qry_temp.fieldbyname('mc').asstring);
  end
  else if kj1=ComboBox9 then
  begin
  ado_jbxx['sbks']:=Trim(qry_temp.fieldbyname('dm').asstring);
  ComboBox9.text:=Trim(qry_temp.fieldbyname('mc').asstring);
  end;
  dbgrid1.Visible:=false;
 end
 else if key=#27 then
 begin
  dbgrid1.Visible:=false;
 end;
end;

procedure Tfrm_ycsj.DBGrid3CellClick(Column: TColumn);
var
sfwc,sfck:string;
begin
  qkjm;
  xzbz:='2';
  id:=trim(qry_lb.FieldByName('id').AsString);
  if qry_lb.IsEmpty then
  begin
    Exit;
  end;
  ado_jbxx.Close;
  ado_jbxx.CommandText:='select * from blsj_ycsj_jbxx where id='+#39+id+#39+' order by id';
  ado_jbxx.Open;
  dqks:=trim(ado_jbxx.FieldByName('ksdm').AsString);
  sfwc:=trim(ado_jbxx.FieldByName('sfwc').AsString);
  cljb:=trim(ado_jbxx.fieldbyname('cljb').asstring);
  dqczy:=trim(ado_jbxx.fieldbyname('clczy').asstring);
  sfck:=trim(ado_jbxx.FieldByName('sfck').AsString);
  cljbqxkz(cljb,sfwc,sfck);
  sjcs;
  edit1.Text:=trim(ado_jbxx.FieldByName('tmh').AsString);
  qry_temp.Close;
  qry_temp.SQL.Clear;
  qry_temp.sql.Add('select  * from blsj_ycsj_cljl where sjid=' + #39 + id + #39 +' and cljb='+#39+inttostr(strtoint(cljb)+1)+#39+ ' and thbz=1 order by thrq desc');
  qry_temp.Open;
  if (qry_temp.RecordCount>0)  then
  begin
  application.CreateForm(Tfrm_blsj_gwyspf, frm_blsj_gwyspf);
  try
   frm_blsj_gwyspf.sjcljb:=inttostr(strtoint(cljb)+1);
   frm_blsj_gwyspf.sjclid:=id;
   frm_blsj_gwyspf.pflb:='ycfxhtyy';
   frm_blsj_gwyspf.ShowModal;
  finally
    frm_blsj_gwyspf.free;
  end;
  end
//if groupbox4.Enabled=true then
//editxm.SetFocus;
end;

procedure Tfrm_ycsj.DBGrid3DblClick(Sender: TObject);
var
sfwc,sfck:string;
begin
{qkjm;
xzbz:='2';
id:=trim(qry_lb.FieldByName('id').AsString);
ado_jbxx.Close;
ado_jbxx.CommandText:='select * from blsj_ycsj_jbxx where id='+#39+id+#39+' order by id';
ado_jbxx.Open;
dqks:=trim(ado_jbxx.FieldByName('ksdm').AsString);
sfwc:=trim(ado_jbxx.FieldByName('sfwc').AsString);
cljb:=trim(ado_jbxx.fieldbyname('cljb').asstring);
dqczy:=trim(ado_jbxx.fieldbyname('clczy').asstring);
sfck:=trim(ado_jbxx.FieldByName('sfck').AsString);
cljbqxkz(cljb,sfwc,sfck);
sjcs;
edit1.Text:=trim(ado_jbxx.FieldByName('tmh').AsString);
//if groupbox4.Enabled=true then
//editxm.SetFocus;  }
end;

procedure Tfrm_ycsj.DBGrid3DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if qry_lb.fieldbyname('sfcy').asstring='1' then
  begin
    dbgrid3.Canvas.Brush.Color:=RGB(207, 80, 65);
    dbgrid3.Canvas.Font.color:=clblack;
  end;
  dbgrid3.DefaultDrawColumnCell(rect,datacol,column,state);
end;

procedure Tfrm_ycsj.DBGrid4DblClick(Sender: TObject);
var
ls,bybh,brxm,brxb,brnl,sfwc,ryrq,sbr,brch,zyh,brks:string;
begin
 bybh:=trim(sp_cx.FieldByName('bybh').AsString);
 brxm:=trim(sp_cx.FieldByName('brxm').AsString);
 brxb:=trim(sp_cx.FieldByName('brxb').AsString);
 brnl:=trim(sp_cx.FieldByName('brnl').AsString);
 ryrq:=trim(sp_cx.FieldByName('jzrq').AsString);
 brch:=trim(sp_cx.FieldByName('brch').AsString);
 zyh:=trim(sp_cx.FieldByName('zyh').AsString);
 brks:=trim(sp_cx.FieldByName('brks').AsString);
 ls:='insert into blsj_ycsj_jbxx(tmh,brxm,brxb,brnl,sbks,sbr,clczy,ksdm,cljb,sfwc,ryrq,sbrq,brch,zyh,brks) select '+#39+bybh+#39+','+#39+brxm+#39+','+#39+brxb+#39+','+#39+brnl+#39+','+#39+pub_ksdm+#39+','+#39+pub_czyxm+#39+','+#39+pub_czydm+#39+','+#39+pub_ksdm+#39+','+#39+'1'+#39+','+#39+'0'+#39+','+#39+ryrq+#39+' ,GETDATE()'+','+#39+brch+#39+','+#39+zyh+#39+','+#39+brks+#39;
 qry_insert.Close;
 qry_insert.SQL.Clear;
 qry_insert.SQL.Add(ls);
 qry_insert.ExecSQL;
 ado_jbxx.Close;
 ado_jbxx.CommandText:='select  top 1 * from blsj_ycsj_jbxx where tmh='+#39+bybh+#39+' order by id desc';
 ado_jbxx.Open;
 ado_jbxx.Edit;
 sjcs;
 ls:='select * from blsj_ycsj_jbxx where  (sfwc<>1 and clczy='+#39+pub_czydm+#39+') or (ksdm='+#39+pub_ksdm+#39+' and sfwc<>1 and clczy='+#39+#39+')';
 qry_lb.Close;
 qry_lb.SQL.Clear;
 qry_lb.SQL.Add(ls);
 qry_lb.Open;
 xzbz:='2';
 DBGrid4.Visible:=False;
 Editxm.SetFocus;
end;

procedure Tfrm_ycsj.DBGrid4KeyPress(Sender: TObject; var Key: Char);
var
ls,bybh,brxm,brxb,brnl,sfwc,ryrq,sbr,brch,zyh,brks:string;
begin
if Key=#13 then
 begin
 bybh:=trim(sp_cx.FieldByName('bybh').AsString);
 brxm:=trim(sp_cx.FieldByName('brxm').AsString);
 brxb:=trim(sp_cx.FieldByName('brxb').AsString);
 brnl:=trim(sp_cx.FieldByName('brnl').AsString);
 ryrq:=trim(sp_cx.FieldByName('jzrq').AsString);
 brch:=trim(sp_cx.FieldByName('brch').AsString);
 zyh:=trim(sp_cx.FieldByName('zyh').AsString);
 brks:=trim(sp_cx.FieldByName('brks').AsString);
 ls:='insert into blsj_ycsj_jbxx(tmh,brxm,brxb,brnl,sbks,sbr,clczy,ksdm,cljb,sfwc,ryrq,sbrq,brch,zyh,brks) select '+#39+bybh+#39+','+#39+brxm+#39+','+#39+brxb+#39+','+#39+brnl+#39+','+#39+pub_ksdm+#39+','+#39+pub_czyxm+#39+','+#39+pub_czydm+#39+','+#39+pub_ksdm+#39+','+#39+'1'+#39+','+#39+'0'+#39+','+#39+ryrq+#39+' ,GETDATE()'+','+#39+brch+#39+','+#39+zyh+#39+','+#39+brks+#39;
 qry_insert.Close;
 qry_insert.SQL.Clear;
 qry_insert.SQL.Add(ls);
 qry_insert.ExecSQL;
 ado_jbxx.Close;
 ado_jbxx.CommandText:='select  top 1 * from blsj_ycsj_jbxx where tmh='+#39+bybh+#39+' order by id desc';
 ado_jbxx.Open;
 ado_jbxx.Edit;
 sjcs;
 ls:='select * from blsj_ycsj_jbxx where  (sfwc<>1 and clczy='+#39+pub_czydm+#39+') or (ksdm='+#39+pub_ksdm+#39+' and sfwc<>1 and clczy='+#39+#39+')';
 qry_lb.Close;
 qry_lb.SQL.Clear;
 qry_lb.SQL.Add(ls);
 qry_lb.Open;
 xzbz:='2';
 DBGrid4.Visible:=False;
 Editxm.SetFocus;
 end
else if Key=#27 then
dbgrid4.Visible:=False;
end;

procedure Tfrm_ycsj.DBGrid5DblClick(Sender: TObject);
var
sfwc,sfck:string;
begin
pc1.ActivePage:=TabSheet1;
qkjm;
id:=trim(sp_sjcx.FieldByName('id').AsString);
ado_jbxx.Close;
ado_jbxx.CommandText:='select * from blsj_ycsj_jbxx where id='+#39+id+#39+' order by id';
ado_jbxx.Open;
dqks:=trim(ado_jbxx.FieldByName('ksdm').AsString);
sfwc:=trim(ado_jbxx.FieldByName('sfwc').AsString);
cljb:=trim(ado_jbxx.fieldbyname('cljb').asstring);
dqczy:=trim(ado_jbxx.fieldbyname('clczy').asstring);
sfck:=trim(ado_jbxx.fieldbyname('sfck').asstring);
cljbqxkz(cljb,sfwc,sfck);
sjcs;
edit1.Text:=trim(ado_jbxx.FieldByName('tmh').AsString);
if groupbox4.Enabled=true then
editxm.SetFocus;
end;


procedure Tfrm_ycsj.dtpckrqEnter(Sender: TObject);
begin
  gbbz:=GroupBox4.Enabled;
  GroupBox4.Enabled:=True;
end;

procedure Tfrm_ycsj.dtpckrqExit(Sender: TObject);
begin
  GroupBox4.Enabled:=gbbz;
end;

procedure Tfrm_ycsj.edit1KeyPress(Sender: TObject; var Key: Char);
var
tmh,ls,bybh,brxm,brxb,brnl,sfwc,ryrq,brch,zyh,brks,ryzd:string;
begin
if Key=#13 then
 begin
 tmh:=Trim(edit1.Text);
 if tmh<>'' then
 begin
  ls := 'select * from blsj_ycsj_jbxx where tmh=' + #39 + tmh + #39 + ' or brxm=' + #39 + tmh + #39;
  ls :=ls+' union   select a.* from blsj_ycsj_jbxx a,zysf_zydj b where b.bqdm='+pub_bqdm+'  and rtrim(ltrim(a.tmh))=rtrim(ltrim(b.tmh))  and a.brch='+#39+tmh+#39 +' and a.sbks='+#39+pub_ksdm+#39;
  qry_temp.Close;
  qry_temp.SQL.Clear;
  qry_temp.SQL.Add(ls);
  qry_temp.Open;
  if  qry_temp.RecordCount>0  then //该卡号已填报过则提示
  begin
    if (application.MessageBox('已存在该卡号或姓名上报信息，是否继续？','请注意',MB_YESNO + MB_ICONQUESTION) =IDYES) then
     begin
       qkjm;
       Button1.Enabled:=True;
       Button2.Enabled:=True;
       Button5.Enabled:=True;
       Button6.Enabled:=True;
       sp_cx.Close;
       sp_cx.parameters.ParamByName('@lybz').value:='1';
       sp_cx.parameters.ParamByName('@tmh').value:=tmh;
       sp_cx.parameters.ParamByName('@bqdm').value := pub_bqdm;
       sp_cx.Open;
       if sp_cx.RecordCount=0 then  //没有该卡号挂号记录 或 住院记录
       begin
        application.MessageBox(pchar('该条码号或姓名无就诊记录,请检查!'),'注意',16);
        Edit1.SetFocus;
       end
       else if sp_cx.RecordCount=1 then //只有一条就诊记录则导入
       begin
        bybh:=trim(sp_cx.FieldByName('bybh').AsString);
        brxm:=trim(sp_cx.FieldByName('brxm').AsString);
        brxb:=trim(sp_cx.FieldByName('brxb').AsString);
        brnl:=trim(sp_cx.FieldByName('brnl').AsString);
        ryrq:=trim(sp_cx.FieldByName('jzrq').AsString);
        brch:=trim(sp_cx.FieldByName('brch').AsString);
        zyh:=trim(sp_cx.FieldByName('zyh').AsString);
        brks:=trim(sp_cx.FieldByName('brks').AsString);
        ryzd := trim(sp_cx.FieldByName('ryzd').AsString);
        ls:='insert into blsj_ycsj_jbxx(tmh,brxm,brxb,brnl,sbks,sbr,clczy,ksdm,cljb,sfwc,ryrq,sbrq,brch,zyh,brks,ryzd) select '+#39+bybh+#39+','+#39+brxm+#39+','+#39+brxb+#39+','+#39+brnl+#39+','+#39+pub_ksdm+#39+','+#39+pub_czyxm+#39+','+#39+pub_czydm+#39+','+#39+pub_ksdm+#39+','+#39+'1'+#39+','+#39+'0'+#39+','+#39+ryrq+#39+' ,GETDATE()'+','+#39+brch+#39+','+#39+zyh+#39+','+#39+brks+#39+','+#39+ryzd+#39;
        qry_insert.Close;
        qry_insert.SQL.Clear;
        qry_insert.SQL.Add(ls);
        qry_insert.ExecSQL;
        ado_jbxx.Close;
        ado_jbxx.CommandText:='select  top 1 * from blsj_ycsj_jbxx where tmh='+#39+bybh+#39+' order by id desc';
        ado_jbxx.Open;
        ado_jbxx.Edit;
        sjcs;
        ls:='select * from blsj_ycsj_jbxx where  (sfwc<>1 and clczy='+#39+pub_czydm+#39+') or (ksdm='+#39+pub_ksdm+#39+' and sfwc<>1 and clczy='+#39+#39+')';
        qry_lb.Close;
        qry_lb.SQL.Clear;
        qry_lb.SQL.Add(ls);
        qry_lb.Open;
       end
       else
       begin
        DBGrid4.left:=edit1.left;
        DBGrid4.top:=edit1.top+edit1.Height+1;
        DBGrid4.Visible:=true;
        DBGrid4.SetFocus;
       end;
     end;
  end
  else   //该卡号未填报过
  begin
   qkjm;
   Button1.Enabled:=True;
   Button2.Enabled:=True;
   Button5.Enabled:=True;
   Button6.Enabled:=True;
   sp_cx.Close;
   sp_cx.parameters.ParamByName('@lybz').value:='1';
   sp_cx.parameters.ParamByName('@tmh').value:=tmh;
   sp_cx.parameters.ParamByName('@bqdm').value := pub_bqdm;
   sp_cx.Open;
   if sp_cx.RecordCount=0 then  //没有该卡号挂号记录 或 住院记录
    begin
     application.MessageBox(pchar('该条码号无就诊记录,请检查!'),'注意',16);
     Edit1.SetFocus;
    end
   else if sp_cx.RecordCount=1 then //有就诊记录则导入
    begin
     bybh:=trim(sp_cx.FieldByName('bybh').AsString);
     brxm:=trim(sp_cx.FieldByName('brxm').AsString);
     brxb:=trim(sp_cx.FieldByName('brxb').AsString);
     brnl:=trim(sp_cx.FieldByName('brnl').AsString);
     ryrq:=trim(sp_cx.FieldByName('jzrq').AsString);
     brch:=trim(sp_cx.FieldByName('brch').AsString);
     zyh:=trim(sp_cx.FieldByName('zyh').AsString);
     brks:=trim(sp_cx.FieldByName('brks').AsString);
     ryzd := trim(sp_cx.FieldByName('ryzd').AsString);
     ls:='insert into blsj_ycsj_jbxx(tmh,brxm,brxb,brnl,sbks,sbr,clczy,ksdm,cljb,sfwc,ryrq,sbrq,brch,zyh,brks,ryzd) select '+#39+bybh+#39+','+#39+brxm+#39+','+#39+brxb+#39+','+#39+brnl+#39+','+#39+pub_ksdm+#39+','+#39+pub_czyxm+#39+','+#39+pub_czydm+#39+','+#39+pub_ksdm+#39+','+#39+'1'+#39+','+#39+'0'+#39+','+#39+ryrq+#39+' ,GETDATE()'+','+#39+brch+#39+','+#39+zyh+#39+','+#39+brks+#39+','+#39+ryzd+#39;
     qry_insert.Close;
     qry_insert.SQL.Clear;
     qry_insert.SQL.Add(ls);
     qry_insert.ExecSQL;
     ado_jbxx.Close;
     ado_jbxx.CommandText:='select * from blsj_ycsj_jbxx where tmh='+#39+bybh+#39+' order by id desc';
     ado_jbxx.Open;
     ado_jbxx.Edit;
     sjcs;
     ls:='select * from blsj_ycsj_jbxx where  (sfwc<>1 and clczy='+#39+pub_czydm+#39+') or (ksdm='+#39+pub_ksdm+#39+' and sfwc<>1 and clczy='+#39+#39+')';
     qry_lb.Close;
     qry_lb.SQL.Clear;
     qry_lb.SQL.Add(ls);
     qry_lb.Open;
    end
   else //有多条记录则弹出选择列表
   begin
    DBGrid4.left:=edit1.left;
    DBGrid4.top:=edit1.top+edit1.Height+1;
    DBGrid4.Visible:=true;
    DBGrid4.SetFocus;
   end;
  end;
  end;
 end
else if Key=#27 then
 DBGrid4.Visible:=False;
end;

procedure Tfrm_ycsj.FormActivate(Sender: TObject);
begin
edit1.SetFocus
end;

procedure Tfrm_ycsj.FormCreate(Sender: TObject);
var
ls:string;
x,y:Integer;
begin
Add_xsz('sys_ksdm','dm',ComboBox8);
Add_xsz('sys_ksdm','dm',ComboBox9);
pc1.ActivePage:=TabSheet1;
x:=Screen.Height;
y:=Screen.Width;
if (x<900) and (y<1300) then
self.windowstate:=wsMaximized;
sxlb;
if frm_blsj_checkerror = nil then
Application.CreateForm(Tfrm_blsj_checkerror, frm_blsj_checkerror);
end;

procedure Tfrm_ycsj.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if (key=#13) and (Memo1.Focused=False) and(dtpfhz.Focused=false) and (dtphsz.Focused=false) and (dtpckrq.Focused=false) then
 SelectNext(activeControl,true,true);
end;

procedure Tfrm_ycsj.FormShow(Sender: TObject);
begin
dtpksrq.Date:=Now;
dtpjsrq.Date:=Now;
dtptjs.Date:=Now;
dtptje.Date:=Now;
if groupbox4.Enabled=true then
edit1.SetFocus
end;

procedure Tfrm_ycsj.Add_xsz(bmc,cxz:string;Cbox:TComboBox);
var sj:string;
begin
  Qry_pub.close;
  Qry_pub.SQL.clear;
  if bmc='sys_ksdm' then
  Qry_pub.sql.add('select * from ' + bmc + ' where kssx=09 order by ' + cxz)
  else
  Qry_pub.sql.add('select * from ' + bmc + ' order by ' + cxz);
  Qry_pub.open;
  Cbox.items.clear;
  if (bmc='zysf_rybq') or (bmc='zysf_rytj')then
    begin
     while not Qry_pub.eof do
  begin
    Cbox.items.add(trim(Qry_pub.FieldByName('dm').asstring)+'-'+trim(Qry_pub.FieldByName('sm').asstring));
    Qry_pub.next;
  end;
    end
    else
    begin
  while not Qry_pub.eof do
  begin
    Cbox.items.add(trim(Qry_pub.FieldByName('dm').asstring)+'-'+trim(Qry_pub.FieldByName('mc').asstring));
    Qry_pub.next;
  end;
   end
end;
 function Tfrm_ycsj.get_xsz(bmc,cxz:string):string;
var sj:string;
begin
  Qry_pub.close;
  Qry_pub.SQL.clear;
  if bmc='icd10' then
  Qry_pub.sql.add('select * from '+bmc+' where jbbm='+#39+cxz+#39+'order by jbbm')
  else
  Qry_pub.sql.add('select * from '+bmc+' where dm='+#39+cxz+#39+'order by dm');
  Qry_pub.open;
  if Qry_pub.RecordCount=1 then
  begin
    if bmc='icd10'
    then
     result:=trim(Qry_pub.fieldbyname('jbmc').asstring)
     else
     result:=trim(Qry_pub.fieldbyname('mc').asstring)
  end
  else
    result:='';
end;
 function Tfrm_ycsj.ljjc;
 begin
 frm_blsj_checkerror.Memo1.Text:='';
 iii:=0;
 if Trim(Editxm.Text)='' then
  begin
   iii:=iii+1;
   frm_blsj_checkerror.Memo1.Lines.Add(trim(inttostr(iii))+'：病人姓名不能为空');
  end;
   if Trim(DBEdit4.Text)='' then
  begin
   iii:=iii+1;
   frm_blsj_checkerror.Memo1.Lines.Add(trim(inttostr(iii))+'：病人年龄不能为空');
  end;
  if Trim(DBEdit5.Text)='' then
  begin
   iii:=iii+1;
   frm_blsj_checkerror.Memo1.Lines.Add(trim(inttostr(iii))+'：病人性别不能为空');
  end;
 if Trim(DBEdit6.Text)='' then
  begin
   iii:=iii+1;
   frm_blsj_checkerror.Memo1.Lines.Add(trim(inttostr(iii))+'：病人诊断不能为空');
  end;
  if Trim(ComboBox9.Text)='' then
  begin
   iii:=iii+1;
   frm_blsj_checkerror.Memo1.Lines.Add(trim(inttostr(iii))+'：填报科室不能为空');
  end;
  if Trim(DBEdit1.Text)='' then
  begin
   iii:=iii+1;
   frm_blsj_checkerror.Memo1.Lines.Add(trim(inttostr(iii))+'：填报人不能为空');
  end;
   if Trim(combobox2.Text)='' then
  begin
   iii:=iii+1;
   frm_blsj_checkerror.Memo1.Lines.Add(trim(inttostr(iii))+'：护理级别不能为空');
  end;
  if Trim(ComboBox1.Text)='' then
  begin
   iii:=iii+1;
   frm_blsj_checkerror.Memo1.Lines.Add(trim(inttostr(iii))+'：机体对压力所引起的不适感的反应能力评估不能为空');
  end;
  if Trim(ComboBox3.Text)='' then
  begin
   iii:=iii+1;
   frm_blsj_checkerror.Memo1.Lines.Add(trim(inttostr(iii))+'：皮肤处于潮湿状态的程度评估不能为空');
  end;
 if Trim(ComboBox4.Text)='' then
  begin
   iii:=iii+1;
   frm_blsj_checkerror.Memo1.Lines.Add(trim(inttostr(iii))+'：躯体活动的能力评估不能为空');
  end;
  if Trim(ComboBox5.Text)='' then
  begin
   iii:=iii+1;
   frm_blsj_checkerror.Memo1.Lines.Add(trim(inttostr(iii))+'：改变和控制体位的能力评估不能为空');
  end;
  if Trim(ComboBox6.Text)='' then
  begin
   iii:=iii+1;
   frm_blsj_checkerror.Memo1.Lines.Add(trim(inttostr(iii))+'：通常的摄食情况评估不能为空');
  end;
  if Trim(ComboBox7.Text)='' then
  begin
   iii:=iii+1;
   frm_blsj_checkerror.Memo1.Lines.Add(trim(inttostr(iii))+'：摩擦力和剪切力评估不能为空');
  end;
  if Trim(DBEdit8.Text)='' then
  begin
   iii:=iii+1;
   frm_blsj_checkerror.Memo1.Lines.Add(trim(inttostr(iii))+'：评估总分不能为空');
  end;
  if Trim(Memo1.Text)='' then
  begin
   iii:=iii+1;
   frm_blsj_checkerror.Memo1.Lines.Add(trim(inttostr(iii))+'：目前护理措施不能为空');
  end;
  if Pos('1',Trim(ado_jbxxhzzt.AsString))=0 then
  begin
   iii:=iii+1;
   frm_blsj_checkerror.Memo1.Lines.Add(trim(inttostr(iii))+'：患者状态未选择');
  end;
   if Pos('1',Trim(ado_jbxxyszt.AsString))=0 then
  begin
   iii:=iii+1;
   frm_blsj_checkerror.Memo1.Lines.Add(trim(inttostr(iii))+'：意识状态未选择');
  end;
    if cljb='1' then
  begin
  if dbedit7.Text='' then
   begin
    iii:=iii+1;
    frm_blsj_checkerror.Memo1.Lines.Add(trim(inttostr(iii))+'：申请人签名不能为空');
   end;
  end;
  if cljb='2' then
  begin
  if dbedit3.Text='' then
   begin
    iii:=iii+1;
    frm_blsj_checkerror.Memo1.Lines.Add(trim(inttostr(iii))+'：护士长签名不能为空');
   end;
   if FormatDateTime('yyyy-mm-dd ',dtphsz.Date)<'2000-00-00' then
   begin
    iii:=iii+1;
    frm_blsj_checkerror.Memo1.Lines.Add(trim(inttostr(iii))+'：护士长签名日期不对');
   end;
  end;
  if cljb='3' then
  begin
  if dbedit10.Text='' then
   begin
    iii:=iii+1;
    frm_blsj_checkerror.Memo1.Lines.Add(trim(inttostr(iii))+'：复核指导者签名不能为空');
   end;
   if FormatDateTime('yyyy-mm-dd ',dtpfhz.Date)<'2000-00-00' then
   begin
    iii:=iii+1;
    frm_blsj_checkerror.Memo1.Lines.Add(trim(inttostr(iii))+'：复核签名日期不对');
   end;
  end;
  if iii>0 then
  begin
  result:=true;
  if frm_blsj_checkerror=nil then
   Application.CreateForm(Tfrm_blsj_checkerror, frm_blsj_checkerror);
   frm_blsj_checkerror.ShowModal;
  end
  else
  result:=false;
 end;
 procedure Tfrm_ycsj.Memo1DblClick(Sender: TObject);
begin
str_mbct:='';
if (cljb='1') or (cljb='') then
 begin
 application.CreateForm(Tfrm_blsj_bqgcyy, frm_blsj_bqgcyy);
  try
    frm_blsj_bqgcyy.sjlb:='压疮风险评估';
    frm_blsj_bqgcyy.ShowModal;
    if str_mbct<>'' then
    memo1.Lines.Add(str_mbct);
  finally
    frm_blsj_bqgcyy.free;
  end;
 end;
end;

procedure Tfrm_ycsj.Memo2DblClick(Sender: TObject);
begin
str_mbct:='';
 application.CreateForm(Tfrm_blsj_bqgcyy, frm_blsj_bqgcyy);
  try
    frm_blsj_bqgcyy.sjlb:='压疮风险评估';
    frm_blsj_bqgcyy.ShowModal;
     if str_mbct<>''then
    memo1.Lines.Add(str_mbct);
  finally
    frm_blsj_bqgcyy.free;
  end;
end;

procedure Tfrm_ycsj.MenuItem1Click(Sender: TObject);
var
ls,qjks,clczy,jlid,tjks,tjczy,thyy:string;
begin
 dqks:=Trim(ado_jbxx.fieldbyname('ksdm').asstring);
 dqczy:=Trim(ado_jbxx.fieldbyname('clczy').asstring);
 ls := 'select top 1 * from blsj_ycsj_cljl where sjid=' + #39 + id + #39 + ' and (thbz<>1  or thbz is null) order by id desc';
 qry_temp.Close;
 qry_temp.SQL.Clear;
 qry_temp.SQL.Add(ls);
 qry_temp.Open;
 tjczy:=Trim(qry_temp.fieldbyname('tjczy').asstring);
 tjks:=Trim(qry_temp.fieldbyname('tjksdm').asstring);
 if (qry_temp.RecordCount = 0) or (tjczy='') or (id='') then
 Application.MessageBox('没有可回退的前级科室或人员，不能回退!', '错误提示', 16)
 else  if (qry_temp.RecordCount=1)  then
 begin
 qjks:=Trim(qry_temp.fieldbyname('clksdm').asstring);
 jlid:=Trim(qry_temp.fieldbyname('id').asstring);
 clczy:=Trim(qry_temp.fieldbyname('clczy').asstring);
 cljb:=IntToStr((StrToInt(cljb)-1));
 thyy:=trim(INPUTBOX('输入：','请输入退回原因(100字以内)：    ',''));
 ls:='update blsj_ycsj_jbxx set ksdm='+#39+qjks+#39+',clczy='+#39+clczy+#39+',cljb='+#39+cljb+#39+' where id='+#39+id+#39;
 qry_temp.Close;
 qry_temp.SQL.Clear;
 qry_temp.SQL.Add(ls);
 qry_temp.ExecSQL;
 ls := 'update   blsj_ycsj_cljl set thbz=1,thrq=Getdate(),thry='+#39+pub_czydm+#39+',thyy='+#39+thyy+#39+' where id=' + #39 + jlid + #39;
 qry_temp.Close;
 qry_temp.SQL.Clear;
 qry_temp.SQL.Add(ls);
 qry_temp.ExecSQL;
 application.messagebox('报告退回上级科室成功！', '提示', mb_ok + mb_iconinformation);
 //qkjm;
 sxlb;
 end;
end;

procedure Tfrm_ycsj.N1Click(Sender: TObject);
 var
 ls,sid:string;
begin
if (checkbox14.Checked=true) and ((FormatDateTime('yyyy-mm-dd ',dtpycfsrq.Date)>'2000-00-00') or (FormatDateTime('yyyy-mm-dd ',dtpbgrq.Date)>'2000-00-00'))  then
begin
application.MessageBox(pchar('出院发生压疮选否则不应填发生报告日期!'),'注意',16);
abort;
end;
if (id<>trim(qry_lb.FieldByName('id').AsString)) and (id <>'') then
begin
application.MessageBox(pchar('选择出科的病人与右边填写界面病人不一致!'),'注意',16);
abort;
end;
if (trim(combobox10.Text)='转科') and (trim(combobox8.Text)='') and (checkbox15.Checked=true) then
begin
 application.MessageBox(pchar('转科病人应填写转科科室!'),'注意',16);
 abort;
end;
 if ((checkbox14.Checked=true) and (combobox10.Text<>'') and (FormatDateTime('yyyy-mm-dd ',dtpckrq.Date)>'2000-00-00') and (dbedit11.Text<>''))
  or ((checkbox15.Checked=true) and (combobox10.Text<>'') and (FormatDateTime('yyyy-mm-dd ',dtpycfsrq.Date)>'2000-00-00') and
   (FormatDateTime('yyyy-mm-dd ',dtpckrq.Date)>'2000-00-00') and (FormatDateTime('yyyy-mm-dd ',dtpbgrq.Date)>'2000-00-00') and (dbedit11.Text<>'')) then
 begin
    sid:=trim(qry_lb.FieldByName('id').AsString);
    if trim(edit1.Text)<>'' then
    button5.Click;
    ls:='update blsj_ycsj_jbxx set sfck=1 where id ='+#39+sid+#39;
    qry_temp.Close;
    qry_temp.SQL.Clear;
    qry_temp.SQL.Add(ls);
    qry_temp.ExecSQL;
    qkjm;
    sxlb;
 end
 else
 begin
 frm_blsj_checkerror.Memo1.Text:='';
 iii:=0;
 if (checkbox14.Checked=false) and (checkbox15.Checked=false) then
 begin
  iii:=iii+1;
  frm_blsj_checkerror.Memo1.Lines.Add(trim(inttostr(iii))+'：出科时是否发生压疮应至少勾选一项');
 end;
 if trim(combobox10.Text)='' then
 begin
  iii:=iii+1;
  frm_blsj_checkerror.Memo1.Lines.Add(trim(inttostr(iii))+'：出科类别不能为空');
 end;
 if trim(dbedit11.Text)='' then
 begin
  iii:=iii+1;
  frm_blsj_checkerror.Memo1.Lines.Add(trim(inttostr(iii))+'：护士签名不能为空');
 end;
 if FormatDateTime('yyyy-mm-dd ',dtpckrq.Date)<'2014-01-01'  then
 begin
  iii:=iii+1;
  frm_blsj_checkerror.Memo1.Lines.Add(trim(inttostr(iii))+'：出科时间填写不正确');
 end;
 if iii>0 then
  begin
  if frm_blsj_checkerror=nil then
  Application.CreateForm(Tfrm_blsj_checkerror, frm_blsj_checkerror);
  frm_blsj_checkerror.ShowModal;
  end
 end;
end;

procedure Tfrm_ycsj.sjcs;//查询信息时实际传送值
 var fsrq,dhtzrq,s:string;
 begin
 if ado_jbxxtmh.asstring<>'' then
 edit1.Text:=Trim(ado_jbxx.fieldbyname('tmh').asstring);
 if ado_jbxxmqhlcs.asstring<>'' then
 Memo1.Text:=ado_jbxx.fieldbyname('mqhlcs').asstring;
 if ado_jbxxbz.asstring<>'' then
 Memo2.Text:=ado_jbxx.fieldbyname('bz').asstring;
 if ado_jbxxhljb.asstring<>'' then
 ComboBox2.Text:=trim(ado_jbxx.fieldbyname('hljb').asstring);
 if ado_jbxxsbks.asstring>'0' then
 ComboBox9.Text:=get_xsz('sys_ksdm',trim(ado_jbxx.fieldbyname('sbks').asstring));
 if ado_jbxxzkks.asstring>'0' then
 ComboBox8.Text:=get_xsz('sys_ksdm',trim(ado_jbxx.fieldbyname('zkks').asstring));
 if ado_jbxxckqk.asstring>'0' then
 ComboBox10.Text:=trim(ado_jbxx.fieldbyname('ckqk').asstring);
 if ado_jbxxryzd.asstring>'0' then
 jbmc.Caption:=get_xsz('icd10',trim(ado_jbxx.fieldbyname('ryzd').asstring));
 if ado_jbxxgj.asstring>'0' then
 ComboBox1.Text:=trim(ado_jbxx.fieldbyname('gj').asstring);
 if ado_jbxxcs.asstring>'0' then
 ComboBox3.Text:=trim(ado_jbxx.fieldbyname('cs').asstring);
 if ado_jbxxhdd.asstring>'0' then
 ComboBox4.Text:=trim(ado_jbxx.fieldbyname('hdd').asstring);
 if ado_jbxxkdx.asstring>'0' then
 ComboBox5.Text:=trim(ado_jbxx.fieldbyname('kdx').asstring);
 if ado_jbxxyy.asstring>'0' then
 ComboBox6.Text:=trim(ado_jbxx.fieldbyname('yy').asstring);
 if ado_jbxxyy.asstring>'0' then
 ComboBox7.Text:=trim(ado_jbxx.fieldbyname('mcjql').asstring);
 if  ado_jbxxsffsyc.asstring='0' then
 checkbox14.Checked:=true;
 if  ado_jbxxsffsyc.asstring='1' then
 checkbox15.Checked:=true;
 
 ztyszk;//患者状态意识状态选项展开
 end;
procedure Tfrm_ycsj.sp_sjcxCalcFields(DataSet: TDataSet);
var
s:string;
begin
 s:=Trim(sp_sjcx.fieldbyname('sfwc').asstring);
 if s='1' then
 sp_sjcx['lcsfwc']:='已完成'
 else if s='0' then
 sp_sjcx['lcsfwc']:='未完成';
 sp_sjcx['brly']:='住院';
 s:=Trim(sp_sjcx.fieldbyname('sbks').asstring);
 s:=get_xsz('sys_ksdm',s);
 sp_sjcx['sbksmc']:=s;

 s:=Trim(sp_sjcx.fieldbyname('clczy').asstring);
 s:=get_xsz('sys_czy',s);
 sp_sjcx['zhclry']:=s;

 s:=Trim(sp_sjcx.fieldbyname('ksdm').asstring);
 s:=get_xsz('sys_ksdm',s);
 sp_sjcx['zhclks']:=s;
end;

procedure Tfrm_ycsj.ztysbc;
  var
  hzzt,yszt:string;
  begin
  hzzt:='';
  yszt:='';
  if CheckBox1.Checked=True then
  hzzt:='1'
  else
  hzzt:='0';
  if CheckBox2.Checked=True then
  hzzt:=hzzt+'1'
  else
  hzzt:=hzzt+'0';
  if CheckBox3.Checked=True then
  hzzt:=hzzt+'1'
  else
  hzzt:=hzzt+'0';
  if CheckBox4.Checked=True then
  hzzt:=hzzt+'1'
  else
  hzzt:=hzzt+'0';
  if CheckBox5.Checked=True then
  hzzt:=hzzt+'1'
  else
  hzzt:=hzzt+'0';
  if CheckBox6.Checked=True then
  hzzt:=hzzt+'1'
  else
  hzzt:=hzzt+'0';

  if CheckBox7.Checked=True then
  yszt:='1'
  else
  yszt:='0';
  if CheckBox8.Checked=True then
  yszt:=yszt+'1'
  else
  yszt:=yszt+'0';
  if CheckBox9.Checked=True then
  yszt:=yszt+'1'
  else
  yszt:=yszt+'0';
  if CheckBox10.Checked=True then
  yszt:=yszt+'1'
  else
  yszt:=yszt+'0';
  if CheckBox11.Checked=True then
  yszt:=yszt+'1'
  else
  yszt:=yszt+'0';
  if CheckBox12.Checked=True then
  yszt:=yszt+'1'
  else
  yszt:=yszt+'0';
  if CheckBox13.Checked=True then
  yszt:=yszt+'1'
  else
  yszt:=yszt+'0';
  ado_jbxx['hzzt']:=hzzt;
  ado_jbxx['yszt']:=yszt;
  if checkbox14.Checked then
  ado_jbxx['sffsyc']:='0'
  else
  if checkbox15.Checked then
  ado_jbxx['sffsyc']:='1';
  if trim(combobox8.Text)='' then
  ado_jbxx['zkks']:='';
  end;
 procedure Tfrm_ycsj.ztyszk;
 var
 s,s1:string;
 begin
 if ado_jbxxhzzt.AsString<>'' then
 begin
 s:=Trim(ado_jbxxhzzt.AsString);
 if Copy(s,1,1)='1' then
 CheckBox1.Checked:=True;
 if Copy(s,2,1)='1' then
 CheckBox2.Checked:=True;
 if Copy(s,3,1)='1' then
 CheckBox3.Checked:=True;
 if Copy(s,4,1)='1' then
 CheckBox4.Checked:=True;
 if Copy(s,5,1)='1' then
 CheckBox5.Checked:=True;
 if Copy(s,6,1)='1' then
 CheckBox6.Checked:=True;
 end;
 if ado_jbxxyszt.AsString<>'' then
 begin
 s1:=Trim(ado_jbxxyszt.AsString);
 if Copy(s1,1,1)='1' then
 CheckBox7.Checked:=True;
 if Copy(s1,2,1)='1' then
 CheckBox8.Checked:=True;
 if Copy(s1,3,1)='1' then
 CheckBox9.Checked:=True;
 if Copy(s1,4,1)='1' then
 CheckBox10.Checked:=True;
 if Copy(s1,5,1)='1' then
 CheckBox11.Checked:=True;
 if Copy(s1,6,1)='1' then
 CheckBox12.Checked:=True;
 if Copy(s1,7,1)='1' then
 CheckBox13.Checked:=True;
 end;
 end;
procedure Tfrm_ycsj.qkjm;
var
i:Integer;
begin
 ado_jbxx.Close;
 Memo1.Clear;
 Memo2.Clear;
 edit1.Clear;
 ComboBox1.Text:='';
 ComboBox2.Text:='';
 ComboBox3.Text:='';
 ComboBox4.Text:='';
 ComboBox5.Text:='';
 ComboBox6.Text:='';
 ComboBox7.Text:='';
 ComboBox8.Text:='';
 ComboBox9.Text:='';
 ComboBox10.Text:='';
 checkbox14.Checked:=false;
 checkbox15.Checked:=false;
 jbmc.Caption:='';
 Button1.Enabled:=False;
 Button2.Enabled:=False;
 Button6.Enabled:=False;
 for i:=1 to 13 do
 begin
  if  TCheckBox(FindComponent('checkBox'+inttostr(i))).Checked then
  TCheckBox(FindComponent('checkBox'+inttostr(i))).Checked:=False;
 end;
 DBGrid3.SetFocus;
end;
 procedure Tfrm_ycsj.qry_lbAfterDelete(DataSet: TDataSet);
 var
 ls:string;
 begin
 qkjm;
 sxlb;
 end;
 procedure Tfrm_ycsj.cljbqxkz(cljb: string;sfwc:string;sfck:string);
 begin
  if  cljb='1' then
  begin
   memo1.ReadOnly:=false;
   groupbox4.Enabled:=true;
   groupbox3.Enabled:=true;
   groupbox1.Enabled:=true;
   dbedit7.Enabled:=true;
   dbedit3.Enabled:=false;
   dbedit10.Enabled:=false;
   dtphsz.Enabled:=false;
   dtpfhz.Enabled:=false;
  end
  else if cljb='2' then
  begin
   groupbox4.Enabled:=true;
   groupbox3.Enabled:=false;
   groupbox1.Enabled:=true;
   memo1.ReadOnly:=false;
   dbedit7.Enabled:=false;
   dbedit3.Enabled:=true;
   dbedit10.Enabled:=false;
   dtphsz.Enabled:=true;
   dtpfhz.Enabled:=false;
  end
  else if cljb='3' then
  begin
   groupbox4.Enabled:=false;
   groupbox3.Enabled:=true;
   groupbox1.Enabled:=true;
   memo1.ReadOnly:=true;
   dbedit7.Enabled:=false;
   dbedit3.Enabled:=false;
   dbedit10.Enabled:=true;
   dtphsz.Enabled:=false;
   dtpfhz.Enabled:=true;
  end;
  if sfck='1' then
  begin
  groupbox3.Enabled:=false;
  memo2.ReadOnly:=true;
  end
  else
  begin
  groupbox3.Enabled:=true;
  memo2.ReadOnly:=false;
  end;
  if  ((dqczy='') and (dqks<>pub_ksdm)) or ((dqczy<>'') and (dqczy<>pub_czydm)) then
  begin
   Button1.Enabled:=False;
   Button2.Enabled:=False;
   Button6.Enabled:=False;
   groupbox1.Enabled:=false;
   groupbox4.Enabled:=false;
  end
  else
  begin
   Button1.Enabled:=True;
   Button2.Enabled:=True;
   Button6.Enabled:=True;
   ado_jbxx.Edit;
  end;
  if sfwc='1' then
  begin
    groupbox1.Enabled:=false;
    groupbox4.Enabled:=false;
    Button1.Enabled:=False;
    Button2.Enabled:=False;
    Button6.Enabled:=False;
  end;
  ado_jbxx.Edit;
 end;
 procedure Tfrm_ycsj.sxlb;
 var
 ls,xgksdm,hszzgks:string;  //hszzgks:护士长主管科室,xgksdm :科室的相关科室代码
 begin
  qry_temp.Close;
  qry_temp.SQL.Clear;
  qry_temp.SQL.Add('select * from sys_ksdm where dm='+#39+pub_ksdm+#39);
  qry_temp.Open;
  xgksdm:=qry_temp.FieldByName('xgksdm').AsString;
  qry_temp.Close;
  qry_temp.SQL.Clear;
  qry_temp.SQL.Add('select * from blsj_hlsj_qxkzb where dm='+#39+pub_ksdm+#39+' and lx='+#39+'xgks'+#39);
  qry_temp.Open;
  hszzgks:=qry_temp.FieldByName('xgksdm').AsString;
  qry_temp.Close;
  //ls:='select * from blsj_ycsj_jbxx where  ((sfwc<>1 and clczy='+#39+pub_czydm+#39+') or (ksdm='+#39+pub_ksdm+#39+' and sfwc<>1 and clczy='+#39+#39+'))';
  //ls:=ls+' or  ( (sfck<>1 or sfck is null) and cljb<>1 and id in (select sjid  from blsj_ycsj_cljl where cljb=2 and (thbz<>1 or thbz is null) and (clksdm='+#39+pub_ksdm+#39 + ' or CHARINDEX(clksdm,'+#39+hszzgks+#39+')>0' + 'or CHARINDEX(clksdm,'+#39+xgksdm+#39+')>0)' +'))'+' order by sbrq';
  ls:='select * from blsj_ycsj_jbxx where  ((sfwc<>1 and clczy='+#39+pub_czydm+#39+') or (ksdm='+#39+pub_ksdm+#39+' and sfwc<>1 and clczy='+#39+#39+'))';
  ls:=ls+' or  ( isnull(sfck,0)<>1 and cljb<>1  and (brks=' +pub_ksdm+' or CHARINDEX(brks,'+#39+hszzgks+#39+')>0' + ' or CHARINDEX(brks,'+#39+xgksdm+#39+')>0)) '+' order by sbrq';
  qry_lb.Close;
  qry_lb.SQL.Clear;
  qry_lb.SQL.Add(ls);
  qry_lb.Open;
 end;
  procedure Tfrm_ycsj.pgzfjs;
 var
 zf:integer;
 s:string;
 begin
  zf:=0;
  if trim(combobox1.Text)<>''   then
  begin
  zf:=combobox1.ItemIndex+1;
  end;
  if trim(combobox3.Text)<>'' then
  begin
  zf:=zf+combobox3.ItemIndex+1;
  end;
  if trim(combobox4.Text)<>'' then
  begin
  zf:=zf+combobox4.ItemIndex+1;
  end;
  if trim(combobox5.Text)<>'' then
  begin
  zf:=zf+combobox5.ItemIndex+1;
  end;
  if trim(combobox6.Text)<>'' then
  begin
  zf:=zf+combobox6.ItemIndex+1;
  end;
  if trim(combobox7.Text)<>'' then
  begin
  zf:=zf+combobox7.ItemIndex+1;
  end;
  ado_jbxx['pgzf']:=inttostr(zf);
 end;
 end.
