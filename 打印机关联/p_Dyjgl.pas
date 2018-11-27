unit p_Dyjgl;

interface                      

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, cxControls, cxContainer, cxEdit, cxGroupBox, Printers,
  Registry, IniFiles, TypInfo, p_func;
  
const
  csIniPrinterSection = 'PrinterString.ini';

type
  Tpjlx = (
    //0-10  门诊

    结算收据,
    预交收据,
    银行小票,
    记费明细,
    腕带,
    费用清单
  );
type
  TFrm_Dyjgl = class(TForm)
    ScrollBox1: TScrollBox;
    gb_Pjlb: TcxGroupBox;
    cxGroupBox1: TcxGroupBox;
    Label1: TLabel;
    Btn_Save: TButton;
    Button1: TButton;
    procedure gb_PjlbDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure gb_PjlbDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure FormShow(Sender: TObject);
    procedure Btn_SaveClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    TmpDefaultPrinter:integer;
    { Public declarations }
    procedure AddPj(pName:Tpjlx);
    Procedure initPrinterList;
    function ChangeDefaultPrinter(tp:Tpjlx; Cp:Boolean=False):String;
    function ChangeDefaultPrinterIdx(tp:Tpjlx; Cp:Boolean=False):integer;
    function RevertDefaultPrinter(Cp:Boolean=False):Boolean;
    procedure SetBBLocal(Akey:string; Avalue:Integer);
  end;

var
  Frm_Dyjgl: TFrm_Dyjgl;
  PrinterStringFile:string;   //打印机关联ini
  Ini:TIniFile;


implementation

{$R *.dfm}

function TFrm_Dyjgl.ChangeDefaultPrinterIdx(tp:Tpjlx; Cp:Boolean=False):integer;
var
  TmpInt:Integer;
  TmpStr:string;
begin
  Result := Printer.PrinterIndex; 
  TmpDefaultPrinter := Printer.PrinterIndex;
  TmpStr := UTF8Decode(GetEnumName(TypeInfo(Tpjlx),Ord(tp)));
  TmpInt := Ini.ReadInteger(csIniPrinterSection, TmpStr, TmpDefaultPrinter);
  if TmpInt > Printer.Printers.Count then
  begin
    Application.MessageBox('关联的打印机异常！' + #13#10 +
      '请检查打印机关联，此张票据将使用默认打印机打印！', '打印机异常', MB_OK + MB_ICONSTOP);
    Abort;
  end else
  begin
    if cp then
      Proc_ChangePrinter(TmpInt, True);

  end;
  Result := TmpInt;
  OutputDebugString(PChar(Format('PrinterName:%d:%s' ,[TmpInt,Printer.Printers[TmpInt]])));
end;

function TFrm_Dyjgl.ChangeDefaultPrinter(tp:Tpjlx; Cp:Boolean=False):String;
var
  TmpInt:Integer;
  TmpStr:string;
begin
  Result := ''; 
  TmpDefaultPrinter := Printer.PrinterIndex;
  TmpStr := UTF8Decode(GetEnumName(TypeInfo(Tpjlx),Ord(tp)));
  TmpInt := Ini.ReadInteger(csIniPrinterSection, TmpStr, TmpDefaultPrinter);
  if TmpInt > Printer.Printers.Count then
  begin
    Application.MessageBox('关联的打印机异常！' + #13#10 +
      '请检查打印机关联，此张票据将使用默认打印机打印！', '打印机异常', MB_OK + MB_ICONSTOP);
    Abort;
  end else
  begin
    if cp then
      Proc_ChangePrinter(TmpInt, True);

  end;
  Result := Printer.Printers[TmpInt];
  OutputDebugString(PChar(Format('PrinterName:%d:%s' ,[TmpInt,Result])));
end;

function TFrm_Dyjgl.RevertDefaultPrinter(Cp:Boolean=False):Boolean;
begin
  if (TmpDefaultPrinter>0) and (TmpDefaultPrinter < Printer.Printers.Count) then
  begin
    if cp then
      Proc_ChangePrinter(TmpDefaultPrinter, True);
  end;
end;

procedure TFrm_Dyjgl.AddPj(pName:Tpjlx);
var
  TmpBtn:TButton;
begin
  TmpBtn := TButton.Create(Self);
  TmpBtn.Caption := UTF8Decode(GetEnumName(TypeInfo(Tpjlx),ord(pName)));
  TmpBtn.Parent := gb_Pjlb;
  TmpBtn.DragMode := dmAutomatic;
  TmpBtn.Align := alTop;
  TmpBtn.Height := 30;
  TmpBtn.Name := 'B'+inttostr(Integer(pName));
  TmpBtn.Tag := 1 ;
end;

Procedure TFrm_Dyjgl.initPrinterList;
procedure AddPrinterBox(PrinterName:string; PrinterIndex:integer);
var
  TmpGbx:TcxGroupBox;
begin
  TmpGbx := TcxGroupBox.Create(Self);
  TmpGbx.Parent := ScrollBox1;
  TmpGbx.Left := cxGroupBox1.Left;
  TmpGbx.Width := cxGroupBox1.Width;
  TmpGbx.Height := cxGroupBox1.Height;
  TmpGbx.Top := cxGroupBox1.Top + cxGroupBox1.Height * PrinterIndex;
  TmpGbx.Tag := PrinterIndex;
  TmpGbx.Name := 'P' + inttostr(PrinterIndex);
  TmpGbx.Caption := PrinterName;
  TmpGbx.OnDragDrop := gb_PjlbDragDrop;
  TmpGbx.OnDragOver := gb_PjlbDragOver
end;
var
  I: Integer;
begin
  for I := 0 to Printer.Printers.Count - 1 do
  begin
    AddPrinterBox(Printer.Printers[I],i);
  end;
end;

procedure TFrm_Dyjgl.Btn_SaveClick(Sender: TObject);
var
  I:Integer;
begin
  Ini.EraseSection(csIniPrinterSection);
  for I := 0 to Self.ComponentCount - 1 do
  begin
    if (Self.Components[i] is TButton) and
       (Self.Components[i].Tag = 1) and
       ((Self.Components[i] as TButton).Parent.Tag <> -1) then
    begin
      Ini.WriteInteger(csIniPrinterSection,
                      (Self.Components[i] as TButton).Caption,
                      (Self.Components[i] as TButton).Parent.Tag
                     );
    end;
  end;
  Ini.WriteInteger(csIniPrinterSection, 'PrinterCount', Printer.Printers.Count);
  ShowMessage('保存完成！');
end;

procedure TFrm_Dyjgl.SetBBLocal(Akey:string; Avalue:Integer);
var
  BtnName:string;
begin
  BtnName := 'B' + inttostr(GetEnumValue(Typeinfo(Tpjlx),UTF8Encode(Trim(Akey))));
  if (Self.FindComponent(BtnName)<>nil) and
     (Self.FindComponent('P'+inttostr(Avalue))<>nil) then
   (Self.FindComponent(BtnName) as TButton).Parent :=
     Self.FindComponent('P'+inttostr(Avalue)) as TcxGroupBox;
end;

procedure TFrm_Dyjgl.Button1Click(Sender: TObject);
var
  I: Integer;
  ls:TStringList;
  TmpInt:Integer;
begin
  ls:=TStringList.Create;
  ini.ReadSection(csIniPrinterSection, ls);
  for I := 0 to ls.Count - 1 do
  begin
    TmpInt := ini.ReadInteger(csIniPrinterSection, ls[i], -1);
    SetBBLocal(ls[i], TmpInt);
  end;
  ls.Free;
end;

procedure TFrm_Dyjgl.FormShow(Sender: TObject);
begin
  AddPj(预交收据);
  AddPj(结算收据);
  AddPj(银行小票);
  AddPj(记费明细);
  AddPj(腕带);
  AddPj(费用清单);
  initPrinterList;

  Button1.Click;
end;

procedure TFrm_Dyjgl.gb_PjlbDragDrop(Sender, Source: TObject; X, Y: Integer);
begin
  if Source is TButton then
  begin
    (Source as TButton).Parent := Sender as TWinControl;
  end;
end;

procedure TFrm_Dyjgl.gb_PjlbDragOver(Sender, Source: TObject; X, Y: Integer;
  State: TDragState; var Accept: Boolean);
begin
  if Source is TButton then begin
    Accept := True;
  end else begin
    Accept := False;
  end;

end;
initialization
  PrinterStringFile := ExtractFilePath(application.ExeName) + csIniPrinterSection;
  Ini := TIniFile.Create(PrinterStringFile);

finalization
  Ini.Free;

end.
