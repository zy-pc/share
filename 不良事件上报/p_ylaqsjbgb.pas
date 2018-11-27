unit p_ylaqsjbgb;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, DB, ADODB, Grids, DBGrids, StdCtrls, ExtCtrls,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, ActnList, Menus,p_dm,p_func,p_blsj_bqgcyy, cxLookAndFeelPainters,
  cxButtons,p_zysf_print_service, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid;

type
   Tfrm_ylaqsjbgb = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    Panel1: TPanel;
    Button1: TButton;
    Button6: TButton;
    Button3: TButton;
    Button8: TButton;
    Button4: TButton;
    DBGrid1: TDBGrid;
    ds_brcx: TDataSource;
    qry_sjlb: TADOQuery;
    qry_lbsj: TADOQuery;
    PageControl2: TPageControl;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label8: TLabel;
    cxDateEdit2: TcxDateEdit;
    Edit1: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    Edit3: TEdit;
    Label5: TLabel;
    Edit4: TEdit;
    cxDateEdit3: TcxDateEdit;
    Label9: TLabel;
    Edit7: TEdit;
    Label11: TLabel;
    Label12: TLabel;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    Memo1: TMemo;
    Label13: TLabel;
    Edit2: TEdit;
    Label6: TLabel;
    Edit5: TEdit;
    Label14: TLabel;
    Label10: TLabel;
    Edit6: TEdit;
    Panel2: TPanel;
    Label7: TLabel;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    CheckBox6: TCheckBox;
    Label15: TLabel;
    Memo2: TMemo;
    Memo3: TMemo;
    Label16: TLabel;
    Memo4: TMemo;
    Label17: TLabel;
    Memo5: TMemo;
    sp_brjs: TADOStoredProc;
    dbgrd_brjs: TDBGrid;
    ds_jslb: TDataSource;
    cxDateEdit1: TcxDateEdit;
    dbgrd_ry: TDBGrid;
    ds_ry: TDataSource;
    sp_sbrcx: TADOStoredProc;
    sc: TActionList;
    Action1: TAction;
    Action2: TAction;
    Label18: TLabel;
    c: TLabel;
    edt_ksfzr: TEdit;
    Label19: TLabel;
    Edit8: TEdit;
    Label20: TLabel;
    Edit9: TEdit;
    Label21: TLabel;
    Edit10: TEdit;
    Panel4: TPanel;
    ScrollBox1: TScrollBox;
    Panel3: TPanel;
    sp_xrjbxx: TADOStoredProc;
    cxButton1: TcxButton;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    qry_lbsx: TADOQuery;
    sp_brlb: TADOStoredProc;
    Panel5: TPanel;
    Label22: TLabel;
    cxDateEdit4: TcxDateEdit;
    Label23: TLabel;
    cxDateEdit5: TcxDateEdit;
    Button2: TButton;
    Button5: TButton;
    DBGrid2: TDBGrid;
    sp_sjcx: TADOStoredProc;
    ds_sjcx: TDataSource;
    Button7: TButton;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    sp_sjtj: TADOStoredProc;
    ds_sjtj: TDataSource;
    Panel6: TPanel;
    Label24: TLabel;
    Label25: TLabel;
    cxDateEdit6: TcxDateEdit;
    cxDateEdit7: TcxDateEdit;
    Button9: TButton;
    cbb1: TComboBox;
    PopupMenu2: TPopupMenu;
    N4: TMenuItem;
    qry_del: TADOQuery;
    procedure  saveblsj;
    procedure  qksj;
    procedure TabSheet2Show(Sender: TObject);
    procedure TabSheet3Show(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure dbgrd_brjsKeyPress(Sender: TObject; var Key: Char);
    procedure dbgrd_brjsDblClick(Sender: TObject);
    procedure dbgrd_brjsExit(Sender: TObject);
    procedure Edit6KeyPress(Sender: TObject; var Key: Char);
    procedure dbgrd_ryKeyPress(Sender: TObject; var Key: Char);
    procedure Edit6Exit(Sender: TObject);
    procedure dbgrd_ryDblClick(Sender: TObject);
    procedure dbgrd_ryExit(Sender: TObject);
    procedure Memo1DblClick(Sender: TObject);
    procedure Memo2DblClick(Sender: TObject);
    procedure Memo3DblClick(Sender: TObject);
    procedure Memo4DblClick(Sender: TObject);
    procedure Memo5DblClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
    procedure CheckBox4Click(Sender: TObject);
    procedure CheckBox5Click(Sender: TObject);
    procedure CheckBox6Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure TabSheet1Show(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure TabSheet5Show(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
  var str_mbct,sjlb,blsjlev :string;

    { Public declarations }
  end;

var
  frm_ylaqsjbgb: Tfrm_ylaqsjbgb;
  check : array of TCheckBox;
  lal : array of TLabel;
   lbnum,i,spa,blhg : Integer;
   tmh,tjsx,ksfzr,yjspr,ejspr : string;
       bookmark : TBookmark;


implementation
    uses P_tjjm;

{$R *.dfm}

procedure Tfrm_ylaqsjbgb.Button1Click(Sender: TObject);
var
   save : TADOQuery;
begin
   if Trim(Edit1.Text)='' then
   begin
      ShowMessage('病人姓名不能为空！');
      exit;
   end;
   if Trim(Edit6.Text)='' then
   begin
      ShowMessage('报告人不能为空！');
      exit;
   end;
   if Trim(Edit7.Text)='' then
   begin
      ShowMessage('病人诊断不能为空！');
      exit;
   end;
   for I := 0 to lbnum - 1 do
   begin
     if check[i].Checked=True then
      begin
      sjlb := Trim(sjlb)+'|'+IntToStr(i+1);
      end;
   end;
   if CheckBox3.Checked = True then
   begin
     blsjlev := 'I级事件' ;
   end
   else if CheckBox4.Checked = True then
   begin
     blsjlev := 'II级事件' ;
   end
   else if CheckBox5.Checked = True then
   begin
     blsjlev := 'III级事件' ;
   end
    else if CheckBox6.Checked = True then
   begin
     blsjlev := 'IV级事件' ;
   end ;
   if CheckBox1.Checked then
   begin
     blhg := 0;
   end
   else  if CheckBox2.Checked then
   begin
     blhg := 1;
   end;
   sjlb := Copy(sjlb,2,Length(sjlb));
   saveblsj;
   qksj;
end;

procedure Tfrm_ylaqsjbgb.Button9Click(Sender: TObject);
var
   ksrq, jsrq: string;
     i,ii:integer;
begin
  ksrq := FormatDateTime('yyyy-mm-dd', StrToDate(cxDateEdit6.Text));
  jsrq := FormatDateTime('yyyy-mm-dd', StrToDate(cxDateEdit7.Text));
  if cbb1.Text ='事件人次统计' then //事件等级统计
  begin
  cxGrid1DBTableView1.ClearItems;
  sp_sjtj.Close;
  sp_sjtj.parameters.ParamByName('@ksrq').value := ksrq;
  sp_sjtj.parameters.ParamByName('@jsrq').value := jsrq;
  sp_sjtj.parameters.ParamByName('@cxfs').value := '1';
  sp_sjtj.Open;
  for i:=0 to sp_sjtj.fieldcount-1 do
    begin
      cxGrid1DBTableView1.CreateColumn;
      cxGrid1DBTableView1.Columns[i].DataBinding.fieldname:=sp_sjtj.Fields[i].DisplayName;
      cxGrid1DBTableView1.Columns[i].caption:=sp_sjtj.Fields[i].fieldname;
      if i=0 then
      cxGrid1DBTableView1.Columns[i].width:=100
      else
      cxGrid1DBTableView1.Columns[i].width:=70;
    end;
  sp_sjtj.ExecProc;
  sp_sjtj.active:=True;
  end
  else  if cbb1.Text ='事件等级统计' then
  begin
  cxGrid1DBTableView1.ClearItems;
  sp_sjtj.Close;
  sp_sjtj.parameters.ParamByName('@ksrq').value := ksrq;
  sp_sjtj.parameters.ParamByName('@jsrq').value := jsrq;
  sp_sjtj.parameters.ParamByName('@cxfs').value := '2';
  sp_sjtj.Open;
   for i:=0 to sp_sjtj.fieldcount-1 do
    begin
      cxGrid1DBTableView1.CreateColumn;
      cxGrid1DBTableView1.Columns[i].DataBinding.fieldname:=sp_sjtj.Fields[i].DisplayName;
      cxGrid1DBTableView1.Columns[i].caption:=sp_sjtj.Fields[i].fieldname;
      if i=0 then
      cxGrid1DBTableView1.Columns[i].width:=100
      else
      cxGrid1DBTableView1.Columns[i].width:=70;
    end;
  sp_sjtj.ExecProc;
  sp_sjtj.active:=True;
  end;
end;

procedure Tfrm_ylaqsjbgb.Button2Click(Sender: TObject);
var
   ksrq, jsrq: string;
begin
  ksrq := FormatDateTime('yyyy-mm-dd', StrToDate(cxDateEdit4.Text));
  jsrq := FormatDateTime('yyyy-mm-dd', StrToDate(cxDateEdit5.Text));
  sp_sjcx.Close;
  sp_sjcx.parameters.ParamByName('@ksrq').value := ksrq;
  sp_sjcx.parameters.ParamByName('@jsrq').value := jsrq;
  sp_sjcx.Open;
end;

procedure Tfrm_ylaqsjbgb.Button3Click(Sender: TObject);
begin

  frm_zysf_print_service.print_ylaqsjbgb(sp_brlb.FieldByName('tmh').AsString);
end;

procedure Tfrm_ylaqsjbgb.Button4Click(Sender: TObject);
begin
   Close;
end;

procedure Tfrm_ylaqsjbgb.Button5Click(Sender: TObject);
var
   qxgd : TADOQuery;
begin
try
   qxgd := TADOQuery.Create(Self);
   qxgd.Connection := p_dm.DM_data.ado_mydata;
   qxgd.close;
   qxgd.SQL.Text := 'update zybl_ylaqsjbg set wcgd='+#39+sp_sjcx.FieldByName('住院号').AsString+#39;
   qxgd.ExecSQL;
   ShowMessage('取消归档成功,请在新增事件页面处理！');
   qxgd.Free;
except
   ShowMessage('取消归档失败！');
   qxgd.Free;
end;
end;

procedure Tfrm_ylaqsjbgb.Button6Click(Sender: TObject);
var
   thyy : string;
   qry_thyy : TADOQuery;
begin
   thyy := trim(INPUTBOX('输入：','请输入退回原因(100字以内)：    ',''));
   if sp_brlb.FieldByName('ejspr').AsString=pub_czydm then
   begin
     qry_thyy := TADOQuery.Create(Self);
     qry_thyy.Connection := p_dm.DM_data.ado_mydata;
     qry_thyy.Close;
     qry_thyy.SQL.Text := 'update zybl_ylaqsjbg_dhyy set sjdhyy='+#39+thyy+#39+' where tmh= '+#39+sp_brlb.FieldByName('tmh').AsString+#39;
     qry_thyy.ExecSQL;
     qry_thyy.Free;
     qksj;
   end
   else  if sp_brlb.FieldByName('yjspr').AsString=pub_czydm then
   begin
     qry_thyy := TADOQuery.Create(Self);
     qry_thyy.Connection := p_dm.DM_data.ado_mydata;
     qry_thyy.Close;
     qry_thyy.SQL.Text := 'update zybl_ylaqsjbg_dhyy set ejdhyy='+#39+thyy+#39+' where tmh= '+#39+sp_brlb.FieldByName('tmh').AsString+#39;
     qry_thyy.ExecSQL;
     qry_thyy.Free;
     qksj;
   end
   else  if sp_brlb.FieldByName('ksfzr').AsString=pub_czydm then
   begin
     qry_thyy := TADOQuery.Create(Self);
     qry_thyy.Connection := p_dm.DM_data.ado_mydata;
     qry_thyy.Close;
     qry_thyy.SQL.Text := 'update zybl_ylaqsjbg_dhyy set yjdhyy='+#39+thyy+#39+' where tmh= '+#39+sp_brlb.FieldByName('tmh').AsString+#39;
     qry_thyy.ExecSQL;
     qry_thyy.Free;
     qksj;
   end

end;

procedure Tfrm_ylaqsjbgb.Button7Click(Sender: TObject);
var
  wcgd: TADOQuery;
begin
  if ((Trim(sp_brlb.FieldByName('ksfzr').AsString) = '') or (Trim(sp_brlb.FieldByName('yjspr').AsString) = '') or (Trim(sp_brlb.FieldByName('ejspr').AsString) = '')) then
  begin
    ShowMessage('流程还未完成，不能进行完成操作！');
    exit;
  end;
  wcgd := TADOQuery.Create(Self);
  wcgd.Connection := p_dm.DM_data.ado_mydata;
  wcgd.Close;
  wcgd.SQL.Text := 'update zybl_ylaqsjbg set wcgd=' + #39 +'1'+ #39 + ' where tmh='+#39+Trim(Edit4.Text) +#39;
  wcgd.ExecSQL;
  ShowMessage('保存成功！已完成归档，请在事件查询中查看此病人！');
  sp_brlb.Close;
  sp_brlb.Parameters.ParamByName('@ksmc').Value := Trim(pub_ksmc);
  sp_brlb.Parameters.ParamByName('@czy').Value := Trim(pub_czydm);
  sp_brlb.Open;
end;

procedure Tfrm_ylaqsjbgb.Button8Click(Sender: TObject);
begin
   qksj;
end;

procedure Tfrm_ylaqsjbgb.CheckBox1Click(Sender: TObject);
begin
    if CheckBox1.Checked then
   begin
   if CheckBox2.Checked then
   begin
     ShowMessage('已勾选不良后果！');
     CheckBox1.Checked := False;
   end;
   end;
end;

procedure Tfrm_ylaqsjbgb.CheckBox2Click(Sender: TObject);
begin
   if CheckBox2.Checked then
   begin
   if CheckBox1.Checked then
   begin
     ShowMessage('已勾选不良后果！');
     CheckBox2.Checked := False;
   end;
   end;
end;

procedure Tfrm_ylaqsjbgb.CheckBox3Click(Sender: TObject);
begin
    if CheckBox3.Checked then
    begin
    if (CheckBox4.Checked) or (CheckBox5.Checked) or (CheckBox6.Checked)  then
    begin
       ShowMessage('已勾选事件等级！');
       CheckBox3.Checked := False;
    end;
    end;
end;

procedure Tfrm_ylaqsjbgb.CheckBox4Click(Sender: TObject);
begin
   if CheckBox4.Checked then
    begin
    if (CheckBox3.Checked) or (CheckBox5.Checked) or (CheckBox6.Checked)  then
    begin
       ShowMessage('已勾选事件等级！');
       CheckBox4.Checked := False;
    end;
    end;
end;

procedure Tfrm_ylaqsjbgb.CheckBox5Click(Sender: TObject);
begin
     if CheckBox5.Checked then
    begin
    if (CheckBox3.Checked) or (CheckBox4.Checked) or (CheckBox6.Checked)  then
    begin
       ShowMessage('已勾选事件等级！');
       CheckBox5.Checked := False;
    end;
    end;
end;

procedure Tfrm_ylaqsjbgb.CheckBox6Click(Sender: TObject);
begin
   if CheckBox6.Checked then
    begin
    if (CheckBox3.Checked) or (CheckBox4.Checked) or (CheckBox5.Checked)  then
    begin
       ShowMessage('已勾选事件等级！');
       CheckBox6.Checked := False;
    end;
    end;
end;

procedure Tfrm_ylaqsjbgb.dbgrd_brjsDblClick(Sender: TObject);
begin
  Edit1.Text := sp_brjs.FieldByName('brxm').AsString;
  Edit2.Text := sp_brjs.FieldByName('brxb').AsString;
  Edit3.Text := sp_brjs.FieldByName('brnl').AsString;
  Edit4.Text := sp_brjs.FieldByName('tmh').AsString;
  Edit5.Text := sp_brjs.FieldByName('ksmc').AsString;
  cxDateEdit1.Text := sp_brjs.FieldByName('ryrq').AsString;
  Edit7.Text := sp_brjs.FieldByName('ryzd').AsString;
  cxDateEdit2.SetFocus;
end;

procedure Tfrm_ylaqsjbgb.dbgrd_brjsExit(Sender: TObject);
begin
    dbgrd_brjs.Visible := False;
end;

procedure Tfrm_ylaqsjbgb.dbgrd_brjsKeyPress(Sender: TObject; var Key: Char);
begin
if Key=#13 then
  begin
  Edit1.Text := sp_brjs.FieldByName('brxm').AsString;
  Edit2.Text := sp_brjs.FieldByName('brxb').AsString;
  Edit3.Text := sp_brjs.FieldByName('brnl').AsString;
  Edit4.Text := sp_brjs.FieldByName('tmh').AsString;
  Edit5.Text := sp_brjs.FieldByName('ksmc').AsString;
  cxDateEdit1.Text := sp_brjs.FieldByName('ryrq').AsString;
  Edit7.Text := sp_brjs.FieldByName('ryzd').AsString;
  cxDateEdit2.SetFocus;
  end
  else if Key=#27 then
  begin
     dbgrd_brjs.Visible := False;
  end;

end;

procedure Tfrm_ylaqsjbgb.dbgrd_ryDblClick(Sender: TObject);
begin
   Edit6.Text := trim(sp_sbrcx.FieldByName('mc').AsString);
   Edit7.SetFocus;
end;

procedure Tfrm_ylaqsjbgb.dbgrd_ryExit(Sender: TObject);
begin
    dbgrd_ry.Visible := False;
end;

procedure Tfrm_ylaqsjbgb.dbgrd_ryKeyPress(Sender: TObject; var Key: Char);
begin
   if Key=#13 then
   begin
    Edit6.Text := trim(sp_sbrcx.FieldByName('mc').AsString);
    Edit7.SetFocus;
   end
     else if Key=#27 then
  begin
     dbgrd_ry.Visible := False;
  end;
end;

procedure Tfrm_ylaqsjbgb.DBGrid1DblClick(Sender: TObject);
var
    lb,lbsj : string;
    cs,num : Integer;
    v_list : Tstringlist;
    dhsj : string;
    cxdhsj : TADOQuery;
begin
    tmh :=  sp_brlb.FieldByName('tmh').AsString;
    cxdhsj := TADOQuery.Create(Self);
    cxdhsj.Connection := p_dm.DM_data.ado_mydata;
    cxdhsj.Close;
    cxdhsj.SQL.Text := 'select * from zybl_ylaqsjbg_dhyy where tmh='+#39+tmh+#39;
    cxdhsj.Open;
    if sp_brlb.FieldByName('ejspr').AsString=pub_czydm then
    begin
       dhsj := Trim(cxdhsj.FieldByName('sjdhyy').AsString);
    end
    else if sp_brlb.FieldByName('yjspr').AsString=pub_czydm then
    begin
       dhsj := Trim(cxdhsj.FieldByName('ejdhyy').AsString);
    end
    else if sp_brlb.FieldByName('ksfzr').AsString=pub_czydm then
    begin
       dhsj := Trim(cxdhsj.FieldByName('yjdhyy').AsString);
    end;
    if dhsj<>'' then
    begin
    messagebox(Handle,PChar('退回原因：'+dhsj),'退回提示',0+48);
    end;
    edit1.Text := sp_brlb.FieldByName('brxm').AsString;
    edit2.Text := sp_brlb.FieldByName('brxb').AsString;
    edit3.Text := sp_brlb.FieldByName('brnl').AsString;
    edit4.Text := sp_brlb.FieldByName('tmh').AsString;
    edit5.Text := sp_brlb.FieldByName('ks').AsString;
    cxDateEdit1.Text := sp_brlb.FieldByName('ryrq').AsString;
    cxDateEdit2.Text := sp_brlb.FieldByName('fsrq').AsString;
    cxDateEdit3.Text := sp_brlb.FieldByName('sbrq').AsString;
    edit6.Text := sp_brlb.FieldByName('bgr').AsString;
    edit7.Text := sp_brlb.FieldByName('brzd').AsString;
    Memo1.Clear;
    Memo1.Lines.Add(Trim(sp_brlb.FieldByName('sjjg').AsString));
    lb :=  trim(sp_brlb.FieldByName('blsjlb').AsString);
  if Pos('|', lb) > 0 then
  begin
    v_list := Tstringlist.Create();
    v_list.Delimiter := '|';
    v_list.DelimitedText := lb;
    for i := 0 to v_list.Count - 1 do
    begin
     if v_list.Strings[i] <>'' then
     begin
     check[strtoint(v_list.Strings[i])-1].Checked := True;
     end;
    end;
  end
  else
  begin
    if lb<>'' then
    begin
    check[StrToInt(lb)-1].Checked := True;
    end;
  end;
  if trim(sp_brlb.FieldByName('blhg').AsString)='1' then
  begin
    CheckBox2.Checked := True;
  end
  else
  begin
    CheckBox1.Checked := True;
  end;
  if trim(sp_brlb.FieldByName('blsjdj').AsString) = 'I级事件' then
  begin
    CheckBox3.Checked := True;
  end
  else if trim(sp_brlb.FieldByName('blsjdj').AsString) = 'II级事件' then
  begin
    CheckBox4.Checked := True;
  end
  else if trim(sp_brlb.FieldByName('blsjdj').AsString) = 'III级事件' then
  begin
    CheckBox5.Checked := True;
  end
  else if trim(sp_brlb.FieldByName('blsjdj').AsString) = 'IV级事件' then
  begin
    CheckBox6.Checked := True;
  end ;
  Memo2.Clear;
  Memo2.Lines.Add(trim(sp_brlb.FieldByName('sjknyy').AsString));
  Memo3.Clear;
  Memo3.Lines.Add(trim(sp_brlb.FieldByName('sjclqk').AsString));
  Memo4.Clear;
  Memo4.Lines.Add(trim(sp_brlb.FieldByName('blsjpj').AsString));
  Memo5.Clear;
  Memo5.Lines.Add(trim(sp_brlb.FieldByName('cxgjcs').AsString));
  if Trim(sp_brlb.FieldByName('ksfzrmc').AsString)<>'' then
  begin
     edt_ksfzr.Text := Trim(sp_brlb.FieldByName('ksfzrmc').AsString);
     Edit8.Text := Trim(sp_brlb.FieldByName('ksfzrmc').AsString);
  end;
  if sp_brlb.FieldByName('yjsprmc').AsString<>'' then
  begin
     Edit9.Text := Trim(sp_brlb.FieldByName('yjsprmc').AsString);
  end;
  if sp_brlb.FieldByName('ejsprmc').AsString<>'' then
  begin
     Edit10.Text := Trim(sp_brlb.FieldByName('ejsprmc').AsString);
  end;
   if sp_brlb.FieldByName('ksfzr').AsString=pub_czydm then
    begin
       Memo2.Enabled := True;
       Memo3.Enabled := True;
       edt_ksfzr.Text := pub_czyxm;
       Edit8.Text := pub_czyxm;
       ksfzr := pub_czydm;
       TabSheet4.Enabled := False;
    end;
    if sp_brlb.FieldByName('yjspr').AsString=pub_czydm then
    begin
       Memo4.Enabled := True;
       Edit9.Text := pub_czyxm;
       yjspr :=  pub_czydm;
       TabSheet4.Enabled := False;
    end;
     if sp_brlb.FieldByName('ejspr').AsString=pub_czydm then
    begin
       Memo5.Enabled := True;
       Edit10.Text := pub_czyxm;
       ejspr :=  pub_czydm;
       TabSheet4.Enabled := False;
    end;
//    bookmark := sp_brlb.GetBookmark;
end;

procedure Tfrm_ylaqsjbgb.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
    if Key=#13 then
    begin
       dbgrd_brjs.Visible := True;
       dbgrd_brjs.Height := 250;
       sp_brjs.Close;
       sp_brjs.Parameters.ParamByName('@sj').Value := Edit1.Text;
       sp_brjs.Open;
       dbgrd_brjs.SetFocus;
    end;

end;

procedure Tfrm_ylaqsjbgb.Edit6Exit(Sender: TObject);
begin
//    dbgrd_ry.Visible := False;
end;

procedure Tfrm_ylaqsjbgb.Edit6KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    dbgrd_ry.Visible := True;
    dbgrd_ry.Height := 200;
    sp_sbrcx.Close;
    sp_sbrcx.Parameters.ParamByName('@sj').Value := Trim(Edit6.Text);
    sp_sbrcx.Open;
    dbgrd_ry.SetFocus;
  end;
end;

procedure Tfrm_ylaqsjbgb.FormCreate(Sender: TObject);
begin
//   HorzScrollBar.Tracking := True;
//   VertScrollBar.Tracking := True;
end;

procedure Tfrm_ylaqsjbgb.FormShow(Sender: TObject);
var
   d : Integer;
begin
    d := 0;
    sp_brlb.Close;
    sp_brlb.Parameters.ParamByName('@ksmc').Value := Trim(pub_ksmc);
    sp_brlb.Parameters.ParamByName('@czy').Value := Trim(pub_czydm);
    sp_brlb.Open;
    qry_sjlb.Close;
    qry_sjlb.SQL.text :='select max(dm) as dm from blsj_sjlb';
    qry_sjlb.Open;
    lbnum :=StrToInt(qry_sjlb.FieldByName('dm').AsString);
    SetLength(check,lbnum);
    SetLength(lal,lbnum);
    spa := 0;
//  if FindComponent('sjlbchk0') = nil then
//  begin
//  end
//  else
//  begin
    for I := 0 to lbnum - 1 do
    begin
      check[i] := TCheckBox.Create(Self);
      check[i].Parent := TabSheet4;
      check[i].Width := 25;
      check[i].Height := 25;
      lal[i] := TLabel.Create(Self);
      lal[i].Parent := TabSheet4;
      lal[i].Width := 500;
      lal[i].Height := 30;
      lal[i].AutoSize := False;
      lal[i].WordWrap := True;
      if i < 9 then
      begin
        check[i].Left := 3;
         lal[i].Left := 28;
      end
      else
      begin
        check[i].Left := 550;
         lal[i].Left := 575;
        if i=9 then
          d := 0;

      end;
      check[i].Top := 300 + d;
      check[i].Name := 'sjlbchk' + inttostr(i);
      check[i].BringToFront;
      check[i].Caption := '';
      check[i].Visible := True;
      lal[i].Name := 'lal' + inttostr(i);
      qry_lbsj.Close;
      qry_lbsj.Parameters.ParamByName('dm').Value := I+1;
      qry_lbsj.Open;
      lal[i].Caption := Trim(qry_lbsj.FieldByName('sj').AsString);
      lal[i].Visible := True;
      lal[i].Top := 305 + d;
      lal[i].BringToFront;
      d := d + 30;
      cxDateEdit2.Text := DateToStr(Now());
      cxDateEdit3.Text := DateToStr(Now());
    end;
    frm_ylaqsjbgb.Height := Screen.Height-200;
    frm_ylaqsjbgb.Width := Screen.Width-400 ;
end;

procedure Tfrm_ylaqsjbgb.Memo1DblClick(Sender: TObject);
begin
    str_mbct:='';
 application.CreateForm(Tfrm_blsj_bqgcyy, frm_blsj_bqgcyy);
  try
    frm_blsj_bqgcyy.sjlb:='事件经过';
    frm_blsj_bqgcyy.ShowModal;
    if  str_mbct<>'' then
    memo1.Lines.Insert(1,str_mbct);
  finally
    frm_blsj_bqgcyy.free;
 end;
end;

procedure Tfrm_ylaqsjbgb.Memo2DblClick(Sender: TObject);
begin
     str_mbct:='';
 application.CreateForm(Tfrm_blsj_bqgcyy, frm_blsj_bqgcyy);
  try
    frm_blsj_bqgcyy.sjlb:='导致事件的原因';
    frm_blsj_bqgcyy.ShowModal;
    if  str_mbct<>'' then
    Memo2.Lines.Insert(1,str_mbct);
  finally
    frm_blsj_bqgcyy.free;
 end;
end;

procedure Tfrm_ylaqsjbgb.Memo3DblClick(Sender: TObject);
begin
   str_mbct:='';
 application.CreateForm(Tfrm_blsj_bqgcyy, frm_blsj_bqgcyy);
  try
    frm_blsj_bqgcyy.sjlb:='事件处理情况';
    frm_blsj_bqgcyy.ShowModal;
    if  str_mbct<>'' then
    Memo3.Lines.Insert(1,str_mbct);
  finally
    frm_blsj_bqgcyy.free;
 end;
end;

procedure Tfrm_ylaqsjbgb.Memo4DblClick(Sender: TObject);
begin
  str_mbct:='';
 application.CreateForm(Tfrm_blsj_bqgcyy, frm_blsj_bqgcyy);
  try
    frm_blsj_bqgcyy.sjlb:='不良事件评价';
    frm_blsj_bqgcyy.ShowModal;
    if  str_mbct<>'' then
    Memo4.Lines.Insert(0,str_mbct);
  finally
    frm_blsj_bqgcyy.free;
 end;
end;

procedure Tfrm_ylaqsjbgb.Memo5DblClick(Sender: TObject);
begin
    str_mbct:='';
 application.CreateForm(Tfrm_blsj_bqgcyy, frm_blsj_bqgcyy);
  try
    frm_blsj_bqgcyy.sjlb:='持续改进措施';
    frm_blsj_bqgcyy.ShowModal;
    if  str_mbct<>'' then
    Memo5.Lines.Insert(0,str_mbct);
  finally
    frm_blsj_bqgcyy.free;
 end;
end;

procedure Tfrm_ylaqsjbgb.N1Click(Sender: TObject);
begin
  if tmh='' then
  begin
     tmh := Trim(Edit4.Text);
  end;
  saveblsj;
  tjsx := '';
  application.CreateForm(Tfrm_tjjm, frm_tjjm);
  try
    tjsx := '科室负责人';
     frm_tjjm.ShowModal;
  finally
     frm_tjjm.free;
  end;
end;

procedure Tfrm_ylaqsjbgb.N2Click(Sender: TObject);
begin
   if tmh='' then
  begin
     tmh := Trim(Edit4.Text);
  end;
  saveblsj;
//  sp_brlb.GotoBookmark(bookmark);
  tjsx := '';
  if sp_brlb.FieldByName('yjdh').AsString='0' then
  begin
    ShowMessage('还未提交至科室负责人！请按流程进行提交');
    exit;
  end;
  application.CreateForm(Tfrm_tjjm, frm_tjjm);
  try
    tjsx := '职能部门';
     frm_tjjm.ShowModal;
  finally
     frm_tjjm.free;
  end;
  sp_brlb.Close;
  sp_brlb.Parameters.ParamByName('@ksmc').Value := Trim(pub_ksmc);
  sp_brlb.Parameters.ParamByName('@czy').Value := Trim(pub_czydm);
  sp_brlb.Open;
end;

procedure Tfrm_ylaqsjbgb.N3Click(Sender: TObject);
begin
   if tmh='' then
  begin
     tmh := Trim(Edit4.Text);
  end;
   saveblsj;
//   sp_brlb.GotoBookmark(bookmark);
   tjsx := '';
  if sp_brlb.FieldByName('ejdh').AsString='0' then
  begin
    ShowMessage('还未提交至职能部门！请按流程进行提交');
    exit;
  end;
  application.CreateForm(Tfrm_tjjm, frm_tjjm);
  try
    tjsx := '质控科';
     frm_tjjm.ShowModal;
  finally
     frm_tjjm.free;
  end;
  sp_brlb.Close;
  sp_brlb.Parameters.ParamByName('@ksmc').Value := Trim(pub_ksmc);
  sp_brlb.Parameters.ParamByName('@czy').Value := Trim(pub_czydm);
  sp_brlb.Open;
end;

procedure Tfrm_ylaqsjbgb.N4Click(Sender: TObject);
begin
   if MessageBox(Handle,'是否确定删除此不良事件？','提示',MB_ICONINFORMATION+MB_OkCancel)= idOk  then
   begin
   qry_del.Close;
   qry_del.SQL.Text := 'delete  zybl_ylaqsjbg where tmh='+#39+Trim(sp_brlb.FieldByName('tmh').AsString)+#39;
   qry_del.ExecSQL;
   sp_brlb.Close;
   sp_brlb.Open;
   end;
end;

procedure Tfrm_ylaqsjbgb.TabSheet1Show(Sender: TObject);
begin
  sp_brlb.Close;
  sp_brlb.Parameters.ParamByName('@ksmc').Value := Trim(pub_ksmc);
  sp_brlb.Parameters.ParamByName('@czy').Value := Trim(pub_czydm);
  sp_brlb.Open;
end;

procedure Tfrm_ylaqsjbgb.TabSheet2Show(Sender: TObject);
begin
   cxDateEdit4.Text := DateToStr(Now());
   cxDateEdit5.Text := DateToStr(Now());
   DBGrid2.Height := Screen.Height-120;
end;

procedure Tfrm_ylaqsjbgb.TabSheet3Show(Sender: TObject);
begin
   cxDateEdit6.Text := DateToStr(Now());
   cxDateEdit7.Text := DateToStr(Now());
   cxGrid1.Height := Screen.Height-120;
end;

procedure Tfrm_ylaqsjbgb.TabSheet5Show(Sender: TObject);
begin
   Panel4.Height := Screen.Height;
   Panel4.Width := Screen.Width;
end;

procedure Tfrm_ylaqsjbgb.qksj;
begin
    Edit1.Text :='';
    Edit2.Text :='';
    Edit3.Text :='';
    Edit4.Text :='';
    Edit5.Text :='';
    Edit6.Text :='';
    Edit7.Text :='';
    cxDateEdit1.Text :='';
    cxDateEdit2.Text :='';
    cxDateEdit3.Text :='';
    CheckBox1.Checked := False;
    CheckBox2.Checked := False;
    Memo1.clear;
    for I := 0 to lbnum - 1 do
      begin
        check[i].Checked := False;
      end;
    checkbox3.Checked := False;
    checkbox4.Checked := False;
    checkbox5.Checked := False;
    checkbox6.Checked := False;
    Memo2.Clear;
    Memo2.Lines.Insert(0,'导致事件的可能原因:');
    Memo3.Clear;
    Memo3.Lines.Insert(0,'事件处理情况（提供补救措施或改善建议）:');
    Memo4.Clear;
    Memo5.Clear;
end;

procedure  Tfrm_ylaqsjbgb.saveblsj;
var
    bcsj : TADOQuery;
begin
  if ((Trim(sp_brlb.FieldByName('ksfzr').AsString) = '') and (Trim(sp_brlb.FieldByName('yjspr').AsString) = '') and (Trim(sp_brlb.FieldByName('ejspr').AsString) = '')) then
  begin
    try
      sp_xrjbxx.Close;
      sp_xrjbxx.Parameters.Refresh;
      sp_xrjbxx.Parameters.ParamByName('@brxm').Value := Trim(Edit1.Text);
      sp_xrjbxx.Parameters.ParamByName('@brxb').Value := Trim(Edit2.Text);
      sp_xrjbxx.Parameters.ParamByName('@brnl').Value := Trim(Edit3.Text);
      sp_xrjbxx.Parameters.ParamByName('@tmh').Value := Trim(Edit4.Text);
      sp_xrjbxx.Parameters.ParamByName('@ks').Value := Trim(Edit5.Text);
      sp_xrjbxx.Parameters.ParamByName('@ryrq').Value := Trim(cxDateEdit1.Text);
      sp_xrjbxx.Parameters.ParamByName('@fsrq').Value := Trim(cxDateEdit2.Text);
      sp_xrjbxx.Parameters.ParamByName('@sbrq').Value := Trim(cxDateEdit3.Text);
      sp_xrjbxx.Parameters.ParamByName('@bgr').Value := Trim(Edit6.Text);
      sp_xrjbxx.Parameters.ParamByName('@brzd').Value := Trim(Edit7.Text);
      sp_xrjbxx.Parameters.ParamByName('@sjjg').Value := Trim(Memo1.Lines.Text);
      sp_xrjbxx.Parameters.ParamByName('@blsjlb').Value := sjlb;
      sp_xrjbxx.Parameters.ParamByName('@blsjdj').Value := blsjlev;
      sp_xrjbxx.Parameters.ParamByName('@sjknyy').Value := Trim(Memo2.Lines.Text);
      sp_xrjbxx.Parameters.ParamByName('@sjclqk').Value := Trim(Memo3.Lines.Text);
      sp_xrjbxx.Parameters.ParamByName('@blsjpj').Value := Trim(Memo4.Lines.Text);
      sp_xrjbxx.Parameters.ParamByName('@cxgjcs').Value := Trim(Memo5.Lines.Text);
      sp_xrjbxx.Parameters.ParamByName('@ksfzr').Value := ksfzr;
      sp_xrjbxx.Parameters.ParamByName('@yjspr').Value := yjspr;
      sp_xrjbxx.Parameters.ParamByName('@ejspr').Value := ejspr;
      sp_xrjbxx.Parameters.ParamByName('@blhg').Value := blhg;
      sp_xrjbxx.Parameters.ParamByName('@yjdh').Value := 0;
      sp_xrjbxx.Parameters.ParamByName('@wcgd').Value := 0;
      sp_xrjbxx.ExecProc;
      ShowMessage('保存成功！');
    except
      ShowMessage('未成功保存数据！');
    end;
  end
  else if sp_brlb.FieldByName('ksfzr').AsString = pub_czydm then
  begin
    try
      bcsj := TADOQuery.Create(Self);
      bcsj.Connection := p_dm.DM_data.ado_mydata;
      bcsj.Close;
      bcsj.SQL.Text :='update zybl_ylaqsjbg set sjknyy='+#39+trim(memo2.Lines.Text)+#39+',sjclqk='+#39+trim(memo3.Lines.Text)+#39+', yjdh='+#39+'1'+#39+' where tmh='+#39+Trim(Edit4.Text)+#39+'  '+'update zybl_ylaqsjbg_dhyy set yjdhyy='+#39+''+#39+'where tmh='+#39+Trim(Edit4.Text)+#39;
      bcsj.ExecSQL;
      ShowMessage('保存成功！');
      bcsj.Free;
    except
      ShowMessage('未成功保存数据！');
    end;
  end
  else if sp_brlb.FieldByName('yjspr').AsString = pub_czydm then
  begin
    try
      bcsj := TADOQuery.Create(Self);
      bcsj.Connection := p_dm.DM_data.ado_mydata;
      bcsj.Close;
      bcsj.SQL.Text := 'update zybl_ylaqsjbg set blsjpj='+#39+trim(memo4.Lines.Text)+#39+', ejdh='+#39+'1'+#39+' where tmh='+#39+Trim(Edit4.Text)+#39+'  '+'update zybl_ylaqsjbg_dhyy set ejdhyy='+#39+''+#39+'where tmh='+#39+Trim(Edit4.Text)+#39;
      bcsj.ExecSQL;
      ShowMessage('保存成功！');
      bcsj.Free;
    except
      ShowMessage('未成功保存数据！');
    end;
  end
  else if sp_brlb.FieldByName('ejspr').AsString = pub_czydm then
  begin
    try
      bcsj := TADOQuery.Create(Self);
      bcsj.Connection := p_dm.DM_data.ado_mydata;
      bcsj.Close;
      bcsj.SQL.Text := 'update zybl_ylaqsjbg set cxgjcs='+#39+trim(memo5.Lines.Text)+#39+' where tmh='+#39+Trim(Edit4.Text)+#39+'  '+'update zybl_ylaqsjbg_dhyy set sjdhyy='+#39+''+#39+'where tmh='+#39+Trim(Edit4.Text)+#39;
      bcsj.ExecSQL;
      ShowMessage('保存成功！请打印报告单！进行完成操作');
      bcsj.Free;
    except
      ShowMessage('未成功保存数据！');
    end;
  end
end;
end.
