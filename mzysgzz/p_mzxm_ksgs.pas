unit p_mzxm_ksgs;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, GridsEh, DBGridEh, ExtCtrls, DB, ADODB, Grids,
  DBGrids;

type
  Tfrm_mzxm_ksgs = class(TForm)
    qry_dyxm: TADOQuery;
    qry_kjsfxm: TADOQuery;
    qry_wglks: TADOQuery;
    ds_kjsfxm: TDataSource;
    ds_dyxm: TDataSource;
    ds_wglks: TDataSource;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    Panel1: TPanel;
    Label1: TLabel;
    edt_xm: TEdit;
    DBGridEh1: TDBGridEh;
    qry_xm_locate: TADOQuery;
    DBGridEh2: TDBGridEh;
    DBGridEh3: TDBGridEh;
    BBtn_add: TBitBtn;
    BBtn_add_all: TBitBtn;
    BBtn_remove_all: TBitBtn;
    BBtn_remove: TBitBtn;
    DBGridEh4: TDBGridEh;
    ds_xm_locate: TDataSource;
    qry_dyxmfydm: TStringField;
    qry_dyxmksdm: TStringField;
    qry_dyxmsl: TIntegerField;
    qry_ksdm: TADOQuery;
    qry_dyxmksmc: TStringField;
    procedure DBGridEh4Exit(Sender: TObject);
    procedure DBGridEh4MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure DBGridEh4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure edt_xmKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBGridEh1CellClick(Column: TColumnEh);
    procedure DBGridEh1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BBtn_addClick(Sender: TObject);
    procedure BBtn_add_allClick(Sender: TObject);
    procedure BBtn_removeClick(Sender: TObject);
    procedure BBtn_remove_allClick(Sender: TObject);
  private
    { Private declarations }

    procedure Proc_Seek_sfxm;
    procedure Proc_Seek_glks(v_fydm: string);
    procedure Proc_Seek_wglks(v_fydm: string);
    procedure Proc_Locate_sfxm(v_fydm: string);
    procedure Proc_Add_one(v_fydm, v_ksdm: string; v_sl: Integer);
    procedure Proc_ReMove_one;
    procedure Proc_Refresh_glqk;
    function func_commit: Boolean;
  public
    { Public declarations }
  end;

var
  frm_mzxm_ksgs: Tfrm_mzxm_ksgs;

implementation
uses p_dm;
{$R *.dfm}

{ TForm1 }

procedure Tfrm_mzxm_ksgs.BBtn_addClick(Sender: TObject);
begin
  if qry_wglks.Active and qry_kjsfxm.Active then
    if (qry_wglks.RecordCount > 0) and (qry_kjsfxm.RecordCount > 0) then
    begin
      Proc_Add_one(qry_kjsfxm.FieldByName('fydm').AsString, qry_wglks.FieldByName('dm').AsString, 1);
      if func_commit() then
        Proc_Refresh_glqk;
    end;
end;

procedure Tfrm_mzxm_ksgs.BBtn_add_allClick(Sender: TObject);
begin
  if qry_wglks.Active and qry_kjsfxm.Active then
    if (qry_wglks.RecordCount > 0) and (qry_kjsfxm.RecordCount > 0) then
    begin
      qry_wglks.DisableControls;
      qry_kjsfxm.DisableControls;
      qry_wglks.First;
      while not qry_wglks.Eof do
      begin
        Proc_Add_one(qry_kjsfxm.FieldByName('fydm').AsString, qry_wglks.FieldByName('dm').AsString, 1);
        qry_wglks.Next;
      end;
      qry_wglks.EnableControls;
      qry_kjsfxm.EnableControls;
      if func_commit() then
        Proc_Refresh_glqk;
    end;
end;

procedure Tfrm_mzxm_ksgs.BBtn_removeClick(Sender: TObject);
begin
  if qry_dyxm.Active then
  begin
    Proc_ReMove_one;
    if func_commit() then
      Proc_Refresh_glqk;
  end;
end;

procedure Tfrm_mzxm_ksgs.BBtn_remove_allClick(Sender: TObject);
begin
  if qry_dyxm.Active then
  begin
    qry_dyxm.First;
    while not qry_dyxm.Eof do
    begin
      Proc_ReMove_one;
    end;
    if func_commit() then
      Proc_Refresh_glqk;
  end;
end;

procedure Tfrm_mzxm_ksgs.DBGridEh1CellClick(Column: TColumnEh);
begin
  if qry_kjsfxm.Active then
  begin
    Proc_Seek_glks(qry_kjsfxm.FieldByName('fydm').AsString);
    Proc_Seek_wglks(qry_kjsfxm.FieldByName('fydm').AsString);
  end;
end;

procedure Tfrm_mzxm_ksgs.DBGridEh1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 13 then
    if qry_kjsfxm.Active then
    begin
      Proc_Seek_glks(qry_kjsfxm.FieldByName('fydm').AsString);
      Proc_Seek_wglks(qry_kjsfxm.FieldByName('fydm').AsString);
    end;
end;

procedure Tfrm_mzxm_ksgs.DBGridEh4Exit(Sender: TObject);
begin
  DBGridEh4.Visible := False;
end;

procedure Tfrm_mzxm_ksgs.DBGridEh4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 13 then
    Proc_Locate_sfxm(qry_xm_locate.FieldByName('fydm').AsString);
end;

procedure Tfrm_mzxm_ksgs.DBGridEh4MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Proc_Locate_sfxm(qry_xm_locate.FieldByName('fydm').AsString);
end;

procedure Tfrm_mzxm_ksgs.edt_xmKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 13 then
    Proc_Seek_sfxm;
end;

procedure Tfrm_mzxm_ksgs.FormShow(Sender: TObject);
begin
  DBGrideh4.Visible := False;
  qry_kjsfxm.Close;
  qry_kjsfxm.Open;
end;

procedure Tfrm_mzxm_ksgs.Proc_Add_one(v_fydm, v_ksdm: string; v_sl: Integer);
begin
  if qry_dyxm.Active then
  begin
    qry_dyxm.Append;
    qry_dyxm.FieldByName('fydm').AsString := v_fydm;
    qry_dyxm.FieldByName('ksdm').AsString := v_ksdm;
    qry_dyxm.FieldByName('sl').AsInteger := v_sl;
    qry_dyxm.Post;
  end;
end;

function Tfrm_mzxm_ksgs.func_commit: Boolean;
begin
  qry_dyxm.Connection.BeginTrans;
  try
    qry_dyxm.UpdateBatch(arAll);
    qry_dyxm.Connection.CommitTrans;
    Result := True;
  except
    qry_dyxm.Connection.RollbackTrans;
    Result := False;
    Application.MessageBox('提示:更新失败!', '提示', MB_ICONINFORMATION);
  end;
end;

procedure Tfrm_mzxm_ksgs.Proc_Locate_sfxm(v_fydm: string);
begin
  if qry_kjsfxm.Active then
  begin
    qry_kjsfxm.Locate('fydm', v_fydm, []);
    DBGridEh1.SetFocus;
    DBGridEh1CellClick(DBGridEh1.Columns.Items[0]);
  end;
end;

procedure Tfrm_mzxm_ksgs.Proc_Refresh_glqk;
begin
  qry_dyxm.Close;
  qry_dyxm.Open;
  qry_wglks.Close;
  qry_wglks.Open;
end;

procedure Tfrm_mzxm_ksgs.Proc_ReMove_one;
begin
  if qry_dyxm.Active then
    if qry_dyxm.RecordCount > 0 then
    begin
      qry_dyxm.Delete;
    end;
end;

procedure Tfrm_mzxm_ksgs.Proc_Seek_glks(v_fydm: string);
begin
  qry_dyxm.Close;
  qry_dyxm.Parameters.ParamByName('fydm').Value := v_fydm;
  qry_dyxm.Open;
end;

procedure Tfrm_mzxm_ksgs.Proc_Seek_sfxm;
begin
  with qry_xm_locate do
  begin
    Close;
    Parameters.ParamByName('pym').Value := Trim(Edt_xm.Text) + '%';
    Parameters.ParamByName('fydm').Value := Trim(Edt_xm.Text);
    Open;
    if RecordCount = 1 then
      Proc_Locate_sfxm(FieldByName('fydm').AsString)
    else if RecordCount > 1 then
    begin
      DBGridEh4.Visible := True;
      DBGrideh4.SetFocus;
    end;
  end;
end;

procedure Tfrm_mzxm_ksgs.Proc_Seek_wglks(v_fydm: string);
begin
  qry_wglks.Close;
  qry_wglks.Parameters.ParamByName('fydm').Value := v_fydm;
  qry_wglks.Open;
end;

end.
