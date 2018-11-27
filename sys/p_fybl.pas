unit p_fybl;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, Db, ADODB, Grids, DBGridEh, StdCtrls, Buttons, DBGrids, GridsEh,
  cxGraphics, cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxLabel, DBGridEhGrouping;

type
  Tfrm_fybl = class(TForm)
    dbeh_bl: TDBGridEh;
    qry_sfxmbl: TADOQuery;
    ds_sfxmbl: TDataSource;
    Panel1: TPanel;
    Label1: TLabel;
    sfxm: TEdit;
    BitBtn1: TBitBtn;
    SP_fyxm: TADOStoredProc;
    DS_yp: TDataSource;
    qry_sfxmblfymc: TStringField;
    qry_sfxmblpym: TStringField;
    qry_sfxmblszdm: TStringField;
    qry_sfxmbldw: TStringField;
    qry_sfxmblsfbz: TBCDField;
    qry_sfxmblqybz: TBooleanField;
    qry_sfxmblfydm: TStringField;
    DBGrid1: TDBGridEh;
    qry_sfxmblsbfybl: TBCDField;
    qry_sfxmblhtfybl: TIntegerField;
    qry_sfxmblbxfybl: TIntegerField;
    qry_sfxmbljkyhfybl: TIntegerField;
    qry_sfxmblykyhfybl: TIntegerField;
    qry_sfxmblptkyhfybl: TIntegerField;
    qry_sfxmblqqkyhfybl: TIntegerField;
    qry_sfxmblkdksfpbl: TIntegerField;
    qry_sfxmblkdysfpbl: TIntegerField;
    qry_sfxmblybbz: TBCDField;
    cxComboBox1: TcxComboBox;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    qry_sfxmblsbfybl01: TBCDField;
    qry_sfxmblsbfybl02: TBCDField;
    qry_sfxmblsbfybl03: TBCDField;
    qry_sfxmblsbfybl04: TBCDField;
    qry_sfxmblsbfybl05: TBCDField;
    qry_sfxmblsbfybl06: TBCDField;
    qry_sfxmblsbfybl07: TBCDField;
    qry_sfxmblsbfybl08: TBCDField;
    qry_sfxmblsbfybl09: TBCDField;
    qry_sfxmblsbfybl10: TBCDField;
    qry_sfxmblsbfybl11: TBCDField;
    qry_sfxmblsbfybl12: TBCDField;
    qry_sfxmblsbfybl13: TBCDField;
    cxMaskEdit1: TcxMaskEdit;
    procedure sfxmKeyPress(Sender: TObject; var Key: Char);
    procedure sfxmChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure DBGrid1Exit(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure cxComboBox1PropertiesChange(Sender: TObject);
    procedure cxMaskEdit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_fybl: Tfrm_fybl;

implementation
uses p_dm;
{$R *.DFM}

procedure Tfrm_fybl.sfxmKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    sp_fyxm.close;
    sp_fyxm.Parameters.ParamByName('@pym').value := trim(sfxm.text) + '%';
    sfxm.TEXT := '';
    sp_fyxm.open;
    if SP_fyxm.RecordCount <> 0 then
    begin
      dbgrid1.Enabled := true;
      dbgrid1.Visible := true;
      dbgrid1.SetFocus;
    end
    else
    begin
      SP_fyxm.close;
      application.MessageBox('没有满足条件的费用项目！', '提示', 16);
      dbgrid1.Visible := true;
      dbgrid1.Enabled := false;
      sfxm.SetFocus;
    end;
  end;
end;

procedure Tfrm_fybl.sfxmChange(Sender: TObject);
begin
  SP_fyxm.close;
end;

procedure Tfrm_fybl.cxComboBox1PropertiesChange(Sender: TObject);
begin
  dbeh_bl.Columns[8].FieldName := cxcombobox1.Text;
  dbeh_bl.Columns[8].Title.caption := '病人自付|' + cxcombobox1.Text;
end;

procedure Tfrm_fybl.cxMaskEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    try
      if strtoint(cxMaskEdit1.Text) > 100 then
      begin
        application.MessageBox('输入数据不能大于100 !', '提示', 0 + 48);
        abort;
      end;
    except
      application.MessageBox('只能输入数字 !', '提示', 0 + 48);
    end;
    if trim(cxcombobox1.Text) <> '' then
    begin
      if application.MessageBox('此项设置将改变所有费用比率为当前输入比率，是否继续!', '提示', 4 + 256 + 48) = 6 then
      begin
        with dm_data.qry_pub do
        begin
          close;
          sql.Text := 'update sys_kjsfxm set ' + cxcombobox1.Text + '=' + cxMaskEdit1.Text;
          execsql;
        end;
          qry_sfxmbl.close;
          qry_sfxmbl.Open;
      end;
      dbeh_bl.SetFocus;
    end
    else
      application.MessageBox('请选择要设置的字段', '提示', 0 + 48);
  end;
end;

procedure Tfrm_fybl.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
begin
  if (SP_fyxm.Active) and (SP_fyxm.RecordCount <> 0) then
  begin
    if SP_fyxm['qybz'] = '0' then
    begin
      dbgrid1.Canvas.brush.Color := cllime;
      dbgrid1.Canvas.Font.Color := clblue;
    end;
    dbgrid1.DefaultDrawColumnCell(rect, datacol, column, state);
  end;
end;

procedure Tfrm_fybl.DBGrid1Exit(Sender: TObject);
begin
  dbgrid1.Visible := false;
  sp_fyxm.Close;
end;

procedure Tfrm_fybl.DBGrid1KeyPress(Sender: TObject; var Key: Char);
var
  fydm: string;
begin
  if key = #13 then
  begin
    fydm := trim(sp_fyxm.fieldbyname('fydm').asstring);
    qry_sfxmbl.Locate('fydm', fydm, []);
    dbeh_bl.SelectedIndex := 5;
    dbeh_bl.SetFocus;
  end;
end;

procedure Tfrm_fybl.FormShow(Sender: TObject);
begin
  qry_sfxmbl.Open;
end;

procedure Tfrm_fybl.BitBtn1Click(Sender: TObject);
begin
  close;
end;

end.

