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
    Prv_PrintJoinStr: string; //格式:'Pxx-Bxx;Pxx-Bxx;...':其中xx表示在列表中的序号;
    procedure Proc_BillOfPrinterIndex(const v_xh: Integer); //显示关联关联票据
    procedure Proc_PrinterOfBillIndex(const v_xh: Integer); //显示关联关联打印机
    procedure Proc_ChangPrinter(const v_xh_p: Integer;const v_xh_b_new: Integer);//改变打印机设置
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
      Application.MessageBox('提示:设置保存成功!', '提示', MB_OK + MB_ICONINFORMATION);
    Except
      Application.MessageBox('错误提示:打印机与票据关联保存失败!', '错误提示', 16);
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
    ComboBox2.Items.Add('<三医院检验条码>');
  end;
  if pub_yydm = '0269' then //台山医院将瓶签和检验条码分开关联
  begin
    ComboBox2.Items.Add('<输液瓶签>');
    ComboBox2.Items.Add('<检验条码>');
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

