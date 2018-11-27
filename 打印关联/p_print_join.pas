unit p_print_join;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Printers, Registry;

type
  Tfrm_Print_join = class(TForm)
    BBtn_join: TBitBtn;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    BBtn_save: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure BBtn_saveClick(Sender: TObject);
    procedure BBtn_joinClick(Sender: TObject);
  private
    { Private declarations }
    Prv_PrintJoinStr: string; //��ʽ:'Pxx-Bxx;Pxx-Bxx;...':����xx��ʾ���б��е����;
    procedure Proc_BillOfPrinterIndex(const v_xh: Integer); //��ʾ��������Ʊ��
    procedure Proc_PrinterOfBillIndex(const v_xh: Integer); //��ʾ����������ӡ��
    procedure Proc_ChangPrinter(const v_xh_p: Integer;const v_xh_b_new: Integer);//�ı��ӡ������
  public
    { Public declarations }
  end;

var
  frm_Print_join: Tfrm_Print_join;

implementation
uses p_dm;
{$R *.dfm}

procedure Tfrm_Print_join.BBtn_joinClick(Sender: TObject);
begin
  Proc_ChangPrinter(ComboBox1.ItemIndex, ComboBox2.ItemIndex);
end;

procedure Tfrm_Print_join.BBtn_saveClick(Sender: TObject);
var v_reg: TRegistry;
begin
  v_reg := TRegistry.Create;
  with v_reg do
  begin
    RootKey := HKEY_LOCAL_MACHINE;
    if OpenKey('SoftWare\myserver', False) then
    Try
      WriteString('PrinterString', Prv_PrintJoinStr);
      Application.MessageBox('��ʾ:���ñ���ɹ�!', '��ʾ', MB_OK + MB_ICONINFORMATION);
    Except
      Application.MessageBox('������ʾ:��ӡ����Ʊ�ݹ�������ʧ��!', '������ʾ', 16);
    End;
    CloseKey;
    Free;
  end;

end;

procedure Tfrm_Print_join.ComboBox1Change(Sender: TObject);
begin
  Proc_BillOfPrinterIndex(ComboBox1.ItemIndex);
end;

procedure Tfrm_Print_join.FormShow(Sender: TObject);
var v_reg: TRegistry;
begin
  if pub_yydm='0003' then
  begin
    ComboBox2.Items.Add('<��ҽԺ��������>');
  end;
  if pub_yydm = '0269' then //̨ɽҽԺ��ƿǩ�ͼ�������ֿ�����
  begin
    ComboBox2.Items.Add('<��Һƿǩ>');
    ComboBox2.Items.Add('<��������>');
    ComboBox2.Items.Delete(3);
  end;  
  ComboBox1.Items := Printer.Printers;
  ComboBox1.ItemIndex := Printer.PrinterIndex;
  v_reg := TRegistry.Create;
  with v_reg do
  begin
    RootKey := HKEY_LOCAL_MACHINE;
    if OpenKey('SoftWare\myserver', False) then
      Prv_PrintJoinStr := ReadString('PrinterString');
    CloseKey;
    Free;
  end;

  Proc_BillOfPrinterIndex(0);
end;

procedure Tfrm_Print_join.Proc_BillOfPrinterIndex(const v_xh: Integer);
var v_pos: Integer;
  v_BillIndex: Integer;
  v_PrintJoinStr: string;
  v_xh_b: Integer;
begin
  v_BillIndex:= -1;
  if Prv_PrintJoinStr <> '' then
  begin
    v_pos := Pos('P' + IntToStr(v_xh), Prv_PrintJoinStr);
    if v_pos > 0 then
    begin
      v_PrintJoinStr := Copy(Prv_PrintJoinStr, v_pos, Length(Prv_PrintJoinStr));
      v_xh_b := Length('P' + IntToStr(v_xh)) + 1 + 1;
      v_BillIndex := StrToInt(Copy(v_PrintJoinStr, v_xh_b + 1, Pos(';', v_PrintJoinStr) - v_xh_b - 1));
    end;
    ComboBox2.ItemIndex:= v_BillIndex;
  end;
end;

procedure Tfrm_Print_join.Proc_ChangPrinter(const v_xh_p: Integer;const v_xh_b_new: Integer);
var v_xh, v_new, v_temp: String;
begin
  v_xh:= 'P' + IntToStr(v_xh_p);
  v_new:= v_xh + '-' + 'B'+IntToStr(v_xh_b_new) + ';';

  if Pos(v_xh, Prv_PrintJoinStr) > 0 then
  begin
    v_temp:= Copy(Prv_PrintJoinStr, Pos(v_xh, Prv_PrintJoinStr), Length(Prv_PrintJoinStr));
    v_temp:= Copy(v_temp, 1, Pos(';', v_temp));

    Prv_PrintJoinStr:= StringReplace(Prv_PrintJoinStr, v_temp, v_new, [rfReplaceAll]);
  end
  else
    Prv_PrintJoinStr:= Prv_PrintJoinStr + v_new ;
end;

procedure Tfrm_Print_join.Proc_PrinterOfBillIndex(const v_xh: Integer);
begin

end;

end.

