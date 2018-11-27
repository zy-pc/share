unit p_brhf1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBGridEhGrouping, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters,
  OleCtrls, EMRPAD30Lib_TLB, cxSplitter, GridsEh, DBGridEh,
  StdCtrls, ExtCtrls, cxContainer, cxEdit, cxCheckListBox, DB, ADODB, SHDocVw,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, DBCtrls, DBCGrids,
  ComCtrls, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid;

type
  Tfrm_brhf1 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    GroupBox1: TGroupBox;
    Panel9: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label14: TLabel;
    Label19: TLabel;
    brxm: TEdit;
    brxb: TEdit;
    brnl: TEdit;
    lxdh: TEdit;
    zgys: TEdit;
    zrhs: TEdit;
    tmh: TEdit;
    cyrq: TEdit;
    bch: TEdit;
    zyts: TEdit;
    Label1: TLabel;
    ryrq: TEdit;
    GroupBox2: TGroupBox;
    DBGrid2: TDBGridEh;
    DBGrid3: TDBGridEh;
    GroupBox3: TGroupBox;
    qry_hfjh: TADOQuery;
    cxCheckListBox1: TcxCheckListBox;
    Panel4: TPanel;
    Label2: TLabel;
    ComboBox1: TComboBox;
    Label10: TLabel;
    ComboBox2: TComboBox;
    WebBrowser1: TWebBrowser;
    GroupBox4: TGroupBox;
    Memo1: TMemo;
    ds_brlb: TDataSource;
    Panel5: TPanel;
    Panel6: TPanel;
    qbby: TRadioButton;
    yhf: TRadioButton;
    whf: TRadioButton;
    qry_brbl: TADOQuery;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label17: TLabel;
    Label13: TLabel;
    Label12: TLabel;
    Label11: TLabel;
    cxDateEdit1: TcxDateEdit;
    Edit2: TEdit;
    Edit1: TEdit;
    ComboBox3: TComboBox;
    RadioButton2: TRadioButton;
    RadioButton1: TRadioButton;
    Button1: TButton;
    qry_ssjl: TADOQuery;
    ds_ssjl: TDataSource;
    qry_jbjl: TADOQuery;
    ds_jbjl: TDataSource;
    Label18: TLabel;
    ComboBox4: TComboBox;
    qry_bc: TADOQuery;
    qry_insert: TADOQuery;
    qry_sfz: TADOQuery;
    Button2: TButton;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxGrid1DBTableView1Column3: TcxGridDBColumn;
    GroupBox5: TGroupBox;
    RadioButton3: TRadioButton;
    cxGrid1DBTableView1Column4: TcxGridDBColumn;
    cxGrid1DBTableView1Column5: TcxGridDBColumn;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    ComboBox5: TComboBox;
    Label24: TLabel;
    ComboBox6: TComboBox;
    Button3: TButton;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    sp_brlb: TADOStoredProc;
    gc: TCheckBox;
    Label25: TLabel;
    nxrdh: TEdit;
    zyxz: TComboBox;
    Label26: TLabel;
    ad_bqks: TADODataSet;
    Button4: TButton;
    Button5: TButton;
    qry_xgdhhm: TADOQuery;
    ADOQuery1: TADOQuery;
    procedure FormShow(Sender: TObject);
    procedure ds_brlbDataChange(Sender: TObject; Field: TField);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure cxCheckListBox1Click(Sender: TObject);
    procedure cxGrid1DBTableView1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure Button3Click(Sender: TObject);
    procedure qbbyClick(Sender: TObject);
    procedure gcClick(Sender: TObject);
    procedure cxGrid1DBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure zyxzChange(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_brhf1: Tfrm_brhf1;

implementation
uses
p_dm,p_func;

{$R *.dfm}

procedure Tfrm_brhf1.Button1Click(Sender: TObject);
   var
   i,n:integer;
   s:string;
   begin
Button1.Enabled:=False;
 qry_bc.close;
 qry_bc.SQL.clear;
 qry_bc.SQL.add('select * from brhf_hfxx where id=:id');
 qry_bc.Parameters.ParamByName('id').Value:=sp_brlb.FieldByName('id').AsInteger;
 qry_bc.Open;
 if qry_bc.FieldByName('hfjh').AsString='' then
  begin
   Application.MessageBox('请先保存回访计划！', '提示', 0 + 16);
   exit;
  end
  else
  begin
if (RadioButton1.Checked=false) and (RadioButton2.Checked=False)  then
begin
  Application.MessageBox('请选择是否回访成功！', '提示', 0 + 16);
  Exit;
end;
if comboBox5.Text='' then
begin
   Application.MessageBox('请先选择是否特定患者！', '提示', 0 + 16);
  Exit;
end;
if ComboBox6.Text='' then
begin
     Application.MessageBox('请先选择病人是否死亡！', '提示', 0 + 16);
  Exit;
end;

 qry_bc.Edit;
 qry_bc['zgqk']:=Trim(ComboBox1.text);
 qry_bc['hfxs']:=Trim(ComboBox2.text);
 qry_bc['hfnr']:=Trim(Memo1.text);
 if RadioButton1.Checked=true then
 begin
 qry_bc['sfcg']:=1;
 qry_bc['hfjg']:=Trim(ComboBox4.text);
 end
 else
 begin
 qry_bc['sfcg']:=0;
 qry_bc['wcgyy']:=Trim(ComboBox3.text);
 end;
 qry_bc['jy']:=Trim(edit2.text);
 qry_bc['sfhf']:=1;
 qry_bc['bz']:=Trim(edit1.text);
 qry_bc['xchfsj']:=cxDateEdit1.Date;
 qry_bc['hfr']:=pub_czydm;
 qry_bc['hfsj']:=Frm_func.curr_date;
{ if CheckBox1.Checked then
 begin
    qry_bc['tdhz']:=1;
 end
 else
 begin
   qry_bc['tdhz']:=0;
 end;   }
 qry_bc['tdhz']:=ComboBox5.ItemIndex;
 qry_bc['sfsw']:=ComboBox6.ItemIndex;
 

 qry_bc.Post;
 if cxDateEdit1.Date<>0 then
 begin
 ADOQuery1.close;
 ADOQuery1.SQL.Clear;
 ADOQuery1.SQL.Add('select max(id) id from brhf_hfxx where zyh=:zyh ') ;
 ADOQuery1.Parameters.ParamByName('zyh').Value:=qry_bc.FieldByName('zyh').AsString;
 ADOQuery1.Open;
   qry_insert.Close;
   qry_insert.Parameters.ParamByName('id').Value:=ADOQuery1.FieldByName('id').AsInteger;
   qry_insert.ExecSQL;
 end;
 
Button3.Click;
  end;


end;

procedure Tfrm_brhf1.Button2Click(Sender: TObject);
   var
   i,n:integer;
   s:string;
begin
Memo1.Clear;
      i:=cxCheckListBox1.Items.Count;
     s:='';
     for n:=0  to i-1 do
     begin
      if cxCheckListBox1.Items.Items[n].Checked then
      begin
      s:=s+'['+cxCheckListBox1.Items.Items[n].Text+']';
      Memo1.Lines.Add(cxCheckListBox1.Items.Items[n].Text+':');
      end;
     end;



 qry_bc.close;
 qry_bc.SQL.clear;
 qry_bc.SQL.add('select * from brhf_hfxx where id=:id');
 qry_bc.Parameters.ParamByName('id').Value:=sp_brlb.FieldByName('id').AsInteger;
 qry_bc.Open;
 qry_bc.Edit;
 qry_bc['hfjh']:=s;
 qry_bc['jhczy']:=pub_czydm;
 qry_bc['jhsj']:=Frm_func.curr_date;
 qry_bc['zgqk']:=Trim(ComboBox1.text);
 qry_bc['hfxs']:=Trim(ComboBox2.text);
 qry_bc['hfnr']:=Trim(memo1.text);
 qry_bc.Post;

Button3.Click;

end;

procedure Tfrm_brhf1.Button3Click(Sender: TObject);
begin
sp_brlb.close;
sp_brlb.Parameters.Refresh;
sp_brlb.Parameters.ParamByName('@kssj').Value:=FormatDateTime('yyyymmdd',DateTimePicker1.DateTime);
sp_brlb.Parameters.ParamByName('@jssj').Value:=FormatDateTime('yyyymmdd',DateTimePicker2.DateTime);
sp_brlb.Parameters.ParamByName('@ksdm').Value:=copy(zyxz.Text,1,4);
if gc.Checked=true then
sp_brlb.Parameters.ParamByName('@zrhs').Value:=pub_czydm
else
sp_brlb.Parameters.ParamByName('@zrhs').Value:='';
if qbby.Checked=true then
begin
sp_brlb.Parameters.ParamByName('@sfhf').Value:='';
end;
if yhf.Checked=true then
begin
sp_brlb.Parameters.ParamByName('@sfhf').Value:='1';
end;
if whf.Checked=true then
begin
sp_brlb.Parameters.ParamByName('@sfhf').Value:='0';
end;
if (whf.Checked=false) and  (qbby.Checked=false) and (yhf.Checked=false) then
begin
sp_brlb.Parameters.ParamByName('@sfhf').Value:='';
end;

if RadioButton3.Checked=true then
begin
sp_brlb.Parameters.ParamByName('@tdbz').Value:='1';
end
else
begin
sp_brlb.Parameters.ParamByName('@tdbz').Value:='0';
end;
sp_brlb.Open;
GroupBox5.Caption:='合计'+inttostr(sp_brlb.RecordCount);

end;

procedure Tfrm_brhf1.Button4Click(Sender: TObject);
begin
lxdh.Enabled:=True;
nxrdh.Enabled:=True;
Button5.Visible:=True;
end;

procedure Tfrm_brhf1.Button5Click(Sender: TObject);
begin
if (Trim(lxdh.text)<>'') and (Trim(nxrdh.text)<>'') then
begin
qry_xgdhhm.close;
qry_xgdhhm.SQL.Clear;
qry_xgdhhm.sql.Add('update brhf_hfxx set lxdh=:lxdh_1,lxdh1=:lxdh1_1 where id=:id_1 and zyh=:zyh_1');
qry_xgdhhm.Parameters.ParamByName('lxdh_1').Value:=Trim(lxdh.text);
qry_xgdhhm.Parameters.ParamByName('lxdh1_1').Value:=Trim(nxrdh.text);
qry_xgdhhm.Parameters.ParamByName('id_1').Value:=sp_brlb.FieldByName('id').AsString;
qry_xgdhhm.Parameters.ParamByName('zyh_1').Value:=sp_brlb.FieldByName('zyh').AsString;
qry_xgdhhm.ExecSQL;
application.MessageBox('成功！','提示：',0+48);
end
else
begin
application.MessageBox('修改电话号码不能为空！','提示：',0+48);
end;
lxdh.Enabled:=false;
nxrdh.Enabled:=False;
Button5.Visible:=false;
end;

procedure Tfrm_brhf1.cxCheckListBox1Click(Sender: TObject);
   var
   i,n:integer;
begin
    {  i:=cxCheckListBox1.Items.Count;
     for n:=0  to i-1 do
     begin
      if cxCheckListBox1.Items.Items[n].Checked then
     memo1.Lines.Add(cxCheckListBox1.Items.Items[n].Text);
     end; }
end;

procedure Tfrm_brhf1.cxGrid1DBTableView1CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
  var
  Flags: OLEVariant;
  stream: TADOBlobStream;
  stream1: TFileStream;
  filename: string;
begin

qry_brbl.close;
qry_brbl.Parameters.ParamByName('zyh').Value:=sp_brlb.FieldByName('zyh').AsString;
qry_brbl.open;
if qry_brbl.RecordCount=0 then
begin
   //Application.MessageBox('未找到该病人的出院证！', '提示', 0 + 16);
   WebBrowser1.Navigate('about:blank');
end
else
begin
    filename := GetCurrentDir + '\' + 'etemp';
        try
          stream := TADOBlobStream.Create(qry_brbl.FieldByName('html') as TBlobField, bmRead);
          stream.Position := 0;
          stream1 := TFileStream.Create(filename, fmCreate);
          stream1.Position := 0;
          stream1.CopyFrom(stream, stream.Size);
        finally
          stream1.Free;
          stream.Free;
        end;
       Flags := 0;
       try
       WebBrowser1.Navigate(WideString(filename), Flags, Flags, Flags, Flags);
       finally
       end;
end;
Button1.Enabled:=true;
end;

procedure Tfrm_brhf1.cxGrid1DBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
{ if (AViewInfo.RecordViewInfo.GridRecord.Values[3]=1) then
  ACanvas.Brush.Color := clTeal; }
   if (AViewInfo.RecordViewInfo.GridRecord.Values[4]=0) then
  ACanvas.Brush.Color := clRed;
end;

procedure Tfrm_brhf1.ds_brlbDataChange(Sender: TObject; Field: TField);
var
  Flags: OLEVariant;
  stream: TADOBlobStream;
  stream1: TFileStream;
  filename, bcid,jhmc,jhmc1: string;
  id,i: integer;
begin
cxDateEdit1.Date:=0;
if sp_brlb.RecordCount<>0 then
begin
tmh.Text:=sp_brlb.FieldByName('tmh').AsString;
brxm.Text:=sp_brlb.FieldByName('brxm').AsString;
brnl.Text:=sp_brlb.FieldByName('brnl').AsString;
brxb.Text:=sp_brlb.FieldByName('brxb').AsString;
ryrq.Text:=sp_brlb.FieldByName('rysj').AsString;
cyrq.Text:=sp_brlb.FieldByName('cysj').AsString;
zgys.Text:=sp_brlb.FieldByName('ysmc').AsString;
zrhs.Text:=sp_brlb.FieldByName('hsmc').AsString;
bch.Text:=sp_brlb.FieldByName('bch').AsString;
zyts.Text:=sp_brlb.FieldByName('zyts').AsString;
lxdh.Text:=sp_brlb.FieldByName('lxdh').AsString;
nxrdh.text:=sp_brlb.FieldByName('lxdh1').AsString;
ComboBox5.ItemIndex:=sp_brlb.FieldByName('tdhz').asinteger;
ComboBox6.ItemIndex:=sp_brlb.FieldByName('sfsw').asinteger;



     for i:=0  to cxCheckListBox1.Items.Count-1 do
     begin
       cxCheckListBox1.Items.Items[i].Checked:=false;
     end;
RadioButton1.Checked:=false;
RadioButton2.Checked:=false;
Edit1.text:='';
Edit2.text:='';
cxDateEdit1.Date:=0;
if sp_brlb.FieldByName('sfhf').AsInteger=1 then
begin
ComboBox3.Text:=sp_brlb.FieldByName('wcgyy').AsString;
ComboBox4.text:=sp_brlb.FieldByName('hfjg').AsString;
ComboBox1.Text:=sp_brlb.FieldByName('zgqk').AsString;
ComboBox2.text:=sp_brlb.FieldByName('hfxs').AsString;
end
else
begin
ComboBox3.text:='电话停机';
ComboBox4.text:='非常满意';
ComboBox1.Text:='治愈';
ComboBox2.text:='电话回访';
end;


   //以下两个数据集数据自己添加
 {
qry_ssjl.Close;
qry_ssjl.SQL.Clear;
qry_ssjl.SQL.Add('select zyh,dm,sj,ys,a.dm,a.ssmc from ba_sszdk a where a.zyh=:zyh ');
qry_ssjl.Parameters.ParamByName('zyh').value:=sp_brlb.fieldbyname('zyh').asstring;;
qry_ssjl.open;



qry_jbjl.close;
qry_jbjl.sql.clear;
qry_jbjl.SQL.add('select zyh,dm,a.dm,a.jbmc from ba_cyzdk a where a.zyh=:zyh  ');
qry_jbjl.Parameters.ParamByName('zyh').value:=sp_brlb.fieldbyname('zyh').asstring;;
qry_jbjl.open;        }


     jhmc1:=sp_brlb.FieldByName('hfjh').AsString;
     for i:=0  to cxCheckListBox1.Items.Count-1 do
     begin
       jhmc:=cxCheckListBox1.Items.Items[i].Text;
       if Pos(jhmc,jhmc1)>0 then
       begin
       cxCheckListBox1.Items.Items[i].Checked:=True;
       end;
     end;
 if sp_brlb.FieldByName('sfcg').AsInteger=0 then
 begin
   RadioButton2.Checked:=True;
   RadioButton1.Checked:=false;
 end;
  if sp_brlb.FieldByName('sfcg').AsInteger=1 then
 begin
   RadioButton1.Checked:=true;
   RadioButton2.Checked:=false;
 end;
{   if qry_brlb.FieldByName('tdhz').AsInteger=1 then
 begin
 CheckBox1.Checked:=True;
 end
 else
 begin
 CheckBox1.Checked:=False;
 end;   }


edit2.Text:=sp_brlb.FieldByName('jy').AsString;
edit1.text:=sp_brlb.FieldByName('bz').AsString;
memo1.text:=sp_brlb.FieldByName('hfnr').AsString;
cxDateEdit1.date:=sp_brlb.FieldByName('xchfsj').AsDateTime;
end;

end;

procedure Tfrm_brhf1.FormShow(Sender: TObject);
var
i:Integer;
mc:string;
begin
  cxDateEdit1.Date:=0;
  DateTimePicker1.DateTime:=now;
  DateTimePicker2.DateTime:=now;
  PageControl1.ActivePage:=TabSheet1;
  qry_hfjh.close;
  qry_hfjh.sql.clear;
  qry_hfjh.sql.Add('select * from brhf_hfjhmb order by xh,id');
  qry_hfjh.open;
  qry_hfjh.First;

 ad_bqks.Close;
 ad_bqks.Parameters.ParamByName('bqdm').value:=pub_bqdm;
 ad_bqks.Open;
 zyxz.Items.Clear;
  while not ad_bqks.Eof do
  begin
  zyxz.Items.Add(trim(ad_bqks.FieldByName('dm').AsString)+'-'+trim(ad_bqks.FieldByName('mc').AsString));
  ad_bqks.Next;
  end;
  if qszyxz>ad_bqks.Recordcount then
  qszyxz:=0;
  ad_bqks.close;
  zyxz.ItemIndex:=qszyxz;


 cxCheckListBox1.Items.Clear;
for i := 0 to qry_hfjh.RecordCount - 1 do
 begin
  cxCheckListBox1.Visible:=false;
  mc:=qry_hfjh.FieldByName('mc').asstring;
  cxCheckListBox1.Items.Add;
  cxCheckListBox1.Items.Items[i].Text:=mc;
//  zllb.Items.Items[i].Enabled:=false;
  qry_hfjh.Next;
 end;
  cxCheckListBox1.Visible:=true;

{qry_yspbb.Close;
 qry_yspbb.Parameters.ParamByName('ksdm').Value:=pub_ksdm;
 qry_yspbb.Open;       }

  Button3.Click;


end;

procedure Tfrm_brhf1.gcClick(Sender: TObject);
begin
Button3.Click;
end;

procedure Tfrm_brhf1.qbbyClick(Sender: TObject);
begin
Button3.Click;
end;

procedure Tfrm_brhf1.RadioButton1Click(Sender: TObject);
begin

ComboBox4.Enabled:=true;
ComboBox3.Enabled:=false;

end;

procedure Tfrm_brhf1.RadioButton2Click(Sender: TObject);
begin
ComboBox4.Enabled:=false;
ComboBox3.Enabled:=True;
end;

procedure Tfrm_brhf1.zyxzChange(Sender: TObject);
begin
Button3.Click;

{qry_yspbb.Close;
 qry_yspbb.Parameters.ParamByName('ksdm').Value:=copy(zyxz.Text,1,4);
 qry_yspbb.Open; }
end;

end.
