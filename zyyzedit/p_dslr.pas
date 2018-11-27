unit p_dslr;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  Tfrm_dslr = class(TForm)
    lbl1: TLabel;
    btn1: TButton;
    btn2: TButton;
    edt_1: TEdit;
    lbl2: TLabel;
    ComboBox1: TComboBox;
    procedure btn2Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure edt_1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edt_1KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
     ds : string;
    { Public declarations }
  end;

var
  frm_dslr: Tfrm_dslr;

  function func_dslr(fs:string):string;

implementation

{$R *.dfm}
 uses
 p_dm;
procedure Tfrm_dslr.btn1Click(Sender: TObject);
begin
  if lbl1.Caption='中药处方剂量' then
  begin
    if Trim(edt_1.Text)='' then
    begin
      edt_1.text:='1';
    end
    else
    begin
      if StrToInt(Trim(edt_1.Text))>10 then
      begin
        if Application.MessageBox('处方剂量超过10副，请确认是否剂量输入正确？', 
          '警告', MB_OKCANCEL + MB_ICONQUESTION + MB_DEFBUTTON2) = IDCANCEL then
        begin
          Exit;
        end;

      end;
    end;
  end;
  if pub_yydm = '0266' then
  begin
    ds := Trim(edt_1.Text) +Trim(ComboBox1.Text);
  end else
  begin
    ds := Trim(edt_1.Text);
  end;
  Close;
end;

procedure Tfrm_dslr.btn2Click(Sender: TObject);
begin
    ds := '';
    close;
end;

procedure Tfrm_dslr.edt_1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if Key=13 then
    begin
        btn1.SetFocus;
    end;
end;

procedure Tfrm_dslr.edt_1KeyPress(Sender: TObject; var Key: Char);
begin
  if lbl1.Caption='中药处方剂量' then
  begin
    if not ( (key = #13) or ( Key in ['0'..'9'])  or (key = #8) )  then
    begin
      key:=#0;
    end;
  end;
end;

procedure Tfrm_dslr.FormShow(Sender: TObject);
begin
  if frm_dslr.lbl1.Caption='中药处方剂量' then
  begin
    btn2.Visible:=false;
  end;
  if pub_yydm = '0266' then
  begin
    dm_data.qry_pub.SQL.Clear;
    dm_data.qry_pub.SQL.Add('select * from sys_dslx');
    dm_data.qry_pub.Open;
    dm_data.qry_pub.First;
    while not dm_data.qry_pub.Eof do
    begin
    ComboBox1.Items.Add(dm_data.qry_pub.FieldByName('mc').AsString);
    dm_data.qry_pub.Next;
    end;
    ComboBox1.Visible := True;
    lbl2.Visible := False;
  end;

end;

function func_dslr(fs:string):string;
var res : string;
begin
    Application.CreateForm(Tfrm_dslr,frm_dslr);
    if fs='2' then
    begin
      frm_dslr.lbl1.Caption:='中药处方剂量';
      frm_dslr.lbl2.Caption:='副';
    end;
    if fs='3' then
    begin
      frm_dslr.lbl2.Caption:='';
    end;
    if fs='4'  then      //泵入
    begin
       frm_dslr.Caption:='请输入泵速';
       frm_dslr.lbl1.Caption:='泵速';
       frm_dslr.lbl2.Caption:='ml/h';
    end;
    frm_dslr.ShowModal;
    res := frm_dslr.ds;
    frm_dslr.Free;
    Result:=res;
end;

end.
