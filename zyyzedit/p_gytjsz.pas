unit p_gytjsz;
                                                                   
interface

uses
    Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
    Dialogs, Grids, DBGrids, StdCtrls, Buttons, Mask, DBCtrls, ExtCtrls, DB, ADODB;

type
    TFrm_gytjsz = class(TForm)
        QryInsert: TADOQuery;
        QryLook: TADOQuery;
        DsInsert: TDataSource;
        Panel1: TPanel;
        Label1: TLabel;
        Label2: TLabel;
        Label3: TLabel;
        DBEdit1: TDBEdit;
        DBEdit2: TDBEdit;
        DBEdit3: TDBEdit;
        Panel2: TPanel;
        b_delete: TBitBtn;
        b_edit: TButton;
        b_add: TButton;
        b_save: TButton;
        b_cancel: TButton;
        BitBtn1: TBitBtn;
        Panel3: TPanel;
        DBGrid1: TDBGrid;
        procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
        procedure DBEdit2Exit(Sender: TObject);
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
    Frm_gytjsz: TFrm_gytjsz;

implementation

uses p_dm, p_func;

{$R *.dfm}

procedure TFrm_gytjsz.FormKeyPress(Sender: TObject; var Key: Char);
begin
    if key = #13 then
        selectnext(activecontrol as Twincontrol, true, true);
end;

procedure TFrm_gytjsz.FormShow(Sender: TObject);
begin
    QryInsert.Close;
    QryInsert.Open;
end;

procedure TFrm_gytjsz.b_addClick(Sender: TObject);
begin
    b_edit.Enabled := False;
    b_save.Enabled := True;
    b_delete.Enabled := False;
    b_cancel.Enabled := True;
    b_Add.Enabled := False;
    QryInsert.Append;
    DBEdit2.SetFocus;
end;

procedure TFrm_gytjsz.b_editClick(Sender: TObject);
begin
    QryInsert.Edit;
    dbedit2.SetFocus;
    b_edit.Enabled := False;
    b_save.Enabled := True;
    b_delete.Enabled := False;
    b_cancel.Enabled := True;
    b_Add.Enabled := False;
end;

procedure TFrm_gytjsz.b_saveClick(Sender: TObject);
begin
    if trim(DBEdit2.Text) = '' then
    begin
        Application.MessageBox('请输入给药途径的名称！', '信息提示', 16);
        DBEdit2.SetFocus;
        Abort;
    end;
    QryInsert.UpdateBatch(Arall);
    b_edit.Enabled := False;
    b_save.Enabled := False;
    b_delete.Enabled := False;
    b_cancel.Enabled := False;
    b_Add.Enabled := True;
end;

procedure TFrm_gytjsz.b_cancelClick(Sender: TObject);
begin
    QryInsert.CancelBatch(Arall);
    b_edit.Enabled := False;
    b_save.Enabled := False;
    b_delete.Enabled := False;
    b_cancel.Enabled := False;
    b_Add.Enabled := True;
end;

procedure TFrm_gytjsz.QryInsertAfterScroll(DataSet: TDataSet);
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

procedure TFrm_gytjsz.b_deleteClick(Sender: TObject);
begin
    if application.MessageBox('真的要删除该给药途径吗？', '提示', 4 + 48) = 6 then
    begin
        Qrylook.Close;
        Qrylook.SQl.Clear;
        Qrylook.SQL.Add('delete from sys_gytj Where id=' + GetID);
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

procedure TFrm_gytjsz.DBEdit2Exit(Sender: TObject);
begin
    if trim(DBEdit2.text) <> '' then
    begin
        qryInsert['pym'] := string(GetPym(trim(DBEdit2.text)));
    end;
end;

procedure TFrm_gytjsz.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #13 then
        if b_save.Enabled then
            b_save.SetFocus;
end;

end.
