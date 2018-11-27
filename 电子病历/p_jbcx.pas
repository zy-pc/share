unit p_jbcx;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ADODB, StdCtrls, Buttons, ExtCtrls, ImgList, Grids, DBGrids, Menus,
  cxGraphics, cxCustomData, cxStyles, cxControls, cxInplaceContainer,
  cxMaskEdit, EMRPAD30Lib_TLB, ComCtrls, cxFilter, cxData, cxDataStorage,
  cxEdit, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid;

type
  Tfrm_jbcx = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    BitBtn1: TBitBtn;
    Panel2: TPanel;
    ad_jbbm: TADODataSet;
    ds: TDataSource;
    ImageList1: TImageList;
    ds_jbbm: TDataSource;
    DBGrid1: TDBGrid;
    ds_jbcx: TDataSource;
    ad_jbcx: TADODataSet;
    Panel3: TPanel;
    PopupMenu2: TPopupMenu;
    N3: TMenuItem;
    ad_delete_zd: TADOCommand;
    BitBtn2: TBitBtn;
    sp_up_jbsypl: TADOStoredProc;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxGrid1DBTableView1Column3: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure Edit1Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn2Click(Sender: TObject);
    procedure cxGrid1DBTableView1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    Pub_CallControl: TControl;
    procedure Proc_use_zd(v_Str: string);

  end;

var
  frm_jbcx: Tfrm_jbcx;

implementation
uses p_dm, p_dzbl_main;
{$R *.DFM}

procedure Tfrm_jbcx.FormShow(Sender: TObject);
begin
  ad_jbbm.close;
  ad_jbbm.Parameters.ParamByName('ysdm').value := pub_czydm;
  ad_jbbm.open;
  dbgrid1.DataSource := ds_jbbm;
  dbgrid1.SetFocus;
  if not dm_data.ad_jbbm.Active then
    dm_data.ad_jbbm.Open;
end;

procedure Tfrm_jbcx.Edit1Click(Sender: TObject);
begin
  bitbtn1.Click;
end;

procedure Tfrm_jbcx.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    bitbtn1.Click;
end;

procedure Tfrm_jbcx.BitBtn2Click(Sender: TObject);
begin
  close;
end;

procedure Tfrm_jbcx.cxGrid1DBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
var
  v_jbmc: string;
begin
  v_jbmc := dm_data.ad_jbbm.FieldByName('jbmc').AsString;
  if trim(v_jbmc) <> '' then
    Proc_use_zd(trim(v_jbmc));
  sp_up_jbsypl.close;
  sp_up_jbsypl.Parameters.ParamByName('@ysdm').value := pub_czydm;
  sp_up_jbsypl.Parameters.ParamByName('@jbdm').value := trim(dm_data.ad_jbbm.FieldByName('mbm').asstring);
  sp_up_jbsypl.ExecProc;
  self.close;
end;

procedure Tfrm_jbcx.DBGrid1DblClick(Sender: TObject);
begin
  Proc_use_zd(trim(dbgrid1.DataSource.DataSet.FieldByName('jbmc').asstring));
  sp_up_jbsypl.close;
  sp_up_jbsypl.Parameters.ParamByName('@ysdm').value := pub_czydm;
  sp_up_jbsypl.Parameters.ParamByName('@jbdm').value := trim(dbgrid1.DataSource.DataSet.FieldByName('mbm').asstring);
  sp_up_jbsypl.ExecProc;
  self.close;
end;

procedure Tfrm_jbcx.BitBtn1Click(Sender: TObject);
begin
  ad_jbcx.Close;
  ad_jbcx.Parameters.ParamByName('jbmc').value := '%' + trim(edit1.text) + '%';
  ad_jbcx.Parameters.ParamByName('pym').value := '%' + trim(edit1.text) + '%';
  ad_jbcx.Open;
  if ad_jbcx.IsEmpty then
  begin
    application.MessageBox('未找到疾病，请重新输入', '提示', mb_ok);
    edit1.setfocus;
  end
  else
  begin
    dbgrid1.DataSource := ds_jbcx;
    dbgrid1.setfocus;
  end
end;

procedure Tfrm_jbcx.N3Click(Sender: TObject);
begin
  ad_delete_zd.commandtext := 'delete sys_jbsypl where ysdm=' + #39 +
    ad_jbbm.fieldbyname('ysdm').asstring + #39 +
    'and jbdm=' + #39 +
    ad_jbbm.fieldbyname('jbdm').asstring + #39;
  ad_delete_zd.Execute;
  ad_jbbm.close;
  ad_jbbm.open;
end;

procedure Tfrm_jbcx.Proc_use_zd(v_Str: string);
begin
  Frm_dzbl_main.EMRPad301.UniversalBoolFunction(v_Str, '', 2, 0);
end;

end.

