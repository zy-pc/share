unit P_srmbtj;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxLookAndFeelPainters, StdCtrls, cxButtons, cxControls, cxContainer,
  cxEdit, cxGroupBox, ExtCtrls, cxMemo, cxDBEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, DB, ADODB,
  cxLabel, cxRadioGroup, Grids, DBGrids, cxGraphics, Menus;

type
  Tfrm_srmbtj = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    qry_bq: TADOQuery;
    qry_xm: TADOQuery;
    ds_xm: TDataSource;
    ds_bq: TDataSource;
    Panel4: TPanel;
    cxGroupBox3: TcxGroupBox;
    cxGroupBox4: TcxGroupBox;
    cxGroupBox1: TcxGroupBox;
    cxGroupBox2: TcxGroupBox;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBMemo1: TcxDBMemo;
    qry_srmb: TADOQuery;
    ds_srmb: TDataSource;
    cxRadioGroup1: TcxRadioGroup;
    cxRadioButton1: TcxRadioButton;
    cxRadioButton2: TcxRadioButton;
    cxRadioButton3: TcxRadioButton;
    cxLookupComboBox2: TcxLookupComboBox;
    cxLookupComboBox1: TcxLookupComboBox;
    qry_date: TADOQuery;
    cxb_save: TcxButton;
    cxB_exit: TcxButton;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxLookupComboBox1Enter(Sender: TObject);
    procedure cxLookupComboBox1PropertiesCloseUp(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
  private
    { Private declarations }
    procedure proc_add_xm;
    procedure proc_add_bq;
    function  func_check: Boolean;//返回TRUE表示输入正确,FALSE表示失败;
    procedure proc_set_environment(mbdm: String);
  public
    pub_cz: Integer;//当前操作;1.表示新加;2.表示修改;
    pub_id: Integer;//当前输入模板对应ID;
    pub_mbdm,pub_mbmc,pub_dynr: string;
    { Public declarations }
//    procedure proc_save(cz: integer);
  end;
const const_pub_xmsize= 9;
      const_pub_bqsize= 11;
var
  frm_srmbtj: Tfrm_srmbtj;
implementation

uses p_dm;

{$R *.dfm}
function Tfrm_srmbtj.func_check: boolean;
begin
  if not (cxRadioButton1.Checked or cxRadioButton2.Checked or cxRadioButton3.Checked) then
  begin
    result:=false;
    application.MessageBox('提示:请选择输入模板属性!','提示',16);
    exit;
  end;
  if cxLookupComboBox1.Text = '' then
  begin
    result:=false;
    cxLookupComboBox1.SetFocus;
    application.MessageBox('提示:请选择模板所属项目!','提示',16);
    exit;
  end;
  if cxLookupComboBox2.Text = '' then
  begin
    result:=false;
    cxLookupComboBox2.SetFocus;
    application.MessageBox('提示:请选择模板所属专业!','提示',16);
    exit;
  end;
  if qry_srmb.FieldByName('mbmc').IsNull then
  begin
    result:= false;
    cxDBTextEdit2.SetFocus;
    application.MessageBox('提示:请输入模板名称,以供以后查询方便!','提示',16);
    exit;
  end;
  if qry_srmb.FieldByName('dynr').IsNull then
  begin
    result:= false;
    cxdbmemo1.SetFocus;
    application.MessageBox('提示:请输入模板内容,以供以后使用!','提示',16);
    exit;
  end;

  result:= true;
end;
procedure Tfrm_srmbtj.proc_add_xm;
var mbdm: string;
begin
  if cxRadioButton1.Checked then
    mbdm := 'A%'
  else if cxRadioButton2.Checked then
    mbdm := 'B%'
  else if cxRadioButton3.Checked then
    mbdm := 'C%';

  with qry_xm do
  begin
    Close;
    Parameters.ParamByName('mbdm').Value:= mbdm;
    Parameters.ParamByName('czy').Value:= pub_czyxm;
    Parameters.ParamByName('size').Value:= const_pub_xmsize;
    Open;
  end;
end;
procedure Tfrm_srmbtj.proc_add_bq;
begin
  with qry_bq do
  begin
    Close;
    Parameters.ParamByName('mbdm').Value:= trim(qry_xm.FieldByName('mbdm').AsString) + '%';
    Parameters.ParamByName('czy').Value:= pub_czyxm;
    Parameters.ParamByName('size').Value:= const_pub_bqsize;
    Open;
  end;
end;
procedure Tfrm_srmbtj.proc_set_environment(mbdm: String);
var str1,str2,str3: String;
begin
  if mbdm <> '' then
  begin
    str1:= Copy(mbdm,0,1);
    str2:= Copy(mbdm,0,9);
    str3:= Copy(mbdm,0,12);

    cxRadioButton1.Checked:= (str1 = 'A');
    cxRadioButton2.Checked:= (str1 = 'B');
    cxRadioButton3.Checked:= (str1 = 'C');

    proc_add_xm;
    cxLookupComboBox1.EditValue:= str2;

    proc_add_bq;
    cxLookupComboBox2.EditValue:= str3;
  end
  else
  begin
    cxRadioButton3.Checked:=true;
    proc_add_xm;
    proc_add_bq;
  end;
end;

procedure Tfrm_srmbtj.cxButton1Click(Sender: TObject);
begin
  if not func_check then exit;

  with qry_date do
  begin
    Close;
    Open;
  end;

  with qry_srmb do
  begin
    Edit;
    FieldByName('mbdm').AsString:= trim(qry_bq.FieldByName('mbdm').AsString);
    FieldByName('yyzydm').AsString:= trim(qry_bq.FieldByName('bqdm').AsString);
    FieldByName('yyzymc').AsString:= trim(qry_bq.FieldByName('mbmc').AsString);
    FieldByName('dyxm').AsString:= trim(qry_xm.FieldByName('mbmc').AsString);
    FieldByName('jlr').AsString:= pub_czyxm;
    FieldByName('jlrq').AsDateTime:= qry_date.FieldByName('jlrq').AsDateTime;
    FieldByName('sybz').AsBoolean:= false;
    Post;
  end;

  DM_data.ado_mydata.BeginTrans;
  try
    qry_srmb.UpdateBatch();
    DM_data.ado_mydata.CommitTrans;
    qry_srmb.Append;
  except
    DM_data.ado_mydata.RollbackTrans;
    application.MessageBox('错误提示:数据保存到数据库失败,请检查后重试!','错误提示',16);
  end;
end;

procedure Tfrm_srmbtj.cxButton3Click(Sender: TObject);
begin
  Close;
end;

procedure Tfrm_srmbtj.FormShow(Sender: TObject);
begin
  with qry_srmb do
  begin
    Close;
    Parameters.ParamByName('mbid').Value:= pub_id;
    Open;
    if pub_cz = 1 then
    begin
      Edit;
      FieldByName('dynr').AsString:= pub_dynr;
      Post;
    end;
  end;

  proc_set_environment(pub_mbdm);
end;

procedure Tfrm_srmbtj.cxLookupComboBox1PropertiesCloseUp(Sender: TObject);
begin
  proc_add_bq;
end;

procedure Tfrm_srmbtj.cxLookupComboBox1Enter(Sender: TObject);
begin
  proc_add_xm;
end;

procedure Tfrm_srmbtj.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = 13) and (activecontrol <> cxDBmemo1) then
    selectnext(activecontrol,True,True);
end;

end.
