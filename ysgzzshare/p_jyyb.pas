unit p_jyyb;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, GridsEh, DBGridEh, ExtCtrls, Menus, cxLookAndFeelPainters,
  StdCtrls, cxButtons;

type
  Tfrm_jyyb = class(TForm)
    Panel2: TPanel;
    geJyyb: TDBGridEh;
    Panel1: TPanel;
    ds_jyyb: TDataSource;
    qry_jyyb: TADOQuery;
    btAdd: TcxButton;
    btDel: TcxButton;
    procedure btAddClick(Sender: TObject);
    procedure btDelClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_jyyb: Tfrm_jyyb;

implementation

{$R *.dfm}

procedure Tfrm_jyyb.btAddClick(Sender: TObject);
begin
  if btAdd.Caption = '增加(&A)' then
  begin
    qry_jyyb.Append;
    btadd.Caption := '保存(&S)';
    btDel.Caption := '放弃(&C)';
    geJyyb.SetFocus;
  end else
  begin
    qry_jyyb.UpdateBatch(arall);
    btadd.Caption := '增加(&A)';
    btDel.Caption := '删除(&D)';
  end;
end;

procedure Tfrm_jyyb.btDelClick(Sender: TObject);
begin
  if btdel.Caption = '删除(&D)' then
  begin
    qry_jyyb.Delete;
    btadd.Caption := '保存(&S)';
    btDel.Caption := '放弃(&C)';
    geJyyb.SetFocus;
  end else
  begin
    qry_jyyb.CancelBatch(arall);
    btadd.Caption := '增加(&A)';
    btDel.Caption := '删除(&D)';
  end;
end;

procedure Tfrm_jyyb.FormShow(Sender: TObject);
begin
  qry_jyyb.Open;
end;

end.
