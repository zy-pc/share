unit p_blsj_ywyc;

interface

uses
    Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
    Dialogs, StdCtrls, cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
    cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxStyles,
    cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, DB, cxDBData,
    cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
    cxGridTableView, cxGridDBTableView, cxGrid, cxCalendar, ADODB, ExtCtrls,
    QuickRpt, QRCtrls, ComCtrls, DBCtrls, cxDBEdit, Mask,  cxExportGrid4Link,
    cxCheckListBox, Grids, DBGrids, Menus;

type
  Tfrm_ywyc = class(TForm)
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
    GroupBox4: TGroupBox;
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
    sp_cxbrch: TStringField;
    sp_cxryrq: TDateTimeField;
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
    dtpryrq: TcxDBDateEdit;
    Editxm: TDBEdit;
    Label7: TLabel;
    Label5: TLabel;
    GroupBox3: TGroupBox;
    Label26: TLabel;
    Label29: TLabel;
    dtpckrq: TcxDBDateEdit;
    dtpzyrq: TcxDBDateEdit;
    Label27: TLabel;
    ComboBox10: TComboBox;
    dtpjsqmrq: TcxDBDateEdit;
    Label25: TLabel;
    Label30: TLabel;
    ComboBox8: TComboBox;
    DBEdit11: TDBEdit;
    ckqk: TPopupMenu;
    N1: TMenuItem;
    dtpsbrq: TcxDBDateEdit;
    Label11: TLabel;
    dtpfsrq: TcxDBDateEdit;
    GroupBox5: TGroupBox;
    Memo1: TMemo;
    GroupBox6: TGroupBox;
    Memo2: TMemo;
    Label13: TLabel;
    DBEdit12: TDBEdit;
    ComboBox2: TComboBox;
    Label14: TLabel;
    Label22: TLabel;
    Label28: TLabel;
    N2: TMenuItem;
    DBEdit13: TDBEdit;
    Label6: TLabel;
    qry_lbid: TAutoIncField;
    qry_lbsbks: TStringField;
    qry_lbsbr: TStringField;
    qry_lbsbrq: TDateTimeField;
    qry_lbksdm: TStringField;
    qry_lbclczy: TStringField;
    qry_lbcljb: TStringField;
    qry_lbsfwc: TStringField;
    qry_lbtmh: TStringField;
    qry_lbbrxm: TStringField;
    qry_lbbrxb: TStringField;
    qry_lbbrnl: TStringField;
    qry_lbryzd: TStringField;
    qry_lbsfsbyc: TStringField;
    qry_lbpgzf: TStringField;
    qry_lbbrch: TStringField;
    qry_lbryrq: TDateTimeField;
    qry_lbfsrq: TDateTimeField;
    qry_lbbsjzs: TMemoField;
    qry_lbyczk: TMemoField;
    qry_lbmqhlcs: TMemoField;
    qry_lbsbrqm: TStringField;
    qry_lbzrzzqm: TStringField;
    qry_lbhszqm: TStringField;
    qry_lbhszqmrq: TDateTimeField;
    qry_lbfhzqm: TStringField;
    qry_lbfhzqmrq: TDateTimeField;
    qry_lbhszfhqm: TStringField;
    qry_lbyczyrq: TDateTimeField;
    qry_lbsffsyc: TStringField;
    qry_lbckrq: TDateTimeField;
    qry_lbckqk: TStringField;
    qry_lbzkks: TStringField;
    qry_lbyczkqk: TStringField;
    qry_lbgwycbgrq: TDateTimeField;
    qry_lbcyxxhsqm: TStringField;
    qry_lbjsksfhqm: TStringField;
    qry_lbjsksqmrq: TDateTimeField;
    qry_lbhszhfqm: TStringField;
    qry_lbsfck: TStringField;
    qry_lbjsksqrbz: TStringField;
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
    ado_jbxxsfsbyc: TStringField;
    ado_jbxxpgzf: TStringField;
    ado_jbxxbrch: TStringField;
    ado_jbxxryrq: TDateTimeField;
    ado_jbxxfsrq: TDateTimeField;
    ado_jbxxbsjzs: TMemoField;
    ado_jbxxyczk: TMemoField;
    ado_jbxxmqhlcs: TMemoField;
    ado_jbxxsbrqm: TStringField;
    ado_jbxxzrzzqm: TStringField;
    ado_jbxxhszqm: TStringField;
    ado_jbxxhszqmrq: TDateTimeField;
    ado_jbxxfhzqm: TStringField;
    ado_jbxxfhzqmrq: TDateTimeField;
    ado_jbxxhszfhqm: TStringField;
    ado_jbxxyczyrq: TDateTimeField;
    ado_jbxxsffsyc: TStringField;
    ado_jbxxckrq: TDateTimeField;
    ado_jbxxckqk: TStringField;
    ado_jbxxzkks: TStringField;
    ado_jbxxyczkqk: TStringField;
    ado_jbxxgwycbgrq: TDateTimeField;
    ado_jbxxcyxxhsqm: TStringField;
    ado_jbxxjsksfhqm: TStringField;
    ado_jbxxjsksqmrq: TDateTimeField;
    ado_jbxxhszhfqm: TStringField;
    ado_jbxxsfck: TStringField;
    ado_jbxxjsksqrbz: TStringField;
    GroupBox1: TGroupBox;
    Label17: TLabel;
    Label18: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Memo3: TMemo;
    dtphsz: TcxDBDateEdit;
    DBEdit7: TDBEdit;
    DBEdit3: TDBEdit;
    ado_jbxxzyschsz: TStringField;
    ado_jbxxzyscbz: TStringField;
    qry_lbzyschsz: TStringField;
    qry_lbzyscbz: TStringField;
    qry_lbzyh: TStringField;
    ado_jbxxzyh: TStringField;
    sp_cxzyh: TStringField;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1tmh: TcxGridDBColumn;
    cxGrid1DBTableView1brxm: TcxGridDBColumn;
    cxGrid1DBTableView1brnl: TcxGridDBColumn;
    cxGrid1DBTableView1brxb: TcxGridDBColumn;
    cxGrid1DBTableView1sbrq: TcxGridDBColumn;
    cxGrid1DBTableView1sbr: TcxGridDBColumn;
    cxGrid1DBTableView1sbks: TcxGridDBColumn;
    cxGrid1DBTableView1cljb: TcxGridDBColumn;
    cxGrid1DBTableView1zhclry: TcxGridDBColumn;
    cxGrid1DBTableView1sfwc: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    TabSheet3: TTabSheet;
    Panel2: TPanel;
    Label12: TLabel;
    Label31: TLabel;
    Button10: TButton;
    dtptjs: TDateTimePicker;
    dtptje: TDateTimePicker;
    Button11: TButton;
    Button12: TButton;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    sp_tj: TADOStoredProc;
    ds_tj: TDataSource;
    Label32: TLabel;
    ComboBox3: TComboBox;
    Label33: TLabel;
    ComboBox4: TComboBox;
    ado_jbxxycfq: TStringField;
    ado_jbxxycbw: TStringField;
    Label8: TLabel;
    ComboBox1: TComboBox;
    ado_jbxxycly: TStringField;
    sp_sjcxsbrqcal: TStringField;
    sp_sjcxycfq: TStringField;
    sp_sjcxycbw: TStringField;
    sp_sjcxycfqmc: TStringField;
    sp_sjcxycbwmc: TStringField;
    cxGrid1DBTableView1ycfq: TcxGridDBColumn;
    cxGrid1DBTableView1ycbw: TcxGridDBColumn;
    ra_fq: TRadioButton;
    ra_bw: TRadioButton;
    ra_ly: TRadioButton;
    ycfqsm: TLabel;
    Button13: TButton;
    SaveDialog1: TSaveDialog;
    sp_hlbzb: TADOStoredProc;
    ds_hlbzb: TDataSource;
    qry_lbsfcy: TStringField;
    sp_cxbrks: TStringField;
    Label24: TLabel;
    cxtj: TPopupMenu;
    MenuItem1: TMenuItem;
    Label37: TLabel;
    ComboBox5: TComboBox;
    ado_jbxxsfhz: TStringField;
    GroupBox2: TGroupBox;
    Memo4: TMemo;
    Label20: TLabel;
    DBEdit10: TDBEdit;
    Label21: TLabel;
    dtpfhz: TcxDBDateEdit;
    ado_jbxxskwyhyj: TStringField;
    Label9: TLabel;
    ComboBox6: TComboBox;
    ado_jbxxjsksckqk: TStringField;
    sp_sjcxcyjs: TBooleanField;
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
    procedure ComboBox9Exit(Sender: TObject);
    procedure ComboBox7KeyPress(Sender: TObject; var Key: Char);
    procedure sjcs;
    procedure xzxbc;//状态意识选项保存
    procedure qkjm;//清空界面
    procedure sxlb;//刷新待处理病人列表
    procedure cljbqxkz(cljb:string;sfwc:string;sfck:string;jsksqrbz:string);
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
    procedure N1Click(Sender: TObject);
    procedure Button3Exit(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure ComboBox2Exit(Sender: TObject);
    procedure Memo1DblClick(Sender: TObject);
    procedure Memo2DblClick(Sender: TObject);
    procedure Memo3DblClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBEdit7DblClick(Sender: TObject);
    procedure DBEdit3DblClick(Sender: TObject);
    procedure cxGrid1DBTableView1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure Button10Click(Sender: TObject);
    procedure ComboBox3KeyPress(Sender: TObject; var Key: Char);
    procedure ComboBox4KeyPress(Sender: TObject; var Key: Char);
    procedure ComboBox2KeyPress(Sender: TObject; var Key: Char);
    procedure ComboBox10KeyPress(Sender: TObject; var Key: Char);
    procedure ComboBox1KeyPress(Sender: TObject; var Key: Char);
    procedure ComboBox3Exit(Sender: TObject);
    procedure ComboBox4Exit(Sender: TObject);
    procedure ComboBox1Exit(Sender: TObject);
    procedure ComboBox3Change(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure DBGrid3DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid3CellClick(Column: TColumn);
    procedure MenuItem1Click(Sender: TObject);
    procedure ComboBox6Exit(Sender: TObject);
    procedure cxGrid1DBTableView1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
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
  frm_ywyc: Tfrm_ywyc;

implementation
uses p_dm,p_func,p_tjbg,p_main,p_ywycjprint,p_blsj_bqgcyy,p_blsj_gwyspf,p_blsj_checkError;

{$R *.dfm}

procedure Tfrm_ywyc.Button10Click(Sender: TObject);
var
  ls, ksrq, jsrq,tjlx: string;
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
  if ra_fq.Checked then //按分期
  tjlx := '1'
  else if ra_bw.Checked then   //按部位
  tjlx := '2'
  else if ra_ly.Checked then   //按来源
  tjlx := '3';
  sp_tj.parameters.ParamByName('@tjlx').value := tjlx;
  sp_tj.open;
  for i:=0 to sp_tj.fieldcount-1 do
    begin
      cxGridDBTableView1.CreateColumn;
      cxGridDBTableView1.Columns[i].DataBinding.fieldname:=sp_tj.Fields[i].DisplayName;
      cxGridDBTableView1.Columns[i].caption:=sp_tj.Fields[i].fieldname;
      if i=0 then
      cxGridDBTableView1.Columns[i].width:=100
      else
      begin
      if (tjlx='1') or (cxGridDBTableView1.Columns[i].caption='合计')  then
      cxGridDBTableView1.Columns[i].width:=80
      else if tjlx='2' then
      cxGridDBTableView1.Columns[i].width:=100
      else if tjlx='3' then
      cxGridDBTableView1.Columns[i].width:=200;
      end;
    end;
  sp_tj.ExecProc;
  sp_tj.active:=True;
end;

procedure Tfrm_ywyc.Button12Click(Sender: TObject);
begin
  if SaveDialog1.Execute then
  begin
    ExportGrid4ToEXCEL( SaveDialog1.FileName, cxGrid2, true, true );
  //  exportgridtoexcel(SaveDialog1.FileName, cxGrid2, true, true);
    MessageBox(0, '数据导出完毕!', '系统提示', MB_OK + MB_ICONINFORMATION);
  end;
end;

procedure Tfrm_ywyc.Button13Click(Sender: TObject);
begin
 if SaveDialog1.Execute then
  begin
    ExportGrid4ToEXCEL( SaveDialog1.FileName, cxGrid1, true, true );
   // exportgridtoexcel(SaveDialog1.FileName, cxGrid1, true, true);
    MessageBox(0, '数据导出完毕!', '系统提示', MB_OK + MB_ICONINFORMATION);
  end;
end;

procedure Tfrm_ywyc.Button1Click(Sender: TObject);
var
s:string;
i:Integer;
sfwc,sfck,jsksqrbz:string;
begin
 id:=trim(ado_jbxx.FieldByName('id').AsString);
 Button5.Click;
//展开开始
 qkjm;
 xzbz:='2';
 ado_jbxx.Close;
 ado_jbxx.CommandText:='select * from blsj_ywyc_jbxx where id='+#39+id+#39+' order by id';
 ado_jbxx.Open;
 dqks:=trim(ado_jbxx.FieldByName('ksdm').AsString);
 sfwc:=trim(ado_jbxx.FieldByName('sfwc').AsString);
 cljb:=trim(ado_jbxx.fieldbyname('cljb').asstring);
 dqczy:=trim(ado_jbxx.fieldbyname('clczy').asstring);
 sfck:=trim(ado_jbxx.FieldByName('sfck').AsString);
 jsksqrbz:=trim(ado_jbxx.FieldByName('jsksqrbz').AsString);
 cljbqxkz(cljb,sfwc,sfck,jsksqrbz);
 sjcs;
 edit1.Text:=trim(ado_jbxx.FieldByName('tmh').AsString);
{ qry_temp.Close;  //提交不再弹出回退原因
 qry_temp.SQL.Clear;
 qry_temp.sql.Add('select  * from blsj_ywyc_cljl where sjid=' + #39 + id + #39 +' and cljb='+#39+inttostr(strtoint(cljb)+1)+#39+ ' and thbz=1 order by thrq desc');
 qry_temp.Open;
 if (qry_temp.RecordCount>0)  then
 begin
 application.CreateForm(Tfrm_blsj_gwyspf, frm_blsj_gwyspf);
  try
   frm_blsj_gwyspf.sjcljb:=inttostr(strtoint(cljb)+1);
   frm_blsj_gwyspf.sjclid:=id;
   frm_blsj_gwyspf.pflb:='ywychtyy';
   frm_blsj_gwyspf.ShowModal;
  finally
    frm_blsj_gwyspf.free;
  end;
 end;}
 qry_lb.Locate('id',id,[]);
 //展开结束
 if not ljjc then
 begin
  qry_temp.Close;
  qry_temp.SQL.Clear;
  qry_temp.SQL.Add('select * from blsj_ywyc_jbxx where id='+id);
  qry_temp.Open;
  s:=Trim(qry_temp.fieldbyname('cljb').asstring);
  if strtoint(s)=3 then
  application.MessageBox(pchar('该记录已到最后处理科室或人员，不能提交!'),'注意',16)
  else
  begin
   application.CreateForm(Tfrm_tjbg, frm_tjbg);
   frm_tjbg.sjid:='F'+id;
   frm_tjbg.tjcljb :=cljb;
   frm_tjbg.ShowModal;
  end;
 end;
end;

procedure Tfrm_ywyc.Button2Click(Sender: TObject);
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
 ls:='update blsj_ywyc_jbxx set sfwc=1 where id='+#39+id+#39 ;
 qry_temp.Close;
 qry_temp.SQL.Clear;
 qry_temp.SQL.Add(ls);
 qry_temp.ExecSQL;
 application.messagebox('该事件记录处理流程完成！', '提示', mb_ok + mb_iconinformation);
 qkjm;
 sxlb;//刷新列表
 end;
 end;
end;
end;

procedure Tfrm_ywyc.Button3Click(Sender: TObject);
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
application.CreateForm(Tywycprint,ywycprint);
try
 ywycprint.QRLabel17.Caption:=pub_yymc+'院外压疮报告表';
 ywycprint.QRLabel25.Caption:=Trim(Editxm.Text);
 ywycprint.QRLabel2.Caption:=Trim(DBEdit4.Text);
 ywycprint.QRLabel26.Caption:=Trim(DBEdit9.Text);
 ywycprint.QRLabel44.Caption:=Trim(edit1.Text);
 ywycprint.QRLabel149.Caption:=Trim(dbedit5.Text);
 ywycprint.QRLabel147.Caption:=Trim(combobox9.Text);
 ywycprint.QRLabel13.Caption:=trim(dbedit6.Text)+''+Trim(jbmc.Caption);
 ywycprint.QRLabel20.Caption:=Trim(dbedit12.Text); //压疮治愈护士长复核签名
 ywycprint.QRLabel33.Caption:=Trim(dbedit13.Text); //接收科室复核签名
 if FormatDateTime('yyyy-mm-dd ',dtpjsqmrq.Date)>'1900-00-00' then//接收科室签名日期
 ywycprint.QRLabel35.Caption:=FormatDateTime('yyyy年mm月dd日',dtpjsqmrq.Date);
 if FormatDateTime('yyyy-mm-dd ',dtpryrq.Date)>'1900-00-00' then//入院日期
 ywycprint.QRLabel15.Caption:=FormatDateTime('yyyy年mm月dd日',dtpryrq.Date);
 if FormatDateTime('yyyy-mm-dd ',dtpfsrq.Date)>'1900-00-00' then//发生日期
 ywycprint.QRLabel163.Caption:=FormatDateTime('yyyy年mm月dd日 hh时',dtpsbrq.Date);
  if FormatDateTime('yyyy-mm-dd ',dtpfsrq.Date)>'1900-00-00' then//上报日期
 ywycprint.QRLabel6.Caption:=FormatDateTime('yyyy年mm月dd日 hh 时',dtpsbrq.Date);
 ywycprint.QRLabel48.Caption:=Trim(dbedit7.Text);//申报人签名
 ywycprint.QRLabel45.Caption:=Trim(dbedit3.Text); //护士站签名
 if FormatDateTime('yyyy-mm-dd ',dtphsz.Date)>'1900-00-00' then
 ywycprint.QRLabel50.Caption:=FormatDateTime('yyyy年mm月dd日 hh小时mm分',dtphsz.Date);
 ywycprint.QRLabel47.Caption:=Trim(dbedit10.text); //复核者签名
 if FormatDateTime('yyyy-mm-dd ',dtpfhz.Date)>'1900-00-00' then
 ywycprint.QRLabel52.Caption:=FormatDateTime('yyyy年mm月dd日 hh小时mm分',dtpfhz.Date);
 if FormatDateTime('yyyy-mm-dd ',dtpckrq.Date)>'1900-00-00' then //出科时间
 ywycprint.QRLabel91.Caption:=FormatDateTime('yyyy年mm月dd日',dtpckrq.Date);
 ywycprint.QRLabel151.Caption:=Trim(dbedit11.Text);//出院情况护士签名
 if trim(combobox10.Text)='出院' then  //出科类别
 ywycprint.QRLabel144.Caption:='√';
 if trim(combobox10.Text)='死亡' then
 ywycprint.QRLabel97.Caption:='√';
 if trim(combobox10.Text)='转科' then
 begin
 ywycprint.QRLabel145.Caption:='√';
  ywycprint.QRLabel95.Caption:=trim(combobox8.text);
 end;
 if FormatDateTime('yyyy-mm-dd ',dtpckrq.Date)>'1900-00-00' then //出科日期
 ywycprint.QRLabel91.Caption:=FormatDateTime('yyyy年mm月dd日',dtpckrq.Date);
  if (FormatDateTime('yyyy-mm-dd ',dtpzyrq.Date)>'1900-00-00') and (trim(combobox2.Text)='治愈') then //治愈日期
 ywycprint.QRLabel18.Caption:=FormatDateTime('yyyy年mm月dd日',dtpzyrq.Date);
 if trim(combobox2.Text)='治愈' then //压疮转归情况
 ywycprint.QRLabel21.Caption:='√'
 else if trim(combobox2.Text)='好转' then
 ywycprint.QRLabel27.Caption:='√'
 else if trim(combobox2.Text)='无变化' then
 ywycprint.QRLabel29.Caption:='√'
 else if trim(combobox2.Text)='恶化' then
 ywycprint.QRLabel31.Caption:='√';
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

 s:=Memo3.Text;  //memo3打印
 if s<>'' then
 begin
  value3:='';
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
    value3:=value3+rs;
    len:=Length(s);
   end
   else
  begin
  i:=pos(''#$D#$A'',ls);
  rs:=Copy(ls,1,i+1);
  value3:=value3+rs;
  s:=Copy(s,i+2,len);
  end;
  end;
  value3:=value3+s;
  end;
  ywycprint.QuickRep1.preview;
  groupbox4.Enabled:=true;
  finally
  ywycprint.Free;
  end;
 end
 else if iii=0 then
 application.MessageBox(pchar('事件流程未处理完成或填写不完整,不能打印!'),'注意',16);
 end;
end;

procedure Tfrm_ywyc.Button3Exit(Sender: TObject);
begin
groupbox4.Enabled:=false;;
end;

procedure Tfrm_ywyc.Button4Click(Sender: TObject);
begin
Self.Close;
end;

procedure Tfrm_ywyc.Button5Click(Sender: TObject);
begin
  if cljb<>'3' then
  begin
  ado_jbxx['bsjzs']:=Memo1.Text;
  ado_jbxx['yczk']:=Memo2.Text;
  ado_jbxx['mqhlcs']:=Memo3.Text;
  end;
  ado_jbxx['sfhz']:=Trim(ComboBox5.Text);
  ado_jbxx['skwyhyj']:=Memo4.Text;
  xzxbc;//选择项保存
  ado_jbxx.Post;
  qkjm;//清空界面
  sxlb;
  if groupbox4.Enabled=true then
  edit1.SetFocus;
end;

procedure Tfrm_ywyc.Button6Click(Sender: TObject);
var
ls,qjks,clczy,jlid,tjks,tjczy,thyy:string;
begin
 dqks:=Trim(ado_jbxx.fieldbyname('ksdm').asstring);
 dqczy:=Trim(ado_jbxx.fieldbyname('clczy').asstring);
 ls := 'select top 1 * from blsj_ywyc_cljl where sjid=' + #39 + id + #39 + ' and (thbz<>1  or thbz is null) order by id desc';
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
 ls:='update blsj_ywyc_jbxx set ksdm='+#39+qjks+#39+',clczy='+#39+clczy+#39+',cljb='+#39+cljb+#39+' where id='+#39+id+#39;
 qry_temp.Close;
 qry_temp.SQL.Clear;
 qry_temp.SQL.Add(ls);
 qry_temp.ExecSQL;
 ls := 'update   blsj_ywyc_cljl set thbz=1,thrq=Getdate(),thry='+#39+pub_czydm+#39+',thyy='+#39+thyy+#39+' where id=' + #39 + jlid + #39;
 qry_temp.Close;
 qry_temp.SQL.Clear;
 qry_temp.SQL.Add(ls);
 qry_temp.ExecSQL;
 application.messagebox('报告退回上级科室成功！', '提示', mb_ok + mb_iconinformation);
 qkjm;
 sxlb;//刷新列表
 if groupbox4.Enabled=true then
 edit1.SetFocus;
 end;
end;

procedure Tfrm_ywyc.Button7Click(Sender: TObject);
begin
Self.Close;
end;

procedure Tfrm_ywyc.Button8Click(Sender: TObject);
begin
qkjm;
sxlb;
groupbox4.Enabled:=true;
edit1.SetFocus;
end;

procedure Tfrm_ywyc.Button9Click(Sender: TObject);
var
ls,ksrq,jsrq:string;
begin
ksrq:=FormatDateTime('yyyy-mm-dd',dtpksrq.Date);
jsrq:=FormatDateTime('yyyy-mm-dd',dtpjsrq.Date);
sp_sjcx.Close;
if gr.Checked=true then
begin
 sp_sjcx.parameters.ParamByName('@cxlx').value:='0';//0-按照个人查询 1-按照科室查询
 sp_sjcx.parameters.ParamByName('@sjlx').value:='6';
 sp_sjcx.parameters.ParamByName('@czy').value:=pub_czydm;
 sp_sjcx.parameters.ParamByName('@ksdm').value:=pub_ksdm;
 sp_sjcx.parameters.ParamByName('@ksrq').value:=ksrq;
 sp_sjcx.parameters.ParamByName('@jsrq').value:=jsrq;
 sp_sjcx.Open;
end
else
begin
 sp_sjcx.parameters.ParamByName('@cxlx').value:='1';//0-按照个人查询 1-按照科室查询
 sp_sjcx.parameters.ParamByName('@sjlx').value:='6';
 sp_sjcx.parameters.ParamByName('@czy').value:=pub_czydm;
 sp_sjcx.parameters.ParamByName('@ksdm').value:=pub_ksdm;
 sp_sjcx.parameters.ParamByName('@ksrq').value:=ksrq;
 sp_sjcx.parameters.ParamByName('@jsrq').value:=jsrq;
 sp_sjcx.Open;
end;
end;

procedure Tfrm_ywyc.ComboBox10KeyPress(Sender: TObject; var Key: Char);
begin
key := #0;
end;

procedure Tfrm_ywyc.ComboBox1Exit(Sender: TObject);
var
s:string;
begin
s:=Trim(ComboBox1.Text);
if (Length(s)>4) and (s[1] in ['0'..'9']) then
begin
 ado_jbxx['ycly']:=copy(s,1,2);
 ComboBox1.Text:=Copy(s,4,length(s)-2);
end;
end;

procedure Tfrm_ywyc.ComboBox1KeyPress(Sender: TObject; var Key: Char);
begin
key := #0;
end;

procedure Tfrm_ywyc.ComboBox2Exit(Sender: TObject);
var
s:string;
begin
if combobox2.Text='治愈' then
 begin
  application.CreateForm(Tfrm_tjbg, frm_tjbg);
  frm_tjbg.sjid:='T'+id;
  frm_tjbg.ShowModal;
  dtpzyrq.SetFocus;
 end;
end;

procedure Tfrm_ywyc.ComboBox2KeyPress(Sender: TObject; var Key: Char);
begin
key := #0;
end;

procedure Tfrm_ywyc.ComboBox3Change(Sender: TObject);
var s:string;
begin
s:=Trim(ComboBox3.Text);
if (Length(s)>4) and (s[1] in ['0'..'9']) then
begin
 qry_temp.close;
 qry_temp.SQL.Clear;
 qry_temp.SQL.Add('select * from blsj_ywyc_ycfq where dm=:dm');
 qry_temp.Parameters.ParamByName('dm').Value:=copy(s,1,2);
 qry_temp.Open;
 if qry_temp.RecordCount=1 then
 begin
 ycfqsm.Caption:='压疮分期说明 '+trim(qry_temp.FieldByName('fqsm').AsString);
 try
 Application.CreateForm(Tfrm_blsj_checkerror, frm_blsj_checkerror);
 frm_blsj_checkerror.Memo1.Text:=trim(qry_temp.FieldByName('zxfqsm').AsString);
 frm_blsj_checkerror.BitBtn5.Visible:=false;
 frm_blsj_checkerror.Memo1.Font.Size:=11;
 frm_blsj_checkerror.Caption:=Copy(s,4,20)+'压疮的临床表现' ;
 frm_blsj_checkerror.ShowModal;
 finally
 frm_blsj_checkerror.Free;
 end;
 end;
end;
end;

procedure Tfrm_ywyc.ComboBox3Exit(Sender: TObject);
var
s:string;
begin
s:=Trim(ComboBox3.Text);
if (Length(s)>4) and (s[1] in ['0'..'9']) then
begin
 ado_jbxx['ycfq']:=copy(s,1,2);
 ComboBox3.Text:=Copy(s,4,length(s)-2);
end;
if (Trim(ComboBox3.Text)<>'一期') and (Trim(ComboBox3.Text)<>'') then
begin
  ComboBox5.Visible:=True;
  label37.Visible:=True;
end
else
begin
  ComboBox5.Visible:=false;
  label37.Visible:=false;
end;
end;

procedure Tfrm_ywyc.ComboBox3KeyPress(Sender: TObject; var Key: Char);
begin
key := #0 ;
end;

procedure Tfrm_ywyc.ComboBox4Exit(Sender: TObject);
var
s:string;
begin
s:=Trim(ComboBox4.Text);
if (Length(s)>4) and (s[1] in ['0'..'9']) then
begin
 ado_jbxx['ycbw']:=copy(s,1,2);
 ComboBox4.Text:=Copy(s,4,length(s)-2);
end;
end;

procedure Tfrm_ywyc.ComboBox4KeyPress(Sender: TObject; var Key: Char);
begin
key := #0;
end;

procedure Tfrm_ywyc.ComboBox6Exit(Sender: TObject);
begin
  if Trim(combobox6.Text)='治愈' then
 begin
  application.CreateForm(Tfrm_tjbg, frm_tjbg);
  frm_tjbg.sjid:='T'+id;
  frm_tjbg.ShowModal;
  dtpzyrq.SetFocus;
 end;
end;

procedure Tfrm_ywyc.ComboBox7KeyPress(Sender: TObject; var Key: Char);
begin
if Key=#13 then
Memo1.SetFocus;
end;

procedure Tfrm_ywyc.ComboBox9Exit(Sender: TObject);
var
s,s1,ls:string;
begin
kj1:=Sender;
s:=uppercase(trim((kj1 as TComboBox).text));
if (Length(s)<=6) and (Length(s)>0) and  ((s[1] in ['0'..'9']) or (s[1] in ['A'..'z'])) then
begin
 ls:='select dm,mc from sys_ksdm where dm='+#39+s+#39+' and  kssx=09' +' union select dm,mc from sys_ksdm where Upper(pym) like'+#39+'%'+s+'%'+#39+' and  kssx=09';
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

procedure Tfrm_ywyc.cxGrid1DBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
var
sfwc,sfck,jsksqrbz:string;
begin
pc1.ActivePage:=TabSheet1;
qkjm;
id:=trim(sp_sjcx.FieldByName('id').AsString);
ado_jbxx.Close;
ado_jbxx.CommandText:='select * from blsj_ywyc_jbxx where id='+#39+id+#39+' order by id';
ado_jbxx.Open;
dqks:=trim(ado_jbxx.FieldByName('ksdm').AsString);
sfwc:=trim(ado_jbxx.FieldByName('sfwc').AsString);
cljb:=trim(ado_jbxx.fieldbyname('cljb').asstring);
dqczy:=trim(ado_jbxx.fieldbyname('clczy').asstring);
sfck:=trim(ado_jbxx.fieldbyname('sfck').asstring);
jsksqrbz:=trim(ado_jbxx.fieldbyname('jsksqrbz').asstring);
cljbqxkz(cljb,sfwc,sfck,jsksqrbz);
sjcs;
edit1.Text:=trim(ado_jbxx.FieldByName('tmh').AsString);
if (sfwc = '1') or ((dqczy = '') and (dqks <> pub_ksdm)) or ((dqczy <> '') and (dqczy <> pub_czydm)) then
begin
GroupBox4.Enabled:=false;
GroupBox5.Enabled:=false;
GroupBox6.Enabled:=false;
GroupBox1.Enabled:=false;
GroupBox3.Enabled:=false;
end;
if groupbox4.Enabled=true then
editxm.SetFocus;
end;

procedure Tfrm_ywyc.cxGrid1DBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
    if sp_sjcx.FieldByName('cyjs').AsBoolean then
    //vStr:=AViewInfo.RecordViewInfo.GridRecord.Values[11];
    ACanvas.Font.Color := clred;
end;

procedure Tfrm_ywyc.DBEdit1Exit(Sender: TObject);
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
     DBGrid1.top:=(kj1 as Tdbedit).top+(kj1 as Tdbedit).Height+1;
     if (kj1=dbedit3) or (kj1=dbedit10) then
     DBGrid1.top:=(kj1 as Tdbedit).top+150;
     if (kj1=dbedit11) or (kj1=dbedit12) or (kj1=dbedit13)  then
     DBGrid1.top:=(kj1 as Tdbedit).top+groupbox3.Top-150;
     DBGrid1.Visible:=true;
     DBGrid1.SetFocus;
   end
   else
   begin
  if kj1=DBEdit7 then
   begin
   ado_jbxx['sbrqm']:=Trim(qry_temp.fieldbyname('mc').asstring);
   memo3.SetFocus;
   end
   else if kj1=DBEdit3 then
   ado_jbxx['hszqm']:=Trim(qry_temp.fieldbyname('mc').asstring)
   else if kj1=DBEdit10 then
   ado_jbxx['fhzqm']:=Trim(qry_temp.fieldbyname('mc').asstring)
   else if kj1=DBEdit11 then
   ado_jbxx['cyxxhsqm']:=Trim(qry_temp.fieldbyname('mc').asstring)
   else if kj1=DBEdit12 then
   ado_jbxx['hszfhqm']:=Trim(qry_temp.fieldbyname('mc').asstring)
   else if kj1=DBEdit13 then
   ado_jbxx['jsksfhqm']:=Trim(qry_temp.fieldbyname('mc').asstring)
   end;
  end
  else if s1[1]<#127 then
  begin
    Application.MessageBox('请输入人员代码或拼音简码', '错误提示', 16);
   (kj1 as TDBEdit).SetFocus;
  end;
 end;
end;


procedure Tfrm_ywyc.DBEdit3DblClick(Sender: TObject);
begin
 qry_temp.Close;
 qry_temp.SQL.Clear;
 qry_temp.sql.Add('select  * from blsj_ywyc_cljl where sjid=' + #39 + id + #39 +' and cljb='+#39+inttostr(strtoint(cljb)+1)+#39+ ' and thbz=1 order by thrq desc');
 qry_temp.Open;
if (qry_temp.RecordCount>0) and (cljb='2') then
begin
 application.CreateForm(Tfrm_blsj_gwyspf, frm_blsj_gwyspf);
  try
   frm_blsj_gwyspf.sjcljb:=inttostr(strtoint(cljb)+1);
   frm_blsj_gwyspf.sjclid:=id;
   frm_blsj_gwyspf.pflb:='ywychtyy';
   frm_blsj_gwyspf.ShowModal;
  finally
    frm_blsj_gwyspf.free;
  end;
end
else
 Application.MessageBox('无回退记录!', '错误提示', 16);
end;

procedure Tfrm_ywyc.DBEdit6DblClick(Sender: TObject);
begin
 {if frm_blsj_jbcx=nil then
 Application.CreateForm(Tfrm_blsj_jbcx, frm_blsj_jbcx);
 frm_blsj_jbcx.sjlx:='F';
 frm_blsj_jbcx.ysdm:=pub_czydm;
 frm_blsj_jbcx.ShowModal; }
end;

procedure Tfrm_ywyc.DBEdit7DblClick(Sender: TObject);
begin
 qry_temp.Close;
 qry_temp.SQL.Clear;
 qry_temp.sql.Add('select  * from blsj_ywyc_cljl where sjid=' + #39 + id + #39 +' and cljb='+#39+inttostr(strtoint(cljb)+1)+#39+ ' and thbz=1 order by thrq desc');
 qry_temp.Open;
if (qry_temp.RecordCount>0) and (cljb='1') then
begin
 application.CreateForm(Tfrm_blsj_gwyspf, frm_blsj_gwyspf);
  try
   frm_blsj_gwyspf.sjcljb:=inttostr(strtoint(cljb)+1);
   frm_blsj_gwyspf.sjclid:=id;
   frm_blsj_gwyspf.pflb:='ywychtyy';
   frm_blsj_gwyspf.ShowModal;
  finally
    frm_blsj_gwyspf.free;
  end;
end
else
 Application.MessageBox('无回退记录!', '错误提示', 16);
end;

procedure Tfrm_ywyc.DBGrid1DblClick(Sender: TObject);
begin
  if kj1=DBEdit7 then
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
  DBEdit10.Text:=trim(qry_xz.FieldByName('mc').AsString);
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
  end
   else  if kj1=DBEdit12 then
  begin
   ado_jbxx['hszfhqm']:=Trim(qry_temp.fieldbyname('mc').asstring);
   DBEdit12.Text:=trim(qry_xz.FieldByName('mc').AsString);
  end
  else  if kj1=DBEdit13 then
  begin
   ado_jbxx['jsksfhqm']:=Trim(qry_temp.fieldbyname('mc').asstring);
   DBEdit13.Text:=trim(qry_xz.FieldByName('mc').AsString);
  end;
  dbgrid1.Visible:=false;
end;

procedure Tfrm_ywyc.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
 if key=#13 then
 begin
  if kj1=DBEdit7 then
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
  DBEdit10.Text:=trim(qry_xz.FieldByName('mc').AsString);
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
  end
   else  if kj1=DBEdit12 then
  begin
   ado_jbxx['hszfhqm']:=Trim(qry_temp.fieldbyname('mc').asstring);
   DBEdit12.Text:=trim(qry_xz.FieldByName('mc').AsString);
  end
  else  if kj1=DBEdit13 then
  begin
   ado_jbxx['jsksfhqm']:=Trim(qry_temp.fieldbyname('mc').asstring);
   DBEdit13.Text:=trim(qry_xz.FieldByName('mc').AsString);
  end;
  dbgrid1.Visible:=false;
 end
 else if key=#27 then
 begin
  dbgrid1.Visible:=false;
 end;
end;

procedure Tfrm_ywyc.DBGrid3CellClick(Column: TColumn);
var
sfwc,sfck,jsksqrbz:string;
begin
  qkjm;
  xzbz:='2';
  id:=trim(qry_lb.FieldByName('id').AsString);
 if qry_lb.IsEmpty then
  begin
    Exit;
  end;
  ado_jbxx.Close;
  ado_jbxx.CommandText:='select * from blsj_ywyc_jbxx where id='+#39+id+#39+' order by id';
  ado_jbxx.Open;
  dqks:=trim(ado_jbxx.FieldByName('ksdm').AsString);
  sfwc:=trim(ado_jbxx.FieldByName('sfwc').AsString);
  cljb:=trim(ado_jbxx.fieldbyname('cljb').asstring);
  dqczy:=trim(ado_jbxx.fieldbyname('clczy').asstring);
  sfck:=trim(ado_jbxx.FieldByName('sfck').AsString);
  jsksqrbz:=trim(ado_jbxx.FieldByName('jsksqrbz').AsString);
  cljbqxkz(cljb,sfwc,sfck,jsksqrbz);
  sjcs;
  edit1.Text:=trim(ado_jbxx.FieldByName('tmh').AsString);
  qry_temp.Close;
  qry_temp.SQL.Clear;
  qry_temp.sql.Add('select  * from blsj_ywyc_cljl where sjid=' + #39 + id + #39 +' and cljb='+#39+inttostr(strtoint(cljb)+1)+#39+ ' and thbz=1 order by thrq desc');
  qry_temp.Open;
  if (qry_temp.RecordCount>0)  then
  begin
   application.CreateForm(Tfrm_blsj_gwyspf, frm_blsj_gwyspf);
    try
     frm_blsj_gwyspf.sjcljb:=inttostr(strtoint(cljb)+1);
     frm_blsj_gwyspf.sjclid:=id;
     frm_blsj_gwyspf.pflb:='ywychtyy';
     frm_blsj_gwyspf.ShowModal;
    finally
      frm_blsj_gwyspf.free;
    end;
  end
//if groupbox4.Enabled=true then
//editxm.SetFocus;
end;

procedure Tfrm_ywyc.DBGrid3DblClick(Sender: TObject);
var
sfwc,sfck,jsksqrbz:string;
begin
{qkjm;
xzbz:='2';
id:=trim(qry_lb.FieldByName('id').AsString);
ado_jbxx.Close;
ado_jbxx.CommandText:='select * from blsj_ywyc_jbxx where id='+#39+id+#39+' order by id';
ado_jbxx.Open;
dqks:=trim(ado_jbxx.FieldByName('ksdm').AsString);
sfwc:=trim(ado_jbxx.FieldByName('sfwc').AsString);
cljb:=trim(ado_jbxx.fieldbyname('cljb').asstring);
dqczy:=trim(ado_jbxx.fieldbyname('clczy').asstring);
sfck:=trim(ado_jbxx.FieldByName('sfck').AsString);
jsksqrbz:=trim(ado_jbxx.FieldByName('jsksqrbz').AsString);
cljbqxkz(cljb,sfwc,sfck,jsksqrbz);
sjcs;
edit1.Text:=trim(ado_jbxx.FieldByName('tmh').AsString);
//if groupbox4.Enabled=true then
//editxm.SetFocus; }
end;

procedure Tfrm_ywyc.DBGrid3DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if qry_lb.fieldbyname('sfcy').asstring='1' then
  begin
    dbgrid3.Canvas.Brush.Color:=RGB(207, 80, 65);
    dbgrid3.Canvas.Font.color:=clblack;
  end;
  dbgrid3.DefaultDrawColumnCell(rect,datacol,column,state);
end;

procedure Tfrm_ywyc.DBGrid4DblClick(Sender: TObject);
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
 ls:='insert into blsj_ywyc_jbxx(tmh,brxm,brxb,brnl,sbks,sbr,clczy,ksdm,cljb,sfwc,ryrq,sbrq,brch,zyh,brks) select '+#39+bybh+#39+','+#39+brxm+#39+','+#39+brxb+#39+','+#39+brnl+#39+','+#39+pub_ksdm+#39+','+#39+pub_czyxm+#39+','+#39+pub_czydm+#39+','+#39+pub_ksdm+#39+','+#39+'1'+#39+','+#39+'0'+#39+','+#39+ryrq+#39+' ,GETDATE()'+','+#39+brch+#39+','+#39+zyh+#39+','+#39+brks+#39;
 qry_insert.Close;
 qry_insert.SQL.Clear;
 qry_insert.SQL.Add(ls);
 qry_insert.ExecSQL;
 ado_jbxx.Close;
 ado_jbxx.CommandText:='select  top 1 * from blsj_ywyc_jbxx where tmh='+#39+bybh+#39+' order by id desc';
 ado_jbxx.Open;
 ado_jbxx.Edit;
 sjcs;
 ls:='select * from blsj_ywyc_jbxx where  (sfwc<>1 and clczy='+#39+pub_czydm+#39+') or (ksdm='+#39+pub_ksdm+#39+' and sfwc<>1 and clczy='+#39+#39+')';
 qry_lb.Close;
 qry_lb.SQL.Clear;
 qry_lb.SQL.Add(ls);
 qry_lb.Open;
 xzbz:='2';
 DBGrid4.Visible:=False;
 Editxm.SetFocus;
end;

procedure Tfrm_ywyc.DBGrid4KeyPress(Sender: TObject; var Key: Char);
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
 ls:='insert into blsj_ywyc_jbxx(tmh,brxm,brxb,brnl,sbks,sbr,clczy,ksdm,cljb,sfwc,ryrq,sbrq,brch,zyh,brks) select '+#39+bybh+#39+','+#39+brxm+#39+','+#39+brxb+#39+','+#39+brnl+#39+','+#39+pub_ksdm+#39+','+#39+pub_czyxm+#39+','+#39+pub_czydm+#39+','+#39+pub_ksdm+#39+','+#39+'1'+#39+','+#39+'0'+#39+','+#39+ryrq+#39+' ,GETDATE()'+','+#39+brch+#39+','+#39+zyh+#39+','+#39+brks+#39;
 qry_insert.Close;
 qry_insert.SQL.Clear;
 qry_insert.SQL.Add(ls);
 qry_insert.ExecSQL;
 ado_jbxx.Close;
 ado_jbxx.CommandText:='select  top 1 * from blsj_ywyc_jbxx where tmh='+#39+bybh+#39+' order by id desc';
 ado_jbxx.Open;
 ado_jbxx.Edit;
 sjcs;
 sxlb;
 xzbz:='2';
 DBGrid4.Visible:=False;
 Editxm.SetFocus;
 end
else if Key=#27 then
dbgrid4.Visible:=False;
end;

procedure Tfrm_ywyc.DBGrid5DblClick(Sender: TObject);
var
sfwc,sfck,jsksqrbz:string;
begin
pc1.ActivePage:=TabSheet1;
qkjm;
id:=trim(sp_sjcx.FieldByName('id').AsString);
ado_jbxx.Close;
ado_jbxx.CommandText:='select * from blsj_ywyc_jbxx where id='+#39+id+#39+' order by id';
ado_jbxx.Open;
dqks:=trim(ado_jbxx.FieldByName('ksdm').AsString);
sfwc:=trim(ado_jbxx.FieldByName('sfwc').AsString);
cljb:=trim(ado_jbxx.fieldbyname('cljb').asstring);
dqczy:=trim(ado_jbxx.fieldbyname('clczy').asstring);
sfck:=trim(ado_jbxx.fieldbyname('sfck').asstring);
jsksqrbz:=trim(ado_jbxx.fieldbyname('jsksqrbz').asstring);
cljbqxkz(cljb,sfwc,sfck,jsksqrbz);
sjcs;
edit1.Text:=trim(ado_jbxx.FieldByName('tmh').AsString);
if groupbox4.Enabled=true then
editxm.SetFocus;
end;


procedure Tfrm_ywyc.dtpckrqEnter(Sender: TObject);
begin
   gbbz:=GroupBox4.Enabled;
   GroupBox4.Enabled:=True;
end;

procedure Tfrm_ywyc.dtpckrqExit(Sender: TObject);
begin
  GroupBox4.Enabled:=gbbz;
end;

procedure Tfrm_ywyc.edit1KeyPress(Sender: TObject; var Key: Char);
var
tmh,ls,bybh,brxm,brxb,brnl,sfwc,ryrq,brch,zyh,brks,ryzd:string;
begin
if Key=#13 then
 begin
 tmh:=Trim(edit1.Text);
 if tmh<>'' then
 begin
  ls := 'select * from blsj_ywyc_jbxx where tmh=' + #39 + tmh + #39 + ' or brxm=' + #39 + tmh + #39;
  ls :=ls+' union   select a.* from blsj_ywyc_jbxx a,zysf_zydj b where b.bqdm='+pub_bqdm+'  and rtrim(ltrim(a.tmh))=rtrim(ltrim(b.tmh))  and a.brch='+#39+tmh+#39 +' and a.sbks='+#39+pub_ksdm+#39;
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
        ryzd:=trim(sp_cx.FieldByName('ryzd').AsString);
        ls:='insert into blsj_ywyc_jbxx(tmh,brxm,brxb,brnl,sbks,sbr,clczy,ksdm,cljb,sfwc,ryrq,sbrq,brch,zyh,brks,ryzd) select '+#39+bybh+#39+','+#39+brxm+#39+','+#39+brxb+#39+','+#39+brnl+#39+','+#39+pub_ksdm+#39+','+#39+pub_czyxm+#39+','+#39+pub_czydm+#39+','+#39+pub_ksdm+#39+','+#39+'1'+#39+','+#39+'0'+#39+','+#39+ryrq+#39+' ,GETDATE()'+','+#39+brch+#39+','+#39+zyh+#39+','+#39+brks+#39+','+#39+ryzd+#39;
        qry_insert.Close;
        qry_insert.SQL.Clear;
        qry_insert.SQL.Add(ls);
        qry_insert.ExecSQL;
        ado_jbxx.Close;
        ado_jbxx.CommandText:='select  top 1 * from blsj_ywyc_jbxx where tmh='+#39+bybh+#39+' order by id desc';
        ado_jbxx.Open;
        ado_jbxx.Edit;
        sjcs;
        ls:='select * from blsj_ywyc_jbxx where  (sfwc<>1 and clczy='+#39+pub_czydm+#39+') or (ksdm='+#39+pub_ksdm+#39+' and sfwc<>1 and clczy='+#39+#39+')';
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
     ryzd:=trim(sp_cx.FieldByName('ryzd').AsString);
     ls:='insert into blsj_ywyc_jbxx(tmh,brxm,brxb,brnl,sbks,sbr,clczy,ksdm,cljb,sfwc,ryrq,sbrq,brch,zyh,brks,ryzd) select '+#39+bybh+#39+','+#39+brxm+#39+','+#39+brxb+#39+','+#39+brnl+#39+','+#39+pub_ksdm+#39+','+#39+pub_czyxm+#39+','+#39+pub_czydm+#39+','+#39+pub_ksdm+#39+','+#39+'1'+#39+','+#39+'0'+#39+','+#39+ryrq+#39+' ,GETDATE()'+','+#39+brch+#39+','+#39+zyh+#39+','+#39+brks+#39+','+#39+ryzd+#39;
     qry_insert.Close;
     qry_insert.SQL.Clear;
     qry_insert.SQL.Add(ls);
     qry_insert.ExecSQL;
     ado_jbxx.Close;
     ado_jbxx.CommandText:='select * from blsj_ywyc_jbxx where tmh='+#39+bybh+#39+' order by id desc';
     ado_jbxx.Open;
     ado_jbxx.Edit;
     sjcs;
     ls:='select * from blsj_ywyc_jbxx where  (sfwc<>1 and clczy='+#39+pub_czydm+#39+') or (ksdm='+#39+pub_ksdm+#39+' and sfwc<>1 and clczy='+#39+#39+')';
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

procedure Tfrm_ywyc.FormActivate(Sender: TObject);
begin
edit1.SetFocus
end;

procedure Tfrm_ywyc.FormCreate(Sender: TObject);
var
ls:string;
x,y:Integer;
begin
Add_xsz('sys_ksdm','dm',ComboBox8);
Add_xsz('sys_ksdm','dm',ComboBox9);
Add_xsz('blsj_ywyc_ycfq','dm',ComboBox3);
Add_xsz('blsj_ywyc_ycbw','dm',ComboBox4);
Add_xsz('blsj_ywyc_ycly','dm',ComboBox1);
pc1.ActivePage:=TabSheet1;
x:=Screen.Height;
y:=Screen.Width;
if (x<900) and (y<1300) then
self.windowstate:=wsMaximized;
sxlb;//刷新列表
if frm_blsj_checkerror = nil then
Application.CreateForm(Tfrm_blsj_checkerror, frm_blsj_checkerror);
end;

procedure Tfrm_ywyc.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if (key=#13) and (Memo1.Focused=False)  then
 SelectNext(activeControl,true,true);
end;

procedure Tfrm_ywyc.FormShow(Sender: TObject);
begin
dtpksrq.Date:=Now;
dtpjsrq.Date:=Now;
dtptjs.Date:=Now;
dtptje.Date:=Now;
edit1.SetFocus
end;

procedure Tfrm_ywyc.Add_xsz(bmc,cxz:string;Cbox:TComboBox);
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
 function Tfrm_ywyc.get_xsz(bmc,cxz:string):string;
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
 function Tfrm_ywyc.ljjc;
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
  if Trim(DBEdit9.Text)='' then
  begin
   iii:=iii+1;
   frm_blsj_checkerror.Memo1.Lines.Add(trim(inttostr(iii))+'：病人床号不能为空');
  end;
   if trim(memo1.Text)='' then
   begin
    iii:=iii+1;
    frm_blsj_checkerror.Memo1.Lines.Add(trim(inttostr(iii))+'：病史及主诉不能为空');
   end;
   if trim(memo2.Text)='' then
   begin
    iii:=iii+1;
    frm_blsj_checkerror.Memo1.Lines.Add(trim(inttostr(iii))+'：压疮状况不能为空');
   end;
   if trim(memo3.Text)='' then
   begin
    iii:=iii+1;
    frm_blsj_checkerror.Memo1.Lines.Add(trim(inttostr(iii))+'：目前护理措施不能为空');
   end;
  if FormatDateTime('yyyy-mm-dd ',dtpfsrq.Date)<'2000-00-00' then
  begin
   iii:=iii+1;
   frm_blsj_checkerror.Memo1.Lines.Add(trim(inttostr(iii))+'：发生日期填写错误');
  end;
   if (FormatDateTime('yyyy-mm-dd ',dtpsbrq.Date)<'2000-00-00') or (FormatDateTime('yyyy-mm-dd ',dtpsbrq.Date)<FormatDateTime('yyyy-mm-dd ',dtpfsrq.Date)) then
  begin
   iii:=iii+1;
   frm_blsj_checkerror.Memo1.Lines.Add(trim(inttostr(iii))+'：上报日期填写错误，或大于发生日期');
  end;
  if cljb='1' then
  begin
  if (ComboBox5.Visible) and (trim(combobox5.Text)='') then
   begin
    iii:=iii+1;
    frm_blsj_checkerror.Memo1.Lines.Add(trim(inttostr(iii))+'：是否会诊不能为空');
   end;
  if dbedit7.Text='' then
   begin
    iii:=iii+1;
    frm_blsj_checkerror.Memo1.Lines.Add(trim(inttostr(iii))+'：申请人签名不能为空');
   end;
   if trim(combobox3.Text)='' then
   begin
    iii:=iii+1;
    frm_blsj_checkerror.Memo1.Lines.Add(trim(inttostr(iii))+'：压疮分期不能为空');
   end;
   if trim(combobox4.Text)='' then
   begin
    iii:=iii+1;
    frm_blsj_checkerror.Memo1.Lines.Add(trim(inttostr(iii))+'：压疮部位不能为空');
   end;
    if trim(combobox1.Text)='' then
   begin
    iii:=iii+1;
    frm_blsj_checkerror.Memo1.Lines.Add(trim(inttostr(iii))+'：压疮来源不能为空');
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
    frm_blsj_checkerror.Memo1.Lines.Add(trim(inttostr(iii))+'：复核者签名日期不对');
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
 procedure Tfrm_ywyc.Memo1DblClick(Sender: TObject);
 begin
 str_mbct:='';
 if (cljb='1') or (cljb='') then
 begin
 application.CreateForm(Tfrm_blsj_bqgcyy, frm_blsj_bqgcyy);
  try
    frm_blsj_bqgcyy.sjlb:='院外压疮';
    frm_blsj_bqgcyy.ShowModal;
    if str_mbct<>''then
    memo1.Lines.Add(str_mbct);
  finally
    frm_blsj_bqgcyy.free;
   end;
   end;
 end;

procedure Tfrm_ywyc.Memo2DblClick(Sender: TObject);
begin
 str_mbct:='';
 if  (cljb='1') or (cljb='')  then
 begin
 application.CreateForm(Tfrm_blsj_bqgcyy, frm_blsj_bqgcyy);
  try
    frm_blsj_bqgcyy.sjlb:='院外压疮';
    frm_blsj_bqgcyy.ShowModal;
    if str_mbct<>''then
    memo2.Lines.Add(str_mbct);
  finally
    frm_blsj_bqgcyy.free;
   end;
   end;
end;

procedure Tfrm_ywyc.Memo3DblClick(Sender: TObject);
begin
 str_mbct:='';
 if (cljb='1') or (cljb='') or (cljb='2') then
 begin
 application.CreateForm(Tfrm_blsj_bqgcyy, frm_blsj_bqgcyy);
  try
    frm_blsj_bqgcyy.sjlb:='院外压疮';
    frm_blsj_bqgcyy.ShowModal;
    if str_mbct<>''then
    memo3.Lines.Add(str_mbct);
  finally
    frm_blsj_bqgcyy.free;
   end;
   end;
end;

procedure Tfrm_ywyc.MenuItem1Click(Sender: TObject);
var
ls,qjks,clczy,jlid,tjks,tjczy,thyy:string;
begin
 dqks:=Trim(ado_jbxx.fieldbyname('ksdm').asstring);
 dqczy:=Trim(ado_jbxx.fieldbyname('clczy').asstring);
 ls := 'select top 1 * from blsj_ywyc_cljl where sjid=' + #39 + id + #39 + ' and (thbz<>1  or thbz is null) order by id desc';
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
 ls:='update blsj_ywyc_jbxx set ksdm='+#39+qjks+#39+',clczy='+#39+clczy+#39+',cljb='+#39+cljb+#39+' where id='+#39+id+#39;
 qry_temp.Close;
 qry_temp.SQL.Clear;
 qry_temp.SQL.Add(ls);
 qry_temp.ExecSQL;
 ls := 'update   blsj_ywyc_cljl set thbz=1,thrq=Getdate(),thry='+#39+pub_czydm+#39+',thyy='+#39+thyy+#39+' where id=' + #39 + jlid + #39;
 qry_temp.Close;
 qry_temp.SQL.Clear;
 qry_temp.SQL.Add(ls);
 qry_temp.ExecSQL;
 application.messagebox('报告退回上级科室成功！', '提示', mb_ok + mb_iconinformation);
 //qkjm;
 sxlb;//刷新列表
 end;
end;

procedure Tfrm_ywyc.N1Click(Sender: TObject);
 var
 ls,cklb,zkks,yczkqk,cyxxhsqm,sid,ckrq:string;
begin
 if trim(edit1.Text)='' then
 begin
 cklb:=trim(qry_lb.FieldByName('ckqk').AsString);
 zkks:=trim(qry_lb.FieldByName('zkks').AsString);
 yczkqk:=trim(qry_lb.FieldByName('yczkqk').AsString);
 cyxxhsqm:=trim(qry_lb.FieldByName('cyxxhsqm').AsString);
 ckrq:=copy(trim(qry_lb.FieldByName('ckrq').AsString),1,4);
 end
 else
 begin
 cklb:=trim(combobox10.Text);
 zkks:=trim(ado_jbxx.FieldByName('zkks').AsString);
 yczkqk:=trim(combobox2.Text);
 cyxxhsqm:=trim(dbedit11.Text);
 ckrq:=FormatDateTime('yyyy',dtpckrq.Date);
 end;
  if (trim(combobox8.Text)<>'') and ( cklb<>'转科') then
 begin
   application.MessageBox(pchar('有转科科室则出科类别应为转科,请检查!'),'注意',16);
   abort;
 end;
 if  (yczkqk<>'治愈') and ((combobox8.Text='') and  (cklb='转科')) then
 begin
   application.MessageBox(pchar('压疮未治愈时转科应填转科科室,请检查!'),'注意',16);
   abort;
 end;
 if ((cklb<>'转科') and (yczkqk<>'') and (cyxxhsqm<>'') and (ckrq>'2000'))
 or ((cklb='转科') and (yczkqk<>'') and (yczkqk<>'治愈') and (cyxxhsqm<>'') and (trim(combobox8.Text)<>'') and (ckrq>'2000'))
 or ((cklb='转科') and (yczkqk<>'') and (yczkqk='治愈') and (cyxxhsqm<>'')  and (ckrq>'2000')) then
 begin
 sid:=trim(qry_lb.FieldByName('id').AsString);
 if trim(edit1.Text)<>'' then
 button5.Click;
 ls:='update blsj_ywyc_jbxx set sfck=1 where id ='+#39+sid+#39;
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
  if cklb='' then
  begin
   iii:=iii+1;
   frm_blsj_checkerror.Memo1.Lines.Add(trim(inttostr(iii))+'：出科类别未选择');
  end;
  if yczkqk='' then
  begin
   iii:=iii+1;
   frm_blsj_checkerror.Memo1.Lines.Add(trim(inttostr(iii))+'：压疮转归情况未选择');
  end;
  if cyxxhsqm='' then
  begin
   iii:=iii+1;
   frm_blsj_checkerror.Memo1.Lines.Add(trim(inttostr(iii))+'：出科信息护士签名不能未空');
  end;
  if ckrq<'2014' then
   begin
   iii:=iii+1;
   frm_blsj_checkerror.Memo1.Lines.Add(trim(inttostr(iii))+'：出科日期填写错误');
  end;
  if iii>0 then
  begin
   if frm_blsj_checkerror=nil then
   Application.CreateForm(Tfrm_blsj_checkerror, frm_blsj_checkerror);
   frm_blsj_checkerror.ShowModal;
  end
 end;
end;

procedure Tfrm_ywyc.N2Click(Sender: TObject);
var
ls,jsksfhqm,sfck,sid,jsqmrq:string;
begin
 jsksfhqm:=trim(qry_lb.FieldByName('jsksfhqm').AsString);
 sfck:=trim(qry_lb.FieldByName('sfck').AsString);
 jsqmrq:=copy(trim(qry_lb.FieldByName('jsksqmrq').AsString),1,4);
 if sfck='1' then
 begin
 if (jsksfhqm<>'')  and (jsqmrq>'2000')  then
  begin
   sid:=trim(qry_lb.FieldByName('id').AsString);
   if trim(edit1.Text)<>'' then
   button5.Click;
   ls:='update blsj_ywyc_jbxx set jsksqrbz=1 where id ='+#39+sid+#39;
   qry_temp.Close;
   qry_temp.SQL.Clear;
   qry_temp.SQL.Add(ls);
   qry_temp.ExecSQL;
   qkjm;
   sxlb;
  end
 else
  application.MessageBox(pchar('接收科室复核签名或日期填写错误,请检查!'),'注意',16);
end
else
 application.MessageBox(pchar('转出科室未确认病人出科,请检查!'),'注意',16);
end;

procedure Tfrm_ywyc.sjcs;//查询信息时实际传送值
 var fsrq,dhtzrq,s:string;
 begin
 if ado_jbxxtmh.asstring<>'' then
 edit1.Text:=Trim(ado_jbxx.fieldbyname('tmh').asstring);
 if ado_jbxxbsjzs.asstring<>'' then
 Memo1.Text:=ado_jbxx.fieldbyname('bsjzs').asstring;
 if ado_jbxxyczk.asstring<>'' then
 Memo2.Text:=ado_jbxx.fieldbyname('yczk').asstring;
 if ado_jbxxskwyhyj.asstring<>'' then
 Memo4.Text:=ado_jbxx.fieldbyname('skwyhyj').asstring;
 if ado_jbxxmqhlcs.asstring<>'' then
 Memo3.Text:=ado_jbxx.fieldbyname('mqhlcs').asstring;
 if ado_jbxxsbks.asstring>'0' then
 ComboBox9.Text:=get_xsz('sys_ksdm',trim(ado_jbxx.fieldbyname('sbks').asstring));
 if ado_jbxxzkks.asstring>'0' then
 ComboBox8.Text:=get_xsz('sys_ksdm',trim(ado_jbxx.fieldbyname('zkks').asstring));
 if ado_jbxxycfq.asstring>'0' then
 ComboBox3.Text:=get_xsz('blsj_ywyc_ycfq',trim(ado_jbxx.fieldbyname('ycfq').asstring));
 if (Trim(ComboBox3.Text)<>'') and (Trim(ComboBox3.Text)<>'一期') then
 begin
     ComboBox5.Text:=Trim(ado_jbxx.fieldbyname('sfhz').asstring);
     ComboBox5.Visible:=True;
     Label37.Visible:=True;
 end
 else
 begin
    ComboBox5.Visible:=false;
    Label37.Visible:=false;
 end;
 if ado_jbxxycbw.asstring>'0' then
 ComboBox4.Text:=get_xsz('blsj_ywyc_ycbw',trim(ado_jbxx.fieldbyname('ycbw').asstring));
 if ado_jbxxycly.asstring>'0' then
 ComboBox1.Text:=get_xsz('blsj_ywyc_ycly',trim(ado_jbxx.fieldbyname('ycly').asstring));
 if ado_jbxxyczkqk.asstring>'0' then
 ComboBox2.Text:=trim(ado_jbxx.fieldbyname('yczkqk').asstring);
  if ado_jbxxckqk.asstring>'0' then
 ComboBox10.Text:=trim(ado_jbxx.fieldbyname('ckqk').asstring);
 if ado_jbxxtmh.asstring<>'' then
 edit1.Text:=Trim(ado_jbxx.fieldbyname('tmh').asstring);
 if ado_jbxxryzd.asstring>'0' then
 jbmc.Caption:=get_xsz('icd10',trim(ado_jbxx.fieldbyname('ryzd').asstring));
 end;
procedure Tfrm_ywyc.sp_sjcxCalcFields(DataSet: TDataSet);
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

  s:=Trim(sp_sjcx.fieldbyname('sbrq').asstring); //上报日期
 s:=Copy(s,1,10);
 sp_sjcx['sbrqcal']:=s;

 s:=Trim(sp_sjcx.fieldbyname('ycfq').asstring);//压疮分期
 s:=get_xsz('blsj_ywyc_ycfq',s);
 sp_sjcx['ycfqmc']:=s;

 s:=Trim(sp_sjcx.fieldbyname('ycbw').asstring); //压疮部位
 s:=get_xsz('blsj_ywyc_ycbw',s);
 sp_sjcx['ycbwmc']:=s;
end;

procedure Tfrm_ywyc.xzxbc;
begin
ado_jbxx['yczkqk']:=trim(combobox2.Text);
ado_jbxx['ckqk']:=trim(combobox10.Text);
ado_jbxx['jsksckqk']:=trim(combobox6.Text);
if trim(combobox8.Text)='' then
ado_jbxx['zkks']:='';
if trim(combobox2.Text)<>'治愈' then
ado_jbxx['zyschsz']:='';
if trim(dbedit12.Text)<>'' then
ado_jbxx['zyscbz']:='1'
else
ado_jbxx['zyscbz']:='0';
end;
 procedure Tfrm_ywyc.qkjm;
var
i:Integer;
begin
 ado_jbxx.Close;
 Memo1.Clear;
 Memo2.Clear;
 Memo3.Clear;
 edit1.Clear;
 combobox1.Text:='';
 combobox2.Text:='';
 combobox3.Text:='';
 combobox4.Text:='';
 ComboBox8.Text:='';
 ComboBox9.Text:='';
 ComboBox10.Text:='';
 jbmc.Caption:='';
 ycfqsm.Caption:='';
 Button1.Enabled:=False;
 Button2.Enabled:=False;
 Button6.Enabled:=False;
 DBGrid3.SetFocus;
end;
 procedure Tfrm_ywyc.qry_lbAfterDelete(DataSet: TDataSet);
 var
 ls:string;
 begin
 qkjm;
 sxlb;
 if groupbox4.Enabled=true then
 edit1.SetFocus;
 end;
 procedure Tfrm_ywyc.cljbqxkz(cljb: string;sfwc:string;sfck:string;jsksqrbz:string);
 begin
  if  cljb='1' then
  begin
   groupbox4.Enabled:=true;
   groupbox5.Enabled:=true;
   groupbox6.Enabled:=true;
   groupbox1.Enabled:=true;
   memo3.ReadOnly:=false;
   memo4.ReadOnly:=true;
   dbedit7.Enabled:=true;
   dbedit3.Enabled:=false;
   dbedit10.Enabled:=false;
   dtphsz.Enabled:=false;
   dtpfhz.Enabled:=false;
  end
  else if cljb='2' then
  begin
   groupbox4.Enabled:=true;
   groupbox5.Enabled:=true;
   groupbox6.Enabled:=true;
   groupbox3.Enabled:=false;
   groupbox1.Enabled:=true;
   memo3.ReadOnly:=false;
   memo4.ReadOnly:=true;
   dbedit7.Enabled:=false;
   dbedit3.Enabled:=true;
   dbedit10.Enabled:=false;
   dtphsz.Enabled:=true;
   dtpfhz.Enabled:=false;
  end
  else if cljb='3' then
  begin
   groupbox4.Enabled:=false;
   groupbox5.Enabled:=false;
   groupbox6.Enabled:=false;
   groupbox3.Enabled:=false;
   groupbox1.Enabled:=true;
   memo3.ReadOnly:=true;
   memo2.ReadOnly:=True;
   memo1.ReadOnly:=True;
   memo4.ReadOnly:=false;
   dbedit7.Enabled:=false;
   dbedit3.Enabled:=false;
   dbedit10.Enabled:=true;
   dtphsz.Enabled:=false;
   dtpfhz.Enabled:=true;
   if ComboBox5.Visible then
   ComboBox5.Enabled:=false;
  end;
  if sfck='1' then
  begin
  groupbox3.Enabled:=true;
  dtpckrq.Enabled:=false;
  combobox10.Enabled:=false;
  combobox8.Enabled:=false;
  dtpjsqmrq.Enabled:=false;
  combobox2.Enabled:=false;
  dbedit11.Enabled:=false;
  dtpzyrq.Enabled:=false;
  end
  else
  begin
  groupbox3.Enabled:=true;
  dtpckrq.Enabled:=true;
  combobox10.Enabled:=true;
  combobox8.Enabled:=true;
  dtpjsqmrq.Enabled:=true;
  combobox2.Enabled:=true;
  dbedit11.Enabled:=true;
  dtpzyrq.Enabled:=true;
  end;
  if  ((dqczy='') and (dqks<>pub_ksdm)) or ((dqczy<>'') and (dqczy<>pub_czydm)) then
  begin
   Button1.Enabled:=False;
   Button2.Enabled:=False;
   Button6.Enabled:=False;
   groupbox1.Enabled:=false;
   groupbox4.Enabled:=false;
   groupbox5.Enabled:=false;
   groupbox6.Enabled:=false;
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
   groupbox5.Enabled:=false;
   groupbox6.Enabled:=false;
   Button1.Enabled:=False;
   Button2.Enabled:=False;
   Button6.Enabled:=False;
  end;
  if trim(ado_jbxx.fieldbyname('zyscbz').asstring)='1' then
  dbedit12.Enabled:=false
  else
  dbedit12.Enabled:=true;
  if (jsksqrbz<>'1') and (sfck='1') and (trim(ado_jbxx.fieldbyname('zkks').asstring)=pub_ksdm)   then
  begin
   dbedit13.Enabled:=true;
   dtpjsqmrq.Enabled:=true;
   ComboBox6.Enabled:=True;
  end
  else
  begin
  dbedit13.Enabled:=false;
  dtpjsqmrq.Enabled:=false;
  ComboBox6.Enabled:=false;
  end;
  ado_jbxx.Edit;
 end;
  procedure Tfrm_ywyc.sxlb;
  var
  ls,xgksdm,hszzgks:string;
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
  //ls:='select * from blsj_ywyc_jbxx where  ((sfwc<>1 and clczy='+#39+pub_czydm+#39+') or (ksdm='+#39+pub_ksdm+#39+' and sfwc<>1 and clczy='+#39+#39+'))';
 // ls:=ls+' or  ( (sfck<>1 or sfck is null) and cljb<>1 and id in (select sjid  from blsj_ywyc_cljl where cljb=2 and  (thbz<>1 or thbz is null) and (clksdm='+#39+pub_ksdm+#39 +' or CHARINDEX(clksdm,'+#39+hgzzgks+#39+')>0'+' or CHARINDEX(clksdm,'+#39+xgksdm+#39+')>0)' +'))'+' or (zkks='+#39+pub_ksdm+#39 +' and (jsksqrbz<>1 or jsksqrbz is null) and sfck=1 )'+' or (zyschsz='+#39+pub_czydm+#39+' and (zyscbz<>1 or zyscbz is null) )'+ ' order by sbrq';
  ls:='select * from blsj_ywyc_jbxx where  ((sfwc<>1 and clczy='+#39+pub_czydm+#39+') or (ksdm='+#39+pub_ksdm+#39+' and sfwc<>1 and clczy='+#39+#39+'))';
  ls:=ls+' or  ( isnull(sfck,0)<>1 and cljb<>1  and (brks=' +pub_ksdm+' or CHARINDEX(brks,'+#39+hszzgks+#39+')>0' + ' or CHARINDEX(brks,'+#39+xgksdm+#39+')>0)) '+' or  (zkks='+#39+pub_ksdm+#39+ ' and yczkqk<>'+#39+'治愈'+#39 +' and (jsksqrbz<>1 or jsksqrbz is null) and sfck=1 )'+' or (zyschsz='+#39+pub_czydm+#39+' and (zyscbz<>1 or zyscbz is null) )'+ ' order by sbrq';
  qry_lb.Close;
  qry_lb.SQL.Clear;
  qry_lb.SQL.Add(ls);
  qry_lb.Open;
  end;
 end.
