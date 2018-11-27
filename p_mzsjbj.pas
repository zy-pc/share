unit p_mzsjbj;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ComCtrls, GridsEh, DBGridEh, DB, ADODB, Makwait,
  DBGridEhGrouping;

type
  TFrm_mzsjBjdr = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    DBGridEh1: TDBGridEh;
    ds_cxbr: TDataSource;
    qry_cxbr: TADOQuery;
    DBGridEh2: TDBGridEh;
    ds_mzmx: TDataSource;
    qry_mzmx: TADOQuery;
    Button2: TButton;
    ADOStoredProc1: TADOStoredProc;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGridEh1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure qry_mzmxAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    zyh: string;
    ryrq: TDateTime;
    { Public declarations }
  end;


var
  Frm_mzsjBjdr: TFrm_mzsjBjdr;
procedure mzsjbjdr(zyh: string);

implementation
uses
  p_dm;

{$R *.dfm}

procedure mzsjbjdr(zyh: string);
begin
  Application.CreateForm(TFrm_mzsjBjdr, Frm_mzsjBjdr);
  try
    Frm_mzsjBjdr.zyh := zyh;
    Frm_mzsjBjdr.ShowModal;
  finally
    Frm_mzsjBjdr.Free;
  end;
end;

procedure TFrm_mzsjBjdr.Button1Click(Sender: TObject);
begin
  qry_cxbr.Close;
  qry_cxbr.SQL.Text := 'exec mzsf_cx_mzbrcx ''' + Trim(edit1.Text) +
    ''',''' + FormatDateTime('yyyy-MM-dd', ryrq) + ''' ';
  waitForQuery(qry_cxbr);
  if qry_cxbr.RecordCount = 0 then
  begin
    Application.MessageBox('没有找到病人信息。', '错误', MB_OK + MB_ICONSTOP);
    Exit;
  end else if qry_cxbr.RecordCount = 1 then
  begin
    DBGridEh1DblClick(nil);
  end else begin
    DBGridEh1.Visible := True;
    DBGridEh1.Left := Edit1.Left;
    DBGridEh1.Top := Edit1.Top + Edit1.Height;
    DBGridEh1.SetFocus;
  end;
end;

procedure TFrm_mzsjBjdr.Button2Click(Sender: TObject);
var
  idStr: string;
begin
  idStr := ',';
  qry_mzmx.Filter := ' 选择 = 1 ';
  qry_mzmx.Filtered := True;
  qry_mzmx.First;
  while not qry_mzmx.Eof do
  begin
    idStr := idStr + Trim(qry_mzmx.FieldByName('编号').AsString) + ',';
    qry_mzmx.Next;
  end;
  qry_mzmx.Filtered := False;

  ADOStoredProc1.Close;
  ADOStoredProc1.ProcedureName := 'mzsf_cx_mzbrcx_mx_drzy';
  ADOStoredProc1.Parameters.Refresh;
  ADOStoredProc1.Parameters.ParamByName('@key').Value := idStr;
  ADOStoredProc1.Parameters.ParamByName('@zyh').Value := zyh;
  ADOStoredProc1.Parameters.ParamByName('@sccs').Value := '';
  //ADOStoredProc1.ExecProc;
  waitForQuery(ADOStoredProc1, False);
  if ADOStoredProc1.Parameters.ParamByName('@sccs').Value <> '1' then
  begin
    Application.MessageBox(PChar(string(ADOStoredProc1.Parameters.
      ParamByName('@sccs').Value)), '错误', MB_OK + MB_ICONSTOP);
  end else
  begin
    Application.MessageBox('保存成功', 'Application.Title', MB_OK +
      MB_ICONINFORMATION);
  end;
end;

procedure TFrm_mzsjBjdr.DBGridEh1DblClick(Sender: TObject);
begin
  if not qry_cxbr.Active then exit;

  qry_mzmx.Close;
  qry_mzmx.SQL.Text := 'exec mzsf_cx_mzbrcx_mx '''
    + Trim(qry_cxbr.FieldByName('tmh').AsString)
    + ''',''' + Trim(qry_cxbr.FieldByName('jzrq').AsString) + ''' ';
  qry_mzmx.Open;

  DBGridEh2.SetFocus;
  DBGridEh1.Visible := False;
end;

procedure TFrm_mzsjBjdr.DBGridEh1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    DBGridEh1DblClick(nil);
  end;
end;

procedure TFrm_mzsjBjdr.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_RETURN then
    Button1.Click;
end;

procedure TFrm_mzsjBjdr.FormCreate(Sender: TObject);
begin
  DBGridEh1.Visible := False;
  edit1.Text := '';
end;

procedure TFrm_mzsjBjdr.FormShow(Sender: TObject);
begin
  qry_cxbr.Close;
  qry_cxbr.SQL.Text := 'select ryrq from zysf_zydj where zyh=''' + zyh + '''';
  qry_cxbr.Open;
  if qry_cxbr.IsEmpty then
  begin
    Application.MessageBox('未找到与住院号对应的在院信息.', '错误',
    MB_OK + MB_ICONSTOP);
    Exit;
  end;
  ryrq := qry_cxbr.FieldByName('ryrq').AsDateTime;
end;


procedure TFrm_mzsjBjdr.qry_mzmxAfterOpen(DataSet: TDataSet);
var
  i: Integer;
begin
  for i := 0 to DBGridEh2.Columns.Count - 1 do
  begin
    DBGridEh2.Columns[i].OptimizeWidth;
  end;
end;

end.

