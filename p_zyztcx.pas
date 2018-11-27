unit p_zyztcx;

interface
                                                 
uses
    Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
    Dialogs, DB, ADODB, ComCtrls, Grids, DBGrids, ExtCtrls, StdCtrls, Buttons,
    DBGridEh, GridsEh;

type
    TFrm_zyztcx = class(TForm)
        Panel1: TPanel;
        DBGrid1: TDBGrid;
        TreeView1: TTreeView;
        Qry_look: TADOQuery;
        Qry_zt: TADOQuery;
        DS_zt: TDataSource;
        Panel2: TPanel;
        Splitter1: TSplitter;
        Qry_ztmx: TADOQuery;
        ds_ztmx: TDataSource;
        Panel3: TPanel;
        BitBtn2: TBitBtn;
        BitBtn3: TBitBtn;
        BitBtn4: TBitBtn;
        BitBtn5: TBitBtn;
        DBGridEh1: TDBGridEh;
        SP_zydm: TADOStoredProc;
        procedure DS_ztDataChange(Sender: TObject; Field: TField);
        procedure BitBtn4Click(Sender: TObject);
        procedure BitBtn5Click(Sender: TObject);
        procedure BitBtn2Click(Sender: TObject);
        procedure Qry_ztAfterScroll(DataSet: TDataSet);
        procedure b_adddlClick(Sender: TObject);
        procedure TreeView1Change(Sender: TObject; Node: TTreeNode);
        procedure FormShow(Sender: TObject);
    private
    { Private declarations }
    public
        myztid: Integer;
    { Public declarations }
    end;

var
    Frm_zyztcx: TFrm_zyztcx;

implementation

uses p_yzzdsz, p_dm, p_func;

{$R *.dfm}

procedure TFrm_zyztcx.FormShow(Sender: TObject);
begin
    Qry_zt.close;
    Qry_zt.SQL.Clear;
    Qry_zt.SQl.Add('Select * from zybl_ztdm Where ksdm is NULL And ysdm is NULL And bqdm=''' + pub_bqdm + '''');
    Qry_zt.SQl.Add(' order by ztID');
    Qry_zt.open;
end;

procedure TFrm_zyztcx.TreeView1Change(Sender: TObject; Node: TTreeNode);
var
    Vardm: string;
begin
    if TreeView1.selected <> nil then begin
        if TreeView1.selected.text <> '' then
        begin
            Qry_zt.close;
            Qry_zt.SQL.Clear;
            if TreeView1.selected.Index = 0 then
            begin
                Qry_zt.SQl.Add('Select * from zybl_ztdm Where  bqdm=''' + pub_bqdm + ''''); //ksdm is NULL And ysdm is NULL And
            end
            else if TreeView1.selected.Index = 1 then
            begin
                Qry_zt.SQl.Add('Select * from zybl_ztdm Where ksdm=''' + pub_ksdm + ''''); // bqdm is NULL And ysdm is NULL And
            end
            else if TreeView1.selected.Index = 2 then
            begin
                Qry_zt.SQl.Add('Select * from zybl_ztdm Where ysdm=''' + pub_czydm + ''''); // ksdm is NULL And bqdm is NULL And
            end;
            Qry_zt.SQl.Add(' And czy=''' + pub_czydm + '''');
            Qry_zt.SQl.Add(' order by ztID');
            Qry_zt.Open;
            BitBtn5.Enabled := not Qry_zt.IsEmpty;
            BitBtn4.Enabled := not Qry_zt.IsEmpty;
            Qry_ztmx.Active := not Qry_zt.IsEmpty;
        end;
    end;
end;

procedure TFrm_zyztcx.b_adddlClick(Sender: TObject);
begin
    application.CreateForm(Tfrm_yzzdsz, frm_yzzdsz);
    try
        frm_yzzdsz.ShowModal;
    finally
        frm_yzzdsz.free;
    end;
end;

procedure TFrm_zyztcx.Qry_ztAfterScroll(DataSet: TDataSet);
begin
    myztid := Qry_zt.FieldByName('ztid').AsInteger;
{
IF myztid>1 Then
   Begin
    BitBtn5.Enabled :=True;
    BitBtn4.Enabled :=True;
   end
Else
   Begin
    BitBtn5.Enabled :=False;
    BitBtn4.Enabled :=False;
   end;
   }
    if Qry_zt.IsEmpty then
        Qry_ztmx.close
    else
    begin
        Qry_ztmx.close;
        Qry_ztmx.Parameters.ParamByName('varid1').Value := myztid;
        Qry_ztmx.Parameters.ParamByName('varid2').Value := myztid;
        Qry_ztmx.open;
    end;

end;

procedure TFrm_zyztcx.BitBtn2Click(Sender: TObject);
begin
    application.CreateForm(Tfrm_yzzdsz, frm_yzzdsz);
    try
        MyEditID := '';
        frm_yzzdsz.ShowModal;
    finally
        frm_yzzdsz.free;
    end;
    qry_zt.Close;
    qry_zt.Open;
end;

procedure TFrm_zyztcx.BitBtn5Click(Sender: TObject);
begin
    application.CreateForm(Tfrm_yzzdsz, frm_yzzdsz);
    try
        MyEditID := inttostr(myztid);
        frm_yzzdsz.ShowModal;
    finally
        frm_yzzdsz.free;
    end;
end;

procedure TFrm_zyztcx.BitBtn4Click(Sender: TObject);
begin
    if application.MessageBox('真的要删除该主导及的医嘱项目明细吗?', '信息提示', 4 + 32) = 6 then
    begin
        SP_zydm.close;
        SP_zydm.Parameters.ParamByName('@ztID').value := myztid;
        SP_zydm.Parameters.ParamByName('@sc_cg').value := 0;
        SP_zydm.ExecProc;
        if SP_zydm.Parameters.ParamByName('@sc_cg').value = 2 then
        begin
            application.MessageBox('删除失败！', '提示', 0 + 16);
        end
        else if SP_zydm.Parameters.ParamByName('@sc_cg').value = 1 then
        begin
            application.MessageBox('删除成功！', '提示', 0 + 48);
            myztid := 0;
            BitBtn4.Enabled := False;
            Qry_zt.close;
            Qry_zt.Open;
        end;

    end;
end;

procedure TFrm_zyztcx.DS_ztDataChange(Sender: TObject; Field: TField);
begin
    myztid := Qry_zt.FieldByName('ztid').AsInteger;
end;

end.
