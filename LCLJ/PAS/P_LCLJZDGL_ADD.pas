unit P_LCLJZDGL_ADD;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, ComCtrls, ADODB;

type
  TFrm_ZDGL_ADD = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    edtBM: TEdit;
    edtMC: TEdit;
    edtPym: TEdit;
    edtSJ: TEdit;
    cbbXZ: TComboBox;
    bvl1: TBevel;
    btnSave: TBitBtn;
    btnCancel: TBitBtn;
    pnlpym: TPanel;
    pnl2: TPanel;
    pnlPropper: TPanel;
    btnCode: TButton;
    chkBase: TCheckBox;
    procedure btnCodeClick(Sender: TObject);
    procedure edtMCChange(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    vZDFL: Integer; //1:变异常见原因 2:路径常见结果
    vChildID: Integer;
    vEditBM: string; //编辑用BM
    vchkAdd: Boolean;
    vchkType: Boolean;
    vShowTree: TTreeView;
    vBMQuery: TADOQuery;
    procedure InitData;
    procedure ShowData;
    procedure SetShowFromBm(vBM: string);
  public
    { Public declarations }
  end;
function ADDZDRecord(ZDFL, ChildID: Integer; EditBm: string; ShowTree: TTreeView; BMQuery: TADOQuery;
  chkAdd: Boolean = True; chkType: Boolean = True): Boolean;
implementation
uses p_dm, P_Public, P_TreeNodeSel, p_func;
{$R *.dfm}

function ADDZDRecord(ZDFL, ChildID: Integer; EditBm: string; ShowTree: TTreeView; BMQuery: TADOQuery;
  chkAdd: Boolean = True; chkType: Boolean = True): Boolean;
var
  Frm_ZDGL_ADD: TFrm_ZDGL_ADD;
begin
  try
    Frm_ZDGL_ADD := TFrm_ZDGL_ADD.Create(Application);
    with Frm_ZDGL_ADD do
    begin
      vZDFL := ZDFL;
      vEditBM := EditBm;
      vChildID := ChildID;
      vchkAdd := chkAdd;
      vchkType := chkType;
      vShowTree := ShowTree;
      vBMQuery := BMQuery;
      ShowData;
      if vZDFL = 1 then
        Caption := '变异常见原因[项目]';
      if vZDFL = 2 then
        Caption := '路径常见结果[项目]';
      if ShowModal = mrOk then
        Result := True;
      Free;
    end;
  except on E: Exception do
    begin
      Application.MessageBox(Pchar('系统错误,错误信息为' + E.Message), '提示', mb_OK);
      Result := False;
    end;
  end;
end;

procedure TFrm_ZDGL_ADD.InitData;
begin
  if vZDFL = 1 then
    edtBM.Text := GetColumnID('LCLJ_BYCJYY', 'BM');
  if vZDFL = 2 then
    edtBM.Text := GetColumnID('LCLJ_LJCJJG', 'BM'); //取得编号

  if pnlPropper.Visible then
  begin
    cbbXZ.ItemIndex := 0;
    if chkBase.Visible then
      chkBase.Checked := False;
  end;
  edtMC.Text := '';
  if (not vchkType) and (vBMQuery.Active) then
  begin
    vBMQuery.Close;
    vBMQuery.Open;
  end;
  edtMC.SetFocus;
end;

procedure TFrm_ZDGL_ADD.btnCancelClick(Sender: TObject);
begin
  if vchkAdd then
    ModalResult := mrOk;
end;

procedure TFrm_ZDGL_ADD.btnCodeClick(Sender: TObject);
var
  sSql, FID: string;
begin
  FID := GetTreeNodeCode(vShowTree);
  if not vchkAdd then //修改时要判断不能把父级节点修改到其子级节点
  begin
    if FID = '' then
      edtSJ.Text := FID
    else
    begin
      if vZDFL = 1 then
        sSql := 'SELECT BM from dbo.LCLJ_BYCJYYSTreeInfo(:P_FID) where BM=:P_CID';
      if vZDFL = 2 then
        sSql := 'SELECT BM from dbo.LCLJ_LJCJJGTreeInfo(:P_FID) where BM=:P_CID';
      with dm_data.Qry_pub do
      begin
        close;
        SQL.Text := sSql;
        Parameters.ParseSQL(SQL.Text, True);
        Parameters.ParamByName('P_FID').Value := edtBM.Text;
        Parameters.ParamByName('P_CID').Value := FID;
        Open;
        if IsEmpty then
          edtSJ.Text := FID
        else
          Application.MessageBox(Pchar('不能把父级节点移动到其子级节点'), '提示', mb_OK);
        Close;
      end;
    end;
  end else
    edtSJ.Text := FID;
end;

procedure TFrm_ZDGL_ADD.btnSaveClick(Sender: TObject);
var
  sSql: string;
  vXZ: Integer;
begin
  try
    if Trim(edtMC.Text) = '' then
    begin
      Application.MessageBox(Pchar('编码名称不能为空不能增加！'), '提示', mb_OK);
      edtMC.SetFocus;
      ModalResult := mrNone;
      Exit;
    end;
    with dm_data.Qry_pub do
    begin
      if Trim(edtSJ.Text) <> '' then  //当多用户时如果增加时其它用户删除了其父项不能增加
      begin
        if vZDFL = 1 then
          sSql := 'Select * from LCLJ_BYCJYY where BM=:P_SJ';
        if vZDFL = 2 then
          sSql := 'Select * from LCLJ_LJCJJG where BM=:P_SJ';
        close;
        SQL.Text := sSql;
        Parameters.ParseSQL(SQL.Text, True);
        Parameters.ParamByName('P_sj').Value := edtSJ.Text;
        Open;
        if IsEmpty then
        begin
          Application.MessageBox(Pchar('其父级项已被删除不能增加，请重选父级项！'), '提示', mb_OK);
          Close;
          btnCode.SetFocus;
          ModalResult := mrNone;
          Exit;
        end;
        close;
      end;
      DM_data.ado_mydata.BeginTrans;
      if vchkAdd then //增加记录
      begin
        if vZDFL = 1 then
          sSql := 'Insert into LCLJ_BYCJYY(BM,MC,pym,sj,mj,xz) Values(:P_BM,:P_MC,:P_Pym,:P_sj,:P_mj,:P_xz)';
        if vZDFL = 2 then
          sSql := 'Insert into LCLJ_LJCJJG(BM,MC,pym,sj,mj,JB,xz) Values(:P_BM,:P_MC,:P_Pym,:P_sj,:P_mj,:P_JB,:P_xz)';

      end else
      begin //更新记录
        if vZDFL = 1 then
          sSql := 'update LCLJ_BYCJYY set MC=:P_MC,pym=:P_pym,sj=:P_SJ,mj=:P_mj,xz=:P_xz where BM=:P_BM';
        if vZDFL = 2 then
          sSql := 'update LCLJ_LJCJJG set MC=:P_MC,pym=:P_pym,sj=:P_sj,mj=:P_mj,JB=:P_JB,xz=:P_XZ where BM=:P_BM';
      end;
      close;
      SQL.Text := sSql;
      Parameters.ParseSQL(SQL.Text, True);
      if vchkAdd then
        Parameters.ParamByName('P_BM').Value := edtBM.Text
      else
        Parameters.ParamByName('P_BM').Value := vEditBM;
      Parameters.ParamByName('P_MC').Size := 400;
      Parameters.ParamByName('P_MC').Value := Trim(edtMC.Text);
      Parameters.ParamByName('P_Pym').Value := edtPym.Text;
      Parameters.ParamByName('P_sj').Value := edtSJ.Text;

      if vchkType then
        Parameters.ParamByName('P_mj').Value := false
      else
        Parameters.ParamByName('P_mj').Value := True;

      if vZDFL = 2 then
      begin
        Parameters.ParamByName('P_JB').Value := chkBase.Checked;
        vXZ := Integer(cbbXZ.Items.Objects[cbbXZ.ItemIndex]);
        Parameters.ParamByName('P_xz').Value := vXZ;
      end;

      if vZDFL = 1 then
      begin
        if vchkType then
        begin
          vXZ := cbbXZ.ItemIndex;
          Parameters.ParamByName('P_xz').Value := vXZ;

        end else
        begin
          if vChildID <> -1 then
          begin
            vXZ := TInfo(TreeArrInfo[vChildID]).Properties;
            Parameters.ParamByName('P_xz').Value := vXZ;
          end
          else
          begin
            vXZ := -1;
            Parameters.ParamByName('P_xz').Value := -1;
          end;
        end;
      end;

      ExecSQL;

    //如果是类更新数据则要对其所用的子节点的性质进行更新
      if (vchkType) and not (vchkAdd) then
      begin
        if vZDFL = 1 then
          sSql := 'update dbo.LCLJ_BYCJYY Set XZ=:P_XZ where BM in(SELECT BM from dbo.LCLJ_BYCJYYSTreeInfo(:P_BM))';
        if vZDFL = 2 then
          sSql := 'update dbo.LCLJ_LJCJJG Set XZ=:P_XZ where BM in(SELECT BM from dbo.LCLJ_LJCJJGTreeInfo(:P_BM))';

        SQL.Text := sSql;
        Parameters.ParseSQL(SQL.Text, True);
        Parameters.ParamByName('P_xz').Value := vXZ;
        Parameters.ParamByName('P_BM').Value := vEditBM;
        ExecSQL;
      end;
    //----------------
      DM_data.ado_mydata.CommitTrans;
      if vchkAdd then
      begin
        ModalResult := mrNone;
        InitData;
      end;
    end;

  except on E: Exception do
    begin
      DM_data.ado_mydata.RollbackTrans;
      Application.MessageBox(Pchar('系统错误,错误信息为' + E.Message), '提示', mb_OK);
    end;
  end;
end;

procedure TFrm_ZDGL_ADD.edtMCChange(Sender: TObject);
begin
  edtPym.Text := GetPym(edtMC.Text);
end;

procedure TFrm_ZDGL_ADD.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if vchkAdd then
    ModalResult := mrOk;
end;

procedure TFrm_ZDGL_ADD.SetShowFromBm(vBM: string);
var
  sSql: string;
  vXZ: Integer;
  vITemIndex: Integer;
begin
  if vZDFL = 1 then
    sSql := 'select * from LCLJ_BYCJYY where BM=' + #39 + vEditBM + #39;
  if vZDFL = 2 then
    sSql := 'select * from LCLJ_LJCJJG where BM=' + #39 + vEditBM + #39;
  with dm_data.Qry_pub do
  begin
    close;
    SQL.Text := sSql;
    Open;
    if not IsEmpty then
    begin
      edtMC.Text := FieldByName('MC').AsString;
      edtPym.Text := FieldByName('pym').AsString;
      edtSJ.Text := FieldByName('SJ').AsString;
      if vZDFL = 2 then
        chkBase.Checked := FieldByName('JB').AsBoolean;

      vXZ := FieldByName('XZ').AsInteger;
      if (vZDFL = 1) and (vXZ <> -1) then
        cbbXZ.ItemIndex := vXZ;
      if (vZDFL = 2) and (vXZ <> -1) then
      begin
        vITemIndex := cbbXZ.Items.IndexOfObject(TObject(vXZ));
        if vITemIndex <> -1 then
          cbbXZ.ItemIndex := vITemIndex;
      end;
    end;
    close;
  end;
end;

procedure TFrm_ZDGL_ADD.ShowData;
var
  sSql, vMC: string;
  vBM: Integer;
begin
  if (not vchkType) and (vZDFL = 1) then
  begin
    pnlPropper.Visible := False;
    Height := 228;
  end;

  if vZDFL = 1 then
  begin
    chkBase.Visible := False;
    //0:未导入原因 1：变异继续的原因 2:变异退出的原因
    if pnlPropper.Visible then
    begin
      cbbXZ.Items.Add('未导入原因');
      cbbXZ.Items.Add('变异继续的原因');
      cbbXZ.Items.Add('变异退出的原因');
      cbbXZ.ItemIndex := 0;
    end;
    if vchkAdd then //如果是增加记录
      edtBM.Text := GetColumnID('LCLJ_BYCJYY', 'BM') //取得编号
    else
      edtBM.Text := vEditBM;
  end;
  if vZDFL = 2 then
  begin
    with dm_data.Qry_pub do
    begin
      close;
      sSql := 'select BM,MC from LCLJ_LJJGXZ';
      sql.Text := sSql;
      Open;
      while not EOF do
      begin
        vBM := FieldByName('BM').AsInteger;
        vMC := FieldByName('MC').AsString;
        cbbXZ.Items.AddObject(vMC, TObject(vBM));
        Next;
      end;
      Close;
      if cbbXZ.Items.Count > 0 then
        cbbXZ.ItemIndex := 0;
      if vchkAdd then //如果是增加记录
        edtBM.Text := GetColumnID('LCLJ_LJCJJG', 'BM') //取得编号
      else
        edtBM.Text := vEditBM;
    end;
  end;
  if vchkAdd then //如果是增加记录
  begin
    if vChildID <> -1 then //取得上级编号
      edtSJ.Text := TInfo(TreeArrInfo[vChildID]).ID
    else
      edtSJ.Text := '';
  end else
    SetShowFromBm(vEditBM); //编辑数据则设置值
end;
end.

