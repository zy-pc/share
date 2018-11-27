unit p_Select;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, StdCtrls, CheckLst, ExtCtrls, DBGrids, Grids,dbgrideh;

type
  TFrm_SELECT = class(TForm)
    ChkB1: TCheckListBox;
    B_OK: TBitBtn;
    B_CANCEL: TBitBtn;
    Panel2: TPanel;
    seleall: TBitBtn;
    unseleall: TBitBtn;
    Button1: TButton;
    procedure B_OKClick(Sender: TObject);
    procedure B_CANCELClick(Sender: TObject);
    procedure ChkB1MeasureItem(Control: TWinControl; Index: Integer;
      var Height: Integer);
    procedure ChkB1DrawItem(Control: TWinControl; Index: Integer;
      Rect: TRect; State: TOwnerDrawState);
    procedure seleallClick(Sender: TObject);
    procedure unseleallClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
//  select_grid:Tdbgrid;
  select_grideh:Tdbgrideh;
  //�ڵ��ñ���Ļ�ĳ�����ֱ��ʹ�����
  //(������Ļ.dbgrid1:=frm_select.select_grid)  
  end;

var
  Frm_SELECT: TFrm_SELECT;

implementation
uses
p_twb2;

{$R *.DFM}

procedure TFrm_SELECT.B_OKClick(Sender: TObject);
var
i:integer;
begin
for i:=0 to chkb1.items.count-1 do
    select_grideh.Columns[i].Visible:=chkb1.Checked[i];
modalresult:=mrOK;
if frm_twb2.hljlddyfs=true then
begin
 for i := 0 to chkb1.items.count-1 do
    begin
  if frm_twb2.DBGridEh4.Columns[i].Visible=true then
       frm_twb2.DBGridEh4.Columns[i].Width:=158;
    end;
end;


end;

procedure TFrm_SELECT.Button1Click(Sender: TObject);
var
i:Integer;
begin
for i:=0 to chkb1.items.count-1 do
 if (select_grideh.columns[i].title.Caption='ʱ��') or (select_grideh.columns[i].title.Caption='Ѫѹ(mmHg)') or (select_grideh.columns[i].title.Caption='Ѫ��(mmol/L)') or (select_grideh.columns[i].title.Caption='��ʿǩ��')then
     begin
    chkb1.Checked[i]:=true;
    frm_twb2.hljlddyfs:=true;
     end
     else
     begin
    chkb1.Checked[i]:=false;
     end;
end;

procedure TFrm_SELECT.B_CANCELClick(Sender: TObject);
begin
modalresult:=mrCancel;
end;

procedure TFrm_SELECT.ChkB1MeasureItem(Control: TWinControl; Index: Integer;
  var Height: Integer);
begin
height:=18;
end;

procedure TFrm_SELECT.ChkB1DrawItem(Control: TWinControl; Index: Integer;
  Rect: TRect; State: TOwnerDrawState);
begin
with (Control as TCheckListBox).Canvas do
 begin
   FillRect(Rect);
   TextOut(Rect.Left + 2, Rect.Top+2, Chkb1.Items[Index]);
  end;
end;

procedure TFrm_SELECT.seleallClick(Sender: TObject);
var
i:integer;
begin
for i:=0 to chkb1.items.count-1 do
    chkb1.Checked[i]:=true;
 frm_twb2.hljlddyfs:=false;
 frm_twb2.DBGridEh4.RowHeight:=45;
 //frm_twb2.DBGridEh4.Columns.Clear;
// frm_twb2.hljld;
end;

procedure TFrm_SELECT.unseleallClick(Sender: TObject);
var
i:integer;
begin
for i:=0 to chkb1.items.count-1 do
    chkb1.Checked[i]:=false;
end;

procedure TFrm_SELECT.FormShow(Sender: TObject);
var
i:integer;
begin
chkb1.Items.Clear;
for i:=0 to select_grideh.Columns.Count-1 do
   chkb1.Items.Append(select_grideh.columns[i].title.Caption);
for i:=0 to select_grideh.Columns.Count-1 do
   if select_grideh.Columns[i].Visible then
      chkb1.Checked[i]:=true
   else
      chkb1.Checked[i]:=false;
end;

end.
