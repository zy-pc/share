unit p_tsfh;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Grids, TntGrids, TntButtons, TntStdCtrls,
  DB, ADODB;

type
  Tfrm_tsfh = class(TForm)
    TntSpeedButton1: TTntSpeedButton;
    TntStringGrid1: TTntStringGrid;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    SpeedButton1: TSpeedButton;
    TntEdit1: TTntEdit;
    ADODataSet1: TADODataSet;
    procedure BitBtn1Click(Sender: TObject);
    procedure TntStringGrid1DblClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure TntStringGrid1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_tsfh: Tfrm_tsfh;
 var s1,tszf:widestring;


implementation
  uses p_dm,p_func;
{$R *.dfm}

procedure Tfrm_tsfh.BitBtn1Click(Sender: TObject);

begin
self.Close;
end;

procedure Tfrm_tsfh.FormShow(Sender: TObject);
var
 i1:integer;
 i2,i3,i4:integer;
 begin
i2:=tntstringgrid1.Colcount;
adodataset1.Close;
adodataset1.Open;
s1:=adodataset1.fieldbyname('mc').aswidestring;
i3:=0;i4:=0;
 for i1 := 0 to length(s1)-1 do
   begin
    tntstringgrid1.Cells[i3,i4]:=s1[i1];
    if i3>i2-2 then
    begin
     i4:=i4+1 ;
     i3:=0;
    end
    else
    i3:=i3+1;
   end;
end;

procedure Tfrm_tsfh.SpeedButton1Click(Sender: TObject);
begin
  tntedit1.Text:=tntstringgrid1.Cells[TntStringGrid1.col,TntStringGrid1.row];;
  tszf:=tntedit1.Text;
end;

procedure Tfrm_tsfh.TntStringGrid1Click(Sender: TObject);
begin
 tntedit1.Text:=tntstringgrid1.Cells[TntStringGrid1.col,TntStringGrid1.row];;

end;

procedure Tfrm_tsfh.TntStringGrid1DblClick(Sender: TObject);

begin
 tntedit1.Text:=tntstringgrid1.Cells[TntStringGrid1.col,TntStringGrid1.row];;
 tszf:=tntedit1.Text;
end;

end.
