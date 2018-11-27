unit p_lysq_bq;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Db, DBTables, DBCtrls, Mask, Grids, DBGrids, ExtCtrls, Menus,
  Buttons, ADODB;

type
  TFrm_Lysq_bq = class(TForm)
    DS_yp: TDataSource;
    DS_mx: TDataSource;
    DS_zb: TDataSource;
    Panel1: TPanel;
    Label5: TLabel;
    Label1: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    DS_ks: TDataSource;
    Label4: TLabel;
    Edit1: TEdit;
    Panel2: TPanel;
    DBGrid3: TDBGrid;
    Panel3: TPanel;
    Label7: TLabel;
    DBEdit5: TDBEdit;
    DBEdit1: TDBEdit;
    B_ADD: TBitBtn;
    b_cont: TBitBtn;
    b_save: TBitBtn;
    b_edit: TBitBtn;
    b_cancel: TBitBtn;
    b_del: TBitBtn;
    b_close: TBitBtn;
    Panel4: TPanel;
    DBGrid2: TDBGrid;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    Check1: TCheckBox;
    sp_yp: TADOStoredProc;
    Qry_ks: TADOQuery;
    Qry_mx: TADOQuery;
    Qry_zb: TADOQuery;
    qry_yp: TADOQuery;
    Qry_mxsqdh: TStringField;
    Qry_mxypdm: TStringField;
    Qry_mxypdwid: TIntegerField;
    Qry_mxypdw: TStringField;
    Qry_mxypbzbl: TIntegerField;
    Qry_mxsqsl: TBCDField;
    Qry_mxfysl: TBCDField;
    Qry_mxypmc: TStringField;
    Qry_mxypgg: TStringField;
    DBGrid1: TDBGrid;
    procedure DBGrid4KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure B_ADDClick(Sender: TObject);
    procedure b_cancelClick(Sender: TObject);
    procedure b_closeClick(Sender: TObject);
    procedure b_delClick(Sender: TObject);
    procedure b_editClick(Sender: TObject);
    procedure b_saveClick(Sender: TObject);
    procedure b_contClick(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid3KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid3Exit(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid2KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure Check1Click(Sender: TObject);
  private
    { Private declarations }
    sqdh: string;
    mode: integer; //mode=0 表示通常状态 =1 表示增加状态 =2 表示修改状态
    procedure check; //数据合法性检测
  public
    { Public declarations }
  end;

var
  Frm_Lysq_bq: TFrm_Lysq_bq;
implementation

uses p_dm, p_login, p_func;

{$R *.DFM}


procedure TFrm_Lysq_bq.DBEdit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 13 then
    b_cont.SetFocus;
end;

procedure TFrm_Lysq_bq.B_ADDClick(Sender: TObject);
begin
  mode := 0;
  sqdh := get_sjh(pub_czydm);
  qry_zb.close;
  qry_zb.Parameters.ParamByName('sqdh').value := sqdh;
  qry_zb.open;
  qry_mx.close;
  qry_mx.Parameters.ParamByName('sqdh').value := sqdh;
  qry_mx.open;
  qry_zb.Append;
  qry_zb['sqdh'] := sqdh;
  qry_zb['sqrq'] := frm_func.curr_date();
  qry_zb['sqks'] := pub_ksdm;
  qry_zb['sqczy'] := pub_czydm;
  qry_zb['fybz'] := false;
  qry_zb['zfbz'] := false;
  qry_zb.Post;
  b_add.enabled := false;
  panel1.Enabled := true;
  edit1.Enabled := true;
  check1.Enabled := true;
  edit2.SetFocus;
end;

procedure TFrm_Lysq_bq.b_cancelClick(Sender: TObject);
begin
  if (qry_mx.State = dsedit) or (qry_mx.State = dsinsert) then
    qry_mx.Cancel;
  mode := 0;
  if qry_mx.RecordCount <> 0 then
  begin
    b_edit.Enabled := true;
    b_save.Enabled := true;
  end
  else
  begin
    b_edit.Enabled := false;
    b_save.Enabled := false;
  end;
  panel1.Enabled := false;
  panel2.Enabled := false;
  panel3.Enabled := false;
  b_cancel.Enabled := false;
  b_cont.Enabled := true;
  b_cont.SetFocus;
end;

procedure TFrm_Lysq_bq.b_closeClick(Sender: TObject);
begin
  close;
end;

procedure TFrm_Lysq_bq.b_delClick(Sender: TObject);
var
  msg: string;
begin
  mode := 0;
  if qry_mx.RecordCount = 0 then
    abort;
  msg := '是否删除物品' + '[' + qry_mx['ypmc'] + ']' + '的数据?';
  if application.MessageBox(pchar(msg), '注意', mb_yesno + mb_iconquestion) = idno then
    abort
  else
  begin
    qry_mx.Delete;
    if qry_mx.RecordCount = 0 then
    begin
      panel4.Enabled := false;
      b_del.Enabled := false;
      b_edit.Enabled := false;
    end;
    b_cont.Enabled := true;
    b_cont.SetFocus;
  end;
end;

procedure TFrm_Lysq_bq.b_editClick(Sender: TObject);
begin
  mode := 0;
  panel3.Enabled := false;
  panel4.Enabled := true;
  b_cont.Enabled := true;
  b_del.Enabled := true;
  dbgrid2.SetFocus;
end;

procedure TFrm_Lysq_bq.b_saveClick(Sender: TObject);
begin
  if trim(edit3.Text) = '' then
  begin
    application.MessageBox('必须输入领药科室!', '注意', 16);
    panel1.Enabled := true;
    edit1.Enabled := true;
    edit2.SetFocus;
    abort;
  end;
  qry_zb.Edit;
  qry_zb['fyks'] := qry_ks['dm'];
  qry_zb.Post;

//数据合法性检测
  check;

  if (qry_mx.State = dsinsert) or (qry_mx.State = dsedit) then
    qry_mx.post;
  if qry_mx.RecordCount = 0 then
  begin
    application.MessageBox('没有物品明细数据!', '注意', 16);
    abort;
  end;
  dm_data.ado_mydata.BeginTrans;
  try
    qry_zb.UpdateBatch;
    qry_mx.UpdateBatch;
    dm_data.ado_mydata.CommitTrans;
  except
    dm_data.ado_mydata.RollbackTrans;
    application.MessageBox('数据保存失败！', '提示', 16);
    abort;
  end;
  edit1.Clear;
  edit2.Clear;
  qry_ks.Close;
  qry_zb.close;
  qry_mx.close;
  panel1.Enabled := false;
  panel2.Enabled := false;
  panel3.Enabled := false;
  panel4.Enabled := false;
  b_add.Enabled := true;
  b_cont.Enabled := false;
  b_save.Enabled := false;
  b_edit.Enabled := false;
  b_cancel.Enabled := false;
  b_del.Enabled := false;
  b_add.SetFocus;
end;

procedure TFrm_Lysq_bq.b_contClick(Sender: TObject);
begin
//数据合法性检测
  check;
  if (qry_mx.State = dsinsert) or (qry_mx.State = dsedit) then
    qry_mx.Post;
  if (qry_zb.State = dsinsert) or (qry_zb.State = dsedit) then
    qry_zb.Post;
  if qry_mx.RecordCount <> 0 then
    b_edit.Enabled := true
  else
    b_edit.Enabled := false;
  b_cont.Enabled := false;
  b_cancel.Enabled := false;
  b_del.Enabled := false;
  panel2.Enabled := true;
  panel3.Enabled := false;
  panel4.Enabled := true;
  edit1.Enabled := true;
  check1.Enabled := true;
  if sp_yp.Active then
  begin
    if sp_yp.RecordCount = 1 then
    begin
      edit1.Clear;
      edit1.SetFocus;
      abort;
    end
    else
    begin
//      sp_yp.Next;
//      DBGrid1.Next;
      Edit1.SetFocus;
    end;
  end
  else
  begin
    edit1.Clear;
    edit1.SetFocus;
  end;
end;

procedure TFrm_Lysq_bq.Edit1Change(Sender: TObject);
begin
  sp_yp.close;
end;

procedure TFrm_Lysq_bq.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    qry_ks.close;
    qry_ks.Parameters.ParamByName('pym').value := '%' + trim(edit2.text) + '%';
    qry_ks.open;
    if qry_ks.RecordCount = 0 then
    begin
      application.MessageBox('没有满足条件的科室!', '注意', 16);
      qry_ks.close;
      edit3.Clear;
      edit2.SetFocus;
      abort;
    end
    else
      if qry_ks.RecordCount = 1 then
      begin
        edit2.text := qry_ks['dm'];
        edit3.Text := qry_ks['mc'];
        edit1.Enabled := true;
        edit1.SetFocus;
      end
      else
      begin
        dbgrid3.Visible := true;
        dbgrid3.SetFocus;
      end;
  end;
end;

procedure TFrm_Lysq_bq.DBGrid3KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    edit2.Text := qry_ks['dm'];
    edit3.Text := qry_ks['mc'];
    dbgrid3.Visible := false;
    edit1.Enabled := true;
    edit1.SetFocus;
    abort;
  end
  else
    if key = #27 then
    begin
      edit2.Clear;
      qry_ks.close;
      dbgrid3.Visible := false;
      edit2.SetFocus;
      abort;
    end;
end;

procedure TFrm_Lysq_bq.DBGrid3Exit(Sender: TObject);
begin
  dbgrid3.Visible := false;
end;

procedure TFrm_Lysq_bq.Edit2Change(Sender: TObject);
begin
  edit3.Clear;
end;

procedure TFrm_Lysq_bq.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    if trim(edit3.text) = '' then
    begin
      application.MessageBox('必须先输入发放科室!', '注意', 16);
      edit2.SetFocus;
      abort;
    end;
    sp_yp.close;
    sp_yp.Filtered := false;
    sp_yp.Parameters.ParamByName('@pym').value := trim(edit1.text);
    sp_yp.Parameters.ParamByName('@ksdm').value := pub_ksdm;
    sp_yp.Parameters.ParamByName('@ykdm').value := qry_ks['dm'];
    if check1.Checked then
      sp_yp.Parameters.ParamByName('@cxlb').vaLUE := 1
    else
      sp_yp.Parameters.ParamByName('@cxlb').value := 0;
      
    sp_yp.open;
    if sp_yp.RecordCount = 0 then
    begin
      application.MessageBox('没有满足条件的物品资料!', '注意', 16);
      panel2.Enabled := false;
      edit1.SetFocus;
      abort;
    end
    else
    begin
      panel2.Enabled := true;
      dbgrid1.SetFocus;
      abort;
    end;
  end
  else
    if key = #27 then
    begin
      edit1.Clear;
      edit1.SetFocus;
      abort;
    end;

end;

procedure TFrm_Lysq_bq.DBGrid1KeyPress(Sender: TObject; var Key: Char);
var
  ypdm: string;
begin
  if key = #13 then
  begin
    if (qry_mx.State = dsedit) or (qry_mx.State = dsinsert) then
      qry_mx.Cancel;
    ypdm := sp_yp['ypdm'];
    if qry_mx.Locate('ypdm', ypdm, []) then
    begin
      application.MessageBox('已有该物品，不能重复输入!', '注意', 16);
      dbgrid1.SetFocus;
      abort;
    end;
{    sp_yp.Filtered:=false;
    sp_yp.Filter:='ypdm='+''''+ypdm+'''';
    sp_yp.Filtered:=true;}
    panel1.Enabled := false;
    panel2.Enabled := false;
    panel4.Enabled := false;
    panel3.Enabled := true;
    b_cont.Enabled := true;
    b_edit.Enabled := false;
    b_del.Enabled := false;
    b_save.Enabled := true;
    b_cancel.Enabled := true;
    edit1.Enabled := false;
    check1.Enabled := false;
    mode := 1;
    qry_mx.Append;
    qry_mx['sqdh'] := sqdh;
    qry_mx['ypdm'] := ypdm;
    qry_mx['sqsl'] := 0;
    qry_mx['fysl'] := 0;
    qry_mx['ypdw'] := sp_yp['kfdw'];
    qry_mx['ypdwid'] := sp_yp['kfdwid'];
    qry_mx['ypbzbl'] := sp_yp['kfzhl'];
    dbedit5.SetFocus;
  end
  else
    if key = #27 then
      edit1.SetFocus;
end;

procedure TFrm_Lysq_bq.check;
var
  msg: string;
begin
  msg := '请输入正确的';
  if (qry_mx.State = dsinsert) or (qry_mx.State = dsedit) then
    if (mode = 1) or (mode = 2) then
    begin
      try
        strtofloat(dbedit5.text);
      except
        dbedit5.text := '0';
      end;
      if strtofloat(dbedit5.text) <= 0 then
      begin
        application.MessageBox(pchar(msg + '申请数量!'), '注意', 16);
        qry_mx.edit;
        dbedit5.SelectAll;
        dbedit5.SetFocus;
        abort;
      end;
    end;
end;


procedure TFrm_Lysq_bq.DBGrid2KeyPress(Sender: TObject; var Key: Char);
var
  ypdm: string;
begin
  if key = #13 then
  begin
    ypdm := qry_mx['ypdm'];
    sp_yp.close;
    sp_yp.Filtered := false;
    sp_yp.Parameters.ParamByName('@pym').value := string(GetPym(trim(qry_mx['ypmc'])));
    sp_yp.Parameters.ParamByName('@ksdm').value := pub_ksdm;
    sp_yp.Parameters.ParamByName('@ykdm').value := qry_ks['dm'];
    sp_yp.Parameters.ParamByName('@cxlb').value := 0;
    sp_yp.Filter := 'ypdm=' + '''' + ypdm + '''';
    sp_yp.Filtered := true;
    sp_yp.open;
    edit1.Enabled := false;
    panel1.Enabled := false;
    panel2.Enabled := false;
    panel4.Enabled := false;
    panel3.Enabled := true;
    b_cont.Enabled := true;
    b_save.Enabled := true;
    b_edit.Enabled := false;
    b_cancel.Enabled := true;
    b_del.Enabled := false;
    mode := 2;
    qry_mx.Edit;
    dbedit5.SetFocus;
  end;

end;

procedure TFrm_Lysq_bq.FormShow(Sender: TObject);
begin
  qry_yp.open;
  b_add.SetFocus;
end;

procedure TFrm_Lysq_bq.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    SelectNext(activeControl, true, true);
end;

procedure TFrm_Lysq_bq.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
{  if (sp_yp['yfkcsl'] < sp_yp['ypyl']) then
  begin
    dbgrid1.Canvas.brush.Color := clmaroon;
    dbgrid1.Canvas.Font.Color := clwhite;
  end;
  dbgrid1.DefaultDrawColumnCell(rect, datacol, column, state);}
end;

procedure TFrm_Lysq_bq.Check1Click(Sender: TObject);
begin
  if not qry_ks.Active then exit;

  sp_yp.close;
  sp_yp.Filtered := false;
  sp_yp.Parameters.ParamByName('@pym').value := trim(edit1.text);
  sp_yp.Parameters.ParamByName('@ksdm').value := pub_ksdm;
  sp_yp.Parameters.ParamByName('@ykdm').value := qry_ks['dm'];
  if check1.Checked = false then
    sp_yp.Parameters.ParamByName('@cxlb').value := 0
  else
    sp_yp.Parameters.ParamByName('@cxlb').value := 1;
  sp_yp.open;
  if sp_yp.RecordCount = 0 then
  begin
    application.MessageBox('没有满足条件的物品资料!', '注意', 16);
    panel2.Enabled := false;
    edit1.SetFocus;
    abort;
  end
  else
  begin
    panel2.Enabled := true;
    dbgrid1.SetFocus;
    abort;
  end;
end;

procedure TFrm_Lysq_bq.DBGrid4KeyPress(Sender: TObject; var Key: Char);
var
  ypdm: string;
begin
  if key = #13 then
  begin
    if (qry_mx.State = dsedit) or (qry_mx.State = dsinsert) then
      qry_mx.Cancel;
    ypdm := sp_yp['ypdm'];
    if qry_mx.Locate('ypdm', ypdm, []) then
    begin
      application.MessageBox('已有该物品，不能重复输入!', '注意', 16);
      dbgrid1.SetFocus;
      exit;
    end;
{    sp_yp.Filtered:=false;
    sp_yp.Filter:='ypdm='+''''+ypdm+'''';
    sp_yp.Filtered:=true;}
    panel1.Enabled := false;
    panel2.Enabled := false;
    panel4.Enabled := false;
    panel3.Enabled := true;
    b_cont.Enabled := true;
    b_edit.Enabled := false;
    b_del.Enabled := false;
    b_save.Enabled := true;
    b_cancel.Enabled := true;
    edit1.Enabled := false;
    check1.Enabled := false;
    mode := 1;
    qry_mx.Append;
    qry_mx['sqdh'] := sqdh;
    qry_mx['ypdm'] := ypdm;
    qry_mx['sqsl'] := 0;
    qry_mx['fysl'] := 0;
    qry_mx['ypdw'] := sp_yp['kfdw'];
    qry_mx['ypdwid'] := sp_yp['kfdwid'];
    qry_mx['ypbzbl'] := sp_yp['kfzhl'];
    dbedit5.SetFocus;
  end
  else
    if key = #27 then
      edit1.SetFocus;

end;

end.

