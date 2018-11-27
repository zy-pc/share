unit p_ypyzylhs;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, ADODB,
  cxDBLookupComboBox, cxDropDownEdit, cxImageComboBox, cxCalc, StdCtrls,
  ExtCtrls, Buttons, GridsEh, DBGridEh, cxCheckBox;

type
  Tfrm_ypyzylhs = class(TForm)
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    qry_ypdm: TADOQuery;
    ds_ypdm: TDataSource;
    cxGrid1DBTableView1ypmc: TcxGridDBColumn;
    cxGrid1DBTableView1ypgg: TcxGridDBColumn;
    cxGrid1DBTableView1zyyfdw: TcxGridDBColumn;
    cxGrid1DBTableView1zxdw: TcxGridDBColumn;
    cxGrid1DBTableView1yzyldw: TcxGridDBColumn;
    cxGrid1DBTableView1yzylzhl: TcxGridDBColumn;
    ds_dw: TDataSource;
    qry_ypdw: TADOQuery;
    Panel1: TPanel;
    edit_pym: TEdit;
    Label1: TLabel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    BitBtn1: TBitBtn;
    SP_yp: TADOStoredProc;
    DS_yp: TDataSource;
    DBGrid1: TDBGrideh;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    procedure qry_ypdmBeforePost(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure edit_pymKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1Exit(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure RadioButton3Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
  private
    { Private declarations }
     sql_ypdm:string;
  public
    { Public declarations }
  end;

var
  frm_ypyzylhs: Tfrm_ypyzylhs;

implementation
uses p_dm;
{$R *.dfm}

procedure Tfrm_ypyzylhs.BitBtn1Click(Sender: TObject);
begin
  close;
end;

procedure Tfrm_ypyzylhs.DBGrid1DblClick(Sender: TObject);
begin
  qry_ypdm.Locate('ypdm', sp_yp['ypdm'], []);
  cxGrid1.SetFocus;
end;

procedure Tfrm_ypyzylhs.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if (sp_yp.Active) and (sp_yp.RecordCount <> 0) then
  begin
    if sp_yp['sybz'] = '0' then
    begin
      dbgrid1.Canvas.brush.Color := cllime;
      dbgrid1.Canvas.Font.Color := clblue;
    end;
    dbgrid1.DefaultDrawColumnCell(rect, datacol, column, state);
  end;
end;

procedure Tfrm_ypyzylhs.DBGrid1Exit(Sender: TObject);
begin
  dbgrid1.Visible := false;
end;

procedure Tfrm_ypyzylhs.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    qry_ypdm.Locate('ypdm', sp_yp['ypdm'], []);
    cxGrid1.SetFocus;
  end;

end;

procedure Tfrm_ypyzylhs.edit_pymKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    sp_yp.close;
    sp_yp.Parameters.ParamByName('@pym').value := trim(edit_pym.text) + '%';
    sp_yp.open;
    if sp_yp.RecordCount <> 0 then
    begin
      dbgrid1.Visible := true;
      dbgrid1.SetFocus;
    end
    else
    begin
      sp_yp.close;
      application.MessageBox('没有满足条件的药品！', '提示', 16);
      dbgrid1.Visible := false;
      edit_pym.Clear;
      edit_pym.SetFocus;
    end;
  end;
end;

procedure Tfrm_ypyzylhs.FormShow(Sender: TObject);
begin
  qry_ypdm.Open;
  qry_ypdw.Open;
  sql_ypdm:=qry_ypdm.SQL.Text;
end;

procedure Tfrm_ypyzylhs.qry_ypdmBeforePost(DataSet: TDataSet);
begin
  if not qry_ypdw.Locate('ypdw', trim(qry_ypdm.FieldByName('yzyldw').AsString), []) then
  begin
    application.MessageBox('输入了不存在的单位,不能保存', '', 0 + 48);
    abort;
  end;
end;

procedure Tfrm_ypyzylhs.RadioButton1Click(Sender: TObject);
begin
   qry_ypdm.Close;
   qry_ypdm.SQL.Text:=sql_ypdm;
   qry_ypdm.Open;
end;

procedure Tfrm_ypyzylhs.RadioButton2Click(Sender: TObject);
begin
   qry_ypdm.Close;
   qry_ypdm.SQL.Text:=sql_ypdm+' and ypdm in (select ypdm from xyf_ypkc where zxdwsl>0)';
   qry_ypdm.Open;
end;

procedure Tfrm_ypyzylhs.RadioButton3Click(Sender: TObject);
begin
   qry_ypdm.Close;
//   qry_ypdm.SQL.Text:=sql_ypdm+' and yldw='+#39+#39+' and yzylzhl=0';
   qry_ypdm.SQL.Text:=sql_ypdm+' and yzylzhl=0';
   qry_ypdm.Open;
end;

end.

