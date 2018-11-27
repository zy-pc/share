unit P_mzsjdr;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Grids, DBGrids, DB, ADODB,p_dm;

type
  Tfrm_mzsjdr = class(TForm)
    Edit1: TEdit;
    Label1: TLabel;
    Panel1: TPanel;
    LabeledEdit1: TLabeledEdit;
    LabeledEdit2: TLabeledEdit;
    LabeledEdit3: TLabeledEdit;
    LabeledEdit4: TLabeledEdit;
    LabeledEdit5: TLabeledEdit;
    Button1: TButton;
    Panel2: TPanel;
    Panel3: TPanel;
    DBGrid1: TDBGrid;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    Button2: TButton;
    procedure Button2Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_mzsjdr: Tfrm_mzsjdr;

implementation

{$R *.dfm}

procedure Tfrm_mzsjdr.Button2Click(Sender: TObject);
begin
  ADOQuery1.Close;
  ADOQuery1.SQL.Text := 'exec zysf_cx_mzbrsj '''+Trim(Edit1.Text)+'''';
  ADOQuery1.Open;
  if ADOQuery1.RecordCount=0 then
  begin
    Application.MessageBox('未找到对应的病人信息', '错误', MB_OK + 
      MB_ICONSTOP);
    Exit;
  end else if ADOQuery1.RecordCount=1 then
  begin
    DBGrid1DblClick(nil);
  end else begin
    DBGrid1.Visible := True;
    DBGrid1.SetFocus;
  end;
end;

procedure Tfrm_mzsjdr.DBGrid1DblClick(Sender: TObject);
begin
  LabeledEdit1.Text := Trim(ADOQuery1.FieldByName('brxm').AsString);
  LabeledEdit2.Text := Trim(ADOQuery1.FieldByName('tmh').AsString);
  LabeledEdit3.Text := Trim(ADOQuery1.FieldByName('brxb').AsString);
  LabeledEdit4.Text := Trim(ADOQuery1.FieldByName('brnl').AsString);
  LabeledEdit5.Text := Trim(ADOQuery1.FieldByName('brdz').AsString);
  DBGrid1.Visible := False;
  button1.SetFocus;
end;

procedure Tfrm_mzsjdr.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=13 then
  begin
    DBGrid1DblClick(nil);
  end;
end;

procedure Tfrm_mzsjdr.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=13 then
    Button2.Click;
end;

end.
