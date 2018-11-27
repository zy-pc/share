unit p_cx_drdxmx;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, GridsEh, DBGridEh, DBGridEhGrouping;

type
  Tfrm_cx_drdxmx = class(TForm)
    g_fy: TDBGridEh;
    sp_cx_drdxmx: TADOStoredProc;
    ds_cx_drdxmx: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_cx_drdxmx: Tfrm_cx_drdxmx;

implementation

uses p_dm,p_func;

{$R *.dfm}

end.
