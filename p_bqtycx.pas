unit p_bqtycx;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGridEh, Db, ADODB, ExtCtrls, StdCtrls, Buttons, GridsEh;

type
  TFrm_bqtycx = class(TForm)
    SP_save: TADOStoredProc;
    DS_mx: TDataSource;
    DBGridEh1: TDBGridEh;
    Panel1: TPanel;
    Label1: TLabel;
    bch: TEdit;
    BitBtn1: TBitBtn;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bchExit(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_bqtycx: TFrm_bqtycx;

implementation

uses p_bqtycfhj;

{$R *.DFM}

procedure TFrm_bqtycx.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 13 then selectnext(activecontrol, true, true);
end;

procedure TFrm_bqtycx.bchExit(Sender: TObject);
var ls: string;
begin
  ls := trim(bch.text);
  if length(ls) > 0 then
  begin
    ls := stringofchar('0', 9 - length(ls)) + ls;
    SP_save.Close;
    SP_save.Parameters.ParamByName('@tmh').value := ls;
    SP_save.open;
    if SP_save.isempty then
    begin
      application.MessageBox('未找到没有发药的处方!', '注意', 16);
      close;
    end
    else
      DBGridEh1.setfocus;
  end;
end;

procedure TFrm_bqtycx.FormActivate(Sender: TObject);
begin
  bch.text := trim(Frm_bqtycfhj.E_tmh.text);
end;

procedure TFrm_bqtycx.BitBtn1Click(Sender: TObject);
begin
  SP_save.Close;
  close;
end;
initialization
  RegisterClass(TFrm_bqtycx);
end.

