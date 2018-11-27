unit p_yzyzx;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ComCtrls, DB, ADODB, cxControls, cxContainer,
  cxEdit, cxTextEdit, cxMemo;

type
  Tfrm_yzyzx = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Button1: TButton;
    Button2: TButton;
    Label1: TLabel;
    DateTimePicker1: TDateTimePicker;
    Label2: TLabel;
    ComboBox1: TComboBox;
    cxMemo1: TcxMemo;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DateTimePicker1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_yzyzx: Tfrm_yzyzx;

implementation

uses p_bqgl_zxypyz, p_dm, p_func;

{$R *.dfm}

procedure Tfrm_yzyzx.Button1Click(Sender: TObject);
begin
  frm_zxypyz.zxsj := formatdatetime('yyyymmdd', DateTimePicker1.DateTime);
  frm_zxypyz.qyyf := copy(ComboBox1.Text, 1, 4);
  if frm_zxypyz.cxCheckBox3.Checked then
  begin
    if frm_zxypyz.qyyf = '' then
    begin
      application.MessageBox('有药品医嘱请选择药房!', '提示', 0 + 48);
      combobox1.SetFocus;
      abort;
    end;
  end;
  frm_zxypyz.iszx := true;
  close;
end;

procedure Tfrm_yzyzx.Button2Click(Sender: TObject);
begin
  frm_zxypyz.iszx := false;
  close;
end;

procedure Tfrm_yzyzx.DateTimePicker1Change(Sender: TObject);
begin
  if formatdatetime('yyyymmdd', DateTimePicker1.DateTime) < formatdatetime('yyyymmdd', frm_func.curr_date) then
    application.MessageBox('注意:选择日期小于当前日期，只能补记日期大于医嘱开单日期以后的长期医嘱', '提示', 0 + 48);
end;

procedure Tfrm_yzyzx.FormShow(Sender: TObject);
var
  xgks, chyf: string;
begin
  DateTimePicker1.DateTime := frm_func.curr_date;
  try
    with dm_data.qry_pub do
    begin
      close;
      sql.Text := 'select xgks,chyf from sys_ksdm where dm=' + #39 + pub_ksdm + #39;
      open;
      xgks := FieldByName('xgks').AsString;
      chyf := FieldByName('chyf').AsString;
      if trim(xgks) <> '' then
      begin
        close;
        sql.text := 'select dm,mc from sys_ksdm where dm=' + #39 + xgks + #39;
        open;
        ComboBox1.Items.Add(trim(FieldByName('dm').AsString) + '-' + trim(FieldByName('mc').AsString));
        ComboBox1.Text:=trim(FieldByName('dm').AsString) + '-' + trim(FieldByName('mc').AsString);
      end
      else
      begin
        application.MessageBox('系统没有设置医嘱对应的相关西药房!', '提示', 0 + 48);
        close;
      end;
      if trim(chyf) <> '' then
      begin
        close;
        sql.text := 'select dm,mc from sys_ksdm where dm=' + #39 + chyf + #39;
        open;
        ComboBox1.Items.Add(trim(FieldByName('dm').AsString) + '-' + trim(FieldByName('mc').AsString));
      end;
    end;
  except
  end;
  if not isbqyzxcyf then
  begin
    ComboBox1.Visible := false;
    Label2.Visible := false;
    cxMemo1.Visible := false;
  end;
end;

end.

