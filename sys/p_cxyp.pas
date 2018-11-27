unit p_cxyp;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Grids, DBGrids, StdCtrls, Buttons, Mask, DBCtrls, ExtCtrls,
  ComCtrls, ADODB, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxTextEdit;

type
  TFrm_cxyp = class(TForm)
    Bevel1: TBevel;
    Panel1: TPanel;
    b_close: TBitBtn;
    Edit1: TEdit;
    Label1: TLabel;
    b_cx: TBitBtn;
    DS_yp: TDataSource;
    SP_yp: TADOStoredProc;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1ypdm: TcxGridDBColumn;
    cxGrid1DBTableView1ypmc: TcxGridDBColumn;
    cxGrid1DBTableView1pym: TcxGridDBColumn;
    cxGrid1DBTableView1ypgg: TcxGridDBColumn;
    cxGrid1DBTableView1kfdw: TcxGridDBColumn;
    cxGrid1DBTableView1zxdw: TcxGridDBColumn;
    cxGrid1DBTableView1kflsj: TcxGridDBColumn;
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
    cxGrid1DBTableView1yzyldw: TcxGridDBColumn;
    cxGrid1DBTableView1zjm: TcxGridDBColumn;
    procedure b_closeClick(Sender: TObject);
    procedure b_cxClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure cxGrid1DBTableView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1Enter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_cxyp: TFrm_cxyp;

implementation

uses p_dm;

{$R *.DFM}

procedure TFrm_cxyp.b_closeClick(Sender: TObject);
begin
  close;
end;

procedure TFrm_cxyp.b_cxClick(Sender: TObject);
begin
  sp_yp.close;
  sp_yp.Parameters.ParamByName('@pym').value := trim(edit1.text) + '%';
  sp_yp.open;
  if sp_yp.RecordCount <> 0 then
  begin
    cxGrid1.Enabled := true;
    cxGrid1.SetFocus;
  end
  else
  begin
    sp_yp.close;
    application.MessageBox('没有满足条件的药品！', '提示', 16);
    cxGrid1.Enabled := false;
    edit1.Clear;
    edit1.SetFocus;
  end;
end;

procedure TFrm_cxyp.cxGrid1DBTableView1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 27 then edit1.SetFocus;
end;

procedure TFrm_cxyp.FormShow(Sender: TObject);
begin
  if username = 'sys_dzbl' then
  begin
    cxGrid1DBTableView1kfdw.Visible := False;
    cxGrid1DBTableView1zxdw.Visible := False;
    cxGrid1DBTableView1yzyldw.Visible := True;
  end
  else
    if username = 'sys_mzsf' then
    begin
      cxGrid1DBTableView1kfdw.Visible := True;
      cxGrid1DBTableView1zxdw.Visible := True;
      cxGrid1DBTableView1yzyldw.Visible := False;
    end;
  edit1.SetFocus;
end;

procedure TFrm_cxyp.Edit1Change(Sender: TObject);
begin
  sp_yp.close;
end;

procedure TFrm_cxyp.Edit1Enter(Sender: TObject);
begin
  edit1.TEXT := '';
end;

procedure TFrm_cxyp.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    b_cx.Click;
end;

end.
