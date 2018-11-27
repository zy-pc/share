unit p_lsyzqxfs;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ADODB, GridsEh, DBGridEh, ExtCtrls;

type
  TFrm_lsyzqxfs = class(TForm)
    grp1: TGroupBox;
    lbl1: TLabel;
    lbl2: TLabel;
    edt_name: TEdit;
    DBGridEh1: TDBGridEh;
    qry_lszyqxfs: TADOQuery;
    ds_lsyzqxfs: TDataSource;
    edt_id: TEdit;
    btn_update: TButton;
    btn_del: TButton;
    pnl1: TPanel;
    btn_add: TButton;
    qry_up: TADOQuery;
    procedure FormShow(Sender: TObject);
    procedure DBGridEh1CellClick(Column: TColumnEh);
    procedure btn_updateClick(Sender: TObject);
    procedure btn_delClick(Sender: TObject);
    procedure btn_addClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_lsyzqxfs: TFrm_lsyzqxfs;

implementation

uses
  p_dm;

{$R *.dfm}

procedure TFrm_lsyzqxfs.btn_addClick(Sender: TObject);
begin
  if Trim(edt_name.Text)='' then
    ShowMessage('请输入临时医嘱取消方式名称')
  else
  begin
    qry_up.Close;
    qry_up.SQL.Text :=  'insert into zyyz_lsyzqxfs (name) values '+
                '('+#39+edt_name.Text+#39+')';
    qry_up.ExecSQL;
    ShowMessage('新增数据成功');
    edt_id.Text := '';
    edt_name.Text := '';
    //从新加载临时医嘱取消方式的数据。
    qry_lszyqxfs.Close;
    qry_lszyqxfs.Open;
  end;
end;

procedure TFrm_lsyzqxfs.btn_delClick(Sender: TObject);
begin
   if Application.MessageBox('确定要删除这条临时医嘱取消方式数据','询问',
      MB_OKCANCEL + MB_ICONQUESTION) = IDOK  then
  begin
    //删除数据
    qry_up.Close;
    qry_up.SQL.Text := 'delete from zyyz_lsyzqxfs where ID = '
          + Trim(edt_id.Text);
    qry_up.ExecSQL;
    ShowMessage('删除成功');
    edt_id.Text := '';
    edt_name.Text := '';
    btn_update.Enabled := False;
    btn_del.Enabled := False;
    btn_add.Enabled := True;
    //从新加载临时医嘱取消方式的数据。
    qry_lszyqxfs.Close;
    qry_lszyqxfs.Open;
  end;
end;

procedure TFrm_lsyzqxfs.btn_updateClick(Sender: TObject);
begin
  if Application.MessageBox('确定要修改这条临时医嘱取消方式数据','询问',
      MB_OKCANCEL + MB_ICONQUESTION) = IDOK  then
  begin
    qry_up.Close;
    qry_up.SQL.Text := 'update zyyz_lsyzqxfs set name = '
              +#39+edt_name.Text+#39+' where ID = ' + edt_id.Text;
    qry_up.ExecSQL;
    ShowMessage('修改成功');
    edt_id.Text := '';
    edt_name.Text := '';
    btn_update.Enabled := False;
    btn_del.Enabled := False;
    btn_add.Enabled := True;
    //从新加载临时医嘱取消方式的数据。
    qry_lszyqxfs.Close;
    qry_lszyqxfs.Open;
  end;

end;

procedure TFrm_lsyzqxfs.DBGridEh1CellClick(Column: TColumnEh);
begin
  edt_id.Text:= qry_lszyqxfs.FieldByName('ID').AsString;
  edt_name.text:= qry_lszyqxfs.FieldByName('name').AsString;
  edt_id.ReadOnly := True;
  btn_update.Enabled := True;
  btn_del.Enabled := True;
  btn_add.Enabled := False;
end;

procedure TFrm_lsyzqxfs.FormShow(Sender: TObject);
begin
  //初始化数据
  qry_lszyqxfs.Close;
  qry_lszyqxfs.Open;
end;

end.
