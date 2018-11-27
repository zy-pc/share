unit P_LCLJSJMX;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ToolWin, Menus, ExtCtrls, DB, ADODB, cxStyles, cxEdit, ComObj,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxDBData, cxTextEdit, cxMemo,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxGridBandedTableView, StdCtrls,
  ActnList, ImgList, cxGridCommon, cxGeometry;

type

  Tfrm_LCLJSJBX = class(TForm)
    pnl2: TPanel;
    cxgrdlvlGrid1Level1: TcxGridLevel;
    cxgrdLCLJMX: TcxGrid;
    qryLCLJJD: TADOQuery;
    qryLCLJBB: TADOQuery;
    qryFL: TADOQuery;
    qryXM: TADOQuery;
    cxgrdbndtblvwLCLJMX: TcxGridBandedTableView;
    qryLJPG: TADOQuery;
    qryPGZB: TADOQuery;
    qryPGTJ: TADOQuery;
    spPGZB: TADOStoredProc;
    spPGTJ: TADOStoredProc;
    spLJBB: TADOStoredProc;
    tlb1: TToolBar;
    btnSave1: TToolButton;
    actlst1: TActionList;
    actSave: TAction;
    il1: TImageList;
    clbr1: TCoolBar;
    btnSetup: TToolButton;
    actSetup: TAction;
    actInsert: TAction;
    actDelete: TAction;
    actImport: TAction;
    actJDPG: TAction;
    btnInsert: TToolButton;
    btnDelete: TToolButton;
    btn6: TToolButton;
    btnImport: TToolButton;
    btnJDPG: TToolButton;
    btn4: TToolButton;
    actExit: TAction;
    btnExit: TToolButton;
    tlb2: TToolBar;
    actPZSETUP: TAction;
    btnPZSETUP: TToolButton;
    cbbBB: TComboBox;
    lbl1: TLabel;
    actAddPB: TAction;
    actDeletePB: TAction;
    btnAddPB: TToolButton;
    btnDeletePB: TToolButton;
    lbl3: TLabel;
    pmEdit: TPopupMenu;
    actInsertFornt: TAction;
    actInsertBack: TAction;
    actInsertFZ: TAction;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    lblCaption: TLabel;
    cxstylrpstry1: TcxStyleRepository;
    cxstyl1: TcxStyle;
    cxstyl2: TcxStyle;
    cxstyl3: TcxStyle;
    cxstyl4: TcxStyle;
    cxstyl5: TcxStyle;
    cxstyl6: TcxStyle;
    cxstyl7: TcxStyle;
    cxstyl8: TcxStyle;
    cxstyl9: TcxStyle;
    cxstyl10: TcxStyle;
    cxstyl11: TcxStyle;
    cxstyl12: TcxStyle;
    cxstyl13: TcxStyle;
    cxstyl14: TcxStyle;
    cxstyl15: TcxStyle;
    cxstyl16: TcxStyle;
    cxstyl17: TcxStyle;
    cxstyl18: TcxStyle;
    cxstyl19: TcxStyle;
    cxstyl20: TcxStyle;
    cxstyl21: TcxStyle;
    cxstyl22: TcxStyle;
    cxstyl23: TcxStyle;
    cxstyl24: TcxStyle;
    cxstyl25: TcxStyle;
    cxstyl26: TcxStyle;
    cxgrdbndtblvwstylshtdefault: TcxGridBandedTableViewStyleSheet;
    cxstyl27: TcxStyle;
    cxstyl28: TcxStyle;
    cxstyl29: TcxStyle;
    cxstyl30: TcxStyle;
    cxstyl31: TcxStyle;
    cxstyl32: TcxStyle;
    cxstyl33: TcxStyle;
    cxstyl34: TcxStyle;
    cxstyl35: TcxStyle;
    cxstyl36: TcxStyle;
    cxstyl37: TcxStyle;
    cxstyl38: TcxStyle;
    cxstyl39: TcxStyle;
    cxstyl40: TcxStyle;
    cxstyl41: TcxStyle;
    cxstyl42: TcxStyle;
    cxgrdbndclmnLCLJMXColumn1: TcxGridBandedColumn;
    spLJJD: TADOStoredProc;
    spLJFL: TADOStoredProc;
    spLJXM: TADOStoredProc;
    qryYZZB: TADOQuery;
    qryYZMX: TADOQuery;
    spXMYZ: TADOStoredProc;
    lblBZINFO: TLabel;
    cxgrdbndtblvwstylshtAudit: TcxGridBandedTableViewStyleSheet;
    cxstyl43: TcxStyle;
    cxstyl44: TcxStyle;
    cxstyl45: TcxStyle;
    cxstyl46: TcxStyle;
    cxstyl47: TcxStyle;
    cxstyl48: TcxStyle;
    cxstyl49: TcxStyle;
    cxstyl50: TcxStyle;
    cxstyl51: TcxStyle;
    cxstyl52: TcxStyle;
    cxstyl53: TcxStyle;
    cxstyl54: TcxStyle;
    cxgrdbndtblvwstylshtStop: TcxGridBandedTableViewStyleSheet;
    cxstyl55: TcxStyle;
    cxstyl56: TcxStyle;
    cxstyl57: TcxStyle;
    cxstyl58: TcxStyle;
    cxstyl59: TcxStyle;
    cxstyl60: TcxStyle;
    cxstyl61: TcxStyle;
    cxstyl62: TcxStyle;
    cxstyl63: TcxStyle;
    cxstyl64: TcxStyle;
    cxstyl65: TcxStyle;
    cxstyl66: TcxStyle;
    actCOPY: TAction;
    spdelete: TADOStoredProc;
    spCopy: TADOStoredProc;
    btnCOPY: TToolButton;
    btnPaste: TToolButton;
    actPaste: TAction;
    tlb3: TToolBar;
    C1: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure cxgrdbndtblvwLCLJMXCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxgrdbndtblvwLCLJMXDblClick(Sender: TObject);
    procedure cxgrdbndtblvwLCLJMXColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actSaveExecute(Sender: TObject);
    procedure actPZSETUPExecute(Sender: TObject);
    procedure actImportExecute(Sender: TObject);
    procedure actInsertExecute(Sender: TObject);
    procedure actExitExecute(Sender: TObject);
    procedure actSetupExecute(Sender: TObject);
    procedure actJDPGExecute(Sender: TObject);
    procedure cxgrdbndtblvwLCLJMXCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure actInsertForntExecute(Sender: TObject);
    procedure actInsertBackExecute(Sender: TObject);
    procedure actInsertFZExecute(Sender: TObject);
    procedure cxgrdbndtblvwLCLJMXCustomDrawBandHeader(
      Sender: TcxGridBandedTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridBandHeaderViewInfo; var ADone: Boolean);
    procedure cxgrdbndtblvwLCLJMXCustomDrawColumnHeader(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure actDeleteExecute(Sender: TObject);
    procedure actAddPBExecute(Sender: TObject);
    procedure actDeletePBExecute(Sender: TObject);
    procedure cbbBBChange(Sender: TObject);
    procedure qryLCLJJDNewRecord(DataSet: TDataSet);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure actCOPYExecute(Sender: TObject);
    procedure actPasteExecute(Sender: TObject);
  private
    { Private declarations }
    vLJName: string;
    vLJID: string;
    vCopyXMID: string; //当前所复制的项目ID;
    vChkEdit: Boolean; //是否编辑了数据
    vCurrBandStyle: TcxStyle;
    vLJBBH: Integer;
    vLJBZZYR: Integer; //路径标准住院日
    vEditType: Integer; //1:分类2:是阶段3:是项目 4:是阶段评估
    vCurrentBand: TcxGridBand; //当前选取的BAND
    vCurrentColumn: TcxGridColumn; //当前选取的列
    function ShowData: Boolean;
    function SaveXMYZ: Boolean;
    function AddCustomerBand(BandCaption, FiledName, FieldCaption: string; XH: Integer; Merging: Boolean = False; ReadOnle: Boolean = True): integer;
    function AddHiddenColum: Boolean;
    function ChkBBBH(LIID: string): Boolean;
    function GetJDName(CurrentBand: TcxGridBand): string;
    function GetBZZYR(BZZYR: string): string;
    function DelJD(CurrJD: string): Boolean;
    function CHkJDMX(JDID: string): Boolean; //检查阶段是否有明明细记录
    function GetXMID(vRecordIndex: Integer): string; //根据表格的CELL的序号和阶段号得到项目ID
    procedure SetColumStyle;
    procedure AddJD(CurrJD: string; ChkFornt: Boolean = True); //CHKFornt为真是在当前JD的前面增加为假是在其后面增加
    procedure SetJDXH(CurrJD: string; ChkFornt: Boolean = True; ChkADD: Boolean = True);
    function ADDFL(XH: Integer; ChkType: integer): Boolean;
    function ADDXM(CurrentIndex: Integer; ADDType: integer): Boolean; //ADDType1是在前面增加2是在后面增加3是删除当前XM 4是编辑当前XM
    procedure SetXMXH(FL: string; JDID: string; EDITXH, ChkType: integer); // ChkType为1是在前面增加2是在后面增加3是删除当前XH
    procedure SetFLXH(CurrXH: Integer; ChkType: integer); // ChkType为1是在前面增加2是在后面增加3是删除当前XH
    procedure SetBBHCom(LJID: string);
    procedure CustomBandHeadClick(Sender: TObject);
    procedure AddparentBand(ParentJDID, ChildJDID, ChildIndex, ChildCaption: string);
    procedure InitalData(chkBBH: Boolean);
    procedure LockEditRecord(LJID: string); //锁定要编辑的路径行
    procedure UnlockEditRecord(LJID: string); //解锁编辑的路径行
    procedure ShowPG(vPGType: Integer; vJDID: string);
    procedure SaveChangeData;
    procedure CheckBB(LJID: string; BBH: Integer);
    procedure SetFLRecord(FL: string; chkAdd: Boolean);
    procedure SetStopStyle;
    procedure SetAuditStyle;
    procedure SetDefaultStyle;
    procedure SetEditButton(CheckEdit: Boolean);
    procedure SetCopyXMID(Value: string);
  public
    { Public declarations }
    property COPYXMID: string read vCopyXMID write SetCopyXMID;
  end;

function LCLJSJMX(LJID, LJName: string; var LJBBH: Integer): Boolean;

implementation
uses p_dm, p_func, P_Public, P_LCLJDRPG, P_LCLJBZSZ, P_LCLJJD, P_LCLJXMEDIT;
{$R *.dfm}

function LCLJSJMX(LJID, LJName: string; var LJBBH: Integer): Boolean;
var
  frm_LCLJSJBX: Tfrm_LCLJSJBX;
begin
  frm_LCLJSJBX := Tfrm_LCLJSJBX.Create(Application);
  with frm_LCLJSJBX do
  begin
    vLJName := LJName;
    vLJID := LJID;
    vLJBBH := LJBBH;
    Caption := Caption + '-' + vLJName;
    InitalData(True);
    ShowModal;
    LJBBH := vLJBBH;
    Free;
  end;
end;

function Tfrm_LCLJSJBX.AddHiddenColum: Boolean;
var
  cl: TcxGridBandedColumn;
  cP: TcxCustomEditProperties;
begin
  cl := cxgrdbndtblvwLCLJMX.CreateColumn;
  cl.PropertiesClass := TcxTextEditProperties;
  cl.Visible := False;
end;

function Tfrm_LCLJSJBX.CHkJDMX(JDID: string): Boolean;
var
  i: Integer;
  oldFilter, vJDID: string;
begin
  Result := False;
  if qryXM.Locate('JDID', JDID, []) then
  begin
    Result := True;
    Exit;
  end else
  begin
    qryLCLJJD.Filtered := False;
    oldFilter := qryLCLJJD.Filter;
    qryLCLJJD.Filter := 'FID=' + #39 + JDID + #39;
    qryLCLJJD.Filtered := True;
    qryLCLJJD.First;
    while not qryLCLJJD.Eof do
    begin
      vJDID := qryLCLJJD.FieldByName('JDID').AsString;
      if qryXM.Locate('JDID', JDID, []) then
      begin
        Result := True;
        Break;
      end;
      qryLCLJJD.Next;
    end;
    qryLCLJJD.Filter := oldFilter;
    qryLCLJJD.Filtered := False;
  end;
end;

function Tfrm_LCLJSJBX.GetBZZYR(BZZYR: string): string;
var
  vPos: Integer;
begin
  Result := '0';
  vPos := Pos('-', BZZYR);
  if vPos > 0 then
    Result := Copy(BZZYR, vPos + 1, Length(BZZYR))
  else
    Result := BZZYR;
end;

procedure Tfrm_LCLJSJBX.SetEditButton(CheckEdit: Boolean);
begin
  actSave.Enabled := CheckEdit;
  actSetup.Enabled := CheckEdit;
  actInsert.Enabled := CheckEdit;
  actJDPG.Enabled := CheckEdit;
  actImport.Enabled := CheckEdit;
  actDelete.Enabled := CheckEdit;
  actPZSETUP.Enabled := CheckEdit;
end;

procedure Tfrm_LCLJSJBX.SetFLRecord(FL: string; chkAdd: Boolean);
begin
  if qryFL.Locate('FL', FL, []) then
  begin
    qryFL.Edit;
    qryXM.Filtered := False;
    qryXM.Filter := 'FL=' + #39 + FL + #39;
    qryXM.Filtered := True;
    qryXM.Sort := 'XMXH';
    qryXM.Last;
    qryFL.FieldByName('NUM').AsInteger := qryXM.FieldByName('XMXH').AsInteger;
    qryFL.Post;
    qryXM.Filtered := False;
  end;
end;

procedure Tfrm_LCLJSJBX.SetStopStyle;
begin
  with cxgrdbndtblvwLCLJMX.Styles do
  begin
    Background := cxgrdbndtblvwstylshtStop.Styles.Background;
    Content := cxgrdbndtblvwstylshtStop.Styles.Content;
    ContentEven := cxgrdbndtblvwstylshtStop.Styles.ContentEven;
    ContentOdd := cxgrdbndtblvwstylshtStop.Styles.ContentOdd;
    Footer := cxgrdbndtblvwstylshtStop.Styles.Footer;
    FilterBox := cxgrdbndtblvwstylshtStop.Styles.FilterBox;
    Group := cxgrdbndtblvwstylshtStop.Styles.Group;
    GroupByBox := cxgrdbndtblvwstylshtStop.Styles.GroupByBox;
    Header := cxgrdbndtblvwstylshtStop.Styles.Header;
    Indicator := cxgrdbndtblvwstylshtStop.Styles.Indicator;
    Inactive := cxgrdbndtblvwstylshtStop.Styles.Inactive;
    IncSearch := cxgrdbndtblvwstylshtStop.Styles.IncSearch;
    Selection := cxgrdbndtblvwstylshtStop.Styles.Selection;
    Preview := cxgrdbndtblvwstylshtStop.Styles.Preview;
    StyleSheet := cxgrdbndtblvwstylshtStop;
    BandHeader := cxgrdbndtblvwstylshtStop.Styles.BandHeader;
    vCurrBandStyle := cxgrdbndtblvwstylshtStop.Styles.BandHeader;
  end;

end;

procedure Tfrm_LCLJSJBX.SetAuditStyle;
begin
  with cxgrdbndtblvwLCLJMX.Styles do
  begin
    Background := cxgrdbndtblvwstylshtAudit.Styles.Background;
    Content := cxgrdbndtblvwstylshtAudit.Styles.Content;
    ContentEven := cxgrdbndtblvwstylshtAudit.Styles.ContentEven;
    ContentOdd := cxgrdbndtblvwstylshtAudit.Styles.ContentOdd;
    Footer := cxgrdbndtblvwstylshtAudit.Styles.Footer;
    FilterBox := cxgrdbndtblvwstylshtAudit.Styles.FilterBox;
    Group := cxgrdbndtblvwstylshtAudit.Styles.Group;
    GroupByBox := cxgrdbndtblvwstylshtAudit.Styles.GroupByBox;
    Header := cxgrdbndtblvwstylshtAudit.Styles.Header;
    Indicator := cxgrdbndtblvwstylshtAudit.Styles.Indicator;
    Inactive := cxgrdbndtblvwstylshtAudit.Styles.Inactive;
    IncSearch := cxgrdbndtblvwstylshtAudit.Styles.IncSearch;
    Selection := cxgrdbndtblvwstylshtAudit.Styles.Selection;
    Preview := cxgrdbndtblvwstylshtAudit.Styles.Preview;
    StyleSheet := cxgrdbndtblvwstylshtAudit;
    BandHeader := cxgrdbndtblvwstylshtAudit.Styles.BandHeader;
    vCurrBandStyle := cxgrdbndtblvwstylshtAudit.Styles.BandHeader;
  end;
end;

procedure Tfrm_LCLJSJBX.SetDefaultStyle;
begin
  with cxgrdbndtblvwLCLJMX.Styles do
  begin
    Background := cxgrdbndtblvwstylshtDefault.Styles.Background;
    Content := cxgrdbndtblvwstylshtDefault.Styles.Content;
    ContentEven := cxgrdbndtblvwstylshtDefault.Styles.ContentEven;
    ContentOdd := cxgrdbndtblvwstylshtDefault.Styles.ContentOdd;
    Footer := cxgrdbndtblvwstylshtDefault.Styles.Footer;
    FilterBox := cxgrdbndtblvwstylshtDefault.Styles.FilterBox;
    Group := cxgrdbndtblvwstylshtDefault.Styles.Group;
    GroupByBox := cxgrdbndtblvwstylshtDefault.Styles.GroupByBox;
    Header := cxgrdbndtblvwstylshtDefault.Styles.Header;
    Indicator := cxgrdbndtblvwstylshtDefault.Styles.Indicator;
    Inactive := cxgrdbndtblvwstylshtDefault.Styles.Inactive;
    IncSearch := cxgrdbndtblvwstylshtDefault.Styles.IncSearch;
    Selection := cxgrdbndtblvwstylshtDefault.Styles.Selection;
    Preview := cxgrdbndtblvwstylshtDefault.Styles.Preview;
    StyleSheet := cxgrdbndtblvwstylshtDefault;
    BandHeader := cxgrdbndtblvwstylshtDefault.Styles.BandHeader;
    vCurrBandStyle := cxgrdbndtblvwstylshtDefault.Styles.BandHeader;
  end;
end;

procedure Tfrm_LCLJSJBX.actAddPBExecute(Sender: TObject);
var
  vBBH: Integer;
  vError: string;
begin
  if vLJBBH = -1 then Exit;
  vBBH := GetBBH(vLJID);
  if Application.MessageBox('要复制当前版本的内容产生新版本吗？', '提示',
    MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES then
  begin
    try
      spCopy.Parameters.ParamByName('@SOURLJID').Value := vLJID;
      spCopy.Parameters.ParamByName('@SOURBBH').Value := vLJBBH;
      spCopy.Parameters.ParamByName('@DESTLJID').Value := vLJID;
      spCopy.Parameters.ParamByName('@DESTBBH').Value := vBBH;
      spCopy.ExecProc;
      vError := spCopy.Parameters.ParamByName('@SCZT').Value;
      if vError <> '0' then
        raise Exception.Create('复制路径版本错误');
    except on E: Exception do
      begin
        Application.MessageBox(Pchar('系统错误,错误信息为' + vError), '提示', mb_OK);
        Exit;
      end;
    end;
  end;
  vLJBBH := vBBH;
  SetZXBBH(vLJID, vLJBBH);
  InitalData(True);
  ShowData;
  SetBBHCom(vLJID);
  actSave.Enabled := False;
end;

procedure Tfrm_LCLJSJBX.actCOPYExecute(Sender: TObject);
var
  vXMID: string;
begin
  if cxgrdbndtblvwLCLJMX.DataController.FocusedRowIndex = -1 then Exit;
  vXMID := GetXMID(cxgrdbndtblvwLCLJMX.DataController.FocusedRowIndex);
  COPYXMID := vXMID;
end;

procedure Tfrm_LCLJSJBX.actDeleteExecute(Sender: TObject);
var
  vJDID, oldFilter, vFL: string;
  i, vFLIndex: Integer;
begin
  if vEditType = 2 then
  begin
    vJDID := GetJDName(vCurrentBand);
    if vJDID <> '' then
    begin
    //先查找明细表中是否有要删除的阶段的明细有明细不能删除
      if CHkJDMX(vJDID) then
      begin
        Application.MessageBox('所选择的时间阶段(或分支)中已存在已经定义的路径项目，不能删除。',
          '提示', MB_OK + MB_ICONINFORMATION);
        Exit;
      end;
      if Application.MessageBox('确实要删除所选取的时间阶段吗？', '提示',
        MB_YESNO + MB_DEFBUTTON2) = IDNO then
      begin
        Exit;
      end;

      //先查找其是不是有备用分支如有则全部删除
      qryLCLJJD.Filtered := False;
      oldFilter := qryLCLJJD.Filter;
      qryLCLJJD.Filter := 'FID=' + #39 + vJDID + #39;
      qryLCLJJD.Filtered := True;
      qryLCLJJD.First;
      while not qryLCLJJD.Eof do
      begin
        qryLCLJJD.Delete;
      end;
      qryLCLJJD.Filter := oldFilter;
      qryLCLJJD.Filtered := False;
      if DelJD(vJDID) then
        ShowData;
    end;
  end;
  if vEditType = 1 then
  begin
     vFL := cxgrdbndtblvwLCLJMX.DataController.Values[cxgrdbndtblvwLCLJMX.DataController.FocusedRowIndex, 1];
    if qryXM.Locate('FL',vFL,[]) then
    begin
       Application.MessageBox('所选择的时间分类已存在已经定义的路径项目，不能删除。',
          '提示', MB_OK + MB_ICONINFORMATION);
        Exit;
    end;  
    if Application.MessageBox('确定要删除所选取的分类吗？。', '提示',
      MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES then
    begin
      if qryFL.Locate('FL', vFL, []) then
      begin
        vFLIndex := qryFL.FieldByName('XH').AsInteger;
        SetFLXH(vFLIndex, 3);
        if qryFL.Locate('FL', vFL, []) then
        begin
          qryFL.Delete;
          ShowData;
        end;
      end;
    end;
  end;
  if vEditType = 3 then
  begin
    if Application.MessageBox('确实要删除所选取的项目吗？', '提示', MB_YESNO +
      MB_DEFBUTTON2) = IDYES then
    begin
      if ADDXM(cxgrdbndtblvwLCLJMX.DataController.FocusedRowIndex, 3) then
        ShowData;
    end;

  end;
end;

procedure Tfrm_LCLJSJBX.actDeletePBExecute(Sender: TObject);
var
  vError: string;
begin
  if vLJBBH = -1 then Exit;
  if Application.MessageBox('确定删除当前路径版本吗？', '提示', MB_YESNO +
    MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES then
  begin
    try
      spdelete.Parameters.ParamByName('@LJID').Value := vLJID;
      spdelete.Parameters.ParamByName('@BBH').Value := vLJBBH;
      spdelete.ExecProc;
      vError := spdelete.Parameters.ParamByName('@SCZT').Value;
      if vError <> '0' then
        raise Exception.Create('删除路径版本错误');
      vLJBBH := GetZXBBH(vLJID);
      InitalData(True);
      ShowData;
      SetBBHCom(vLJID);
    except on E: Exception do
      begin
        Application.MessageBox(Pchar('系统错误,错误信息为' + vError), '提示', mb_OK);
      end;
    end;

  end;

end;

procedure Tfrm_LCLJSJBX.actExitExecute(Sender: TObject);
begin
  close;
end;

procedure Tfrm_LCLJSJBX.actImportExecute(Sender: TObject);
begin
  if ChkBBBH(vLJID) then
    ShowPG(1, '');
end;

procedure Tfrm_LCLJSJBX.actInsertBackExecute(Sender: TObject);
var
  vJDID, vFL: string;
  vXH, vFLIndex: Integer;
begin
  if vEditType = 2 then
  begin
    vJDID := GetJDName(vCurrentBand);
    if vJDID <> '' then
    begin
      AddJD(vJDID, False);
    end else
    begin
      Application.MessageBox('当前阶段尚未设置，请先设置当前阶段信息！',
        '提示', MB_OK + MB_ICONINFORMATION);
      Exit;
    end;
  end;

  if vEditType = 1 then
  begin
    if VarIsNull(cxgrdbndtblvwLCLJMX.DataController.Values[cxgrdbndtblvwLCLJMX.DataController.FocusedRowIndex, 0]) then
    begin
      Application.MessageBox('当前行分类尚未设置，请先设置当前行分类。',
        '提示', MB_OK + MB_ICONINFORMATION);
      Exit;
    end else
    begin
      vFL := cxgrdbndtblvwLCLJMX.DataController.Values[cxgrdbndtblvwLCLJMX.DataController.FocusedRowIndex, 1];
      if qryFL.Locate('FL', vFL, []) then
      begin
        vFLIndex := qryFL.FieldByName('XH').AsInteger;
        if ADDFL(vFLIndex, 2) then
          ShowData;
      end;
    end;
  end;
  if vEditType = 3 then
  begin
    if ADDXM(cxgrdbndtblvwLCLJMX.DataController.FocusedRowIndex, 2) then
      ShowData;
  end;
end;

procedure Tfrm_LCLJSJBX.actInsertExecute(Sender: TObject);
begin
//
end;

procedure Tfrm_LCLJSJBX.SetJDXH(CurrJD: string; ChkFornt: Boolean = True; ChkADD: Boolean = True);
var
  vEdit, vCHKFID: Boolean;
  vTempXH: Integer;
  vOldFilter, vFID: string;
begin
  qryLCLJJD.Filtered := False;
  if ChkADD then
  begin
    vEdit := True;
    qryLCLJJD.Sort := 'FID DESC,XH ';
    qryLCLJJD.Last;
    while not qryLCLJJD.Bof do
    begin
      if vEdit then
      begin
        if ChkFornt then
        begin
          qryLCLJJD.Edit;
          vTempXH := qryLCLJJD.FieldByName('XH').AsInteger + 1;
          qryLCLJJD.FieldByName('XH').AsInteger := vTempXH;
          if qryLCLJJD.State <> dsBrowse then
            qryLCLJJD.Post;
        end;
      end;

      if qryLCLJJD.FieldByName('JDID').AsString = CurrJD then
      begin
        vEdit := False;
      end;

      if not ChkFornt then
        if vEdit then
        begin
          qryLCLJJD.Edit;
          qryLCLJJD.FieldByName('XH').AsInteger := qryLCLJJD.FieldByName('XH').AsInteger + 1;
          if qryLCLJJD.State <> dsBrowse then
            qryLCLJJD.Post;
        end;
      qryLCLJJD.Prior;
    end;
  end else
  begin
    vEdit := False;
    if qryLCLJJD.Locate('JDID', CurrJD, []) then
    begin
      vTempXH := qryLCLJJD.FieldByName('XH').AsInteger;
      if not qryLCLJJD.FieldByName('FID').IsNull then
      begin
        vFID := qryLCLJJD.FieldByName('FID').AsString;
        vCHKFID := True;
      end;

    end;
    if vCHKFID then
    begin
      vOldFilter := qryLCLJJD.Filter;
      qryLCLJJD.Filter := 'FID=' + #39 + vFID + #39;
      qryLCLJJD.Filtered := True;
    end;
    qryLCLJJD.First;
    while not qryLCLJJD.Eof do
    begin
      if qryLCLJJD.FieldByName('XH').AsInteger > vTempXH then
      begin
        qryLCLJJD.Edit;
        qryLCLJJD.FieldByName('XH').AsInteger := qryLCLJJD.FieldByName('XH').AsInteger - 1;
        if qryLCLJJD.State <> dsBrowse then
          qryLCLJJD.Post;
      end;
      qryLCLJJD.Next;
    end;

    //qryLCLJJD.Sort := 'FID DESC,XH DESC';
    //qryLCLJJD.Last;
   { while not qryLCLJJD.Bof do
    begin
      if qryLCLJJD.FieldByName('JDID').AsString = CurrJD then
      begin
        qryLCLJJD.Edit;
        qryLCLJJD.FieldByName('XH').AsInteger := -1;
        vEdit := True;
      end else
      begin
        if vEdit then
        begin
          qryLCLJJD.Edit;
          qryLCLJJD.FieldByName('XH').AsInteger := qryLCLJJD.FieldByName('XH').AsInteger - 1;
          if qryLCLJJD.State <> dsBrowse then
            qryLCLJJD.Post;
        end;
      end;
      qryLCLJJD.Prior;
    end; }
    if vCHKFID then
    begin
      qryLCLJJD.Filter := vOldFilter;
      qryLCLJJD.Filtered := False;
    end;

  end;
  //----------
end;

procedure Tfrm_LCLJSJBX.AddJD(CurrJD: string; ChkFornt: Boolean = True);
var
  vXH, vTempXH: Integer;
  vJDID: string;

  i: Integer;
begin
  if not ChkBBBH(vLJID) then Exit;
  if qryLCLJJD.Locate('JDID', CurrJD, []) then
  begin
    if qryLCLJJD.FieldByName('FID').IsNull then
      vXH := qryLCLJJD.FieldByName('XH').AsInteger
    else
    begin
      CurrJD := qryLCLJJD.FieldByName('FID').AsString;
      if qryLCLJJD.Locate('JDID', CurrJD, []) then
        vXH := qryLCLJJD.FieldByName('XH').AsInteger;
    end;
  end;

  SetJDXH(CurrJD, ChkFornt);
  qryLCLJJD.Append;

  vJDID := GetColumnID('LCLJ_LCLJJD', 'JDID'); //取得阶段ID
  qryLCLJJD.FieldByName('JDID').AsString := vJDID;
  if not ChkFornt then
    qryLCLJJD.FieldByName('XH').AsInteger := vXH + 1
  else
    qryLCLJJD.FieldByName('XH').AsInteger := vXH;
  qryLCLJJD.Post;
  ShowData;
  qryLCLJJD.Filter := 'JDID=' + #39 + vJDID + #39;
  qryLCLJJD.Filtered := True;
  if SetJD(vJDID, '', qryLCLJJD, vXH, vLJBZZYR) then
  begin
    qryLCLJJD.Filtered := False;
  end else
  begin
    SetJDXH(vJDID, ChkFornt, False);
    if qryLCLJJD.Locate('JDID', vJDID, []) then
      qryLCLJJD.Delete;
  end;
  ShowData;
end;

function Tfrm_LCLJSJBX.DelJD(CurrJD: string): Boolean;
begin
  Result := False;
  try
    if CurrJD = '' then Exit;
    SetJDXH(CurrJD, False, False);
    if qryLCLJJD.Locate('JDID', CurrJD, []) then
    begin
      qryLCLJJD.Delete;
      Result := True;
    end;
  except
    Result := False;
  end;
end;

procedure Tfrm_LCLJSJBX.SetFLXH(CurrXH: Integer; ChkType: integer);
begin
  qryFL.Sort := 'XH ASC';
  qryFL.First;
  while not qryFL.Eof do
  begin
    case ChkType of
      1:
        begin
          if qryFL.FieldByName('XH').AsInteger >= CurrXH then
          begin
            qryFL.Edit;
            qryFL.FieldByName('XH').AsInteger := qryFL.FieldByName('XH').AsInteger + 1;
            qryFL.Post;
          end;
        end;
      2:
        begin
          if qryFL.FieldByName('XH').AsInteger > CurrXH then
          begin
            qryFL.Edit;
            qryFL.FieldByName('XH').AsInteger := qryFL.FieldByName('XH').AsInteger + 1;
            qryFL.Post;
          end;
        end;
      3:
        begin
          if qryFL.FieldByName('XH').AsInteger = CurrXH then
          begin
            qryFL.Edit;
            qryFL.FieldByName('XH').AsInteger := -1;
            qryFL.Post;

          end;
          if qryFL.FieldByName('XH').AsInteger > CurrXH then
          begin
            qryFL.Edit;
            qryFL.FieldByName('XH').AsInteger := qryFL.FieldByName('XH').AsInteger - 1;
            qryFL.Post;
          end;
        end;
    end;
    qryFL.Next;
  end;
  qryFL.Sort := '';
end;

function Tfrm_LCLJSJBX.ADDFL(XH: Integer; ChkType: integer): Boolean;
var
  vFL: string;
begin
  Result := False;
  vFL := InputBox('请输入分类', '分类', '');
  if vFL <> '' then
  begin
    if qryFL.Locate('FL', vFL, []) then
    begin
      Application.MessageBox('输入的分类名已存在请重新设置。', '提示', MB_OK +
        MB_ICONINFORMATION);
      Exit;
    end;
    if XH <> -1 then
      SetFLXH(XH, ChkType);
    qryFL.Append;
    if XH = -1 then
      qryFL.FieldByName('XH').AsInteger := 1
    else
    begin
      if ChkType = 1 then
        qryFL.FieldByName('XH').AsInteger := XH;

      if ChkType = 2 then
        qryFL.FieldByName('XH').AsInteger := XH + 1;
    end;

    qryFL.FieldByName('FL').AsString := vFL;
    qryFL.FieldByName('NUM').AsInteger := 1;
    qryFL.Post;
    Result := True;
  end;
end;

procedure Tfrm_LCLJSJBX.actInsertForntExecute(Sender: TObject);
var
  vJDID, vFL: string;
  vFLIndex: Integer;
begin
  if vEditType = 2 then
  begin
    vJDID := GetJDName(vCurrentBand);
    if vJDID <> '' then
      AddJD(vJDID)
    else
    begin
      Application.MessageBox('当前阶段尚未设置，请先设置当前阶段信息！',
        '提示', MB_OK + MB_ICONINFORMATION);
      Exit;
    end;
  end;
  if vEditType = 1 then
  begin
    if VarIsNull(cxgrdbndtblvwLCLJMX.DataController.Values[cxgrdbndtblvwLCLJMX.DataController.FocusedRowIndex, 0]) then
    begin
      Application.MessageBox('当前行分类尚未设置，请先设置当前行分类。',
        '提示', MB_OK + MB_ICONINFORMATION);
      Exit;
    end else
    begin
      vFL := cxgrdbndtblvwLCLJMX.DataController.Values[cxgrdbndtblvwLCLJMX.DataController.FocusedRowIndex, 1];
      if qryFL.Locate('FL', vFL, []) then
      begin
        vFLIndex := qryFL.FieldByName('XH').AsInteger;
        if ADDFL(vFLIndex, 1) then
          ShowData;
      end;
    end;
  end;
  if vEditType = 3 then
  begin
    if ADDXM(cxgrdbndtblvwLCLJMX.DataController.FocusedRowIndex, 1) then
      ShowData;
  end;
end;

procedure Tfrm_LCLJSJBX.actInsertFZExecute(Sender: TObject);
var
  FvJDID, vJDID, vMC: string;
  vXH, vKSTS, vJSTS: Integer;
begin
  FvJDID := GetJDName(vCurrentBand);
  if FvJDID <> '' then
  begin
    if qryLCLJJD.Locate('JDID', FvJDID, []) then
      if not qryLCLJJD.FieldByName('FID').IsNull then
        FvJDID := qryLCLJJD.FieldByName('FID').AsString;

    qryLCLJJD.Filtered := False;
    qryLCLJJD.Filter := 'FID=' + #39 + FvJDID + #39;
    qryLCLJJD.Filtered := True;
    qryLCLJJD.Sort := 'FID ASC';
    qryLCLJJD.Last;

    if qryLCLJJD.RecordCount > 0 then
      vXH := qryLCLJJD.FieldByName('XH').AsInteger
    else
      vXH := 0;

    //复制主阶段的数据

    vKSTS := 0;
    vJSTS := 0;
    vMC := '';
    qryLCLJJD.Filtered := False;
    if qryLCLJJD.Locate('JDID', FvJDID, []) then
    begin
      vKSTS := qryLCLJJD.FieldByName('KSTS').AsInteger;
      vJSTS := qryLCLJJD.FieldByName('JSTS').AsInteger;
      vMC := qryLCLJJD.FieldByName('MC').AsString;
    end;
     //-----
    qryLCLJJD.Append;

    vJDID := GetColumnID('LCLJ_LCLJJD', 'JDID'); //取得阶段ID
    qryLCLJJD.FieldByName('JDID').AsString := vJDID;
    qryLCLJJD.FieldByName('FID').AsString := FvJDID;
    qryLCLJJD.FieldByName('XH').AsInteger := vXH + 1;
    if vKSTS <> 0 then
      qryLCLJJD.FieldByName('KSTS').AsInteger := vKSTS;
    if vJSTS <> 0 then
      qryLCLJJD.FieldByName('JSTS').AsInteger := vJSTS;
    if vMC <> '' then
      qryLCLJJD.FieldByName('MC').AsString := vMC;
    qryLCLJJD.Post;
    ShowData;
    qryLCLJJD.Filtered := False;
    qryLCLJJD.Filter := 'JDID=' + #39 + vJDID + #39;
    qryLCLJJD.Filtered := True;
    if SetJD(vJDID, FvJDID, qryLCLJJD, vXH, vLJBZZYR) then
    begin
      qryLCLJJD.Filtered := False;
    end else
    begin
      if qryLCLJJD.Locate('JDID', vJDID, []) then
        qryLCLJJD.Delete;
    end;
    ShowData;
  end
  else
  begin
    Application.MessageBox('当前阶段尚未设置，请先设置当前阶段信息！',
      '提示', MB_OK + MB_ICONINFORMATION);
    Exit;
  end;
end;

procedure Tfrm_LCLJSJBX.actJDPGExecute(Sender: TObject);
var
  vJDID: string;
begin
  if vCurrentColumn <> nil then
  begin
    if vCurrentColumn.Name <> '' then
      vJDID := Copy(vCurrentColumn.Name, 4, Length(vCurrentColumn.Name));
    if ChkBBBH(vLJID) then
      ShowPG(2, vJDID);
  end;
end;

procedure Tfrm_LCLJSJBX.actPasteExecute(Sender: TObject);
var
  vXMID, vJDID, vFL, vXMNR, vXMJG: string;
  CurrentIndex, vZXFS, vZXZ, vNRYQ, vXH: Integer;
  vTempQuy: TADOQuery;
begin
  if cxgrdbndtblvwLCLJMX.DataController.FocusedRowIndex = -1 then Exit;

  if Application.MessageBox('确实要粘贴所复制的项目内容覆盖当前区域吗？',
    '提示', MB_YESNO + MB_DEFBUTTON2) = IDYES then
  begin
    if qryXM.Locate('XMID', vCopyXMID, []) then
    begin
      vXMNR := qryXM.FieldByName('XMNR').AsString;
      vZXFS := qryXM.FieldByName('ZXFS').AsInteger;
      vZXZ := qryXM.FieldByName('ZXZ').AsInteger;
      vXMJG := qryXM.FieldByName('XMJG').AsString;
      vNRYQ := qryXM.FieldByName('NRYQ').AsInteger;
    end else
      Exit;
    CurrentIndex := cxgrdbndtblvwLCLJMX.DataController.FocusedRowIndex;
    vXMID := GetXMID(CurrentIndex);
    vJDID := cxgrdbndtblvwLCLJMX.Controller.FocusedColumn.Name;
    vJDID := Copy(vJDID, 4, Length(vJDID));
    vXH := cxgrdbndtblvwLCLJMX.DataController.Values[CurrentIndex, 0];
    vFL := cxgrdbndtblvwLCLJMX.DataController.Values[CurrentIndex, 1];
    if vXMID = '' then
    begin
      qryXM.Append;
      vXMID := GetColumnID('LCLJ_LCLJXM', 'XMID'); //取得路径项目ID
      qryXM.FieldByName('LJID').AsString := vLJID;
      qryXM.FieldByName('JDID').AsString := vJDID;
      qryXM.FieldByName('BBH').AsInteger := vLJBBH;
      qryXM.FieldByName('XMID').AsString := vXMID;
      qryXM.FieldByName('FL').AsString := vFL;
      qryXM.FieldByName('XMXH').AsInteger := vXH;
      qryXM.Post;
    end;
    if vXMID <> '' then
    begin
      if qryXM.Locate('XMID', vXMID, []) then
      begin
        qryXM.Edit;
        qryXM.FieldByName('XMNR').AsString := vXMNR;
        qryXM.FieldByName('ZXFS').AsInteger := vZXFS;
        qryXM.FieldByName('ZXZ').AsInteger := vZXZ;
        qryXM.FieldByName('XMJG').AsString := vXMJG;
        qryXM.FieldByName('NRYQ').AsInteger := vNRYQ;
        qryXM.Post;

      end;
    end;
    //复制医嘱

   //qryXM, qryYZZB, qryYZMX
    if (qryYZZB.Locate('mblb', vCopyXMID, [])) then
    begin
      if not (qryYZZB.Locate('mblb', vXMID, [])) then
      begin
        qryYZZB.Append;
        qryYZZB.FieldByName('ksdm').AsString := pub_ksdm;
        qryYZZB.FieldByName('ysdm').AsString := pub_czydm;
        qryYZZB.FieldByName('ztmc').AsString := vLJID;
        qryYZZB.FieldByName('czy').AsString := pub_czydm;
        qryYZZB.FieldByName('mblb').AsString := vXMID;
        QryYZZB.FieldByName('mzbz').AsBoolean := False;
        QryYZZB.FieldByName('zybz').AsBoolean := False;
        qryYZZB.Post;
      end;
      if (qryYZMX.Locate('XMID', vCopyXMID, [])) then
      begin
        if (qryYZMX.Locate('XMID', vXMID, [])) then
        begin
          qryYZMX.Filtered := False;
          qryYZMX.Filter := 'XMID=' + #39 + vXMID + #39;
          qryYZMX.Filtered := True;
          while not QryYZMX.Eof do
          begin
            QryYZMX.DeleteRecords(arCurrent);
          end;
        end;
        qryYZMX.Filtered := False;
        qryYZMX.Filter := 'XMID=' + #39 + vCopyXMID + #39;
        qryYZMX.Filtered := True;
        QryYZMX.SaveToFile(ApplicationPath+'fang.txt');
        vTempQuy := TADOQuery.Create(nil);
        vTempQuy.LoadFromFile(ApplicationPath+'fang.txt');
        qryYZMX.Filtered := False;
        while not vTempQuy.Eof do
        begin
          qryYZMX.Append;
          QryYZMX.FieldByName('ztid').AsString := vLJID;
          QryYZMX.FieldByName('XMID').AsString := vXMID;
          QryYZMX.FieldByName('yzsx').AsString := vTempQuy.FieldByName('yzsx').AsString;
          QryYZMX.FieldByName('lb').AsString := vTempQuy.FieldByName('lb').AsString;
          QryYZMX.FieldByName('xmdm').AsString := vTempQuy.FieldByName('xmdm').AsString;
          QryYZMX.FieldByName('xmmc').AsString := vTempQuy.FieldByName('xmmc').AsString;
          QryYZMX.FieldByName('ypyf').AsString := vTempQuy.FieldByName('ypyf').AsString;
          QryYZMX.FieldByName('ypyl').AsString := vTempQuy.FieldByName('ypyl').AsString;
          QryYZMX.FieldByName('yldw').AsString := vTempQuy.FieldByName('yldw').AsString;
          QryYZMX.FieldByName('dw').AsString := vTempQuy.FieldByName('dw').AsString;
          QryYZMX.FieldByName('sl').AsInteger := vTempQuy.FieldByName('sl').AsInteger;
          QryYZMX.FieldByName('yytj').AsString := vTempQuy.FieldByName('yytj').AsString;
          QryYZMX.FieldByName('czks').AsString := vTempQuy.FieldByName('czks').AsString;
          QryYZMX.FieldByName('kdks').AsString := vTempQuy.FieldByName('kdks').AsString;
          QryYZMX.FieldByName('yplb').AsString := vTempQuy.FieldByName('yplb').AsString;
          QryYZMX.FieldByName('gg').AsString := vTempQuy.FieldByName('gg').AsString;
          QryYZMX.FieldByName('yplsj').AsString := vTempQuy.FieldByName('yplsj').AsString;
          QryYZMX.FieldByName('ypbzbl').AsInteger := vTempQuy.FieldByName('ypbzbl').AsInteger;
          QryYZMX.FieldByName('bz').AsString := vTempQuy.FieldByName('bz').AsString;
          QryYZMX.FieldByName('jyyb').AsString := vTempQuy.FieldByName('jyyb').AsString;
          QryYZMX.FieldByName('jyflbh').AsString := vTempQuy.FieldByName('jyflbh').AsString;
          QryYZMX.FieldByName('ypdwid').AsString := vTempQuy.FieldByName('ypdwid').AsString;
          QryYZMX.FieldByName('fzbz').AsString := vTempQuy.FieldByName('fzbz').AsString;
          QryYZMX.Post;
          vTempQuy.Next;
        end;
        vTempQuy.Free;
        DeleteFile(ApplicationPath+'fang.txt');
      end;

    end;
   ShowData;
  end;

end;

procedure Tfrm_LCLJSJBX.actPZSETUPExecute(Sender: TObject);
var
  vChkLoadData: Boolean;
begin
  if vLJBBH = -1 then
    vChkLoadData := True;
  if LCLJBZSZ(vLJID, qryLCLJBB, vLJBBH) <> -1 then
  begin
    if vChkLoadData then
    begin
      InitalData(False);

    end;

    qryLCLJBB.Filtered := False;
    qryLCLJBB.Filter := 'BBH=' + IntTostr(vLJBBH);
    qryLCLJBB.Filtered := True;
    if not qryLCLJBB.FieldByName('BZZYR').IsNull then
    begin
      vLJBZZYR := StrToInt(GetBZZYR(qryLCLJBB.FieldByName('BZZYR').AsString));
      lblBZINFO.Caption := intTostr(vLJBZZYR) + '天,标准费用:'
        + qryLCLJBB.FieldByName('BZFY').AsString;
      if not qryLCLJBB.FieldByName('BBSM').IsNull then
        lblBZINFO.Caption := lblBZINFO.Caption + '<无>'
      else
        lblBZINFO.Caption := lblBZINFO.Caption + '<' + qryLCLJBB.FieldByName('BBSM').AsString + '>';

    end;

  end;
end;

procedure Tfrm_LCLJSJBX.actSaveExecute(Sender: TObject);
begin
  SaveChangeData;
  actSave.Enabled := False;
end;

procedure Tfrm_LCLJSJBX.actSetupExecute(Sender: TObject);
var
  vJDID, vFL, vXMID: string;
  vXH, vFlIndex: integer;
  vADD: Boolean;
begin
  if not ChkBBBH(vLJID) then Exit;
  if vEditType = 2 then
  begin
    qryLCLJJD.Filtered := False;
    vJDID := GetJDName(vCurrentBand);
    vADD := False;
    if vJDID <> '' then
    begin
      if qryLCLJJD.Locate('JDID', vJDID, []) then
      begin
        vXH := qryLCLJJD.FieldByName('XH').AsInteger;
        //ShowMessage(IntToStr(vXH));
      end;
    end else
    begin
      vJDID := GetColumnID('LCLJ_LCLJJD', 'JDID'); //取得阶段ID
      qryLCLJJD.Append;
      qryLCLJJD.FieldByName('JDID').AsString := vJDID;
      qryLCLJJD.FieldByName('XH').AsInteger := 1;
      qryLCLJJD.Post;
      vADD := True;
    end;
    qryLCLJJD.Filter := 'JDID=' + #39 + vJDID + #39;
    qryLCLJJD.Filtered := True;
    if SetJD(vJDID, '', qryLCLJJD, vXH, vLJBZZYR) then
    begin
      qryLCLJJD.Filtered := False;
      ShowData;
    end else
      if vADD then
      begin
        SetJDXH(vJDID, False, False);
        if qryLCLJJD.Locate('JDID', vJDID, []) then
          qryLCLJJD.Delete;
      end;
  end;
  if vEditType = 1 then
  begin
    if VarIsNull(cxgrdbndtblvwLCLJMX.DataController.Values[cxgrdbndtblvwLCLJMX.DataController.FocusedRowIndex, 0]) then
    begin
      if ADDFL(-1, 1) then
        ShowData;
    end else
    begin
      vFL := cxgrdbndtblvwLCLJMX.DataController.Values[cxgrdbndtblvwLCLJMX.DataController.FocusedRowIndex, 1];
      if qryFL.Locate('FL', vFL, []) then
      begin
        vFlIndex := qryFL.FieldByName('XH').AsInteger;
      end;
      vFL := InputBox('请输入分类', '分类', vFL);
      if vFL <> '' then
      begin
        if qryFL.Locate('FL', vFL, []) then
        begin
          Application.MessageBox('输入的分类名已存在请重新设置。', '提示', MB_OK +
            MB_ICONINFORMATION);
          Exit;
        end;
        if qryFL.Locate('XH', vFlIndex, []) then
        begin
          qryFL.Edit;
          qryFL.FieldByName('FL').AsString := vFL;
          qryFL.Post;
          ShowData;
        end;
      end;
    end;
  end;
  if vEditType = 3 then
    if ADDXM(cxgrdbndtblvwLCLJMX.DataController.FocusedRowIndex, 4) then
      ShowData;
end;

procedure Tfrm_LCLJSJBX.SetXMXH(FL: string; JDID: string; EDITXH, ChkType: integer);
begin
  qryXM.Filtered := False;
  qryXM.Filter := 'FL=' + #39 + FL + #39;
  qryXM.Filtered := True;
 // qryXM.Sort := 'XMXH ASC';
  qryXM.Sort := '';
  qryXM.First;
  while not qryXM.Eof do
  begin
    case ChkType of
      1: //在前面增加
        begin
          if qryXM.FieldByName('XMXH').AsInteger >= EDITXH then
          begin
            qryXM.Edit;
            if qryXM.FieldByName('JDID').AsString = JDID then
              qryXM.FieldByName('XMXH').AsInteger := qryXM.FieldByName('XMXH').AsInteger + 1;
            qryXM.Post;
          end;

        end;
      2: //在后面增加
        begin
          if qryXM.FieldByName('XMXH').AsInteger > EDITXH then
          begin
            qryXM.Edit;
            if qryXM.FieldByName('JDID').AsString = JDID then

              qryXM.FieldByName('XMXH').AsInteger := qryXM.FieldByName('XMXH').AsInteger + 1;
            qryXM.Post;
          end;

        end;
      3: //删除当前XH
        begin
          if qryXM.FieldByName('XMXH').AsInteger = EDITXH then
          begin
            qryXM.Edit;
            if qryXM.FieldByName('JDID').AsString = JDID then

              qryXM.FieldByName('XMXH').AsInteger := -1;
            qryXM.Post;

          end;
          if qryXM.FieldByName('XMXH').AsInteger > EDITXH then
          begin
            qryXM.Edit;
            if qryXM.FieldByName('JDID').AsString = JDID then

              qryXM.FieldByName('XMXH').AsInteger := qryXM.FieldByName('XMXH').AsInteger - 1;
            qryXM.Post;
          end;

        end;
    end;
    qryXM.Next;
  end;
  qryXM.Filtered := False;

end;

function Tfrm_LCLJSJBX.ADDXM(CurrentIndex: Integer; ADDType: integer): Boolean;
var
  vJDID, vFL, vXMID: string;
  vXH: Integer;
  vCHkADD: Boolean;
  procedure ADDXMRecord(ChkFornt: Boolean);
  begin
    qryXM.Append;
    vCHkADD := True;
    vXMID := GetColumnID('LCLJ_LCLJXM', 'XMID'); //取得路径项目ID
    qryXM.FieldByName('LJID').AsString := vLJID;
    qryXM.FieldByName('JDID').AsString := vJDID;
    qryXM.FieldByName('BBH').AsInteger := vLJBBH;
    qryXM.FieldByName('XMID').AsString := vXMID;
    qryXM.FieldByName('FL').AsString := vFL;
    if ChkFornt then
      qryXM.FieldByName('XMXH').AsInteger := vXH
    else
      qryXM.FieldByName('XMXH').AsInteger := vXH + 1;
    qryXM.Post;
  end;
begin
  Result := False;
  vJDID := cxgrdbndtblvwLCLJMX.Controller.FocusedColumn.Name;
  if vJDID = '' then
  begin
    Application.MessageBox('请先设置当前项目所对应的时间阶段。', '提示',
      MB_OK + MB_ICONINFORMATION);
    Exit;
  end;
  vFL := cxgrdbndtblvwLCLJMX.DataController.Values[cxgrdbndtblvwLCLJMX.DataController.FocusedRowIndex, 1];
  if vFL = '' then
  begin
    Application.MessageBox('请先设置当前项目所对应的分类。', '提示', MB_OK +
      MB_ICONINFORMATION);
    Exit;
  end;
  vJDID := Copy(vJDID, 4, Length(vJDID));
  vXMID := GetXMID(CurrentIndex);
  vXH := cxgrdbndtblvwLCLJMX.DataController.Values[CurrentIndex, 0];
  vCHkADD := False;
  case ADDType of
    1, 2:
      begin
        if vXMID <> '' then
        begin
          SetXMXH(vFL, vJDID, vXH, ADDType);
          if ADDType = 1 then
            ADDXMRecord(True);
          if ADDType = 2 then
            ADDXMRecord(False);
         //
          qryYZZB.Filtered := False;
          qryYZZB.Filter := 'mblb=' + #39 + vXMID + #39;
          qryYZZB.Filtered := True;
          qryYZMX.Filtered := False;
          qryYZMX.Filter := 'XMID=' + #39 + vXMID + #39;
          qryYZMX.Filtered := True;

          if LJXMEDIT(vLJID, vXMID, vLJBBH, qryXM, qryYZZB, qryYZMX) then
          begin
            SetFLRecord(vFL, True);
            Result := True;
          end
          else
            if vCHkADD and (qryXM.Locate('XMID', vXMID, [])) then
              qryXM.Delete;
        end;
      end;
    3: begin
        if vXMID <> '' then
        begin
          SetXMXH(vFL, vJDID, vXH, ADDType);
          if qryXM.Locate('XMID', vXMID, []) then
          begin
            qryXM.Delete;
            SetFLRecord(vFL, False);
            Result := True;
          end;
        end;
      end;
    4:
      begin
        if vXMID = '' then
          ADDXMRecord(True);
        qryYZZB.Filtered := False;
        qryYZZB.Filter := 'mblb=' + #39 + vXMID + #39;
        qryYZZB.Filtered := True;
        qryYZMX.Filtered := False;
        qryYZMX.Filter := 'XMID=' + #39 + vXMID + #39;
        qryYZMX.Filtered := True;
        if LJXMEDIT(vLJID, vXMID, vLJBBH, qryXM, qryYZZB, qryYZMX) then
          Result := True
        else
          if vCHkADD and (qryXM.Locate('XMID', vXMID, [])) then
            qryXM.Delete;
      end;
  end;
end;

procedure Tfrm_LCLJSJBX.cbbBBChange(Sender: TObject);
begin
  if cbbBB.ItemIndex = -1 then Exit;

  vLJBBH := Integer(cbbBB.Items.Objects[cbbBB.ItemIndex]);
  SetBBHCom(vLJID);
  InitalData(True);
  ShowData;
 //
end;

function Tfrm_LCLJSJBX.GetXMID(vRecordIndex: Integer): string;
var
  vJDID, vFL: string;
  vXH: Integer;
begin
  Result := '';
  if VarIsNull(cxgrdbndtblvwLCLJMX.ViewData.Records[vRecordIndex].Values[1]) or
    (cxgrdbndtblvwLCLJMX.ViewData.Records[vRecordIndex].Values[1] = '')
    then
    Exit
  else
    vFL := cxgrdbndtblvwLCLJMX.ViewData.Records[vRecordIndex].Values[1];

  if VarIsNull(cxgrdbndtblvwLCLJMX.ViewData.Records[vRecordIndex].Values[0]) or
    (cxgrdbndtblvwLCLJMX.ViewData.Records[vRecordIndex].Values[0] = '')
    then
    Exit
  else
    vXH := cxgrdbndtblvwLCLJMX.ViewData.Records[vRecordIndex].Values[0];
  if cxgrdbndtblvwLCLJMX.Controller.FocusedColumn.Name = '' then
    Exit
  else
  begin
    vJDID := cxgrdbndtblvwLCLJMX.Controller.FocusedColumn.Name;
    vJDID := Copy(vJDID, 4, Length(vJDID));
  end;

  qryXM.Filtered := False;
  qryXM.Filter := 'JDID=' + #39 + vJDID + #39 + ' and FL=' + #39 + vFL + #39 + ' and XMXH=' + intTostr(vXH);
  qryXM.Filtered := True;
  qryXM.First;
  if qryXM.RecordCount > 0 then
    Result := qryXM.FieldByName('XMID').AsString;
  qryXM.Filtered := False;
end;

function Tfrm_LCLJSJBX.AddCustomerBand(BandCaption, FiledName, FieldCaption: string; XH: Integer; Merging: Boolean = False; ReadOnle: Boolean = True): Integer;
var
  cb, PCb: TcxGridBand;
  cl: TcxGridBandedColumn;
  cP: TcxCustomEditProperties;
begin
  if XH <> -1 then
  begin
    cb := TcxGridBand(cxgrdbndtblvwLCLJMX.Bands.Insert(XH));
  end else
    cb := cxgrdbndtblvwLCLJMX.Bands.Add;


  cb.Caption := BandCaption;
  cb.OnHeaderClick := CustomBandHeadClick;
  cl := cxgrdbndtblvwLCLJMX.CreateColumn;
  cl.Caption := FieldCaption;
  if FiledName <> '' then
    cl.Name := 'JD_' + FiledName;
  cl.Position.BandIndex := cb.Position.ColIndex;
  cl.Width := 150;
  cl.PropertiesClass := TcxTextEditProperties;
  cl.HeaderAlignmentHorz := taCenter;
  TcxTextEditProperties(cl.Properties).ReadOnly := ReadOnle;
 // cl.PropertiesClass := TcxMemoProperties;
  if Merging then
  begin
    cl.Options.CellMerging := True;
    TcxTextEditProperties(cl.Properties).Alignment.Vert := taVCenter;
  end;
  Result := cb.Position.ColIndex;
end;

procedure Tfrm_LCLJSJBX.LockEditRecord(LJID: string);
var
  sSql: string;
begin
  with dm_data.Qry_pub do
  begin
    close;
    sSql := 'Update LCLJ_LCLJML set BJBZ=1 WHERE LJID =' + #39 + LJID + #39;
    SQL.Text := sSql;
    ExecSQL;
  end;
end;

procedure Tfrm_LCLJSJBX.qryLCLJJDNewRecord(DataSet: TDataSet);
begin
  actSave.Enabled := True;
end;

procedure Tfrm_LCLJSJBX.UnlockEditRecord(LJID: string);
var
  sSql: string;
begin
  with dm_data.Qry_pub do
  begin
    close;
    sSql := 'Update LCLJ_LCLJML set BJBZ=0 WHERE LJID =' + #39 + LJID + #39;
    SQL.Text := sSql;
    ExecSQL;
  end;
end;

procedure Tfrm_LCLJSJBX.CustomBandHeadClick(Sender: TObject);
begin
  vCurrentBand := TcxGridBand(Sender);
  vCurrentColumn := nil;
  lblCaption.Caption := '  阶段：';
  btnSetup.Visible := True;
  actInsertFZ.Enabled := True;
  vEditType := 2;
  SetColumStyle;
end;

procedure Tfrm_LCLJSJBX.AddparentBand(ParentJDID, ChildJDID, ChildIndex, ChildCaption: string);
var
  Parentcb, ChildCb, cb: TcxGridBand;
  Parentcl, ChildColumn, cl: TcxGridBandedColumn;
  i, k: Integer;
begin
  for I := 0 to cxgrdbndtblvwLCLJMX.ColumnCount - 1 do
  begin
    cl := cxgrdbndtblvwLCLJMX.Columns[i];
    if cl.Name = ChildJDID then
    begin
      ChildColumn := cl;
      Break;
    end;
  end;

  if ChildColumn = nil then Exit;
  ChildCb := cxgrdbndtblvwLCLJMX.Bands.Items[ChildColumn.Position.BandIndex];

  for I := 0 to cxgrdbndtblvwLCLJMX.ColumnCount - 1 do
  begin
    cl := cxgrdbndtblvwLCLJMX.Columns[i];
    if cl.Name = ParentJDID then
    begin
      Parentcl := cl;
      Break;
    end;
  end;
  if Parentcl = nil then Exit;

  Parentcb := cxgrdbndtblvwLCLJMX.Bands.Items[Parentcl.Position.BandIndex];

  if Parentcb.Position.BandIndex = -1 then
  begin
    cxgrdbndtblvwLCLJMX.Bands.BeginUpdate;
    cb := cxgrdbndtblvwLCLJMX.Bands.Add;
    cb.Index := Parentcb.Index;
    cb.OnHeaderClick := CustomBandHeadClick;
    cb.Caption := Parentcb.Caption;

    Parentcb.Position.BandIndex := cb.Index;

    Parentcl.Position.BandIndex := Parentcb.Index;
    Parentcb.Caption := '缺省分支';
    cxgrdbndtblvwLCLJMX.Bands.EndUpdate;
  end;
  ChildCb.Position.BandIndex := Parentcb.Position.BandIndex;
  if ChildCaption <> '' then
    ChildCb.Caption := '备用分支 ' + ChildCaption
  else
    ChildCb.Caption := '备用分支 ' + ChildIndex;
end;

procedure Tfrm_LCLJSJBX.ShowPG(vPGType: Integer; vJDID: string);
var
  vPGID: string;
begin
  if (vPGType = 2) and (vJDID = '') then Exit; //如果阶段评估且没有阶段ID则退出

  qryLJPG.Filtered := False;
  if vPGType = 1 then
    qryLJPG.Filter := 'PGLX=1'
  else
    qryLJPG.Filter := 'JDID=' + #39 + vJDID + #39 + ' and PGLX=2';
  qryLJPG.Filtered := True;
  if qryLJPG.RecordCount = 0 then //如没有评估则增加一个
  begin
    qryLJPG.Append;
    qryLJPG.FieldByName('LJID').AsString := vLJID;
    qryLJPG.FieldByName('BBH').AsInteger := vLJBBH;
    qryLJPG.FieldByName('PGLX').AsInteger := vPGType;
    vPGID := GetColumnID('LCLJ_LCLJPG', 'PGID'); //取得一个评估ID
    qryLJPG.FieldByName('PGID').AsString := vPGID;
    if vPGType = 2 then
      qryLJPG.FieldByName('JDID').AsString := vJDID;
    qryLJPG.Post;
  end else
    vPGID := qryLJPG.FieldByName('PGID').AsString;
  //打开评估指标表
  qryPGZB.Filtered := False;
  qryPGZB.Filter := 'PGID=' + #39 + vPGID + #39;
  qryPGZB.Filtered := True;
  //----
  //打开评估指标条件表
  qryPGTJ.Filtered := False;
  qryPGTJ.Filter := 'PGID=' + #39 + vPGID + #39;
  qryPGTJ.Filtered := True;
  //---------
  if vPGType = 1 then
    ShowDRPG(1, qryPGZB, qryPGTJ, vPGID);
  if vPGType = 2 then
  begin
    qryXM.Filtered := False;
    qryXM.Filter := 'JDID=' + #39 + vJDID + #39 + ' and ZXFS<>0';
    qryXM.Filtered := True;
    ShowDRPG(2, qryPGZB, qryPGTJ, vPGID, qryXM);
  end;

end;

function Tfrm_LCLJSJBX.ChkBBBH(LIID: string): Boolean;
begin
  Result := False;
  if vLJBBH = -1 then
    Application.MessageBox('还没有设置当前版本的标准住院日信息！', '提示',
      MB_OK + MB_ICONINFORMATION)
  else
    Result := True;
end;

function Tfrm_LCLJSJBX.SaveXMYZ: Boolean;
var
  vError: string;
  sSql: string;
begin
  Result := False;

  qryYZZB.Filtered := False;
  qryYZZB.Filter := 'ZTMC=' + #39 + vLJID + #39;
  qryYZZB.Filtered := True;
  qryYZZB.First;
  sSql := 'delete from dbo.lclj_blmbdx where ztmc=' + #39 + vLJID + #39;
  ExecSql(sSql);

  sSql := 'delete from dbo.lclj_blmbmx where ztid=' + #39 + vLJID + #39;
  ExecSql(sSql);
  qryYZZB.First;
  while not qryYZZB.Eof do
  begin
    qryYZMX.Filtered := False;
    qryYZMX.Filter := 'XMID=' + #39 + qryYZZB.FieldByName('mblb').AsString + #39;
    qryYZMX.Filtered := True;
    qryYZMX.First;

    while not qryYZMX.Eof do
    begin
      spXMYZ.Parameters.ParamByName('@KSDM').Value := qryYZZB.FieldByName('KSDM').AsString;
      spXMYZ.Parameters.ParamByName('@YSDM').Value := qryYZZB.FieldByName('YSDM').AsString;
      spXMYZ.Parameters.ParamByName('@CZY').Value := qryYZZB.FieldByName('CZY').AsString;
      spXMYZ.Parameters.ParamByName('@LJID').Value := qryYZZB.FieldByName('ZTMC').AsString;
      spXMYZ.Parameters.ParamByName('@XMID').Value := qryYZZB.FieldByName('MBLB').AsString;
      spXMYZ.Parameters.ParamByName('@YZSX').Value := qryYZMX.FieldByName('YZSX').AsString;
      spXMYZ.Parameters.ParamByName('@LB').Value := qryYZMX.FieldByName('LB').AsString;
      spXMYZ.Parameters.ParamByName('@XMDM').Value := qryYZMX.FieldByName('XMDM').AsString;
      spXMYZ.Parameters.ParamByName('@XMMC').Value := qryYZMX.FieldByName('XMMC').AsString;
      spXMYZ.Parameters.ParamByName('@YPYF').Value := qryYZMX.FieldByName('YPYF').AsString;
      spXMYZ.Parameters.ParamByName('@YPYL').Value := qryYZMX.FieldByName('YPYL').AsString;
      spXMYZ.Parameters.ParamByName('@YLDW').Value := qryYZMX.FieldByName('YLDW').AsString;
      spXMYZ.Parameters.ParamByName('@DW').Value := qryYZMX.FieldByName('DW').AsString;
      spXMYZ.Parameters.ParamByName('@SL').Value := qryYZMX.FieldByName('SL').AsInteger;
      spXMYZ.Parameters.ParamByName('@YYTJ').Value := qryYZMX.FieldByName('YYTJ').AsString;
      spXMYZ.Parameters.ParamByName('@CZKS').Value := qryYZMX.FieldByName('CZKS').AsString;
      spXMYZ.Parameters.ParamByName('@KDKS').Value := qryYZMX.FieldByName('KDKS').AsString;
      spXMYZ.Parameters.ParamByName('@YPLB').Value := qryYZMX.FieldByName('YPLB').AsString;
      spXMYZ.Parameters.ParamByName('@GG').Value := qryYZMX.FieldByName('GG').AsString;
      spXMYZ.Parameters.ParamByName('@YPLSJ').Value := qryYZMX.FieldByName('YPLSJ').AsFloat;
      spXMYZ.Parameters.ParamByName('@YPBZBL').Value := qryYZMX.FieldByName('YPBZBL').AsInteger;
      spXMYZ.Parameters.ParamByName('@BZ').Value := qryYZMX.FieldByName('BZ').AsString;
      spXMYZ.Parameters.ParamByName('@JYYB').Value := qryYZMX.FieldByName('JYYB').AsString;
      spXMYZ.Parameters.ParamByName('@JYFLBH').Value := qryYZMX.FieldByName('JYFLBH').AsString;
      spXMYZ.Parameters.ParamByName('@YPDWID').Value := qryYZMX.FieldByName('YPDWID').AsInteger;
      spXMYZ.Parameters.ParamByName('@FZBZ').Value := qryYZMX.FieldByName('FZBZ').AsString;
      spXMYZ.Parameters.ParamByName('@YZSXB').Value := qryYZMX.FieldByName('YZSXB').AsString;
      spXMYZ.ExecProc;
      vError := spXMYZ.Parameters.ParamByName('@SCZT').Value;
      if vError <> '0' then
        Exit;
      qryYZMX.Next;
    end;
    qryYZZB.Next;
  end;
  Result := True;
end;

procedure Tfrm_LCLJSJBX.SaveChangeData;
var
  vPGID: string;
  vError: string;
  sSql: string;
  procedure SaveJDPG(vJDID: string; vChkImport: Boolean = False);
  begin
    qryLJPG.Filtered := False;
    if not vChkImport then
      qryLJPG.Filter := 'JDID=' + #39 + vJDID + #39
    else
      qryLJPG.Filter := 'PGLX=' + intTOstr(1);
    qryLJPG.Filtered := True;
    qryLJPG.First;
    while not qryLJPG.Eof do
    begin

      vPGID := qryLJPG.FieldByName('PGID').AsString;
      //--------------
      qryPGZB.Filtered := False;
      qryPGZB.Filter := 'PGID=' + #39 + vPGID + #39;
      qryPGZB.Filtered := True;
      qryPGZB.First;
      while not qryPGZB.Eof do
      begin
        spPGZB.Parameters.ParamByName('@PGID').Value := qryPGZB.FieldByName('PGID').AsString;
        spPGZB.Parameters.ParamByName('@LJID').Value := vLJID;
        spPGZB.Parameters.ParamByName('@BBH').Value := vLJBBH;
        if not qryLJPG.FieldByName('JDID').IsNull then
          spPGZB.Parameters.ParamByName('@JDID').Value := qryLJPG.FieldByName('JDID').AsString
        else
          spPGZB.Parameters.ParamByName('@JDID').Value := '';
        spPGZB.Parameters.ParamByName('@PGLX').Value := qryLJPG.FieldByName('PGLX').AsInteger;
        spPGZB.Parameters.ParamByName('@ZBID').Value := qryPGZB.FieldByName('ZBID').AsString;
        spPGZB.Parameters.ParamByName('@XH').Value := qryPGZB.FieldByName('XH').AsString;
        spPGZB.Parameters.ParamByName('@PGZB').Size := 300;
        spPGZB.Parameters.ParamByName('@PGZB').Value := qryPGZB.FieldByName('PGZB').AsString;
        spPGZB.Parameters.ParamByName('@ZBLX').Value := qryPGZB.FieldByName('ZBLX').AsInteger;
        spPGZB.Parameters.ParamByName('@ZBJG').Size := 500;
        spPGZB.Parameters.ParamByName('@ZBJG').Value := qryPGZB.FieldByName('ZBJG').AsString;
        spPGZB.ExecProc;
        vError := spPGZB.Parameters.ParamByName('@SCZT').Value;
        if vError <> '0' then
          raise Exception.Create('保存评估指标表错误');
        qryPGZB.Next;
      end;
      //-----------------
      //保存评估指标条件表
      qryPGTJ.Filtered := False;
      qryPGTJ.Filter := 'PGID=' + #39 + vPGID + #39;
      qryPGTJ.Filtered := True;
      qryPGTJ.First;
      while not qryPGTJ.Eof do
      begin
        spPGTJ.Parameters.ParamByName('@PGID').Value := vPGID;

        spPGTJ.Parameters.ParamByName('@LJID').Value := vLJID;
        spPGTJ.Parameters.ParamByName('@BBH').Value := vLJBBH;
        if not qryLJPG.FieldByName('JDID').IsNull then
          spPGTJ.Parameters.ParamByName('@JDID').Value := qryLJPG.FieldByName('JDID').AsString
        else
          spPGTJ.Parameters.ParamByName('@JDID').Value := '';
        spPGTJ.Parameters.ParamByName('@PGLX').Value := qryLJPG.FieldByName('PGLX').AsInteger;
        if not qryPGTJ.FieldByName('ZBID').IsNull then
          spPGTJ.Parameters.ParamByName('@ZBID').Value := qryPGTJ.FieldByName('ZBID').AsString
        else
          spPGTJ.Parameters.ParamByName('@ZBID').Value := '';
        if not qryPGTJ.FieldByName('XMID').IsNull then
          spPGTJ.Parameters.ParamByName('@XMID').Value := qryPGTJ.FieldByName('XMID').AsString
        else
          spPGTJ.Parameters.ParamByName('@XMID').Value := '';
        spPGTJ.Parameters.ParamByName('@GXS').Value := qryPGTJ.FieldByName('GXS').AsString;
        spPGTJ.Parameters.ParamByName('@TJZ').Size := 50;
        spPGTJ.Parameters.ParamByName('@TJZ').Value := qryPGTJ.FieldByName('TJZ').AsString;
        spPGTJ.Parameters.ParamByName('@TJZH').Value := qryPGTJ.FieldByName('TJZH').AsInteger;
        spPGTJ.ExecProc;
        vError := spPGTJ.Parameters.ParamByName('@SCZT').Value;
        if vError <> '0' then
          raise Exception.Create('保存评估指标条件表错误');
        qryPGTJ.Next;
      end;
      //-----------
      qryLJPG.Next;
    end;

  end;
begin
  DM_data.ado_mydata.BeginTrans;
  try
  //保存路径版本表
    spLJBB.Parameters.ParamByName('@LJID').Value := qryLCLJBB.FieldByName('LJID').AsString;
    spLJBB.Parameters.ParamByName('@BBH').Value := qryLCLJBB.FieldByName('BBH').AsInteger;
    spLJBB.Parameters.ParamByName('@BZZYR').Value := qryLCLJBB.FieldByName('BZZYR').AsString;
    spLJBB.Parameters.ParamByName('@BZFY').Value := qryLCLJBB.FieldByName('BZFY').AsString;
    spLJBB.Parameters.ParamByName('@BBSM').Value := qryLCLJBB.FieldByName('BBSM').AsString;
    spLJBB.Parameters.ParamByName('@CJR').Value := qryLCLJBB.FieldByName('CJR').AsString;
    spLJBB.Parameters.ParamByName('@CJSJ').Value := qryLCLJBB.FieldByName('CJSJ').AsDateTime;
    spLJBB.ExecProc;
    vError := spLJBB.Parameters.ParamByName('@SCZT').Value;
    if vError <> '0' then
      raise Exception.Create('保存路径版本表错误');
   //---------
   //保存路径分类表
    sSql := 'delete from LCLJ_LCLJFL where LJID=' + #39 + vLJID + #39 + ' and BBH=' + intTostr(vLJBBH);
    ExecSql(sSql);
    qryFL.Filtered := False;
    qryFL.First;
    while not qryFL.Eof do
    begin
      spLJFL.Parameters.ParamByName('@LJID').Value := vLJID;
      spLJFL.Parameters.ParamByName('@BBH').Value := vLJBBH;
      spLJFL.Parameters.ParamByName('@XH').Value := qryFL.FieldByName('XH').AsString;
      spLJFL.Parameters.ParamByName('@MC').Value := qryFL.FieldByName('FL').AsString;
      spLJFL.ExecProc;
      vError := spLJFL.Parameters.ParamByName('@SCZT').Value;
      if vError <> '0' then
        raise Exception.Create('保存路径分类表错误');

      qryFL.Next;
    end;
   //-------
   //保存路径项目表
    sSql := 'delete from dbo.LCLJ_LCLJXM where LJID=' + #39 + vLJID + #39 + ' and BBH=' + intTostr(vLJBBH);
    ExecSql(sSql);
    qryXM.Filtered := False;
    qryXM.First;
    while not qryXM.Eof do
    begin
      spLJXM.Parameters.ParamByName('@XMID').Value := qryXM.FieldByName('XMID').AsString;
      spLJXM.Parameters.ParamByName('@LJID').Value := qryXM.FieldByName('LJID').AsString;
      spLJXM.Parameters.ParamByName('@JDID').Value := qryXM.FieldByName('JDID').AsString;
      spLJXM.Parameters.ParamByName('@BBH').Value := qryXM.FieldByName('BBH').AsInteger;
      spLJXM.Parameters.ParamByName('@FL').Value := qryXM.FieldByName('FL').AsString;
      spLJXM.Parameters.ParamByName('@XMXH').Value := qryXM.FieldByName('XMXH').AsInteger;
      spLJXM.Parameters.ParamByName('@XMNR').Value := qryXM.FieldByName('XMNR').AsString;
      spLJXM.Parameters.ParamByName('@ZXFS').Value := qryXM.FieldByName('ZXFS').AsInteger;
      spLJXM.Parameters.ParamByName('@ZXZ').Value := qryXM.FieldByName('ZXZ').AsInteger;
      spLJXM.Parameters.ParamByName('@XMJG').Value := qryXM.FieldByName('XMJG').AsString;
      spLJXM.Parameters.ParamByName('@NRYQ').Value := qryXM.FieldByName('NRYQ').AsInteger;
      spLJXM.Parameters.ParamByName('@TBID').Value := 0;
      spLJXM.ExecProc;
      vError := spLJXM.Parameters.ParamByName('@SCZT').Value;
      if vError <> '0' then
        raise Exception.Create('保存路径项目表错误');
      qryXM.Next;
    end;
   //-----------
  //保存路径阶段表
      //先删除原有路径阶段
    sSql := 'delete from LCLJ_LCLJJD  where LJID=' + #39 + vLJID + #39 + ' and BBH=' + intTostr(vLJBBH);
    dm_data.Qry_pub.Close;
    dm_data.Qry_pub.SQL.Text := sSql;
    dm_data.Qry_pub.ExecSQL;
    //删除评估指标表
    dm_data.Qry_pub.Close;
    sSql := 'select * from LCLJ_LCLJPG where LJID=' + #39 + vLJID + #39 + ' and BBH=' + intTostr(vLJBBH);
    dm_data.Qry_pub.SQL.Text := sSql;
    dm_data.Qry_pub.Open;
    dm_data.Qry_pub.First;
    while not dm_data.Qry_pub.Eof do
    begin
      vPGID := dm_data.Qry_pub.FieldByName('PGID').AsString;
        //先删除评估的相关指标
      sSql := 'delete from LCLJ_LJPGZB where PGID=' + #39 + vPGID + #39;
      ExecSql(sSql);
       //先删除评估的相关指标条件
      sSql := 'delete from LCLJ_LJPGTJ where PGID=' + #39 + vPGID + #39;
      ExecSql(sSql);
      dm_data.Qry_pub.Next;
    end;

    sSql := 'delete from LCLJ_LCLJPG  where LJID=' + #39 + vLJID + #39 + ' and BBH=' + intTostr(vLJBBH);
    dm_data.Qry_pub.Close;
    dm_data.Qry_pub.SQL.Text := sSql;
    dm_data.Qry_pub.ExecSQL;
     //保存导入评估
    SaveJDPG('', True);
    qryLCLJJD.Filtered := False;
    qryLCLJJD.First;
    while not qryLCLJJD.Eof do
    begin
      spLJJD.Parameters.ParamByName('@JDID').Value := qryLCLJJD.FieldByName('JDID').AsString;
      spLJJD.Parameters.ParamByName('@LJID').Value := vLJID;
      spLJJD.Parameters.ParamByName('@BBH').Value := vLJBBH;
      if not qryLCLJJD.FieldByName('FID').IsNull then
        spLJJD.Parameters.ParamByName('@FID').Value := qryLCLJJD.FieldByName('FID').AsString
      else
        spLJJD.Parameters.ParamByName('@FID').Value := null;
      spLJJD.Parameters.ParamByName('@XH').Value := qryLCLJJD.FieldByName('XH').AsInteger;
      spLJJD.Parameters.ParamByName('@MC').Value := qryLCLJJD.FieldByName('MC').AsString;
      spLJJD.Parameters.ParamByName('@KSTS').Value := qryLCLJJD.FieldByName('KSTS').AsInteger;
      spLJJD.Parameters.ParamByName('@JSTS').Value := qryLCLJJD.FieldByName('JSTS').AsInteger;
      spLJJD.Parameters.ParamByName('@BZ').Value := qryLCLJJD.FieldByName('BZ').AsString;
      spLJJD.Parameters.ParamByName('@SM').Value := qryLCLJJD.FieldByName('SM').AsString;
      spLJJD.Parameters.ParamByName('@FL').Value := qryLCLJJD.FieldByName('FL').AsString;
      spLJJD.ExecProc;
      vError := spLJJD.Parameters.ParamByName('@SCZT').Value;
      if vError <> '0' then
        raise Exception.Create('保存路径阶段表错误');
      SaveJDPG(qryLCLJJD.FieldByName('JDID').AsString);
      qryLCLJJD.Next;
    end;
  //--------
  //--保存项目医嘱
    if not SaveXMYZ then
      raise Exception.Create('保存路径阶段表错误');
//-----------
    if DM_data.ado_mydata.InTransaction then
      DM_data.ado_mydata.CommitTrans;
  except on E: Exception do
    begin
      if DM_data.ado_mydata.InTransaction then
        DM_data.ado_mydata.RollbackTrans;
      begin
        Application.MessageBox(Pchar('系统错误,错误信息为' + vError), '提示', mb_OK);
        actSave.Enabled := True;
      end;

    end;
  end;
end;

procedure Tfrm_LCLJSJBX.cxgrdbndtblvwLCLJMXCellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if cxgrdbndtblvwLCLJMX.Controller.FocusedItemIndex = 0 then
  begin
    lblCaption.Caption := '  分类:';
    btnSetup.Visible := True;
    vEditType := 1;
    actInsertFZ.Enabled := False;
  end
  else
  begin
    lblCaption.Caption := '  项目:';
    btnSetup.Visible := True;
    vEditType := 3;
    actInsertFZ.Enabled := False;
  end;
  vCurrentBand := nil;
  vCurrentColumn := nil;
  SetColumStyle;
end;

procedure Tfrm_LCLJSJBX.cxgrdbndtblvwLCLJMXCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  //修改分类
  if cxgrdbndtblvwLCLJMX.Controller.FocusedItemIndex = 0 then
  begin
    vEditType := 1;
    if actSetup.Enabled then
      actSetupExecute(Self);
  end else
  begin
    vEditType := 3;
    if actSetup.Enabled then
      actSetupExecute(Self); // 修改项目
  end;
end;

procedure Tfrm_LCLJSJBX.cxgrdbndtblvwLCLJMXColumnHeaderClick(
  Sender: TcxGridTableView; AColumn: TcxGridColumn);
var
  i: Integer;
begin
  for I := 0 to cxgrdbndtblvwLCLJMX.ColumnCount - 1 do
    cxgrdbndtblvwLCLJMX.Columns[i].Styles.Header := vCurrBandStyle;
  vCurrentColumn := AColumn;
  vEditType := 4;
  vCurrentBand := nil;
  if vCurrentColumn.Index > 1 then
    SetColumStyle;
    //vCurrentColumn.Styles.Header := cxstyl33;
end;

procedure Tfrm_LCLJSJBX.cxgrdbndtblvwLCLJMXCustomDrawBandHeader(
  Sender: TcxGridBandedTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridBandHeaderViewInfo; var ADone: Boolean);
begin
  if not AViewInfo.IsPressed then
  begin
    AViewInfo.Borders := AViewInfo.Borders - [bBottom];
    if AViewInfo.Band.VisibleIndex > 0 then
      AViewInfo.Borders := AViewInfo.Borders - [bLeft];
  end
  else
  begin
    AViewInfo.Borders := [bLeft..bRight];
  end;
end;

procedure Tfrm_LCLJSJBX.cxgrdbndtblvwLCLJMXCustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  with TcxGridBandedColumn(AViewInfo.Column).Position do
  begin
    if not AViewInfo.IsPressed then
      if (VisibleColIndex = 0) and (Band.VisibleIndex <> 0) then
        AViewInfo.Borders := AViewInfo.Borders - [bLeft]
      else
    else
      AViewInfo.Borders := [bLeft..bBottom];
  end;
end;

function Tfrm_LCLJSJBX.GetJDName(CurrentBand: TcxGridBand): string;
var
  vJDName: string;
begin
  Result := '';
  if CurrentBand <> nil then //分组栏处理
  begin
    if CurrentBand.ChildBandCount = 0 then
      vJDName := vCurrentBand.Columns[0].Name
    else
      vJDName := vCurrentBand.ChildBands[0].Columns[0].Name;
    if vJDName <> '' then
      Result := Copy(vJDName, 4, Length(vJDName));
  end;
end;

procedure Tfrm_LCLJSJBX.cxgrdbndtblvwLCLJMXDblClick(Sender: TObject);
var
  vJDID, vJDName, FJDID: string;
  vXH: Integer;
begin
  if vCurrentBand <> nil then //分组栏处理
  begin
    if vEditType = 2 then
      if actSetup.Enabled then

        actSetupExecute(Self);
  end;

  if vCurrentColumn <> nil then //列标题处理
    if vEditType = 4 then
      if actJDPG.Enabled then
        actJDPGExecute(Self);
end;

procedure Tfrm_LCLJSJBX.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  try

  finally
    UnlockEditRecord(vLJID);
  end;
end;

procedure Tfrm_LCLJSJBX.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if actsave.Enabled then
    if Application.MessageBox('数据没有保存确定要退出吗？', '提示', MB_YESNO +
      MB_ICONQUESTION + MB_DEFBUTTON2) = IDNO then
    begin
      CanClose := False;
    end;

end;

procedure Tfrm_LCLJSJBX.FormShow(Sender: TObject);
begin
  ShowData;
  actSave.Enabled := False;
end;

procedure Tfrm_LCLJSJBX.SetBBHCom(LJID: string);
var
  vStr: string;
  i: Integer;
begin
  qryLCLJBB.Filtered := False;
  qryLCLJBB.First;
  cbbBB.Items.Clear;
  while not qryLCLJBB.Eof do
  begin
    if qryLCLJBB.FieldByName('BBH').AsInteger > 0 then
    begin
      vStr := '第 ' + qryLCLJBB.FieldByName('BBH').AsString + ' 版,创建：' + qryLCLJBB.FieldByName('CJR').AsString + '/' + qryLCLJBB.FieldByName('CJSJ').AsString;
      if not qryLCLJBB.FieldByName('SHR').IsNull then
        vStr := vStr + ' 审核:' + qryLCLJBB.FieldByName('SHR').AsString + '/' + qryLCLJBB.FieldByName('SHSJ').AsString;
      if not qryLCLJBB.FieldByName('TYR').IsNull then
        vStr := vStr + ' 停用' + qryLCLJBB.FieldByName('TYR').AsString + '/' + qryLCLJBB.FieldByName('TYSJ').AsString;
      cbbBB.Items.AddObject(vStr, TObject(qryLCLJBB.FieldByName('BBH').AsInteger));
    end;
    qryLCLJBB.Next;
  end;
  if cbbBB.Items.Count = 0 then
  begin
    cbbBB.Items.AddObject('正在设计中...', TObject(-1));
    cbbBB.ItemIndex := 0;
  end else
  begin
    for I := 0 to cbbBB.Items.Count - 1 do
    begin
      if Integer(cbbBB.Items.Objects[i]) = vLJBBH then
      begin
        cbbBB.ItemIndex := i;
        Break;
      end;
    end;
  end;

end;

procedure Tfrm_LCLJSJBX.SetCopyXMID(Value: string);
begin
  vCopyXMID := Value;
  actPaste.Enabled := False;
  actCOPY.Enabled := False;
  if vEditType = 3 then
  begin
    actCOPY.Enabled := True;
    if vCopyXMID <> '-1' then
      actPaste.Enabled := True;
  end;
end;

procedure Tfrm_LCLJSJBX.InitalData(chkBBH: Boolean);
var
  sSql: string;
begin
  LockEditRecord(vLJID); //锁定当前编辑记录
  CopyXMID := '-1'; //当前复制的项目ID初始化
   //打开所要用的数据源
  //打开路径版本号表
  if chkBBH then
    qryLCLJBB.Close;
  if not qryLCLJBB.Active then
  begin
    qryLCLJBB.Close;
    qryLCLJBB.Parameters.ParamByName('P_LJID').Value := vLJID;
    qryLCLJBB.Filtered := False;
    qryLCLJBB.Filter := 'BBH=' + IntTostr(vLJBBH);
    qryLCLJBB.Filtered := True;
    qryLCLJBB.Open;
  end else
  begin
    qryLCLJBB.Filtered := False;
    qryLCLJBB.Filter := 'BBH=' + IntTostr(vLJBBH);
    qryLCLJBB.Filtered := True;
  end;
  if not qryLCLJBB.FieldByName('BZZYR').IsNull then
  begin
    vLJBZZYR := StrToInt(GetBZZYR(qryLCLJBB.FieldByName('BZZYR').AsString));
    lblBZINFO.Caption := intTostr(vLJBZZYR) + '天,标准费用:'
      + qryLCLJBB.FieldByName('BZFY').AsString;
    if qryLCLJBB.FieldByName('BBSM').IsNull then
      lblBZINFO.Caption := lblBZINFO.Caption + '<无>'
    else
      lblBZINFO.Caption := lblBZINFO.Caption + '<' + qryLCLJBB.FieldByName('BBSM').AsString + '>';
  end else
    lblBZINFO.Caption := '';


  SetBBHCom(vLJID); //设置版本显示
   //打开路径分类表
  sSql := 'IF OBJECT_ID(' + #39 + 'tempdb..#MyFL' + #39 + ') IS NOT NULL ' +
    ' drop Table  tempdb..#MyFL ' +
    ' select A.XH,A.MC as FL,isnull(num,1)as num into tempdb..#MyFL from LCLJ_LCLJFL A, ' +
    '(select MAX(xmxh) num,FL from LCLJ_LCLJXM where LJID=' + #39 + vLJID + #39 +
    ' and BBH=' + intTostr(vLJBBH) + ' group by FL) B ' +
    ' where A.MC*=B.FL and A.LJID=' + #39 + vLJID + #39 + ' and A.BBH=' + intTostr(vLJBBH) +
    'order by A.XH';
  ExecSql(sSql);
  qryFL.Close;
 // qryFL.Parameters.ParamByName('P_LJID').Value := vLJID;
 // qryFL.Parameters.ParamByName('P_BBH').Value := vLJBBH;
  qryFL.Open;
   //-----
   //打开路径阶段表
  qryLCLJJD.Close;
  qryLCLJJD.Parameters.ParamByName('P_LJID').Value := vLJID;
  qryLCLJJD.Parameters.ParamByName('P_LJBBH').Value := vLJBBH;
  qryLCLJJD.Open;

    //打开路径项目表
  qryXM.Close;
  qryXM.Parameters.ParamByName('P_LJID').Value := vLJID;
  qryXM.Parameters.ParamByName('P_BBH').Value := vLJBBH;
  qryXM.Open;
    //-------------
    //打开临床路径评估表
  qryLJPG.Parameters.ParamByName('P_LJID').Value := vLJID;
  qryLJPG.Parameters.ParamByName('P_BBH').Value := vLJBBH;
  qryLJPG.Close;
  qryLJPG.Open;
    //------
    //打开路径评估指标表
  qryPGZB.Close;
  qryPGZB.Open;
    //------
  //打开评估指标条件表
  qryPGTJ.Close;
  qryPGTJ.Open;
  //-----
  //打开路径项目医嘱表
  qryYZZB.Close;
  qryYZZB.Parameters.ParamByName('P_LJID').Value := vLJID;
  qryYZZB.Open;
  qryYZMX.Close;
  qryYZMX.Parameters.ParamByName('P_LJID').Value := vLJID;
  qryYZMX.Open;
  //------
  //设置编辑类型
  vEditType := -1;
  //vLJBZZYR := 0;
  if chkBBH then
    actSave.Enabled := False;
end;

procedure Tfrm_LCLJSJBX.SetColumStyle;
var
  i: Integer;
  vJDID: string;
begin
  for I := 0 to cxgrdbndtblvwLCLJMX.ColumnCount - 1 do
  begin
    vJDID := Copy(cxgrdbndtblvwLCLJMX.Columns[i].Name, 4, Length(cxgrdbndtblvwLCLJMX.Columns[i].Name));
    if vJDID <> '' then
      if qryLJPG.Locate('JDID', vJDID, []) then
        cxgrdbndtblvwLCLJMX.Columns[i].Styles.Header := cxstyl36;
    if vCurrentColumn <> nil then
      if vCurrentColumn = cxgrdbndtblvwLCLJMX.Columns[i] then
        vCurrentColumn.Styles.Header := cxstyl33
  end;
  for I := 0 to cxgrdbndtblvwLCLJMX.Bands.Count - 1 do
    cxgrdbndtblvwLCLJMX.Bands[i].Styles.Header := vCurrBandStyle;
  if vCurrentBand <> nil then
    if vCurrentBand.Index <> 0 then
      vCurrentBand.Styles.Header := cxstyl30;
  //设置复制按扭
  COPYXMID := vCopyXMID;
end;

procedure Tfrm_LCLJSJBX.CheckBB(LJID: string; BBH: Integer);
var
  sSql: string;
  vCheck: Boolean;
begin
  sSql := 'Select * from LCLJ_LCLJBB where  ISNULL(SHSJ,0)<>0 and LJID=' + #39 + LJID + #39 + ' and BBH=' + intTostr(BBH);
  with dm_data.Qry_pub do
  begin
    actAddPB.Enabled := False;
    actDeletePB.Enabled := False;
    vCheck := False;
    close;
    SQL.Clear;
    SQL.Add(sSql);
    Open;
    if IsEmpty then
    begin
      SetEditButton(True);
      SetDefaultStyle;
      actDeletePB.Enabled := True;
    end
    else
    begin
      SetAuditStyle;
      actAddPB.Enabled := True;
      SetEditButton(False);
      vCheck := True;
    end;

    close;
    sSql := 'Select * from LCLJ_LCLJBB where  ISNULL(TYSJ,0)<>0 and LJID=' + #39 + vLJID + #39 + ' and BBH=' + intTostr(BBH);
    SQL.Clear;
    SQL.Add(sSql);
    Open;
    if IsEmpty then
    begin
      if vCheck then
    end else
    begin
      SetEditButton(False);
      SetStopStyle;
    end;
    Close;
  end;
end;

function Tfrm_LCLJSJBX.ShowData: Boolean;
var
  sSql, FLName, vJDID, vJDName, vCaption: string;
  i, k, vXH: Integer;
  RecordIndex: Integer;
begin
  try
   //清除数据
    for I := 0 to cxgrdbndtblvwLCLJMX.ViewData.RecordCount - 1 do
      cxgrdbndtblvwLCLJMX.DataController.DeleteRecord(0);
    cxgrdbndtblvwLCLJMX.Bands.Clear;
    cxgrdbndtblvwLCLJMX.ClearItems;
    vCurrentBand := nil;
    vCurrentColumn := nil;
   //----
    AddHiddenColum; //增加一不可见列用于保存项目序号
    AddCustomerBand('时间阶段', '', '', -1, True, False);
     //增加分类信息
    qryFL.Sort := 'XH';
    qryFL.First;
    while not qryFL.Eof do
    begin
      k := qryFL.FieldByName('Num').AsInteger;
      for I := 1 to k do
      begin
        RecordIndex := cxgrdbndtblvwLCLJMX.DataController.AppendRecord;
        cxgrdbndtblvwLCLJMX.ViewData.Records[RecordIndex].Values[1] := qryFL.FieldByName('FL').AsString;
        cxgrdbndtblvwLCLJMX.ViewData.Records[RecordIndex].Values[0] := I;
      end;
      qryFL.Next;
    end;
      //----------
     //增加阶段信息
   // for I := 0 to qryLCLJJD.RecordCount - 1 do
      // AddCustomerBand('', '', '', -1);

    qryLCLJJD.Filtered := False;
    qryLCLJJD.First;

    qryLCLJJD.Sort := 'FID DESC,XH ';
    K := 2;
    while not qryLCLJJD.Eof do
    begin
      if not qryLCLJJD.FieldByName('JDID').IsNull then
      begin
        vJDID := qryLCLJJD.FieldByName('JDID').AsString;
        vJDName := qryLCLJJD.FieldByName('MC').AsString;
        vXH := qryLCLJJD.FieldByName('XH').AsInteger;
        AddCustomerBand(vJDName, vJDID, '阶段评估', vXH);
       //设置显示名细
        if cxgrdbndtblvwLCLJMX.ViewData.RecordCount > 0 then
        begin
          qryXM.Filtered := False;
          qryXM.Filter := 'JDID=' + #39 + vJDID + #39;
          qryXM.Filtered := True;
          qryXM.First;
          while not qryXM.Eof do
          begin
            for I := 0 to cxgrdbndtblvwLCLJMX.ViewData.RecordCount - 1 do
            begin
              if (cxgrdbndtblvwLCLJMX.ViewData.Records[I].Values[1] = qryXM.FieldByName('FL').AsString)
                and (cxgrdbndtblvwLCLJMX.ViewData.Records[I].Values[0] = qryXM.FieldByName('XMXH').AsString)
                then
              begin
                if qryYZMX.Locate('XMID', qryXM.FieldByName('XMID').AsString, []) then
                  cxgrdbndtblvwLCLJMX.ViewData.Records[I].Values[K] := qryXM.FieldByName('XMNR').AsString + '...'
                else
                  cxgrdbndtblvwLCLJMX.ViewData.Records[I].Values[K] := qryXM.FieldByName('XMNR').AsString;
                Break;
              end;
            end;
            qryXM.Next;
          end;
        end;
        Inc(k);
      end;
      qryLCLJJD.Next;
    end;
    qryXM.Filtered := False;
      //----------------
      //处理双重表头

    qryLCLJJD.First;
    while not qryLCLJJD.Eof do
    begin
      if not qryLCLJJD.FieldByName('FID').IsNull then
      begin
        vCaption := '';
        if (not qryLCLJJD.FieldByName('FL').IsNull) and (not qryLCLJJD.FieldByName('SM').IsNull) then
          vCaption := qryLCLJJD.FieldByName('SM').AsString + ',' + qryLCLJJD.FieldByName('FL').AsString
        else
          if (not qryLCLJJD.FieldByName('FL').IsNull) then
            vCaption := '备用分支' + qryLCLJJD.FieldByName('XH').AsString + ',' + qryLCLJJD.FieldByName('FL').AsString;
        AddparentBand('JD_' + qryLCLJJD.FieldByName('FID').AsString, 'JD_' + qryLCLJJD.FieldByName('JDID').AsString, qryLCLJJD.FieldByName('XH').AsString, vCaption);
      end;

      qryLCLJJD.Next;
    end;
    //-------------
    SetColumStyle; //设置有评估的显示风格
    //如没有数据则初始化表格
    if cxgrdbndtblvwLCLJMX.ViewData.RecordCount = 0 then
    begin
      RecordIndex := cxgrdbndtblvwLCLJMX.DataController.AppendRecord;
      cxgrdbndtblvwLCLJMX.ViewData.Records[RecordIndex].Values[1] := '';
    end;
    if cxgrdbndtblvwLCLJMX.ColumnCount = 2 then
      AddCustomerBand('', '', '', -1, True, True);
   //------------
    CheckBB(vLJID, vLJBBH);
  except on E: Exception do
    begin
      Application.MessageBox(Pchar('数据初始化错误。错误信息为：' + #13 + E.Message), '提示', mb_OK);
      Result := False;
    end;
  end;
end;
end.

