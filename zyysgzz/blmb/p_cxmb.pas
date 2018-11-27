unit p_cxmb;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Grids, DBGrids, StdCtrls, Buttons, Mask, DBCtrls, ExtCtrls,
  ComCtrls, ADODB;

type
  TFrm_cxmb = class(TForm)
    Panel1: TPanel;
    b_close: TBitBtn;
    Edit1: TEdit;
    Label1: TLabel;
    b_cx: TBitBtn;
    DS_cxmb: TDataSource;
    b_ok: TBitBtn;
    DBGridmbmx: TDBGrid;
    qry_cxmb: TADOQuery;
    qry_ksdm: TADOQuery;
    qry_cxmbdm: TStringField;
    qry_cxmbmbdm: TAutoIncField;
    qry_cxmbmbmc: TStringField;
    qry_cxmbmbsx: TStringField;
    qry_cxmbmzksgs: TStringField;
    qry_cxmbzyksgs: TStringField;
    qry_cxmbmbczy: TStringField;
    qry_cxmbwjmc: TStringField;
    qry_cxmbmbwj: TBlobField;
    qry_cxmbksmc: TStringField;
    treeviewzp: TTreeView;
    Splitter1: TSplitter;
    procedure DBGridmbmxKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure b_closeClick(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure b_cxClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure b_okClick(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure SP_ypAfterClose(DataSet: TDataSet);
    procedure treeviewzpChange(Sender: TObject; Node: TTreeNode);
    procedure qry_cxmbAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_cxmb: TFrm_cxmb;

implementation

uses p_blmb, p_dm, p_func;

{$R *.DFM}

procedure TFrm_cxmb.b_closeClick(Sender: TObject);
begin
  close;
end;

procedure TFrm_cxmb.Edit1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = 13 then
    b_cx.Click;
end;

procedure TFrm_cxmb.DBGrid1DblClick(Sender: TObject);
begin
  b_ok.Click;
end;

procedure TFrm_cxmb.b_cxClick(Sender: TObject);
begin
  qry_cxmb.close;
  qry_cxmb.Parameters.ParamByName('mbmc').value := trim(edit1.text) + '%';
  qry_cxmb.Parameters.ParamByName('pym').value := trim(edit1.text) + '%';
  qry_cxmb.Parameters.ParamByName('dldm').value := '%';
  edit1.TEXT := '';
  qry_cxmb.open;
  if qry_cxmb.RecordCount <> 0 then
  begin
    DBGridmbmx.Enabled := true;
    b_ok.Enabled := true;
    DBGridmbmx.SetFocus;
  end
  else
  begin
    qry_cxmb.close;
    application.MessageBox('没有满足条件的知识库模板！', '提示', 16);
    DBGridmbmx.Enabled := false;
    edit1.Clear;
    edit1.SetFocus;
  end;
end;

procedure TFrm_cxmb.FormShow(Sender: TObject);
var
  sqlstr: string;
const
  zp = '2332';
  zplbdm = 'dm';
  zplbmc = 'mc';
  zptable = 'sys_dzbl_mbfl';
  zptableorder = 'dm';
begin
  if pub_cxmblb = '2' then
    sqlstr := 'select * from sys_dzbl_mbfl where substring(dm,1,2)=12 order by dm '
  else
    sqlstr := 'select * from sys_dzbl_mbfl where substring(dm,1,2)<=12 order by dm ';
  frm_func.Tree_db_create(treeviewzp, zptable, zptableorder, zplbdm, zplbmc, zp, sqlstr);
  edit1.SetFocus;
end;

procedure TFrm_cxmb.qry_cxmbAfterScroll(DataSet: TDataSet);
begin
  if qry_cxmb.RecordCount > 0 then
    b_ok.Enabled := true;
end;

procedure TFrm_cxmb.b_okClick(Sender: TObject);
begin
  frm_blmb.mbdm := qry_cxmb['mbdm'];
  frm_blmb.dldm := trim(qry_cxmb['dm']);
  pub_cxmbmc := trim(qry_cxmb['mbmc']);
  close;
end;

procedure TFrm_cxmb.Edit1Change(Sender: TObject);
begin
  qry_cxmb.close;
end;

procedure TFrm_cxmb.SP_ypAfterClose(DataSet: TDataSet);
begin
  b_ok.Enabled := false;
end;

procedure TFrm_cxmb.treeviewzpChange(Sender: TObject; Node: TTreeNode);
var
  key, dldm: string;
begin
  if treeviewzp.selected <> nil then
  begin
    if treeviewzp.selected.text <> '' then
    begin
      key := trim(treeviewzp.selected.text);
      key := copy(key, 1, pos('_', key) - 1);
      dldm := key;
      key := copy(key, 1, 2);
      qry_cxmb.close;
      qry_cxmb.Parameters.ParamByName('dldm').value := dldm + '%';
      qry_cxmb.Parameters.ParamByName('mbmc').value := '%';
      qry_cxmb.Parameters.ParamByName('pym').value := '%';
      qry_cxmb.open;
    end;
  end;
end;

procedure TFrm_cxmb.DBGridmbmxKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 13 then DBGridmbmx.OnDblClick(self);
  if key = 27 then edit1.SetFocus;
end;

end.
