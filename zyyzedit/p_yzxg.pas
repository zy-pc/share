unit p_yzxg;
                                   
interface

uses
    Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
    Dialogs, ExtCtrls, StdCtrls, DB, ADODB, Mask, DBCtrls, cxControls,
    cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
    cxDBEdit;

type
    Tfrm_yzxg = class(TForm)
        Panel1: TPanel;
        Panel2: TPanel;
        GroupBox1: TGroupBox;
        Label1: TLabel;
        Label2: TLabel;
        ds_ypyf: TDataSource;
        qry_ypyf: TADOQuery;
        ds_gytj: TDataSource;
        qry_gytj: TADOQuery;
        qry_yldw: TADOQuery;
        ds_yldw: TDataSource;
        DBEdit1: TDBEdit;
        DBEdit2: TDBEdit;
        Label3: TLabel;
        Label4: TLabel;
        DBLookupComboBox1: TDBLookupComboBox;
        Label5: TLabel;
        DBEdit4: TDBEdit;
        Label6: TLabel;
        Label7: TLabel;
        DBLookupComboBox2: TDBLookupComboBox;
        DBLookupComboBox3: TDBLookupComboBox;
        ds_yz: TDataSource;
        qry_yz: TADOQuery;
        DBLookupComboBox4: TDBLookupComboBox;
        cb_cancel: TButton;
        cb_save: TButton;
        GroupBox2: TGroupBox;
        Label8: TLabel;
        DBEdit3: TDBEdit;
        Label9: TLabel;
        Label10: TLabel;
        Label11: TLabel;
        DBEdit5: TDBEdit;
        Label12: TLabel;
        Label13: TLabel;
        Label14: TLabel;
        DBMemo1: TDBMemo;
        DBMemo2: TDBMemo;
        DBLookupComboBox6: TDBLookupComboBox;
        DBLookupComboBox5: TDBLookupComboBox;
        DBEdit6: TDBEdit;
        Label15: TLabel;
        DBEdit7: TDBEdit;
        ds_ks: TDataSource;
        qry_ks: TADOQuery;
        qry_pub: TADOQuery;
        bt_tz: TButton;
        bt_zf: TButton;
        qry_in_zyyz: TADOQuery;
        qry_czjl: TADOQuery;
        procedure bt_zfClick(Sender: TObject);
        procedure bt_tzClick(Sender: TObject);
        procedure cb_cancelClick(Sender: TObject);
        procedure cb_saveClick(Sender: TObject);
        procedure FormShow(Sender: TObject);
        procedure FormKeyPress(Sender: TObject; var Key: Char);
    private
    { Private declarations }
    public
        id: integer;
        lb: string;
    { Public declarations }
    end;

var
    frm_yzxg: Tfrm_yzxg;

implementation

{$R *.dfm}
uses p_dm, p_func;

procedure Tfrm_yzxg.FormKeyPress(Sender: TObject; var Key: Char);
begin
    if key = #13 then
        selectnext(activecontrol, true, true);
end;

procedure Tfrm_yzxg.FormShow(Sender: TObject);
begin
    qry_yz.Close;
    qry_yz.SQL.Clear;
    qry_yz.SQL.Text := 'select * from zybl_zyyz where id=:cxid';
    qry_yz.Parameters.ParamValues['cxid'] := id;
    qry_yz.Open;
    qry_yldw.Open;
    qry_ypyf.Open;
    qry_gytj.Open;
    qry_ks.Open;
    if lb = '药品' then
    begin
        groupbox1.Visible := true;
        groupbox2.Visible := false;
    end else begin
        groupbox1.Visible := false;
        groupbox2.Visible := true;
    end;
    if qry_yz.FieldByName('tzbz').AsBoolean then
        bt_tz.Caption := '执行(&Z)'
    else
        bt_tz.Caption := '停止(&T)';
end;

procedure Tfrm_yzxg.cb_saveClick(Sender: TObject);
begin
    qry_pub.Close;
    qry_pub.SQL.Clear;
    qry_pub.SQL.Text := 'insert into zybl_zyyz_czjl values(' + #39 + pub_czydm + #39 + ',' + #39 + pub_czyxm
        + #39 + ',' + #39 + '修改医嘱' + #39 + ',getdate(),' + #39 + '修改医嘱ID:' + inttostr(id) + #39 + ')';
//showmessage(qry_pub.SQL.Text);
    dm_data.ado_mydata.BeginTrans;
    try
        qry_yz.UpdateBatch(arall);
        if qry_yz.Modified then
            qry_pub.ExecSQL;
        dm_data.ado_mydata.CommitTrans;
        close;
    except
        dm_data.ado_mydata.RollbackTrans;
        application.MessageBox('医嘱修改数据保存失败!', '提示信息', 0 + 16);
    end;
end;

procedure Tfrm_yzxg.cb_cancelClick(Sender: TObject);
begin
    qry_yz.Cancel;
    close;
end;

procedure Tfrm_yzxg.bt_tzClick(Sender: TObject);
begin
    if qry_yz.FieldByName('zfbz').AsVariant then
    begin
        application.MessageBox('该医嘱已经作废,不能再进行提交!', '提示信息', 0 + 48);
        abort;
    end;
    if qry_yz.FieldByName('kdys').AsString <> pub_czydm then
    begin
        application.MessageBox('该医嘱非当前操作员录入,不能进行提交!', '提示信息', 0 + 48);
        abort;
    end;
    if bt_tz.Caption = '停止(&T)' then
    begin
        qry_in_zyyz.Close;
        qry_in_zyyz.SQL.Clear;
        qry_in_zyyz.SQL.Text := 'update zybl_zyyz set zxbz=0,tzbz=1 , tzrq=' +
            #39 + trim(DateTimeTostr(frm_func.curr_date)) + #39 +
            ' ,tzry=' + #39 + pub_czydm + #39 +
            ' where id=' + inttostr(qry_yz.FieldByName('id').AsInteger);

        //记录操作
        qry_czjl.Close;
        qry_czjl.SQL.Clear;
        qry_czjl.SQL.Text := 'insert into zybl_zyyz_czjl values(' + #39 + pub_czydm + #39 + ',' + #39 + pub_czyxm
            + #39 + ',' + #39 + '停止医嘱' + #39 + ',getdate(),' + #39 + '停止医嘱ID:' + inttostr(qry_yz.FieldByName('id').AsInteger) + #39 + ')';

        dm_data.ado_mydata.BeginTrans;
        try
            qry_in_zyyz.ExecSQL;
            qry_czjl.ExecSQL;
            dm_data.ado_mydata.CommitTrans;
        except
            dm_data.ado_mydata.RollbackTrans;
            application.MessageBox('该医嘱停止操作失败!', '提示信息', 0 + 16);
        end;
    end else
    begin
        qry_in_zyyz.Close;
        qry_in_zyyz.SQL.Clear;
        qry_in_zyyz.SQL.Text := 'update zybl_zyyz set zxbz=1,tzbz=0, zxrq=' +
            #39 + trim(DateTimeTostr(frm_func.curr_date)) + #39 +
            ' ,zxry=' + #39 + pub_czydm + #39 +
            ' where id=' + inttostr(qry_yz.FieldByName('id').AsInteger);

        //记录操作
        qry_czjl.Close;
        qry_czjl.SQL.Clear;
        qry_czjl.SQL.Text := 'insert into zybl_zyyz_czjl values(' + #39 + pub_czydm + #39 + ',' + #39 + pub_czyxm
            + #39 + ',' + #39 + '执行医嘱' + #39 + ',getdate(),' + #39 + '执行医嘱ID:' + inttostr(qry_yz.FieldByName('id').AsInteger) + #39 + ')';

        dm_data.ado_mydata.BeginTrans;
        try
            qry_in_zyyz.ExecSQL;
            qry_czjl.ExecSQL;
            dm_data.ado_mydata.CommitTrans;
        except
            dm_data.ado_mydata.RollbackTrans;
            application.MessageBox('该执行医嘱操作失败!', '提示信息', 0 + 16);
        end;
    end;
end;

procedure Tfrm_yzxg.bt_zfClick(Sender: TObject);
begin
    if not qry_yz.FieldByName('zxbz').AsBoolean and not qry_yz.FieldByName('tzbz').AsBoolean then abort;
    if qry_yz.FieldByName('zfbz').AsVariant then abort;
    if qry_yz.FieldByName('kdys').AsString <> pub_czydm then
    begin
        application.MessageBox('该医嘱非当前操作员录入,不能进行作废操作!', '提示信息', 0 + 48);
        abort;
    end;
    if application.MessageBox('医嘱作废后不能再使用,是否作废当前医嘱?', '提示信息', mb_iconquestion + mb_okcancel + mb_defbutton1) = idcancel then
        abort;
    qry_in_zyyz.Close;
    qry_in_zyyz.SQL.Clear;
    qry_in_zyyz.SQL.Text := 'update zybl_zyyz set zfbz=1 ,zfrq=' +
        #39 + trim(DateTimeTostr(frm_func.curr_date)) + #39 +
        ' ,zfry=' + #39 + pub_czydm + #39 +
        ' where id=' + inttostr(qry_yz.FieldByName('id').AsInteger);
    qry_pub.Close;
    qry_pub.SQL.Clear;
    if qry_yz.FieldByName('lb').AsString = '药品' then
        qry_pub.SQL.Text := 'delete from zybl_zyyz_ypmx where xh=:cxyzid'
    else
        qry_pub.SQL.Text := 'delete from zybl_zyyz_fymx where yzid=:cxyzid';
    qry_pub.Parameters.ParamValues['cxyzid'] := qry_yz.FieldByName('id').AsInteger;

//记录操作
    qry_czjl.Close;
    qry_czjl.SQL.Clear;
    qry_czjl.SQL.Text := 'insert into zybl_zyyz_czjl values(' + #39 + pub_czydm + #39 + ',' + #39 + pub_czyxm
        + #39 + ',' + #39 + '作废医嘱' + #39 + ',getdate(),' + #39 + '作废医嘱ID:' + inttostr(qry_yz.FieldByName('id').AsInteger) + #39 + ')';
    dm_data.ado_mydata.BeginTrans;
    try
        qry_in_zyyz.ExecSQL;
        qry_pub.ExecSQL;
        qry_czjl.ExecSQL;
        dm_data.ado_mydata.CommitTrans;
    except
        dm_data.ado_mydata.RollbackTrans;
        application.MessageBox('该医嘱作废操作失败!', '提示信息', 0 + 16);
    end;
end;

end.
