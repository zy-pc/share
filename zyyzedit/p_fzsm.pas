unit p_fzsm;                                             

interface

uses
    Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
    Dialogs, StdCtrls, cxControls, cxContainer, cxEdit, cxTextEdit, cxMemo,
    cxDBEdit, DB, ADODB;

type
    Tfrm_fzsm = class(TForm)
        GroupBox1: TGroupBox;
        Button1: TButton;
        Button2: TButton;
        cxDBMemo1: TcxDBMemo;
        ds_fzsm: TDataSource;
        qry_fzsm: TADOQuery;
        Label1: TLabel;
        procedure cxDBMemo1DblClick(Sender: TObject);
        procedure Button1Click(Sender: TObject);
        procedure FormShow(Sender: TObject);
        procedure FormKeyPress(Sender: TObject; var Key: Char);
        procedure Button2Click(Sender: TObject);
    private
    { Private declarations }
    public
        yzph: string;
        fzhm: integer;
    { Public declarations }
    end;

var
    frm_fzsm: Tfrm_fzsm;

implementation

{$R *.dfm}
uses p_dm, P_TreeView_ctxz;

procedure Tfrm_fzsm.Button2Click(Sender: TObject);
begin
    qry_fzsm.Cancel;
    close;
end;

procedure Tfrm_fzsm.FormKeyPress(Sender: TObject; var Key: Char);
begin
    if key = #13 then
        selectnext(activecontrol, true, true);
end;

procedure Tfrm_fzsm.FormShow(Sender: TObject);
begin
    qry_fzsm.Close;
    qry_fzsm.SQL.Clear;
    qry_fzsm.SQL.Text := 'select * from zybl_zyyz_syfzsm where ph=' + #39 + yzph + #39 + ' and fzhm=' + inttostr(fzhm);
    qry_fzsm.Open;
    if qry_fzsm.FieldByName('zxbz').AsBoolean then
    begin
        label1.Caption := '注:该明细分组已经执行,不能进行修改!';
        label1.Font.Color := clred;
        button1.Enabled := false;
    end;
    if qry_fzsm.RecordCount > 0 then
    begin
        qry_fzsm.Edit;
    end
    else begin
        qry_fzsm.Append;
        qry_fzsm.FieldValues['ph'] := yzph; //写入执行批号
        qry_fzsm.FieldValues['fzhm'] := fzhm; //写入分组号码
        qry_fzsm.FieldValues['zxbz'] := 0; // 写入未执行标志
    end;
    cxDBMemo1.SetFocus;
end;

procedure Tfrm_fzsm.Button1Click(Sender: TObject);
begin
//if qry_fzsm.Modified then
    qry_fzsm.Edit;
    qry_fzsm.UpdateBatch(arAll);
    close;
end;

procedure Tfrm_fzsm.cxDBMemo1DblClick(Sender: TObject);
begin
    application.CreateForm(Tfrm_treeview_ctxz, frm_treeview_ctxz);
    try
        frm_treeview_ctxz.ShowModal;
    except
        frm_treeview_ctxz.Free;
    end;
    if frm_treeview_ctxz.pub_selectword <> '' then
    begin
        qry_fzsm.Edit;
        if qry_fzsm.FieldByName('fzsm').AsString = '' then
            qry_fzsm.FieldByName('fzsm').AsString := frm_treeview_ctxz.pub_selectword
        else
            qry_fzsm.FieldByName('fzsm').AsString := qry_fzsm.FieldByName('fzsm').AsString + '、' + frm_treeview_ctxz.pub_selectword;
    end;
    frm_treeview_ctxz.Free;
end;

end.
