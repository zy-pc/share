unit P_LCLJDRPG;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ComCtrls, Grids, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxMemo, cxGridCardView,
  cxGridBandedTableView, cxButtonEdit, ADODB, cxGridDBBandedTableView, cxTextEdit,
  cxCheckBox, Buttons, cxRadioGroup, cxCheckGroup;
const
  EOL = #13 + #10;
  CBBSTR = '=' + EOL + '<>' + EOL + 'LIKE';
  CBBNUM = '=' + EOL + '<>' + EOL + '>' + EOL + '>=' + EOL + '<' + EOL + '<=';
type
  Tfrm_LCLJDRPG = class(TForm)
    pnl1: TPanel;
    pnl2: TPanel;
    img1: TImage;
    bvl1: TBevel;
    lbl1: TLabel;
    lbl2: TLabel;
    pgcZB: TPageControl;
    tspgzb: TTabSheet;
    tsCalcute: TTabSheet;
    pnl3: TPanel;
    mmoZBMC: TMemo;
    btnZBMC: TButton;
    lbl: TLabel;
    lbl3: TLabel;
    cxgrdbtblvwGrid1DBTableView1: TcxGridDBTableView;
    cxgrdlvlGrid1Level1: TcxGridLevel;
    cxgrd1: TcxGrid;
    btnAdd: TButton;
    cxgrd2: TcxGrid;
    cxgrdbtblvw1: TcxGridDBTableView;
    cxgrdlvl1: TcxGridLevel;
    cxgrdtblvwZBJG: TcxGridTableView;
    cxgrdclmnZBJGZ: TcxGridColumn;
    cxgrdclmnZBJGDefault: TcxGridColumn;
    btnUpdate: TButton;
    btnDelete: TButton;
    lbl4: TLabel;
    cbbType: TComboBox;
    btnEnter: TBitBtn;
    btnCancel: TBitBtn;
    cxgrdTJ: TcxGrid;
    cxgrdbtblvw2: TcxGridDBTableView;
    cxgrdtblvwTJ: TcxGridTableView;
    cxgrdclmnZBXM: TcxGridColumn;
    cxgrdclmnLY: TcxGridColumn;
    cxGridLevel1: TcxGridLevel;
    lbl5: TLabel;
    edtXM: TEdit;
    cbbequer: TComboBox;
    cbbJG: TComboBox;
    cxGrid2: TcxGrid;
    cxgrdbtblvw3: TcxGridDBTableView;
    cxgrdtblvwPGTJShow: TcxGridTableView;
    cxgrdclmnShow: TcxGridColumn;
    cxGridLevel2: TcxGridLevel;
    cxgrdclmnTJZBLX: TcxGridColumn;
    cxgrdclmnTJZBID: TcxGridColumn;
    cxgrdclmnTJJG: TcxGridColumn;
    rbOne: TRadioButton;
    rbTwo: TRadioButton;
    btnADDTJ: TButton;
    btnUpdateTJ: TButton;
    btnDelTJ: TButton;
    cxgrdclmnZBID: TcxGridColumn;
    cxgrdclmnXMID: TcxGridColumn;
    cxgrdclmnGXS: TcxGridColumn;
    cxgrdclmnTJZ: TcxGridColumn;
    cxgrdtblvwZBJGShow: TcxGridTableView;
    cxgrdclmnZBMC: TcxGridColumn;
    cxgrdclmnZBJG: TcxGridColumn;
    cxgrdclmnPGID: TcxGridColumn;
    cxgrdclmnShowZBID: TcxGridColumn;
    cxgrdclmnZBLX: TcxGridColumn;
    procedure mmoZBMCKeyPress(Sender: TObject; var Key: Char);
    procedure btnZBMCClick(Sender: TObject);
    procedure cxgrdclmnZBJGZPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxgrdclmnZBJGDefaultPropertiesChange(Sender: TObject);
    procedure cxgrdtblvwZBJGEditValueChanged(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem);
    procedure cxgrdtblvwZBJGEditKeyDown(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit; var Key: Word;
      Shift: TShiftState);
    procedure btnAddClick(Sender: TObject);
    procedure cxgrdtblvwZBJGDataControllerAfterDelete(
      ADataController: TcxCustomDataController);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnUpdateClick(Sender: TObject);
    procedure pgcZBChange(Sender: TObject);
    procedure cxgrdtblvwTJFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure btnADDTJClick(Sender: TObject);
    procedure btnUpdateTJClick(Sender: TObject);
    procedure btnDelTJClick(Sender: TObject);
    procedure cxgrdclmnZBJGGetDataText(Sender: TcxCustomGridTableItem;
      ARecordIndex: Integer; var AText: string);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure cxgrdtblvwZBJGShowDblClick(Sender: TObject);
    procedure cxgrdtblvwZBJGShowDataControllerDataChanged(Sender: TObject);
    procedure cxgrdtblvwPGTJShowDataControllerDataChanged(Sender: TObject);
    procedure btnEnterClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
    vCurrDefault: Integer; //当前所选的缺省值
    vXMQuy: TADOQuery; //所需的路径项目数据源
    vPGZBQuy, vPGTJQuy: TADOQuery; //所需的指标数据源和指标条件数据源
    vPGID: string; //评估ID
    vZBType: Integer; //1：导入指标2：阶段指标
    vCurrentZBType: Integer; //当前选中的指标项的的类型 1:是评估指标2：是项目指标
    vChangeData: Boolean; //数据是否改变
    function GetMCFromPym(Pym: string): string;
    procedure ClearZBJGShow(chkAddRecord: Boolean);
    procedure ClearZBTJShow;
    procedure ChangData(chkAdd: Boolean);
    procedure ChangeTJData(chkAdd: Boolean);
    procedure ShowData;
    procedure SaveData;
  public
    { Public declarations }
  end;
function ShowDRPG(ZBType: Integer; PGZBQuy, PGTJQuy: TADOQuery; PGID: string; XMQuy: TADOQuery = nil): Boolean;
implementation
uses p_dm, P_Public, P_BMSelect, P_LCLJSJMX;
{$R *.dfm}

function ShowDRPG(ZBType: Integer; PGZBQuy, PGTJQuy: TADOQuery; PGID: string; XMQuy: TADOQuery = nil): Boolean;
var
  frm_LCLJDRPG: Tfrm_LCLJDRPG;
begin
  frm_LCLJDRPG := Tfrm_LCLJDRPG.Create(Application);
  with frm_LCLJDRPG do
  begin
    vPGZBQuy := PGZBQuy;
    vPGTJQuy := PGTJQuy;
    vPGID := PGID;
    vZBType := ZBType;
    vXMQuy := XMQuy;
    vChangeData := False;
    pgcZB.ActivePage := tspgzb;
    ShowData;
    if ShowModal = mrOk then
      Result := True;
    Free;
  end;
end;

function Tfrm_LCLJDRPG.GetMCFromPym(Pym: string): string;
var
  sSql: string;
begin
  with dm_data.Qry_pub do
  begin
    sSql := 'Select b.MC as FL,a.BM as ID,a.BM,a.MC,a.pym From LCLJ_BYCJYY a,LCLJ_BYCJYY b Where a.XZ=1 And a.MJ=1 And a.SJ=b.BM And b.MJ=0 ' +
      ' And (a.BM Like :P_V001 Or a.MC Like :P_V002 Or a.pym Like :P_V003) Order by FL,a.BM';
    SQL.Text := sSql;
    Parameters.ParseSQL(SQL.Text, True);
    Parameters.ParamByName('P_V001').Value := Pym + '%';
    Parameters.ParamByName('P_V002').Value := '%' + Pym + '%';
    Parameters.ParamByName('P_V003').Value := '%' + Pym + '%';
    Open;
    if IsEmpty then
    begin
      Close;
      Result := '';
      Exit;
    end;
    if recordCount > 1 then
    begin
     // ShowCodeData(dm_data.Qry_pub);
      Close;
      Result := '-1';
    end else
    begin
      Result := FieldByName('MC').AsString;
      Close;
    end;

  end;
end;

procedure Tfrm_LCLJDRPG.mmoZBMCKeyPress(Sender: TObject; var Key: Char);
var
  vSelCount, i, vPosTop, vPosLeft: Integer;
  vStrPym, vReturn, sSql: string;
  PosRect: TRect;
begin
  if Key = #13 then
  begin
    vStrPym := '';
    for I := 0 to mmoZBMC.Lines.Count - 1 do
      vStrPym := vStrPym + mmoZBMC.Lines[i];
    sSql := 'Select * From LCLJ_BYCJYY a,LCLJ_BYCJYY b Where a.XZ=1 And a.MJ=1 And a.SJ=b.BM And b.MJ=0 ' +
      ' And (a.BM Like ' + #39 + vStrPym + '%' + #39 + ' Or a.MC Like ' + #39 + '%' + vStrPym + '%' + #39
      + ' Or a.pym Like ' + #39 + '%' + vStrPym + '%' + #39 + ') Order by a.MC,a.BM';
    GetWindowRect(mmoZBMC.Handle, PosRect);
    vPosTop := PosRect.Top + mmoZBMC.Height;
    vPosLeft := PosRect.Left;
    vReturn := GetBmSelect(sSql, sSql, False, False, False, False, vPosLeft, vPosTop, vSelCount);
    if vSelCount = 0 then
    begin
      cbbType.SetFocus;
      Exit;
    end;
    if vSelCount = 1 then
    begin
      mmoZBMC.Lines.Clear;
      mmoZBMC.Lines.Add(vReturn);
      cbbType.SetFocus;
    end;
  end;
end;

procedure Tfrm_LCLJDRPG.ClearZBTJShow;
var
  i: Integer;
begin
  for I := 0 to cxgrdtblvwTJ.DataController.RecordCount - 1 do
    cxgrdtblvwTJ.DataController.DeleteRecord(0);
end;

procedure Tfrm_LCLJDRPG.pgcZBChange(Sender: TObject);
var
  i: Integer;
begin
  if pgcZB.ActivePage = tsCalcute then
  begin
    cxgrdtblvwTJ.OnFocusedRecordChanged := nil;
    ClearZBTJShow;
    btnADDTJ.Enabled := False;
    vCurrentZBType := -1; //初始化标项的的类型
    //导入指标时只能增加评估指标项
    for I := 0 to cxgrdtblvwZBJGShow.DataController.RecordCount - 1 do
    begin
      cxgrdtblvwTJ.DataController.AppendRecord;
      cxgrdtblvwTJ.DataController.Values[cxgrdtblvwTJ.DataController.RecordCount - 1, 0] :=
        cxgrdtblvwZBJGShow.DataController.Values[i, 0];
      cxgrdtblvwTJ.DataController.Values[cxgrdtblvwTJ.DataController.RecordCount - 1, 1] := '评估指标';
      cxgrdtblvwTJ.DataController.Values[cxgrdtblvwTJ.DataController.RecordCount - 1, 2] :=
        cxgrdtblvwZBJGShow.DataController.Values[i, 4];
      cxgrdtblvwTJ.DataController.Values[cxgrdtblvwTJ.DataController.RecordCount - 1, 3] :=
        cxgrdtblvwZBJGShow.DataController.Values[i, 3];
      cxgrdtblvwTJ.DataController.Values[cxgrdtblvwTJ.DataController.RecordCount - 1, 4] :=
        cxgrdtblvwZBJGShow.DataController.Values[i, 1];
    end;
    if vZBType = 2 then //阶段指标 是要增加路径项目
    begin
      if vXMQuy <> nil then
      begin
        vXMQuy.First;
        while not vXMQuy.Eof do
        begin
         //增加执行方式不为0的项目
          if vXMQuy.FieldByName('ZXFS').AsInteger > 0 then
          begin
            cxgrdtblvwTJ.DataController.AppendRecord;
            cxgrdtblvwTJ.DataController.Values[cxgrdtblvwTJ.DataController.RecordCount - 1, 0] :=
              vXMQuy.FieldByName('XMNR').AsString;
            cxgrdtblvwTJ.DataController.Values[cxgrdtblvwTJ.DataController.RecordCount - 1, 1] := '项目指标';
            cxgrdtblvwTJ.DataController.Values[cxgrdtblvwTJ.DataController.RecordCount - 1, 2] := 3;
            cxgrdtblvwTJ.DataController.Values[cxgrdtblvwTJ.DataController.RecordCount - 1, 3] :=
              vXMQuy.FieldByName('XMID').AsString;
            cxgrdtblvwTJ.DataController.Values[cxgrdtblvwTJ.DataController.RecordCount - 1, 4] :=
              vXMQuy.FieldByName('XMJG').AsString;
          end;
          vXMQuy.Next;
        end;
      end;
    end;
    cxgrdtblvwTJ.OnFocusedRecordChanged := cxgrdtblvwTJFocusedRecordChanged;
  end;
end;

procedure Tfrm_LCLJDRPG.ShowData;
var
  vZBStr, vGXSStr, vTJZStr, vZBID, vXMID: string;
  function GetZBMC(ZBID: string; vXMID: boolean): string;
  begin
    Result := '';
    if vXMID then
    begin
      if vXMQuy.Locate('XMID', ZBID, []) then
        Result := vXMQuy.FieldByName('XMNR').AsString
    end else
      if vPGZBQuy.Locate('ZBID', ZBID, []) then
        Result := vPGZBQuy.FieldByName('PGZB').AsString;
  end;
begin
  //显示指标数据
  vPGZBQuy.First;
  while not vPGZBQuy.Eof do
  begin
    cxgrdtblvwZBJGShow.DataController.AppendRecord;
    cxgrdtblvwZBJGShow.DataController.Values[cxgrdtblvwZBJGShow.DataController.RecordCount - 1, 0] :=
      vPGZBQuy.FieldByName('PGZB').AsString;
    cxgrdtblvwZBJGShow.DataController.Values[cxgrdtblvwZBJGShow.DataController.RecordCount - 1, 1] :=
      vPGZBQuy.FieldByName('ZBJG').AsString;
    cxgrdtblvwZBJGShow.DataController.Values[cxgrdtblvwZBJGShow.DataController.RecordCount - 1, 2] := vPGID;
    cxgrdtblvwZBJGShow.DataController.Values[cxgrdtblvwZBJGShow.DataController.RecordCount - 1, 3] :=
      vPGZBQuy.FieldByName('ZBID').AsString;
    cxgrdtblvwZBJGShow.DataController.Values[cxgrdtblvwZBJGShow.DataController.RecordCount - 1, 4] :=
      vPGZBQuy.FieldByName('ZBLX').AsInteger;
    vPGZBQuy.Next;
  end;
 //显示指标条件
  vPGTJQuy.First;
  while not vPGTJQuy.Eof do
  begin
    cxgrdtblvwPGTJShow.DataController.AppendRecord;
    vZBID := vPGTJQuy.FieldByName('ZBID').AsString;
    cxgrdtblvwPGTJShow.DataController.Values[cxgrdtblvwPGTJShow.DataController.RecordCount - 1, 1] := vZBID;
    vXMID := vPGTJQuy.FieldByName('XMID').AsString;
    cxgrdtblvwPGTJShow.DataController.Values[cxgrdtblvwPGTJShow.DataController.RecordCount - 1, 2] := vXMID;
    vGXSStr := vPGTJQuy.FieldByName('GXS').AsString;
    cxgrdtblvwPGTJShow.DataController.Values[cxgrdtblvwPGTJShow.DataController.RecordCount - 1, 3] := vGXSStr;
    vTJZStr := vPGTJQuy.FieldByName('TJZ').AsString;
    cxgrdtblvwPGTJShow.DataController.Values[cxgrdtblvwPGTJShow.DataController.RecordCount - 1, 4] := vTJZStr;
    if vPGTJQuy.FieldByName('TJZH').AsInteger = 1 then
      rbOne.Checked := True
    else
      rbTwo.Checked := True;
    if vZBID <> '' then
      vZBStr := GetZBMC(vZBID, False)
    else
      vZBStr := GetZBMC(vXMID, True);
    cxgrdtblvwPGTJShow.DataController.Values[cxgrdtblvwPGTJShow.DataController.RecordCount - 1, 0] :=
      '[' + vZBStr + ']' + vGXSStr + '[' + vTJZStr + ']';
    vPGTJQuy.Next;
  end;
  cxgrdtblvwZBJG.DataController.AppendRecord;
  cxgrdtblvwZBJG.DataController.Values[cxgrdtblvwZBJG.DataController.RecordCount - 1, 1] := False;
  vCurrDefault := -1;
end;

procedure Tfrm_LCLJDRPG.ChangData(chkAdd: Boolean);
var
  i: Integer;
  vPGZB, vZBJG, vDefZB: string;
  E: Extended;
  function ChkDoubleRecord(vRecordStr: string; vRecordIndex: Integer): Boolean;
  var
    K: Integer;
  begin
    Result := False;
    for K := vRecordIndex + 1 to cxgrdtblvwZBJG.DataController.RecordCount - 1 do
      if vRecordStr = cxgrdtblvwZBJG.DataController.Values[k, 0] then
      begin
        Result := True;
        Break;
      end;

  end;
  function ChkDoubleZB(vZBStr: string): Boolean;
  var
    vI: Integer;
  begin
    Result := False;
    for vI := 0 to cxgrdtblvwZBJGShow.DataController.RecordCount - 1 do
    begin
      if vZBStr = cxgrdtblvwZBJGShow.DataController.Values[vI, 0] then
      begin
        Result := True;
        Break;
      end;

    end;
  end;
begin
  vPGZB := '';
  for i := 0 to mmoZBMC.Lines.Count - 1 do
    vPGZB := vPGZB + mmoZBMC.Lines[i];
  if vPGZB = '' then
  begin
    Application.MessageBox(Pchar('请输入指标名称'), '提示', mb_OK + MB_ICONINFORMATION);
    mmoZBMC.SetFocus;
    Exit;
  end;
  if (cxgrdtblvwZBJG.DataController.RecordCount = 1) then
    if (VarIsNull(cxgrdtblvwZBJG.DataController.Values[0, 0])) or
      (cxgrdtblvwZBJG.DataController.Values[0, 0] = '') or
      (VarIsNull(cxgrdtblvwZBJG.DataController.Values[0, 1])) then
    begin
      Application.MessageBox(Pchar('请输入指标结果'), '提示', mb_OK + MB_ICONINFORMATION);
      cxgrd1.SetFocus;
      Exit;
    end;

  vZBJG := '';
  for i := 0 to cxgrdtblvwZBJG.DataController.RecordCount - 1 do
  begin
    if (VarIsNull(cxgrdtblvwZBJG.DataController.Values[i, 0])) or
      (cxgrdtblvwZBJG.DataController.Values[i, 0] = '') or
      (VarIsNull(cxgrdtblvwZBJG.DataController.Values[i, 1])) then
      cxgrdtblvwZBJG.DataController.DeleteRecord(i)
    else
    begin
      if ChkDoubleRecord(cxgrdtblvwZBJG.DataController.Values[i, 0], i) then
      begin
        Application.MessageBox(Pchar('输入了重复结果'), '提示', mb_OK + MB_ICONINFORMATION);
        cxgrdtblvwZBJG.Controller.SelectedRecords[i].Selected;
        cxgrd1.SetFocus;
        Exit;
      end else
      begin
        if vZBJG = '' then
          vZBJG := vZBJG + cxgrdtblvwZBJG.DataController.Values[i, 0]
        else
          vZBJG := vZBJG + ',' + cxgrdtblvwZBJG.DataController.Values[i, 0];
        if cxgrdtblvwZBJG.DataController.Values[i, 1] then
          vDefZB := cxgrdtblvwZBJG.DataController.Values[i, 0];
      end;
    end;
  end;
  if vDefZB = '' then
  begin
    Application.MessageBox(Pchar('请指定指标的缺省结果'), '提示', mb_OK + MB_ICONINFORMATION);
    cxgrd1.SetFocus;
    Exit;
  end;
  vZBJG := vZBJG + ',' + vDefZB;
  if cbbType.ItemIndex = 1 then
  begin
    for I := 0 to cxgrdtblvwZBJG.DataController.RecordCount - 1 do
    begin
      if not TryStrToFloat(cxgrdtblvwZBJG.DataController.Values[i, 0], E) then
      begin
        Application.MessageBox(Pchar('输入的指标类型不是数值类型!'), '提示', mb_OK + MB_ICONINFORMATION);
        cxgrd1.SetFocus;
        Exit;
      end;
    end;
  end;
  vChangeData := True;
  if chkAdd then
  begin
    if ChkDoubleZB(vPGZB) then
    begin
      Application.MessageBox(Pchar('该指标已存在'), '提示', mb_OK + MB_ICONINFORMATION);
      mmoZBMC.SetFocus;
      Exit;
    end;
    cxgrdtblvwZBJGShow.DataController.AppendRecord;
    cxgrdtblvwZBJGShow.DataController.Values[cxgrdtblvwZBJGShow.DataController.RecordCount - 1, 0] := vPGZB;
    cxgrdtblvwZBJGShow.DataController.Values[cxgrdtblvwZBJGShow.DataController.RecordCount - 1, 1] := vZBJG;
    cxgrdtblvwZBJGShow.DataController.Values[cxgrdtblvwZBJGShow.DataController.RecordCount - 1, 2] := vPGID;
    cxgrdtblvwZBJGShow.DataController.Values[cxgrdtblvwZBJGShow.DataController.RecordCount - 1, 3] := GetColumnID('LCLJ_LJPGZB', 'ZBID'); //取得一个指标ID
    cxgrdtblvwZBJGShow.DataController.Values[cxgrdtblvwZBJGShow.DataController.RecordCount - 1, 4] := cbbType.ItemIndex + 1;
  end else
  begin
    cxgrdtblvwZBJGShow.DataController.Values[cxgrdtblvwZBJGShow.DataController.FocusedRecordIndex, 0] := vPGZB;
    cxgrdtblvwZBJGShow.DataController.Values[cxgrdtblvwZBJGShow.DataController.FocusedRecordIndex, 1] := vZBJG;
    cxgrdtblvwZBJGShow.DataController.Values[cxgrdtblvwZBJGShow.DataController.FocusedRecordIndex, 4] := cbbType.ItemIndex + 1;
  end;
  ClearZBJGShow(True);
end;

procedure Tfrm_LCLJDRPG.btnAddClick(Sender: TObject);
begin
  ChangData(True);
end;

procedure Tfrm_LCLJDRPG.ChangeTJData(chkAdd: Boolean);
var
  vZBID, vZBStr, vShowTj: string;
  function ChkDoubleRecord(vRecord: string): Boolean;
  var
    i: Integer;
  begin
    Result := False;
    for I := 0 to cxgrdtblvwPGTJShow.DataController.RecordCount - 1 do
      if vRecord = cxgrdtblvwPGTJShow.DataController.Values[i, 0] then
      begin
        Result := True;
        Break;
      end;
  end;
begin
  if cbbequer.ItemIndex = -1 then
  begin
    Application.MessageBox(Pchar('请指定关系式!'), '提示', mb_OK + MB_ICONINFORMATION);
    cbbequer.SetFocus;
    Exit;
  end;
  if cbbJG.ItemIndex = -1 then
  begin
    Application.MessageBox(Pchar('请指定计算条件值!'), '提示', mb_OK + MB_ICONINFORMATION);
    cbbJG.SetFocus;
    Exit;
  end;
  vZBStr := cxgrdtblvwTJ.DataController.Values[cxgrdtblvwTJ.DataController.FocusedRecordIndex, 0];
  vZBID := cxgrdtblvwTJ.DataController.Values[cxgrdtblvwTJ.DataController.FocusedRecordIndex, 3];
  vShowTj := '[' + vZBStr + ']' + cbbequer.Text + '[' + cbbJG.Text + ']';
  if ChkDoubleRecord(vShowTj) then
  begin
    Application.MessageBox('该计算条件已存在!', '提示', mb_OK + MB_ICONINFORMATION);
    cxgrdTJ.SetFocus;
    Exit;
  end;
  vChangeData := True;
  if chkAdd then
  begin
    cxgrdtblvwPGTJShow.DataController.AppendRecord;
    if vCurrentZBType = 1 then //评估指标
      cxgrdtblvwPGTJShow.DataController.Values[cxgrdtblvwPGTJShow.DataController.RecordCount - 1, 1] := vZBID;
    if vCurrentZBType = 2 then //项目指标
      cxgrdtblvwPGTJShow.DataController.Values[cxgrdtblvwPGTJShow.DataController.RecordCount - 1, 2] := vZBID;

    cxgrdtblvwPGTJShow.DataController.Values[cxgrdtblvwPGTJShow.DataController.RecordCount - 1, 3] := cbbequer.Text;
    cxgrdtblvwPGTJShow.DataController.Values[cxgrdtblvwPGTJShow.DataController.RecordCount - 1, 4] := cbbJG.Text;
    vShowTj := '[' + vZBStr + ']' + cbbequer.Text + '[' + cbbJG.Text + ']';
    cxgrdtblvwPGTJShow.DataController.Values[cxgrdtblvwPGTJShow.DataController.RecordCount - 1, 0] := vShowTj;
  end else
  begin
    if vCurrentZBType = 1 then //评估指标
      cxgrdtblvwPGTJShow.DataController.Values[cxgrdtblvwPGTJShow.DataController.FocusedRecordIndex, 1] := vZBID;
    if vCurrentZBType = 2 then //项目指标
      cxgrdtblvwPGTJShow.DataController.Values[cxgrdtblvwPGTJShow.DataController.FocusedRecordIndex, 2] := vZBID;

    cxgrdtblvwPGTJShow.DataController.Values[cxgrdtblvwPGTJShow.DataController.FocusedRecordIndex, 3] := cbbequer.Text;
    cxgrdtblvwPGTJShow.DataController.Values[cxgrdtblvwPGTJShow.DataController.FocusedRecordIndex, 4] := cbbJG.Text;
    cxgrdtblvwPGTJShow.DataController.Values[cxgrdtblvwPGTJShow.DataController.FocusedRecordIndex, 0] := vShowTj;
  end;
end;

procedure Tfrm_LCLJDRPG.btnADDTJClick(Sender: TObject);
begin
  ChangeTJData(True);
end;

procedure Tfrm_LCLJDRPG.btnDeleteClick(Sender: TObject);
var
  vZBID: string;
  i: Integer;
begin
  if cxgrdtblvwZBJGShow.DataController.RecordCount > 0 then
    if Application.MessageBox('确实要删除该指标吗？', '提示', MB_YESNO +
      MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES then
    begin
      vChangeData := True;
      vZBID := cxgrdtblvwZBJGShow.DataController.Values[cxgrdtblvwZBJGShow.DataController.FocusedRecordIndex, 3];
      cxgrdtblvwZBJGShow.DataController.DeleteFocused;
      //删除相关的条件值
      cxgrdtblvwPGTJShow.DataController.BeginUpdate;
      cxgrdtblvwPGTJShow.OptionsSelection.MultiSelect := True;
      for I := 0 to cxgrdtblvwPGTJShow.DataController.RecordCount - 1 do
      begin
        cxgrdtblvwPGTJShow.ViewData.Rows[i].Selected := False;
        if vZBID = cxgrdtblvwPGTJShow.DataController.Values[i, 1] then
          cxgrdtblvwPGTJShow.ViewData.Rows[i].Selected := True;
      end;
      cxgrdtblvwPGTJShow.DataController.DeleteSelection;
      cxgrdtblvwPGTJShow.OptionsSelection.MultiSelect := false;
      cxgrdtblvwPGTJShow.DataController.EndUpdate;
    end;
end;

procedure Tfrm_LCLJDRPG.btnDelTJClick(Sender: TObject);
begin
  if (cxgrdtblvwPGTJShow.DataController.RecordCount > 0) and
    (cxgrdtblvwPGTJShow.DataController.FocusedRecordIndex <> -1) then
    if Application.MessageBox('确实要删除该计算条件吗？', '提示', MB_YESNO +
      MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES then
    begin
      cxgrdtblvwPGTJShow.DataController.DeleteFocused;
      vChangeData := True;
    end;
end;

procedure Tfrm_LCLJDRPG.btnEnterClick(Sender: TObject);
begin
  if cxgrdtblvwZBJGShow.DataController.RecordCount = 0 then
  begin
    Application.MessageBox('还没有定义用于评估的指标。', '提示', MB_OK +
      MB_ICONINFORMATION);
    pgcZB.ActivePage := tspgzb;
    ModalResult := mrNone;
    Exit;
  end;
  if (cxgrdtblvwPGTJShow.DataController.RecordCount = 0) then
  begin
    Application.MessageBox('还没有定义用于评估的计算条件。', '提示', MB_OK +
      MB_ICONINFORMATION);
    pgcZB.ActivePage := tsCalcute;
    ModalResult := mrNone;
    Exit;
  end;
  SaveData;
end;

procedure Tfrm_LCLJDRPG.btnUpdateClick(Sender: TObject);
begin
  ChangData(False);
end;

procedure Tfrm_LCLJDRPG.btnUpdateTJClick(Sender: TObject);
begin
  if (cxgrdtblvwPGTJShow.DataController.RecordCount > 0) and
    (cxgrdtblvwPGTJShow.DataController.FocusedRecordIndex <> -1) then
    ChangeTJData(False);
end;

procedure Tfrm_LCLJDRPG.btnZBMCClick(Sender: TObject);
var
  showSql, sSql, vReturn: string;
  vSelCount, vPosTop, vPosLeft: Integer;
  PosRect: TRect;
begin
  GetWindowRect(mmoZBMC.Handle, PosRect);
  vPosTop := PosRect.Top + mmoZBMC.Height;
  vPosLeft := PosRect.Left;
  sSql := 'Select * From LCLJ_BYCJYY Where XZ = 1 and MJ=0  ';
  showSql := 'Select * From LCLJ_BYCJYY Where XZ = 1 and MJ=1  ';
  vReturn := GetBmSelect(sSql, showSql, True, False, False, False, vPosLeft, vPosTop, vSelCount);
  if vSelCount = 1 then
  begin
    mmoZBMC.Lines.Clear;
    mmoZBMC.Lines.Add(vReturn);
    cbbType.SetFocus;
  end;
end;

procedure Tfrm_LCLJDRPG.ClearZBJGShow(chkAddRecord: Boolean);
var
  i: Integer;
begin
  mmoZBMC.Lines.Clear;
  vCurrDefault := -1;
  for i := 0 to cxgrdtblvwZBJG.DataController.RecordCount - 1 do
    cxgrdtblvwZBJG.DataController.DeleteRecord(0);
  if chkAddRecord then
  begin
    cxgrdtblvwZBJG.DataController.AppendRecord;
    cxgrdtblvwZBJG.DataController.Values[cxgrdtblvwZBJG.DataController.RecordCount - 1, 1] := False;
  end;
end;

procedure Tfrm_LCLJDRPG.cxgrdclmnZBJGDefaultPropertiesChange(Sender: TObject);
begin

  if (cxgrdtblvwZBJG.DataController.Values[cxgrdtblvwZBJG.DataController.FocusedRecordIndex, 1] = False) or
    (cxgrdtblvwZBJG.DataController.Values[cxgrdtblvwZBJG.DataController.FocusedRecordIndex, 1] = null)
    then
  begin
    cxgrdtblvwZBJG.DataController.Values[cxgrdtblvwZBJG.DataController.FocusedRecordIndex, 1] := True;
    if (vCurrDefault <> -1) and (vCurrDefault <> cxgrdtblvwZBJG.DataController.FocusedRecordIndex) then
    begin
      cxgrdtblvwZBJG.DataController.Values[vCurrDefault, 1] := False;
      vCurrDefault := cxgrdtblvwZBJG.DataController.FocusedRecordIndex;
    end else
      vCurrDefault := cxgrdtblvwZBJG.DataController.FocusedRecordIndex;
  end;
end;

procedure Tfrm_LCLJDRPG.cxgrdclmnZBJGGetDataText(Sender: TcxCustomGridTableItem;
  ARecordIndex: Integer; var AText: string);
var
  i, vNum: Integer;
  vDisplayStr, vDefaultStr, vTempStr, vTemp1: string;
begin
  vDisplayStr := '';
  vNum := GetCommaStrCount(AText);
  vDefaultStr := GetCommaStr(AText, vNum);
  for i := 1 to vNum - 1 do
  begin
    vTempStr := GetCommaStr(AText, i);
    if vTempStr = vDefaultStr then
      vTemp1 := '●' + vTempStr
    else
      vTemp1 := '○' + vTempStr;

    if vDisplayStr = '' then
      vDisplayStr := vTemp1
    else
      vDisplayStr := vDisplayStr + #13 + vTemp1;
  end;

  AText := vDisplayStr;
end;

procedure Tfrm_LCLJDRPG.cxgrdclmnZBJGZPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  vQuySql, vShowSql, sSql, vReturn, s1, s2: string;
  vSelCount, vPosTop, vPosLeft, lCol: Integer;
  PosRect: TRect;
begin
  GetWindowRect(cxgrd1.Handle, PosRect);
  vPosTop := PosRect.Top + cxgrdtblvwZBJG.Controller.FocusedRecord.ViewInfo.FocusRectBounds.Bottom;
  vPosLeft := PosRect.Left;
  vQuySql := 'Select * From LCLJ_LJCJJG Where  MJ=0  ';
  sSql := 'IF OBJECT_ID(' + #39 + 'tempdb..#MyTemp' + #39') IS  NULL ' +
    'Select  BM,MC,pym,isnull(SJ,0)as sj,XZ,isnull(MJ,0) as MJ,convert(bit,1) as Sele into #MyTemp From LCLJ_LJCJJG Where mj=1 and isnull(sj,0)<>0 ';
  with dm_data.Qry_pub do
  begin
    close;
    SQL.Text := sSql;
    ExecSQL;
  end;
  vShowSql := 'Select BM,MC,pym,Sj,XZ,MJ ,Sele from tempdb..#MyTemp';

  vReturn := GetBmSelect(vQuySql, vShowSql, True, True, False, False, vPosLeft, vPosTop, vSelCount);
  if vSelCount = 1 then
  begin
    cxgrdtblvwZBJG.DataController.Values[cxgrdtblvwZBJG.DataController.FocusedRowIndex, 0] := vReturn;
    if vCurrDefault = -1 then
    begin
      cxgrdtblvwZBJG.DataController.Values[cxgrdtblvwZBJG.DataController.FocusedRowIndex, 1] := True;
      vCurrDefault := cxgrdtblvwZBJG.DataController.FocusedRowIndex;
    end else
      cxgrdtblvwZBJG.DataController.Values[cxgrdtblvwZBJG.DataController.FocusedRowIndex, 1] := False;

    cxgrdtblvwZBJG.DataController.AppendRecord;
    cxgrdtblvwZBJG.DataController.Values[cxgrdtblvwZBJG.DataController.RecordCount - 1, 1] := False;
  end else
  begin
    if vReturn <> '' then
    begin
      s1 := vReturn + ',';
      lCol := cxgrdtblvwZBJG.DataController.RecordCount - 1;
      while Pos(',', s1) <> 0 do
      begin
        s2 := Copy(s1, 0, pos(',', s1) - 1);
        s1 := Copy(s1, Pos(',', s1) + 1, Length(s1));

        if Trim(s2) <> '' then
        begin
          if vCurrDefault = -1 then
          begin
            cxgrdtblvwZBJG.DataController.Values[lCol, 1] := True;
            vCurrDefault := cxgrdtblvwZBJG.DataController.FocusedRowIndex;
          end else
            cxgrdtblvwZBJG.DataController.Values[lCol, 1] := False;
          cxgrdtblvwZBJG.DataController.Values[lCol, 0] := s2;
          cxgrdtblvwZBJG.DataController.AppendRecord;
          cxgrdtblvwZBJG.DataController.Values[cxgrdtblvwZBJG.DataController.RecordCount - 1, 1] := False;
          Inc(lCol);
        end;
        cxgrdtblvwZBJG.DataController.FocusedRowIndex := cxgrdtblvwZBJG.DataController.RecordCount - 1;
      end;
    end;
  end;

end;

procedure Tfrm_LCLJDRPG.cxgrdtblvwPGTJShowDataControllerDataChanged(
  Sender: TObject);
begin
  if cxgrdtblvwPGTJShow.DataController.RecordCount > 0 then
  begin
    btnUpdateTJ.Enabled := True;
    btnDelTJ.Enabled := True;
  end else
  begin
    btnUpdateTJ.Enabled := False;
    btnDelTJ.Enabled := False;
  end;

end;

procedure Tfrm_LCLJDRPG.cxgrdtblvwTJFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
var
  vNum, i: Integer;
  vJGStr, vTempStr: string;
begin
  if cxgrdtblvwTJ.DataController.RecordCount > 0 then
  begin
    edtXM.Text := cxgrdtblvwTJ.DataController.Values[cxgrdtblvwTJ.DataController.FocusedRecordIndex, 0];
    vJGStr := cxgrdtblvwTJ.DataController.Values[cxgrdtblvwTJ.DataController.FocusedRecordIndex, 4];
    cbbJG.Items.Clear;
    vNum := GetCommaStrCount(vJGStr);
    for I := 1 to vNum - 1 do
    //如果是项目类型则其结果值要处理
   {   if cxgrdtblvwTJ.DataController.Values[cxgrdtblvwTJ.DataController.FocusedRecordIndex, 2] = 3 then
      begin
        vTempStr := GetCommaStr(vJGStr, i);
        vTempStr := Copy(vTempStr, 1, Pos('|', vTempStr) - 1);
        cbbJG.Items.Add(vTempStr);
      end
      else }
        cbbJG.Items.Add(GetCommaStr(vJGStr, i));
    if cxgrdtblvwTJ.DataController.Values[cxgrdtblvwTJ.DataController.FocusedRecordIndex, 2] = 1 then
    begin
      vCurrentZBType := 1;
      cbbequer.Items.text := CBBSTR;
    end;

      //如果类型是3则是项目指标其结果是字符串
    if cxgrdtblvwTJ.DataController.Values[cxgrdtblvwTJ.DataController.FocusedRecordIndex, 2] = 3 then
    begin
      cbbequer.Items.text := CBBSTR;
      vCurrentZBType := 2;
    end;

    if cxgrdtblvwTJ.DataController.Values[cxgrdtblvwTJ.DataController.FocusedRecordIndex, 2] = 2 then
    begin
      cbbequer.Items.text := CBBNUM;
      vCurrentZBType := 1;
    end;

    btnADDTJ.Enabled := True;
  end else
    edtXM.Text := '';
end;

procedure Tfrm_LCLJDRPG.cxgrdtblvwZBJGDataControllerAfterDelete(
  ADataController: TcxCustomDataController);
begin
  if cxgrdtblvwZBJG.DataController.RecordCount = 0 then
  begin
    cxgrdtblvwZBJG.DataController.AppendRecord;
    cxgrdtblvwZBJG.DataController.Values[cxgrdtblvwZBJG.DataController.RecordCount - 1, 1] := False;
  end else
  begin
    if not VarIsNull(cxgrdtblvwZBJG.DataController.Values[cxgrdtblvwZBJG.DataController.RecordCount - 1, 0]) then
    begin
      cxgrdtblvwZBJG.DataController.AppendRecord;
      cxgrdtblvwZBJG.DataController.Values[cxgrdtblvwZBJG.DataController.RecordCount - 1, 1] := False;
    end;
  end;
end;

procedure Tfrm_LCLJDRPG.cxgrdtblvwZBJGEditKeyDown(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  AEdit: TcxCustomEdit; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) and (cxgrdtblvwZBJG.Controller.FocusedColumnIndex = 1) then
  begin
    if VarIsNull(cxgrdtblvwZBJG.DataController.Values[cxgrdtblvwZBJG.DataController.FocusedRecordIndex, 0]) then
      btnAdd.SetFocus
    else
    begin
      cxgrdtblvwZBJG.DataController.AppendRecord;
      cxgrdtblvwZBJG.DataController.Values[cxgrdtblvwZBJG.DataController.RecordCount - 1, 1] := False;
    end;
  end;
end;

procedure Tfrm_LCLJDRPG.cxgrdtblvwZBJGEditValueChanged(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem);
var
  sSql, vBM, vReturn: string;
  PosRect: TRect;
  vPosTop, vPosLeft, vSelCount: Integer;
begin

  if cxgrdtblvwZBJG.Controller.EditingController.Edit is TcxButtonEdit then
  begin
    vBM := cxgrdtblvwZBJG.Controller.EditingController.Edit.EditValue;
    sSql := 'Select BM ,MC,pym,sj,mj,xz From LCLJ_LJCJJG Where MJ=1 And (BM Like ' + #39 + vBM + '%' + #39 +
      ' Or MC Like ' + #39 + '%' + vBM + '%' + #39 + ' Or pym Like ' + #39 + '%' + vBM + '%' + #39 + ') Order by BM';
    GetWindowRect(cxgrd1.Handle, PosRect);
    vPosTop := PosRect.Top + cxgrdtblvwZBJG.Controller.FocusedRecord.ViewInfo.FocusRectBounds.Bottom;
    vPosLeft := PosRect.Left;
    vReturn := GetBmSelect(sSql, sSql, False, False, False, False, vPosLeft, vPosTop, vSelCount);
    cxgrdtblvwZBJG.OnEditValueChanged := nil;
    if vSelCount = 0 then
    begin
      cxgrdtblvwZBJG.Controller.FocusedItem.EditValue := vBM;
     // cxgrdtblvwZBJG.Controller.EditingController.Edit.EditValue := '';
    end;

    if vSelCount = 1 then
    begin
      cxgrdtblvwZBJG.Controller.EditingController.Edit.EditValue := vReturn;
      cxgrdtblvwZBJG.Controller.FocusedItem.EditValue := vReturn;
    end;
    cxgrdtblvwZBJG.OnEditValueChanged := cxgrdtblvwZBJGEditValueChanged;
  end else
  begin
    if TcxCheckBox(cxgrdtblvwZBJG.Controller.EditingController.Edit).Checked then
    begin
      cxgrdtblvwZBJG.Controller.FocusedItem.EditValue := True;
    end else
      cxgrdtblvwZBJG.Controller.FocusedItem.EditValue := False;
  end;

end;

procedure Tfrm_LCLJDRPG.cxgrdtblvwZBJGShowDataControllerDataChanged(
  Sender: TObject);
begin
  if cxgrdtblvwZBJGShow.DataController.RecordCount > 0 then
  begin
    btnUpdate.Enabled := True;
    btnDelete.Enabled := True;
  end else
  begin
    btnUpdate.Enabled := False;
    btnDelete.Enabled := False;
  end;
end;

procedure Tfrm_LCLJDRPG.cxgrdtblvwZBJGShowDblClick(Sender: TObject);
var
  vZBJG: string;
  vDefJG, vTempStr: string;
  vJGNum, i: Integer;
begin
  if cxgrdtblvwZBJGShow.Controller.SelectedRecordCount = -1 then Exit;
  ClearZBJGShow(False); //清空显示控件
  mmoZBMC.Lines.Add(cxgrdtblvwZBJGShow.DataController.Values[cxgrdtblvwZBJGShow.DataController.FocusedRecordIndex, 0]);
  vZBJG := cxgrdtblvwZBJGShow.DataController.Values[cxgrdtblvwZBJGShow.DataController.FocusedRecordIndex, 1];
  vJGNum := GetCommaStrCount(vZBJG);
  vDefJG := GetCommaStr(vZBJG, vJGNum);
  for i := 1 to vJGNum - 1 do
  begin
    vTempStr := GetCommaStr(vZBJG, i);
    cxgrdtblvwZBJG.DataController.AppendRecord;
    if vTempStr = vDefJG then
    begin
      cxgrdtblvwZBJG.DataController.Values[cxgrdtblvwZBJG.DataController.RecordCount - 1, 1] := True;
      vCurrDefault := cxgrdtblvwZBJG.DataController.RecordCount - 1;
    end
    else
      cxgrdtblvwZBJG.DataController.Values[cxgrdtblvwZBJG.DataController.RecordCount - 1, 1] := False;
    cxgrdtblvwZBJG.DataController.Values[cxgrdtblvwZBJG.DataController.RecordCount - 1, 0] := vTempStr;
  end;
end;

procedure Tfrm_LCLJDRPG.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if vChangeData then
    if Application.MessageBox('数据已更改，确实要放弃退出吗？', '警告', MB_YESNO +
      MB_ICONWARNING + MB_DEFBUTTON2) = IDNO then
    begin
      CanClose := False;
    end;
end;

procedure Tfrm_LCLJDRPG.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    selectnext(activecontrol as Twincontrol, true, true);
end;

procedure Tfrm_LCLJDRPG.SaveData;
var
  i: Integer;
begin
 //保存指标
  for i := 0 to vPGZBQuy.RecordCount - 1 do
    vPGZBQuy.Delete; //先删除以前数据
  for I := 0 to cxgrdtblvwZBJGShow.DataController.RecordCount - 1 do
  begin
    vPGZBQuy.Append;
    vPGZBQuy.FieldByName('ZBID').AsString := cxgrdtblvwZBJGShow.DataController.Values[i, 3];
    vPGZBQuy.FieldByName('PGID').AsString := vPGID;
    vPGZBQuy.FieldByName('PGZB').AsString := cxgrdtblvwZBJGShow.DataController.Values[i, 0];
    vPGZBQuy.FieldByName('XH').AsInteger := I;
    vPGZBQuy.FieldByName('ZBLX').AsInteger := cxgrdtblvwZBJGShow.DataController.Values[i, 4];
    vPGZBQuy.FieldByName('ZBJG').AsString := cxgrdtblvwZBJGShow.DataController.Values[i, 1];
    vPGZBQuy.Post;
  end;
 //------
 //保存指标条件
  for I := 0 to vPGTJQuy.RecordCount - 1 do
    vPGTJQuy.Delete; //先删除以前数据
  for I := 0 to cxgrdtblvwPGTJShow.DataController.RecordCount - 1 do
  begin
    vPGTJQuy.Append;
    vPGTJQuy.FieldByName('PGID').AsString := vPGID;
    if not (VarIsNull(cxgrdtblvwPGTJShow.DataController.Values[i, 1])) then
      vPGTJQuy.FieldByName('ZBID').AsString := cxgrdtblvwPGTJShow.DataController.Values[i, 1];
    if not (VarIsNull(cxgrdtblvwPGTJShow.DataController.Values[i, 2])) then
      vPGTJQuy.FieldByName('XMID').AsString := cxgrdtblvwPGTJShow.DataController.Values[i, 2];
    if not (VarIsNull(cxgrdtblvwPGTJShow.DataController.Values[i, 3])) then
      vPGTJQuy.FieldByName('GXS').AsString := cxgrdtblvwPGTJShow.DataController.Values[i, 3];
    if not (VarIsNull(cxgrdtblvwPGTJShow.DataController.Values[i, 4])) then
      vPGTJQuy.FieldByName('TJZ').AsString := cxgrdtblvwPGTJShow.DataController.Values[i, 4];
    if rbTwo.Checked then
      vPGTJQuy.FieldByName('TJZH').AsInteger := 2;
    if rbOne.Checked then
      vPGTJQuy.FieldByName('TJZH').AsInteger := 1;
    vPGTJQuy.Post;
  end;
 //--------
  vChangeData := False;
end;
end.

