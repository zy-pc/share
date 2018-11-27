unit P_LCLJZDGL;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxClasses, cxTextEdit,
  cxControls, cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxCheckBox,
  cxGridDBTableView, cxGrid, ToolWin, ImgList, StdCtrls, Buttons, ADODB, Menus,
  ActnList, cxContainer, cxMaskEdit, cxDropDownEdit, cxCheckComboBox;

type
  TFrm_ZDGL = class(TForm)
    pnl1: TPanel;
    pnl2: TPanel;
    pgcZDGL: TPageControl;
    tsZJYY: TTabSheet;
    tsZJJG: TTabSheet;
    tsXGFL: TTabSheet;
    tsJGXZ: TTabSheet;
    pnl3: TPanel;
    tvZJYY: TTreeView;
    tvZJJG: TTreeView;
    cxgrdbtblvwZDFL: TcxGridDBTableView;
    cxgrdlvlGrid1Level1: TcxGridLevel;
    cxgrdXGFL: TcxGrid;
    cxgrdbtblvwJGXZ: TcxGridDBTableView;
    cxgrdlvlGrid1Level2: TcxGridLevel;
    cxgrdJGXZ: TcxGrid;
    cxgrdbtblvwBYYY: TcxGridDBTableView;
    cxgrdlvlGrid1Level3: TcxGridLevel;
    cxgrdZJYY: TcxGrid;
    cxgrdbtblvwZJJG: TcxGridDBTableView;
    cxgrdlvlGrid1Level4: TcxGridLevel;
    cxgrdZJJG: TcxGrid;
    il1: TImageList;
    il2: TImageList;
    tlb1: TToolBar;
    btnType: TToolButton;
    btnDel: TToolButton;
    btnADD: TToolButton;
    btn4: TToolButton;
    btnExit: TToolButton;
    btn6: TToolButton;
    btnEdit: TToolButton;
    btn8: TBitBtn;
    btn9: TBitBtn;
    qryZDGL: TADOQuery;
    dsZDGL: TDataSource;
    spl1: TSplitter;
    spl2: TSplitter;
    cxgrdbclmnZJJGColumn1: TcxGridDBColumn;
    bvl1: TBevel;
    pmType: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    pmCode: TPopupMenu;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    actlstBM: TActionList;
    actDelete: TAction;
    actType: TAction;
    actADD: TAction;
    actEdit: TAction;
    procedure FormShow(Sender: TObject);
    procedure pgcZDGLChange(Sender: TObject);
    procedure tvZJYYChange(Sender: TObject; Node: TTreeNode);
    procedure btnExitClick(Sender: TObject);
    procedure tvZJJGChange(Sender: TObject; Node: TTreeNode);
    procedure cxgrdbtblvwBYYYMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cxgrdbtblvwZJJGMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cxgrdbtblvwZDFLMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure actDeleteExecute(Sender: TObject);
    procedure actTypeExecute(Sender: TObject);
    procedure actADDExecute(Sender: TObject);
    procedure actEditExecute(Sender: TObject);
  private
    { Private declarations }
    SelectNode: TTreeNode;
    CurrentBm: string;
    vChkType: Boolean;
    function EditZDRecord(vZDFL, vZDPym, vZDBM: string; chkEdit: Boolean = False): Boolean;
    procedure ShowTreeData;
    procedure SetButton;
    procedure Showdata;
    procedure cxgrdbtblvwYZ(Sender: TcxCustomGridTableItem; ARecordIndex: Integer; var AText: string);
    procedure cxgrdbtblvwZJJGYZ(Sender: TcxCustomGridTableItem; ARecordIndex: Integer; var AText: string);
    procedure cxgrdbtblvwZJJGJB(Sender: TcxCustomGridTableItem; ARecordIndex: Integer; var AText: string);
  public
    { Public declarations }
  end;
procedure ZDGL;
implementation
uses P_Public, p_dm, P_LCLJZDGL_ADD, p_func;
{$R *.dfm}

procedure ZDGL;
var
  Frm_ZDGL: TFrm_ZDGL;
begin
  Frm_ZDGL := TFrm_ZDGL.Create(Application);
  with Frm_ZDGL do
  begin
    ShowModal;
    Free;
  end;
end;

procedure TFrm_ZDGL.actADDExecute(Sender: TObject);
var
  CID: Integer;
  vZDFL, vZDPym, vZDBM: string;
begin
  if SelectNode <> nil then
    CID := SelectNode.SelectedIndex
  else
    CID := -1;

  if pgcZDGL.ActivePage = tsZJYY then
    if ADDZDRecord(1, CID, '', tvZJYY, qryZDGL, True, False) then
      //tvZJYYChange(Self, SelectNode);
    begin
      qryZDGL.Close;
      qryZDGL.Open;
    end;
  if pgcZDGL.ActivePage = tsZJJG then
    if ADDZDRecord(2, CID, '', tvZJJG, qryZDGL, True, False) then
      //tvZJJGChange(Self, SelectNode);
    begin
      qryZDGL.Close;
      qryZDGL.Open;
    end;
  if pgcZDGL.ActivePage = tsXGFL then
  begin
    vZDFL := InputBox('请输入诊断相关分类', '诊断分类', '');
    if vZDFL <> '' then
    begin
      vZDPym := GetPym(vZDFL);
      vZDBM := GetColumnID('LCLJ_ZDXGFL', 'BM', True);
      if EditZDRecord(vZDFL, vZDPym, vZDBM) then
      begin
        qryZDGL.Close;
        qryZDGL.Open;
      end;
    end;
  end;
end;

procedure TFrm_ZDGL.actDeleteExecute(Sender: TObject);
var
  sSql, vCaption, vBM, vBMMC: string;
begin
  if vChkType then
  begin
    if (SelectNode = nil) then Exit;
    if SelectNode.SelectedIndex = -1 then Exit;

    if pgcZDGL.ActivePage = tsZJYY then
    begin
      vCaption := '确定删除《变异常见原因》中名称为“' + SelectNode.Text + '”的分类以及它以下的所有项目吗？';
      sSql := 'delete from dbo.LCLJ_BYCJYY where BM in(select BM from dbo.LCLJ_BYCJYYSTreeInfo(:P_BM))';
    end;
    if pgcZDGL.ActivePage = tsZJJG then
    begin
      vCaption := '确定删除《路径常见结果》中名称为“' + SelectNode.Text + '”的分类以及它以下的所有项目吗？';
      sSql := 'delete from dbo.LCLJ_LJCJJG where BM in(select BM from dbo.LCLJ_LJCJJGTreeInfo(:P_BM))';
    end;
    vBM := TInfo(TreeArrInfo[SelectNode.SelectedIndex]).ID;
  end else
  begin
    if qryZDGL.RecordCount = 0 then Exit;
    if pgcZDGL.ActivePage = tsZJYY then
    begin
      vBMMC := cxgrdbtblvwBYYY.DataController.Values[cxgrdbtblvwBYYY.DataController.FocusedRecordIndex, 1];
      vCaption := '确定删除《变异常见原因》中名称为“' + vBMMC + '”的项目吗？';
      sSql := 'delete from dbo.LCLJ_BYCJYY where BM=:P_BM';
      vBM := cxgrdbtblvwBYYY.DataController.Values[cxgrdbtblvwBYYY.DataController.FocusedRecordIndex, 0];
    end;
    if pgcZDGL.ActivePage = tsZJJG then
    begin
      vBMMC := cxgrdbtblvwZJJG.DataController.Values[cxgrdbtblvwZJJG.DataController.FocusedRecordIndex, 1];
      vCaption := '确定删除《路径常见结果》中名称为“' + vBMMC + '”的项目吗？';
      sSql := 'delete from dbo.LCLJ_LJCJJG where BM=:P_BM';
      vBM := cxgrdbtblvwZJJG.DataController.Values[cxgrdbtblvwZJJG.DataController.FocusedRecordIndex, 0];
    end;
    if pgcZDGL.ActivePage = tsXGFL then
    begin
      vBMMC := cxgrdbtblvwZDFL.DataController.Values[cxgrdbtblvwZDFL.DataController.FocusedRecordIndex, 1];
      vBM := cxgrdbtblvwZDFL.DataController.Values[cxgrdbtblvwZDFL.DataController.FocusedRecordIndex, 0];
      vCaption := '确定删除《诊断相关分类表》中名称为“' + vBMMC + '”的项目吗？';
      sSql := 'delete from dbo.LCLJ_ZDXGFL where BM=:P_BM';
    end;
  end;
  try
    if Application.MessageBox(PChar(vCaption), '警告', MB_YESNO +
      MB_ICONWARNING) = IDYES then
    begin
      with dm_data.Qry_pub do
      begin
        close;
        SQL.Text := sSql;
        Parameters.ParseSQL(SQL.Text, True);
        Parameters.ParamByName('P_BM').Value := vBM;
        ExecSQL;
      end;
      if vChkType then
        ShowTreeData
      else
      begin
        {if pgcZDGL.ActivePage = tsZJYY then
          tvZJYYChange(Self, SelectNode);
        if pgcZDGL.ActivePage = tsZJJG then
          tvZJJGChange(Self, SelectNode);
        if pgcZDGL.ActivePage = tsXGFL then
        begin }
        qryZDGL.Close;
        qryZDGL.Open;
        //end;
      end;
    end;
  except on E: Exception do
    begin
      Application.MessageBox(Pchar('系统错误,错误信息为' + E.Message), '提示', mb_OK);
    end;
  end;
end;

procedure TFrm_ZDGL.actEditExecute(Sender: TObject);
var
  CID: Integer;
  vZDFL, vZDPym, vZDFLMC: string;
begin
  if CurrentBm = '' then Exit;
  if SelectNode <> nil then
    CID := SelectNode.SelectedIndex
  else
    CID := -1;

  if pgcZDGL.ActivePage = tsZJYY then
    if ADDZDRecord(1, CID, CurrentBm, tvZJYY, qryZDGL, False, vChkType) then
      if vChkType then
        ShowTreeData
      else
        tvZJYYChange(Self, SelectNode);

  if pgcZDGL.ActivePage = tsZJJG then
    if ADDZDRecord(2, CID, CurrentBm, tvZJJG, qryZDGL, False, vChkType) then
      if vChkType then
        ShowTreeData
      else
        tvZJJGChange(Self, SelectNode);
  if pgcZDGL.ActivePage = tsXGFL then
  begin
    vZDFLMC := cxgrdbtblvwZDFL.DataController.Values[cxgrdbtblvwZDFL.DataController.FocusedRecordIndex, 1];
    vZDFL := InputBox('请输入诊断相关分类', '诊断分类', vZDFLMC);
    if vZDFL <> '' then
    begin
      vZDPym := GetPym(vZDFL);
      if EditZDRecord(vZDFL, vZDPym, CurrentBm, True) then
      begin
        qryZDGL.Close;
        qryZDGL.Open;
      end;
    end;
  end;
end;

procedure TFrm_ZDGL.actTypeExecute(Sender: TObject);
var
  CID: Integer;
begin
  if SelectNode <> nil then
    CID := SelectNode.SelectedIndex
  else
    CID := -1;
  if pgcZDGL.ActivePage = tsZJYY then
    if ADDZDRecord(1, CID, '', tvZJYY, qryZDGL, True) then
      ShowTreeData;
  if pgcZDGL.ActivePage = tsZJJG then
    if ADDZDRecord(2, CID, '', tvZJJG, qryZDGL, True) then
      ShowTreeData;
end;

procedure TFrm_ZDGL.btnExitClick(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure TFrm_ZDGL.FormShow(Sender: TObject);
begin
  Showdata;
end;

procedure TFrm_ZDGL.pgcZDGLChange(Sender: TObject);
begin
  Showdata;
end;

procedure TFrm_ZDGL.ShowTreeData;
var
  sSql: string;
begin
  if qryZDGL.Active then
  begin
    if pgcZDGL.ActivePage = tsZJYY then
    begin
      sSql := 'select * from LCLJ_BYCJYY where MJ=0';
      LoadTreeInfo(tvZJYY, sSql);
    end;
    if pgcZDGL.ActivePage = tsZJJG then
    begin
      sSql := 'select * from LCLJ_LJCJJG where MJ=0';
      LoadTreeInfo(tvZJJG, sSql);
    end;
  end;
end;

function TFrm_ZDGL.EditZDRecord(vZDFL, vZDPym, vZDBM: string; chkEdit: Boolean = False): Boolean;
var
  sSql: string;
begin
  try
    if not chkEdit then
      sSql := 'Insert into LCLJ_ZDXGFL(BM,MC,JM) values(:P_BM,:P_MC,:P_JM)'
    else
      sSql := 'update LCLJ_ZDXGFL Set MC=:P_MC,JM=:P_JM where BM=:P_BM';
    with dm_data.Qry_pub do
    begin
      close;
      SQL.Text := sSql;
      Parameters.ParseSQL(SQL.Text, True);
      Parameters.ParamByName('P_BM').Value := vZDBM;
      Parameters.ParamByName('P_MC').Size := 200;
      Parameters.ParamByName('P_MC').Value := vZDFL;
      Parameters.ParamByName('P_JM').Value := vZDPym;
      ExecSQL;
      Result := True;
    end;
  except on E: Exception do
    begin
      Application.MessageBox(Pchar('系统错误,错误信息为' + E.Message), '警告', mb_OK + MB_ICONWARNING);
      Result := False;
    end;

  end;
end;

procedure TFrm_ZDGL.cxgrdbtblvwZJJGYZ(Sender: TcxCustomGridTableItem; ARecordIndex: Integer; var AText: string);
var
  vProperIndex: Integer;
  sSql: string;
begin
  if pgcZDGL.ActivePage = tsZJJG then
  begin

    if VarIsNull(cxgrdbtblvwZJJG.DataController.Values[ARecordIndex, 4]) then
    begin
      AText := '';
      Exit;
    end;


    vProperIndex := cxgrdbtblvwZJJG.DataController.Values[ARecordIndex, 4];
    with dm_data.Qry_pub do
    begin
      sSql := 'select mc from LCLJ_LJJGXZ where BM=:P_BM';
      close;
      SQL.Text := sSql;
      Parameters.ParseSQL(SQL.Text, True);
      Parameters.ParamByName('P_BM').Value := vProperIndex;
      Open;
      if not IsEmpty then
        AText := FieldByName('MC').AsString
      else
        AText := '';
      close;
    end;
  end;

end;

procedure TFrm_ZDGL.cxgrdbtblvwZDFLMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if cxgrdbtblvwZDFL.DataController.RecordCount > 0 then
    CurrentBm := cxgrdbtblvwZDFL.DataController.Values[cxgrdbtblvwZDFL.DataController.FocusedRecordIndex, 0]
  else
    CurrentBm := '';
end;

procedure TFrm_ZDGL.cxgrdbtblvwZJJGJB(Sender: TcxCustomGridTableItem; ARecordIndex: Integer; var AText: string);
begin
  if cxgrdbtblvwZJJG.DataController.Values[ARecordIndex, 3] = 'False' then
    AText := ''
  else
    AText := '√';
end;

procedure TFrm_ZDGL.cxgrdbtblvwZJJGMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if cxgrdbtblvwZJJG.DataController.RecordCount > 0 then
    CurrentBm := cxgrdbtblvwZJJG.DataController.Values[cxgrdbtblvwZJJG.DataController.FocusedRecordIndex, 0]
  else
    CurrentBm := '';
  vChkType := False;
end;

procedure TFrm_ZDGL.cxgrdbtblvwBYYYMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if cxgrdbtblvwBYYY.DataController.RecordCount > 0 then
    CurrentBm := cxgrdbtblvwBYYY.DataController.Values[cxgrdbtblvwBYYY.DataController.FocusedRecordIndex, 0]
  else
    CurrentBm := '';
  vChkType := False;
end;

procedure TFrm_ZDGL.cxgrdbtblvwYZ(Sender: TcxCustomGridTableItem; ARecordIndex: Integer; var AText: string);
begin
  if pgcZDGL.ActivePage = tsZJYY then
  begin
    if cxgrdbtblvwBYYY.DataController.Values[ARecordIndex, 3] = -1 then
      AText := '';
    if cxgrdbtblvwBYYY.DataController.Values[ARecordIndex, 3] = 0 then
      AText := '未导入原因';
    if cxgrdbtblvwBYYY.DataController.Values[ARecordIndex, 3] = 1 then
      AText := '变异继续的原因';
    if cxgrdbtblvwBYYY.DataController.Values[ARecordIndex, 3] = 2 then
      AText := '变异退出的原因';
  end;
end;

procedure TFrm_ZDGL.Showdata;
var
  sFields, sCaption, sWidth: string;
  sSql: string;
  cl: TcxGridDBColumn;
  i: Integer;
begin
  if pgcZDGL.ActivePage = tsZJYY then
  begin
    sFields := 'BM,MC,pym,XZ';
    sCaption := '编码,名称,简码,性质';
    sWidth := '50,150,120,80';
    sSql := 'select * from LCLJ_BYCJYY where MJ=1 and isnull(sj,0)=0';
    StrToGridField(cxgrdbtblvwBYYY, sFields, sCaption, sWidth);
    cxgrdbtblvwBYYY.DataController.DataSource := dsZDGL;
    //加入列的GETDATATEXT事件
    for I := 0 to cxgrdbtblvwBYYY.ColumnCount - 1 do
    begin
      if cxgrdbtblvwBYYY.Columns[i].DataBinding.FieldName = 'XZ' then
      begin
        cl := cxgrdbtblvwBYYY.Columns[i];
        cl.OnGetDataText := cxgrdbtblvwYZ;
        Break;
      end;
    end;
  end;

  if pgcZDGL.ActivePage = tsZJJG then
  begin
    sFields := 'BM,MC,pym,JB,XZ';
    sCaption := '编码,名称,简码,基本,性质';
    sWidth := '50,150,120,80';
    sSql := 'select * from LCLJ_LJCJJG where MJ=1 and isnull(sj,0)=0';
    StrToGridField(cxgrdbtblvwZJJG, sFields, sCaption, sWidth);
    cxgrdbtblvwZJJG.DataController.DataSource := dsZDGL;
        //加入列的GETDATATEXT事件
    for I := 0 to cxgrdbtblvwZJJG.ColumnCount - 1 do
    begin
      if cxgrdbtblvwZJJG.Columns[i].DataBinding.FieldName = 'XZ' then
      begin
        cl := cxgrdbtblvwZJJG.Columns[i];
        cl.OnGetDataText := cxgrdbtblvwZJJGYZ;
        Break;
      end;
    end;
    //加入列的Check属性
    for I := 0 to cxgrdbtblvwZJJG.ColumnCount - 1 do
    begin
      if cxgrdbtblvwZJJG.Columns[i].DataBinding.FieldName = 'JB' then
      begin
        cl := cxgrdbtblvwZJJG.Columns[i];
       // cl.DataBinding.ValueTypeClass := TcxTextEditProperties;
        cl.PropertiesClass := TcxTextEditProperties;
        TcxTextEditProperties(cl.Properties).Alignment.Horz := taCenter;
       // cl.PropertiesClass :=TcxCheckBoxProperties;
        cl.OnGetDataText := cxgrdbtblvwZJJGJB;
       { with TcxCheckBoxProperties(cl.Properties) do
        begin
          AllowGrayed := False;
          ValueChecked := True;
          ValueUnchecked := False;
          DisplayChecked:='True';
          DisplayUnchecked :='False';
          NullStyle := nssUnchecked;
          Caption :='fafeds';
         // TcxCheckBoxProperties(cl.Properties).
        end; }
        Break;
      end;
    end;

  end;
  if pgcZDGL.ActivePage = tsXGFL then
  begin
    sFields := 'BM,MC,JM';
    sCaption := '编码,名称,简码';
    sWidth := '50,150,80';
    sSql := 'select * from LCLJ_ZDXGFL';
    StrToGridField(cxgrdbtblvwZDFL, sFields, sCaption, sWidth);
    cxgrdbtblvwZDFL.DataController.DataSource := dsZDGL;
  end;
  if pgcZDGL.ActivePage = tsJGXZ then
  begin
    sFields := 'BM,MC,JM';
    sCaption := '编码,名称,简码';
    sWidth := '50,150,80';
    sSql := 'select * from LCLJ_LJJGXZ';
    StrToGridField(cxgrdbtblvwJGXZ, sFields, sCaption, sWidth);
    cxgrdbtblvwJGXZ.DataController.DataSource := dsZDGL;
  end;
  if sSql <> '' then
  begin
    qryZDGL.SQL.Text := sSql;
    qryZDGL.Open;
  end;
  //显示树形结构
  ShowTreeData;
  SetButton;
  SelectNode := nil;
  //初始化编辑参数
  CurrentBm := '';
  vChkType := false;
end;

procedure TFrm_ZDGL.SetButton;
begin
  actType.Enabled :=False;
  actEdit.Enabled :=False;
  actADD.Enabled :=False;
  actDelete.Enabled := False;

  if (pgcZDGL.ActivePage = tsZJYY) or (pgcZDGL.ActivePage = tsZJJG) then
  begin
    actType.Enabled := True;
    actADD.Enabled := True;
    actEdit.Enabled := True;
    actDelete.Enabled := True;
  end;
  if pgcZDGL.ActivePage = tsXGFL then
  begin
    actADD.Enabled := True;
    actEdit.Enabled := True;
    actDelete.Enabled := True;
  end;
end;

procedure TFrm_ZDGL.tvZJJGChange(Sender: TObject; Node: TTreeNode);
var
  sSql: string;
  vBm: string;
begin

  if node = nil then Exit;

  if Node.SelectedIndex <> -1 then
  begin
    vBm := TInfo(TreeArrInfo[Node.SelectedIndex]).ID;
    sSql := 'select * from LCLJ_LJCJJG where MJ=1 and SJ=' + #39 + vBm + #39;
    CurrentBm := vBm;
  end else
  begin
    sSql := 'select * from LCLJ_LJCJJG where MJ=1 and isnull(sj,0)=0';
    CurrentBm := '';
  end;
  vChkType := True;
  SelectNode := Node;
  qryZDGL.Close;
  qryZDGL.SQL.Text := sSql;
  qryZDGL.Open;

end;

procedure TFrm_ZDGL.tvZJYYChange(Sender: TObject; Node: TTreeNode);
var
  sSql: string;
  vBm: string;
begin
  if Node = nil then Exit;
  if Node.SelectedIndex <> -1 then
  begin
    vBm := TInfo(TreeArrInfo[Node.SelectedIndex]).ID;
    sSql := 'select * from LCLJ_BYCJYY where MJ=1 and SJ=' + #39 + vBm + #39;
    CurrentBm := vBm;
  end else
  begin
    sSql := 'select * from LCLJ_BYCJYY where MJ=1 and isnull(sj,0)=0';
    CurrentBm := '';
  end;
  vChkType := True;
  SelectNode := Node;
  qryZDGL.Close;
  qryZDGL.SQL.Text := sSql;
  qryZDGL.Open;
end;

end.

