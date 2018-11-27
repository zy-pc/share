unit p_zypgsz;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Buttons, Grids, DBGridEh, Db, ADODB, DBGrids, DBCtrls,
  GridsEh;

type
  Tfrm_zypgsz = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    yp: TEdit;
    Label2: TLabel;
    gg: TEdit;
    Label5: TLabel;
    dw: TEdit;
    Label3: TLabel;
    e_yppg: TEdit;
    Label4: TLabel;
    e_pgbs: TEdit;
    bt_save: TBitBtn;
    bt_close: TBitBtn;
    DBGridEh1: TDBGridEh;
    qry_yppgsz: TADOQuery;
    qry_ypdm: TADOQuery;
    ds_yppgsz: TDataSource;
    DBGrid1: TDBGrid;
    cb_sybz: TCheckBox;
    Label6: TLabel;
    DBL_yf: TDBLookupComboBox;
    qry_ksdm: TADOQuery;
    ds_ksdm: TDataSource;
    CheckBox2: TCheckBox;
    bt_cancel: TBitBtn;
    ds_ypdm: TDataSource;
    Label7: TLabel;
    sp_save: TADOStoredProc;
    Label8: TLabel;
    CheckBox1: TCheckBox;
    procedure bt_closeClick(Sender: TObject);
    procedure CheckBox2KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CheckBox2MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure e_pgbsChange(Sender: TObject);
    procedure ypKeyPress(Sender: TObject; var Key: Char);
    procedure qry_yppgszAfterScroll(DataSet: TDataSet);
    procedure DBGrid1Exit(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure e_yppgKeyPress(Sender: TObject; var Key: Char);
    procedure e_yppgExit(Sender: TObject);
    procedure bt_cancelClick(Sender: TObject);
    procedure e_yppgChange(Sender: TObject);
    procedure bt_saveClick(Sender: TObject);
    procedure cb_sybzKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cb_sybzMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure DBL_yfCloseUp(Sender: TObject);
    procedure e_pgbsKeyPress(Sender: TObject; var Key: Char);
    procedure CheckBox1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CheckBox1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure DBL_yfKeyPress(Sender: TObject; var Key: Char);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure DBGridEh1KeyPress(Sender: TObject; var Key: Char);
  private
    procedure displayxx;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_zypgsz: Tfrm_zypgsz;

implementation

uses p_dm;

{$R *.DFM}

procedure Tfrm_zypgsz.displayxx;
begin
  Qry_yppgsz.Close;
  Qry_yppgsz.SQL.Clear;
  Qry_yppgsz.SQL.Add('select a.ypdm ypdm,a.ypmc ypmc,a.ypgg ypgg,a.mzyfdw ypdw,');
  Qry_yppgsz.SQL.Add(' b.pgbs pgbs,b.yppg yppg,b.sybz sybz,b.yfdm yfdm');
  if checkbox2.Checked = True then
    Qry_yppgsz.SQL.Add(' from sys_ypdm a,xyf_yppgsz b where a.ypdm=b.ypdm and a.yplb like ''' + '0201' + '%' + ''' order by a.ypdm')
  else
    Qry_yppgsz.SQL.Add(' from sys_ypdm a,xyf_yppgsz b where a.ypdm*=b.ypdm and a.yplb like ''' + '0201' + '%' + ''' order by a.ypdm');
  Qry_yppgsz.Open;
  if (checkbox1.Checked = True) and (trim(yp.text) <> '') then
  begin
    Qry_yppgsz.Filter := ' ypmc=''' + Trim(yp.text) + '''';
    Qry_yppgsz.Filtered := True;
  end
  else
    Qry_yppgsz.Filtered := False;
end;

procedure Tfrm_zypgsz.bt_closeClick(Sender: TObject);
begin
  close;
end;

procedure Tfrm_zypgsz.CheckBox2KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  displayxx;
end;

procedure Tfrm_zypgsz.CheckBox2MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  displayxx;
end;

procedure Tfrm_zypgsz.e_pgbsChange(Sender: TObject);
begin
  if e_pgbs.focused then
  begin
    bt_save.Enabled := True;
    bt_cancel.Enabled := True;
  end;
end;

procedure Tfrm_zypgsz.ypKeyPress(Sender: TObject; var Key: Char);
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
          checkbox2.Checked := False;
          Displayxx;
          Qry_yppgsz.Locate('ypdm', Qry_ypdm['ypdm'], []);
        end
        else
          Displayxx;
        e_pgbs.SelectAll;
        e_pgbs.SetFocus;
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

procedure Tfrm_zypgsz.qry_yppgszAfterScroll(DataSet: TDataSet);
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
    end;
  end;
end;

procedure Tfrm_zypgsz.DBGrid1Exit(Sender: TObject);
begin
  if not Qry_yppgsz.Locate('ypdm', Qry_ypdm['ypdm'], []) then
  begin
    checkbox2.Checked := False;
    Displayxx;
    Qry_yppgsz.Locate('ypdm', Qry_ypdm['ypdm'], []);
  end;
  Dbgrid1.Visible := False;
  e_pgbs.SelectAll;
  e_pgbs.SetFocus;
end;

procedure Tfrm_zypgsz.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if KEy = #13 then e_pgbs.SetFocus;
end;

procedure Tfrm_zypgsz.FormCreate(Sender: TObject);
begin
  Qry_ksdm.Close;
  Qry_ksdm.Open;
  checkbox2.Checked := True;
  displayxx;
end;

procedure Tfrm_zypgsz.e_yppgKeyPress(Sender: TObject; var Key: Char);
begin
  if bt_save.Enabled = true then
  begin
    if not ((KEy in ['0'..'9']) or (KEy = #13) or (Key = #8) or (Key = #27)) then
    begin
      Application.MessageBox('只能输入整数数字！', '操作提示', 16);
      e_yppg.SelectAll;
      e_yppg.SetFocus;
      Abort;
    end;
    if Key = #13 then bt_save.Click;
  end;
end;

procedure Tfrm_zypgsz.e_yppgExit(Sender: TObject);
begin
  if bt_save.Enabled = true then
    if trim(e_yppg.text) = '' then
    begin
      e_yppg.Text := '0';
      e_yppg.SelectAll;
      e_yppg.SetFocus;
    end;
end;

procedure Tfrm_zypgsz.bt_cancelClick(Sender: TObject);
begin
  if e_pgbs.Focused then e_pgbs.Undo;
  if e_yppg.Focused then e_yppg.Undo;
  Qry_yppgsz.AfterScroll(ds_yppgsz.DataSet);
  bt_save.Enabled := False;
  bt_cancel.Enabled := False;
end;

procedure Tfrm_zypgsz.e_yppgChange(Sender: TObject);
begin
  if e_yppg.focused then
  begin
    bt_save.Enabled := True;
    bt_cancel.Enabled := True;
  end;
end;

procedure Tfrm_zypgsz.bt_saveClick(Sender: TObject);
var
  s, ss: string;
begin
  if trim(yp.Text) = '' then
  begin
    Application.MessageBox('请正确输入药品！', '操作提示', 16);
    yp.SetFocus;
    Abort;
  end;
  if trim(e_pgbs.text) = '' then
  begin
    Application.MessageBox('必须正确输入品规标识！', '操作提示', 16);
    e_pgbs.SetFocus;
    Abort;
  end;
  if length(trim(e_pgbs.text)) > 8 then
  begin
    Application.MessageBox('品规标识过长，只能输入8个字符4个汉字！', '操作提示', 16);
    e_pgbs.SelectAll;
    e_pgbs.SetFocus;
    Abort;
  end;
  if (trim(e_yppg.text) = '') then
  begin
    Application.MessageBox('必须输入药品品规，只能输入整数！', '操作提示', 16);
    e_yppg.SelectAll;
    e_yppg.SetFocus;
    Abort;
  end;
  if Trim(DBL_yf.Text) = '' then
  begin
    Application.MessageBox('必须选择所属药房！', '操作提示', 16);
    DBL_yf.SetFocus;
    Abort;
  end;
  if cb_sybz.Checked = True then s := '1' else s := '0';
  ss := Qry_yppgsz['ypdm'];
  sp_save.Close;
  sp_save.Parameters.ParamByName('@yfdm').value := DBL_yf.KeyValue;
  sp_save.Parameters.ParamByName('@ypdm').value := Qry_yppgsz['ypdm'];
  sp_save.Parameters.ParamByName('@pgbs').value := UPPERCASE(Trim(e_pgbs.text));
  sp_save.Parameters.ParamByName('@yppg').value := strtoint(e_yppg.text);
  sp_save.Parameters.ParamByName('@sybz').value := s;
  sp_save.Parameters.ParamByName('@sc_zt').value := 'A';
  try
    sp_save.ExecProc;
  except
    Application.MessageBox('网络错误，请稍后重试！', '操作提示', 16);
  end;
  if (sp_save.Parameters.ParamByName('@sc_zt').value = '2') or
    (sp_save.Parameters.ParamByName('@sc_zt').value = '3') then
  begin
    Application.MessageBox('该药品已设定了该品规！', '操作提示', 16);
    e_yppg.SelectAll;
    e_yppg.SetFocus;
    Abort;
  end
  else
    if (sp_save.Parameters.ParamByName('@sc_zt').value = '0') then
    begin
      Application.MessageBox('追加该药品的品规出现错误，请稍后重试！', '操作提示', 16);
      e_yppg.SelectAll;
      e_yppg.SetFocus;
      Abort;
    end
    else
      if (sp_save.Parameters.ParamByName('@sc_zt').value = '1') then
      begin
        Application.MessageBox('修改该药品的品规出现错误，请稍后重试！', '操作提示', 16);
        e_yppg.SelectAll;
        e_yppg.SetFocus;
        Abort;
      end
      else
        if (sp_save.Parameters.ParamByName('@sc_zt').value = '4') then
        begin
          Application.MessageBox('删除该药品的品规出现错误，请稍后重试！', '操作提示', 16);
          e_yppg.SelectAll;
          e_yppg.SetFocus;
          Abort;
        end;
  Qry_yppgsz.Close;
  Qry_yppgsz.Open;
  Qry_yppgsz.Locate('ypdm', ss, []);
  bt_save.Enabled := False;
  bt_cancel.Enabled := False;
  if not Qry_yppgsz.Eof then Qry_yppgsz.Next;
  DBgrideh1.SetFocus;
end;

procedure Tfrm_zypgsz.cb_sybzKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  bt_save.Enabled := True;
  bt_cancel.Enabled := True;
end;

procedure Tfrm_zypgsz.cb_sybzMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  bt_save.Enabled := True;
  bt_cancel.Enabled := True;
end;

procedure Tfrm_zypgsz.DBL_yfCloseUp(Sender: TObject);
begin
  bt_save.Enabled := True;
  bt_cancel.Enabled := True;
  if (checkbox1.Checked = True) then
  begin
    Qry_yppgsz.Filter := ' yfdm=''' + DBL_yf.keyvalue + '''';
    Qry_yppgsz.Filtered := True;
  end
  else
    Qry_yppgsz.Filtered := False;

end;

procedure Tfrm_zypgsz.e_pgbsKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    e_yppg.SelectAll;
    e_yppg.SetFocus;
  end;
end;

procedure Tfrm_zypgsz.CheckBox1KeyUp(Sender: TObject; var Key: Word;
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

procedure Tfrm_zypgsz.CheckBox1MouseUp(Sender: TObject;
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

procedure Tfrm_zypgsz.DBL_yfKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then bt_save.Click;
end;

procedure Tfrm_zypgsz.DBGridEh1DblClick(Sender: TObject);
begin
  e_pgbs.SelectAll;
  e_pgbs.SetFocus;
end;

procedure Tfrm_zypgsz.DBGridEh1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    e_pgbs.SelectAll;
    e_pgbs.SetFocus;
  end;
end;

end.

