unit P_cx_cy;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ComCtrls, Buttons, DB, Grids, DBGridEh, ADODB,
  DBGrids, GridsEh;

type
  Tfrm_cx_cy = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label4: TLabel;
    Edit2: TEdit;
    DateTimePicker1: TDateTimePicker;
    Label2: TLabel;
    DateTimePicker2: TDateTimePicker;
    Label3: TLabel;
    Edit3: TEdit;
    Label5: TLabel;
    BBtn_seek: TBitBtn;
    BBtn_exit: TBitBtn;
    ds_seek: TDataSource;
    ComboBox1: TComboBox;
    GroupBox2: TGroupBox;
    DBGridEh1: TDBGridEh;
    qry_ks: TADOQuery;
    qry_blys: TADOQuery;
    qry_cyry: TADOQuery;
    qry_seek: TADOQuery;
    DBGrid1: TDBGrid;
    ds_blys: TDataSource;
    ds_cyry: TDataSource;
    DBGrid2: TDBGrid;
    procedure DBGrid2Exit(Sender: TObject);
    procedure DBGrid1Exit(Sender: TObject);
    procedure DBGrid2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BBtn_exitClick(Sender: TObject);
    procedure BBtn_seekClick(Sender: TObject);
    procedure Edit3KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    Procedure Proc_SelectBlys;
    Procedure Proc_SelectCyry;
  public
    { Public declarations }
  end;

var
  frm_cx_cy: Tfrm_cx_cy;

implementation

uses p_func, p_dm;

{$R *.dfm}
Procedure Tfrm_cx_cy.Proc_SelectBlys;
begin
  IF DBGrid1.Visible then
    DBGrid1.Visible:= False;
  Edit2.Text:= Trim(qry_blys.FieldByName('mc').AsString);
  Edit3.SetFocus;
end;

Procedure Tfrm_cx_cy.Proc_SelectCyry;
begin
  IF DBGrid2.Visible then
    DBGrid2.Visible:= False;
  Edit3.Text:= Trim(qry_blys.FieldByName('mc').AsString);
  BBtn_Seek.SetFocus;
end;

procedure Tfrm_cx_cy.FormShow(Sender: TObject);
begin
  DBGrid1.Visible:= False;
  DBGrid2.Visible:= False;
  DateTimePicker1.DateTime:= frm_func.curr_date;
  DateTimePicker2.DateTime:= DatetimePicker1.DateTime;

  ComboBox1.Items.Clear;
  ComboBox1.Items.Add('<全部>');
  With qry_ks do
  begin
    Close;
    Open;

    While Not Eof do
    begin
      ComboBox1.Items.Add(FieldByName('mc').AsString);
      Next;
    end;
  end;

end;

procedure Tfrm_cx_cy.Edit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var S: String;
begin
  S:= Edit2.Text;
  if key = 13 then
    with qry_blys do
    begin
      Close;
      ParaMeters.ParamByName('mc').Value:= S + '%';
      ParaMeters.ParamByName('pym').Value:= S + '%';
      ParaMeters.ParamByName('dm').Value:= S;
      Open;

      IF RecordCount <= 0 then
        Application.MessageBox('错误提示:没有检索到满足条件记录!','错误提示',16)
      Else if RecordCount = 1 then
        Proc_SelectBlys
      Else
      begin
        DBGrid1.Visible:= True;
        DBGrid1.SetFocus;
      end;
    end;
end;

procedure Tfrm_cx_cy.Edit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var S: String;
begin
  S:= Edit3.Text;
  if key = 13 then
    with qry_cyry do
    begin
      Close;
      ParaMeters.ParamByName('mc').Value:= S + '%';
      ParaMeters.ParamByName('pym').Value:= S + '%';
      ParaMeters.ParamByName('dm').Value:= S;
      Open;

      IF RecordCount <= 0 then
        Application.MessageBox('错误提示:没有检索到满足条件记录!','错误提示',16)
      Else if RecordCount = 1 then
        Proc_SelectCyry
      Else
      begin
        DBGrid2.Visible:= True;
        DBGrid2.SetFocus;
      end;
    end;
end;

procedure Tfrm_cx_cy.BBtn_seekClick(Sender: TObject);
var v_date1, v_date2, v_blks, v_blys, v_cyry: String;
begin
  v_date1:= FormatDatetime('yyyy-mm-dd', DateTimePicker1.DateTime);//开始日期
  v_date2:= FormatDatetime('yyyy-mm-dd', DateTimePicker2.DateTime);//结束日期

  IF ComboBox1.Text = '<全部>' then//病历科室
    v_blks:= '%'
  Else
    IF qry_ks.Locate('mc', ComboBox1.Text, []) then
      v_blks:= qry_ks.FieldByName('dm').AsString
    Else
      v_blks:= '';

  IF qry_blys.Active then//病历医生
    IF qry_blys.RecordCount > 0 then
      IF Trim(Edit2.Text) <> '' then
        v_blys:= qry_blys.FieldByName('dm').AsString
      Else
        v_blys:= '%'
    Else
      v_blys:= '%'
  Else
    v_blys:= '%';

  IF qry_cyry.Active then//抽样人员
    IF qry_cyry.RecordCount > 0 then
      IF Trim(Edit3.Text) <> '' then
        v_cyry:= qry_cyry.FieldByName('dm').AsString
      Else
        v_cyry:= '%'
    Else
      v_cyry:= '%'
  Else
    v_cyry:= '%';

  With qry_seek do
  begin
    Close;
    Parameters.ParamByName('date1').Value:= v_date1;
    Parameters.ParamByName('date2').Value:= v_date2;
    Parameters.ParamByName('blks').Value:= v_blks;
    Parameters.ParamByName('blys').Value:= v_blys;
    Parameters.ParamByName('cyry').Value:= v_cyry;
    Open;

    IF RecordCount <= 0 then
      Application.MessageBox('错误提示:没有检索到满足条件记录!','错误提示',16);
  end;
end;

procedure Tfrm_cx_cy.BBtn_exitClick(Sender: TObject);
begin
  Close;
end;

procedure Tfrm_cx_cy.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  IF key = 13 then
    Proc_SelectBlys
  Else if Key = 27 then
    Edit2.SetFocus;
end;

procedure Tfrm_cx_cy.DBGrid1DblClick(Sender: TObject);
begin
  Proc_SelectBlys;
end;

procedure Tfrm_cx_cy.DBGrid2DblClick(Sender: TObject);
begin
  Proc_SelectCyry;
end;

procedure Tfrm_cx_cy.DBGrid2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  IF key = 13 then
    Proc_SelectCyry
  Else if Key = 27 then
    Edit3.SetFocus;
end;

procedure Tfrm_cx_cy.DBGrid1Exit(Sender: TObject);
begin
  DBGrid1.Visible:= False;
end;

procedure Tfrm_cx_cy.DBGrid2Exit(Sender: TObject);
begin
  DBGrid2.Visible:= False;
end;

end.
