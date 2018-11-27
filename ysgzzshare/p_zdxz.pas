unit p_zdxz;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls, DB, ADODB, Grids, DBGrids, Buttons,
  DBCtrls, EMRPAD30Lib_TLB;

type
  Tfrm_zdxz = class(TForm)
    qry_zb: TADOQuery;
    qry_mx: TADOQuery;
    Panel1: TPanel;
    Panel2: TPanel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    edt_pym: TEdit;
    DBGrid1: TDBGrid;
    ds_zb: TDataSource;
    GroupBox2: TGroupBox;
    DBGrid2: TDBGrid;
    GroupBox3: TGroupBox;
    ds_mx: TDataSource;
    DBMemo1: TDBMemo;
    BBtn_seek: TBitBtn;
    BBtn_use: TBitBtn;
    BBtn_exit: TBitBtn;
    procedure BBtn_exitClick(Sender: TObject);
    procedure edt_pymKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BBtn_seekClick(Sender: TObject);
    procedure edt_pymEnter(Sender: TObject);
    procedure BBtn_useClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure DBGrid2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure qry_zbAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
    procedure Proc_seek(v_table, v_pym: string);
    procedure Proc_use_zd(v_Str: string);
  public
    { Public declarations }
    Pub_CallControl: TControl;
  end;

var
  frm_zdxz: Tfrm_zdxz;

implementation

uses p_dm;

{$R *.dfm}

procedure Tfrm_zdxz.BBtn_seekClick(Sender: TObject);
  function IsInt(v_S: string): Boolean;
  var v_Value: Integer;
  begin
    v_Value := 0;
    Result := False;
    Result := TryStrToInt(v_S, v_Value);
  end;
begin
  if not qry_zb.Active then Exit;
  if qry_zb.RecordCount <= 0 then Exit;

  if IsInt(Copy(edt_pym.Text, 1, 1)) then
  begin
    qry_zb.Locate('id', Copy(edt_pym.Text, 1, 1), []);
    edt_pym.Text := copy(trim(edt_pym.Text), 2, length(trim(edt_pym.text)) - 1)
  end;

  Proc_seek(qry_zb.FieldByName('bm').AsString, edt_pym.Text);
end;

procedure Tfrm_zdxz.BBtn_useClick(Sender: TObject);
begin
  if not qry_mx.Active then Exit;
  if qry_mx.RecordCount <= 0 then Exit;

  Proc_use_zd(Trim(qry_mx.FieldByName('mc').AsString));
end;

procedure Tfrm_zdxz.DBGrid2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 13 then BBtn_use.Click;
end;

procedure Tfrm_zdxz.BBtn_exitClick(Sender: TObject);
begin
  Close;
end;

procedure Tfrm_zdxz.edt_pymEnter(Sender: TObject);
begin
  edt_pym.SelectAll;
end;

procedure Tfrm_zdxz.edt_pymKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 13 then BBtn_seek.Click;
end;

procedure Tfrm_zdxz.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = 27) and (edt_pym.Focused) then
    BBtn_exit.Click
  else
    edt_pym.SetFocus;

end;

procedure Tfrm_zdxz.FormShow(Sender: TObject);
begin
  qry_zb.Close;
  qry_zb.Open;
  if qry_zb.RecordCount > 0 then
    Proc_Seek(qry_zb.FieldByName('bm').AsString, '');
  edt_pym.setfocus;
end;

procedure Tfrm_zdxz.Proc_seek(v_table, v_pym: string);
begin
  with qry_mx do
  begin
    Close;
    if v_pym = '' then
      SQL.Text := 'select top 50 * from ' + v_table
    else
      SQL.Text := 'select * from ' + v_table + ' where pym like' + #39 + '%' + v_pym + '%' + #39 + ' or mc like ' + #39 + v_pym + '%' + #39;
    Open;
    DBGrid2.SetFocus;
  end;
end;

procedure Tfrm_zdxz.Proc_use_zd(v_Str: string);
begin
  if Pub_CallControl.ClassType = TEMRPad30 then
    TEMRPad30(Pub_CallControl).UniversalBoolFunction(v_Str, '', 2, 0);
  BBtn_exit.Click;
end;

procedure Tfrm_zdxz.qry_zbAfterScroll(DataSet: TDataSet);
begin
  if qry_zb.RecordCount > 0 then
    Proc_Seek(qry_zb.FieldByName('bm').AsString, '');
end;

end.
