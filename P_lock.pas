unit P_LOCK;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls;

type
  TFrm_Lock = class(TForm)
    Panel1: TPanel;
    Edit1: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    Edit2: TEdit;
    Panel2: TPanel;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Lock: TFrm_Lock;
  quit_flag: integer;
implementation

uses P_dm, p_func;
{$R *.DFM}

procedure TFrm_Lock.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  pub_IsLocked := false;
end;

procedure TFrm_Lock.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if quit_flag = 0 then Abort else close;
end;

procedure TFrm_Lock.FormCreate(Sender: TObject);
begin
  edit2.Text := pub_czyxm;
  quit_flag := 0;
end;

procedure TFrm_Lock.FormShow(Sender: TObject);
begin
  edit2.Text := pub_czyxm;
  pub_IsLocked := true;
end;

procedure TFrm_Lock.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 13 then begin
    if uppercase(getmm(edit1.Text)) = uppercase(pub_czymm) then begin
      quit_flag := 1;
      self.CloseQuery;
    end;
  end;
end;



end.
