unit p_ypyfsz;

interface                    

uses
    Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
    Dialogs, Grids, DBGrids, ExtCtrls, DB, ADODB, StdCtrls, Buttons, Mask, DBCtrls,
    cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit,
    cxDBEdit, cxGraphics;

type
    TFrm_ypyfsz = class(TForm)
        QryInsert: TADOQuery;
        DsInsert: TDataSource;
        Panel1: TPanel;
        Panel2: TPanel;
        Panel3: TPanel;
        DBGrid1: TDBGrid;
        b_delete: TBitBtn;
        b_edit: TButton;
        b_add: TButton;
        b_save: TButton;
        b_cancel: TButton;
        BitBtn1: TBitBtn;
        Label1: TLabel;
        DBEdit1: TDBEdit;
        Label2: TLabel;
        DBEdit2: TDBEdit;
        Label3: TLabel;
        DBEdit3: TDBEdit;
        QryLook: TADOQuery;
        Label4: TLabel;
        cxDBComboBox1: TcxDBComboBox;
        procedure DBEdit3KeyPress(Sender: TObject; var Key: Char);
        procedure b_deleteClick(Sender: TObject);
        procedure QryInsertAfterScroll(DataSet: TDataSet);
        procedure b_cancelClick(Sender: TObject);
        procedure b_saveClick(Sender: TObject);
        procedure b_editClick(Sender: TObject);
        procedure b_addClick(Sender: TObject);
        procedure FormShow(Sender: TObject);
        procedure FormKeyPress(Sender: TObject; var Key: Char);
    private
    { Private declarations }
    public
        GetID: string;
    { Public declarations }
    end;

var
    Frm_ypyfsz: TFrm_ypyfsz;

implementation

uses p_dm, p_func;

{$R *.dfm}

procedure TFrm_ypyfsz.FormKeyPress(Sender: TObject; var Key: Char);
begin
    if key = #13 then
        selectnext(activecontrol as Twincontrol, true, true);
end;

procedure TFrm_ypyfsz.FormShow(Sender: TObject);
begin
    QryInsert.Close;
    QryInsert.Open;
end;

procedure TFrm_ypyfsz.b_addClick(Sender: TObject);
begin
    b_edit.Enabled := False;
    b_save.Enabled := True;
    b_delete.Enabled := False;
    b_cancel.Enabled := True;
    b_Add.Enabled := False;
    QryInsert.Append;
    DBEdit2.SetFocus;

end;

procedure TFrm_ypyfsz.b_editClick(Sender: TObject);
begin
    QryInsert.Edit;
    dbedit2.SetFocus;
    b_edit.Enabled := False;
    b_save.Enabled := True;
    b_delete.Enabled := False;
    b_cancel.Enabled := True;
    b_Add.Enabled := False;
end;

procedure TFrm_ypyfsz.b_saveClick(Sender: TObject);
begin
    if trim(DBEdit2.Text) = '' then
    begin
        Application.MessageBox('请输入药品用法的名称！', '信息提示', 16);
        DBEdit2.SetFocus;
        Abort;
    end;
    if trim(DBEdit3.Text) = '' then
    begin
        Application.MessageBox('请输入药品用法的次数！', '信息提示', 16);
        DBEdit3.SetFocus;
        Abort;
    end;
    QryInsert.UpdateBatch(Arall);
    b_edit.Enabled := False;
    b_save.Enabled := False;
    b_delete.Enabled := False;
    b_cancel.Enabled := False;
    b_Add.Enabled := True;
end;

procedure TFrm_ypyfsz.b_cancelClick(Sender: TObject);
begin
    QryInsert.CancelBatch(Arall);
    b_edit.Enabled := False;
    b_save.Enabled := False;
    b_delete.Enabled := False;
    b_cancel.Enabled := False;
    b_Add.Enabled := True;
end;

procedure TFrm_ypyfsz.QryInsertAfterScroll(DataSet: TDataSet);
begin
    GetID := QryInsert.FieldByName('ID').AsString;
    if GetID <> '' then
    begin
        b_edit.Enabled := True;
        b_delete.Enabled := True;
    end
    else
    begin
        b_edit.Enabled := False;
        b_delete.Enabled := False;
    end;
end;

procedure TFrm_ypyfsz.b_deleteClick(Sender: TObject);
begin
    if application.MessageBox('真的要删除该药品用法吗？', '提示', 4 + 48) = 6 then
    begin
        Qrylook.Close;
        Qrylook.SQl.Clear;
        Qrylook.SQL.Add('delete from sys_ypyf Where id=' + GetID);
        Qrylook.ExecSQL;
        QryInsert.Close;
        QryInsert.Open;
    end;
    b_edit.Enabled := False;
    b_save.Enabled := False;
    b_delete.Enabled := False;
    b_cancel.Enabled := False;
    b_Add.Enabled := True;

end;

procedure TFrm_ypyfsz.DBEdit3KeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #13 then
        if b_save.Enabled then
            b_save.SetFocus;
end;

end.
