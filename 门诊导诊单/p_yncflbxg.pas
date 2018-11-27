unit p_yncflbxg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, ADODB, Menus, cxLookAndFeelPainters, StdCtrls, cxButtons, cxLabel,
  cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxDBEdit;

type
  Tfrm_yncflbxg = class(TForm)
    Panel1: TPanel;
    qry_yz: TADOQuery;
    ds_yz: TDataSource;
    qry_cx: TADOQuery;
    ds_cx: TDataSource;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    GridTableViewStyleSheetDevExpress: TcxGridTableViewStyleSheet;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxStyle5: TcxStyle;
    cxStyle6: TcxStyle;
    cxStyle7: TcxStyle;
    cxStyle8: TcxStyle;
    cxStyle9: TcxStyle;
    cxStyle10: TcxStyle;
    cxStyle11: TcxStyle;
    cxStyle12: TcxStyle;
    cxStyle13: TcxStyle;
    cxStyle14: TcxStyle;
    cxStyle15: TcxStyle;
    qry_yzcfbh: TStringField;
    qry_yzyncflb: TStringField;
    qry_yzyzsx: TStringField;
    qry_yzyzbz: TStringField;
    cxButton1: TcxButton;
    Label1: TLabel;
    box_bdcf: TcxComboBox;
    procedure box_bdcfPropertiesChange(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    mz_zyh, prv_xzhm: string;
    v_fs: Integer;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_yncflbxg: Tfrm_yncflbxg;
function proc_se_bdcflb(v_zyh: string; fs: Integer): Boolean;
function proc_csh(): Boolean;
implementation
uses p_func, p_dm;
{$R *.dfm}

function proc_csh: Boolean;
begin
  Result := False;
  frm_yncflbxg.qry_yz.Close;
  frm_yncflbxg.qry_yz.Parameters.ParamByName('zyh').Value := frm_yncflbxg.mz_zyh;
  frm_yncflbxg.qry_yz.Parameters.ParamByName('kdys').Value := pub_czydm;
  frm_yncflbxg.qry_yz.Parameters.ParamByName('fs').Value := frm_yncflbxg.v_fs;
  frm_yncflbxg.qry_yz.Open;
  frm_yncflbxg.qry_cx.Close;
  frm_yncflbxg.qry_cx.Open;
  if frm_yncflbxg.qry_cx.RecordCount > 0 then
  begin
    frm_yncflbxg.qry_cx.First;
    frm_yncflbxg.box_bdcf.Clear;
    while not frm_yncflbxg.qry_cx.Eof do
    begin
      frm_yncflbxg.box_bdcf.Properties.Items.Add(frm_yncflbxg.qry_cx.FieldByName('lbdm').AsString + '|'
        + frm_yncflbxg.qry_cx.FieldByName('lbmc').AsString + '|'
        + frm_yncflbxg.qry_cx.FieldByName('cfys').AsString);
      frm_yncflbxg.qry_cx.Next;
    end;
    frm_yncflbxg.prv_xzhm := frm_yncflbxg.box_bdcf.Properties.Items[0];
    frm_yncflbxg.box_bdcf.Text := frm_yncflbxg.prv_xzhm;
    Result := True;
  end;
end;

function proc_se_bdcflb(v_zyh: string; fs: Integer): Boolean;
begin
  try
    application.CreateForm(Tfrm_yncflbxg, frm_yncflbxg);
    frm_yncflbxg.mz_zyh := v_zyh;
    frm_yncflbxg.v_fs := fs;
    if proc_csh then
    begin
      frm_yncflbxg.ShowModal;
      Result := True;
    end
    else
    begin
      Result := False;
    end;
  finally
    frm_yncflbxg.free;
  end;
end;

procedure Tfrm_yncflbxg.box_bdcfPropertiesChange(Sender: TObject);
var
  v_str: string;
begin
  v_str := Copy(box_bdcf.Text, 1, 2);
  if (box_bdcf.Properties.Items.Count > 0) and (v_str <> '') then
    prv_xzhm := v_str
  else
    Application.MessageBox('院内处方类别设置有误,请联系管理员', '系统提示', MB_OK + MB_ICONEXCLAMATION);
end;

procedure Tfrm_yncflbxg.cxButton1Click(Sender: TObject);
begin
  qry_yz.Close;
  qry_yz.SQL.Text := 'update mzdzbl_yncflbmx set yncflb=' + #39 + prv_xzhm + #39
    + ' where tmh=' + #39 + mz_zyh + #39 + ' and czydm=' + #39 + pub_czydm + #39 + ' and yncflb=' + #39 + '01' + #39;
  qry_yz.ExecSQL;
  Close;
end;

end.
