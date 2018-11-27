unit p_hljlqsfx;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, TeeProcs, TeEngine, Chart, DBChart, ExtCtrls, Series;

type
  Tfrm_hljlqsfx = class(TForm)
    Panel1: TPanel;
    DBChart1: TDBChart;
    sp_qs: TADOStoredProc;
    Series1: TFastLineSeries;
  private
    { Private declarations }
  public
    { Public declarations }


  end;

var
  frm_hljlqsfx: Tfrm_hljlqsfx;

implementation
uses
p_dm,p_func;

{$R *.dfm}

end.
