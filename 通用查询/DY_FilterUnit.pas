unit DY_FilterUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxTextEdit, cxControls, cxContainer, cxEdit, cxMaskEdit,
  cxDropDownEdit, StdCtrls, Menus, cxLookAndFeelPainters, cxButtons, Buttons, ADODB, DB,
  cxCalendar;

type
  TFilter_frm = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    cbbField1: TcxComboBox;
    cbbField2: TcxComboBox;
    cbbField3: TcxComboBox;
    cbbField4: TcxComboBox;
    cbbField5: TcxComboBox;
    cbbCom1: TcxComboBox;
    cbbCom2: TcxComboBox;
    cbbCom3: TcxComboBox;
    cbbCom4: TcxComboBox;
    cbbCom5: TcxComboBox;
    cxtxtdtValue1: TcxTextEdit;
    cxtxtdtValue2: TcxTextEdit;
    cxtxtdtValue3: TcxTextEdit;
    cxtxtdtValue4: TcxTextEdit;
    cxtxtdtValue5: TcxTextEdit;
    cbbAnd1: TcxComboBox;
    cbbAnd2: TcxComboBox;
    cbbAnd3: TcxComboBox;
    cbbAnd4: TcxComboBox;
    btnClear: TBitBtn;
    btnEnter: TBitBtn;
    btnCancel: TBitBtn;
    cxdtdt1: TcxDateEdit;
    cxdtdt2: TcxDateEdit;
    cxdtdt3: TcxDateEdit;
    cxdtdt4: TcxDateEdit;
    cxdtdt5: TcxDateEdit;
    procedure cbbField1PropertiesChange(Sender: TObject);
    procedure cxtxtdtValue1PropertiesChange(Sender: TObject);
    procedure cxdtdtCommPropertiesChange(Sender: TObject);
    procedure btnEnterClick(Sender: TObject);
    procedure btnClearClick(Sender: TObject);
    procedure cxtxtdtValue1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    FDataSet: TADODataSet;
    ChkInt: Boolean; //检查是否只能输入数值
    FTableName: string;
    FilterS: string; //查询条件中文
    FilterE: string; //查询条件英文
    function GetFilterString: string;
    procedure LoadEdit;
  public
    { Public declarations }
  end;
function GetFilterStr(FieldDataSet: TadodataSet; sTableName: string; var ReturnCaption: string): string;
implementation
uses DY_PublicUnit;
{$R *.dfm}

function GetFilterStr(FieldDataSet: TadodataSet; sTableName: string; var ReturnCaption: string): string;
var
  Filter_frm: TFilter_frm;
begin
  Filter_frm := TFilter_frm.Create(Application);
  with Filter_frm do
  begin
    FDataSet := FieldDataSet;
    FTableName := sTableName;
    LoadEdit;
    if ShowModal = mrOk then
    begin
      Result := FilterE;
      ReturnCaption := FilterS;
    end else
      Result := '@Fang1102';

    Free;
  end;
end;

procedure TFilter_frm.btnClearClick(Sender: TObject);
begin
  FilterE := '';
  FilterS := '';
end;

procedure TFilter_frm.btnEnterClick(Sender: TObject);
begin
  FilterE := GetFilterString;
end;

procedure TFilter_frm.cbbField1PropertiesChange(Sender: TObject);
var
  ComponeName, FiledName, FieldType: string;
  procedure SetComponeState(cxDate: TcxDateEdit; cxText: TcxTextEdit; cxComBox: TcxComboBox);
  begin
    cxDate.Visible := False;
    cxText.Visible := False;
    if FieldType = 'Date' then
    begin
      cxDate.Visible := True;
      cxDate.Top := cxText.Top;
      cxDate.Left := cxText.Left;
    end else
      cxText.Visible := True;
    if FieldType = 'Str' then
    begin
      cxComBox.ItemIndex := 6;
      cxComBox.Enabled := False;
    end else
    begin
      cxComBox.Enabled := True;
      cxComBox.ItemIndex := 0;
    end;
    if FieldType = 'Int' then
      ChkInt := True
    else
      ChkInt := False;
  end;
begin
  FiledName := PTableReocrd(TcxComboBox(Sender).Properties.Items.Objects[TcxComboBox(Sender).ItemIndex]).Bywm;
  ComponeName := TcxComboBox(Sender).Name;
  FieldType := GetFieldTypeEx(FTableName, FiledName);

  if ComponeName = 'cbbField1' then
    SetComponeState(cxdtdt1, cxtxtdtValue1, cbbCom1);

  if ComponeName = 'cbbField2' then
    SetComponeState(cxdtdt2, cxtxtdtValue2, cbbCom2);

  if ComponeName = 'cbbField3' then
    SetComponeState(cxdtdt3, cxtxtdtValue3, cbbCom3);

  if ComponeName = 'cbbField4' then
    SetComponeState(cxdtdt4, cxtxtdtValue4, cbbCom4);

  if ComponeName = 'cbbField5' then
    SetComponeState(cxdtdt5, cxtxtdtValue5, cbbCom5);
end;

procedure TFilter_frm.cxdtdtCommPropertiesChange(Sender: TObject);
begin
  case TcxDateEdit(Sender).Tag of
    1: begin
        cxtxtdtValue1.Text := cxdtdt1.Text;
        cxtxtdtValue1PropertiesChange(cxtxtdtValue1);
      end;
    2: begin
        cxtxtdtValue2.Text := cxdtdt2.Text;
        cxtxtdtValue1PropertiesChange(cxtxtdtValue2);
      end;
    3: begin
        cxtxtdtValue3.Text := cxdtdt3.Text;
        cxtxtdtValue1PropertiesChange(cxtxtdtValue3);
      end;
    4: begin
        cxtxtdtValue4.Text := cxdtdt4.Text;
        cxtxtdtValue1PropertiesChange(cxtxtdtValue4);
      end;
    5: begin
        cxtxtdtValue5.Text := cxdtdt5.Text;
        cxtxtdtValue1PropertiesChange(cxtxtdtValue5);
      end;
  end;
end;

procedure TFilter_frm.cxtxtdtValue1KeyPress(Sender: TObject; var Key: Char);
begin
  if not ChkInt then Exit;
  if not (Key in ['0'..'9']) then
    if Key <> #8 then
      key := #0;
end;

procedure TFilter_frm.cxtxtdtValue1PropertiesChange(Sender: TObject);
var
  ComponeName: string;
  procedure SetComponeState(cxText: TcxTextEdit; cxComBoxAnd, cxComField, cxCom: TcxComboBox);
  begin
    if Trim(cxtxtdtValue1.Text) <> '' then
    begin
      cxCom.Enabled := True;
      cxComField.Enabled := True;
      cxComBoxAnd.Enabled := True;
      if cxText.Visible then
        cxText.Enabled := True;
      cxComBoxAnd.ItemIndex := 0;
      //cxComField.ItemIndex := 0;
    end else
    begin
      cxComBoxAnd.Enabled := False;
      cxComField.Enabled := False;
      cxCom.Enabled := False;
      cxText.Enabled := False;
    end;
  end;
begin
  ComponeName := TcxTextEdit(Sender).Name;
  if ComponeName = 'cxtxtdtValue1' then
    SetComponeState(cxtxtdtValue2, cbbAnd1, cbbField2, cbbCom2);
  if ComponeName = 'cxtxtdtValue2' then
    SetComponeState(cxtxtdtValue3, cbbAnd2, cbbField3, cbbCom3);
  if ComponeName = 'cxtxtdtValue3' then
    SetComponeState(cxtxtdtValue4, cbbAnd3, cbbField4, cbbCom4);
  if ComponeName = 'cxtxtdtValue4' then
    SetComponeState(cxtxtdtValue5, cbbAnd4, cbbField5, cbbCom5);

end;

function TFilter_frm.GetFilterString: string;
var
  sFilter: string;
  function GetCompValue(vIndex: integer): string;
  begin
    case vIndex of
      0: Result := ' = ';
      1: Result := ' <> ';
      2: Result := ' >= ';
      3: Result := ' <= ';
      4: Result := ' > ';
      5: Result := ' < ';
      6: Result := ' like ';
    end;
  end;
  function GetLinkQuy(vIndex: integer): string;
  begin
    case vIndex of
      0: Result := ' and ';
      1: Result := ' or ';
    end;
  end;
  function GetQuyValue(cxTextEdit: TcxTextEdit; cxDate: TcxDateEdit; cxCombox, cxFiled: TcxComboBox): string;
  var
    vFiledName, FieldType: string;
  begin
    Result := '';
    vFiledName := PTableReocrd(cxFiled.Properties.Items.Objects[cxFiled.ItemIndex]).Bywm;
    FieldType := GetFieldTypeEx(FTableName, vFiledName);
    if (cxCombox.ItemIndex = 6) and not (cxDate.Visible) then
    begin
      Result := vFiledName + GetCompValue(cxCombox.ItemIndex) + #39 + '%' + Trim(cxTextEdit.Text) + '%' + #39;
    end else
    begin
      if (FieldType = 'Int') and (cxCombox.ItemIndex <> 6) then
        Result := vFiledName + GetCompValue(cxCombox.ItemIndex) + Trim(cxTextEdit.Text)
      else
        Result := vFiledName + GetCompValue(cxCombox.ItemIndex) + #39 + Trim(cxTextEdit.Text) + #39;
    end;
  end;
begin
  sFilter := '';
  FilterS := '';
  if (cxtxtdtValue1.Enabled) and (cxtxtdtValue1.Text <> '') then
  begin
    sFilter := GetQuyValue(cxtxtdtValue1, cxdtdt1, cbbCom1, cbbField1);
    FilterS := cbbField1.Text + '  ' + cbbCom1.Text + ' ' + Trim(cxtxtdtValue1.Text) + ' ; ';
  end;
  if (cxtxtdtValue2.Enabled) and (cxtxtdtValue2.Text <> '') then
  begin
    if Trim(sFilter) <> '' then
    begin
      sFilter := sFilter + GetLinkQuy(cbbAnd1.ItemIndex) + GetQuyValue(cxtxtdtValue2, cxdtdt2, cbbCom2, cbbField2);
      FilterS := FilterS + cbbAnd1.Text + ' ' + cbbField2.Text + '   ' + cbbCom2.Text + ' ' + Trim(cxtxtdtValue2.Text) + ' ; ';
    end else
    begin
      sFilter := GetQuyValue(cxtxtdtValue2, cxdtdt2, cbbCom2, cbbField2);
      FilterS := cbbField2.Text + '   ' + cbbCom2.Text + ' ' + Trim(cxtxtdtValue2.Text) + ' ; ';
    end;
  end;
  if (cxtxtdtValue3.Enabled) and (cxtxtdtValue3.Text <> '') then
  begin
    if Trim(sFilter) <> '' then
    begin
      sFilter := sFilter + GetLinkQuy(cbbAnd2.ItemIndex) + GetQuyValue(cxtxtdtValue3, cxdtdt3, cbbCom3, cbbField3);
      FilterS := FilterS + cbbAnd2.Text + ' ' + cbbField3.Text + '   ' + cbbCom3.Text + ' ' + Trim(cxtxtdtValue3.Text) + ' ; ';
    end else
    begin
      sFilter := GetQuyValue(cxtxtdtValue3, cxdtdt3, cbbCom3, cbbField3);
      FilterS := cbbField3.Text + '   ' + cbbCom3.Text + ' ' + Trim(cxtxtdtValue3.Text) + ' ; ';
    end;
  end;
  if (cxtxtdtValue4.Enabled) and (cxtxtdtValue4.Text <> '') then
  begin
    if Trim(sFilter) <> '' then
    begin
      sFilter := sFilter + GetLinkQuy(cbbAnd3.ItemIndex) + GetQuyValue(cxtxtdtValue4, cxdtdt4, cbbCom4, cbbField4);
      FilterS := FilterS + cbbAnd3.Text + ' ' + cbbField4.Text + '   ' + cbbCom4.Text + ' ' + Trim(cxtxtdtValue4.Text) + ' ; ';

    end else
    begin
      sFilter := GetQuyValue(cxtxtdtValue4, cxdtdt4, cbbCom4, cbbField4);
      FilterS := cbbField4.Text + '   ' + cbbCom4.Text + ' ' + Trim(cxtxtdtValue4.Text) + ' ; ';
    end;
  end;
  if (cxtxtdtValue5.Enabled) and (cxtxtdtValue5.Text <> '') then
  begin
    if Trim(sFilter) <> '' then
    begin
      sFilter := sFilter + GetLinkQuy(cbbAnd4.ItemIndex) + GetQuyValue(cxtxtdtValue5, cxdtdt5, cbbCom5, cbbField5);
      FilterS := FilterS + cbbAnd4.Text + ' ' + cbbField5.Text + '   ' + cbbCom5.Text + ' ' + Trim(cxtxtdtValue5.Text) + ' ; ';
    end else
    begin
      sFilter := GetQuyValue(cxtxtdtValue5, cxdtdt5, cbbCom5, cbbField5);
      FilterS := cbbField5.Text + '   ' + cbbCom5.Text + ' ' + Trim(cxtxtdtValue5.Text) + ' ; ';
    end;
  end;

  Result := sFilter;
end;

procedure TFilter_frm.LoadEdit;
var
  FieldName: string;
  PTable: PTableReocrd;
begin
  FDataSet.DisableControls;
  FDataSet.First;
  while not FDataSet.Eof do
  begin
    New(PTable);
    PTable.Bywm := FDataSet.FieldByName('fieldE').AsString;
    PTable.Bzwm := FDataSet.FieldByName('FieldC').AsString;
    cbbField1.Properties.Items.AddObject(PTable.Bzwm, Pointer(PTable));
    cbbField2.Properties.Items.AddObject(PTable.Bzwm, Pointer(PTable));
    cbbField3.Properties.Items.AddObject(PTable.Bzwm, Pointer(PTable));
    cbbField4.Properties.Items.AddObject(PTable.Bzwm, Pointer(PTable));
    cbbField5.Properties.Items.AddObject(PTable.Bzwm, Pointer(PTable));
    FDataSet.Next;
  end;
  FDataSet.EnableControls;
end;
end.

