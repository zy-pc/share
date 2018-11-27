unit p_zydpsz;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, StdCtrls, Buttons, ExtCtrls, DBGrids, Grids, DBGridEh, ComCtrls,
  ADODB, Db;

type
  Tfrm_zydpsz = class(TForm)
    DBGridEh1: TDBGridEh;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    bt_save: TBitBtn;
    bt_close: TBitBtn;
    bt_cancel: TBitBtn;
    CheckBox1: TCheckBox;
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    gg: TEdit;
    Label5: TLabel;
    dw: TEdit;
    Label7: TLabel;
    cb_sybz: TCheckBox;
    DBL_yf: TDBLookupComboBox;
    Label6: TLabel;
    e_yppg: TEdit;
    Label3: TLabel;
    e_pgbs: TEdit;
    Label4: TLabel;
    yp: TEdit;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label11: TLabel;
    Edit4: TEdit;
    qry_yppgsz: TADOQuery;
    ds_yppgsz: TDataSource;
    qry_ypdm: TADOQuery;
    ds_ypdm: TDataSource;
    qry_ksdm: TADOQuery;
    ds_ksdm: TDataSource;
    Label13: TLabel;
    Edit5: TEdit;
    Qry_save: TADOQuery;
    RadioGroup1: TRadioGroup;
    Label12: TLabel;
    procedure bt_closeClick(Sender: TObject);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure Edit4Change(Sender: TObject);
    procedure ypKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1Exit(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure qry_yppgszAfterScroll(DataSet: TDataSet);
    procedure CheckBox1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CheckBox1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure bt_cancelClick(Sender: TObject);
    procedure bt_saveClick(Sender: TObject);
    procedure Edit5KeyPress(Sender: TObject; var Key: Char);
    procedure Edit5Exit(Sender: TObject);
    procedure DBGridEh1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure Edit5Change(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
  private
    procedure displayxx;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_zydpsz: Tfrm_zydpsz;

implementation

uses p_dm;

{$R *.DFM}

procedure Tfrm_zydpsz.displayxx;
begin
  Qry_yppgsz.Close;
  Qry_yppgsz.SQL.Clear;
  Qry_yppgsz.SQL.Add('select a.ypdm ypdm,a.ypmc ypmc,a.ypgg ypgg,a.mzyfdw ypdw,');
  Qry_yppgsz.SQL.Add(' b.pgbs pgbs,b.yppg yppg,b.sybz sybz,b.yfdm yfdm,b.pgsl pgsl,b.zydp zydp');
  if RadioGroup1.ItemIndex = 0 then
    Qry_yppgsz.SQL.Add(' from sys_ypdm a,ch_yppgsz b where (b.pgbs<>'''' or b.pgbs<>null) and a.ypdm=b.ypdm '
    +' and a.yplb like ''' + '0201' + '%' + ''' order by a.ypdm')
    else
  if RadioGroup1.ItemIndex = 1 then
    Qry_yppgsz.SQL.Add(' from sys_ypdm a,ch_yppgsz b where (b.zydp<>'''' or b.zydp<>null) and a.ypdm=b.ypdm '
    +' and a.yplb like ''' + '0201' + '%' + ''' order by b.zydp')
  else
    Qry_yppgsz.SQL.Add(' from sys_ypdm a,ch_yppgsz b where a.ypdm*=b.ypdm and a.yplb like '''
    + '0201' + '%' + ''' order by a.ypdm');
  Qry_yppgsz.Open;
  if (checkbox1.Checked = True) and (trim(yp.text) <> '') then
  begin
    Qry_yppgsz.Filter := ' ypmc=''' + Trim(yp.text) + '''';
    Qry_yppgsz.Filtered := True;
  end
  else
    Qry_yppgsz.Filtered := False;
end;

procedure Tfrm_zydpsz.bt_closeClick(Sender: TObject);
begin
  close;
end;

procedure Tfrm_zydpsz.Edit4KeyPress(Sender: TObject; var Key: Char);
begin
  if not ((Key in ['0'..'9']) or (Key = #13) or (Key = #8)) then
  begin
    Application.MessageBox('斗谱只能用数字表示，请输入数字！', '操作提示', 16);
    edit4.SelectAll;
    edit4.SetFocus;
    Abort;
  end
  else
    if KEy = #13 then edit5.SetFocus;
end;

procedure Tfrm_zydpsz.Edit4Change(Sender: TObject);
var
  ss: string;
begin
  if length(Trim(Edit4.text)) > 4 then
  begin
    Application.MessageBox('只能输入四位数！', '操作提示', 16);
    Edit4.Text := copy(trim(edit4.text), 0, 4);
    Edit4.SelectAll;
    Edit4.SetFocus;
    Abort;
  end
  else
    if (Trim(Edit4.text) <> '') and (length(Trim(Edit4.text)) = 4) then
    begin
      ss := Trim(Edit4.text);
      edit1.Text := copy(ss, 0, 2);
      edit2.Text := copy(ss, 3, 1);
      edit3.Text := copy(ss, 4, 1);
    end;
  if edit4.focused then
  begin
    bt_save.Enabled := True;
    bt_cancel.Enabled := True;
  end;
end;

procedure Tfrm_zydpsz.ypKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Qry_ypdm.Close;
    Qry_ypdm.SQL.Clear;
    Qry_ypdm.SQL.Add('select ypdm,ypmc,ypgg,mzyfdw ypdw from sys_ypdm ');
    Qry_ypdm.SQL.Add(' where yplb like ''' + '0201%' + ''' and (zjm like ''' + uppercase(Trim(yp.text)) + '%'
      + ''' or pym like ''' + '%' + uppercase(Trim(yp.text)) + '%' + ''' or pym1 like ''' +
      uppercase(Trim(yp.text)) + '%' + ''' or ypmc like ''' + Trim(yp.text) + '%'
      + ''' or ypdm=''' + Trim(yp.text) + ''')');
    Qry_ypdm.Open;
    if Qry_ypdm.RecordCount <= 0 then
    begin
      Application.MessageBox('未查询到该药品！', '操作提示', 16);
      yp.SelectAll;
      yp.SetFocus;
      Abort;
    end
    else
      if Qry_ypdm.RecordCount = 1 then
      begin
        if not Qry_yppgsz.Locate('ypdm', Qry_ypdm['ypdm'], []) then
        begin
          RadioGroup1.ItemIndex:=2;
          Displayxx;
          Qry_yppgsz.Locate('ypdm', Qry_ypdm['ypdm'], []);
        end
        else
          Qry_yppgsz.Locate('ypdm', Qry_ypdm['ypdm'], []);
        edit4.SelectAll;
        edit4.SetFocus;
      end
      else
      begin
        DBgrid1.Top := panel1.ClientHeight + yp.Top + yp.ClientHeight + 5;
        Dbgrid1.Left := yp.Left;
        DBgrid1.Visible := True;
        Dbgrid1.SetFocus;
      end;
  end;
end;

procedure Tfrm_zydpsz.DBGrid1Exit(Sender: TObject);
begin
  if not Qry_yppgsz.Locate('ypdm', Qry_ypdm['ypdm'], []) then
  begin
    RadioGroup1.ItemIndex :=2;
    Displayxx;
    Qry_yppgsz.Locate('ypdm', Qry_ypdm['ypdm'], []);
  end;
  Dbgrid1.Visible := False;
  edit4.SelectAll;
  edit4.SetFocus;
end;

procedure Tfrm_zydpsz.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if KEy = #13 then edit4.SetFocus;
end;

procedure Tfrm_zydpsz.FormCreate(Sender: TObject);
begin
  Qry_ksdm.Close;
  Qry_ksdm.Open;
  RadioGroup1.ItemIndex:=0;
  displayxx;
end;

procedure Tfrm_zydpsz.qry_yppgszAfterScroll(DataSet: TDataSet);
begin
  if (qry_yppgsz.Active = True) then
  begin
    Label7.Caption := '记录数：' + inttostr(qry_yppgsz.RecordCount) + '个';
    if (qry_yppgsz.RecordCount > 0) then
    begin
      Label7.Caption := '记录数：' + inttostr(qry_yppgsz.RecordCount) + '个';
      if not qry_yppgsz.FieldByName('ypmc').isnull then
        yp.Text := Trim(qry_yppgsz.FieldByName('ypmc').asstring);
      if not qry_yppgsz.FieldByName('ypgg').isnull then
        gg.Text := Trim(qry_yppgsz.FieldByName('ypgg').asstring);
      if not qry_yppgsz.FieldByName('ypdw').isnull then
        dw.Text := Trim(qry_yppgsz.FieldByName('ypdw').asstring);
      if not qry_yppgsz.FieldByName('pgbs').isnull then
        e_pgbs.Text := Trim(qry_yppgsz.FieldByName('pgbs').asstring);
      if not qry_yppgsz.FieldByName('yppg').isnull then
        e_yppg.Text := Trim(qry_yppgsz.FieldByName('yppg').asstring);
      if not qry_yppgsz.FieldByName('yfdm').isnull then
        DBL_yf.KeyValue := Trim(qry_yppgsz.FieldByName('yfdm').asstring);
      if not qry_yppgsz.FieldByName('sybz').isnull then
        cb_sybz.Checked := qry_yppgsz.FieldByName('sybz').asboolean;
      if not qry_yppgsz.FieldByName('pgsl').isnull then
        edit5.text := qry_yppgsz.FieldByName('pgsl').asstring;
      if not qry_yppgsz.FieldByName('zydp').isnull then
        edit4.text := trim(qry_yppgsz.FieldByName('zydp').asstring);
    end;
  end;
end;

procedure Tfrm_zydpsz.CheckBox1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (checkbox1.Checked = True) and (trim(yp.text) <> '') then
  begin
    Qry_yppgsz.Filter := ' ypmc=''' + Trim(yp.text) + '''';
    Qry_yppgsz.Filtered := True;
  end
  else
    Qry_yppgsz.Filtered := False;
end;

procedure Tfrm_zydpsz.CheckBox1MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if (checkbox1.Checked = True) and (trim(yp.text) <> '') then
  begin
    Qry_yppgsz.Filter := ' ypmc=''' + Trim(yp.text) + '''';
    Qry_yppgsz.Filtered := True;
  end
  else
    Qry_yppgsz.Filtered := False;
end;

procedure Tfrm_zydpsz.bt_cancelClick(Sender: TObject);
begin
  if edit4.Focused then edit4.Undo;
  if edit4.Focused then edit4.Undo;
  Qry_yppgsz.AfterScroll(ds_yppgsz.DataSet);
  bt_save.Enabled := False;
  bt_cancel.Enabled := False;
end;

procedure Tfrm_zydpsz.bt_saveClick(Sender: TObject);
var
  dp_str, ypdm_Str, pg_str,tmp_sybz: string;
  i: integer;
begin
  i := 0;
  if qry_yppgsz.fieldbyname('sybz').isnull then
  tmp_sybz:='null'
  else
  tmp_sybz := qry_yppgsz.fieldbyname('sybz').asstring;
  
  dp_str := trim(Edit4.text);
    ypdm_Str := qry_yppgsz['ypdm'];
  if qry_yppgsz.FieldByName('pgbs').isnull then
    pg_str := ''
  else
    pg_str := trim(qry_yppgsz['pgbs']);
  if (length(trim(Edit4.text)) >0 ) and (length(trim(Edit4.text)) < 4) then
  begin
    Application.MessageBox('斗谱输入不完整，必须是架号+层号+斗号=4位，请重新输入！', '操作提示', 16);
    Edit4.SelectAll;
    edit4.SetFocus;
    Abort;
  end
  else
if length(trim(Edit4.text))=0 then
   if Application.MessageBox('斗谱为空将清除当前药品的斗谱，是否继续？（Y/N）', '操作提示', mb_YESNO + mb_defbutton1 + MB_iconQuestion) = IDNO then abort;

  if Trim(DBL_yf.Text) = '' then
  begin
    Application.MessageBox('该药品没有所属药房，请重新选择药品设定！', '操作提示', 16);
    DBGridEh1.SetFocus;
    Abort;
  end;
if length(trim(Edit4.text))>0 then
begin
  Qry_save.Close;
  Qry_save.SQL.Clear;
  Qry_save.SQL.Add('select rtrim(a.ypdm) ypdm,isnull(rtrim(a.pgbs),'''') pgbs,isnull(rtrim(a.zydp),'''') zydp,'
  +'rtrim(b.ypmc) ypmc from ch_yppgsz a,sys_ypdm b  where a.ypdm=b.ypdm and isnull(rtrim(a.zydp),'''')=''' + dp_str + '''');
  Qry_save.Open;
  if Qry_save.RecordCount > 0 then
  begin
    if (Qry_save['ypdm'] <> ypdm_Str) or (qry_save['pgbs'] <> pg_str) then
    begin
      Application.MessageBox(pchar('当前斗谱已分配给了【' + qry_save.FieldByName('ypmc').asstring + '】的品规：〖' +
        qry_save.FieldByName('pgbs').asstring + '〗，请重新分配斗谱！'), '操作提示', 16);
      Edit4.SelectAll;
      Edit4.SetFocus;
      Abort;
    end
    else
      i := 11;
  end;
  end;
  Qry_save.Close;
  Qry_save.SQL.Clear;
  Qry_save.SQL.Add('select * from ch_yppgsz where ypdm=''' + ypdm_str + ''' and pgbs='''+pg_str+'''');
  Qry_save.Open;
  if Qry_save.RecordCount > 0 then
  i := 11;
  if (Trim(Edit5.text) = '0') and (length(trim(Edit4.text))>0) then
    if Application.MessageBox('存量为0，是否继续？（Y/N）', '操作提示', mb_YESNO + mb_defbutton1 + MB_iconQuestion) = IDNO then abort;
  if (length(trim(Edit4.text))=0) then edit5.text :='0';
  Qry_save.Close;
  Qry_save.SQL.Clear;
  if i = 0 then
    QRy_save.SQL.Add('insert into ch_yppgsz (yfdm,ypdm,pgbs,yppg,sybz,pgsl,zydp) values('''
      + DBL_yf.keyvalue + ''',''' + ypdm_str + ''',''' + pg_str + ''',null,'+tmp_sybz+',' + edit5.text + ',''' + dp_str + ''')')
  else
    Qry_save.SQL.Add('update ch_yppgsz set pgsl=' + Edit5.text + ',zydp='''
      + dp_str + ''' where ypdm=''' + ypdm_str + ''' and pgbs=''' + pg_str + '''');
  try
    Qry_save.ExecSQL;
  except
    Application.MessageBox('中药斗谱信息设置失败，请重试！', '保存信息', 16);
    Abort;
  end;
  Qry_yppgsz.Close;
  Qry_yppgsz.Open;
  Qry_yppgsz.Locate('ypdm', ypdm_str, []);
  bt_save.Enabled := False;
  bt_cancel.Enabled := False;
  if not Qry_yppgsz.Eof then Qry_yppgsz.Next;
  DBgrideh1.SetFocus;
end;

procedure Tfrm_zydpsz.Edit5KeyPress(Sender: TObject; var Key: Char);
begin
  if bt_save.Enabled = True then
  begin
    if not ((Key in ['0'..'9']) or (Key = #13) or (Key = #8)) then
    begin
      Application.MessageBox('数量只能用数字表示，请输入数字！', '操作提示', 16);
      edit5.SelectAll;
      edit5.SetFocus;
      Abort;
    end
    else
      if KEy = #13 then
      begin
      if trim(Edit5.text)='' then edit5.text :='0';
      bt_save.Click;
      end;
  end;
end;

procedure Tfrm_zydpsz.Edit5Exit(Sender: TObject);
begin
  if trim(Edit5.text) = '' then Edit5.text := '0';
end;

procedure Tfrm_zydpsz.DBGridEh1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    edit4.SelectAll;
    edit4.SetFocus;
  end;
end;

procedure Tfrm_zydpsz.DBGridEh1DblClick(Sender: TObject);
begin
  edit4.SelectAll;
  edit4.SetFocus;
end;

procedure Tfrm_zydpsz.Edit5Change(Sender: TObject);
begin
  if edit5.focused then
  begin
    bt_save.Enabled := True;
    bt_cancel.Enabled := True;
  end;
end;

procedure Tfrm_zydpsz.RadioGroup1Click(Sender: TObject);
begin
  displayxx;
end;

end.

