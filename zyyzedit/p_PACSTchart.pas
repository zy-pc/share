unit p_PACSTchart;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;

type
  Tfrm_PACSChart = class(TForm)
    PanelMain: TPanel;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_PACSChart: Tfrm_PACSChart;

implementation

{$R *.dfm}

procedure Tfrm_PACSChart.Button1Click(Sender: TObject);
begin

end;
//var
//  vChart:TChart;       //chart
//  vSeries:TLineSeries;   //Series
//begin
//  vChart:=TChart.Create(self) ;
//  vChart.Parent:=PanelMain;
//  vChart.View3D :=False;
//  vChart.Width :=Chart1.Width;
//  vChart.Height:= Chart1.Height;
//  vSeries:=TLineSeries.Create (self);
//  vSeries.ParentChart :=vChart;
//  vSeries.AddXY (2,30);
//  vSeries.AddXY (20,40);
//end;


end.
