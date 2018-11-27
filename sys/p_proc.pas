unit p_proc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxControls, cxContainer, cxListBox, ExtCtrls, cxCheckListBox, Menus,
  cxLookAndFeelPainters, cxEdit, cxTextEdit, StdCtrls, cxButtons, ADODB, DB;

type
  Tfrom_proc = class(TForm)
    Panel1: TPanel;
    tcb: TcxCheckListBox;
    zx: TcxButton;
    cte: TcxTextEdit;
    cx: TcxButton;
    tc: TcxButton;
    com_mzgh_cx_kyh: TADOCommand;
    qry_drop: TADOQuery;
    procedure zxClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  from_proc: Tfrom_proc;

implementation
uses p_dm;
{$R *.dfm}

procedure Tfrom_proc.zxClick(Sender: TObject);
var
  proc_name: string;
begin
  proc_name := '';
  qry_drop.Close;
  qry_drop.SQL.Text := 'drop procedure ' + proc_name;
  com_mzgh_cx_kyh.Execute;
end;

end.

