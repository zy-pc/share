unit u_frmGridHint;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, StdCtrls, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, ExtCtrls, Buttons, ADODB;

type
  TfrmGridHint = class(TForm)
    lblHint: TLabel;
    btnOK: TBitBtn;
    btnCancel: TBitBtn;
    pnl1: TPanel;
    cxgrdHint: TcxGrid;
    tvHint: TcxGridDBTableView;
    lvHint: TcxGridLevel;
    dshint: TDataSource;
    qryHint: TADOQuery;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    FSql: string;
    procedure ShowData;
  public
    { Public declarations }
    ChooseResult: string;
    procedure SetCaption(const ACap: string);
    procedure SetHint(const Ahint: string);
    function SetSql(var Asql: string): Boolean;

  end;

var
  frmGridHint: TfrmGridHint;

implementation
uses p_dm;

{$R *.dfm}

{ TfrmHint }

procedure TfrmGridHint.FormShow(Sender: TObject);
begin
  ShowData;
end;

procedure TfrmGridHint.SetCaption(const ACap: string);
begin
  Self.Caption := ACap;
end;

procedure TfrmGridHint.SetHint(const Ahint: string);
begin
  lblHint.Caption := Ahint;
end;

function TfrmGridHint.SetSql(var Asql: string): Boolean;
begin
  FSql := Asql;
end;

procedure TfrmGridHint.ShowData;
var
  I: Integer;
begin
  with qryHint do
  begin
    Close;
    SQL.Text := FSql;
    try
      Open;
    except
      Application.MessageBox(PChar('方法ShowData出现错误。' + #13#10 +
        PChar('SQL：【' + fsql + '】')), PChar('错误'), MB_OK + MB_ICONSTOP);
      exit;
    end;
  end;
  tvHint.DataController.DataSource := dshint;
  dshint.DataSet := qryHint;
  tvHint.DataController.CreateAllItems;
  tvHint.OptionsView.ColumnAutoWidth := True;
  for i := 0 to tvHint.ColumnCount - 1 do
    tvHint.Columns[i].ApplyBestFit();
end;

end.

