unit p_Select;

interface
                       
uses
    Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
    Buttons, StdCtrls, CheckLst, ExtCtrls, DBGrids, Grids, dbgrideh;

type
    TFrm_SELECT = class(TForm)
        ChkB1: TCheckListBox;
        B_OK: TBitBtn;
        B_CANCEL: TBitBtn;
        Panel2: TPanel;
        seleall: TBitBtn;
        unseleall: TBitBtn;
        procedure B_OKClick(Sender: TObject);
        procedure B_CANCELClick(Sender: TObject);
        procedure ChkB1MeasureItem(Control: TWinControl; Index: Integer;
            var Height: Integer);
        procedure ChkB1DrawItem(Control: TWinControl; Index: Integer;
            Rect: TRect; State: TOwnerDrawState);
        procedure seleallClick(Sender: TObject);
        procedure unseleallClick(Sender: TObject);
        procedure FormShow(Sender: TObject);
    private
    { Private declarations }
    public
//  select_grid:Tdbgrid;
        select_grideh: Tdbgrideh;
  //在调用本屏幕的程序中直接使用语句
  //(调用屏幕.dbgrid1:=frm_select.select_grid)
    end;

var
    Frm_SELECT: TFrm_SELECT;

implementation

{$R *.DFM}

procedure TFrm_SELECT.B_OKClick(Sender: TObject);
var
    i: integer;
begin
    for i := 0 to chkb1.items.count - 1 do
        select_grideh.Columns[i].Visible := chkb1.Checked[i];
    modalresult := mrOK;
end;

procedure TFrm_SELECT.B_CANCELClick(Sender: TObject);
begin
    modalresult := mrCancel;
end;

procedure TFrm_SELECT.ChkB1MeasureItem(Control: TWinControl; Index: Integer;
    var Height: Integer);
begin
    height := 18;
end;

procedure TFrm_SELECT.ChkB1DrawItem(Control: TWinControl; Index: Integer;
    Rect: TRect; State: TOwnerDrawState);
begin
    with (Control as TCheckListBox).Canvas do
    begin
        FillRect(Rect);
        TextOut(Rect.Left + 2, Rect.Top + 2, Chkb1.Items[Index]);
    end;
end;

procedure TFrm_SELECT.seleallClick(Sender: TObject);
var
    i: integer;
begin
    for i := 0 to chkb1.items.count - 1 do
        chkb1.Checked[i] := true;
end;

procedure TFrm_SELECT.unseleallClick(Sender: TObject);
var
    i: integer;
begin
    for i := 0 to chkb1.items.count - 1 do
        chkb1.Checked[i] := false;
end;

procedure TFrm_SELECT.FormShow(Sender: TObject);
var
    i: integer;
begin
    chkb1.Items.Clear;
    for i := 0 to select_grideh.Columns.Count - 1 do
        chkb1.Items.Append(select_grideh.columns[i].title.Caption);
    for i := 0 to select_grideh.Columns.Count - 1 do
        if select_grideh.Columns[i].Visible then
            chkb1.Checked[i] := true
        else
            chkb1.Checked[i] := false;
end;

end.
